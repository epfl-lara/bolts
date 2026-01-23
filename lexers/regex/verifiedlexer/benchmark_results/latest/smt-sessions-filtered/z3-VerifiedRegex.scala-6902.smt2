; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363968 () Bool)

(assert start!363968)

(declare-fun b!3876014 () Bool)

(declare-fun b_free!104797 () Bool)

(declare-fun b_next!105501 () Bool)

(assert (=> b!3876014 (= b_free!104797 (not b_next!105501))))

(declare-fun tp!1175062 () Bool)

(declare-fun b_and!290643 () Bool)

(assert (=> b!3876014 (= tp!1175062 b_and!290643)))

(declare-fun b_free!104799 () Bool)

(declare-fun b_next!105503 () Bool)

(assert (=> b!3876014 (= b_free!104799 (not b_next!105503))))

(declare-fun tp!1175060 () Bool)

(declare-fun b_and!290645 () Bool)

(assert (=> b!3876014 (= tp!1175060 b_and!290645)))

(declare-fun b!3876020 () Bool)

(declare-fun b_free!104801 () Bool)

(declare-fun b_next!105505 () Bool)

(assert (=> b!3876020 (= b_free!104801 (not b_next!105505))))

(declare-fun tp!1175055 () Bool)

(declare-fun b_and!290647 () Bool)

(assert (=> b!3876020 (= tp!1175055 b_and!290647)))

(declare-fun b_free!104803 () Bool)

(declare-fun b_next!105507 () Bool)

(assert (=> b!3876020 (= b_free!104803 (not b_next!105507))))

(declare-fun tp!1175063 () Bool)

(declare-fun b_and!290649 () Bool)

(assert (=> b!3876020 (= tp!1175063 b_and!290649)))

(declare-fun b!3876025 () Bool)

(declare-fun b_free!104805 () Bool)

(declare-fun b_next!105509 () Bool)

(assert (=> b!3876025 (= b_free!104805 (not b_next!105509))))

(declare-fun tp!1175051 () Bool)

(declare-fun b_and!290651 () Bool)

(assert (=> b!3876025 (= tp!1175051 b_and!290651)))

(declare-fun b_free!104807 () Bool)

(declare-fun b_next!105511 () Bool)

(assert (=> b!3876025 (= b_free!104807 (not b_next!105511))))

(declare-fun tp!1175049 () Bool)

(declare-fun b_and!290653 () Bool)

(assert (=> b!3876025 (= tp!1175049 b_and!290653)))

(declare-fun b!3875987 () Bool)

(declare-fun e!2397818 () Bool)

(assert (=> b!3875987 (= e!2397818 false)))

(declare-fun b!3875988 () Bool)

(declare-datatypes ((Unit!59134 0))(
  ( (Unit!59135) )
))
(declare-fun e!2397847 () Unit!59134)

(declare-fun Unit!59136 () Unit!59134)

(assert (=> b!3875988 (= e!2397847 Unit!59136)))

(declare-fun lt!1350906 () Unit!59134)

(declare-datatypes ((C!22780 0))(
  ( (C!22781 (val!13484 Int)) )
))
(declare-datatypes ((List!41310 0))(
  ( (Nil!41186) (Cons!41186 (h!46606 C!22780) (t!314953 List!41310)) )
))
(declare-fun suffixResult!91 () List!41310)

(declare-datatypes ((LexerInterface!5981 0))(
  ( (LexerInterfaceExt!5978 (__x!25461 Int)) (Lexer!5979) )
))
(declare-fun thiss!20629 () LexerInterface!5981)

(declare-datatypes ((IArray!25211 0))(
  ( (IArray!25212 (innerList!12663 List!41310)) )
))
(declare-datatypes ((Conc!12603 0))(
  ( (Node!12603 (left!31621 Conc!12603) (right!31951 Conc!12603) (csize!25436 Int) (cheight!12814 Int)) (Leaf!19506 (xs!15909 IArray!25211) (csize!25437 Int)) (Empty!12603) )
))
(declare-datatypes ((BalanceConc!24800 0))(
  ( (BalanceConc!24801 (c!674410 Conc!12603)) )
))
(declare-datatypes ((List!41311 0))(
  ( (Nil!41187) (Cons!41187 (h!46607 (_ BitVec 16)) (t!314954 List!41311)) )
))
(declare-datatypes ((TokenValue!6622 0))(
  ( (FloatLiteralValue!13244 (text!46799 List!41311)) (TokenValueExt!6621 (__x!25462 Int)) (Broken!33110 (value!202780 List!41311)) (Object!6745) (End!6622) (Def!6622) (Underscore!6622) (Match!6622) (Else!6622) (Error!6622) (Case!6622) (If!6622) (Extends!6622) (Abstract!6622) (Class!6622) (Val!6622) (DelimiterValue!13244 (del!6682 List!41311)) (KeywordValue!6628 (value!202781 List!41311)) (CommentValue!13244 (value!202782 List!41311)) (WhitespaceValue!13244 (value!202783 List!41311)) (IndentationValue!6622 (value!202784 List!41311)) (String!46827) (Int32!6622) (Broken!33111 (value!202785 List!41311)) (Boolean!6623) (Unit!59137) (OperatorValue!6625 (op!6682 List!41311)) (IdentifierValue!13244 (value!202786 List!41311)) (IdentifierValue!13245 (value!202787 List!41311)) (WhitespaceValue!13245 (value!202788 List!41311)) (True!13244) (False!13244) (Broken!33112 (value!202789 List!41311)) (Broken!33113 (value!202790 List!41311)) (True!13245) (RightBrace!6622) (RightBracket!6622) (Colon!6622) (Null!6622) (Comma!6622) (LeftBracket!6622) (False!13245) (LeftBrace!6622) (ImaginaryLiteralValue!6622 (text!46800 List!41311)) (StringLiteralValue!19866 (value!202791 List!41311)) (EOFValue!6622 (value!202792 List!41311)) (IdentValue!6622 (value!202793 List!41311)) (DelimiterValue!13245 (value!202794 List!41311)) (DedentValue!6622 (value!202795 List!41311)) (NewLineValue!6622 (value!202796 List!41311)) (IntegerValue!19866 (value!202797 (_ BitVec 32)) (text!46801 List!41311)) (IntegerValue!19867 (value!202798 Int) (text!46802 List!41311)) (Times!6622) (Or!6622) (Equal!6622) (Minus!6622) (Broken!33114 (value!202799 List!41311)) (And!6622) (Div!6622) (LessEqual!6622) (Mod!6622) (Concat!17919) (Not!6622) (Plus!6622) (SpaceValue!6622 (value!202800 List!41311)) (IntegerValue!19868 (value!202801 Int) (text!46803 List!41311)) (StringLiteralValue!19867 (text!46804 List!41311)) (FloatLiteralValue!13245 (text!46805 List!41311)) (BytesLiteralValue!6622 (value!202802 List!41311)) (CommentValue!13245 (value!202803 List!41311)) (StringLiteralValue!19868 (value!202804 List!41311)) (ErrorTokenValue!6622 (msg!6683 List!41311)) )
))
(declare-datatypes ((String!46828 0))(
  ( (String!46829 (value!202805 String)) )
))
(declare-datatypes ((Regex!11297 0))(
  ( (ElementMatch!11297 (c!674411 C!22780)) (Concat!17920 (regOne!23106 Regex!11297) (regTwo!23106 Regex!11297)) (EmptyExpr!11297) (Star!11297 (reg!11626 Regex!11297)) (EmptyLang!11297) (Union!11297 (regOne!23107 Regex!11297) (regTwo!23107 Regex!11297)) )
))
(declare-datatypes ((TokenValueInjection!12672 0))(
  ( (TokenValueInjection!12673 (toValue!8820 Int) (toChars!8679 Int)) )
))
(declare-datatypes ((Rule!12584 0))(
  ( (Rule!12585 (regex!6392 Regex!11297) (tag!7252 String!46828) (isSeparator!6392 Bool) (transformation!6392 TokenValueInjection!12672)) )
))
(declare-datatypes ((List!41312 0))(
  ( (Nil!41188) (Cons!41188 (h!46608 Rule!12584) (t!314955 List!41312)) )
))
(declare-fun rules!2768 () List!41312)

