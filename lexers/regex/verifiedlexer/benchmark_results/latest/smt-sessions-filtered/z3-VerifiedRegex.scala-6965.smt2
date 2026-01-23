; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368852 () Bool)

(assert start!368852)

(declare-fun b!3931672 () Bool)

(declare-fun b_free!107309 () Bool)

(declare-fun b_next!108013 () Bool)

(assert (=> b!3931672 (= b_free!107309 (not b_next!108013))))

(declare-fun tp!1196792 () Bool)

(declare-fun b_and!300071 () Bool)

(assert (=> b!3931672 (= tp!1196792 b_and!300071)))

(declare-fun b_free!107311 () Bool)

(declare-fun b_next!108015 () Bool)

(assert (=> b!3931672 (= b_free!107311 (not b_next!108015))))

(declare-fun tp!1196790 () Bool)

(declare-fun b_and!300073 () Bool)

(assert (=> b!3931672 (= tp!1196790 b_and!300073)))

(declare-fun b!3931664 () Bool)

(declare-fun b_free!107313 () Bool)

(declare-fun b_next!108017 () Bool)

(assert (=> b!3931664 (= b_free!107313 (not b_next!108017))))

(declare-fun tp!1196780 () Bool)

(declare-fun b_and!300075 () Bool)

(assert (=> b!3931664 (= tp!1196780 b_and!300075)))

(declare-fun b_free!107315 () Bool)

(declare-fun b_next!108019 () Bool)

(assert (=> b!3931664 (= b_free!107315 (not b_next!108019))))

(declare-fun tp!1196788 () Bool)

(declare-fun b_and!300077 () Bool)

(assert (=> b!3931664 (= tp!1196788 b_and!300077)))

(declare-fun b!3931685 () Bool)

(declare-fun b_free!107317 () Bool)

(declare-fun b_next!108021 () Bool)

(assert (=> b!3931685 (= b_free!107317 (not b_next!108021))))

(declare-fun tp!1196781 () Bool)

(declare-fun b_and!300079 () Bool)

(assert (=> b!3931685 (= tp!1196781 b_and!300079)))

(declare-fun b_free!107319 () Bool)

(declare-fun b_next!108023 () Bool)

(assert (=> b!3931685 (= b_free!107319 (not b_next!108023))))

(declare-fun tp!1196779 () Bool)

(declare-fun b_and!300081 () Bool)

(assert (=> b!3931685 (= tp!1196779 b_and!300081)))

(declare-fun b!3931650 () Bool)

(declare-fun e!2432277 () Bool)

(declare-fun e!2432250 () Bool)

(assert (=> b!3931650 (= e!2432277 e!2432250)))

(declare-fun res!1590781 () Bool)

(assert (=> b!3931650 (=> res!1590781 e!2432250)))

(declare-datatypes ((C!23032 0))(
  ( (C!23033 (val!13610 Int)) )
))
(declare-datatypes ((List!41869 0))(
  ( (Nil!41745) (Cons!41745 (h!47165 C!23032) (t!325726 List!41869)) )
))
(declare-fun lt!1373482 () List!41869)

(declare-datatypes ((List!41870 0))(
  ( (Nil!41746) (Cons!41746 (h!47166 (_ BitVec 16)) (t!325727 List!41870)) )
))
(declare-datatypes ((TokenValue!6748 0))(
  ( (FloatLiteralValue!13496 (text!47681 List!41870)) (TokenValueExt!6747 (__x!25713 Int)) (Broken!33740 (value!206371 List!41870)) (Object!6871) (End!6748) (Def!6748) (Underscore!6748) (Match!6748) (Else!6748) (Error!6748) (Case!6748) (If!6748) (Extends!6748) (Abstract!6748) (Class!6748) (Val!6748) (DelimiterValue!13496 (del!6808 List!41870)) (KeywordValue!6754 (value!206372 List!41870)) (CommentValue!13496 (value!206373 List!41870)) (WhitespaceValue!13496 (value!206374 List!41870)) (IndentationValue!6748 (value!206375 List!41870)) (String!47457) (Int32!6748) (Broken!33741 (value!206376 List!41870)) (Boolean!6749) (Unit!60171) (OperatorValue!6751 (op!6808 List!41870)) (IdentifierValue!13496 (value!206377 List!41870)) (IdentifierValue!13497 (value!206378 List!41870)) (WhitespaceValue!13497 (value!206379 List!41870)) (True!13496) (False!13496) (Broken!33742 (value!206380 List!41870)) (Broken!33743 (value!206381 List!41870)) (True!13497) (RightBrace!6748) (RightBracket!6748) (Colon!6748) (Null!6748) (Comma!6748) (LeftBracket!6748) (False!13497) (LeftBrace!6748) (ImaginaryLiteralValue!6748 (text!47682 List!41870)) (StringLiteralValue!20244 (value!206382 List!41870)) (EOFValue!6748 (value!206383 List!41870)) (IdentValue!6748 (value!206384 List!41870)) (DelimiterValue!13497 (value!206385 List!41870)) (DedentValue!6748 (value!206386 List!41870)) (NewLineValue!6748 (value!206387 List!41870)) (IntegerValue!20244 (value!206388 (_ BitVec 32)) (text!47683 List!41870)) (IntegerValue!20245 (value!206389 Int) (text!47684 List!41870)) (Times!6748) (Or!6748) (Equal!6748) (Minus!6748) (Broken!33744 (value!206390 List!41870)) (And!6748) (Div!6748) (LessEqual!6748) (Mod!6748) (Concat!18171) (Not!6748) (Plus!6748) (SpaceValue!6748 (value!206391 List!41870)) (IntegerValue!20246 (value!206392 Int) (text!47685 List!41870)) (StringLiteralValue!20245 (text!47686 List!41870)) (FloatLiteralValue!13497 (text!47687 List!41870)) (BytesLiteralValue!6748 (value!206393 List!41870)) (CommentValue!13497 (value!206394 List!41870)) (StringLiteralValue!20246 (value!206395 List!41870)) (ErrorTokenValue!6748 (msg!6809 List!41870)) )
))
(declare-datatypes ((Regex!11423 0))(
  ( (ElementMatch!11423 (c!683130 C!23032)) (Concat!18172 (regOne!23358 Regex!11423) (regTwo!23358 Regex!11423)) (EmptyExpr!11423) (Star!11423 (reg!11752 Regex!11423)) (EmptyLang!11423) (Union!11423 (regOne!23359 Regex!11423) (regTwo!23359 Regex!11423)) )
))
(declare-datatypes ((String!47458 0))(
  ( (String!47459 (value!206396 String)) )
))
(declare-datatypes ((IArray!25463 0))(
  ( (IArray!25464 (innerList!12789 List!41869)) )
))
(declare-datatypes ((Conc!12729 0))(
  ( (Node!12729 (left!31842 Conc!12729) (right!32172 Conc!12729) (csize!25688 Int) (cheight!12940 Int)) (Leaf!19695 (xs!16035 IArray!25463) (csize!25689 Int)) (Empty!12729) )
))
(declare-datatypes ((BalanceConc!25052 0))(
  ( (BalanceConc!25053 (c!683131 Conc!12729)) )
))
(declare-datatypes ((TokenValueInjection!12924 0))(
  ( (TokenValueInjection!12925 (toValue!8974 Int) (toChars!8833 Int)) )
))
(declare-datatypes ((Rule!12836 0))(
  ( (Rule!12837 (regex!6518 Regex!11423) (tag!7378 String!47458) (isSeparator!6518 Bool) (transformation!6518 TokenValueInjection!12924)) )
))
(declare-datatypes ((Token!12174 0))(
  ( (Token!12175 (value!206397 TokenValue!6748) (rule!9464 Rule!12836) (size!31319 Int) (originalCharacters!7118 List!41869)) )
))
(declare-datatypes ((tuple2!41022 0))(
  ( (tuple2!41023 (_1!23645 Token!12174) (_2!23645 List!41869)) )
))
(declare-datatypes ((Option!8938 0))(
  ( (None!8937) (Some!8937 (v!39265 tuple2!41022)) )
))
(declare-fun lt!1373503 () Option!8938)

(assert (=> b!3931650 (= res!1590781 (not (= lt!1373482 (_2!23645 (v!39265 lt!1373503)))))))

(assert (=> b!3931650 (= (_2!23645 (v!39265 lt!1373503)) lt!1373482)))

(declare-datatypes ((Unit!60172 0))(
  ( (Unit!60173) )
))
(declare-fun lt!1373513 () Unit!60172)

(declare-fun lt!1373486 () List!41869)

(declare-fun lt!1373502 () List!41869)

(declare-fun lemmaSamePrefixThenSameSuffix!1834 (List!41869 List!41869 List!41869 List!41869 List!41869) Unit!60172)

(assert (=> b!3931650 (= lt!1373513 (lemmaSamePrefixThenSameSuffix!1834 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 lt!1373482 lt!1373486))))

(declare-fun lt!1373512 () List!41869)

(declare-fun isPrefix!3613 (List!41869 List!41869) Bool)

(assert (=> b!3931650 (isPrefix!3613 lt!1373502 lt!1373512)))

(declare-fun lt!1373508 () Unit!60172)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2476 (List!41869 List!41869) Unit!60172)

(assert (=> b!3931650 (= lt!1373508 (lemmaConcatTwoListThenFirstIsPrefix!2476 lt!1373502 lt!1373482))))

(declare-fun b!3931651 () Bool)

(declare-fun e!2432273 () Unit!60172)

(declare-fun Unit!60174 () Unit!60172)

(assert (=> b!3931651 (= e!2432273 Unit!60174)))

(declare-datatypes ((LexerInterface!6107 0))(
  ( (LexerInterfaceExt!6104 (__x!25714 Int)) (Lexer!6105) )
))
(declare-fun thiss!20629 () LexerInterface!6107)

(declare-fun suffix!1176 () List!41869)

(declare-datatypes ((List!41871 0))(
  ( (Nil!41747) (Cons!41747 (h!47167 Token!12174) (t!325728 List!41871)) )
))
(declare-fun suffixTokens!72 () List!41871)

(declare-fun lt!1373510 () List!41871)

(declare-fun lt!1373491 () Unit!60172)

(declare-fun suffixResult!91 () List!41869)

(declare-datatypes ((List!41872 0))(
  ( (Nil!41748) (Cons!41748 (h!47168 Rule!12836) (t!325729 List!41872)) )
))
(declare-fun rules!2768 () List!41872)

(declare-fun lt!1373483 () tuple2!41022)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!118 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41871 List!41869 List!41871) Unit!60172)

(assert (=> b!3931651 (= lt!1373491 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!118 thiss!20629 rules!2768 suffix!1176 (_2!23645 lt!1373483) suffixTokens!72 suffixResult!91 lt!1373510))))

(declare-fun res!1590785 () Bool)

(declare-datatypes ((tuple2!41024 0))(
  ( (tuple2!41025 (_1!23646 List!41871) (_2!23646 List!41869)) )
))
(declare-fun call!284870 () tuple2!41024)

(declare-fun ++!10793 (List!41871 List!41871) List!41871)

(assert (=> b!3931651 (= res!1590785 (not (= call!284870 (tuple2!41025 (++!10793 lt!1373510 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2432284 () Bool)

(assert (=> b!3931651 (=> (not res!1590785) (not e!2432284))))

(assert (=> b!3931651 e!2432284))

(declare-fun b!3931652 () Bool)

(declare-fun prefixTokens!80 () List!41871)

(declare-fun tp!1196794 () Bool)

(declare-fun e!2432276 () Bool)

(declare-fun e!2432247 () Bool)

(declare-fun inv!55942 (Token!12174) Bool)

(assert (=> b!3931652 (= e!2432276 (and (inv!55942 (h!47167 prefixTokens!80)) e!2432247 tp!1196794))))

(declare-fun b!3931653 () Bool)

(declare-fun c!683129 () Bool)

(declare-fun isEmpty!24886 (List!41871) Bool)

(assert (=> b!3931653 (= c!683129 (isEmpty!24886 lt!1373510))))

(declare-fun tail!6071 (List!41871) List!41871)

(assert (=> b!3931653 (= lt!1373510 (tail!6071 prefixTokens!80))))

(declare-fun e!2432275 () Unit!60172)

(assert (=> b!3931653 (= e!2432275 e!2432273)))

(declare-fun b!3931654 () Bool)

(declare-fun e!2432271 () Bool)

(declare-fun e!2432261 () Bool)

(assert (=> b!3931654 (= e!2432271 e!2432261)))

(declare-fun res!1590777 () Bool)

(assert (=> b!3931654 (=> res!1590777 e!2432261)))

(declare-fun lt!1373480 () List!41869)

(declare-fun lt!1373514 () List!41869)

(assert (=> b!3931654 (= res!1590777 (or (not (= lt!1373514 lt!1373486)) (not (= lt!1373514 lt!1373480))))))

(declare-fun lt!1373497 () List!41869)

(declare-fun ++!10794 (List!41869 List!41869) List!41869)

(assert (=> b!3931654 (= lt!1373514 (++!10794 lt!1373497 suffix!1176))))

(declare-fun b!3931655 () Bool)

(declare-fun res!1590773 () Bool)

(declare-fun e!2432278 () Bool)

(assert (=> b!3931655 (=> res!1590773 e!2432278)))

(assert (=> b!3931655 (= res!1590773 (not (isEmpty!24886 suffixTokens!72)))))

(declare-fun b!3931656 () Bool)

(declare-fun res!1590783 () Bool)

(declare-fun e!2432256 () Bool)

(assert (=> b!3931656 (=> (not res!1590783) (not e!2432256))))

(assert (=> b!3931656 (= res!1590783 (not (isEmpty!24886 prefixTokens!80)))))

(declare-fun b!3931657 () Bool)

(declare-fun e!2432252 () Bool)

(declare-fun size!31320 (List!41869) Int)

(assert (=> b!3931657 (= e!2432252 (= (size!31319 (_1!23645 (v!39265 lt!1373503))) (size!31320 (originalCharacters!7118 (_1!23645 (v!39265 lt!1373503))))))))

(declare-fun b!3931658 () Bool)

(declare-fun e!2432260 () Bool)

(declare-fun tp_is_empty!19817 () Bool)

(declare-fun tp!1196787 () Bool)

(assert (=> b!3931658 (= e!2432260 (and tp_is_empty!19817 tp!1196787))))

(declare-fun b!3931659 () Bool)

(declare-fun res!1590778 () Bool)

(declare-fun e!2432251 () Bool)

(assert (=> b!3931659 (=> res!1590778 e!2432251)))

(declare-fun lt!1373496 () tuple2!41024)

(declare-fun lexList!1875 (LexerInterface!6107 List!41872 List!41869) tuple2!41024)

(assert (=> b!3931659 (= res!1590778 (not (= (lexList!1875 thiss!20629 rules!2768 lt!1373482) lt!1373496)))))

(declare-fun b!3931660 () Bool)

(assert (=> b!3931660 (= e!2432261 e!2432277)))

(declare-fun res!1590786 () Bool)

(assert (=> b!3931660 (=> res!1590786 e!2432277)))

(assert (=> b!3931660 (= res!1590786 (or (not (= lt!1373486 lt!1373514)) (not (= lt!1373486 lt!1373512)) (not (= lt!1373480 lt!1373512))))))

(assert (=> b!3931660 (= lt!1373514 lt!1373512)))

(assert (=> b!3931660 (= lt!1373512 (++!10794 lt!1373502 lt!1373482))))

(declare-fun lt!1373470 () List!41869)

(assert (=> b!3931660 (= lt!1373482 (++!10794 lt!1373470 suffix!1176))))

(declare-fun lt!1373515 () Unit!60172)

(declare-fun lemmaConcatAssociativity!2323 (List!41869 List!41869 List!41869) Unit!60172)

(assert (=> b!3931660 (= lt!1373515 (lemmaConcatAssociativity!2323 lt!1373502 lt!1373470 suffix!1176))))

(declare-fun b!3931661 () Bool)

(declare-fun e!2432259 () Bool)

(declare-fun e!2432254 () Bool)

(assert (=> b!3931661 (= e!2432259 e!2432254)))

(declare-fun res!1590787 () Bool)

(assert (=> b!3931661 (=> (not res!1590787) (not e!2432254))))

(get-info :version)

(assert (=> b!3931661 (= res!1590787 ((_ is Some!8937) lt!1373503))))

(declare-fun maxPrefix!3411 (LexerInterface!6107 List!41872 List!41869) Option!8938)

(assert (=> b!3931661 (= lt!1373503 (maxPrefix!3411 thiss!20629 rules!2768 lt!1373486))))

(declare-fun b!3931662 () Bool)

(declare-fun e!2432281 () Bool)

(assert (=> b!3931662 (= e!2432281 e!2432251)))

(declare-fun res!1590770 () Bool)

(assert (=> b!3931662 (=> res!1590770 e!2432251)))

(declare-fun lt!1373489 () List!41871)

(declare-fun lt!1373501 () List!41871)

(assert (=> b!3931662 (= res!1590770 (not (= lt!1373489 lt!1373501)))))

(declare-fun lt!1373471 () List!41871)

(declare-fun lt!1373511 () List!41871)

(assert (=> b!3931662 (= lt!1373489 (++!10793 lt!1373471 lt!1373511))))

(declare-fun lt!1373488 () List!41871)

(assert (=> b!3931662 (= lt!1373489 (++!10793 (++!10793 lt!1373471 lt!1373488) suffixTokens!72))))

(declare-fun lt!1373516 () Unit!60172)

(declare-fun lemmaConcatAssociativity!2324 (List!41871 List!41871 List!41871) Unit!60172)

(assert (=> b!3931662 (= lt!1373516 (lemmaConcatAssociativity!2324 lt!1373471 lt!1373488 suffixTokens!72))))

(declare-fun lt!1373473 () Unit!60172)

(declare-fun e!2432280 () Unit!60172)

(assert (=> b!3931662 (= lt!1373473 e!2432280)))

(declare-fun c!683126 () Bool)

(assert (=> b!3931662 (= c!683126 (isEmpty!24886 lt!1373488))))

(declare-fun tp!1196783 () Bool)

(declare-fun b!3931663 () Bool)

(declare-fun e!2432246 () Bool)

(declare-fun e!2432269 () Bool)

(declare-fun inv!55939 (String!47458) Bool)

(declare-fun inv!55943 (TokenValueInjection!12924) Bool)

(assert (=> b!3931663 (= e!2432269 (and tp!1196783 (inv!55939 (tag!7378 (rule!9464 (h!47167 suffixTokens!72)))) (inv!55943 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) e!2432246))))

(declare-fun e!2432274 () Bool)

(assert (=> b!3931664 (= e!2432274 (and tp!1196780 tp!1196788))))

(declare-fun b!3931665 () Bool)

(assert (=> b!3931665 (= e!2432251 e!2432278)))

(declare-fun res!1590768 () Bool)

(assert (=> b!3931665 (=> res!1590768 e!2432278)))

(assert (=> b!3931665 (= res!1590768 (not (= lt!1373503 (Some!8937 (tuple2!41023 (_1!23645 (v!39265 lt!1373503)) (_2!23645 (v!39265 lt!1373503)))))))))

(assert (=> b!3931665 (= (lexList!1875 thiss!20629 rules!2768 lt!1373470) (tuple2!41025 lt!1373488 Nil!41745))))

(declare-fun lt!1373479 () Unit!60172)

(declare-fun lemmaLexThenLexPrefix!603 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41871 List!41871 List!41869) Unit!60172)

(assert (=> b!3931665 (= lt!1373479 (lemmaLexThenLexPrefix!603 thiss!20629 rules!2768 lt!1373470 suffix!1176 lt!1373488 suffixTokens!72 suffixResult!91))))

(declare-fun b!3931666 () Bool)

(declare-fun Unit!60175 () Unit!60172)

(assert (=> b!3931666 (= e!2432280 Unit!60175)))

(declare-fun lt!1373509 () Unit!60172)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!118 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41871 List!41869) Unit!60172)

(assert (=> b!3931666 (= lt!1373509 (lemmaLexWithSmallerInputCannotProduceSameResults!118 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373503)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3931666 false))

(declare-fun b!3931667 () Bool)

(declare-fun e!2432282 () Bool)

(assert (=> b!3931667 (= e!2432282 e!2432259)))

(declare-fun res!1590772 () Bool)

(assert (=> b!3931667 (=> (not res!1590772) (not e!2432259))))

(declare-fun lt!1373495 () tuple2!41024)

(assert (=> b!3931667 (= res!1590772 (= (lexList!1875 thiss!20629 rules!2768 suffix!1176) lt!1373495))))

(assert (=> b!3931667 (= lt!1373495 (tuple2!41025 suffixTokens!72 suffixResult!91))))

(declare-fun b!3931668 () Bool)

(declare-fun res!1590784 () Bool)

(assert (=> b!3931668 (=> (not res!1590784) (not e!2432256))))

(declare-fun rulesInvariant!5450 (LexerInterface!6107 List!41872) Bool)

(assert (=> b!3931668 (= res!1590784 (rulesInvariant!5450 thiss!20629 rules!2768))))

(declare-fun b!3931669 () Bool)

(declare-fun e!2432245 () Bool)

(declare-fun tp!1196791 () Bool)

(assert (=> b!3931669 (= e!2432245 (and tp_is_empty!19817 tp!1196791))))

(declare-fun b!3931670 () Bool)

(declare-fun e!2432264 () Bool)

(declare-fun e!2432283 () Bool)

(declare-fun tp!1196793 () Bool)

(assert (=> b!3931670 (= e!2432264 (and e!2432283 tp!1196793))))

(declare-fun b!3931671 () Bool)

(declare-fun Unit!60176 () Unit!60172)

(assert (=> b!3931671 (= e!2432280 Unit!60176)))

(assert (=> b!3931672 (= e!2432246 (and tp!1196792 tp!1196790))))

(declare-fun b!3931673 () Bool)

(declare-fun e!2432262 () Bool)

(assert (=> b!3931673 (= e!2432262 false)))

(declare-fun b!3931674 () Bool)

(declare-fun e!2432258 () Bool)

(assert (=> b!3931674 (= e!2432258 e!2432271)))

(declare-fun res!1590771 () Bool)

(assert (=> b!3931674 (=> res!1590771 e!2432271)))

(declare-fun prefix!426 () List!41869)

(assert (=> b!3931674 (= res!1590771 (not (= lt!1373497 prefix!426)))))

(assert (=> b!3931674 (= lt!1373497 (++!10794 lt!1373502 lt!1373470))))

(declare-fun getSuffix!2068 (List!41869 List!41869) List!41869)

(assert (=> b!3931674 (= lt!1373470 (getSuffix!2068 prefix!426 lt!1373502))))

(declare-fun tp!1196778 () Bool)

(declare-fun e!2432279 () Bool)

(declare-fun b!3931675 () Bool)

(assert (=> b!3931675 (= e!2432279 (and tp!1196778 (inv!55939 (tag!7378 (rule!9464 (h!47167 prefixTokens!80)))) (inv!55943 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) e!2432274))))

(declare-fun b!3931676 () Bool)

(declare-fun e!2432268 () Unit!60172)

(declare-fun Unit!60177 () Unit!60172)

(assert (=> b!3931676 (= e!2432268 Unit!60177)))

(declare-fun res!1590774 () Bool)

(assert (=> start!368852 (=> (not res!1590774) (not e!2432256))))

(assert (=> start!368852 (= res!1590774 ((_ is Lexer!6105) thiss!20629))))

(assert (=> start!368852 e!2432256))

(declare-fun e!2432257 () Bool)

(assert (=> start!368852 e!2432257))

(assert (=> start!368852 true))

(assert (=> start!368852 e!2432260))

(assert (=> start!368852 e!2432264))

(assert (=> start!368852 e!2432276))

(declare-fun e!2432248 () Bool)

(assert (=> start!368852 e!2432248))

(assert (=> start!368852 e!2432245))

(declare-fun b!3931677 () Bool)

(declare-fun res!1590766 () Bool)

(declare-fun e!2432253 () Bool)

(assert (=> b!3931677 (=> res!1590766 e!2432253)))

(declare-fun head!8345 (List!41871) Token!12174)

(assert (=> b!3931677 (= res!1590766 (not (= (head!8345 prefixTokens!80) (_1!23645 (v!39265 lt!1373503)))))))

(declare-fun b!3931678 () Bool)

(assert (=> b!3931678 (= e!2432284 false)))

(declare-fun b!3931679 () Bool)

(declare-fun tp!1196786 () Bool)

(declare-fun e!2432266 () Bool)

(declare-fun inv!21 (TokenValue!6748) Bool)

(assert (=> b!3931679 (= e!2432266 (and (inv!21 (value!206397 (h!47167 suffixTokens!72))) e!2432269 tp!1196786))))

(declare-fun b!3931680 () Bool)

(assert (=> b!3931680 (= e!2432250 e!2432281)))

(declare-fun res!1590765 () Bool)

(assert (=> b!3931680 (=> res!1590765 e!2432281)))

(declare-fun lt!1373504 () tuple2!41024)

(assert (=> b!3931680 (= res!1590765 (not (= lt!1373504 lt!1373496)))))

(assert (=> b!3931680 (= lt!1373496 (tuple2!41025 lt!1373511 suffixResult!91))))

(assert (=> b!3931680 (= lt!1373511 (++!10793 lt!1373488 suffixTokens!72))))

(assert (=> b!3931680 (= lt!1373488 (tail!6071 prefixTokens!80))))

(assert (=> b!3931680 (isPrefix!3613 lt!1373470 lt!1373482)))

(declare-fun lt!1373487 () Unit!60172)

(assert (=> b!3931680 (= lt!1373487 (lemmaConcatTwoListThenFirstIsPrefix!2476 lt!1373470 suffix!1176))))

(declare-fun b!3931681 () Bool)

(assert (=> b!3931681 (= e!2432256 e!2432282)))

(declare-fun res!1590767 () Bool)

(assert (=> b!3931681 (=> (not res!1590767) (not e!2432282))))

(declare-fun lt!1373475 () tuple2!41024)

(assert (=> b!3931681 (= res!1590767 (= lt!1373475 (tuple2!41025 lt!1373501 suffixResult!91)))))

(assert (=> b!3931681 (= lt!1373475 (lexList!1875 thiss!20629 rules!2768 lt!1373486))))

(assert (=> b!3931681 (= lt!1373501 (++!10793 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3931681 (= lt!1373486 (++!10794 prefix!426 suffix!1176))))

(declare-fun b!3931682 () Bool)

(declare-fun res!1590769 () Bool)

(assert (=> b!3931682 (=> res!1590769 e!2432278)))

(declare-fun isEmpty!24887 (List!41869) Bool)

(assert (=> b!3931682 (= res!1590769 (not (isEmpty!24887 suffix!1176)))))

(declare-fun b!3931683 () Bool)

(declare-fun tp!1196785 () Bool)

(assert (=> b!3931683 (= e!2432247 (and (inv!21 (value!206397 (h!47167 prefixTokens!80))) e!2432279 tp!1196785))))

(declare-fun b!3931684 () Bool)

(declare-fun e!2432244 () Bool)

(declare-fun e!2432270 () Bool)

(assert (=> b!3931684 (= e!2432244 e!2432270)))

(declare-fun res!1590782 () Bool)

(assert (=> b!3931684 (=> res!1590782 e!2432270)))

(assert (=> b!3931684 (= res!1590782 (not (= lt!1373475 (tuple2!41025 (++!10793 lt!1373471 (_1!23646 lt!1373504)) (_2!23646 lt!1373504)))))))

(assert (=> b!3931684 (= lt!1373471 (Cons!41747 (_1!23645 (v!39265 lt!1373503)) Nil!41747))))

(declare-fun e!2432272 () Bool)

(assert (=> b!3931685 (= e!2432272 (and tp!1196781 tp!1196779))))

(declare-fun b!3931686 () Bool)

(assert (=> b!3931686 (= e!2432254 (not e!2432244))))

(declare-fun res!1590775 () Bool)

(assert (=> b!3931686 (=> res!1590775 e!2432244)))

(assert (=> b!3931686 (= res!1590775 (not (= lt!1373480 lt!1373486)))))

(assert (=> b!3931686 (= lt!1373504 (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373503))))))

(declare-fun lt!1373472 () List!41869)

(declare-fun lt!1373498 () TokenValue!6748)

(declare-fun lt!1373481 () Int)

(assert (=> b!3931686 (and (= (size!31319 (_1!23645 (v!39265 lt!1373503))) lt!1373481) (= (originalCharacters!7118 (_1!23645 (v!39265 lt!1373503))) lt!1373502) (= (tuple2!41023 (_1!23645 (v!39265 lt!1373503)) (_2!23645 (v!39265 lt!1373503))) (tuple2!41023 (Token!12175 lt!1373498 (rule!9464 (_1!23645 (v!39265 lt!1373503))) lt!1373481 lt!1373502) lt!1373472)))))

(assert (=> b!3931686 (= lt!1373481 (size!31320 lt!1373502))))

(assert (=> b!3931686 e!2432252))

(declare-fun res!1590764 () Bool)

(assert (=> b!3931686 (=> (not res!1590764) (not e!2432252))))

(assert (=> b!3931686 (= res!1590764 (= (value!206397 (_1!23645 (v!39265 lt!1373503))) lt!1373498))))

(declare-fun apply!9757 (TokenValueInjection!12924 BalanceConc!25052) TokenValue!6748)

(declare-fun seqFromList!4785 (List!41869) BalanceConc!25052)

(assert (=> b!3931686 (= lt!1373498 (apply!9757 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (seqFromList!4785 lt!1373502)))))

(assert (=> b!3931686 (= (_2!23645 (v!39265 lt!1373503)) lt!1373472)))

(declare-fun lt!1373506 () Unit!60172)

(assert (=> b!3931686 (= lt!1373506 (lemmaSamePrefixThenSameSuffix!1834 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 lt!1373472 lt!1373486))))

(assert (=> b!3931686 (= lt!1373472 (getSuffix!2068 lt!1373486 lt!1373502))))

(assert (=> b!3931686 (isPrefix!3613 lt!1373502 lt!1373480)))

(assert (=> b!3931686 (= lt!1373480 (++!10794 lt!1373502 (_2!23645 (v!39265 lt!1373503))))))

(declare-fun lt!1373493 () Unit!60172)

(assert (=> b!3931686 (= lt!1373493 (lemmaConcatTwoListThenFirstIsPrefix!2476 lt!1373502 (_2!23645 (v!39265 lt!1373503))))))

(declare-fun list!15511 (BalanceConc!25052) List!41869)

(declare-fun charsOf!4342 (Token!12174) BalanceConc!25052)

(assert (=> b!3931686 (= lt!1373502 (list!15511 (charsOf!4342 (_1!23645 (v!39265 lt!1373503)))))))

(declare-fun ruleValid!2466 (LexerInterface!6107 Rule!12836) Bool)

(assert (=> b!3931686 (ruleValid!2466 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))))))

(declare-fun lt!1373494 () Unit!60172)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1546 (LexerInterface!6107 Rule!12836 List!41872) Unit!60172)

