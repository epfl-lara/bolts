; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373352 () Bool)

(assert start!373352)

(declare-fun b!3967658 () Bool)

(declare-fun b_free!109701 () Bool)

(declare-fun b_next!110405 () Bool)

(assert (=> b!3967658 (= b_free!109701 (not b_next!110405))))

(declare-fun tp!1209139 () Bool)

(declare-fun b_and!304891 () Bool)

(assert (=> b!3967658 (= tp!1209139 b_and!304891)))

(declare-fun b_free!109703 () Bool)

(declare-fun b_next!110407 () Bool)

(assert (=> b!3967658 (= b_free!109703 (not b_next!110407))))

(declare-fun tp!1209131 () Bool)

(declare-fun b_and!304893 () Bool)

(assert (=> b!3967658 (= tp!1209131 b_and!304893)))

(declare-fun b!3967683 () Bool)

(declare-fun b_free!109705 () Bool)

(declare-fun b_next!110409 () Bool)

(assert (=> b!3967683 (= b_free!109705 (not b_next!110409))))

(declare-fun tp!1209138 () Bool)

(declare-fun b_and!304895 () Bool)

(assert (=> b!3967683 (= tp!1209138 b_and!304895)))

(declare-fun b_free!109707 () Bool)

(declare-fun b_next!110411 () Bool)

(assert (=> b!3967683 (= b_free!109707 (not b_next!110411))))

(declare-fun tp!1209127 () Bool)

(declare-fun b_and!304897 () Bool)

(assert (=> b!3967683 (= tp!1209127 b_and!304897)))

(declare-fun b!3967656 () Bool)

(declare-fun b_free!109709 () Bool)

(declare-fun b_next!110413 () Bool)

(assert (=> b!3967656 (= b_free!109709 (not b_next!110413))))

(declare-fun tp!1209136 () Bool)

(declare-fun b_and!304899 () Bool)

(assert (=> b!3967656 (= tp!1209136 b_and!304899)))

(declare-fun b_free!109711 () Bool)

(declare-fun b_next!110415 () Bool)

(assert (=> b!3967656 (= b_free!109711 (not b_next!110415))))

(declare-fun tp!1209134 () Bool)

(declare-fun b_and!304901 () Bool)

(assert (=> b!3967656 (= tp!1209134 b_and!304901)))

(declare-fun b!3967644 () Bool)

(declare-datatypes ((Unit!60940 0))(
  ( (Unit!60941) )
))
(declare-fun e!2457340 () Unit!60940)

(declare-fun Unit!60942 () Unit!60940)

(assert (=> b!3967644 (= e!2457340 Unit!60942)))

(declare-datatypes ((C!23272 0))(
  ( (C!23273 (val!13730 Int)) )
))
(declare-datatypes ((List!42409 0))(
  ( (Nil!42285) (Cons!42285 (h!47705 C!23272) (t!330698 List!42409)) )
))
(declare-datatypes ((IArray!25703 0))(
  ( (IArray!25704 (innerList!12909 List!42409)) )
))
(declare-datatypes ((Conc!12849 0))(
  ( (Node!12849 (left!32054 Conc!12849) (right!32384 Conc!12849) (csize!25928 Int) (cheight!13060 Int)) (Leaf!19875 (xs!16155 IArray!25703) (csize!25929 Int)) (Empty!12849) )
))
(declare-datatypes ((BalanceConc!25292 0))(
  ( (BalanceConc!25293 (c!688438 Conc!12849)) )
))
(declare-datatypes ((List!42410 0))(
  ( (Nil!42286) (Cons!42286 (h!47706 (_ BitVec 16)) (t!330699 List!42410)) )
))
(declare-datatypes ((TokenValue!6868 0))(
  ( (FloatLiteralValue!13736 (text!48521 List!42410)) (TokenValueExt!6867 (__x!25953 Int)) (Broken!34340 (value!209791 List!42410)) (Object!6991) (End!6868) (Def!6868) (Underscore!6868) (Match!6868) (Else!6868) (Error!6868) (Case!6868) (If!6868) (Extends!6868) (Abstract!6868) (Class!6868) (Val!6868) (DelimiterValue!13736 (del!6928 List!42410)) (KeywordValue!6874 (value!209792 List!42410)) (CommentValue!13736 (value!209793 List!42410)) (WhitespaceValue!13736 (value!209794 List!42410)) (IndentationValue!6868 (value!209795 List!42410)) (String!48057) (Int32!6868) (Broken!34341 (value!209796 List!42410)) (Boolean!6869) (Unit!60943) (OperatorValue!6871 (op!6928 List!42410)) (IdentifierValue!13736 (value!209797 List!42410)) (IdentifierValue!13737 (value!209798 List!42410)) (WhitespaceValue!13737 (value!209799 List!42410)) (True!13736) (False!13736) (Broken!34342 (value!209800 List!42410)) (Broken!34343 (value!209801 List!42410)) (True!13737) (RightBrace!6868) (RightBracket!6868) (Colon!6868) (Null!6868) (Comma!6868) (LeftBracket!6868) (False!13737) (LeftBrace!6868) (ImaginaryLiteralValue!6868 (text!48522 List!42410)) (StringLiteralValue!20604 (value!209802 List!42410)) (EOFValue!6868 (value!209803 List!42410)) (IdentValue!6868 (value!209804 List!42410)) (DelimiterValue!13737 (value!209805 List!42410)) (DedentValue!6868 (value!209806 List!42410)) (NewLineValue!6868 (value!209807 List!42410)) (IntegerValue!20604 (value!209808 (_ BitVec 32)) (text!48523 List!42410)) (IntegerValue!20605 (value!209809 Int) (text!48524 List!42410)) (Times!6868) (Or!6868) (Equal!6868) (Minus!6868) (Broken!34344 (value!209810 List!42410)) (And!6868) (Div!6868) (LessEqual!6868) (Mod!6868) (Concat!18411) (Not!6868) (Plus!6868) (SpaceValue!6868 (value!209811 List!42410)) (IntegerValue!20606 (value!209812 Int) (text!48525 List!42410)) (StringLiteralValue!20605 (text!48526 List!42410)) (FloatLiteralValue!13737 (text!48527 List!42410)) (BytesLiteralValue!6868 (value!209813 List!42410)) (CommentValue!13737 (value!209814 List!42410)) (StringLiteralValue!20606 (value!209815 List!42410)) (ErrorTokenValue!6868 (msg!6929 List!42410)) )
))
(declare-datatypes ((Regex!11543 0))(
  ( (ElementMatch!11543 (c!688439 C!23272)) (Concat!18412 (regOne!23598 Regex!11543) (regTwo!23598 Regex!11543)) (EmptyExpr!11543) (Star!11543 (reg!11872 Regex!11543)) (EmptyLang!11543) (Union!11543 (regOne!23599 Regex!11543) (regTwo!23599 Regex!11543)) )
))
(declare-datatypes ((String!48058 0))(
  ( (String!48059 (value!209816 String)) )
))
(declare-datatypes ((TokenValueInjection!13164 0))(
  ( (TokenValueInjection!13165 (toValue!9122 Int) (toChars!8981 Int)) )
))
(declare-datatypes ((Rule!13076 0))(
  ( (Rule!13077 (regex!6638 Regex!11543) (tag!7498 String!48058) (isSeparator!6638 Bool) (transformation!6638 TokenValueInjection!13164)) )
))
(declare-datatypes ((Token!12414 0))(
  ( (Token!12415 (value!209817 TokenValue!6868) (rule!9626 Rule!13076) (size!31656 Int) (originalCharacters!7238 List!42409)) )
))
(declare-datatypes ((tuple2!41586 0))(
  ( (tuple2!41587 (_1!23927 Token!12414) (_2!23927 List!42409)) )
))
(declare-fun lt!1389722 () tuple2!41586)

