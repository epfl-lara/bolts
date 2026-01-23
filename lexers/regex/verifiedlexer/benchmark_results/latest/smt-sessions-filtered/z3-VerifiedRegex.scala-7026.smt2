; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373356 () Bool)

(assert start!373356)

(declare-fun b!3968026 () Bool)

(declare-fun b_free!109725 () Bool)

(declare-fun b_next!110429 () Bool)

(assert (=> b!3968026 (= b_free!109725 (not b_next!110429))))

(declare-fun tp!1209235 () Bool)

(declare-fun b_and!304915 () Bool)

(assert (=> b!3968026 (= tp!1209235 b_and!304915)))

(declare-fun b_free!109727 () Bool)

(declare-fun b_next!110431 () Bool)

(assert (=> b!3968026 (= b_free!109727 (not b_next!110431))))

(declare-fun tp!1209242 () Bool)

(declare-fun b_and!304917 () Bool)

(assert (=> b!3968026 (= tp!1209242 b_and!304917)))

(declare-fun b!3967997 () Bool)

(declare-fun b_free!109729 () Bool)

(declare-fun b_next!110433 () Bool)

(assert (=> b!3967997 (= b_free!109729 (not b_next!110433))))

(declare-fun tp!1209237 () Bool)

(declare-fun b_and!304919 () Bool)

(assert (=> b!3967997 (= tp!1209237 b_and!304919)))

(declare-fun b_free!109731 () Bool)

(declare-fun b_next!110435 () Bool)

(assert (=> b!3967997 (= b_free!109731 (not b_next!110435))))

(declare-fun tp!1209239 () Bool)

(declare-fun b_and!304921 () Bool)

(assert (=> b!3967997 (= tp!1209239 b_and!304921)))

(declare-fun b!3967978 () Bool)

(declare-fun b_free!109733 () Bool)

(declare-fun b_next!110437 () Bool)

(assert (=> b!3967978 (= b_free!109733 (not b_next!110437))))

(declare-fun tp!1209229 () Bool)

(declare-fun b_and!304923 () Bool)

(assert (=> b!3967978 (= tp!1209229 b_and!304923)))

(declare-fun b_free!109735 () Bool)

(declare-fun b_next!110439 () Bool)

(assert (=> b!3967978 (= b_free!109735 (not b_next!110439))))

(declare-fun tp!1209236 () Bool)

(declare-fun b_and!304925 () Bool)

(assert (=> b!3967978 (= tp!1209236 b_and!304925)))

(declare-fun b!3967974 () Bool)

(declare-fun e!2457589 () Bool)

(declare-fun tp_is_empty!20061 () Bool)

(declare-fun tp!1209241 () Bool)

(assert (=> b!3967974 (= e!2457589 (and tp_is_empty!20061 tp!1209241))))

(declare-fun b!3967975 () Bool)

(declare-fun res!1606211 () Bool)

(declare-fun e!2457580 () Bool)

(assert (=> b!3967975 (=> res!1606211 e!2457580)))

(declare-datatypes ((C!23276 0))(
  ( (C!23277 (val!13732 Int)) )
))
(declare-datatypes ((List!42417 0))(
  ( (Nil!42293) (Cons!42293 (h!47713 C!23276) (t!330706 List!42417)) )
))
(declare-fun lt!1390059 () List!42417)

(declare-fun prefix!426 () List!42417)

(declare-fun ++!11037 (List!42417 List!42417) List!42417)

(assert (=> b!3967975 (= res!1606211 (not (= lt!1390059 (++!11037 prefix!426 Nil!42293))))))

(declare-fun lt!1390047 () Int)

(declare-fun lt!1390063 () Int)

(declare-fun lt!1390048 () Int)

(declare-fun b!3967976 () Bool)

(declare-fun lt!1390033 () Int)

(assert (=> b!3967976 (= e!2457580 (or (< lt!1390047 lt!1390063) (>= lt!1390033 lt!1390048)))))

(declare-fun tp!1209226 () Bool)

(declare-fun b!3967977 () Bool)

(declare-datatypes ((List!42418 0))(
  ( (Nil!42294) (Cons!42294 (h!47714 (_ BitVec 16)) (t!330707 List!42418)) )
))
(declare-datatypes ((TokenValue!6870 0))(
  ( (FloatLiteralValue!13740 (text!48535 List!42418)) (TokenValueExt!6869 (__x!25957 Int)) (Broken!34350 (value!209848 List!42418)) (Object!6993) (End!6870) (Def!6870) (Underscore!6870) (Match!6870) (Else!6870) (Error!6870) (Case!6870) (If!6870) (Extends!6870) (Abstract!6870) (Class!6870) (Val!6870) (DelimiterValue!13740 (del!6930 List!42418)) (KeywordValue!6876 (value!209849 List!42418)) (CommentValue!13740 (value!209850 List!42418)) (WhitespaceValue!13740 (value!209851 List!42418)) (IndentationValue!6870 (value!209852 List!42418)) (String!48067) (Int32!6870) (Broken!34351 (value!209853 List!42418)) (Boolean!6871) (Unit!60964) (OperatorValue!6873 (op!6930 List!42418)) (IdentifierValue!13740 (value!209854 List!42418)) (IdentifierValue!13741 (value!209855 List!42418)) (WhitespaceValue!13741 (value!209856 List!42418)) (True!13740) (False!13740) (Broken!34352 (value!209857 List!42418)) (Broken!34353 (value!209858 List!42418)) (True!13741) (RightBrace!6870) (RightBracket!6870) (Colon!6870) (Null!6870) (Comma!6870) (LeftBracket!6870) (False!13741) (LeftBrace!6870) (ImaginaryLiteralValue!6870 (text!48536 List!42418)) (StringLiteralValue!20610 (value!209859 List!42418)) (EOFValue!6870 (value!209860 List!42418)) (IdentValue!6870 (value!209861 List!42418)) (DelimiterValue!13741 (value!209862 List!42418)) (DedentValue!6870 (value!209863 List!42418)) (NewLineValue!6870 (value!209864 List!42418)) (IntegerValue!20610 (value!209865 (_ BitVec 32)) (text!48537 List!42418)) (IntegerValue!20611 (value!209866 Int) (text!48538 List!42418)) (Times!6870) (Or!6870) (Equal!6870) (Minus!6870) (Broken!34354 (value!209867 List!42418)) (And!6870) (Div!6870) (LessEqual!6870) (Mod!6870) (Concat!18415) (Not!6870) (Plus!6870) (SpaceValue!6870 (value!209868 List!42418)) (IntegerValue!20612 (value!209869 Int) (text!48539 List!42418)) (StringLiteralValue!20611 (text!48540 List!42418)) (FloatLiteralValue!13741 (text!48541 List!42418)) (BytesLiteralValue!6870 (value!209870 List!42418)) (CommentValue!13741 (value!209871 List!42418)) (StringLiteralValue!20612 (value!209872 List!42418)) (ErrorTokenValue!6870 (msg!6931 List!42418)) )
))
(declare-datatypes ((Regex!11545 0))(
  ( (ElementMatch!11545 (c!688474 C!23276)) (Concat!18416 (regOne!23602 Regex!11545) (regTwo!23602 Regex!11545)) (EmptyExpr!11545) (Star!11545 (reg!11874 Regex!11545)) (EmptyLang!11545) (Union!11545 (regOne!23603 Regex!11545) (regTwo!23603 Regex!11545)) )
))
(declare-datatypes ((String!48068 0))(
  ( (String!48069 (value!209873 String)) )
))
(declare-datatypes ((IArray!25707 0))(
  ( (IArray!25708 (innerList!12911 List!42417)) )
))
(declare-datatypes ((Conc!12851 0))(
  ( (Node!12851 (left!32057 Conc!12851) (right!32387 Conc!12851) (csize!25932 Int) (cheight!13062 Int)) (Leaf!19878 (xs!16157 IArray!25707) (csize!25933 Int)) (Empty!12851) )
))
(declare-datatypes ((BalanceConc!25296 0))(
  ( (BalanceConc!25297 (c!688475 Conc!12851)) )
))
(declare-datatypes ((TokenValueInjection!13168 0))(
  ( (TokenValueInjection!13169 (toValue!9124 Int) (toChars!8983 Int)) )
))
(declare-datatypes ((Rule!13080 0))(
  ( (Rule!13081 (regex!6640 Regex!11545) (tag!7500 String!48068) (isSeparator!6640 Bool) (transformation!6640 TokenValueInjection!13168)) )
))
(declare-datatypes ((Token!12418 0))(
  ( (Token!12419 (value!209874 TokenValue!6870) (rule!9628 Rule!13080) (size!31660 Int) (originalCharacters!7240 List!42417)) )
))
(declare-datatypes ((List!42419 0))(
  ( (Nil!42295) (Cons!42295 (h!47715 Token!12418) (t!330708 List!42419)) )
))
(declare-fun suffixTokens!72 () List!42419)