(assert (=> b!3931686 (= lt!1373494 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1546 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))) rules!2768))))

(declare-fun lt!1373517 () Unit!60172)

(declare-fun lemmaCharactersSize!1175 (Token!12174) Unit!60172)

(assert (=> b!3931686 (= lt!1373517 (lemmaCharactersSize!1175 (_1!23645 (v!39265 lt!1373503))))))

(declare-fun b!3931687 () Bool)

(declare-fun res!1590788 () Bool)

(assert (=> b!3931687 (=> (not res!1590788) (not e!2432256))))

(declare-fun isEmpty!24888 (List!41872) Bool)

(assert (=> b!3931687 (= res!1590788 (not (isEmpty!24888 rules!2768)))))

(declare-fun b!3931688 () Bool)

(declare-fun res!1590776 () Bool)

(assert (=> b!3931688 (=> (not res!1590776) (not e!2432256))))

(assert (=> b!3931688 (= res!1590776 (not (isEmpty!24887 prefix!426)))))

(declare-fun b!3931689 () Bool)

(declare-fun e!2432255 () Unit!60172)

(declare-fun Unit!60178 () Unit!60172)

(assert (=> b!3931689 (= e!2432255 Unit!60178)))

(declare-fun b!3931690 () Bool)

(declare-fun tp!1196784 () Bool)

(assert (=> b!3931690 (= e!2432257 (and tp_is_empty!19817 tp!1196784))))

(declare-fun b!3931691 () Bool)

(assert (=> b!3931691 (= e!2432270 e!2432253)))

(declare-fun res!1590789 () Bool)

(assert (=> b!3931691 (=> res!1590789 e!2432253)))

(declare-fun lt!1373500 () Int)

(declare-fun lt!1373499 () Int)

(assert (=> b!3931691 (= res!1590789 (<= lt!1373500 lt!1373499))))

(declare-fun lt!1373478 () Unit!60172)

(assert (=> b!3931691 (= lt!1373478 e!2432255)))

(declare-fun c!683128 () Bool)

(assert (=> b!3931691 (= c!683128 (= lt!1373500 lt!1373499))))

(declare-fun lt!1373492 () Unit!60172)

(assert (=> b!3931691 (= lt!1373492 e!2432268)))

(declare-fun c!683125 () Bool)

(assert (=> b!3931691 (= c!683125 (< lt!1373500 lt!1373499))))

(assert (=> b!3931691 (= lt!1373499 (size!31320 suffix!1176))))

(assert (=> b!3931691 (= lt!1373500 (size!31320 (_2!23645 (v!39265 lt!1373503))))))

(declare-fun b!3931692 () Bool)

(declare-fun Unit!60179 () Unit!60172)

(assert (=> b!3931692 (= e!2432268 Unit!60179)))

(declare-fun lt!1373477 () Int)

(assert (=> b!3931692 (= lt!1373477 (size!31320 lt!1373486))))

(declare-fun lt!1373490 () Unit!60172)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1349 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41869 Rule!12836) Unit!60172)

(assert (=> b!3931692 (= lt!1373490 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1349 thiss!20629 rules!2768 lt!1373502 lt!1373486 (_2!23645 (v!39265 lt!1373503)) (rule!9464 (_1!23645 (v!39265 lt!1373503)))))))

(declare-fun maxPrefixOneRule!2481 (LexerInterface!6107 Rule!12836 List!41869) Option!8938)

(assert (=> b!3931692 (= (maxPrefixOneRule!2481 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))) lt!1373486) (Some!8937 (tuple2!41023 (Token!12175 lt!1373498 (rule!9464 (_1!23645 (v!39265 lt!1373503))) lt!1373481 lt!1373502) (_2!23645 (v!39265 lt!1373503)))))))

(declare-fun get!13797 (Option!8938) tuple2!41022)

(assert (=> b!3931692 (= lt!1373483 (get!13797 lt!1373503))))

(declare-fun c!683127 () Bool)

(assert (=> b!3931692 (= c!683127 (< (size!31320 (_2!23645 lt!1373483)) lt!1373499))))

(declare-fun lt!1373476 () Unit!60172)

(assert (=> b!3931692 (= lt!1373476 e!2432275)))

(assert (=> b!3931692 false))

(declare-fun b!3931693 () Bool)

(declare-fun Unit!60180 () Unit!60172)

(assert (=> b!3931693 (= e!2432255 Unit!60180)))

(declare-fun lt!1373485 () Unit!60172)

(assert (=> b!3931693 (= lt!1373485 (lemmaConcatTwoListThenFirstIsPrefix!2476 prefix!426 suffix!1176))))

(assert (=> b!3931693 (isPrefix!3613 prefix!426 lt!1373486)))

(declare-fun lt!1373469 () Unit!60172)

(declare-fun lemmaIsPrefixSameLengthThenSameList!809 (List!41869 List!41869 List!41869) Unit!60172)

(assert (=> b!3931693 (= lt!1373469 (lemmaIsPrefixSameLengthThenSameList!809 lt!1373502 prefix!426 lt!1373486))))

(assert (=> b!3931693 (= lt!1373502 prefix!426)))

(declare-fun lt!1373474 () Unit!60172)

(assert (=> b!3931693 (= lt!1373474 (lemmaSamePrefixThenSameSuffix!1834 lt!1373502 (_2!23645 (v!39265 lt!1373503)) prefix!426 suffix!1176 lt!1373486))))

(assert (=> b!3931693 false))

(declare-fun b!3931694 () Bool)

(declare-fun Unit!60181 () Unit!60172)

(assert (=> b!3931694 (= e!2432275 Unit!60181)))

(declare-fun b!3931695 () Bool)

(assert (=> b!3931695 (= e!2432278 (isEmpty!24887 suffixResult!91))))

(declare-fun bm!284865 () Bool)

(assert (=> bm!284865 (= call!284870 (lexList!1875 thiss!20629 rules!2768 (_2!23645 lt!1373483)))))

(declare-fun tp!1196782 () Bool)

(declare-fun b!3931696 () Bool)

(assert (=> b!3931696 (= e!2432248 (and (inv!55942 (h!47167 suffixTokens!72)) e!2432266 tp!1196782))))

(declare-fun b!3931697 () Bool)

(declare-fun Unit!60182 () Unit!60172)

(assert (=> b!3931697 (= e!2432273 Unit!60182)))

(declare-fun lt!1373484 () Unit!60172)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!566 (List!41869 List!41869 List!41869 List!41869) Unit!60172)

(assert (=> b!3931697 (= lt!1373484 (lemmaConcatSameAndSameSizesThenSameLists!566 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 (_2!23645 lt!1373483)))))

(assert (=> b!3931697 (= (_2!23645 (v!39265 lt!1373503)) (_2!23645 lt!1373483))))

(declare-fun lt!1373507 () Unit!60172)

(assert (=> b!3931697 (= lt!1373507 (lemmaLexWithSmallerInputCannotProduceSameResults!118 thiss!20629 rules!2768 suffix!1176 (_2!23645 lt!1373483) suffixTokens!72 suffixResult!91))))

(declare-fun res!1590780 () Bool)

(assert (=> b!3931697 (= res!1590780 (not (= call!284870 lt!1373495)))))

(assert (=> b!3931697 (=> (not res!1590780) (not e!2432262))))

(assert (=> b!3931697 e!2432262))

(declare-fun b!3931698 () Bool)

(assert (=> b!3931698 (= e!2432253 e!2432258)))

(declare-fun res!1590779 () Bool)

(assert (=> b!3931698 (=> res!1590779 e!2432258)))

(assert (=> b!3931698 (= res!1590779 (>= lt!1373481 (size!31320 prefix!426)))))

(assert (=> b!3931698 (isPrefix!3613 lt!1373502 prefix!426)))

(declare-fun lt!1373468 () Unit!60172)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!291 (List!41869 List!41869 List!41869) Unit!60172)

(assert (=> b!3931698 (= lt!1373468 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!291 prefix!426 lt!1373502 lt!1373486))))

(assert (=> b!3931698 (isPrefix!3613 prefix!426 lt!1373486)))

(declare-fun lt!1373505 () Unit!60172)

(assert (=> b!3931698 (= lt!1373505 (lemmaConcatTwoListThenFirstIsPrefix!2476 prefix!426 suffix!1176))))

(declare-fun b!3931699 () Bool)

(declare-fun tp!1196789 () Bool)

(assert (=> b!3931699 (= e!2432283 (and tp!1196789 (inv!55939 (tag!7378 (h!47168 rules!2768))) (inv!55943 (transformation!6518 (h!47168 rules!2768))) e!2432272))))

(declare-fun b!3931700 () Bool)

(declare-fun res!1590790 () Bool)

(assert (=> b!3931700 (=> res!1590790 e!2432270)))

(assert (=> b!3931700 (= res!1590790 (or (not (= lt!1373504 (tuple2!41025 (_1!23646 lt!1373504) (_2!23646 lt!1373504)))) (= (_2!23645 (v!39265 lt!1373503)) suffix!1176)))))

(assert (= (and start!368852 res!1590774) b!3931687))

(assert (= (and b!3931687 res!1590788) b!3931668))

(assert (= (and b!3931668 res!1590784) b!3931656))

(assert (= (and b!3931656 res!1590783) b!3931688))

(assert (= (and b!3931688 res!1590776) b!3931681))

(assert (= (and b!3931681 res!1590767) b!3931667))

(assert (= (and b!3931667 res!1590772) b!3931661))

(assert (= (and b!3931661 res!1590787) b!3931686))

(assert (= (and b!3931686 res!1590764) b!3931657))

(assert (= (and b!3931686 (not res!1590775)) b!3931684))

(assert (= (and b!3931684 (not res!1590782)) b!3931700))

(assert (= (and b!3931700 (not res!1590790)) b!3931691))

(assert (= (and b!3931691 c!683125) b!3931692))

(assert (= (and b!3931691 (not c!683125)) b!3931676))

(assert (= (and b!3931692 c!683127) b!3931653))

(assert (= (and b!3931692 (not c!683127)) b!3931694))

(assert (= (and b!3931653 c!683129) b!3931697))

(assert (= (and b!3931653 (not c!683129)) b!3931651))

(assert (= (and b!3931697 res!1590780) b!3931673))

(assert (= (and b!3931651 res!1590785) b!3931678))

(assert (= (or b!3931697 b!3931651) bm!284865))

(assert (= (and b!3931691 c!683128) b!3931693))

(assert (= (and b!3931691 (not c!683128)) b!3931689))

(assert (= (and b!3931691 (not res!1590789)) b!3931677))

(assert (= (and b!3931677 (not res!1590766)) b!3931698))

(assert (= (and b!3931698 (not res!1590779)) b!3931674))

(assert (= (and b!3931674 (not res!1590771)) b!3931654))

(assert (= (and b!3931654 (not res!1590777)) b!3931660))

(assert (= (and b!3931660 (not res!1590786)) b!3931650))

(assert (= (and b!3931650 (not res!1590781)) b!3931680))

(assert (= (and b!3931680 (not res!1590765)) b!3931662))

(assert (= (and b!3931662 c!683126) b!3931666))

(assert (= (and b!3931662 (not c!683126)) b!3931671))

(assert (= (and b!3931662 (not res!1590770)) b!3931659))

(assert (= (and b!3931659 (not res!1590778)) b!3931665))

(assert (= (and b!3931665 (not res!1590768)) b!3931682))

(assert (= (and b!3931682 (not res!1590769)) b!3931655))

(assert (= (and b!3931655 (not res!1590773)) b!3931695))

(assert (= (and start!368852 ((_ is Cons!41745) suffixResult!91)) b!3931690))

(assert (= (and start!368852 ((_ is Cons!41745) suffix!1176)) b!3931658))

(assert (= b!3931699 b!3931685))

(assert (= b!3931670 b!3931699))

(assert (= (and start!368852 ((_ is Cons!41748) rules!2768)) b!3931670))

(assert (= b!3931675 b!3931664))

(assert (= b!3931683 b!3931675))

(assert (= b!3931652 b!3931683))

(assert (= (and start!368852 ((_ is Cons!41747) prefixTokens!80)) b!3931652))

(assert (= b!3931663 b!3931672))

(assert (= b!3931679 b!3931663))

(assert (= b!3931696 b!3931679))

(assert (= (and start!368852 ((_ is Cons!41747) suffixTokens!72)) b!3931696))

(assert (= (and start!368852 ((_ is Cons!41745) prefix!426)) b!3931669))

(declare-fun m!4497587 () Bool)

(assert (=> b!3931686 m!4497587))

(declare-fun m!4497589 () Bool)

(assert (=> b!3931686 m!4497589))

(assert (=> b!3931686 m!4497587))

(declare-fun m!4497591 () Bool)

(assert (=> b!3931686 m!4497591))

(declare-fun m!4497593 () Bool)

(assert (=> b!3931686 m!4497593))

(declare-fun m!4497595 () Bool)

(assert (=> b!3931686 m!4497595))

(declare-fun m!4497597 () Bool)

(assert (=> b!3931686 m!4497597))

(declare-fun m!4497599 () Bool)

(assert (=> b!3931686 m!4497599))

(declare-fun m!4497601 () Bool)

(assert (=> b!3931686 m!4497601))

(declare-fun m!4497603 () Bool)

(assert (=> b!3931686 m!4497603))

(declare-fun m!4497605 () Bool)

(assert (=> b!3931686 m!4497605))

(declare-fun m!4497607 () Bool)

(assert (=> b!3931686 m!4497607))

(declare-fun m!4497609 () Bool)

(assert (=> b!3931686 m!4497609))

(declare-fun m!4497611 () Bool)

(assert (=> b!3931686 m!4497611))

(assert (=> b!3931686 m!4497599))

(declare-fun m!4497613 () Bool)

(assert (=> b!3931686 m!4497613))

(declare-fun m!4497615 () Bool)

(assert (=> b!3931665 m!4497615))

(declare-fun m!4497617 () Bool)

(assert (=> b!3931665 m!4497617))

(declare-fun m!4497619 () Bool)

(assert (=> b!3931675 m!4497619))

(declare-fun m!4497621 () Bool)

(assert (=> b!3931675 m!4497621))

(declare-fun m!4497623 () Bool)

(assert (=> b!3931662 m!4497623))

(declare-fun m!4497625 () Bool)

(assert (=> b!3931662 m!4497625))

(declare-fun m!4497627 () Bool)

(assert (=> b!3931662 m!4497627))

(declare-fun m!4497629 () Bool)

(assert (=> b!3931662 m!4497629))

(declare-fun m!4497631 () Bool)

(assert (=> b!3931662 m!4497631))

(assert (=> b!3931662 m!4497625))

(declare-fun m!4497633 () Bool)

(assert (=> b!3931663 m!4497633))

(declare-fun m!4497635 () Bool)

(assert (=> b!3931663 m!4497635))

(declare-fun m!4497637 () Bool)

(assert (=> b!3931696 m!4497637))

(declare-fun m!4497639 () Bool)

(assert (=> b!3931677 m!4497639))

(declare-fun m!4497641 () Bool)

(assert (=> b!3931674 m!4497641))

(declare-fun m!4497643 () Bool)

(assert (=> b!3931674 m!4497643))

(declare-fun m!4497645 () Bool)

(assert (=> b!3931697 m!4497645))

(declare-fun m!4497647 () Bool)

(assert (=> b!3931697 m!4497647))

(declare-fun m!4497649 () Bool)

(assert (=> b!3931656 m!4497649))

(declare-fun m!4497651 () Bool)

(assert (=> b!3931660 m!4497651))

(declare-fun m!4497653 () Bool)

(assert (=> b!3931660 m!4497653))

(declare-fun m!4497655 () Bool)

(assert (=> b!3931660 m!4497655))

(declare-fun m!4497657 () Bool)

(assert (=> b!3931679 m!4497657))

(declare-fun m!4497659 () Bool)

(assert (=> b!3931659 m!4497659))

(declare-fun m!4497661 () Bool)

(assert (=> b!3931695 m!4497661))

(declare-fun m!4497663 () Bool)

(assert (=> b!3931681 m!4497663))

(declare-fun m!4497665 () Bool)

(assert (=> b!3931681 m!4497665))

(declare-fun m!4497667 () Bool)

(assert (=> b!3931681 m!4497667))

(declare-fun m!4497669 () Bool)

(assert (=> b!3931655 m!4497669))

(declare-fun m!4497671 () Bool)

(assert (=> b!3931684 m!4497671))

(declare-fun m!4497673 () Bool)

(assert (=> b!3931683 m!4497673))

(declare-fun m!4497675 () Bool)

(assert (=> b!3931666 m!4497675))

(declare-fun m!4497677 () Bool)

(assert (=> bm!284865 m!4497677))

(declare-fun m!4497679 () Bool)

(assert (=> b!3931652 m!4497679))

(declare-fun m!4497681 () Bool)

(assert (=> b!3931650 m!4497681))

(declare-fun m!4497683 () Bool)

(assert (=> b!3931650 m!4497683))

(declare-fun m!4497685 () Bool)

(assert (=> b!3931650 m!4497685))

(declare-fun m!4497687 () Bool)

(assert (=> b!3931654 m!4497687))

(declare-fun m!4497689 () Bool)

(assert (=> b!3931699 m!4497689))

(declare-fun m!4497691 () Bool)

(assert (=> b!3931699 m!4497691))

(declare-fun m!4497693 () Bool)

(assert (=> b!3931653 m!4497693))

(declare-fun m!4497695 () Bool)

(assert (=> b!3931653 m!4497695))

(declare-fun m!4497697 () Bool)

(assert (=> b!3931661 m!4497697))

(declare-fun m!4497699 () Bool)

(assert (=> b!3931680 m!4497699))

(assert (=> b!3931680 m!4497695))

(declare-fun m!4497701 () Bool)

(assert (=> b!3931680 m!4497701))

(declare-fun m!4497703 () Bool)

(assert (=> b!3931680 m!4497703))

(declare-fun m!4497705 () Bool)

(assert (=> b!3931688 m!4497705))

(declare-fun m!4497707 () Bool)

(assert (=> b!3931692 m!4497707))

(declare-fun m!4497709 () Bool)

(assert (=> b!3931692 m!4497709))

(declare-fun m!4497711 () Bool)

(assert (=> b!3931692 m!4497711))

(declare-fun m!4497713 () Bool)

(assert (=> b!3931692 m!4497713))

(declare-fun m!4497715 () Bool)

(assert (=> b!3931692 m!4497715))

(declare-fun m!4497717 () Bool)

(assert (=> b!3931687 m!4497717))

(declare-fun m!4497719 () Bool)

(assert (=> b!3931693 m!4497719))

(declare-fun m!4497721 () Bool)

(assert (=> b!3931693 m!4497721))

(declare-fun m!4497723 () Bool)

(assert (=> b!3931693 m!4497723))

(declare-fun m!4497725 () Bool)

(assert (=> b!3931693 m!4497725))

(declare-fun m!4497727 () Bool)

(assert (=> b!3931691 m!4497727))

(declare-fun m!4497729 () Bool)

(assert (=> b!3931691 m!4497729))

(declare-fun m!4497731 () Bool)

(assert (=> b!3931698 m!4497731))

(declare-fun m!4497733 () Bool)

(assert (=> b!3931698 m!4497733))

(assert (=> b!3931698 m!4497719))

(assert (=> b!3931698 m!4497721))

(declare-fun m!4497735 () Bool)

(assert (=> b!3931698 m!4497735))

(declare-fun m!4497737 () Bool)

(assert (=> b!3931657 m!4497737))

(declare-fun m!4497739 () Bool)

(assert (=> b!3931651 m!4497739))

(declare-fun m!4497741 () Bool)

(assert (=> b!3931651 m!4497741))

(declare-fun m!4497743 () Bool)

(assert (=> b!3931682 m!4497743))

(declare-fun m!4497745 () Bool)

(assert (=> b!3931667 m!4497745))

(declare-fun m!4497747 () Bool)

(assert (=> b!3931668 m!4497747))

(check-sat (not b!3931699) (not b!3931656) (not b!3931681) (not b!3931680) b_and!300079 (not b_next!108023) b_and!300071 (not b!3931679) (not b!3931665) (not b!3931655) (not b_next!108015) (not b!3931657) (not b!3931688) (not b!3931653) (not b!3931692) (not b!3931684) (not b!3931661) (not b_next!108013) (not b!3931659) (not b!3931652) (not b_next!108021) (not b!3931650) (not b!3931690) b_and!300075 (not bm!284865) (not b!3931668) (not b!3931651) (not b!3931674) (not b!3931687) (not b!3931667) (not b!3931662) (not b!3931660) (not b!3931663) (not b!3931691) (not b_next!108017) (not b!3931686) b_and!300073 (not b!3931693) (not b!3931683) (not b!3931698) (not b_next!108019) (not b!3931666) (not b!3931697) (not b!3931682) (not b!3931695) b_and!300077 (not b!3931696) (not b!3931677) (not b!3931658) b_and!300081 (not b!3931670) (not b!3931669) (not b!3931675) (not b!3931654) tp_is_empty!19817)
(check-sat (not b_next!108013) b_and!300079 (not b_next!108017) (not b_next!108023) b_and!300073 b_and!300071 (not b_next!108019) b_and!300077 b_and!300081 (not b_next!108015) (not b_next!108021) b_and!300075)
(get-model)

(declare-fun b!3931710 () Bool)

(declare-fun e!2432290 () List!41869)

(assert (=> b!3931710 (= e!2432290 (Cons!41745 (h!47165 lt!1373502) (++!10794 (t!325726 lt!1373502) (_2!23645 (v!39265 lt!1373503)))))))

(declare-fun d!1165718 () Bool)

(declare-fun e!2432289 () Bool)

(assert (=> d!1165718 e!2432289))

(declare-fun res!1590801 () Bool)

(assert (=> d!1165718 (=> (not res!1590801) (not e!2432289))))

(declare-fun lt!1373520 () List!41869)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6288 (List!41869) (InoxSet C!23032))

(assert (=> d!1165718 (= res!1590801 (= (content!6288 lt!1373520) ((_ map or) (content!6288 lt!1373502) (content!6288 (_2!23645 (v!39265 lt!1373503))))))))

(assert (=> d!1165718 (= lt!1373520 e!2432290)))

(declare-fun c!683134 () Bool)

(assert (=> d!1165718 (= c!683134 ((_ is Nil!41745) lt!1373502))))

(assert (=> d!1165718 (= (++!10794 lt!1373502 (_2!23645 (v!39265 lt!1373503))) lt!1373520)))

(declare-fun b!3931711 () Bool)

(declare-fun res!1590802 () Bool)

(assert (=> b!3931711 (=> (not res!1590802) (not e!2432289))))

(assert (=> b!3931711 (= res!1590802 (= (size!31320 lt!1373520) (+ (size!31320 lt!1373502) (size!31320 (_2!23645 (v!39265 lt!1373503))))))))

(declare-fun b!3931709 () Bool)

(assert (=> b!3931709 (= e!2432290 (_2!23645 (v!39265 lt!1373503)))))

(declare-fun b!3931712 () Bool)

(assert (=> b!3931712 (= e!2432289 (or (not (= (_2!23645 (v!39265 lt!1373503)) Nil!41745)) (= lt!1373520 lt!1373502)))))

(assert (= (and d!1165718 c!683134) b!3931709))

(assert (= (and d!1165718 (not c!683134)) b!3931710))