(declare-datatypes ((LexerInterface!6227 0))(
  ( (LexerInterfaceExt!6224 (__x!25954 Int)) (Lexer!6225) )
))
(declare-fun thiss!20629 () LexerInterface!6227)

(declare-datatypes ((List!42411 0))(
  ( (Nil!42287) (Cons!42287 (h!47707 Token!12414) (t!330700 List!42411)) )
))
(declare-datatypes ((tuple2!41588 0))(
  ( (tuple2!41589 (_1!23928 List!42411) (_2!23928 List!42409)) )
))
(declare-fun call!285582 () tuple2!41588)

(declare-datatypes ((List!42412 0))(
  ( (Nil!42288) (Cons!42288 (h!47708 Rule!13076) (t!330701 List!42412)) )
))
(declare-fun rules!2768 () List!42412)

(declare-fun bm!285577 () Bool)

(declare-fun lexList!1995 (LexerInterface!6227 List!42412 List!42409) tuple2!41588)

(assert (=> bm!285577 (= call!285582 (lexList!1995 thiss!20629 rules!2768 (_2!23927 lt!1389722)))))

(declare-fun b!3967645 () Bool)

(declare-fun e!2457318 () Bool)

(declare-fun e!2457325 () Bool)

(assert (=> b!3967645 (= e!2457318 e!2457325)))

(declare-fun res!1606016 () Bool)

(assert (=> b!3967645 (=> res!1606016 e!2457325)))

(declare-fun lt!1389718 () Int)

(declare-fun lt!1389750 () Int)

(assert (=> b!3967645 (= res!1606016 (<= lt!1389718 lt!1389750))))

(declare-fun lt!1389732 () Unit!60940)

(assert (=> b!3967645 (= lt!1389732 e!2457340)))

(declare-fun c!688437 () Bool)

(assert (=> b!3967645 (= c!688437 (= lt!1389718 lt!1389750))))

(declare-fun lt!1389734 () Unit!60940)

(declare-fun e!2457321 () Unit!60940)

(assert (=> b!3967645 (= lt!1389734 e!2457321)))

(declare-fun c!688436 () Bool)

(assert (=> b!3967645 (= c!688436 (< lt!1389718 lt!1389750))))

(declare-fun suffix!1176 () List!42409)

(declare-fun size!31657 (List!42409) Int)

(assert (=> b!3967645 (= lt!1389750 (size!31657 suffix!1176))))

(declare-datatypes ((Option!9058 0))(
  ( (None!9057) (Some!9057 (v!39405 tuple2!41586)) )
))
(declare-fun lt!1389746 () Option!9058)

(assert (=> b!3967645 (= lt!1389718 (size!31657 (_2!23927 (v!39405 lt!1389746))))))

(declare-fun b!3967646 () Bool)

(declare-fun e!2457323 () Unit!60940)

(declare-fun Unit!60944 () Unit!60940)

(assert (=> b!3967646 (= e!2457323 Unit!60944)))

(declare-fun b!3967647 () Bool)

(declare-fun e!2457314 () Unit!60940)

(declare-fun Unit!60945 () Unit!60940)

(assert (=> b!3967647 (= e!2457314 Unit!60945)))

(declare-fun b!3967648 () Bool)

(declare-fun Unit!60946 () Unit!60940)

(assert (=> b!3967648 (= e!2457314 Unit!60946)))

(declare-fun lt!1389719 () Unit!60940)

(declare-fun suffixResult!91 () List!42409)

(declare-fun suffixTokens!72 () List!42411)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!166 (LexerInterface!6227 List!42412 List!42409 List!42409 List!42411 List!42409) Unit!60940)

