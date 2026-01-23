; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362180 () Bool)

(assert start!362180)

(declare-fun b!3861998 () Bool)

(declare-fun b_free!103885 () Bool)

(declare-fun b_next!104589 () Bool)

(assert (=> b!3861998 (= b_free!103885 (not b_next!104589))))

(declare-fun tp!1170744 () Bool)

(declare-fun b_and!289155 () Bool)

(assert (=> b!3861998 (= tp!1170744 b_and!289155)))

(declare-fun b_free!103887 () Bool)

(declare-fun b_next!104591 () Bool)

(assert (=> b!3861998 (= b_free!103887 (not b_next!104591))))

(declare-fun tp!1170754 () Bool)

(declare-fun b_and!289157 () Bool)

(assert (=> b!3861998 (= tp!1170754 b_and!289157)))

(declare-fun b!3861977 () Bool)

(declare-fun b_free!103889 () Bool)

(declare-fun b_next!104593 () Bool)

(assert (=> b!3861977 (= b_free!103889 (not b_next!104593))))

(declare-fun tp!1170742 () Bool)

(declare-fun b_and!289159 () Bool)

(assert (=> b!3861977 (= tp!1170742 b_and!289159)))

(declare-fun b_free!103891 () Bool)

(declare-fun b_next!104595 () Bool)

(assert (=> b!3861977 (= b_free!103891 (not b_next!104595))))

(declare-fun tp!1170741 () Bool)

(declare-fun b_and!289161 () Bool)

(assert (=> b!3861977 (= tp!1170741 b_and!289161)))

(declare-fun b!3861995 () Bool)

(declare-fun b_free!103893 () Bool)

(declare-fun b_next!104597 () Bool)

(assert (=> b!3861995 (= b_free!103893 (not b_next!104597))))

(declare-fun tp!1170749 () Bool)

(declare-fun b_and!289163 () Bool)

(assert (=> b!3861995 (= tp!1170749 b_and!289163)))

(declare-fun b_free!103895 () Bool)

(declare-fun b_next!104599 () Bool)

(assert (=> b!3861995 (= b_free!103895 (not b_next!104599))))

(declare-fun tp!1170745 () Bool)

(declare-fun b_and!289165 () Bool)

(assert (=> b!3861995 (= tp!1170745 b_and!289165)))

(declare-fun b!3861971 () Bool)

(declare-fun e!2387641 () Bool)

(assert (=> b!3861971 (= e!2387641 true)))

(declare-datatypes ((LexerInterface!5929 0))(
  ( (LexerInterfaceExt!5926 (__x!25357 Int)) (Lexer!5927) )
))
(declare-fun thiss!20629 () LexerInterface!5929)