(assert (= (and d!1165718 res!1590801) b!3931711))

(assert (= (and b!3931711 res!1590802) b!3931712))

(declare-fun m!4497749 () Bool)

(assert (=> b!3931710 m!4497749))

(declare-fun m!4497751 () Bool)

(assert (=> d!1165718 m!4497751))

(declare-fun m!4497753 () Bool)

(assert (=> d!1165718 m!4497753))

(declare-fun m!4497755 () Bool)

(assert (=> d!1165718 m!4497755))

(declare-fun m!4497757 () Bool)

(assert (=> b!3931711 m!4497757))

(assert (=> b!3931711 m!4497609))

(assert (=> b!3931711 m!4497729))

(assert (=> b!3931686 d!1165718))

(declare-fun b!3931734 () Bool)

(declare-fun e!2432304 () Bool)

(declare-fun lt!1373527 () tuple2!41024)

(assert (=> b!3931734 (= e!2432304 (not (isEmpty!24886 (_1!23646 lt!1373527))))))

(declare-fun b!3931735 () Bool)

(declare-fun e!2432303 () Bool)

(assert (=> b!3931735 (= e!2432303 e!2432304)))

(declare-fun res!1590815 () Bool)

(assert (=> b!3931735 (= res!1590815 (< (size!31320 (_2!23646 lt!1373527)) (size!31320 (_2!23645 (v!39265 lt!1373503)))))))

(assert (=> b!3931735 (=> (not res!1590815) (not e!2432304))))

(declare-fun b!3931736 () Bool)

(declare-fun e!2432305 () tuple2!41024)

(assert (=> b!3931736 (= e!2432305 (tuple2!41025 Nil!41747 (_2!23645 (v!39265 lt!1373503))))))

(declare-fun b!3931737 () Bool)

(declare-fun lt!1373528 () Option!8938)

(declare-fun lt!1373529 () tuple2!41024)

(assert (=> b!3931737 (= e!2432305 (tuple2!41025 (Cons!41747 (_1!23645 (v!39265 lt!1373528)) (_1!23646 lt!1373529)) (_2!23646 lt!1373529)))))

(assert (=> b!3931737 (= lt!1373529 (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373528))))))

(declare-fun d!1165720 () Bool)

(assert (=> d!1165720 e!2432303))

(declare-fun c!683139 () Bool)

(declare-fun size!31322 (List!41871) Int)

(assert (=> d!1165720 (= c!683139 (> (size!31322 (_1!23646 lt!1373527)) 0))))

(assert (=> d!1165720 (= lt!1373527 e!2432305)))

(declare-fun c!683140 () Bool)

(assert (=> d!1165720 (= c!683140 ((_ is Some!8937) lt!1373528))))

(assert (=> d!1165720 (= lt!1373528 (maxPrefix!3411 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373503))))))

(assert (=> d!1165720 (= (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373503))) lt!1373527)))

(declare-fun b!3931738 () Bool)

(assert (=> b!3931738 (= e!2432303 (= (_2!23646 lt!1373527) (_2!23645 (v!39265 lt!1373503))))))

(assert (= (and d!1165720 c!683140) b!3931737))

(assert (= (and d!1165720 (not c!683140)) b!3931736))

(assert (= (and d!1165720 c!683139) b!3931735))

(assert (= (and d!1165720 (not c!683139)) b!3931738))

(assert (= (and b!3931735 res!1590815) b!3931734))

(declare-fun m!4497771 () Bool)

(assert (=> b!3931734 m!4497771))

(declare-fun m!4497773 () Bool)

(assert (=> b!3931735 m!4497773))

(assert (=> b!3931735 m!4497729))

(declare-fun m!4497775 () Bool)

(assert (=> b!3931737 m!4497775))

(declare-fun m!4497777 () Bool)

(assert (=> d!1165720 m!4497777))

(declare-fun m!4497779 () Bool)

(assert (=> d!1165720 m!4497779))

(assert (=> b!3931686 d!1165720))

(declare-fun d!1165726 () Bool)

(declare-fun dynLambda!17888 (Int BalanceConc!25052) TokenValue!6748)

(assert (=> d!1165726 (= (apply!9757 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (seqFromList!4785 lt!1373502)) (dynLambda!17888 (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503))))) (seqFromList!4785 lt!1373502)))))

(declare-fun b_lambda!115021 () Bool)

(assert (=> (not b_lambda!115021) (not d!1165726)))

(declare-fun tb!235139 () Bool)

(declare-fun t!325737 () Bool)

(assert (=> (and b!3931672 (= (toValue!8974 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325737) tb!235139))

(declare-fun result!284890 () Bool)

(assert (=> tb!235139 (= result!284890 (inv!21 (dynLambda!17888 (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503))))) (seqFromList!4785 lt!1373502))))))

(declare-fun m!4497781 () Bool)

(assert (=> tb!235139 m!4497781))

(assert (=> d!1165726 t!325737))

(declare-fun b_and!300089 () Bool)

(assert (= b_and!300071 (and (=> t!325737 result!284890) b_and!300089)))

(declare-fun tb!235141 () Bool)

(declare-fun t!325739 () Bool)

(assert (=> (and b!3931664 (= (toValue!8974 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325739) tb!235141))

(declare-fun result!284894 () Bool)

(assert (= result!284894 result!284890))

(assert (=> d!1165726 t!325739))

(declare-fun b_and!300091 () Bool)

(assert (= b_and!300075 (and (=> t!325739 result!284894) b_and!300091)))

(declare-fun t!325741 () Bool)

(declare-fun tb!235143 () Bool)

(assert (=> (and b!3931685 (= (toValue!8974 (transformation!6518 (h!47168 rules!2768))) (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325741) tb!235143))

(declare-fun result!284896 () Bool)

(assert (= result!284896 result!284890))

(assert (=> d!1165726 t!325741))

(declare-fun b_and!300093 () Bool)

(assert (= b_and!300079 (and (=> t!325741 result!284896) b_and!300093)))

(assert (=> d!1165726 m!4497599))

(declare-fun m!4497783 () Bool)

(assert (=> d!1165726 m!4497783))

(assert (=> b!3931686 d!1165726))

(declare-fun d!1165728 () Bool)

(declare-fun res!1590825 () Bool)

(declare-fun e!2432326 () Bool)

(assert (=> d!1165728 (=> (not res!1590825) (not e!2432326))))

(declare-fun validRegex!5199 (Regex!11423) Bool)

(assert (=> d!1165728 (= res!1590825 (validRegex!5199 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503))))))))

(assert (=> d!1165728 (= (ruleValid!2466 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) e!2432326)))

(declare-fun b!3931770 () Bool)

(declare-fun res!1590826 () Bool)

(assert (=> b!3931770 (=> (not res!1590826) (not e!2432326))))

(declare-fun nullable!4000 (Regex!11423) Bool)

(assert (=> b!3931770 (= res!1590826 (not (nullable!4000 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))))))

(declare-fun b!3931771 () Bool)

(assert (=> b!3931771 (= e!2432326 (not (= (tag!7378 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (String!47459 ""))))))

(assert (= (and d!1165728 res!1590825) b!3931770))

(assert (= (and b!3931770 res!1590826) b!3931771))

(declare-fun m!4497795 () Bool)

(assert (=> d!1165728 m!4497795))

(declare-fun m!4497797 () Bool)

(assert (=> b!3931770 m!4497797))

(assert (=> b!3931686 d!1165728))

(declare-fun d!1165734 () Bool)

(declare-fun fromListB!2209 (List!41869) BalanceConc!25052)

(assert (=> d!1165734 (= (seqFromList!4785 lt!1373502) (fromListB!2209 lt!1373502))))

(declare-fun bs!586241 () Bool)

(assert (= bs!586241 d!1165734))

(declare-fun m!4497805 () Bool)

(assert (=> bs!586241 m!4497805))

(assert (=> b!3931686 d!1165734))

(declare-fun d!1165738 () Bool)

(assert (=> d!1165738 (= (size!31319 (_1!23645 (v!39265 lt!1373503))) (size!31320 (originalCharacters!7118 (_1!23645 (v!39265 lt!1373503)))))))

(declare-fun Unit!60183 () Unit!60172)

(assert (=> d!1165738 (= (lemmaCharactersSize!1175 (_1!23645 (v!39265 lt!1373503))) Unit!60183)))

(declare-fun bs!586242 () Bool)

(assert (= bs!586242 d!1165738))

(assert (=> bs!586242 m!4497737))

(assert (=> b!3931686 d!1165738))

(declare-fun d!1165744 () Bool)

(declare-fun lt!1373548 () BalanceConc!25052)

(assert (=> d!1165744 (= (list!15511 lt!1373548) (originalCharacters!7118 (_1!23645 (v!39265 lt!1373503))))))

(declare-fun dynLambda!17889 (Int TokenValue!6748) BalanceConc!25052)

(assert (=> d!1165744 (= lt!1373548 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503))))) (value!206397 (_1!23645 (v!39265 lt!1373503)))))))

(assert (=> d!1165744 (= (charsOf!4342 (_1!23645 (v!39265 lt!1373503))) lt!1373548)))

(declare-fun b_lambda!115023 () Bool)

(assert (=> (not b_lambda!115023) (not d!1165744)))

(declare-fun t!325743 () Bool)

(declare-fun tb!235145 () Bool)

(assert (=> (and b!3931672 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325743) tb!235145))

(declare-fun b!3931800 () Bool)

(declare-fun e!2432343 () Bool)

(declare-fun tp!1196800 () Bool)

(declare-fun inv!55946 (Conc!12729) Bool)

(assert (=> b!3931800 (= e!2432343 (and (inv!55946 (c!683131 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503))))) (value!206397 (_1!23645 (v!39265 lt!1373503)))))) tp!1196800))))

(declare-fun result!284898 () Bool)

(declare-fun inv!55947 (BalanceConc!25052) Bool)

(assert (=> tb!235145 (= result!284898 (and (inv!55947 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503))))) (value!206397 (_1!23645 (v!39265 lt!1373503))))) e!2432343))))

(assert (= tb!235145 b!3931800))

(declare-fun m!4497841 () Bool)

(assert (=> b!3931800 m!4497841))

(declare-fun m!4497843 () Bool)

(assert (=> tb!235145 m!4497843))

(assert (=> d!1165744 t!325743))

(declare-fun b_and!300095 () Bool)

(assert (= b_and!300073 (and (=> t!325743 result!284898) b_and!300095)))

(declare-fun t!325745 () Bool)

(declare-fun tb!235147 () Bool)

(assert (=> (and b!3931664 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325745) tb!235147))

(declare-fun result!284902 () Bool)

(assert (= result!284902 result!284898))

(assert (=> d!1165744 t!325745))

(declare-fun b_and!300097 () Bool)

(assert (= b_and!300077 (and (=> t!325745 result!284902) b_and!300097)))

(declare-fun tb!235149 () Bool)

(declare-fun t!325747 () Bool)

(assert (=> (and b!3931685 (= (toChars!8833 (transformation!6518 (h!47168 rules!2768))) (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325747) tb!235149))

(declare-fun result!284904 () Bool)

(assert (= result!284904 result!284898))

(assert (=> d!1165744 t!325747))

(declare-fun b_and!300099 () Bool)

(assert (= b_and!300081 (and (=> t!325747 result!284904) b_and!300099)))

(declare-fun m!4497845 () Bool)

(assert (=> d!1165744 m!4497845))

(declare-fun m!4497847 () Bool)

(assert (=> d!1165744 m!4497847))

(assert (=> b!3931686 d!1165744))

(declare-fun d!1165752 () Bool)

(assert (=> d!1165752 (ruleValid!2466 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))))))

(declare-fun lt!1373551 () Unit!60172)

(declare-fun choose!23378 (LexerInterface!6107 Rule!12836 List!41872) Unit!60172)

(assert (=> d!1165752 (= lt!1373551 (choose!23378 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))) rules!2768))))

(declare-fun contains!8366 (List!41872 Rule!12836) Bool)

(assert (=> d!1165752 (contains!8366 rules!2768 (rule!9464 (_1!23645 (v!39265 lt!1373503))))))

(assert (=> d!1165752 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1546 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))) rules!2768) lt!1373551)))

(declare-fun bs!586244 () Bool)

(assert (= bs!586244 d!1165752))

(assert (=> bs!586244 m!4497591))

(declare-fun m!4497849 () Bool)

(assert (=> bs!586244 m!4497849))

(declare-fun m!4497851 () Bool)

(assert (=> bs!586244 m!4497851))

(assert (=> b!3931686 d!1165752))

(declare-fun d!1165754 () Bool)

(declare-fun lt!1373557 () Int)

(assert (=> d!1165754 (>= lt!1373557 0)))

(declare-fun e!2432346 () Int)

(assert (=> d!1165754 (= lt!1373557 e!2432346)))

(declare-fun c!683159 () Bool)

(assert (=> d!1165754 (= c!683159 ((_ is Nil!41745) lt!1373502))))

(assert (=> d!1165754 (= (size!31320 lt!1373502) lt!1373557)))

(declare-fun b!3931805 () Bool)

(assert (=> b!3931805 (= e!2432346 0)))

(declare-fun b!3931806 () Bool)

(assert (=> b!3931806 (= e!2432346 (+ 1 (size!31320 (t!325726 lt!1373502))))))

(assert (= (and d!1165754 c!683159) b!3931805))

(assert (= (and d!1165754 (not c!683159)) b!3931806))

(declare-fun m!4497855 () Bool)

(assert (=> b!3931806 m!4497855))

(assert (=> b!3931686 d!1165754))

(declare-fun d!1165758 () Bool)

(assert (=> d!1165758 (= (_2!23645 (v!39265 lt!1373503)) lt!1373472)))

(declare-fun lt!1373563 () Unit!60172)

(declare-fun choose!23379 (List!41869 List!41869 List!41869 List!41869 List!41869) Unit!60172)

(assert (=> d!1165758 (= lt!1373563 (choose!23379 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 lt!1373472 lt!1373486))))

(assert (=> d!1165758 (isPrefix!3613 lt!1373502 lt!1373486)))

(assert (=> d!1165758 (= (lemmaSamePrefixThenSameSuffix!1834 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 lt!1373472 lt!1373486) lt!1373563)))

(declare-fun bs!586246 () Bool)

(assert (= bs!586246 d!1165758))

(declare-fun m!4497871 () Bool)

(assert (=> bs!586246 m!4497871))

(declare-fun m!4497873 () Bool)

(assert (=> bs!586246 m!4497873))

(assert (=> b!3931686 d!1165758))

(declare-fun b!3931830 () Bool)

(declare-fun e!2432359 () Bool)

(assert (=> b!3931830 (= e!2432359 (>= (size!31320 lt!1373480) (size!31320 lt!1373502)))))

(declare-fun b!3931829 () Bool)

(declare-fun e!2432361 () Bool)

(declare-fun tail!6072 (List!41869) List!41869)

(assert (=> b!3931829 (= e!2432361 (isPrefix!3613 (tail!6072 lt!1373502) (tail!6072 lt!1373480)))))

(declare-fun b!3931827 () Bool)

(declare-fun e!2432360 () Bool)

(assert (=> b!3931827 (= e!2432360 e!2432361)))

(declare-fun res!1590855 () Bool)

(assert (=> b!3931827 (=> (not res!1590855) (not e!2432361))))

(assert (=> b!3931827 (= res!1590855 (not ((_ is Nil!41745) lt!1373480)))))

(declare-fun d!1165762 () Bool)

(assert (=> d!1165762 e!2432359))

(declare-fun res!1590854 () Bool)

(assert (=> d!1165762 (=> res!1590854 e!2432359)))

(declare-fun lt!1373566 () Bool)

(assert (=> d!1165762 (= res!1590854 (not lt!1373566))))

(assert (=> d!1165762 (= lt!1373566 e!2432360)))

(declare-fun res!1590853 () Bool)

(assert (=> d!1165762 (=> res!1590853 e!2432360)))

(assert (=> d!1165762 (= res!1590853 ((_ is Nil!41745) lt!1373502))))

(assert (=> d!1165762 (= (isPrefix!3613 lt!1373502 lt!1373480) lt!1373566)))

(declare-fun b!3931828 () Bool)

(declare-fun res!1590856 () Bool)

(assert (=> b!3931828 (=> (not res!1590856) (not e!2432361))))

(declare-fun head!8346 (List!41869) C!23032)

(assert (=> b!3931828 (= res!1590856 (= (head!8346 lt!1373502) (head!8346 lt!1373480)))))

(assert (= (and d!1165762 (not res!1590853)) b!3931827))

(assert (= (and b!3931827 res!1590855) b!3931828))

(assert (= (and b!3931828 res!1590856) b!3931829))

(assert (= (and d!1165762 (not res!1590854)) b!3931830))

(declare-fun m!4497875 () Bool)

(assert (=> b!3931830 m!4497875))

(assert (=> b!3931830 m!4497609))

(declare-fun m!4497877 () Bool)

(assert (=> b!3931829 m!4497877))

(declare-fun m!4497879 () Bool)

(assert (=> b!3931829 m!4497879))

(assert (=> b!3931829 m!4497877))

(assert (=> b!3931829 m!4497879))

(declare-fun m!4497881 () Bool)

(assert (=> b!3931829 m!4497881))

(declare-fun m!4497883 () Bool)

(assert (=> b!3931828 m!4497883))

(declare-fun m!4497885 () Bool)

(assert (=> b!3931828 m!4497885))

(assert (=> b!3931686 d!1165762))

(declare-fun d!1165764 () Bool)

(assert (=> d!1165764 (isPrefix!3613 lt!1373502 (++!10794 lt!1373502 (_2!23645 (v!39265 lt!1373503))))))

(declare-fun lt!1373569 () Unit!60172)

(declare-fun choose!23381 (List!41869 List!41869) Unit!60172)

(assert (=> d!1165764 (= lt!1373569 (choose!23381 lt!1373502 (_2!23645 (v!39265 lt!1373503))))))

(assert (=> d!1165764 (= (lemmaConcatTwoListThenFirstIsPrefix!2476 lt!1373502 (_2!23645 (v!39265 lt!1373503))) lt!1373569)))

(declare-fun bs!586247 () Bool)

(assert (= bs!586247 d!1165764))

(assert (=> bs!586247 m!4497607))

(assert (=> bs!586247 m!4497607))

(declare-fun m!4497887 () Bool)

(assert (=> bs!586247 m!4497887))

(declare-fun m!4497889 () Bool)

(assert (=> bs!586247 m!4497889))

(assert (=> b!3931686 d!1165764))

(declare-fun d!1165766 () Bool)

(declare-fun lt!1373572 () List!41869)

(assert (=> d!1165766 (= (++!10794 lt!1373502 lt!1373572) lt!1373486)))

(declare-fun e!2432364 () List!41869)

(assert (=> d!1165766 (= lt!1373572 e!2432364)))

(declare-fun c!683165 () Bool)

(assert (=> d!1165766 (= c!683165 ((_ is Cons!41745) lt!1373502))))

(assert (=> d!1165766 (>= (size!31320 lt!1373486) (size!31320 lt!1373502))))

(assert (=> d!1165766 (= (getSuffix!2068 lt!1373486 lt!1373502) lt!1373572)))

(declare-fun b!3931835 () Bool)

(assert (=> b!3931835 (= e!2432364 (getSuffix!2068 (tail!6072 lt!1373486) (t!325726 lt!1373502)))))

(declare-fun b!3931836 () Bool)

(assert (=> b!3931836 (= e!2432364 lt!1373486)))

(assert (= (and d!1165766 c!683165) b!3931835))

(assert (= (and d!1165766 (not c!683165)) b!3931836))

(declare-fun m!4497891 () Bool)

(assert (=> d!1165766 m!4497891))

(assert (=> d!1165766 m!4497715))

(assert (=> d!1165766 m!4497609))

(declare-fun m!4497893 () Bool)

(assert (=> b!3931835 m!4497893))

(assert (=> b!3931835 m!4497893))

(declare-fun m!4497895 () Bool)

(assert (=> b!3931835 m!4497895))

(assert (=> b!3931686 d!1165766))

(declare-fun d!1165768 () Bool)

(declare-fun list!15512 (Conc!12729) List!41869)

(assert (=> d!1165768 (= (list!15511 (charsOf!4342 (_1!23645 (v!39265 lt!1373503)))) (list!15512 (c!683131 (charsOf!4342 (_1!23645 (v!39265 lt!1373503))))))))

(declare-fun bs!586248 () Bool)

(assert (= bs!586248 d!1165768))

(declare-fun m!4497897 () Bool)

(assert (=> bs!586248 m!4497897))

(assert (=> b!3931686 d!1165768))

(declare-fun b!3931837 () Bool)

(declare-fun e!2432366 () Bool)

(declare-fun lt!1373573 () tuple2!41024)

(assert (=> b!3931837 (= e!2432366 (not (isEmpty!24886 (_1!23646 lt!1373573))))))

(declare-fun b!3931838 () Bool)

(declare-fun e!2432365 () Bool)

(assert (=> b!3931838 (= e!2432365 e!2432366)))

(declare-fun res!1590857 () Bool)

(assert (=> b!3931838 (= res!1590857 (< (size!31320 (_2!23646 lt!1373573)) (size!31320 lt!1373470)))))

(assert (=> b!3931838 (=> (not res!1590857) (not e!2432366))))

(declare-fun b!3931839 () Bool)

(declare-fun e!2432367 () tuple2!41024)

(assert (=> b!3931839 (= e!2432367 (tuple2!41025 Nil!41747 lt!1373470))))

(declare-fun b!3931840 () Bool)

(declare-fun lt!1373574 () Option!8938)

(declare-fun lt!1373575 () tuple2!41024)

(assert (=> b!3931840 (= e!2432367 (tuple2!41025 (Cons!41747 (_1!23645 (v!39265 lt!1373574)) (_1!23646 lt!1373575)) (_2!23646 lt!1373575)))))

(assert (=> b!3931840 (= lt!1373575 (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373574))))))

(declare-fun d!1165770 () Bool)

(assert (=> d!1165770 e!2432365))

(declare-fun c!683166 () Bool)

(assert (=> d!1165770 (= c!683166 (> (size!31322 (_1!23646 lt!1373573)) 0))))

(assert (=> d!1165770 (= lt!1373573 e!2432367)))

(declare-fun c!683167 () Bool)

(assert (=> d!1165770 (= c!683167 ((_ is Some!8937) lt!1373574))))

(assert (=> d!1165770 (= lt!1373574 (maxPrefix!3411 thiss!20629 rules!2768 lt!1373470))))

(assert (=> d!1165770 (= (lexList!1875 thiss!20629 rules!2768 lt!1373470) lt!1373573)))

(declare-fun b!3931841 () Bool)

(assert (=> b!3931841 (= e!2432365 (= (_2!23646 lt!1373573) lt!1373470))))

(assert (= (and d!1165770 c!683167) b!3931840))

(assert (= (and d!1165770 (not c!683167)) b!3931839))

(assert (= (and d!1165770 c!683166) b!3931838))

(assert (= (and d!1165770 (not c!683166)) b!3931841))

(assert (= (and b!3931838 res!1590857) b!3931837))

(declare-fun m!4497899 () Bool)

(assert (=> b!3931837 m!4497899))

(declare-fun m!4497901 () Bool)

(assert (=> b!3931838 m!4497901))

(declare-fun m!4497903 () Bool)

(assert (=> b!3931838 m!4497903))

(declare-fun m!4497905 () Bool)

(assert (=> b!3931840 m!4497905))

(declare-fun m!4497907 () Bool)

(assert (=> d!1165770 m!4497907))

(declare-fun m!4497909 () Bool)

(assert (=> d!1165770 m!4497909))

(assert (=> b!3931665 d!1165770))

(declare-fun d!1165772 () Bool)

(assert (=> d!1165772 (= (lexList!1875 thiss!20629 rules!2768 lt!1373470) (tuple2!41025 lt!1373488 Nil!41745))))

(declare-fun lt!1373597 () Unit!60172)

(declare-fun choose!23382 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41871 List!41871 List!41869) Unit!60172)

(assert (=> d!1165772 (= lt!1373597 (choose!23382 thiss!20629 rules!2768 lt!1373470 suffix!1176 lt!1373488 suffixTokens!72 suffixResult!91))))

(assert (=> d!1165772 (not (isEmpty!24888 rules!2768))))

(assert (=> d!1165772 (= (lemmaLexThenLexPrefix!603 thiss!20629 rules!2768 lt!1373470 suffix!1176 lt!1373488 suffixTokens!72 suffixResult!91) lt!1373597)))

(declare-fun bs!586249 () Bool)

(assert (= bs!586249 d!1165772))

(assert (=> bs!586249 m!4497615))

(declare-fun m!4497967 () Bool)

(assert (=> bs!586249 m!4497967))

(assert (=> bs!586249 m!4497717))

(assert (=> b!3931665 d!1165772))

(declare-fun b!3931909 () Bool)

(declare-fun e!2432400 () List!41871)

(assert (=> b!3931909 (= e!2432400 (_1!23646 lt!1373504))))

(declare-fun b!3931910 () Bool)

(assert (=> b!3931910 (= e!2432400 (Cons!41747 (h!47167 lt!1373471) (++!10793 (t!325728 lt!1373471) (_1!23646 lt!1373504))))))

(declare-fun d!1165780 () Bool)

(declare-fun e!2432401 () Bool)

(assert (=> d!1165780 e!2432401))

(declare-fun res!1590892 () Bool)

(assert (=> d!1165780 (=> (not res!1590892) (not e!2432401))))

(declare-fun lt!1373612 () List!41871)

(declare-fun content!6290 (List!41871) (InoxSet Token!12174))

(assert (=> d!1165780 (= res!1590892 (= (content!6290 lt!1373612) ((_ map or) (content!6290 lt!1373471) (content!6290 (_1!23646 lt!1373504)))))))

(assert (=> d!1165780 (= lt!1373612 e!2432400)))

(declare-fun c!683184 () Bool)

(assert (=> d!1165780 (= c!683184 ((_ is Nil!41747) lt!1373471))))

(assert (=> d!1165780 (= (++!10793 lt!1373471 (_1!23646 lt!1373504)) lt!1373612)))

(declare-fun b!3931911 () Bool)

(declare-fun res!1590893 () Bool)

(assert (=> b!3931911 (=> (not res!1590893) (not e!2432401))))

(assert (=> b!3931911 (= res!1590893 (= (size!31322 lt!1373612) (+ (size!31322 lt!1373471) (size!31322 (_1!23646 lt!1373504)))))))

(declare-fun b!3931912 () Bool)

(assert (=> b!3931912 (= e!2432401 (or (not (= (_1!23646 lt!1373504) Nil!41747)) (= lt!1373612 lt!1373471)))))

(assert (= (and d!1165780 c!683184) b!3931909))

(assert (= (and d!1165780 (not c!683184)) b!3931910))

(assert (= (and d!1165780 res!1590892) b!3931911))

(assert (= (and b!3931911 res!1590893) b!3931912))

(declare-fun m!4498015 () Bool)

(assert (=> b!3931910 m!4498015))

(declare-fun m!4498017 () Bool)

(assert (=> d!1165780 m!4498017))

(declare-fun m!4498019 () Bool)

(assert (=> d!1165780 m!4498019))