(assert (=> b!3967648 (= lt!1389719 (lemmaLexWithSmallerInputCannotProduceSameResults!166 thiss!20629 rules!2768 (_2!23927 (v!39405 lt!1389746)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3967648 false))

(declare-fun b!3967649 () Bool)

(declare-fun e!2457330 () Bool)

(declare-fun e!2457339 () Bool)

(assert (=> b!3967649 (= e!2457330 e!2457339)))

(declare-fun res!1606009 () Bool)

(assert (=> b!3967649 (=> res!1606009 e!2457339)))

(declare-fun lt!1389707 () List!42409)

(assert (=> b!3967649 (= res!1606009 (not (= lt!1389707 (_2!23927 (v!39405 lt!1389746)))))))

(assert (=> b!3967649 (= (_2!23927 (v!39405 lt!1389746)) lt!1389707)))

(declare-fun lt!1389745 () List!42409)

(declare-fun lt!1389721 () List!42409)

(declare-fun lt!1389711 () Unit!60940)

(declare-fun lemmaSamePrefixThenSameSuffix!1936 (List!42409 List!42409 List!42409 List!42409 List!42409) Unit!60940)

(assert (=> b!3967649 (= lt!1389711 (lemmaSamePrefixThenSameSuffix!1936 lt!1389745 (_2!23927 (v!39405 lt!1389746)) lt!1389745 lt!1389707 lt!1389721))))

(declare-fun lt!1389733 () List!42409)

(declare-fun isPrefix!3727 (List!42409 List!42409) Bool)

(assert (=> b!3967649 (isPrefix!3727 lt!1389745 lt!1389733)))

(declare-fun lt!1389749 () Unit!60940)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2586 (List!42409 List!42409) Unit!60940)

(assert (=> b!3967649 (= lt!1389749 (lemmaConcatTwoListThenFirstIsPrefix!2586 lt!1389745 lt!1389707))))

(declare-fun res!1606014 () Bool)

(declare-fun e!2457334 () Bool)

(assert (=> start!373352 (=> (not res!1606014) (not e!2457334))))

(get-info :version)

(assert (=> start!373352 (= res!1606014 ((_ is Lexer!6225) thiss!20629))))

(assert (=> start!373352 e!2457334))

(declare-fun e!2457337 () Bool)

(assert (=> start!373352 e!2457337))

(assert (=> start!373352 true))

(declare-fun e!2457336 () Bool)

(assert (=> start!373352 e!2457336))

(declare-fun e!2457348 () Bool)

(assert (=> start!373352 e!2457348))

(declare-fun e!2457335 () Bool)

(assert (=> start!373352 e!2457335))

(declare-fun e!2457329 () Bool)

(assert (=> start!373352 e!2457329))

(declare-fun e!2457328 () Bool)

(assert (=> start!373352 e!2457328))

(declare-fun b!3967650 () Bool)

(declare-fun res!1606018 () Bool)

(assert (=> b!3967650 (=> (not res!1606018) (not e!2457334))))

(declare-fun prefixTokens!80 () List!42411)

(declare-fun isEmpty!25304 (List!42411) Bool)

(assert (=> b!3967650 (= res!1606018 (not (isEmpty!25304 prefixTokens!80)))))

(declare-fun b!3967651 () Bool)

(declare-fun e!2457352 () Bool)

(assert (=> b!3967651 (= e!2457352 false)))

(declare-fun b!3967652 () Bool)

(declare-fun res!1606028 () Bool)

(declare-fun e!2457320 () Bool)

(assert (=> b!3967652 (=> res!1606028 e!2457320)))

(declare-fun lt!1389747 () Int)

(declare-fun lt!1389710 () Int)

(assert (=> b!3967652 (= res!1606028 (<= lt!1389747 lt!1389710))))

(declare-fun b!3967653 () Bool)

(declare-fun tp_is_empty!20057 () Bool)

(declare-fun tp!1209133 () Bool)

(assert (=> b!3967653 (= e!2457328 (and tp_is_empty!20057 tp!1209133))))

(declare-fun b!3967654 () Bool)

(declare-fun e!2457343 () Bool)

(declare-fun e!2457344 () Bool)

(assert (=> b!3967654 (= e!2457343 e!2457344)))

(declare-fun res!1606034 () Bool)

(assert (=> b!3967654 (=> res!1606034 e!2457344)))

(declare-fun lt!1389716 () List!42411)

(declare-fun lt!1389720 () List!42411)

(assert (=> b!3967654 (= res!1606034 (not (= lt!1389716 lt!1389720)))))

(declare-fun lt!1389739 () List!42411)

(declare-fun lt!1389706 () List!42411)

(declare-fun ++!11033 (List!42411 List!42411) List!42411)

(assert (=> b!3967654 (= lt!1389716 (++!11033 lt!1389739 lt!1389706))))

(declare-fun lt!1389741 () List!42411)

(assert (=> b!3967654 (= lt!1389716 (++!11033 (++!11033 lt!1389739 lt!1389741) suffixTokens!72))))

(declare-fun lt!1389705 () Unit!60940)

(declare-fun lemmaConcatAssociativity!2379 (List!42411 List!42411 List!42411) Unit!60940)

(assert (=> b!3967654 (= lt!1389705 (lemmaConcatAssociativity!2379 lt!1389739 lt!1389741 suffixTokens!72))))

(declare-fun lt!1389731 () Unit!60940)

(assert (=> b!3967654 (= lt!1389731 e!2457314)))

(declare-fun c!688434 () Bool)

(assert (=> b!3967654 (= c!688434 (isEmpty!25304 lt!1389741))))

(declare-fun e!2457350 () Bool)

(declare-fun b!3967655 () Bool)

(declare-fun tp!1209125 () Bool)

(declare-fun inv!56519 (Token!12414) Bool)

(assert (=> b!3967655 (= e!2457335 (and (inv!56519 (h!47707 prefixTokens!80)) e!2457350 tp!1209125))))

(declare-fun e!2457326 () Bool)

(assert (=> b!3967656 (= e!2457326 (and tp!1209136 tp!1209134))))

(declare-fun b!3967657 () Bool)

(declare-fun res!1606029 () Bool)

(assert (=> b!3967657 (=> (not res!1606029) (not e!2457334))))

(declare-fun rulesInvariant!5570 (LexerInterface!6227 List!42412) Bool)

(assert (=> b!3967657 (= res!1606029 (rulesInvariant!5570 thiss!20629 rules!2768))))

(declare-fun e!2457349 () Bool)

(assert (=> b!3967658 (= e!2457349 (and tp!1209139 tp!1209131))))

(declare-fun b!3967659 () Bool)

(declare-fun res!1606017 () Bool)

(assert (=> b!3967659 (=> res!1606017 e!2457344)))

(declare-fun lt!1389740 () tuple2!41588)

(assert (=> b!3967659 (= res!1606017 (not (= (lexList!1995 thiss!20629 rules!2768 lt!1389707) lt!1389740)))))

(declare-fun b!3967660 () Bool)

(declare-fun e!2457319 () Bool)

(declare-fun e!2457353 () Bool)

(assert (=> b!3967660 (= e!2457319 e!2457353)))

(declare-fun res!1606027 () Bool)

(assert (=> b!3967660 (=> (not res!1606027) (not e!2457353))))

(assert (=> b!3967660 (= res!1606027 ((_ is Some!9057) lt!1389746))))

(declare-fun maxPrefix!3531 (LexerInterface!6227 List!42412 List!42409) Option!9058)

(assert (=> b!3967660 (= lt!1389746 (maxPrefix!3531 thiss!20629 rules!2768 lt!1389721))))

(declare-fun b!3967661 () Bool)

(declare-fun res!1606022 () Bool)

(assert (=> b!3967661 (=> res!1606022 e!2457320)))

(declare-fun lt!1389737 () List!42409)

(declare-fun prefix!426 () List!42409)

(declare-fun ++!11034 (List!42409 List!42409) List!42409)

(assert (=> b!3967661 (= res!1606022 (not (= lt!1389737 (++!11034 prefix!426 Nil!42285))))))

(declare-fun b!3967662 () Bool)

(declare-fun tp!1209124 () Bool)

(assert (=> b!3967662 (= e!2457337 (and tp_is_empty!20057 tp!1209124))))

(declare-fun b!3967663 () Bool)

(declare-fun c!688433 () Bool)

(declare-fun lt!1389727 () List!42411)

(assert (=> b!3967663 (= c!688433 (isEmpty!25304 lt!1389727))))

(declare-fun tail!6185 (List!42411) List!42411)

(assert (=> b!3967663 (= lt!1389727 (tail!6185 prefixTokens!80))))

(declare-fun e!2457324 () Unit!60940)

(assert (=> b!3967663 (= e!2457323 e!2457324)))

(declare-fun b!3967664 () Bool)

(declare-fun e!2457311 () Bool)

(assert (=> b!3967664 (= e!2457334 e!2457311)))

(declare-fun res!1606015 () Bool)

(assert (=> b!3967664 (=> (not res!1606015) (not e!2457311))))

(declare-fun lt!1389717 () tuple2!41588)

(assert (=> b!3967664 (= res!1606015 (= lt!1389717 (tuple2!41589 lt!1389720 suffixResult!91)))))

(assert (=> b!3967664 (= lt!1389717 (lexList!1995 thiss!20629 rules!2768 lt!1389721))))

(assert (=> b!3967664 (= lt!1389720 (++!11033 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3967664 (= lt!1389721 (++!11034 prefix!426 suffix!1176))))

(declare-fun tp!1209135 () Bool)

(declare-fun e!2457346 () Bool)

(declare-fun b!3967665 () Bool)

(declare-fun inv!56516 (String!48058) Bool)

(declare-fun inv!56520 (TokenValueInjection!13164) Bool)

(assert (=> b!3967665 (= e!2457346 (and tp!1209135 (inv!56516 (tag!7498 (rule!9626 (h!47707 suffixTokens!72)))) (inv!56520 (transformation!6638 (rule!9626 (h!47707 suffixTokens!72)))) e!2457349))))

(declare-fun b!3967666 () Bool)

(declare-fun Unit!60947 () Unit!60940)

(assert (=> b!3967666 (= e!2457324 Unit!60947)))

(declare-fun lt!1389728 () Unit!60940)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!632 (List!42409 List!42409 List!42409 List!42409) Unit!60940)

(assert (=> b!3967666 (= lt!1389728 (lemmaConcatSameAndSameSizesThenSameLists!632 lt!1389745 (_2!23927 (v!39405 lt!1389746)) lt!1389745 (_2!23927 lt!1389722)))))

(assert (=> b!3967666 (= (_2!23927 (v!39405 lt!1389746)) (_2!23927 lt!1389722))))

(declare-fun lt!1389701 () Unit!60940)

(assert (=> b!3967666 (= lt!1389701 (lemmaLexWithSmallerInputCannotProduceSameResults!166 thiss!20629 rules!2768 suffix!1176 (_2!23927 lt!1389722) suffixTokens!72 suffixResult!91))))

(declare-fun res!1606011 () Bool)

(declare-fun lt!1389704 () tuple2!41588)

(assert (=> b!3967666 (= res!1606011 (not (= call!285582 lt!1389704)))))

(assert (=> b!3967666 (=> (not res!1606011) (not e!2457352))))

(assert (=> b!3967666 e!2457352))

(declare-fun b!3967667 () Bool)

(declare-fun e!2457354 () Bool)

(declare-fun e!2457332 () Bool)

(assert (=> b!3967667 (= e!2457354 e!2457332)))

(declare-fun res!1606006 () Bool)

(assert (=> b!3967667 (=> res!1606006 e!2457332)))

(assert (=> b!3967667 (= res!1606006 (not (= lt!1389737 prefix!426)))))

(declare-fun lt!1389751 () List!42409)

(assert (=> b!3967667 (= lt!1389737 (++!11034 lt!1389745 lt!1389751))))

(declare-fun getSuffix!2178 (List!42409 List!42409) List!42409)

(assert (=> b!3967667 (= lt!1389751 (getSuffix!2178 prefix!426 lt!1389745))))

(declare-fun b!3967668 () Bool)

(declare-fun e!2457317 () Bool)

(assert (=> b!3967668 (= e!2457344 e!2457317)))

(declare-fun res!1606012 () Bool)

(assert (=> b!3967668 (=> res!1606012 e!2457317)))

(assert (=> b!3967668 (= res!1606012 (not (= lt!1389746 (Some!9057 (tuple2!41587 (_1!23927 (v!39405 lt!1389746)) (_2!23927 (v!39405 lt!1389746)))))))))

(assert (=> b!3967668 (= (lexList!1995 thiss!20629 rules!2768 lt!1389751) (tuple2!41589 lt!1389741 Nil!42285))))

(declare-fun lt!1389714 () Unit!60940)

(declare-fun lemmaLexThenLexPrefix!621 (LexerInterface!6227 List!42412 List!42409 List!42409 List!42411 List!42411 List!42409) Unit!60940)

(assert (=> b!3967668 (= lt!1389714 (lemmaLexThenLexPrefix!621 thiss!20629 rules!2768 lt!1389751 suffix!1176 lt!1389741 suffixTokens!72 suffixResult!91))))

(declare-fun b!3967669 () Bool)

(declare-fun Unit!60948 () Unit!60940)

(assert (=> b!3967669 (= e!2457321 Unit!60948)))

(declare-fun lt!1389738 () Int)

(assert (=> b!3967669 (= lt!1389738 (size!31657 lt!1389721))))

(declare-fun lt!1389725 () Unit!60940)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1407 (LexerInterface!6227 List!42412 List!42409 List!42409 List!42409 Rule!13076) Unit!60940)

(assert (=> b!3967669 (= lt!1389725 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1407 thiss!20629 rules!2768 lt!1389745 lt!1389721 (_2!23927 (v!39405 lt!1389746)) (rule!9626 (_1!23927 (v!39405 lt!1389746)))))))

(declare-fun lt!1389715 () TokenValue!6868)

(declare-fun maxPrefixOneRule!2581 (LexerInterface!6227 Rule!13076 List!42409) Option!9058)

(assert (=> b!3967669 (= (maxPrefixOneRule!2581 thiss!20629 (rule!9626 (_1!23927 (v!39405 lt!1389746))) lt!1389721) (Some!9057 (tuple2!41587 (Token!12415 lt!1389715 (rule!9626 (_1!23927 (v!39405 lt!1389746))) lt!1389710 lt!1389745) (_2!23927 (v!39405 lt!1389746)))))))

(declare-fun get!13947 (Option!9058) tuple2!41586)

(assert (=> b!3967669 (= lt!1389722 (get!13947 lt!1389746))))

(declare-fun c!688435 () Bool)

(assert (=> b!3967669 (= c!688435 (< (size!31657 (_2!23927 lt!1389722)) lt!1389750))))

(declare-fun lt!1389724 () Unit!60940)

(assert (=> b!3967669 (= lt!1389724 e!2457323)))

(assert (=> b!3967669 false))

(declare-fun b!3967670 () Bool)

(declare-fun res!1606030 () Bool)

(assert (=> b!3967670 (=> res!1606030 e!2457317)))

(declare-fun isEmpty!25305 (List!42409) Bool)

(assert (=> b!3967670 (= res!1606030 (isEmpty!25305 suffix!1176))))

(declare-fun b!3967671 () Bool)

(declare-fun Unit!60949 () Unit!60940)

(assert (=> b!3967671 (= e!2457340 Unit!60949)))

(declare-fun lt!1389703 () Unit!60940)

(assert (=> b!3967671 (= lt!1389703 (lemmaConcatTwoListThenFirstIsPrefix!2586 prefix!426 suffix!1176))))

(assert (=> b!3967671 (isPrefix!3727 prefix!426 lt!1389721)))

(declare-fun lt!1389748 () Unit!60940)

(declare-fun lemmaIsPrefixSameLengthThenSameList!849 (List!42409 List!42409 List!42409) Unit!60940)

(assert (=> b!3967671 (= lt!1389748 (lemmaIsPrefixSameLengthThenSameList!849 lt!1389745 prefix!426 lt!1389721))))

(assert (=> b!3967671 (= lt!1389745 prefix!426)))

(declare-fun lt!1389753 () Unit!60940)

(assert (=> b!3967671 (= lt!1389753 (lemmaSamePrefixThenSameSuffix!1936 lt!1389745 (_2!23927 (v!39405 lt!1389746)) prefix!426 suffix!1176 lt!1389721))))

(assert (=> b!3967671 false))

(declare-fun b!3967672 () Bool)

(declare-fun e!2457347 () Bool)

(assert (=> b!3967672 (= e!2457347 (= (size!31656 (_1!23927 (v!39405 lt!1389746))) (size!31657 (originalCharacters!7238 (_1!23927 (v!39405 lt!1389746))))))))

(declare-fun b!3967673 () Bool)

(assert (=> b!3967673 (= e!2457325 e!2457354)))

(declare-fun res!1606024 () Bool)

(assert (=> b!3967673 (=> res!1606024 e!2457354)))

(assert (=> b!3967673 (= res!1606024 (>= lt!1389710 lt!1389747))))

(assert (=> b!3967673 (= lt!1389747 (size!31657 prefix!426))))

(assert (=> b!3967673 (isPrefix!3727 lt!1389745 prefix!426)))

(declare-fun lt!1389730 () Unit!60940)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!323 (List!42409 List!42409 List!42409) Unit!60940)