(declare-datatypes ((C!22676 0))(
  ( (C!22677 (val!13432 Int)) )
))
(declare-datatypes ((List!41078 0))(
  ( (Nil!40954) (Cons!40954 (h!46374 C!22676) (t!313569 List!41078)) )
))
(declare-datatypes ((IArray!25107 0))(
  ( (IArray!25108 (innerList!12611 List!41078)) )
))
(declare-datatypes ((Conc!12551 0))(
  ( (Node!12551 (left!31535 Conc!12551) (right!31865 Conc!12551) (csize!25332 Int) (cheight!12762 Int)) (Leaf!19428 (xs!15857 IArray!25107) (csize!25333 Int)) (Empty!12551) )
))
(declare-datatypes ((BalanceConc!24696 0))(
  ( (BalanceConc!24697 (c!672318 Conc!12551)) )
))
(declare-datatypes ((List!41079 0))(
  ( (Nil!40955) (Cons!40955 (h!46375 (_ BitVec 16)) (t!313570 List!41079)) )
))
(declare-datatypes ((TokenValue!6570 0))(
  ( (FloatLiteralValue!13140 (text!46435 List!41079)) (TokenValueExt!6569 (__x!25358 Int)) (Broken!32850 (value!201298 List!41079)) (Object!6693) (End!6570) (Def!6570) (Underscore!6570) (Match!6570) (Else!6570) (Error!6570) (Case!6570) (If!6570) (Extends!6570) (Abstract!6570) (Class!6570) (Val!6570) (DelimiterValue!13140 (del!6630 List!41079)) (KeywordValue!6576 (value!201299 List!41079)) (CommentValue!13140 (value!201300 List!41079)) (WhitespaceValue!13140 (value!201301 List!41079)) (IndentationValue!6570 (value!201302 List!41079)) (String!46567) (Int32!6570) (Broken!32851 (value!201303 List!41079)) (Boolean!6571) (Unit!58607) (OperatorValue!6573 (op!6630 List!41079)) (IdentifierValue!13140 (value!201304 List!41079)) (IdentifierValue!13141 (value!201305 List!41079)) (WhitespaceValue!13141 (value!201306 List!41079)) (True!13140) (False!13140) (Broken!32852 (value!201307 List!41079)) (Broken!32853 (value!201308 List!41079)) (True!13141) (RightBrace!6570) (RightBracket!6570) (Colon!6570) (Null!6570) (Comma!6570) (LeftBracket!6570) (False!13141) (LeftBrace!6570) (ImaginaryLiteralValue!6570 (text!46436 List!41079)) (StringLiteralValue!19710 (value!201309 List!41079)) (EOFValue!6570 (value!201310 List!41079)) (IdentValue!6570 (value!201311 List!41079)) (DelimiterValue!13141 (value!201312 List!41079)) (DedentValue!6570 (value!201313 List!41079)) (NewLineValue!6570 (value!201314 List!41079)) (IntegerValue!19710 (value!201315 (_ BitVec 32)) (text!46437 List!41079)) (IntegerValue!19711 (value!201316 Int) (text!46438 List!41079)) (Times!6570) (Or!6570) (Equal!6570) (Minus!6570) (Broken!32854 (value!201317 List!41079)) (And!6570) (Div!6570) (LessEqual!6570) (Mod!6570) (Concat!17815) (Not!6570) (Plus!6570) (SpaceValue!6570 (value!201318 List!41079)) (IntegerValue!19712 (value!201319 Int) (text!46439 List!41079)) (StringLiteralValue!19711 (text!46440 List!41079)) (FloatLiteralValue!13141 (text!46441 List!41079)) (BytesLiteralValue!6570 (value!201320 List!41079)) (CommentValue!13141 (value!201321 List!41079)) (StringLiteralValue!19712 (value!201322 List!41079)) (ErrorTokenValue!6570 (msg!6631 List!41079)) )
))
(declare-datatypes ((Regex!11245 0))(
  ( (ElementMatch!11245 (c!672319 C!22676)) (Concat!17816 (regOne!23002 Regex!11245) (regTwo!23002 Regex!11245)) (EmptyExpr!11245) (Star!11245 (reg!11574 Regex!11245)) (EmptyLang!11245) (Union!11245 (regOne!23003 Regex!11245) (regTwo!23003 Regex!11245)) )
))
(declare-datatypes ((String!46568 0))(
  ( (String!46569 (value!201323 String)) )
))
(declare-datatypes ((TokenValueInjection!12568 0))(
  ( (TokenValueInjection!12569 (toValue!8768 Int) (toChars!8627 Int)) )
))
(declare-datatypes ((Rule!12480 0))(
  ( (Rule!12481 (regex!6340 Regex!11245) (tag!7200 String!46568) (isSeparator!6340 Bool) (transformation!6340 TokenValueInjection!12568)) )
))
(declare-datatypes ((List!41080 0))(
  ( (Nil!40956) (Cons!40956 (h!46376 Rule!12480) (t!313571 List!41080)) )
))
(declare-fun rules!2768 () List!41080)

(declare-datatypes ((Token!11818 0))(
  ( (Token!11819 (value!201324 TokenValue!6570) (rule!9212 Rule!12480) (size!30801 Int) (originalCharacters!6940 List!41078)) )
))
(declare-datatypes ((List!41081 0))(
  ( (Nil!40957) (Cons!40957 (h!46377 Token!11818) (t!313572 List!41081)) )
))
(declare-datatypes ((tuple2!40162 0))(
  ( (tuple2!40163 (_1!23215 List!41081) (_2!23215 List!41078)) )
))
(declare-fun lt!1342035 () tuple2!40162)

(declare-datatypes ((tuple2!40164 0))(
  ( (tuple2!40165 (_1!23216 Token!11818) (_2!23216 List!41078)) )
))
(declare-fun lt!1342028 () tuple2!40164)

(declare-fun lexList!1697 (LexerInterface!5929 List!41080 List!41078) tuple2!40162)

(assert (=> b!3861971 (= lt!1342035 (lexList!1697 thiss!20629 rules!2768 (_2!23216 lt!1342028)))))

(declare-fun lt!1342026 () List!41081)

(declare-fun lt!1342033 () List!41081)

(declare-fun suffixTokens!72 () List!41081)

(declare-fun ++!10437 (List!41081 List!41081) List!41081)

(assert (=> b!3861971 (= lt!1342026 (++!10437 lt!1342033 suffixTokens!72))))

(declare-fun b!3861972 () Bool)

(declare-fun res!1563840 () Bool)