(declare-fun m!4498021 () Bool)

(assert (=> d!1165780 m!4498021))

(declare-fun m!4498023 () Bool)

(assert (=> b!3931911 m!4498023))

(declare-fun m!4498025 () Bool)

(assert (=> b!3931911 m!4498025))

(declare-fun m!4498027 () Bool)

(assert (=> b!3931911 m!4498027))

(assert (=> b!3931684 d!1165780))

(declare-fun d!1165806 () Bool)

(assert (=> d!1165806 (= (inv!55939 (tag!7378 (rule!9464 (h!47167 suffixTokens!72)))) (= (mod (str.len (value!206396 (tag!7378 (rule!9464 (h!47167 suffixTokens!72))))) 2) 0))))

(assert (=> b!3931663 d!1165806))

(declare-fun d!1165808 () Bool)

(declare-fun res!1590908 () Bool)

(declare-fun e!2432413 () Bool)

(assert (=> d!1165808 (=> (not res!1590908) (not e!2432413))))

(declare-fun semiInverseModEq!2801 (Int Int) Bool)

(assert (=> d!1165808 (= res!1590908 (semiInverseModEq!2801 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (toValue!8974 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))))))

(assert (=> d!1165808 (= (inv!55943 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) e!2432413)))

(declare-fun b!3931927 () Bool)

(declare-fun equivClasses!2700 (Int Int) Bool)

(assert (=> b!3931927 (= e!2432413 (equivClasses!2700 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (toValue!8974 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))))))

(assert (= (and d!1165808 res!1590908) b!3931927))

(declare-fun m!4498033 () Bool)

(assert (=> d!1165808 m!4498033))

(declare-fun m!4498037 () Bool)

(assert (=> b!3931927 m!4498037))

(assert (=> b!3931663 d!1165808))

(declare-fun d!1165810 () Bool)

(assert (=> d!1165810 (= (isEmpty!24887 prefix!426) ((_ is Nil!41745) prefix!426))))

(assert (=> b!3931688 d!1165810))

(declare-fun b!3931928 () Bool)

(declare-fun e!2432415 () Bool)

(declare-fun lt!1373617 () tuple2!41024)

(assert (=> b!3931928 (= e!2432415 (not (isEmpty!24886 (_1!23646 lt!1373617))))))

(declare-fun b!3931929 () Bool)

(declare-fun e!2432414 () Bool)

(assert (=> b!3931929 (= e!2432414 e!2432415)))

(declare-fun res!1590909 () Bool)

(assert (=> b!3931929 (= res!1590909 (< (size!31320 (_2!23646 lt!1373617)) (size!31320 suffix!1176)))))

(assert (=> b!3931929 (=> (not res!1590909) (not e!2432415))))

(declare-fun b!3931930 () Bool)

(declare-fun e!2432416 () tuple2!41024)

(assert (=> b!3931930 (= e!2432416 (tuple2!41025 Nil!41747 suffix!1176))))

(declare-fun b!3931931 () Bool)

(declare-fun lt!1373618 () Option!8938)

(declare-fun lt!1373619 () tuple2!41024)

(assert (=> b!3931931 (= e!2432416 (tuple2!41025 (Cons!41747 (_1!23645 (v!39265 lt!1373618)) (_1!23646 lt!1373619)) (_2!23646 lt!1373619)))))

(assert (=> b!3931931 (= lt!1373619 (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373618))))))

(declare-fun d!1165814 () Bool)

(assert (=> d!1165814 e!2432414))

(declare-fun c!683185 () Bool)

(assert (=> d!1165814 (= c!683185 (> (size!31322 (_1!23646 lt!1373617)) 0))))

(assert (=> d!1165814 (= lt!1373617 e!2432416)))

(declare-fun c!683186 () Bool)

(assert (=> d!1165814 (= c!683186 ((_ is Some!8937) lt!1373618))))

(assert (=> d!1165814 (= lt!1373618 (maxPrefix!3411 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1165814 (= (lexList!1875 thiss!20629 rules!2768 suffix!1176) lt!1373617)))

(declare-fun b!3931932 () Bool)

(assert (=> b!3931932 (= e!2432414 (= (_2!23646 lt!1373617) suffix!1176))))

(assert (= (and d!1165814 c!683186) b!3931931))

(assert (= (and d!1165814 (not c!683186)) b!3931930))

(assert (= (and d!1165814 c!683185) b!3931929))

(assert (= (and d!1165814 (not c!683185)) b!3931932))

(assert (= (and b!3931929 res!1590909) b!3931928))

(declare-fun m!4498045 () Bool)

(assert (=> b!3931928 m!4498045))

(declare-fun m!4498047 () Bool)

(assert (=> b!3931929 m!4498047))

(assert (=> b!3931929 m!4497727))

(declare-fun m!4498049 () Bool)

(assert (=> b!3931931 m!4498049))

(declare-fun m!4498051 () Bool)

(assert (=> d!1165814 m!4498051))

(declare-fun m!4498053 () Bool)

(assert (=> d!1165814 m!4498053))

(assert (=> b!3931667 d!1165814))

(declare-fun d!1165816 () Bool)

(assert (=> d!1165816 (not (= (lexList!1875 thiss!20629 rules!2768 suffix!1176) (tuple2!41025 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1373628 () Unit!60172)

(declare-fun choose!23384 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41871 List!41869) Unit!60172)

(assert (=> d!1165816 (= lt!1373628 (choose!23384 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373503)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1165816 (not (isEmpty!24888 rules!2768))))

(assert (=> d!1165816 (= (lemmaLexWithSmallerInputCannotProduceSameResults!118 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373503)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1373628)))

(declare-fun bs!586254 () Bool)

(assert (= bs!586254 d!1165816))

(assert (=> bs!586254 m!4497745))

(declare-fun m!4498063 () Bool)

(assert (=> bs!586254 m!4498063))

(assert (=> bs!586254 m!4497717))

(assert (=> b!3931666 d!1165816))

(declare-fun d!1165822 () Bool)

(assert (=> d!1165822 (= (isEmpty!24888 rules!2768) ((_ is Nil!41748) rules!2768))))

(assert (=> b!3931687 d!1165822))

(declare-fun d!1165824 () Bool)

(declare-fun lt!1373629 () Int)

(assert (=> d!1165824 (>= lt!1373629 0)))

(declare-fun e!2432417 () Int)

(assert (=> d!1165824 (= lt!1373629 e!2432417)))

(declare-fun c!683187 () Bool)

(assert (=> d!1165824 (= c!683187 ((_ is Nil!41745) suffix!1176))))

(assert (=> d!1165824 (= (size!31320 suffix!1176) lt!1373629)))

(declare-fun b!3931933 () Bool)

(assert (=> b!3931933 (= e!2432417 0)))

(declare-fun b!3931934 () Bool)

(assert (=> b!3931934 (= e!2432417 (+ 1 (size!31320 (t!325726 suffix!1176))))))

(assert (= (and d!1165824 c!683187) b!3931933))

(assert (= (and d!1165824 (not c!683187)) b!3931934))

(declare-fun m!4498065 () Bool)

(assert (=> b!3931934 m!4498065))

(assert (=> b!3931691 d!1165824))

(declare-fun d!1165826 () Bool)

(declare-fun lt!1373630 () Int)

(assert (=> d!1165826 (>= lt!1373630 0)))

(declare-fun e!2432418 () Int)

(assert (=> d!1165826 (= lt!1373630 e!2432418)))

(declare-fun c!683188 () Bool)

(assert (=> d!1165826 (= c!683188 ((_ is Nil!41745) (_2!23645 (v!39265 lt!1373503))))))

(assert (=> d!1165826 (= (size!31320 (_2!23645 (v!39265 lt!1373503))) lt!1373630)))

(declare-fun b!3931935 () Bool)

(assert (=> b!3931935 (= e!2432418 0)))

(declare-fun b!3931936 () Bool)

(assert (=> b!3931936 (= e!2432418 (+ 1 (size!31320 (t!325726 (_2!23645 (v!39265 lt!1373503))))))))

(assert (= (and d!1165826 c!683188) b!3931935))

(assert (= (and d!1165826 (not c!683188)) b!3931936))

(declare-fun m!4498067 () Bool)

(assert (=> b!3931936 m!4498067))

(assert (=> b!3931691 d!1165826))

(declare-fun d!1165828 () Bool)

(declare-fun res!1590912 () Bool)

(declare-fun e!2432421 () Bool)

(assert (=> d!1165828 (=> (not res!1590912) (not e!2432421))))

(declare-fun rulesValid!2534 (LexerInterface!6107 List!41872) Bool)

(assert (=> d!1165828 (= res!1590912 (rulesValid!2534 thiss!20629 rules!2768))))

(assert (=> d!1165828 (= (rulesInvariant!5450 thiss!20629 rules!2768) e!2432421)))

(declare-fun b!3931939 () Bool)

(declare-datatypes ((List!41873 0))(
  ( (Nil!41749) (Cons!41749 (h!47169 String!47458) (t!325826 List!41873)) )
))
(declare-fun noDuplicateTag!2535 (LexerInterface!6107 List!41872 List!41873) Bool)

(assert (=> b!3931939 (= e!2432421 (noDuplicateTag!2535 thiss!20629 rules!2768 Nil!41749))))

(assert (= (and d!1165828 res!1590912) b!3931939))

(declare-fun m!4498071 () Bool)

(assert (=> d!1165828 m!4498071))

(declare-fun m!4498073 () Bool)

(assert (=> b!3931939 m!4498073))

(assert (=> b!3931668 d!1165828))

(declare-fun d!1165832 () Bool)

(assert (=> d!1165832 (not (= (lexList!1875 thiss!20629 rules!2768 (_2!23645 lt!1373483)) (tuple2!41025 (++!10793 lt!1373510 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1373653 () Unit!60172)

(declare-fun choose!23387 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41871 List!41869 List!41871) Unit!60172)

(assert (=> d!1165832 (= lt!1373653 (choose!23387 thiss!20629 rules!2768 suffix!1176 (_2!23645 lt!1373483) suffixTokens!72 suffixResult!91 lt!1373510))))

(assert (=> d!1165832 (not (isEmpty!24888 rules!2768))))

(assert (=> d!1165832 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!118 thiss!20629 rules!2768 suffix!1176 (_2!23645 lt!1373483) suffixTokens!72 suffixResult!91 lt!1373510) lt!1373653)))

(declare-fun bs!586262 () Bool)

(assert (= bs!586262 d!1165832))

(assert (=> bs!586262 m!4497677))

(assert (=> bs!586262 m!4497741))

(declare-fun m!4498131 () Bool)

(assert (=> bs!586262 m!4498131))

(assert (=> bs!586262 m!4497717))

(assert (=> b!3931651 d!1165832))

(declare-fun b!3931962 () Bool)

(declare-fun e!2432435 () List!41871)

(assert (=> b!3931962 (= e!2432435 suffixTokens!72)))

(declare-fun b!3931963 () Bool)

(assert (=> b!3931963 (= e!2432435 (Cons!41747 (h!47167 lt!1373510) (++!10793 (t!325728 lt!1373510) suffixTokens!72)))))

(declare-fun d!1165858 () Bool)

(declare-fun e!2432436 () Bool)

(assert (=> d!1165858 e!2432436))

(declare-fun res!1590920 () Bool)

(assert (=> d!1165858 (=> (not res!1590920) (not e!2432436))))

(declare-fun lt!1373654 () List!41871)

(assert (=> d!1165858 (= res!1590920 (= (content!6290 lt!1373654) ((_ map or) (content!6290 lt!1373510) (content!6290 suffixTokens!72))))))

(assert (=> d!1165858 (= lt!1373654 e!2432435)))

(declare-fun c!683196 () Bool)

(assert (=> d!1165858 (= c!683196 ((_ is Nil!41747) lt!1373510))))

(assert (=> d!1165858 (= (++!10793 lt!1373510 suffixTokens!72) lt!1373654)))

(declare-fun b!3931964 () Bool)

(declare-fun res!1590921 () Bool)

(assert (=> b!3931964 (=> (not res!1590921) (not e!2432436))))

(assert (=> b!3931964 (= res!1590921 (= (size!31322 lt!1373654) (+ (size!31322 lt!1373510) (size!31322 suffixTokens!72))))))

(declare-fun b!3931965 () Bool)

(assert (=> b!3931965 (= e!2432436 (or (not (= suffixTokens!72 Nil!41747)) (= lt!1373654 lt!1373510)))))

(assert (= (and d!1165858 c!683196) b!3931962))

(assert (= (and d!1165858 (not c!683196)) b!3931963))

(assert (= (and d!1165858 res!1590920) b!3931964))

(assert (= (and b!3931964 res!1590921) b!3931965))

(declare-fun m!4498133 () Bool)

(assert (=> b!3931963 m!4498133))

(declare-fun m!4498135 () Bool)

(assert (=> d!1165858 m!4498135))

(declare-fun m!4498137 () Bool)

(assert (=> d!1165858 m!4498137))

(declare-fun m!4498139 () Bool)

(assert (=> d!1165858 m!4498139))

(declare-fun m!4498141 () Bool)

(assert (=> b!3931964 m!4498141))

(declare-fun m!4498143 () Bool)

(assert (=> b!3931964 m!4498143))

(declare-fun m!4498145 () Bool)

(assert (=> b!3931964 m!4498145))

(assert (=> b!3931651 d!1165858))

(declare-fun d!1165860 () Bool)

(assert (=> d!1165860 (= (_2!23645 (v!39265 lt!1373503)) lt!1373482)))

(declare-fun lt!1373655 () Unit!60172)

(assert (=> d!1165860 (= lt!1373655 (choose!23379 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 lt!1373482 lt!1373486))))

(assert (=> d!1165860 (isPrefix!3613 lt!1373502 lt!1373486)))

(assert (=> d!1165860 (= (lemmaSamePrefixThenSameSuffix!1834 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 lt!1373482 lt!1373486) lt!1373655)))

(declare-fun bs!586263 () Bool)

(assert (= bs!586263 d!1165860))

(declare-fun m!4498147 () Bool)

(assert (=> bs!586263 m!4498147))

(assert (=> bs!586263 m!4497873))

(assert (=> b!3931650 d!1165860))

(declare-fun b!3931971 () Bool)

(declare-fun e!2432437 () Bool)

(assert (=> b!3931971 (= e!2432437 (>= (size!31320 lt!1373512) (size!31320 lt!1373502)))))

(declare-fun b!3931970 () Bool)

(declare-fun e!2432439 () Bool)

(assert (=> b!3931970 (= e!2432439 (isPrefix!3613 (tail!6072 lt!1373502) (tail!6072 lt!1373512)))))

(declare-fun b!3931968 () Bool)

(declare-fun e!2432438 () Bool)

(assert (=> b!3931968 (= e!2432438 e!2432439)))

(declare-fun res!1590924 () Bool)

(assert (=> b!3931968 (=> (not res!1590924) (not e!2432439))))

(assert (=> b!3931968 (= res!1590924 (not ((_ is Nil!41745) lt!1373512)))))

(declare-fun d!1165862 () Bool)

(assert (=> d!1165862 e!2432437))

(declare-fun res!1590923 () Bool)

(assert (=> d!1165862 (=> res!1590923 e!2432437)))

(declare-fun lt!1373656 () Bool)

(assert (=> d!1165862 (= res!1590923 (not lt!1373656))))

(assert (=> d!1165862 (= lt!1373656 e!2432438)))

(declare-fun res!1590922 () Bool)

(assert (=> d!1165862 (=> res!1590922 e!2432438)))

(assert (=> d!1165862 (= res!1590922 ((_ is Nil!41745) lt!1373502))))

(assert (=> d!1165862 (= (isPrefix!3613 lt!1373502 lt!1373512) lt!1373656)))

(declare-fun b!3931969 () Bool)

(declare-fun res!1590925 () Bool)

(assert (=> b!3931969 (=> (not res!1590925) (not e!2432439))))

(assert (=> b!3931969 (= res!1590925 (= (head!8346 lt!1373502) (head!8346 lt!1373512)))))

(assert (= (and d!1165862 (not res!1590922)) b!3931968))

(assert (= (and b!3931968 res!1590924) b!3931969))

(assert (= (and b!3931969 res!1590925) b!3931970))

(assert (= (and d!1165862 (not res!1590923)) b!3931971))

(declare-fun m!4498151 () Bool)

(assert (=> b!3931971 m!4498151))

(assert (=> b!3931971 m!4497609))

(assert (=> b!3931970 m!4497877))

(declare-fun m!4498153 () Bool)

(assert (=> b!3931970 m!4498153))

(assert (=> b!3931970 m!4497877))

(assert (=> b!3931970 m!4498153))

(declare-fun m!4498155 () Bool)

(assert (=> b!3931970 m!4498155))

(assert (=> b!3931969 m!4497883))

(declare-fun m!4498157 () Bool)

(assert (=> b!3931969 m!4498157))

(assert (=> b!3931650 d!1165862))

(declare-fun d!1165864 () Bool)

(assert (=> d!1165864 (isPrefix!3613 lt!1373502 (++!10794 lt!1373502 lt!1373482))))

(declare-fun lt!1373657 () Unit!60172)

(assert (=> d!1165864 (= lt!1373657 (choose!23381 lt!1373502 lt!1373482))))

(assert (=> d!1165864 (= (lemmaConcatTwoListThenFirstIsPrefix!2476 lt!1373502 lt!1373482) lt!1373657)))

(declare-fun bs!586264 () Bool)

(assert (= bs!586264 d!1165864))

(assert (=> bs!586264 m!4497651))

(assert (=> bs!586264 m!4497651))

(declare-fun m!4498159 () Bool)

(assert (=> bs!586264 m!4498159))

(declare-fun m!4498161 () Bool)

(assert (=> bs!586264 m!4498161))

(assert (=> b!3931650 d!1165864))

(declare-fun d!1165866 () Bool)

(assert (=> d!1165866 (isPrefix!3613 prefix!426 (++!10794 prefix!426 suffix!1176))))

(declare-fun lt!1373658 () Unit!60172)

(assert (=> d!1165866 (= lt!1373658 (choose!23381 prefix!426 suffix!1176))))

(assert (=> d!1165866 (= (lemmaConcatTwoListThenFirstIsPrefix!2476 prefix!426 suffix!1176) lt!1373658)))

(declare-fun bs!586265 () Bool)

(assert (= bs!586265 d!1165866))

(assert (=> bs!586265 m!4497667))

(assert (=> bs!586265 m!4497667))

(declare-fun m!4498165 () Bool)

(assert (=> bs!586265 m!4498165))

(declare-fun m!4498167 () Bool)

(assert (=> bs!586265 m!4498167))

(assert (=> b!3931693 d!1165866))

(declare-fun b!3931975 () Bool)

(declare-fun e!2432443 () Bool)

(assert (=> b!3931975 (= e!2432443 (>= (size!31320 lt!1373486) (size!31320 prefix!426)))))

(declare-fun b!3931974 () Bool)

(declare-fun e!2432445 () Bool)

(assert (=> b!3931974 (= e!2432445 (isPrefix!3613 (tail!6072 prefix!426) (tail!6072 lt!1373486)))))

(declare-fun b!3931972 () Bool)

(declare-fun e!2432444 () Bool)

(assert (=> b!3931972 (= e!2432444 e!2432445)))

(declare-fun res!1590928 () Bool)

(assert (=> b!3931972 (=> (not res!1590928) (not e!2432445))))

(assert (=> b!3931972 (= res!1590928 (not ((_ is Nil!41745) lt!1373486)))))

(declare-fun d!1165870 () Bool)

(assert (=> d!1165870 e!2432443))

(declare-fun res!1590927 () Bool)

(assert (=> d!1165870 (=> res!1590927 e!2432443)))

(declare-fun lt!1373659 () Bool)

(assert (=> d!1165870 (= res!1590927 (not lt!1373659))))

(assert (=> d!1165870 (= lt!1373659 e!2432444)))

(declare-fun res!1590926 () Bool)

(assert (=> d!1165870 (=> res!1590926 e!2432444)))

(assert (=> d!1165870 (= res!1590926 ((_ is Nil!41745) prefix!426))))

(assert (=> d!1165870 (= (isPrefix!3613 prefix!426 lt!1373486) lt!1373659)))

(declare-fun b!3931973 () Bool)

(declare-fun res!1590929 () Bool)

(assert (=> b!3931973 (=> (not res!1590929) (not e!2432445))))

(assert (=> b!3931973 (= res!1590929 (= (head!8346 prefix!426) (head!8346 lt!1373486)))))

(assert (= (and d!1165870 (not res!1590926)) b!3931972))

(assert (= (and b!3931972 res!1590928) b!3931973))

(assert (= (and b!3931973 res!1590929) b!3931974))

(assert (= (and d!1165870 (not res!1590927)) b!3931975))

(assert (=> b!3931975 m!4497715))

(assert (=> b!3931975 m!4497733))

(declare-fun m!4498169 () Bool)

(assert (=> b!3931974 m!4498169))

(assert (=> b!3931974 m!4497893))

(assert (=> b!3931974 m!4498169))

(assert (=> b!3931974 m!4497893))

(declare-fun m!4498171 () Bool)

(assert (=> b!3931974 m!4498171))

(declare-fun m!4498173 () Bool)

(assert (=> b!3931973 m!4498173))

(declare-fun m!4498175 () Bool)

(assert (=> b!3931973 m!4498175))

(assert (=> b!3931693 d!1165870))

(declare-fun d!1165872 () Bool)

(assert (=> d!1165872 (= lt!1373502 prefix!426)))

(declare-fun lt!1373662 () Unit!60172)

(declare-fun choose!23390 (List!41869 List!41869 List!41869) Unit!60172)

(assert (=> d!1165872 (= lt!1373662 (choose!23390 lt!1373502 prefix!426 lt!1373486))))

(assert (=> d!1165872 (isPrefix!3613 lt!1373502 lt!1373486)))

(assert (=> d!1165872 (= (lemmaIsPrefixSameLengthThenSameList!809 lt!1373502 prefix!426 lt!1373486) lt!1373662)))

(declare-fun bs!586266 () Bool)

(assert (= bs!586266 d!1165872))

(declare-fun m!4498181 () Bool)

(assert (=> bs!586266 m!4498181))

(assert (=> bs!586266 m!4497873))

(assert (=> b!3931693 d!1165872))

(declare-fun d!1165876 () Bool)

(assert (=> d!1165876 (= (_2!23645 (v!39265 lt!1373503)) suffix!1176)))

(declare-fun lt!1373663 () Unit!60172)

(assert (=> d!1165876 (= lt!1373663 (choose!23379 lt!1373502 (_2!23645 (v!39265 lt!1373503)) prefix!426 suffix!1176 lt!1373486))))

(assert (=> d!1165876 (isPrefix!3613 lt!1373502 lt!1373486)))

(assert (=> d!1165876 (= (lemmaSamePrefixThenSameSuffix!1834 lt!1373502 (_2!23645 (v!39265 lt!1373503)) prefix!426 suffix!1176 lt!1373486) lt!1373663)))

(declare-fun bs!586267 () Bool)

(assert (= bs!586267 d!1165876))

(declare-fun m!4498183 () Bool)

(assert (=> bs!586267 m!4498183))

(assert (=> bs!586267 m!4497873))

(assert (=> b!3931693 d!1165876))

(declare-fun d!1165880 () Bool)

(declare-fun lt!1373664 () Int)

(assert (=> d!1165880 (>= lt!1373664 0)))

(declare-fun e!2432449 () Int)

(assert (=> d!1165880 (= lt!1373664 e!2432449)))

(declare-fun c!683197 () Bool)

(assert (=> d!1165880 (= c!683197 ((_ is Nil!41745) (_2!23645 lt!1373483)))))

(assert (=> d!1165880 (= (size!31320 (_2!23645 lt!1373483)) lt!1373664)))

(declare-fun b!3931982 () Bool)

(assert (=> b!3931982 (= e!2432449 0)))

(declare-fun b!3931983 () Bool)

(assert (=> b!3931983 (= e!2432449 (+ 1 (size!31320 (t!325726 (_2!23645 lt!1373483)))))))

(assert (= (and d!1165880 c!683197) b!3931982))

(assert (= (and d!1165880 (not c!683197)) b!3931983))

(declare-fun m!4498185 () Bool)

(assert (=> b!3931983 m!4498185))

(assert (=> b!3931692 d!1165880))

(declare-fun d!1165882 () Bool)

(assert (=> d!1165882 (= (get!13797 lt!1373503) (v!39265 lt!1373503))))

(assert (=> b!3931692 d!1165882))

(declare-fun d!1165890 () Bool)

(assert (=> d!1165890 (= (maxPrefixOneRule!2481 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))) lt!1373486) (Some!8937 (tuple2!41023 (Token!12175 (apply!9757 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (seqFromList!4785 lt!1373502)) (rule!9464 (_1!23645 (v!39265 lt!1373503))) (size!31320 lt!1373502) lt!1373502) (_2!23645 (v!39265 lt!1373503)))))))

(declare-fun lt!1373686 () Unit!60172)

(declare-fun choose!23391 (LexerInterface!6107 List!41872 List!41869 List!41869 List!41869 Rule!12836) Unit!60172)

(assert (=> d!1165890 (= lt!1373686 (choose!23391 thiss!20629 rules!2768 lt!1373502 lt!1373486 (_2!23645 (v!39265 lt!1373503)) (rule!9464 (_1!23645 (v!39265 lt!1373503)))))))

(assert (=> d!1165890 (not (isEmpty!24888 rules!2768))))

(assert (=> d!1165890 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1349 thiss!20629 rules!2768 lt!1373502 lt!1373486 (_2!23645 (v!39265 lt!1373503)) (rule!9464 (_1!23645 (v!39265 lt!1373503)))) lt!1373686)))

(declare-fun bs!586274 () Bool)

(assert (= bs!586274 d!1165890))

(assert (=> bs!586274 m!4497609))

(declare-fun m!4498261 () Bool)

(assert (=> bs!586274 m!4498261))

(assert (=> bs!586274 m!4497599))

(assert (=> bs!586274 m!4497601))

(assert (=> bs!586274 m!4497599))

(assert (=> bs!586274 m!4497717))

(assert (=> bs!586274 m!4497707))

(assert (=> b!3931692 d!1165890))

(declare-fun d!1165932 () Bool)

(declare-fun e!2432482 () Bool)

(assert (=> d!1165932 e!2432482))

(declare-fun res!1590976 () Bool)

(assert (=> d!1165932 (=> res!1590976 e!2432482)))

(declare-fun lt!1373703 () Option!8938)

(declare-fun isEmpty!24890 (Option!8938) Bool)

(assert (=> d!1165932 (= res!1590976 (isEmpty!24890 lt!1373703))))

(declare-fun e!2432479 () Option!8938)

(assert (=> d!1165932 (= lt!1373703 e!2432479)))

(declare-fun c!683206 () Bool)

(declare-datatypes ((tuple2!41026 0))(
  ( (tuple2!41027 (_1!23647 List!41869) (_2!23647 List!41869)) )
))
(declare-fun lt!1373704 () tuple2!41026)

(assert (=> d!1165932 (= c!683206 (isEmpty!24887 (_1!23647 lt!1373704)))))

(declare-fun findLongestMatch!1174 (Regex!11423 List!41869) tuple2!41026)

(assert (=> d!1165932 (= lt!1373704 (findLongestMatch!1174 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) lt!1373486))))

(assert (=> d!1165932 (ruleValid!2466 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))))))