(declare-fun e!2457612 () Bool)

(declare-fun e!2457583 () Bool)

(declare-fun inv!56523 (String!48068) Bool)

(declare-fun inv!56526 (TokenValueInjection!13168) Bool)

(assert (=> b!3967977 (= e!2457583 (and tp!1209226 (inv!56523 (tag!7500 (rule!9628 (h!47715 suffixTokens!72)))) (inv!56526 (transformation!6640 (rule!9628 (h!47715 suffixTokens!72)))) e!2457612))))

(declare-fun e!2457611 () Bool)

(assert (=> b!3967978 (= e!2457611 (and tp!1209229 tp!1209236))))

(declare-fun b!3967979 () Bool)

(declare-fun e!2457597 () Bool)

(declare-fun e!2457593 () Bool)

(declare-fun tp!1209234 () Bool)

(assert (=> b!3967979 (= e!2457597 (and e!2457593 tp!1209234))))

(declare-fun b!3967980 () Bool)

(declare-datatypes ((Unit!60965 0))(
  ( (Unit!60966) )
))
(declare-fun e!2457601 () Unit!60965)

(declare-fun Unit!60967 () Unit!60965)

(assert (=> b!3967980 (= e!2457601 Unit!60967)))

(declare-datatypes ((tuple2!41594 0))(
  ( (tuple2!41595 (_1!23931 Token!12418) (_2!23931 List!42417)) )
))
(declare-fun lt!1390061 () tuple2!41594)

(declare-fun suffixResult!91 () List!42417)

(declare-datatypes ((LexerInterface!6229 0))(
  ( (LexerInterfaceExt!6226 (__x!25958 Int)) (Lexer!6227) )
))
(declare-fun thiss!20629 () LexerInterface!6229)

(declare-datatypes ((List!42420 0))(
  ( (Nil!42296) (Cons!42296 (h!47716 Rule!13080) (t!330709 List!42420)) )
))
(declare-fun rules!2768 () List!42420)

(declare-fun lt!1390065 () Unit!60965)

(declare-fun suffix!1176 () List!42417)

(declare-fun lt!1390050 () List!42419)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!168 (LexerInterface!6229 List!42420 List!42417 List!42417 List!42419 List!42417 List!42419) Unit!60965)

(assert (=> b!3967980 (= lt!1390065 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!168 thiss!20629 rules!2768 suffix!1176 (_2!23931 lt!1390061) suffixTokens!72 suffixResult!91 lt!1390050))))

(declare-datatypes ((tuple2!41596 0))(
  ( (tuple2!41597 (_1!23932 List!42419) (_2!23932 List!42417)) )
))
(declare-fun call!285588 () tuple2!41596)

(declare-fun res!1606213 () Bool)

(declare-fun ++!11038 (List!42419 List!42419) List!42419)