(declare-fun e!2387639 () Bool)

(assert (=> b!3861972 (=> (not res!1563840) (not e!2387639))))

(declare-fun suffix!1176 () List!41078)

(declare-fun suffixResult!91 () List!41078)

(assert (=> b!3861972 (= res!1563840 (= (lexList!1697 thiss!20629 rules!2768 suffix!1176) (tuple2!40163 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3861973 () Bool)

(declare-fun e!2387659 () Bool)

(declare-fun prefixTokens!80 () List!41081)

(declare-fun e!2387645 () Bool)

(declare-fun tp!1170756 () Bool)

(declare-fun inv!21 (TokenValue!6570) Bool)

(assert (=> b!3861973 (= e!2387645 (and (inv!21 (value!201324 (h!46377 prefixTokens!80))) e!2387659 tp!1170756))))

(declare-fun b!3861974 () Bool)

(declare-fun res!1563848 () Bool)

(declare-fun e!2387653 () Bool)

(assert (=> b!3861974 (=> (not res!1563848) (not e!2387653))))

(declare-fun isEmpty!24266 (List!41081) Bool)

(assert (=> b!3861974 (= res!1563848 (not (isEmpty!24266 prefixTokens!80)))))

(declare-fun res!1563845 () Bool)

(assert (=> start!362180 (=> (not res!1563845) (not e!2387653))))

(get-info :version)

(assert (=> start!362180 (= res!1563845 ((_ is Lexer!5927) thiss!20629))))

(assert (=> start!362180 e!2387653))

(declare-fun e!2387648 () Bool)

(assert (=> start!362180 e!2387648))

(assert (=> start!362180 true))

(declare-fun e!2387646 () Bool)

(assert (=> start!362180 e!2387646))

(declare-fun e!2387647 () Bool)

(assert (=> start!362180 e!2387647))

(declare-fun e!2387668 () Bool)

(assert (=> start!362180 e!2387668))

(declare-fun e!2387664 () Bool)

(assert (=> start!362180 e!2387664))

(declare-fun e!2387661 () Bool)

(assert (=> start!362180 e!2387661))

(declare-fun b!3861975 () Bool)

(declare-fun e!2387642 () Bool)

(declare-fun e!2387640 () Bool)

(declare-fun tp!1170748 () Bool)

(assert (=> b!3861975 (= e!2387640 (and (inv!21 (value!201324 (h!46377 suffixTokens!72))) e!2387642 tp!1170748))))

(declare-fun b!3861976 () Bool)

(declare-fun e!2387660 () Bool)

(assert (=> b!3861976 (= e!2387660 e!2387641)))

(declare-fun res!1563835 () Bool)

(assert (=> b!3861976 (=> res!1563835 e!2387641)))

(assert (=> b!3861976 (= res!1563835 (isEmpty!24266 lt!1342033))))

(declare-fun tail!5859 (List!41081) List!41081)

(assert (=> b!3861976 (= lt!1342033 (tail!5859 prefixTokens!80))))

(declare-fun e!2387666 () Bool)

(assert (=> b!3861977 (= e!2387666 (and tp!1170742 tp!1170741))))

(declare-fun b!3861978 () Bool)

(declare-fun tp_is_empty!19461 () Bool)

(declare-fun tp!1170740 () Bool)

(assert (=> b!3861978 (= e!2387661 (and tp_is_empty!19461 tp!1170740))))

(declare-fun b!3861979 () Bool)

(declare-fun e!2387651 () Bool)

(declare-datatypes ((Option!8758 0))(
  ( (None!8757) (Some!8757 (v!39055 tuple2!40164)) )
))
(declare-fun lt!1342027 () Option!8758)

(declare-fun size!30802 (List!41078) Int)

(assert (=> b!3861979 (= e!2387651 (= (size!30801 (_1!23216 (v!39055 lt!1342027))) (size!30802 (originalCharacters!6940 (_1!23216 (v!39055 lt!1342027))))))))

(declare-fun b!3861980 () Bool)

(declare-fun res!1563841 () Bool)

(declare-fun e!2387652 () Bool)

(assert (=> b!3861980 (=> res!1563841 e!2387652)))

(declare-fun lt!1342022 () tuple2!40162)

(assert (=> b!3861980 (= res!1563841 (or (not (= lt!1342022 (tuple2!40163 (_1!23215 lt!1342022) (_2!23215 lt!1342022)))) (= (_2!23216 (v!39055 lt!1342027)) suffix!1176)))))

(declare-fun b!3861981 () Bool)

(declare-fun res!1563837 () Bool)

(assert (=> b!3861981 (=> res!1563837 e!2387641)))

(declare-fun lt!1342032 () Token!11818)

(assert (=> b!3861981 (= res!1563837 (not (= (_1!23216 (v!39055 lt!1342027)) lt!1342032)))))

(declare-fun b!3861982 () Bool)

(declare-fun tp!1170743 () Bool)

(declare-fun inv!55118 (Token!11818) Bool)

(assert (=> b!3861982 (= e!2387668 (and (inv!55118 (h!46377 prefixTokens!80)) e!2387645 tp!1170743))))

(declare-fun b!3861983 () Bool)

(declare-fun e!2387649 () Bool)

(assert (=> b!3861983 (= e!2387649 e!2387660)))

(declare-fun res!1563842 () Bool)

(assert (=> b!3861983 (=> res!1563842 e!2387660)))

(assert (=> b!3861983 (= res!1563842 (not (= (_1!23216 lt!1342028) lt!1342032)))))

(declare-fun head!8148 (List!41081) Token!11818)

(assert (=> b!3861983 (= lt!1342032 (head!8148 prefixTokens!80))))

(declare-fun get!13550 (Option!8758) tuple2!40164)

(assert (=> b!3861983 (= lt!1342028 (get!13550 lt!1342027))))

(declare-fun b!3861984 () Bool)

(declare-fun e!2387658 () Bool)

(assert (=> b!3861984 (= e!2387652 e!2387658)))

(declare-fun res!1563839 () Bool)

(assert (=> b!3861984 (=> res!1563839 e!2387658)))

(declare-fun lt!1342031 () Int)

(declare-fun lt!1342015 () Int)

(assert (=> b!3861984 (= res!1563839 (>= lt!1342031 lt!1342015))))

(assert (=> b!3861984 (= lt!1342015 (size!30802 suffix!1176))))

(assert (=> b!3861984 (= lt!1342031 (size!30802 (_2!23216 (v!39055 lt!1342027))))))

(declare-fun b!3861985 () Bool)

(declare-fun e!2387663 () Bool)

(assert (=> b!3861985 (= e!2387663 (not e!2387652))))

(declare-fun res!1563843 () Bool)

(assert (=> b!3861985 (=> res!1563843 e!2387652)))

(declare-fun lt!1342019 () List!41078)

(declare-fun lt!1342021 () List!41078)

(assert (=> b!3861985 (= res!1563843 (not (= lt!1342019 lt!1342021)))))

(assert (=> b!3861985 (= lt!1342022 (lexList!1697 thiss!20629 rules!2768 (_2!23216 (v!39055 lt!1342027))))))

(declare-fun lt!1342029 () List!41078)

(declare-fun lt!1342025 () List!41078)

(declare-fun lt!1342013 () TokenValue!6570)

(declare-fun lt!1342017 () Int)

(assert (=> b!3861985 (and (= (size!30801 (_1!23216 (v!39055 lt!1342027))) lt!1342017) (= (originalCharacters!6940 (_1!23216 (v!39055 lt!1342027))) lt!1342025) (= (v!39055 lt!1342027) (tuple2!40165 (Token!11819 lt!1342013 (rule!9212 (_1!23216 (v!39055 lt!1342027))) lt!1342017 lt!1342025) lt!1342029)))))

(assert (=> b!3861985 (= lt!1342017 (size!30802 lt!1342025))))

(assert (=> b!3861985 e!2387651))

(declare-fun res!1563846 () Bool)

(assert (=> b!3861985 (=> (not res!1563846) (not e!2387651))))

(assert (=> b!3861985 (= res!1563846 (= (value!201324 (_1!23216 (v!39055 lt!1342027))) lt!1342013))))

(declare-fun apply!9583 (TokenValueInjection!12568 BalanceConc!24696) TokenValue!6570)

(declare-fun seqFromList!4611 (List!41078) BalanceConc!24696)

(assert (=> b!3861985 (= lt!1342013 (apply!9583 (transformation!6340 (rule!9212 (_1!23216 (v!39055 lt!1342027)))) (seqFromList!4611 lt!1342025)))))

(assert (=> b!3861985 (= (_2!23216 (v!39055 lt!1342027)) lt!1342029)))

(declare-datatypes ((Unit!58608 0))(
  ( (Unit!58609) )
))
(declare-fun lt!1342024 () Unit!58608)

(declare-fun lemmaSamePrefixThenSameSuffix!1660 (List!41078 List!41078 List!41078 List!41078 List!41078) Unit!58608)

(assert (=> b!3861985 (= lt!1342024 (lemmaSamePrefixThenSameSuffix!1660 lt!1342025 (_2!23216 (v!39055 lt!1342027)) lt!1342025 lt!1342029 lt!1342021))))

(declare-fun getSuffix!1894 (List!41078 List!41078) List!41078)

(assert (=> b!3861985 (= lt!1342029 (getSuffix!1894 lt!1342021 lt!1342025))))

(declare-fun isPrefix!3439 (List!41078 List!41078) Bool)

(assert (=> b!3861985 (isPrefix!3439 lt!1342025 lt!1342019)))

(declare-fun ++!10438 (List!41078 List!41078) List!41078)

(assert (=> b!3861985 (= lt!1342019 (++!10438 lt!1342025 (_2!23216 (v!39055 lt!1342027))))))

(declare-fun lt!1342012 () Unit!58608)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2302 (List!41078 List!41078) Unit!58608)

(assert (=> b!3861985 (= lt!1342012 (lemmaConcatTwoListThenFirstIsPrefix!2302 lt!1342025 (_2!23216 (v!39055 lt!1342027))))))

(declare-fun list!15244 (BalanceConc!24696) List!41078)

(declare-fun charsOf!4168 (Token!11818) BalanceConc!24696)

(assert (=> b!3861985 (= lt!1342025 (list!15244 (charsOf!4168 (_1!23216 (v!39055 lt!1342027)))))))

(declare-fun ruleValid!2292 (LexerInterface!5929 Rule!12480) Bool)

(assert (=> b!3861985 (ruleValid!2292 thiss!20629 (rule!9212 (_1!23216 (v!39055 lt!1342027))))))

(declare-fun lt!1342034 () Unit!58608)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1372 (LexerInterface!5929 Rule!12480 List!41080) Unit!58608)

(assert (=> b!3861985 (= lt!1342034 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1372 thiss!20629 (rule!9212 (_1!23216 (v!39055 lt!1342027))) rules!2768))))

(declare-fun lt!1342023 () Unit!58608)

(declare-fun lemmaCharactersSize!1001 (Token!11818) Unit!58608)

(assert (=> b!3861985 (= lt!1342023 (lemmaCharactersSize!1001 (_1!23216 (v!39055 lt!1342027))))))

(declare-fun b!3861986 () Bool)

(declare-fun res!1563844 () Bool)

(assert (=> b!3861986 (=> (not res!1563844) (not e!2387653))))

(declare-fun prefix!426 () List!41078)

(declare-fun isEmpty!24267 (List!41078) Bool)

(assert (=> b!3861986 (= res!1563844 (not (isEmpty!24267 prefix!426)))))

(declare-fun b!3861987 () Bool)

(declare-fun e!2387662 () Bool)

(declare-fun e!2387655 () Bool)

(assert (=> b!3861987 (= e!2387662 e!2387655)))

(declare-fun res!1563833 () Bool)

(assert (=> b!3861987 (=> res!1563833 e!2387655)))

(declare-fun lt!1342018 () Int)

(declare-fun lt!1342014 () Int)

(assert (=> b!3861987 (= res!1563833 (or (not (= (+ lt!1342018 lt!1342015) lt!1342014)) (<= lt!1342017 lt!1342018)))))

(assert (=> b!3861987 (= lt!1342018 (size!30802 prefix!426))))

(declare-fun tp!1170746 () Bool)

(declare-fun b!3861988 () Bool)

(declare-fun e!2387665 () Bool)

(declare-fun inv!55115 (String!46568) Bool)

(declare-fun inv!55119 (TokenValueInjection!12568) Bool)

(assert (=> b!3861988 (= e!2387665 (and tp!1170746 (inv!55115 (tag!7200 (h!46376 rules!2768))) (inv!55119 (transformation!6340 (h!46376 rules!2768))) e!2387666))))

(declare-fun b!3861989 () Bool)

(declare-fun res!1563847 () Bool)

(assert (=> b!3861989 (=> res!1563847 e!2387652)))

(declare-fun lt!1342030 () tuple2!40162)

(assert (=> b!3861989 (= res!1563847 (not (= lt!1342030 (tuple2!40163 (++!10437 (Cons!40957 (_1!23216 (v!39055 lt!1342027)) Nil!40957) (_1!23215 lt!1342022)) (_2!23215 lt!1342022)))))))

(declare-fun b!3861990 () Bool)

(declare-fun tp!1170752 () Bool)

(assert (=> b!3861990 (= e!2387647 (and e!2387665 tp!1170752))))

(declare-fun b!3861991 () Bool)

(declare-fun tp!1170753 () Bool)

(declare-fun e!2387644 () Bool)

(assert (=> b!3861991 (= e!2387659 (and tp!1170753 (inv!55115 (tag!7200 (rule!9212 (h!46377 prefixTokens!80)))) (inv!55119 (transformation!6340 (rule!9212 (h!46377 prefixTokens!80)))) e!2387644))))

(declare-fun b!3861992 () Bool)

(assert (=> b!3861992 (= e!2387639 e!2387663)))

(declare-fun res!1563850 () Bool)

(assert (=> b!3861992 (=> (not res!1563850) (not e!2387663))))

(assert (=> b!3861992 (= res!1563850 ((_ is Some!8757) lt!1342027))))

(declare-fun maxPrefix!3233 (LexerInterface!5929 List!41080 List!41078) Option!8758)

(assert (=> b!3861992 (= lt!1342027 (maxPrefix!3233 thiss!20629 rules!2768 lt!1342021))))

(declare-fun b!3861993 () Bool)

(declare-fun tp!1170755 () Bool)

(assert (=> b!3861993 (= e!2387664 (and (inv!55118 (h!46377 suffixTokens!72)) e!2387640 tp!1170755))))

(declare-fun b!3861994 () Bool)

(declare-fun res!1563832 () Bool)

(assert (=> b!3861994 (=> (not res!1563832) (not e!2387653))))

(declare-fun isEmpty!24268 (List!41080) Bool)

(assert (=> b!3861994 (= res!1563832 (not (isEmpty!24268 rules!2768)))))

(declare-fun e!2387650 () Bool)

(assert (=> b!3861995 (= e!2387650 (and tp!1170749 tp!1170745))))

(declare-fun b!3861996 () Bool)

(assert (=> b!3861996 (= e!2387653 e!2387639)))

(declare-fun res!1563838 () Bool)

(assert (=> b!3861996 (=> (not res!1563838) (not e!2387639))))

(declare-fun lt!1342020 () List!41081)

(assert (=> b!3861996 (= res!1563838 (= lt!1342030 (tuple2!40163 lt!1342020 suffixResult!91)))))

(assert (=> b!3861996 (= lt!1342030 (lexList!1697 thiss!20629 rules!2768 lt!1342021))))

(assert (=> b!3861996 (= lt!1342020 (++!10437 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3861996 (= lt!1342021 (++!10438 prefix!426 suffix!1176))))

(declare-fun b!3861997 () Bool)

(declare-fun res!1563849 () Bool)

(assert (=> b!3861997 (=> (not res!1563849) (not e!2387653))))

(declare-fun rulesInvariant!5272 (LexerInterface!5929 List!41080) Bool)

(assert (=> b!3861997 (= res!1563849 (rulesInvariant!5272 thiss!20629 rules!2768))))

(assert (=> b!3861998 (= e!2387644 (and tp!1170744 tp!1170754))))

(declare-fun b!3861999 () Bool)

(declare-fun tp!1170747 () Bool)

(assert (=> b!3861999 (= e!2387648 (and tp_is_empty!19461 tp!1170747))))

(declare-fun tp!1170751 () Bool)

(declare-fun b!3862000 () Bool)

(assert (=> b!3862000 (= e!2387642 (and tp!1170751 (inv!55115 (tag!7200 (rule!9212 (h!46377 suffixTokens!72)))) (inv!55119 (transformation!6340 (rule!9212 (h!46377 suffixTokens!72)))) e!2387650))))

(declare-fun b!3862001 () Bool)

(declare-fun tp!1170750 () Bool)

(assert (=> b!3862001 (= e!2387646 (and tp_is_empty!19461 tp!1170750))))

(declare-fun b!3862002 () Bool)

(assert (=> b!3862002 (= e!2387655 e!2387649)))

(declare-fun res!1563834 () Bool)

(assert (=> b!3862002 (=> res!1563834 e!2387649)))

(declare-fun matchR!5392 (Regex!11245 List!41078) Bool)

(assert (=> b!3862002 (= res!1563834 (not (matchR!5392 (regex!6340 (rule!9212 (_1!23216 (v!39055 lt!1342027)))) lt!1342025)))))

(declare-fun maxPrefixOneRule!2315 (LexerInterface!5929 Rule!12480 List!41078) Option!8758)

(assert (=> b!3862002 (= (maxPrefixOneRule!2315 thiss!20629 (rule!9212 (_1!23216 (v!39055 lt!1342027))) lt!1342021) (Some!8757 (tuple2!40165 (Token!11819 lt!1342013 (rule!9212 (_1!23216 (v!39055 lt!1342027))) lt!1342017 lt!1342025) (_2!23216 (v!39055 lt!1342027)))))))

(declare-fun lt!1342016 () Unit!58608)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1213 (LexerInterface!5929 List!41080 List!41078 List!41078 List!41078 Rule!12480) Unit!58608)

(assert (=> b!3862002 (= lt!1342016 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1213 thiss!20629 rules!2768 lt!1342025 lt!1342021 (_2!23216 (v!39055 lt!1342027)) (rule!9212 (_1!23216 (v!39055 lt!1342027)))))))

(declare-fun b!3862003 () Bool)

(declare-fun res!1563851 () Bool)

(assert (=> b!3862003 (=> res!1563851 e!2387660)))

(assert (=> b!3862003 (= res!1563851 (>= (size!30802 (_2!23216 lt!1342028)) lt!1342015))))

(declare-fun b!3862004 () Bool)

(assert (=> b!3862004 (= e!2387658 e!2387662)))

(declare-fun res!1563836 () Bool)

(assert (=> b!3862004 (=> res!1563836 e!2387662)))

(assert (=> b!3862004 (= res!1563836 (not (= (+ lt!1342017 lt!1342031) lt!1342014)))))

(assert (=> b!3862004 (= lt!1342014 (size!30802 lt!1342021))))

(assert (= (and start!362180 res!1563845) b!3861994))

(assert (= (and b!3861994 res!1563832) b!3861997))

(assert (= (and b!3861997 res!1563849) b!3861974))

(assert (= (and b!3861974 res!1563848) b!3861986))

(assert (= (and b!3861986 res!1563844) b!3861996))

(assert (= (and b!3861996 res!1563838) b!3861972))

(assert (= (and b!3861972 res!1563840) b!3861992))

(assert (= (and b!3861992 res!1563850) b!3861985))

(assert (= (and b!3861985 res!1563846) b!3861979))

(assert (= (and b!3861985 (not res!1563843)) b!3861989))

(assert (= (and b!3861989 (not res!1563847)) b!3861980))

(assert (= (and b!3861980 (not res!1563841)) b!3861984))

(assert (= (and b!3861984 (not res!1563839)) b!3862004))

(assert (= (and b!3862004 (not res!1563836)) b!3861987))

(assert (= (and b!3861987 (not res!1563833)) b!3862002))

(assert (= (and b!3862002 (not res!1563834)) b!3861983))

(assert (= (and b!3861983 (not res!1563842)) b!3862003))

(assert (= (and b!3862003 (not res!1563851)) b!3861976))

(assert (= (and b!3861976 (not res!1563835)) b!3861981))

(assert (= (and b!3861981 (not res!1563837)) b!3861971))

(assert (= (and start!362180 ((_ is Cons!40954) suffixResult!91)) b!3861999))

(assert (= (and start!362180 ((_ is Cons!40954) suffix!1176)) b!3862001))

(assert (= b!3861988 b!3861977))

(assert (= b!3861990 b!3861988))

(assert (= (and start!362180 ((_ is Cons!40956) rules!2768)) b!3861990))

(assert (= b!3861991 b!3861998))

(assert (= b!3861973 b!3861991))

(assert (= b!3861982 b!3861973))

(assert (= (and start!362180 ((_ is Cons!40957) prefixTokens!80)) b!3861982))

(assert (= b!3862000 b!3861995))

(assert (= b!3861975 b!3862000))

(assert (= b!3861993 b!3861975))

(assert (= (and start!362180 ((_ is Cons!40957) suffixTokens!72)) b!3861993))

(assert (= (and start!362180 ((_ is Cons!40954) prefix!426)) b!3861978))

(declare-fun m!4417423 () Bool)

(assert (=> b!3861984 m!4417423))

(declare-fun m!4417425 () Bool)

(assert (=> b!3861984 m!4417425))

(declare-fun m!4417427 () Bool)

(assert (=> b!3861997 m!4417427))

(declare-fun m!4417429 () Bool)

(assert (=> b!3861983 m!4417429))

(declare-fun m!4417431 () Bool)

(assert (=> b!3861983 m!4417431))

(declare-fun m!4417433 () Bool)

(assert (=> b!3862004 m!4417433))

(declare-fun m!4417435 () Bool)

(assert (=> b!3862002 m!4417435))

(declare-fun m!4417437 () Bool)

(assert (=> b!3862002 m!4417437))

(declare-fun m!4417439 () Bool)

(assert (=> b!3862002 m!4417439))

(declare-fun m!4417441 () Bool)

(assert (=> b!3861989 m!4417441))

(declare-fun m!4417443 () Bool)

(assert (=> b!3861974 m!4417443))

(declare-fun m!4417445 () Bool)

(assert (=> b!3861979 m!4417445))

(declare-fun m!4417447 () Bool)

(assert (=> b!3861972 m!4417447))

(declare-fun m!4417449 () Bool)

(assert (=> b!3861971 m!4417449))

(declare-fun m!4417451 () Bool)

(assert (=> b!3861971 m!4417451))

(declare-fun m!4417453 () Bool)

(assert (=> b!3861992 m!4417453))

(declare-fun m!4417455 () Bool)

(assert (=> b!3861986 m!4417455))

(declare-fun m!4417457 () Bool)

(assert (=> b!3861988 m!4417457))

(declare-fun m!4417459 () Bool)

(assert (=> b!3861988 m!4417459))

(declare-fun m!4417461 () Bool)

(assert (=> b!3861991 m!4417461))

(declare-fun m!4417463 () Bool)

(assert (=> b!3861991 m!4417463))

(declare-fun m!4417465 () Bool)

(assert (=> b!3861994 m!4417465))

(declare-fun m!4417467 () Bool)

(assert (=> b!3862003 m!4417467))

(declare-fun m!4417469 () Bool)

(assert (=> b!3862000 m!4417469))

(declare-fun m!4417471 () Bool)

(assert (=> b!3862000 m!4417471))

(declare-fun m!4417473 () Bool)

(assert (=> b!3861973 m!4417473))

(declare-fun m!4417475 () Bool)

(assert (=> b!3861993 m!4417475))

(declare-fun m!4417477 () Bool)

(assert (=> b!3861982 m!4417477))

(declare-fun m!4417479 () Bool)

(assert (=> b!3861996 m!4417479))

(declare-fun m!4417481 () Bool)

(assert (=> b!3861996 m!4417481))

(declare-fun m!4417483 () Bool)

(assert (=> b!3861996 m!4417483))

(declare-fun m!4417485 () Bool)

(assert (=> b!3861985 m!4417485))

(declare-fun m!4417487 () Bool)

(assert (=> b!3861985 m!4417487))

(declare-fun m!4417489 () Bool)

(assert (=> b!3861985 m!4417489))

(declare-fun m!4417491 () Bool)

(assert (=> b!3861985 m!4417491))

(declare-fun m!4417493 () Bool)

(assert (=> b!3861985 m!4417493))

(declare-fun m!4417495 () Bool)

(assert (=> b!3861985 m!4417495))

(assert (=> b!3861985 m!4417489))

(declare-fun m!4417497 () Bool)

(assert (=> b!3861985 m!4417497))

(declare-fun m!4417499 () Bool)

(assert (=> b!3861985 m!4417499))

(declare-fun m!4417501 () Bool)

(assert (=> b!3861985 m!4417501))

(declare-fun m!4417503 () Bool)

(assert (=> b!3861985 m!4417503))

(declare-fun m!4417505 () Bool)

(assert (=> b!3861985 m!4417505))

(assert (=> b!3861985 m!4417487))

(declare-fun m!4417507 () Bool)

(assert (=> b!3861985 m!4417507))

(declare-fun m!4417509 () Bool)

(assert (=> b!3861985 m!4417509))

(declare-fun m!4417511 () Bool)

(assert (=> b!3861985 m!4417511))

(declare-fun m!4417513 () Bool)

(assert (=> b!3861975 m!4417513))

(declare-fun m!4417515 () Bool)

(assert (=> b!3861987 m!4417515))

(declare-fun m!4417517 () Bool)

(assert (=> b!3861976 m!4417517))

(declare-fun m!4417519 () Bool)

(assert (=> b!3861976 m!4417519))

(check-sat (not b_next!104599) (not b!3861984) (not b!3861999) (not b!3861997) (not b_next!104593) (not b_next!104591) tp_is_empty!19461 b_and!289157 (not b_next!104589) (not b!3861992) (not b!3861988) (not b!3862002) (not b!3861991) (not b!3862001) (not b!3861983) (not b!3861993) (not b!3861975) (not b!3861994) (not b!3861990) b_and!289159 (not b!3862003) (not b!3861978) (not b!3861987) (not b!3861996) (not b!3861979) (not b!3861972) (not b_next!104595) (not b!3861976) b_and!289155 (not b!3861989) (not b!3862004) (not b!3861985) (not b!3861971) (not b!3861986) (not b!3862000) b_and!289165 b_and!289163 (not b!3861973) (not b!3861982) b_and!289161 (not b!3861974) (not b_next!104597))
(check-sat (not b_next!104599) b_and!289159 (not b_next!104593) (not b_next!104595) b_and!289155 (not b_next!104591) b_and!289157 (not b_next!104589) b_and!289161 (not b_next!104597) b_and!289165 b_and!289163)