(assert (=> d!1165932 (= (maxPrefixOneRule!2481 thiss!20629 (rule!9464 (_1!23645 (v!39265 lt!1373503))) lt!1373486) lt!1373703)))

(declare-fun b!3932035 () Bool)

(declare-fun res!1590971 () Bool)

(declare-fun e!2432481 () Bool)

(assert (=> b!3932035 (=> (not res!1590971) (not e!2432481))))

(assert (=> b!3932035 (= res!1590971 (= (++!10794 (list!15511 (charsOf!4342 (_1!23645 (get!13797 lt!1373703)))) (_2!23645 (get!13797 lt!1373703))) lt!1373486))))

(declare-fun b!3932036 () Bool)

(declare-fun res!1590975 () Bool)

(assert (=> b!3932036 (=> (not res!1590975) (not e!2432481))))

(assert (=> b!3932036 (= res!1590975 (= (rule!9464 (_1!23645 (get!13797 lt!1373703))) (rule!9464 (_1!23645 (v!39265 lt!1373503)))))))

(declare-fun b!3932037 () Bool)

(declare-fun res!1590973 () Bool)

(assert (=> b!3932037 (=> (not res!1590973) (not e!2432481))))

(assert (=> b!3932037 (= res!1590973 (< (size!31320 (_2!23645 (get!13797 lt!1373703))) (size!31320 lt!1373486)))))

(declare-fun b!3932038 () Bool)

(assert (=> b!3932038 (= e!2432482 e!2432481)))

(declare-fun res!1590977 () Bool)

(assert (=> b!3932038 (=> (not res!1590977) (not e!2432481))))

(declare-fun matchR!5482 (Regex!11423 List!41869) Bool)

(assert (=> b!3932038 (= res!1590977 (matchR!5482 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (list!15511 (charsOf!4342 (_1!23645 (get!13797 lt!1373703))))))))

(declare-fun b!3932039 () Bool)

(declare-fun size!31323 (BalanceConc!25052) Int)

(assert (=> b!3932039 (= e!2432479 (Some!8937 (tuple2!41023 (Token!12175 (apply!9757 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (seqFromList!4785 (_1!23647 lt!1373704))) (rule!9464 (_1!23645 (v!39265 lt!1373503))) (size!31323 (seqFromList!4785 (_1!23647 lt!1373704))) (_1!23647 lt!1373704)) (_2!23647 lt!1373704))))))

(declare-fun lt!1373701 () Unit!60172)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1234 (Regex!11423 List!41869) Unit!60172)

(assert (=> b!3932039 (= lt!1373701 (longestMatchIsAcceptedByMatchOrIsEmpty!1234 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) lt!1373486))))

(declare-fun res!1590974 () Bool)

(declare-fun findLongestMatchInner!1261 (Regex!11423 List!41869 Int List!41869 List!41869 Int) tuple2!41026)

(assert (=> b!3932039 (= res!1590974 (isEmpty!24887 (_1!23647 (findLongestMatchInner!1261 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) Nil!41745 (size!31320 Nil!41745) lt!1373486 lt!1373486 (size!31320 lt!1373486)))))))

(declare-fun e!2432480 () Bool)

(assert (=> b!3932039 (=> res!1590974 e!2432480)))

(assert (=> b!3932039 e!2432480))

(declare-fun lt!1373702 () Unit!60172)

(assert (=> b!3932039 (= lt!1373702 lt!1373701)))

(declare-fun lt!1373700 () Unit!60172)

(declare-fun lemmaSemiInverse!1767 (TokenValueInjection!12924 BalanceConc!25052) Unit!60172)

(assert (=> b!3932039 (= lt!1373700 (lemmaSemiInverse!1767 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (seqFromList!4785 (_1!23647 lt!1373704))))))

(declare-fun b!3932040 () Bool)

(declare-fun res!1590972 () Bool)

(assert (=> b!3932040 (=> (not res!1590972) (not e!2432481))))

(assert (=> b!3932040 (= res!1590972 (= (value!206397 (_1!23645 (get!13797 lt!1373703))) (apply!9757 (transformation!6518 (rule!9464 (_1!23645 (get!13797 lt!1373703)))) (seqFromList!4785 (originalCharacters!7118 (_1!23645 (get!13797 lt!1373703)))))))))

(declare-fun b!3932041 () Bool)

(assert (=> b!3932041 (= e!2432479 None!8937)))

(declare-fun b!3932042 () Bool)

(assert (=> b!3932042 (= e!2432481 (= (size!31319 (_1!23645 (get!13797 lt!1373703))) (size!31320 (originalCharacters!7118 (_1!23645 (get!13797 lt!1373703))))))))

(declare-fun b!3932043 () Bool)

(assert (=> b!3932043 (= e!2432480 (matchR!5482 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) (_1!23647 (findLongestMatchInner!1261 (regex!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))) Nil!41745 (size!31320 Nil!41745) lt!1373486 lt!1373486 (size!31320 lt!1373486)))))))

(assert (= (and d!1165932 c!683206) b!3932041))

(assert (= (and d!1165932 (not c!683206)) b!3932039))

(assert (= (and b!3932039 (not res!1590974)) b!3932043))

(assert (= (and d!1165932 (not res!1590976)) b!3932038))

(assert (= (and b!3932038 res!1590977) b!3932035))

(assert (= (and b!3932035 res!1590971) b!3932037))

(assert (= (and b!3932037 res!1590973) b!3932036))

(assert (= (and b!3932036 res!1590975) b!3932040))

(assert (= (and b!3932040 res!1590972) b!3932042))

(declare-fun m!4498265 () Bool)

(assert (=> d!1165932 m!4498265))

(declare-fun m!4498267 () Bool)

(assert (=> d!1165932 m!4498267))

(declare-fun m!4498269 () Bool)

(assert (=> d!1165932 m!4498269))

(assert (=> d!1165932 m!4497591))

(declare-fun m!4498271 () Bool)

(assert (=> b!3932043 m!4498271))

(assert (=> b!3932043 m!4497715))

(assert (=> b!3932043 m!4498271))

(assert (=> b!3932043 m!4497715))

(declare-fun m!4498273 () Bool)

(assert (=> b!3932043 m!4498273))

(declare-fun m!4498275 () Bool)

(assert (=> b!3932043 m!4498275))

(declare-fun m!4498277 () Bool)

(assert (=> b!3932036 m!4498277))

(assert (=> b!3932035 m!4498277))

(declare-fun m!4498279 () Bool)

(assert (=> b!3932035 m!4498279))

(assert (=> b!3932035 m!4498279))

(declare-fun m!4498281 () Bool)

(assert (=> b!3932035 m!4498281))

(assert (=> b!3932035 m!4498281))

(declare-fun m!4498283 () Bool)

(assert (=> b!3932035 m!4498283))

(assert (=> b!3932040 m!4498277))

(declare-fun m!4498285 () Bool)

(assert (=> b!3932040 m!4498285))

(assert (=> b!3932040 m!4498285))

(declare-fun m!4498287 () Bool)

(assert (=> b!3932040 m!4498287))

(assert (=> b!3932042 m!4498277))

(declare-fun m!4498289 () Bool)

(assert (=> b!3932042 m!4498289))

(declare-fun m!4498291 () Bool)

(assert (=> b!3932039 m!4498291))

(assert (=> b!3932039 m!4498291))

(declare-fun m!4498293 () Bool)

(assert (=> b!3932039 m!4498293))

(assert (=> b!3932039 m!4498271))

(declare-fun m!4498295 () Bool)

(assert (=> b!3932039 m!4498295))

(assert (=> b!3932039 m!4497715))

(declare-fun m!4498297 () Bool)

(assert (=> b!3932039 m!4498297))

(assert (=> b!3932039 m!4498291))

(declare-fun m!4498299 () Bool)

(assert (=> b!3932039 m!4498299))

(assert (=> b!3932039 m!4498271))

(assert (=> b!3932039 m!4497715))

(assert (=> b!3932039 m!4498273))

(assert (=> b!3932039 m!4498291))

(declare-fun m!4498301 () Bool)

(assert (=> b!3932039 m!4498301))

(assert (=> b!3932037 m!4498277))

(declare-fun m!4498303 () Bool)

(assert (=> b!3932037 m!4498303))

(assert (=> b!3932037 m!4497715))

(assert (=> b!3932038 m!4498277))

(assert (=> b!3932038 m!4498279))

(assert (=> b!3932038 m!4498279))

(assert (=> b!3932038 m!4498281))

(assert (=> b!3932038 m!4498281))

(declare-fun m!4498305 () Bool)

(assert (=> b!3932038 m!4498305))

(assert (=> b!3931692 d!1165932))

(declare-fun d!1165936 () Bool)

(declare-fun lt!1373705 () Int)

(assert (=> d!1165936 (>= lt!1373705 0)))

(declare-fun e!2432483 () Int)

(assert (=> d!1165936 (= lt!1373705 e!2432483)))

(declare-fun c!683207 () Bool)

(assert (=> d!1165936 (= c!683207 ((_ is Nil!41745) lt!1373486))))

(assert (=> d!1165936 (= (size!31320 lt!1373486) lt!1373705)))

(declare-fun b!3932044 () Bool)

(assert (=> b!3932044 (= e!2432483 0)))

(declare-fun b!3932045 () Bool)

(assert (=> b!3932045 (= e!2432483 (+ 1 (size!31320 (t!325726 lt!1373486))))))

(assert (= (and d!1165936 c!683207) b!3932044))

(assert (= (and d!1165936 (not c!683207)) b!3932045))

(declare-fun m!4498307 () Bool)

(assert (=> b!3932045 m!4498307))

(assert (=> b!3931692 d!1165936))

(declare-fun b!3932049 () Bool)

(declare-fun e!2432485 () List!41869)

(assert (=> b!3932049 (= e!2432485 (Cons!41745 (h!47165 lt!1373497) (++!10794 (t!325726 lt!1373497) suffix!1176)))))

(declare-fun d!1165938 () Bool)

(declare-fun e!2432484 () Bool)

(assert (=> d!1165938 e!2432484))

(declare-fun res!1590978 () Bool)

(assert (=> d!1165938 (=> (not res!1590978) (not e!2432484))))

(declare-fun lt!1373710 () List!41869)

(assert (=> d!1165938 (= res!1590978 (= (content!6288 lt!1373710) ((_ map or) (content!6288 lt!1373497) (content!6288 suffix!1176))))))

(assert (=> d!1165938 (= lt!1373710 e!2432485)))

(declare-fun c!683208 () Bool)

(assert (=> d!1165938 (= c!683208 ((_ is Nil!41745) lt!1373497))))

(assert (=> d!1165938 (= (++!10794 lt!1373497 suffix!1176) lt!1373710)))

(declare-fun b!3932050 () Bool)

(declare-fun res!1590979 () Bool)

(assert (=> b!3932050 (=> (not res!1590979) (not e!2432484))))

(assert (=> b!3932050 (= res!1590979 (= (size!31320 lt!1373710) (+ (size!31320 lt!1373497) (size!31320 suffix!1176))))))

(declare-fun b!3932048 () Bool)

(assert (=> b!3932048 (= e!2432485 suffix!1176)))

(declare-fun b!3932051 () Bool)

(assert (=> b!3932051 (= e!2432484 (or (not (= suffix!1176 Nil!41745)) (= lt!1373710 lt!1373497)))))

(assert (= (and d!1165938 c!683208) b!3932048))

(assert (= (and d!1165938 (not c!683208)) b!3932049))

(assert (= (and d!1165938 res!1590978) b!3932050))

(assert (= (and b!3932050 res!1590979) b!3932051))

(declare-fun m!4498309 () Bool)

(assert (=> b!3932049 m!4498309))

(declare-fun m!4498311 () Bool)

(assert (=> d!1165938 m!4498311))

(declare-fun m!4498313 () Bool)

(assert (=> d!1165938 m!4498313))

(declare-fun m!4498315 () Bool)

(assert (=> d!1165938 m!4498315))

(declare-fun m!4498317 () Bool)

(assert (=> b!3932050 m!4498317))

(declare-fun m!4498319 () Bool)

(assert (=> b!3932050 m!4498319))

(assert (=> b!3932050 m!4497727))

(assert (=> b!3931654 d!1165938))

(declare-fun d!1165940 () Bool)

(declare-fun res!1590998 () Bool)

(declare-fun e!2432496 () Bool)

(assert (=> d!1165940 (=> (not res!1590998) (not e!2432496))))

(assert (=> d!1165940 (= res!1590998 (not (isEmpty!24887 (originalCharacters!7118 (h!47167 suffixTokens!72)))))))

(assert (=> d!1165940 (= (inv!55942 (h!47167 suffixTokens!72)) e!2432496)))

(declare-fun b!3932072 () Bool)

(declare-fun res!1590999 () Bool)

(assert (=> b!3932072 (=> (not res!1590999) (not e!2432496))))

(assert (=> b!3932072 (= res!1590999 (= (originalCharacters!7118 (h!47167 suffixTokens!72)) (list!15511 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (value!206397 (h!47167 suffixTokens!72))))))))

(declare-fun b!3932073 () Bool)

(assert (=> b!3932073 (= e!2432496 (= (size!31319 (h!47167 suffixTokens!72)) (size!31320 (originalCharacters!7118 (h!47167 suffixTokens!72)))))))

(assert (= (and d!1165940 res!1590998) b!3932072))

(assert (= (and b!3932072 res!1590999) b!3932073))

(declare-fun b_lambda!115031 () Bool)

(assert (=> (not b_lambda!115031) (not b!3932072)))

(declare-fun t!325767 () Bool)

(declare-fun tb!235169 () Bool)

(assert (=> (and b!3931672 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))) t!325767) tb!235169))

(declare-fun b!3932074 () Bool)

(declare-fun e!2432497 () Bool)

(declare-fun tp!1196803 () Bool)

(assert (=> b!3932074 (= e!2432497 (and (inv!55946 (c!683131 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (value!206397 (h!47167 suffixTokens!72))))) tp!1196803))))

(declare-fun result!284926 () Bool)

(assert (=> tb!235169 (= result!284926 (and (inv!55947 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (value!206397 (h!47167 suffixTokens!72)))) e!2432497))))

(assert (= tb!235169 b!3932074))

(declare-fun m!4498321 () Bool)

(assert (=> b!3932074 m!4498321))

(declare-fun m!4498323 () Bool)

(assert (=> tb!235169 m!4498323))

(assert (=> b!3932072 t!325767))

(declare-fun b_and!300119 () Bool)

(assert (= b_and!300095 (and (=> t!325767 result!284926) b_and!300119)))

(declare-fun t!325769 () Bool)

(declare-fun tb!235171 () Bool)

(assert (=> (and b!3931664 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))) t!325769) tb!235171))

(declare-fun result!284928 () Bool)

(assert (= result!284928 result!284926))

(assert (=> b!3932072 t!325769))

(declare-fun b_and!300121 () Bool)

(assert (= b_and!300097 (and (=> t!325769 result!284928) b_and!300121)))

(declare-fun t!325771 () Bool)

(declare-fun tb!235173 () Bool)

(assert (=> (and b!3931685 (= (toChars!8833 (transformation!6518 (h!47168 rules!2768))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))) t!325771) tb!235173))

(declare-fun result!284930 () Bool)

(assert (= result!284930 result!284926))

(assert (=> b!3932072 t!325771))

(declare-fun b_and!300123 () Bool)

(assert (= b_and!300099 (and (=> t!325771 result!284930) b_and!300123)))

(declare-fun m!4498325 () Bool)

(assert (=> d!1165940 m!4498325))

(declare-fun m!4498327 () Bool)

(assert (=> b!3932072 m!4498327))

(assert (=> b!3932072 m!4498327))

(declare-fun m!4498329 () Bool)

(assert (=> b!3932072 m!4498329))

(declare-fun m!4498331 () Bool)

(assert (=> b!3932073 m!4498331))

(assert (=> b!3931696 d!1165940))

(declare-fun b!3932075 () Bool)

(declare-fun e!2432499 () Bool)

(declare-fun lt!1373717 () tuple2!41024)

(assert (=> b!3932075 (= e!2432499 (not (isEmpty!24886 (_1!23646 lt!1373717))))))

(declare-fun b!3932076 () Bool)

(declare-fun e!2432498 () Bool)

(assert (=> b!3932076 (= e!2432498 e!2432499)))

(declare-fun res!1591000 () Bool)

(assert (=> b!3932076 (= res!1591000 (< (size!31320 (_2!23646 lt!1373717)) (size!31320 (_2!23645 lt!1373483))))))

(assert (=> b!3932076 (=> (not res!1591000) (not e!2432499))))

(declare-fun b!3932077 () Bool)

(declare-fun e!2432500 () tuple2!41024)

(assert (=> b!3932077 (= e!2432500 (tuple2!41025 Nil!41747 (_2!23645 lt!1373483)))))

(declare-fun b!3932078 () Bool)

(declare-fun lt!1373718 () Option!8938)

(declare-fun lt!1373719 () tuple2!41024)

(assert (=> b!3932078 (= e!2432500 (tuple2!41025 (Cons!41747 (_1!23645 (v!39265 lt!1373718)) (_1!23646 lt!1373719)) (_2!23646 lt!1373719)))))

(assert (=> b!3932078 (= lt!1373719 (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373718))))))

(declare-fun d!1165942 () Bool)

(assert (=> d!1165942 e!2432498))

(declare-fun c!683211 () Bool)

(assert (=> d!1165942 (= c!683211 (> (size!31322 (_1!23646 lt!1373717)) 0))))

(assert (=> d!1165942 (= lt!1373717 e!2432500)))

(declare-fun c!683212 () Bool)

(assert (=> d!1165942 (= c!683212 ((_ is Some!8937) lt!1373718))))

(assert (=> d!1165942 (= lt!1373718 (maxPrefix!3411 thiss!20629 rules!2768 (_2!23645 lt!1373483)))))

(assert (=> d!1165942 (= (lexList!1875 thiss!20629 rules!2768 (_2!23645 lt!1373483)) lt!1373717)))

(declare-fun b!3932079 () Bool)

(assert (=> b!3932079 (= e!2432498 (= (_2!23646 lt!1373717) (_2!23645 lt!1373483)))))

(assert (= (and d!1165942 c!683212) b!3932078))

(assert (= (and d!1165942 (not c!683212)) b!3932077))

(assert (= (and d!1165942 c!683211) b!3932076))

(assert (= (and d!1165942 (not c!683211)) b!3932079))

(assert (= (and b!3932076 res!1591000) b!3932075))

(declare-fun m!4498333 () Bool)

(assert (=> b!3932075 m!4498333))

(declare-fun m!4498335 () Bool)

(assert (=> b!3932076 m!4498335))

(assert (=> b!3932076 m!4497709))

(declare-fun m!4498337 () Bool)

(assert (=> b!3932078 m!4498337))

(declare-fun m!4498339 () Bool)

(assert (=> d!1165942 m!4498339))

(declare-fun m!4498341 () Bool)

(assert (=> d!1165942 m!4498341))

(assert (=> bm!284865 d!1165942))

(declare-fun d!1165944 () Bool)

(assert (=> d!1165944 (= (inv!55939 (tag!7378 (rule!9464 (h!47167 prefixTokens!80)))) (= (mod (str.len (value!206396 (tag!7378 (rule!9464 (h!47167 prefixTokens!80))))) 2) 0))))

(assert (=> b!3931675 d!1165944))

(declare-fun d!1165946 () Bool)

(declare-fun res!1591001 () Bool)

(declare-fun e!2432501 () Bool)

(assert (=> d!1165946 (=> (not res!1591001) (not e!2432501))))

(assert (=> d!1165946 (= res!1591001 (semiInverseModEq!2801 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (toValue!8974 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))))))

(assert (=> d!1165946 (= (inv!55943 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) e!2432501)))

(declare-fun b!3932080 () Bool)

(assert (=> b!3932080 (= e!2432501 (equivClasses!2700 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (toValue!8974 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))))))

(assert (= (and d!1165946 res!1591001) b!3932080))

(declare-fun m!4498343 () Bool)

(assert (=> d!1165946 m!4498343))

(declare-fun m!4498345 () Bool)

(assert (=> b!3932080 m!4498345))

(assert (=> b!3931675 d!1165946))

(declare-fun b!3932082 () Bool)

(declare-fun e!2432503 () List!41869)

(assert (=> b!3932082 (= e!2432503 (Cons!41745 (h!47165 lt!1373502) (++!10794 (t!325726 lt!1373502) lt!1373470)))))

(declare-fun d!1165948 () Bool)

(declare-fun e!2432502 () Bool)

(assert (=> d!1165948 e!2432502))

(declare-fun res!1591002 () Bool)

(assert (=> d!1165948 (=> (not res!1591002) (not e!2432502))))

(declare-fun lt!1373720 () List!41869)

(assert (=> d!1165948 (= res!1591002 (= (content!6288 lt!1373720) ((_ map or) (content!6288 lt!1373502) (content!6288 lt!1373470))))))

(assert (=> d!1165948 (= lt!1373720 e!2432503)))

(declare-fun c!683213 () Bool)

(assert (=> d!1165948 (= c!683213 ((_ is Nil!41745) lt!1373502))))

(assert (=> d!1165948 (= (++!10794 lt!1373502 lt!1373470) lt!1373720)))

(declare-fun b!3932083 () Bool)

(declare-fun res!1591003 () Bool)

(assert (=> b!3932083 (=> (not res!1591003) (not e!2432502))))

(assert (=> b!3932083 (= res!1591003 (= (size!31320 lt!1373720) (+ (size!31320 lt!1373502) (size!31320 lt!1373470))))))

(declare-fun b!3932081 () Bool)

(assert (=> b!3932081 (= e!2432503 lt!1373470)))

(declare-fun b!3932084 () Bool)

(assert (=> b!3932084 (= e!2432502 (or (not (= lt!1373470 Nil!41745)) (= lt!1373720 lt!1373502)))))

(assert (= (and d!1165948 c!683213) b!3932081))

(assert (= (and d!1165948 (not c!683213)) b!3932082))

(assert (= (and d!1165948 res!1591002) b!3932083))

(assert (= (and b!3932083 res!1591003) b!3932084))

(declare-fun m!4498347 () Bool)

(assert (=> b!3932082 m!4498347))

(declare-fun m!4498349 () Bool)

(assert (=> d!1165948 m!4498349))

(assert (=> d!1165948 m!4497753))

(declare-fun m!4498351 () Bool)

(assert (=> d!1165948 m!4498351))

(declare-fun m!4498353 () Bool)

(assert (=> b!3932083 m!4498353))

(assert (=> b!3932083 m!4497609))

(assert (=> b!3932083 m!4497903))

(assert (=> b!3931674 d!1165948))

(declare-fun d!1165950 () Bool)

(declare-fun lt!1373721 () List!41869)

(assert (=> d!1165950 (= (++!10794 lt!1373502 lt!1373721) prefix!426)))

(declare-fun e!2432504 () List!41869)

(assert (=> d!1165950 (= lt!1373721 e!2432504)))

(declare-fun c!683214 () Bool)

(assert (=> d!1165950 (= c!683214 ((_ is Cons!41745) lt!1373502))))

(assert (=> d!1165950 (>= (size!31320 prefix!426) (size!31320 lt!1373502))))

(assert (=> d!1165950 (= (getSuffix!2068 prefix!426 lt!1373502) lt!1373721)))

(declare-fun b!3932085 () Bool)

(assert (=> b!3932085 (= e!2432504 (getSuffix!2068 (tail!6072 prefix!426) (t!325726 lt!1373502)))))

(declare-fun b!3932086 () Bool)

(assert (=> b!3932086 (= e!2432504 prefix!426)))

(assert (= (and d!1165950 c!683214) b!3932085))

(assert (= (and d!1165950 (not c!683214)) b!3932086))

(declare-fun m!4498355 () Bool)

(assert (=> d!1165950 m!4498355))

(assert (=> d!1165950 m!4497733))

(assert (=> d!1165950 m!4497609))

(assert (=> b!3932085 m!4498169))

(assert (=> b!3932085 m!4498169))

(declare-fun m!4498357 () Bool)

(assert (=> b!3932085 m!4498357))

(assert (=> b!3931674 d!1165950))

(declare-fun d!1165952 () Bool)

(assert (=> d!1165952 (= (isEmpty!24886 lt!1373510) ((_ is Nil!41747) lt!1373510))))

(assert (=> b!3931653 d!1165952))

(declare-fun d!1165954 () Bool)

(assert (=> d!1165954 (= (tail!6071 prefixTokens!80) (t!325728 prefixTokens!80))))

(assert (=> b!3931653 d!1165954))

(declare-fun d!1165956 () Bool)

(declare-fun res!1591004 () Bool)

(declare-fun e!2432505 () Bool)

(assert (=> d!1165956 (=> (not res!1591004) (not e!2432505))))

(assert (=> d!1165956 (= res!1591004 (not (isEmpty!24887 (originalCharacters!7118 (h!47167 prefixTokens!80)))))))

(assert (=> d!1165956 (= (inv!55942 (h!47167 prefixTokens!80)) e!2432505)))

(declare-fun b!3932087 () Bool)

(declare-fun res!1591005 () Bool)

(assert (=> b!3932087 (=> (not res!1591005) (not e!2432505))))

(assert (=> b!3932087 (= res!1591005 (= (originalCharacters!7118 (h!47167 prefixTokens!80)) (list!15511 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (value!206397 (h!47167 prefixTokens!80))))))))

(declare-fun b!3932088 () Bool)

(assert (=> b!3932088 (= e!2432505 (= (size!31319 (h!47167 prefixTokens!80)) (size!31320 (originalCharacters!7118 (h!47167 prefixTokens!80)))))))

(assert (= (and d!1165956 res!1591004) b!3932087))

(assert (= (and b!3932087 res!1591005) b!3932088))

(declare-fun b_lambda!115033 () Bool)

(assert (=> (not b_lambda!115033) (not b!3932087)))

(declare-fun t!325773 () Bool)

(declare-fun tb!235175 () Bool)

(assert (=> (and b!3931672 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))) t!325773) tb!235175))

(declare-fun b!3932098 () Bool)

(declare-fun e!2432510 () Bool)

(declare-fun tp!1196804 () Bool)

(assert (=> b!3932098 (= e!2432510 (and (inv!55946 (c!683131 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (value!206397 (h!47167 prefixTokens!80))))) tp!1196804))))

(declare-fun result!284932 () Bool)

(assert (=> tb!235175 (= result!284932 (and (inv!55947 (dynLambda!17889 (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (value!206397 (h!47167 prefixTokens!80)))) e!2432510))))

(assert (= tb!235175 b!3932098))

(declare-fun m!4498359 () Bool)

(assert (=> b!3932098 m!4498359))

(declare-fun m!4498361 () Bool)

(assert (=> tb!235175 m!4498361))

(assert (=> b!3932087 t!325773))

(declare-fun b_and!300125 () Bool)

(assert (= b_and!300119 (and (=> t!325773 result!284932) b_and!300125)))

(declare-fun t!325775 () Bool)

(declare-fun tb!235177 () Bool)

(assert (=> (and b!3931664 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))) t!325775) tb!235177))