(declare-datatypes ((Token!11922 0))(
  ( (Token!11923 (value!202806 TokenValue!6622) (rule!9288 Rule!12584) (size!30953 Int) (originalCharacters!6992 List!41310)) )
))
(declare-datatypes ((List!41313 0))(
  ( (Nil!41189) (Cons!41189 (h!46609 Token!11922) (t!314956 List!41313)) )
))
(declare-fun suffixTokens!72 () List!41313)

(declare-datatypes ((tuple2!40418 0))(
  ( (tuple2!40419 (_1!23343 Token!11922) (_2!23343 List!41310)) )
))
(declare-datatypes ((Option!8810 0))(
  ( (None!8809) (Some!8809 (v!39107 tuple2!40418)) )
))
(declare-fun lt!1350896 () Option!8810)

(declare-fun suffix!1176 () List!41310)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!52 (LexerInterface!5981 List!41312 List!41310 List!41310 List!41313 List!41310) Unit!59134)

(assert (=> b!3875988 (= lt!1350906 (lemmaLexWithSmallerInputCannotProduceSameResults!52 thiss!20629 rules!2768 (_2!23343 (v!39107 lt!1350896)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3875988 false))

(declare-fun b!3875989 () Bool)

(declare-fun e!2397851 () Bool)

(declare-fun e!2397819 () Bool)

(declare-fun tp!1175048 () Bool)

(assert (=> b!3875989 (= e!2397851 (and e!2397819 tp!1175048))))

(declare-fun b!3875990 () Bool)

(declare-fun e!2397843 () Bool)

(declare-fun e!2397821 () Bool)

(assert (=> b!3875990 (= e!2397843 e!2397821)))

(declare-fun res!1570232 () Bool)

(assert (=> b!3875990 (=> (not res!1570232) (not e!2397821))))

(declare-fun lt!1350871 () List!41313)

(declare-datatypes ((tuple2!40420 0))(
  ( (tuple2!40421 (_1!23344 List!41313) (_2!23344 List!41310)) )
))
(declare-fun lt!1350869 () tuple2!40420)

(assert (=> b!3875990 (= res!1570232 (= lt!1350869 (tuple2!40421 lt!1350871 suffixResult!91)))))

(declare-fun lt!1350887 () List!41310)

(declare-fun lexList!1749 (LexerInterface!5981 List!41312 List!41310) tuple2!40420)

(assert (=> b!3875990 (= lt!1350869 (lexList!1749 thiss!20629 rules!2768 lt!1350887))))

(declare-fun prefixTokens!80 () List!41313)

(declare-fun ++!10541 (List!41313 List!41313) List!41313)

(assert (=> b!3875990 (= lt!1350871 (++!10541 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41310)

(declare-fun ++!10542 (List!41310 List!41310) List!41310)

(assert (=> b!3875990 (= lt!1350887 (++!10542 prefix!426 suffix!1176))))

(declare-fun b!3875991 () Bool)

(declare-fun e!2397835 () Unit!59134)

(declare-fun Unit!59138 () Unit!59134)

(assert (=> b!3875991 (= e!2397835 Unit!59138)))

(declare-fun lt!1350867 () Unit!59134)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2354 (List!41310 List!41310) Unit!59134)

(assert (=> b!3875991 (= lt!1350867 (lemmaConcatTwoListThenFirstIsPrefix!2354 prefix!426 suffix!1176))))

(declare-fun isPrefix!3491 (List!41310 List!41310) Bool)

(assert (=> b!3875991 (isPrefix!3491 prefix!426 lt!1350887)))

(declare-fun lt!1350909 () Unit!59134)

(declare-fun lt!1350881 () List!41310)

(declare-fun lemmaIsPrefixSameLengthThenSameList!743 (List!41310 List!41310 List!41310) Unit!59134)

(assert (=> b!3875991 (= lt!1350909 (lemmaIsPrefixSameLengthThenSameList!743 lt!1350881 prefix!426 lt!1350887))))

(assert (=> b!3875991 (= lt!1350881 prefix!426)))

(declare-fun lt!1350866 () Unit!59134)

(declare-fun lemmaSamePrefixThenSameSuffix!1712 (List!41310 List!41310 List!41310 List!41310 List!41310) Unit!59134)

(assert (=> b!3875991 (= lt!1350866 (lemmaSamePrefixThenSameSuffix!1712 lt!1350881 (_2!23343 (v!39107 lt!1350896)) prefix!426 suffix!1176 lt!1350887))))

(assert (=> b!3875991 false))

(declare-fun b!3875992 () Bool)

(declare-fun e!2397824 () Bool)

(declare-fun e!2397852 () Bool)

(assert (=> b!3875992 (= e!2397824 e!2397852)))

(declare-fun res!1570237 () Bool)

(assert (=> b!3875992 (=> res!1570237 e!2397852)))

(declare-fun lt!1350902 () tuple2!40420)

(declare-fun lt!1350899 () tuple2!40420)

(assert (=> b!3875992 (= res!1570237 (not (= lt!1350902 lt!1350899)))))

(declare-fun lt!1350903 () List!41313)

(assert (=> b!3875992 (= lt!1350899 (tuple2!40421 lt!1350903 suffixResult!91))))

(declare-fun lt!1350875 () List!41313)

(assert (=> b!3875992 (= lt!1350903 (++!10541 lt!1350875 suffixTokens!72))))

(declare-fun tail!5935 (List!41313) List!41313)

(assert (=> b!3875992 (= lt!1350875 (tail!5935 prefixTokens!80))))

(declare-fun lt!1350874 () List!41310)

(declare-fun lt!1350865 () List!41310)

(assert (=> b!3875992 (isPrefix!3491 lt!1350874 lt!1350865)))

(declare-fun lt!1350895 () Unit!59134)

(assert (=> b!3875992 (= lt!1350895 (lemmaConcatTwoListThenFirstIsPrefix!2354 lt!1350874 suffix!1176))))

(declare-fun b!3875993 () Bool)

(declare-fun res!1570231 () Bool)

(declare-fun e!2397839 () Bool)

(assert (=> b!3875993 (=> res!1570231 e!2397839)))

(assert (=> b!3875993 (= res!1570231 (or (not (= lt!1350902 (tuple2!40421 (_1!23344 lt!1350902) (_2!23344 lt!1350902)))) (= (_2!23343 (v!39107 lt!1350896)) suffix!1176)))))

(declare-fun b!3875994 () Bool)

(declare-fun c!674406 () Bool)

(declare-fun lt!1350892 () List!41313)

(declare-fun isEmpty!24446 (List!41313) Bool)

(assert (=> b!3875994 (= c!674406 (isEmpty!24446 lt!1350892))))

(assert (=> b!3875994 (= lt!1350892 (tail!5935 prefixTokens!80))))

(declare-fun e!2397814 () Unit!59134)

(declare-fun e!2397840 () Unit!59134)

(assert (=> b!3875994 (= e!2397814 e!2397840)))

(declare-fun e!2397833 () Bool)

(declare-fun tp!1175057 () Bool)

(declare-fun b!3875995 () Bool)

(declare-fun e!2397844 () Bool)

(declare-fun inv!21 (TokenValue!6622) Bool)

(assert (=> b!3875995 (= e!2397844 (and (inv!21 (value!202806 (h!46609 suffixTokens!72))) e!2397833 tp!1175057))))

(declare-fun b!3875996 () Bool)

(declare-fun e!2397812 () Bool)

(declare-fun size!30954 (List!41310) Int)

(assert (=> b!3875996 (= e!2397812 (= (size!30953 (_1!23343 (v!39107 lt!1350896))) (size!30954 (originalCharacters!6992 (_1!23343 (v!39107 lt!1350896))))))))

(declare-fun b!3875997 () Bool)

(declare-fun res!1570246 () Bool)

(declare-fun e!2397823 () Bool)

(assert (=> b!3875997 (=> res!1570246 e!2397823)))

(declare-fun head!8218 (List!41313) Token!11922)

(assert (=> b!3875997 (= res!1570246 (not (= (head!8218 prefixTokens!80) (_1!23343 (v!39107 lt!1350896)))))))

(declare-fun b!3875998 () Bool)

(declare-fun e!2397845 () Bool)

(declare-fun tp_is_empty!19565 () Bool)

(declare-fun tp!1175058 () Bool)

(assert (=> b!3875998 (= e!2397845 (and tp_is_empty!19565 tp!1175058))))

(declare-fun e!2397813 () Bool)

(declare-fun tp!1175052 () Bool)

(declare-fun b!3875999 () Bool)

(declare-fun e!2397849 () Bool)

(declare-fun inv!55348 (Token!11922) Bool)

(assert (=> b!3875999 (= e!2397849 (and (inv!55348 (h!46609 prefixTokens!80)) e!2397813 tp!1175052))))

(declare-fun b!3876000 () Bool)

(declare-fun e!2397827 () Bool)

(declare-fun e!2397829 () Bool)

(assert (=> b!3876000 (= e!2397827 e!2397829)))

(declare-fun res!1570236 () Bool)

(assert (=> b!3876000 (=> res!1570236 e!2397829)))

(declare-fun lt!1350884 () List!41310)

(declare-fun lt!1350893 () List!41310)

(assert (=> b!3876000 (= res!1570236 (or (not (= lt!1350884 lt!1350887)) (not (= lt!1350884 lt!1350893))))))

(declare-fun lt!1350890 () List!41310)

(assert (=> b!3876000 (= lt!1350884 (++!10542 lt!1350890 suffix!1176))))

(declare-fun b!3876001 () Bool)

(declare-fun e!2397850 () Bool)

(assert (=> b!3876001 (= e!2397850 e!2397827)))

(declare-fun res!1570227 () Bool)

(assert (=> b!3876001 (=> res!1570227 e!2397827)))

(assert (=> b!3876001 (= res!1570227 (not (= lt!1350890 prefix!426)))))

(assert (=> b!3876001 (= lt!1350890 (++!10542 lt!1350881 lt!1350874))))

(declare-fun getSuffix!1946 (List!41310 List!41310) List!41310)

(assert (=> b!3876001 (= lt!1350874 (getSuffix!1946 prefix!426 lt!1350881))))

(declare-fun b!3876002 () Bool)

(declare-fun res!1570241 () Bool)

(assert (=> b!3876002 (=> (not res!1570241) (not e!2397843))))

(declare-fun rulesInvariant!5324 (LexerInterface!5981 List!41312) Bool)

(assert (=> b!3876002 (= res!1570241 (rulesInvariant!5324 thiss!20629 rules!2768))))

(declare-fun b!3876003 () Bool)

(assert (=> b!3876003 (= e!2397823 e!2397850)))

(declare-fun res!1570224 () Bool)

(assert (=> b!3876003 (=> res!1570224 e!2397850)))

(declare-fun lt!1350885 () Int)

(assert (=> b!3876003 (= res!1570224 (>= lt!1350885 (size!30954 prefix!426)))))

(assert (=> b!3876003 (isPrefix!3491 lt!1350881 prefix!426)))

(declare-fun lt!1350870 () Unit!59134)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!241 (List!41310 List!41310 List!41310) Unit!59134)

(assert (=> b!3876003 (= lt!1350870 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!241 prefix!426 lt!1350881 lt!1350887))))

(assert (=> b!3876003 (isPrefix!3491 prefix!426 lt!1350887)))

(declare-fun lt!1350894 () Unit!59134)

(assert (=> b!3876003 (= lt!1350894 (lemmaConcatTwoListThenFirstIsPrefix!2354 prefix!426 suffix!1176))))

(declare-fun b!3876004 () Bool)

(declare-fun e!2397816 () Bool)

(declare-fun e!2397836 () Bool)

(assert (=> b!3876004 (= e!2397816 e!2397836)))

(declare-fun res!1570234 () Bool)

(assert (=> b!3876004 (=> (not res!1570234) (not e!2397836))))

(get-info :version)

(assert (=> b!3876004 (= res!1570234 ((_ is Some!8809) lt!1350896))))

(declare-fun maxPrefix!3285 (LexerInterface!5981 List!41312 List!41310) Option!8810)

(assert (=> b!3876004 (= lt!1350896 (maxPrefix!3285 thiss!20629 rules!2768 lt!1350887))))

(declare-fun b!3876005 () Bool)

(declare-fun Unit!59139 () Unit!59134)

(assert (=> b!3876005 (= e!2397835 Unit!59139)))

(declare-fun b!3876006 () Bool)

(declare-fun Unit!59140 () Unit!59134)

(assert (=> b!3876006 (= e!2397847 Unit!59140)))

(declare-fun b!3876007 () Bool)

(assert (=> b!3876007 (= e!2397839 e!2397823)))

(declare-fun res!1570225 () Bool)

(assert (=> b!3876007 (=> res!1570225 e!2397823)))

(declare-fun lt!1350868 () Int)

(declare-fun lt!1350891 () Int)

(assert (=> b!3876007 (= res!1570225 (<= lt!1350868 lt!1350891))))

(declare-fun lt!1350862 () Unit!59134)

(assert (=> b!3876007 (= lt!1350862 e!2397835)))

(declare-fun c!674408 () Bool)

(assert (=> b!3876007 (= c!674408 (= lt!1350868 lt!1350891))))

(declare-fun lt!1350877 () Unit!59134)

(declare-fun e!2397841 () Unit!59134)

(assert (=> b!3876007 (= lt!1350877 e!2397841)))

(declare-fun c!674405 () Bool)

(assert (=> b!3876007 (= c!674405 (< lt!1350868 lt!1350891))))

(assert (=> b!3876007 (= lt!1350891 (size!30954 suffix!1176))))

(assert (=> b!3876007 (= lt!1350868 (size!30954 (_2!23343 (v!39107 lt!1350896))))))

(declare-fun b!3876008 () Bool)

(declare-fun res!1570244 () Bool)

(assert (=> b!3876008 (=> (not res!1570244) (not e!2397843))))

(declare-fun isEmpty!24447 (List!41312) Bool)

(assert (=> b!3876008 (= res!1570244 (not (isEmpty!24447 rules!2768)))))

(declare-fun b!3876009 () Bool)

(declare-fun e!2397828 () Bool)

(assert (=> b!3876009 (= e!2397828 true)))

(declare-fun lt!1350882 () Bool)

(declare-fun rulesValidInductive!2290 (LexerInterface!5981 List!41312) Bool)

(assert (=> b!3876009 (= lt!1350882 (rulesValidInductive!2290 thiss!20629 rules!2768))))

(assert (=> b!3876009 (= (lexList!1749 thiss!20629 rules!2768 lt!1350874) (tuple2!40421 lt!1350875 Nil!41186))))

(declare-fun lt!1350911 () Unit!59134)

(declare-fun lemmaLexThenLexPrefix!581 (LexerInterface!5981 List!41312 List!41310 List!41310 List!41313 List!41313 List!41310) Unit!59134)

(assert (=> b!3876009 (= lt!1350911 (lemmaLexThenLexPrefix!581 thiss!20629 rules!2768 lt!1350874 suffix!1176 lt!1350875 suffixTokens!72 suffixResult!91))))

(declare-fun b!3876010 () Bool)

(declare-fun e!2397838 () Bool)

(assert (=> b!3876010 (= e!2397838 false)))

(declare-fun res!1570245 () Bool)

(assert (=> start!363968 (=> (not res!1570245) (not e!2397843))))

(assert (=> start!363968 (= res!1570245 ((_ is Lexer!5979) thiss!20629))))

(assert (=> start!363968 e!2397843))

(assert (=> start!363968 e!2397845))

(assert (=> start!363968 true))

(declare-fun e!2397842 () Bool)

(assert (=> start!363968 e!2397842))

(assert (=> start!363968 e!2397851))

(assert (=> start!363968 e!2397849))

(declare-fun e!2397848 () Bool)

(assert (=> start!363968 e!2397848))

(declare-fun e!2397820 () Bool)

(assert (=> start!363968 e!2397820))

(declare-fun e!2397822 () Bool)

(declare-fun tp!1175059 () Bool)

(declare-fun e!2397815 () Bool)

(declare-fun b!3876011 () Bool)

(declare-fun inv!55345 (String!46828) Bool)

(declare-fun inv!55349 (TokenValueInjection!12672) Bool)

(assert (=> b!3876011 (= e!2397815 (and tp!1175059 (inv!55345 (tag!7252 (rule!9288 (h!46609 prefixTokens!80)))) (inv!55349 (transformation!6392 (rule!9288 (h!46609 prefixTokens!80)))) e!2397822))))

(declare-fun b!3876012 () Bool)

(declare-fun Unit!59141 () Unit!59134)

(assert (=> b!3876012 (= e!2397840 Unit!59141)))

(declare-fun lt!1350872 () tuple2!40418)

(declare-fun lt!1350908 () Unit!59134)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!476 (List!41310 List!41310 List!41310 List!41310) Unit!59134)

(assert (=> b!3876012 (= lt!1350908 (lemmaConcatSameAndSameSizesThenSameLists!476 lt!1350881 (_2!23343 (v!39107 lt!1350896)) lt!1350881 (_2!23343 lt!1350872)))))

(assert (=> b!3876012 (= (_2!23343 (v!39107 lt!1350896)) (_2!23343 lt!1350872))))

(declare-fun lt!1350897 () Unit!59134)

(assert (=> b!3876012 (= lt!1350897 (lemmaLexWithSmallerInputCannotProduceSameResults!52 thiss!20629 rules!2768 suffix!1176 (_2!23343 lt!1350872) suffixTokens!72 suffixResult!91))))

(declare-fun res!1570229 () Bool)

(declare-fun call!282798 () tuple2!40420)

(declare-fun lt!1350900 () tuple2!40420)

(assert (=> b!3876012 (= res!1570229 (not (= call!282798 lt!1350900)))))

(assert (=> b!3876012 (=> (not res!1570229) (not e!2397818))))

(assert (=> b!3876012 e!2397818))

(declare-fun b!3876013 () Bool)

(declare-fun res!1570233 () Bool)

(assert (=> b!3876013 (=> res!1570233 e!2397828)))

(assert (=> b!3876013 (= res!1570233 (not (= (lexList!1749 thiss!20629 rules!2768 lt!1350865) lt!1350899)))))

(assert (=> b!3876014 (= e!2397822 (and tp!1175062 tp!1175060))))

(declare-fun b!3876015 () Bool)

(declare-fun res!1570226 () Bool)

(assert (=> b!3876015 (=> (not res!1570226) (not e!2397843))))

(assert (=> b!3876015 (= res!1570226 (not (isEmpty!24446 prefixTokens!80)))))

(declare-fun b!3876016 () Bool)

(declare-fun e!2397817 () Bool)

(declare-fun tp!1175054 () Bool)

(assert (=> b!3876016 (= e!2397819 (and tp!1175054 (inv!55345 (tag!7252 (h!46608 rules!2768))) (inv!55349 (transformation!6392 (h!46608 rules!2768))) e!2397817))))

(declare-fun tp!1175056 () Bool)

(declare-fun e!2397831 () Bool)

(declare-fun b!3876017 () Bool)

(assert (=> b!3876017 (= e!2397833 (and tp!1175056 (inv!55345 (tag!7252 (rule!9288 (h!46609 suffixTokens!72)))) (inv!55349 (transformation!6392 (rule!9288 (h!46609 suffixTokens!72)))) e!2397831))))

(declare-fun b!3876018 () Bool)

(declare-fun e!2397837 () Bool)

(assert (=> b!3876018 (= e!2397836 (not e!2397837))))

(declare-fun res!1570238 () Bool)

(assert (=> b!3876018 (=> res!1570238 e!2397837)))

(assert (=> b!3876018 (= res!1570238 (not (= lt!1350893 lt!1350887)))))

(assert (=> b!3876018 (= lt!1350902 (lexList!1749 thiss!20629 rules!2768 (_2!23343 (v!39107 lt!1350896))))))

(declare-fun lt!1350863 () List!41310)

(declare-fun lt!1350886 () TokenValue!6622)

(assert (=> b!3876018 (and (= (size!30953 (_1!23343 (v!39107 lt!1350896))) lt!1350885) (= (originalCharacters!6992 (_1!23343 (v!39107 lt!1350896))) lt!1350881) (= (v!39107 lt!1350896) (tuple2!40419 (Token!11923 lt!1350886 (rule!9288 (_1!23343 (v!39107 lt!1350896))) lt!1350885 lt!1350881) lt!1350863)))))

(assert (=> b!3876018 (= lt!1350885 (size!30954 lt!1350881))))

(assert (=> b!3876018 e!2397812))

(declare-fun res!1570228 () Bool)

(assert (=> b!3876018 (=> (not res!1570228) (not e!2397812))))

(assert (=> b!3876018 (= res!1570228 (= (value!202806 (_1!23343 (v!39107 lt!1350896))) lt!1350886))))

(declare-fun apply!9635 (TokenValueInjection!12672 BalanceConc!24800) TokenValue!6622)

(declare-fun seqFromList!4663 (List!41310) BalanceConc!24800)

(assert (=> b!3876018 (= lt!1350886 (apply!9635 (transformation!6392 (rule!9288 (_1!23343 (v!39107 lt!1350896)))) (seqFromList!4663 lt!1350881)))))

(assert (=> b!3876018 (= (_2!23343 (v!39107 lt!1350896)) lt!1350863)))

(declare-fun lt!1350861 () Unit!59134)

(assert (=> b!3876018 (= lt!1350861 (lemmaSamePrefixThenSameSuffix!1712 lt!1350881 (_2!23343 (v!39107 lt!1350896)) lt!1350881 lt!1350863 lt!1350887))))

(assert (=> b!3876018 (= lt!1350863 (getSuffix!1946 lt!1350887 lt!1350881))))

(assert (=> b!3876018 (isPrefix!3491 lt!1350881 lt!1350893)))

(assert (=> b!3876018 (= lt!1350893 (++!10542 lt!1350881 (_2!23343 (v!39107 lt!1350896))))))

(declare-fun lt!1350879 () Unit!59134)

(assert (=> b!3876018 (= lt!1350879 (lemmaConcatTwoListThenFirstIsPrefix!2354 lt!1350881 (_2!23343 (v!39107 lt!1350896))))))

(declare-fun list!15320 (BalanceConc!24800) List!41310)

(declare-fun charsOf!4220 (Token!11922) BalanceConc!24800)

(assert (=> b!3876018 (= lt!1350881 (list!15320 (charsOf!4220 (_1!23343 (v!39107 lt!1350896)))))))

(declare-fun ruleValid!2344 (LexerInterface!5981 Rule!12584) Bool)

(assert (=> b!3876018 (ruleValid!2344 thiss!20629 (rule!9288 (_1!23343 (v!39107 lt!1350896))))))

(declare-fun lt!1350889 () Unit!59134)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1424 (LexerInterface!5981 Rule!12584 List!41312) Unit!59134)

(assert (=> b!3876018 (= lt!1350889 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1424 thiss!20629 (rule!9288 (_1!23343 (v!39107 lt!1350896))) rules!2768))))