(assert (=> b!3967980 (= res!1606213 (not (= call!285588 (tuple2!41597 (++!11038 lt!1390050 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2457618 () Bool)

(assert (=> b!3967980 (=> (not res!1606213) (not e!2457618))))

(assert (=> b!3967980 e!2457618))

(declare-fun b!3967981 () Bool)

(declare-fun e!2457617 () Unit!60965)

(declare-fun Unit!60968 () Unit!60965)

(assert (=> b!3967981 (= e!2457617 Unit!60968)))

(declare-fun lt!1390049 () Int)

(declare-fun lt!1390019 () List!42417)

(declare-fun size!31661 (List!42417) Int)

(assert (=> b!3967981 (= lt!1390049 (size!31661 lt!1390019))))

(declare-fun lt!1390036 () Unit!60965)

(declare-fun lt!1390022 () List!42417)

(declare-datatypes ((Option!9060 0))(
  ( (None!9059) (Some!9059 (v!39407 tuple2!41594)) )
))
(declare-fun lt!1390031 () Option!9060)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1409 (LexerInterface!6229 List!42420 List!42417 List!42417 List!42417 Rule!13080) Unit!60965)

(assert (=> b!3967981 (= lt!1390036 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1409 thiss!20629 rules!2768 lt!1390022 lt!1390019 (_2!23931 (v!39407 lt!1390031)) (rule!9628 (_1!23931 (v!39407 lt!1390031)))))))

(declare-fun lt!1390067 () TokenValue!6870)

(declare-fun maxPrefixOneRule!2583 (LexerInterface!6229 Rule!13080 List!42417) Option!9060)

(assert (=> b!3967981 (= (maxPrefixOneRule!2583 thiss!20629 (rule!9628 (_1!23931 (v!39407 lt!1390031))) lt!1390019) (Some!9059 (tuple2!41595 (Token!12419 lt!1390067 (rule!9628 (_1!23931 (v!39407 lt!1390031))) lt!1390048 lt!1390022) (_2!23931 (v!39407 lt!1390031)))))))

(declare-fun get!13950 (Option!9060) tuple2!41594)

(assert (=> b!3967981 (= lt!1390061 (get!13950 lt!1390031))))

(declare-fun c!688469 () Bool)

(assert (=> b!3967981 (= c!688469 (< (size!31661 (_2!23931 lt!1390061)) lt!1390047))))

(declare-fun lt!1390024 () Unit!60965)

(declare-fun e!2457602 () Unit!60965)

(assert (=> b!3967981 (= lt!1390024 e!2457602)))

(assert (=> b!3967981 false))

(declare-fun b!3967982 () Bool)

(declare-fun Unit!60969 () Unit!60965)

(assert (=> b!3967982 (= e!2457617 Unit!60969)))

(declare-fun b!3967983 () Bool)

(declare-fun res!1606202 () Bool)

(declare-fun e!2457604 () Bool)

(assert (=> b!3967983 (=> res!1606202 e!2457604)))

(declare-fun isEmpty!25310 (List!42417) Bool)

(assert (=> b!3967983 (= res!1606202 (isEmpty!25310 suffix!1176))))

(declare-fun b!3967984 () Bool)

(declare-fun e!2457588 () Bool)

(declare-fun e!2457608 () Bool)

(assert (=> b!3967984 (= e!2457588 e!2457608)))

(declare-fun res!1606207 () Bool)

(assert (=> b!3967984 (=> res!1606207 e!2457608)))

(declare-fun lt!1390025 () List!42419)

(declare-fun lt!1390058 () List!42419)

(assert (=> b!3967984 (= res!1606207 (not (= lt!1390025 lt!1390058)))))

(declare-fun lt!1390046 () List!42419)

(declare-fun lt!1390032 () List!42419)

(assert (=> b!3967984 (= lt!1390025 (++!11038 lt!1390046 lt!1390032))))

(declare-fun lt!1390057 () List!42419)

(assert (=> b!3967984 (= lt!1390025 (++!11038 (++!11038 lt!1390046 lt!1390057) suffixTokens!72))))

(declare-fun lt!1390054 () Unit!60965)

(declare-fun lemmaConcatAssociativity!2383 (List!42419 List!42419 List!42419) Unit!60965)

(assert (=> b!3967984 (= lt!1390054 (lemmaConcatAssociativity!2383 lt!1390046 lt!1390057 suffixTokens!72))))

(declare-fun lt!1390043 () Unit!60965)

(declare-fun e!2457576 () Unit!60965)

(assert (=> b!3967984 (= lt!1390043 e!2457576)))

(declare-fun c!688471 () Bool)

(declare-fun isEmpty!25311 (List!42419) Bool)

(assert (=> b!3967984 (= c!688471 (isEmpty!25311 lt!1390057))))

(declare-fun res!1606194 () Bool)

(declare-fun e!2457581 () Bool)

(assert (=> start!373356 (=> (not res!1606194) (not e!2457581))))

(get-info :version)

(assert (=> start!373356 (= res!1606194 ((_ is Lexer!6227) thiss!20629))))

(assert (=> start!373356 e!2457581))

(assert (=> start!373356 e!2457589))

(assert (=> start!373356 true))

(declare-fun e!2457579 () Bool)

(assert (=> start!373356 e!2457579))

(assert (=> start!373356 e!2457597))

(declare-fun e!2457584 () Bool)

(assert (=> start!373356 e!2457584))

(declare-fun e!2457586 () Bool)

(assert (=> start!373356 e!2457586))

(declare-fun e!2457605 () Bool)

(assert (=> start!373356 e!2457605))

(declare-fun b!3967985 () Bool)

(declare-fun prefixTokens!80 () List!42419)

(declare-fun e!2457607 () Bool)

(declare-fun tp!1209238 () Bool)

(declare-fun inv!56527 (Token!12418) Bool)

(assert (=> b!3967985 (= e!2457584 (and (inv!56527 (h!47715 prefixTokens!80)) e!2457607 tp!1209238))))

(declare-fun e!2457596 () Bool)

(declare-fun b!3967986 () Bool)

(declare-fun tp!1209240 () Bool)

(declare-fun e!2457615 () Bool)

(assert (=> b!3967986 (= e!2457596 (and tp!1209240 (inv!56523 (tag!7500 (rule!9628 (h!47715 prefixTokens!80)))) (inv!56526 (transformation!6640 (rule!9628 (h!47715 prefixTokens!80)))) e!2457615))))

(declare-fun b!3967987 () Bool)

(declare-fun tp!1209231 () Bool)

(assert (=> b!3967987 (= e!2457579 (and tp_is_empty!20061 tp!1209231))))

(declare-fun b!3967988 () Bool)

(declare-fun Unit!60970 () Unit!60965)

(assert (=> b!3967988 (= e!2457576 Unit!60970)))

(declare-fun b!3967989 () Bool)

(declare-fun e!2457613 () Bool)

(assert (=> b!3967989 (= e!2457613 false)))

(declare-fun b!3967990 () Bool)

(declare-fun e!2457600 () Bool)

(declare-fun e!2457585 () Bool)

(assert (=> b!3967990 (= e!2457600 e!2457585)))

(declare-fun res!1606196 () Bool)

(assert (=> b!3967990 (=> (not res!1606196) (not e!2457585))))

(declare-fun lt!1390045 () tuple2!41596)

(declare-fun lexList!1997 (LexerInterface!6229 List!42420 List!42417) tuple2!41596)

(assert (=> b!3967990 (= res!1606196 (= (lexList!1997 thiss!20629 rules!2768 suffix!1176) lt!1390045))))

(assert (=> b!3967990 (= lt!1390045 (tuple2!41597 suffixTokens!72 suffixResult!91))))

(declare-fun b!3967991 () Bool)

(declare-fun e!2457599 () Bool)

(declare-fun e!2457609 () Bool)

(assert (=> b!3967991 (= e!2457599 e!2457609)))

(declare-fun res!1606200 () Bool)

(assert (=> b!3967991 (=> res!1606200 e!2457609)))

(declare-fun lt!1390037 () List!42417)

(declare-fun lt!1390055 () List!42417)

(declare-fun lt!1390034 () List!42417)

(assert (=> b!3967991 (= res!1606200 (or (not (= lt!1390019 lt!1390055)) (not (= lt!1390019 lt!1390034)) (not (= lt!1390037 lt!1390034))))))

(assert (=> b!3967991 (= lt!1390055 lt!1390034)))

(declare-fun lt!1390062 () List!42417)

(assert (=> b!3967991 (= lt!1390034 (++!11037 lt!1390022 lt!1390062))))

(declare-fun lt!1390060 () List!42417)

(assert (=> b!3967991 (= lt!1390062 (++!11037 lt!1390060 suffix!1176))))

(declare-fun lt!1390064 () Unit!60965)

(declare-fun lemmaConcatAssociativity!2384 (List!42417 List!42417 List!42417) Unit!60965)

(assert (=> b!3967991 (= lt!1390064 (lemmaConcatAssociativity!2384 lt!1390022 lt!1390060 suffix!1176))))

(declare-fun b!3967992 () Bool)

(declare-fun res!1606212 () Bool)

(assert (=> b!3967992 (=> res!1606212 e!2457608)))

(declare-fun lt!1390020 () tuple2!41596)

(assert (=> b!3967992 (= res!1606212 (not (= (lexList!1997 thiss!20629 rules!2768 lt!1390062) lt!1390020)))))

(declare-fun b!3967993 () Bool)

(declare-fun tp!1209228 () Bool)

(assert (=> b!3967993 (= e!2457605 (and tp_is_empty!20061 tp!1209228))))

(declare-fun b!3967994 () Bool)

(declare-fun tp!1209232 () Bool)

(declare-fun e!2457591 () Bool)

(assert (=> b!3967994 (= e!2457586 (and (inv!56527 (h!47715 suffixTokens!72)) e!2457591 tp!1209232))))

(declare-fun b!3967995 () Bool)

(declare-fun res!1606218 () Bool)

(assert (=> b!3967995 (=> res!1606218 e!2457604)))

(declare-fun isPrefix!3729 (List!42417 List!42417) Bool)

(assert (=> b!3967995 (= res!1606218 (not (isPrefix!3729 lt!1390060 (_2!23931 (v!39407 lt!1390031)))))))

(declare-fun b!3967996 () Bool)

(declare-fun Unit!60971 () Unit!60965)

(assert (=> b!3967996 (= e!2457602 Unit!60971)))

(assert (=> b!3967997 (= e!2457612 (and tp!1209237 tp!1209239))))

(declare-fun b!3967998 () Bool)

(declare-fun res!1606217 () Bool)

(assert (=> b!3967998 (=> (not res!1606217) (not e!2457581))))

(assert (=> b!3967998 (= res!1606217 (not (isEmpty!25310 prefix!426)))))

(declare-fun b!3967999 () Bool)

(declare-fun e!2457577 () Bool)

(declare-fun e!2457575 () Bool)

(assert (=> b!3967999 (= e!2457577 e!2457575)))

(declare-fun res!1606197 () Bool)

(assert (=> b!3967999 (=> res!1606197 e!2457575)))

(declare-fun lt!1390038 () tuple2!41596)

(declare-fun lt!1390070 () tuple2!41596)

(assert (=> b!3967999 (= res!1606197 (not (= lt!1390070 (tuple2!41597 (++!11038 lt!1390046 (_1!23932 lt!1390038)) (_2!23932 lt!1390038)))))))

(assert (=> b!3967999 (= lt!1390046 (Cons!42295 (_1!23931 (v!39407 lt!1390031)) Nil!42295))))

(declare-fun b!3968000 () Bool)

(declare-fun e!2457606 () Bool)

(assert (=> b!3968000 (= e!2457606 e!2457588)))

(declare-fun res!1606216 () Bool)

(assert (=> b!3968000 (=> res!1606216 e!2457588)))

(assert (=> b!3968000 (= res!1606216 (not (= lt!1390038 lt!1390020)))))

(assert (=> b!3968000 (= lt!1390020 (tuple2!41597 lt!1390032 suffixResult!91))))

(assert (=> b!3968000 (= lt!1390032 (++!11038 lt!1390057 suffixTokens!72))))

(declare-fun tail!6187 (List!42419) List!42419)

(assert (=> b!3968000 (= lt!1390057 (tail!6187 prefixTokens!80))))

(assert (=> b!3968000 (isPrefix!3729 lt!1390060 lt!1390062)))

(declare-fun lt!1390042 () Unit!60965)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2588 (List!42417 List!42417) Unit!60965)

(assert (=> b!3968000 (= lt!1390042 (lemmaConcatTwoListThenFirstIsPrefix!2588 lt!1390060 suffix!1176))))

(declare-fun b!3968001 () Bool)

(declare-fun e!2457616 () Bool)

(assert (=> b!3968001 (= e!2457575 e!2457616)))

(declare-fun res!1606219 () Bool)

(assert (=> b!3968001 (=> res!1606219 e!2457616)))

(declare-fun lt!1390026 () Int)

(assert (=> b!3968001 (= res!1606219 (<= lt!1390026 lt!1390047))))

(declare-fun lt!1390028 () Unit!60965)

(declare-fun e!2457592 () Unit!60965)

(assert (=> b!3968001 (= lt!1390028 e!2457592)))

(declare-fun c!688472 () Bool)

(assert (=> b!3968001 (= c!688472 (= lt!1390026 lt!1390047))))

(declare-fun lt!1390069 () Unit!60965)

(assert (=> b!3968001 (= lt!1390069 e!2457617)))

(declare-fun c!688470 () Bool)

(assert (=> b!3968001 (= c!688470 (< lt!1390026 lt!1390047))))

(assert (=> b!3968001 (= lt!1390047 (size!31661 suffix!1176))))

(assert (=> b!3968001 (= lt!1390026 (size!31661 (_2!23931 (v!39407 lt!1390031))))))

(declare-fun b!3968002 () Bool)

(declare-fun e!2457578 () Bool)

(declare-fun e!2457582 () Bool)

(assert (=> b!3968002 (= e!2457578 e!2457582)))

(declare-fun res!1606203 () Bool)

(assert (=> b!3968002 (=> res!1606203 e!2457582)))

(assert (=> b!3968002 (= res!1606203 (not (= lt!1390059 prefix!426)))))

(assert (=> b!3968002 (= lt!1390059 (++!11037 lt!1390022 lt!1390060))))

(declare-fun getSuffix!2180 (List!42417 List!42417) List!42417)

(assert (=> b!3968002 (= lt!1390060 (getSuffix!2180 prefix!426 lt!1390022))))

(declare-fun b!3968003 () Bool)

(assert (=> b!3968003 (= e!2457608 e!2457604)))

(declare-fun res!1606195 () Bool)

(assert (=> b!3968003 (=> res!1606195 e!2457604)))

(assert (=> b!3968003 (= res!1606195 (not (= lt!1390031 (Some!9059 (tuple2!41595 (_1!23931 (v!39407 lt!1390031)) (_2!23931 (v!39407 lt!1390031)))))))))

(assert (=> b!3968003 (= (lexList!1997 thiss!20629 rules!2768 lt!1390060) (tuple2!41597 lt!1390057 Nil!42293))))

(declare-fun lt!1390021 () Unit!60965)

(declare-fun lemmaLexThenLexPrefix!623 (LexerInterface!6229 List!42420 List!42417 List!42417 List!42419 List!42419 List!42417) Unit!60965)

(assert (=> b!3968003 (= lt!1390021 (lemmaLexThenLexPrefix!623 thiss!20629 rules!2768 lt!1390060 suffix!1176 lt!1390057 suffixTokens!72 suffixResult!91))))

(declare-fun b!3968004 () Bool)

(assert (=> b!3968004 (= e!2457618 false)))

(declare-fun b!3968005 () Bool)

(declare-fun e!2457595 () Bool)

(assert (=> b!3968005 (= e!2457595 (= (size!31660 (_1!23931 (v!39407 lt!1390031))) (size!31661 (originalCharacters!7240 (_1!23931 (v!39407 lt!1390031))))))))

(declare-fun b!3968006 () Bool)

(declare-fun Unit!60972 () Unit!60965)

(assert (=> b!3968006 (= e!2457592 Unit!60972)))

(declare-fun b!3968007 () Bool)

(declare-fun Unit!60973 () Unit!60965)

(assert (=> b!3968007 (= e!2457592 Unit!60973)))

(declare-fun lt!1390066 () Unit!60965)

(assert (=> b!3968007 (= lt!1390066 (lemmaConcatTwoListThenFirstIsPrefix!2588 prefix!426 suffix!1176))))

(assert (=> b!3968007 (isPrefix!3729 prefix!426 lt!1390019)))

(declare-fun lt!1390041 () Unit!60965)

(declare-fun lemmaIsPrefixSameLengthThenSameList!851 (List!42417 List!42417 List!42417) Unit!60965)

(assert (=> b!3968007 (= lt!1390041 (lemmaIsPrefixSameLengthThenSameList!851 lt!1390022 prefix!426 lt!1390019))))

(assert (=> b!3968007 (= lt!1390022 prefix!426)))

(declare-fun lt!1390027 () Unit!60965)

(declare-fun lemmaSamePrefixThenSameSuffix!1938 (List!42417 List!42417 List!42417 List!42417 List!42417) Unit!60965)

(assert (=> b!3968007 (= lt!1390027 (lemmaSamePrefixThenSameSuffix!1938 lt!1390022 (_2!23931 (v!39407 lt!1390031)) prefix!426 suffix!1176 lt!1390019))))

(assert (=> b!3968007 false))

(declare-fun b!3968008 () Bool)

(declare-fun res!1606209 () Bool)

(assert (=> b!3968008 (=> res!1606209 e!2457575)))

(assert (=> b!3968008 (= res!1606209 (or (not (= lt!1390038 (tuple2!41597 (_1!23932 lt!1390038) (_2!23932 lt!1390038)))) (= (_2!23931 (v!39407 lt!1390031)) suffix!1176)))))

(declare-fun b!3968009 () Bool)

(declare-fun Unit!60974 () Unit!60965)

(assert (=> b!3968009 (= e!2457601 Unit!60974)))

(declare-fun lt!1390051 () Unit!60965)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!634 (List!42417 List!42417 List!42417 List!42417) Unit!60965)

(assert (=> b!3968009 (= lt!1390051 (lemmaConcatSameAndSameSizesThenSameLists!634 lt!1390022 (_2!23931 (v!39407 lt!1390031)) lt!1390022 (_2!23931 lt!1390061)))))

(assert (=> b!3968009 (= (_2!23931 (v!39407 lt!1390031)) (_2!23931 lt!1390061))))

(declare-fun lt!1390044 () Unit!60965)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!168 (LexerInterface!6229 List!42420 List!42417 List!42417 List!42419 List!42417) Unit!60965)

(assert (=> b!3968009 (= lt!1390044 (lemmaLexWithSmallerInputCannotProduceSameResults!168 thiss!20629 rules!2768 suffix!1176 (_2!23931 lt!1390061) suffixTokens!72 suffixResult!91))))

(declare-fun res!1606192 () Bool)

(assert (=> b!3968009 (= res!1606192 (not (= call!285588 lt!1390045)))))

(assert (=> b!3968009 (=> (not res!1606192) (not e!2457613))))

(assert (=> b!3968009 e!2457613))

(declare-fun b!3968010 () Bool)

(assert (=> b!3968010 (= e!2457582 e!2457599)))

(declare-fun res!1606210 () Bool)

(assert (=> b!3968010 (=> res!1606210 e!2457599)))

(assert (=> b!3968010 (= res!1606210 (or (not (= lt!1390055 lt!1390019)) (not (= lt!1390055 lt!1390037))))))

(assert (=> b!3968010 (= lt!1390055 (++!11037 lt!1390059 suffix!1176))))

(declare-fun b!3968011 () Bool)

(declare-fun tp!1209233 () Bool)

(assert (=> b!3968011 (= e!2457593 (and tp!1209233 (inv!56523 (tag!7500 (h!47716 rules!2768))) (inv!56526 (transformation!6640 (h!47716 rules!2768))) e!2457611))))

(declare-fun b!3968012 () Bool)

(declare-fun res!1606201 () Bool)

(assert (=> b!3968012 (=> (not res!1606201) (not e!2457581))))

(assert (=> b!3968012 (= res!1606201 (not (isEmpty!25311 prefixTokens!80)))))

(declare-fun b!3968013 () Bool)

(declare-fun tp!1209227 () Bool)

(declare-fun inv!21 (TokenValue!6870) Bool)

(assert (=> b!3968013 (= e!2457591 (and (inv!21 (value!209874 (h!47715 suffixTokens!72))) e!2457583 tp!1209227))))

(declare-fun b!3968014 () Bool)

(declare-fun res!1606214 () Bool)

(assert (=> b!3968014 (=> res!1606214 e!2457616)))

(declare-fun head!8455 (List!42419) Token!12418)

(assert (=> b!3968014 (= res!1606214 (not (= (head!8455 prefixTokens!80) (_1!23931 (v!39407 lt!1390031)))))))

(declare-fun b!3968015 () Bool)

(declare-fun e!2457590 () Bool)

(assert (=> b!3968015 (= e!2457590 e!2457580)))

(declare-fun res!1606205 () Bool)

(assert (=> b!3968015 (=> res!1606205 e!2457580)))

(assert (=> b!3968015 (= res!1606205 (not (isPrefix!3729 Nil!42293 suffix!1176)))))

(assert (=> b!3968015 (isPrefix!3729 Nil!42293 (++!11037 Nil!42293 suffix!1176))))

(declare-fun lt!1390068 () Unit!60965)

(assert (=> b!3968015 (= lt!1390068 (lemmaConcatTwoListThenFirstIsPrefix!2588 Nil!42293 suffix!1176))))

(declare-fun b!3968016 () Bool)

(declare-fun res!1606208 () Bool)

(assert (=> b!3968016 (=> (not res!1606208) (not e!2457581))))

(declare-fun isEmpty!25312 (List!42420) Bool)

(assert (=> b!3968016 (= res!1606208 (not (isEmpty!25312 rules!2768)))))

(declare-fun b!3968017 () Bool)

(declare-fun res!1606222 () Bool)

(assert (=> b!3968017 (=> res!1606222 e!2457580)))

(assert (=> b!3968017 (= res!1606222 (<= lt!1390033 lt!1390048))))

(declare-fun b!3968018 () Bool)

(assert (=> b!3968018 (= e!2457616 e!2457578)))

(declare-fun res!1606221 () Bool)

(assert (=> b!3968018 (=> res!1606221 e!2457578)))

(assert (=> b!3968018 (= res!1606221 (>= lt!1390048 lt!1390033))))

(assert (=> b!3968018 (= lt!1390033 (size!31661 prefix!426))))

(assert (=> b!3968018 (isPrefix!3729 lt!1390022 prefix!426)))

(declare-fun lt!1390052 () Unit!60965)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!325 (List!42417 List!42417 List!42417) Unit!60965)