(declare-fun result!284934 () Bool)

(assert (= result!284934 result!284932))

(assert (=> b!3932087 t!325775))

(declare-fun b_and!300127 () Bool)

(assert (= b_and!300121 (and (=> t!325775 result!284934) b_and!300127)))

(declare-fun tb!235179 () Bool)

(declare-fun t!325777 () Bool)

(assert (=> (and b!3931685 (= (toChars!8833 (transformation!6518 (h!47168 rules!2768))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))) t!325777) tb!235179))

(declare-fun result!284936 () Bool)

(assert (= result!284936 result!284932))

(assert (=> b!3932087 t!325777))

(declare-fun b_and!300129 () Bool)

(assert (= b_and!300123 (and (=> t!325777 result!284936) b_and!300129)))

(declare-fun m!4498363 () Bool)

(assert (=> d!1165956 m!4498363))

(declare-fun m!4498365 () Bool)

(assert (=> b!3932087 m!4498365))

(assert (=> b!3932087 m!4498365))

(declare-fun m!4498367 () Bool)

(assert (=> b!3932087 m!4498367))

(declare-fun m!4498369 () Bool)

(assert (=> b!3932088 m!4498369))

(assert (=> b!3931652 d!1165956))

(declare-fun d!1165958 () Bool)

(assert (=> d!1165958 (= (isEmpty!24887 suffixResult!91) ((_ is Nil!41745) suffixResult!91))))

(assert (=> b!3931695 d!1165958))

(declare-fun d!1165960 () Bool)

(declare-fun lt!1373727 () Int)

(assert (=> d!1165960 (>= lt!1373727 0)))

(declare-fun e!2432511 () Int)

(assert (=> d!1165960 (= lt!1373727 e!2432511)))

(declare-fun c!683216 () Bool)

(assert (=> d!1165960 (= c!683216 ((_ is Nil!41745) (originalCharacters!7118 (_1!23645 (v!39265 lt!1373503)))))))

(assert (=> d!1165960 (= (size!31320 (originalCharacters!7118 (_1!23645 (v!39265 lt!1373503)))) lt!1373727)))

(declare-fun b!3932099 () Bool)

(assert (=> b!3932099 (= e!2432511 0)))

(declare-fun b!3932100 () Bool)

(assert (=> b!3932100 (= e!2432511 (+ 1 (size!31320 (t!325726 (originalCharacters!7118 (_1!23645 (v!39265 lt!1373503)))))))))

(assert (= (and d!1165960 c!683216) b!3932099))

(assert (= (and d!1165960 (not c!683216)) b!3932100))

(declare-fun m!4498371 () Bool)

(assert (=> b!3932100 m!4498371))

(assert (=> b!3931657 d!1165960))

(declare-fun d!1165962 () Bool)

(assert (=> d!1165962 (= (isEmpty!24886 prefixTokens!80) ((_ is Nil!41747) prefixTokens!80))))

(assert (=> b!3931656 d!1165962))

(assert (=> b!3931698 d!1165870))

(assert (=> b!3931698 d!1165866))

(declare-fun b!3932104 () Bool)

(declare-fun e!2432512 () Bool)

(assert (=> b!3932104 (= e!2432512 (>= (size!31320 prefix!426) (size!31320 lt!1373502)))))

(declare-fun b!3932103 () Bool)

(declare-fun e!2432514 () Bool)

(assert (=> b!3932103 (= e!2432514 (isPrefix!3613 (tail!6072 lt!1373502) (tail!6072 prefix!426)))))

(declare-fun b!3932101 () Bool)

(declare-fun e!2432513 () Bool)

(assert (=> b!3932101 (= e!2432513 e!2432514)))

(declare-fun res!1591015 () Bool)

(assert (=> b!3932101 (=> (not res!1591015) (not e!2432514))))

(assert (=> b!3932101 (= res!1591015 (not ((_ is Nil!41745) prefix!426)))))

(declare-fun d!1165964 () Bool)

(assert (=> d!1165964 e!2432512))

(declare-fun res!1591014 () Bool)

(assert (=> d!1165964 (=> res!1591014 e!2432512)))

(declare-fun lt!1373728 () Bool)

(assert (=> d!1165964 (= res!1591014 (not lt!1373728))))

(assert (=> d!1165964 (= lt!1373728 e!2432513)))

(declare-fun res!1591013 () Bool)

(assert (=> d!1165964 (=> res!1591013 e!2432513)))

(assert (=> d!1165964 (= res!1591013 ((_ is Nil!41745) lt!1373502))))

(assert (=> d!1165964 (= (isPrefix!3613 lt!1373502 prefix!426) lt!1373728)))

(declare-fun b!3932102 () Bool)

(declare-fun res!1591016 () Bool)

(assert (=> b!3932102 (=> (not res!1591016) (not e!2432514))))

(assert (=> b!3932102 (= res!1591016 (= (head!8346 lt!1373502) (head!8346 prefix!426)))))

(assert (= (and d!1165964 (not res!1591013)) b!3932101))

(assert (= (and b!3932101 res!1591015) b!3932102))

(assert (= (and b!3932102 res!1591016) b!3932103))

(assert (= (and d!1165964 (not res!1591014)) b!3932104))

(assert (=> b!3932104 m!4497733))

(assert (=> b!3932104 m!4497609))

(assert (=> b!3932103 m!4497877))

(assert (=> b!3932103 m!4498169))

(assert (=> b!3932103 m!4497877))

(assert (=> b!3932103 m!4498169))

(declare-fun m!4498385 () Bool)

(assert (=> b!3932103 m!4498385))

(assert (=> b!3932102 m!4497883))

(assert (=> b!3932102 m!4498173))

(assert (=> b!3931698 d!1165964))

(declare-fun d!1165966 () Bool)

(declare-fun lt!1373729 () Int)

(assert (=> d!1165966 (>= lt!1373729 0)))

(declare-fun e!2432515 () Int)

(assert (=> d!1165966 (= lt!1373729 e!2432515)))

(declare-fun c!683217 () Bool)

(assert (=> d!1165966 (= c!683217 ((_ is Nil!41745) prefix!426))))

(assert (=> d!1165966 (= (size!31320 prefix!426) lt!1373729)))

(declare-fun b!3932105 () Bool)

(assert (=> b!3932105 (= e!2432515 0)))

(declare-fun b!3932106 () Bool)

(assert (=> b!3932106 (= e!2432515 (+ 1 (size!31320 (t!325726 prefix!426))))))

(assert (= (and d!1165966 c!683217) b!3932105))

(assert (= (and d!1165966 (not c!683217)) b!3932106))

(declare-fun m!4498391 () Bool)

(assert (=> b!3932106 m!4498391))

(assert (=> b!3931698 d!1165966))

(declare-fun d!1165968 () Bool)

(assert (=> d!1165968 (isPrefix!3613 lt!1373502 prefix!426)))

(declare-fun lt!1373736 () Unit!60172)

(declare-fun choose!23394 (List!41869 List!41869 List!41869) Unit!60172)

(assert (=> d!1165968 (= lt!1373736 (choose!23394 prefix!426 lt!1373502 lt!1373486))))

(assert (=> d!1165968 (isPrefix!3613 prefix!426 lt!1373486)))

(assert (=> d!1165968 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!291 prefix!426 lt!1373502 lt!1373486) lt!1373736)))

(declare-fun bs!586276 () Bool)

(assert (= bs!586276 d!1165968))

(assert (=> bs!586276 m!4497731))

(declare-fun m!4498431 () Bool)

(assert (=> bs!586276 m!4498431))

(assert (=> bs!586276 m!4497721))

(assert (=> b!3931698 d!1165968))

(declare-fun d!1165976 () Bool)

(assert (=> d!1165976 (and (= lt!1373502 lt!1373502) (= (_2!23645 (v!39265 lt!1373503)) (_2!23645 lt!1373483)))))

(declare-fun lt!1373746 () Unit!60172)

(declare-fun choose!23395 (List!41869 List!41869 List!41869 List!41869) Unit!60172)

(assert (=> d!1165976 (= lt!1373746 (choose!23395 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 (_2!23645 lt!1373483)))))

(assert (=> d!1165976 (= (++!10794 lt!1373502 (_2!23645 (v!39265 lt!1373503))) (++!10794 lt!1373502 (_2!23645 lt!1373483)))))

(assert (=> d!1165976 (= (lemmaConcatSameAndSameSizesThenSameLists!566 lt!1373502 (_2!23645 (v!39265 lt!1373503)) lt!1373502 (_2!23645 lt!1373483)) lt!1373746)))

(declare-fun bs!586277 () Bool)

(assert (= bs!586277 d!1165976))

(declare-fun m!4498471 () Bool)

(assert (=> bs!586277 m!4498471))

(assert (=> bs!586277 m!4497607))

(declare-fun m!4498473 () Bool)

(assert (=> bs!586277 m!4498473))

(assert (=> b!3931697 d!1165976))

(declare-fun d!1165988 () Bool)