(declare-fun lt!1350883 () Unit!59134)

(declare-fun lemmaCharactersSize!1053 (Token!11922) Unit!59134)

(assert (=> b!3876018 (= lt!1350883 (lemmaCharactersSize!1053 (_1!23343 (v!39107 lt!1350896))))))

(declare-fun b!3876019 () Bool)

(declare-fun res!1570247 () Bool)

(assert (=> b!3876019 (=> (not res!1570247) (not e!2397843))))

(declare-fun isEmpty!24448 (List!41310) Bool)

(assert (=> b!3876019 (= res!1570247 (not (isEmpty!24448 prefix!426)))))

(assert (=> b!3876020 (= e!2397831 (and tp!1175055 tp!1175063))))

(declare-fun b!3876021 () Bool)

(declare-fun e!2397825 () Bool)

(assert (=> b!3876021 (= e!2397825 e!2397824)))

(declare-fun res!1570239 () Bool)

(assert (=> b!3876021 (=> res!1570239 e!2397824)))

(assert (=> b!3876021 (= res!1570239 (not (= lt!1350865 (_2!23343 (v!39107 lt!1350896)))))))

(assert (=> b!3876021 (= (_2!23343 (v!39107 lt!1350896)) lt!1350865)))

(declare-fun lt!1350904 () Unit!59134)