(assert (=> b!3967673 (= lt!1389730 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!323 prefix!426 lt!1389745 lt!1389721))))

(assert (=> b!3967673 (isPrefix!3727 prefix!426 lt!1389721)))

(declare-fun lt!1389709 () Unit!60940)

(assert (=> b!3967673 (= lt!1389709 (lemmaConcatTwoListThenFirstIsPrefix!2586 prefix!426 suffix!1176))))

(declare-fun b!3967674 () Bool)

(declare-fun Unit!60950 () Unit!60940)

(assert (=> b!3967674 (= e!2457321 Unit!60950)))

(declare-fun b!3967675 () Bool)

(declare-fun res!1606026 () Bool)

(assert (=> b!3967675 (=> res!1606026 e!2457318)))

(declare-fun lt!1389735 () tuple2!41588)

(assert (=> b!3967675 (= res!1606026 (or (not (= lt!1389735 (tuple2!41589 (_1!23928 lt!1389735) (_2!23928 lt!1389735)))) (= (_2!23927 (v!39405 lt!1389746)) suffix!1176)))))

(declare-fun tp!1209129 () Bool)

(declare-fun b!3967676 () Bool)

(declare-fun e!2457342 () Bool)

(assert (=> b!3967676 (= e!2457342 (and tp!1209129 (inv!56516 (tag!7498 (rule!9626 (h!47707 prefixTokens!80)))) (inv!56520 (transformation!6638 (rule!9626 (h!47707 prefixTokens!80)))) e!2457326))))

