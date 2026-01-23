; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!321588 () Bool)

(assert start!321588)

(declare-fun b!3457644 () Bool)

(declare-fun b_free!89845 () Bool)

(declare-fun b_next!90549 () Bool)

(assert (=> b!3457644 (= b_free!89845 (not b_next!90549))))

(declare-fun tp!1077730 () Bool)

(declare-fun b_and!243071 () Bool)

(assert (=> b!3457644 (= tp!1077730 b_and!243071)))

(declare-fun b_free!89847 () Bool)

(declare-fun b_next!90551 () Bool)

(assert (=> b!3457644 (= b_free!89847 (not b_next!90551))))

(declare-fun tp!1077737 () Bool)

(declare-fun b_and!243073 () Bool)

(assert (=> b!3457644 (= tp!1077737 b_and!243073)))

(declare-fun b!3457648 () Bool)

(declare-fun b_free!89849 () Bool)

(declare-fun b_next!90553 () Bool)

(assert (=> b!3457648 (= b_free!89849 (not b_next!90553))))

(declare-fun tp!1077734 () Bool)

(declare-fun b_and!243075 () Bool)

(assert (=> b!3457648 (= tp!1077734 b_and!243075)))

(declare-fun b_free!89851 () Bool)

(declare-fun b_next!90555 () Bool)

(assert (=> b!3457648 (= b_free!89851 (not b_next!90555))))

(declare-fun tp!1077732 () Bool)

(declare-fun b_and!243077 () Bool)

(assert (=> b!3457648 (= tp!1077732 b_and!243077)))

(declare-fun b!3457652 () Bool)

(declare-fun b_free!89853 () Bool)

(declare-fun b_next!90557 () Bool)

(assert (=> b!3457652 (= b_free!89853 (not b_next!90557))))

(declare-fun tp!1077725 () Bool)

(declare-fun b_and!243079 () Bool)

(assert (=> b!3457652 (= tp!1077725 b_and!243079)))

(declare-fun b_free!89855 () Bool)

(declare-fun b_next!90559 () Bool)

(assert (=> b!3457652 (= b_free!89855 (not b_next!90559))))

(declare-fun tp!1077726 () Bool)

(declare-fun b_and!243081 () Bool)

(assert (=> b!3457652 (= tp!1077726 b_and!243081)))

(declare-fun bs!560144 () Bool)

(declare-fun b!3457654 () Bool)

(declare-fun b!3457664 () Bool)

(assert (= bs!560144 (and b!3457654 b!3457664)))

(declare-fun lambda!121777 () Int)

(declare-fun lambda!121776 () Int)

(assert (=> bs!560144 (not (= lambda!121777 lambda!121776))))

(declare-fun b!3457681 () Bool)

(declare-fun e!2142197 () Bool)

(assert (=> b!3457681 (= e!2142197 true)))

(declare-fun b!3457680 () Bool)

(declare-fun e!2142196 () Bool)

(assert (=> b!3457680 (= e!2142196 e!2142197)))

(declare-fun b!3457679 () Bool)

(declare-fun e!2142195 () Bool)

(assert (=> b!3457679 (= e!2142195 e!2142196)))

(assert (=> b!3457654 e!2142195))

(assert (= b!3457680 b!3457681))

(assert (= b!3457679 b!3457680))

(declare-datatypes ((String!41670 0))(
  ( (String!41671 (value!175390 String)) )
))
(declare-datatypes ((C!20578 0))(
  ( (C!20579 (val!12337 Int)) )
))
(declare-datatypes ((Regex!10196 0))(
  ( (ElementMatch!10196 (c!591765 C!20578)) (Concat!15863 (regOne!20904 Regex!10196) (regTwo!20904 Regex!10196)) (EmptyExpr!10196) (Star!10196 (reg!10525 Regex!10196)) (EmptyLang!10196) (Union!10196 (regOne!20905 Regex!10196) (regTwo!20905 Regex!10196)) )
))
(declare-datatypes ((List!37280 0))(
  ( (Nil!37156) (Cons!37156 (h!42576 (_ BitVec 16)) (t!272527 List!37280)) )
))
(declare-datatypes ((TokenValue!5667 0))(
  ( (FloatLiteralValue!11334 (text!40114 List!37280)) (TokenValueExt!5666 (__x!23551 Int)) (Broken!28335 (value!175391 List!37280)) (Object!5790) (End!5667) (Def!5667) (Underscore!5667) (Match!5667) (Else!5667) (Error!5667) (Case!5667) (If!5667) (Extends!5667) (Abstract!5667) (Class!5667) (Val!5667) (DelimiterValue!11334 (del!5727 List!37280)) (KeywordValue!5673 (value!175392 List!37280)) (CommentValue!11334 (value!175393 List!37280)) (WhitespaceValue!11334 (value!175394 List!37280)) (IndentationValue!5667 (value!175395 List!37280)) (String!41672) (Int32!5667) (Broken!28336 (value!175396 List!37280)) (Boolean!5668) (Unit!52486) (OperatorValue!5670 (op!5727 List!37280)) (IdentifierValue!11334 (value!175397 List!37280)) (IdentifierValue!11335 (value!175398 List!37280)) (WhitespaceValue!11335 (value!175399 List!37280)) (True!11334) (False!11334) (Broken!28337 (value!175400 List!37280)) (Broken!28338 (value!175401 List!37280)) (True!11335) (RightBrace!5667) (RightBracket!5667) (Colon!5667) (Null!5667) (Comma!5667) (LeftBracket!5667) (False!11335) (LeftBrace!5667) (ImaginaryLiteralValue!5667 (text!40115 List!37280)) (StringLiteralValue!17001 (value!175402 List!37280)) (EOFValue!5667 (value!175403 List!37280)) (IdentValue!5667 (value!175404 List!37280)) (DelimiterValue!11335 (value!175405 List!37280)) (DedentValue!5667 (value!175406 List!37280)) (NewLineValue!5667 (value!175407 List!37280)) (IntegerValue!17001 (value!175408 (_ BitVec 32)) (text!40116 List!37280)) (IntegerValue!17002 (value!175409 Int) (text!40117 List!37280)) (Times!5667) (Or!5667) (Equal!5667) (Minus!5667) (Broken!28339 (value!175410 List!37280)) (And!5667) (Div!5667) (LessEqual!5667) (Mod!5667) (Concat!15864) (Not!5667) (Plus!5667) (SpaceValue!5667 (value!175411 List!37280)) (IntegerValue!17003 (value!175412 Int) (text!40118 List!37280)) (StringLiteralValue!17002 (text!40119 List!37280)) (FloatLiteralValue!11335 (text!40120 List!37280)) (BytesLiteralValue!5667 (value!175413 List!37280)) (CommentValue!11335 (value!175414 List!37280)) (StringLiteralValue!17003 (value!175415 List!37280)) (ErrorTokenValue!5667 (msg!5728 List!37280)) )
))
(declare-datatypes ((List!37281 0))(
  ( (Nil!37157) (Cons!37157 (h!42577 C!20578) (t!272528 List!37281)) )
))
(declare-datatypes ((IArray!22503 0))(
  ( (IArray!22504 (innerList!11309 List!37281)) )
))
(declare-datatypes ((Conc!11249 0))(
  ( (Node!11249 (left!28992 Conc!11249) (right!29322 Conc!11249) (csize!22728 Int) (cheight!11460 Int)) (Leaf!17579 (xs!14423 IArray!22503) (csize!22729 Int)) (Empty!11249) )
))
(declare-datatypes ((BalanceConc!22112 0))(
  ( (BalanceConc!22113 (c!591766 Conc!11249)) )
))
(declare-datatypes ((TokenValueInjection!10762 0))(
  ( (TokenValueInjection!10763 (toValue!7661 Int) (toChars!7520 Int)) )
))
(declare-datatypes ((Rule!10674 0))(
  ( (Rule!10675 (regex!5437 Regex!10196) (tag!6045 String!41670) (isSeparator!5437 Bool) (transformation!5437 TokenValueInjection!10762)) )
))
(declare-datatypes ((List!37282 0))(
  ( (Nil!37158) (Cons!37158 (h!42578 Rule!10674) (t!272529 List!37282)) )
))
(declare-fun rules!2135 () List!37282)

(assert (= (and b!3457654 (is-Cons!37158 rules!2135)) b!3457679))

(declare-fun order!19779 () Int)

(declare-fun order!19781 () Int)

(declare-fun dynLambda!15645 (Int Int) Int)

(declare-fun dynLambda!15646 (Int Int) Int)

(assert (=> b!3457681 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15646 order!19781 lambda!121777))))

(declare-fun order!19783 () Int)

(declare-fun dynLambda!15647 (Int Int) Int)

(assert (=> b!3457681 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15646 order!19781 lambda!121777))))

(assert (=> b!3457654 true))

(declare-fun b!3457631 () Bool)

(declare-fun res!1394994 () Bool)

(declare-fun e!2142160 () Bool)

(assert (=> b!3457631 (=> (not res!1394994) (not e!2142160))))

(declare-datatypes ((Token!10240 0))(
  ( (Token!10241 (value!175416 TokenValue!5667) (rule!8027 Rule!10674) (size!28182 Int) (originalCharacters!6151 List!37281)) )
))
(declare-datatypes ((List!37283 0))(
  ( (Nil!37159) (Cons!37159 (h!42579 Token!10240) (t!272530 List!37283)) )
))
(declare-fun tokens!494 () List!37283)

(declare-datatypes ((LexerInterface!5026 0))(
  ( (LexerInterfaceExt!5023 (__x!23552 Int)) (Lexer!5024) )
))
(declare-fun thiss!18206 () LexerInterface!5026)

(declare-datatypes ((IArray!22505 0))(
  ( (IArray!22506 (innerList!11310 List!37283)) )
))
(declare-datatypes ((Conc!11250 0))(
  ( (Node!11250 (left!28993 Conc!11250) (right!29323 Conc!11250) (csize!22730 Int) (cheight!11461 Int)) (Leaf!17580 (xs!14424 IArray!22505) (csize!22731 Int)) (Empty!11250) )
))
(declare-datatypes ((BalanceConc!22114 0))(
  ( (BalanceConc!22115 (c!591767 Conc!11250)) )
))
(declare-fun rulesProduceEachTokenIndividually!1477 (LexerInterface!5026 List!37282 BalanceConc!22114) Bool)

(declare-fun seqFromList!3927 (List!37283) BalanceConc!22114)

(assert (=> b!3457631 (= res!1394994 (rulesProduceEachTokenIndividually!1477 thiss!18206 rules!2135 (seqFromList!3927 tokens!494)))))

(declare-fun b!3457632 () Bool)

(declare-fun separatorToken!241 () Token!10240)

(declare-fun e!2142183 () Bool)

(declare-fun e!2142180 () Bool)

(declare-fun tp!1077733 () Bool)

(declare-fun inv!50322 (String!41670) Bool)

(declare-fun inv!50325 (TokenValueInjection!10762) Bool)

(assert (=> b!3457632 (= e!2142183 (and tp!1077733 (inv!50322 (tag!6045 (rule!8027 separatorToken!241))) (inv!50325 (transformation!5437 (rule!8027 separatorToken!241))) e!2142180))))

(declare-fun b!3457633 () Bool)

(declare-fun res!1394989 () Bool)

(assert (=> b!3457633 (=> (not res!1394989) (not e!2142160))))

(declare-fun sepAndNonSepRulesDisjointChars!1631 (List!37282 List!37282) Bool)

(assert (=> b!3457633 (= res!1394989 (sepAndNonSepRulesDisjointChars!1631 rules!2135 rules!2135))))

(declare-fun b!3457634 () Bool)

(declare-fun e!2142164 () Bool)

(declare-fun e!2142185 () Bool)

(assert (=> b!3457634 (= e!2142164 e!2142185)))

(declare-fun res!1394985 () Bool)

(assert (=> b!3457634 (=> res!1394985 e!2142185)))

(declare-fun lt!1174848 () List!37281)

(declare-fun lt!1174829 () List!37281)

(declare-fun ++!9156 (List!37281 List!37281) List!37281)

(declare-fun list!13524 (BalanceConc!22112) List!37281)

(declare-fun charsOf!3451 (Token!10240) BalanceConc!22112)

(declare-fun printWithSeparatorTokenList!313 (LexerInterface!5026 List!37283 Token!10240) List!37281)

(assert (=> b!3457634 (= res!1394985 (not (= lt!1174829 (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1174835 () List!37281)

(assert (=> b!3457634 (= lt!1174835 (++!9156 lt!1174848 lt!1174829))))

(assert (=> b!3457634 (= lt!1174848 (list!13524 (charsOf!3451 separatorToken!241)))))

(assert (=> b!3457634 (= lt!1174829 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241))))

(declare-fun lt!1174854 () List!37281)

(assert (=> b!3457634 (= lt!1174854 (printWithSeparatorTokenList!313 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2142187 () Bool)

(declare-fun b!3457635 () Bool)

(declare-fun e!2142157 () Bool)

(declare-fun tp!1077731 () Bool)

(declare-fun inv!50326 (Token!10240) Bool)

(assert (=> b!3457635 (= e!2142157 (and (inv!50326 (h!42579 tokens!494)) e!2142187 tp!1077731))))

(declare-fun b!3457636 () Bool)

(declare-fun res!1394993 () Bool)

(declare-fun e!2142179 () Bool)

(assert (=> b!3457636 (=> (not res!1394993) (not e!2142179))))

(declare-datatypes ((tuple2!36872 0))(
  ( (tuple2!36873 (_1!21570 BalanceConc!22114) (_2!21570 BalanceConc!22112)) )
))
(declare-fun lt!1174845 () tuple2!36872)

(declare-fun apply!8744 (BalanceConc!22114 Int) Token!10240)

(assert (=> b!3457636 (= res!1394993 (= (apply!8744 (_1!21570 lt!1174845) 0) separatorToken!241))))

(declare-fun e!2142161 () Bool)

(declare-fun b!3457637 () Bool)

(declare-fun tp!1077735 () Bool)

(declare-fun e!2142163 () Bool)

(assert (=> b!3457637 (= e!2142161 (and tp!1077735 (inv!50322 (tag!6045 (h!42578 rules!2135))) (inv!50325 (transformation!5437 (h!42578 rules!2135))) e!2142163))))

(declare-fun b!3457638 () Bool)

(declare-fun isEmpty!21504 (BalanceConc!22112) Bool)

(assert (=> b!3457638 (= e!2142179 (isEmpty!21504 (_2!21570 lt!1174845)))))

(declare-fun b!3457639 () Bool)

(declare-fun e!2142172 () Bool)

(declare-fun e!2142159 () Bool)

(assert (=> b!3457639 (= e!2142172 e!2142159)))

(declare-fun res!1394978 () Bool)

(assert (=> b!3457639 (=> res!1394978 e!2142159)))

(declare-fun lt!1174834 () List!37281)

(assert (=> b!3457639 (= res!1394978 (not (= lt!1174854 lt!1174834)))))

(declare-fun lt!1174828 () List!37281)

(assert (=> b!3457639 (= lt!1174828 lt!1174834)))

(declare-fun lt!1174846 () List!37281)

(assert (=> b!3457639 (= lt!1174834 (++!9156 lt!1174846 lt!1174835))))

(declare-datatypes ((Unit!52487 0))(
  ( (Unit!52488) )
))
(declare-fun lt!1174838 () Unit!52487)

(declare-fun lemmaConcatAssociativity!1955 (List!37281 List!37281 List!37281) Unit!52487)

(assert (=> b!3457639 (= lt!1174838 (lemmaConcatAssociativity!1955 lt!1174846 lt!1174848 lt!1174829))))

(declare-fun b!3457640 () Bool)

(declare-fun e!2142176 () Bool)

(declare-fun tp!1077728 () Bool)

(assert (=> b!3457640 (= e!2142176 (and e!2142161 tp!1077728))))

(declare-fun b!3457641 () Bool)

(declare-fun e!2142182 () Bool)

(assert (=> b!3457641 (= e!2142182 e!2142164)))

(declare-fun res!1394984 () Bool)

(assert (=> b!3457641 (=> res!1394984 e!2142164)))

(assert (=> b!3457641 (= res!1394984 (or (isSeparator!5437 (rule!8027 (h!42579 tokens!494))) (isSeparator!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))))

(declare-fun lt!1174824 () Unit!52487)

(declare-fun forallContained!1384 (List!37283 Int Token!10240) Unit!52487)

(assert (=> b!3457641 (= lt!1174824 (forallContained!1384 tokens!494 lambda!121776 (h!42579 (t!272530 tokens!494))))))

(declare-fun lt!1174833 () Unit!52487)

(assert (=> b!3457641 (= lt!1174833 (forallContained!1384 tokens!494 lambda!121776 (h!42579 tokens!494)))))

(declare-fun b!3457642 () Bool)

(declare-fun res!1394976 () Bool)

(assert (=> b!3457642 (=> (not res!1394976) (not e!2142160))))

(declare-fun rulesInvariant!4423 (LexerInterface!5026 List!37282) Bool)

(assert (=> b!3457642 (= res!1394976 (rulesInvariant!4423 thiss!18206 rules!2135))))

(declare-fun b!3457643 () Bool)

(declare-fun e!2142166 () Bool)

(assert (=> b!3457643 (= e!2142166 false)))

(declare-fun e!2142178 () Bool)

(assert (=> b!3457644 (= e!2142178 (and tp!1077730 tp!1077737))))

(declare-fun b!3457645 () Bool)

(declare-fun e!2142173 () Bool)

(assert (=> b!3457645 (= e!2142160 (not e!2142173))))

(declare-fun res!1394972 () Bool)

(assert (=> b!3457645 (=> res!1394972 e!2142173)))

(declare-fun lt!1174839 () List!37281)

(declare-fun lt!1174840 () List!37281)

(assert (=> b!3457645 (= res!1394972 (not (= lt!1174839 lt!1174840)))))

(declare-fun printList!1574 (LexerInterface!5026 List!37283) List!37281)

(assert (=> b!3457645 (= lt!1174840 (printList!1574 thiss!18206 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))

(declare-fun lt!1174827 () BalanceConc!22112)

(assert (=> b!3457645 (= lt!1174839 (list!13524 lt!1174827))))

(declare-fun lt!1174849 () BalanceConc!22114)

(declare-fun printTailRec!1521 (LexerInterface!5026 BalanceConc!22114 Int BalanceConc!22112) BalanceConc!22112)

(assert (=> b!3457645 (= lt!1174827 (printTailRec!1521 thiss!18206 lt!1174849 0 (BalanceConc!22113 Empty!11249)))))

(declare-fun print!2091 (LexerInterface!5026 BalanceConc!22114) BalanceConc!22112)

(assert (=> b!3457645 (= lt!1174827 (print!2091 thiss!18206 lt!1174849))))

(declare-fun singletonSeq!2533 (Token!10240) BalanceConc!22114)

(assert (=> b!3457645 (= lt!1174849 (singletonSeq!2533 (h!42579 tokens!494)))))

(declare-fun b!3457646 () Bool)

(declare-fun e!2142175 () Bool)

(declare-fun e!2142165 () Bool)

(assert (=> b!3457646 (= e!2142175 e!2142165)))

(declare-fun res!1394973 () Bool)

(assert (=> b!3457646 (=> (not res!1394973) (not e!2142165))))

(declare-fun lt!1174826 () Rule!10674)

(declare-fun matchR!4780 (Regex!10196 List!37281) Bool)

(assert (=> b!3457646 (= res!1394973 (matchR!4780 (regex!5437 lt!1174826) lt!1174848))))

(declare-datatypes ((Option!7521 0))(
  ( (None!7520) (Some!7520 (v!36836 Rule!10674)) )
))
(declare-fun lt!1174853 () Option!7521)

(declare-fun get!11891 (Option!7521) Rule!10674)

(assert (=> b!3457646 (= lt!1174826 (get!11891 lt!1174853))))

(declare-fun b!3457647 () Bool)

(declare-fun e!2142174 () Bool)

(declare-fun lt!1174825 () tuple2!36872)

(assert (=> b!3457647 (= e!2142174 (isEmpty!21504 (_2!21570 lt!1174825)))))

(assert (=> b!3457648 (= e!2142180 (and tp!1077734 tp!1077732))))

(declare-fun b!3457649 () Bool)

(declare-fun e!2142181 () Unit!52487)

(declare-fun Unit!52489 () Unit!52487)

(assert (=> b!3457649 (= e!2142181 Unit!52489)))

(declare-fun lt!1174851 () Unit!52487)

(declare-fun lt!1174844 () C!20578)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!495 (Regex!10196 List!37281 C!20578) Unit!52487)

(assert (=> b!3457649 (= lt!1174851 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!495 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848 lt!1174844))))

(declare-fun res!1394974 () Bool)

(assert (=> b!3457649 (= res!1394974 (not (matchR!4780 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848)))))

(assert (=> b!3457649 (=> (not res!1394974) (not e!2142166))))

(assert (=> b!3457649 e!2142166))

(declare-fun b!3457650 () Bool)

(declare-fun Unit!52490 () Unit!52487)

(assert (=> b!3457650 (= e!2142181 Unit!52490)))

(declare-fun b!3457651 () Bool)

(declare-fun e!2142177 () Bool)

(declare-datatypes ((tuple2!36874 0))(
  ( (tuple2!36875 (_1!21571 Token!10240) (_2!21571 List!37281)) )
))
(declare-datatypes ((Option!7522 0))(
  ( (None!7521) (Some!7521 (v!36837 tuple2!36874)) )
))
(declare-fun isDefined!5791 (Option!7522) Bool)

(declare-fun maxPrefix!2566 (LexerInterface!5026 List!37282 List!37281) Option!7522)

(assert (=> b!3457651 (= e!2142177 (isDefined!5791 (maxPrefix!2566 thiss!18206 rules!2135 lt!1174846)))))

(assert (=> b!3457652 (= e!2142163 (and tp!1077725 tp!1077726))))

(declare-fun b!3457653 () Bool)

(declare-fun e!2142171 () Bool)

(assert (=> b!3457653 (= e!2142173 e!2142171)))

(declare-fun res!1394983 () Bool)

(assert (=> b!3457653 (=> res!1394983 e!2142171)))

(assert (=> b!3457653 (= res!1394983 (or (not (= lt!1174840 lt!1174846)) (not (= lt!1174839 lt!1174846))))))

(assert (=> b!3457653 (= lt!1174846 (list!13524 (charsOf!3451 (h!42579 tokens!494))))))

(assert (=> b!3457654 (= e!2142159 e!2142177)))

(declare-fun res!1394988 () Bool)

(assert (=> b!3457654 (=> res!1394988 e!2142177)))

(declare-fun contains!6885 (List!37282 Rule!10674) Bool)

(assert (=> b!3457654 (= res!1394988 (not (contains!6885 rules!2135 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun contains!6886 (List!37281 C!20578) Bool)

(declare-fun usedCharacters!671 (Regex!10196) List!37281)

(assert (=> b!3457654 (not (contains!6886 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174844))))

(declare-fun lt!1174843 () Unit!52487)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!237 (LexerInterface!5026 List!37282 List!37282 Rule!10674 Rule!10674 C!20578) Unit!52487)

(assert (=> b!3457654 (= lt!1174843 (lemmaNonSepRuleNotContainsCharContainedInASepRule!237 thiss!18206 rules!2135 rules!2135 (rule!8027 (h!42579 tokens!494)) (rule!8027 separatorToken!241) lt!1174844))))

(declare-fun lt!1174847 () Unit!52487)

(assert (=> b!3457654 (= lt!1174847 (forallContained!1384 tokens!494 lambda!121777 (h!42579 (t!272530 tokens!494))))))

(declare-fun rulesProduceIndividualToken!2518 (LexerInterface!5026 List!37282 Token!10240) Bool)

(assert (=> b!3457654 (= (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 (t!272530 tokens!494))) e!2142174)))

(declare-fun res!1394981 () Bool)

(assert (=> b!3457654 (=> (not res!1394981) (not e!2142174))))

(declare-fun size!28183 (BalanceConc!22114) Int)

(assert (=> b!3457654 (= res!1394981 (= (size!28183 (_1!21570 lt!1174825)) 1))))

(declare-fun lt!1174856 () BalanceConc!22112)

(declare-fun lex!2352 (LexerInterface!5026 List!37282 BalanceConc!22112) tuple2!36872)

(assert (=> b!3457654 (= lt!1174825 (lex!2352 thiss!18206 rules!2135 lt!1174856))))

(declare-fun lt!1174837 () BalanceConc!22114)

(assert (=> b!3457654 (= lt!1174856 (printTailRec!1521 thiss!18206 lt!1174837 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> b!3457654 (= lt!1174856 (print!2091 thiss!18206 lt!1174837))))

(assert (=> b!3457654 (= lt!1174837 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))

(assert (=> b!3457654 e!2142179))

(declare-fun res!1394969 () Bool)

(assert (=> b!3457654 (=> (not res!1394969) (not e!2142179))))

(assert (=> b!3457654 (= res!1394969 (= (size!28183 (_1!21570 lt!1174845)) 1))))

(declare-fun lt!1174842 () BalanceConc!22112)

(assert (=> b!3457654 (= lt!1174845 (lex!2352 thiss!18206 rules!2135 lt!1174842))))

(declare-fun lt!1174852 () BalanceConc!22114)

(assert (=> b!3457654 (= lt!1174842 (printTailRec!1521 thiss!18206 lt!1174852 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> b!3457654 (= lt!1174842 (print!2091 thiss!18206 lt!1174852))))

(assert (=> b!3457654 (= lt!1174852 (singletonSeq!2533 separatorToken!241))))

(declare-fun lt!1174841 () Unit!52487)

(assert (=> b!3457654 (= lt!1174841 e!2142181)))

(declare-fun c!591764 () Bool)

(assert (=> b!3457654 (= c!591764 (not (contains!6886 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241))) lt!1174844)))))

(declare-fun head!7316 (List!37281) C!20578)

(assert (=> b!3457654 (= lt!1174844 (head!7316 lt!1174848))))

(assert (=> b!3457654 e!2142175))

(declare-fun res!1394990 () Bool)

(assert (=> b!3457654 (=> (not res!1394990) (not e!2142175))))

(declare-fun isDefined!5792 (Option!7521) Bool)

(assert (=> b!3457654 (= res!1394990 (isDefined!5792 lt!1174853))))

(declare-fun getRuleFromTag!1080 (LexerInterface!5026 List!37282 String!41670) Option!7521)

(assert (=> b!3457654 (= lt!1174853 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))))

(declare-fun lt!1174836 () Unit!52487)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1080 (LexerInterface!5026 List!37282 List!37281 Token!10240) Unit!52487)

(assert (=> b!3457654 (= lt!1174836 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1080 thiss!18206 rules!2135 lt!1174848 separatorToken!241))))

(declare-fun lt!1174823 () BalanceConc!22112)

(declare-fun maxPrefixOneRule!1733 (LexerInterface!5026 Rule!10674 List!37281) Option!7522)

(declare-fun apply!8745 (TokenValueInjection!10762 BalanceConc!22112) TokenValue!5667)

(declare-fun size!28184 (List!37281) Int)

(assert (=> b!3457654 (= (maxPrefixOneRule!1733 thiss!18206 (rule!8027 (h!42579 tokens!494)) lt!1174846) (Some!7521 (tuple2!36875 (Token!10241 (apply!8745 (transformation!5437 (rule!8027 (h!42579 tokens!494))) lt!1174823) (rule!8027 (h!42579 tokens!494)) (size!28184 lt!1174846) lt!1174846) Nil!37157)))))

(declare-fun lt!1174850 () Unit!52487)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!826 (LexerInterface!5026 List!37282 List!37281 List!37281 List!37281 Rule!10674) Unit!52487)

(assert (=> b!3457654 (= lt!1174850 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!826 thiss!18206 rules!2135 lt!1174846 lt!1174846 Nil!37157 (rule!8027 (h!42579 tokens!494))))))

(declare-fun e!2142188 () Bool)

(assert (=> b!3457654 e!2142188))

(declare-fun res!1394995 () Bool)

(assert (=> b!3457654 (=> (not res!1394995) (not e!2142188))))

(declare-fun lt!1174832 () Option!7521)

(assert (=> b!3457654 (= res!1394995 (isDefined!5792 lt!1174832))))

(assert (=> b!3457654 (= lt!1174832 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun lt!1174831 () Unit!52487)

(assert (=> b!3457654 (= lt!1174831 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1080 thiss!18206 rules!2135 lt!1174846 (h!42579 tokens!494)))))

(declare-fun lt!1174830 () Unit!52487)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1015 (LexerInterface!5026 List!37282 List!37283 Token!10240) Unit!52487)

(assert (=> b!3457654 (= lt!1174830 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1015 thiss!18206 rules!2135 tokens!494 (h!42579 tokens!494)))))

(declare-fun res!1394992 () Bool)

(assert (=> start!321588 (=> (not res!1394992) (not e!2142160))))

(assert (=> start!321588 (= res!1394992 (is-Lexer!5024 thiss!18206))))

(assert (=> start!321588 e!2142160))

(assert (=> start!321588 true))

(assert (=> start!321588 e!2142176))

(assert (=> start!321588 e!2142157))

(declare-fun e!2142186 () Bool)

(assert (=> start!321588 (and (inv!50326 separatorToken!241) e!2142186)))

(declare-fun b!3457655 () Bool)

(declare-fun e!2142162 () Bool)

(declare-fun lt!1174855 () Rule!10674)

(assert (=> b!3457655 (= e!2142162 (= (rule!8027 (h!42579 tokens!494)) lt!1174855))))

(declare-fun b!3457656 () Bool)

(declare-fun e!2142170 () Bool)

(declare-fun tp!1077736 () Bool)

(assert (=> b!3457656 (= e!2142170 (and tp!1077736 (inv!50322 (tag!6045 (rule!8027 (h!42579 tokens!494)))) (inv!50325 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) e!2142178))))

(declare-fun b!3457657 () Bool)

(assert (=> b!3457657 (= e!2142171 e!2142182)))

(declare-fun res!1394968 () Bool)

(assert (=> b!3457657 (=> res!1394968 e!2142182)))

(declare-fun isEmpty!21505 (BalanceConc!22114) Bool)

(assert (=> b!3457657 (= res!1394968 (isEmpty!21505 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823))))))

(declare-fun seqFromList!3928 (List!37281) BalanceConc!22112)

(assert (=> b!3457657 (= lt!1174823 (seqFromList!3928 lt!1174846))))

(declare-fun b!3457658 () Bool)

(declare-fun tp!1077727 () Bool)

(declare-fun inv!21 (TokenValue!5667) Bool)

(assert (=> b!3457658 (= e!2142186 (and (inv!21 (value!175416 separatorToken!241)) e!2142183 tp!1077727))))

(declare-fun b!3457659 () Bool)

(assert (=> b!3457659 (= e!2142188 e!2142162)))

(declare-fun res!1394975 () Bool)

(assert (=> b!3457659 (=> (not res!1394975) (not e!2142162))))

(assert (=> b!3457659 (= res!1394975 (matchR!4780 (regex!5437 lt!1174855) lt!1174846))))

(assert (=> b!3457659 (= lt!1174855 (get!11891 lt!1174832))))

(declare-fun b!3457660 () Bool)

(declare-fun res!1394991 () Bool)

(assert (=> b!3457660 (=> res!1394991 e!2142177)))

(assert (=> b!3457660 (= res!1394991 (not (contains!6885 rules!2135 (rule!8027 separatorToken!241))))))

(declare-fun b!3457661 () Bool)

(assert (=> b!3457661 (= e!2142165 (= (rule!8027 separatorToken!241) lt!1174826))))

(declare-fun b!3457662 () Bool)

(declare-fun res!1394979 () Bool)

(assert (=> b!3457662 (=> (not res!1394979) (not e!2142160))))

(assert (=> b!3457662 (= res!1394979 (isSeparator!5437 (rule!8027 separatorToken!241)))))

(declare-fun b!3457663 () Bool)

(assert (=> b!3457663 (= e!2142185 e!2142172)))

(declare-fun res!1394971 () Bool)

(assert (=> b!3457663 (=> res!1394971 e!2142172)))

(assert (=> b!3457663 (= res!1394971 (not (= lt!1174854 lt!1174828)))))

(assert (=> b!3457663 (= lt!1174828 (++!9156 (++!9156 lt!1174846 lt!1174848) lt!1174829))))

(declare-fun res!1394970 () Bool)

(assert (=> b!3457664 (=> (not res!1394970) (not e!2142160))))

(declare-fun forall!7916 (List!37283 Int) Bool)

(assert (=> b!3457664 (= res!1394970 (forall!7916 tokens!494 lambda!121776))))

(declare-fun b!3457665 () Bool)

(declare-fun res!1394987 () Bool)

(assert (=> b!3457665 (=> (not res!1394987) (not e!2142160))))

(declare-fun isEmpty!21506 (List!37282) Bool)

(assert (=> b!3457665 (= res!1394987 (not (isEmpty!21506 rules!2135)))))

(declare-fun b!3457666 () Bool)

(declare-fun res!1394980 () Bool)

(assert (=> b!3457666 (=> res!1394980 e!2142171)))

(assert (=> b!3457666 (= res!1394980 (not (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 tokens!494))))))

(declare-fun b!3457667 () Bool)

(declare-fun res!1394977 () Bool)

(assert (=> b!3457667 (=> (not res!1394977) (not e!2142160))))

(assert (=> b!3457667 (= res!1394977 (and (not (is-Nil!37159 tokens!494)) (not (is-Nil!37159 (t!272530 tokens!494)))))))

(declare-fun b!3457668 () Bool)

(declare-fun tp!1077729 () Bool)

(assert (=> b!3457668 (= e!2142187 (and (inv!21 (value!175416 (h!42579 tokens!494))) e!2142170 tp!1077729))))

(declare-fun b!3457669 () Bool)

(declare-fun res!1394986 () Bool)

(assert (=> b!3457669 (=> (not res!1394986) (not e!2142160))))

(assert (=> b!3457669 (= res!1394986 (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3457670 () Bool)

(declare-fun res!1394982 () Bool)

(assert (=> b!3457670 (=> (not res!1394982) (not e!2142174))))

(assert (=> b!3457670 (= res!1394982 (= (apply!8744 (_1!21570 lt!1174825) 0) (h!42579 (t!272530 tokens!494))))))

(assert (= (and start!321588 res!1394992) b!3457665))

(assert (= (and b!3457665 res!1394987) b!3457642))

(assert (= (and b!3457642 res!1394976) b!3457631))

(assert (= (and b!3457631 res!1394994) b!3457669))

(assert (= (and b!3457669 res!1394986) b!3457662))

(assert (= (and b!3457662 res!1394979) b!3457664))

(assert (= (and b!3457664 res!1394970) b!3457633))

(assert (= (and b!3457633 res!1394989) b!3457667))

(assert (= (and b!3457667 res!1394977) b!3457645))

(assert (= (and b!3457645 (not res!1394972)) b!3457653))

(assert (= (and b!3457653 (not res!1394983)) b!3457666))

(assert (= (and b!3457666 (not res!1394980)) b!3457657))

(assert (= (and b!3457657 (not res!1394968)) b!3457641))

(assert (= (and b!3457641 (not res!1394984)) b!3457634))

(assert (= (and b!3457634 (not res!1394985)) b!3457663))

(assert (= (and b!3457663 (not res!1394971)) b!3457639))

(assert (= (and b!3457639 (not res!1394978)) b!3457654))

(assert (= (and b!3457654 res!1394995) b!3457659))

(assert (= (and b!3457659 res!1394975) b!3457655))

(assert (= (and b!3457654 res!1394990) b!3457646))

(assert (= (and b!3457646 res!1394973) b!3457661))

(assert (= (and b!3457654 c!591764) b!3457649))

(assert (= (and b!3457654 (not c!591764)) b!3457650))

(assert (= (and b!3457649 res!1394974) b!3457643))

(assert (= (and b!3457654 res!1394969) b!3457636))

(assert (= (and b!3457636 res!1394993) b!3457638))

(assert (= (and b!3457654 res!1394981) b!3457670))

(assert (= (and b!3457670 res!1394982) b!3457647))

(assert (= (and b!3457654 (not res!1394988)) b!3457660))

(assert (= (and b!3457660 (not res!1394991)) b!3457651))

(assert (= b!3457637 b!3457652))

(assert (= b!3457640 b!3457637))

(assert (= (and start!321588 (is-Cons!37158 rules!2135)) b!3457640))

(assert (= b!3457656 b!3457644))

(assert (= b!3457668 b!3457656))

(assert (= b!3457635 b!3457668))

(assert (= (and start!321588 (is-Cons!37159 tokens!494)) b!3457635))

(assert (= b!3457632 b!3457648))

(assert (= b!3457658 b!3457632))

(assert (= start!321588 b!3457658))

(declare-fun m!3858017 () Bool)

(assert (=> b!3457633 m!3858017))

(declare-fun m!3858019 () Bool)

(assert (=> b!3457638 m!3858019))

(declare-fun m!3858021 () Bool)

(assert (=> b!3457646 m!3858021))

(declare-fun m!3858023 () Bool)

(assert (=> b!3457646 m!3858023))

(declare-fun m!3858025 () Bool)

(assert (=> b!3457668 m!3858025))

(declare-fun m!3858027 () Bool)

(assert (=> b!3457666 m!3858027))

(declare-fun m!3858029 () Bool)

(assert (=> b!3457660 m!3858029))

(declare-fun m!3858031 () Bool)

(assert (=> b!3457664 m!3858031))

(declare-fun m!3858033 () Bool)

(assert (=> b!3457656 m!3858033))

(declare-fun m!3858035 () Bool)

(assert (=> b!3457656 m!3858035))

(declare-fun m!3858037 () Bool)

(assert (=> b!3457634 m!3858037))

(declare-fun m!3858039 () Bool)

(assert (=> b!3457634 m!3858039))

(declare-fun m!3858041 () Bool)

(assert (=> b!3457634 m!3858041))

(assert (=> b!3457634 m!3858037))

(declare-fun m!3858043 () Bool)

(assert (=> b!3457634 m!3858043))

(declare-fun m!3858045 () Bool)

(assert (=> b!3457634 m!3858045))

(declare-fun m!3858047 () Bool)

(assert (=> b!3457634 m!3858047))

(declare-fun m!3858049 () Bool)

(assert (=> b!3457634 m!3858049))

(assert (=> b!3457634 m!3858047))

(declare-fun m!3858051 () Bool)

(assert (=> b!3457634 m!3858051))

(declare-fun m!3858053 () Bool)

(assert (=> b!3457634 m!3858053))

(assert (=> b!3457634 m!3858043))

(assert (=> b!3457634 m!3858045))

(declare-fun m!3858055 () Bool)

(assert (=> b!3457634 m!3858055))

(assert (=> b!3457634 m!3858051))

(declare-fun m!3858057 () Bool)

(assert (=> b!3457647 m!3858057))

(declare-fun m!3858059 () Bool)

(assert (=> b!3457665 m!3858059))

(declare-fun m!3858061 () Bool)

(assert (=> b!3457639 m!3858061))

(declare-fun m!3858063 () Bool)

(assert (=> b!3457639 m!3858063))

(declare-fun m!3858065 () Bool)

(assert (=> b!3457653 m!3858065))

(assert (=> b!3457653 m!3858065))

(declare-fun m!3858067 () Bool)

(assert (=> b!3457653 m!3858067))

(declare-fun m!3858069 () Bool)

(assert (=> b!3457657 m!3858069))

(declare-fun m!3858071 () Bool)

(assert (=> b!3457657 m!3858071))

(declare-fun m!3858073 () Bool)

(assert (=> b!3457657 m!3858073))

(declare-fun m!3858075 () Bool)

(assert (=> b!3457659 m!3858075))

(declare-fun m!3858077 () Bool)

(assert (=> b!3457659 m!3858077))

(declare-fun m!3858079 () Bool)

(assert (=> b!3457645 m!3858079))

(declare-fun m!3858081 () Bool)

(assert (=> b!3457645 m!3858081))

(declare-fun m!3858083 () Bool)

(assert (=> b!3457645 m!3858083))

(declare-fun m!3858085 () Bool)

(assert (=> b!3457645 m!3858085))

(declare-fun m!3858087 () Bool)

(assert (=> b!3457645 m!3858087))

(declare-fun m!3858089 () Bool)

(assert (=> b!3457670 m!3858089))

(declare-fun m!3858091 () Bool)

(assert (=> b!3457663 m!3858091))

(assert (=> b!3457663 m!3858091))

(declare-fun m!3858093 () Bool)

(assert (=> b!3457663 m!3858093))

(declare-fun m!3858095 () Bool)

(assert (=> b!3457654 m!3858095))

(declare-fun m!3858097 () Bool)

(assert (=> b!3457654 m!3858097))

(declare-fun m!3858099 () Bool)

(assert (=> b!3457654 m!3858099))

(declare-fun m!3858101 () Bool)

(assert (=> b!3457654 m!3858101))

(declare-fun m!3858103 () Bool)

(assert (=> b!3457654 m!3858103))

(declare-fun m!3858105 () Bool)

(assert (=> b!3457654 m!3858105))

(declare-fun m!3858107 () Bool)

(assert (=> b!3457654 m!3858107))

(assert (=> b!3457654 m!3858097))

(declare-fun m!3858109 () Bool)

(assert (=> b!3457654 m!3858109))

(declare-fun m!3858111 () Bool)

(assert (=> b!3457654 m!3858111))

(declare-fun m!3858113 () Bool)

(assert (=> b!3457654 m!3858113))

(declare-fun m!3858115 () Bool)

(assert (=> b!3457654 m!3858115))

(declare-fun m!3858117 () Bool)

(assert (=> b!3457654 m!3858117))

(declare-fun m!3858119 () Bool)

(assert (=> b!3457654 m!3858119))

(declare-fun m!3858121 () Bool)

(assert (=> b!3457654 m!3858121))

(declare-fun m!3858123 () Bool)

(assert (=> b!3457654 m!3858123))

(assert (=> b!3457654 m!3858121))

(declare-fun m!3858125 () Bool)

(assert (=> b!3457654 m!3858125))

(declare-fun m!3858127 () Bool)

(assert (=> b!3457654 m!3858127))

(declare-fun m!3858129 () Bool)

(assert (=> b!3457654 m!3858129))

(declare-fun m!3858131 () Bool)

(assert (=> b!3457654 m!3858131))

(declare-fun m!3858133 () Bool)

(assert (=> b!3457654 m!3858133))

(declare-fun m!3858135 () Bool)

(assert (=> b!3457654 m!3858135))

(declare-fun m!3858137 () Bool)

(assert (=> b!3457654 m!3858137))

(declare-fun m!3858139 () Bool)

(assert (=> b!3457654 m!3858139))

(declare-fun m!3858141 () Bool)

(assert (=> b!3457654 m!3858141))

(declare-fun m!3858143 () Bool)

(assert (=> b!3457654 m!3858143))

(declare-fun m!3858145 () Bool)

(assert (=> b!3457654 m!3858145))

(declare-fun m!3858147 () Bool)

(assert (=> b!3457654 m!3858147))

(declare-fun m!3858149 () Bool)

(assert (=> b!3457654 m!3858149))

(declare-fun m!3858151 () Bool)

(assert (=> b!3457654 m!3858151))

(declare-fun m!3858153 () Bool)

(assert (=> b!3457654 m!3858153))

(declare-fun m!3858155 () Bool)

(assert (=> b!3457632 m!3858155))

(declare-fun m!3858157 () Bool)

(assert (=> b!3457632 m!3858157))

(declare-fun m!3858159 () Bool)

(assert (=> b!3457669 m!3858159))

(declare-fun m!3858161 () Bool)

(assert (=> b!3457636 m!3858161))

(declare-fun m!3858163 () Bool)

(assert (=> b!3457637 m!3858163))

(declare-fun m!3858165 () Bool)

(assert (=> b!3457637 m!3858165))

(declare-fun m!3858167 () Bool)

(assert (=> b!3457641 m!3858167))

(declare-fun m!3858169 () Bool)

(assert (=> b!3457641 m!3858169))

(declare-fun m!3858171 () Bool)

(assert (=> start!321588 m!3858171))

(declare-fun m!3858173 () Bool)

(assert (=> b!3457649 m!3858173))

(declare-fun m!3858175 () Bool)

(assert (=> b!3457649 m!3858175))

(declare-fun m!3858177 () Bool)

(assert (=> b!3457658 m!3858177))

(declare-fun m!3858179 () Bool)

(assert (=> b!3457651 m!3858179))

(assert (=> b!3457651 m!3858179))

(declare-fun m!3858181 () Bool)

(assert (=> b!3457651 m!3858181))

(declare-fun m!3858183 () Bool)

(assert (=> b!3457642 m!3858183))

(declare-fun m!3858185 () Bool)

(assert (=> b!3457631 m!3858185))

(assert (=> b!3457631 m!3858185))

(declare-fun m!3858187 () Bool)

(assert (=> b!3457631 m!3858187))

(declare-fun m!3858189 () Bool)

(assert (=> b!3457635 m!3858189))

(push 1)

(assert (not b!3457658))

(assert (not b!3457632))

(assert (not b!3457651))

(assert (not b!3457649))

(assert (not b_next!90557))

(assert (not b!3457633))

(assert (not b!3457653))

(assert (not b!3457631))

(assert (not b!3457638))

(assert (not b!3457668))

(assert (not b!3457665))

(assert (not b!3457666))

(assert (not b!3457660))

(assert (not b_next!90549))

(assert b_and!243073)

(assert (not b!3457635))

(assert (not b!3457636))

(assert (not b_next!90553))

(assert (not b!3457639))

(assert (not b!3457637))

(assert (not b!3457657))

(assert (not b!3457659))

(assert (not b!3457642))

(assert (not b!3457634))

(assert (not b_next!90559))

(assert b_and!243081)

(assert b_and!243077)

(assert (not b!3457640))

(assert (not b_next!90551))

(assert (not b!3457654))

(assert b_and!243079)

(assert (not b!3457656))

(assert (not b!3457664))

(assert (not b!3457641))

(assert b_and!243075)

(assert (not b!3457670))

(assert (not b!3457679))

(assert b_and!243071)

(assert (not b!3457646))

(assert (not b!3457669))

(assert (not b!3457645))

(assert (not b!3457647))

(assert (not b_next!90555))

(assert (not b!3457663))

(assert (not start!321588))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!90549))

(assert b_and!243073)

(assert (not b_next!90553))

(assert (not b_next!90551))

(assert (not b_next!90557))

(assert b_and!243079)

(assert b_and!243075)

(assert b_and!243071)

(assert (not b_next!90555))

(assert (not b_next!90559))

(assert b_and!243081)

(assert b_and!243077)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!994388 () Bool)

(declare-fun lt!1174961 () Bool)

(declare-fun isEmpty!21510 (List!37281) Bool)

(assert (=> d!994388 (= lt!1174961 (isEmpty!21510 (list!13524 (_2!21570 lt!1174845))))))

(declare-fun isEmpty!21511 (Conc!11249) Bool)

(assert (=> d!994388 (= lt!1174961 (isEmpty!21511 (c!591766 (_2!21570 lt!1174845))))))

(assert (=> d!994388 (= (isEmpty!21504 (_2!21570 lt!1174845)) lt!1174961)))

(declare-fun bs!560146 () Bool)

(assert (= bs!560146 d!994388))

(declare-fun m!3858365 () Bool)

(assert (=> bs!560146 m!3858365))

(assert (=> bs!560146 m!3858365))

(declare-fun m!3858367 () Bool)

(assert (=> bs!560146 m!3858367))

(declare-fun m!3858369 () Bool)

(assert (=> bs!560146 m!3858369))

(assert (=> b!3457638 d!994388))

(declare-fun b!3457827 () Bool)

(declare-fun res!1395091 () Bool)

(declare-fun e!2142307 () Bool)

(assert (=> b!3457827 (=> (not res!1395091) (not e!2142307))))

(declare-fun lt!1174964 () List!37281)

(assert (=> b!3457827 (= res!1395091 (= (size!28184 lt!1174964) (+ (size!28184 lt!1174846) (size!28184 lt!1174835))))))

(declare-fun d!994390 () Bool)

(assert (=> d!994390 e!2142307))

(declare-fun res!1395090 () Bool)

(assert (=> d!994390 (=> (not res!1395090) (not e!2142307))))

(declare-fun content!5182 (List!37281) (Set C!20578))

(assert (=> d!994390 (= res!1395090 (= (content!5182 lt!1174964) (set.union (content!5182 lt!1174846) (content!5182 lt!1174835))))))

(declare-fun e!2142308 () List!37281)

(assert (=> d!994390 (= lt!1174964 e!2142308)))

(declare-fun c!591777 () Bool)

(assert (=> d!994390 (= c!591777 (is-Nil!37157 lt!1174846))))

(assert (=> d!994390 (= (++!9156 lt!1174846 lt!1174835) lt!1174964)))

(declare-fun b!3457826 () Bool)

(assert (=> b!3457826 (= e!2142308 (Cons!37157 (h!42577 lt!1174846) (++!9156 (t!272528 lt!1174846) lt!1174835)))))

(declare-fun b!3457828 () Bool)

(assert (=> b!3457828 (= e!2142307 (or (not (= lt!1174835 Nil!37157)) (= lt!1174964 lt!1174846)))))

(declare-fun b!3457825 () Bool)

(assert (=> b!3457825 (= e!2142308 lt!1174835)))

(assert (= (and d!994390 c!591777) b!3457825))

(assert (= (and d!994390 (not c!591777)) b!3457826))

(assert (= (and d!994390 res!1395090) b!3457827))

(assert (= (and b!3457827 res!1395091) b!3457828))

(declare-fun m!3858371 () Bool)

(assert (=> b!3457827 m!3858371))

(assert (=> b!3457827 m!3858103))

(declare-fun m!3858373 () Bool)

(assert (=> b!3457827 m!3858373))

(declare-fun m!3858375 () Bool)

(assert (=> d!994390 m!3858375))

(declare-fun m!3858377 () Bool)

(assert (=> d!994390 m!3858377))

(declare-fun m!3858379 () Bool)

(assert (=> d!994390 m!3858379))

(declare-fun m!3858381 () Bool)

(assert (=> b!3457826 m!3858381))

(assert (=> b!3457639 d!994390))

(declare-fun d!994392 () Bool)

(assert (=> d!994392 (= (++!9156 (++!9156 lt!1174846 lt!1174848) lt!1174829) (++!9156 lt!1174846 (++!9156 lt!1174848 lt!1174829)))))

(declare-fun lt!1174967 () Unit!52487)

(declare-fun choose!19989 (List!37281 List!37281 List!37281) Unit!52487)

(assert (=> d!994392 (= lt!1174967 (choose!19989 lt!1174846 lt!1174848 lt!1174829))))

(assert (=> d!994392 (= (lemmaConcatAssociativity!1955 lt!1174846 lt!1174848 lt!1174829) lt!1174967)))

(declare-fun bs!560147 () Bool)

(assert (= bs!560147 d!994392))

(assert (=> bs!560147 m!3858091))

(assert (=> bs!560147 m!3858055))

(declare-fun m!3858383 () Bool)

(assert (=> bs!560147 m!3858383))

(declare-fun m!3858385 () Bool)

(assert (=> bs!560147 m!3858385))

(assert (=> bs!560147 m!3858091))

(assert (=> bs!560147 m!3858093))

(assert (=> bs!560147 m!3858055))

(assert (=> b!3457639 d!994392))

(declare-fun d!994394 () Bool)

(declare-fun lt!1174970 () Bool)

(declare-fun content!5183 (List!37282) (Set Rule!10674))

(assert (=> d!994394 (= lt!1174970 (set.member (rule!8027 separatorToken!241) (content!5183 rules!2135)))))

(declare-fun e!2142314 () Bool)

(assert (=> d!994394 (= lt!1174970 e!2142314)))

(declare-fun res!1395100 () Bool)

(assert (=> d!994394 (=> (not res!1395100) (not e!2142314))))

(assert (=> d!994394 (= res!1395100 (is-Cons!37158 rules!2135))))

(assert (=> d!994394 (= (contains!6885 rules!2135 (rule!8027 separatorToken!241)) lt!1174970)))

(declare-fun b!3457833 () Bool)

(declare-fun e!2142313 () Bool)

(assert (=> b!3457833 (= e!2142314 e!2142313)))

(declare-fun res!1395099 () Bool)

(assert (=> b!3457833 (=> res!1395099 e!2142313)))

(assert (=> b!3457833 (= res!1395099 (= (h!42578 rules!2135) (rule!8027 separatorToken!241)))))

(declare-fun b!3457834 () Bool)

(assert (=> b!3457834 (= e!2142313 (contains!6885 (t!272529 rules!2135) (rule!8027 separatorToken!241)))))

(assert (= (and d!994394 res!1395100) b!3457833))

(assert (= (and b!3457833 (not res!1395099)) b!3457834))

(declare-fun m!3858387 () Bool)

(assert (=> d!994394 m!3858387))

(declare-fun m!3858389 () Bool)

(assert (=> d!994394 m!3858389))

(declare-fun m!3858391 () Bool)

(assert (=> b!3457834 m!3858391))

(assert (=> b!3457660 d!994394))

(declare-fun d!994396 () Bool)

(declare-fun res!1395105 () Bool)

(declare-fun e!2142317 () Bool)

(assert (=> d!994396 (=> (not res!1395105) (not e!2142317))))

(declare-fun rulesValid!2042 (LexerInterface!5026 List!37282) Bool)

(assert (=> d!994396 (= res!1395105 (rulesValid!2042 thiss!18206 rules!2135))))

(assert (=> d!994396 (= (rulesInvariant!4423 thiss!18206 rules!2135) e!2142317)))

(declare-fun b!3457837 () Bool)

(declare-datatypes ((List!37288 0))(
  ( (Nil!37164) (Cons!37164 (h!42584 String!41670) (t!272613 List!37288)) )
))
(declare-fun noDuplicateTag!2038 (LexerInterface!5026 List!37282 List!37288) Bool)

(assert (=> b!3457837 (= e!2142317 (noDuplicateTag!2038 thiss!18206 rules!2135 Nil!37164))))

(assert (= (and d!994396 res!1395105) b!3457837))

(declare-fun m!3858393 () Bool)

(assert (=> d!994396 m!3858393))

(declare-fun m!3858395 () Bool)

(assert (=> b!3457837 m!3858395))

(assert (=> b!3457642 d!994396))

(declare-fun d!994398 () Bool)

(declare-fun res!1395110 () Bool)

(declare-fun e!2142322 () Bool)

(assert (=> d!994398 (=> res!1395110 e!2142322)))

(assert (=> d!994398 (= res!1395110 (is-Nil!37159 tokens!494))))

(assert (=> d!994398 (= (forall!7916 tokens!494 lambda!121776) e!2142322)))

(declare-fun b!3457842 () Bool)

(declare-fun e!2142323 () Bool)

(assert (=> b!3457842 (= e!2142322 e!2142323)))

(declare-fun res!1395111 () Bool)

(assert (=> b!3457842 (=> (not res!1395111) (not e!2142323))))

(declare-fun dynLambda!15651 (Int Token!10240) Bool)

(assert (=> b!3457842 (= res!1395111 (dynLambda!15651 lambda!121776 (h!42579 tokens!494)))))

(declare-fun b!3457843 () Bool)

(assert (=> b!3457843 (= e!2142323 (forall!7916 (t!272530 tokens!494) lambda!121776))))

(assert (= (and d!994398 (not res!1395110)) b!3457842))

(assert (= (and b!3457842 res!1395111) b!3457843))

(declare-fun b_lambda!99471 () Bool)

(assert (=> (not b_lambda!99471) (not b!3457842)))

(declare-fun m!3858397 () Bool)

(assert (=> b!3457842 m!3858397))

(declare-fun m!3858399 () Bool)

(assert (=> b!3457843 m!3858399))

(assert (=> b!3457664 d!994398))

(declare-fun d!994400 () Bool)

(assert (=> d!994400 (dynLambda!15651 lambda!121776 (h!42579 (t!272530 tokens!494)))))

(declare-fun lt!1174973 () Unit!52487)

(declare-fun choose!19990 (List!37283 Int Token!10240) Unit!52487)

(assert (=> d!994400 (= lt!1174973 (choose!19990 tokens!494 lambda!121776 (h!42579 (t!272530 tokens!494))))))

(declare-fun e!2142326 () Bool)

(assert (=> d!994400 e!2142326))

(declare-fun res!1395114 () Bool)

(assert (=> d!994400 (=> (not res!1395114) (not e!2142326))))

(assert (=> d!994400 (= res!1395114 (forall!7916 tokens!494 lambda!121776))))

(assert (=> d!994400 (= (forallContained!1384 tokens!494 lambda!121776 (h!42579 (t!272530 tokens!494))) lt!1174973)))

(declare-fun b!3457846 () Bool)

(declare-fun contains!6889 (List!37283 Token!10240) Bool)

(assert (=> b!3457846 (= e!2142326 (contains!6889 tokens!494 (h!42579 (t!272530 tokens!494))))))

(assert (= (and d!994400 res!1395114) b!3457846))

(declare-fun b_lambda!99473 () Bool)

(assert (=> (not b_lambda!99473) (not d!994400)))

(declare-fun m!3858401 () Bool)

(assert (=> d!994400 m!3858401))

(declare-fun m!3858403 () Bool)

(assert (=> d!994400 m!3858403))

(assert (=> d!994400 m!3858031))

(declare-fun m!3858405 () Bool)

(assert (=> b!3457846 m!3858405))

(assert (=> b!3457641 d!994400))

(declare-fun d!994402 () Bool)

(assert (=> d!994402 (dynLambda!15651 lambda!121776 (h!42579 tokens!494))))

(declare-fun lt!1174974 () Unit!52487)

(assert (=> d!994402 (= lt!1174974 (choose!19990 tokens!494 lambda!121776 (h!42579 tokens!494)))))

(declare-fun e!2142327 () Bool)

(assert (=> d!994402 e!2142327))

(declare-fun res!1395115 () Bool)

(assert (=> d!994402 (=> (not res!1395115) (not e!2142327))))

(assert (=> d!994402 (= res!1395115 (forall!7916 tokens!494 lambda!121776))))

(assert (=> d!994402 (= (forallContained!1384 tokens!494 lambda!121776 (h!42579 tokens!494)) lt!1174974)))

(declare-fun b!3457847 () Bool)

(assert (=> b!3457847 (= e!2142327 (contains!6889 tokens!494 (h!42579 tokens!494)))))

(assert (= (and d!994402 res!1395115) b!3457847))

(declare-fun b_lambda!99475 () Bool)

(assert (=> (not b_lambda!99475) (not d!994402)))

(assert (=> d!994402 m!3858397))

(declare-fun m!3858407 () Bool)

(assert (=> d!994402 m!3858407))

(assert (=> d!994402 m!3858031))

(declare-fun m!3858409 () Bool)

(assert (=> b!3457847 m!3858409))

(assert (=> b!3457641 d!994402))

(declare-fun b!3457850 () Bool)

(declare-fun res!1395117 () Bool)

(declare-fun e!2142328 () Bool)

(assert (=> b!3457850 (=> (not res!1395117) (not e!2142328))))

(declare-fun lt!1174975 () List!37281)

(assert (=> b!3457850 (= res!1395117 (= (size!28184 lt!1174975) (+ (size!28184 (++!9156 lt!1174846 lt!1174848)) (size!28184 lt!1174829))))))

(declare-fun d!994404 () Bool)

(assert (=> d!994404 e!2142328))

(declare-fun res!1395116 () Bool)

(assert (=> d!994404 (=> (not res!1395116) (not e!2142328))))

(assert (=> d!994404 (= res!1395116 (= (content!5182 lt!1174975) (set.union (content!5182 (++!9156 lt!1174846 lt!1174848)) (content!5182 lt!1174829))))))

(declare-fun e!2142329 () List!37281)

(assert (=> d!994404 (= lt!1174975 e!2142329)))

(declare-fun c!591778 () Bool)

(assert (=> d!994404 (= c!591778 (is-Nil!37157 (++!9156 lt!1174846 lt!1174848)))))

(assert (=> d!994404 (= (++!9156 (++!9156 lt!1174846 lt!1174848) lt!1174829) lt!1174975)))

(declare-fun b!3457849 () Bool)

(assert (=> b!3457849 (= e!2142329 (Cons!37157 (h!42577 (++!9156 lt!1174846 lt!1174848)) (++!9156 (t!272528 (++!9156 lt!1174846 lt!1174848)) lt!1174829)))))

(declare-fun b!3457851 () Bool)

(assert (=> b!3457851 (= e!2142328 (or (not (= lt!1174829 Nil!37157)) (= lt!1174975 (++!9156 lt!1174846 lt!1174848))))))

(declare-fun b!3457848 () Bool)

(assert (=> b!3457848 (= e!2142329 lt!1174829)))

(assert (= (and d!994404 c!591778) b!3457848))

(assert (= (and d!994404 (not c!591778)) b!3457849))

(assert (= (and d!994404 res!1395116) b!3457850))

(assert (= (and b!3457850 res!1395117) b!3457851))

(declare-fun m!3858411 () Bool)

(assert (=> b!3457850 m!3858411))

(assert (=> b!3457850 m!3858091))

(declare-fun m!3858413 () Bool)

(assert (=> b!3457850 m!3858413))

(declare-fun m!3858415 () Bool)

(assert (=> b!3457850 m!3858415))

(declare-fun m!3858417 () Bool)

(assert (=> d!994404 m!3858417))

(assert (=> d!994404 m!3858091))

(declare-fun m!3858419 () Bool)

(assert (=> d!994404 m!3858419))

(declare-fun m!3858421 () Bool)

(assert (=> d!994404 m!3858421))

(declare-fun m!3858423 () Bool)

(assert (=> b!3457849 m!3858423))

(assert (=> b!3457663 d!994404))

(declare-fun b!3457854 () Bool)

(declare-fun res!1395119 () Bool)

(declare-fun e!2142330 () Bool)

(assert (=> b!3457854 (=> (not res!1395119) (not e!2142330))))

(declare-fun lt!1174976 () List!37281)

(assert (=> b!3457854 (= res!1395119 (= (size!28184 lt!1174976) (+ (size!28184 lt!1174846) (size!28184 lt!1174848))))))

(declare-fun d!994406 () Bool)

(assert (=> d!994406 e!2142330))

(declare-fun res!1395118 () Bool)

(assert (=> d!994406 (=> (not res!1395118) (not e!2142330))))

(assert (=> d!994406 (= res!1395118 (= (content!5182 lt!1174976) (set.union (content!5182 lt!1174846) (content!5182 lt!1174848))))))

(declare-fun e!2142331 () List!37281)

(assert (=> d!994406 (= lt!1174976 e!2142331)))

(declare-fun c!591779 () Bool)

(assert (=> d!994406 (= c!591779 (is-Nil!37157 lt!1174846))))

(assert (=> d!994406 (= (++!9156 lt!1174846 lt!1174848) lt!1174976)))

(declare-fun b!3457853 () Bool)

(assert (=> b!3457853 (= e!2142331 (Cons!37157 (h!42577 lt!1174846) (++!9156 (t!272528 lt!1174846) lt!1174848)))))

(declare-fun b!3457855 () Bool)

(assert (=> b!3457855 (= e!2142330 (or (not (= lt!1174848 Nil!37157)) (= lt!1174976 lt!1174846)))))

(declare-fun b!3457852 () Bool)

(assert (=> b!3457852 (= e!2142331 lt!1174848)))

(assert (= (and d!994406 c!591779) b!3457852))

(assert (= (and d!994406 (not c!591779)) b!3457853))

(assert (= (and d!994406 res!1395118) b!3457854))

(assert (= (and b!3457854 res!1395119) b!3457855))

(declare-fun m!3858425 () Bool)

(assert (=> b!3457854 m!3858425))

(assert (=> b!3457854 m!3858103))

(declare-fun m!3858427 () Bool)

(assert (=> b!3457854 m!3858427))

(declare-fun m!3858429 () Bool)

(assert (=> d!994406 m!3858429))

(assert (=> d!994406 m!3858377))

(declare-fun m!3858431 () Bool)

(assert (=> d!994406 m!3858431))

(declare-fun m!3858433 () Bool)

(assert (=> b!3457853 m!3858433))

(assert (=> b!3457663 d!994406))

(declare-fun d!994408 () Bool)

(declare-fun lt!1174979 () BalanceConc!22112)

(declare-fun list!13526 (BalanceConc!22114) List!37283)

(assert (=> d!994408 (= (list!13524 lt!1174979) (printList!1574 thiss!18206 (list!13526 lt!1174849)))))

(assert (=> d!994408 (= lt!1174979 (printTailRec!1521 thiss!18206 lt!1174849 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!994408 (= (print!2091 thiss!18206 lt!1174849) lt!1174979)))

(declare-fun bs!560148 () Bool)

(assert (= bs!560148 d!994408))

(declare-fun m!3858435 () Bool)

(assert (=> bs!560148 m!3858435))

(declare-fun m!3858437 () Bool)

(assert (=> bs!560148 m!3858437))

(assert (=> bs!560148 m!3858437))

(declare-fun m!3858439 () Bool)

(assert (=> bs!560148 m!3858439))

(assert (=> bs!560148 m!3858079))

(assert (=> b!3457645 d!994408))

(declare-fun d!994410 () Bool)

(declare-fun lt!1174999 () BalanceConc!22112)

(declare-fun printListTailRec!687 (LexerInterface!5026 List!37283 List!37281) List!37281)

(declare-fun dropList!1204 (BalanceConc!22114 Int) List!37283)

(assert (=> d!994410 (= (list!13524 lt!1174999) (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174849 0) (list!13524 (BalanceConc!22113 Empty!11249))))))

(declare-fun e!2142336 () BalanceConc!22112)

(assert (=> d!994410 (= lt!1174999 e!2142336)))

(declare-fun c!591782 () Bool)

(assert (=> d!994410 (= c!591782 (>= 0 (size!28183 lt!1174849)))))

(declare-fun e!2142337 () Bool)

(assert (=> d!994410 e!2142337))

(declare-fun res!1395123 () Bool)

(assert (=> d!994410 (=> (not res!1395123) (not e!2142337))))

(assert (=> d!994410 (= res!1395123 (>= 0 0))))

(assert (=> d!994410 (= (printTailRec!1521 thiss!18206 lt!1174849 0 (BalanceConc!22113 Empty!11249)) lt!1174999)))

(declare-fun b!3457862 () Bool)

(assert (=> b!3457862 (= e!2142337 (<= 0 (size!28183 lt!1174849)))))

(declare-fun b!3457863 () Bool)

(assert (=> b!3457863 (= e!2142336 (BalanceConc!22113 Empty!11249))))

(declare-fun b!3457864 () Bool)

(declare-fun ++!9158 (BalanceConc!22112 BalanceConc!22112) BalanceConc!22112)

(assert (=> b!3457864 (= e!2142336 (printTailRec!1521 thiss!18206 lt!1174849 (+ 0 1) (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174849 0)))))))

(declare-fun lt!1174996 () List!37283)

(assert (=> b!3457864 (= lt!1174996 (list!13526 lt!1174849))))

(declare-fun lt!1174994 () Unit!52487)

(declare-fun lemmaDropApply!1162 (List!37283 Int) Unit!52487)

(assert (=> b!3457864 (= lt!1174994 (lemmaDropApply!1162 lt!1174996 0))))

(declare-fun head!7318 (List!37283) Token!10240)

(declare-fun drop!2010 (List!37283 Int) List!37283)

(declare-fun apply!8748 (List!37283 Int) Token!10240)

(assert (=> b!3457864 (= (head!7318 (drop!2010 lt!1174996 0)) (apply!8748 lt!1174996 0))))

(declare-fun lt!1175000 () Unit!52487)

(assert (=> b!3457864 (= lt!1175000 lt!1174994)))

(declare-fun lt!1174997 () List!37283)

(assert (=> b!3457864 (= lt!1174997 (list!13526 lt!1174849))))

(declare-fun lt!1174998 () Unit!52487)

(declare-fun lemmaDropTail!1046 (List!37283 Int) Unit!52487)

(assert (=> b!3457864 (= lt!1174998 (lemmaDropTail!1046 lt!1174997 0))))

(declare-fun tail!5430 (List!37283) List!37283)

(assert (=> b!3457864 (= (tail!5430 (drop!2010 lt!1174997 0)) (drop!2010 lt!1174997 (+ 0 1)))))

(declare-fun lt!1174995 () Unit!52487)

(assert (=> b!3457864 (= lt!1174995 lt!1174998)))

(assert (= (and d!994410 res!1395123) b!3457862))

(assert (= (and d!994410 c!591782) b!3457863))

(assert (= (and d!994410 (not c!591782)) b!3457864))

(declare-fun m!3858441 () Bool)

(assert (=> d!994410 m!3858441))

(declare-fun m!3858443 () Bool)

(assert (=> d!994410 m!3858443))

(declare-fun m!3858445 () Bool)

(assert (=> d!994410 m!3858445))

(assert (=> d!994410 m!3858443))

(declare-fun m!3858447 () Bool)

(assert (=> d!994410 m!3858447))

(declare-fun m!3858449 () Bool)

(assert (=> d!994410 m!3858449))

(assert (=> d!994410 m!3858445))

(assert (=> b!3457862 m!3858441))

(declare-fun m!3858451 () Bool)

(assert (=> b!3457864 m!3858451))

(declare-fun m!3858453 () Bool)

(assert (=> b!3457864 m!3858453))

(declare-fun m!3858455 () Bool)

(assert (=> b!3457864 m!3858455))

(declare-fun m!3858457 () Bool)

(assert (=> b!3457864 m!3858457))

(assert (=> b!3457864 m!3858455))

(assert (=> b!3457864 m!3858453))

(declare-fun m!3858459 () Bool)

(assert (=> b!3457864 m!3858459))

(declare-fun m!3858461 () Bool)

(assert (=> b!3457864 m!3858461))

(declare-fun m!3858463 () Bool)

(assert (=> b!3457864 m!3858463))

(assert (=> b!3457864 m!3858451))

(declare-fun m!3858465 () Bool)

(assert (=> b!3457864 m!3858465))

(assert (=> b!3457864 m!3858437))

(declare-fun m!3858467 () Bool)

(assert (=> b!3457864 m!3858467))

(declare-fun m!3858469 () Bool)

(assert (=> b!3457864 m!3858469))

(assert (=> b!3457864 m!3858463))

(assert (=> b!3457864 m!3858469))

(declare-fun m!3858471 () Bool)

(assert (=> b!3457864 m!3858471))

(declare-fun m!3858473 () Bool)

(assert (=> b!3457864 m!3858473))

(assert (=> b!3457645 d!994410))

(declare-fun d!994412 () Bool)

(declare-fun list!13527 (Conc!11249) List!37281)

(assert (=> d!994412 (= (list!13524 lt!1174827) (list!13527 (c!591766 lt!1174827)))))

(declare-fun bs!560149 () Bool)

(assert (= bs!560149 d!994412))

(declare-fun m!3858475 () Bool)

(assert (=> bs!560149 m!3858475))

(assert (=> b!3457645 d!994412))

(declare-fun d!994414 () Bool)

(declare-fun e!2142340 () Bool)

(assert (=> d!994414 e!2142340))

(declare-fun res!1395126 () Bool)

(assert (=> d!994414 (=> (not res!1395126) (not e!2142340))))

(declare-fun lt!1175003 () BalanceConc!22114)

(assert (=> d!994414 (= res!1395126 (= (list!13526 lt!1175003) (Cons!37159 (h!42579 tokens!494) Nil!37159)))))

(declare-fun singleton!1119 (Token!10240) BalanceConc!22114)

(assert (=> d!994414 (= lt!1175003 (singleton!1119 (h!42579 tokens!494)))))

(assert (=> d!994414 (= (singletonSeq!2533 (h!42579 tokens!494)) lt!1175003)))

(declare-fun b!3457867 () Bool)

(declare-fun isBalanced!3412 (Conc!11250) Bool)

(assert (=> b!3457867 (= e!2142340 (isBalanced!3412 (c!591767 lt!1175003)))))

(assert (= (and d!994414 res!1395126) b!3457867))

(declare-fun m!3858477 () Bool)

(assert (=> d!994414 m!3858477))

(declare-fun m!3858479 () Bool)

(assert (=> d!994414 m!3858479))

(declare-fun m!3858481 () Bool)

(assert (=> b!3457867 m!3858481))

(assert (=> b!3457645 d!994414))

(declare-fun d!994416 () Bool)

(declare-fun c!591785 () Bool)

(assert (=> d!994416 (= c!591785 (is-Cons!37159 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))

(declare-fun e!2142343 () List!37281)

(assert (=> d!994416 (= (printList!1574 thiss!18206 (Cons!37159 (h!42579 tokens!494) Nil!37159)) e!2142343)))

(declare-fun b!3457872 () Bool)

(assert (=> b!3457872 (= e!2142343 (++!9156 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))) (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))))

(declare-fun b!3457873 () Bool)

(assert (=> b!3457873 (= e!2142343 Nil!37157)))

(assert (= (and d!994416 c!591785) b!3457872))

(assert (= (and d!994416 (not c!591785)) b!3457873))

(declare-fun m!3858483 () Bool)

(assert (=> b!3457872 m!3858483))

(assert (=> b!3457872 m!3858483))

(declare-fun m!3858485 () Bool)

(assert (=> b!3457872 m!3858485))

(declare-fun m!3858487 () Bool)

(assert (=> b!3457872 m!3858487))

(assert (=> b!3457872 m!3858485))

(assert (=> b!3457872 m!3858487))

(declare-fun m!3858489 () Bool)

(assert (=> b!3457872 m!3858489))

(assert (=> b!3457645 d!994416))

(declare-fun d!994418 () Bool)

(declare-fun lt!1175009 () Bool)

(declare-fun e!2142348 () Bool)

(assert (=> d!994418 (= lt!1175009 e!2142348)))

(declare-fun res!1395135 () Bool)

(assert (=> d!994418 (=> (not res!1395135) (not e!2142348))))

(assert (=> d!994418 (= res!1395135 (= (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)))))) (list!13526 (singletonSeq!2533 (h!42579 tokens!494)))))))

(declare-fun e!2142349 () Bool)

(assert (=> d!994418 (= lt!1175009 e!2142349)))

(declare-fun res!1395133 () Bool)

(assert (=> d!994418 (=> (not res!1395133) (not e!2142349))))

(declare-fun lt!1175008 () tuple2!36872)

(assert (=> d!994418 (= res!1395133 (= (size!28183 (_1!21570 lt!1175008)) 1))))

(assert (=> d!994418 (= lt!1175008 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)))))))

(assert (=> d!994418 (not (isEmpty!21506 rules!2135))))

(assert (=> d!994418 (= (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 tokens!494)) lt!1175009)))

(declare-fun b!3457880 () Bool)

(declare-fun res!1395134 () Bool)

(assert (=> b!3457880 (=> (not res!1395134) (not e!2142349))))

(assert (=> b!3457880 (= res!1395134 (= (apply!8744 (_1!21570 lt!1175008) 0) (h!42579 tokens!494)))))

(declare-fun b!3457881 () Bool)

(assert (=> b!3457881 (= e!2142349 (isEmpty!21504 (_2!21570 lt!1175008)))))

(declare-fun b!3457882 () Bool)

(assert (=> b!3457882 (= e!2142348 (isEmpty!21504 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)))))))))

(assert (= (and d!994418 res!1395133) b!3457880))

(assert (= (and b!3457880 res!1395134) b!3457881))

(assert (= (and d!994418 res!1395135) b!3457882))

(declare-fun m!3858491 () Bool)

(assert (=> d!994418 m!3858491))

(declare-fun m!3858493 () Bool)

(assert (=> d!994418 m!3858493))

(assert (=> d!994418 m!3858085))

(assert (=> d!994418 m!3858491))

(declare-fun m!3858495 () Bool)

(assert (=> d!994418 m!3858495))

(assert (=> d!994418 m!3858059))

(assert (=> d!994418 m!3858085))

(declare-fun m!3858497 () Bool)

(assert (=> d!994418 m!3858497))

(assert (=> d!994418 m!3858085))

(declare-fun m!3858499 () Bool)

(assert (=> d!994418 m!3858499))

(declare-fun m!3858501 () Bool)

(assert (=> b!3457880 m!3858501))

(declare-fun m!3858503 () Bool)

(assert (=> b!3457881 m!3858503))

(assert (=> b!3457882 m!3858085))

(assert (=> b!3457882 m!3858085))

(assert (=> b!3457882 m!3858491))

(assert (=> b!3457882 m!3858491))

(assert (=> b!3457882 m!3858493))

(declare-fun m!3858505 () Bool)

(assert (=> b!3457882 m!3858505))

(assert (=> b!3457666 d!994418))

(declare-fun d!994422 () Bool)

(declare-fun res!1395140 () Bool)

(declare-fun e!2142352 () Bool)

(assert (=> d!994422 (=> (not res!1395140) (not e!2142352))))

(assert (=> d!994422 (= res!1395140 (not (isEmpty!21510 (originalCharacters!6151 separatorToken!241))))))

(assert (=> d!994422 (= (inv!50326 separatorToken!241) e!2142352)))

(declare-fun b!3457887 () Bool)

(declare-fun res!1395141 () Bool)

(assert (=> b!3457887 (=> (not res!1395141) (not e!2142352))))

(declare-fun dynLambda!15652 (Int TokenValue!5667) BalanceConc!22112)

(assert (=> b!3457887 (= res!1395141 (= (originalCharacters!6151 separatorToken!241) (list!13524 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))))))

(declare-fun b!3457888 () Bool)

(assert (=> b!3457888 (= e!2142352 (= (size!28182 separatorToken!241) (size!28184 (originalCharacters!6151 separatorToken!241))))))

(assert (= (and d!994422 res!1395140) b!3457887))

(assert (= (and b!3457887 res!1395141) b!3457888))

(declare-fun b_lambda!99477 () Bool)

(assert (=> (not b_lambda!99477) (not b!3457887)))

(declare-fun t!272544 () Bool)

(declare-fun tb!188279 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) t!272544) tb!188279))

(declare-fun b!3457893 () Bool)

(declare-fun e!2142355 () Bool)

(declare-fun tp!1077779 () Bool)

(declare-fun inv!50329 (Conc!11249) Bool)

(assert (=> b!3457893 (= e!2142355 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))) tp!1077779))))

(declare-fun result!232240 () Bool)

(declare-fun inv!50330 (BalanceConc!22112) Bool)

(assert (=> tb!188279 (= result!232240 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))) e!2142355))))

(assert (= tb!188279 b!3457893))

(declare-fun m!3858507 () Bool)

(assert (=> b!3457893 m!3858507))

(declare-fun m!3858509 () Bool)

(assert (=> tb!188279 m!3858509))

(assert (=> b!3457887 t!272544))

(declare-fun b_and!243095 () Bool)

(assert (= b_and!243073 (and (=> t!272544 result!232240) b_and!243095)))

(declare-fun t!272546 () Bool)

(declare-fun tb!188281 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) t!272546) tb!188281))

(declare-fun result!232244 () Bool)

(assert (= result!232244 result!232240))

(assert (=> b!3457887 t!272546))

(declare-fun b_and!243097 () Bool)

(assert (= b_and!243077 (and (=> t!272546 result!232244) b_and!243097)))

(declare-fun t!272548 () Bool)

(declare-fun tb!188283 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) t!272548) tb!188283))

(declare-fun result!232246 () Bool)

(assert (= result!232246 result!232240))

(assert (=> b!3457887 t!272548))

(declare-fun b_and!243099 () Bool)

(assert (= b_and!243081 (and (=> t!272548 result!232246) b_and!243099)))

(declare-fun m!3858511 () Bool)

(assert (=> d!994422 m!3858511))

(declare-fun m!3858513 () Bool)

(assert (=> b!3457887 m!3858513))

(assert (=> b!3457887 m!3858513))

(declare-fun m!3858515 () Bool)

(assert (=> b!3457887 m!3858515))

(declare-fun m!3858517 () Bool)

(assert (=> b!3457888 m!3858517))

(assert (=> start!321588 d!994422))

(declare-fun d!994424 () Bool)

(assert (=> d!994424 (= (isEmpty!21506 rules!2135) (is-Nil!37158 rules!2135))))

(assert (=> b!3457665 d!994424))

(declare-fun d!994426 () Bool)

(declare-fun lt!1175011 () Bool)

(declare-fun e!2142356 () Bool)

(assert (=> d!994426 (= lt!1175011 e!2142356)))

(declare-fun res!1395144 () Bool)

(assert (=> d!994426 (=> (not res!1395144) (not e!2142356))))

(assert (=> d!994426 (= res!1395144 (= (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241))))) (list!13526 (singletonSeq!2533 separatorToken!241))))))

(declare-fun e!2142357 () Bool)

(assert (=> d!994426 (= lt!1175011 e!2142357)))

(declare-fun res!1395142 () Bool)

(assert (=> d!994426 (=> (not res!1395142) (not e!2142357))))

(declare-fun lt!1175010 () tuple2!36872)

(assert (=> d!994426 (= res!1395142 (= (size!28183 (_1!21570 lt!1175010)) 1))))

(assert (=> d!994426 (= lt!1175010 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241))))))

(assert (=> d!994426 (not (isEmpty!21506 rules!2135))))

(assert (=> d!994426 (= (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 separatorToken!241) lt!1175011)))

(declare-fun b!3457894 () Bool)

(declare-fun res!1395143 () Bool)

(assert (=> b!3457894 (=> (not res!1395143) (not e!2142357))))

(assert (=> b!3457894 (= res!1395143 (= (apply!8744 (_1!21570 lt!1175010) 0) separatorToken!241))))

(declare-fun b!3457895 () Bool)

(assert (=> b!3457895 (= e!2142357 (isEmpty!21504 (_2!21570 lt!1175010)))))

(declare-fun b!3457896 () Bool)

(assert (=> b!3457896 (= e!2142356 (isEmpty!21504 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241))))))))

(assert (= (and d!994426 res!1395142) b!3457894))

(assert (= (and b!3457894 res!1395143) b!3457895))

(assert (= (and d!994426 res!1395144) b!3457896))

(declare-fun m!3858519 () Bool)

(assert (=> d!994426 m!3858519))

(declare-fun m!3858521 () Bool)

(assert (=> d!994426 m!3858521))

(assert (=> d!994426 m!3858131))

(assert (=> d!994426 m!3858519))

(declare-fun m!3858523 () Bool)

(assert (=> d!994426 m!3858523))

(assert (=> d!994426 m!3858059))

(assert (=> d!994426 m!3858131))

(declare-fun m!3858525 () Bool)

(assert (=> d!994426 m!3858525))

(assert (=> d!994426 m!3858131))

(declare-fun m!3858527 () Bool)

(assert (=> d!994426 m!3858527))

(declare-fun m!3858529 () Bool)

(assert (=> b!3457894 m!3858529))

(declare-fun m!3858531 () Bool)

(assert (=> b!3457895 m!3858531))

(assert (=> b!3457896 m!3858131))

(assert (=> b!3457896 m!3858131))

(assert (=> b!3457896 m!3858519))

(assert (=> b!3457896 m!3858519))

(assert (=> b!3457896 m!3858521))

(declare-fun m!3858533 () Bool)

(assert (=> b!3457896 m!3858533))

(assert (=> b!3457669 d!994426))

(declare-fun b!3457925 () Bool)

(declare-fun e!2142374 () Bool)

(declare-fun e!2142377 () Bool)

(assert (=> b!3457925 (= e!2142374 e!2142377)))

(declare-fun res!1395163 () Bool)

(assert (=> b!3457925 (=> (not res!1395163) (not e!2142377))))

(declare-fun lt!1175014 () Bool)

(assert (=> b!3457925 (= res!1395163 (not lt!1175014))))

(declare-fun b!3457926 () Bool)

(declare-fun e!2142373 () Bool)

(declare-fun call!249353 () Bool)

(assert (=> b!3457926 (= e!2142373 (= lt!1175014 call!249353))))

(declare-fun b!3457927 () Bool)

(declare-fun res!1395168 () Bool)

(assert (=> b!3457927 (=> res!1395168 e!2142374)))

(declare-fun e!2142375 () Bool)

(assert (=> b!3457927 (= res!1395168 e!2142375)))

(declare-fun res!1395164 () Bool)

(assert (=> b!3457927 (=> (not res!1395164) (not e!2142375))))

(assert (=> b!3457927 (= res!1395164 lt!1175014)))

(declare-fun b!3457928 () Bool)

(declare-fun e!2142378 () Bool)

(assert (=> b!3457928 (= e!2142377 e!2142378)))

(declare-fun res!1395161 () Bool)

(assert (=> b!3457928 (=> res!1395161 e!2142378)))

(assert (=> b!3457928 (= res!1395161 call!249353)))

(declare-fun b!3457929 () Bool)

(declare-fun e!2142376 () Bool)

(declare-fun nullable!3487 (Regex!10196) Bool)

(assert (=> b!3457929 (= e!2142376 (nullable!3487 (regex!5437 lt!1174826)))))

(declare-fun d!994428 () Bool)

(assert (=> d!994428 e!2142373))

(declare-fun c!591794 () Bool)

(assert (=> d!994428 (= c!591794 (is-EmptyExpr!10196 (regex!5437 lt!1174826)))))

(assert (=> d!994428 (= lt!1175014 e!2142376)))

(declare-fun c!591793 () Bool)

(assert (=> d!994428 (= c!591793 (isEmpty!21510 lt!1174848))))

(declare-fun validRegex!4643 (Regex!10196) Bool)

(assert (=> d!994428 (validRegex!4643 (regex!5437 lt!1174826))))

(assert (=> d!994428 (= (matchR!4780 (regex!5437 lt!1174826) lt!1174848) lt!1175014)))

(declare-fun b!3457930 () Bool)

(declare-fun res!1395167 () Bool)

(assert (=> b!3457930 (=> (not res!1395167) (not e!2142375))))

(declare-fun tail!5431 (List!37281) List!37281)

(assert (=> b!3457930 (= res!1395167 (isEmpty!21510 (tail!5431 lt!1174848)))))

(declare-fun b!3457931 () Bool)

(assert (=> b!3457931 (= e!2142378 (not (= (head!7316 lt!1174848) (c!591765 (regex!5437 lt!1174826)))))))

(declare-fun b!3457932 () Bool)

(declare-fun derivativeStep!3040 (Regex!10196 C!20578) Regex!10196)

(assert (=> b!3457932 (= e!2142376 (matchR!4780 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848)) (tail!5431 lt!1174848)))))

(declare-fun b!3457933 () Bool)

(declare-fun e!2142372 () Bool)

(assert (=> b!3457933 (= e!2142372 (not lt!1175014))))

(declare-fun b!3457934 () Bool)

(declare-fun res!1395166 () Bool)

(assert (=> b!3457934 (=> (not res!1395166) (not e!2142375))))

(assert (=> b!3457934 (= res!1395166 (not call!249353))))

(declare-fun b!3457935 () Bool)

(declare-fun res!1395165 () Bool)

(assert (=> b!3457935 (=> res!1395165 e!2142378)))

(assert (=> b!3457935 (= res!1395165 (not (isEmpty!21510 (tail!5431 lt!1174848))))))

(declare-fun b!3457936 () Bool)

(declare-fun res!1395162 () Bool)

(assert (=> b!3457936 (=> res!1395162 e!2142374)))

(assert (=> b!3457936 (= res!1395162 (not (is-ElementMatch!10196 (regex!5437 lt!1174826))))))

(assert (=> b!3457936 (= e!2142372 e!2142374)))

(declare-fun bm!249348 () Bool)

(assert (=> bm!249348 (= call!249353 (isEmpty!21510 lt!1174848))))

(declare-fun b!3457937 () Bool)

(assert (=> b!3457937 (= e!2142373 e!2142372)))

(declare-fun c!591792 () Bool)

(assert (=> b!3457937 (= c!591792 (is-EmptyLang!10196 (regex!5437 lt!1174826)))))

(declare-fun b!3457938 () Bool)

(assert (=> b!3457938 (= e!2142375 (= (head!7316 lt!1174848) (c!591765 (regex!5437 lt!1174826))))))

(assert (= (and d!994428 c!591793) b!3457929))

(assert (= (and d!994428 (not c!591793)) b!3457932))

(assert (= (and d!994428 c!591794) b!3457926))

(assert (= (and d!994428 (not c!591794)) b!3457937))

(assert (= (and b!3457937 c!591792) b!3457933))

(assert (= (and b!3457937 (not c!591792)) b!3457936))

(assert (= (and b!3457936 (not res!1395162)) b!3457927))

(assert (= (and b!3457927 res!1395164) b!3457934))

(assert (= (and b!3457934 res!1395166) b!3457930))

(assert (= (and b!3457930 res!1395167) b!3457938))

(assert (= (and b!3457927 (not res!1395168)) b!3457925))

(assert (= (and b!3457925 res!1395163) b!3457928))

(assert (= (and b!3457928 (not res!1395161)) b!3457935))

(assert (= (and b!3457935 (not res!1395165)) b!3457931))

(assert (= (or b!3457926 b!3457928 b!3457934) bm!249348))

(assert (=> b!3457932 m!3858139))

(assert (=> b!3457932 m!3858139))

(declare-fun m!3858535 () Bool)

(assert (=> b!3457932 m!3858535))

(declare-fun m!3858537 () Bool)

(assert (=> b!3457932 m!3858537))

(assert (=> b!3457932 m!3858535))

(assert (=> b!3457932 m!3858537))

(declare-fun m!3858539 () Bool)

(assert (=> b!3457932 m!3858539))

(declare-fun m!3858541 () Bool)

(assert (=> b!3457929 m!3858541))

(declare-fun m!3858543 () Bool)

(assert (=> d!994428 m!3858543))

(declare-fun m!3858545 () Bool)

(assert (=> d!994428 m!3858545))

(assert (=> bm!249348 m!3858543))

(assert (=> b!3457935 m!3858537))

(assert (=> b!3457935 m!3858537))

(declare-fun m!3858547 () Bool)

(assert (=> b!3457935 m!3858547))

(assert (=> b!3457931 m!3858139))

(assert (=> b!3457930 m!3858537))

(assert (=> b!3457930 m!3858537))

(assert (=> b!3457930 m!3858547))

(assert (=> b!3457938 m!3858139))

(assert (=> b!3457646 d!994428))

(declare-fun d!994430 () Bool)

(assert (=> d!994430 (= (get!11891 lt!1174853) (v!36836 lt!1174853))))

(assert (=> b!3457646 d!994430))

(declare-fun d!994432 () Bool)

(declare-fun lt!1175015 () Bool)

(assert (=> d!994432 (= lt!1175015 (isEmpty!21510 (list!13524 (_2!21570 lt!1174825))))))

(assert (=> d!994432 (= lt!1175015 (isEmpty!21511 (c!591766 (_2!21570 lt!1174825))))))

(assert (=> d!994432 (= (isEmpty!21504 (_2!21570 lt!1174825)) lt!1175015)))

(declare-fun bs!560150 () Bool)

(assert (= bs!560150 d!994432))

(declare-fun m!3858549 () Bool)

(assert (=> bs!560150 m!3858549))

(assert (=> bs!560150 m!3858549))

(declare-fun m!3858551 () Bool)

(assert (=> bs!560150 m!3858551))

(declare-fun m!3858553 () Bool)

(assert (=> bs!560150 m!3858553))

(assert (=> b!3457647 d!994432))

(declare-fun b!3457949 () Bool)

(declare-fun e!2142386 () Bool)

(declare-fun inv!15 (TokenValue!5667) Bool)

(assert (=> b!3457949 (= e!2142386 (inv!15 (value!175416 (h!42579 tokens!494))))))

(declare-fun d!994434 () Bool)

(declare-fun c!591799 () Bool)

(assert (=> d!994434 (= c!591799 (is-IntegerValue!17001 (value!175416 (h!42579 tokens!494))))))

(declare-fun e!2142387 () Bool)

(assert (=> d!994434 (= (inv!21 (value!175416 (h!42579 tokens!494))) e!2142387)))

(declare-fun b!3457950 () Bool)

(declare-fun e!2142385 () Bool)

(assert (=> b!3457950 (= e!2142387 e!2142385)))

(declare-fun c!591800 () Bool)

(assert (=> b!3457950 (= c!591800 (is-IntegerValue!17002 (value!175416 (h!42579 tokens!494))))))

(declare-fun b!3457951 () Bool)

(declare-fun inv!16 (TokenValue!5667) Bool)

(assert (=> b!3457951 (= e!2142387 (inv!16 (value!175416 (h!42579 tokens!494))))))

(declare-fun b!3457952 () Bool)

(declare-fun inv!17 (TokenValue!5667) Bool)

(assert (=> b!3457952 (= e!2142385 (inv!17 (value!175416 (h!42579 tokens!494))))))

(declare-fun b!3457953 () Bool)

(declare-fun res!1395171 () Bool)

(assert (=> b!3457953 (=> res!1395171 e!2142386)))

(assert (=> b!3457953 (= res!1395171 (not (is-IntegerValue!17003 (value!175416 (h!42579 tokens!494)))))))

(assert (=> b!3457953 (= e!2142385 e!2142386)))

(assert (= (and d!994434 c!591799) b!3457951))

(assert (= (and d!994434 (not c!591799)) b!3457950))

(assert (= (and b!3457950 c!591800) b!3457952))

(assert (= (and b!3457950 (not c!591800)) b!3457953))

(assert (= (and b!3457953 (not res!1395171)) b!3457949))

(declare-fun m!3858555 () Bool)

(assert (=> b!3457949 m!3858555))

(declare-fun m!3858557 () Bool)

(assert (=> b!3457951 m!3858557))

(declare-fun m!3858559 () Bool)

(assert (=> b!3457952 m!3858559))

(assert (=> b!3457668 d!994434))

(declare-fun d!994436 () Bool)

(declare-fun isEmpty!21512 (Option!7522) Bool)

(assert (=> d!994436 (= (isDefined!5791 (maxPrefix!2566 thiss!18206 rules!2135 lt!1174846)) (not (isEmpty!21512 (maxPrefix!2566 thiss!18206 rules!2135 lt!1174846))))))

(declare-fun bs!560151 () Bool)

(assert (= bs!560151 d!994436))

(assert (=> bs!560151 m!3858179))

(declare-fun m!3858561 () Bool)

(assert (=> bs!560151 m!3858561))

(assert (=> b!3457651 d!994436))

(declare-fun b!3457972 () Bool)

(declare-fun e!2142394 () Bool)

(declare-fun e!2142396 () Bool)

(assert (=> b!3457972 (= e!2142394 e!2142396)))

(declare-fun res!1395187 () Bool)

(assert (=> b!3457972 (=> (not res!1395187) (not e!2142396))))

(declare-fun lt!1175029 () Option!7522)

(assert (=> b!3457972 (= res!1395187 (isDefined!5791 lt!1175029))))

(declare-fun b!3457973 () Bool)

(declare-fun e!2142395 () Option!7522)

(declare-fun lt!1175028 () Option!7522)

(declare-fun lt!1175027 () Option!7522)

(assert (=> b!3457973 (= e!2142395 (ite (and (is-None!7521 lt!1175028) (is-None!7521 lt!1175027)) None!7521 (ite (is-None!7521 lt!1175027) lt!1175028 (ite (is-None!7521 lt!1175028) lt!1175027 (ite (>= (size!28182 (_1!21571 (v!36837 lt!1175028))) (size!28182 (_1!21571 (v!36837 lt!1175027)))) lt!1175028 lt!1175027)))))))

(declare-fun call!249356 () Option!7522)

(assert (=> b!3457973 (= lt!1175028 call!249356)))

(assert (=> b!3457973 (= lt!1175027 (maxPrefix!2566 thiss!18206 (t!272529 rules!2135) lt!1174846))))

(declare-fun bm!249351 () Bool)

(assert (=> bm!249351 (= call!249356 (maxPrefixOneRule!1733 thiss!18206 (h!42578 rules!2135) lt!1174846))))

(declare-fun b!3457974 () Bool)

(declare-fun res!1395186 () Bool)

(assert (=> b!3457974 (=> (not res!1395186) (not e!2142396))))

(declare-fun get!11893 (Option!7522) tuple2!36874)

(assert (=> b!3457974 (= res!1395186 (= (value!175416 (_1!21571 (get!11893 lt!1175029))) (apply!8745 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029)))))))))

(declare-fun b!3457975 () Bool)

(declare-fun res!1395189 () Bool)

(assert (=> b!3457975 (=> (not res!1395189) (not e!2142396))))

(assert (=> b!3457975 (= res!1395189 (= (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))) (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029)))))))

(declare-fun b!3457976 () Bool)

(declare-fun res!1395191 () Bool)

(assert (=> b!3457976 (=> (not res!1395191) (not e!2142396))))

(assert (=> b!3457976 (= res!1395191 (matchR!4780 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))) (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))))))

(declare-fun d!994438 () Bool)

(assert (=> d!994438 e!2142394))

(declare-fun res!1395190 () Bool)

(assert (=> d!994438 (=> res!1395190 e!2142394)))

(assert (=> d!994438 (= res!1395190 (isEmpty!21512 lt!1175029))))

(assert (=> d!994438 (= lt!1175029 e!2142395)))

(declare-fun c!591803 () Bool)

(assert (=> d!994438 (= c!591803 (and (is-Cons!37158 rules!2135) (is-Nil!37158 (t!272529 rules!2135))))))

(declare-fun lt!1175026 () Unit!52487)

(declare-fun lt!1175030 () Unit!52487)

(assert (=> d!994438 (= lt!1175026 lt!1175030)))

(declare-fun isPrefix!2843 (List!37281 List!37281) Bool)

(assert (=> d!994438 (isPrefix!2843 lt!1174846 lt!1174846)))

(declare-fun lemmaIsPrefixRefl!1802 (List!37281 List!37281) Unit!52487)

(assert (=> d!994438 (= lt!1175030 (lemmaIsPrefixRefl!1802 lt!1174846 lt!1174846))))

(declare-fun rulesValidInductive!1852 (LexerInterface!5026 List!37282) Bool)

(assert (=> d!994438 (rulesValidInductive!1852 thiss!18206 rules!2135)))

(assert (=> d!994438 (= (maxPrefix!2566 thiss!18206 rules!2135 lt!1174846) lt!1175029)))

(declare-fun b!3457977 () Bool)

(assert (=> b!3457977 (= e!2142396 (contains!6885 rules!2135 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))))

(declare-fun b!3457978 () Bool)

(declare-fun res!1395192 () Bool)

(assert (=> b!3457978 (=> (not res!1395192) (not e!2142396))))

(assert (=> b!3457978 (= res!1395192 (< (size!28184 (_2!21571 (get!11893 lt!1175029))) (size!28184 lt!1174846)))))

(declare-fun b!3457979 () Bool)

(assert (=> b!3457979 (= e!2142395 call!249356)))

(declare-fun b!3457980 () Bool)

(declare-fun res!1395188 () Bool)

(assert (=> b!3457980 (=> (not res!1395188) (not e!2142396))))

(assert (=> b!3457980 (= res!1395188 (= (++!9156 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))) (_2!21571 (get!11893 lt!1175029))) lt!1174846))))

(assert (= (and d!994438 c!591803) b!3457979))

(assert (= (and d!994438 (not c!591803)) b!3457973))

(assert (= (or b!3457979 b!3457973) bm!249351))

(assert (= (and d!994438 (not res!1395190)) b!3457972))

(assert (= (and b!3457972 res!1395187) b!3457975))

(assert (= (and b!3457975 res!1395189) b!3457978))

(assert (= (and b!3457978 res!1395192) b!3457980))

(assert (= (and b!3457980 res!1395188) b!3457974))

(assert (= (and b!3457974 res!1395186) b!3457976))

(assert (= (and b!3457976 res!1395191) b!3457977))

(declare-fun m!3858563 () Bool)

(assert (=> d!994438 m!3858563))

(declare-fun m!3858565 () Bool)

(assert (=> d!994438 m!3858565))

(declare-fun m!3858567 () Bool)

(assert (=> d!994438 m!3858567))

(declare-fun m!3858569 () Bool)

(assert (=> d!994438 m!3858569))

(declare-fun m!3858571 () Bool)

(assert (=> bm!249351 m!3858571))

(declare-fun m!3858573 () Bool)

(assert (=> b!3457973 m!3858573))

(declare-fun m!3858575 () Bool)

(assert (=> b!3457976 m!3858575))

(declare-fun m!3858577 () Bool)

(assert (=> b!3457976 m!3858577))

(assert (=> b!3457976 m!3858577))

(declare-fun m!3858579 () Bool)

(assert (=> b!3457976 m!3858579))

(assert (=> b!3457976 m!3858579))

(declare-fun m!3858581 () Bool)

(assert (=> b!3457976 m!3858581))

(assert (=> b!3457980 m!3858575))

(assert (=> b!3457980 m!3858577))

(assert (=> b!3457980 m!3858577))

(assert (=> b!3457980 m!3858579))

(assert (=> b!3457980 m!3858579))

(declare-fun m!3858583 () Bool)

(assert (=> b!3457980 m!3858583))

(assert (=> b!3457975 m!3858575))

(assert (=> b!3457975 m!3858577))

(assert (=> b!3457975 m!3858577))

(assert (=> b!3457975 m!3858579))

(assert (=> b!3457974 m!3858575))

(declare-fun m!3858585 () Bool)

(assert (=> b!3457974 m!3858585))

(assert (=> b!3457974 m!3858585))

(declare-fun m!3858587 () Bool)

(assert (=> b!3457974 m!3858587))

(declare-fun m!3858589 () Bool)

(assert (=> b!3457972 m!3858589))

(assert (=> b!3457977 m!3858575))

(declare-fun m!3858591 () Bool)

(assert (=> b!3457977 m!3858591))

(assert (=> b!3457978 m!3858575))

(declare-fun m!3858593 () Bool)

(assert (=> b!3457978 m!3858593))

(assert (=> b!3457978 m!3858103))

(assert (=> b!3457651 d!994438))

(declare-fun d!994440 () Bool)

(assert (=> d!994440 (not (matchR!4780 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848))))

(declare-fun lt!1175033 () Unit!52487)

(declare-fun choose!19991 (Regex!10196 List!37281 C!20578) Unit!52487)

(assert (=> d!994440 (= lt!1175033 (choose!19991 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848 lt!1174844))))

(assert (=> d!994440 (validRegex!4643 (regex!5437 (rule!8027 separatorToken!241)))))

(assert (=> d!994440 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!495 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848 lt!1174844) lt!1175033)))

(declare-fun bs!560152 () Bool)

(assert (= bs!560152 d!994440))

(assert (=> bs!560152 m!3858175))

(declare-fun m!3858595 () Bool)

(assert (=> bs!560152 m!3858595))

(declare-fun m!3858597 () Bool)

(assert (=> bs!560152 m!3858597))

(assert (=> b!3457649 d!994440))

(declare-fun b!3457981 () Bool)

(declare-fun e!2142399 () Bool)

(declare-fun e!2142402 () Bool)

(assert (=> b!3457981 (= e!2142399 e!2142402)))

(declare-fun res!1395195 () Bool)

(assert (=> b!3457981 (=> (not res!1395195) (not e!2142402))))

(declare-fun lt!1175034 () Bool)

(assert (=> b!3457981 (= res!1395195 (not lt!1175034))))

(declare-fun b!3457982 () Bool)

(declare-fun e!2142398 () Bool)

(declare-fun call!249357 () Bool)

(assert (=> b!3457982 (= e!2142398 (= lt!1175034 call!249357))))

(declare-fun b!3457983 () Bool)

(declare-fun res!1395200 () Bool)

(assert (=> b!3457983 (=> res!1395200 e!2142399)))

(declare-fun e!2142400 () Bool)

(assert (=> b!3457983 (= res!1395200 e!2142400)))

(declare-fun res!1395196 () Bool)

(assert (=> b!3457983 (=> (not res!1395196) (not e!2142400))))

(assert (=> b!3457983 (= res!1395196 lt!1175034)))

(declare-fun b!3457984 () Bool)

(declare-fun e!2142403 () Bool)

(assert (=> b!3457984 (= e!2142402 e!2142403)))

(declare-fun res!1395193 () Bool)

(assert (=> b!3457984 (=> res!1395193 e!2142403)))

(assert (=> b!3457984 (= res!1395193 call!249357)))

(declare-fun b!3457985 () Bool)

(declare-fun e!2142401 () Bool)

(assert (=> b!3457985 (= e!2142401 (nullable!3487 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun d!994442 () Bool)

(assert (=> d!994442 e!2142398))

(declare-fun c!591807 () Bool)

(assert (=> d!994442 (= c!591807 (is-EmptyExpr!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(assert (=> d!994442 (= lt!1175034 e!2142401)))

(declare-fun c!591806 () Bool)

(assert (=> d!994442 (= c!591806 (isEmpty!21510 lt!1174848))))

(assert (=> d!994442 (validRegex!4643 (regex!5437 (rule!8027 separatorToken!241)))))

(assert (=> d!994442 (= (matchR!4780 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848) lt!1175034)))

(declare-fun b!3457986 () Bool)

(declare-fun res!1395199 () Bool)

(assert (=> b!3457986 (=> (not res!1395199) (not e!2142400))))

(assert (=> b!3457986 (= res!1395199 (isEmpty!21510 (tail!5431 lt!1174848)))))

(declare-fun b!3457987 () Bool)

(assert (=> b!3457987 (= e!2142403 (not (= (head!7316 lt!1174848) (c!591765 (regex!5437 (rule!8027 separatorToken!241))))))))

(declare-fun b!3457988 () Bool)

(assert (=> b!3457988 (= e!2142401 (matchR!4780 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848)) (tail!5431 lt!1174848)))))

(declare-fun b!3457989 () Bool)

(declare-fun e!2142397 () Bool)

(assert (=> b!3457989 (= e!2142397 (not lt!1175034))))

(declare-fun b!3457990 () Bool)

(declare-fun res!1395198 () Bool)

(assert (=> b!3457990 (=> (not res!1395198) (not e!2142400))))

(assert (=> b!3457990 (= res!1395198 (not call!249357))))

(declare-fun b!3457991 () Bool)

(declare-fun res!1395197 () Bool)

(assert (=> b!3457991 (=> res!1395197 e!2142403)))

(assert (=> b!3457991 (= res!1395197 (not (isEmpty!21510 (tail!5431 lt!1174848))))))

(declare-fun b!3457992 () Bool)

(declare-fun res!1395194 () Bool)

(assert (=> b!3457992 (=> res!1395194 e!2142399)))

(assert (=> b!3457992 (= res!1395194 (not (is-ElementMatch!10196 (regex!5437 (rule!8027 separatorToken!241)))))))

(assert (=> b!3457992 (= e!2142397 e!2142399)))

(declare-fun bm!249352 () Bool)

(assert (=> bm!249352 (= call!249357 (isEmpty!21510 lt!1174848))))

(declare-fun b!3457993 () Bool)

(assert (=> b!3457993 (= e!2142398 e!2142397)))

(declare-fun c!591805 () Bool)

(assert (=> b!3457993 (= c!591805 (is-EmptyLang!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun b!3457994 () Bool)

(assert (=> b!3457994 (= e!2142400 (= (head!7316 lt!1174848) (c!591765 (regex!5437 (rule!8027 separatorToken!241)))))))

(assert (= (and d!994442 c!591806) b!3457985))

(assert (= (and d!994442 (not c!591806)) b!3457988))

(assert (= (and d!994442 c!591807) b!3457982))

(assert (= (and d!994442 (not c!591807)) b!3457993))

(assert (= (and b!3457993 c!591805) b!3457989))

(assert (= (and b!3457993 (not c!591805)) b!3457992))

(assert (= (and b!3457992 (not res!1395194)) b!3457983))

(assert (= (and b!3457983 res!1395196) b!3457990))

(assert (= (and b!3457990 res!1395198) b!3457986))

(assert (= (and b!3457986 res!1395199) b!3457994))

(assert (= (and b!3457983 (not res!1395200)) b!3457981))

(assert (= (and b!3457981 res!1395195) b!3457984))

(assert (= (and b!3457984 (not res!1395193)) b!3457991))

(assert (= (and b!3457991 (not res!1395197)) b!3457987))

(assert (= (or b!3457982 b!3457984 b!3457990) bm!249352))

(assert (=> b!3457988 m!3858139))

(assert (=> b!3457988 m!3858139))

(declare-fun m!3858599 () Bool)

(assert (=> b!3457988 m!3858599))

(assert (=> b!3457988 m!3858537))

(assert (=> b!3457988 m!3858599))

(assert (=> b!3457988 m!3858537))

(declare-fun m!3858601 () Bool)

(assert (=> b!3457988 m!3858601))

(declare-fun m!3858603 () Bool)

(assert (=> b!3457985 m!3858603))

(assert (=> d!994442 m!3858543))

(assert (=> d!994442 m!3858597))

(assert (=> bm!249352 m!3858543))

(assert (=> b!3457991 m!3858537))

(assert (=> b!3457991 m!3858537))

(assert (=> b!3457991 m!3858547))

(assert (=> b!3457987 m!3858139))

(assert (=> b!3457986 m!3858537))

(assert (=> b!3457986 m!3858537))

(assert (=> b!3457986 m!3858547))

(assert (=> b!3457994 m!3858139))

(assert (=> b!3457649 d!994442))

(declare-fun d!994444 () Bool)

(declare-fun lt!1175037 () Token!10240)

(assert (=> d!994444 (= lt!1175037 (apply!8748 (list!13526 (_1!21570 lt!1174825)) 0))))

(declare-fun apply!8749 (Conc!11250 Int) Token!10240)

(assert (=> d!994444 (= lt!1175037 (apply!8749 (c!591767 (_1!21570 lt!1174825)) 0))))

(declare-fun e!2142406 () Bool)

(assert (=> d!994444 e!2142406))

(declare-fun res!1395203 () Bool)

(assert (=> d!994444 (=> (not res!1395203) (not e!2142406))))

(assert (=> d!994444 (= res!1395203 (<= 0 0))))

(assert (=> d!994444 (= (apply!8744 (_1!21570 lt!1174825) 0) lt!1175037)))

(declare-fun b!3457997 () Bool)

(assert (=> b!3457997 (= e!2142406 (< 0 (size!28183 (_1!21570 lt!1174825))))))

(assert (= (and d!994444 res!1395203) b!3457997))

(declare-fun m!3858605 () Bool)

(assert (=> d!994444 m!3858605))

(assert (=> d!994444 m!3858605))

(declare-fun m!3858607 () Bool)

(assert (=> d!994444 m!3858607))

(declare-fun m!3858609 () Bool)

(assert (=> d!994444 m!3858609))

(assert (=> b!3457997 m!3858147))

(assert (=> b!3457670 d!994444))

(declare-fun d!994446 () Bool)

(assert (=> d!994446 (= (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13527 (c!591766 (charsOf!3451 (h!42579 tokens!494)))))))

(declare-fun bs!560153 () Bool)

(assert (= bs!560153 d!994446))

(declare-fun m!3858611 () Bool)

(assert (=> bs!560153 m!3858611))

(assert (=> b!3457653 d!994446))

(declare-fun d!994448 () Bool)

(declare-fun lt!1175040 () BalanceConc!22112)

(assert (=> d!994448 (= (list!13524 lt!1175040) (originalCharacters!6151 (h!42579 tokens!494)))))

(assert (=> d!994448 (= lt!1175040 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))))

(assert (=> d!994448 (= (charsOf!3451 (h!42579 tokens!494)) lt!1175040)))

(declare-fun b_lambda!99479 () Bool)

(assert (=> (not b_lambda!99479) (not d!994448)))

(declare-fun t!272550 () Bool)

(declare-fun tb!188285 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272550) tb!188285))

(declare-fun b!3457998 () Bool)

(declare-fun e!2142407 () Bool)

(declare-fun tp!1077780 () Bool)

(assert (=> b!3457998 (= e!2142407 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))) tp!1077780))))

(declare-fun result!232248 () Bool)

(assert (=> tb!188285 (= result!232248 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))) e!2142407))))

(assert (= tb!188285 b!3457998))

(declare-fun m!3858613 () Bool)

(assert (=> b!3457998 m!3858613))

(declare-fun m!3858615 () Bool)

(assert (=> tb!188285 m!3858615))

(assert (=> d!994448 t!272550))

(declare-fun b_and!243101 () Bool)

(assert (= b_and!243095 (and (=> t!272550 result!232248) b_and!243101)))

(declare-fun tb!188287 () Bool)

(declare-fun t!272552 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272552) tb!188287))

(declare-fun result!232250 () Bool)

(assert (= result!232250 result!232248))

(assert (=> d!994448 t!272552))

(declare-fun b_and!243103 () Bool)

(assert (= b_and!243097 (and (=> t!272552 result!232250) b_and!243103)))

(declare-fun t!272554 () Bool)

(declare-fun tb!188289 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272554) tb!188289))

(declare-fun result!232252 () Bool)

(assert (= result!232252 result!232248))

(assert (=> d!994448 t!272554))

(declare-fun b_and!243105 () Bool)

(assert (= b_and!243099 (and (=> t!272554 result!232252) b_and!243105)))

(declare-fun m!3858617 () Bool)

(assert (=> d!994448 m!3858617))

(declare-fun m!3858619 () Bool)

(assert (=> d!994448 m!3858619))

(assert (=> b!3457653 d!994448))

(declare-fun d!994450 () Bool)

(assert (=> d!994450 (= (inv!50322 (tag!6045 (rule!8027 separatorToken!241))) (= (mod (str.len (value!175390 (tag!6045 (rule!8027 separatorToken!241)))) 2) 0))))

(assert (=> b!3457632 d!994450))

(declare-fun d!994452 () Bool)

(declare-fun res!1395206 () Bool)

(declare-fun e!2142410 () Bool)

(assert (=> d!994452 (=> (not res!1395206) (not e!2142410))))

(declare-fun semiInverseModEq!2282 (Int Int) Bool)

(assert (=> d!994452 (= res!1395206 (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241)))))))

(assert (=> d!994452 (= (inv!50325 (transformation!5437 (rule!8027 separatorToken!241))) e!2142410)))

(declare-fun b!3458001 () Bool)

(declare-fun equivClasses!2181 (Int Int) Bool)

(assert (=> b!3458001 (= e!2142410 (equivClasses!2181 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241)))))))

(assert (= (and d!994452 res!1395206) b!3458001))

(declare-fun m!3858621 () Bool)

(assert (=> d!994452 m!3858621))

(declare-fun m!3858623 () Bool)

(assert (=> b!3458001 m!3858623))

(assert (=> b!3457632 d!994452))

(declare-fun bs!560156 () Bool)

(declare-fun d!994454 () Bool)

(assert (= bs!560156 (and d!994454 b!3457664)))

(declare-fun lambda!121792 () Int)

(assert (=> bs!560156 (not (= lambda!121792 lambda!121776))))

(declare-fun bs!560157 () Bool)

(assert (= bs!560157 (and d!994454 b!3457654)))

(assert (=> bs!560157 (= lambda!121792 lambda!121777)))

(declare-fun b!3458042 () Bool)

(declare-fun e!2142436 () Bool)

(assert (=> b!3458042 (= e!2142436 true)))

(declare-fun b!3458041 () Bool)

(declare-fun e!2142435 () Bool)

(assert (=> b!3458041 (= e!2142435 e!2142436)))

(declare-fun b!3458040 () Bool)

(declare-fun e!2142434 () Bool)

(assert (=> b!3458040 (= e!2142434 e!2142435)))

(assert (=> d!994454 e!2142434))

(assert (= b!3458041 b!3458042))

(assert (= b!3458040 b!3458041))

(assert (= (and d!994454 (is-Cons!37158 rules!2135)) b!3458040))

(assert (=> b!3458042 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15646 order!19781 lambda!121792))))

(assert (=> b!3458042 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15646 order!19781 lambda!121792))))

(assert (=> d!994454 true))

(declare-fun e!2142433 () Bool)

(assert (=> d!994454 e!2142433))

(declare-fun res!1395232 () Bool)

(assert (=> d!994454 (=> (not res!1395232) (not e!2142433))))

(declare-fun lt!1175058 () Bool)

(assert (=> d!994454 (= res!1395232 (= lt!1175058 (forall!7916 (list!13526 (seqFromList!3927 tokens!494)) lambda!121792)))))

(declare-fun forall!7918 (BalanceConc!22114 Int) Bool)

(assert (=> d!994454 (= lt!1175058 (forall!7918 (seqFromList!3927 tokens!494) lambda!121792))))

(assert (=> d!994454 (not (isEmpty!21506 rules!2135))))

(assert (=> d!994454 (= (rulesProduceEachTokenIndividually!1477 thiss!18206 rules!2135 (seqFromList!3927 tokens!494)) lt!1175058)))

(declare-fun b!3458039 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1854 (LexerInterface!5026 List!37282 List!37283) Bool)

(assert (=> b!3458039 (= e!2142433 (= lt!1175058 (rulesProduceEachTokenIndividuallyList!1854 thiss!18206 rules!2135 (list!13526 (seqFromList!3927 tokens!494)))))))

(assert (= (and d!994454 res!1395232) b!3458039))

(assert (=> d!994454 m!3858185))

(declare-fun m!3858687 () Bool)

(assert (=> d!994454 m!3858687))

(assert (=> d!994454 m!3858687))

(declare-fun m!3858689 () Bool)

(assert (=> d!994454 m!3858689))

(assert (=> d!994454 m!3858185))

(declare-fun m!3858691 () Bool)

(assert (=> d!994454 m!3858691))

(assert (=> d!994454 m!3858059))

(assert (=> b!3458039 m!3858185))

(assert (=> b!3458039 m!3858687))

(assert (=> b!3458039 m!3858687))

(declare-fun m!3858693 () Bool)

(assert (=> b!3458039 m!3858693))

(assert (=> b!3457631 d!994454))

(declare-fun d!994470 () Bool)

(declare-fun fromListB!1780 (List!37283) BalanceConc!22114)

(assert (=> d!994470 (= (seqFromList!3927 tokens!494) (fromListB!1780 tokens!494))))

(declare-fun bs!560158 () Bool)

(assert (= bs!560158 d!994470))

(declare-fun m!3858695 () Bool)

(assert (=> bs!560158 m!3858695))

(assert (=> b!3457631 d!994470))

(declare-fun b!3458045 () Bool)

(declare-fun res!1395234 () Bool)

(declare-fun e!2142437 () Bool)

(assert (=> b!3458045 (=> (not res!1395234) (not e!2142437))))

(declare-fun lt!1175059 () List!37281)

(assert (=> b!3458045 (= res!1395234 (= (size!28184 lt!1175059) (+ (size!28184 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (size!28184 lt!1174848))))))

(declare-fun d!994472 () Bool)

(assert (=> d!994472 e!2142437))

(declare-fun res!1395233 () Bool)

(assert (=> d!994472 (=> (not res!1395233) (not e!2142437))))

(assert (=> d!994472 (= res!1395233 (= (content!5182 lt!1175059) (set.union (content!5182 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (content!5182 lt!1174848))))))

(declare-fun e!2142438 () List!37281)

(assert (=> d!994472 (= lt!1175059 e!2142438)))

(declare-fun c!591811 () Bool)

(assert (=> d!994472 (= c!591811 (is-Nil!37157 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))

(assert (=> d!994472 (= (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848) lt!1175059)))

(declare-fun b!3458044 () Bool)

(assert (=> b!3458044 (= e!2142438 (Cons!37157 (h!42577 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (++!9156 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) lt!1174848)))))

(declare-fun b!3458046 () Bool)

(assert (=> b!3458046 (= e!2142437 (or (not (= lt!1174848 Nil!37157)) (= lt!1175059 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))))))

(declare-fun b!3458043 () Bool)

(assert (=> b!3458043 (= e!2142438 lt!1174848)))

(assert (= (and d!994472 c!591811) b!3458043))

(assert (= (and d!994472 (not c!591811)) b!3458044))

(assert (= (and d!994472 res!1395233) b!3458045))

(assert (= (and b!3458045 res!1395234) b!3458046))

(declare-fun m!3858697 () Bool)

(assert (=> b!3458045 m!3858697))

(assert (=> b!3458045 m!3858043))

(declare-fun m!3858699 () Bool)

(assert (=> b!3458045 m!3858699))

(assert (=> b!3458045 m!3858427))

(declare-fun m!3858701 () Bool)

(assert (=> d!994472 m!3858701))

(assert (=> d!994472 m!3858043))

(declare-fun m!3858703 () Bool)

(assert (=> d!994472 m!3858703))

(assert (=> d!994472 m!3858431))

(declare-fun m!3858705 () Bool)

(assert (=> b!3458044 m!3858705))

(assert (=> b!3457634 d!994472))

(declare-fun b!3458049 () Bool)

(declare-fun res!1395236 () Bool)

(declare-fun e!2142439 () Bool)

(assert (=> b!3458049 (=> (not res!1395236) (not e!2142439))))

(declare-fun lt!1175060 () List!37281)

(assert (=> b!3458049 (= res!1395236 (= (size!28184 lt!1175060) (+ (size!28184 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) (size!28184 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(declare-fun d!994474 () Bool)

(assert (=> d!994474 e!2142439))

(declare-fun res!1395235 () Bool)

(assert (=> d!994474 (=> (not res!1395235) (not e!2142439))))

(assert (=> d!994474 (= res!1395235 (= (content!5182 lt!1175060) (set.union (content!5182 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) (content!5182 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(declare-fun e!2142440 () List!37281)

(assert (=> d!994474 (= lt!1175060 e!2142440)))

(declare-fun c!591812 () Bool)

(assert (=> d!994474 (= c!591812 (is-Nil!37157 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)))))

(assert (=> d!994474 (= (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)) lt!1175060)))

(declare-fun b!3458048 () Bool)

(assert (=> b!3458048 (= e!2142440 (Cons!37157 (h!42577 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) (++!9156 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241))))))

(declare-fun b!3458050 () Bool)

(assert (=> b!3458050 (= e!2142439 (or (not (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241) Nil!37157)) (= lt!1175060 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848))))))

(declare-fun b!3458047 () Bool)

(assert (=> b!3458047 (= e!2142440 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241))))

(assert (= (and d!994474 c!591812) b!3458047))

(assert (= (and d!994474 (not c!591812)) b!3458048))

(assert (= (and d!994474 res!1395235) b!3458049))

(assert (= (and b!3458049 res!1395236) b!3458050))

(declare-fun m!3858707 () Bool)

(assert (=> b!3458049 m!3858707))

(assert (=> b!3458049 m!3858045))

(declare-fun m!3858709 () Bool)

(assert (=> b!3458049 m!3858709))

(assert (=> b!3458049 m!3858047))

(declare-fun m!3858711 () Bool)

(assert (=> b!3458049 m!3858711))

(declare-fun m!3858713 () Bool)

(assert (=> d!994474 m!3858713))

(assert (=> d!994474 m!3858045))

(declare-fun m!3858715 () Bool)

(assert (=> d!994474 m!3858715))

(assert (=> d!994474 m!3858047))

(declare-fun m!3858717 () Bool)

(assert (=> d!994474 m!3858717))

(assert (=> b!3458048 m!3858047))

(declare-fun m!3858719 () Bool)

(assert (=> b!3458048 m!3858719))

(assert (=> b!3457634 d!994474))

(declare-fun d!994476 () Bool)

(declare-fun lt!1175061 () BalanceConc!22112)

(assert (=> d!994476 (= (list!13524 lt!1175061) (originalCharacters!6151 separatorToken!241))))

(assert (=> d!994476 (= lt!1175061 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))))

(assert (=> d!994476 (= (charsOf!3451 separatorToken!241) lt!1175061)))

(declare-fun b_lambda!99485 () Bool)

(assert (=> (not b_lambda!99485) (not d!994476)))

(assert (=> d!994476 t!272544))

(declare-fun b_and!243119 () Bool)

(assert (= b_and!243101 (and (=> t!272544 result!232240) b_and!243119)))

(assert (=> d!994476 t!272546))

(declare-fun b_and!243121 () Bool)

(assert (= b_and!243103 (and (=> t!272546 result!232244) b_and!243121)))

(assert (=> d!994476 t!272548))

(declare-fun b_and!243123 () Bool)

(assert (= b_and!243105 (and (=> t!272548 result!232246) b_and!243123)))

(declare-fun m!3858721 () Bool)

(assert (=> d!994476 m!3858721))

(assert (=> d!994476 m!3858513))

(assert (=> b!3457634 d!994476))

(declare-fun d!994478 () Bool)

(assert (=> d!994478 (= (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13527 (c!591766 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))

(declare-fun bs!560159 () Bool)

(assert (= bs!560159 d!994478))

(declare-fun m!3858723 () Bool)

(assert (=> bs!560159 m!3858723))

(assert (=> b!3457634 d!994478))

(declare-fun b!3458053 () Bool)

(declare-fun res!1395238 () Bool)

(declare-fun e!2142441 () Bool)

(assert (=> b!3458053 (=> (not res!1395238) (not e!2142441))))

(declare-fun lt!1175062 () List!37281)

(assert (=> b!3458053 (= res!1395238 (= (size!28184 lt!1175062) (+ (size!28184 lt!1174848) (size!28184 lt!1174829))))))

(declare-fun d!994480 () Bool)

(assert (=> d!994480 e!2142441))

(declare-fun res!1395237 () Bool)

(assert (=> d!994480 (=> (not res!1395237) (not e!2142441))))

(assert (=> d!994480 (= res!1395237 (= (content!5182 lt!1175062) (set.union (content!5182 lt!1174848) (content!5182 lt!1174829))))))

(declare-fun e!2142442 () List!37281)

(assert (=> d!994480 (= lt!1175062 e!2142442)))

(declare-fun c!591813 () Bool)

(assert (=> d!994480 (= c!591813 (is-Nil!37157 lt!1174848))))

(assert (=> d!994480 (= (++!9156 lt!1174848 lt!1174829) lt!1175062)))

(declare-fun b!3458052 () Bool)

(assert (=> b!3458052 (= e!2142442 (Cons!37157 (h!42577 lt!1174848) (++!9156 (t!272528 lt!1174848) lt!1174829)))))

(declare-fun b!3458054 () Bool)

(assert (=> b!3458054 (= e!2142441 (or (not (= lt!1174829 Nil!37157)) (= lt!1175062 lt!1174848)))))

(declare-fun b!3458051 () Bool)

(assert (=> b!3458051 (= e!2142442 lt!1174829)))

(assert (= (and d!994480 c!591813) b!3458051))

(assert (= (and d!994480 (not c!591813)) b!3458052))

(assert (= (and d!994480 res!1395237) b!3458053))

(assert (= (and b!3458053 res!1395238) b!3458054))

(declare-fun m!3858725 () Bool)

(assert (=> b!3458053 m!3858725))

(assert (=> b!3458053 m!3858427))

(assert (=> b!3458053 m!3858415))

(declare-fun m!3858727 () Bool)

(assert (=> d!994480 m!3858727))

(assert (=> d!994480 m!3858431))

(assert (=> d!994480 m!3858421))

(declare-fun m!3858729 () Bool)

(assert (=> b!3458052 m!3858729))

(assert (=> b!3457634 d!994480))

(declare-fun d!994482 () Bool)

(declare-fun c!591816 () Bool)

(assert (=> d!994482 (= c!591816 (is-Cons!37159 tokens!494))))

(declare-fun e!2142445 () List!37281)

(assert (=> d!994482 (= (printWithSeparatorTokenList!313 thiss!18206 tokens!494 separatorToken!241) e!2142445)))

(declare-fun b!3458059 () Bool)

(assert (=> b!3458059 (= e!2142445 (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241)))))

(declare-fun b!3458060 () Bool)

(assert (=> b!3458060 (= e!2142445 Nil!37157)))

(assert (= (and d!994482 c!591816) b!3458059))

(assert (= (and d!994482 (not c!591816)) b!3458060))

(assert (=> b!3458059 m!3858065))

(assert (=> b!3458059 m!3858067))

(assert (=> b!3458059 m!3858067))

(assert (=> b!3458059 m!3858053))

(declare-fun m!3858731 () Bool)

(assert (=> b!3458059 m!3858731))

(assert (=> b!3458059 m!3858051))

(assert (=> b!3458059 m!3858065))

(assert (=> b!3458059 m!3858731))

(assert (=> b!3458059 m!3858041))

(declare-fun m!3858733 () Bool)

(assert (=> b!3458059 m!3858733))

(assert (=> b!3458059 m!3858051))

(assert (=> b!3458059 m!3858053))

(assert (=> b!3458059 m!3858041))

(assert (=> b!3457634 d!994482))

(declare-fun d!994484 () Bool)

(declare-fun c!591817 () Bool)

(assert (=> d!994484 (= c!591817 (is-Cons!37159 (t!272530 (t!272530 tokens!494))))))

(declare-fun e!2142446 () List!37281)

(assert (=> d!994484 (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241) e!2142446)))

(declare-fun b!3458061 () Bool)

(assert (=> b!3458061 (= e!2142446 (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241)))))

(declare-fun b!3458062 () Bool)

(assert (=> b!3458062 (= e!2142446 Nil!37157)))

(assert (= (and d!994484 c!591817) b!3458061))

(assert (= (and d!994484 (not c!591817)) b!3458062))

(declare-fun m!3858735 () Bool)

(assert (=> b!3458061 m!3858735))

(declare-fun m!3858737 () Bool)

(assert (=> b!3458061 m!3858737))

(assert (=> b!3458061 m!3858737))

(assert (=> b!3458061 m!3858053))

(declare-fun m!3858739 () Bool)

(assert (=> b!3458061 m!3858739))

(assert (=> b!3458061 m!3858051))

(assert (=> b!3458061 m!3858735))

(assert (=> b!3458061 m!3858739))

(declare-fun m!3858741 () Bool)

(assert (=> b!3458061 m!3858741))

(declare-fun m!3858743 () Bool)

(assert (=> b!3458061 m!3858743))

(assert (=> b!3458061 m!3858051))

(assert (=> b!3458061 m!3858053))

(assert (=> b!3458061 m!3858741))

(assert (=> b!3457634 d!994484))

(declare-fun d!994486 () Bool)

(declare-fun c!591818 () Bool)

(assert (=> d!994486 (= c!591818 (is-Cons!37159 (t!272530 tokens!494)))))

(declare-fun e!2142447 () List!37281)

(assert (=> d!994486 (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241) e!2142447)))

(declare-fun b!3458063 () Bool)

(assert (=> b!3458063 (= e!2142447 (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))

(declare-fun b!3458064 () Bool)

(assert (=> b!3458064 (= e!2142447 Nil!37157)))

(assert (= (and d!994486 c!591818) b!3458063))

(assert (= (and d!994486 (not c!591818)) b!3458064))

(assert (=> b!3458063 m!3858037))

(assert (=> b!3458063 m!3858043))

(assert (=> b!3458063 m!3858043))

(assert (=> b!3458063 m!3858053))

(declare-fun m!3858745 () Bool)

(assert (=> b!3458063 m!3858745))

(assert (=> b!3458063 m!3858051))

(assert (=> b!3458063 m!3858037))

(assert (=> b!3458063 m!3858745))

(assert (=> b!3458063 m!3858047))

(declare-fun m!3858747 () Bool)

(assert (=> b!3458063 m!3858747))

(assert (=> b!3458063 m!3858051))

(assert (=> b!3458063 m!3858053))

(assert (=> b!3458063 m!3858047))

(assert (=> b!3457634 d!994486))

(declare-fun d!994488 () Bool)

(assert (=> d!994488 (= (list!13524 (charsOf!3451 separatorToken!241)) (list!13527 (c!591766 (charsOf!3451 separatorToken!241))))))

(declare-fun bs!560160 () Bool)

(assert (= bs!560160 d!994488))

(declare-fun m!3858749 () Bool)

(assert (=> bs!560160 m!3858749))

(assert (=> b!3457634 d!994488))

(declare-fun d!994490 () Bool)

(declare-fun lt!1175063 () BalanceConc!22112)

(assert (=> d!994490 (= (list!13524 lt!1175063) (originalCharacters!6151 (h!42579 (t!272530 tokens!494))))))

(assert (=> d!994490 (= lt!1175063 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))))

(assert (=> d!994490 (= (charsOf!3451 (h!42579 (t!272530 tokens!494))) lt!1175063)))

(declare-fun b_lambda!99487 () Bool)

(assert (=> (not b_lambda!99487) (not d!994490)))

(declare-fun t!272573 () Bool)

(declare-fun tb!188303 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) t!272573) tb!188303))

(declare-fun b!3458065 () Bool)

(declare-fun e!2142448 () Bool)

(declare-fun tp!1077785 () Bool)

(assert (=> b!3458065 (= e!2142448 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))) tp!1077785))))

(declare-fun result!232268 () Bool)

(assert (=> tb!188303 (= result!232268 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))) e!2142448))))

(assert (= tb!188303 b!3458065))

(declare-fun m!3858751 () Bool)

(assert (=> b!3458065 m!3858751))

(declare-fun m!3858753 () Bool)

(assert (=> tb!188303 m!3858753))

(assert (=> d!994490 t!272573))

(declare-fun b_and!243125 () Bool)

(assert (= b_and!243119 (and (=> t!272573 result!232268) b_and!243125)))

(declare-fun tb!188305 () Bool)

(declare-fun t!272575 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) t!272575) tb!188305))

(declare-fun result!232270 () Bool)

(assert (= result!232270 result!232268))

(assert (=> d!994490 t!272575))

(declare-fun b_and!243127 () Bool)

(assert (= b_and!243121 (and (=> t!272575 result!232270) b_and!243127)))

(declare-fun t!272577 () Bool)

(declare-fun tb!188307 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) t!272577) tb!188307))

(declare-fun result!232272 () Bool)

(assert (= result!232272 result!232268))

(assert (=> d!994490 t!272577))

(declare-fun b_and!243129 () Bool)

(assert (= b_and!243123 (and (=> t!272577 result!232272) b_and!243129)))

(declare-fun m!3858755 () Bool)

(assert (=> d!994490 m!3858755))

(declare-fun m!3858757 () Bool)

(assert (=> d!994490 m!3858757))

(assert (=> b!3457634 d!994490))

(declare-fun d!994492 () Bool)

(declare-fun res!1395239 () Bool)

(declare-fun e!2142449 () Bool)

(assert (=> d!994492 (=> (not res!1395239) (not e!2142449))))

(assert (=> d!994492 (= res!1395239 (not (isEmpty!21510 (originalCharacters!6151 (h!42579 tokens!494)))))))

(assert (=> d!994492 (= (inv!50326 (h!42579 tokens!494)) e!2142449)))

(declare-fun b!3458066 () Bool)

(declare-fun res!1395240 () Bool)

(assert (=> b!3458066 (=> (not res!1395240) (not e!2142449))))

(assert (=> b!3458066 (= res!1395240 (= (originalCharacters!6151 (h!42579 tokens!494)) (list!13524 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))))))

(declare-fun b!3458067 () Bool)

(assert (=> b!3458067 (= e!2142449 (= (size!28182 (h!42579 tokens!494)) (size!28184 (originalCharacters!6151 (h!42579 tokens!494)))))))

(assert (= (and d!994492 res!1395239) b!3458066))

(assert (= (and b!3458066 res!1395240) b!3458067))

(declare-fun b_lambda!99489 () Bool)

(assert (=> (not b_lambda!99489) (not b!3458066)))

(assert (=> b!3458066 t!272550))

(declare-fun b_and!243131 () Bool)

(assert (= b_and!243125 (and (=> t!272550 result!232248) b_and!243131)))

(assert (=> b!3458066 t!272552))

(declare-fun b_and!243133 () Bool)

(assert (= b_and!243127 (and (=> t!272552 result!232250) b_and!243133)))

(assert (=> b!3458066 t!272554))

(declare-fun b_and!243135 () Bool)

(assert (= b_and!243129 (and (=> t!272554 result!232252) b_and!243135)))

(declare-fun m!3858759 () Bool)

(assert (=> d!994492 m!3858759))

(assert (=> b!3458066 m!3858619))

(assert (=> b!3458066 m!3858619))

(declare-fun m!3858761 () Bool)

(assert (=> b!3458066 m!3858761))

(declare-fun m!3858763 () Bool)

(assert (=> b!3458067 m!3858763))

(assert (=> b!3457635 d!994492))

(declare-fun d!994494 () Bool)

(assert (=> d!994494 (= (inv!50322 (tag!6045 (rule!8027 (h!42579 tokens!494)))) (= (mod (str.len (value!175390 (tag!6045 (rule!8027 (h!42579 tokens!494))))) 2) 0))))

(assert (=> b!3457656 d!994494))

(declare-fun d!994496 () Bool)

(declare-fun res!1395241 () Bool)

(declare-fun e!2142450 () Bool)

(assert (=> d!994496 (=> (not res!1395241) (not e!2142450))))

(assert (=> d!994496 (= res!1395241 (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> d!994496 (= (inv!50325 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) e!2142450)))

(declare-fun b!3458068 () Bool)

(assert (=> b!3458068 (= e!2142450 (equivClasses!2181 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (= (and d!994496 res!1395241) b!3458068))

(declare-fun m!3858765 () Bool)

(assert (=> d!994496 m!3858765))

(declare-fun m!3858767 () Bool)

(assert (=> b!3458068 m!3858767))

(assert (=> b!3457656 d!994496))

(declare-fun d!994498 () Bool)

(declare-fun res!1395246 () Bool)

(declare-fun e!2142455 () Bool)

(assert (=> d!994498 (=> res!1395246 e!2142455)))

(assert (=> d!994498 (= res!1395246 (not (is-Cons!37158 rules!2135)))))

(assert (=> d!994498 (= (sepAndNonSepRulesDisjointChars!1631 rules!2135 rules!2135) e!2142455)))

(declare-fun b!3458073 () Bool)

(declare-fun e!2142456 () Bool)

(assert (=> b!3458073 (= e!2142455 e!2142456)))

(declare-fun res!1395247 () Bool)

(assert (=> b!3458073 (=> (not res!1395247) (not e!2142456))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!718 (Rule!10674 List!37282) Bool)

(assert (=> b!3458073 (= res!1395247 (ruleDisjointCharsFromAllFromOtherType!718 (h!42578 rules!2135) rules!2135))))

(declare-fun b!3458074 () Bool)

(assert (=> b!3458074 (= e!2142456 (sepAndNonSepRulesDisjointChars!1631 rules!2135 (t!272529 rules!2135)))))

(assert (= (and d!994498 (not res!1395246)) b!3458073))

(assert (= (and b!3458073 res!1395247) b!3458074))

(declare-fun m!3858769 () Bool)

(assert (=> b!3458073 m!3858769))

(declare-fun m!3858771 () Bool)

(assert (=> b!3458074 m!3858771))

(assert (=> b!3457633 d!994498))

(declare-fun d!994500 () Bool)

(declare-fun lt!1175066 () Bool)

(assert (=> d!994500 (= lt!1175066 (set.member lt!1174844 (content!5182 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun e!2142461 () Bool)

(assert (=> d!994500 (= lt!1175066 e!2142461)))

(declare-fun res!1395252 () Bool)

(assert (=> d!994500 (=> (not res!1395252) (not e!2142461))))

(assert (=> d!994500 (= res!1395252 (is-Cons!37157 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> d!994500 (= (contains!6886 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174844) lt!1175066)))

(declare-fun b!3458079 () Bool)

(declare-fun e!2142462 () Bool)

(assert (=> b!3458079 (= e!2142461 e!2142462)))

(declare-fun res!1395253 () Bool)

(assert (=> b!3458079 (=> res!1395253 e!2142462)))

(assert (=> b!3458079 (= res!1395253 (= (h!42577 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))) lt!1174844))))

(declare-fun b!3458080 () Bool)

(assert (=> b!3458080 (= e!2142462 (contains!6886 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))) lt!1174844))))

(assert (= (and d!994500 res!1395252) b!3458079))

(assert (= (and b!3458079 (not res!1395253)) b!3458080))

(assert (=> d!994500 m!3858121))

(declare-fun m!3858773 () Bool)

(assert (=> d!994500 m!3858773))

(declare-fun m!3858775 () Bool)

(assert (=> d!994500 m!3858775))

(declare-fun m!3858777 () Bool)

(assert (=> b!3458080 m!3858777))

(assert (=> b!3457654 d!994500))

(declare-fun d!994502 () Bool)

(declare-fun lt!1175068 () Bool)

(declare-fun e!2142463 () Bool)

(assert (=> d!994502 (= lt!1175068 e!2142463)))

(declare-fun res!1395256 () Bool)

(assert (=> d!994502 (=> (not res!1395256) (not e!2142463))))

(assert (=> d!994502 (= res!1395256 (= (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))) (list!13526 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))))

(declare-fun e!2142464 () Bool)

(assert (=> d!994502 (= lt!1175068 e!2142464)))

(declare-fun res!1395254 () Bool)

(assert (=> d!994502 (=> (not res!1395254) (not e!2142464))))

(declare-fun lt!1175067 () tuple2!36872)

(assert (=> d!994502 (= res!1395254 (= (size!28183 (_1!21570 lt!1175067)) 1))))

(assert (=> d!994502 (= lt!1175067 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))))

(assert (=> d!994502 (not (isEmpty!21506 rules!2135))))

(assert (=> d!994502 (= (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 (t!272530 tokens!494))) lt!1175068)))

(declare-fun b!3458081 () Bool)

(declare-fun res!1395255 () Bool)

(assert (=> b!3458081 (=> (not res!1395255) (not e!2142464))))

(assert (=> b!3458081 (= res!1395255 (= (apply!8744 (_1!21570 lt!1175067) 0) (h!42579 (t!272530 tokens!494))))))

(declare-fun b!3458082 () Bool)

(assert (=> b!3458082 (= e!2142464 (isEmpty!21504 (_2!21570 lt!1175067)))))

(declare-fun b!3458083 () Bool)

(assert (=> b!3458083 (= e!2142463 (isEmpty!21504 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))))))

(assert (= (and d!994502 res!1395254) b!3458081))

(assert (= (and b!3458081 res!1395255) b!3458082))

(assert (= (and d!994502 res!1395256) b!3458083))

(declare-fun m!3858779 () Bool)

(assert (=> d!994502 m!3858779))

(declare-fun m!3858781 () Bool)

(assert (=> d!994502 m!3858781))

(assert (=> d!994502 m!3858117))

(assert (=> d!994502 m!3858779))

(declare-fun m!3858783 () Bool)

(assert (=> d!994502 m!3858783))

(assert (=> d!994502 m!3858059))

(assert (=> d!994502 m!3858117))

(declare-fun m!3858785 () Bool)

(assert (=> d!994502 m!3858785))

(assert (=> d!994502 m!3858117))

(declare-fun m!3858787 () Bool)

(assert (=> d!994502 m!3858787))

(declare-fun m!3858789 () Bool)

(assert (=> b!3458081 m!3858789))

(declare-fun m!3858791 () Bool)

(assert (=> b!3458082 m!3858791))

(assert (=> b!3458083 m!3858117))

(assert (=> b!3458083 m!3858117))

(assert (=> b!3458083 m!3858779))

(assert (=> b!3458083 m!3858779))

(assert (=> b!3458083 m!3858781))

(declare-fun m!3858793 () Bool)

(assert (=> b!3458083 m!3858793))

(assert (=> b!3457654 d!994502))

(declare-fun b!3458123 () Bool)

(declare-fun res!1395295 () Bool)

(declare-fun e!2142493 () Bool)

(assert (=> b!3458123 (=> (not res!1395295) (not e!2142493))))

(declare-fun lt!1175092 () Option!7522)

(assert (=> b!3458123 (= res!1395295 (= (++!9156 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092)))) (_2!21571 (get!11893 lt!1175092))) lt!1174846))))

(declare-fun b!3458124 () Bool)

(declare-fun e!2142492 () Bool)

(declare-datatypes ((tuple2!36880 0))(
  ( (tuple2!36881 (_1!21574 List!37281) (_2!21574 List!37281)) )
))
(declare-fun findLongestMatchInner!908 (Regex!10196 List!37281 Int List!37281 List!37281 Int) tuple2!36880)

(assert (=> b!3458124 (= e!2142492 (matchR!4780 (regex!5437 (rule!8027 (h!42579 tokens!494))) (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(declare-fun b!3458125 () Bool)

(declare-fun res!1395292 () Bool)

(assert (=> b!3458125 (=> (not res!1395292) (not e!2142493))))

(assert (=> b!3458125 (= res!1395292 (= (value!175416 (_1!21571 (get!11893 lt!1175092))) (apply!8745 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092)))))))))

(declare-fun b!3458126 () Bool)

(declare-fun res!1395289 () Bool)

(assert (=> b!3458126 (=> (not res!1395289) (not e!2142493))))

(assert (=> b!3458126 (= res!1395289 (< (size!28184 (_2!21571 (get!11893 lt!1175092))) (size!28184 lt!1174846)))))

(declare-fun b!3458127 () Bool)

(declare-fun e!2142491 () Option!7522)

(assert (=> b!3458127 (= e!2142491 None!7521)))

(declare-fun b!3458128 () Bool)

(assert (=> b!3458128 (= e!2142493 (= (size!28182 (_1!21571 (get!11893 lt!1175092))) (size!28184 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092))))))))

(declare-fun b!3458130 () Bool)

(declare-fun e!2142490 () Bool)

(assert (=> b!3458130 (= e!2142490 e!2142493)))

(declare-fun res!1395291 () Bool)

(assert (=> b!3458130 (=> (not res!1395291) (not e!2142493))))

(assert (=> b!3458130 (= res!1395291 (matchR!4780 (regex!5437 (rule!8027 (h!42579 tokens!494))) (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))))))

(declare-fun b!3458131 () Bool)

(declare-fun res!1395294 () Bool)

(assert (=> b!3458131 (=> (not res!1395294) (not e!2142493))))

(assert (=> b!3458131 (= res!1395294 (= (rule!8027 (_1!21571 (get!11893 lt!1175092))) (rule!8027 (h!42579 tokens!494))))))

(declare-fun d!994504 () Bool)

(assert (=> d!994504 e!2142490))

(declare-fun res!1395290 () Bool)

(assert (=> d!994504 (=> res!1395290 e!2142490)))

(assert (=> d!994504 (= res!1395290 (isEmpty!21512 lt!1175092))))

(assert (=> d!994504 (= lt!1175092 e!2142491)))

(declare-fun c!591821 () Bool)

(declare-fun lt!1175090 () tuple2!36880)

(assert (=> d!994504 (= c!591821 (isEmpty!21510 (_1!21574 lt!1175090)))))

(declare-fun findLongestMatch!823 (Regex!10196 List!37281) tuple2!36880)

(assert (=> d!994504 (= lt!1175090 (findLongestMatch!823 (regex!5437 (rule!8027 (h!42579 tokens!494))) lt!1174846))))

(declare-fun ruleValid!1737 (LexerInterface!5026 Rule!10674) Bool)

(assert (=> d!994504 (ruleValid!1737 thiss!18206 (rule!8027 (h!42579 tokens!494)))))

(assert (=> d!994504 (= (maxPrefixOneRule!1733 thiss!18206 (rule!8027 (h!42579 tokens!494)) lt!1174846) lt!1175092)))

(declare-fun b!3458129 () Bool)

(declare-fun size!28188 (BalanceConc!22112) Int)

(assert (=> b!3458129 (= e!2142491 (Some!7521 (tuple2!36875 (Token!10241 (apply!8745 (transformation!5437 (rule!8027 (h!42579 tokens!494))) (seqFromList!3928 (_1!21574 lt!1175090))) (rule!8027 (h!42579 tokens!494)) (size!28188 (seqFromList!3928 (_1!21574 lt!1175090))) (_1!21574 lt!1175090)) (_2!21574 lt!1175090))))))

(declare-fun lt!1175093 () Unit!52487)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!881 (Regex!10196 List!37281) Unit!52487)

(assert (=> b!3458129 (= lt!1175093 (longestMatchIsAcceptedByMatchOrIsEmpty!881 (regex!5437 (rule!8027 (h!42579 tokens!494))) lt!1174846))))

(declare-fun res!1395293 () Bool)

(assert (=> b!3458129 (= res!1395293 (isEmpty!21510 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(assert (=> b!3458129 (=> res!1395293 e!2142492)))

(assert (=> b!3458129 e!2142492))

(declare-fun lt!1175091 () Unit!52487)

(assert (=> b!3458129 (= lt!1175091 lt!1175093)))

(declare-fun lt!1175094 () Unit!52487)

(declare-fun lemmaSemiInverse!1258 (TokenValueInjection!10762 BalanceConc!22112) Unit!52487)

(assert (=> b!3458129 (= lt!1175094 (lemmaSemiInverse!1258 (transformation!5437 (rule!8027 (h!42579 tokens!494))) (seqFromList!3928 (_1!21574 lt!1175090))))))

(assert (= (and d!994504 c!591821) b!3458127))

(assert (= (and d!994504 (not c!591821)) b!3458129))

(assert (= (and b!3458129 (not res!1395293)) b!3458124))

(assert (= (and d!994504 (not res!1395290)) b!3458130))

(assert (= (and b!3458130 res!1395291) b!3458123))

(assert (= (and b!3458123 res!1395295) b!3458126))

(assert (= (and b!3458126 res!1395289) b!3458131))

(assert (= (and b!3458131 res!1395294) b!3458125))

(assert (= (and b!3458125 res!1395292) b!3458128))

(declare-fun m!3858835 () Bool)

(assert (=> b!3458131 m!3858835))

(declare-fun m!3858837 () Bool)

(assert (=> b!3458124 m!3858837))

(assert (=> b!3458124 m!3858103))

(assert (=> b!3458124 m!3858837))

(assert (=> b!3458124 m!3858103))

(declare-fun m!3858839 () Bool)

(assert (=> b!3458124 m!3858839))

(declare-fun m!3858841 () Bool)

(assert (=> b!3458124 m!3858841))

(assert (=> b!3458128 m!3858835))

(declare-fun m!3858843 () Bool)

(assert (=> b!3458128 m!3858843))

(declare-fun m!3858845 () Bool)

(assert (=> d!994504 m!3858845))

(declare-fun m!3858847 () Bool)

(assert (=> d!994504 m!3858847))

(declare-fun m!3858849 () Bool)

(assert (=> d!994504 m!3858849))

(declare-fun m!3858851 () Bool)

(assert (=> d!994504 m!3858851))

(assert (=> b!3458125 m!3858835))

(declare-fun m!3858853 () Bool)

(assert (=> b!3458125 m!3858853))

(assert (=> b!3458125 m!3858853))

(declare-fun m!3858855 () Bool)

(assert (=> b!3458125 m!3858855))

(declare-fun m!3858857 () Bool)

(assert (=> b!3458129 m!3858857))

(declare-fun m!3858859 () Bool)

(assert (=> b!3458129 m!3858859))

(assert (=> b!3458129 m!3858857))

(assert (=> b!3458129 m!3858103))

(assert (=> b!3458129 m!3858837))

(assert (=> b!3458129 m!3858103))

(assert (=> b!3458129 m!3858839))

(assert (=> b!3458129 m!3858857))

(declare-fun m!3858861 () Bool)

(assert (=> b!3458129 m!3858861))

(assert (=> b!3458129 m!3858837))

(declare-fun m!3858863 () Bool)

(assert (=> b!3458129 m!3858863))

(declare-fun m!3858865 () Bool)

(assert (=> b!3458129 m!3858865))

(assert (=> b!3458129 m!3858857))

(declare-fun m!3858867 () Bool)

(assert (=> b!3458129 m!3858867))

(assert (=> b!3458130 m!3858835))

(declare-fun m!3858869 () Bool)

(assert (=> b!3458130 m!3858869))

(assert (=> b!3458130 m!3858869))

(declare-fun m!3858871 () Bool)

(assert (=> b!3458130 m!3858871))

(assert (=> b!3458130 m!3858871))

(declare-fun m!3858873 () Bool)

(assert (=> b!3458130 m!3858873))

(assert (=> b!3458123 m!3858835))

(assert (=> b!3458123 m!3858869))

(assert (=> b!3458123 m!3858869))

(assert (=> b!3458123 m!3858871))

(assert (=> b!3458123 m!3858871))

(declare-fun m!3858875 () Bool)

(assert (=> b!3458123 m!3858875))

(assert (=> b!3458126 m!3858835))

(declare-fun m!3858877 () Bool)

(assert (=> b!3458126 m!3858877))

(assert (=> b!3458126 m!3858103))

(assert (=> b!3457654 d!994504))

(declare-fun d!994518 () Bool)

(declare-fun e!2142496 () Bool)

(assert (=> d!994518 e!2142496))

(declare-fun res!1395300 () Bool)

(assert (=> d!994518 (=> (not res!1395300) (not e!2142496))))

(assert (=> d!994518 (= res!1395300 (isDefined!5792 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))))))

(declare-fun lt!1175097 () Unit!52487)

(declare-fun choose!19994 (LexerInterface!5026 List!37282 List!37281 Token!10240) Unit!52487)

(assert (=> d!994518 (= lt!1175097 (choose!19994 thiss!18206 rules!2135 lt!1174846 (h!42579 tokens!494)))))

(assert (=> d!994518 (rulesInvariant!4423 thiss!18206 rules!2135)))

(assert (=> d!994518 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1080 thiss!18206 rules!2135 lt!1174846 (h!42579 tokens!494)) lt!1175097)))

(declare-fun b!3458136 () Bool)

(declare-fun res!1395301 () Bool)

(assert (=> b!3458136 (=> (not res!1395301) (not e!2142496))))

(assert (=> b!3458136 (= res!1395301 (matchR!4780 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))) (list!13524 (charsOf!3451 (h!42579 tokens!494)))))))

(declare-fun b!3458137 () Bool)

(assert (=> b!3458137 (= e!2142496 (= (rule!8027 (h!42579 tokens!494)) (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))

(assert (= (and d!994518 res!1395300) b!3458136))

(assert (= (and b!3458136 res!1395301) b!3458137))

(assert (=> d!994518 m!3858127))

(assert (=> d!994518 m!3858127))

(declare-fun m!3858879 () Bool)

(assert (=> d!994518 m!3858879))

(declare-fun m!3858881 () Bool)

(assert (=> d!994518 m!3858881))

(assert (=> d!994518 m!3858183))

(assert (=> b!3458136 m!3858065))

(assert (=> b!3458136 m!3858067))

(assert (=> b!3458136 m!3858127))

(assert (=> b!3458136 m!3858065))

(assert (=> b!3458136 m!3858067))

(declare-fun m!3858883 () Bool)

(assert (=> b!3458136 m!3858883))

(assert (=> b!3458136 m!3858127))

(declare-fun m!3858885 () Bool)

(assert (=> b!3458136 m!3858885))

(assert (=> b!3458137 m!3858127))

(assert (=> b!3458137 m!3858127))

(assert (=> b!3458137 m!3858885))

(assert (=> b!3457654 d!994518))

(declare-fun d!994520 () Bool)

(declare-fun lt!1175100 () Int)

(assert (=> d!994520 (>= lt!1175100 0)))

(declare-fun e!2142499 () Int)

(assert (=> d!994520 (= lt!1175100 e!2142499)))

(declare-fun c!591824 () Bool)

(assert (=> d!994520 (= c!591824 (is-Nil!37157 lt!1174846))))

(assert (=> d!994520 (= (size!28184 lt!1174846) lt!1175100)))

(declare-fun b!3458142 () Bool)

(assert (=> b!3458142 (= e!2142499 0)))

(declare-fun b!3458143 () Bool)

(assert (=> b!3458143 (= e!2142499 (+ 1 (size!28184 (t!272528 lt!1174846))))))

(assert (= (and d!994520 c!591824) b!3458142))

(assert (= (and d!994520 (not c!591824)) b!3458143))

(declare-fun m!3858887 () Bool)

(assert (=> b!3458143 m!3858887))

(assert (=> b!3457654 d!994520))

(declare-fun b!3458171 () Bool)

(declare-fun e!2142518 () Option!7521)

(assert (=> b!3458171 (= e!2142518 (Some!7520 (h!42578 rules!2135)))))

(declare-fun b!3458172 () Bool)

(declare-fun e!2142520 () Bool)

(declare-fun lt!1175111 () Option!7521)

(assert (=> b!3458172 (= e!2142520 (= (tag!6045 (get!11891 lt!1175111)) (tag!6045 (rule!8027 separatorToken!241))))))

(declare-fun b!3458173 () Bool)

(declare-fun e!2142519 () Option!7521)

(assert (=> b!3458173 (= e!2142518 e!2142519)))

(declare-fun c!591832 () Bool)

(assert (=> b!3458173 (= c!591832 (and (is-Cons!37158 rules!2135) (not (= (tag!6045 (h!42578 rules!2135)) (tag!6045 (rule!8027 separatorToken!241))))))))

(declare-fun b!3458174 () Bool)

(assert (=> b!3458174 (= e!2142519 None!7520)))

(declare-fun b!3458176 () Bool)

(declare-fun e!2142517 () Bool)

(assert (=> b!3458176 (= e!2142517 e!2142520)))

(declare-fun res!1395316 () Bool)

(assert (=> b!3458176 (=> (not res!1395316) (not e!2142520))))

(assert (=> b!3458176 (= res!1395316 (contains!6885 rules!2135 (get!11891 lt!1175111)))))

(declare-fun b!3458175 () Bool)

(declare-fun lt!1175112 () Unit!52487)

(declare-fun lt!1175110 () Unit!52487)

(assert (=> b!3458175 (= lt!1175112 lt!1175110)))

(assert (=> b!3458175 (rulesInvariant!4423 thiss!18206 (t!272529 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!432 (LexerInterface!5026 Rule!10674 List!37282) Unit!52487)

(assert (=> b!3458175 (= lt!1175110 (lemmaInvariantOnRulesThenOnTail!432 thiss!18206 (h!42578 rules!2135) (t!272529 rules!2135)))))

(assert (=> b!3458175 (= e!2142519 (getRuleFromTag!1080 thiss!18206 (t!272529 rules!2135) (tag!6045 (rule!8027 separatorToken!241))))))

(declare-fun d!994522 () Bool)

(assert (=> d!994522 e!2142517))

(declare-fun res!1395315 () Bool)

(assert (=> d!994522 (=> res!1395315 e!2142517)))

(declare-fun isEmpty!21516 (Option!7521) Bool)

(assert (=> d!994522 (= res!1395315 (isEmpty!21516 lt!1175111))))

(assert (=> d!994522 (= lt!1175111 e!2142518)))

(declare-fun c!591833 () Bool)

(assert (=> d!994522 (= c!591833 (and (is-Cons!37158 rules!2135) (= (tag!6045 (h!42578 rules!2135)) (tag!6045 (rule!8027 separatorToken!241)))))))

(assert (=> d!994522 (rulesInvariant!4423 thiss!18206 rules!2135)))

(assert (=> d!994522 (= (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))) lt!1175111)))

(assert (= (and d!994522 c!591833) b!3458171))

(assert (= (and d!994522 (not c!591833)) b!3458173))

(assert (= (and b!3458173 c!591832) b!3458175))

(assert (= (and b!3458173 (not c!591832)) b!3458174))

(assert (= (and d!994522 (not res!1395315)) b!3458176))

(assert (= (and b!3458176 res!1395316) b!3458172))

(declare-fun m!3858907 () Bool)

(assert (=> b!3458172 m!3858907))

(assert (=> b!3458176 m!3858907))

(assert (=> b!3458176 m!3858907))

(declare-fun m!3858909 () Bool)

(assert (=> b!3458176 m!3858909))

(declare-fun m!3858911 () Bool)

(assert (=> b!3458175 m!3858911))

(declare-fun m!3858913 () Bool)

(assert (=> b!3458175 m!3858913))

(declare-fun m!3858915 () Bool)

(assert (=> b!3458175 m!3858915))

(declare-fun m!3858917 () Bool)

(assert (=> d!994522 m!3858917))

(assert (=> d!994522 m!3858183))

(assert (=> b!3457654 d!994522))

(declare-fun d!994526 () Bool)

(assert (=> d!994526 (= (isDefined!5792 lt!1174832) (not (isEmpty!21516 lt!1174832)))))

(declare-fun bs!560164 () Bool)

(assert (= bs!560164 d!994526))

(declare-fun m!3858919 () Bool)

(assert (=> bs!560164 m!3858919))

(assert (=> b!3457654 d!994526))

(declare-fun d!994528 () Bool)

(declare-fun lt!1175113 () BalanceConc!22112)

(assert (=> d!994528 (= (list!13524 lt!1175113) (printList!1574 thiss!18206 (list!13526 lt!1174837)))))

(assert (=> d!994528 (= lt!1175113 (printTailRec!1521 thiss!18206 lt!1174837 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!994528 (= (print!2091 thiss!18206 lt!1174837) lt!1175113)))

(declare-fun bs!560165 () Bool)

(assert (= bs!560165 d!994528))

(declare-fun m!3858921 () Bool)

(assert (=> bs!560165 m!3858921))

(declare-fun m!3858923 () Bool)

(assert (=> bs!560165 m!3858923))

(assert (=> bs!560165 m!3858923))

(declare-fun m!3858925 () Bool)

(assert (=> bs!560165 m!3858925))

(assert (=> bs!560165 m!3858133))

(assert (=> b!3457654 d!994528))

(declare-fun d!994530 () Bool)

(assert (=> d!994530 (not (contains!6886 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174844))))

(declare-fun lt!1175125 () Unit!52487)

(declare-fun choose!19996 (LexerInterface!5026 List!37282 List!37282 Rule!10674 Rule!10674 C!20578) Unit!52487)

(assert (=> d!994530 (= lt!1175125 (choose!19996 thiss!18206 rules!2135 rules!2135 (rule!8027 (h!42579 tokens!494)) (rule!8027 separatorToken!241) lt!1174844))))

(assert (=> d!994530 (rulesInvariant!4423 thiss!18206 rules!2135)))

(assert (=> d!994530 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!237 thiss!18206 rules!2135 rules!2135 (rule!8027 (h!42579 tokens!494)) (rule!8027 separatorToken!241) lt!1174844) lt!1175125)))

(declare-fun bs!560166 () Bool)

(assert (= bs!560166 d!994530))

(assert (=> bs!560166 m!3858121))

(assert (=> bs!560166 m!3858121))

(assert (=> bs!560166 m!3858125))

(declare-fun m!3858939 () Bool)

(assert (=> bs!560166 m!3858939))

(assert (=> bs!560166 m!3858183))

(assert (=> b!3457654 d!994530))

(declare-fun d!994534 () Bool)

(declare-fun lt!1175131 () BalanceConc!22112)

(assert (=> d!994534 (= (list!13524 lt!1175131) (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174852 0) (list!13524 (BalanceConc!22113 Empty!11249))))))

(declare-fun e!2142533 () BalanceConc!22112)

(assert (=> d!994534 (= lt!1175131 e!2142533)))

(declare-fun c!591841 () Bool)

(assert (=> d!994534 (= c!591841 (>= 0 (size!28183 lt!1174852)))))

(declare-fun e!2142534 () Bool)

(assert (=> d!994534 e!2142534))

(declare-fun res!1395323 () Bool)

(assert (=> d!994534 (=> (not res!1395323) (not e!2142534))))

(assert (=> d!994534 (= res!1395323 (>= 0 0))))

(assert (=> d!994534 (= (printTailRec!1521 thiss!18206 lt!1174852 0 (BalanceConc!22113 Empty!11249)) lt!1175131)))

(declare-fun b!3458195 () Bool)

(assert (=> b!3458195 (= e!2142534 (<= 0 (size!28183 lt!1174852)))))

(declare-fun b!3458196 () Bool)

(assert (=> b!3458196 (= e!2142533 (BalanceConc!22113 Empty!11249))))

(declare-fun b!3458197 () Bool)

(assert (=> b!3458197 (= e!2142533 (printTailRec!1521 thiss!18206 lt!1174852 (+ 0 1) (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174852 0)))))))

(declare-fun lt!1175128 () List!37283)

(assert (=> b!3458197 (= lt!1175128 (list!13526 lt!1174852))))

(declare-fun lt!1175126 () Unit!52487)

(assert (=> b!3458197 (= lt!1175126 (lemmaDropApply!1162 lt!1175128 0))))

(assert (=> b!3458197 (= (head!7318 (drop!2010 lt!1175128 0)) (apply!8748 lt!1175128 0))))

(declare-fun lt!1175132 () Unit!52487)

(assert (=> b!3458197 (= lt!1175132 lt!1175126)))

(declare-fun lt!1175129 () List!37283)

(assert (=> b!3458197 (= lt!1175129 (list!13526 lt!1174852))))

(declare-fun lt!1175130 () Unit!52487)

(assert (=> b!3458197 (= lt!1175130 (lemmaDropTail!1046 lt!1175129 0))))

(assert (=> b!3458197 (= (tail!5430 (drop!2010 lt!1175129 0)) (drop!2010 lt!1175129 (+ 0 1)))))

(declare-fun lt!1175127 () Unit!52487)

(assert (=> b!3458197 (= lt!1175127 lt!1175130)))

(assert (= (and d!994534 res!1395323) b!3458195))

(assert (= (and d!994534 c!591841) b!3458196))

(assert (= (and d!994534 (not c!591841)) b!3458197))

(declare-fun m!3858941 () Bool)

(assert (=> d!994534 m!3858941))

(assert (=> d!994534 m!3858443))

(declare-fun m!3858943 () Bool)

(assert (=> d!994534 m!3858943))

(assert (=> d!994534 m!3858443))

(declare-fun m!3858945 () Bool)

(assert (=> d!994534 m!3858945))

(declare-fun m!3858947 () Bool)

(assert (=> d!994534 m!3858947))

(assert (=> d!994534 m!3858943))

(assert (=> b!3458195 m!3858941))

(declare-fun m!3858949 () Bool)

(assert (=> b!3458197 m!3858949))

(declare-fun m!3858951 () Bool)

(assert (=> b!3458197 m!3858951))

(declare-fun m!3858953 () Bool)

(assert (=> b!3458197 m!3858953))

(declare-fun m!3858955 () Bool)

(assert (=> b!3458197 m!3858955))

(assert (=> b!3458197 m!3858953))

(assert (=> b!3458197 m!3858951))

(declare-fun m!3858957 () Bool)

(assert (=> b!3458197 m!3858957))

(declare-fun m!3858959 () Bool)

(assert (=> b!3458197 m!3858959))

(declare-fun m!3858961 () Bool)

(assert (=> b!3458197 m!3858961))

(assert (=> b!3458197 m!3858949))

(declare-fun m!3858963 () Bool)

(assert (=> b!3458197 m!3858963))

(declare-fun m!3858965 () Bool)

(assert (=> b!3458197 m!3858965))

(declare-fun m!3858967 () Bool)

(assert (=> b!3458197 m!3858967))

(declare-fun m!3858969 () Bool)

(assert (=> b!3458197 m!3858969))

(assert (=> b!3458197 m!3858961))

(assert (=> b!3458197 m!3858969))

(declare-fun m!3858971 () Bool)

(assert (=> b!3458197 m!3858971))

(declare-fun m!3858973 () Bool)

(assert (=> b!3458197 m!3858973))

(assert (=> b!3457654 d!994534))

(declare-fun d!994536 () Bool)

(declare-fun dynLambda!15655 (Int BalanceConc!22112) TokenValue!5667)

(assert (=> d!994536 (= (apply!8745 (transformation!5437 (rule!8027 (h!42579 tokens!494))) lt!1174823) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823))))

(declare-fun b_lambda!99491 () Bool)

(assert (=> (not b_lambda!99491) (not d!994536)))

(declare-fun t!272583 () Bool)

(declare-fun tb!188309 () Bool)

(assert (=> (and b!3457644 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272583) tb!188309))

(declare-fun result!232274 () Bool)

(assert (=> tb!188309 (= result!232274 (inv!21 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823)))))

(declare-fun m!3858975 () Bool)

(assert (=> tb!188309 m!3858975))

(assert (=> d!994536 t!272583))

(declare-fun b_and!243137 () Bool)

(assert (= b_and!243071 (and (=> t!272583 result!232274) b_and!243137)))

(declare-fun t!272585 () Bool)

(declare-fun tb!188311 () Bool)

(assert (=> (and b!3457648 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272585) tb!188311))

(declare-fun result!232278 () Bool)

(assert (= result!232278 result!232274))

(assert (=> d!994536 t!272585))

(declare-fun b_and!243139 () Bool)

(assert (= b_and!243075 (and (=> t!272585 result!232278) b_and!243139)))

(declare-fun tb!188313 () Bool)

(declare-fun t!272587 () Bool)

(assert (=> (and b!3457652 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272587) tb!188313))

(declare-fun result!232280 () Bool)

(assert (= result!232280 result!232274))

(assert (=> d!994536 t!272587))

(declare-fun b_and!243141 () Bool)

(assert (= b_and!243079 (and (=> t!272587 result!232280) b_and!243141)))

(declare-fun m!3858979 () Bool)

(assert (=> d!994536 m!3858979))

(assert (=> b!3457654 d!994536))

(declare-fun b!3458225 () Bool)

(declare-fun e!2142556 () List!37281)

(declare-fun e!2142555 () List!37281)

(assert (=> b!3458225 (= e!2142556 e!2142555)))

(declare-fun c!591853 () Bool)

(assert (=> b!3458225 (= c!591853 (is-ElementMatch!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun b!3458226 () Bool)

(assert (=> b!3458226 (= e!2142555 (Cons!37157 (c!591765 (regex!5437 (rule!8027 separatorToken!241))) Nil!37157))))

(declare-fun b!3458227 () Bool)

(declare-fun e!2142558 () List!37281)

(declare-fun call!249367 () List!37281)

(assert (=> b!3458227 (= e!2142558 call!249367)))

(declare-fun bm!249361 () Bool)

(declare-fun call!249368 () List!37281)

(declare-fun c!591851 () Bool)

(assert (=> bm!249361 (= call!249368 (usedCharacters!671 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))))))

(declare-fun b!3458228 () Bool)

(declare-fun e!2142557 () List!37281)

(declare-fun call!249366 () List!37281)

(assert (=> b!3458228 (= e!2142557 call!249366)))

(declare-fun d!994540 () Bool)

(declare-fun c!591852 () Bool)

(assert (=> d!994540 (= c!591852 (or (is-EmptyExpr!10196 (regex!5437 (rule!8027 separatorToken!241))) (is-EmptyLang!10196 (regex!5437 (rule!8027 separatorToken!241)))))))

(assert (=> d!994540 (= (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241))) e!2142556)))

(declare-fun b!3458229 () Bool)

(assert (=> b!3458229 (= e!2142558 call!249367)))

(declare-fun bm!249362 () Bool)

(declare-fun c!591854 () Bool)

(assert (=> bm!249362 (= call!249366 (usedCharacters!671 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))

(declare-fun b!3458230 () Bool)

(assert (=> b!3458230 (= e!2142556 Nil!37157)))

(declare-fun b!3458231 () Bool)

(assert (=> b!3458231 (= e!2142557 e!2142558)))

(assert (=> b!3458231 (= c!591851 (is-Union!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun bm!249363 () Bool)

(declare-fun call!249369 () List!37281)

(assert (=> bm!249363 (= call!249369 call!249366)))

(declare-fun b!3458232 () Bool)

(assert (=> b!3458232 (= c!591854 (is-Star!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(assert (=> b!3458232 (= e!2142555 e!2142557)))

(declare-fun bm!249364 () Bool)

(assert (=> bm!249364 (= call!249367 (++!9156 (ite c!591851 call!249368 call!249369) (ite c!591851 call!249369 call!249368)))))

(assert (= (and d!994540 c!591852) b!3458230))

(assert (= (and d!994540 (not c!591852)) b!3458225))

(assert (= (and b!3458225 c!591853) b!3458226))

(assert (= (and b!3458225 (not c!591853)) b!3458232))

(assert (= (and b!3458232 c!591854) b!3458228))

(assert (= (and b!3458232 (not c!591854)) b!3458231))

(assert (= (and b!3458231 c!591851) b!3458229))

(assert (= (and b!3458231 (not c!591851)) b!3458227))

(assert (= (or b!3458229 b!3458227) bm!249363))

(assert (= (or b!3458229 b!3458227) bm!249361))

(assert (= (or b!3458229 b!3458227) bm!249364))

(assert (= (or b!3458228 bm!249363) bm!249362))

(declare-fun m!3858993 () Bool)

(assert (=> bm!249361 m!3858993))

(declare-fun m!3858995 () Bool)

(assert (=> bm!249362 m!3858995))

(declare-fun m!3858997 () Bool)

(assert (=> bm!249364 m!3858997))

(assert (=> b!3457654 d!994540))

(declare-fun d!994546 () Bool)

(declare-fun lt!1175142 () Bool)

(assert (=> d!994546 (= lt!1175142 (set.member lt!1174844 (content!5182 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241))))))))

(declare-fun e!2142559 () Bool)

(assert (=> d!994546 (= lt!1175142 e!2142559)))

(declare-fun res!1395333 () Bool)

(assert (=> d!994546 (=> (not res!1395333) (not e!2142559))))

(assert (=> d!994546 (= res!1395333 (is-Cons!37157 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))))))

(assert (=> d!994546 (= (contains!6886 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241))) lt!1174844) lt!1175142)))

(declare-fun b!3458233 () Bool)

(declare-fun e!2142560 () Bool)

(assert (=> b!3458233 (= e!2142559 e!2142560)))

(declare-fun res!1395334 () Bool)

(assert (=> b!3458233 (=> res!1395334 e!2142560)))

(assert (=> b!3458233 (= res!1395334 (= (h!42577 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))) lt!1174844))))

(declare-fun b!3458234 () Bool)

(assert (=> b!3458234 (= e!2142560 (contains!6886 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))) lt!1174844))))

(assert (= (and d!994546 res!1395333) b!3458233))

(assert (= (and b!3458233 (not res!1395334)) b!3458234))

(assert (=> d!994546 m!3858097))

(declare-fun m!3858999 () Bool)

(assert (=> d!994546 m!3858999))

(declare-fun m!3859001 () Bool)

(assert (=> d!994546 m!3859001))

(declare-fun m!3859003 () Bool)

(assert (=> b!3458234 m!3859003))

(assert (=> b!3457654 d!994546))

(declare-fun b!3458235 () Bool)

(declare-fun e!2142562 () List!37281)

(declare-fun e!2142561 () List!37281)

(assert (=> b!3458235 (= e!2142562 e!2142561)))

(declare-fun c!591857 () Bool)

(assert (=> b!3458235 (= c!591857 (is-ElementMatch!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun b!3458236 () Bool)

(assert (=> b!3458236 (= e!2142561 (Cons!37157 (c!591765 (regex!5437 (rule!8027 (h!42579 tokens!494)))) Nil!37157))))

(declare-fun b!3458237 () Bool)

(declare-fun e!2142564 () List!37281)

(declare-fun call!249371 () List!37281)

(assert (=> b!3458237 (= e!2142564 call!249371)))

(declare-fun bm!249365 () Bool)

(declare-fun call!249372 () List!37281)

(declare-fun c!591855 () Bool)

(assert (=> bm!249365 (= call!249372 (usedCharacters!671 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun b!3458238 () Bool)

(declare-fun e!2142563 () List!37281)

(declare-fun call!249370 () List!37281)

(assert (=> b!3458238 (= e!2142563 call!249370)))

(declare-fun d!994548 () Bool)

(declare-fun c!591856 () Bool)

(assert (=> d!994548 (= c!591856 (or (is-EmptyExpr!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (is-EmptyLang!10196 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> d!994548 (= (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))) e!2142562)))

(declare-fun b!3458239 () Bool)

(assert (=> b!3458239 (= e!2142564 call!249371)))

(declare-fun bm!249366 () Bool)

(declare-fun c!591858 () Bool)

(assert (=> bm!249366 (= call!249370 (usedCharacters!671 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))

(declare-fun b!3458240 () Bool)

(assert (=> b!3458240 (= e!2142562 Nil!37157)))

(declare-fun b!3458241 () Bool)

(assert (=> b!3458241 (= e!2142563 e!2142564)))

(assert (=> b!3458241 (= c!591855 (is-Union!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun bm!249367 () Bool)

(declare-fun call!249373 () List!37281)

(assert (=> bm!249367 (= call!249373 call!249370)))

(declare-fun b!3458242 () Bool)

(assert (=> b!3458242 (= c!591858 (is-Star!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(assert (=> b!3458242 (= e!2142561 e!2142563)))

(declare-fun bm!249368 () Bool)

(assert (=> bm!249368 (= call!249371 (++!9156 (ite c!591855 call!249372 call!249373) (ite c!591855 call!249373 call!249372)))))

(assert (= (and d!994548 c!591856) b!3458240))

(assert (= (and d!994548 (not c!591856)) b!3458235))

(assert (= (and b!3458235 c!591857) b!3458236))

(assert (= (and b!3458235 (not c!591857)) b!3458242))

(assert (= (and b!3458242 c!591858) b!3458238))

(assert (= (and b!3458242 (not c!591858)) b!3458241))

(assert (= (and b!3458241 c!591855) b!3458239))

(assert (= (and b!3458241 (not c!591855)) b!3458237))

(assert (= (or b!3458239 b!3458237) bm!249367))

(assert (= (or b!3458239 b!3458237) bm!249365))

(assert (= (or b!3458239 b!3458237) bm!249368))

(assert (= (or b!3458238 bm!249367) bm!249366))

(declare-fun m!3859005 () Bool)

(assert (=> bm!249365 m!3859005))

(declare-fun m!3859007 () Bool)

(assert (=> bm!249366 m!3859007))

(declare-fun m!3859009 () Bool)

(assert (=> bm!249368 m!3859009))

(assert (=> b!3457654 d!994548))

(declare-fun d!994550 () Bool)

(assert (=> d!994550 (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 tokens!494))))

(declare-fun lt!1175171 () Unit!52487)

(declare-fun choose!19998 (LexerInterface!5026 List!37282 List!37283 Token!10240) Unit!52487)

(assert (=> d!994550 (= lt!1175171 (choose!19998 thiss!18206 rules!2135 tokens!494 (h!42579 tokens!494)))))

(assert (=> d!994550 (not (isEmpty!21506 rules!2135))))

(assert (=> d!994550 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1015 thiss!18206 rules!2135 tokens!494 (h!42579 tokens!494)) lt!1175171)))

(declare-fun bs!560170 () Bool)

(assert (= bs!560170 d!994550))

(assert (=> bs!560170 m!3858027))

(declare-fun m!3859091 () Bool)

(assert (=> bs!560170 m!3859091))

(assert (=> bs!560170 m!3858059))

(assert (=> b!3457654 d!994550))

(declare-fun d!994568 () Bool)

(assert (=> d!994568 (= (isDefined!5792 lt!1174853) (not (isEmpty!21516 lt!1174853)))))

(declare-fun bs!560171 () Bool)

(assert (= bs!560171 d!994568))

(declare-fun m!3859093 () Bool)

(assert (=> bs!560171 m!3859093))

(assert (=> b!3457654 d!994568))

(declare-fun d!994570 () Bool)

(assert (=> d!994570 (= (maxPrefixOneRule!1733 thiss!18206 (rule!8027 (h!42579 tokens!494)) lt!1174846) (Some!7521 (tuple2!36875 (Token!10241 (apply!8745 (transformation!5437 (rule!8027 (h!42579 tokens!494))) (seqFromList!3928 lt!1174846)) (rule!8027 (h!42579 tokens!494)) (size!28184 lt!1174846) lt!1174846) Nil!37157)))))

(declare-fun lt!1175174 () Unit!52487)

(declare-fun choose!19999 (LexerInterface!5026 List!37282 List!37281 List!37281 List!37281 Rule!10674) Unit!52487)

(assert (=> d!994570 (= lt!1175174 (choose!19999 thiss!18206 rules!2135 lt!1174846 lt!1174846 Nil!37157 (rule!8027 (h!42579 tokens!494))))))

(assert (=> d!994570 (not (isEmpty!21506 rules!2135))))

(assert (=> d!994570 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!826 thiss!18206 rules!2135 lt!1174846 lt!1174846 Nil!37157 (rule!8027 (h!42579 tokens!494))) lt!1175174)))

(declare-fun bs!560172 () Bool)

(assert (= bs!560172 d!994570))

(assert (=> bs!560172 m!3858059))

(assert (=> bs!560172 m!3858103))

(assert (=> bs!560172 m!3858073))

(assert (=> bs!560172 m!3858107))

(assert (=> bs!560172 m!3858073))

(declare-fun m!3859101 () Bool)

(assert (=> bs!560172 m!3859101))

(declare-fun m!3859103 () Bool)

(assert (=> bs!560172 m!3859103))

(assert (=> b!3457654 d!994570))

(declare-fun d!994574 () Bool)

(declare-fun lt!1175177 () Int)

(declare-fun size!28190 (List!37283) Int)

(assert (=> d!994574 (= lt!1175177 (size!28190 (list!13526 (_1!21570 lt!1174825))))))

(declare-fun size!28191 (Conc!11250) Int)

(assert (=> d!994574 (= lt!1175177 (size!28191 (c!591767 (_1!21570 lt!1174825))))))

(assert (=> d!994574 (= (size!28183 (_1!21570 lt!1174825)) lt!1175177)))

(declare-fun bs!560173 () Bool)

(assert (= bs!560173 d!994574))

(assert (=> bs!560173 m!3858605))

(assert (=> bs!560173 m!3858605))

(declare-fun m!3859105 () Bool)

(assert (=> bs!560173 m!3859105))

(declare-fun m!3859107 () Bool)

(assert (=> bs!560173 m!3859107))

(assert (=> b!3457654 d!994574))

(declare-fun d!994576 () Bool)

(assert (=> d!994576 (= (head!7316 lt!1174848) (h!42577 lt!1174848))))

(assert (=> b!3457654 d!994576))

(declare-fun b!3458309 () Bool)

(declare-fun e!2142602 () Option!7521)

(assert (=> b!3458309 (= e!2142602 (Some!7520 (h!42578 rules!2135)))))

(declare-fun b!3458310 () Bool)

(declare-fun e!2142604 () Bool)

(declare-fun lt!1175179 () Option!7521)

(assert (=> b!3458310 (= e!2142604 (= (tag!6045 (get!11891 lt!1175179)) (tag!6045 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun b!3458311 () Bool)

(declare-fun e!2142603 () Option!7521)

(assert (=> b!3458311 (= e!2142602 e!2142603)))

(declare-fun c!591877 () Bool)

(assert (=> b!3458311 (= c!591877 (and (is-Cons!37158 rules!2135) (not (= (tag!6045 (h!42578 rules!2135)) (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun b!3458312 () Bool)

(assert (=> b!3458312 (= e!2142603 None!7520)))

(declare-fun b!3458314 () Bool)

(declare-fun e!2142601 () Bool)

(assert (=> b!3458314 (= e!2142601 e!2142604)))

(declare-fun res!1395364 () Bool)

(assert (=> b!3458314 (=> (not res!1395364) (not e!2142604))))

(assert (=> b!3458314 (= res!1395364 (contains!6885 rules!2135 (get!11891 lt!1175179)))))

(declare-fun b!3458313 () Bool)

(declare-fun lt!1175180 () Unit!52487)

(declare-fun lt!1175178 () Unit!52487)

(assert (=> b!3458313 (= lt!1175180 lt!1175178)))

(assert (=> b!3458313 (rulesInvariant!4423 thiss!18206 (t!272529 rules!2135))))

(assert (=> b!3458313 (= lt!1175178 (lemmaInvariantOnRulesThenOnTail!432 thiss!18206 (h!42578 rules!2135) (t!272529 rules!2135)))))

(assert (=> b!3458313 (= e!2142603 (getRuleFromTag!1080 thiss!18206 (t!272529 rules!2135) (tag!6045 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun d!994578 () Bool)

(assert (=> d!994578 e!2142601))

(declare-fun res!1395363 () Bool)

(assert (=> d!994578 (=> res!1395363 e!2142601)))

(assert (=> d!994578 (= res!1395363 (isEmpty!21516 lt!1175179))))

(assert (=> d!994578 (= lt!1175179 e!2142602)))

(declare-fun c!591878 () Bool)

(assert (=> d!994578 (= c!591878 (and (is-Cons!37158 rules!2135) (= (tag!6045 (h!42578 rules!2135)) (tag!6045 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> d!994578 (rulesInvariant!4423 thiss!18206 rules!2135)))

(assert (=> d!994578 (= (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))) lt!1175179)))

(assert (= (and d!994578 c!591878) b!3458309))

(assert (= (and d!994578 (not c!591878)) b!3458311))

(assert (= (and b!3458311 c!591877) b!3458313))

(assert (= (and b!3458311 (not c!591877)) b!3458312))

(assert (= (and d!994578 (not res!1395363)) b!3458314))

(assert (= (and b!3458314 res!1395364) b!3458310))

(declare-fun m!3859109 () Bool)

(assert (=> b!3458310 m!3859109))

(assert (=> b!3458314 m!3859109))

(assert (=> b!3458314 m!3859109))

(declare-fun m!3859111 () Bool)

(assert (=> b!3458314 m!3859111))

(assert (=> b!3458313 m!3858911))

(assert (=> b!3458313 m!3858913))

(declare-fun m!3859113 () Bool)

(assert (=> b!3458313 m!3859113))

(declare-fun m!3859115 () Bool)

(assert (=> d!994578 m!3859115))

(assert (=> d!994578 m!3858183))

(assert (=> b!3457654 d!994578))

(declare-fun d!994580 () Bool)

(declare-fun lt!1175181 () BalanceConc!22112)

(assert (=> d!994580 (= (list!13524 lt!1175181) (printList!1574 thiss!18206 (list!13526 lt!1174852)))))

(assert (=> d!994580 (= lt!1175181 (printTailRec!1521 thiss!18206 lt!1174852 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!994580 (= (print!2091 thiss!18206 lt!1174852) lt!1175181)))

(declare-fun bs!560174 () Bool)

(assert (= bs!560174 d!994580))

(declare-fun m!3859117 () Bool)

(assert (=> bs!560174 m!3859117))

(assert (=> bs!560174 m!3858965))

(assert (=> bs!560174 m!3858965))

(declare-fun m!3859119 () Bool)

(assert (=> bs!560174 m!3859119))

(assert (=> bs!560174 m!3858149))

(assert (=> b!3457654 d!994580))

(declare-fun d!994582 () Bool)

(declare-fun e!2142605 () Bool)

(assert (=> d!994582 e!2142605))

(declare-fun res!1395365 () Bool)

(assert (=> d!994582 (=> (not res!1395365) (not e!2142605))))

(declare-fun lt!1175182 () BalanceConc!22114)

(assert (=> d!994582 (= res!1395365 (= (list!13526 lt!1175182) (Cons!37159 separatorToken!241 Nil!37159)))))

(assert (=> d!994582 (= lt!1175182 (singleton!1119 separatorToken!241))))

(assert (=> d!994582 (= (singletonSeq!2533 separatorToken!241) lt!1175182)))

(declare-fun b!3458315 () Bool)

(assert (=> b!3458315 (= e!2142605 (isBalanced!3412 (c!591767 lt!1175182)))))

(assert (= (and d!994582 res!1395365) b!3458315))

(declare-fun m!3859121 () Bool)

(assert (=> d!994582 m!3859121))

(declare-fun m!3859123 () Bool)

(assert (=> d!994582 m!3859123))

(declare-fun m!3859125 () Bool)

(assert (=> b!3458315 m!3859125))

(assert (=> b!3457654 d!994582))

(declare-fun d!994584 () Bool)

(declare-fun lt!1175183 () Bool)

(assert (=> d!994584 (= lt!1175183 (set.member (rule!8027 (h!42579 tokens!494)) (content!5183 rules!2135)))))

(declare-fun e!2142607 () Bool)

(assert (=> d!994584 (= lt!1175183 e!2142607)))

(declare-fun res!1395367 () Bool)

(assert (=> d!994584 (=> (not res!1395367) (not e!2142607))))

(assert (=> d!994584 (= res!1395367 (is-Cons!37158 rules!2135))))

(assert (=> d!994584 (= (contains!6885 rules!2135 (rule!8027 (h!42579 tokens!494))) lt!1175183)))

(declare-fun b!3458316 () Bool)

(declare-fun e!2142606 () Bool)

(assert (=> b!3458316 (= e!2142607 e!2142606)))

(declare-fun res!1395366 () Bool)

(assert (=> b!3458316 (=> res!1395366 e!2142606)))

(assert (=> b!3458316 (= res!1395366 (= (h!42578 rules!2135) (rule!8027 (h!42579 tokens!494))))))

(declare-fun b!3458317 () Bool)

(assert (=> b!3458317 (= e!2142606 (contains!6885 (t!272529 rules!2135) (rule!8027 (h!42579 tokens!494))))))

(assert (= (and d!994584 res!1395367) b!3458316))

(assert (= (and b!3458316 (not res!1395366)) b!3458317))

(assert (=> d!994584 m!3858387))

(declare-fun m!3859127 () Bool)

(assert (=> d!994584 m!3859127))

(declare-fun m!3859129 () Bool)

(assert (=> b!3458317 m!3859129))

(assert (=> b!3457654 d!994584))

(declare-fun b!3458328 () Bool)

(declare-fun e!2142614 () Bool)

(declare-fun lt!1175189 () tuple2!36872)

(assert (=> b!3458328 (= e!2142614 (not (isEmpty!21505 (_1!21570 lt!1175189))))))

(declare-fun b!3458330 () Bool)

(declare-fun e!2142616 () Bool)

(assert (=> b!3458330 (= e!2142616 (= (_2!21570 lt!1175189) lt!1174842))))

(declare-fun b!3458331 () Bool)

(assert (=> b!3458331 (= e!2142616 e!2142614)))

(declare-fun res!1395375 () Bool)

(assert (=> b!3458331 (= res!1395375 (< (size!28188 (_2!21570 lt!1175189)) (size!28188 lt!1174842)))))

(assert (=> b!3458331 (=> (not res!1395375) (not e!2142614))))

(declare-fun b!3458332 () Bool)

(declare-fun res!1395374 () Bool)

(declare-fun e!2142615 () Bool)

(assert (=> b!3458332 (=> (not res!1395374) (not e!2142615))))

(declare-datatypes ((tuple2!36886 0))(
  ( (tuple2!36887 (_1!21577 List!37283) (_2!21577 List!37281)) )
))
(declare-fun lexList!1448 (LexerInterface!5026 List!37282 List!37281) tuple2!36886)

(assert (=> b!3458332 (= res!1395374 (= (list!13526 (_1!21570 lt!1175189)) (_1!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174842)))))))

(declare-fun b!3458329 () Bool)

(assert (=> b!3458329 (= e!2142615 (= (list!13524 (_2!21570 lt!1175189)) (_2!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174842)))))))

(declare-fun d!994586 () Bool)

(assert (=> d!994586 e!2142615))

(declare-fun res!1395376 () Bool)

(assert (=> d!994586 (=> (not res!1395376) (not e!2142615))))

(assert (=> d!994586 (= res!1395376 e!2142616)))

(declare-fun c!591881 () Bool)

(assert (=> d!994586 (= c!591881 (> (size!28183 (_1!21570 lt!1175189)) 0))))

(declare-fun lexTailRecV2!1056 (LexerInterface!5026 List!37282 BalanceConc!22112 BalanceConc!22112 BalanceConc!22112 BalanceConc!22114) tuple2!36872)

(assert (=> d!994586 (= lt!1175189 (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174842 (BalanceConc!22113 Empty!11249) lt!1174842 (BalanceConc!22115 Empty!11250)))))

(assert (=> d!994586 (= (lex!2352 thiss!18206 rules!2135 lt!1174842) lt!1175189)))

(assert (= (and d!994586 c!591881) b!3458331))

(assert (= (and d!994586 (not c!591881)) b!3458330))

(assert (= (and b!3458331 res!1395375) b!3458328))

(assert (= (and d!994586 res!1395376) b!3458332))

(assert (= (and b!3458332 res!1395374) b!3458329))

(declare-fun m!3859133 () Bool)

(assert (=> b!3458331 m!3859133))

(declare-fun m!3859135 () Bool)

(assert (=> b!3458331 m!3859135))

(declare-fun m!3859137 () Bool)

(assert (=> d!994586 m!3859137))

(declare-fun m!3859139 () Bool)

(assert (=> d!994586 m!3859139))

(declare-fun m!3859141 () Bool)

(assert (=> b!3458328 m!3859141))

(declare-fun m!3859143 () Bool)

(assert (=> b!3458329 m!3859143))

(declare-fun m!3859145 () Bool)

(assert (=> b!3458329 m!3859145))

(assert (=> b!3458329 m!3859145))

(declare-fun m!3859147 () Bool)

(assert (=> b!3458329 m!3859147))

(declare-fun m!3859149 () Bool)

(assert (=> b!3458332 m!3859149))

(assert (=> b!3458332 m!3859145))

(assert (=> b!3458332 m!3859145))

(assert (=> b!3458332 m!3859147))

(assert (=> b!3457654 d!994586))

(declare-fun d!994590 () Bool)

(assert (=> d!994590 (dynLambda!15651 lambda!121777 (h!42579 (t!272530 tokens!494)))))

(declare-fun lt!1175190 () Unit!52487)

(assert (=> d!994590 (= lt!1175190 (choose!19990 tokens!494 lambda!121777 (h!42579 (t!272530 tokens!494))))))

(declare-fun e!2142617 () Bool)

(assert (=> d!994590 e!2142617))

(declare-fun res!1395377 () Bool)

(assert (=> d!994590 (=> (not res!1395377) (not e!2142617))))

(assert (=> d!994590 (= res!1395377 (forall!7916 tokens!494 lambda!121777))))

(assert (=> d!994590 (= (forallContained!1384 tokens!494 lambda!121777 (h!42579 (t!272530 tokens!494))) lt!1175190)))

(declare-fun b!3458333 () Bool)

(assert (=> b!3458333 (= e!2142617 (contains!6889 tokens!494 (h!42579 (t!272530 tokens!494))))))

(assert (= (and d!994590 res!1395377) b!3458333))

(declare-fun b_lambda!99497 () Bool)

(assert (=> (not b_lambda!99497) (not d!994590)))

(declare-fun m!3859151 () Bool)

(assert (=> d!994590 m!3859151))

(declare-fun m!3859153 () Bool)

(assert (=> d!994590 m!3859153))

(declare-fun m!3859155 () Bool)

(assert (=> d!994590 m!3859155))

(assert (=> b!3458333 m!3858405))

(assert (=> b!3457654 d!994590))

(declare-fun d!994592 () Bool)

(declare-fun lt!1175191 () Int)

(assert (=> d!994592 (= lt!1175191 (size!28190 (list!13526 (_1!21570 lt!1174845))))))

(assert (=> d!994592 (= lt!1175191 (size!28191 (c!591767 (_1!21570 lt!1174845))))))

(assert (=> d!994592 (= (size!28183 (_1!21570 lt!1174845)) lt!1175191)))

(declare-fun bs!560176 () Bool)

(assert (= bs!560176 d!994592))

(declare-fun m!3859157 () Bool)

(assert (=> bs!560176 m!3859157))

(assert (=> bs!560176 m!3859157))

(declare-fun m!3859159 () Bool)

(assert (=> bs!560176 m!3859159))

(declare-fun m!3859161 () Bool)

(assert (=> bs!560176 m!3859161))

(assert (=> b!3457654 d!994592))

(declare-fun d!994594 () Bool)

(declare-fun e!2142618 () Bool)

(assert (=> d!994594 e!2142618))

(declare-fun res!1395378 () Bool)

(assert (=> d!994594 (=> (not res!1395378) (not e!2142618))))

(assert (=> d!994594 (= res!1395378 (isDefined!5792 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))))))

(declare-fun lt!1175192 () Unit!52487)

(assert (=> d!994594 (= lt!1175192 (choose!19994 thiss!18206 rules!2135 lt!1174848 separatorToken!241))))

(assert (=> d!994594 (rulesInvariant!4423 thiss!18206 rules!2135)))

(assert (=> d!994594 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1080 thiss!18206 rules!2135 lt!1174848 separatorToken!241) lt!1175192)))

(declare-fun b!3458334 () Bool)

(declare-fun res!1395379 () Bool)

(assert (=> b!3458334 (=> (not res!1395379) (not e!2142618))))

(assert (=> b!3458334 (= res!1395379 (matchR!4780 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))) (list!13524 (charsOf!3451 separatorToken!241))))))

(declare-fun b!3458335 () Bool)

(assert (=> b!3458335 (= e!2142618 (= (rule!8027 separatorToken!241) (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))))))

(assert (= (and d!994594 res!1395378) b!3458334))

(assert (= (and b!3458334 res!1395379) b!3458335))

(assert (=> d!994594 m!3858115))

(assert (=> d!994594 m!3858115))

(declare-fun m!3859163 () Bool)

(assert (=> d!994594 m!3859163))

(declare-fun m!3859165 () Bool)

(assert (=> d!994594 m!3859165))

(assert (=> d!994594 m!3858183))

(assert (=> b!3458334 m!3858051))

(assert (=> b!3458334 m!3858053))

(assert (=> b!3458334 m!3858115))

(assert (=> b!3458334 m!3858051))

(assert (=> b!3458334 m!3858053))

(declare-fun m!3859167 () Bool)

(assert (=> b!3458334 m!3859167))

(assert (=> b!3458334 m!3858115))

(declare-fun m!3859169 () Bool)

(assert (=> b!3458334 m!3859169))

(assert (=> b!3458335 m!3858115))

(assert (=> b!3458335 m!3858115))

(assert (=> b!3458335 m!3859169))

(assert (=> b!3457654 d!994594))

(declare-fun d!994596 () Bool)

(declare-fun e!2142619 () Bool)

(assert (=> d!994596 e!2142619))

(declare-fun res!1395380 () Bool)

(assert (=> d!994596 (=> (not res!1395380) (not e!2142619))))

(declare-fun lt!1175193 () BalanceConc!22114)

(assert (=> d!994596 (= res!1395380 (= (list!13526 lt!1175193) (Cons!37159 (h!42579 (t!272530 tokens!494)) Nil!37159)))))

(assert (=> d!994596 (= lt!1175193 (singleton!1119 (h!42579 (t!272530 tokens!494))))))

(assert (=> d!994596 (= (singletonSeq!2533 (h!42579 (t!272530 tokens!494))) lt!1175193)))

(declare-fun b!3458336 () Bool)

(assert (=> b!3458336 (= e!2142619 (isBalanced!3412 (c!591767 lt!1175193)))))

(assert (= (and d!994596 res!1395380) b!3458336))

(declare-fun m!3859171 () Bool)

(assert (=> d!994596 m!3859171))

(declare-fun m!3859173 () Bool)

(assert (=> d!994596 m!3859173))

(declare-fun m!3859175 () Bool)

(assert (=> b!3458336 m!3859175))

(assert (=> b!3457654 d!994596))

(declare-fun d!994598 () Bool)

(declare-fun lt!1175199 () BalanceConc!22112)

(assert (=> d!994598 (= (list!13524 lt!1175199) (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174837 0) (list!13524 (BalanceConc!22113 Empty!11249))))))

(declare-fun e!2142620 () BalanceConc!22112)

(assert (=> d!994598 (= lt!1175199 e!2142620)))

(declare-fun c!591882 () Bool)

(assert (=> d!994598 (= c!591882 (>= 0 (size!28183 lt!1174837)))))

(declare-fun e!2142621 () Bool)

(assert (=> d!994598 e!2142621))

(declare-fun res!1395381 () Bool)

(assert (=> d!994598 (=> (not res!1395381) (not e!2142621))))

(assert (=> d!994598 (= res!1395381 (>= 0 0))))

(assert (=> d!994598 (= (printTailRec!1521 thiss!18206 lt!1174837 0 (BalanceConc!22113 Empty!11249)) lt!1175199)))

(declare-fun b!3458337 () Bool)

(assert (=> b!3458337 (= e!2142621 (<= 0 (size!28183 lt!1174837)))))

(declare-fun b!3458338 () Bool)

(assert (=> b!3458338 (= e!2142620 (BalanceConc!22113 Empty!11249))))

(declare-fun b!3458339 () Bool)

(assert (=> b!3458339 (= e!2142620 (printTailRec!1521 thiss!18206 lt!1174837 (+ 0 1) (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174837 0)))))))

(declare-fun lt!1175196 () List!37283)

(assert (=> b!3458339 (= lt!1175196 (list!13526 lt!1174837))))

(declare-fun lt!1175194 () Unit!52487)

(assert (=> b!3458339 (= lt!1175194 (lemmaDropApply!1162 lt!1175196 0))))

(assert (=> b!3458339 (= (head!7318 (drop!2010 lt!1175196 0)) (apply!8748 lt!1175196 0))))

(declare-fun lt!1175200 () Unit!52487)

(assert (=> b!3458339 (= lt!1175200 lt!1175194)))

(declare-fun lt!1175197 () List!37283)

(assert (=> b!3458339 (= lt!1175197 (list!13526 lt!1174837))))

(declare-fun lt!1175198 () Unit!52487)

(assert (=> b!3458339 (= lt!1175198 (lemmaDropTail!1046 lt!1175197 0))))

(assert (=> b!3458339 (= (tail!5430 (drop!2010 lt!1175197 0)) (drop!2010 lt!1175197 (+ 0 1)))))

(declare-fun lt!1175195 () Unit!52487)

(assert (=> b!3458339 (= lt!1175195 lt!1175198)))

(assert (= (and d!994598 res!1395381) b!3458337))

(assert (= (and d!994598 c!591882) b!3458338))

(assert (= (and d!994598 (not c!591882)) b!3458339))

(declare-fun m!3859177 () Bool)

(assert (=> d!994598 m!3859177))

(assert (=> d!994598 m!3858443))

(declare-fun m!3859179 () Bool)

(assert (=> d!994598 m!3859179))

(assert (=> d!994598 m!3858443))

(declare-fun m!3859181 () Bool)

(assert (=> d!994598 m!3859181))

(declare-fun m!3859183 () Bool)

(assert (=> d!994598 m!3859183))

(assert (=> d!994598 m!3859179))

(assert (=> b!3458337 m!3859177))

(declare-fun m!3859185 () Bool)

(assert (=> b!3458339 m!3859185))

(declare-fun m!3859187 () Bool)

(assert (=> b!3458339 m!3859187))

(declare-fun m!3859189 () Bool)

(assert (=> b!3458339 m!3859189))

(declare-fun m!3859191 () Bool)

(assert (=> b!3458339 m!3859191))

(assert (=> b!3458339 m!3859189))

(assert (=> b!3458339 m!3859187))

(declare-fun m!3859193 () Bool)

(assert (=> b!3458339 m!3859193))

(declare-fun m!3859195 () Bool)

(assert (=> b!3458339 m!3859195))

(declare-fun m!3859197 () Bool)

(assert (=> b!3458339 m!3859197))

(assert (=> b!3458339 m!3859185))

(declare-fun m!3859199 () Bool)

(assert (=> b!3458339 m!3859199))

(assert (=> b!3458339 m!3858923))

(declare-fun m!3859201 () Bool)

(assert (=> b!3458339 m!3859201))

(declare-fun m!3859203 () Bool)

(assert (=> b!3458339 m!3859203))

(assert (=> b!3458339 m!3859197))

(assert (=> b!3458339 m!3859203))

(declare-fun m!3859205 () Bool)

(assert (=> b!3458339 m!3859205))

(declare-fun m!3859207 () Bool)

(assert (=> b!3458339 m!3859207))

(assert (=> b!3457654 d!994598))

(declare-fun b!3458340 () Bool)

(declare-fun e!2142622 () Bool)

(declare-fun lt!1175203 () tuple2!36872)

(assert (=> b!3458340 (= e!2142622 (not (isEmpty!21505 (_1!21570 lt!1175203))))))

(declare-fun b!3458342 () Bool)

(declare-fun e!2142624 () Bool)

(assert (=> b!3458342 (= e!2142624 (= (_2!21570 lt!1175203) lt!1174856))))

(declare-fun b!3458343 () Bool)

(assert (=> b!3458343 (= e!2142624 e!2142622)))

(declare-fun res!1395383 () Bool)

(assert (=> b!3458343 (= res!1395383 (< (size!28188 (_2!21570 lt!1175203)) (size!28188 lt!1174856)))))

(assert (=> b!3458343 (=> (not res!1395383) (not e!2142622))))

(declare-fun b!3458344 () Bool)

(declare-fun res!1395382 () Bool)

(declare-fun e!2142623 () Bool)

(assert (=> b!3458344 (=> (not res!1395382) (not e!2142623))))

(assert (=> b!3458344 (= res!1395382 (= (list!13526 (_1!21570 lt!1175203)) (_1!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174856)))))))

(declare-fun b!3458341 () Bool)

(assert (=> b!3458341 (= e!2142623 (= (list!13524 (_2!21570 lt!1175203)) (_2!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174856)))))))

(declare-fun d!994600 () Bool)

(assert (=> d!994600 e!2142623))

(declare-fun res!1395384 () Bool)

(assert (=> d!994600 (=> (not res!1395384) (not e!2142623))))

(assert (=> d!994600 (= res!1395384 e!2142624)))

(declare-fun c!591883 () Bool)

(assert (=> d!994600 (= c!591883 (> (size!28183 (_1!21570 lt!1175203)) 0))))

(assert (=> d!994600 (= lt!1175203 (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174856 (BalanceConc!22113 Empty!11249) lt!1174856 (BalanceConc!22115 Empty!11250)))))

(assert (=> d!994600 (= (lex!2352 thiss!18206 rules!2135 lt!1174856) lt!1175203)))

(assert (= (and d!994600 c!591883) b!3458343))

(assert (= (and d!994600 (not c!591883)) b!3458342))

(assert (= (and b!3458343 res!1395383) b!3458340))

(assert (= (and d!994600 res!1395384) b!3458344))

(assert (= (and b!3458344 res!1395382) b!3458341))

(declare-fun m!3859213 () Bool)

(assert (=> b!3458343 m!3859213))

(declare-fun m!3859215 () Bool)

(assert (=> b!3458343 m!3859215))

(declare-fun m!3859217 () Bool)

(assert (=> d!994600 m!3859217))

(declare-fun m!3859219 () Bool)

(assert (=> d!994600 m!3859219))

(declare-fun m!3859221 () Bool)

(assert (=> b!3458340 m!3859221))

(declare-fun m!3859223 () Bool)

(assert (=> b!3458341 m!3859223))

(declare-fun m!3859225 () Bool)

(assert (=> b!3458341 m!3859225))

(assert (=> b!3458341 m!3859225))

(declare-fun m!3859227 () Bool)

(assert (=> b!3458341 m!3859227))

(declare-fun m!3859229 () Bool)

(assert (=> b!3458344 m!3859229))

(assert (=> b!3458344 m!3859225))

(assert (=> b!3458344 m!3859225))

(assert (=> b!3458344 m!3859227))

(assert (=> b!3457654 d!994600))

(declare-fun d!994604 () Bool)

(assert (=> d!994604 (= (inv!50322 (tag!6045 (h!42578 rules!2135))) (= (mod (str.len (value!175390 (tag!6045 (h!42578 rules!2135)))) 2) 0))))

(assert (=> b!3457637 d!994604))

(declare-fun d!994606 () Bool)

(declare-fun res!1395385 () Bool)

(declare-fun e!2142625 () Bool)

(assert (=> d!994606 (=> (not res!1395385) (not e!2142625))))

(assert (=> d!994606 (= res!1395385 (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (h!42578 rules!2135)))))))

(assert (=> d!994606 (= (inv!50325 (transformation!5437 (h!42578 rules!2135))) e!2142625)))

(declare-fun b!3458345 () Bool)

(assert (=> b!3458345 (= e!2142625 (equivClasses!2181 (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (h!42578 rules!2135)))))))

(assert (= (and d!994606 res!1395385) b!3458345))

(declare-fun m!3859231 () Bool)

(assert (=> d!994606 m!3859231))

(declare-fun m!3859233 () Bool)

(assert (=> b!3458345 m!3859233))

(assert (=> b!3457637 d!994606))

(declare-fun b!3458346 () Bool)

(declare-fun e!2142627 () Bool)

(assert (=> b!3458346 (= e!2142627 (inv!15 (value!175416 separatorToken!241)))))

(declare-fun d!994608 () Bool)

(declare-fun c!591884 () Bool)

(assert (=> d!994608 (= c!591884 (is-IntegerValue!17001 (value!175416 separatorToken!241)))))

(declare-fun e!2142628 () Bool)

(assert (=> d!994608 (= (inv!21 (value!175416 separatorToken!241)) e!2142628)))

(declare-fun b!3458347 () Bool)

(declare-fun e!2142626 () Bool)

(assert (=> b!3458347 (= e!2142628 e!2142626)))

(declare-fun c!591885 () Bool)

(assert (=> b!3458347 (= c!591885 (is-IntegerValue!17002 (value!175416 separatorToken!241)))))

(declare-fun b!3458348 () Bool)

(assert (=> b!3458348 (= e!2142628 (inv!16 (value!175416 separatorToken!241)))))

(declare-fun b!3458349 () Bool)

(assert (=> b!3458349 (= e!2142626 (inv!17 (value!175416 separatorToken!241)))))

(declare-fun b!3458350 () Bool)

(declare-fun res!1395386 () Bool)

(assert (=> b!3458350 (=> res!1395386 e!2142627)))

(assert (=> b!3458350 (= res!1395386 (not (is-IntegerValue!17003 (value!175416 separatorToken!241))))))

(assert (=> b!3458350 (= e!2142626 e!2142627)))

(assert (= (and d!994608 c!591884) b!3458348))

(assert (= (and d!994608 (not c!591884)) b!3458347))

(assert (= (and b!3458347 c!591885) b!3458349))

(assert (= (and b!3458347 (not c!591885)) b!3458350))

(assert (= (and b!3458350 (not res!1395386)) b!3458346))

(declare-fun m!3859235 () Bool)

(assert (=> b!3458346 m!3859235))

(declare-fun m!3859237 () Bool)

(assert (=> b!3458348 m!3859237))

(declare-fun m!3859239 () Bool)

(assert (=> b!3458349 m!3859239))

(assert (=> b!3457658 d!994608))

(declare-fun b!3458351 () Bool)

(declare-fun e!2142631 () Bool)

(declare-fun e!2142634 () Bool)

(assert (=> b!3458351 (= e!2142631 e!2142634)))

(declare-fun res!1395389 () Bool)

(assert (=> b!3458351 (=> (not res!1395389) (not e!2142634))))

(declare-fun lt!1175205 () Bool)

(assert (=> b!3458351 (= res!1395389 (not lt!1175205))))

(declare-fun b!3458352 () Bool)

(declare-fun e!2142630 () Bool)

(declare-fun call!249386 () Bool)

(assert (=> b!3458352 (= e!2142630 (= lt!1175205 call!249386))))

(declare-fun b!3458353 () Bool)

(declare-fun res!1395394 () Bool)

(assert (=> b!3458353 (=> res!1395394 e!2142631)))

(declare-fun e!2142632 () Bool)

(assert (=> b!3458353 (= res!1395394 e!2142632)))

(declare-fun res!1395390 () Bool)

(assert (=> b!3458353 (=> (not res!1395390) (not e!2142632))))

(assert (=> b!3458353 (= res!1395390 lt!1175205)))

(declare-fun b!3458354 () Bool)

(declare-fun e!2142635 () Bool)

(assert (=> b!3458354 (= e!2142634 e!2142635)))

(declare-fun res!1395387 () Bool)

(assert (=> b!3458354 (=> res!1395387 e!2142635)))

(assert (=> b!3458354 (= res!1395387 call!249386)))

(declare-fun b!3458355 () Bool)

(declare-fun e!2142633 () Bool)

(assert (=> b!3458355 (= e!2142633 (nullable!3487 (regex!5437 lt!1174855)))))

(declare-fun d!994610 () Bool)

(assert (=> d!994610 e!2142630))

(declare-fun c!591888 () Bool)

(assert (=> d!994610 (= c!591888 (is-EmptyExpr!10196 (regex!5437 lt!1174855)))))

(assert (=> d!994610 (= lt!1175205 e!2142633)))

(declare-fun c!591887 () Bool)

(assert (=> d!994610 (= c!591887 (isEmpty!21510 lt!1174846))))

(assert (=> d!994610 (validRegex!4643 (regex!5437 lt!1174855))))

(assert (=> d!994610 (= (matchR!4780 (regex!5437 lt!1174855) lt!1174846) lt!1175205)))

(declare-fun b!3458356 () Bool)

(declare-fun res!1395393 () Bool)

(assert (=> b!3458356 (=> (not res!1395393) (not e!2142632))))

(assert (=> b!3458356 (= res!1395393 (isEmpty!21510 (tail!5431 lt!1174846)))))

(declare-fun b!3458357 () Bool)

(assert (=> b!3458357 (= e!2142635 (not (= (head!7316 lt!1174846) (c!591765 (regex!5437 lt!1174855)))))))

(declare-fun b!3458358 () Bool)

(assert (=> b!3458358 (= e!2142633 (matchR!4780 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846)) (tail!5431 lt!1174846)))))

(declare-fun b!3458359 () Bool)

(declare-fun e!2142629 () Bool)

(assert (=> b!3458359 (= e!2142629 (not lt!1175205))))

(declare-fun b!3458360 () Bool)

(declare-fun res!1395392 () Bool)

(assert (=> b!3458360 (=> (not res!1395392) (not e!2142632))))

(assert (=> b!3458360 (= res!1395392 (not call!249386))))

(declare-fun b!3458361 () Bool)

(declare-fun res!1395391 () Bool)

(assert (=> b!3458361 (=> res!1395391 e!2142635)))

(assert (=> b!3458361 (= res!1395391 (not (isEmpty!21510 (tail!5431 lt!1174846))))))

(declare-fun b!3458362 () Bool)

(declare-fun res!1395388 () Bool)

(assert (=> b!3458362 (=> res!1395388 e!2142631)))

(assert (=> b!3458362 (= res!1395388 (not (is-ElementMatch!10196 (regex!5437 lt!1174855))))))

(assert (=> b!3458362 (= e!2142629 e!2142631)))

(declare-fun bm!249381 () Bool)

(assert (=> bm!249381 (= call!249386 (isEmpty!21510 lt!1174846))))

(declare-fun b!3458363 () Bool)

(assert (=> b!3458363 (= e!2142630 e!2142629)))

(declare-fun c!591886 () Bool)

(assert (=> b!3458363 (= c!591886 (is-EmptyLang!10196 (regex!5437 lt!1174855)))))

(declare-fun b!3458364 () Bool)

(assert (=> b!3458364 (= e!2142632 (= (head!7316 lt!1174846) (c!591765 (regex!5437 lt!1174855))))))

(assert (= (and d!994610 c!591887) b!3458355))

(assert (= (and d!994610 (not c!591887)) b!3458358))

(assert (= (and d!994610 c!591888) b!3458352))

(assert (= (and d!994610 (not c!591888)) b!3458363))

(assert (= (and b!3458363 c!591886) b!3458359))

(assert (= (and b!3458363 (not c!591886)) b!3458362))

(assert (= (and b!3458362 (not res!1395388)) b!3458353))

(assert (= (and b!3458353 res!1395390) b!3458360))

(assert (= (and b!3458360 res!1395392) b!3458356))

(assert (= (and b!3458356 res!1395393) b!3458364))

(assert (= (and b!3458353 (not res!1395394)) b!3458351))

(assert (= (and b!3458351 res!1395389) b!3458354))

(assert (= (and b!3458354 (not res!1395387)) b!3458361))

(assert (= (and b!3458361 (not res!1395391)) b!3458357))

(assert (= (or b!3458352 b!3458354 b!3458360) bm!249381))

(declare-fun m!3859241 () Bool)

(assert (=> b!3458358 m!3859241))

(assert (=> b!3458358 m!3859241))

(declare-fun m!3859243 () Bool)

(assert (=> b!3458358 m!3859243))

(declare-fun m!3859245 () Bool)

(assert (=> b!3458358 m!3859245))

(assert (=> b!3458358 m!3859243))

(assert (=> b!3458358 m!3859245))

(declare-fun m!3859247 () Bool)

(assert (=> b!3458358 m!3859247))

(declare-fun m!3859249 () Bool)

(assert (=> b!3458355 m!3859249))

(declare-fun m!3859251 () Bool)

(assert (=> d!994610 m!3859251))

(declare-fun m!3859253 () Bool)

(assert (=> d!994610 m!3859253))

(assert (=> bm!249381 m!3859251))

(assert (=> b!3458361 m!3859245))

(assert (=> b!3458361 m!3859245))

(declare-fun m!3859255 () Bool)

(assert (=> b!3458361 m!3859255))

(assert (=> b!3458357 m!3859241))

(assert (=> b!3458356 m!3859245))

(assert (=> b!3458356 m!3859245))

(assert (=> b!3458356 m!3859255))

(assert (=> b!3458364 m!3859241))

(assert (=> b!3457659 d!994610))

(declare-fun d!994612 () Bool)

(assert (=> d!994612 (= (get!11891 lt!1174832) (v!36836 lt!1174832))))

(assert (=> b!3457659 d!994612))

(declare-fun lt!1175208 () Bool)

(declare-fun d!994614 () Bool)

(declare-fun isEmpty!21518 (List!37283) Bool)

(assert (=> d!994614 (= lt!1175208 (isEmpty!21518 (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823)))))))

(declare-fun isEmpty!21519 (Conc!11250) Bool)

(assert (=> d!994614 (= lt!1175208 (isEmpty!21519 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823)))))))

(assert (=> d!994614 (= (isEmpty!21505 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823))) lt!1175208)))

(declare-fun bs!560178 () Bool)

(assert (= bs!560178 d!994614))

(declare-fun m!3859257 () Bool)

(assert (=> bs!560178 m!3859257))

(assert (=> bs!560178 m!3859257))

(declare-fun m!3859259 () Bool)

(assert (=> bs!560178 m!3859259))

(declare-fun m!3859261 () Bool)

(assert (=> bs!560178 m!3859261))

(assert (=> b!3457657 d!994614))

(declare-fun b!3458365 () Bool)

(declare-fun e!2142636 () Bool)

(declare-fun lt!1175209 () tuple2!36872)

(assert (=> b!3458365 (= e!2142636 (not (isEmpty!21505 (_1!21570 lt!1175209))))))

(declare-fun b!3458367 () Bool)

(declare-fun e!2142638 () Bool)

(assert (=> b!3458367 (= e!2142638 (= (_2!21570 lt!1175209) lt!1174823))))

(declare-fun b!3458368 () Bool)

(assert (=> b!3458368 (= e!2142638 e!2142636)))

(declare-fun res!1395396 () Bool)

(assert (=> b!3458368 (= res!1395396 (< (size!28188 (_2!21570 lt!1175209)) (size!28188 lt!1174823)))))

(assert (=> b!3458368 (=> (not res!1395396) (not e!2142636))))

(declare-fun b!3458369 () Bool)

(declare-fun res!1395395 () Bool)

(declare-fun e!2142637 () Bool)

(assert (=> b!3458369 (=> (not res!1395395) (not e!2142637))))

(assert (=> b!3458369 (= res!1395395 (= (list!13526 (_1!21570 lt!1175209)) (_1!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174823)))))))

(declare-fun b!3458366 () Bool)

(assert (=> b!3458366 (= e!2142637 (= (list!13524 (_2!21570 lt!1175209)) (_2!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174823)))))))

(declare-fun d!994616 () Bool)

(assert (=> d!994616 e!2142637))

(declare-fun res!1395397 () Bool)

(assert (=> d!994616 (=> (not res!1395397) (not e!2142637))))

(assert (=> d!994616 (= res!1395397 e!2142638)))

(declare-fun c!591889 () Bool)

(assert (=> d!994616 (= c!591889 (> (size!28183 (_1!21570 lt!1175209)) 0))))

(assert (=> d!994616 (= lt!1175209 (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174823 (BalanceConc!22113 Empty!11249) lt!1174823 (BalanceConc!22115 Empty!11250)))))

(assert (=> d!994616 (= (lex!2352 thiss!18206 rules!2135 lt!1174823) lt!1175209)))

(assert (= (and d!994616 c!591889) b!3458368))

(assert (= (and d!994616 (not c!591889)) b!3458367))

(assert (= (and b!3458368 res!1395396) b!3458365))

(assert (= (and d!994616 res!1395397) b!3458369))

(assert (= (and b!3458369 res!1395395) b!3458366))

(declare-fun m!3859263 () Bool)

(assert (=> b!3458368 m!3859263))

(declare-fun m!3859265 () Bool)

(assert (=> b!3458368 m!3859265))

(declare-fun m!3859267 () Bool)

(assert (=> d!994616 m!3859267))

(declare-fun m!3859269 () Bool)

(assert (=> d!994616 m!3859269))

(declare-fun m!3859271 () Bool)

(assert (=> b!3458365 m!3859271))

(declare-fun m!3859273 () Bool)

(assert (=> b!3458366 m!3859273))

(declare-fun m!3859275 () Bool)

(assert (=> b!3458366 m!3859275))

(assert (=> b!3458366 m!3859275))

(declare-fun m!3859277 () Bool)

(assert (=> b!3458366 m!3859277))

(declare-fun m!3859279 () Bool)

(assert (=> b!3458369 m!3859279))

(assert (=> b!3458369 m!3859275))

(assert (=> b!3458369 m!3859275))

(assert (=> b!3458369 m!3859277))

(assert (=> b!3457657 d!994616))

(declare-fun d!994618 () Bool)

(declare-fun fromListB!1782 (List!37281) BalanceConc!22112)

(assert (=> d!994618 (= (seqFromList!3928 lt!1174846) (fromListB!1782 lt!1174846))))

(declare-fun bs!560179 () Bool)

(assert (= bs!560179 d!994618))

(declare-fun m!3859281 () Bool)

(assert (=> bs!560179 m!3859281))

(assert (=> b!3457657 d!994618))

(declare-fun d!994620 () Bool)

(declare-fun lt!1175210 () Token!10240)

(assert (=> d!994620 (= lt!1175210 (apply!8748 (list!13526 (_1!21570 lt!1174845)) 0))))

(assert (=> d!994620 (= lt!1175210 (apply!8749 (c!591767 (_1!21570 lt!1174845)) 0))))

(declare-fun e!2142639 () Bool)

(assert (=> d!994620 e!2142639))

(declare-fun res!1395398 () Bool)

(assert (=> d!994620 (=> (not res!1395398) (not e!2142639))))

(assert (=> d!994620 (= res!1395398 (<= 0 0))))

(assert (=> d!994620 (= (apply!8744 (_1!21570 lt!1174845) 0) lt!1175210)))

(declare-fun b!3458370 () Bool)

(assert (=> b!3458370 (= e!2142639 (< 0 (size!28183 (_1!21570 lt!1174845))))))

(assert (= (and d!994620 res!1395398) b!3458370))

(assert (=> d!994620 m!3859157))

(assert (=> d!994620 m!3859157))

(declare-fun m!3859283 () Bool)

(assert (=> d!994620 m!3859283))

(declare-fun m!3859285 () Bool)

(assert (=> d!994620 m!3859285))

(assert (=> b!3458370 m!3858151))

(assert (=> b!3457636 d!994620))

(declare-fun b!3458373 () Bool)

(declare-fun e!2142642 () Bool)

(assert (=> b!3458373 (= e!2142642 true)))

(declare-fun b!3458372 () Bool)

(declare-fun e!2142641 () Bool)

(assert (=> b!3458372 (= e!2142641 e!2142642)))

(declare-fun b!3458371 () Bool)

(declare-fun e!2142640 () Bool)

(assert (=> b!3458371 (= e!2142640 e!2142641)))

(assert (=> b!3457679 e!2142640))

(assert (= b!3458372 b!3458373))

(assert (= b!3458371 b!3458372))

(assert (= (and b!3457679 (is-Cons!37158 (t!272529 rules!2135))) b!3458371))

(assert (=> b!3458373 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135))))) (dynLambda!15646 order!19781 lambda!121777))))

(assert (=> b!3458373 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135))))) (dynLambda!15646 order!19781 lambda!121777))))

(declare-fun b!3458384 () Bool)

(declare-fun b_free!89869 () Bool)

(declare-fun b_next!90573 () Bool)

(assert (=> b!3458384 (= b_free!89869 (not b_next!90573))))

(declare-fun tb!188321 () Bool)

(declare-fun t!272598 () Bool)

(assert (=> (and b!3458384 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272598) tb!188321))

(declare-fun result!232292 () Bool)

(assert (= result!232292 result!232274))

(assert (=> d!994536 t!272598))

(declare-fun b_and!243149 () Bool)

(declare-fun tp!1077795 () Bool)

(assert (=> b!3458384 (= tp!1077795 (and (=> t!272598 result!232292) b_and!243149))))

(declare-fun b_free!89871 () Bool)

(declare-fun b_next!90575 () Bool)

(assert (=> b!3458384 (= b_free!89871 (not b_next!90575))))

(declare-fun tb!188323 () Bool)

(declare-fun t!272600 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) t!272600) tb!188323))

(declare-fun result!232294 () Bool)

(assert (= result!232294 result!232268))

(assert (=> d!994490 t!272600))

(declare-fun tb!188325 () Bool)

(declare-fun t!272602 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272602) tb!188325))

(declare-fun result!232296 () Bool)

(assert (= result!232296 result!232248))

(assert (=> b!3458066 t!272602))

(declare-fun tb!188327 () Bool)

(declare-fun t!272604 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) t!272604) tb!188327))

(declare-fun result!232298 () Bool)

(assert (= result!232298 result!232240))

(assert (=> b!3457887 t!272604))

(assert (=> d!994448 t!272602))

(assert (=> d!994476 t!272604))

(declare-fun b_and!243151 () Bool)

(declare-fun tp!1077797 () Bool)

(assert (=> b!3458384 (= tp!1077797 (and (=> t!272604 result!232298) (=> t!272602 result!232296) (=> t!272600 result!232294) b_and!243151))))

(declare-fun e!2142652 () Bool)

(assert (=> b!3458384 (= e!2142652 (and tp!1077795 tp!1077797))))

(declare-fun e!2142653 () Bool)

(declare-fun b!3458383 () Bool)

(declare-fun tp!1077796 () Bool)

(assert (=> b!3458383 (= e!2142653 (and tp!1077796 (inv!50322 (tag!6045 (h!42578 (t!272529 rules!2135)))) (inv!50325 (transformation!5437 (h!42578 (t!272529 rules!2135)))) e!2142652))))

(declare-fun b!3458382 () Bool)

(declare-fun e!2142654 () Bool)

(declare-fun tp!1077794 () Bool)

(assert (=> b!3458382 (= e!2142654 (and e!2142653 tp!1077794))))

(assert (=> b!3457640 (= tp!1077728 e!2142654)))

(assert (= b!3458383 b!3458384))

(assert (= b!3458382 b!3458383))

(assert (= (and b!3457640 (is-Cons!37158 (t!272529 rules!2135))) b!3458382))

(declare-fun m!3859287 () Bool)

(assert (=> b!3458383 m!3859287))

(declare-fun m!3859289 () Bool)

(assert (=> b!3458383 m!3859289))

(declare-fun b!3458395 () Bool)

(declare-fun e!2142657 () Bool)

(declare-fun tp_is_empty!17555 () Bool)

(assert (=> b!3458395 (= e!2142657 tp_is_empty!17555)))

(declare-fun b!3458398 () Bool)

(declare-fun tp!1077812 () Bool)

(declare-fun tp!1077811 () Bool)

(assert (=> b!3458398 (= e!2142657 (and tp!1077812 tp!1077811))))

(declare-fun b!3458396 () Bool)

(declare-fun tp!1077809 () Bool)

(declare-fun tp!1077810 () Bool)

(assert (=> b!3458396 (= e!2142657 (and tp!1077809 tp!1077810))))

(assert (=> b!3457632 (= tp!1077733 e!2142657)))

(declare-fun b!3458397 () Bool)

(declare-fun tp!1077808 () Bool)

(assert (=> b!3458397 (= e!2142657 tp!1077808)))

(assert (= (and b!3457632 (is-ElementMatch!10196 (regex!5437 (rule!8027 separatorToken!241)))) b!3458395))

(assert (= (and b!3457632 (is-Concat!15863 (regex!5437 (rule!8027 separatorToken!241)))) b!3458396))

(assert (= (and b!3457632 (is-Star!10196 (regex!5437 (rule!8027 separatorToken!241)))) b!3458397))

(assert (= (and b!3457632 (is-Union!10196 (regex!5437 (rule!8027 separatorToken!241)))) b!3458398))

(declare-fun b!3458412 () Bool)

(declare-fun b_free!89873 () Bool)

(declare-fun b_next!90577 () Bool)

(assert (=> b!3458412 (= b_free!89873 (not b_next!90577))))

(declare-fun t!272606 () Bool)

(declare-fun tb!188329 () Bool)

(assert (=> (and b!3458412 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272606) tb!188329))

(declare-fun result!232304 () Bool)

(assert (= result!232304 result!232274))

(assert (=> d!994536 t!272606))

(declare-fun tp!1077823 () Bool)

(declare-fun b_and!243153 () Bool)

(assert (=> b!3458412 (= tp!1077823 (and (=> t!272606 result!232304) b_and!243153))))

(declare-fun b_free!89875 () Bool)

(declare-fun b_next!90579 () Bool)

(assert (=> b!3458412 (= b_free!89875 (not b_next!90579))))

(declare-fun t!272608 () Bool)

(declare-fun tb!188331 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) t!272608) tb!188331))

(declare-fun result!232306 () Bool)

(assert (= result!232306 result!232268))

(assert (=> d!994490 t!272608))

(declare-fun t!272610 () Bool)

(declare-fun tb!188333 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272610) tb!188333))

(declare-fun result!232308 () Bool)

(assert (= result!232308 result!232248))

(assert (=> b!3458066 t!272610))

(declare-fun t!272612 () Bool)

(declare-fun tb!188335 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) t!272612) tb!188335))

(declare-fun result!232310 () Bool)

(assert (= result!232310 result!232240))

(assert (=> b!3457887 t!272612))

(assert (=> d!994448 t!272610))

(assert (=> d!994476 t!272612))

(declare-fun tp!1077825 () Bool)

(declare-fun b_and!243155 () Bool)

(assert (=> b!3458412 (= tp!1077825 (and (=> t!272612 result!232310) (=> t!272610 result!232308) (=> t!272608 result!232306) b_and!243155))))

(declare-fun e!2142673 () Bool)

(declare-fun e!2142670 () Bool)

(declare-fun b!3458409 () Bool)

(declare-fun tp!1077826 () Bool)

(assert (=> b!3458409 (= e!2142670 (and (inv!50326 (h!42579 (t!272530 tokens!494))) e!2142673 tp!1077826))))

(declare-fun tp!1077827 () Bool)

(declare-fun e!2142675 () Bool)

(declare-fun b!3458411 () Bool)

(declare-fun e!2142671 () Bool)

(assert (=> b!3458411 (= e!2142675 (and tp!1077827 (inv!50322 (tag!6045 (rule!8027 (h!42579 (t!272530 tokens!494))))) (inv!50325 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) e!2142671))))

(assert (=> b!3457635 (= tp!1077731 e!2142670)))

(assert (=> b!3458412 (= e!2142671 (and tp!1077823 tp!1077825))))

(declare-fun b!3458410 () Bool)

(declare-fun tp!1077824 () Bool)

(assert (=> b!3458410 (= e!2142673 (and (inv!21 (value!175416 (h!42579 (t!272530 tokens!494)))) e!2142675 tp!1077824))))

(assert (= b!3458411 b!3458412))

(assert (= b!3458410 b!3458411))

(assert (= b!3458409 b!3458410))

(assert (= (and b!3457635 (is-Cons!37159 (t!272530 tokens!494))) b!3458409))

(declare-fun m!3859291 () Bool)

(assert (=> b!3458409 m!3859291))

(declare-fun m!3859293 () Bool)

(assert (=> b!3458411 m!3859293))

(declare-fun m!3859295 () Bool)

(assert (=> b!3458411 m!3859295))

(declare-fun m!3859297 () Bool)

(assert (=> b!3458410 m!3859297))

(declare-fun b!3458413 () Bool)

(declare-fun e!2142676 () Bool)

(assert (=> b!3458413 (= e!2142676 tp_is_empty!17555)))

(declare-fun b!3458416 () Bool)

(declare-fun tp!1077832 () Bool)

(declare-fun tp!1077831 () Bool)

(assert (=> b!3458416 (= e!2142676 (and tp!1077832 tp!1077831))))

(declare-fun b!3458414 () Bool)

(declare-fun tp!1077829 () Bool)

(declare-fun tp!1077830 () Bool)

(assert (=> b!3458414 (= e!2142676 (and tp!1077829 tp!1077830))))

(assert (=> b!3457656 (= tp!1077736 e!2142676)))

(declare-fun b!3458415 () Bool)

(declare-fun tp!1077828 () Bool)

(assert (=> b!3458415 (= e!2142676 tp!1077828)))

(assert (= (and b!3457656 (is-ElementMatch!10196 (regex!5437 (rule!8027 (h!42579 tokens!494))))) b!3458413))

(assert (= (and b!3457656 (is-Concat!15863 (regex!5437 (rule!8027 (h!42579 tokens!494))))) b!3458414))

(assert (= (and b!3457656 (is-Star!10196 (regex!5437 (rule!8027 (h!42579 tokens!494))))) b!3458415))

(assert (= (and b!3457656 (is-Union!10196 (regex!5437 (rule!8027 (h!42579 tokens!494))))) b!3458416))

(declare-fun b!3458417 () Bool)

(declare-fun e!2142677 () Bool)

(assert (=> b!3458417 (= e!2142677 tp_is_empty!17555)))

(declare-fun b!3458420 () Bool)

(declare-fun tp!1077837 () Bool)

(declare-fun tp!1077836 () Bool)

(assert (=> b!3458420 (= e!2142677 (and tp!1077837 tp!1077836))))

(declare-fun b!3458418 () Bool)

(declare-fun tp!1077834 () Bool)

(declare-fun tp!1077835 () Bool)

(assert (=> b!3458418 (= e!2142677 (and tp!1077834 tp!1077835))))

(assert (=> b!3457637 (= tp!1077735 e!2142677)))

(declare-fun b!3458419 () Bool)

(declare-fun tp!1077833 () Bool)

(assert (=> b!3458419 (= e!2142677 tp!1077833)))

(assert (= (and b!3457637 (is-ElementMatch!10196 (regex!5437 (h!42578 rules!2135)))) b!3458417))

(assert (= (and b!3457637 (is-Concat!15863 (regex!5437 (h!42578 rules!2135)))) b!3458418))

(assert (= (and b!3457637 (is-Star!10196 (regex!5437 (h!42578 rules!2135)))) b!3458419))

(assert (= (and b!3457637 (is-Union!10196 (regex!5437 (h!42578 rules!2135)))) b!3458420))

(declare-fun b!3458429 () Bool)

(declare-fun e!2142682 () Bool)

(declare-fun tp!1077840 () Bool)

(assert (=> b!3458429 (= e!2142682 (and tp_is_empty!17555 tp!1077840))))

(assert (=> b!3457658 (= tp!1077727 e!2142682)))

(assert (= (and b!3457658 (is-Cons!37157 (originalCharacters!6151 separatorToken!241))) b!3458429))

(declare-fun b!3458432 () Bool)

(declare-fun e!2142685 () Bool)

(declare-fun tp!1077841 () Bool)

(assert (=> b!3458432 (= e!2142685 (and tp_is_empty!17555 tp!1077841))))

(assert (=> b!3457668 (= tp!1077729 e!2142685)))

(assert (= (and b!3457668 (is-Cons!37157 (originalCharacters!6151 (h!42579 tokens!494)))) b!3458432))

(declare-fun b_lambda!99499 () Bool)

(assert (= b_lambda!99479 (or (and b!3458412 b_free!89875 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457644 b_free!89847) (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457648 b_free!89851 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) b_lambda!99499)))

(declare-fun b_lambda!99501 () Bool)

(assert (= b_lambda!99489 (or (and b!3458412 b_free!89875 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457644 b_free!89847) (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457648 b_free!89851 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) b_lambda!99501)))

(declare-fun b_lambda!99503 () Bool)

(assert (= b_lambda!99477 (or (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3458412 b_free!89875 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3457644 b_free!89847 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3457648 b_free!89851) b_lambda!99503)))

(declare-fun b_lambda!99505 () Bool)

(assert (= b_lambda!99487 (or (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3457648 b_free!89851 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3457644 b_free!89847 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3458412 b_free!89875) b_lambda!99505)))

(declare-fun b_lambda!99507 () Bool)

(assert (= b_lambda!99475 (or b!3457664 b_lambda!99507)))

(declare-fun bs!560180 () Bool)

(declare-fun d!994622 () Bool)

(assert (= bs!560180 (and d!994622 b!3457664)))

(assert (=> bs!560180 (= (dynLambda!15651 lambda!121776 (h!42579 tokens!494)) (not (isSeparator!5437 (rule!8027 (h!42579 tokens!494)))))))

(assert (=> d!994402 d!994622))

(declare-fun b_lambda!99509 () Bool)

(assert (= b_lambda!99471 (or b!3457664 b_lambda!99509)))

(assert (=> b!3457842 d!994622))

(declare-fun b_lambda!99511 () Bool)

(assert (= b_lambda!99485 (or (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3458412 b_free!89875 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3457644 b_free!89847 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))))) (and b!3457648 b_free!89851) b_lambda!99511)))

(declare-fun b_lambda!99513 () Bool)

(assert (= b_lambda!99473 (or b!3457664 b_lambda!99513)))

(declare-fun bs!560181 () Bool)

(declare-fun d!994624 () Bool)

(assert (= bs!560181 (and d!994624 b!3457664)))

(assert (=> bs!560181 (= (dynLambda!15651 lambda!121776 (h!42579 (t!272530 tokens!494))) (not (isSeparator!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))))

(assert (=> d!994400 d!994624))

(declare-fun b_lambda!99515 () Bool)

(assert (= b_lambda!99497 (or b!3457654 b_lambda!99515)))

(declare-fun bs!560182 () Bool)

(declare-fun d!994626 () Bool)

(assert (= bs!560182 (and d!994626 b!3457654)))

(assert (=> bs!560182 (= (dynLambda!15651 lambda!121777 (h!42579 (t!272530 tokens!494))) (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 (t!272530 tokens!494))))))

(assert (=> bs!560182 m!3858135))

(assert (=> d!994590 d!994626))

(declare-fun b_lambda!99517 () Bool)

(assert (= b_lambda!99491 (or (and b!3457644 b_free!89845) (and b!3458412 b_free!89873 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3458384 b_free!89869 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457648 b_free!89849 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457652 b_free!89853 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) b_lambda!99517)))

(push 1)

(assert (not b!3458065))

(assert (not b!3458124))

(assert (not b!3457975))

(assert (not b!3457988))

(assert (not d!994546))

(assert (not b!3458172))

(assert b_and!243141)

(assert (not bm!249361))

(assert b_and!243149)

(assert (not b!3458344))

(assert (not d!994522))

(assert (not d!994406))

(assert (not b_next!90573))

(assert (not b!3457998))

(assert (not b!3458348))

(assert (not b!3458364))

(assert (not b!3458419))

(assert (not d!994400))

(assert (not b!3458317))

(assert (not b!3457834))

(assert (not b_next!90549))

(assert (not b!3457888))

(assert (not d!994528))

(assert (not d!994470))

(assert b_and!243135)

(assert (not d!994472))

(assert (not d!994402))

(assert (not b_lambda!99515))

(assert (not b!3458061))

(assert (not d!994610))

(assert (not b!3458365))

(assert (not b!3458369))

(assert (not b_next!90575))

(assert (not b!3458336))

(assert b_and!243153)

(assert b_and!243133)

(assert (not b!3458175))

(assert (not d!994418))

(assert (not tb!188303))

(assert b_and!243131)

(assert (not d!994518))

(assert (not b!3457849))

(assert (not d!994448))

(assert (not b!3458341))

(assert (not d!994452))

(assert (not b!3457974))

(assert (not b!3458355))

(assert (not b!3457893))

(assert (not bm!249381))

(assert (not d!994550))

(assert (not b!3457986))

(assert (not b!3458335))

(assert (not b!3458345))

(assert (not bm!249351))

(assert (not b_lambda!99507))

(assert (not b!3458368))

(assert (not d!994478))

(assert (not d!994414))

(assert (not d!994394))

(assert (not b!3457949))

(assert (not b!3458059))

(assert (not b!3458420))

(assert (not b!3458137))

(assert (not b!3458356))

(assert (not b_next!90553))

(assert (not d!994474))

(assert (not b!3458340))

(assert (not b!3458358))

(assert (not b!3458333))

(assert (not b!3457853))

(assert (not b!3458310))

(assert (not d!994594))

(assert (not b!3458349))

(assert (not d!994600))

(assert (not bs!560182))

(assert (not b!3458415))

(assert (not b!3458418))

(assert (not d!994410))

(assert (not b_lambda!99509))

(assert (not b!3457881))

(assert (not b!3457850))

(assert (not b_next!90579))

(assert (not b!3457980))

(assert (not d!994620))

(assert (not b!3458081))

(assert (not b!3457932))

(assert (not d!994432))

(assert (not b!3458370))

(assert (not b!3457987))

(assert (not b!3458040))

(assert (not b_next!90559))

(assert (not tb!188279))

(assert (not b!3458343))

(assert (not d!994490))

(assert (not b!3458123))

(assert (not d!994396))

(assert (not b!3458001))

(assert b_and!243137)

(assert (not b!3458409))

(assert (not b_lambda!99501))

(assert (not b!3458313))

(assert (not d!994570))

(assert (not b!3457887))

(assert (not d!994446))

(assert (not b!3458337))

(assert (not b!3458066))

(assert (not b!3458361))

(assert (not d!994614))

(assert (not b!3457952))

(assert (not bm!249368))

(assert (not d!994422))

(assert (not d!994412))

(assert (not bm!249364))

(assert (not b!3457951))

(assert (not b!3458082))

(assert (not d!994618))

(assert (not d!994598))

(assert (not b!3458383))

(assert (not d!994596))

(assert (not d!994390))

(assert (not b!3458332))

(assert (not d!994578))

(assert (not d!994388))

(assert (not tb!188309))

(assert (not b!3458346))

(assert (not b!3458126))

(assert (not b!3458410))

(assert (not b!3457997))

(assert (not b_next!90551))

(assert (not b!3457847))

(assert (not b!3458039))

(assert (not b_next!90577))

(assert (not b_next!90557))

(assert (not bm!249365))

(assert (not b!3457837))

(assert (not b!3457862))

(assert (not d!994586))

(assert (not tb!188285))

(assert (not b!3458429))

(assert (not b!3458339))

(assert (not b!3457930))

(assert (not d!994590))

(assert (not b!3458176))

(assert (not b!3458195))

(assert (not b!3457985))

(assert (not b!3457931))

(assert (not b!3457894))

(assert (not d!994408))

(assert (not b!3457864))

(assert (not b!3457972))

(assert (not b!3457827))

(assert (not b!3458396))

(assert (not b_lambda!99499))

(assert (not bm!249362))

(assert (not b!3457977))

(assert (not b!3458314))

(assert (not d!994476))

(assert (not bm!249348))

(assert tp_is_empty!17555)

(assert (not b!3458068))

(assert (not b!3458382))

(assert (not b!3458411))

(assert b_and!243155)

(assert (not b_lambda!99513))

(assert (not b!3458125))

(assert (not b!3458334))

(assert (not d!994492))

(assert (not b!3458074))

(assert (not d!994584))

(assert (not d!994440))

(assert (not b!3457991))

(assert (not d!994502))

(assert (not d!994454))

(assert (not b!3457896))

(assert (not b!3458143))

(assert (not b!3458397))

(assert (not b!3458315))

(assert (not d!994606))

(assert (not d!994500))

(assert (not d!994530))

(assert (not b!3457976))

(assert (not b_lambda!99505))

(assert (not b!3457929))

(assert (not bm!249366))

(assert (not d!994574))

(assert (not b!3458234))

(assert (not b!3458329))

(assert (not d!994488))

(assert (not b!3458073))

(assert b_and!243139)

(assert (not d!994534))

(assert (not b!3458063))

(assert (not b!3458049))

(assert b_and!243151)

(assert (not b!3457880))

(assert (not d!994568))

(assert (not b!3457854))

(assert (not b!3457867))

(assert (not b!3457826))

(assert (not b!3458432))

(assert (not b!3457973))

(assert (not d!994436))

(assert (not b!3458053))

(assert (not bm!249352))

(assert (not b!3458052))

(assert (not b!3458414))

(assert (not b!3458048))

(assert (not b!3458366))

(assert (not d!994426))

(assert (not d!994438))

(assert (not b!3457935))

(assert (not b!3458128))

(assert (not b!3457938))

(assert (not b!3458083))

(assert (not b!3458136))

(assert (not d!994442))

(assert (not b!3457872))

(assert (not b_lambda!99511))

(assert (not b!3458131))

(assert (not b!3457994))

(assert (not b!3458371))

(assert (not b!3458080))

(assert (not b!3458328))

(assert (not b!3458331))

(assert (not b!3457895))

(assert (not b_lambda!99517))

(assert (not b!3458129))

(assert (not b_lambda!99503))

(assert (not d!994580))

(assert (not b!3458045))

(assert (not b_next!90555))

(assert (not d!994496))

(assert (not d!994444))

(assert (not d!994582))

(assert (not d!994592))

(assert (not d!994616))

(assert (not b!3457882))

(assert (not d!994404))

(assert (not d!994392))

(assert (not d!994504))

(assert (not d!994480))

(assert (not b!3457978))

(assert (not b!3458398))

(assert (not b!3458067))

(assert (not d!994526))

(assert (not b!3458416))

(assert (not b!3457846))

(assert (not b!3458130))

(assert (not b!3458044))

(assert (not b!3458357))

(assert (not b!3457843))

(assert (not b!3458197))

(assert (not d!994428))

(check-sat)

(pop 1)

(push 1)

(assert b_and!243135)

(assert (not b_next!90575))

(assert (not b_next!90553))

(assert (not b_next!90579))

(assert (not b_next!90551))

(assert b_and!243155)

(assert (not b_next!90555))

(assert b_and!243141)

(assert b_and!243149)

(assert (not b_next!90573))

(assert (not b_next!90549))

(assert b_and!243153)

(assert b_and!243133)

(assert b_and!243131)

(assert (not b_next!90559))

(assert b_and!243137)

(assert (not b_next!90577))

(assert (not b_next!90557))

(assert b_and!243151)

(assert b_and!243139)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!994748 () Bool)

(declare-fun lt!1175305 () Int)

(assert (=> d!994748 (= lt!1175305 (size!28190 (list!13526 lt!1174852)))))

(assert (=> d!994748 (= lt!1175305 (size!28191 (c!591767 lt!1174852)))))

(assert (=> d!994748 (= (size!28183 lt!1174852) lt!1175305)))

(declare-fun bs!560200 () Bool)

(assert (= bs!560200 d!994748))

(assert (=> bs!560200 m!3858965))

(assert (=> bs!560200 m!3858965))

(declare-fun m!3859757 () Bool)

(assert (=> bs!560200 m!3859757))

(declare-fun m!3859759 () Bool)

(assert (=> bs!560200 m!3859759))

(assert (=> b!3458195 d!994748))

(declare-fun b!3458711 () Bool)

(declare-fun res!1395521 () Bool)

(declare-fun e!2142855 () Bool)

(assert (=> b!3458711 (=> (not res!1395521) (not e!2142855))))

(declare-fun lt!1175306 () List!37281)

(assert (=> b!3458711 (= res!1395521 (= (size!28184 lt!1175306) (+ (size!28184 (ite c!591855 call!249372 call!249373)) (size!28184 (ite c!591855 call!249373 call!249372)))))))

(declare-fun d!994750 () Bool)

(assert (=> d!994750 e!2142855))

(declare-fun res!1395520 () Bool)

(assert (=> d!994750 (=> (not res!1395520) (not e!2142855))))

(assert (=> d!994750 (= res!1395520 (= (content!5182 lt!1175306) (set.union (content!5182 (ite c!591855 call!249372 call!249373)) (content!5182 (ite c!591855 call!249373 call!249372)))))))

(declare-fun e!2142856 () List!37281)

(assert (=> d!994750 (= lt!1175306 e!2142856)))

(declare-fun c!591943 () Bool)

(assert (=> d!994750 (= c!591943 (is-Nil!37157 (ite c!591855 call!249372 call!249373)))))

(assert (=> d!994750 (= (++!9156 (ite c!591855 call!249372 call!249373) (ite c!591855 call!249373 call!249372)) lt!1175306)))

(declare-fun b!3458710 () Bool)

(assert (=> b!3458710 (= e!2142856 (Cons!37157 (h!42577 (ite c!591855 call!249372 call!249373)) (++!9156 (t!272528 (ite c!591855 call!249372 call!249373)) (ite c!591855 call!249373 call!249372))))))

(declare-fun b!3458712 () Bool)

(assert (=> b!3458712 (= e!2142855 (or (not (= (ite c!591855 call!249373 call!249372) Nil!37157)) (= lt!1175306 (ite c!591855 call!249372 call!249373))))))

(declare-fun b!3458709 () Bool)

(assert (=> b!3458709 (= e!2142856 (ite c!591855 call!249373 call!249372))))

(assert (= (and d!994750 c!591943) b!3458709))

(assert (= (and d!994750 (not c!591943)) b!3458710))

(assert (= (and d!994750 res!1395520) b!3458711))

(assert (= (and b!3458711 res!1395521) b!3458712))

(declare-fun m!3859761 () Bool)

(assert (=> b!3458711 m!3859761))

(declare-fun m!3859763 () Bool)

(assert (=> b!3458711 m!3859763))

(declare-fun m!3859765 () Bool)

(assert (=> b!3458711 m!3859765))

(declare-fun m!3859767 () Bool)

(assert (=> d!994750 m!3859767))

(declare-fun m!3859769 () Bool)

(assert (=> d!994750 m!3859769))

(declare-fun m!3859771 () Bool)

(assert (=> d!994750 m!3859771))

(declare-fun m!3859773 () Bool)

(assert (=> b!3458710 m!3859773))

(assert (=> bm!249368 d!994750))

(declare-fun d!994752 () Bool)

(assert (=> d!994752 (= (isEmpty!21516 lt!1175179) (not (is-Some!7520 lt!1175179)))))

(assert (=> d!994578 d!994752))

(assert (=> d!994578 d!994396))

(declare-fun d!994754 () Bool)

(assert (=> d!994754 (= (get!11893 lt!1175092) (v!36837 lt!1175092))))

(assert (=> b!3458128 d!994754))

(declare-fun d!994756 () Bool)

(declare-fun lt!1175307 () Int)

(assert (=> d!994756 (>= lt!1175307 0)))

(declare-fun e!2142857 () Int)

(assert (=> d!994756 (= lt!1175307 e!2142857)))

(declare-fun c!591944 () Bool)

(assert (=> d!994756 (= c!591944 (is-Nil!37157 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092)))))))

(assert (=> d!994756 (= (size!28184 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092)))) lt!1175307)))

(declare-fun b!3458713 () Bool)

(assert (=> b!3458713 (= e!2142857 0)))

(declare-fun b!3458714 () Bool)

(assert (=> b!3458714 (= e!2142857 (+ 1 (size!28184 (t!272528 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092)))))))))

(assert (= (and d!994756 c!591944) b!3458713))

(assert (= (and d!994756 (not c!591944)) b!3458714))

(declare-fun m!3859775 () Bool)

(assert (=> b!3458714 m!3859775))

(assert (=> b!3458128 d!994756))

(declare-fun d!994758 () Bool)

(declare-fun list!13530 (Conc!11250) List!37283)

(assert (=> d!994758 (= (dropList!1204 lt!1174849 0) (drop!2010 (list!13530 (c!591767 lt!1174849)) 0))))

(declare-fun bs!560201 () Bool)

(assert (= bs!560201 d!994758))

(declare-fun m!3859777 () Bool)

(assert (=> bs!560201 m!3859777))

(assert (=> bs!560201 m!3859777))

(declare-fun m!3859779 () Bool)

(assert (=> bs!560201 m!3859779))

(assert (=> d!994410 d!994758))

(declare-fun d!994760 () Bool)

(declare-fun lt!1175308 () Int)

(assert (=> d!994760 (= lt!1175308 (size!28190 (list!13526 lt!1174849)))))

(assert (=> d!994760 (= lt!1175308 (size!28191 (c!591767 lt!1174849)))))

(assert (=> d!994760 (= (size!28183 lt!1174849) lt!1175308)))

(declare-fun bs!560202 () Bool)

(assert (= bs!560202 d!994760))

(assert (=> bs!560202 m!3858437))

(assert (=> bs!560202 m!3858437))

(declare-fun m!3859781 () Bool)

(assert (=> bs!560202 m!3859781))

(declare-fun m!3859783 () Bool)

(assert (=> bs!560202 m!3859783))

(assert (=> d!994410 d!994760))

(declare-fun d!994762 () Bool)

(assert (=> d!994762 (= (list!13524 (BalanceConc!22113 Empty!11249)) (list!13527 (c!591766 (BalanceConc!22113 Empty!11249))))))

(declare-fun bs!560203 () Bool)

(assert (= bs!560203 d!994762))

(declare-fun m!3859785 () Bool)

(assert (=> bs!560203 m!3859785))

(assert (=> d!994410 d!994762))

(declare-fun d!994764 () Bool)

(assert (=> d!994764 (= (list!13524 lt!1174999) (list!13527 (c!591766 lt!1174999)))))

(declare-fun bs!560204 () Bool)

(assert (= bs!560204 d!994764))

(declare-fun m!3859787 () Bool)

(assert (=> bs!560204 m!3859787))

(assert (=> d!994410 d!994764))

(declare-fun d!994766 () Bool)

(declare-fun lt!1175319 () List!37281)

(assert (=> d!994766 (= lt!1175319 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (printList!1574 thiss!18206 (dropList!1204 lt!1174849 0))))))

(declare-fun e!2142860 () List!37281)

(assert (=> d!994766 (= lt!1175319 e!2142860)))

(declare-fun c!591947 () Bool)

(assert (=> d!994766 (= c!591947 (is-Cons!37159 (dropList!1204 lt!1174849 0)))))

(assert (=> d!994766 (= (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174849 0) (list!13524 (BalanceConc!22113 Empty!11249))) lt!1175319)))

(declare-fun b!3458719 () Bool)

(assert (=> b!3458719 (= e!2142860 (printListTailRec!687 thiss!18206 (t!272530 (dropList!1204 lt!1174849 0)) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (h!42579 (dropList!1204 lt!1174849 0)))))))))

(declare-fun lt!1175322 () List!37281)

(assert (=> b!3458719 (= lt!1175322 (list!13524 (charsOf!3451 (h!42579 (dropList!1204 lt!1174849 0)))))))

(declare-fun lt!1175320 () List!37281)

(assert (=> b!3458719 (= lt!1175320 (printList!1574 thiss!18206 (t!272530 (dropList!1204 lt!1174849 0))))))

(declare-fun lt!1175323 () Unit!52487)

(assert (=> b!3458719 (= lt!1175323 (lemmaConcatAssociativity!1955 (list!13524 (BalanceConc!22113 Empty!11249)) lt!1175322 lt!1175320))))

(assert (=> b!3458719 (= (++!9156 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) lt!1175322) lt!1175320) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (++!9156 lt!1175322 lt!1175320)))))

(declare-fun lt!1175321 () Unit!52487)

(assert (=> b!3458719 (= lt!1175321 lt!1175323)))

(declare-fun b!3458720 () Bool)

(assert (=> b!3458720 (= e!2142860 (list!13524 (BalanceConc!22113 Empty!11249)))))

(assert (= (and d!994766 c!591947) b!3458719))

(assert (= (and d!994766 (not c!591947)) b!3458720))

(assert (=> d!994766 m!3858445))

(declare-fun m!3859789 () Bool)

(assert (=> d!994766 m!3859789))

(assert (=> d!994766 m!3858443))

(assert (=> d!994766 m!3859789))

(declare-fun m!3859791 () Bool)

(assert (=> d!994766 m!3859791))

(declare-fun m!3859793 () Bool)

(assert (=> b!3458719 m!3859793))

(assert (=> b!3458719 m!3858443))

(declare-fun m!3859795 () Bool)

(assert (=> b!3458719 m!3859795))

(assert (=> b!3458719 m!3858443))

(declare-fun m!3859797 () Bool)

(assert (=> b!3458719 m!3859797))

(assert (=> b!3458719 m!3858443))

(declare-fun m!3859799 () Bool)

(assert (=> b!3458719 m!3859799))

(declare-fun m!3859801 () Bool)

(assert (=> b!3458719 m!3859801))

(assert (=> b!3458719 m!3859795))

(declare-fun m!3859803 () Bool)

(assert (=> b!3458719 m!3859803))

(declare-fun m!3859805 () Bool)

(assert (=> b!3458719 m!3859805))

(declare-fun m!3859807 () Bool)

(assert (=> b!3458719 m!3859807))

(assert (=> b!3458719 m!3859801))

(declare-fun m!3859809 () Bool)

(assert (=> b!3458719 m!3859809))

(assert (=> b!3458719 m!3859805))

(assert (=> b!3458719 m!3859799))

(assert (=> b!3458719 m!3858443))

(assert (=> b!3458719 m!3859807))

(declare-fun m!3859811 () Bool)

(assert (=> b!3458719 m!3859811))

(assert (=> d!994410 d!994766))

(assert (=> d!994570 d!994504))

(assert (=> d!994570 d!994520))

(declare-fun d!994768 () Bool)

(assert (=> d!994768 (= (apply!8745 (transformation!5437 (rule!8027 (h!42579 tokens!494))) (seqFromList!3928 lt!1174846)) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (seqFromList!3928 lt!1174846)))))

(declare-fun b_lambda!99551 () Bool)

(assert (=> (not b_lambda!99551) (not d!994768)))

(declare-fun t!272638 () Bool)

(declare-fun tb!188359 () Bool)

(assert (=> (and b!3458412 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272638) tb!188359))

(declare-fun result!232344 () Bool)

(assert (=> tb!188359 (= result!232344 (inv!21 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (seqFromList!3928 lt!1174846))))))

(declare-fun m!3859813 () Bool)

(assert (=> tb!188359 m!3859813))

(assert (=> d!994768 t!272638))

(declare-fun b_and!243183 () Bool)

(assert (= b_and!243153 (and (=> t!272638 result!232344) b_and!243183)))

(declare-fun tb!188361 () Bool)

(declare-fun t!272640 () Bool)

(assert (=> (and b!3457652 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272640) tb!188361))

(declare-fun result!232346 () Bool)

(assert (= result!232346 result!232344))

(assert (=> d!994768 t!272640))

(declare-fun b_and!243185 () Bool)

(assert (= b_and!243141 (and (=> t!272640 result!232346) b_and!243185)))

(declare-fun tb!188363 () Bool)

(declare-fun t!272642 () Bool)

(assert (=> (and b!3458384 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272642) tb!188363))

(declare-fun result!232348 () Bool)

(assert (= result!232348 result!232344))

(assert (=> d!994768 t!272642))

(declare-fun b_and!243187 () Bool)

(assert (= b_and!243149 (and (=> t!272642 result!232348) b_and!243187)))

(declare-fun tb!188365 () Bool)

(declare-fun t!272644 () Bool)

(assert (=> (and b!3457648 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272644) tb!188365))

(declare-fun result!232350 () Bool)

(assert (= result!232350 result!232344))

(assert (=> d!994768 t!272644))

(declare-fun b_and!243189 () Bool)

(assert (= b_and!243139 (and (=> t!272644 result!232350) b_and!243189)))

(declare-fun t!272646 () Bool)

(declare-fun tb!188367 () Bool)

(assert (=> (and b!3457644 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272646) tb!188367))

(declare-fun result!232352 () Bool)

(assert (= result!232352 result!232344))

(assert (=> d!994768 t!272646))

(declare-fun b_and!243191 () Bool)

(assert (= b_and!243137 (and (=> t!272646 result!232352) b_and!243191)))

(assert (=> d!994768 m!3858073))

(declare-fun m!3859815 () Bool)

(assert (=> d!994768 m!3859815))

(assert (=> d!994570 d!994768))

(declare-fun d!994770 () Bool)

(assert (=> d!994770 (= (maxPrefixOneRule!1733 thiss!18206 (rule!8027 (h!42579 tokens!494)) lt!1174846) (Some!7521 (tuple2!36875 (Token!10241 (apply!8745 (transformation!5437 (rule!8027 (h!42579 tokens!494))) (seqFromList!3928 lt!1174846)) (rule!8027 (h!42579 tokens!494)) (size!28184 lt!1174846) lt!1174846) Nil!37157)))))

(assert (=> d!994770 true))

(declare-fun _$59!496 () Unit!52487)

(assert (=> d!994770 (= (choose!19999 thiss!18206 rules!2135 lt!1174846 lt!1174846 Nil!37157 (rule!8027 (h!42579 tokens!494))) _$59!496)))

(declare-fun bs!560205 () Bool)

(assert (= bs!560205 d!994770))

(assert (=> bs!560205 m!3858107))

(assert (=> bs!560205 m!3858073))

(assert (=> bs!560205 m!3858073))

(assert (=> bs!560205 m!3859101))

(assert (=> bs!560205 m!3858103))

(assert (=> d!994570 d!994770))

(assert (=> d!994570 d!994424))

(assert (=> d!994570 d!994618))

(declare-fun d!994772 () Bool)

(assert (=> d!994772 (= (list!13526 (singletonSeq!2533 separatorToken!241)) (list!13530 (c!591767 (singletonSeq!2533 separatorToken!241))))))

(declare-fun bs!560206 () Bool)

(assert (= bs!560206 d!994772))

(declare-fun m!3859817 () Bool)

(assert (=> bs!560206 m!3859817))

(assert (=> d!994426 d!994772))

(declare-fun d!994774 () Bool)

(declare-fun lt!1175324 () Int)

(assert (=> d!994774 (= lt!1175324 (size!28190 (list!13526 (_1!21570 lt!1175010))))))

(assert (=> d!994774 (= lt!1175324 (size!28191 (c!591767 (_1!21570 lt!1175010))))))

(assert (=> d!994774 (= (size!28183 (_1!21570 lt!1175010)) lt!1175324)))

(declare-fun bs!560207 () Bool)

(assert (= bs!560207 d!994774))

(declare-fun m!3859819 () Bool)

(assert (=> bs!560207 m!3859819))

(assert (=> bs!560207 m!3859819))

(declare-fun m!3859821 () Bool)

(assert (=> bs!560207 m!3859821))

(declare-fun m!3859823 () Bool)

(assert (=> bs!560207 m!3859823))

(assert (=> d!994426 d!994774))

(declare-fun d!994776 () Bool)

(assert (=> d!994776 (= (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241))))) (list!13530 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)))))))))

(declare-fun bs!560208 () Bool)

(assert (= bs!560208 d!994776))

(declare-fun m!3859825 () Bool)

(assert (=> bs!560208 m!3859825))

(assert (=> d!994426 d!994776))

(assert (=> d!994426 d!994582))

(declare-fun d!994778 () Bool)

(declare-fun lt!1175325 () BalanceConc!22112)

(assert (=> d!994778 (= (list!13524 lt!1175325) (printList!1574 thiss!18206 (list!13526 (singletonSeq!2533 separatorToken!241))))))

(assert (=> d!994778 (= lt!1175325 (printTailRec!1521 thiss!18206 (singletonSeq!2533 separatorToken!241) 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!994778 (= (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)) lt!1175325)))

(declare-fun bs!560209 () Bool)

(assert (= bs!560209 d!994778))

(declare-fun m!3859827 () Bool)

(assert (=> bs!560209 m!3859827))

(assert (=> bs!560209 m!3858131))

(assert (=> bs!560209 m!3858527))

(assert (=> bs!560209 m!3858527))

(declare-fun m!3859829 () Bool)

(assert (=> bs!560209 m!3859829))

(assert (=> bs!560209 m!3858131))

(declare-fun m!3859831 () Bool)

(assert (=> bs!560209 m!3859831))

(assert (=> d!994426 d!994778))

(assert (=> d!994426 d!994424))

(declare-fun b!3458721 () Bool)

(declare-fun e!2142862 () Bool)

(declare-fun lt!1175326 () tuple2!36872)

(assert (=> b!3458721 (= e!2142862 (not (isEmpty!21505 (_1!21570 lt!1175326))))))

(declare-fun e!2142864 () Bool)

(declare-fun b!3458723 () Bool)

(assert (=> b!3458723 (= e!2142864 (= (_2!21570 lt!1175326) (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241))))))

(declare-fun b!3458724 () Bool)

(assert (=> b!3458724 (= e!2142864 e!2142862)))

(declare-fun res!1395523 () Bool)

(assert (=> b!3458724 (= res!1395523 (< (size!28188 (_2!21570 lt!1175326)) (size!28188 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)))))))

(assert (=> b!3458724 (=> (not res!1395523) (not e!2142862))))

(declare-fun b!3458725 () Bool)

(declare-fun res!1395522 () Bool)

(declare-fun e!2142863 () Bool)

(assert (=> b!3458725 (=> (not res!1395522) (not e!2142863))))

(assert (=> b!3458725 (= res!1395522 (= (list!13526 (_1!21570 lt!1175326)) (_1!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)))))))))

(declare-fun b!3458722 () Bool)

(assert (=> b!3458722 (= e!2142863 (= (list!13524 (_2!21570 lt!1175326)) (_2!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)))))))))

(declare-fun d!994780 () Bool)

(assert (=> d!994780 e!2142863))

(declare-fun res!1395524 () Bool)

(assert (=> d!994780 (=> (not res!1395524) (not e!2142863))))

(assert (=> d!994780 (= res!1395524 e!2142864)))

(declare-fun c!591948 () Bool)

(assert (=> d!994780 (= c!591948 (> (size!28183 (_1!21570 lt!1175326)) 0))))

(assert (=> d!994780 (= lt!1175326 (lexTailRecV2!1056 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)) (BalanceConc!22113 Empty!11249) (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)) (BalanceConc!22115 Empty!11250)))))

(assert (=> d!994780 (= (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241))) lt!1175326)))

(assert (= (and d!994780 c!591948) b!3458724))

(assert (= (and d!994780 (not c!591948)) b!3458723))

(assert (= (and b!3458724 res!1395523) b!3458721))

(assert (= (and d!994780 res!1395524) b!3458725))

(assert (= (and b!3458725 res!1395522) b!3458722))

(declare-fun m!3859833 () Bool)

(assert (=> b!3458724 m!3859833))

(assert (=> b!3458724 m!3858519))

(declare-fun m!3859835 () Bool)

(assert (=> b!3458724 m!3859835))

(declare-fun m!3859837 () Bool)

(assert (=> d!994780 m!3859837))

(assert (=> d!994780 m!3858519))

(assert (=> d!994780 m!3858519))

(declare-fun m!3859839 () Bool)

(assert (=> d!994780 m!3859839))

(declare-fun m!3859841 () Bool)

(assert (=> b!3458721 m!3859841))

(declare-fun m!3859843 () Bool)

(assert (=> b!3458722 m!3859843))

(assert (=> b!3458722 m!3858519))

(declare-fun m!3859845 () Bool)

(assert (=> b!3458722 m!3859845))

(assert (=> b!3458722 m!3859845))

(declare-fun m!3859847 () Bool)

(assert (=> b!3458722 m!3859847))

(declare-fun m!3859849 () Bool)

(assert (=> b!3458725 m!3859849))

(assert (=> b!3458725 m!3858519))

(assert (=> b!3458725 m!3859845))

(assert (=> b!3458725 m!3859845))

(assert (=> b!3458725 m!3859847))

(assert (=> d!994426 d!994780))

(declare-fun d!994782 () Bool)

(assert (=> d!994782 true))

(declare-fun lambda!121800 () Int)

(declare-fun order!19791 () Int)

(declare-fun dynLambda!15657 (Int Int) Int)

(assert (=> d!994782 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15657 order!19791 lambda!121800))))

(declare-fun Forall2!933 (Int) Bool)

(assert (=> d!994782 (= (equivClasses!2181 (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (Forall2!933 lambda!121800))))

(declare-fun bs!560210 () Bool)

(assert (= bs!560210 d!994782))

(declare-fun m!3859851 () Bool)

(assert (=> bs!560210 m!3859851))

(assert (=> b!3458345 d!994782))

(declare-fun d!994784 () Bool)

(assert (=> d!994784 (= (list!13524 lt!1175061) (list!13527 (c!591766 lt!1175061)))))

(declare-fun bs!560211 () Bool)

(assert (= bs!560211 d!994784))

(declare-fun m!3859853 () Bool)

(assert (=> bs!560211 m!3859853))

(assert (=> d!994476 d!994784))

(declare-fun d!994786 () Bool)

(assert (=> d!994786 (= (isEmpty!21510 (tail!5431 lt!1174848)) (is-Nil!37157 (tail!5431 lt!1174848)))))

(assert (=> b!3457991 d!994786))

(declare-fun d!994788 () Bool)

(assert (=> d!994788 (= (tail!5431 lt!1174848) (t!272528 lt!1174848))))

(assert (=> b!3457991 d!994788))

(declare-fun d!994790 () Bool)

(declare-fun res!1395527 () Bool)

(declare-fun e!2142867 () Bool)

(assert (=> d!994790 (=> res!1395527 e!2142867)))

(assert (=> d!994790 (= res!1395527 (is-Nil!37159 (list!13526 (seqFromList!3927 tokens!494))))))

(assert (=> d!994790 (= (forall!7916 (list!13526 (seqFromList!3927 tokens!494)) lambda!121792) e!2142867)))

(declare-fun b!3458730 () Bool)

(declare-fun e!2142868 () Bool)

(assert (=> b!3458730 (= e!2142867 e!2142868)))

(declare-fun res!1395528 () Bool)

(assert (=> b!3458730 (=> (not res!1395528) (not e!2142868))))

(assert (=> b!3458730 (= res!1395528 (dynLambda!15651 lambda!121792 (h!42579 (list!13526 (seqFromList!3927 tokens!494)))))))

(declare-fun b!3458731 () Bool)

(assert (=> b!3458731 (= e!2142868 (forall!7916 (t!272530 (list!13526 (seqFromList!3927 tokens!494))) lambda!121792))))

(assert (= (and d!994790 (not res!1395527)) b!3458730))

(assert (= (and b!3458730 res!1395528) b!3458731))

(declare-fun b_lambda!99553 () Bool)

(assert (=> (not b_lambda!99553) (not b!3458730)))

(declare-fun m!3859855 () Bool)

(assert (=> b!3458730 m!3859855))

(declare-fun m!3859857 () Bool)

(assert (=> b!3458731 m!3859857))

(assert (=> d!994454 d!994790))

(declare-fun d!994792 () Bool)

(assert (=> d!994792 (= (list!13526 (seqFromList!3927 tokens!494)) (list!13530 (c!591767 (seqFromList!3927 tokens!494))))))

(declare-fun bs!560212 () Bool)

(assert (= bs!560212 d!994792))

(declare-fun m!3859859 () Bool)

(assert (=> bs!560212 m!3859859))

(assert (=> d!994454 d!994792))

(declare-fun d!994794 () Bool)

(declare-fun lt!1175329 () Bool)

(assert (=> d!994794 (= lt!1175329 (forall!7916 (list!13526 (seqFromList!3927 tokens!494)) lambda!121792))))

(declare-fun forall!7920 (Conc!11250 Int) Bool)

(assert (=> d!994794 (= lt!1175329 (forall!7920 (c!591767 (seqFromList!3927 tokens!494)) lambda!121792))))

(assert (=> d!994794 (= (forall!7918 (seqFromList!3927 tokens!494) lambda!121792) lt!1175329)))

(declare-fun bs!560213 () Bool)

(assert (= bs!560213 d!994794))

(assert (=> bs!560213 m!3858185))

(assert (=> bs!560213 m!3858687))

(assert (=> bs!560213 m!3858687))

(assert (=> bs!560213 m!3858689))

(declare-fun m!3859861 () Bool)

(assert (=> bs!560213 m!3859861))

(assert (=> d!994454 d!994794))

(assert (=> d!994454 d!994424))

(declare-fun b!3458732 () Bool)

(declare-fun e!2142871 () Bool)

(declare-fun e!2142874 () Bool)

(assert (=> b!3458732 (= e!2142871 e!2142874)))

(declare-fun res!1395531 () Bool)

(assert (=> b!3458732 (=> (not res!1395531) (not e!2142874))))

(declare-fun lt!1175330 () Bool)

(assert (=> b!3458732 (= res!1395531 (not lt!1175330))))

(declare-fun b!3458733 () Bool)

(declare-fun e!2142870 () Bool)

(declare-fun call!249399 () Bool)

(assert (=> b!3458733 (= e!2142870 (= lt!1175330 call!249399))))

(declare-fun b!3458734 () Bool)

(declare-fun res!1395536 () Bool)

(assert (=> b!3458734 (=> res!1395536 e!2142871)))

(declare-fun e!2142872 () Bool)

(assert (=> b!3458734 (= res!1395536 e!2142872)))

(declare-fun res!1395532 () Bool)

(assert (=> b!3458734 (=> (not res!1395532) (not e!2142872))))

(assert (=> b!3458734 (= res!1395532 lt!1175330)))

(declare-fun b!3458735 () Bool)

(declare-fun e!2142875 () Bool)

(assert (=> b!3458735 (= e!2142874 e!2142875)))

(declare-fun res!1395529 () Bool)

(assert (=> b!3458735 (=> res!1395529 e!2142875)))

(assert (=> b!3458735 (= res!1395529 call!249399)))

(declare-fun b!3458736 () Bool)

(declare-fun e!2142873 () Bool)

(assert (=> b!3458736 (= e!2142873 (nullable!3487 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))))))

(declare-fun d!994796 () Bool)

(assert (=> d!994796 e!2142870))

(declare-fun c!591951 () Bool)

(assert (=> d!994796 (= c!591951 (is-EmptyExpr!10196 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))))))

(assert (=> d!994796 (= lt!1175330 e!2142873)))

(declare-fun c!591950 () Bool)

(assert (=> d!994796 (= c!591950 (isEmpty!21510 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))))))

(assert (=> d!994796 (validRegex!4643 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))))

(assert (=> d!994796 (= (matchR!4780 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))) (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))) lt!1175330)))

(declare-fun b!3458737 () Bool)

(declare-fun res!1395535 () Bool)

(assert (=> b!3458737 (=> (not res!1395535) (not e!2142872))))

(assert (=> b!3458737 (= res!1395535 (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))))))))

(declare-fun b!3458738 () Bool)

(assert (=> b!3458738 (= e!2142875 (not (= (head!7316 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))) (c!591765 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))))))))

(declare-fun b!3458739 () Bool)

(assert (=> b!3458739 (= e!2142873 (matchR!4780 (derivativeStep!3040 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))) (head!7316 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))))) (tail!5431 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))))))))

(declare-fun b!3458740 () Bool)

(declare-fun e!2142869 () Bool)

(assert (=> b!3458740 (= e!2142869 (not lt!1175330))))

(declare-fun b!3458741 () Bool)

(declare-fun res!1395534 () Bool)

(assert (=> b!3458741 (=> (not res!1395534) (not e!2142872))))

(assert (=> b!3458741 (= res!1395534 (not call!249399))))

(declare-fun b!3458742 () Bool)

(declare-fun res!1395533 () Bool)

(assert (=> b!3458742 (=> res!1395533 e!2142875)))

(assert (=> b!3458742 (= res!1395533 (not (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))))))))

(declare-fun b!3458743 () Bool)

(declare-fun res!1395530 () Bool)

(assert (=> b!3458743 (=> res!1395530 e!2142871)))

(assert (=> b!3458743 (= res!1395530 (not (is-ElementMatch!10196 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))))))

(assert (=> b!3458743 (= e!2142869 e!2142871)))

(declare-fun bm!249394 () Bool)

(assert (=> bm!249394 (= call!249399 (isEmpty!21510 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))))))

(declare-fun b!3458744 () Bool)

(assert (=> b!3458744 (= e!2142870 e!2142869)))

(declare-fun c!591949 () Bool)

(assert (=> b!3458744 (= c!591949 (is-EmptyLang!10196 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))))))

(declare-fun b!3458745 () Bool)

(assert (=> b!3458745 (= e!2142872 (= (head!7316 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))) (c!591765 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))))))

(assert (= (and d!994796 c!591950) b!3458736))

(assert (= (and d!994796 (not c!591950)) b!3458739))

(assert (= (and d!994796 c!591951) b!3458733))

(assert (= (and d!994796 (not c!591951)) b!3458744))

(assert (= (and b!3458744 c!591949) b!3458740))

(assert (= (and b!3458744 (not c!591949)) b!3458743))

(assert (= (and b!3458743 (not res!1395530)) b!3458734))

(assert (= (and b!3458734 res!1395532) b!3458741))

(assert (= (and b!3458741 res!1395534) b!3458737))

(assert (= (and b!3458737 res!1395535) b!3458745))

(assert (= (and b!3458734 (not res!1395536)) b!3458732))

(assert (= (and b!3458732 res!1395531) b!3458735))

(assert (= (and b!3458735 (not res!1395529)) b!3458742))

(assert (= (and b!3458742 (not res!1395533)) b!3458738))

(assert (= (or b!3458733 b!3458735 b!3458741) bm!249394))

(assert (=> b!3458739 m!3858579))

(declare-fun m!3859863 () Bool)

(assert (=> b!3458739 m!3859863))

(assert (=> b!3458739 m!3859863))

(declare-fun m!3859865 () Bool)

(assert (=> b!3458739 m!3859865))

(assert (=> b!3458739 m!3858579))

(declare-fun m!3859867 () Bool)

(assert (=> b!3458739 m!3859867))

(assert (=> b!3458739 m!3859865))

(assert (=> b!3458739 m!3859867))

(declare-fun m!3859869 () Bool)

(assert (=> b!3458739 m!3859869))

(declare-fun m!3859871 () Bool)

(assert (=> b!3458736 m!3859871))

(assert (=> d!994796 m!3858579))

(declare-fun m!3859873 () Bool)

(assert (=> d!994796 m!3859873))

(declare-fun m!3859875 () Bool)

(assert (=> d!994796 m!3859875))

(assert (=> bm!249394 m!3858579))

(assert (=> bm!249394 m!3859873))

(assert (=> b!3458742 m!3858579))

(assert (=> b!3458742 m!3859867))

(assert (=> b!3458742 m!3859867))

(declare-fun m!3859877 () Bool)

(assert (=> b!3458742 m!3859877))

(assert (=> b!3458738 m!3858579))

(assert (=> b!3458738 m!3859863))

(assert (=> b!3458737 m!3858579))

(assert (=> b!3458737 m!3859867))

(assert (=> b!3458737 m!3859867))

(assert (=> b!3458737 m!3859877))

(assert (=> b!3458745 m!3858579))

(assert (=> b!3458745 m!3859863))

(assert (=> b!3457976 d!994796))

(declare-fun d!994798 () Bool)

(assert (=> d!994798 (= (get!11893 lt!1175029) (v!36837 lt!1175029))))

(assert (=> b!3457976 d!994798))

(declare-fun d!994800 () Bool)

(assert (=> d!994800 (= (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))) (list!13527 (c!591766 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))))))

(declare-fun bs!560214 () Bool)

(assert (= bs!560214 d!994800))

(declare-fun m!3859879 () Bool)

(assert (=> bs!560214 m!3859879))

(assert (=> b!3457976 d!994800))

(declare-fun d!994802 () Bool)

(declare-fun lt!1175331 () BalanceConc!22112)

(assert (=> d!994802 (= (list!13524 lt!1175331) (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029))))))

(assert (=> d!994802 (= lt!1175331 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))) (value!175416 (_1!21571 (get!11893 lt!1175029)))))))

(assert (=> d!994802 (= (charsOf!3451 (_1!21571 (get!11893 lt!1175029))) lt!1175331)))

(declare-fun b_lambda!99555 () Bool)

(assert (=> (not b_lambda!99555) (not d!994802)))

(declare-fun tb!188369 () Bool)

(declare-fun t!272648 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272648) tb!188369))

(declare-fun b!3458746 () Bool)

(declare-fun e!2142876 () Bool)

(declare-fun tp!1077899 () Bool)

(assert (=> b!3458746 (= e!2142876 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))) (value!175416 (_1!21571 (get!11893 lt!1175029)))))) tp!1077899))))

(declare-fun result!232354 () Bool)

(assert (=> tb!188369 (= result!232354 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))) (value!175416 (_1!21571 (get!11893 lt!1175029))))) e!2142876))))

(assert (= tb!188369 b!3458746))

(declare-fun m!3859881 () Bool)

(assert (=> b!3458746 m!3859881))

(declare-fun m!3859883 () Bool)

(assert (=> tb!188369 m!3859883))

(assert (=> d!994802 t!272648))

(declare-fun b_and!243193 () Bool)

(assert (= b_and!243131 (and (=> t!272648 result!232354) b_and!243193)))

(declare-fun t!272650 () Bool)

(declare-fun tb!188371 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272650) tb!188371))

(declare-fun result!232356 () Bool)

(assert (= result!232356 result!232354))

(assert (=> d!994802 t!272650))

(declare-fun b_and!243195 () Bool)

(assert (= b_and!243135 (and (=> t!272650 result!232356) b_and!243195)))

(declare-fun t!272652 () Bool)

(declare-fun tb!188373 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272652) tb!188373))

(declare-fun result!232358 () Bool)

(assert (= result!232358 result!232354))

(assert (=> d!994802 t!272652))

(declare-fun b_and!243197 () Bool)

(assert (= b_and!243155 (and (=> t!272652 result!232358) b_and!243197)))

(declare-fun tb!188375 () Bool)

(declare-fun t!272654 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272654) tb!188375))

(declare-fun result!232360 () Bool)

(assert (= result!232360 result!232354))

(assert (=> d!994802 t!272654))

(declare-fun b_and!243199 () Bool)

(assert (= b_and!243151 (and (=> t!272654 result!232360) b_and!243199)))

(declare-fun t!272656 () Bool)

(declare-fun tb!188377 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272656) tb!188377))

(declare-fun result!232362 () Bool)

(assert (= result!232362 result!232354))

(assert (=> d!994802 t!272656))

(declare-fun b_and!243201 () Bool)

(assert (= b_and!243133 (and (=> t!272656 result!232362) b_and!243201)))

(declare-fun m!3859885 () Bool)

(assert (=> d!994802 m!3859885))

(declare-fun m!3859887 () Bool)

(assert (=> d!994802 m!3859887))

(assert (=> b!3457976 d!994802))

(declare-fun d!994804 () Bool)

(assert (=> d!994804 (= (isEmpty!21510 lt!1174846) (is-Nil!37157 lt!1174846))))

(assert (=> d!994610 d!994804))

(declare-fun b!3458765 () Bool)

(declare-fun e!2142894 () Bool)

(declare-fun e!2142891 () Bool)

(assert (=> b!3458765 (= e!2142894 e!2142891)))

(declare-fun c!591956 () Bool)

(assert (=> b!3458765 (= c!591956 (is-Union!10196 (regex!5437 lt!1174855)))))

(declare-fun d!994806 () Bool)

(declare-fun res!1395551 () Bool)

(declare-fun e!2142893 () Bool)

(assert (=> d!994806 (=> res!1395551 e!2142893)))

(assert (=> d!994806 (= res!1395551 (is-ElementMatch!10196 (regex!5437 lt!1174855)))))

(assert (=> d!994806 (= (validRegex!4643 (regex!5437 lt!1174855)) e!2142893)))

(declare-fun b!3458766 () Bool)

(declare-fun e!2142895 () Bool)

(declare-fun call!249408 () Bool)

(assert (=> b!3458766 (= e!2142895 call!249408)))

(declare-fun b!3458767 () Bool)

(declare-fun res!1395548 () Bool)

(declare-fun e!2142896 () Bool)

(assert (=> b!3458767 (=> res!1395548 e!2142896)))

(assert (=> b!3458767 (= res!1395548 (not (is-Concat!15863 (regex!5437 lt!1174855))))))

(assert (=> b!3458767 (= e!2142891 e!2142896)))

(declare-fun b!3458768 () Bool)

(declare-fun e!2142892 () Bool)

(assert (=> b!3458768 (= e!2142894 e!2142892)))

(declare-fun res!1395550 () Bool)

(assert (=> b!3458768 (= res!1395550 (not (nullable!3487 (reg!10525 (regex!5437 lt!1174855)))))))

(assert (=> b!3458768 (=> (not res!1395550) (not e!2142892))))

(declare-fun b!3458769 () Bool)

(declare-fun e!2142897 () Bool)

(assert (=> b!3458769 (= e!2142897 call!249408)))

(declare-fun b!3458770 () Bool)

(assert (=> b!3458770 (= e!2142896 e!2142897)))

(declare-fun res!1395549 () Bool)

(assert (=> b!3458770 (=> (not res!1395549) (not e!2142897))))

(declare-fun call!249407 () Bool)

(assert (=> b!3458770 (= res!1395549 call!249407)))

(declare-fun b!3458771 () Bool)

(declare-fun res!1395547 () Bool)

(assert (=> b!3458771 (=> (not res!1395547) (not e!2142895))))

(assert (=> b!3458771 (= res!1395547 call!249407)))

(assert (=> b!3458771 (= e!2142891 e!2142895)))

(declare-fun bm!249401 () Bool)

(declare-fun call!249406 () Bool)

(assert (=> bm!249401 (= call!249407 call!249406)))

(declare-fun bm!249402 () Bool)

(assert (=> bm!249402 (= call!249408 (validRegex!4643 (ite c!591956 (regTwo!20905 (regex!5437 lt!1174855)) (regTwo!20904 (regex!5437 lt!1174855)))))))

(declare-fun c!591957 () Bool)

(declare-fun bm!249403 () Bool)

(assert (=> bm!249403 (= call!249406 (validRegex!4643 (ite c!591957 (reg!10525 (regex!5437 lt!1174855)) (ite c!591956 (regOne!20905 (regex!5437 lt!1174855)) (regOne!20904 (regex!5437 lt!1174855))))))))

(declare-fun b!3458772 () Bool)

(assert (=> b!3458772 (= e!2142893 e!2142894)))

(assert (=> b!3458772 (= c!591957 (is-Star!10196 (regex!5437 lt!1174855)))))

(declare-fun b!3458773 () Bool)

(assert (=> b!3458773 (= e!2142892 call!249406)))

(assert (= (and d!994806 (not res!1395551)) b!3458772))

(assert (= (and b!3458772 c!591957) b!3458768))

(assert (= (and b!3458772 (not c!591957)) b!3458765))

(assert (= (and b!3458768 res!1395550) b!3458773))

(assert (= (and b!3458765 c!591956) b!3458771))

(assert (= (and b!3458765 (not c!591956)) b!3458767))

(assert (= (and b!3458771 res!1395547) b!3458766))

(assert (= (and b!3458767 (not res!1395548)) b!3458770))

(assert (= (and b!3458770 res!1395549) b!3458769))

(assert (= (or b!3458766 b!3458769) bm!249402))

(assert (= (or b!3458771 b!3458770) bm!249401))

(assert (= (or b!3458773 bm!249401) bm!249403))

(declare-fun m!3859889 () Bool)

(assert (=> b!3458768 m!3859889))

(declare-fun m!3859891 () Bool)

(assert (=> bm!249402 m!3859891))

(declare-fun m!3859893 () Bool)

(assert (=> bm!249403 m!3859893))

(assert (=> d!994610 d!994806))

(declare-fun d!994808 () Bool)

(declare-fun lt!1175332 () Int)

(assert (=> d!994808 (>= lt!1175332 0)))

(declare-fun e!2142898 () Int)

(assert (=> d!994808 (= lt!1175332 e!2142898)))

(declare-fun c!591958 () Bool)

(assert (=> d!994808 (= c!591958 (is-Nil!37157 lt!1175060))))

(assert (=> d!994808 (= (size!28184 lt!1175060) lt!1175332)))

(declare-fun b!3458774 () Bool)

(assert (=> b!3458774 (= e!2142898 0)))

(declare-fun b!3458775 () Bool)

(assert (=> b!3458775 (= e!2142898 (+ 1 (size!28184 (t!272528 lt!1175060))))))

(assert (= (and d!994808 c!591958) b!3458774))

(assert (= (and d!994808 (not c!591958)) b!3458775))

(declare-fun m!3859895 () Bool)

(assert (=> b!3458775 m!3859895))

(assert (=> b!3458049 d!994808))

(declare-fun d!994810 () Bool)

(declare-fun lt!1175333 () Int)

(assert (=> d!994810 (>= lt!1175333 0)))

(declare-fun e!2142899 () Int)

(assert (=> d!994810 (= lt!1175333 e!2142899)))

(declare-fun c!591959 () Bool)

(assert (=> d!994810 (= c!591959 (is-Nil!37157 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)))))

(assert (=> d!994810 (= (size!28184 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) lt!1175333)))

(declare-fun b!3458776 () Bool)

(assert (=> b!3458776 (= e!2142899 0)))

(declare-fun b!3458777 () Bool)

(assert (=> b!3458777 (= e!2142899 (+ 1 (size!28184 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)))))))

(assert (= (and d!994810 c!591959) b!3458776))

(assert (= (and d!994810 (not c!591959)) b!3458777))

(declare-fun m!3859897 () Bool)

(assert (=> b!3458777 m!3859897))

(assert (=> b!3458049 d!994810))

(declare-fun d!994812 () Bool)

(declare-fun lt!1175334 () Int)

(assert (=> d!994812 (>= lt!1175334 0)))

(declare-fun e!2142900 () Int)

(assert (=> d!994812 (= lt!1175334 e!2142900)))

(declare-fun c!591960 () Bool)

(assert (=> d!994812 (= c!591960 (is-Nil!37157 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))

(assert (=> d!994812 (= (size!28184 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)) lt!1175334)))

(declare-fun b!3458778 () Bool)

(assert (=> b!3458778 (= e!2142900 0)))

(declare-fun b!3458779 () Bool)

(assert (=> b!3458779 (= e!2142900 (+ 1 (size!28184 (t!272528 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(assert (= (and d!994812 c!591960) b!3458778))

(assert (= (and d!994812 (not c!591960)) b!3458779))

(declare-fun m!3859899 () Bool)

(assert (=> b!3458779 m!3859899))

(assert (=> b!3458049 d!994812))

(declare-fun b!3458782 () Bool)

(declare-fun res!1395553 () Bool)

(declare-fun e!2142901 () Bool)

(assert (=> b!3458782 (=> (not res!1395553) (not e!2142901))))

(declare-fun lt!1175335 () List!37281)

(assert (=> b!3458782 (= res!1395553 (= (size!28184 lt!1175335) (+ (size!28184 (t!272528 lt!1174848)) (size!28184 lt!1174829))))))

(declare-fun d!994814 () Bool)

(assert (=> d!994814 e!2142901))

(declare-fun res!1395552 () Bool)

(assert (=> d!994814 (=> (not res!1395552) (not e!2142901))))

(assert (=> d!994814 (= res!1395552 (= (content!5182 lt!1175335) (set.union (content!5182 (t!272528 lt!1174848)) (content!5182 lt!1174829))))))

(declare-fun e!2142902 () List!37281)

(assert (=> d!994814 (= lt!1175335 e!2142902)))

(declare-fun c!591961 () Bool)

(assert (=> d!994814 (= c!591961 (is-Nil!37157 (t!272528 lt!1174848)))))

(assert (=> d!994814 (= (++!9156 (t!272528 lt!1174848) lt!1174829) lt!1175335)))

(declare-fun b!3458781 () Bool)

(assert (=> b!3458781 (= e!2142902 (Cons!37157 (h!42577 (t!272528 lt!1174848)) (++!9156 (t!272528 (t!272528 lt!1174848)) lt!1174829)))))

(declare-fun b!3458783 () Bool)

(assert (=> b!3458783 (= e!2142901 (or (not (= lt!1174829 Nil!37157)) (= lt!1175335 (t!272528 lt!1174848))))))

(declare-fun b!3458780 () Bool)

(assert (=> b!3458780 (= e!2142902 lt!1174829)))

(assert (= (and d!994814 c!591961) b!3458780))

(assert (= (and d!994814 (not c!591961)) b!3458781))

(assert (= (and d!994814 res!1395552) b!3458782))

(assert (= (and b!3458782 res!1395553) b!3458783))

(declare-fun m!3859901 () Bool)

(assert (=> b!3458782 m!3859901))

(declare-fun m!3859903 () Bool)

(assert (=> b!3458782 m!3859903))

(assert (=> b!3458782 m!3858415))

(declare-fun m!3859905 () Bool)

(assert (=> d!994814 m!3859905))

(declare-fun m!3859907 () Bool)

(assert (=> d!994814 m!3859907))

(assert (=> d!994814 m!3858421))

(declare-fun m!3859909 () Bool)

(assert (=> b!3458781 m!3859909))

(assert (=> b!3458052 d!994814))

(declare-fun d!994816 () Bool)

(declare-fun lt!1175336 () Int)

(assert (=> d!994816 (>= lt!1175336 0)))

(declare-fun e!2142903 () Int)

(assert (=> d!994816 (= lt!1175336 e!2142903)))

(declare-fun c!591962 () Bool)

(assert (=> d!994816 (= c!591962 (is-Nil!37157 (originalCharacters!6151 (h!42579 tokens!494))))))

(assert (=> d!994816 (= (size!28184 (originalCharacters!6151 (h!42579 tokens!494))) lt!1175336)))

(declare-fun b!3458784 () Bool)

(assert (=> b!3458784 (= e!2142903 0)))

(declare-fun b!3458785 () Bool)

(assert (=> b!3458785 (= e!2142903 (+ 1 (size!28184 (t!272528 (originalCharacters!6151 (h!42579 tokens!494))))))))

(assert (= (and d!994816 c!591962) b!3458784))

(assert (= (and d!994816 (not c!591962)) b!3458785))

(declare-fun m!3859911 () Bool)

(assert (=> b!3458785 m!3859911))

(assert (=> b!3458067 d!994816))

(declare-fun d!994818 () Bool)

(declare-fun lt!1175337 () Bool)

(assert (=> d!994818 (= lt!1175337 (isEmpty!21510 (list!13524 (_2!21570 lt!1175010))))))

(assert (=> d!994818 (= lt!1175337 (isEmpty!21511 (c!591766 (_2!21570 lt!1175010))))))

(assert (=> d!994818 (= (isEmpty!21504 (_2!21570 lt!1175010)) lt!1175337)))

(declare-fun bs!560215 () Bool)

(assert (= bs!560215 d!994818))

(declare-fun m!3859913 () Bool)

(assert (=> bs!560215 m!3859913))

(assert (=> bs!560215 m!3859913))

(declare-fun m!3859915 () Bool)

(assert (=> bs!560215 m!3859915))

(declare-fun m!3859917 () Bool)

(assert (=> bs!560215 m!3859917))

(assert (=> b!3457895 d!994818))

(declare-fun d!994820 () Bool)

(declare-fun lt!1175338 () Bool)

(assert (=> d!994820 (= lt!1175338 (isEmpty!21518 (list!13526 (_1!21570 lt!1175189))))))

(assert (=> d!994820 (= lt!1175338 (isEmpty!21519 (c!591767 (_1!21570 lt!1175189))))))

(assert (=> d!994820 (= (isEmpty!21505 (_1!21570 lt!1175189)) lt!1175338)))

(declare-fun bs!560216 () Bool)

(assert (= bs!560216 d!994820))

(assert (=> bs!560216 m!3859149))

(assert (=> bs!560216 m!3859149))

(declare-fun m!3859919 () Bool)

(assert (=> bs!560216 m!3859919))

(declare-fun m!3859921 () Bool)

(assert (=> bs!560216 m!3859921))

(assert (=> b!3458328 d!994820))

(declare-fun b!3458786 () Bool)

(declare-fun e!2142905 () List!37281)

(declare-fun e!2142904 () List!37281)

(assert (=> b!3458786 (= e!2142905 e!2142904)))

(declare-fun c!591965 () Bool)

(assert (=> b!3458786 (= c!591965 (is-ElementMatch!10196 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun b!3458787 () Bool)

(assert (=> b!3458787 (= e!2142904 (Cons!37157 (c!591765 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) Nil!37157))))

(declare-fun b!3458788 () Bool)

(declare-fun e!2142907 () List!37281)

(declare-fun call!249410 () List!37281)

(assert (=> b!3458788 (= e!2142907 call!249410)))

(declare-fun call!249411 () List!37281)

(declare-fun c!591963 () Bool)

(declare-fun bm!249404 () Bool)

(assert (=> bm!249404 (= call!249411 (usedCharacters!671 (ite c!591963 (regOne!20905 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) (regTwo!20904 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))))

(declare-fun b!3458789 () Bool)

(declare-fun e!2142906 () List!37281)

(declare-fun call!249409 () List!37281)

(assert (=> b!3458789 (= e!2142906 call!249409)))

(declare-fun d!994822 () Bool)

(declare-fun c!591964 () Bool)

(assert (=> d!994822 (= c!591964 (or (is-EmptyExpr!10196 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) (is-EmptyLang!10196 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))

(assert (=> d!994822 (= (usedCharacters!671 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) e!2142905)))

(declare-fun b!3458790 () Bool)

(assert (=> b!3458790 (= e!2142907 call!249410)))

(declare-fun c!591966 () Bool)

(declare-fun bm!249405 () Bool)

(assert (=> bm!249405 (= call!249409 (usedCharacters!671 (ite c!591966 (reg!10525 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) (ite c!591963 (regTwo!20905 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) (regOne!20904 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))))

(declare-fun b!3458791 () Bool)

(assert (=> b!3458791 (= e!2142905 Nil!37157)))

(declare-fun b!3458792 () Bool)

(assert (=> b!3458792 (= e!2142906 e!2142907)))

(assert (=> b!3458792 (= c!591963 (is-Union!10196 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun bm!249406 () Bool)

(declare-fun call!249412 () List!37281)

(assert (=> bm!249406 (= call!249412 call!249409)))

(declare-fun b!3458793 () Bool)

(assert (=> b!3458793 (= c!591966 (is-Star!10196 (ite c!591855 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(assert (=> b!3458793 (= e!2142904 e!2142906)))

(declare-fun bm!249407 () Bool)

(assert (=> bm!249407 (= call!249410 (++!9156 (ite c!591963 call!249411 call!249412) (ite c!591963 call!249412 call!249411)))))

(assert (= (and d!994822 c!591964) b!3458791))

(assert (= (and d!994822 (not c!591964)) b!3458786))

(assert (= (and b!3458786 c!591965) b!3458787))

(assert (= (and b!3458786 (not c!591965)) b!3458793))

(assert (= (and b!3458793 c!591966) b!3458789))

(assert (= (and b!3458793 (not c!591966)) b!3458792))

(assert (= (and b!3458792 c!591963) b!3458790))

(assert (= (and b!3458792 (not c!591963)) b!3458788))

(assert (= (or b!3458790 b!3458788) bm!249406))

(assert (= (or b!3458790 b!3458788) bm!249404))

(assert (= (or b!3458790 b!3458788) bm!249407))

(assert (= (or b!3458789 bm!249406) bm!249405))

(declare-fun m!3859923 () Bool)

(assert (=> bm!249404 m!3859923))

(declare-fun m!3859925 () Bool)

(assert (=> bm!249405 m!3859925))

(declare-fun m!3859927 () Bool)

(assert (=> bm!249407 m!3859927))

(assert (=> bm!249365 d!994822))

(declare-fun d!994824 () Bool)

(assert (=> d!994824 (= (isEmpty!21510 (tail!5431 lt!1174846)) (is-Nil!37157 (tail!5431 lt!1174846)))))

(assert (=> b!3458356 d!994824))

(declare-fun d!994826 () Bool)

(assert (=> d!994826 (= (tail!5431 lt!1174846) (t!272528 lt!1174846))))

(assert (=> b!3458356 d!994826))

(declare-fun d!994828 () Bool)

(declare-fun charsToInt!0 (List!37280) (_ BitVec 32))

(assert (=> d!994828 (= (inv!16 (value!175416 (h!42579 tokens!494))) (= (charsToInt!0 (text!40116 (value!175416 (h!42579 tokens!494)))) (value!175408 (value!175416 (h!42579 tokens!494)))))))

(declare-fun bs!560217 () Bool)

(assert (= bs!560217 d!994828))

(declare-fun m!3859929 () Bool)

(assert (=> bs!560217 m!3859929))

(assert (=> b!3457951 d!994828))

(declare-fun bs!560218 () Bool)

(declare-fun d!994830 () Bool)

(assert (= bs!560218 (and d!994830 b!3457664)))

(declare-fun lambda!121803 () Int)

(assert (=> bs!560218 (not (= lambda!121803 lambda!121776))))

(declare-fun bs!560219 () Bool)

(assert (= bs!560219 (and d!994830 b!3457654)))

(assert (=> bs!560219 (= lambda!121803 lambda!121777)))

(declare-fun bs!560220 () Bool)

(assert (= bs!560220 (and d!994830 d!994454)))

(assert (=> bs!560220 (= lambda!121803 lambda!121792)))

(declare-fun b!3458802 () Bool)

(declare-fun e!2142916 () Bool)

(assert (=> b!3458802 (= e!2142916 true)))

(declare-fun b!3458801 () Bool)

(declare-fun e!2142915 () Bool)

(assert (=> b!3458801 (= e!2142915 e!2142916)))

(declare-fun b!3458800 () Bool)

(declare-fun e!2142914 () Bool)

(assert (=> b!3458800 (= e!2142914 e!2142915)))

(assert (=> d!994830 e!2142914))

(assert (= b!3458801 b!3458802))

(assert (= b!3458800 b!3458801))

(assert (= (and d!994830 (is-Cons!37158 rules!2135)) b!3458800))

(assert (=> b!3458802 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15646 order!19781 lambda!121803))))

(assert (=> b!3458802 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15646 order!19781 lambda!121803))))

(assert (=> d!994830 true))

(declare-fun lt!1175341 () Bool)

(assert (=> d!994830 (= lt!1175341 (forall!7916 (list!13526 (seqFromList!3927 tokens!494)) lambda!121803))))

(declare-fun e!2142912 () Bool)

(assert (=> d!994830 (= lt!1175341 e!2142912)))

(declare-fun res!1395558 () Bool)

(assert (=> d!994830 (=> res!1395558 e!2142912)))

(assert (=> d!994830 (= res!1395558 (not (is-Cons!37159 (list!13526 (seqFromList!3927 tokens!494)))))))

(assert (=> d!994830 (not (isEmpty!21506 rules!2135))))

(assert (=> d!994830 (= (rulesProduceEachTokenIndividuallyList!1854 thiss!18206 rules!2135 (list!13526 (seqFromList!3927 tokens!494))) lt!1175341)))

(declare-fun b!3458798 () Bool)

(declare-fun e!2142913 () Bool)

(assert (=> b!3458798 (= e!2142912 e!2142913)))

(declare-fun res!1395559 () Bool)

(assert (=> b!3458798 (=> (not res!1395559) (not e!2142913))))

(assert (=> b!3458798 (= res!1395559 (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 (list!13526 (seqFromList!3927 tokens!494)))))))

(declare-fun b!3458799 () Bool)

(assert (=> b!3458799 (= e!2142913 (rulesProduceEachTokenIndividuallyList!1854 thiss!18206 rules!2135 (t!272530 (list!13526 (seqFromList!3927 tokens!494)))))))

(assert (= (and d!994830 (not res!1395558)) b!3458798))

(assert (= (and b!3458798 res!1395559) b!3458799))

(assert (=> d!994830 m!3858687))

(declare-fun m!3859931 () Bool)

(assert (=> d!994830 m!3859931))

(assert (=> d!994830 m!3858059))

(declare-fun m!3859933 () Bool)

(assert (=> b!3458798 m!3859933))

(declare-fun m!3859935 () Bool)

(assert (=> b!3458799 m!3859935))

(assert (=> b!3458039 d!994830))

(assert (=> b!3458039 d!994792))

(declare-fun d!994832 () Bool)

(assert (=> d!994832 (dynLambda!15651 lambda!121776 (h!42579 (t!272530 tokens!494)))))

(assert (=> d!994832 true))

(declare-fun _$7!1292 () Unit!52487)

(assert (=> d!994832 (= (choose!19990 tokens!494 lambda!121776 (h!42579 (t!272530 tokens!494))) _$7!1292)))

(declare-fun b_lambda!99557 () Bool)

(assert (=> (not b_lambda!99557) (not d!994832)))

(declare-fun bs!560221 () Bool)

(assert (= bs!560221 d!994832))

(assert (=> bs!560221 m!3858401))

(assert (=> d!994400 d!994832))

(assert (=> d!994400 d!994398))

(declare-fun d!994834 () Bool)

(declare-fun lt!1175342 () Int)

(assert (=> d!994834 (>= lt!1175342 0)))

(declare-fun e!2142917 () Int)

(assert (=> d!994834 (= lt!1175342 e!2142917)))

(declare-fun c!591967 () Bool)

(assert (=> d!994834 (= c!591967 (is-Nil!37157 (t!272528 lt!1174846)))))

(assert (=> d!994834 (= (size!28184 (t!272528 lt!1174846)) lt!1175342)))

(declare-fun b!3458803 () Bool)

(assert (=> b!3458803 (= e!2142917 0)))

(declare-fun b!3458804 () Bool)

(assert (=> b!3458804 (= e!2142917 (+ 1 (size!28184 (t!272528 (t!272528 lt!1174846)))))))

(assert (= (and d!994834 c!591967) b!3458803))

(assert (= (and d!994834 (not c!591967)) b!3458804))

(declare-fun m!3859937 () Bool)

(assert (=> b!3458804 m!3859937))

(assert (=> b!3458143 d!994834))

(declare-fun d!994836 () Bool)

(declare-fun lt!1175343 () Bool)

(assert (=> d!994836 (= lt!1175343 (set.member (get!11891 lt!1175179) (content!5183 rules!2135)))))

(declare-fun e!2142919 () Bool)

(assert (=> d!994836 (= lt!1175343 e!2142919)))

(declare-fun res!1395561 () Bool)

(assert (=> d!994836 (=> (not res!1395561) (not e!2142919))))

(assert (=> d!994836 (= res!1395561 (is-Cons!37158 rules!2135))))

(assert (=> d!994836 (= (contains!6885 rules!2135 (get!11891 lt!1175179)) lt!1175343)))

(declare-fun b!3458805 () Bool)

(declare-fun e!2142918 () Bool)

(assert (=> b!3458805 (= e!2142919 e!2142918)))

(declare-fun res!1395560 () Bool)

(assert (=> b!3458805 (=> res!1395560 e!2142918)))

(assert (=> b!3458805 (= res!1395560 (= (h!42578 rules!2135) (get!11891 lt!1175179)))))

(declare-fun b!3458806 () Bool)

(assert (=> b!3458806 (= e!2142918 (contains!6885 (t!272529 rules!2135) (get!11891 lt!1175179)))))

(assert (= (and d!994836 res!1395561) b!3458805))

(assert (= (and b!3458805 (not res!1395560)) b!3458806))

(assert (=> d!994836 m!3858387))

(assert (=> d!994836 m!3859109))

(declare-fun m!3859939 () Bool)

(assert (=> d!994836 m!3859939))

(assert (=> b!3458806 m!3859109))

(declare-fun m!3859941 () Bool)

(assert (=> b!3458806 m!3859941))

(assert (=> b!3458314 d!994836))

(declare-fun d!994838 () Bool)

(assert (=> d!994838 (= (get!11891 lt!1175179) (v!36836 lt!1175179))))

(assert (=> b!3458314 d!994838))

(declare-fun d!994840 () Bool)

(assert (=> d!994840 (= (head!7318 (drop!2010 lt!1175196 0)) (h!42579 (drop!2010 lt!1175196 0)))))

(assert (=> b!3458339 d!994840))

(declare-fun b!3458825 () Bool)

(declare-fun e!2142931 () List!37283)

(assert (=> b!3458825 (= e!2142931 (drop!2010 (t!272530 lt!1175197) (- (+ 0 1) 1)))))

(declare-fun d!994842 () Bool)

(declare-fun e!2142933 () Bool)

(assert (=> d!994842 e!2142933))

(declare-fun res!1395564 () Bool)

(assert (=> d!994842 (=> (not res!1395564) (not e!2142933))))

(declare-fun lt!1175346 () List!37283)

(declare-fun content!5186 (List!37283) (Set Token!10240))

(assert (=> d!994842 (= res!1395564 (set.subset (content!5186 lt!1175346) (content!5186 lt!1175197)))))

(declare-fun e!2142934 () List!37283)

(assert (=> d!994842 (= lt!1175346 e!2142934)))

(declare-fun c!591977 () Bool)

(assert (=> d!994842 (= c!591977 (is-Nil!37159 lt!1175197))))

(assert (=> d!994842 (= (drop!2010 lt!1175197 (+ 0 1)) lt!1175346)))

(declare-fun b!3458826 () Bool)

(declare-fun e!2142930 () Int)

(declare-fun call!249415 () Int)

(assert (=> b!3458826 (= e!2142930 (- call!249415 (+ 0 1)))))

(declare-fun b!3458827 () Bool)

(declare-fun e!2142932 () Int)

(assert (=> b!3458827 (= e!2142932 call!249415)))

(declare-fun b!3458828 () Bool)

(assert (=> b!3458828 (= e!2142930 0)))

(declare-fun b!3458829 () Bool)

(assert (=> b!3458829 (= e!2142932 e!2142930)))

(declare-fun c!591979 () Bool)

(assert (=> b!3458829 (= c!591979 (>= (+ 0 1) call!249415))))

(declare-fun b!3458830 () Bool)

(assert (=> b!3458830 (= e!2142934 e!2142931)))

(declare-fun c!591976 () Bool)

(assert (=> b!3458830 (= c!591976 (<= (+ 0 1) 0))))

(declare-fun b!3458831 () Bool)

(assert (=> b!3458831 (= e!2142931 lt!1175197)))

(declare-fun b!3458832 () Bool)

(assert (=> b!3458832 (= e!2142933 (= (size!28190 lt!1175346) e!2142932))))

(declare-fun c!591978 () Bool)

(assert (=> b!3458832 (= c!591978 (<= (+ 0 1) 0))))

(declare-fun bm!249410 () Bool)

(assert (=> bm!249410 (= call!249415 (size!28190 lt!1175197))))

(declare-fun b!3458833 () Bool)

(assert (=> b!3458833 (= e!2142934 Nil!37159)))

(assert (= (and d!994842 c!591977) b!3458833))

(assert (= (and d!994842 (not c!591977)) b!3458830))

(assert (= (and b!3458830 c!591976) b!3458831))

(assert (= (and b!3458830 (not c!591976)) b!3458825))

(assert (= (and d!994842 res!1395564) b!3458832))

(assert (= (and b!3458832 c!591978) b!3458827))

(assert (= (and b!3458832 (not c!591978)) b!3458829))

(assert (= (and b!3458829 c!591979) b!3458828))

(assert (= (and b!3458829 (not c!591979)) b!3458826))

(assert (= (or b!3458827 b!3458829 b!3458826) bm!249410))

(declare-fun m!3859943 () Bool)

(assert (=> b!3458825 m!3859943))

(declare-fun m!3859945 () Bool)

(assert (=> d!994842 m!3859945))

(declare-fun m!3859947 () Bool)

(assert (=> d!994842 m!3859947))

(declare-fun m!3859949 () Bool)

(assert (=> b!3458832 m!3859949))

(declare-fun m!3859951 () Bool)

(assert (=> bm!249410 m!3859951))

(assert (=> b!3458339 d!994842))

(declare-fun d!994844 () Bool)

(assert (=> d!994844 (= (list!13526 lt!1174837) (list!13530 (c!591767 lt!1174837)))))

(declare-fun bs!560222 () Bool)

(assert (= bs!560222 d!994844))

(declare-fun m!3859953 () Bool)

(assert (=> bs!560222 m!3859953))

(assert (=> b!3458339 d!994844))

(declare-fun d!994846 () Bool)

(declare-fun lt!1175352 () BalanceConc!22112)

(assert (=> d!994846 (= (list!13524 lt!1175352) (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174837 (+ 0 1)) (list!13524 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174837 0))))))))

(declare-fun e!2142935 () BalanceConc!22112)

(assert (=> d!994846 (= lt!1175352 e!2142935)))

(declare-fun c!591980 () Bool)

(assert (=> d!994846 (= c!591980 (>= (+ 0 1) (size!28183 lt!1174837)))))

(declare-fun e!2142936 () Bool)

(assert (=> d!994846 e!2142936))

(declare-fun res!1395565 () Bool)

(assert (=> d!994846 (=> (not res!1395565) (not e!2142936))))

(assert (=> d!994846 (= res!1395565 (>= (+ 0 1) 0))))

(assert (=> d!994846 (= (printTailRec!1521 thiss!18206 lt!1174837 (+ 0 1) (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174837 0)))) lt!1175352)))

(declare-fun b!3458834 () Bool)

(assert (=> b!3458834 (= e!2142936 (<= (+ 0 1) (size!28183 lt!1174837)))))

(declare-fun b!3458835 () Bool)

(assert (=> b!3458835 (= e!2142935 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174837 0))))))

(declare-fun b!3458836 () Bool)

(assert (=> b!3458836 (= e!2142935 (printTailRec!1521 thiss!18206 lt!1174837 (+ 0 1 1) (++!9158 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174837 0))) (charsOf!3451 (apply!8744 lt!1174837 (+ 0 1))))))))

(declare-fun lt!1175349 () List!37283)

(assert (=> b!3458836 (= lt!1175349 (list!13526 lt!1174837))))

(declare-fun lt!1175347 () Unit!52487)

(assert (=> b!3458836 (= lt!1175347 (lemmaDropApply!1162 lt!1175349 (+ 0 1)))))

(assert (=> b!3458836 (= (head!7318 (drop!2010 lt!1175349 (+ 0 1))) (apply!8748 lt!1175349 (+ 0 1)))))

(declare-fun lt!1175353 () Unit!52487)

(assert (=> b!3458836 (= lt!1175353 lt!1175347)))

(declare-fun lt!1175350 () List!37283)

(assert (=> b!3458836 (= lt!1175350 (list!13526 lt!1174837))))

(declare-fun lt!1175351 () Unit!52487)

(assert (=> b!3458836 (= lt!1175351 (lemmaDropTail!1046 lt!1175350 (+ 0 1)))))

(assert (=> b!3458836 (= (tail!5430 (drop!2010 lt!1175350 (+ 0 1))) (drop!2010 lt!1175350 (+ 0 1 1)))))

(declare-fun lt!1175348 () Unit!52487)

(assert (=> b!3458836 (= lt!1175348 lt!1175351)))

(assert (= (and d!994846 res!1395565) b!3458834))

(assert (= (and d!994846 c!591980) b!3458835))

(assert (= (and d!994846 (not c!591980)) b!3458836))

(assert (=> d!994846 m!3859177))

(assert (=> d!994846 m!3859187))

(declare-fun m!3859955 () Bool)

(assert (=> d!994846 m!3859955))

(declare-fun m!3859957 () Bool)

(assert (=> d!994846 m!3859957))

(assert (=> d!994846 m!3859955))

(declare-fun m!3859959 () Bool)

(assert (=> d!994846 m!3859959))

(declare-fun m!3859961 () Bool)

(assert (=> d!994846 m!3859961))

(assert (=> d!994846 m!3859957))

(assert (=> b!3458834 m!3859177))

(assert (=> b!3458836 m!3859187))

(declare-fun m!3859963 () Bool)

(assert (=> b!3458836 m!3859963))

(declare-fun m!3859965 () Bool)

(assert (=> b!3458836 m!3859965))

(declare-fun m!3859967 () Bool)

(assert (=> b!3458836 m!3859967))

(declare-fun m!3859969 () Bool)

(assert (=> b!3458836 m!3859969))

(assert (=> b!3458836 m!3859967))

(assert (=> b!3458836 m!3859965))

(declare-fun m!3859971 () Bool)

(assert (=> b!3458836 m!3859971))

(declare-fun m!3859973 () Bool)

(assert (=> b!3458836 m!3859973))

(declare-fun m!3859975 () Bool)

(assert (=> b!3458836 m!3859975))

(assert (=> b!3458836 m!3859963))

(declare-fun m!3859977 () Bool)

(assert (=> b!3458836 m!3859977))

(assert (=> b!3458836 m!3858923))

(declare-fun m!3859979 () Bool)

(assert (=> b!3458836 m!3859979))

(declare-fun m!3859981 () Bool)

(assert (=> b!3458836 m!3859981))

(assert (=> b!3458836 m!3859975))

(assert (=> b!3458836 m!3859981))

(declare-fun m!3859983 () Bool)

(assert (=> b!3458836 m!3859983))

(declare-fun m!3859985 () Bool)

(assert (=> b!3458836 m!3859985))

(assert (=> b!3458339 d!994846))

(declare-fun d!994848 () Bool)

(assert (=> d!994848 (= (tail!5430 (drop!2010 lt!1175197 0)) (drop!2010 lt!1175197 (+ 0 1)))))

(declare-fun lt!1175356 () Unit!52487)

(declare-fun choose!20003 (List!37283 Int) Unit!52487)

(assert (=> d!994848 (= lt!1175356 (choose!20003 lt!1175197 0))))

(declare-fun e!2142939 () Bool)

(assert (=> d!994848 e!2142939))

(declare-fun res!1395568 () Bool)

(assert (=> d!994848 (=> (not res!1395568) (not e!2142939))))

(assert (=> d!994848 (= res!1395568 (>= 0 0))))

(assert (=> d!994848 (= (lemmaDropTail!1046 lt!1175197 0) lt!1175356)))

(declare-fun b!3458839 () Bool)

(assert (=> b!3458839 (= e!2142939 (< 0 (size!28190 lt!1175197)))))

(assert (= (and d!994848 res!1395568) b!3458839))

(assert (=> d!994848 m!3859203))

(assert (=> d!994848 m!3859203))

(assert (=> d!994848 m!3859205))

(assert (=> d!994848 m!3859207))

(declare-fun m!3859987 () Bool)

(assert (=> d!994848 m!3859987))

(assert (=> b!3458839 m!3859951))

(assert (=> b!3458339 d!994848))

(declare-fun d!994850 () Bool)

(declare-fun lt!1175357 () Token!10240)

(assert (=> d!994850 (= lt!1175357 (apply!8748 (list!13526 lt!1174837) 0))))

(assert (=> d!994850 (= lt!1175357 (apply!8749 (c!591767 lt!1174837) 0))))

(declare-fun e!2142940 () Bool)

(assert (=> d!994850 e!2142940))

(declare-fun res!1395569 () Bool)

(assert (=> d!994850 (=> (not res!1395569) (not e!2142940))))

(assert (=> d!994850 (= res!1395569 (<= 0 0))))

(assert (=> d!994850 (= (apply!8744 lt!1174837 0) lt!1175357)))

(declare-fun b!3458840 () Bool)

(assert (=> b!3458840 (= e!2142940 (< 0 (size!28183 lt!1174837)))))

(assert (= (and d!994850 res!1395569) b!3458840))

(assert (=> d!994850 m!3858923))

(assert (=> d!994850 m!3858923))

(declare-fun m!3859989 () Bool)

(assert (=> d!994850 m!3859989))

(declare-fun m!3859991 () Bool)

(assert (=> d!994850 m!3859991))

(assert (=> b!3458840 m!3859177))

(assert (=> b!3458339 d!994850))

(declare-fun d!994852 () Bool)

(declare-fun lt!1175360 () Token!10240)

(assert (=> d!994852 (contains!6889 lt!1175196 lt!1175360)))

(declare-fun e!2142945 () Token!10240)

(assert (=> d!994852 (= lt!1175360 e!2142945)))

(declare-fun c!591983 () Bool)

(assert (=> d!994852 (= c!591983 (= 0 0))))

(declare-fun e!2142946 () Bool)

(assert (=> d!994852 e!2142946))

(declare-fun res!1395572 () Bool)

(assert (=> d!994852 (=> (not res!1395572) (not e!2142946))))

(assert (=> d!994852 (= res!1395572 (<= 0 0))))

(assert (=> d!994852 (= (apply!8748 lt!1175196 0) lt!1175360)))

(declare-fun b!3458847 () Bool)

(assert (=> b!3458847 (= e!2142946 (< 0 (size!28190 lt!1175196)))))

(declare-fun b!3458848 () Bool)

(assert (=> b!3458848 (= e!2142945 (head!7318 lt!1175196))))

(declare-fun b!3458849 () Bool)

(assert (=> b!3458849 (= e!2142945 (apply!8748 (tail!5430 lt!1175196) (- 0 1)))))

(assert (= (and d!994852 res!1395572) b!3458847))

(assert (= (and d!994852 c!591983) b!3458848))

(assert (= (and d!994852 (not c!591983)) b!3458849))

(declare-fun m!3859993 () Bool)

(assert (=> d!994852 m!3859993))

(declare-fun m!3859995 () Bool)

(assert (=> b!3458847 m!3859995))

(declare-fun m!3859997 () Bool)

(assert (=> b!3458848 m!3859997))

(declare-fun m!3859999 () Bool)

(assert (=> b!3458849 m!3859999))

(assert (=> b!3458849 m!3859999))

(declare-fun m!3860001 () Bool)

(assert (=> b!3458849 m!3860001))

(assert (=> b!3458339 d!994852))

(declare-fun d!994854 () Bool)

(assert (=> d!994854 (= (head!7318 (drop!2010 lt!1175196 0)) (apply!8748 lt!1175196 0))))

(declare-fun lt!1175363 () Unit!52487)

(declare-fun choose!20004 (List!37283 Int) Unit!52487)

(assert (=> d!994854 (= lt!1175363 (choose!20004 lt!1175196 0))))

(declare-fun e!2142949 () Bool)

(assert (=> d!994854 e!2142949))

(declare-fun res!1395575 () Bool)

(assert (=> d!994854 (=> (not res!1395575) (not e!2142949))))

(assert (=> d!994854 (= res!1395575 (>= 0 0))))

(assert (=> d!994854 (= (lemmaDropApply!1162 lt!1175196 0) lt!1175363)))

(declare-fun b!3458852 () Bool)

(assert (=> b!3458852 (= e!2142949 (< 0 (size!28190 lt!1175196)))))

(assert (= (and d!994854 res!1395575) b!3458852))

(assert (=> d!994854 m!3859189))

(assert (=> d!994854 m!3859189))

(assert (=> d!994854 m!3859191))

(assert (=> d!994854 m!3859201))

(declare-fun m!3860003 () Bool)

(assert (=> d!994854 m!3860003))

(assert (=> b!3458852 m!3859995))

(assert (=> b!3458339 d!994854))

(declare-fun b!3458862 () Bool)

(declare-fun res!1395586 () Bool)

(declare-fun e!2142952 () Bool)

(assert (=> b!3458862 (=> (not res!1395586) (not e!2142952))))

(declare-fun height!1693 (Conc!11249) Int)

(declare-fun ++!9160 (Conc!11249 Conc!11249) Conc!11249)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3458862 (= res!1395586 (<= (height!1693 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174837 0))))) (+ (max!0 (height!1693 (c!591766 (BalanceConc!22113 Empty!11249))) (height!1693 (c!591766 (charsOf!3451 (apply!8744 lt!1174837 0))))) 1)))))

(declare-fun b!3458863 () Bool)

(declare-fun res!1395587 () Bool)

(assert (=> b!3458863 (=> (not res!1395587) (not e!2142952))))

(assert (=> b!3458863 (= res!1395587 (>= (height!1693 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174837 0))))) (max!0 (height!1693 (c!591766 (BalanceConc!22113 Empty!11249))) (height!1693 (c!591766 (charsOf!3451 (apply!8744 lt!1174837 0)))))))))

(declare-fun b!3458861 () Bool)

(declare-fun res!1395584 () Bool)

(assert (=> b!3458861 (=> (not res!1395584) (not e!2142952))))

(declare-fun isBalanced!3414 (Conc!11249) Bool)

(assert (=> b!3458861 (= res!1395584 (isBalanced!3414 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174837 0))))))))

(declare-fun b!3458864 () Bool)

(declare-fun lt!1175366 () BalanceConc!22112)

(assert (=> b!3458864 (= e!2142952 (= (list!13524 lt!1175366) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (apply!8744 lt!1174837 0))))))))

(declare-fun d!994856 () Bool)

(assert (=> d!994856 e!2142952))

(declare-fun res!1395585 () Bool)

(assert (=> d!994856 (=> (not res!1395585) (not e!2142952))))

(declare-fun appendAssocInst!802 (Conc!11249 Conc!11249) Bool)

(assert (=> d!994856 (= res!1395585 (appendAssocInst!802 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174837 0)))))))

(assert (=> d!994856 (= lt!1175366 (BalanceConc!22113 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174837 0))))))))

(assert (=> d!994856 (= (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174837 0))) lt!1175366)))

(assert (= (and d!994856 res!1395585) b!3458861))

(assert (= (and b!3458861 res!1395584) b!3458862))

(assert (= (and b!3458862 res!1395586) b!3458863))

(assert (= (and b!3458863 res!1395587) b!3458864))

(declare-fun m!3860005 () Bool)

(assert (=> b!3458864 m!3860005))

(assert (=> b!3458864 m!3858443))

(assert (=> b!3458864 m!3859185))

(declare-fun m!3860007 () Bool)

(assert (=> b!3458864 m!3860007))

(assert (=> b!3458864 m!3858443))

(assert (=> b!3458864 m!3860007))

(declare-fun m!3860009 () Bool)

(assert (=> b!3458864 m!3860009))

(declare-fun m!3860011 () Bool)

(assert (=> b!3458862 m!3860011))

(declare-fun m!3860013 () Bool)

(assert (=> b!3458862 m!3860013))

(declare-fun m!3860015 () Bool)

(assert (=> b!3458862 m!3860015))

(declare-fun m!3860017 () Bool)

(assert (=> b!3458862 m!3860017))

(declare-fun m!3860019 () Bool)

(assert (=> b!3458862 m!3860019))

(assert (=> b!3458862 m!3860013))

(assert (=> b!3458862 m!3860017))

(assert (=> b!3458862 m!3860011))

(assert (=> b!3458863 m!3860011))

(assert (=> b!3458863 m!3860013))

(assert (=> b!3458863 m!3860015))

(assert (=> b!3458863 m!3860017))

(assert (=> b!3458863 m!3860019))

(assert (=> b!3458863 m!3860013))

(assert (=> b!3458863 m!3860017))

(assert (=> b!3458863 m!3860011))

(declare-fun m!3860021 () Bool)

(assert (=> d!994856 m!3860021))

(assert (=> d!994856 m!3860017))

(assert (=> b!3458861 m!3860017))

(assert (=> b!3458861 m!3860017))

(declare-fun m!3860023 () Bool)

(assert (=> b!3458861 m!3860023))

(assert (=> b!3458339 d!994856))

(declare-fun b!3458865 () Bool)

(declare-fun e!2142954 () List!37283)

(assert (=> b!3458865 (= e!2142954 (drop!2010 (t!272530 lt!1175197) (- 0 1)))))

(declare-fun d!994858 () Bool)

(declare-fun e!2142956 () Bool)

(assert (=> d!994858 e!2142956))

(declare-fun res!1395588 () Bool)

(assert (=> d!994858 (=> (not res!1395588) (not e!2142956))))

(declare-fun lt!1175367 () List!37283)

(assert (=> d!994858 (= res!1395588 (set.subset (content!5186 lt!1175367) (content!5186 lt!1175197)))))

(declare-fun e!2142957 () List!37283)

(assert (=> d!994858 (= lt!1175367 e!2142957)))

(declare-fun c!591988 () Bool)

(assert (=> d!994858 (= c!591988 (is-Nil!37159 lt!1175197))))

(assert (=> d!994858 (= (drop!2010 lt!1175197 0) lt!1175367)))

(declare-fun b!3458866 () Bool)

(declare-fun e!2142953 () Int)

(declare-fun call!249416 () Int)

(assert (=> b!3458866 (= e!2142953 (- call!249416 0))))

(declare-fun b!3458867 () Bool)

(declare-fun e!2142955 () Int)

(assert (=> b!3458867 (= e!2142955 call!249416)))

(declare-fun b!3458868 () Bool)

(assert (=> b!3458868 (= e!2142953 0)))

(declare-fun b!3458869 () Bool)

(assert (=> b!3458869 (= e!2142955 e!2142953)))

(declare-fun c!591990 () Bool)

(assert (=> b!3458869 (= c!591990 (>= 0 call!249416))))

(declare-fun b!3458870 () Bool)

(assert (=> b!3458870 (= e!2142957 e!2142954)))

(declare-fun c!591987 () Bool)

(assert (=> b!3458870 (= c!591987 (<= 0 0))))

(declare-fun b!3458871 () Bool)

(assert (=> b!3458871 (= e!2142954 lt!1175197)))

(declare-fun b!3458872 () Bool)

(assert (=> b!3458872 (= e!2142956 (= (size!28190 lt!1175367) e!2142955))))

(declare-fun c!591989 () Bool)

(assert (=> b!3458872 (= c!591989 (<= 0 0))))

(declare-fun bm!249411 () Bool)

(assert (=> bm!249411 (= call!249416 (size!28190 lt!1175197))))

(declare-fun b!3458873 () Bool)

(assert (=> b!3458873 (= e!2142957 Nil!37159)))

(assert (= (and d!994858 c!591988) b!3458873))

(assert (= (and d!994858 (not c!591988)) b!3458870))

(assert (= (and b!3458870 c!591987) b!3458871))

(assert (= (and b!3458870 (not c!591987)) b!3458865))

(assert (= (and d!994858 res!1395588) b!3458872))

(assert (= (and b!3458872 c!591989) b!3458867))

(assert (= (and b!3458872 (not c!591989)) b!3458869))

(assert (= (and b!3458869 c!591990) b!3458868))

(assert (= (and b!3458869 (not c!591990)) b!3458866))

(assert (= (or b!3458867 b!3458869 b!3458866) bm!249411))

(declare-fun m!3860025 () Bool)

(assert (=> b!3458865 m!3860025))

(declare-fun m!3860027 () Bool)

(assert (=> d!994858 m!3860027))

(assert (=> d!994858 m!3859947))

(declare-fun m!3860029 () Bool)

(assert (=> b!3458872 m!3860029))

(assert (=> bm!249411 m!3859951))

(assert (=> b!3458339 d!994858))

(declare-fun d!994860 () Bool)

(declare-fun lt!1175368 () BalanceConc!22112)

(assert (=> d!994860 (= (list!13524 lt!1175368) (originalCharacters!6151 (apply!8744 lt!1174837 0)))))

(assert (=> d!994860 (= lt!1175368 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0)))) (value!175416 (apply!8744 lt!1174837 0))))))

(assert (=> d!994860 (= (charsOf!3451 (apply!8744 lt!1174837 0)) lt!1175368)))

(declare-fun b_lambda!99559 () Bool)

(assert (=> (not b_lambda!99559) (not d!994860)))

(declare-fun tb!188379 () Bool)

(declare-fun t!272660 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0))))) t!272660) tb!188379))

(declare-fun b!3458874 () Bool)

(declare-fun e!2142958 () Bool)

(declare-fun tp!1077900 () Bool)

(assert (=> b!3458874 (= e!2142958 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0)))) (value!175416 (apply!8744 lt!1174837 0))))) tp!1077900))))

(declare-fun result!232364 () Bool)

(assert (=> tb!188379 (= result!232364 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0)))) (value!175416 (apply!8744 lt!1174837 0)))) e!2142958))))

(assert (= tb!188379 b!3458874))

(declare-fun m!3860031 () Bool)

(assert (=> b!3458874 m!3860031))

(declare-fun m!3860033 () Bool)

(assert (=> tb!188379 m!3860033))

(assert (=> d!994860 t!272660))

(declare-fun b_and!243203 () Bool)

(assert (= b_and!243193 (and (=> t!272660 result!232364) b_and!243203)))

(declare-fun tb!188381 () Bool)

(declare-fun t!272662 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0))))) t!272662) tb!188381))

(declare-fun result!232366 () Bool)

(assert (= result!232366 result!232364))

(assert (=> d!994860 t!272662))

(declare-fun b_and!243205 () Bool)

(assert (= b_and!243195 (and (=> t!272662 result!232366) b_and!243205)))

(declare-fun tb!188383 () Bool)

(declare-fun t!272664 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0))))) t!272664) tb!188383))

(declare-fun result!232368 () Bool)

(assert (= result!232368 result!232364))

(assert (=> d!994860 t!272664))

(declare-fun b_and!243207 () Bool)

(assert (= b_and!243201 (and (=> t!272664 result!232368) b_and!243207)))

(declare-fun t!272666 () Bool)

(declare-fun tb!188385 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0))))) t!272666) tb!188385))

(declare-fun result!232370 () Bool)

(assert (= result!232370 result!232364))

(assert (=> d!994860 t!272666))

(declare-fun b_and!243209 () Bool)

(assert (= b_and!243197 (and (=> t!272666 result!232370) b_and!243209)))

(declare-fun t!272668 () Bool)

(declare-fun tb!188387 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0))))) t!272668) tb!188387))

(declare-fun result!232372 () Bool)

(assert (= result!232372 result!232364))

(assert (=> d!994860 t!272668))

(declare-fun b_and!243211 () Bool)

(assert (= b_and!243199 (and (=> t!272668 result!232372) b_and!243211)))

(declare-fun m!3860035 () Bool)

(assert (=> d!994860 m!3860035))

(declare-fun m!3860037 () Bool)

(assert (=> d!994860 m!3860037))

(assert (=> b!3458339 d!994860))

(declare-fun d!994862 () Bool)

(assert (=> d!994862 (= (tail!5430 (drop!2010 lt!1175197 0)) (t!272530 (drop!2010 lt!1175197 0)))))

(assert (=> b!3458339 d!994862))

(declare-fun b!3458875 () Bool)

(declare-fun e!2142960 () List!37283)

(assert (=> b!3458875 (= e!2142960 (drop!2010 (t!272530 lt!1175196) (- 0 1)))))

(declare-fun d!994864 () Bool)

(declare-fun e!2142962 () Bool)

(assert (=> d!994864 e!2142962))

(declare-fun res!1395589 () Bool)

(assert (=> d!994864 (=> (not res!1395589) (not e!2142962))))

(declare-fun lt!1175369 () List!37283)

(assert (=> d!994864 (= res!1395589 (set.subset (content!5186 lt!1175369) (content!5186 lt!1175196)))))

(declare-fun e!2142963 () List!37283)

(assert (=> d!994864 (= lt!1175369 e!2142963)))

(declare-fun c!591992 () Bool)

(assert (=> d!994864 (= c!591992 (is-Nil!37159 lt!1175196))))

(assert (=> d!994864 (= (drop!2010 lt!1175196 0) lt!1175369)))

(declare-fun b!3458876 () Bool)

(declare-fun e!2142959 () Int)

(declare-fun call!249417 () Int)

(assert (=> b!3458876 (= e!2142959 (- call!249417 0))))

(declare-fun b!3458877 () Bool)

(declare-fun e!2142961 () Int)

(assert (=> b!3458877 (= e!2142961 call!249417)))

(declare-fun b!3458878 () Bool)

(assert (=> b!3458878 (= e!2142959 0)))

(declare-fun b!3458879 () Bool)

(assert (=> b!3458879 (= e!2142961 e!2142959)))

(declare-fun c!591994 () Bool)

(assert (=> b!3458879 (= c!591994 (>= 0 call!249417))))

(declare-fun b!3458880 () Bool)

(assert (=> b!3458880 (= e!2142963 e!2142960)))

(declare-fun c!591991 () Bool)

(assert (=> b!3458880 (= c!591991 (<= 0 0))))

(declare-fun b!3458881 () Bool)

(assert (=> b!3458881 (= e!2142960 lt!1175196)))

(declare-fun b!3458882 () Bool)

(assert (=> b!3458882 (= e!2142962 (= (size!28190 lt!1175369) e!2142961))))

(declare-fun c!591993 () Bool)

(assert (=> b!3458882 (= c!591993 (<= 0 0))))

(declare-fun bm!249412 () Bool)

(assert (=> bm!249412 (= call!249417 (size!28190 lt!1175196))))

(declare-fun b!3458883 () Bool)

(assert (=> b!3458883 (= e!2142963 Nil!37159)))

(assert (= (and d!994864 c!591992) b!3458883))

(assert (= (and d!994864 (not c!591992)) b!3458880))

(assert (= (and b!3458880 c!591991) b!3458881))

(assert (= (and b!3458880 (not c!591991)) b!3458875))

(assert (= (and d!994864 res!1395589) b!3458882))

(assert (= (and b!3458882 c!591993) b!3458877))

(assert (= (and b!3458882 (not c!591993)) b!3458879))

(assert (= (and b!3458879 c!591994) b!3458878))

(assert (= (and b!3458879 (not c!591994)) b!3458876))

(assert (= (or b!3458877 b!3458879 b!3458876) bm!249412))

(declare-fun m!3860039 () Bool)

(assert (=> b!3458875 m!3860039))

(declare-fun m!3860041 () Bool)

(assert (=> d!994864 m!3860041))

(declare-fun m!3860043 () Bool)

(assert (=> d!994864 m!3860043))

(declare-fun m!3860045 () Bool)

(assert (=> b!3458882 m!3860045))

(assert (=> bm!249412 m!3859995))

(assert (=> b!3458339 d!994864))

(declare-fun d!994866 () Bool)

(assert (=> d!994866 (= (isEmpty!21512 lt!1175092) (not (is-Some!7521 lt!1175092)))))

(assert (=> d!994504 d!994866))

(declare-fun d!994868 () Bool)

(assert (=> d!994868 (= (isEmpty!21510 (_1!21574 lt!1175090)) (is-Nil!37157 (_1!21574 lt!1175090)))))

(assert (=> d!994504 d!994868))

(declare-fun d!994870 () Bool)

(declare-fun lt!1175389 () tuple2!36880)

(assert (=> d!994870 (= (++!9156 (_1!21574 lt!1175389) (_2!21574 lt!1175389)) lt!1174846)))

(declare-fun sizeTr!202 (List!37281 Int) Int)

(assert (=> d!994870 (= lt!1175389 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 0 lt!1174846 lt!1174846 (sizeTr!202 lt!1174846 0)))))

(declare-fun lt!1175388 () Unit!52487)

(declare-fun lt!1175391 () Unit!52487)

(assert (=> d!994870 (= lt!1175388 lt!1175391)))

(declare-fun lt!1175393 () List!37281)

(declare-fun lt!1175387 () Int)

(assert (=> d!994870 (= (sizeTr!202 lt!1175393 lt!1175387) (+ (size!28184 lt!1175393) lt!1175387))))

(declare-fun lemmaSizeTrEqualsSize!201 (List!37281 Int) Unit!52487)

(assert (=> d!994870 (= lt!1175391 (lemmaSizeTrEqualsSize!201 lt!1175393 lt!1175387))))

(assert (=> d!994870 (= lt!1175387 0)))

(assert (=> d!994870 (= lt!1175393 Nil!37157)))

(declare-fun lt!1175392 () Unit!52487)

(declare-fun lt!1175390 () Unit!52487)

(assert (=> d!994870 (= lt!1175392 lt!1175390)))

(declare-fun lt!1175386 () Int)

(assert (=> d!994870 (= (sizeTr!202 lt!1174846 lt!1175386) (+ (size!28184 lt!1174846) lt!1175386))))

(assert (=> d!994870 (= lt!1175390 (lemmaSizeTrEqualsSize!201 lt!1174846 lt!1175386))))

(assert (=> d!994870 (= lt!1175386 0)))

(assert (=> d!994870 (validRegex!4643 (regex!5437 (rule!8027 (h!42579 tokens!494))))))

(assert (=> d!994870 (= (findLongestMatch!823 (regex!5437 (rule!8027 (h!42579 tokens!494))) lt!1174846) lt!1175389)))

(declare-fun bs!560223 () Bool)

(assert (= bs!560223 d!994870))

(declare-fun m!3860047 () Bool)

(assert (=> bs!560223 m!3860047))

(declare-fun m!3860049 () Bool)

(assert (=> bs!560223 m!3860049))

(declare-fun m!3860051 () Bool)

(assert (=> bs!560223 m!3860051))

(assert (=> bs!560223 m!3858103))

(declare-fun m!3860053 () Bool)

(assert (=> bs!560223 m!3860053))

(declare-fun m!3860055 () Bool)

(assert (=> bs!560223 m!3860055))

(declare-fun m!3860057 () Bool)

(assert (=> bs!560223 m!3860057))

(declare-fun m!3860059 () Bool)

(assert (=> bs!560223 m!3860059))

(declare-fun m!3860061 () Bool)

(assert (=> bs!560223 m!3860061))

(declare-fun m!3860063 () Bool)

(assert (=> bs!560223 m!3860063))

(assert (=> bs!560223 m!3860047))

(assert (=> d!994504 d!994870))

(declare-fun d!994872 () Bool)

(declare-fun res!1395594 () Bool)

(declare-fun e!2142966 () Bool)

(assert (=> d!994872 (=> (not res!1395594) (not e!2142966))))

(assert (=> d!994872 (= res!1395594 (validRegex!4643 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(assert (=> d!994872 (= (ruleValid!1737 thiss!18206 (rule!8027 (h!42579 tokens!494))) e!2142966)))

(declare-fun b!3458888 () Bool)

(declare-fun res!1395595 () Bool)

(assert (=> b!3458888 (=> (not res!1395595) (not e!2142966))))

(assert (=> b!3458888 (= res!1395595 (not (nullable!3487 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(declare-fun b!3458889 () Bool)

(assert (=> b!3458889 (= e!2142966 (not (= (tag!6045 (rule!8027 (h!42579 tokens!494))) (String!41671 ""))))))

(assert (= (and d!994872 res!1395594) b!3458888))

(assert (= (and b!3458888 res!1395595) b!3458889))

(assert (=> d!994872 m!3860063))

(declare-fun m!3860065 () Bool)

(assert (=> b!3458888 m!3860065))

(assert (=> d!994504 d!994872))

(declare-fun d!994874 () Bool)

(declare-fun c!591997 () Bool)

(assert (=> d!994874 (= c!591997 (is-Nil!37157 lt!1175060))))

(declare-fun e!2142969 () (Set C!20578))

(assert (=> d!994874 (= (content!5182 lt!1175060) e!2142969)))

(declare-fun b!3458894 () Bool)

(assert (=> b!3458894 (= e!2142969 (as set.empty (Set C!20578)))))

(declare-fun b!3458895 () Bool)

(assert (=> b!3458895 (= e!2142969 (set.union (set.insert (h!42577 lt!1175060) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1175060))))))

(assert (= (and d!994874 c!591997) b!3458894))

(assert (= (and d!994874 (not c!591997)) b!3458895))

(declare-fun m!3860067 () Bool)

(assert (=> b!3458895 m!3860067))

(declare-fun m!3860069 () Bool)

(assert (=> b!3458895 m!3860069))

(assert (=> d!994474 d!994874))

(declare-fun d!994876 () Bool)

(declare-fun c!591998 () Bool)

(assert (=> d!994876 (= c!591998 (is-Nil!37157 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)))))

(declare-fun e!2142970 () (Set C!20578))

(assert (=> d!994876 (= (content!5182 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) e!2142970)))

(declare-fun b!3458896 () Bool)

(assert (=> b!3458896 (= e!2142970 (as set.empty (Set C!20578)))))

(declare-fun b!3458897 () Bool)

(assert (=> b!3458897 (= e!2142970 (set.union (set.insert (h!42577 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) (as set.empty (Set C!20578))) (content!5182 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)))))))

(assert (= (and d!994876 c!591998) b!3458896))

(assert (= (and d!994876 (not c!591998)) b!3458897))

(declare-fun m!3860071 () Bool)

(assert (=> b!3458897 m!3860071))

(declare-fun m!3860073 () Bool)

(assert (=> b!3458897 m!3860073))

(assert (=> d!994474 d!994876))

(declare-fun c!591999 () Bool)

(declare-fun d!994878 () Bool)

(assert (=> d!994878 (= c!591999 (is-Nil!37157 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))

(declare-fun e!2142971 () (Set C!20578))

(assert (=> d!994878 (= (content!5182 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)) e!2142971)))

(declare-fun b!3458898 () Bool)

(assert (=> b!3458898 (= e!2142971 (as set.empty (Set C!20578)))))

(declare-fun b!3458899 () Bool)

(assert (=> b!3458899 (= e!2142971 (set.union (set.insert (h!42577 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)) (as set.empty (Set C!20578))) (content!5182 (t!272528 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(assert (= (and d!994878 c!591999) b!3458898))

(assert (= (and d!994878 (not c!591999)) b!3458899))

(declare-fun m!3860075 () Bool)

(assert (=> b!3458899 m!3860075))

(declare-fun m!3860077 () Bool)

(assert (=> b!3458899 m!3860077))

(assert (=> d!994474 d!994878))

(declare-fun d!994880 () Bool)

(assert (=> d!994880 (= (list!13524 lt!1175040) (list!13527 (c!591766 lt!1175040)))))

(declare-fun bs!560224 () Bool)

(assert (= bs!560224 d!994880))

(declare-fun m!3860079 () Bool)

(assert (=> bs!560224 m!3860079))

(assert (=> d!994448 d!994880))

(assert (=> b!3457862 d!994760))

(declare-fun d!994882 () Bool)

(declare-fun lt!1175394 () Int)

(assert (=> d!994882 (= lt!1175394 (size!28190 (list!13526 (_1!21570 lt!1175008))))))

(assert (=> d!994882 (= lt!1175394 (size!28191 (c!591767 (_1!21570 lt!1175008))))))

(assert (=> d!994882 (= (size!28183 (_1!21570 lt!1175008)) lt!1175394)))

(declare-fun bs!560225 () Bool)

(assert (= bs!560225 d!994882))

(declare-fun m!3860081 () Bool)

(assert (=> bs!560225 m!3860081))

(assert (=> bs!560225 m!3860081))

(declare-fun m!3860083 () Bool)

(assert (=> bs!560225 m!3860083))

(declare-fun m!3860085 () Bool)

(assert (=> bs!560225 m!3860085))

(assert (=> d!994418 d!994882))

(declare-fun d!994884 () Bool)

(assert (=> d!994884 (= (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)))))) (list!13530 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))))))))))

(declare-fun bs!560226 () Bool)

(assert (= bs!560226 d!994884))

(declare-fun m!3860087 () Bool)

(assert (=> bs!560226 m!3860087))

(assert (=> d!994418 d!994884))

(declare-fun b!3458900 () Bool)

(declare-fun e!2142972 () Bool)

(declare-fun lt!1175395 () tuple2!36872)

(assert (=> b!3458900 (= e!2142972 (not (isEmpty!21505 (_1!21570 lt!1175395))))))

(declare-fun e!2142974 () Bool)

(declare-fun b!3458902 () Bool)

(assert (=> b!3458902 (= e!2142974 (= (_2!21570 lt!1175395) (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)))))))

(declare-fun b!3458903 () Bool)

(assert (=> b!3458903 (= e!2142974 e!2142972)))

(declare-fun res!1395597 () Bool)

(assert (=> b!3458903 (= res!1395597 (< (size!28188 (_2!21570 lt!1175395)) (size!28188 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))))))))

(assert (=> b!3458903 (=> (not res!1395597) (not e!2142972))))

(declare-fun b!3458904 () Bool)

(declare-fun res!1395596 () Bool)

(declare-fun e!2142973 () Bool)

(assert (=> b!3458904 (=> (not res!1395596) (not e!2142973))))

(assert (=> b!3458904 (= res!1395596 (= (list!13526 (_1!21570 lt!1175395)) (_1!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))))))))))

(declare-fun b!3458901 () Bool)

(assert (=> b!3458901 (= e!2142973 (= (list!13524 (_2!21570 lt!1175395)) (_2!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))))))))))

(declare-fun d!994886 () Bool)

(assert (=> d!994886 e!2142973))

(declare-fun res!1395598 () Bool)

(assert (=> d!994886 (=> (not res!1395598) (not e!2142973))))

(assert (=> d!994886 (= res!1395598 e!2142974)))

(declare-fun c!592000 () Bool)

(assert (=> d!994886 (= c!592000 (> (size!28183 (_1!21570 lt!1175395)) 0))))

(assert (=> d!994886 (= lt!1175395 (lexTailRecV2!1056 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))) (BalanceConc!22113 Empty!11249) (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))) (BalanceConc!22115 Empty!11250)))))

(assert (=> d!994886 (= (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)))) lt!1175395)))

(assert (= (and d!994886 c!592000) b!3458903))

(assert (= (and d!994886 (not c!592000)) b!3458902))

(assert (= (and b!3458903 res!1395597) b!3458900))

(assert (= (and d!994886 res!1395598) b!3458904))

(assert (= (and b!3458904 res!1395596) b!3458901))

(declare-fun m!3860089 () Bool)

(assert (=> b!3458903 m!3860089))

(assert (=> b!3458903 m!3858491))

(declare-fun m!3860091 () Bool)

(assert (=> b!3458903 m!3860091))

(declare-fun m!3860093 () Bool)

(assert (=> d!994886 m!3860093))

(assert (=> d!994886 m!3858491))

(assert (=> d!994886 m!3858491))

(declare-fun m!3860095 () Bool)

(assert (=> d!994886 m!3860095))

(declare-fun m!3860097 () Bool)

(assert (=> b!3458900 m!3860097))

(declare-fun m!3860099 () Bool)

(assert (=> b!3458901 m!3860099))

(assert (=> b!3458901 m!3858491))

(declare-fun m!3860101 () Bool)

(assert (=> b!3458901 m!3860101))

(assert (=> b!3458901 m!3860101))

(declare-fun m!3860103 () Bool)

(assert (=> b!3458901 m!3860103))

(declare-fun m!3860105 () Bool)

(assert (=> b!3458904 m!3860105))

(assert (=> b!3458904 m!3858491))

(assert (=> b!3458904 m!3860101))

(assert (=> b!3458904 m!3860101))

(assert (=> b!3458904 m!3860103))

(assert (=> d!994418 d!994886))

(declare-fun d!994888 () Bool)

(declare-fun lt!1175396 () BalanceConc!22112)

(assert (=> d!994888 (= (list!13524 lt!1175396) (printList!1574 thiss!18206 (list!13526 (singletonSeq!2533 (h!42579 tokens!494)))))))

(assert (=> d!994888 (= lt!1175396 (printTailRec!1521 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)) 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!994888 (= (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))) lt!1175396)))

(declare-fun bs!560227 () Bool)

(assert (= bs!560227 d!994888))

(declare-fun m!3860107 () Bool)

(assert (=> bs!560227 m!3860107))

(assert (=> bs!560227 m!3858085))

(assert (=> bs!560227 m!3858499))

(assert (=> bs!560227 m!3858499))

(declare-fun m!3860109 () Bool)

(assert (=> bs!560227 m!3860109))

(assert (=> bs!560227 m!3858085))

(declare-fun m!3860111 () Bool)

(assert (=> bs!560227 m!3860111))

(assert (=> d!994418 d!994888))

(declare-fun d!994890 () Bool)

(assert (=> d!994890 (= (list!13526 (singletonSeq!2533 (h!42579 tokens!494))) (list!13530 (c!591767 (singletonSeq!2533 (h!42579 tokens!494)))))))

(declare-fun bs!560228 () Bool)

(assert (= bs!560228 d!994890))

(declare-fun m!3860113 () Bool)

(assert (=> bs!560228 m!3860113))

(assert (=> d!994418 d!994890))

(assert (=> d!994418 d!994414))

(assert (=> d!994418 d!994424))

(declare-fun d!994892 () Bool)

(declare-fun lt!1175399 () Int)

(assert (=> d!994892 (>= lt!1175399 0)))

(declare-fun e!2142977 () Int)

(assert (=> d!994892 (= lt!1175399 e!2142977)))

(declare-fun c!592003 () Bool)

(assert (=> d!994892 (= c!592003 (is-Nil!37159 (list!13526 (_1!21570 lt!1174825))))))

(assert (=> d!994892 (= (size!28190 (list!13526 (_1!21570 lt!1174825))) lt!1175399)))

(declare-fun b!3458909 () Bool)

(assert (=> b!3458909 (= e!2142977 0)))

(declare-fun b!3458910 () Bool)

(assert (=> b!3458910 (= e!2142977 (+ 1 (size!28190 (t!272530 (list!13526 (_1!21570 lt!1174825))))))))

(assert (= (and d!994892 c!592003) b!3458909))

(assert (= (and d!994892 (not c!592003)) b!3458910))

(declare-fun m!3860115 () Bool)

(assert (=> b!3458910 m!3860115))

(assert (=> d!994574 d!994892))

(declare-fun d!994894 () Bool)

(assert (=> d!994894 (= (list!13526 (_1!21570 lt!1174825)) (list!13530 (c!591767 (_1!21570 lt!1174825))))))

(declare-fun bs!560229 () Bool)

(assert (= bs!560229 d!994894))

(declare-fun m!3860117 () Bool)

(assert (=> bs!560229 m!3860117))

(assert (=> d!994574 d!994894))

(declare-fun d!994896 () Bool)

(declare-fun lt!1175402 () Int)

(assert (=> d!994896 (= lt!1175402 (size!28190 (list!13530 (c!591767 (_1!21570 lt!1174825)))))))

(assert (=> d!994896 (= lt!1175402 (ite (is-Empty!11250 (c!591767 (_1!21570 lt!1174825))) 0 (ite (is-Leaf!17580 (c!591767 (_1!21570 lt!1174825))) (csize!22731 (c!591767 (_1!21570 lt!1174825))) (csize!22730 (c!591767 (_1!21570 lt!1174825))))))))

(assert (=> d!994896 (= (size!28191 (c!591767 (_1!21570 lt!1174825))) lt!1175402)))

(declare-fun bs!560230 () Bool)

(assert (= bs!560230 d!994896))

(assert (=> bs!560230 m!3860117))

(assert (=> bs!560230 m!3860117))

(declare-fun m!3860119 () Bool)

(assert (=> bs!560230 m!3860119))

(assert (=> d!994574 d!994896))

(assert (=> b!3457975 d!994800))

(assert (=> b!3457975 d!994802))

(assert (=> b!3457975 d!994798))

(declare-fun d!994898 () Bool)

(assert (=> d!994898 (= (list!13526 (_1!21570 lt!1175209)) (list!13530 (c!591767 (_1!21570 lt!1175209))))))

(declare-fun bs!560231 () Bool)

(assert (= bs!560231 d!994898))

(declare-fun m!3860121 () Bool)

(assert (=> bs!560231 m!3860121))

(assert (=> b!3458369 d!994898))

(declare-fun b!3458921 () Bool)

(declare-fun e!2142985 () Bool)

(declare-fun e!2142984 () Bool)

(assert (=> b!3458921 (= e!2142985 e!2142984)))

(declare-fun res!1395601 () Bool)

(declare-fun lt!1175411 () tuple2!36886)

(assert (=> b!3458921 (= res!1395601 (< (size!28184 (_2!21577 lt!1175411)) (size!28184 (list!13524 lt!1174823))))))

(assert (=> b!3458921 (=> (not res!1395601) (not e!2142984))))

(declare-fun b!3458922 () Bool)

(declare-fun e!2142986 () tuple2!36886)

(assert (=> b!3458922 (= e!2142986 (tuple2!36887 Nil!37159 (list!13524 lt!1174823)))))

(declare-fun b!3458923 () Bool)

(declare-fun lt!1175410 () Option!7522)

(declare-fun lt!1175409 () tuple2!36886)

(assert (=> b!3458923 (= e!2142986 (tuple2!36887 (Cons!37159 (_1!21571 (v!36837 lt!1175410)) (_1!21577 lt!1175409)) (_2!21577 lt!1175409)))))

(assert (=> b!3458923 (= lt!1175409 (lexList!1448 thiss!18206 rules!2135 (_2!21571 (v!36837 lt!1175410))))))

(declare-fun b!3458925 () Bool)

(assert (=> b!3458925 (= e!2142985 (= (_2!21577 lt!1175411) (list!13524 lt!1174823)))))

(declare-fun d!994900 () Bool)

(assert (=> d!994900 e!2142985))

(declare-fun c!592008 () Bool)

(assert (=> d!994900 (= c!592008 (> (size!28190 (_1!21577 lt!1175411)) 0))))

(assert (=> d!994900 (= lt!1175411 e!2142986)))

(declare-fun c!592009 () Bool)

(assert (=> d!994900 (= c!592009 (is-Some!7521 lt!1175410))))

(assert (=> d!994900 (= lt!1175410 (maxPrefix!2566 thiss!18206 rules!2135 (list!13524 lt!1174823)))))

(assert (=> d!994900 (= (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174823)) lt!1175411)))

(declare-fun b!3458924 () Bool)

(assert (=> b!3458924 (= e!2142984 (not (isEmpty!21518 (_1!21577 lt!1175411))))))

(assert (= (and d!994900 c!592009) b!3458923))

(assert (= (and d!994900 (not c!592009)) b!3458922))

(assert (= (and d!994900 c!592008) b!3458921))

(assert (= (and d!994900 (not c!592008)) b!3458925))

(assert (= (and b!3458921 res!1395601) b!3458924))

(declare-fun m!3860123 () Bool)

(assert (=> b!3458921 m!3860123))

(assert (=> b!3458921 m!3859275))

(declare-fun m!3860125 () Bool)

(assert (=> b!3458921 m!3860125))

(declare-fun m!3860127 () Bool)

(assert (=> b!3458923 m!3860127))

(declare-fun m!3860129 () Bool)

(assert (=> d!994900 m!3860129))

(assert (=> d!994900 m!3859275))

(declare-fun m!3860131 () Bool)

(assert (=> d!994900 m!3860131))

(declare-fun m!3860133 () Bool)

(assert (=> b!3458924 m!3860133))

(assert (=> b!3458369 d!994900))

(declare-fun d!994902 () Bool)

(assert (=> d!994902 (= (list!13524 lt!1174823) (list!13527 (c!591766 lt!1174823)))))

(declare-fun bs!560232 () Bool)

(assert (= bs!560232 d!994902))

(declare-fun m!3860135 () Bool)

(assert (=> bs!560232 m!3860135))

(assert (=> b!3458369 d!994902))

(declare-fun d!994904 () Bool)

(declare-fun lt!1175412 () Int)

(assert (=> d!994904 (>= lt!1175412 0)))

(declare-fun e!2142987 () Int)

(assert (=> d!994904 (= lt!1175412 e!2142987)))

(declare-fun c!592010 () Bool)

(assert (=> d!994904 (= c!592010 (is-Nil!37157 (originalCharacters!6151 separatorToken!241)))))

(assert (=> d!994904 (= (size!28184 (originalCharacters!6151 separatorToken!241)) lt!1175412)))

(declare-fun b!3458926 () Bool)

(assert (=> b!3458926 (= e!2142987 0)))

(declare-fun b!3458927 () Bool)

(assert (=> b!3458927 (= e!2142987 (+ 1 (size!28184 (t!272528 (originalCharacters!6151 separatorToken!241)))))))

(assert (= (and d!994904 c!592010) b!3458926))

(assert (= (and d!994904 (not c!592010)) b!3458927))

(declare-fun m!3860137 () Bool)

(assert (=> b!3458927 m!3860137))

(assert (=> b!3457888 d!994904))

(declare-fun d!994906 () Bool)

(assert (=> d!994906 (= (isDefined!5792 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))) (not (isEmpty!21516 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun bs!560233 () Bool)

(assert (= bs!560233 d!994906))

(assert (=> bs!560233 m!3858127))

(declare-fun m!3860139 () Bool)

(assert (=> bs!560233 m!3860139))

(assert (=> d!994518 d!994906))

(assert (=> d!994518 d!994578))

(declare-fun d!994908 () Bool)

(declare-fun e!2142990 () Bool)

(assert (=> d!994908 e!2142990))

(declare-fun res!1395606 () Bool)

(assert (=> d!994908 (=> (not res!1395606) (not e!2142990))))

(assert (=> d!994908 (= res!1395606 (isDefined!5792 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> d!994908 true))

(declare-fun _$52!1879 () Unit!52487)

(assert (=> d!994908 (= (choose!19994 thiss!18206 rules!2135 lt!1174846 (h!42579 tokens!494)) _$52!1879)))

(declare-fun b!3458932 () Bool)

(declare-fun res!1395607 () Bool)

(assert (=> b!3458932 (=> (not res!1395607) (not e!2142990))))

(assert (=> b!3458932 (= res!1395607 (matchR!4780 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))) (list!13524 (charsOf!3451 (h!42579 tokens!494)))))))

(declare-fun b!3458933 () Bool)

(assert (=> b!3458933 (= e!2142990 (= (rule!8027 (h!42579 tokens!494)) (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))

(assert (= (and d!994908 res!1395606) b!3458932))

(assert (= (and b!3458932 res!1395607) b!3458933))

(assert (=> d!994908 m!3858127))

(assert (=> d!994908 m!3858127))

(assert (=> d!994908 m!3858879))

(assert (=> b!3458932 m!3858065))

(assert (=> b!3458932 m!3858127))

(assert (=> b!3458932 m!3858885))

(assert (=> b!3458932 m!3858127))

(assert (=> b!3458932 m!3858067))

(assert (=> b!3458932 m!3858883))

(assert (=> b!3458932 m!3858065))

(assert (=> b!3458932 m!3858067))

(assert (=> b!3458933 m!3858127))

(assert (=> b!3458933 m!3858127))

(assert (=> b!3458933 m!3858885))

(assert (=> d!994518 d!994908))

(assert (=> d!994518 d!994396))

(assert (=> b!3457935 d!994786))

(assert (=> b!3457935 d!994788))

(declare-fun d!994910 () Bool)

(assert (=> d!994910 (= (list!13526 lt!1175003) (list!13530 (c!591767 lt!1175003)))))

(declare-fun bs!560234 () Bool)

(assert (= bs!560234 d!994910))

(declare-fun m!3860141 () Bool)

(assert (=> bs!560234 m!3860141))

(assert (=> d!994414 d!994910))

(declare-fun d!994912 () Bool)

(declare-fun e!2142993 () Bool)

(assert (=> d!994912 e!2142993))

(declare-fun res!1395610 () Bool)

(assert (=> d!994912 (=> (not res!1395610) (not e!2142993))))

(declare-fun lt!1175415 () BalanceConc!22114)

(assert (=> d!994912 (= res!1395610 (= (list!13526 lt!1175415) (Cons!37159 (h!42579 tokens!494) Nil!37159)))))

(declare-fun choose!20005 (Token!10240) BalanceConc!22114)

(assert (=> d!994912 (= lt!1175415 (choose!20005 (h!42579 tokens!494)))))

(assert (=> d!994912 (= (singleton!1119 (h!42579 tokens!494)) lt!1175415)))

(declare-fun b!3458936 () Bool)

(assert (=> b!3458936 (= e!2142993 (isBalanced!3412 (c!591767 lt!1175415)))))

(assert (= (and d!994912 res!1395610) b!3458936))

(declare-fun m!3860143 () Bool)

(assert (=> d!994912 m!3860143))

(declare-fun m!3860145 () Bool)

(assert (=> d!994912 m!3860145))

(declare-fun m!3860147 () Bool)

(assert (=> b!3458936 m!3860147))

(assert (=> d!994414 d!994912))

(declare-fun b!3458939 () Bool)

(declare-fun res!1395612 () Bool)

(declare-fun e!2142994 () Bool)

(assert (=> b!3458939 (=> (not res!1395612) (not e!2142994))))

(declare-fun lt!1175416 () List!37281)

(assert (=> b!3458939 (= res!1395612 (= (size!28184 lt!1175416) (+ (size!28184 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848))) (size!28184 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(declare-fun d!994914 () Bool)

(assert (=> d!994914 e!2142994))

(declare-fun res!1395611 () Bool)

(assert (=> d!994914 (=> (not res!1395611) (not e!2142994))))

(assert (=> d!994914 (= res!1395611 (= (content!5182 lt!1175416) (set.union (content!5182 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848))) (content!5182 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(declare-fun e!2142995 () List!37281)

(assert (=> d!994914 (= lt!1175416 e!2142995)))

(declare-fun c!592011 () Bool)

(assert (=> d!994914 (= c!592011 (is-Nil!37157 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848))))))

(assert (=> d!994914 (= (++!9156 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)) lt!1175416)))

(declare-fun b!3458938 () Bool)

(assert (=> b!3458938 (= e!2142995 (Cons!37157 (h!42577 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848))) (++!9156 (t!272528 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241))))))

(declare-fun b!3458940 () Bool)

(assert (=> b!3458940 (= e!2142994 (or (not (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241) Nil!37157)) (= lt!1175416 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) lt!1174848)))))))

(declare-fun b!3458937 () Bool)

(assert (=> b!3458937 (= e!2142995 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241))))

(assert (= (and d!994914 c!592011) b!3458937))

(assert (= (and d!994914 (not c!592011)) b!3458938))

(assert (= (and d!994914 res!1395611) b!3458939))

(assert (= (and b!3458939 res!1395612) b!3458940))

(declare-fun m!3860149 () Bool)

(assert (=> b!3458939 m!3860149))

(assert (=> b!3458939 m!3859897))

(assert (=> b!3458939 m!3858047))

(assert (=> b!3458939 m!3858711))

(declare-fun m!3860151 () Bool)

(assert (=> d!994914 m!3860151))

(assert (=> d!994914 m!3860073))

(assert (=> d!994914 m!3858047))

(assert (=> d!994914 m!3858717))

(assert (=> b!3458938 m!3858047))

(declare-fun m!3860153 () Bool)

(assert (=> b!3458938 m!3860153))

(assert (=> b!3458048 d!994914))

(declare-fun d!994916 () Bool)

(declare-fun lt!1175417 () Bool)

(assert (=> d!994916 (= lt!1175417 (set.member (rule!8027 separatorToken!241) (content!5183 (t!272529 rules!2135))))))

(declare-fun e!2142997 () Bool)

(assert (=> d!994916 (= lt!1175417 e!2142997)))

(declare-fun res!1395614 () Bool)

(assert (=> d!994916 (=> (not res!1395614) (not e!2142997))))

(assert (=> d!994916 (= res!1395614 (is-Cons!37158 (t!272529 rules!2135)))))

(assert (=> d!994916 (= (contains!6885 (t!272529 rules!2135) (rule!8027 separatorToken!241)) lt!1175417)))

(declare-fun b!3458941 () Bool)

(declare-fun e!2142996 () Bool)

(assert (=> b!3458941 (= e!2142997 e!2142996)))

(declare-fun res!1395613 () Bool)

(assert (=> b!3458941 (=> res!1395613 e!2142996)))

(assert (=> b!3458941 (= res!1395613 (= (h!42578 (t!272529 rules!2135)) (rule!8027 separatorToken!241)))))

(declare-fun b!3458942 () Bool)

(assert (=> b!3458942 (= e!2142996 (contains!6885 (t!272529 (t!272529 rules!2135)) (rule!8027 separatorToken!241)))))

(assert (= (and d!994916 res!1395614) b!3458941))

(assert (= (and b!3458941 (not res!1395613)) b!3458942))

(declare-fun m!3860155 () Bool)

(assert (=> d!994916 m!3860155))

(declare-fun m!3860157 () Bool)

(assert (=> d!994916 m!3860157))

(declare-fun m!3860159 () Bool)

(assert (=> b!3458942 m!3860159))

(assert (=> b!3457834 d!994916))

(declare-fun d!994918 () Bool)

(declare-fun lt!1175418 () Token!10240)

(assert (=> d!994918 (= lt!1175418 (apply!8748 (list!13526 (_1!21570 lt!1175010)) 0))))

(assert (=> d!994918 (= lt!1175418 (apply!8749 (c!591767 (_1!21570 lt!1175010)) 0))))

(declare-fun e!2142998 () Bool)

(assert (=> d!994918 e!2142998))

(declare-fun res!1395615 () Bool)

(assert (=> d!994918 (=> (not res!1395615) (not e!2142998))))

(assert (=> d!994918 (= res!1395615 (<= 0 0))))

(assert (=> d!994918 (= (apply!8744 (_1!21570 lt!1175010) 0) lt!1175418)))

(declare-fun b!3458943 () Bool)

(assert (=> b!3458943 (= e!2142998 (< 0 (size!28183 (_1!21570 lt!1175010))))))

(assert (= (and d!994918 res!1395615) b!3458943))

(assert (=> d!994918 m!3859819))

(assert (=> d!994918 m!3859819))

(declare-fun m!3860161 () Bool)

(assert (=> d!994918 m!3860161))

(declare-fun m!3860163 () Bool)

(assert (=> d!994918 m!3860163))

(assert (=> b!3458943 m!3858525))

(assert (=> b!3457894 d!994918))

(declare-fun d!994920 () Bool)

(assert (=> d!994920 (= (isEmpty!21516 lt!1174832) (not (is-Some!7520 lt!1174832)))))

(assert (=> d!994526 d!994920))

(declare-fun d!994922 () Bool)

(declare-fun nullableFct!1009 (Regex!10196) Bool)

(assert (=> d!994922 (= (nullable!3487 (regex!5437 lt!1174855)) (nullableFct!1009 (regex!5437 lt!1174855)))))

(declare-fun bs!560235 () Bool)

(assert (= bs!560235 d!994922))

(declare-fun m!3860165 () Bool)

(assert (=> bs!560235 m!3860165))

(assert (=> b!3458355 d!994922))

(declare-fun d!994924 () Bool)

(assert (=> d!994924 (= (list!13524 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))) (list!13527 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))))))

(declare-fun bs!560236 () Bool)

(assert (= bs!560236 d!994924))

(declare-fun m!3860167 () Bool)

(assert (=> bs!560236 m!3860167))

(assert (=> b!3458066 d!994924))

(declare-fun d!994926 () Bool)

(assert (=> d!994926 (= (list!13526 (_1!21570 lt!1175203)) (list!13530 (c!591767 (_1!21570 lt!1175203))))))

(declare-fun bs!560237 () Bool)

(assert (= bs!560237 d!994926))

(declare-fun m!3860169 () Bool)

(assert (=> bs!560237 m!3860169))

(assert (=> b!3458344 d!994926))

(declare-fun b!3458944 () Bool)

(declare-fun e!2143000 () Bool)

(declare-fun e!2142999 () Bool)

(assert (=> b!3458944 (= e!2143000 e!2142999)))

(declare-fun res!1395616 () Bool)

(declare-fun lt!1175421 () tuple2!36886)

(assert (=> b!3458944 (= res!1395616 (< (size!28184 (_2!21577 lt!1175421)) (size!28184 (list!13524 lt!1174856))))))

(assert (=> b!3458944 (=> (not res!1395616) (not e!2142999))))

(declare-fun b!3458945 () Bool)

(declare-fun e!2143001 () tuple2!36886)

(assert (=> b!3458945 (= e!2143001 (tuple2!36887 Nil!37159 (list!13524 lt!1174856)))))

(declare-fun b!3458946 () Bool)

(declare-fun lt!1175420 () Option!7522)

(declare-fun lt!1175419 () tuple2!36886)

(assert (=> b!3458946 (= e!2143001 (tuple2!36887 (Cons!37159 (_1!21571 (v!36837 lt!1175420)) (_1!21577 lt!1175419)) (_2!21577 lt!1175419)))))

(assert (=> b!3458946 (= lt!1175419 (lexList!1448 thiss!18206 rules!2135 (_2!21571 (v!36837 lt!1175420))))))

(declare-fun b!3458948 () Bool)

(assert (=> b!3458948 (= e!2143000 (= (_2!21577 lt!1175421) (list!13524 lt!1174856)))))

(declare-fun d!994928 () Bool)

(assert (=> d!994928 e!2143000))

(declare-fun c!592012 () Bool)

(assert (=> d!994928 (= c!592012 (> (size!28190 (_1!21577 lt!1175421)) 0))))

(assert (=> d!994928 (= lt!1175421 e!2143001)))

(declare-fun c!592013 () Bool)

(assert (=> d!994928 (= c!592013 (is-Some!7521 lt!1175420))))

(assert (=> d!994928 (= lt!1175420 (maxPrefix!2566 thiss!18206 rules!2135 (list!13524 lt!1174856)))))

(assert (=> d!994928 (= (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174856)) lt!1175421)))

(declare-fun b!3458947 () Bool)

(assert (=> b!3458947 (= e!2142999 (not (isEmpty!21518 (_1!21577 lt!1175421))))))

(assert (= (and d!994928 c!592013) b!3458946))

(assert (= (and d!994928 (not c!592013)) b!3458945))

(assert (= (and d!994928 c!592012) b!3458944))

(assert (= (and d!994928 (not c!592012)) b!3458948))

(assert (= (and b!3458944 res!1395616) b!3458947))

(declare-fun m!3860171 () Bool)

(assert (=> b!3458944 m!3860171))

(assert (=> b!3458944 m!3859225))

(declare-fun m!3860173 () Bool)

(assert (=> b!3458944 m!3860173))

(declare-fun m!3860175 () Bool)

(assert (=> b!3458946 m!3860175))

(declare-fun m!3860177 () Bool)

(assert (=> d!994928 m!3860177))

(assert (=> d!994928 m!3859225))

(declare-fun m!3860179 () Bool)

(assert (=> d!994928 m!3860179))

(declare-fun m!3860181 () Bool)

(assert (=> b!3458947 m!3860181))

(assert (=> b!3458344 d!994928))

(declare-fun d!994930 () Bool)

(assert (=> d!994930 (= (list!13524 lt!1174856) (list!13527 (c!591766 lt!1174856)))))

(declare-fun bs!560238 () Bool)

(assert (= bs!560238 d!994930))

(declare-fun m!3860183 () Bool)

(assert (=> bs!560238 m!3860183))

(assert (=> b!3458344 d!994930))

(assert (=> d!994530 d!994500))

(assert (=> d!994530 d!994548))

(declare-fun d!994932 () Bool)

(assert (=> d!994932 (not (contains!6886 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174844))))

(assert (=> d!994932 true))

(declare-fun _$73!253 () Unit!52487)

(assert (=> d!994932 (= (choose!19996 thiss!18206 rules!2135 rules!2135 (rule!8027 (h!42579 tokens!494)) (rule!8027 separatorToken!241) lt!1174844) _$73!253)))

(declare-fun bs!560239 () Bool)

(assert (= bs!560239 d!994932))

(assert (=> bs!560239 m!3858121))

(assert (=> bs!560239 m!3858121))

(assert (=> bs!560239 m!3858125))

(assert (=> d!994530 d!994932))

(assert (=> d!994530 d!994396))

(declare-fun d!994934 () Bool)

(assert (=> d!994934 (dynLambda!15651 lambda!121777 (h!42579 (t!272530 tokens!494)))))

(assert (=> d!994934 true))

(declare-fun _$7!1293 () Unit!52487)

(assert (=> d!994934 (= (choose!19990 tokens!494 lambda!121777 (h!42579 (t!272530 tokens!494))) _$7!1293)))

(declare-fun b_lambda!99561 () Bool)

(assert (=> (not b_lambda!99561) (not d!994934)))

(declare-fun bs!560240 () Bool)

(assert (= bs!560240 d!994934))

(assert (=> bs!560240 m!3859151))

(assert (=> d!994590 d!994934))

(declare-fun d!994936 () Bool)

(declare-fun res!1395617 () Bool)

(declare-fun e!2143002 () Bool)

(assert (=> d!994936 (=> res!1395617 e!2143002)))

(assert (=> d!994936 (= res!1395617 (is-Nil!37159 tokens!494))))

(assert (=> d!994936 (= (forall!7916 tokens!494 lambda!121777) e!2143002)))

(declare-fun b!3458949 () Bool)

(declare-fun e!2143003 () Bool)

(assert (=> b!3458949 (= e!2143002 e!2143003)))

(declare-fun res!1395618 () Bool)

(assert (=> b!3458949 (=> (not res!1395618) (not e!2143003))))

(assert (=> b!3458949 (= res!1395618 (dynLambda!15651 lambda!121777 (h!42579 tokens!494)))))

(declare-fun b!3458950 () Bool)

(assert (=> b!3458950 (= e!2143003 (forall!7916 (t!272530 tokens!494) lambda!121777))))

(assert (= (and d!994936 (not res!1395617)) b!3458949))

(assert (= (and b!3458949 res!1395618) b!3458950))

(declare-fun b_lambda!99563 () Bool)

(assert (=> (not b_lambda!99563) (not b!3458949)))

(declare-fun m!3860185 () Bool)

(assert (=> b!3458949 m!3860185))

(declare-fun m!3860187 () Bool)

(assert (=> b!3458950 m!3860187))

(assert (=> d!994590 d!994936))

(declare-fun b!3458951 () Bool)

(declare-fun e!2143005 () Bool)

(assert (=> b!3458951 (= e!2143005 (inv!15 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823)))))

(declare-fun d!994938 () Bool)

(declare-fun c!592015 () Bool)

(assert (=> d!994938 (= c!592015 (is-IntegerValue!17001 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823)))))

(declare-fun e!2143006 () Bool)

(assert (=> d!994938 (= (inv!21 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823)) e!2143006)))

(declare-fun b!3458952 () Bool)

(declare-fun e!2143004 () Bool)

(assert (=> b!3458952 (= e!2143006 e!2143004)))

(declare-fun c!592016 () Bool)

(assert (=> b!3458952 (= c!592016 (is-IntegerValue!17002 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823)))))

(declare-fun b!3458953 () Bool)

(assert (=> b!3458953 (= e!2143006 (inv!16 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823)))))

(declare-fun b!3458954 () Bool)

(assert (=> b!3458954 (= e!2143004 (inv!17 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823)))))

(declare-fun b!3458955 () Bool)

(declare-fun res!1395619 () Bool)

(assert (=> b!3458955 (=> res!1395619 e!2143005)))

(assert (=> b!3458955 (= res!1395619 (not (is-IntegerValue!17003 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) lt!1174823))))))

(assert (=> b!3458955 (= e!2143004 e!2143005)))

(assert (= (and d!994938 c!592015) b!3458953))

(assert (= (and d!994938 (not c!592015)) b!3458952))

(assert (= (and b!3458952 c!592016) b!3458954))

(assert (= (and b!3458952 (not c!592016)) b!3458955))

(assert (= (and b!3458955 (not res!1395619)) b!3458951))

(declare-fun m!3860189 () Bool)

(assert (=> b!3458951 m!3860189))

(declare-fun m!3860191 () Bool)

(assert (=> b!3458953 m!3860191))

(declare-fun m!3860193 () Bool)

(assert (=> b!3458954 m!3860193))

(assert (=> tb!188309 d!994938))

(declare-fun d!994940 () Bool)

(declare-fun res!1395620 () Bool)

(declare-fun e!2143007 () Bool)

(assert (=> d!994940 (=> (not res!1395620) (not e!2143007))))

(assert (=> d!994940 (= res!1395620 (rulesValid!2042 thiss!18206 (t!272529 rules!2135)))))

(assert (=> d!994940 (= (rulesInvariant!4423 thiss!18206 (t!272529 rules!2135)) e!2143007)))

(declare-fun b!3458956 () Bool)

(assert (=> b!3458956 (= e!2143007 (noDuplicateTag!2038 thiss!18206 (t!272529 rules!2135) Nil!37164))))

(assert (= (and d!994940 res!1395620) b!3458956))

(declare-fun m!3860195 () Bool)

(assert (=> d!994940 m!3860195))

(declare-fun m!3860197 () Bool)

(assert (=> b!3458956 m!3860197))

(assert (=> b!3458313 d!994940))

(declare-fun d!994942 () Bool)

(assert (=> d!994942 (rulesInvariant!4423 thiss!18206 (t!272529 rules!2135))))

(declare-fun lt!1175424 () Unit!52487)

(declare-fun choose!20006 (LexerInterface!5026 Rule!10674 List!37282) Unit!52487)

(assert (=> d!994942 (= lt!1175424 (choose!20006 thiss!18206 (h!42578 rules!2135) (t!272529 rules!2135)))))

(assert (=> d!994942 (rulesInvariant!4423 thiss!18206 (Cons!37158 (h!42578 rules!2135) (t!272529 rules!2135)))))

(assert (=> d!994942 (= (lemmaInvariantOnRulesThenOnTail!432 thiss!18206 (h!42578 rules!2135) (t!272529 rules!2135)) lt!1175424)))

(declare-fun bs!560241 () Bool)

(assert (= bs!560241 d!994942))

(assert (=> bs!560241 m!3858911))

(declare-fun m!3860199 () Bool)

(assert (=> bs!560241 m!3860199))

(declare-fun m!3860201 () Bool)

(assert (=> bs!560241 m!3860201))

(assert (=> b!3458313 d!994942))

(declare-fun b!3458957 () Bool)

(declare-fun e!2143009 () Option!7521)

(assert (=> b!3458957 (= e!2143009 (Some!7520 (h!42578 (t!272529 rules!2135))))))

(declare-fun b!3458958 () Bool)

(declare-fun e!2143011 () Bool)

(declare-fun lt!1175426 () Option!7521)

(assert (=> b!3458958 (= e!2143011 (= (tag!6045 (get!11891 lt!1175426)) (tag!6045 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun b!3458959 () Bool)

(declare-fun e!2143010 () Option!7521)

(assert (=> b!3458959 (= e!2143009 e!2143010)))

(declare-fun c!592017 () Bool)

(assert (=> b!3458959 (= c!592017 (and (is-Cons!37158 (t!272529 rules!2135)) (not (= (tag!6045 (h!42578 (t!272529 rules!2135))) (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun b!3458960 () Bool)

(assert (=> b!3458960 (= e!2143010 None!7520)))

(declare-fun b!3458962 () Bool)

(declare-fun e!2143008 () Bool)

(assert (=> b!3458962 (= e!2143008 e!2143011)))

(declare-fun res!1395622 () Bool)

(assert (=> b!3458962 (=> (not res!1395622) (not e!2143011))))

(assert (=> b!3458962 (= res!1395622 (contains!6885 (t!272529 rules!2135) (get!11891 lt!1175426)))))

(declare-fun b!3458961 () Bool)

(declare-fun lt!1175427 () Unit!52487)

(declare-fun lt!1175425 () Unit!52487)

(assert (=> b!3458961 (= lt!1175427 lt!1175425)))

(assert (=> b!3458961 (rulesInvariant!4423 thiss!18206 (t!272529 (t!272529 rules!2135)))))

(assert (=> b!3458961 (= lt!1175425 (lemmaInvariantOnRulesThenOnTail!432 thiss!18206 (h!42578 (t!272529 rules!2135)) (t!272529 (t!272529 rules!2135))))))

(assert (=> b!3458961 (= e!2143010 (getRuleFromTag!1080 thiss!18206 (t!272529 (t!272529 rules!2135)) (tag!6045 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun d!994944 () Bool)

(assert (=> d!994944 e!2143008))

(declare-fun res!1395621 () Bool)

(assert (=> d!994944 (=> res!1395621 e!2143008)))

(assert (=> d!994944 (= res!1395621 (isEmpty!21516 lt!1175426))))

(assert (=> d!994944 (= lt!1175426 e!2143009)))

(declare-fun c!592018 () Bool)

(assert (=> d!994944 (= c!592018 (and (is-Cons!37158 (t!272529 rules!2135)) (= (tag!6045 (h!42578 (t!272529 rules!2135))) (tag!6045 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> d!994944 (rulesInvariant!4423 thiss!18206 (t!272529 rules!2135))))

(assert (=> d!994944 (= (getRuleFromTag!1080 thiss!18206 (t!272529 rules!2135) (tag!6045 (rule!8027 (h!42579 tokens!494)))) lt!1175426)))

(assert (= (and d!994944 c!592018) b!3458957))

(assert (= (and d!994944 (not c!592018)) b!3458959))

(assert (= (and b!3458959 c!592017) b!3458961))

(assert (= (and b!3458959 (not c!592017)) b!3458960))

(assert (= (and d!994944 (not res!1395621)) b!3458962))

(assert (= (and b!3458962 res!1395622) b!3458958))

(declare-fun m!3860203 () Bool)

(assert (=> b!3458958 m!3860203))

(assert (=> b!3458962 m!3860203))

(assert (=> b!3458962 m!3860203))

(declare-fun m!3860205 () Bool)

(assert (=> b!3458962 m!3860205))

(declare-fun m!3860207 () Bool)

(assert (=> b!3458961 m!3860207))

(declare-fun m!3860209 () Bool)

(assert (=> b!3458961 m!3860209))

(declare-fun m!3860211 () Bool)

(assert (=> b!3458961 m!3860211))

(declare-fun m!3860213 () Bool)

(assert (=> d!994944 m!3860213))

(assert (=> d!994944 m!3858911))

(assert (=> b!3458313 d!994944))

(declare-fun d!994946 () Bool)

(declare-fun res!1395623 () Bool)

(declare-fun e!2143012 () Bool)

(assert (=> d!994946 (=> res!1395623 e!2143012)))

(assert (=> d!994946 (= res!1395623 (not (is-Cons!37158 (t!272529 rules!2135))))))

(assert (=> d!994946 (= (sepAndNonSepRulesDisjointChars!1631 rules!2135 (t!272529 rules!2135)) e!2143012)))

(declare-fun b!3458963 () Bool)

(declare-fun e!2143013 () Bool)

(assert (=> b!3458963 (= e!2143012 e!2143013)))

(declare-fun res!1395624 () Bool)

(assert (=> b!3458963 (=> (not res!1395624) (not e!2143013))))

(assert (=> b!3458963 (= res!1395624 (ruleDisjointCharsFromAllFromOtherType!718 (h!42578 (t!272529 rules!2135)) rules!2135))))

(declare-fun b!3458964 () Bool)

(assert (=> b!3458964 (= e!2143013 (sepAndNonSepRulesDisjointChars!1631 rules!2135 (t!272529 (t!272529 rules!2135))))))

(assert (= (and d!994946 (not res!1395623)) b!3458963))

(assert (= (and b!3458963 res!1395624) b!3458964))

(declare-fun m!3860215 () Bool)

(assert (=> b!3458963 m!3860215))

(declare-fun m!3860217 () Bool)

(assert (=> b!3458964 m!3860217))

(assert (=> b!3458074 d!994946))

(declare-fun d!994948 () Bool)

(assert (=> d!994948 (= (list!13524 lt!1175113) (list!13527 (c!591766 lt!1175113)))))

(declare-fun bs!560242 () Bool)

(assert (= bs!560242 d!994948))

(declare-fun m!3860219 () Bool)

(assert (=> bs!560242 m!3860219))

(assert (=> d!994528 d!994948))

(declare-fun d!994950 () Bool)

(declare-fun c!592019 () Bool)

(assert (=> d!994950 (= c!592019 (is-Cons!37159 (list!13526 lt!1174837)))))

(declare-fun e!2143014 () List!37281)

(assert (=> d!994950 (= (printList!1574 thiss!18206 (list!13526 lt!1174837)) e!2143014)))

(declare-fun b!3458965 () Bool)

(assert (=> b!3458965 (= e!2143014 (++!9156 (list!13524 (charsOf!3451 (h!42579 (list!13526 lt!1174837)))) (printList!1574 thiss!18206 (t!272530 (list!13526 lt!1174837)))))))

(declare-fun b!3458966 () Bool)

(assert (=> b!3458966 (= e!2143014 Nil!37157)))

(assert (= (and d!994950 c!592019) b!3458965))

(assert (= (and d!994950 (not c!592019)) b!3458966))

(declare-fun m!3860221 () Bool)

(assert (=> b!3458965 m!3860221))

(assert (=> b!3458965 m!3860221))

(declare-fun m!3860223 () Bool)

(assert (=> b!3458965 m!3860223))

(declare-fun m!3860225 () Bool)

(assert (=> b!3458965 m!3860225))

(assert (=> b!3458965 m!3860223))

(assert (=> b!3458965 m!3860225))

(declare-fun m!3860227 () Bool)

(assert (=> b!3458965 m!3860227))

(assert (=> d!994528 d!994950))

(assert (=> d!994528 d!994844))

(assert (=> d!994528 d!994598))

(assert (=> bm!249381 d!994804))

(declare-fun d!994952 () Bool)

(declare-fun c!592022 () Bool)

(assert (=> d!994952 (= c!592022 (is-Node!11249 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))))))

(declare-fun e!2143019 () Bool)

(assert (=> d!994952 (= (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))) e!2143019)))

(declare-fun b!3458973 () Bool)

(declare-fun inv!50333 (Conc!11249) Bool)

(assert (=> b!3458973 (= e!2143019 (inv!50333 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))))))

(declare-fun b!3458974 () Bool)

(declare-fun e!2143020 () Bool)

(assert (=> b!3458974 (= e!2143019 e!2143020)))

(declare-fun res!1395627 () Bool)

(assert (=> b!3458974 (= res!1395627 (not (is-Leaf!17579 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))))))))

(assert (=> b!3458974 (=> res!1395627 e!2143020)))

(declare-fun b!3458975 () Bool)

(declare-fun inv!50334 (Conc!11249) Bool)

(assert (=> b!3458975 (= e!2143020 (inv!50334 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))))))

(assert (= (and d!994952 c!592022) b!3458973))

(assert (= (and d!994952 (not c!592022)) b!3458974))

(assert (= (and b!3458974 (not res!1395627)) b!3458975))

(declare-fun m!3860229 () Bool)

(assert (=> b!3458973 m!3860229))

(declare-fun m!3860231 () Bool)

(assert (=> b!3458975 m!3860231))

(assert (=> b!3457998 d!994952))

(declare-fun d!994954 () Bool)

(declare-fun charsToBigInt!1 (List!37280) Int)

(assert (=> d!994954 (= (inv!17 (value!175416 separatorToken!241)) (= (charsToBigInt!1 (text!40117 (value!175416 separatorToken!241))) (value!175409 (value!175416 separatorToken!241))))))

(declare-fun bs!560243 () Bool)

(assert (= bs!560243 d!994954))

(declare-fun m!3860233 () Bool)

(assert (=> bs!560243 m!3860233))

(assert (=> b!3458349 d!994954))

(declare-fun d!994956 () Bool)

(declare-fun c!592023 () Bool)

(assert (=> d!994956 (= c!592023 (is-Nil!37157 lt!1175059))))

(declare-fun e!2143021 () (Set C!20578))

(assert (=> d!994956 (= (content!5182 lt!1175059) e!2143021)))

(declare-fun b!3458976 () Bool)

(assert (=> b!3458976 (= e!2143021 (as set.empty (Set C!20578)))))

(declare-fun b!3458977 () Bool)

(assert (=> b!3458977 (= e!2143021 (set.union (set.insert (h!42577 lt!1175059) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1175059))))))

(assert (= (and d!994956 c!592023) b!3458976))

(assert (= (and d!994956 (not c!592023)) b!3458977))

(declare-fun m!3860235 () Bool)

(assert (=> b!3458977 m!3860235))

(declare-fun m!3860237 () Bool)

(assert (=> b!3458977 m!3860237))

(assert (=> d!994472 d!994956))

(declare-fun d!994958 () Bool)

(declare-fun c!592024 () Bool)

(assert (=> d!994958 (= c!592024 (is-Nil!37157 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))

(declare-fun e!2143022 () (Set C!20578))

(assert (=> d!994958 (= (content!5182 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) e!2143022)))

(declare-fun b!3458978 () Bool)

(assert (=> b!3458978 (= e!2143022 (as set.empty (Set C!20578)))))

(declare-fun b!3458979 () Bool)

(assert (=> b!3458979 (= e!2143022 (set.union (set.insert (h!42577 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (as set.empty (Set C!20578))) (content!5182 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))))

(assert (= (and d!994958 c!592024) b!3458978))

(assert (= (and d!994958 (not c!592024)) b!3458979))

(declare-fun m!3860239 () Bool)

(assert (=> b!3458979 m!3860239))

(declare-fun m!3860241 () Bool)

(assert (=> b!3458979 m!3860241))

(assert (=> d!994472 d!994958))

(declare-fun d!994960 () Bool)

(declare-fun c!592025 () Bool)

(assert (=> d!994960 (= c!592025 (is-Nil!37157 lt!1174848))))

(declare-fun e!2143023 () (Set C!20578))

(assert (=> d!994960 (= (content!5182 lt!1174848) e!2143023)))

(declare-fun b!3458980 () Bool)

(assert (=> b!3458980 (= e!2143023 (as set.empty (Set C!20578)))))

(declare-fun b!3458981 () Bool)

(assert (=> b!3458981 (= e!2143023 (set.union (set.insert (h!42577 lt!1174848) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1174848))))))

(assert (= (and d!994960 c!592025) b!3458980))

(assert (= (and d!994960 (not c!592025)) b!3458981))

(declare-fun m!3860243 () Bool)

(assert (=> b!3458981 m!3860243))

(assert (=> b!3458981 m!3859907))

(assert (=> d!994472 d!994960))

(declare-fun d!994962 () Bool)

(assert (=> d!994962 (= (isEmpty!21512 (maxPrefix!2566 thiss!18206 rules!2135 lt!1174846)) (not (is-Some!7521 (maxPrefix!2566 thiss!18206 rules!2135 lt!1174846))))))

(assert (=> d!994436 d!994962))

(declare-fun bs!560244 () Bool)

(declare-fun d!994964 () Bool)

(assert (= bs!560244 (and d!994964 d!994782)))

(declare-fun lambda!121804 () Int)

(assert (=> bs!560244 (= (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (= lambda!121804 lambda!121800))))

(assert (=> d!994964 true))

(assert (=> d!994964 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241)))) (dynLambda!15657 order!19791 lambda!121804))))

(assert (=> d!994964 (= (equivClasses!2181 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241)))) (Forall2!933 lambda!121804))))

(declare-fun bs!560245 () Bool)

(assert (= bs!560245 d!994964))

(declare-fun m!3860245 () Bool)

(assert (=> bs!560245 m!3860245))

(assert (=> b!3458001 d!994964))

(declare-fun d!994966 () Bool)

(declare-fun lt!1175428 () Int)

(assert (=> d!994966 (>= lt!1175428 0)))

(declare-fun e!2143024 () Int)

(assert (=> d!994966 (= lt!1175428 e!2143024)))

(declare-fun c!592026 () Bool)

(assert (=> d!994966 (= c!592026 (is-Nil!37157 lt!1174975))))

(assert (=> d!994966 (= (size!28184 lt!1174975) lt!1175428)))

(declare-fun b!3458982 () Bool)

(assert (=> b!3458982 (= e!2143024 0)))

(declare-fun b!3458983 () Bool)

(assert (=> b!3458983 (= e!2143024 (+ 1 (size!28184 (t!272528 lt!1174975))))))

(assert (= (and d!994966 c!592026) b!3458982))

(assert (= (and d!994966 (not c!592026)) b!3458983))

(declare-fun m!3860247 () Bool)

(assert (=> b!3458983 m!3860247))

(assert (=> b!3457850 d!994966))

(declare-fun d!994968 () Bool)

(declare-fun lt!1175429 () Int)

(assert (=> d!994968 (>= lt!1175429 0)))

(declare-fun e!2143025 () Int)

(assert (=> d!994968 (= lt!1175429 e!2143025)))

(declare-fun c!592027 () Bool)

(assert (=> d!994968 (= c!592027 (is-Nil!37157 (++!9156 lt!1174846 lt!1174848)))))

(assert (=> d!994968 (= (size!28184 (++!9156 lt!1174846 lt!1174848)) lt!1175429)))

(declare-fun b!3458984 () Bool)

(assert (=> b!3458984 (= e!2143025 0)))

(declare-fun b!3458985 () Bool)

(assert (=> b!3458985 (= e!2143025 (+ 1 (size!28184 (t!272528 (++!9156 lt!1174846 lt!1174848)))))))

(assert (= (and d!994968 c!592027) b!3458984))

(assert (= (and d!994968 (not c!592027)) b!3458985))

(declare-fun m!3860249 () Bool)

(assert (=> b!3458985 m!3860249))

(assert (=> b!3457850 d!994968))

(declare-fun d!994970 () Bool)

(declare-fun lt!1175430 () Int)

(assert (=> d!994970 (>= lt!1175430 0)))

(declare-fun e!2143026 () Int)

(assert (=> d!994970 (= lt!1175430 e!2143026)))

(declare-fun c!592028 () Bool)

(assert (=> d!994970 (= c!592028 (is-Nil!37157 lt!1174829))))

(assert (=> d!994970 (= (size!28184 lt!1174829) lt!1175430)))

(declare-fun b!3458986 () Bool)

(assert (=> b!3458986 (= e!2143026 0)))

(declare-fun b!3458987 () Bool)

(assert (=> b!3458987 (= e!2143026 (+ 1 (size!28184 (t!272528 lt!1174829))))))

(assert (= (and d!994970 c!592028) b!3458986))

(assert (= (and d!994970 (not c!592028)) b!3458987))

(declare-fun m!3860251 () Bool)

(assert (=> b!3458987 m!3860251))

(assert (=> b!3457850 d!994970))

(assert (=> b!3457930 d!994786))

(assert (=> b!3457930 d!994788))

(declare-fun b!3458989 () Bool)

(declare-fun res!1395630 () Bool)

(declare-fun e!2143027 () Bool)

(assert (=> b!3458989 (=> (not res!1395630) (not e!2143027))))

(assert (=> b!3458989 (= res!1395630 (<= (height!1693 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174852 0))))) (+ (max!0 (height!1693 (c!591766 (BalanceConc!22113 Empty!11249))) (height!1693 (c!591766 (charsOf!3451 (apply!8744 lt!1174852 0))))) 1)))))

(declare-fun b!3458990 () Bool)

(declare-fun res!1395631 () Bool)

(assert (=> b!3458990 (=> (not res!1395631) (not e!2143027))))

(assert (=> b!3458990 (= res!1395631 (>= (height!1693 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174852 0))))) (max!0 (height!1693 (c!591766 (BalanceConc!22113 Empty!11249))) (height!1693 (c!591766 (charsOf!3451 (apply!8744 lt!1174852 0)))))))))

(declare-fun b!3458988 () Bool)

(declare-fun res!1395628 () Bool)

(assert (=> b!3458988 (=> (not res!1395628) (not e!2143027))))

(assert (=> b!3458988 (= res!1395628 (isBalanced!3414 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174852 0))))))))

(declare-fun b!3458991 () Bool)

(declare-fun lt!1175431 () BalanceConc!22112)

(assert (=> b!3458991 (= e!2143027 (= (list!13524 lt!1175431) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (apply!8744 lt!1174852 0))))))))

(declare-fun d!994972 () Bool)

(assert (=> d!994972 e!2143027))

(declare-fun res!1395629 () Bool)

(assert (=> d!994972 (=> (not res!1395629) (not e!2143027))))

(assert (=> d!994972 (= res!1395629 (appendAssocInst!802 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174852 0)))))))

(assert (=> d!994972 (= lt!1175431 (BalanceConc!22113 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174852 0))))))))

(assert (=> d!994972 (= (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174852 0))) lt!1175431)))

(assert (= (and d!994972 res!1395629) b!3458988))

(assert (= (and b!3458988 res!1395628) b!3458989))

(assert (= (and b!3458989 res!1395630) b!3458990))

(assert (= (and b!3458990 res!1395631) b!3458991))

(declare-fun m!3860253 () Bool)

(assert (=> b!3458991 m!3860253))

(assert (=> b!3458991 m!3858443))

(assert (=> b!3458991 m!3858949))

(declare-fun m!3860255 () Bool)

(assert (=> b!3458991 m!3860255))

(assert (=> b!3458991 m!3858443))

(assert (=> b!3458991 m!3860255))

(declare-fun m!3860257 () Bool)

(assert (=> b!3458991 m!3860257))

(assert (=> b!3458989 m!3860011))

(declare-fun m!3860259 () Bool)

(assert (=> b!3458989 m!3860259))

(declare-fun m!3860261 () Bool)

(assert (=> b!3458989 m!3860261))

(declare-fun m!3860263 () Bool)

(assert (=> b!3458989 m!3860263))

(declare-fun m!3860265 () Bool)

(assert (=> b!3458989 m!3860265))

(assert (=> b!3458989 m!3860259))

(assert (=> b!3458989 m!3860263))

(assert (=> b!3458989 m!3860011))

(assert (=> b!3458990 m!3860011))

(assert (=> b!3458990 m!3860259))

(assert (=> b!3458990 m!3860261))

(assert (=> b!3458990 m!3860263))

(assert (=> b!3458990 m!3860265))

(assert (=> b!3458990 m!3860259))

(assert (=> b!3458990 m!3860263))

(assert (=> b!3458990 m!3860011))

(declare-fun m!3860267 () Bool)

(assert (=> d!994972 m!3860267))

(assert (=> d!994972 m!3860263))

(assert (=> b!3458988 m!3860263))

(assert (=> b!3458988 m!3860263))

(declare-fun m!3860269 () Bool)

(assert (=> b!3458988 m!3860269))

(assert (=> b!3458197 d!994972))

(declare-fun b!3458992 () Bool)

(declare-fun e!2143029 () List!37283)

(assert (=> b!3458992 (= e!2143029 (drop!2010 (t!272530 lt!1175129) (- 0 1)))))

(declare-fun d!994974 () Bool)

(declare-fun e!2143031 () Bool)

(assert (=> d!994974 e!2143031))

(declare-fun res!1395632 () Bool)

(assert (=> d!994974 (=> (not res!1395632) (not e!2143031))))

(declare-fun lt!1175432 () List!37283)

(assert (=> d!994974 (= res!1395632 (set.subset (content!5186 lt!1175432) (content!5186 lt!1175129)))))

(declare-fun e!2143032 () List!37283)

(assert (=> d!994974 (= lt!1175432 e!2143032)))

(declare-fun c!592030 () Bool)

(assert (=> d!994974 (= c!592030 (is-Nil!37159 lt!1175129))))

(assert (=> d!994974 (= (drop!2010 lt!1175129 0) lt!1175432)))

(declare-fun b!3458993 () Bool)

(declare-fun e!2143028 () Int)

(declare-fun call!249418 () Int)

(assert (=> b!3458993 (= e!2143028 (- call!249418 0))))

(declare-fun b!3458994 () Bool)

(declare-fun e!2143030 () Int)

(assert (=> b!3458994 (= e!2143030 call!249418)))

(declare-fun b!3458995 () Bool)

(assert (=> b!3458995 (= e!2143028 0)))

(declare-fun b!3458996 () Bool)

(assert (=> b!3458996 (= e!2143030 e!2143028)))

(declare-fun c!592032 () Bool)

(assert (=> b!3458996 (= c!592032 (>= 0 call!249418))))

(declare-fun b!3458997 () Bool)

(assert (=> b!3458997 (= e!2143032 e!2143029)))

(declare-fun c!592029 () Bool)

(assert (=> b!3458997 (= c!592029 (<= 0 0))))

(declare-fun b!3458998 () Bool)

(assert (=> b!3458998 (= e!2143029 lt!1175129)))

(declare-fun b!3458999 () Bool)

(assert (=> b!3458999 (= e!2143031 (= (size!28190 lt!1175432) e!2143030))))

(declare-fun c!592031 () Bool)

(assert (=> b!3458999 (= c!592031 (<= 0 0))))

(declare-fun bm!249413 () Bool)

(assert (=> bm!249413 (= call!249418 (size!28190 lt!1175129))))

(declare-fun b!3459000 () Bool)

(assert (=> b!3459000 (= e!2143032 Nil!37159)))

(assert (= (and d!994974 c!592030) b!3459000))

(assert (= (and d!994974 (not c!592030)) b!3458997))

(assert (= (and b!3458997 c!592029) b!3458998))

(assert (= (and b!3458997 (not c!592029)) b!3458992))

(assert (= (and d!994974 res!1395632) b!3458999))

(assert (= (and b!3458999 c!592031) b!3458994))

(assert (= (and b!3458999 (not c!592031)) b!3458996))

(assert (= (and b!3458996 c!592032) b!3458995))

(assert (= (and b!3458996 (not c!592032)) b!3458993))

(assert (= (or b!3458994 b!3458996 b!3458993) bm!249413))

(declare-fun m!3860271 () Bool)

(assert (=> b!3458992 m!3860271))

(declare-fun m!3860273 () Bool)

(assert (=> d!994974 m!3860273))

(declare-fun m!3860275 () Bool)

(assert (=> d!994974 m!3860275))

(declare-fun m!3860277 () Bool)

(assert (=> b!3458999 m!3860277))

(declare-fun m!3860279 () Bool)

(assert (=> bm!249413 m!3860279))

(assert (=> b!3458197 d!994974))

(declare-fun d!994976 () Bool)

(assert (=> d!994976 (= (tail!5430 (drop!2010 lt!1175129 0)) (drop!2010 lt!1175129 (+ 0 1)))))

(declare-fun lt!1175433 () Unit!52487)

(assert (=> d!994976 (= lt!1175433 (choose!20003 lt!1175129 0))))

(declare-fun e!2143033 () Bool)

(assert (=> d!994976 e!2143033))

(declare-fun res!1395633 () Bool)

(assert (=> d!994976 (=> (not res!1395633) (not e!2143033))))

(assert (=> d!994976 (= res!1395633 (>= 0 0))))

(assert (=> d!994976 (= (lemmaDropTail!1046 lt!1175129 0) lt!1175433)))

(declare-fun b!3459001 () Bool)

(assert (=> b!3459001 (= e!2143033 (< 0 (size!28190 lt!1175129)))))

(assert (= (and d!994976 res!1395633) b!3459001))

(assert (=> d!994976 m!3858969))

(assert (=> d!994976 m!3858969))

(assert (=> d!994976 m!3858971))

(assert (=> d!994976 m!3858973))

(declare-fun m!3860281 () Bool)

(assert (=> d!994976 m!3860281))

(assert (=> b!3459001 m!3860279))

(assert (=> b!3458197 d!994976))

(declare-fun b!3459002 () Bool)

(declare-fun e!2143035 () List!37283)

(assert (=> b!3459002 (= e!2143035 (drop!2010 (t!272530 lt!1175129) (- (+ 0 1) 1)))))

(declare-fun d!994978 () Bool)

(declare-fun e!2143037 () Bool)

(assert (=> d!994978 e!2143037))

(declare-fun res!1395634 () Bool)

(assert (=> d!994978 (=> (not res!1395634) (not e!2143037))))

(declare-fun lt!1175434 () List!37283)

(assert (=> d!994978 (= res!1395634 (set.subset (content!5186 lt!1175434) (content!5186 lt!1175129)))))

(declare-fun e!2143038 () List!37283)

(assert (=> d!994978 (= lt!1175434 e!2143038)))

(declare-fun c!592034 () Bool)

(assert (=> d!994978 (= c!592034 (is-Nil!37159 lt!1175129))))

(assert (=> d!994978 (= (drop!2010 lt!1175129 (+ 0 1)) lt!1175434)))

(declare-fun b!3459003 () Bool)

(declare-fun e!2143034 () Int)

(declare-fun call!249419 () Int)

(assert (=> b!3459003 (= e!2143034 (- call!249419 (+ 0 1)))))

(declare-fun b!3459004 () Bool)

(declare-fun e!2143036 () Int)

(assert (=> b!3459004 (= e!2143036 call!249419)))

(declare-fun b!3459005 () Bool)

(assert (=> b!3459005 (= e!2143034 0)))

(declare-fun b!3459006 () Bool)

(assert (=> b!3459006 (= e!2143036 e!2143034)))

(declare-fun c!592036 () Bool)

(assert (=> b!3459006 (= c!592036 (>= (+ 0 1) call!249419))))

(declare-fun b!3459007 () Bool)

(assert (=> b!3459007 (= e!2143038 e!2143035)))

(declare-fun c!592033 () Bool)

(assert (=> b!3459007 (= c!592033 (<= (+ 0 1) 0))))

(declare-fun b!3459008 () Bool)

(assert (=> b!3459008 (= e!2143035 lt!1175129)))

(declare-fun b!3459009 () Bool)

(assert (=> b!3459009 (= e!2143037 (= (size!28190 lt!1175434) e!2143036))))

(declare-fun c!592035 () Bool)

(assert (=> b!3459009 (= c!592035 (<= (+ 0 1) 0))))

(declare-fun bm!249414 () Bool)

(assert (=> bm!249414 (= call!249419 (size!28190 lt!1175129))))

(declare-fun b!3459010 () Bool)

(assert (=> b!3459010 (= e!2143038 Nil!37159)))

(assert (= (and d!994978 c!592034) b!3459010))

(assert (= (and d!994978 (not c!592034)) b!3459007))

(assert (= (and b!3459007 c!592033) b!3459008))

(assert (= (and b!3459007 (not c!592033)) b!3459002))

(assert (= (and d!994978 res!1395634) b!3459009))

(assert (= (and b!3459009 c!592035) b!3459004))

(assert (= (and b!3459009 (not c!592035)) b!3459006))

(assert (= (and b!3459006 c!592036) b!3459005))

(assert (= (and b!3459006 (not c!592036)) b!3459003))

(assert (= (or b!3459004 b!3459006 b!3459003) bm!249414))

(declare-fun m!3860283 () Bool)

(assert (=> b!3459002 m!3860283))

(declare-fun m!3860285 () Bool)

(assert (=> d!994978 m!3860285))

(assert (=> d!994978 m!3860275))

(declare-fun m!3860287 () Bool)

(assert (=> b!3459009 m!3860287))

(assert (=> bm!249414 m!3860279))

(assert (=> b!3458197 d!994978))

(declare-fun b!3459011 () Bool)

(declare-fun e!2143040 () List!37283)

(assert (=> b!3459011 (= e!2143040 (drop!2010 (t!272530 lt!1175128) (- 0 1)))))

(declare-fun d!994980 () Bool)

(declare-fun e!2143042 () Bool)

(assert (=> d!994980 e!2143042))

(declare-fun res!1395635 () Bool)

(assert (=> d!994980 (=> (not res!1395635) (not e!2143042))))

(declare-fun lt!1175435 () List!37283)

(assert (=> d!994980 (= res!1395635 (set.subset (content!5186 lt!1175435) (content!5186 lt!1175128)))))

(declare-fun e!2143043 () List!37283)

(assert (=> d!994980 (= lt!1175435 e!2143043)))

(declare-fun c!592038 () Bool)

(assert (=> d!994980 (= c!592038 (is-Nil!37159 lt!1175128))))

(assert (=> d!994980 (= (drop!2010 lt!1175128 0) lt!1175435)))

(declare-fun b!3459012 () Bool)

(declare-fun e!2143039 () Int)

(declare-fun call!249420 () Int)

(assert (=> b!3459012 (= e!2143039 (- call!249420 0))))

(declare-fun b!3459013 () Bool)

(declare-fun e!2143041 () Int)

(assert (=> b!3459013 (= e!2143041 call!249420)))

(declare-fun b!3459014 () Bool)

(assert (=> b!3459014 (= e!2143039 0)))

(declare-fun b!3459015 () Bool)

(assert (=> b!3459015 (= e!2143041 e!2143039)))

(declare-fun c!592040 () Bool)

(assert (=> b!3459015 (= c!592040 (>= 0 call!249420))))

(declare-fun b!3459016 () Bool)

(assert (=> b!3459016 (= e!2143043 e!2143040)))

(declare-fun c!592037 () Bool)

(assert (=> b!3459016 (= c!592037 (<= 0 0))))

(declare-fun b!3459017 () Bool)

(assert (=> b!3459017 (= e!2143040 lt!1175128)))

(declare-fun b!3459018 () Bool)

(assert (=> b!3459018 (= e!2143042 (= (size!28190 lt!1175435) e!2143041))))

(declare-fun c!592039 () Bool)

(assert (=> b!3459018 (= c!592039 (<= 0 0))))

(declare-fun bm!249415 () Bool)

(assert (=> bm!249415 (= call!249420 (size!28190 lt!1175128))))

(declare-fun b!3459019 () Bool)

(assert (=> b!3459019 (= e!2143043 Nil!37159)))

(assert (= (and d!994980 c!592038) b!3459019))

(assert (= (and d!994980 (not c!592038)) b!3459016))

(assert (= (and b!3459016 c!592037) b!3459017))

(assert (= (and b!3459016 (not c!592037)) b!3459011))

(assert (= (and d!994980 res!1395635) b!3459018))

(assert (= (and b!3459018 c!592039) b!3459013))

(assert (= (and b!3459018 (not c!592039)) b!3459015))

(assert (= (and b!3459015 c!592040) b!3459014))

(assert (= (and b!3459015 (not c!592040)) b!3459012))

(assert (= (or b!3459013 b!3459015 b!3459012) bm!249415))

(declare-fun m!3860289 () Bool)

(assert (=> b!3459011 m!3860289))

(declare-fun m!3860291 () Bool)

(assert (=> d!994980 m!3860291))

(declare-fun m!3860293 () Bool)

(assert (=> d!994980 m!3860293))

(declare-fun m!3860295 () Bool)

(assert (=> b!3459018 m!3860295))

(declare-fun m!3860297 () Bool)

(assert (=> bm!249415 m!3860297))

(assert (=> b!3458197 d!994980))

(declare-fun d!994982 () Bool)

(declare-fun lt!1175436 () BalanceConc!22112)

(assert (=> d!994982 (= (list!13524 lt!1175436) (originalCharacters!6151 (apply!8744 lt!1174852 0)))))

(assert (=> d!994982 (= lt!1175436 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0)))) (value!175416 (apply!8744 lt!1174852 0))))))

(assert (=> d!994982 (= (charsOf!3451 (apply!8744 lt!1174852 0)) lt!1175436)))

(declare-fun b_lambda!99565 () Bool)

(assert (=> (not b_lambda!99565) (not d!994982)))

(declare-fun t!272672 () Bool)

(declare-fun tb!188389 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0))))) t!272672) tb!188389))

(declare-fun b!3459020 () Bool)

(declare-fun e!2143044 () Bool)

(declare-fun tp!1077901 () Bool)

(assert (=> b!3459020 (= e!2143044 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0)))) (value!175416 (apply!8744 lt!1174852 0))))) tp!1077901))))

(declare-fun result!232374 () Bool)

(assert (=> tb!188389 (= result!232374 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0)))) (value!175416 (apply!8744 lt!1174852 0)))) e!2143044))))

(assert (= tb!188389 b!3459020))

(declare-fun m!3860299 () Bool)

(assert (=> b!3459020 m!3860299))

(declare-fun m!3860301 () Bool)

(assert (=> tb!188389 m!3860301))

(assert (=> d!994982 t!272672))

(declare-fun b_and!243213 () Bool)

(assert (= b_and!243211 (and (=> t!272672 result!232374) b_and!243213)))

(declare-fun t!272674 () Bool)

(declare-fun tb!188391 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0))))) t!272674) tb!188391))

(declare-fun result!232376 () Bool)

(assert (= result!232376 result!232374))

(assert (=> d!994982 t!272674))

(declare-fun b_and!243215 () Bool)

(assert (= b_and!243209 (and (=> t!272674 result!232376) b_and!243215)))

(declare-fun t!272676 () Bool)

(declare-fun tb!188393 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0))))) t!272676) tb!188393))

(declare-fun result!232378 () Bool)

(assert (= result!232378 result!232374))

(assert (=> d!994982 t!272676))

(declare-fun b_and!243217 () Bool)

(assert (= b_and!243205 (and (=> t!272676 result!232378) b_and!243217)))

(declare-fun tb!188395 () Bool)

(declare-fun t!272678 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0))))) t!272678) tb!188395))

(declare-fun result!232380 () Bool)

(assert (= result!232380 result!232374))

(assert (=> d!994982 t!272678))

(declare-fun b_and!243219 () Bool)

(assert (= b_and!243203 (and (=> t!272678 result!232380) b_and!243219)))

(declare-fun t!272680 () Bool)

(declare-fun tb!188397 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0))))) t!272680) tb!188397))

(declare-fun result!232382 () Bool)

(assert (= result!232382 result!232374))

(assert (=> d!994982 t!272680))

(declare-fun b_and!243221 () Bool)

(assert (= b_and!243207 (and (=> t!272680 result!232382) b_and!243221)))

(declare-fun m!3860303 () Bool)

(assert (=> d!994982 m!3860303))

(declare-fun m!3860305 () Bool)

(assert (=> d!994982 m!3860305))

(assert (=> b!3458197 d!994982))

(declare-fun d!994984 () Bool)

(assert (=> d!994984 (= (tail!5430 (drop!2010 lt!1175129 0)) (t!272530 (drop!2010 lt!1175129 0)))))

(assert (=> b!3458197 d!994984))

(declare-fun d!994986 () Bool)

(declare-fun lt!1175437 () Token!10240)

(assert (=> d!994986 (contains!6889 lt!1175128 lt!1175437)))

(declare-fun e!2143045 () Token!10240)

(assert (=> d!994986 (= lt!1175437 e!2143045)))

(declare-fun c!592041 () Bool)

(assert (=> d!994986 (= c!592041 (= 0 0))))

(declare-fun e!2143046 () Bool)

(assert (=> d!994986 e!2143046))

(declare-fun res!1395636 () Bool)

(assert (=> d!994986 (=> (not res!1395636) (not e!2143046))))

(assert (=> d!994986 (= res!1395636 (<= 0 0))))

(assert (=> d!994986 (= (apply!8748 lt!1175128 0) lt!1175437)))

(declare-fun b!3459021 () Bool)

(assert (=> b!3459021 (= e!2143046 (< 0 (size!28190 lt!1175128)))))

(declare-fun b!3459022 () Bool)

(assert (=> b!3459022 (= e!2143045 (head!7318 lt!1175128))))

(declare-fun b!3459023 () Bool)

(assert (=> b!3459023 (= e!2143045 (apply!8748 (tail!5430 lt!1175128) (- 0 1)))))

(assert (= (and d!994986 res!1395636) b!3459021))

(assert (= (and d!994986 c!592041) b!3459022))

(assert (= (and d!994986 (not c!592041)) b!3459023))

(declare-fun m!3860307 () Bool)

(assert (=> d!994986 m!3860307))

(assert (=> b!3459021 m!3860297))

(declare-fun m!3860309 () Bool)

(assert (=> b!3459022 m!3860309))

(declare-fun m!3860311 () Bool)

(assert (=> b!3459023 m!3860311))

(assert (=> b!3459023 m!3860311))

(declare-fun m!3860313 () Bool)

(assert (=> b!3459023 m!3860313))

(assert (=> b!3458197 d!994986))

(declare-fun d!994988 () Bool)

(assert (=> d!994988 (= (head!7318 (drop!2010 lt!1175128 0)) (h!42579 (drop!2010 lt!1175128 0)))))

(assert (=> b!3458197 d!994988))

(declare-fun d!994990 () Bool)

(declare-fun lt!1175443 () BalanceConc!22112)

(assert (=> d!994990 (= (list!13524 lt!1175443) (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174852 (+ 0 1)) (list!13524 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174852 0))))))))

(declare-fun e!2143047 () BalanceConc!22112)

(assert (=> d!994990 (= lt!1175443 e!2143047)))

(declare-fun c!592042 () Bool)

(assert (=> d!994990 (= c!592042 (>= (+ 0 1) (size!28183 lt!1174852)))))

(declare-fun e!2143048 () Bool)

(assert (=> d!994990 e!2143048))

(declare-fun res!1395637 () Bool)

(assert (=> d!994990 (=> (not res!1395637) (not e!2143048))))

(assert (=> d!994990 (= res!1395637 (>= (+ 0 1) 0))))

(assert (=> d!994990 (= (printTailRec!1521 thiss!18206 lt!1174852 (+ 0 1) (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174852 0)))) lt!1175443)))

(declare-fun b!3459024 () Bool)

(assert (=> b!3459024 (= e!2143048 (<= (+ 0 1) (size!28183 lt!1174852)))))

(declare-fun b!3459025 () Bool)

(assert (=> b!3459025 (= e!2143047 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174852 0))))))

(declare-fun b!3459026 () Bool)

(assert (=> b!3459026 (= e!2143047 (printTailRec!1521 thiss!18206 lt!1174852 (+ 0 1 1) (++!9158 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174852 0))) (charsOf!3451 (apply!8744 lt!1174852 (+ 0 1))))))))

(declare-fun lt!1175440 () List!37283)

(assert (=> b!3459026 (= lt!1175440 (list!13526 lt!1174852))))

(declare-fun lt!1175438 () Unit!52487)

(assert (=> b!3459026 (= lt!1175438 (lemmaDropApply!1162 lt!1175440 (+ 0 1)))))

(assert (=> b!3459026 (= (head!7318 (drop!2010 lt!1175440 (+ 0 1))) (apply!8748 lt!1175440 (+ 0 1)))))

(declare-fun lt!1175444 () Unit!52487)

(assert (=> b!3459026 (= lt!1175444 lt!1175438)))

(declare-fun lt!1175441 () List!37283)

(assert (=> b!3459026 (= lt!1175441 (list!13526 lt!1174852))))

(declare-fun lt!1175442 () Unit!52487)

(assert (=> b!3459026 (= lt!1175442 (lemmaDropTail!1046 lt!1175441 (+ 0 1)))))

(assert (=> b!3459026 (= (tail!5430 (drop!2010 lt!1175441 (+ 0 1))) (drop!2010 lt!1175441 (+ 0 1 1)))))

(declare-fun lt!1175439 () Unit!52487)

(assert (=> b!3459026 (= lt!1175439 lt!1175442)))

(assert (= (and d!994990 res!1395637) b!3459024))

(assert (= (and d!994990 c!592042) b!3459025))

(assert (= (and d!994990 (not c!592042)) b!3459026))

(assert (=> d!994990 m!3858941))

(assert (=> d!994990 m!3858951))

(declare-fun m!3860315 () Bool)

(assert (=> d!994990 m!3860315))

(declare-fun m!3860317 () Bool)

(assert (=> d!994990 m!3860317))

(assert (=> d!994990 m!3860315))

(declare-fun m!3860319 () Bool)

(assert (=> d!994990 m!3860319))

(declare-fun m!3860321 () Bool)

(assert (=> d!994990 m!3860321))

(assert (=> d!994990 m!3860317))

(assert (=> b!3459024 m!3858941))

(assert (=> b!3459026 m!3858951))

(declare-fun m!3860323 () Bool)

(assert (=> b!3459026 m!3860323))

(declare-fun m!3860325 () Bool)

(assert (=> b!3459026 m!3860325))

(declare-fun m!3860327 () Bool)

(assert (=> b!3459026 m!3860327))

(declare-fun m!3860329 () Bool)

(assert (=> b!3459026 m!3860329))

(assert (=> b!3459026 m!3860327))

(assert (=> b!3459026 m!3860325))

(declare-fun m!3860331 () Bool)

(assert (=> b!3459026 m!3860331))

(declare-fun m!3860333 () Bool)

(assert (=> b!3459026 m!3860333))

(declare-fun m!3860335 () Bool)

(assert (=> b!3459026 m!3860335))

(assert (=> b!3459026 m!3860323))

(declare-fun m!3860337 () Bool)

(assert (=> b!3459026 m!3860337))

(assert (=> b!3459026 m!3858965))

(declare-fun m!3860339 () Bool)

(assert (=> b!3459026 m!3860339))

(declare-fun m!3860341 () Bool)

(assert (=> b!3459026 m!3860341))

(assert (=> b!3459026 m!3860335))

(assert (=> b!3459026 m!3860341))

(declare-fun m!3860343 () Bool)

(assert (=> b!3459026 m!3860343))

(declare-fun m!3860345 () Bool)

(assert (=> b!3459026 m!3860345))

(assert (=> b!3458197 d!994990))

(declare-fun d!994992 () Bool)

(declare-fun lt!1175445 () Token!10240)

(assert (=> d!994992 (= lt!1175445 (apply!8748 (list!13526 lt!1174852) 0))))

(assert (=> d!994992 (= lt!1175445 (apply!8749 (c!591767 lt!1174852) 0))))

(declare-fun e!2143049 () Bool)

(assert (=> d!994992 e!2143049))

(declare-fun res!1395638 () Bool)

(assert (=> d!994992 (=> (not res!1395638) (not e!2143049))))

(assert (=> d!994992 (= res!1395638 (<= 0 0))))

(assert (=> d!994992 (= (apply!8744 lt!1174852 0) lt!1175445)))

(declare-fun b!3459027 () Bool)

(assert (=> b!3459027 (= e!2143049 (< 0 (size!28183 lt!1174852)))))

(assert (= (and d!994992 res!1395638) b!3459027))

(assert (=> d!994992 m!3858965))

(assert (=> d!994992 m!3858965))

(declare-fun m!3860347 () Bool)

(assert (=> d!994992 m!3860347))

(declare-fun m!3860349 () Bool)

(assert (=> d!994992 m!3860349))

(assert (=> b!3459027 m!3858941))

(assert (=> b!3458197 d!994992))

(declare-fun d!994994 () Bool)

(assert (=> d!994994 (= (list!13526 lt!1174852) (list!13530 (c!591767 lt!1174852)))))

(declare-fun bs!560246 () Bool)

(assert (= bs!560246 d!994994))

(declare-fun m!3860351 () Bool)

(assert (=> bs!560246 m!3860351))

(assert (=> b!3458197 d!994994))

(declare-fun d!994996 () Bool)

(assert (=> d!994996 (= (head!7318 (drop!2010 lt!1175128 0)) (apply!8748 lt!1175128 0))))

(declare-fun lt!1175446 () Unit!52487)

(assert (=> d!994996 (= lt!1175446 (choose!20004 lt!1175128 0))))

(declare-fun e!2143050 () Bool)

(assert (=> d!994996 e!2143050))

(declare-fun res!1395639 () Bool)

(assert (=> d!994996 (=> (not res!1395639) (not e!2143050))))

(assert (=> d!994996 (= res!1395639 (>= 0 0))))

(assert (=> d!994996 (= (lemmaDropApply!1162 lt!1175128 0) lt!1175446)))

(declare-fun b!3459028 () Bool)

(assert (=> b!3459028 (= e!2143050 (< 0 (size!28190 lt!1175128)))))

(assert (= (and d!994996 res!1395639) b!3459028))

(assert (=> d!994996 m!3858953))

(assert (=> d!994996 m!3858953))

(assert (=> d!994996 m!3858955))

(assert (=> d!994996 m!3858967))

(declare-fun m!3860353 () Bool)

(assert (=> d!994996 m!3860353))

(assert (=> b!3459028 m!3860297))

(assert (=> b!3458197 d!994996))

(declare-fun d!994998 () Bool)

(declare-fun lt!1175447 () Int)

(assert (=> d!994998 (>= lt!1175447 0)))

(declare-fun e!2143051 () Int)

(assert (=> d!994998 (= lt!1175447 e!2143051)))

(declare-fun c!592043 () Bool)

(assert (=> d!994998 (= c!592043 (is-Nil!37157 lt!1174964))))

(assert (=> d!994998 (= (size!28184 lt!1174964) lt!1175447)))

(declare-fun b!3459029 () Bool)

(assert (=> b!3459029 (= e!2143051 0)))

(declare-fun b!3459030 () Bool)

(assert (=> b!3459030 (= e!2143051 (+ 1 (size!28184 (t!272528 lt!1174964))))))

(assert (= (and d!994998 c!592043) b!3459029))

(assert (= (and d!994998 (not c!592043)) b!3459030))

(declare-fun m!3860355 () Bool)

(assert (=> b!3459030 m!3860355))

(assert (=> b!3457827 d!994998))

(assert (=> b!3457827 d!994520))

(declare-fun d!995000 () Bool)

(declare-fun lt!1175448 () Int)

(assert (=> d!995000 (>= lt!1175448 0)))

(declare-fun e!2143052 () Int)

(assert (=> d!995000 (= lt!1175448 e!2143052)))

(declare-fun c!592044 () Bool)

(assert (=> d!995000 (= c!592044 (is-Nil!37157 lt!1174835))))

(assert (=> d!995000 (= (size!28184 lt!1174835) lt!1175448)))

(declare-fun b!3459031 () Bool)

(assert (=> b!3459031 (= e!2143052 0)))

(declare-fun b!3459032 () Bool)

(assert (=> b!3459032 (= e!2143052 (+ 1 (size!28184 (t!272528 lt!1174835))))))

(assert (= (and d!995000 c!592044) b!3459031))

(assert (= (and d!995000 (not c!592044)) b!3459032))

(declare-fun m!3860357 () Bool)

(assert (=> b!3459032 m!3860357))

(assert (=> b!3457827 d!995000))

(declare-fun d!995002 () Bool)

(declare-fun e!2143055 () Bool)

(assert (=> d!995002 e!2143055))

(declare-fun res!1395642 () Bool)

(assert (=> d!995002 (=> (not res!1395642) (not e!2143055))))

(declare-fun lt!1175451 () BalanceConc!22112)

(assert (=> d!995002 (= res!1395642 (= (list!13524 lt!1175451) lt!1174846))))

(declare-fun fromList!742 (List!37281) Conc!11249)

(assert (=> d!995002 (= lt!1175451 (BalanceConc!22113 (fromList!742 lt!1174846)))))

(assert (=> d!995002 (= (fromListB!1782 lt!1174846) lt!1175451)))

(declare-fun b!3459035 () Bool)

(assert (=> b!3459035 (= e!2143055 (isBalanced!3414 (fromList!742 lt!1174846)))))

(assert (= (and d!995002 res!1395642) b!3459035))

(declare-fun m!3860359 () Bool)

(assert (=> d!995002 m!3860359))

(declare-fun m!3860361 () Bool)

(assert (=> d!995002 m!3860361))

(assert (=> b!3459035 m!3860361))

(assert (=> b!3459035 m!3860361))

(declare-fun m!3860363 () Bool)

(assert (=> b!3459035 m!3860363))

(assert (=> d!994618 d!995002))

(declare-fun b!3459036 () Bool)

(declare-fun e!2143058 () Bool)

(declare-fun e!2143061 () Bool)

(assert (=> b!3459036 (= e!2143058 e!2143061)))

(declare-fun res!1395645 () Bool)

(assert (=> b!3459036 (=> (not res!1395645) (not e!2143061))))

(declare-fun lt!1175452 () Bool)

(assert (=> b!3459036 (= res!1395645 (not lt!1175452))))

(declare-fun b!3459037 () Bool)

(declare-fun e!2143057 () Bool)

(declare-fun call!249421 () Bool)

(assert (=> b!3459037 (= e!2143057 (= lt!1175452 call!249421))))

(declare-fun b!3459038 () Bool)

(declare-fun res!1395650 () Bool)

(assert (=> b!3459038 (=> res!1395650 e!2143058)))

(declare-fun e!2143059 () Bool)

(assert (=> b!3459038 (= res!1395650 e!2143059)))

(declare-fun res!1395646 () Bool)

(assert (=> b!3459038 (=> (not res!1395646) (not e!2143059))))

(assert (=> b!3459038 (= res!1395646 lt!1175452)))

(declare-fun b!3459039 () Bool)

(declare-fun e!2143062 () Bool)

(assert (=> b!3459039 (= e!2143061 e!2143062)))

(declare-fun res!1395643 () Bool)

(assert (=> b!3459039 (=> res!1395643 e!2143062)))

(assert (=> b!3459039 (= res!1395643 call!249421)))

(declare-fun b!3459040 () Bool)

(declare-fun e!2143060 () Bool)

(assert (=> b!3459040 (= e!2143060 (nullable!3487 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun d!995004 () Bool)

(assert (=> d!995004 e!2143057))

(declare-fun c!592048 () Bool)

(assert (=> d!995004 (= c!592048 (is-EmptyExpr!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(assert (=> d!995004 (= lt!1175452 e!2143060)))

(declare-fun c!592047 () Bool)

(assert (=> d!995004 (= c!592047 (isEmpty!21510 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))))))

(assert (=> d!995004 (validRegex!4643 (regex!5437 (rule!8027 (h!42579 tokens!494))))))

(assert (=> d!995004 (= (matchR!4780 (regex!5437 (rule!8027 (h!42579 tokens!494))) (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))) lt!1175452)))

(declare-fun b!3459041 () Bool)

(declare-fun res!1395649 () Bool)

(assert (=> b!3459041 (=> (not res!1395649) (not e!2143059))))

(assert (=> b!3459041 (= res!1395649 (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092)))))))))

(declare-fun b!3459042 () Bool)

(assert (=> b!3459042 (= e!2143062 (not (= (head!7316 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))) (c!591765 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun b!3459043 () Bool)

(assert (=> b!3459043 (= e!2143060 (matchR!4780 (derivativeStep!3040 (regex!5437 (rule!8027 (h!42579 tokens!494))) (head!7316 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092)))))) (tail!5431 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092)))))))))

(declare-fun b!3459044 () Bool)

(declare-fun e!2143056 () Bool)

(assert (=> b!3459044 (= e!2143056 (not lt!1175452))))

(declare-fun b!3459045 () Bool)

(declare-fun res!1395648 () Bool)

(assert (=> b!3459045 (=> (not res!1395648) (not e!2143059))))

(assert (=> b!3459045 (= res!1395648 (not call!249421))))

(declare-fun b!3459046 () Bool)

(declare-fun res!1395647 () Bool)

(assert (=> b!3459046 (=> res!1395647 e!2143062)))

(assert (=> b!3459046 (= res!1395647 (not (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))))))))

(declare-fun b!3459047 () Bool)

(declare-fun res!1395644 () Bool)

(assert (=> b!3459047 (=> res!1395644 e!2143058)))

(assert (=> b!3459047 (= res!1395644 (not (is-ElementMatch!10196 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> b!3459047 (= e!2143056 e!2143058)))

(declare-fun bm!249416 () Bool)

(assert (=> bm!249416 (= call!249421 (isEmpty!21510 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))))))

(declare-fun b!3459048 () Bool)

(assert (=> b!3459048 (= e!2143057 e!2143056)))

(declare-fun c!592046 () Bool)

(assert (=> b!3459048 (= c!592046 (is-EmptyLang!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun b!3459049 () Bool)

(assert (=> b!3459049 (= e!2143059 (= (head!7316 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))) (c!591765 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (= (and d!995004 c!592047) b!3459040))

(assert (= (and d!995004 (not c!592047)) b!3459043))

(assert (= (and d!995004 c!592048) b!3459037))

(assert (= (and d!995004 (not c!592048)) b!3459048))

(assert (= (and b!3459048 c!592046) b!3459044))

(assert (= (and b!3459048 (not c!592046)) b!3459047))

(assert (= (and b!3459047 (not res!1395644)) b!3459038))

(assert (= (and b!3459038 res!1395646) b!3459045))

(assert (= (and b!3459045 res!1395648) b!3459041))

(assert (= (and b!3459041 res!1395649) b!3459049))

(assert (= (and b!3459038 (not res!1395650)) b!3459036))

(assert (= (and b!3459036 res!1395645) b!3459039))

(assert (= (and b!3459039 (not res!1395643)) b!3459046))

(assert (= (and b!3459046 (not res!1395647)) b!3459042))

(assert (= (or b!3459037 b!3459039 b!3459045) bm!249416))

(assert (=> b!3459043 m!3858871))

(declare-fun m!3860365 () Bool)

(assert (=> b!3459043 m!3860365))

(assert (=> b!3459043 m!3860365))

(declare-fun m!3860367 () Bool)

(assert (=> b!3459043 m!3860367))

(assert (=> b!3459043 m!3858871))

(declare-fun m!3860369 () Bool)

(assert (=> b!3459043 m!3860369))

(assert (=> b!3459043 m!3860367))

(assert (=> b!3459043 m!3860369))

(declare-fun m!3860371 () Bool)

(assert (=> b!3459043 m!3860371))

(assert (=> b!3459040 m!3860065))

(assert (=> d!995004 m!3858871))

(declare-fun m!3860373 () Bool)

(assert (=> d!995004 m!3860373))

(assert (=> d!995004 m!3860063))

(assert (=> bm!249416 m!3858871))

(assert (=> bm!249416 m!3860373))

(assert (=> b!3459046 m!3858871))

(assert (=> b!3459046 m!3860369))

(assert (=> b!3459046 m!3860369))

(declare-fun m!3860375 () Bool)

(assert (=> b!3459046 m!3860375))

(assert (=> b!3459042 m!3858871))

(assert (=> b!3459042 m!3860365))

(assert (=> b!3459041 m!3858871))

(assert (=> b!3459041 m!3860369))

(assert (=> b!3459041 m!3860369))

(assert (=> b!3459041 m!3860375))

(assert (=> b!3459049 m!3858871))

(assert (=> b!3459049 m!3860365))

(assert (=> b!3458130 d!995004))

(declare-fun d!995006 () Bool)

(assert (=> d!995006 (= (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092)))) (list!13527 (c!591766 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))))))

(declare-fun bs!560247 () Bool)

(assert (= bs!560247 d!995006))

(declare-fun m!3860377 () Bool)

(assert (=> bs!560247 m!3860377))

(assert (=> b!3458130 d!995006))

(declare-fun d!995008 () Bool)

(declare-fun lt!1175453 () BalanceConc!22112)

(assert (=> d!995008 (= (list!13524 lt!1175453) (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092))))))

(assert (=> d!995008 (= lt!1175453 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092))))) (value!175416 (_1!21571 (get!11893 lt!1175092)))))))

(assert (=> d!995008 (= (charsOf!3451 (_1!21571 (get!11893 lt!1175092))) lt!1175453)))

(declare-fun b_lambda!99567 () Bool)

(assert (=> (not b_lambda!99567) (not d!995008)))

(declare-fun tb!188399 () Bool)

(declare-fun t!272682 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272682) tb!188399))

(declare-fun b!3459050 () Bool)

(declare-fun e!2143063 () Bool)

(declare-fun tp!1077902 () Bool)

(assert (=> b!3459050 (= e!2143063 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092))))) (value!175416 (_1!21571 (get!11893 lt!1175092)))))) tp!1077902))))

(declare-fun result!232384 () Bool)

(assert (=> tb!188399 (= result!232384 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092))))) (value!175416 (_1!21571 (get!11893 lt!1175092))))) e!2143063))))

(assert (= tb!188399 b!3459050))

(declare-fun m!3860379 () Bool)

(assert (=> b!3459050 m!3860379))

(declare-fun m!3860381 () Bool)

(assert (=> tb!188399 m!3860381))

(assert (=> d!995008 t!272682))

(declare-fun b_and!243223 () Bool)

(assert (= b_and!243215 (and (=> t!272682 result!232384) b_and!243223)))

(declare-fun tb!188401 () Bool)

(declare-fun t!272684 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272684) tb!188401))

(declare-fun result!232386 () Bool)

(assert (= result!232386 result!232384))

(assert (=> d!995008 t!272684))

(declare-fun b_and!243225 () Bool)

(assert (= b_and!243221 (and (=> t!272684 result!232386) b_and!243225)))

(declare-fun tb!188403 () Bool)

(declare-fun t!272686 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272686) tb!188403))

(declare-fun result!232388 () Bool)

(assert (= result!232388 result!232384))

(assert (=> d!995008 t!272686))

(declare-fun b_and!243227 () Bool)

(assert (= b_and!243217 (and (=> t!272686 result!232388) b_and!243227)))

(declare-fun tb!188405 () Bool)

(declare-fun t!272688 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272688) tb!188405))

(declare-fun result!232390 () Bool)

(assert (= result!232390 result!232384))

(assert (=> d!995008 t!272688))

(declare-fun b_and!243229 () Bool)

(assert (= b_and!243213 (and (=> t!272688 result!232390) b_and!243229)))

(declare-fun t!272690 () Bool)

(declare-fun tb!188407 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272690) tb!188407))

(declare-fun result!232392 () Bool)

(assert (= result!232392 result!232384))

(assert (=> d!995008 t!272690))

(declare-fun b_and!243231 () Bool)

(assert (= b_and!243219 (and (=> t!272690 result!232392) b_and!243231)))

(declare-fun m!3860383 () Bool)

(assert (=> d!995008 m!3860383))

(declare-fun m!3860385 () Bool)

(assert (=> d!995008 m!3860385))

(assert (=> b!3458130 d!995008))

(assert (=> b!3458130 d!994754))

(declare-fun b!3459053 () Bool)

(declare-fun res!1395652 () Bool)

(declare-fun e!2143064 () Bool)

(assert (=> b!3459053 (=> (not res!1395652) (not e!2143064))))

(declare-fun lt!1175454 () List!37281)

(assert (=> b!3459053 (= res!1395652 (= (size!28184 lt!1175454) (+ (size!28184 (t!272528 lt!1174846)) (size!28184 lt!1174848))))))

(declare-fun d!995010 () Bool)

(assert (=> d!995010 e!2143064))

(declare-fun res!1395651 () Bool)

(assert (=> d!995010 (=> (not res!1395651) (not e!2143064))))

(assert (=> d!995010 (= res!1395651 (= (content!5182 lt!1175454) (set.union (content!5182 (t!272528 lt!1174846)) (content!5182 lt!1174848))))))

(declare-fun e!2143065 () List!37281)

(assert (=> d!995010 (= lt!1175454 e!2143065)))

(declare-fun c!592049 () Bool)

(assert (=> d!995010 (= c!592049 (is-Nil!37157 (t!272528 lt!1174846)))))

(assert (=> d!995010 (= (++!9156 (t!272528 lt!1174846) lt!1174848) lt!1175454)))

(declare-fun b!3459052 () Bool)

(assert (=> b!3459052 (= e!2143065 (Cons!37157 (h!42577 (t!272528 lt!1174846)) (++!9156 (t!272528 (t!272528 lt!1174846)) lt!1174848)))))

(declare-fun b!3459054 () Bool)

(assert (=> b!3459054 (= e!2143064 (or (not (= lt!1174848 Nil!37157)) (= lt!1175454 (t!272528 lt!1174846))))))

(declare-fun b!3459051 () Bool)

(assert (=> b!3459051 (= e!2143065 lt!1174848)))

(assert (= (and d!995010 c!592049) b!3459051))

(assert (= (and d!995010 (not c!592049)) b!3459052))

(assert (= (and d!995010 res!1395651) b!3459053))

(assert (= (and b!3459053 res!1395652) b!3459054))

(declare-fun m!3860387 () Bool)

(assert (=> b!3459053 m!3860387))

(assert (=> b!3459053 m!3858887))

(assert (=> b!3459053 m!3858427))

(declare-fun m!3860389 () Bool)

(assert (=> d!995010 m!3860389))

(declare-fun m!3860391 () Bool)

(assert (=> d!995010 m!3860391))

(assert (=> d!995010 m!3858431))

(declare-fun m!3860393 () Bool)

(assert (=> b!3459052 m!3860393))

(assert (=> b!3457853 d!995010))

(declare-fun d!995012 () Bool)

(assert (=> d!995012 (= (isEmpty!21510 lt!1174848) (is-Nil!37157 lt!1174848))))

(assert (=> bm!249352 d!995012))

(declare-fun d!995014 () Bool)

(assert (=> d!995014 (= (list!13524 lt!1175181) (list!13527 (c!591766 lt!1175181)))))

(declare-fun bs!560248 () Bool)

(assert (= bs!560248 d!995014))

(declare-fun m!3860395 () Bool)

(assert (=> bs!560248 m!3860395))

(assert (=> d!994580 d!995014))

(declare-fun d!995016 () Bool)

(declare-fun c!592050 () Bool)

(assert (=> d!995016 (= c!592050 (is-Cons!37159 (list!13526 lt!1174852)))))

(declare-fun e!2143066 () List!37281)

(assert (=> d!995016 (= (printList!1574 thiss!18206 (list!13526 lt!1174852)) e!2143066)))

(declare-fun b!3459055 () Bool)

(assert (=> b!3459055 (= e!2143066 (++!9156 (list!13524 (charsOf!3451 (h!42579 (list!13526 lt!1174852)))) (printList!1574 thiss!18206 (t!272530 (list!13526 lt!1174852)))))))

(declare-fun b!3459056 () Bool)

(assert (=> b!3459056 (= e!2143066 Nil!37157)))

(assert (= (and d!995016 c!592050) b!3459055))

(assert (= (and d!995016 (not c!592050)) b!3459056))

(declare-fun m!3860397 () Bool)

(assert (=> b!3459055 m!3860397))

(assert (=> b!3459055 m!3860397))

(declare-fun m!3860399 () Bool)

(assert (=> b!3459055 m!3860399))

(declare-fun m!3860401 () Bool)

(assert (=> b!3459055 m!3860401))

(assert (=> b!3459055 m!3860399))

(assert (=> b!3459055 m!3860401))

(declare-fun m!3860403 () Bool)

(assert (=> b!3459055 m!3860403))

(assert (=> d!994580 d!995016))

(assert (=> d!994580 d!994994))

(assert (=> d!994580 d!994534))

(declare-fun b!3459059 () Bool)

(declare-fun res!1395654 () Bool)

(declare-fun e!2143067 () Bool)

(assert (=> b!3459059 (=> (not res!1395654) (not e!2143067))))

(declare-fun lt!1175455 () List!37281)

(assert (=> b!3459059 (= res!1395654 (= (size!28184 lt!1175455) (+ (size!28184 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))) (size!28184 lt!1174848))))))

(declare-fun d!995018 () Bool)

(assert (=> d!995018 e!2143067))

(declare-fun res!1395653 () Bool)

(assert (=> d!995018 (=> (not res!1395653) (not e!2143067))))

(assert (=> d!995018 (= res!1395653 (= (content!5182 lt!1175455) (set.union (content!5182 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))) (content!5182 lt!1174848))))))

(declare-fun e!2143068 () List!37281)

(assert (=> d!995018 (= lt!1175455 e!2143068)))

(declare-fun c!592051 () Bool)

(assert (=> d!995018 (= c!592051 (is-Nil!37157 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))))))

(assert (=> d!995018 (= (++!9156 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) lt!1174848) lt!1175455)))

(declare-fun b!3459058 () Bool)

(assert (=> b!3459058 (= e!2143068 (Cons!37157 (h!42577 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))) (++!9156 (t!272528 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))) lt!1174848)))))

(declare-fun b!3459060 () Bool)

(assert (=> b!3459060 (= e!2143067 (or (not (= lt!1174848 Nil!37157)) (= lt!1175455 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))))

(declare-fun b!3459057 () Bool)

(assert (=> b!3459057 (= e!2143068 lt!1174848)))

(assert (= (and d!995018 c!592051) b!3459057))

(assert (= (and d!995018 (not c!592051)) b!3459058))

(assert (= (and d!995018 res!1395653) b!3459059))

(assert (= (and b!3459059 res!1395654) b!3459060))

(declare-fun m!3860405 () Bool)

(assert (=> b!3459059 m!3860405))

(declare-fun m!3860407 () Bool)

(assert (=> b!3459059 m!3860407))

(assert (=> b!3459059 m!3858427))

(declare-fun m!3860409 () Bool)

(assert (=> d!995018 m!3860409))

(assert (=> d!995018 m!3860241))

(assert (=> d!995018 m!3858431))

(declare-fun m!3860411 () Bool)

(assert (=> b!3459058 m!3860411))

(assert (=> b!3458044 d!995018))

(declare-fun d!995020 () Bool)

(declare-fun lt!1175456 () Int)

(assert (=> d!995020 (>= lt!1175456 0)))

(declare-fun e!2143069 () Int)

(assert (=> d!995020 (= lt!1175456 e!2143069)))

(declare-fun c!592052 () Bool)

(assert (=> d!995020 (= c!592052 (is-Nil!37157 (_2!21571 (get!11893 lt!1175029))))))

(assert (=> d!995020 (= (size!28184 (_2!21571 (get!11893 lt!1175029))) lt!1175456)))

(declare-fun b!3459061 () Bool)

(assert (=> b!3459061 (= e!2143069 0)))

(declare-fun b!3459062 () Bool)

(assert (=> b!3459062 (= e!2143069 (+ 1 (size!28184 (t!272528 (_2!21571 (get!11893 lt!1175029))))))))

(assert (= (and d!995020 c!592052) b!3459061))

(assert (= (and d!995020 (not c!592052)) b!3459062))

(declare-fun m!3860413 () Bool)

(assert (=> b!3459062 m!3860413))

(assert (=> b!3457978 d!995020))

(assert (=> b!3457978 d!994798))

(assert (=> b!3457978 d!994520))

(declare-fun d!995022 () Bool)

(declare-fun lt!1175459 () Bool)

(assert (=> d!995022 (= lt!1175459 (set.member (h!42579 tokens!494) (content!5186 tokens!494)))))

(declare-fun e!2143074 () Bool)

(assert (=> d!995022 (= lt!1175459 e!2143074)))

(declare-fun res!1395660 () Bool)

(assert (=> d!995022 (=> (not res!1395660) (not e!2143074))))

(assert (=> d!995022 (= res!1395660 (is-Cons!37159 tokens!494))))

(assert (=> d!995022 (= (contains!6889 tokens!494 (h!42579 tokens!494)) lt!1175459)))

(declare-fun b!3459067 () Bool)

(declare-fun e!2143075 () Bool)

(assert (=> b!3459067 (= e!2143074 e!2143075)))

(declare-fun res!1395659 () Bool)

(assert (=> b!3459067 (=> res!1395659 e!2143075)))

(assert (=> b!3459067 (= res!1395659 (= (h!42579 tokens!494) (h!42579 tokens!494)))))

(declare-fun b!3459068 () Bool)

(assert (=> b!3459068 (= e!2143075 (contains!6889 (t!272530 tokens!494) (h!42579 tokens!494)))))

(assert (= (and d!995022 res!1395660) b!3459067))

(assert (= (and b!3459067 (not res!1395659)) b!3459068))

(declare-fun m!3860415 () Bool)

(assert (=> d!995022 m!3860415))

(declare-fun m!3860417 () Bool)

(assert (=> d!995022 m!3860417))

(declare-fun m!3860419 () Bool)

(assert (=> b!3459068 m!3860419))

(assert (=> b!3457847 d!995022))

(declare-fun d!995024 () Bool)

(assert (=> d!995024 (= (isEmpty!21512 lt!1175029) (not (is-Some!7521 lt!1175029)))))

(assert (=> d!994438 d!995024))

(declare-fun b!3459080 () Bool)

(declare-fun e!2143084 () Bool)

(assert (=> b!3459080 (= e!2143084 (>= (size!28184 lt!1174846) (size!28184 lt!1174846)))))

(declare-fun b!3459078 () Bool)

(declare-fun res!1395669 () Bool)

(declare-fun e!2143083 () Bool)

(assert (=> b!3459078 (=> (not res!1395669) (not e!2143083))))

(assert (=> b!3459078 (= res!1395669 (= (head!7316 lt!1174846) (head!7316 lt!1174846)))))

(declare-fun d!995026 () Bool)

(assert (=> d!995026 e!2143084))

(declare-fun res!1395670 () Bool)

(assert (=> d!995026 (=> res!1395670 e!2143084)))

(declare-fun lt!1175462 () Bool)

(assert (=> d!995026 (= res!1395670 (not lt!1175462))))

(declare-fun e!2143082 () Bool)

(assert (=> d!995026 (= lt!1175462 e!2143082)))

(declare-fun res!1395671 () Bool)

(assert (=> d!995026 (=> res!1395671 e!2143082)))

(assert (=> d!995026 (= res!1395671 (is-Nil!37157 lt!1174846))))

(assert (=> d!995026 (= (isPrefix!2843 lt!1174846 lt!1174846) lt!1175462)))

(declare-fun b!3459077 () Bool)

(assert (=> b!3459077 (= e!2143082 e!2143083)))

(declare-fun res!1395672 () Bool)

(assert (=> b!3459077 (=> (not res!1395672) (not e!2143083))))

(assert (=> b!3459077 (= res!1395672 (not (is-Nil!37157 lt!1174846)))))

(declare-fun b!3459079 () Bool)

(assert (=> b!3459079 (= e!2143083 (isPrefix!2843 (tail!5431 lt!1174846) (tail!5431 lt!1174846)))))

(assert (= (and d!995026 (not res!1395671)) b!3459077))

(assert (= (and b!3459077 res!1395672) b!3459078))

(assert (= (and b!3459078 res!1395669) b!3459079))

(assert (= (and d!995026 (not res!1395670)) b!3459080))

(assert (=> b!3459080 m!3858103))

(assert (=> b!3459080 m!3858103))

(assert (=> b!3459078 m!3859241))

(assert (=> b!3459078 m!3859241))

(assert (=> b!3459079 m!3859245))

(assert (=> b!3459079 m!3859245))

(assert (=> b!3459079 m!3859245))

(assert (=> b!3459079 m!3859245))

(declare-fun m!3860421 () Bool)

(assert (=> b!3459079 m!3860421))

(assert (=> d!994438 d!995026))

(declare-fun d!995028 () Bool)

(assert (=> d!995028 (isPrefix!2843 lt!1174846 lt!1174846)))

(declare-fun lt!1175465 () Unit!52487)

(declare-fun choose!20007 (List!37281 List!37281) Unit!52487)

(assert (=> d!995028 (= lt!1175465 (choose!20007 lt!1174846 lt!1174846))))

(assert (=> d!995028 (= (lemmaIsPrefixRefl!1802 lt!1174846 lt!1174846) lt!1175465)))

(declare-fun bs!560249 () Bool)

(assert (= bs!560249 d!995028))

(assert (=> bs!560249 m!3858565))

(declare-fun m!3860423 () Bool)

(assert (=> bs!560249 m!3860423))

(assert (=> d!994438 d!995028))

(declare-fun d!995030 () Bool)

(assert (=> d!995030 true))

(declare-fun lt!1175468 () Bool)

(declare-fun lambda!121807 () Int)

(declare-fun forall!7921 (List!37282 Int) Bool)

(assert (=> d!995030 (= lt!1175468 (forall!7921 rules!2135 lambda!121807))))

(declare-fun e!2143090 () Bool)

(assert (=> d!995030 (= lt!1175468 e!2143090)))

(declare-fun res!1395678 () Bool)

(assert (=> d!995030 (=> res!1395678 e!2143090)))

(assert (=> d!995030 (= res!1395678 (not (is-Cons!37158 rules!2135)))))

(assert (=> d!995030 (= (rulesValidInductive!1852 thiss!18206 rules!2135) lt!1175468)))

(declare-fun b!3459085 () Bool)

(declare-fun e!2143089 () Bool)

(assert (=> b!3459085 (= e!2143090 e!2143089)))

(declare-fun res!1395677 () Bool)

(assert (=> b!3459085 (=> (not res!1395677) (not e!2143089))))

(assert (=> b!3459085 (= res!1395677 (ruleValid!1737 thiss!18206 (h!42578 rules!2135)))))

(declare-fun b!3459086 () Bool)

(assert (=> b!3459086 (= e!2143089 (rulesValidInductive!1852 thiss!18206 (t!272529 rules!2135)))))

(assert (= (and d!995030 (not res!1395678)) b!3459085))

(assert (= (and b!3459085 res!1395677) b!3459086))

(declare-fun m!3860425 () Bool)

(assert (=> d!995030 m!3860425))

(declare-fun m!3860427 () Bool)

(assert (=> b!3459085 m!3860427))

(declare-fun m!3860429 () Bool)

(assert (=> b!3459086 m!3860429))

(assert (=> d!994438 d!995030))

(declare-fun d!995032 () Bool)

(assert (=> d!995032 true))

(declare-fun lambda!121810 () Int)

(declare-fun order!19793 () Int)

(declare-fun dynLambda!15658 (Int Int) Int)

(assert (=> d!995032 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (dynLambda!15658 order!19793 lambda!121810))))

(assert (=> d!995032 true))

(assert (=> d!995032 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (dynLambda!15658 order!19793 lambda!121810))))

(declare-fun Forall!1336 (Int) Bool)

(assert (=> d!995032 (= (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (Forall!1336 lambda!121810))))

(declare-fun bs!560250 () Bool)

(assert (= bs!560250 d!995032))

(declare-fun m!3860431 () Bool)

(assert (=> bs!560250 m!3860431))

(assert (=> d!994496 d!995032))

(assert (=> b!3457938 d!994576))

(declare-fun d!995034 () Bool)

(declare-fun lt!1175469 () Token!10240)

(assert (=> d!995034 (= lt!1175469 (apply!8748 (list!13526 (_1!21570 lt!1175008)) 0))))

(assert (=> d!995034 (= lt!1175469 (apply!8749 (c!591767 (_1!21570 lt!1175008)) 0))))

(declare-fun e!2143091 () Bool)

(assert (=> d!995034 e!2143091))

(declare-fun res!1395679 () Bool)

(assert (=> d!995034 (=> (not res!1395679) (not e!2143091))))

(assert (=> d!995034 (= res!1395679 (<= 0 0))))

(assert (=> d!995034 (= (apply!8744 (_1!21570 lt!1175008) 0) lt!1175469)))

(declare-fun b!3459093 () Bool)

(assert (=> b!3459093 (= e!2143091 (< 0 (size!28183 (_1!21570 lt!1175008))))))

(assert (= (and d!995034 res!1395679) b!3459093))

(assert (=> d!995034 m!3860081))

(assert (=> d!995034 m!3860081))

(declare-fun m!3860433 () Bool)

(assert (=> d!995034 m!3860433))

(declare-fun m!3860435 () Bool)

(assert (=> d!995034 m!3860435))

(assert (=> b!3459093 m!3858497))

(assert (=> b!3457880 d!995034))

(assert (=> b!3457997 d!994574))

(declare-fun d!995036 () Bool)

(declare-fun e!2143094 () Bool)

(assert (=> d!995036 e!2143094))

(declare-fun res!1395682 () Bool)

(assert (=> d!995036 (=> (not res!1395682) (not e!2143094))))

(declare-fun lt!1175472 () BalanceConc!22114)

(assert (=> d!995036 (= res!1395682 (= (list!13526 lt!1175472) tokens!494))))

(declare-fun fromList!743 (List!37283) Conc!11250)

(assert (=> d!995036 (= lt!1175472 (BalanceConc!22115 (fromList!743 tokens!494)))))

(assert (=> d!995036 (= (fromListB!1780 tokens!494) lt!1175472)))

(declare-fun b!3459096 () Bool)

(assert (=> b!3459096 (= e!2143094 (isBalanced!3412 (fromList!743 tokens!494)))))

(assert (= (and d!995036 res!1395682) b!3459096))

(declare-fun m!3860437 () Bool)

(assert (=> d!995036 m!3860437))

(declare-fun m!3860439 () Bool)

(assert (=> d!995036 m!3860439))

(assert (=> b!3459096 m!3860439))

(assert (=> b!3459096 m!3860439))

(declare-fun m!3860441 () Bool)

(assert (=> b!3459096 m!3860441))

(assert (=> d!994470 d!995036))

(declare-fun b!3459099 () Bool)

(declare-fun res!1395684 () Bool)

(declare-fun e!2143095 () Bool)

(assert (=> b!3459099 (=> (not res!1395684) (not e!2143095))))

(declare-fun lt!1175473 () List!37281)

(assert (=> b!3459099 (= res!1395684 (= (size!28184 lt!1175473) (+ (size!28184 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (size!28184 (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))))))

(declare-fun d!995038 () Bool)

(assert (=> d!995038 e!2143095))

(declare-fun res!1395683 () Bool)

(assert (=> d!995038 (=> (not res!1395683) (not e!2143095))))

(assert (=> d!995038 (= res!1395683 (= (content!5182 lt!1175473) (set.union (content!5182 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (content!5182 (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))))))

(declare-fun e!2143096 () List!37281)

(assert (=> d!995038 (= lt!1175473 e!2143096)))

(declare-fun c!592054 () Bool)

(assert (=> d!995038 (= c!592054 (is-Nil!37157 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))))))

(assert (=> d!995038 (= (++!9156 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))) (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159)))) lt!1175473)))

(declare-fun b!3459098 () Bool)

(assert (=> b!3459098 (= e!2143096 (Cons!37157 (h!42577 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (++!9156 (t!272528 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159))))))))

(declare-fun b!3459100 () Bool)

(assert (=> b!3459100 (= e!2143095 (or (not (= (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159))) Nil!37157)) (= lt!1175473 (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))))))

(declare-fun b!3459097 () Bool)

(assert (=> b!3459097 (= e!2143096 (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159))))))

(assert (= (and d!995038 c!592054) b!3459097))

(assert (= (and d!995038 (not c!592054)) b!3459098))

(assert (= (and d!995038 res!1395683) b!3459099))

(assert (= (and b!3459099 res!1395684) b!3459100))

(declare-fun m!3860443 () Bool)

(assert (=> b!3459099 m!3860443))

(assert (=> b!3459099 m!3858485))

(declare-fun m!3860445 () Bool)

(assert (=> b!3459099 m!3860445))

(assert (=> b!3459099 m!3858487))

(declare-fun m!3860447 () Bool)

(assert (=> b!3459099 m!3860447))

(declare-fun m!3860449 () Bool)

(assert (=> d!995038 m!3860449))

(assert (=> d!995038 m!3858485))

(declare-fun m!3860451 () Bool)

(assert (=> d!995038 m!3860451))

(assert (=> d!995038 m!3858487))

(declare-fun m!3860453 () Bool)

(assert (=> d!995038 m!3860453))

(assert (=> b!3459098 m!3858487))

(declare-fun m!3860455 () Bool)

(assert (=> b!3459098 m!3860455))

(assert (=> b!3457872 d!995038))

(declare-fun d!995040 () Bool)

(assert (=> d!995040 (= (list!13524 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))) (list!13527 (c!591766 (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))))))

(declare-fun bs!560251 () Bool)

(assert (= bs!560251 d!995040))

(declare-fun m!3860457 () Bool)

(assert (=> bs!560251 m!3860457))

(assert (=> b!3457872 d!995040))

(declare-fun d!995042 () Bool)

(declare-fun lt!1175474 () BalanceConc!22112)

(assert (=> d!995042 (= (list!13524 lt!1175474) (originalCharacters!6151 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))))

(assert (=> d!995042 (= lt!1175474 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (value!175416 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))))

(assert (=> d!995042 (= (charsOf!3451 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))) lt!1175474)))

(declare-fun b_lambda!99569 () Bool)

(assert (=> (not b_lambda!99569) (not d!995042)))

(declare-fun tb!188409 () Bool)

(declare-fun t!272692 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) t!272692) tb!188409))

(declare-fun b!3459101 () Bool)

(declare-fun e!2143097 () Bool)

(declare-fun tp!1077903 () Bool)

(assert (=> b!3459101 (= e!2143097 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (value!175416 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) tp!1077903))))

(declare-fun result!232394 () Bool)

(assert (=> tb!188409 (= result!232394 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (value!175416 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) e!2143097))))

(assert (= tb!188409 b!3459101))

(declare-fun m!3860459 () Bool)

(assert (=> b!3459101 m!3860459))

(declare-fun m!3860461 () Bool)

(assert (=> tb!188409 m!3860461))

(assert (=> d!995042 t!272692))

(declare-fun b_and!243233 () Bool)

(assert (= b_and!243229 (and (=> t!272692 result!232394) b_and!243233)))

(declare-fun t!272694 () Bool)

(declare-fun tb!188411 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) t!272694) tb!188411))

(declare-fun result!232396 () Bool)

(assert (= result!232396 result!232394))

(assert (=> d!995042 t!272694))

(declare-fun b_and!243235 () Bool)

(assert (= b_and!243231 (and (=> t!272694 result!232396) b_and!243235)))

(declare-fun t!272696 () Bool)

(declare-fun tb!188413 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) t!272696) tb!188413))

(declare-fun result!232398 () Bool)

(assert (= result!232398 result!232394))

(assert (=> d!995042 t!272696))

(declare-fun b_and!243237 () Bool)

(assert (= b_and!243223 (and (=> t!272696 result!232398) b_and!243237)))

(declare-fun t!272698 () Bool)

(declare-fun tb!188415 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) t!272698) tb!188415))

(declare-fun result!232400 () Bool)

(assert (= result!232400 result!232394))

(assert (=> d!995042 t!272698))

(declare-fun b_and!243239 () Bool)

(assert (= b_and!243227 (and (=> t!272698 result!232400) b_and!243239)))

(declare-fun t!272700 () Bool)

(declare-fun tb!188417 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) t!272700) tb!188417))

(declare-fun result!232402 () Bool)

(assert (= result!232402 result!232394))

(assert (=> d!995042 t!272700))

(declare-fun b_and!243241 () Bool)

(assert (= b_and!243225 (and (=> t!272700 result!232402) b_and!243241)))

(declare-fun m!3860463 () Bool)

(assert (=> d!995042 m!3860463))

(declare-fun m!3860465 () Bool)

(assert (=> d!995042 m!3860465))

(assert (=> b!3457872 d!995042))

(declare-fun d!995044 () Bool)

(declare-fun c!592055 () Bool)

(assert (=> d!995044 (= c!592055 (is-Cons!37159 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159))))))

(declare-fun e!2143098 () List!37281)

(assert (=> d!995044 (= (printList!1574 thiss!18206 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159))) e!2143098)))

(declare-fun b!3459102 () Bool)

(assert (=> b!3459102 (= e!2143098 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159))))) (printList!1574 thiss!18206 (t!272530 (t!272530 (Cons!37159 (h!42579 tokens!494) Nil!37159))))))))

(declare-fun b!3459103 () Bool)

(assert (=> b!3459103 (= e!2143098 Nil!37157)))

(assert (= (and d!995044 c!592055) b!3459102))

(assert (= (and d!995044 (not c!592055)) b!3459103))

(declare-fun m!3860467 () Bool)

(assert (=> b!3459102 m!3860467))

(assert (=> b!3459102 m!3860467))

(declare-fun m!3860469 () Bool)

(assert (=> b!3459102 m!3860469))

(declare-fun m!3860471 () Bool)

(assert (=> b!3459102 m!3860471))

(assert (=> b!3459102 m!3860469))

(assert (=> b!3459102 m!3860471))

(declare-fun m!3860473 () Bool)

(assert (=> b!3459102 m!3860473))

(assert (=> b!3457872 d!995044))

(declare-fun d!995046 () Bool)

(assert (=> d!995046 (= (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))) (isBalanced!3414 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))))))

(declare-fun bs!560252 () Bool)

(assert (= bs!560252 d!995046))

(declare-fun m!3860475 () Bool)

(assert (=> bs!560252 m!3860475))

(assert (=> tb!188285 d!995046))

(declare-fun d!995048 () Bool)

(declare-fun lt!1175475 () Int)

(assert (=> d!995048 (= lt!1175475 (size!28190 (list!13526 (_1!21570 lt!1175209))))))

(assert (=> d!995048 (= lt!1175475 (size!28191 (c!591767 (_1!21570 lt!1175209))))))

(assert (=> d!995048 (= (size!28183 (_1!21570 lt!1175209)) lt!1175475)))

(declare-fun bs!560253 () Bool)

(assert (= bs!560253 d!995048))

(assert (=> bs!560253 m!3859279))

(assert (=> bs!560253 m!3859279))

(declare-fun m!3860477 () Bool)

(assert (=> bs!560253 m!3860477))

(declare-fun m!3860479 () Bool)

(assert (=> bs!560253 m!3860479))

(assert (=> d!994616 d!995048))

(declare-fun b!3459118 () Bool)

(declare-fun lt!1175571 () tuple2!36872)

(declare-datatypes ((tuple2!36888 0))(
  ( (tuple2!36889 (_1!21578 Token!10240) (_2!21578 BalanceConc!22112)) )
))
(declare-datatypes ((Option!7525 0))(
  ( (None!7524) (Some!7524 (v!36850 tuple2!36888)) )
))
(declare-fun lt!1175570 () Option!7525)

(declare-fun lexRec!748 (LexerInterface!5026 List!37282 BalanceConc!22112) tuple2!36872)

(assert (=> b!3459118 (= lt!1175571 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175570))))))

(declare-fun e!2143110 () tuple2!36872)

(declare-fun prepend!1260 (BalanceConc!22114 Token!10240) BalanceConc!22114)

(assert (=> b!3459118 (= e!2143110 (tuple2!36873 (prepend!1260 (_1!21570 lt!1175571) (_1!21578 (v!36850 lt!1175570))) (_2!21570 lt!1175571)))))

(declare-fun b!3459119 () Bool)

(declare-fun e!2143107 () tuple2!36872)

(assert (=> b!3459119 (= e!2143107 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1174823))))

(declare-fun b!3459120 () Bool)

(declare-fun e!2143109 () tuple2!36872)

(assert (=> b!3459120 (= e!2143109 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1174823))))

(declare-fun lt!1175564 () tuple2!36872)

(declare-fun e!2143108 () Bool)

(declare-fun b!3459121 () Bool)

(assert (=> b!3459121 (= e!2143108 (= (list!13524 (_2!21570 lt!1175564)) (list!13524 (_2!21570 (lexRec!748 thiss!18206 rules!2135 lt!1174823)))))))

(declare-fun lt!1175575 () Option!7525)

(declare-fun b!3459122 () Bool)

(declare-fun lt!1175557 () BalanceConc!22112)

(declare-fun append!964 (BalanceConc!22114 Token!10240) BalanceConc!22114)

(assert (=> b!3459122 (= e!2143107 (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174823 lt!1175557 (_2!21578 (v!36850 lt!1175575)) (append!964 (BalanceConc!22115 Empty!11250) (_1!21578 (v!36850 lt!1175575)))))))

(declare-fun lt!1175554 () tuple2!36872)

(assert (=> b!3459122 (= lt!1175554 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175575))))))

(declare-fun lt!1175549 () List!37281)

(assert (=> b!3459122 (= lt!1175549 (list!13524 (BalanceConc!22113 Empty!11249)))))

(declare-fun lt!1175572 () List!37281)

(assert (=> b!3459122 (= lt!1175572 (list!13524 (charsOf!3451 (_1!21578 (v!36850 lt!1175575)))))))

(declare-fun lt!1175552 () List!37281)

(assert (=> b!3459122 (= lt!1175552 (list!13524 (_2!21578 (v!36850 lt!1175575))))))

(declare-fun lt!1175562 () Unit!52487)

(assert (=> b!3459122 (= lt!1175562 (lemmaConcatAssociativity!1955 lt!1175549 lt!1175572 lt!1175552))))

(assert (=> b!3459122 (= (++!9156 (++!9156 lt!1175549 lt!1175572) lt!1175552) (++!9156 lt!1175549 (++!9156 lt!1175572 lt!1175552)))))

(declare-fun lt!1175576 () Unit!52487)

(assert (=> b!3459122 (= lt!1175576 lt!1175562)))

(declare-fun lt!1175544 () Option!7525)

(declare-fun maxPrefixZipperSequence!1141 (LexerInterface!5026 List!37282 BalanceConc!22112) Option!7525)

(assert (=> b!3459122 (= lt!1175544 (maxPrefixZipperSequence!1141 thiss!18206 rules!2135 lt!1174823))))

(declare-fun c!592064 () Bool)

(assert (=> b!3459122 (= c!592064 (is-Some!7524 lt!1175544))))

(assert (=> b!3459122 (= (lexRec!748 thiss!18206 rules!2135 lt!1174823) e!2143109)))

(declare-fun lt!1175546 () Unit!52487)

(declare-fun Unit!52496 () Unit!52487)

(assert (=> b!3459122 (= lt!1175546 Unit!52496)))

(declare-fun lt!1175545 () List!37283)

(assert (=> b!3459122 (= lt!1175545 (list!13526 (BalanceConc!22115 Empty!11250)))))

(declare-fun lt!1175553 () List!37283)

(assert (=> b!3459122 (= lt!1175553 (Cons!37159 (_1!21578 (v!36850 lt!1175575)) Nil!37159))))

(declare-fun lt!1175561 () List!37283)

(assert (=> b!3459122 (= lt!1175561 (list!13526 (_1!21570 lt!1175554)))))

(declare-fun lt!1175574 () Unit!52487)

(declare-fun lemmaConcatAssociativity!1957 (List!37283 List!37283 List!37283) Unit!52487)

(assert (=> b!3459122 (= lt!1175574 (lemmaConcatAssociativity!1957 lt!1175545 lt!1175553 lt!1175561))))

(declare-fun ++!9161 (List!37283 List!37283) List!37283)

(assert (=> b!3459122 (= (++!9161 (++!9161 lt!1175545 lt!1175553) lt!1175561) (++!9161 lt!1175545 (++!9161 lt!1175553 lt!1175561)))))

(declare-fun lt!1175558 () Unit!52487)

(assert (=> b!3459122 (= lt!1175558 lt!1175574)))

(declare-fun lt!1175548 () List!37281)

(assert (=> b!3459122 (= lt!1175548 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (_1!21578 (v!36850 lt!1175575))))))))

(declare-fun lt!1175555 () List!37281)

(assert (=> b!3459122 (= lt!1175555 (list!13524 (_2!21578 (v!36850 lt!1175575))))))

(declare-fun lt!1175563 () List!37283)

(assert (=> b!3459122 (= lt!1175563 (list!13526 (append!964 (BalanceConc!22115 Empty!11250) (_1!21578 (v!36850 lt!1175575)))))))

(declare-fun lt!1175566 () Unit!52487)

(declare-fun lemmaLexThenLexPrefix!513 (LexerInterface!5026 List!37282 List!37281 List!37281 List!37283 List!37283 List!37281) Unit!52487)

(assert (=> b!3459122 (= lt!1175566 (lemmaLexThenLexPrefix!513 thiss!18206 rules!2135 lt!1175548 lt!1175555 lt!1175563 (list!13526 (_1!21570 lt!1175554)) (list!13524 (_2!21570 lt!1175554))))))

(assert (=> b!3459122 (= (lexList!1448 thiss!18206 rules!2135 lt!1175548) (tuple2!36887 lt!1175563 Nil!37157))))

(declare-fun lt!1175573 () Unit!52487)

(assert (=> b!3459122 (= lt!1175573 lt!1175566)))

(declare-fun lt!1175547 () BalanceConc!22112)

(assert (=> b!3459122 (= lt!1175547 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175575)))))))

(assert (=> b!3459122 (= lt!1175570 (maxPrefixZipperSequence!1141 thiss!18206 rules!2135 lt!1175547))))

(declare-fun c!592062 () Bool)

(assert (=> b!3459122 (= c!592062 (is-Some!7524 lt!1175570))))

(assert (=> b!3459122 (= (lexRec!748 thiss!18206 rules!2135 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175575))))) e!2143110)))

(declare-fun lt!1175560 () Unit!52487)

(declare-fun Unit!52497 () Unit!52487)

(assert (=> b!3459122 (= lt!1175560 Unit!52497)))

(assert (=> b!3459122 (= lt!1175557 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175575)))))))

(declare-fun lt!1175551 () List!37281)

(assert (=> b!3459122 (= lt!1175551 (list!13524 lt!1175557))))

(declare-fun lt!1175569 () List!37281)

(assert (=> b!3459122 (= lt!1175569 (list!13524 (_2!21578 (v!36850 lt!1175575))))))

(declare-fun lt!1175565 () Unit!52487)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!595 (List!37281 List!37281) Unit!52487)

(assert (=> b!3459122 (= lt!1175565 (lemmaConcatTwoListThenFSndIsSuffix!595 lt!1175551 lt!1175569))))

(declare-fun isSuffix!910 (List!37281 List!37281) Bool)

(assert (=> b!3459122 (isSuffix!910 lt!1175569 (++!9156 lt!1175551 lt!1175569))))

(declare-fun lt!1175556 () Unit!52487)

(assert (=> b!3459122 (= lt!1175556 lt!1175565)))

(declare-fun d!995050 () Bool)

(assert (=> d!995050 e!2143108))

(declare-fun res!1395687 () Bool)

(assert (=> d!995050 (=> (not res!1395687) (not e!2143108))))

(assert (=> d!995050 (= res!1395687 (= (list!13526 (_1!21570 lt!1175564)) (list!13526 (_1!21570 (lexRec!748 thiss!18206 rules!2135 lt!1174823)))))))

(assert (=> d!995050 (= lt!1175564 e!2143107)))

(declare-fun c!592063 () Bool)

(assert (=> d!995050 (= c!592063 (is-Some!7524 lt!1175575))))

(declare-fun maxPrefixZipperSequenceV2!535 (LexerInterface!5026 List!37282 BalanceConc!22112 BalanceConc!22112) Option!7525)

(assert (=> d!995050 (= lt!1175575 (maxPrefixZipperSequenceV2!535 thiss!18206 rules!2135 lt!1174823 lt!1174823))))

(declare-fun lt!1175568 () Unit!52487)

(declare-fun lt!1175577 () Unit!52487)

(assert (=> d!995050 (= lt!1175568 lt!1175577)))

(declare-fun lt!1175550 () List!37281)

(declare-fun lt!1175559 () List!37281)

(assert (=> d!995050 (isSuffix!910 lt!1175550 (++!9156 lt!1175559 lt!1175550))))

(assert (=> d!995050 (= lt!1175577 (lemmaConcatTwoListThenFSndIsSuffix!595 lt!1175559 lt!1175550))))

(assert (=> d!995050 (= lt!1175550 (list!13524 lt!1174823))))

(assert (=> d!995050 (= lt!1175559 (list!13524 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!995050 (= (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174823 (BalanceConc!22113 Empty!11249) lt!1174823 (BalanceConc!22115 Empty!11250)) lt!1175564)))

(declare-fun b!3459123 () Bool)

(declare-fun lt!1175567 () tuple2!36872)

(assert (=> b!3459123 (= lt!1175567 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175544))))))

(assert (=> b!3459123 (= e!2143109 (tuple2!36873 (prepend!1260 (_1!21570 lt!1175567) (_1!21578 (v!36850 lt!1175544))) (_2!21570 lt!1175567)))))

(declare-fun b!3459124 () Bool)

(assert (=> b!3459124 (= e!2143110 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1175547))))

(assert (= (and d!995050 c!592063) b!3459122))

(assert (= (and d!995050 (not c!592063)) b!3459119))

(assert (= (and b!3459122 c!592064) b!3459123))

(assert (= (and b!3459122 (not c!592064)) b!3459120))

(assert (= (and b!3459122 c!592062) b!3459118))

(assert (= (and b!3459122 (not c!592062)) b!3459124))

(assert (= (and d!995050 res!1395687) b!3459121))

(declare-fun m!3860483 () Bool)

(assert (=> b!3459118 m!3860483))

(declare-fun m!3860485 () Bool)

(assert (=> b!3459118 m!3860485))

(declare-fun m!3860487 () Bool)

(assert (=> b!3459121 m!3860487))

(declare-fun m!3860489 () Bool)

(assert (=> b!3459121 m!3860489))

(declare-fun m!3860491 () Bool)

(assert (=> b!3459121 m!3860491))

(declare-fun m!3860493 () Bool)

(assert (=> b!3459122 m!3860493))

(declare-fun m!3860495 () Bool)

(assert (=> b!3459122 m!3860495))

(declare-fun m!3860497 () Bool)

(assert (=> b!3459122 m!3860497))

(declare-fun m!3860499 () Bool)

(assert (=> b!3459122 m!3860499))

(declare-fun m!3860501 () Bool)

(assert (=> b!3459122 m!3860501))

(declare-fun m!3860503 () Bool)

(assert (=> b!3459122 m!3860503))

(declare-fun m!3860505 () Bool)

(assert (=> b!3459122 m!3860505))

(assert (=> b!3459122 m!3858443))

(declare-fun m!3860507 () Bool)

(assert (=> b!3459122 m!3860507))

(declare-fun m!3860509 () Bool)

(assert (=> b!3459122 m!3860509))

(declare-fun m!3860511 () Bool)

(assert (=> b!3459122 m!3860511))

(declare-fun m!3860513 () Bool)

(assert (=> b!3459122 m!3860513))

(declare-fun m!3860515 () Bool)

(assert (=> b!3459122 m!3860515))

(declare-fun m!3860517 () Bool)

(assert (=> b!3459122 m!3860517))

(assert (=> b!3459122 m!3860497))

(declare-fun m!3860519 () Bool)

(assert (=> b!3459122 m!3860519))

(assert (=> b!3459122 m!3860497))

(assert (=> b!3459122 m!3860511))

(declare-fun m!3860521 () Bool)

(assert (=> b!3459122 m!3860521))

(declare-fun m!3860523 () Bool)

(assert (=> b!3459122 m!3860523))

(declare-fun m!3860525 () Bool)

(assert (=> b!3459122 m!3860525))

(declare-fun m!3860527 () Bool)

(assert (=> b!3459122 m!3860527))

(declare-fun m!3860529 () Bool)

(assert (=> b!3459122 m!3860529))

(assert (=> b!3459122 m!3860523))

(declare-fun m!3860531 () Bool)

(assert (=> b!3459122 m!3860531))

(assert (=> b!3459122 m!3860505))

(assert (=> b!3459122 m!3860527))

(declare-fun m!3860533 () Bool)

(assert (=> b!3459122 m!3860533))

(assert (=> b!3459122 m!3860525))

(declare-fun m!3860535 () Bool)

(assert (=> b!3459122 m!3860535))

(declare-fun m!3860537 () Bool)

(assert (=> b!3459122 m!3860537))

(declare-fun m!3860539 () Bool)

(assert (=> b!3459122 m!3860539))

(assert (=> b!3459122 m!3860513))

(assert (=> b!3459122 m!3860537))

(assert (=> b!3459122 m!3860489))

(declare-fun m!3860541 () Bool)

(assert (=> b!3459122 m!3860541))

(assert (=> b!3459122 m!3860511))

(declare-fun m!3860543 () Bool)

(assert (=> b!3459122 m!3860543))

(assert (=> b!3459122 m!3858443))

(assert (=> b!3459122 m!3860521))

(declare-fun m!3860545 () Bool)

(assert (=> b!3459122 m!3860545))

(assert (=> b!3459122 m!3860543))

(declare-fun m!3860547 () Bool)

(assert (=> b!3459122 m!3860547))

(declare-fun m!3860549 () Bool)

(assert (=> b!3459122 m!3860549))

(declare-fun m!3860551 () Bool)

(assert (=> b!3459122 m!3860551))

(assert (=> b!3459122 m!3860493))

(declare-fun m!3860553 () Bool)

(assert (=> b!3459122 m!3860553))

(declare-fun m!3860555 () Bool)

(assert (=> b!3459123 m!3860555))

(declare-fun m!3860557 () Bool)

(assert (=> b!3459123 m!3860557))

(assert (=> d!995050 m!3858443))

(declare-fun m!3860559 () Bool)

(assert (=> d!995050 m!3860559))

(assert (=> d!995050 m!3859275))

(declare-fun m!3860561 () Bool)

(assert (=> d!995050 m!3860561))

(assert (=> d!995050 m!3860489))

(declare-fun m!3860563 () Bool)

(assert (=> d!995050 m!3860563))

(declare-fun m!3860565 () Bool)

(assert (=> d!995050 m!3860565))

(declare-fun m!3860567 () Bool)

(assert (=> d!995050 m!3860567))

(assert (=> d!995050 m!3860565))

(declare-fun m!3860569 () Bool)

(assert (=> d!995050 m!3860569))

(assert (=> d!994616 d!995050))

(declare-fun b!3459135 () Bool)

(declare-fun e!2143119 () Bool)

(declare-fun e!2143122 () Bool)

(assert (=> b!3459135 (= e!2143119 e!2143122)))

(declare-fun res!1395692 () Bool)

(assert (=> b!3459135 (=> (not res!1395692) (not e!2143122))))

(declare-fun lt!1175584 () Bool)

(assert (=> b!3459135 (= res!1395692 (not lt!1175584))))

(declare-fun b!3459136 () Bool)

(declare-fun e!2143118 () Bool)

(declare-fun call!249422 () Bool)

(assert (=> b!3459136 (= e!2143118 (= lt!1175584 call!249422))))

(declare-fun b!3459137 () Bool)

(declare-fun res!1395697 () Bool)

(assert (=> b!3459137 (=> res!1395697 e!2143119)))

(declare-fun e!2143120 () Bool)

(assert (=> b!3459137 (= res!1395697 e!2143120)))

(declare-fun res!1395693 () Bool)

(assert (=> b!3459137 (=> (not res!1395693) (not e!2143120))))

(assert (=> b!3459137 (= res!1395693 lt!1175584)))

(declare-fun b!3459138 () Bool)

(declare-fun e!2143125 () Bool)

(assert (=> b!3459138 (= e!2143122 e!2143125)))

(declare-fun res!1395690 () Bool)

(assert (=> b!3459138 (=> res!1395690 e!2143125)))

(assert (=> b!3459138 (= res!1395690 call!249422)))

(declare-fun b!3459139 () Bool)

(declare-fun e!2143121 () Bool)

(assert (=> b!3459139 (= e!2143121 (nullable!3487 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846))))))

(declare-fun d!995056 () Bool)

(assert (=> d!995056 e!2143118))

(declare-fun c!592071 () Bool)

(assert (=> d!995056 (= c!592071 (is-EmptyExpr!10196 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846))))))

(assert (=> d!995056 (= lt!1175584 e!2143121)))

(declare-fun c!592070 () Bool)

(assert (=> d!995056 (= c!592070 (isEmpty!21510 (tail!5431 lt!1174846)))))

(assert (=> d!995056 (validRegex!4643 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846)))))

(assert (=> d!995056 (= (matchR!4780 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846)) (tail!5431 lt!1174846)) lt!1175584)))

(declare-fun b!3459140 () Bool)

(declare-fun res!1395696 () Bool)

(assert (=> b!3459140 (=> (not res!1395696) (not e!2143120))))

(assert (=> b!3459140 (= res!1395696 (isEmpty!21510 (tail!5431 (tail!5431 lt!1174846))))))

(declare-fun b!3459141 () Bool)

(assert (=> b!3459141 (= e!2143125 (not (= (head!7316 (tail!5431 lt!1174846)) (c!591765 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846))))))))

(declare-fun b!3459143 () Bool)

(assert (=> b!3459143 (= e!2143121 (matchR!4780 (derivativeStep!3040 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846)) (head!7316 (tail!5431 lt!1174846))) (tail!5431 (tail!5431 lt!1174846))))))

(declare-fun b!3459145 () Bool)

(declare-fun e!2143117 () Bool)

(assert (=> b!3459145 (= e!2143117 (not lt!1175584))))

(declare-fun b!3459147 () Bool)

(declare-fun res!1395695 () Bool)

(assert (=> b!3459147 (=> (not res!1395695) (not e!2143120))))

(assert (=> b!3459147 (= res!1395695 (not call!249422))))

(declare-fun b!3459149 () Bool)

(declare-fun res!1395694 () Bool)

(assert (=> b!3459149 (=> res!1395694 e!2143125)))

(assert (=> b!3459149 (= res!1395694 (not (isEmpty!21510 (tail!5431 (tail!5431 lt!1174846)))))))

(declare-fun b!3459151 () Bool)

(declare-fun res!1395691 () Bool)

(assert (=> b!3459151 (=> res!1395691 e!2143119)))

(assert (=> b!3459151 (= res!1395691 (not (is-ElementMatch!10196 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846)))))))

(assert (=> b!3459151 (= e!2143117 e!2143119)))

(declare-fun bm!249417 () Bool)

(assert (=> bm!249417 (= call!249422 (isEmpty!21510 (tail!5431 lt!1174846)))))

(declare-fun b!3459152 () Bool)

(assert (=> b!3459152 (= e!2143118 e!2143117)))

(declare-fun c!592069 () Bool)

(assert (=> b!3459152 (= c!592069 (is-EmptyLang!10196 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846))))))

(declare-fun b!3459153 () Bool)

(assert (=> b!3459153 (= e!2143120 (= (head!7316 (tail!5431 lt!1174846)) (c!591765 (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846)))))))

(assert (= (and d!995056 c!592070) b!3459139))

(assert (= (and d!995056 (not c!592070)) b!3459143))

(assert (= (and d!995056 c!592071) b!3459136))

(assert (= (and d!995056 (not c!592071)) b!3459152))

(assert (= (and b!3459152 c!592069) b!3459145))

(assert (= (and b!3459152 (not c!592069)) b!3459151))

(assert (= (and b!3459151 (not res!1395691)) b!3459137))

(assert (= (and b!3459137 res!1395693) b!3459147))

(assert (= (and b!3459147 res!1395695) b!3459140))

(assert (= (and b!3459140 res!1395696) b!3459153))

(assert (= (and b!3459137 (not res!1395697)) b!3459135))

(assert (= (and b!3459135 res!1395692) b!3459138))

(assert (= (and b!3459138 (not res!1395690)) b!3459149))

(assert (= (and b!3459149 (not res!1395694)) b!3459141))

(assert (= (or b!3459136 b!3459138 b!3459147) bm!249417))

(assert (=> b!3459143 m!3859245))

(declare-fun m!3860583 () Bool)

(assert (=> b!3459143 m!3860583))

(assert (=> b!3459143 m!3859243))

(assert (=> b!3459143 m!3860583))

(declare-fun m!3860587 () Bool)

(assert (=> b!3459143 m!3860587))

(assert (=> b!3459143 m!3859245))

(declare-fun m!3860589 () Bool)

(assert (=> b!3459143 m!3860589))

(assert (=> b!3459143 m!3860587))

(assert (=> b!3459143 m!3860589))

(declare-fun m!3860591 () Bool)

(assert (=> b!3459143 m!3860591))

(assert (=> b!3459139 m!3859243))

(declare-fun m!3860593 () Bool)

(assert (=> b!3459139 m!3860593))

(assert (=> d!995056 m!3859245))

(assert (=> d!995056 m!3859255))

(assert (=> d!995056 m!3859243))

(declare-fun m!3860597 () Bool)

(assert (=> d!995056 m!3860597))

(assert (=> bm!249417 m!3859245))

(assert (=> bm!249417 m!3859255))

(assert (=> b!3459149 m!3859245))

(assert (=> b!3459149 m!3860589))

(assert (=> b!3459149 m!3860589))

(declare-fun m!3860601 () Bool)

(assert (=> b!3459149 m!3860601))

(assert (=> b!3459141 m!3859245))

(assert (=> b!3459141 m!3860583))

(assert (=> b!3459140 m!3859245))

(assert (=> b!3459140 m!3860589))

(assert (=> b!3459140 m!3860589))

(assert (=> b!3459140 m!3860601))

(assert (=> b!3459153 m!3859245))

(assert (=> b!3459153 m!3860583))

(assert (=> b!3458358 d!995056))

(declare-fun b!3459193 () Bool)

(declare-fun e!2143153 () Regex!10196)

(declare-fun call!249432 () Regex!10196)

(assert (=> b!3459193 (= e!2143153 (Concat!15863 call!249432 (regex!5437 lt!1174855)))))

(declare-fun b!3459194 () Bool)

(declare-fun c!592092 () Bool)

(assert (=> b!3459194 (= c!592092 (nullable!3487 (regOne!20904 (regex!5437 lt!1174855))))))

(declare-fun e!2143154 () Regex!10196)

(assert (=> b!3459194 (= e!2143153 e!2143154)))

(declare-fun call!249431 () Regex!10196)

(declare-fun b!3459195 () Bool)

(declare-fun call!249433 () Regex!10196)

(assert (=> b!3459195 (= e!2143154 (Union!10196 (Concat!15863 call!249431 (regTwo!20904 (regex!5437 lt!1174855))) call!249433))))

(declare-fun b!3459196 () Bool)

(declare-fun e!2143152 () Regex!10196)

(declare-fun e!2143150 () Regex!10196)

(assert (=> b!3459196 (= e!2143152 e!2143150)))

(declare-fun c!592088 () Bool)

(assert (=> b!3459196 (= c!592088 (is-ElementMatch!10196 (regex!5437 lt!1174855)))))

(declare-fun d!995064 () Bool)

(declare-fun lt!1175600 () Regex!10196)

(assert (=> d!995064 (validRegex!4643 lt!1175600)))

(assert (=> d!995064 (= lt!1175600 e!2143152)))

(declare-fun c!592089 () Bool)

(assert (=> d!995064 (= c!592089 (or (is-EmptyExpr!10196 (regex!5437 lt!1174855)) (is-EmptyLang!10196 (regex!5437 lt!1174855))))))

(assert (=> d!995064 (validRegex!4643 (regex!5437 lt!1174855))))

(assert (=> d!995064 (= (derivativeStep!3040 (regex!5437 lt!1174855) (head!7316 lt!1174846)) lt!1175600)))

(declare-fun b!3459197 () Bool)

(assert (=> b!3459197 (= e!2143154 (Union!10196 (Concat!15863 call!249431 (regTwo!20904 (regex!5437 lt!1174855))) EmptyLang!10196))))

(declare-fun b!3459198 () Bool)

(assert (=> b!3459198 (= e!2143152 EmptyLang!10196)))

(declare-fun bm!249426 () Bool)

(declare-fun call!249434 () Regex!10196)

(assert (=> bm!249426 (= call!249432 call!249434)))

(declare-fun b!3459199 () Bool)

(assert (=> b!3459199 (= e!2143150 (ite (= (head!7316 lt!1174846) (c!591765 (regex!5437 lt!1174855))) EmptyExpr!10196 EmptyLang!10196))))

(declare-fun bm!249427 () Bool)

(assert (=> bm!249427 (= call!249431 call!249432)))

(declare-fun bm!249428 () Bool)

(declare-fun c!592091 () Bool)

(declare-fun c!592090 () Bool)

(assert (=> bm!249428 (= call!249434 (derivativeStep!3040 (ite c!592090 (regOne!20905 (regex!5437 lt!1174855)) (ite c!592091 (reg!10525 (regex!5437 lt!1174855)) (regOne!20904 (regex!5437 lt!1174855)))) (head!7316 lt!1174846)))))

(declare-fun b!3459200 () Bool)

(declare-fun e!2143151 () Regex!10196)

(assert (=> b!3459200 (= e!2143151 e!2143153)))

(assert (=> b!3459200 (= c!592091 (is-Star!10196 (regex!5437 lt!1174855)))))

(declare-fun b!3459201 () Bool)

(assert (=> b!3459201 (= e!2143151 (Union!10196 call!249434 call!249433))))

(declare-fun bm!249429 () Bool)

(assert (=> bm!249429 (= call!249433 (derivativeStep!3040 (ite c!592090 (regTwo!20905 (regex!5437 lt!1174855)) (regTwo!20904 (regex!5437 lt!1174855))) (head!7316 lt!1174846)))))

(declare-fun b!3459202 () Bool)

(assert (=> b!3459202 (= c!592090 (is-Union!10196 (regex!5437 lt!1174855)))))

(assert (=> b!3459202 (= e!2143150 e!2143151)))

(assert (= (and d!995064 c!592089) b!3459198))

(assert (= (and d!995064 (not c!592089)) b!3459196))

(assert (= (and b!3459196 c!592088) b!3459199))

(assert (= (and b!3459196 (not c!592088)) b!3459202))

(assert (= (and b!3459202 c!592090) b!3459201))

(assert (= (and b!3459202 (not c!592090)) b!3459200))

(assert (= (and b!3459200 c!592091) b!3459193))

(assert (= (and b!3459200 (not c!592091)) b!3459194))

(assert (= (and b!3459194 c!592092) b!3459195))

(assert (= (and b!3459194 (not c!592092)) b!3459197))

(assert (= (or b!3459195 b!3459197) bm!249427))

(assert (= (or b!3459193 bm!249427) bm!249426))

(assert (= (or b!3459201 bm!249426) bm!249428))

(assert (= (or b!3459201 b!3459195) bm!249429))

(declare-fun m!3860677 () Bool)

(assert (=> b!3459194 m!3860677))

(declare-fun m!3860679 () Bool)

(assert (=> d!995064 m!3860679))

(assert (=> d!995064 m!3859253))

(assert (=> bm!249428 m!3859241))

(declare-fun m!3860681 () Bool)

(assert (=> bm!249428 m!3860681))

(assert (=> bm!249429 m!3859241))

(declare-fun m!3860683 () Bool)

(assert (=> bm!249429 m!3860683))

(assert (=> b!3458358 d!995064))

(declare-fun d!995092 () Bool)

(assert (=> d!995092 (= (head!7316 lt!1174846) (h!42577 lt!1174846))))

(assert (=> b!3458358 d!995092))

(assert (=> b!3458358 d!994826))

(assert (=> d!994442 d!995012))

(declare-fun b!3459208 () Bool)

(declare-fun e!2143161 () Bool)

(declare-fun e!2143158 () Bool)

(assert (=> b!3459208 (= e!2143161 e!2143158)))

(declare-fun c!592094 () Bool)

(assert (=> b!3459208 (= c!592094 (is-Union!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun d!995094 () Bool)

(declare-fun res!1395716 () Bool)

(declare-fun e!2143160 () Bool)

(assert (=> d!995094 (=> res!1395716 e!2143160)))

(assert (=> d!995094 (= res!1395716 (is-ElementMatch!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(assert (=> d!995094 (= (validRegex!4643 (regex!5437 (rule!8027 separatorToken!241))) e!2143160)))

(declare-fun b!3459209 () Bool)

(declare-fun e!2143162 () Bool)

(declare-fun call!249437 () Bool)

(assert (=> b!3459209 (= e!2143162 call!249437)))

(declare-fun b!3459210 () Bool)

(declare-fun res!1395713 () Bool)

(declare-fun e!2143163 () Bool)

(assert (=> b!3459210 (=> res!1395713 e!2143163)))

(assert (=> b!3459210 (= res!1395713 (not (is-Concat!15863 (regex!5437 (rule!8027 separatorToken!241)))))))

(assert (=> b!3459210 (= e!2143158 e!2143163)))

(declare-fun b!3459211 () Bool)

(declare-fun e!2143159 () Bool)

(assert (=> b!3459211 (= e!2143161 e!2143159)))

(declare-fun res!1395715 () Bool)

(assert (=> b!3459211 (= res!1395715 (not (nullable!3487 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))))))))

(assert (=> b!3459211 (=> (not res!1395715) (not e!2143159))))

(declare-fun b!3459212 () Bool)

(declare-fun e!2143164 () Bool)

(assert (=> b!3459212 (= e!2143164 call!249437)))

(declare-fun b!3459213 () Bool)

(assert (=> b!3459213 (= e!2143163 e!2143164)))

(declare-fun res!1395714 () Bool)

(assert (=> b!3459213 (=> (not res!1395714) (not e!2143164))))

(declare-fun call!249436 () Bool)

(assert (=> b!3459213 (= res!1395714 call!249436)))

(declare-fun b!3459214 () Bool)

(declare-fun res!1395712 () Bool)

(assert (=> b!3459214 (=> (not res!1395712) (not e!2143162))))

(assert (=> b!3459214 (= res!1395712 call!249436)))

(assert (=> b!3459214 (= e!2143158 e!2143162)))

(declare-fun bm!249430 () Bool)

(declare-fun call!249435 () Bool)

(assert (=> bm!249430 (= call!249436 call!249435)))

(declare-fun bm!249431 () Bool)

(assert (=> bm!249431 (= call!249437 (validRegex!4643 (ite c!592094 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))))))

(declare-fun bm!249432 () Bool)

(declare-fun c!592095 () Bool)

(assert (=> bm!249432 (= call!249435 (validRegex!4643 (ite c!592095 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!592094 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))

(declare-fun b!3459215 () Bool)

(assert (=> b!3459215 (= e!2143160 e!2143161)))

(assert (=> b!3459215 (= c!592095 (is-Star!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun b!3459216 () Bool)

(assert (=> b!3459216 (= e!2143159 call!249435)))

(assert (= (and d!995094 (not res!1395716)) b!3459215))

(assert (= (and b!3459215 c!592095) b!3459211))

(assert (= (and b!3459215 (not c!592095)) b!3459208))

(assert (= (and b!3459211 res!1395715) b!3459216))

(assert (= (and b!3459208 c!592094) b!3459214))

(assert (= (and b!3459208 (not c!592094)) b!3459210))

(assert (= (and b!3459214 res!1395712) b!3459209))

(assert (= (and b!3459210 (not res!1395713)) b!3459213))

(assert (= (and b!3459213 res!1395714) b!3459212))

(assert (= (or b!3459209 b!3459212) bm!249431))

(assert (= (or b!3459214 b!3459213) bm!249430))

(assert (= (or b!3459216 bm!249430) bm!249432))

(declare-fun m!3860709 () Bool)

(assert (=> b!3459211 m!3860709))

(declare-fun m!3860713 () Bool)

(assert (=> bm!249431 m!3860713))

(declare-fun m!3860715 () Bool)

(assert (=> bm!249432 m!3860715))

(assert (=> d!994442 d!995094))

(declare-fun d!995102 () Bool)

(declare-fun lt!1175604 () Bool)

(assert (=> d!995102 (= lt!1175604 (set.member (get!11891 lt!1175111) (content!5183 rules!2135)))))

(declare-fun e!2143166 () Bool)

(assert (=> d!995102 (= lt!1175604 e!2143166)))

(declare-fun res!1395718 () Bool)

(assert (=> d!995102 (=> (not res!1395718) (not e!2143166))))

(assert (=> d!995102 (= res!1395718 (is-Cons!37158 rules!2135))))

(assert (=> d!995102 (= (contains!6885 rules!2135 (get!11891 lt!1175111)) lt!1175604)))

(declare-fun b!3459217 () Bool)

(declare-fun e!2143165 () Bool)

(assert (=> b!3459217 (= e!2143166 e!2143165)))

(declare-fun res!1395717 () Bool)

(assert (=> b!3459217 (=> res!1395717 e!2143165)))

(assert (=> b!3459217 (= res!1395717 (= (h!42578 rules!2135) (get!11891 lt!1175111)))))

(declare-fun b!3459218 () Bool)

(assert (=> b!3459218 (= e!2143165 (contains!6885 (t!272529 rules!2135) (get!11891 lt!1175111)))))

(assert (= (and d!995102 res!1395718) b!3459217))

(assert (= (and b!3459217 (not res!1395717)) b!3459218))

(assert (=> d!995102 m!3858387))

(assert (=> d!995102 m!3858907))

(declare-fun m!3860725 () Bool)

(assert (=> d!995102 m!3860725))

(assert (=> b!3459218 m!3858907))

(declare-fun m!3860727 () Bool)

(assert (=> b!3459218 m!3860727))

(assert (=> b!3458176 d!995102))

(declare-fun d!995110 () Bool)

(assert (=> d!995110 (= (get!11891 lt!1175111) (v!36836 lt!1175111))))

(assert (=> b!3458176 d!995110))

(declare-fun d!995114 () Bool)

(declare-fun c!592096 () Bool)

(assert (=> d!995114 (= c!592096 (is-Nil!37157 lt!1174976))))

(declare-fun e!2143167 () (Set C!20578))

(assert (=> d!995114 (= (content!5182 lt!1174976) e!2143167)))

(declare-fun b!3459219 () Bool)

(assert (=> b!3459219 (= e!2143167 (as set.empty (Set C!20578)))))

(declare-fun b!3459220 () Bool)

(assert (=> b!3459220 (= e!2143167 (set.union (set.insert (h!42577 lt!1174976) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1174976))))))

(assert (= (and d!995114 c!592096) b!3459219))

(assert (= (and d!995114 (not c!592096)) b!3459220))

(declare-fun m!3860733 () Bool)

(assert (=> b!3459220 m!3860733))

(declare-fun m!3860735 () Bool)

(assert (=> b!3459220 m!3860735))

(assert (=> d!994406 d!995114))

(declare-fun d!995116 () Bool)

(declare-fun c!592097 () Bool)

(assert (=> d!995116 (= c!592097 (is-Nil!37157 lt!1174846))))

(declare-fun e!2143168 () (Set C!20578))

(assert (=> d!995116 (= (content!5182 lt!1174846) e!2143168)))

(declare-fun b!3459221 () Bool)

(assert (=> b!3459221 (= e!2143168 (as set.empty (Set C!20578)))))

(declare-fun b!3459222 () Bool)

(assert (=> b!3459222 (= e!2143168 (set.union (set.insert (h!42577 lt!1174846) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1174846))))))

(assert (= (and d!995116 c!592097) b!3459221))

(assert (= (and d!995116 (not c!592097)) b!3459222))

(declare-fun m!3860737 () Bool)

(assert (=> b!3459222 m!3860737))

(assert (=> b!3459222 m!3860391))

(assert (=> d!994406 d!995116))

(assert (=> d!994406 d!994960))

(declare-fun d!995120 () Bool)

(assert (=> d!995120 (= (nullable!3487 (regex!5437 (rule!8027 separatorToken!241))) (nullableFct!1009 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun bs!560268 () Bool)

(assert (= bs!560268 d!995120))

(declare-fun m!3860739 () Bool)

(assert (=> bs!560268 m!3860739))

(assert (=> b!3457985 d!995120))

(declare-fun b!3459227 () Bool)

(declare-fun res!1395720 () Bool)

(declare-fun e!2143170 () Bool)

(assert (=> b!3459227 (=> (not res!1395720) (not e!2143170))))

(declare-fun lt!1175607 () List!37281)

(assert (=> b!3459227 (= res!1395720 (= (size!28184 lt!1175607) (+ (size!28184 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (size!28184 (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun d!995122 () Bool)

(assert (=> d!995122 e!2143170))

(declare-fun res!1395719 () Bool)

(assert (=> d!995122 (=> (not res!1395719) (not e!2143170))))

(assert (=> d!995122 (= res!1395719 (= (content!5182 lt!1175607) (set.union (content!5182 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (content!5182 (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun e!2143171 () List!37281)

(assert (=> d!995122 (= lt!1175607 e!2143171)))

(declare-fun c!592099 () Bool)

(assert (=> d!995122 (= c!592099 (is-Nil!37157 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))

(assert (=> d!995122 (= (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241))) lt!1175607)))

(declare-fun b!3459226 () Bool)

(assert (=> b!3459226 (= e!2143171 (Cons!37157 (h!42577 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (++!9156 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241)))))))

(declare-fun b!3459228 () Bool)

(assert (=> b!3459228 (= e!2143170 (or (not (= (list!13524 (charsOf!3451 separatorToken!241)) Nil!37157)) (= lt!1175607 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))))))

(declare-fun b!3459225 () Bool)

(assert (=> b!3459225 (= e!2143171 (list!13524 (charsOf!3451 separatorToken!241)))))

(assert (= (and d!995122 c!592099) b!3459225))

(assert (= (and d!995122 (not c!592099)) b!3459226))

(assert (= (and d!995122 res!1395719) b!3459227))

(assert (= (and b!3459227 res!1395720) b!3459228))

(declare-fun m!3860749 () Bool)

(assert (=> b!3459227 m!3860749))

(assert (=> b!3459227 m!3858043))

(assert (=> b!3459227 m!3858699))

(assert (=> b!3459227 m!3858053))

(declare-fun m!3860751 () Bool)

(assert (=> b!3459227 m!3860751))

(declare-fun m!3860753 () Bool)

(assert (=> d!995122 m!3860753))

(assert (=> d!995122 m!3858043))

(assert (=> d!995122 m!3858703))

(assert (=> d!995122 m!3858053))

(declare-fun m!3860755 () Bool)

(assert (=> d!995122 m!3860755))

(assert (=> b!3459226 m!3858053))

(declare-fun m!3860757 () Bool)

(assert (=> b!3459226 m!3860757))

(assert (=> b!3458063 d!995122))

(assert (=> b!3458063 d!994484))

(assert (=> b!3458063 d!994476))

(assert (=> b!3458063 d!994478))

(declare-fun b!3459233 () Bool)

(declare-fun res!1395724 () Bool)

(declare-fun e!2143174 () Bool)

(assert (=> b!3459233 (=> (not res!1395724) (not e!2143174))))

(declare-fun lt!1175609 () List!37281)

(assert (=> b!3459233 (= res!1395724 (= (size!28184 lt!1175609) (+ (size!28184 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241)))) (size!28184 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(declare-fun d!995128 () Bool)

(assert (=> d!995128 e!2143174))

(declare-fun res!1395723 () Bool)

(assert (=> d!995128 (=> (not res!1395723) (not e!2143174))))

(assert (=> d!995128 (= res!1395723 (= (content!5182 lt!1175609) (set.union (content!5182 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241)))) (content!5182 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)))))))

(declare-fun e!2143175 () List!37281)

(assert (=> d!995128 (= lt!1175609 e!2143175)))

(declare-fun c!592100 () Bool)

(assert (=> d!995128 (= c!592100 (is-Nil!37157 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241)))))))

(assert (=> d!995128 (= (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241)) lt!1175609)))

(declare-fun b!3459232 () Bool)

(assert (=> b!3459232 (= e!2143175 (Cons!37157 (h!42577 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241)))) (++!9156 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241)))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241))))))

(declare-fun b!3459234 () Bool)

(assert (=> b!3459234 (= e!2143174 (or (not (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241) Nil!37157)) (= lt!1175609 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun b!3459231 () Bool)

(assert (=> b!3459231 (= e!2143175 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 tokens!494)) separatorToken!241))))

(assert (= (and d!995128 c!592100) b!3459231))

(assert (= (and d!995128 (not c!592100)) b!3459232))

(assert (= (and d!995128 res!1395723) b!3459233))

(assert (= (and b!3459233 res!1395724) b!3459234))

(declare-fun m!3860759 () Bool)

(assert (=> b!3459233 m!3860759))

(assert (=> b!3459233 m!3858745))

(declare-fun m!3860761 () Bool)

(assert (=> b!3459233 m!3860761))

(assert (=> b!3459233 m!3858047))

(assert (=> b!3459233 m!3858711))

(declare-fun m!3860763 () Bool)

(assert (=> d!995128 m!3860763))

(assert (=> d!995128 m!3858745))

(declare-fun m!3860765 () Bool)

(assert (=> d!995128 m!3860765))

(assert (=> d!995128 m!3858047))

(assert (=> d!995128 m!3858717))

(assert (=> b!3459232 m!3858047))

(declare-fun m!3860767 () Bool)

(assert (=> b!3459232 m!3860767))

(assert (=> b!3458063 d!995128))

(assert (=> b!3458063 d!994488))

(assert (=> b!3458063 d!994490))

(declare-fun d!995130 () Bool)

(declare-fun lt!1175612 () Int)

(assert (=> d!995130 (= lt!1175612 (size!28190 (list!13526 (_1!21570 lt!1175203))))))

(assert (=> d!995130 (= lt!1175612 (size!28191 (c!591767 (_1!21570 lt!1175203))))))

(assert (=> d!995130 (= (size!28183 (_1!21570 lt!1175203)) lt!1175612)))

(declare-fun bs!560269 () Bool)

(assert (= bs!560269 d!995130))

(assert (=> bs!560269 m!3859229))

(assert (=> bs!560269 m!3859229))

(declare-fun m!3860769 () Bool)

(assert (=> bs!560269 m!3860769))

(declare-fun m!3860771 () Bool)

(assert (=> bs!560269 m!3860771))

(assert (=> d!994600 d!995130))

(declare-fun lt!1175641 () Option!7525)

(declare-fun lt!1175642 () tuple2!36872)

(declare-fun b!3459235 () Bool)

(assert (=> b!3459235 (= lt!1175642 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175641))))))

(declare-fun e!2143179 () tuple2!36872)

(assert (=> b!3459235 (= e!2143179 (tuple2!36873 (prepend!1260 (_1!21570 lt!1175642) (_1!21578 (v!36850 lt!1175641))) (_2!21570 lt!1175642)))))

(declare-fun b!3459236 () Bool)

(declare-fun e!2143176 () tuple2!36872)

(assert (=> b!3459236 (= e!2143176 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1174856))))

(declare-fun b!3459237 () Bool)

(declare-fun e!2143178 () tuple2!36872)

(assert (=> b!3459237 (= e!2143178 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1174856))))

(declare-fun b!3459238 () Bool)

(declare-fun e!2143177 () Bool)

(declare-fun lt!1175635 () tuple2!36872)

(assert (=> b!3459238 (= e!2143177 (= (list!13524 (_2!21570 lt!1175635)) (list!13524 (_2!21570 (lexRec!748 thiss!18206 rules!2135 lt!1174856)))))))

(declare-fun lt!1175628 () BalanceConc!22112)

(declare-fun lt!1175646 () Option!7525)

(declare-fun b!3459239 () Bool)

(assert (=> b!3459239 (= e!2143176 (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174856 lt!1175628 (_2!21578 (v!36850 lt!1175646)) (append!964 (BalanceConc!22115 Empty!11250) (_1!21578 (v!36850 lt!1175646)))))))

(declare-fun lt!1175625 () tuple2!36872)

(assert (=> b!3459239 (= lt!1175625 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175646))))))

(declare-fun lt!1175620 () List!37281)

(assert (=> b!3459239 (= lt!1175620 (list!13524 (BalanceConc!22113 Empty!11249)))))

(declare-fun lt!1175643 () List!37281)

(assert (=> b!3459239 (= lt!1175643 (list!13524 (charsOf!3451 (_1!21578 (v!36850 lt!1175646)))))))

(declare-fun lt!1175623 () List!37281)

(assert (=> b!3459239 (= lt!1175623 (list!13524 (_2!21578 (v!36850 lt!1175646))))))

(declare-fun lt!1175633 () Unit!52487)

(assert (=> b!3459239 (= lt!1175633 (lemmaConcatAssociativity!1955 lt!1175620 lt!1175643 lt!1175623))))

(assert (=> b!3459239 (= (++!9156 (++!9156 lt!1175620 lt!1175643) lt!1175623) (++!9156 lt!1175620 (++!9156 lt!1175643 lt!1175623)))))

(declare-fun lt!1175647 () Unit!52487)

(assert (=> b!3459239 (= lt!1175647 lt!1175633)))

(declare-fun lt!1175615 () Option!7525)

(assert (=> b!3459239 (= lt!1175615 (maxPrefixZipperSequence!1141 thiss!18206 rules!2135 lt!1174856))))

(declare-fun c!592103 () Bool)

(assert (=> b!3459239 (= c!592103 (is-Some!7524 lt!1175615))))

(assert (=> b!3459239 (= (lexRec!748 thiss!18206 rules!2135 lt!1174856) e!2143178)))

(declare-fun lt!1175617 () Unit!52487)

(declare-fun Unit!52498 () Unit!52487)

(assert (=> b!3459239 (= lt!1175617 Unit!52498)))

(declare-fun lt!1175616 () List!37283)

(assert (=> b!3459239 (= lt!1175616 (list!13526 (BalanceConc!22115 Empty!11250)))))

(declare-fun lt!1175624 () List!37283)

(assert (=> b!3459239 (= lt!1175624 (Cons!37159 (_1!21578 (v!36850 lt!1175646)) Nil!37159))))

(declare-fun lt!1175632 () List!37283)

(assert (=> b!3459239 (= lt!1175632 (list!13526 (_1!21570 lt!1175625)))))

(declare-fun lt!1175645 () Unit!52487)

(assert (=> b!3459239 (= lt!1175645 (lemmaConcatAssociativity!1957 lt!1175616 lt!1175624 lt!1175632))))

(assert (=> b!3459239 (= (++!9161 (++!9161 lt!1175616 lt!1175624) lt!1175632) (++!9161 lt!1175616 (++!9161 lt!1175624 lt!1175632)))))

(declare-fun lt!1175629 () Unit!52487)

(assert (=> b!3459239 (= lt!1175629 lt!1175645)))

(declare-fun lt!1175619 () List!37281)

(assert (=> b!3459239 (= lt!1175619 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (_1!21578 (v!36850 lt!1175646))))))))

(declare-fun lt!1175626 () List!37281)

(assert (=> b!3459239 (= lt!1175626 (list!13524 (_2!21578 (v!36850 lt!1175646))))))

(declare-fun lt!1175634 () List!37283)

(assert (=> b!3459239 (= lt!1175634 (list!13526 (append!964 (BalanceConc!22115 Empty!11250) (_1!21578 (v!36850 lt!1175646)))))))

(declare-fun lt!1175637 () Unit!52487)

(assert (=> b!3459239 (= lt!1175637 (lemmaLexThenLexPrefix!513 thiss!18206 rules!2135 lt!1175619 lt!1175626 lt!1175634 (list!13526 (_1!21570 lt!1175625)) (list!13524 (_2!21570 lt!1175625))))))

(assert (=> b!3459239 (= (lexList!1448 thiss!18206 rules!2135 lt!1175619) (tuple2!36887 lt!1175634 Nil!37157))))

(declare-fun lt!1175644 () Unit!52487)

(assert (=> b!3459239 (= lt!1175644 lt!1175637)))

(declare-fun lt!1175618 () BalanceConc!22112)

(assert (=> b!3459239 (= lt!1175618 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175646)))))))

(assert (=> b!3459239 (= lt!1175641 (maxPrefixZipperSequence!1141 thiss!18206 rules!2135 lt!1175618))))

(declare-fun c!592101 () Bool)

(assert (=> b!3459239 (= c!592101 (is-Some!7524 lt!1175641))))

(assert (=> b!3459239 (= (lexRec!748 thiss!18206 rules!2135 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175646))))) e!2143179)))

(declare-fun lt!1175631 () Unit!52487)

(declare-fun Unit!52499 () Unit!52487)

(assert (=> b!3459239 (= lt!1175631 Unit!52499)))

(assert (=> b!3459239 (= lt!1175628 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175646)))))))

(declare-fun lt!1175622 () List!37281)

(assert (=> b!3459239 (= lt!1175622 (list!13524 lt!1175628))))

(declare-fun lt!1175640 () List!37281)

(assert (=> b!3459239 (= lt!1175640 (list!13524 (_2!21578 (v!36850 lt!1175646))))))

(declare-fun lt!1175636 () Unit!52487)

(assert (=> b!3459239 (= lt!1175636 (lemmaConcatTwoListThenFSndIsSuffix!595 lt!1175622 lt!1175640))))

(assert (=> b!3459239 (isSuffix!910 lt!1175640 (++!9156 lt!1175622 lt!1175640))))

(declare-fun lt!1175627 () Unit!52487)

(assert (=> b!3459239 (= lt!1175627 lt!1175636)))

(declare-fun d!995132 () Bool)

(assert (=> d!995132 e!2143177))

(declare-fun res!1395725 () Bool)

(assert (=> d!995132 (=> (not res!1395725) (not e!2143177))))

(assert (=> d!995132 (= res!1395725 (= (list!13526 (_1!21570 lt!1175635)) (list!13526 (_1!21570 (lexRec!748 thiss!18206 rules!2135 lt!1174856)))))))

(assert (=> d!995132 (= lt!1175635 e!2143176)))

(declare-fun c!592102 () Bool)

(assert (=> d!995132 (= c!592102 (is-Some!7524 lt!1175646))))

(assert (=> d!995132 (= lt!1175646 (maxPrefixZipperSequenceV2!535 thiss!18206 rules!2135 lt!1174856 lt!1174856))))

(declare-fun lt!1175639 () Unit!52487)

(declare-fun lt!1175648 () Unit!52487)

(assert (=> d!995132 (= lt!1175639 lt!1175648)))

(declare-fun lt!1175621 () List!37281)

(declare-fun lt!1175630 () List!37281)

(assert (=> d!995132 (isSuffix!910 lt!1175621 (++!9156 lt!1175630 lt!1175621))))

(assert (=> d!995132 (= lt!1175648 (lemmaConcatTwoListThenFSndIsSuffix!595 lt!1175630 lt!1175621))))

(assert (=> d!995132 (= lt!1175621 (list!13524 lt!1174856))))

(assert (=> d!995132 (= lt!1175630 (list!13524 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!995132 (= (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174856 (BalanceConc!22113 Empty!11249) lt!1174856 (BalanceConc!22115 Empty!11250)) lt!1175635)))

(declare-fun lt!1175638 () tuple2!36872)

(declare-fun b!3459240 () Bool)

(assert (=> b!3459240 (= lt!1175638 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175615))))))

(assert (=> b!3459240 (= e!2143178 (tuple2!36873 (prepend!1260 (_1!21570 lt!1175638) (_1!21578 (v!36850 lt!1175615))) (_2!21570 lt!1175638)))))

(declare-fun b!3459241 () Bool)

(assert (=> b!3459241 (= e!2143179 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1175618))))

(assert (= (and d!995132 c!592102) b!3459239))

(assert (= (and d!995132 (not c!592102)) b!3459236))

(assert (= (and b!3459239 c!592103) b!3459240))

(assert (= (and b!3459239 (not c!592103)) b!3459237))

(assert (= (and b!3459239 c!592101) b!3459235))

(assert (= (and b!3459239 (not c!592101)) b!3459241))

(assert (= (and d!995132 res!1395725) b!3459238))

(declare-fun m!3860799 () Bool)

(assert (=> b!3459235 m!3860799))

(declare-fun m!3860801 () Bool)

(assert (=> b!3459235 m!3860801))

(declare-fun m!3860803 () Bool)

(assert (=> b!3459238 m!3860803))

(declare-fun m!3860805 () Bool)

(assert (=> b!3459238 m!3860805))

(declare-fun m!3860807 () Bool)

(assert (=> b!3459238 m!3860807))

(declare-fun m!3860809 () Bool)

(assert (=> b!3459239 m!3860809))

(declare-fun m!3860811 () Bool)

(assert (=> b!3459239 m!3860811))

(declare-fun m!3860813 () Bool)

(assert (=> b!3459239 m!3860813))

(declare-fun m!3860815 () Bool)

(assert (=> b!3459239 m!3860815))

(declare-fun m!3860817 () Bool)

(assert (=> b!3459239 m!3860817))

(declare-fun m!3860819 () Bool)

(assert (=> b!3459239 m!3860819))

(declare-fun m!3860821 () Bool)

(assert (=> b!3459239 m!3860821))

(assert (=> b!3459239 m!3858443))

(declare-fun m!3860823 () Bool)

(assert (=> b!3459239 m!3860823))

(declare-fun m!3860825 () Bool)

(assert (=> b!3459239 m!3860825))

(declare-fun m!3860829 () Bool)

(assert (=> b!3459239 m!3860829))

(declare-fun m!3860831 () Bool)

(assert (=> b!3459239 m!3860831))

(declare-fun m!3860833 () Bool)

(assert (=> b!3459239 m!3860833))

(declare-fun m!3860837 () Bool)

(assert (=> b!3459239 m!3860837))

(assert (=> b!3459239 m!3860813))

(declare-fun m!3860843 () Bool)

(assert (=> b!3459239 m!3860843))

(assert (=> b!3459239 m!3860813))

(assert (=> b!3459239 m!3860829))

(declare-fun m!3860847 () Bool)

(assert (=> b!3459239 m!3860847))

(declare-fun m!3860849 () Bool)

(assert (=> b!3459239 m!3860849))

(declare-fun m!3860853 () Bool)

(assert (=> b!3459239 m!3860853))

(declare-fun m!3860855 () Bool)

(assert (=> b!3459239 m!3860855))

(declare-fun m!3860857 () Bool)

(assert (=> b!3459239 m!3860857))

(assert (=> b!3459239 m!3860849))

(declare-fun m!3860859 () Bool)

(assert (=> b!3459239 m!3860859))

(assert (=> b!3459239 m!3860821))

(assert (=> b!3459239 m!3860855))

(declare-fun m!3860861 () Bool)

(assert (=> b!3459239 m!3860861))

(assert (=> b!3459239 m!3860853))

(declare-fun m!3860863 () Bool)

(assert (=> b!3459239 m!3860863))

(declare-fun m!3860865 () Bool)

(assert (=> b!3459239 m!3860865))

(declare-fun m!3860867 () Bool)

(assert (=> b!3459239 m!3860867))

(assert (=> b!3459239 m!3860831))

(assert (=> b!3459239 m!3860865))

(assert (=> b!3459239 m!3860805))

(declare-fun m!3860869 () Bool)

(assert (=> b!3459239 m!3860869))

(assert (=> b!3459239 m!3860829))

(declare-fun m!3860871 () Bool)

(assert (=> b!3459239 m!3860871))

(assert (=> b!3459239 m!3858443))

(assert (=> b!3459239 m!3860847))

(declare-fun m!3860873 () Bool)

(assert (=> b!3459239 m!3860873))

(assert (=> b!3459239 m!3860871))

(declare-fun m!3860875 () Bool)

(assert (=> b!3459239 m!3860875))

(declare-fun m!3860877 () Bool)

(assert (=> b!3459239 m!3860877))

(assert (=> b!3459239 m!3860551))

(assert (=> b!3459239 m!3860809))

(declare-fun m!3860879 () Bool)

(assert (=> b!3459239 m!3860879))

(declare-fun m!3860881 () Bool)

(assert (=> b!3459240 m!3860881))

(declare-fun m!3860883 () Bool)

(assert (=> b!3459240 m!3860883))

(assert (=> d!995132 m!3858443))

(declare-fun m!3860885 () Bool)

(assert (=> d!995132 m!3860885))

(assert (=> d!995132 m!3859225))

(declare-fun m!3860887 () Bool)

(assert (=> d!995132 m!3860887))

(assert (=> d!995132 m!3860805))

(declare-fun m!3860889 () Bool)

(assert (=> d!995132 m!3860889))

(declare-fun m!3860891 () Bool)

(assert (=> d!995132 m!3860891))

(declare-fun m!3860893 () Bool)

(assert (=> d!995132 m!3860893))

(assert (=> d!995132 m!3860891))

(declare-fun m!3860895 () Bool)

(assert (=> d!995132 m!3860895))

(assert (=> d!994600 d!995132))

(declare-fun d!995152 () Bool)

(declare-fun c!592118 () Bool)

(assert (=> d!995152 (= c!592118 (is-Empty!11249 (c!591766 (charsOf!3451 (h!42579 tokens!494)))))))

(declare-fun e!2143197 () List!37281)

(assert (=> d!995152 (= (list!13527 (c!591766 (charsOf!3451 (h!42579 tokens!494)))) e!2143197)))

(declare-fun b!3459277 () Bool)

(declare-fun e!2143198 () List!37281)

(declare-fun list!13533 (IArray!22503) List!37281)

(assert (=> b!3459277 (= e!2143198 (list!13533 (xs!14423 (c!591766 (charsOf!3451 (h!42579 tokens!494))))))))

(declare-fun b!3459275 () Bool)

(assert (=> b!3459275 (= e!2143197 Nil!37157)))

(declare-fun b!3459276 () Bool)

(assert (=> b!3459276 (= e!2143197 e!2143198)))

(declare-fun c!592119 () Bool)

(assert (=> b!3459276 (= c!592119 (is-Leaf!17579 (c!591766 (charsOf!3451 (h!42579 tokens!494)))))))

(declare-fun b!3459278 () Bool)

(assert (=> b!3459278 (= e!2143198 (++!9156 (list!13527 (left!28992 (c!591766 (charsOf!3451 (h!42579 tokens!494))))) (list!13527 (right!29322 (c!591766 (charsOf!3451 (h!42579 tokens!494)))))))))

(assert (= (and d!995152 c!592118) b!3459275))

(assert (= (and d!995152 (not c!592118)) b!3459276))

(assert (= (and b!3459276 c!592119) b!3459277))

(assert (= (and b!3459276 (not c!592119)) b!3459278))

(declare-fun m!3860905 () Bool)

(assert (=> b!3459277 m!3860905))

(declare-fun m!3860907 () Bool)

(assert (=> b!3459278 m!3860907))

(declare-fun m!3860909 () Bool)

(assert (=> b!3459278 m!3860909))

(assert (=> b!3459278 m!3860907))

(assert (=> b!3459278 m!3860909))

(declare-fun m!3860911 () Bool)

(assert (=> b!3459278 m!3860911))

(assert (=> d!994446 d!995152))

(declare-fun d!995156 () Bool)

(declare-fun c!592122 () Bool)

(assert (=> d!995156 (= c!592122 (is-Nil!37158 rules!2135))))

(declare-fun e!2143201 () (Set Rule!10674))

(assert (=> d!995156 (= (content!5183 rules!2135) e!2143201)))

(declare-fun b!3459283 () Bool)

(assert (=> b!3459283 (= e!2143201 (as set.empty (Set Rule!10674)))))

(declare-fun b!3459284 () Bool)

(assert (=> b!3459284 (= e!2143201 (set.union (set.insert (h!42578 rules!2135) (as set.empty (Set Rule!10674))) (content!5183 (t!272529 rules!2135))))))

(assert (= (and d!995156 c!592122) b!3459283))

(assert (= (and d!995156 (not c!592122)) b!3459284))

(declare-fun m!3860913 () Bool)

(assert (=> b!3459284 m!3860913))

(assert (=> b!3459284 m!3860155))

(assert (=> d!994394 d!995156))

(declare-fun b!3459287 () Bool)

(declare-fun res!1395732 () Bool)

(declare-fun e!2143202 () Bool)

(assert (=> b!3459287 (=> (not res!1395732) (not e!2143202))))

(declare-fun lt!1175654 () List!37281)

(assert (=> b!3459287 (= res!1395732 (= (size!28184 lt!1175654) (+ (size!28184 (t!272528 lt!1174846)) (size!28184 lt!1174835))))))

(declare-fun d!995158 () Bool)

(assert (=> d!995158 e!2143202))

(declare-fun res!1395731 () Bool)

(assert (=> d!995158 (=> (not res!1395731) (not e!2143202))))

(assert (=> d!995158 (= res!1395731 (= (content!5182 lt!1175654) (set.union (content!5182 (t!272528 lt!1174846)) (content!5182 lt!1174835))))))

(declare-fun e!2143203 () List!37281)

(assert (=> d!995158 (= lt!1175654 e!2143203)))

(declare-fun c!592123 () Bool)

(assert (=> d!995158 (= c!592123 (is-Nil!37157 (t!272528 lt!1174846)))))

(assert (=> d!995158 (= (++!9156 (t!272528 lt!1174846) lt!1174835) lt!1175654)))

(declare-fun b!3459286 () Bool)

(assert (=> b!3459286 (= e!2143203 (Cons!37157 (h!42577 (t!272528 lt!1174846)) (++!9156 (t!272528 (t!272528 lt!1174846)) lt!1174835)))))

(declare-fun b!3459288 () Bool)

(assert (=> b!3459288 (= e!2143202 (or (not (= lt!1174835 Nil!37157)) (= lt!1175654 (t!272528 lt!1174846))))))

(declare-fun b!3459285 () Bool)

(assert (=> b!3459285 (= e!2143203 lt!1174835)))

(assert (= (and d!995158 c!592123) b!3459285))

(assert (= (and d!995158 (not c!592123)) b!3459286))

(assert (= (and d!995158 res!1395731) b!3459287))

(assert (= (and b!3459287 res!1395732) b!3459288))

(declare-fun m!3860915 () Bool)

(assert (=> b!3459287 m!3860915))

(assert (=> b!3459287 m!3858887))

(assert (=> b!3459287 m!3858373))

(declare-fun m!3860917 () Bool)

(assert (=> d!995158 m!3860917))

(assert (=> d!995158 m!3860391))

(assert (=> d!995158 m!3858379))

(declare-fun m!3860919 () Bool)

(assert (=> b!3459286 m!3860919))

(assert (=> b!3457826 d!995158))

(assert (=> b!3458364 d!995092))

(declare-fun d!995160 () Bool)

(assert (=> d!995160 (= (nullable!3487 (regex!5437 lt!1174826)) (nullableFct!1009 (regex!5437 lt!1174826)))))

(declare-fun bs!560274 () Bool)

(assert (= bs!560274 d!995160))

(declare-fun m!3860921 () Bool)

(assert (=> bs!560274 m!3860921))

(assert (=> b!3457929 d!995160))

(declare-fun d!995162 () Bool)

(declare-fun c!592124 () Bool)

(assert (=> d!995162 (= c!592124 (is-Node!11249 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))))))

(declare-fun e!2143204 () Bool)

(assert (=> d!995162 (= (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))) e!2143204)))

(declare-fun b!3459289 () Bool)

(assert (=> b!3459289 (= e!2143204 (inv!50333 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))))))

(declare-fun b!3459290 () Bool)

(declare-fun e!2143205 () Bool)

(assert (=> b!3459290 (= e!2143204 e!2143205)))

(declare-fun res!1395733 () Bool)

(assert (=> b!3459290 (= res!1395733 (not (is-Leaf!17579 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))))))))

(assert (=> b!3459290 (=> res!1395733 e!2143205)))

(declare-fun b!3459291 () Bool)

(assert (=> b!3459291 (= e!2143205 (inv!50334 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))))))

(assert (= (and d!995162 c!592124) b!3459289))

(assert (= (and d!995162 (not c!592124)) b!3459290))

(assert (= (and b!3459290 (not res!1395733)) b!3459291))

(declare-fun m!3860923 () Bool)

(assert (=> b!3459289 m!3860923))

(declare-fun m!3860925 () Bool)

(assert (=> b!3459291 m!3860925))

(assert (=> b!3458065 d!995162))

(declare-fun d!995164 () Bool)

(assert (=> d!995164 (= (isEmpty!21510 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))) (is-Nil!37157 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(assert (=> b!3458129 d!995164))

(assert (=> b!3458129 d!994520))

(declare-fun d!995166 () Bool)

(declare-fun lt!1175657 () Int)

(assert (=> d!995166 (= lt!1175657 (size!28184 (list!13524 (seqFromList!3928 (_1!21574 lt!1175090)))))))

(declare-fun size!28195 (Conc!11249) Int)

(assert (=> d!995166 (= lt!1175657 (size!28195 (c!591766 (seqFromList!3928 (_1!21574 lt!1175090)))))))

(assert (=> d!995166 (= (size!28188 (seqFromList!3928 (_1!21574 lt!1175090))) lt!1175657)))

(declare-fun bs!560275 () Bool)

(assert (= bs!560275 d!995166))

(assert (=> bs!560275 m!3858857))

(declare-fun m!3860927 () Bool)

(assert (=> bs!560275 m!3860927))

(assert (=> bs!560275 m!3860927))

(declare-fun m!3860929 () Bool)

(assert (=> bs!560275 m!3860929))

(declare-fun m!3860931 () Bool)

(assert (=> bs!560275 m!3860931))

(assert (=> b!3458129 d!995166))

(declare-fun bm!249468 () Bool)

(declare-fun call!249478 () Unit!52487)

(assert (=> bm!249468 (= call!249478 (lemmaIsPrefixRefl!1802 lt!1174846 lt!1174846))))

(declare-fun b!3459540 () Bool)

(declare-fun e!2143362 () Bool)

(declare-fun e!2143361 () Bool)

(assert (=> b!3459540 (= e!2143362 e!2143361)))

(declare-fun res!1395832 () Bool)

(assert (=> b!3459540 (=> res!1395832 e!2143361)))

(declare-fun lt!1175800 () tuple2!36880)

(assert (=> b!3459540 (= res!1395832 (isEmpty!21510 (_1!21574 lt!1175800)))))

(declare-fun b!3459541 () Bool)

(declare-fun e!2143364 () Unit!52487)

(declare-fun Unit!52500 () Unit!52487)

(assert (=> b!3459541 (= e!2143364 Unit!52500)))

(declare-fun b!3459542 () Bool)

(declare-fun e!2143366 () tuple2!36880)

(declare-fun lt!1175783 () tuple2!36880)

(assert (=> b!3459542 (= e!2143366 lt!1175783)))

(declare-fun bm!249469 () Bool)

(declare-fun call!249473 () Regex!10196)

(declare-fun call!249474 () C!20578)

(assert (=> bm!249469 (= call!249473 (derivativeStep!3040 (regex!5437 (rule!8027 (h!42579 tokens!494))) call!249474))))

(declare-fun b!3459543 () Bool)

(declare-fun e!2143359 () tuple2!36880)

(assert (=> b!3459543 (= e!2143359 (tuple2!36881 Nil!37157 lt!1174846))))

(declare-fun b!3459544 () Bool)

(declare-fun e!2143365 () tuple2!36880)

(declare-fun call!249475 () tuple2!36880)

(assert (=> b!3459544 (= e!2143365 call!249475)))

(declare-fun bm!249470 () Bool)

(declare-fun call!249480 () Unit!52487)

(declare-fun lemmaIsPrefixSameLengthThenSameList!556 (List!37281 List!37281 List!37281) Unit!52487)

(assert (=> bm!249470 (= call!249480 (lemmaIsPrefixSameLengthThenSameList!556 lt!1174846 Nil!37157 lt!1174846))))

(declare-fun b!3459546 () Bool)

(assert (=> b!3459546 (= e!2143361 (>= (size!28184 (_1!21574 lt!1175800)) (size!28184 Nil!37157)))))

(declare-fun b!3459547 () Bool)

(assert (=> b!3459547 (= e!2143365 e!2143366)))

(assert (=> b!3459547 (= lt!1175783 call!249475)))

(declare-fun c!592203 () Bool)

(assert (=> b!3459547 (= c!592203 (isEmpty!21510 (_1!21574 lt!1175783)))))

(declare-fun b!3459548 () Bool)

(declare-fun c!592205 () Bool)

(declare-fun call!249477 () Bool)

(assert (=> b!3459548 (= c!592205 call!249477)))

(declare-fun lt!1175784 () Unit!52487)

(declare-fun lt!1175787 () Unit!52487)

(assert (=> b!3459548 (= lt!1175784 lt!1175787)))

(assert (=> b!3459548 (= lt!1174846 Nil!37157)))

(assert (=> b!3459548 (= lt!1175787 call!249480)))

(declare-fun lt!1175801 () Unit!52487)

(declare-fun lt!1175805 () Unit!52487)

(assert (=> b!3459548 (= lt!1175801 lt!1175805)))

(declare-fun call!249479 () Bool)

(assert (=> b!3459548 call!249479))

(assert (=> b!3459548 (= lt!1175805 call!249478)))

(declare-fun e!2143360 () tuple2!36880)

(declare-fun e!2143363 () tuple2!36880)

(assert (=> b!3459548 (= e!2143360 e!2143363)))

(declare-fun lt!1175781 () List!37281)

(declare-fun bm!249471 () Bool)

(declare-fun call!249476 () List!37281)

(assert (=> bm!249471 (= call!249475 (findLongestMatchInner!908 call!249473 lt!1175781 (+ (size!28184 Nil!37157) 1) call!249476 lt!1174846 (size!28184 lt!1174846)))))

(declare-fun bm!249472 () Bool)

(assert (=> bm!249472 (= call!249477 (nullable!3487 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun bm!249473 () Bool)

(assert (=> bm!249473 (= call!249479 (isPrefix!2843 lt!1174846 lt!1174846))))

(declare-fun b!3459549 () Bool)

(assert (=> b!3459549 (= e!2143363 (tuple2!36881 Nil!37157 lt!1174846))))

(declare-fun b!3459550 () Bool)

(declare-fun Unit!52501 () Unit!52487)

(assert (=> b!3459550 (= e!2143364 Unit!52501)))

(declare-fun lt!1175792 () Unit!52487)

(assert (=> b!3459550 (= lt!1175792 call!249478)))

(assert (=> b!3459550 call!249479))

(declare-fun lt!1175786 () Unit!52487)

(assert (=> b!3459550 (= lt!1175786 lt!1175792)))

(declare-fun lt!1175789 () Unit!52487)

(assert (=> b!3459550 (= lt!1175789 call!249480)))

(assert (=> b!3459550 (= lt!1174846 Nil!37157)))

(declare-fun lt!1175793 () Unit!52487)

(assert (=> b!3459550 (= lt!1175793 lt!1175789)))

(assert (=> b!3459550 false))

(declare-fun b!3459551 () Bool)

(assert (=> b!3459551 (= e!2143363 (tuple2!36881 Nil!37157 Nil!37157))))

(declare-fun b!3459552 () Bool)

(declare-fun c!592201 () Bool)

(assert (=> b!3459552 (= c!592201 call!249477)))

(declare-fun lt!1175803 () Unit!52487)

(declare-fun lt!1175780 () Unit!52487)

(assert (=> b!3459552 (= lt!1175803 lt!1175780)))

(declare-fun lt!1175788 () C!20578)

(declare-fun lt!1175790 () List!37281)

(assert (=> b!3459552 (= (++!9156 (++!9156 Nil!37157 (Cons!37157 lt!1175788 Nil!37157)) lt!1175790) lt!1174846)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1161 (List!37281 C!20578 List!37281 List!37281) Unit!52487)

(assert (=> b!3459552 (= lt!1175780 (lemmaMoveElementToOtherListKeepsConcatEq!1161 Nil!37157 lt!1175788 lt!1175790 lt!1174846))))

(assert (=> b!3459552 (= lt!1175790 (tail!5431 lt!1174846))))

(assert (=> b!3459552 (= lt!1175788 (head!7316 lt!1174846))))

(declare-fun lt!1175799 () Unit!52487)

(declare-fun lt!1175778 () Unit!52487)

(assert (=> b!3459552 (= lt!1175799 lt!1175778)))

(declare-fun getSuffix!1491 (List!37281 List!37281) List!37281)

(assert (=> b!3459552 (isPrefix!2843 (++!9156 Nil!37157 (Cons!37157 (head!7316 (getSuffix!1491 lt!1174846 Nil!37157)) Nil!37157)) lt!1174846)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!549 (List!37281 List!37281) Unit!52487)

(assert (=> b!3459552 (= lt!1175778 (lemmaAddHeadSuffixToPrefixStillPrefix!549 Nil!37157 lt!1174846))))

(declare-fun lt!1175796 () Unit!52487)

(declare-fun lt!1175802 () Unit!52487)

(assert (=> b!3459552 (= lt!1175796 lt!1175802)))

(assert (=> b!3459552 (= lt!1175802 (lemmaAddHeadSuffixToPrefixStillPrefix!549 Nil!37157 lt!1174846))))

(assert (=> b!3459552 (= lt!1175781 (++!9156 Nil!37157 (Cons!37157 (head!7316 lt!1174846) Nil!37157)))))

(declare-fun lt!1175794 () Unit!52487)

(assert (=> b!3459552 (= lt!1175794 e!2143364)))

(declare-fun c!592206 () Bool)

(assert (=> b!3459552 (= c!592206 (= (size!28184 Nil!37157) (size!28184 lt!1174846)))))

(declare-fun lt!1175785 () Unit!52487)

(declare-fun lt!1175779 () Unit!52487)

(assert (=> b!3459552 (= lt!1175785 lt!1175779)))

(assert (=> b!3459552 (<= (size!28184 Nil!37157) (size!28184 lt!1174846))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!357 (List!37281 List!37281) Unit!52487)

(assert (=> b!3459552 (= lt!1175779 (lemmaIsPrefixThenSmallerEqSize!357 Nil!37157 lt!1174846))))

(assert (=> b!3459552 (= e!2143360 e!2143365)))

(declare-fun b!3459545 () Bool)

(assert (=> b!3459545 (= e!2143359 e!2143360)))

(declare-fun c!592204 () Bool)

(assert (=> b!3459545 (= c!592204 (= (size!28184 Nil!37157) (size!28184 lt!1174846)))))

(declare-fun d!995168 () Bool)

(assert (=> d!995168 e!2143362))

(declare-fun res!1395831 () Bool)

(assert (=> d!995168 (=> (not res!1395831) (not e!2143362))))

(assert (=> d!995168 (= res!1395831 (= (++!9156 (_1!21574 lt!1175800) (_2!21574 lt!1175800)) lt!1174846))))

(assert (=> d!995168 (= lt!1175800 e!2143359)))

(declare-fun c!592202 () Bool)

(declare-fun lostCause!923 (Regex!10196) Bool)

(assert (=> d!995168 (= c!592202 (lostCause!923 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun lt!1175804 () Unit!52487)

(declare-fun Unit!52502 () Unit!52487)

(assert (=> d!995168 (= lt!1175804 Unit!52502)))

(assert (=> d!995168 (= (getSuffix!1491 lt!1174846 Nil!37157) lt!1174846)))

(declare-fun lt!1175795 () Unit!52487)

(declare-fun lt!1175791 () Unit!52487)

(assert (=> d!995168 (= lt!1175795 lt!1175791)))

(declare-fun lt!1175782 () List!37281)

(assert (=> d!995168 (= lt!1174846 lt!1175782)))

(declare-fun lemmaSamePrefixThenSameSuffix!1273 (List!37281 List!37281 List!37281 List!37281 List!37281) Unit!52487)

(assert (=> d!995168 (= lt!1175791 (lemmaSamePrefixThenSameSuffix!1273 Nil!37157 lt!1174846 Nil!37157 lt!1175782 lt!1174846))))

(assert (=> d!995168 (= lt!1175782 (getSuffix!1491 lt!1174846 Nil!37157))))

(declare-fun lt!1175798 () Unit!52487)

(declare-fun lt!1175797 () Unit!52487)

(assert (=> d!995168 (= lt!1175798 lt!1175797)))

(assert (=> d!995168 (isPrefix!2843 Nil!37157 (++!9156 Nil!37157 lt!1174846))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1807 (List!37281 List!37281) Unit!52487)

(assert (=> d!995168 (= lt!1175797 (lemmaConcatTwoListThenFirstIsPrefix!1807 Nil!37157 lt!1174846))))

(assert (=> d!995168 (validRegex!4643 (regex!5437 (rule!8027 (h!42579 tokens!494))))))

(assert (=> d!995168 (= (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)) lt!1175800)))

(declare-fun bm!249474 () Bool)

(assert (=> bm!249474 (= call!249476 (tail!5431 lt!1174846))))

(declare-fun b!3459553 () Bool)

(assert (=> b!3459553 (= e!2143366 (tuple2!36881 Nil!37157 lt!1174846))))

(declare-fun bm!249475 () Bool)

(assert (=> bm!249475 (= call!249474 (head!7316 lt!1174846))))

(assert (= (and d!995168 c!592202) b!3459543))

(assert (= (and d!995168 (not c!592202)) b!3459545))

(assert (= (and b!3459545 c!592204) b!3459548))

(assert (= (and b!3459545 (not c!592204)) b!3459552))

(assert (= (and b!3459548 c!592205) b!3459551))

(assert (= (and b!3459548 (not c!592205)) b!3459549))

(assert (= (and b!3459552 c!592206) b!3459550))

(assert (= (and b!3459552 (not c!592206)) b!3459541))

(assert (= (and b!3459552 c!592201) b!3459547))

(assert (= (and b!3459552 (not c!592201)) b!3459544))

(assert (= (and b!3459547 c!592203) b!3459553))

(assert (= (and b!3459547 (not c!592203)) b!3459542))

(assert (= (or b!3459547 b!3459544) bm!249475))

(assert (= (or b!3459547 b!3459544) bm!249474))

(assert (= (or b!3459547 b!3459544) bm!249469))

(assert (= (or b!3459547 b!3459544) bm!249471))

(assert (= (or b!3459548 b!3459550) bm!249468))

(assert (= (or b!3459548 b!3459550) bm!249473))

(assert (= (or b!3459548 b!3459550) bm!249470))

(assert (= (or b!3459548 b!3459552) bm!249472))

(assert (= (and d!995168 res!1395831) b!3459540))

(assert (= (and b!3459540 (not res!1395832)) b!3459546))

(assert (=> bm!249475 m!3859241))

(declare-fun m!3861291 () Bool)

(assert (=> bm!249470 m!3861291))

(declare-fun m!3861293 () Bool)

(assert (=> b!3459540 m!3861293))

(assert (=> bm!249474 m!3859245))

(assert (=> bm!249471 m!3858103))

(declare-fun m!3861295 () Bool)

(assert (=> bm!249471 m!3861295))

(assert (=> bm!249473 m!3858565))

(declare-fun m!3861297 () Bool)

(assert (=> d!995168 m!3861297))

(declare-fun m!3861299 () Bool)

(assert (=> d!995168 m!3861299))

(declare-fun m!3861301 () Bool)

(assert (=> d!995168 m!3861301))

(declare-fun m!3861303 () Bool)

(assert (=> d!995168 m!3861303))

(assert (=> d!995168 m!3861297))

(declare-fun m!3861305 () Bool)

(assert (=> d!995168 m!3861305))

(assert (=> d!995168 m!3860063))

(declare-fun m!3861307 () Bool)

(assert (=> d!995168 m!3861307))

(declare-fun m!3861309 () Bool)

(assert (=> d!995168 m!3861309))

(assert (=> bm!249468 m!3858567))

(declare-fun m!3861311 () Bool)

(assert (=> b!3459546 m!3861311))

(assert (=> b!3459546 m!3858837))

(assert (=> b!3459552 m!3858103))

(declare-fun m!3861315 () Bool)

(assert (=> b!3459552 m!3861315))

(assert (=> b!3459552 m!3858837))

(assert (=> b!3459552 m!3859241))

(assert (=> b!3459552 m!3861301))

(assert (=> b!3459552 m!3861301))

(declare-fun m!3861317 () Bool)

(assert (=> b!3459552 m!3861317))

(declare-fun m!3861319 () Bool)

(assert (=> b!3459552 m!3861319))

(declare-fun m!3861321 () Bool)

(assert (=> b!3459552 m!3861321))

(assert (=> b!3459552 m!3859245))

(declare-fun m!3861323 () Bool)

(assert (=> b!3459552 m!3861323))

(declare-fun m!3861325 () Bool)

(assert (=> b!3459552 m!3861325))

(assert (=> b!3459552 m!3861319))

(declare-fun m!3861327 () Bool)

(assert (=> b!3459552 m!3861327))

(assert (=> b!3459552 m!3861323))

(declare-fun m!3861329 () Bool)

(assert (=> b!3459552 m!3861329))

(declare-fun m!3861331 () Bool)

(assert (=> b!3459552 m!3861331))

(declare-fun m!3861333 () Bool)

(assert (=> b!3459547 m!3861333))

(declare-fun m!3861335 () Bool)

(assert (=> bm!249469 m!3861335))

(assert (=> bm!249472 m!3860065))

(assert (=> b!3458129 d!995168))

(declare-fun d!995302 () Bool)

(declare-fun e!2143388 () Bool)

(assert (=> d!995302 e!2143388))

(declare-fun res!1395854 () Bool)

(assert (=> d!995302 (=> res!1395854 e!2143388)))

(assert (=> d!995302 (= res!1395854 (isEmpty!21510 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(declare-fun lt!1175817 () Unit!52487)

(declare-fun choose!20009 (Regex!10196 List!37281) Unit!52487)

(assert (=> d!995302 (= lt!1175817 (choose!20009 (regex!5437 (rule!8027 (h!42579 tokens!494))) lt!1174846))))

(assert (=> d!995302 (validRegex!4643 (regex!5437 (rule!8027 (h!42579 tokens!494))))))

(assert (=> d!995302 (= (longestMatchIsAcceptedByMatchOrIsEmpty!881 (regex!5437 (rule!8027 (h!42579 tokens!494))) lt!1174846) lt!1175817)))

(declare-fun b!3459583 () Bool)

(assert (=> b!3459583 (= e!2143388 (matchR!4780 (regex!5437 (rule!8027 (h!42579 tokens!494))) (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(assert (= (and d!995302 (not res!1395854)) b!3459583))

(assert (=> d!995302 m!3858103))

(assert (=> d!995302 m!3858837))

(assert (=> d!995302 m!3858103))

(assert (=> d!995302 m!3858839))

(assert (=> d!995302 m!3858837))

(declare-fun m!3861351 () Bool)

(assert (=> d!995302 m!3861351))

(assert (=> d!995302 m!3860063))

(assert (=> d!995302 m!3858865))

(assert (=> b!3459583 m!3858837))

(assert (=> b!3459583 m!3858103))

(assert (=> b!3459583 m!3858837))

(assert (=> b!3459583 m!3858103))

(assert (=> b!3459583 m!3858839))

(assert (=> b!3459583 m!3858841))

(assert (=> b!3458129 d!995302))

(declare-fun d!995312 () Bool)

(declare-fun lt!1175820 () Int)

(assert (=> d!995312 (>= lt!1175820 0)))

(declare-fun e!2143389 () Int)

(assert (=> d!995312 (= lt!1175820 e!2143389)))

(declare-fun c!592210 () Bool)

(assert (=> d!995312 (= c!592210 (is-Nil!37157 Nil!37157))))

(assert (=> d!995312 (= (size!28184 Nil!37157) lt!1175820)))

(declare-fun b!3459584 () Bool)

(assert (=> b!3459584 (= e!2143389 0)))

(declare-fun b!3459585 () Bool)

(assert (=> b!3459585 (= e!2143389 (+ 1 (size!28184 (t!272528 Nil!37157))))))

(assert (= (and d!995312 c!592210) b!3459584))

(assert (= (and d!995312 (not c!592210)) b!3459585))

(declare-fun m!3861353 () Bool)

(assert (=> b!3459585 m!3861353))

(assert (=> b!3458129 d!995312))

(declare-fun bs!560297 () Bool)

(declare-fun d!995314 () Bool)

(assert (= bs!560297 (and d!995314 d!995032)))

(declare-fun lambda!121820 () Int)

(assert (=> bs!560297 (= lambda!121820 lambda!121810)))

(declare-fun b!3459603 () Bool)

(declare-fun e!2143400 () Bool)

(assert (=> b!3459603 (= e!2143400 true)))

(assert (=> d!995314 e!2143400))

(assert (= d!995314 b!3459603))

(assert (=> b!3459603 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (dynLambda!15658 order!19793 lambda!121820))))

(assert (=> b!3459603 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (dynLambda!15658 order!19793 lambda!121820))))

(assert (=> d!995314 (= (list!13524 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (seqFromList!3928 (_1!21574 lt!1175090))))) (list!13524 (seqFromList!3928 (_1!21574 lt!1175090))))))

(declare-fun lt!1175827 () Unit!52487)

(declare-fun ForallOf!595 (Int BalanceConc!22112) Unit!52487)

(assert (=> d!995314 (= lt!1175827 (ForallOf!595 lambda!121820 (seqFromList!3928 (_1!21574 lt!1175090))))))

(assert (=> d!995314 (= (lemmaSemiInverse!1258 (transformation!5437 (rule!8027 (h!42579 tokens!494))) (seqFromList!3928 (_1!21574 lt!1175090))) lt!1175827)))

(declare-fun b_lambda!99579 () Bool)

(assert (=> (not b_lambda!99579) (not d!995314)))

(declare-fun tb!188459 () Bool)

(declare-fun t!272746 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272746) tb!188459))

(declare-fun b!3459604 () Bool)

(declare-fun e!2143401 () Bool)

(declare-fun tp!1077908 () Bool)

(assert (=> b!3459604 (= e!2143401 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (seqFromList!3928 (_1!21574 lt!1175090)))))) tp!1077908))))

(declare-fun result!232444 () Bool)

(assert (=> tb!188459 (= result!232444 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (seqFromList!3928 (_1!21574 lt!1175090))))) e!2143401))))

(assert (= tb!188459 b!3459604))

(declare-fun m!3861385 () Bool)

(assert (=> b!3459604 m!3861385))

(declare-fun m!3861387 () Bool)

(assert (=> tb!188459 m!3861387))

(assert (=> d!995314 t!272746))

(declare-fun b_and!243283 () Bool)

(assert (= b_and!243233 (and (=> t!272746 result!232444) b_and!243283)))

(declare-fun t!272748 () Bool)

(declare-fun tb!188461 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272748) tb!188461))

(declare-fun result!232446 () Bool)

(assert (= result!232446 result!232444))

(assert (=> d!995314 t!272748))

(declare-fun b_and!243285 () Bool)

(assert (= b_and!243235 (and (=> t!272748 result!232446) b_and!243285)))

(declare-fun t!272750 () Bool)

(declare-fun tb!188463 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272750) tb!188463))

(declare-fun result!232448 () Bool)

(assert (= result!232448 result!232444))

(assert (=> d!995314 t!272750))

(declare-fun b_and!243287 () Bool)

(assert (= b_and!243239 (and (=> t!272750 result!232448) b_and!243287)))

(declare-fun t!272752 () Bool)

(declare-fun tb!188465 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272752) tb!188465))

(declare-fun result!232450 () Bool)

(assert (= result!232450 result!232444))

(assert (=> d!995314 t!272752))

(declare-fun b_and!243289 () Bool)

(assert (= b_and!243237 (and (=> t!272752 result!232450) b_and!243289)))

(declare-fun tb!188467 () Bool)

(declare-fun t!272755 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272755) tb!188467))

(declare-fun result!232452 () Bool)

(assert (= result!232452 result!232444))

(assert (=> d!995314 t!272755))

(declare-fun b_and!243291 () Bool)

(assert (= b_and!243241 (and (=> t!272755 result!232452) b_and!243291)))

(declare-fun b_lambda!99581 () Bool)

(assert (=> (not b_lambda!99581) (not d!995314)))

(declare-fun tb!188469 () Bool)

(declare-fun t!272757 () Bool)

(assert (=> (and b!3457648 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272757) tb!188469))

(declare-fun result!232454 () Bool)

(assert (=> tb!188469 (= result!232454 (inv!21 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (seqFromList!3928 (_1!21574 lt!1175090)))))))

(declare-fun m!3861389 () Bool)

(assert (=> tb!188469 m!3861389))

(assert (=> d!995314 t!272757))

(declare-fun b_and!243293 () Bool)

(assert (= b_and!243189 (and (=> t!272757 result!232454) b_and!243293)))

(declare-fun tb!188471 () Bool)

(declare-fun t!272759 () Bool)

(assert (=> (and b!3457652 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272759) tb!188471))

(declare-fun result!232456 () Bool)

(assert (= result!232456 result!232454))

(assert (=> d!995314 t!272759))

(declare-fun b_and!243295 () Bool)

(assert (= b_and!243185 (and (=> t!272759 result!232456) b_and!243295)))

(declare-fun t!272761 () Bool)

(declare-fun tb!188473 () Bool)

(assert (=> (and b!3458412 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272761) tb!188473))

(declare-fun result!232458 () Bool)

(assert (= result!232458 result!232454))

(assert (=> d!995314 t!272761))

(declare-fun b_and!243297 () Bool)

(assert (= b_and!243183 (and (=> t!272761 result!232458) b_and!243297)))

(declare-fun t!272763 () Bool)

(declare-fun tb!188475 () Bool)

(assert (=> (and b!3457644 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272763) tb!188475))

(declare-fun result!232460 () Bool)

(assert (= result!232460 result!232454))

(assert (=> d!995314 t!272763))

(declare-fun b_and!243299 () Bool)

(assert (= b_and!243191 (and (=> t!272763 result!232460) b_and!243299)))

(declare-fun t!272765 () Bool)

(declare-fun tb!188477 () Bool)

(assert (=> (and b!3458384 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272765) tb!188477))

(declare-fun result!232462 () Bool)

(assert (= result!232462 result!232454))

(assert (=> d!995314 t!272765))

(declare-fun b_and!243301 () Bool)

(assert (= b_and!243187 (and (=> t!272765 result!232462) b_and!243301)))

(declare-fun m!3861537 () Bool)

(assert (=> d!995314 m!3861537))

(declare-fun m!3861539 () Bool)

(assert (=> d!995314 m!3861539))

(declare-fun m!3861541 () Bool)

(assert (=> d!995314 m!3861541))

(assert (=> d!995314 m!3861537))

(assert (=> d!995314 m!3858857))

(assert (=> d!995314 m!3861541))

(assert (=> d!995314 m!3858857))

(assert (=> d!995314 m!3860927))

(assert (=> d!995314 m!3858857))

(declare-fun m!3861543 () Bool)

(assert (=> d!995314 m!3861543))

(assert (=> b!3458129 d!995314))

(declare-fun d!995392 () Bool)

(assert (=> d!995392 (= (seqFromList!3928 (_1!21574 lt!1175090)) (fromListB!1782 (_1!21574 lt!1175090)))))

(declare-fun bs!560312 () Bool)

(assert (= bs!560312 d!995392))

(declare-fun m!3861545 () Bool)

(assert (=> bs!560312 m!3861545))

(assert (=> b!3458129 d!995392))

(declare-fun d!995394 () Bool)

(assert (=> d!995394 (= (apply!8745 (transformation!5437 (rule!8027 (h!42579 tokens!494))) (seqFromList!3928 (_1!21574 lt!1175090))) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (seqFromList!3928 (_1!21574 lt!1175090))))))

(declare-fun b_lambda!99587 () Bool)

(assert (=> (not b_lambda!99587) (not d!995394)))

(assert (=> d!995394 t!272763))

(declare-fun b_and!243323 () Bool)

(assert (= b_and!243299 (and (=> t!272763 result!232460) b_and!243323)))

(assert (=> d!995394 t!272761))

(declare-fun b_and!243325 () Bool)

(assert (= b_and!243297 (and (=> t!272761 result!232458) b_and!243325)))

(assert (=> d!995394 t!272757))

(declare-fun b_and!243327 () Bool)

(assert (= b_and!243293 (and (=> t!272757 result!232454) b_and!243327)))

(assert (=> d!995394 t!272759))

(declare-fun b_and!243329 () Bool)

(assert (= b_and!243295 (and (=> t!272759 result!232456) b_and!243329)))

(assert (=> d!995394 t!272765))

(declare-fun b_and!243331 () Bool)

(assert (= b_and!243301 (and (=> t!272765 result!232462) b_and!243331)))

(assert (=> d!995394 m!3858857))

(assert (=> d!995394 m!3861541))

(assert (=> b!3458129 d!995394))

(declare-fun d!995396 () Bool)

(declare-fun c!592222 () Bool)

(assert (=> d!995396 (= c!592222 (is-Nil!37157 lt!1175062))))

(declare-fun e!2143417 () (Set C!20578))

(assert (=> d!995396 (= (content!5182 lt!1175062) e!2143417)))

(declare-fun b!3459629 () Bool)

(assert (=> b!3459629 (= e!2143417 (as set.empty (Set C!20578)))))

(declare-fun b!3459630 () Bool)

(assert (=> b!3459630 (= e!2143417 (set.union (set.insert (h!42577 lt!1175062) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1175062))))))

(assert (= (and d!995396 c!592222) b!3459629))

(assert (= (and d!995396 (not c!592222)) b!3459630))

(declare-fun m!3861547 () Bool)

(assert (=> b!3459630 m!3861547))

(declare-fun m!3861549 () Bool)

(assert (=> b!3459630 m!3861549))

(assert (=> d!994480 d!995396))

(assert (=> d!994480 d!994960))

(declare-fun d!995398 () Bool)

(declare-fun c!592223 () Bool)

(assert (=> d!995398 (= c!592223 (is-Nil!37157 lt!1174829))))

(declare-fun e!2143418 () (Set C!20578))

(assert (=> d!995398 (= (content!5182 lt!1174829) e!2143418)))

(declare-fun b!3459631 () Bool)

(assert (=> b!3459631 (= e!2143418 (as set.empty (Set C!20578)))))

(declare-fun b!3459632 () Bool)

(assert (=> b!3459632 (= e!2143418 (set.union (set.insert (h!42577 lt!1174829) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1174829))))))

(assert (= (and d!995398 c!592223) b!3459631))

(assert (= (and d!995398 (not c!592223)) b!3459632))

(declare-fun m!3861551 () Bool)

(assert (=> b!3459632 m!3861551))

(declare-fun m!3861553 () Bool)

(assert (=> b!3459632 m!3861553))

(assert (=> d!994480 d!995398))

(assert (=> d!994598 d!994762))

(declare-fun d!995400 () Bool)

(declare-fun lt!1175849 () Int)

(assert (=> d!995400 (= lt!1175849 (size!28190 (list!13526 lt!1174837)))))

(assert (=> d!995400 (= lt!1175849 (size!28191 (c!591767 lt!1174837)))))

(assert (=> d!995400 (= (size!28183 lt!1174837) lt!1175849)))

(declare-fun bs!560313 () Bool)

(assert (= bs!560313 d!995400))

(assert (=> bs!560313 m!3858923))

(assert (=> bs!560313 m!3858923))

(declare-fun m!3861555 () Bool)

(assert (=> bs!560313 m!3861555))

(declare-fun m!3861557 () Bool)

(assert (=> bs!560313 m!3861557))

(assert (=> d!994598 d!995400))

(declare-fun d!995402 () Bool)

(declare-fun lt!1175850 () List!37281)

(assert (=> d!995402 (= lt!1175850 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (printList!1574 thiss!18206 (dropList!1204 lt!1174837 0))))))

(declare-fun e!2143419 () List!37281)

(assert (=> d!995402 (= lt!1175850 e!2143419)))

(declare-fun c!592224 () Bool)

(assert (=> d!995402 (= c!592224 (is-Cons!37159 (dropList!1204 lt!1174837 0)))))

(assert (=> d!995402 (= (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174837 0) (list!13524 (BalanceConc!22113 Empty!11249))) lt!1175850)))

(declare-fun b!3459633 () Bool)

(assert (=> b!3459633 (= e!2143419 (printListTailRec!687 thiss!18206 (t!272530 (dropList!1204 lt!1174837 0)) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (h!42579 (dropList!1204 lt!1174837 0)))))))))

(declare-fun lt!1175853 () List!37281)

(assert (=> b!3459633 (= lt!1175853 (list!13524 (charsOf!3451 (h!42579 (dropList!1204 lt!1174837 0)))))))

(declare-fun lt!1175851 () List!37281)

(assert (=> b!3459633 (= lt!1175851 (printList!1574 thiss!18206 (t!272530 (dropList!1204 lt!1174837 0))))))

(declare-fun lt!1175854 () Unit!52487)

(assert (=> b!3459633 (= lt!1175854 (lemmaConcatAssociativity!1955 (list!13524 (BalanceConc!22113 Empty!11249)) lt!1175853 lt!1175851))))

(assert (=> b!3459633 (= (++!9156 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) lt!1175853) lt!1175851) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (++!9156 lt!1175853 lt!1175851)))))

(declare-fun lt!1175852 () Unit!52487)

(assert (=> b!3459633 (= lt!1175852 lt!1175854)))

(declare-fun b!3459634 () Bool)

(assert (=> b!3459634 (= e!2143419 (list!13524 (BalanceConc!22113 Empty!11249)))))

(assert (= (and d!995402 c!592224) b!3459633))

(assert (= (and d!995402 (not c!592224)) b!3459634))

(assert (=> d!995402 m!3859179))

(declare-fun m!3861559 () Bool)

(assert (=> d!995402 m!3861559))

(assert (=> d!995402 m!3858443))

(assert (=> d!995402 m!3861559))

(declare-fun m!3861561 () Bool)

(assert (=> d!995402 m!3861561))

(declare-fun m!3861563 () Bool)

(assert (=> b!3459633 m!3861563))

(assert (=> b!3459633 m!3858443))

(declare-fun m!3861565 () Bool)

(assert (=> b!3459633 m!3861565))

(assert (=> b!3459633 m!3858443))

(declare-fun m!3861567 () Bool)

(assert (=> b!3459633 m!3861567))

(assert (=> b!3459633 m!3858443))

(declare-fun m!3861569 () Bool)

(assert (=> b!3459633 m!3861569))

(declare-fun m!3861571 () Bool)

(assert (=> b!3459633 m!3861571))

(assert (=> b!3459633 m!3861565))

(declare-fun m!3861573 () Bool)

(assert (=> b!3459633 m!3861573))

(declare-fun m!3861575 () Bool)

(assert (=> b!3459633 m!3861575))

(declare-fun m!3861577 () Bool)

(assert (=> b!3459633 m!3861577))

(assert (=> b!3459633 m!3861571))

(declare-fun m!3861579 () Bool)

(assert (=> b!3459633 m!3861579))

(assert (=> b!3459633 m!3861575))

(assert (=> b!3459633 m!3861569))

(assert (=> b!3459633 m!3858443))

(assert (=> b!3459633 m!3861577))

(declare-fun m!3861581 () Bool)

(assert (=> b!3459633 m!3861581))

(assert (=> d!994598 d!995402))

(declare-fun d!995404 () Bool)

(assert (=> d!995404 (= (dropList!1204 lt!1174837 0) (drop!2010 (list!13530 (c!591767 lt!1174837)) 0))))

(declare-fun bs!560314 () Bool)

(assert (= bs!560314 d!995404))

(assert (=> bs!560314 m!3859953))

(assert (=> bs!560314 m!3859953))

(declare-fun m!3861583 () Bool)

(assert (=> bs!560314 m!3861583))

(assert (=> d!994598 d!995404))

(declare-fun d!995406 () Bool)

(assert (=> d!995406 (= (list!13524 lt!1175199) (list!13527 (c!591766 lt!1175199)))))

(declare-fun bs!560315 () Bool)

(assert (= bs!560315 d!995406))

(declare-fun m!3861585 () Bool)

(assert (=> bs!560315 m!3861585))

(assert (=> d!994598 d!995406))

(declare-fun b!3459637 () Bool)

(declare-fun res!1395874 () Bool)

(declare-fun e!2143420 () Bool)

(assert (=> b!3459637 (=> (not res!1395874) (not e!2143420))))

(declare-fun lt!1175855 () List!37281)

(assert (=> b!3459637 (= res!1395874 (= (size!28184 lt!1175855) (+ (size!28184 (t!272528 (++!9156 lt!1174846 lt!1174848))) (size!28184 lt!1174829))))))

(declare-fun d!995408 () Bool)

(assert (=> d!995408 e!2143420))

(declare-fun res!1395873 () Bool)

(assert (=> d!995408 (=> (not res!1395873) (not e!2143420))))

(assert (=> d!995408 (= res!1395873 (= (content!5182 lt!1175855) (set.union (content!5182 (t!272528 (++!9156 lt!1174846 lt!1174848))) (content!5182 lt!1174829))))))

(declare-fun e!2143421 () List!37281)

(assert (=> d!995408 (= lt!1175855 e!2143421)))

(declare-fun c!592225 () Bool)

(assert (=> d!995408 (= c!592225 (is-Nil!37157 (t!272528 (++!9156 lt!1174846 lt!1174848))))))

(assert (=> d!995408 (= (++!9156 (t!272528 (++!9156 lt!1174846 lt!1174848)) lt!1174829) lt!1175855)))

(declare-fun b!3459636 () Bool)

(assert (=> b!3459636 (= e!2143421 (Cons!37157 (h!42577 (t!272528 (++!9156 lt!1174846 lt!1174848))) (++!9156 (t!272528 (t!272528 (++!9156 lt!1174846 lt!1174848))) lt!1174829)))))

(declare-fun b!3459638 () Bool)

(assert (=> b!3459638 (= e!2143420 (or (not (= lt!1174829 Nil!37157)) (= lt!1175855 (t!272528 (++!9156 lt!1174846 lt!1174848)))))))

(declare-fun b!3459635 () Bool)

(assert (=> b!3459635 (= e!2143421 lt!1174829)))

(assert (= (and d!995408 c!592225) b!3459635))

(assert (= (and d!995408 (not c!592225)) b!3459636))

(assert (= (and d!995408 res!1395873) b!3459637))

(assert (= (and b!3459637 res!1395874) b!3459638))

(declare-fun m!3861587 () Bool)

(assert (=> b!3459637 m!3861587))

(assert (=> b!3459637 m!3860249))

(assert (=> b!3459637 m!3858415))

(declare-fun m!3861589 () Bool)

(assert (=> d!995408 m!3861589))

(declare-fun m!3861591 () Bool)

(assert (=> d!995408 m!3861591))

(assert (=> d!995408 m!3858421))

(declare-fun m!3861593 () Bool)

(assert (=> b!3459636 m!3861593))

(assert (=> b!3457849 d!995408))

(declare-fun d!995410 () Bool)

(declare-fun lt!1175856 () Token!10240)

(assert (=> d!995410 (contains!6889 lt!1174996 lt!1175856)))

(declare-fun e!2143422 () Token!10240)

(assert (=> d!995410 (= lt!1175856 e!2143422)))

(declare-fun c!592226 () Bool)

(assert (=> d!995410 (= c!592226 (= 0 0))))

(declare-fun e!2143423 () Bool)

(assert (=> d!995410 e!2143423))

(declare-fun res!1395875 () Bool)

(assert (=> d!995410 (=> (not res!1395875) (not e!2143423))))

(assert (=> d!995410 (= res!1395875 (<= 0 0))))

(assert (=> d!995410 (= (apply!8748 lt!1174996 0) lt!1175856)))

(declare-fun b!3459639 () Bool)

(assert (=> b!3459639 (= e!2143423 (< 0 (size!28190 lt!1174996)))))

(declare-fun b!3459640 () Bool)

(assert (=> b!3459640 (= e!2143422 (head!7318 lt!1174996))))

(declare-fun b!3459641 () Bool)

(assert (=> b!3459641 (= e!2143422 (apply!8748 (tail!5430 lt!1174996) (- 0 1)))))

(assert (= (and d!995410 res!1395875) b!3459639))

(assert (= (and d!995410 c!592226) b!3459640))

(assert (= (and d!995410 (not c!592226)) b!3459641))

(declare-fun m!3861595 () Bool)

(assert (=> d!995410 m!3861595))

(declare-fun m!3861597 () Bool)

(assert (=> b!3459639 m!3861597))

(declare-fun m!3861599 () Bool)

(assert (=> b!3459640 m!3861599))

(declare-fun m!3861601 () Bool)

(assert (=> b!3459641 m!3861601))

(assert (=> b!3459641 m!3861601))

(declare-fun m!3861603 () Bool)

(assert (=> b!3459641 m!3861603))

(assert (=> b!3457864 d!995410))

(declare-fun d!995412 () Bool)

(declare-fun lt!1175857 () BalanceConc!22112)

(assert (=> d!995412 (= (list!13524 lt!1175857) (originalCharacters!6151 (apply!8744 lt!1174849 0)))))

(assert (=> d!995412 (= lt!1175857 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0)))) (value!175416 (apply!8744 lt!1174849 0))))))

(assert (=> d!995412 (= (charsOf!3451 (apply!8744 lt!1174849 0)) lt!1175857)))

(declare-fun b_lambda!99589 () Bool)

(assert (=> (not b_lambda!99589) (not d!995412)))

(declare-fun tb!188499 () Bool)

(declare-fun t!272787 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0))))) t!272787) tb!188499))

(declare-fun b!3459642 () Bool)

(declare-fun e!2143424 () Bool)

(declare-fun tp!1077910 () Bool)

(assert (=> b!3459642 (= e!2143424 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0)))) (value!175416 (apply!8744 lt!1174849 0))))) tp!1077910))))

(declare-fun result!232484 () Bool)

(assert (=> tb!188499 (= result!232484 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0)))) (value!175416 (apply!8744 lt!1174849 0)))) e!2143424))))

(assert (= tb!188499 b!3459642))

(declare-fun m!3861605 () Bool)

(assert (=> b!3459642 m!3861605))

(declare-fun m!3861607 () Bool)

(assert (=> tb!188499 m!3861607))

(assert (=> d!995412 t!272787))

(declare-fun b_and!243333 () Bool)

(assert (= b_and!243291 (and (=> t!272787 result!232484) b_and!243333)))

(declare-fun tb!188501 () Bool)

(declare-fun t!272789 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0))))) t!272789) tb!188501))

(declare-fun result!232486 () Bool)

(assert (= result!232486 result!232484))

(assert (=> d!995412 t!272789))

(declare-fun b_and!243335 () Bool)

(assert (= b_and!243285 (and (=> t!272789 result!232486) b_and!243335)))

(declare-fun tb!188503 () Bool)

(declare-fun t!272791 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0))))) t!272791) tb!188503))

(declare-fun result!232488 () Bool)

(assert (= result!232488 result!232484))

(assert (=> d!995412 t!272791))

(declare-fun b_and!243337 () Bool)

(assert (= b_and!243287 (and (=> t!272791 result!232488) b_and!243337)))

(declare-fun t!272793 () Bool)

(declare-fun tb!188505 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0))))) t!272793) tb!188505))

(declare-fun result!232490 () Bool)

(assert (= result!232490 result!232484))

(assert (=> d!995412 t!272793))

(declare-fun b_and!243339 () Bool)

(assert (= b_and!243289 (and (=> t!272793 result!232490) b_and!243339)))

(declare-fun t!272795 () Bool)

(declare-fun tb!188507 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0))))) t!272795) tb!188507))

(declare-fun result!232492 () Bool)

(assert (= result!232492 result!232484))

(assert (=> d!995412 t!272795))

(declare-fun b_and!243341 () Bool)

(assert (= b_and!243283 (and (=> t!272795 result!232492) b_and!243341)))

(declare-fun m!3861609 () Bool)

(assert (=> d!995412 m!3861609))

(declare-fun m!3861611 () Bool)

(assert (=> d!995412 m!3861611))

(assert (=> b!3457864 d!995412))

(declare-fun d!995414 () Bool)

(assert (=> d!995414 (= (tail!5430 (drop!2010 lt!1174997 0)) (drop!2010 lt!1174997 (+ 0 1)))))

(declare-fun lt!1175874 () Unit!52487)

(assert (=> d!995414 (= lt!1175874 (choose!20003 lt!1174997 0))))

(declare-fun e!2143425 () Bool)

(assert (=> d!995414 e!2143425))

(declare-fun res!1395876 () Bool)

(assert (=> d!995414 (=> (not res!1395876) (not e!2143425))))

(assert (=> d!995414 (= res!1395876 (>= 0 0))))

(assert (=> d!995414 (= (lemmaDropTail!1046 lt!1174997 0) lt!1175874)))

(declare-fun b!3459643 () Bool)

(assert (=> b!3459643 (= e!2143425 (< 0 (size!28190 lt!1174997)))))

(assert (= (and d!995414 res!1395876) b!3459643))

(assert (=> d!995414 m!3858469))

(assert (=> d!995414 m!3858469))

(assert (=> d!995414 m!3858471))

(assert (=> d!995414 m!3858473))

(declare-fun m!3861613 () Bool)

(assert (=> d!995414 m!3861613))

(declare-fun m!3861615 () Bool)

(assert (=> b!3459643 m!3861615))

(assert (=> b!3457864 d!995414))

(declare-fun d!995416 () Bool)

(declare-fun lt!1175875 () Token!10240)

(assert (=> d!995416 (= lt!1175875 (apply!8748 (list!13526 lt!1174849) 0))))

(assert (=> d!995416 (= lt!1175875 (apply!8749 (c!591767 lt!1174849) 0))))

(declare-fun e!2143426 () Bool)

(assert (=> d!995416 e!2143426))

(declare-fun res!1395877 () Bool)

(assert (=> d!995416 (=> (not res!1395877) (not e!2143426))))

(assert (=> d!995416 (= res!1395877 (<= 0 0))))

(assert (=> d!995416 (= (apply!8744 lt!1174849 0) lt!1175875)))

(declare-fun b!3459644 () Bool)

(assert (=> b!3459644 (= e!2143426 (< 0 (size!28183 lt!1174849)))))

(assert (= (and d!995416 res!1395877) b!3459644))

(assert (=> d!995416 m!3858437))

(assert (=> d!995416 m!3858437))

(declare-fun m!3861617 () Bool)

(assert (=> d!995416 m!3861617))

(declare-fun m!3861619 () Bool)

(assert (=> d!995416 m!3861619))

(assert (=> b!3459644 m!3858441))

(assert (=> b!3457864 d!995416))

(declare-fun d!995418 () Bool)

(assert (=> d!995418 (= (tail!5430 (drop!2010 lt!1174997 0)) (t!272530 (drop!2010 lt!1174997 0)))))

(assert (=> b!3457864 d!995418))

(declare-fun b!3459645 () Bool)

(declare-fun e!2143428 () List!37283)

(assert (=> b!3459645 (= e!2143428 (drop!2010 (t!272530 lt!1174996) (- 0 1)))))

(declare-fun d!995420 () Bool)

(declare-fun e!2143430 () Bool)

(assert (=> d!995420 e!2143430))

(declare-fun res!1395878 () Bool)

(assert (=> d!995420 (=> (not res!1395878) (not e!2143430))))

(declare-fun lt!1175876 () List!37283)

(assert (=> d!995420 (= res!1395878 (set.subset (content!5186 lt!1175876) (content!5186 lt!1174996)))))

(declare-fun e!2143431 () List!37283)

(assert (=> d!995420 (= lt!1175876 e!2143431)))

(declare-fun c!592228 () Bool)

(assert (=> d!995420 (= c!592228 (is-Nil!37159 lt!1174996))))

(assert (=> d!995420 (= (drop!2010 lt!1174996 0) lt!1175876)))

(declare-fun b!3459646 () Bool)

(declare-fun e!2143427 () Int)

(declare-fun call!249481 () Int)

(assert (=> b!3459646 (= e!2143427 (- call!249481 0))))

(declare-fun b!3459647 () Bool)

(declare-fun e!2143429 () Int)

(assert (=> b!3459647 (= e!2143429 call!249481)))

(declare-fun b!3459648 () Bool)

(assert (=> b!3459648 (= e!2143427 0)))

(declare-fun b!3459649 () Bool)

(assert (=> b!3459649 (= e!2143429 e!2143427)))

(declare-fun c!592230 () Bool)

(assert (=> b!3459649 (= c!592230 (>= 0 call!249481))))

(declare-fun b!3459650 () Bool)

(assert (=> b!3459650 (= e!2143431 e!2143428)))

(declare-fun c!592227 () Bool)

(assert (=> b!3459650 (= c!592227 (<= 0 0))))

(declare-fun b!3459651 () Bool)

(assert (=> b!3459651 (= e!2143428 lt!1174996)))

(declare-fun b!3459652 () Bool)

(assert (=> b!3459652 (= e!2143430 (= (size!28190 lt!1175876) e!2143429))))

(declare-fun c!592229 () Bool)

(assert (=> b!3459652 (= c!592229 (<= 0 0))))

(declare-fun bm!249476 () Bool)

(assert (=> bm!249476 (= call!249481 (size!28190 lt!1174996))))

(declare-fun b!3459653 () Bool)

(assert (=> b!3459653 (= e!2143431 Nil!37159)))

(assert (= (and d!995420 c!592228) b!3459653))

(assert (= (and d!995420 (not c!592228)) b!3459650))

(assert (= (and b!3459650 c!592227) b!3459651))

(assert (= (and b!3459650 (not c!592227)) b!3459645))

(assert (= (and d!995420 res!1395878) b!3459652))

(assert (= (and b!3459652 c!592229) b!3459647))

(assert (= (and b!3459652 (not c!592229)) b!3459649))

(assert (= (and b!3459649 c!592230) b!3459648))

(assert (= (and b!3459649 (not c!592230)) b!3459646))

(assert (= (or b!3459647 b!3459649 b!3459646) bm!249476))

(declare-fun m!3861625 () Bool)

(assert (=> b!3459645 m!3861625))

(declare-fun m!3861629 () Bool)

(assert (=> d!995420 m!3861629))

(declare-fun m!3861631 () Bool)

(assert (=> d!995420 m!3861631))

(declare-fun m!3861635 () Bool)

(assert (=> b!3459652 m!3861635))

(assert (=> bm!249476 m!3861597))

(assert (=> b!3457864 d!995420))

(declare-fun b!3459654 () Bool)

(declare-fun e!2143433 () List!37283)

(assert (=> b!3459654 (= e!2143433 (drop!2010 (t!272530 lt!1174997) (- (+ 0 1) 1)))))

(declare-fun d!995422 () Bool)

(declare-fun e!2143435 () Bool)

(assert (=> d!995422 e!2143435))

(declare-fun res!1395879 () Bool)

(assert (=> d!995422 (=> (not res!1395879) (not e!2143435))))

(declare-fun lt!1175885 () List!37283)

(assert (=> d!995422 (= res!1395879 (set.subset (content!5186 lt!1175885) (content!5186 lt!1174997)))))

(declare-fun e!2143436 () List!37283)

(assert (=> d!995422 (= lt!1175885 e!2143436)))

(declare-fun c!592232 () Bool)

(assert (=> d!995422 (= c!592232 (is-Nil!37159 lt!1174997))))

(assert (=> d!995422 (= (drop!2010 lt!1174997 (+ 0 1)) lt!1175885)))

(declare-fun b!3459655 () Bool)

(declare-fun e!2143432 () Int)

(declare-fun call!249482 () Int)

(assert (=> b!3459655 (= e!2143432 (- call!249482 (+ 0 1)))))

(declare-fun b!3459656 () Bool)

(declare-fun e!2143434 () Int)

(assert (=> b!3459656 (= e!2143434 call!249482)))

(declare-fun b!3459657 () Bool)

(assert (=> b!3459657 (= e!2143432 0)))

(declare-fun b!3459658 () Bool)

(assert (=> b!3459658 (= e!2143434 e!2143432)))

(declare-fun c!592234 () Bool)

(assert (=> b!3459658 (= c!592234 (>= (+ 0 1) call!249482))))

(declare-fun b!3459659 () Bool)

(assert (=> b!3459659 (= e!2143436 e!2143433)))

(declare-fun c!592231 () Bool)

(assert (=> b!3459659 (= c!592231 (<= (+ 0 1) 0))))

(declare-fun b!3459660 () Bool)

(assert (=> b!3459660 (= e!2143433 lt!1174997)))

(declare-fun b!3459661 () Bool)

(assert (=> b!3459661 (= e!2143435 (= (size!28190 lt!1175885) e!2143434))))

(declare-fun c!592233 () Bool)

(assert (=> b!3459661 (= c!592233 (<= (+ 0 1) 0))))

(declare-fun bm!249477 () Bool)

(assert (=> bm!249477 (= call!249482 (size!28190 lt!1174997))))

(declare-fun b!3459662 () Bool)

(assert (=> b!3459662 (= e!2143436 Nil!37159)))

(assert (= (and d!995422 c!592232) b!3459662))

(assert (= (and d!995422 (not c!592232)) b!3459659))

(assert (= (and b!3459659 c!592231) b!3459660))

(assert (= (and b!3459659 (not c!592231)) b!3459654))

(assert (= (and d!995422 res!1395879) b!3459661))

(assert (= (and b!3459661 c!592233) b!3459656))

(assert (= (and b!3459661 (not c!592233)) b!3459658))

(assert (= (and b!3459658 c!592234) b!3459657))

(assert (= (and b!3459658 (not c!592234)) b!3459655))

(assert (= (or b!3459656 b!3459658 b!3459655) bm!249477))

(declare-fun m!3861647 () Bool)

(assert (=> b!3459654 m!3861647))

(declare-fun m!3861649 () Bool)

(assert (=> d!995422 m!3861649))

(declare-fun m!3861651 () Bool)

(assert (=> d!995422 m!3861651))

(declare-fun m!3861653 () Bool)

(assert (=> b!3459661 m!3861653))

(assert (=> bm!249477 m!3861615))

(assert (=> b!3457864 d!995422))

(declare-fun d!995426 () Bool)

(declare-fun lt!1175891 () BalanceConc!22112)

(assert (=> d!995426 (= (list!13524 lt!1175891) (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174849 (+ 0 1)) (list!13524 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174849 0))))))))

(declare-fun e!2143437 () BalanceConc!22112)

(assert (=> d!995426 (= lt!1175891 e!2143437)))

(declare-fun c!592235 () Bool)

(assert (=> d!995426 (= c!592235 (>= (+ 0 1) (size!28183 lt!1174849)))))

(declare-fun e!2143438 () Bool)

(assert (=> d!995426 e!2143438))

(declare-fun res!1395880 () Bool)

(assert (=> d!995426 (=> (not res!1395880) (not e!2143438))))

(assert (=> d!995426 (= res!1395880 (>= (+ 0 1) 0))))

(assert (=> d!995426 (= (printTailRec!1521 thiss!18206 lt!1174849 (+ 0 1) (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174849 0)))) lt!1175891)))

(declare-fun b!3459663 () Bool)

(assert (=> b!3459663 (= e!2143438 (<= (+ 0 1) (size!28183 lt!1174849)))))

(declare-fun b!3459664 () Bool)

(assert (=> b!3459664 (= e!2143437 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174849 0))))))

(declare-fun b!3459665 () Bool)

(assert (=> b!3459665 (= e!2143437 (printTailRec!1521 thiss!18206 lt!1174849 (+ 0 1 1) (++!9158 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174849 0))) (charsOf!3451 (apply!8744 lt!1174849 (+ 0 1))))))))

(declare-fun lt!1175888 () List!37283)

(assert (=> b!3459665 (= lt!1175888 (list!13526 lt!1174849))))

(declare-fun lt!1175886 () Unit!52487)

(assert (=> b!3459665 (= lt!1175886 (lemmaDropApply!1162 lt!1175888 (+ 0 1)))))

(assert (=> b!3459665 (= (head!7318 (drop!2010 lt!1175888 (+ 0 1))) (apply!8748 lt!1175888 (+ 0 1)))))

(declare-fun lt!1175892 () Unit!52487)

(assert (=> b!3459665 (= lt!1175892 lt!1175886)))

(declare-fun lt!1175889 () List!37283)

(assert (=> b!3459665 (= lt!1175889 (list!13526 lt!1174849))))

(declare-fun lt!1175890 () Unit!52487)

(assert (=> b!3459665 (= lt!1175890 (lemmaDropTail!1046 lt!1175889 (+ 0 1)))))

(assert (=> b!3459665 (= (tail!5430 (drop!2010 lt!1175889 (+ 0 1))) (drop!2010 lt!1175889 (+ 0 1 1)))))

(declare-fun lt!1175887 () Unit!52487)

(assert (=> b!3459665 (= lt!1175887 lt!1175890)))

(assert (= (and d!995426 res!1395880) b!3459663))

(assert (= (and d!995426 c!592235) b!3459664))

(assert (= (and d!995426 (not c!592235)) b!3459665))

(assert (=> d!995426 m!3858441))

(assert (=> d!995426 m!3858453))

(declare-fun m!3861655 () Bool)

(assert (=> d!995426 m!3861655))

(declare-fun m!3861657 () Bool)

(assert (=> d!995426 m!3861657))

(assert (=> d!995426 m!3861655))

(declare-fun m!3861659 () Bool)

(assert (=> d!995426 m!3861659))

(declare-fun m!3861661 () Bool)

(assert (=> d!995426 m!3861661))

(assert (=> d!995426 m!3861657))

(assert (=> b!3459663 m!3858441))

(assert (=> b!3459665 m!3858453))

(declare-fun m!3861663 () Bool)

(assert (=> b!3459665 m!3861663))

(declare-fun m!3861665 () Bool)

(assert (=> b!3459665 m!3861665))

(declare-fun m!3861667 () Bool)

(assert (=> b!3459665 m!3861667))

(declare-fun m!3861669 () Bool)

(assert (=> b!3459665 m!3861669))

(assert (=> b!3459665 m!3861667))

(assert (=> b!3459665 m!3861665))

(declare-fun m!3861671 () Bool)

(assert (=> b!3459665 m!3861671))

(declare-fun m!3861673 () Bool)

(assert (=> b!3459665 m!3861673))

(declare-fun m!3861675 () Bool)

(assert (=> b!3459665 m!3861675))

(assert (=> b!3459665 m!3861663))

(declare-fun m!3861677 () Bool)

(assert (=> b!3459665 m!3861677))

(assert (=> b!3459665 m!3858437))

(declare-fun m!3861681 () Bool)

(assert (=> b!3459665 m!3861681))

(declare-fun m!3861683 () Bool)

(assert (=> b!3459665 m!3861683))

(assert (=> b!3459665 m!3861675))

(assert (=> b!3459665 m!3861683))

(declare-fun m!3861685 () Bool)

(assert (=> b!3459665 m!3861685))

(declare-fun m!3861687 () Bool)

(assert (=> b!3459665 m!3861687))

(assert (=> b!3457864 d!995426))

(declare-fun d!995430 () Bool)

(assert (=> d!995430 (= (head!7318 (drop!2010 lt!1174996 0)) (apply!8748 lt!1174996 0))))

(declare-fun lt!1175893 () Unit!52487)

(assert (=> d!995430 (= lt!1175893 (choose!20004 lt!1174996 0))))

(declare-fun e!2143442 () Bool)

(assert (=> d!995430 e!2143442))

(declare-fun res!1395887 () Bool)

(assert (=> d!995430 (=> (not res!1395887) (not e!2143442))))

(assert (=> d!995430 (= res!1395887 (>= 0 0))))

(assert (=> d!995430 (= (lemmaDropApply!1162 lt!1174996 0) lt!1175893)))

(declare-fun b!3459672 () Bool)

(assert (=> b!3459672 (= e!2143442 (< 0 (size!28190 lt!1174996)))))

(assert (= (and d!995430 res!1395887) b!3459672))

(assert (=> d!995430 m!3858455))

(assert (=> d!995430 m!3858455))

(assert (=> d!995430 m!3858457))

(assert (=> d!995430 m!3858467))

(declare-fun m!3861691 () Bool)

(assert (=> d!995430 m!3861691))

(assert (=> b!3459672 m!3861597))

(assert (=> b!3457864 d!995430))

(declare-fun b!3459674 () Bool)

(declare-fun res!1395890 () Bool)

(declare-fun e!2143443 () Bool)

(assert (=> b!3459674 (=> (not res!1395890) (not e!2143443))))

(assert (=> b!3459674 (= res!1395890 (<= (height!1693 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174849 0))))) (+ (max!0 (height!1693 (c!591766 (BalanceConc!22113 Empty!11249))) (height!1693 (c!591766 (charsOf!3451 (apply!8744 lt!1174849 0))))) 1)))))

(declare-fun b!3459675 () Bool)

(declare-fun res!1395891 () Bool)

(assert (=> b!3459675 (=> (not res!1395891) (not e!2143443))))

(assert (=> b!3459675 (= res!1395891 (>= (height!1693 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174849 0))))) (max!0 (height!1693 (c!591766 (BalanceConc!22113 Empty!11249))) (height!1693 (c!591766 (charsOf!3451 (apply!8744 lt!1174849 0)))))))))

(declare-fun b!3459673 () Bool)

(declare-fun res!1395888 () Bool)

(assert (=> b!3459673 (=> (not res!1395888) (not e!2143443))))

(assert (=> b!3459673 (= res!1395888 (isBalanced!3414 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174849 0))))))))

(declare-fun b!3459676 () Bool)

(declare-fun lt!1175894 () BalanceConc!22112)

(assert (=> b!3459676 (= e!2143443 (= (list!13524 lt!1175894) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (apply!8744 lt!1174849 0))))))))

(declare-fun d!995434 () Bool)

(assert (=> d!995434 e!2143443))

(declare-fun res!1395889 () Bool)

(assert (=> d!995434 (=> (not res!1395889) (not e!2143443))))

(assert (=> d!995434 (= res!1395889 (appendAssocInst!802 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174849 0)))))))

(assert (=> d!995434 (= lt!1175894 (BalanceConc!22113 (++!9160 (c!591766 (BalanceConc!22113 Empty!11249)) (c!591766 (charsOf!3451 (apply!8744 lt!1174849 0))))))))

(assert (=> d!995434 (= (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (apply!8744 lt!1174849 0))) lt!1175894)))

(assert (= (and d!995434 res!1395889) b!3459673))

(assert (= (and b!3459673 res!1395888) b!3459674))

(assert (= (and b!3459674 res!1395890) b!3459675))

(assert (= (and b!3459675 res!1395891) b!3459676))

(declare-fun m!3861693 () Bool)

(assert (=> b!3459676 m!3861693))

(assert (=> b!3459676 m!3858443))

(assert (=> b!3459676 m!3858451))

(declare-fun m!3861695 () Bool)

(assert (=> b!3459676 m!3861695))

(assert (=> b!3459676 m!3858443))

(assert (=> b!3459676 m!3861695))

(declare-fun m!3861697 () Bool)

(assert (=> b!3459676 m!3861697))

(assert (=> b!3459674 m!3860011))

(declare-fun m!3861699 () Bool)

(assert (=> b!3459674 m!3861699))

(declare-fun m!3861701 () Bool)

(assert (=> b!3459674 m!3861701))

(declare-fun m!3861703 () Bool)

(assert (=> b!3459674 m!3861703))

(declare-fun m!3861705 () Bool)

(assert (=> b!3459674 m!3861705))

(assert (=> b!3459674 m!3861699))

(assert (=> b!3459674 m!3861703))

(assert (=> b!3459674 m!3860011))

(assert (=> b!3459675 m!3860011))

(assert (=> b!3459675 m!3861699))

(assert (=> b!3459675 m!3861701))

(assert (=> b!3459675 m!3861703))

(assert (=> b!3459675 m!3861705))

(assert (=> b!3459675 m!3861699))

(assert (=> b!3459675 m!3861703))

(assert (=> b!3459675 m!3860011))

(declare-fun m!3861707 () Bool)

(assert (=> d!995434 m!3861707))

(assert (=> d!995434 m!3861703))

(assert (=> b!3459673 m!3861703))

(assert (=> b!3459673 m!3861703))

(declare-fun m!3861709 () Bool)

(assert (=> b!3459673 m!3861709))

(assert (=> b!3457864 d!995434))

(declare-fun d!995436 () Bool)

(assert (=> d!995436 (= (head!7318 (drop!2010 lt!1174996 0)) (h!42579 (drop!2010 lt!1174996 0)))))

(assert (=> b!3457864 d!995436))

(declare-fun d!995438 () Bool)

(assert (=> d!995438 (= (list!13526 lt!1174849) (list!13530 (c!591767 lt!1174849)))))

(declare-fun bs!560318 () Bool)

(assert (= bs!560318 d!995438))

(assert (=> bs!560318 m!3859777))

(assert (=> b!3457864 d!995438))

(declare-fun b!3459683 () Bool)

(declare-fun e!2143449 () List!37283)

(assert (=> b!3459683 (= e!2143449 (drop!2010 (t!272530 lt!1174997) (- 0 1)))))

(declare-fun d!995440 () Bool)

(declare-fun e!2143451 () Bool)

(assert (=> d!995440 e!2143451))

(declare-fun res!1395894 () Bool)

(assert (=> d!995440 (=> (not res!1395894) (not e!2143451))))

(declare-fun lt!1175895 () List!37283)

(assert (=> d!995440 (= res!1395894 (set.subset (content!5186 lt!1175895) (content!5186 lt!1174997)))))

(declare-fun e!2143452 () List!37283)

(assert (=> d!995440 (= lt!1175895 e!2143452)))

(declare-fun c!592239 () Bool)

(assert (=> d!995440 (= c!592239 (is-Nil!37159 lt!1174997))))

(assert (=> d!995440 (= (drop!2010 lt!1174997 0) lt!1175895)))

(declare-fun b!3459684 () Bool)

(declare-fun e!2143448 () Int)

(declare-fun call!249483 () Int)

(assert (=> b!3459684 (= e!2143448 (- call!249483 0))))

(declare-fun b!3459685 () Bool)

(declare-fun e!2143450 () Int)

(assert (=> b!3459685 (= e!2143450 call!249483)))

(declare-fun b!3459686 () Bool)

(assert (=> b!3459686 (= e!2143448 0)))

(declare-fun b!3459687 () Bool)

(assert (=> b!3459687 (= e!2143450 e!2143448)))

(declare-fun c!592241 () Bool)

(assert (=> b!3459687 (= c!592241 (>= 0 call!249483))))

(declare-fun b!3459688 () Bool)

(assert (=> b!3459688 (= e!2143452 e!2143449)))

(declare-fun c!592238 () Bool)

(assert (=> b!3459688 (= c!592238 (<= 0 0))))

(declare-fun b!3459689 () Bool)

(assert (=> b!3459689 (= e!2143449 lt!1174997)))

(declare-fun b!3459690 () Bool)

(assert (=> b!3459690 (= e!2143451 (= (size!28190 lt!1175895) e!2143450))))

(declare-fun c!592240 () Bool)

(assert (=> b!3459690 (= c!592240 (<= 0 0))))

(declare-fun bm!249478 () Bool)

(assert (=> bm!249478 (= call!249483 (size!28190 lt!1174997))))

(declare-fun b!3459691 () Bool)

(assert (=> b!3459691 (= e!2143452 Nil!37159)))

(assert (= (and d!995440 c!592239) b!3459691))

(assert (= (and d!995440 (not c!592239)) b!3459688))

(assert (= (and b!3459688 c!592238) b!3459689))

(assert (= (and b!3459688 (not c!592238)) b!3459683))

(assert (= (and d!995440 res!1395894) b!3459690))

(assert (= (and b!3459690 c!592240) b!3459685))

(assert (= (and b!3459690 (not c!592240)) b!3459687))

(assert (= (and b!3459687 c!592241) b!3459686))

(assert (= (and b!3459687 (not c!592241)) b!3459684))

(assert (= (or b!3459685 b!3459687 b!3459684) bm!249478))

(declare-fun m!3861711 () Bool)

(assert (=> b!3459683 m!3861711))

(declare-fun m!3861713 () Bool)

(assert (=> d!995440 m!3861713))

(assert (=> d!995440 m!3861651))

(declare-fun m!3861715 () Bool)

(assert (=> b!3459690 m!3861715))

(assert (=> bm!249478 m!3861615))

(assert (=> b!3457864 d!995440))

(declare-fun d!995442 () Bool)

(declare-fun c!592243 () Bool)

(assert (=> d!995442 (= c!592243 (is-Empty!11249 (c!591766 (charsOf!3451 separatorToken!241))))))

(declare-fun e!2143455 () List!37281)

(assert (=> d!995442 (= (list!13527 (c!591766 (charsOf!3451 separatorToken!241))) e!2143455)))

(declare-fun b!3459697 () Bool)

(declare-fun e!2143456 () List!37281)

(assert (=> b!3459697 (= e!2143456 (list!13533 (xs!14423 (c!591766 (charsOf!3451 separatorToken!241)))))))

(declare-fun b!3459695 () Bool)

(assert (=> b!3459695 (= e!2143455 Nil!37157)))

(declare-fun b!3459696 () Bool)

(assert (=> b!3459696 (= e!2143455 e!2143456)))

(declare-fun c!592244 () Bool)

(assert (=> b!3459696 (= c!592244 (is-Leaf!17579 (c!591766 (charsOf!3451 separatorToken!241))))))

(declare-fun b!3459698 () Bool)

(assert (=> b!3459698 (= e!2143456 (++!9156 (list!13527 (left!28992 (c!591766 (charsOf!3451 separatorToken!241)))) (list!13527 (right!29322 (c!591766 (charsOf!3451 separatorToken!241))))))))

(assert (= (and d!995442 c!592243) b!3459695))

(assert (= (and d!995442 (not c!592243)) b!3459696))

(assert (= (and b!3459696 c!592244) b!3459697))

(assert (= (and b!3459696 (not c!592244)) b!3459698))

(declare-fun m!3861721 () Bool)

(assert (=> b!3459697 m!3861721))

(declare-fun m!3861723 () Bool)

(assert (=> b!3459698 m!3861723))

(declare-fun m!3861725 () Bool)

(assert (=> b!3459698 m!3861725))

(assert (=> b!3459698 m!3861723))

(assert (=> b!3459698 m!3861725))

(declare-fun m!3861727 () Bool)

(assert (=> b!3459698 m!3861727))

(assert (=> d!994488 d!995442))

(declare-fun d!995446 () Bool)

(declare-fun lt!1175896 () Bool)

(assert (=> d!995446 (= lt!1175896 (set.member (rule!8027 (_1!21571 (get!11893 lt!1175029))) (content!5183 rules!2135)))))

(declare-fun e!2143458 () Bool)

(assert (=> d!995446 (= lt!1175896 e!2143458)))

(declare-fun res!1395897 () Bool)

(assert (=> d!995446 (=> (not res!1395897) (not e!2143458))))

(assert (=> d!995446 (= res!1395897 (is-Cons!37158 rules!2135))))

(assert (=> d!995446 (= (contains!6885 rules!2135 (rule!8027 (_1!21571 (get!11893 lt!1175029)))) lt!1175896)))

(declare-fun b!3459699 () Bool)

(declare-fun e!2143457 () Bool)

(assert (=> b!3459699 (= e!2143458 e!2143457)))

(declare-fun res!1395896 () Bool)

(assert (=> b!3459699 (=> res!1395896 e!2143457)))

(assert (=> b!3459699 (= res!1395896 (= (h!42578 rules!2135) (rule!8027 (_1!21571 (get!11893 lt!1175029)))))))

(declare-fun b!3459700 () Bool)

(assert (=> b!3459700 (= e!2143457 (contains!6885 (t!272529 rules!2135) (rule!8027 (_1!21571 (get!11893 lt!1175029)))))))

(assert (= (and d!995446 res!1395897) b!3459699))

(assert (= (and b!3459699 (not res!1395896)) b!3459700))

(assert (=> d!995446 m!3858387))

(declare-fun m!3861729 () Bool)

(assert (=> d!995446 m!3861729))

(declare-fun m!3861731 () Bool)

(assert (=> b!3459700 m!3861731))

(assert (=> b!3457977 d!995446))

(assert (=> b!3457977 d!994798))

(declare-fun d!995448 () Bool)

(declare-fun res!1395898 () Bool)

(declare-fun e!2143459 () Bool)

(assert (=> d!995448 (=> res!1395898 e!2143459)))

(assert (=> d!995448 (= res!1395898 (is-Nil!37159 (t!272530 tokens!494)))))

(assert (=> d!995448 (= (forall!7916 (t!272530 tokens!494) lambda!121776) e!2143459)))

(declare-fun b!3459701 () Bool)

(declare-fun e!2143460 () Bool)

(assert (=> b!3459701 (= e!2143459 e!2143460)))

(declare-fun res!1395899 () Bool)

(assert (=> b!3459701 (=> (not res!1395899) (not e!2143460))))

(assert (=> b!3459701 (= res!1395899 (dynLambda!15651 lambda!121776 (h!42579 (t!272530 tokens!494))))))

(declare-fun b!3459702 () Bool)

(assert (=> b!3459702 (= e!2143460 (forall!7916 (t!272530 (t!272530 tokens!494)) lambda!121776))))

(assert (= (and d!995448 (not res!1395898)) b!3459701))

(assert (= (and b!3459701 res!1395899) b!3459702))

(declare-fun b_lambda!99591 () Bool)

(assert (=> (not b_lambda!99591) (not b!3459701)))

(assert (=> b!3459701 m!3858401))

(declare-fun m!3861733 () Bool)

(assert (=> b!3459702 m!3861733))

(assert (=> b!3457843 d!995448))

(assert (=> bm!249348 d!995012))

(declare-fun d!995450 () Bool)

(declare-fun lt!1175897 () Bool)

(assert (=> d!995450 (= lt!1175897 (set.member lt!1174844 (content!5182 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))))))))

(declare-fun e!2143461 () Bool)

(assert (=> d!995450 (= lt!1175897 e!2143461)))

(declare-fun res!1395900 () Bool)

(assert (=> d!995450 (=> (not res!1395900) (not e!2143461))))

(assert (=> d!995450 (= res!1395900 (is-Cons!37157 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241))))))))

(assert (=> d!995450 (= (contains!6886 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))) lt!1174844) lt!1175897)))

(declare-fun b!3459703 () Bool)

(declare-fun e!2143462 () Bool)

(assert (=> b!3459703 (= e!2143461 e!2143462)))

(declare-fun res!1395901 () Bool)

(assert (=> b!3459703 (=> res!1395901 e!2143462)))

(assert (=> b!3459703 (= res!1395901 (= (h!42577 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241))))) lt!1174844))))

(declare-fun b!3459704 () Bool)

(assert (=> b!3459704 (= e!2143462 (contains!6886 (t!272528 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241))))) lt!1174844))))

(assert (= (and d!995450 res!1395900) b!3459703))

(assert (= (and b!3459703 (not res!1395901)) b!3459704))

(declare-fun m!3861735 () Bool)

(assert (=> d!995450 m!3861735))

(declare-fun m!3861737 () Bool)

(assert (=> d!995450 m!3861737))

(declare-fun m!3861739 () Bool)

(assert (=> b!3459704 m!3861739))

(assert (=> b!3458234 d!995450))

(declare-fun d!995452 () Bool)

(declare-fun lt!1175898 () Int)

(assert (=> d!995452 (>= lt!1175898 0)))

(declare-fun e!2143463 () Int)

(assert (=> d!995452 (= lt!1175898 e!2143463)))

(declare-fun c!592245 () Bool)

(assert (=> d!995452 (= c!592245 (is-Nil!37157 lt!1175062))))

(assert (=> d!995452 (= (size!28184 lt!1175062) lt!1175898)))

(declare-fun b!3459705 () Bool)

(assert (=> b!3459705 (= e!2143463 0)))

(declare-fun b!3459706 () Bool)

(assert (=> b!3459706 (= e!2143463 (+ 1 (size!28184 (t!272528 lt!1175062))))))

(assert (= (and d!995452 c!592245) b!3459705))

(assert (= (and d!995452 (not c!592245)) b!3459706))

(declare-fun m!3861741 () Bool)

(assert (=> b!3459706 m!3861741))

(assert (=> b!3458053 d!995452))

(declare-fun d!995454 () Bool)

(declare-fun lt!1175899 () Int)

(assert (=> d!995454 (>= lt!1175899 0)))

(declare-fun e!2143464 () Int)

(assert (=> d!995454 (= lt!1175899 e!2143464)))

(declare-fun c!592246 () Bool)

(assert (=> d!995454 (= c!592246 (is-Nil!37157 lt!1174848))))

(assert (=> d!995454 (= (size!28184 lt!1174848) lt!1175899)))

(declare-fun b!3459707 () Bool)

(assert (=> b!3459707 (= e!2143464 0)))

(declare-fun b!3459708 () Bool)

(assert (=> b!3459708 (= e!2143464 (+ 1 (size!28184 (t!272528 lt!1174848))))))

(assert (= (and d!995454 c!592246) b!3459707))

(assert (= (and d!995454 (not c!592246)) b!3459708))

(assert (=> b!3459708 m!3859903))

(assert (=> b!3458053 d!995454))

(assert (=> b!3458053 d!994970))

(declare-fun d!995456 () Bool)

(declare-fun lt!1175900 () Token!10240)

(assert (=> d!995456 (contains!6889 (list!13526 (_1!21570 lt!1174845)) lt!1175900)))

(declare-fun e!2143465 () Token!10240)

(assert (=> d!995456 (= lt!1175900 e!2143465)))

(declare-fun c!592247 () Bool)

(assert (=> d!995456 (= c!592247 (= 0 0))))

(declare-fun e!2143466 () Bool)

(assert (=> d!995456 e!2143466))

(declare-fun res!1395902 () Bool)

(assert (=> d!995456 (=> (not res!1395902) (not e!2143466))))

(assert (=> d!995456 (= res!1395902 (<= 0 0))))

(assert (=> d!995456 (= (apply!8748 (list!13526 (_1!21570 lt!1174845)) 0) lt!1175900)))

(declare-fun b!3459709 () Bool)

(assert (=> b!3459709 (= e!2143466 (< 0 (size!28190 (list!13526 (_1!21570 lt!1174845)))))))

(declare-fun b!3459710 () Bool)

(assert (=> b!3459710 (= e!2143465 (head!7318 (list!13526 (_1!21570 lt!1174845))))))

(declare-fun b!3459711 () Bool)

(assert (=> b!3459711 (= e!2143465 (apply!8748 (tail!5430 (list!13526 (_1!21570 lt!1174845))) (- 0 1)))))

(assert (= (and d!995456 res!1395902) b!3459709))

(assert (= (and d!995456 c!592247) b!3459710))

(assert (= (and d!995456 (not c!592247)) b!3459711))

(assert (=> d!995456 m!3859157))

(declare-fun m!3861743 () Bool)

(assert (=> d!995456 m!3861743))

(assert (=> b!3459709 m!3859157))

(assert (=> b!3459709 m!3859159))

(assert (=> b!3459710 m!3859157))

(declare-fun m!3861745 () Bool)

(assert (=> b!3459710 m!3861745))

(assert (=> b!3459711 m!3859157))

(declare-fun m!3861747 () Bool)

(assert (=> b!3459711 m!3861747))

(assert (=> b!3459711 m!3861747))

(declare-fun m!3861749 () Bool)

(assert (=> b!3459711 m!3861749))

(assert (=> d!994620 d!995456))

(declare-fun d!995458 () Bool)

(assert (=> d!995458 (= (list!13526 (_1!21570 lt!1174845)) (list!13530 (c!591767 (_1!21570 lt!1174845))))))

(declare-fun bs!560319 () Bool)

(assert (= bs!560319 d!995458))

(declare-fun m!3861751 () Bool)

(assert (=> bs!560319 m!3861751))

(assert (=> d!994620 d!995458))

(declare-fun b!3459756 () Bool)

(declare-fun e!2143493 () Int)

(assert (=> b!3459756 (= e!2143493 0)))

(declare-fun bm!249482 () Bool)

(declare-fun c!592263 () Bool)

(declare-fun c!592264 () Bool)

(assert (=> bm!249482 (= c!592263 c!592264)))

(declare-fun call!249487 () Token!10240)

(assert (=> bm!249482 (= call!249487 (apply!8749 (ite c!592264 (left!28993 (c!591767 (_1!21570 lt!1174845))) (right!29323 (c!591767 (_1!21570 lt!1174845)))) e!2143493))))

(declare-fun b!3459758 () Bool)

(declare-fun e!2143490 () Token!10240)

(declare-fun apply!8752 (IArray!22505 Int) Token!10240)

(assert (=> b!3459758 (= e!2143490 (apply!8752 (xs!14424 (c!591767 (_1!21570 lt!1174845))) 0))))

(declare-fun b!3459759 () Bool)

(assert (=> b!3459759 (= e!2143493 (- 0 (size!28191 (left!28993 (c!591767 (_1!21570 lt!1174845))))))))

(declare-fun b!3459760 () Bool)

(declare-fun e!2143492 () Token!10240)

(assert (=> b!3459760 (= e!2143492 call!249487)))

(declare-fun b!3459761 () Bool)

(declare-fun e!2143491 () Bool)

(assert (=> b!3459761 (= e!2143491 (< 0 (size!28191 (c!591767 (_1!21570 lt!1174845)))))))

(declare-fun b!3459762 () Bool)

(assert (=> b!3459762 (= e!2143492 call!249487)))

(declare-fun b!3459757 () Bool)

(assert (=> b!3459757 (= e!2143490 e!2143492)))

(declare-fun lt!1175910 () Bool)

(declare-fun appendIndex!343 (List!37283 List!37283 Int) Bool)

(assert (=> b!3459757 (= lt!1175910 (appendIndex!343 (list!13530 (left!28993 (c!591767 (_1!21570 lt!1174845)))) (list!13530 (right!29323 (c!591767 (_1!21570 lt!1174845)))) 0))))

(assert (=> b!3459757 (= c!592264 (< 0 (size!28191 (left!28993 (c!591767 (_1!21570 lt!1174845))))))))

(declare-fun d!995460 () Bool)

(declare-fun lt!1175909 () Token!10240)

(assert (=> d!995460 (= lt!1175909 (apply!8748 (list!13530 (c!591767 (_1!21570 lt!1174845))) 0))))

(assert (=> d!995460 (= lt!1175909 e!2143490)))

(declare-fun c!592262 () Bool)

(assert (=> d!995460 (= c!592262 (is-Leaf!17580 (c!591767 (_1!21570 lt!1174845))))))

(assert (=> d!995460 e!2143491))

(declare-fun res!1395915 () Bool)

(assert (=> d!995460 (=> (not res!1395915) (not e!2143491))))

(assert (=> d!995460 (= res!1395915 (<= 0 0))))

(assert (=> d!995460 (= (apply!8749 (c!591767 (_1!21570 lt!1174845)) 0) lt!1175909)))

(assert (= (and d!995460 res!1395915) b!3459761))

(assert (= (and d!995460 c!592262) b!3459758))

(assert (= (and d!995460 (not c!592262)) b!3459757))

(assert (= (and b!3459757 c!592264) b!3459762))

(assert (= (and b!3459757 (not c!592264)) b!3459760))

(assert (= (or b!3459762 b!3459760) bm!249482))

(assert (= (and bm!249482 c!592263) b!3459756))

(assert (= (and bm!249482 (not c!592263)) b!3459759))

(declare-fun m!3861807 () Bool)

(assert (=> bm!249482 m!3861807))

(declare-fun m!3861809 () Bool)

(assert (=> b!3459757 m!3861809))

(declare-fun m!3861811 () Bool)

(assert (=> b!3459757 m!3861811))

(assert (=> b!3459757 m!3861809))

(assert (=> b!3459757 m!3861811))

(declare-fun m!3861813 () Bool)

(assert (=> b!3459757 m!3861813))

(declare-fun m!3861815 () Bool)

(assert (=> b!3459757 m!3861815))

(assert (=> b!3459759 m!3861815))

(assert (=> b!3459761 m!3859161))

(assert (=> d!995460 m!3861751))

(assert (=> d!995460 m!3861751))

(declare-fun m!3861817 () Bool)

(assert (=> d!995460 m!3861817))

(declare-fun m!3861819 () Bool)

(assert (=> b!3459758 m!3861819))

(assert (=> d!994620 d!995460))

(declare-fun d!995486 () Bool)

(assert (=> d!995486 (= (inv!17 (value!175416 (h!42579 tokens!494))) (= (charsToBigInt!1 (text!40117 (value!175416 (h!42579 tokens!494)))) (value!175409 (value!175416 (h!42579 tokens!494)))))))

(declare-fun bs!560326 () Bool)

(assert (= bs!560326 d!995486))

(declare-fun m!3861821 () Bool)

(assert (=> bs!560326 m!3861821))

(assert (=> b!3457952 d!995486))

(assert (=> b!3458357 d!995092))

(declare-fun lt!1175911 () Bool)

(declare-fun d!995488 () Bool)

(assert (=> d!995488 (= lt!1175911 (isEmpty!21510 (list!13524 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)))))))))

(assert (=> d!995488 (= lt!1175911 (isEmpty!21511 (c!591766 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241)))))))))

(assert (=> d!995488 (= (isEmpty!21504 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 separatorToken!241))))) lt!1175911)))

(declare-fun bs!560327 () Bool)

(assert (= bs!560327 d!995488))

(declare-fun m!3861823 () Bool)

(assert (=> bs!560327 m!3861823))

(assert (=> bs!560327 m!3861823))

(declare-fun m!3861825 () Bool)

(assert (=> bs!560327 m!3861825))

(declare-fun m!3861827 () Bool)

(assert (=> bs!560327 m!3861827))

(assert (=> b!3457896 d!995488))

(assert (=> b!3457896 d!994780))

(assert (=> b!3457896 d!994778))

(assert (=> b!3457896 d!994582))

(declare-fun d!995490 () Bool)

(assert (=> d!995490 (= (list!13524 (_2!21570 lt!1175189)) (list!13527 (c!591766 (_2!21570 lt!1175189))))))

(declare-fun bs!560328 () Bool)

(assert (= bs!560328 d!995490))

(declare-fun m!3861829 () Bool)

(assert (=> bs!560328 m!3861829))

(assert (=> b!3458329 d!995490))

(declare-fun b!3459763 () Bool)

(declare-fun e!2143495 () Bool)

(declare-fun e!2143494 () Bool)

(assert (=> b!3459763 (= e!2143495 e!2143494)))

(declare-fun res!1395916 () Bool)

(declare-fun lt!1175914 () tuple2!36886)

(assert (=> b!3459763 (= res!1395916 (< (size!28184 (_2!21577 lt!1175914)) (size!28184 (list!13524 lt!1174842))))))

(assert (=> b!3459763 (=> (not res!1395916) (not e!2143494))))

(declare-fun b!3459764 () Bool)

(declare-fun e!2143496 () tuple2!36886)

(assert (=> b!3459764 (= e!2143496 (tuple2!36887 Nil!37159 (list!13524 lt!1174842)))))

(declare-fun b!3459765 () Bool)

(declare-fun lt!1175913 () Option!7522)

(declare-fun lt!1175912 () tuple2!36886)

(assert (=> b!3459765 (= e!2143496 (tuple2!36887 (Cons!37159 (_1!21571 (v!36837 lt!1175913)) (_1!21577 lt!1175912)) (_2!21577 lt!1175912)))))

(assert (=> b!3459765 (= lt!1175912 (lexList!1448 thiss!18206 rules!2135 (_2!21571 (v!36837 lt!1175913))))))

(declare-fun b!3459767 () Bool)

(assert (=> b!3459767 (= e!2143495 (= (_2!21577 lt!1175914) (list!13524 lt!1174842)))))

(declare-fun d!995492 () Bool)

(assert (=> d!995492 e!2143495))

(declare-fun c!592265 () Bool)

(assert (=> d!995492 (= c!592265 (> (size!28190 (_1!21577 lt!1175914)) 0))))

(assert (=> d!995492 (= lt!1175914 e!2143496)))

(declare-fun c!592266 () Bool)

(assert (=> d!995492 (= c!592266 (is-Some!7521 lt!1175913))))

(assert (=> d!995492 (= lt!1175913 (maxPrefix!2566 thiss!18206 rules!2135 (list!13524 lt!1174842)))))

(assert (=> d!995492 (= (lexList!1448 thiss!18206 rules!2135 (list!13524 lt!1174842)) lt!1175914)))

(declare-fun b!3459766 () Bool)

(assert (=> b!3459766 (= e!2143494 (not (isEmpty!21518 (_1!21577 lt!1175914))))))

(assert (= (and d!995492 c!592266) b!3459765))

(assert (= (and d!995492 (not c!592266)) b!3459764))

(assert (= (and d!995492 c!592265) b!3459763))

(assert (= (and d!995492 (not c!592265)) b!3459767))

(assert (= (and b!3459763 res!1395916) b!3459766))

(declare-fun m!3861831 () Bool)

(assert (=> b!3459763 m!3861831))

(assert (=> b!3459763 m!3859145))

(declare-fun m!3861833 () Bool)

(assert (=> b!3459763 m!3861833))

(declare-fun m!3861835 () Bool)

(assert (=> b!3459765 m!3861835))

(declare-fun m!3861837 () Bool)

(assert (=> d!995492 m!3861837))

(assert (=> d!995492 m!3859145))

(declare-fun m!3861839 () Bool)

(assert (=> d!995492 m!3861839))

(declare-fun m!3861841 () Bool)

(assert (=> b!3459766 m!3861841))

(assert (=> b!3458329 d!995492))

(declare-fun d!995494 () Bool)

(assert (=> d!995494 (= (list!13524 lt!1174842) (list!13527 (c!591766 lt!1174842)))))

(declare-fun bs!560329 () Bool)

(assert (= bs!560329 d!995494))

(declare-fun m!3861843 () Bool)

(assert (=> bs!560329 m!3861843))

(assert (=> b!3458329 d!995494))

(assert (=> b!3458059 d!994448))

(assert (=> b!3458059 d!994446))

(declare-fun b!3459770 () Bool)

(declare-fun res!1395918 () Bool)

(declare-fun e!2143497 () Bool)

(assert (=> b!3459770 (=> (not res!1395918) (not e!2143497))))

(declare-fun lt!1175915 () List!37281)

(assert (=> b!3459770 (= res!1395918 (= (size!28184 lt!1175915) (+ (size!28184 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241)))) (size!28184 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241)))))))

(declare-fun d!995496 () Bool)

(assert (=> d!995496 e!2143497))

(declare-fun res!1395917 () Bool)

(assert (=> d!995496 (=> (not res!1395917) (not e!2143497))))

(assert (=> d!995496 (= res!1395917 (= (content!5182 lt!1175915) (set.union (content!5182 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241)))) (content!5182 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241)))))))

(declare-fun e!2143498 () List!37281)

(assert (=> d!995496 (= lt!1175915 e!2143498)))

(declare-fun c!592267 () Bool)

(assert (=> d!995496 (= c!592267 (is-Nil!37157 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241)))))))

(assert (=> d!995496 (= (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241)) lt!1175915)))

(declare-fun b!3459769 () Bool)

(assert (=> b!3459769 (= e!2143498 (Cons!37157 (h!42577 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241)))) (++!9156 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241)))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241))))))

(declare-fun b!3459771 () Bool)

(assert (=> b!3459771 (= e!2143497 (or (not (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241) Nil!37157)) (= lt!1175915 (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun b!3459768 () Bool)

(assert (=> b!3459768 (= e!2143498 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 tokens!494) separatorToken!241))))

(assert (= (and d!995496 c!592267) b!3459768))

(assert (= (and d!995496 (not c!592267)) b!3459769))

(assert (= (and d!995496 res!1395917) b!3459770))

(assert (= (and b!3459770 res!1395918) b!3459771))

(declare-fun m!3861845 () Bool)

(assert (=> b!3459770 m!3861845))

(assert (=> b!3459770 m!3858731))

(declare-fun m!3861847 () Bool)

(assert (=> b!3459770 m!3861847))

(assert (=> b!3459770 m!3858041))

(declare-fun m!3861849 () Bool)

(assert (=> b!3459770 m!3861849))

(declare-fun m!3861851 () Bool)

(assert (=> d!995496 m!3861851))

(assert (=> d!995496 m!3858731))

(declare-fun m!3861853 () Bool)

(assert (=> d!995496 m!3861853))

(assert (=> d!995496 m!3858041))

(declare-fun m!3861855 () Bool)

(assert (=> d!995496 m!3861855))

(assert (=> b!3459769 m!3858041))

(declare-fun m!3861857 () Bool)

(assert (=> b!3459769 m!3861857))

(assert (=> b!3458059 d!995496))

(assert (=> b!3458059 d!994476))

(assert (=> b!3458059 d!994488))

(declare-fun b!3459774 () Bool)

(declare-fun res!1395920 () Bool)

(declare-fun e!2143499 () Bool)

(assert (=> b!3459774 (=> (not res!1395920) (not e!2143499))))

(declare-fun lt!1175916 () List!37281)

(assert (=> b!3459774 (= res!1395920 (= (size!28184 lt!1175916) (+ (size!28184 (list!13524 (charsOf!3451 (h!42579 tokens!494)))) (size!28184 (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun d!995498 () Bool)

(assert (=> d!995498 e!2143499))

(declare-fun res!1395919 () Bool)

(assert (=> d!995498 (=> (not res!1395919) (not e!2143499))))

(assert (=> d!995498 (= res!1395919 (= (content!5182 lt!1175916) (set.union (content!5182 (list!13524 (charsOf!3451 (h!42579 tokens!494)))) (content!5182 (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun e!2143500 () List!37281)

(assert (=> d!995498 (= lt!1175916 e!2143500)))

(declare-fun c!592268 () Bool)

(assert (=> d!995498 (= c!592268 (is-Nil!37157 (list!13524 (charsOf!3451 (h!42579 tokens!494)))))))

(assert (=> d!995498 (= (++!9156 (list!13524 (charsOf!3451 (h!42579 tokens!494))) (list!13524 (charsOf!3451 separatorToken!241))) lt!1175916)))

(declare-fun b!3459773 () Bool)

(assert (=> b!3459773 (= e!2143500 (Cons!37157 (h!42577 (list!13524 (charsOf!3451 (h!42579 tokens!494)))) (++!9156 (t!272528 (list!13524 (charsOf!3451 (h!42579 tokens!494)))) (list!13524 (charsOf!3451 separatorToken!241)))))))

(declare-fun b!3459775 () Bool)

(assert (=> b!3459775 (= e!2143499 (or (not (= (list!13524 (charsOf!3451 separatorToken!241)) Nil!37157)) (= lt!1175916 (list!13524 (charsOf!3451 (h!42579 tokens!494))))))))

(declare-fun b!3459772 () Bool)

(assert (=> b!3459772 (= e!2143500 (list!13524 (charsOf!3451 separatorToken!241)))))

(assert (= (and d!995498 c!592268) b!3459772))

(assert (= (and d!995498 (not c!592268)) b!3459773))

(assert (= (and d!995498 res!1395919) b!3459774))

(assert (= (and b!3459774 res!1395920) b!3459775))

(declare-fun m!3861859 () Bool)

(assert (=> b!3459774 m!3861859))

(assert (=> b!3459774 m!3858067))

(declare-fun m!3861861 () Bool)

(assert (=> b!3459774 m!3861861))

(assert (=> b!3459774 m!3858053))

(assert (=> b!3459774 m!3860751))

(declare-fun m!3861863 () Bool)

(assert (=> d!995498 m!3861863))

(assert (=> d!995498 m!3858067))

(declare-fun m!3861865 () Bool)

(assert (=> d!995498 m!3861865))

(assert (=> d!995498 m!3858053))

(assert (=> d!995498 m!3860755))

(assert (=> b!3459773 m!3858053))

(declare-fun m!3861867 () Bool)

(assert (=> b!3459773 m!3861867))

(assert (=> b!3458059 d!995498))

(assert (=> b!3458059 d!994486))

(declare-fun d!995500 () Bool)

(assert (=> d!995500 (= (list!13526 lt!1175182) (list!13530 (c!591767 lt!1175182)))))

(declare-fun bs!560330 () Bool)

(assert (= bs!560330 d!995500))

(declare-fun m!3861869 () Bool)

(assert (=> bs!560330 m!3861869))

(assert (=> d!994582 d!995500))

(declare-fun d!995502 () Bool)

(declare-fun e!2143509 () Bool)

(assert (=> d!995502 e!2143509))

(declare-fun res!1395923 () Bool)

(assert (=> d!995502 (=> (not res!1395923) (not e!2143509))))

(declare-fun lt!1175921 () BalanceConc!22114)

(assert (=> d!995502 (= res!1395923 (= (list!13526 lt!1175921) (Cons!37159 separatorToken!241 Nil!37159)))))

(assert (=> d!995502 (= lt!1175921 (choose!20005 separatorToken!241))))

(assert (=> d!995502 (= (singleton!1119 separatorToken!241) lt!1175921)))

(declare-fun b!3459790 () Bool)

(assert (=> b!3459790 (= e!2143509 (isBalanced!3412 (c!591767 lt!1175921)))))

(assert (= (and d!995502 res!1395923) b!3459790))

(declare-fun m!3861871 () Bool)

(assert (=> d!995502 m!3861871))

(declare-fun m!3861873 () Bool)

(assert (=> d!995502 m!3861873))

(declare-fun m!3861875 () Bool)

(assert (=> b!3459790 m!3861875))

(assert (=> d!994582 d!995502))

(assert (=> b!3458175 d!994940))

(assert (=> b!3458175 d!994942))

(declare-fun b!3459791 () Bool)

(declare-fun e!2143511 () Option!7521)

(assert (=> b!3459791 (= e!2143511 (Some!7520 (h!42578 (t!272529 rules!2135))))))

(declare-fun b!3459792 () Bool)

(declare-fun e!2143513 () Bool)

(declare-fun lt!1175923 () Option!7521)

(assert (=> b!3459792 (= e!2143513 (= (tag!6045 (get!11891 lt!1175923)) (tag!6045 (rule!8027 separatorToken!241))))))

(declare-fun b!3459793 () Bool)

(declare-fun e!2143512 () Option!7521)

(assert (=> b!3459793 (= e!2143511 e!2143512)))

(declare-fun c!592275 () Bool)

(assert (=> b!3459793 (= c!592275 (and (is-Cons!37158 (t!272529 rules!2135)) (not (= (tag!6045 (h!42578 (t!272529 rules!2135))) (tag!6045 (rule!8027 separatorToken!241))))))))

(declare-fun b!3459794 () Bool)

(assert (=> b!3459794 (= e!2143512 None!7520)))

(declare-fun b!3459796 () Bool)

(declare-fun e!2143510 () Bool)

(assert (=> b!3459796 (= e!2143510 e!2143513)))

(declare-fun res!1395925 () Bool)

(assert (=> b!3459796 (=> (not res!1395925) (not e!2143513))))

(assert (=> b!3459796 (= res!1395925 (contains!6885 (t!272529 rules!2135) (get!11891 lt!1175923)))))

(declare-fun b!3459795 () Bool)

(declare-fun lt!1175924 () Unit!52487)

(declare-fun lt!1175922 () Unit!52487)

(assert (=> b!3459795 (= lt!1175924 lt!1175922)))

(assert (=> b!3459795 (rulesInvariant!4423 thiss!18206 (t!272529 (t!272529 rules!2135)))))

(assert (=> b!3459795 (= lt!1175922 (lemmaInvariantOnRulesThenOnTail!432 thiss!18206 (h!42578 (t!272529 rules!2135)) (t!272529 (t!272529 rules!2135))))))

(assert (=> b!3459795 (= e!2143512 (getRuleFromTag!1080 thiss!18206 (t!272529 (t!272529 rules!2135)) (tag!6045 (rule!8027 separatorToken!241))))))

(declare-fun d!995504 () Bool)

(assert (=> d!995504 e!2143510))

(declare-fun res!1395924 () Bool)

(assert (=> d!995504 (=> res!1395924 e!2143510)))

(assert (=> d!995504 (= res!1395924 (isEmpty!21516 lt!1175923))))

(assert (=> d!995504 (= lt!1175923 e!2143511)))

(declare-fun c!592276 () Bool)

(assert (=> d!995504 (= c!592276 (and (is-Cons!37158 (t!272529 rules!2135)) (= (tag!6045 (h!42578 (t!272529 rules!2135))) (tag!6045 (rule!8027 separatorToken!241)))))))

(assert (=> d!995504 (rulesInvariant!4423 thiss!18206 (t!272529 rules!2135))))

(assert (=> d!995504 (= (getRuleFromTag!1080 thiss!18206 (t!272529 rules!2135) (tag!6045 (rule!8027 separatorToken!241))) lt!1175923)))

(assert (= (and d!995504 c!592276) b!3459791))

(assert (= (and d!995504 (not c!592276)) b!3459793))

(assert (= (and b!3459793 c!592275) b!3459795))

(assert (= (and b!3459793 (not c!592275)) b!3459794))

(assert (= (and d!995504 (not res!1395924)) b!3459796))

(assert (= (and b!3459796 res!1395925) b!3459792))

(declare-fun m!3861877 () Bool)

(assert (=> b!3459792 m!3861877))

(assert (=> b!3459796 m!3861877))

(assert (=> b!3459796 m!3861877))

(declare-fun m!3861879 () Bool)

(assert (=> b!3459796 m!3861879))

(assert (=> b!3459795 m!3860207))

(assert (=> b!3459795 m!3860209))

(declare-fun m!3861881 () Bool)

(assert (=> b!3459795 m!3861881))

(declare-fun m!3861883 () Bool)

(assert (=> d!995504 m!3861883))

(assert (=> d!995504 m!3858911))

(assert (=> b!3458175 d!995504))

(declare-fun b!3459824 () Bool)

(declare-fun res!1395940 () Bool)

(declare-fun e!2143526 () Bool)

(assert (=> b!3459824 (=> (not res!1395940) (not e!2143526))))

(declare-fun height!1695 (Conc!11250) Int)

(assert (=> b!3459824 (= res!1395940 (<= (- (height!1695 (left!28993 (c!591767 lt!1175193))) (height!1695 (right!29323 (c!591767 lt!1175193)))) 1))))

(declare-fun b!3459825 () Bool)

(declare-fun res!1395944 () Bool)

(assert (=> b!3459825 (=> (not res!1395944) (not e!2143526))))

(assert (=> b!3459825 (= res!1395944 (isBalanced!3412 (right!29323 (c!591767 lt!1175193))))))

(declare-fun b!3459826 () Bool)

(declare-fun res!1395939 () Bool)

(assert (=> b!3459826 (=> (not res!1395939) (not e!2143526))))

(assert (=> b!3459826 (= res!1395939 (isBalanced!3412 (left!28993 (c!591767 lt!1175193))))))

(declare-fun b!3459827 () Bool)

(declare-fun res!1395943 () Bool)

(assert (=> b!3459827 (=> (not res!1395943) (not e!2143526))))

(assert (=> b!3459827 (= res!1395943 (not (isEmpty!21519 (left!28993 (c!591767 lt!1175193)))))))

(declare-fun d!995506 () Bool)

(declare-fun res!1395942 () Bool)

(declare-fun e!2143527 () Bool)

(assert (=> d!995506 (=> res!1395942 e!2143527)))

(assert (=> d!995506 (= res!1395942 (not (is-Node!11250 (c!591767 lt!1175193))))))

(assert (=> d!995506 (= (isBalanced!3412 (c!591767 lt!1175193)) e!2143527)))

(declare-fun b!3459828 () Bool)

(assert (=> b!3459828 (= e!2143527 e!2143526)))

(declare-fun res!1395941 () Bool)

(assert (=> b!3459828 (=> (not res!1395941) (not e!2143526))))

(assert (=> b!3459828 (= res!1395941 (<= (- 1) (- (height!1695 (left!28993 (c!591767 lt!1175193))) (height!1695 (right!29323 (c!591767 lt!1175193))))))))

(declare-fun b!3459829 () Bool)

(assert (=> b!3459829 (= e!2143526 (not (isEmpty!21519 (right!29323 (c!591767 lt!1175193)))))))

(assert (= (and d!995506 (not res!1395942)) b!3459828))

(assert (= (and b!3459828 res!1395941) b!3459824))

(assert (= (and b!3459824 res!1395940) b!3459826))

(assert (= (and b!3459826 res!1395939) b!3459825))

(assert (= (and b!3459825 res!1395944) b!3459827))

(assert (= (and b!3459827 res!1395943) b!3459829))

(declare-fun m!3861923 () Bool)

(assert (=> b!3459829 m!3861923))

(declare-fun m!3861925 () Bool)

(assert (=> b!3459824 m!3861925))

(declare-fun m!3861927 () Bool)

(assert (=> b!3459824 m!3861927))

(assert (=> b!3459828 m!3861925))

(assert (=> b!3459828 m!3861927))

(declare-fun m!3861929 () Bool)

(assert (=> b!3459827 m!3861929))

(declare-fun m!3861931 () Bool)

(assert (=> b!3459826 m!3861931))

(declare-fun m!3861933 () Bool)

(assert (=> b!3459825 m!3861933))

(assert (=> b!3458336 d!995506))

(declare-fun d!995522 () Bool)

(declare-fun c!592285 () Bool)

(assert (=> d!995522 (= c!592285 (is-Nil!37157 lt!1174975))))

(declare-fun e!2143530 () (Set C!20578))

(assert (=> d!995522 (= (content!5182 lt!1174975) e!2143530)))

(declare-fun b!3459834 () Bool)

(assert (=> b!3459834 (= e!2143530 (as set.empty (Set C!20578)))))

(declare-fun b!3459835 () Bool)

(assert (=> b!3459835 (= e!2143530 (set.union (set.insert (h!42577 lt!1174975) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1174975))))))

(assert (= (and d!995522 c!592285) b!3459834))

(assert (= (and d!995522 (not c!592285)) b!3459835))

(declare-fun m!3861943 () Bool)

(assert (=> b!3459835 m!3861943))

(declare-fun m!3861947 () Bool)

(assert (=> b!3459835 m!3861947))

(assert (=> d!994404 d!995522))

(declare-fun d!995526 () Bool)

(declare-fun c!592286 () Bool)

(assert (=> d!995526 (= c!592286 (is-Nil!37157 (++!9156 lt!1174846 lt!1174848)))))

(declare-fun e!2143531 () (Set C!20578))

(assert (=> d!995526 (= (content!5182 (++!9156 lt!1174846 lt!1174848)) e!2143531)))

(declare-fun b!3459836 () Bool)

(assert (=> b!3459836 (= e!2143531 (as set.empty (Set C!20578)))))

(declare-fun b!3459837 () Bool)

(assert (=> b!3459837 (= e!2143531 (set.union (set.insert (h!42577 (++!9156 lt!1174846 lt!1174848)) (as set.empty (Set C!20578))) (content!5182 (t!272528 (++!9156 lt!1174846 lt!1174848)))))))

(assert (= (and d!995526 c!592286) b!3459836))

(assert (= (and d!995526 (not c!592286)) b!3459837))

(declare-fun m!3861949 () Bool)

(assert (=> b!3459837 m!3861949))

(assert (=> b!3459837 m!3861591))

(assert (=> d!994404 d!995526))

(assert (=> d!994404 d!995398))

(declare-fun d!995528 () Bool)

(declare-fun lt!1175931 () Int)

(assert (=> d!995528 (= lt!1175931 (size!28190 (list!13526 (_1!21570 lt!1175189))))))

(assert (=> d!995528 (= lt!1175931 (size!28191 (c!591767 (_1!21570 lt!1175189))))))

(assert (=> d!995528 (= (size!28183 (_1!21570 lt!1175189)) lt!1175931)))

(declare-fun bs!560336 () Bool)

(assert (= bs!560336 d!995528))

(assert (=> bs!560336 m!3859149))

(assert (=> bs!560336 m!3859149))

(declare-fun m!3861951 () Bool)

(assert (=> bs!560336 m!3861951))

(declare-fun m!3861953 () Bool)

(assert (=> bs!560336 m!3861953))

(assert (=> d!994586 d!995528))

(declare-fun lt!1175959 () tuple2!36872)

(declare-fun b!3459838 () Bool)

(declare-fun lt!1175958 () Option!7525)

(assert (=> b!3459838 (= lt!1175959 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175958))))))

(declare-fun e!2143535 () tuple2!36872)

(assert (=> b!3459838 (= e!2143535 (tuple2!36873 (prepend!1260 (_1!21570 lt!1175959) (_1!21578 (v!36850 lt!1175958))) (_2!21570 lt!1175959)))))

(declare-fun b!3459839 () Bool)

(declare-fun e!2143532 () tuple2!36872)

(assert (=> b!3459839 (= e!2143532 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1174842))))

(declare-fun b!3459840 () Bool)

(declare-fun e!2143534 () tuple2!36872)

(assert (=> b!3459840 (= e!2143534 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1174842))))

(declare-fun b!3459841 () Bool)

(declare-fun lt!1175952 () tuple2!36872)

(declare-fun e!2143533 () Bool)

(assert (=> b!3459841 (= e!2143533 (= (list!13524 (_2!21570 lt!1175952)) (list!13524 (_2!21570 (lexRec!748 thiss!18206 rules!2135 lt!1174842)))))))

(declare-fun lt!1175963 () Option!7525)

(declare-fun lt!1175945 () BalanceConc!22112)

(declare-fun b!3459842 () Bool)

(assert (=> b!3459842 (= e!2143532 (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174842 lt!1175945 (_2!21578 (v!36850 lt!1175963)) (append!964 (BalanceConc!22115 Empty!11250) (_1!21578 (v!36850 lt!1175963)))))))

(declare-fun lt!1175942 () tuple2!36872)

(assert (=> b!3459842 (= lt!1175942 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175963))))))

(declare-fun lt!1175937 () List!37281)

(assert (=> b!3459842 (= lt!1175937 (list!13524 (BalanceConc!22113 Empty!11249)))))

(declare-fun lt!1175960 () List!37281)

(assert (=> b!3459842 (= lt!1175960 (list!13524 (charsOf!3451 (_1!21578 (v!36850 lt!1175963)))))))

(declare-fun lt!1175940 () List!37281)

(assert (=> b!3459842 (= lt!1175940 (list!13524 (_2!21578 (v!36850 lt!1175963))))))

(declare-fun lt!1175950 () Unit!52487)

(assert (=> b!3459842 (= lt!1175950 (lemmaConcatAssociativity!1955 lt!1175937 lt!1175960 lt!1175940))))

(assert (=> b!3459842 (= (++!9156 (++!9156 lt!1175937 lt!1175960) lt!1175940) (++!9156 lt!1175937 (++!9156 lt!1175960 lt!1175940)))))

(declare-fun lt!1175964 () Unit!52487)

(assert (=> b!3459842 (= lt!1175964 lt!1175950)))

(declare-fun lt!1175932 () Option!7525)

(assert (=> b!3459842 (= lt!1175932 (maxPrefixZipperSequence!1141 thiss!18206 rules!2135 lt!1174842))))

(declare-fun c!592289 () Bool)

(assert (=> b!3459842 (= c!592289 (is-Some!7524 lt!1175932))))

(assert (=> b!3459842 (= (lexRec!748 thiss!18206 rules!2135 lt!1174842) e!2143534)))

(declare-fun lt!1175934 () Unit!52487)

(declare-fun Unit!52503 () Unit!52487)

(assert (=> b!3459842 (= lt!1175934 Unit!52503)))

(declare-fun lt!1175933 () List!37283)

(assert (=> b!3459842 (= lt!1175933 (list!13526 (BalanceConc!22115 Empty!11250)))))

(declare-fun lt!1175941 () List!37283)

(assert (=> b!3459842 (= lt!1175941 (Cons!37159 (_1!21578 (v!36850 lt!1175963)) Nil!37159))))

(declare-fun lt!1175949 () List!37283)

(assert (=> b!3459842 (= lt!1175949 (list!13526 (_1!21570 lt!1175942)))))

(declare-fun lt!1175962 () Unit!52487)

(assert (=> b!3459842 (= lt!1175962 (lemmaConcatAssociativity!1957 lt!1175933 lt!1175941 lt!1175949))))

(assert (=> b!3459842 (= (++!9161 (++!9161 lt!1175933 lt!1175941) lt!1175949) (++!9161 lt!1175933 (++!9161 lt!1175941 lt!1175949)))))

(declare-fun lt!1175946 () Unit!52487)

(assert (=> b!3459842 (= lt!1175946 lt!1175962)))

(declare-fun lt!1175936 () List!37281)

(assert (=> b!3459842 (= lt!1175936 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (_1!21578 (v!36850 lt!1175963))))))))

(declare-fun lt!1175943 () List!37281)

(assert (=> b!3459842 (= lt!1175943 (list!13524 (_2!21578 (v!36850 lt!1175963))))))

(declare-fun lt!1175951 () List!37283)

(assert (=> b!3459842 (= lt!1175951 (list!13526 (append!964 (BalanceConc!22115 Empty!11250) (_1!21578 (v!36850 lt!1175963)))))))

(declare-fun lt!1175954 () Unit!52487)

(assert (=> b!3459842 (= lt!1175954 (lemmaLexThenLexPrefix!513 thiss!18206 rules!2135 lt!1175936 lt!1175943 lt!1175951 (list!13526 (_1!21570 lt!1175942)) (list!13524 (_2!21570 lt!1175942))))))

(assert (=> b!3459842 (= (lexList!1448 thiss!18206 rules!2135 lt!1175936) (tuple2!36887 lt!1175951 Nil!37157))))

(declare-fun lt!1175961 () Unit!52487)

(assert (=> b!3459842 (= lt!1175961 lt!1175954)))

(declare-fun lt!1175935 () BalanceConc!22112)

(assert (=> b!3459842 (= lt!1175935 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175963)))))))

(assert (=> b!3459842 (= lt!1175958 (maxPrefixZipperSequence!1141 thiss!18206 rules!2135 lt!1175935))))

(declare-fun c!592287 () Bool)

(assert (=> b!3459842 (= c!592287 (is-Some!7524 lt!1175958))))

(assert (=> b!3459842 (= (lexRec!748 thiss!18206 rules!2135 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175963))))) e!2143535)))

(declare-fun lt!1175948 () Unit!52487)

(declare-fun Unit!52504 () Unit!52487)

(assert (=> b!3459842 (= lt!1175948 Unit!52504)))

(assert (=> b!3459842 (= lt!1175945 (++!9158 (BalanceConc!22113 Empty!11249) (charsOf!3451 (_1!21578 (v!36850 lt!1175963)))))))

(declare-fun lt!1175939 () List!37281)

(assert (=> b!3459842 (= lt!1175939 (list!13524 lt!1175945))))

(declare-fun lt!1175957 () List!37281)

(assert (=> b!3459842 (= lt!1175957 (list!13524 (_2!21578 (v!36850 lt!1175963))))))

(declare-fun lt!1175953 () Unit!52487)

(assert (=> b!3459842 (= lt!1175953 (lemmaConcatTwoListThenFSndIsSuffix!595 lt!1175939 lt!1175957))))

(assert (=> b!3459842 (isSuffix!910 lt!1175957 (++!9156 lt!1175939 lt!1175957))))

(declare-fun lt!1175944 () Unit!52487)

(assert (=> b!3459842 (= lt!1175944 lt!1175953)))

(declare-fun d!995530 () Bool)

(assert (=> d!995530 e!2143533))

(declare-fun res!1395947 () Bool)

(assert (=> d!995530 (=> (not res!1395947) (not e!2143533))))

(assert (=> d!995530 (= res!1395947 (= (list!13526 (_1!21570 lt!1175952)) (list!13526 (_1!21570 (lexRec!748 thiss!18206 rules!2135 lt!1174842)))))))

(assert (=> d!995530 (= lt!1175952 e!2143532)))

(declare-fun c!592288 () Bool)

(assert (=> d!995530 (= c!592288 (is-Some!7524 lt!1175963))))

(assert (=> d!995530 (= lt!1175963 (maxPrefixZipperSequenceV2!535 thiss!18206 rules!2135 lt!1174842 lt!1174842))))

(declare-fun lt!1175956 () Unit!52487)

(declare-fun lt!1175965 () Unit!52487)

(assert (=> d!995530 (= lt!1175956 lt!1175965)))

(declare-fun lt!1175938 () List!37281)

(declare-fun lt!1175947 () List!37281)

(assert (=> d!995530 (isSuffix!910 lt!1175938 (++!9156 lt!1175947 lt!1175938))))

(assert (=> d!995530 (= lt!1175965 (lemmaConcatTwoListThenFSndIsSuffix!595 lt!1175947 lt!1175938))))

(assert (=> d!995530 (= lt!1175938 (list!13524 lt!1174842))))

(assert (=> d!995530 (= lt!1175947 (list!13524 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!995530 (= (lexTailRecV2!1056 thiss!18206 rules!2135 lt!1174842 (BalanceConc!22113 Empty!11249) lt!1174842 (BalanceConc!22115 Empty!11250)) lt!1175952)))

(declare-fun lt!1175955 () tuple2!36872)

(declare-fun b!3459843 () Bool)

(assert (=> b!3459843 (= lt!1175955 (lexRec!748 thiss!18206 rules!2135 (_2!21578 (v!36850 lt!1175932))))))

(assert (=> b!3459843 (= e!2143534 (tuple2!36873 (prepend!1260 (_1!21570 lt!1175955) (_1!21578 (v!36850 lt!1175932))) (_2!21570 lt!1175955)))))

(declare-fun b!3459844 () Bool)

(assert (=> b!3459844 (= e!2143535 (tuple2!36873 (BalanceConc!22115 Empty!11250) lt!1175935))))

(assert (= (and d!995530 c!592288) b!3459842))

(assert (= (and d!995530 (not c!592288)) b!3459839))

(assert (= (and b!3459842 c!592289) b!3459843))

(assert (= (and b!3459842 (not c!592289)) b!3459840))

(assert (= (and b!3459842 c!592287) b!3459838))

(assert (= (and b!3459842 (not c!592287)) b!3459844))

(assert (= (and d!995530 res!1395947) b!3459841))

(declare-fun m!3861979 () Bool)

(assert (=> b!3459838 m!3861979))

(declare-fun m!3861981 () Bool)

(assert (=> b!3459838 m!3861981))

(declare-fun m!3861983 () Bool)

(assert (=> b!3459841 m!3861983))

(declare-fun m!3861985 () Bool)

(assert (=> b!3459841 m!3861985))

(declare-fun m!3861987 () Bool)

(assert (=> b!3459841 m!3861987))

(declare-fun m!3861989 () Bool)

(assert (=> b!3459842 m!3861989))

(declare-fun m!3861991 () Bool)

(assert (=> b!3459842 m!3861991))

(declare-fun m!3861997 () Bool)

(assert (=> b!3459842 m!3861997))

(declare-fun m!3861999 () Bool)

(assert (=> b!3459842 m!3861999))

(declare-fun m!3862003 () Bool)

(assert (=> b!3459842 m!3862003))

(declare-fun m!3862007 () Bool)

(assert (=> b!3459842 m!3862007))

(declare-fun m!3862009 () Bool)

(assert (=> b!3459842 m!3862009))

(assert (=> b!3459842 m!3858443))

(declare-fun m!3862013 () Bool)

(assert (=> b!3459842 m!3862013))

(declare-fun m!3862015 () Bool)

(assert (=> b!3459842 m!3862015))

(declare-fun m!3862017 () Bool)

(assert (=> b!3459842 m!3862017))

(declare-fun m!3862021 () Bool)

(assert (=> b!3459842 m!3862021))

(declare-fun m!3862023 () Bool)

(assert (=> b!3459842 m!3862023))

(declare-fun m!3862027 () Bool)

(assert (=> b!3459842 m!3862027))

(assert (=> b!3459842 m!3861997))

(declare-fun m!3862029 () Bool)

(assert (=> b!3459842 m!3862029))

(assert (=> b!3459842 m!3861997))

(assert (=> b!3459842 m!3862017))

(declare-fun m!3862031 () Bool)

(assert (=> b!3459842 m!3862031))

(declare-fun m!3862033 () Bool)

(assert (=> b!3459842 m!3862033))

(declare-fun m!3862035 () Bool)

(assert (=> b!3459842 m!3862035))

(declare-fun m!3862037 () Bool)

(assert (=> b!3459842 m!3862037))

(declare-fun m!3862039 () Bool)

(assert (=> b!3459842 m!3862039))

(assert (=> b!3459842 m!3862033))

(declare-fun m!3862041 () Bool)

(assert (=> b!3459842 m!3862041))

(assert (=> b!3459842 m!3862009))

(assert (=> b!3459842 m!3862037))

(declare-fun m!3862043 () Bool)

(assert (=> b!3459842 m!3862043))

(assert (=> b!3459842 m!3862035))

(declare-fun m!3862045 () Bool)

(assert (=> b!3459842 m!3862045))

(declare-fun m!3862047 () Bool)

(assert (=> b!3459842 m!3862047))

(declare-fun m!3862049 () Bool)

(assert (=> b!3459842 m!3862049))

(assert (=> b!3459842 m!3862021))

(assert (=> b!3459842 m!3862047))

(assert (=> b!3459842 m!3861985))

(declare-fun m!3862051 () Bool)

(assert (=> b!3459842 m!3862051))

(assert (=> b!3459842 m!3862017))

(declare-fun m!3862053 () Bool)

(assert (=> b!3459842 m!3862053))

(assert (=> b!3459842 m!3858443))

(assert (=> b!3459842 m!3862031))

(declare-fun m!3862055 () Bool)

(assert (=> b!3459842 m!3862055))

(assert (=> b!3459842 m!3862053))

(declare-fun m!3862057 () Bool)

(assert (=> b!3459842 m!3862057))

(declare-fun m!3862059 () Bool)

(assert (=> b!3459842 m!3862059))

(assert (=> b!3459842 m!3860551))

(assert (=> b!3459842 m!3861989))

(declare-fun m!3862061 () Bool)

(assert (=> b!3459842 m!3862061))

(declare-fun m!3862063 () Bool)

(assert (=> b!3459843 m!3862063))

(declare-fun m!3862065 () Bool)

(assert (=> b!3459843 m!3862065))

(assert (=> d!995530 m!3858443))

(declare-fun m!3862067 () Bool)

(assert (=> d!995530 m!3862067))

(assert (=> d!995530 m!3859145))

(declare-fun m!3862069 () Bool)

(assert (=> d!995530 m!3862069))

(assert (=> d!995530 m!3861985))

(declare-fun m!3862071 () Bool)

(assert (=> d!995530 m!3862071))

(declare-fun m!3862073 () Bool)

(assert (=> d!995530 m!3862073))

(declare-fun m!3862075 () Bool)

(assert (=> d!995530 m!3862075))

(assert (=> d!995530 m!3862073))

(declare-fun m!3862077 () Bool)

(assert (=> d!995530 m!3862077))

(assert (=> d!994586 d!995530))

(assert (=> bs!560182 d!994502))

(declare-fun d!995546 () Bool)

(assert (=> d!995546 (= (isEmpty!21516 lt!1175111) (not (is-Some!7520 lt!1175111)))))

(assert (=> d!994522 d!995546))

(assert (=> d!994522 d!994396))

(declare-fun d!995548 () Bool)

(declare-fun res!1395958 () Bool)

(declare-fun e!2143549 () Bool)

(assert (=> d!995548 (=> (not res!1395958) (not e!2143549))))

(assert (=> d!995548 (= res!1395958 (not (isEmpty!21510 (originalCharacters!6151 (h!42579 (t!272530 tokens!494))))))))

(assert (=> d!995548 (= (inv!50326 (h!42579 (t!272530 tokens!494))) e!2143549)))

(declare-fun b!3459871 () Bool)

(declare-fun res!1395959 () Bool)

(assert (=> b!3459871 (=> (not res!1395959) (not e!2143549))))

(assert (=> b!3459871 (= res!1395959 (= (originalCharacters!6151 (h!42579 (t!272530 tokens!494))) (list!13524 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))))))

(declare-fun b!3459872 () Bool)

(assert (=> b!3459872 (= e!2143549 (= (size!28182 (h!42579 (t!272530 tokens!494))) (size!28184 (originalCharacters!6151 (h!42579 (t!272530 tokens!494))))))))

(assert (= (and d!995548 res!1395958) b!3459871))

(assert (= (and b!3459871 res!1395959) b!3459872))

(declare-fun b_lambda!99597 () Bool)

(assert (=> (not b_lambda!99597) (not b!3459871)))

(assert (=> b!3459871 t!272577))

(declare-fun b_and!243353 () Bool)

(assert (= b_and!243337 (and (=> t!272577 result!232272) b_and!243353)))

(assert (=> b!3459871 t!272575))

(declare-fun b_and!243355 () Bool)

(assert (= b_and!243333 (and (=> t!272575 result!232270) b_and!243355)))

(assert (=> b!3459871 t!272608))

(declare-fun b_and!243357 () Bool)

(assert (= b_and!243339 (and (=> t!272608 result!232306) b_and!243357)))

(assert (=> b!3459871 t!272573))

(declare-fun b_and!243359 () Bool)

(assert (= b_and!243335 (and (=> t!272573 result!232268) b_and!243359)))

(assert (=> b!3459871 t!272600))

(declare-fun b_and!243361 () Bool)

(assert (= b_and!243341 (and (=> t!272600 result!232294) b_and!243361)))

(declare-fun m!3862079 () Bool)

(assert (=> d!995548 m!3862079))

(assert (=> b!3459871 m!3858757))

(assert (=> b!3459871 m!3858757))

(declare-fun m!3862081 () Bool)

(assert (=> b!3459871 m!3862081))

(declare-fun m!3862083 () Bool)

(assert (=> b!3459872 m!3862083))

(assert (=> b!3458409 d!995548))

(assert (=> d!994550 d!994418))

(declare-fun d!995550 () Bool)

(assert (=> d!995550 (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 tokens!494))))

(assert (=> d!995550 true))

(declare-fun _$77!965 () Unit!52487)

(assert (=> d!995550 (= (choose!19998 thiss!18206 rules!2135 tokens!494 (h!42579 tokens!494)) _$77!965)))

(declare-fun bs!560339 () Bool)

(assert (= bs!560339 d!995550))

(assert (=> bs!560339 m!3858027))

(assert (=> d!994550 d!995550))

(assert (=> d!994550 d!994424))

(assert (=> d!994440 d!994442))

(declare-fun d!995558 () Bool)

(assert (=> d!995558 (not (matchR!4780 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848))))

(assert (=> d!995558 true))

(declare-fun _$127!356 () Unit!52487)

(assert (=> d!995558 (= (choose!19991 (regex!5437 (rule!8027 separatorToken!241)) lt!1174848 lt!1174844) _$127!356)))

(declare-fun bs!560340 () Bool)

(assert (= bs!560340 d!995558))

(assert (=> bs!560340 m!3858175))

(assert (=> d!994440 d!995558))

(assert (=> d!994440 d!995094))

(declare-fun d!995560 () Bool)

(declare-fun lt!1175976 () Token!10240)

(assert (=> d!995560 (= lt!1175976 (apply!8748 (list!13526 (_1!21570 lt!1175067)) 0))))

(assert (=> d!995560 (= lt!1175976 (apply!8749 (c!591767 (_1!21570 lt!1175067)) 0))))

(declare-fun e!2143569 () Bool)

(assert (=> d!995560 e!2143569))

(declare-fun res!1395962 () Bool)

(assert (=> d!995560 (=> (not res!1395962) (not e!2143569))))

(assert (=> d!995560 (= res!1395962 (<= 0 0))))

(assert (=> d!995560 (= (apply!8744 (_1!21570 lt!1175067) 0) lt!1175976)))

(declare-fun b!3459909 () Bool)

(assert (=> b!3459909 (= e!2143569 (< 0 (size!28183 (_1!21570 lt!1175067))))))

(assert (= (and d!995560 res!1395962) b!3459909))

(declare-fun m!3862105 () Bool)

(assert (=> d!995560 m!3862105))

(assert (=> d!995560 m!3862105))

(declare-fun m!3862107 () Bool)

(assert (=> d!995560 m!3862107))

(declare-fun m!3862109 () Bool)

(assert (=> d!995560 m!3862109))

(assert (=> b!3459909 m!3858785))

(assert (=> b!3458081 d!995560))

(assert (=> b!3457987 d!994576))

(declare-fun d!995562 () Bool)

(assert (=> d!995562 (= (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))) (v!36836 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))))))

(assert (=> b!3458335 d!995562))

(assert (=> b!3458335 d!994522))

(declare-fun b!3459910 () Bool)

(declare-fun e!2143570 () Bool)

(declare-fun e!2143572 () Bool)

(assert (=> b!3459910 (= e!2143570 e!2143572)))

(declare-fun res!1395964 () Bool)

(assert (=> b!3459910 (=> (not res!1395964) (not e!2143572))))

(declare-fun lt!1175980 () Option!7522)

(assert (=> b!3459910 (= res!1395964 (isDefined!5791 lt!1175980))))

(declare-fun b!3459911 () Bool)

(declare-fun e!2143571 () Option!7522)

(declare-fun lt!1175979 () Option!7522)

(declare-fun lt!1175978 () Option!7522)

(assert (=> b!3459911 (= e!2143571 (ite (and (is-None!7521 lt!1175979) (is-None!7521 lt!1175978)) None!7521 (ite (is-None!7521 lt!1175978) lt!1175979 (ite (is-None!7521 lt!1175979) lt!1175978 (ite (>= (size!28182 (_1!21571 (v!36837 lt!1175979))) (size!28182 (_1!21571 (v!36837 lt!1175978)))) lt!1175979 lt!1175978)))))))

(declare-fun call!249508 () Option!7522)

(assert (=> b!3459911 (= lt!1175979 call!249508)))

(assert (=> b!3459911 (= lt!1175978 (maxPrefix!2566 thiss!18206 (t!272529 (t!272529 rules!2135)) lt!1174846))))

(declare-fun bm!249503 () Bool)

(assert (=> bm!249503 (= call!249508 (maxPrefixOneRule!1733 thiss!18206 (h!42578 (t!272529 rules!2135)) lt!1174846))))

(declare-fun b!3459912 () Bool)

(declare-fun res!1395963 () Bool)

(assert (=> b!3459912 (=> (not res!1395963) (not e!2143572))))

(assert (=> b!3459912 (= res!1395963 (= (value!175416 (_1!21571 (get!11893 lt!1175980))) (apply!8745 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175980)))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175980)))))))))

(declare-fun b!3459913 () Bool)

(declare-fun res!1395966 () Bool)

(assert (=> b!3459913 (=> (not res!1395966) (not e!2143572))))

(assert (=> b!3459913 (= res!1395966 (= (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175980)))) (originalCharacters!6151 (_1!21571 (get!11893 lt!1175980)))))))

(declare-fun b!3459914 () Bool)

(declare-fun res!1395968 () Bool)

(assert (=> b!3459914 (=> (not res!1395968) (not e!2143572))))

(assert (=> b!3459914 (= res!1395968 (matchR!4780 (regex!5437 (rule!8027 (_1!21571 (get!11893 lt!1175980)))) (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175980))))))))

(declare-fun d!995564 () Bool)

(assert (=> d!995564 e!2143570))

(declare-fun res!1395967 () Bool)

(assert (=> d!995564 (=> res!1395967 e!2143570)))

(assert (=> d!995564 (= res!1395967 (isEmpty!21512 lt!1175980))))

(assert (=> d!995564 (= lt!1175980 e!2143571)))

(declare-fun c!592316 () Bool)

(assert (=> d!995564 (= c!592316 (and (is-Cons!37158 (t!272529 rules!2135)) (is-Nil!37158 (t!272529 (t!272529 rules!2135)))))))

(declare-fun lt!1175977 () Unit!52487)

(declare-fun lt!1175981 () Unit!52487)

(assert (=> d!995564 (= lt!1175977 lt!1175981)))

(assert (=> d!995564 (isPrefix!2843 lt!1174846 lt!1174846)))

(assert (=> d!995564 (= lt!1175981 (lemmaIsPrefixRefl!1802 lt!1174846 lt!1174846))))

(assert (=> d!995564 (rulesValidInductive!1852 thiss!18206 (t!272529 rules!2135))))

(assert (=> d!995564 (= (maxPrefix!2566 thiss!18206 (t!272529 rules!2135) lt!1174846) lt!1175980)))

(declare-fun b!3459915 () Bool)

(assert (=> b!3459915 (= e!2143572 (contains!6885 (t!272529 rules!2135) (rule!8027 (_1!21571 (get!11893 lt!1175980)))))))

(declare-fun b!3459916 () Bool)

(declare-fun res!1395969 () Bool)

(assert (=> b!3459916 (=> (not res!1395969) (not e!2143572))))

(assert (=> b!3459916 (= res!1395969 (< (size!28184 (_2!21571 (get!11893 lt!1175980))) (size!28184 lt!1174846)))))

(declare-fun b!3459917 () Bool)

(assert (=> b!3459917 (= e!2143571 call!249508)))

(declare-fun b!3459918 () Bool)

(declare-fun res!1395965 () Bool)

(assert (=> b!3459918 (=> (not res!1395965) (not e!2143572))))

(assert (=> b!3459918 (= res!1395965 (= (++!9156 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175980)))) (_2!21571 (get!11893 lt!1175980))) lt!1174846))))

(assert (= (and d!995564 c!592316) b!3459917))

(assert (= (and d!995564 (not c!592316)) b!3459911))

(assert (= (or b!3459917 b!3459911) bm!249503))

(assert (= (and d!995564 (not res!1395967)) b!3459910))

(assert (= (and b!3459910 res!1395964) b!3459913))

(assert (= (and b!3459913 res!1395966) b!3459916))

(assert (= (and b!3459916 res!1395969) b!3459918))

(assert (= (and b!3459918 res!1395965) b!3459912))

(assert (= (and b!3459912 res!1395963) b!3459914))

(assert (= (and b!3459914 res!1395968) b!3459915))

(declare-fun m!3862111 () Bool)

(assert (=> d!995564 m!3862111))

(assert (=> d!995564 m!3858565))

(assert (=> d!995564 m!3858567))

(assert (=> d!995564 m!3860429))

(declare-fun m!3862113 () Bool)

(assert (=> bm!249503 m!3862113))

(declare-fun m!3862115 () Bool)

(assert (=> b!3459911 m!3862115))

(declare-fun m!3862117 () Bool)

(assert (=> b!3459914 m!3862117))

(declare-fun m!3862119 () Bool)

(assert (=> b!3459914 m!3862119))

(assert (=> b!3459914 m!3862119))

(declare-fun m!3862121 () Bool)

(assert (=> b!3459914 m!3862121))

(assert (=> b!3459914 m!3862121))

(declare-fun m!3862123 () Bool)

(assert (=> b!3459914 m!3862123))

(assert (=> b!3459918 m!3862117))

(assert (=> b!3459918 m!3862119))

(assert (=> b!3459918 m!3862119))

(assert (=> b!3459918 m!3862121))

(assert (=> b!3459918 m!3862121))

(declare-fun m!3862125 () Bool)

(assert (=> b!3459918 m!3862125))

(assert (=> b!3459913 m!3862117))

(assert (=> b!3459913 m!3862119))

(assert (=> b!3459913 m!3862119))

(assert (=> b!3459913 m!3862121))

(assert (=> b!3459912 m!3862117))

(declare-fun m!3862127 () Bool)

(assert (=> b!3459912 m!3862127))

(assert (=> b!3459912 m!3862127))

(declare-fun m!3862129 () Bool)

(assert (=> b!3459912 m!3862129))

(declare-fun m!3862131 () Bool)

(assert (=> b!3459910 m!3862131))

(assert (=> b!3459915 m!3862117))

(declare-fun m!3862133 () Bool)

(assert (=> b!3459915 m!3862133))

(assert (=> b!3459916 m!3862117))

(declare-fun m!3862135 () Bool)

(assert (=> b!3459916 m!3862135))

(assert (=> b!3459916 m!3858103))

(assert (=> b!3457973 d!995564))

(declare-fun d!995566 () Bool)

(assert (=> d!995566 (= (list!13524 (_2!21570 lt!1175209)) (list!13527 (c!591766 (_2!21570 lt!1175209))))))

(declare-fun bs!560341 () Bool)

(assert (= bs!560341 d!995566))

(declare-fun m!3862137 () Bool)

(assert (=> bs!560341 m!3862137))

(assert (=> b!3458366 d!995566))

(assert (=> b!3458366 d!994900))

(assert (=> b!3458366 d!994902))

(declare-fun bs!560342 () Bool)

(declare-fun d!995568 () Bool)

(assert (= bs!560342 (and d!995568 d!995030)))

(declare-fun lambda!121826 () Int)

(assert (=> bs!560342 (= lambda!121826 lambda!121807)))

(assert (=> d!995568 true))

(declare-fun lt!1175984 () Bool)

(assert (=> d!995568 (= lt!1175984 (rulesValidInductive!1852 thiss!18206 rules!2135))))

(assert (=> d!995568 (= lt!1175984 (forall!7921 rules!2135 lambda!121826))))

(assert (=> d!995568 (= (rulesValid!2042 thiss!18206 rules!2135) lt!1175984)))

(declare-fun bs!560343 () Bool)

(assert (= bs!560343 d!995568))

(assert (=> bs!560343 m!3858569))

(declare-fun m!3862139 () Bool)

(assert (=> bs!560343 m!3862139))

(assert (=> d!994396 d!995568))

(declare-fun b!3459919 () Bool)

(declare-fun e!2143575 () Bool)

(declare-fun e!2143578 () Bool)

(assert (=> b!3459919 (= e!2143575 e!2143578)))

(declare-fun res!1395972 () Bool)

(assert (=> b!3459919 (=> (not res!1395972) (not e!2143578))))

(declare-fun lt!1175985 () Bool)

(assert (=> b!3459919 (= res!1395972 (not lt!1175985))))

(declare-fun b!3459920 () Bool)

(declare-fun e!2143574 () Bool)

(declare-fun call!249509 () Bool)

(assert (=> b!3459920 (= e!2143574 (= lt!1175985 call!249509))))

(declare-fun b!3459921 () Bool)

(declare-fun res!1395977 () Bool)

(assert (=> b!3459921 (=> res!1395977 e!2143575)))

(declare-fun e!2143576 () Bool)

(assert (=> b!3459921 (= res!1395977 e!2143576)))

(declare-fun res!1395973 () Bool)

(assert (=> b!3459921 (=> (not res!1395973) (not e!2143576))))

(assert (=> b!3459921 (= res!1395973 lt!1175985)))

(declare-fun b!3459922 () Bool)

(declare-fun e!2143579 () Bool)

(assert (=> b!3459922 (= e!2143578 e!2143579)))

(declare-fun res!1395970 () Bool)

(assert (=> b!3459922 (=> res!1395970 e!2143579)))

(assert (=> b!3459922 (= res!1395970 call!249509)))

(declare-fun b!3459923 () Bool)

(declare-fun e!2143577 () Bool)

(assert (=> b!3459923 (= e!2143577 (nullable!3487 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848))))))

(declare-fun d!995570 () Bool)

(assert (=> d!995570 e!2143574))

(declare-fun c!592319 () Bool)

(assert (=> d!995570 (= c!592319 (is-EmptyExpr!10196 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848))))))

(assert (=> d!995570 (= lt!1175985 e!2143577)))

(declare-fun c!592318 () Bool)

(assert (=> d!995570 (= c!592318 (isEmpty!21510 (tail!5431 lt!1174848)))))

(assert (=> d!995570 (validRegex!4643 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848)))))

(assert (=> d!995570 (= (matchR!4780 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848)) (tail!5431 lt!1174848)) lt!1175985)))

(declare-fun b!3459924 () Bool)

(declare-fun res!1395976 () Bool)

(assert (=> b!3459924 (=> (not res!1395976) (not e!2143576))))

(assert (=> b!3459924 (= res!1395976 (isEmpty!21510 (tail!5431 (tail!5431 lt!1174848))))))

(declare-fun b!3459925 () Bool)

(assert (=> b!3459925 (= e!2143579 (not (= (head!7316 (tail!5431 lt!1174848)) (c!591765 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848))))))))

(declare-fun b!3459926 () Bool)

(assert (=> b!3459926 (= e!2143577 (matchR!4780 (derivativeStep!3040 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848)) (head!7316 (tail!5431 lt!1174848))) (tail!5431 (tail!5431 lt!1174848))))))

(declare-fun b!3459927 () Bool)

(declare-fun e!2143573 () Bool)

(assert (=> b!3459927 (= e!2143573 (not lt!1175985))))

(declare-fun b!3459928 () Bool)

(declare-fun res!1395975 () Bool)

(assert (=> b!3459928 (=> (not res!1395975) (not e!2143576))))

(assert (=> b!3459928 (= res!1395975 (not call!249509))))

(declare-fun b!3459929 () Bool)

(declare-fun res!1395974 () Bool)

(assert (=> b!3459929 (=> res!1395974 e!2143579)))

(assert (=> b!3459929 (= res!1395974 (not (isEmpty!21510 (tail!5431 (tail!5431 lt!1174848)))))))

(declare-fun b!3459930 () Bool)

(declare-fun res!1395971 () Bool)

(assert (=> b!3459930 (=> res!1395971 e!2143575)))

(assert (=> b!3459930 (= res!1395971 (not (is-ElementMatch!10196 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848)))))))

(assert (=> b!3459930 (= e!2143573 e!2143575)))

(declare-fun bm!249504 () Bool)

(assert (=> bm!249504 (= call!249509 (isEmpty!21510 (tail!5431 lt!1174848)))))

(declare-fun b!3459931 () Bool)

(assert (=> b!3459931 (= e!2143574 e!2143573)))

(declare-fun c!592317 () Bool)

(assert (=> b!3459931 (= c!592317 (is-EmptyLang!10196 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848))))))

(declare-fun b!3459932 () Bool)

(assert (=> b!3459932 (= e!2143576 (= (head!7316 (tail!5431 lt!1174848)) (c!591765 (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848)))))))

(assert (= (and d!995570 c!592318) b!3459923))

(assert (= (and d!995570 (not c!592318)) b!3459926))

(assert (= (and d!995570 c!592319) b!3459920))

(assert (= (and d!995570 (not c!592319)) b!3459931))

(assert (= (and b!3459931 c!592317) b!3459927))

(assert (= (and b!3459931 (not c!592317)) b!3459930))

(assert (= (and b!3459930 (not res!1395971)) b!3459921))

(assert (= (and b!3459921 res!1395973) b!3459928))

(assert (= (and b!3459928 res!1395975) b!3459924))

(assert (= (and b!3459924 res!1395976) b!3459932))

(assert (= (and b!3459921 (not res!1395977)) b!3459919))

(assert (= (and b!3459919 res!1395972) b!3459922))

(assert (= (and b!3459922 (not res!1395970)) b!3459929))

(assert (= (and b!3459929 (not res!1395974)) b!3459925))

(assert (= (or b!3459920 b!3459922 b!3459928) bm!249504))

(assert (=> b!3459926 m!3858537))

(declare-fun m!3862141 () Bool)

(assert (=> b!3459926 m!3862141))

(assert (=> b!3459926 m!3858535))

(assert (=> b!3459926 m!3862141))

(declare-fun m!3862143 () Bool)

(assert (=> b!3459926 m!3862143))

(assert (=> b!3459926 m!3858537))

(declare-fun m!3862145 () Bool)

(assert (=> b!3459926 m!3862145))

(assert (=> b!3459926 m!3862143))

(assert (=> b!3459926 m!3862145))

(declare-fun m!3862147 () Bool)

(assert (=> b!3459926 m!3862147))

(assert (=> b!3459923 m!3858535))

(declare-fun m!3862149 () Bool)

(assert (=> b!3459923 m!3862149))

(assert (=> d!995570 m!3858537))

(assert (=> d!995570 m!3858547))

(assert (=> d!995570 m!3858535))

(declare-fun m!3862151 () Bool)

(assert (=> d!995570 m!3862151))

(assert (=> bm!249504 m!3858537))

(assert (=> bm!249504 m!3858547))

(assert (=> b!3459929 m!3858537))

(assert (=> b!3459929 m!3862145))

(assert (=> b!3459929 m!3862145))

(declare-fun m!3862153 () Bool)

(assert (=> b!3459929 m!3862153))

(assert (=> b!3459925 m!3858537))

(assert (=> b!3459925 m!3862141))

(assert (=> b!3459924 m!3858537))

(assert (=> b!3459924 m!3862145))

(assert (=> b!3459924 m!3862145))

(assert (=> b!3459924 m!3862153))

(assert (=> b!3459932 m!3858537))

(assert (=> b!3459932 m!3862141))

(assert (=> b!3457932 d!995570))

(declare-fun b!3459933 () Bool)

(declare-fun e!2143583 () Regex!10196)

(declare-fun call!249511 () Regex!10196)

(assert (=> b!3459933 (= e!2143583 (Concat!15863 call!249511 (regex!5437 lt!1174826)))))

(declare-fun b!3459934 () Bool)

(declare-fun c!592324 () Bool)

(assert (=> b!3459934 (= c!592324 (nullable!3487 (regOne!20904 (regex!5437 lt!1174826))))))

(declare-fun e!2143584 () Regex!10196)

(assert (=> b!3459934 (= e!2143583 e!2143584)))

(declare-fun b!3459935 () Bool)

(declare-fun call!249510 () Regex!10196)

(declare-fun call!249512 () Regex!10196)

(assert (=> b!3459935 (= e!2143584 (Union!10196 (Concat!15863 call!249510 (regTwo!20904 (regex!5437 lt!1174826))) call!249512))))

(declare-fun b!3459936 () Bool)

(declare-fun e!2143582 () Regex!10196)

(declare-fun e!2143580 () Regex!10196)

(assert (=> b!3459936 (= e!2143582 e!2143580)))

(declare-fun c!592320 () Bool)

(assert (=> b!3459936 (= c!592320 (is-ElementMatch!10196 (regex!5437 lt!1174826)))))

(declare-fun d!995572 () Bool)

(declare-fun lt!1175986 () Regex!10196)

(assert (=> d!995572 (validRegex!4643 lt!1175986)))

(assert (=> d!995572 (= lt!1175986 e!2143582)))

(declare-fun c!592321 () Bool)

(assert (=> d!995572 (= c!592321 (or (is-EmptyExpr!10196 (regex!5437 lt!1174826)) (is-EmptyLang!10196 (regex!5437 lt!1174826))))))

(assert (=> d!995572 (validRegex!4643 (regex!5437 lt!1174826))))

(assert (=> d!995572 (= (derivativeStep!3040 (regex!5437 lt!1174826) (head!7316 lt!1174848)) lt!1175986)))

(declare-fun b!3459937 () Bool)

(assert (=> b!3459937 (= e!2143584 (Union!10196 (Concat!15863 call!249510 (regTwo!20904 (regex!5437 lt!1174826))) EmptyLang!10196))))

(declare-fun b!3459938 () Bool)

(assert (=> b!3459938 (= e!2143582 EmptyLang!10196)))

(declare-fun bm!249505 () Bool)

(declare-fun call!249513 () Regex!10196)

(assert (=> bm!249505 (= call!249511 call!249513)))

(declare-fun b!3459939 () Bool)

(assert (=> b!3459939 (= e!2143580 (ite (= (head!7316 lt!1174848) (c!591765 (regex!5437 lt!1174826))) EmptyExpr!10196 EmptyLang!10196))))

(declare-fun bm!249506 () Bool)

(assert (=> bm!249506 (= call!249510 call!249511)))

(declare-fun bm!249507 () Bool)

(declare-fun c!592322 () Bool)

(declare-fun c!592323 () Bool)

(assert (=> bm!249507 (= call!249513 (derivativeStep!3040 (ite c!592322 (regOne!20905 (regex!5437 lt!1174826)) (ite c!592323 (reg!10525 (regex!5437 lt!1174826)) (regOne!20904 (regex!5437 lt!1174826)))) (head!7316 lt!1174848)))))

(declare-fun b!3459940 () Bool)

(declare-fun e!2143581 () Regex!10196)

(assert (=> b!3459940 (= e!2143581 e!2143583)))

(assert (=> b!3459940 (= c!592323 (is-Star!10196 (regex!5437 lt!1174826)))))

(declare-fun b!3459941 () Bool)

(assert (=> b!3459941 (= e!2143581 (Union!10196 call!249513 call!249512))))

(declare-fun bm!249508 () Bool)

(assert (=> bm!249508 (= call!249512 (derivativeStep!3040 (ite c!592322 (regTwo!20905 (regex!5437 lt!1174826)) (regTwo!20904 (regex!5437 lt!1174826))) (head!7316 lt!1174848)))))

(declare-fun b!3459942 () Bool)

(assert (=> b!3459942 (= c!592322 (is-Union!10196 (regex!5437 lt!1174826)))))

(assert (=> b!3459942 (= e!2143580 e!2143581)))

(assert (= (and d!995572 c!592321) b!3459938))

(assert (= (and d!995572 (not c!592321)) b!3459936))

(assert (= (and b!3459936 c!592320) b!3459939))

(assert (= (and b!3459936 (not c!592320)) b!3459942))

(assert (= (and b!3459942 c!592322) b!3459941))

(assert (= (and b!3459942 (not c!592322)) b!3459940))

(assert (= (and b!3459940 c!592323) b!3459933))

(assert (= (and b!3459940 (not c!592323)) b!3459934))

(assert (= (and b!3459934 c!592324) b!3459935))

(assert (= (and b!3459934 (not c!592324)) b!3459937))

(assert (= (or b!3459935 b!3459937) bm!249506))

(assert (= (or b!3459933 bm!249506) bm!249505))

(assert (= (or b!3459941 bm!249505) bm!249507))

(assert (= (or b!3459941 b!3459935) bm!249508))

(declare-fun m!3862155 () Bool)

(assert (=> b!3459934 m!3862155))

(declare-fun m!3862157 () Bool)

(assert (=> d!995572 m!3862157))

(assert (=> d!995572 m!3858545))

(assert (=> bm!249507 m!3858139))

(declare-fun m!3862159 () Bool)

(assert (=> bm!249507 m!3862159))

(assert (=> bm!249508 m!3858139))

(declare-fun m!3862161 () Bool)

(assert (=> bm!249508 m!3862161))

(assert (=> b!3457932 d!995572))

(assert (=> b!3457932 d!994576))

(assert (=> b!3457932 d!994788))

(declare-fun d!995574 () Bool)

(declare-fun c!592325 () Bool)

(assert (=> d!995574 (= c!592325 (is-Nil!37157 lt!1174964))))

(declare-fun e!2143585 () (Set C!20578))

(assert (=> d!995574 (= (content!5182 lt!1174964) e!2143585)))

(declare-fun b!3459943 () Bool)

(assert (=> b!3459943 (= e!2143585 (as set.empty (Set C!20578)))))

(declare-fun b!3459944 () Bool)

(assert (=> b!3459944 (= e!2143585 (set.union (set.insert (h!42577 lt!1174964) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1174964))))))

(assert (= (and d!995574 c!592325) b!3459943))

(assert (= (and d!995574 (not c!592325)) b!3459944))

(declare-fun m!3862163 () Bool)

(assert (=> b!3459944 m!3862163))

(declare-fun m!3862165 () Bool)

(assert (=> b!3459944 m!3862165))

(assert (=> d!994390 d!995574))

(assert (=> d!994390 d!995116))

(declare-fun d!995576 () Bool)

(declare-fun c!592326 () Bool)

(assert (=> d!995576 (= c!592326 (is-Nil!37157 lt!1174835))))

(declare-fun e!2143586 () (Set C!20578))

(assert (=> d!995576 (= (content!5182 lt!1174835) e!2143586)))

(declare-fun b!3459945 () Bool)

(assert (=> b!3459945 (= e!2143586 (as set.empty (Set C!20578)))))

(declare-fun b!3459946 () Bool)

(assert (=> b!3459946 (= e!2143586 (set.union (set.insert (h!42577 lt!1174835) (as set.empty (Set C!20578))) (content!5182 (t!272528 lt!1174835))))))

(assert (= (and d!995576 c!592326) b!3459945))

(assert (= (and d!995576 (not c!592326)) b!3459946))

(declare-fun m!3862167 () Bool)

(assert (=> b!3459946 m!3862167))

(declare-fun m!3862169 () Bool)

(assert (=> b!3459946 m!3862169))

(assert (=> d!994390 d!995576))

(declare-fun d!995578 () Bool)

(assert (=> d!995578 (= (isEmpty!21510 (originalCharacters!6151 (h!42579 tokens!494))) (is-Nil!37157 (originalCharacters!6151 (h!42579 tokens!494))))))

(assert (=> d!994492 d!995578))

(declare-fun b!3459947 () Bool)

(declare-fun e!2143588 () List!37281)

(declare-fun e!2143587 () List!37281)

(assert (=> b!3459947 (= e!2143588 e!2143587)))

(declare-fun c!592329 () Bool)

(assert (=> b!3459947 (= c!592329 (is-ElementMatch!10196 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))))))

(declare-fun b!3459948 () Bool)

(assert (=> b!3459948 (= e!2143587 (Cons!37157 (c!591765 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) Nil!37157))))

(declare-fun b!3459949 () Bool)

(declare-fun e!2143590 () List!37281)

(declare-fun call!249515 () List!37281)

(assert (=> b!3459949 (= e!2143590 call!249515)))

(declare-fun c!592327 () Bool)

(declare-fun call!249516 () List!37281)

(declare-fun bm!249509 () Bool)

(assert (=> bm!249509 (= call!249516 (usedCharacters!671 (ite c!592327 (regOne!20905 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) (regTwo!20904 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))))))))

(declare-fun b!3459950 () Bool)

(declare-fun e!2143589 () List!37281)

(declare-fun call!249514 () List!37281)

(assert (=> b!3459950 (= e!2143589 call!249514)))

(declare-fun d!995580 () Bool)

(declare-fun c!592328 () Bool)

(assert (=> d!995580 (= c!592328 (or (is-EmptyExpr!10196 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) (is-EmptyLang!10196 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))

(assert (=> d!995580 (= (usedCharacters!671 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) e!2143588)))

(declare-fun b!3459951 () Bool)

(assert (=> b!3459951 (= e!2143590 call!249515)))

(declare-fun c!592330 () Bool)

(declare-fun bm!249510 () Bool)

(assert (=> bm!249510 (= call!249514 (usedCharacters!671 (ite c!592330 (reg!10525 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) (ite c!592327 (regTwo!20905 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) (regOne!20904 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))))

(declare-fun b!3459952 () Bool)

(assert (=> b!3459952 (= e!2143588 Nil!37157)))

(declare-fun b!3459953 () Bool)

(assert (=> b!3459953 (= e!2143589 e!2143590)))

(assert (=> b!3459953 (= c!592327 (is-Union!10196 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))))))

(declare-fun bm!249511 () Bool)

(declare-fun call!249517 () List!37281)

(assert (=> bm!249511 (= call!249517 call!249514)))

(declare-fun b!3459954 () Bool)

(assert (=> b!3459954 (= c!592330 (is-Star!10196 (ite c!591851 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))))))

(assert (=> b!3459954 (= e!2143587 e!2143589)))

(declare-fun bm!249512 () Bool)

(assert (=> bm!249512 (= call!249515 (++!9156 (ite c!592327 call!249516 call!249517) (ite c!592327 call!249517 call!249516)))))

(assert (= (and d!995580 c!592328) b!3459952))

(assert (= (and d!995580 (not c!592328)) b!3459947))

(assert (= (and b!3459947 c!592329) b!3459948))

(assert (= (and b!3459947 (not c!592329)) b!3459954))

(assert (= (and b!3459954 c!592330) b!3459950))

(assert (= (and b!3459954 (not c!592330)) b!3459953))

(assert (= (and b!3459953 c!592327) b!3459951))

(assert (= (and b!3459953 (not c!592327)) b!3459949))

(assert (= (or b!3459951 b!3459949) bm!249511))

(assert (= (or b!3459951 b!3459949) bm!249509))

(assert (= (or b!3459951 b!3459949) bm!249512))

(assert (= (or b!3459950 bm!249511) bm!249510))

(declare-fun m!3862171 () Bool)

(assert (=> bm!249509 m!3862171))

(declare-fun m!3862173 () Bool)

(assert (=> bm!249510 m!3862173))

(declare-fun m!3862175 () Bool)

(assert (=> bm!249512 m!3862175))

(assert (=> bm!249361 d!995580))

(assert (=> b!3457994 d!994576))

(declare-fun d!995582 () Bool)

(assert (=> d!995582 (= (list!13524 (_2!21570 lt!1175203)) (list!13527 (c!591766 (_2!21570 lt!1175203))))))

(declare-fun bs!560344 () Bool)

(assert (= bs!560344 d!995582))

(declare-fun m!3862177 () Bool)

(assert (=> bs!560344 m!3862177))

(assert (=> b!3458341 d!995582))

(assert (=> b!3458341 d!994928))

(assert (=> b!3458341 d!994930))

(declare-fun bs!560345 () Bool)

(declare-fun d!995584 () Bool)

(assert (= bs!560345 (and d!995584 d!994782)))

(declare-fun lambda!121827 () Int)

(assert (=> bs!560345 (= (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (= lambda!121827 lambda!121800))))

(declare-fun bs!560346 () Bool)

(assert (= bs!560346 (and d!995584 d!994964)))

(assert (=> bs!560346 (= (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241)))) (= lambda!121827 lambda!121804))))

(assert (=> d!995584 true))

(assert (=> d!995584 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (dynLambda!15657 order!19791 lambda!121827))))

(assert (=> d!995584 (= (equivClasses!2181 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (Forall2!933 lambda!121827))))

(declare-fun bs!560347 () Bool)

(assert (= bs!560347 d!995584))

(declare-fun m!3862179 () Bool)

(assert (=> bs!560347 m!3862179))

(assert (=> b!3458068 d!995584))

(declare-fun d!995586 () Bool)

(declare-fun lt!1175987 () Bool)

(assert (=> d!995586 (= lt!1175987 (isEmpty!21510 (list!13524 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))))))))))

(assert (=> d!995586 (= lt!1175987 (isEmpty!21511 (c!591766 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494))))))))))

(assert (=> d!995586 (= (isEmpty!21504 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 tokens!494)))))) lt!1175987)))

(declare-fun bs!560348 () Bool)

(assert (= bs!560348 d!995586))

(declare-fun m!3862181 () Bool)

(assert (=> bs!560348 m!3862181))

(assert (=> bs!560348 m!3862181))

(declare-fun m!3862183 () Bool)

(assert (=> bs!560348 m!3862183))

(declare-fun m!3862185 () Bool)

(assert (=> bs!560348 m!3862185))

(assert (=> b!3457882 d!995586))

(assert (=> b!3457882 d!994886))

(assert (=> b!3457882 d!994888))

(assert (=> b!3457882 d!994414))

(declare-fun d!995588 () Bool)

(declare-fun lt!1175988 () Bool)

(assert (=> d!995588 (= lt!1175988 (set.member (h!42579 (t!272530 tokens!494)) (content!5186 tokens!494)))))

(declare-fun e!2143591 () Bool)

(assert (=> d!995588 (= lt!1175988 e!2143591)))

(declare-fun res!1395979 () Bool)

(assert (=> d!995588 (=> (not res!1395979) (not e!2143591))))

(assert (=> d!995588 (= res!1395979 (is-Cons!37159 tokens!494))))

(assert (=> d!995588 (= (contains!6889 tokens!494 (h!42579 (t!272530 tokens!494))) lt!1175988)))

(declare-fun b!3459955 () Bool)

(declare-fun e!2143592 () Bool)

(assert (=> b!3459955 (= e!2143591 e!2143592)))

(declare-fun res!1395978 () Bool)

(assert (=> b!3459955 (=> res!1395978 e!2143592)))

(assert (=> b!3459955 (= res!1395978 (= (h!42579 tokens!494) (h!42579 (t!272530 tokens!494))))))

(declare-fun b!3459956 () Bool)

(assert (=> b!3459956 (= e!2143592 (contains!6889 (t!272530 tokens!494) (h!42579 (t!272530 tokens!494))))))

(assert (= (and d!995588 res!1395979) b!3459955))

(assert (= (and b!3459955 (not res!1395978)) b!3459956))

(assert (=> d!995588 m!3860415))

(declare-fun m!3862187 () Bool)

(assert (=> d!995588 m!3862187))

(declare-fun m!3862189 () Bool)

(assert (=> b!3459956 m!3862189))

(assert (=> b!3457846 d!995588))

(declare-fun d!995590 () Bool)

(assert (=> d!995590 (= (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))) (isBalanced!3414 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))))))

(declare-fun bs!560349 () Bool)

(assert (= bs!560349 d!995590))

(declare-fun m!3862191 () Bool)

(assert (=> bs!560349 m!3862191))

(assert (=> tb!188279 d!995590))

(declare-fun b!3459957 () Bool)

(declare-fun e!2143593 () Bool)

(declare-fun lt!1175989 () tuple2!36872)

(assert (=> b!3459957 (= e!2143593 (not (isEmpty!21505 (_1!21570 lt!1175989))))))

(declare-fun b!3459959 () Bool)

(declare-fun e!2143595 () Bool)

(assert (=> b!3459959 (= e!2143595 (= (_2!21570 lt!1175989) (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))))

(declare-fun b!3459960 () Bool)

(assert (=> b!3459960 (= e!2143595 e!2143593)))

(declare-fun res!1395981 () Bool)

(assert (=> b!3459960 (= res!1395981 (< (size!28188 (_2!21570 lt!1175989)) (size!28188 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))))))))

(assert (=> b!3459960 (=> (not res!1395981) (not e!2143593))))

(declare-fun b!3459961 () Bool)

(declare-fun res!1395980 () Bool)

(declare-fun e!2143594 () Bool)

(assert (=> b!3459961 (=> (not res!1395980) (not e!2143594))))

(assert (=> b!3459961 (= res!1395980 (= (list!13526 (_1!21570 lt!1175989)) (_1!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))))))))))

(declare-fun b!3459958 () Bool)

(assert (=> b!3459958 (= e!2143594 (= (list!13524 (_2!21570 lt!1175989)) (_2!21577 (lexList!1448 thiss!18206 rules!2135 (list!13524 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))))))))))

(declare-fun d!995592 () Bool)

(assert (=> d!995592 e!2143594))

(declare-fun res!1395982 () Bool)

(assert (=> d!995592 (=> (not res!1395982) (not e!2143594))))

(assert (=> d!995592 (= res!1395982 e!2143595)))

(declare-fun c!592331 () Bool)

(assert (=> d!995592 (= c!592331 (> (size!28183 (_1!21570 lt!1175989)) 0))))

(assert (=> d!995592 (= lt!1175989 (lexTailRecV2!1056 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))) (BalanceConc!22113 Empty!11249) (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))) (BalanceConc!22115 Empty!11250)))))

(assert (=> d!995592 (= (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))) lt!1175989)))

(assert (= (and d!995592 c!592331) b!3459960))

(assert (= (and d!995592 (not c!592331)) b!3459959))

(assert (= (and b!3459960 res!1395981) b!3459957))

(assert (= (and d!995592 res!1395982) b!3459961))

(assert (= (and b!3459961 res!1395980) b!3459958))

(declare-fun m!3862193 () Bool)

(assert (=> b!3459960 m!3862193))

(assert (=> b!3459960 m!3858779))

(declare-fun m!3862195 () Bool)

(assert (=> b!3459960 m!3862195))

(declare-fun m!3862197 () Bool)

(assert (=> d!995592 m!3862197))

(assert (=> d!995592 m!3858779))

(assert (=> d!995592 m!3858779))

(declare-fun m!3862199 () Bool)

(assert (=> d!995592 m!3862199))

(declare-fun m!3862201 () Bool)

(assert (=> b!3459957 m!3862201))

(declare-fun m!3862203 () Bool)

(assert (=> b!3459958 m!3862203))

(assert (=> b!3459958 m!3858779))

(declare-fun m!3862205 () Bool)

(assert (=> b!3459958 m!3862205))

(assert (=> b!3459958 m!3862205))

(declare-fun m!3862207 () Bool)

(assert (=> b!3459958 m!3862207))

(declare-fun m!3862209 () Bool)

(assert (=> b!3459961 m!3862209))

(assert (=> b!3459961 m!3858779))

(assert (=> b!3459961 m!3862205))

(assert (=> b!3459961 m!3862205))

(assert (=> b!3459961 m!3862207))

(assert (=> d!994502 d!995592))

(declare-fun d!995594 () Bool)

(declare-fun lt!1175990 () BalanceConc!22112)

(assert (=> d!995594 (= (list!13524 lt!1175990) (printList!1574 thiss!18206 (list!13526 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))))

(assert (=> d!995594 (= lt!1175990 (printTailRec!1521 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))) 0 (BalanceConc!22113 Empty!11249)))))

(assert (=> d!995594 (= (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))) lt!1175990)))

(declare-fun bs!560350 () Bool)

(assert (= bs!560350 d!995594))

(declare-fun m!3862211 () Bool)

(assert (=> bs!560350 m!3862211))

(assert (=> bs!560350 m!3858117))

(assert (=> bs!560350 m!3858787))

(assert (=> bs!560350 m!3858787))

(declare-fun m!3862213 () Bool)

(assert (=> bs!560350 m!3862213))

(assert (=> bs!560350 m!3858117))

(declare-fun m!3862215 () Bool)

(assert (=> bs!560350 m!3862215))

(assert (=> d!994502 d!995594))

(declare-fun d!995596 () Bool)

(assert (=> d!995596 (= (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))) (list!13530 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))))))))))

(declare-fun bs!560351 () Bool)

(assert (= bs!560351 d!995596))

(declare-fun m!3862217 () Bool)

(assert (=> bs!560351 m!3862217))

(assert (=> d!994502 d!995596))

(assert (=> d!994502 d!994596))

(declare-fun d!995598 () Bool)

(declare-fun lt!1175991 () Int)

(assert (=> d!995598 (= lt!1175991 (size!28190 (list!13526 (_1!21570 lt!1175067))))))

(assert (=> d!995598 (= lt!1175991 (size!28191 (c!591767 (_1!21570 lt!1175067))))))

(assert (=> d!995598 (= (size!28183 (_1!21570 lt!1175067)) lt!1175991)))

(declare-fun bs!560352 () Bool)

(assert (= bs!560352 d!995598))

(assert (=> bs!560352 m!3862105))

(assert (=> bs!560352 m!3862105))

(declare-fun m!3862219 () Bool)

(assert (=> bs!560352 m!3862219))

(declare-fun m!3862221 () Bool)

(assert (=> bs!560352 m!3862221))

(assert (=> d!994502 d!995598))

(assert (=> d!994502 d!994424))

(declare-fun d!995600 () Bool)

(assert (=> d!995600 (= (list!13526 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))) (list!13530 (c!591767 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))))

(declare-fun bs!560353 () Bool)

(assert (= bs!560353 d!995600))

(declare-fun m!3862223 () Bool)

(assert (=> bs!560353 m!3862223))

(assert (=> d!994502 d!995600))

(assert (=> b!3458310 d!994838))

(declare-fun d!995602 () Bool)

(assert (=> d!995602 (= (list!13526 (_1!21570 lt!1175189)) (list!13530 (c!591767 (_1!21570 lt!1175189))))))

(declare-fun bs!560354 () Bool)

(assert (= bs!560354 d!995602))

(declare-fun m!3862225 () Bool)

(assert (=> bs!560354 m!3862225))

(assert (=> b!3458332 d!995602))

(assert (=> b!3458332 d!995492))

(assert (=> b!3458332 d!995494))

(declare-fun d!995604 () Bool)

(assert (=> d!995604 (= (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))) (isBalanced!3414 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))))))

(declare-fun bs!560355 () Bool)

(assert (= bs!560355 d!995604))

(declare-fun m!3862227 () Bool)

(assert (=> bs!560355 m!3862227))

(assert (=> tb!188303 d!995604))

(declare-fun d!995606 () Bool)

(declare-fun charsToBigInt!0 (List!37280 Int) Int)

(assert (=> d!995606 (= (inv!15 (value!175416 separatorToken!241)) (= (charsToBigInt!0 (text!40118 (value!175416 separatorToken!241)) 0) (value!175412 (value!175416 separatorToken!241))))))

(declare-fun bs!560356 () Bool)

(assert (= bs!560356 d!995606))

(declare-fun m!3862229 () Bool)

(assert (=> bs!560356 m!3862229))

(assert (=> b!3458346 d!995606))

(declare-fun b!3459962 () Bool)

(declare-fun e!2143598 () Bool)

(declare-fun e!2143601 () Bool)

(assert (=> b!3459962 (= e!2143598 e!2143601)))

(declare-fun res!1395985 () Bool)

(assert (=> b!3459962 (=> (not res!1395985) (not e!2143601))))

(declare-fun lt!1175992 () Bool)

(assert (=> b!3459962 (= res!1395985 (not lt!1175992))))

(declare-fun b!3459963 () Bool)

(declare-fun e!2143597 () Bool)

(declare-fun call!249518 () Bool)

(assert (=> b!3459963 (= e!2143597 (= lt!1175992 call!249518))))

(declare-fun b!3459964 () Bool)

(declare-fun res!1395990 () Bool)

(assert (=> b!3459964 (=> res!1395990 e!2143598)))

(declare-fun e!2143599 () Bool)

(assert (=> b!3459964 (= res!1395990 e!2143599)))

(declare-fun res!1395986 () Bool)

(assert (=> b!3459964 (=> (not res!1395986) (not e!2143599))))

(assert (=> b!3459964 (= res!1395986 lt!1175992)))

(declare-fun b!3459965 () Bool)

(declare-fun e!2143602 () Bool)

(assert (=> b!3459965 (= e!2143601 e!2143602)))

(declare-fun res!1395983 () Bool)

(assert (=> b!3459965 (=> res!1395983 e!2143602)))

(assert (=> b!3459965 (= res!1395983 call!249518)))

(declare-fun b!3459966 () Bool)

(declare-fun e!2143600 () Bool)

(assert (=> b!3459966 (= e!2143600 (nullable!3487 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun d!995608 () Bool)

(assert (=> d!995608 e!2143597))

(declare-fun c!592334 () Bool)

(assert (=> d!995608 (= c!592334 (is-EmptyExpr!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(assert (=> d!995608 (= lt!1175992 e!2143600)))

(declare-fun c!592333 () Bool)

(assert (=> d!995608 (= c!592333 (isEmpty!21510 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(assert (=> d!995608 (validRegex!4643 (regex!5437 (rule!8027 (h!42579 tokens!494))))))

(assert (=> d!995608 (= (matchR!4780 (regex!5437 (rule!8027 (h!42579 tokens!494))) (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))) lt!1175992)))

(declare-fun b!3459967 () Bool)

(declare-fun res!1395989 () Bool)

(assert (=> b!3459967 (=> (not res!1395989) (not e!2143599))))

(assert (=> b!3459967 (= res!1395989 (isEmpty!21510 (tail!5431 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846))))))))

(declare-fun b!3459968 () Bool)

(assert (=> b!3459968 (= e!2143602 (not (= (head!7316 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))) (c!591765 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(declare-fun b!3459969 () Bool)

(assert (=> b!3459969 (= e!2143600 (matchR!4780 (derivativeStep!3040 (regex!5437 (rule!8027 (h!42579 tokens!494))) (head!7316 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846))))) (tail!5431 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846))))))))

(declare-fun b!3459970 () Bool)

(declare-fun e!2143596 () Bool)

(assert (=> b!3459970 (= e!2143596 (not lt!1175992))))

(declare-fun b!3459971 () Bool)

(declare-fun res!1395988 () Bool)

(assert (=> b!3459971 (=> (not res!1395988) (not e!2143599))))

(assert (=> b!3459971 (= res!1395988 (not call!249518))))

(declare-fun b!3459972 () Bool)

(declare-fun res!1395987 () Bool)

(assert (=> b!3459972 (=> res!1395987 e!2143602)))

(assert (=> b!3459972 (= res!1395987 (not (isEmpty!21510 (tail!5431 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))))

(declare-fun b!3459973 () Bool)

(declare-fun res!1395984 () Bool)

(assert (=> b!3459973 (=> res!1395984 e!2143598)))

(assert (=> b!3459973 (= res!1395984 (not (is-ElementMatch!10196 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> b!3459973 (= e!2143596 e!2143598)))

(declare-fun bm!249513 () Bool)

(assert (=> bm!249513 (= call!249518 (isEmpty!21510 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(declare-fun b!3459974 () Bool)

(assert (=> b!3459974 (= e!2143597 e!2143596)))

(declare-fun c!592332 () Bool)

(assert (=> b!3459974 (= c!592332 (is-EmptyLang!10196 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))

(declare-fun b!3459975 () Bool)

(assert (=> b!3459975 (= e!2143599 (= (head!7316 (_1!21574 (findLongestMatchInner!908 (regex!5437 (rule!8027 (h!42579 tokens!494))) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))) (c!591765 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(assert (= (and d!995608 c!592333) b!3459966))

(assert (= (and d!995608 (not c!592333)) b!3459969))

(assert (= (and d!995608 c!592334) b!3459963))

(assert (= (and d!995608 (not c!592334)) b!3459974))

(assert (= (and b!3459974 c!592332) b!3459970))

(assert (= (and b!3459974 (not c!592332)) b!3459973))

(assert (= (and b!3459973 (not res!1395984)) b!3459964))

(assert (= (and b!3459964 res!1395986) b!3459971))

(assert (= (and b!3459971 res!1395988) b!3459967))

(assert (= (and b!3459967 res!1395989) b!3459975))

(assert (= (and b!3459964 (not res!1395990)) b!3459962))

(assert (= (and b!3459962 res!1395985) b!3459965))

(assert (= (and b!3459965 (not res!1395983)) b!3459972))

(assert (= (and b!3459972 (not res!1395987)) b!3459968))

(assert (= (or b!3459963 b!3459965 b!3459971) bm!249513))

(declare-fun m!3862231 () Bool)

(assert (=> b!3459969 m!3862231))

(assert (=> b!3459969 m!3862231))

(declare-fun m!3862233 () Bool)

(assert (=> b!3459969 m!3862233))

(declare-fun m!3862235 () Bool)

(assert (=> b!3459969 m!3862235))

(assert (=> b!3459969 m!3862233))

(assert (=> b!3459969 m!3862235))

(declare-fun m!3862237 () Bool)

(assert (=> b!3459969 m!3862237))

(assert (=> b!3459966 m!3860065))

(assert (=> d!995608 m!3858865))

(assert (=> d!995608 m!3860063))

(assert (=> bm!249513 m!3858865))

(assert (=> b!3459972 m!3862235))

(assert (=> b!3459972 m!3862235))

(declare-fun m!3862239 () Bool)

(assert (=> b!3459972 m!3862239))

(assert (=> b!3459968 m!3862231))

(assert (=> b!3459967 m!3862235))

(assert (=> b!3459967 m!3862235))

(assert (=> b!3459967 m!3862239))

(assert (=> b!3459975 m!3862231))

(assert (=> b!3458124 d!995608))

(assert (=> b!3458124 d!995168))

(assert (=> b!3458124 d!995312))

(assert (=> b!3458124 d!994520))

(declare-fun d!995610 () Bool)

(declare-fun c!592335 () Bool)

(assert (=> d!995610 (= c!592335 (is-Empty!11249 (c!591766 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))

(declare-fun e!2143603 () List!37281)

(assert (=> d!995610 (= (list!13527 (c!591766 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) e!2143603)))

(declare-fun b!3459978 () Bool)

(declare-fun e!2143604 () List!37281)

(assert (=> b!3459978 (= e!2143604 (list!13533 (xs!14423 (c!591766 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))))))

(declare-fun b!3459976 () Bool)

(assert (=> b!3459976 (= e!2143603 Nil!37157)))

(declare-fun b!3459977 () Bool)

(assert (=> b!3459977 (= e!2143603 e!2143604)))

(declare-fun c!592336 () Bool)

(assert (=> b!3459977 (= c!592336 (is-Leaf!17579 (c!591766 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))

(declare-fun b!3459979 () Bool)

(assert (=> b!3459979 (= e!2143604 (++!9156 (list!13527 (left!28992 (c!591766 (charsOf!3451 (h!42579 (t!272530 tokens!494)))))) (list!13527 (right!29322 (c!591766 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))))

(assert (= (and d!995610 c!592335) b!3459976))

(assert (= (and d!995610 (not c!592335)) b!3459977))

(assert (= (and b!3459977 c!592336) b!3459978))

(assert (= (and b!3459977 (not c!592336)) b!3459979))

(declare-fun m!3862241 () Bool)

(assert (=> b!3459978 m!3862241))

(declare-fun m!3862243 () Bool)

(assert (=> b!3459979 m!3862243))

(declare-fun m!3862245 () Bool)

(assert (=> b!3459979 m!3862245))

(assert (=> b!3459979 m!3862243))

(assert (=> b!3459979 m!3862245))

(declare-fun m!3862247 () Bool)

(assert (=> b!3459979 m!3862247))

(assert (=> d!994478 d!995610))

(declare-fun d!995612 () Bool)

(assert (=> d!995612 (= (isEmpty!21518 (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823)))) (is-Nil!37159 (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823)))))))

(assert (=> d!994614 d!995612))

(declare-fun d!995614 () Bool)

(assert (=> d!995614 (= (list!13526 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823))) (list!13530 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823)))))))

(declare-fun bs!560357 () Bool)

(assert (= bs!560357 d!995614))

(declare-fun m!3862249 () Bool)

(assert (=> bs!560357 m!3862249))

(assert (=> d!994614 d!995614))

(declare-fun lt!1175995 () Bool)

(declare-fun d!995616 () Bool)

(assert (=> d!995616 (= lt!1175995 (isEmpty!21518 (list!13530 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823))))))))

(assert (=> d!995616 (= lt!1175995 (= (size!28191 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823)))) 0))))

(assert (=> d!995616 (= (isEmpty!21519 (c!591767 (_1!21570 (lex!2352 thiss!18206 rules!2135 lt!1174823)))) lt!1175995)))

(declare-fun bs!560358 () Bool)

(assert (= bs!560358 d!995616))

(assert (=> bs!560358 m!3862249))

(assert (=> bs!560358 m!3862249))

(declare-fun m!3862251 () Bool)

(assert (=> bs!560358 m!3862251))

(declare-fun m!3862253 () Bool)

(assert (=> bs!560358 m!3862253))

(assert (=> d!994614 d!995616))

(assert (=> b!3457986 d!994786))

(assert (=> b!3457986 d!994788))

(declare-fun d!995618 () Bool)

(assert (=> d!995618 (= (inv!50322 (tag!6045 (h!42578 (t!272529 rules!2135)))) (= (mod (str.len (value!175390 (tag!6045 (h!42578 (t!272529 rules!2135))))) 2) 0))))

(assert (=> b!3458383 d!995618))

(declare-fun d!995620 () Bool)

(declare-fun res!1395991 () Bool)

(declare-fun e!2143605 () Bool)

(assert (=> d!995620 (=> (not res!1395991) (not e!2143605))))

(assert (=> d!995620 (= res!1395991 (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135))))))))

(assert (=> d!995620 (= (inv!50325 (transformation!5437 (h!42578 (t!272529 rules!2135)))) e!2143605)))

(declare-fun b!3459980 () Bool)

(assert (=> b!3459980 (= e!2143605 (equivClasses!2181 (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135))))))))

(assert (= (and d!995620 res!1395991) b!3459980))

(declare-fun m!3862255 () Bool)

(assert (=> d!995620 m!3862255))

(declare-fun m!3862257 () Bool)

(assert (=> b!3459980 m!3862257))

(assert (=> b!3458383 d!995620))

(declare-fun d!995622 () Bool)

(assert (=> d!995622 (= (isDefined!5791 lt!1175029) (not (isEmpty!21512 lt!1175029)))))

(declare-fun bs!560359 () Bool)

(assert (= bs!560359 d!995622))

(assert (=> bs!560359 m!3858563))

(assert (=> b!3457972 d!995622))

(declare-fun d!995624 () Bool)

(declare-fun lt!1175996 () Bool)

(assert (=> d!995624 (= lt!1175996 (isEmpty!21518 (list!13526 (_1!21570 lt!1175209))))))

(assert (=> d!995624 (= lt!1175996 (isEmpty!21519 (c!591767 (_1!21570 lt!1175209))))))

(assert (=> d!995624 (= (isEmpty!21505 (_1!21570 lt!1175209)) lt!1175996)))

(declare-fun bs!560360 () Bool)

(assert (= bs!560360 d!995624))

(assert (=> bs!560360 m!3859279))

(assert (=> bs!560360 m!3859279))

(declare-fun m!3862259 () Bool)

(assert (=> bs!560360 m!3862259))

(declare-fun m!3862261 () Bool)

(assert (=> bs!560360 m!3862261))

(assert (=> b!3458365 d!995624))

(assert (=> b!3458334 d!995562))

(assert (=> b!3458334 d!994522))

(declare-fun b!3459981 () Bool)

(declare-fun e!2143608 () Bool)

(declare-fun e!2143611 () Bool)

(assert (=> b!3459981 (= e!2143608 e!2143611)))

(declare-fun res!1395994 () Bool)

(assert (=> b!3459981 (=> (not res!1395994) (not e!2143611))))

(declare-fun lt!1175997 () Bool)

(assert (=> b!3459981 (= res!1395994 (not lt!1175997))))

(declare-fun b!3459982 () Bool)

(declare-fun e!2143607 () Bool)

(declare-fun call!249519 () Bool)

(assert (=> b!3459982 (= e!2143607 (= lt!1175997 call!249519))))

(declare-fun b!3459983 () Bool)

(declare-fun res!1395999 () Bool)

(assert (=> b!3459983 (=> res!1395999 e!2143608)))

(declare-fun e!2143609 () Bool)

(assert (=> b!3459983 (= res!1395999 e!2143609)))

(declare-fun res!1395995 () Bool)

(assert (=> b!3459983 (=> (not res!1395995) (not e!2143609))))

(assert (=> b!3459983 (= res!1395995 lt!1175997)))

(declare-fun b!3459984 () Bool)

(declare-fun e!2143612 () Bool)

(assert (=> b!3459984 (= e!2143611 e!2143612)))

(declare-fun res!1395992 () Bool)

(assert (=> b!3459984 (=> res!1395992 e!2143612)))

(assert (=> b!3459984 (= res!1395992 call!249519)))

(declare-fun e!2143610 () Bool)

(declare-fun b!3459985 () Bool)

(assert (=> b!3459985 (= e!2143610 (nullable!3487 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))))))))

(declare-fun d!995626 () Bool)

(assert (=> d!995626 e!2143607))

(declare-fun c!592339 () Bool)

(assert (=> d!995626 (= c!592339 (is-EmptyExpr!10196 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))))))))

(assert (=> d!995626 (= lt!1175997 e!2143610)))

(declare-fun c!592338 () Bool)

(assert (=> d!995626 (= c!592338 (isEmpty!21510 (list!13524 (charsOf!3451 separatorToken!241))))))

(assert (=> d!995626 (validRegex!4643 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))))))

(assert (=> d!995626 (= (matchR!4780 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))) (list!13524 (charsOf!3451 separatorToken!241))) lt!1175997)))

(declare-fun b!3459986 () Bool)

(declare-fun res!1395998 () Bool)

(assert (=> b!3459986 (=> (not res!1395998) (not e!2143609))))

(assert (=> b!3459986 (= res!1395998 (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 separatorToken!241)))))))

(declare-fun b!3459987 () Bool)

(assert (=> b!3459987 (= e!2143612 (not (= (head!7316 (list!13524 (charsOf!3451 separatorToken!241))) (c!591765 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))))))))))

(declare-fun b!3459988 () Bool)

(assert (=> b!3459988 (= e!2143610 (matchR!4780 (derivativeStep!3040 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))) (head!7316 (list!13524 (charsOf!3451 separatorToken!241)))) (tail!5431 (list!13524 (charsOf!3451 separatorToken!241)))))))

(declare-fun b!3459989 () Bool)

(declare-fun e!2143606 () Bool)

(assert (=> b!3459989 (= e!2143606 (not lt!1175997))))

(declare-fun b!3459990 () Bool)

(declare-fun res!1395997 () Bool)

(assert (=> b!3459990 (=> (not res!1395997) (not e!2143609))))

(assert (=> b!3459990 (= res!1395997 (not call!249519))))

(declare-fun b!3459991 () Bool)

(declare-fun res!1395996 () Bool)

(assert (=> b!3459991 (=> res!1395996 e!2143612)))

(assert (=> b!3459991 (= res!1395996 (not (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun b!3459992 () Bool)

(declare-fun res!1395993 () Bool)

(assert (=> b!3459992 (=> res!1395993 e!2143608)))

(assert (=> b!3459992 (= res!1395993 (not (is-ElementMatch!10196 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))))))))

(assert (=> b!3459992 (= e!2143606 e!2143608)))

(declare-fun bm!249514 () Bool)

(assert (=> bm!249514 (= call!249519 (isEmpty!21510 (list!13524 (charsOf!3451 separatorToken!241))))))

(declare-fun b!3459993 () Bool)

(assert (=> b!3459993 (= e!2143607 e!2143606)))

(declare-fun c!592337 () Bool)

(assert (=> b!3459993 (= c!592337 (is-EmptyLang!10196 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))))))))

(declare-fun b!3459994 () Bool)

(assert (=> b!3459994 (= e!2143609 (= (head!7316 (list!13524 (charsOf!3451 separatorToken!241))) (c!591765 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))))))))

(assert (= (and d!995626 c!592338) b!3459985))

(assert (= (and d!995626 (not c!592338)) b!3459988))

(assert (= (and d!995626 c!592339) b!3459982))

(assert (= (and d!995626 (not c!592339)) b!3459993))

(assert (= (and b!3459993 c!592337) b!3459989))

(assert (= (and b!3459993 (not c!592337)) b!3459992))

(assert (= (and b!3459992 (not res!1395993)) b!3459983))

(assert (= (and b!3459983 res!1395995) b!3459990))

(assert (= (and b!3459990 res!1395997) b!3459986))

(assert (= (and b!3459986 res!1395998) b!3459994))

(assert (= (and b!3459983 (not res!1395999)) b!3459981))

(assert (= (and b!3459981 res!1395994) b!3459984))

(assert (= (and b!3459984 (not res!1395992)) b!3459991))

(assert (= (and b!3459991 (not res!1395996)) b!3459987))

(assert (= (or b!3459982 b!3459984 b!3459990) bm!249514))

(assert (=> b!3459988 m!3858053))

(declare-fun m!3862263 () Bool)

(assert (=> b!3459988 m!3862263))

(assert (=> b!3459988 m!3862263))

(declare-fun m!3862265 () Bool)

(assert (=> b!3459988 m!3862265))

(assert (=> b!3459988 m!3858053))

(declare-fun m!3862267 () Bool)

(assert (=> b!3459988 m!3862267))

(assert (=> b!3459988 m!3862265))

(assert (=> b!3459988 m!3862267))

(declare-fun m!3862269 () Bool)

(assert (=> b!3459988 m!3862269))

(declare-fun m!3862271 () Bool)

(assert (=> b!3459985 m!3862271))

(assert (=> d!995626 m!3858053))

(declare-fun m!3862273 () Bool)

(assert (=> d!995626 m!3862273))

(declare-fun m!3862275 () Bool)

(assert (=> d!995626 m!3862275))

(assert (=> bm!249514 m!3858053))

(assert (=> bm!249514 m!3862273))

(assert (=> b!3459991 m!3858053))

(assert (=> b!3459991 m!3862267))

(assert (=> b!3459991 m!3862267))

(declare-fun m!3862277 () Bool)

(assert (=> b!3459991 m!3862277))

(assert (=> b!3459987 m!3858053))

(assert (=> b!3459987 m!3862263))

(assert (=> b!3459986 m!3858053))

(assert (=> b!3459986 m!3862267))

(assert (=> b!3459986 m!3862267))

(assert (=> b!3459986 m!3862277))

(assert (=> b!3459994 m!3858053))

(assert (=> b!3459994 m!3862263))

(assert (=> b!3458334 d!995626))

(assert (=> b!3458334 d!994476))

(assert (=> b!3458334 d!994488))

(declare-fun d!995628 () Bool)

(assert (=> d!995628 (= (list!13524 lt!1174979) (list!13527 (c!591766 lt!1174979)))))

(declare-fun bs!560361 () Bool)

(assert (= bs!560361 d!995628))

(declare-fun m!3862279 () Bool)

(assert (=> bs!560361 m!3862279))

(assert (=> d!994408 d!995628))

(declare-fun d!995630 () Bool)

(declare-fun c!592340 () Bool)

(assert (=> d!995630 (= c!592340 (is-Cons!37159 (list!13526 lt!1174849)))))

(declare-fun e!2143613 () List!37281)

(assert (=> d!995630 (= (printList!1574 thiss!18206 (list!13526 lt!1174849)) e!2143613)))

(declare-fun b!3459995 () Bool)

(assert (=> b!3459995 (= e!2143613 (++!9156 (list!13524 (charsOf!3451 (h!42579 (list!13526 lt!1174849)))) (printList!1574 thiss!18206 (t!272530 (list!13526 lt!1174849)))))))

(declare-fun b!3459996 () Bool)

(assert (=> b!3459996 (= e!2143613 Nil!37157)))

(assert (= (and d!995630 c!592340) b!3459995))

(assert (= (and d!995630 (not c!592340)) b!3459996))

(declare-fun m!3862281 () Bool)

(assert (=> b!3459995 m!3862281))

(assert (=> b!3459995 m!3862281))

(declare-fun m!3862283 () Bool)

(assert (=> b!3459995 m!3862283))

(declare-fun m!3862285 () Bool)

(assert (=> b!3459995 m!3862285))

(assert (=> b!3459995 m!3862283))

(assert (=> b!3459995 m!3862285))

(declare-fun m!3862287 () Bool)

(assert (=> b!3459995 m!3862287))

(assert (=> d!994408 d!995630))

(assert (=> d!994408 d!995438))

(assert (=> d!994408 d!994410))

(declare-fun d!995632 () Bool)

(declare-fun c!592341 () Bool)

(assert (=> d!995632 (= c!592341 (is-Nil!37157 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))))))

(declare-fun e!2143614 () (Set C!20578))

(assert (=> d!995632 (= (content!5182 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))) e!2143614)))

(declare-fun b!3459997 () Bool)

(assert (=> b!3459997 (= e!2143614 (as set.empty (Set C!20578)))))

(declare-fun b!3459998 () Bool)

(assert (=> b!3459998 (= e!2143614 (set.union (set.insert (h!42577 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))) (as set.empty (Set C!20578))) (content!5182 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 separatorToken!241)))))))))

(assert (= (and d!995632 c!592341) b!3459997))

(assert (= (and d!995632 (not c!592341)) b!3459998))

(declare-fun m!3862289 () Bool)

(assert (=> b!3459998 m!3862289))

(assert (=> b!3459998 m!3861735))

(assert (=> d!994546 d!995632))

(assert (=> b!3457931 d!994576))

(declare-fun d!995634 () Bool)

(declare-fun lt!1175998 () BalanceConc!22112)

(assert (=> d!995634 (= (list!13524 lt!1175998) (originalCharacters!6151 (h!42579 (t!272530 (t!272530 tokens!494)))))))

(assert (=> d!995634 (= lt!1175998 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (value!175416 (h!42579 (t!272530 (t!272530 tokens!494))))))))

(assert (=> d!995634 (= (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494)))) lt!1175998)))

(declare-fun b_lambda!99599 () Bool)

(assert (=> (not b_lambda!99599) (not d!995634)))

(declare-fun t!272812 () Bool)

(declare-fun tb!188519 () Bool)

(assert (=> (and b!3458384 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494))))))) t!272812) tb!188519))

(declare-fun b!3459999 () Bool)

(declare-fun e!2143615 () Bool)

(declare-fun tp!1077911 () Bool)

(assert (=> b!3459999 (= e!2143615 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (value!175416 (h!42579 (t!272530 (t!272530 tokens!494))))))) tp!1077911))))

(declare-fun result!232504 () Bool)

(assert (=> tb!188519 (= result!232504 (and (inv!50330 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (value!175416 (h!42579 (t!272530 (t!272530 tokens!494)))))) e!2143615))))

(assert (= tb!188519 b!3459999))

(declare-fun m!3862291 () Bool)

(assert (=> b!3459999 m!3862291))

(declare-fun m!3862293 () Bool)

(assert (=> tb!188519 m!3862293))

(assert (=> d!995634 t!272812))

(declare-fun b_and!243363 () Bool)

(assert (= b_and!243361 (and (=> t!272812 result!232504) b_and!243363)))

(declare-fun t!272814 () Bool)

(declare-fun tb!188521 () Bool)

(assert (=> (and b!3458412 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494))))))) t!272814) tb!188521))

(declare-fun result!232506 () Bool)

(assert (= result!232506 result!232504))

(assert (=> d!995634 t!272814))

(declare-fun b_and!243365 () Bool)

(assert (= b_and!243357 (and (=> t!272814 result!232506) b_and!243365)))

(declare-fun t!272816 () Bool)

(declare-fun tb!188523 () Bool)

(assert (=> (and b!3457652 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494))))))) t!272816) tb!188523))

(declare-fun result!232508 () Bool)

(assert (= result!232508 result!232504))

(assert (=> d!995634 t!272816))

(declare-fun b_and!243367 () Bool)

(assert (= b_and!243353 (and (=> t!272816 result!232508) b_and!243367)))

(declare-fun t!272818 () Bool)

(declare-fun tb!188525 () Bool)

(assert (=> (and b!3457648 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494))))))) t!272818) tb!188525))

(declare-fun result!232510 () Bool)

(assert (= result!232510 result!232504))

(assert (=> d!995634 t!272818))

(declare-fun b_and!243369 () Bool)

(assert (= b_and!243355 (and (=> t!272818 result!232510) b_and!243369)))

(declare-fun t!272820 () Bool)

(declare-fun tb!188527 () Bool)

(assert (=> (and b!3457644 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494))))))) t!272820) tb!188527))

(declare-fun result!232512 () Bool)

(assert (= result!232512 result!232504))

(assert (=> d!995634 t!272820))

(declare-fun b_and!243371 () Bool)

(assert (= b_and!243359 (and (=> t!272820 result!232512) b_and!243371)))

(declare-fun m!3862295 () Bool)

(assert (=> d!995634 m!3862295))

(declare-fun m!3862297 () Bool)

(assert (=> d!995634 m!3862297))

(assert (=> b!3458061 d!995634))

(declare-fun d!995636 () Bool)

(assert (=> d!995636 (= (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13527 (c!591766 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494)))))))))

(declare-fun bs!560362 () Bool)

(assert (= bs!560362 d!995636))

(declare-fun m!3862299 () Bool)

(assert (=> bs!560362 m!3862299))

(assert (=> b!3458061 d!995636))

(declare-fun d!995638 () Bool)

(declare-fun c!592342 () Bool)

(assert (=> d!995638 (= c!592342 (is-Cons!37159 (t!272530 (t!272530 (t!272530 tokens!494)))))))

(declare-fun e!2143616 () List!37281)

(assert (=> d!995638 (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241) e!2143616)))

(declare-fun b!3460000 () Bool)

(assert (=> b!3460000 (= e!2143616 (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 (t!272530 tokens!494)))))) (list!13524 (charsOf!3451 separatorToken!241))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 (t!272530 tokens!494)))) separatorToken!241)))))

(declare-fun b!3460001 () Bool)

(assert (=> b!3460001 (= e!2143616 Nil!37157)))

(assert (= (and d!995638 c!592342) b!3460000))

(assert (= (and d!995638 (not c!592342)) b!3460001))

(declare-fun m!3862301 () Bool)

(assert (=> b!3460000 m!3862301))

(declare-fun m!3862303 () Bool)

(assert (=> b!3460000 m!3862303))

(assert (=> b!3460000 m!3862303))

(assert (=> b!3460000 m!3858053))

(declare-fun m!3862305 () Bool)

(assert (=> b!3460000 m!3862305))

(assert (=> b!3460000 m!3858051))

(assert (=> b!3460000 m!3862301))

(assert (=> b!3460000 m!3862305))

(declare-fun m!3862307 () Bool)

(assert (=> b!3460000 m!3862307))

(declare-fun m!3862309 () Bool)

(assert (=> b!3460000 m!3862309))

(assert (=> b!3460000 m!3858051))

(assert (=> b!3460000 m!3858053))

(assert (=> b!3460000 m!3862307))

(assert (=> b!3458061 d!995638))

(declare-fun b!3460004 () Bool)

(declare-fun res!1396001 () Bool)

(declare-fun e!2143617 () Bool)

(assert (=> b!3460004 (=> (not res!1396001) (not e!2143617))))

(declare-fun lt!1175999 () List!37281)

(assert (=> b!3460004 (= res!1396001 (= (size!28184 lt!1175999) (+ (size!28184 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494)))))) (size!28184 (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun d!995640 () Bool)

(assert (=> d!995640 e!2143617))

(declare-fun res!1396000 () Bool)

(assert (=> d!995640 (=> (not res!1396000) (not e!2143617))))

(assert (=> d!995640 (= res!1396000 (= (content!5182 lt!1175999) (set.union (content!5182 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494)))))) (content!5182 (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun e!2143618 () List!37281)

(assert (=> d!995640 (= lt!1175999 e!2143618)))

(declare-fun c!592343 () Bool)

(assert (=> d!995640 (= c!592343 (is-Nil!37157 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494)))))))))

(assert (=> d!995640 (= (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241))) lt!1175999)))

(declare-fun b!3460003 () Bool)

(assert (=> b!3460003 (= e!2143618 (Cons!37157 (h!42577 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494)))))) (++!9156 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494)))))) (list!13524 (charsOf!3451 separatorToken!241)))))))

(declare-fun b!3460005 () Bool)

(assert (=> b!3460005 (= e!2143617 (or (not (= (list!13524 (charsOf!3451 separatorToken!241)) Nil!37157)) (= lt!1175999 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))))))))

(declare-fun b!3460002 () Bool)

(assert (=> b!3460002 (= e!2143618 (list!13524 (charsOf!3451 separatorToken!241)))))

(assert (= (and d!995640 c!592343) b!3460002))

(assert (= (and d!995640 (not c!592343)) b!3460003))

(assert (= (and d!995640 res!1396000) b!3460004))

(assert (= (and b!3460004 res!1396001) b!3460005))

(declare-fun m!3862311 () Bool)

(assert (=> b!3460004 m!3862311))

(assert (=> b!3460004 m!3858737))

(declare-fun m!3862313 () Bool)

(assert (=> b!3460004 m!3862313))

(assert (=> b!3460004 m!3858053))

(assert (=> b!3460004 m!3860751))

(declare-fun m!3862315 () Bool)

(assert (=> d!995640 m!3862315))

(assert (=> d!995640 m!3858737))

(declare-fun m!3862317 () Bool)

(assert (=> d!995640 m!3862317))

(assert (=> d!995640 m!3858053))

(assert (=> d!995640 m!3860755))

(assert (=> b!3460003 m!3858053))

(declare-fun m!3862319 () Bool)

(assert (=> b!3460003 m!3862319))

(assert (=> b!3458061 d!995640))

(assert (=> b!3458061 d!994476))

(assert (=> b!3458061 d!994488))

(declare-fun b!3460008 () Bool)

(declare-fun res!1396003 () Bool)

(declare-fun e!2143619 () Bool)

(assert (=> b!3460008 (=> (not res!1396003) (not e!2143619))))

(declare-fun lt!1176000 () List!37281)

(assert (=> b!3460008 (= res!1396003 (= (size!28184 lt!1176000) (+ (size!28184 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241)))) (size!28184 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241)))))))

(declare-fun d!995642 () Bool)

(assert (=> d!995642 e!2143619))

(declare-fun res!1396002 () Bool)

(assert (=> d!995642 (=> (not res!1396002) (not e!2143619))))

(assert (=> d!995642 (= res!1396002 (= (content!5182 lt!1176000) (set.union (content!5182 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241)))) (content!5182 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241)))))))

(declare-fun e!2143620 () List!37281)

(assert (=> d!995642 (= lt!1176000 e!2143620)))

(declare-fun c!592344 () Bool)

(assert (=> d!995642 (= c!592344 (is-Nil!37157 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241)))))))

(assert (=> d!995642 (= (++!9156 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241)) lt!1176000)))

(declare-fun b!3460007 () Bool)

(assert (=> b!3460007 (= e!2143620 (Cons!37157 (h!42577 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241)))) (++!9156 (t!272528 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241)))) (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241))))))

(declare-fun b!3460009 () Bool)

(assert (=> b!3460009 (= e!2143619 (or (not (= (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241) Nil!37157)) (= lt!1176000 (++!9156 (list!13524 (charsOf!3451 (h!42579 (t!272530 (t!272530 tokens!494))))) (list!13524 (charsOf!3451 separatorToken!241))))))))

(declare-fun b!3460006 () Bool)

(assert (=> b!3460006 (= e!2143620 (printWithSeparatorTokenList!313 thiss!18206 (t!272530 (t!272530 (t!272530 tokens!494))) separatorToken!241))))

(assert (= (and d!995642 c!592344) b!3460006))

(assert (= (and d!995642 (not c!592344)) b!3460007))

(assert (= (and d!995642 res!1396002) b!3460008))

(assert (= (and b!3460008 res!1396003) b!3460009))

(declare-fun m!3862321 () Bool)

(assert (=> b!3460008 m!3862321))

(assert (=> b!3460008 m!3858739))

(declare-fun m!3862323 () Bool)

(assert (=> b!3460008 m!3862323))

(assert (=> b!3460008 m!3858741))

(declare-fun m!3862325 () Bool)

(assert (=> b!3460008 m!3862325))

(declare-fun m!3862327 () Bool)

(assert (=> d!995642 m!3862327))

(assert (=> d!995642 m!3858739))

(declare-fun m!3862329 () Bool)

(assert (=> d!995642 m!3862329))

(assert (=> d!995642 m!3858741))

(declare-fun m!3862331 () Bool)

(assert (=> d!995642 m!3862331))

(assert (=> b!3460007 m!3858741))

(declare-fun m!3862333 () Bool)

(assert (=> b!3460007 m!3862333))

(assert (=> b!3458061 d!995642))

(assert (=> b!3458131 d!994754))

(assert (=> d!994534 d!994748))

(declare-fun d!995644 () Bool)

(assert (=> d!995644 (= (dropList!1204 lt!1174852 0) (drop!2010 (list!13530 (c!591767 lt!1174852)) 0))))

(declare-fun bs!560363 () Bool)

(assert (= bs!560363 d!995644))

(assert (=> bs!560363 m!3860351))

(assert (=> bs!560363 m!3860351))

(declare-fun m!3862335 () Bool)

(assert (=> bs!560363 m!3862335))

(assert (=> d!994534 d!995644))

(declare-fun d!995646 () Bool)

(declare-fun lt!1176001 () List!37281)

(assert (=> d!995646 (= lt!1176001 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (printList!1574 thiss!18206 (dropList!1204 lt!1174852 0))))))

(declare-fun e!2143621 () List!37281)

(assert (=> d!995646 (= lt!1176001 e!2143621)))

(declare-fun c!592345 () Bool)

(assert (=> d!995646 (= c!592345 (is-Cons!37159 (dropList!1204 lt!1174852 0)))))

(assert (=> d!995646 (= (printListTailRec!687 thiss!18206 (dropList!1204 lt!1174852 0) (list!13524 (BalanceConc!22113 Empty!11249))) lt!1176001)))

(declare-fun b!3460010 () Bool)

(assert (=> b!3460010 (= e!2143621 (printListTailRec!687 thiss!18206 (t!272530 (dropList!1204 lt!1174852 0)) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (list!13524 (charsOf!3451 (h!42579 (dropList!1204 lt!1174852 0)))))))))

(declare-fun lt!1176004 () List!37281)

(assert (=> b!3460010 (= lt!1176004 (list!13524 (charsOf!3451 (h!42579 (dropList!1204 lt!1174852 0)))))))

(declare-fun lt!1176002 () List!37281)

(assert (=> b!3460010 (= lt!1176002 (printList!1574 thiss!18206 (t!272530 (dropList!1204 lt!1174852 0))))))

(declare-fun lt!1176005 () Unit!52487)

(assert (=> b!3460010 (= lt!1176005 (lemmaConcatAssociativity!1955 (list!13524 (BalanceConc!22113 Empty!11249)) lt!1176004 lt!1176002))))

(assert (=> b!3460010 (= (++!9156 (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) lt!1176004) lt!1176002) (++!9156 (list!13524 (BalanceConc!22113 Empty!11249)) (++!9156 lt!1176004 lt!1176002)))))

(declare-fun lt!1176003 () Unit!52487)

(assert (=> b!3460010 (= lt!1176003 lt!1176005)))

(declare-fun b!3460011 () Bool)

(assert (=> b!3460011 (= e!2143621 (list!13524 (BalanceConc!22113 Empty!11249)))))

(assert (= (and d!995646 c!592345) b!3460010))

(assert (= (and d!995646 (not c!592345)) b!3460011))

(assert (=> d!995646 m!3858943))

(declare-fun m!3862337 () Bool)

(assert (=> d!995646 m!3862337))

(assert (=> d!995646 m!3858443))

(assert (=> d!995646 m!3862337))

(declare-fun m!3862339 () Bool)

(assert (=> d!995646 m!3862339))

(declare-fun m!3862341 () Bool)

(assert (=> b!3460010 m!3862341))

(assert (=> b!3460010 m!3858443))

(declare-fun m!3862343 () Bool)

(assert (=> b!3460010 m!3862343))

(assert (=> b!3460010 m!3858443))

(declare-fun m!3862345 () Bool)

(assert (=> b!3460010 m!3862345))

(assert (=> b!3460010 m!3858443))

(declare-fun m!3862347 () Bool)

(assert (=> b!3460010 m!3862347))

(declare-fun m!3862349 () Bool)

(assert (=> b!3460010 m!3862349))

(assert (=> b!3460010 m!3862343))

(declare-fun m!3862351 () Bool)

(assert (=> b!3460010 m!3862351))

(declare-fun m!3862353 () Bool)

(assert (=> b!3460010 m!3862353))

(declare-fun m!3862355 () Bool)

(assert (=> b!3460010 m!3862355))

(assert (=> b!3460010 m!3862349))

(declare-fun m!3862357 () Bool)

(assert (=> b!3460010 m!3862357))

(assert (=> b!3460010 m!3862353))

(assert (=> b!3460010 m!3862347))

(assert (=> b!3460010 m!3858443))

(assert (=> b!3460010 m!3862355))

(declare-fun m!3862359 () Bool)

(assert (=> b!3460010 m!3862359))

(assert (=> d!994534 d!995646))

(assert (=> d!994534 d!994762))

(declare-fun d!995648 () Bool)

(assert (=> d!995648 (= (list!13524 lt!1175131) (list!13527 (c!591766 lt!1175131)))))

(declare-fun bs!560364 () Bool)

(assert (= bs!560364 d!995648))

(declare-fun m!3862361 () Bool)

(assert (=> bs!560364 m!3862361))

(assert (=> d!994534 d!995648))

(declare-fun d!995650 () Bool)

(declare-fun lt!1176006 () Bool)

(assert (=> d!995650 (= lt!1176006 (isEmpty!21518 (list!13526 (_1!21570 lt!1175203))))))

(assert (=> d!995650 (= lt!1176006 (isEmpty!21519 (c!591767 (_1!21570 lt!1175203))))))

(assert (=> d!995650 (= (isEmpty!21505 (_1!21570 lt!1175203)) lt!1176006)))

(declare-fun bs!560365 () Bool)

(assert (= bs!560365 d!995650))

(assert (=> bs!560365 m!3859229))

(assert (=> bs!560365 m!3859229))

(declare-fun m!3862363 () Bool)

(assert (=> bs!560365 m!3862363))

(declare-fun m!3862365 () Bool)

(assert (=> bs!560365 m!3862365))

(assert (=> b!3458340 d!995650))

(assert (=> d!994428 d!995012))

(declare-fun b!3460012 () Bool)

(declare-fun e!2143625 () Bool)

(declare-fun e!2143622 () Bool)

(assert (=> b!3460012 (= e!2143625 e!2143622)))

(declare-fun c!592346 () Bool)

(assert (=> b!3460012 (= c!592346 (is-Union!10196 (regex!5437 lt!1174826)))))

(declare-fun d!995652 () Bool)

(declare-fun res!1396008 () Bool)

(declare-fun e!2143624 () Bool)

(assert (=> d!995652 (=> res!1396008 e!2143624)))

(assert (=> d!995652 (= res!1396008 (is-ElementMatch!10196 (regex!5437 lt!1174826)))))

(assert (=> d!995652 (= (validRegex!4643 (regex!5437 lt!1174826)) e!2143624)))

(declare-fun b!3460013 () Bool)

(declare-fun e!2143626 () Bool)

(declare-fun call!249522 () Bool)

(assert (=> b!3460013 (= e!2143626 call!249522)))

(declare-fun b!3460014 () Bool)

(declare-fun res!1396005 () Bool)

(declare-fun e!2143627 () Bool)

(assert (=> b!3460014 (=> res!1396005 e!2143627)))

(assert (=> b!3460014 (= res!1396005 (not (is-Concat!15863 (regex!5437 lt!1174826))))))

(assert (=> b!3460014 (= e!2143622 e!2143627)))

(declare-fun b!3460015 () Bool)

(declare-fun e!2143623 () Bool)

(assert (=> b!3460015 (= e!2143625 e!2143623)))

(declare-fun res!1396007 () Bool)

(assert (=> b!3460015 (= res!1396007 (not (nullable!3487 (reg!10525 (regex!5437 lt!1174826)))))))

(assert (=> b!3460015 (=> (not res!1396007) (not e!2143623))))

(declare-fun b!3460016 () Bool)

(declare-fun e!2143628 () Bool)

(assert (=> b!3460016 (= e!2143628 call!249522)))

(declare-fun b!3460017 () Bool)

(assert (=> b!3460017 (= e!2143627 e!2143628)))

(declare-fun res!1396006 () Bool)

(assert (=> b!3460017 (=> (not res!1396006) (not e!2143628))))

(declare-fun call!249521 () Bool)

(assert (=> b!3460017 (= res!1396006 call!249521)))

(declare-fun b!3460018 () Bool)

(declare-fun res!1396004 () Bool)

(assert (=> b!3460018 (=> (not res!1396004) (not e!2143626))))

(assert (=> b!3460018 (= res!1396004 call!249521)))

(assert (=> b!3460018 (= e!2143622 e!2143626)))

(declare-fun bm!249515 () Bool)

(declare-fun call!249520 () Bool)

(assert (=> bm!249515 (= call!249521 call!249520)))

(declare-fun bm!249516 () Bool)

(assert (=> bm!249516 (= call!249522 (validRegex!4643 (ite c!592346 (regTwo!20905 (regex!5437 lt!1174826)) (regTwo!20904 (regex!5437 lt!1174826)))))))

(declare-fun c!592347 () Bool)

(declare-fun bm!249517 () Bool)

(assert (=> bm!249517 (= call!249520 (validRegex!4643 (ite c!592347 (reg!10525 (regex!5437 lt!1174826)) (ite c!592346 (regOne!20905 (regex!5437 lt!1174826)) (regOne!20904 (regex!5437 lt!1174826))))))))

(declare-fun b!3460019 () Bool)

(assert (=> b!3460019 (= e!2143624 e!2143625)))

(assert (=> b!3460019 (= c!592347 (is-Star!10196 (regex!5437 lt!1174826)))))

(declare-fun b!3460020 () Bool)

(assert (=> b!3460020 (= e!2143623 call!249520)))

(assert (= (and d!995652 (not res!1396008)) b!3460019))

(assert (= (and b!3460019 c!592347) b!3460015))

(assert (= (and b!3460019 (not c!592347)) b!3460012))

(assert (= (and b!3460015 res!1396007) b!3460020))

(assert (= (and b!3460012 c!592346) b!3460018))

(assert (= (and b!3460012 (not c!592346)) b!3460014))

(assert (= (and b!3460018 res!1396004) b!3460013))

(assert (= (and b!3460014 (not res!1396005)) b!3460017))

(assert (= (and b!3460017 res!1396006) b!3460016))

(assert (= (or b!3460013 b!3460016) bm!249516))

(assert (= (or b!3460018 b!3460017) bm!249515))

(assert (= (or b!3460020 bm!249515) bm!249517))

(declare-fun m!3862367 () Bool)

(assert (=> b!3460015 m!3862367))

(declare-fun m!3862369 () Bool)

(assert (=> bm!249516 m!3862369))

(declare-fun m!3862371 () Bool)

(assert (=> bm!249517 m!3862371))

(assert (=> d!994428 d!995652))

(declare-fun d!995654 () Bool)

(declare-fun lt!1176007 () Int)

(assert (=> d!995654 (>= lt!1176007 0)))

(declare-fun e!2143629 () Int)

(assert (=> d!995654 (= lt!1176007 e!2143629)))

(declare-fun c!592348 () Bool)

(assert (=> d!995654 (= c!592348 (is-Nil!37157 lt!1174976))))

(assert (=> d!995654 (= (size!28184 lt!1174976) lt!1176007)))

(declare-fun b!3460021 () Bool)

(assert (=> b!3460021 (= e!2143629 0)))

(declare-fun b!3460022 () Bool)

(assert (=> b!3460022 (= e!2143629 (+ 1 (size!28184 (t!272528 lt!1174976))))))

(assert (= (and d!995654 c!592348) b!3460021))

(assert (= (and d!995654 (not c!592348)) b!3460022))

(declare-fun m!3862373 () Bool)

(assert (=> b!3460022 m!3862373))

(assert (=> b!3457854 d!995654))

(assert (=> b!3457854 d!994520))

(assert (=> b!3457854 d!995454))

(declare-fun b!3460023 () Bool)

(declare-fun res!1396010 () Bool)

(declare-fun e!2143630 () Bool)

(assert (=> b!3460023 (=> (not res!1396010) (not e!2143630))))

(assert (=> b!3460023 (= res!1396010 (<= (- (height!1695 (left!28993 (c!591767 lt!1175003))) (height!1695 (right!29323 (c!591767 lt!1175003)))) 1))))

(declare-fun b!3460024 () Bool)

(declare-fun res!1396014 () Bool)

(assert (=> b!3460024 (=> (not res!1396014) (not e!2143630))))

(assert (=> b!3460024 (= res!1396014 (isBalanced!3412 (right!29323 (c!591767 lt!1175003))))))

(declare-fun b!3460025 () Bool)

(declare-fun res!1396009 () Bool)

(assert (=> b!3460025 (=> (not res!1396009) (not e!2143630))))

(assert (=> b!3460025 (= res!1396009 (isBalanced!3412 (left!28993 (c!591767 lt!1175003))))))

(declare-fun b!3460026 () Bool)

(declare-fun res!1396013 () Bool)

(assert (=> b!3460026 (=> (not res!1396013) (not e!2143630))))

(assert (=> b!3460026 (= res!1396013 (not (isEmpty!21519 (left!28993 (c!591767 lt!1175003)))))))

(declare-fun d!995656 () Bool)

(declare-fun res!1396012 () Bool)

(declare-fun e!2143631 () Bool)

(assert (=> d!995656 (=> res!1396012 e!2143631)))

(assert (=> d!995656 (= res!1396012 (not (is-Node!11250 (c!591767 lt!1175003))))))

(assert (=> d!995656 (= (isBalanced!3412 (c!591767 lt!1175003)) e!2143631)))

(declare-fun b!3460027 () Bool)

(assert (=> b!3460027 (= e!2143631 e!2143630)))

(declare-fun res!1396011 () Bool)

(assert (=> b!3460027 (=> (not res!1396011) (not e!2143630))))

(assert (=> b!3460027 (= res!1396011 (<= (- 1) (- (height!1695 (left!28993 (c!591767 lt!1175003))) (height!1695 (right!29323 (c!591767 lt!1175003))))))))

(declare-fun b!3460028 () Bool)

(assert (=> b!3460028 (= e!2143630 (not (isEmpty!21519 (right!29323 (c!591767 lt!1175003)))))))

(assert (= (and d!995656 (not res!1396012)) b!3460027))

(assert (= (and b!3460027 res!1396011) b!3460023))

(assert (= (and b!3460023 res!1396010) b!3460025))

(assert (= (and b!3460025 res!1396009) b!3460024))

(assert (= (and b!3460024 res!1396014) b!3460026))

(assert (= (and b!3460026 res!1396013) b!3460028))

(declare-fun m!3862375 () Bool)

(assert (=> b!3460028 m!3862375))

(declare-fun m!3862377 () Bool)

(assert (=> b!3460023 m!3862377))

(declare-fun m!3862379 () Bool)

(assert (=> b!3460023 m!3862379))

(assert (=> b!3460027 m!3862377))

(assert (=> b!3460027 m!3862379))

(declare-fun m!3862381 () Bool)

(assert (=> b!3460026 m!3862381))

(declare-fun m!3862383 () Bool)

(assert (=> b!3460025 m!3862383))

(declare-fun m!3862385 () Bool)

(assert (=> b!3460024 m!3862385))

(assert (=> b!3457867 d!995656))

(declare-fun d!995658 () Bool)

(declare-fun lt!1176008 () Int)

(assert (=> d!995658 (>= lt!1176008 0)))

(declare-fun e!2143632 () Int)

(assert (=> d!995658 (= lt!1176008 e!2143632)))

(declare-fun c!592349 () Bool)

(assert (=> d!995658 (= c!592349 (is-Nil!37157 lt!1175059))))

(assert (=> d!995658 (= (size!28184 lt!1175059) lt!1176008)))

(declare-fun b!3460029 () Bool)

(assert (=> b!3460029 (= e!2143632 0)))

(declare-fun b!3460030 () Bool)

(assert (=> b!3460030 (= e!2143632 (+ 1 (size!28184 (t!272528 lt!1175059))))))

(assert (= (and d!995658 c!592349) b!3460029))

(assert (= (and d!995658 (not c!592349)) b!3460030))

(declare-fun m!3862387 () Bool)

(assert (=> b!3460030 m!3862387))

(assert (=> b!3458045 d!995658))

(declare-fun d!995660 () Bool)

(declare-fun lt!1176009 () Int)

(assert (=> d!995660 (>= lt!1176009 0)))

(declare-fun e!2143633 () Int)

(assert (=> d!995660 (= lt!1176009 e!2143633)))

(declare-fun c!592350 () Bool)

(assert (=> d!995660 (= c!592350 (is-Nil!37157 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))

(assert (=> d!995660 (= (size!28184 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))) lt!1176009)))

(declare-fun b!3460031 () Bool)

(assert (=> b!3460031 (= e!2143633 0)))

(declare-fun b!3460032 () Bool)

(assert (=> b!3460032 (= e!2143633 (+ 1 (size!28184 (t!272528 (list!13524 (charsOf!3451 (h!42579 (t!272530 tokens!494))))))))))

(assert (= (and d!995660 c!592350) b!3460031))

(assert (= (and d!995660 (not c!592350)) b!3460032))

(assert (=> b!3460032 m!3860407))

(assert (=> b!3458045 d!995660))

(assert (=> b!3458045 d!995454))

(declare-fun b!3460035 () Bool)

(declare-fun res!1396016 () Bool)

(declare-fun e!2143634 () Bool)

(assert (=> b!3460035 (=> (not res!1396016) (not e!2143634))))

(declare-fun lt!1176010 () List!37281)

(assert (=> b!3460035 (= res!1396016 (= (size!28184 lt!1176010) (+ (size!28184 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))) (size!28184 (_2!21571 (get!11893 lt!1175029))))))))

(declare-fun d!995662 () Bool)

(assert (=> d!995662 e!2143634))

(declare-fun res!1396015 () Bool)

(assert (=> d!995662 (=> (not res!1396015) (not e!2143634))))

(assert (=> d!995662 (= res!1396015 (= (content!5182 lt!1176010) (set.union (content!5182 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))) (content!5182 (_2!21571 (get!11893 lt!1175029))))))))

(declare-fun e!2143635 () List!37281)

(assert (=> d!995662 (= lt!1176010 e!2143635)))

(declare-fun c!592351 () Bool)

(assert (=> d!995662 (= c!592351 (is-Nil!37157 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))))))

(assert (=> d!995662 (= (++!9156 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))) (_2!21571 (get!11893 lt!1175029))) lt!1176010)))

(declare-fun b!3460034 () Bool)

(assert (=> b!3460034 (= e!2143635 (Cons!37157 (h!42577 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))) (++!9156 (t!272528 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029))))) (_2!21571 (get!11893 lt!1175029)))))))

(declare-fun b!3460036 () Bool)

(assert (=> b!3460036 (= e!2143634 (or (not (= (_2!21571 (get!11893 lt!1175029)) Nil!37157)) (= lt!1176010 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175029)))))))))

(declare-fun b!3460033 () Bool)

(assert (=> b!3460033 (= e!2143635 (_2!21571 (get!11893 lt!1175029)))))

(assert (= (and d!995662 c!592351) b!3460033))

(assert (= (and d!995662 (not c!592351)) b!3460034))

(assert (= (and d!995662 res!1396015) b!3460035))

(assert (= (and b!3460035 res!1396016) b!3460036))

(declare-fun m!3862389 () Bool)

(assert (=> b!3460035 m!3862389))

(assert (=> b!3460035 m!3858579))

(declare-fun m!3862391 () Bool)

(assert (=> b!3460035 m!3862391))

(assert (=> b!3460035 m!3858593))

(declare-fun m!3862393 () Bool)

(assert (=> d!995662 m!3862393))

(assert (=> d!995662 m!3858579))

(declare-fun m!3862395 () Bool)

(assert (=> d!995662 m!3862395))

(declare-fun m!3862397 () Bool)

(assert (=> d!995662 m!3862397))

(declare-fun m!3862399 () Bool)

(assert (=> b!3460034 m!3862399))

(assert (=> b!3457980 d!995662))

(assert (=> b!3457980 d!994800))

(assert (=> b!3457980 d!994802))

(assert (=> b!3457980 d!994798))

(declare-fun d!995664 () Bool)

(declare-fun lt!1176011 () Bool)

(assert (=> d!995664 (= lt!1176011 (isEmpty!21510 (list!13524 (_2!21570 lt!1175008))))))

(assert (=> d!995664 (= lt!1176011 (isEmpty!21511 (c!591766 (_2!21570 lt!1175008))))))

(assert (=> d!995664 (= (isEmpty!21504 (_2!21570 lt!1175008)) lt!1176011)))

(declare-fun bs!560366 () Bool)

(assert (= bs!560366 d!995664))

(declare-fun m!3862401 () Bool)

(assert (=> bs!560366 m!3862401))

(assert (=> bs!560366 m!3862401))

(declare-fun m!3862403 () Bool)

(assert (=> bs!560366 m!3862403))

(declare-fun m!3862405 () Bool)

(assert (=> bs!560366 m!3862405))

(assert (=> b!3457881 d!995664))

(declare-fun d!995666 () Bool)

(declare-fun lt!1176012 () Bool)

(assert (=> d!995666 (= lt!1176012 (set.member (rule!8027 (h!42579 tokens!494)) (content!5183 (t!272529 rules!2135))))))

(declare-fun e!2143637 () Bool)

(assert (=> d!995666 (= lt!1176012 e!2143637)))

(declare-fun res!1396018 () Bool)

(assert (=> d!995666 (=> (not res!1396018) (not e!2143637))))

(assert (=> d!995666 (= res!1396018 (is-Cons!37158 (t!272529 rules!2135)))))

(assert (=> d!995666 (= (contains!6885 (t!272529 rules!2135) (rule!8027 (h!42579 tokens!494))) lt!1176012)))

(declare-fun b!3460037 () Bool)

(declare-fun e!2143636 () Bool)

(assert (=> b!3460037 (= e!2143637 e!2143636)))

(declare-fun res!1396017 () Bool)

(assert (=> b!3460037 (=> res!1396017 e!2143636)))

(assert (=> b!3460037 (= res!1396017 (= (h!42578 (t!272529 rules!2135)) (rule!8027 (h!42579 tokens!494))))))

(declare-fun b!3460038 () Bool)

(assert (=> b!3460038 (= e!2143636 (contains!6885 (t!272529 (t!272529 rules!2135)) (rule!8027 (h!42579 tokens!494))))))

(assert (= (and d!995666 res!1396018) b!3460037))

(assert (= (and b!3460037 (not res!1396017)) b!3460038))

(assert (=> d!995666 m!3860155))

(declare-fun m!3862407 () Bool)

(assert (=> d!995666 m!3862407))

(declare-fun m!3862409 () Bool)

(assert (=> b!3460038 m!3862409))

(assert (=> b!3458317 d!995666))

(declare-fun d!995668 () Bool)

(declare-fun lt!1176013 () Int)

(assert (=> d!995668 (= lt!1176013 (size!28184 (list!13524 (_2!21570 lt!1175189))))))

(assert (=> d!995668 (= lt!1176013 (size!28195 (c!591766 (_2!21570 lt!1175189))))))

(assert (=> d!995668 (= (size!28188 (_2!21570 lt!1175189)) lt!1176013)))

(declare-fun bs!560367 () Bool)

(assert (= bs!560367 d!995668))

(assert (=> bs!560367 m!3859143))

(assert (=> bs!560367 m!3859143))

(declare-fun m!3862411 () Bool)

(assert (=> bs!560367 m!3862411))

(declare-fun m!3862413 () Bool)

(assert (=> bs!560367 m!3862413))

(assert (=> b!3458331 d!995668))

(declare-fun d!995670 () Bool)

(declare-fun lt!1176014 () Int)

(assert (=> d!995670 (= lt!1176014 (size!28184 (list!13524 lt!1174842)))))

(assert (=> d!995670 (= lt!1176014 (size!28195 (c!591766 lt!1174842)))))

(assert (=> d!995670 (= (size!28188 lt!1174842) lt!1176014)))

(declare-fun bs!560368 () Bool)

(assert (= bs!560368 d!995670))

(assert (=> bs!560368 m!3859145))

(assert (=> bs!560368 m!3859145))

(assert (=> bs!560368 m!3861833))

(declare-fun m!3862415 () Bool)

(assert (=> bs!560368 m!3862415))

(assert (=> b!3458331 d!995670))

(declare-fun b!3460039 () Bool)

(declare-fun e!2143639 () List!37281)

(declare-fun e!2143638 () List!37281)

(assert (=> b!3460039 (= e!2143639 e!2143638)))

(declare-fun c!592354 () Bool)

(assert (=> b!3460039 (= c!592354 (is-ElementMatch!10196 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))

(declare-fun b!3460040 () Bool)

(assert (=> b!3460040 (= e!2143638 (Cons!37157 (c!591765 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))) Nil!37157))))

(declare-fun b!3460041 () Bool)

(declare-fun e!2143641 () List!37281)

(declare-fun call!249524 () List!37281)

(assert (=> b!3460041 (= e!2143641 call!249524)))

(declare-fun call!249525 () List!37281)

(declare-fun bm!249518 () Bool)

(declare-fun c!592352 () Bool)

(assert (=> bm!249518 (= call!249525 (usedCharacters!671 (ite c!592352 (regOne!20905 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))) (regTwo!20904 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))))

(declare-fun b!3460042 () Bool)

(declare-fun e!2143640 () List!37281)

(declare-fun call!249523 () List!37281)

(assert (=> b!3460042 (= e!2143640 call!249523)))

(declare-fun c!592353 () Bool)

(declare-fun d!995672 () Bool)

(assert (=> d!995672 (= c!592353 (or (is-EmptyExpr!10196 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))) (is-EmptyLang!10196 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))))

(assert (=> d!995672 (= (usedCharacters!671 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))) e!2143639)))

(declare-fun b!3460043 () Bool)

(assert (=> b!3460043 (= e!2143641 call!249524)))

(declare-fun c!592355 () Bool)

(declare-fun bm!249519 () Bool)

(assert (=> bm!249519 (= call!249523 (usedCharacters!671 (ite c!592355 (reg!10525 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))) (ite c!592352 (regTwo!20905 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))) (regOne!20904 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))))))

(declare-fun b!3460044 () Bool)

(assert (=> b!3460044 (= e!2143639 Nil!37157)))

(declare-fun b!3460045 () Bool)

(assert (=> b!3460045 (= e!2143640 e!2143641)))

(assert (=> b!3460045 (= c!592352 (is-Union!10196 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))

(declare-fun bm!249520 () Bool)

(declare-fun call!249526 () List!37281)

(assert (=> bm!249520 (= call!249526 call!249523)))

(declare-fun b!3460046 () Bool)

(assert (=> b!3460046 (= c!592355 (is-Star!10196 (ite c!591858 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (ite c!591855 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))) (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))

(assert (=> b!3460046 (= e!2143638 e!2143640)))

(declare-fun bm!249521 () Bool)

(assert (=> bm!249521 (= call!249524 (++!9156 (ite c!592352 call!249525 call!249526) (ite c!592352 call!249526 call!249525)))))

(assert (= (and d!995672 c!592353) b!3460044))

(assert (= (and d!995672 (not c!592353)) b!3460039))

(assert (= (and b!3460039 c!592354) b!3460040))

(assert (= (and b!3460039 (not c!592354)) b!3460046))

(assert (= (and b!3460046 c!592355) b!3460042))

(assert (= (and b!3460046 (not c!592355)) b!3460045))

(assert (= (and b!3460045 c!592352) b!3460043))

(assert (= (and b!3460045 (not c!592352)) b!3460041))

(assert (= (or b!3460043 b!3460041) bm!249520))

(assert (= (or b!3460043 b!3460041) bm!249518))

(assert (= (or b!3460043 b!3460041) bm!249521))

(assert (= (or b!3460042 bm!249520) bm!249519))

(declare-fun m!3862417 () Bool)

(assert (=> bm!249518 m!3862417))

(declare-fun m!3862419 () Bool)

(assert (=> bm!249519 m!3862419))

(declare-fun m!3862421 () Bool)

(assert (=> bm!249521 m!3862421))

(assert (=> bm!249366 d!995672))

(declare-fun b!3460049 () Bool)

(declare-fun res!1396020 () Bool)

(declare-fun e!2143642 () Bool)

(assert (=> b!3460049 (=> (not res!1396020) (not e!2143642))))

(declare-fun lt!1176015 () List!37281)

(assert (=> b!3460049 (= res!1396020 (= (size!28184 lt!1176015) (+ (size!28184 (ite c!591851 call!249368 call!249369)) (size!28184 (ite c!591851 call!249369 call!249368)))))))

(declare-fun d!995674 () Bool)

(assert (=> d!995674 e!2143642))

(declare-fun res!1396019 () Bool)

(assert (=> d!995674 (=> (not res!1396019) (not e!2143642))))

(assert (=> d!995674 (= res!1396019 (= (content!5182 lt!1176015) (set.union (content!5182 (ite c!591851 call!249368 call!249369)) (content!5182 (ite c!591851 call!249369 call!249368)))))))

(declare-fun e!2143643 () List!37281)

(assert (=> d!995674 (= lt!1176015 e!2143643)))

(declare-fun c!592356 () Bool)

(assert (=> d!995674 (= c!592356 (is-Nil!37157 (ite c!591851 call!249368 call!249369)))))

(assert (=> d!995674 (= (++!9156 (ite c!591851 call!249368 call!249369) (ite c!591851 call!249369 call!249368)) lt!1176015)))

(declare-fun b!3460048 () Bool)

(assert (=> b!3460048 (= e!2143643 (Cons!37157 (h!42577 (ite c!591851 call!249368 call!249369)) (++!9156 (t!272528 (ite c!591851 call!249368 call!249369)) (ite c!591851 call!249369 call!249368))))))

(declare-fun b!3460050 () Bool)

(assert (=> b!3460050 (= e!2143642 (or (not (= (ite c!591851 call!249369 call!249368) Nil!37157)) (= lt!1176015 (ite c!591851 call!249368 call!249369))))))

(declare-fun b!3460047 () Bool)

(assert (=> b!3460047 (= e!2143643 (ite c!591851 call!249369 call!249368))))

(assert (= (and d!995674 c!592356) b!3460047))

(assert (= (and d!995674 (not c!592356)) b!3460048))

(assert (= (and d!995674 res!1396019) b!3460049))

(assert (= (and b!3460049 res!1396020) b!3460050))

(declare-fun m!3862423 () Bool)

(assert (=> b!3460049 m!3862423))

(declare-fun m!3862425 () Bool)

(assert (=> b!3460049 m!3862425))

(declare-fun m!3862427 () Bool)

(assert (=> b!3460049 m!3862427))

(declare-fun m!3862429 () Bool)

(assert (=> d!995674 m!3862429))

(declare-fun m!3862431 () Bool)

(assert (=> d!995674 m!3862431))

(declare-fun m!3862433 () Bool)

(assert (=> d!995674 m!3862433))

(declare-fun m!3862435 () Bool)

(assert (=> b!3460048 m!3862435))

(assert (=> bm!249364 d!995674))

(declare-fun d!995676 () Bool)

(declare-fun lt!1176016 () Token!10240)

(assert (=> d!995676 (contains!6889 (list!13526 (_1!21570 lt!1174825)) lt!1176016)))

(declare-fun e!2143644 () Token!10240)

(assert (=> d!995676 (= lt!1176016 e!2143644)))

(declare-fun c!592357 () Bool)

(assert (=> d!995676 (= c!592357 (= 0 0))))

(declare-fun e!2143645 () Bool)

(assert (=> d!995676 e!2143645))

(declare-fun res!1396021 () Bool)

(assert (=> d!995676 (=> (not res!1396021) (not e!2143645))))

(assert (=> d!995676 (= res!1396021 (<= 0 0))))

(assert (=> d!995676 (= (apply!8748 (list!13526 (_1!21570 lt!1174825)) 0) lt!1176016)))

(declare-fun b!3460051 () Bool)

(assert (=> b!3460051 (= e!2143645 (< 0 (size!28190 (list!13526 (_1!21570 lt!1174825)))))))

(declare-fun b!3460052 () Bool)

(assert (=> b!3460052 (= e!2143644 (head!7318 (list!13526 (_1!21570 lt!1174825))))))

(declare-fun b!3460053 () Bool)

(assert (=> b!3460053 (= e!2143644 (apply!8748 (tail!5430 (list!13526 (_1!21570 lt!1174825))) (- 0 1)))))

(assert (= (and d!995676 res!1396021) b!3460051))

(assert (= (and d!995676 c!592357) b!3460052))

(assert (= (and d!995676 (not c!592357)) b!3460053))

(assert (=> d!995676 m!3858605))

(declare-fun m!3862437 () Bool)

(assert (=> d!995676 m!3862437))

(assert (=> b!3460051 m!3858605))

(assert (=> b!3460051 m!3859105))

(assert (=> b!3460052 m!3858605))

(declare-fun m!3862439 () Bool)

(assert (=> b!3460052 m!3862439))

(assert (=> b!3460053 m!3858605))

(declare-fun m!3862441 () Bool)

(assert (=> b!3460053 m!3862441))

(assert (=> b!3460053 m!3862441))

(declare-fun m!3862443 () Bool)

(assert (=> b!3460053 m!3862443))

(assert (=> d!994444 d!995676))

(assert (=> d!994444 d!994894))

(declare-fun b!3460054 () Bool)

(declare-fun e!2143649 () Int)

(assert (=> b!3460054 (= e!2143649 0)))

(declare-fun bm!249522 () Bool)

(declare-fun c!592359 () Bool)

(declare-fun c!592360 () Bool)

(assert (=> bm!249522 (= c!592359 c!592360)))

(declare-fun call!249527 () Token!10240)

(assert (=> bm!249522 (= call!249527 (apply!8749 (ite c!592360 (left!28993 (c!591767 (_1!21570 lt!1174825))) (right!29323 (c!591767 (_1!21570 lt!1174825)))) e!2143649))))

(declare-fun b!3460056 () Bool)

(declare-fun e!2143646 () Token!10240)

(assert (=> b!3460056 (= e!2143646 (apply!8752 (xs!14424 (c!591767 (_1!21570 lt!1174825))) 0))))

(declare-fun b!3460057 () Bool)

(assert (=> b!3460057 (= e!2143649 (- 0 (size!28191 (left!28993 (c!591767 (_1!21570 lt!1174825))))))))

(declare-fun b!3460058 () Bool)

(declare-fun e!2143648 () Token!10240)

(assert (=> b!3460058 (= e!2143648 call!249527)))

(declare-fun b!3460059 () Bool)

(declare-fun e!2143647 () Bool)

(assert (=> b!3460059 (= e!2143647 (< 0 (size!28191 (c!591767 (_1!21570 lt!1174825)))))))

(declare-fun b!3460060 () Bool)

(assert (=> b!3460060 (= e!2143648 call!249527)))

(declare-fun b!3460055 () Bool)

(assert (=> b!3460055 (= e!2143646 e!2143648)))

(declare-fun lt!1176018 () Bool)

(assert (=> b!3460055 (= lt!1176018 (appendIndex!343 (list!13530 (left!28993 (c!591767 (_1!21570 lt!1174825)))) (list!13530 (right!29323 (c!591767 (_1!21570 lt!1174825)))) 0))))

(assert (=> b!3460055 (= c!592360 (< 0 (size!28191 (left!28993 (c!591767 (_1!21570 lt!1174825))))))))

(declare-fun d!995678 () Bool)

(declare-fun lt!1176017 () Token!10240)

(assert (=> d!995678 (= lt!1176017 (apply!8748 (list!13530 (c!591767 (_1!21570 lt!1174825))) 0))))

(assert (=> d!995678 (= lt!1176017 e!2143646)))

(declare-fun c!592358 () Bool)

(assert (=> d!995678 (= c!592358 (is-Leaf!17580 (c!591767 (_1!21570 lt!1174825))))))

(assert (=> d!995678 e!2143647))

(declare-fun res!1396022 () Bool)

(assert (=> d!995678 (=> (not res!1396022) (not e!2143647))))

(assert (=> d!995678 (= res!1396022 (<= 0 0))))

(assert (=> d!995678 (= (apply!8749 (c!591767 (_1!21570 lt!1174825)) 0) lt!1176017)))

(assert (= (and d!995678 res!1396022) b!3460059))

(assert (= (and d!995678 c!592358) b!3460056))

(assert (= (and d!995678 (not c!592358)) b!3460055))

(assert (= (and b!3460055 c!592360) b!3460060))

(assert (= (and b!3460055 (not c!592360)) b!3460058))

(assert (= (or b!3460060 b!3460058) bm!249522))

(assert (= (and bm!249522 c!592359) b!3460054))

(assert (= (and bm!249522 (not c!592359)) b!3460057))

(declare-fun m!3862445 () Bool)

(assert (=> bm!249522 m!3862445))

(declare-fun m!3862447 () Bool)

(assert (=> b!3460055 m!3862447))

(declare-fun m!3862449 () Bool)

(assert (=> b!3460055 m!3862449))

(assert (=> b!3460055 m!3862447))

(assert (=> b!3460055 m!3862449))

(declare-fun m!3862451 () Bool)

(assert (=> b!3460055 m!3862451))

(declare-fun m!3862453 () Bool)

(assert (=> b!3460055 m!3862453))

(assert (=> b!3460057 m!3862453))

(assert (=> b!3460059 m!3859107))

(assert (=> d!995678 m!3860117))

(assert (=> d!995678 m!3860117))

(declare-fun m!3862455 () Bool)

(assert (=> d!995678 m!3862455))

(declare-fun m!3862457 () Bool)

(assert (=> b!3460056 m!3862457))

(assert (=> d!994444 d!995678))

(declare-fun b!3460063 () Bool)

(declare-fun res!1396024 () Bool)

(declare-fun e!2143650 () Bool)

(assert (=> b!3460063 (=> (not res!1396024) (not e!2143650))))

(declare-fun lt!1176019 () List!37281)

(assert (=> b!3460063 (= res!1396024 (= (size!28184 lt!1176019) (+ (size!28184 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))) (size!28184 (_2!21571 (get!11893 lt!1175092))))))))

(declare-fun d!995680 () Bool)

(assert (=> d!995680 e!2143650))

(declare-fun res!1396023 () Bool)

(assert (=> d!995680 (=> (not res!1396023) (not e!2143650))))

(assert (=> d!995680 (= res!1396023 (= (content!5182 lt!1176019) (set.union (content!5182 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))) (content!5182 (_2!21571 (get!11893 lt!1175092))))))))

(declare-fun e!2143651 () List!37281)

(assert (=> d!995680 (= lt!1176019 e!2143651)))

(declare-fun c!592361 () Bool)

(assert (=> d!995680 (= c!592361 (is-Nil!37157 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))))))

(assert (=> d!995680 (= (++!9156 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092)))) (_2!21571 (get!11893 lt!1175092))) lt!1176019)))

(declare-fun b!3460062 () Bool)

(assert (=> b!3460062 (= e!2143651 (Cons!37157 (h!42577 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))) (++!9156 (t!272528 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092))))) (_2!21571 (get!11893 lt!1175092)))))))

(declare-fun b!3460064 () Bool)

(assert (=> b!3460064 (= e!2143650 (or (not (= (_2!21571 (get!11893 lt!1175092)) Nil!37157)) (= lt!1176019 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1175092)))))))))

(declare-fun b!3460061 () Bool)

(assert (=> b!3460061 (= e!2143651 (_2!21571 (get!11893 lt!1175092)))))

(assert (= (and d!995680 c!592361) b!3460061))

(assert (= (and d!995680 (not c!592361)) b!3460062))

(assert (= (and d!995680 res!1396023) b!3460063))

(assert (= (and b!3460063 res!1396024) b!3460064))

(declare-fun m!3862459 () Bool)

(assert (=> b!3460063 m!3862459))

(assert (=> b!3460063 m!3858871))

(declare-fun m!3862461 () Bool)

(assert (=> b!3460063 m!3862461))

(assert (=> b!3460063 m!3858877))

(declare-fun m!3862463 () Bool)

(assert (=> d!995680 m!3862463))

(assert (=> d!995680 m!3858871))

(declare-fun m!3862465 () Bool)

(assert (=> d!995680 m!3862465))

(declare-fun m!3862467 () Bool)

(assert (=> d!995680 m!3862467))

(declare-fun m!3862469 () Bool)

(assert (=> b!3460062 m!3862469))

(assert (=> b!3458123 d!995680))

(assert (=> b!3458123 d!995006))

(assert (=> b!3458123 d!995008))

(assert (=> b!3458123 d!994754))

(assert (=> b!3458333 d!995588))

(declare-fun d!995682 () Bool)

(assert (=> d!995682 (= (isEmpty!21516 lt!1174853) (not (is-Some!7520 lt!1174853)))))

(assert (=> d!994568 d!995682))

(declare-fun d!995684 () Bool)

(declare-fun res!1396029 () Bool)

(declare-fun e!2143656 () Bool)

(assert (=> d!995684 (=> res!1396029 e!2143656)))

(assert (=> d!995684 (= res!1396029 (is-Nil!37158 rules!2135))))

(assert (=> d!995684 (= (noDuplicateTag!2038 thiss!18206 rules!2135 Nil!37164) e!2143656)))

(declare-fun b!3460069 () Bool)

(declare-fun e!2143657 () Bool)

(assert (=> b!3460069 (= e!2143656 e!2143657)))

(declare-fun res!1396030 () Bool)

(assert (=> b!3460069 (=> (not res!1396030) (not e!2143657))))

(declare-fun contains!6892 (List!37288 String!41670) Bool)

(assert (=> b!3460069 (= res!1396030 (not (contains!6892 Nil!37164 (tag!6045 (h!42578 rules!2135)))))))

(declare-fun b!3460070 () Bool)

(assert (=> b!3460070 (= e!2143657 (noDuplicateTag!2038 thiss!18206 (t!272529 rules!2135) (Cons!37164 (tag!6045 (h!42578 rules!2135)) Nil!37164)))))

(assert (= (and d!995684 (not res!1396029)) b!3460069))

(assert (= (and b!3460069 res!1396030) b!3460070))

(declare-fun m!3862471 () Bool)

(assert (=> b!3460069 m!3862471))

(declare-fun m!3862473 () Bool)

(assert (=> b!3460070 m!3862473))

(assert (=> b!3457837 d!995684))

(declare-fun d!995686 () Bool)

(declare-fun lt!1176020 () Int)

(assert (=> d!995686 (>= lt!1176020 0)))

(declare-fun e!2143658 () Int)

(assert (=> d!995686 (= lt!1176020 e!2143658)))

(declare-fun c!592362 () Bool)

(assert (=> d!995686 (= c!592362 (is-Nil!37157 (_2!21571 (get!11893 lt!1175092))))))

(assert (=> d!995686 (= (size!28184 (_2!21571 (get!11893 lt!1175092))) lt!1176020)))

(declare-fun b!3460071 () Bool)

(assert (=> b!3460071 (= e!2143658 0)))

(declare-fun b!3460072 () Bool)

(assert (=> b!3460072 (= e!2143658 (+ 1 (size!28184 (t!272528 (_2!21571 (get!11893 lt!1175092))))))))

(assert (= (and d!995686 c!592362) b!3460071))

(assert (= (and d!995686 (not c!592362)) b!3460072))

(declare-fun m!3862475 () Bool)

(assert (=> b!3460072 m!3862475))

(assert (=> b!3458126 d!995686))

(assert (=> b!3458126 d!994754))

(assert (=> b!3458126 d!994520))

(declare-fun d!995688 () Bool)

(assert (=> d!995688 (= (inv!50322 (tag!6045 (rule!8027 (h!42579 (t!272530 tokens!494))))) (= (mod (str.len (value!175390 (tag!6045 (rule!8027 (h!42579 (t!272530 tokens!494)))))) 2) 0))))

(assert (=> b!3458411 d!995688))

(declare-fun d!995690 () Bool)

(declare-fun res!1396031 () Bool)

(declare-fun e!2143659 () Bool)

(assert (=> d!995690 (=> (not res!1396031) (not e!2143659))))

(assert (=> d!995690 (= res!1396031 (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))))))

(assert (=> d!995690 (= (inv!50325 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) e!2143659)))

(declare-fun b!3460073 () Bool)

(assert (=> b!3460073 (= e!2143659 (equivClasses!2181 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))))))

(assert (= (and d!995690 res!1396031) b!3460073))

(declare-fun m!3862477 () Bool)

(assert (=> d!995690 m!3862477))

(declare-fun m!3862479 () Bool)

(assert (=> b!3460073 m!3862479))

(assert (=> b!3458411 d!995690))

(declare-fun d!995692 () Bool)

(assert (=> d!995692 (dynLambda!15651 lambda!121776 (h!42579 tokens!494))))

(assert (=> d!995692 true))

(declare-fun _$7!1297 () Unit!52487)

(assert (=> d!995692 (= (choose!19990 tokens!494 lambda!121776 (h!42579 tokens!494)) _$7!1297)))

(declare-fun b_lambda!99601 () Bool)

(assert (=> (not b_lambda!99601) (not d!995692)))

(declare-fun bs!560369 () Bool)

(assert (= bs!560369 d!995692))

(assert (=> bs!560369 m!3858397))

(assert (=> d!994402 d!995692))

(assert (=> d!994402 d!994398))

(assert (=> b!3457974 d!994798))

(declare-fun d!995694 () Bool)

(assert (=> d!995694 (= (apply!8745 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029))))) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029))))))))

(declare-fun b_lambda!99603 () Bool)

(assert (=> (not b_lambda!99603) (not d!995694)))

(declare-fun tb!188529 () Bool)

(declare-fun t!272822 () Bool)

(assert (=> (and b!3457652 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272822) tb!188529))

(declare-fun result!232514 () Bool)

(assert (=> tb!188529 (= result!232514 (inv!21 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029))))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029)))))))))

(declare-fun m!3862481 () Bool)

(assert (=> tb!188529 m!3862481))

(assert (=> d!995694 t!272822))

(declare-fun b_and!243373 () Bool)

(assert (= b_and!243329 (and (=> t!272822 result!232514) b_and!243373)))

(declare-fun tb!188531 () Bool)

(declare-fun t!272824 () Bool)

(assert (=> (and b!3458384 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272824) tb!188531))

(declare-fun result!232516 () Bool)

(assert (= result!232516 result!232514))

(assert (=> d!995694 t!272824))

(declare-fun b_and!243375 () Bool)

(assert (= b_and!243331 (and (=> t!272824 result!232516) b_and!243375)))

(declare-fun tb!188533 () Bool)

(declare-fun t!272826 () Bool)

(assert (=> (and b!3457648 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272826) tb!188533))

(declare-fun result!232518 () Bool)

(assert (= result!232518 result!232514))

(assert (=> d!995694 t!272826))

(declare-fun b_and!243377 () Bool)

(assert (= b_and!243327 (and (=> t!272826 result!232518) b_and!243377)))

(declare-fun t!272828 () Bool)

(declare-fun tb!188535 () Bool)

(assert (=> (and b!3458412 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272828) tb!188535))

(declare-fun result!232520 () Bool)

(assert (= result!232520 result!232514))

(assert (=> d!995694 t!272828))

(declare-fun b_and!243379 () Bool)

(assert (= b_and!243325 (and (=> t!272828 result!232520) b_and!243379)))

(declare-fun tb!188537 () Bool)

(declare-fun t!272830 () Bool)

(assert (=> (and b!3457644 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272830) tb!188537))

(declare-fun result!232522 () Bool)

(assert (= result!232522 result!232514))

(assert (=> d!995694 t!272830))

(declare-fun b_and!243381 () Bool)

(assert (= b_and!243323 (and (=> t!272830 result!232522) b_and!243381)))

(assert (=> d!995694 m!3858585))

(declare-fun m!3862483 () Bool)

(assert (=> d!995694 m!3862483))

(assert (=> b!3457974 d!995694))

(declare-fun d!995696 () Bool)

(assert (=> d!995696 (= (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029)))) (fromListB!1782 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175029)))))))

(declare-fun bs!560370 () Bool)

(assert (= bs!560370 d!995696))

(declare-fun m!3862485 () Bool)

(assert (=> bs!560370 m!3862485))

(assert (=> b!3457974 d!995696))

(declare-fun lt!1176021 () Bool)

(declare-fun d!995698 () Bool)

(assert (=> d!995698 (= lt!1176021 (isEmpty!21510 (list!13524 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))))))))))

(assert (=> d!995698 (= lt!1176021 (isEmpty!21511 (c!591766 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494)))))))))))

(assert (=> d!995698 (= (isEmpty!21504 (_2!21570 (lex!2352 thiss!18206 rules!2135 (print!2091 thiss!18206 (singletonSeq!2533 (h!42579 (t!272530 tokens!494))))))) lt!1176021)))

(declare-fun bs!560371 () Bool)

(assert (= bs!560371 d!995698))

(declare-fun m!3862487 () Bool)

(assert (=> bs!560371 m!3862487))

(assert (=> bs!560371 m!3862487))

(declare-fun m!3862489 () Bool)

(assert (=> bs!560371 m!3862489))

(declare-fun m!3862491 () Bool)

(assert (=> bs!560371 m!3862491))

(assert (=> b!3458083 d!995698))

(assert (=> b!3458083 d!995592))

(assert (=> b!3458083 d!995594))

(assert (=> b!3458083 d!994596))

(declare-fun d!995700 () Bool)

(assert (=> d!995700 (= (list!13524 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))) (list!13527 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))))))

(declare-fun bs!560372 () Bool)

(assert (= bs!560372 d!995700))

(declare-fun m!3862493 () Bool)

(assert (=> bs!560372 m!3862493))

(assert (=> b!3457887 d!995700))

(declare-fun d!995702 () Bool)

(declare-fun lt!1176022 () Int)

(assert (=> d!995702 (= lt!1176022 (size!28184 (list!13524 (_2!21570 lt!1175209))))))

(assert (=> d!995702 (= lt!1176022 (size!28195 (c!591766 (_2!21570 lt!1175209))))))

(assert (=> d!995702 (= (size!28188 (_2!21570 lt!1175209)) lt!1176022)))

(declare-fun bs!560373 () Bool)

(assert (= bs!560373 d!995702))

(assert (=> bs!560373 m!3859273))

(assert (=> bs!560373 m!3859273))

(declare-fun m!3862495 () Bool)

(assert (=> bs!560373 m!3862495))

(declare-fun m!3862497 () Bool)

(assert (=> bs!560373 m!3862497))

(assert (=> b!3458368 d!995702))

(declare-fun d!995704 () Bool)

(declare-fun lt!1176023 () Int)

(assert (=> d!995704 (= lt!1176023 (size!28184 (list!13524 lt!1174823)))))

(assert (=> d!995704 (= lt!1176023 (size!28195 (c!591766 lt!1174823)))))

(assert (=> d!995704 (= (size!28188 lt!1174823) lt!1176023)))

(declare-fun bs!560374 () Bool)

(assert (= bs!560374 d!995704))

(assert (=> bs!560374 m!3859275))

(assert (=> bs!560374 m!3859275))

(assert (=> bs!560374 m!3860125))

(declare-fun m!3862499 () Bool)

(assert (=> bs!560374 m!3862499))

(assert (=> b!3458368 d!995704))

(declare-fun d!995706 () Bool)

(assert (=> d!995706 (= (inv!15 (value!175416 (h!42579 tokens!494))) (= (charsToBigInt!0 (text!40118 (value!175416 (h!42579 tokens!494))) 0) (value!175412 (value!175416 (h!42579 tokens!494)))))))

(declare-fun bs!560375 () Bool)

(assert (= bs!560375 d!995706))

(declare-fun m!3862501 () Bool)

(assert (=> bs!560375 m!3862501))

(assert (=> b!3457949 d!995706))

(declare-fun bs!560376 () Bool)

(declare-fun d!995708 () Bool)

(assert (= bs!560376 (and d!995708 d!995032)))

(declare-fun lambda!121828 () Int)

(assert (=> bs!560376 (= (and (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (= lambda!121828 lambda!121810))))

(declare-fun bs!560377 () Bool)

(assert (= bs!560377 (and d!995708 d!995314)))

(assert (=> bs!560377 (= (and (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (= lambda!121828 lambda!121820))))

(assert (=> d!995708 true))

(assert (=> d!995708 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) (dynLambda!15658 order!19793 lambda!121828))))

(assert (=> d!995708 true))

(assert (=> d!995708 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241)))) (dynLambda!15658 order!19793 lambda!121828))))

(assert (=> d!995708 (= (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241)))) (Forall!1336 lambda!121828))))

(declare-fun bs!560378 () Bool)

(assert (= bs!560378 d!995708))

(declare-fun m!3862503 () Bool)

(assert (=> bs!560378 m!3862503))

(assert (=> d!994452 d!995708))

(declare-fun b!3460074 () Bool)

(declare-fun e!2143662 () List!37281)

(declare-fun e!2143661 () List!37281)

(assert (=> b!3460074 (= e!2143662 e!2143661)))

(declare-fun c!592365 () Bool)

(assert (=> b!3460074 (= c!592365 (is-ElementMatch!10196 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))

(declare-fun b!3460075 () Bool)

(assert (=> b!3460075 (= e!2143661 (Cons!37157 (c!591765 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))) Nil!37157))))

(declare-fun b!3460076 () Bool)

(declare-fun e!2143664 () List!37281)

(declare-fun call!249529 () List!37281)

(assert (=> b!3460076 (= e!2143664 call!249529)))

(declare-fun c!592363 () Bool)

(declare-fun bm!249523 () Bool)

(declare-fun call!249530 () List!37281)

(assert (=> bm!249523 (= call!249530 (usedCharacters!671 (ite c!592363 (regOne!20905 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))) (regTwo!20904 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))))

(declare-fun b!3460077 () Bool)

(declare-fun e!2143663 () List!37281)

(declare-fun call!249528 () List!37281)

(assert (=> b!3460077 (= e!2143663 call!249528)))

(declare-fun d!995710 () Bool)

(declare-fun c!592364 () Bool)

(assert (=> d!995710 (= c!592364 (or (is-EmptyExpr!10196 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))) (is-EmptyLang!10196 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241))))))))))

(assert (=> d!995710 (= (usedCharacters!671 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))) e!2143662)))

(declare-fun b!3460078 () Bool)

(assert (=> b!3460078 (= e!2143664 call!249529)))

(declare-fun c!592366 () Bool)

(declare-fun bm!249524 () Bool)

(assert (=> bm!249524 (= call!249528 (usedCharacters!671 (ite c!592366 (reg!10525 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))) (ite c!592363 (regTwo!20905 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))) (regOne!20904 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241))))))))))))

(declare-fun b!3460079 () Bool)

(assert (=> b!3460079 (= e!2143662 Nil!37157)))

(declare-fun b!3460080 () Bool)

(assert (=> b!3460080 (= e!2143663 e!2143664)))

(assert (=> b!3460080 (= c!592363 (is-Union!10196 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))

(declare-fun bm!249525 () Bool)

(declare-fun call!249531 () List!37281)

(assert (=> bm!249525 (= call!249531 call!249528)))

(declare-fun b!3460081 () Bool)

(assert (=> b!3460081 (= c!592366 (is-Star!10196 (ite c!591854 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (ite c!591851 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))))))

(assert (=> b!3460081 (= e!2143661 e!2143663)))

(declare-fun bm!249526 () Bool)

(assert (=> bm!249526 (= call!249529 (++!9156 (ite c!592363 call!249530 call!249531) (ite c!592363 call!249531 call!249530)))))

(assert (= (and d!995710 c!592364) b!3460079))

(assert (= (and d!995710 (not c!592364)) b!3460074))

(assert (= (and b!3460074 c!592365) b!3460075))

(assert (= (and b!3460074 (not c!592365)) b!3460081))

(assert (= (and b!3460081 c!592366) b!3460077))

(assert (= (and b!3460081 (not c!592366)) b!3460080))

(assert (= (and b!3460080 c!592363) b!3460078))

(assert (= (and b!3460080 (not c!592363)) b!3460076))

(assert (= (or b!3460078 b!3460076) bm!249525))

(assert (= (or b!3460078 b!3460076) bm!249523))

(assert (= (or b!3460078 b!3460076) bm!249526))

(assert (= (or b!3460077 bm!249525) bm!249524))

(declare-fun m!3862505 () Bool)

(assert (=> bm!249523 m!3862505))

(declare-fun m!3862507 () Bool)

(assert (=> bm!249524 m!3862507))

(declare-fun m!3862509 () Bool)

(assert (=> bm!249526 m!3862509))

(assert (=> bm!249362 d!995710))

(declare-fun d!995712 () Bool)

(assert (=> d!995712 (= (isEmpty!21510 (list!13524 (_2!21570 lt!1174825))) (is-Nil!37157 (list!13524 (_2!21570 lt!1174825))))))

(assert (=> d!994432 d!995712))

(declare-fun d!995714 () Bool)

(assert (=> d!995714 (= (list!13524 (_2!21570 lt!1174825)) (list!13527 (c!591766 (_2!21570 lt!1174825))))))

(declare-fun bs!560379 () Bool)

(assert (= bs!560379 d!995714))

(declare-fun m!3862511 () Bool)

(assert (=> bs!560379 m!3862511))

(assert (=> d!994432 d!995714))

(declare-fun d!995716 () Bool)

(declare-fun lt!1176054 () Bool)

(assert (=> d!995716 (= lt!1176054 (isEmpty!21510 (list!13527 (c!591766 (_2!21570 lt!1174825)))))))

(assert (=> d!995716 (= lt!1176054 (= (size!28195 (c!591766 (_2!21570 lt!1174825))) 0))))

(assert (=> d!995716 (= (isEmpty!21511 (c!591766 (_2!21570 lt!1174825))) lt!1176054)))

(declare-fun bs!560380 () Bool)

(assert (= bs!560380 d!995716))

(assert (=> bs!560380 m!3862511))

(assert (=> bs!560380 m!3862511))

(declare-fun m!3862513 () Bool)

(assert (=> bs!560380 m!3862513))

(declare-fun m!3862515 () Bool)

(assert (=> bs!560380 m!3862515))

(assert (=> d!994432 d!995716))

(declare-fun d!995718 () Bool)

(declare-fun lt!1176057 () Int)

(assert (=> d!995718 (= lt!1176057 (size!28184 (list!13524 (_2!21570 lt!1175203))))))

(assert (=> d!995718 (= lt!1176057 (size!28195 (c!591766 (_2!21570 lt!1175203))))))

(assert (=> d!995718 (= (size!28188 (_2!21570 lt!1175203)) lt!1176057)))

(declare-fun bs!560381 () Bool)

(assert (= bs!560381 d!995718))

(assert (=> bs!560381 m!3859223))

(assert (=> bs!560381 m!3859223))

(declare-fun m!3862517 () Bool)

(assert (=> bs!560381 m!3862517))

(declare-fun m!3862519 () Bool)

(assert (=> bs!560381 m!3862519))

(assert (=> b!3458343 d!995718))

(declare-fun d!995720 () Bool)

(declare-fun lt!1176058 () Int)

(assert (=> d!995720 (= lt!1176058 (size!28184 (list!13524 lt!1174856)))))

(assert (=> d!995720 (= lt!1176058 (size!28195 (c!591766 lt!1174856)))))

(assert (=> d!995720 (= (size!28188 lt!1174856) lt!1176058)))

(declare-fun bs!560382 () Bool)

(assert (= bs!560382 d!995720))

(assert (=> bs!560382 m!3859225))

(assert (=> bs!560382 m!3859225))

(assert (=> bs!560382 m!3860173))

(declare-fun m!3862521 () Bool)

(assert (=> bs!560382 m!3862521))

(assert (=> b!3458343 d!995720))

(assert (=> b!3458172 d!995110))

(assert (=> b!3458337 d!995400))

(declare-fun b!3460104 () Bool)

(declare-fun e!2143679 () Bool)

(declare-fun e!2143680 () Bool)

(assert (=> b!3460104 (= e!2143679 e!2143680)))

(declare-fun res!1396038 () Bool)

(assert (=> b!3460104 (= res!1396038 (not (is-Cons!37158 rules!2135)))))

(assert (=> b!3460104 (=> res!1396038 e!2143680)))

(declare-fun bm!249529 () Bool)

(declare-fun call!249534 () Bool)

(assert (=> bm!249529 (= call!249534 (ruleDisjointCharsFromAllFromOtherType!718 (h!42578 rules!2135) (t!272529 rules!2135)))))

(declare-fun b!3460106 () Bool)

(declare-fun e!2143681 () Bool)

(assert (=> b!3460106 (= e!2143681 call!249534)))

(declare-fun b!3460107 () Bool)

(assert (=> b!3460107 (= e!2143679 e!2143681)))

(declare-fun res!1396039 () Bool)

(declare-fun rulesUseDisjointChars!340 (Rule!10674 Rule!10674) Bool)

(assert (=> b!3460107 (= res!1396039 (rulesUseDisjointChars!340 (h!42578 rules!2135) (h!42578 rules!2135)))))

(assert (=> b!3460107 (=> (not res!1396039) (not e!2143681))))

(declare-fun b!3460105 () Bool)

(assert (=> b!3460105 (= e!2143680 call!249534)))

(declare-fun d!995722 () Bool)

(declare-fun c!592375 () Bool)

(assert (=> d!995722 (= c!592375 (and (is-Cons!37158 rules!2135) (not (= (isSeparator!5437 (h!42578 rules!2135)) (isSeparator!5437 (h!42578 rules!2135))))))))

(assert (=> d!995722 (= (ruleDisjointCharsFromAllFromOtherType!718 (h!42578 rules!2135) rules!2135) e!2143679)))

(assert (= (and d!995722 c!592375) b!3460107))

(assert (= (and d!995722 (not c!592375)) b!3460104))

(assert (= (and b!3460107 res!1396039) b!3460106))

(assert (= (and b!3460104 (not res!1396038)) b!3460105))

(assert (= (or b!3460106 b!3460105) bm!249529))

(declare-fun m!3862523 () Bool)

(assert (=> bm!249529 m!3862523))

(declare-fun m!3862525 () Bool)

(assert (=> b!3460107 m!3862525))

(assert (=> b!3458073 d!995722))

(declare-fun d!995724 () Bool)

(assert (=> d!995724 (= (isDefined!5792 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))) (not (isEmpty!21516 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))))))

(declare-fun bs!560383 () Bool)

(assert (= bs!560383 d!995724))

(assert (=> bs!560383 m!3858115))

(declare-fun m!3862527 () Bool)

(assert (=> bs!560383 m!3862527))

(assert (=> d!994594 d!995724))

(assert (=> d!994594 d!994522))

(declare-fun d!995726 () Bool)

(declare-fun e!2143682 () Bool)

(assert (=> d!995726 e!2143682))

(declare-fun res!1396040 () Bool)

(assert (=> d!995726 (=> (not res!1396040) (not e!2143682))))

(assert (=> d!995726 (= res!1396040 (isDefined!5792 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241)))))))

(assert (=> d!995726 true))

(declare-fun _$52!1883 () Unit!52487)

(assert (=> d!995726 (= (choose!19994 thiss!18206 rules!2135 lt!1174848 separatorToken!241) _$52!1883)))

(declare-fun b!3460108 () Bool)

(declare-fun res!1396041 () Bool)

(assert (=> b!3460108 (=> (not res!1396041) (not e!2143682))))

(assert (=> b!3460108 (= res!1396041 (matchR!4780 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))) (list!13524 (charsOf!3451 separatorToken!241))))))

(declare-fun b!3460109 () Bool)

(assert (=> b!3460109 (= e!2143682 (= (rule!8027 separatorToken!241) (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 separatorToken!241))))))))

(assert (= (and d!995726 res!1396040) b!3460108))

(assert (= (and b!3460108 res!1396041) b!3460109))

(assert (=> d!995726 m!3858115))

(assert (=> d!995726 m!3858115))

(assert (=> d!995726 m!3859163))

(assert (=> b!3460108 m!3858051))

(assert (=> b!3460108 m!3858115))

(assert (=> b!3460108 m!3859169))

(assert (=> b!3460108 m!3858115))

(assert (=> b!3460108 m!3858053))

(assert (=> b!3460108 m!3859167))

(assert (=> b!3460108 m!3858051))

(assert (=> b!3460108 m!3858053))

(assert (=> b!3460109 m!3858115))

(assert (=> b!3460109 m!3858115))

(assert (=> b!3460109 m!3859169))

(assert (=> d!994594 d!995726))

(assert (=> d!994594 d!994396))

(declare-fun d!995728 () Bool)

(assert (=> d!995728 (= (inv!16 (value!175416 separatorToken!241)) (= (charsToInt!0 (text!40116 (value!175416 separatorToken!241))) (value!175408 (value!175416 separatorToken!241))))))

(declare-fun bs!560384 () Bool)

(assert (= bs!560384 d!995728))

(declare-fun m!3862529 () Bool)

(assert (=> bs!560384 m!3862529))

(assert (=> b!3458348 d!995728))

(assert (=> d!994392 d!994480))

(declare-fun b!3460112 () Bool)

(declare-fun res!1396043 () Bool)

(declare-fun e!2143683 () Bool)

(assert (=> b!3460112 (=> (not res!1396043) (not e!2143683))))

(declare-fun lt!1176097 () List!37281)

(assert (=> b!3460112 (= res!1396043 (= (size!28184 lt!1176097) (+ (size!28184 lt!1174846) (size!28184 (++!9156 lt!1174848 lt!1174829)))))))

(declare-fun d!995730 () Bool)

(assert (=> d!995730 e!2143683))

(declare-fun res!1396042 () Bool)

(assert (=> d!995730 (=> (not res!1396042) (not e!2143683))))

(assert (=> d!995730 (= res!1396042 (= (content!5182 lt!1176097) (set.union (content!5182 lt!1174846) (content!5182 (++!9156 lt!1174848 lt!1174829)))))))

(declare-fun e!2143684 () List!37281)

(assert (=> d!995730 (= lt!1176097 e!2143684)))

(declare-fun c!592376 () Bool)

(assert (=> d!995730 (= c!592376 (is-Nil!37157 lt!1174846))))

(assert (=> d!995730 (= (++!9156 lt!1174846 (++!9156 lt!1174848 lt!1174829)) lt!1176097)))

(declare-fun b!3460111 () Bool)

(assert (=> b!3460111 (= e!2143684 (Cons!37157 (h!42577 lt!1174846) (++!9156 (t!272528 lt!1174846) (++!9156 lt!1174848 lt!1174829))))))

(declare-fun b!3460113 () Bool)

(assert (=> b!3460113 (= e!2143683 (or (not (= (++!9156 lt!1174848 lt!1174829) Nil!37157)) (= lt!1176097 lt!1174846)))))

(declare-fun b!3460110 () Bool)

(assert (=> b!3460110 (= e!2143684 (++!9156 lt!1174848 lt!1174829))))

(assert (= (and d!995730 c!592376) b!3460110))

(assert (= (and d!995730 (not c!592376)) b!3460111))

(assert (= (and d!995730 res!1396042) b!3460112))

(assert (= (and b!3460112 res!1396043) b!3460113))

(declare-fun m!3862531 () Bool)

(assert (=> b!3460112 m!3862531))

(assert (=> b!3460112 m!3858103))

(assert (=> b!3460112 m!3858055))

(declare-fun m!3862533 () Bool)

(assert (=> b!3460112 m!3862533))

(declare-fun m!3862535 () Bool)

(assert (=> d!995730 m!3862535))

(assert (=> d!995730 m!3858377))

(assert (=> d!995730 m!3858055))

(declare-fun m!3862537 () Bool)

(assert (=> d!995730 m!3862537))

(assert (=> b!3460111 m!3858055))

(declare-fun m!3862539 () Bool)

(assert (=> b!3460111 m!3862539))

(assert (=> d!994392 d!995730))

(declare-fun d!995732 () Bool)

(assert (=> d!995732 (= (++!9156 (++!9156 lt!1174846 lt!1174848) lt!1174829) (++!9156 lt!1174846 (++!9156 lt!1174848 lt!1174829)))))

(assert (=> d!995732 true))

(declare-fun _$52!1886 () Unit!52487)

(assert (=> d!995732 (= (choose!19989 lt!1174846 lt!1174848 lt!1174829) _$52!1886)))

(declare-fun bs!560385 () Bool)

(assert (= bs!560385 d!995732))

(assert (=> bs!560385 m!3858091))

(assert (=> bs!560385 m!3858091))

(assert (=> bs!560385 m!3858093))

(assert (=> bs!560385 m!3858055))

(assert (=> bs!560385 m!3858055))

(assert (=> bs!560385 m!3858383))

(assert (=> d!994392 d!995732))

(assert (=> d!994392 d!994404))

(assert (=> d!994392 d!994406))

(declare-fun d!995734 () Bool)

(declare-fun c!592377 () Bool)

(assert (=> d!995734 (= c!592377 (is-Empty!11249 (c!591766 lt!1174827)))))

(declare-fun e!2143685 () List!37281)

(assert (=> d!995734 (= (list!13527 (c!591766 lt!1174827)) e!2143685)))

(declare-fun b!3460116 () Bool)

(declare-fun e!2143686 () List!37281)

(assert (=> b!3460116 (= e!2143686 (list!13533 (xs!14423 (c!591766 lt!1174827))))))

(declare-fun b!3460114 () Bool)

(assert (=> b!3460114 (= e!2143685 Nil!37157)))

(declare-fun b!3460115 () Bool)

(assert (=> b!3460115 (= e!2143685 e!2143686)))

(declare-fun c!592378 () Bool)

(assert (=> b!3460115 (= c!592378 (is-Leaf!17579 (c!591766 lt!1174827)))))

(declare-fun b!3460117 () Bool)

(assert (=> b!3460117 (= e!2143686 (++!9156 (list!13527 (left!28992 (c!591766 lt!1174827))) (list!13527 (right!29322 (c!591766 lt!1174827)))))))

(assert (= (and d!995734 c!592377) b!3460114))

(assert (= (and d!995734 (not c!592377)) b!3460115))

(assert (= (and b!3460115 c!592378) b!3460116))

(assert (= (and b!3460115 (not c!592378)) b!3460117))

(declare-fun m!3862541 () Bool)

(assert (=> b!3460116 m!3862541))

(declare-fun m!3862543 () Bool)

(assert (=> b!3460117 m!3862543))

(declare-fun m!3862545 () Bool)

(assert (=> b!3460117 m!3862545))

(assert (=> b!3460117 m!3862543))

(assert (=> b!3460117 m!3862545))

(declare-fun m!3862547 () Bool)

(assert (=> b!3460117 m!3862547))

(assert (=> d!994412 d!995734))

(declare-fun b!3460118 () Bool)

(declare-fun e!2143688 () Bool)

(assert (=> b!3460118 (= e!2143688 (inv!15 (value!175416 (h!42579 (t!272530 tokens!494)))))))

(declare-fun d!995736 () Bool)

(declare-fun c!592379 () Bool)

(assert (=> d!995736 (= c!592379 (is-IntegerValue!17001 (value!175416 (h!42579 (t!272530 tokens!494)))))))

(declare-fun e!2143689 () Bool)

(assert (=> d!995736 (= (inv!21 (value!175416 (h!42579 (t!272530 tokens!494)))) e!2143689)))

(declare-fun b!3460119 () Bool)

(declare-fun e!2143687 () Bool)

(assert (=> b!3460119 (= e!2143689 e!2143687)))

(declare-fun c!592380 () Bool)

(assert (=> b!3460119 (= c!592380 (is-IntegerValue!17002 (value!175416 (h!42579 (t!272530 tokens!494)))))))

(declare-fun b!3460120 () Bool)

(assert (=> b!3460120 (= e!2143689 (inv!16 (value!175416 (h!42579 (t!272530 tokens!494)))))))

(declare-fun b!3460121 () Bool)

(assert (=> b!3460121 (= e!2143687 (inv!17 (value!175416 (h!42579 (t!272530 tokens!494)))))))

(declare-fun b!3460122 () Bool)

(declare-fun res!1396044 () Bool)

(assert (=> b!3460122 (=> res!1396044 e!2143688)))

(assert (=> b!3460122 (= res!1396044 (not (is-IntegerValue!17003 (value!175416 (h!42579 (t!272530 tokens!494))))))))

(assert (=> b!3460122 (= e!2143687 e!2143688)))

(assert (= (and d!995736 c!592379) b!3460120))

(assert (= (and d!995736 (not c!592379)) b!3460119))

(assert (= (and b!3460119 c!592380) b!3460121))

(assert (= (and b!3460119 (not c!592380)) b!3460122))

(assert (= (and b!3460122 (not res!1396044)) b!3460118))

(declare-fun m!3862549 () Bool)

(assert (=> b!3460118 m!3862549))

(declare-fun m!3862551 () Bool)

(assert (=> b!3460120 m!3862551))

(declare-fun m!3862553 () Bool)

(assert (=> b!3460121 m!3862553))

(assert (=> b!3458410 d!995736))

(declare-fun b!3460123 () Bool)

(declare-fun e!2143692 () Bool)

(declare-fun e!2143695 () Bool)

(assert (=> b!3460123 (= e!2143692 e!2143695)))

(declare-fun res!1396047 () Bool)

(assert (=> b!3460123 (=> (not res!1396047) (not e!2143695))))

(declare-fun lt!1176098 () Bool)

(assert (=> b!3460123 (= res!1396047 (not lt!1176098))))

(declare-fun b!3460124 () Bool)

(declare-fun e!2143691 () Bool)

(declare-fun call!249535 () Bool)

(assert (=> b!3460124 (= e!2143691 (= lt!1176098 call!249535))))

(declare-fun b!3460125 () Bool)

(declare-fun res!1396052 () Bool)

(assert (=> b!3460125 (=> res!1396052 e!2143692)))

(declare-fun e!2143693 () Bool)

(assert (=> b!3460125 (= res!1396052 e!2143693)))

(declare-fun res!1396048 () Bool)

(assert (=> b!3460125 (=> (not res!1396048) (not e!2143693))))

(assert (=> b!3460125 (= res!1396048 lt!1176098)))

(declare-fun b!3460126 () Bool)

(declare-fun e!2143696 () Bool)

(assert (=> b!3460126 (= e!2143695 e!2143696)))

(declare-fun res!1396045 () Bool)

(assert (=> b!3460126 (=> res!1396045 e!2143696)))

(assert (=> b!3460126 (= res!1396045 call!249535)))

(declare-fun b!3460127 () Bool)

(declare-fun e!2143694 () Bool)

(assert (=> b!3460127 (= e!2143694 (nullable!3487 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848))))))

(declare-fun d!995738 () Bool)

(assert (=> d!995738 e!2143691))

(declare-fun c!592383 () Bool)

(assert (=> d!995738 (= c!592383 (is-EmptyExpr!10196 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848))))))

(assert (=> d!995738 (= lt!1176098 e!2143694)))

(declare-fun c!592382 () Bool)

(assert (=> d!995738 (= c!592382 (isEmpty!21510 (tail!5431 lt!1174848)))))

(assert (=> d!995738 (validRegex!4643 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848)))))

(assert (=> d!995738 (= (matchR!4780 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848)) (tail!5431 lt!1174848)) lt!1176098)))

(declare-fun b!3460128 () Bool)

(declare-fun res!1396051 () Bool)

(assert (=> b!3460128 (=> (not res!1396051) (not e!2143693))))

(assert (=> b!3460128 (= res!1396051 (isEmpty!21510 (tail!5431 (tail!5431 lt!1174848))))))

(declare-fun b!3460129 () Bool)

(assert (=> b!3460129 (= e!2143696 (not (= (head!7316 (tail!5431 lt!1174848)) (c!591765 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848))))))))

(declare-fun b!3460130 () Bool)

(assert (=> b!3460130 (= e!2143694 (matchR!4780 (derivativeStep!3040 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848)) (head!7316 (tail!5431 lt!1174848))) (tail!5431 (tail!5431 lt!1174848))))))

(declare-fun b!3460131 () Bool)

(declare-fun e!2143690 () Bool)

(assert (=> b!3460131 (= e!2143690 (not lt!1176098))))

(declare-fun b!3460132 () Bool)

(declare-fun res!1396050 () Bool)

(assert (=> b!3460132 (=> (not res!1396050) (not e!2143693))))

(assert (=> b!3460132 (= res!1396050 (not call!249535))))

(declare-fun b!3460133 () Bool)

(declare-fun res!1396049 () Bool)

(assert (=> b!3460133 (=> res!1396049 e!2143696)))

(assert (=> b!3460133 (= res!1396049 (not (isEmpty!21510 (tail!5431 (tail!5431 lt!1174848)))))))

(declare-fun b!3460134 () Bool)

(declare-fun res!1396046 () Bool)

(assert (=> b!3460134 (=> res!1396046 e!2143692)))

(assert (=> b!3460134 (= res!1396046 (not (is-ElementMatch!10196 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848)))))))

(assert (=> b!3460134 (= e!2143690 e!2143692)))

(declare-fun bm!249530 () Bool)

(assert (=> bm!249530 (= call!249535 (isEmpty!21510 (tail!5431 lt!1174848)))))

(declare-fun b!3460135 () Bool)

(assert (=> b!3460135 (= e!2143691 e!2143690)))

(declare-fun c!592381 () Bool)

(assert (=> b!3460135 (= c!592381 (is-EmptyLang!10196 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848))))))

(declare-fun b!3460136 () Bool)

(assert (=> b!3460136 (= e!2143693 (= (head!7316 (tail!5431 lt!1174848)) (c!591765 (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848)))))))

(assert (= (and d!995738 c!592382) b!3460127))

(assert (= (and d!995738 (not c!592382)) b!3460130))

(assert (= (and d!995738 c!592383) b!3460124))

(assert (= (and d!995738 (not c!592383)) b!3460135))

(assert (= (and b!3460135 c!592381) b!3460131))

(assert (= (and b!3460135 (not c!592381)) b!3460134))

(assert (= (and b!3460134 (not res!1396046)) b!3460125))

(assert (= (and b!3460125 res!1396048) b!3460132))

(assert (= (and b!3460132 res!1396050) b!3460128))

(assert (= (and b!3460128 res!1396051) b!3460136))

(assert (= (and b!3460125 (not res!1396052)) b!3460123))

(assert (= (and b!3460123 res!1396047) b!3460126))

(assert (= (and b!3460126 (not res!1396045)) b!3460133))

(assert (= (and b!3460133 (not res!1396049)) b!3460129))

(assert (= (or b!3460124 b!3460126 b!3460132) bm!249530))

(assert (=> b!3460130 m!3858537))

(assert (=> b!3460130 m!3862141))

(assert (=> b!3460130 m!3858599))

(assert (=> b!3460130 m!3862141))

(declare-fun m!3862555 () Bool)

(assert (=> b!3460130 m!3862555))

(assert (=> b!3460130 m!3858537))

(assert (=> b!3460130 m!3862145))

(assert (=> b!3460130 m!3862555))

(assert (=> b!3460130 m!3862145))

(declare-fun m!3862557 () Bool)

(assert (=> b!3460130 m!3862557))

(assert (=> b!3460127 m!3858599))

(declare-fun m!3862559 () Bool)

(assert (=> b!3460127 m!3862559))

(assert (=> d!995738 m!3858537))

(assert (=> d!995738 m!3858547))

(assert (=> d!995738 m!3858599))

(declare-fun m!3862561 () Bool)

(assert (=> d!995738 m!3862561))

(assert (=> bm!249530 m!3858537))

(assert (=> bm!249530 m!3858547))

(assert (=> b!3460133 m!3858537))

(assert (=> b!3460133 m!3862145))

(assert (=> b!3460133 m!3862145))

(assert (=> b!3460133 m!3862153))

(assert (=> b!3460129 m!3858537))

(assert (=> b!3460129 m!3862141))

(assert (=> b!3460128 m!3858537))

(assert (=> b!3460128 m!3862145))

(assert (=> b!3460128 m!3862145))

(assert (=> b!3460128 m!3862153))

(assert (=> b!3460136 m!3858537))

(assert (=> b!3460136 m!3862141))

(assert (=> b!3457988 d!995738))

(declare-fun b!3460137 () Bool)

(declare-fun e!2143700 () Regex!10196)

(declare-fun call!249537 () Regex!10196)

(assert (=> b!3460137 (= e!2143700 (Concat!15863 call!249537 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun b!3460138 () Bool)

(declare-fun c!592388 () Bool)

(assert (=> b!3460138 (= c!592388 (nullable!3487 (regOne!20904 (regex!5437 (rule!8027 separatorToken!241)))))))

(declare-fun e!2143701 () Regex!10196)

(assert (=> b!3460138 (= e!2143700 e!2143701)))

(declare-fun b!3460139 () Bool)

(declare-fun call!249536 () Regex!10196)

(declare-fun call!249538 () Regex!10196)

(assert (=> b!3460139 (= e!2143701 (Union!10196 (Concat!15863 call!249536 (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241)))) call!249538))))

(declare-fun b!3460140 () Bool)

(declare-fun e!2143699 () Regex!10196)

(declare-fun e!2143697 () Regex!10196)

(assert (=> b!3460140 (= e!2143699 e!2143697)))

(declare-fun c!592384 () Bool)

(assert (=> b!3460140 (= c!592384 (is-ElementMatch!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun d!995740 () Bool)

(declare-fun lt!1176099 () Regex!10196)

(assert (=> d!995740 (validRegex!4643 lt!1176099)))

(assert (=> d!995740 (= lt!1176099 e!2143699)))

(declare-fun c!592385 () Bool)

(assert (=> d!995740 (= c!592385 (or (is-EmptyExpr!10196 (regex!5437 (rule!8027 separatorToken!241))) (is-EmptyLang!10196 (regex!5437 (rule!8027 separatorToken!241)))))))

(assert (=> d!995740 (validRegex!4643 (regex!5437 (rule!8027 separatorToken!241)))))

(assert (=> d!995740 (= (derivativeStep!3040 (regex!5437 (rule!8027 separatorToken!241)) (head!7316 lt!1174848)) lt!1176099)))

(declare-fun b!3460141 () Bool)

(assert (=> b!3460141 (= e!2143701 (Union!10196 (Concat!15863 call!249536 (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241)))) EmptyLang!10196))))

(declare-fun b!3460142 () Bool)

(assert (=> b!3460142 (= e!2143699 EmptyLang!10196)))

(declare-fun bm!249531 () Bool)

(declare-fun call!249539 () Regex!10196)

(assert (=> bm!249531 (= call!249537 call!249539)))

(declare-fun b!3460143 () Bool)

(assert (=> b!3460143 (= e!2143697 (ite (= (head!7316 lt!1174848) (c!591765 (regex!5437 (rule!8027 separatorToken!241)))) EmptyExpr!10196 EmptyLang!10196))))

(declare-fun bm!249532 () Bool)

(assert (=> bm!249532 (= call!249536 call!249537)))

(declare-fun bm!249533 () Bool)

(declare-fun c!592386 () Bool)

(declare-fun c!592387 () Bool)

(assert (=> bm!249533 (= call!249539 (derivativeStep!3040 (ite c!592386 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))) (ite c!592387 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))) (regOne!20904 (regex!5437 (rule!8027 separatorToken!241))))) (head!7316 lt!1174848)))))

(declare-fun b!3460144 () Bool)

(declare-fun e!2143698 () Regex!10196)

(assert (=> b!3460144 (= e!2143698 e!2143700)))

(assert (=> b!3460144 (= c!592387 (is-Star!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(declare-fun b!3460145 () Bool)

(assert (=> b!3460145 (= e!2143698 (Union!10196 call!249539 call!249538))))

(declare-fun bm!249534 () Bool)

(assert (=> bm!249534 (= call!249538 (derivativeStep!3040 (ite c!592386 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))) (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241)))) (head!7316 lt!1174848)))))

(declare-fun b!3460146 () Bool)

(assert (=> b!3460146 (= c!592386 (is-Union!10196 (regex!5437 (rule!8027 separatorToken!241))))))

(assert (=> b!3460146 (= e!2143697 e!2143698)))

(assert (= (and d!995740 c!592385) b!3460142))

(assert (= (and d!995740 (not c!592385)) b!3460140))

(assert (= (and b!3460140 c!592384) b!3460143))

(assert (= (and b!3460140 (not c!592384)) b!3460146))

(assert (= (and b!3460146 c!592386) b!3460145))

(assert (= (and b!3460146 (not c!592386)) b!3460144))

(assert (= (and b!3460144 c!592387) b!3460137))

(assert (= (and b!3460144 (not c!592387)) b!3460138))

(assert (= (and b!3460138 c!592388) b!3460139))

(assert (= (and b!3460138 (not c!592388)) b!3460141))

(assert (= (or b!3460139 b!3460141) bm!249532))

(assert (= (or b!3460137 bm!249532) bm!249531))

(assert (= (or b!3460145 bm!249531) bm!249533))

(assert (= (or b!3460145 b!3460139) bm!249534))

(declare-fun m!3862563 () Bool)

(assert (=> b!3460138 m!3862563))

(declare-fun m!3862565 () Bool)

(assert (=> d!995740 m!3862565))

(assert (=> d!995740 m!3858597))

(assert (=> bm!249533 m!3858139))

(declare-fun m!3862567 () Bool)

(assert (=> bm!249533 m!3862567))

(assert (=> bm!249534 m!3858139))

(declare-fun m!3862569 () Bool)

(assert (=> bm!249534 m!3862569))

(assert (=> b!3457988 d!995740))

(assert (=> b!3457988 d!994576))

(assert (=> b!3457988 d!994788))

(declare-fun bs!560386 () Bool)

(declare-fun d!995742 () Bool)

(assert (= bs!560386 (and d!995742 d!995032)))

(declare-fun lambda!121829 () Int)

(assert (=> bs!560386 (= (and (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (= lambda!121829 lambda!121810))))

(declare-fun bs!560387 () Bool)

(assert (= bs!560387 (and d!995742 d!995314)))

(assert (=> bs!560387 (= (and (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (= lambda!121829 lambda!121820))))

(declare-fun bs!560388 () Bool)

(assert (= bs!560388 (and d!995742 d!995708)))

(assert (=> bs!560388 (= (and (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))))) (= lambda!121829 lambda!121828))))

(assert (=> d!995742 true))

(assert (=> d!995742 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15658 order!19793 lambda!121829))))

(assert (=> d!995742 true))

(assert (=> d!995742 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (dynLambda!15658 order!19793 lambda!121829))))

(assert (=> d!995742 (= (semiInverseModEq!2282 (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (h!42578 rules!2135)))) (Forall!1336 lambda!121829))))

(declare-fun bs!560389 () Bool)

(assert (= bs!560389 d!995742))

(declare-fun m!3862571 () Bool)

(assert (=> bs!560389 m!3862571))

(assert (=> d!994606 d!995742))

(declare-fun b!3460154 () Bool)

(declare-fun res!1396060 () Bool)

(declare-fun e!2143709 () Bool)

(assert (=> b!3460154 (=> (not res!1396060) (not e!2143709))))

(declare-fun lt!1176136 () Option!7522)

(assert (=> b!3460154 (= res!1396060 (= (++!9156 (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1176136)))) (_2!21571 (get!11893 lt!1176136))) lt!1174846))))

(declare-fun b!3460155 () Bool)

(declare-fun e!2143708 () Bool)

(assert (=> b!3460155 (= e!2143708 (matchR!4780 (regex!5437 (h!42578 rules!2135)) (_1!21574 (findLongestMatchInner!908 (regex!5437 (h!42578 rules!2135)) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(declare-fun b!3460156 () Bool)

(declare-fun res!1396057 () Bool)

(assert (=> b!3460156 (=> (not res!1396057) (not e!2143709))))

(assert (=> b!3460156 (= res!1396057 (= (value!175416 (_1!21571 (get!11893 lt!1176136))) (apply!8745 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1176136)))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1176136)))))))))

(declare-fun b!3460157 () Bool)

(declare-fun res!1396054 () Bool)

(assert (=> b!3460157 (=> (not res!1396054) (not e!2143709))))

(assert (=> b!3460157 (= res!1396054 (< (size!28184 (_2!21571 (get!11893 lt!1176136))) (size!28184 lt!1174846)))))

(declare-fun b!3460158 () Bool)

(declare-fun e!2143707 () Option!7522)

(assert (=> b!3460158 (= e!2143707 None!7521)))

(declare-fun b!3460159 () Bool)

(assert (=> b!3460159 (= e!2143709 (= (size!28182 (_1!21571 (get!11893 lt!1176136))) (size!28184 (originalCharacters!6151 (_1!21571 (get!11893 lt!1176136))))))))

(declare-fun b!3460161 () Bool)

(declare-fun e!2143706 () Bool)

(assert (=> b!3460161 (= e!2143706 e!2143709)))

(declare-fun res!1396056 () Bool)

(assert (=> b!3460161 (=> (not res!1396056) (not e!2143709))))

(assert (=> b!3460161 (= res!1396056 (matchR!4780 (regex!5437 (h!42578 rules!2135)) (list!13524 (charsOf!3451 (_1!21571 (get!11893 lt!1176136))))))))

(declare-fun b!3460162 () Bool)

(declare-fun res!1396059 () Bool)

(assert (=> b!3460162 (=> (not res!1396059) (not e!2143709))))

(assert (=> b!3460162 (= res!1396059 (= (rule!8027 (_1!21571 (get!11893 lt!1176136))) (h!42578 rules!2135)))))

(declare-fun d!995744 () Bool)

(assert (=> d!995744 e!2143706))

(declare-fun res!1396055 () Bool)

(assert (=> d!995744 (=> res!1396055 e!2143706)))

(assert (=> d!995744 (= res!1396055 (isEmpty!21512 lt!1176136))))

(assert (=> d!995744 (= lt!1176136 e!2143707)))

(declare-fun c!592392 () Bool)

(declare-fun lt!1176134 () tuple2!36880)

(assert (=> d!995744 (= c!592392 (isEmpty!21510 (_1!21574 lt!1176134)))))

(assert (=> d!995744 (= lt!1176134 (findLongestMatch!823 (regex!5437 (h!42578 rules!2135)) lt!1174846))))

(assert (=> d!995744 (ruleValid!1737 thiss!18206 (h!42578 rules!2135))))

(assert (=> d!995744 (= (maxPrefixOneRule!1733 thiss!18206 (h!42578 rules!2135) lt!1174846) lt!1176136)))

(declare-fun b!3460160 () Bool)

(assert (=> b!3460160 (= e!2143707 (Some!7521 (tuple2!36875 (Token!10241 (apply!8745 (transformation!5437 (h!42578 rules!2135)) (seqFromList!3928 (_1!21574 lt!1176134))) (h!42578 rules!2135) (size!28188 (seqFromList!3928 (_1!21574 lt!1176134))) (_1!21574 lt!1176134)) (_2!21574 lt!1176134))))))

(declare-fun lt!1176137 () Unit!52487)

(assert (=> b!3460160 (= lt!1176137 (longestMatchIsAcceptedByMatchOrIsEmpty!881 (regex!5437 (h!42578 rules!2135)) lt!1174846))))

(declare-fun res!1396058 () Bool)

(assert (=> b!3460160 (= res!1396058 (isEmpty!21510 (_1!21574 (findLongestMatchInner!908 (regex!5437 (h!42578 rules!2135)) Nil!37157 (size!28184 Nil!37157) lt!1174846 lt!1174846 (size!28184 lt!1174846)))))))

(assert (=> b!3460160 (=> res!1396058 e!2143708)))

(assert (=> b!3460160 e!2143708))

(declare-fun lt!1176135 () Unit!52487)

(assert (=> b!3460160 (= lt!1176135 lt!1176137)))

(declare-fun lt!1176138 () Unit!52487)

(assert (=> b!3460160 (= lt!1176138 (lemmaSemiInverse!1258 (transformation!5437 (h!42578 rules!2135)) (seqFromList!3928 (_1!21574 lt!1176134))))))

(assert (= (and d!995744 c!592392) b!3460158))

(assert (= (and d!995744 (not c!592392)) b!3460160))

(assert (= (and b!3460160 (not res!1396058)) b!3460155))

(assert (= (and d!995744 (not res!1396055)) b!3460161))

(assert (= (and b!3460161 res!1396056) b!3460154))

(assert (= (and b!3460154 res!1396060) b!3460157))

(assert (= (and b!3460157 res!1396054) b!3460162))

(assert (= (and b!3460162 res!1396059) b!3460156))

(assert (= (and b!3460156 res!1396057) b!3460159))

(declare-fun m!3862617 () Bool)

(assert (=> b!3460162 m!3862617))

(assert (=> b!3460155 m!3858837))

(assert (=> b!3460155 m!3858103))

(assert (=> b!3460155 m!3858837))

(assert (=> b!3460155 m!3858103))

(declare-fun m!3862625 () Bool)

(assert (=> b!3460155 m!3862625))

(declare-fun m!3862633 () Bool)

(assert (=> b!3460155 m!3862633))

(assert (=> b!3460159 m!3862617))

(declare-fun m!3862639 () Bool)

(assert (=> b!3460159 m!3862639))

(declare-fun m!3862643 () Bool)

(assert (=> d!995744 m!3862643))

(declare-fun m!3862645 () Bool)

(assert (=> d!995744 m!3862645))

(declare-fun m!3862651 () Bool)

(assert (=> d!995744 m!3862651))

(assert (=> d!995744 m!3860427))

(assert (=> b!3460156 m!3862617))

(declare-fun m!3862655 () Bool)

(assert (=> b!3460156 m!3862655))

(assert (=> b!3460156 m!3862655))

(declare-fun m!3862661 () Bool)

(assert (=> b!3460156 m!3862661))

(declare-fun m!3862663 () Bool)

(assert (=> b!3460160 m!3862663))

(declare-fun m!3862667 () Bool)

(assert (=> b!3460160 m!3862667))

(assert (=> b!3460160 m!3862663))

(assert (=> b!3460160 m!3858103))

(assert (=> b!3460160 m!3858837))

(assert (=> b!3460160 m!3858103))

(assert (=> b!3460160 m!3862625))

(assert (=> b!3460160 m!3862663))

(declare-fun m!3862675 () Bool)

(assert (=> b!3460160 m!3862675))

(assert (=> b!3460160 m!3858837))

(declare-fun m!3862679 () Bool)

(assert (=> b!3460160 m!3862679))

(declare-fun m!3862683 () Bool)

(assert (=> b!3460160 m!3862683))

(assert (=> b!3460160 m!3862663))

(declare-fun m!3862689 () Bool)

(assert (=> b!3460160 m!3862689))

(assert (=> b!3460161 m!3862617))

(declare-fun m!3862691 () Bool)

(assert (=> b!3460161 m!3862691))

(assert (=> b!3460161 m!3862691))

(declare-fun m!3862693 () Bool)

(assert (=> b!3460161 m!3862693))

(assert (=> b!3460161 m!3862693))

(declare-fun m!3862695 () Bool)

(assert (=> b!3460161 m!3862695))

(assert (=> b!3460154 m!3862617))

(assert (=> b!3460154 m!3862691))

(assert (=> b!3460154 m!3862691))

(assert (=> b!3460154 m!3862693))

(assert (=> b!3460154 m!3862693))

(declare-fun m!3862697 () Bool)

(assert (=> b!3460154 m!3862697))

(assert (=> b!3460157 m!3862617))

(declare-fun m!3862699 () Bool)

(assert (=> b!3460157 m!3862699))

(assert (=> b!3460157 m!3858103))

(assert (=> bm!249351 d!995744))

(declare-fun d!995748 () Bool)

(declare-fun lt!1176140 () Bool)

(assert (=> d!995748 (= lt!1176140 (isEmpty!21510 (list!13524 (_2!21570 lt!1175067))))))

(assert (=> d!995748 (= lt!1176140 (isEmpty!21511 (c!591766 (_2!21570 lt!1175067))))))

(assert (=> d!995748 (= (isEmpty!21504 (_2!21570 lt!1175067)) lt!1176140)))

(declare-fun bs!560390 () Bool)

(assert (= bs!560390 d!995748))

(declare-fun m!3862703 () Bool)

(assert (=> bs!560390 m!3862703))

(assert (=> bs!560390 m!3862703))

(declare-fun m!3862705 () Bool)

(assert (=> bs!560390 m!3862705))

(declare-fun m!3862707 () Bool)

(assert (=> bs!560390 m!3862707))

(assert (=> b!3458082 d!995748))

(declare-fun d!995752 () Bool)

(declare-fun c!592394 () Bool)

(assert (=> d!995752 (= c!592394 (is-Nil!37157 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))

(declare-fun e!2143711 () (Set C!20578))

(assert (=> d!995752 (= (content!5182 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))) e!2143711)))

(declare-fun b!3460165 () Bool)

(assert (=> b!3460165 (= e!2143711 (as set.empty (Set C!20578)))))

(declare-fun b!3460166 () Bool)

(assert (=> b!3460166 (= e!2143711 (set.union (set.insert (h!42577 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))) (as set.empty (Set C!20578))) (content!5182 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))

(assert (= (and d!995752 c!592394) b!3460165))

(assert (= (and d!995752 (not c!592394)) b!3460166))

(declare-fun m!3862709 () Bool)

(assert (=> b!3460166 m!3862709))

(declare-fun m!3862711 () Bool)

(assert (=> b!3460166 m!3862711))

(assert (=> d!994500 d!995752))

(assert (=> d!994584 d!995156))

(declare-fun d!995754 () Bool)

(declare-fun lt!1176141 () Bool)

(assert (=> d!995754 (= lt!1176141 (set.member lt!1174844 (content!5182 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))))))))

(declare-fun e!2143712 () Bool)

(assert (=> d!995754 (= lt!1176141 e!2143712)))

(declare-fun res!1396061 () Bool)

(assert (=> d!995754 (=> (not res!1396061) (not e!2143712))))

(assert (=> d!995754 (= res!1396061 (is-Cons!37157 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))))))))

(assert (=> d!995754 (= (contains!6886 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494))))) lt!1174844) lt!1176141)))

(declare-fun b!3460167 () Bool)

(declare-fun e!2143713 () Bool)

(assert (=> b!3460167 (= e!2143712 e!2143713)))

(declare-fun res!1396062 () Bool)

(assert (=> b!3460167 (=> res!1396062 e!2143713)))

(assert (=> b!3460167 (= res!1396062 (= (h!42577 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) lt!1174844))))

(declare-fun b!3460168 () Bool)

(assert (=> b!3460168 (= e!2143713 (contains!6886 (t!272528 (t!272528 (usedCharacters!671 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) lt!1174844))))

(assert (= (and d!995754 res!1396061) b!3460167))

(assert (= (and b!3460167 (not res!1396062)) b!3460168))

(assert (=> d!995754 m!3862711))

(declare-fun m!3862715 () Bool)

(assert (=> d!995754 m!3862715))

(declare-fun m!3862717 () Bool)

(assert (=> b!3460168 m!3862717))

(assert (=> b!3458080 d!995754))

(declare-fun d!995760 () Bool)

(declare-fun c!592395 () Bool)

(assert (=> d!995760 (= c!592395 (is-Node!11249 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))))))

(declare-fun e!2143714 () Bool)

(assert (=> d!995760 (= (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))) e!2143714)))

(declare-fun b!3460169 () Bool)

(assert (=> b!3460169 (= e!2143714 (inv!50333 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))))))

(declare-fun b!3460170 () Bool)

(declare-fun e!2143715 () Bool)

(assert (=> b!3460170 (= e!2143714 e!2143715)))

(declare-fun res!1396063 () Bool)

(assert (=> b!3460170 (= res!1396063 (not (is-Leaf!17579 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))))))))

(assert (=> b!3460170 (=> res!1396063 e!2143715)))

(declare-fun b!3460171 () Bool)

(assert (=> b!3460171 (= e!2143715 (inv!50334 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))))))

(assert (= (and d!995760 c!592395) b!3460169))

(assert (= (and d!995760 (not c!592395)) b!3460170))

(assert (= (and b!3460170 (not res!1396063)) b!3460171))

(declare-fun m!3862719 () Bool)

(assert (=> b!3460169 m!3862719))

(declare-fun m!3862721 () Bool)

(assert (=> b!3460171 m!3862721))

(assert (=> b!3457893 d!995760))

(declare-fun d!995762 () Bool)

(declare-fun lt!1176142 () Int)

(assert (=> d!995762 (>= lt!1176142 0)))

(declare-fun e!2143716 () Int)

(assert (=> d!995762 (= lt!1176142 e!2143716)))

(declare-fun c!592396 () Bool)

(assert (=> d!995762 (= c!592396 (is-Nil!37159 (list!13526 (_1!21570 lt!1174845))))))

(assert (=> d!995762 (= (size!28190 (list!13526 (_1!21570 lt!1174845))) lt!1176142)))

(declare-fun b!3460172 () Bool)

(assert (=> b!3460172 (= e!2143716 0)))

(declare-fun b!3460173 () Bool)

(assert (=> b!3460173 (= e!2143716 (+ 1 (size!28190 (t!272530 (list!13526 (_1!21570 lt!1174845))))))))

(assert (= (and d!995762 c!592396) b!3460172))

(assert (= (and d!995762 (not c!592396)) b!3460173))

(declare-fun m!3862723 () Bool)

(assert (=> b!3460173 m!3862723))

(assert (=> d!994592 d!995762))

(assert (=> d!994592 d!995458))

(declare-fun d!995764 () Bool)

(declare-fun lt!1176143 () Int)

(assert (=> d!995764 (= lt!1176143 (size!28190 (list!13530 (c!591767 (_1!21570 lt!1174845)))))))

(assert (=> d!995764 (= lt!1176143 (ite (is-Empty!11250 (c!591767 (_1!21570 lt!1174845))) 0 (ite (is-Leaf!17580 (c!591767 (_1!21570 lt!1174845))) (csize!22731 (c!591767 (_1!21570 lt!1174845))) (csize!22730 (c!591767 (_1!21570 lt!1174845))))))))

(assert (=> d!995764 (= (size!28191 (c!591767 (_1!21570 lt!1174845))) lt!1176143)))

(declare-fun bs!560392 () Bool)

(assert (= bs!560392 d!995764))

(assert (=> bs!560392 m!3861751))

(assert (=> bs!560392 m!3861751))

(declare-fun m!3862725 () Bool)

(assert (=> bs!560392 m!3862725))

(assert (=> d!994592 d!995764))

(assert (=> b!3458136 d!994448))

(declare-fun b!3460174 () Bool)

(declare-fun e!2143719 () Bool)

(declare-fun e!2143722 () Bool)

(assert (=> b!3460174 (= e!2143719 e!2143722)))

(declare-fun res!1396066 () Bool)

(assert (=> b!3460174 (=> (not res!1396066) (not e!2143722))))

(declare-fun lt!1176144 () Bool)

(assert (=> b!3460174 (= res!1396066 (not lt!1176144))))

(declare-fun b!3460175 () Bool)

(declare-fun e!2143718 () Bool)

(declare-fun call!249540 () Bool)

(assert (=> b!3460175 (= e!2143718 (= lt!1176144 call!249540))))

(declare-fun b!3460176 () Bool)

(declare-fun res!1396071 () Bool)

(assert (=> b!3460176 (=> res!1396071 e!2143719)))

(declare-fun e!2143720 () Bool)

(assert (=> b!3460176 (= res!1396071 e!2143720)))

(declare-fun res!1396067 () Bool)

(assert (=> b!3460176 (=> (not res!1396067) (not e!2143720))))

(assert (=> b!3460176 (= res!1396067 lt!1176144)))

(declare-fun b!3460177 () Bool)

(declare-fun e!2143723 () Bool)

(assert (=> b!3460177 (= e!2143722 e!2143723)))

(declare-fun res!1396064 () Bool)

(assert (=> b!3460177 (=> res!1396064 e!2143723)))

(assert (=> b!3460177 (= res!1396064 call!249540)))

(declare-fun b!3460178 () Bool)

(declare-fun e!2143721 () Bool)

(assert (=> b!3460178 (= e!2143721 (nullable!3487 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))))))))

(declare-fun d!995766 () Bool)

(assert (=> d!995766 e!2143718))

(declare-fun c!592399 () Bool)

(assert (=> d!995766 (= c!592399 (is-EmptyExpr!10196 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))))))))

(assert (=> d!995766 (= lt!1176144 e!2143721)))

(declare-fun c!592398 () Bool)

(assert (=> d!995766 (= c!592398 (isEmpty!21510 (list!13524 (charsOf!3451 (h!42579 tokens!494)))))))

(assert (=> d!995766 (validRegex!4643 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))

(assert (=> d!995766 (= (matchR!4780 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))) (list!13524 (charsOf!3451 (h!42579 tokens!494)))) lt!1176144)))

(declare-fun b!3460179 () Bool)

(declare-fun res!1396070 () Bool)

(assert (=> b!3460179 (=> (not res!1396070) (not e!2143720))))

(assert (=> b!3460179 (= res!1396070 (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 (h!42579 tokens!494))))))))

(declare-fun b!3460180 () Bool)

(assert (=> b!3460180 (= e!2143723 (not (= (head!7316 (list!13524 (charsOf!3451 (h!42579 tokens!494)))) (c!591765 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))))))))))

(declare-fun b!3460181 () Bool)

(assert (=> b!3460181 (= e!2143721 (matchR!4780 (derivativeStep!3040 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))) (head!7316 (list!13524 (charsOf!3451 (h!42579 tokens!494))))) (tail!5431 (list!13524 (charsOf!3451 (h!42579 tokens!494))))))))

(declare-fun b!3460182 () Bool)

(declare-fun e!2143717 () Bool)

(assert (=> b!3460182 (= e!2143717 (not lt!1176144))))

(declare-fun b!3460183 () Bool)

(declare-fun res!1396069 () Bool)

(assert (=> b!3460183 (=> (not res!1396069) (not e!2143720))))

(assert (=> b!3460183 (= res!1396069 (not call!249540))))

(declare-fun b!3460184 () Bool)

(declare-fun res!1396068 () Bool)

(assert (=> b!3460184 (=> res!1396068 e!2143723)))

(assert (=> b!3460184 (= res!1396068 (not (isEmpty!21510 (tail!5431 (list!13524 (charsOf!3451 (h!42579 tokens!494)))))))))

(declare-fun b!3460185 () Bool)

(declare-fun res!1396065 () Bool)

(assert (=> b!3460185 (=> res!1396065 e!2143719)))

(assert (=> b!3460185 (= res!1396065 (not (is-ElementMatch!10196 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))))

(assert (=> b!3460185 (= e!2143717 e!2143719)))

(declare-fun bm!249535 () Bool)

(assert (=> bm!249535 (= call!249540 (isEmpty!21510 (list!13524 (charsOf!3451 (h!42579 tokens!494)))))))

(declare-fun b!3460186 () Bool)

(assert (=> b!3460186 (= e!2143718 e!2143717)))

(declare-fun c!592397 () Bool)

(assert (=> b!3460186 (= c!592397 (is-EmptyLang!10196 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))))))))

(declare-fun b!3460187 () Bool)

(assert (=> b!3460187 (= e!2143720 (= (head!7316 (list!13524 (charsOf!3451 (h!42579 tokens!494)))) (c!591765 (regex!5437 (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494)))))))))))

(assert (= (and d!995766 c!592398) b!3460178))

(assert (= (and d!995766 (not c!592398)) b!3460181))

(assert (= (and d!995766 c!592399) b!3460175))

(assert (= (and d!995766 (not c!592399)) b!3460186))

(assert (= (and b!3460186 c!592397) b!3460182))

(assert (= (and b!3460186 (not c!592397)) b!3460185))

(assert (= (and b!3460185 (not res!1396065)) b!3460176))

(assert (= (and b!3460176 res!1396067) b!3460183))

(assert (= (and b!3460183 res!1396069) b!3460179))

(assert (= (and b!3460179 res!1396070) b!3460187))

(assert (= (and b!3460176 (not res!1396071)) b!3460174))

(assert (= (and b!3460174 res!1396066) b!3460177))

(assert (= (and b!3460177 (not res!1396064)) b!3460184))

(assert (= (and b!3460184 (not res!1396068)) b!3460180))

(assert (= (or b!3460175 b!3460177 b!3460183) bm!249535))

(assert (=> b!3460181 m!3858067))

(declare-fun m!3862733 () Bool)

(assert (=> b!3460181 m!3862733))

(assert (=> b!3460181 m!3862733))

(declare-fun m!3862735 () Bool)

(assert (=> b!3460181 m!3862735))

(assert (=> b!3460181 m!3858067))

(declare-fun m!3862737 () Bool)

(assert (=> b!3460181 m!3862737))

(assert (=> b!3460181 m!3862735))

(assert (=> b!3460181 m!3862737))

(declare-fun m!3862739 () Bool)

(assert (=> b!3460181 m!3862739))

(declare-fun m!3862741 () Bool)

(assert (=> b!3460178 m!3862741))

(assert (=> d!995766 m!3858067))

(declare-fun m!3862743 () Bool)

(assert (=> d!995766 m!3862743))

(declare-fun m!3862745 () Bool)

(assert (=> d!995766 m!3862745))

(assert (=> bm!249535 m!3858067))

(assert (=> bm!249535 m!3862743))

(assert (=> b!3460184 m!3858067))

(assert (=> b!3460184 m!3862737))

(assert (=> b!3460184 m!3862737))

(declare-fun m!3862747 () Bool)

(assert (=> b!3460184 m!3862747))

(assert (=> b!3460180 m!3858067))

(assert (=> b!3460180 m!3862733))

(assert (=> b!3460179 m!3858067))

(assert (=> b!3460179 m!3862737))

(assert (=> b!3460179 m!3862737))

(assert (=> b!3460179 m!3862747))

(assert (=> b!3460187 m!3858067))

(assert (=> b!3460187 m!3862733))

(assert (=> b!3458136 d!995766))

(assert (=> b!3458136 d!994578))

(declare-fun d!995774 () Bool)

(assert (=> d!995774 (= (get!11891 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))) (v!36836 (getRuleFromTag!1080 thiss!18206 rules!2135 (tag!6045 (rule!8027 (h!42579 tokens!494))))))))

(assert (=> b!3458136 d!995774))

(assert (=> b!3458136 d!994446))

(declare-fun d!995776 () Bool)

(assert (=> d!995776 (= (isEmpty!21510 (list!13524 (_2!21570 lt!1174845))) (is-Nil!37157 (list!13524 (_2!21570 lt!1174845))))))

(assert (=> d!994388 d!995776))

(declare-fun d!995778 () Bool)

(assert (=> d!995778 (= (list!13524 (_2!21570 lt!1174845)) (list!13527 (c!591766 (_2!21570 lt!1174845))))))

(declare-fun bs!560395 () Bool)

(assert (= bs!560395 d!995778))

(declare-fun m!3862749 () Bool)

(assert (=> bs!560395 m!3862749))

(assert (=> d!994388 d!995778))

(declare-fun d!995780 () Bool)

(declare-fun lt!1176149 () Bool)

(assert (=> d!995780 (= lt!1176149 (isEmpty!21510 (list!13527 (c!591766 (_2!21570 lt!1174845)))))))

(assert (=> d!995780 (= lt!1176149 (= (size!28195 (c!591766 (_2!21570 lt!1174845))) 0))))

(assert (=> d!995780 (= (isEmpty!21511 (c!591766 (_2!21570 lt!1174845))) lt!1176149)))

(declare-fun bs!560396 () Bool)

(assert (= bs!560396 d!995780))

(assert (=> bs!560396 m!3862749))

(assert (=> bs!560396 m!3862749))

(declare-fun m!3862755 () Bool)

(assert (=> bs!560396 m!3862755))

(declare-fun m!3862757 () Bool)

(assert (=> bs!560396 m!3862757))

(assert (=> d!994388 d!995780))

(assert (=> b!3458137 d!995774))

(assert (=> b!3458137 d!994578))

(declare-fun d!995784 () Bool)

(assert (=> d!995784 (= (list!13524 lt!1175063) (list!13527 (c!591766 lt!1175063)))))

(declare-fun bs!560397 () Bool)

(assert (= bs!560397 d!995784))

(declare-fun m!3862759 () Bool)

(assert (=> bs!560397 m!3862759))

(assert (=> d!994490 d!995784))

(declare-fun d!995786 () Bool)

(assert (=> d!995786 (= (isEmpty!21510 (originalCharacters!6151 separatorToken!241)) (is-Nil!37157 (originalCharacters!6151 separatorToken!241)))))

(assert (=> d!994422 d!995786))

(declare-fun d!995788 () Bool)

(assert (=> d!995788 (= (list!13526 lt!1175193) (list!13530 (c!591767 lt!1175193)))))

(declare-fun bs!560398 () Bool)

(assert (= bs!560398 d!995788))

(declare-fun m!3862761 () Bool)

(assert (=> bs!560398 m!3862761))

(assert (=> d!994596 d!995788))

(declare-fun d!995790 () Bool)

(declare-fun e!2143730 () Bool)

(assert (=> d!995790 e!2143730))

(declare-fun res!1396074 () Bool)

(assert (=> d!995790 (=> (not res!1396074) (not e!2143730))))

(declare-fun lt!1176151 () BalanceConc!22114)

(assert (=> d!995790 (= res!1396074 (= (list!13526 lt!1176151) (Cons!37159 (h!42579 (t!272530 tokens!494)) Nil!37159)))))

(assert (=> d!995790 (= lt!1176151 (choose!20005 (h!42579 (t!272530 tokens!494))))))

(assert (=> d!995790 (= (singleton!1119 (h!42579 (t!272530 tokens!494))) lt!1176151)))

(declare-fun b!3460198 () Bool)

(assert (=> b!3460198 (= e!2143730 (isBalanced!3412 (c!591767 lt!1176151)))))

(assert (= (and d!995790 res!1396074) b!3460198))

(declare-fun m!3862769 () Bool)

(assert (=> d!995790 m!3862769))

(declare-fun m!3862773 () Bool)

(assert (=> d!995790 m!3862773))

(declare-fun m!3862777 () Bool)

(assert (=> b!3460198 m!3862777))

(assert (=> d!994596 d!995790))

(assert (=> b!3458370 d!994592))

(assert (=> b!3458361 d!994824))

(assert (=> b!3458361 d!994826))

(declare-fun b!3460200 () Bool)

(declare-fun res!1396077 () Bool)

(declare-fun e!2143732 () Bool)

(assert (=> b!3460200 (=> (not res!1396077) (not e!2143732))))

(assert (=> b!3460200 (= res!1396077 (<= (- (height!1695 (left!28993 (c!591767 lt!1175182))) (height!1695 (right!29323 (c!591767 lt!1175182)))) 1))))

(declare-fun b!3460201 () Bool)

(declare-fun res!1396081 () Bool)

(assert (=> b!3460201 (=> (not res!1396081) (not e!2143732))))

(assert (=> b!3460201 (= res!1396081 (isBalanced!3412 (right!29323 (c!591767 lt!1175182))))))

(declare-fun b!3460202 () Bool)

(declare-fun res!1396076 () Bool)

(assert (=> b!3460202 (=> (not res!1396076) (not e!2143732))))

(assert (=> b!3460202 (= res!1396076 (isBalanced!3412 (left!28993 (c!591767 lt!1175182))))))

(declare-fun b!3460203 () Bool)

(declare-fun res!1396080 () Bool)

(assert (=> b!3460203 (=> (not res!1396080) (not e!2143732))))

(assert (=> b!3460203 (= res!1396080 (not (isEmpty!21519 (left!28993 (c!591767 lt!1175182)))))))

(declare-fun d!995794 () Bool)

(declare-fun res!1396079 () Bool)

(declare-fun e!2143733 () Bool)

(assert (=> d!995794 (=> res!1396079 e!2143733)))

(assert (=> d!995794 (= res!1396079 (not (is-Node!11250 (c!591767 lt!1175182))))))

(assert (=> d!995794 (= (isBalanced!3412 (c!591767 lt!1175182)) e!2143733)))

(declare-fun b!3460204 () Bool)

(assert (=> b!3460204 (= e!2143733 e!2143732)))

(declare-fun res!1396078 () Bool)

(assert (=> b!3460204 (=> (not res!1396078) (not e!2143732))))

(assert (=> b!3460204 (= res!1396078 (<= (- 1) (- (height!1695 (left!28993 (c!591767 lt!1175182))) (height!1695 (right!29323 (c!591767 lt!1175182))))))))

(declare-fun b!3460205 () Bool)

(assert (=> b!3460205 (= e!2143732 (not (isEmpty!21519 (right!29323 (c!591767 lt!1175182)))))))

(assert (= (and d!995794 (not res!1396079)) b!3460204))

(assert (= (and b!3460204 res!1396078) b!3460200))

(assert (= (and b!3460200 res!1396077) b!3460202))

(assert (= (and b!3460202 res!1396076) b!3460201))

(assert (= (and b!3460201 res!1396081) b!3460203))

(assert (= (and b!3460203 res!1396080) b!3460205))

(declare-fun m!3862783 () Bool)

(assert (=> b!3460205 m!3862783))

(declare-fun m!3862785 () Bool)

(assert (=> b!3460200 m!3862785))

(declare-fun m!3862787 () Bool)

(assert (=> b!3460200 m!3862787))

(assert (=> b!3460204 m!3862785))

(assert (=> b!3460204 m!3862787))

(declare-fun m!3862789 () Bool)

(assert (=> b!3460203 m!3862789))

(declare-fun m!3862791 () Bool)

(assert (=> b!3460202 m!3862791))

(declare-fun m!3862793 () Bool)

(assert (=> b!3460201 m!3862793))

(assert (=> b!3458315 d!995794))

(assert (=> b!3458125 d!994754))

(declare-fun d!995800 () Bool)

(assert (=> d!995800 (= (apply!8745 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092))))) (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092))))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092))))))))

(declare-fun b_lambda!99605 () Bool)

(assert (=> (not b_lambda!99605) (not d!995800)))

(declare-fun t!272834 () Bool)

(declare-fun tb!188539 () Bool)

(assert (=> (and b!3457644 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272834) tb!188539))

(declare-fun result!232524 () Bool)

(assert (=> tb!188539 (= result!232524 (inv!21 (dynLambda!15655 (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092))))) (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092)))))))))

(declare-fun m!3862797 () Bool)

(assert (=> tb!188539 m!3862797))

(assert (=> d!995800 t!272834))

(declare-fun b_and!243383 () Bool)

(assert (= b_and!243381 (and (=> t!272834 result!232524) b_and!243383)))

(declare-fun tb!188543 () Bool)

(declare-fun t!272838 () Bool)

(assert (=> (and b!3458384 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272838) tb!188543))

(declare-fun result!232528 () Bool)

(assert (= result!232528 result!232524))

(assert (=> d!995800 t!272838))

(declare-fun b_and!243387 () Bool)

(assert (= b_and!243375 (and (=> t!272838 result!232528) b_and!243387)))

(declare-fun t!272842 () Bool)

(declare-fun tb!188547 () Bool)

(assert (=> (and b!3458412 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272842) tb!188547))

(declare-fun result!232532 () Bool)

(assert (= result!232532 result!232524))

(assert (=> d!995800 t!272842))

(declare-fun b_and!243393 () Bool)

(assert (= b_and!243379 (and (=> t!272842 result!232532) b_and!243393)))

(declare-fun tb!188553 () Bool)

(declare-fun t!272848 () Bool)

(assert (=> (and b!3457652 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272848) tb!188553))

(declare-fun result!232538 () Bool)

(assert (= result!232538 result!232524))

(assert (=> d!995800 t!272848))

(declare-fun b_and!243399 () Bool)

(assert (= b_and!243373 (and (=> t!272848 result!232538) b_and!243399)))

(declare-fun tb!188557 () Bool)

(declare-fun t!272852 () Bool)

(assert (=> (and b!3457648 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272852) tb!188557))

(declare-fun result!232542 () Bool)

(assert (= result!232542 result!232524))

(assert (=> d!995800 t!272852))

(declare-fun b_and!243401 () Bool)

(assert (= b_and!243377 (and (=> t!272852 result!232542) b_and!243401)))

(assert (=> d!995800 m!3858853))

(declare-fun m!3862807 () Bool)

(assert (=> d!995800 m!3862807))

(assert (=> b!3458125 d!995800))

(declare-fun d!995808 () Bool)

(assert (=> d!995808 (= (seqFromList!3928 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092)))) (fromListB!1782 (originalCharacters!6151 (_1!21571 (get!11893 lt!1175092)))))))

(declare-fun bs!560399 () Bool)

(assert (= bs!560399 d!995808))

(declare-fun m!3862809 () Bool)

(assert (=> bs!560399 m!3862809))

(assert (=> b!3458125 d!995808))

(declare-fun b!3460215 () Bool)

(declare-fun b_free!89885 () Bool)

(declare-fun b_next!90589 () Bool)

(assert (=> b!3460215 (= b_free!89885 (not b_next!90589))))

(declare-fun t!272854 () Bool)

(declare-fun tb!188559 () Bool)

(assert (=> (and b!3460215 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272854) tb!188559))

(declare-fun result!232544 () Bool)

(assert (= result!232544 result!232454))

(assert (=> d!995314 t!272854))

(declare-fun t!272856 () Bool)

(declare-fun tb!188561 () Bool)

(assert (=> (and b!3460215 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272856) tb!188561))

(declare-fun result!232546 () Bool)

(assert (= result!232546 result!232344))

(assert (=> d!994768 t!272856))

(declare-fun tb!188563 () Bool)

(declare-fun t!272858 () Bool)

(assert (=> (and b!3460215 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272858) tb!188563))

(declare-fun result!232548 () Bool)

(assert (= result!232548 result!232514))

(assert (=> d!995694 t!272858))

(declare-fun t!272860 () Bool)

(declare-fun tb!188565 () Bool)

(assert (=> (and b!3460215 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272860) tb!188565))

(declare-fun result!232550 () Bool)

(assert (= result!232550 result!232524))

(assert (=> d!995800 t!272860))

(assert (=> d!995394 t!272854))

(declare-fun t!272862 () Bool)

(declare-fun tb!188567 () Bool)

(assert (=> (and b!3460215 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272862) tb!188567))

(declare-fun result!232552 () Bool)

(assert (= result!232552 result!232274))

(assert (=> d!994536 t!272862))

(declare-fun tp!1077913 () Bool)

(declare-fun b_and!243403 () Bool)

(assert (=> b!3460215 (= tp!1077913 (and (=> t!272860 result!232550) (=> t!272856 result!232546) (=> t!272854 result!232544) (=> t!272862 result!232552) (=> t!272858 result!232548) b_and!243403))))

(declare-fun b_free!89887 () Bool)

(declare-fun b_next!90591 () Bool)

(assert (=> b!3460215 (= b_free!89887 (not b_next!90591))))

(declare-fun t!272864 () Bool)

(declare-fun tb!188569 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) t!272864) tb!188569))

(declare-fun result!232554 () Bool)

(assert (= result!232554 result!232394))

(assert (=> d!995042 t!272864))

(declare-fun t!272866 () Bool)

(declare-fun tb!188571 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494))))))) t!272866) tb!188571))

(declare-fun result!232556 () Bool)

(assert (= result!232556 result!232504))

(assert (=> d!995634 t!272866))

(declare-fun t!272868 () Bool)

(declare-fun tb!188573 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) t!272868) tb!188573))

(declare-fun result!232558 () Bool)

(assert (= result!232558 result!232268))

(assert (=> b!3459871 t!272868))

(assert (=> d!994490 t!272868))

(declare-fun t!272870 () Bool)

(declare-fun tb!188575 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272870) tb!188575))

(declare-fun result!232560 () Bool)

(assert (= result!232560 result!232248))

(assert (=> b!3458066 t!272870))

(declare-fun tb!188577 () Bool)

(declare-fun t!272872 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0))))) t!272872) tb!188577))

(declare-fun result!232562 () Bool)

(assert (= result!232562 result!232364))

(assert (=> d!994860 t!272872))

(declare-fun t!272874 () Bool)

(declare-fun tb!188579 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272874) tb!188579))

(declare-fun result!232564 () Bool)

(assert (= result!232564 result!232444))

(assert (=> d!995314 t!272874))

(declare-fun tb!188581 () Bool)

(declare-fun t!272876 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) t!272876) tb!188581))

(declare-fun result!232566 () Bool)

(assert (= result!232566 result!232240))

(assert (=> b!3457887 t!272876))

(assert (=> d!994448 t!272870))

(declare-fun tb!188583 () Bool)

(declare-fun t!272878 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272878) tb!188583))

(declare-fun result!232568 () Bool)

(assert (= result!232568 result!232384))

(assert (=> d!995008 t!272878))

(assert (=> d!994476 t!272876))

(declare-fun tb!188585 () Bool)

(declare-fun t!272880 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0))))) t!272880) tb!188585))

(declare-fun result!232570 () Bool)

(assert (= result!232570 result!232484))

(assert (=> d!995412 t!272880))

(declare-fun t!272882 () Bool)

(declare-fun tb!188587 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0))))) t!272882) tb!188587))

(declare-fun result!232572 () Bool)

(assert (= result!232572 result!232374))

(assert (=> d!994982 t!272882))

(declare-fun t!272884 () Bool)

(declare-fun tb!188589 () Bool)

(assert (=> (and b!3460215 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272884) tb!188589))

(declare-fun result!232574 () Bool)

(assert (= result!232574 result!232354))

(assert (=> d!994802 t!272884))

(declare-fun b_and!243405 () Bool)

(declare-fun tp!1077915 () Bool)

(assert (=> b!3460215 (= tp!1077915 (and (=> t!272876 result!232566) (=> t!272866 result!232556) (=> t!272884 result!232574) (=> t!272868 result!232558) (=> t!272870 result!232560) (=> t!272880 result!232570) (=> t!272878 result!232568) (=> t!272872 result!232562) (=> t!272874 result!232564) (=> t!272882 result!232572) (=> t!272864 result!232554) b_and!243405))))

(declare-fun b!3460212 () Bool)

(declare-fun tp!1077916 () Bool)

(declare-fun e!2143738 () Bool)

(declare-fun e!2143741 () Bool)

(assert (=> b!3460212 (= e!2143738 (and (inv!50326 (h!42579 (t!272530 (t!272530 tokens!494)))) e!2143741 tp!1077916))))

(declare-fun e!2143743 () Bool)

(declare-fun e!2143739 () Bool)

(declare-fun b!3460214 () Bool)

(declare-fun tp!1077917 () Bool)

(assert (=> b!3460214 (= e!2143743 (and tp!1077917 (inv!50322 (tag!6045 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (inv!50325 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) e!2143739))))

(assert (=> b!3458409 (= tp!1077826 e!2143738)))

(assert (=> b!3460215 (= e!2143739 (and tp!1077913 tp!1077915))))

(declare-fun b!3460213 () Bool)

(declare-fun tp!1077914 () Bool)

(assert (=> b!3460213 (= e!2143741 (and (inv!21 (value!175416 (h!42579 (t!272530 (t!272530 tokens!494))))) e!2143743 tp!1077914))))

(assert (= b!3460214 b!3460215))

(assert (= b!3460213 b!3460214))

(assert (= b!3460212 b!3460213))

(assert (= (and b!3458409 (is-Cons!37159 (t!272530 (t!272530 tokens!494)))) b!3460212))

(declare-fun m!3862845 () Bool)

(assert (=> b!3460212 m!3862845))

(declare-fun m!3862847 () Bool)

(assert (=> b!3460214 m!3862847))

(declare-fun m!3862849 () Bool)

(assert (=> b!3460214 m!3862849))

(declare-fun m!3862851 () Bool)

(assert (=> b!3460213 m!3862851))

(declare-fun b!3460233 () Bool)

(declare-fun b_free!89889 () Bool)

(declare-fun b_next!90593 () Bool)

(assert (=> b!3460233 (= b_free!89889 (not b_next!90593))))

(declare-fun t!272886 () Bool)

(declare-fun tb!188591 () Bool)

(assert (=> (and b!3460233 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272886) tb!188591))

(declare-fun result!232576 () Bool)

(assert (= result!232576 result!232454))

(assert (=> d!995314 t!272886))

(declare-fun t!272888 () Bool)

(declare-fun tb!188593 () Bool)

(assert (=> (and b!3460233 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272888) tb!188593))

(declare-fun result!232578 () Bool)

(assert (= result!232578 result!232344))

(assert (=> d!994768 t!272888))

(declare-fun t!272890 () Bool)

(declare-fun tb!188595 () Bool)

(assert (=> (and b!3460233 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272890) tb!188595))

(declare-fun result!232580 () Bool)

(assert (= result!232580 result!232514))

(assert (=> d!995694 t!272890))

(declare-fun tb!188597 () Bool)

(declare-fun t!272892 () Bool)

(assert (=> (and b!3460233 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272892) tb!188597))

(declare-fun result!232582 () Bool)

(assert (= result!232582 result!232524))

(assert (=> d!995800 t!272892))

(assert (=> d!995394 t!272886))

(declare-fun tb!188599 () Bool)

(declare-fun t!272894 () Bool)

(assert (=> (and b!3460233 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272894) tb!188599))

(declare-fun result!232584 () Bool)

(assert (= result!232584 result!232274))

(assert (=> d!994536 t!272894))

(declare-fun b_and!243407 () Bool)

(declare-fun tp!1077919 () Bool)

(assert (=> b!3460233 (= tp!1077919 (and (=> t!272886 result!232576) (=> t!272892 result!232582) (=> t!272888 result!232578) (=> t!272894 result!232584) (=> t!272890 result!232580) b_and!243407))))

(declare-fun b_free!89891 () Bool)

(declare-fun b_next!90595 () Bool)

(assert (=> b!3460233 (= b_free!89891 (not b_next!90595))))

(declare-fun tb!188601 () Bool)

(declare-fun t!272896 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (Cons!37159 (h!42579 tokens!494) Nil!37159)))))) t!272896) tb!188601))

(declare-fun result!232586 () Bool)

(assert (= result!232586 result!232394))

(assert (=> d!995042 t!272896))

(declare-fun tb!188603 () Bool)

(declare-fun t!272898 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494))))))) t!272898) tb!188603))

(declare-fun result!232588 () Bool)

(assert (= result!232588 result!232504))

(assert (=> d!995634 t!272898))

(declare-fun tb!188605 () Bool)

(declare-fun t!272900 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) t!272900) tb!188605))

(declare-fun result!232590 () Bool)

(assert (= result!232590 result!232268))

(assert (=> b!3459871 t!272900))

(assert (=> d!994490 t!272900))

(declare-fun t!272902 () Bool)

(declare-fun tb!188607 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272902) tb!188607))

(declare-fun result!232592 () Bool)

(assert (= result!232592 result!232248))

(assert (=> b!3458066 t!272902))

(declare-fun t!272904 () Bool)

(declare-fun tb!188609 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174837 0))))) t!272904) tb!188609))

(declare-fun result!232594 () Bool)

(assert (= result!232594 result!232364))

(assert (=> d!994860 t!272904))

(declare-fun t!272906 () Bool)

(declare-fun tb!188611 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494))))) t!272906) tb!188611))

(declare-fun result!232596 () Bool)

(assert (= result!232596 result!232444))

(assert (=> d!995314 t!272906))

(declare-fun tb!188613 () Bool)

(declare-fun t!272908 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241)))) t!272908) tb!188613))

(declare-fun result!232598 () Bool)

(assert (= result!232598 result!232240))

(assert (=> b!3457887 t!272908))

(assert (=> d!994448 t!272902))

(declare-fun tb!188615 () Bool)

(declare-fun t!272910 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175092)))))) t!272910) tb!188615))

(declare-fun result!232600 () Bool)

(assert (= result!232600 result!232384))

(assert (=> d!995008 t!272910))

(assert (=> d!994476 t!272908))

(declare-fun tb!188617 () Bool)

(declare-fun t!272912 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174849 0))))) t!272912) tb!188617))

(declare-fun result!232602 () Bool)

(assert (= result!232602 result!232484))

(assert (=> d!995412 t!272912))

(declare-fun t!272914 () Bool)

(declare-fun tb!188619 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (apply!8744 lt!1174852 0))))) t!272914) tb!188619))

(declare-fun result!232604 () Bool)

(assert (= result!232604 result!232374))

(assert (=> d!994982 t!272914))

(declare-fun t!272916 () Bool)

(declare-fun tb!188621 () Bool)

(assert (=> (and b!3460233 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (_1!21571 (get!11893 lt!1175029)))))) t!272916) tb!188621))

(declare-fun result!232606 () Bool)

(assert (= result!232606 result!232354))

(assert (=> d!994802 t!272916))

(declare-fun tp!1077921 () Bool)

(declare-fun b_and!243409 () Bool)

(assert (=> b!3460233 (= tp!1077921 (and (=> t!272914 result!232604) (=> t!272904 result!232594) (=> t!272916 result!232606) (=> t!272898 result!232588) (=> t!272912 result!232602) (=> t!272906 result!232596) (=> t!272896 result!232586) (=> t!272900 result!232590) (=> t!272902 result!232592) (=> t!272910 result!232600) (=> t!272908 result!232598) b_and!243409))))

(declare-fun e!2143754 () Bool)

(assert (=> b!3460233 (= e!2143754 (and tp!1077919 tp!1077921))))

(declare-fun tp!1077920 () Bool)

(declare-fun e!2143755 () Bool)

(declare-fun b!3460232 () Bool)

(assert (=> b!3460232 (= e!2143755 (and tp!1077920 (inv!50322 (tag!6045 (h!42578 (t!272529 (t!272529 rules!2135))))) (inv!50325 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) e!2143754))))

(declare-fun b!3460231 () Bool)

(declare-fun e!2143756 () Bool)

(declare-fun tp!1077918 () Bool)

(assert (=> b!3460231 (= e!2143756 (and e!2143755 tp!1077918))))

(assert (=> b!3458382 (= tp!1077794 e!2143756)))

(assert (= b!3460232 b!3460233))

(assert (= b!3460231 b!3460232))

(assert (= (and b!3458382 (is-Cons!37158 (t!272529 (t!272529 rules!2135)))) b!3460231))

(declare-fun m!3862891 () Bool)

(assert (=> b!3460232 m!3862891))

(declare-fun m!3862893 () Bool)

(assert (=> b!3460232 m!3862893))

(declare-fun b!3460247 () Bool)

(declare-fun e!2143764 () Bool)

(declare-fun tp!1077922 () Bool)

(assert (=> b!3460247 (= e!2143764 (and tp_is_empty!17555 tp!1077922))))

(assert (=> b!3458432 (= tp!1077841 e!2143764)))

(assert (= (and b!3458432 (is-Cons!37157 (t!272528 (originalCharacters!6151 (h!42579 tokens!494))))) b!3460247))

(declare-fun b!3460250 () Bool)

(declare-fun e!2143767 () Bool)

(assert (=> b!3460250 (= e!2143767 true)))

(declare-fun b!3460249 () Bool)

(declare-fun e!2143766 () Bool)

(assert (=> b!3460249 (= e!2143766 e!2143767)))

(declare-fun b!3460248 () Bool)

(declare-fun e!2143765 () Bool)

(assert (=> b!3460248 (= e!2143765 e!2143766)))

(assert (=> b!3458040 e!2143765))

(assert (= b!3460249 b!3460250))

(assert (= b!3460248 b!3460249))

(assert (= (and b!3458040 (is-Cons!37158 (t!272529 rules!2135))) b!3460248))

(assert (=> b!3460250 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135))))) (dynLambda!15646 order!19781 lambda!121792))))

(assert (=> b!3460250 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135))))) (dynLambda!15646 order!19781 lambda!121792))))

(declare-fun b!3460260 () Bool)

(declare-fun e!2143771 () Bool)

(assert (=> b!3460260 (= e!2143771 tp_is_empty!17555)))

(declare-fun b!3460263 () Bool)

(declare-fun tp!1077927 () Bool)

(declare-fun tp!1077926 () Bool)

(assert (=> b!3460263 (= e!2143771 (and tp!1077927 tp!1077926))))

(declare-fun b!3460261 () Bool)

(declare-fun tp!1077924 () Bool)

(declare-fun tp!1077925 () Bool)

(assert (=> b!3460261 (= e!2143771 (and tp!1077924 tp!1077925))))

(assert (=> b!3458383 (= tp!1077796 e!2143771)))

(declare-fun b!3460262 () Bool)

(declare-fun tp!1077923 () Bool)

(assert (=> b!3460262 (= e!2143771 tp!1077923)))

(assert (= (and b!3458383 (is-ElementMatch!10196 (regex!5437 (h!42578 (t!272529 rules!2135))))) b!3460260))

(assert (= (and b!3458383 (is-Concat!15863 (regex!5437 (h!42578 (t!272529 rules!2135))))) b!3460261))

(assert (= (and b!3458383 (is-Star!10196 (regex!5437 (h!42578 (t!272529 rules!2135))))) b!3460262))

(assert (= (and b!3458383 (is-Union!10196 (regex!5437 (h!42578 (t!272529 rules!2135))))) b!3460263))

(declare-fun b!3460264 () Bool)

(declare-fun e!2143772 () Bool)

(assert (=> b!3460264 (= e!2143772 tp_is_empty!17555)))

(declare-fun b!3460267 () Bool)

(declare-fun tp!1077932 () Bool)

(declare-fun tp!1077931 () Bool)

(assert (=> b!3460267 (= e!2143772 (and tp!1077932 tp!1077931))))

(declare-fun b!3460265 () Bool)

(declare-fun tp!1077929 () Bool)

(declare-fun tp!1077930 () Bool)

(assert (=> b!3460265 (= e!2143772 (and tp!1077929 tp!1077930))))

(assert (=> b!3458418 (= tp!1077834 e!2143772)))

(declare-fun b!3460266 () Bool)

(declare-fun tp!1077928 () Bool)

(assert (=> b!3460266 (= e!2143772 tp!1077928)))

(assert (= (and b!3458418 (is-ElementMatch!10196 (regOne!20904 (regex!5437 (h!42578 rules!2135))))) b!3460264))

(assert (= (and b!3458418 (is-Concat!15863 (regOne!20904 (regex!5437 (h!42578 rules!2135))))) b!3460265))

(assert (= (and b!3458418 (is-Star!10196 (regOne!20904 (regex!5437 (h!42578 rules!2135))))) b!3460266))

(assert (= (and b!3458418 (is-Union!10196 (regOne!20904 (regex!5437 (h!42578 rules!2135))))) b!3460267))

(declare-fun b!3460268 () Bool)

(declare-fun e!2143773 () Bool)

(assert (=> b!3460268 (= e!2143773 tp_is_empty!17555)))

(declare-fun b!3460271 () Bool)

(declare-fun tp!1077937 () Bool)

(declare-fun tp!1077936 () Bool)

(assert (=> b!3460271 (= e!2143773 (and tp!1077937 tp!1077936))))

(declare-fun b!3460269 () Bool)

(declare-fun tp!1077934 () Bool)

(declare-fun tp!1077935 () Bool)

(assert (=> b!3460269 (= e!2143773 (and tp!1077934 tp!1077935))))

(assert (=> b!3458418 (= tp!1077835 e!2143773)))

(declare-fun b!3460270 () Bool)

(declare-fun tp!1077933 () Bool)

(assert (=> b!3460270 (= e!2143773 tp!1077933)))

(assert (= (and b!3458418 (is-ElementMatch!10196 (regTwo!20904 (regex!5437 (h!42578 rules!2135))))) b!3460268))

(assert (= (and b!3458418 (is-Concat!15863 (regTwo!20904 (regex!5437 (h!42578 rules!2135))))) b!3460269))

(assert (= (and b!3458418 (is-Star!10196 (regTwo!20904 (regex!5437 (h!42578 rules!2135))))) b!3460270))

(assert (= (and b!3458418 (is-Union!10196 (regTwo!20904 (regex!5437 (h!42578 rules!2135))))) b!3460271))

(declare-fun b!3460272 () Bool)

(declare-fun e!2143774 () Bool)

(declare-fun tp!1077938 () Bool)

(assert (=> b!3460272 (= e!2143774 (and tp_is_empty!17555 tp!1077938))))

(assert (=> b!3458410 (= tp!1077824 e!2143774)))

(assert (= (and b!3458410 (is-Cons!37157 (originalCharacters!6151 (h!42579 (t!272530 tokens!494))))) b!3460272))

(declare-fun tp!1077945 () Bool)

(declare-fun tp!1077946 () Bool)

(declare-fun e!2143780 () Bool)

(declare-fun b!3460281 () Bool)

(assert (=> b!3460281 (= e!2143780 (and (inv!50329 (left!28992 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))))) tp!1077945 (inv!50329 (right!29322 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))))) tp!1077946))))

(declare-fun b!3460283 () Bool)

(declare-fun e!2143779 () Bool)

(declare-fun tp!1077947 () Bool)

(assert (=> b!3460283 (= e!2143779 tp!1077947)))

(declare-fun b!3460282 () Bool)

(declare-fun inv!50337 (IArray!22503) Bool)

(assert (=> b!3460282 (= e!2143780 (and (inv!50337 (xs!14423 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))))) e!2143779))))

(assert (=> b!3458065 (= tp!1077785 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494)))))) e!2143780))))

(assert (= (and b!3458065 (is-Node!11249 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))))) b!3460281))

(assert (= b!3460282 b!3460283))

(assert (= (and b!3458065 (is-Leaf!17579 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (value!175416 (h!42579 (t!272530 tokens!494))))))) b!3460282))

(declare-fun m!3862929 () Bool)

(assert (=> b!3460281 m!3862929))

(declare-fun m!3862931 () Bool)

(assert (=> b!3460281 m!3862931))

(declare-fun m!3862933 () Bool)

(assert (=> b!3460282 m!3862933))

(assert (=> b!3458065 m!3858751))

(declare-fun b!3460284 () Bool)

(declare-fun e!2143781 () Bool)

(assert (=> b!3460284 (= e!2143781 tp_is_empty!17555)))

(declare-fun b!3460287 () Bool)

(declare-fun tp!1077952 () Bool)

(declare-fun tp!1077951 () Bool)

(assert (=> b!3460287 (= e!2143781 (and tp!1077952 tp!1077951))))

(declare-fun b!3460285 () Bool)

(declare-fun tp!1077949 () Bool)

(declare-fun tp!1077950 () Bool)

(assert (=> b!3460285 (= e!2143781 (and tp!1077949 tp!1077950))))

(assert (=> b!3458419 (= tp!1077833 e!2143781)))

(declare-fun b!3460286 () Bool)

(declare-fun tp!1077948 () Bool)

(assert (=> b!3460286 (= e!2143781 tp!1077948)))

(assert (= (and b!3458419 (is-ElementMatch!10196 (reg!10525 (regex!5437 (h!42578 rules!2135))))) b!3460284))

(assert (= (and b!3458419 (is-Concat!15863 (reg!10525 (regex!5437 (h!42578 rules!2135))))) b!3460285))

(assert (= (and b!3458419 (is-Star!10196 (reg!10525 (regex!5437 (h!42578 rules!2135))))) b!3460286))

(assert (= (and b!3458419 (is-Union!10196 (reg!10525 (regex!5437 (h!42578 rules!2135))))) b!3460287))

(declare-fun b!3460288 () Bool)

(declare-fun e!2143782 () Bool)

(assert (=> b!3460288 (= e!2143782 tp_is_empty!17555)))

(declare-fun b!3460291 () Bool)

(declare-fun tp!1077957 () Bool)

(declare-fun tp!1077956 () Bool)

(assert (=> b!3460291 (= e!2143782 (and tp!1077957 tp!1077956))))

(declare-fun b!3460289 () Bool)

(declare-fun tp!1077954 () Bool)

(declare-fun tp!1077955 () Bool)

(assert (=> b!3460289 (= e!2143782 (and tp!1077954 tp!1077955))))

(assert (=> b!3458411 (= tp!1077827 e!2143782)))

(declare-fun b!3460290 () Bool)

(declare-fun tp!1077953 () Bool)

(assert (=> b!3460290 (= e!2143782 tp!1077953)))

(assert (= (and b!3458411 (is-ElementMatch!10196 (regex!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) b!3460288))

(assert (= (and b!3458411 (is-Concat!15863 (regex!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) b!3460289))

(assert (= (and b!3458411 (is-Star!10196 (regex!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) b!3460290))

(assert (= (and b!3458411 (is-Union!10196 (regex!5437 (rule!8027 (h!42579 (t!272530 tokens!494)))))) b!3460291))

(declare-fun b!3460294 () Bool)

(declare-fun e!2143784 () Bool)

(assert (=> b!3460294 (= e!2143784 tp_is_empty!17555)))

(declare-fun b!3460297 () Bool)

(declare-fun tp!1077962 () Bool)

(declare-fun tp!1077961 () Bool)

(assert (=> b!3460297 (= e!2143784 (and tp!1077962 tp!1077961))))

(declare-fun b!3460295 () Bool)

(declare-fun tp!1077959 () Bool)

(declare-fun tp!1077960 () Bool)

(assert (=> b!3460295 (= e!2143784 (and tp!1077959 tp!1077960))))

(assert (=> b!3458420 (= tp!1077837 e!2143784)))

(declare-fun b!3460296 () Bool)

(declare-fun tp!1077958 () Bool)

(assert (=> b!3460296 (= e!2143784 tp!1077958)))

(assert (= (and b!3458420 (is-ElementMatch!10196 (regOne!20905 (regex!5437 (h!42578 rules!2135))))) b!3460294))

(assert (= (and b!3458420 (is-Concat!15863 (regOne!20905 (regex!5437 (h!42578 rules!2135))))) b!3460295))

(assert (= (and b!3458420 (is-Star!10196 (regOne!20905 (regex!5437 (h!42578 rules!2135))))) b!3460296))

(assert (= (and b!3458420 (is-Union!10196 (regOne!20905 (regex!5437 (h!42578 rules!2135))))) b!3460297))

(declare-fun b!3460298 () Bool)

(declare-fun e!2143785 () Bool)

(assert (=> b!3460298 (= e!2143785 tp_is_empty!17555)))

(declare-fun b!3460301 () Bool)

(declare-fun tp!1077967 () Bool)

(declare-fun tp!1077966 () Bool)

(assert (=> b!3460301 (= e!2143785 (and tp!1077967 tp!1077966))))

(declare-fun b!3460299 () Bool)

(declare-fun tp!1077964 () Bool)

(declare-fun tp!1077965 () Bool)

(assert (=> b!3460299 (= e!2143785 (and tp!1077964 tp!1077965))))

(assert (=> b!3458420 (= tp!1077836 e!2143785)))

(declare-fun b!3460300 () Bool)

(declare-fun tp!1077963 () Bool)

(assert (=> b!3460300 (= e!2143785 tp!1077963)))

(assert (= (and b!3458420 (is-ElementMatch!10196 (regTwo!20905 (regex!5437 (h!42578 rules!2135))))) b!3460298))

(assert (= (and b!3458420 (is-Concat!15863 (regTwo!20905 (regex!5437 (h!42578 rules!2135))))) b!3460299))

(assert (= (and b!3458420 (is-Star!10196 (regTwo!20905 (regex!5437 (h!42578 rules!2135))))) b!3460300))

(assert (= (and b!3458420 (is-Union!10196 (regTwo!20905 (regex!5437 (h!42578 rules!2135))))) b!3460301))

(declare-fun b!3460306 () Bool)

(declare-fun e!2143790 () Bool)

(assert (=> b!3460306 (= e!2143790 true)))

(declare-fun b!3460305 () Bool)

(declare-fun e!2143789 () Bool)

(assert (=> b!3460305 (= e!2143789 e!2143790)))

(declare-fun b!3460304 () Bool)

(declare-fun e!2143788 () Bool)

(assert (=> b!3460304 (= e!2143788 e!2143789)))

(assert (=> b!3458371 e!2143788))

(assert (= b!3460305 b!3460306))

(assert (= b!3460304 b!3460305))

(assert (= (and b!3458371 (is-Cons!37158 (t!272529 (t!272529 rules!2135)))) b!3460304))

(assert (=> b!3460306 (< (dynLambda!15645 order!19779 (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135)))))) (dynLambda!15646 order!19781 lambda!121777))))

(assert (=> b!3460306 (< (dynLambda!15647 order!19783 (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135)))))) (dynLambda!15646 order!19781 lambda!121777))))

(declare-fun e!2143792 () Bool)

(declare-fun b!3460307 () Bool)

(declare-fun tp!1077969 () Bool)

(declare-fun tp!1077968 () Bool)

(assert (=> b!3460307 (= e!2143792 (and (inv!50329 (left!28992 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))))) tp!1077968 (inv!50329 (right!29322 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))))) tp!1077969))))

(declare-fun b!3460309 () Bool)

(declare-fun e!2143791 () Bool)

(declare-fun tp!1077970 () Bool)

(assert (=> b!3460309 (= e!2143791 tp!1077970)))

(declare-fun b!3460308 () Bool)

(assert (=> b!3460308 (= e!2143792 (and (inv!50337 (xs!14423 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))))) e!2143791))))

(assert (=> b!3457893 (= tp!1077779 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241)))) e!2143792))))

(assert (= (and b!3457893 (is-Node!11249 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))))) b!3460307))

(assert (= b!3460308 b!3460309))

(assert (= (and b!3457893 (is-Leaf!17579 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (value!175416 separatorToken!241))))) b!3460308))

(declare-fun m!3862951 () Bool)

(assert (=> b!3460307 m!3862951))

(declare-fun m!3862953 () Bool)

(assert (=> b!3460307 m!3862953))

(declare-fun m!3862955 () Bool)

(assert (=> b!3460308 m!3862955))

(assert (=> b!3457893 m!3858507))

(declare-fun b!3460310 () Bool)

(declare-fun e!2143793 () Bool)

(assert (=> b!3460310 (= e!2143793 tp_is_empty!17555)))

(declare-fun b!3460313 () Bool)

(declare-fun tp!1077975 () Bool)

(declare-fun tp!1077974 () Bool)

(assert (=> b!3460313 (= e!2143793 (and tp!1077975 tp!1077974))))

(declare-fun b!3460311 () Bool)

(declare-fun tp!1077972 () Bool)

(declare-fun tp!1077973 () Bool)

(assert (=> b!3460311 (= e!2143793 (and tp!1077972 tp!1077973))))

(assert (=> b!3458414 (= tp!1077829 e!2143793)))

(declare-fun b!3460312 () Bool)

(declare-fun tp!1077971 () Bool)

(assert (=> b!3460312 (= e!2143793 tp!1077971)))

(assert (= (and b!3458414 (is-ElementMatch!10196 (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460310))

(assert (= (and b!3458414 (is-Concat!15863 (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460311))

(assert (= (and b!3458414 (is-Star!10196 (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460312))

(assert (= (and b!3458414 (is-Union!10196 (regOne!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460313))

(declare-fun b!3460314 () Bool)

(declare-fun e!2143794 () Bool)

(assert (=> b!3460314 (= e!2143794 tp_is_empty!17555)))

(declare-fun b!3460317 () Bool)

(declare-fun tp!1077980 () Bool)

(declare-fun tp!1077979 () Bool)

(assert (=> b!3460317 (= e!2143794 (and tp!1077980 tp!1077979))))

(declare-fun b!3460315 () Bool)

(declare-fun tp!1077977 () Bool)

(declare-fun tp!1077978 () Bool)

(assert (=> b!3460315 (= e!2143794 (and tp!1077977 tp!1077978))))

(assert (=> b!3458414 (= tp!1077830 e!2143794)))

(declare-fun b!3460316 () Bool)

(declare-fun tp!1077976 () Bool)

(assert (=> b!3460316 (= e!2143794 tp!1077976)))

(assert (= (and b!3458414 (is-ElementMatch!10196 (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460314))

(assert (= (and b!3458414 (is-Concat!15863 (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460315))

(assert (= (and b!3458414 (is-Star!10196 (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460316))

(assert (= (and b!3458414 (is-Union!10196 (regTwo!20904 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460317))

(declare-fun b!3460325 () Bool)

(declare-fun e!2143799 () Bool)

(declare-fun tp!1077981 () Bool)

(assert (=> b!3460325 (= e!2143799 (and tp_is_empty!17555 tp!1077981))))

(assert (=> b!3458429 (= tp!1077840 e!2143799)))

(assert (= (and b!3458429 (is-Cons!37157 (t!272528 (originalCharacters!6151 separatorToken!241)))) b!3460325))

(declare-fun b!3460326 () Bool)

(declare-fun e!2143800 () Bool)

(assert (=> b!3460326 (= e!2143800 tp_is_empty!17555)))

(declare-fun b!3460329 () Bool)

(declare-fun tp!1077986 () Bool)

(declare-fun tp!1077985 () Bool)

(assert (=> b!3460329 (= e!2143800 (and tp!1077986 tp!1077985))))

(declare-fun b!3460327 () Bool)

(declare-fun tp!1077983 () Bool)

(declare-fun tp!1077984 () Bool)

(assert (=> b!3460327 (= e!2143800 (and tp!1077983 tp!1077984))))

(assert (=> b!3458415 (= tp!1077828 e!2143800)))

(declare-fun b!3460328 () Bool)

(declare-fun tp!1077982 () Bool)

(assert (=> b!3460328 (= e!2143800 tp!1077982)))

(assert (= (and b!3458415 (is-ElementMatch!10196 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460326))

(assert (= (and b!3458415 (is-Concat!15863 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460327))

(assert (= (and b!3458415 (is-Star!10196 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460328))

(assert (= (and b!3458415 (is-Union!10196 (reg!10525 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460329))

(declare-fun b!3460330 () Bool)

(declare-fun e!2143801 () Bool)

(assert (=> b!3460330 (= e!2143801 tp_is_empty!17555)))

(declare-fun b!3460333 () Bool)

(declare-fun tp!1077991 () Bool)

(declare-fun tp!1077990 () Bool)

(assert (=> b!3460333 (= e!2143801 (and tp!1077991 tp!1077990))))

(declare-fun b!3460331 () Bool)

(declare-fun tp!1077988 () Bool)

(declare-fun tp!1077989 () Bool)

(assert (=> b!3460331 (= e!2143801 (and tp!1077988 tp!1077989))))

(assert (=> b!3458396 (= tp!1077809 e!2143801)))

(declare-fun b!3460332 () Bool)

(declare-fun tp!1077987 () Bool)

(assert (=> b!3460332 (= e!2143801 tp!1077987)))

(assert (= (and b!3458396 (is-ElementMatch!10196 (regOne!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460330))

(assert (= (and b!3458396 (is-Concat!15863 (regOne!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460331))

(assert (= (and b!3458396 (is-Star!10196 (regOne!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460332))

(assert (= (and b!3458396 (is-Union!10196 (regOne!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460333))

(declare-fun b!3460334 () Bool)

(declare-fun e!2143802 () Bool)

(assert (=> b!3460334 (= e!2143802 tp_is_empty!17555)))

(declare-fun b!3460337 () Bool)

(declare-fun tp!1077996 () Bool)

(declare-fun tp!1077995 () Bool)

(assert (=> b!3460337 (= e!2143802 (and tp!1077996 tp!1077995))))

(declare-fun b!3460335 () Bool)

(declare-fun tp!1077993 () Bool)

(declare-fun tp!1077994 () Bool)

(assert (=> b!3460335 (= e!2143802 (and tp!1077993 tp!1077994))))

(assert (=> b!3458396 (= tp!1077810 e!2143802)))

(declare-fun b!3460336 () Bool)

(declare-fun tp!1077992 () Bool)

(assert (=> b!3460336 (= e!2143802 tp!1077992)))

(assert (= (and b!3458396 (is-ElementMatch!10196 (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460334))

(assert (= (and b!3458396 (is-Concat!15863 (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460335))

(assert (= (and b!3458396 (is-Star!10196 (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460336))

(assert (= (and b!3458396 (is-Union!10196 (regTwo!20904 (regex!5437 (rule!8027 separatorToken!241))))) b!3460337))

(declare-fun b!3460338 () Bool)

(declare-fun e!2143803 () Bool)

(assert (=> b!3460338 (= e!2143803 tp_is_empty!17555)))

(declare-fun b!3460341 () Bool)

(declare-fun tp!1078001 () Bool)

(declare-fun tp!1078000 () Bool)

(assert (=> b!3460341 (= e!2143803 (and tp!1078001 tp!1078000))))

(declare-fun b!3460339 () Bool)

(declare-fun tp!1077998 () Bool)

(declare-fun tp!1077999 () Bool)

(assert (=> b!3460339 (= e!2143803 (and tp!1077998 tp!1077999))))

(assert (=> b!3458416 (= tp!1077832 e!2143803)))

(declare-fun b!3460340 () Bool)

(declare-fun tp!1077997 () Bool)

(assert (=> b!3460340 (= e!2143803 tp!1077997)))

(assert (= (and b!3458416 (is-ElementMatch!10196 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460338))

(assert (= (and b!3458416 (is-Concat!15863 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460339))

(assert (= (and b!3458416 (is-Star!10196 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460340))

(assert (= (and b!3458416 (is-Union!10196 (regOne!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460341))

(declare-fun b!3460342 () Bool)

(declare-fun e!2143804 () Bool)

(assert (=> b!3460342 (= e!2143804 tp_is_empty!17555)))

(declare-fun b!3460345 () Bool)

(declare-fun tp!1078006 () Bool)

(declare-fun tp!1078005 () Bool)

(assert (=> b!3460345 (= e!2143804 (and tp!1078006 tp!1078005))))

(declare-fun b!3460343 () Bool)

(declare-fun tp!1078003 () Bool)

(declare-fun tp!1078004 () Bool)

(assert (=> b!3460343 (= e!2143804 (and tp!1078003 tp!1078004))))

(assert (=> b!3458416 (= tp!1077831 e!2143804)))

(declare-fun b!3460344 () Bool)

(declare-fun tp!1078002 () Bool)

(assert (=> b!3460344 (= e!2143804 tp!1078002)))

(assert (= (and b!3458416 (is-ElementMatch!10196 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460342))

(assert (= (and b!3458416 (is-Concat!15863 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460343))

(assert (= (and b!3458416 (is-Star!10196 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460344))

(assert (= (and b!3458416 (is-Union!10196 (regTwo!20905 (regex!5437 (rule!8027 (h!42579 tokens!494)))))) b!3460345))

(declare-fun b!3460346 () Bool)

(declare-fun e!2143805 () Bool)

(assert (=> b!3460346 (= e!2143805 tp_is_empty!17555)))

(declare-fun b!3460349 () Bool)

(declare-fun tp!1078011 () Bool)

(declare-fun tp!1078010 () Bool)

(assert (=> b!3460349 (= e!2143805 (and tp!1078011 tp!1078010))))

(declare-fun b!3460347 () Bool)

(declare-fun tp!1078008 () Bool)

(declare-fun tp!1078009 () Bool)

(assert (=> b!3460347 (= e!2143805 (and tp!1078008 tp!1078009))))

(assert (=> b!3458397 (= tp!1077808 e!2143805)))

(declare-fun b!3460348 () Bool)

(declare-fun tp!1078007 () Bool)

(assert (=> b!3460348 (= e!2143805 tp!1078007)))

(assert (= (and b!3458397 (is-ElementMatch!10196 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))))) b!3460346))

(assert (= (and b!3458397 (is-Concat!15863 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))))) b!3460347))

(assert (= (and b!3458397 (is-Star!10196 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))))) b!3460348))

(assert (= (and b!3458397 (is-Union!10196 (reg!10525 (regex!5437 (rule!8027 separatorToken!241))))) b!3460349))

(declare-fun b!3460350 () Bool)

(declare-fun e!2143806 () Bool)

(assert (=> b!3460350 (= e!2143806 tp_is_empty!17555)))

(declare-fun b!3460353 () Bool)

(declare-fun tp!1078016 () Bool)

(declare-fun tp!1078015 () Bool)

(assert (=> b!3460353 (= e!2143806 (and tp!1078016 tp!1078015))))

(declare-fun b!3460351 () Bool)

(declare-fun tp!1078013 () Bool)

(declare-fun tp!1078014 () Bool)

(assert (=> b!3460351 (= e!2143806 (and tp!1078013 tp!1078014))))

(assert (=> b!3458398 (= tp!1077812 e!2143806)))

(declare-fun b!3460352 () Bool)

(declare-fun tp!1078012 () Bool)

(assert (=> b!3460352 (= e!2143806 tp!1078012)))

(assert (= (and b!3458398 (is-ElementMatch!10196 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460350))

(assert (= (and b!3458398 (is-Concat!15863 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460351))

(assert (= (and b!3458398 (is-Star!10196 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460352))

(assert (= (and b!3458398 (is-Union!10196 (regOne!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460353))

(declare-fun b!3460354 () Bool)

(declare-fun e!2143807 () Bool)

(assert (=> b!3460354 (= e!2143807 tp_is_empty!17555)))

(declare-fun b!3460357 () Bool)

(declare-fun tp!1078021 () Bool)

(declare-fun tp!1078020 () Bool)

(assert (=> b!3460357 (= e!2143807 (and tp!1078021 tp!1078020))))

(declare-fun b!3460355 () Bool)

(declare-fun tp!1078018 () Bool)

(declare-fun tp!1078019 () Bool)

(assert (=> b!3460355 (= e!2143807 (and tp!1078018 tp!1078019))))

(assert (=> b!3458398 (= tp!1077811 e!2143807)))

(declare-fun b!3460356 () Bool)

(declare-fun tp!1078017 () Bool)

(assert (=> b!3460356 (= e!2143807 tp!1078017)))

(assert (= (and b!3458398 (is-ElementMatch!10196 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460354))

(assert (= (and b!3458398 (is-Concat!15863 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460355))

(assert (= (and b!3458398 (is-Star!10196 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460356))

(assert (= (and b!3458398 (is-Union!10196 (regTwo!20905 (regex!5437 (rule!8027 separatorToken!241))))) b!3460357))

(declare-fun tp!1078023 () Bool)

(declare-fun b!3460358 () Bool)

(declare-fun e!2143809 () Bool)

(declare-fun tp!1078022 () Bool)

(assert (=> b!3460358 (= e!2143809 (and (inv!50329 (left!28992 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))))) tp!1078022 (inv!50329 (right!29322 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))))) tp!1078023))))

(declare-fun b!3460360 () Bool)

(declare-fun e!2143808 () Bool)

(declare-fun tp!1078024 () Bool)

(assert (=> b!3460360 (= e!2143808 tp!1078024)))

(declare-fun b!3460359 () Bool)

(assert (=> b!3460359 (= e!2143809 (and (inv!50337 (xs!14423 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))))) e!2143808))))

(assert (=> b!3457998 (= tp!1077780 (and (inv!50329 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494))))) e!2143809))))

(assert (= (and b!3457998 (is-Node!11249 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))))) b!3460358))

(assert (= b!3460359 b!3460360))

(assert (= (and b!3457998 (is-Leaf!17579 (c!591766 (dynLambda!15652 (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (value!175416 (h!42579 tokens!494)))))) b!3460359))

(declare-fun m!3862957 () Bool)

(assert (=> b!3460358 m!3862957))

(declare-fun m!3862959 () Bool)

(assert (=> b!3460358 m!3862959))

(declare-fun m!3862961 () Bool)

(assert (=> b!3460359 m!3862961))

(assert (=> b!3457998 m!3858613))

(declare-fun b_lambda!99609 () Bool)

(assert (= b_lambda!99561 (or b!3457654 b_lambda!99609)))

(assert (=> d!994934 d!994626))

(declare-fun b_lambda!99611 () Bool)

(assert (= b_lambda!99579 (or (and b!3458412 b_free!89875 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457644 b_free!89847) (and b!3460233 b_free!89891 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457648 b_free!89851 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3460215 b_free!89887 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) b_lambda!99611)))

(declare-fun b_lambda!99613 () Bool)

(assert (= b_lambda!99599 (or (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))))) (and b!3460233 b_free!89891 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))))) (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))))) (and b!3458412 b_free!89875 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))))) (and b!3460215 b_free!89887) (and b!3457644 b_free!89847 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))))) (and b!3457648 b_free!89851 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))))) b_lambda!99613)))

(declare-fun b_lambda!99615 () Bool)

(assert (= b_lambda!99601 (or b!3457664 b_lambda!99615)))

(assert (=> d!995692 d!994622))

(declare-fun b_lambda!99617 () Bool)

(assert (= b_lambda!99553 (or d!994454 b_lambda!99617)))

(declare-fun bs!560401 () Bool)

(declare-fun d!995830 () Bool)

(assert (= bs!560401 (and d!995830 d!994454)))

(assert (=> bs!560401 (= (dynLambda!15651 lambda!121792 (h!42579 (list!13526 (seqFromList!3927 tokens!494)))) (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 (list!13526 (seqFromList!3927 tokens!494)))))))

(assert (=> bs!560401 m!3859933))

(assert (=> b!3458730 d!995830))

(declare-fun b_lambda!99619 () Bool)

(assert (= b_lambda!99597 (or (and b!3460215 b_free!89887 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3458384 b_free!89871 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3457648 b_free!89851 (= (toChars!7520 (transformation!5437 (rule!8027 separatorToken!241))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3460233 b_free!89891 (= (toChars!7520 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3457644 b_free!89847 (= (toChars!7520 (transformation!5437 (rule!8027 (h!42579 tokens!494)))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3457652 b_free!89855 (= (toChars!7520 (transformation!5437 (h!42578 rules!2135))) (toChars!7520 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))))) (and b!3458412 b_free!89875) b_lambda!99619)))

(declare-fun b_lambda!99621 () Bool)

(assert (= b_lambda!99557 (or b!3457664 b_lambda!99621)))

(assert (=> d!994832 d!994624))

(declare-fun b_lambda!99623 () Bool)

(assert (= b_lambda!99563 (or b!3457654 b_lambda!99623)))

(declare-fun bs!560402 () Bool)

(declare-fun d!995832 () Bool)

(assert (= bs!560402 (and d!995832 b!3457654)))

(assert (=> bs!560402 (= (dynLambda!15651 lambda!121777 (h!42579 tokens!494)) (rulesProduceIndividualToken!2518 thiss!18206 rules!2135 (h!42579 tokens!494)))))

(assert (=> bs!560402 m!3858027))

(assert (=> b!3458949 d!995832))

(declare-fun b_lambda!99625 () Bool)

(assert (= b_lambda!99581 (or (and b!3460215 b_free!89885 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457644 b_free!89845) (and b!3458412 b_free!89873 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3458384 b_free!89869 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3460233 b_free!89889 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457648 b_free!89849 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457652 b_free!89853 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) b_lambda!99625)))

(declare-fun b_lambda!99627 () Bool)

(assert (= b_lambda!99551 (or (and b!3460215 b_free!89885 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457644 b_free!89845) (and b!3458412 b_free!89873 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3458384 b_free!89869 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3460233 b_free!89889 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457648 b_free!89849 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457652 b_free!89853 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) b_lambda!99627)))

(declare-fun b_lambda!99629 () Bool)

(assert (= b_lambda!99587 (or (and b!3460215 b_free!89885 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 (t!272530 tokens!494)))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457644 b_free!89845) (and b!3458412 b_free!89873 (= (toValue!7661 (transformation!5437 (rule!8027 (h!42579 (t!272530 tokens!494))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3458384 b_free!89869 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 rules!2135)))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3460233 b_free!89889 (= (toValue!7661 (transformation!5437 (h!42578 (t!272529 (t!272529 rules!2135))))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457648 b_free!89849 (= (toValue!7661 (transformation!5437 (rule!8027 separatorToken!241))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) (and b!3457652 b_free!89853 (= (toValue!7661 (transformation!5437 (h!42578 rules!2135))) (toValue!7661 (transformation!5437 (rule!8027 (h!42579 tokens!494)))))) b_lambda!99629)))

(declare-fun b_lambda!99631 () Bool)

(assert (= b_lambda!99591 (or b!3457664 b_lambda!99631)))

(assert (=> b!3459701 d!994624))

(push 1)

(assert (not b!3459796))

(assert (not b!3458065))

(assert (not b!3460358))

(assert (not bm!249412))

(assert (not b_lambda!99627))

(assert (not b!3458863))

(assert (not d!994766))

(assert (not b!3458964))

(assert (not b!3458806))

(assert (not b!3460304))

(assert (not b!3459960))

(assert (not d!994836))

(assert (not d!994886))

(assert (not d!994906))

(assert (not b!3459998))

(assert (not b!3459706))

(assert (not b!3460129))

(assert (not b!3459227))

(assert (not b!3459546))

(assert (not b!3458923))

(assert (not b_next!90573))

(assert (not b!3459674))

(assert (not b!3459049))

(assert (not b!3460353))

(assert (not d!995584))

(assert (not d!995604))

(assert (not b!3458943))

(assert (not b!3459661))

(assert (not b!3460307))

(assert (not b_lambda!99567))

(assert (not d!995046))

(assert (not b!3459233))

(assert (not b_lambda!99569))

(assert (not bm!249519))

(assert (not d!995028))

(assert (not d!995032))

(assert (not b_lambda!99605))

(assert (not b!3459827))

(assert (not b!3457998))

(assert (not bs!560401))

(assert (not d!995412))

(assert (not d!995004))

(assert (not b!3459765))

(assert (not b!3460263))

(assert (not b!3460205))

(assert (not b!3458990))

(assert (not b_next!90549))

(assert (not b!3459085))

(assert (not d!995102))

(assert (not b!3460034))

(assert (not b!3460291))

(assert (not b!3460311))

(assert (not b!3460289))

(assert (not b!3458899))

(assert b_and!243369)

(assert (not b!3460281))

(assert (not b!3459665))

(assert (not b!3458849))

(assert (not d!994844))

(assert (not d!995626))

(assert (not b!3458897))

(assert (not d!995666))

(assert (not b!3459078))

(assert (not b!3459222))

(assert (not b!3458739))

(assert (not b!3458903))

(assert (not b!3459826))

(assert (not b!3460130))

(assert (not b!3460032))

(assert (not b!3459637))

(assert (not b!3459053))

(assert (not d!994884))

(assert (not d!995022))

(assert (not b!3460202))

(assert (not b!3459698))

(assert (not d!994778))

(assert (not b!3459911))

(assert (not b!3459790))

(assert (not b!3459232))

(assert (not b!3458939))

(assert (not b!3459972))

(assert (not b!3459035))

(assert (not d!995616))

(assert (not b!3459009))

(assert (not d!995588))

(assert (not b!3460015))

(assert (not bm!249504))

(assert (not b_next!90575))

(assert (not d!995042))

(assert (not b!3460203))

(assert (not b!3460062))

(assert (not b!3459140))

(assert (not b_lambda!99515))

(assert (not d!994912))

(assert (not d!994848))

(assert (not d!995808))

(assert (not bm!249475))

(assert (not b!3459985))

(assert (not b!3460109))

(assert (not b!3458992))

(assert (not d!995420))

(assert (not b!3460344))

(assert (not b!3459825))

(assert (not b!3459690))

(assert (not d!994976))

(assert (not b!3458942))

(assert (not b_lambda!99629))

(assert (not b!3460070))

(assert (not d!994932))

(assert (not b!3460357))

(assert b_and!243371)

(assert (not d!994856))

(assert (not bm!249404))

(assert (not b!3458946))

(assert (not b!3459062))

(assert (not b!3459841))

(assert (not b!3458862))

(assert (not b!3459994))

(assert (not b!3458900))

(assert (not b!3460345))

(assert (not b!3460159))

(assert (not b!3459101))

(assert (not b!3459055))

(assert (not b!3458731))

(assert (not b!3460059))

(assert (not d!994818))

(assert (not d!995640))

(assert (not d!995606))

(assert (not d!994782))

(assert (not b!3459059))

(assert (not d!995650))

(assert (not bm!249512))

(assert (not b!3459122))

(assert b_and!243367)

(assert (not d!995590))

(assert (not b!3460052))

(assert (not b!3460270))

(assert (not b!3460333))

(assert (not b!3458721))

(assert (not b!3459966))

(assert (not d!994910))

(assert (not b!3460285))

(assert (not b!3458977))

(assert (not b!3460038))

(assert (not b!3460232))

(assert (not b!3460335))

(assert (not d!995738))

(assert (not d!995730))

(assert (not b!3458864))

(assert (not b!3459645))

(assert (not b!3457893))

(assert (not b!3459235))

(assert (not b!3459030))

(assert (not d!994814))

(assert (not d!995718))

(assert (not b!3459925))

(assert (not b_lambda!99603))

(assert (not d!994964))

(assert (not b!3458874))

(assert (not b!3460056))

(assert (not b!3460007))

(assert (not b_lambda!99507))

(assert (not d!995460))

(assert (not b!3460308))

(assert (not b!3459946))

(assert (not tb!188529))

(assert (not b!3460340))

(assert (not d!994758))

(assert (not bm!249524))

(assert (not b!3460317))

(assert (not b!3460247))

(assert (not b!3460299))

(assert (not b!3460023))

(assert (not b!3459758))

(assert (not b!3459636))

(assert (not b!3460309))

(assert (not b!3459916))

(assert (not b!3460155))

(assert (not b!3459923))

(assert (not b!3459672))

(assert (not d!994898))

(assert (not d!995594))

(assert (not b!3459027))

(assert (not d!995404))

(assert (not b!3458710))

(assert (not d!995496))

(assert (not b!3460339))

(assert (not b!3460312))

(assert (not b!3459944))

(assert (not b!3460000))

(assert (not b!3459239))

(assert (not b!3458782))

(assert (not bm!249526))

(assert (not b!3459763))

(assert (not d!995614))

(assert (not d!994900))

(assert (not d!995408))

(assert (not d!995414))

(assert (not bm!249523))

(assert (not d!994924))

(assert (not b_next!90553))

(assert (not bm!249518))

(assert b_and!243407)

(assert b_and!243365)

(assert (not bm!249394))

(assert (not d!995560))

(assert (not b!3460180))

(assert (not b!3459218))

(assert (not b!3458836))

(assert (not b!3460337))

(assert (not b!3458719))

(assert (not d!994748))

(assert (not bm!249514))

(assert (not b!3460296))

(assert (not tb!188389))

(assert (not b!3460048))

(assert (not b!3459644))

(assert (not d!995406))

(assert (not d!995568))

(assert (not b_lambda!99509))

(assert (not d!994914))

(assert (not b!3458962))

(assert (not b!3459757))

(assert (not b!3458921))

(assert (not b!3460116))

(assert (not d!995400))

(assert (not b!3460355))

(assert (not b!3458722))

(assert (not b!3458875))

(assert (not b!3459552))

(assert (not b!3459770))

(assert (not b!3459918))

(assert (not b!3458904))

(assert (not d!994930))

(assert (not b!3460157))

(assert (not bm!249428))

(assert (not d!995716))

(assert (not d!994902))

(assert (not d!995036))

(assert (not b!3459287))

(assert (not b_next!90579))

(assert (not bm!249522))

(assert (not d!995572))

(assert (not b!3460295))

(assert (not d!994888))

(assert (not d!995724))

(assert (not b!3460057))

(assert (not b!3459068))

(assert (not d!995010))

(assert (not tb!188519))

(assert (not d!995450))

(assert (not d!994800))

(assert (not b!3459980))

(assert (not d!995706))

(assert (not b!3459999))

(assert (not b_lambda!99589))

(assert (not b!3458938))

(assert (not d!995720))

(assert (not d!995030))

(assert (not b!3458987))

(assert (not b_next!90559))

(assert (not b_next!90591))

(assert (not d!995704))

(assert (not bm!249517))

(assert (not b!3459001))

(assert (not b!3460336))

(assert (not d!995644))

(assert (not bm!249516))

(assert (not tb!188379))

(assert (not b!3460269))

(assert (not b!3458779))

(assert (not bm!249503))

(assert (not b!3459143))

(assert (not bm!249403))

(assert (not b!3459026))

(assert (not b!3460179))

(assert (not b!3460332))

(assert (not b!3458961))

(assert (not b!3459547))

(assert (not b!3459795))

(assert (not b!3460112))

(assert (not b!3458711))

(assert (not b!3459766))

(assert (not b_lambda!99501))

(assert (not d!995744))

(assert (not d!994942))

(assert (not d!995600))

(assert (not d!995570))

(assert (not b!3459020))

(assert (not b!3459663))

(assert (not d!995732))

(assert (not b!3458724))

(assert (not b!3459093))

(assert (not bm!249533))

(assert (not b!3459032))

(assert (not b!3458775))

(assert (not d!994760))

(assert (not bm!249476))

(assert (not d!995620))

(assert (not d!995494))

(assert (not d!995064))

(assert (not b!3459042))

(assert (not b!3458777))

(assert (not b_lambda!99621))

(assert (not d!995624))

(assert (not b!3459995))

(assert (not d!994908))

(assert (not b!3459829))

(assert (not b!3459837))

(assert (not b!3459640))

(assert (not b!3458852))

(assert (not tb!188499))

(assert (not b!3458872))

(assert (not d!995498))

(assert (not d!995780))

(assert (not d!995048))

(assert (not b!3459633))

(assert (not b!3460184))

(assert (not bm!249415))

(assert (not d!994918))

(assert (not b!3460300))

(assert (not b!3460063))

(assert (not d!995608))

(assert (not d!994890))

(assert (not d!995488))

(assert (not b!3458999))

(assert (not bm!249410))

(assert (not d!994854))

(assert (not b!3460271))

(assert b_and!243409)

(assert (not d!995422))

(assert (not d!995302))

(assert (not d!995456))

(assert (not b!3459871))

(assert (not d!995766))

(assert (not b!3458981))

(assert (not b!3459277))

(assert (not b!3460160))

(assert (not d!994986))

(assert (not b!3458927))

(assert (not b!3458738))

(assert (not d!995504))

(assert (not b!3459773))

(assert (not d!994828))

(assert (not d!995646))

(assert (not b!3460030))

(assert (not b_next!90551))

(assert (not d!995502))

(assert (not bm!249521))

(assert (not b!3459058))

(assert (not b!3459654))

(assert (not b!3460212))

(assert (not d!995592))

(assert (not b!3459828))

(assert (not d!995528))

(assert (not d!994974))

(assert (not b!3460055))

(assert (not b!3459153))

(assert (not b!3459118))

(assert (not b!3460214))

(assert (not d!995668))

(assert (not b!3460053))

(assert (not d!995598))

(assert (not b!3460187))

(assert (not b!3459149))

(assert (not d!994954))

(assert (not b_next!90577))

(assert (not b!3459086))

(assert (not b_next!90557))

(assert (not b!3460004))

(assert (not d!995486))

(assert (not b!3458954))

(assert (not d!994796))

(assert (not b!3458736))

(assert (not bm!249507))

(assert (not b!3458951))

(assert (not b!3460117))

(assert (not d!995674))

(assert (not d!994764))

(assert (not b!3460272))

(assert (not b_lambda!99611))

(assert (not b!3460341))

(assert (not d!995430))

(assert (not d!995728))

(assert (not b_lambda!99615))

(assert (not b!3458973))

(assert (not b!3458839))

(assert (not b!3458825))

(assert (not d!995458))

(assert (not b!3459011))

(assert (not d!995492))

(assert (not b!3459958))

(assert (not b!3459774))

(assert (not d!995748))

(assert (not d!994770))

(assert (not b!3459080))

(assert (not b!3458950))

(assert (not b!3459835))

(assert (not b!3460010))

(assert (not b!3458933))

(assert (not b!3459978))

(assert (not b!3459099))

(assert (not b!3460024))

(assert (not b_next!90595))

(assert (not d!995586))

(assert (not b!3459986))

(assert (not b!3460266))

(assert (not b!3460328))

(assert (not b!3459926))

(assert (not b!3458834))

(assert (not d!994872))

(assert (not d!995402))

(assert (not b!3459002))

(assert (not d!995446))

(assert (not d!995596))

(assert (not b!3458798))

(assert (not d!995582))

(assert (not d!994860))

(assert (not d!995764))

(assert (not b!3460267))

(assert (not bs!560402))

(assert b_and!243399)

(assert (not b!3459843))

(assert (not d!994762))

(assert (not d!995784))

(assert (not d!994894))

(assert (not b!3459641))

(assert (not b!3460325))

(assert (not b!3458988))

(assert (not d!994846))

(assert (not b_lambda!99555))

(assert (not b!3460204))

(assert (not d!995410))

(assert (not d!995548))

(assert (not b!3458991))

(assert (not d!995440))

(assert (not b!3459987))

(assert (not b!3460315))

(assert (not b!3460108))

(assert (not d!995778))

(assert (not b!3460161))

(assert (not b!3460035))

(assert (not b!3460349))

(assert (not b!3459018))

(assert (not b!3460283))

(assert (not b!3459759))

(assert (not b!3460154))

(assert (not d!994864))

(assert (not d!995392))

(assert (not b!3458785))

(assert (not d!994776))

(assert (not d!995670))

(assert (not b!3459643))

(assert (not b!3459979))

(assert (not d!995622))

(assert (not b!3459710))

(assert (not b_lambda!99499))

(assert (not b!3460348))

(assert (not b!3460313))

(assert (not b!3458983))

(assert (not d!994792))

(assert (not d!994772))

(assert (not b!3459956))

(assert b_and!243387)

(assert (not d!995754))

(assert (not d!995128))

(assert (not b!3460118))

(assert (not b!3460201))

(assert (not d!995696))

(assert (not b!3460331))

(assert (not b!3460200))

(assert (not b!3459585))

(assert (not d!995314))

(assert (not d!995008))

(assert (not b!3460173))

(assert (not b!3458804))

(assert (not d!995530))

(assert (not tb!188369))

(assert (not b!3460282))

(assert (not b!3459139))

(assert (not b!3458882))

(assert (not d!994978))

(assert (not b!3460351))

(assert (not bm!249470))

(assert (not d!994794))

(assert (not b_lambda!99617))

(assert (not b!3459967))

(assert tp_is_empty!17555)

(assert (not d!995160))

(assert (not tb!188539))

(assert (not d!995130))

(assert (not d!995662))

(assert (not b!3459632))

(assert (not b!3459023))

(assert (not bm!249411))

(assert (not d!995038))

(assert (not bm!249469))

(assert (not d!994926))

(assert (not b!3460072))

(assert (not b!3459194))

(assert (not b_lambda!99513))

(assert (not bm!249477))

(assert (not b!3458936))

(assert b_and!243383)

(assert (not b!3459969))

(assert (not b!3458742))

(assert (not b!3458953))

(assert (not d!995168))

(assert (not bm!249431))

(assert (not b!3458932))

(assert (not b!3459711))

(assert (not b!3458958))

(assert (not b!3459792))

(assert (not b!3459583))

(assert (not bm!249508))

(assert (not b!3458895))

(assert (not b!3460231))

(assert (not d!995434))

(assert (not b!3460028))

(assert (not b!3459022))

(assert (not bm!249432))

(assert (not b!3459141))

(assert (not b!3459934))

(assert (not b!3459914))

(assert (not b!3460127))

(assert (not b!3459286))

(assert (not b!3458848))

(assert (not b!3458979))

(assert (not bm!249535))

(assert (not b!3460003))

(assert (not b!3460022))

(assert (not tb!188359))

(assert (not d!994820))

(assert (not b!3460297))

(assert (not b!3460156))

(assert (not b!3460169))

(assert (not bm!249510))

(assert (not b!3460347))

(assert (not b!3460327))

(assert (not d!995006))

(assert (not b!3460168))

(assert b_and!243401)

(assert (not b!3459697))

(assert (not b!3460073))

(assert (not b_lambda!99565))

(assert (not bm!249509))

(assert (not b!3460248))

(assert (not d!995416))

(assert (not b_lambda!99625))

(assert (not b!3459284))

(assert (not d!995740))

(assert (not b!3458847))

(assert (not b!3459842))

(assert (not b!3459929))

(assert (not b_lambda!99505))

(assert (not b!3458956))

(assert (not d!994990))

(assert (not b!3460136))

(assert (not b!3459028))

(assert (not b!3460069))

(assert (not b!3458745))

(assert (not b!3459652))

(assert (not d!995648))

(assert (not b!3459988))

(assert (not b!3460133))

(assert (not b!3459838))

(assert (not d!994940))

(assert (not b!3460138))

(assert (not b!3458746))

(assert (not b!3459046))

(assert (not bm!249473))

(assert (not b!3459121))

(assert (not bm!249513))

(assert (not b!3459240))

(assert (not d!995634))

(assert (not d!994842))

(assert (not d!995708))

(assert (not d!995040))

(assert (not bm!249530))

(assert (not b!3460166))

(assert (not b!3460359))

(assert (not d!994980))

(assert (not bm!249471))

(assert (not b!3458725))

(assert (not d!994830))

(assert (not d!994882))

(assert (not d!995714))

(assert (not b!3459700))

(assert (not d!995680))

(assert (not b!3460111))

(assert (not b!3459824))

(assert (not b!3459052))

(assert (not d!995564))

(assert (not bm!249414))

(assert (not d!995678))

(assert (not b!3459050))

(assert (not bm!249472))

(assert (not d!995050))

(assert (not d!994972))

(assert (not b!3459675))

(assert (not b!3458800))

(assert (not b!3460051))

(assert (not b!3459709))

(assert (not b!3459708))

(assert (not d!994994))

(assert (not d!995056))

(assert (not b!3458888))

(assert (not b!3459872))

(assert (not b!3459220))

(assert (not d!995642))

(assert (not d!995132))

(assert (not b!3459040))

(assert (not b!3459211))

(assert (not b!3460356))

(assert (not b!3460213))

(assert (not b!3460026))

(assert (not b!3459639))

(assert (not d!994896))

(assert (not d!994850))

(assert (not b!3459702))

(assert (not b!3459932))

(assert (not bm!249478))

(assert (not b!3459021))

(assert (not b!3459991))

(assert (not b!3460360))

(assert (not d!995500))

(assert (not b!3458768))

(assert (not b!3459924))

(assert b_and!243403)

(assert (not bm!249529))

(assert (not b!3458944))

(assert (not d!994870))

(assert (not b!3460107))

(assert (not b!3459102))

(assert (not b!3459957))

(assert (not d!995702))

(assert (not bm!249417))

(assert (not b!3460049))

(assert (not b!3460352))

(assert (not b!3459041))

(assert (not b!3460261))

(assert (not bm!249416))

(assert (not d!994944))

(assert (not b!3458985))

(assert (not b!3459683))

(assert (not b_lambda!99609))

(assert (not b!3459975))

(assert (not tb!188469))

(assert (not b_lambda!99623))

(assert (not b!3460287))

(assert (not b!3459098))

(assert (not b_lambda!99613))

(assert (not b!3458963))

(assert (not b_lambda!99631))

(assert (not bm!249482))

(assert b_and!243405)

(assert b_and!243363)

(assert (not b!3460121))

(assert (not d!995558))

(assert (not b!3458975))

(assert (not b!3459123))

(assert (not b!3459291))

(assert (not d!994992))

(assert (not b!3458799))

(assert (not bm!249405))

(assert (not b!3460008))

(assert (not b!3460178))

(assert (not d!995122))

(assert (not b!3460181))

(assert (not bm!249407))

(assert (not tb!188399))

(assert (not d!995742))

(assert (not d!994784))

(assert (not bm!249534))

(assert (not d!995690))

(assert (not b!3458947))

(assert (not b!3459630))

(assert (not d!995700))

(assert (not d!995014))

(assert (not b_lambda!99511))

(assert (not b!3460198))

(assert (not d!995426))

(assert (not d!994922))

(assert (not b!3458965))

(assert (not d!995550))

(assert (not b!3459043))

(assert (not b!3459968))

(assert (not b_lambda!99559))

(assert (not d!995602))

(assert (not b!3458910))

(assert (not b!3459096))

(assert (not b!3458714))

(assert (not tb!188459))

(assert (not d!994750))

(assert (not d!995628))

(assert (not b!3458737))

(assert (not b!3458924))

(assert (not b!3460265))

(assert (not b!3460027))

(assert (not b!3459912))

(assert (not b!3458840))

(assert (not d!994982))

(assert (not b!3460301))

(assert (not d!995034))

(assert (not d!994852))

(assert (not b!3459910))

(assert (not d!994802))

(assert (not b!3460162))

(assert (not bm!249429))

(assert (not b!3459079))

(assert (not b!3460290))

(assert (not d!995698))

(assert (not b_lambda!99517))

(assert (not d!994928))

(assert (not b_next!90555))

(assert (not d!995158))

(assert (not b!3459769))

(assert (not bm!249413))

(assert (not bm!249468))

(assert (not d!995790))

(assert (not d!994996))

(assert (not b!3458781))

(assert (not d!995002))

(assert (not b!3458861))

(assert (not b!3458832))

(assert (not b!3460286))

(assert (not d!995788))

(assert (not d!994916))

(assert (not d!995726))

(assert (not b!3460316))

(assert (not b_lambda!99503))

(assert (not d!995166))

(assert b_and!243393)

(assert (not b!3460128))

(assert (not b_lambda!99619))

(assert (not bm!249402))

(assert (not b!3459278))

(assert (not b!3459289))

(assert (not b!3460171))

(assert (not d!995636))

(assert (not b!3460120))

(assert (not b!3458989))

(assert (not b_next!90593))

(assert (not b!3459604))

(assert (not b!3460343))

(assert (not b!3459024))

(assert (not d!994780))

(assert (not b!3460329))

(assert (not b!3459961))

(assert (not bm!249474))

(assert (not b!3459642))

(assert (not b!3459676))

(assert (not b!3459913))

(assert (not d!995566))

(assert (not d!995018))

(assert (not d!994880))

(assert (not b!3460025))

(assert (not b_next!90589))

(assert (not d!995676))

(assert (not b!3460262))

(assert (not b!3459761))

(assert (not d!994948))

(assert (not d!995120))

(assert (not d!995664))

(assert (not d!995438))

(assert (not b!3459909))

(assert (not b!3458901))

(assert (not b!3459238))

(assert (not b!3459673))

(assert (not d!994774))

(assert (not b!3459540))

(assert (not b!3459704))

(assert (not b!3459915))

(assert (not tb!188409))

(assert (not b!3459226))

(assert (not d!994858))

(assert (not d!995490))

(assert (not b!3458865))

(check-sat)

(pop 1)

(push 1)

(assert b_and!243369)

(assert (not b_next!90575))

(assert b_and!243371)

(assert b_and!243367)

(assert (not b_next!90579))

(assert (not b_next!90595))

(assert b_and!243399)

(assert b_and!243387)

(assert b_and!243383)

(assert b_and!243401)

(assert b_and!243363)

(assert (not b_next!90555))

(assert (not b_next!90573))

(assert (not b_next!90549))

(assert b_and!243365)

(assert (not b_next!90553))

(assert b_and!243407)

(assert (not b_next!90559))

(assert (not b_next!90591))

(assert b_and!243409)

(assert (not b_next!90551))

(assert (not b_next!90577))

(assert (not b_next!90557))

(assert b_and!243403)

(assert b_and!243405)

(assert b_and!243393)

(assert (not b_next!90589))

(assert (not b_next!90593))

(check-sat)

(pop 1)