(assert (=> b!3876021 (= lt!1350904 (lemmaSamePrefixThenSameSuffix!1712 lt!1350881 (_2!23343 (v!39107 lt!1350896)) lt!1350881 lt!1350865 lt!1350887))))

(declare-fun lt!1350910 () List!41310)

(assert (=> b!3876021 (isPrefix!3491 lt!1350881 lt!1350910)))

(declare-fun lt!1350873 () Unit!59134)

(assert (=> b!3876021 (= lt!1350873 (lemmaConcatTwoListThenFirstIsPrefix!2354 lt!1350881 lt!1350865))))

(declare-fun tp!1175061 () Bool)

(declare-fun b!3876022 () Bool)

(assert (=> b!3876022 (= e!2397848 (and (inv!55348 (h!46609 suffixTokens!72)) e!2397844 tp!1175061))))

(declare-fun b!3876023 () Bool)

(declare-fun Unit!59142 () Unit!59134)

(assert (=> b!3876023 (= e!2397841 Unit!59142)))

(declare-fun lt!1350878 () Int)

(assert (=> b!3876023 (= lt!1350878 (size!30954 lt!1350887))))

(declare-fun lt!1350907 () Unit!59134)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1265 (LexerInterface!5981 List!41312 List!41310 List!41310 List!41310 Rule!12584) Unit!59134)