(assert (=> b!3968018 (= lt!1390052 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!325 prefix!426 lt!1390022 lt!1390019))))

(assert (=> b!3968018 (isPrefix!3729 prefix!426 lt!1390019)))

(declare-fun lt!1390040 () Unit!60965)

(assert (=> b!3968018 (= lt!1390040 (lemmaConcatTwoListThenFirstIsPrefix!2588 prefix!426 suffix!1176))))

(declare-fun b!3968019 () Bool)

(assert (=> b!3968019 (= e!2457581 e!2457600)))

(declare-fun res!1606193 () Bool)

(assert (=> b!3968019 (=> (not res!1606193) (not e!2457600))))

(assert (=> b!3968019 (= res!1606193 (= lt!1390070 (tuple2!41597 lt!1390058 suffixResult!91)))))

(assert (=> b!3968019 (= lt!1390070 (lexList!1997 thiss!20629 rules!2768 lt!1390019))))

(assert (=> b!3968019 (= lt!1390058 (++!11038 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3968019 (= lt!1390019 (++!11037 prefix!426 suffix!1176))))

(declare-fun b!3968020 () Bool)

(assert (=> b!3968020 (= e!2457609 e!2457606)))

(declare-fun res!1606220 () Bool)

(assert (=> b!3968020 (=> res!1606220 e!2457606)))

(assert (=> b!3968020 (= res!1606220 (not (= lt!1390062 (_2!23931 (v!39407 lt!1390031)))))))

(assert (=> b!3968020 (= (_2!23931 (v!39407 lt!1390031)) lt!1390062)))

(declare-fun lt!1390030 () Unit!60965)

(assert (=> b!3968020 (= lt!1390030 (lemmaSamePrefixThenSameSuffix!1938 lt!1390022 (_2!23931 (v!39407 lt!1390031)) lt!1390022 lt!1390062 lt!1390019))))

(assert (=> b!3968020 (isPrefix!3729 lt!1390022 lt!1390034)))

(declare-fun lt!1390053 () Unit!60965)

(assert (=> b!3968020 (= lt!1390053 (lemmaConcatTwoListThenFirstIsPrefix!2588 lt!1390022 lt!1390062))))

(declare-fun b!3968021 () Bool)

(declare-fun c!688473 () Bool)

(assert (=> b!3968021 (= c!688473 (isEmpty!25311 lt!1390050))))

(assert (=> b!3968021 (= lt!1390050 (tail!6187 prefixTokens!80))))

(assert (=> b!3968021 (= e!2457602 e!2457601)))

(declare-fun b!3968022 () Bool)

(assert (=> b!3968022 (= e!2457604 e!2457590)))

(declare-fun res!1606206 () Bool)

(assert (=> b!3968022 (=> res!1606206 e!2457590)))

(assert (=> b!3968022 (= res!1606206 (<= lt!1390047 lt!1390063))))

(assert (=> b!3968022 (= lt!1390063 (size!31661 Nil!42293))))

(declare-fun b!3968023 () Bool)

(declare-fun Unit!60975 () Unit!60965)

(assert (=> b!3968023 (= e!2457576 Unit!60975)))

(declare-fun lt!1390029 () Unit!60965)

(assert (=> b!3968023 (= lt!1390029 (lemmaLexWithSmallerInputCannotProduceSameResults!168 thiss!20629 rules!2768 (_2!23931 (v!39407 lt!1390031)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3968023 false))

(declare-fun bm!285583 () Bool)

(assert (=> bm!285583 (= call!285588 (lexList!1997 thiss!20629 rules!2768 (_2!23931 lt!1390061)))))

(declare-fun b!3968024 () Bool)

(declare-fun e!2457614 () Bool)

(assert (=> b!3968024 (= e!2457614 (not e!2457577))))

(declare-fun res!1606198 () Bool)

(assert (=> b!3968024 (=> res!1606198 e!2457577)))

(assert (=> b!3968024 (= res!1606198 (not (= lt!1390037 lt!1390019)))))

(assert (=> b!3968024 (= lt!1390038 (lexList!1997 thiss!20629 rules!2768 (_2!23931 (v!39407 lt!1390031))))))

(declare-fun lt!1390071 () List!42417)

(assert (=> b!3968024 (and (= (size!31660 (_1!23931 (v!39407 lt!1390031))) lt!1390048) (= (originalCharacters!7240 (_1!23931 (v!39407 lt!1390031))) lt!1390022) (= (tuple2!41595 (_1!23931 (v!39407 lt!1390031)) (_2!23931 (v!39407 lt!1390031))) (tuple2!41595 (Token!12419 lt!1390067 (rule!9628 (_1!23931 (v!39407 lt!1390031))) lt!1390048 lt!1390022) lt!1390071)))))

(assert (=> b!3968024 (= lt!1390048 (size!31661 lt!1390022))))

(assert (=> b!3968024 e!2457595))

(declare-fun res!1606215 () Bool)

(assert (=> b!3968024 (=> (not res!1606215) (not e!2457595))))

(assert (=> b!3968024 (= res!1606215 (= (value!209874 (_1!23931 (v!39407 lt!1390031))) lt!1390067))))

(declare-fun apply!9871 (TokenValueInjection!13168 BalanceConc!25296) TokenValue!6870)

(declare-fun seqFromList!4899 (List!42417) BalanceConc!25296)

(assert (=> b!3968024 (= lt!1390067 (apply!9871 (transformation!6640 (rule!9628 (_1!23931 (v!39407 lt!1390031)))) (seqFromList!4899 lt!1390022)))))

(assert (=> b!3968024 (= (_2!23931 (v!39407 lt!1390031)) lt!1390071)))

(declare-fun lt!1390035 () Unit!60965)

(assert (=> b!3968024 (= lt!1390035 (lemmaSamePrefixThenSameSuffix!1938 lt!1390022 (_2!23931 (v!39407 lt!1390031)) lt!1390022 lt!1390071 lt!1390019))))

(assert (=> b!3968024 (= lt!1390071 (getSuffix!2180 lt!1390019 lt!1390022))))

(assert (=> b!3968024 (isPrefix!3729 lt!1390022 lt!1390037)))

(assert (=> b!3968024 (= lt!1390037 (++!11037 lt!1390022 (_2!23931 (v!39407 lt!1390031))))))

(declare-fun lt!1390039 () Unit!60965)

(assert (=> b!3968024 (= lt!1390039 (lemmaConcatTwoListThenFirstIsPrefix!2588 lt!1390022 (_2!23931 (v!39407 lt!1390031))))))

(declare-fun list!15696 (BalanceConc!25296) List!42417)

(declare-fun charsOf!4458 (Token!12418) BalanceConc!25296)

(assert (=> b!3968024 (= lt!1390022 (list!15696 (charsOf!4458 (_1!23931 (v!39407 lt!1390031)))))))

(declare-fun ruleValid!2582 (LexerInterface!6229 Rule!13080) Bool)

(assert (=> b!3968024 (ruleValid!2582 thiss!20629 (rule!9628 (_1!23931 (v!39407 lt!1390031))))))

(declare-fun lt!1390056 () Unit!60965)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1658 (LexerInterface!6229 Rule!13080 List!42420) Unit!60965)

(assert (=> b!3968024 (= lt!1390056 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1658 thiss!20629 (rule!9628 (_1!23931 (v!39407 lt!1390031))) rules!2768))))

(declare-fun lt!1390023 () Unit!60965)

(declare-fun lemmaCharactersSize!1293 (Token!12418) Unit!60965)

(assert (=> b!3968024 (= lt!1390023 (lemmaCharactersSize!1293 (_1!23931 (v!39407 lt!1390031))))))

(declare-fun b!3968025 () Bool)

(declare-fun res!1606204 () Bool)

(assert (=> b!3968025 (=> (not res!1606204) (not e!2457581))))

(declare-fun rulesInvariant!5572 (LexerInterface!6229 List!42420) Bool)

(assert (=> b!3968025 (= res!1606204 (rulesInvariant!5572 thiss!20629 rules!2768))))

(assert (=> b!3968026 (= e!2457615 (and tp!1209235 tp!1209242))))

(declare-fun b!3968027 () Bool)

(assert (=> b!3968027 (= e!2457585 e!2457614)))

(declare-fun res!1606199 () Bool)

(assert (=> b!3968027 (=> (not res!1606199) (not e!2457614))))

(assert (=> b!3968027 (= res!1606199 ((_ is Some!9059) lt!1390031))))

(declare-fun maxPrefix!3533 (LexerInterface!6229 List!42420 List!42417) Option!9060)

(assert (=> b!3968027 (= lt!1390031 (maxPrefix!3533 thiss!20629 rules!2768 lt!1390019))))

(declare-fun tp!1209230 () Bool)

(declare-fun b!3968028 () Bool)

(assert (=> b!3968028 (= e!2457607 (and (inv!21 (value!209874 (h!47715 prefixTokens!80))) e!2457596 tp!1209230))))

(assert (= (and start!373356 res!1606194) b!3968016))

(assert (= (and b!3968016 res!1606208) b!3968025))

(assert (= (and b!3968025 res!1606204) b!3968012))

(assert (= (and b!3968012 res!1606201) b!3967998))

(assert (= (and b!3967998 res!1606217) b!3968019))

(assert (= (and b!3968019 res!1606193) b!3967990))

(assert (= (and b!3967990 res!1606196) b!3968027))

(assert (= (and b!3968027 res!1606199) b!3968024))

(assert (= (and b!3968024 res!1606215) b!3968005))

(assert (= (and b!3968024 (not res!1606198)) b!3967999))

(assert (= (and b!3967999 (not res!1606197)) b!3968008))

(assert (= (and b!3968008 (not res!1606209)) b!3968001))

(assert (= (and b!3968001 c!688470) b!3967981))

(assert (= (and b!3968001 (not c!688470)) b!3967982))

(assert (= (and b!3967981 c!688469) b!3968021))

(assert (= (and b!3967981 (not c!688469)) b!3967996))

(assert (= (and b!3968021 c!688473) b!3968009))

(assert (= (and b!3968021 (not c!688473)) b!3967980))

(assert (= (and b!3968009 res!1606192) b!3967989))

(assert (= (and b!3967980 res!1606213) b!3968004))

(assert (= (or b!3968009 b!3967980) bm!285583))

(assert (= (and b!3968001 c!688472) b!3968007))

(assert (= (and b!3968001 (not c!688472)) b!3968006))

(assert (= (and b!3968001 (not res!1606219)) b!3968014))

(assert (= (and b!3968014 (not res!1606214)) b!3968018))

(assert (= (and b!3968018 (not res!1606221)) b!3968002))

(assert (= (and b!3968002 (not res!1606203)) b!3968010))

(assert (= (and b!3968010 (not res!1606210)) b!3967991))

(assert (= (and b!3967991 (not res!1606200)) b!3968020))

(assert (= (and b!3968020 (not res!1606220)) b!3968000))

(assert (= (and b!3968000 (not res!1606216)) b!3967984))

(assert (= (and b!3967984 c!688471) b!3968023))

(assert (= (and b!3967984 (not c!688471)) b!3967988))

(assert (= (and b!3967984 (not res!1606207)) b!3967992))

(assert (= (and b!3967992 (not res!1606212)) b!3968003))

(assert (= (and b!3968003 (not res!1606195)) b!3967983))

(assert (= (and b!3967983 (not res!1606202)) b!3967995))

(assert (= (and b!3967995 (not res!1606218)) b!3968022))

(assert (= (and b!3968022 (not res!1606206)) b!3968015))

(assert (= (and b!3968015 (not res!1606205)) b!3968017))

(assert (= (and b!3968017 (not res!1606222)) b!3967975))

(assert (= (and b!3967975 (not res!1606211)) b!3967976))

(assert (= (and start!373356 ((_ is Cons!42293) suffixResult!91)) b!3967974))

(assert (= (and start!373356 ((_ is Cons!42293) suffix!1176)) b!3967987))

(assert (= b!3968011 b!3967978))

(assert (= b!3967979 b!3968011))

(assert (= (and start!373356 ((_ is Cons!42296) rules!2768)) b!3967979))

(assert (= b!3967986 b!3968026))

(assert (= b!3968028 b!3967986))

(assert (= b!3967985 b!3968028))

(assert (= (and start!373356 ((_ is Cons!42295) prefixTokens!80)) b!3967985))

(assert (= b!3967977 b!3967997))

(assert (= b!3968013 b!3967977))

(assert (= b!3967994 b!3968013))

(assert (= (and start!373356 ((_ is Cons!42295) suffixTokens!72)) b!3967994))

(assert (= (and start!373356 ((_ is Cons!42293) prefix!426)) b!3967993))

(declare-fun m!4538537 () Bool)

(assert (=> b!3967983 m!4538537))

(declare-fun m!4538539 () Bool)

(assert (=> b!3968018 m!4538539))

(declare-fun m!4538541 () Bool)

(assert (=> b!3968018 m!4538541))

(declare-fun m!4538543 () Bool)

(assert (=> b!3968018 m!4538543))

(declare-fun m!4538545 () Bool)

(assert (=> b!3968018 m!4538545))

(declare-fun m!4538547 () Bool)

(assert (=> b!3968018 m!4538547))

(declare-fun m!4538549 () Bool)

(assert (=> b!3968025 m!4538549))

(declare-fun m!4538551 () Bool)

(assert (=> b!3968021 m!4538551))

(declare-fun m!4538553 () Bool)

(assert (=> b!3968021 m!4538553))

(declare-fun m!4538555 () Bool)

(assert (=> b!3967986 m!4538555))

(declare-fun m!4538557 () Bool)

(assert (=> b!3967986 m!4538557))

(declare-fun m!4538559 () Bool)

(assert (=> b!3968016 m!4538559))

(declare-fun m!4538561 () Bool)

(assert (=> b!3968015 m!4538561))

(declare-fun m!4538563 () Bool)

(assert (=> b!3968015 m!4538563))

(assert (=> b!3968015 m!4538563))

(declare-fun m!4538565 () Bool)

(assert (=> b!3968015 m!4538565))

(declare-fun m!4538567 () Bool)

(assert (=> b!3968015 m!4538567))

(declare-fun m!4538569 () Bool)

(assert (=> b!3968003 m!4538569))

(declare-fun m!4538571 () Bool)

(assert (=> b!3968003 m!4538571))

(declare-fun m!4538573 () Bool)

(assert (=> b!3968005 m!4538573))

(declare-fun m!4538575 () Bool)

(assert (=> b!3968001 m!4538575))

(declare-fun m!4538577 () Bool)

(assert (=> b!3968001 m!4538577))

(declare-fun m!4538579 () Bool)

(assert (=> b!3968010 m!4538579))

(declare-fun m!4538581 () Bool)

(assert (=> b!3968013 m!4538581))

(declare-fun m!4538583 () Bool)

(assert (=> b!3967975 m!4538583))

(declare-fun m!4538585 () Bool)

(assert (=> b!3968023 m!4538585))

(declare-fun m!4538587 () Bool)

(assert (=> b!3968012 m!4538587))

(declare-fun m!4538589 () Bool)

(assert (=> b!3968020 m!4538589))

(declare-fun m!4538591 () Bool)

(assert (=> b!3968020 m!4538591))

(declare-fun m!4538593 () Bool)

(assert (=> b!3968020 m!4538593))

(declare-fun m!4538595 () Bool)

(assert (=> b!3967990 m!4538595))

(declare-fun m!4538597 () Bool)

(assert (=> b!3968002 m!4538597))

(declare-fun m!4538599 () Bool)

(assert (=> b!3968002 m!4538599))

(declare-fun m!4538601 () Bool)

(assert (=> b!3968019 m!4538601))

(declare-fun m!4538603 () Bool)

(assert (=> b!3968019 m!4538603))

(declare-fun m!4538605 () Bool)

(assert (=> b!3968019 m!4538605))

(declare-fun m!4538607 () Bool)

(assert (=> b!3967984 m!4538607))

(declare-fun m!4538609 () Bool)

(assert (=> b!3967984 m!4538609))

(declare-fun m!4538611 () Bool)

(assert (=> b!3967984 m!4538611))

(declare-fun m!4538613 () Bool)

(assert (=> b!3967984 m!4538613))

(assert (=> b!3967984 m!4538611))

(declare-fun m!4538615 () Bool)

(assert (=> b!3967984 m!4538615))

(declare-fun m!4538617 () Bool)

(assert (=> b!3967991 m!4538617))

(declare-fun m!4538619 () Bool)

(assert (=> b!3967991 m!4538619))

(declare-fun m!4538621 () Bool)

(assert (=> b!3967991 m!4538621))

(declare-fun m!4538623 () Bool)

(assert (=> b!3967999 m!4538623))

(declare-fun m!4538625 () Bool)

(assert (=> b!3967995 m!4538625))

(declare-fun m!4538627 () Bool)

(assert (=> b!3968014 m!4538627))

(declare-fun m!4538629 () Bool)

(assert (=> b!3967992 m!4538629))

(declare-fun m!4538631 () Bool)

(assert (=> b!3967980 m!4538631))

(declare-fun m!4538633 () Bool)

(assert (=> b!3967980 m!4538633))

(assert (=> b!3968007 m!4538541))

(assert (=> b!3968007 m!4538543))

(declare-fun m!4538635 () Bool)

(assert (=> b!3968007 m!4538635))

(declare-fun m!4538637 () Bool)

(assert (=> b!3968007 m!4538637))

(declare-fun m!4538639 () Bool)

(assert (=> b!3968000 m!4538639))

(assert (=> b!3968000 m!4538553))

(declare-fun m!4538641 () Bool)

(assert (=> b!3968000 m!4538641))

(declare-fun m!4538643 () Bool)

(assert (=> b!3968000 m!4538643))

(declare-fun m!4538645 () Bool)

(assert (=> b!3968022 m!4538645))

(declare-fun m!4538647 () Bool)

(assert (=> b!3968009 m!4538647))

(declare-fun m!4538649 () Bool)

(assert (=> b!3968009 m!4538649))

(declare-fun m!4538651 () Bool)

(assert (=> b!3968028 m!4538651))

(declare-fun m!4538653 () Bool)

(assert (=> b!3968027 m!4538653))

(declare-fun m!4538655 () Bool)

(assert (=> bm!285583 m!4538655))

(declare-fun m!4538657 () Bool)

(assert (=> b!3967981 m!4538657))

(declare-fun m!4538659 () Bool)

(assert (=> b!3967981 m!4538659))

(declare-fun m!4538661 () Bool)

(assert (=> b!3967981 m!4538661))

(declare-fun m!4538663 () Bool)

(assert (=> b!3967981 m!4538663))

(declare-fun m!4538665 () Bool)

(assert (=> b!3967981 m!4538665))

(declare-fun m!4538667 () Bool)

(assert (=> b!3967985 m!4538667))

(declare-fun m!4538669 () Bool)

(assert (=> b!3967977 m!4538669))

(declare-fun m!4538671 () Bool)

(assert (=> b!3967977 m!4538671))

(declare-fun m!4538673 () Bool)

(assert (=> b!3968011 m!4538673))

(declare-fun m!4538675 () Bool)

(assert (=> b!3968011 m!4538675))

(declare-fun m!4538677 () Bool)

(assert (=> b!3967994 m!4538677))

(declare-fun m!4538679 () Bool)

(assert (=> b!3968024 m!4538679))

(declare-fun m!4538681 () Bool)

(assert (=> b!3968024 m!4538681))

(declare-fun m!4538683 () Bool)

(assert (=> b!3968024 m!4538683))

(declare-fun m!4538685 () Bool)

(assert (=> b!3968024 m!4538685))

(declare-fun m!4538687 () Bool)

(assert (=> b!3968024 m!4538687))

(declare-fun m!4538689 () Bool)

(assert (=> b!3968024 m!4538689))

(declare-fun m!4538691 () Bool)

(assert (=> b!3968024 m!4538691))

(declare-fun m!4538693 () Bool)

(assert (=> b!3968024 m!4538693))

(declare-fun m!4538695 () Bool)

(assert (=> b!3968024 m!4538695))

(declare-fun m!4538697 () Bool)

(assert (=> b!3968024 m!4538697))

(declare-fun m!4538699 () Bool)

(assert (=> b!3968024 m!4538699))

(declare-fun m!4538701 () Bool)

(assert (=> b!3968024 m!4538701))

(declare-fun m!4538703 () Bool)

(assert (=> b!3968024 m!4538703))

(assert (=> b!3968024 m!4538685))

(declare-fun m!4538705 () Bool)

(assert (=> b!3968024 m!4538705))

(assert (=> b!3968024 m!4538695))

(declare-fun m!4538707 () Bool)

(assert (=> b!3967998 m!4538707))

(check-sat (not b!3968022) (not b!3968014) (not b!3967975) (not b!3968003) (not b!3968010) (not b!3968016) (not b_next!110439) (not b_next!110437) (not b!3967981) (not b!3968001) (not b!3968019) (not b_next!110433) (not b!3968020) (not b!3968005) (not b!3967980) (not b!3968028) (not b!3968011) (not b!3968009) (not b!3967987) (not b!3967998) (not b!3968000) (not b!3967985) tp_is_empty!20061 (not b!3967991) (not b!3967983) (not b!3967986) (not b!3967993) (not b!3967979) b_and!304915 (not b!3968027) (not b!3967984) (not b!3967974) (not b!3967995) b_and!304923 b_and!304921 (not b!3967992) (not b!3968023) (not b!3968015) (not b!3968018) (not b!3967999) (not b!3968025) (not b!3968024) b_and!304919 (not b!3968007) (not b_next!110429) b_and!304917 (not b_next!110431) (not b!3968013) b_and!304925 (not bm!285583) (not b!3967977) (not b!3967990) (not b!3968012) (not b_next!110435) (not b!3968002) (not b!3967994) (not b!3968021))
(check-sat (not b_next!110439) (not b_next!110437) (not b_next!110433) b_and!304915 b_and!304923 b_and!304921 b_and!304919 b_and!304925 (not b_next!110435) (not b_next!110429) b_and!304917 (not b_next!110431))