(declare-fun b!3967677 () Bool)

(assert (=> b!3967677 (= e!2457311 e!2457319)))

(declare-fun res!1606008 () Bool)

(assert (=> b!3967677 (=> (not res!1606008) (not e!2457319))))

(assert (=> b!3967677 (= res!1606008 (= (lexList!1995 thiss!20629 rules!2768 suffix!1176) lt!1389704))))

(assert (=> b!3967677 (= lt!1389704 (tuple2!41589 suffixTokens!72 suffixResult!91))))

(declare-fun b!3967678 () Bool)

(declare-fun res!1606007 () Bool)

(assert (=> b!3967678 (=> res!1606007 e!2457317)))

(assert (=> b!3967678 (= res!1606007 (not (isPrefix!3727 lt!1389751 (_2!23927 (v!39405 lt!1389746)))))))

(declare-fun b!3967679 () Bool)

(declare-fun Unit!60951 () Unit!60940)

(assert (=> b!3967679 (= e!2457324 Unit!60951)))

(declare-fun lt!1389743 () Unit!60940)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!166 (LexerInterface!6227 List!42412 List!42409 List!42409 List!42411 List!42409 List!42411) Unit!60940)

(assert (=> b!3967679 (= lt!1389743 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!166 thiss!20629 rules!2768 suffix!1176 (_2!23927 lt!1389722) suffixTokens!72 suffixResult!91 lt!1389727))))

(declare-fun res!1606025 () Bool)