(assert (=> b!3876023 (= lt!1350907 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1265 thiss!20629 rules!2768 lt!1350881 lt!1350887 (_2!23343 (v!39107 lt!1350896)) (rule!9288 (_1!23343 (v!39107 lt!1350896)))))))

(declare-fun maxPrefixOneRule!2367 (LexerInterface!5981 Rule!12584 List!41310) Option!8810)

(assert (=> b!3876023 (= (maxPrefixOneRule!2367 thiss!20629 (rule!9288 (_1!23343 (v!39107 lt!1350896))) lt!1350887) (Some!8809 (tuple2!40419 (Token!11923 lt!1350886 (rule!9288 (_1!23343 (v!39107 lt!1350896))) lt!1350885 lt!1350881) (_2!23343 (v!39107 lt!1350896)))))))

(declare-fun get!13628 (Option!8810) tuple2!40418)

(assert (=> b!3876023 (= lt!1350872 (get!13628 lt!1350896))))

(declare-fun c!674407 () Bool)

(assert (=> b!3876023 (= c!674407 (< (size!30954 (_2!23343 lt!1350872)) lt!1350891))))

(declare-fun lt!1350898 () Unit!59134)

(assert (=> b!3876023 (= lt!1350898 e!2397814)))

(assert (=> b!3876023 false))