(assert (=> d!1165988 (not (= (lexList!1875 thiss!20629 rules!2768 (_2!23645 lt!1373483)) (tuple2!41025 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1373748 () Unit!60172)

(assert (=> d!1165988 (= lt!1373748 (choose!23384 thiss!20629 rules!2768 suffix!1176 (_2!23645 lt!1373483) suffixTokens!72 suffixResult!91))))

(assert (=> d!1165988 (not (isEmpty!24888 rules!2768))))

(assert (=> d!1165988 (= (lemmaLexWithSmallerInputCannotProduceSameResults!118 thiss!20629 rules!2768 suffix!1176 (_2!23645 lt!1373483) suffixTokens!72 suffixResult!91) lt!1373748)))

(declare-fun bs!586278 () Bool)

(assert (= bs!586278 d!1165988))

(assert (=> bs!586278 m!4497677))

(declare-fun m!4498485 () Bool)

(assert (=> bs!586278 m!4498485))

(assert (=> bs!586278 m!4497717))

(assert (=> b!3931697 d!1165988))

(declare-fun d!1165992 () Bool)

(assert (=> d!1165992 (= (head!8345 prefixTokens!80) (h!47167 prefixTokens!80))))

(assert (=> b!3931677 d!1165992))

(declare-fun d!1165994 () Bool)

(assert (=> d!1165994 (= (isEmpty!24886 suffixTokens!72) ((_ is Nil!41747) suffixTokens!72))))

(assert (=> b!3931655 d!1165994))

(declare-fun b!3932137 () Bool)

(declare-fun e!2432533 () Bool)

(declare-fun lt!1373749 () tuple2!41024)

(assert (=> b!3932137 (= e!2432533 (not (isEmpty!24886 (_1!23646 lt!1373749))))))

(declare-fun b!3932138 () Bool)

(declare-fun e!2432532 () Bool)

(assert (=> b!3932138 (= e!2432532 e!2432533)))

(declare-fun res!1591027 () Bool)

(assert (=> b!3932138 (= res!1591027 (< (size!31320 (_2!23646 lt!1373749)) (size!31320 lt!1373486)))))

(assert (=> b!3932138 (=> (not res!1591027) (not e!2432533))))

(declare-fun b!3932139 () Bool)

(declare-fun e!2432534 () tuple2!41024)

(assert (=> b!3932139 (= e!2432534 (tuple2!41025 Nil!41747 lt!1373486))))

(declare-fun b!3932140 () Bool)

(declare-fun lt!1373750 () Option!8938)

(declare-fun lt!1373751 () tuple2!41024)

(assert (=> b!3932140 (= e!2432534 (tuple2!41025 (Cons!41747 (_1!23645 (v!39265 lt!1373750)) (_1!23646 lt!1373751)) (_2!23646 lt!1373751)))))

(assert (=> b!3932140 (= lt!1373751 (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373750))))))

(declare-fun d!1165996 () Bool)

(assert (=> d!1165996 e!2432532))

(declare-fun c!683228 () Bool)

(assert (=> d!1165996 (= c!683228 (> (size!31322 (_1!23646 lt!1373749)) 0))))

(assert (=> d!1165996 (= lt!1373749 e!2432534)))

(declare-fun c!683229 () Bool)

(assert (=> d!1165996 (= c!683229 ((_ is Some!8937) lt!1373750))))

(assert (=> d!1165996 (= lt!1373750 (maxPrefix!3411 thiss!20629 rules!2768 lt!1373486))))

(assert (=> d!1165996 (= (lexList!1875 thiss!20629 rules!2768 lt!1373486) lt!1373749)))

(declare-fun b!3932141 () Bool)

(assert (=> b!3932141 (= e!2432532 (= (_2!23646 lt!1373749) lt!1373486))))

(assert (= (and d!1165996 c!683229) b!3932140))

(assert (= (and d!1165996 (not c!683229)) b!3932139))

(assert (= (and d!1165996 c!683228) b!3932138))

(assert (= (and d!1165996 (not c!683228)) b!3932141))

(assert (= (and b!3932138 res!1591027) b!3932137))

(declare-fun m!4498487 () Bool)

(assert (=> b!3932137 m!4498487))

(declare-fun m!4498489 () Bool)

(assert (=> b!3932138 m!4498489))

(assert (=> b!3932138 m!4497715))

(declare-fun m!4498491 () Bool)

(assert (=> b!3932140 m!4498491))

(declare-fun m!4498493 () Bool)

(assert (=> d!1165996 m!4498493))

(assert (=> d!1165996 m!4497697))

(assert (=> b!3931681 d!1165996))

(declare-fun b!3932142 () Bool)

(declare-fun e!2432535 () List!41871)

(assert (=> b!3932142 (= e!2432535 suffixTokens!72)))

(declare-fun b!3932143 () Bool)

(assert (=> b!3932143 (= e!2432535 (Cons!41747 (h!47167 prefixTokens!80) (++!10793 (t!325728 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1165998 () Bool)

(declare-fun e!2432536 () Bool)

(assert (=> d!1165998 e!2432536))

(declare-fun res!1591028 () Bool)

(assert (=> d!1165998 (=> (not res!1591028) (not e!2432536))))

(declare-fun lt!1373752 () List!41871)

(assert (=> d!1165998 (= res!1591028 (= (content!6290 lt!1373752) ((_ map or) (content!6290 prefixTokens!80) (content!6290 suffixTokens!72))))))

(assert (=> d!1165998 (= lt!1373752 e!2432535)))

(declare-fun c!683230 () Bool)

(assert (=> d!1165998 (= c!683230 ((_ is Nil!41747) prefixTokens!80))))

(assert (=> d!1165998 (= (++!10793 prefixTokens!80 suffixTokens!72) lt!1373752)))

(declare-fun b!3932144 () Bool)

(declare-fun res!1591029 () Bool)

(assert (=> b!3932144 (=> (not res!1591029) (not e!2432536))))

(assert (=> b!3932144 (= res!1591029 (= (size!31322 lt!1373752) (+ (size!31322 prefixTokens!80) (size!31322 suffixTokens!72))))))

(declare-fun b!3932145 () Bool)

(assert (=> b!3932145 (= e!2432536 (or (not (= suffixTokens!72 Nil!41747)) (= lt!1373752 prefixTokens!80)))))

(assert (= (and d!1165998 c!683230) b!3932142))

(assert (= (and d!1165998 (not c!683230)) b!3932143))

(assert (= (and d!1165998 res!1591028) b!3932144))

(assert (= (and b!3932144 res!1591029) b!3932145))

(declare-fun m!4498495 () Bool)

(assert (=> b!3932143 m!4498495))

(declare-fun m!4498497 () Bool)

(assert (=> d!1165998 m!4498497))

(declare-fun m!4498499 () Bool)

(assert (=> d!1165998 m!4498499))

(assert (=> d!1165998 m!4498139))

(declare-fun m!4498501 () Bool)

(assert (=> b!3932144 m!4498501))

(declare-fun m!4498503 () Bool)

(assert (=> b!3932144 m!4498503))

(assert (=> b!3932144 m!4498145))

(assert (=> b!3931681 d!1165998))

(declare-fun b!3932147 () Bool)

(declare-fun e!2432538 () List!41869)

(assert (=> b!3932147 (= e!2432538 (Cons!41745 (h!47165 prefix!426) (++!10794 (t!325726 prefix!426) suffix!1176)))))

(declare-fun d!1166000 () Bool)

(declare-fun e!2432537 () Bool)

(assert (=> d!1166000 e!2432537))

(declare-fun res!1591030 () Bool)

(assert (=> d!1166000 (=> (not res!1591030) (not e!2432537))))

(declare-fun lt!1373755 () List!41869)

(assert (=> d!1166000 (= res!1591030 (= (content!6288 lt!1373755) ((_ map or) (content!6288 prefix!426) (content!6288 suffix!1176))))))

(assert (=> d!1166000 (= lt!1373755 e!2432538)))

(declare-fun c!683231 () Bool)

(assert (=> d!1166000 (= c!683231 ((_ is Nil!41745) prefix!426))))

(assert (=> d!1166000 (= (++!10794 prefix!426 suffix!1176) lt!1373755)))

(declare-fun b!3932148 () Bool)

(declare-fun res!1591031 () Bool)

(assert (=> b!3932148 (=> (not res!1591031) (not e!2432537))))

(assert (=> b!3932148 (= res!1591031 (= (size!31320 lt!1373755) (+ (size!31320 prefix!426) (size!31320 suffix!1176))))))

(declare-fun b!3932146 () Bool)

(assert (=> b!3932146 (= e!2432538 suffix!1176)))

(declare-fun b!3932149 () Bool)

(assert (=> b!3932149 (= e!2432537 (or (not (= suffix!1176 Nil!41745)) (= lt!1373755 prefix!426)))))

(assert (= (and d!1166000 c!683231) b!3932146))

(assert (= (and d!1166000 (not c!683231)) b!3932147))

(assert (= (and d!1166000 res!1591030) b!3932148))

(assert (= (and b!3932148 res!1591031) b!3932149))

(declare-fun m!4498505 () Bool)

(assert (=> b!3932147 m!4498505))

(declare-fun m!4498507 () Bool)

(assert (=> d!1166000 m!4498507))

(declare-fun m!4498509 () Bool)

(assert (=> d!1166000 m!4498509))

(assert (=> d!1166000 m!4498315))

(declare-fun m!4498511 () Bool)

(assert (=> b!3932148 m!4498511))

(assert (=> b!3932148 m!4497733))

(assert (=> b!3932148 m!4497727))

(assert (=> b!3931681 d!1166000))

(declare-fun b!3932150 () Bool)

(declare-fun e!2432539 () List!41871)

(assert (=> b!3932150 (= e!2432539 suffixTokens!72)))

(declare-fun b!3932151 () Bool)

(assert (=> b!3932151 (= e!2432539 (Cons!41747 (h!47167 lt!1373488) (++!10793 (t!325728 lt!1373488) suffixTokens!72)))))

(declare-fun d!1166002 () Bool)

(declare-fun e!2432540 () Bool)

(assert (=> d!1166002 e!2432540))

(declare-fun res!1591032 () Bool)

(assert (=> d!1166002 (=> (not res!1591032) (not e!2432540))))

(declare-fun lt!1373757 () List!41871)

(assert (=> d!1166002 (= res!1591032 (= (content!6290 lt!1373757) ((_ map or) (content!6290 lt!1373488) (content!6290 suffixTokens!72))))))

(assert (=> d!1166002 (= lt!1373757 e!2432539)))

(declare-fun c!683232 () Bool)

(assert (=> d!1166002 (= c!683232 ((_ is Nil!41747) lt!1373488))))

(assert (=> d!1166002 (= (++!10793 lt!1373488 suffixTokens!72) lt!1373757)))

(declare-fun b!3932152 () Bool)

(declare-fun res!1591033 () Bool)

(assert (=> b!3932152 (=> (not res!1591033) (not e!2432540))))

(assert (=> b!3932152 (= res!1591033 (= (size!31322 lt!1373757) (+ (size!31322 lt!1373488) (size!31322 suffixTokens!72))))))

(declare-fun b!3932153 () Bool)

(assert (=> b!3932153 (= e!2432540 (or (not (= suffixTokens!72 Nil!41747)) (= lt!1373757 lt!1373488)))))

(assert (= (and d!1166002 c!683232) b!3932150))

(assert (= (and d!1166002 (not c!683232)) b!3932151))

(assert (= (and d!1166002 res!1591032) b!3932152))

(assert (= (and b!3932152 res!1591033) b!3932153))

(declare-fun m!4498517 () Bool)

(assert (=> b!3932151 m!4498517))

(declare-fun m!4498519 () Bool)

(assert (=> d!1166002 m!4498519))

(declare-fun m!4498521 () Bool)

(assert (=> d!1166002 m!4498521))

(assert (=> d!1166002 m!4498139))

(declare-fun m!4498523 () Bool)

(assert (=> b!3932152 m!4498523))

(declare-fun m!4498525 () Bool)

(assert (=> b!3932152 m!4498525))

(assert (=> b!3932152 m!4498145))

(assert (=> b!3931680 d!1166002))

(assert (=> b!3931680 d!1165954))

(declare-fun b!3932161 () Bool)

(declare-fun e!2432543 () Bool)

(assert (=> b!3932161 (= e!2432543 (>= (size!31320 lt!1373482) (size!31320 lt!1373470)))))

(declare-fun b!3932160 () Bool)

(declare-fun e!2432545 () Bool)

(assert (=> b!3932160 (= e!2432545 (isPrefix!3613 (tail!6072 lt!1373470) (tail!6072 lt!1373482)))))

(declare-fun b!3932158 () Bool)

(declare-fun e!2432544 () Bool)

(assert (=> b!3932158 (= e!2432544 e!2432545)))

(declare-fun res!1591038 () Bool)

(assert (=> b!3932158 (=> (not res!1591038) (not e!2432545))))

(assert (=> b!3932158 (= res!1591038 (not ((_ is Nil!41745) lt!1373482)))))

(declare-fun d!1166008 () Bool)

(assert (=> d!1166008 e!2432543))

(declare-fun res!1591037 () Bool)

(assert (=> d!1166008 (=> res!1591037 e!2432543)))

(declare-fun lt!1373759 () Bool)

(assert (=> d!1166008 (= res!1591037 (not lt!1373759))))

(assert (=> d!1166008 (= lt!1373759 e!2432544)))

(declare-fun res!1591036 () Bool)

(assert (=> d!1166008 (=> res!1591036 e!2432544)))

(assert (=> d!1166008 (= res!1591036 ((_ is Nil!41745) lt!1373470))))

(assert (=> d!1166008 (= (isPrefix!3613 lt!1373470 lt!1373482) lt!1373759)))

(declare-fun b!3932159 () Bool)

(declare-fun res!1591039 () Bool)

(assert (=> b!3932159 (=> (not res!1591039) (not e!2432545))))

(assert (=> b!3932159 (= res!1591039 (= (head!8346 lt!1373470) (head!8346 lt!1373482)))))

(assert (= (and d!1166008 (not res!1591036)) b!3932158))

(assert (= (and b!3932158 res!1591038) b!3932159))

(assert (= (and b!3932159 res!1591039) b!3932160))

(assert (= (and d!1166008 (not res!1591037)) b!3932161))

(declare-fun m!4498529 () Bool)

(assert (=> b!3932161 m!4498529))

(assert (=> b!3932161 m!4497903))

(declare-fun m!4498533 () Bool)

(assert (=> b!3932160 m!4498533))

(declare-fun m!4498537 () Bool)

(assert (=> b!3932160 m!4498537))

(assert (=> b!3932160 m!4498533))

(assert (=> b!3932160 m!4498537))

(declare-fun m!4498539 () Bool)

(assert (=> b!3932160 m!4498539))

(declare-fun m!4498541 () Bool)

(assert (=> b!3932159 m!4498541))

(declare-fun m!4498543 () Bool)

(assert (=> b!3932159 m!4498543))

(assert (=> b!3931680 d!1166008))

(declare-fun d!1166010 () Bool)

(assert (=> d!1166010 (isPrefix!3613 lt!1373470 (++!10794 lt!1373470 suffix!1176))))

(declare-fun lt!1373760 () Unit!60172)

(assert (=> d!1166010 (= lt!1373760 (choose!23381 lt!1373470 suffix!1176))))

(assert (=> d!1166010 (= (lemmaConcatTwoListThenFirstIsPrefix!2476 lt!1373470 suffix!1176) lt!1373760)))

(declare-fun bs!586280 () Bool)

(assert (= bs!586280 d!1166010))

(assert (=> bs!586280 m!4497653))

(assert (=> bs!586280 m!4497653))

(declare-fun m!4498545 () Bool)

(assert (=> bs!586280 m!4498545))

(declare-fun m!4498547 () Bool)

(assert (=> bs!586280 m!4498547))

(assert (=> b!3931680 d!1166010))

(declare-fun b!3932166 () Bool)

(declare-fun e!2432549 () Bool)

(declare-fun lt!1373761 () tuple2!41024)

(assert (=> b!3932166 (= e!2432549 (not (isEmpty!24886 (_1!23646 lt!1373761))))))

(declare-fun b!3932167 () Bool)

(declare-fun e!2432548 () Bool)

(assert (=> b!3932167 (= e!2432548 e!2432549)))

(declare-fun res!1591040 () Bool)

(assert (=> b!3932167 (= res!1591040 (< (size!31320 (_2!23646 lt!1373761)) (size!31320 lt!1373482)))))

(assert (=> b!3932167 (=> (not res!1591040) (not e!2432549))))

(declare-fun b!3932168 () Bool)

(declare-fun e!2432550 () tuple2!41024)

(assert (=> b!3932168 (= e!2432550 (tuple2!41025 Nil!41747 lt!1373482))))

(declare-fun b!3932169 () Bool)

(declare-fun lt!1373762 () Option!8938)

(declare-fun lt!1373763 () tuple2!41024)

(assert (=> b!3932169 (= e!2432550 (tuple2!41025 (Cons!41747 (_1!23645 (v!39265 lt!1373762)) (_1!23646 lt!1373763)) (_2!23646 lt!1373763)))))

(assert (=> b!3932169 (= lt!1373763 (lexList!1875 thiss!20629 rules!2768 (_2!23645 (v!39265 lt!1373762))))))

(declare-fun d!1166012 () Bool)

(assert (=> d!1166012 e!2432548))

(declare-fun c!683234 () Bool)

(assert (=> d!1166012 (= c!683234 (> (size!31322 (_1!23646 lt!1373761)) 0))))

(assert (=> d!1166012 (= lt!1373761 e!2432550)))

(declare-fun c!683235 () Bool)

(assert (=> d!1166012 (= c!683235 ((_ is Some!8937) lt!1373762))))

(assert (=> d!1166012 (= lt!1373762 (maxPrefix!3411 thiss!20629 rules!2768 lt!1373482))))

(assert (=> d!1166012 (= (lexList!1875 thiss!20629 rules!2768 lt!1373482) lt!1373761)))

(declare-fun b!3932170 () Bool)

(assert (=> b!3932170 (= e!2432548 (= (_2!23646 lt!1373761) lt!1373482))))

(assert (= (and d!1166012 c!683235) b!3932169))

(assert (= (and d!1166012 (not c!683235)) b!3932168))

(assert (= (and d!1166012 c!683234) b!3932167))

(assert (= (and d!1166012 (not c!683234)) b!3932170))

(assert (= (and b!3932167 res!1591040) b!3932166))

(declare-fun m!4498549 () Bool)

(assert (=> b!3932166 m!4498549))

(declare-fun m!4498551 () Bool)

(assert (=> b!3932167 m!4498551))

(assert (=> b!3932167 m!4498529))

(declare-fun m!4498553 () Bool)

(assert (=> b!3932169 m!4498553))

(declare-fun m!4498555 () Bool)

(assert (=> d!1166012 m!4498555))

(declare-fun m!4498557 () Bool)

(assert (=> d!1166012 m!4498557))

(assert (=> b!3931659 d!1166012))

(declare-fun d!1166014 () Bool)

(assert (=> d!1166014 (= (inv!55939 (tag!7378 (h!47168 rules!2768))) (= (mod (str.len (value!206396 (tag!7378 (h!47168 rules!2768)))) 2) 0))))

(assert (=> b!3931699 d!1166014))

(declare-fun d!1166016 () Bool)

(declare-fun res!1591041 () Bool)

(declare-fun e!2432555 () Bool)

(assert (=> d!1166016 (=> (not res!1591041) (not e!2432555))))

(assert (=> d!1166016 (= res!1591041 (semiInverseModEq!2801 (toChars!8833 (transformation!6518 (h!47168 rules!2768))) (toValue!8974 (transformation!6518 (h!47168 rules!2768)))))))

(assert (=> d!1166016 (= (inv!55943 (transformation!6518 (h!47168 rules!2768))) e!2432555)))

(declare-fun b!3932173 () Bool)

(assert (=> b!3932173 (= e!2432555 (equivClasses!2700 (toChars!8833 (transformation!6518 (h!47168 rules!2768))) (toValue!8974 (transformation!6518 (h!47168 rules!2768)))))))

(assert (= (and d!1166016 res!1591041) b!3932173))

(declare-fun m!4498559 () Bool)

(assert (=> d!1166016 m!4498559))

(declare-fun m!4498561 () Bool)

(assert (=> b!3932173 m!4498561))

(assert (=> b!3931699 d!1166016))

(declare-fun b!3932197 () Bool)

(declare-fun res!1591044 () Bool)

(declare-fun e!2432577 () Bool)

(assert (=> b!3932197 (=> res!1591044 e!2432577)))

(assert (=> b!3932197 (= res!1591044 (not ((_ is IntegerValue!20246) (value!206397 (h!47167 suffixTokens!72)))))))

(declare-fun e!2432579 () Bool)

(assert (=> b!3932197 (= e!2432579 e!2432577)))

(declare-fun b!3932198 () Bool)

(declare-fun e!2432578 () Bool)

(declare-fun inv!16 (TokenValue!6748) Bool)

(assert (=> b!3932198 (= e!2432578 (inv!16 (value!206397 (h!47167 suffixTokens!72))))))

(declare-fun b!3932199 () Bool)

(declare-fun inv!15 (TokenValue!6748) Bool)

(assert (=> b!3932199 (= e!2432577 (inv!15 (value!206397 (h!47167 suffixTokens!72))))))

(declare-fun d!1166018 () Bool)

(declare-fun c!683240 () Bool)

(assert (=> d!1166018 (= c!683240 ((_ is IntegerValue!20244) (value!206397 (h!47167 suffixTokens!72))))))

(assert (=> d!1166018 (= (inv!21 (value!206397 (h!47167 suffixTokens!72))) e!2432578)))

(declare-fun b!3932200 () Bool)

(assert (=> b!3932200 (= e!2432578 e!2432579)))

(declare-fun c!683241 () Bool)

(assert (=> b!3932200 (= c!683241 ((_ is IntegerValue!20245) (value!206397 (h!47167 suffixTokens!72))))))

(declare-fun b!3932201 () Bool)

(declare-fun inv!17 (TokenValue!6748) Bool)

(assert (=> b!3932201 (= e!2432579 (inv!17 (value!206397 (h!47167 suffixTokens!72))))))

(assert (= (and d!1166018 c!683240) b!3932198))

(assert (= (and d!1166018 (not c!683240)) b!3932200))

(assert (= (and b!3932200 c!683241) b!3932201))

(assert (= (and b!3932200 (not c!683241)) b!3932197))

(assert (= (and b!3932197 (not res!1591044)) b!3932199))

(declare-fun m!4498571 () Bool)

(assert (=> b!3932198 m!4498571))

(declare-fun m!4498573 () Bool)

(assert (=> b!3932199 m!4498573))

(declare-fun m!4498575 () Bool)

(assert (=> b!3932201 m!4498575))

(assert (=> b!3931679 d!1166018))

(declare-fun d!1166020 () Bool)

(assert (=> d!1166020 (= (isEmpty!24886 lt!1373488) ((_ is Nil!41747) lt!1373488))))

(assert (=> b!3931662 d!1166020))

(declare-fun b!3932212 () Bool)

(declare-fun e!2432582 () List!41871)

(assert (=> b!3932212 (= e!2432582 suffixTokens!72)))

(declare-fun b!3932213 () Bool)

(assert (=> b!3932213 (= e!2432582 (Cons!41747 (h!47167 (++!10793 lt!1373471 lt!1373488)) (++!10793 (t!325728 (++!10793 lt!1373471 lt!1373488)) suffixTokens!72)))))

(declare-fun d!1166022 () Bool)

(declare-fun e!2432583 () Bool)

(assert (=> d!1166022 e!2432583))

(declare-fun res!1591045 () Bool)

(assert (=> d!1166022 (=> (not res!1591045) (not e!2432583))))

(declare-fun lt!1373764 () List!41871)

(assert (=> d!1166022 (= res!1591045 (= (content!6290 lt!1373764) ((_ map or) (content!6290 (++!10793 lt!1373471 lt!1373488)) (content!6290 suffixTokens!72))))))

(assert (=> d!1166022 (= lt!1373764 e!2432582)))

(declare-fun c!683242 () Bool)

(assert (=> d!1166022 (= c!683242 ((_ is Nil!41747) (++!10793 lt!1373471 lt!1373488)))))

(assert (=> d!1166022 (= (++!10793 (++!10793 lt!1373471 lt!1373488) suffixTokens!72) lt!1373764)))

(declare-fun b!3932214 () Bool)

(declare-fun res!1591046 () Bool)

(assert (=> b!3932214 (=> (not res!1591046) (not e!2432583))))

(assert (=> b!3932214 (= res!1591046 (= (size!31322 lt!1373764) (+ (size!31322 (++!10793 lt!1373471 lt!1373488)) (size!31322 suffixTokens!72))))))

(declare-fun b!3932215 () Bool)

(assert (=> b!3932215 (= e!2432583 (or (not (= suffixTokens!72 Nil!41747)) (= lt!1373764 (++!10793 lt!1373471 lt!1373488))))))

(assert (= (and d!1166022 c!683242) b!3932212))

(assert (= (and d!1166022 (not c!683242)) b!3932213))

(assert (= (and d!1166022 res!1591045) b!3932214))

(assert (= (and b!3932214 res!1591046) b!3932215))

(declare-fun m!4498577 () Bool)

(assert (=> b!3932213 m!4498577))

(declare-fun m!4498579 () Bool)

(assert (=> d!1166022 m!4498579))

(assert (=> d!1166022 m!4497625))

(declare-fun m!4498581 () Bool)

(assert (=> d!1166022 m!4498581))

(assert (=> d!1166022 m!4498139))

(declare-fun m!4498583 () Bool)

(assert (=> b!3932214 m!4498583))

(assert (=> b!3932214 m!4497625))

(declare-fun m!4498585 () Bool)

(assert (=> b!3932214 m!4498585))

(assert (=> b!3932214 m!4498145))

(assert (=> b!3931662 d!1166022))

(declare-fun b!3932220 () Bool)

(declare-fun e!2432585 () List!41871)

(assert (=> b!3932220 (= e!2432585 lt!1373511)))

(declare-fun b!3932221 () Bool)

(assert (=> b!3932221 (= e!2432585 (Cons!41747 (h!47167 lt!1373471) (++!10793 (t!325728 lt!1373471) lt!1373511)))))

(declare-fun d!1166024 () Bool)

(declare-fun e!2432586 () Bool)

(assert (=> d!1166024 e!2432586))

(declare-fun res!1591047 () Bool)

(assert (=> d!1166024 (=> (not res!1591047) (not e!2432586))))

(declare-fun lt!1373765 () List!41871)

(assert (=> d!1166024 (= res!1591047 (= (content!6290 lt!1373765) ((_ map or) (content!6290 lt!1373471) (content!6290 lt!1373511))))))

(assert (=> d!1166024 (= lt!1373765 e!2432585)))

(declare-fun c!683243 () Bool)

(assert (=> d!1166024 (= c!683243 ((_ is Nil!41747) lt!1373471))))

(assert (=> d!1166024 (= (++!10793 lt!1373471 lt!1373511) lt!1373765)))

(declare-fun b!3932222 () Bool)

(declare-fun res!1591048 () Bool)

(assert (=> b!3932222 (=> (not res!1591048) (not e!2432586))))

(assert (=> b!3932222 (= res!1591048 (= (size!31322 lt!1373765) (+ (size!31322 lt!1373471) (size!31322 lt!1373511))))))

(declare-fun b!3932223 () Bool)

(assert (=> b!3932223 (= e!2432586 (or (not (= lt!1373511 Nil!41747)) (= lt!1373765 lt!1373471)))))

(assert (= (and d!1166024 c!683243) b!3932220))

(assert (= (and d!1166024 (not c!683243)) b!3932221))

(assert (= (and d!1166024 res!1591047) b!3932222))

(assert (= (and b!3932222 res!1591048) b!3932223))

(declare-fun m!4498587 () Bool)

(assert (=> b!3932221 m!4498587))

(declare-fun m!4498589 () Bool)

(assert (=> d!1166024 m!4498589))

(assert (=> d!1166024 m!4498019))

(declare-fun m!4498591 () Bool)

(assert (=> d!1166024 m!4498591))

(declare-fun m!4498593 () Bool)

(assert (=> b!3932222 m!4498593))

(assert (=> b!3932222 m!4498025))

(declare-fun m!4498595 () Bool)

(assert (=> b!3932222 m!4498595))

(assert (=> b!3931662 d!1166024))

(declare-fun b!3932229 () Bool)

(declare-fun e!2432590 () List!41871)

(assert (=> b!3932229 (= e!2432590 lt!1373488)))

(declare-fun b!3932230 () Bool)

(assert (=> b!3932230 (= e!2432590 (Cons!41747 (h!47167 lt!1373471) (++!10793 (t!325728 lt!1373471) lt!1373488)))))

(declare-fun d!1166026 () Bool)

(declare-fun e!2432591 () Bool)

(assert (=> d!1166026 e!2432591))

(declare-fun res!1591049 () Bool)

(assert (=> d!1166026 (=> (not res!1591049) (not e!2432591))))

(declare-fun lt!1373766 () List!41871)

(assert (=> d!1166026 (= res!1591049 (= (content!6290 lt!1373766) ((_ map or) (content!6290 lt!1373471) (content!6290 lt!1373488))))))

(assert (=> d!1166026 (= lt!1373766 e!2432590)))

(declare-fun c!683244 () Bool)

(assert (=> d!1166026 (= c!683244 ((_ is Nil!41747) lt!1373471))))

(assert (=> d!1166026 (= (++!10793 lt!1373471 lt!1373488) lt!1373766)))

(declare-fun b!3932231 () Bool)

(declare-fun res!1591050 () Bool)

(assert (=> b!3932231 (=> (not res!1591050) (not e!2432591))))

(assert (=> b!3932231 (= res!1591050 (= (size!31322 lt!1373766) (+ (size!31322 lt!1373471) (size!31322 lt!1373488))))))

(declare-fun b!3932232 () Bool)

(assert (=> b!3932232 (= e!2432591 (or (not (= lt!1373488 Nil!41747)) (= lt!1373766 lt!1373471)))))

(assert (= (and d!1166026 c!683244) b!3932229))

(assert (= (and d!1166026 (not c!683244)) b!3932230))

(assert (= (and d!1166026 res!1591049) b!3932231))

(assert (= (and b!3932231 res!1591050) b!3932232))

(declare-fun m!4498597 () Bool)

(assert (=> b!3932230 m!4498597))

(declare-fun m!4498599 () Bool)

(assert (=> d!1166026 m!4498599))

(assert (=> d!1166026 m!4498019))

(assert (=> d!1166026 m!4498521))

(declare-fun m!4498601 () Bool)

(assert (=> b!3932231 m!4498601))

(assert (=> b!3932231 m!4498025))

(assert (=> b!3932231 m!4498525))

(assert (=> b!3931662 d!1166026))

(declare-fun d!1166028 () Bool)

(assert (=> d!1166028 (= (++!10793 (++!10793 lt!1373471 lt!1373488) suffixTokens!72) (++!10793 lt!1373471 (++!10793 lt!1373488 suffixTokens!72)))))

(declare-fun lt!1373769 () Unit!60172)

(declare-fun choose!23397 (List!41871 List!41871 List!41871) Unit!60172)

(assert (=> d!1166028 (= lt!1373769 (choose!23397 lt!1373471 lt!1373488 suffixTokens!72))))

(assert (=> d!1166028 (= (lemmaConcatAssociativity!2324 lt!1373471 lt!1373488 suffixTokens!72) lt!1373769)))

(declare-fun bs!586281 () Bool)

(assert (= bs!586281 d!1166028))

(assert (=> bs!586281 m!4497699))

(declare-fun m!4498607 () Bool)

(assert (=> bs!586281 m!4498607))

(assert (=> bs!586281 m!4497699))

(declare-fun m!4498609 () Bool)

(assert (=> bs!586281 m!4498609))

(assert (=> bs!586281 m!4497625))

(assert (=> bs!586281 m!4497625))

(assert (=> bs!586281 m!4497627))

(assert (=> b!3931662 d!1166028))

(declare-fun b!3932249 () Bool)

(declare-fun res!1591051 () Bool)

(declare-fun e!2432610 () Bool)

(assert (=> b!3932249 (=> res!1591051 e!2432610)))

(assert (=> b!3932249 (= res!1591051 (not ((_ is IntegerValue!20246) (value!206397 (h!47167 prefixTokens!80)))))))

(declare-fun e!2432612 () Bool)

(assert (=> b!3932249 (= e!2432612 e!2432610)))

(declare-fun b!3932250 () Bool)

(declare-fun e!2432611 () Bool)

(assert (=> b!3932250 (= e!2432611 (inv!16 (value!206397 (h!47167 prefixTokens!80))))))

(declare-fun b!3932251 () Bool)

(assert (=> b!3932251 (= e!2432610 (inv!15 (value!206397 (h!47167 prefixTokens!80))))))

(declare-fun d!1166030 () Bool)

(declare-fun c!683245 () Bool)

(assert (=> d!1166030 (= c!683245 ((_ is IntegerValue!20244) (value!206397 (h!47167 prefixTokens!80))))))

(assert (=> d!1166030 (= (inv!21 (value!206397 (h!47167 prefixTokens!80))) e!2432611)))

(declare-fun b!3932252 () Bool)

(assert (=> b!3932252 (= e!2432611 e!2432612)))

(declare-fun c!683246 () Bool)

(assert (=> b!3932252 (= c!683246 ((_ is IntegerValue!20245) (value!206397 (h!47167 prefixTokens!80))))))

(declare-fun b!3932253 () Bool)

(assert (=> b!3932253 (= e!2432612 (inv!17 (value!206397 (h!47167 prefixTokens!80))))))

(assert (= (and d!1166030 c!683245) b!3932250))

(assert (= (and d!1166030 (not c!683245)) b!3932252))

(assert (= (and b!3932252 c!683246) b!3932253))

(assert (= (and b!3932252 (not c!683246)) b!3932249))

(assert (= (and b!3932249 (not res!1591051)) b!3932251))

(declare-fun m!4498613 () Bool)

(assert (=> b!3932250 m!4498613))

(declare-fun m!4498617 () Bool)

(assert (=> b!3932251 m!4498617))

(declare-fun m!4498623 () Bool)

(assert (=> b!3932253 m!4498623))

(assert (=> b!3931683 d!1166030))

(declare-fun d!1166032 () Bool)

(assert (=> d!1166032 (= (isEmpty!24887 suffix!1176) ((_ is Nil!41745) suffix!1176))))

(assert (=> b!3931682 d!1166032))

(declare-fun b!3932278 () Bool)

(declare-fun res!1591070 () Bool)

(declare-fun e!2432622 () Bool)

(assert (=> b!3932278 (=> (not res!1591070) (not e!2432622))))

(declare-fun lt!1373783 () Option!8938)

(assert (=> b!3932278 (= res!1591070 (= (value!206397 (_1!23645 (get!13797 lt!1373783))) (apply!9757 (transformation!6518 (rule!9464 (_1!23645 (get!13797 lt!1373783)))) (seqFromList!4785 (originalCharacters!7118 (_1!23645 (get!13797 lt!1373783)))))))))

(declare-fun b!3932279 () Bool)

(declare-fun e!2432623 () Option!8938)

(declare-fun call!284876 () Option!8938)

(assert (=> b!3932279 (= e!2432623 call!284876)))

(declare-fun b!3932280 () Bool)

(declare-fun res!1591069 () Bool)

(assert (=> b!3932280 (=> (not res!1591069) (not e!2432622))))

(assert (=> b!3932280 (= res!1591069 (< (size!31320 (_2!23645 (get!13797 lt!1373783))) (size!31320 lt!1373486)))))

(declare-fun b!3932281 () Bool)

(declare-fun res!1591072 () Bool)

(assert (=> b!3932281 (=> (not res!1591072) (not e!2432622))))

(assert (=> b!3932281 (= res!1591072 (= (list!15511 (charsOf!4342 (_1!23645 (get!13797 lt!1373783)))) (originalCharacters!7118 (_1!23645 (get!13797 lt!1373783)))))))

(declare-fun b!3932282 () Bool)

(declare-fun lt!1373784 () Option!8938)

(declare-fun lt!1373780 () Option!8938)

(assert (=> b!3932282 (= e!2432623 (ite (and ((_ is None!8937) lt!1373784) ((_ is None!8937) lt!1373780)) None!8937 (ite ((_ is None!8937) lt!1373780) lt!1373784 (ite ((_ is None!8937) lt!1373784) lt!1373780 (ite (>= (size!31319 (_1!23645 (v!39265 lt!1373784))) (size!31319 (_1!23645 (v!39265 lt!1373780)))) lt!1373784 lt!1373780)))))))

(assert (=> b!3932282 (= lt!1373784 call!284876)))

(assert (=> b!3932282 (= lt!1373780 (maxPrefix!3411 thiss!20629 (t!325729 rules!2768) lt!1373486))))

(declare-fun d!1166034 () Bool)

(declare-fun e!2432624 () Bool)

(assert (=> d!1166034 e!2432624))

(declare-fun res!1591067 () Bool)

(assert (=> d!1166034 (=> res!1591067 e!2432624)))

(assert (=> d!1166034 (= res!1591067 (isEmpty!24890 lt!1373783))))

(assert (=> d!1166034 (= lt!1373783 e!2432623)))

(declare-fun c!683249 () Bool)

(assert (=> d!1166034 (= c!683249 (and ((_ is Cons!41748) rules!2768) ((_ is Nil!41748) (t!325729 rules!2768))))))

(declare-fun lt!1373781 () Unit!60172)

(declare-fun lt!1373782 () Unit!60172)

(assert (=> d!1166034 (= lt!1373781 lt!1373782)))

(assert (=> d!1166034 (isPrefix!3613 lt!1373486 lt!1373486)))

(declare-fun lemmaIsPrefixRefl!2280 (List!41869 List!41869) Unit!60172)

(assert (=> d!1166034 (= lt!1373782 (lemmaIsPrefixRefl!2280 lt!1373486 lt!1373486))))

(declare-fun rulesValidInductive!2350 (LexerInterface!6107 List!41872) Bool)

(assert (=> d!1166034 (rulesValidInductive!2350 thiss!20629 rules!2768)))

(assert (=> d!1166034 (= (maxPrefix!3411 thiss!20629 rules!2768 lt!1373486) lt!1373783)))

(declare-fun b!3932283 () Bool)

(declare-fun res!1591066 () Bool)

(assert (=> b!3932283 (=> (not res!1591066) (not e!2432622))))

(assert (=> b!3932283 (= res!1591066 (= (++!10794 (list!15511 (charsOf!4342 (_1!23645 (get!13797 lt!1373783)))) (_2!23645 (get!13797 lt!1373783))) lt!1373486))))

(declare-fun b!3932284 () Bool)

(assert (=> b!3932284 (= e!2432622 (contains!8366 rules!2768 (rule!9464 (_1!23645 (get!13797 lt!1373783)))))))

(declare-fun bm!284871 () Bool)

(assert (=> bm!284871 (= call!284876 (maxPrefixOneRule!2481 thiss!20629 (h!47168 rules!2768) lt!1373486))))

(declare-fun b!3932285 () Bool)

(declare-fun res!1591068 () Bool)

(assert (=> b!3932285 (=> (not res!1591068) (not e!2432622))))

(assert (=> b!3932285 (= res!1591068 (matchR!5482 (regex!6518 (rule!9464 (_1!23645 (get!13797 lt!1373783)))) (list!15511 (charsOf!4342 (_1!23645 (get!13797 lt!1373783))))))))

(declare-fun b!3932286 () Bool)

(assert (=> b!3932286 (= e!2432624 e!2432622)))

(declare-fun res!1591071 () Bool)

(assert (=> b!3932286 (=> (not res!1591071) (not e!2432622))))

(declare-fun isDefined!6949 (Option!8938) Bool)

(assert (=> b!3932286 (= res!1591071 (isDefined!6949 lt!1373783))))

(assert (= (and d!1166034 c!683249) b!3932279))

(assert (= (and d!1166034 (not c!683249)) b!3932282))

(assert (= (or b!3932279 b!3932282) bm!284871))

(assert (= (and d!1166034 (not res!1591067)) b!3932286))

(assert (= (and b!3932286 res!1591071) b!3932281))

(assert (= (and b!3932281 res!1591072) b!3932280))

(assert (= (and b!3932280 res!1591069) b!3932283))

(assert (= (and b!3932283 res!1591066) b!3932278))

(assert (= (and b!3932278 res!1591070) b!3932285))

(assert (= (and b!3932285 res!1591068) b!3932284))

(declare-fun m!4498625 () Bool)

(assert (=> b!3932278 m!4498625))

(declare-fun m!4498627 () Bool)

(assert (=> b!3932278 m!4498627))

(assert (=> b!3932278 m!4498627))

(declare-fun m!4498629 () Bool)

(assert (=> b!3932278 m!4498629))

(assert (=> b!3932283 m!4498625))

(declare-fun m!4498631 () Bool)

(assert (=> b!3932283 m!4498631))

(assert (=> b!3932283 m!4498631))

(declare-fun m!4498633 () Bool)

(assert (=> b!3932283 m!4498633))

(assert (=> b!3932283 m!4498633))

(declare-fun m!4498635 () Bool)

(assert (=> b!3932283 m!4498635))

(assert (=> b!3932284 m!4498625))

(declare-fun m!4498637 () Bool)

(assert (=> b!3932284 m!4498637))

(declare-fun m!4498639 () Bool)

(assert (=> d!1166034 m!4498639))

(declare-fun m!4498641 () Bool)

(assert (=> d!1166034 m!4498641))

(declare-fun m!4498643 () Bool)

(assert (=> d!1166034 m!4498643))

(declare-fun m!4498645 () Bool)

(assert (=> d!1166034 m!4498645))

(assert (=> b!3932281 m!4498625))

(assert (=> b!3932281 m!4498631))

(assert (=> b!3932281 m!4498631))

(assert (=> b!3932281 m!4498633))

(assert (=> b!3932280 m!4498625))

(declare-fun m!4498647 () Bool)

(assert (=> b!3932280 m!4498647))

(assert (=> b!3932280 m!4497715))

(declare-fun m!4498649 () Bool)

(assert (=> b!3932282 m!4498649))

(declare-fun m!4498651 () Bool)

(assert (=> b!3932286 m!4498651))

(assert (=> b!3932285 m!4498625))

(assert (=> b!3932285 m!4498631))

(assert (=> b!3932285 m!4498631))

(assert (=> b!3932285 m!4498633))

(assert (=> b!3932285 m!4498633))

(declare-fun m!4498653 () Bool)

(assert (=> b!3932285 m!4498653))

(declare-fun m!4498655 () Bool)

(assert (=> bm!284871 m!4498655))

(assert (=> b!3931661 d!1166034))

(declare-fun b!3932288 () Bool)

(declare-fun e!2432626 () List!41869)

(assert (=> b!3932288 (= e!2432626 (Cons!41745 (h!47165 lt!1373502) (++!10794 (t!325726 lt!1373502) lt!1373482)))))

(declare-fun d!1166036 () Bool)

(declare-fun e!2432625 () Bool)

(assert (=> d!1166036 e!2432625))

(declare-fun res!1591073 () Bool)

(assert (=> d!1166036 (=> (not res!1591073) (not e!2432625))))

(declare-fun lt!1373785 () List!41869)

(assert (=> d!1166036 (= res!1591073 (= (content!6288 lt!1373785) ((_ map or) (content!6288 lt!1373502) (content!6288 lt!1373482))))))

(assert (=> d!1166036 (= lt!1373785 e!2432626)))

(declare-fun c!683250 () Bool)

(assert (=> d!1166036 (= c!683250 ((_ is Nil!41745) lt!1373502))))

(assert (=> d!1166036 (= (++!10794 lt!1373502 lt!1373482) lt!1373785)))

(declare-fun b!3932289 () Bool)

(declare-fun res!1591074 () Bool)

(assert (=> b!3932289 (=> (not res!1591074) (not e!2432625))))

(assert (=> b!3932289 (= res!1591074 (= (size!31320 lt!1373785) (+ (size!31320 lt!1373502) (size!31320 lt!1373482))))))

(declare-fun b!3932287 () Bool)

(assert (=> b!3932287 (= e!2432626 lt!1373482)))

(declare-fun b!3932290 () Bool)

(assert (=> b!3932290 (= e!2432625 (or (not (= lt!1373482 Nil!41745)) (= lt!1373785 lt!1373502)))))

(assert (= (and d!1166036 c!683250) b!3932287))

(assert (= (and d!1166036 (not c!683250)) b!3932288))

(assert (= (and d!1166036 res!1591073) b!3932289))

(assert (= (and b!3932289 res!1591074) b!3932290))

(declare-fun m!4498657 () Bool)

(assert (=> b!3932288 m!4498657))

(declare-fun m!4498659 () Bool)

(assert (=> d!1166036 m!4498659))

(assert (=> d!1166036 m!4497753))

(declare-fun m!4498661 () Bool)

(assert (=> d!1166036 m!4498661))

(declare-fun m!4498663 () Bool)

(assert (=> b!3932289 m!4498663))

(assert (=> b!3932289 m!4497609))

(assert (=> b!3932289 m!4498529))

(assert (=> b!3931660 d!1166036))

(declare-fun b!3932292 () Bool)

(declare-fun e!2432628 () List!41869)

(assert (=> b!3932292 (= e!2432628 (Cons!41745 (h!47165 lt!1373470) (++!10794 (t!325726 lt!1373470) suffix!1176)))))

(declare-fun d!1166038 () Bool)

(declare-fun e!2432627 () Bool)

(assert (=> d!1166038 e!2432627))

(declare-fun res!1591075 () Bool)

(assert (=> d!1166038 (=> (not res!1591075) (not e!2432627))))

(declare-fun lt!1373786 () List!41869)

(assert (=> d!1166038 (= res!1591075 (= (content!6288 lt!1373786) ((_ map or) (content!6288 lt!1373470) (content!6288 suffix!1176))))))

(assert (=> d!1166038 (= lt!1373786 e!2432628)))

(declare-fun c!683251 () Bool)

(assert (=> d!1166038 (= c!683251 ((_ is Nil!41745) lt!1373470))))

(assert (=> d!1166038 (= (++!10794 lt!1373470 suffix!1176) lt!1373786)))

(declare-fun b!3932293 () Bool)

(declare-fun res!1591076 () Bool)

(assert (=> b!3932293 (=> (not res!1591076) (not e!2432627))))

(assert (=> b!3932293 (= res!1591076 (= (size!31320 lt!1373786) (+ (size!31320 lt!1373470) (size!31320 suffix!1176))))))

(declare-fun b!3932291 () Bool)

(assert (=> b!3932291 (= e!2432628 suffix!1176)))

(declare-fun b!3932294 () Bool)

(assert (=> b!3932294 (= e!2432627 (or (not (= suffix!1176 Nil!41745)) (= lt!1373786 lt!1373470)))))

(assert (= (and d!1166038 c!683251) b!3932291))

(assert (= (and d!1166038 (not c!683251)) b!3932292))

(assert (= (and d!1166038 res!1591075) b!3932293))

(assert (= (and b!3932293 res!1591076) b!3932294))

(declare-fun m!4498665 () Bool)

(assert (=> b!3932292 m!4498665))

(declare-fun m!4498667 () Bool)

(assert (=> d!1166038 m!4498667))

(assert (=> d!1166038 m!4498351))

(assert (=> d!1166038 m!4498315))

(declare-fun m!4498669 () Bool)

(assert (=> b!3932293 m!4498669))

(assert (=> b!3932293 m!4497903))

(assert (=> b!3932293 m!4497727))

(assert (=> b!3931660 d!1166038))

(declare-fun d!1166040 () Bool)

(assert (=> d!1166040 (= (++!10794 (++!10794 lt!1373502 lt!1373470) suffix!1176) (++!10794 lt!1373502 (++!10794 lt!1373470 suffix!1176)))))

(declare-fun lt!1373789 () Unit!60172)

(declare-fun choose!23399 (List!41869 List!41869 List!41869) Unit!60172)

(assert (=> d!1166040 (= lt!1373789 (choose!23399 lt!1373502 lt!1373470 suffix!1176))))

(assert (=> d!1166040 (= (lemmaConcatAssociativity!2323 lt!1373502 lt!1373470 suffix!1176) lt!1373789)))

(declare-fun bs!586282 () Bool)

(assert (= bs!586282 d!1166040))

(declare-fun m!4498671 () Bool)

(assert (=> bs!586282 m!4498671))

(assert (=> bs!586282 m!4497641))

(assert (=> bs!586282 m!4497653))

(assert (=> bs!586282 m!4497641))

(declare-fun m!4498673 () Bool)

(assert (=> bs!586282 m!4498673))

(assert (=> bs!586282 m!4497653))

(declare-fun m!4498675 () Bool)

(assert (=> bs!586282 m!4498675))

(assert (=> b!3931660 d!1166040))

(declare-fun b!3932308 () Bool)

(declare-fun b_free!107333 () Bool)

(declare-fun b_next!108037 () Bool)

(assert (=> b!3932308 (= b_free!107333 (not b_next!108037))))

(declare-fun tb!235205 () Bool)

(declare-fun t!325803 () Bool)

(assert (=> (and b!3932308 (= (toValue!8974 (transformation!6518 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325803) tb!235205))

(declare-fun result!284972 () Bool)

(assert (= result!284972 result!284890))

(assert (=> d!1165726 t!325803))

(declare-fun tp!1196881 () Bool)

(declare-fun b_and!300143 () Bool)

(assert (=> b!3932308 (= tp!1196881 (and (=> t!325803 result!284972) b_and!300143))))

(declare-fun b_free!107335 () Bool)

(declare-fun b_next!108039 () Bool)

(assert (=> b!3932308 (= b_free!107335 (not b_next!108039))))

(declare-fun tb!235207 () Bool)

(declare-fun t!325805 () Bool)

(assert (=> (and b!3932308 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325805) tb!235207))

(declare-fun result!284974 () Bool)

(assert (= result!284974 result!284898))

(assert (=> d!1165744 t!325805))

(declare-fun t!325807 () Bool)

(declare-fun tb!235209 () Bool)

(assert (=> (and b!3932308 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))) t!325807) tb!235209))

(declare-fun result!284976 () Bool)

(assert (= result!284976 result!284926))

(assert (=> b!3932072 t!325807))

(declare-fun tb!235211 () Bool)

(declare-fun t!325809 () Bool)

(assert (=> (and b!3932308 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))) t!325809) tb!235211))

(declare-fun result!284978 () Bool)

(assert (= result!284978 result!284932))

(assert (=> b!3932087 t!325809))

(declare-fun b_and!300145 () Bool)

(declare-fun tp!1196882 () Bool)

(assert (=> b!3932308 (= tp!1196882 (and (=> t!325805 result!284974) (=> t!325807 result!284976) (=> t!325809 result!284978) b_and!300145))))

(declare-fun e!2432642 () Bool)

(declare-fun e!2432645 () Bool)

(declare-fun tp!1196883 () Bool)

(declare-fun b!3932305 () Bool)

(assert (=> b!3932305 (= e!2432642 (and (inv!55942 (h!47167 (t!325728 suffixTokens!72))) e!2432645 tp!1196883))))

(declare-fun b!3932307 () Bool)

(declare-fun tp!1196879 () Bool)

(declare-fun e!2432646 () Bool)

(declare-fun e!2432641 () Bool)

(assert (=> b!3932307 (= e!2432641 (and tp!1196879 (inv!55939 (tag!7378 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) (inv!55943 (transformation!6518 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) e!2432646))))

(assert (=> b!3931696 (= tp!1196782 e!2432642)))

(declare-fun tp!1196880 () Bool)

(declare-fun b!3932306 () Bool)

(assert (=> b!3932306 (= e!2432645 (and (inv!21 (value!206397 (h!47167 (t!325728 suffixTokens!72)))) e!2432641 tp!1196880))))

(assert (=> b!3932308 (= e!2432646 (and tp!1196881 tp!1196882))))

(assert (= b!3932307 b!3932308))

(assert (= b!3932306 b!3932307))

(assert (= b!3932305 b!3932306))

(assert (= (and b!3931696 ((_ is Cons!41747) (t!325728 suffixTokens!72))) b!3932305))

(declare-fun m!4498677 () Bool)

(assert (=> b!3932305 m!4498677))

(declare-fun m!4498679 () Bool)

(assert (=> b!3932307 m!4498679))

(declare-fun m!4498681 () Bool)

(assert (=> b!3932307 m!4498681))

(declare-fun m!4498683 () Bool)

(assert (=> b!3932306 m!4498683))

(declare-fun b!3932322 () Bool)

(declare-fun e!2432649 () Bool)

(declare-fun tp!1196896 () Bool)

(declare-fun tp!1196897 () Bool)

(assert (=> b!3932322 (= e!2432649 (and tp!1196896 tp!1196897))))

(declare-fun b!3932320 () Bool)

(declare-fun tp!1196895 () Bool)

(declare-fun tp!1196898 () Bool)

(assert (=> b!3932320 (= e!2432649 (and tp!1196895 tp!1196898))))

(declare-fun b!3932321 () Bool)

(declare-fun tp!1196894 () Bool)

(assert (=> b!3932321 (= e!2432649 tp!1196894)))

(declare-fun b!3932319 () Bool)

(assert (=> b!3932319 (= e!2432649 tp_is_empty!19817)))

(assert (=> b!3931675 (= tp!1196778 e!2432649)))

(assert (= (and b!3931675 ((_ is ElementMatch!11423) (regex!6518 (rule!9464 (h!47167 prefixTokens!80))))) b!3932319))

(assert (= (and b!3931675 ((_ is Concat!18172) (regex!6518 (rule!9464 (h!47167 prefixTokens!80))))) b!3932320))

(assert (= (and b!3931675 ((_ is Star!11423) (regex!6518 (rule!9464 (h!47167 prefixTokens!80))))) b!3932321))

(assert (= (and b!3931675 ((_ is Union!11423) (regex!6518 (rule!9464 (h!47167 prefixTokens!80))))) b!3932322))

(declare-fun b!3932326 () Bool)

(declare-fun b_free!107337 () Bool)

(declare-fun b_next!108041 () Bool)

(assert (=> b!3932326 (= b_free!107337 (not b_next!108041))))

(declare-fun t!325811 () Bool)

(declare-fun tb!235213 () Bool)

(assert (=> (and b!3932326 (= (toValue!8974 (transformation!6518 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325811) tb!235213))

(declare-fun result!284982 () Bool)

(assert (= result!284982 result!284890))

(assert (=> d!1165726 t!325811))

(declare-fun tp!1196901 () Bool)

(declare-fun b_and!300147 () Bool)

(assert (=> b!3932326 (= tp!1196901 (and (=> t!325811 result!284982) b_and!300147))))

(declare-fun b_free!107339 () Bool)

(declare-fun b_next!108043 () Bool)

(assert (=> b!3932326 (= b_free!107339 (not b_next!108043))))

(declare-fun t!325813 () Bool)

(declare-fun tb!235215 () Bool)

(assert (=> (and b!3932326 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325813) tb!235215))

(declare-fun result!284984 () Bool)

(assert (= result!284984 result!284898))

(assert (=> d!1165744 t!325813))

(declare-fun t!325815 () Bool)

(declare-fun tb!235217 () Bool)

(assert (=> (and b!3932326 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))) t!325815) tb!235217))

(declare-fun result!284986 () Bool)

(assert (= result!284986 result!284926))

(assert (=> b!3932072 t!325815))

(declare-fun t!325817 () Bool)

(declare-fun tb!235219 () Bool)

(assert (=> (and b!3932326 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))) t!325817) tb!235219))

(declare-fun result!284988 () Bool)

(assert (= result!284988 result!284932))

(assert (=> b!3932087 t!325817))

(declare-fun b_and!300149 () Bool)

(declare-fun tp!1196902 () Bool)

(assert (=> b!3932326 (= tp!1196902 (and (=> t!325813 result!284984) (=> t!325815 result!284986) (=> t!325817 result!284988) b_and!300149))))

(declare-fun e!2432651 () Bool)

(declare-fun b!3932323 () Bool)

(declare-fun tp!1196903 () Bool)

(declare-fun e!2432654 () Bool)

(assert (=> b!3932323 (= e!2432651 (and (inv!55942 (h!47167 (t!325728 prefixTokens!80))) e!2432654 tp!1196903))))

(declare-fun b!3932325 () Bool)

(declare-fun e!2432655 () Bool)

(declare-fun tp!1196899 () Bool)

(declare-fun e!2432650 () Bool)

(assert (=> b!3932325 (= e!2432650 (and tp!1196899 (inv!55939 (tag!7378 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) (inv!55943 (transformation!6518 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) e!2432655))))

(assert (=> b!3931652 (= tp!1196794 e!2432651)))

(declare-fun tp!1196900 () Bool)

(declare-fun b!3932324 () Bool)

(assert (=> b!3932324 (= e!2432654 (and (inv!21 (value!206397 (h!47167 (t!325728 prefixTokens!80)))) e!2432650 tp!1196900))))

(assert (=> b!3932326 (= e!2432655 (and tp!1196901 tp!1196902))))

(assert (= b!3932325 b!3932326))

(assert (= b!3932324 b!3932325))

(assert (= b!3932323 b!3932324))

(assert (= (and b!3931652 ((_ is Cons!41747) (t!325728 prefixTokens!80))) b!3932323))

(declare-fun m!4498685 () Bool)

(assert (=> b!3932323 m!4498685))

(declare-fun m!4498687 () Bool)

(assert (=> b!3932325 m!4498687))

(declare-fun m!4498689 () Bool)

(assert (=> b!3932325 m!4498689))

(declare-fun m!4498691 () Bool)

(assert (=> b!3932324 m!4498691))

(declare-fun b!3932330 () Bool)

(declare-fun e!2432656 () Bool)

(declare-fun tp!1196906 () Bool)

(declare-fun tp!1196907 () Bool)

(assert (=> b!3932330 (= e!2432656 (and tp!1196906 tp!1196907))))

(declare-fun b!3932328 () Bool)

(declare-fun tp!1196905 () Bool)

(declare-fun tp!1196908 () Bool)

(assert (=> b!3932328 (= e!2432656 (and tp!1196905 tp!1196908))))

(declare-fun b!3932329 () Bool)

(declare-fun tp!1196904 () Bool)

(assert (=> b!3932329 (= e!2432656 tp!1196904)))

(declare-fun b!3932327 () Bool)

(assert (=> b!3932327 (= e!2432656 tp_is_empty!19817)))

(assert (=> b!3931663 (= tp!1196783 e!2432656)))

(assert (= (and b!3931663 ((_ is ElementMatch!11423) (regex!6518 (rule!9464 (h!47167 suffixTokens!72))))) b!3932327))

(assert (= (and b!3931663 ((_ is Concat!18172) (regex!6518 (rule!9464 (h!47167 suffixTokens!72))))) b!3932328))

(assert (= (and b!3931663 ((_ is Star!11423) (regex!6518 (rule!9464 (h!47167 suffixTokens!72))))) b!3932329))

(assert (= (and b!3931663 ((_ is Union!11423) (regex!6518 (rule!9464 (h!47167 suffixTokens!72))))) b!3932330))

(declare-fun b!3932341 () Bool)

(declare-fun b_free!107341 () Bool)

(declare-fun b_next!108045 () Bool)

(assert (=> b!3932341 (= b_free!107341 (not b_next!108045))))

(declare-fun tb!235221 () Bool)

(declare-fun t!325819 () Bool)

(assert (=> (and b!3932341 (= (toValue!8974 (transformation!6518 (h!47168 (t!325729 rules!2768)))) (toValue!8974 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325819) tb!235221))

(declare-fun result!284992 () Bool)

(assert (= result!284992 result!284890))

(assert (=> d!1165726 t!325819))

(declare-fun b_and!300151 () Bool)

(declare-fun tp!1196919 () Bool)

(assert (=> b!3932341 (= tp!1196919 (and (=> t!325819 result!284992) b_and!300151))))

(declare-fun b_free!107343 () Bool)

(declare-fun b_next!108047 () Bool)

(assert (=> b!3932341 (= b_free!107343 (not b_next!108047))))

(declare-fun tb!235223 () Bool)

(declare-fun t!325821 () Bool)

(assert (=> (and b!3932341 (= (toChars!8833 (transformation!6518 (h!47168 (t!325729 rules!2768)))) (toChars!8833 (transformation!6518 (rule!9464 (_1!23645 (v!39265 lt!1373503)))))) t!325821) tb!235223))

(declare-fun result!284994 () Bool)

(assert (= result!284994 result!284898))

(assert (=> d!1165744 t!325821))

(declare-fun tb!235225 () Bool)

(declare-fun t!325823 () Bool)

(assert (=> (and b!3932341 (= (toChars!8833 (transformation!6518 (h!47168 (t!325729 rules!2768)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72))))) t!325823) tb!235225))

(declare-fun result!284996 () Bool)

(assert (= result!284996 result!284926))

(assert (=> b!3932072 t!325823))

(declare-fun t!325825 () Bool)

(declare-fun tb!235227 () Bool)

(assert (=> (and b!3932341 (= (toChars!8833 (transformation!6518 (h!47168 (t!325729 rules!2768)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80))))) t!325825) tb!235227))

(declare-fun result!284998 () Bool)

(assert (= result!284998 result!284932))

(assert (=> b!3932087 t!325825))

(declare-fun tp!1196917 () Bool)

(declare-fun b_and!300153 () Bool)

(assert (=> b!3932341 (= tp!1196917 (and (=> t!325821 result!284994) (=> t!325823 result!284996) (=> t!325825 result!284998) b_and!300153))))

(declare-fun e!2432665 () Bool)

(assert (=> b!3932341 (= e!2432665 (and tp!1196919 tp!1196917))))

(declare-fun e!2432666 () Bool)

(declare-fun b!3932340 () Bool)

(declare-fun tp!1196920 () Bool)

(assert (=> b!3932340 (= e!2432666 (and tp!1196920 (inv!55939 (tag!7378 (h!47168 (t!325729 rules!2768)))) (inv!55943 (transformation!6518 (h!47168 (t!325729 rules!2768)))) e!2432665))))

(declare-fun b!3932339 () Bool)

(declare-fun e!2432667 () Bool)

(declare-fun tp!1196918 () Bool)

(assert (=> b!3932339 (= e!2432667 (and e!2432666 tp!1196918))))

(assert (=> b!3931670 (= tp!1196793 e!2432667)))

(assert (= b!3932340 b!3932341))

(assert (= b!3932339 b!3932340))

(assert (= (and b!3931670 ((_ is Cons!41748) (t!325729 rules!2768))) b!3932339))

(declare-fun m!4498693 () Bool)

(assert (=> b!3932340 m!4498693))

(declare-fun m!4498695 () Bool)

(assert (=> b!3932340 m!4498695))

(declare-fun b!3932346 () Bool)

(declare-fun e!2432671 () Bool)

(declare-fun tp!1196923 () Bool)

(assert (=> b!3932346 (= e!2432671 (and tp_is_empty!19817 tp!1196923))))

(assert (=> b!3931658 (= tp!1196787 e!2432671)))

(assert (= (and b!3931658 ((_ is Cons!41745) (t!325726 suffix!1176))) b!3932346))

(declare-fun b!3932347 () Bool)

(declare-fun e!2432672 () Bool)

(declare-fun tp!1196924 () Bool)

(assert (=> b!3932347 (= e!2432672 (and tp_is_empty!19817 tp!1196924))))

(assert (=> b!3931690 (= tp!1196784 e!2432672)))

(assert (= (and b!3931690 ((_ is Cons!41745) (t!325726 suffixResult!91))) b!3932347))

(declare-fun b!3932348 () Bool)

(declare-fun e!2432673 () Bool)

(declare-fun tp!1196925 () Bool)

(assert (=> b!3932348 (= e!2432673 (and tp_is_empty!19817 tp!1196925))))

(assert (=> b!3931669 (= tp!1196791 e!2432673)))

(assert (= (and b!3931669 ((_ is Cons!41745) (t!325726 prefix!426))) b!3932348))

(declare-fun b!3932352 () Bool)

(declare-fun e!2432674 () Bool)

(declare-fun tp!1196928 () Bool)

(declare-fun tp!1196929 () Bool)

(assert (=> b!3932352 (= e!2432674 (and tp!1196928 tp!1196929))))

(declare-fun b!3932350 () Bool)

(declare-fun tp!1196927 () Bool)

(declare-fun tp!1196930 () Bool)

(assert (=> b!3932350 (= e!2432674 (and tp!1196927 tp!1196930))))

(declare-fun b!3932351 () Bool)

(declare-fun tp!1196926 () Bool)

(assert (=> b!3932351 (= e!2432674 tp!1196926)))

(declare-fun b!3932349 () Bool)

(assert (=> b!3932349 (= e!2432674 tp_is_empty!19817)))

(assert (=> b!3931699 (= tp!1196789 e!2432674)))

(assert (= (and b!3931699 ((_ is ElementMatch!11423) (regex!6518 (h!47168 rules!2768)))) b!3932349))

(assert (= (and b!3931699 ((_ is Concat!18172) (regex!6518 (h!47168 rules!2768)))) b!3932350))

(assert (= (and b!3931699 ((_ is Star!11423) (regex!6518 (h!47168 rules!2768)))) b!3932351))

(assert (= (and b!3931699 ((_ is Union!11423) (regex!6518 (h!47168 rules!2768)))) b!3932352))

(declare-fun b!3932353 () Bool)

(declare-fun e!2432675 () Bool)

(declare-fun tp!1196931 () Bool)

(assert (=> b!3932353 (= e!2432675 (and tp_is_empty!19817 tp!1196931))))

(assert (=> b!3931679 (= tp!1196786 e!2432675)))

(assert (= (and b!3931679 ((_ is Cons!41745) (originalCharacters!7118 (h!47167 suffixTokens!72)))) b!3932353))

(declare-fun b!3932354 () Bool)

(declare-fun e!2432676 () Bool)

(declare-fun tp!1196932 () Bool)

(assert (=> b!3932354 (= e!2432676 (and tp_is_empty!19817 tp!1196932))))

(assert (=> b!3931683 (= tp!1196785 e!2432676)))

(assert (= (and b!3931683 ((_ is Cons!41745) (originalCharacters!7118 (h!47167 prefixTokens!80)))) b!3932354))

(declare-fun b_lambda!115039 () Bool)

(assert (= b_lambda!115031 (or (and b!3931685 b_free!107319 (= (toChars!8833 (transformation!6518 (h!47168 rules!2768))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))))) (and b!3932326 b_free!107339 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))))) (and b!3932308 b_free!107335 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))))) (and b!3931664 b_free!107315 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))))) (and b!3932341 b_free!107343 (= (toChars!8833 (transformation!6518 (h!47168 (t!325729 rules!2768)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))))) (and b!3931672 b_free!107311) b_lambda!115039)))