(assert (=> b!3967679 (= res!1606025 (not (= call!285582 (tuple2!41589 (++!11033 lt!1389727 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2457345 () Bool)

(assert (=> b!3967679 (=> (not res!1606025) (not e!2457345))))

(assert (=> b!3967679 e!2457345))

(declare-fun b!3967680 () Bool)

(declare-fun e!2457327 () Bool)

(assert (=> b!3967680 (= e!2457332 e!2457327)))

(declare-fun res!1606033 () Bool)

(assert (=> b!3967680 (=> res!1606033 e!2457327)))

(declare-fun lt!1389752 () List!42409)

(declare-fun lt!1389742 () List!42409)

(assert (=> b!3967680 (= res!1606033 (or (not (= lt!1389752 lt!1389721)) (not (= lt!1389752 lt!1389742))))))

(assert (=> b!3967680 (= lt!1389752 (++!11034 lt!1389737 suffix!1176))))

(declare-fun b!3967681 () Bool)

(declare-fun e!2457316 () Bool)

(assert (=> b!3967681 (= e!2457316 e!2457320)))

(declare-fun res!1606023 () Bool)

(assert (=> b!3967681 (=> res!1606023 e!2457320)))

(assert (=> b!3967681 (= res!1606023 (not (isPrefix!3727 Nil!42285 suffix!1176)))))

(assert (=> b!3967681 (isPrefix!3727 Nil!42285 (++!11034 Nil!42285 suffix!1176))))

(declare-fun lt!1389726 () Unit!60940)

(assert (=> b!3967681 (= lt!1389726 (lemmaConcatTwoListThenFirstIsPrefix!2586 Nil!42285 suffix!1176))))

(declare-fun b!3967682 () Bool)

(declare-fun e!2457322 () Bool)

(declare-fun tp!1209140 () Bool)

(assert (=> b!3967682 (= e!2457348 (and e!2457322 tp!1209140))))

(declare-fun e!2457331 () Bool)

(assert (=> b!3967683 (= e!2457331 (and tp!1209138 tp!1209127))))

(declare-fun tp!1209130 () Bool)

(declare-fun e!2457338 () Bool)

(declare-fun b!3967684 () Bool)

(assert (=> b!3967684 (= e!2457329 (and (inv!56519 (h!47707 suffixTokens!72)) e!2457338 tp!1209130))))

(declare-fun b!3967685 () Bool)

(assert (=> b!3967685 (= e!2457317 e!2457316)))

(declare-fun res!1606013 () Bool)

(assert (=> b!3967685 (=> res!1606013 e!2457316)))

(declare-fun lt!1389713 () Int)

(assert (=> b!3967685 (= res!1606013 (<= lt!1389750 lt!1389713))))

(assert (=> b!3967685 (= lt!1389713 (size!31657 Nil!42285))))

(declare-fun tp!1209126 () Bool)

(declare-fun b!3967686 () Bool)

(assert (=> b!3967686 (= e!2457322 (and tp!1209126 (inv!56516 (tag!7498 (h!47708 rules!2768))) (inv!56520 (transformation!6638 (h!47708 rules!2768))) e!2457331))))

(declare-fun b!3967687 () Bool)

(declare-fun e!2457315 () Bool)

(assert (=> b!3967687 (= e!2457315 e!2457318)))

(declare-fun res!1606032 () Bool)

(assert (=> b!3967687 (=> res!1606032 e!2457318)))

(assert (=> b!3967687 (= res!1606032 (not (= lt!1389717 (tuple2!41589 (++!11033 lt!1389739 (_1!23928 lt!1389735)) (_2!23928 lt!1389735)))))))

(assert (=> b!3967687 (= lt!1389739 (Cons!42287 (_1!23927 (v!39405 lt!1389746)) Nil!42287))))

(declare-fun b!3967688 () Bool)

(declare-fun res!1606035 () Bool)

(assert (=> b!3967688 (=> res!1606035 e!2457325)))

(declare-fun head!8453 (List!42411) Token!12414)

(assert (=> b!3967688 (= res!1606035 (not (= (head!8453 prefixTokens!80) (_1!23927 (v!39405 lt!1389746)))))))

(declare-fun b!3967689 () Bool)

(assert (=> b!3967689 (= e!2457353 (not e!2457315))))

(declare-fun res!1606010 () Bool)

(assert (=> b!3967689 (=> res!1606010 e!2457315)))

(assert (=> b!3967689 (= res!1606010 (not (= lt!1389742 lt!1389721)))))

(assert (=> b!3967689 (= lt!1389735 (lexList!1995 thiss!20629 rules!2768 (_2!23927 (v!39405 lt!1389746))))))

(declare-fun lt!1389744 () List!42409)

(assert (=> b!3967689 (and (= (size!31656 (_1!23927 (v!39405 lt!1389746))) lt!1389710) (= (originalCharacters!7238 (_1!23927 (v!39405 lt!1389746))) lt!1389745) (= (tuple2!41587 (_1!23927 (v!39405 lt!1389746)) (_2!23927 (v!39405 lt!1389746))) (tuple2!41587 (Token!12415 lt!1389715 (rule!9626 (_1!23927 (v!39405 lt!1389746))) lt!1389710 lt!1389745) lt!1389744)))))

(assert (=> b!3967689 (= lt!1389710 (size!31657 lt!1389745))))

(assert (=> b!3967689 e!2457347))

(declare-fun res!1606019 () Bool)

(assert (=> b!3967689 (=> (not res!1606019) (not e!2457347))))

(assert (=> b!3967689 (= res!1606019 (= (value!209817 (_1!23927 (v!39405 lt!1389746))) lt!1389715))))

(declare-fun apply!9869 (TokenValueInjection!13164 BalanceConc!25292) TokenValue!6868)

(declare-fun seqFromList!4897 (List!42409) BalanceConc!25292)

(assert (=> b!3967689 (= lt!1389715 (apply!9869 (transformation!6638 (rule!9626 (_1!23927 (v!39405 lt!1389746)))) (seqFromList!4897 lt!1389745)))))

(assert (=> b!3967689 (= (_2!23927 (v!39405 lt!1389746)) lt!1389744)))

(declare-fun lt!1389712 () Unit!60940)

(assert (=> b!3967689 (= lt!1389712 (lemmaSamePrefixThenSameSuffix!1936 lt!1389745 (_2!23927 (v!39405 lt!1389746)) lt!1389745 lt!1389744 lt!1389721))))

(assert (=> b!3967689 (= lt!1389744 (getSuffix!2178 lt!1389721 lt!1389745))))

(assert (=> b!3967689 (isPrefix!3727 lt!1389745 lt!1389742)))

(assert (=> b!3967689 (= lt!1389742 (++!11034 lt!1389745 (_2!23927 (v!39405 lt!1389746))))))

(declare-fun lt!1389729 () Unit!60940)

(assert (=> b!3967689 (= lt!1389729 (lemmaConcatTwoListThenFirstIsPrefix!2586 lt!1389745 (_2!23927 (v!39405 lt!1389746))))))

(declare-fun list!15694 (BalanceConc!25292) List!42409)

(declare-fun charsOf!4456 (Token!12414) BalanceConc!25292)

(assert (=> b!3967689 (= lt!1389745 (list!15694 (charsOf!4456 (_1!23927 (v!39405 lt!1389746)))))))

(declare-fun ruleValid!2580 (LexerInterface!6227 Rule!13076) Bool)

(assert (=> b!3967689 (ruleValid!2580 thiss!20629 (rule!9626 (_1!23927 (v!39405 lt!1389746))))))

(declare-fun lt!1389736 () Unit!60940)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1656 (LexerInterface!6227 Rule!13076 List!42412) Unit!60940)

(assert (=> b!3967689 (= lt!1389736 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1656 thiss!20629 (rule!9626 (_1!23927 (v!39405 lt!1389746))) rules!2768))))

(declare-fun lt!1389723 () Unit!60940)

(declare-fun lemmaCharactersSize!1291 (Token!12414) Unit!60940)

(assert (=> b!3967689 (= lt!1389723 (lemmaCharactersSize!1291 (_1!23927 (v!39405 lt!1389746))))))

(declare-fun b!3967690 () Bool)

(declare-fun tp!1209128 () Bool)

(declare-fun inv!21 (TokenValue!6868) Bool)

(assert (=> b!3967690 (= e!2457338 (and (inv!21 (value!209817 (h!47707 suffixTokens!72))) e!2457346 tp!1209128))))

(declare-fun tp!1209132 () Bool)

(declare-fun b!3967691 () Bool)

(assert (=> b!3967691 (= e!2457350 (and (inv!21 (value!209817 (h!47707 prefixTokens!80))) e!2457342 tp!1209132))))

(declare-fun b!3967692 () Bool)

(declare-fun res!1606036 () Bool)

(assert (=> b!3967692 (=> (not res!1606036) (not e!2457334))))

(assert (=> b!3967692 (= res!1606036 (not (isEmpty!25305 prefix!426)))))

(declare-fun b!3967693 () Bool)

(assert (=> b!3967693 (= e!2457339 e!2457343)))

(declare-fun res!1606031 () Bool)

(assert (=> b!3967693 (=> res!1606031 e!2457343)))

(assert (=> b!3967693 (= res!1606031 (not (= lt!1389735 lt!1389740)))))

(assert (=> b!3967693 (= lt!1389740 (tuple2!41589 lt!1389706 suffixResult!91))))

(assert (=> b!3967693 (= lt!1389706 (++!11033 lt!1389741 suffixTokens!72))))

(assert (=> b!3967693 (= lt!1389741 (tail!6185 prefixTokens!80))))

(assert (=> b!3967693 (isPrefix!3727 lt!1389751 lt!1389707)))

(declare-fun lt!1389702 () Unit!60940)

(assert (=> b!3967693 (= lt!1389702 (lemmaConcatTwoListThenFirstIsPrefix!2586 lt!1389751 suffix!1176))))

(declare-fun b!3967694 () Bool)

(assert (=> b!3967694 (= e!2457345 false)))

(declare-fun b!3967695 () Bool)

(declare-fun res!1606021 () Bool)

(assert (=> b!3967695 (=> (not res!1606021) (not e!2457334))))

(declare-fun isEmpty!25306 (List!42412) Bool)

(assert (=> b!3967695 (= res!1606021 (not (isEmpty!25306 rules!2768)))))

(declare-fun b!3967696 () Bool)

(assert (=> b!3967696 (= e!2457327 e!2457330)))

(declare-fun res!1606020 () Bool)

(assert (=> b!3967696 (=> res!1606020 e!2457330)))

(assert (=> b!3967696 (= res!1606020 (or (not (= lt!1389721 lt!1389752)) (not (= lt!1389721 lt!1389733)) (not (= lt!1389742 lt!1389733))))))

(assert (=> b!3967696 (= lt!1389752 lt!1389733)))

(assert (=> b!3967696 (= lt!1389733 (++!11034 lt!1389745 lt!1389707))))

(assert (=> b!3967696 (= lt!1389707 (++!11034 lt!1389751 suffix!1176))))

(declare-fun lt!1389708 () Unit!60940)

(declare-fun lemmaConcatAssociativity!2380 (List!42409 List!42409 List!42409) Unit!60940)

(assert (=> b!3967696 (= lt!1389708 (lemmaConcatAssociativity!2380 lt!1389745 lt!1389751 suffix!1176))))

(declare-fun b!3967697 () Bool)

(declare-fun tp!1209137 () Bool)

(assert (=> b!3967697 (= e!2457336 (and tp_is_empty!20057 tp!1209137))))

(declare-fun b!3967698 () Bool)

(assert (=> b!3967698 (= e!2457320 (>= lt!1389750 lt!1389713))))

(assert (= (and start!373352 res!1606014) b!3967695))

(assert (= (and b!3967695 res!1606021) b!3967657))

(assert (= (and b!3967657 res!1606029) b!3967650))

(assert (= (and b!3967650 res!1606018) b!3967692))

(assert (= (and b!3967692 res!1606036) b!3967664))

(assert (= (and b!3967664 res!1606015) b!3967677))

(assert (= (and b!3967677 res!1606008) b!3967660))

(assert (= (and b!3967660 res!1606027) b!3967689))

(assert (= (and b!3967689 res!1606019) b!3967672))

(assert (= (and b!3967689 (not res!1606010)) b!3967687))

(assert (= (and b!3967687 (not res!1606032)) b!3967675))

(assert (= (and b!3967675 (not res!1606026)) b!3967645))

(assert (= (and b!3967645 c!688436) b!3967669))

(assert (= (and b!3967645 (not c!688436)) b!3967674))

(assert (= (and b!3967669 c!688435) b!3967663))

(assert (= (and b!3967669 (not c!688435)) b!3967646))

(assert (= (and b!3967663 c!688433) b!3967666))

(assert (= (and b!3967663 (not c!688433)) b!3967679))

(assert (= (and b!3967666 res!1606011) b!3967651))

(assert (= (and b!3967679 res!1606025) b!3967694))

(assert (= (or b!3967666 b!3967679) bm!285577))

(assert (= (and b!3967645 c!688437) b!3967671))

(assert (= (and b!3967645 (not c!688437)) b!3967644))

(assert (= (and b!3967645 (not res!1606016)) b!3967688))

(assert (= (and b!3967688 (not res!1606035)) b!3967673))

(assert (= (and b!3967673 (not res!1606024)) b!3967667))

(assert (= (and b!3967667 (not res!1606006)) b!3967680))

(assert (= (and b!3967680 (not res!1606033)) b!3967696))

(assert (= (and b!3967696 (not res!1606020)) b!3967649))

(assert (= (and b!3967649 (not res!1606009)) b!3967693))

(assert (= (and b!3967693 (not res!1606031)) b!3967654))

(assert (= (and b!3967654 c!688434) b!3967648))

(assert (= (and b!3967654 (not c!688434)) b!3967647))

(assert (= (and b!3967654 (not res!1606034)) b!3967659))

(assert (= (and b!3967659 (not res!1606017)) b!3967668))

(assert (= (and b!3967668 (not res!1606012)) b!3967670))

(assert (= (and b!3967670 (not res!1606030)) b!3967678))

(assert (= (and b!3967678 (not res!1606007)) b!3967685))

(assert (= (and b!3967685 (not res!1606013)) b!3967681))

(assert (= (and b!3967681 (not res!1606023)) b!3967652))

(assert (= (and b!3967652 (not res!1606028)) b!3967661))

(assert (= (and b!3967661 (not res!1606022)) b!3967698))

(assert (= (and start!373352 ((_ is Cons!42285) suffixResult!91)) b!3967662))

(assert (= (and start!373352 ((_ is Cons!42285) suffix!1176)) b!3967697))

(assert (= b!3967686 b!3967683))

(assert (= b!3967682 b!3967686))

(assert (= (and start!373352 ((_ is Cons!42288) rules!2768)) b!3967682))

(assert (= b!3967676 b!3967656))

(assert (= b!3967691 b!3967676))

(assert (= b!3967655 b!3967691))

(assert (= (and start!373352 ((_ is Cons!42287) prefixTokens!80)) b!3967655))

(assert (= b!3967665 b!3967658))

(assert (= b!3967690 b!3967665))

(assert (= b!3967684 b!3967690))

(assert (= (and start!373352 ((_ is Cons!42287) suffixTokens!72)) b!3967684))

(assert (= (and start!373352 ((_ is Cons!42285) prefix!426)) b!3967653))

(declare-fun m!4538193 () Bool)

(assert (=> bm!285577 m!4538193))

(declare-fun m!4538195 () Bool)

(assert (=> b!3967696 m!4538195))

(declare-fun m!4538197 () Bool)

(assert (=> b!3967696 m!4538197))

(declare-fun m!4538199 () Bool)

(assert (=> b!3967696 m!4538199))

(declare-fun m!4538201 () Bool)

(assert (=> b!3967672 m!4538201))

(declare-fun m!4538203 () Bool)

(assert (=> b!3967649 m!4538203))

(declare-fun m!4538205 () Bool)

(assert (=> b!3967649 m!4538205))

(declare-fun m!4538207 () Bool)

(assert (=> b!3967649 m!4538207))

(declare-fun m!4538209 () Bool)

(assert (=> b!3967695 m!4538209))

(declare-fun m!4538211 () Bool)

(assert (=> b!3967666 m!4538211))

(declare-fun m!4538213 () Bool)

(assert (=> b!3967666 m!4538213))

(declare-fun m!4538215 () Bool)

(assert (=> b!3967690 m!4538215))

(declare-fun m!4538217 () Bool)

(assert (=> b!3967680 m!4538217))

(declare-fun m!4538219 () Bool)

(assert (=> b!3967665 m!4538219))

(declare-fun m!4538221 () Bool)

(assert (=> b!3967665 m!4538221))

(declare-fun m!4538223 () Bool)

(assert (=> b!3967688 m!4538223))

(declare-fun m!4538225 () Bool)

(assert (=> b!3967673 m!4538225))

(declare-fun m!4538227 () Bool)

(assert (=> b!3967673 m!4538227))

(declare-fun m!4538229 () Bool)

(assert (=> b!3967673 m!4538229))

(declare-fun m!4538231 () Bool)

(assert (=> b!3967673 m!4538231))

(declare-fun m!4538233 () Bool)

(assert (=> b!3967673 m!4538233))

(declare-fun m!4538235 () Bool)

(assert (=> b!3967669 m!4538235))

(declare-fun m!4538237 () Bool)

(assert (=> b!3967669 m!4538237))

(declare-fun m!4538239 () Bool)

(assert (=> b!3967669 m!4538239))

(declare-fun m!4538241 () Bool)

(assert (=> b!3967669 m!4538241))

(declare-fun m!4538243 () Bool)

(assert (=> b!3967669 m!4538243))

(declare-fun m!4538245 () Bool)

(assert (=> b!3967679 m!4538245))

(declare-fun m!4538247 () Bool)

(assert (=> b!3967679 m!4538247))

(declare-fun m!4538249 () Bool)

(assert (=> b!3967663 m!4538249))

(declare-fun m!4538251 () Bool)

(assert (=> b!3967663 m!4538251))

(declare-fun m!4538253 () Bool)

(assert (=> b!3967678 m!4538253))

(declare-fun m!4538255 () Bool)

(assert (=> b!3967659 m!4538255))

(declare-fun m!4538257 () Bool)

(assert (=> b!3967650 m!4538257))

(declare-fun m!4538259 () Bool)

(assert (=> b!3967661 m!4538259))

(declare-fun m!4538261 () Bool)

(assert (=> b!3967676 m!4538261))

(declare-fun m!4538263 () Bool)

(assert (=> b!3967676 m!4538263))

(assert (=> b!3967671 m!4538227))

(assert (=> b!3967671 m!4538229))

(declare-fun m!4538265 () Bool)

(assert (=> b!3967671 m!4538265))

(declare-fun m!4538267 () Bool)

(assert (=> b!3967671 m!4538267))

(declare-fun m!4538269 () Bool)

(assert (=> b!3967655 m!4538269))

(declare-fun m!4538271 () Bool)

(assert (=> b!3967670 m!4538271))

(declare-fun m!4538273 () Bool)

(assert (=> b!3967664 m!4538273))

(declare-fun m!4538275 () Bool)

(assert (=> b!3967664 m!4538275))

(declare-fun m!4538277 () Bool)

(assert (=> b!3967664 m!4538277))

(declare-fun m!4538279 () Bool)

(assert (=> b!3967668 m!4538279))

(declare-fun m!4538281 () Bool)

(assert (=> b!3967668 m!4538281))

(declare-fun m!4538283 () Bool)

(assert (=> b!3967686 m!4538283))

(declare-fun m!4538285 () Bool)

(assert (=> b!3967686 m!4538285))

(declare-fun m!4538287 () Bool)

(assert (=> b!3967660 m!4538287))

(declare-fun m!4538289 () Bool)

(assert (=> b!3967681 m!4538289))

(declare-fun m!4538291 () Bool)

(assert (=> b!3967681 m!4538291))

(assert (=> b!3967681 m!4538291))

(declare-fun m!4538293 () Bool)

(assert (=> b!3967681 m!4538293))

(declare-fun m!4538295 () Bool)

(assert (=> b!3967681 m!4538295))

(declare-fun m!4538297 () Bool)

(assert (=> b!3967685 m!4538297))

(declare-fun m!4538299 () Bool)

(assert (=> b!3967689 m!4538299))

(declare-fun m!4538301 () Bool)

(assert (=> b!3967689 m!4538301))

(declare-fun m!4538303 () Bool)

(assert (=> b!3967689 m!4538303))

(declare-fun m!4538305 () Bool)

(assert (=> b!3967689 m!4538305))

(declare-fun m!4538307 () Bool)

(assert (=> b!3967689 m!4538307))

(declare-fun m!4538309 () Bool)

(assert (=> b!3967689 m!4538309))

(declare-fun m!4538311 () Bool)

(assert (=> b!3967689 m!4538311))

(declare-fun m!4538313 () Bool)

(assert (=> b!3967689 m!4538313))

(declare-fun m!4538315 () Bool)

(assert (=> b!3967689 m!4538315))

(declare-fun m!4538317 () Bool)

(assert (=> b!3967689 m!4538317))

(declare-fun m!4538319 () Bool)

(assert (=> b!3967689 m!4538319))

(assert (=> b!3967689 m!4538317))

(assert (=> b!3967689 m!4538309))

(declare-fun m!4538321 () Bool)

(assert (=> b!3967689 m!4538321))

(declare-fun m!4538323 () Bool)

(assert (=> b!3967689 m!4538323))

(declare-fun m!4538325 () Bool)

(assert (=> b!3967689 m!4538325))

(declare-fun m!4538327 () Bool)

(assert (=> b!3967654 m!4538327))

(declare-fun m!4538329 () Bool)

(assert (=> b!3967654 m!4538329))

(declare-fun m!4538331 () Bool)

(assert (=> b!3967654 m!4538331))

(declare-fun m!4538333 () Bool)

(assert (=> b!3967654 m!4538333))

(assert (=> b!3967654 m!4538333))

(declare-fun m!4538335 () Bool)

(assert (=> b!3967654 m!4538335))

(declare-fun m!4538337 () Bool)

(assert (=> b!3967648 m!4538337))

(declare-fun m!4538339 () Bool)

(assert (=> b!3967693 m!4538339))

(assert (=> b!3967693 m!4538251))

(declare-fun m!4538341 () Bool)

(assert (=> b!3967693 m!4538341))

(declare-fun m!4538343 () Bool)

(assert (=> b!3967693 m!4538343))

(declare-fun m!4538345 () Bool)

(assert (=> b!3967687 m!4538345))

(declare-fun m!4538347 () Bool)

(assert (=> b!3967691 m!4538347))

(declare-fun m!4538349 () Bool)

(assert (=> b!3967692 m!4538349))

(declare-fun m!4538351 () Bool)

(assert (=> b!3967657 m!4538351))

(declare-fun m!4538353 () Bool)

(assert (=> b!3967667 m!4538353))

(declare-fun m!4538355 () Bool)

(assert (=> b!3967667 m!4538355))

(declare-fun m!4538357 () Bool)

(assert (=> b!3967684 m!4538357))

(declare-fun m!4538359 () Bool)

(assert (=> b!3967645 m!4538359))

(declare-fun m!4538361 () Bool)

(assert (=> b!3967645 m!4538361))

(declare-fun m!4538363 () Bool)

(assert (=> b!3967677 m!4538363))

(check-sat (not b!3967689) (not b!3967669) b_and!304893 (not b!3967688) (not b!3967664) (not b!3967695) (not b!3967650) (not b!3967686) (not b!3967657) (not b!3967696) (not b!3967645) (not b!3967648) (not b_next!110411) (not b!3967687) (not b!3967660) (not b!3967654) tp_is_empty!20057 (not b!3967671) (not b!3967668) (not b!3967649) b_and!304895 (not b!3967670) (not b!3967690) b_and!304891 (not b!3967678) (not b!3967667) (not b!3967653) (not b!3967661) (not b!3967663) (not b_next!110405) (not b_next!110415) (not b!3967665) (not b_next!110407) (not b_next!110409) (not b!3967681) (not b!3967673) (not b!3967691) (not b!3967697) b_and!304901 (not b_next!110413) (not b!3967677) (not b!3967655) b_and!304899 (not bm!285577) (not b!3967682) (not b!3967684) (not b!3967662) (not b!3967685) (not b!3967672) (not b!3967679) (not b!3967676) (not b!3967680) (not b!3967659) (not b!3967666) (not b!3967693) (not b!3967692) b_and!304897)
(check-sat (not b_next!110411) b_and!304895 b_and!304891 b_and!304893 (not b_next!110405) (not b_next!110409) b_and!304901 (not b_next!110413) b_and!304899 b_and!304897 (not b_next!110415) (not b_next!110407))