(declare-fun b!3876024 () Bool)

(declare-fun Unit!59143 () Unit!59134)

(assert (=> b!3876024 (= e!2397814 Unit!59143)))

(assert (=> b!3876025 (= e!2397817 (and tp!1175051 tp!1175049))))

(declare-fun b!3876026 () Bool)

(declare-fun tp!1175064 () Bool)

(assert (=> b!3876026 (= e!2397842 (and tp_is_empty!19565 tp!1175064))))

(declare-fun b!3876027 () Bool)

(declare-fun tp!1175050 () Bool)

(assert (=> b!3876027 (= e!2397813 (and (inv!21 (value!202806 (h!46609 prefixTokens!80))) e!2397815 tp!1175050))))

(declare-fun b!3876028 () Bool)

(assert (=> b!3876028 (= e!2397837 e!2397839)))

(declare-fun res!1570243 () Bool)

(assert (=> b!3876028 (=> res!1570243 e!2397839)))

(declare-fun lt!1350905 () List!41313)

(assert (=> b!3876028 (= res!1570243 (not (= lt!1350869 (tuple2!40421 (++!10541 lt!1350905 (_1!23344 lt!1350902)) (_2!23344 lt!1350902)))))))

(assert (=> b!3876028 (= lt!1350905 (Cons!41189 (_1!23343 (v!39107 lt!1350896)) Nil!41189))))

(declare-fun b!3876029 () Bool)

(assert (=> b!3876029 (= e!2397821 e!2397816)))

(declare-fun res!1570240 () Bool)

(assert (=> b!3876029 (=> (not res!1570240) (not e!2397816))))

(assert (=> b!3876029 (= res!1570240 (= (lexList!1749 thiss!20629 rules!2768 suffix!1176) lt!1350900))))

(assert (=> b!3876029 (= lt!1350900 (tuple2!40421 suffixTokens!72 suffixResult!91))))

(declare-fun b!3876030 () Bool)

(assert (=> b!3876030 (= e!2397852 e!2397828)))

(declare-fun res!1570242 () Bool)

(assert (=> b!3876030 (=> res!1570242 e!2397828)))

(declare-fun lt!1350880 () List!41313)

(assert (=> b!3876030 (= res!1570242 (not (= lt!1350880 lt!1350871)))))

(assert (=> b!3876030 (= lt!1350880 (++!10541 lt!1350905 lt!1350903))))

(assert (=> b!3876030 (= lt!1350880 (++!10541 (++!10541 lt!1350905 lt!1350875) suffixTokens!72))))

(declare-fun lt!1350876 () Unit!59134)

(declare-fun lemmaConcatAssociativity!2255 (List!41313 List!41313 List!41313) Unit!59134)

(assert (=> b!3876030 (= lt!1350876 (lemmaConcatAssociativity!2255 lt!1350905 lt!1350875 suffixTokens!72))))

(declare-fun lt!1350864 () Unit!59134)

(assert (=> b!3876030 (= lt!1350864 e!2397847)))

(declare-fun c!674409 () Bool)

(assert (=> b!3876030 (= c!674409 (isEmpty!24446 lt!1350875))))

(declare-fun b!3876031 () Bool)

(declare-fun Unit!59144 () Unit!59134)

(assert (=> b!3876031 (= e!2397840 Unit!59144)))

(declare-fun lt!1350888 () Unit!59134)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!52 (LexerInterface!5981 List!41312 List!41310 List!41310 List!41313 List!41310 List!41313) Unit!59134)

(assert (=> b!3876031 (= lt!1350888 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!52 thiss!20629 rules!2768 suffix!1176 (_2!23343 lt!1350872) suffixTokens!72 suffixResult!91 lt!1350892))))

(declare-fun res!1570230 () Bool)