(declare-fun b_lambda!115041 () Bool)

(assert (= b_lambda!115033 (or (and b!3932326 b_free!107339 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 prefixTokens!80))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))))) (and b!3931685 b_free!107319 (= (toChars!8833 (transformation!6518 (h!47168 rules!2768))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))))) (and b!3931664 b_free!107315) (and b!3932341 b_free!107343 (= (toChars!8833 (transformation!6518 (h!47168 (t!325729 rules!2768)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))))) (and b!3932308 b_free!107335 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 (t!325728 suffixTokens!72))))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))))) (and b!3931672 b_free!107311 (= (toChars!8833 (transformation!6518 (rule!9464 (h!47167 suffixTokens!72)))) (toChars!8833 (transformation!6518 (rule!9464 (h!47167 prefixTokens!80)))))) b_lambda!115041)))

(check-sat (not bm!284871) (not d!1165828) (not b!3932339) (not d!1165718) (not b!3932159) (not b!3932039) (not b!3932288) (not b!3931928) (not b!3931737) (not b!3932036) (not b!3932102) (not b!3931838) (not b!3932072) (not d!1166016) (not b!3931829) (not b!3932088) (not d!1165758) (not b!3932104) (not b!3932167) (not b!3932231) (not b!3932293) (not tb!235175) (not b_next!108013) (not b!3932323) b_and!300091 (not b!3931963) (not b!3931927) (not b!3932280) (not d!1165764) (not b_next!108047) (not d!1166022) (not b!3932198) (not b!3931710) (not d!1166002) (not d!1165752) b_and!300151 (not b_lambda!115041) (not b_next!108021) (not b_lambda!115023) (not b!3932222) b_and!300093 (not b!3932199) (not b!3932289) (not b!3931964) (not b!3932325) (not b!3931800) (not b!3931734) (not b!3932292) (not b!3931974) (not b!3932169) (not b!3932075) (not b!3932137) (not b!3932324) (not b!3932285) (not d!1165858) (not d!1165950) (not b!3931711) (not b!3931929) (not b!3932351) (not d!1165998) (not d!1166028) (not b!3932166) (not b!3932078) (not d!1165860) b_and!300153 (not b_lambda!115021) (not d!1165946) (not b!3931971) (not tb!235139) (not b!3932283) (not d!1165932) (not d!1165808) (not b!3932347) b_and!300145 (not b_next!108045) (not b!3931837) (not b!3932305) (not d!1165876) (not b!3932144) (not b!3931770) (not b!3932346) (not b!3932151) (not d!1165872) (not d!1166036) (not b!3932076) (not b!3932049) (not d!1165968) (not b!3932306) (not b!3932140) (not b!3932161) (not d!1166000) (not d!1165766) (not b!3932085) b_and!300125 (not d!1166034) (not b!3931911) (not b!3932281) (not b!3931835) (not d!1166038) (not b!3932100) (not b!3932106) (not d!1165996) (not d!1166026) b_and!300149 (not b!3932282) (not b_next!108017) (not b!3932040) (not b!3932038) b_and!300089 (not b_next!108023) (not b!3932080) (not b!3932348) (not b!3932098) (not b!3932330) (not b!3932042) (not b!3932353) (not b!3931936) (not b!3932143) (not b!3932103) (not d!1165864) (not b!3931806) (not d!1166024) (not d!1165956) (not b!3932221) (not b!3932043) (not b!3932201) (not b_next!108039) (not d!1165940) (not d!1165720) (not b!3932147) (not d!1165814) (not b!3932083) (not d!1166010) (not b!3932251) (not d!1165780) (not b!3932087) (not b!3932320) (not b!3931931) (not d!1165744) (not b_next!108041) (not d!1165948) (not b!3932286) (not b_next!108019) b_and!300143 (not b!3932352) (not b_lambda!115039) (not b_next!108037) (not b!3932050) (not tb!235169) (not d!1165942) (not b!3931828) (not b!3932148) (not b!3931934) (not b!3932284) (not b!3932230) (not b!3932214) (not d!1165866) (not b!3932253) (not b!3932322) (not d!1166012) (not b!3931939) (not b!3932329) (not b_next!108043) (not b!3931973) (not d!1165768) (not b!3932152) (not b!3931970) (not b!3932250) (not b!3932074) (not tb!235145) (not b!3932082) (not d!1165734) (not b!3932035) (not b!3931840) (not b!3932354) (not d!1165738) (not b!3931910) (not b!3932321) (not b!3932307) (not b!3931830) (not b!3931735) (not d!1165976) (not b!3932340) b_and!300127 (not d!1165728) (not b!3932173) (not b!3932213) (not b!3931975) (not b!3932073) (not b!3931983) (not b!3932278) b_and!300147 (not b!3932160) (not b!3932045) (not d!1165988) (not d!1166040) (not d!1165772) (not b!3932328) (not d!1165816) (not d!1165832) tp_is_empty!19817 b_and!300129 (not b!3932350) (not b!3932138) (not d!1165770) (not d!1165938) (not b_next!108015) (not b!3932037) (not d!1165890) (not b!3931969))
(check-sat (not b_next!108013) b_and!300153 b_and!300125 (not b_next!108023) (not b_next!108039) (not b_next!108037) (not b_next!108043) b_and!300127 b_and!300147 b_and!300091 b_and!300151 (not b_next!108047) (not b_next!108021) b_and!300093 b_and!300145 (not b_next!108045) b_and!300149 (not b_next!108017) b_and!300089 (not b_next!108041) (not b_next!108019) b_and!300143 b_and!300129 (not b_next!108015))
