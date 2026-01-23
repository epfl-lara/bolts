; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!305778 () Bool)

(assert start!305778)

(declare-fun b!3267900 () Bool)

(declare-fun b_free!86537 () Bool)

(declare-fun b_next!87241 () Bool)

(assert (=> b!3267900 (= b_free!86537 (not b_next!87241))))

(declare-fun tp!1026986 () Bool)

(declare-fun b_and!221239 () Bool)

(assert (=> b!3267900 (= tp!1026986 b_and!221239)))

(declare-fun b_free!86539 () Bool)

(declare-fun b_next!87243 () Bool)

(assert (=> b!3267900 (= b_free!86539 (not b_next!87243))))

(declare-fun tp!1026984 () Bool)

(declare-fun b_and!221241 () Bool)

(assert (=> b!3267900 (= tp!1026984 b_and!221241)))

(declare-fun b!3267901 () Bool)

(declare-fun b_free!86541 () Bool)

(declare-fun b_next!87245 () Bool)

(assert (=> b!3267901 (= b_free!86541 (not b_next!87245))))

(declare-fun tp!1026993 () Bool)

(declare-fun b_and!221243 () Bool)

(assert (=> b!3267901 (= tp!1026993 b_and!221243)))

(declare-fun b_free!86543 () Bool)

(declare-fun b_next!87247 () Bool)

(assert (=> b!3267901 (= b_free!86543 (not b_next!87247))))

(declare-fun tp!1026983 () Bool)

(declare-fun b_and!221245 () Bool)

(assert (=> b!3267901 (= tp!1026983 b_and!221245)))

(declare-fun b!3267911 () Bool)

(declare-fun b_free!86545 () Bool)

(declare-fun b_next!87249 () Bool)

(assert (=> b!3267911 (= b_free!86545 (not b_next!87249))))

(declare-fun tp!1026989 () Bool)

(declare-fun b_and!221247 () Bool)

(assert (=> b!3267911 (= tp!1026989 b_and!221247)))

(declare-fun b_free!86547 () Bool)

(declare-fun b_next!87251 () Bool)

(assert (=> b!3267911 (= b_free!86547 (not b_next!87251))))

(declare-fun tp!1026992 () Bool)

(declare-fun b_and!221249 () Bool)

(assert (=> b!3267911 (= tp!1026992 b_and!221249)))

(declare-datatypes ((C!20272 0))(
  ( (C!20273 (val!12184 Int)) )
))
(declare-datatypes ((Regex!10043 0))(
  ( (ElementMatch!10043 (c!551638 C!20272)) (Concat!15557 (regOne!20598 Regex!10043) (regTwo!20598 Regex!10043)) (EmptyExpr!10043) (Star!10043 (reg!10372 Regex!10043)) (EmptyLang!10043) (Union!10043 (regOne!20599 Regex!10043) (regTwo!20599 Regex!10043)) )
))
(declare-datatypes ((List!36566 0))(
  ( (Nil!36442) (Cons!36442 (h!41862 (_ BitVec 16)) (t!247337 List!36566)) )
))
(declare-datatypes ((TokenValue!5514 0))(
  ( (FloatLiteralValue!11028 (text!39043 List!36566)) (TokenValueExt!5513 (__x!23245 Int)) (Broken!27570 (value!171028 List!36566)) (Object!5637) (End!5514) (Def!5514) (Underscore!5514) (Match!5514) (Else!5514) (Error!5514) (Case!5514) (If!5514) (Extends!5514) (Abstract!5514) (Class!5514) (Val!5514) (DelimiterValue!11028 (del!5574 List!36566)) (KeywordValue!5520 (value!171029 List!36566)) (CommentValue!11028 (value!171030 List!36566)) (WhitespaceValue!11028 (value!171031 List!36566)) (IndentationValue!5514 (value!171032 List!36566)) (String!40903) (Int32!5514) (Broken!27571 (value!171033 List!36566)) (Boolean!5515) (Unit!51217) (OperatorValue!5517 (op!5574 List!36566)) (IdentifierValue!11028 (value!171034 List!36566)) (IdentifierValue!11029 (value!171035 List!36566)) (WhitespaceValue!11029 (value!171036 List!36566)) (True!11028) (False!11028) (Broken!27572 (value!171037 List!36566)) (Broken!27573 (value!171038 List!36566)) (True!11029) (RightBrace!5514) (RightBracket!5514) (Colon!5514) (Null!5514) (Comma!5514) (LeftBracket!5514) (False!11029) (LeftBrace!5514) (ImaginaryLiteralValue!5514 (text!39044 List!36566)) (StringLiteralValue!16542 (value!171039 List!36566)) (EOFValue!5514 (value!171040 List!36566)) (IdentValue!5514 (value!171041 List!36566)) (DelimiterValue!11029 (value!171042 List!36566)) (DedentValue!5514 (value!171043 List!36566)) (NewLineValue!5514 (value!171044 List!36566)) (IntegerValue!16542 (value!171045 (_ BitVec 32)) (text!39045 List!36566)) (IntegerValue!16543 (value!171046 Int) (text!39046 List!36566)) (Times!5514) (Or!5514) (Equal!5514) (Minus!5514) (Broken!27574 (value!171047 List!36566)) (And!5514) (Div!5514) (LessEqual!5514) (Mod!5514) (Concat!15558) (Not!5514) (Plus!5514) (SpaceValue!5514 (value!171048 List!36566)) (IntegerValue!16544 (value!171049 Int) (text!39047 List!36566)) (StringLiteralValue!16543 (text!39048 List!36566)) (FloatLiteralValue!11029 (text!39049 List!36566)) (BytesLiteralValue!5514 (value!171050 List!36566)) (CommentValue!11029 (value!171051 List!36566)) (StringLiteralValue!16544 (value!171052 List!36566)) (ErrorTokenValue!5514 (msg!5575 List!36566)) )
))
(declare-datatypes ((List!36567 0))(
  ( (Nil!36443) (Cons!36443 (h!41863 C!20272) (t!247338 List!36567)) )
))
(declare-datatypes ((IArray!21891 0))(
  ( (IArray!21892 (innerList!11003 List!36567)) )
))
(declare-datatypes ((Conc!10943 0))(
  ( (Node!10943 (left!28379 Conc!10943) (right!28709 Conc!10943) (csize!22116 Int) (cheight!11154 Int)) (Leaf!17196 (xs!14075 IArray!21891) (csize!22117 Int)) (Empty!10943) )
))
(declare-datatypes ((BalanceConc!21500 0))(
  ( (BalanceConc!21501 (c!551639 Conc!10943)) )
))
(declare-datatypes ((String!40904 0))(
  ( (String!40905 (value!171053 String)) )
))
(declare-datatypes ((TokenValueInjection!10456 0))(
  ( (TokenValueInjection!10457 (toValue!7404 Int) (toChars!7263 Int)) )
))
(declare-datatypes ((Rule!10368 0))(
  ( (Rule!10369 (regex!5284 Regex!10043) (tag!5824 String!40904) (isSeparator!5284 Bool) (transformation!5284 TokenValueInjection!10456)) )
))
(declare-datatypes ((Token!9934 0))(
  ( (Token!9935 (value!171054 TokenValue!5514) (rule!7766 Rule!10368) (size!27502 Int) (originalCharacters!5998 List!36567)) )
))
(declare-fun separatorToken!241 () Token!9934)

(declare-fun tp!1026988 () Bool)

(declare-fun e!2035181 () Bool)

(declare-fun e!2035187 () Bool)

(declare-fun b!3267880 () Bool)

(declare-fun inv!21 (TokenValue!5514) Bool)

(assert (=> b!3267880 (= e!2035187 (and (inv!21 (value!171054 separatorToken!241)) e!2035181 tp!1026988))))

(declare-fun b!3267881 () Bool)

(declare-fun res!1328033 () Bool)

(declare-fun e!2035173 () Bool)

(assert (=> b!3267881 (=> res!1328033 e!2035173)))

(declare-datatypes ((List!36568 0))(
  ( (Nil!36444) (Cons!36444 (h!41864 Token!9934) (t!247339 List!36568)) )
))
(declare-fun tokens!494 () List!36568)

(declare-datatypes ((LexerInterface!4873 0))(
  ( (LexerInterfaceExt!4870 (__x!23246 Int)) (Lexer!4871) )
))
(declare-fun thiss!18206 () LexerInterface!4873)

(declare-datatypes ((List!36569 0))(
  ( (Nil!36445) (Cons!36445 (h!41865 Rule!10368) (t!247340 List!36569)) )
))
(declare-fun rules!2135 () List!36569)

(declare-fun rulesProduceIndividualToken!2365 (LexerInterface!4873 List!36569 Token!9934) Bool)

(assert (=> b!3267881 (= res!1328033 (not (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 (h!41864 tokens!494))))))

(declare-fun b!3267882 () Bool)

(declare-fun res!1328025 () Bool)

(declare-fun e!2035180 () Bool)

(assert (=> b!3267882 (=> (not res!1328025) (not e!2035180))))

(declare-fun lambda!118615 () Int)

(declare-fun forall!7522 (List!36568 Int) Bool)

(assert (=> b!3267882 (= res!1328025 (forall!7522 tokens!494 lambda!118615))))

(declare-fun b!3267883 () Bool)

(declare-fun e!2035200 () Bool)

(declare-fun e!2035198 () Bool)

(declare-fun tp!1026987 () Bool)

(assert (=> b!3267883 (= e!2035200 (and e!2035198 tp!1026987))))

(declare-fun b!3267884 () Bool)

(declare-fun e!2035193 () Bool)

(declare-fun e!2035179 () Bool)

(assert (=> b!3267884 (= e!2035193 e!2035179)))

(declare-fun res!1328016 () Bool)

(assert (=> b!3267884 (=> res!1328016 e!2035179)))

(declare-fun lt!1108162 () List!36567)

(declare-datatypes ((tuple2!35916 0))(
  ( (tuple2!35917 (_1!21092 List!36568) (_2!21092 List!36567)) )
))
(declare-fun e!2035182 () tuple2!35916)

(declare-fun lexList!1347 (LexerInterface!4873 List!36569 List!36567) tuple2!35916)

(assert (=> b!3267884 (= res!1328016 (not (= e!2035182 (lexList!1347 thiss!18206 rules!2135 lt!1108162))))))

(declare-fun c!551636 () Bool)

(declare-datatypes ((tuple2!35918 0))(
  ( (tuple2!35919 (_1!21093 Token!9934) (_2!21093 List!36567)) )
))
(declare-datatypes ((Option!7257 0))(
  ( (None!7256) (Some!7256 (v!35952 tuple2!35918)) )
))
(declare-fun lt!1108148 () Option!7257)

(get-info :version)

(assert (=> b!3267884 (= c!551636 ((_ is Some!7256) lt!1108148))))

(declare-fun maxPrefix!2501 (LexerInterface!4873 List!36569 List!36567) Option!7257)

(assert (=> b!3267884 (= lt!1108148 (maxPrefix!2501 thiss!18206 rules!2135 lt!1108162))))

(declare-fun lt!1108146 () List!36567)

(declare-fun lt!1108142 () List!36567)

(assert (=> b!3267884 (= (maxPrefix!2501 thiss!18206 rules!2135 lt!1108146) (Some!7256 (tuple2!35919 (h!41864 tokens!494) lt!1108142)))))

(declare-datatypes ((Unit!51218 0))(
  ( (Unit!51219) )
))
(declare-fun lt!1108154 () Unit!51218)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!190 (LexerInterface!4873 List!36569 Token!9934 Rule!10368 List!36567 Rule!10368) Unit!51218)

(assert (=> b!3267884 (= lt!1108154 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!190 thiss!18206 rules!2135 (h!41864 tokens!494) (rule!7766 (h!41864 tokens!494)) lt!1108142 (rule!7766 separatorToken!241)))))

(declare-fun lt!1108139 () C!20272)

(declare-fun contains!6567 (List!36567 C!20272) Bool)

(declare-fun usedCharacters!586 (Regex!10043) List!36567)

(assert (=> b!3267884 (not (contains!6567 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108139))))

(declare-fun lt!1108149 () Unit!51218)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!190 (LexerInterface!4873 List!36569 List!36569 Rule!10368 Rule!10368 C!20272) Unit!51218)

(assert (=> b!3267884 (= lt!1108149 (lemmaNonSepRuleNotContainsCharContainedInASepRule!190 thiss!18206 rules!2135 rules!2135 (rule!7766 (h!41864 tokens!494)) (rule!7766 separatorToken!241) lt!1108139))))

(declare-fun b!3267885 () Bool)

(declare-fun e!2035189 () Bool)

(declare-fun e!2035184 () Bool)

(assert (=> b!3267885 (= e!2035189 e!2035184)))

(declare-fun res!1328023 () Bool)

(assert (=> b!3267885 (=> res!1328023 e!2035184)))

(assert (=> b!3267885 (= res!1328023 (isSeparator!5284 (rule!7766 (h!41864 tokens!494))))))

(declare-fun lt!1108147 () Unit!51218)

(declare-fun forallContained!1245 (List!36568 Int Token!9934) Unit!51218)

(assert (=> b!3267885 (= lt!1108147 (forallContained!1245 tokens!494 lambda!118615 (h!41864 tokens!494)))))

(declare-fun b!3267886 () Bool)

(declare-fun res!1328030 () Bool)

(assert (=> b!3267886 (=> (not res!1328030) (not e!2035180))))

(assert (=> b!3267886 (= res!1328030 (and (not ((_ is Nil!36444) tokens!494)) ((_ is Nil!36444) (t!247339 tokens!494))))))

(declare-fun b!3267887 () Bool)

(declare-fun e!2035183 () Bool)

(assert (=> b!3267887 (= e!2035183 e!2035173)))

(declare-fun res!1328024 () Bool)

(assert (=> b!3267887 (=> res!1328024 e!2035173)))

(declare-fun lt!1108153 () List!36567)

(declare-fun lt!1108158 () List!36567)

(declare-fun lt!1108138 () List!36567)

(assert (=> b!3267887 (= res!1328024 (or (not (= lt!1108138 lt!1108158)) (not (= lt!1108153 lt!1108158))))))

(declare-fun list!13032 (BalanceConc!21500) List!36567)

(declare-fun charsOf!3300 (Token!9934) BalanceConc!21500)

(assert (=> b!3267887 (= lt!1108158 (list!13032 (charsOf!3300 (h!41864 tokens!494))))))

(declare-fun b!3267888 () Bool)

(declare-fun e!2035192 () Bool)

(assert (=> b!3267888 (= e!2035192 e!2035180)))

(declare-fun res!1328031 () Bool)

(assert (=> b!3267888 (=> (not res!1328031) (not e!2035180))))

(declare-datatypes ((IArray!21893 0))(
  ( (IArray!21894 (innerList!11004 List!36568)) )
))
(declare-datatypes ((Conc!10944 0))(
  ( (Node!10944 (left!28380 Conc!10944) (right!28710 Conc!10944) (csize!22118 Int) (cheight!11155 Int)) (Leaf!17197 (xs!14076 IArray!21893) (csize!22119 Int)) (Empty!10944) )
))
(declare-datatypes ((BalanceConc!21502 0))(
  ( (BalanceConc!21503 (c!551640 Conc!10944)) )
))
(declare-fun lt!1108152 () BalanceConc!21502)

(declare-fun rulesProduceEachTokenIndividually!1324 (LexerInterface!4873 List!36569 BalanceConc!21502) Bool)

(assert (=> b!3267888 (= res!1328031 (rulesProduceEachTokenIndividually!1324 thiss!18206 rules!2135 lt!1108152))))

(declare-fun seqFromList!3631 (List!36568) BalanceConc!21502)

(assert (=> b!3267888 (= lt!1108152 (seqFromList!3631 tokens!494))))

(declare-fun res!1328035 () Bool)

(assert (=> start!305778 (=> (not res!1328035) (not e!2035192))))

(assert (=> start!305778 (= res!1328035 ((_ is Lexer!4871) thiss!18206))))

(assert (=> start!305778 e!2035192))

(assert (=> start!305778 true))

(assert (=> start!305778 e!2035200))

(declare-fun inv!49368 (Token!9934) Bool)

(assert (=> start!305778 (and (inv!49368 separatorToken!241) e!2035187)))

(declare-fun e!2035194 () Bool)

(assert (=> start!305778 e!2035194))

(declare-fun b!3267889 () Bool)

(declare-fun res!1328017 () Bool)

(assert (=> b!3267889 (=> (not res!1328017) (not e!2035192))))

(declare-fun rulesInvariant!4270 (LexerInterface!4873 List!36569) Bool)

(assert (=> b!3267889 (= res!1328017 (rulesInvariant!4270 thiss!18206 rules!2135))))

(declare-fun b!3267890 () Bool)

(declare-fun e!2035196 () Bool)

(declare-fun lt!1108157 () Rule!10368)

(assert (=> b!3267890 (= e!2035196 (= (rule!7766 (h!41864 tokens!494)) lt!1108157))))

(declare-fun b!3267891 () Bool)

(declare-fun e!2035171 () Bool)

(declare-fun lt!1108160 () Rule!10368)

(assert (=> b!3267891 (= e!2035171 (= (rule!7766 separatorToken!241) lt!1108160))))

(declare-fun e!2035177 () Bool)

(declare-fun b!3267892 () Bool)

(declare-fun tp!1026985 () Bool)

(declare-fun inv!49365 (String!40904) Bool)

(declare-fun inv!49369 (TokenValueInjection!10456) Bool)

(assert (=> b!3267892 (= e!2035181 (and tp!1026985 (inv!49365 (tag!5824 (rule!7766 separatorToken!241))) (inv!49369 (transformation!5284 (rule!7766 separatorToken!241))) e!2035177))))

(declare-fun b!3267893 () Bool)

(declare-fun res!1328032 () Bool)

(assert (=> b!3267893 (=> (not res!1328032) (not e!2035192))))

(declare-fun isEmpty!20560 (List!36569) Bool)

(assert (=> b!3267893 (= res!1328032 (not (isEmpty!20560 rules!2135)))))

(declare-fun b!3267894 () Bool)

(declare-fun e!2035186 () Bool)

(assert (=> b!3267894 (= e!2035186 e!2035171)))

(declare-fun res!1328018 () Bool)

(assert (=> b!3267894 (=> (not res!1328018) (not e!2035171))))

(declare-fun matchR!4665 (Regex!10043 List!36567) Bool)

(assert (=> b!3267894 (= res!1328018 (matchR!4665 (regex!5284 lt!1108160) lt!1108142))))

(declare-datatypes ((Option!7258 0))(
  ( (None!7257) (Some!7257 (v!35953 Rule!10368)) )
))
(declare-fun lt!1108156 () Option!7258)

(declare-fun get!11623 (Option!7258) Rule!10368)

(assert (=> b!3267894 (= lt!1108160 (get!11623 lt!1108156))))

(declare-fun b!3267895 () Bool)

(declare-fun isEmpty!20561 (List!36568) Bool)

(declare-fun filter!524 (List!36568 Int) List!36568)

(declare-fun printWithSeparatorTokenList!198 (LexerInterface!4873 List!36568 Token!9934) List!36567)

(assert (=> b!3267895 (= e!2035179 (isEmpty!20561 (filter!524 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))) lambda!118615)))))

(declare-fun b!3267896 () Bool)

(declare-fun e!2035185 () Bool)

(assert (=> b!3267896 (= e!2035185 false)))

(declare-fun b!3267897 () Bool)

(declare-fun e!2035188 () Bool)

(assert (=> b!3267897 (= e!2035184 e!2035188)))

(declare-fun res!1328029 () Bool)

(assert (=> b!3267897 (=> res!1328029 e!2035188)))

(assert (=> b!3267897 (= res!1328029 (not (= lt!1108162 lt!1108146)))))

(declare-fun ++!8798 (List!36567 List!36567) List!36567)

(assert (=> b!3267897 (= lt!1108146 (++!8798 lt!1108158 lt!1108142))))

(declare-fun lt!1108161 () BalanceConc!21500)

(assert (=> b!3267897 (= lt!1108162 (list!13032 lt!1108161))))

(assert (=> b!3267897 (= lt!1108142 (list!13032 (charsOf!3300 separatorToken!241)))))

(declare-fun printWithSeparatorToken!90 (LexerInterface!4873 BalanceConc!21502 Token!9934) BalanceConc!21500)

(assert (=> b!3267897 (= lt!1108161 (printWithSeparatorToken!90 thiss!18206 lt!1108152 separatorToken!241))))

(declare-fun b!3267898 () Bool)

(assert (=> b!3267898 (= e!2035180 (not e!2035183))))

(declare-fun res!1328022 () Bool)

(assert (=> b!3267898 (=> res!1328022 e!2035183)))

(assert (=> b!3267898 (= res!1328022 (not (= lt!1108153 lt!1108138)))))

(declare-fun printList!1423 (LexerInterface!4873 List!36568) List!36567)

(assert (=> b!3267898 (= lt!1108138 (printList!1423 thiss!18206 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))

(declare-fun lt!1108163 () BalanceConc!21500)

(assert (=> b!3267898 (= lt!1108153 (list!13032 lt!1108163))))

(declare-fun lt!1108159 () BalanceConc!21502)

(declare-fun printTailRec!1370 (LexerInterface!4873 BalanceConc!21502 Int BalanceConc!21500) BalanceConc!21500)

(assert (=> b!3267898 (= lt!1108163 (printTailRec!1370 thiss!18206 lt!1108159 0 (BalanceConc!21501 Empty!10943)))))

(declare-fun print!1938 (LexerInterface!4873 BalanceConc!21502) BalanceConc!21500)

(assert (=> b!3267898 (= lt!1108163 (print!1938 thiss!18206 lt!1108159))))

(declare-fun singletonSeq!2380 (Token!9934) BalanceConc!21502)

(assert (=> b!3267898 (= lt!1108159 (singletonSeq!2380 (h!41864 tokens!494)))))

(declare-fun b!3267899 () Bool)

(declare-fun e!2035191 () Unit!51218)

(declare-fun Unit!51220 () Unit!51218)

(assert (=> b!3267899 (= e!2035191 Unit!51220)))

(declare-fun e!2035174 () Bool)

(assert (=> b!3267900 (= e!2035174 (and tp!1026986 tp!1026984))))

(assert (=> b!3267901 (= e!2035177 (and tp!1026993 tp!1026983))))

(declare-fun tp!1026982 () Bool)

(declare-fun b!3267902 () Bool)

(declare-fun e!2035199 () Bool)

(declare-fun e!2035178 () Bool)

(assert (=> b!3267902 (= e!2035178 (and (inv!21 (value!171054 (h!41864 tokens!494))) e!2035199 tp!1026982))))

(declare-fun b!3267903 () Bool)

(assert (=> b!3267903 (= e!2035188 e!2035193)))

(declare-fun res!1328036 () Bool)

(assert (=> b!3267903 (=> res!1328036 e!2035193)))

(declare-fun lt!1108145 () Bool)

(assert (=> b!3267903 (= res!1328036 lt!1108145)))

(declare-fun lt!1108151 () Unit!51218)

(assert (=> b!3267903 (= lt!1108151 e!2035191)))

(declare-fun c!551637 () Bool)

(assert (=> b!3267903 (= c!551637 lt!1108145)))

(assert (=> b!3267903 (= lt!1108145 (not (contains!6567 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241))) lt!1108139)))))

(declare-fun head!7113 (List!36567) C!20272)

(assert (=> b!3267903 (= lt!1108139 (head!7113 lt!1108142))))

(declare-fun lt!1108144 () BalanceConc!21500)

(declare-fun maxPrefixOneRule!1638 (LexerInterface!4873 Rule!10368 List!36567) Option!7257)

(declare-fun apply!8348 (TokenValueInjection!10456 BalanceConc!21500) TokenValue!5514)

(declare-fun size!27503 (List!36567) Int)

(assert (=> b!3267903 (= (maxPrefixOneRule!1638 thiss!18206 (rule!7766 (h!41864 tokens!494)) lt!1108158) (Some!7256 (tuple2!35919 (Token!9935 (apply!8348 (transformation!5284 (rule!7766 (h!41864 tokens!494))) lt!1108144) (rule!7766 (h!41864 tokens!494)) (size!27503 lt!1108158) lt!1108158) Nil!36443)))))

(declare-fun lt!1108141 () Unit!51218)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!749 (LexerInterface!4873 List!36569 List!36567 List!36567 List!36567 Rule!10368) Unit!51218)

(assert (=> b!3267903 (= lt!1108141 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!749 thiss!18206 rules!2135 lt!1108158 lt!1108158 Nil!36443 (rule!7766 (h!41864 tokens!494))))))

(assert (=> b!3267903 e!2035186))

(declare-fun res!1328027 () Bool)

(assert (=> b!3267903 (=> (not res!1328027) (not e!2035186))))

(declare-fun isDefined!5624 (Option!7258) Bool)

(assert (=> b!3267903 (= res!1328027 (isDefined!5624 lt!1108156))))

(declare-fun getRuleFromTag!975 (LexerInterface!4873 List!36569 String!40904) Option!7258)

(assert (=> b!3267903 (= lt!1108156 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))))

(declare-fun lt!1108143 () Unit!51218)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!975 (LexerInterface!4873 List!36569 List!36567 Token!9934) Unit!51218)

(assert (=> b!3267903 (= lt!1108143 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!975 thiss!18206 rules!2135 lt!1108142 separatorToken!241))))

(declare-fun e!2035172 () Bool)

(assert (=> b!3267903 e!2035172))

(declare-fun res!1328034 () Bool)

(assert (=> b!3267903 (=> (not res!1328034) (not e!2035172))))

(declare-fun lt!1108140 () Option!7258)

(assert (=> b!3267903 (= res!1328034 (isDefined!5624 lt!1108140))))

(assert (=> b!3267903 (= lt!1108140 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun lt!1108137 () Unit!51218)

(assert (=> b!3267903 (= lt!1108137 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!975 thiss!18206 rules!2135 lt!1108158 (h!41864 tokens!494)))))

(declare-fun lt!1108164 () Unit!51218)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!898 (LexerInterface!4873 List!36569 List!36568 Token!9934) Unit!51218)

(assert (=> b!3267903 (= lt!1108164 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!898 thiss!18206 rules!2135 tokens!494 (h!41864 tokens!494)))))

(declare-fun isEmpty!20562 (List!36567) Bool)

(declare-fun getSuffix!1408 (List!36567 List!36567) List!36567)

(assert (=> b!3267903 (isEmpty!20562 (getSuffix!1408 lt!1108158 lt!1108158))))

(declare-fun lt!1108136 () Unit!51218)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!72 (List!36567) Unit!51218)

(assert (=> b!3267903 (= lt!1108136 (lemmaGetSuffixOnListWithItSelfIsEmpty!72 lt!1108158))))

(declare-fun b!3267904 () Bool)

(assert (=> b!3267904 (= e!2035172 e!2035196)))

(declare-fun res!1328021 () Bool)

(assert (=> b!3267904 (=> (not res!1328021) (not e!2035196))))

(assert (=> b!3267904 (= res!1328021 (matchR!4665 (regex!5284 lt!1108157) lt!1108158))))

(assert (=> b!3267904 (= lt!1108157 (get!11623 lt!1108140))))

(declare-fun e!2035170 () Bool)

(declare-fun tp!1026994 () Bool)

(declare-fun b!3267905 () Bool)

(assert (=> b!3267905 (= e!2035198 (and tp!1026994 (inv!49365 (tag!5824 (h!41865 rules!2135))) (inv!49369 (transformation!5284 (h!41865 rules!2135))) e!2035170))))

(declare-fun tp!1026991 () Bool)

(declare-fun b!3267906 () Bool)

(assert (=> b!3267906 (= e!2035194 (and (inv!49368 (h!41864 tokens!494)) e!2035178 tp!1026991))))

(declare-fun b!3267907 () Bool)

(declare-fun res!1328019 () Bool)

(assert (=> b!3267907 (=> (not res!1328019) (not e!2035180))))

(assert (=> b!3267907 (= res!1328019 (isSeparator!5284 (rule!7766 separatorToken!241)))))

(declare-fun b!3267908 () Bool)

(declare-fun res!1328015 () Bool)

(assert (=> b!3267908 (=> (not res!1328015) (not e!2035180))))

(declare-fun sepAndNonSepRulesDisjointChars!1478 (List!36569 List!36569) Bool)

(assert (=> b!3267908 (= res!1328015 (sepAndNonSepRulesDisjointChars!1478 rules!2135 rules!2135))))

(declare-fun b!3267909 () Bool)

(declare-fun res!1328037 () Bool)

(assert (=> b!3267909 (=> (not res!1328037) (not e!2035180))))

(assert (=> b!3267909 (= res!1328037 (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3267910 () Bool)

(assert (=> b!3267910 (= e!2035173 e!2035189)))

(declare-fun res!1328028 () Bool)

(assert (=> b!3267910 (=> res!1328028 e!2035189)))

(declare-fun isEmpty!20563 (BalanceConc!21502) Bool)

(declare-datatypes ((tuple2!35920 0))(
  ( (tuple2!35921 (_1!21094 BalanceConc!21502) (_2!21094 BalanceConc!21500)) )
))
(declare-fun lex!2201 (LexerInterface!4873 List!36569 BalanceConc!21500) tuple2!35920)

(assert (=> b!3267910 (= res!1328028 (isEmpty!20563 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144))))))

(declare-fun seqFromList!3632 (List!36567) BalanceConc!21500)

(assert (=> b!3267910 (= lt!1108144 (seqFromList!3632 lt!1108158))))

(assert (=> b!3267911 (= e!2035170 (and tp!1026989 tp!1026992))))

(declare-fun b!3267912 () Bool)

(declare-fun res!1328020 () Bool)

(assert (=> b!3267912 (=> res!1328020 e!2035179)))

(declare-fun list!13033 (BalanceConc!21502) List!36568)

(assert (=> b!3267912 (= res!1328020 (not (isEmpty!20561 (filter!524 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))) lambda!118615))))))

(declare-fun b!3267913 () Bool)

(assert (=> b!3267913 (= e!2035182 (tuple2!35917 Nil!36444 lt!1108162))))

(assert (=> b!3267913 false))

(declare-fun b!3267914 () Bool)

(declare-fun Unit!51221 () Unit!51218)

(assert (=> b!3267914 (= e!2035191 Unit!51221)))

(declare-fun lt!1108155 () Unit!51218)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!432 (Regex!10043 List!36567 C!20272) Unit!51218)

(assert (=> b!3267914 (= lt!1108155 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!432 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142 lt!1108139))))

(declare-fun res!1328026 () Bool)

(assert (=> b!3267914 (= res!1328026 (not (matchR!4665 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142)))))

(assert (=> b!3267914 (=> (not res!1328026) (not e!2035185))))

(assert (=> b!3267914 e!2035185))

(declare-fun b!3267915 () Bool)

(declare-fun lt!1108150 () tuple2!35916)

(assert (=> b!3267915 (= e!2035182 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1108148)) (_1!21092 lt!1108150)) (_2!21092 lt!1108150)))))

(assert (=> b!3267915 (= lt!1108150 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108148))))))

(declare-fun b!3267916 () Bool)

(declare-fun tp!1026990 () Bool)

(assert (=> b!3267916 (= e!2035199 (and tp!1026990 (inv!49365 (tag!5824 (rule!7766 (h!41864 tokens!494)))) (inv!49369 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) e!2035174))))

(assert (= (and start!305778 res!1328035) b!3267893))

(assert (= (and b!3267893 res!1328032) b!3267889))

(assert (= (and b!3267889 res!1328017) b!3267888))

(assert (= (and b!3267888 res!1328031) b!3267909))

(assert (= (and b!3267909 res!1328037) b!3267907))

(assert (= (and b!3267907 res!1328019) b!3267882))

(assert (= (and b!3267882 res!1328025) b!3267908))

(assert (= (and b!3267908 res!1328015) b!3267886))

(assert (= (and b!3267886 res!1328030) b!3267898))

(assert (= (and b!3267898 (not res!1328022)) b!3267887))

(assert (= (and b!3267887 (not res!1328024)) b!3267881))

(assert (= (and b!3267881 (not res!1328033)) b!3267910))

(assert (= (and b!3267910 (not res!1328028)) b!3267885))

(assert (= (and b!3267885 (not res!1328023)) b!3267897))

(assert (= (and b!3267897 (not res!1328029)) b!3267903))

(assert (= (and b!3267903 res!1328034) b!3267904))

(assert (= (and b!3267904 res!1328021) b!3267890))

(assert (= (and b!3267903 res!1328027) b!3267894))

(assert (= (and b!3267894 res!1328018) b!3267891))

(assert (= (and b!3267903 c!551637) b!3267914))

(assert (= (and b!3267903 (not c!551637)) b!3267899))

(assert (= (and b!3267914 res!1328026) b!3267896))

(assert (= (and b!3267903 (not res!1328036)) b!3267884))

(assert (= (and b!3267884 c!551636) b!3267915))

(assert (= (and b!3267884 (not c!551636)) b!3267913))

(assert (= (and b!3267884 (not res!1328016)) b!3267912))

(assert (= (and b!3267912 (not res!1328020)) b!3267895))

(assert (= b!3267905 b!3267911))

(assert (= b!3267883 b!3267905))

(assert (= (and start!305778 ((_ is Cons!36445) rules!2135)) b!3267883))

(assert (= b!3267892 b!3267901))

(assert (= b!3267880 b!3267892))

(assert (= start!305778 b!3267880))

(assert (= b!3267916 b!3267900))

(assert (= b!3267902 b!3267916))

(assert (= b!3267906 b!3267902))

(assert (= (and start!305778 ((_ is Cons!36444) tokens!494)) b!3267906))

(declare-fun m!3569431 () Bool)

(assert (=> b!3267888 m!3569431))

(declare-fun m!3569433 () Bool)

(assert (=> b!3267888 m!3569433))

(declare-fun m!3569435 () Bool)

(assert (=> b!3267887 m!3569435))

(assert (=> b!3267887 m!3569435))

(declare-fun m!3569437 () Bool)

(assert (=> b!3267887 m!3569437))

(declare-fun m!3569439 () Bool)

(assert (=> b!3267914 m!3569439))

(declare-fun m!3569441 () Bool)

(assert (=> b!3267914 m!3569441))

(declare-fun m!3569443 () Bool)

(assert (=> b!3267880 m!3569443))

(declare-fun m!3569445 () Bool)

(assert (=> b!3267905 m!3569445))

(declare-fun m!3569447 () Bool)

(assert (=> b!3267905 m!3569447))

(declare-fun m!3569449 () Bool)

(assert (=> b!3267892 m!3569449))

(declare-fun m!3569451 () Bool)

(assert (=> b!3267892 m!3569451))

(declare-fun m!3569453 () Bool)

(assert (=> b!3267893 m!3569453))

(declare-fun m!3569455 () Bool)

(assert (=> b!3267910 m!3569455))

(declare-fun m!3569457 () Bool)

(assert (=> b!3267910 m!3569457))

(declare-fun m!3569459 () Bool)

(assert (=> b!3267910 m!3569459))

(declare-fun m!3569461 () Bool)

(assert (=> b!3267912 m!3569461))

(declare-fun m!3569463 () Bool)

(assert (=> b!3267912 m!3569463))

(declare-fun m!3569465 () Bool)

(assert (=> b!3267912 m!3569465))

(declare-fun m!3569467 () Bool)

(assert (=> b!3267912 m!3569467))

(assert (=> b!3267912 m!3569461))

(declare-fun m!3569469 () Bool)

(assert (=> b!3267912 m!3569469))

(assert (=> b!3267912 m!3569467))

(assert (=> b!3267912 m!3569463))

(declare-fun m!3569471 () Bool)

(assert (=> b!3267904 m!3569471))

(declare-fun m!3569473 () Bool)

(assert (=> b!3267904 m!3569473))

(declare-fun m!3569475 () Bool)

(assert (=> b!3267884 m!3569475))

(declare-fun m!3569477 () Bool)

(assert (=> b!3267884 m!3569477))

(declare-fun m!3569479 () Bool)

(assert (=> b!3267884 m!3569479))

(declare-fun m!3569481 () Bool)

(assert (=> b!3267884 m!3569481))

(declare-fun m!3569483 () Bool)

(assert (=> b!3267884 m!3569483))

(assert (=> b!3267884 m!3569481))

(declare-fun m!3569485 () Bool)

(assert (=> b!3267884 m!3569485))

(declare-fun m!3569487 () Bool)

(assert (=> b!3267884 m!3569487))

(declare-fun m!3569489 () Bool)

(assert (=> b!3267916 m!3569489))

(declare-fun m!3569491 () Bool)

(assert (=> b!3267916 m!3569491))

(declare-fun m!3569493 () Bool)

(assert (=> b!3267898 m!3569493))

(declare-fun m!3569495 () Bool)

(assert (=> b!3267898 m!3569495))

(declare-fun m!3569497 () Bool)

(assert (=> b!3267898 m!3569497))

(declare-fun m!3569499 () Bool)

(assert (=> b!3267898 m!3569499))

(declare-fun m!3569501 () Bool)

(assert (=> b!3267898 m!3569501))

(declare-fun m!3569503 () Bool)

(assert (=> b!3267889 m!3569503))

(declare-fun m!3569505 () Bool)

(assert (=> b!3267882 m!3569505))

(declare-fun m!3569507 () Bool)

(assert (=> b!3267897 m!3569507))

(declare-fun m!3569509 () Bool)

(assert (=> b!3267897 m!3569509))

(declare-fun m!3569511 () Bool)

(assert (=> b!3267897 m!3569511))

(declare-fun m!3569513 () Bool)

(assert (=> b!3267897 m!3569513))

(assert (=> b!3267897 m!3569507))

(declare-fun m!3569515 () Bool)

(assert (=> b!3267897 m!3569515))

(declare-fun m!3569517 () Bool)

(assert (=> b!3267881 m!3569517))

(declare-fun m!3569519 () Bool)

(assert (=> b!3267885 m!3569519))

(declare-fun m!3569521 () Bool)

(assert (=> b!3267915 m!3569521))

(declare-fun m!3569523 () Bool)

(assert (=> b!3267903 m!3569523))

(declare-fun m!3569525 () Bool)

(assert (=> b!3267903 m!3569525))

(declare-fun m!3569527 () Bool)

(assert (=> b!3267903 m!3569527))

(declare-fun m!3569529 () Bool)

(assert (=> b!3267903 m!3569529))

(declare-fun m!3569531 () Bool)

(assert (=> b!3267903 m!3569531))

(declare-fun m!3569533 () Bool)

(assert (=> b!3267903 m!3569533))

(declare-fun m!3569535 () Bool)

(assert (=> b!3267903 m!3569535))

(declare-fun m!3569537 () Bool)

(assert (=> b!3267903 m!3569537))

(declare-fun m!3569539 () Bool)

(assert (=> b!3267903 m!3569539))

(declare-fun m!3569541 () Bool)

(assert (=> b!3267903 m!3569541))

(declare-fun m!3569543 () Bool)

(assert (=> b!3267903 m!3569543))

(declare-fun m!3569545 () Bool)

(assert (=> b!3267903 m!3569545))

(declare-fun m!3569547 () Bool)

(assert (=> b!3267903 m!3569547))

(assert (=> b!3267903 m!3569541))

(declare-fun m!3569549 () Bool)

(assert (=> b!3267903 m!3569549))

(declare-fun m!3569551 () Bool)

(assert (=> b!3267903 m!3569551))

(declare-fun m!3569553 () Bool)

(assert (=> b!3267903 m!3569553))

(assert (=> b!3267903 m!3569553))

(declare-fun m!3569555 () Bool)

(assert (=> b!3267903 m!3569555))

(declare-fun m!3569557 () Bool)

(assert (=> b!3267908 m!3569557))

(declare-fun m!3569559 () Bool)

(assert (=> b!3267894 m!3569559))

(declare-fun m!3569561 () Bool)

(assert (=> b!3267894 m!3569561))

(declare-fun m!3569563 () Bool)

(assert (=> b!3267895 m!3569563))

(assert (=> b!3267895 m!3569563))

(declare-fun m!3569565 () Bool)

(assert (=> b!3267895 m!3569565))

(declare-fun m!3569567 () Bool)

(assert (=> b!3267895 m!3569567))

(assert (=> b!3267895 m!3569567))

(declare-fun m!3569569 () Bool)

(assert (=> b!3267895 m!3569569))

(declare-fun m!3569571 () Bool)

(assert (=> b!3267909 m!3569571))

(declare-fun m!3569573 () Bool)

(assert (=> b!3267906 m!3569573))

(declare-fun m!3569575 () Bool)

(assert (=> start!305778 m!3569575))

(declare-fun m!3569577 () Bool)

(assert (=> b!3267902 m!3569577))

(check-sat b_and!221247 (not b!3267910) (not b!3267880) (not b_next!87251) (not b!3267885) (not b!3267912) (not b!3267895) (not start!305778) (not b!3267888) b_and!221245 (not b!3267887) (not b!3267915) (not b!3267898) (not b!3267916) (not b!3267889) (not b_next!87245) (not b!3267908) b_and!221239 (not b!3267884) (not b_next!87241) (not b_next!87247) (not b!3267892) (not b!3267902) (not b!3267897) (not b!3267905) (not b!3267893) (not b!3267914) (not b_next!87249) (not b!3267883) (not b!3267909) (not b_next!87243) b_and!221241 b_and!221249 (not b!3267882) (not b!3267894) b_and!221243 (not b!3267881) (not b!3267904) (not b!3267906) (not b!3267903))
(check-sat b_and!221247 (not b_next!87245) b_and!221239 (not b_next!87251) (not b_next!87249) b_and!221245 b_and!221243 (not b_next!87241) (not b_next!87247) (not b_next!87243) b_and!221241 b_and!221249)
(get-model)

(declare-fun d!905795 () Bool)

(assert (=> d!905795 (= (inv!49365 (tag!5824 (h!41865 rules!2135))) (= (mod (str.len (value!171053 (tag!5824 (h!41865 rules!2135)))) 2) 0))))

(assert (=> b!3267905 d!905795))

(declare-fun d!905797 () Bool)

(declare-fun res!1328058 () Bool)

(declare-fun e!2035213 () Bool)

(assert (=> d!905797 (=> (not res!1328058) (not e!2035213))))

(declare-fun semiInverseModEq!2181 (Int Int) Bool)

(assert (=> d!905797 (= res!1328058 (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (h!41865 rules!2135)))))))

(assert (=> d!905797 (= (inv!49369 (transformation!5284 (h!41865 rules!2135))) e!2035213)))

(declare-fun b!3267933 () Bool)

(declare-fun equivClasses!2080 (Int Int) Bool)

(assert (=> b!3267933 (= e!2035213 (equivClasses!2080 (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (h!41865 rules!2135)))))))

(assert (= (and d!905797 res!1328058) b!3267933))

(declare-fun m!3569595 () Bool)

(assert (=> d!905797 m!3569595))

(declare-fun m!3569597 () Bool)

(assert (=> b!3267933 m!3569597))

(assert (=> b!3267905 d!905797))

(declare-fun b!3267992 () Bool)

(declare-fun e!2035248 () Bool)

(assert (=> b!3267992 (= e!2035248 (= (head!7113 lt!1108158) (c!551638 (regex!5284 lt!1108157))))))

(declare-fun b!3267993 () Bool)

(declare-fun e!2035250 () Bool)

(assert (=> b!3267993 (= e!2035250 (not (= (head!7113 lt!1108158) (c!551638 (regex!5284 lt!1108157)))))))

(declare-fun b!3267994 () Bool)

(declare-fun res!1328087 () Bool)

(assert (=> b!3267994 (=> (not res!1328087) (not e!2035248))))

(declare-fun tail!5250 (List!36567) List!36567)

(assert (=> b!3267994 (= res!1328087 (isEmpty!20562 (tail!5250 lt!1108158)))))

(declare-fun b!3267995 () Bool)

(declare-fun e!2035254 () Bool)

(declare-fun lt!1108176 () Bool)

(declare-fun call!236809 () Bool)

(assert (=> b!3267995 (= e!2035254 (= lt!1108176 call!236809))))

(declare-fun b!3267996 () Bool)

(declare-fun e!2035249 () Bool)

(declare-fun derivativeStep!2964 (Regex!10043 C!20272) Regex!10043)

(assert (=> b!3267996 (= e!2035249 (matchR!4665 (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158)) (tail!5250 lt!1108158)))))

(declare-fun b!3267997 () Bool)

(declare-fun res!1328088 () Bool)

(assert (=> b!3267997 (=> (not res!1328088) (not e!2035248))))

(assert (=> b!3267997 (= res!1328088 (not call!236809))))

(declare-fun b!3267998 () Bool)

(declare-fun nullable!3411 (Regex!10043) Bool)

(assert (=> b!3267998 (= e!2035249 (nullable!3411 (regex!5284 lt!1108157)))))

(declare-fun b!3267999 () Bool)

(declare-fun e!2035251 () Bool)

(assert (=> b!3267999 (= e!2035251 e!2035250)))

(declare-fun res!1328092 () Bool)

(assert (=> b!3267999 (=> res!1328092 e!2035250)))

(assert (=> b!3267999 (= res!1328092 call!236809)))

(declare-fun b!3268001 () Bool)

(declare-fun e!2035252 () Bool)

(assert (=> b!3268001 (= e!2035252 (not lt!1108176))))

(declare-fun bm!236804 () Bool)

(assert (=> bm!236804 (= call!236809 (isEmpty!20562 lt!1108158))))

(declare-fun b!3268002 () Bool)

(declare-fun res!1328086 () Bool)

(assert (=> b!3268002 (=> res!1328086 e!2035250)))

(assert (=> b!3268002 (= res!1328086 (not (isEmpty!20562 (tail!5250 lt!1108158))))))

(declare-fun b!3268003 () Bool)

(declare-fun res!1328093 () Bool)

(declare-fun e!2035253 () Bool)

(assert (=> b!3268003 (=> res!1328093 e!2035253)))

(assert (=> b!3268003 (= res!1328093 e!2035248)))

(declare-fun res!1328090 () Bool)

(assert (=> b!3268003 (=> (not res!1328090) (not e!2035248))))

(assert (=> b!3268003 (= res!1328090 lt!1108176)))

(declare-fun d!905801 () Bool)

(assert (=> d!905801 e!2035254))

(declare-fun c!551658 () Bool)

(assert (=> d!905801 (= c!551658 ((_ is EmptyExpr!10043) (regex!5284 lt!1108157)))))

(assert (=> d!905801 (= lt!1108176 e!2035249)))

(declare-fun c!551657 () Bool)

(assert (=> d!905801 (= c!551657 (isEmpty!20562 lt!1108158))))

(declare-fun validRegex!4567 (Regex!10043) Bool)

(assert (=> d!905801 (validRegex!4567 (regex!5284 lt!1108157))))

(assert (=> d!905801 (= (matchR!4665 (regex!5284 lt!1108157) lt!1108158) lt!1108176)))

(declare-fun b!3268000 () Bool)

(assert (=> b!3268000 (= e!2035253 e!2035251)))

(declare-fun res!1328091 () Bool)

(assert (=> b!3268000 (=> (not res!1328091) (not e!2035251))))

(assert (=> b!3268000 (= res!1328091 (not lt!1108176))))

(declare-fun b!3268004 () Bool)

(declare-fun res!1328089 () Bool)

(assert (=> b!3268004 (=> res!1328089 e!2035253)))

(assert (=> b!3268004 (= res!1328089 (not ((_ is ElementMatch!10043) (regex!5284 lt!1108157))))))

(assert (=> b!3268004 (= e!2035252 e!2035253)))

(declare-fun b!3268005 () Bool)

(assert (=> b!3268005 (= e!2035254 e!2035252)))

(declare-fun c!551656 () Bool)

(assert (=> b!3268005 (= c!551656 ((_ is EmptyLang!10043) (regex!5284 lt!1108157)))))

(assert (= (and d!905801 c!551657) b!3267998))

(assert (= (and d!905801 (not c!551657)) b!3267996))

(assert (= (and d!905801 c!551658) b!3267995))

(assert (= (and d!905801 (not c!551658)) b!3268005))

(assert (= (and b!3268005 c!551656) b!3268001))

(assert (= (and b!3268005 (not c!551656)) b!3268004))

(assert (= (and b!3268004 (not res!1328089)) b!3268003))

(assert (= (and b!3268003 res!1328090) b!3267997))

(assert (= (and b!3267997 res!1328088) b!3267994))

(assert (= (and b!3267994 res!1328087) b!3267992))

(assert (= (and b!3268003 (not res!1328093)) b!3268000))

(assert (= (and b!3268000 res!1328091) b!3267999))

(assert (= (and b!3267999 (not res!1328092)) b!3268002))

(assert (= (and b!3268002 (not res!1328086)) b!3267993))

(assert (= (or b!3267995 b!3267997 b!3267999) bm!236804))

(declare-fun m!3569633 () Bool)

(assert (=> bm!236804 m!3569633))

(declare-fun m!3569635 () Bool)

(assert (=> b!3267992 m!3569635))

(assert (=> b!3267993 m!3569635))

(declare-fun m!3569637 () Bool)

(assert (=> b!3268002 m!3569637))

(assert (=> b!3268002 m!3569637))

(declare-fun m!3569639 () Bool)

(assert (=> b!3268002 m!3569639))

(assert (=> d!905801 m!3569633))

(declare-fun m!3569641 () Bool)

(assert (=> d!905801 m!3569641))

(assert (=> b!3267994 m!3569637))

(assert (=> b!3267994 m!3569637))

(assert (=> b!3267994 m!3569639))

(declare-fun m!3569643 () Bool)

(assert (=> b!3267998 m!3569643))

(assert (=> b!3267996 m!3569635))

(assert (=> b!3267996 m!3569635))

(declare-fun m!3569645 () Bool)

(assert (=> b!3267996 m!3569645))

(assert (=> b!3267996 m!3569637))

(assert (=> b!3267996 m!3569645))

(assert (=> b!3267996 m!3569637))

(declare-fun m!3569647 () Bool)

(assert (=> b!3267996 m!3569647))

(assert (=> b!3267904 d!905801))

(declare-fun d!905815 () Bool)

(assert (=> d!905815 (= (get!11623 lt!1108140) (v!35953 lt!1108140))))

(assert (=> b!3267904 d!905815))

(declare-fun d!905817 () Bool)

(declare-fun dynLambda!14876 (Int Token!9934) Bool)

(assert (=> d!905817 (dynLambda!14876 lambda!118615 (h!41864 tokens!494))))

(declare-fun lt!1108188 () Unit!51218)

(declare-fun choose!19012 (List!36568 Int Token!9934) Unit!51218)

(assert (=> d!905817 (= lt!1108188 (choose!19012 tokens!494 lambda!118615 (h!41864 tokens!494)))))

(declare-fun e!2035266 () Bool)

(assert (=> d!905817 e!2035266))

(declare-fun res!1328099 () Bool)

(assert (=> d!905817 (=> (not res!1328099) (not e!2035266))))

(assert (=> d!905817 (= res!1328099 (forall!7522 tokens!494 lambda!118615))))

(assert (=> d!905817 (= (forallContained!1245 tokens!494 lambda!118615 (h!41864 tokens!494)) lt!1108188)))

(declare-fun b!3268023 () Bool)

(declare-fun contains!6569 (List!36568 Token!9934) Bool)

(assert (=> b!3268023 (= e!2035266 (contains!6569 tokens!494 (h!41864 tokens!494)))))

(assert (= (and d!905817 res!1328099) b!3268023))

(declare-fun b_lambda!90477 () Bool)

(assert (=> (not b_lambda!90477) (not d!905817)))

(declare-fun m!3569661 () Bool)

(assert (=> d!905817 m!3569661))

(declare-fun m!3569663 () Bool)

(assert (=> d!905817 m!3569663))

(assert (=> d!905817 m!3569505))

(declare-fun m!3569665 () Bool)

(assert (=> b!3268023 m!3569665))

(assert (=> b!3267885 d!905817))

(declare-fun d!905821 () Bool)

(declare-fun res!1328104 () Bool)

(declare-fun e!2035269 () Bool)

(assert (=> d!905821 (=> (not res!1328104) (not e!2035269))))

(assert (=> d!905821 (= res!1328104 (not (isEmpty!20562 (originalCharacters!5998 (h!41864 tokens!494)))))))

(assert (=> d!905821 (= (inv!49368 (h!41864 tokens!494)) e!2035269)))

(declare-fun b!3268028 () Bool)

(declare-fun res!1328105 () Bool)

(assert (=> b!3268028 (=> (not res!1328105) (not e!2035269))))

(declare-fun dynLambda!14877 (Int TokenValue!5514) BalanceConc!21500)

(assert (=> b!3268028 (= res!1328105 (= (originalCharacters!5998 (h!41864 tokens!494)) (list!13032 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))))))

(declare-fun b!3268029 () Bool)

(assert (=> b!3268029 (= e!2035269 (= (size!27502 (h!41864 tokens!494)) (size!27503 (originalCharacters!5998 (h!41864 tokens!494)))))))

(assert (= (and d!905821 res!1328104) b!3268028))

(assert (= (and b!3268028 res!1328105) b!3268029))

(declare-fun b_lambda!90479 () Bool)

(assert (=> (not b_lambda!90479) (not b!3268028)))

(declare-fun t!247348 () Bool)

(declare-fun tb!165557 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247348) tb!165557))

(declare-fun b!3268034 () Bool)

(declare-fun e!2035272 () Bool)

(declare-fun tp!1027000 () Bool)

(declare-fun inv!49372 (Conc!10943) Bool)

(assert (=> b!3268034 (= e!2035272 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))) tp!1027000))))

(declare-fun result!208228 () Bool)

(declare-fun inv!49373 (BalanceConc!21500) Bool)

(assert (=> tb!165557 (= result!208228 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))) e!2035272))))

(assert (= tb!165557 b!3268034))

(declare-fun m!3569667 () Bool)

(assert (=> b!3268034 m!3569667))

(declare-fun m!3569669 () Bool)

(assert (=> tb!165557 m!3569669))

(assert (=> b!3268028 t!247348))

(declare-fun b_and!221257 () Bool)

(assert (= b_and!221241 (and (=> t!247348 result!208228) b_and!221257)))

(declare-fun t!247350 () Bool)

(declare-fun tb!165559 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247350) tb!165559))

(declare-fun result!208232 () Bool)

(assert (= result!208232 result!208228))

(assert (=> b!3268028 t!247350))

(declare-fun b_and!221259 () Bool)

(assert (= b_and!221245 (and (=> t!247350 result!208232) b_and!221259)))

(declare-fun tb!165561 () Bool)

(declare-fun t!247352 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247352) tb!165561))

(declare-fun result!208234 () Bool)

(assert (= result!208234 result!208228))

(assert (=> b!3268028 t!247352))

(declare-fun b_and!221261 () Bool)

(assert (= b_and!221249 (and (=> t!247352 result!208234) b_and!221261)))

(declare-fun m!3569671 () Bool)

(assert (=> d!905821 m!3569671))

(declare-fun m!3569673 () Bool)

(assert (=> b!3268028 m!3569673))

(assert (=> b!3268028 m!3569673))

(declare-fun m!3569675 () Bool)

(assert (=> b!3268028 m!3569675))

(declare-fun m!3569677 () Bool)

(assert (=> b!3268029 m!3569677))

(assert (=> b!3267906 d!905821))

(declare-fun b!3268052 () Bool)

(declare-fun e!2035283 () List!36567)

(declare-fun call!236820 () List!36567)

(assert (=> b!3268052 (= e!2035283 call!236820)))

(declare-fun b!3268053 () Bool)

(declare-fun e!2035281 () List!36567)

(assert (=> b!3268053 (= e!2035281 e!2035283)))

(declare-fun c!551673 () Bool)

(assert (=> b!3268053 (= c!551673 ((_ is Union!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3268054 () Bool)

(declare-fun e!2035284 () List!36567)

(declare-fun e!2035282 () List!36567)

(assert (=> b!3268054 (= e!2035284 e!2035282)))

(declare-fun c!551675 () Bool)

(assert (=> b!3268054 (= c!551675 ((_ is ElementMatch!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3268055 () Bool)

(assert (=> b!3268055 (= e!2035282 (Cons!36443 (c!551638 (regex!5284 (rule!7766 (h!41864 tokens!494)))) Nil!36443))))

(declare-fun b!3268056 () Bool)

(assert (=> b!3268056 (= e!2035284 Nil!36443)))

(declare-fun bm!236813 () Bool)

(declare-fun call!236819 () List!36567)

(assert (=> bm!236813 (= call!236819 (usedCharacters!586 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun b!3268057 () Bool)

(assert (=> b!3268057 (= e!2035283 call!236820)))

(declare-fun b!3268051 () Bool)

(declare-fun c!551676 () Bool)

(assert (=> b!3268051 (= c!551676 ((_ is Star!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(assert (=> b!3268051 (= e!2035282 e!2035281)))

(declare-fun d!905823 () Bool)

(declare-fun c!551674 () Bool)

(assert (=> d!905823 (= c!551674 (or ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))) ((_ is EmptyLang!10043) (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> d!905823 (= (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))) e!2035284)))

(declare-fun bm!236814 () Bool)

(declare-fun call!236821 () List!36567)

(declare-fun call!236818 () List!36567)

(assert (=> bm!236814 (= call!236821 call!236818)))

(declare-fun bm!236815 () Bool)

(assert (=> bm!236815 (= call!236820 (++!8798 (ite c!551673 call!236819 call!236821) (ite c!551673 call!236821 call!236819)))))

(declare-fun bm!236816 () Bool)

(assert (=> bm!236816 (= call!236818 (usedCharacters!586 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))

(declare-fun b!3268058 () Bool)

(assert (=> b!3268058 (= e!2035281 call!236818)))

(assert (= (and d!905823 c!551674) b!3268056))

(assert (= (and d!905823 (not c!551674)) b!3268054))

(assert (= (and b!3268054 c!551675) b!3268055))

(assert (= (and b!3268054 (not c!551675)) b!3268051))

(assert (= (and b!3268051 c!551676) b!3268058))

(assert (= (and b!3268051 (not c!551676)) b!3268053))

(assert (= (and b!3268053 c!551673) b!3268057))

(assert (= (and b!3268053 (not c!551673)) b!3268052))

(assert (= (or b!3268057 b!3268052) bm!236814))

(assert (= (or b!3268057 b!3268052) bm!236813))

(assert (= (or b!3268057 b!3268052) bm!236815))

(assert (= (or b!3268058 bm!236814) bm!236816))

(declare-fun m!3569679 () Bool)

(assert (=> bm!236813 m!3569679))

(declare-fun m!3569681 () Bool)

(assert (=> bm!236815 m!3569681))

(declare-fun m!3569683 () Bool)

(assert (=> bm!236816 m!3569683))

(assert (=> b!3267884 d!905823))

(declare-fun d!905825 () Bool)

(assert (=> d!905825 (= (maxPrefix!2501 thiss!18206 rules!2135 (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142)) (Some!7256 (tuple2!35919 (h!41864 tokens!494) lt!1108142)))))

(declare-fun lt!1108191 () Unit!51218)

(declare-fun choose!19013 (LexerInterface!4873 List!36569 Token!9934 Rule!10368 List!36567 Rule!10368) Unit!51218)

(assert (=> d!905825 (= lt!1108191 (choose!19013 thiss!18206 rules!2135 (h!41864 tokens!494) (rule!7766 (h!41864 tokens!494)) lt!1108142 (rule!7766 separatorToken!241)))))

(assert (=> d!905825 (not (isEmpty!20560 rules!2135))))

(assert (=> d!905825 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!190 thiss!18206 rules!2135 (h!41864 tokens!494) (rule!7766 (h!41864 tokens!494)) lt!1108142 (rule!7766 separatorToken!241)) lt!1108191)))

(declare-fun bs!545963 () Bool)

(assert (= bs!545963 d!905825))

(assert (=> bs!545963 m!3569453))

(assert (=> bs!545963 m!3569435))

(assert (=> bs!545963 m!3569437))

(assert (=> bs!545963 m!3569435))

(assert (=> bs!545963 m!3569437))

(declare-fun m!3569685 () Bool)

(assert (=> bs!545963 m!3569685))

(assert (=> bs!545963 m!3569685))

(declare-fun m!3569687 () Bool)

(assert (=> bs!545963 m!3569687))

(declare-fun m!3569689 () Bool)

(assert (=> bs!545963 m!3569689))

(assert (=> b!3267884 d!905825))

(declare-fun b!3268089 () Bool)

(declare-fun e!2035305 () Bool)

(declare-fun lt!1108212 () tuple2!35916)

(assert (=> b!3268089 (= e!2035305 (= (_2!21092 lt!1108212) lt!1108162))))

(declare-fun b!3268090 () Bool)

(declare-fun e!2035306 () Bool)

(assert (=> b!3268090 (= e!2035306 (not (isEmpty!20561 (_1!21092 lt!1108212))))))

(declare-fun b!3268091 () Bool)

(assert (=> b!3268091 (= e!2035305 e!2035306)))

(declare-fun res!1328118 () Bool)

(assert (=> b!3268091 (= res!1328118 (< (size!27503 (_2!21092 lt!1108212)) (size!27503 lt!1108162)))))

(assert (=> b!3268091 (=> (not res!1328118) (not e!2035306))))

(declare-fun d!905827 () Bool)

(assert (=> d!905827 e!2035305))

(declare-fun c!551685 () Bool)

(declare-fun size!27506 (List!36568) Int)

(assert (=> d!905827 (= c!551685 (> (size!27506 (_1!21092 lt!1108212)) 0))))

(declare-fun e!2035307 () tuple2!35916)

(assert (=> d!905827 (= lt!1108212 e!2035307)))

(declare-fun c!551686 () Bool)

(declare-fun lt!1108211 () Option!7257)

(assert (=> d!905827 (= c!551686 ((_ is Some!7256) lt!1108211))))

(assert (=> d!905827 (= lt!1108211 (maxPrefix!2501 thiss!18206 rules!2135 lt!1108162))))

(assert (=> d!905827 (= (lexList!1347 thiss!18206 rules!2135 lt!1108162) lt!1108212)))

(declare-fun b!3268092 () Bool)

(assert (=> b!3268092 (= e!2035307 (tuple2!35917 Nil!36444 lt!1108162))))

(declare-fun b!3268093 () Bool)

(declare-fun lt!1108210 () tuple2!35916)

(assert (=> b!3268093 (= e!2035307 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1108211)) (_1!21092 lt!1108210)) (_2!21092 lt!1108210)))))

(assert (=> b!3268093 (= lt!1108210 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108211))))))

(assert (= (and d!905827 c!551686) b!3268093))

(assert (= (and d!905827 (not c!551686)) b!3268092))

(assert (= (and d!905827 c!551685) b!3268091))

(assert (= (and d!905827 (not c!551685)) b!3268089))

(assert (= (and b!3268091 res!1328118) b!3268090))

(declare-fun m!3569713 () Bool)

(assert (=> b!3268090 m!3569713))

(declare-fun m!3569717 () Bool)

(assert (=> b!3268091 m!3569717))

(declare-fun m!3569721 () Bool)

(assert (=> b!3268091 m!3569721))

(declare-fun m!3569723 () Bool)

(assert (=> d!905827 m!3569723))

(assert (=> d!905827 m!3569475))

(declare-fun m!3569725 () Bool)

(assert (=> b!3268093 m!3569725))

(assert (=> b!3267884 d!905827))

(declare-fun b!3268166 () Bool)

(declare-fun e!2035346 () Bool)

(declare-fun lt!1108241 () Option!7257)

(declare-fun contains!6570 (List!36569 Rule!10368) Bool)

(declare-fun get!11625 (Option!7257) tuple2!35918)

(assert (=> b!3268166 (= e!2035346 (contains!6570 rules!2135 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))))

(declare-fun b!3268167 () Bool)

(declare-fun res!1328146 () Bool)

(assert (=> b!3268167 (=> (not res!1328146) (not e!2035346))))

(assert (=> b!3268167 (= res!1328146 (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))))))

(declare-fun b!3268168 () Bool)

(declare-fun res!1328144 () Bool)

(assert (=> b!3268168 (=> (not res!1328144) (not e!2035346))))

(assert (=> b!3268168 (= res!1328144 (= (value!171054 (_1!21093 (get!11625 lt!1108241))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241)))))))))

(declare-fun b!3268169 () Bool)

(declare-fun res!1328148 () Bool)

(assert (=> b!3268169 (=> (not res!1328148) (not e!2035346))))

(assert (=> b!3268169 (= res!1328148 (< (size!27503 (_2!21093 (get!11625 lt!1108241))) (size!27503 lt!1108146)))))

(declare-fun b!3268170 () Bool)

(declare-fun e!2035348 () Option!7257)

(declare-fun lt!1108242 () Option!7257)

(declare-fun lt!1108244 () Option!7257)

(assert (=> b!3268170 (= e!2035348 (ite (and ((_ is None!7256) lt!1108242) ((_ is None!7256) lt!1108244)) None!7256 (ite ((_ is None!7256) lt!1108244) lt!1108242 (ite ((_ is None!7256) lt!1108242) lt!1108244 (ite (>= (size!27502 (_1!21093 (v!35952 lt!1108242))) (size!27502 (_1!21093 (v!35952 lt!1108244)))) lt!1108242 lt!1108244)))))))

(declare-fun call!236836 () Option!7257)

(assert (=> b!3268170 (= lt!1108242 call!236836)))

(assert (=> b!3268170 (= lt!1108244 (maxPrefix!2501 thiss!18206 (t!247340 rules!2135) lt!1108146))))

(declare-fun bm!236831 () Bool)

(assert (=> bm!236831 (= call!236836 (maxPrefixOneRule!1638 thiss!18206 (h!41865 rules!2135) lt!1108146))))

(declare-fun b!3268171 () Bool)

(declare-fun res!1328149 () Bool)

(assert (=> b!3268171 (=> (not res!1328149) (not e!2035346))))

(assert (=> b!3268171 (= res!1328149 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))) (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241)))))))

(declare-fun b!3268172 () Bool)

(assert (=> b!3268172 (= e!2035348 call!236836)))

(declare-fun b!3268173 () Bool)

(declare-fun res!1328145 () Bool)

(assert (=> b!3268173 (=> (not res!1328145) (not e!2035346))))

(assert (=> b!3268173 (= res!1328145 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))) (_2!21093 (get!11625 lt!1108241))) lt!1108146))))

(declare-fun b!3268174 () Bool)

(declare-fun e!2035347 () Bool)

(assert (=> b!3268174 (= e!2035347 e!2035346)))

(declare-fun res!1328147 () Bool)

(assert (=> b!3268174 (=> (not res!1328147) (not e!2035346))))

(declare-fun isDefined!5625 (Option!7257) Bool)

(assert (=> b!3268174 (= res!1328147 (isDefined!5625 lt!1108241))))

(declare-fun d!905837 () Bool)

(assert (=> d!905837 e!2035347))

(declare-fun res!1328143 () Bool)

(assert (=> d!905837 (=> res!1328143 e!2035347)))

(declare-fun isEmpty!20566 (Option!7257) Bool)

(assert (=> d!905837 (= res!1328143 (isEmpty!20566 lt!1108241))))

(assert (=> d!905837 (= lt!1108241 e!2035348)))

(declare-fun c!551711 () Bool)

(assert (=> d!905837 (= c!551711 (and ((_ is Cons!36445) rules!2135) ((_ is Nil!36445) (t!247340 rules!2135))))))

(declare-fun lt!1108245 () Unit!51218)

(declare-fun lt!1108243 () Unit!51218)

(assert (=> d!905837 (= lt!1108245 lt!1108243)))

(declare-fun isPrefix!2799 (List!36567 List!36567) Bool)

(assert (=> d!905837 (isPrefix!2799 lt!1108146 lt!1108146)))

(declare-fun lemmaIsPrefixRefl!1758 (List!36567 List!36567) Unit!51218)

(assert (=> d!905837 (= lt!1108243 (lemmaIsPrefixRefl!1758 lt!1108146 lt!1108146))))

(declare-fun rulesValidInductive!1798 (LexerInterface!4873 List!36569) Bool)

(assert (=> d!905837 (rulesValidInductive!1798 thiss!18206 rules!2135)))

(assert (=> d!905837 (= (maxPrefix!2501 thiss!18206 rules!2135 lt!1108146) lt!1108241)))

(assert (= (and d!905837 c!551711) b!3268172))

(assert (= (and d!905837 (not c!551711)) b!3268170))

(assert (= (or b!3268172 b!3268170) bm!236831))

(assert (= (and d!905837 (not res!1328143)) b!3268174))

(assert (= (and b!3268174 res!1328147) b!3268171))

(assert (= (and b!3268171 res!1328149) b!3268169))

(assert (= (and b!3268169 res!1328148) b!3268173))

(assert (= (and b!3268173 res!1328145) b!3268168))

(assert (= (and b!3268168 res!1328144) b!3268167))

(assert (= (and b!3268167 res!1328146) b!3268166))

(declare-fun m!3569759 () Bool)

(assert (=> b!3268170 m!3569759))

(declare-fun m!3569761 () Bool)

(assert (=> b!3268166 m!3569761))

(declare-fun m!3569763 () Bool)

(assert (=> b!3268166 m!3569763))

(declare-fun m!3569765 () Bool)

(assert (=> b!3268174 m!3569765))

(assert (=> b!3268173 m!3569761))

(declare-fun m!3569767 () Bool)

(assert (=> b!3268173 m!3569767))

(assert (=> b!3268173 m!3569767))

(declare-fun m!3569769 () Bool)

(assert (=> b!3268173 m!3569769))

(assert (=> b!3268173 m!3569769))

(declare-fun m!3569771 () Bool)

(assert (=> b!3268173 m!3569771))

(declare-fun m!3569773 () Bool)

(assert (=> d!905837 m!3569773))

(declare-fun m!3569775 () Bool)

(assert (=> d!905837 m!3569775))

(declare-fun m!3569777 () Bool)

(assert (=> d!905837 m!3569777))

(declare-fun m!3569779 () Bool)

(assert (=> d!905837 m!3569779))

(assert (=> b!3268168 m!3569761))

(declare-fun m!3569781 () Bool)

(assert (=> b!3268168 m!3569781))

(assert (=> b!3268168 m!3569781))

(declare-fun m!3569783 () Bool)

(assert (=> b!3268168 m!3569783))

(declare-fun m!3569785 () Bool)

(assert (=> bm!236831 m!3569785))

(assert (=> b!3268169 m!3569761))

(declare-fun m!3569787 () Bool)

(assert (=> b!3268169 m!3569787))

(declare-fun m!3569789 () Bool)

(assert (=> b!3268169 m!3569789))

(assert (=> b!3268167 m!3569761))

(assert (=> b!3268167 m!3569767))

(assert (=> b!3268167 m!3569767))

(assert (=> b!3268167 m!3569769))

(assert (=> b!3268167 m!3569769))

(declare-fun m!3569791 () Bool)

(assert (=> b!3268167 m!3569791))

(assert (=> b!3268171 m!3569761))

(assert (=> b!3268171 m!3569767))

(assert (=> b!3268171 m!3569767))

(assert (=> b!3268171 m!3569769))

(assert (=> b!3267884 d!905837))

(declare-fun d!905851 () Bool)

(assert (=> d!905851 (not (contains!6567 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108139))))

(declare-fun lt!1108248 () Unit!51218)

(declare-fun choose!19016 (LexerInterface!4873 List!36569 List!36569 Rule!10368 Rule!10368 C!20272) Unit!51218)

(assert (=> d!905851 (= lt!1108248 (choose!19016 thiss!18206 rules!2135 rules!2135 (rule!7766 (h!41864 tokens!494)) (rule!7766 separatorToken!241) lt!1108139))))

(assert (=> d!905851 (rulesInvariant!4270 thiss!18206 rules!2135)))

(assert (=> d!905851 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!190 thiss!18206 rules!2135 rules!2135 (rule!7766 (h!41864 tokens!494)) (rule!7766 separatorToken!241) lt!1108139) lt!1108248)))

(declare-fun bs!545966 () Bool)

(assert (= bs!545966 d!905851))

(assert (=> bs!545966 m!3569481))

(assert (=> bs!545966 m!3569481))

(assert (=> bs!545966 m!3569485))

(declare-fun m!3569793 () Bool)

(assert (=> bs!545966 m!3569793))

(assert (=> bs!545966 m!3569503))

(assert (=> b!3267884 d!905851))

(declare-fun b!3268175 () Bool)

(declare-fun e!2035349 () Bool)

(declare-fun lt!1108249 () Option!7257)

(assert (=> b!3268175 (= e!2035349 (contains!6570 rules!2135 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))))

(declare-fun b!3268176 () Bool)

(declare-fun res!1328153 () Bool)

(assert (=> b!3268176 (=> (not res!1328153) (not e!2035349))))

(assert (=> b!3268176 (= res!1328153 (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))))))

(declare-fun b!3268177 () Bool)

(declare-fun res!1328151 () Bool)

(assert (=> b!3268177 (=> (not res!1328151) (not e!2035349))))

(assert (=> b!3268177 (= res!1328151 (= (value!171054 (_1!21093 (get!11625 lt!1108249))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249)))))))))

(declare-fun b!3268178 () Bool)

(declare-fun res!1328155 () Bool)

(assert (=> b!3268178 (=> (not res!1328155) (not e!2035349))))

(assert (=> b!3268178 (= res!1328155 (< (size!27503 (_2!21093 (get!11625 lt!1108249))) (size!27503 lt!1108162)))))

(declare-fun b!3268179 () Bool)

(declare-fun e!2035351 () Option!7257)

(declare-fun lt!1108250 () Option!7257)

(declare-fun lt!1108252 () Option!7257)

(assert (=> b!3268179 (= e!2035351 (ite (and ((_ is None!7256) lt!1108250) ((_ is None!7256) lt!1108252)) None!7256 (ite ((_ is None!7256) lt!1108252) lt!1108250 (ite ((_ is None!7256) lt!1108250) lt!1108252 (ite (>= (size!27502 (_1!21093 (v!35952 lt!1108250))) (size!27502 (_1!21093 (v!35952 lt!1108252)))) lt!1108250 lt!1108252)))))))

(declare-fun call!236837 () Option!7257)

(assert (=> b!3268179 (= lt!1108250 call!236837)))

(assert (=> b!3268179 (= lt!1108252 (maxPrefix!2501 thiss!18206 (t!247340 rules!2135) lt!1108162))))

(declare-fun bm!236832 () Bool)

(assert (=> bm!236832 (= call!236837 (maxPrefixOneRule!1638 thiss!18206 (h!41865 rules!2135) lt!1108162))))

(declare-fun b!3268180 () Bool)

(declare-fun res!1328156 () Bool)

(assert (=> b!3268180 (=> (not res!1328156) (not e!2035349))))

(assert (=> b!3268180 (= res!1328156 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))) (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249)))))))

(declare-fun b!3268181 () Bool)

(assert (=> b!3268181 (= e!2035351 call!236837)))

(declare-fun b!3268182 () Bool)

(declare-fun res!1328152 () Bool)

(assert (=> b!3268182 (=> (not res!1328152) (not e!2035349))))

(assert (=> b!3268182 (= res!1328152 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))) (_2!21093 (get!11625 lt!1108249))) lt!1108162))))

(declare-fun b!3268183 () Bool)

(declare-fun e!2035350 () Bool)

(assert (=> b!3268183 (= e!2035350 e!2035349)))

(declare-fun res!1328154 () Bool)

(assert (=> b!3268183 (=> (not res!1328154) (not e!2035349))))

(assert (=> b!3268183 (= res!1328154 (isDefined!5625 lt!1108249))))

(declare-fun d!905853 () Bool)

(assert (=> d!905853 e!2035350))

(declare-fun res!1328150 () Bool)

(assert (=> d!905853 (=> res!1328150 e!2035350)))

(assert (=> d!905853 (= res!1328150 (isEmpty!20566 lt!1108249))))

(assert (=> d!905853 (= lt!1108249 e!2035351)))

(declare-fun c!551713 () Bool)

(assert (=> d!905853 (= c!551713 (and ((_ is Cons!36445) rules!2135) ((_ is Nil!36445) (t!247340 rules!2135))))))

(declare-fun lt!1108253 () Unit!51218)

(declare-fun lt!1108251 () Unit!51218)

(assert (=> d!905853 (= lt!1108253 lt!1108251)))

(assert (=> d!905853 (isPrefix!2799 lt!1108162 lt!1108162)))

(assert (=> d!905853 (= lt!1108251 (lemmaIsPrefixRefl!1758 lt!1108162 lt!1108162))))

(assert (=> d!905853 (rulesValidInductive!1798 thiss!18206 rules!2135)))

(assert (=> d!905853 (= (maxPrefix!2501 thiss!18206 rules!2135 lt!1108162) lt!1108249)))

(assert (= (and d!905853 c!551713) b!3268181))

(assert (= (and d!905853 (not c!551713)) b!3268179))

(assert (= (or b!3268181 b!3268179) bm!236832))

(assert (= (and d!905853 (not res!1328150)) b!3268183))

(assert (= (and b!3268183 res!1328154) b!3268180))

(assert (= (and b!3268180 res!1328156) b!3268178))

(assert (= (and b!3268178 res!1328155) b!3268182))

(assert (= (and b!3268182 res!1328152) b!3268177))

(assert (= (and b!3268177 res!1328151) b!3268176))

(assert (= (and b!3268176 res!1328153) b!3268175))

(declare-fun m!3569795 () Bool)

(assert (=> b!3268179 m!3569795))

(declare-fun m!3569797 () Bool)

(assert (=> b!3268175 m!3569797))

(declare-fun m!3569799 () Bool)

(assert (=> b!3268175 m!3569799))

(declare-fun m!3569801 () Bool)

(assert (=> b!3268183 m!3569801))

(assert (=> b!3268182 m!3569797))

(declare-fun m!3569803 () Bool)

(assert (=> b!3268182 m!3569803))

(assert (=> b!3268182 m!3569803))

(declare-fun m!3569805 () Bool)

(assert (=> b!3268182 m!3569805))

(assert (=> b!3268182 m!3569805))

(declare-fun m!3569807 () Bool)

(assert (=> b!3268182 m!3569807))

(declare-fun m!3569809 () Bool)

(assert (=> d!905853 m!3569809))

(declare-fun m!3569811 () Bool)

(assert (=> d!905853 m!3569811))

(declare-fun m!3569813 () Bool)

(assert (=> d!905853 m!3569813))

(assert (=> d!905853 m!3569779))

(assert (=> b!3268177 m!3569797))

(declare-fun m!3569815 () Bool)

(assert (=> b!3268177 m!3569815))

(assert (=> b!3268177 m!3569815))

(declare-fun m!3569817 () Bool)

(assert (=> b!3268177 m!3569817))

(declare-fun m!3569819 () Bool)

(assert (=> bm!236832 m!3569819))

(assert (=> b!3268178 m!3569797))

(declare-fun m!3569821 () Bool)

(assert (=> b!3268178 m!3569821))

(assert (=> b!3268178 m!3569721))

(assert (=> b!3268176 m!3569797))

(assert (=> b!3268176 m!3569803))

(assert (=> b!3268176 m!3569803))

(assert (=> b!3268176 m!3569805))

(assert (=> b!3268176 m!3569805))

(declare-fun m!3569823 () Bool)

(assert (=> b!3268176 m!3569823))

(assert (=> b!3268180 m!3569797))

(assert (=> b!3268180 m!3569803))

(assert (=> b!3268180 m!3569803))

(assert (=> b!3268180 m!3569805))

(assert (=> b!3267884 d!905853))

(declare-fun d!905855 () Bool)

(declare-fun lt!1108256 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4944 (List!36567) (InoxSet C!20272))

(assert (=> d!905855 (= lt!1108256 (select (content!4944 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))) lt!1108139))))

(declare-fun e!2035357 () Bool)

(assert (=> d!905855 (= lt!1108256 e!2035357)))

(declare-fun res!1328162 () Bool)

(assert (=> d!905855 (=> (not res!1328162) (not e!2035357))))

(assert (=> d!905855 (= res!1328162 ((_ is Cons!36443) (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> d!905855 (= (contains!6567 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108139) lt!1108256)))

(declare-fun b!3268188 () Bool)

(declare-fun e!2035356 () Bool)

(assert (=> b!3268188 (= e!2035357 e!2035356)))

(declare-fun res!1328161 () Bool)

(assert (=> b!3268188 (=> res!1328161 e!2035356)))

(assert (=> b!3268188 (= res!1328161 (= (h!41863 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))) lt!1108139))))

(declare-fun b!3268189 () Bool)

(assert (=> b!3268189 (= e!2035356 (contains!6567 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))) lt!1108139))))

(assert (= (and d!905855 res!1328162) b!3268188))

(assert (= (and b!3268188 (not res!1328161)) b!3268189))

(assert (=> d!905855 m!3569481))

(declare-fun m!3569825 () Bool)

(assert (=> d!905855 m!3569825))

(declare-fun m!3569827 () Bool)

(assert (=> d!905855 m!3569827))

(declare-fun m!3569829 () Bool)

(assert (=> b!3268189 m!3569829))

(assert (=> b!3267884 d!905855))

(declare-fun d!905857 () Bool)

(declare-fun lt!1108281 () Bool)

(declare-fun e!2035376 () Bool)

(assert (=> d!905857 (= lt!1108281 e!2035376)))

(declare-fun res!1328194 () Bool)

(assert (=> d!905857 (=> (not res!1328194) (not e!2035376))))

(assert (=> d!905857 (= res!1328194 (= (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241))))) (list!13033 (singletonSeq!2380 separatorToken!241))))))

(declare-fun e!2035375 () Bool)

(assert (=> d!905857 (= lt!1108281 e!2035375)))

(declare-fun res!1328192 () Bool)

(assert (=> d!905857 (=> (not res!1328192) (not e!2035375))))

(declare-fun lt!1108280 () tuple2!35920)

(declare-fun size!27508 (BalanceConc!21502) Int)

(assert (=> d!905857 (= res!1328192 (= (size!27508 (_1!21094 lt!1108280)) 1))))

(assert (=> d!905857 (= lt!1108280 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241))))))

(assert (=> d!905857 (not (isEmpty!20560 rules!2135))))

(assert (=> d!905857 (= (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 separatorToken!241) lt!1108281)))

(declare-fun b!3268225 () Bool)

(declare-fun res!1328193 () Bool)

(assert (=> b!3268225 (=> (not res!1328193) (not e!2035375))))

(declare-fun apply!8350 (BalanceConc!21502 Int) Token!9934)

(assert (=> b!3268225 (= res!1328193 (= (apply!8350 (_1!21094 lt!1108280) 0) separatorToken!241))))

(declare-fun b!3268226 () Bool)

(declare-fun isEmpty!20568 (BalanceConc!21500) Bool)

(assert (=> b!3268226 (= e!2035375 (isEmpty!20568 (_2!21094 lt!1108280)))))

(declare-fun b!3268227 () Bool)

(assert (=> b!3268227 (= e!2035376 (isEmpty!20568 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241))))))))

(assert (= (and d!905857 res!1328192) b!3268225))

(assert (= (and b!3268225 res!1328193) b!3268226))

(assert (= (and d!905857 res!1328194) b!3268227))

(declare-fun m!3569889 () Bool)

(assert (=> d!905857 m!3569889))

(declare-fun m!3569891 () Bool)

(assert (=> d!905857 m!3569891))

(declare-fun m!3569893 () Bool)

(assert (=> d!905857 m!3569893))

(assert (=> d!905857 m!3569893))

(declare-fun m!3569895 () Bool)

(assert (=> d!905857 m!3569895))

(assert (=> d!905857 m!3569453))

(assert (=> d!905857 m!3569891))

(declare-fun m!3569897 () Bool)

(assert (=> d!905857 m!3569897))

(declare-fun m!3569899 () Bool)

(assert (=> d!905857 m!3569899))

(assert (=> d!905857 m!3569891))

(declare-fun m!3569901 () Bool)

(assert (=> b!3268225 m!3569901))

(declare-fun m!3569903 () Bool)

(assert (=> b!3268226 m!3569903))

(assert (=> b!3268227 m!3569891))

(assert (=> b!3268227 m!3569891))

(assert (=> b!3268227 m!3569893))

(assert (=> b!3268227 m!3569893))

(assert (=> b!3268227 m!3569895))

(declare-fun m!3569905 () Bool)

(assert (=> b!3268227 m!3569905))

(assert (=> b!3267909 d!905857))

(declare-fun d!905873 () Bool)

(declare-fun list!13035 (Conc!10943) List!36567)

(assert (=> d!905873 (= (list!13032 (charsOf!3300 (h!41864 tokens!494))) (list!13035 (c!551639 (charsOf!3300 (h!41864 tokens!494)))))))

(declare-fun bs!545970 () Bool)

(assert (= bs!545970 d!905873))

(declare-fun m!3569907 () Bool)

(assert (=> bs!545970 m!3569907))

(assert (=> b!3267887 d!905873))

(declare-fun d!905875 () Bool)

(declare-fun lt!1108284 () BalanceConc!21500)

(assert (=> d!905875 (= (list!13032 lt!1108284) (originalCharacters!5998 (h!41864 tokens!494)))))

(assert (=> d!905875 (= lt!1108284 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))))

(assert (=> d!905875 (= (charsOf!3300 (h!41864 tokens!494)) lt!1108284)))

(declare-fun b_lambda!90483 () Bool)

(assert (=> (not b_lambda!90483) (not d!905875)))

(assert (=> d!905875 t!247348))

(declare-fun b_and!221269 () Bool)

(assert (= b_and!221257 (and (=> t!247348 result!208228) b_and!221269)))

(assert (=> d!905875 t!247350))

(declare-fun b_and!221271 () Bool)

(assert (= b_and!221259 (and (=> t!247350 result!208232) b_and!221271)))

(assert (=> d!905875 t!247352))

(declare-fun b_and!221273 () Bool)

(assert (= b_and!221261 (and (=> t!247352 result!208234) b_and!221273)))

(declare-fun m!3569909 () Bool)

(assert (=> d!905875 m!3569909))

(assert (=> d!905875 m!3569673))

(assert (=> b!3267887 d!905875))

(declare-fun d!905877 () Bool)

(declare-fun res!1328199 () Bool)

(declare-fun e!2035381 () Bool)

(assert (=> d!905877 (=> res!1328199 e!2035381)))

(assert (=> d!905877 (= res!1328199 (not ((_ is Cons!36445) rules!2135)))))

(assert (=> d!905877 (= (sepAndNonSepRulesDisjointChars!1478 rules!2135 rules!2135) e!2035381)))

(declare-fun b!3268232 () Bool)

(declare-fun e!2035382 () Bool)

(assert (=> b!3268232 (= e!2035381 e!2035382)))

(declare-fun res!1328200 () Bool)

(assert (=> b!3268232 (=> (not res!1328200) (not e!2035382))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!617 (Rule!10368 List!36569) Bool)

(assert (=> b!3268232 (= res!1328200 (ruleDisjointCharsFromAllFromOtherType!617 (h!41865 rules!2135) rules!2135))))

(declare-fun b!3268233 () Bool)

(assert (=> b!3268233 (= e!2035382 (sepAndNonSepRulesDisjointChars!1478 rules!2135 (t!247340 rules!2135)))))

(assert (= (and d!905877 (not res!1328199)) b!3268232))

(assert (= (and b!3268232 res!1328200) b!3268233))

(declare-fun m!3569911 () Bool)

(assert (=> b!3268232 m!3569911))

(declare-fun m!3569913 () Bool)

(assert (=> b!3268233 m!3569913))

(assert (=> b!3267908 d!905877))

(declare-fun d!905879 () Bool)

(declare-fun res!1328203 () Bool)

(declare-fun e!2035385 () Bool)

(assert (=> d!905879 (=> (not res!1328203) (not e!2035385))))

(declare-fun rulesValid!1941 (LexerInterface!4873 List!36569) Bool)

(assert (=> d!905879 (= res!1328203 (rulesValid!1941 thiss!18206 rules!2135))))

(assert (=> d!905879 (= (rulesInvariant!4270 thiss!18206 rules!2135) e!2035385)))

(declare-fun b!3268236 () Bool)

(declare-datatypes ((List!36571 0))(
  ( (Nil!36447) (Cons!36447 (h!41867 String!40904) (t!247416 List!36571)) )
))
(declare-fun noDuplicateTag!1937 (LexerInterface!4873 List!36569 List!36571) Bool)

(assert (=> b!3268236 (= e!2035385 (noDuplicateTag!1937 thiss!18206 rules!2135 Nil!36447))))

(assert (= (and d!905879 res!1328203) b!3268236))

(declare-fun m!3569915 () Bool)

(assert (=> d!905879 m!3569915))

(declare-fun m!3569917 () Bool)

(assert (=> b!3268236 m!3569917))

(assert (=> b!3267889 d!905879))

(declare-fun lt!1108287 () Bool)

(declare-fun d!905881 () Bool)

(assert (=> d!905881 (= lt!1108287 (isEmpty!20561 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144)))))))

(declare-fun isEmpty!20569 (Conc!10944) Bool)

(assert (=> d!905881 (= lt!1108287 (isEmpty!20569 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144)))))))

(assert (=> d!905881 (= (isEmpty!20563 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144))) lt!1108287)))

(declare-fun bs!545971 () Bool)

(assert (= bs!545971 d!905881))

(declare-fun m!3569919 () Bool)

(assert (=> bs!545971 m!3569919))

(assert (=> bs!545971 m!3569919))

(declare-fun m!3569921 () Bool)

(assert (=> bs!545971 m!3569921))

(declare-fun m!3569923 () Bool)

(assert (=> bs!545971 m!3569923))

(assert (=> b!3267910 d!905881))

(declare-fun e!2035394 () Bool)

(declare-fun b!3268248 () Bool)

(declare-fun lt!1108292 () tuple2!35920)

(assert (=> b!3268248 (= e!2035394 (= (list!13032 (_2!21094 lt!1108292)) (_2!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 lt!1108144)))))))

(declare-fun b!3268249 () Bool)

(declare-fun e!2035393 () Bool)

(assert (=> b!3268249 (= e!2035393 (= (_2!21094 lt!1108292) lt!1108144))))

(declare-fun b!3268250 () Bool)

(declare-fun e!2035392 () Bool)

(assert (=> b!3268250 (= e!2035393 e!2035392)))

(declare-fun res!1328211 () Bool)

(declare-fun size!27509 (BalanceConc!21500) Int)

(assert (=> b!3268250 (= res!1328211 (< (size!27509 (_2!21094 lt!1108292)) (size!27509 lt!1108144)))))

(assert (=> b!3268250 (=> (not res!1328211) (not e!2035392))))

(declare-fun b!3268251 () Bool)

(assert (=> b!3268251 (= e!2035392 (not (isEmpty!20563 (_1!21094 lt!1108292))))))

(declare-fun b!3268247 () Bool)

(declare-fun res!1328212 () Bool)

(assert (=> b!3268247 (=> (not res!1328212) (not e!2035394))))

(assert (=> b!3268247 (= res!1328212 (= (list!13033 (_1!21094 lt!1108292)) (_1!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 lt!1108144)))))))

(declare-fun d!905883 () Bool)

(assert (=> d!905883 e!2035394))

(declare-fun res!1328210 () Bool)

(assert (=> d!905883 (=> (not res!1328210) (not e!2035394))))

(assert (=> d!905883 (= res!1328210 e!2035393)))

(declare-fun c!551719 () Bool)

(assert (=> d!905883 (= c!551719 (> (size!27508 (_1!21094 lt!1108292)) 0))))

(declare-fun lexTailRecV2!956 (LexerInterface!4873 List!36569 BalanceConc!21500 BalanceConc!21500 BalanceConc!21500 BalanceConc!21502) tuple2!35920)

(assert (=> d!905883 (= lt!1108292 (lexTailRecV2!956 thiss!18206 rules!2135 lt!1108144 (BalanceConc!21501 Empty!10943) lt!1108144 (BalanceConc!21503 Empty!10944)))))

(assert (=> d!905883 (= (lex!2201 thiss!18206 rules!2135 lt!1108144) lt!1108292)))

(assert (= (and d!905883 c!551719) b!3268250))

(assert (= (and d!905883 (not c!551719)) b!3268249))

(assert (= (and b!3268250 res!1328211) b!3268251))

(assert (= (and d!905883 res!1328210) b!3268247))

(assert (= (and b!3268247 res!1328212) b!3268248))

(declare-fun m!3569925 () Bool)

(assert (=> b!3268247 m!3569925))

(declare-fun m!3569927 () Bool)

(assert (=> b!3268247 m!3569927))

(assert (=> b!3268247 m!3569927))

(declare-fun m!3569929 () Bool)

(assert (=> b!3268247 m!3569929))

(declare-fun m!3569931 () Bool)

(assert (=> b!3268250 m!3569931))

(declare-fun m!3569933 () Bool)

(assert (=> b!3268250 m!3569933))

(declare-fun m!3569935 () Bool)

(assert (=> d!905883 m!3569935))

(declare-fun m!3569937 () Bool)

(assert (=> d!905883 m!3569937))

(declare-fun m!3569939 () Bool)

(assert (=> b!3268251 m!3569939))

(declare-fun m!3569941 () Bool)

(assert (=> b!3268248 m!3569941))

(assert (=> b!3268248 m!3569927))

(assert (=> b!3268248 m!3569927))

(assert (=> b!3268248 m!3569929))

(assert (=> b!3267910 d!905883))

(declare-fun d!905885 () Bool)

(declare-fun fromListB!1586 (List!36567) BalanceConc!21500)

(assert (=> d!905885 (= (seqFromList!3632 lt!1108158) (fromListB!1586 lt!1108158))))

(declare-fun bs!545972 () Bool)

(assert (= bs!545972 d!905885))

(declare-fun m!3569943 () Bool)

(assert (=> bs!545972 m!3569943))

(assert (=> b!3267910 d!905885))

(declare-fun bs!545976 () Bool)

(declare-fun d!905887 () Bool)

(assert (= bs!545976 (and d!905887 b!3267882)))

(declare-fun lambda!118625 () Int)

(assert (=> bs!545976 (not (= lambda!118625 lambda!118615))))

(declare-fun b!3268386 () Bool)

(declare-fun e!2035475 () Bool)

(assert (=> b!3268386 (= e!2035475 true)))

(declare-fun b!3268385 () Bool)

(declare-fun e!2035474 () Bool)

(assert (=> b!3268385 (= e!2035474 e!2035475)))

(declare-fun b!3268384 () Bool)

(declare-fun e!2035473 () Bool)

(assert (=> b!3268384 (= e!2035473 e!2035474)))

(assert (=> d!905887 e!2035473))

(assert (= b!3268385 b!3268386))

(assert (= b!3268384 b!3268385))

(assert (= (and d!905887 ((_ is Cons!36445) rules!2135)) b!3268384))

(declare-fun order!18859 () Int)

(declare-fun order!18857 () Int)

(declare-fun dynLambda!14882 (Int Int) Int)

(declare-fun dynLambda!14883 (Int Int) Int)

(assert (=> b!3268386 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (h!41865 rules!2135)))) (dynLambda!14883 order!18859 lambda!118625))))

(declare-fun order!18861 () Int)

(declare-fun dynLambda!14884 (Int Int) Int)

(assert (=> b!3268386 (< (dynLambda!14884 order!18861 (toChars!7263 (transformation!5284 (h!41865 rules!2135)))) (dynLambda!14883 order!18859 lambda!118625))))

(assert (=> d!905887 true))

(declare-fun e!2035466 () Bool)

(assert (=> d!905887 e!2035466))

(declare-fun res!1328276 () Bool)

(assert (=> d!905887 (=> (not res!1328276) (not e!2035466))))

(declare-fun lt!1108318 () Bool)

(assert (=> d!905887 (= res!1328276 (= lt!1108318 (forall!7522 (list!13033 lt!1108152) lambda!118625)))))

(declare-fun forall!7524 (BalanceConc!21502 Int) Bool)

(assert (=> d!905887 (= lt!1108318 (forall!7524 lt!1108152 lambda!118625))))

(assert (=> d!905887 (not (isEmpty!20560 rules!2135))))

(assert (=> d!905887 (= (rulesProduceEachTokenIndividually!1324 thiss!18206 rules!2135 lt!1108152) lt!1108318)))

(declare-fun b!3268375 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1753 (LexerInterface!4873 List!36569 List!36568) Bool)

(assert (=> b!3268375 (= e!2035466 (= lt!1108318 (rulesProduceEachTokenIndividuallyList!1753 thiss!18206 rules!2135 (list!13033 lt!1108152))))))

(assert (= (and d!905887 res!1328276) b!3268375))

(declare-fun m!3570051 () Bool)

(assert (=> d!905887 m!3570051))

(assert (=> d!905887 m!3570051))

(declare-fun m!3570053 () Bool)

(assert (=> d!905887 m!3570053))

(declare-fun m!3570055 () Bool)

(assert (=> d!905887 m!3570055))

(assert (=> d!905887 m!3569453))

(assert (=> b!3268375 m!3570051))

(assert (=> b!3268375 m!3570051))

(declare-fun m!3570057 () Bool)

(assert (=> b!3268375 m!3570057))

(assert (=> b!3267888 d!905887))

(declare-fun d!905919 () Bool)

(declare-fun fromListB!1587 (List!36568) BalanceConc!21502)

(assert (=> d!905919 (= (seqFromList!3631 tokens!494) (fromListB!1587 tokens!494))))

(declare-fun bs!545979 () Bool)

(assert (= bs!545979 d!905919))

(declare-fun m!3570069 () Bool)

(assert (=> bs!545979 m!3570069))

(assert (=> b!3267888 d!905919))

(declare-fun d!905925 () Bool)

(declare-fun res!1328277 () Bool)

(declare-fun e!2035476 () Bool)

(assert (=> d!905925 (=> (not res!1328277) (not e!2035476))))

(assert (=> d!905925 (= res!1328277 (not (isEmpty!20562 (originalCharacters!5998 separatorToken!241))))))

(assert (=> d!905925 (= (inv!49368 separatorToken!241) e!2035476)))

(declare-fun b!3268389 () Bool)

(declare-fun res!1328278 () Bool)

(assert (=> b!3268389 (=> (not res!1328278) (not e!2035476))))

(assert (=> b!3268389 (= res!1328278 (= (originalCharacters!5998 separatorToken!241) (list!13032 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))))))

(declare-fun b!3268390 () Bool)

(assert (=> b!3268390 (= e!2035476 (= (size!27502 separatorToken!241) (size!27503 (originalCharacters!5998 separatorToken!241))))))

(assert (= (and d!905925 res!1328277) b!3268389))

(assert (= (and b!3268389 res!1328278) b!3268390))

(declare-fun b_lambda!90491 () Bool)

(assert (=> (not b_lambda!90491) (not b!3268389)))

(declare-fun tb!165575 () Bool)

(declare-fun t!247377 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) t!247377) tb!165575))

(declare-fun b!3268391 () Bool)

(declare-fun e!2035477 () Bool)

(declare-fun tp!1027002 () Bool)

(assert (=> b!3268391 (= e!2035477 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))) tp!1027002))))

(declare-fun result!208250 () Bool)

(assert (=> tb!165575 (= result!208250 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))) e!2035477))))

(assert (= tb!165575 b!3268391))

(declare-fun m!3570071 () Bool)

(assert (=> b!3268391 m!3570071))

(declare-fun m!3570073 () Bool)

(assert (=> tb!165575 m!3570073))

(assert (=> b!3268389 t!247377))

(declare-fun b_and!221281 () Bool)

(assert (= b_and!221269 (and (=> t!247377 result!208250) b_and!221281)))

(declare-fun t!247379 () Bool)

(declare-fun tb!165577 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) t!247379) tb!165577))

(declare-fun result!208252 () Bool)

(assert (= result!208252 result!208250))

(assert (=> b!3268389 t!247379))

(declare-fun b_and!221283 () Bool)

(assert (= b_and!221271 (and (=> t!247379 result!208252) b_and!221283)))

(declare-fun tb!165579 () Bool)

(declare-fun t!247381 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) t!247381) tb!165579))

(declare-fun result!208254 () Bool)

(assert (= result!208254 result!208250))

(assert (=> b!3268389 t!247381))

(declare-fun b_and!221285 () Bool)

(assert (= b_and!221273 (and (=> t!247381 result!208254) b_and!221285)))

(declare-fun m!3570075 () Bool)

(assert (=> d!905925 m!3570075))

(declare-fun m!3570077 () Bool)

(assert (=> b!3268389 m!3570077))

(assert (=> b!3268389 m!3570077))

(declare-fun m!3570079 () Bool)

(assert (=> b!3268389 m!3570079))

(declare-fun m!3570081 () Bool)

(assert (=> b!3268390 m!3570081))

(assert (=> start!305778 d!905925))

(declare-fun d!905927 () Bool)

(assert (=> d!905927 (= (isEmpty!20561 (filter!524 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))) lambda!118615)) ((_ is Nil!36444) (filter!524 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))) lambda!118615)))))

(assert (=> b!3267912 d!905927))

(declare-fun d!905929 () Bool)

(declare-fun list!13036 (Conc!10944) List!36568)

(assert (=> d!905929 (= (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))) (list!13036 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(declare-fun bs!545980 () Bool)

(assert (= bs!545980 d!905929))

(declare-fun m!3570083 () Bool)

(assert (=> bs!545980 m!3570083))

(assert (=> b!3267912 d!905929))

(declare-fun b!3268404 () Bool)

(declare-fun res!1328284 () Bool)

(declare-fun e!2035486 () Bool)

(assert (=> b!3268404 (=> (not res!1328284) (not e!2035486))))

(declare-fun lt!1108322 () List!36568)

(declare-fun content!4946 (List!36568) (InoxSet Token!9934))

(assert (=> b!3268404 (= res!1328284 (= ((_ map implies) (content!4946 lt!1108322) (content!4946 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))) ((as const (InoxSet Token!9934)) true)))))

(declare-fun b!3268405 () Bool)

(declare-fun e!2035485 () List!36568)

(assert (=> b!3268405 (= e!2035485 Nil!36444)))

(declare-fun b!3268406 () Bool)

(declare-fun e!2035484 () List!36568)

(declare-fun call!236847 () List!36568)

(assert (=> b!3268406 (= e!2035484 call!236847)))

(declare-fun b!3268407 () Bool)

(assert (=> b!3268407 (= e!2035486 (forall!7522 lt!1108322 lambda!118615))))

(declare-fun bm!236842 () Bool)

(assert (=> bm!236842 (= call!236847 (filter!524 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))) lambda!118615))))

(declare-fun d!905931 () Bool)

(assert (=> d!905931 e!2035486))

(declare-fun res!1328283 () Bool)

(assert (=> d!905931 (=> (not res!1328283) (not e!2035486))))

(assert (=> d!905931 (= res!1328283 (<= (size!27506 lt!1108322) (size!27506 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))))))

(assert (=> d!905931 (= lt!1108322 e!2035485)))

(declare-fun c!551749 () Bool)

(assert (=> d!905931 (= c!551749 ((_ is Nil!36444) (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(assert (=> d!905931 (= (filter!524 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))) lambda!118615) lt!1108322)))

(declare-fun b!3268408 () Bool)

(assert (=> b!3268408 (= e!2035485 e!2035484)))

(declare-fun c!551748 () Bool)

(assert (=> b!3268408 (= c!551748 (dynLambda!14876 lambda!118615 (h!41864 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))))))

(declare-fun b!3268409 () Bool)

(assert (=> b!3268409 (= e!2035484 (Cons!36444 (h!41864 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))) call!236847))))

(assert (= (and d!905931 c!551749) b!3268405))

(assert (= (and d!905931 (not c!551749)) b!3268408))

(assert (= (and b!3268408 c!551748) b!3268409))

(assert (= (and b!3268408 (not c!551748)) b!3268406))

(assert (= (or b!3268409 b!3268406) bm!236842))

(assert (= (and d!905931 res!1328283) b!3268404))

(assert (= (and b!3268404 res!1328284) b!3268407))

(declare-fun b_lambda!90493 () Bool)

(assert (=> (not b_lambda!90493) (not b!3268408)))

(declare-fun m!3570085 () Bool)

(assert (=> b!3268404 m!3570085))

(assert (=> b!3268404 m!3569467))

(declare-fun m!3570087 () Bool)

(assert (=> b!3268404 m!3570087))

(declare-fun m!3570089 () Bool)

(assert (=> b!3268407 m!3570089))

(declare-fun m!3570091 () Bool)

(assert (=> b!3268408 m!3570091))

(declare-fun m!3570093 () Bool)

(assert (=> bm!236842 m!3570093))

(declare-fun m!3570095 () Bool)

(assert (=> d!905931 m!3570095))

(assert (=> d!905931 m!3569467))

(declare-fun m!3570097 () Bool)

(assert (=> d!905931 m!3570097))

(assert (=> b!3267912 d!905931))

(declare-fun d!905933 () Bool)

(declare-fun lt!1108325 () BalanceConc!21500)

(assert (=> d!905933 (= (list!13032 lt!1108325) (printWithSeparatorTokenList!198 thiss!18206 (list!13033 (BalanceConc!21503 Empty!10944)) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!26 (LexerInterface!4873 BalanceConc!21502 Token!9934 Int BalanceConc!21500) BalanceConc!21500)

(assert (=> d!905933 (= lt!1108325 (printWithSeparatorTokenTailRec!26 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241 0 (BalanceConc!21501 Empty!10943)))))

(assert (=> d!905933 (isSeparator!5284 (rule!7766 separatorToken!241))))

(assert (=> d!905933 (= (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241) lt!1108325)))

(declare-fun bs!545981 () Bool)

(assert (= bs!545981 d!905933))

(declare-fun m!3570099 () Bool)

(assert (=> bs!545981 m!3570099))

(declare-fun m!3570101 () Bool)

(assert (=> bs!545981 m!3570101))

(assert (=> bs!545981 m!3570101))

(declare-fun m!3570103 () Bool)

(assert (=> bs!545981 m!3570103))

(declare-fun m!3570105 () Bool)

(assert (=> bs!545981 m!3570105))

(assert (=> b!3267912 d!905933))

(declare-fun e!2035489 () Bool)

(declare-fun b!3268411 () Bool)

(declare-fun lt!1108326 () tuple2!35920)

(assert (=> b!3268411 (= e!2035489 (= (list!13032 (_2!21094 lt!1108326)) (_2!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(declare-fun b!3268412 () Bool)

(declare-fun e!2035488 () Bool)

(assert (=> b!3268412 (= e!2035488 (= (_2!21094 lt!1108326) (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))

(declare-fun b!3268413 () Bool)

(declare-fun e!2035487 () Bool)

(assert (=> b!3268413 (= e!2035488 e!2035487)))

(declare-fun res!1328286 () Bool)

(assert (=> b!3268413 (= res!1328286 (< (size!27509 (_2!21094 lt!1108326)) (size!27509 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))

(assert (=> b!3268413 (=> (not res!1328286) (not e!2035487))))

(declare-fun b!3268414 () Bool)

(assert (=> b!3268414 (= e!2035487 (not (isEmpty!20563 (_1!21094 lt!1108326))))))

(declare-fun b!3268410 () Bool)

(declare-fun res!1328287 () Bool)

(assert (=> b!3268410 (=> (not res!1328287) (not e!2035489))))

(assert (=> b!3268410 (= res!1328287 (= (list!13033 (_1!21094 lt!1108326)) (_1!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(declare-fun d!905935 () Bool)

(assert (=> d!905935 e!2035489))

(declare-fun res!1328285 () Bool)

(assert (=> d!905935 (=> (not res!1328285) (not e!2035489))))

(assert (=> d!905935 (= res!1328285 e!2035488)))

(declare-fun c!551750 () Bool)

(assert (=> d!905935 (= c!551750 (> (size!27508 (_1!21094 lt!1108326)) 0))))

(assert (=> d!905935 (= lt!1108326 (lexTailRecV2!956 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241) (BalanceConc!21501 Empty!10943) (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241) (BalanceConc!21503 Empty!10944)))))

(assert (=> d!905935 (= (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)) lt!1108326)))

(assert (= (and d!905935 c!551750) b!3268413))

(assert (= (and d!905935 (not c!551750)) b!3268412))

(assert (= (and b!3268413 res!1328286) b!3268414))

(assert (= (and d!905935 res!1328285) b!3268410))

(assert (= (and b!3268410 res!1328287) b!3268411))

(declare-fun m!3570107 () Bool)

(assert (=> b!3268410 m!3570107))

(assert (=> b!3268410 m!3569461))

(declare-fun m!3570109 () Bool)

(assert (=> b!3268410 m!3570109))

(assert (=> b!3268410 m!3570109))

(declare-fun m!3570111 () Bool)

(assert (=> b!3268410 m!3570111))

(declare-fun m!3570113 () Bool)

(assert (=> b!3268413 m!3570113))

(assert (=> b!3268413 m!3569461))

(declare-fun m!3570115 () Bool)

(assert (=> b!3268413 m!3570115))

(declare-fun m!3570117 () Bool)

(assert (=> d!905935 m!3570117))

(assert (=> d!905935 m!3569461))

(assert (=> d!905935 m!3569461))

(declare-fun m!3570119 () Bool)

(assert (=> d!905935 m!3570119))

(declare-fun m!3570121 () Bool)

(assert (=> b!3268414 m!3570121))

(declare-fun m!3570123 () Bool)

(assert (=> b!3268411 m!3570123))

(assert (=> b!3268411 m!3569461))

(assert (=> b!3268411 m!3570109))

(assert (=> b!3268411 m!3570109))

(assert (=> b!3268411 m!3570111))

(assert (=> b!3267912 d!905935))

(declare-fun d!905937 () Bool)

(assert (=> d!905937 (= (isEmpty!20560 rules!2135) ((_ is Nil!36445) rules!2135))))

(assert (=> b!3267893 d!905937))

(declare-fun d!905939 () Bool)

(assert (=> d!905939 (not (matchR!4665 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142))))

(declare-fun lt!1108329 () Unit!51218)

(declare-fun choose!19018 (Regex!10043 List!36567 C!20272) Unit!51218)

(assert (=> d!905939 (= lt!1108329 (choose!19018 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142 lt!1108139))))

(assert (=> d!905939 (validRegex!4567 (regex!5284 (rule!7766 separatorToken!241)))))

(assert (=> d!905939 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!432 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142 lt!1108139) lt!1108329)))

(declare-fun bs!545982 () Bool)

(assert (= bs!545982 d!905939))

(assert (=> bs!545982 m!3569441))

(declare-fun m!3570125 () Bool)

(assert (=> bs!545982 m!3570125))

(declare-fun m!3570127 () Bool)

(assert (=> bs!545982 m!3570127))

(assert (=> b!3267914 d!905939))

(declare-fun b!3268415 () Bool)

(declare-fun e!2035490 () Bool)

(assert (=> b!3268415 (= e!2035490 (= (head!7113 lt!1108142) (c!551638 (regex!5284 (rule!7766 separatorToken!241)))))))

(declare-fun b!3268416 () Bool)

(declare-fun e!2035492 () Bool)

(assert (=> b!3268416 (= e!2035492 (not (= (head!7113 lt!1108142) (c!551638 (regex!5284 (rule!7766 separatorToken!241))))))))

(declare-fun b!3268417 () Bool)

(declare-fun res!1328289 () Bool)

(assert (=> b!3268417 (=> (not res!1328289) (not e!2035490))))

(assert (=> b!3268417 (= res!1328289 (isEmpty!20562 (tail!5250 lt!1108142)))))

(declare-fun b!3268418 () Bool)

(declare-fun e!2035496 () Bool)

(declare-fun lt!1108330 () Bool)

(declare-fun call!236848 () Bool)

(assert (=> b!3268418 (= e!2035496 (= lt!1108330 call!236848))))

(declare-fun b!3268419 () Bool)

(declare-fun e!2035491 () Bool)

(assert (=> b!3268419 (= e!2035491 (matchR!4665 (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142)) (tail!5250 lt!1108142)))))

(declare-fun b!3268420 () Bool)

(declare-fun res!1328290 () Bool)

(assert (=> b!3268420 (=> (not res!1328290) (not e!2035490))))

(assert (=> b!3268420 (= res!1328290 (not call!236848))))

(declare-fun b!3268421 () Bool)

(assert (=> b!3268421 (= e!2035491 (nullable!3411 (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun b!3268422 () Bool)

(declare-fun e!2035493 () Bool)

(assert (=> b!3268422 (= e!2035493 e!2035492)))

(declare-fun res!1328294 () Bool)

(assert (=> b!3268422 (=> res!1328294 e!2035492)))

(assert (=> b!3268422 (= res!1328294 call!236848)))

(declare-fun b!3268424 () Bool)

(declare-fun e!2035494 () Bool)

(assert (=> b!3268424 (= e!2035494 (not lt!1108330))))

(declare-fun bm!236843 () Bool)

(assert (=> bm!236843 (= call!236848 (isEmpty!20562 lt!1108142))))

(declare-fun b!3268425 () Bool)

(declare-fun res!1328288 () Bool)

(assert (=> b!3268425 (=> res!1328288 e!2035492)))

(assert (=> b!3268425 (= res!1328288 (not (isEmpty!20562 (tail!5250 lt!1108142))))))

(declare-fun b!3268426 () Bool)

(declare-fun res!1328295 () Bool)

(declare-fun e!2035495 () Bool)

(assert (=> b!3268426 (=> res!1328295 e!2035495)))

(assert (=> b!3268426 (= res!1328295 e!2035490)))

(declare-fun res!1328292 () Bool)

(assert (=> b!3268426 (=> (not res!1328292) (not e!2035490))))

(assert (=> b!3268426 (= res!1328292 lt!1108330)))

(declare-fun d!905941 () Bool)

(assert (=> d!905941 e!2035496))

(declare-fun c!551754 () Bool)

(assert (=> d!905941 (= c!551754 ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(assert (=> d!905941 (= lt!1108330 e!2035491)))

(declare-fun c!551753 () Bool)

(assert (=> d!905941 (= c!551753 (isEmpty!20562 lt!1108142))))

(assert (=> d!905941 (validRegex!4567 (regex!5284 (rule!7766 separatorToken!241)))))

(assert (=> d!905941 (= (matchR!4665 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142) lt!1108330)))

(declare-fun b!3268423 () Bool)

(assert (=> b!3268423 (= e!2035495 e!2035493)))

(declare-fun res!1328293 () Bool)

(assert (=> b!3268423 (=> (not res!1328293) (not e!2035493))))

(assert (=> b!3268423 (= res!1328293 (not lt!1108330))))

(declare-fun b!3268427 () Bool)

(declare-fun res!1328291 () Bool)

(assert (=> b!3268427 (=> res!1328291 e!2035495)))

(assert (=> b!3268427 (= res!1328291 (not ((_ is ElementMatch!10043) (regex!5284 (rule!7766 separatorToken!241)))))))

(assert (=> b!3268427 (= e!2035494 e!2035495)))

(declare-fun b!3268428 () Bool)

(assert (=> b!3268428 (= e!2035496 e!2035494)))

(declare-fun c!551752 () Bool)

(assert (=> b!3268428 (= c!551752 ((_ is EmptyLang!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(assert (= (and d!905941 c!551753) b!3268421))

(assert (= (and d!905941 (not c!551753)) b!3268419))

(assert (= (and d!905941 c!551754) b!3268418))

(assert (= (and d!905941 (not c!551754)) b!3268428))

(assert (= (and b!3268428 c!551752) b!3268424))

(assert (= (and b!3268428 (not c!551752)) b!3268427))

(assert (= (and b!3268427 (not res!1328291)) b!3268426))

(assert (= (and b!3268426 res!1328292) b!3268420))

(assert (= (and b!3268420 res!1328290) b!3268417))

(assert (= (and b!3268417 res!1328289) b!3268415))

(assert (= (and b!3268426 (not res!1328295)) b!3268423))

(assert (= (and b!3268423 res!1328293) b!3268422))

(assert (= (and b!3268422 (not res!1328294)) b!3268425))

(assert (= (and b!3268425 (not res!1328288)) b!3268416))

(assert (= (or b!3268418 b!3268420 b!3268422) bm!236843))

(declare-fun m!3570129 () Bool)

(assert (=> bm!236843 m!3570129))

(assert (=> b!3268415 m!3569537))

(assert (=> b!3268416 m!3569537))

(declare-fun m!3570131 () Bool)

(assert (=> b!3268425 m!3570131))

(assert (=> b!3268425 m!3570131))

(declare-fun m!3570133 () Bool)

(assert (=> b!3268425 m!3570133))

(assert (=> d!905941 m!3570129))

(assert (=> d!905941 m!3570127))

(assert (=> b!3268417 m!3570131))

(assert (=> b!3268417 m!3570131))

(assert (=> b!3268417 m!3570133))

(declare-fun m!3570135 () Bool)

(assert (=> b!3268421 m!3570135))

(assert (=> b!3268419 m!3569537))

(assert (=> b!3268419 m!3569537))

(declare-fun m!3570137 () Bool)

(assert (=> b!3268419 m!3570137))

(assert (=> b!3268419 m!3570131))

(assert (=> b!3268419 m!3570137))

(assert (=> b!3268419 m!3570131))

(declare-fun m!3570139 () Bool)

(assert (=> b!3268419 m!3570139))

(assert (=> b!3267914 d!905941))

(declare-fun d!905943 () Bool)

(assert (=> d!905943 (= (inv!49365 (tag!5824 (rule!7766 separatorToken!241))) (= (mod (str.len (value!171053 (tag!5824 (rule!7766 separatorToken!241)))) 2) 0))))

(assert (=> b!3267892 d!905943))

(declare-fun d!905945 () Bool)

(declare-fun res!1328296 () Bool)

(declare-fun e!2035497 () Bool)

(assert (=> d!905945 (=> (not res!1328296) (not e!2035497))))

(assert (=> d!905945 (= res!1328296 (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))))))

(assert (=> d!905945 (= (inv!49369 (transformation!5284 (rule!7766 separatorToken!241))) e!2035497)))

(declare-fun b!3268429 () Bool)

(assert (=> b!3268429 (= e!2035497 (equivClasses!2080 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))))))

(assert (= (and d!905945 res!1328296) b!3268429))

(declare-fun m!3570141 () Bool)

(assert (=> d!905945 m!3570141))

(declare-fun m!3570143 () Bool)

(assert (=> b!3268429 m!3570143))

(assert (=> b!3267892 d!905945))

(declare-fun b!3268430 () Bool)

(declare-fun e!2035498 () Bool)

(assert (=> b!3268430 (= e!2035498 (= (head!7113 lt!1108142) (c!551638 (regex!5284 lt!1108160))))))

(declare-fun b!3268431 () Bool)

(declare-fun e!2035500 () Bool)

(assert (=> b!3268431 (= e!2035500 (not (= (head!7113 lt!1108142) (c!551638 (regex!5284 lt!1108160)))))))

(declare-fun b!3268432 () Bool)

(declare-fun res!1328298 () Bool)

(assert (=> b!3268432 (=> (not res!1328298) (not e!2035498))))

(assert (=> b!3268432 (= res!1328298 (isEmpty!20562 (tail!5250 lt!1108142)))))

(declare-fun b!3268433 () Bool)

(declare-fun e!2035504 () Bool)

(declare-fun lt!1108331 () Bool)

(declare-fun call!236849 () Bool)

(assert (=> b!3268433 (= e!2035504 (= lt!1108331 call!236849))))

(declare-fun b!3268434 () Bool)

(declare-fun e!2035499 () Bool)

(assert (=> b!3268434 (= e!2035499 (matchR!4665 (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142)) (tail!5250 lt!1108142)))))

(declare-fun b!3268435 () Bool)

(declare-fun res!1328299 () Bool)

(assert (=> b!3268435 (=> (not res!1328299) (not e!2035498))))

(assert (=> b!3268435 (= res!1328299 (not call!236849))))

(declare-fun b!3268436 () Bool)

(assert (=> b!3268436 (= e!2035499 (nullable!3411 (regex!5284 lt!1108160)))))

(declare-fun b!3268437 () Bool)

(declare-fun e!2035501 () Bool)

(assert (=> b!3268437 (= e!2035501 e!2035500)))

(declare-fun res!1328303 () Bool)

(assert (=> b!3268437 (=> res!1328303 e!2035500)))

(assert (=> b!3268437 (= res!1328303 call!236849)))

(declare-fun b!3268439 () Bool)

(declare-fun e!2035502 () Bool)

(assert (=> b!3268439 (= e!2035502 (not lt!1108331))))

(declare-fun bm!236844 () Bool)

(assert (=> bm!236844 (= call!236849 (isEmpty!20562 lt!1108142))))

(declare-fun b!3268440 () Bool)

(declare-fun res!1328297 () Bool)

(assert (=> b!3268440 (=> res!1328297 e!2035500)))

(assert (=> b!3268440 (= res!1328297 (not (isEmpty!20562 (tail!5250 lt!1108142))))))

(declare-fun b!3268441 () Bool)

(declare-fun res!1328304 () Bool)

(declare-fun e!2035503 () Bool)

(assert (=> b!3268441 (=> res!1328304 e!2035503)))

(assert (=> b!3268441 (= res!1328304 e!2035498)))

(declare-fun res!1328301 () Bool)

(assert (=> b!3268441 (=> (not res!1328301) (not e!2035498))))

(assert (=> b!3268441 (= res!1328301 lt!1108331)))

(declare-fun d!905947 () Bool)

(assert (=> d!905947 e!2035504))

(declare-fun c!551757 () Bool)

(assert (=> d!905947 (= c!551757 ((_ is EmptyExpr!10043) (regex!5284 lt!1108160)))))

(assert (=> d!905947 (= lt!1108331 e!2035499)))

(declare-fun c!551756 () Bool)

(assert (=> d!905947 (= c!551756 (isEmpty!20562 lt!1108142))))

(assert (=> d!905947 (validRegex!4567 (regex!5284 lt!1108160))))

(assert (=> d!905947 (= (matchR!4665 (regex!5284 lt!1108160) lt!1108142) lt!1108331)))

(declare-fun b!3268438 () Bool)

(assert (=> b!3268438 (= e!2035503 e!2035501)))

(declare-fun res!1328302 () Bool)

(assert (=> b!3268438 (=> (not res!1328302) (not e!2035501))))

(assert (=> b!3268438 (= res!1328302 (not lt!1108331))))

(declare-fun b!3268442 () Bool)

(declare-fun res!1328300 () Bool)

(assert (=> b!3268442 (=> res!1328300 e!2035503)))

(assert (=> b!3268442 (= res!1328300 (not ((_ is ElementMatch!10043) (regex!5284 lt!1108160))))))

(assert (=> b!3268442 (= e!2035502 e!2035503)))

(declare-fun b!3268443 () Bool)

(assert (=> b!3268443 (= e!2035504 e!2035502)))

(declare-fun c!551755 () Bool)

(assert (=> b!3268443 (= c!551755 ((_ is EmptyLang!10043) (regex!5284 lt!1108160)))))

(assert (= (and d!905947 c!551756) b!3268436))

(assert (= (and d!905947 (not c!551756)) b!3268434))

(assert (= (and d!905947 c!551757) b!3268433))

(assert (= (and d!905947 (not c!551757)) b!3268443))

(assert (= (and b!3268443 c!551755) b!3268439))

(assert (= (and b!3268443 (not c!551755)) b!3268442))

(assert (= (and b!3268442 (not res!1328300)) b!3268441))

(assert (= (and b!3268441 res!1328301) b!3268435))

(assert (= (and b!3268435 res!1328299) b!3268432))

(assert (= (and b!3268432 res!1328298) b!3268430))

(assert (= (and b!3268441 (not res!1328304)) b!3268438))

(assert (= (and b!3268438 res!1328302) b!3268437))

(assert (= (and b!3268437 (not res!1328303)) b!3268440))

(assert (= (and b!3268440 (not res!1328297)) b!3268431))

(assert (= (or b!3268433 b!3268435 b!3268437) bm!236844))

(assert (=> bm!236844 m!3570129))

(assert (=> b!3268430 m!3569537))

(assert (=> b!3268431 m!3569537))

(assert (=> b!3268440 m!3570131))

(assert (=> b!3268440 m!3570131))

(assert (=> b!3268440 m!3570133))

(assert (=> d!905947 m!3570129))

(declare-fun m!3570145 () Bool)

(assert (=> d!905947 m!3570145))

(assert (=> b!3268432 m!3570131))

(assert (=> b!3268432 m!3570131))

(assert (=> b!3268432 m!3570133))

(declare-fun m!3570147 () Bool)

(assert (=> b!3268436 m!3570147))

(assert (=> b!3268434 m!3569537))

(assert (=> b!3268434 m!3569537))

(declare-fun m!3570149 () Bool)

(assert (=> b!3268434 m!3570149))

(assert (=> b!3268434 m!3570131))

(assert (=> b!3268434 m!3570149))

(assert (=> b!3268434 m!3570131))

(declare-fun m!3570151 () Bool)

(assert (=> b!3268434 m!3570151))

(assert (=> b!3267894 d!905947))

(declare-fun d!905949 () Bool)

(assert (=> d!905949 (= (get!11623 lt!1108156) (v!35953 lt!1108156))))

(assert (=> b!3267894 d!905949))

(declare-fun b!3268444 () Bool)

(declare-fun e!2035505 () Bool)

(declare-fun lt!1108334 () tuple2!35916)

(assert (=> b!3268444 (= e!2035505 (= (_2!21092 lt!1108334) (_2!21093 (v!35952 lt!1108148))))))

(declare-fun b!3268445 () Bool)

(declare-fun e!2035506 () Bool)

(assert (=> b!3268445 (= e!2035506 (not (isEmpty!20561 (_1!21092 lt!1108334))))))

(declare-fun b!3268446 () Bool)

(assert (=> b!3268446 (= e!2035505 e!2035506)))

(declare-fun res!1328305 () Bool)

(assert (=> b!3268446 (= res!1328305 (< (size!27503 (_2!21092 lt!1108334)) (size!27503 (_2!21093 (v!35952 lt!1108148)))))))

(assert (=> b!3268446 (=> (not res!1328305) (not e!2035506))))

(declare-fun d!905951 () Bool)

(assert (=> d!905951 e!2035505))

(declare-fun c!551758 () Bool)

(assert (=> d!905951 (= c!551758 (> (size!27506 (_1!21092 lt!1108334)) 0))))

(declare-fun e!2035507 () tuple2!35916)

(assert (=> d!905951 (= lt!1108334 e!2035507)))

(declare-fun c!551759 () Bool)

(declare-fun lt!1108333 () Option!7257)

(assert (=> d!905951 (= c!551759 ((_ is Some!7256) lt!1108333))))

(assert (=> d!905951 (= lt!1108333 (maxPrefix!2501 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108148))))))

(assert (=> d!905951 (= (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108148))) lt!1108334)))

(declare-fun b!3268447 () Bool)

(assert (=> b!3268447 (= e!2035507 (tuple2!35917 Nil!36444 (_2!21093 (v!35952 lt!1108148))))))

(declare-fun b!3268448 () Bool)

(declare-fun lt!1108332 () tuple2!35916)

(assert (=> b!3268448 (= e!2035507 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1108333)) (_1!21092 lt!1108332)) (_2!21092 lt!1108332)))))

(assert (=> b!3268448 (= lt!1108332 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108333))))))

(assert (= (and d!905951 c!551759) b!3268448))

(assert (= (and d!905951 (not c!551759)) b!3268447))

(assert (= (and d!905951 c!551758) b!3268446))

(assert (= (and d!905951 (not c!551758)) b!3268444))

(assert (= (and b!3268446 res!1328305) b!3268445))

(declare-fun m!3570153 () Bool)

(assert (=> b!3268445 m!3570153))

(declare-fun m!3570155 () Bool)

(assert (=> b!3268446 m!3570155))

(declare-fun m!3570157 () Bool)

(assert (=> b!3268446 m!3570157))

(declare-fun m!3570159 () Bool)

(assert (=> d!905951 m!3570159))

(declare-fun m!3570161 () Bool)

(assert (=> d!905951 m!3570161))

(declare-fun m!3570163 () Bool)

(assert (=> b!3268448 m!3570163))

(assert (=> b!3267915 d!905951))

(declare-fun d!905953 () Bool)

(assert (=> d!905953 (= (isEmpty!20561 (filter!524 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))) lambda!118615)) ((_ is Nil!36444) (filter!524 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))) lambda!118615)))))

(assert (=> b!3267895 d!905953))

(declare-fun b!3268449 () Bool)

(declare-fun res!1328307 () Bool)

(declare-fun e!2035510 () Bool)

(assert (=> b!3268449 (=> (not res!1328307) (not e!2035510))))

(declare-fun lt!1108335 () List!36568)

(assert (=> b!3268449 (= res!1328307 (= ((_ map implies) (content!4946 lt!1108335) (content!4946 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))) ((as const (InoxSet Token!9934)) true)))))

(declare-fun b!3268450 () Bool)

(declare-fun e!2035509 () List!36568)

(assert (=> b!3268450 (= e!2035509 Nil!36444)))

(declare-fun b!3268451 () Bool)

(declare-fun e!2035508 () List!36568)

(declare-fun call!236850 () List!36568)

(assert (=> b!3268451 (= e!2035508 call!236850)))

(declare-fun b!3268452 () Bool)

(assert (=> b!3268452 (= e!2035510 (forall!7522 lt!1108335 lambda!118615))))

(declare-fun bm!236845 () Bool)

(assert (=> bm!236845 (= call!236850 (filter!524 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))) lambda!118615))))

(declare-fun d!905955 () Bool)

(assert (=> d!905955 e!2035510))

(declare-fun res!1328306 () Bool)

(assert (=> d!905955 (=> (not res!1328306) (not e!2035510))))

(assert (=> d!905955 (= res!1328306 (<= (size!27506 lt!1108335) (size!27506 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))))))

(assert (=> d!905955 (= lt!1108335 e!2035509)))

(declare-fun c!551761 () Bool)

(assert (=> d!905955 (= c!551761 ((_ is Nil!36444) (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))

(assert (=> d!905955 (= (filter!524 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))) lambda!118615) lt!1108335)))

(declare-fun b!3268453 () Bool)

(assert (=> b!3268453 (= e!2035509 e!2035508)))

(declare-fun c!551760 () Bool)

(assert (=> b!3268453 (= c!551760 (dynLambda!14876 lambda!118615 (h!41864 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))))))

(declare-fun b!3268454 () Bool)

(assert (=> b!3268454 (= e!2035508 (Cons!36444 (h!41864 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))) call!236850))))

(assert (= (and d!905955 c!551761) b!3268450))

(assert (= (and d!905955 (not c!551761)) b!3268453))

(assert (= (and b!3268453 c!551760) b!3268454))

(assert (= (and b!3268453 (not c!551760)) b!3268451))

(assert (= (or b!3268454 b!3268451) bm!236845))

(assert (= (and d!905955 res!1328306) b!3268449))

(assert (= (and b!3268449 res!1328307) b!3268452))

(declare-fun b_lambda!90495 () Bool)

(assert (=> (not b_lambda!90495) (not b!3268453)))

(declare-fun m!3570165 () Bool)

(assert (=> b!3268449 m!3570165))

(declare-fun m!3570167 () Bool)

(assert (=> b!3268449 m!3570167))

(declare-fun m!3570169 () Bool)

(assert (=> b!3268452 m!3570169))

(declare-fun m!3570171 () Bool)

(assert (=> b!3268453 m!3570171))

(declare-fun m!3570173 () Bool)

(assert (=> bm!236845 m!3570173))

(declare-fun m!3570175 () Bool)

(assert (=> d!905955 m!3570175))

(declare-fun m!3570177 () Bool)

(assert (=> d!905955 m!3570177))

(assert (=> b!3267895 d!905955))

(declare-fun b!3268455 () Bool)

(declare-fun lt!1108338 () tuple2!35916)

(declare-fun e!2035511 () Bool)

(assert (=> b!3268455 (= e!2035511 (= (_2!21092 lt!1108338) (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(declare-fun b!3268456 () Bool)

(declare-fun e!2035512 () Bool)

(assert (=> b!3268456 (= e!2035512 (not (isEmpty!20561 (_1!21092 lt!1108338))))))

(declare-fun b!3268457 () Bool)

(assert (=> b!3268457 (= e!2035511 e!2035512)))

(declare-fun res!1328308 () Bool)

(assert (=> b!3268457 (= res!1328308 (< (size!27503 (_2!21092 lt!1108338)) (size!27503 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))))

(assert (=> b!3268457 (=> (not res!1328308) (not e!2035512))))

(declare-fun d!905957 () Bool)

(assert (=> d!905957 e!2035511))

(declare-fun c!551762 () Bool)

(assert (=> d!905957 (= c!551762 (> (size!27506 (_1!21092 lt!1108338)) 0))))

(declare-fun e!2035513 () tuple2!35916)

(assert (=> d!905957 (= lt!1108338 e!2035513)))

(declare-fun c!551763 () Bool)

(declare-fun lt!1108337 () Option!7257)

(assert (=> d!905957 (= c!551763 ((_ is Some!7256) lt!1108337))))

(assert (=> d!905957 (= lt!1108337 (maxPrefix!2501 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(assert (=> d!905957 (= (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)) lt!1108338)))

(declare-fun b!3268458 () Bool)

(assert (=> b!3268458 (= e!2035513 (tuple2!35917 Nil!36444 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(declare-fun b!3268459 () Bool)

(declare-fun lt!1108336 () tuple2!35916)

(assert (=> b!3268459 (= e!2035513 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1108337)) (_1!21092 lt!1108336)) (_2!21092 lt!1108336)))))

(assert (=> b!3268459 (= lt!1108336 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108337))))))

(assert (= (and d!905957 c!551763) b!3268459))

(assert (= (and d!905957 (not c!551763)) b!3268458))

(assert (= (and d!905957 c!551762) b!3268457))

(assert (= (and d!905957 (not c!551762)) b!3268455))

(assert (= (and b!3268457 res!1328308) b!3268456))

(declare-fun m!3570179 () Bool)

(assert (=> b!3268456 m!3570179))

(declare-fun m!3570181 () Bool)

(assert (=> b!3268457 m!3570181))

(assert (=> b!3268457 m!3569563))

(declare-fun m!3570183 () Bool)

(assert (=> b!3268457 m!3570183))

(declare-fun m!3570185 () Bool)

(assert (=> d!905957 m!3570185))

(assert (=> d!905957 m!3569563))

(declare-fun m!3570187 () Bool)

(assert (=> d!905957 m!3570187))

(declare-fun m!3570189 () Bool)

(assert (=> b!3268459 m!3570189))

(assert (=> b!3267895 d!905957))

(declare-fun d!905959 () Bool)

(declare-fun c!551766 () Bool)

(assert (=> d!905959 (= c!551766 ((_ is Cons!36444) Nil!36444))))

(declare-fun e!2035516 () List!36567)

(assert (=> d!905959 (= (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241) e!2035516)))

(declare-fun b!3268464 () Bool)

(assert (=> b!3268464 (= e!2035516 (++!8798 (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241))) (printWithSeparatorTokenList!198 thiss!18206 (t!247339 Nil!36444) separatorToken!241)))))

(declare-fun b!3268465 () Bool)

(assert (=> b!3268465 (= e!2035516 Nil!36443)))

(assert (= (and d!905959 c!551766) b!3268464))

(assert (= (and d!905959 (not c!551766)) b!3268465))

(declare-fun m!3570191 () Bool)

(assert (=> b!3268464 m!3570191))

(declare-fun m!3570193 () Bool)

(assert (=> b!3268464 m!3570193))

(assert (=> b!3268464 m!3570193))

(assert (=> b!3268464 m!3569515))

(declare-fun m!3570195 () Bool)

(assert (=> b!3268464 m!3570195))

(assert (=> b!3268464 m!3569507))

(assert (=> b!3268464 m!3569507))

(assert (=> b!3268464 m!3569515))

(assert (=> b!3268464 m!3570195))

(declare-fun m!3570197 () Bool)

(assert (=> b!3268464 m!3570197))

(declare-fun m!3570199 () Bool)

(assert (=> b!3268464 m!3570199))

(assert (=> b!3268464 m!3570197))

(assert (=> b!3268464 m!3570191))

(assert (=> b!3267895 d!905959))

(declare-fun d!905961 () Bool)

(assert (=> d!905961 (= (inv!49365 (tag!5824 (rule!7766 (h!41864 tokens!494)))) (= (mod (str.len (value!171053 (tag!5824 (rule!7766 (h!41864 tokens!494))))) 2) 0))))

(assert (=> b!3267916 d!905961))

(declare-fun d!905963 () Bool)

(declare-fun res!1328309 () Bool)

(declare-fun e!2035517 () Bool)

(assert (=> d!905963 (=> (not res!1328309) (not e!2035517))))

(assert (=> d!905963 (= res!1328309 (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> d!905963 (= (inv!49369 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) e!2035517)))

(declare-fun b!3268466 () Bool)

(assert (=> b!3268466 (= e!2035517 (equivClasses!2080 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))))))

(assert (= (and d!905963 res!1328309) b!3268466))

(declare-fun m!3570201 () Bool)

(assert (=> d!905963 m!3570201))

(declare-fun m!3570203 () Bool)

(assert (=> b!3268466 m!3570203))

(assert (=> b!3267916 d!905963))

(declare-fun d!905965 () Bool)

(assert (=> d!905965 (= (list!13032 lt!1108161) (list!13035 (c!551639 lt!1108161)))))

(declare-fun bs!545983 () Bool)

(assert (= bs!545983 d!905965))

(declare-fun m!3570205 () Bool)

(assert (=> bs!545983 m!3570205))

(assert (=> b!3267897 d!905965))

(declare-fun lt!1108339 () BalanceConc!21500)

(declare-fun d!905967 () Bool)

(assert (=> d!905967 (= (list!13032 lt!1108339) (printWithSeparatorTokenList!198 thiss!18206 (list!13033 lt!1108152) separatorToken!241))))

(assert (=> d!905967 (= lt!1108339 (printWithSeparatorTokenTailRec!26 thiss!18206 lt!1108152 separatorToken!241 0 (BalanceConc!21501 Empty!10943)))))

(assert (=> d!905967 (isSeparator!5284 (rule!7766 separatorToken!241))))

(assert (=> d!905967 (= (printWithSeparatorToken!90 thiss!18206 lt!1108152 separatorToken!241) lt!1108339)))

(declare-fun bs!545984 () Bool)

(assert (= bs!545984 d!905967))

(declare-fun m!3570207 () Bool)

(assert (=> bs!545984 m!3570207))

(assert (=> bs!545984 m!3570051))

(assert (=> bs!545984 m!3570051))

(declare-fun m!3570209 () Bool)

(assert (=> bs!545984 m!3570209))

(declare-fun m!3570211 () Bool)

(assert (=> bs!545984 m!3570211))

(assert (=> b!3267897 d!905967))

(declare-fun d!905969 () Bool)

(declare-fun lt!1108340 () BalanceConc!21500)

(assert (=> d!905969 (= (list!13032 lt!1108340) (originalCharacters!5998 separatorToken!241))))

(assert (=> d!905969 (= lt!1108340 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))))

(assert (=> d!905969 (= (charsOf!3300 separatorToken!241) lt!1108340)))

(declare-fun b_lambda!90497 () Bool)

(assert (=> (not b_lambda!90497) (not d!905969)))

(assert (=> d!905969 t!247377))

(declare-fun b_and!221287 () Bool)

(assert (= b_and!221281 (and (=> t!247377 result!208250) b_and!221287)))

(assert (=> d!905969 t!247379))

(declare-fun b_and!221289 () Bool)

(assert (= b_and!221283 (and (=> t!247379 result!208252) b_and!221289)))

(assert (=> d!905969 t!247381))

(declare-fun b_and!221291 () Bool)

(assert (= b_and!221285 (and (=> t!247381 result!208254) b_and!221291)))

(declare-fun m!3570213 () Bool)

(assert (=> d!905969 m!3570213))

(assert (=> d!905969 m!3570077))

(assert (=> b!3267897 d!905969))

(declare-fun d!905971 () Bool)

(assert (=> d!905971 (= (list!13032 (charsOf!3300 separatorToken!241)) (list!13035 (c!551639 (charsOf!3300 separatorToken!241))))))

(declare-fun bs!545985 () Bool)

(assert (= bs!545985 d!905971))

(declare-fun m!3570215 () Bool)

(assert (=> bs!545985 m!3570215))

(assert (=> b!3267897 d!905971))

(declare-fun b!3268477 () Bool)

(declare-fun res!1328315 () Bool)

(declare-fun e!2035522 () Bool)

(assert (=> b!3268477 (=> (not res!1328315) (not e!2035522))))

(declare-fun lt!1108343 () List!36567)

(assert (=> b!3268477 (= res!1328315 (= (size!27503 lt!1108343) (+ (size!27503 lt!1108158) (size!27503 lt!1108142))))))

(declare-fun b!3268476 () Bool)

(declare-fun e!2035523 () List!36567)

(assert (=> b!3268476 (= e!2035523 (Cons!36443 (h!41863 lt!1108158) (++!8798 (t!247338 lt!1108158) lt!1108142)))))

(declare-fun b!3268475 () Bool)

(assert (=> b!3268475 (= e!2035523 lt!1108142)))

(declare-fun d!905973 () Bool)

(assert (=> d!905973 e!2035522))

(declare-fun res!1328314 () Bool)

(assert (=> d!905973 (=> (not res!1328314) (not e!2035522))))

(assert (=> d!905973 (= res!1328314 (= (content!4944 lt!1108343) ((_ map or) (content!4944 lt!1108158) (content!4944 lt!1108142))))))

(assert (=> d!905973 (= lt!1108343 e!2035523)))

(declare-fun c!551769 () Bool)

(assert (=> d!905973 (= c!551769 ((_ is Nil!36443) lt!1108158))))

(assert (=> d!905973 (= (++!8798 lt!1108158 lt!1108142) lt!1108343)))

(declare-fun b!3268478 () Bool)

(assert (=> b!3268478 (= e!2035522 (or (not (= lt!1108142 Nil!36443)) (= lt!1108343 lt!1108158)))))

(assert (= (and d!905973 c!551769) b!3268475))

(assert (= (and d!905973 (not c!551769)) b!3268476))

(assert (= (and d!905973 res!1328314) b!3268477))

(assert (= (and b!3268477 res!1328315) b!3268478))

(declare-fun m!3570217 () Bool)

(assert (=> b!3268477 m!3570217))

(assert (=> b!3268477 m!3569527))

(declare-fun m!3570219 () Bool)

(assert (=> b!3268477 m!3570219))

(declare-fun m!3570221 () Bool)

(assert (=> b!3268476 m!3570221))

(declare-fun m!3570223 () Bool)

(assert (=> d!905973 m!3570223))

(declare-fun m!3570225 () Bool)

(assert (=> d!905973 m!3570225))

(declare-fun m!3570227 () Bool)

(assert (=> d!905973 m!3570227))

(assert (=> b!3267897 d!905973))

(declare-fun d!905975 () Bool)

(assert (=> d!905975 (= (list!13032 lt!1108163) (list!13035 (c!551639 lt!1108163)))))

(declare-fun bs!545986 () Bool)

(assert (= bs!545986 d!905975))

(declare-fun m!3570229 () Bool)

(assert (=> bs!545986 m!3570229))

(assert (=> b!3267898 d!905975))

(declare-fun d!905977 () Bool)

(declare-fun lt!1108360 () BalanceConc!21500)

(declare-fun printListTailRec!587 (LexerInterface!4873 List!36568 List!36567) List!36567)

(declare-fun dropList!1104 (BalanceConc!21502 Int) List!36568)

(assert (=> d!905977 (= (list!13032 lt!1108360) (printListTailRec!587 thiss!18206 (dropList!1104 lt!1108159 0) (list!13032 (BalanceConc!21501 Empty!10943))))))

(declare-fun e!2035529 () BalanceConc!21500)

(assert (=> d!905977 (= lt!1108360 e!2035529)))

(declare-fun c!551772 () Bool)

(assert (=> d!905977 (= c!551772 (>= 0 (size!27508 lt!1108159)))))

(declare-fun e!2035528 () Bool)

(assert (=> d!905977 e!2035528))

(declare-fun res!1328318 () Bool)

(assert (=> d!905977 (=> (not res!1328318) (not e!2035528))))

(assert (=> d!905977 (= res!1328318 (>= 0 0))))

(assert (=> d!905977 (= (printTailRec!1370 thiss!18206 lt!1108159 0 (BalanceConc!21501 Empty!10943)) lt!1108360)))

(declare-fun b!3268485 () Bool)

(assert (=> b!3268485 (= e!2035528 (<= 0 (size!27508 lt!1108159)))))

(declare-fun b!3268486 () Bool)

(assert (=> b!3268486 (= e!2035529 (BalanceConc!21501 Empty!10943))))

(declare-fun b!3268487 () Bool)

(declare-fun ++!8800 (BalanceConc!21500 BalanceConc!21500) BalanceConc!21500)

(assert (=> b!3268487 (= e!2035529 (printTailRec!1370 thiss!18206 lt!1108159 (+ 0 1) (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 lt!1108159 0)))))))

(declare-fun lt!1108364 () List!36568)

(assert (=> b!3268487 (= lt!1108364 (list!13033 lt!1108159))))

(declare-fun lt!1108363 () Unit!51218)

(declare-fun lemmaDropApply!1063 (List!36568 Int) Unit!51218)

(assert (=> b!3268487 (= lt!1108363 (lemmaDropApply!1063 lt!1108364 0))))

(declare-fun head!7115 (List!36568) Token!9934)

(declare-fun drop!1893 (List!36568 Int) List!36568)

(declare-fun apply!8352 (List!36568 Int) Token!9934)

(assert (=> b!3268487 (= (head!7115 (drop!1893 lt!1108364 0)) (apply!8352 lt!1108364 0))))

(declare-fun lt!1108358 () Unit!51218)

(assert (=> b!3268487 (= lt!1108358 lt!1108363)))

(declare-fun lt!1108361 () List!36568)

(assert (=> b!3268487 (= lt!1108361 (list!13033 lt!1108159))))

(declare-fun lt!1108359 () Unit!51218)

(declare-fun lemmaDropTail!947 (List!36568 Int) Unit!51218)

(assert (=> b!3268487 (= lt!1108359 (lemmaDropTail!947 lt!1108361 0))))

(declare-fun tail!5253 (List!36568) List!36568)

(assert (=> b!3268487 (= (tail!5253 (drop!1893 lt!1108361 0)) (drop!1893 lt!1108361 (+ 0 1)))))

(declare-fun lt!1108362 () Unit!51218)

(assert (=> b!3268487 (= lt!1108362 lt!1108359)))

(assert (= (and d!905977 res!1328318) b!3268485))

(assert (= (and d!905977 c!551772) b!3268486))

(assert (= (and d!905977 (not c!551772)) b!3268487))

(declare-fun m!3570231 () Bool)

(assert (=> d!905977 m!3570231))

(declare-fun m!3570233 () Bool)

(assert (=> d!905977 m!3570233))

(assert (=> d!905977 m!3570231))

(declare-fun m!3570235 () Bool)

(assert (=> d!905977 m!3570235))

(declare-fun m!3570237 () Bool)

(assert (=> d!905977 m!3570237))

(declare-fun m!3570239 () Bool)

(assert (=> d!905977 m!3570239))

(assert (=> d!905977 m!3570235))

(assert (=> b!3268485 m!3570233))

(declare-fun m!3570241 () Bool)

(assert (=> b!3268487 m!3570241))

(declare-fun m!3570243 () Bool)

(assert (=> b!3268487 m!3570243))

(declare-fun m!3570245 () Bool)

(assert (=> b!3268487 m!3570245))

(declare-fun m!3570247 () Bool)

(assert (=> b!3268487 m!3570247))

(declare-fun m!3570249 () Bool)

(assert (=> b!3268487 m!3570249))

(declare-fun m!3570251 () Bool)

(assert (=> b!3268487 m!3570251))

(declare-fun m!3570253 () Bool)

(assert (=> b!3268487 m!3570253))

(assert (=> b!3268487 m!3570253))

(assert (=> b!3268487 m!3570247))

(declare-fun m!3570255 () Bool)

(assert (=> b!3268487 m!3570255))

(declare-fun m!3570257 () Bool)

(assert (=> b!3268487 m!3570257))

(declare-fun m!3570259 () Bool)

(assert (=> b!3268487 m!3570259))

(declare-fun m!3570261 () Bool)

(assert (=> b!3268487 m!3570261))

(declare-fun m!3570263 () Bool)

(assert (=> b!3268487 m!3570263))

(assert (=> b!3268487 m!3570261))

(assert (=> b!3268487 m!3570251))

(declare-fun m!3570265 () Bool)

(assert (=> b!3268487 m!3570265))

(assert (=> b!3268487 m!3570255))

(assert (=> b!3267898 d!905977))

(declare-fun d!905979 () Bool)

(declare-fun lt!1108371 () BalanceConc!21500)

(assert (=> d!905979 (= (list!13032 lt!1108371) (printList!1423 thiss!18206 (list!13033 lt!1108159)))))

(assert (=> d!905979 (= lt!1108371 (printTailRec!1370 thiss!18206 lt!1108159 0 (BalanceConc!21501 Empty!10943)))))

(assert (=> d!905979 (= (print!1938 thiss!18206 lt!1108159) lt!1108371)))

(declare-fun bs!545988 () Bool)

(assert (= bs!545988 d!905979))

(declare-fun m!3570301 () Bool)

(assert (=> bs!545988 m!3570301))

(assert (=> bs!545988 m!3570245))

(assert (=> bs!545988 m!3570245))

(declare-fun m!3570303 () Bool)

(assert (=> bs!545988 m!3570303))

(assert (=> bs!545988 m!3569501))

(assert (=> b!3267898 d!905979))

(declare-fun d!905989 () Bool)

(declare-fun e!2035544 () Bool)

(assert (=> d!905989 e!2035544))

(declare-fun res!1328332 () Bool)

(assert (=> d!905989 (=> (not res!1328332) (not e!2035544))))

(declare-fun lt!1108374 () BalanceConc!21502)

(assert (=> d!905989 (= res!1328332 (= (list!13033 lt!1108374) (Cons!36444 (h!41864 tokens!494) Nil!36444)))))

(declare-fun singleton!1020 (Token!9934) BalanceConc!21502)

(assert (=> d!905989 (= lt!1108374 (singleton!1020 (h!41864 tokens!494)))))

(assert (=> d!905989 (= (singletonSeq!2380 (h!41864 tokens!494)) lt!1108374)))

(declare-fun b!3268511 () Bool)

(declare-fun isBalanced!3261 (Conc!10944) Bool)

(assert (=> b!3268511 (= e!2035544 (isBalanced!3261 (c!551640 lt!1108374)))))

(assert (= (and d!905989 res!1328332) b!3268511))

(declare-fun m!3570305 () Bool)

(assert (=> d!905989 m!3570305))

(declare-fun m!3570307 () Bool)

(assert (=> d!905989 m!3570307))

(declare-fun m!3570309 () Bool)

(assert (=> b!3268511 m!3570309))

(assert (=> b!3267898 d!905989))

(declare-fun d!905991 () Bool)

(declare-fun c!551780 () Bool)

(assert (=> d!905991 (= c!551780 ((_ is Cons!36444) (Cons!36444 (h!41864 tokens!494) Nil!36444)))))

(declare-fun e!2035547 () List!36567)

(assert (=> d!905991 (= (printList!1423 thiss!18206 (Cons!36444 (h!41864 tokens!494) Nil!36444)) e!2035547)))

(declare-fun b!3268516 () Bool)

(assert (=> b!3268516 (= e!2035547 (++!8798 (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))) (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))))

(declare-fun b!3268517 () Bool)

(assert (=> b!3268517 (= e!2035547 Nil!36443)))

(assert (= (and d!905991 c!551780) b!3268516))

(assert (= (and d!905991 (not c!551780)) b!3268517))

(declare-fun m!3570311 () Bool)

(assert (=> b!3268516 m!3570311))

(assert (=> b!3268516 m!3570311))

(declare-fun m!3570313 () Bool)

(assert (=> b!3268516 m!3570313))

(declare-fun m!3570315 () Bool)

(assert (=> b!3268516 m!3570315))

(assert (=> b!3268516 m!3570313))

(assert (=> b!3268516 m!3570315))

(declare-fun m!3570317 () Bool)

(assert (=> b!3268516 m!3570317))

(assert (=> b!3267898 d!905991))

(declare-fun d!905993 () Bool)

(declare-fun lt!1108376 () Bool)

(declare-fun e!2035549 () Bool)

(assert (=> d!905993 (= lt!1108376 e!2035549)))

(declare-fun res!1328335 () Bool)

(assert (=> d!905993 (=> (not res!1328335) (not e!2035549))))

(assert (=> d!905993 (= res!1328335 (= (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)))))) (list!13033 (singletonSeq!2380 (h!41864 tokens!494)))))))

(declare-fun e!2035548 () Bool)

(assert (=> d!905993 (= lt!1108376 e!2035548)))

(declare-fun res!1328333 () Bool)

(assert (=> d!905993 (=> (not res!1328333) (not e!2035548))))

(declare-fun lt!1108375 () tuple2!35920)

(assert (=> d!905993 (= res!1328333 (= (size!27508 (_1!21094 lt!1108375)) 1))))

(assert (=> d!905993 (= lt!1108375 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)))))))

(assert (=> d!905993 (not (isEmpty!20560 rules!2135))))

(assert (=> d!905993 (= (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 (h!41864 tokens!494)) lt!1108376)))

(declare-fun b!3268518 () Bool)

(declare-fun res!1328334 () Bool)

(assert (=> b!3268518 (=> (not res!1328334) (not e!2035548))))

(assert (=> b!3268518 (= res!1328334 (= (apply!8350 (_1!21094 lt!1108375) 0) (h!41864 tokens!494)))))

(declare-fun b!3268519 () Bool)

(assert (=> b!3268519 (= e!2035548 (isEmpty!20568 (_2!21094 lt!1108375)))))

(declare-fun b!3268520 () Bool)

(assert (=> b!3268520 (= e!2035549 (isEmpty!20568 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)))))))))

(assert (= (and d!905993 res!1328333) b!3268518))

(assert (= (and b!3268518 res!1328334) b!3268519))

(assert (= (and d!905993 res!1328335) b!3268520))

(declare-fun m!3570319 () Bool)

(assert (=> d!905993 m!3570319))

(assert (=> d!905993 m!3569499))

(declare-fun m!3570321 () Bool)

(assert (=> d!905993 m!3570321))

(assert (=> d!905993 m!3570321))

(declare-fun m!3570323 () Bool)

(assert (=> d!905993 m!3570323))

(assert (=> d!905993 m!3569453))

(assert (=> d!905993 m!3569499))

(declare-fun m!3570325 () Bool)

(assert (=> d!905993 m!3570325))

(declare-fun m!3570327 () Bool)

(assert (=> d!905993 m!3570327))

(assert (=> d!905993 m!3569499))

(declare-fun m!3570329 () Bool)

(assert (=> b!3268518 m!3570329))

(declare-fun m!3570331 () Bool)

(assert (=> b!3268519 m!3570331))

(assert (=> b!3268520 m!3569499))

(assert (=> b!3268520 m!3569499))

(assert (=> b!3268520 m!3570321))

(assert (=> b!3268520 m!3570321))

(assert (=> b!3268520 m!3570323))

(declare-fun m!3570333 () Bool)

(assert (=> b!3268520 m!3570333))

(assert (=> b!3267881 d!905993))

(declare-fun b!3268531 () Bool)

(declare-fun e!2035556 () Bool)

(declare-fun inv!15 (TokenValue!5514) Bool)

(assert (=> b!3268531 (= e!2035556 (inv!15 (value!171054 (h!41864 tokens!494))))))

(declare-fun d!905995 () Bool)

(declare-fun c!551786 () Bool)

(assert (=> d!905995 (= c!551786 ((_ is IntegerValue!16542) (value!171054 (h!41864 tokens!494))))))

(declare-fun e!2035557 () Bool)

(assert (=> d!905995 (= (inv!21 (value!171054 (h!41864 tokens!494))) e!2035557)))

(declare-fun b!3268532 () Bool)

(declare-fun inv!16 (TokenValue!5514) Bool)

(assert (=> b!3268532 (= e!2035557 (inv!16 (value!171054 (h!41864 tokens!494))))))

(declare-fun b!3268533 () Bool)

(declare-fun res!1328338 () Bool)

(assert (=> b!3268533 (=> res!1328338 e!2035556)))

(assert (=> b!3268533 (= res!1328338 (not ((_ is IntegerValue!16544) (value!171054 (h!41864 tokens!494)))))))

(declare-fun e!2035558 () Bool)

(assert (=> b!3268533 (= e!2035558 e!2035556)))

(declare-fun b!3268534 () Bool)

(assert (=> b!3268534 (= e!2035557 e!2035558)))

(declare-fun c!551785 () Bool)

(assert (=> b!3268534 (= c!551785 ((_ is IntegerValue!16543) (value!171054 (h!41864 tokens!494))))))

(declare-fun b!3268535 () Bool)

(declare-fun inv!17 (TokenValue!5514) Bool)

(assert (=> b!3268535 (= e!2035558 (inv!17 (value!171054 (h!41864 tokens!494))))))

(assert (= (and d!905995 c!551786) b!3268532))

(assert (= (and d!905995 (not c!551786)) b!3268534))

(assert (= (and b!3268534 c!551785) b!3268535))

(assert (= (and b!3268534 (not c!551785)) b!3268533))

(assert (= (and b!3268533 (not res!1328338)) b!3268531))

(declare-fun m!3570335 () Bool)

(assert (=> b!3268531 m!3570335))

(declare-fun m!3570337 () Bool)

(assert (=> b!3268532 m!3570337))

(declare-fun m!3570339 () Bool)

(assert (=> b!3268535 m!3570339))

(assert (=> b!3267902 d!905995))

(declare-fun b!3268536 () Bool)

(declare-fun e!2035559 () Bool)

(assert (=> b!3268536 (= e!2035559 (inv!15 (value!171054 separatorToken!241)))))

(declare-fun d!905997 () Bool)

(declare-fun c!551788 () Bool)

(assert (=> d!905997 (= c!551788 ((_ is IntegerValue!16542) (value!171054 separatorToken!241)))))

(declare-fun e!2035560 () Bool)

(assert (=> d!905997 (= (inv!21 (value!171054 separatorToken!241)) e!2035560)))

(declare-fun b!3268537 () Bool)

(assert (=> b!3268537 (= e!2035560 (inv!16 (value!171054 separatorToken!241)))))

(declare-fun b!3268538 () Bool)

(declare-fun res!1328339 () Bool)

(assert (=> b!3268538 (=> res!1328339 e!2035559)))

(assert (=> b!3268538 (= res!1328339 (not ((_ is IntegerValue!16544) (value!171054 separatorToken!241))))))

(declare-fun e!2035561 () Bool)

(assert (=> b!3268538 (= e!2035561 e!2035559)))

(declare-fun b!3268539 () Bool)

(assert (=> b!3268539 (= e!2035560 e!2035561)))

(declare-fun c!551787 () Bool)

(assert (=> b!3268539 (= c!551787 ((_ is IntegerValue!16543) (value!171054 separatorToken!241)))))

(declare-fun b!3268540 () Bool)

(assert (=> b!3268540 (= e!2035561 (inv!17 (value!171054 separatorToken!241)))))

(assert (= (and d!905997 c!551788) b!3268537))

(assert (= (and d!905997 (not c!551788)) b!3268539))

(assert (= (and b!3268539 c!551787) b!3268540))

(assert (= (and b!3268539 (not c!551787)) b!3268538))

(assert (= (and b!3268538 (not res!1328339)) b!3268536))

(declare-fun m!3570341 () Bool)

(assert (=> b!3268536 m!3570341))

(declare-fun m!3570343 () Bool)

(assert (=> b!3268537 m!3570343))

(declare-fun m!3570345 () Bool)

(assert (=> b!3268540 m!3570345))

(assert (=> b!3267880 d!905997))

(declare-fun d!905999 () Bool)

(declare-fun res!1328344 () Bool)

(declare-fun e!2035566 () Bool)

(assert (=> d!905999 (=> res!1328344 e!2035566)))

(assert (=> d!905999 (= res!1328344 ((_ is Nil!36444) tokens!494))))

(assert (=> d!905999 (= (forall!7522 tokens!494 lambda!118615) e!2035566)))

(declare-fun b!3268545 () Bool)

(declare-fun e!2035567 () Bool)

(assert (=> b!3268545 (= e!2035566 e!2035567)))

(declare-fun res!1328345 () Bool)

(assert (=> b!3268545 (=> (not res!1328345) (not e!2035567))))

(assert (=> b!3268545 (= res!1328345 (dynLambda!14876 lambda!118615 (h!41864 tokens!494)))))

(declare-fun b!3268546 () Bool)

(assert (=> b!3268546 (= e!2035567 (forall!7522 (t!247339 tokens!494) lambda!118615))))

(assert (= (and d!905999 (not res!1328344)) b!3268545))

(assert (= (and b!3268545 res!1328345) b!3268546))

(declare-fun b_lambda!90501 () Bool)

(assert (=> (not b_lambda!90501) (not b!3268545)))

(assert (=> b!3268545 m!3569661))

(declare-fun m!3570347 () Bool)

(assert (=> b!3268546 m!3570347))

(assert (=> b!3267882 d!905999))

(declare-fun d!906001 () Bool)

(assert (=> d!906001 (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 (h!41864 tokens!494))))

(declare-fun lt!1108429 () Unit!51218)

(declare-fun choose!19020 (LexerInterface!4873 List!36569 List!36568 Token!9934) Unit!51218)

(assert (=> d!906001 (= lt!1108429 (choose!19020 thiss!18206 rules!2135 tokens!494 (h!41864 tokens!494)))))

(assert (=> d!906001 (not (isEmpty!20560 rules!2135))))

(assert (=> d!906001 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!898 thiss!18206 rules!2135 tokens!494 (h!41864 tokens!494)) lt!1108429)))

(declare-fun bs!545993 () Bool)

(assert (= bs!545993 d!906001))

(assert (=> bs!545993 m!3569517))

(declare-fun m!3570523 () Bool)

(assert (=> bs!545993 m!3570523))

(assert (=> bs!545993 m!3569453))

(assert (=> b!3267903 d!906001))

(declare-fun d!906043 () Bool)

(declare-fun e!2035618 () Bool)

(assert (=> d!906043 e!2035618))

(declare-fun res!1328401 () Bool)

(assert (=> d!906043 (=> (not res!1328401) (not e!2035618))))

(assert (=> d!906043 (= res!1328401 (isDefined!5624 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))))))

(declare-fun lt!1108432 () Unit!51218)

(declare-fun choose!19021 (LexerInterface!4873 List!36569 List!36567 Token!9934) Unit!51218)

(assert (=> d!906043 (= lt!1108432 (choose!19021 thiss!18206 rules!2135 lt!1108158 (h!41864 tokens!494)))))

(assert (=> d!906043 (rulesInvariant!4270 thiss!18206 rules!2135)))

(assert (=> d!906043 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!975 thiss!18206 rules!2135 lt!1108158 (h!41864 tokens!494)) lt!1108432)))

(declare-fun b!3268640 () Bool)

(declare-fun res!1328402 () Bool)

(assert (=> b!3268640 (=> (not res!1328402) (not e!2035618))))

(assert (=> b!3268640 (= res!1328402 (matchR!4665 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))) (list!13032 (charsOf!3300 (h!41864 tokens!494)))))))

(declare-fun b!3268641 () Bool)

(assert (=> b!3268641 (= e!2035618 (= (rule!7766 (h!41864 tokens!494)) (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))

(assert (= (and d!906043 res!1328401) b!3268640))

(assert (= (and b!3268640 res!1328402) b!3268641))

(assert (=> d!906043 m!3569525))

(assert (=> d!906043 m!3569525))

(declare-fun m!3570525 () Bool)

(assert (=> d!906043 m!3570525))

(declare-fun m!3570527 () Bool)

(assert (=> d!906043 m!3570527))

(assert (=> d!906043 m!3569503))

(assert (=> b!3268640 m!3569435))

(assert (=> b!3268640 m!3569525))

(assert (=> b!3268640 m!3569525))

(declare-fun m!3570529 () Bool)

(assert (=> b!3268640 m!3570529))

(assert (=> b!3268640 m!3569435))

(assert (=> b!3268640 m!3569437))

(assert (=> b!3268640 m!3569437))

(declare-fun m!3570531 () Bool)

(assert (=> b!3268640 m!3570531))

(assert (=> b!3268641 m!3569525))

(assert (=> b!3268641 m!3569525))

(assert (=> b!3268641 m!3570529))

(assert (=> b!3267903 d!906043))

(declare-fun d!906045 () Bool)

(assert (=> d!906045 (= (maxPrefixOneRule!1638 thiss!18206 (rule!7766 (h!41864 tokens!494)) lt!1108158) (Some!7256 (tuple2!35919 (Token!9935 (apply!8348 (transformation!5284 (rule!7766 (h!41864 tokens!494))) (seqFromList!3632 lt!1108158)) (rule!7766 (h!41864 tokens!494)) (size!27503 lt!1108158) lt!1108158) Nil!36443)))))

(declare-fun lt!1108450 () Unit!51218)

(declare-fun choose!19022 (LexerInterface!4873 List!36569 List!36567 List!36567 List!36567 Rule!10368) Unit!51218)

(assert (=> d!906045 (= lt!1108450 (choose!19022 thiss!18206 rules!2135 lt!1108158 lt!1108158 Nil!36443 (rule!7766 (h!41864 tokens!494))))))

(assert (=> d!906045 (not (isEmpty!20560 rules!2135))))

(assert (=> d!906045 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!749 thiss!18206 rules!2135 lt!1108158 lt!1108158 Nil!36443 (rule!7766 (h!41864 tokens!494))) lt!1108450)))

(declare-fun bs!545996 () Bool)

(assert (= bs!545996 d!906045))

(assert (=> bs!545996 m!3569453))

(assert (=> bs!545996 m!3569523))

(declare-fun m!3570587 () Bool)

(assert (=> bs!545996 m!3570587))

(assert (=> bs!545996 m!3569527))

(assert (=> bs!545996 m!3569459))

(assert (=> bs!545996 m!3569459))

(declare-fun m!3570589 () Bool)

(assert (=> bs!545996 m!3570589))

(assert (=> b!3267903 d!906045))

(declare-fun d!906055 () Bool)

(declare-fun lt!1108453 () Int)

(assert (=> d!906055 (>= lt!1108453 0)))

(declare-fun e!2035656 () Int)

(assert (=> d!906055 (= lt!1108453 e!2035656)))

(declare-fun c!551814 () Bool)

(assert (=> d!906055 (= c!551814 ((_ is Nil!36443) lt!1108158))))

(assert (=> d!906055 (= (size!27503 lt!1108158) lt!1108453)))

(declare-fun b!3268688 () Bool)

(assert (=> b!3268688 (= e!2035656 0)))

(declare-fun b!3268689 () Bool)

(assert (=> b!3268689 (= e!2035656 (+ 1 (size!27503 (t!247338 lt!1108158))))))

(assert (= (and d!906055 c!551814) b!3268688))

(assert (= (and d!906055 (not c!551814)) b!3268689))

(declare-fun m!3570595 () Bool)

(assert (=> b!3268689 m!3570595))

(assert (=> b!3267903 d!906055))

(declare-fun b!3268729 () Bool)

(declare-fun e!2035679 () Option!7258)

(assert (=> b!3268729 (= e!2035679 (Some!7257 (h!41865 rules!2135)))))

(declare-fun d!906057 () Bool)

(declare-fun e!2035680 () Bool)

(assert (=> d!906057 e!2035680))

(declare-fun res!1328417 () Bool)

(assert (=> d!906057 (=> res!1328417 e!2035680)))

(declare-fun lt!1108461 () Option!7258)

(declare-fun isEmpty!20571 (Option!7258) Bool)

(assert (=> d!906057 (= res!1328417 (isEmpty!20571 lt!1108461))))

(assert (=> d!906057 (= lt!1108461 e!2035679)))

(declare-fun c!551819 () Bool)

(assert (=> d!906057 (= c!551819 (and ((_ is Cons!36445) rules!2135) (= (tag!5824 (h!41865 rules!2135)) (tag!5824 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> d!906057 (rulesInvariant!4270 thiss!18206 rules!2135)))

(assert (=> d!906057 (= (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))) lt!1108461)))

(declare-fun b!3268730 () Bool)

(declare-fun e!2035677 () Option!7258)

(assert (=> b!3268730 (= e!2035679 e!2035677)))

(declare-fun c!551820 () Bool)

(assert (=> b!3268730 (= c!551820 (and ((_ is Cons!36445) rules!2135) (not (= (tag!5824 (h!41865 rules!2135)) (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun b!3268731 () Bool)

(assert (=> b!3268731 (= e!2035677 None!7257)))

(declare-fun b!3268732 () Bool)

(declare-fun lt!1108462 () Unit!51218)

(declare-fun lt!1108460 () Unit!51218)

(assert (=> b!3268732 (= lt!1108462 lt!1108460)))

(assert (=> b!3268732 (rulesInvariant!4270 thiss!18206 (t!247340 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!364 (LexerInterface!4873 Rule!10368 List!36569) Unit!51218)

(assert (=> b!3268732 (= lt!1108460 (lemmaInvariantOnRulesThenOnTail!364 thiss!18206 (h!41865 rules!2135) (t!247340 rules!2135)))))

(assert (=> b!3268732 (= e!2035677 (getRuleFromTag!975 thiss!18206 (t!247340 rules!2135) (tag!5824 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3268733 () Bool)

(declare-fun e!2035678 () Bool)

(assert (=> b!3268733 (= e!2035678 (= (tag!5824 (get!11623 lt!1108461)) (tag!5824 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3268734 () Bool)

(assert (=> b!3268734 (= e!2035680 e!2035678)))

(declare-fun res!1328418 () Bool)

(assert (=> b!3268734 (=> (not res!1328418) (not e!2035678))))

(assert (=> b!3268734 (= res!1328418 (contains!6570 rules!2135 (get!11623 lt!1108461)))))

(assert (= (and d!906057 c!551819) b!3268729))

(assert (= (and d!906057 (not c!551819)) b!3268730))

(assert (= (and b!3268730 c!551820) b!3268732))

(assert (= (and b!3268730 (not c!551820)) b!3268731))

(assert (= (and d!906057 (not res!1328417)) b!3268734))

(assert (= (and b!3268734 res!1328418) b!3268733))

(declare-fun m!3570605 () Bool)

(assert (=> d!906057 m!3570605))

(assert (=> d!906057 m!3569503))

(declare-fun m!3570607 () Bool)

(assert (=> b!3268732 m!3570607))

(declare-fun m!3570609 () Bool)

(assert (=> b!3268732 m!3570609))

(declare-fun m!3570611 () Bool)

(assert (=> b!3268732 m!3570611))

(declare-fun m!3570613 () Bool)

(assert (=> b!3268733 m!3570613))

(assert (=> b!3268734 m!3570613))

(assert (=> b!3268734 m!3570613))

(declare-fun m!3570615 () Bool)

(assert (=> b!3268734 m!3570615))

(assert (=> b!3267903 d!906057))

(declare-fun b!3268735 () Bool)

(declare-fun e!2035683 () Option!7258)

(assert (=> b!3268735 (= e!2035683 (Some!7257 (h!41865 rules!2135)))))

(declare-fun d!906065 () Bool)

(declare-fun e!2035684 () Bool)

(assert (=> d!906065 e!2035684))

(declare-fun res!1328419 () Bool)

(assert (=> d!906065 (=> res!1328419 e!2035684)))

(declare-fun lt!1108464 () Option!7258)

(assert (=> d!906065 (= res!1328419 (isEmpty!20571 lt!1108464))))

(assert (=> d!906065 (= lt!1108464 e!2035683)))

(declare-fun c!551821 () Bool)

(assert (=> d!906065 (= c!551821 (and ((_ is Cons!36445) rules!2135) (= (tag!5824 (h!41865 rules!2135)) (tag!5824 (rule!7766 separatorToken!241)))))))

(assert (=> d!906065 (rulesInvariant!4270 thiss!18206 rules!2135)))

(assert (=> d!906065 (= (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))) lt!1108464)))

(declare-fun b!3268736 () Bool)

(declare-fun e!2035681 () Option!7258)

(assert (=> b!3268736 (= e!2035683 e!2035681)))

(declare-fun c!551822 () Bool)

(assert (=> b!3268736 (= c!551822 (and ((_ is Cons!36445) rules!2135) (not (= (tag!5824 (h!41865 rules!2135)) (tag!5824 (rule!7766 separatorToken!241))))))))

(declare-fun b!3268737 () Bool)

(assert (=> b!3268737 (= e!2035681 None!7257)))

(declare-fun b!3268738 () Bool)

(declare-fun lt!1108465 () Unit!51218)

(declare-fun lt!1108463 () Unit!51218)

(assert (=> b!3268738 (= lt!1108465 lt!1108463)))

(assert (=> b!3268738 (rulesInvariant!4270 thiss!18206 (t!247340 rules!2135))))

(assert (=> b!3268738 (= lt!1108463 (lemmaInvariantOnRulesThenOnTail!364 thiss!18206 (h!41865 rules!2135) (t!247340 rules!2135)))))

(assert (=> b!3268738 (= e!2035681 (getRuleFromTag!975 thiss!18206 (t!247340 rules!2135) (tag!5824 (rule!7766 separatorToken!241))))))

(declare-fun b!3268739 () Bool)

(declare-fun e!2035682 () Bool)

(assert (=> b!3268739 (= e!2035682 (= (tag!5824 (get!11623 lt!1108464)) (tag!5824 (rule!7766 separatorToken!241))))))

(declare-fun b!3268740 () Bool)

(assert (=> b!3268740 (= e!2035684 e!2035682)))

(declare-fun res!1328420 () Bool)

(assert (=> b!3268740 (=> (not res!1328420) (not e!2035682))))

(assert (=> b!3268740 (= res!1328420 (contains!6570 rules!2135 (get!11623 lt!1108464)))))

(assert (= (and d!906065 c!551821) b!3268735))

(assert (= (and d!906065 (not c!551821)) b!3268736))

(assert (= (and b!3268736 c!551822) b!3268738))

(assert (= (and b!3268736 (not c!551822)) b!3268737))

(assert (= (and d!906065 (not res!1328419)) b!3268740))

(assert (= (and b!3268740 res!1328420) b!3268739))

(declare-fun m!3570617 () Bool)

(assert (=> d!906065 m!3570617))

(assert (=> d!906065 m!3569503))

(assert (=> b!3268738 m!3570607))

(assert (=> b!3268738 m!3570609))

(declare-fun m!3570619 () Bool)

(assert (=> b!3268738 m!3570619))

(declare-fun m!3570621 () Bool)

(assert (=> b!3268739 m!3570621))

(assert (=> b!3268740 m!3570621))

(assert (=> b!3268740 m!3570621))

(declare-fun m!3570623 () Bool)

(assert (=> b!3268740 m!3570623))

(assert (=> b!3267903 d!906065))

(declare-fun d!906067 () Bool)

(assert (=> d!906067 (= (head!7113 lt!1108142) (h!41863 lt!1108142))))

(assert (=> b!3267903 d!906067))

(declare-fun b!3268759 () Bool)

(declare-fun e!2035693 () Option!7257)

(declare-datatypes ((tuple2!35924 0))(
  ( (tuple2!35925 (_1!21096 List!36567) (_2!21096 List!36567)) )
))
(declare-fun lt!1108480 () tuple2!35924)

(assert (=> b!3268759 (= e!2035693 (Some!7256 (tuple2!35919 (Token!9935 (apply!8348 (transformation!5284 (rule!7766 (h!41864 tokens!494))) (seqFromList!3632 (_1!21096 lt!1108480))) (rule!7766 (h!41864 tokens!494)) (size!27509 (seqFromList!3632 (_1!21096 lt!1108480))) (_1!21096 lt!1108480)) (_2!21096 lt!1108480))))))

(declare-fun lt!1108476 () Unit!51218)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!818 (Regex!10043 List!36567) Unit!51218)

(assert (=> b!3268759 (= lt!1108476 (longestMatchIsAcceptedByMatchOrIsEmpty!818 (regex!5284 (rule!7766 (h!41864 tokens!494))) lt!1108158))))

(declare-fun res!1328440 () Bool)

(declare-fun findLongestMatchInner!845 (Regex!10043 List!36567 Int List!36567 List!36567 Int) tuple2!35924)

(assert (=> b!3268759 (= res!1328440 (isEmpty!20562 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))

(declare-fun e!2035694 () Bool)

(assert (=> b!3268759 (=> res!1328440 e!2035694)))

(assert (=> b!3268759 e!2035694))

(declare-fun lt!1108478 () Unit!51218)

(assert (=> b!3268759 (= lt!1108478 lt!1108476)))

(declare-fun lt!1108479 () Unit!51218)

(declare-fun lemmaSemiInverse!1191 (TokenValueInjection!10456 BalanceConc!21500) Unit!51218)

(assert (=> b!3268759 (= lt!1108479 (lemmaSemiInverse!1191 (transformation!5284 (rule!7766 (h!41864 tokens!494))) (seqFromList!3632 (_1!21096 lt!1108480))))))

(declare-fun b!3268760 () Bool)

(declare-fun e!2035696 () Bool)

(declare-fun lt!1108477 () Option!7257)

(assert (=> b!3268760 (= e!2035696 (= (size!27502 (_1!21093 (get!11625 lt!1108477))) (size!27503 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477))))))))

(declare-fun b!3268761 () Bool)

(declare-fun res!1328436 () Bool)

(assert (=> b!3268761 (=> (not res!1328436) (not e!2035696))))

(assert (=> b!3268761 (= res!1328436 (= (value!171054 (_1!21093 (get!11625 lt!1108477))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477)))))))))

(declare-fun b!3268762 () Bool)

(declare-fun res!1328438 () Bool)

(assert (=> b!3268762 (=> (not res!1328438) (not e!2035696))))

(assert (=> b!3268762 (= res!1328438 (< (size!27503 (_2!21093 (get!11625 lt!1108477))) (size!27503 lt!1108158)))))

(declare-fun d!906069 () Bool)

(declare-fun e!2035695 () Bool)

(assert (=> d!906069 e!2035695))

(declare-fun res!1328437 () Bool)

(assert (=> d!906069 (=> res!1328437 e!2035695)))

(assert (=> d!906069 (= res!1328437 (isEmpty!20566 lt!1108477))))

(assert (=> d!906069 (= lt!1108477 e!2035693)))

(declare-fun c!551825 () Bool)

(assert (=> d!906069 (= c!551825 (isEmpty!20562 (_1!21096 lt!1108480)))))

(declare-fun findLongestMatch!760 (Regex!10043 List!36567) tuple2!35924)

(assert (=> d!906069 (= lt!1108480 (findLongestMatch!760 (regex!5284 (rule!7766 (h!41864 tokens!494))) lt!1108158))))

(declare-fun ruleValid!1666 (LexerInterface!4873 Rule!10368) Bool)

(assert (=> d!906069 (ruleValid!1666 thiss!18206 (rule!7766 (h!41864 tokens!494)))))

(assert (=> d!906069 (= (maxPrefixOneRule!1638 thiss!18206 (rule!7766 (h!41864 tokens!494)) lt!1108158) lt!1108477)))

(declare-fun b!3268763 () Bool)

(declare-fun res!1328439 () Bool)

(assert (=> b!3268763 (=> (not res!1328439) (not e!2035696))))

(assert (=> b!3268763 (= res!1328439 (= (rule!7766 (_1!21093 (get!11625 lt!1108477))) (rule!7766 (h!41864 tokens!494))))))

(declare-fun b!3268764 () Bool)

(assert (=> b!3268764 (= e!2035694 (matchR!4665 (regex!5284 (rule!7766 (h!41864 tokens!494))) (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))

(declare-fun b!3268765 () Bool)

(assert (=> b!3268765 (= e!2035695 e!2035696)))

(declare-fun res!1328441 () Bool)

(assert (=> b!3268765 (=> (not res!1328441) (not e!2035696))))

(assert (=> b!3268765 (= res!1328441 (matchR!4665 (regex!5284 (rule!7766 (h!41864 tokens!494))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))))))

(declare-fun b!3268766 () Bool)

(declare-fun res!1328435 () Bool)

(assert (=> b!3268766 (=> (not res!1328435) (not e!2035696))))

(assert (=> b!3268766 (= res!1328435 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477)))) (_2!21093 (get!11625 lt!1108477))) lt!1108158))))

(declare-fun b!3268767 () Bool)

(assert (=> b!3268767 (= e!2035693 None!7256)))

(assert (= (and d!906069 c!551825) b!3268767))

(assert (= (and d!906069 (not c!551825)) b!3268759))

(assert (= (and b!3268759 (not res!1328440)) b!3268764))

(assert (= (and d!906069 (not res!1328437)) b!3268765))

(assert (= (and b!3268765 res!1328441) b!3268766))

(assert (= (and b!3268766 res!1328435) b!3268762))

(assert (= (and b!3268762 res!1328438) b!3268763))

(assert (= (and b!3268763 res!1328439) b!3268761))

(assert (= (and b!3268761 res!1328436) b!3268760))

(declare-fun m!3570625 () Bool)

(assert (=> b!3268760 m!3570625))

(declare-fun m!3570627 () Bool)

(assert (=> b!3268760 m!3570627))

(assert (=> b!3268763 m!3570625))

(declare-fun m!3570629 () Bool)

(assert (=> b!3268764 m!3570629))

(assert (=> b!3268764 m!3569527))

(assert (=> b!3268764 m!3570629))

(assert (=> b!3268764 m!3569527))

(declare-fun m!3570631 () Bool)

(assert (=> b!3268764 m!3570631))

(declare-fun m!3570633 () Bool)

(assert (=> b!3268764 m!3570633))

(declare-fun m!3570635 () Bool)

(assert (=> d!906069 m!3570635))

(declare-fun m!3570637 () Bool)

(assert (=> d!906069 m!3570637))

(declare-fun m!3570639 () Bool)

(assert (=> d!906069 m!3570639))

(declare-fun m!3570641 () Bool)

(assert (=> d!906069 m!3570641))

(declare-fun m!3570643 () Bool)

(assert (=> b!3268759 m!3570643))

(declare-fun m!3570645 () Bool)

(assert (=> b!3268759 m!3570645))

(declare-fun m!3570647 () Bool)

(assert (=> b!3268759 m!3570647))

(declare-fun m!3570649 () Bool)

(assert (=> b!3268759 m!3570649))

(assert (=> b!3268759 m!3570645))

(declare-fun m!3570651 () Bool)

(assert (=> b!3268759 m!3570651))

(assert (=> b!3268759 m!3570629))

(assert (=> b!3268759 m!3570645))

(assert (=> b!3268759 m!3570645))

(declare-fun m!3570653 () Bool)

(assert (=> b!3268759 m!3570653))

(assert (=> b!3268759 m!3570629))

(assert (=> b!3268759 m!3569527))

(assert (=> b!3268759 m!3570631))

(assert (=> b!3268759 m!3569527))

(assert (=> b!3268762 m!3570625))

(declare-fun m!3570655 () Bool)

(assert (=> b!3268762 m!3570655))

(assert (=> b!3268762 m!3569527))

(assert (=> b!3268765 m!3570625))

(declare-fun m!3570657 () Bool)

(assert (=> b!3268765 m!3570657))

(assert (=> b!3268765 m!3570657))

(declare-fun m!3570659 () Bool)

(assert (=> b!3268765 m!3570659))

(assert (=> b!3268765 m!3570659))

(declare-fun m!3570661 () Bool)

(assert (=> b!3268765 m!3570661))

(assert (=> b!3268761 m!3570625))

(declare-fun m!3570663 () Bool)

(assert (=> b!3268761 m!3570663))

(assert (=> b!3268761 m!3570663))

(declare-fun m!3570665 () Bool)

(assert (=> b!3268761 m!3570665))

(assert (=> b!3268766 m!3570625))

(assert (=> b!3268766 m!3570657))

(assert (=> b!3268766 m!3570657))

(assert (=> b!3268766 m!3570659))

(assert (=> b!3268766 m!3570659))

(declare-fun m!3570667 () Bool)

(assert (=> b!3268766 m!3570667))

(assert (=> b!3267903 d!906069))

(declare-fun d!906071 () Bool)

(assert (=> d!906071 (= (isEmpty!20562 (getSuffix!1408 lt!1108158 lt!1108158)) ((_ is Nil!36443) (getSuffix!1408 lt!1108158 lt!1108158)))))

(assert (=> b!3267903 d!906071))

(declare-fun d!906073 () Bool)

(assert (=> d!906073 (= (isDefined!5624 lt!1108156) (not (isEmpty!20571 lt!1108156)))))

(declare-fun bs!546000 () Bool)

(assert (= bs!546000 d!906073))

(declare-fun m!3570669 () Bool)

(assert (=> bs!546000 m!3570669))

(assert (=> b!3267903 d!906073))

(declare-fun b!3268769 () Bool)

(declare-fun e!2035699 () List!36567)

(declare-fun call!236863 () List!36567)

(assert (=> b!3268769 (= e!2035699 call!236863)))

(declare-fun b!3268770 () Bool)

(declare-fun e!2035697 () List!36567)

(assert (=> b!3268770 (= e!2035697 e!2035699)))

(declare-fun c!551826 () Bool)

(assert (=> b!3268770 (= c!551826 ((_ is Union!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun b!3268771 () Bool)

(declare-fun e!2035700 () List!36567)

(declare-fun e!2035698 () List!36567)

(assert (=> b!3268771 (= e!2035700 e!2035698)))

(declare-fun c!551828 () Bool)

(assert (=> b!3268771 (= c!551828 ((_ is ElementMatch!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun b!3268772 () Bool)

(assert (=> b!3268772 (= e!2035698 (Cons!36443 (c!551638 (regex!5284 (rule!7766 separatorToken!241))) Nil!36443))))

(declare-fun b!3268773 () Bool)

(assert (=> b!3268773 (= e!2035700 Nil!36443)))

(declare-fun bm!236856 () Bool)

(declare-fun call!236862 () List!36567)

(assert (=> bm!236856 (= call!236862 (usedCharacters!586 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))))))

(declare-fun b!3268774 () Bool)

(assert (=> b!3268774 (= e!2035699 call!236863)))

(declare-fun b!3268768 () Bool)

(declare-fun c!551829 () Bool)

(assert (=> b!3268768 (= c!551829 ((_ is Star!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(assert (=> b!3268768 (= e!2035698 e!2035697)))

(declare-fun d!906075 () Bool)

(declare-fun c!551827 () Bool)

(assert (=> d!906075 (= c!551827 (or ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 separatorToken!241))) ((_ is EmptyLang!10043) (regex!5284 (rule!7766 separatorToken!241)))))))

(assert (=> d!906075 (= (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241))) e!2035700)))

(declare-fun bm!236857 () Bool)

(declare-fun call!236864 () List!36567)

(declare-fun call!236861 () List!36567)

(assert (=> bm!236857 (= call!236864 call!236861)))

(declare-fun bm!236858 () Bool)

(assert (=> bm!236858 (= call!236863 (++!8798 (ite c!551826 call!236862 call!236864) (ite c!551826 call!236864 call!236862)))))

(declare-fun bm!236859 () Bool)

(assert (=> bm!236859 (= call!236861 (usedCharacters!586 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))

(declare-fun b!3268775 () Bool)

(assert (=> b!3268775 (= e!2035697 call!236861)))

(assert (= (and d!906075 c!551827) b!3268773))

(assert (= (and d!906075 (not c!551827)) b!3268771))

(assert (= (and b!3268771 c!551828) b!3268772))

(assert (= (and b!3268771 (not c!551828)) b!3268768))

(assert (= (and b!3268768 c!551829) b!3268775))

(assert (= (and b!3268768 (not c!551829)) b!3268770))

(assert (= (and b!3268770 c!551826) b!3268774))

(assert (= (and b!3268770 (not c!551826)) b!3268769))

(assert (= (or b!3268774 b!3268769) bm!236857))

(assert (= (or b!3268774 b!3268769) bm!236856))

(assert (= (or b!3268774 b!3268769) bm!236858))

(assert (= (or b!3268775 bm!236857) bm!236859))

(declare-fun m!3570671 () Bool)

(assert (=> bm!236856 m!3570671))

(declare-fun m!3570673 () Bool)

(assert (=> bm!236858 m!3570673))

(declare-fun m!3570675 () Bool)

(assert (=> bm!236859 m!3570675))

(assert (=> b!3267903 d!906075))

(declare-fun d!906077 () Bool)

(declare-fun dynLambda!14885 (Int BalanceConc!21500) TokenValue!5514)

(assert (=> d!906077 (= (apply!8348 (transformation!5284 (rule!7766 (h!41864 tokens!494))) lt!1108144) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144))))

(declare-fun b_lambda!90527 () Bool)

(assert (=> (not b_lambda!90527) (not d!906077)))

(declare-fun t!247399 () Bool)

(declare-fun tb!165593 () Bool)

(assert (=> (and b!3267900 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247399) tb!165593))

(declare-fun result!208276 () Bool)

(assert (=> tb!165593 (= result!208276 (inv!21 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144)))))

(declare-fun m!3570677 () Bool)

(assert (=> tb!165593 m!3570677))

(assert (=> d!906077 t!247399))

(declare-fun b_and!221313 () Bool)

(assert (= b_and!221239 (and (=> t!247399 result!208276) b_and!221313)))

(declare-fun t!247401 () Bool)

(declare-fun tb!165595 () Bool)

(assert (=> (and b!3267901 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247401) tb!165595))

(declare-fun result!208280 () Bool)

(assert (= result!208280 result!208276))

(assert (=> d!906077 t!247401))

(declare-fun b_and!221315 () Bool)

(assert (= b_and!221243 (and (=> t!247401 result!208280) b_and!221315)))

(declare-fun tb!165597 () Bool)

(declare-fun t!247403 () Bool)

(assert (=> (and b!3267911 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247403) tb!165597))

(declare-fun result!208282 () Bool)

(assert (= result!208282 result!208276))

(assert (=> d!906077 t!247403))

(declare-fun b_and!221317 () Bool)

(assert (= b_and!221247 (and (=> t!247403 result!208282) b_and!221317)))

(declare-fun m!3570679 () Bool)

(assert (=> d!906077 m!3570679))

(assert (=> b!3267903 d!906077))

(declare-fun d!906079 () Bool)

(declare-fun e!2035704 () Bool)

(assert (=> d!906079 e!2035704))

(declare-fun res!1328442 () Bool)

(assert (=> d!906079 (=> (not res!1328442) (not e!2035704))))

(assert (=> d!906079 (= res!1328442 (isDefined!5624 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))))))

(declare-fun lt!1108481 () Unit!51218)

(assert (=> d!906079 (= lt!1108481 (choose!19021 thiss!18206 rules!2135 lt!1108142 separatorToken!241))))

(assert (=> d!906079 (rulesInvariant!4270 thiss!18206 rules!2135)))

(assert (=> d!906079 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!975 thiss!18206 rules!2135 lt!1108142 separatorToken!241) lt!1108481)))

(declare-fun b!3268778 () Bool)

(declare-fun res!1328443 () Bool)

(assert (=> b!3268778 (=> (not res!1328443) (not e!2035704))))

(assert (=> b!3268778 (= res!1328443 (matchR!4665 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))) (list!13032 (charsOf!3300 separatorToken!241))))))

(declare-fun b!3268779 () Bool)

(assert (=> b!3268779 (= e!2035704 (= (rule!7766 separatorToken!241) (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))))))

(assert (= (and d!906079 res!1328442) b!3268778))

(assert (= (and b!3268778 res!1328443) b!3268779))

(assert (=> d!906079 m!3569535))

(assert (=> d!906079 m!3569535))

(declare-fun m!3570681 () Bool)

(assert (=> d!906079 m!3570681))

(declare-fun m!3570683 () Bool)

(assert (=> d!906079 m!3570683))

(assert (=> d!906079 m!3569503))

(assert (=> b!3268778 m!3569507))

(assert (=> b!3268778 m!3569535))

(assert (=> b!3268778 m!3569535))

(declare-fun m!3570685 () Bool)

(assert (=> b!3268778 m!3570685))

(assert (=> b!3268778 m!3569507))

(assert (=> b!3268778 m!3569515))

(assert (=> b!3268778 m!3569515))

(declare-fun m!3570687 () Bool)

(assert (=> b!3268778 m!3570687))

(assert (=> b!3268779 m!3569535))

(assert (=> b!3268779 m!3569535))

(assert (=> b!3268779 m!3570685))

(assert (=> b!3267903 d!906079))

(declare-fun d!906081 () Bool)

(declare-fun lt!1108482 () Bool)

(assert (=> d!906081 (= lt!1108482 (select (content!4944 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))) lt!1108139))))

(declare-fun e!2035706 () Bool)

(assert (=> d!906081 (= lt!1108482 e!2035706)))

(declare-fun res!1328445 () Bool)

(assert (=> d!906081 (=> (not res!1328445) (not e!2035706))))

(assert (=> d!906081 (= res!1328445 ((_ is Cons!36443) (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))))))

(assert (=> d!906081 (= (contains!6567 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241))) lt!1108139) lt!1108482)))

(declare-fun b!3268780 () Bool)

(declare-fun e!2035705 () Bool)

(assert (=> b!3268780 (= e!2035706 e!2035705)))

(declare-fun res!1328444 () Bool)

(assert (=> b!3268780 (=> res!1328444 e!2035705)))

(assert (=> b!3268780 (= res!1328444 (= (h!41863 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))) lt!1108139))))

(declare-fun b!3268781 () Bool)

(assert (=> b!3268781 (= e!2035705 (contains!6567 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))) lt!1108139))))

(assert (= (and d!906081 res!1328445) b!3268780))

(assert (= (and b!3268780 (not res!1328444)) b!3268781))

(assert (=> d!906081 m!3569541))

(declare-fun m!3570689 () Bool)

(assert (=> d!906081 m!3570689))

(declare-fun m!3570691 () Bool)

(assert (=> d!906081 m!3570691))

(declare-fun m!3570693 () Bool)

(assert (=> b!3268781 m!3570693))

(assert (=> b!3267903 d!906081))

(declare-fun d!906083 () Bool)

(assert (=> d!906083 (isEmpty!20562 (getSuffix!1408 lt!1108158 lt!1108158))))

(declare-fun lt!1108485 () Unit!51218)

(declare-fun choose!19024 (List!36567) Unit!51218)

(assert (=> d!906083 (= lt!1108485 (choose!19024 lt!1108158))))

(assert (=> d!906083 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!72 lt!1108158) lt!1108485)))

(declare-fun bs!546001 () Bool)

(assert (= bs!546001 d!906083))

(assert (=> bs!546001 m!3569553))

(assert (=> bs!546001 m!3569553))

(assert (=> bs!546001 m!3569555))

(declare-fun m!3570695 () Bool)

(assert (=> bs!546001 m!3570695))

(assert (=> b!3267903 d!906083))

(declare-fun d!906085 () Bool)

(declare-fun lt!1108488 () List!36567)

(assert (=> d!906085 (= (++!8798 lt!1108158 lt!1108488) lt!1108158)))

(declare-fun e!2035709 () List!36567)

(assert (=> d!906085 (= lt!1108488 e!2035709)))

(declare-fun c!551832 () Bool)

(assert (=> d!906085 (= c!551832 ((_ is Cons!36443) lt!1108158))))

(assert (=> d!906085 (>= (size!27503 lt!1108158) (size!27503 lt!1108158))))

(assert (=> d!906085 (= (getSuffix!1408 lt!1108158 lt!1108158) lt!1108488)))

(declare-fun b!3268786 () Bool)

(assert (=> b!3268786 (= e!2035709 (getSuffix!1408 (tail!5250 lt!1108158) (t!247338 lt!1108158)))))

(declare-fun b!3268787 () Bool)

(assert (=> b!3268787 (= e!2035709 lt!1108158)))

(assert (= (and d!906085 c!551832) b!3268786))

(assert (= (and d!906085 (not c!551832)) b!3268787))

(declare-fun m!3570697 () Bool)

(assert (=> d!906085 m!3570697))

(assert (=> d!906085 m!3569527))

(assert (=> d!906085 m!3569527))

(assert (=> b!3268786 m!3569637))

(assert (=> b!3268786 m!3569637))

(declare-fun m!3570699 () Bool)

(assert (=> b!3268786 m!3570699))

(assert (=> b!3267903 d!906085))

(declare-fun d!906087 () Bool)

(assert (=> d!906087 (= (isDefined!5624 lt!1108140) (not (isEmpty!20571 lt!1108140)))))

(declare-fun bs!546002 () Bool)

(assert (= bs!546002 d!906087))

(declare-fun m!3570701 () Bool)

(assert (=> bs!546002 m!3570701))

(assert (=> b!3267903 d!906087))

(declare-fun b!3268799 () Bool)

(declare-fun e!2035712 () Bool)

(declare-fun tp!1027072 () Bool)

(declare-fun tp!1027071 () Bool)

(assert (=> b!3268799 (= e!2035712 (and tp!1027072 tp!1027071))))

(declare-fun b!3268801 () Bool)

(declare-fun tp!1027069 () Bool)

(declare-fun tp!1027070 () Bool)

(assert (=> b!3268801 (= e!2035712 (and tp!1027069 tp!1027070))))

(assert (=> b!3267905 (= tp!1026994 e!2035712)))

(declare-fun b!3268800 () Bool)

(declare-fun tp!1027073 () Bool)

(assert (=> b!3268800 (= e!2035712 tp!1027073)))

(declare-fun b!3268798 () Bool)

(declare-fun tp_is_empty!17349 () Bool)

(assert (=> b!3268798 (= e!2035712 tp_is_empty!17349)))

(assert (= (and b!3267905 ((_ is ElementMatch!10043) (regex!5284 (h!41865 rules!2135)))) b!3268798))

(assert (= (and b!3267905 ((_ is Concat!15557) (regex!5284 (h!41865 rules!2135)))) b!3268799))

(assert (= (and b!3267905 ((_ is Star!10043) (regex!5284 (h!41865 rules!2135)))) b!3268800))

(assert (= (and b!3267905 ((_ is Union!10043) (regex!5284 (h!41865 rules!2135)))) b!3268801))

(declare-fun b!3268812 () Bool)

(declare-fun b_free!86557 () Bool)

(declare-fun b_next!87261 () Bool)

(assert (=> b!3268812 (= b_free!86557 (not b_next!87261))))

(declare-fun t!247405 () Bool)

(declare-fun tb!165599 () Bool)

(assert (=> (and b!3268812 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247405) tb!165599))

(declare-fun result!208288 () Bool)

(assert (= result!208288 result!208276))

(assert (=> d!906077 t!247405))

(declare-fun tp!1027082 () Bool)

(declare-fun b_and!221319 () Bool)

(assert (=> b!3268812 (= tp!1027082 (and (=> t!247405 result!208288) b_and!221319))))

(declare-fun b_free!86559 () Bool)

(declare-fun b_next!87263 () Bool)

(assert (=> b!3268812 (= b_free!86559 (not b_next!87263))))

(declare-fun tb!165601 () Bool)

(declare-fun t!247407 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247407) tb!165601))

(declare-fun result!208290 () Bool)

(assert (= result!208290 result!208228))

(assert (=> b!3268028 t!247407))

(assert (=> d!905875 t!247407))

(declare-fun t!247409 () Bool)

(declare-fun tb!165603 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) t!247409) tb!165603))

(declare-fun result!208292 () Bool)

(assert (= result!208292 result!208250))

(assert (=> b!3268389 t!247409))

(assert (=> d!905969 t!247409))

(declare-fun b_and!221321 () Bool)

(declare-fun tp!1027084 () Bool)

(assert (=> b!3268812 (= tp!1027084 (and (=> t!247407 result!208290) (=> t!247409 result!208292) b_and!221321))))

(declare-fun e!2035724 () Bool)

(assert (=> b!3268812 (= e!2035724 (and tp!1027082 tp!1027084))))

(declare-fun e!2035723 () Bool)

(declare-fun tp!1027083 () Bool)

(declare-fun b!3268811 () Bool)

(assert (=> b!3268811 (= e!2035723 (and tp!1027083 (inv!49365 (tag!5824 (h!41865 (t!247340 rules!2135)))) (inv!49369 (transformation!5284 (h!41865 (t!247340 rules!2135)))) e!2035724))))

(declare-fun b!3268810 () Bool)

(declare-fun e!2035721 () Bool)

(declare-fun tp!1027085 () Bool)

(assert (=> b!3268810 (= e!2035721 (and e!2035723 tp!1027085))))

(assert (=> b!3267883 (= tp!1026987 e!2035721)))

(assert (= b!3268811 b!3268812))

(assert (= b!3268810 b!3268811))

(assert (= (and b!3267883 ((_ is Cons!36445) (t!247340 rules!2135))) b!3268810))

(declare-fun m!3570703 () Bool)

(assert (=> b!3268811 m!3570703))

(declare-fun m!3570705 () Bool)

(assert (=> b!3268811 m!3570705))

(declare-fun b!3268826 () Bool)

(declare-fun b_free!86561 () Bool)

(declare-fun b_next!87265 () Bool)

(assert (=> b!3268826 (= b_free!86561 (not b_next!87265))))

(declare-fun t!247411 () Bool)

(declare-fun tb!165605 () Bool)

(assert (=> (and b!3268826 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247411) tb!165605))

(declare-fun result!208296 () Bool)

(assert (= result!208296 result!208276))

(assert (=> d!906077 t!247411))

(declare-fun tp!1027099 () Bool)

(declare-fun b_and!221323 () Bool)

(assert (=> b!3268826 (= tp!1027099 (and (=> t!247411 result!208296) b_and!221323))))

(declare-fun b_free!86563 () Bool)

(declare-fun b_next!87267 () Bool)

(assert (=> b!3268826 (= b_free!86563 (not b_next!87267))))

(declare-fun t!247413 () Bool)

(declare-fun tb!165607 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247413) tb!165607))

(declare-fun result!208298 () Bool)

(assert (= result!208298 result!208228))

(assert (=> b!3268028 t!247413))

(assert (=> d!905875 t!247413))

(declare-fun tb!165609 () Bool)

(declare-fun t!247415 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) t!247415) tb!165609))

(declare-fun result!208300 () Bool)

(assert (= result!208300 result!208250))

(assert (=> b!3268389 t!247415))

(assert (=> d!905969 t!247415))

(declare-fun tp!1027098 () Bool)

(declare-fun b_and!221325 () Bool)

(assert (=> b!3268826 (= tp!1027098 (and (=> t!247413 result!208298) (=> t!247415 result!208300) b_and!221325))))

(declare-fun e!2035740 () Bool)

(assert (=> b!3267906 (= tp!1026991 e!2035740)))

(declare-fun e!2035739 () Bool)

(declare-fun tp!1027100 () Bool)

(declare-fun e!2035741 () Bool)

(declare-fun b!3268824 () Bool)

(assert (=> b!3268824 (= e!2035741 (and (inv!21 (value!171054 (h!41864 (t!247339 tokens!494)))) e!2035739 tp!1027100))))

(declare-fun tp!1027097 () Bool)

(declare-fun b!3268823 () Bool)

(assert (=> b!3268823 (= e!2035740 (and (inv!49368 (h!41864 (t!247339 tokens!494))) e!2035741 tp!1027097))))

(declare-fun tp!1027096 () Bool)

(declare-fun e!2035737 () Bool)

(declare-fun b!3268825 () Bool)

(assert (=> b!3268825 (= e!2035739 (and tp!1027096 (inv!49365 (tag!5824 (rule!7766 (h!41864 (t!247339 tokens!494))))) (inv!49369 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) e!2035737))))

(assert (=> b!3268826 (= e!2035737 (and tp!1027099 tp!1027098))))

(assert (= b!3268825 b!3268826))

(assert (= b!3268824 b!3268825))

(assert (= b!3268823 b!3268824))

(assert (= (and b!3267906 ((_ is Cons!36444) (t!247339 tokens!494))) b!3268823))

(declare-fun m!3570707 () Bool)

(assert (=> b!3268824 m!3570707))

(declare-fun m!3570709 () Bool)

(assert (=> b!3268823 m!3570709))

(declare-fun m!3570711 () Bool)

(assert (=> b!3268825 m!3570711))

(declare-fun m!3570713 () Bool)

(assert (=> b!3268825 m!3570713))

(declare-fun b!3268828 () Bool)

(declare-fun e!2035743 () Bool)

(declare-fun tp!1027104 () Bool)

(declare-fun tp!1027103 () Bool)

(assert (=> b!3268828 (= e!2035743 (and tp!1027104 tp!1027103))))

(declare-fun b!3268830 () Bool)

(declare-fun tp!1027101 () Bool)

(declare-fun tp!1027102 () Bool)

(assert (=> b!3268830 (= e!2035743 (and tp!1027101 tp!1027102))))

(assert (=> b!3267916 (= tp!1026990 e!2035743)))

(declare-fun b!3268829 () Bool)

(declare-fun tp!1027105 () Bool)

(assert (=> b!3268829 (= e!2035743 tp!1027105)))

(declare-fun b!3268827 () Bool)

(assert (=> b!3268827 (= e!2035743 tp_is_empty!17349)))

(assert (= (and b!3267916 ((_ is ElementMatch!10043) (regex!5284 (rule!7766 (h!41864 tokens!494))))) b!3268827))

(assert (= (and b!3267916 ((_ is Concat!15557) (regex!5284 (rule!7766 (h!41864 tokens!494))))) b!3268828))

(assert (= (and b!3267916 ((_ is Star!10043) (regex!5284 (rule!7766 (h!41864 tokens!494))))) b!3268829))

(assert (= (and b!3267916 ((_ is Union!10043) (regex!5284 (rule!7766 (h!41864 tokens!494))))) b!3268830))

(declare-fun b!3268835 () Bool)

(declare-fun e!2035746 () Bool)

(declare-fun tp!1027108 () Bool)

(assert (=> b!3268835 (= e!2035746 (and tp_is_empty!17349 tp!1027108))))

(assert (=> b!3267902 (= tp!1026982 e!2035746)))

(assert (= (and b!3267902 ((_ is Cons!36443) (originalCharacters!5998 (h!41864 tokens!494)))) b!3268835))

(declare-fun b!3268836 () Bool)

(declare-fun e!2035747 () Bool)

(declare-fun tp!1027109 () Bool)

(assert (=> b!3268836 (= e!2035747 (and tp_is_empty!17349 tp!1027109))))

(assert (=> b!3267880 (= tp!1026988 e!2035747)))

(assert (= (and b!3267880 ((_ is Cons!36443) (originalCharacters!5998 separatorToken!241))) b!3268836))

(declare-fun b!3268838 () Bool)

(declare-fun e!2035748 () Bool)

(declare-fun tp!1027113 () Bool)

(declare-fun tp!1027112 () Bool)

(assert (=> b!3268838 (= e!2035748 (and tp!1027113 tp!1027112))))

(declare-fun b!3268840 () Bool)

(declare-fun tp!1027110 () Bool)

(declare-fun tp!1027111 () Bool)

(assert (=> b!3268840 (= e!2035748 (and tp!1027110 tp!1027111))))

(assert (=> b!3267892 (= tp!1026985 e!2035748)))

(declare-fun b!3268839 () Bool)

(declare-fun tp!1027114 () Bool)

(assert (=> b!3268839 (= e!2035748 tp!1027114)))

(declare-fun b!3268837 () Bool)

(assert (=> b!3268837 (= e!2035748 tp_is_empty!17349)))

(assert (= (and b!3267892 ((_ is ElementMatch!10043) (regex!5284 (rule!7766 separatorToken!241)))) b!3268837))

(assert (= (and b!3267892 ((_ is Concat!15557) (regex!5284 (rule!7766 separatorToken!241)))) b!3268838))

(assert (= (and b!3267892 ((_ is Star!10043) (regex!5284 (rule!7766 separatorToken!241)))) b!3268839))

(assert (= (and b!3267892 ((_ is Union!10043) (regex!5284 (rule!7766 separatorToken!241)))) b!3268840))

(declare-fun b_lambda!90529 () Bool)

(assert (= b_lambda!90527 (or (and b!3268812 b_free!86557 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267900 b_free!86537) (and b!3268826 b_free!86561 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267911 b_free!86545 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267901 b_free!86541 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) b_lambda!90529)))

(declare-fun b_lambda!90531 () Bool)

(assert (= b_lambda!90477 (or b!3267882 b_lambda!90531)))

(declare-fun bs!546003 () Bool)

(declare-fun d!906089 () Bool)

(assert (= bs!546003 (and d!906089 b!3267882)))

(assert (=> bs!546003 (= (dynLambda!14876 lambda!118615 (h!41864 tokens!494)) (not (isSeparator!5284 (rule!7766 (h!41864 tokens!494)))))))

(assert (=> d!905817 d!906089))

(declare-fun b_lambda!90533 () Bool)

(assert (= b_lambda!90491 (or (and b!3267911 b_free!86547 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) (and b!3268826 b_free!86563 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) (and b!3267900 b_free!86539 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) (and b!3267901 b_free!86543) (and b!3268812 b_free!86559 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) b_lambda!90533)))

(declare-fun b_lambda!90535 () Bool)

(assert (= b_lambda!90497 (or (and b!3267911 b_free!86547 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) (and b!3268826 b_free!86563 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) (and b!3267900 b_free!86539 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) (and b!3267901 b_free!86543) (and b!3268812 b_free!86559 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))))) b_lambda!90535)))

(declare-fun b_lambda!90537 () Bool)

(assert (= b_lambda!90495 (or b!3267882 b_lambda!90537)))

(declare-fun bs!546004 () Bool)

(declare-fun d!906091 () Bool)

(assert (= bs!546004 (and d!906091 b!3267882)))

(assert (=> bs!546004 (= (dynLambda!14876 lambda!118615 (h!41864 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))) (not (isSeparator!5284 (rule!7766 (h!41864 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))))))))

(assert (=> b!3268453 d!906091))

(declare-fun b_lambda!90539 () Bool)

(assert (= b_lambda!90483 (or (and b!3268812 b_free!86559 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267911 b_free!86547 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267901 b_free!86543 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267900 b_free!86539) (and b!3268826 b_free!86563 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) b_lambda!90539)))

(declare-fun b_lambda!90541 () Bool)

(assert (= b_lambda!90479 (or (and b!3268812 b_free!86559 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267911 b_free!86547 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267901 b_free!86543 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267900 b_free!86539) (and b!3268826 b_free!86563 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) b_lambda!90541)))

(declare-fun b_lambda!90543 () Bool)

(assert (= b_lambda!90493 (or b!3267882 b_lambda!90543)))

(declare-fun bs!546005 () Bool)

(declare-fun d!906093 () Bool)

(assert (= bs!546005 (and d!906093 b!3267882)))

(assert (=> bs!546005 (= (dynLambda!14876 lambda!118615 (h!41864 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))) (not (isSeparator!5284 (rule!7766 (h!41864 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))))))))

(assert (=> b!3268408 d!906093))

(declare-fun b_lambda!90545 () Bool)

(assert (= b_lambda!90501 (or b!3267882 b_lambda!90545)))

(assert (=> b!3268545 d!906089))

(check-sat (not b!3268167) (not b!3268173) (not b!3267994) (not b!3268445) (not b!3268836) (not b!3268429) (not bm!236832) (not tb!165557) (not b!3268430) (not d!906057) (not b!3268023) (not b!3268093) (not b!3268799) (not b!3268247) (not b!3268734) (not b!3268436) (not d!906065) (not b_next!87263) (not b!3268177) (not b!3268828) (not b!3268225) (not d!905887) (not b!3268166) (not b!3268176) (not d!905993) (not b!3268487) (not d!905837) (not d!905879) (not b!3268457) (not b!3268781) (not d!906079) (not b_next!87245) (not bm!236813) (not b!3268520) b_and!221315 (not d!905821) (not b!3268175) (not b!3268537) (not d!905931) (not b!3268518) (not b!3268477) (not bm!236856) b_and!221287 (not b!3268535) (not b!3268251) (not b!3268778) (not b!3268446) (not b!3268431) (not tb!165593) b_and!221289 (not d!906085) (not b!3268456) (not d!906001) (not b!3268407) (not b!3268413) (not b!3268002) (not d!905851) (not b_next!87261) (not b!3268536) (not b_lambda!90539) (not d!906087) (not b!3268414) (not b!3267992) (not b_next!87241) (not bm!236804) (not b!3267996) (not b!3268733) (not b!3268829) (not d!905853) (not b_next!87247) (not d!906043) (not b!3268786) (not b_next!87251) (not b!3268763) (not bm!236859) b_and!221317 (not b!3268779) (not b!3268811) (not b_lambda!90545) (not b!3268391) (not b!3268226) (not d!905797) (not d!905873) (not d!905945) (not d!905855) (not b!3268825) (not bm!236831) (not b!3268179) (not b!3268182) (not b!3268375) (not b!3268384) (not b!3268178) (not b!3268236) (not bm!236858) (not b!3268532) (not b_lambda!90533) (not b!3268511) (not b!3268189) (not b_lambda!90531) (not b!3268732) (not b!3268183) (not b!3268227) (not b!3268641) b_and!221323 (not bm!236843) (not b!3268232) (not d!906081) (not d!905975) (not b_lambda!90543) (not d!905827) b_and!221319 (not b!3268248) (not b!3268410) (not b!3267998) (not b!3268389) (not b!3268091) (not d!905881) (not b!3268760) (not b_lambda!90537) (not b!3268416) (not b!3268090) (not b!3268839) (not b!3268171) (not b!3268434) (not b!3268761) (not b!3268180) (not b!3268448) (not b!3268519) (not b!3268516) (not b!3268689) (not d!905925) (not b!3268432) (not d!906045) (not b!3268404) (not d!905801) (not b!3268531) (not b_next!87249) (not b!3268824) b_and!221325 (not b!3268170) (not b!3268640) (not b_next!87267) (not b!3268464) (not b!3268233) (not b!3268174) (not b!3268764) (not b!3268546) (not d!905963) (not b!3268838) (not b!3267993) (not tb!165575) (not b_lambda!90541) (not b!3268417) (not b!3268762) (not b!3268440) (not b!3268801) (not d!905977) (not bm!236845) (not b!3268540) (not b!3268028) (not d!905919) (not d!905951) (not d!905947) (not b!3268459) b_and!221313 (not bm!236816) (not d!905885) (not b!3268466) (not b!3268034) (not d!905955) (not d!905967) (not b!3268485) (not b!3268425) (not d!905969) (not bm!236842) (not b_lambda!90535) (not b!3268029) (not b!3268740) (not b!3268449) (not b_next!87265) (not b!3268840) (not bm!236844) (not d!905971) (not d!905989) (not b!3268390) (not d!906083) (not b!3268765) (not d!905935) (not b!3268421) (not b!3268823) (not b!3268168) (not d!906073) (not d!905965) (not b_next!87243) (not d!905941) (not d!905883) (not b!3267933) (not d!905957) (not d!906069) (not d!905973) (not b!3268411) (not d!905875) (not b!3268476) (not b!3268830) (not b!3268766) (not b!3268250) (not d!905825) (not d!905939) (not b!3268800) (not b!3268419) b_and!221321 (not d!905817) b_and!221291 (not b!3268415) (not b!3268738) (not b!3268759) (not d!905929) (not b!3268452) (not b!3268169) (not b_lambda!90529) (not d!905857) (not d!905933) (not b!3268739) tp_is_empty!17349 (not d!905979) (not bm!236815) (not b!3268810) (not b!3268835))
(check-sat (not b_next!87263) b_and!221289 (not b_next!87261) b_and!221323 b_and!221319 (not b_next!87267) b_and!221313 (not b_next!87265) (not b_next!87243) (not b_next!87245) b_and!221287 b_and!221315 (not b_next!87241) (not b_next!87247) (not b_next!87251) b_and!221317 b_and!221325 (not b_next!87249) b_and!221321 b_and!221291)
(get-model)

(declare-fun b!3269550 () Bool)

(declare-fun e!2036155 () List!36567)

(assert (=> b!3269550 (= e!2036155 (++!8798 (list!13035 (left!28379 (c!551639 (charsOf!3300 (h!41864 tokens!494))))) (list!13035 (right!28709 (c!551639 (charsOf!3300 (h!41864 tokens!494)))))))))

(declare-fun b!3269547 () Bool)

(declare-fun e!2036154 () List!36567)

(assert (=> b!3269547 (= e!2036154 e!2036155)))

(declare-fun c!552049 () Bool)

(assert (=> b!3269547 (= c!552049 ((_ is Leaf!17196) (c!551639 (charsOf!3300 (h!41864 tokens!494)))))))

(declare-fun d!906507 () Bool)

(declare-fun c!552048 () Bool)

(assert (=> d!906507 (= c!552048 ((_ is Empty!10943) (c!551639 (charsOf!3300 (h!41864 tokens!494)))))))

(assert (=> d!906507 (= (list!13035 (c!551639 (charsOf!3300 (h!41864 tokens!494)))) e!2036154)))

(declare-fun b!3269546 () Bool)

(assert (=> b!3269546 (= e!2036154 Nil!36443)))

(declare-fun b!3269549 () Bool)

(declare-fun list!13040 (IArray!21891) List!36567)

(assert (=> b!3269549 (= e!2036155 (list!13040 (xs!14075 (c!551639 (charsOf!3300 (h!41864 tokens!494))))))))

(assert (= (and d!906507 c!552048) b!3269546))

(assert (= (and d!906507 (not c!552048)) b!3269547))

(assert (= (and b!3269547 c!552049) b!3269549))

(assert (= (and b!3269547 (not c!552049)) b!3269550))

(declare-fun m!3572069 () Bool)

(assert (=> b!3269550 m!3572069))

(declare-fun m!3572071 () Bool)

(assert (=> b!3269550 m!3572071))

(assert (=> b!3269550 m!3572069))

(assert (=> b!3269550 m!3572071))

(declare-fun m!3572073 () Bool)

(assert (=> b!3269550 m!3572073))

(declare-fun m!3572075 () Bool)

(assert (=> b!3269549 m!3572075))

(assert (=> d!905873 d!906507))

(declare-fun d!906525 () Bool)

(declare-fun lt!1108953 () Bool)

(assert (=> d!906525 (= lt!1108953 (isEmpty!20562 (list!13032 (_2!21094 lt!1108280))))))

(declare-fun isEmpty!20573 (Conc!10943) Bool)

(assert (=> d!906525 (= lt!1108953 (isEmpty!20573 (c!551639 (_2!21094 lt!1108280))))))

(assert (=> d!906525 (= (isEmpty!20568 (_2!21094 lt!1108280)) lt!1108953)))

(declare-fun bs!546077 () Bool)

(assert (= bs!546077 d!906525))

(declare-fun m!3572097 () Bool)

(assert (=> bs!546077 m!3572097))

(assert (=> bs!546077 m!3572097))

(declare-fun m!3572101 () Bool)

(assert (=> bs!546077 m!3572101))

(declare-fun m!3572103 () Bool)

(assert (=> bs!546077 m!3572103))

(assert (=> b!3268226 d!906525))

(declare-fun b!3269559 () Bool)

(declare-fun e!2036162 () Bool)

(declare-fun lt!1108956 () tuple2!35916)

(assert (=> b!3269559 (= e!2036162 (= (_2!21092 lt!1108956) (_2!21093 (v!35952 lt!1108337))))))

(declare-fun b!3269560 () Bool)

(declare-fun e!2036163 () Bool)

(assert (=> b!3269560 (= e!2036163 (not (isEmpty!20561 (_1!21092 lt!1108956))))))

(declare-fun b!3269561 () Bool)

(assert (=> b!3269561 (= e!2036162 e!2036163)))

(declare-fun res!1328721 () Bool)

(assert (=> b!3269561 (= res!1328721 (< (size!27503 (_2!21092 lt!1108956)) (size!27503 (_2!21093 (v!35952 lt!1108337)))))))

(assert (=> b!3269561 (=> (not res!1328721) (not e!2036163))))

(declare-fun d!906539 () Bool)

(assert (=> d!906539 e!2036162))

(declare-fun c!552052 () Bool)

(assert (=> d!906539 (= c!552052 (> (size!27506 (_1!21092 lt!1108956)) 0))))

(declare-fun e!2036164 () tuple2!35916)

(assert (=> d!906539 (= lt!1108956 e!2036164)))

(declare-fun c!552053 () Bool)

(declare-fun lt!1108955 () Option!7257)

(assert (=> d!906539 (= c!552053 ((_ is Some!7256) lt!1108955))))

(assert (=> d!906539 (= lt!1108955 (maxPrefix!2501 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108337))))))

(assert (=> d!906539 (= (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108337))) lt!1108956)))

(declare-fun b!3269562 () Bool)

(assert (=> b!3269562 (= e!2036164 (tuple2!35917 Nil!36444 (_2!21093 (v!35952 lt!1108337))))))

(declare-fun b!3269563 () Bool)

(declare-fun lt!1108954 () tuple2!35916)

(assert (=> b!3269563 (= e!2036164 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1108955)) (_1!21092 lt!1108954)) (_2!21092 lt!1108954)))))

(assert (=> b!3269563 (= lt!1108954 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108955))))))

(assert (= (and d!906539 c!552053) b!3269563))

(assert (= (and d!906539 (not c!552053)) b!3269562))

(assert (= (and d!906539 c!552052) b!3269561))

(assert (= (and d!906539 (not c!552052)) b!3269559))

(assert (= (and b!3269561 res!1328721) b!3269560))

(declare-fun m!3572115 () Bool)

(assert (=> b!3269560 m!3572115))

(declare-fun m!3572117 () Bool)

(assert (=> b!3269561 m!3572117))

(declare-fun m!3572119 () Bool)

(assert (=> b!3269561 m!3572119))

(declare-fun m!3572121 () Bool)

(assert (=> d!906539 m!3572121))

(declare-fun m!3572123 () Bool)

(assert (=> d!906539 m!3572123))

(declare-fun m!3572125 () Bool)

(assert (=> b!3269563 m!3572125))

(assert (=> b!3268459 d!906539))

(declare-fun d!906547 () Bool)

(declare-fun lt!1108960 () List!36567)

(assert (=> d!906547 (= (++!8798 (t!247338 lt!1108158) lt!1108960) (tail!5250 lt!1108158))))

(declare-fun e!2036168 () List!36567)

(assert (=> d!906547 (= lt!1108960 e!2036168)))

(declare-fun c!552055 () Bool)

(assert (=> d!906547 (= c!552055 ((_ is Cons!36443) (t!247338 lt!1108158)))))

(assert (=> d!906547 (>= (size!27503 (tail!5250 lt!1108158)) (size!27503 (t!247338 lt!1108158)))))

(assert (=> d!906547 (= (getSuffix!1408 (tail!5250 lt!1108158) (t!247338 lt!1108158)) lt!1108960)))

(declare-fun b!3269568 () Bool)

(assert (=> b!3269568 (= e!2036168 (getSuffix!1408 (tail!5250 (tail!5250 lt!1108158)) (t!247338 (t!247338 lt!1108158))))))

(declare-fun b!3269569 () Bool)

(assert (=> b!3269569 (= e!2036168 (tail!5250 lt!1108158))))

(assert (= (and d!906547 c!552055) b!3269568))

(assert (= (and d!906547 (not c!552055)) b!3269569))

(declare-fun m!3572129 () Bool)

(assert (=> d!906547 m!3572129))

(assert (=> d!906547 m!3569637))

(declare-fun m!3572131 () Bool)

(assert (=> d!906547 m!3572131))

(assert (=> d!906547 m!3570595))

(assert (=> b!3269568 m!3569637))

(declare-fun m!3572133 () Bool)

(assert (=> b!3269568 m!3572133))

(assert (=> b!3269568 m!3572133))

(declare-fun m!3572135 () Bool)

(assert (=> b!3269568 m!3572135))

(assert (=> b!3268786 d!906547))

(declare-fun d!906551 () Bool)

(assert (=> d!906551 (= (tail!5250 lt!1108158) (t!247338 lt!1108158))))

(assert (=> b!3268786 d!906551))

(declare-fun b!3269579 () Bool)

(declare-fun e!2036172 () Option!7257)

(declare-fun lt!1108970 () tuple2!35924)

(assert (=> b!3269579 (= e!2036172 (Some!7256 (tuple2!35919 (Token!9935 (apply!8348 (transformation!5284 (h!41865 rules!2135)) (seqFromList!3632 (_1!21096 lt!1108970))) (h!41865 rules!2135) (size!27509 (seqFromList!3632 (_1!21096 lt!1108970))) (_1!21096 lt!1108970)) (_2!21096 lt!1108970))))))

(declare-fun lt!1108966 () Unit!51218)

(assert (=> b!3269579 (= lt!1108966 (longestMatchIsAcceptedByMatchOrIsEmpty!818 (regex!5284 (h!41865 rules!2135)) lt!1108146))))

(declare-fun res!1328736 () Bool)

(assert (=> b!3269579 (= res!1328736 (isEmpty!20562 (_1!21096 (findLongestMatchInner!845 (regex!5284 (h!41865 rules!2135)) Nil!36443 (size!27503 Nil!36443) lt!1108146 lt!1108146 (size!27503 lt!1108146)))))))

(declare-fun e!2036173 () Bool)

(assert (=> b!3269579 (=> res!1328736 e!2036173)))

(assert (=> b!3269579 e!2036173))

(declare-fun lt!1108968 () Unit!51218)

(assert (=> b!3269579 (= lt!1108968 lt!1108966)))

(declare-fun lt!1108969 () Unit!51218)

(assert (=> b!3269579 (= lt!1108969 (lemmaSemiInverse!1191 (transformation!5284 (h!41865 rules!2135)) (seqFromList!3632 (_1!21096 lt!1108970))))))

(declare-fun b!3269580 () Bool)

(declare-fun e!2036175 () Bool)

(declare-fun lt!1108967 () Option!7257)

(assert (=> b!3269580 (= e!2036175 (= (size!27502 (_1!21093 (get!11625 lt!1108967))) (size!27503 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108967))))))))

(declare-fun b!3269581 () Bool)

(declare-fun res!1328732 () Bool)

(assert (=> b!3269581 (=> (not res!1328732) (not e!2036175))))

(assert (=> b!3269581 (= res!1328732 (= (value!171054 (_1!21093 (get!11625 lt!1108967))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108967)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108967)))))))))

(declare-fun b!3269582 () Bool)

(declare-fun res!1328734 () Bool)

(assert (=> b!3269582 (=> (not res!1328734) (not e!2036175))))

(assert (=> b!3269582 (= res!1328734 (< (size!27503 (_2!21093 (get!11625 lt!1108967))) (size!27503 lt!1108146)))))

(declare-fun d!906553 () Bool)

(declare-fun e!2036174 () Bool)

(assert (=> d!906553 e!2036174))

(declare-fun res!1328733 () Bool)

(assert (=> d!906553 (=> res!1328733 e!2036174)))

(assert (=> d!906553 (= res!1328733 (isEmpty!20566 lt!1108967))))

(assert (=> d!906553 (= lt!1108967 e!2036172)))

(declare-fun c!552057 () Bool)

(assert (=> d!906553 (= c!552057 (isEmpty!20562 (_1!21096 lt!1108970)))))

(assert (=> d!906553 (= lt!1108970 (findLongestMatch!760 (regex!5284 (h!41865 rules!2135)) lt!1108146))))

(assert (=> d!906553 (ruleValid!1666 thiss!18206 (h!41865 rules!2135))))

(assert (=> d!906553 (= (maxPrefixOneRule!1638 thiss!18206 (h!41865 rules!2135) lt!1108146) lt!1108967)))

(declare-fun b!3269583 () Bool)

(declare-fun res!1328735 () Bool)

(assert (=> b!3269583 (=> (not res!1328735) (not e!2036175))))

(assert (=> b!3269583 (= res!1328735 (= (rule!7766 (_1!21093 (get!11625 lt!1108967))) (h!41865 rules!2135)))))

(declare-fun b!3269584 () Bool)

(assert (=> b!3269584 (= e!2036173 (matchR!4665 (regex!5284 (h!41865 rules!2135)) (_1!21096 (findLongestMatchInner!845 (regex!5284 (h!41865 rules!2135)) Nil!36443 (size!27503 Nil!36443) lt!1108146 lt!1108146 (size!27503 lt!1108146)))))))

(declare-fun b!3269585 () Bool)

(assert (=> b!3269585 (= e!2036174 e!2036175)))

(declare-fun res!1328737 () Bool)

(assert (=> b!3269585 (=> (not res!1328737) (not e!2036175))))

(assert (=> b!3269585 (= res!1328737 (matchR!4665 (regex!5284 (h!41865 rules!2135)) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108967))))))))

(declare-fun b!3269586 () Bool)

(declare-fun res!1328731 () Bool)

(assert (=> b!3269586 (=> (not res!1328731) (not e!2036175))))

(assert (=> b!3269586 (= res!1328731 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108967)))) (_2!21093 (get!11625 lt!1108967))) lt!1108146))))

(declare-fun b!3269587 () Bool)

(assert (=> b!3269587 (= e!2036172 None!7256)))

(assert (= (and d!906553 c!552057) b!3269587))

(assert (= (and d!906553 (not c!552057)) b!3269579))

(assert (= (and b!3269579 (not res!1328736)) b!3269584))

(assert (= (and d!906553 (not res!1328733)) b!3269585))

(assert (= (and b!3269585 res!1328737) b!3269586))

(assert (= (and b!3269586 res!1328731) b!3269582))

(assert (= (and b!3269582 res!1328734) b!3269583))

(assert (= (and b!3269583 res!1328735) b!3269581))

(assert (= (and b!3269581 res!1328732) b!3269580))

(declare-fun m!3572167 () Bool)

(assert (=> b!3269580 m!3572167))

(declare-fun m!3572169 () Bool)

(assert (=> b!3269580 m!3572169))

(assert (=> b!3269583 m!3572167))

(assert (=> b!3269584 m!3570629))

(assert (=> b!3269584 m!3569789))

(assert (=> b!3269584 m!3570629))

(assert (=> b!3269584 m!3569789))

(declare-fun m!3572171 () Bool)

(assert (=> b!3269584 m!3572171))

(declare-fun m!3572173 () Bool)

(assert (=> b!3269584 m!3572173))

(declare-fun m!3572175 () Bool)

(assert (=> d!906553 m!3572175))

(declare-fun m!3572177 () Bool)

(assert (=> d!906553 m!3572177))

(declare-fun m!3572179 () Bool)

(assert (=> d!906553 m!3572179))

(declare-fun m!3572181 () Bool)

(assert (=> d!906553 m!3572181))

(declare-fun m!3572183 () Bool)

(assert (=> b!3269579 m!3572183))

(declare-fun m!3572185 () Bool)

(assert (=> b!3269579 m!3572185))

(declare-fun m!3572187 () Bool)

(assert (=> b!3269579 m!3572187))

(declare-fun m!3572189 () Bool)

(assert (=> b!3269579 m!3572189))

(assert (=> b!3269579 m!3572185))

(declare-fun m!3572191 () Bool)

(assert (=> b!3269579 m!3572191))

(assert (=> b!3269579 m!3570629))

(assert (=> b!3269579 m!3572185))

(assert (=> b!3269579 m!3572185))

(declare-fun m!3572197 () Bool)

(assert (=> b!3269579 m!3572197))

(assert (=> b!3269579 m!3570629))

(assert (=> b!3269579 m!3569789))

(assert (=> b!3269579 m!3572171))

(assert (=> b!3269579 m!3569789))

(assert (=> b!3269582 m!3572167))

(declare-fun m!3572205 () Bool)

(assert (=> b!3269582 m!3572205))

(assert (=> b!3269582 m!3569789))

(assert (=> b!3269585 m!3572167))

(declare-fun m!3572207 () Bool)

(assert (=> b!3269585 m!3572207))

(assert (=> b!3269585 m!3572207))

(declare-fun m!3572209 () Bool)

(assert (=> b!3269585 m!3572209))

(assert (=> b!3269585 m!3572209))

(declare-fun m!3572211 () Bool)

(assert (=> b!3269585 m!3572211))

(assert (=> b!3269581 m!3572167))

(declare-fun m!3572213 () Bool)

(assert (=> b!3269581 m!3572213))

(assert (=> b!3269581 m!3572213))

(declare-fun m!3572215 () Bool)

(assert (=> b!3269581 m!3572215))

(assert (=> b!3269586 m!3572167))

(assert (=> b!3269586 m!3572207))

(assert (=> b!3269586 m!3572207))

(assert (=> b!3269586 m!3572209))

(assert (=> b!3269586 m!3572209))

(declare-fun m!3572217 () Bool)

(assert (=> b!3269586 m!3572217))

(assert (=> bm!236831 d!906553))

(declare-fun d!906559 () Bool)

(declare-fun charsToBigInt!1 (List!36566) Int)

(assert (=> d!906559 (= (inv!17 (value!171054 separatorToken!241)) (= (charsToBigInt!1 (text!39046 (value!171054 separatorToken!241))) (value!171046 (value!171054 separatorToken!241))))))

(declare-fun bs!546081 () Bool)

(assert (= bs!546081 d!906559))

(declare-fun m!3572235 () Bool)

(assert (=> bs!546081 m!3572235))

(assert (=> b!3268540 d!906559))

(declare-fun d!906569 () Bool)

(declare-fun lt!1108975 () Int)

(assert (=> d!906569 (= lt!1108975 (size!27506 (list!13033 (_1!21094 lt!1108292))))))

(declare-fun size!27512 (Conc!10944) Int)

(assert (=> d!906569 (= lt!1108975 (size!27512 (c!551640 (_1!21094 lt!1108292))))))

(assert (=> d!906569 (= (size!27508 (_1!21094 lt!1108292)) lt!1108975)))

(declare-fun bs!546082 () Bool)

(assert (= bs!546082 d!906569))

(assert (=> bs!546082 m!3569925))

(assert (=> bs!546082 m!3569925))

(declare-fun m!3572245 () Bool)

(assert (=> bs!546082 m!3572245))

(declare-fun m!3572247 () Bool)

(assert (=> bs!546082 m!3572247))

(assert (=> d!905883 d!906569))

(declare-fun d!906575 () Bool)

(declare-fun e!2036221 () Bool)

(assert (=> d!906575 e!2036221))

(declare-fun res!1328759 () Bool)

(assert (=> d!906575 (=> (not res!1328759) (not e!2036221))))

(declare-fun lt!1109080 () tuple2!35920)

(declare-fun lexRec!701 (LexerInterface!4873 List!36569 BalanceConc!21500) tuple2!35920)

(assert (=> d!906575 (= res!1328759 (= (list!13033 (_1!21094 lt!1109080)) (list!13033 (_1!21094 (lexRec!701 thiss!18206 rules!2135 lt!1108144)))))))

(declare-fun e!2036220 () tuple2!35920)

(assert (=> d!906575 (= lt!1109080 e!2036220)))

(declare-fun c!552079 () Bool)

(declare-datatypes ((tuple2!35928 0))(
  ( (tuple2!35929 (_1!21098 Token!9934) (_2!21098 BalanceConc!21500)) )
))
(declare-datatypes ((Option!7260 0))(
  ( (None!7259) (Some!7259 (v!35969 tuple2!35928)) )
))
(declare-fun lt!1109048 () Option!7260)

(assert (=> d!906575 (= c!552079 ((_ is Some!7259) lt!1109048))))

(declare-fun maxPrefixZipperSequenceV2!488 (LexerInterface!4873 List!36569 BalanceConc!21500 BalanceConc!21500) Option!7260)

(assert (=> d!906575 (= lt!1109048 (maxPrefixZipperSequenceV2!488 thiss!18206 rules!2135 lt!1108144 lt!1108144))))

(declare-fun lt!1109062 () Unit!51218)

(declare-fun lt!1109064 () Unit!51218)

(assert (=> d!906575 (= lt!1109062 lt!1109064)))

(declare-fun lt!1109052 () List!36567)

(declare-fun lt!1109077 () List!36567)

(declare-fun isSuffix!863 (List!36567 List!36567) Bool)

(assert (=> d!906575 (isSuffix!863 lt!1109052 (++!8798 lt!1109077 lt!1109052))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!548 (List!36567 List!36567) Unit!51218)

(assert (=> d!906575 (= lt!1109064 (lemmaConcatTwoListThenFSndIsSuffix!548 lt!1109077 lt!1109052))))

(assert (=> d!906575 (= lt!1109052 (list!13032 lt!1108144))))

(assert (=> d!906575 (= lt!1109077 (list!13032 (BalanceConc!21501 Empty!10943)))))

(assert (=> d!906575 (= (lexTailRecV2!956 thiss!18206 rules!2135 lt!1108144 (BalanceConc!21501 Empty!10943) lt!1108144 (BalanceConc!21503 Empty!10944)) lt!1109080)))

(declare-fun b!3269654 () Bool)

(assert (=> b!3269654 (= e!2036221 (= (list!13032 (_2!21094 lt!1109080)) (list!13032 (_2!21094 (lexRec!701 thiss!18206 rules!2135 lt!1108144)))))))

(declare-fun lt!1109070 () Option!7260)

(declare-fun b!3269655 () Bool)

(declare-fun lt!1109055 () tuple2!35920)

(assert (=> b!3269655 (= lt!1109055 (lexRec!701 thiss!18206 rules!2135 (_2!21098 (v!35969 lt!1109070))))))

(declare-fun e!2036222 () tuple2!35920)

(declare-fun prepend!1195 (BalanceConc!21502 Token!9934) BalanceConc!21502)

(assert (=> b!3269655 (= e!2036222 (tuple2!35921 (prepend!1195 (_1!21094 lt!1109055) (_1!21098 (v!35969 lt!1109070))) (_2!21094 lt!1109055)))))

(declare-fun b!3269656 () Bool)

(declare-fun e!2036223 () tuple2!35920)

(declare-fun lt!1109056 () BalanceConc!21500)

(assert (=> b!3269656 (= e!2036223 (tuple2!35921 (BalanceConc!21503 Empty!10944) lt!1109056))))

(declare-fun b!3269657 () Bool)

(declare-fun lt!1109079 () BalanceConc!21500)

(declare-fun append!889 (BalanceConc!21502 Token!9934) BalanceConc!21502)

(assert (=> b!3269657 (= e!2036220 (lexTailRecV2!956 thiss!18206 rules!2135 lt!1108144 lt!1109079 (_2!21098 (v!35969 lt!1109048)) (append!889 (BalanceConc!21503 Empty!10944) (_1!21098 (v!35969 lt!1109048)))))))

(declare-fun lt!1109075 () tuple2!35920)

(assert (=> b!3269657 (= lt!1109075 (lexRec!701 thiss!18206 rules!2135 (_2!21098 (v!35969 lt!1109048))))))

(declare-fun lt!1109057 () List!36567)

(assert (=> b!3269657 (= lt!1109057 (list!13032 (BalanceConc!21501 Empty!10943)))))

(declare-fun lt!1109050 () List!36567)

(assert (=> b!3269657 (= lt!1109050 (list!13032 (charsOf!3300 (_1!21098 (v!35969 lt!1109048)))))))

(declare-fun lt!1109066 () List!36567)

(assert (=> b!3269657 (= lt!1109066 (list!13032 (_2!21098 (v!35969 lt!1109048))))))

(declare-fun lt!1109071 () Unit!51218)

(declare-fun lemmaConcatAssociativity!1805 (List!36567 List!36567 List!36567) Unit!51218)

(assert (=> b!3269657 (= lt!1109071 (lemmaConcatAssociativity!1805 lt!1109057 lt!1109050 lt!1109066))))

(assert (=> b!3269657 (= (++!8798 (++!8798 lt!1109057 lt!1109050) lt!1109066) (++!8798 lt!1109057 (++!8798 lt!1109050 lt!1109066)))))

(declare-fun lt!1109074 () Unit!51218)

(assert (=> b!3269657 (= lt!1109074 lt!1109071)))

(declare-fun maxPrefixZipperSequence!1094 (LexerInterface!4873 List!36569 BalanceConc!21500) Option!7260)

(assert (=> b!3269657 (= lt!1109070 (maxPrefixZipperSequence!1094 thiss!18206 rules!2135 lt!1108144))))

(declare-fun c!552080 () Bool)

(assert (=> b!3269657 (= c!552080 ((_ is Some!7259) lt!1109070))))

(assert (=> b!3269657 (= (lexRec!701 thiss!18206 rules!2135 lt!1108144) e!2036222)))

(declare-fun lt!1109067 () Unit!51218)

(declare-fun Unit!51229 () Unit!51218)

(assert (=> b!3269657 (= lt!1109067 Unit!51229)))

(declare-fun lt!1109049 () List!36568)

(assert (=> b!3269657 (= lt!1109049 (list!13033 (BalanceConc!21503 Empty!10944)))))

(declare-fun lt!1109058 () List!36568)

(assert (=> b!3269657 (= lt!1109058 (Cons!36444 (_1!21098 (v!35969 lt!1109048)) Nil!36444))))

(declare-fun lt!1109061 () List!36568)

(assert (=> b!3269657 (= lt!1109061 (list!13033 (_1!21094 lt!1109075)))))

(declare-fun lt!1109072 () Unit!51218)

(declare-fun lemmaConcatAssociativity!1806 (List!36568 List!36568 List!36568) Unit!51218)

(assert (=> b!3269657 (= lt!1109072 (lemmaConcatAssociativity!1806 lt!1109049 lt!1109058 lt!1109061))))

(declare-fun ++!8803 (List!36568 List!36568) List!36568)

(assert (=> b!3269657 (= (++!8803 (++!8803 lt!1109049 lt!1109058) lt!1109061) (++!8803 lt!1109049 (++!8803 lt!1109058 lt!1109061)))))

(declare-fun lt!1109068 () Unit!51218)

(assert (=> b!3269657 (= lt!1109068 lt!1109072)))

(declare-fun lt!1109063 () List!36567)

(assert (=> b!3269657 (= lt!1109063 (++!8798 (list!13032 (BalanceConc!21501 Empty!10943)) (list!13032 (charsOf!3300 (_1!21098 (v!35969 lt!1109048))))))))

(declare-fun lt!1109051 () List!36567)

(assert (=> b!3269657 (= lt!1109051 (list!13032 (_2!21098 (v!35969 lt!1109048))))))

(declare-fun lt!1109069 () List!36568)

(assert (=> b!3269657 (= lt!1109069 (list!13033 (append!889 (BalanceConc!21503 Empty!10944) (_1!21098 (v!35969 lt!1109048)))))))

(declare-fun lt!1109065 () Unit!51218)

(declare-fun lemmaLexThenLexPrefix!466 (LexerInterface!4873 List!36569 List!36567 List!36567 List!36568 List!36568 List!36567) Unit!51218)

(assert (=> b!3269657 (= lt!1109065 (lemmaLexThenLexPrefix!466 thiss!18206 rules!2135 lt!1109063 lt!1109051 lt!1109069 (list!13033 (_1!21094 lt!1109075)) (list!13032 (_2!21094 lt!1109075))))))

(assert (=> b!3269657 (= (lexList!1347 thiss!18206 rules!2135 lt!1109063) (tuple2!35917 lt!1109069 Nil!36443))))

(declare-fun lt!1109060 () Unit!51218)

(assert (=> b!3269657 (= lt!1109060 lt!1109065)))

(assert (=> b!3269657 (= lt!1109056 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (_1!21098 (v!35969 lt!1109048)))))))

(declare-fun lt!1109076 () Option!7260)

(assert (=> b!3269657 (= lt!1109076 (maxPrefixZipperSequence!1094 thiss!18206 rules!2135 lt!1109056))))

(declare-fun c!552081 () Bool)

(assert (=> b!3269657 (= c!552081 ((_ is Some!7259) lt!1109076))))

(assert (=> b!3269657 (= (lexRec!701 thiss!18206 rules!2135 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (_1!21098 (v!35969 lt!1109048))))) e!2036223)))

(declare-fun lt!1109053 () Unit!51218)

(declare-fun Unit!51230 () Unit!51218)

(assert (=> b!3269657 (= lt!1109053 Unit!51230)))

(assert (=> b!3269657 (= lt!1109079 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (_1!21098 (v!35969 lt!1109048)))))))

(declare-fun lt!1109047 () List!36567)

(assert (=> b!3269657 (= lt!1109047 (list!13032 lt!1109079))))

(declare-fun lt!1109073 () List!36567)

(assert (=> b!3269657 (= lt!1109073 (list!13032 (_2!21098 (v!35969 lt!1109048))))))

(declare-fun lt!1109078 () Unit!51218)

(assert (=> b!3269657 (= lt!1109078 (lemmaConcatTwoListThenFSndIsSuffix!548 lt!1109047 lt!1109073))))

(assert (=> b!3269657 (isSuffix!863 lt!1109073 (++!8798 lt!1109047 lt!1109073))))

(declare-fun lt!1109054 () Unit!51218)

(assert (=> b!3269657 (= lt!1109054 lt!1109078)))

(declare-fun b!3269658 () Bool)

(assert (=> b!3269658 (= e!2036220 (tuple2!35921 (BalanceConc!21503 Empty!10944) lt!1108144))))

(declare-fun b!3269659 () Bool)

(assert (=> b!3269659 (= e!2036222 (tuple2!35921 (BalanceConc!21503 Empty!10944) lt!1108144))))

(declare-fun b!3269660 () Bool)

(declare-fun lt!1109059 () tuple2!35920)

(assert (=> b!3269660 (= lt!1109059 (lexRec!701 thiss!18206 rules!2135 (_2!21098 (v!35969 lt!1109076))))))

(assert (=> b!3269660 (= e!2036223 (tuple2!35921 (prepend!1195 (_1!21094 lt!1109059) (_1!21098 (v!35969 lt!1109076))) (_2!21094 lt!1109059)))))

(assert (= (and d!906575 c!552079) b!3269657))

(assert (= (and d!906575 (not c!552079)) b!3269658))

(assert (= (and b!3269657 c!552080) b!3269655))

(assert (= (and b!3269657 (not c!552080)) b!3269659))

(assert (= (and b!3269657 c!552081) b!3269660))

(assert (= (and b!3269657 (not c!552081)) b!3269656))

(assert (= (and d!906575 res!1328759) b!3269654))

(declare-fun m!3572265 () Bool)

(assert (=> b!3269660 m!3572265))

(declare-fun m!3572267 () Bool)

(assert (=> b!3269660 m!3572267))

(declare-fun m!3572269 () Bool)

(assert (=> b!3269657 m!3572269))

(declare-fun m!3572271 () Bool)

(assert (=> b!3269657 m!3572271))

(declare-fun m!3572273 () Bool)

(assert (=> b!3269657 m!3572273))

(declare-fun m!3572275 () Bool)

(assert (=> b!3269657 m!3572275))

(declare-fun m!3572277 () Bool)

(assert (=> b!3269657 m!3572277))

(declare-fun m!3572279 () Bool)

(assert (=> b!3269657 m!3572279))

(declare-fun m!3572281 () Bool)

(assert (=> b!3269657 m!3572281))

(assert (=> b!3269657 m!3570101))

(declare-fun m!3572283 () Bool)

(assert (=> b!3269657 m!3572283))

(assert (=> b!3269657 m!3570235))

(declare-fun m!3572285 () Bool)

(assert (=> b!3269657 m!3572285))

(declare-fun m!3572287 () Bool)

(assert (=> b!3269657 m!3572287))

(declare-fun m!3572289 () Bool)

(assert (=> b!3269657 m!3572289))

(declare-fun m!3572291 () Bool)

(assert (=> b!3269657 m!3572291))

(declare-fun m!3572293 () Bool)

(assert (=> b!3269657 m!3572293))

(declare-fun m!3572295 () Bool)

(assert (=> b!3269657 m!3572295))

(declare-fun m!3572297 () Bool)

(assert (=> b!3269657 m!3572297))

(assert (=> b!3269657 m!3570235))

(declare-fun m!3572299 () Bool)

(assert (=> b!3269657 m!3572299))

(declare-fun m!3572301 () Bool)

(assert (=> b!3269657 m!3572301))

(declare-fun m!3572303 () Bool)

(assert (=> b!3269657 m!3572303))

(assert (=> b!3269657 m!3572273))

(declare-fun m!3572305 () Bool)

(assert (=> b!3269657 m!3572305))

(declare-fun m!3572307 () Bool)

(assert (=> b!3269657 m!3572307))

(assert (=> b!3269657 m!3572277))

(declare-fun m!3572309 () Bool)

(assert (=> b!3269657 m!3572309))

(assert (=> b!3269657 m!3572287))

(declare-fun m!3572311 () Bool)

(assert (=> b!3269657 m!3572311))

(assert (=> b!3269657 m!3572297))

(declare-fun m!3572313 () Bool)

(assert (=> b!3269657 m!3572313))

(assert (=> b!3269657 m!3572305))

(declare-fun m!3572315 () Bool)

(assert (=> b!3269657 m!3572315))

(assert (=> b!3269657 m!3572269))

(declare-fun m!3572317 () Bool)

(assert (=> b!3269657 m!3572317))

(assert (=> b!3269657 m!3572309))

(declare-fun m!3572319 () Bool)

(assert (=> b!3269657 m!3572319))

(declare-fun m!3572321 () Bool)

(assert (=> b!3269657 m!3572321))

(assert (=> b!3269657 m!3572291))

(declare-fun m!3572323 () Bool)

(assert (=> b!3269657 m!3572323))

(declare-fun m!3572325 () Bool)

(assert (=> b!3269657 m!3572325))

(assert (=> b!3269657 m!3572323))

(declare-fun m!3572327 () Bool)

(assert (=> b!3269657 m!3572327))

(assert (=> b!3269657 m!3572319))

(assert (=> b!3269657 m!3572291))

(declare-fun m!3572329 () Bool)

(assert (=> b!3269657 m!3572329))

(assert (=> b!3269657 m!3572309))

(assert (=> b!3269657 m!3572299))

(declare-fun m!3572331 () Bool)

(assert (=> d!906575 m!3572331))

(assert (=> d!906575 m!3569927))

(assert (=> d!906575 m!3572283))

(declare-fun m!3572333 () Bool)

(assert (=> d!906575 m!3572333))

(declare-fun m!3572335 () Bool)

(assert (=> d!906575 m!3572335))

(assert (=> d!906575 m!3572333))

(assert (=> d!906575 m!3570235))

(declare-fun m!3572337 () Bool)

(assert (=> d!906575 m!3572337))

(declare-fun m!3572339 () Bool)

(assert (=> d!906575 m!3572339))

(declare-fun m!3572341 () Bool)

(assert (=> d!906575 m!3572341))

(declare-fun m!3572343 () Bool)

(assert (=> b!3269655 m!3572343))

(declare-fun m!3572345 () Bool)

(assert (=> b!3269655 m!3572345))

(declare-fun m!3572347 () Bool)

(assert (=> b!3269654 m!3572347))

(assert (=> b!3269654 m!3572283))

(declare-fun m!3572349 () Bool)

(assert (=> b!3269654 m!3572349))

(assert (=> d!905883 d!906575))

(declare-fun d!906585 () Bool)

(declare-fun res!1328764 () Bool)

(declare-fun e!2036228 () Bool)

(assert (=> d!906585 (=> res!1328764 e!2036228)))

(assert (=> d!906585 (= res!1328764 ((_ is Nil!36445) rules!2135))))

(assert (=> d!906585 (= (noDuplicateTag!1937 thiss!18206 rules!2135 Nil!36447) e!2036228)))

(declare-fun b!3269665 () Bool)

(declare-fun e!2036229 () Bool)

(assert (=> b!3269665 (= e!2036228 e!2036229)))

(declare-fun res!1328765 () Bool)

(assert (=> b!3269665 (=> (not res!1328765) (not e!2036229))))

(declare-fun contains!6572 (List!36571 String!40904) Bool)

(assert (=> b!3269665 (= res!1328765 (not (contains!6572 Nil!36447 (tag!5824 (h!41865 rules!2135)))))))

(declare-fun b!3269666 () Bool)

(assert (=> b!3269666 (= e!2036229 (noDuplicateTag!1937 thiss!18206 (t!247340 rules!2135) (Cons!36447 (tag!5824 (h!41865 rules!2135)) Nil!36447)))))

(assert (= (and d!906585 (not res!1328764)) b!3269665))

(assert (= (and b!3269665 res!1328765) b!3269666))

(declare-fun m!3572351 () Bool)

(assert (=> b!3269665 m!3572351))

(declare-fun m!3572353 () Bool)

(assert (=> b!3269666 m!3572353))

(assert (=> b!3268236 d!906585))

(declare-fun d!906587 () Bool)

(assert (=> d!906587 (= (isDefined!5624 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))) (not (isEmpty!20571 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun bs!546089 () Bool)

(assert (= bs!546089 d!906587))

(assert (=> bs!546089 m!3569525))

(declare-fun m!3572355 () Bool)

(assert (=> bs!546089 m!3572355))

(assert (=> d!906043 d!906587))

(assert (=> d!906043 d!906057))

(declare-fun d!906589 () Bool)

(declare-fun e!2036232 () Bool)

(assert (=> d!906589 e!2036232))

(declare-fun res!1328770 () Bool)

(assert (=> d!906589 (=> (not res!1328770) (not e!2036232))))

(assert (=> d!906589 (= res!1328770 (isDefined!5624 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> d!906589 true))

(declare-fun _$52!1632 () Unit!51218)

(assert (=> d!906589 (= (choose!19021 thiss!18206 rules!2135 lt!1108158 (h!41864 tokens!494)) _$52!1632)))

(declare-fun b!3269671 () Bool)

(declare-fun res!1328771 () Bool)

(assert (=> b!3269671 (=> (not res!1328771) (not e!2036232))))

(assert (=> b!3269671 (= res!1328771 (matchR!4665 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))) (list!13032 (charsOf!3300 (h!41864 tokens!494)))))))

(declare-fun b!3269672 () Bool)

(assert (=> b!3269672 (= e!2036232 (= (rule!7766 (h!41864 tokens!494)) (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))

(assert (= (and d!906589 res!1328770) b!3269671))

(assert (= (and b!3269671 res!1328771) b!3269672))

(assert (=> d!906589 m!3569525))

(assert (=> d!906589 m!3569525))

(assert (=> d!906589 m!3570525))

(assert (=> b!3269671 m!3569437))

(assert (=> b!3269671 m!3570531))

(assert (=> b!3269671 m!3569525))

(assert (=> b!3269671 m!3569525))

(assert (=> b!3269671 m!3570529))

(assert (=> b!3269671 m!3569435))

(assert (=> b!3269671 m!3569435))

(assert (=> b!3269671 m!3569437))

(assert (=> b!3269672 m!3569525))

(assert (=> b!3269672 m!3569525))

(assert (=> b!3269672 m!3570529))

(assert (=> d!906043 d!906589))

(assert (=> d!906043 d!905879))

(declare-fun d!906591 () Bool)

(declare-fun c!552084 () Bool)

(assert (=> d!906591 (= c!552084 ((_ is Nil!36443) (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))))))

(declare-fun e!2036235 () (InoxSet C!20272))

(assert (=> d!906591 (= (content!4944 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))) e!2036235)))

(declare-fun b!3269677 () Bool)

(assert (=> b!3269677 (= e!2036235 ((as const (Array C!20272 Bool)) false))))

(declare-fun b!3269678 () Bool)

(assert (=> b!3269678 (= e!2036235 ((_ map or) (store ((as const (Array C!20272 Bool)) false) (h!41863 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))) true) (content!4944 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))))))))

(assert (= (and d!906591 c!552084) b!3269677))

(assert (= (and d!906591 (not c!552084)) b!3269678))

(declare-fun m!3572357 () Bool)

(assert (=> b!3269678 m!3572357))

(declare-fun m!3572359 () Bool)

(assert (=> b!3269678 m!3572359))

(assert (=> d!906081 d!906591))

(declare-fun d!906593 () Bool)

(declare-fun c!552087 () Bool)

(assert (=> d!906593 (= c!552087 ((_ is Nil!36444) lt!1108335))))

(declare-fun e!2036238 () (InoxSet Token!9934))

(assert (=> d!906593 (= (content!4946 lt!1108335) e!2036238)))

(declare-fun b!3269683 () Bool)

(assert (=> b!3269683 (= e!2036238 ((as const (Array Token!9934 Bool)) false))))

(declare-fun b!3269684 () Bool)

(assert (=> b!3269684 (= e!2036238 ((_ map or) (store ((as const (Array Token!9934 Bool)) false) (h!41864 lt!1108335) true) (content!4946 (t!247339 lt!1108335))))))

(assert (= (and d!906593 c!552087) b!3269683))

(assert (= (and d!906593 (not c!552087)) b!3269684))

(declare-fun m!3572361 () Bool)

(assert (=> b!3269684 m!3572361))

(declare-fun m!3572363 () Bool)

(assert (=> b!3269684 m!3572363))

(assert (=> b!3268449 d!906593))

(declare-fun d!906595 () Bool)

(declare-fun c!552088 () Bool)

(assert (=> d!906595 (= c!552088 ((_ is Nil!36444) (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))

(declare-fun e!2036239 () (InoxSet Token!9934))

(assert (=> d!906595 (= (content!4946 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))) e!2036239)))

(declare-fun b!3269685 () Bool)

(assert (=> b!3269685 (= e!2036239 ((as const (Array Token!9934 Bool)) false))))

(declare-fun b!3269686 () Bool)

(assert (=> b!3269686 (= e!2036239 ((_ map or) (store ((as const (Array Token!9934 Bool)) false) (h!41864 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))) true) (content!4946 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))))

(assert (= (and d!906595 c!552088) b!3269685))

(assert (= (and d!906595 (not c!552088)) b!3269686))

(declare-fun m!3572365 () Bool)

(assert (=> b!3269686 m!3572365))

(declare-fun m!3572367 () Bool)

(assert (=> b!3269686 m!3572367))

(assert (=> b!3268449 d!906595))

(declare-fun d!906597 () Bool)

(assert (=> d!906597 (= (isDefined!5625 lt!1108241) (not (isEmpty!20566 lt!1108241)))))

(declare-fun bs!546090 () Bool)

(assert (= bs!546090 d!906597))

(assert (=> bs!546090 m!3569773))

(assert (=> b!3268174 d!906597))

(declare-fun d!906599 () Bool)

(declare-fun charsToBigInt!0 (List!36566 Int) Int)

(assert (=> d!906599 (= (inv!15 (value!171054 separatorToken!241)) (= (charsToBigInt!0 (text!39047 (value!171054 separatorToken!241)) 0) (value!171049 (value!171054 separatorToken!241))))))

(declare-fun bs!546092 () Bool)

(assert (= bs!546092 d!906599))

(declare-fun m!3572369 () Bool)

(assert (=> bs!546092 m!3572369))

(assert (=> b!3268536 d!906599))

(assert (=> b!3268415 d!906067))

(declare-fun d!906603 () Bool)

(assert (=> d!906603 (= (list!13032 lt!1108284) (list!13035 (c!551639 lt!1108284)))))

(declare-fun bs!546093 () Bool)

(assert (= bs!546093 d!906603))

(declare-fun m!3572371 () Bool)

(assert (=> bs!546093 m!3572371))

(assert (=> d!905875 d!906603))

(declare-fun d!906605 () Bool)

(assert (=> d!906605 (= (isEmpty!20562 lt!1108142) ((_ is Nil!36443) lt!1108142))))

(assert (=> d!905941 d!906605))

(declare-fun b!3269731 () Bool)

(declare-fun e!2036274 () Bool)

(declare-fun e!2036271 () Bool)

(assert (=> b!3269731 (= e!2036274 e!2036271)))

(declare-fun c!552103 () Bool)

(assert (=> b!3269731 (= c!552103 ((_ is Union!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun bm!236962 () Bool)

(declare-fun call!236969 () Bool)

(declare-fun call!236967 () Bool)

(assert (=> bm!236962 (= call!236969 call!236967)))

(declare-fun b!3269732 () Bool)

(declare-fun e!2036270 () Bool)

(assert (=> b!3269732 (= e!2036270 call!236969)))

(declare-fun b!3269733 () Bool)

(declare-fun e!2036269 () Bool)

(assert (=> b!3269733 (= e!2036269 e!2036274)))

(declare-fun c!552102 () Bool)

(assert (=> b!3269733 (= c!552102 ((_ is Star!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun b!3269734 () Bool)

(declare-fun res!1328791 () Bool)

(assert (=> b!3269734 (=> (not res!1328791) (not e!2036270))))

(declare-fun call!236968 () Bool)

(assert (=> b!3269734 (= res!1328791 call!236968)))

(assert (=> b!3269734 (= e!2036271 e!2036270)))

(declare-fun bm!236963 () Bool)

(assert (=> bm!236963 (= call!236968 (validRegex!4567 (ite c!552103 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))))))

(declare-fun d!906607 () Bool)

(declare-fun res!1328792 () Bool)

(assert (=> d!906607 (=> res!1328792 e!2036269)))

(assert (=> d!906607 (= res!1328792 ((_ is ElementMatch!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(assert (=> d!906607 (= (validRegex!4567 (regex!5284 (rule!7766 separatorToken!241))) e!2036269)))

(declare-fun b!3269735 () Bool)

(declare-fun e!2036272 () Bool)

(assert (=> b!3269735 (= e!2036272 call!236969)))

(declare-fun b!3269736 () Bool)

(declare-fun e!2036268 () Bool)

(assert (=> b!3269736 (= e!2036268 call!236967)))

(declare-fun b!3269737 () Bool)

(assert (=> b!3269737 (= e!2036274 e!2036268)))

(declare-fun res!1328794 () Bool)

(assert (=> b!3269737 (= res!1328794 (not (nullable!3411 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))))))))

(assert (=> b!3269737 (=> (not res!1328794) (not e!2036268))))

(declare-fun b!3269738 () Bool)

(declare-fun e!2036273 () Bool)

(assert (=> b!3269738 (= e!2036273 e!2036272)))

(declare-fun res!1328793 () Bool)

(assert (=> b!3269738 (=> (not res!1328793) (not e!2036272))))

(assert (=> b!3269738 (= res!1328793 call!236968)))

(declare-fun bm!236964 () Bool)

(assert (=> bm!236964 (= call!236967 (validRegex!4567 (ite c!552102 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!552103 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))

(declare-fun b!3269739 () Bool)

(declare-fun res!1328790 () Bool)

(assert (=> b!3269739 (=> res!1328790 e!2036273)))

(assert (=> b!3269739 (= res!1328790 (not ((_ is Concat!15557) (regex!5284 (rule!7766 separatorToken!241)))))))

(assert (=> b!3269739 (= e!2036271 e!2036273)))

(assert (= (and d!906607 (not res!1328792)) b!3269733))

(assert (= (and b!3269733 c!552102) b!3269737))

(assert (= (and b!3269733 (not c!552102)) b!3269731))

(assert (= (and b!3269737 res!1328794) b!3269736))

(assert (= (and b!3269731 c!552103) b!3269734))

(assert (= (and b!3269731 (not c!552103)) b!3269739))

(assert (= (and b!3269734 res!1328791) b!3269732))

(assert (= (and b!3269739 (not res!1328790)) b!3269738))

(assert (= (and b!3269738 res!1328793) b!3269735))

(assert (= (or b!3269732 b!3269735) bm!236962))

(assert (= (or b!3269734 b!3269738) bm!236963))

(assert (= (or b!3269736 bm!236962) bm!236964))

(declare-fun m!3572403 () Bool)

(assert (=> bm!236963 m!3572403))

(declare-fun m!3572405 () Bool)

(assert (=> b!3269737 m!3572405))

(declare-fun m!3572407 () Bool)

(assert (=> bm!236964 m!3572407))

(assert (=> d!905941 d!906607))

(declare-fun d!906621 () Bool)

(assert (=> d!906621 (= (isEmpty!20571 lt!1108464) (not ((_ is Some!7257) lt!1108464)))))

(assert (=> d!906065 d!906621))

(assert (=> d!906065 d!905879))

(declare-fun b!3269740 () Bool)

(declare-fun res!1328796 () Bool)

(declare-fun e!2036277 () Bool)

(assert (=> b!3269740 (=> (not res!1328796) (not e!2036277))))

(declare-fun lt!1109086 () List!36568)

(assert (=> b!3269740 (= res!1328796 (= ((_ map implies) (content!4946 lt!1109086) (content!4946 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))) ((as const (InoxSet Token!9934)) true)))))

(declare-fun b!3269741 () Bool)

(declare-fun e!2036276 () List!36568)

(assert (=> b!3269741 (= e!2036276 Nil!36444)))

(declare-fun b!3269742 () Bool)

(declare-fun e!2036275 () List!36568)

(declare-fun call!236970 () List!36568)

(assert (=> b!3269742 (= e!2036275 call!236970)))

(declare-fun b!3269743 () Bool)

(assert (=> b!3269743 (= e!2036277 (forall!7522 lt!1109086 lambda!118615))))

(declare-fun bm!236965 () Bool)

(assert (=> bm!236965 (= call!236970 (filter!524 (t!247339 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))) lambda!118615))))

(declare-fun d!906623 () Bool)

(assert (=> d!906623 e!2036277))

(declare-fun res!1328795 () Bool)

(assert (=> d!906623 (=> (not res!1328795) (not e!2036277))))

(assert (=> d!906623 (= res!1328795 (<= (size!27506 lt!1109086) (size!27506 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))))

(assert (=> d!906623 (= lt!1109086 e!2036276)))

(declare-fun c!552105 () Bool)

(assert (=> d!906623 (= c!552105 ((_ is Nil!36444) (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))))))

(assert (=> d!906623 (= (filter!524 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))) lambda!118615) lt!1109086)))

(declare-fun b!3269744 () Bool)

(assert (=> b!3269744 (= e!2036276 e!2036275)))

(declare-fun c!552104 () Bool)

(assert (=> b!3269744 (= c!552104 (dynLambda!14876 lambda!118615 (h!41864 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))))

(declare-fun b!3269745 () Bool)

(assert (=> b!3269745 (= e!2036275 (Cons!36444 (h!41864 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))) call!236970))))

(assert (= (and d!906623 c!552105) b!3269741))

(assert (= (and d!906623 (not c!552105)) b!3269744))

(assert (= (and b!3269744 c!552104) b!3269745))

(assert (= (and b!3269744 (not c!552104)) b!3269742))

(assert (= (or b!3269745 b!3269742) bm!236965))

(assert (= (and d!906623 res!1328795) b!3269740))

(assert (= (and b!3269740 res!1328796) b!3269743))

(declare-fun b_lambda!90581 () Bool)

(assert (=> (not b_lambda!90581) (not b!3269744)))

(declare-fun m!3572409 () Bool)

(assert (=> b!3269740 m!3572409))

(assert (=> b!3269740 m!3572367))

(declare-fun m!3572411 () Bool)

(assert (=> b!3269743 m!3572411))

(declare-fun m!3572413 () Bool)

(assert (=> b!3269744 m!3572413))

(declare-fun m!3572415 () Bool)

(assert (=> bm!236965 m!3572415))

(declare-fun m!3572417 () Bool)

(assert (=> d!906623 m!3572417))

(declare-fun m!3572419 () Bool)

(assert (=> d!906623 m!3572419))

(assert (=> bm!236845 d!906623))

(declare-fun b!3269746 () Bool)

(declare-fun e!2036278 () Bool)

(assert (=> b!3269746 (= e!2036278 (= (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))) (c!551638 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(declare-fun b!3269747 () Bool)

(declare-fun e!2036280 () Bool)

(assert (=> b!3269747 (= e!2036280 (not (= (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))) (c!551638 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun b!3269748 () Bool)

(declare-fun res!1328798 () Bool)

(assert (=> b!3269748 (=> (not res!1328798) (not e!2036278))))

(assert (=> b!3269748 (= res!1328798 (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477)))))))))

(declare-fun b!3269749 () Bool)

(declare-fun e!2036284 () Bool)

(declare-fun lt!1109088 () Bool)

(declare-fun call!236971 () Bool)

(assert (=> b!3269749 (= e!2036284 (= lt!1109088 call!236971))))

(declare-fun b!3269750 () Bool)

(declare-fun e!2036279 () Bool)

(assert (=> b!3269750 (= e!2036279 (matchR!4665 (derivativeStep!2964 (regex!5284 (rule!7766 (h!41864 tokens!494))) (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477)))))) (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477)))))))))

(declare-fun b!3269751 () Bool)

(declare-fun res!1328799 () Bool)

(assert (=> b!3269751 (=> (not res!1328799) (not e!2036278))))

(assert (=> b!3269751 (= res!1328799 (not call!236971))))

(declare-fun b!3269752 () Bool)

(assert (=> b!3269752 (= e!2036279 (nullable!3411 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3269753 () Bool)

(declare-fun e!2036281 () Bool)

(assert (=> b!3269753 (= e!2036281 e!2036280)))

(declare-fun res!1328803 () Bool)

(assert (=> b!3269753 (=> res!1328803 e!2036280)))

(assert (=> b!3269753 (= res!1328803 call!236971)))

(declare-fun b!3269755 () Bool)

(declare-fun e!2036282 () Bool)

(assert (=> b!3269755 (= e!2036282 (not lt!1109088))))

(declare-fun bm!236966 () Bool)

(assert (=> bm!236966 (= call!236971 (isEmpty!20562 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))))))

(declare-fun b!3269756 () Bool)

(declare-fun res!1328797 () Bool)

(assert (=> b!3269756 (=> res!1328797 e!2036280)))

(assert (=> b!3269756 (= res!1328797 (not (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))))))))

(declare-fun b!3269757 () Bool)

(declare-fun res!1328804 () Bool)

(declare-fun e!2036283 () Bool)

(assert (=> b!3269757 (=> res!1328804 e!2036283)))

(assert (=> b!3269757 (= res!1328804 e!2036278)))

(declare-fun res!1328801 () Bool)

(assert (=> b!3269757 (=> (not res!1328801) (not e!2036278))))

(assert (=> b!3269757 (= res!1328801 lt!1109088)))

(declare-fun d!906625 () Bool)

(assert (=> d!906625 e!2036284))

(declare-fun c!552108 () Bool)

(assert (=> d!906625 (= c!552108 ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(assert (=> d!906625 (= lt!1109088 e!2036279)))

(declare-fun c!552107 () Bool)

(assert (=> d!906625 (= c!552107 (isEmpty!20562 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))))))

(assert (=> d!906625 (validRegex!4567 (regex!5284 (rule!7766 (h!41864 tokens!494))))))

(assert (=> d!906625 (= (matchR!4665 (regex!5284 (rule!7766 (h!41864 tokens!494))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))) lt!1109088)))

(declare-fun b!3269754 () Bool)

(assert (=> b!3269754 (= e!2036283 e!2036281)))

(declare-fun res!1328802 () Bool)

(assert (=> b!3269754 (=> (not res!1328802) (not e!2036281))))

(assert (=> b!3269754 (= res!1328802 (not lt!1109088))))

(declare-fun b!3269758 () Bool)

(declare-fun res!1328800 () Bool)

(assert (=> b!3269758 (=> res!1328800 e!2036283)))

(assert (=> b!3269758 (= res!1328800 (not ((_ is ElementMatch!10043) (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> b!3269758 (= e!2036282 e!2036283)))

(declare-fun b!3269759 () Bool)

(assert (=> b!3269759 (= e!2036284 e!2036282)))

(declare-fun c!552106 () Bool)

(assert (=> b!3269759 (= c!552106 ((_ is EmptyLang!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(assert (= (and d!906625 c!552107) b!3269752))

(assert (= (and d!906625 (not c!552107)) b!3269750))

(assert (= (and d!906625 c!552108) b!3269749))

(assert (= (and d!906625 (not c!552108)) b!3269759))

(assert (= (and b!3269759 c!552106) b!3269755))

(assert (= (and b!3269759 (not c!552106)) b!3269758))

(assert (= (and b!3269758 (not res!1328800)) b!3269757))

(assert (= (and b!3269757 res!1328801) b!3269751))

(assert (= (and b!3269751 res!1328799) b!3269748))

(assert (= (and b!3269748 res!1328798) b!3269746))

(assert (= (and b!3269757 (not res!1328804)) b!3269754))

(assert (= (and b!3269754 res!1328802) b!3269753))

(assert (= (and b!3269753 (not res!1328803)) b!3269756))

(assert (= (and b!3269756 (not res!1328797)) b!3269747))

(assert (= (or b!3269749 b!3269751 b!3269753) bm!236966))

(assert (=> bm!236966 m!3570659))

(declare-fun m!3572425 () Bool)

(assert (=> bm!236966 m!3572425))

(assert (=> b!3269746 m!3570659))

(declare-fun m!3572427 () Bool)

(assert (=> b!3269746 m!3572427))

(assert (=> b!3269747 m!3570659))

(assert (=> b!3269747 m!3572427))

(assert (=> b!3269756 m!3570659))

(declare-fun m!3572429 () Bool)

(assert (=> b!3269756 m!3572429))

(assert (=> b!3269756 m!3572429))

(declare-fun m!3572431 () Bool)

(assert (=> b!3269756 m!3572431))

(assert (=> d!906625 m!3570659))

(assert (=> d!906625 m!3572425))

(declare-fun m!3572433 () Bool)

(assert (=> d!906625 m!3572433))

(assert (=> b!3269748 m!3570659))

(assert (=> b!3269748 m!3572429))

(assert (=> b!3269748 m!3572429))

(assert (=> b!3269748 m!3572431))

(declare-fun m!3572435 () Bool)

(assert (=> b!3269752 m!3572435))

(assert (=> b!3269750 m!3570659))

(assert (=> b!3269750 m!3572427))

(assert (=> b!3269750 m!3572427))

(declare-fun m!3572437 () Bool)

(assert (=> b!3269750 m!3572437))

(assert (=> b!3269750 m!3570659))

(assert (=> b!3269750 m!3572429))

(assert (=> b!3269750 m!3572437))

(assert (=> b!3269750 m!3572429))

(declare-fun m!3572439 () Bool)

(assert (=> b!3269750 m!3572439))

(assert (=> b!3268765 d!906625))

(declare-fun d!906631 () Bool)

(assert (=> d!906631 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477)))) (list!13035 (c!551639 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))))))

(declare-fun bs!546099 () Bool)

(assert (= bs!546099 d!906631))

(declare-fun m!3572441 () Bool)

(assert (=> bs!546099 m!3572441))

(assert (=> b!3268765 d!906631))

(declare-fun d!906633 () Bool)

(declare-fun lt!1109089 () BalanceConc!21500)

(assert (=> d!906633 (= (list!13032 lt!1109089) (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477))))))

(assert (=> d!906633 (= lt!1109089 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477))))) (value!171054 (_1!21093 (get!11625 lt!1108477)))))))

(assert (=> d!906633 (= (charsOf!3300 (_1!21093 (get!11625 lt!1108477))) lt!1109089)))

(declare-fun b_lambda!90583 () Bool)

(assert (=> (not b_lambda!90583) (not d!906633)))

(declare-fun tb!165711 () Bool)

(declare-fun t!247526 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247526) tb!165711))

(declare-fun b!3269760 () Bool)

(declare-fun e!2036285 () Bool)

(declare-fun tp!1027121 () Bool)

(assert (=> b!3269760 (= e!2036285 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477))))) (value!171054 (_1!21093 (get!11625 lt!1108477)))))) tp!1027121))))

(declare-fun result!208404 () Bool)

(assert (=> tb!165711 (= result!208404 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477))))) (value!171054 (_1!21093 (get!11625 lt!1108477))))) e!2036285))))

(assert (= tb!165711 b!3269760))

(declare-fun m!3572443 () Bool)

(assert (=> b!3269760 m!3572443))

(declare-fun m!3572445 () Bool)

(assert (=> tb!165711 m!3572445))

(assert (=> d!906633 t!247526))

(declare-fun b_and!221437 () Bool)

(assert (= b_and!221287 (and (=> t!247526 result!208404) b_and!221437)))

(declare-fun t!247529 () Bool)

(declare-fun tb!165713 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247529) tb!165713))

(declare-fun result!208406 () Bool)

(assert (= result!208406 result!208404))

(assert (=> d!906633 t!247529))

(declare-fun b_and!221439 () Bool)

(assert (= b_and!221321 (and (=> t!247529 result!208406) b_and!221439)))

(declare-fun tb!165715 () Bool)

(declare-fun t!247531 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247531) tb!165715))

(declare-fun result!208408 () Bool)

(assert (= result!208408 result!208404))

(assert (=> d!906633 t!247531))

(declare-fun b_and!221441 () Bool)

(assert (= b_and!221325 (and (=> t!247531 result!208408) b_and!221441)))

(declare-fun tb!165717 () Bool)

(declare-fun t!247533 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247533) tb!165717))

(declare-fun result!208410 () Bool)

(assert (= result!208410 result!208404))

(assert (=> d!906633 t!247533))

(declare-fun b_and!221443 () Bool)

(assert (= b_and!221291 (and (=> t!247533 result!208410) b_and!221443)))

(declare-fun t!247535 () Bool)

(declare-fun tb!165719 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247535) tb!165719))

(declare-fun result!208412 () Bool)

(assert (= result!208412 result!208404))

(assert (=> d!906633 t!247535))

(declare-fun b_and!221445 () Bool)

(assert (= b_and!221289 (and (=> t!247535 result!208412) b_and!221445)))

(declare-fun m!3572447 () Bool)

(assert (=> d!906633 m!3572447))

(declare-fun m!3572449 () Bool)

(assert (=> d!906633 m!3572449))

(assert (=> b!3268765 d!906633))

(declare-fun d!906635 () Bool)

(assert (=> d!906635 (= (get!11625 lt!1108477) (v!35952 lt!1108477))))

(assert (=> b!3268765 d!906635))

(declare-fun d!906639 () Bool)

(assert (=> d!906639 true))

(declare-fun lt!1109102 () Bool)

(assert (=> d!906639 (= lt!1109102 (rulesValidInductive!1798 thiss!18206 rules!2135))))

(declare-fun lambda!118649 () Int)

(declare-fun forall!7526 (List!36569 Int) Bool)

(assert (=> d!906639 (= lt!1109102 (forall!7526 rules!2135 lambda!118649))))

(assert (=> d!906639 (= (rulesValid!1941 thiss!18206 rules!2135) lt!1109102)))

(declare-fun bs!546101 () Bool)

(assert (= bs!546101 d!906639))

(assert (=> bs!546101 m!3569779))

(declare-fun m!3572469 () Bool)

(assert (=> bs!546101 m!3572469))

(assert (=> d!905879 d!906639))

(declare-fun b!3269780 () Bool)

(declare-fun e!2036298 () List!36567)

(declare-fun call!236974 () List!36567)

(assert (=> b!3269780 (= e!2036298 call!236974)))

(declare-fun b!3269781 () Bool)

(declare-fun e!2036296 () List!36567)

(assert (=> b!3269781 (= e!2036296 e!2036298)))

(declare-fun c!552110 () Bool)

(assert (=> b!3269781 (= c!552110 ((_ is Union!10043) (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))

(declare-fun b!3269782 () Bool)

(declare-fun e!2036299 () List!36567)

(declare-fun e!2036297 () List!36567)

(assert (=> b!3269782 (= e!2036299 e!2036297)))

(declare-fun c!552112 () Bool)

(assert (=> b!3269782 (= c!552112 ((_ is ElementMatch!10043) (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))

(declare-fun b!3269783 () Bool)

(assert (=> b!3269783 (= e!2036297 (Cons!36443 (c!551638 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))) Nil!36443))))

(declare-fun b!3269784 () Bool)

(assert (=> b!3269784 (= e!2036299 Nil!36443)))

(declare-fun bm!236967 () Bool)

(declare-fun call!236973 () List!36567)

(assert (=> bm!236967 (= call!236973 (usedCharacters!586 (ite c!552110 (regOne!20599 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))) (regTwo!20598 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))))

(declare-fun b!3269785 () Bool)

(assert (=> b!3269785 (= e!2036298 call!236974)))

(declare-fun c!552113 () Bool)

(declare-fun b!3269779 () Bool)

(assert (=> b!3269779 (= c!552113 ((_ is Star!10043) (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))

(assert (=> b!3269779 (= e!2036297 e!2036296)))

(declare-fun d!906647 () Bool)

(declare-fun c!552111 () Bool)

(assert (=> d!906647 (= c!552111 (or ((_ is EmptyExpr!10043) (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))) ((_ is EmptyLang!10043) (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))))))))

(assert (=> d!906647 (= (usedCharacters!586 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))) e!2036299)))

(declare-fun bm!236968 () Bool)

(declare-fun call!236975 () List!36567)

(declare-fun call!236972 () List!36567)

(assert (=> bm!236968 (= call!236975 call!236972)))

(declare-fun bm!236969 () Bool)

(assert (=> bm!236969 (= call!236974 (++!8798 (ite c!552110 call!236973 call!236975) (ite c!552110 call!236975 call!236973)))))

(declare-fun bm!236970 () Bool)

(assert (=> bm!236970 (= call!236972 (usedCharacters!586 (ite c!552113 (reg!10372 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))) (ite c!552110 (regTwo!20599 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))) (regOne!20598 (ite c!551829 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (ite c!551826 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))))))))))

(declare-fun b!3269786 () Bool)

(assert (=> b!3269786 (= e!2036296 call!236972)))

(assert (= (and d!906647 c!552111) b!3269784))

(assert (= (and d!906647 (not c!552111)) b!3269782))

(assert (= (and b!3269782 c!552112) b!3269783))

(assert (= (and b!3269782 (not c!552112)) b!3269779))

(assert (= (and b!3269779 c!552113) b!3269786))

(assert (= (and b!3269779 (not c!552113)) b!3269781))

(assert (= (and b!3269781 c!552110) b!3269785))

(assert (= (and b!3269781 (not c!552110)) b!3269780))

(assert (= (or b!3269785 b!3269780) bm!236968))

(assert (= (or b!3269785 b!3269780) bm!236967))

(assert (= (or b!3269785 b!3269780) bm!236969))

(assert (= (or b!3269786 bm!236968) bm!236970))

(declare-fun m!3572489 () Bool)

(assert (=> bm!236967 m!3572489))

(declare-fun m!3572491 () Bool)

(assert (=> bm!236969 m!3572491))

(declare-fun m!3572499 () Bool)

(assert (=> bm!236970 m!3572499))

(assert (=> bm!236859 d!906647))

(declare-fun d!906649 () Bool)

(declare-fun e!2036306 () Bool)

(assert (=> d!906649 e!2036306))

(declare-fun res!1328828 () Bool)

(assert (=> d!906649 (=> (not res!1328828) (not e!2036306))))

(declare-fun lt!1109111 () BalanceConc!21502)

(assert (=> d!906649 (= res!1328828 (= (list!13033 lt!1109111) tokens!494))))

(declare-fun fromList!646 (List!36568) Conc!10944)

(assert (=> d!906649 (= lt!1109111 (BalanceConc!21503 (fromList!646 tokens!494)))))

(assert (=> d!906649 (= (fromListB!1587 tokens!494) lt!1109111)))

(declare-fun b!3269800 () Bool)

(assert (=> b!3269800 (= e!2036306 (isBalanced!3261 (fromList!646 tokens!494)))))

(assert (= (and d!906649 res!1328828) b!3269800))

(declare-fun m!3572539 () Bool)

(assert (=> d!906649 m!3572539))

(declare-fun m!3572541 () Bool)

(assert (=> d!906649 m!3572541))

(assert (=> b!3269800 m!3572541))

(assert (=> b!3269800 m!3572541))

(declare-fun m!3572545 () Bool)

(assert (=> b!3269800 m!3572545))

(assert (=> d!905919 d!906649))

(declare-fun b!3269801 () Bool)

(declare-fun e!2036307 () Bool)

(assert (=> b!3269801 (= e!2036307 (= (head!7113 (tail!5250 lt!1108142)) (c!551638 (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142)))))))

(declare-fun b!3269802 () Bool)

(declare-fun e!2036309 () Bool)

(assert (=> b!3269802 (= e!2036309 (not (= (head!7113 (tail!5250 lt!1108142)) (c!551638 (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142))))))))

(declare-fun b!3269803 () Bool)

(declare-fun res!1328830 () Bool)

(assert (=> b!3269803 (=> (not res!1328830) (not e!2036307))))

(assert (=> b!3269803 (= res!1328830 (isEmpty!20562 (tail!5250 (tail!5250 lt!1108142))))))

(declare-fun b!3269804 () Bool)

(declare-fun e!2036313 () Bool)

(declare-fun lt!1109112 () Bool)

(declare-fun call!236977 () Bool)

(assert (=> b!3269804 (= e!2036313 (= lt!1109112 call!236977))))

(declare-fun b!3269805 () Bool)

(declare-fun e!2036308 () Bool)

(assert (=> b!3269805 (= e!2036308 (matchR!4665 (derivativeStep!2964 (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142)) (head!7113 (tail!5250 lt!1108142))) (tail!5250 (tail!5250 lt!1108142))))))

(declare-fun b!3269806 () Bool)

(declare-fun res!1328831 () Bool)

(assert (=> b!3269806 (=> (not res!1328831) (not e!2036307))))

(assert (=> b!3269806 (= res!1328831 (not call!236977))))

(declare-fun b!3269807 () Bool)

(assert (=> b!3269807 (= e!2036308 (nullable!3411 (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142))))))

(declare-fun b!3269808 () Bool)

(declare-fun e!2036310 () Bool)

(assert (=> b!3269808 (= e!2036310 e!2036309)))

(declare-fun res!1328835 () Bool)

(assert (=> b!3269808 (=> res!1328835 e!2036309)))

(assert (=> b!3269808 (= res!1328835 call!236977)))

(declare-fun b!3269810 () Bool)

(declare-fun e!2036311 () Bool)

(assert (=> b!3269810 (= e!2036311 (not lt!1109112))))

(declare-fun bm!236972 () Bool)

(assert (=> bm!236972 (= call!236977 (isEmpty!20562 (tail!5250 lt!1108142)))))

(declare-fun b!3269811 () Bool)

(declare-fun res!1328829 () Bool)

(assert (=> b!3269811 (=> res!1328829 e!2036309)))

(assert (=> b!3269811 (= res!1328829 (not (isEmpty!20562 (tail!5250 (tail!5250 lt!1108142)))))))

(declare-fun b!3269812 () Bool)

(declare-fun res!1328836 () Bool)

(declare-fun e!2036312 () Bool)

(assert (=> b!3269812 (=> res!1328836 e!2036312)))

(assert (=> b!3269812 (= res!1328836 e!2036307)))

(declare-fun res!1328833 () Bool)

(assert (=> b!3269812 (=> (not res!1328833) (not e!2036307))))

(assert (=> b!3269812 (= res!1328833 lt!1109112)))

(declare-fun d!906655 () Bool)

(assert (=> d!906655 e!2036313))

(declare-fun c!552119 () Bool)

(assert (=> d!906655 (= c!552119 ((_ is EmptyExpr!10043) (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142))))))

(assert (=> d!906655 (= lt!1109112 e!2036308)))

(declare-fun c!552118 () Bool)

(assert (=> d!906655 (= c!552118 (isEmpty!20562 (tail!5250 lt!1108142)))))

(assert (=> d!906655 (validRegex!4567 (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142)))))

(assert (=> d!906655 (= (matchR!4665 (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142)) (tail!5250 lt!1108142)) lt!1109112)))

(declare-fun b!3269809 () Bool)

(assert (=> b!3269809 (= e!2036312 e!2036310)))

(declare-fun res!1328834 () Bool)

(assert (=> b!3269809 (=> (not res!1328834) (not e!2036310))))

(assert (=> b!3269809 (= res!1328834 (not lt!1109112))))

(declare-fun b!3269813 () Bool)

(declare-fun res!1328832 () Bool)

(assert (=> b!3269813 (=> res!1328832 e!2036312)))

(assert (=> b!3269813 (= res!1328832 (not ((_ is ElementMatch!10043) (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142)))))))

(assert (=> b!3269813 (= e!2036311 e!2036312)))

(declare-fun b!3269814 () Bool)

(assert (=> b!3269814 (= e!2036313 e!2036311)))

(declare-fun c!552117 () Bool)

(assert (=> b!3269814 (= c!552117 ((_ is EmptyLang!10043) (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142))))))

(assert (= (and d!906655 c!552118) b!3269807))

(assert (= (and d!906655 (not c!552118)) b!3269805))

(assert (= (and d!906655 c!552119) b!3269804))

(assert (= (and d!906655 (not c!552119)) b!3269814))

(assert (= (and b!3269814 c!552117) b!3269810))

(assert (= (and b!3269814 (not c!552117)) b!3269813))

(assert (= (and b!3269813 (not res!1328832)) b!3269812))

(assert (= (and b!3269812 res!1328833) b!3269806))

(assert (= (and b!3269806 res!1328831) b!3269803))

(assert (= (and b!3269803 res!1328830) b!3269801))

(assert (= (and b!3269812 (not res!1328836)) b!3269809))

(assert (= (and b!3269809 res!1328834) b!3269808))

(assert (= (and b!3269808 (not res!1328835)) b!3269811))

(assert (= (and b!3269811 (not res!1328829)) b!3269802))

(assert (= (or b!3269804 b!3269806 b!3269808) bm!236972))

(assert (=> bm!236972 m!3570131))

(assert (=> bm!236972 m!3570133))

(assert (=> b!3269801 m!3570131))

(declare-fun m!3572551 () Bool)

(assert (=> b!3269801 m!3572551))

(assert (=> b!3269802 m!3570131))

(assert (=> b!3269802 m!3572551))

(assert (=> b!3269811 m!3570131))

(declare-fun m!3572553 () Bool)

(assert (=> b!3269811 m!3572553))

(assert (=> b!3269811 m!3572553))

(declare-fun m!3572555 () Bool)

(assert (=> b!3269811 m!3572555))

(assert (=> d!906655 m!3570131))

(assert (=> d!906655 m!3570133))

(assert (=> d!906655 m!3570137))

(declare-fun m!3572557 () Bool)

(assert (=> d!906655 m!3572557))

(assert (=> b!3269803 m!3570131))

(assert (=> b!3269803 m!3572553))

(assert (=> b!3269803 m!3572553))

(assert (=> b!3269803 m!3572555))

(assert (=> b!3269807 m!3570137))

(declare-fun m!3572559 () Bool)

(assert (=> b!3269807 m!3572559))

(assert (=> b!3269805 m!3570131))

(assert (=> b!3269805 m!3572551))

(assert (=> b!3269805 m!3570137))

(assert (=> b!3269805 m!3572551))

(declare-fun m!3572561 () Bool)

(assert (=> b!3269805 m!3572561))

(assert (=> b!3269805 m!3570131))

(assert (=> b!3269805 m!3572553))

(assert (=> b!3269805 m!3572561))

(assert (=> b!3269805 m!3572553))

(declare-fun m!3572563 () Bool)

(assert (=> b!3269805 m!3572563))

(assert (=> b!3268419 d!906655))

(declare-fun b!3269868 () Bool)

(declare-fun e!2036348 () Regex!10043)

(assert (=> b!3269868 (= e!2036348 EmptyLang!10043)))

(declare-fun b!3269869 () Bool)

(declare-fun e!2036345 () Regex!10043)

(declare-fun e!2036346 () Regex!10043)

(assert (=> b!3269869 (= e!2036345 e!2036346)))

(declare-fun c!552139 () Bool)

(assert (=> b!3269869 (= c!552139 ((_ is Star!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun b!3269870 () Bool)

(declare-fun e!2036344 () Regex!10043)

(assert (=> b!3269870 (= e!2036344 (ite (= (head!7113 lt!1108142) (c!551638 (regex!5284 (rule!7766 separatorToken!241)))) EmptyExpr!10043 EmptyLang!10043))))

(declare-fun b!3269871 () Bool)

(declare-fun c!552141 () Bool)

(assert (=> b!3269871 (= c!552141 ((_ is Union!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(assert (=> b!3269871 (= e!2036344 e!2036345)))

(declare-fun b!3269872 () Bool)

(declare-fun call!236987 () Regex!10043)

(declare-fun call!236990 () Regex!10043)

(assert (=> b!3269872 (= e!2036345 (Union!10043 call!236987 call!236990))))

(declare-fun call!236988 () Regex!10043)

(declare-fun e!2036347 () Regex!10043)

(declare-fun b!3269873 () Bool)

(assert (=> b!3269873 (= e!2036347 (Union!10043 (Concat!15557 call!236988 (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241)))) call!236987))))

(declare-fun b!3269874 () Bool)

(declare-fun call!236989 () Regex!10043)

(assert (=> b!3269874 (= e!2036346 (Concat!15557 call!236989 (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun b!3269875 () Bool)

(assert (=> b!3269875 (= e!2036347 (Union!10043 (Concat!15557 call!236988 (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241)))) EmptyLang!10043))))

(declare-fun bm!236982 () Bool)

(assert (=> bm!236982 (= call!236987 (derivativeStep!2964 (ite c!552141 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241)))) (head!7113 lt!1108142)))))

(declare-fun bm!236983 () Bool)

(assert (=> bm!236983 (= call!236988 call!236989)))

(declare-fun b!3269876 () Bool)

(declare-fun c!552142 () Bool)

(assert (=> b!3269876 (= c!552142 (nullable!3411 (regOne!20598 (regex!5284 (rule!7766 separatorToken!241)))))))

(assert (=> b!3269876 (= e!2036346 e!2036347)))

(declare-fun d!906659 () Bool)

(declare-fun lt!1109121 () Regex!10043)

(assert (=> d!906659 (validRegex!4567 lt!1109121)))

(assert (=> d!906659 (= lt!1109121 e!2036348)))

(declare-fun c!552140 () Bool)

(assert (=> d!906659 (= c!552140 (or ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 separatorToken!241))) ((_ is EmptyLang!10043) (regex!5284 (rule!7766 separatorToken!241)))))))

(assert (=> d!906659 (validRegex!4567 (regex!5284 (rule!7766 separatorToken!241)))))

(assert (=> d!906659 (= (derivativeStep!2964 (regex!5284 (rule!7766 separatorToken!241)) (head!7113 lt!1108142)) lt!1109121)))

(declare-fun bm!236984 () Bool)

(assert (=> bm!236984 (= call!236990 (derivativeStep!2964 (ite c!552141 (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))) (ite c!552139 (reg!10372 (regex!5284 (rule!7766 separatorToken!241))) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))) (head!7113 lt!1108142)))))

(declare-fun bm!236985 () Bool)

(assert (=> bm!236985 (= call!236989 call!236990)))

(declare-fun b!3269877 () Bool)

(assert (=> b!3269877 (= e!2036348 e!2036344)))

(declare-fun c!552138 () Bool)

(assert (=> b!3269877 (= c!552138 ((_ is ElementMatch!10043) (regex!5284 (rule!7766 separatorToken!241))))))

(assert (= (and d!906659 c!552140) b!3269868))

(assert (= (and d!906659 (not c!552140)) b!3269877))

(assert (= (and b!3269877 c!552138) b!3269870))

(assert (= (and b!3269877 (not c!552138)) b!3269871))

(assert (= (and b!3269871 c!552141) b!3269872))

(assert (= (and b!3269871 (not c!552141)) b!3269869))

(assert (= (and b!3269869 c!552139) b!3269874))

(assert (= (and b!3269869 (not c!552139)) b!3269876))

(assert (= (and b!3269876 c!552142) b!3269873))

(assert (= (and b!3269876 (not c!552142)) b!3269875))

(assert (= (or b!3269873 b!3269875) bm!236983))

(assert (= (or b!3269874 bm!236983) bm!236985))

(assert (= (or b!3269872 b!3269873) bm!236982))

(assert (= (or b!3269872 bm!236985) bm!236984))

(assert (=> bm!236982 m!3569537))

(declare-fun m!3572641 () Bool)

(assert (=> bm!236982 m!3572641))

(declare-fun m!3572643 () Bool)

(assert (=> b!3269876 m!3572643))

(declare-fun m!3572645 () Bool)

(assert (=> d!906659 m!3572645))

(assert (=> d!906659 m!3570127))

(assert (=> bm!236984 m!3569537))

(declare-fun m!3572651 () Bool)

(assert (=> bm!236984 m!3572651))

(assert (=> b!3268419 d!906659))

(assert (=> b!3268419 d!906067))

(declare-fun d!906699 () Bool)

(assert (=> d!906699 (= (tail!5250 lt!1108142) (t!247338 lt!1108142))))

(assert (=> b!3268419 d!906699))

(declare-fun d!906701 () Bool)

(declare-fun lt!1109123 () Int)

(assert (=> d!906701 (>= lt!1109123 0)))

(declare-fun e!2036350 () Int)

(assert (=> d!906701 (= lt!1109123 e!2036350)))

(declare-fun c!552143 () Bool)

(assert (=> d!906701 (= c!552143 ((_ is Nil!36443) (originalCharacters!5998 (h!41864 tokens!494))))))

(assert (=> d!906701 (= (size!27503 (originalCharacters!5998 (h!41864 tokens!494))) lt!1109123)))

(declare-fun b!3269879 () Bool)

(assert (=> b!3269879 (= e!2036350 0)))

(declare-fun b!3269880 () Bool)

(assert (=> b!3269880 (= e!2036350 (+ 1 (size!27503 (t!247338 (originalCharacters!5998 (h!41864 tokens!494))))))))

(assert (= (and d!906701 c!552143) b!3269879))

(assert (= (and d!906701 (not c!552143)) b!3269880))

(declare-fun m!3572657 () Bool)

(assert (=> b!3269880 m!3572657))

(assert (=> b!3268029 d!906701))

(declare-fun b!3269884 () Bool)

(declare-fun e!2036352 () List!36567)

(assert (=> b!3269884 (= e!2036352 (++!8798 (list!13035 (left!28379 (c!551639 lt!1108161))) (list!13035 (right!28709 (c!551639 lt!1108161)))))))

(declare-fun b!3269882 () Bool)

(declare-fun e!2036351 () List!36567)

(assert (=> b!3269882 (= e!2036351 e!2036352)))

(declare-fun c!552145 () Bool)

(assert (=> b!3269882 (= c!552145 ((_ is Leaf!17196) (c!551639 lt!1108161)))))

(declare-fun d!906705 () Bool)

(declare-fun c!552144 () Bool)

(assert (=> d!906705 (= c!552144 ((_ is Empty!10943) (c!551639 lt!1108161)))))

(assert (=> d!906705 (= (list!13035 (c!551639 lt!1108161)) e!2036351)))

(declare-fun b!3269881 () Bool)

(assert (=> b!3269881 (= e!2036351 Nil!36443)))

(declare-fun b!3269883 () Bool)

(assert (=> b!3269883 (= e!2036352 (list!13040 (xs!14075 (c!551639 lt!1108161))))))

(assert (= (and d!906705 c!552144) b!3269881))

(assert (= (and d!906705 (not c!552144)) b!3269882))

(assert (= (and b!3269882 c!552145) b!3269883))

(assert (= (and b!3269882 (not c!552145)) b!3269884))

(declare-fun m!3572661 () Bool)

(assert (=> b!3269884 m!3572661))

(declare-fun m!3572665 () Bool)

(assert (=> b!3269884 m!3572665))

(assert (=> b!3269884 m!3572661))

(assert (=> b!3269884 m!3572665))

(declare-fun m!3572669 () Bool)

(assert (=> b!3269884 m!3572669))

(declare-fun m!3572671 () Bool)

(assert (=> b!3269883 m!3572671))

(assert (=> d!905965 d!906705))

(declare-fun b!3269922 () Bool)

(declare-fun e!2036372 () Bool)

(declare-fun e!2036371 () Bool)

(assert (=> b!3269922 (= e!2036372 e!2036371)))

(declare-fun res!1328879 () Bool)

(assert (=> b!3269922 (=> (not res!1328879) (not e!2036371))))

(declare-fun height!1591 (Conc!10944) Int)

(assert (=> b!3269922 (= res!1328879 (<= (- 1) (- (height!1591 (left!28380 (c!551640 lt!1108374))) (height!1591 (right!28710 (c!551640 lt!1108374))))))))

(declare-fun b!3269923 () Bool)

(assert (=> b!3269923 (= e!2036371 (not (isEmpty!20569 (right!28710 (c!551640 lt!1108374)))))))

(declare-fun b!3269924 () Bool)

(declare-fun res!1328880 () Bool)

(assert (=> b!3269924 (=> (not res!1328880) (not e!2036371))))

(assert (=> b!3269924 (= res!1328880 (isBalanced!3261 (right!28710 (c!551640 lt!1108374))))))

(declare-fun b!3269925 () Bool)

(declare-fun res!1328883 () Bool)

(assert (=> b!3269925 (=> (not res!1328883) (not e!2036371))))

(assert (=> b!3269925 (= res!1328883 (<= (- (height!1591 (left!28380 (c!551640 lt!1108374))) (height!1591 (right!28710 (c!551640 lt!1108374)))) 1))))

(declare-fun b!3269926 () Bool)

(declare-fun res!1328878 () Bool)

(assert (=> b!3269926 (=> (not res!1328878) (not e!2036371))))

(assert (=> b!3269926 (= res!1328878 (not (isEmpty!20569 (left!28380 (c!551640 lt!1108374)))))))

(declare-fun d!906707 () Bool)

(declare-fun res!1328882 () Bool)

(assert (=> d!906707 (=> res!1328882 e!2036372)))

(assert (=> d!906707 (= res!1328882 (not ((_ is Node!10944) (c!551640 lt!1108374))))))

(assert (=> d!906707 (= (isBalanced!3261 (c!551640 lt!1108374)) e!2036372)))

(declare-fun b!3269921 () Bool)

(declare-fun res!1328881 () Bool)

(assert (=> b!3269921 (=> (not res!1328881) (not e!2036371))))

(assert (=> b!3269921 (= res!1328881 (isBalanced!3261 (left!28380 (c!551640 lt!1108374))))))

(assert (= (and d!906707 (not res!1328882)) b!3269922))

(assert (= (and b!3269922 res!1328879) b!3269925))

(assert (= (and b!3269925 res!1328883) b!3269921))

(assert (= (and b!3269921 res!1328881) b!3269924))

(assert (= (and b!3269924 res!1328880) b!3269926))

(assert (= (and b!3269926 res!1328878) b!3269923))

(declare-fun m!3572703 () Bool)

(assert (=> b!3269924 m!3572703))

(declare-fun m!3572705 () Bool)

(assert (=> b!3269926 m!3572705))

(declare-fun m!3572707 () Bool)

(assert (=> b!3269925 m!3572707))

(declare-fun m!3572709 () Bool)

(assert (=> b!3269925 m!3572709))

(assert (=> b!3269922 m!3572707))

(assert (=> b!3269922 m!3572709))

(declare-fun m!3572711 () Bool)

(assert (=> b!3269923 m!3572711))

(declare-fun m!3572713 () Bool)

(assert (=> b!3269921 m!3572713))

(assert (=> b!3268511 d!906707))

(declare-fun d!906717 () Bool)

(declare-fun lt!1109131 () Bool)

(declare-fun content!4948 (List!36569) (InoxSet Rule!10368))

(assert (=> d!906717 (= lt!1109131 (select (content!4948 rules!2135) (get!11623 lt!1108464)))))

(declare-fun e!2036383 () Bool)

(assert (=> d!906717 (= lt!1109131 e!2036383)))

(declare-fun res!1328889 () Bool)

(assert (=> d!906717 (=> (not res!1328889) (not e!2036383))))

(assert (=> d!906717 (= res!1328889 ((_ is Cons!36445) rules!2135))))

(assert (=> d!906717 (= (contains!6570 rules!2135 (get!11623 lt!1108464)) lt!1109131)))

(declare-fun b!3269938 () Bool)

(declare-fun e!2036382 () Bool)

(assert (=> b!3269938 (= e!2036383 e!2036382)))

(declare-fun res!1328888 () Bool)

(assert (=> b!3269938 (=> res!1328888 e!2036382)))

(assert (=> b!3269938 (= res!1328888 (= (h!41865 rules!2135) (get!11623 lt!1108464)))))

(declare-fun b!3269939 () Bool)

(assert (=> b!3269939 (= e!2036382 (contains!6570 (t!247340 rules!2135) (get!11623 lt!1108464)))))

(assert (= (and d!906717 res!1328889) b!3269938))

(assert (= (and b!3269938 (not res!1328888)) b!3269939))

(declare-fun m!3572719 () Bool)

(assert (=> d!906717 m!3572719))

(assert (=> d!906717 m!3570621))

(declare-fun m!3572721 () Bool)

(assert (=> d!906717 m!3572721))

(assert (=> b!3269939 m!3570621))

(declare-fun m!3572723 () Bool)

(assert (=> b!3269939 m!3572723))

(assert (=> b!3268740 d!906717))

(declare-fun d!906719 () Bool)

(assert (=> d!906719 (= (get!11623 lt!1108464) (v!35953 lt!1108464))))

(assert (=> b!3268740 d!906719))

(declare-fun d!906721 () Bool)

(declare-fun lt!1109134 () Token!9934)

(assert (=> d!906721 (= lt!1109134 (apply!8352 (list!13033 (_1!21094 lt!1108375)) 0))))

(declare-fun apply!8354 (Conc!10944 Int) Token!9934)

(assert (=> d!906721 (= lt!1109134 (apply!8354 (c!551640 (_1!21094 lt!1108375)) 0))))

(declare-fun e!2036410 () Bool)

(assert (=> d!906721 e!2036410))

(declare-fun res!1328892 () Bool)

(assert (=> d!906721 (=> (not res!1328892) (not e!2036410))))

(assert (=> d!906721 (= res!1328892 (<= 0 0))))

(assert (=> d!906721 (= (apply!8350 (_1!21094 lt!1108375) 0) lt!1109134)))

(declare-fun b!3270008 () Bool)

(assert (=> b!3270008 (= e!2036410 (< 0 (size!27508 (_1!21094 lt!1108375))))))

(assert (= (and d!906721 res!1328892) b!3270008))

(declare-fun m!3572737 () Bool)

(assert (=> d!906721 m!3572737))

(assert (=> d!906721 m!3572737))

(declare-fun m!3572739 () Bool)

(assert (=> d!906721 m!3572739))

(declare-fun m!3572741 () Bool)

(assert (=> d!906721 m!3572741))

(assert (=> b!3270008 m!3570319))

(assert (=> b!3268518 d!906721))

(declare-fun b!3270025 () Bool)

(declare-fun e!2036414 () Bool)

(assert (=> b!3270025 (= e!2036414 (= (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))) (c!551638 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))))))

(declare-fun b!3270026 () Bool)

(declare-fun e!2036417 () Bool)

(assert (=> b!3270026 (= e!2036417 (not (= (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))) (c!551638 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))))))))

(declare-fun b!3270027 () Bool)

(declare-fun res!1328894 () Bool)

(assert (=> b!3270027 (=> (not res!1328894) (not e!2036414))))

(assert (=> b!3270027 (= res!1328894 (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))))))))

(declare-fun b!3270028 () Bool)

(declare-fun e!2036421 () Bool)

(declare-fun lt!1109135 () Bool)

(declare-fun call!236992 () Bool)

(assert (=> b!3270028 (= e!2036421 (= lt!1109135 call!236992))))

(declare-fun b!3270029 () Bool)

(declare-fun e!2036415 () Bool)

(assert (=> b!3270029 (= e!2036415 (matchR!4665 (derivativeStep!2964 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))) (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))))) (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))))))))

(declare-fun b!3270030 () Bool)

(declare-fun res!1328895 () Bool)

(assert (=> b!3270030 (=> (not res!1328895) (not e!2036414))))

(assert (=> b!3270030 (= res!1328895 (not call!236992))))

(declare-fun b!3270031 () Bool)

(assert (=> b!3270031 (= e!2036415 (nullable!3411 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))))))

(declare-fun b!3270032 () Bool)

(declare-fun e!2036418 () Bool)

(assert (=> b!3270032 (= e!2036418 e!2036417)))

(declare-fun res!1328899 () Bool)

(assert (=> b!3270032 (=> res!1328899 e!2036417)))

(assert (=> b!3270032 (= res!1328899 call!236992)))

(declare-fun b!3270034 () Bool)

(declare-fun e!2036419 () Bool)

(assert (=> b!3270034 (= e!2036419 (not lt!1109135))))

(declare-fun bm!236987 () Bool)

(assert (=> bm!236987 (= call!236992 (isEmpty!20562 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))))))

(declare-fun b!3270035 () Bool)

(declare-fun res!1328893 () Bool)

(assert (=> b!3270035 (=> res!1328893 e!2036417)))

(assert (=> b!3270035 (= res!1328893 (not (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))))))))

(declare-fun b!3270036 () Bool)

(declare-fun res!1328900 () Bool)

(declare-fun e!2036420 () Bool)

(assert (=> b!3270036 (=> res!1328900 e!2036420)))

(assert (=> b!3270036 (= res!1328900 e!2036414)))

(declare-fun res!1328897 () Bool)

(assert (=> b!3270036 (=> (not res!1328897) (not e!2036414))))

(assert (=> b!3270036 (= res!1328897 lt!1109135)))

(declare-fun d!906723 () Bool)

(assert (=> d!906723 e!2036421))

(declare-fun c!552155 () Bool)

(assert (=> d!906723 (= c!552155 ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))))))

(assert (=> d!906723 (= lt!1109135 e!2036415)))

(declare-fun c!552154 () Bool)

(assert (=> d!906723 (= c!552154 (isEmpty!20562 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))))))

(assert (=> d!906723 (validRegex!4567 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))))

(assert (=> d!906723 (= (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))) lt!1109135)))

(declare-fun b!3270033 () Bool)

(assert (=> b!3270033 (= e!2036420 e!2036418)))

(declare-fun res!1328898 () Bool)

(assert (=> b!3270033 (=> (not res!1328898) (not e!2036418))))

(assert (=> b!3270033 (= res!1328898 (not lt!1109135))))

(declare-fun b!3270037 () Bool)

(declare-fun res!1328896 () Bool)

(assert (=> b!3270037 (=> res!1328896 e!2036420)))

(assert (=> b!3270037 (= res!1328896 (not ((_ is ElementMatch!10043) (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))))))

(assert (=> b!3270037 (= e!2036419 e!2036420)))

(declare-fun b!3270038 () Bool)

(assert (=> b!3270038 (= e!2036421 e!2036419)))

(declare-fun c!552153 () Bool)

(assert (=> b!3270038 (= c!552153 ((_ is EmptyLang!10043) (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))))))

(assert (= (and d!906723 c!552154) b!3270031))

(assert (= (and d!906723 (not c!552154)) b!3270029))

(assert (= (and d!906723 c!552155) b!3270028))

(assert (= (and d!906723 (not c!552155)) b!3270038))

(assert (= (and b!3270038 c!552153) b!3270034))

(assert (= (and b!3270038 (not c!552153)) b!3270037))

(assert (= (and b!3270037 (not res!1328896)) b!3270036))

(assert (= (and b!3270036 res!1328897) b!3270030))

(assert (= (and b!3270030 res!1328895) b!3270027))

(assert (= (and b!3270027 res!1328894) b!3270025))

(assert (= (and b!3270036 (not res!1328900)) b!3270033))

(assert (= (and b!3270033 res!1328898) b!3270032))

(assert (= (and b!3270032 (not res!1328899)) b!3270035))

(assert (= (and b!3270035 (not res!1328893)) b!3270026))

(assert (= (or b!3270028 b!3270030 b!3270032) bm!236987))

(assert (=> bm!236987 m!3569805))

(declare-fun m!3572743 () Bool)

(assert (=> bm!236987 m!3572743))

(assert (=> b!3270025 m!3569805))

(declare-fun m!3572745 () Bool)

(assert (=> b!3270025 m!3572745))

(assert (=> b!3270026 m!3569805))

(assert (=> b!3270026 m!3572745))

(assert (=> b!3270035 m!3569805))

(declare-fun m!3572747 () Bool)

(assert (=> b!3270035 m!3572747))

(assert (=> b!3270035 m!3572747))

(declare-fun m!3572749 () Bool)

(assert (=> b!3270035 m!3572749))

(assert (=> d!906723 m!3569805))

(assert (=> d!906723 m!3572743))

(declare-fun m!3572751 () Bool)

(assert (=> d!906723 m!3572751))

(assert (=> b!3270027 m!3569805))

(assert (=> b!3270027 m!3572747))

(assert (=> b!3270027 m!3572747))

(assert (=> b!3270027 m!3572749))

(declare-fun m!3572753 () Bool)

(assert (=> b!3270031 m!3572753))

(assert (=> b!3270029 m!3569805))

(assert (=> b!3270029 m!3572745))

(assert (=> b!3270029 m!3572745))

(declare-fun m!3572755 () Bool)

(assert (=> b!3270029 m!3572755))

(assert (=> b!3270029 m!3569805))

(assert (=> b!3270029 m!3572747))

(assert (=> b!3270029 m!3572755))

(assert (=> b!3270029 m!3572747))

(declare-fun m!3572757 () Bool)

(assert (=> b!3270029 m!3572757))

(assert (=> b!3268176 d!906723))

(declare-fun d!906725 () Bool)

(assert (=> d!906725 (= (get!11625 lt!1108249) (v!35952 lt!1108249))))

(assert (=> b!3268176 d!906725))

(declare-fun d!906727 () Bool)

(assert (=> d!906727 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))) (list!13035 (c!551639 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))))))

(declare-fun bs!546113 () Bool)

(assert (= bs!546113 d!906727))

(declare-fun m!3572759 () Bool)

(assert (=> bs!546113 m!3572759))

(assert (=> b!3268176 d!906727))

(declare-fun d!906729 () Bool)

(declare-fun lt!1109136 () BalanceConc!21500)

(assert (=> d!906729 (= (list!13032 lt!1109136) (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249))))))

(assert (=> d!906729 (= lt!1109136 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))) (value!171054 (_1!21093 (get!11625 lt!1108249)))))))

(assert (=> d!906729 (= (charsOf!3300 (_1!21093 (get!11625 lt!1108249))) lt!1109136)))

(declare-fun b_lambda!90591 () Bool)

(assert (=> (not b_lambda!90591) (not d!906729)))

(declare-fun tb!165801 () Bool)

(declare-fun t!247618 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247618) tb!165801))

(declare-fun b!3270045 () Bool)

(declare-fun e!2036430 () Bool)

(declare-fun tp!1027232 () Bool)

(assert (=> b!3270045 (= e!2036430 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))) (value!171054 (_1!21093 (get!11625 lt!1108249)))))) tp!1027232))))

(declare-fun result!208496 () Bool)

(assert (=> tb!165801 (= result!208496 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))) (value!171054 (_1!21093 (get!11625 lt!1108249))))) e!2036430))))

(assert (= tb!165801 b!3270045))

(declare-fun m!3572761 () Bool)

(assert (=> b!3270045 m!3572761))

(declare-fun m!3572763 () Bool)

(assert (=> tb!165801 m!3572763))

(assert (=> d!906729 t!247618))

(declare-fun b_and!221475 () Bool)

(assert (= b_and!221437 (and (=> t!247618 result!208496) b_and!221475)))

(declare-fun t!247620 () Bool)

(declare-fun tb!165803 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247620) tb!165803))

(declare-fun result!208498 () Bool)

(assert (= result!208498 result!208496))

(assert (=> d!906729 t!247620))

(declare-fun b_and!221477 () Bool)

(assert (= b_and!221439 (and (=> t!247620 result!208498) b_and!221477)))

(declare-fun tb!165805 () Bool)

(declare-fun t!247622 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247622) tb!165805))

(declare-fun result!208500 () Bool)

(assert (= result!208500 result!208496))

(assert (=> d!906729 t!247622))

(declare-fun b_and!221479 () Bool)

(assert (= b_and!221441 (and (=> t!247622 result!208500) b_and!221479)))

(declare-fun t!247624 () Bool)

(declare-fun tb!165807 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247624) tb!165807))

(declare-fun result!208502 () Bool)

(assert (= result!208502 result!208496))

(assert (=> d!906729 t!247624))

(declare-fun b_and!221481 () Bool)

(assert (= b_and!221443 (and (=> t!247624 result!208502) b_and!221481)))

(declare-fun tb!165809 () Bool)

(declare-fun t!247626 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247626) tb!165809))

(declare-fun result!208504 () Bool)

(assert (= result!208504 result!208496))

(assert (=> d!906729 t!247626))

(declare-fun b_and!221483 () Bool)

(assert (= b_and!221445 (and (=> t!247626 result!208504) b_and!221483)))

(declare-fun m!3572773 () Bool)

(assert (=> d!906729 m!3572773))

(declare-fun m!3572775 () Bool)

(assert (=> d!906729 m!3572775))

(assert (=> b!3268176 d!906729))

(declare-fun d!906731 () Bool)

(assert (=> d!906731 (= (list!13032 (_2!21094 lt!1108292)) (list!13035 (c!551639 (_2!21094 lt!1108292))))))

(declare-fun bs!546114 () Bool)

(assert (= bs!546114 d!906731))

(declare-fun m!3572777 () Bool)

(assert (=> bs!546114 m!3572777))

(assert (=> b!3268248 d!906731))

(declare-fun b!3270046 () Bool)

(declare-fun e!2036431 () Bool)

(declare-fun lt!1109139 () tuple2!35916)

(assert (=> b!3270046 (= e!2036431 (= (_2!21092 lt!1109139) (list!13032 lt!1108144)))))

(declare-fun b!3270047 () Bool)

(declare-fun e!2036432 () Bool)

(assert (=> b!3270047 (= e!2036432 (not (isEmpty!20561 (_1!21092 lt!1109139))))))

(declare-fun b!3270048 () Bool)

(assert (=> b!3270048 (= e!2036431 e!2036432)))

(declare-fun res!1328901 () Bool)

(assert (=> b!3270048 (= res!1328901 (< (size!27503 (_2!21092 lt!1109139)) (size!27503 (list!13032 lt!1108144))))))

(assert (=> b!3270048 (=> (not res!1328901) (not e!2036432))))

(declare-fun d!906733 () Bool)

(assert (=> d!906733 e!2036431))

(declare-fun c!552156 () Bool)

(assert (=> d!906733 (= c!552156 (> (size!27506 (_1!21092 lt!1109139)) 0))))

(declare-fun e!2036433 () tuple2!35916)

(assert (=> d!906733 (= lt!1109139 e!2036433)))

(declare-fun c!552157 () Bool)

(declare-fun lt!1109138 () Option!7257)

(assert (=> d!906733 (= c!552157 ((_ is Some!7256) lt!1109138))))

(assert (=> d!906733 (= lt!1109138 (maxPrefix!2501 thiss!18206 rules!2135 (list!13032 lt!1108144)))))

(assert (=> d!906733 (= (lexList!1347 thiss!18206 rules!2135 (list!13032 lt!1108144)) lt!1109139)))

(declare-fun b!3270049 () Bool)

(assert (=> b!3270049 (= e!2036433 (tuple2!35917 Nil!36444 (list!13032 lt!1108144)))))

(declare-fun b!3270050 () Bool)

(declare-fun lt!1109137 () tuple2!35916)

(assert (=> b!3270050 (= e!2036433 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1109138)) (_1!21092 lt!1109137)) (_2!21092 lt!1109137)))))

(assert (=> b!3270050 (= lt!1109137 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1109138))))))

(assert (= (and d!906733 c!552157) b!3270050))

(assert (= (and d!906733 (not c!552157)) b!3270049))

(assert (= (and d!906733 c!552156) b!3270048))

(assert (= (and d!906733 (not c!552156)) b!3270046))

(assert (= (and b!3270048 res!1328901) b!3270047))

(declare-fun m!3572779 () Bool)

(assert (=> b!3270047 m!3572779))

(declare-fun m!3572781 () Bool)

(assert (=> b!3270048 m!3572781))

(assert (=> b!3270048 m!3569927))

(declare-fun m!3572783 () Bool)

(assert (=> b!3270048 m!3572783))

(declare-fun m!3572785 () Bool)

(assert (=> d!906733 m!3572785))

(assert (=> d!906733 m!3569927))

(declare-fun m!3572787 () Bool)

(assert (=> d!906733 m!3572787))

(declare-fun m!3572789 () Bool)

(assert (=> b!3270050 m!3572789))

(assert (=> b!3268248 d!906733))

(declare-fun d!906743 () Bool)

(assert (=> d!906743 (= (list!13032 lt!1108144) (list!13035 (c!551639 lt!1108144)))))

(declare-fun bs!546120 () Bool)

(assert (= bs!546120 d!906743))

(declare-fun m!3572791 () Bool)

(assert (=> bs!546120 m!3572791))

(assert (=> b!3268248 d!906743))

(assert (=> b!3268761 d!906635))

(declare-fun d!906749 () Bool)

(assert (=> d!906749 (= (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477))))) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477))))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477))))))))

(declare-fun b_lambda!90617 () Bool)

(assert (=> (not b_lambda!90617) (not d!906749)))

(declare-fun tb!165811 () Bool)

(declare-fun t!247628 () Bool)

(assert (=> (and b!3268826 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247628) tb!165811))

(declare-fun result!208506 () Bool)

(assert (=> tb!165811 (= result!208506 (inv!21 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477))))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477)))))))))

(declare-fun m!3572793 () Bool)

(assert (=> tb!165811 m!3572793))

(assert (=> d!906749 t!247628))

(declare-fun b_and!221485 () Bool)

(assert (= b_and!221323 (and (=> t!247628 result!208506) b_and!221485)))

(declare-fun tb!165813 () Bool)

(declare-fun t!247630 () Bool)

(assert (=> (and b!3267911 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247630) tb!165813))

(declare-fun result!208508 () Bool)

(assert (= result!208508 result!208506))

(assert (=> d!906749 t!247630))

(declare-fun b_and!221487 () Bool)

(assert (= b_and!221317 (and (=> t!247630 result!208508) b_and!221487)))

(declare-fun t!247632 () Bool)

(declare-fun tb!165815 () Bool)

(assert (=> (and b!3268812 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247632) tb!165815))

(declare-fun result!208510 () Bool)

(assert (= result!208510 result!208506))

(assert (=> d!906749 t!247632))

(declare-fun b_and!221489 () Bool)

(assert (= b_and!221319 (and (=> t!247632 result!208510) b_and!221489)))

(declare-fun t!247634 () Bool)

(declare-fun tb!165817 () Bool)

(assert (=> (and b!3267901 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247634) tb!165817))

(declare-fun result!208512 () Bool)

(assert (= result!208512 result!208506))

(assert (=> d!906749 t!247634))

(declare-fun b_and!221491 () Bool)

(assert (= b_and!221315 (and (=> t!247634 result!208512) b_and!221491)))

(declare-fun tb!165819 () Bool)

(declare-fun t!247636 () Bool)

(assert (=> (and b!3267900 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247636) tb!165819))

(declare-fun result!208514 () Bool)

(assert (= result!208514 result!208506))

(assert (=> d!906749 t!247636))

(declare-fun b_and!221493 () Bool)

(assert (= b_and!221313 (and (=> t!247636 result!208514) b_and!221493)))

(assert (=> d!906749 m!3570663))

(declare-fun m!3572795 () Bool)

(assert (=> d!906749 m!3572795))

(assert (=> b!3268761 d!906749))

(declare-fun d!906751 () Bool)

(assert (=> d!906751 (= (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477)))) (fromListB!1586 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477)))))))

(declare-fun bs!546122 () Bool)

(assert (= bs!546122 d!906751))

(declare-fun m!3572797 () Bool)

(assert (=> bs!546122 m!3572797))

(assert (=> b!3268761 d!906751))

(declare-fun d!906753 () Bool)

(assert (=> d!906753 (= (isEmpty!20562 (tail!5250 lt!1108142)) ((_ is Nil!36443) (tail!5250 lt!1108142)))))

(assert (=> b!3268440 d!906753))

(assert (=> b!3268440 d!906699))

(declare-fun d!906755 () Bool)

(declare-fun res!1328902 () Bool)

(declare-fun e!2036435 () Bool)

(assert (=> d!906755 (=> res!1328902 e!2036435)))

(assert (=> d!906755 (= res!1328902 ((_ is Nil!36444) (t!247339 tokens!494)))))

(assert (=> d!906755 (= (forall!7522 (t!247339 tokens!494) lambda!118615) e!2036435)))

(declare-fun b!3270051 () Bool)

(declare-fun e!2036436 () Bool)

(assert (=> b!3270051 (= e!2036435 e!2036436)))

(declare-fun res!1328903 () Bool)

(assert (=> b!3270051 (=> (not res!1328903) (not e!2036436))))

(assert (=> b!3270051 (= res!1328903 (dynLambda!14876 lambda!118615 (h!41864 (t!247339 tokens!494))))))

(declare-fun b!3270052 () Bool)

(assert (=> b!3270052 (= e!2036436 (forall!7522 (t!247339 (t!247339 tokens!494)) lambda!118615))))

(assert (= (and d!906755 (not res!1328902)) b!3270051))

(assert (= (and b!3270051 res!1328903) b!3270052))

(declare-fun b_lambda!90619 () Bool)

(assert (=> (not b_lambda!90619) (not b!3270051)))

(declare-fun m!3572799 () Bool)

(assert (=> b!3270051 m!3572799))

(declare-fun m!3572801 () Bool)

(assert (=> b!3270052 m!3572801))

(assert (=> b!3268546 d!906755))

(declare-fun b!3270054 () Bool)

(declare-fun e!2036439 () List!36567)

(declare-fun call!236995 () List!36567)

(assert (=> b!3270054 (= e!2036439 call!236995)))

(declare-fun b!3270055 () Bool)

(declare-fun e!2036437 () List!36567)

(assert (=> b!3270055 (= e!2036437 e!2036439)))

(declare-fun c!552158 () Bool)

(assert (=> b!3270055 (= c!552158 ((_ is Union!10043) (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))))))

(declare-fun b!3270056 () Bool)

(declare-fun e!2036440 () List!36567)

(declare-fun e!2036438 () List!36567)

(assert (=> b!3270056 (= e!2036440 e!2036438)))

(declare-fun c!552160 () Bool)

(assert (=> b!3270056 (= c!552160 ((_ is ElementMatch!10043) (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))))))

(declare-fun b!3270057 () Bool)

(assert (=> b!3270057 (= e!2036438 (Cons!36443 (c!551638 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) Nil!36443))))

(declare-fun b!3270058 () Bool)

(assert (=> b!3270058 (= e!2036440 Nil!36443)))

(declare-fun bm!236988 () Bool)

(declare-fun call!236994 () List!36567)

(assert (=> bm!236988 (= call!236994 (usedCharacters!586 (ite c!552158 (regOne!20599 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) (regTwo!20598 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))))))))

(declare-fun b!3270059 () Bool)

(assert (=> b!3270059 (= e!2036439 call!236995)))

(declare-fun b!3270053 () Bool)

(declare-fun c!552161 () Bool)

(assert (=> b!3270053 (= c!552161 ((_ is Star!10043) (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))))))

(assert (=> b!3270053 (= e!2036438 e!2036437)))

(declare-fun d!906757 () Bool)

(declare-fun c!552159 () Bool)

(assert (=> d!906757 (= c!552159 (or ((_ is EmptyExpr!10043) (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) ((_ is EmptyLang!10043) (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))

(assert (=> d!906757 (= (usedCharacters!586 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) e!2036440)))

(declare-fun bm!236989 () Bool)

(declare-fun call!236996 () List!36567)

(declare-fun call!236993 () List!36567)

(assert (=> bm!236989 (= call!236996 call!236993)))

(declare-fun bm!236990 () Bool)

(assert (=> bm!236990 (= call!236995 (++!8798 (ite c!552158 call!236994 call!236996) (ite c!552158 call!236996 call!236994)))))

(declare-fun bm!236991 () Bool)

(assert (=> bm!236991 (= call!236993 (usedCharacters!586 (ite c!552161 (reg!10372 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) (ite c!552158 (regTwo!20599 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) (regOne!20598 (ite c!551826 (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241)))))))))))

(declare-fun b!3270060 () Bool)

(assert (=> b!3270060 (= e!2036437 call!236993)))

(assert (= (and d!906757 c!552159) b!3270058))

(assert (= (and d!906757 (not c!552159)) b!3270056))

(assert (= (and b!3270056 c!552160) b!3270057))

(assert (= (and b!3270056 (not c!552160)) b!3270053))

(assert (= (and b!3270053 c!552161) b!3270060))

(assert (= (and b!3270053 (not c!552161)) b!3270055))

(assert (= (and b!3270055 c!552158) b!3270059))

(assert (= (and b!3270055 (not c!552158)) b!3270054))

(assert (= (or b!3270059 b!3270054) bm!236989))

(assert (= (or b!3270059 b!3270054) bm!236988))

(assert (= (or b!3270059 b!3270054) bm!236990))

(assert (= (or b!3270060 bm!236989) bm!236991))

(declare-fun m!3572803 () Bool)

(assert (=> bm!236988 m!3572803))

(declare-fun m!3572805 () Bool)

(assert (=> bm!236990 m!3572805))

(declare-fun m!3572807 () Bool)

(assert (=> bm!236991 m!3572807))

(assert (=> bm!236856 d!906757))

(declare-fun d!906759 () Bool)

(assert (=> d!906759 (= (list!13032 lt!1108325) (list!13035 (c!551639 lt!1108325)))))

(declare-fun bs!546123 () Bool)

(assert (= bs!546123 d!906759))

(declare-fun m!3572809 () Bool)

(assert (=> bs!546123 m!3572809))

(assert (=> d!905933 d!906759))

(declare-fun d!906761 () Bool)

(declare-fun c!552162 () Bool)

(assert (=> d!906761 (= c!552162 ((_ is Cons!36444) (list!13033 (BalanceConc!21503 Empty!10944))))))

(declare-fun e!2036441 () List!36567)

(assert (=> d!906761 (= (printWithSeparatorTokenList!198 thiss!18206 (list!13033 (BalanceConc!21503 Empty!10944)) separatorToken!241) e!2036441)))

(declare-fun b!3270061 () Bool)

(assert (=> b!3270061 (= e!2036441 (++!8798 (++!8798 (list!13032 (charsOf!3300 (h!41864 (list!13033 (BalanceConc!21503 Empty!10944))))) (list!13032 (charsOf!3300 separatorToken!241))) (printWithSeparatorTokenList!198 thiss!18206 (t!247339 (list!13033 (BalanceConc!21503 Empty!10944))) separatorToken!241)))))

(declare-fun b!3270062 () Bool)

(assert (=> b!3270062 (= e!2036441 Nil!36443)))

(assert (= (and d!906761 c!552162) b!3270061))

(assert (= (and d!906761 (not c!552162)) b!3270062))

(declare-fun m!3572811 () Bool)

(assert (=> b!3270061 m!3572811))

(declare-fun m!3572813 () Bool)

(assert (=> b!3270061 m!3572813))

(assert (=> b!3270061 m!3572813))

(assert (=> b!3270061 m!3569515))

(declare-fun m!3572815 () Bool)

(assert (=> b!3270061 m!3572815))

(assert (=> b!3270061 m!3569507))

(assert (=> b!3270061 m!3569507))

(assert (=> b!3270061 m!3569515))

(assert (=> b!3270061 m!3572815))

(declare-fun m!3572817 () Bool)

(assert (=> b!3270061 m!3572817))

(declare-fun m!3572819 () Bool)

(assert (=> b!3270061 m!3572819))

(assert (=> b!3270061 m!3572817))

(assert (=> b!3270061 m!3572811))

(assert (=> d!905933 d!906761))

(declare-fun d!906763 () Bool)

(assert (=> d!906763 (= (list!13033 (BalanceConc!21503 Empty!10944)) (list!13036 (c!551640 (BalanceConc!21503 Empty!10944))))))

(declare-fun bs!546124 () Bool)

(assert (= bs!546124 d!906763))

(declare-fun m!3572821 () Bool)

(assert (=> bs!546124 m!3572821))

(assert (=> d!905933 d!906763))

(declare-fun d!906765 () Bool)

(declare-fun lt!1109158 () BalanceConc!21500)

(declare-fun printWithSeparatorTokenListTailRec!10 (LexerInterface!4873 List!36568 Token!9934 List!36567) List!36567)

(assert (=> d!906765 (= (list!13032 lt!1109158) (printWithSeparatorTokenListTailRec!10 thiss!18206 (dropList!1104 (BalanceConc!21503 Empty!10944) 0) separatorToken!241 (list!13032 (BalanceConc!21501 Empty!10943))))))

(declare-fun e!2036447 () BalanceConc!21500)

(assert (=> d!906765 (= lt!1109158 e!2036447)))

(declare-fun c!552165 () Bool)

(assert (=> d!906765 (= c!552165 (>= 0 (size!27508 (BalanceConc!21503 Empty!10944))))))

(declare-fun e!2036446 () Bool)

(assert (=> d!906765 e!2036446))

(declare-fun res!1328906 () Bool)

(assert (=> d!906765 (=> (not res!1328906) (not e!2036446))))

(assert (=> d!906765 (= res!1328906 (>= 0 0))))

(assert (=> d!906765 (= (printWithSeparatorTokenTailRec!26 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241 0 (BalanceConc!21501 Empty!10943)) lt!1109158)))

(declare-fun b!3270069 () Bool)

(assert (=> b!3270069 (= e!2036446 (<= 0 (size!27508 (BalanceConc!21503 Empty!10944))))))

(declare-fun b!3270070 () Bool)

(assert (=> b!3270070 (= e!2036447 (BalanceConc!21501 Empty!10943))))

(declare-fun b!3270071 () Bool)

(assert (=> b!3270071 (= e!2036447 (printWithSeparatorTokenTailRec!26 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241 (+ 0 1) (++!8800 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 (BalanceConc!21503 Empty!10944) 0))) (charsOf!3300 separatorToken!241))))))

(declare-fun lt!1109159 () List!36568)

(assert (=> b!3270071 (= lt!1109159 (list!13033 (BalanceConc!21503 Empty!10944)))))

(declare-fun lt!1109157 () Unit!51218)

(assert (=> b!3270071 (= lt!1109157 (lemmaDropApply!1063 lt!1109159 0))))

(assert (=> b!3270071 (= (head!7115 (drop!1893 lt!1109159 0)) (apply!8352 lt!1109159 0))))

(declare-fun lt!1109156 () Unit!51218)

(assert (=> b!3270071 (= lt!1109156 lt!1109157)))

(declare-fun lt!1109160 () List!36568)

(assert (=> b!3270071 (= lt!1109160 (list!13033 (BalanceConc!21503 Empty!10944)))))

(declare-fun lt!1109155 () Unit!51218)

(assert (=> b!3270071 (= lt!1109155 (lemmaDropTail!947 lt!1109160 0))))

(assert (=> b!3270071 (= (tail!5253 (drop!1893 lt!1109160 0)) (drop!1893 lt!1109160 (+ 0 1)))))

(declare-fun lt!1109154 () Unit!51218)

(assert (=> b!3270071 (= lt!1109154 lt!1109155)))

(assert (= (and d!906765 res!1328906) b!3270069))

(assert (= (and d!906765 c!552165) b!3270070))

(assert (= (and d!906765 (not c!552165)) b!3270071))

(declare-fun m!3572823 () Bool)

(assert (=> d!906765 m!3572823))

(declare-fun m!3572825 () Bool)

(assert (=> d!906765 m!3572825))

(declare-fun m!3572827 () Bool)

(assert (=> d!906765 m!3572827))

(assert (=> d!906765 m!3570235))

(assert (=> d!906765 m!3572823))

(assert (=> d!906765 m!3570235))

(declare-fun m!3572829 () Bool)

(assert (=> d!906765 m!3572829))

(assert (=> b!3270069 m!3572827))

(declare-fun m!3572831 () Bool)

(assert (=> b!3270071 m!3572831))

(declare-fun m!3572833 () Bool)

(assert (=> b!3270071 m!3572833))

(declare-fun m!3572835 () Bool)

(assert (=> b!3270071 m!3572835))

(assert (=> b!3270071 m!3569507))

(declare-fun m!3572837 () Bool)

(assert (=> b!3270071 m!3572837))

(declare-fun m!3572839 () Bool)

(assert (=> b!3270071 m!3572839))

(declare-fun m!3572841 () Bool)

(assert (=> b!3270071 m!3572841))

(declare-fun m!3572843 () Bool)

(assert (=> b!3270071 m!3572843))

(assert (=> b!3270071 m!3572839))

(declare-fun m!3572845 () Bool)

(assert (=> b!3270071 m!3572845))

(assert (=> b!3270071 m!3569507))

(assert (=> b!3270071 m!3570101))

(declare-fun m!3572847 () Bool)

(assert (=> b!3270071 m!3572847))

(assert (=> b!3270071 m!3572837))

(declare-fun m!3572849 () Bool)

(assert (=> b!3270071 m!3572849))

(assert (=> b!3270071 m!3572833))

(declare-fun m!3572851 () Bool)

(assert (=> b!3270071 m!3572851))

(assert (=> b!3270071 m!3572841))

(assert (=> b!3270071 m!3572835))

(assert (=> b!3270071 m!3572831))

(declare-fun m!3572853 () Bool)

(assert (=> b!3270071 m!3572853))

(declare-fun m!3572855 () Bool)

(assert (=> b!3270071 m!3572855))

(assert (=> d!905933 d!906765))

(declare-fun b!3270072 () Bool)

(declare-fun e!2036448 () Option!7257)

(declare-fun lt!1109165 () tuple2!35924)

(assert (=> b!3270072 (= e!2036448 (Some!7256 (tuple2!35919 (Token!9935 (apply!8348 (transformation!5284 (h!41865 rules!2135)) (seqFromList!3632 (_1!21096 lt!1109165))) (h!41865 rules!2135) (size!27509 (seqFromList!3632 (_1!21096 lt!1109165))) (_1!21096 lt!1109165)) (_2!21096 lt!1109165))))))

(declare-fun lt!1109161 () Unit!51218)

(assert (=> b!3270072 (= lt!1109161 (longestMatchIsAcceptedByMatchOrIsEmpty!818 (regex!5284 (h!41865 rules!2135)) lt!1108162))))

(declare-fun res!1328912 () Bool)

(assert (=> b!3270072 (= res!1328912 (isEmpty!20562 (_1!21096 (findLongestMatchInner!845 (regex!5284 (h!41865 rules!2135)) Nil!36443 (size!27503 Nil!36443) lt!1108162 lt!1108162 (size!27503 lt!1108162)))))))

(declare-fun e!2036449 () Bool)

(assert (=> b!3270072 (=> res!1328912 e!2036449)))

(assert (=> b!3270072 e!2036449))

(declare-fun lt!1109163 () Unit!51218)

(assert (=> b!3270072 (= lt!1109163 lt!1109161)))

(declare-fun lt!1109164 () Unit!51218)

(assert (=> b!3270072 (= lt!1109164 (lemmaSemiInverse!1191 (transformation!5284 (h!41865 rules!2135)) (seqFromList!3632 (_1!21096 lt!1109165))))))

(declare-fun b!3270073 () Bool)

(declare-fun e!2036451 () Bool)

(declare-fun lt!1109162 () Option!7257)

(assert (=> b!3270073 (= e!2036451 (= (size!27502 (_1!21093 (get!11625 lt!1109162))) (size!27503 (originalCharacters!5998 (_1!21093 (get!11625 lt!1109162))))))))

(declare-fun b!3270074 () Bool)

(declare-fun res!1328908 () Bool)

(assert (=> b!3270074 (=> (not res!1328908) (not e!2036451))))

(assert (=> b!3270074 (= res!1328908 (= (value!171054 (_1!21093 (get!11625 lt!1109162))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1109162)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1109162)))))))))

(declare-fun b!3270075 () Bool)

(declare-fun res!1328910 () Bool)

(assert (=> b!3270075 (=> (not res!1328910) (not e!2036451))))

(assert (=> b!3270075 (= res!1328910 (< (size!27503 (_2!21093 (get!11625 lt!1109162))) (size!27503 lt!1108162)))))

(declare-fun d!906767 () Bool)

(declare-fun e!2036450 () Bool)

(assert (=> d!906767 e!2036450))

(declare-fun res!1328909 () Bool)

(assert (=> d!906767 (=> res!1328909 e!2036450)))

(assert (=> d!906767 (= res!1328909 (isEmpty!20566 lt!1109162))))

(assert (=> d!906767 (= lt!1109162 e!2036448)))

(declare-fun c!552166 () Bool)

(assert (=> d!906767 (= c!552166 (isEmpty!20562 (_1!21096 lt!1109165)))))

(assert (=> d!906767 (= lt!1109165 (findLongestMatch!760 (regex!5284 (h!41865 rules!2135)) lt!1108162))))

(assert (=> d!906767 (ruleValid!1666 thiss!18206 (h!41865 rules!2135))))

(assert (=> d!906767 (= (maxPrefixOneRule!1638 thiss!18206 (h!41865 rules!2135) lt!1108162) lt!1109162)))

(declare-fun b!3270076 () Bool)

(declare-fun res!1328911 () Bool)

(assert (=> b!3270076 (=> (not res!1328911) (not e!2036451))))

(assert (=> b!3270076 (= res!1328911 (= (rule!7766 (_1!21093 (get!11625 lt!1109162))) (h!41865 rules!2135)))))

(declare-fun b!3270077 () Bool)

(assert (=> b!3270077 (= e!2036449 (matchR!4665 (regex!5284 (h!41865 rules!2135)) (_1!21096 (findLongestMatchInner!845 (regex!5284 (h!41865 rules!2135)) Nil!36443 (size!27503 Nil!36443) lt!1108162 lt!1108162 (size!27503 lt!1108162)))))))

(declare-fun b!3270078 () Bool)

(assert (=> b!3270078 (= e!2036450 e!2036451)))

(declare-fun res!1328913 () Bool)

(assert (=> b!3270078 (=> (not res!1328913) (not e!2036451))))

(assert (=> b!3270078 (= res!1328913 (matchR!4665 (regex!5284 (h!41865 rules!2135)) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109162))))))))

(declare-fun b!3270079 () Bool)

(declare-fun res!1328907 () Bool)

(assert (=> b!3270079 (=> (not res!1328907) (not e!2036451))))

(assert (=> b!3270079 (= res!1328907 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109162)))) (_2!21093 (get!11625 lt!1109162))) lt!1108162))))

(declare-fun b!3270080 () Bool)

(assert (=> b!3270080 (= e!2036448 None!7256)))

(assert (= (and d!906767 c!552166) b!3270080))

(assert (= (and d!906767 (not c!552166)) b!3270072))

(assert (= (and b!3270072 (not res!1328912)) b!3270077))

(assert (= (and d!906767 (not res!1328909)) b!3270078))

(assert (= (and b!3270078 res!1328913) b!3270079))

(assert (= (and b!3270079 res!1328907) b!3270075))

(assert (= (and b!3270075 res!1328910) b!3270076))

(assert (= (and b!3270076 res!1328911) b!3270074))

(assert (= (and b!3270074 res!1328908) b!3270073))

(declare-fun m!3572857 () Bool)

(assert (=> b!3270073 m!3572857))

(declare-fun m!3572859 () Bool)

(assert (=> b!3270073 m!3572859))

(assert (=> b!3270076 m!3572857))

(assert (=> b!3270077 m!3570629))

(assert (=> b!3270077 m!3569721))

(assert (=> b!3270077 m!3570629))

(assert (=> b!3270077 m!3569721))

(declare-fun m!3572861 () Bool)

(assert (=> b!3270077 m!3572861))

(declare-fun m!3572863 () Bool)

(assert (=> b!3270077 m!3572863))

(declare-fun m!3572865 () Bool)

(assert (=> d!906767 m!3572865))

(declare-fun m!3572867 () Bool)

(assert (=> d!906767 m!3572867))

(declare-fun m!3572869 () Bool)

(assert (=> d!906767 m!3572869))

(assert (=> d!906767 m!3572181))

(declare-fun m!3572871 () Bool)

(assert (=> b!3270072 m!3572871))

(declare-fun m!3572873 () Bool)

(assert (=> b!3270072 m!3572873))

(declare-fun m!3572875 () Bool)

(assert (=> b!3270072 m!3572875))

(declare-fun m!3572877 () Bool)

(assert (=> b!3270072 m!3572877))

(assert (=> b!3270072 m!3572873))

(declare-fun m!3572879 () Bool)

(assert (=> b!3270072 m!3572879))

(assert (=> b!3270072 m!3570629))

(assert (=> b!3270072 m!3572873))

(assert (=> b!3270072 m!3572873))

(declare-fun m!3572881 () Bool)

(assert (=> b!3270072 m!3572881))

(assert (=> b!3270072 m!3570629))

(assert (=> b!3270072 m!3569721))

(assert (=> b!3270072 m!3572861))

(assert (=> b!3270072 m!3569721))

(assert (=> b!3270075 m!3572857))

(declare-fun m!3572883 () Bool)

(assert (=> b!3270075 m!3572883))

(assert (=> b!3270075 m!3569721))

(assert (=> b!3270078 m!3572857))

(declare-fun m!3572885 () Bool)

(assert (=> b!3270078 m!3572885))

(assert (=> b!3270078 m!3572885))

(declare-fun m!3572887 () Bool)

(assert (=> b!3270078 m!3572887))

(assert (=> b!3270078 m!3572887))

(declare-fun m!3572889 () Bool)

(assert (=> b!3270078 m!3572889))

(assert (=> b!3270074 m!3572857))

(declare-fun m!3572891 () Bool)

(assert (=> b!3270074 m!3572891))

(assert (=> b!3270074 m!3572891))

(declare-fun m!3572893 () Bool)

(assert (=> b!3270074 m!3572893))

(assert (=> b!3270079 m!3572857))

(assert (=> b!3270079 m!3572885))

(assert (=> b!3270079 m!3572885))

(assert (=> b!3270079 m!3572887))

(assert (=> b!3270079 m!3572887))

(declare-fun m!3572895 () Bool)

(assert (=> b!3270079 m!3572895))

(assert (=> bm!236832 d!906767))

(declare-fun d!906769 () Bool)

(declare-fun res!1328914 () Bool)

(declare-fun e!2036452 () Bool)

(assert (=> d!906769 (=> res!1328914 e!2036452)))

(assert (=> d!906769 (= res!1328914 ((_ is Nil!36444) lt!1108322))))

(assert (=> d!906769 (= (forall!7522 lt!1108322 lambda!118615) e!2036452)))

(declare-fun b!3270081 () Bool)

(declare-fun e!2036453 () Bool)

(assert (=> b!3270081 (= e!2036452 e!2036453)))

(declare-fun res!1328915 () Bool)

(assert (=> b!3270081 (=> (not res!1328915) (not e!2036453))))

(assert (=> b!3270081 (= res!1328915 (dynLambda!14876 lambda!118615 (h!41864 lt!1108322)))))

(declare-fun b!3270082 () Bool)

(assert (=> b!3270082 (= e!2036453 (forall!7522 (t!247339 lt!1108322) lambda!118615))))

(assert (= (and d!906769 (not res!1328914)) b!3270081))

(assert (= (and b!3270081 res!1328915) b!3270082))

(declare-fun b_lambda!90621 () Bool)

(assert (=> (not b_lambda!90621) (not b!3270081)))

(declare-fun m!3572897 () Bool)

(assert (=> b!3270081 m!3572897))

(declare-fun m!3572899 () Bool)

(assert (=> b!3270082 m!3572899))

(assert (=> b!3268407 d!906769))

(declare-fun d!906771 () Bool)

(assert (=> d!906771 (= (head!7113 lt!1108158) (h!41863 lt!1108158))))

(assert (=> b!3267992 d!906771))

(declare-fun d!906773 () Bool)

(declare-fun lt!1109166 () Bool)

(assert (=> d!906773 (= lt!1109166 (select (content!4948 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1108241)))))))

(declare-fun e!2036455 () Bool)

(assert (=> d!906773 (= lt!1109166 e!2036455)))

(declare-fun res!1328917 () Bool)

(assert (=> d!906773 (=> (not res!1328917) (not e!2036455))))

(assert (=> d!906773 (= res!1328917 ((_ is Cons!36445) rules!2135))))

(assert (=> d!906773 (= (contains!6570 rules!2135 (rule!7766 (_1!21093 (get!11625 lt!1108241)))) lt!1109166)))

(declare-fun b!3270083 () Bool)

(declare-fun e!2036454 () Bool)

(assert (=> b!3270083 (= e!2036455 e!2036454)))

(declare-fun res!1328916 () Bool)

(assert (=> b!3270083 (=> res!1328916 e!2036454)))

(assert (=> b!3270083 (= res!1328916 (= (h!41865 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1108241)))))))

(declare-fun b!3270084 () Bool)

(assert (=> b!3270084 (= e!2036454 (contains!6570 (t!247340 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1108241)))))))

(assert (= (and d!906773 res!1328917) b!3270083))

(assert (= (and b!3270083 (not res!1328916)) b!3270084))

(assert (=> d!906773 m!3572719))

(declare-fun m!3572901 () Bool)

(assert (=> d!906773 m!3572901))

(declare-fun m!3572903 () Bool)

(assert (=> b!3270084 m!3572903))

(assert (=> b!3268166 d!906773))

(declare-fun d!906775 () Bool)

(assert (=> d!906775 (= (get!11625 lt!1108241) (v!35952 lt!1108241))))

(assert (=> b!3268166 d!906775))

(declare-fun d!906777 () Bool)

(declare-fun lt!1109167 () Int)

(assert (=> d!906777 (>= lt!1109167 0)))

(declare-fun e!2036456 () Int)

(assert (=> d!906777 (= lt!1109167 e!2036456)))

(declare-fun c!552167 () Bool)

(assert (=> d!906777 (= c!552167 ((_ is Nil!36443) (originalCharacters!5998 separatorToken!241)))))

(assert (=> d!906777 (= (size!27503 (originalCharacters!5998 separatorToken!241)) lt!1109167)))

(declare-fun b!3270085 () Bool)

(assert (=> b!3270085 (= e!2036456 0)))

(declare-fun b!3270086 () Bool)

(assert (=> b!3270086 (= e!2036456 (+ 1 (size!27503 (t!247338 (originalCharacters!5998 separatorToken!241)))))))

(assert (= (and d!906777 c!552167) b!3270085))

(assert (= (and d!906777 (not c!552167)) b!3270086))

(declare-fun m!3572905 () Bool)

(assert (=> b!3270086 m!3572905))

(assert (=> b!3268390 d!906777))

(declare-fun d!906779 () Bool)

(assert (=> d!906779 true))

(declare-fun lambda!118653 () Int)

(declare-fun order!18867 () Int)

(declare-fun dynLambda!14888 (Int Int) Int)

(assert (=> d!906779 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))) (dynLambda!14888 order!18867 lambda!118653))))

(declare-fun Forall2!882 (Int) Bool)

(assert (=> d!906779 (= (equivClasses!2080 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))) (Forall2!882 lambda!118653))))

(declare-fun bs!546125 () Bool)

(assert (= bs!546125 d!906779))

(declare-fun m!3572907 () Bool)

(assert (=> bs!546125 m!3572907))

(assert (=> b!3268429 d!906779))

(declare-fun d!906781 () Bool)

(declare-fun lt!1109168 () Token!9934)

(assert (=> d!906781 (= lt!1109168 (apply!8352 (list!13033 (_1!21094 lt!1108280)) 0))))

(assert (=> d!906781 (= lt!1109168 (apply!8354 (c!551640 (_1!21094 lt!1108280)) 0))))

(declare-fun e!2036459 () Bool)

(assert (=> d!906781 e!2036459))

(declare-fun res!1328920 () Bool)

(assert (=> d!906781 (=> (not res!1328920) (not e!2036459))))

(assert (=> d!906781 (= res!1328920 (<= 0 0))))

(assert (=> d!906781 (= (apply!8350 (_1!21094 lt!1108280) 0) lt!1109168)))

(declare-fun b!3270091 () Bool)

(assert (=> b!3270091 (= e!2036459 (< 0 (size!27508 (_1!21094 lt!1108280))))))

(assert (= (and d!906781 res!1328920) b!3270091))

(declare-fun m!3572909 () Bool)

(assert (=> d!906781 m!3572909))

(assert (=> d!906781 m!3572909))

(declare-fun m!3572911 () Bool)

(assert (=> d!906781 m!3572911))

(declare-fun m!3572913 () Bool)

(assert (=> d!906781 m!3572913))

(assert (=> b!3270091 m!3569889))

(assert (=> b!3268225 d!906781))

(declare-fun d!906783 () Bool)

(declare-fun lt!1109169 () Int)

(assert (=> d!906783 (>= lt!1109169 0)))

(declare-fun e!2036460 () Int)

(assert (=> d!906783 (= lt!1109169 e!2036460)))

(declare-fun c!552168 () Bool)

(assert (=> d!906783 (= c!552168 ((_ is Nil!36443) (t!247338 lt!1108158)))))

(assert (=> d!906783 (= (size!27503 (t!247338 lt!1108158)) lt!1109169)))

(declare-fun b!3270092 () Bool)

(assert (=> b!3270092 (= e!2036460 0)))

(declare-fun b!3270093 () Bool)

(assert (=> b!3270093 (= e!2036460 (+ 1 (size!27503 (t!247338 (t!247338 lt!1108158)))))))

(assert (= (and d!906783 c!552168) b!3270092))

(assert (= (and d!906783 (not c!552168)) b!3270093))

(declare-fun m!3572915 () Bool)

(assert (=> b!3270093 m!3572915))

(assert (=> b!3268689 d!906783))

(declare-fun d!906785 () Bool)

(assert (=> d!906785 (= (isDefined!5624 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))) (not (isEmpty!20571 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))))))

(declare-fun bs!546126 () Bool)

(assert (= bs!546126 d!906785))

(assert (=> bs!546126 m!3569535))

(declare-fun m!3572917 () Bool)

(assert (=> bs!546126 m!3572917))

(assert (=> d!906079 d!906785))

(assert (=> d!906079 d!906065))

(declare-fun d!906787 () Bool)

(declare-fun e!2036461 () Bool)

(assert (=> d!906787 e!2036461))

(declare-fun res!1328921 () Bool)

(assert (=> d!906787 (=> (not res!1328921) (not e!2036461))))

(assert (=> d!906787 (= res!1328921 (isDefined!5624 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))))))

(assert (=> d!906787 true))

(declare-fun _$52!1634 () Unit!51218)

(assert (=> d!906787 (= (choose!19021 thiss!18206 rules!2135 lt!1108142 separatorToken!241) _$52!1634)))

(declare-fun b!3270094 () Bool)

(declare-fun res!1328922 () Bool)

(assert (=> b!3270094 (=> (not res!1328922) (not e!2036461))))

(assert (=> b!3270094 (= res!1328922 (matchR!4665 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))) (list!13032 (charsOf!3300 separatorToken!241))))))

(declare-fun b!3270095 () Bool)

(assert (=> b!3270095 (= e!2036461 (= (rule!7766 separatorToken!241) (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))))))

(assert (= (and d!906787 res!1328921) b!3270094))

(assert (= (and b!3270094 res!1328922) b!3270095))

(assert (=> d!906787 m!3569535))

(assert (=> d!906787 m!3569535))

(assert (=> d!906787 m!3570681))

(assert (=> b!3270094 m!3569515))

(assert (=> b!3270094 m!3570687))

(assert (=> b!3270094 m!3569535))

(assert (=> b!3270094 m!3569535))

(assert (=> b!3270094 m!3570685))

(assert (=> b!3270094 m!3569507))

(assert (=> b!3270094 m!3569507))

(assert (=> b!3270094 m!3569515))

(assert (=> b!3270095 m!3569535))

(assert (=> b!3270095 m!3569535))

(assert (=> b!3270095 m!3570685))

(assert (=> d!906079 d!906787))

(assert (=> d!906079 d!905879))

(declare-fun d!906789 () Bool)

(declare-fun lt!1109170 () Int)

(assert (=> d!906789 (= lt!1109170 (size!27506 (list!13033 (_1!21094 lt!1108375))))))

(assert (=> d!906789 (= lt!1109170 (size!27512 (c!551640 (_1!21094 lt!1108375))))))

(assert (=> d!906789 (= (size!27508 (_1!21094 lt!1108375)) lt!1109170)))

(declare-fun bs!546127 () Bool)

(assert (= bs!546127 d!906789))

(assert (=> bs!546127 m!3572737))

(assert (=> bs!546127 m!3572737))

(declare-fun m!3572919 () Bool)

(assert (=> bs!546127 m!3572919))

(declare-fun m!3572921 () Bool)

(assert (=> bs!546127 m!3572921))

(assert (=> d!905993 d!906789))

(declare-fun d!906791 () Bool)

(assert (=> d!906791 (= (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)))))) (list!13036 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))))))))))

(declare-fun bs!546128 () Bool)

(assert (= bs!546128 d!906791))

(declare-fun m!3572923 () Bool)

(assert (=> bs!546128 m!3572923))

(assert (=> d!905993 d!906791))

(declare-fun lt!1109171 () tuple2!35920)

(declare-fun b!3270097 () Bool)

(declare-fun e!2036464 () Bool)

(assert (=> b!3270097 (= e!2036464 (= (list!13032 (_2!21094 lt!1109171)) (_2!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))))))))))

(declare-fun b!3270098 () Bool)

(declare-fun e!2036463 () Bool)

(assert (=> b!3270098 (= e!2036463 (= (_2!21094 lt!1109171) (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)))))))

(declare-fun b!3270099 () Bool)

(declare-fun e!2036462 () Bool)

(assert (=> b!3270099 (= e!2036463 e!2036462)))

(declare-fun res!1328924 () Bool)

(assert (=> b!3270099 (= res!1328924 (< (size!27509 (_2!21094 lt!1109171)) (size!27509 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))))))))

(assert (=> b!3270099 (=> (not res!1328924) (not e!2036462))))

(declare-fun b!3270100 () Bool)

(assert (=> b!3270100 (= e!2036462 (not (isEmpty!20563 (_1!21094 lt!1109171))))))

(declare-fun b!3270096 () Bool)

(declare-fun res!1328925 () Bool)

(assert (=> b!3270096 (=> (not res!1328925) (not e!2036464))))

(assert (=> b!3270096 (= res!1328925 (= (list!13033 (_1!21094 lt!1109171)) (_1!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))))))))))

(declare-fun d!906793 () Bool)

(assert (=> d!906793 e!2036464))

(declare-fun res!1328923 () Bool)

(assert (=> d!906793 (=> (not res!1328923) (not e!2036464))))

(assert (=> d!906793 (= res!1328923 e!2036463)))

(declare-fun c!552169 () Bool)

(assert (=> d!906793 (= c!552169 (> (size!27508 (_1!21094 lt!1109171)) 0))))

(assert (=> d!906793 (= lt!1109171 (lexTailRecV2!956 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))) (BalanceConc!21501 Empty!10943) (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))) (BalanceConc!21503 Empty!10944)))))

(assert (=> d!906793 (= (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)))) lt!1109171)))

(assert (= (and d!906793 c!552169) b!3270099))

(assert (= (and d!906793 (not c!552169)) b!3270098))

(assert (= (and b!3270099 res!1328924) b!3270100))

(assert (= (and d!906793 res!1328923) b!3270096))

(assert (= (and b!3270096 res!1328925) b!3270097))

(declare-fun m!3572925 () Bool)

(assert (=> b!3270096 m!3572925))

(assert (=> b!3270096 m!3570321))

(declare-fun m!3572927 () Bool)

(assert (=> b!3270096 m!3572927))

(assert (=> b!3270096 m!3572927))

(declare-fun m!3572929 () Bool)

(assert (=> b!3270096 m!3572929))

(declare-fun m!3572931 () Bool)

(assert (=> b!3270099 m!3572931))

(assert (=> b!3270099 m!3570321))

(declare-fun m!3572933 () Bool)

(assert (=> b!3270099 m!3572933))

(declare-fun m!3572935 () Bool)

(assert (=> d!906793 m!3572935))

(assert (=> d!906793 m!3570321))

(assert (=> d!906793 m!3570321))

(declare-fun m!3572937 () Bool)

(assert (=> d!906793 m!3572937))

(declare-fun m!3572939 () Bool)

(assert (=> b!3270100 m!3572939))

(declare-fun m!3572941 () Bool)

(assert (=> b!3270097 m!3572941))

(assert (=> b!3270097 m!3570321))

(assert (=> b!3270097 m!3572927))

(assert (=> b!3270097 m!3572927))

(assert (=> b!3270097 m!3572929))

(assert (=> d!905993 d!906793))

(declare-fun d!906795 () Bool)

(declare-fun lt!1109172 () BalanceConc!21500)

(assert (=> d!906795 (= (list!13032 lt!1109172) (printList!1423 thiss!18206 (list!13033 (singletonSeq!2380 (h!41864 tokens!494)))))))

(assert (=> d!906795 (= lt!1109172 (printTailRec!1370 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)) 0 (BalanceConc!21501 Empty!10943)))))

(assert (=> d!906795 (= (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))) lt!1109172)))

(declare-fun bs!546129 () Bool)

(assert (= bs!546129 d!906795))

(declare-fun m!3572943 () Bool)

(assert (=> bs!546129 m!3572943))

(assert (=> bs!546129 m!3569499))

(assert (=> bs!546129 m!3570325))

(assert (=> bs!546129 m!3570325))

(declare-fun m!3572945 () Bool)

(assert (=> bs!546129 m!3572945))

(assert (=> bs!546129 m!3569499))

(declare-fun m!3572947 () Bool)

(assert (=> bs!546129 m!3572947))

(assert (=> d!905993 d!906795))

(declare-fun d!906797 () Bool)

(assert (=> d!906797 (= (list!13033 (singletonSeq!2380 (h!41864 tokens!494))) (list!13036 (c!551640 (singletonSeq!2380 (h!41864 tokens!494)))))))

(declare-fun bs!546130 () Bool)

(assert (= bs!546130 d!906797))

(declare-fun m!3572949 () Bool)

(assert (=> bs!546130 m!3572949))

(assert (=> d!905993 d!906797))

(assert (=> d!905993 d!905989))

(assert (=> d!905993 d!905937))

(declare-fun d!906799 () Bool)

(assert (=> d!906799 (= (isDefined!5625 lt!1108249) (not (isEmpty!20566 lt!1108249)))))

(declare-fun bs!546131 () Bool)

(assert (= bs!546131 d!906799))

(assert (=> bs!546131 m!3569809))

(assert (=> b!3268183 d!906799))

(declare-fun b!3270119 () Bool)

(declare-fun e!2036477 () List!36568)

(assert (=> b!3270119 (= e!2036477 lt!1108361)))

(declare-fun b!3270120 () Bool)

(declare-fun e!2036476 () Int)

(declare-fun call!236999 () Int)

(assert (=> b!3270120 (= e!2036476 (- call!236999 0))))

(declare-fun b!3270121 () Bool)

(declare-fun e!2036475 () Int)

(assert (=> b!3270121 (= e!2036475 e!2036476)))

(declare-fun c!552179 () Bool)

(assert (=> b!3270121 (= c!552179 (>= 0 call!236999))))

(declare-fun b!3270122 () Bool)

(declare-fun e!2036479 () Bool)

(declare-fun lt!1109175 () List!36568)

(assert (=> b!3270122 (= e!2036479 (= (size!27506 lt!1109175) e!2036475))))

(declare-fun c!552180 () Bool)

(assert (=> b!3270122 (= c!552180 (<= 0 0))))

(declare-fun b!3270123 () Bool)

(assert (=> b!3270123 (= e!2036475 call!236999)))

(declare-fun b!3270124 () Bool)

(declare-fun e!2036478 () List!36568)

(assert (=> b!3270124 (= e!2036478 Nil!36444)))

(declare-fun b!3270125 () Bool)

(assert (=> b!3270125 (= e!2036477 (drop!1893 (t!247339 lt!1108361) (- 0 1)))))

(declare-fun bm!236994 () Bool)

(assert (=> bm!236994 (= call!236999 (size!27506 lt!1108361))))

(declare-fun d!906801 () Bool)

(assert (=> d!906801 e!2036479))

(declare-fun res!1328928 () Bool)

(assert (=> d!906801 (=> (not res!1328928) (not e!2036479))))

(assert (=> d!906801 (= res!1328928 (= ((_ map implies) (content!4946 lt!1109175) (content!4946 lt!1108361)) ((as const (InoxSet Token!9934)) true)))))

(assert (=> d!906801 (= lt!1109175 e!2036478)))

(declare-fun c!552181 () Bool)

(assert (=> d!906801 (= c!552181 ((_ is Nil!36444) lt!1108361))))

(assert (=> d!906801 (= (drop!1893 lt!1108361 0) lt!1109175)))

(declare-fun b!3270126 () Bool)

(assert (=> b!3270126 (= e!2036478 e!2036477)))

(declare-fun c!552178 () Bool)

(assert (=> b!3270126 (= c!552178 (<= 0 0))))

(declare-fun b!3270127 () Bool)

(assert (=> b!3270127 (= e!2036476 0)))

(assert (= (and d!906801 c!552181) b!3270124))

(assert (= (and d!906801 (not c!552181)) b!3270126))

(assert (= (and b!3270126 c!552178) b!3270119))

(assert (= (and b!3270126 (not c!552178)) b!3270125))

(assert (= (and d!906801 res!1328928) b!3270122))

(assert (= (and b!3270122 c!552180) b!3270123))

(assert (= (and b!3270122 (not c!552180)) b!3270121))

(assert (= (and b!3270121 c!552179) b!3270127))

(assert (= (and b!3270121 (not c!552179)) b!3270120))

(assert (= (or b!3270123 b!3270121 b!3270120) bm!236994))

(declare-fun m!3572951 () Bool)

(assert (=> b!3270122 m!3572951))

(declare-fun m!3572953 () Bool)

(assert (=> b!3270125 m!3572953))

(declare-fun m!3572955 () Bool)

(assert (=> bm!236994 m!3572955))

(declare-fun m!3572957 () Bool)

(assert (=> d!906801 m!3572957))

(declare-fun m!3572959 () Bool)

(assert (=> d!906801 m!3572959))

(assert (=> b!3268487 d!906801))

(declare-fun d!906803 () Bool)

(assert (=> d!906803 (= (list!13033 lt!1108159) (list!13036 (c!551640 lt!1108159)))))

(declare-fun bs!546132 () Bool)

(assert (= bs!546132 d!906803))

(declare-fun m!3572961 () Bool)

(assert (=> bs!546132 m!3572961))

(assert (=> b!3268487 d!906803))

(declare-fun d!906805 () Bool)

(assert (=> d!906805 (= (head!7115 (drop!1893 lt!1108364 0)) (h!41864 (drop!1893 lt!1108364 0)))))

(assert (=> b!3268487 d!906805))

(declare-fun d!906807 () Bool)

(declare-fun lt!1109178 () Token!9934)

(assert (=> d!906807 (contains!6569 lt!1108364 lt!1109178)))

(declare-fun e!2036484 () Token!9934)

(assert (=> d!906807 (= lt!1109178 e!2036484)))

(declare-fun c!552184 () Bool)

(assert (=> d!906807 (= c!552184 (= 0 0))))

(declare-fun e!2036485 () Bool)

(assert (=> d!906807 e!2036485))

(declare-fun res!1328931 () Bool)

(assert (=> d!906807 (=> (not res!1328931) (not e!2036485))))

(assert (=> d!906807 (= res!1328931 (<= 0 0))))

(assert (=> d!906807 (= (apply!8352 lt!1108364 0) lt!1109178)))

(declare-fun b!3270134 () Bool)

(assert (=> b!3270134 (= e!2036485 (< 0 (size!27506 lt!1108364)))))

(declare-fun b!3270135 () Bool)

(assert (=> b!3270135 (= e!2036484 (head!7115 lt!1108364))))

(declare-fun b!3270136 () Bool)

(assert (=> b!3270136 (= e!2036484 (apply!8352 (tail!5253 lt!1108364) (- 0 1)))))

(assert (= (and d!906807 res!1328931) b!3270134))

(assert (= (and d!906807 c!552184) b!3270135))

(assert (= (and d!906807 (not c!552184)) b!3270136))

(declare-fun m!3572963 () Bool)

(assert (=> d!906807 m!3572963))

(declare-fun m!3572965 () Bool)

(assert (=> b!3270134 m!3572965))

(declare-fun m!3572967 () Bool)

(assert (=> b!3270135 m!3572967))

(declare-fun m!3572969 () Bool)

(assert (=> b!3270136 m!3572969))

(assert (=> b!3270136 m!3572969))

(declare-fun m!3572971 () Bool)

(assert (=> b!3270136 m!3572971))

(assert (=> b!3268487 d!906807))

(declare-fun b!3270137 () Bool)

(declare-fun e!2036488 () List!36568)

(assert (=> b!3270137 (= e!2036488 lt!1108364)))

(declare-fun b!3270138 () Bool)

(declare-fun e!2036487 () Int)

(declare-fun call!237000 () Int)

(assert (=> b!3270138 (= e!2036487 (- call!237000 0))))

(declare-fun b!3270139 () Bool)

(declare-fun e!2036486 () Int)

(assert (=> b!3270139 (= e!2036486 e!2036487)))

(declare-fun c!552186 () Bool)

(assert (=> b!3270139 (= c!552186 (>= 0 call!237000))))

(declare-fun b!3270140 () Bool)

(declare-fun e!2036490 () Bool)

(declare-fun lt!1109179 () List!36568)

(assert (=> b!3270140 (= e!2036490 (= (size!27506 lt!1109179) e!2036486))))

(declare-fun c!552187 () Bool)

(assert (=> b!3270140 (= c!552187 (<= 0 0))))

(declare-fun b!3270141 () Bool)

(assert (=> b!3270141 (= e!2036486 call!237000)))

(declare-fun b!3270142 () Bool)

(declare-fun e!2036489 () List!36568)

(assert (=> b!3270142 (= e!2036489 Nil!36444)))

(declare-fun b!3270143 () Bool)

(assert (=> b!3270143 (= e!2036488 (drop!1893 (t!247339 lt!1108364) (- 0 1)))))

(declare-fun bm!236995 () Bool)

(assert (=> bm!236995 (= call!237000 (size!27506 lt!1108364))))

(declare-fun d!906809 () Bool)

(assert (=> d!906809 e!2036490))

(declare-fun res!1328932 () Bool)

(assert (=> d!906809 (=> (not res!1328932) (not e!2036490))))

(assert (=> d!906809 (= res!1328932 (= ((_ map implies) (content!4946 lt!1109179) (content!4946 lt!1108364)) ((as const (InoxSet Token!9934)) true)))))

(assert (=> d!906809 (= lt!1109179 e!2036489)))

(declare-fun c!552188 () Bool)

(assert (=> d!906809 (= c!552188 ((_ is Nil!36444) lt!1108364))))

(assert (=> d!906809 (= (drop!1893 lt!1108364 0) lt!1109179)))

(declare-fun b!3270144 () Bool)

(assert (=> b!3270144 (= e!2036489 e!2036488)))

(declare-fun c!552185 () Bool)

(assert (=> b!3270144 (= c!552185 (<= 0 0))))

(declare-fun b!3270145 () Bool)

(assert (=> b!3270145 (= e!2036487 0)))

(assert (= (and d!906809 c!552188) b!3270142))

(assert (= (and d!906809 (not c!552188)) b!3270144))

(assert (= (and b!3270144 c!552185) b!3270137))

(assert (= (and b!3270144 (not c!552185)) b!3270143))

(assert (= (and d!906809 res!1328932) b!3270140))

(assert (= (and b!3270140 c!552187) b!3270141))

(assert (= (and b!3270140 (not c!552187)) b!3270139))

(assert (= (and b!3270139 c!552186) b!3270145))

(assert (= (and b!3270139 (not c!552186)) b!3270138))

(assert (= (or b!3270141 b!3270139 b!3270138) bm!236995))

(declare-fun m!3572973 () Bool)

(assert (=> b!3270140 m!3572973))

(declare-fun m!3572975 () Bool)

(assert (=> b!3270143 m!3572975))

(assert (=> bm!236995 m!3572965))

(declare-fun m!3572977 () Bool)

(assert (=> d!906809 m!3572977))

(declare-fun m!3572979 () Bool)

(assert (=> d!906809 m!3572979))

(assert (=> b!3268487 d!906809))

(declare-fun b!3270146 () Bool)

(declare-fun e!2036493 () List!36568)

(assert (=> b!3270146 (= e!2036493 lt!1108361)))

(declare-fun b!3270147 () Bool)

(declare-fun e!2036492 () Int)

(declare-fun call!237001 () Int)

(assert (=> b!3270147 (= e!2036492 (- call!237001 (+ 0 1)))))

(declare-fun b!3270148 () Bool)

(declare-fun e!2036491 () Int)

(assert (=> b!3270148 (= e!2036491 e!2036492)))

(declare-fun c!552190 () Bool)

(assert (=> b!3270148 (= c!552190 (>= (+ 0 1) call!237001))))

(declare-fun b!3270149 () Bool)

(declare-fun e!2036495 () Bool)

(declare-fun lt!1109180 () List!36568)

(assert (=> b!3270149 (= e!2036495 (= (size!27506 lt!1109180) e!2036491))))

(declare-fun c!552191 () Bool)

(assert (=> b!3270149 (= c!552191 (<= (+ 0 1) 0))))

(declare-fun b!3270150 () Bool)

(assert (=> b!3270150 (= e!2036491 call!237001)))

(declare-fun b!3270151 () Bool)

(declare-fun e!2036494 () List!36568)

(assert (=> b!3270151 (= e!2036494 Nil!36444)))

(declare-fun b!3270152 () Bool)

(assert (=> b!3270152 (= e!2036493 (drop!1893 (t!247339 lt!1108361) (- (+ 0 1) 1)))))

(declare-fun bm!236996 () Bool)

(assert (=> bm!236996 (= call!237001 (size!27506 lt!1108361))))

(declare-fun d!906811 () Bool)

(assert (=> d!906811 e!2036495))

(declare-fun res!1328933 () Bool)

(assert (=> d!906811 (=> (not res!1328933) (not e!2036495))))

(assert (=> d!906811 (= res!1328933 (= ((_ map implies) (content!4946 lt!1109180) (content!4946 lt!1108361)) ((as const (InoxSet Token!9934)) true)))))

(assert (=> d!906811 (= lt!1109180 e!2036494)))

(declare-fun c!552192 () Bool)

(assert (=> d!906811 (= c!552192 ((_ is Nil!36444) lt!1108361))))

(assert (=> d!906811 (= (drop!1893 lt!1108361 (+ 0 1)) lt!1109180)))

(declare-fun b!3270153 () Bool)

(assert (=> b!3270153 (= e!2036494 e!2036493)))

(declare-fun c!552189 () Bool)

(assert (=> b!3270153 (= c!552189 (<= (+ 0 1) 0))))

(declare-fun b!3270154 () Bool)

(assert (=> b!3270154 (= e!2036492 0)))

(assert (= (and d!906811 c!552192) b!3270151))

(assert (= (and d!906811 (not c!552192)) b!3270153))

(assert (= (and b!3270153 c!552189) b!3270146))

(assert (= (and b!3270153 (not c!552189)) b!3270152))

(assert (= (and d!906811 res!1328933) b!3270149))

(assert (= (and b!3270149 c!552191) b!3270150))

(assert (= (and b!3270149 (not c!552191)) b!3270148))

(assert (= (and b!3270148 c!552190) b!3270154))

(assert (= (and b!3270148 (not c!552190)) b!3270147))

(assert (= (or b!3270150 b!3270148 b!3270147) bm!236996))

(declare-fun m!3572981 () Bool)

(assert (=> b!3270149 m!3572981))

(declare-fun m!3572983 () Bool)

(assert (=> b!3270152 m!3572983))

(assert (=> bm!236996 m!3572955))

(declare-fun m!3572985 () Bool)

(assert (=> d!906811 m!3572985))

(assert (=> d!906811 m!3572959))

(assert (=> b!3268487 d!906811))

(declare-fun d!906813 () Bool)

(declare-fun lt!1109183 () BalanceConc!21500)

(assert (=> d!906813 (= (list!13032 lt!1109183) (printListTailRec!587 thiss!18206 (dropList!1104 lt!1108159 (+ 0 1)) (list!13032 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 lt!1108159 0))))))))

(declare-fun e!2036497 () BalanceConc!21500)

(assert (=> d!906813 (= lt!1109183 e!2036497)))

(declare-fun c!552193 () Bool)

(assert (=> d!906813 (= c!552193 (>= (+ 0 1) (size!27508 lt!1108159)))))

(declare-fun e!2036496 () Bool)

(assert (=> d!906813 e!2036496))

(declare-fun res!1328934 () Bool)

(assert (=> d!906813 (=> (not res!1328934) (not e!2036496))))

(assert (=> d!906813 (= res!1328934 (>= (+ 0 1) 0))))

(assert (=> d!906813 (= (printTailRec!1370 thiss!18206 lt!1108159 (+ 0 1) (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 lt!1108159 0)))) lt!1109183)))

(declare-fun b!3270155 () Bool)

(assert (=> b!3270155 (= e!2036496 (<= (+ 0 1) (size!27508 lt!1108159)))))

(declare-fun b!3270156 () Bool)

(assert (=> b!3270156 (= e!2036497 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 lt!1108159 0))))))

(declare-fun b!3270157 () Bool)

(assert (=> b!3270157 (= e!2036497 (printTailRec!1370 thiss!18206 lt!1108159 (+ 0 1 1) (++!8800 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 lt!1108159 0))) (charsOf!3300 (apply!8350 lt!1108159 (+ 0 1))))))))

(declare-fun lt!1109187 () List!36568)

(assert (=> b!3270157 (= lt!1109187 (list!13033 lt!1108159))))

(declare-fun lt!1109186 () Unit!51218)

(assert (=> b!3270157 (= lt!1109186 (lemmaDropApply!1063 lt!1109187 (+ 0 1)))))

(assert (=> b!3270157 (= (head!7115 (drop!1893 lt!1109187 (+ 0 1))) (apply!8352 lt!1109187 (+ 0 1)))))

(declare-fun lt!1109181 () Unit!51218)

(assert (=> b!3270157 (= lt!1109181 lt!1109186)))

(declare-fun lt!1109184 () List!36568)

(assert (=> b!3270157 (= lt!1109184 (list!13033 lt!1108159))))

(declare-fun lt!1109182 () Unit!51218)

(assert (=> b!3270157 (= lt!1109182 (lemmaDropTail!947 lt!1109184 (+ 0 1)))))

(assert (=> b!3270157 (= (tail!5253 (drop!1893 lt!1109184 (+ 0 1))) (drop!1893 lt!1109184 (+ 0 1 1)))))

(declare-fun lt!1109185 () Unit!51218)

(assert (=> b!3270157 (= lt!1109185 lt!1109182)))

(assert (= (and d!906813 res!1328934) b!3270155))

(assert (= (and d!906813 c!552193) b!3270156))

(assert (= (and d!906813 (not c!552193)) b!3270157))

(declare-fun m!3572987 () Bool)

(assert (=> d!906813 m!3572987))

(assert (=> d!906813 m!3570233))

(assert (=> d!906813 m!3572987))

(declare-fun m!3572989 () Bool)

(assert (=> d!906813 m!3572989))

(declare-fun m!3572991 () Bool)

(assert (=> d!906813 m!3572991))

(declare-fun m!3572993 () Bool)

(assert (=> d!906813 m!3572993))

(assert (=> d!906813 m!3570247))

(assert (=> d!906813 m!3572989))

(assert (=> b!3270155 m!3570233))

(declare-fun m!3572995 () Bool)

(assert (=> b!3270157 m!3572995))

(declare-fun m!3572997 () Bool)

(assert (=> b!3270157 m!3572997))

(assert (=> b!3270157 m!3570245))

(declare-fun m!3572999 () Bool)

(assert (=> b!3270157 m!3572999))

(declare-fun m!3573001 () Bool)

(assert (=> b!3270157 m!3573001))

(declare-fun m!3573003 () Bool)

(assert (=> b!3270157 m!3573003))

(declare-fun m!3573005 () Bool)

(assert (=> b!3270157 m!3573005))

(assert (=> b!3270157 m!3570247))

(assert (=> b!3270157 m!3573005))

(assert (=> b!3270157 m!3572999))

(declare-fun m!3573007 () Bool)

(assert (=> b!3270157 m!3573007))

(declare-fun m!3573009 () Bool)

(assert (=> b!3270157 m!3573009))

(declare-fun m!3573011 () Bool)

(assert (=> b!3270157 m!3573011))

(declare-fun m!3573013 () Bool)

(assert (=> b!3270157 m!3573013))

(declare-fun m!3573015 () Bool)

(assert (=> b!3270157 m!3573015))

(assert (=> b!3270157 m!3573013))

(assert (=> b!3270157 m!3573003))

(declare-fun m!3573017 () Bool)

(assert (=> b!3270157 m!3573017))

(assert (=> b!3270157 m!3573007))

(assert (=> b!3268487 d!906813))

(declare-fun d!906815 () Bool)

(assert (=> d!906815 (= (tail!5253 (drop!1893 lt!1108361 0)) (t!247339 (drop!1893 lt!1108361 0)))))

(assert (=> b!3268487 d!906815))

(declare-fun d!906817 () Bool)

(declare-fun e!2036500 () Bool)

(assert (=> d!906817 e!2036500))

(declare-fun res!1328946 () Bool)

(assert (=> d!906817 (=> (not res!1328946) (not e!2036500))))

(declare-fun appendAssocInst!751 (Conc!10943 Conc!10943) Bool)

(assert (=> d!906817 (= res!1328946 (appendAssocInst!751 (c!551639 (BalanceConc!21501 Empty!10943)) (c!551639 (charsOf!3300 (apply!8350 lt!1108159 0)))))))

(declare-fun lt!1109190 () BalanceConc!21500)

(declare-fun ++!8804 (Conc!10943 Conc!10943) Conc!10943)

(assert (=> d!906817 (= lt!1109190 (BalanceConc!21501 (++!8804 (c!551639 (BalanceConc!21501 Empty!10943)) (c!551639 (charsOf!3300 (apply!8350 lt!1108159 0))))))))

(assert (=> d!906817 (= (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 lt!1108159 0))) lt!1109190)))

(declare-fun b!3270167 () Bool)

(declare-fun res!1328944 () Bool)

(assert (=> b!3270167 (=> (not res!1328944) (not e!2036500))))

(declare-fun height!1592 (Conc!10943) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3270167 (= res!1328944 (<= (height!1592 (++!8804 (c!551639 (BalanceConc!21501 Empty!10943)) (c!551639 (charsOf!3300 (apply!8350 lt!1108159 0))))) (+ (max!0 (height!1592 (c!551639 (BalanceConc!21501 Empty!10943))) (height!1592 (c!551639 (charsOf!3300 (apply!8350 lt!1108159 0))))) 1)))))

(declare-fun b!3270166 () Bool)

(declare-fun res!1328943 () Bool)

(assert (=> b!3270166 (=> (not res!1328943) (not e!2036500))))

(declare-fun isBalanced!3263 (Conc!10943) Bool)

(assert (=> b!3270166 (= res!1328943 (isBalanced!3263 (++!8804 (c!551639 (BalanceConc!21501 Empty!10943)) (c!551639 (charsOf!3300 (apply!8350 lt!1108159 0))))))))

(declare-fun b!3270169 () Bool)

(assert (=> b!3270169 (= e!2036500 (= (list!13032 lt!1109190) (++!8798 (list!13032 (BalanceConc!21501 Empty!10943)) (list!13032 (charsOf!3300 (apply!8350 lt!1108159 0))))))))

(declare-fun b!3270168 () Bool)

(declare-fun res!1328945 () Bool)

(assert (=> b!3270168 (=> (not res!1328945) (not e!2036500))))

(assert (=> b!3270168 (= res!1328945 (>= (height!1592 (++!8804 (c!551639 (BalanceConc!21501 Empty!10943)) (c!551639 (charsOf!3300 (apply!8350 lt!1108159 0))))) (max!0 (height!1592 (c!551639 (BalanceConc!21501 Empty!10943))) (height!1592 (c!551639 (charsOf!3300 (apply!8350 lt!1108159 0)))))))))

(assert (= (and d!906817 res!1328946) b!3270166))

(assert (= (and b!3270166 res!1328943) b!3270167))

(assert (= (and b!3270167 res!1328944) b!3270168))

(assert (= (and b!3270168 res!1328945) b!3270169))

(declare-fun m!3573019 () Bool)

(assert (=> b!3270169 m!3573019))

(assert (=> b!3270169 m!3570235))

(assert (=> b!3270169 m!3570253))

(declare-fun m!3573021 () Bool)

(assert (=> b!3270169 m!3573021))

(assert (=> b!3270169 m!3570235))

(assert (=> b!3270169 m!3573021))

(declare-fun m!3573023 () Bool)

(assert (=> b!3270169 m!3573023))

(declare-fun m!3573025 () Bool)

(assert (=> b!3270168 m!3573025))

(assert (=> b!3270168 m!3573025))

(declare-fun m!3573027 () Bool)

(assert (=> b!3270168 m!3573027))

(declare-fun m!3573029 () Bool)

(assert (=> b!3270168 m!3573029))

(declare-fun m!3573031 () Bool)

(assert (=> b!3270168 m!3573031))

(assert (=> b!3270168 m!3573029))

(assert (=> b!3270168 m!3573031))

(declare-fun m!3573033 () Bool)

(assert (=> b!3270168 m!3573033))

(assert (=> b!3270167 m!3573025))

(assert (=> b!3270167 m!3573025))

(assert (=> b!3270167 m!3573027))

(assert (=> b!3270167 m!3573029))

(assert (=> b!3270167 m!3573031))

(assert (=> b!3270167 m!3573029))

(assert (=> b!3270167 m!3573031))

(assert (=> b!3270167 m!3573033))

(declare-fun m!3573035 () Bool)

(assert (=> d!906817 m!3573035))

(assert (=> d!906817 m!3573025))

(assert (=> b!3270166 m!3573025))

(assert (=> b!3270166 m!3573025))

(declare-fun m!3573037 () Bool)

(assert (=> b!3270166 m!3573037))

(assert (=> b!3268487 d!906817))

(declare-fun d!906819 () Bool)

(declare-fun lt!1109191 () BalanceConc!21500)

(assert (=> d!906819 (= (list!13032 lt!1109191) (originalCharacters!5998 (apply!8350 lt!1108159 0)))))

(assert (=> d!906819 (= lt!1109191 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0)))) (value!171054 (apply!8350 lt!1108159 0))))))

(assert (=> d!906819 (= (charsOf!3300 (apply!8350 lt!1108159 0)) lt!1109191)))

(declare-fun b_lambda!90623 () Bool)

(assert (=> (not b_lambda!90623) (not d!906819)))

(declare-fun t!247638 () Bool)

(declare-fun tb!165821 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0))))) t!247638) tb!165821))

(declare-fun b!3270170 () Bool)

(declare-fun e!2036501 () Bool)

(declare-fun tp!1027233 () Bool)

(assert (=> b!3270170 (= e!2036501 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0)))) (value!171054 (apply!8350 lt!1108159 0))))) tp!1027233))))

(declare-fun result!208516 () Bool)

(assert (=> tb!165821 (= result!208516 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0)))) (value!171054 (apply!8350 lt!1108159 0)))) e!2036501))))

(assert (= tb!165821 b!3270170))

(declare-fun m!3573039 () Bool)

(assert (=> b!3270170 m!3573039))

(declare-fun m!3573041 () Bool)

(assert (=> tb!165821 m!3573041))

(assert (=> d!906819 t!247638))

(declare-fun b_and!221495 () Bool)

(assert (= b_and!221477 (and (=> t!247638 result!208516) b_and!221495)))

(declare-fun tb!165823 () Bool)

(declare-fun t!247640 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0))))) t!247640) tb!165823))

(declare-fun result!208518 () Bool)

(assert (= result!208518 result!208516))

(assert (=> d!906819 t!247640))

(declare-fun b_and!221497 () Bool)

(assert (= b_and!221479 (and (=> t!247640 result!208518) b_and!221497)))

(declare-fun tb!165825 () Bool)

(declare-fun t!247642 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0))))) t!247642) tb!165825))

(declare-fun result!208520 () Bool)

(assert (= result!208520 result!208516))

(assert (=> d!906819 t!247642))

(declare-fun b_and!221499 () Bool)

(assert (= b_and!221475 (and (=> t!247642 result!208520) b_and!221499)))

(declare-fun tb!165827 () Bool)

(declare-fun t!247644 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0))))) t!247644) tb!165827))

(declare-fun result!208522 () Bool)

(assert (= result!208522 result!208516))

(assert (=> d!906819 t!247644))

(declare-fun b_and!221501 () Bool)

(assert (= b_and!221483 (and (=> t!247644 result!208522) b_and!221501)))

(declare-fun t!247646 () Bool)

(declare-fun tb!165829 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0))))) t!247646) tb!165829))

(declare-fun result!208524 () Bool)

(assert (= result!208524 result!208516))

(assert (=> d!906819 t!247646))

(declare-fun b_and!221503 () Bool)

(assert (= b_and!221481 (and (=> t!247646 result!208524) b_and!221503)))

(declare-fun m!3573043 () Bool)

(assert (=> d!906819 m!3573043))

(declare-fun m!3573045 () Bool)

(assert (=> d!906819 m!3573045))

(assert (=> b!3268487 d!906819))

(declare-fun d!906821 () Bool)

(assert (=> d!906821 (= (tail!5253 (drop!1893 lt!1108361 0)) (drop!1893 lt!1108361 (+ 0 1)))))

(declare-fun lt!1109194 () Unit!51218)

(declare-fun choose!19030 (List!36568 Int) Unit!51218)

(assert (=> d!906821 (= lt!1109194 (choose!19030 lt!1108361 0))))

(declare-fun e!2036504 () Bool)

(assert (=> d!906821 e!2036504))

(declare-fun res!1328949 () Bool)

(assert (=> d!906821 (=> (not res!1328949) (not e!2036504))))

(assert (=> d!906821 (= res!1328949 (>= 0 0))))

(assert (=> d!906821 (= (lemmaDropTail!947 lt!1108361 0) lt!1109194)))

(declare-fun b!3270173 () Bool)

(assert (=> b!3270173 (= e!2036504 (< 0 (size!27506 lt!1108361)))))

(assert (= (and d!906821 res!1328949) b!3270173))

(assert (=> d!906821 m!3570255))

(assert (=> d!906821 m!3570255))

(assert (=> d!906821 m!3570257))

(assert (=> d!906821 m!3570265))

(declare-fun m!3573047 () Bool)

(assert (=> d!906821 m!3573047))

(assert (=> b!3270173 m!3572955))

(assert (=> b!3268487 d!906821))

(declare-fun d!906823 () Bool)

(assert (=> d!906823 (= (head!7115 (drop!1893 lt!1108364 0)) (apply!8352 lt!1108364 0))))

(declare-fun lt!1109197 () Unit!51218)

(declare-fun choose!19031 (List!36568 Int) Unit!51218)

(assert (=> d!906823 (= lt!1109197 (choose!19031 lt!1108364 0))))

(declare-fun e!2036507 () Bool)

(assert (=> d!906823 e!2036507))

(declare-fun res!1328952 () Bool)

(assert (=> d!906823 (=> (not res!1328952) (not e!2036507))))

(assert (=> d!906823 (= res!1328952 (>= 0 0))))

(assert (=> d!906823 (= (lemmaDropApply!1063 lt!1108364 0) lt!1109197)))

(declare-fun b!3270176 () Bool)

(assert (=> b!3270176 (= e!2036507 (< 0 (size!27506 lt!1108364)))))

(assert (= (and d!906823 res!1328952) b!3270176))

(assert (=> d!906823 m!3570261))

(assert (=> d!906823 m!3570261))

(assert (=> d!906823 m!3570263))

(assert (=> d!906823 m!3570243))

(declare-fun m!3573049 () Bool)

(assert (=> d!906823 m!3573049))

(assert (=> b!3270176 m!3572965))

(assert (=> b!3268487 d!906823))

(declare-fun d!906825 () Bool)

(declare-fun lt!1109198 () Token!9934)

(assert (=> d!906825 (= lt!1109198 (apply!8352 (list!13033 lt!1108159) 0))))

(assert (=> d!906825 (= lt!1109198 (apply!8354 (c!551640 lt!1108159) 0))))

(declare-fun e!2036508 () Bool)

(assert (=> d!906825 e!2036508))

(declare-fun res!1328953 () Bool)

(assert (=> d!906825 (=> (not res!1328953) (not e!2036508))))

(assert (=> d!906825 (= res!1328953 (<= 0 0))))

(assert (=> d!906825 (= (apply!8350 lt!1108159 0) lt!1109198)))

(declare-fun b!3270177 () Bool)

(assert (=> b!3270177 (= e!2036508 (< 0 (size!27508 lt!1108159)))))

(assert (= (and d!906825 res!1328953) b!3270177))

(assert (=> d!906825 m!3570245))

(assert (=> d!906825 m!3570245))

(declare-fun m!3573051 () Bool)

(assert (=> d!906825 m!3573051))

(declare-fun m!3573053 () Bool)

(assert (=> d!906825 m!3573053))

(assert (=> b!3270177 m!3570233))

(assert (=> b!3268487 d!906825))

(declare-fun b!3270178 () Bool)

(declare-fun e!2036509 () Bool)

(declare-fun lt!1109201 () tuple2!35916)

(assert (=> b!3270178 (= e!2036509 (= (_2!21092 lt!1109201) (_2!21093 (v!35952 lt!1108333))))))

(declare-fun b!3270179 () Bool)

(declare-fun e!2036510 () Bool)

(assert (=> b!3270179 (= e!2036510 (not (isEmpty!20561 (_1!21092 lt!1109201))))))

(declare-fun b!3270180 () Bool)

(assert (=> b!3270180 (= e!2036509 e!2036510)))

(declare-fun res!1328954 () Bool)

(assert (=> b!3270180 (= res!1328954 (< (size!27503 (_2!21092 lt!1109201)) (size!27503 (_2!21093 (v!35952 lt!1108333)))))))

(assert (=> b!3270180 (=> (not res!1328954) (not e!2036510))))

(declare-fun d!906827 () Bool)

(assert (=> d!906827 e!2036509))

(declare-fun c!552197 () Bool)

(assert (=> d!906827 (= c!552197 (> (size!27506 (_1!21092 lt!1109201)) 0))))

(declare-fun e!2036511 () tuple2!35916)

(assert (=> d!906827 (= lt!1109201 e!2036511)))

(declare-fun c!552198 () Bool)

(declare-fun lt!1109200 () Option!7257)

(assert (=> d!906827 (= c!552198 ((_ is Some!7256) lt!1109200))))

(assert (=> d!906827 (= lt!1109200 (maxPrefix!2501 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108333))))))

(assert (=> d!906827 (= (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108333))) lt!1109201)))

(declare-fun b!3270181 () Bool)

(assert (=> b!3270181 (= e!2036511 (tuple2!35917 Nil!36444 (_2!21093 (v!35952 lt!1108333))))))

(declare-fun b!3270182 () Bool)

(declare-fun lt!1109199 () tuple2!35916)

(assert (=> b!3270182 (= e!2036511 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1109200)) (_1!21092 lt!1109199)) (_2!21092 lt!1109199)))))

(assert (=> b!3270182 (= lt!1109199 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1109200))))))

(assert (= (and d!906827 c!552198) b!3270182))

(assert (= (and d!906827 (not c!552198)) b!3270181))

(assert (= (and d!906827 c!552197) b!3270180))

(assert (= (and d!906827 (not c!552197)) b!3270178))

(assert (= (and b!3270180 res!1328954) b!3270179))

(declare-fun m!3573055 () Bool)

(assert (=> b!3270179 m!3573055))

(declare-fun m!3573057 () Bool)

(assert (=> b!3270180 m!3573057))

(declare-fun m!3573059 () Bool)

(assert (=> b!3270180 m!3573059))

(declare-fun m!3573061 () Bool)

(assert (=> d!906827 m!3573061))

(declare-fun m!3573063 () Bool)

(assert (=> d!906827 m!3573063))

(declare-fun m!3573065 () Bool)

(assert (=> b!3270182 m!3573065))

(assert (=> b!3268448 d!906827))

(declare-fun b!3270183 () Bool)

(declare-fun e!2036512 () Bool)

(assert (=> b!3270183 (= e!2036512 (= (head!7113 (tail!5250 lt!1108158)) (c!551638 (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158)))))))

(declare-fun b!3270184 () Bool)

(declare-fun e!2036514 () Bool)

(assert (=> b!3270184 (= e!2036514 (not (= (head!7113 (tail!5250 lt!1108158)) (c!551638 (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158))))))))

(declare-fun b!3270185 () Bool)

(declare-fun res!1328956 () Bool)

(assert (=> b!3270185 (=> (not res!1328956) (not e!2036512))))

(assert (=> b!3270185 (= res!1328956 (isEmpty!20562 (tail!5250 (tail!5250 lt!1108158))))))

(declare-fun b!3270186 () Bool)

(declare-fun e!2036518 () Bool)

(declare-fun lt!1109202 () Bool)

(declare-fun call!237002 () Bool)

(assert (=> b!3270186 (= e!2036518 (= lt!1109202 call!237002))))

(declare-fun b!3270187 () Bool)

(declare-fun e!2036513 () Bool)

(assert (=> b!3270187 (= e!2036513 (matchR!4665 (derivativeStep!2964 (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158)) (head!7113 (tail!5250 lt!1108158))) (tail!5250 (tail!5250 lt!1108158))))))

(declare-fun b!3270188 () Bool)

(declare-fun res!1328957 () Bool)

(assert (=> b!3270188 (=> (not res!1328957) (not e!2036512))))

(assert (=> b!3270188 (= res!1328957 (not call!237002))))

(declare-fun b!3270189 () Bool)

(assert (=> b!3270189 (= e!2036513 (nullable!3411 (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158))))))

(declare-fun b!3270190 () Bool)

(declare-fun e!2036515 () Bool)

(assert (=> b!3270190 (= e!2036515 e!2036514)))

(declare-fun res!1328961 () Bool)

(assert (=> b!3270190 (=> res!1328961 e!2036514)))

(assert (=> b!3270190 (= res!1328961 call!237002)))

(declare-fun b!3270192 () Bool)

(declare-fun e!2036516 () Bool)

(assert (=> b!3270192 (= e!2036516 (not lt!1109202))))

(declare-fun bm!236997 () Bool)

(assert (=> bm!236997 (= call!237002 (isEmpty!20562 (tail!5250 lt!1108158)))))

(declare-fun b!3270193 () Bool)

(declare-fun res!1328955 () Bool)

(assert (=> b!3270193 (=> res!1328955 e!2036514)))

(assert (=> b!3270193 (= res!1328955 (not (isEmpty!20562 (tail!5250 (tail!5250 lt!1108158)))))))

(declare-fun b!3270194 () Bool)

(declare-fun res!1328962 () Bool)

(declare-fun e!2036517 () Bool)

(assert (=> b!3270194 (=> res!1328962 e!2036517)))

(assert (=> b!3270194 (= res!1328962 e!2036512)))

(declare-fun res!1328959 () Bool)

(assert (=> b!3270194 (=> (not res!1328959) (not e!2036512))))

(assert (=> b!3270194 (= res!1328959 lt!1109202)))

(declare-fun d!906829 () Bool)

(assert (=> d!906829 e!2036518))

(declare-fun c!552201 () Bool)

(assert (=> d!906829 (= c!552201 ((_ is EmptyExpr!10043) (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158))))))

(assert (=> d!906829 (= lt!1109202 e!2036513)))

(declare-fun c!552200 () Bool)

(assert (=> d!906829 (= c!552200 (isEmpty!20562 (tail!5250 lt!1108158)))))

(assert (=> d!906829 (validRegex!4567 (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158)))))

(assert (=> d!906829 (= (matchR!4665 (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158)) (tail!5250 lt!1108158)) lt!1109202)))

(declare-fun b!3270191 () Bool)

(assert (=> b!3270191 (= e!2036517 e!2036515)))

(declare-fun res!1328960 () Bool)

(assert (=> b!3270191 (=> (not res!1328960) (not e!2036515))))

(assert (=> b!3270191 (= res!1328960 (not lt!1109202))))

(declare-fun b!3270195 () Bool)

(declare-fun res!1328958 () Bool)

(assert (=> b!3270195 (=> res!1328958 e!2036517)))

(assert (=> b!3270195 (= res!1328958 (not ((_ is ElementMatch!10043) (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158)))))))

(assert (=> b!3270195 (= e!2036516 e!2036517)))

(declare-fun b!3270196 () Bool)

(assert (=> b!3270196 (= e!2036518 e!2036516)))

(declare-fun c!552199 () Bool)

(assert (=> b!3270196 (= c!552199 ((_ is EmptyLang!10043) (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158))))))

(assert (= (and d!906829 c!552200) b!3270189))

(assert (= (and d!906829 (not c!552200)) b!3270187))

(assert (= (and d!906829 c!552201) b!3270186))

(assert (= (and d!906829 (not c!552201)) b!3270196))

(assert (= (and b!3270196 c!552199) b!3270192))

(assert (= (and b!3270196 (not c!552199)) b!3270195))

(assert (= (and b!3270195 (not res!1328958)) b!3270194))

(assert (= (and b!3270194 res!1328959) b!3270188))

(assert (= (and b!3270188 res!1328957) b!3270185))

(assert (= (and b!3270185 res!1328956) b!3270183))

(assert (= (and b!3270194 (not res!1328962)) b!3270191))

(assert (= (and b!3270191 res!1328960) b!3270190))

(assert (= (and b!3270190 (not res!1328961)) b!3270193))

(assert (= (and b!3270193 (not res!1328955)) b!3270184))

(assert (= (or b!3270186 b!3270188 b!3270190) bm!236997))

(assert (=> bm!236997 m!3569637))

(assert (=> bm!236997 m!3569639))

(assert (=> b!3270183 m!3569637))

(declare-fun m!3573067 () Bool)

(assert (=> b!3270183 m!3573067))

(assert (=> b!3270184 m!3569637))

(assert (=> b!3270184 m!3573067))

(assert (=> b!3270193 m!3569637))

(assert (=> b!3270193 m!3572133))

(assert (=> b!3270193 m!3572133))

(declare-fun m!3573069 () Bool)

(assert (=> b!3270193 m!3573069))

(assert (=> d!906829 m!3569637))

(assert (=> d!906829 m!3569639))

(assert (=> d!906829 m!3569645))

(declare-fun m!3573071 () Bool)

(assert (=> d!906829 m!3573071))

(assert (=> b!3270185 m!3569637))

(assert (=> b!3270185 m!3572133))

(assert (=> b!3270185 m!3572133))

(assert (=> b!3270185 m!3573069))

(assert (=> b!3270189 m!3569645))

(declare-fun m!3573073 () Bool)

(assert (=> b!3270189 m!3573073))

(assert (=> b!3270187 m!3569637))

(assert (=> b!3270187 m!3573067))

(assert (=> b!3270187 m!3569645))

(assert (=> b!3270187 m!3573067))

(declare-fun m!3573075 () Bool)

(assert (=> b!3270187 m!3573075))

(assert (=> b!3270187 m!3569637))

(assert (=> b!3270187 m!3572133))

(assert (=> b!3270187 m!3573075))

(assert (=> b!3270187 m!3572133))

(declare-fun m!3573077 () Bool)

(assert (=> b!3270187 m!3573077))

(assert (=> b!3267996 d!906829))

(declare-fun b!3270197 () Bool)

(declare-fun e!2036523 () Regex!10043)

(assert (=> b!3270197 (= e!2036523 EmptyLang!10043)))

(declare-fun b!3270198 () Bool)

(declare-fun e!2036520 () Regex!10043)

(declare-fun e!2036521 () Regex!10043)

(assert (=> b!3270198 (= e!2036520 e!2036521)))

(declare-fun c!552203 () Bool)

(assert (=> b!3270198 (= c!552203 ((_ is Star!10043) (regex!5284 lt!1108157)))))

(declare-fun b!3270199 () Bool)

(declare-fun e!2036519 () Regex!10043)

(assert (=> b!3270199 (= e!2036519 (ite (= (head!7113 lt!1108158) (c!551638 (regex!5284 lt!1108157))) EmptyExpr!10043 EmptyLang!10043))))

(declare-fun b!3270200 () Bool)

(declare-fun c!552205 () Bool)

(assert (=> b!3270200 (= c!552205 ((_ is Union!10043) (regex!5284 lt!1108157)))))

(assert (=> b!3270200 (= e!2036519 e!2036520)))

(declare-fun b!3270201 () Bool)

(declare-fun call!237003 () Regex!10043)

(declare-fun call!237006 () Regex!10043)

(assert (=> b!3270201 (= e!2036520 (Union!10043 call!237003 call!237006))))

(declare-fun call!237004 () Regex!10043)

(declare-fun e!2036522 () Regex!10043)

(declare-fun b!3270202 () Bool)

(assert (=> b!3270202 (= e!2036522 (Union!10043 (Concat!15557 call!237004 (regTwo!20598 (regex!5284 lt!1108157))) call!237003))))

(declare-fun b!3270203 () Bool)

(declare-fun call!237005 () Regex!10043)

(assert (=> b!3270203 (= e!2036521 (Concat!15557 call!237005 (regex!5284 lt!1108157)))))

(declare-fun b!3270204 () Bool)

(assert (=> b!3270204 (= e!2036522 (Union!10043 (Concat!15557 call!237004 (regTwo!20598 (regex!5284 lt!1108157))) EmptyLang!10043))))

(declare-fun bm!236998 () Bool)

(assert (=> bm!236998 (= call!237003 (derivativeStep!2964 (ite c!552205 (regOne!20599 (regex!5284 lt!1108157)) (regTwo!20598 (regex!5284 lt!1108157))) (head!7113 lt!1108158)))))

(declare-fun bm!236999 () Bool)

(assert (=> bm!236999 (= call!237004 call!237005)))

(declare-fun b!3270205 () Bool)

(declare-fun c!552206 () Bool)

(assert (=> b!3270205 (= c!552206 (nullable!3411 (regOne!20598 (regex!5284 lt!1108157))))))

(assert (=> b!3270205 (= e!2036521 e!2036522)))

(declare-fun d!906831 () Bool)

(declare-fun lt!1109203 () Regex!10043)

(assert (=> d!906831 (validRegex!4567 lt!1109203)))

(assert (=> d!906831 (= lt!1109203 e!2036523)))

(declare-fun c!552204 () Bool)

(assert (=> d!906831 (= c!552204 (or ((_ is EmptyExpr!10043) (regex!5284 lt!1108157)) ((_ is EmptyLang!10043) (regex!5284 lt!1108157))))))

(assert (=> d!906831 (validRegex!4567 (regex!5284 lt!1108157))))

(assert (=> d!906831 (= (derivativeStep!2964 (regex!5284 lt!1108157) (head!7113 lt!1108158)) lt!1109203)))

(declare-fun bm!237000 () Bool)

(assert (=> bm!237000 (= call!237006 (derivativeStep!2964 (ite c!552205 (regTwo!20599 (regex!5284 lt!1108157)) (ite c!552203 (reg!10372 (regex!5284 lt!1108157)) (regOne!20598 (regex!5284 lt!1108157)))) (head!7113 lt!1108158)))))

(declare-fun bm!237001 () Bool)

(assert (=> bm!237001 (= call!237005 call!237006)))

(declare-fun b!3270206 () Bool)

(assert (=> b!3270206 (= e!2036523 e!2036519)))

(declare-fun c!552202 () Bool)

(assert (=> b!3270206 (= c!552202 ((_ is ElementMatch!10043) (regex!5284 lt!1108157)))))

(assert (= (and d!906831 c!552204) b!3270197))

(assert (= (and d!906831 (not c!552204)) b!3270206))

(assert (= (and b!3270206 c!552202) b!3270199))

(assert (= (and b!3270206 (not c!552202)) b!3270200))

(assert (= (and b!3270200 c!552205) b!3270201))

(assert (= (and b!3270200 (not c!552205)) b!3270198))

(assert (= (and b!3270198 c!552203) b!3270203))

(assert (= (and b!3270198 (not c!552203)) b!3270205))

(assert (= (and b!3270205 c!552206) b!3270202))

(assert (= (and b!3270205 (not c!552206)) b!3270204))

(assert (= (or b!3270202 b!3270204) bm!236999))

(assert (= (or b!3270203 bm!236999) bm!237001))

(assert (= (or b!3270201 b!3270202) bm!236998))

(assert (= (or b!3270201 bm!237001) bm!237000))

(assert (=> bm!236998 m!3569635))

(declare-fun m!3573079 () Bool)

(assert (=> bm!236998 m!3573079))

(declare-fun m!3573081 () Bool)

(assert (=> b!3270205 m!3573081))

(declare-fun m!3573083 () Bool)

(assert (=> d!906831 m!3573083))

(assert (=> d!906831 m!3569641))

(assert (=> bm!237000 m!3569635))

(declare-fun m!3573085 () Bool)

(assert (=> bm!237000 m!3573085))

(assert (=> b!3267996 d!906831))

(assert (=> b!3267996 d!906771))

(assert (=> b!3267996 d!906551))

(declare-fun b!3270207 () Bool)

(declare-fun e!2036524 () Bool)

(declare-fun lt!1109204 () Option!7257)

(assert (=> b!3270207 (= e!2036524 (contains!6570 (t!247340 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1109204)))))))

(declare-fun b!3270208 () Bool)

(declare-fun res!1328966 () Bool)

(assert (=> b!3270208 (=> (not res!1328966) (not e!2036524))))

(assert (=> b!3270208 (= res!1328966 (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1109204)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109204))))))))

(declare-fun b!3270209 () Bool)

(declare-fun res!1328964 () Bool)

(assert (=> b!3270209 (=> (not res!1328964) (not e!2036524))))

(assert (=> b!3270209 (= res!1328964 (= (value!171054 (_1!21093 (get!11625 lt!1109204))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1109204)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1109204)))))))))

(declare-fun b!3270210 () Bool)

(declare-fun res!1328968 () Bool)

(assert (=> b!3270210 (=> (not res!1328968) (not e!2036524))))

(assert (=> b!3270210 (= res!1328968 (< (size!27503 (_2!21093 (get!11625 lt!1109204))) (size!27503 lt!1108146)))))

(declare-fun b!3270211 () Bool)

(declare-fun e!2036526 () Option!7257)

(declare-fun lt!1109205 () Option!7257)

(declare-fun lt!1109207 () Option!7257)

(assert (=> b!3270211 (= e!2036526 (ite (and ((_ is None!7256) lt!1109205) ((_ is None!7256) lt!1109207)) None!7256 (ite ((_ is None!7256) lt!1109207) lt!1109205 (ite ((_ is None!7256) lt!1109205) lt!1109207 (ite (>= (size!27502 (_1!21093 (v!35952 lt!1109205))) (size!27502 (_1!21093 (v!35952 lt!1109207)))) lt!1109205 lt!1109207)))))))

(declare-fun call!237007 () Option!7257)

(assert (=> b!3270211 (= lt!1109205 call!237007)))

(assert (=> b!3270211 (= lt!1109207 (maxPrefix!2501 thiss!18206 (t!247340 (t!247340 rules!2135)) lt!1108146))))

(declare-fun bm!237002 () Bool)

(assert (=> bm!237002 (= call!237007 (maxPrefixOneRule!1638 thiss!18206 (h!41865 (t!247340 rules!2135)) lt!1108146))))

(declare-fun b!3270212 () Bool)

(declare-fun res!1328969 () Bool)

(assert (=> b!3270212 (=> (not res!1328969) (not e!2036524))))

(assert (=> b!3270212 (= res!1328969 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109204)))) (originalCharacters!5998 (_1!21093 (get!11625 lt!1109204)))))))

(declare-fun b!3270213 () Bool)

(assert (=> b!3270213 (= e!2036526 call!237007)))

(declare-fun b!3270214 () Bool)

(declare-fun res!1328965 () Bool)

(assert (=> b!3270214 (=> (not res!1328965) (not e!2036524))))

(assert (=> b!3270214 (= res!1328965 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109204)))) (_2!21093 (get!11625 lt!1109204))) lt!1108146))))

(declare-fun b!3270215 () Bool)

(declare-fun e!2036525 () Bool)

(assert (=> b!3270215 (= e!2036525 e!2036524)))

(declare-fun res!1328967 () Bool)

(assert (=> b!3270215 (=> (not res!1328967) (not e!2036524))))

(assert (=> b!3270215 (= res!1328967 (isDefined!5625 lt!1109204))))

(declare-fun d!906833 () Bool)

(assert (=> d!906833 e!2036525))

(declare-fun res!1328963 () Bool)

(assert (=> d!906833 (=> res!1328963 e!2036525)))

(assert (=> d!906833 (= res!1328963 (isEmpty!20566 lt!1109204))))

(assert (=> d!906833 (= lt!1109204 e!2036526)))

(declare-fun c!552207 () Bool)

(assert (=> d!906833 (= c!552207 (and ((_ is Cons!36445) (t!247340 rules!2135)) ((_ is Nil!36445) (t!247340 (t!247340 rules!2135)))))))

(declare-fun lt!1109208 () Unit!51218)

(declare-fun lt!1109206 () Unit!51218)

(assert (=> d!906833 (= lt!1109208 lt!1109206)))

(assert (=> d!906833 (isPrefix!2799 lt!1108146 lt!1108146)))

(assert (=> d!906833 (= lt!1109206 (lemmaIsPrefixRefl!1758 lt!1108146 lt!1108146))))

(assert (=> d!906833 (rulesValidInductive!1798 thiss!18206 (t!247340 rules!2135))))

(assert (=> d!906833 (= (maxPrefix!2501 thiss!18206 (t!247340 rules!2135) lt!1108146) lt!1109204)))

(assert (= (and d!906833 c!552207) b!3270213))

(assert (= (and d!906833 (not c!552207)) b!3270211))

(assert (= (or b!3270213 b!3270211) bm!237002))

(assert (= (and d!906833 (not res!1328963)) b!3270215))

(assert (= (and b!3270215 res!1328967) b!3270212))

(assert (= (and b!3270212 res!1328969) b!3270210))

(assert (= (and b!3270210 res!1328968) b!3270214))

(assert (= (and b!3270214 res!1328965) b!3270209))

(assert (= (and b!3270209 res!1328964) b!3270208))

(assert (= (and b!3270208 res!1328966) b!3270207))

(declare-fun m!3573087 () Bool)

(assert (=> b!3270211 m!3573087))

(declare-fun m!3573089 () Bool)

(assert (=> b!3270207 m!3573089))

(declare-fun m!3573091 () Bool)

(assert (=> b!3270207 m!3573091))

(declare-fun m!3573093 () Bool)

(assert (=> b!3270215 m!3573093))

(assert (=> b!3270214 m!3573089))

(declare-fun m!3573095 () Bool)

(assert (=> b!3270214 m!3573095))

(assert (=> b!3270214 m!3573095))

(declare-fun m!3573097 () Bool)

(assert (=> b!3270214 m!3573097))

(assert (=> b!3270214 m!3573097))

(declare-fun m!3573099 () Bool)

(assert (=> b!3270214 m!3573099))

(declare-fun m!3573101 () Bool)

(assert (=> d!906833 m!3573101))

(assert (=> d!906833 m!3569775))

(assert (=> d!906833 m!3569777))

(declare-fun m!3573103 () Bool)

(assert (=> d!906833 m!3573103))

(assert (=> b!3270209 m!3573089))

(declare-fun m!3573105 () Bool)

(assert (=> b!3270209 m!3573105))

(assert (=> b!3270209 m!3573105))

(declare-fun m!3573107 () Bool)

(assert (=> b!3270209 m!3573107))

(declare-fun m!3573109 () Bool)

(assert (=> bm!237002 m!3573109))

(assert (=> b!3270210 m!3573089))

(declare-fun m!3573111 () Bool)

(assert (=> b!3270210 m!3573111))

(assert (=> b!3270210 m!3569789))

(assert (=> b!3270208 m!3573089))

(assert (=> b!3270208 m!3573095))

(assert (=> b!3270208 m!3573095))

(assert (=> b!3270208 m!3573097))

(assert (=> b!3270208 m!3573097))

(declare-fun m!3573113 () Bool)

(assert (=> b!3270208 m!3573113))

(assert (=> b!3270212 m!3573089))

(assert (=> b!3270212 m!3573095))

(assert (=> b!3270212 m!3573095))

(assert (=> b!3270212 m!3573097))

(assert (=> b!3268170 d!906833))

(assert (=> d!905825 d!905875))

(assert (=> d!905825 d!905873))

(declare-fun b!3270218 () Bool)

(declare-fun res!1328971 () Bool)

(declare-fun e!2036527 () Bool)

(assert (=> b!3270218 (=> (not res!1328971) (not e!2036527))))

(declare-fun lt!1109209 () List!36567)

(assert (=> b!3270218 (= res!1328971 (= (size!27503 lt!1109209) (+ (size!27503 (list!13032 (charsOf!3300 (h!41864 tokens!494)))) (size!27503 lt!1108142))))))

(declare-fun b!3270217 () Bool)

(declare-fun e!2036528 () List!36567)

(assert (=> b!3270217 (= e!2036528 (Cons!36443 (h!41863 (list!13032 (charsOf!3300 (h!41864 tokens!494)))) (++!8798 (t!247338 (list!13032 (charsOf!3300 (h!41864 tokens!494)))) lt!1108142)))))

(declare-fun b!3270216 () Bool)

(assert (=> b!3270216 (= e!2036528 lt!1108142)))

(declare-fun d!906835 () Bool)

(assert (=> d!906835 e!2036527))

(declare-fun res!1328970 () Bool)

(assert (=> d!906835 (=> (not res!1328970) (not e!2036527))))

(assert (=> d!906835 (= res!1328970 (= (content!4944 lt!1109209) ((_ map or) (content!4944 (list!13032 (charsOf!3300 (h!41864 tokens!494)))) (content!4944 lt!1108142))))))

(assert (=> d!906835 (= lt!1109209 e!2036528)))

(declare-fun c!552208 () Bool)

(assert (=> d!906835 (= c!552208 ((_ is Nil!36443) (list!13032 (charsOf!3300 (h!41864 tokens!494)))))))

(assert (=> d!906835 (= (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142) lt!1109209)))

(declare-fun b!3270219 () Bool)

(assert (=> b!3270219 (= e!2036527 (or (not (= lt!1108142 Nil!36443)) (= lt!1109209 (list!13032 (charsOf!3300 (h!41864 tokens!494))))))))

(assert (= (and d!906835 c!552208) b!3270216))

(assert (= (and d!906835 (not c!552208)) b!3270217))

(assert (= (and d!906835 res!1328970) b!3270218))

(assert (= (and b!3270218 res!1328971) b!3270219))

(declare-fun m!3573115 () Bool)

(assert (=> b!3270218 m!3573115))

(assert (=> b!3270218 m!3569437))

(declare-fun m!3573117 () Bool)

(assert (=> b!3270218 m!3573117))

(assert (=> b!3270218 m!3570219))

(declare-fun m!3573119 () Bool)

(assert (=> b!3270217 m!3573119))

(declare-fun m!3573121 () Bool)

(assert (=> d!906835 m!3573121))

(assert (=> d!906835 m!3569437))

(declare-fun m!3573123 () Bool)

(assert (=> d!906835 m!3573123))

(assert (=> d!906835 m!3570227))

(assert (=> d!905825 d!906835))

(assert (=> d!905825 d!905937))

(declare-fun b!3270220 () Bool)

(declare-fun e!2036529 () Bool)

(declare-fun lt!1109210 () Option!7257)

(assert (=> b!3270220 (= e!2036529 (contains!6570 rules!2135 (rule!7766 (_1!21093 (get!11625 lt!1109210)))))))

(declare-fun b!3270221 () Bool)

(declare-fun res!1328975 () Bool)

(assert (=> b!3270221 (=> (not res!1328975) (not e!2036529))))

(assert (=> b!3270221 (= res!1328975 (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1109210)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109210))))))))

(declare-fun b!3270222 () Bool)

(declare-fun res!1328973 () Bool)

(assert (=> b!3270222 (=> (not res!1328973) (not e!2036529))))

(assert (=> b!3270222 (= res!1328973 (= (value!171054 (_1!21093 (get!11625 lt!1109210))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1109210)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1109210)))))))))

(declare-fun b!3270223 () Bool)

(declare-fun res!1328977 () Bool)

(assert (=> b!3270223 (=> (not res!1328977) (not e!2036529))))

(assert (=> b!3270223 (= res!1328977 (< (size!27503 (_2!21093 (get!11625 lt!1109210))) (size!27503 (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142))))))

(declare-fun b!3270224 () Bool)

(declare-fun e!2036531 () Option!7257)

(declare-fun lt!1109211 () Option!7257)

(declare-fun lt!1109213 () Option!7257)

(assert (=> b!3270224 (= e!2036531 (ite (and ((_ is None!7256) lt!1109211) ((_ is None!7256) lt!1109213)) None!7256 (ite ((_ is None!7256) lt!1109213) lt!1109211 (ite ((_ is None!7256) lt!1109211) lt!1109213 (ite (>= (size!27502 (_1!21093 (v!35952 lt!1109211))) (size!27502 (_1!21093 (v!35952 lt!1109213)))) lt!1109211 lt!1109213)))))))

(declare-fun call!237008 () Option!7257)

(assert (=> b!3270224 (= lt!1109211 call!237008)))

(assert (=> b!3270224 (= lt!1109213 (maxPrefix!2501 thiss!18206 (t!247340 rules!2135) (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142)))))

(declare-fun bm!237003 () Bool)

(assert (=> bm!237003 (= call!237008 (maxPrefixOneRule!1638 thiss!18206 (h!41865 rules!2135) (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142)))))

(declare-fun b!3270225 () Bool)

(declare-fun res!1328978 () Bool)

(assert (=> b!3270225 (=> (not res!1328978) (not e!2036529))))

(assert (=> b!3270225 (= res!1328978 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109210)))) (originalCharacters!5998 (_1!21093 (get!11625 lt!1109210)))))))

(declare-fun b!3270226 () Bool)

(assert (=> b!3270226 (= e!2036531 call!237008)))

(declare-fun b!3270227 () Bool)

(declare-fun res!1328974 () Bool)

(assert (=> b!3270227 (=> (not res!1328974) (not e!2036529))))

(assert (=> b!3270227 (= res!1328974 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109210)))) (_2!21093 (get!11625 lt!1109210))) (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142)))))

(declare-fun b!3270228 () Bool)

(declare-fun e!2036530 () Bool)

(assert (=> b!3270228 (= e!2036530 e!2036529)))

(declare-fun res!1328976 () Bool)

(assert (=> b!3270228 (=> (not res!1328976) (not e!2036529))))

(assert (=> b!3270228 (= res!1328976 (isDefined!5625 lt!1109210))))

(declare-fun d!906837 () Bool)

(assert (=> d!906837 e!2036530))

(declare-fun res!1328972 () Bool)

(assert (=> d!906837 (=> res!1328972 e!2036530)))

(assert (=> d!906837 (= res!1328972 (isEmpty!20566 lt!1109210))))

(assert (=> d!906837 (= lt!1109210 e!2036531)))

(declare-fun c!552209 () Bool)

(assert (=> d!906837 (= c!552209 (and ((_ is Cons!36445) rules!2135) ((_ is Nil!36445) (t!247340 rules!2135))))))

(declare-fun lt!1109214 () Unit!51218)

(declare-fun lt!1109212 () Unit!51218)

(assert (=> d!906837 (= lt!1109214 lt!1109212)))

(assert (=> d!906837 (isPrefix!2799 (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142) (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142))))

(assert (=> d!906837 (= lt!1109212 (lemmaIsPrefixRefl!1758 (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142) (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142)))))

(assert (=> d!906837 (rulesValidInductive!1798 thiss!18206 rules!2135)))

(assert (=> d!906837 (= (maxPrefix!2501 thiss!18206 rules!2135 (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142)) lt!1109210)))

(assert (= (and d!906837 c!552209) b!3270226))

(assert (= (and d!906837 (not c!552209)) b!3270224))

(assert (= (or b!3270226 b!3270224) bm!237003))

(assert (= (and d!906837 (not res!1328972)) b!3270228))

(assert (= (and b!3270228 res!1328976) b!3270225))

(assert (= (and b!3270225 res!1328978) b!3270223))

(assert (= (and b!3270223 res!1328977) b!3270227))

(assert (= (and b!3270227 res!1328974) b!3270222))

(assert (= (and b!3270222 res!1328973) b!3270221))

(assert (= (and b!3270221 res!1328975) b!3270220))

(assert (=> b!3270224 m!3569685))

(declare-fun m!3573125 () Bool)

(assert (=> b!3270224 m!3573125))

(declare-fun m!3573127 () Bool)

(assert (=> b!3270220 m!3573127))

(declare-fun m!3573129 () Bool)

(assert (=> b!3270220 m!3573129))

(declare-fun m!3573131 () Bool)

(assert (=> b!3270228 m!3573131))

(assert (=> b!3270227 m!3573127))

(declare-fun m!3573133 () Bool)

(assert (=> b!3270227 m!3573133))

(assert (=> b!3270227 m!3573133))

(declare-fun m!3573135 () Bool)

(assert (=> b!3270227 m!3573135))

(assert (=> b!3270227 m!3573135))

(declare-fun m!3573137 () Bool)

(assert (=> b!3270227 m!3573137))

(declare-fun m!3573139 () Bool)

(assert (=> d!906837 m!3573139))

(assert (=> d!906837 m!3569685))

(assert (=> d!906837 m!3569685))

(declare-fun m!3573141 () Bool)

(assert (=> d!906837 m!3573141))

(assert (=> d!906837 m!3569685))

(assert (=> d!906837 m!3569685))

(declare-fun m!3573143 () Bool)

(assert (=> d!906837 m!3573143))

(assert (=> d!906837 m!3569779))

(assert (=> b!3270222 m!3573127))

(declare-fun m!3573145 () Bool)

(assert (=> b!3270222 m!3573145))

(assert (=> b!3270222 m!3573145))

(declare-fun m!3573147 () Bool)

(assert (=> b!3270222 m!3573147))

(assert (=> bm!237003 m!3569685))

(declare-fun m!3573149 () Bool)

(assert (=> bm!237003 m!3573149))

(assert (=> b!3270223 m!3573127))

(declare-fun m!3573151 () Bool)

(assert (=> b!3270223 m!3573151))

(assert (=> b!3270223 m!3569685))

(declare-fun m!3573153 () Bool)

(assert (=> b!3270223 m!3573153))

(assert (=> b!3270221 m!3573127))

(assert (=> b!3270221 m!3573133))

(assert (=> b!3270221 m!3573133))

(assert (=> b!3270221 m!3573135))

(assert (=> b!3270221 m!3573135))

(declare-fun m!3573155 () Bool)

(assert (=> b!3270221 m!3573155))

(assert (=> b!3270225 m!3573127))

(assert (=> b!3270225 m!3573133))

(assert (=> b!3270225 m!3573133))

(assert (=> b!3270225 m!3573135))

(assert (=> d!905825 d!906837))

(declare-fun d!906839 () Bool)

(assert (=> d!906839 (= (maxPrefix!2501 thiss!18206 rules!2135 (++!8798 (list!13032 (charsOf!3300 (h!41864 tokens!494))) lt!1108142)) (Some!7256 (tuple2!35919 (h!41864 tokens!494) lt!1108142)))))

(assert (=> d!906839 true))

(declare-fun _$49!226 () Unit!51218)

(assert (=> d!906839 (= (choose!19013 thiss!18206 rules!2135 (h!41864 tokens!494) (rule!7766 (h!41864 tokens!494)) lt!1108142 (rule!7766 separatorToken!241)) _$49!226)))

(declare-fun bs!546133 () Bool)

(assert (= bs!546133 d!906839))

(assert (=> bs!546133 m!3569435))

(assert (=> bs!546133 m!3569435))

(assert (=> bs!546133 m!3569437))

(assert (=> bs!546133 m!3569437))

(assert (=> bs!546133 m!3569685))

(assert (=> bs!546133 m!3569685))

(assert (=> bs!546133 m!3569687))

(assert (=> d!905825 d!906839))

(declare-fun d!906841 () Bool)

(declare-fun c!552210 () Bool)

(assert (=> d!906841 (= c!552210 ((_ is Nil!36443) lt!1108343))))

(declare-fun e!2036532 () (InoxSet C!20272))

(assert (=> d!906841 (= (content!4944 lt!1108343) e!2036532)))

(declare-fun b!3270229 () Bool)

(assert (=> b!3270229 (= e!2036532 ((as const (Array C!20272 Bool)) false))))

(declare-fun b!3270230 () Bool)

(assert (=> b!3270230 (= e!2036532 ((_ map or) (store ((as const (Array C!20272 Bool)) false) (h!41863 lt!1108343) true) (content!4944 (t!247338 lt!1108343))))))

(assert (= (and d!906841 c!552210) b!3270229))

(assert (= (and d!906841 (not c!552210)) b!3270230))

(declare-fun m!3573157 () Bool)

(assert (=> b!3270230 m!3573157))

(declare-fun m!3573159 () Bool)

(assert (=> b!3270230 m!3573159))

(assert (=> d!905973 d!906841))

(declare-fun d!906843 () Bool)

(declare-fun c!552211 () Bool)

(assert (=> d!906843 (= c!552211 ((_ is Nil!36443) lt!1108158))))

(declare-fun e!2036533 () (InoxSet C!20272))

(assert (=> d!906843 (= (content!4944 lt!1108158) e!2036533)))

(declare-fun b!3270231 () Bool)

(assert (=> b!3270231 (= e!2036533 ((as const (Array C!20272 Bool)) false))))

(declare-fun b!3270232 () Bool)

(assert (=> b!3270232 (= e!2036533 ((_ map or) (store ((as const (Array C!20272 Bool)) false) (h!41863 lt!1108158) true) (content!4944 (t!247338 lt!1108158))))))

(assert (= (and d!906843 c!552211) b!3270231))

(assert (= (and d!906843 (not c!552211)) b!3270232))

(declare-fun m!3573161 () Bool)

(assert (=> b!3270232 m!3573161))

(declare-fun m!3573163 () Bool)

(assert (=> b!3270232 m!3573163))

(assert (=> d!905973 d!906843))

(declare-fun d!906845 () Bool)

(declare-fun c!552212 () Bool)

(assert (=> d!906845 (= c!552212 ((_ is Nil!36443) lt!1108142))))

(declare-fun e!2036534 () (InoxSet C!20272))

(assert (=> d!906845 (= (content!4944 lt!1108142) e!2036534)))

(declare-fun b!3270233 () Bool)

(assert (=> b!3270233 (= e!2036534 ((as const (Array C!20272 Bool)) false))))

(declare-fun b!3270234 () Bool)

(assert (=> b!3270234 (= e!2036534 ((_ map or) (store ((as const (Array C!20272 Bool)) false) (h!41863 lt!1108142) true) (content!4944 (t!247338 lt!1108142))))))

(assert (= (and d!906845 c!552212) b!3270233))

(assert (= (and d!906845 (not c!552212)) b!3270234))

(declare-fun m!3573165 () Bool)

(assert (=> b!3270234 m!3573165))

(declare-fun m!3573167 () Bool)

(assert (=> b!3270234 m!3573167))

(assert (=> d!905973 d!906845))

(declare-fun d!906847 () Bool)

(declare-fun res!1328979 () Bool)

(declare-fun e!2036535 () Bool)

(assert (=> d!906847 (=> (not res!1328979) (not e!2036535))))

(assert (=> d!906847 (= res!1328979 (rulesValid!1941 thiss!18206 (t!247340 rules!2135)))))

(assert (=> d!906847 (= (rulesInvariant!4270 thiss!18206 (t!247340 rules!2135)) e!2036535)))

(declare-fun b!3270235 () Bool)

(assert (=> b!3270235 (= e!2036535 (noDuplicateTag!1937 thiss!18206 (t!247340 rules!2135) Nil!36447))))

(assert (= (and d!906847 res!1328979) b!3270235))

(declare-fun m!3573169 () Bool)

(assert (=> d!906847 m!3573169))

(declare-fun m!3573171 () Bool)

(assert (=> b!3270235 m!3573171))

(assert (=> b!3268732 d!906847))

(declare-fun d!906849 () Bool)

(assert (=> d!906849 (rulesInvariant!4270 thiss!18206 (t!247340 rules!2135))))

(declare-fun lt!1109217 () Unit!51218)

(declare-fun choose!19032 (LexerInterface!4873 Rule!10368 List!36569) Unit!51218)

(assert (=> d!906849 (= lt!1109217 (choose!19032 thiss!18206 (h!41865 rules!2135) (t!247340 rules!2135)))))

(assert (=> d!906849 (rulesInvariant!4270 thiss!18206 (Cons!36445 (h!41865 rules!2135) (t!247340 rules!2135)))))

(assert (=> d!906849 (= (lemmaInvariantOnRulesThenOnTail!364 thiss!18206 (h!41865 rules!2135) (t!247340 rules!2135)) lt!1109217)))

(declare-fun bs!546134 () Bool)

(assert (= bs!546134 d!906849))

(assert (=> bs!546134 m!3570607))

(declare-fun m!3573173 () Bool)

(assert (=> bs!546134 m!3573173))

(declare-fun m!3573175 () Bool)

(assert (=> bs!546134 m!3573175))

(assert (=> b!3268732 d!906849))

(declare-fun b!3270236 () Bool)

(declare-fun e!2036538 () Option!7258)

(assert (=> b!3270236 (= e!2036538 (Some!7257 (h!41865 (t!247340 rules!2135))))))

(declare-fun d!906851 () Bool)

(declare-fun e!2036539 () Bool)

(assert (=> d!906851 e!2036539))

(declare-fun res!1328980 () Bool)

(assert (=> d!906851 (=> res!1328980 e!2036539)))

(declare-fun lt!1109219 () Option!7258)

(assert (=> d!906851 (= res!1328980 (isEmpty!20571 lt!1109219))))

(assert (=> d!906851 (= lt!1109219 e!2036538)))

(declare-fun c!552213 () Bool)

(assert (=> d!906851 (= c!552213 (and ((_ is Cons!36445) (t!247340 rules!2135)) (= (tag!5824 (h!41865 (t!247340 rules!2135))) (tag!5824 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> d!906851 (rulesInvariant!4270 thiss!18206 (t!247340 rules!2135))))

(assert (=> d!906851 (= (getRuleFromTag!975 thiss!18206 (t!247340 rules!2135) (tag!5824 (rule!7766 (h!41864 tokens!494)))) lt!1109219)))

(declare-fun b!3270237 () Bool)

(declare-fun e!2036536 () Option!7258)

(assert (=> b!3270237 (= e!2036538 e!2036536)))

(declare-fun c!552214 () Bool)

(assert (=> b!3270237 (= c!552214 (and ((_ is Cons!36445) (t!247340 rules!2135)) (not (= (tag!5824 (h!41865 (t!247340 rules!2135))) (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun b!3270238 () Bool)

(assert (=> b!3270238 (= e!2036536 None!7257)))

(declare-fun b!3270239 () Bool)

(declare-fun lt!1109220 () Unit!51218)

(declare-fun lt!1109218 () Unit!51218)

(assert (=> b!3270239 (= lt!1109220 lt!1109218)))

(assert (=> b!3270239 (rulesInvariant!4270 thiss!18206 (t!247340 (t!247340 rules!2135)))))

(assert (=> b!3270239 (= lt!1109218 (lemmaInvariantOnRulesThenOnTail!364 thiss!18206 (h!41865 (t!247340 rules!2135)) (t!247340 (t!247340 rules!2135))))))

(assert (=> b!3270239 (= e!2036536 (getRuleFromTag!975 thiss!18206 (t!247340 (t!247340 rules!2135)) (tag!5824 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3270240 () Bool)

(declare-fun e!2036537 () Bool)

(assert (=> b!3270240 (= e!2036537 (= (tag!5824 (get!11623 lt!1109219)) (tag!5824 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3270241 () Bool)

(assert (=> b!3270241 (= e!2036539 e!2036537)))

(declare-fun res!1328981 () Bool)

(assert (=> b!3270241 (=> (not res!1328981) (not e!2036537))))

(assert (=> b!3270241 (= res!1328981 (contains!6570 (t!247340 rules!2135) (get!11623 lt!1109219)))))

(assert (= (and d!906851 c!552213) b!3270236))

(assert (= (and d!906851 (not c!552213)) b!3270237))

(assert (= (and b!3270237 c!552214) b!3270239))

(assert (= (and b!3270237 (not c!552214)) b!3270238))

(assert (= (and d!906851 (not res!1328980)) b!3270241))

(assert (= (and b!3270241 res!1328981) b!3270240))

(declare-fun m!3573177 () Bool)

(assert (=> d!906851 m!3573177))

(assert (=> d!906851 m!3570607))

(declare-fun m!3573179 () Bool)

(assert (=> b!3270239 m!3573179))

(declare-fun m!3573181 () Bool)

(assert (=> b!3270239 m!3573181))

(declare-fun m!3573183 () Bool)

(assert (=> b!3270239 m!3573183))

(declare-fun m!3573185 () Bool)

(assert (=> b!3270240 m!3573185))

(assert (=> b!3270241 m!3573185))

(assert (=> b!3270241 m!3573185))

(declare-fun m!3573187 () Bool)

(assert (=> b!3270241 m!3573187))

(assert (=> b!3268732 d!906851))

(declare-fun d!906853 () Bool)

(declare-fun res!1328982 () Bool)

(declare-fun e!2036540 () Bool)

(assert (=> d!906853 (=> (not res!1328982) (not e!2036540))))

(assert (=> d!906853 (= res!1328982 (not (isEmpty!20562 (originalCharacters!5998 (h!41864 (t!247339 tokens!494))))))))

(assert (=> d!906853 (= (inv!49368 (h!41864 (t!247339 tokens!494))) e!2036540)))

(declare-fun b!3270242 () Bool)

(declare-fun res!1328983 () Bool)

(assert (=> b!3270242 (=> (not res!1328983) (not e!2036540))))

(assert (=> b!3270242 (= res!1328983 (= (originalCharacters!5998 (h!41864 (t!247339 tokens!494))) (list!13032 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (value!171054 (h!41864 (t!247339 tokens!494)))))))))

(declare-fun b!3270243 () Bool)

(assert (=> b!3270243 (= e!2036540 (= (size!27502 (h!41864 (t!247339 tokens!494))) (size!27503 (originalCharacters!5998 (h!41864 (t!247339 tokens!494))))))))

(assert (= (and d!906853 res!1328982) b!3270242))

(assert (= (and b!3270242 res!1328983) b!3270243))

(declare-fun b_lambda!90625 () Bool)

(assert (=> (not b_lambda!90625) (not b!3270242)))

(declare-fun t!247648 () Bool)

(declare-fun tb!165831 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) t!247648) tb!165831))

(declare-fun b!3270244 () Bool)

(declare-fun e!2036541 () Bool)

(declare-fun tp!1027234 () Bool)

(assert (=> b!3270244 (= e!2036541 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (value!171054 (h!41864 (t!247339 tokens!494)))))) tp!1027234))))

(declare-fun result!208526 () Bool)

(assert (=> tb!165831 (= result!208526 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (value!171054 (h!41864 (t!247339 tokens!494))))) e!2036541))))

(assert (= tb!165831 b!3270244))

(declare-fun m!3573189 () Bool)

(assert (=> b!3270244 m!3573189))

(declare-fun m!3573191 () Bool)

(assert (=> tb!165831 m!3573191))

(assert (=> b!3270242 t!247648))

(declare-fun b_and!221505 () Bool)

(assert (= b_and!221495 (and (=> t!247648 result!208526) b_and!221505)))

(declare-fun t!247650 () Bool)

(declare-fun tb!165833 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) t!247650) tb!165833))

(declare-fun result!208528 () Bool)

(assert (= result!208528 result!208526))

(assert (=> b!3270242 t!247650))

(declare-fun b_and!221507 () Bool)

(assert (= b_and!221503 (and (=> t!247650 result!208528) b_and!221507)))

(declare-fun t!247652 () Bool)

(declare-fun tb!165835 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) t!247652) tb!165835))

(declare-fun result!208530 () Bool)

(assert (= result!208530 result!208526))

(assert (=> b!3270242 t!247652))

(declare-fun b_and!221509 () Bool)

(assert (= b_and!221497 (and (=> t!247652 result!208530) b_and!221509)))

(declare-fun t!247654 () Bool)

(declare-fun tb!165837 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) t!247654) tb!165837))

(declare-fun result!208532 () Bool)

(assert (= result!208532 result!208526))

(assert (=> b!3270242 t!247654))

(declare-fun b_and!221511 () Bool)

(assert (= b_and!221501 (and (=> t!247654 result!208532) b_and!221511)))

(declare-fun t!247656 () Bool)

(declare-fun tb!165839 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) t!247656) tb!165839))

(declare-fun result!208534 () Bool)

(assert (= result!208534 result!208526))

(assert (=> b!3270242 t!247656))

(declare-fun b_and!221513 () Bool)

(assert (= b_and!221499 (and (=> t!247656 result!208534) b_and!221513)))

(declare-fun m!3573193 () Bool)

(assert (=> d!906853 m!3573193))

(declare-fun m!3573195 () Bool)

(assert (=> b!3270242 m!3573195))

(assert (=> b!3270242 m!3573195))

(declare-fun m!3573197 () Bool)

(assert (=> b!3270242 m!3573197))

(declare-fun m!3573199 () Bool)

(assert (=> b!3270243 m!3573199))

(assert (=> b!3268823 d!906853))

(declare-fun d!906855 () Bool)

(assert (=> d!906855 true))

(declare-fun lambda!118656 () Int)

(declare-fun order!18869 () Int)

(declare-fun dynLambda!14889 (Int Int) Int)

(assert (=> d!906855 (< (dynLambda!14884 order!18861 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (dynLambda!14889 order!18869 lambda!118656))))

(assert (=> d!906855 true))

(assert (=> d!906855 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (dynLambda!14889 order!18869 lambda!118656))))

(declare-fun Forall!1285 (Int) Bool)

(assert (=> d!906855 (= (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (Forall!1285 lambda!118656))))

(declare-fun bs!546135 () Bool)

(assert (= bs!546135 d!906855))

(declare-fun m!3573201 () Bool)

(assert (=> bs!546135 m!3573201))

(assert (=> d!905963 d!906855))

(declare-fun d!906857 () Bool)

(declare-fun charsToInt!0 (List!36566) (_ BitVec 32))

(assert (=> d!906857 (= (inv!16 (value!171054 separatorToken!241)) (= (charsToInt!0 (text!39045 (value!171054 separatorToken!241))) (value!171045 (value!171054 separatorToken!241))))))

(declare-fun bs!546136 () Bool)

(assert (= bs!546136 d!906857))

(declare-fun m!3573203 () Bool)

(assert (=> bs!546136 m!3573203))

(assert (=> b!3268537 d!906857))

(declare-fun b!3270251 () Bool)

(declare-fun res!1328985 () Bool)

(declare-fun e!2036542 () Bool)

(assert (=> b!3270251 (=> (not res!1328985) (not e!2036542))))

(declare-fun lt!1109221 () List!36567)

(assert (=> b!3270251 (= res!1328985 (= (size!27503 lt!1109221) (+ (size!27503 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))) (size!27503 (_2!21093 (get!11625 lt!1108241))))))))

(declare-fun b!3270250 () Bool)

(declare-fun e!2036543 () List!36567)

(assert (=> b!3270250 (= e!2036543 (Cons!36443 (h!41863 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))) (++!8798 (t!247338 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))) (_2!21093 (get!11625 lt!1108241)))))))

(declare-fun b!3270249 () Bool)

(assert (=> b!3270249 (= e!2036543 (_2!21093 (get!11625 lt!1108241)))))

(declare-fun d!906859 () Bool)

(assert (=> d!906859 e!2036542))

(declare-fun res!1328984 () Bool)

(assert (=> d!906859 (=> (not res!1328984) (not e!2036542))))

(assert (=> d!906859 (= res!1328984 (= (content!4944 lt!1109221) ((_ map or) (content!4944 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))) (content!4944 (_2!21093 (get!11625 lt!1108241))))))))

(assert (=> d!906859 (= lt!1109221 e!2036543)))

(declare-fun c!552215 () Bool)

(assert (=> d!906859 (= c!552215 ((_ is Nil!36443) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))))))

(assert (=> d!906859 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))) (_2!21093 (get!11625 lt!1108241))) lt!1109221)))

(declare-fun b!3270252 () Bool)

(assert (=> b!3270252 (= e!2036542 (or (not (= (_2!21093 (get!11625 lt!1108241)) Nil!36443)) (= lt!1109221 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))))))))

(assert (= (and d!906859 c!552215) b!3270249))

(assert (= (and d!906859 (not c!552215)) b!3270250))

(assert (= (and d!906859 res!1328984) b!3270251))

(assert (= (and b!3270251 res!1328985) b!3270252))

(declare-fun m!3573205 () Bool)

(assert (=> b!3270251 m!3573205))

(assert (=> b!3270251 m!3569769))

(declare-fun m!3573207 () Bool)

(assert (=> b!3270251 m!3573207))

(assert (=> b!3270251 m!3569787))

(declare-fun m!3573209 () Bool)

(assert (=> b!3270250 m!3573209))

(declare-fun m!3573211 () Bool)

(assert (=> d!906859 m!3573211))

(assert (=> d!906859 m!3569769))

(declare-fun m!3573213 () Bool)

(assert (=> d!906859 m!3573213))

(declare-fun m!3573215 () Bool)

(assert (=> d!906859 m!3573215))

(assert (=> b!3268173 d!906859))

(declare-fun d!906861 () Bool)

(assert (=> d!906861 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))) (list!13035 (c!551639 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))))))

(declare-fun bs!546137 () Bool)

(assert (= bs!546137 d!906861))

(declare-fun m!3573217 () Bool)

(assert (=> bs!546137 m!3573217))

(assert (=> b!3268173 d!906861))

(declare-fun d!906863 () Bool)

(declare-fun lt!1109222 () BalanceConc!21500)

(assert (=> d!906863 (= (list!13032 lt!1109222) (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241))))))

(assert (=> d!906863 (= lt!1109222 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))) (value!171054 (_1!21093 (get!11625 lt!1108241)))))))

(assert (=> d!906863 (= (charsOf!3300 (_1!21093 (get!11625 lt!1108241))) lt!1109222)))

(declare-fun b_lambda!90627 () Bool)

(assert (=> (not b_lambda!90627) (not d!906863)))

(declare-fun t!247658 () Bool)

(declare-fun tb!165841 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247658) tb!165841))

(declare-fun b!3270253 () Bool)

(declare-fun e!2036544 () Bool)

(declare-fun tp!1027235 () Bool)

(assert (=> b!3270253 (= e!2036544 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))) (value!171054 (_1!21093 (get!11625 lt!1108241)))))) tp!1027235))))

(declare-fun result!208536 () Bool)

(assert (=> tb!165841 (= result!208536 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))) (value!171054 (_1!21093 (get!11625 lt!1108241))))) e!2036544))))

(assert (= tb!165841 b!3270253))

(declare-fun m!3573219 () Bool)

(assert (=> b!3270253 m!3573219))

(declare-fun m!3573221 () Bool)

(assert (=> tb!165841 m!3573221))

(assert (=> d!906863 t!247658))

(declare-fun b_and!221515 () Bool)

(assert (= b_and!221505 (and (=> t!247658 result!208536) b_and!221515)))

(declare-fun tb!165843 () Bool)

(declare-fun t!247660 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247660) tb!165843))

(declare-fun result!208538 () Bool)

(assert (= result!208538 result!208536))

(assert (=> d!906863 t!247660))

(declare-fun b_and!221517 () Bool)

(assert (= b_and!221513 (and (=> t!247660 result!208538) b_and!221517)))

(declare-fun t!247662 () Bool)

(declare-fun tb!165845 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247662) tb!165845))

(declare-fun result!208540 () Bool)

(assert (= result!208540 result!208536))

(assert (=> d!906863 t!247662))

(declare-fun b_and!221519 () Bool)

(assert (= b_and!221507 (and (=> t!247662 result!208540) b_and!221519)))

(declare-fun t!247664 () Bool)

(declare-fun tb!165847 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247664) tb!165847))

(declare-fun result!208542 () Bool)

(assert (= result!208542 result!208536))

(assert (=> d!906863 t!247664))

(declare-fun b_and!221521 () Bool)

(assert (= b_and!221509 (and (=> t!247664 result!208542) b_and!221521)))

(declare-fun tb!165849 () Bool)

(declare-fun t!247666 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247666) tb!165849))

(declare-fun result!208544 () Bool)

(assert (= result!208544 result!208536))

(assert (=> d!906863 t!247666))

(declare-fun b_and!221523 () Bool)

(assert (= b_and!221511 (and (=> t!247666 result!208544) b_and!221523)))

(declare-fun m!3573223 () Bool)

(assert (=> d!906863 m!3573223))

(declare-fun m!3573225 () Bool)

(assert (=> d!906863 m!3573225))

(assert (=> b!3268173 d!906863))

(assert (=> b!3268173 d!906775))

(assert (=> b!3268432 d!906753))

(assert (=> b!3268432 d!906699))

(declare-fun d!906865 () Bool)

(declare-fun lt!1109223 () Int)

(assert (=> d!906865 (>= lt!1109223 0)))

(declare-fun e!2036545 () Int)

(assert (=> d!906865 (= lt!1109223 e!2036545)))

(declare-fun c!552216 () Bool)

(assert (=> d!906865 (= c!552216 ((_ is Nil!36443) (_2!21092 lt!1108212)))))

(assert (=> d!906865 (= (size!27503 (_2!21092 lt!1108212)) lt!1109223)))

(declare-fun b!3270254 () Bool)

(assert (=> b!3270254 (= e!2036545 0)))

(declare-fun b!3270255 () Bool)

(assert (=> b!3270255 (= e!2036545 (+ 1 (size!27503 (t!247338 (_2!21092 lt!1108212)))))))

(assert (= (and d!906865 c!552216) b!3270254))

(assert (= (and d!906865 (not c!552216)) b!3270255))

(declare-fun m!3573227 () Bool)

(assert (=> b!3270255 m!3573227))

(assert (=> b!3268091 d!906865))

(declare-fun d!906867 () Bool)

(declare-fun lt!1109224 () Int)

(assert (=> d!906867 (>= lt!1109224 0)))

(declare-fun e!2036546 () Int)

(assert (=> d!906867 (= lt!1109224 e!2036546)))

(declare-fun c!552217 () Bool)

(assert (=> d!906867 (= c!552217 ((_ is Nil!36443) lt!1108162))))

(assert (=> d!906867 (= (size!27503 lt!1108162) lt!1109224)))

(declare-fun b!3270256 () Bool)

(assert (=> b!3270256 (= e!2036546 0)))

(declare-fun b!3270257 () Bool)

(assert (=> b!3270257 (= e!2036546 (+ 1 (size!27503 (t!247338 lt!1108162))))))

(assert (= (and d!906867 c!552217) b!3270256))

(assert (= (and d!906867 (not c!552217)) b!3270257))

(declare-fun m!3573229 () Bool)

(assert (=> b!3270257 m!3573229))

(assert (=> b!3268091 d!906867))

(declare-fun d!906869 () Bool)

(assert (=> d!906869 (= (list!13032 (_2!21094 lt!1108326)) (list!13035 (c!551639 (_2!21094 lt!1108326))))))

(declare-fun bs!546138 () Bool)

(assert (= bs!546138 d!906869))

(declare-fun m!3573231 () Bool)

(assert (=> bs!546138 m!3573231))

(assert (=> b!3268411 d!906869))

(declare-fun e!2036547 () Bool)

(declare-fun b!3270258 () Bool)

(declare-fun lt!1109227 () tuple2!35916)

(assert (=> b!3270258 (= e!2036547 (= (_2!21092 lt!1109227) (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))

(declare-fun b!3270259 () Bool)

(declare-fun e!2036548 () Bool)

(assert (=> b!3270259 (= e!2036548 (not (isEmpty!20561 (_1!21092 lt!1109227))))))

(declare-fun b!3270260 () Bool)

(assert (=> b!3270260 (= e!2036547 e!2036548)))

(declare-fun res!1328986 () Bool)

(assert (=> b!3270260 (= res!1328986 (< (size!27503 (_2!21092 lt!1109227)) (size!27503 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))))

(assert (=> b!3270260 (=> (not res!1328986) (not e!2036548))))

(declare-fun d!906871 () Bool)

(assert (=> d!906871 e!2036547))

(declare-fun c!552218 () Bool)

(assert (=> d!906871 (= c!552218 (> (size!27506 (_1!21092 lt!1109227)) 0))))

(declare-fun e!2036549 () tuple2!35916)

(assert (=> d!906871 (= lt!1109227 e!2036549)))

(declare-fun c!552219 () Bool)

(declare-fun lt!1109226 () Option!7257)

(assert (=> d!906871 (= c!552219 ((_ is Some!7256) lt!1109226))))

(assert (=> d!906871 (= lt!1109226 (maxPrefix!2501 thiss!18206 rules!2135 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))

(assert (=> d!906871 (= (lexList!1347 thiss!18206 rules!2135 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))) lt!1109227)))

(declare-fun b!3270261 () Bool)

(assert (=> b!3270261 (= e!2036549 (tuple2!35917 Nil!36444 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))

(declare-fun b!3270262 () Bool)

(declare-fun lt!1109225 () tuple2!35916)

(assert (=> b!3270262 (= e!2036549 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1109226)) (_1!21092 lt!1109225)) (_2!21092 lt!1109225)))))

(assert (=> b!3270262 (= lt!1109225 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1109226))))))

(assert (= (and d!906871 c!552219) b!3270262))

(assert (= (and d!906871 (not c!552219)) b!3270261))

(assert (= (and d!906871 c!552218) b!3270260))

(assert (= (and d!906871 (not c!552218)) b!3270258))

(assert (= (and b!3270260 res!1328986) b!3270259))

(declare-fun m!3573233 () Bool)

(assert (=> b!3270259 m!3573233))

(declare-fun m!3573235 () Bool)

(assert (=> b!3270260 m!3573235))

(assert (=> b!3270260 m!3570109))

(declare-fun m!3573237 () Bool)

(assert (=> b!3270260 m!3573237))

(declare-fun m!3573239 () Bool)

(assert (=> d!906871 m!3573239))

(assert (=> d!906871 m!3570109))

(declare-fun m!3573241 () Bool)

(assert (=> d!906871 m!3573241))

(declare-fun m!3573243 () Bool)

(assert (=> b!3270262 m!3573243))

(assert (=> b!3268411 d!906871))

(declare-fun d!906873 () Bool)

(assert (=> d!906873 (= (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)) (list!13035 (c!551639 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))

(declare-fun bs!546139 () Bool)

(assert (= bs!546139 d!906873))

(declare-fun m!3573245 () Bool)

(assert (=> bs!546139 m!3573245))

(assert (=> b!3268411 d!906873))

(declare-fun d!906875 () Bool)

(declare-fun lt!1109230 () Int)

(assert (=> d!906875 (>= lt!1109230 0)))

(declare-fun e!2036552 () Int)

(assert (=> d!906875 (= lt!1109230 e!2036552)))

(declare-fun c!552222 () Bool)

(assert (=> d!906875 (= c!552222 ((_ is Nil!36444) (_1!21092 lt!1108338)))))

(assert (=> d!906875 (= (size!27506 (_1!21092 lt!1108338)) lt!1109230)))

(declare-fun b!3270267 () Bool)

(assert (=> b!3270267 (= e!2036552 0)))

(declare-fun b!3270268 () Bool)

(assert (=> b!3270268 (= e!2036552 (+ 1 (size!27506 (t!247339 (_1!21092 lt!1108338)))))))

(assert (= (and d!906875 c!552222) b!3270267))

(assert (= (and d!906875 (not c!552222)) b!3270268))

(declare-fun m!3573247 () Bool)

(assert (=> b!3270268 m!3573247))

(assert (=> d!905957 d!906875))

(declare-fun b!3270269 () Bool)

(declare-fun e!2036553 () Bool)

(declare-fun lt!1109231 () Option!7257)

(assert (=> b!3270269 (= e!2036553 (contains!6570 rules!2135 (rule!7766 (_1!21093 (get!11625 lt!1109231)))))))

(declare-fun b!3270270 () Bool)

(declare-fun res!1328990 () Bool)

(assert (=> b!3270270 (=> (not res!1328990) (not e!2036553))))

(assert (=> b!3270270 (= res!1328990 (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1109231)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109231))))))))

(declare-fun b!3270271 () Bool)

(declare-fun res!1328988 () Bool)

(assert (=> b!3270271 (=> (not res!1328988) (not e!2036553))))

(assert (=> b!3270271 (= res!1328988 (= (value!171054 (_1!21093 (get!11625 lt!1109231))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1109231)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1109231)))))))))

(declare-fun b!3270272 () Bool)

(declare-fun res!1328992 () Bool)

(assert (=> b!3270272 (=> (not res!1328992) (not e!2036553))))

(assert (=> b!3270272 (= res!1328992 (< (size!27503 (_2!21093 (get!11625 lt!1109231))) (size!27503 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))))

(declare-fun b!3270273 () Bool)

(declare-fun e!2036555 () Option!7257)

(declare-fun lt!1109232 () Option!7257)

(declare-fun lt!1109234 () Option!7257)

(assert (=> b!3270273 (= e!2036555 (ite (and ((_ is None!7256) lt!1109232) ((_ is None!7256) lt!1109234)) None!7256 (ite ((_ is None!7256) lt!1109234) lt!1109232 (ite ((_ is None!7256) lt!1109232) lt!1109234 (ite (>= (size!27502 (_1!21093 (v!35952 lt!1109232))) (size!27502 (_1!21093 (v!35952 lt!1109234)))) lt!1109232 lt!1109234)))))))

(declare-fun call!237009 () Option!7257)

(assert (=> b!3270273 (= lt!1109232 call!237009)))

(assert (=> b!3270273 (= lt!1109234 (maxPrefix!2501 thiss!18206 (t!247340 rules!2135) (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(declare-fun bm!237004 () Bool)

(assert (=> bm!237004 (= call!237009 (maxPrefixOneRule!1638 thiss!18206 (h!41865 rules!2135) (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(declare-fun b!3270274 () Bool)

(declare-fun res!1328993 () Bool)

(assert (=> b!3270274 (=> (not res!1328993) (not e!2036553))))

(assert (=> b!3270274 (= res!1328993 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109231)))) (originalCharacters!5998 (_1!21093 (get!11625 lt!1109231)))))))

(declare-fun b!3270275 () Bool)

(assert (=> b!3270275 (= e!2036555 call!237009)))

(declare-fun b!3270276 () Bool)

(declare-fun res!1328989 () Bool)

(assert (=> b!3270276 (=> (not res!1328989) (not e!2036553))))

(assert (=> b!3270276 (= res!1328989 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109231)))) (_2!21093 (get!11625 lt!1109231))) (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(declare-fun b!3270277 () Bool)

(declare-fun e!2036554 () Bool)

(assert (=> b!3270277 (= e!2036554 e!2036553)))

(declare-fun res!1328991 () Bool)

(assert (=> b!3270277 (=> (not res!1328991) (not e!2036553))))

(assert (=> b!3270277 (= res!1328991 (isDefined!5625 lt!1109231))))

(declare-fun d!906877 () Bool)

(assert (=> d!906877 e!2036554))

(declare-fun res!1328987 () Bool)

(assert (=> d!906877 (=> res!1328987 e!2036554)))

(assert (=> d!906877 (= res!1328987 (isEmpty!20566 lt!1109231))))

(assert (=> d!906877 (= lt!1109231 e!2036555)))

(declare-fun c!552223 () Bool)

(assert (=> d!906877 (= c!552223 (and ((_ is Cons!36445) rules!2135) ((_ is Nil!36445) (t!247340 rules!2135))))))

(declare-fun lt!1109235 () Unit!51218)

(declare-fun lt!1109233 () Unit!51218)

(assert (=> d!906877 (= lt!1109235 lt!1109233)))

(assert (=> d!906877 (isPrefix!2799 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241) (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241))))

(assert (=> d!906877 (= lt!1109233 (lemmaIsPrefixRefl!1758 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241) (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(assert (=> d!906877 (rulesValidInductive!1798 thiss!18206 rules!2135)))

(assert (=> d!906877 (= (maxPrefix!2501 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)) lt!1109231)))

(assert (= (and d!906877 c!552223) b!3270275))

(assert (= (and d!906877 (not c!552223)) b!3270273))

(assert (= (or b!3270275 b!3270273) bm!237004))

(assert (= (and d!906877 (not res!1328987)) b!3270277))

(assert (= (and b!3270277 res!1328991) b!3270274))

(assert (= (and b!3270274 res!1328993) b!3270272))

(assert (= (and b!3270272 res!1328992) b!3270276))

(assert (= (and b!3270276 res!1328989) b!3270271))

(assert (= (and b!3270271 res!1328988) b!3270270))

(assert (= (and b!3270270 res!1328990) b!3270269))

(assert (=> b!3270273 m!3569563))

(declare-fun m!3573249 () Bool)

(assert (=> b!3270273 m!3573249))

(declare-fun m!3573251 () Bool)

(assert (=> b!3270269 m!3573251))

(declare-fun m!3573253 () Bool)

(assert (=> b!3270269 m!3573253))

(declare-fun m!3573255 () Bool)

(assert (=> b!3270277 m!3573255))

(assert (=> b!3270276 m!3573251))

(declare-fun m!3573257 () Bool)

(assert (=> b!3270276 m!3573257))

(assert (=> b!3270276 m!3573257))

(declare-fun m!3573259 () Bool)

(assert (=> b!3270276 m!3573259))

(assert (=> b!3270276 m!3573259))

(declare-fun m!3573261 () Bool)

(assert (=> b!3270276 m!3573261))

(declare-fun m!3573263 () Bool)

(assert (=> d!906877 m!3573263))

(assert (=> d!906877 m!3569563))

(assert (=> d!906877 m!3569563))

(declare-fun m!3573265 () Bool)

(assert (=> d!906877 m!3573265))

(assert (=> d!906877 m!3569563))

(assert (=> d!906877 m!3569563))

(declare-fun m!3573267 () Bool)

(assert (=> d!906877 m!3573267))

(assert (=> d!906877 m!3569779))

(assert (=> b!3270271 m!3573251))

(declare-fun m!3573269 () Bool)

(assert (=> b!3270271 m!3573269))

(assert (=> b!3270271 m!3573269))

(declare-fun m!3573271 () Bool)

(assert (=> b!3270271 m!3573271))

(assert (=> bm!237004 m!3569563))

(declare-fun m!3573273 () Bool)

(assert (=> bm!237004 m!3573273))

(assert (=> b!3270272 m!3573251))

(declare-fun m!3573275 () Bool)

(assert (=> b!3270272 m!3573275))

(assert (=> b!3270272 m!3569563))

(assert (=> b!3270272 m!3570183))

(assert (=> b!3270270 m!3573251))

(assert (=> b!3270270 m!3573257))

(assert (=> b!3270270 m!3573257))

(assert (=> b!3270270 m!3573259))

(assert (=> b!3270270 m!3573259))

(declare-fun m!3573277 () Bool)

(assert (=> b!3270270 m!3573277))

(assert (=> b!3270274 m!3573251))

(assert (=> b!3270274 m!3573257))

(assert (=> b!3270274 m!3573257))

(assert (=> b!3270274 m!3573259))

(assert (=> d!905957 d!906877))

(declare-fun d!906879 () Bool)

(declare-fun res!1328994 () Bool)

(declare-fun e!2036556 () Bool)

(assert (=> d!906879 (=> res!1328994 e!2036556)))

(assert (=> d!906879 (= res!1328994 ((_ is Nil!36444) lt!1108335))))

(assert (=> d!906879 (= (forall!7522 lt!1108335 lambda!118615) e!2036556)))

(declare-fun b!3270278 () Bool)

(declare-fun e!2036557 () Bool)

(assert (=> b!3270278 (= e!2036556 e!2036557)))

(declare-fun res!1328995 () Bool)

(assert (=> b!3270278 (=> (not res!1328995) (not e!2036557))))

(assert (=> b!3270278 (= res!1328995 (dynLambda!14876 lambda!118615 (h!41864 lt!1108335)))))

(declare-fun b!3270279 () Bool)

(assert (=> b!3270279 (= e!2036557 (forall!7522 (t!247339 lt!1108335) lambda!118615))))

(assert (= (and d!906879 (not res!1328994)) b!3270278))

(assert (= (and b!3270278 res!1328995) b!3270279))

(declare-fun b_lambda!90629 () Bool)

(assert (=> (not b_lambda!90629) (not b!3270278)))

(declare-fun m!3573279 () Bool)

(assert (=> b!3270278 m!3573279))

(declare-fun m!3573281 () Bool)

(assert (=> b!3270279 m!3573281))

(assert (=> b!3268452 d!906879))

(declare-fun b!3270281 () Bool)

(declare-fun e!2036560 () List!36567)

(declare-fun call!237012 () List!36567)

(assert (=> b!3270281 (= e!2036560 call!237012)))

(declare-fun b!3270282 () Bool)

(declare-fun e!2036558 () List!36567)

(assert (=> b!3270282 (= e!2036558 e!2036560)))

(declare-fun c!552224 () Bool)

(assert (=> b!3270282 (= c!552224 ((_ is Union!10043) (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun b!3270283 () Bool)

(declare-fun e!2036561 () List!36567)

(declare-fun e!2036559 () List!36567)

(assert (=> b!3270283 (= e!2036561 e!2036559)))

(declare-fun c!552226 () Bool)

(assert (=> b!3270283 (= c!552226 ((_ is ElementMatch!10043) (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun b!3270284 () Bool)

(assert (=> b!3270284 (= e!2036559 (Cons!36443 (c!551638 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) Nil!36443))))

(declare-fun b!3270285 () Bool)

(assert (=> b!3270285 (= e!2036561 Nil!36443)))

(declare-fun call!237011 () List!36567)

(declare-fun bm!237005 () Bool)

(assert (=> bm!237005 (= call!237011 (usedCharacters!586 (ite c!552224 (regOne!20599 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) (regTwo!20598 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))))

(declare-fun b!3270286 () Bool)

(assert (=> b!3270286 (= e!2036560 call!237012)))

(declare-fun b!3270280 () Bool)

(declare-fun c!552227 () Bool)

(assert (=> b!3270280 (= c!552227 ((_ is Star!10043) (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))

(assert (=> b!3270280 (= e!2036559 e!2036558)))

(declare-fun d!906881 () Bool)

(declare-fun c!552225 () Bool)

(assert (=> d!906881 (= c!552225 (or ((_ is EmptyExpr!10043) (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) ((_ is EmptyLang!10043) (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))

(assert (=> d!906881 (= (usedCharacters!586 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) e!2036561)))

(declare-fun bm!237006 () Bool)

(declare-fun call!237013 () List!36567)

(declare-fun call!237010 () List!36567)

(assert (=> bm!237006 (= call!237013 call!237010)))

(declare-fun bm!237007 () Bool)

(assert (=> bm!237007 (= call!237012 (++!8798 (ite c!552224 call!237011 call!237013) (ite c!552224 call!237013 call!237011)))))

(declare-fun bm!237008 () Bool)

(assert (=> bm!237008 (= call!237010 (usedCharacters!586 (ite c!552227 (reg!10372 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) (ite c!552224 (regTwo!20599 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) (regOne!20598 (ite c!551673 (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))))

(declare-fun b!3270287 () Bool)

(assert (=> b!3270287 (= e!2036558 call!237010)))

(assert (= (and d!906881 c!552225) b!3270285))

(assert (= (and d!906881 (not c!552225)) b!3270283))

(assert (= (and b!3270283 c!552226) b!3270284))

(assert (= (and b!3270283 (not c!552226)) b!3270280))

(assert (= (and b!3270280 c!552227) b!3270287))

(assert (= (and b!3270280 (not c!552227)) b!3270282))

(assert (= (and b!3270282 c!552224) b!3270286))

(assert (= (and b!3270282 (not c!552224)) b!3270281))

(assert (= (or b!3270286 b!3270281) bm!237006))

(assert (= (or b!3270286 b!3270281) bm!237005))

(assert (= (or b!3270286 b!3270281) bm!237007))

(assert (= (or b!3270287 bm!237006) bm!237008))

(declare-fun m!3573283 () Bool)

(assert (=> bm!237005 m!3573283))

(declare-fun m!3573285 () Bool)

(assert (=> bm!237007 m!3573285))

(declare-fun m!3573287 () Bool)

(assert (=> bm!237008 m!3573287))

(assert (=> bm!236813 d!906881))

(declare-fun d!906883 () Bool)

(declare-fun nullableFct!978 (Regex!10043) Bool)

(assert (=> d!906883 (= (nullable!3411 (regex!5284 lt!1108160)) (nullableFct!978 (regex!5284 lt!1108160)))))

(declare-fun bs!546140 () Bool)

(assert (= bs!546140 d!906883))

(declare-fun m!3573289 () Bool)

(assert (=> bs!546140 m!3573289))

(assert (=> b!3268436 d!906883))

(declare-fun b!3270290 () Bool)

(declare-fun res!1328997 () Bool)

(declare-fun e!2036562 () Bool)

(assert (=> b!3270290 (=> (not res!1328997) (not e!2036562))))

(declare-fun lt!1109236 () List!36567)

(assert (=> b!3270290 (= res!1328997 (= (size!27503 lt!1109236) (+ (size!27503 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))) (size!27503 (_2!21093 (get!11625 lt!1108477))))))))

(declare-fun b!3270289 () Bool)

(declare-fun e!2036563 () List!36567)

(assert (=> b!3270289 (= e!2036563 (Cons!36443 (h!41863 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))) (++!8798 (t!247338 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))) (_2!21093 (get!11625 lt!1108477)))))))

(declare-fun b!3270288 () Bool)

(assert (=> b!3270288 (= e!2036563 (_2!21093 (get!11625 lt!1108477)))))

(declare-fun d!906885 () Bool)

(assert (=> d!906885 e!2036562))

(declare-fun res!1328996 () Bool)

(assert (=> d!906885 (=> (not res!1328996) (not e!2036562))))

(assert (=> d!906885 (= res!1328996 (= (content!4944 lt!1109236) ((_ map or) (content!4944 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))) (content!4944 (_2!21093 (get!11625 lt!1108477))))))))

(assert (=> d!906885 (= lt!1109236 e!2036563)))

(declare-fun c!552228 () Bool)

(assert (=> d!906885 (= c!552228 ((_ is Nil!36443) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477))))))))

(assert (=> d!906885 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477)))) (_2!21093 (get!11625 lt!1108477))) lt!1109236)))

(declare-fun b!3270291 () Bool)

(assert (=> b!3270291 (= e!2036562 (or (not (= (_2!21093 (get!11625 lt!1108477)) Nil!36443)) (= lt!1109236 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108477)))))))))

(assert (= (and d!906885 c!552228) b!3270288))

(assert (= (and d!906885 (not c!552228)) b!3270289))

(assert (= (and d!906885 res!1328996) b!3270290))

(assert (= (and b!3270290 res!1328997) b!3270291))

(declare-fun m!3573291 () Bool)

(assert (=> b!3270290 m!3573291))

(assert (=> b!3270290 m!3570659))

(declare-fun m!3573293 () Bool)

(assert (=> b!3270290 m!3573293))

(assert (=> b!3270290 m!3570655))

(declare-fun m!3573295 () Bool)

(assert (=> b!3270289 m!3573295))

(declare-fun m!3573297 () Bool)

(assert (=> d!906885 m!3573297))

(assert (=> d!906885 m!3570659))

(declare-fun m!3573299 () Bool)

(assert (=> d!906885 m!3573299))

(declare-fun m!3573301 () Bool)

(assert (=> d!906885 m!3573301))

(assert (=> b!3268766 d!906885))

(assert (=> b!3268766 d!906631))

(assert (=> b!3268766 d!906633))

(assert (=> b!3268766 d!906635))

(declare-fun d!906887 () Bool)

(declare-fun lt!1109237 () Bool)

(assert (=> d!906887 (= lt!1109237 (select (content!4948 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1108249)))))))

(declare-fun e!2036565 () Bool)

(assert (=> d!906887 (= lt!1109237 e!2036565)))

(declare-fun res!1328999 () Bool)

(assert (=> d!906887 (=> (not res!1328999) (not e!2036565))))

(assert (=> d!906887 (= res!1328999 ((_ is Cons!36445) rules!2135))))

(assert (=> d!906887 (= (contains!6570 rules!2135 (rule!7766 (_1!21093 (get!11625 lt!1108249)))) lt!1109237)))

(declare-fun b!3270292 () Bool)

(declare-fun e!2036564 () Bool)

(assert (=> b!3270292 (= e!2036565 e!2036564)))

(declare-fun res!1328998 () Bool)

(assert (=> b!3270292 (=> res!1328998 e!2036564)))

(assert (=> b!3270292 (= res!1328998 (= (h!41865 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1108249)))))))

(declare-fun b!3270293 () Bool)

(assert (=> b!3270293 (= e!2036564 (contains!6570 (t!247340 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1108249)))))))

(assert (= (and d!906887 res!1328999) b!3270292))

(assert (= (and b!3270292 (not res!1328998)) b!3270293))

(assert (=> d!906887 m!3572719))

(declare-fun m!3573303 () Bool)

(assert (=> d!906887 m!3573303))

(declare-fun m!3573305 () Bool)

(assert (=> b!3270293 m!3573305))

(assert (=> b!3268175 d!906887))

(assert (=> b!3268175 d!906725))

(declare-fun d!906889 () Bool)

(declare-fun lt!1109238 () Bool)

(assert (=> d!906889 (= lt!1109238 (isEmpty!20562 (list!13032 (_2!21094 lt!1108375))))))

(assert (=> d!906889 (= lt!1109238 (isEmpty!20573 (c!551639 (_2!21094 lt!1108375))))))

(assert (=> d!906889 (= (isEmpty!20568 (_2!21094 lt!1108375)) lt!1109238)))

(declare-fun bs!546141 () Bool)

(assert (= bs!546141 d!906889))

(declare-fun m!3573307 () Bool)

(assert (=> bs!546141 m!3573307))

(assert (=> bs!546141 m!3573307))

(declare-fun m!3573309 () Bool)

(assert (=> bs!546141 m!3573309))

(declare-fun m!3573311 () Bool)

(assert (=> bs!546141 m!3573311))

(assert (=> b!3268519 d!906889))

(declare-fun d!906891 () Bool)

(assert (=> d!906891 (= (list!13032 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))) (list!13035 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))))))

(declare-fun bs!546142 () Bool)

(assert (= bs!546142 d!906891))

(declare-fun m!3573313 () Bool)

(assert (=> bs!546142 m!3573313))

(assert (=> b!3268028 d!906891))

(declare-fun b!3270295 () Bool)

(declare-fun e!2036568 () List!36567)

(declare-fun call!237016 () List!36567)

(assert (=> b!3270295 (= e!2036568 call!237016)))

(declare-fun b!3270296 () Bool)

(declare-fun e!2036566 () List!36567)

(assert (=> b!3270296 (= e!2036566 e!2036568)))

(declare-fun c!552229 () Bool)

(assert (=> b!3270296 (= c!552229 ((_ is Union!10043) (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))

(declare-fun b!3270297 () Bool)

(declare-fun e!2036569 () List!36567)

(declare-fun e!2036567 () List!36567)

(assert (=> b!3270297 (= e!2036569 e!2036567)))

(declare-fun c!552231 () Bool)

(assert (=> b!3270297 (= c!552231 ((_ is ElementMatch!10043) (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))

(declare-fun b!3270298 () Bool)

(assert (=> b!3270298 (= e!2036567 (Cons!36443 (c!551638 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))) Nil!36443))))

(declare-fun b!3270299 () Bool)

(assert (=> b!3270299 (= e!2036569 Nil!36443)))

(declare-fun bm!237009 () Bool)

(declare-fun call!237015 () List!36567)

(assert (=> bm!237009 (= call!237015 (usedCharacters!586 (ite c!552229 (regOne!20599 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))) (regTwo!20598 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))))

(declare-fun b!3270300 () Bool)

(assert (=> b!3270300 (= e!2036568 call!237016)))

(declare-fun b!3270294 () Bool)

(declare-fun c!552232 () Bool)

(assert (=> b!3270294 (= c!552232 ((_ is Star!10043) (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))

(assert (=> b!3270294 (= e!2036567 e!2036566)))

(declare-fun d!906893 () Bool)

(declare-fun c!552230 () Bool)

(assert (=> d!906893 (= c!552230 (or ((_ is EmptyExpr!10043) (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))) ((_ is EmptyLang!10043) (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))))

(assert (=> d!906893 (= (usedCharacters!586 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))) e!2036569)))

(declare-fun bm!237010 () Bool)

(declare-fun call!237017 () List!36567)

(declare-fun call!237014 () List!36567)

(assert (=> bm!237010 (= call!237017 call!237014)))

(declare-fun bm!237011 () Bool)

(assert (=> bm!237011 (= call!237016 (++!8798 (ite c!552229 call!237015 call!237017) (ite c!552229 call!237017 call!237015)))))

(declare-fun bm!237012 () Bool)

(assert (=> bm!237012 (= call!237014 (usedCharacters!586 (ite c!552232 (reg!10372 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))) (ite c!552229 (regTwo!20599 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494))))))) (regOne!20598 (ite c!551676 (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (ite c!551673 (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))))))

(declare-fun b!3270301 () Bool)

(assert (=> b!3270301 (= e!2036566 call!237014)))

(assert (= (and d!906893 c!552230) b!3270299))

(assert (= (and d!906893 (not c!552230)) b!3270297))

(assert (= (and b!3270297 c!552231) b!3270298))

(assert (= (and b!3270297 (not c!552231)) b!3270294))

(assert (= (and b!3270294 c!552232) b!3270301))

(assert (= (and b!3270294 (not c!552232)) b!3270296))

(assert (= (and b!3270296 c!552229) b!3270300))

(assert (= (and b!3270296 (not c!552229)) b!3270295))

(assert (= (or b!3270300 b!3270295) bm!237010))

(assert (= (or b!3270300 b!3270295) bm!237009))

(assert (= (or b!3270300 b!3270295) bm!237011))

(assert (= (or b!3270301 bm!237010) bm!237012))

(declare-fun m!3573315 () Bool)

(assert (=> bm!237009 m!3573315))

(declare-fun m!3573317 () Bool)

(assert (=> bm!237011 m!3573317))

(declare-fun m!3573319 () Bool)

(assert (=> bm!237012 m!3573319))

(assert (=> bm!236816 d!906893))

(declare-fun d!906895 () Bool)

(assert (=> d!906895 (= (isEmpty!20562 lt!1108158) ((_ is Nil!36443) lt!1108158))))

(assert (=> d!905801 d!906895))

(declare-fun b!3270302 () Bool)

(declare-fun e!2036576 () Bool)

(declare-fun e!2036573 () Bool)

(assert (=> b!3270302 (= e!2036576 e!2036573)))

(declare-fun c!552234 () Bool)

(assert (=> b!3270302 (= c!552234 ((_ is Union!10043) (regex!5284 lt!1108157)))))

(declare-fun bm!237013 () Bool)

(declare-fun call!237020 () Bool)

(declare-fun call!237018 () Bool)

(assert (=> bm!237013 (= call!237020 call!237018)))

(declare-fun b!3270303 () Bool)

(declare-fun e!2036572 () Bool)

(assert (=> b!3270303 (= e!2036572 call!237020)))

(declare-fun b!3270304 () Bool)

(declare-fun e!2036571 () Bool)

(assert (=> b!3270304 (= e!2036571 e!2036576)))

(declare-fun c!552233 () Bool)

(assert (=> b!3270304 (= c!552233 ((_ is Star!10043) (regex!5284 lt!1108157)))))

(declare-fun b!3270305 () Bool)

(declare-fun res!1329001 () Bool)

(assert (=> b!3270305 (=> (not res!1329001) (not e!2036572))))

(declare-fun call!237019 () Bool)

(assert (=> b!3270305 (= res!1329001 call!237019)))

(assert (=> b!3270305 (= e!2036573 e!2036572)))

(declare-fun bm!237014 () Bool)

(assert (=> bm!237014 (= call!237019 (validRegex!4567 (ite c!552234 (regOne!20599 (regex!5284 lt!1108157)) (regOne!20598 (regex!5284 lt!1108157)))))))

(declare-fun d!906897 () Bool)

(declare-fun res!1329002 () Bool)

(assert (=> d!906897 (=> res!1329002 e!2036571)))

(assert (=> d!906897 (= res!1329002 ((_ is ElementMatch!10043) (regex!5284 lt!1108157)))))

(assert (=> d!906897 (= (validRegex!4567 (regex!5284 lt!1108157)) e!2036571)))

(declare-fun b!3270306 () Bool)

(declare-fun e!2036574 () Bool)

(assert (=> b!3270306 (= e!2036574 call!237020)))

(declare-fun b!3270307 () Bool)

(declare-fun e!2036570 () Bool)

(assert (=> b!3270307 (= e!2036570 call!237018)))

(declare-fun b!3270308 () Bool)

(assert (=> b!3270308 (= e!2036576 e!2036570)))

(declare-fun res!1329004 () Bool)

(assert (=> b!3270308 (= res!1329004 (not (nullable!3411 (reg!10372 (regex!5284 lt!1108157)))))))

(assert (=> b!3270308 (=> (not res!1329004) (not e!2036570))))

(declare-fun b!3270309 () Bool)

(declare-fun e!2036575 () Bool)

(assert (=> b!3270309 (= e!2036575 e!2036574)))

(declare-fun res!1329003 () Bool)

(assert (=> b!3270309 (=> (not res!1329003) (not e!2036574))))

(assert (=> b!3270309 (= res!1329003 call!237019)))

(declare-fun bm!237015 () Bool)

(assert (=> bm!237015 (= call!237018 (validRegex!4567 (ite c!552233 (reg!10372 (regex!5284 lt!1108157)) (ite c!552234 (regTwo!20599 (regex!5284 lt!1108157)) (regTwo!20598 (regex!5284 lt!1108157))))))))

(declare-fun b!3270310 () Bool)

(declare-fun res!1329000 () Bool)

(assert (=> b!3270310 (=> res!1329000 e!2036575)))

(assert (=> b!3270310 (= res!1329000 (not ((_ is Concat!15557) (regex!5284 lt!1108157))))))

(assert (=> b!3270310 (= e!2036573 e!2036575)))

(assert (= (and d!906897 (not res!1329002)) b!3270304))

(assert (= (and b!3270304 c!552233) b!3270308))

(assert (= (and b!3270304 (not c!552233)) b!3270302))

(assert (= (and b!3270308 res!1329004) b!3270307))

(assert (= (and b!3270302 c!552234) b!3270305))

(assert (= (and b!3270302 (not c!552234)) b!3270310))

(assert (= (and b!3270305 res!1329001) b!3270303))

(assert (= (and b!3270310 (not res!1329000)) b!3270309))

(assert (= (and b!3270309 res!1329003) b!3270306))

(assert (= (or b!3270303 b!3270306) bm!237013))

(assert (= (or b!3270305 b!3270309) bm!237014))

(assert (= (or b!3270307 bm!237013) bm!237015))

(declare-fun m!3573321 () Bool)

(assert (=> bm!237014 m!3573321))

(declare-fun m!3573323 () Bool)

(assert (=> b!3270308 m!3573323))

(declare-fun m!3573325 () Bool)

(assert (=> bm!237015 m!3573325))

(assert (=> d!905801 d!906897))

(declare-fun d!906899 () Bool)

(assert (=> d!906899 (= (list!13033 (_1!21094 lt!1108292)) (list!13036 (c!551640 (_1!21094 lt!1108292))))))

(declare-fun bs!546143 () Bool)

(assert (= bs!546143 d!906899))

(declare-fun m!3573327 () Bool)

(assert (=> bs!546143 m!3573327))

(assert (=> b!3268247 d!906899))

(assert (=> b!3268247 d!906733))

(assert (=> b!3268247 d!906743))

(assert (=> bm!236844 d!906605))

(declare-fun d!906901 () Bool)

(declare-fun lt!1109239 () Int)

(assert (=> d!906901 (>= lt!1109239 0)))

(declare-fun e!2036577 () Int)

(assert (=> d!906901 (= lt!1109239 e!2036577)))

(declare-fun c!552235 () Bool)

(assert (=> d!906901 (= c!552235 ((_ is Nil!36443) (_2!21093 (get!11625 lt!1108477))))))

(assert (=> d!906901 (= (size!27503 (_2!21093 (get!11625 lt!1108477))) lt!1109239)))

(declare-fun b!3270311 () Bool)

(assert (=> b!3270311 (= e!2036577 0)))

(declare-fun b!3270312 () Bool)

(assert (=> b!3270312 (= e!2036577 (+ 1 (size!27503 (t!247338 (_2!21093 (get!11625 lt!1108477))))))))

(assert (= (and d!906901 c!552235) b!3270311))

(assert (= (and d!906901 (not c!552235)) b!3270312))

(declare-fun m!3573329 () Bool)

(assert (=> b!3270312 m!3573329))

(assert (=> b!3268762 d!906901))

(assert (=> b!3268762 d!906635))

(assert (=> b!3268762 d!906055))

(declare-fun d!906903 () Bool)

(assert (=> d!906903 (= (isEmpty!20562 (originalCharacters!5998 separatorToken!241)) ((_ is Nil!36443) (originalCharacters!5998 separatorToken!241)))))

(assert (=> d!905925 d!906903))

(declare-fun d!906905 () Bool)

(declare-fun lt!1109240 () Int)

(assert (=> d!906905 (>= lt!1109240 0)))

(declare-fun e!2036578 () Int)

(assert (=> d!906905 (= lt!1109240 e!2036578)))

(declare-fun c!552236 () Bool)

(assert (=> d!906905 (= c!552236 ((_ is Nil!36443) lt!1108343))))

(assert (=> d!906905 (= (size!27503 lt!1108343) lt!1109240)))

(declare-fun b!3270313 () Bool)

(assert (=> b!3270313 (= e!2036578 0)))

(declare-fun b!3270314 () Bool)

(assert (=> b!3270314 (= e!2036578 (+ 1 (size!27503 (t!247338 lt!1108343))))))

(assert (= (and d!906905 c!552236) b!3270313))

(assert (= (and d!906905 (not c!552236)) b!3270314))

(declare-fun m!3573331 () Bool)

(assert (=> b!3270314 m!3573331))

(assert (=> b!3268477 d!906905))

(assert (=> b!3268477 d!906055))

(declare-fun d!906907 () Bool)

(declare-fun lt!1109241 () Int)

(assert (=> d!906907 (>= lt!1109241 0)))

(declare-fun e!2036579 () Int)

(assert (=> d!906907 (= lt!1109241 e!2036579)))

(declare-fun c!552237 () Bool)

(assert (=> d!906907 (= c!552237 ((_ is Nil!36443) lt!1108142))))

(assert (=> d!906907 (= (size!27503 lt!1108142) lt!1109241)))

(declare-fun b!3270315 () Bool)

(assert (=> b!3270315 (= e!2036579 0)))

(declare-fun b!3270316 () Bool)

(assert (=> b!3270316 (= e!2036579 (+ 1 (size!27503 (t!247338 lt!1108142))))))

(assert (= (and d!906907 c!552237) b!3270315))

(assert (= (and d!906907 (not c!552237)) b!3270316))

(declare-fun m!3573333 () Bool)

(assert (=> b!3270316 m!3573333))

(assert (=> b!3268477 d!906907))

(declare-fun bs!546144 () Bool)

(declare-fun d!906909 () Bool)

(assert (= bs!546144 (and d!906909 d!906855)))

(declare-fun lambda!118657 () Int)

(assert (=> bs!546144 (= (and (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (= lambda!118657 lambda!118656))))

(assert (=> d!906909 true))

(assert (=> d!906909 (< (dynLambda!14884 order!18861 (toChars!7263 (transformation!5284 (h!41865 rules!2135)))) (dynLambda!14889 order!18869 lambda!118657))))

(assert (=> d!906909 true))

(assert (=> d!906909 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (h!41865 rules!2135)))) (dynLambda!14889 order!18869 lambda!118657))))

(assert (=> d!906909 (= (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (h!41865 rules!2135)))) (Forall!1285 lambda!118657))))

(declare-fun bs!546145 () Bool)

(assert (= bs!546145 d!906909))

(declare-fun m!3573335 () Bool)

(assert (=> bs!546145 m!3573335))

(assert (=> d!905797 d!906909))

(declare-fun d!906911 () Bool)

(assert (=> d!906911 (= (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))) (v!35953 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))))))

(assert (=> b!3268778 d!906911))

(assert (=> b!3268778 d!906065))

(declare-fun e!2036580 () Bool)

(declare-fun b!3270317 () Bool)

(assert (=> b!3270317 (= e!2036580 (= (head!7113 (list!13032 (charsOf!3300 separatorToken!241))) (c!551638 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))))))))

(declare-fun e!2036582 () Bool)

(declare-fun b!3270318 () Bool)

(assert (=> b!3270318 (= e!2036582 (not (= (head!7113 (list!13032 (charsOf!3300 separatorToken!241))) (c!551638 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))))))))))

(declare-fun b!3270319 () Bool)

(declare-fun res!1329006 () Bool)

(assert (=> b!3270319 (=> (not res!1329006) (not e!2036580))))

(assert (=> b!3270319 (= res!1329006 (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 separatorToken!241)))))))

(declare-fun b!3270320 () Bool)

(declare-fun e!2036586 () Bool)

(declare-fun lt!1109242 () Bool)

(declare-fun call!237021 () Bool)

(assert (=> b!3270320 (= e!2036586 (= lt!1109242 call!237021))))

(declare-fun e!2036581 () Bool)

(declare-fun b!3270321 () Bool)

(assert (=> b!3270321 (= e!2036581 (matchR!4665 (derivativeStep!2964 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))) (head!7113 (list!13032 (charsOf!3300 separatorToken!241)))) (tail!5250 (list!13032 (charsOf!3300 separatorToken!241)))))))

(declare-fun b!3270322 () Bool)

(declare-fun res!1329007 () Bool)

(assert (=> b!3270322 (=> (not res!1329007) (not e!2036580))))

(assert (=> b!3270322 (= res!1329007 (not call!237021))))

(declare-fun b!3270323 () Bool)

(assert (=> b!3270323 (= e!2036581 (nullable!3411 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))))))))

(declare-fun b!3270324 () Bool)

(declare-fun e!2036583 () Bool)

(assert (=> b!3270324 (= e!2036583 e!2036582)))

(declare-fun res!1329011 () Bool)

(assert (=> b!3270324 (=> res!1329011 e!2036582)))

(assert (=> b!3270324 (= res!1329011 call!237021)))

(declare-fun b!3270326 () Bool)

(declare-fun e!2036584 () Bool)

(assert (=> b!3270326 (= e!2036584 (not lt!1109242))))

(declare-fun bm!237016 () Bool)

(assert (=> bm!237016 (= call!237021 (isEmpty!20562 (list!13032 (charsOf!3300 separatorToken!241))))))

(declare-fun b!3270327 () Bool)

(declare-fun res!1329005 () Bool)

(assert (=> b!3270327 (=> res!1329005 e!2036582)))

(assert (=> b!3270327 (= res!1329005 (not (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 separatorToken!241))))))))

(declare-fun b!3270328 () Bool)

(declare-fun res!1329012 () Bool)

(declare-fun e!2036585 () Bool)

(assert (=> b!3270328 (=> res!1329012 e!2036585)))

(assert (=> b!3270328 (= res!1329012 e!2036580)))

(declare-fun res!1329009 () Bool)

(assert (=> b!3270328 (=> (not res!1329009) (not e!2036580))))

(assert (=> b!3270328 (= res!1329009 lt!1109242)))

(declare-fun d!906913 () Bool)

(assert (=> d!906913 e!2036586))

(declare-fun c!552240 () Bool)

(assert (=> d!906913 (= c!552240 ((_ is EmptyExpr!10043) (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))))))))

(assert (=> d!906913 (= lt!1109242 e!2036581)))

(declare-fun c!552239 () Bool)

(assert (=> d!906913 (= c!552239 (isEmpty!20562 (list!13032 (charsOf!3300 separatorToken!241))))))

(assert (=> d!906913 (validRegex!4567 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))))))

(assert (=> d!906913 (= (matchR!4665 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))) (list!13032 (charsOf!3300 separatorToken!241))) lt!1109242)))

(declare-fun b!3270325 () Bool)

(assert (=> b!3270325 (= e!2036585 e!2036583)))

(declare-fun res!1329010 () Bool)

(assert (=> b!3270325 (=> (not res!1329010) (not e!2036583))))

(assert (=> b!3270325 (= res!1329010 (not lt!1109242))))

(declare-fun b!3270329 () Bool)

(declare-fun res!1329008 () Bool)

(assert (=> b!3270329 (=> res!1329008 e!2036585)))

(assert (=> b!3270329 (= res!1329008 (not ((_ is ElementMatch!10043) (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241))))))))))

(assert (=> b!3270329 (= e!2036584 e!2036585)))

(declare-fun b!3270330 () Bool)

(assert (=> b!3270330 (= e!2036586 e!2036584)))

(declare-fun c!552238 () Bool)

(assert (=> b!3270330 (= c!552238 ((_ is EmptyLang!10043) (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 separatorToken!241)))))))))

(assert (= (and d!906913 c!552239) b!3270323))

(assert (= (and d!906913 (not c!552239)) b!3270321))

(assert (= (and d!906913 c!552240) b!3270320))

(assert (= (and d!906913 (not c!552240)) b!3270330))

(assert (= (and b!3270330 c!552238) b!3270326))

(assert (= (and b!3270330 (not c!552238)) b!3270329))

(assert (= (and b!3270329 (not res!1329008)) b!3270328))

(assert (= (and b!3270328 res!1329009) b!3270322))

(assert (= (and b!3270322 res!1329007) b!3270319))

(assert (= (and b!3270319 res!1329006) b!3270317))

(assert (= (and b!3270328 (not res!1329012)) b!3270325))

(assert (= (and b!3270325 res!1329010) b!3270324))

(assert (= (and b!3270324 (not res!1329011)) b!3270327))

(assert (= (and b!3270327 (not res!1329005)) b!3270318))

(assert (= (or b!3270320 b!3270322 b!3270324) bm!237016))

(assert (=> bm!237016 m!3569515))

(declare-fun m!3573337 () Bool)

(assert (=> bm!237016 m!3573337))

(assert (=> b!3270317 m!3569515))

(declare-fun m!3573339 () Bool)

(assert (=> b!3270317 m!3573339))

(assert (=> b!3270318 m!3569515))

(assert (=> b!3270318 m!3573339))

(assert (=> b!3270327 m!3569515))

(declare-fun m!3573341 () Bool)

(assert (=> b!3270327 m!3573341))

(assert (=> b!3270327 m!3573341))

(declare-fun m!3573343 () Bool)

(assert (=> b!3270327 m!3573343))

(assert (=> d!906913 m!3569515))

(assert (=> d!906913 m!3573337))

(declare-fun m!3573345 () Bool)

(assert (=> d!906913 m!3573345))

(assert (=> b!3270319 m!3569515))

(assert (=> b!3270319 m!3573341))

(assert (=> b!3270319 m!3573341))

(assert (=> b!3270319 m!3573343))

(declare-fun m!3573347 () Bool)

(assert (=> b!3270323 m!3573347))

(assert (=> b!3270321 m!3569515))

(assert (=> b!3270321 m!3573339))

(assert (=> b!3270321 m!3573339))

(declare-fun m!3573349 () Bool)

(assert (=> b!3270321 m!3573349))

(assert (=> b!3270321 m!3569515))

(assert (=> b!3270321 m!3573341))

(assert (=> b!3270321 m!3573349))

(assert (=> b!3270321 m!3573341))

(declare-fun m!3573351 () Bool)

(assert (=> b!3270321 m!3573351))

(assert (=> b!3268778 d!906913))

(assert (=> b!3268778 d!905969))

(assert (=> b!3268778 d!905971))

(declare-fun b!3270331 () Bool)

(declare-fun e!2036587 () Bool)

(declare-fun lt!1109243 () Option!7257)

(assert (=> b!3270331 (= e!2036587 (contains!6570 (t!247340 rules!2135) (rule!7766 (_1!21093 (get!11625 lt!1109243)))))))

(declare-fun b!3270332 () Bool)

(declare-fun res!1329016 () Bool)

(assert (=> b!3270332 (=> (not res!1329016) (not e!2036587))))

(assert (=> b!3270332 (= res!1329016 (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1109243)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109243))))))))

(declare-fun b!3270333 () Bool)

(declare-fun res!1329014 () Bool)

(assert (=> b!3270333 (=> (not res!1329014) (not e!2036587))))

(assert (=> b!3270333 (= res!1329014 (= (value!171054 (_1!21093 (get!11625 lt!1109243))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1109243)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1109243)))))))))

(declare-fun b!3270334 () Bool)

(declare-fun res!1329018 () Bool)

(assert (=> b!3270334 (=> (not res!1329018) (not e!2036587))))

(assert (=> b!3270334 (= res!1329018 (< (size!27503 (_2!21093 (get!11625 lt!1109243))) (size!27503 lt!1108162)))))

(declare-fun b!3270335 () Bool)

(declare-fun e!2036589 () Option!7257)

(declare-fun lt!1109244 () Option!7257)

(declare-fun lt!1109246 () Option!7257)

(assert (=> b!3270335 (= e!2036589 (ite (and ((_ is None!7256) lt!1109244) ((_ is None!7256) lt!1109246)) None!7256 (ite ((_ is None!7256) lt!1109246) lt!1109244 (ite ((_ is None!7256) lt!1109244) lt!1109246 (ite (>= (size!27502 (_1!21093 (v!35952 lt!1109244))) (size!27502 (_1!21093 (v!35952 lt!1109246)))) lt!1109244 lt!1109246)))))))

(declare-fun call!237022 () Option!7257)

(assert (=> b!3270335 (= lt!1109244 call!237022)))

(assert (=> b!3270335 (= lt!1109246 (maxPrefix!2501 thiss!18206 (t!247340 (t!247340 rules!2135)) lt!1108162))))

(declare-fun bm!237017 () Bool)

(assert (=> bm!237017 (= call!237022 (maxPrefixOneRule!1638 thiss!18206 (h!41865 (t!247340 rules!2135)) lt!1108162))))

(declare-fun b!3270336 () Bool)

(declare-fun res!1329019 () Bool)

(assert (=> b!3270336 (=> (not res!1329019) (not e!2036587))))

(assert (=> b!3270336 (= res!1329019 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109243)))) (originalCharacters!5998 (_1!21093 (get!11625 lt!1109243)))))))

(declare-fun b!3270337 () Bool)

(assert (=> b!3270337 (= e!2036589 call!237022)))

(declare-fun b!3270338 () Bool)

(declare-fun res!1329015 () Bool)

(assert (=> b!3270338 (=> (not res!1329015) (not e!2036587))))

(assert (=> b!3270338 (= res!1329015 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109243)))) (_2!21093 (get!11625 lt!1109243))) lt!1108162))))

(declare-fun b!3270339 () Bool)

(declare-fun e!2036588 () Bool)

(assert (=> b!3270339 (= e!2036588 e!2036587)))

(declare-fun res!1329017 () Bool)

(assert (=> b!3270339 (=> (not res!1329017) (not e!2036587))))

(assert (=> b!3270339 (= res!1329017 (isDefined!5625 lt!1109243))))

(declare-fun d!906915 () Bool)

(assert (=> d!906915 e!2036588))

(declare-fun res!1329013 () Bool)

(assert (=> d!906915 (=> res!1329013 e!2036588)))

(assert (=> d!906915 (= res!1329013 (isEmpty!20566 lt!1109243))))

(assert (=> d!906915 (= lt!1109243 e!2036589)))

(declare-fun c!552241 () Bool)

(assert (=> d!906915 (= c!552241 (and ((_ is Cons!36445) (t!247340 rules!2135)) ((_ is Nil!36445) (t!247340 (t!247340 rules!2135)))))))

(declare-fun lt!1109247 () Unit!51218)

(declare-fun lt!1109245 () Unit!51218)

(assert (=> d!906915 (= lt!1109247 lt!1109245)))

(assert (=> d!906915 (isPrefix!2799 lt!1108162 lt!1108162)))

(assert (=> d!906915 (= lt!1109245 (lemmaIsPrefixRefl!1758 lt!1108162 lt!1108162))))

(assert (=> d!906915 (rulesValidInductive!1798 thiss!18206 (t!247340 rules!2135))))

(assert (=> d!906915 (= (maxPrefix!2501 thiss!18206 (t!247340 rules!2135) lt!1108162) lt!1109243)))

(assert (= (and d!906915 c!552241) b!3270337))

(assert (= (and d!906915 (not c!552241)) b!3270335))

(assert (= (or b!3270337 b!3270335) bm!237017))

(assert (= (and d!906915 (not res!1329013)) b!3270339))

(assert (= (and b!3270339 res!1329017) b!3270336))

(assert (= (and b!3270336 res!1329019) b!3270334))

(assert (= (and b!3270334 res!1329018) b!3270338))

(assert (= (and b!3270338 res!1329015) b!3270333))

(assert (= (and b!3270333 res!1329014) b!3270332))

(assert (= (and b!3270332 res!1329016) b!3270331))

(declare-fun m!3573353 () Bool)

(assert (=> b!3270335 m!3573353))

(declare-fun m!3573355 () Bool)

(assert (=> b!3270331 m!3573355))

(declare-fun m!3573357 () Bool)

(assert (=> b!3270331 m!3573357))

(declare-fun m!3573359 () Bool)

(assert (=> b!3270339 m!3573359))

(assert (=> b!3270338 m!3573355))

(declare-fun m!3573361 () Bool)

(assert (=> b!3270338 m!3573361))

(assert (=> b!3270338 m!3573361))

(declare-fun m!3573363 () Bool)

(assert (=> b!3270338 m!3573363))

(assert (=> b!3270338 m!3573363))

(declare-fun m!3573365 () Bool)

(assert (=> b!3270338 m!3573365))

(declare-fun m!3573367 () Bool)

(assert (=> d!906915 m!3573367))

(assert (=> d!906915 m!3569811))

(assert (=> d!906915 m!3569813))

(assert (=> d!906915 m!3573103))

(assert (=> b!3270333 m!3573355))

(declare-fun m!3573369 () Bool)

(assert (=> b!3270333 m!3573369))

(assert (=> b!3270333 m!3573369))

(declare-fun m!3573371 () Bool)

(assert (=> b!3270333 m!3573371))

(declare-fun m!3573373 () Bool)

(assert (=> bm!237017 m!3573373))

(assert (=> b!3270334 m!3573355))

(declare-fun m!3573375 () Bool)

(assert (=> b!3270334 m!3573375))

(assert (=> b!3270334 m!3569721))

(assert (=> b!3270332 m!3573355))

(assert (=> b!3270332 m!3573361))

(assert (=> b!3270332 m!3573361))

(assert (=> b!3270332 m!3573363))

(assert (=> b!3270332 m!3573363))

(declare-fun m!3573377 () Bool)

(assert (=> b!3270332 m!3573377))

(assert (=> b!3270336 m!3573355))

(assert (=> b!3270336 m!3573361))

(assert (=> b!3270336 m!3573361))

(assert (=> b!3270336 m!3573363))

(assert (=> b!3268179 d!906915))

(declare-fun d!906917 () Bool)

(assert (=> d!906917 (= (isEmpty!20562 (originalCharacters!5998 (h!41864 tokens!494))) ((_ is Nil!36443) (originalCharacters!5998 (h!41864 tokens!494))))))

(assert (=> d!905821 d!906917))

(declare-fun d!906919 () Bool)

(declare-fun lt!1109248 () Int)

(assert (=> d!906919 (>= lt!1109248 0)))

(declare-fun e!2036590 () Int)

(assert (=> d!906919 (= lt!1109248 e!2036590)))

(declare-fun c!552242 () Bool)

(assert (=> d!906919 (= c!552242 ((_ is Nil!36444) lt!1108335))))

(assert (=> d!906919 (= (size!27506 lt!1108335) lt!1109248)))

(declare-fun b!3270340 () Bool)

(assert (=> b!3270340 (= e!2036590 0)))

(declare-fun b!3270341 () Bool)

(assert (=> b!3270341 (= e!2036590 (+ 1 (size!27506 (t!247339 lt!1108335))))))

(assert (= (and d!906919 c!552242) b!3270340))

(assert (= (and d!906919 (not c!552242)) b!3270341))

(declare-fun m!3573379 () Bool)

(assert (=> b!3270341 m!3573379))

(assert (=> d!905955 d!906919))

(declare-fun d!906921 () Bool)

(declare-fun lt!1109249 () Int)

(assert (=> d!906921 (>= lt!1109249 0)))

(declare-fun e!2036591 () Int)

(assert (=> d!906921 (= lt!1109249 e!2036591)))

(declare-fun c!552243 () Bool)

(assert (=> d!906921 (= c!552243 ((_ is Nil!36444) (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))

(assert (=> d!906921 (= (size!27506 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))) lt!1109249)))

(declare-fun b!3270342 () Bool)

(assert (=> b!3270342 (= e!2036591 0)))

(declare-fun b!3270343 () Bool)

(assert (=> b!3270343 (= e!2036591 (+ 1 (size!27506 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))))

(assert (= (and d!906921 c!552243) b!3270342))

(assert (= (and d!906921 (not c!552243)) b!3270343))

(assert (=> b!3270343 m!3572419))

(assert (=> d!905955 d!906921))

(declare-fun d!906923 () Bool)

(declare-fun lt!1109250 () Bool)

(assert (=> d!906923 (= lt!1109250 (isEmpty!20561 (list!13033 (_1!21094 lt!1108292))))))

(assert (=> d!906923 (= lt!1109250 (isEmpty!20569 (c!551640 (_1!21094 lt!1108292))))))

(assert (=> d!906923 (= (isEmpty!20563 (_1!21094 lt!1108292)) lt!1109250)))

(declare-fun bs!546146 () Bool)

(assert (= bs!546146 d!906923))

(assert (=> bs!546146 m!3569925))

(assert (=> bs!546146 m!3569925))

(declare-fun m!3573381 () Bool)

(assert (=> bs!546146 m!3573381))

(declare-fun m!3573383 () Bool)

(assert (=> bs!546146 m!3573383))

(assert (=> b!3268251 d!906923))

(declare-fun d!906925 () Bool)

(assert (=> d!906925 (= (list!13032 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))) (list!13035 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))))))

(declare-fun bs!546147 () Bool)

(assert (= bs!546147 d!906925))

(declare-fun m!3573385 () Bool)

(assert (=> bs!546147 m!3573385))

(assert (=> b!3268389 d!906925))

(assert (=> b!3268425 d!906753))

(assert (=> b!3268425 d!906699))

(declare-fun b!3270347 () Bool)

(declare-fun e!2036593 () List!36567)

(assert (=> b!3270347 (= e!2036593 (++!8798 (list!13035 (left!28379 (c!551639 (charsOf!3300 separatorToken!241)))) (list!13035 (right!28709 (c!551639 (charsOf!3300 separatorToken!241))))))))

(declare-fun b!3270345 () Bool)

(declare-fun e!2036592 () List!36567)

(assert (=> b!3270345 (= e!2036592 e!2036593)))

(declare-fun c!552245 () Bool)

(assert (=> b!3270345 (= c!552245 ((_ is Leaf!17196) (c!551639 (charsOf!3300 separatorToken!241))))))

(declare-fun d!906927 () Bool)

(declare-fun c!552244 () Bool)

(assert (=> d!906927 (= c!552244 ((_ is Empty!10943) (c!551639 (charsOf!3300 separatorToken!241))))))

(assert (=> d!906927 (= (list!13035 (c!551639 (charsOf!3300 separatorToken!241))) e!2036592)))

(declare-fun b!3270344 () Bool)

(assert (=> b!3270344 (= e!2036592 Nil!36443)))

(declare-fun b!3270346 () Bool)

(assert (=> b!3270346 (= e!2036593 (list!13040 (xs!14075 (c!551639 (charsOf!3300 separatorToken!241)))))))

(assert (= (and d!906927 c!552244) b!3270344))

(assert (= (and d!906927 (not c!552244)) b!3270345))

(assert (= (and b!3270345 c!552245) b!3270346))

(assert (= (and b!3270345 (not c!552245)) b!3270347))

(declare-fun m!3573387 () Bool)

(assert (=> b!3270347 m!3573387))

(declare-fun m!3573389 () Bool)

(assert (=> b!3270347 m!3573389))

(assert (=> b!3270347 m!3573387))

(assert (=> b!3270347 m!3573389))

(declare-fun m!3573391 () Bool)

(assert (=> b!3270347 m!3573391))

(declare-fun m!3573393 () Bool)

(assert (=> b!3270346 m!3573393))

(assert (=> d!905971 d!906927))

(declare-fun b!3270350 () Bool)

(declare-fun res!1329021 () Bool)

(declare-fun e!2036594 () Bool)

(assert (=> b!3270350 (=> (not res!1329021) (not e!2036594))))

(declare-fun lt!1109251 () List!36567)

(assert (=> b!3270350 (= res!1329021 (= (size!27503 lt!1109251) (+ (size!27503 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))) (size!27503 (_2!21093 (get!11625 lt!1108249))))))))

(declare-fun b!3270349 () Bool)

(declare-fun e!2036595 () List!36567)

(assert (=> b!3270349 (= e!2036595 (Cons!36443 (h!41863 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))) (++!8798 (t!247338 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))) (_2!21093 (get!11625 lt!1108249)))))))

(declare-fun b!3270348 () Bool)

(assert (=> b!3270348 (= e!2036595 (_2!21093 (get!11625 lt!1108249)))))

(declare-fun d!906929 () Bool)

(assert (=> d!906929 e!2036594))

(declare-fun res!1329020 () Bool)

(assert (=> d!906929 (=> (not res!1329020) (not e!2036594))))

(assert (=> d!906929 (= res!1329020 (= (content!4944 lt!1109251) ((_ map or) (content!4944 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))) (content!4944 (_2!21093 (get!11625 lt!1108249))))))))

(assert (=> d!906929 (= lt!1109251 e!2036595)))

(declare-fun c!552246 () Bool)

(assert (=> d!906929 (= c!552246 ((_ is Nil!36443) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249))))))))

(assert (=> d!906929 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))) (_2!21093 (get!11625 lt!1108249))) lt!1109251)))

(declare-fun b!3270351 () Bool)

(assert (=> b!3270351 (= e!2036594 (or (not (= (_2!21093 (get!11625 lt!1108249)) Nil!36443)) (= lt!1109251 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108249)))))))))

(assert (= (and d!906929 c!552246) b!3270348))

(assert (= (and d!906929 (not c!552246)) b!3270349))

(assert (= (and d!906929 res!1329020) b!3270350))

(assert (= (and b!3270350 res!1329021) b!3270351))

(declare-fun m!3573395 () Bool)

(assert (=> b!3270350 m!3573395))

(assert (=> b!3270350 m!3569805))

(declare-fun m!3573397 () Bool)

(assert (=> b!3270350 m!3573397))

(assert (=> b!3270350 m!3569821))

(declare-fun m!3573399 () Bool)

(assert (=> b!3270349 m!3573399))

(declare-fun m!3573401 () Bool)

(assert (=> d!906929 m!3573401))

(assert (=> d!906929 m!3569805))

(declare-fun m!3573403 () Bool)

(assert (=> d!906929 m!3573403))

(declare-fun m!3573405 () Bool)

(assert (=> d!906929 m!3573405))

(assert (=> b!3268182 d!906929))

(assert (=> b!3268182 d!906727))

(assert (=> b!3268182 d!906729))

(assert (=> b!3268182 d!906725))

(declare-fun b!3270354 () Bool)

(declare-fun res!1329023 () Bool)

(declare-fun e!2036596 () Bool)

(assert (=> b!3270354 (=> (not res!1329023) (not e!2036596))))

(declare-fun lt!1109252 () List!36567)

(assert (=> b!3270354 (= res!1329023 (= (size!27503 lt!1109252) (+ (size!27503 lt!1108158) (size!27503 lt!1108488))))))

(declare-fun b!3270353 () Bool)

(declare-fun e!2036597 () List!36567)

(assert (=> b!3270353 (= e!2036597 (Cons!36443 (h!41863 lt!1108158) (++!8798 (t!247338 lt!1108158) lt!1108488)))))

(declare-fun b!3270352 () Bool)

(assert (=> b!3270352 (= e!2036597 lt!1108488)))

(declare-fun d!906931 () Bool)

(assert (=> d!906931 e!2036596))

(declare-fun res!1329022 () Bool)

(assert (=> d!906931 (=> (not res!1329022) (not e!2036596))))

(assert (=> d!906931 (= res!1329022 (= (content!4944 lt!1109252) ((_ map or) (content!4944 lt!1108158) (content!4944 lt!1108488))))))

(assert (=> d!906931 (= lt!1109252 e!2036597)))

(declare-fun c!552247 () Bool)

(assert (=> d!906931 (= c!552247 ((_ is Nil!36443) lt!1108158))))

(assert (=> d!906931 (= (++!8798 lt!1108158 lt!1108488) lt!1109252)))

(declare-fun b!3270355 () Bool)

(assert (=> b!3270355 (= e!2036596 (or (not (= lt!1108488 Nil!36443)) (= lt!1109252 lt!1108158)))))

(assert (= (and d!906931 c!552247) b!3270352))

(assert (= (and d!906931 (not c!552247)) b!3270353))

(assert (= (and d!906931 res!1329022) b!3270354))

(assert (= (and b!3270354 res!1329023) b!3270355))

(declare-fun m!3573407 () Bool)

(assert (=> b!3270354 m!3573407))

(assert (=> b!3270354 m!3569527))

(declare-fun m!3573409 () Bool)

(assert (=> b!3270354 m!3573409))

(declare-fun m!3573411 () Bool)

(assert (=> b!3270353 m!3573411))

(declare-fun m!3573413 () Bool)

(assert (=> d!906931 m!3573413))

(assert (=> d!906931 m!3570225))

(declare-fun m!3573415 () Bool)

(assert (=> d!906931 m!3573415))

(assert (=> d!906085 d!906931))

(assert (=> d!906085 d!906055))

(declare-fun d!906933 () Bool)

(declare-fun lt!1109253 () Int)

(assert (=> d!906933 (>= lt!1109253 0)))

(declare-fun e!2036598 () Int)

(assert (=> d!906933 (= lt!1109253 e!2036598)))

(declare-fun c!552248 () Bool)

(assert (=> d!906933 (= c!552248 ((_ is Nil!36443) (_2!21092 lt!1108338)))))

(assert (=> d!906933 (= (size!27503 (_2!21092 lt!1108338)) lt!1109253)))

(declare-fun b!3270356 () Bool)

(assert (=> b!3270356 (= e!2036598 0)))

(declare-fun b!3270357 () Bool)

(assert (=> b!3270357 (= e!2036598 (+ 1 (size!27503 (t!247338 (_2!21092 lt!1108338)))))))

(assert (= (and d!906933 c!552248) b!3270356))

(assert (= (and d!906933 (not c!552248)) b!3270357))

(declare-fun m!3573417 () Bool)

(assert (=> b!3270357 m!3573417))

(assert (=> b!3268457 d!906933))

(declare-fun d!906935 () Bool)

(declare-fun lt!1109254 () Int)

(assert (=> d!906935 (>= lt!1109254 0)))

(declare-fun e!2036599 () Int)

(assert (=> d!906935 (= lt!1109254 e!2036599)))

(declare-fun c!552249 () Bool)

(assert (=> d!906935 (= c!552249 ((_ is Nil!36443) (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))

(assert (=> d!906935 (= (size!27503 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)) lt!1109254)))

(declare-fun b!3270358 () Bool)

(assert (=> b!3270358 (= e!2036599 0)))

(declare-fun b!3270359 () Bool)

(assert (=> b!3270359 (= e!2036599 (+ 1 (size!27503 (t!247338 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))

(assert (= (and d!906935 c!552249) b!3270358))

(assert (= (and d!906935 (not c!552249)) b!3270359))

(declare-fun m!3573419 () Bool)

(assert (=> b!3270359 m!3573419))

(assert (=> b!3268457 d!906935))

(assert (=> d!905851 d!905855))

(assert (=> d!905851 d!905823))

(declare-fun d!906937 () Bool)

(assert (=> d!906937 (not (contains!6567 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108139))))

(assert (=> d!906937 true))

(declare-fun _$73!202 () Unit!51218)

(assert (=> d!906937 (= (choose!19016 thiss!18206 rules!2135 rules!2135 (rule!7766 (h!41864 tokens!494)) (rule!7766 separatorToken!241) lt!1108139) _$73!202)))

(declare-fun bs!546148 () Bool)

(assert (= bs!546148 d!906937))

(assert (=> bs!546148 m!3569481))

(assert (=> bs!546148 m!3569481))

(assert (=> bs!546148 m!3569485))

(assert (=> d!905851 d!906937))

(assert (=> d!905851 d!905879))

(declare-fun d!906939 () Bool)

(declare-fun lt!1109255 () Int)

(assert (=> d!906939 (>= lt!1109255 0)))

(declare-fun e!2036600 () Int)

(assert (=> d!906939 (= lt!1109255 e!2036600)))

(declare-fun c!552251 () Bool)

(assert (=> d!906939 (= c!552251 ((_ is Nil!36443) (_2!21093 (get!11625 lt!1108241))))))

(assert (=> d!906939 (= (size!27503 (_2!21093 (get!11625 lt!1108241))) lt!1109255)))

(declare-fun b!3270360 () Bool)

(assert (=> b!3270360 (= e!2036600 0)))

(declare-fun b!3270361 () Bool)

(assert (=> b!3270361 (= e!2036600 (+ 1 (size!27503 (t!247338 (_2!21093 (get!11625 lt!1108241))))))))

(assert (= (and d!906939 c!552251) b!3270360))

(assert (= (and d!906939 (not c!552251)) b!3270361))

(declare-fun m!3573421 () Bool)

(assert (=> b!3270361 m!3573421))

(assert (=> b!3268169 d!906939))

(assert (=> b!3268169 d!906775))

(declare-fun d!906941 () Bool)

(declare-fun lt!1109256 () Int)

(assert (=> d!906941 (>= lt!1109256 0)))

(declare-fun e!2036601 () Int)

(assert (=> d!906941 (= lt!1109256 e!2036601)))

(declare-fun c!552252 () Bool)

(assert (=> d!906941 (= c!552252 ((_ is Nil!36443) lt!1108146))))

(assert (=> d!906941 (= (size!27503 lt!1108146) lt!1109256)))

(declare-fun b!3270362 () Bool)

(assert (=> b!3270362 (= e!2036601 0)))

(declare-fun b!3270363 () Bool)

(assert (=> b!3270363 (= e!2036601 (+ 1 (size!27503 (t!247338 lt!1108146))))))

(assert (= (and d!906941 c!552252) b!3270362))

(assert (= (and d!906941 (not c!552252)) b!3270363))

(declare-fun m!3573423 () Bool)

(assert (=> b!3270363 m!3573423))

(assert (=> b!3268169 d!906941))

(declare-fun d!906943 () Bool)

(assert (=> d!906943 (= (inv!17 (value!171054 (h!41864 tokens!494))) (= (charsToBigInt!1 (text!39046 (value!171054 (h!41864 tokens!494)))) (value!171046 (value!171054 (h!41864 tokens!494)))))))

(declare-fun bs!546149 () Bool)

(assert (= bs!546149 d!906943))

(declare-fun m!3573425 () Bool)

(assert (=> bs!546149 m!3573425))

(assert (=> b!3268535 d!906943))

(declare-fun d!906945 () Bool)

(declare-fun lt!1109257 () Int)

(assert (=> d!906945 (>= lt!1109257 0)))

(declare-fun e!2036602 () Int)

(assert (=> d!906945 (= lt!1109257 e!2036602)))

(declare-fun c!552253 () Bool)

(assert (=> d!906945 (= c!552253 ((_ is Nil!36444) (_1!21092 lt!1108212)))))

(assert (=> d!906945 (= (size!27506 (_1!21092 lt!1108212)) lt!1109257)))

(declare-fun b!3270364 () Bool)

(assert (=> b!3270364 (= e!2036602 0)))

(declare-fun b!3270365 () Bool)

(assert (=> b!3270365 (= e!2036602 (+ 1 (size!27506 (t!247339 (_1!21092 lt!1108212)))))))

(assert (= (and d!906945 c!552253) b!3270364))

(assert (= (and d!906945 (not c!552253)) b!3270365))

(declare-fun m!3573427 () Bool)

(assert (=> b!3270365 m!3573427))

(assert (=> d!905827 d!906945))

(assert (=> d!905827 d!905853))

(declare-fun d!906947 () Bool)

(assert (=> d!906947 (= (inv!49365 (tag!5824 (h!41865 (t!247340 rules!2135)))) (= (mod (str.len (value!171053 (tag!5824 (h!41865 (t!247340 rules!2135))))) 2) 0))))

(assert (=> b!3268811 d!906947))

(declare-fun d!906949 () Bool)

(declare-fun res!1329024 () Bool)

(declare-fun e!2036603 () Bool)

(assert (=> d!906949 (=> (not res!1329024) (not e!2036603))))

(assert (=> d!906949 (= res!1329024 (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135))))))))

(assert (=> d!906949 (= (inv!49369 (transformation!5284 (h!41865 (t!247340 rules!2135)))) e!2036603)))

(declare-fun b!3270366 () Bool)

(assert (=> b!3270366 (= e!2036603 (equivClasses!2080 (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135))))))))

(assert (= (and d!906949 res!1329024) b!3270366))

(declare-fun m!3573429 () Bool)

(assert (=> d!906949 m!3573429))

(declare-fun m!3573431 () Bool)

(assert (=> b!3270366 m!3573431))

(assert (=> b!3268811 d!906949))

(assert (=> b!3268640 d!905875))

(declare-fun b!3270367 () Bool)

(declare-fun e!2036604 () Bool)

(assert (=> b!3270367 (= e!2036604 (= (head!7113 (list!13032 (charsOf!3300 (h!41864 tokens!494)))) (c!551638 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))))

(declare-fun e!2036606 () Bool)

(declare-fun b!3270368 () Bool)

(assert (=> b!3270368 (= e!2036606 (not (= (head!7113 (list!13032 (charsOf!3300 (h!41864 tokens!494)))) (c!551638 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))))))))))

(declare-fun b!3270369 () Bool)

(declare-fun res!1329026 () Bool)

(assert (=> b!3270369 (=> (not res!1329026) (not e!2036604))))

(assert (=> b!3270369 (= res!1329026 (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (h!41864 tokens!494))))))))

(declare-fun b!3270370 () Bool)

(declare-fun e!2036610 () Bool)

(declare-fun lt!1109258 () Bool)

(declare-fun call!237023 () Bool)

(assert (=> b!3270370 (= e!2036610 (= lt!1109258 call!237023))))

(declare-fun e!2036605 () Bool)

(declare-fun b!3270371 () Bool)

(assert (=> b!3270371 (= e!2036605 (matchR!4665 (derivativeStep!2964 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))) (head!7113 (list!13032 (charsOf!3300 (h!41864 tokens!494))))) (tail!5250 (list!13032 (charsOf!3300 (h!41864 tokens!494))))))))

(declare-fun b!3270372 () Bool)

(declare-fun res!1329027 () Bool)

(assert (=> b!3270372 (=> (not res!1329027) (not e!2036604))))

(assert (=> b!3270372 (= res!1329027 (not call!237023))))

(declare-fun b!3270373 () Bool)

(assert (=> b!3270373 (= e!2036605 (nullable!3411 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))))))))

(declare-fun b!3270374 () Bool)

(declare-fun e!2036607 () Bool)

(assert (=> b!3270374 (= e!2036607 e!2036606)))

(declare-fun res!1329031 () Bool)

(assert (=> b!3270374 (=> res!1329031 e!2036606)))

(assert (=> b!3270374 (= res!1329031 call!237023)))

(declare-fun b!3270376 () Bool)

(declare-fun e!2036608 () Bool)

(assert (=> b!3270376 (= e!2036608 (not lt!1109258))))

(declare-fun bm!237018 () Bool)

(assert (=> bm!237018 (= call!237023 (isEmpty!20562 (list!13032 (charsOf!3300 (h!41864 tokens!494)))))))

(declare-fun b!3270377 () Bool)

(declare-fun res!1329025 () Bool)

(assert (=> b!3270377 (=> res!1329025 e!2036606)))

(assert (=> b!3270377 (= res!1329025 (not (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (h!41864 tokens!494)))))))))

(declare-fun b!3270378 () Bool)

(declare-fun res!1329032 () Bool)

(declare-fun e!2036609 () Bool)

(assert (=> b!3270378 (=> res!1329032 e!2036609)))

(assert (=> b!3270378 (= res!1329032 e!2036604)))

(declare-fun res!1329029 () Bool)

(assert (=> b!3270378 (=> (not res!1329029) (not e!2036604))))

(assert (=> b!3270378 (= res!1329029 lt!1109258)))

(declare-fun d!906951 () Bool)

(assert (=> d!906951 e!2036610))

(declare-fun c!552256 () Bool)

(assert (=> d!906951 (= c!552256 ((_ is EmptyExpr!10043) (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))))))))

(assert (=> d!906951 (= lt!1109258 e!2036605)))

(declare-fun c!552255 () Bool)

(assert (=> d!906951 (= c!552255 (isEmpty!20562 (list!13032 (charsOf!3300 (h!41864 tokens!494)))))))

(assert (=> d!906951 (validRegex!4567 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))

(assert (=> d!906951 (= (matchR!4665 (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))) (list!13032 (charsOf!3300 (h!41864 tokens!494)))) lt!1109258)))

(declare-fun b!3270375 () Bool)

(assert (=> b!3270375 (= e!2036609 e!2036607)))

(declare-fun res!1329030 () Bool)

(assert (=> b!3270375 (=> (not res!1329030) (not e!2036607))))

(assert (=> b!3270375 (= res!1329030 (not lt!1109258))))

(declare-fun b!3270379 () Bool)

(declare-fun res!1329028 () Bool)

(assert (=> b!3270379 (=> res!1329028 e!2036609)))

(assert (=> b!3270379 (= res!1329028 (not ((_ is ElementMatch!10043) (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494)))))))))))

(assert (=> b!3270379 (= e!2036608 e!2036609)))

(declare-fun b!3270380 () Bool)

(assert (=> b!3270380 (= e!2036610 e!2036608)))

(declare-fun c!552254 () Bool)

(assert (=> b!3270380 (= c!552254 ((_ is EmptyLang!10043) (regex!5284 (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))))))))

(assert (= (and d!906951 c!552255) b!3270373))

(assert (= (and d!906951 (not c!552255)) b!3270371))

(assert (= (and d!906951 c!552256) b!3270370))

(assert (= (and d!906951 (not c!552256)) b!3270380))

(assert (= (and b!3270380 c!552254) b!3270376))

(assert (= (and b!3270380 (not c!552254)) b!3270379))

(assert (= (and b!3270379 (not res!1329028)) b!3270378))

(assert (= (and b!3270378 res!1329029) b!3270372))

(assert (= (and b!3270372 res!1329027) b!3270369))

(assert (= (and b!3270369 res!1329026) b!3270367))

(assert (= (and b!3270378 (not res!1329032)) b!3270375))

(assert (= (and b!3270375 res!1329030) b!3270374))

(assert (= (and b!3270374 (not res!1329031)) b!3270377))

(assert (= (and b!3270377 (not res!1329025)) b!3270368))

(assert (= (or b!3270370 b!3270372 b!3270374) bm!237018))

(assert (=> bm!237018 m!3569437))

(declare-fun m!3573433 () Bool)

(assert (=> bm!237018 m!3573433))

(assert (=> b!3270367 m!3569437))

(declare-fun m!3573435 () Bool)

(assert (=> b!3270367 m!3573435))

(assert (=> b!3270368 m!3569437))

(assert (=> b!3270368 m!3573435))

(assert (=> b!3270377 m!3569437))

(declare-fun m!3573437 () Bool)

(assert (=> b!3270377 m!3573437))

(assert (=> b!3270377 m!3573437))

(declare-fun m!3573439 () Bool)

(assert (=> b!3270377 m!3573439))

(assert (=> d!906951 m!3569437))

(assert (=> d!906951 m!3573433))

(declare-fun m!3573441 () Bool)

(assert (=> d!906951 m!3573441))

(assert (=> b!3270369 m!3569437))

(assert (=> b!3270369 m!3573437))

(assert (=> b!3270369 m!3573437))

(assert (=> b!3270369 m!3573439))

(declare-fun m!3573443 () Bool)

(assert (=> b!3270373 m!3573443))

(assert (=> b!3270371 m!3569437))

(assert (=> b!3270371 m!3573435))

(assert (=> b!3270371 m!3573435))

(declare-fun m!3573445 () Bool)

(assert (=> b!3270371 m!3573445))

(assert (=> b!3270371 m!3569437))

(assert (=> b!3270371 m!3573437))

(assert (=> b!3270371 m!3573445))

(assert (=> b!3270371 m!3573437))

(declare-fun m!3573447 () Bool)

(assert (=> b!3270371 m!3573447))

(assert (=> b!3268640 d!906951))

(assert (=> b!3268640 d!906057))

(declare-fun d!906953 () Bool)

(assert (=> d!906953 (= (get!11623 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))) (v!35953 (getRuleFromTag!975 thiss!18206 rules!2135 (tag!5824 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> b!3268640 d!906953))

(assert (=> b!3268640 d!905873))

(assert (=> d!906045 d!906055))

(declare-fun d!906955 () Bool)

(assert (=> d!906955 (= (apply!8348 (transformation!5284 (rule!7766 (h!41864 tokens!494))) (seqFromList!3632 lt!1108158)) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (seqFromList!3632 lt!1108158)))))

(declare-fun b_lambda!90631 () Bool)

(assert (=> (not b_lambda!90631) (not d!906955)))

(declare-fun tb!165851 () Bool)

(declare-fun t!247668 () Bool)

(assert (=> (and b!3267901 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247668) tb!165851))

(declare-fun result!208546 () Bool)

(assert (=> tb!165851 (= result!208546 (inv!21 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (seqFromList!3632 lt!1108158))))))

(declare-fun m!3573449 () Bool)

(assert (=> tb!165851 m!3573449))

(assert (=> d!906955 t!247668))

(declare-fun b_and!221525 () Bool)

(assert (= b_and!221491 (and (=> t!247668 result!208546) b_and!221525)))

(declare-fun t!247670 () Bool)

(declare-fun tb!165853 () Bool)

(assert (=> (and b!3268826 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247670) tb!165853))

(declare-fun result!208548 () Bool)

(assert (= result!208548 result!208546))

(assert (=> d!906955 t!247670))

(declare-fun b_and!221527 () Bool)

(assert (= b_and!221485 (and (=> t!247670 result!208548) b_and!221527)))

(declare-fun tb!165855 () Bool)

(declare-fun t!247672 () Bool)

(assert (=> (and b!3267911 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247672) tb!165855))

(declare-fun result!208550 () Bool)

(assert (= result!208550 result!208546))

(assert (=> d!906955 t!247672))

(declare-fun b_and!221529 () Bool)

(assert (= b_and!221487 (and (=> t!247672 result!208550) b_and!221529)))

(declare-fun t!247674 () Bool)

(declare-fun tb!165857 () Bool)

(assert (=> (and b!3267900 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247674) tb!165857))

(declare-fun result!208552 () Bool)

(assert (= result!208552 result!208546))

(assert (=> d!906955 t!247674))

(declare-fun b_and!221531 () Bool)

(assert (= b_and!221493 (and (=> t!247674 result!208552) b_and!221531)))

(declare-fun t!247676 () Bool)

(declare-fun tb!165859 () Bool)

(assert (=> (and b!3268812 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247676) tb!165859))

(declare-fun result!208554 () Bool)

(assert (= result!208554 result!208546))

(assert (=> d!906955 t!247676))

(declare-fun b_and!221533 () Bool)

(assert (= b_and!221489 (and (=> t!247676 result!208554) b_and!221533)))

(assert (=> d!906955 m!3569459))

(declare-fun m!3573451 () Bool)

(assert (=> d!906955 m!3573451))

(assert (=> d!906045 d!906955))

(assert (=> d!906045 d!906069))

(assert (=> d!906045 d!905885))

(declare-fun d!906957 () Bool)

(assert (=> d!906957 (= (maxPrefixOneRule!1638 thiss!18206 (rule!7766 (h!41864 tokens!494)) lt!1108158) (Some!7256 (tuple2!35919 (Token!9935 (apply!8348 (transformation!5284 (rule!7766 (h!41864 tokens!494))) (seqFromList!3632 lt!1108158)) (rule!7766 (h!41864 tokens!494)) (size!27503 lt!1108158) lt!1108158) Nil!36443)))))

(assert (=> d!906957 true))

(declare-fun _$59!421 () Unit!51218)

(assert (=> d!906957 (= (choose!19022 thiss!18206 rules!2135 lt!1108158 lt!1108158 Nil!36443 (rule!7766 (h!41864 tokens!494))) _$59!421)))

(declare-fun bs!546150 () Bool)

(assert (= bs!546150 d!906957))

(assert (=> bs!546150 m!3569523))

(assert (=> bs!546150 m!3569459))

(assert (=> bs!546150 m!3569459))

(assert (=> bs!546150 m!3570589))

(assert (=> bs!546150 m!3569527))

(assert (=> d!906045 d!906957))

(assert (=> d!906045 d!905937))

(declare-fun d!906959 () Bool)

(assert (=> d!906959 (= (get!11623 lt!1108461) (v!35953 lt!1108461))))

(assert (=> b!3268733 d!906959))

(declare-fun b!3270381 () Bool)

(declare-fun e!2036612 () Bool)

(assert (=> b!3270381 (= e!2036612 (inv!15 (value!171054 (h!41864 (t!247339 tokens!494)))))))

(declare-fun d!906961 () Bool)

(declare-fun c!552258 () Bool)

(assert (=> d!906961 (= c!552258 ((_ is IntegerValue!16542) (value!171054 (h!41864 (t!247339 tokens!494)))))))

(declare-fun e!2036613 () Bool)

(assert (=> d!906961 (= (inv!21 (value!171054 (h!41864 (t!247339 tokens!494)))) e!2036613)))

(declare-fun b!3270382 () Bool)

(assert (=> b!3270382 (= e!2036613 (inv!16 (value!171054 (h!41864 (t!247339 tokens!494)))))))

(declare-fun b!3270383 () Bool)

(declare-fun res!1329033 () Bool)

(assert (=> b!3270383 (=> res!1329033 e!2036612)))

(assert (=> b!3270383 (= res!1329033 (not ((_ is IntegerValue!16544) (value!171054 (h!41864 (t!247339 tokens!494))))))))

(declare-fun e!2036614 () Bool)

(assert (=> b!3270383 (= e!2036614 e!2036612)))

(declare-fun b!3270384 () Bool)

(assert (=> b!3270384 (= e!2036613 e!2036614)))

(declare-fun c!552257 () Bool)

(assert (=> b!3270384 (= c!552257 ((_ is IntegerValue!16543) (value!171054 (h!41864 (t!247339 tokens!494)))))))

(declare-fun b!3270385 () Bool)

(assert (=> b!3270385 (= e!2036614 (inv!17 (value!171054 (h!41864 (t!247339 tokens!494)))))))

(assert (= (and d!906961 c!552258) b!3270382))

(assert (= (and d!906961 (not c!552258)) b!3270384))

(assert (= (and b!3270384 c!552257) b!3270385))

(assert (= (and b!3270384 (not c!552257)) b!3270383))

(assert (= (and b!3270383 (not res!1329033)) b!3270381))

(declare-fun m!3573453 () Bool)

(assert (=> b!3270381 m!3573453))

(declare-fun m!3573455 () Bool)

(assert (=> b!3270382 m!3573455))

(declare-fun m!3573457 () Bool)

(assert (=> b!3270385 m!3573457))

(assert (=> b!3268824 d!906961))

(declare-fun d!906963 () Bool)

(assert (=> d!906963 (= (inv!15 (value!171054 (h!41864 tokens!494))) (= (charsToBigInt!0 (text!39047 (value!171054 (h!41864 tokens!494))) 0) (value!171049 (value!171054 (h!41864 tokens!494)))))))

(declare-fun bs!546151 () Bool)

(assert (= bs!546151 d!906963))

(declare-fun m!3573459 () Bool)

(assert (=> bs!546151 m!3573459))

(assert (=> b!3268531 d!906963))

(declare-fun d!906965 () Bool)

(assert (=> d!906965 (dynLambda!14876 lambda!118615 (h!41864 tokens!494))))

(assert (=> d!906965 true))

(declare-fun _$7!1137 () Unit!51218)

(assert (=> d!906965 (= (choose!19012 tokens!494 lambda!118615 (h!41864 tokens!494)) _$7!1137)))

(declare-fun b_lambda!90633 () Bool)

(assert (=> (not b_lambda!90633) (not d!906965)))

(declare-fun bs!546152 () Bool)

(assert (= bs!546152 d!906965))

(assert (=> bs!546152 m!3569661))

(assert (=> d!905817 d!906965))

(assert (=> d!905817 d!905999))

(assert (=> b!3268431 d!906067))

(declare-fun d!906967 () Bool)

(assert (=> d!906967 (= (isEmpty!20566 lt!1108241) (not ((_ is Some!7256) lt!1108241)))))

(assert (=> d!905837 d!906967))

(declare-fun b!3270397 () Bool)

(declare-fun e!2036622 () Bool)

(assert (=> b!3270397 (= e!2036622 (>= (size!27503 lt!1108146) (size!27503 lt!1108146)))))

(declare-fun b!3270394 () Bool)

(declare-fun e!2036623 () Bool)

(declare-fun e!2036621 () Bool)

(assert (=> b!3270394 (= e!2036623 e!2036621)))

(declare-fun res!1329045 () Bool)

(assert (=> b!3270394 (=> (not res!1329045) (not e!2036621))))

(assert (=> b!3270394 (= res!1329045 (not ((_ is Nil!36443) lt!1108146)))))

(declare-fun b!3270396 () Bool)

(assert (=> b!3270396 (= e!2036621 (isPrefix!2799 (tail!5250 lt!1108146) (tail!5250 lt!1108146)))))

(declare-fun b!3270395 () Bool)

(declare-fun res!1329044 () Bool)

(assert (=> b!3270395 (=> (not res!1329044) (not e!2036621))))

(assert (=> b!3270395 (= res!1329044 (= (head!7113 lt!1108146) (head!7113 lt!1108146)))))

(declare-fun d!906969 () Bool)

(assert (=> d!906969 e!2036622))

(declare-fun res!1329042 () Bool)

(assert (=> d!906969 (=> res!1329042 e!2036622)))

(declare-fun lt!1109261 () Bool)

(assert (=> d!906969 (= res!1329042 (not lt!1109261))))

(assert (=> d!906969 (= lt!1109261 e!2036623)))

(declare-fun res!1329043 () Bool)

(assert (=> d!906969 (=> res!1329043 e!2036623)))

(assert (=> d!906969 (= res!1329043 ((_ is Nil!36443) lt!1108146))))

(assert (=> d!906969 (= (isPrefix!2799 lt!1108146 lt!1108146) lt!1109261)))

(assert (= (and d!906969 (not res!1329043)) b!3270394))

(assert (= (and b!3270394 res!1329045) b!3270395))

(assert (= (and b!3270395 res!1329044) b!3270396))

(assert (= (and d!906969 (not res!1329042)) b!3270397))

(assert (=> b!3270397 m!3569789))

(assert (=> b!3270397 m!3569789))

(declare-fun m!3573461 () Bool)

(assert (=> b!3270396 m!3573461))

(assert (=> b!3270396 m!3573461))

(assert (=> b!3270396 m!3573461))

(assert (=> b!3270396 m!3573461))

(declare-fun m!3573463 () Bool)

(assert (=> b!3270396 m!3573463))

(declare-fun m!3573465 () Bool)

(assert (=> b!3270395 m!3573465))

(assert (=> b!3270395 m!3573465))

(assert (=> d!905837 d!906969))

(declare-fun d!906971 () Bool)

(assert (=> d!906971 (isPrefix!2799 lt!1108146 lt!1108146)))

(declare-fun lt!1109264 () Unit!51218)

(declare-fun choose!19034 (List!36567 List!36567) Unit!51218)

(assert (=> d!906971 (= lt!1109264 (choose!19034 lt!1108146 lt!1108146))))

(assert (=> d!906971 (= (lemmaIsPrefixRefl!1758 lt!1108146 lt!1108146) lt!1109264)))

(declare-fun bs!546153 () Bool)

(assert (= bs!546153 d!906971))

(assert (=> bs!546153 m!3569775))

(declare-fun m!3573467 () Bool)

(assert (=> bs!546153 m!3573467))

(assert (=> d!905837 d!906971))

(declare-fun bs!546154 () Bool)

(declare-fun d!906973 () Bool)

(assert (= bs!546154 (and d!906973 d!906639)))

(declare-fun lambda!118660 () Int)

(assert (=> bs!546154 (= lambda!118660 lambda!118649)))

(assert (=> d!906973 true))

(declare-fun lt!1109267 () Bool)

(assert (=> d!906973 (= lt!1109267 (forall!7526 rules!2135 lambda!118660))))

(declare-fun e!2036629 () Bool)

(assert (=> d!906973 (= lt!1109267 e!2036629)))

(declare-fun res!1329051 () Bool)

(assert (=> d!906973 (=> res!1329051 e!2036629)))

(assert (=> d!906973 (= res!1329051 (not ((_ is Cons!36445) rules!2135)))))

(assert (=> d!906973 (= (rulesValidInductive!1798 thiss!18206 rules!2135) lt!1109267)))

(declare-fun b!3270402 () Bool)

(declare-fun e!2036628 () Bool)

(assert (=> b!3270402 (= e!2036629 e!2036628)))

(declare-fun res!1329050 () Bool)

(assert (=> b!3270402 (=> (not res!1329050) (not e!2036628))))

(assert (=> b!3270402 (= res!1329050 (ruleValid!1666 thiss!18206 (h!41865 rules!2135)))))

(declare-fun b!3270403 () Bool)

(assert (=> b!3270403 (= e!2036628 (rulesValidInductive!1798 thiss!18206 (t!247340 rules!2135)))))

(assert (= (and d!906973 (not res!1329051)) b!3270402))

(assert (= (and b!3270402 res!1329050) b!3270403))

(declare-fun m!3573469 () Bool)

(assert (=> d!906973 m!3573469))

(assert (=> b!3270402 m!3572181))

(assert (=> b!3270403 m!3573103))

(assert (=> d!905837 d!906973))

(declare-fun d!906975 () Bool)

(assert (=> d!906975 (= (isEmpty!20561 (_1!21092 lt!1108212)) ((_ is Nil!36444) (_1!21092 lt!1108212)))))

(assert (=> b!3268090 d!906975))

(declare-fun d!906977 () Bool)

(declare-fun res!1329052 () Bool)

(declare-fun e!2036630 () Bool)

(assert (=> d!906977 (=> res!1329052 e!2036630)))

(assert (=> d!906977 (= res!1329052 (not ((_ is Cons!36445) (t!247340 rules!2135))))))

(assert (=> d!906977 (= (sepAndNonSepRulesDisjointChars!1478 rules!2135 (t!247340 rules!2135)) e!2036630)))

(declare-fun b!3270404 () Bool)

(declare-fun e!2036631 () Bool)

(assert (=> b!3270404 (= e!2036630 e!2036631)))

(declare-fun res!1329053 () Bool)

(assert (=> b!3270404 (=> (not res!1329053) (not e!2036631))))

(assert (=> b!3270404 (= res!1329053 (ruleDisjointCharsFromAllFromOtherType!617 (h!41865 (t!247340 rules!2135)) rules!2135))))

(declare-fun b!3270405 () Bool)

(assert (=> b!3270405 (= e!2036631 (sepAndNonSepRulesDisjointChars!1478 rules!2135 (t!247340 (t!247340 rules!2135))))))

(assert (= (and d!906977 (not res!1329052)) b!3270404))

(assert (= (and b!3270404 res!1329053) b!3270405))

(declare-fun m!3573471 () Bool)

(assert (=> b!3270404 m!3573471))

(declare-fun m!3573473 () Bool)

(assert (=> b!3270405 m!3573473))

(assert (=> b!3268233 d!906977))

(declare-fun d!906979 () Bool)

(assert (=> d!906979 (= (list!13032 lt!1108340) (list!13035 (c!551639 lt!1108340)))))

(declare-fun bs!546155 () Bool)

(assert (= bs!546155 d!906979))

(declare-fun m!3573475 () Bool)

(assert (=> bs!546155 m!3573475))

(assert (=> d!905969 d!906979))

(declare-fun bs!546156 () Bool)

(declare-fun d!906981 () Bool)

(assert (= bs!546156 (and d!906981 d!906779)))

(declare-fun lambda!118661 () Int)

(assert (=> bs!546156 (= (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))) (= lambda!118661 lambda!118653))))

(assert (=> d!906981 true))

(assert (=> d!906981 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (dynLambda!14888 order!18867 lambda!118661))))

(assert (=> d!906981 (= (equivClasses!2080 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (Forall2!882 lambda!118661))))

(declare-fun bs!546157 () Bool)

(assert (= bs!546157 d!906981))

(declare-fun m!3573477 () Bool)

(assert (=> bs!546157 m!3573477))

(assert (=> b!3268466 d!906981))

(declare-fun d!906983 () Bool)

(assert (=> d!906983 (= (list!13033 lt!1108374) (list!13036 (c!551640 lt!1108374)))))

(declare-fun bs!546158 () Bool)

(assert (= bs!546158 d!906983))

(declare-fun m!3573479 () Bool)

(assert (=> bs!546158 m!3573479))

(assert (=> d!905989 d!906983))

(declare-fun d!906985 () Bool)

(declare-fun e!2036634 () Bool)

(assert (=> d!906985 e!2036634))

(declare-fun res!1329056 () Bool)

(assert (=> d!906985 (=> (not res!1329056) (not e!2036634))))

(declare-fun lt!1109270 () BalanceConc!21502)

(assert (=> d!906985 (= res!1329056 (= (list!13033 lt!1109270) (Cons!36444 (h!41864 tokens!494) Nil!36444)))))

(declare-fun choose!19035 (Token!9934) BalanceConc!21502)

(assert (=> d!906985 (= lt!1109270 (choose!19035 (h!41864 tokens!494)))))

(assert (=> d!906985 (= (singleton!1020 (h!41864 tokens!494)) lt!1109270)))

(declare-fun b!3270408 () Bool)

(assert (=> b!3270408 (= e!2036634 (isBalanced!3261 (c!551640 lt!1109270)))))

(assert (= (and d!906985 res!1329056) b!3270408))

(declare-fun m!3573481 () Bool)

(assert (=> d!906985 m!3573481))

(declare-fun m!3573483 () Bool)

(assert (=> d!906985 m!3573483))

(declare-fun m!3573485 () Bool)

(assert (=> b!3270408 m!3573485))

(assert (=> d!905989 d!906985))

(declare-fun d!906987 () Bool)

(assert (=> d!906987 (= (list!13033 (_1!21094 lt!1108326)) (list!13036 (c!551640 (_1!21094 lt!1108326))))))

(declare-fun bs!546159 () Bool)

(assert (= bs!546159 d!906987))

(declare-fun m!3573487 () Bool)

(assert (=> bs!546159 m!3573487))

(assert (=> b!3268410 d!906987))

(assert (=> b!3268410 d!906871))

(assert (=> b!3268410 d!906873))

(declare-fun d!906989 () Bool)

(assert (=> d!906989 (= (isEmpty!20562 (tail!5250 lt!1108158)) ((_ is Nil!36443) (tail!5250 lt!1108158)))))

(assert (=> b!3268002 d!906989))

(assert (=> b!3268002 d!906551))

(declare-fun d!906991 () Bool)

(declare-fun lt!1109271 () Int)

(assert (=> d!906991 (>= lt!1109271 0)))

(declare-fun e!2036635 () Int)

(assert (=> d!906991 (= lt!1109271 e!2036635)))

(declare-fun c!552259 () Bool)

(assert (=> d!906991 (= c!552259 ((_ is Nil!36444) (_1!21092 lt!1108334)))))

(assert (=> d!906991 (= (size!27506 (_1!21092 lt!1108334)) lt!1109271)))

(declare-fun b!3270409 () Bool)

(assert (=> b!3270409 (= e!2036635 0)))

(declare-fun b!3270410 () Bool)

(assert (=> b!3270410 (= e!2036635 (+ 1 (size!27506 (t!247339 (_1!21092 lt!1108334)))))))

(assert (= (and d!906991 c!552259) b!3270409))

(assert (= (and d!906991 (not c!552259)) b!3270410))

(declare-fun m!3573489 () Bool)

(assert (=> b!3270410 m!3573489))

(assert (=> d!905951 d!906991))

(declare-fun b!3270411 () Bool)

(declare-fun e!2036636 () Bool)

(declare-fun lt!1109272 () Option!7257)

(assert (=> b!3270411 (= e!2036636 (contains!6570 rules!2135 (rule!7766 (_1!21093 (get!11625 lt!1109272)))))))

(declare-fun b!3270412 () Bool)

(declare-fun res!1329060 () Bool)

(assert (=> b!3270412 (=> (not res!1329060) (not e!2036636))))

(assert (=> b!3270412 (= res!1329060 (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1109272)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109272))))))))

(declare-fun b!3270413 () Bool)

(declare-fun res!1329058 () Bool)

(assert (=> b!3270413 (=> (not res!1329058) (not e!2036636))))

(assert (=> b!3270413 (= res!1329058 (= (value!171054 (_1!21093 (get!11625 lt!1109272))) (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1109272)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1109272)))))))))

(declare-fun b!3270414 () Bool)

(declare-fun res!1329062 () Bool)

(assert (=> b!3270414 (=> (not res!1329062) (not e!2036636))))

(assert (=> b!3270414 (= res!1329062 (< (size!27503 (_2!21093 (get!11625 lt!1109272))) (size!27503 (_2!21093 (v!35952 lt!1108148)))))))

(declare-fun b!3270415 () Bool)

(declare-fun e!2036638 () Option!7257)

(declare-fun lt!1109273 () Option!7257)

(declare-fun lt!1109275 () Option!7257)

(assert (=> b!3270415 (= e!2036638 (ite (and ((_ is None!7256) lt!1109273) ((_ is None!7256) lt!1109275)) None!7256 (ite ((_ is None!7256) lt!1109275) lt!1109273 (ite ((_ is None!7256) lt!1109273) lt!1109275 (ite (>= (size!27502 (_1!21093 (v!35952 lt!1109273))) (size!27502 (_1!21093 (v!35952 lt!1109275)))) lt!1109273 lt!1109275)))))))

(declare-fun call!237024 () Option!7257)

(assert (=> b!3270415 (= lt!1109273 call!237024)))

(assert (=> b!3270415 (= lt!1109275 (maxPrefix!2501 thiss!18206 (t!247340 rules!2135) (_2!21093 (v!35952 lt!1108148))))))

(declare-fun bm!237019 () Bool)

(assert (=> bm!237019 (= call!237024 (maxPrefixOneRule!1638 thiss!18206 (h!41865 rules!2135) (_2!21093 (v!35952 lt!1108148))))))

(declare-fun b!3270416 () Bool)

(declare-fun res!1329063 () Bool)

(assert (=> b!3270416 (=> (not res!1329063) (not e!2036636))))

(assert (=> b!3270416 (= res!1329063 (= (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109272)))) (originalCharacters!5998 (_1!21093 (get!11625 lt!1109272)))))))

(declare-fun b!3270417 () Bool)

(assert (=> b!3270417 (= e!2036638 call!237024)))

(declare-fun b!3270418 () Bool)

(declare-fun res!1329059 () Bool)

(assert (=> b!3270418 (=> (not res!1329059) (not e!2036636))))

(assert (=> b!3270418 (= res!1329059 (= (++!8798 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1109272)))) (_2!21093 (get!11625 lt!1109272))) (_2!21093 (v!35952 lt!1108148))))))

(declare-fun b!3270419 () Bool)

(declare-fun e!2036637 () Bool)

(assert (=> b!3270419 (= e!2036637 e!2036636)))

(declare-fun res!1329061 () Bool)

(assert (=> b!3270419 (=> (not res!1329061) (not e!2036636))))

(assert (=> b!3270419 (= res!1329061 (isDefined!5625 lt!1109272))))

(declare-fun d!906993 () Bool)

(assert (=> d!906993 e!2036637))

(declare-fun res!1329057 () Bool)

(assert (=> d!906993 (=> res!1329057 e!2036637)))

(assert (=> d!906993 (= res!1329057 (isEmpty!20566 lt!1109272))))

(assert (=> d!906993 (= lt!1109272 e!2036638)))

(declare-fun c!552260 () Bool)

(assert (=> d!906993 (= c!552260 (and ((_ is Cons!36445) rules!2135) ((_ is Nil!36445) (t!247340 rules!2135))))))

(declare-fun lt!1109276 () Unit!51218)

(declare-fun lt!1109274 () Unit!51218)

(assert (=> d!906993 (= lt!1109276 lt!1109274)))

(assert (=> d!906993 (isPrefix!2799 (_2!21093 (v!35952 lt!1108148)) (_2!21093 (v!35952 lt!1108148)))))

(assert (=> d!906993 (= lt!1109274 (lemmaIsPrefixRefl!1758 (_2!21093 (v!35952 lt!1108148)) (_2!21093 (v!35952 lt!1108148))))))

(assert (=> d!906993 (rulesValidInductive!1798 thiss!18206 rules!2135)))

(assert (=> d!906993 (= (maxPrefix!2501 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108148))) lt!1109272)))

(assert (= (and d!906993 c!552260) b!3270417))

(assert (= (and d!906993 (not c!552260)) b!3270415))

(assert (= (or b!3270417 b!3270415) bm!237019))

(assert (= (and d!906993 (not res!1329057)) b!3270419))

(assert (= (and b!3270419 res!1329061) b!3270416))

(assert (= (and b!3270416 res!1329063) b!3270414))

(assert (= (and b!3270414 res!1329062) b!3270418))

(assert (= (and b!3270418 res!1329059) b!3270413))

(assert (= (and b!3270413 res!1329058) b!3270412))

(assert (= (and b!3270412 res!1329060) b!3270411))

(declare-fun m!3573491 () Bool)

(assert (=> b!3270415 m!3573491))

(declare-fun m!3573493 () Bool)

(assert (=> b!3270411 m!3573493))

(declare-fun m!3573495 () Bool)

(assert (=> b!3270411 m!3573495))

(declare-fun m!3573497 () Bool)

(assert (=> b!3270419 m!3573497))

(assert (=> b!3270418 m!3573493))

(declare-fun m!3573499 () Bool)

(assert (=> b!3270418 m!3573499))

(assert (=> b!3270418 m!3573499))

(declare-fun m!3573501 () Bool)

(assert (=> b!3270418 m!3573501))

(assert (=> b!3270418 m!3573501))

(declare-fun m!3573503 () Bool)

(assert (=> b!3270418 m!3573503))

(declare-fun m!3573505 () Bool)

(assert (=> d!906993 m!3573505))

(declare-fun m!3573507 () Bool)

(assert (=> d!906993 m!3573507))

(declare-fun m!3573509 () Bool)

(assert (=> d!906993 m!3573509))

(assert (=> d!906993 m!3569779))

(assert (=> b!3270413 m!3573493))

(declare-fun m!3573511 () Bool)

(assert (=> b!3270413 m!3573511))

(assert (=> b!3270413 m!3573511))

(declare-fun m!3573513 () Bool)

(assert (=> b!3270413 m!3573513))

(declare-fun m!3573515 () Bool)

(assert (=> bm!237019 m!3573515))

(assert (=> b!3270414 m!3573493))

(declare-fun m!3573517 () Bool)

(assert (=> b!3270414 m!3573517))

(assert (=> b!3270414 m!3570157))

(assert (=> b!3270412 m!3573493))

(assert (=> b!3270412 m!3573499))

(assert (=> b!3270412 m!3573499))

(assert (=> b!3270412 m!3573501))

(assert (=> b!3270412 m!3573501))

(declare-fun m!3573519 () Bool)

(assert (=> b!3270412 m!3573519))

(assert (=> b!3270416 m!3573493))

(assert (=> b!3270416 m!3573499))

(assert (=> b!3270416 m!3573499))

(assert (=> b!3270416 m!3573501))

(assert (=> d!905951 d!906993))

(declare-fun d!906995 () Bool)

(declare-fun c!552263 () Bool)

(assert (=> d!906995 (= c!552263 ((_ is Node!10943) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))))))

(declare-fun e!2036643 () Bool)

(assert (=> d!906995 (= (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))) e!2036643)))

(declare-fun b!3270426 () Bool)

(declare-fun inv!49377 (Conc!10943) Bool)

(assert (=> b!3270426 (= e!2036643 (inv!49377 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))))))

(declare-fun b!3270427 () Bool)

(declare-fun e!2036644 () Bool)

(assert (=> b!3270427 (= e!2036643 e!2036644)))

(declare-fun res!1329066 () Bool)

(assert (=> b!3270427 (= res!1329066 (not ((_ is Leaf!17196) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))))))))

(assert (=> b!3270427 (=> res!1329066 e!2036644)))

(declare-fun b!3270428 () Bool)

(declare-fun inv!49378 (Conc!10943) Bool)

(assert (=> b!3270428 (= e!2036644 (inv!49378 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))))))

(assert (= (and d!906995 c!552263) b!3270426))

(assert (= (and d!906995 (not c!552263)) b!3270427))

(assert (= (and b!3270427 (not res!1329066)) b!3270428))

(declare-fun m!3573521 () Bool)

(assert (=> b!3270426 m!3573521))

(declare-fun m!3573523 () Bool)

(assert (=> b!3270428 m!3573523))

(assert (=> b!3268391 d!906995))

(assert (=> d!906001 d!905993))

(declare-fun d!906997 () Bool)

(assert (=> d!906997 (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 (h!41864 tokens!494))))

(assert (=> d!906997 true))

(declare-fun _$77!842 () Unit!51218)

(assert (=> d!906997 (= (choose!19020 thiss!18206 rules!2135 tokens!494 (h!41864 tokens!494)) _$77!842)))

(declare-fun bs!546160 () Bool)

(assert (= bs!546160 d!906997))

(assert (=> bs!546160 m!3569517))

(assert (=> d!906001 d!906997))

(assert (=> d!906001 d!905937))

(declare-fun d!906999 () Bool)

(assert (=> d!906999 (= (isEmpty!20561 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144)))) ((_ is Nil!36444) (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144)))))))

(assert (=> d!905881 d!906999))

(declare-fun d!907001 () Bool)

(assert (=> d!907001 (= (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144))) (list!13036 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144)))))))

(declare-fun bs!546161 () Bool)

(assert (= bs!546161 d!907001))

(declare-fun m!3573525 () Bool)

(assert (=> bs!546161 m!3573525))

(assert (=> d!905881 d!907001))

(declare-fun lt!1109279 () Bool)

(declare-fun d!907003 () Bool)

(assert (=> d!907003 (= lt!1109279 (isEmpty!20561 (list!13036 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144))))))))

(assert (=> d!907003 (= lt!1109279 (= (size!27512 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144)))) 0))))

(assert (=> d!907003 (= (isEmpty!20569 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 lt!1108144)))) lt!1109279)))

(declare-fun bs!546162 () Bool)

(assert (= bs!546162 d!907003))

(assert (=> bs!546162 m!3573525))

(assert (=> bs!546162 m!3573525))

(declare-fun m!3573527 () Bool)

(assert (=> bs!546162 m!3573527))

(declare-fun m!3573529 () Bool)

(assert (=> bs!546162 m!3573529))

(assert (=> d!905881 d!907003))

(assert (=> b!3268417 d!906753))

(assert (=> b!3268417 d!906699))

(declare-fun d!907005 () Bool)

(declare-fun lt!1109280 () Bool)

(assert (=> d!907005 (= lt!1109280 (isEmpty!20561 (list!13033 (_1!21094 lt!1108326))))))

(assert (=> d!907005 (= lt!1109280 (isEmpty!20569 (c!551640 (_1!21094 lt!1108326))))))

(assert (=> d!907005 (= (isEmpty!20563 (_1!21094 lt!1108326)) lt!1109280)))

(declare-fun bs!546163 () Bool)

(assert (= bs!546163 d!907005))

(assert (=> bs!546163 m!3570107))

(assert (=> bs!546163 m!3570107))

(declare-fun m!3573531 () Bool)

(assert (=> bs!546163 m!3573531))

(declare-fun m!3573533 () Bool)

(assert (=> bs!546163 m!3573533))

(assert (=> b!3268414 d!907005))

(declare-fun d!907007 () Bool)

(assert (=> d!907007 (= (isEmpty!20571 lt!1108461) (not ((_ is Some!7257) lt!1108461)))))

(assert (=> d!906057 d!907007))

(assert (=> d!906057 d!905879))

(assert (=> d!906083 d!906071))

(assert (=> d!906083 d!906085))

(declare-fun d!907009 () Bool)

(assert (=> d!907009 (isEmpty!20562 (getSuffix!1408 lt!1108158 lt!1108158))))

(assert (=> d!907009 true))

(declare-fun _$66!370 () Unit!51218)

(assert (=> d!907009 (= (choose!19024 lt!1108158) _$66!370)))

(declare-fun bs!546164 () Bool)

(assert (= bs!546164 d!907009))

(assert (=> bs!546164 m!3569553))

(assert (=> bs!546164 m!3569553))

(assert (=> bs!546164 m!3569555))

(assert (=> d!906083 d!907009))

(declare-fun d!907011 () Bool)

(declare-fun c!552264 () Bool)

(assert (=> d!907011 (= c!552264 ((_ is Nil!36443) (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(declare-fun e!2036645 () (InoxSet C!20272))

(assert (=> d!907011 (= (content!4944 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))) e!2036645)))

(declare-fun b!3270429 () Bool)

(assert (=> b!3270429 (= e!2036645 ((as const (Array C!20272 Bool)) false))))

(declare-fun b!3270430 () Bool)

(assert (=> b!3270430 (= e!2036645 ((_ map or) (store ((as const (Array C!20272 Bool)) false) (h!41863 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))) true) (content!4944 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))))

(assert (= (and d!907011 c!552264) b!3270429))

(assert (= (and d!907011 (not c!552264)) b!3270430))

(declare-fun m!3573535 () Bool)

(assert (=> b!3270430 m!3573535))

(declare-fun m!3573537 () Bool)

(assert (=> b!3270430 m!3573537))

(assert (=> d!905855 d!907011))

(declare-fun b!3270433 () Bool)

(declare-fun res!1329068 () Bool)

(declare-fun e!2036646 () Bool)

(assert (=> b!3270433 (=> (not res!1329068) (not e!2036646))))

(declare-fun lt!1109281 () List!36567)

(assert (=> b!3270433 (= res!1329068 (= (size!27503 lt!1109281) (+ (size!27503 (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (size!27503 (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))))))

(declare-fun b!3270432 () Bool)

(declare-fun e!2036647 () List!36567)

(assert (=> b!3270432 (= e!2036647 (Cons!36443 (h!41863 (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (++!8798 (t!247338 (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444))))))))

(declare-fun b!3270431 () Bool)

(assert (=> b!3270431 (= e!2036647 (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444))))))

(declare-fun d!907013 () Bool)

(assert (=> d!907013 e!2036646))

(declare-fun res!1329067 () Bool)

(assert (=> d!907013 (=> (not res!1329067) (not e!2036646))))

(assert (=> d!907013 (= res!1329067 (= (content!4944 lt!1109281) ((_ map or) (content!4944 (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (content!4944 (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))))))

(assert (=> d!907013 (= lt!1109281 e!2036647)))

(declare-fun c!552265 () Bool)

(assert (=> d!907013 (= c!552265 ((_ is Nil!36443) (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))))))

(assert (=> d!907013 (= (++!8798 (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))) (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444)))) lt!1109281)))

(declare-fun b!3270434 () Bool)

(assert (=> b!3270434 (= e!2036646 (or (not (= (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444))) Nil!36443)) (= lt!1109281 (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))))))

(assert (= (and d!907013 c!552265) b!3270431))

(assert (= (and d!907013 (not c!552265)) b!3270432))

(assert (= (and d!907013 res!1329067) b!3270433))

(assert (= (and b!3270433 res!1329068) b!3270434))

(declare-fun m!3573539 () Bool)

(assert (=> b!3270433 m!3573539))

(assert (=> b!3270433 m!3570313))

(declare-fun m!3573541 () Bool)

(assert (=> b!3270433 m!3573541))

(assert (=> b!3270433 m!3570315))

(declare-fun m!3573543 () Bool)

(assert (=> b!3270433 m!3573543))

(assert (=> b!3270432 m!3570315))

(declare-fun m!3573545 () Bool)

(assert (=> b!3270432 m!3573545))

(declare-fun m!3573547 () Bool)

(assert (=> d!907013 m!3573547))

(assert (=> d!907013 m!3570313))

(declare-fun m!3573549 () Bool)

(assert (=> d!907013 m!3573549))

(assert (=> d!907013 m!3570315))

(declare-fun m!3573551 () Bool)

(assert (=> d!907013 m!3573551))

(assert (=> b!3268516 d!907013))

(declare-fun d!907015 () Bool)

(assert (=> d!907015 (= (list!13032 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))) (list!13035 (c!551639 (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))))))

(declare-fun bs!546165 () Bool)

(assert (= bs!546165 d!907015))

(declare-fun m!3573553 () Bool)

(assert (=> bs!546165 m!3573553))

(assert (=> b!3268516 d!907015))

(declare-fun d!907017 () Bool)

(declare-fun lt!1109282 () BalanceConc!21500)

(assert (=> d!907017 (= (list!13032 lt!1109282) (originalCharacters!5998 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))))

(assert (=> d!907017 (= lt!1109282 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (value!171054 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))))

(assert (=> d!907017 (= (charsOf!3300 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))) lt!1109282)))

(declare-fun b_lambda!90635 () Bool)

(assert (=> (not b_lambda!90635) (not d!907017)))

(declare-fun t!247681 () Bool)

(declare-fun tb!165861 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) t!247681) tb!165861))

(declare-fun b!3270435 () Bool)

(declare-fun e!2036648 () Bool)

(declare-fun tp!1027236 () Bool)

(assert (=> b!3270435 (= e!2036648 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (value!171054 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) tp!1027236))))

(declare-fun result!208556 () Bool)

(assert (=> tb!165861 (= result!208556 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (value!171054 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) e!2036648))))

(assert (= tb!165861 b!3270435))

(declare-fun m!3573555 () Bool)

(assert (=> b!3270435 m!3573555))

(declare-fun m!3573557 () Bool)

(assert (=> tb!165861 m!3573557))

(assert (=> d!907017 t!247681))

(declare-fun b_and!221535 () Bool)

(assert (= b_and!221521 (and (=> t!247681 result!208556) b_and!221535)))

(declare-fun tb!165863 () Bool)

(declare-fun t!247683 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) t!247683) tb!165863))

(declare-fun result!208558 () Bool)

(assert (= result!208558 result!208556))

(assert (=> d!907017 t!247683))

(declare-fun b_and!221537 () Bool)

(assert (= b_and!221523 (and (=> t!247683 result!208558) b_and!221537)))

(declare-fun t!247685 () Bool)

(declare-fun tb!165865 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) t!247685) tb!165865))

(declare-fun result!208560 () Bool)

(assert (= result!208560 result!208556))

(assert (=> d!907017 t!247685))

(declare-fun b_and!221539 () Bool)

(assert (= b_and!221517 (and (=> t!247685 result!208560) b_and!221539)))

(declare-fun tb!165867 () Bool)

(declare-fun t!247687 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) t!247687) tb!165867))

(declare-fun result!208562 () Bool)

(assert (= result!208562 result!208556))

(assert (=> d!907017 t!247687))

(declare-fun b_and!221541 () Bool)

(assert (= b_and!221519 (and (=> t!247687 result!208562) b_and!221541)))

(declare-fun tb!165869 () Bool)

(declare-fun t!247689 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) t!247689) tb!165869))

(declare-fun result!208564 () Bool)

(assert (= result!208564 result!208556))

(assert (=> d!907017 t!247689))

(declare-fun b_and!221543 () Bool)

(assert (= b_and!221515 (and (=> t!247689 result!208564) b_and!221543)))

(declare-fun m!3573559 () Bool)

(assert (=> d!907017 m!3573559))

(declare-fun m!3573561 () Bool)

(assert (=> d!907017 m!3573561))

(assert (=> b!3268516 d!907017))

(declare-fun d!907019 () Bool)

(declare-fun c!552266 () Bool)

(assert (=> d!907019 (= c!552266 ((_ is Cons!36444) (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444))))))

(declare-fun e!2036649 () List!36567)

(assert (=> d!907019 (= (printList!1423 thiss!18206 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444))) e!2036649)))

(declare-fun b!3270436 () Bool)

(assert (=> b!3270436 (= e!2036649 (++!8798 (list!13032 (charsOf!3300 (h!41864 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444))))) (printList!1423 thiss!18206 (t!247339 (t!247339 (Cons!36444 (h!41864 tokens!494) Nil!36444))))))))

(declare-fun b!3270437 () Bool)

(assert (=> b!3270437 (= e!2036649 Nil!36443)))

(assert (= (and d!907019 c!552266) b!3270436))

(assert (= (and d!907019 (not c!552266)) b!3270437))

(declare-fun m!3573563 () Bool)

(assert (=> b!3270436 m!3573563))

(assert (=> b!3270436 m!3573563))

(declare-fun m!3573565 () Bool)

(assert (=> b!3270436 m!3573565))

(declare-fun m!3573567 () Bool)

(assert (=> b!3270436 m!3573567))

(assert (=> b!3270436 m!3573565))

(assert (=> b!3270436 m!3573567))

(declare-fun m!3573569 () Bool)

(assert (=> b!3270436 m!3573569))

(assert (=> b!3268516 d!907019))

(declare-fun lt!1109283 () Bool)

(declare-fun d!907021 () Bool)

(assert (=> d!907021 (= lt!1109283 (isEmpty!20562 (list!13032 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))))))))))

(assert (=> d!907021 (= lt!1109283 (isEmpty!20573 (c!551639 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494))))))))))

(assert (=> d!907021 (= (isEmpty!20568 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 (h!41864 tokens!494)))))) lt!1109283)))

(declare-fun bs!546166 () Bool)

(assert (= bs!546166 d!907021))

(declare-fun m!3573571 () Bool)

(assert (=> bs!546166 m!3573571))

(assert (=> bs!546166 m!3573571))

(declare-fun m!3573573 () Bool)

(assert (=> bs!546166 m!3573573))

(declare-fun m!3573575 () Bool)

(assert (=> bs!546166 m!3573575))

(assert (=> b!3268520 d!907021))

(assert (=> b!3268520 d!906793))

(assert (=> b!3268520 d!906795))

(assert (=> b!3268520 d!905989))

(assert (=> b!3268763 d!906635))

(declare-fun b!3270440 () Bool)

(declare-fun res!1329070 () Bool)

(declare-fun e!2036650 () Bool)

(assert (=> b!3270440 (=> (not res!1329070) (not e!2036650))))

(declare-fun lt!1109284 () List!36567)

(assert (=> b!3270440 (= res!1329070 (= (size!27503 lt!1109284) (+ (size!27503 (ite c!551673 call!236819 call!236821)) (size!27503 (ite c!551673 call!236821 call!236819)))))))

(declare-fun e!2036651 () List!36567)

(declare-fun b!3270439 () Bool)

(assert (=> b!3270439 (= e!2036651 (Cons!36443 (h!41863 (ite c!551673 call!236819 call!236821)) (++!8798 (t!247338 (ite c!551673 call!236819 call!236821)) (ite c!551673 call!236821 call!236819))))))

(declare-fun b!3270438 () Bool)

(assert (=> b!3270438 (= e!2036651 (ite c!551673 call!236821 call!236819))))

(declare-fun d!907023 () Bool)

(assert (=> d!907023 e!2036650))

(declare-fun res!1329069 () Bool)

(assert (=> d!907023 (=> (not res!1329069) (not e!2036650))))

(assert (=> d!907023 (= res!1329069 (= (content!4944 lt!1109284) ((_ map or) (content!4944 (ite c!551673 call!236819 call!236821)) (content!4944 (ite c!551673 call!236821 call!236819)))))))

(assert (=> d!907023 (= lt!1109284 e!2036651)))

(declare-fun c!552267 () Bool)

(assert (=> d!907023 (= c!552267 ((_ is Nil!36443) (ite c!551673 call!236819 call!236821)))))

(assert (=> d!907023 (= (++!8798 (ite c!551673 call!236819 call!236821) (ite c!551673 call!236821 call!236819)) lt!1109284)))

(declare-fun b!3270441 () Bool)

(assert (=> b!3270441 (= e!2036650 (or (not (= (ite c!551673 call!236821 call!236819) Nil!36443)) (= lt!1109284 (ite c!551673 call!236819 call!236821))))))

(assert (= (and d!907023 c!552267) b!3270438))

(assert (= (and d!907023 (not c!552267)) b!3270439))

(assert (= (and d!907023 res!1329069) b!3270440))

(assert (= (and b!3270440 res!1329070) b!3270441))

(declare-fun m!3573577 () Bool)

(assert (=> b!3270440 m!3573577))

(declare-fun m!3573579 () Bool)

(assert (=> b!3270440 m!3573579))

(declare-fun m!3573581 () Bool)

(assert (=> b!3270440 m!3573581))

(declare-fun m!3573583 () Bool)

(assert (=> b!3270439 m!3573583))

(declare-fun m!3573585 () Bool)

(assert (=> d!907023 m!3573585))

(declare-fun m!3573587 () Bool)

(assert (=> d!907023 m!3573587))

(declare-fun m!3573589 () Bool)

(assert (=> d!907023 m!3573589))

(assert (=> bm!236815 d!907023))

(declare-fun d!907025 () Bool)

(declare-fun lt!1109285 () Int)

(assert (=> d!907025 (= lt!1109285 (size!27506 (list!13033 lt!1108159)))))

(assert (=> d!907025 (= lt!1109285 (size!27512 (c!551640 lt!1108159)))))

(assert (=> d!907025 (= (size!27508 lt!1108159) lt!1109285)))

(declare-fun bs!546167 () Bool)

(assert (= bs!546167 d!907025))

(assert (=> bs!546167 m!3570245))

(assert (=> bs!546167 m!3570245))

(declare-fun m!3573591 () Bool)

(assert (=> bs!546167 m!3573591))

(declare-fun m!3573593 () Bool)

(assert (=> bs!546167 m!3573593))

(assert (=> d!905977 d!907025))

(declare-fun d!907027 () Bool)

(assert (=> d!907027 (= (dropList!1104 lt!1108159 0) (drop!1893 (list!13036 (c!551640 lt!1108159)) 0))))

(declare-fun bs!546168 () Bool)

(assert (= bs!546168 d!907027))

(assert (=> bs!546168 m!3572961))

(assert (=> bs!546168 m!3572961))

(declare-fun m!3573595 () Bool)

(assert (=> bs!546168 m!3573595))

(assert (=> d!905977 d!907027))

(declare-fun d!907029 () Bool)

(assert (=> d!907029 (= (list!13032 (BalanceConc!21501 Empty!10943)) (list!13035 (c!551639 (BalanceConc!21501 Empty!10943))))))

(declare-fun bs!546169 () Bool)

(assert (= bs!546169 d!907029))

(declare-fun m!3573597 () Bool)

(assert (=> bs!546169 m!3573597))

(assert (=> d!905977 d!907029))

(declare-fun d!907031 () Bool)

(assert (=> d!907031 (= (list!13032 lt!1108360) (list!13035 (c!551639 lt!1108360)))))

(declare-fun bs!546170 () Bool)

(assert (= bs!546170 d!907031))

(declare-fun m!3573599 () Bool)

(assert (=> bs!546170 m!3573599))

(assert (=> d!905977 d!907031))

(declare-fun d!907033 () Bool)

(declare-fun lt!1109296 () List!36567)

(assert (=> d!907033 (= lt!1109296 (++!8798 (list!13032 (BalanceConc!21501 Empty!10943)) (printList!1423 thiss!18206 (dropList!1104 lt!1108159 0))))))

(declare-fun e!2036654 () List!36567)

(assert (=> d!907033 (= lt!1109296 e!2036654)))

(declare-fun c!552270 () Bool)

(assert (=> d!907033 (= c!552270 ((_ is Cons!36444) (dropList!1104 lt!1108159 0)))))

(assert (=> d!907033 (= (printListTailRec!587 thiss!18206 (dropList!1104 lt!1108159 0) (list!13032 (BalanceConc!21501 Empty!10943))) lt!1109296)))

(declare-fun b!3270446 () Bool)

(assert (=> b!3270446 (= e!2036654 (printListTailRec!587 thiss!18206 (t!247339 (dropList!1104 lt!1108159 0)) (++!8798 (list!13032 (BalanceConc!21501 Empty!10943)) (list!13032 (charsOf!3300 (h!41864 (dropList!1104 lt!1108159 0)))))))))

(declare-fun lt!1109298 () List!36567)

(assert (=> b!3270446 (= lt!1109298 (list!13032 (charsOf!3300 (h!41864 (dropList!1104 lt!1108159 0)))))))

(declare-fun lt!1109300 () List!36567)

(assert (=> b!3270446 (= lt!1109300 (printList!1423 thiss!18206 (t!247339 (dropList!1104 lt!1108159 0))))))

(declare-fun lt!1109297 () Unit!51218)

(assert (=> b!3270446 (= lt!1109297 (lemmaConcatAssociativity!1805 (list!13032 (BalanceConc!21501 Empty!10943)) lt!1109298 lt!1109300))))

(assert (=> b!3270446 (= (++!8798 (++!8798 (list!13032 (BalanceConc!21501 Empty!10943)) lt!1109298) lt!1109300) (++!8798 (list!13032 (BalanceConc!21501 Empty!10943)) (++!8798 lt!1109298 lt!1109300)))))

(declare-fun lt!1109299 () Unit!51218)

(assert (=> b!3270446 (= lt!1109299 lt!1109297)))

(declare-fun b!3270447 () Bool)

(assert (=> b!3270447 (= e!2036654 (list!13032 (BalanceConc!21501 Empty!10943)))))

(assert (= (and d!907033 c!552270) b!3270446))

(assert (= (and d!907033 (not c!552270)) b!3270447))

(assert (=> d!907033 m!3570231))

(declare-fun m!3573601 () Bool)

(assert (=> d!907033 m!3573601))

(assert (=> d!907033 m!3570235))

(assert (=> d!907033 m!3573601))

(declare-fun m!3573603 () Bool)

(assert (=> d!907033 m!3573603))

(declare-fun m!3573605 () Bool)

(assert (=> b!3270446 m!3573605))

(assert (=> b!3270446 m!3570235))

(assert (=> b!3270446 m!3573605))

(declare-fun m!3573607 () Bool)

(assert (=> b!3270446 m!3573607))

(declare-fun m!3573609 () Bool)

(assert (=> b!3270446 m!3573609))

(assert (=> b!3270446 m!3570235))

(declare-fun m!3573611 () Bool)

(assert (=> b!3270446 m!3573611))

(assert (=> b!3270446 m!3570235))

(declare-fun m!3573613 () Bool)

(assert (=> b!3270446 m!3573613))

(declare-fun m!3573615 () Bool)

(assert (=> b!3270446 m!3573615))

(declare-fun m!3573617 () Bool)

(assert (=> b!3270446 m!3573617))

(assert (=> b!3270446 m!3573613))

(assert (=> b!3270446 m!3573615))

(declare-fun m!3573619 () Bool)

(assert (=> b!3270446 m!3573619))

(declare-fun m!3573621 () Bool)

(assert (=> b!3270446 m!3573621))

(declare-fun m!3573623 () Bool)

(assert (=> b!3270446 m!3573623))

(assert (=> b!3270446 m!3570235))

(assert (=> b!3270446 m!3573621))

(assert (=> b!3270446 m!3573617))

(assert (=> d!905977 d!907033))

(declare-fun b!3270450 () Bool)

(declare-fun res!1329072 () Bool)

(declare-fun e!2036655 () Bool)

(assert (=> b!3270450 (=> (not res!1329072) (not e!2036655))))

(declare-fun lt!1109301 () List!36567)

(assert (=> b!3270450 (= res!1329072 (= (size!27503 lt!1109301) (+ (size!27503 (t!247338 lt!1108158)) (size!27503 lt!1108142))))))

(declare-fun b!3270449 () Bool)

(declare-fun e!2036656 () List!36567)

(assert (=> b!3270449 (= e!2036656 (Cons!36443 (h!41863 (t!247338 lt!1108158)) (++!8798 (t!247338 (t!247338 lt!1108158)) lt!1108142)))))

(declare-fun b!3270448 () Bool)

(assert (=> b!3270448 (= e!2036656 lt!1108142)))

(declare-fun d!907035 () Bool)

(assert (=> d!907035 e!2036655))

(declare-fun res!1329071 () Bool)

(assert (=> d!907035 (=> (not res!1329071) (not e!2036655))))

(assert (=> d!907035 (= res!1329071 (= (content!4944 lt!1109301) ((_ map or) (content!4944 (t!247338 lt!1108158)) (content!4944 lt!1108142))))))

(assert (=> d!907035 (= lt!1109301 e!2036656)))

(declare-fun c!552271 () Bool)

(assert (=> d!907035 (= c!552271 ((_ is Nil!36443) (t!247338 lt!1108158)))))

(assert (=> d!907035 (= (++!8798 (t!247338 lt!1108158) lt!1108142) lt!1109301)))

(declare-fun b!3270451 () Bool)

(assert (=> b!3270451 (= e!2036655 (or (not (= lt!1108142 Nil!36443)) (= lt!1109301 (t!247338 lt!1108158))))))

(assert (= (and d!907035 c!552271) b!3270448))

(assert (= (and d!907035 (not c!552271)) b!3270449))

(assert (= (and d!907035 res!1329071) b!3270450))

(assert (= (and b!3270450 res!1329072) b!3270451))

(declare-fun m!3573625 () Bool)

(assert (=> b!3270450 m!3573625))

(assert (=> b!3270450 m!3570595))

(assert (=> b!3270450 m!3570219))

(declare-fun m!3573627 () Bool)

(assert (=> b!3270449 m!3573627))

(declare-fun m!3573629 () Bool)

(assert (=> d!907035 m!3573629))

(assert (=> d!907035 m!3573163))

(assert (=> d!907035 m!3570227))

(assert (=> b!3268476 d!907035))

(declare-fun d!907037 () Bool)

(assert (=> d!907037 (= (nullable!3411 (regex!5284 (rule!7766 separatorToken!241))) (nullableFct!978 (regex!5284 (rule!7766 separatorToken!241))))))

(declare-fun bs!546171 () Bool)

(assert (= bs!546171 d!907037))

(declare-fun m!3573631 () Bool)

(assert (=> bs!546171 m!3573631))

(assert (=> b!3268421 d!907037))

(declare-fun d!907039 () Bool)

(declare-fun lt!1109302 () Bool)

(assert (=> d!907039 (= lt!1109302 (select (content!4944 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) lt!1108139))))

(declare-fun e!2036658 () Bool)

(assert (=> d!907039 (= lt!1109302 e!2036658)))

(declare-fun res!1329074 () Bool)

(assert (=> d!907039 (=> (not res!1329074) (not e!2036658))))

(assert (=> d!907039 (= res!1329074 ((_ is Cons!36443) (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))

(assert (=> d!907039 (= (contains!6567 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494))))) lt!1108139) lt!1109302)))

(declare-fun b!3270452 () Bool)

(declare-fun e!2036657 () Bool)

(assert (=> b!3270452 (= e!2036658 e!2036657)))

(declare-fun res!1329073 () Bool)

(assert (=> b!3270452 (=> res!1329073 e!2036657)))

(assert (=> b!3270452 (= res!1329073 (= (h!41863 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) lt!1108139))))

(declare-fun b!3270453 () Bool)

(assert (=> b!3270453 (= e!2036657 (contains!6567 (t!247338 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) lt!1108139))))

(assert (= (and d!907039 res!1329074) b!3270452))

(assert (= (and b!3270452 (not res!1329073)) b!3270453))

(assert (=> d!907039 m!3573537))

(declare-fun m!3573633 () Bool)

(assert (=> d!907039 m!3573633))

(declare-fun m!3573635 () Bool)

(assert (=> b!3270453 m!3573635))

(assert (=> b!3268189 d!907039))

(assert (=> d!905939 d!905941))

(declare-fun d!907041 () Bool)

(assert (=> d!907041 (not (matchR!4665 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142))))

(assert (=> d!907041 true))

(declare-fun _$127!296 () Unit!51218)

(assert (=> d!907041 (= (choose!19018 (regex!5284 (rule!7766 separatorToken!241)) lt!1108142 lt!1108139) _$127!296)))

(declare-fun bs!546172 () Bool)

(assert (= bs!546172 d!907041))

(assert (=> bs!546172 m!3569441))

(assert (=> d!905939 d!907041))

(assert (=> d!905939 d!906607))

(declare-fun b!3270454 () Bool)

(declare-fun e!2036659 () Bool)

(assert (=> b!3270454 (= e!2036659 (inv!15 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144)))))

(declare-fun d!907043 () Bool)

(declare-fun c!552274 () Bool)

(assert (=> d!907043 (= c!552274 ((_ is IntegerValue!16542) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144)))))

(declare-fun e!2036660 () Bool)

(assert (=> d!907043 (= (inv!21 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144)) e!2036660)))

(declare-fun b!3270455 () Bool)

(assert (=> b!3270455 (= e!2036660 (inv!16 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144)))))

(declare-fun b!3270456 () Bool)

(declare-fun res!1329075 () Bool)

(assert (=> b!3270456 (=> res!1329075 e!2036659)))

(assert (=> b!3270456 (= res!1329075 (not ((_ is IntegerValue!16544) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144))))))

(declare-fun e!2036661 () Bool)

(assert (=> b!3270456 (= e!2036661 e!2036659)))

(declare-fun b!3270457 () Bool)

(assert (=> b!3270457 (= e!2036660 e!2036661)))

(declare-fun c!552273 () Bool)

(assert (=> b!3270457 (= c!552273 ((_ is IntegerValue!16543) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144)))))

(declare-fun b!3270458 () Bool)

(assert (=> b!3270458 (= e!2036661 (inv!17 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) lt!1108144)))))

(assert (= (and d!907043 c!552274) b!3270455))

(assert (= (and d!907043 (not c!552274)) b!3270457))

(assert (= (and b!3270457 c!552273) b!3270458))

(assert (= (and b!3270457 (not c!552273)) b!3270456))

(assert (= (and b!3270456 (not res!1329075)) b!3270454))

(declare-fun m!3573637 () Bool)

(assert (=> b!3270454 m!3573637))

(declare-fun m!3573639 () Bool)

(assert (=> b!3270455 m!3573639))

(declare-fun m!3573641 () Bool)

(assert (=> b!3270458 m!3573641))

(assert (=> tb!165593 d!907043))

(assert (=> b!3268738 d!906847))

(assert (=> b!3268738 d!906849))

(declare-fun b!3270459 () Bool)

(declare-fun e!2036664 () Option!7258)

(assert (=> b!3270459 (= e!2036664 (Some!7257 (h!41865 (t!247340 rules!2135))))))

(declare-fun d!907045 () Bool)

(declare-fun e!2036665 () Bool)

(assert (=> d!907045 e!2036665))

(declare-fun res!1329076 () Bool)

(assert (=> d!907045 (=> res!1329076 e!2036665)))

(declare-fun lt!1109304 () Option!7258)

(assert (=> d!907045 (= res!1329076 (isEmpty!20571 lt!1109304))))

(assert (=> d!907045 (= lt!1109304 e!2036664)))

(declare-fun c!552275 () Bool)

(assert (=> d!907045 (= c!552275 (and ((_ is Cons!36445) (t!247340 rules!2135)) (= (tag!5824 (h!41865 (t!247340 rules!2135))) (tag!5824 (rule!7766 separatorToken!241)))))))

(assert (=> d!907045 (rulesInvariant!4270 thiss!18206 (t!247340 rules!2135))))

(assert (=> d!907045 (= (getRuleFromTag!975 thiss!18206 (t!247340 rules!2135) (tag!5824 (rule!7766 separatorToken!241))) lt!1109304)))

(declare-fun b!3270460 () Bool)

(declare-fun e!2036662 () Option!7258)

(assert (=> b!3270460 (= e!2036664 e!2036662)))

(declare-fun c!552276 () Bool)

(assert (=> b!3270460 (= c!552276 (and ((_ is Cons!36445) (t!247340 rules!2135)) (not (= (tag!5824 (h!41865 (t!247340 rules!2135))) (tag!5824 (rule!7766 separatorToken!241))))))))

(declare-fun b!3270461 () Bool)

(assert (=> b!3270461 (= e!2036662 None!7257)))

(declare-fun b!3270462 () Bool)

(declare-fun lt!1109305 () Unit!51218)

(declare-fun lt!1109303 () Unit!51218)

(assert (=> b!3270462 (= lt!1109305 lt!1109303)))

(assert (=> b!3270462 (rulesInvariant!4270 thiss!18206 (t!247340 (t!247340 rules!2135)))))

(assert (=> b!3270462 (= lt!1109303 (lemmaInvariantOnRulesThenOnTail!364 thiss!18206 (h!41865 (t!247340 rules!2135)) (t!247340 (t!247340 rules!2135))))))

(assert (=> b!3270462 (= e!2036662 (getRuleFromTag!975 thiss!18206 (t!247340 (t!247340 rules!2135)) (tag!5824 (rule!7766 separatorToken!241))))))

(declare-fun b!3270463 () Bool)

(declare-fun e!2036663 () Bool)

(assert (=> b!3270463 (= e!2036663 (= (tag!5824 (get!11623 lt!1109304)) (tag!5824 (rule!7766 separatorToken!241))))))

(declare-fun b!3270464 () Bool)

(assert (=> b!3270464 (= e!2036665 e!2036663)))

(declare-fun res!1329077 () Bool)

(assert (=> b!3270464 (=> (not res!1329077) (not e!2036663))))

(assert (=> b!3270464 (= res!1329077 (contains!6570 (t!247340 rules!2135) (get!11623 lt!1109304)))))

(assert (= (and d!907045 c!552275) b!3270459))

(assert (= (and d!907045 (not c!552275)) b!3270460))

(assert (= (and b!3270460 c!552276) b!3270462))

(assert (= (and b!3270460 (not c!552276)) b!3270461))

(assert (= (and d!907045 (not res!1329076)) b!3270464))

(assert (= (and b!3270464 res!1329077) b!3270463))

(declare-fun m!3573643 () Bool)

(assert (=> d!907045 m!3573643))

(assert (=> d!907045 m!3570607))

(assert (=> b!3270462 m!3573179))

(assert (=> b!3270462 m!3573181))

(declare-fun m!3573645 () Bool)

(assert (=> b!3270462 m!3573645))

(declare-fun m!3573647 () Bool)

(assert (=> b!3270463 m!3573647))

(assert (=> b!3270464 m!3573647))

(assert (=> b!3270464 m!3573647))

(declare-fun m!3573649 () Bool)

(assert (=> b!3270464 m!3573649))

(assert (=> b!3268738 d!907045))

(assert (=> b!3268779 d!906911))

(assert (=> b!3268779 d!906065))

(declare-fun d!907047 () Bool)

(declare-fun c!552277 () Bool)

(assert (=> d!907047 (= c!552277 ((_ is Node!10943) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))))))

(declare-fun e!2036666 () Bool)

(assert (=> d!907047 (= (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))) e!2036666)))

(declare-fun b!3270465 () Bool)

(assert (=> b!3270465 (= e!2036666 (inv!49377 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))))))

(declare-fun b!3270466 () Bool)

(declare-fun e!2036667 () Bool)

(assert (=> b!3270466 (= e!2036666 e!2036667)))

(declare-fun res!1329078 () Bool)

(assert (=> b!3270466 (= res!1329078 (not ((_ is Leaf!17196) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))))))))

(assert (=> b!3270466 (=> res!1329078 e!2036667)))

(declare-fun b!3270467 () Bool)

(assert (=> b!3270467 (= e!2036667 (inv!49378 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))))))

(assert (= (and d!907047 c!552277) b!3270465))

(assert (= (and d!907047 (not c!552277)) b!3270466))

(assert (= (and b!3270466 (not res!1329078)) b!3270467))

(declare-fun m!3573651 () Bool)

(assert (=> b!3270465 m!3573651))

(declare-fun m!3573653 () Bool)

(assert (=> b!3270467 m!3573653))

(assert (=> b!3268034 d!907047))

(declare-fun d!907049 () Bool)

(assert (=> d!907049 (= (isEmpty!20566 lt!1108249) (not ((_ is Some!7256) lt!1108249)))))

(assert (=> d!905853 d!907049))

(declare-fun b!3270471 () Bool)

(declare-fun e!2036669 () Bool)

(assert (=> b!3270471 (= e!2036669 (>= (size!27503 lt!1108162) (size!27503 lt!1108162)))))

(declare-fun b!3270468 () Bool)

(declare-fun e!2036670 () Bool)

(declare-fun e!2036668 () Bool)

(assert (=> b!3270468 (= e!2036670 e!2036668)))

(declare-fun res!1329082 () Bool)

(assert (=> b!3270468 (=> (not res!1329082) (not e!2036668))))

(assert (=> b!3270468 (= res!1329082 (not ((_ is Nil!36443) lt!1108162)))))

(declare-fun b!3270470 () Bool)

(assert (=> b!3270470 (= e!2036668 (isPrefix!2799 (tail!5250 lt!1108162) (tail!5250 lt!1108162)))))

(declare-fun b!3270469 () Bool)

(declare-fun res!1329081 () Bool)

(assert (=> b!3270469 (=> (not res!1329081) (not e!2036668))))

(assert (=> b!3270469 (= res!1329081 (= (head!7113 lt!1108162) (head!7113 lt!1108162)))))

(declare-fun d!907051 () Bool)

(assert (=> d!907051 e!2036669))

(declare-fun res!1329079 () Bool)

(assert (=> d!907051 (=> res!1329079 e!2036669)))

(declare-fun lt!1109306 () Bool)

(assert (=> d!907051 (= res!1329079 (not lt!1109306))))

(assert (=> d!907051 (= lt!1109306 e!2036670)))

(declare-fun res!1329080 () Bool)

(assert (=> d!907051 (=> res!1329080 e!2036670)))

(assert (=> d!907051 (= res!1329080 ((_ is Nil!36443) lt!1108162))))

(assert (=> d!907051 (= (isPrefix!2799 lt!1108162 lt!1108162) lt!1109306)))

(assert (= (and d!907051 (not res!1329080)) b!3270468))

(assert (= (and b!3270468 res!1329082) b!3270469))

(assert (= (and b!3270469 res!1329081) b!3270470))

(assert (= (and d!907051 (not res!1329079)) b!3270471))

(assert (=> b!3270471 m!3569721))

(assert (=> b!3270471 m!3569721))

(declare-fun m!3573655 () Bool)

(assert (=> b!3270470 m!3573655))

(assert (=> b!3270470 m!3573655))

(assert (=> b!3270470 m!3573655))

(assert (=> b!3270470 m!3573655))

(declare-fun m!3573657 () Bool)

(assert (=> b!3270470 m!3573657))

(declare-fun m!3573659 () Bool)

(assert (=> b!3270469 m!3573659))

(assert (=> b!3270469 m!3573659))

(assert (=> d!905853 d!907051))

(declare-fun d!907053 () Bool)

(assert (=> d!907053 (isPrefix!2799 lt!1108162 lt!1108162)))

(declare-fun lt!1109307 () Unit!51218)

(assert (=> d!907053 (= lt!1109307 (choose!19034 lt!1108162 lt!1108162))))

(assert (=> d!907053 (= (lemmaIsPrefixRefl!1758 lt!1108162 lt!1108162) lt!1109307)))

(declare-fun bs!546173 () Bool)

(assert (= bs!546173 d!907053))

(assert (=> bs!546173 m!3569811))

(declare-fun m!3573661 () Bool)

(assert (=> bs!546173 m!3573661))

(assert (=> d!905853 d!907053))

(assert (=> d!905853 d!906973))

(declare-fun d!907055 () Bool)

(assert (=> d!907055 (= (isEmpty!20571 lt!1108140) (not ((_ is Some!7257) lt!1108140)))))

(assert (=> d!906087 d!907055))

(declare-fun d!907057 () Bool)

(declare-fun lt!1109308 () Int)

(assert (=> d!907057 (>= lt!1109308 0)))

(declare-fun e!2036671 () Int)

(assert (=> d!907057 (= lt!1109308 e!2036671)))

(declare-fun c!552278 () Bool)

(assert (=> d!907057 (= c!552278 ((_ is Nil!36443) (_2!21093 (get!11625 lt!1108249))))))

(assert (=> d!907057 (= (size!27503 (_2!21093 (get!11625 lt!1108249))) lt!1109308)))

(declare-fun b!3270472 () Bool)

(assert (=> b!3270472 (= e!2036671 0)))

(declare-fun b!3270473 () Bool)

(assert (=> b!3270473 (= e!2036671 (+ 1 (size!27503 (t!247338 (_2!21093 (get!11625 lt!1108249))))))))

(assert (= (and d!907057 c!552278) b!3270472))

(assert (= (and d!907057 (not c!552278)) b!3270473))

(declare-fun m!3573663 () Bool)

(assert (=> b!3270473 m!3573663))

(assert (=> b!3268178 d!907057))

(assert (=> b!3268178 d!906725))

(assert (=> b!3268178 d!906867))

(declare-fun d!907059 () Bool)

(declare-fun lt!1109311 () Int)

(assert (=> d!907059 (= lt!1109311 (size!27503 (list!13032 (_2!21094 lt!1108292))))))

(declare-fun size!27513 (Conc!10943) Int)

(assert (=> d!907059 (= lt!1109311 (size!27513 (c!551639 (_2!21094 lt!1108292))))))

(assert (=> d!907059 (= (size!27509 (_2!21094 lt!1108292)) lt!1109311)))

(declare-fun bs!546174 () Bool)

(assert (= bs!546174 d!907059))

(assert (=> bs!546174 m!3569941))

(assert (=> bs!546174 m!3569941))

(declare-fun m!3573665 () Bool)

(assert (=> bs!546174 m!3573665))

(declare-fun m!3573667 () Bool)

(assert (=> bs!546174 m!3573667))

(assert (=> b!3268250 d!907059))

(declare-fun d!907061 () Bool)

(declare-fun lt!1109312 () Int)

(assert (=> d!907061 (= lt!1109312 (size!27503 (list!13032 lt!1108144)))))

(assert (=> d!907061 (= lt!1109312 (size!27513 (c!551639 lt!1108144)))))

(assert (=> d!907061 (= (size!27509 lt!1108144) lt!1109312)))

(declare-fun bs!546175 () Bool)

(assert (= bs!546175 d!907061))

(assert (=> bs!546175 m!3569927))

(assert (=> bs!546175 m!3569927))

(assert (=> bs!546175 m!3572783))

(declare-fun m!3573669 () Bool)

(assert (=> bs!546175 m!3573669))

(assert (=> b!3268250 d!907061))

(declare-fun d!907063 () Bool)

(declare-fun lt!1109313 () Int)

(assert (=> d!907063 (= lt!1109313 (size!27503 (list!13032 (seqFromList!3632 (_1!21096 lt!1108480)))))))

(assert (=> d!907063 (= lt!1109313 (size!27513 (c!551639 (seqFromList!3632 (_1!21096 lt!1108480)))))))

(assert (=> d!907063 (= (size!27509 (seqFromList!3632 (_1!21096 lt!1108480))) lt!1109313)))

(declare-fun bs!546176 () Bool)

(assert (= bs!546176 d!907063))

(assert (=> bs!546176 m!3570645))

(declare-fun m!3573671 () Bool)

(assert (=> bs!546176 m!3573671))

(assert (=> bs!546176 m!3573671))

(declare-fun m!3573673 () Bool)

(assert (=> bs!546176 m!3573673))

(declare-fun m!3573675 () Bool)

(assert (=> bs!546176 m!3573675))

(assert (=> b!3268759 d!907063))

(assert (=> b!3268759 d!906055))

(declare-fun b!3270502 () Bool)

(declare-fun e!2036691 () tuple2!35924)

(assert (=> b!3270502 (= e!2036691 (tuple2!35925 Nil!36443 Nil!36443))))

(declare-fun b!3270503 () Bool)

(declare-fun e!2036692 () tuple2!35924)

(assert (=> b!3270503 (= e!2036692 (tuple2!35925 Nil!36443 lt!1108158))))

(declare-fun bm!237036 () Bool)

(declare-fun call!237045 () List!36567)

(assert (=> bm!237036 (= call!237045 (tail!5250 lt!1108158))))

(declare-fun bm!237037 () Bool)

(declare-fun call!237042 () Unit!51218)

(assert (=> bm!237037 (= call!237042 (lemmaIsPrefixRefl!1758 lt!1108158 lt!1108158))))

(declare-fun bm!237038 () Bool)

(declare-fun call!237044 () tuple2!35924)

(declare-fun call!237043 () Regex!10043)

(declare-fun lt!1109383 () List!36567)

(assert (=> bm!237038 (= call!237044 (findLongestMatchInner!845 call!237043 lt!1109383 (+ (size!27503 Nil!36443) 1) call!237045 lt!1108158 (size!27503 lt!1108158)))))

(declare-fun b!3270504 () Bool)

(declare-fun e!2036689 () tuple2!35924)

(declare-fun e!2036693 () tuple2!35924)

(assert (=> b!3270504 (= e!2036689 e!2036693)))

(declare-fun c!552292 () Bool)

(assert (=> b!3270504 (= c!552292 (= (size!27503 Nil!36443) (size!27503 lt!1108158)))))

(declare-fun d!907065 () Bool)

(declare-fun e!2036688 () Bool)

(assert (=> d!907065 e!2036688))

(declare-fun res!1329088 () Bool)

(assert (=> d!907065 (=> (not res!1329088) (not e!2036688))))

(declare-fun lt!1109392 () tuple2!35924)

(assert (=> d!907065 (= res!1329088 (= (++!8798 (_1!21096 lt!1109392) (_2!21096 lt!1109392)) lt!1108158))))

(assert (=> d!907065 (= lt!1109392 e!2036689)))

(declare-fun c!552294 () Bool)

(declare-fun lostCause!892 (Regex!10043) Bool)

(assert (=> d!907065 (= c!552294 (lostCause!892 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun lt!1109391 () Unit!51218)

(declare-fun Unit!51231 () Unit!51218)

(assert (=> d!907065 (= lt!1109391 Unit!51231)))

(assert (=> d!907065 (= (getSuffix!1408 lt!1108158 Nil!36443) lt!1108158)))

(declare-fun lt!1109378 () Unit!51218)

(declare-fun lt!1109386 () Unit!51218)

(assert (=> d!907065 (= lt!1109378 lt!1109386)))

(declare-fun lt!1109396 () List!36567)

(assert (=> d!907065 (= lt!1108158 lt!1109396)))

(declare-fun lemmaSamePrefixThenSameSuffix!1242 (List!36567 List!36567 List!36567 List!36567 List!36567) Unit!51218)

(assert (=> d!907065 (= lt!1109386 (lemmaSamePrefixThenSameSuffix!1242 Nil!36443 lt!1108158 Nil!36443 lt!1109396 lt!1108158))))

(assert (=> d!907065 (= lt!1109396 (getSuffix!1408 lt!1108158 Nil!36443))))

(declare-fun lt!1109387 () Unit!51218)

(declare-fun lt!1109397 () Unit!51218)

(assert (=> d!907065 (= lt!1109387 lt!1109397)))

(assert (=> d!907065 (isPrefix!2799 Nil!36443 (++!8798 Nil!36443 lt!1108158))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1776 (List!36567 List!36567) Unit!51218)

(assert (=> d!907065 (= lt!1109397 (lemmaConcatTwoListThenFirstIsPrefix!1776 Nil!36443 lt!1108158))))

(assert (=> d!907065 (validRegex!4567 (regex!5284 (rule!7766 (h!41864 tokens!494))))))

(assert (=> d!907065 (= (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)) lt!1109392)))

(declare-fun b!3270505 () Bool)

(declare-fun c!552296 () Bool)

(declare-fun call!237048 () Bool)

(assert (=> b!3270505 (= c!552296 call!237048)))

(declare-fun lt!1109377 () Unit!51218)

(declare-fun lt!1109394 () Unit!51218)

(assert (=> b!3270505 (= lt!1109377 lt!1109394)))

(declare-fun lt!1109374 () C!20272)

(declare-fun lt!1109373 () List!36567)

(assert (=> b!3270505 (= (++!8798 (++!8798 Nil!36443 (Cons!36443 lt!1109374 Nil!36443)) lt!1109373) lt!1108158)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1130 (List!36567 C!20272 List!36567 List!36567) Unit!51218)

(assert (=> b!3270505 (= lt!1109394 (lemmaMoveElementToOtherListKeepsConcatEq!1130 Nil!36443 lt!1109374 lt!1109373 lt!1108158))))

(assert (=> b!3270505 (= lt!1109373 (tail!5250 lt!1108158))))

(assert (=> b!3270505 (= lt!1109374 (head!7113 lt!1108158))))

(declare-fun lt!1109382 () Unit!51218)

(declare-fun lt!1109370 () Unit!51218)

(assert (=> b!3270505 (= lt!1109382 lt!1109370)))

(assert (=> b!3270505 (isPrefix!2799 (++!8798 Nil!36443 (Cons!36443 (head!7113 (getSuffix!1408 lt!1108158 Nil!36443)) Nil!36443)) lt!1108158)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!518 (List!36567 List!36567) Unit!51218)

(assert (=> b!3270505 (= lt!1109370 (lemmaAddHeadSuffixToPrefixStillPrefix!518 Nil!36443 lt!1108158))))

(declare-fun lt!1109371 () Unit!51218)

(declare-fun lt!1109379 () Unit!51218)

(assert (=> b!3270505 (= lt!1109371 lt!1109379)))

(assert (=> b!3270505 (= lt!1109379 (lemmaAddHeadSuffixToPrefixStillPrefix!518 Nil!36443 lt!1108158))))

(assert (=> b!3270505 (= lt!1109383 (++!8798 Nil!36443 (Cons!36443 (head!7113 lt!1108158) Nil!36443)))))

(declare-fun lt!1109393 () Unit!51218)

(declare-fun e!2036695 () Unit!51218)

(assert (=> b!3270505 (= lt!1109393 e!2036695)))

(declare-fun c!552291 () Bool)

(assert (=> b!3270505 (= c!552291 (= (size!27503 Nil!36443) (size!27503 lt!1108158)))))

(declare-fun lt!1109395 () Unit!51218)

(declare-fun lt!1109384 () Unit!51218)

(assert (=> b!3270505 (= lt!1109395 lt!1109384)))

(assert (=> b!3270505 (<= (size!27503 Nil!36443) (size!27503 lt!1108158))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!326 (List!36567 List!36567) Unit!51218)

(assert (=> b!3270505 (= lt!1109384 (lemmaIsPrefixThenSmallerEqSize!326 Nil!36443 lt!1108158))))

(declare-fun e!2036694 () tuple2!35924)

(assert (=> b!3270505 (= e!2036693 e!2036694)))

(declare-fun b!3270506 () Bool)

(assert (=> b!3270506 (= e!2036694 e!2036692)))

(declare-fun lt!1109372 () tuple2!35924)

(assert (=> b!3270506 (= lt!1109372 call!237044)))

(declare-fun c!552295 () Bool)

(assert (=> b!3270506 (= c!552295 (isEmpty!20562 (_1!21096 lt!1109372)))))

(declare-fun b!3270507 () Bool)

(declare-fun e!2036690 () Bool)

(assert (=> b!3270507 (= e!2036690 (>= (size!27503 (_1!21096 lt!1109392)) (size!27503 Nil!36443)))))

(declare-fun b!3270508 () Bool)

(declare-fun Unit!51232 () Unit!51218)

(assert (=> b!3270508 (= e!2036695 Unit!51232)))

(declare-fun lt!1109390 () Unit!51218)

(assert (=> b!3270508 (= lt!1109390 call!237042)))

(declare-fun call!237047 () Bool)

(assert (=> b!3270508 call!237047))

(declare-fun lt!1109389 () Unit!51218)

(assert (=> b!3270508 (= lt!1109389 lt!1109390)))

(declare-fun lt!1109380 () Unit!51218)

(declare-fun call!237046 () Unit!51218)

(assert (=> b!3270508 (= lt!1109380 call!237046)))

(assert (=> b!3270508 (= lt!1108158 Nil!36443)))

(declare-fun lt!1109375 () Unit!51218)

(assert (=> b!3270508 (= lt!1109375 lt!1109380)))

(assert (=> b!3270508 false))

(declare-fun b!3270509 () Bool)

(assert (=> b!3270509 (= e!2036688 e!2036690)))

(declare-fun res!1329087 () Bool)

(assert (=> b!3270509 (=> res!1329087 e!2036690)))

(assert (=> b!3270509 (= res!1329087 (isEmpty!20562 (_1!21096 lt!1109392)))))

(declare-fun b!3270510 () Bool)

(assert (=> b!3270510 (= e!2036691 (tuple2!35925 Nil!36443 lt!1108158))))

(declare-fun b!3270511 () Bool)

(assert (=> b!3270511 (= e!2036692 lt!1109372)))

(declare-fun bm!237039 () Bool)

(assert (=> bm!237039 (= call!237048 (nullable!3411 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3270512 () Bool)

(assert (=> b!3270512 (= e!2036694 call!237044)))

(declare-fun bm!237040 () Bool)

(declare-fun call!237041 () C!20272)

(assert (=> bm!237040 (= call!237041 (head!7113 lt!1108158))))

(declare-fun b!3270513 () Bool)

(assert (=> b!3270513 (= e!2036689 (tuple2!35925 Nil!36443 lt!1108158))))

(declare-fun bm!237041 () Bool)

(assert (=> bm!237041 (= call!237043 (derivativeStep!2964 (regex!5284 (rule!7766 (h!41864 tokens!494))) call!237041))))

(declare-fun b!3270514 () Bool)

(declare-fun Unit!51233 () Unit!51218)

(assert (=> b!3270514 (= e!2036695 Unit!51233)))

(declare-fun b!3270515 () Bool)

(declare-fun c!552293 () Bool)

(assert (=> b!3270515 (= c!552293 call!237048)))

(declare-fun lt!1109381 () Unit!51218)

(declare-fun lt!1109385 () Unit!51218)

(assert (=> b!3270515 (= lt!1109381 lt!1109385)))

(assert (=> b!3270515 (= lt!1108158 Nil!36443)))

(assert (=> b!3270515 (= lt!1109385 call!237046)))

(declare-fun lt!1109388 () Unit!51218)

(declare-fun lt!1109376 () Unit!51218)

(assert (=> b!3270515 (= lt!1109388 lt!1109376)))

(assert (=> b!3270515 call!237047))

(assert (=> b!3270515 (= lt!1109376 call!237042)))

(assert (=> b!3270515 (= e!2036693 e!2036691)))

(declare-fun bm!237042 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!525 (List!36567 List!36567 List!36567) Unit!51218)

(assert (=> bm!237042 (= call!237046 (lemmaIsPrefixSameLengthThenSameList!525 lt!1108158 Nil!36443 lt!1108158))))

(declare-fun bm!237043 () Bool)

(assert (=> bm!237043 (= call!237047 (isPrefix!2799 lt!1108158 lt!1108158))))

(assert (= (and d!907065 c!552294) b!3270513))

(assert (= (and d!907065 (not c!552294)) b!3270504))

(assert (= (and b!3270504 c!552292) b!3270515))

(assert (= (and b!3270504 (not c!552292)) b!3270505))

(assert (= (and b!3270515 c!552293) b!3270502))

(assert (= (and b!3270515 (not c!552293)) b!3270510))

(assert (= (and b!3270505 c!552291) b!3270508))

(assert (= (and b!3270505 (not c!552291)) b!3270514))

(assert (= (and b!3270505 c!552296) b!3270506))

(assert (= (and b!3270505 (not c!552296)) b!3270512))

(assert (= (and b!3270506 c!552295) b!3270503))

(assert (= (and b!3270506 (not c!552295)) b!3270511))

(assert (= (or b!3270506 b!3270512) bm!237040))

(assert (= (or b!3270506 b!3270512) bm!237036))

(assert (= (or b!3270506 b!3270512) bm!237041))

(assert (= (or b!3270506 b!3270512) bm!237038))

(assert (= (or b!3270515 b!3270508) bm!237037))

(assert (= (or b!3270515 b!3270508) bm!237043))

(assert (= (or b!3270515 b!3270508) bm!237042))

(assert (= (or b!3270515 b!3270505) bm!237039))

(assert (= (and d!907065 res!1329088) b!3270509))

(assert (= (and b!3270509 (not res!1329087)) b!3270507))

(declare-fun m!3573677 () Bool)

(assert (=> bm!237037 m!3573677))

(declare-fun m!3573679 () Bool)

(assert (=> bm!237043 m!3573679))

(assert (=> bm!237040 m!3569635))

(declare-fun m!3573681 () Bool)

(assert (=> b!3270507 m!3573681))

(assert (=> b!3270507 m!3570629))

(declare-fun m!3573683 () Bool)

(assert (=> d!907065 m!3573683))

(declare-fun m!3573685 () Bool)

(assert (=> d!907065 m!3573685))

(declare-fun m!3573687 () Bool)

(assert (=> d!907065 m!3573687))

(assert (=> d!907065 m!3572433))

(declare-fun m!3573689 () Bool)

(assert (=> d!907065 m!3573689))

(declare-fun m!3573691 () Bool)

(assert (=> d!907065 m!3573691))

(declare-fun m!3573693 () Bool)

(assert (=> d!907065 m!3573693))

(assert (=> d!907065 m!3573685))

(declare-fun m!3573695 () Bool)

(assert (=> d!907065 m!3573695))

(assert (=> bm!237039 m!3572435))

(assert (=> bm!237038 m!3569527))

(declare-fun m!3573697 () Bool)

(assert (=> bm!237038 m!3573697))

(declare-fun m!3573699 () Bool)

(assert (=> bm!237042 m!3573699))

(declare-fun m!3573701 () Bool)

(assert (=> b!3270506 m!3573701))

(declare-fun m!3573703 () Bool)

(assert (=> b!3270505 m!3573703))

(declare-fun m!3573705 () Bool)

(assert (=> b!3270505 m!3573705))

(declare-fun m!3573707 () Bool)

(assert (=> b!3270505 m!3573707))

(assert (=> b!3270505 m!3573691))

(declare-fun m!3573709 () Bool)

(assert (=> b!3270505 m!3573709))

(declare-fun m!3573711 () Bool)

(assert (=> b!3270505 m!3573711))

(assert (=> b!3270505 m!3569637))

(declare-fun m!3573713 () Bool)

(assert (=> b!3270505 m!3573713))

(assert (=> b!3270505 m!3570629))

(assert (=> b!3270505 m!3573703))

(declare-fun m!3573715 () Bool)

(assert (=> b!3270505 m!3573715))

(assert (=> b!3270505 m!3569527))

(assert (=> b!3270505 m!3569635))

(declare-fun m!3573717 () Bool)

(assert (=> b!3270505 m!3573717))

(assert (=> b!3270505 m!3573691))

(assert (=> b!3270505 m!3573707))

(declare-fun m!3573719 () Bool)

(assert (=> b!3270505 m!3573719))

(assert (=> bm!237036 m!3569637))

(declare-fun m!3573721 () Bool)

(assert (=> b!3270509 m!3573721))

(declare-fun m!3573723 () Bool)

(assert (=> bm!237041 m!3573723))

(assert (=> b!3268759 d!907065))

(declare-fun bs!546177 () Bool)

(declare-fun d!907067 () Bool)

(assert (= bs!546177 (and d!907067 d!906855)))

(declare-fun lambda!118664 () Int)

(assert (=> bs!546177 (= lambda!118664 lambda!118656)))

(declare-fun bs!546178 () Bool)

(assert (= bs!546178 (and d!907067 d!906909)))

(assert (=> bs!546178 (= (and (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (h!41865 rules!2135)))) (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (h!41865 rules!2135))))) (= lambda!118664 lambda!118657))))

(declare-fun b!3270520 () Bool)

(declare-fun e!2036698 () Bool)

(assert (=> b!3270520 (= e!2036698 true)))

(assert (=> d!907067 e!2036698))

(assert (= d!907067 b!3270520))

(assert (=> b!3270520 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (dynLambda!14889 order!18869 lambda!118664))))

(assert (=> b!3270520 (< (dynLambda!14884 order!18861 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (dynLambda!14889 order!18869 lambda!118664))))

(assert (=> d!907067 (= (list!13032 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (seqFromList!3632 (_1!21096 lt!1108480))))) (list!13032 (seqFromList!3632 (_1!21096 lt!1108480))))))

(declare-fun lt!1109400 () Unit!51218)

(declare-fun ForallOf!564 (Int BalanceConc!21500) Unit!51218)

(assert (=> d!907067 (= lt!1109400 (ForallOf!564 lambda!118664 (seqFromList!3632 (_1!21096 lt!1108480))))))

(assert (=> d!907067 (= (lemmaSemiInverse!1191 (transformation!5284 (rule!7766 (h!41864 tokens!494))) (seqFromList!3632 (_1!21096 lt!1108480))) lt!1109400)))

(declare-fun b_lambda!90637 () Bool)

(assert (=> (not b_lambda!90637) (not d!907067)))

(declare-fun t!247691 () Bool)

(declare-fun tb!165871 () Bool)

(assert (=> (and b!3267900 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247691) tb!165871))

(declare-fun b!3270521 () Bool)

(declare-fun e!2036699 () Bool)

(declare-fun tp!1027237 () Bool)

(assert (=> b!3270521 (= e!2036699 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (seqFromList!3632 (_1!21096 lt!1108480)))))) tp!1027237))))

(declare-fun result!208566 () Bool)

(assert (=> tb!165871 (= result!208566 (and (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (seqFromList!3632 (_1!21096 lt!1108480))))) e!2036699))))

(assert (= tb!165871 b!3270521))

(declare-fun m!3573725 () Bool)

(assert (=> b!3270521 m!3573725))

(declare-fun m!3573727 () Bool)

(assert (=> tb!165871 m!3573727))

(assert (=> d!907067 t!247691))

(declare-fun b_and!221545 () Bool)

(assert (= b_and!221539 (and (=> t!247691 result!208566) b_and!221545)))

(declare-fun t!247693 () Bool)

(declare-fun tb!165873 () Bool)

(assert (=> (and b!3267901 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247693) tb!165873))

(declare-fun result!208568 () Bool)

(assert (= result!208568 result!208566))

(assert (=> d!907067 t!247693))

(declare-fun b_and!221547 () Bool)

(assert (= b_and!221537 (and (=> t!247693 result!208568) b_and!221547)))

(declare-fun tb!165875 () Bool)

(declare-fun t!247695 () Bool)

(assert (=> (and b!3267911 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247695) tb!165875))

(declare-fun result!208570 () Bool)

(assert (= result!208570 result!208566))

(assert (=> d!907067 t!247695))

(declare-fun b_and!221549 () Bool)

(assert (= b_and!221541 (and (=> t!247695 result!208570) b_and!221549)))

(declare-fun tb!165877 () Bool)

(declare-fun t!247697 () Bool)

(assert (=> (and b!3268812 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247697) tb!165877))

(declare-fun result!208572 () Bool)

(assert (= result!208572 result!208566))

(assert (=> d!907067 t!247697))

(declare-fun b_and!221551 () Bool)

(assert (= b_and!221543 (and (=> t!247697 result!208572) b_and!221551)))

(declare-fun t!247699 () Bool)

(declare-fun tb!165879 () Bool)

(assert (=> (and b!3268826 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247699) tb!165879))

(declare-fun result!208574 () Bool)

(assert (= result!208574 result!208566))

(assert (=> d!907067 t!247699))

(declare-fun b_and!221553 () Bool)

(assert (= b_and!221535 (and (=> t!247699 result!208574) b_and!221553)))

(declare-fun b_lambda!90639 () Bool)

(assert (=> (not b_lambda!90639) (not d!907067)))

(declare-fun t!247701 () Bool)

(declare-fun tb!165881 () Bool)

(assert (=> (and b!3267900 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247701) tb!165881))

(declare-fun result!208576 () Bool)

(assert (=> tb!165881 (= result!208576 (inv!21 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (seqFromList!3632 (_1!21096 lt!1108480)))))))

(declare-fun m!3573729 () Bool)

(assert (=> tb!165881 m!3573729))

(assert (=> d!907067 t!247701))

(declare-fun b_and!221555 () Bool)

(assert (= b_and!221531 (and (=> t!247701 result!208576) b_and!221555)))

(declare-fun t!247703 () Bool)

(declare-fun tb!165883 () Bool)

(assert (=> (and b!3268812 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247703) tb!165883))

(declare-fun result!208578 () Bool)

(assert (= result!208578 result!208576))

(assert (=> d!907067 t!247703))

(declare-fun b_and!221557 () Bool)

(assert (= b_and!221533 (and (=> t!247703 result!208578) b_and!221557)))

(declare-fun t!247705 () Bool)

(declare-fun tb!165885 () Bool)

(assert (=> (and b!3268826 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247705) tb!165885))

(declare-fun result!208580 () Bool)

(assert (= result!208580 result!208576))

(assert (=> d!907067 t!247705))

(declare-fun b_and!221559 () Bool)

(assert (= b_and!221527 (and (=> t!247705 result!208580) b_and!221559)))

(declare-fun t!247707 () Bool)

(declare-fun tb!165887 () Bool)

(assert (=> (and b!3267911 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247707) tb!165887))

(declare-fun result!208582 () Bool)

(assert (= result!208582 result!208576))

(assert (=> d!907067 t!247707))

(declare-fun b_and!221561 () Bool)

(assert (= b_and!221529 (and (=> t!247707 result!208582) b_and!221561)))

(declare-fun tb!165889 () Bool)

(declare-fun t!247709 () Bool)

(assert (=> (and b!3267901 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247709) tb!165889))

(declare-fun result!208584 () Bool)

(assert (= result!208584 result!208576))

(assert (=> d!907067 t!247709))

(declare-fun b_and!221563 () Bool)

(assert (= b_and!221525 (and (=> t!247709 result!208584) b_and!221563)))

(assert (=> d!907067 m!3570645))

(assert (=> d!907067 m!3573671))

(declare-fun m!3573731 () Bool)

(assert (=> d!907067 m!3573731))

(declare-fun m!3573733 () Bool)

(assert (=> d!907067 m!3573733))

(assert (=> d!907067 m!3570645))

(declare-fun m!3573735 () Bool)

(assert (=> d!907067 m!3573735))

(assert (=> d!907067 m!3570645))

(assert (=> d!907067 m!3573731))

(assert (=> d!907067 m!3573733))

(declare-fun m!3573737 () Bool)

(assert (=> d!907067 m!3573737))

(assert (=> b!3268759 d!907067))

(declare-fun d!907069 () Bool)

(assert (=> d!907069 (= (isEmpty!20562 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))) ((_ is Nil!36443) (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))

(assert (=> b!3268759 d!907069))

(declare-fun d!907071 () Bool)

(declare-fun lt!1109401 () Int)

(assert (=> d!907071 (>= lt!1109401 0)))

(declare-fun e!2036701 () Int)

(assert (=> d!907071 (= lt!1109401 e!2036701)))

(declare-fun c!552298 () Bool)

(assert (=> d!907071 (= c!552298 ((_ is Nil!36443) Nil!36443))))

(assert (=> d!907071 (= (size!27503 Nil!36443) lt!1109401)))

(declare-fun b!3270522 () Bool)

(assert (=> b!3270522 (= e!2036701 0)))

(declare-fun b!3270523 () Bool)

(assert (=> b!3270523 (= e!2036701 (+ 1 (size!27503 (t!247338 Nil!36443))))))

(assert (= (and d!907071 c!552298) b!3270522))

(assert (= (and d!907071 (not c!552298)) b!3270523))

(declare-fun m!3573739 () Bool)

(assert (=> b!3270523 m!3573739))

(assert (=> b!3268759 d!907071))

(declare-fun d!907073 () Bool)

(assert (=> d!907073 (= (apply!8348 (transformation!5284 (rule!7766 (h!41864 tokens!494))) (seqFromList!3632 (_1!21096 lt!1108480))) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (seqFromList!3632 (_1!21096 lt!1108480))))))

(declare-fun b_lambda!90641 () Bool)

(assert (=> (not b_lambda!90641) (not d!907073)))

(assert (=> d!907073 t!247703))

(declare-fun b_and!221565 () Bool)

(assert (= b_and!221557 (and (=> t!247703 result!208578) b_and!221565)))

(assert (=> d!907073 t!247705))

(declare-fun b_and!221567 () Bool)

(assert (= b_and!221559 (and (=> t!247705 result!208580) b_and!221567)))

(assert (=> d!907073 t!247707))

(declare-fun b_and!221569 () Bool)

(assert (= b_and!221561 (and (=> t!247707 result!208582) b_and!221569)))

(assert (=> d!907073 t!247709))

(declare-fun b_and!221571 () Bool)

(assert (= b_and!221563 (and (=> t!247709 result!208584) b_and!221571)))

(assert (=> d!907073 t!247701))

(declare-fun b_and!221573 () Bool)

(assert (= b_and!221555 (and (=> t!247701 result!208576) b_and!221573)))

(assert (=> d!907073 m!3570645))

(assert (=> d!907073 m!3573731))

(assert (=> b!3268759 d!907073))

(declare-fun d!907075 () Bool)

(declare-fun e!2036704 () Bool)

(assert (=> d!907075 e!2036704))

(declare-fun res!1329091 () Bool)

(assert (=> d!907075 (=> res!1329091 e!2036704)))

(assert (=> d!907075 (= res!1329091 (isEmpty!20562 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))

(declare-fun lt!1109404 () Unit!51218)

(declare-fun choose!19036 (Regex!10043 List!36567) Unit!51218)

(assert (=> d!907075 (= lt!1109404 (choose!19036 (regex!5284 (rule!7766 (h!41864 tokens!494))) lt!1108158))))

(assert (=> d!907075 (validRegex!4567 (regex!5284 (rule!7766 (h!41864 tokens!494))))))

(assert (=> d!907075 (= (longestMatchIsAcceptedByMatchOrIsEmpty!818 (regex!5284 (rule!7766 (h!41864 tokens!494))) lt!1108158) lt!1109404)))

(declare-fun b!3270526 () Bool)

(assert (=> b!3270526 (= e!2036704 (matchR!4665 (regex!5284 (rule!7766 (h!41864 tokens!494))) (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))

(assert (= (and d!907075 (not res!1329091)) b!3270526))

(assert (=> d!907075 m!3569527))

(assert (=> d!907075 m!3570649))

(assert (=> d!907075 m!3570629))

(assert (=> d!907075 m!3570629))

(assert (=> d!907075 m!3569527))

(assert (=> d!907075 m!3570631))

(declare-fun m!3573741 () Bool)

(assert (=> d!907075 m!3573741))

(assert (=> d!907075 m!3572433))

(assert (=> b!3270526 m!3570629))

(assert (=> b!3270526 m!3569527))

(assert (=> b!3270526 m!3570629))

(assert (=> b!3270526 m!3569527))

(assert (=> b!3270526 m!3570631))

(assert (=> b!3270526 m!3570633))

(assert (=> b!3268759 d!907075))

(declare-fun d!907077 () Bool)

(assert (=> d!907077 (= (seqFromList!3632 (_1!21096 lt!1108480)) (fromListB!1586 (_1!21096 lt!1108480)))))

(declare-fun bs!546179 () Bool)

(assert (= bs!546179 d!907077))

(declare-fun m!3573743 () Bool)

(assert (=> bs!546179 m!3573743))

(assert (=> b!3268759 d!907077))

(declare-fun d!907079 () Bool)

(declare-fun e!2036707 () Bool)

(assert (=> d!907079 e!2036707))

(declare-fun res!1329094 () Bool)

(assert (=> d!907079 (=> (not res!1329094) (not e!2036707))))

(declare-fun lt!1109407 () BalanceConc!21500)

(assert (=> d!907079 (= res!1329094 (= (list!13032 lt!1109407) lt!1108158))))

(declare-fun fromList!647 (List!36567) Conc!10943)

(assert (=> d!907079 (= lt!1109407 (BalanceConc!21501 (fromList!647 lt!1108158)))))

(assert (=> d!907079 (= (fromListB!1586 lt!1108158) lt!1109407)))

(declare-fun b!3270529 () Bool)

(assert (=> b!3270529 (= e!2036707 (isBalanced!3263 (fromList!647 lt!1108158)))))

(assert (= (and d!907079 res!1329094) b!3270529))

(declare-fun m!3573745 () Bool)

(assert (=> d!907079 m!3573745))

(declare-fun m!3573747 () Bool)

(assert (=> d!907079 m!3573747))

(assert (=> b!3270529 m!3573747))

(assert (=> b!3270529 m!3573747))

(declare-fun m!3573749 () Bool)

(assert (=> b!3270529 m!3573749))

(assert (=> d!905885 d!907079))

(assert (=> bm!236843 d!906605))

(declare-fun d!907081 () Bool)

(declare-fun lt!1109408 () Bool)

(assert (=> d!907081 (= lt!1109408 (select (content!4944 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241))))) lt!1108139))))

(declare-fun e!2036709 () Bool)

(assert (=> d!907081 (= lt!1109408 e!2036709)))

(declare-fun res!1329096 () Bool)

(assert (=> d!907081 (=> (not res!1329096) (not e!2036709))))

(assert (=> d!907081 (= res!1329096 ((_ is Cons!36443) (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241))))))))

(assert (=> d!907081 (= (contains!6567 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241)))) lt!1108139) lt!1109408)))

(declare-fun b!3270530 () Bool)

(declare-fun e!2036708 () Bool)

(assert (=> b!3270530 (= e!2036709 e!2036708)))

(declare-fun res!1329095 () Bool)

(assert (=> b!3270530 (=> res!1329095 e!2036708)))

(assert (=> b!3270530 (= res!1329095 (= (h!41863 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241))))) lt!1108139))))

(declare-fun b!3270531 () Bool)

(assert (=> b!3270531 (= e!2036708 (contains!6567 (t!247338 (t!247338 (usedCharacters!586 (regex!5284 (rule!7766 separatorToken!241))))) lt!1108139))))

(assert (= (and d!907081 res!1329096) b!3270530))

(assert (= (and b!3270530 (not res!1329095)) b!3270531))

(assert (=> d!907081 m!3572359))

(declare-fun m!3573751 () Bool)

(assert (=> d!907081 m!3573751))

(declare-fun m!3573753 () Bool)

(assert (=> b!3270531 m!3573753))

(assert (=> b!3268781 d!907081))

(declare-fun d!907083 () Bool)

(declare-fun lt!1109409 () Int)

(assert (=> d!907083 (= lt!1109409 (size!27506 (list!13033 (_1!21094 lt!1108326))))))

(assert (=> d!907083 (= lt!1109409 (size!27512 (c!551640 (_1!21094 lt!1108326))))))

(assert (=> d!907083 (= (size!27508 (_1!21094 lt!1108326)) lt!1109409)))

(declare-fun bs!546180 () Bool)

(assert (= bs!546180 d!907083))

(assert (=> bs!546180 m!3570107))

(assert (=> bs!546180 m!3570107))

(declare-fun m!3573755 () Bool)

(assert (=> bs!546180 m!3573755))

(declare-fun m!3573757 () Bool)

(assert (=> bs!546180 m!3573757))

(assert (=> d!905935 d!907083))

(declare-fun d!907085 () Bool)

(declare-fun e!2036711 () Bool)

(assert (=> d!907085 e!2036711))

(declare-fun res!1329097 () Bool)

(assert (=> d!907085 (=> (not res!1329097) (not e!2036711))))

(declare-fun lt!1109443 () tuple2!35920)

(assert (=> d!907085 (= res!1329097 (= (list!13033 (_1!21094 lt!1109443)) (list!13033 (_1!21094 (lexRec!701 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(declare-fun e!2036710 () tuple2!35920)

(assert (=> d!907085 (= lt!1109443 e!2036710)))

(declare-fun c!552300 () Bool)

(declare-fun lt!1109411 () Option!7260)

(assert (=> d!907085 (= c!552300 ((_ is Some!7259) lt!1109411))))

(assert (=> d!907085 (= lt!1109411 (maxPrefixZipperSequenceV2!488 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241) (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))

(declare-fun lt!1109425 () Unit!51218)

(declare-fun lt!1109427 () Unit!51218)

(assert (=> d!907085 (= lt!1109425 lt!1109427)))

(declare-fun lt!1109415 () List!36567)

(declare-fun lt!1109440 () List!36567)

(assert (=> d!907085 (isSuffix!863 lt!1109415 (++!8798 lt!1109440 lt!1109415))))

(assert (=> d!907085 (= lt!1109427 (lemmaConcatTwoListThenFSndIsSuffix!548 lt!1109440 lt!1109415))))

(assert (=> d!907085 (= lt!1109415 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))

(assert (=> d!907085 (= lt!1109440 (list!13032 (BalanceConc!21501 Empty!10943)))))

(assert (=> d!907085 (= (lexTailRecV2!956 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241) (BalanceConc!21501 Empty!10943) (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241) (BalanceConc!21503 Empty!10944)) lt!1109443)))

(declare-fun b!3270532 () Bool)

(assert (=> b!3270532 (= e!2036711 (= (list!13032 (_2!21094 lt!1109443)) (list!13032 (_2!21094 (lexRec!701 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(declare-fun lt!1109433 () Option!7260)

(declare-fun lt!1109418 () tuple2!35920)

(declare-fun b!3270533 () Bool)

(assert (=> b!3270533 (= lt!1109418 (lexRec!701 thiss!18206 rules!2135 (_2!21098 (v!35969 lt!1109433))))))

(declare-fun e!2036712 () tuple2!35920)

(assert (=> b!3270533 (= e!2036712 (tuple2!35921 (prepend!1195 (_1!21094 lt!1109418) (_1!21098 (v!35969 lt!1109433))) (_2!21094 lt!1109418)))))

(declare-fun b!3270534 () Bool)

(declare-fun e!2036713 () tuple2!35920)

(declare-fun lt!1109419 () BalanceConc!21500)

(assert (=> b!3270534 (= e!2036713 (tuple2!35921 (BalanceConc!21503 Empty!10944) lt!1109419))))

(declare-fun b!3270535 () Bool)

(declare-fun lt!1109442 () BalanceConc!21500)

(assert (=> b!3270535 (= e!2036710 (lexTailRecV2!956 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241) lt!1109442 (_2!21098 (v!35969 lt!1109411)) (append!889 (BalanceConc!21503 Empty!10944) (_1!21098 (v!35969 lt!1109411)))))))

(declare-fun lt!1109438 () tuple2!35920)

(assert (=> b!3270535 (= lt!1109438 (lexRec!701 thiss!18206 rules!2135 (_2!21098 (v!35969 lt!1109411))))))

(declare-fun lt!1109420 () List!36567)

(assert (=> b!3270535 (= lt!1109420 (list!13032 (BalanceConc!21501 Empty!10943)))))

(declare-fun lt!1109413 () List!36567)

(assert (=> b!3270535 (= lt!1109413 (list!13032 (charsOf!3300 (_1!21098 (v!35969 lt!1109411)))))))

(declare-fun lt!1109429 () List!36567)

(assert (=> b!3270535 (= lt!1109429 (list!13032 (_2!21098 (v!35969 lt!1109411))))))

(declare-fun lt!1109434 () Unit!51218)

(assert (=> b!3270535 (= lt!1109434 (lemmaConcatAssociativity!1805 lt!1109420 lt!1109413 lt!1109429))))

(assert (=> b!3270535 (= (++!8798 (++!8798 lt!1109420 lt!1109413) lt!1109429) (++!8798 lt!1109420 (++!8798 lt!1109413 lt!1109429)))))

(declare-fun lt!1109437 () Unit!51218)

(assert (=> b!3270535 (= lt!1109437 lt!1109434)))

(assert (=> b!3270535 (= lt!1109433 (maxPrefixZipperSequence!1094 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))

(declare-fun c!552301 () Bool)

(assert (=> b!3270535 (= c!552301 ((_ is Some!7259) lt!1109433))))

(assert (=> b!3270535 (= (lexRec!701 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)) e!2036712)))

(declare-fun lt!1109430 () Unit!51218)

(declare-fun Unit!51234 () Unit!51218)

(assert (=> b!3270535 (= lt!1109430 Unit!51234)))

(declare-fun lt!1109412 () List!36568)

(assert (=> b!3270535 (= lt!1109412 (list!13033 (BalanceConc!21503 Empty!10944)))))

(declare-fun lt!1109421 () List!36568)

(assert (=> b!3270535 (= lt!1109421 (Cons!36444 (_1!21098 (v!35969 lt!1109411)) Nil!36444))))

(declare-fun lt!1109424 () List!36568)

(assert (=> b!3270535 (= lt!1109424 (list!13033 (_1!21094 lt!1109438)))))

(declare-fun lt!1109435 () Unit!51218)

(assert (=> b!3270535 (= lt!1109435 (lemmaConcatAssociativity!1806 lt!1109412 lt!1109421 lt!1109424))))

(assert (=> b!3270535 (= (++!8803 (++!8803 lt!1109412 lt!1109421) lt!1109424) (++!8803 lt!1109412 (++!8803 lt!1109421 lt!1109424)))))

(declare-fun lt!1109431 () Unit!51218)

(assert (=> b!3270535 (= lt!1109431 lt!1109435)))

(declare-fun lt!1109426 () List!36567)

(assert (=> b!3270535 (= lt!1109426 (++!8798 (list!13032 (BalanceConc!21501 Empty!10943)) (list!13032 (charsOf!3300 (_1!21098 (v!35969 lt!1109411))))))))

(declare-fun lt!1109414 () List!36567)

(assert (=> b!3270535 (= lt!1109414 (list!13032 (_2!21098 (v!35969 lt!1109411))))))

(declare-fun lt!1109432 () List!36568)

(assert (=> b!3270535 (= lt!1109432 (list!13033 (append!889 (BalanceConc!21503 Empty!10944) (_1!21098 (v!35969 lt!1109411)))))))

(declare-fun lt!1109428 () Unit!51218)

(assert (=> b!3270535 (= lt!1109428 (lemmaLexThenLexPrefix!466 thiss!18206 rules!2135 lt!1109426 lt!1109414 lt!1109432 (list!13033 (_1!21094 lt!1109438)) (list!13032 (_2!21094 lt!1109438))))))

(assert (=> b!3270535 (= (lexList!1347 thiss!18206 rules!2135 lt!1109426) (tuple2!35917 lt!1109432 Nil!36443))))

(declare-fun lt!1109423 () Unit!51218)

(assert (=> b!3270535 (= lt!1109423 lt!1109428)))

(assert (=> b!3270535 (= lt!1109419 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (_1!21098 (v!35969 lt!1109411)))))))

(declare-fun lt!1109439 () Option!7260)

(assert (=> b!3270535 (= lt!1109439 (maxPrefixZipperSequence!1094 thiss!18206 rules!2135 lt!1109419))))

(declare-fun c!552302 () Bool)

(assert (=> b!3270535 (= c!552302 ((_ is Some!7259) lt!1109439))))

(assert (=> b!3270535 (= (lexRec!701 thiss!18206 rules!2135 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (_1!21098 (v!35969 lt!1109411))))) e!2036713)))

(declare-fun lt!1109416 () Unit!51218)

(declare-fun Unit!51235 () Unit!51218)

(assert (=> b!3270535 (= lt!1109416 Unit!51235)))

(assert (=> b!3270535 (= lt!1109442 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (_1!21098 (v!35969 lt!1109411)))))))

(declare-fun lt!1109410 () List!36567)

(assert (=> b!3270535 (= lt!1109410 (list!13032 lt!1109442))))

(declare-fun lt!1109436 () List!36567)

(assert (=> b!3270535 (= lt!1109436 (list!13032 (_2!21098 (v!35969 lt!1109411))))))

(declare-fun lt!1109441 () Unit!51218)

(assert (=> b!3270535 (= lt!1109441 (lemmaConcatTwoListThenFSndIsSuffix!548 lt!1109410 lt!1109436))))

(assert (=> b!3270535 (isSuffix!863 lt!1109436 (++!8798 lt!1109410 lt!1109436))))

(declare-fun lt!1109417 () Unit!51218)

(assert (=> b!3270535 (= lt!1109417 lt!1109441)))

(declare-fun b!3270536 () Bool)

(assert (=> b!3270536 (= e!2036710 (tuple2!35921 (BalanceConc!21503 Empty!10944) (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))

(declare-fun b!3270537 () Bool)

(assert (=> b!3270537 (= e!2036712 (tuple2!35921 (BalanceConc!21503 Empty!10944) (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))

(declare-fun b!3270538 () Bool)

(declare-fun lt!1109422 () tuple2!35920)

(assert (=> b!3270538 (= lt!1109422 (lexRec!701 thiss!18206 rules!2135 (_2!21098 (v!35969 lt!1109439))))))

(assert (=> b!3270538 (= e!2036713 (tuple2!35921 (prepend!1195 (_1!21094 lt!1109422) (_1!21098 (v!35969 lt!1109439))) (_2!21094 lt!1109422)))))

(assert (= (and d!907085 c!552300) b!3270535))

(assert (= (and d!907085 (not c!552300)) b!3270536))

(assert (= (and b!3270535 c!552301) b!3270533))

(assert (= (and b!3270535 (not c!552301)) b!3270537))

(assert (= (and b!3270535 c!552302) b!3270538))

(assert (= (and b!3270535 (not c!552302)) b!3270534))

(assert (= (and d!907085 res!1329097) b!3270532))

(declare-fun m!3573759 () Bool)

(assert (=> b!3270538 m!3573759))

(declare-fun m!3573761 () Bool)

(assert (=> b!3270538 m!3573761))

(declare-fun m!3573763 () Bool)

(assert (=> b!3270535 m!3573763))

(declare-fun m!3573765 () Bool)

(assert (=> b!3270535 m!3573765))

(declare-fun m!3573767 () Bool)

(assert (=> b!3270535 m!3573767))

(declare-fun m!3573769 () Bool)

(assert (=> b!3270535 m!3573769))

(declare-fun m!3573771 () Bool)

(assert (=> b!3270535 m!3573771))

(declare-fun m!3573773 () Bool)

(assert (=> b!3270535 m!3573773))

(assert (=> b!3270535 m!3569461))

(declare-fun m!3573775 () Bool)

(assert (=> b!3270535 m!3573775))

(assert (=> b!3270535 m!3570101))

(assert (=> b!3270535 m!3569461))

(declare-fun m!3573777 () Bool)

(assert (=> b!3270535 m!3573777))

(assert (=> b!3270535 m!3570235))

(declare-fun m!3573779 () Bool)

(assert (=> b!3270535 m!3573779))

(declare-fun m!3573781 () Bool)

(assert (=> b!3270535 m!3573781))

(declare-fun m!3573783 () Bool)

(assert (=> b!3270535 m!3573783))

(assert (=> b!3270535 m!3569461))

(declare-fun m!3573785 () Bool)

(assert (=> b!3270535 m!3573785))

(declare-fun m!3573787 () Bool)

(assert (=> b!3270535 m!3573787))

(declare-fun m!3573789 () Bool)

(assert (=> b!3270535 m!3573789))

(declare-fun m!3573791 () Bool)

(assert (=> b!3270535 m!3573791))

(assert (=> b!3270535 m!3570235))

(declare-fun m!3573793 () Bool)

(assert (=> b!3270535 m!3573793))

(declare-fun m!3573795 () Bool)

(assert (=> b!3270535 m!3573795))

(declare-fun m!3573797 () Bool)

(assert (=> b!3270535 m!3573797))

(assert (=> b!3270535 m!3573767))

(declare-fun m!3573799 () Bool)

(assert (=> b!3270535 m!3573799))

(declare-fun m!3573801 () Bool)

(assert (=> b!3270535 m!3573801))

(assert (=> b!3270535 m!3573771))

(declare-fun m!3573803 () Bool)

(assert (=> b!3270535 m!3573803))

(assert (=> b!3270535 m!3573781))

(declare-fun m!3573805 () Bool)

(assert (=> b!3270535 m!3573805))

(assert (=> b!3270535 m!3573791))

(declare-fun m!3573807 () Bool)

(assert (=> b!3270535 m!3573807))

(assert (=> b!3270535 m!3573799))

(declare-fun m!3573809 () Bool)

(assert (=> b!3270535 m!3573809))

(assert (=> b!3270535 m!3573763))

(declare-fun m!3573811 () Bool)

(assert (=> b!3270535 m!3573811))

(assert (=> b!3270535 m!3573803))

(declare-fun m!3573813 () Bool)

(assert (=> b!3270535 m!3573813))

(declare-fun m!3573815 () Bool)

(assert (=> b!3270535 m!3573815))

(assert (=> b!3270535 m!3573785))

(declare-fun m!3573817 () Bool)

(assert (=> b!3270535 m!3573817))

(declare-fun m!3573819 () Bool)

(assert (=> b!3270535 m!3573819))

(assert (=> b!3270535 m!3573817))

(declare-fun m!3573821 () Bool)

(assert (=> b!3270535 m!3573821))

(assert (=> b!3270535 m!3573813))

(assert (=> b!3270535 m!3573785))

(declare-fun m!3573823 () Bool)

(assert (=> b!3270535 m!3573823))

(assert (=> b!3270535 m!3573803))

(assert (=> b!3270535 m!3573793))

(declare-fun m!3573825 () Bool)

(assert (=> d!907085 m!3573825))

(assert (=> d!907085 m!3569461))

(assert (=> d!907085 m!3570109))

(assert (=> d!907085 m!3569461))

(assert (=> d!907085 m!3573777))

(declare-fun m!3573827 () Bool)

(assert (=> d!907085 m!3573827))

(declare-fun m!3573829 () Bool)

(assert (=> d!907085 m!3573829))

(assert (=> d!907085 m!3573827))

(assert (=> d!907085 m!3570235))

(assert (=> d!907085 m!3569461))

(assert (=> d!907085 m!3569461))

(declare-fun m!3573831 () Bool)

(assert (=> d!907085 m!3573831))

(declare-fun m!3573833 () Bool)

(assert (=> d!907085 m!3573833))

(declare-fun m!3573835 () Bool)

(assert (=> d!907085 m!3573835))

(declare-fun m!3573837 () Bool)

(assert (=> b!3270533 m!3573837))

(declare-fun m!3573839 () Bool)

(assert (=> b!3270533 m!3573839))

(declare-fun m!3573841 () Bool)

(assert (=> b!3270532 m!3573841))

(assert (=> b!3270532 m!3569461))

(assert (=> b!3270532 m!3573777))

(declare-fun m!3573843 () Bool)

(assert (=> b!3270532 m!3573843))

(assert (=> d!905935 d!907085))

(declare-fun d!907087 () Bool)

(assert (=> d!907087 (= (isEmpty!20561 (_1!21092 lt!1108338)) ((_ is Nil!36444) (_1!21092 lt!1108338)))))

(assert (=> b!3268456 d!907087))

(declare-fun d!907089 () Bool)

(assert (=> d!907089 (= (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))) (isBalanced!3263 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))))))

(declare-fun bs!546181 () Bool)

(assert (= bs!546181 d!907089))

(declare-fun m!3573845 () Bool)

(assert (=> bs!546181 m!3573845))

(assert (=> tb!165557 d!907089))

(declare-fun d!907091 () Bool)

(declare-fun lt!1109444 () Int)

(assert (=> d!907091 (>= lt!1109444 0)))

(declare-fun e!2036714 () Int)

(assert (=> d!907091 (= lt!1109444 e!2036714)))

(declare-fun c!552303 () Bool)

(assert (=> d!907091 (= c!552303 ((_ is Nil!36443) (_2!21092 lt!1108334)))))

(assert (=> d!907091 (= (size!27503 (_2!21092 lt!1108334)) lt!1109444)))

(declare-fun b!3270539 () Bool)

(assert (=> b!3270539 (= e!2036714 0)))

(declare-fun b!3270540 () Bool)

(assert (=> b!3270540 (= e!2036714 (+ 1 (size!27503 (t!247338 (_2!21092 lt!1108334)))))))

(assert (= (and d!907091 c!552303) b!3270539))

(assert (= (and d!907091 (not c!552303)) b!3270540))

(declare-fun m!3573847 () Bool)

(assert (=> b!3270540 m!3573847))

(assert (=> b!3268446 d!907091))

(declare-fun d!907093 () Bool)

(declare-fun lt!1109445 () Int)

(assert (=> d!907093 (>= lt!1109445 0)))

(declare-fun e!2036715 () Int)

(assert (=> d!907093 (= lt!1109445 e!2036715)))

(declare-fun c!552304 () Bool)

(assert (=> d!907093 (= c!552304 ((_ is Nil!36443) (_2!21093 (v!35952 lt!1108148))))))

(assert (=> d!907093 (= (size!27503 (_2!21093 (v!35952 lt!1108148))) lt!1109445)))

(declare-fun b!3270541 () Bool)

(assert (=> b!3270541 (= e!2036715 0)))

(declare-fun b!3270542 () Bool)

(assert (=> b!3270542 (= e!2036715 (+ 1 (size!27503 (t!247338 (_2!21093 (v!35952 lt!1108148))))))))

(assert (= (and d!907093 c!552304) b!3270541))

(assert (= (and d!907093 (not c!552304)) b!3270542))

(declare-fun m!3573849 () Bool)

(assert (=> b!3270542 m!3573849))

(assert (=> b!3268446 d!907093))

(assert (=> b!3268168 d!906775))

(declare-fun d!907095 () Bool)

(assert (=> d!907095 (= (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241))))) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241))))))))

(declare-fun b_lambda!90643 () Bool)

(assert (=> (not b_lambda!90643) (not d!907095)))

(declare-fun tb!165891 () Bool)

(declare-fun t!247711 () Bool)

(assert (=> (and b!3267900 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247711) tb!165891))

(declare-fun result!208586 () Bool)

(assert (=> tb!165891 (= result!208586 (inv!21 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241)))))))))

(declare-fun m!3573851 () Bool)

(assert (=> tb!165891 m!3573851))

(assert (=> d!907095 t!247711))

(declare-fun b_and!221575 () Bool)

(assert (= b_and!221573 (and (=> t!247711 result!208586) b_and!221575)))

(declare-fun t!247713 () Bool)

(declare-fun tb!165893 () Bool)

(assert (=> (and b!3267901 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247713) tb!165893))

(declare-fun result!208588 () Bool)

(assert (= result!208588 result!208586))

(assert (=> d!907095 t!247713))

(declare-fun b_and!221577 () Bool)

(assert (= b_and!221571 (and (=> t!247713 result!208588) b_and!221577)))

(declare-fun t!247715 () Bool)

(declare-fun tb!165895 () Bool)

(assert (=> (and b!3267911 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247715) tb!165895))

(declare-fun result!208590 () Bool)

(assert (= result!208590 result!208586))

(assert (=> d!907095 t!247715))

(declare-fun b_and!221579 () Bool)

(assert (= b_and!221569 (and (=> t!247715 result!208590) b_and!221579)))

(declare-fun t!247717 () Bool)

(declare-fun tb!165897 () Bool)

(assert (=> (and b!3268812 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247717) tb!165897))

(declare-fun result!208592 () Bool)

(assert (= result!208592 result!208586))

(assert (=> d!907095 t!247717))

(declare-fun b_and!221581 () Bool)

(assert (= b_and!221565 (and (=> t!247717 result!208592) b_and!221581)))

(declare-fun t!247719 () Bool)

(declare-fun tb!165899 () Bool)

(assert (=> (and b!3268826 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247719) tb!165899))

(declare-fun result!208594 () Bool)

(assert (= result!208594 result!208586))

(assert (=> d!907095 t!247719))

(declare-fun b_and!221583 () Bool)

(assert (= b_and!221567 (and (=> t!247719 result!208594) b_and!221583)))

(assert (=> d!907095 m!3569781))

(declare-fun m!3573853 () Bool)

(assert (=> d!907095 m!3573853))

(assert (=> b!3268168 d!907095))

(declare-fun d!907097 () Bool)

(assert (=> d!907097 (= (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241)))) (fromListB!1586 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108241)))))))

(declare-fun bs!546182 () Bool)

(assert (= bs!546182 d!907097))

(declare-fun m!3573855 () Bool)

(assert (=> bs!546182 m!3573855))

(assert (=> b!3268168 d!907097))

(declare-fun d!907099 () Bool)

(assert (=> d!907099 (= (isEmpty!20571 lt!1108156) (not ((_ is Some!7257) lt!1108156)))))

(assert (=> d!906073 d!907099))

(assert (=> b!3267994 d!906989))

(assert (=> b!3267994 d!906551))

(declare-fun d!907101 () Bool)

(assert (=> d!907101 (= (list!13033 (singletonSeq!2380 separatorToken!241)) (list!13036 (c!551640 (singletonSeq!2380 separatorToken!241))))))

(declare-fun bs!546183 () Bool)

(assert (= bs!546183 d!907101))

(declare-fun m!3573857 () Bool)

(assert (=> bs!546183 m!3573857))

(assert (=> d!905857 d!907101))

(declare-fun d!907103 () Bool)

(assert (=> d!907103 (= (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241))))) (list!13036 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)))))))))

(declare-fun bs!546184 () Bool)

(assert (= bs!546184 d!907103))

(declare-fun m!3573859 () Bool)

(assert (=> bs!546184 m!3573859))

(assert (=> d!905857 d!907103))

(declare-fun d!907105 () Bool)

(declare-fun e!2036717 () Bool)

(assert (=> d!907105 e!2036717))

(declare-fun res!1329098 () Bool)

(assert (=> d!907105 (=> (not res!1329098) (not e!2036717))))

(declare-fun lt!1109446 () BalanceConc!21502)

(assert (=> d!907105 (= res!1329098 (= (list!13033 lt!1109446) (Cons!36444 separatorToken!241 Nil!36444)))))

(assert (=> d!907105 (= lt!1109446 (singleton!1020 separatorToken!241))))

(assert (=> d!907105 (= (singletonSeq!2380 separatorToken!241) lt!1109446)))

(declare-fun b!3270543 () Bool)

(assert (=> b!3270543 (= e!2036717 (isBalanced!3261 (c!551640 lt!1109446)))))

(assert (= (and d!907105 res!1329098) b!3270543))

(declare-fun m!3573861 () Bool)

(assert (=> d!907105 m!3573861))

(declare-fun m!3573863 () Bool)

(assert (=> d!907105 m!3573863))

(declare-fun m!3573865 () Bool)

(assert (=> b!3270543 m!3573865))

(assert (=> d!905857 d!907105))

(declare-fun d!907107 () Bool)

(declare-fun lt!1109447 () BalanceConc!21500)

(assert (=> d!907107 (= (list!13032 lt!1109447) (printList!1423 thiss!18206 (list!13033 (singletonSeq!2380 separatorToken!241))))))

(assert (=> d!907107 (= lt!1109447 (printTailRec!1370 thiss!18206 (singletonSeq!2380 separatorToken!241) 0 (BalanceConc!21501 Empty!10943)))))

(assert (=> d!907107 (= (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)) lt!1109447)))

(declare-fun bs!546185 () Bool)

(assert (= bs!546185 d!907107))

(declare-fun m!3573867 () Bool)

(assert (=> bs!546185 m!3573867))

(assert (=> bs!546185 m!3569891))

(assert (=> bs!546185 m!3569897))

(assert (=> bs!546185 m!3569897))

(declare-fun m!3573869 () Bool)

(assert (=> bs!546185 m!3573869))

(assert (=> bs!546185 m!3569891))

(declare-fun m!3573871 () Bool)

(assert (=> bs!546185 m!3573871))

(assert (=> d!905857 d!907107))

(assert (=> d!905857 d!905937))

(declare-fun b!3270545 () Bool)

(declare-fun lt!1109448 () tuple2!35920)

(declare-fun e!2036720 () Bool)

(assert (=> b!3270545 (= e!2036720 (= (list!13032 (_2!21094 lt!1109448)) (_2!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)))))))))

(declare-fun b!3270546 () Bool)

(declare-fun e!2036719 () Bool)

(assert (=> b!3270546 (= e!2036719 (= (_2!21094 lt!1109448) (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241))))))

(declare-fun b!3270547 () Bool)

(declare-fun e!2036718 () Bool)

(assert (=> b!3270547 (= e!2036719 e!2036718)))

(declare-fun res!1329100 () Bool)

(assert (=> b!3270547 (= res!1329100 (< (size!27509 (_2!21094 lt!1109448)) (size!27509 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)))))))

(assert (=> b!3270547 (=> (not res!1329100) (not e!2036718))))

(declare-fun b!3270548 () Bool)

(assert (=> b!3270548 (= e!2036718 (not (isEmpty!20563 (_1!21094 lt!1109448))))))

(declare-fun b!3270544 () Bool)

(declare-fun res!1329101 () Bool)

(assert (=> b!3270544 (=> (not res!1329101) (not e!2036720))))

(assert (=> b!3270544 (= res!1329101 (= (list!13033 (_1!21094 lt!1109448)) (_1!21092 (lexList!1347 thiss!18206 rules!2135 (list!13032 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)))))))))

(declare-fun d!907109 () Bool)

(assert (=> d!907109 e!2036720))

(declare-fun res!1329099 () Bool)

(assert (=> d!907109 (=> (not res!1329099) (not e!2036720))))

(assert (=> d!907109 (= res!1329099 e!2036719)))

(declare-fun c!552305 () Bool)

(assert (=> d!907109 (= c!552305 (> (size!27508 (_1!21094 lt!1109448)) 0))))

(assert (=> d!907109 (= lt!1109448 (lexTailRecV2!956 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)) (BalanceConc!21501 Empty!10943) (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)) (BalanceConc!21503 Empty!10944)))))

(assert (=> d!907109 (= (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241))) lt!1109448)))

(assert (= (and d!907109 c!552305) b!3270547))

(assert (= (and d!907109 (not c!552305)) b!3270546))

(assert (= (and b!3270547 res!1329100) b!3270548))

(assert (= (and d!907109 res!1329099) b!3270544))

(assert (= (and b!3270544 res!1329101) b!3270545))

(declare-fun m!3573873 () Bool)

(assert (=> b!3270544 m!3573873))

(assert (=> b!3270544 m!3569893))

(declare-fun m!3573875 () Bool)

(assert (=> b!3270544 m!3573875))

(assert (=> b!3270544 m!3573875))

(declare-fun m!3573877 () Bool)

(assert (=> b!3270544 m!3573877))

(declare-fun m!3573879 () Bool)

(assert (=> b!3270547 m!3573879))

(assert (=> b!3270547 m!3569893))

(declare-fun m!3573881 () Bool)

(assert (=> b!3270547 m!3573881))

(declare-fun m!3573883 () Bool)

(assert (=> d!907109 m!3573883))

(assert (=> d!907109 m!3569893))

(assert (=> d!907109 m!3569893))

(declare-fun m!3573885 () Bool)

(assert (=> d!907109 m!3573885))

(declare-fun m!3573887 () Bool)

(assert (=> b!3270548 m!3573887))

(declare-fun m!3573889 () Bool)

(assert (=> b!3270545 m!3573889))

(assert (=> b!3270545 m!3569893))

(assert (=> b!3270545 m!3573875))

(assert (=> b!3270545 m!3573875))

(assert (=> b!3270545 m!3573877))

(assert (=> d!905857 d!907109))

(declare-fun d!907111 () Bool)

(declare-fun lt!1109449 () Int)

(assert (=> d!907111 (= lt!1109449 (size!27506 (list!13033 (_1!21094 lt!1108280))))))

(assert (=> d!907111 (= lt!1109449 (size!27512 (c!551640 (_1!21094 lt!1108280))))))

(assert (=> d!907111 (= (size!27508 (_1!21094 lt!1108280)) lt!1109449)))

(declare-fun bs!546186 () Bool)

(assert (= bs!546186 d!907111))

(assert (=> bs!546186 m!3572909))

(assert (=> bs!546186 m!3572909))

(declare-fun m!3573891 () Bool)

(assert (=> bs!546186 m!3573891))

(declare-fun m!3573893 () Bool)

(assert (=> bs!546186 m!3573893))

(assert (=> d!905857 d!907111))

(declare-fun d!907113 () Bool)

(declare-fun lt!1109450 () Bool)

(assert (=> d!907113 (= lt!1109450 (select (content!4948 rules!2135) (get!11623 lt!1108461)))))

(declare-fun e!2036722 () Bool)

(assert (=> d!907113 (= lt!1109450 e!2036722)))

(declare-fun res!1329103 () Bool)

(assert (=> d!907113 (=> (not res!1329103) (not e!2036722))))

(assert (=> d!907113 (= res!1329103 ((_ is Cons!36445) rules!2135))))

(assert (=> d!907113 (= (contains!6570 rules!2135 (get!11623 lt!1108461)) lt!1109450)))

(declare-fun b!3270549 () Bool)

(declare-fun e!2036721 () Bool)

(assert (=> b!3270549 (= e!2036722 e!2036721)))

(declare-fun res!1329102 () Bool)

(assert (=> b!3270549 (=> res!1329102 e!2036721)))

(assert (=> b!3270549 (= res!1329102 (= (h!41865 rules!2135) (get!11623 lt!1108461)))))

(declare-fun b!3270550 () Bool)

(assert (=> b!3270550 (= e!2036721 (contains!6570 (t!247340 rules!2135) (get!11623 lt!1108461)))))

(assert (= (and d!907113 res!1329103) b!3270549))

(assert (= (and b!3270549 (not res!1329102)) b!3270550))

(assert (=> d!907113 m!3572719))

(assert (=> d!907113 m!3570613))

(declare-fun m!3573895 () Bool)

(assert (=> d!907113 m!3573895))

(assert (=> b!3270550 m!3570613))

(declare-fun m!3573897 () Bool)

(assert (=> b!3270550 m!3573897))

(assert (=> b!3268734 d!907113))

(assert (=> b!3268734 d!906959))

(declare-fun d!907115 () Bool)

(assert (=> d!907115 (= (inv!49365 (tag!5824 (rule!7766 (h!41864 (t!247339 tokens!494))))) (= (mod (str.len (value!171053 (tag!5824 (rule!7766 (h!41864 (t!247339 tokens!494)))))) 2) 0))))

(assert (=> b!3268825 d!907115))

(declare-fun d!907117 () Bool)

(declare-fun res!1329104 () Bool)

(declare-fun e!2036723 () Bool)

(assert (=> d!907117 (=> (not res!1329104) (not e!2036723))))

(assert (=> d!907117 (= res!1329104 (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))))))

(assert (=> d!907117 (= (inv!49369 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) e!2036723)))

(declare-fun b!3270551 () Bool)

(assert (=> b!3270551 (= e!2036723 (equivClasses!2080 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))))))

(assert (= (and d!907117 res!1329104) b!3270551))

(declare-fun m!3573899 () Bool)

(assert (=> d!907117 m!3573899))

(declare-fun m!3573901 () Bool)

(assert (=> b!3270551 m!3573901))

(assert (=> b!3268825 d!907117))

(assert (=> b!3268641 d!906953))

(assert (=> b!3268641 d!906057))

(declare-fun lt!1109451 () Bool)

(declare-fun d!907119 () Bool)

(assert (=> d!907119 (= lt!1109451 (isEmpty!20562 (list!13032 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)))))))))

(assert (=> d!907119 (= lt!1109451 (isEmpty!20573 (c!551639 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241)))))))))

(assert (=> d!907119 (= (isEmpty!20568 (_2!21094 (lex!2201 thiss!18206 rules!2135 (print!1938 thiss!18206 (singletonSeq!2380 separatorToken!241))))) lt!1109451)))

(declare-fun bs!546187 () Bool)

(assert (= bs!546187 d!907119))

(declare-fun m!3573903 () Bool)

(assert (=> bs!546187 m!3573903))

(assert (=> bs!546187 m!3573903))

(declare-fun m!3573905 () Bool)

(assert (=> bs!546187 m!3573905))

(declare-fun m!3573907 () Bool)

(assert (=> bs!546187 m!3573907))

(assert (=> b!3268227 d!907119))

(assert (=> b!3268227 d!907109))

(assert (=> b!3268227 d!907107))

(assert (=> b!3268227 d!907105))

(assert (=> b!3268485 d!907025))

(declare-fun d!907121 () Bool)

(declare-fun res!1329105 () Bool)

(declare-fun e!2036724 () Bool)

(assert (=> d!907121 (=> res!1329105 e!2036724)))

(assert (=> d!907121 (= res!1329105 ((_ is Nil!36444) (list!13033 lt!1108152)))))

(assert (=> d!907121 (= (forall!7522 (list!13033 lt!1108152) lambda!118625) e!2036724)))

(declare-fun b!3270552 () Bool)

(declare-fun e!2036725 () Bool)

(assert (=> b!3270552 (= e!2036724 e!2036725)))

(declare-fun res!1329106 () Bool)

(assert (=> b!3270552 (=> (not res!1329106) (not e!2036725))))

(assert (=> b!3270552 (= res!1329106 (dynLambda!14876 lambda!118625 (h!41864 (list!13033 lt!1108152))))))

(declare-fun b!3270553 () Bool)

(assert (=> b!3270553 (= e!2036725 (forall!7522 (t!247339 (list!13033 lt!1108152)) lambda!118625))))

(assert (= (and d!907121 (not res!1329105)) b!3270552))

(assert (= (and b!3270552 res!1329106) b!3270553))

(declare-fun b_lambda!90645 () Bool)

(assert (=> (not b_lambda!90645) (not b!3270552)))

(declare-fun m!3573909 () Bool)

(assert (=> b!3270552 m!3573909))

(declare-fun m!3573911 () Bool)

(assert (=> b!3270553 m!3573911))

(assert (=> d!905887 d!907121))

(declare-fun d!907123 () Bool)

(assert (=> d!907123 (= (list!13033 lt!1108152) (list!13036 (c!551640 lt!1108152)))))

(declare-fun bs!546188 () Bool)

(assert (= bs!546188 d!907123))

(declare-fun m!3573913 () Bool)

(assert (=> bs!546188 m!3573913))

(assert (=> d!905887 d!907123))

(declare-fun d!907125 () Bool)

(declare-fun lt!1109454 () Bool)

(assert (=> d!907125 (= lt!1109454 (forall!7522 (list!13033 lt!1108152) lambda!118625))))

(declare-fun forall!7528 (Conc!10944 Int) Bool)

(assert (=> d!907125 (= lt!1109454 (forall!7528 (c!551640 lt!1108152) lambda!118625))))

(assert (=> d!907125 (= (forall!7524 lt!1108152 lambda!118625) lt!1109454)))

(declare-fun bs!546189 () Bool)

(assert (= bs!546189 d!907125))

(assert (=> bs!546189 m!3570051))

(assert (=> bs!546189 m!3570051))

(assert (=> bs!546189 m!3570053))

(declare-fun m!3573915 () Bool)

(assert (=> bs!546189 m!3573915))

(assert (=> d!905887 d!907125))

(assert (=> d!905887 d!905937))

(declare-fun d!907127 () Bool)

(assert (=> d!907127 (= (inv!16 (value!171054 (h!41864 tokens!494))) (= (charsToInt!0 (text!39045 (value!171054 (h!41864 tokens!494)))) (value!171045 (value!171054 (h!41864 tokens!494)))))))

(declare-fun bs!546190 () Bool)

(assert (= bs!546190 d!907127))

(declare-fun m!3573917 () Bool)

(assert (=> bs!546190 m!3573917))

(assert (=> b!3268532 d!907127))

(declare-fun b!3270563 () Bool)

(declare-fun e!2036730 () List!36568)

(declare-fun e!2036731 () List!36568)

(assert (=> b!3270563 (= e!2036730 e!2036731)))

(declare-fun c!552311 () Bool)

(assert (=> b!3270563 (= c!552311 ((_ is Leaf!17197) (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(declare-fun b!3270562 () Bool)

(assert (=> b!3270562 (= e!2036730 Nil!36444)))

(declare-fun b!3270565 () Bool)

(assert (=> b!3270565 (= e!2036731 (++!8803 (list!13036 (left!28380 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))) (list!13036 (right!28710 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))))

(declare-fun c!552310 () Bool)

(declare-fun d!907129 () Bool)

(assert (=> d!907129 (= c!552310 ((_ is Empty!10944) (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(assert (=> d!907129 (= (list!13036 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))) e!2036730)))

(declare-fun b!3270564 () Bool)

(declare-fun list!13041 (IArray!21893) List!36568)

(assert (=> b!3270564 (= e!2036731 (list!13041 (xs!14076 (c!551640 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))))))

(assert (= (and d!907129 c!552310) b!3270562))

(assert (= (and d!907129 (not c!552310)) b!3270563))

(assert (= (and b!3270563 c!552311) b!3270564))

(assert (= (and b!3270563 (not c!552311)) b!3270565))

(declare-fun m!3573919 () Bool)

(assert (=> b!3270565 m!3573919))

(declare-fun m!3573921 () Bool)

(assert (=> b!3270565 m!3573921))

(assert (=> b!3270565 m!3573919))

(assert (=> b!3270565 m!3573921))

(declare-fun m!3573923 () Bool)

(assert (=> b!3270565 m!3573923))

(declare-fun m!3573925 () Bool)

(assert (=> b!3270564 m!3573925))

(assert (=> d!905929 d!907129))

(assert (=> b!3268171 d!906861))

(assert (=> b!3268171 d!906863))

(assert (=> b!3268171 d!906775))

(assert (=> b!3268430 d!906067))

(declare-fun d!907131 () Bool)

(assert (=> d!907131 (= (inv!49373 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))) (isBalanced!3263 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))))))

(declare-fun bs!546191 () Bool)

(assert (= bs!546191 d!907131))

(declare-fun m!3573927 () Bool)

(assert (=> bs!546191 m!3573927))

(assert (=> tb!165575 d!907131))

(assert (=> d!905947 d!906605))

(declare-fun b!3270566 () Bool)

(declare-fun e!2036738 () Bool)

(declare-fun e!2036735 () Bool)

(assert (=> b!3270566 (= e!2036738 e!2036735)))

(declare-fun c!552313 () Bool)

(assert (=> b!3270566 (= c!552313 ((_ is Union!10043) (regex!5284 lt!1108160)))))

(declare-fun bm!237044 () Bool)

(declare-fun call!237051 () Bool)

(declare-fun call!237049 () Bool)

(assert (=> bm!237044 (= call!237051 call!237049)))

(declare-fun b!3270567 () Bool)

(declare-fun e!2036734 () Bool)

(assert (=> b!3270567 (= e!2036734 call!237051)))

(declare-fun b!3270568 () Bool)

(declare-fun e!2036733 () Bool)

(assert (=> b!3270568 (= e!2036733 e!2036738)))

(declare-fun c!552312 () Bool)

(assert (=> b!3270568 (= c!552312 ((_ is Star!10043) (regex!5284 lt!1108160)))))

(declare-fun b!3270569 () Bool)

(declare-fun res!1329108 () Bool)

(assert (=> b!3270569 (=> (not res!1329108) (not e!2036734))))

(declare-fun call!237050 () Bool)

(assert (=> b!3270569 (= res!1329108 call!237050)))

(assert (=> b!3270569 (= e!2036735 e!2036734)))

(declare-fun bm!237045 () Bool)

(assert (=> bm!237045 (= call!237050 (validRegex!4567 (ite c!552313 (regOne!20599 (regex!5284 lt!1108160)) (regOne!20598 (regex!5284 lt!1108160)))))))

(declare-fun d!907133 () Bool)

(declare-fun res!1329109 () Bool)

(assert (=> d!907133 (=> res!1329109 e!2036733)))

(assert (=> d!907133 (= res!1329109 ((_ is ElementMatch!10043) (regex!5284 lt!1108160)))))

(assert (=> d!907133 (= (validRegex!4567 (regex!5284 lt!1108160)) e!2036733)))

(declare-fun b!3270570 () Bool)

(declare-fun e!2036736 () Bool)

(assert (=> b!3270570 (= e!2036736 call!237051)))

(declare-fun b!3270571 () Bool)

(declare-fun e!2036732 () Bool)

(assert (=> b!3270571 (= e!2036732 call!237049)))

(declare-fun b!3270572 () Bool)

(assert (=> b!3270572 (= e!2036738 e!2036732)))

(declare-fun res!1329111 () Bool)

(assert (=> b!3270572 (= res!1329111 (not (nullable!3411 (reg!10372 (regex!5284 lt!1108160)))))))

(assert (=> b!3270572 (=> (not res!1329111) (not e!2036732))))

(declare-fun b!3270573 () Bool)

(declare-fun e!2036737 () Bool)

(assert (=> b!3270573 (= e!2036737 e!2036736)))

(declare-fun res!1329110 () Bool)

(assert (=> b!3270573 (=> (not res!1329110) (not e!2036736))))

(assert (=> b!3270573 (= res!1329110 call!237050)))

(declare-fun bm!237046 () Bool)

(assert (=> bm!237046 (= call!237049 (validRegex!4567 (ite c!552312 (reg!10372 (regex!5284 lt!1108160)) (ite c!552313 (regTwo!20599 (regex!5284 lt!1108160)) (regTwo!20598 (regex!5284 lt!1108160))))))))

(declare-fun b!3270574 () Bool)

(declare-fun res!1329107 () Bool)

(assert (=> b!3270574 (=> res!1329107 e!2036737)))

(assert (=> b!3270574 (= res!1329107 (not ((_ is Concat!15557) (regex!5284 lt!1108160))))))

(assert (=> b!3270574 (= e!2036735 e!2036737)))

(assert (= (and d!907133 (not res!1329109)) b!3270568))

(assert (= (and b!3270568 c!552312) b!3270572))

(assert (= (and b!3270568 (not c!552312)) b!3270566))

(assert (= (and b!3270572 res!1329111) b!3270571))

(assert (= (and b!3270566 c!552313) b!3270569))

(assert (= (and b!3270566 (not c!552313)) b!3270574))

(assert (= (and b!3270569 res!1329108) b!3270567))

(assert (= (and b!3270574 (not res!1329107)) b!3270573))

(assert (= (and b!3270573 res!1329110) b!3270570))

(assert (= (or b!3270567 b!3270570) bm!237044))

(assert (= (or b!3270569 b!3270573) bm!237045))

(assert (= (or b!3270571 bm!237044) bm!237046))

(declare-fun m!3573929 () Bool)

(assert (=> bm!237045 m!3573929))

(declare-fun m!3573931 () Bool)

(assert (=> b!3270572 m!3573931))

(declare-fun m!3573933 () Bool)

(assert (=> bm!237046 m!3573933))

(assert (=> d!905947 d!907133))

(declare-fun d!907135 () Bool)

(assert (=> d!907135 (= (nullable!3411 (regex!5284 lt!1108157)) (nullableFct!978 (regex!5284 lt!1108157)))))

(declare-fun bs!546192 () Bool)

(assert (= bs!546192 d!907135))

(declare-fun m!3573935 () Bool)

(assert (=> bs!546192 m!3573935))

(assert (=> b!3267998 d!907135))

(declare-fun b!3270583 () Bool)

(declare-fun e!2036747 () Bool)

(declare-fun call!237054 () Bool)

(assert (=> b!3270583 (= e!2036747 call!237054)))

(declare-fun b!3270584 () Bool)

(declare-fun e!2036745 () Bool)

(assert (=> b!3270584 (= e!2036745 e!2036747)))

(declare-fun res!1329116 () Bool)

(assert (=> b!3270584 (= res!1329116 (not ((_ is Cons!36445) rules!2135)))))

(assert (=> b!3270584 (=> res!1329116 e!2036747)))

(declare-fun d!907137 () Bool)

(declare-fun c!552316 () Bool)

(assert (=> d!907137 (= c!552316 (and ((_ is Cons!36445) rules!2135) (not (= (isSeparator!5284 (h!41865 rules!2135)) (isSeparator!5284 (h!41865 rules!2135))))))))

(assert (=> d!907137 (= (ruleDisjointCharsFromAllFromOtherType!617 (h!41865 rules!2135) rules!2135) e!2036745)))

(declare-fun b!3270585 () Bool)

(declare-fun e!2036746 () Bool)

(assert (=> b!3270585 (= e!2036746 call!237054)))

(declare-fun b!3270586 () Bool)

(assert (=> b!3270586 (= e!2036745 e!2036746)))

(declare-fun res!1329117 () Bool)

(declare-fun rulesUseDisjointChars!289 (Rule!10368 Rule!10368) Bool)

(assert (=> b!3270586 (= res!1329117 (rulesUseDisjointChars!289 (h!41865 rules!2135) (h!41865 rules!2135)))))

(assert (=> b!3270586 (=> (not res!1329117) (not e!2036746))))

(declare-fun bm!237049 () Bool)

(assert (=> bm!237049 (= call!237054 (ruleDisjointCharsFromAllFromOtherType!617 (h!41865 rules!2135) (t!247340 rules!2135)))))

(assert (= (and d!907137 c!552316) b!3270586))

(assert (= (and d!907137 (not c!552316)) b!3270584))

(assert (= (and b!3270586 res!1329117) b!3270585))

(assert (= (and b!3270584 (not res!1329116)) b!3270583))

(assert (= (or b!3270585 b!3270583) bm!237049))

(declare-fun m!3573937 () Bool)

(assert (=> b!3270586 m!3573937))

(declare-fun m!3573939 () Bool)

(assert (=> bm!237049 m!3573939))

(assert (=> b!3268232 d!907137))

(declare-fun d!907139 () Bool)

(declare-fun lt!1109457 () Bool)

(assert (=> d!907139 (= lt!1109457 (select (content!4946 tokens!494) (h!41864 tokens!494)))))

(declare-fun e!2036752 () Bool)

(assert (=> d!907139 (= lt!1109457 e!2036752)))

(declare-fun res!1329122 () Bool)

(assert (=> d!907139 (=> (not res!1329122) (not e!2036752))))

(assert (=> d!907139 (= res!1329122 ((_ is Cons!36444) tokens!494))))

(assert (=> d!907139 (= (contains!6569 tokens!494 (h!41864 tokens!494)) lt!1109457)))

(declare-fun b!3270591 () Bool)

(declare-fun e!2036753 () Bool)

(assert (=> b!3270591 (= e!2036752 e!2036753)))

(declare-fun res!1329123 () Bool)

(assert (=> b!3270591 (=> res!1329123 e!2036753)))

(assert (=> b!3270591 (= res!1329123 (= (h!41864 tokens!494) (h!41864 tokens!494)))))

(declare-fun b!3270592 () Bool)

(assert (=> b!3270592 (= e!2036753 (contains!6569 (t!247339 tokens!494) (h!41864 tokens!494)))))

(assert (= (and d!907139 res!1329122) b!3270591))

(assert (= (and b!3270591 (not res!1329123)) b!3270592))

(declare-fun m!3573941 () Bool)

(assert (=> d!907139 m!3573941))

(declare-fun m!3573943 () Bool)

(assert (=> d!907139 m!3573943))

(declare-fun m!3573945 () Bool)

(assert (=> b!3270592 m!3573945))

(assert (=> b!3268023 d!907139))

(declare-fun b!3270593 () Bool)

(declare-fun e!2036754 () Bool)

(assert (=> b!3270593 (= e!2036754 (= (head!7113 (tail!5250 lt!1108142)) (c!551638 (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142)))))))

(declare-fun b!3270594 () Bool)

(declare-fun e!2036756 () Bool)

(assert (=> b!3270594 (= e!2036756 (not (= (head!7113 (tail!5250 lt!1108142)) (c!551638 (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142))))))))

(declare-fun b!3270595 () Bool)

(declare-fun res!1329125 () Bool)

(assert (=> b!3270595 (=> (not res!1329125) (not e!2036754))))

(assert (=> b!3270595 (= res!1329125 (isEmpty!20562 (tail!5250 (tail!5250 lt!1108142))))))

(declare-fun b!3270596 () Bool)

(declare-fun e!2036760 () Bool)

(declare-fun lt!1109458 () Bool)

(declare-fun call!237055 () Bool)

(assert (=> b!3270596 (= e!2036760 (= lt!1109458 call!237055))))

(declare-fun b!3270597 () Bool)

(declare-fun e!2036755 () Bool)

(assert (=> b!3270597 (= e!2036755 (matchR!4665 (derivativeStep!2964 (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142)) (head!7113 (tail!5250 lt!1108142))) (tail!5250 (tail!5250 lt!1108142))))))

(declare-fun b!3270598 () Bool)

(declare-fun res!1329126 () Bool)

(assert (=> b!3270598 (=> (not res!1329126) (not e!2036754))))

(assert (=> b!3270598 (= res!1329126 (not call!237055))))

(declare-fun b!3270599 () Bool)

(assert (=> b!3270599 (= e!2036755 (nullable!3411 (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142))))))

(declare-fun b!3270600 () Bool)

(declare-fun e!2036757 () Bool)

(assert (=> b!3270600 (= e!2036757 e!2036756)))

(declare-fun res!1329130 () Bool)

(assert (=> b!3270600 (=> res!1329130 e!2036756)))

(assert (=> b!3270600 (= res!1329130 call!237055)))

(declare-fun b!3270602 () Bool)

(declare-fun e!2036758 () Bool)

(assert (=> b!3270602 (= e!2036758 (not lt!1109458))))

(declare-fun bm!237050 () Bool)

(assert (=> bm!237050 (= call!237055 (isEmpty!20562 (tail!5250 lt!1108142)))))

(declare-fun b!3270603 () Bool)

(declare-fun res!1329124 () Bool)

(assert (=> b!3270603 (=> res!1329124 e!2036756)))

(assert (=> b!3270603 (= res!1329124 (not (isEmpty!20562 (tail!5250 (tail!5250 lt!1108142)))))))

(declare-fun b!3270604 () Bool)

(declare-fun res!1329131 () Bool)

(declare-fun e!2036759 () Bool)

(assert (=> b!3270604 (=> res!1329131 e!2036759)))

(assert (=> b!3270604 (= res!1329131 e!2036754)))

(declare-fun res!1329128 () Bool)

(assert (=> b!3270604 (=> (not res!1329128) (not e!2036754))))

(assert (=> b!3270604 (= res!1329128 lt!1109458)))

(declare-fun d!907141 () Bool)

(assert (=> d!907141 e!2036760))

(declare-fun c!552319 () Bool)

(assert (=> d!907141 (= c!552319 ((_ is EmptyExpr!10043) (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142))))))

(assert (=> d!907141 (= lt!1109458 e!2036755)))

(declare-fun c!552318 () Bool)

(assert (=> d!907141 (= c!552318 (isEmpty!20562 (tail!5250 lt!1108142)))))

(assert (=> d!907141 (validRegex!4567 (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142)))))

(assert (=> d!907141 (= (matchR!4665 (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142)) (tail!5250 lt!1108142)) lt!1109458)))

(declare-fun b!3270601 () Bool)

(assert (=> b!3270601 (= e!2036759 e!2036757)))

(declare-fun res!1329129 () Bool)

(assert (=> b!3270601 (=> (not res!1329129) (not e!2036757))))

(assert (=> b!3270601 (= res!1329129 (not lt!1109458))))

(declare-fun b!3270605 () Bool)

(declare-fun res!1329127 () Bool)

(assert (=> b!3270605 (=> res!1329127 e!2036759)))

(assert (=> b!3270605 (= res!1329127 (not ((_ is ElementMatch!10043) (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142)))))))

(assert (=> b!3270605 (= e!2036758 e!2036759)))

(declare-fun b!3270606 () Bool)

(assert (=> b!3270606 (= e!2036760 e!2036758)))

(declare-fun c!552317 () Bool)

(assert (=> b!3270606 (= c!552317 ((_ is EmptyLang!10043) (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142))))))

(assert (= (and d!907141 c!552318) b!3270599))

(assert (= (and d!907141 (not c!552318)) b!3270597))

(assert (= (and d!907141 c!552319) b!3270596))

(assert (= (and d!907141 (not c!552319)) b!3270606))

(assert (= (and b!3270606 c!552317) b!3270602))

(assert (= (and b!3270606 (not c!552317)) b!3270605))

(assert (= (and b!3270605 (not res!1329127)) b!3270604))

(assert (= (and b!3270604 res!1329128) b!3270598))

(assert (= (and b!3270598 res!1329126) b!3270595))

(assert (= (and b!3270595 res!1329125) b!3270593))

(assert (= (and b!3270604 (not res!1329131)) b!3270601))

(assert (= (and b!3270601 res!1329129) b!3270600))

(assert (= (and b!3270600 (not res!1329130)) b!3270603))

(assert (= (and b!3270603 (not res!1329124)) b!3270594))

(assert (= (or b!3270596 b!3270598 b!3270600) bm!237050))

(assert (=> bm!237050 m!3570131))

(assert (=> bm!237050 m!3570133))

(assert (=> b!3270593 m!3570131))

(assert (=> b!3270593 m!3572551))

(assert (=> b!3270594 m!3570131))

(assert (=> b!3270594 m!3572551))

(assert (=> b!3270603 m!3570131))

(assert (=> b!3270603 m!3572553))

(assert (=> b!3270603 m!3572553))

(assert (=> b!3270603 m!3572555))

(assert (=> d!907141 m!3570131))

(assert (=> d!907141 m!3570133))

(assert (=> d!907141 m!3570149))

(declare-fun m!3573947 () Bool)

(assert (=> d!907141 m!3573947))

(assert (=> b!3270595 m!3570131))

(assert (=> b!3270595 m!3572553))

(assert (=> b!3270595 m!3572553))

(assert (=> b!3270595 m!3572555))

(assert (=> b!3270599 m!3570149))

(declare-fun m!3573949 () Bool)

(assert (=> b!3270599 m!3573949))

(assert (=> b!3270597 m!3570131))

(assert (=> b!3270597 m!3572551))

(assert (=> b!3270597 m!3570149))

(assert (=> b!3270597 m!3572551))

(declare-fun m!3573951 () Bool)

(assert (=> b!3270597 m!3573951))

(assert (=> b!3270597 m!3570131))

(assert (=> b!3270597 m!3572553))

(assert (=> b!3270597 m!3573951))

(assert (=> b!3270597 m!3572553))

(declare-fun m!3573953 () Bool)

(assert (=> b!3270597 m!3573953))

(assert (=> b!3268434 d!907141))

(declare-fun b!3270607 () Bool)

(declare-fun e!2036765 () Regex!10043)

(assert (=> b!3270607 (= e!2036765 EmptyLang!10043)))

(declare-fun b!3270608 () Bool)

(declare-fun e!2036762 () Regex!10043)

(declare-fun e!2036763 () Regex!10043)

(assert (=> b!3270608 (= e!2036762 e!2036763)))

(declare-fun c!552321 () Bool)

(assert (=> b!3270608 (= c!552321 ((_ is Star!10043) (regex!5284 lt!1108160)))))

(declare-fun b!3270609 () Bool)

(declare-fun e!2036761 () Regex!10043)

(assert (=> b!3270609 (= e!2036761 (ite (= (head!7113 lt!1108142) (c!551638 (regex!5284 lt!1108160))) EmptyExpr!10043 EmptyLang!10043))))

(declare-fun b!3270610 () Bool)

(declare-fun c!552323 () Bool)

(assert (=> b!3270610 (= c!552323 ((_ is Union!10043) (regex!5284 lt!1108160)))))

(assert (=> b!3270610 (= e!2036761 e!2036762)))

(declare-fun b!3270611 () Bool)

(declare-fun call!237056 () Regex!10043)

(declare-fun call!237059 () Regex!10043)

(assert (=> b!3270611 (= e!2036762 (Union!10043 call!237056 call!237059))))

(declare-fun call!237057 () Regex!10043)

(declare-fun e!2036764 () Regex!10043)

(declare-fun b!3270612 () Bool)

(assert (=> b!3270612 (= e!2036764 (Union!10043 (Concat!15557 call!237057 (regTwo!20598 (regex!5284 lt!1108160))) call!237056))))

(declare-fun b!3270613 () Bool)

(declare-fun call!237058 () Regex!10043)

(assert (=> b!3270613 (= e!2036763 (Concat!15557 call!237058 (regex!5284 lt!1108160)))))

(declare-fun b!3270614 () Bool)

(assert (=> b!3270614 (= e!2036764 (Union!10043 (Concat!15557 call!237057 (regTwo!20598 (regex!5284 lt!1108160))) EmptyLang!10043))))

(declare-fun bm!237051 () Bool)

(assert (=> bm!237051 (= call!237056 (derivativeStep!2964 (ite c!552323 (regOne!20599 (regex!5284 lt!1108160)) (regTwo!20598 (regex!5284 lt!1108160))) (head!7113 lt!1108142)))))

(declare-fun bm!237052 () Bool)

(assert (=> bm!237052 (= call!237057 call!237058)))

(declare-fun b!3270615 () Bool)

(declare-fun c!552324 () Bool)

(assert (=> b!3270615 (= c!552324 (nullable!3411 (regOne!20598 (regex!5284 lt!1108160))))))

(assert (=> b!3270615 (= e!2036763 e!2036764)))

(declare-fun d!907143 () Bool)

(declare-fun lt!1109459 () Regex!10043)

(assert (=> d!907143 (validRegex!4567 lt!1109459)))

(assert (=> d!907143 (= lt!1109459 e!2036765)))

(declare-fun c!552322 () Bool)

(assert (=> d!907143 (= c!552322 (or ((_ is EmptyExpr!10043) (regex!5284 lt!1108160)) ((_ is EmptyLang!10043) (regex!5284 lt!1108160))))))

(assert (=> d!907143 (validRegex!4567 (regex!5284 lt!1108160))))

(assert (=> d!907143 (= (derivativeStep!2964 (regex!5284 lt!1108160) (head!7113 lt!1108142)) lt!1109459)))

(declare-fun bm!237053 () Bool)

(assert (=> bm!237053 (= call!237059 (derivativeStep!2964 (ite c!552323 (regTwo!20599 (regex!5284 lt!1108160)) (ite c!552321 (reg!10372 (regex!5284 lt!1108160)) (regOne!20598 (regex!5284 lt!1108160)))) (head!7113 lt!1108142)))))

(declare-fun bm!237054 () Bool)

(assert (=> bm!237054 (= call!237058 call!237059)))

(declare-fun b!3270616 () Bool)

(assert (=> b!3270616 (= e!2036765 e!2036761)))

(declare-fun c!552320 () Bool)

(assert (=> b!3270616 (= c!552320 ((_ is ElementMatch!10043) (regex!5284 lt!1108160)))))

(assert (= (and d!907143 c!552322) b!3270607))

(assert (= (and d!907143 (not c!552322)) b!3270616))

(assert (= (and b!3270616 c!552320) b!3270609))

(assert (= (and b!3270616 (not c!552320)) b!3270610))

(assert (= (and b!3270610 c!552323) b!3270611))

(assert (= (and b!3270610 (not c!552323)) b!3270608))

(assert (= (and b!3270608 c!552321) b!3270613))

(assert (= (and b!3270608 (not c!552321)) b!3270615))

(assert (= (and b!3270615 c!552324) b!3270612))

(assert (= (and b!3270615 (not c!552324)) b!3270614))

(assert (= (or b!3270612 b!3270614) bm!237052))

(assert (= (or b!3270613 bm!237052) bm!237054))

(assert (= (or b!3270611 b!3270612) bm!237051))

(assert (= (or b!3270611 bm!237054) bm!237053))

(assert (=> bm!237051 m!3569537))

(declare-fun m!3573955 () Bool)

(assert (=> bm!237051 m!3573955))

(declare-fun m!3573957 () Bool)

(assert (=> b!3270615 m!3573957))

(declare-fun m!3573959 () Bool)

(assert (=> d!907143 m!3573959))

(assert (=> d!907143 m!3570145))

(assert (=> bm!237053 m!3569537))

(declare-fun m!3573961 () Bool)

(assert (=> bm!237053 m!3573961))

(assert (=> b!3268434 d!907143))

(assert (=> b!3268434 d!906067))

(assert (=> b!3268434 d!906699))

(declare-fun b!3270620 () Bool)

(declare-fun e!2036767 () List!36567)

(assert (=> b!3270620 (= e!2036767 (++!8798 (list!13035 (left!28379 (c!551639 lt!1108163))) (list!13035 (right!28709 (c!551639 lt!1108163)))))))

(declare-fun b!3270618 () Bool)

(declare-fun e!2036766 () List!36567)

(assert (=> b!3270618 (= e!2036766 e!2036767)))

(declare-fun c!552326 () Bool)

(assert (=> b!3270618 (= c!552326 ((_ is Leaf!17196) (c!551639 lt!1108163)))))

(declare-fun d!907145 () Bool)

(declare-fun c!552325 () Bool)

(assert (=> d!907145 (= c!552325 ((_ is Empty!10943) (c!551639 lt!1108163)))))

(assert (=> d!907145 (= (list!13035 (c!551639 lt!1108163)) e!2036766)))

(declare-fun b!3270617 () Bool)

(assert (=> b!3270617 (= e!2036766 Nil!36443)))

(declare-fun b!3270619 () Bool)

(assert (=> b!3270619 (= e!2036767 (list!13040 (xs!14075 (c!551639 lt!1108163))))))

(assert (= (and d!907145 c!552325) b!3270617))

(assert (= (and d!907145 (not c!552325)) b!3270618))

(assert (= (and b!3270618 c!552326) b!3270619))

(assert (= (and b!3270618 (not c!552326)) b!3270620))

(declare-fun m!3573963 () Bool)

(assert (=> b!3270620 m!3573963))

(declare-fun m!3573965 () Bool)

(assert (=> b!3270620 m!3573965))

(assert (=> b!3270620 m!3573963))

(assert (=> b!3270620 m!3573965))

(declare-fun m!3573967 () Bool)

(assert (=> b!3270620 m!3573967))

(declare-fun m!3573969 () Bool)

(assert (=> b!3270619 m!3573969))

(assert (=> d!905975 d!907145))

(assert (=> bm!236804 d!906895))

(assert (=> b!3268416 d!906067))

(declare-fun bs!546193 () Bool)

(declare-fun d!907147 () Bool)

(assert (= bs!546193 (and d!907147 d!906779)))

(declare-fun lambda!118665 () Int)

(assert (=> bs!546193 (= (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))) (= lambda!118665 lambda!118653))))

(declare-fun bs!546194 () Bool)

(assert (= bs!546194 (and d!907147 d!906981)))

(assert (=> bs!546194 (= (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (= lambda!118665 lambda!118661))))

(assert (=> d!907147 true))

(assert (=> d!907147 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (h!41865 rules!2135)))) (dynLambda!14888 order!18867 lambda!118665))))

(assert (=> d!907147 (= (equivClasses!2080 (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (h!41865 rules!2135)))) (Forall2!882 lambda!118665))))

(declare-fun bs!546195 () Bool)

(assert (= bs!546195 d!907147))

(declare-fun m!3573971 () Bool)

(assert (=> bs!546195 m!3573971))

(assert (=> b!3267933 d!907147))

(declare-fun b!3270621 () Bool)

(declare-fun e!2036768 () Bool)

(declare-fun lt!1109462 () tuple2!35916)

(assert (=> b!3270621 (= e!2036768 (= (_2!21092 lt!1109462) (_2!21093 (v!35952 lt!1108211))))))

(declare-fun b!3270622 () Bool)

(declare-fun e!2036769 () Bool)

(assert (=> b!3270622 (= e!2036769 (not (isEmpty!20561 (_1!21092 lt!1109462))))))

(declare-fun b!3270623 () Bool)

(assert (=> b!3270623 (= e!2036768 e!2036769)))

(declare-fun res!1329132 () Bool)

(assert (=> b!3270623 (= res!1329132 (< (size!27503 (_2!21092 lt!1109462)) (size!27503 (_2!21093 (v!35952 lt!1108211)))))))

(assert (=> b!3270623 (=> (not res!1329132) (not e!2036769))))

(declare-fun d!907149 () Bool)

(assert (=> d!907149 e!2036768))

(declare-fun c!552327 () Bool)

(assert (=> d!907149 (= c!552327 (> (size!27506 (_1!21092 lt!1109462)) 0))))

(declare-fun e!2036770 () tuple2!35916)

(assert (=> d!907149 (= lt!1109462 e!2036770)))

(declare-fun c!552328 () Bool)

(declare-fun lt!1109461 () Option!7257)

(assert (=> d!907149 (= c!552328 ((_ is Some!7256) lt!1109461))))

(assert (=> d!907149 (= lt!1109461 (maxPrefix!2501 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108211))))))

(assert (=> d!907149 (= (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1108211))) lt!1109462)))

(declare-fun b!3270624 () Bool)

(assert (=> b!3270624 (= e!2036770 (tuple2!35917 Nil!36444 (_2!21093 (v!35952 lt!1108211))))))

(declare-fun b!3270625 () Bool)

(declare-fun lt!1109460 () tuple2!35916)

(assert (=> b!3270625 (= e!2036770 (tuple2!35917 (Cons!36444 (_1!21093 (v!35952 lt!1109461)) (_1!21092 lt!1109460)) (_2!21092 lt!1109460)))))

(assert (=> b!3270625 (= lt!1109460 (lexList!1347 thiss!18206 rules!2135 (_2!21093 (v!35952 lt!1109461))))))

(assert (= (and d!907149 c!552328) b!3270625))

(assert (= (and d!907149 (not c!552328)) b!3270624))

(assert (= (and d!907149 c!552327) b!3270623))

(assert (= (and d!907149 (not c!552327)) b!3270621))

(assert (= (and b!3270623 res!1329132) b!3270622))

(declare-fun m!3573973 () Bool)

(assert (=> b!3270622 m!3573973))

(declare-fun m!3573975 () Bool)

(assert (=> b!3270623 m!3573975))

(declare-fun m!3573977 () Bool)

(assert (=> b!3270623 m!3573977))

(declare-fun m!3573979 () Bool)

(assert (=> d!907149 m!3573979))

(declare-fun m!3573981 () Bool)

(assert (=> d!907149 m!3573981))

(declare-fun m!3573983 () Bool)

(assert (=> b!3270625 m!3573983))

(assert (=> b!3268093 d!907149))

(declare-fun d!907151 () Bool)

(declare-fun lt!1109463 () Int)

(assert (=> d!907151 (= lt!1109463 (size!27503 (list!13032 (_2!21094 lt!1108326))))))

(assert (=> d!907151 (= lt!1109463 (size!27513 (c!551639 (_2!21094 lt!1108326))))))

(assert (=> d!907151 (= (size!27509 (_2!21094 lt!1108326)) lt!1109463)))

(declare-fun bs!546196 () Bool)

(assert (= bs!546196 d!907151))

(assert (=> bs!546196 m!3570123))

(assert (=> bs!546196 m!3570123))

(declare-fun m!3573985 () Bool)

(assert (=> bs!546196 m!3573985))

(declare-fun m!3573987 () Bool)

(assert (=> bs!546196 m!3573987))

(assert (=> b!3268413 d!907151))

(declare-fun d!907153 () Bool)

(declare-fun lt!1109464 () Int)

(assert (=> d!907153 (= lt!1109464 (size!27503 (list!13032 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))

(assert (=> d!907153 (= lt!1109464 (size!27513 (c!551639 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))

(assert (=> d!907153 (= (size!27509 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)) lt!1109464)))

(declare-fun bs!546197 () Bool)

(assert (= bs!546197 d!907153))

(assert (=> bs!546197 m!3569461))

(assert (=> bs!546197 m!3570109))

(assert (=> bs!546197 m!3570109))

(assert (=> bs!546197 m!3573237))

(declare-fun m!3573989 () Bool)

(assert (=> bs!546197 m!3573989))

(assert (=> b!3268413 d!907153))

(declare-fun d!907155 () Bool)

(assert (not d!907155))

(assert (=> b!3268464 d!907155))

(declare-fun d!907157 () Bool)

(assert (not d!907157))

(assert (=> b!3268464 d!907157))

(declare-fun b!3270628 () Bool)

(declare-fun res!1329134 () Bool)

(declare-fun e!2036771 () Bool)

(assert (=> b!3270628 (=> (not res!1329134) (not e!2036771))))

(declare-fun lt!1109465 () List!36567)

(assert (=> b!3270628 (= res!1329134 (= (size!27503 lt!1109465) (+ (size!27503 (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241)))) (size!27503 (printWithSeparatorTokenList!198 thiss!18206 (t!247339 Nil!36444) separatorToken!241)))))))

(declare-fun b!3270627 () Bool)

(declare-fun e!2036772 () List!36567)

(assert (=> b!3270627 (= e!2036772 (Cons!36443 (h!41863 (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241)))) (++!8798 (t!247338 (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241)))) (printWithSeparatorTokenList!198 thiss!18206 (t!247339 Nil!36444) separatorToken!241))))))

(declare-fun b!3270626 () Bool)

(assert (=> b!3270626 (= e!2036772 (printWithSeparatorTokenList!198 thiss!18206 (t!247339 Nil!36444) separatorToken!241))))

(declare-fun d!907159 () Bool)

(assert (=> d!907159 e!2036771))

(declare-fun res!1329133 () Bool)

(assert (=> d!907159 (=> (not res!1329133) (not e!2036771))))

(assert (=> d!907159 (= res!1329133 (= (content!4944 lt!1109465) ((_ map or) (content!4944 (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241)))) (content!4944 (printWithSeparatorTokenList!198 thiss!18206 (t!247339 Nil!36444) separatorToken!241)))))))

(assert (=> d!907159 (= lt!1109465 e!2036772)))

(declare-fun c!552329 () Bool)

(assert (=> d!907159 (= c!552329 ((_ is Nil!36443) (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241)))))))

(assert (=> d!907159 (= (++!8798 (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241))) (printWithSeparatorTokenList!198 thiss!18206 (t!247339 Nil!36444) separatorToken!241)) lt!1109465)))

(declare-fun b!3270629 () Bool)

(assert (=> b!3270629 (= e!2036771 (or (not (= (printWithSeparatorTokenList!198 thiss!18206 (t!247339 Nil!36444) separatorToken!241) Nil!36443)) (= lt!1109465 (++!8798 (list!13032 (charsOf!3300 (h!41864 Nil!36444))) (list!13032 (charsOf!3300 separatorToken!241))))))))

(assert (= (and d!907159 c!552329) b!3270626))

(assert (= (and d!907159 (not c!552329)) b!3270627))

(assert (= (and d!907159 res!1329133) b!3270628))

(assert (= (and b!3270628 res!1329134) b!3270629))

(declare-fun m!3573991 () Bool)

(assert (=> b!3270628 m!3573991))

(assert (=> b!3270628 m!3570195))

(declare-fun m!3573993 () Bool)

(assert (=> b!3270628 m!3573993))

(assert (=> b!3270628 m!3570197))

(declare-fun m!3573995 () Bool)

(assert (=> b!3270628 m!3573995))

(assert (=> b!3270627 m!3570197))

(declare-fun m!3573997 () Bool)

(assert (=> b!3270627 m!3573997))

(declare-fun m!3573999 () Bool)

(assert (=> d!907159 m!3573999))

(assert (=> d!907159 m!3570195))

(declare-fun m!3574001 () Bool)

(assert (=> d!907159 m!3574001))

(assert (=> d!907159 m!3570197))

(declare-fun m!3574003 () Bool)

(assert (=> d!907159 m!3574003))

(assert (=> b!3268464 d!907159))

(declare-fun d!907161 () Bool)

(assert (not d!907161))

(assert (=> b!3268464 d!907161))

(assert (=> b!3268464 d!905969))

(assert (=> b!3268464 d!905971))

(declare-fun d!907163 () Bool)

(assert (not d!907163))

(assert (=> b!3268464 d!907163))

(declare-fun d!907165 () Bool)

(declare-fun lt!1109466 () Int)

(assert (=> d!907165 (>= lt!1109466 0)))

(declare-fun e!2036773 () Int)

(assert (=> d!907165 (= lt!1109466 e!2036773)))

(declare-fun c!552330 () Bool)

(assert (=> d!907165 (= c!552330 ((_ is Nil!36444) lt!1108322))))

(assert (=> d!907165 (= (size!27506 lt!1108322) lt!1109466)))

(declare-fun b!3270630 () Bool)

(assert (=> b!3270630 (= e!2036773 0)))

(declare-fun b!3270631 () Bool)

(assert (=> b!3270631 (= e!2036773 (+ 1 (size!27506 (t!247339 lt!1108322))))))

(assert (= (and d!907165 c!552330) b!3270630))

(assert (= (and d!907165 (not c!552330)) b!3270631))

(declare-fun m!3574005 () Bool)

(assert (=> b!3270631 m!3574005))

(assert (=> d!905931 d!907165))

(declare-fun d!907167 () Bool)

(declare-fun lt!1109467 () Int)

(assert (=> d!907167 (>= lt!1109467 0)))

(declare-fun e!2036774 () Int)

(assert (=> d!907167 (= lt!1109467 e!2036774)))

(declare-fun c!552331 () Bool)

(assert (=> d!907167 (= c!552331 ((_ is Nil!36444) (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(assert (=> d!907167 (= (size!27506 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))) lt!1109467)))

(declare-fun b!3270632 () Bool)

(assert (=> b!3270632 (= e!2036774 0)))

(declare-fun b!3270633 () Bool)

(assert (=> b!3270633 (= e!2036774 (+ 1 (size!27506 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))))

(assert (= (and d!907167 c!552331) b!3270632))

(assert (= (and d!907167 (not c!552331)) b!3270633))

(declare-fun m!3574007 () Bool)

(assert (=> b!3270633 m!3574007))

(assert (=> d!905931 d!907167))

(declare-fun b!3270634 () Bool)

(declare-fun e!2036775 () Bool)

(assert (=> b!3270634 (= e!2036775 (= (head!7113 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))) (c!551638 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(declare-fun b!3270635 () Bool)

(declare-fun e!2036777 () Bool)

(assert (=> b!3270635 (= e!2036777 (not (= (head!7113 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))) (c!551638 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))))

(declare-fun b!3270636 () Bool)

(declare-fun res!1329136 () Bool)

(assert (=> b!3270636 (=> (not res!1329136) (not e!2036775))))

(assert (=> b!3270636 (= res!1329136 (isEmpty!20562 (tail!5250 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158))))))))

(declare-fun b!3270637 () Bool)

(declare-fun e!2036781 () Bool)

(declare-fun lt!1109468 () Bool)

(declare-fun call!237060 () Bool)

(assert (=> b!3270637 (= e!2036781 (= lt!1109468 call!237060))))

(declare-fun b!3270638 () Bool)

(declare-fun e!2036776 () Bool)

(assert (=> b!3270638 (= e!2036776 (matchR!4665 (derivativeStep!2964 (regex!5284 (rule!7766 (h!41864 tokens!494))) (head!7113 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158))))) (tail!5250 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158))))))))

(declare-fun b!3270639 () Bool)

(declare-fun res!1329137 () Bool)

(assert (=> b!3270639 (=> (not res!1329137) (not e!2036775))))

(assert (=> b!3270639 (= res!1329137 (not call!237060))))

(declare-fun b!3270640 () Bool)

(assert (=> b!3270640 (= e!2036776 (nullable!3411 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(declare-fun b!3270641 () Bool)

(declare-fun e!2036778 () Bool)

(assert (=> b!3270641 (= e!2036778 e!2036777)))

(declare-fun res!1329141 () Bool)

(assert (=> b!3270641 (=> res!1329141 e!2036777)))

(assert (=> b!3270641 (= res!1329141 call!237060)))

(declare-fun b!3270643 () Bool)

(declare-fun e!2036779 () Bool)

(assert (=> b!3270643 (= e!2036779 (not lt!1109468))))

(declare-fun bm!237055 () Bool)

(assert (=> bm!237055 (= call!237060 (isEmpty!20562 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))

(declare-fun b!3270644 () Bool)

(declare-fun res!1329135 () Bool)

(assert (=> b!3270644 (=> res!1329135 e!2036777)))

(assert (=> b!3270644 (= res!1329135 (not (isEmpty!20562 (tail!5250 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))))

(declare-fun b!3270645 () Bool)

(declare-fun res!1329142 () Bool)

(declare-fun e!2036780 () Bool)

(assert (=> b!3270645 (=> res!1329142 e!2036780)))

(assert (=> b!3270645 (= res!1329142 e!2036775)))

(declare-fun res!1329139 () Bool)

(assert (=> b!3270645 (=> (not res!1329139) (not e!2036775))))

(assert (=> b!3270645 (= res!1329139 lt!1109468)))

(declare-fun d!907169 () Bool)

(assert (=> d!907169 e!2036781))

(declare-fun c!552334 () Bool)

(assert (=> d!907169 (= c!552334 ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(assert (=> d!907169 (= lt!1109468 e!2036776)))

(declare-fun c!552333 () Bool)

(assert (=> d!907169 (= c!552333 (isEmpty!20562 (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))))))

(assert (=> d!907169 (validRegex!4567 (regex!5284 (rule!7766 (h!41864 tokens!494))))))

(assert (=> d!907169 (= (matchR!4665 (regex!5284 (rule!7766 (h!41864 tokens!494))) (_1!21096 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 (size!27503 Nil!36443) lt!1108158 lt!1108158 (size!27503 lt!1108158)))) lt!1109468)))

(declare-fun b!3270642 () Bool)

(assert (=> b!3270642 (= e!2036780 e!2036778)))

(declare-fun res!1329140 () Bool)

(assert (=> b!3270642 (=> (not res!1329140) (not e!2036778))))

(assert (=> b!3270642 (= res!1329140 (not lt!1109468))))

(declare-fun b!3270646 () Bool)

(declare-fun res!1329138 () Bool)

(assert (=> b!3270646 (=> res!1329138 e!2036780)))

(assert (=> b!3270646 (= res!1329138 (not ((_ is ElementMatch!10043) (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(assert (=> b!3270646 (= e!2036779 e!2036780)))

(declare-fun b!3270647 () Bool)

(assert (=> b!3270647 (= e!2036781 e!2036779)))

(declare-fun c!552332 () Bool)

(assert (=> b!3270647 (= c!552332 ((_ is EmptyLang!10043) (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(assert (= (and d!907169 c!552333) b!3270640))

(assert (= (and d!907169 (not c!552333)) b!3270638))

(assert (= (and d!907169 c!552334) b!3270637))

(assert (= (and d!907169 (not c!552334)) b!3270647))

(assert (= (and b!3270647 c!552332) b!3270643))

(assert (= (and b!3270647 (not c!552332)) b!3270646))

(assert (= (and b!3270646 (not res!1329138)) b!3270645))

(assert (= (and b!3270645 res!1329139) b!3270639))

(assert (= (and b!3270639 res!1329137) b!3270636))

(assert (= (and b!3270636 res!1329136) b!3270634))

(assert (= (and b!3270645 (not res!1329142)) b!3270642))

(assert (= (and b!3270642 res!1329140) b!3270641))

(assert (= (and b!3270641 (not res!1329141)) b!3270644))

(assert (= (and b!3270644 (not res!1329135)) b!3270635))

(assert (= (or b!3270637 b!3270639 b!3270641) bm!237055))

(assert (=> bm!237055 m!3570649))

(declare-fun m!3574009 () Bool)

(assert (=> b!3270634 m!3574009))

(assert (=> b!3270635 m!3574009))

(declare-fun m!3574011 () Bool)

(assert (=> b!3270644 m!3574011))

(assert (=> b!3270644 m!3574011))

(declare-fun m!3574013 () Bool)

(assert (=> b!3270644 m!3574013))

(assert (=> d!907169 m!3570649))

(assert (=> d!907169 m!3572433))

(assert (=> b!3270636 m!3574011))

(assert (=> b!3270636 m!3574011))

(assert (=> b!3270636 m!3574013))

(assert (=> b!3270640 m!3572435))

(assert (=> b!3270638 m!3574009))

(assert (=> b!3270638 m!3574009))

(declare-fun m!3574015 () Bool)

(assert (=> b!3270638 m!3574015))

(assert (=> b!3270638 m!3574011))

(assert (=> b!3270638 m!3574015))

(assert (=> b!3270638 m!3574011))

(declare-fun m!3574017 () Bool)

(assert (=> b!3270638 m!3574017))

(assert (=> b!3268764 d!907169))

(assert (=> b!3268764 d!907065))

(assert (=> b!3268764 d!907071))

(assert (=> b!3268764 d!906055))

(declare-fun b!3270650 () Bool)

(declare-fun res!1329144 () Bool)

(declare-fun e!2036782 () Bool)

(assert (=> b!3270650 (=> (not res!1329144) (not e!2036782))))

(declare-fun lt!1109469 () List!36567)

(assert (=> b!3270650 (= res!1329144 (= (size!27503 lt!1109469) (+ (size!27503 (ite c!551826 call!236862 call!236864)) (size!27503 (ite c!551826 call!236864 call!236862)))))))

(declare-fun b!3270649 () Bool)

(declare-fun e!2036783 () List!36567)

(assert (=> b!3270649 (= e!2036783 (Cons!36443 (h!41863 (ite c!551826 call!236862 call!236864)) (++!8798 (t!247338 (ite c!551826 call!236862 call!236864)) (ite c!551826 call!236864 call!236862))))))

(declare-fun b!3270648 () Bool)

(assert (=> b!3270648 (= e!2036783 (ite c!551826 call!236864 call!236862))))

(declare-fun d!907171 () Bool)

(assert (=> d!907171 e!2036782))

(declare-fun res!1329143 () Bool)

(assert (=> d!907171 (=> (not res!1329143) (not e!2036782))))

(assert (=> d!907171 (= res!1329143 (= (content!4944 lt!1109469) ((_ map or) (content!4944 (ite c!551826 call!236862 call!236864)) (content!4944 (ite c!551826 call!236864 call!236862)))))))

(assert (=> d!907171 (= lt!1109469 e!2036783)))

(declare-fun c!552335 () Bool)

(assert (=> d!907171 (= c!552335 ((_ is Nil!36443) (ite c!551826 call!236862 call!236864)))))

(assert (=> d!907171 (= (++!8798 (ite c!551826 call!236862 call!236864) (ite c!551826 call!236864 call!236862)) lt!1109469)))

(declare-fun b!3270651 () Bool)

(assert (=> b!3270651 (= e!2036782 (or (not (= (ite c!551826 call!236864 call!236862) Nil!36443)) (= lt!1109469 (ite c!551826 call!236862 call!236864))))))

(assert (= (and d!907171 c!552335) b!3270648))

(assert (= (and d!907171 (not c!552335)) b!3270649))

(assert (= (and d!907171 res!1329143) b!3270650))

(assert (= (and b!3270650 res!1329144) b!3270651))

(declare-fun m!3574019 () Bool)

(assert (=> b!3270650 m!3574019))

(declare-fun m!3574021 () Bool)

(assert (=> b!3270650 m!3574021))

(declare-fun m!3574023 () Bool)

(assert (=> b!3270650 m!3574023))

(declare-fun m!3574025 () Bool)

(assert (=> b!3270649 m!3574025))

(declare-fun m!3574027 () Bool)

(assert (=> d!907171 m!3574027))

(declare-fun m!3574029 () Bool)

(assert (=> d!907171 m!3574029))

(declare-fun m!3574031 () Bool)

(assert (=> d!907171 m!3574031))

(assert (=> bm!236858 d!907171))

(assert (=> b!3268739 d!906719))

(assert (=> b!3268177 d!906725))

(declare-fun d!907173 () Bool)

(assert (=> d!907173 (= (apply!8348 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249))))) (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249))))))))

(declare-fun b_lambda!90647 () Bool)

(assert (=> (not b_lambda!90647) (not d!907173)))

(declare-fun t!247722 () Bool)

(declare-fun tb!165901 () Bool)

(assert (=> (and b!3268826 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247722) tb!165901))

(declare-fun result!208596 () Bool)

(assert (=> tb!165901 (= result!208596 (inv!21 (dynLambda!14885 (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249))))) (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249)))))))))

(declare-fun m!3574033 () Bool)

(assert (=> tb!165901 m!3574033))

(assert (=> d!907173 t!247722))

(declare-fun b_and!221585 () Bool)

(assert (= b_and!221583 (and (=> t!247722 result!208596) b_and!221585)))

(declare-fun tb!165903 () Bool)

(declare-fun t!247724 () Bool)

(assert (=> (and b!3267900 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247724) tb!165903))

(declare-fun result!208598 () Bool)

(assert (= result!208598 result!208596))

(assert (=> d!907173 t!247724))

(declare-fun b_and!221587 () Bool)

(assert (= b_and!221575 (and (=> t!247724 result!208598) b_and!221587)))

(declare-fun tb!165905 () Bool)

(declare-fun t!247726 () Bool)

(assert (=> (and b!3267901 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247726) tb!165905))

(declare-fun result!208600 () Bool)

(assert (= result!208600 result!208596))

(assert (=> d!907173 t!247726))

(declare-fun b_and!221589 () Bool)

(assert (= b_and!221577 (and (=> t!247726 result!208600) b_and!221589)))

(declare-fun tb!165907 () Bool)

(declare-fun t!247728 () Bool)

(assert (=> (and b!3268812 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247728) tb!165907))

(declare-fun result!208602 () Bool)

(assert (= result!208602 result!208596))

(assert (=> d!907173 t!247728))

(declare-fun b_and!221591 () Bool)

(assert (= b_and!221581 (and (=> t!247728 result!208602) b_and!221591)))

(declare-fun tb!165909 () Bool)

(declare-fun t!247730 () Bool)

(assert (=> (and b!3267911 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247730) tb!165909))

(declare-fun result!208604 () Bool)

(assert (= result!208604 result!208596))

(assert (=> d!907173 t!247730))

(declare-fun b_and!221593 () Bool)

(assert (= b_and!221579 (and (=> t!247730 result!208604) b_and!221593)))

(assert (=> d!907173 m!3569815))

(declare-fun m!3574035 () Bool)

(assert (=> d!907173 m!3574035))

(assert (=> b!3268177 d!907173))

(declare-fun d!907175 () Bool)

(assert (=> d!907175 (= (seqFromList!3632 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249)))) (fromListB!1586 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108249)))))))

(declare-fun bs!546198 () Bool)

(assert (= bs!546198 d!907175))

(declare-fun m!3574037 () Bool)

(assert (=> bs!546198 m!3574037))

(assert (=> b!3268177 d!907175))

(declare-fun d!907177 () Bool)

(declare-fun c!552336 () Bool)

(assert (=> d!907177 (= c!552336 ((_ is Nil!36444) lt!1108322))))

(declare-fun e!2036785 () (InoxSet Token!9934))

(assert (=> d!907177 (= (content!4946 lt!1108322) e!2036785)))

(declare-fun b!3270652 () Bool)

(assert (=> b!3270652 (= e!2036785 ((as const (Array Token!9934 Bool)) false))))

(declare-fun b!3270653 () Bool)

(assert (=> b!3270653 (= e!2036785 ((_ map or) (store ((as const (Array Token!9934 Bool)) false) (h!41864 lt!1108322) true) (content!4946 (t!247339 lt!1108322))))))

(assert (= (and d!907177 c!552336) b!3270652))

(assert (= (and d!907177 (not c!552336)) b!3270653))

(declare-fun m!3574039 () Bool)

(assert (=> b!3270653 m!3574039))

(declare-fun m!3574041 () Bool)

(assert (=> b!3270653 m!3574041))

(assert (=> b!3268404 d!907177))

(declare-fun c!552337 () Bool)

(declare-fun d!907179 () Bool)

(assert (=> d!907179 (= c!552337 ((_ is Nil!36444) (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))

(declare-fun e!2036786 () (InoxSet Token!9934))

(assert (=> d!907179 (= (content!4946 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))) e!2036786)))

(declare-fun b!3270654 () Bool)

(assert (=> b!3270654 (= e!2036786 ((as const (Array Token!9934 Bool)) false))))

(declare-fun b!3270655 () Bool)

(assert (=> b!3270655 (= e!2036786 ((_ map or) (store ((as const (Array Token!9934 Bool)) false) (h!41864 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))) true) (content!4946 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))))

(assert (= (and d!907179 c!552337) b!3270654))

(assert (= (and d!907179 (not c!552337)) b!3270655))

(declare-fun m!3574043 () Bool)

(assert (=> b!3270655 m!3574043))

(declare-fun m!3574045 () Bool)

(assert (=> b!3270655 m!3574045))

(assert (=> b!3268404 d!907179))

(declare-fun d!907181 () Bool)

(assert (=> d!907181 (= (list!13032 lt!1108371) (list!13035 (c!551639 lt!1108371)))))

(declare-fun bs!546199 () Bool)

(assert (= bs!546199 d!907181))

(declare-fun m!3574047 () Bool)

(assert (=> bs!546199 m!3574047))

(assert (=> d!905979 d!907181))

(declare-fun d!907183 () Bool)

(declare-fun c!552338 () Bool)

(assert (=> d!907183 (= c!552338 ((_ is Cons!36444) (list!13033 lt!1108159)))))

(declare-fun e!2036787 () List!36567)

(assert (=> d!907183 (= (printList!1423 thiss!18206 (list!13033 lt!1108159)) e!2036787)))

(declare-fun b!3270656 () Bool)

(assert (=> b!3270656 (= e!2036787 (++!8798 (list!13032 (charsOf!3300 (h!41864 (list!13033 lt!1108159)))) (printList!1423 thiss!18206 (t!247339 (list!13033 lt!1108159)))))))

(declare-fun b!3270657 () Bool)

(assert (=> b!3270657 (= e!2036787 Nil!36443)))

(assert (= (and d!907183 c!552338) b!3270656))

(assert (= (and d!907183 (not c!552338)) b!3270657))

(declare-fun m!3574049 () Bool)

(assert (=> b!3270656 m!3574049))

(assert (=> b!3270656 m!3574049))

(declare-fun m!3574051 () Bool)

(assert (=> b!3270656 m!3574051))

(declare-fun m!3574053 () Bool)

(assert (=> b!3270656 m!3574053))

(assert (=> b!3270656 m!3574051))

(assert (=> b!3270656 m!3574053))

(declare-fun m!3574055 () Bool)

(assert (=> b!3270656 m!3574055))

(assert (=> d!905979 d!907183))

(assert (=> d!905979 d!906803))

(assert (=> d!905979 d!905977))

(assert (=> b!3268760 d!906635))

(declare-fun d!907185 () Bool)

(declare-fun lt!1109470 () Int)

(assert (=> d!907185 (>= lt!1109470 0)))

(declare-fun e!2036788 () Int)

(assert (=> d!907185 (= lt!1109470 e!2036788)))

(declare-fun c!552339 () Bool)

(assert (=> d!907185 (= c!552339 ((_ is Nil!36443) (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477)))))))

(assert (=> d!907185 (= (size!27503 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477)))) lt!1109470)))

(declare-fun b!3270658 () Bool)

(assert (=> b!3270658 (= e!2036788 0)))

(declare-fun b!3270659 () Bool)

(assert (=> b!3270659 (= e!2036788 (+ 1 (size!27503 (t!247338 (originalCharacters!5998 (_1!21093 (get!11625 lt!1108477)))))))))

(assert (= (and d!907185 c!552339) b!3270658))

(assert (= (and d!907185 (not c!552339)) b!3270659))

(declare-fun m!3574057 () Bool)

(assert (=> b!3270659 m!3574057))

(assert (=> b!3268760 d!907185))

(declare-fun bs!546200 () Bool)

(declare-fun d!907187 () Bool)

(assert (= bs!546200 (and d!907187 d!906855)))

(declare-fun lambda!118666 () Int)

(assert (=> bs!546200 (= (and (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (= lambda!118666 lambda!118656))))

(declare-fun bs!546201 () Bool)

(assert (= bs!546201 (and d!907187 d!906909)))

(assert (=> bs!546201 (= (and (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (h!41865 rules!2135)))) (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (h!41865 rules!2135))))) (= lambda!118666 lambda!118657))))

(declare-fun bs!546202 () Bool)

(assert (= bs!546202 (and d!907187 d!907067)))

(assert (=> bs!546202 (= (and (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (= lambda!118666 lambda!118664))))

(assert (=> d!907187 true))

(assert (=> d!907187 (< (dynLambda!14884 order!18861 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) (dynLambda!14889 order!18869 lambda!118666))))

(assert (=> d!907187 true))

(assert (=> d!907187 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))) (dynLambda!14889 order!18869 lambda!118666))))

(assert (=> d!907187 (= (semiInverseModEq!2181 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241)))) (Forall!1285 lambda!118666))))

(declare-fun bs!546203 () Bool)

(assert (= bs!546203 d!907187))

(declare-fun m!3574059 () Bool)

(assert (=> bs!546203 m!3574059))

(assert (=> d!905945 d!907187))

(declare-fun d!907189 () Bool)

(assert (=> d!907189 (= (list!13032 lt!1108339) (list!13035 (c!551639 lt!1108339)))))

(declare-fun bs!546204 () Bool)

(assert (= bs!546204 d!907189))

(declare-fun m!3574061 () Bool)

(assert (=> bs!546204 m!3574061))

(assert (=> d!905967 d!907189))

(declare-fun d!907191 () Bool)

(declare-fun c!552340 () Bool)

(assert (=> d!907191 (= c!552340 ((_ is Cons!36444) (list!13033 lt!1108152)))))

(declare-fun e!2036789 () List!36567)

(assert (=> d!907191 (= (printWithSeparatorTokenList!198 thiss!18206 (list!13033 lt!1108152) separatorToken!241) e!2036789)))

(declare-fun b!3270660 () Bool)

(assert (=> b!3270660 (= e!2036789 (++!8798 (++!8798 (list!13032 (charsOf!3300 (h!41864 (list!13033 lt!1108152)))) (list!13032 (charsOf!3300 separatorToken!241))) (printWithSeparatorTokenList!198 thiss!18206 (t!247339 (list!13033 lt!1108152)) separatorToken!241)))))

(declare-fun b!3270661 () Bool)

(assert (=> b!3270661 (= e!2036789 Nil!36443)))

(assert (= (and d!907191 c!552340) b!3270660))

(assert (= (and d!907191 (not c!552340)) b!3270661))

(declare-fun m!3574063 () Bool)

(assert (=> b!3270660 m!3574063))

(declare-fun m!3574065 () Bool)

(assert (=> b!3270660 m!3574065))

(assert (=> b!3270660 m!3574065))

(assert (=> b!3270660 m!3569515))

(declare-fun m!3574067 () Bool)

(assert (=> b!3270660 m!3574067))

(assert (=> b!3270660 m!3569507))

(assert (=> b!3270660 m!3569507))

(assert (=> b!3270660 m!3569515))

(assert (=> b!3270660 m!3574067))

(declare-fun m!3574069 () Bool)

(assert (=> b!3270660 m!3574069))

(declare-fun m!3574071 () Bool)

(assert (=> b!3270660 m!3574071))

(assert (=> b!3270660 m!3574069))

(assert (=> b!3270660 m!3574063))

(assert (=> d!905967 d!907191))

(assert (=> d!905967 d!907123))

(declare-fun d!907193 () Bool)

(declare-fun lt!1109475 () BalanceConc!21500)

(assert (=> d!907193 (= (list!13032 lt!1109475) (printWithSeparatorTokenListTailRec!10 thiss!18206 (dropList!1104 lt!1108152 0) separatorToken!241 (list!13032 (BalanceConc!21501 Empty!10943))))))

(declare-fun e!2036791 () BalanceConc!21500)

(assert (=> d!907193 (= lt!1109475 e!2036791)))

(declare-fun c!552341 () Bool)

(assert (=> d!907193 (= c!552341 (>= 0 (size!27508 lt!1108152)))))

(declare-fun e!2036790 () Bool)

(assert (=> d!907193 e!2036790))

(declare-fun res!1329145 () Bool)

(assert (=> d!907193 (=> (not res!1329145) (not e!2036790))))

(assert (=> d!907193 (= res!1329145 (>= 0 0))))

(assert (=> d!907193 (= (printWithSeparatorTokenTailRec!26 thiss!18206 lt!1108152 separatorToken!241 0 (BalanceConc!21501 Empty!10943)) lt!1109475)))

(declare-fun b!3270662 () Bool)

(assert (=> b!3270662 (= e!2036790 (<= 0 (size!27508 lt!1108152)))))

(declare-fun b!3270663 () Bool)

(assert (=> b!3270663 (= e!2036791 (BalanceConc!21501 Empty!10943))))

(declare-fun b!3270664 () Bool)

(assert (=> b!3270664 (= e!2036791 (printWithSeparatorTokenTailRec!26 thiss!18206 lt!1108152 separatorToken!241 (+ 0 1) (++!8800 (++!8800 (BalanceConc!21501 Empty!10943) (charsOf!3300 (apply!8350 lt!1108152 0))) (charsOf!3300 separatorToken!241))))))

(declare-fun lt!1109476 () List!36568)

(assert (=> b!3270664 (= lt!1109476 (list!13033 lt!1108152))))

(declare-fun lt!1109474 () Unit!51218)

(assert (=> b!3270664 (= lt!1109474 (lemmaDropApply!1063 lt!1109476 0))))

(assert (=> b!3270664 (= (head!7115 (drop!1893 lt!1109476 0)) (apply!8352 lt!1109476 0))))

(declare-fun lt!1109473 () Unit!51218)

(assert (=> b!3270664 (= lt!1109473 lt!1109474)))

(declare-fun lt!1109477 () List!36568)

(assert (=> b!3270664 (= lt!1109477 (list!13033 lt!1108152))))

(declare-fun lt!1109472 () Unit!51218)

(assert (=> b!3270664 (= lt!1109472 (lemmaDropTail!947 lt!1109477 0))))

(assert (=> b!3270664 (= (tail!5253 (drop!1893 lt!1109477 0)) (drop!1893 lt!1109477 (+ 0 1)))))

(declare-fun lt!1109471 () Unit!51218)

(assert (=> b!3270664 (= lt!1109471 lt!1109472)))

(assert (= (and d!907193 res!1329145) b!3270662))

(assert (= (and d!907193 c!552341) b!3270663))

(assert (= (and d!907193 (not c!552341)) b!3270664))

(declare-fun m!3574073 () Bool)

(assert (=> d!907193 m!3574073))

(declare-fun m!3574075 () Bool)

(assert (=> d!907193 m!3574075))

(declare-fun m!3574077 () Bool)

(assert (=> d!907193 m!3574077))

(assert (=> d!907193 m!3570235))

(assert (=> d!907193 m!3574073))

(assert (=> d!907193 m!3570235))

(declare-fun m!3574079 () Bool)

(assert (=> d!907193 m!3574079))

(assert (=> b!3270662 m!3574077))

(declare-fun m!3574081 () Bool)

(assert (=> b!3270664 m!3574081))

(declare-fun m!3574083 () Bool)

(assert (=> b!3270664 m!3574083))

(declare-fun m!3574085 () Bool)

(assert (=> b!3270664 m!3574085))

(assert (=> b!3270664 m!3569507))

(declare-fun m!3574087 () Bool)

(assert (=> b!3270664 m!3574087))

(declare-fun m!3574089 () Bool)

(assert (=> b!3270664 m!3574089))

(declare-fun m!3574091 () Bool)

(assert (=> b!3270664 m!3574091))

(declare-fun m!3574093 () Bool)

(assert (=> b!3270664 m!3574093))

(assert (=> b!3270664 m!3574089))

(declare-fun m!3574095 () Bool)

(assert (=> b!3270664 m!3574095))

(assert (=> b!3270664 m!3569507))

(assert (=> b!3270664 m!3570051))

(declare-fun m!3574097 () Bool)

(assert (=> b!3270664 m!3574097))

(assert (=> b!3270664 m!3574087))

(declare-fun m!3574099 () Bool)

(assert (=> b!3270664 m!3574099))

(assert (=> b!3270664 m!3574083))

(declare-fun m!3574101 () Bool)

(assert (=> b!3270664 m!3574101))

(assert (=> b!3270664 m!3574091))

(assert (=> b!3270664 m!3574085))

(assert (=> b!3270664 m!3574081))

(declare-fun m!3574103 () Bool)

(assert (=> b!3270664 m!3574103))

(declare-fun m!3574105 () Bool)

(assert (=> b!3270664 m!3574105))

(assert (=> d!905967 d!907193))

(assert (=> b!3268180 d!906727))

(assert (=> b!3268180 d!906729))

(assert (=> b!3268180 d!906725))

(declare-fun bs!546205 () Bool)

(declare-fun d!907195 () Bool)

(assert (= bs!546205 (and d!907195 b!3267882)))

(declare-fun lambda!118669 () Int)

(assert (=> bs!546205 (not (= lambda!118669 lambda!118615))))

(declare-fun bs!546206 () Bool)

(assert (= bs!546206 (and d!907195 d!905887)))

(assert (=> bs!546206 (= lambda!118669 lambda!118625)))

(declare-fun b!3270673 () Bool)

(declare-fun e!2036800 () Bool)

(assert (=> b!3270673 (= e!2036800 true)))

(declare-fun b!3270672 () Bool)

(declare-fun e!2036799 () Bool)

(assert (=> b!3270672 (= e!2036799 e!2036800)))

(declare-fun b!3270671 () Bool)

(declare-fun e!2036798 () Bool)

(assert (=> b!3270671 (= e!2036798 e!2036799)))

(assert (=> d!907195 e!2036798))

(assert (= b!3270672 b!3270673))

(assert (= b!3270671 b!3270672))

(assert (= (and d!907195 ((_ is Cons!36445) rules!2135)) b!3270671))

(assert (=> b!3270673 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (h!41865 rules!2135)))) (dynLambda!14883 order!18859 lambda!118669))))

(assert (=> b!3270673 (< (dynLambda!14884 order!18861 (toChars!7263 (transformation!5284 (h!41865 rules!2135)))) (dynLambda!14883 order!18859 lambda!118669))))

(assert (=> d!907195 true))

(declare-fun lt!1109480 () Bool)

(assert (=> d!907195 (= lt!1109480 (forall!7522 (list!13033 lt!1108152) lambda!118669))))

(declare-fun e!2036797 () Bool)

(assert (=> d!907195 (= lt!1109480 e!2036797)))

(declare-fun res!1329150 () Bool)

(assert (=> d!907195 (=> res!1329150 e!2036797)))

(assert (=> d!907195 (= res!1329150 (not ((_ is Cons!36444) (list!13033 lt!1108152))))))

(assert (=> d!907195 (not (isEmpty!20560 rules!2135))))

(assert (=> d!907195 (= (rulesProduceEachTokenIndividuallyList!1753 thiss!18206 rules!2135 (list!13033 lt!1108152)) lt!1109480)))

(declare-fun b!3270669 () Bool)

(declare-fun e!2036796 () Bool)

(assert (=> b!3270669 (= e!2036797 e!2036796)))

(declare-fun res!1329151 () Bool)

(assert (=> b!3270669 (=> (not res!1329151) (not e!2036796))))

(assert (=> b!3270669 (= res!1329151 (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 (h!41864 (list!13033 lt!1108152))))))

(declare-fun b!3270670 () Bool)

(assert (=> b!3270670 (= e!2036796 (rulesProduceEachTokenIndividuallyList!1753 thiss!18206 rules!2135 (t!247339 (list!13033 lt!1108152))))))

(assert (= (and d!907195 (not res!1329150)) b!3270669))

(assert (= (and b!3270669 res!1329151) b!3270670))

(assert (=> d!907195 m!3570051))

(declare-fun m!3574107 () Bool)

(assert (=> d!907195 m!3574107))

(assert (=> d!907195 m!3569453))

(declare-fun m!3574109 () Bool)

(assert (=> b!3270669 m!3574109))

(declare-fun m!3574111 () Bool)

(assert (=> b!3270670 m!3574111))

(assert (=> b!3268375 d!907195))

(assert (=> b!3268375 d!907123))

(declare-fun d!907197 () Bool)

(assert (=> d!907197 (= (isEmpty!20566 lt!1108477) (not ((_ is Some!7256) lt!1108477)))))

(assert (=> d!906069 d!907197))

(declare-fun d!907199 () Bool)

(assert (=> d!907199 (= (isEmpty!20562 (_1!21096 lt!1108480)) ((_ is Nil!36443) (_1!21096 lt!1108480)))))

(assert (=> d!906069 d!907199))

(declare-fun d!907201 () Bool)

(declare-fun lt!1109504 () tuple2!35924)

(assert (=> d!907201 (= (++!8798 (_1!21096 lt!1109504) (_2!21096 lt!1109504)) lt!1108158)))

(declare-fun sizeTr!171 (List!36567 Int) Int)

(assert (=> d!907201 (= lt!1109504 (findLongestMatchInner!845 (regex!5284 (rule!7766 (h!41864 tokens!494))) Nil!36443 0 lt!1108158 lt!1108158 (sizeTr!171 lt!1108158 0)))))

(declare-fun lt!1109498 () Unit!51218)

(declare-fun lt!1109503 () Unit!51218)

(assert (=> d!907201 (= lt!1109498 lt!1109503)))

(declare-fun lt!1109502 () List!36567)

(declare-fun lt!1109501 () Int)

(assert (=> d!907201 (= (sizeTr!171 lt!1109502 lt!1109501) (+ (size!27503 lt!1109502) lt!1109501))))

(declare-fun lemmaSizeTrEqualsSize!170 (List!36567 Int) Unit!51218)

(assert (=> d!907201 (= lt!1109503 (lemmaSizeTrEqualsSize!170 lt!1109502 lt!1109501))))

(assert (=> d!907201 (= lt!1109501 0)))

(assert (=> d!907201 (= lt!1109502 Nil!36443)))

(declare-fun lt!1109499 () Unit!51218)

(declare-fun lt!1109500 () Unit!51218)

(assert (=> d!907201 (= lt!1109499 lt!1109500)))

(declare-fun lt!1109497 () Int)

(assert (=> d!907201 (= (sizeTr!171 lt!1108158 lt!1109497) (+ (size!27503 lt!1108158) lt!1109497))))

(assert (=> d!907201 (= lt!1109500 (lemmaSizeTrEqualsSize!170 lt!1108158 lt!1109497))))

(assert (=> d!907201 (= lt!1109497 0)))

(assert (=> d!907201 (validRegex!4567 (regex!5284 (rule!7766 (h!41864 tokens!494))))))

(assert (=> d!907201 (= (findLongestMatch!760 (regex!5284 (rule!7766 (h!41864 tokens!494))) lt!1108158) lt!1109504)))

(declare-fun bs!546207 () Bool)

(assert (= bs!546207 d!907201))

(assert (=> bs!546207 m!3572433))

(declare-fun m!3574113 () Bool)

(assert (=> bs!546207 m!3574113))

(declare-fun m!3574115 () Bool)

(assert (=> bs!546207 m!3574115))

(declare-fun m!3574117 () Bool)

(assert (=> bs!546207 m!3574117))

(assert (=> bs!546207 m!3569527))

(declare-fun m!3574119 () Bool)

(assert (=> bs!546207 m!3574119))

(declare-fun m!3574121 () Bool)

(assert (=> bs!546207 m!3574121))

(declare-fun m!3574123 () Bool)

(assert (=> bs!546207 m!3574123))

(declare-fun m!3574125 () Bool)

(assert (=> bs!546207 m!3574125))

(assert (=> bs!546207 m!3574121))

(declare-fun m!3574127 () Bool)

(assert (=> bs!546207 m!3574127))

(assert (=> d!906069 d!907201))

(declare-fun d!907203 () Bool)

(declare-fun res!1329156 () Bool)

(declare-fun e!2036803 () Bool)

(assert (=> d!907203 (=> (not res!1329156) (not e!2036803))))

(assert (=> d!907203 (= res!1329156 (validRegex!4567 (regex!5284 (rule!7766 (h!41864 tokens!494)))))))

(assert (=> d!907203 (= (ruleValid!1666 thiss!18206 (rule!7766 (h!41864 tokens!494))) e!2036803)))

(declare-fun b!3270678 () Bool)

(declare-fun res!1329157 () Bool)

(assert (=> b!3270678 (=> (not res!1329157) (not e!2036803))))

(assert (=> b!3270678 (= res!1329157 (not (nullable!3411 (regex!5284 (rule!7766 (h!41864 tokens!494))))))))

(declare-fun b!3270679 () Bool)

(assert (=> b!3270679 (= e!2036803 (not (= (tag!5824 (rule!7766 (h!41864 tokens!494))) (String!40905 ""))))))

(assert (= (and d!907203 res!1329156) b!3270678))

(assert (= (and b!3270678 res!1329157) b!3270679))

(assert (=> d!907203 m!3572433))

(assert (=> b!3270678 m!3572435))

(assert (=> d!906069 d!907203))

(declare-fun b!3270680 () Bool)

(declare-fun res!1329159 () Bool)

(declare-fun e!2036806 () Bool)

(assert (=> b!3270680 (=> (not res!1329159) (not e!2036806))))

(declare-fun lt!1109505 () List!36568)

(assert (=> b!3270680 (= res!1329159 (= ((_ map implies) (content!4946 lt!1109505) (content!4946 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))) ((as const (InoxSet Token!9934)) true)))))

(declare-fun b!3270681 () Bool)

(declare-fun e!2036805 () List!36568)

(assert (=> b!3270681 (= e!2036805 Nil!36444)))

(declare-fun b!3270682 () Bool)

(declare-fun e!2036804 () List!36568)

(declare-fun call!237061 () List!36568)

(assert (=> b!3270682 (= e!2036804 call!237061)))

(declare-fun b!3270683 () Bool)

(assert (=> b!3270683 (= e!2036806 (forall!7522 lt!1109505 lambda!118615))))

(declare-fun bm!237056 () Bool)

(assert (=> bm!237056 (= call!237061 (filter!524 (t!247339 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))) lambda!118615))))

(declare-fun d!907205 () Bool)

(assert (=> d!907205 e!2036806))

(declare-fun res!1329158 () Bool)

(assert (=> d!907205 (=> (not res!1329158) (not e!2036806))))

(assert (=> d!907205 (= res!1329158 (<= (size!27506 lt!1109505) (size!27506 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))))

(assert (=> d!907205 (= lt!1109505 e!2036805)))

(declare-fun c!552343 () Bool)

(assert (=> d!907205 (= c!552343 ((_ is Nil!36444) (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))))))

(assert (=> d!907205 (= (filter!524 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))) lambda!118615) lt!1109505)))

(declare-fun b!3270684 () Bool)

(assert (=> b!3270684 (= e!2036805 e!2036804)))

(declare-fun c!552342 () Bool)

(assert (=> b!3270684 (= c!552342 (dynLambda!14876 lambda!118615 (h!41864 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))))

(declare-fun b!3270685 () Bool)

(assert (=> b!3270685 (= e!2036804 (Cons!36444 (h!41864 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241)))))) call!237061))))

(assert (= (and d!907205 c!552343) b!3270681))

(assert (= (and d!907205 (not c!552343)) b!3270684))

(assert (= (and b!3270684 c!552342) b!3270685))

(assert (= (and b!3270684 (not c!552342)) b!3270682))

(assert (= (or b!3270685 b!3270682) bm!237056))

(assert (= (and d!907205 res!1329158) b!3270680))

(assert (= (and b!3270680 res!1329159) b!3270683))

(declare-fun b_lambda!90649 () Bool)

(assert (=> (not b_lambda!90649) (not b!3270684)))

(declare-fun m!3574129 () Bool)

(assert (=> b!3270680 m!3574129))

(assert (=> b!3270680 m!3574045))

(declare-fun m!3574131 () Bool)

(assert (=> b!3270683 m!3574131))

(declare-fun m!3574133 () Bool)

(assert (=> b!3270684 m!3574133))

(declare-fun m!3574135 () Bool)

(assert (=> bm!237056 m!3574135))

(declare-fun m!3574137 () Bool)

(assert (=> d!907205 m!3574137))

(assert (=> d!907205 m!3574007))

(assert (=> bm!236842 d!907205))

(declare-fun b!3270686 () Bool)

(declare-fun e!2036807 () Bool)

(assert (=> b!3270686 (= e!2036807 (= (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))) (c!551638 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))))))

(declare-fun b!3270687 () Bool)

(declare-fun e!2036809 () Bool)

(assert (=> b!3270687 (= e!2036809 (not (= (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))) (c!551638 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))))))))

(declare-fun b!3270688 () Bool)

(declare-fun res!1329161 () Bool)

(assert (=> b!3270688 (=> (not res!1329161) (not e!2036807))))

(assert (=> b!3270688 (= res!1329161 (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))))))))

(declare-fun b!3270689 () Bool)

(declare-fun e!2036813 () Bool)

(declare-fun lt!1109506 () Bool)

(declare-fun call!237062 () Bool)

(assert (=> b!3270689 (= e!2036813 (= lt!1109506 call!237062))))

(declare-fun b!3270690 () Bool)

(declare-fun e!2036808 () Bool)

(assert (=> b!3270690 (= e!2036808 (matchR!4665 (derivativeStep!2964 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))) (head!7113 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))))) (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241)))))))))

(declare-fun b!3270691 () Bool)

(declare-fun res!1329162 () Bool)

(assert (=> b!3270691 (=> (not res!1329162) (not e!2036807))))

(assert (=> b!3270691 (= res!1329162 (not call!237062))))

(declare-fun b!3270692 () Bool)

(assert (=> b!3270692 (= e!2036808 (nullable!3411 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))))))

(declare-fun b!3270693 () Bool)

(declare-fun e!2036810 () Bool)

(assert (=> b!3270693 (= e!2036810 e!2036809)))

(declare-fun res!1329166 () Bool)

(assert (=> b!3270693 (=> res!1329166 e!2036809)))

(assert (=> b!3270693 (= res!1329166 call!237062)))

(declare-fun b!3270695 () Bool)

(declare-fun e!2036811 () Bool)

(assert (=> b!3270695 (= e!2036811 (not lt!1109506))))

(declare-fun bm!237057 () Bool)

(assert (=> bm!237057 (= call!237062 (isEmpty!20562 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))))))

(declare-fun b!3270696 () Bool)

(declare-fun res!1329160 () Bool)

(assert (=> b!3270696 (=> res!1329160 e!2036809)))

(assert (=> b!3270696 (= res!1329160 (not (isEmpty!20562 (tail!5250 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))))))))

(declare-fun b!3270697 () Bool)

(declare-fun res!1329167 () Bool)

(declare-fun e!2036812 () Bool)

(assert (=> b!3270697 (=> res!1329167 e!2036812)))

(assert (=> b!3270697 (= res!1329167 e!2036807)))

(declare-fun res!1329164 () Bool)

(assert (=> b!3270697 (=> (not res!1329164) (not e!2036807))))

(assert (=> b!3270697 (= res!1329164 lt!1109506)))

(declare-fun d!907207 () Bool)

(assert (=> d!907207 e!2036813))

(declare-fun c!552346 () Bool)

(assert (=> d!907207 (= c!552346 ((_ is EmptyExpr!10043) (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))))))

(assert (=> d!907207 (= lt!1109506 e!2036808)))

(declare-fun c!552345 () Bool)

(assert (=> d!907207 (= c!552345 (isEmpty!20562 (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))))))

(assert (=> d!907207 (validRegex!4567 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))))

(assert (=> d!907207 (= (matchR!4665 (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))) (list!13032 (charsOf!3300 (_1!21093 (get!11625 lt!1108241))))) lt!1109506)))

(declare-fun b!3270694 () Bool)

(assert (=> b!3270694 (= e!2036812 e!2036810)))

(declare-fun res!1329165 () Bool)

(assert (=> b!3270694 (=> (not res!1329165) (not e!2036810))))

(assert (=> b!3270694 (= res!1329165 (not lt!1109506))))

(declare-fun b!3270698 () Bool)

(declare-fun res!1329163 () Bool)

(assert (=> b!3270698 (=> res!1329163 e!2036812)))

(assert (=> b!3270698 (= res!1329163 (not ((_ is ElementMatch!10043) (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))))))

(assert (=> b!3270698 (= e!2036811 e!2036812)))

(declare-fun b!3270699 () Bool)

(assert (=> b!3270699 (= e!2036813 e!2036811)))

(declare-fun c!552344 () Bool)

(assert (=> b!3270699 (= c!552344 ((_ is EmptyLang!10043) (regex!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241))))))))

(assert (= (and d!907207 c!552345) b!3270692))

(assert (= (and d!907207 (not c!552345)) b!3270690))

(assert (= (and d!907207 c!552346) b!3270689))

(assert (= (and d!907207 (not c!552346)) b!3270699))

(assert (= (and b!3270699 c!552344) b!3270695))

(assert (= (and b!3270699 (not c!552344)) b!3270698))

(assert (= (and b!3270698 (not res!1329163)) b!3270697))

(assert (= (and b!3270697 res!1329164) b!3270691))

(assert (= (and b!3270691 res!1329162) b!3270688))

(assert (= (and b!3270688 res!1329161) b!3270686))

(assert (= (and b!3270697 (not res!1329167)) b!3270694))

(assert (= (and b!3270694 res!1329165) b!3270693))

(assert (= (and b!3270693 (not res!1329166)) b!3270696))

(assert (= (and b!3270696 (not res!1329160)) b!3270687))

(assert (= (or b!3270689 b!3270691 b!3270693) bm!237057))

(assert (=> bm!237057 m!3569769))

(declare-fun m!3574139 () Bool)

(assert (=> bm!237057 m!3574139))

(assert (=> b!3270686 m!3569769))

(declare-fun m!3574141 () Bool)

(assert (=> b!3270686 m!3574141))

(assert (=> b!3270687 m!3569769))

(assert (=> b!3270687 m!3574141))

(assert (=> b!3270696 m!3569769))

(declare-fun m!3574143 () Bool)

(assert (=> b!3270696 m!3574143))

(assert (=> b!3270696 m!3574143))

(declare-fun m!3574145 () Bool)

(assert (=> b!3270696 m!3574145))

(assert (=> d!907207 m!3569769))

(assert (=> d!907207 m!3574139))

(declare-fun m!3574147 () Bool)

(assert (=> d!907207 m!3574147))

(assert (=> b!3270688 m!3569769))

(assert (=> b!3270688 m!3574143))

(assert (=> b!3270688 m!3574143))

(assert (=> b!3270688 m!3574145))

(declare-fun m!3574149 () Bool)

(assert (=> b!3270692 m!3574149))

(assert (=> b!3270690 m!3569769))

(assert (=> b!3270690 m!3574141))

(assert (=> b!3270690 m!3574141))

(declare-fun m!3574151 () Bool)

(assert (=> b!3270690 m!3574151))

(assert (=> b!3270690 m!3569769))

(assert (=> b!3270690 m!3574143))

(assert (=> b!3270690 m!3574151))

(assert (=> b!3270690 m!3574143))

(declare-fun m!3574153 () Bool)

(assert (=> b!3270690 m!3574153))

(assert (=> b!3268167 d!907207))

(assert (=> b!3268167 d!906775))

(assert (=> b!3268167 d!906861))

(assert (=> b!3268167 d!906863))

(declare-fun d!907209 () Bool)

(assert (=> d!907209 (= (isEmpty!20561 (_1!21092 lt!1108334)) ((_ is Nil!36444) (_1!21092 lt!1108334)))))

(assert (=> b!3268445 d!907209))

(assert (=> b!3267993 d!906771))

(declare-fun b!3270700 () Bool)

(declare-fun e!2036814 () Bool)

(declare-fun tp!1027238 () Bool)

(assert (=> b!3270700 (= e!2036814 (and tp_is_empty!17349 tp!1027238))))

(assert (=> b!3268835 (= tp!1027108 e!2036814)))

(assert (= (and b!3268835 ((_ is Cons!36443) (t!247338 (originalCharacters!5998 (h!41864 tokens!494))))) b!3270700))

(declare-fun b!3270702 () Bool)

(declare-fun e!2036815 () Bool)

(declare-fun tp!1027242 () Bool)

(declare-fun tp!1027241 () Bool)

(assert (=> b!3270702 (= e!2036815 (and tp!1027242 tp!1027241))))

(declare-fun b!3270704 () Bool)

(declare-fun tp!1027239 () Bool)

(declare-fun tp!1027240 () Bool)

(assert (=> b!3270704 (= e!2036815 (and tp!1027239 tp!1027240))))

(assert (=> b!3268825 (= tp!1027096 e!2036815)))

(declare-fun b!3270703 () Bool)

(declare-fun tp!1027243 () Bool)

(assert (=> b!3270703 (= e!2036815 tp!1027243)))

(declare-fun b!3270701 () Bool)

(assert (=> b!3270701 (= e!2036815 tp_is_empty!17349)))

(assert (= (and b!3268825 ((_ is ElementMatch!10043) (regex!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) b!3270701))

(assert (= (and b!3268825 ((_ is Concat!15557) (regex!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) b!3270702))

(assert (= (and b!3268825 ((_ is Star!10043) (regex!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) b!3270703))

(assert (= (and b!3268825 ((_ is Union!10043) (regex!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) b!3270704))

(declare-fun b!3270706 () Bool)

(declare-fun e!2036816 () Bool)

(declare-fun tp!1027247 () Bool)

(declare-fun tp!1027246 () Bool)

(assert (=> b!3270706 (= e!2036816 (and tp!1027247 tp!1027246))))

(declare-fun b!3270708 () Bool)

(declare-fun tp!1027244 () Bool)

(declare-fun tp!1027245 () Bool)

(assert (=> b!3270708 (= e!2036816 (and tp!1027244 tp!1027245))))

(assert (=> b!3268811 (= tp!1027083 e!2036816)))

(declare-fun b!3270707 () Bool)

(declare-fun tp!1027248 () Bool)

(assert (=> b!3270707 (= e!2036816 tp!1027248)))

(declare-fun b!3270705 () Bool)

(assert (=> b!3270705 (= e!2036816 tp_is_empty!17349)))

(assert (= (and b!3268811 ((_ is ElementMatch!10043) (regex!5284 (h!41865 (t!247340 rules!2135))))) b!3270705))

(assert (= (and b!3268811 ((_ is Concat!15557) (regex!5284 (h!41865 (t!247340 rules!2135))))) b!3270706))

(assert (= (and b!3268811 ((_ is Star!10043) (regex!5284 (h!41865 (t!247340 rules!2135))))) b!3270707))

(assert (= (and b!3268811 ((_ is Union!10043) (regex!5284 (h!41865 (t!247340 rules!2135))))) b!3270708))

(declare-fun b!3270711 () Bool)

(declare-fun b_free!86573 () Bool)

(declare-fun b_next!87277 () Bool)

(assert (=> b!3270711 (= b_free!86573 (not b_next!87277))))

(declare-fun t!247734 () Bool)

(declare-fun tb!165911 () Bool)

(assert (=> (and b!3270711 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247734) tb!165911))

(declare-fun result!208606 () Bool)

(assert (= result!208606 result!208596))

(assert (=> d!907173 t!247734))

(declare-fun tb!165913 () Bool)

(declare-fun t!247736 () Bool)

(assert (=> (and b!3270711 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247736) tb!165913))

(declare-fun result!208608 () Bool)

(assert (= result!208608 result!208546))

(assert (=> d!906955 t!247736))

(declare-fun tb!165915 () Bool)

(declare-fun t!247738 () Bool)

(assert (=> (and b!3270711 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247738) tb!165915))

(declare-fun result!208610 () Bool)

(assert (= result!208610 result!208276))

(assert (=> d!906077 t!247738))

(declare-fun tb!165917 () Bool)

(declare-fun t!247740 () Bool)

(assert (=> (and b!3270711 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247740) tb!165917))

(declare-fun result!208612 () Bool)

(assert (= result!208612 result!208576))

(assert (=> d!907067 t!247740))

(declare-fun tb!165919 () Bool)

(declare-fun t!247742 () Bool)

(assert (=> (and b!3270711 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247742) tb!165919))

(declare-fun result!208614 () Bool)

(assert (= result!208614 result!208586))

(assert (=> d!907095 t!247742))

(declare-fun t!247744 () Bool)

(declare-fun tb!165921 () Bool)

(assert (=> (and b!3270711 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247744) tb!165921))

(declare-fun result!208616 () Bool)

(assert (= result!208616 result!208506))

(assert (=> d!906749 t!247744))

(assert (=> d!907073 t!247740))

(declare-fun tp!1027249 () Bool)

(declare-fun b_and!221595 () Bool)

(assert (=> b!3270711 (= tp!1027249 (and (=> t!247738 result!208610) (=> t!247740 result!208612) (=> t!247742 result!208614) (=> t!247734 result!208606) (=> t!247736 result!208608) (=> t!247744 result!208616) b_and!221595))))

(declare-fun b_free!86575 () Bool)

(declare-fun b_next!87279 () Bool)

(assert (=> b!3270711 (= b_free!86575 (not b_next!87279))))

(declare-fun tb!165923 () Bool)

(declare-fun t!247746 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0))))) t!247746) tb!165923))

(declare-fun result!208618 () Bool)

(assert (= result!208618 result!208516))

(assert (=> d!906819 t!247746))

(declare-fun t!247748 () Bool)

(declare-fun tb!165925 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247748) tb!165925))

(declare-fun result!208620 () Bool)

(assert (= result!208620 result!208536))

(assert (=> d!906863 t!247748))

(declare-fun t!247750 () Bool)

(declare-fun tb!165927 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247750) tb!165927))

(declare-fun result!208622 () Bool)

(assert (= result!208622 result!208404))

(assert (=> d!906633 t!247750))

(declare-fun tb!165929 () Bool)

(declare-fun t!247752 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247752) tb!165929))

(declare-fun result!208624 () Bool)

(assert (= result!208624 result!208496))

(assert (=> d!906729 t!247752))

(declare-fun t!247754 () Bool)

(declare-fun tb!165931 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) t!247754) tb!165931))

(declare-fun result!208626 () Bool)

(assert (= result!208626 result!208556))

(assert (=> d!907017 t!247754))

(declare-fun tb!165933 () Bool)

(declare-fun t!247756 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247756) tb!165933))

(declare-fun result!208628 () Bool)

(assert (= result!208628 result!208566))

(assert (=> d!907067 t!247756))

(declare-fun t!247758 () Bool)

(declare-fun tb!165935 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247758) tb!165935))

(declare-fun result!208630 () Bool)

(assert (= result!208630 result!208228))

(assert (=> b!3268028 t!247758))

(assert (=> d!905875 t!247758))

(declare-fun t!247760 () Bool)

(declare-fun tb!165937 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) t!247760) tb!165937))

(declare-fun result!208632 () Bool)

(assert (= result!208632 result!208250))

(assert (=> b!3268389 t!247760))

(assert (=> d!905969 t!247760))

(declare-fun tb!165939 () Bool)

(declare-fun t!247762 () Bool)

(assert (=> (and b!3270711 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) t!247762) tb!165939))

(declare-fun result!208634 () Bool)

(assert (= result!208634 result!208526))

(assert (=> b!3270242 t!247762))

(declare-fun tp!1027251 () Bool)

(declare-fun b_and!221597 () Bool)

(assert (=> b!3270711 (= tp!1027251 (and (=> t!247762 result!208634) (=> t!247752 result!208624) (=> t!247748 result!208620) (=> t!247746 result!208618) (=> t!247760 result!208632) (=> t!247758 result!208630) (=> t!247754 result!208626) (=> t!247756 result!208628) (=> t!247750 result!208622) b_and!221597))))

(declare-fun e!2036820 () Bool)

(assert (=> b!3270711 (= e!2036820 (and tp!1027249 tp!1027251))))

(declare-fun b!3270710 () Bool)

(declare-fun tp!1027250 () Bool)

(declare-fun e!2036819 () Bool)

(assert (=> b!3270710 (= e!2036819 (and tp!1027250 (inv!49365 (tag!5824 (h!41865 (t!247340 (t!247340 rules!2135))))) (inv!49369 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) e!2036820))))

(declare-fun b!3270709 () Bool)

(declare-fun e!2036817 () Bool)

(declare-fun tp!1027252 () Bool)

(assert (=> b!3270709 (= e!2036817 (and e!2036819 tp!1027252))))

(assert (=> b!3268810 (= tp!1027085 e!2036817)))

(assert (= b!3270710 b!3270711))

(assert (= b!3270709 b!3270710))

(assert (= (and b!3268810 ((_ is Cons!36445) (t!247340 (t!247340 rules!2135)))) b!3270709))

(declare-fun m!3574155 () Bool)

(assert (=> b!3270710 m!3574155))

(declare-fun m!3574157 () Bool)

(assert (=> b!3270710 m!3574157))

(declare-fun b!3270712 () Bool)

(declare-fun e!2036821 () Bool)

(declare-fun tp!1027253 () Bool)

(assert (=> b!3270712 (= e!2036821 (and tp_is_empty!17349 tp!1027253))))

(assert (=> b!3268824 (= tp!1027100 e!2036821)))

(assert (= (and b!3268824 ((_ is Cons!36443) (originalCharacters!5998 (h!41864 (t!247339 tokens!494))))) b!3270712))

(declare-fun b!3270716 () Bool)

(declare-fun b_free!86577 () Bool)

(declare-fun b_next!87281 () Bool)

(assert (=> b!3270716 (= b_free!86577 (not b_next!87281))))

(declare-fun tb!165941 () Bool)

(declare-fun t!247764 () Bool)

(assert (=> (and b!3270716 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247764) tb!165941))

(declare-fun result!208636 () Bool)

(assert (= result!208636 result!208596))

(assert (=> d!907173 t!247764))

(declare-fun t!247766 () Bool)

(declare-fun tb!165943 () Bool)

(assert (=> (and b!3270716 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247766) tb!165943))

(declare-fun result!208638 () Bool)

(assert (= result!208638 result!208546))

(assert (=> d!906955 t!247766))

(declare-fun t!247768 () Bool)

(declare-fun tb!165945 () Bool)

(assert (=> (and b!3270716 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247768) tb!165945))

(declare-fun result!208640 () Bool)

(assert (= result!208640 result!208276))

(assert (=> d!906077 t!247768))

(declare-fun t!247770 () Bool)

(declare-fun tb!165947 () Bool)

(assert (=> (and b!3270716 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247770) tb!165947))

(declare-fun result!208642 () Bool)

(assert (= result!208642 result!208576))

(assert (=> d!907067 t!247770))

(declare-fun tb!165949 () Bool)

(declare-fun t!247772 () Bool)

(assert (=> (and b!3270716 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247772) tb!165949))

(declare-fun result!208644 () Bool)

(assert (= result!208644 result!208586))

(assert (=> d!907095 t!247772))

(declare-fun t!247774 () Bool)

(declare-fun tb!165951 () Bool)

(assert (=> (and b!3270716 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247774) tb!165951))

(declare-fun result!208646 () Bool)

(assert (= result!208646 result!208506))

(assert (=> d!906749 t!247774))

(assert (=> d!907073 t!247770))

(declare-fun b_and!221599 () Bool)

(declare-fun tp!1027257 () Bool)

(assert (=> b!3270716 (= tp!1027257 (and (=> t!247768 result!208640) (=> t!247770 result!208642) (=> t!247764 result!208636) (=> t!247766 result!208638) (=> t!247772 result!208644) (=> t!247774 result!208646) b_and!221599))))

(declare-fun b_free!86579 () Bool)

(declare-fun b_next!87283 () Bool)

(assert (=> b!3270716 (= b_free!86579 (not b_next!87283))))

(declare-fun t!247776 () Bool)

(declare-fun tb!165953 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (apply!8350 lt!1108159 0))))) t!247776) tb!165953))

(declare-fun result!208648 () Bool)

(assert (= result!208648 result!208516))

(assert (=> d!906819 t!247776))

(declare-fun t!247778 () Bool)

(declare-fun tb!165955 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108241)))))) t!247778) tb!165955))

(declare-fun result!208650 () Bool)

(assert (= result!208650 result!208536))

(assert (=> d!906863 t!247778))

(declare-fun t!247780 () Bool)

(declare-fun tb!165957 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108477)))))) t!247780) tb!165957))

(declare-fun result!208652 () Bool)

(assert (= result!208652 result!208404))

(assert (=> d!906633 t!247780))

(declare-fun t!247782 () Bool)

(declare-fun tb!165959 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (_1!21093 (get!11625 lt!1108249)))))) t!247782) tb!165959))

(declare-fun result!208654 () Bool)

(assert (= result!208654 result!208496))

(assert (=> d!906729 t!247782))

(declare-fun t!247784 () Bool)

(declare-fun tb!165961 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (Cons!36444 (h!41864 tokens!494) Nil!36444)))))) t!247784) tb!165961))

(declare-fun result!208656 () Bool)

(assert (= result!208656 result!208556))

(assert (=> d!907017 t!247784))

(declare-fun t!247786 () Bool)

(declare-fun tb!165963 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247786) tb!165963))

(declare-fun result!208658 () Bool)

(assert (= result!208658 result!208566))

(assert (=> d!907067 t!247786))

(declare-fun t!247788 () Bool)

(declare-fun tb!165965 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494))))) t!247788) tb!165965))

(declare-fun result!208660 () Bool)

(assert (= result!208660 result!208228))

(assert (=> b!3268028 t!247788))

(assert (=> d!905875 t!247788))

(declare-fun t!247790 () Bool)

(declare-fun tb!165967 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241)))) t!247790) tb!165967))

(declare-fun result!208662 () Bool)

(assert (= result!208662 result!208250))

(assert (=> b!3268389 t!247790))

(assert (=> d!905969 t!247790))

(declare-fun t!247792 () Bool)

(declare-fun tb!165969 () Bool)

(assert (=> (and b!3270716 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494)))))) t!247792) tb!165969))

(declare-fun result!208664 () Bool)

(assert (= result!208664 result!208526))

(assert (=> b!3270242 t!247792))

(declare-fun tp!1027256 () Bool)

(declare-fun b_and!221601 () Bool)

(assert (=> b!3270716 (= tp!1027256 (and (=> t!247792 result!208664) (=> t!247790 result!208662) (=> t!247784 result!208656) (=> t!247788 result!208660) (=> t!247786 result!208658) (=> t!247778 result!208650) (=> t!247782 result!208654) (=> t!247780 result!208652) (=> t!247776 result!208648) b_and!221601))))

(declare-fun e!2036825 () Bool)

(assert (=> b!3268823 (= tp!1027097 e!2036825)))

(declare-fun e!2036826 () Bool)

(declare-fun b!3270714 () Bool)

(declare-fun tp!1027258 () Bool)

(declare-fun e!2036824 () Bool)

(assert (=> b!3270714 (= e!2036826 (and (inv!21 (value!171054 (h!41864 (t!247339 (t!247339 tokens!494))))) e!2036824 tp!1027258))))

(declare-fun tp!1027255 () Bool)

(declare-fun b!3270713 () Bool)

(assert (=> b!3270713 (= e!2036825 (and (inv!49368 (h!41864 (t!247339 (t!247339 tokens!494)))) e!2036826 tp!1027255))))

(declare-fun b!3270715 () Bool)

(declare-fun tp!1027254 () Bool)

(declare-fun e!2036822 () Bool)

(assert (=> b!3270715 (= e!2036824 (and tp!1027254 (inv!49365 (tag!5824 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (inv!49369 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) e!2036822))))

(assert (=> b!3270716 (= e!2036822 (and tp!1027257 tp!1027256))))

(assert (= b!3270715 b!3270716))

(assert (= b!3270714 b!3270715))

(assert (= b!3270713 b!3270714))

(assert (= (and b!3268823 ((_ is Cons!36444) (t!247339 (t!247339 tokens!494)))) b!3270713))

(declare-fun m!3574159 () Bool)

(assert (=> b!3270714 m!3574159))

(declare-fun m!3574161 () Bool)

(assert (=> b!3270713 m!3574161))

(declare-fun m!3574163 () Bool)

(assert (=> b!3270715 m!3574163))

(declare-fun m!3574165 () Bool)

(assert (=> b!3270715 m!3574165))

(declare-fun b!3270719 () Bool)

(declare-fun e!2036830 () Bool)

(assert (=> b!3270719 (= e!2036830 true)))

(declare-fun b!3270718 () Bool)

(declare-fun e!2036829 () Bool)

(assert (=> b!3270718 (= e!2036829 e!2036830)))

(declare-fun b!3270717 () Bool)

(declare-fun e!2036828 () Bool)

(assert (=> b!3270717 (= e!2036828 e!2036829)))

(assert (=> b!3268384 e!2036828))

(assert (= b!3270718 b!3270719))

(assert (= b!3270717 b!3270718))

(assert (= (and b!3268384 ((_ is Cons!36445) (t!247340 rules!2135))) b!3270717))

(assert (=> b!3270719 (< (dynLambda!14882 order!18857 (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135))))) (dynLambda!14883 order!18859 lambda!118625))))

(assert (=> b!3270719 (< (dynLambda!14884 order!18861 (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135))))) (dynLambda!14883 order!18859 lambda!118625))))

(declare-fun tp!1027266 () Bool)

(declare-fun tp!1027267 () Bool)

(declare-fun b!3270728 () Bool)

(declare-fun e!2036835 () Bool)

(assert (=> b!3270728 (= e!2036835 (and (inv!49372 (left!28379 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))))) tp!1027267 (inv!49372 (right!28709 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))))) tp!1027266))))

(declare-fun b!3270730 () Bool)

(declare-fun e!2036836 () Bool)

(declare-fun tp!1027265 () Bool)

(assert (=> b!3270730 (= e!2036836 tp!1027265)))

(declare-fun b!3270729 () Bool)

(declare-fun inv!49379 (IArray!21891) Bool)

(assert (=> b!3270729 (= e!2036835 (and (inv!49379 (xs!14075 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))))) e!2036836))))

(assert (=> b!3268391 (= tp!1027002 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241)))) e!2036835))))

(assert (= (and b!3268391 ((_ is Node!10943) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))))) b!3270728))

(assert (= b!3270729 b!3270730))

(assert (= (and b!3268391 ((_ is Leaf!17196) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (value!171054 separatorToken!241))))) b!3270729))

(declare-fun m!3574167 () Bool)

(assert (=> b!3270728 m!3574167))

(declare-fun m!3574169 () Bool)

(assert (=> b!3270728 m!3574169))

(declare-fun m!3574171 () Bool)

(assert (=> b!3270729 m!3574171))

(assert (=> b!3268391 m!3570071))

(declare-fun b!3270732 () Bool)

(declare-fun e!2036837 () Bool)

(declare-fun tp!1027271 () Bool)

(declare-fun tp!1027270 () Bool)

(assert (=> b!3270732 (= e!2036837 (and tp!1027271 tp!1027270))))

(declare-fun b!3270734 () Bool)

(declare-fun tp!1027268 () Bool)

(declare-fun tp!1027269 () Bool)

(assert (=> b!3270734 (= e!2036837 (and tp!1027268 tp!1027269))))

(assert (=> b!3268840 (= tp!1027110 e!2036837)))

(declare-fun b!3270733 () Bool)

(declare-fun tp!1027272 () Bool)

(assert (=> b!3270733 (= e!2036837 tp!1027272)))

(declare-fun b!3270731 () Bool)

(assert (=> b!3270731 (= e!2036837 tp_is_empty!17349)))

(assert (= (and b!3268840 ((_ is ElementMatch!10043) (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270731))

(assert (= (and b!3268840 ((_ is Concat!15557) (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270732))

(assert (= (and b!3268840 ((_ is Star!10043) (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270733))

(assert (= (and b!3268840 ((_ is Union!10043) (regOne!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270734))

(declare-fun b!3270736 () Bool)

(declare-fun e!2036838 () Bool)

(declare-fun tp!1027276 () Bool)

(declare-fun tp!1027275 () Bool)

(assert (=> b!3270736 (= e!2036838 (and tp!1027276 tp!1027275))))

(declare-fun b!3270738 () Bool)

(declare-fun tp!1027273 () Bool)

(declare-fun tp!1027274 () Bool)

(assert (=> b!3270738 (= e!2036838 (and tp!1027273 tp!1027274))))

(assert (=> b!3268840 (= tp!1027111 e!2036838)))

(declare-fun b!3270737 () Bool)

(declare-fun tp!1027277 () Bool)

(assert (=> b!3270737 (= e!2036838 tp!1027277)))

(declare-fun b!3270735 () Bool)

(assert (=> b!3270735 (= e!2036838 tp_is_empty!17349)))

(assert (= (and b!3268840 ((_ is ElementMatch!10043) (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270735))

(assert (= (and b!3268840 ((_ is Concat!15557) (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270736))

(assert (= (and b!3268840 ((_ is Star!10043) (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270737))

(assert (= (and b!3268840 ((_ is Union!10043) (regTwo!20599 (regex!5284 (rule!7766 separatorToken!241))))) b!3270738))

(declare-fun b!3270740 () Bool)

(declare-fun e!2036839 () Bool)

(declare-fun tp!1027281 () Bool)

(declare-fun tp!1027280 () Bool)

(assert (=> b!3270740 (= e!2036839 (and tp!1027281 tp!1027280))))

(declare-fun b!3270742 () Bool)

(declare-fun tp!1027278 () Bool)

(declare-fun tp!1027279 () Bool)

(assert (=> b!3270742 (= e!2036839 (and tp!1027278 tp!1027279))))

(assert (=> b!3268839 (= tp!1027114 e!2036839)))

(declare-fun b!3270741 () Bool)

(declare-fun tp!1027282 () Bool)

(assert (=> b!3270741 (= e!2036839 tp!1027282)))

(declare-fun b!3270739 () Bool)

(assert (=> b!3270739 (= e!2036839 tp_is_empty!17349)))

(assert (= (and b!3268839 ((_ is ElementMatch!10043) (reg!10372 (regex!5284 (rule!7766 separatorToken!241))))) b!3270739))

(assert (= (and b!3268839 ((_ is Concat!15557) (reg!10372 (regex!5284 (rule!7766 separatorToken!241))))) b!3270740))

(assert (= (and b!3268839 ((_ is Star!10043) (reg!10372 (regex!5284 (rule!7766 separatorToken!241))))) b!3270741))

(assert (= (and b!3268839 ((_ is Union!10043) (reg!10372 (regex!5284 (rule!7766 separatorToken!241))))) b!3270742))

(declare-fun b!3270744 () Bool)

(declare-fun e!2036840 () Bool)

(declare-fun tp!1027286 () Bool)

(declare-fun tp!1027285 () Bool)

(assert (=> b!3270744 (= e!2036840 (and tp!1027286 tp!1027285))))

(declare-fun b!3270746 () Bool)

(declare-fun tp!1027283 () Bool)

(declare-fun tp!1027284 () Bool)

(assert (=> b!3270746 (= e!2036840 (and tp!1027283 tp!1027284))))

(assert (=> b!3268838 (= tp!1027113 e!2036840)))

(declare-fun b!3270745 () Bool)

(declare-fun tp!1027287 () Bool)

(assert (=> b!3270745 (= e!2036840 tp!1027287)))

(declare-fun b!3270743 () Bool)

(assert (=> b!3270743 (= e!2036840 tp_is_empty!17349)))

(assert (= (and b!3268838 ((_ is ElementMatch!10043) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270743))

(assert (= (and b!3268838 ((_ is Concat!15557) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270744))

(assert (= (and b!3268838 ((_ is Star!10043) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270745))

(assert (= (and b!3268838 ((_ is Union!10043) (regOne!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270746))

(declare-fun b!3270748 () Bool)

(declare-fun e!2036841 () Bool)

(declare-fun tp!1027291 () Bool)

(declare-fun tp!1027290 () Bool)

(assert (=> b!3270748 (= e!2036841 (and tp!1027291 tp!1027290))))

(declare-fun b!3270750 () Bool)

(declare-fun tp!1027288 () Bool)

(declare-fun tp!1027289 () Bool)

(assert (=> b!3270750 (= e!2036841 (and tp!1027288 tp!1027289))))

(assert (=> b!3268838 (= tp!1027112 e!2036841)))

(declare-fun b!3270749 () Bool)

(declare-fun tp!1027292 () Bool)

(assert (=> b!3270749 (= e!2036841 tp!1027292)))

(declare-fun b!3270747 () Bool)

(assert (=> b!3270747 (= e!2036841 tp_is_empty!17349)))

(assert (= (and b!3268838 ((_ is ElementMatch!10043) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270747))

(assert (= (and b!3268838 ((_ is Concat!15557) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270748))

(assert (= (and b!3268838 ((_ is Star!10043) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270749))

(assert (= (and b!3268838 ((_ is Union!10043) (regTwo!20598 (regex!5284 (rule!7766 separatorToken!241))))) b!3270750))

(declare-fun b!3270751 () Bool)

(declare-fun e!2036842 () Bool)

(declare-fun tp!1027294 () Bool)

(declare-fun tp!1027295 () Bool)

(assert (=> b!3270751 (= e!2036842 (and (inv!49372 (left!28379 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))))) tp!1027295 (inv!49372 (right!28709 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))))) tp!1027294))))

(declare-fun b!3270753 () Bool)

(declare-fun e!2036843 () Bool)

(declare-fun tp!1027293 () Bool)

(assert (=> b!3270753 (= e!2036843 tp!1027293)))

(declare-fun b!3270752 () Bool)

(assert (=> b!3270752 (= e!2036842 (and (inv!49379 (xs!14075 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))))) e!2036843))))

(assert (=> b!3268034 (= tp!1027000 (and (inv!49372 (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494))))) e!2036842))))

(assert (= (and b!3268034 ((_ is Node!10943) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))))) b!3270751))

(assert (= b!3270752 b!3270753))

(assert (= (and b!3268034 ((_ is Leaf!17196) (c!551639 (dynLambda!14877 (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (value!171054 (h!41864 tokens!494)))))) b!3270752))

(declare-fun m!3574173 () Bool)

(assert (=> b!3270751 m!3574173))

(declare-fun m!3574175 () Bool)

(assert (=> b!3270751 m!3574175))

(declare-fun m!3574177 () Bool)

(assert (=> b!3270752 m!3574177))

(assert (=> b!3268034 m!3569667))

(declare-fun b!3270755 () Bool)

(declare-fun e!2036844 () Bool)

(declare-fun tp!1027299 () Bool)

(declare-fun tp!1027298 () Bool)

(assert (=> b!3270755 (= e!2036844 (and tp!1027299 tp!1027298))))

(declare-fun b!3270757 () Bool)

(declare-fun tp!1027296 () Bool)

(declare-fun tp!1027297 () Bool)

(assert (=> b!3270757 (= e!2036844 (and tp!1027296 tp!1027297))))

(assert (=> b!3268830 (= tp!1027101 e!2036844)))

(declare-fun b!3270756 () Bool)

(declare-fun tp!1027300 () Bool)

(assert (=> b!3270756 (= e!2036844 tp!1027300)))

(declare-fun b!3270754 () Bool)

(assert (=> b!3270754 (= e!2036844 tp_is_empty!17349)))

(assert (= (and b!3268830 ((_ is ElementMatch!10043) (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270754))

(assert (= (and b!3268830 ((_ is Concat!15557) (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270755))

(assert (= (and b!3268830 ((_ is Star!10043) (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270756))

(assert (= (and b!3268830 ((_ is Union!10043) (regOne!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270757))

(declare-fun b!3270759 () Bool)

(declare-fun e!2036845 () Bool)

(declare-fun tp!1027304 () Bool)

(declare-fun tp!1027303 () Bool)

(assert (=> b!3270759 (= e!2036845 (and tp!1027304 tp!1027303))))

(declare-fun b!3270761 () Bool)

(declare-fun tp!1027301 () Bool)

(declare-fun tp!1027302 () Bool)

(assert (=> b!3270761 (= e!2036845 (and tp!1027301 tp!1027302))))

(assert (=> b!3268830 (= tp!1027102 e!2036845)))

(declare-fun b!3270760 () Bool)

(declare-fun tp!1027305 () Bool)

(assert (=> b!3270760 (= e!2036845 tp!1027305)))

(declare-fun b!3270758 () Bool)

(assert (=> b!3270758 (= e!2036845 tp_is_empty!17349)))

(assert (= (and b!3268830 ((_ is ElementMatch!10043) (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270758))

(assert (= (and b!3268830 ((_ is Concat!15557) (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270759))

(assert (= (and b!3268830 ((_ is Star!10043) (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270760))

(assert (= (and b!3268830 ((_ is Union!10043) (regTwo!20599 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270761))

(declare-fun b!3270763 () Bool)

(declare-fun e!2036846 () Bool)

(declare-fun tp!1027309 () Bool)

(declare-fun tp!1027308 () Bool)

(assert (=> b!3270763 (= e!2036846 (and tp!1027309 tp!1027308))))

(declare-fun b!3270765 () Bool)

(declare-fun tp!1027306 () Bool)

(declare-fun tp!1027307 () Bool)

(assert (=> b!3270765 (= e!2036846 (and tp!1027306 tp!1027307))))

(assert (=> b!3268829 (= tp!1027105 e!2036846)))

(declare-fun b!3270764 () Bool)

(declare-fun tp!1027310 () Bool)

(assert (=> b!3270764 (= e!2036846 tp!1027310)))

(declare-fun b!3270762 () Bool)

(assert (=> b!3270762 (= e!2036846 tp_is_empty!17349)))

(assert (= (and b!3268829 ((_ is ElementMatch!10043) (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270762))

(assert (= (and b!3268829 ((_ is Concat!15557) (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270763))

(assert (= (and b!3268829 ((_ is Star!10043) (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270764))

(assert (= (and b!3268829 ((_ is Union!10043) (reg!10372 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270765))

(declare-fun b!3270767 () Bool)

(declare-fun e!2036847 () Bool)

(declare-fun tp!1027314 () Bool)

(declare-fun tp!1027313 () Bool)

(assert (=> b!3270767 (= e!2036847 (and tp!1027314 tp!1027313))))

(declare-fun b!3270769 () Bool)

(declare-fun tp!1027311 () Bool)

(declare-fun tp!1027312 () Bool)

(assert (=> b!3270769 (= e!2036847 (and tp!1027311 tp!1027312))))

(assert (=> b!3268801 (= tp!1027069 e!2036847)))

(declare-fun b!3270768 () Bool)

(declare-fun tp!1027315 () Bool)

(assert (=> b!3270768 (= e!2036847 tp!1027315)))

(declare-fun b!3270766 () Bool)

(assert (=> b!3270766 (= e!2036847 tp_is_empty!17349)))

(assert (= (and b!3268801 ((_ is ElementMatch!10043) (regOne!20599 (regex!5284 (h!41865 rules!2135))))) b!3270766))

(assert (= (and b!3268801 ((_ is Concat!15557) (regOne!20599 (regex!5284 (h!41865 rules!2135))))) b!3270767))

(assert (= (and b!3268801 ((_ is Star!10043) (regOne!20599 (regex!5284 (h!41865 rules!2135))))) b!3270768))

(assert (= (and b!3268801 ((_ is Union!10043) (regOne!20599 (regex!5284 (h!41865 rules!2135))))) b!3270769))

(declare-fun b!3270771 () Bool)

(declare-fun e!2036848 () Bool)

(declare-fun tp!1027319 () Bool)

(declare-fun tp!1027318 () Bool)

(assert (=> b!3270771 (= e!2036848 (and tp!1027319 tp!1027318))))

(declare-fun b!3270773 () Bool)

(declare-fun tp!1027316 () Bool)

(declare-fun tp!1027317 () Bool)

(assert (=> b!3270773 (= e!2036848 (and tp!1027316 tp!1027317))))

(assert (=> b!3268801 (= tp!1027070 e!2036848)))

(declare-fun b!3270772 () Bool)

(declare-fun tp!1027320 () Bool)

(assert (=> b!3270772 (= e!2036848 tp!1027320)))

(declare-fun b!3270770 () Bool)

(assert (=> b!3270770 (= e!2036848 tp_is_empty!17349)))

(assert (= (and b!3268801 ((_ is ElementMatch!10043) (regTwo!20599 (regex!5284 (h!41865 rules!2135))))) b!3270770))

(assert (= (and b!3268801 ((_ is Concat!15557) (regTwo!20599 (regex!5284 (h!41865 rules!2135))))) b!3270771))

(assert (= (and b!3268801 ((_ is Star!10043) (regTwo!20599 (regex!5284 (h!41865 rules!2135))))) b!3270772))

(assert (= (and b!3268801 ((_ is Union!10043) (regTwo!20599 (regex!5284 (h!41865 rules!2135))))) b!3270773))

(declare-fun b!3270775 () Bool)

(declare-fun e!2036849 () Bool)

(declare-fun tp!1027324 () Bool)

(declare-fun tp!1027323 () Bool)

(assert (=> b!3270775 (= e!2036849 (and tp!1027324 tp!1027323))))

(declare-fun b!3270777 () Bool)

(declare-fun tp!1027321 () Bool)

(declare-fun tp!1027322 () Bool)

(assert (=> b!3270777 (= e!2036849 (and tp!1027321 tp!1027322))))

(assert (=> b!3268800 (= tp!1027073 e!2036849)))

(declare-fun b!3270776 () Bool)

(declare-fun tp!1027325 () Bool)

(assert (=> b!3270776 (= e!2036849 tp!1027325)))

(declare-fun b!3270774 () Bool)

(assert (=> b!3270774 (= e!2036849 tp_is_empty!17349)))

(assert (= (and b!3268800 ((_ is ElementMatch!10043) (reg!10372 (regex!5284 (h!41865 rules!2135))))) b!3270774))

(assert (= (and b!3268800 ((_ is Concat!15557) (reg!10372 (regex!5284 (h!41865 rules!2135))))) b!3270775))

(assert (= (and b!3268800 ((_ is Star!10043) (reg!10372 (regex!5284 (h!41865 rules!2135))))) b!3270776))

(assert (= (and b!3268800 ((_ is Union!10043) (reg!10372 (regex!5284 (h!41865 rules!2135))))) b!3270777))

(declare-fun b!3270779 () Bool)

(declare-fun e!2036850 () Bool)

(declare-fun tp!1027329 () Bool)

(declare-fun tp!1027328 () Bool)

(assert (=> b!3270779 (= e!2036850 (and tp!1027329 tp!1027328))))

(declare-fun b!3270781 () Bool)

(declare-fun tp!1027326 () Bool)

(declare-fun tp!1027327 () Bool)

(assert (=> b!3270781 (= e!2036850 (and tp!1027326 tp!1027327))))

(assert (=> b!3268828 (= tp!1027104 e!2036850)))

(declare-fun b!3270780 () Bool)

(declare-fun tp!1027330 () Bool)

(assert (=> b!3270780 (= e!2036850 tp!1027330)))

(declare-fun b!3270778 () Bool)

(assert (=> b!3270778 (= e!2036850 tp_is_empty!17349)))

(assert (= (and b!3268828 ((_ is ElementMatch!10043) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270778))

(assert (= (and b!3268828 ((_ is Concat!15557) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270779))

(assert (= (and b!3268828 ((_ is Star!10043) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270780))

(assert (= (and b!3268828 ((_ is Union!10043) (regOne!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270781))

(declare-fun b!3270783 () Bool)

(declare-fun e!2036851 () Bool)

(declare-fun tp!1027334 () Bool)

(declare-fun tp!1027333 () Bool)

(assert (=> b!3270783 (= e!2036851 (and tp!1027334 tp!1027333))))

(declare-fun b!3270785 () Bool)

(declare-fun tp!1027331 () Bool)

(declare-fun tp!1027332 () Bool)

(assert (=> b!3270785 (= e!2036851 (and tp!1027331 tp!1027332))))

(assert (=> b!3268828 (= tp!1027103 e!2036851)))

(declare-fun b!3270784 () Bool)

(declare-fun tp!1027335 () Bool)

(assert (=> b!3270784 (= e!2036851 tp!1027335)))

(declare-fun b!3270782 () Bool)

(assert (=> b!3270782 (= e!2036851 tp_is_empty!17349)))

(assert (= (and b!3268828 ((_ is ElementMatch!10043) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270782))

(assert (= (and b!3268828 ((_ is Concat!15557) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270783))

(assert (= (and b!3268828 ((_ is Star!10043) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270784))

(assert (= (and b!3268828 ((_ is Union!10043) (regTwo!20598 (regex!5284 (rule!7766 (h!41864 tokens!494)))))) b!3270785))

(declare-fun b!3270787 () Bool)

(declare-fun e!2036852 () Bool)

(declare-fun tp!1027339 () Bool)

(declare-fun tp!1027338 () Bool)

(assert (=> b!3270787 (= e!2036852 (and tp!1027339 tp!1027338))))

(declare-fun b!3270789 () Bool)

(declare-fun tp!1027336 () Bool)

(declare-fun tp!1027337 () Bool)

(assert (=> b!3270789 (= e!2036852 (and tp!1027336 tp!1027337))))

(assert (=> b!3268799 (= tp!1027072 e!2036852)))

(declare-fun b!3270788 () Bool)

(declare-fun tp!1027340 () Bool)

(assert (=> b!3270788 (= e!2036852 tp!1027340)))

(declare-fun b!3270786 () Bool)

(assert (=> b!3270786 (= e!2036852 tp_is_empty!17349)))

(assert (= (and b!3268799 ((_ is ElementMatch!10043) (regOne!20598 (regex!5284 (h!41865 rules!2135))))) b!3270786))

(assert (= (and b!3268799 ((_ is Concat!15557) (regOne!20598 (regex!5284 (h!41865 rules!2135))))) b!3270787))

(assert (= (and b!3268799 ((_ is Star!10043) (regOne!20598 (regex!5284 (h!41865 rules!2135))))) b!3270788))

(assert (= (and b!3268799 ((_ is Union!10043) (regOne!20598 (regex!5284 (h!41865 rules!2135))))) b!3270789))

(declare-fun b!3270791 () Bool)

(declare-fun e!2036853 () Bool)

(declare-fun tp!1027344 () Bool)

(declare-fun tp!1027343 () Bool)

(assert (=> b!3270791 (= e!2036853 (and tp!1027344 tp!1027343))))

(declare-fun b!3270793 () Bool)

(declare-fun tp!1027341 () Bool)

(declare-fun tp!1027342 () Bool)

(assert (=> b!3270793 (= e!2036853 (and tp!1027341 tp!1027342))))

(assert (=> b!3268799 (= tp!1027071 e!2036853)))

(declare-fun b!3270792 () Bool)

(declare-fun tp!1027345 () Bool)

(assert (=> b!3270792 (= e!2036853 tp!1027345)))

(declare-fun b!3270790 () Bool)

(assert (=> b!3270790 (= e!2036853 tp_is_empty!17349)))

(assert (= (and b!3268799 ((_ is ElementMatch!10043) (regTwo!20598 (regex!5284 (h!41865 rules!2135))))) b!3270790))

(assert (= (and b!3268799 ((_ is Concat!15557) (regTwo!20598 (regex!5284 (h!41865 rules!2135))))) b!3270791))

(assert (= (and b!3268799 ((_ is Star!10043) (regTwo!20598 (regex!5284 (h!41865 rules!2135))))) b!3270792))

(assert (= (and b!3268799 ((_ is Union!10043) (regTwo!20598 (regex!5284 (h!41865 rules!2135))))) b!3270793))

(declare-fun b!3270794 () Bool)

(declare-fun e!2036854 () Bool)

(declare-fun tp!1027346 () Bool)

(assert (=> b!3270794 (= e!2036854 (and tp_is_empty!17349 tp!1027346))))

(assert (=> b!3268836 (= tp!1027109 e!2036854)))

(assert (= (and b!3268836 ((_ is Cons!36443) (t!247338 (originalCharacters!5998 separatorToken!241)))) b!3270794))

(declare-fun b_lambda!90651 () Bool)

(assert (= b_lambda!90581 (or b!3267882 b_lambda!90651)))

(declare-fun bs!546208 () Bool)

(declare-fun d!907211 () Bool)

(assert (= bs!546208 (and d!907211 b!3267882)))

(assert (=> bs!546208 (= (dynLambda!14876 lambda!118615 (h!41864 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))) (not (isSeparator!5284 (rule!7766 (h!41864 (t!247339 (_1!21092 (lexList!1347 thiss!18206 rules!2135 (printWithSeparatorTokenList!198 thiss!18206 Nil!36444 separatorToken!241)))))))))))

(assert (=> b!3269744 d!907211))

(declare-fun b_lambda!90653 () Bool)

(assert (= b_lambda!90619 (or b!3267882 b_lambda!90653)))

(declare-fun bs!546209 () Bool)

(declare-fun d!907213 () Bool)

(assert (= bs!546209 (and d!907213 b!3267882)))

(assert (=> bs!546209 (= (dynLambda!14876 lambda!118615 (h!41864 (t!247339 tokens!494))) (not (isSeparator!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))))))

(assert (=> b!3270051 d!907213))

(declare-fun b_lambda!90655 () Bool)

(assert (= b_lambda!90639 (or (and b!3270716 b_free!86577 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3268812 b_free!86557 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3270711 b_free!86573 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267900 b_free!86537) (and b!3268826 b_free!86561 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267911 b_free!86545 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267901 b_free!86541 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) b_lambda!90655)))

(declare-fun b_lambda!90657 () Bool)

(assert (= b_lambda!90631 (or (and b!3270716 b_free!86577 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3268812 b_free!86557 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3270711 b_free!86573 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267900 b_free!86537) (and b!3268826 b_free!86561 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267911 b_free!86545 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267901 b_free!86541 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) b_lambda!90657)))

(declare-fun b_lambda!90659 () Bool)

(assert (= b_lambda!90637 (or (and b!3270711 b_free!86575 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3268812 b_free!86559 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267911 b_free!86547 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3270716 b_free!86579 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267901 b_free!86543 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267900 b_free!86539) (and b!3268826 b_free!86563 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) b_lambda!90659)))

(declare-fun b_lambda!90661 () Bool)

(assert (= b_lambda!90621 (or b!3267882 b_lambda!90661)))

(declare-fun bs!546210 () Bool)

(declare-fun d!907215 () Bool)

(assert (= bs!546210 (and d!907215 b!3267882)))

(assert (=> bs!546210 (= (dynLambda!14876 lambda!118615 (h!41864 lt!1108322)) (not (isSeparator!5284 (rule!7766 (h!41864 lt!1108322)))))))

(assert (=> b!3270081 d!907215))

(declare-fun b_lambda!90663 () Bool)

(assert (= b_lambda!90641 (or (and b!3270716 b_free!86577 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3268812 b_free!86557 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3270711 b_free!86573 (= (toValue!7404 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267900 b_free!86537) (and b!3268826 b_free!86561 (= (toValue!7404 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267911 b_free!86545 (= (toValue!7404 (transformation!5284 (h!41865 rules!2135))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) (and b!3267901 b_free!86541 (= (toValue!7404 (transformation!5284 (rule!7766 separatorToken!241))) (toValue!7404 (transformation!5284 (rule!7766 (h!41864 tokens!494)))))) b_lambda!90663)))

(declare-fun b_lambda!90665 () Bool)

(assert (= b_lambda!90649 (or b!3267882 b_lambda!90665)))

(declare-fun bs!546211 () Bool)

(declare-fun d!907217 () Bool)

(assert (= bs!546211 (and d!907217 b!3267882)))

(assert (=> bs!546211 (= (dynLambda!14876 lambda!118615 (h!41864 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))) (not (isSeparator!5284 (rule!7766 (h!41864 (t!247339 (list!13033 (_1!21094 (lex!2201 thiss!18206 rules!2135 (printWithSeparatorToken!90 thiss!18206 (BalanceConc!21503 Empty!10944) separatorToken!241))))))))))))

(assert (=> b!3270684 d!907217))

(declare-fun b_lambda!90667 () Bool)

(assert (= b_lambda!90625 (or (and b!3267911 b_free!86547 (= (toChars!7263 (transformation!5284 (h!41865 rules!2135))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))))) (and b!3270716 b_free!86579 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 (t!247339 tokens!494)))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))))) (and b!3267900 b_free!86539 (= (toChars!7263 (transformation!5284 (rule!7766 (h!41864 tokens!494)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))))) (and b!3267901 b_free!86543 (= (toChars!7263 (transformation!5284 (rule!7766 separatorToken!241))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))))) (and b!3268812 b_free!86559 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 rules!2135)))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))))) (and b!3270711 b_free!86575 (= (toChars!7263 (transformation!5284 (h!41865 (t!247340 (t!247340 rules!2135))))) (toChars!7263 (transformation!5284 (rule!7766 (h!41864 (t!247339 tokens!494))))))) (and b!3268826 b_free!86563) b_lambda!90667)))

(declare-fun b_lambda!90669 () Bool)

(assert (= b_lambda!90645 (or d!905887 b_lambda!90669)))

(declare-fun bs!546212 () Bool)

(declare-fun d!907219 () Bool)

(assert (= bs!546212 (and d!907219 d!905887)))

(assert (=> bs!546212 (= (dynLambda!14876 lambda!118625 (h!41864 (list!13033 lt!1108152))) (rulesProduceIndividualToken!2365 thiss!18206 rules!2135 (h!41864 (list!13033 lt!1108152))))))

(assert (=> bs!546212 m!3574109))

(assert (=> b!3270552 d!907219))

(declare-fun b_lambda!90671 () Bool)

(assert (= b_lambda!90629 (or b!3267882 b_lambda!90671)))

(declare-fun bs!546213 () Bool)

(declare-fun d!907221 () Bool)

(assert (= bs!546213 (and d!907221 b!3267882)))

(assert (=> bs!546213 (= (dynLambda!14876 lambda!118615 (h!41864 lt!1108335)) (not (isSeparator!5284 (rule!7766 (h!41864 lt!1108335)))))))

(assert (=> b!3270278 d!907221))

(declare-fun b_lambda!90673 () Bool)

(assert (= b_lambda!90633 (or b!3267882 b_lambda!90673)))

(assert (=> d!906965 d!906089))

(check-sat (not b!3270027) (not bm!236991) (not d!907107) (not b!3270428) (not b!3270595) (not b!3269884) (not d!907053) (not b!3270538) (not d!907081) (not d!906847) (not b_lambda!90591) (not bm!236987) (not d!907033) (not b!3270373) (not b!3270565) (not b!3270759) (not bm!236988) (not b!3270650) (not b!3269740) (not d!907119) (not b!3270603) (not b!3269560) (not b!3270432) (not bm!236963) (not d!906553) (not b!3270593) (not d!907159) (not b!3270338) (not d!906889) (not b!3269568) (not b!3270100) (not bs!546212) (not d!907001) (not d!906797) (not b_lambda!90583) (not bm!237036) (not b!3270243) (not b!3270072) (not b!3270634) (not b!3270521) (not b!3270167) (not d!906763) (not d!907189) (not bm!236996) (not b!3270764) (not b!3270048) (not b!3270594) (not b_lambda!90671) (not b!3270381) (not d!907187) (not b!3270184) (not b_lambda!90635) (not d!907195) (not b!3270765) (not d!906979) (not b!3270763) (not b_next!87263) (not d!906727) (not b!3270404) (not b!3270403) (not d!907065) (not b!3270446) (not d!906883) (not b!3270453) (not b!3270771) (not b!3270761) (not d!906597) (not b!3270097) b_and!221545 (not bm!237042) (not tb!165831) (not b!3270564) (not b!3270464) b_and!221553 (not bm!236967) (not b!3270545) (not d!906733) (not d!906825) (not b!3270728) (not b!3270239) (not b_next!87245) (not b!3270289) (not b!3270074) (not b!3270509) (not b!3270467) (not d!907181) (not b!3270736) (not b!3269803) (not b!3270350) (not d!906795) (not b!3270224) (not b!3270450) (not b!3270279) (not b!3270241) (not b!3269760) (not b!3270173) (not b!3270690) (not b!3269939) (not b!3269800) (not bm!237004) (not b!3269883) (not d!906793) (not b!3270077) (not b!3270678) (not b!3269583) (not d!907105) (not d!906925) (not b!3270473) (not b!3270071) (not d!907193) (not b!3270633) (not b!3270293) (not b!3270748) (not b!3270251) (not b!3269563) (not d!907103) (not b!3270599) (not b!3270656) (not b!3270223) (not b!3270095) (not b!3270408) (not b!3270619) (not b!3270270) (not b_lambda!90669) (not bm!236966) (not b_lambda!90655) (not b!3269756) (not b!3270505) (not b!3270710) (not b_lambda!90643) (not b!3270136) (not b!3270704) (not b!3270469) (not d!907013) (not d!906981) (not b!3270418) (not bm!236972) (not b!3270349) (not b!3270772) (not b!3270250) (not b!3270628) (not bm!237014) (not d!907063) (not b!3270334) (not b!3270366) (not d!906877) (not b!3270649) (not d!906887) b_and!221547 (not b!3270368) (not d!906855) (not d!907003) (not b!3270025) (not b!3270323) (not d!906915) (not b!3270031) (not b!3270317) (not b!3270155) (not b!3270079) (not b!3270416) (not bm!237003) (not b_next!87261) (not b!3270435) (not b!3270341) (not b!3270708) (not b!3270741) (not b_lambda!90539) (not b!3270415) (not b!3269666) (not d!906539) (not b!3269580) (not b!3270769) (not d!906767) (not tb!165821) (not b!3270122) (not b!3270440) (not b!3270262) (not b!3270135) (not b!3270458) (not b!3270168) (not b!3270061) (not b!3270789) (not b!3270218) (not d!907201) (not d!906785) (not b_next!87247) (not b_next!87241) (not b!3270547) (not b!3270785) (not tb!165711) (not d!907083) (not b!3270703) (not d!907097) (not d!906587) (not d!906823) (not b_lambda!90661) (not b!3270659) (not b!3269657) (not b!3269678) (not d!906717) (not b!3270793) (not bm!237009) (not d!907021) (not b!3269923) (not b!3270397) (not b!3270712) (not bm!237050) b_and!221585 (not b_lambda!90663) (not bm!237041) (not b_next!87251) (not d!906759) (not b!3269686) (not d!906721) (not b!3268391) (not d!906951) (not d!907075) (not d!906821) (not d!907205) (not b!3270713) (not d!906993) (not b!3270750) (not b!3270099) (not b!3269801) (not b_lambda!90545) (not b!3270732) (not b!3270244) (not b!3270653) (not d!907101) (not b!3270702) (not b!3270746) (not bm!236970) (not d!907089) (not b!3269924) (not b!3270615) (not b!3270086) (not d!906773) (not b!3270335) (not b!3269584) b_and!221551 (not bm!237049) (not b!3270319) (not b!3270308) (not d!906599) (not b!3269876) (not b!3270410) (not b!3270187) (not d!906851) (not b!3270331) (not b!3270134) (not b!3270339) (not b!3270777) (not b!3270357) b_and!221587 b_and!221601 (not b!3270529) (not b!3270768) (not b!3270395) (not bm!237002) (not bm!236964) (not bm!237039) (not d!906943) (not b_lambda!90623) (not b!3270734) (not b_lambda!90667) (not b!3269743) (not b!3270463) (not d!906885) (not d!906729) (not bm!237045) (not b!3270586) (not bm!237017) (not b!3270767) (not d!906913) (not d!907175) (not b!3270149) (not d!906789) (not b!3270644) (not d!907067) (not b!3270035) (not tb!165871) (not d!906603) (not b_lambda!90533) (not b!3270730) (not d!906871) (not b!3270377) (not b!3269655) (not d!906723) (not b!3270780) (not b!3270436) (not b!3270535) (not b!3270094) (not b_lambda!90531) (not d!906973) (not b!3270660) (not d!906829) (not b!3270073) (not b!3270426) (not b!3270169) (not b!3270220) (not b_lambda!90627) (not bm!237053) (not d!906743) (not d!907077) (not bm!237019) (not d!907041) (not b!3270272) (not d!906837) (not b!3269750) (not b!3270347) (not b!3270776) (not b!3269880) (not b!3270462) (not b!3269550) (not b!3270382) (not b_lambda!90543) (not b!3269665) (not b!3270742) (not d!907139) (not b!3270640) b_and!221599 (not b!3270664) (not d!906931) (not b!3270242) (not b!3270687) (not tb!165811) (not b!3270268) (not b!3270773) (not b!3270622) (not d!906575) (not b_lambda!90647) (not tb!165801) (not b!3270414) (not d!907029) (not b!3270757) (not b!3270533) (not d!907061) (not b!3270260) (not b!3270078) (not d!906929) (not b!3270696) (not d!907037) (not b!3270455) (not b!3270752) (not b_lambda!90657) (not b!3270471) (not tb!165901) (not d!906787) (not b!3270707) (not d!907141) (not b!3270336) (not d!907207) (not b!3270318) (not d!907079) (not b!3270688) (not d!906937) (not b!3270259) (not d!907109) (not b!3270050) (not b!3270333) (not b!3270714) (not b_lambda!90537) (not b!3270760) (not bm!237051) (not tb!165861) (not b!3270592) (not d!906817) (not d!907131) (not b!3270253) (not b!3270756) (not d!907035) (not tb!165891) (not d!906957) (not d!906997) (not b_lambda!90659) (not d!907135) (not b!3269746) (not bm!236998) (not b!3270470) (not bm!237016) (not b!3270411) (not b!3270047) (not b!3270273) (not d!906801) (not b!3270740) (not b!3270185) (not b!3270227) (not b!3270449) (not d!906811) (not d!906827) (not b!3270402) (not b!3270550) (not b!3270359) (not b!3270779) (not b!3270709) (not b!3270385) (not b!3270412) (not b!3270210) (not b!3270193) (not bm!237046) (not b!3269737) (not bm!236984) (not b!3270744) (not b!3270551) (not b!3270217) (not b!3269811) (not d!906849) (not b!3270627) (not d!906569) (not b!3270540) (not b!3270686) (not b_next!87249) (not bm!236990) (not b!3270638) (not b!3270526) (not b_lambda!90651) (not bm!236994) (not d!907023) (not b!3270791) (not b!3270365) (not b!3270751) (not b!3269582) (not b_next!87267) (not b!3270507) (not b!3270290) (not b!3270531) b_and!221593 (not b!3270312) (not d!907009) (not b!3270715) (not d!906835) (not d!906803) (not b!3270683) (not b!3270396) (not bm!237008) (not b!3270542) (not b!3270670) (not d!906899) (not b_next!87277) (not b!3270745) (not b_lambda!90541) (not b!3270371) b_and!221549 (not b!3270332) (not d!906861) (not d!907031) b_and!221591 (not b!3270257) (not b!3270096) (not b!3270671) (not b!3270419) (not b!3270655) (not b!3270787) (not d!906525) (not b!3270157) (not b!3270692) (not b!3270277) (not b!3270255) (not b_next!87281) (not b!3270625) (not bm!237000) (not b!3270781) (not bm!237012) (not b!3270369) (not b!3270180) (not b!3270093) (not b!3270532) (not b!3270225) (not b!3270069) (not d!906839) (not b!3270125) (not b!3270214) (not b!3269654) (not b!3270208) (not d!907169) (not b!3270775) b_and!221595 (not d!906559) (not d!906971) (not b!3269747) (not b!3269581) (not b!3270026) (not d!906859) (not b!3270700) (not b!3270353) (not d!907027) (not b!3270166) (not b_next!87279) (not b!3270755) (not b!3270343) (not bm!236965) (not b!3270274) (not bm!236995) (not b!3270706) (not d!907117) (not b!3270076) (not b!3270189) (not d!906983) (not b_lambda!90673) (not b!3270170) (not b!3268034) (not d!907147) (not b!3270182) (not b!3270271) (not d!907025) (not d!906909) (not b!3270548) (not bm!237055) (not b!3270045) (not b!3270367) (not d!907039) (not b!3270140) (not b!3270737) (not b!3270232) (not bm!237005) (not d!907111) (not b!3269805) (not b!3270454) (not b!3269752) (not d!906765) (not d!907153) (not b!3269748) (not d!906625) (not b_next!87265) (not b!3270413) (not b!3270717) (not b!3270439) (not d!906819) (not b!3269585) (not b!3270209) (not b_lambda!90535) (not b!3269922) (not b!3270235) (not d!906751) (not b!3270733) (not b!3270091) (not tb!165841) (not d!906831) (not b!3270082) b_and!221589 (not b!3270228) (not d!906963) (not d!907149) (not b!3270523) (not d!906649) (not d!906791) (not b!3270008) (not d!906857) (not b!3270753) (not d!906631) (not d!906633) (not bm!237040) (not b!3270662) (not b!3269671) (not d!907203) (not b!3270465) (not b!3270669) (not b!3270230) (not bm!236997) (not b!3270029) (not d!906639) (not d!907125) (not b!3270749) (not d!907015) (not bm!237015) (not b!3270211) (not d!906813) (not b!3270680) (not b!3270631) (not b_next!87243) (not bm!237056) (not b!3270177) (not b!3270788) (not b_lambda!90653) (not b_lambda!90617) (not b!3270430) (not b!3269925) (not b!3270783) (not b!3270361) (not d!906809) (not b!3269579) (not b!3270207) b_and!221597 (not d!906853) (not d!906659) (not b!3270269) (not b!3270620) (not bm!237038) (not b!3269684) (not d!907085) (not d!906987) (not b!3269921) (not b!3270327) (not b!3270212) (not b!3270179) (not b!3270729) (not tb!165881) (not bm!237037) (not b!3269586) (not b!3270354) (not d!906863) (not bm!237007) (not b!3270794) (not d!906547) (not d!907171) (not b!3270314) (not bm!237018) (not bm!237043) (not d!907113) (not d!907005) (not b!3270075) (not d!906873) (not d!906949) (not b!3270784) (not b!3270221) (not bm!236982) (not b!3269549) (not b!3269807) (not b!3270316) (not b!3270635) (not b!3270572) (not b!3270052) (not b!3270363) (not d!906923) (not b!3270183) (not b!3270205) (not b!3270597) (not b!3270240) (not d!906623) (not d!906589) (not b_lambda!90529) (not d!906807) (not d!906891) (not b!3270084) (not d!906779) (not b!3270143) (not d!906833) (not d!906985) (not b_next!87283) (not b!3269672) (not b!3270433) (not d!906869) (not b!3269926) (not b!3270553) (not d!906655) (not b!3270215) (not b!3270346) (not bm!237011) (not d!907017) (not b_lambda!90665) (not b!3270544) (not d!907059) (not d!906799) (not b!3270623) (not d!907127) (not b!3269802) (not d!906781) tp_is_empty!17349 (not tb!165851) (not b!3270792) (not b!3270276) (not b!3270738) (not b!3270543) (not bm!237057) (not d!906731) (not b!3270636) (not d!907151) (not b!3270222) (not b!3270176) (not bm!236969) (not b!3270321) (not b!3270234) (not d!907045) (not b!3270405) (not b!3269660) (not d!907123) (not b!3270506) (not d!907143) (not b!3270152) (not b!3269561))
(check-sat (not b_next!87263) (not b_next!87245) b_and!221551 b_and!221599 (not b_next!87249) (not b_next!87281) (not b_next!87265) b_and!221589 (not b_next!87243) b_and!221597 (not b_next!87283) b_and!221553 b_and!221545 (not b_next!87261) b_and!221547 (not b_next!87241) (not b_next!87247) (not b_next!87251) b_and!221585 b_and!221601 b_and!221587 b_and!221593 (not b_next!87267) (not b_next!87277) b_and!221591 b_and!221549 b_and!221595 (not b_next!87279))