(assert (=> b!3876031 (= res!1570230 (not (= call!282798 (tuple2!40421 (++!10541 lt!1350892 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3876031 (=> (not res!1570230) (not e!2397838))))

(assert (=> b!3876031 e!2397838))

(declare-fun b!3876032 () Bool)

(assert (=> b!3876032 (= e!2397829 e!2397825)))

(declare-fun res!1570235 () Bool)

(assert (=> b!3876032 (=> res!1570235 e!2397825)))

(assert (=> b!3876032 (= res!1570235 (or (not (= lt!1350887 lt!1350884)) (not (= lt!1350887 lt!1350910)) (not (= lt!1350893 lt!1350910))))))

(assert (=> b!3876032 (= lt!1350884 lt!1350910)))

(assert (=> b!3876032 (= lt!1350910 (++!10542 lt!1350881 lt!1350865))))

(assert (=> b!3876032 (= lt!1350865 (++!10542 lt!1350874 suffix!1176))))

(declare-fun lt!1350901 () Unit!59134)

(declare-fun lemmaConcatAssociativity!2256 (List!41310 List!41310 List!41310) Unit!59134)

(assert (=> b!3876032 (= lt!1350901 (lemmaConcatAssociativity!2256 lt!1350881 lt!1350874 suffix!1176))))

(declare-fun b!3876033 () Bool)

(declare-fun tp!1175053 () Bool)

(assert (=> b!3876033 (= e!2397820 (and tp_is_empty!19565 tp!1175053))))

(declare-fun bm!282793 () Bool)

(assert (=> bm!282793 (= call!282798 (lexList!1749 thiss!20629 rules!2768 (_2!23343 lt!1350872)))))

(declare-fun b!3876034 () Bool)

(declare-fun Unit!59145 () Unit!59134)

(assert (=> b!3876034 (= e!2397841 Unit!59145)))

(assert (= (and start!363968 res!1570245) b!3876008))

(assert (= (and b!3876008 res!1570244) b!3876002))

(assert (= (and b!3876002 res!1570241) b!3876015))

(assert (= (and b!3876015 res!1570226) b!3876019))

(assert (= (and b!3876019 res!1570247) b!3875990))

(assert (= (and b!3875990 res!1570232) b!3876029))

(assert (= (and b!3876029 res!1570240) b!3876004))

(assert (= (and b!3876004 res!1570234) b!3876018))

(assert (= (and b!3876018 res!1570228) b!3875996))

(assert (= (and b!3876018 (not res!1570238)) b!3876028))

(assert (= (and b!3876028 (not res!1570243)) b!3875993))

(assert (= (and b!3875993 (not res!1570231)) b!3876007))

(assert (= (and b!3876007 c!674405) b!3876023))

(assert (= (and b!3876007 (not c!674405)) b!3876034))

(assert (= (and b!3876023 c!674407) b!3875994))

(assert (= (and b!3876023 (not c!674407)) b!3876024))

(assert (= (and b!3875994 c!674406) b!3876012))

(assert (= (and b!3875994 (not c!674406)) b!3876031))

(assert (= (and b!3876012 res!1570229) b!3875987))

(assert (= (and b!3876031 res!1570230) b!3876010))

(assert (= (or b!3876012 b!3876031) bm!282793))

(assert (= (and b!3876007 c!674408) b!3875991))

(assert (= (and b!3876007 (not c!674408)) b!3876005))

(assert (= (and b!3876007 (not res!1570225)) b!3875997))

(assert (= (and b!3875997 (not res!1570246)) b!3876003))

(assert (= (and b!3876003 (not res!1570224)) b!3876001))

(assert (= (and b!3876001 (not res!1570227)) b!3876000))

(assert (= (and b!3876000 (not res!1570236)) b!3876032))

(assert (= (and b!3876032 (not res!1570235)) b!3876021))

(assert (= (and b!3876021 (not res!1570239)) b!3875992))

(assert (= (and b!3875992 (not res!1570237)) b!3876030))

(assert (= (and b!3876030 c!674409) b!3875988))

(assert (= (and b!3876030 (not c!674409)) b!3876006))

(assert (= (and b!3876030 (not res!1570242)) b!3876013))

(assert (= (and b!3876013 (not res!1570233)) b!3876009))

(assert (= (and start!363968 ((_ is Cons!41186) suffixResult!91)) b!3875998))

(assert (= (and start!363968 ((_ is Cons!41186) suffix!1176)) b!3876026))

(assert (= b!3876016 b!3876025))

(assert (= b!3875989 b!3876016))

(assert (= (and start!363968 ((_ is Cons!41188) rules!2768)) b!3875989))

(assert (= b!3876011 b!3876014))

(assert (= b!3876027 b!3876011))

(assert (= b!3875999 b!3876027))

(assert (= (and start!363968 ((_ is Cons!41189) prefixTokens!80)) b!3875999))

(assert (= b!3876017 b!3876020))

(assert (= b!3875995 b!3876017))

(assert (= b!3876022 b!3875995))

(assert (= (and start!363968 ((_ is Cons!41189) suffixTokens!72)) b!3876022))

(assert (= (and start!363968 ((_ is Cons!41186) prefix!426)) b!3876033))

(declare-fun m!4433899 () Bool)

(assert (=> b!3876007 m!4433899))

(declare-fun m!4433901 () Bool)

(assert (=> b!3876007 m!4433901))

(declare-fun m!4433903 () Bool)

(assert (=> b!3875997 m!4433903))

(declare-fun m!4433905 () Bool)

(assert (=> b!3876009 m!4433905))

(declare-fun m!4433907 () Bool)

(assert (=> b!3876009 m!4433907))

(declare-fun m!4433909 () Bool)

(assert (=> b!3876009 m!4433909))

(declare-fun m!4433911 () Bool)

(assert (=> b!3876008 m!4433911))

(declare-fun m!4433913 () Bool)

(assert (=> bm!282793 m!4433913))

(declare-fun m!4433915 () Bool)

(assert (=> b!3875990 m!4433915))

(declare-fun m!4433917 () Bool)

(assert (=> b!3875990 m!4433917))

(declare-fun m!4433919 () Bool)

(assert (=> b!3875990 m!4433919))

(declare-fun m!4433921 () Bool)

(assert (=> b!3876011 m!4433921))

(declare-fun m!4433923 () Bool)

(assert (=> b!3876011 m!4433923))

(declare-fun m!4433925 () Bool)

(assert (=> b!3876004 m!4433925))

(declare-fun m!4433927 () Bool)

(assert (=> b!3876023 m!4433927))

(declare-fun m!4433929 () Bool)

(assert (=> b!3876023 m!4433929))

(declare-fun m!4433931 () Bool)

(assert (=> b!3876023 m!4433931))

(declare-fun m!4433933 () Bool)

(assert (=> b!3876023 m!4433933))

(declare-fun m!4433935 () Bool)

(assert (=> b!3876023 m!4433935))

(declare-fun m!4433937 () Bool)

(assert (=> b!3875988 m!4433937))

(declare-fun m!4433939 () Bool)

(assert (=> b!3875991 m!4433939))

(declare-fun m!4433941 () Bool)

(assert (=> b!3875991 m!4433941))

(declare-fun m!4433943 () Bool)

(assert (=> b!3875991 m!4433943))

(declare-fun m!4433945 () Bool)

(assert (=> b!3875991 m!4433945))

(declare-fun m!4433947 () Bool)

(assert (=> b!3875995 m!4433947))

(declare-fun m!4433949 () Bool)

(assert (=> b!3876021 m!4433949))

(declare-fun m!4433951 () Bool)

(assert (=> b!3876021 m!4433951))

(declare-fun m!4433953 () Bool)

(assert (=> b!3876021 m!4433953))

(declare-fun m!4433955 () Bool)

(assert (=> b!3875994 m!4433955))

(declare-fun m!4433957 () Bool)

(assert (=> b!3875994 m!4433957))

(declare-fun m!4433959 () Bool)

(assert (=> b!3875992 m!4433959))

(assert (=> b!3875992 m!4433957))

(declare-fun m!4433961 () Bool)

(assert (=> b!3875992 m!4433961))

(declare-fun m!4433963 () Bool)

(assert (=> b!3875992 m!4433963))

(declare-fun m!4433965 () Bool)

(assert (=> b!3876015 m!4433965))

(declare-fun m!4433967 () Bool)

(assert (=> b!3876029 m!4433967))

(declare-fun m!4433969 () Bool)

(assert (=> b!3876018 m!4433969))

(declare-fun m!4433971 () Bool)

(assert (=> b!3876018 m!4433971))

(declare-fun m!4433973 () Bool)

(assert (=> b!3876018 m!4433973))

(declare-fun m!4433975 () Bool)

(assert (=> b!3876018 m!4433975))

(declare-fun m!4433977 () Bool)

(assert (=> b!3876018 m!4433977))

(declare-fun m!4433979 () Bool)

(assert (=> b!3876018 m!4433979))

(declare-fun m!4433981 () Bool)

(assert (=> b!3876018 m!4433981))

(declare-fun m!4433983 () Bool)

(assert (=> b!3876018 m!4433983))

(declare-fun m!4433985 () Bool)

(assert (=> b!3876018 m!4433985))

(assert (=> b!3876018 m!4433981))

(declare-fun m!4433987 () Bool)

(assert (=> b!3876018 m!4433987))

(declare-fun m!4433989 () Bool)

(assert (=> b!3876018 m!4433989))

(declare-fun m!4433991 () Bool)

(assert (=> b!3876018 m!4433991))

(declare-fun m!4433993 () Bool)

(assert (=> b!3876018 m!4433993))

(declare-fun m!4433995 () Bool)

(assert (=> b!3876018 m!4433995))

(assert (=> b!3876018 m!4433973))

(declare-fun m!4433997 () Bool)

(assert (=> b!3875999 m!4433997))

(declare-fun m!4433999 () Bool)

(assert (=> b!3876022 m!4433999))

(declare-fun m!4434001 () Bool)

(assert (=> b!3876032 m!4434001))

(declare-fun m!4434003 () Bool)

(assert (=> b!3876032 m!4434003))

(declare-fun m!4434005 () Bool)

(assert (=> b!3876032 m!4434005))

(declare-fun m!4434007 () Bool)

(assert (=> b!3876028 m!4434007))

(declare-fun m!4434009 () Bool)

(assert (=> b!3876027 m!4434009))

(declare-fun m!4434011 () Bool)

(assert (=> b!3876002 m!4434011))

(declare-fun m!4434013 () Bool)

(assert (=> b!3876030 m!4434013))

(declare-fun m!4434015 () Bool)

(assert (=> b!3876030 m!4434015))

(declare-fun m!4434017 () Bool)

(assert (=> b!3876030 m!4434017))

(declare-fun m!4434019 () Bool)

(assert (=> b!3876030 m!4434019))

(assert (=> b!3876030 m!4434017))

(declare-fun m!4434021 () Bool)

(assert (=> b!3876030 m!4434021))

(declare-fun m!4434023 () Bool)

(assert (=> b!3876012 m!4434023))

(declare-fun m!4434025 () Bool)

(assert (=> b!3876012 m!4434025))

(declare-fun m!4434027 () Bool)

(assert (=> b!3876000 m!4434027))

(declare-fun m!4434029 () Bool)

(assert (=> b!3876003 m!4434029))

(declare-fun m!4434031 () Bool)

(assert (=> b!3876003 m!4434031))

(assert (=> b!3876003 m!4433939))

(assert (=> b!3876003 m!4433941))

(declare-fun m!4434033 () Bool)

(assert (=> b!3876003 m!4434033))

(declare-fun m!4434035 () Bool)

(assert (=> b!3876001 m!4434035))

(declare-fun m!4434037 () Bool)

(assert (=> b!3876001 m!4434037))

(declare-fun m!4434039 () Bool)

(assert (=> b!3876031 m!4434039))

(declare-fun m!4434041 () Bool)

(assert (=> b!3876031 m!4434041))

(declare-fun m!4434043 () Bool)

(assert (=> b!3876019 m!4434043))

(declare-fun m!4434045 () Bool)

(assert (=> b!3875996 m!4434045))

(declare-fun m!4434047 () Bool)

(assert (=> b!3876017 m!4434047))

(declare-fun m!4434049 () Bool)

(assert (=> b!3876017 m!4434049))

(declare-fun m!4434051 () Bool)

(assert (=> b!3876016 m!4434051))

(declare-fun m!4434053 () Bool)

(assert (=> b!3876016 m!4434053))

(declare-fun m!4434055 () Bool)

(assert (=> b!3876013 m!4434055))

(check-sat (not b!3876031) (not b!3876026) (not b!3876032) (not b!3876009) (not b!3875989) (not b!3876012) (not b!3876022) (not b!3875994) (not b!3876033) (not b!3875990) (not b!3875995) (not bm!282793) (not b!3876030) (not b!3876029) tp_is_empty!19565 b_and!290643 (not b!3875991) (not b!3876027) (not b!3876018) (not b!3875998) b_and!290653 (not b!3876015) (not b!3876003) (not b!3875992) b_and!290647 (not b!3875999) (not b_next!105509) (not b!3876021) (not b!3875988) b_and!290651 (not b_next!105507) (not b!3876000) (not b!3876023) (not b!3876019) (not b!3876011) (not b_next!105501) (not b!3876016) (not b!3876004) (not b!3876007) (not b!3876028) (not b_next!105503) (not b!3876017) b_and!290645 (not b!3876002) (not b!3876008) (not b!3876013) (not b!3875996) (not b!3875997) b_and!290649 (not b_next!105511) (not b!3876001) (not b_next!105505))
(check-sat b_and!290643 b_and!290653 b_and!290647 (not b_next!105509) (not b_next!105501) (not b_next!105503) b_and!290645 b_and!290649 b_and!290651 (not b_next!105507) (not b_next!105511) (not b_next!105505))
