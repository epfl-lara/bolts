; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155938 () Bool)

(assert start!155938)

(declare-fun b!1634844 () Bool)

(declare-fun b_free!44183 () Bool)

(declare-fun b_next!44887 () Bool)

(assert (=> b!1634844 (= b_free!44183 (not b_next!44887))))

(declare-fun tp!474236 () Bool)

(declare-fun b_and!115901 () Bool)

(assert (=> b!1634844 (= tp!474236 b_and!115901)))

(declare-fun b_free!44185 () Bool)

(declare-fun b_next!44889 () Bool)

(assert (=> b!1634844 (= b_free!44185 (not b_next!44889))))

(declare-fun tp!474233 () Bool)

(declare-fun b_and!115903 () Bool)

(assert (=> b!1634844 (= tp!474233 b_and!115903)))

(declare-fun b!1634847 () Bool)

(declare-fun b_free!44187 () Bool)

(declare-fun b_next!44891 () Bool)

(assert (=> b!1634847 (= b_free!44187 (not b_next!44891))))

(declare-fun tp!474238 () Bool)

(declare-fun b_and!115905 () Bool)

(assert (=> b!1634847 (= tp!474238 b_and!115905)))

(declare-fun b_free!44189 () Bool)

(declare-fun b_next!44893 () Bool)

(assert (=> b!1634847 (= b_free!44189 (not b_next!44893))))

(declare-fun tp!474230 () Bool)

(declare-fun b_and!115907 () Bool)

(assert (=> b!1634847 (= tp!474230 b_and!115907)))

(declare-fun b!1634820 () Bool)

(declare-fun res!731872 () Bool)

(declare-fun e!1048432 () Bool)

(assert (=> b!1634820 (=> res!731872 e!1048432)))

(declare-datatypes ((List!18041 0))(
  ( (Nil!17971) (Cons!17971 (h!23372 (_ BitVec 16)) (t!149666 List!18041)) )
))
(declare-datatypes ((TokenValue!3257 0))(
  ( (FloatLiteralValue!6514 (text!23244 List!18041)) (TokenValueExt!3256 (__x!11816 Int)) (Broken!16285 (value!99906 List!18041)) (Object!3326) (End!3257) (Def!3257) (Underscore!3257) (Match!3257) (Else!3257) (Error!3257) (Case!3257) (If!3257) (Extends!3257) (Abstract!3257) (Class!3257) (Val!3257) (DelimiterValue!6514 (del!3317 List!18041)) (KeywordValue!3263 (value!99907 List!18041)) (CommentValue!6514 (value!99908 List!18041)) (WhitespaceValue!6514 (value!99909 List!18041)) (IndentationValue!3257 (value!99910 List!18041)) (String!20616) (Int32!3257) (Broken!16286 (value!99911 List!18041)) (Boolean!3258) (Unit!29353) (OperatorValue!3260 (op!3317 List!18041)) (IdentifierValue!6514 (value!99912 List!18041)) (IdentifierValue!6515 (value!99913 List!18041)) (WhitespaceValue!6515 (value!99914 List!18041)) (True!6514) (False!6514) (Broken!16287 (value!99915 List!18041)) (Broken!16288 (value!99916 List!18041)) (True!6515) (RightBrace!3257) (RightBracket!3257) (Colon!3257) (Null!3257) (Comma!3257) (LeftBracket!3257) (False!6515) (LeftBrace!3257) (ImaginaryLiteralValue!3257 (text!23245 List!18041)) (StringLiteralValue!9771 (value!99917 List!18041)) (EOFValue!3257 (value!99918 List!18041)) (IdentValue!3257 (value!99919 List!18041)) (DelimiterValue!6515 (value!99920 List!18041)) (DedentValue!3257 (value!99921 List!18041)) (NewLineValue!3257 (value!99922 List!18041)) (IntegerValue!9771 (value!99923 (_ BitVec 32)) (text!23246 List!18041)) (IntegerValue!9772 (value!99924 Int) (text!23247 List!18041)) (Times!3257) (Or!3257) (Equal!3257) (Minus!3257) (Broken!16289 (value!99925 List!18041)) (And!3257) (Div!3257) (LessEqual!3257) (Mod!3257) (Concat!7752) (Not!3257) (Plus!3257) (SpaceValue!3257 (value!99926 List!18041)) (IntegerValue!9773 (value!99927 Int) (text!23248 List!18041)) (StringLiteralValue!9772 (text!23249 List!18041)) (FloatLiteralValue!6515 (text!23250 List!18041)) (BytesLiteralValue!3257 (value!99928 List!18041)) (CommentValue!6515 (value!99929 List!18041)) (StringLiteralValue!9773 (value!99930 List!18041)) (ErrorTokenValue!3257 (msg!3318 List!18041)) )
))
(declare-datatypes ((C!9164 0))(
  ( (C!9165 (val!5178 Int)) )
))
(declare-datatypes ((List!18042 0))(
  ( (Nil!17972) (Cons!17972 (h!23373 C!9164) (t!149667 List!18042)) )
))
(declare-datatypes ((IArray!11969 0))(
  ( (IArray!11970 (innerList!6042 List!18042)) )
))
(declare-datatypes ((Conc!5982 0))(
  ( (Node!5982 (left!14423 Conc!5982) (right!14753 Conc!5982) (csize!12194 Int) (cheight!6193 Int)) (Leaf!8786 (xs!8818 IArray!11969) (csize!12195 Int)) (Empty!5982) )
))
(declare-datatypes ((BalanceConc!11908 0))(
  ( (BalanceConc!11909 (c!266027 Conc!5982)) )
))
(declare-datatypes ((Regex!4495 0))(
  ( (ElementMatch!4495 (c!266028 C!9164)) (Concat!7753 (regOne!9502 Regex!4495) (regTwo!9502 Regex!4495)) (EmptyExpr!4495) (Star!4495 (reg!4824 Regex!4495)) (EmptyLang!4495) (Union!4495 (regOne!9503 Regex!4495) (regTwo!9503 Regex!4495)) )
))
(declare-datatypes ((String!20617 0))(
  ( (String!20618 (value!99931 String)) )
))
(declare-datatypes ((TokenValueInjection!6174 0))(
  ( (TokenValueInjection!6175 (toValue!4598 Int) (toChars!4457 Int)) )
))
(declare-datatypes ((Rule!6134 0))(
  ( (Rule!6135 (regex!3167 Regex!4495) (tag!3447 String!20617) (isSeparator!3167 Bool) (transformation!3167 TokenValueInjection!6174)) )
))
(declare-datatypes ((List!18043 0))(
  ( (Nil!17973) (Cons!17973 (h!23374 Rule!6134) (t!149668 List!18043)) )
))
(declare-fun rules!1846 () List!18043)

(declare-datatypes ((LexerInterface!2796 0))(
  ( (LexerInterfaceExt!2793 (__x!11817 Int)) (Lexer!2794) )
))
(declare-fun thiss!17113 () LexerInterface!2796)

(declare-datatypes ((Token!5900 0))(
  ( (Token!5901 (value!99932 TokenValue!3257) (rule!5007 Rule!6134) (size!14340 Int) (originalCharacters!3981 List!18042)) )
))
(declare-datatypes ((List!18044 0))(
  ( (Nil!17974) (Cons!17974 (h!23375 Token!5900) (t!149669 List!18044)) )
))
(declare-fun tokens!457 () List!18044)

(declare-fun rulesProduceIndividualToken!1448 (LexerInterface!2796 List!18043 Token!5900) Bool)

(assert (=> b!1634820 (= res!731872 (not (rulesProduceIndividualToken!1448 thiss!17113 rules!1846 (h!23375 tokens!457))))))

(declare-fun b!1634821 () Bool)

(declare-fun res!731893 () Bool)

(declare-fun e!1048446 () Bool)

(assert (=> b!1634821 (=> (not res!731893) (not e!1048446))))

(declare-fun isEmpty!11003 (List!18043) Bool)

(assert (=> b!1634821 (= res!731893 (not (isEmpty!11003 rules!1846)))))

(declare-fun res!731870 () Bool)

(assert (=> start!155938 (=> (not res!731870) (not e!1048446))))

(get-info :version)

(assert (=> start!155938 (= res!731870 ((_ is Lexer!2794) thiss!17113))))

(assert (=> start!155938 e!1048446))

(assert (=> start!155938 true))

(declare-fun e!1048449 () Bool)

(assert (=> start!155938 e!1048449))

(declare-fun e!1048430 () Bool)

(assert (=> start!155938 e!1048430))

(declare-fun b!1634822 () Bool)

(declare-fun e!1048451 () Bool)

(assert (=> b!1634822 (= e!1048446 e!1048451)))

(declare-fun res!731888 () Bool)

(assert (=> b!1634822 (=> (not res!731888) (not e!1048451))))

(declare-fun lt!596468 () List!18042)

(declare-fun lt!596470 () List!18042)

(assert (=> b!1634822 (= res!731888 (= lt!596468 lt!596470))))

(declare-fun lt!596490 () List!18042)

(declare-fun lt!596485 () List!18042)

(declare-fun ++!4809 (List!18042 List!18042) List!18042)

(assert (=> b!1634822 (= lt!596470 (++!4809 lt!596490 lt!596485))))

(declare-fun lt!596484 () BalanceConc!11908)

(declare-fun list!7079 (BalanceConc!11908) List!18042)

(assert (=> b!1634822 (= lt!596468 (list!7079 lt!596484))))

(declare-fun lt!596486 () BalanceConc!11908)

(assert (=> b!1634822 (= lt!596485 (list!7079 lt!596486))))

(declare-fun lt!596474 () BalanceConc!11908)

(assert (=> b!1634822 (= lt!596490 (list!7079 lt!596474))))

(declare-fun charsOf!1816 (Token!5900) BalanceConc!11908)

(assert (=> b!1634822 (= lt!596474 (charsOf!1816 (h!23375 tokens!457)))))

(declare-datatypes ((IArray!11971 0))(
  ( (IArray!11972 (innerList!6043 List!18044)) )
))
(declare-datatypes ((Conc!5983 0))(
  ( (Node!5983 (left!14424 Conc!5983) (right!14754 Conc!5983) (csize!12196 Int) (cheight!6194 Int)) (Leaf!8787 (xs!8819 IArray!11971) (csize!12197 Int)) (Empty!5983) )
))
(declare-datatypes ((BalanceConc!11910 0))(
  ( (BalanceConc!11911 (c!266029 Conc!5983)) )
))
(declare-datatypes ((tuple2!17590 0))(
  ( (tuple2!17591 (_1!10197 BalanceConc!11910) (_2!10197 BalanceConc!11908)) )
))
(declare-fun lt!596487 () tuple2!17590)

(declare-fun lex!1280 (LexerInterface!2796 List!18043 BalanceConc!11908) tuple2!17590)

(assert (=> b!1634822 (= lt!596487 (lex!1280 thiss!17113 rules!1846 lt!596486))))

(declare-fun lt!596472 () BalanceConc!11910)

(declare-fun print!1327 (LexerInterface!2796 BalanceConc!11910) BalanceConc!11908)

(assert (=> b!1634822 (= lt!596486 (print!1327 thiss!17113 lt!596472))))

(declare-fun seqFromList!2083 (List!18044) BalanceConc!11910)

(assert (=> b!1634822 (= lt!596472 (seqFromList!2083 (t!149669 tokens!457)))))

(assert (=> b!1634822 (= lt!596484 (print!1327 thiss!17113 (seqFromList!2083 tokens!457)))))

(declare-fun b!1634823 () Bool)

(declare-fun res!731887 () Bool)

(assert (=> b!1634823 (=> (not res!731887) (not e!1048446))))

(assert (=> b!1634823 (= res!731887 (and (not ((_ is Nil!17974) tokens!457)) (not ((_ is Nil!17974) (t!149669 tokens!457)))))))

(declare-fun b!1634824 () Bool)

(declare-fun res!731892 () Bool)

(assert (=> b!1634824 (=> (not res!731892) (not e!1048446))))

(declare-fun rulesProduceEachTokenIndividuallyList!998 (LexerInterface!2796 List!18043 List!18044) Bool)

(assert (=> b!1634824 (= res!731892 (rulesProduceEachTokenIndividuallyList!998 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1634825 () Bool)

(declare-fun res!731873 () Bool)

(assert (=> b!1634825 (=> res!731873 e!1048432)))

(declare-fun isEmpty!11004 (BalanceConc!11910) Bool)

(declare-fun seqFromList!2084 (List!18042) BalanceConc!11908)

(assert (=> b!1634825 (= res!731873 (isEmpty!11004 (_1!10197 (lex!1280 thiss!17113 rules!1846 (seqFromList!2084 lt!596490)))))))

(declare-fun b!1634826 () Bool)

(declare-fun e!1048442 () Bool)

(declare-fun e!1048438 () Bool)

(assert (=> b!1634826 (= e!1048442 e!1048438)))

(declare-fun res!731883 () Bool)

(assert (=> b!1634826 (=> res!731883 e!1048438)))

(declare-fun lt!596480 () List!18042)

(declare-fun lt!596463 () Regex!4495)

(declare-fun prefixMatch!430 (Regex!4495 List!18042) Bool)

(assert (=> b!1634826 (= res!731883 (prefixMatch!430 lt!596463 (++!4809 lt!596490 lt!596480)))))

(declare-fun lt!596473 () BalanceConc!11908)

(assert (=> b!1634826 (= lt!596480 (list!7079 lt!596473))))

(declare-fun b!1634827 () Bool)

(declare-fun e!1048435 () Bool)

(declare-fun e!1048443 () Bool)

(assert (=> b!1634827 (= e!1048435 e!1048443)))

(declare-fun res!731879 () Bool)

(assert (=> b!1634827 (=> res!731879 e!1048443)))

(declare-fun lt!596481 () List!18042)

(assert (=> b!1634827 (= res!731879 (prefixMatch!430 lt!596463 (++!4809 (originalCharacters!3981 (h!23375 tokens!457)) lt!596481)))))

(declare-fun e!1048447 () Bool)

(assert (=> b!1634827 e!1048447))

(declare-fun res!731884 () Bool)

(assert (=> b!1634827 (=> (not res!731884) (not e!1048447))))

(declare-datatypes ((tuple2!17592 0))(
  ( (tuple2!17593 (_1!10198 Token!5900) (_2!10198 List!18042)) )
))
(declare-fun lt!596462 () tuple2!17592)

(assert (=> b!1634827 (= res!731884 (= (_1!10198 lt!596462) (h!23375 tokens!457)))))

(declare-datatypes ((Option!3369 0))(
  ( (None!3368) (Some!3368 (v!24445 tuple2!17592)) )
))
(declare-fun lt!596471 () Option!3369)

(declare-fun get!5204 (Option!3369) tuple2!17592)

(assert (=> b!1634827 (= lt!596462 (get!5204 lt!596471))))

(declare-fun isDefined!2736 (Option!3369) Bool)

(assert (=> b!1634827 (isDefined!2736 lt!596471)))

(declare-fun maxPrefix!1360 (LexerInterface!2796 List!18043 List!18042) Option!3369)

(assert (=> b!1634827 (= lt!596471 (maxPrefix!1360 thiss!17113 rules!1846 lt!596490))))

(assert (=> b!1634827 (isDefined!2736 (maxPrefix!1360 thiss!17113 rules!1846 (originalCharacters!3981 (h!23375 tokens!457))))))

(declare-fun b!1634828 () Bool)

(assert (=> b!1634828 (= e!1048438 e!1048435)))

(declare-fun res!731885 () Bool)

(assert (=> b!1634828 (=> res!731885 e!1048435)))

(declare-datatypes ((tuple2!17594 0))(
  ( (tuple2!17595 (_1!10199 Token!5900) (_2!10199 BalanceConc!11908)) )
))
(declare-datatypes ((Option!3370 0))(
  ( (None!3369) (Some!3369 (v!24446 tuple2!17594)) )
))
(declare-fun isDefined!2737 (Option!3370) Bool)

(declare-fun maxPrefixZipperSequence!691 (LexerInterface!2796 List!18043 BalanceConc!11908) Option!3370)

(assert (=> b!1634828 (= res!731885 (not (isDefined!2737 (maxPrefixZipperSequence!691 thiss!17113 rules!1846 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))))

(assert (=> b!1634828 (= lt!596480 lt!596481)))

(declare-fun head!3514 (BalanceConc!11908) C!9164)

(assert (=> b!1634828 (= lt!596481 (Cons!17972 (head!3514 lt!596486) Nil!17972))))

(declare-fun e!1048452 () Bool)

(assert (=> b!1634828 e!1048452))

(declare-fun res!731876 () Bool)

(assert (=> b!1634828 (=> (not res!731876) (not e!1048452))))

(assert (=> b!1634828 (= res!731876 (= lt!596490 (originalCharacters!3981 (h!23375 tokens!457))))))

(declare-fun b!1634829 () Bool)

(declare-fun e!1048448 () Bool)

(declare-fun e!1048440 () Bool)

(declare-fun tp!474234 () Bool)

(declare-fun inv!23328 (String!20617) Bool)

(declare-fun inv!23331 (TokenValueInjection!6174) Bool)

(assert (=> b!1634829 (= e!1048448 (and tp!474234 (inv!23328 (tag!3447 (rule!5007 (h!23375 tokens!457)))) (inv!23331 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) e!1048440))))

(declare-fun b!1634830 () Bool)

(declare-fun e!1048441 () Bool)

(assert (=> b!1634830 (= e!1048441 e!1048442)))

(declare-fun res!731869 () Bool)

(assert (=> b!1634830 (=> res!731869 e!1048442)))

(declare-fun prefixMatchZipperSequence!567 (Regex!4495 BalanceConc!11908) Bool)

(declare-fun ++!4810 (BalanceConc!11908 BalanceConc!11908) BalanceConc!11908)

(assert (=> b!1634830 (= res!731869 (prefixMatchZipperSequence!567 lt!596463 (++!4810 lt!596474 lt!596473)))))

(declare-fun singletonSeq!1612 (C!9164) BalanceConc!11908)

(declare-fun apply!4642 (BalanceConc!11908 Int) C!9164)

(assert (=> b!1634830 (= lt!596473 (singletonSeq!1612 (apply!4642 (charsOf!1816 (h!23375 (t!149669 tokens!457))) 0)))))

(declare-fun rulesRegex!557 (LexerInterface!2796 List!18043) Regex!4495)

(assert (=> b!1634830 (= lt!596463 (rulesRegex!557 thiss!17113 rules!1846))))

(declare-fun b!1634831 () Bool)

(declare-fun res!731889 () Bool)

(assert (=> b!1634831 (=> (not res!731889) (not e!1048447))))

(declare-fun isEmpty!11005 (List!18042) Bool)

(assert (=> b!1634831 (= res!731889 (isEmpty!11005 (_2!10198 lt!596462)))))

(declare-fun b!1634832 () Bool)

(declare-fun res!731878 () Bool)

(declare-fun e!1048434 () Bool)

(assert (=> b!1634832 (=> res!731878 e!1048434)))

(declare-fun get!5205 (Option!3370) tuple2!17594)

(assert (=> b!1634832 (= res!731878 (not (= (h!23375 tokens!457) (_1!10199 (get!5205 (maxPrefixZipperSequence!691 thiss!17113 rules!1846 lt!596484))))))))

(declare-fun b!1634833 () Bool)

(declare-fun res!731875 () Bool)

(assert (=> b!1634833 (=> (not res!731875) (not e!1048452))))

(declare-fun head!3515 (List!18042) C!9164)

(assert (=> b!1634833 (= res!731875 (= lt!596480 (Cons!17972 (head!3515 (originalCharacters!3981 (h!23375 (t!149669 tokens!457)))) Nil!17972)))))

(declare-fun b!1634834 () Bool)

(declare-fun res!731874 () Bool)

(assert (=> b!1634834 (=> res!731874 e!1048443)))

(assert (=> b!1634834 (= res!731874 (prefixMatch!430 lt!596463 (++!4809 lt!596490 lt!596481)))))

(declare-fun b!1634835 () Bool)

(declare-fun e!1048437 () Bool)

(declare-fun e!1048450 () Bool)

(assert (=> b!1634835 (= e!1048437 e!1048450)))

(declare-fun res!731880 () Bool)

(assert (=> b!1634835 (=> res!731880 e!1048450)))

(declare-fun lt!596467 () List!18044)

(declare-fun lt!596475 () List!18044)

(declare-fun lt!596465 () List!18044)

(assert (=> b!1634835 (= res!731880 (or (not (= lt!596465 lt!596475)) (not (= lt!596475 lt!596467))))))

(declare-fun list!7080 (BalanceConc!11910) List!18044)

(assert (=> b!1634835 (= lt!596475 (list!7080 lt!596472))))

(assert (=> b!1634835 (= lt!596465 lt!596467)))

(declare-fun prepend!705 (BalanceConc!11910 Token!5900) BalanceConc!11910)

(assert (=> b!1634835 (= lt!596467 (list!7080 (prepend!705 (seqFromList!2083 (t!149669 (t!149669 tokens!457))) (h!23375 (t!149669 tokens!457)))))))

(declare-datatypes ((Unit!29354 0))(
  ( (Unit!29355) )
))
(declare-fun lt!596482 () Unit!29354)

(declare-fun seqFromListBHdTlConstructive!244 (Token!5900 List!18044 BalanceConc!11910) Unit!29354)

(assert (=> b!1634835 (= lt!596482 (seqFromListBHdTlConstructive!244 (h!23375 (t!149669 tokens!457)) (t!149669 (t!149669 tokens!457)) (_1!10197 lt!596487)))))

(declare-fun b!1634836 () Bool)

(declare-fun rulesValidInductive!988 (LexerInterface!2796 List!18043) Bool)

(assert (=> b!1634836 (= e!1048434 (rulesValidInductive!988 thiss!17113 rules!1846))))

(declare-fun b!1634837 () Bool)

(declare-fun e!1048431 () Bool)

(declare-fun tp!474235 () Bool)

(declare-fun e!1048436 () Bool)

(assert (=> b!1634837 (= e!1048436 (and tp!474235 (inv!23328 (tag!3447 (h!23374 rules!1846))) (inv!23331 (transformation!3167 (h!23374 rules!1846))) e!1048431))))

(declare-fun e!1048444 () Bool)

(declare-fun b!1634838 () Bool)

(declare-fun tp!474232 () Bool)

(declare-fun inv!23332 (Token!5900) Bool)

(assert (=> b!1634838 (= e!1048430 (and (inv!23332 (h!23375 tokens!457)) e!1048444 tp!474232))))

(declare-fun b!1634839 () Bool)

(declare-fun tp!474231 () Bool)

(assert (=> b!1634839 (= e!1048449 (and e!1048436 tp!474231))))

(declare-fun b!1634840 () Bool)

(assert (=> b!1634840 (= e!1048443 e!1048434)))

(declare-fun res!731886 () Bool)

(assert (=> b!1634840 (=> res!731886 e!1048434)))

(declare-fun lt!596483 () tuple2!17592)

(assert (=> b!1634840 (= res!731886 (or (not (= (_1!10198 lt!596483) (h!23375 tokens!457))) (not (= (_2!10198 lt!596483) lt!596485))))))

(declare-fun lt!596489 () Option!3369)

(assert (=> b!1634840 (= lt!596483 (get!5204 lt!596489))))

(declare-fun lt!596476 () Unit!29354)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!132 (LexerInterface!2796 List!18043 Token!5900 Rule!6134 List!18042) Unit!29354)

(assert (=> b!1634840 (= lt!596476 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!132 thiss!17113 rules!1846 (h!23375 tokens!457) (rule!5007 (h!23375 tokens!457)) lt!596485))))

(declare-fun b!1634841 () Bool)

(assert (=> b!1634841 (= e!1048452 (= lt!596480 (Cons!17972 (head!3515 lt!596485) Nil!17972)))))

(declare-fun b!1634842 () Bool)

(declare-fun matchR!1994 (Regex!4495 List!18042) Bool)

(assert (=> b!1634842 (= e!1048447 (matchR!1994 (regex!3167 (rule!5007 (h!23375 tokens!457))) lt!596490))))

(declare-fun b!1634843 () Bool)

(declare-fun tp!474237 () Bool)

(declare-fun inv!21 (TokenValue!3257) Bool)

(assert (=> b!1634843 (= e!1048444 (and (inv!21 (value!99932 (h!23375 tokens!457))) e!1048448 tp!474237))))

(assert (=> b!1634844 (= e!1048440 (and tp!474236 tp!474233))))

(declare-fun b!1634845 () Bool)

(declare-fun res!731877 () Bool)

(assert (=> b!1634845 (=> res!731877 e!1048450)))

(declare-fun separableTokensPredicate!738 (LexerInterface!2796 Token!5900 Token!5900 List!18043) Bool)

(assert (=> b!1634845 (= res!731877 (not (separableTokensPredicate!738 thiss!17113 (h!23375 tokens!457) (h!23375 (t!149669 tokens!457)) rules!1846)))))

(declare-fun b!1634846 () Bool)

(declare-fun res!731894 () Bool)

(assert (=> b!1634846 (=> (not res!731894) (not e!1048446))))

(declare-fun rulesInvariant!2465 (LexerInterface!2796 List!18043) Bool)

(assert (=> b!1634846 (= res!731894 (rulesInvariant!2465 thiss!17113 rules!1846))))

(assert (=> b!1634847 (= e!1048431 (and tp!474238 tp!474230))))

(declare-fun b!1634848 () Bool)

(assert (=> b!1634848 (= e!1048432 e!1048441)))

(declare-fun res!731871 () Bool)

(assert (=> b!1634848 (=> res!731871 e!1048441)))

(assert (=> b!1634848 (= res!731871 (not (isDefined!2736 lt!596489)))))

(declare-fun lt!596488 () Unit!29354)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!370 (LexerInterface!2796 List!18043 List!18042 List!18042) Unit!29354)

(assert (=> b!1634848 (= lt!596488 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!370 thiss!17113 rules!1846 lt!596490 lt!596485))))

(declare-fun b!1634849 () Bool)

(assert (=> b!1634849 (= e!1048451 (not e!1048437))))

(declare-fun res!731891 () Bool)

(assert (=> b!1634849 (=> res!731891 e!1048437)))

(assert (=> b!1634849 (= res!731891 (not (= lt!596465 (t!149669 tokens!457))))))

(assert (=> b!1634849 (= lt!596465 (list!7080 (_1!10197 lt!596487)))))

(declare-fun lt!596469 () Unit!29354)

(declare-fun theoremInvertabilityWhenTokenListSeparable!241 (LexerInterface!2796 List!18043 List!18044) Unit!29354)

(assert (=> b!1634849 (= lt!596469 (theoremInvertabilityWhenTokenListSeparable!241 thiss!17113 rules!1846 (t!149669 tokens!457)))))

(declare-fun isPrefix!1427 (List!18042 List!18042) Bool)

(assert (=> b!1634849 (isPrefix!1427 lt!596490 lt!596470)))

(declare-fun lt!596464 () Unit!29354)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!952 (List!18042 List!18042) Unit!29354)

(assert (=> b!1634849 (= lt!596464 (lemmaConcatTwoListThenFirstIsPrefix!952 lt!596490 lt!596485))))

(declare-fun b!1634850 () Bool)

(assert (=> b!1634850 (= e!1048450 e!1048432)))

(declare-fun res!731882 () Bool)

(assert (=> b!1634850 (=> res!731882 e!1048432)))

(declare-fun lt!596478 () List!18042)

(declare-fun lt!596479 () List!18042)

(assert (=> b!1634850 (= res!731882 (or (not (= lt!596479 lt!596478)) (not (= lt!596478 lt!596490)) (not (= lt!596479 lt!596490))))))

(declare-fun printList!911 (LexerInterface!2796 List!18044) List!18042)

(assert (=> b!1634850 (= lt!596478 (printList!911 thiss!17113 (Cons!17974 (h!23375 tokens!457) Nil!17974)))))

(declare-fun lt!596477 () BalanceConc!11908)

(assert (=> b!1634850 (= lt!596479 (list!7079 lt!596477))))

(declare-fun lt!596466 () BalanceConc!11910)

(declare-fun printTailRec!849 (LexerInterface!2796 BalanceConc!11910 Int BalanceConc!11908) BalanceConc!11908)

(assert (=> b!1634850 (= lt!596477 (printTailRec!849 thiss!17113 lt!596466 0 (BalanceConc!11909 Empty!5982)))))

(assert (=> b!1634850 (= lt!596477 (print!1327 thiss!17113 lt!596466))))

(declare-fun singletonSeq!1613 (Token!5900) BalanceConc!11910)

(assert (=> b!1634850 (= lt!596466 (singletonSeq!1613 (h!23375 tokens!457)))))

(assert (=> b!1634850 (= lt!596489 (maxPrefix!1360 thiss!17113 rules!1846 lt!596468))))

(declare-fun b!1634851 () Bool)

(declare-fun res!731881 () Bool)

(assert (=> b!1634851 (=> (not res!731881) (not e!1048446))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!489 (LexerInterface!2796 List!18044 List!18043) Bool)

(assert (=> b!1634851 (= res!731881 (tokensListTwoByTwoPredicateSeparableList!489 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1634852 () Bool)

(declare-fun res!731890 () Bool)

(assert (=> b!1634852 (=> res!731890 e!1048434)))

(declare-fun maxPrefixZipper!324 (LexerInterface!2796 List!18043 List!18042) Option!3369)

(assert (=> b!1634852 (= res!731890 (not (= (h!23375 tokens!457) (_1!10198 (get!5204 (maxPrefixZipper!324 thiss!17113 rules!1846 lt!596468))))))))

(assert (= (and start!155938 res!731870) b!1634821))

(assert (= (and b!1634821 res!731893) b!1634846))

(assert (= (and b!1634846 res!731894) b!1634824))

(assert (= (and b!1634824 res!731892) b!1634851))

(assert (= (and b!1634851 res!731881) b!1634823))

(assert (= (and b!1634823 res!731887) b!1634822))

(assert (= (and b!1634822 res!731888) b!1634849))

(assert (= (and b!1634849 (not res!731891)) b!1634835))

(assert (= (and b!1634835 (not res!731880)) b!1634845))

(assert (= (and b!1634845 (not res!731877)) b!1634850))

(assert (= (and b!1634850 (not res!731882)) b!1634820))

(assert (= (and b!1634820 (not res!731872)) b!1634825))

(assert (= (and b!1634825 (not res!731873)) b!1634848))

(assert (= (and b!1634848 (not res!731871)) b!1634830))

(assert (= (and b!1634830 (not res!731869)) b!1634826))

(assert (= (and b!1634826 (not res!731883)) b!1634828))

(assert (= (and b!1634828 res!731876) b!1634833))

(assert (= (and b!1634833 res!731875) b!1634841))

(assert (= (and b!1634828 (not res!731885)) b!1634827))

(assert (= (and b!1634827 res!731884) b!1634831))

(assert (= (and b!1634831 res!731889) b!1634842))

(assert (= (and b!1634827 (not res!731879)) b!1634834))

(assert (= (and b!1634834 (not res!731874)) b!1634840))

(assert (= (and b!1634840 (not res!731886)) b!1634852))

(assert (= (and b!1634852 (not res!731890)) b!1634832))

(assert (= (and b!1634832 (not res!731878)) b!1634836))

(assert (= b!1634837 b!1634847))

(assert (= b!1634839 b!1634837))

(assert (= (and start!155938 ((_ is Cons!17973) rules!1846)) b!1634839))

(assert (= b!1634829 b!1634844))

(assert (= b!1634843 b!1634829))

(assert (= b!1634838 b!1634843))

(assert (= (and start!155938 ((_ is Cons!17974) tokens!457)) b!1634838))

(declare-fun m!1970703 () Bool)

(assert (=> b!1634825 m!1970703))

(assert (=> b!1634825 m!1970703))

(declare-fun m!1970705 () Bool)

(assert (=> b!1634825 m!1970705))

(declare-fun m!1970707 () Bool)

(assert (=> b!1634825 m!1970707))

(declare-fun m!1970709 () Bool)

(assert (=> b!1634829 m!1970709))

(declare-fun m!1970711 () Bool)

(assert (=> b!1634829 m!1970711))

(declare-fun m!1970713 () Bool)

(assert (=> b!1634832 m!1970713))

(assert (=> b!1634832 m!1970713))

(declare-fun m!1970715 () Bool)

(assert (=> b!1634832 m!1970715))

(declare-fun m!1970717 () Bool)

(assert (=> b!1634840 m!1970717))

(declare-fun m!1970719 () Bool)

(assert (=> b!1634840 m!1970719))

(declare-fun m!1970721 () Bool)

(assert (=> b!1634822 m!1970721))

(declare-fun m!1970723 () Bool)

(assert (=> b!1634822 m!1970723))

(declare-fun m!1970725 () Bool)

(assert (=> b!1634822 m!1970725))

(declare-fun m!1970727 () Bool)

(assert (=> b!1634822 m!1970727))

(declare-fun m!1970729 () Bool)

(assert (=> b!1634822 m!1970729))

(declare-fun m!1970731 () Bool)

(assert (=> b!1634822 m!1970731))

(declare-fun m!1970733 () Bool)

(assert (=> b!1634822 m!1970733))

(declare-fun m!1970735 () Bool)

(assert (=> b!1634822 m!1970735))

(assert (=> b!1634822 m!1970729))

(declare-fun m!1970737 () Bool)

(assert (=> b!1634822 m!1970737))

(declare-fun m!1970739 () Bool)

(assert (=> b!1634822 m!1970739))

(declare-fun m!1970741 () Bool)

(assert (=> b!1634833 m!1970741))

(declare-fun m!1970743 () Bool)

(assert (=> b!1634850 m!1970743))

(declare-fun m!1970745 () Bool)

(assert (=> b!1634850 m!1970745))

(declare-fun m!1970747 () Bool)

(assert (=> b!1634850 m!1970747))

(declare-fun m!1970749 () Bool)

(assert (=> b!1634850 m!1970749))

(declare-fun m!1970751 () Bool)

(assert (=> b!1634850 m!1970751))

(declare-fun m!1970753 () Bool)

(assert (=> b!1634850 m!1970753))

(declare-fun m!1970755 () Bool)

(assert (=> b!1634830 m!1970755))

(declare-fun m!1970757 () Bool)

(assert (=> b!1634830 m!1970757))

(declare-fun m!1970759 () Bool)

(assert (=> b!1634830 m!1970759))

(declare-fun m!1970761 () Bool)

(assert (=> b!1634830 m!1970761))

(declare-fun m!1970763 () Bool)

(assert (=> b!1634830 m!1970763))

(assert (=> b!1634830 m!1970757))

(declare-fun m!1970765 () Bool)

(assert (=> b!1634830 m!1970765))

(assert (=> b!1634830 m!1970761))

(assert (=> b!1634830 m!1970765))

(declare-fun m!1970767 () Bool)

(assert (=> b!1634841 m!1970767))

(declare-fun m!1970769 () Bool)

(assert (=> b!1634834 m!1970769))

(assert (=> b!1634834 m!1970769))

(declare-fun m!1970771 () Bool)

(assert (=> b!1634834 m!1970771))

(declare-fun m!1970773 () Bool)

(assert (=> b!1634828 m!1970773))

(assert (=> b!1634828 m!1970773))

(declare-fun m!1970775 () Bool)

(assert (=> b!1634828 m!1970775))

(assert (=> b!1634828 m!1970775))

(declare-fun m!1970777 () Bool)

(assert (=> b!1634828 m!1970777))

(declare-fun m!1970779 () Bool)

(assert (=> b!1634828 m!1970779))

(declare-fun m!1970781 () Bool)

(assert (=> b!1634846 m!1970781))

(declare-fun m!1970783 () Bool)

(assert (=> b!1634848 m!1970783))

(declare-fun m!1970785 () Bool)

(assert (=> b!1634848 m!1970785))

(declare-fun m!1970787 () Bool)

(assert (=> b!1634831 m!1970787))

(declare-fun m!1970789 () Bool)

(assert (=> b!1634852 m!1970789))

(assert (=> b!1634852 m!1970789))

(declare-fun m!1970791 () Bool)

(assert (=> b!1634852 m!1970791))

(declare-fun m!1970793 () Bool)

(assert (=> b!1634838 m!1970793))

(declare-fun m!1970795 () Bool)

(assert (=> b!1634820 m!1970795))

(declare-fun m!1970797 () Bool)

(assert (=> b!1634843 m!1970797))

(declare-fun m!1970799 () Bool)

(assert (=> b!1634827 m!1970799))

(declare-fun m!1970801 () Bool)

(assert (=> b!1634827 m!1970801))

(declare-fun m!1970803 () Bool)

(assert (=> b!1634827 m!1970803))

(declare-fun m!1970805 () Bool)

(assert (=> b!1634827 m!1970805))

(assert (=> b!1634827 m!1970799))

(declare-fun m!1970807 () Bool)

(assert (=> b!1634827 m!1970807))

(declare-fun m!1970809 () Bool)

(assert (=> b!1634827 m!1970809))

(declare-fun m!1970811 () Bool)

(assert (=> b!1634827 m!1970811))

(assert (=> b!1634827 m!1970801))

(declare-fun m!1970813 () Bool)

(assert (=> b!1634845 m!1970813))

(declare-fun m!1970815 () Bool)

(assert (=> b!1634837 m!1970815))

(declare-fun m!1970817 () Bool)

(assert (=> b!1634837 m!1970817))

(declare-fun m!1970819 () Bool)

(assert (=> b!1634824 m!1970819))

(declare-fun m!1970821 () Bool)

(assert (=> b!1634851 m!1970821))

(declare-fun m!1970823 () Bool)

(assert (=> b!1634836 m!1970823))

(declare-fun m!1970825 () Bool)

(assert (=> b!1634835 m!1970825))

(declare-fun m!1970827 () Bool)

(assert (=> b!1634835 m!1970827))

(declare-fun m!1970829 () Bool)

(assert (=> b!1634835 m!1970829))

(declare-fun m!1970831 () Bool)

(assert (=> b!1634835 m!1970831))

(declare-fun m!1970833 () Bool)

(assert (=> b!1634835 m!1970833))

(assert (=> b!1634835 m!1970829))

(assert (=> b!1634835 m!1970831))

(declare-fun m!1970835 () Bool)

(assert (=> b!1634821 m!1970835))

(declare-fun m!1970837 () Bool)

(assert (=> b!1634826 m!1970837))

(assert (=> b!1634826 m!1970837))

(declare-fun m!1970839 () Bool)

(assert (=> b!1634826 m!1970839))

(declare-fun m!1970841 () Bool)

(assert (=> b!1634826 m!1970841))

(declare-fun m!1970843 () Bool)

(assert (=> b!1634842 m!1970843))

(declare-fun m!1970845 () Bool)

(assert (=> b!1634849 m!1970845))

(declare-fun m!1970847 () Bool)

(assert (=> b!1634849 m!1970847))

(declare-fun m!1970849 () Bool)

(assert (=> b!1634849 m!1970849))

(declare-fun m!1970851 () Bool)

(assert (=> b!1634849 m!1970851))

(check-sat (not b!1634848) (not b!1634830) (not b!1634838) b_and!115907 (not b!1634822) (not b!1634843) (not b!1634837) (not b_next!44891) (not b!1634832) (not b!1634851) (not b!1634828) (not b!1634824) (not b!1634831) (not b!1634840) (not b_next!44893) (not b!1634849) (not b!1634852) (not b!1634841) (not b_next!44887) (not b!1634839) b_and!115901 (not b!1634826) (not b!1634845) (not b_next!44889) (not b!1634827) b_and!115905 (not b!1634821) (not b!1634834) (not b!1634850) (not b!1634833) b_and!115903 (not b!1634835) (not b!1634820) (not b!1634829) (not b!1634846) (not b!1634842) (not b!1634836) (not b!1634825))
(check-sat (not b_next!44893) b_and!115907 (not b_next!44887) b_and!115901 (not b_next!44891) (not b_next!44889) b_and!115905 b_and!115903)
(get-model)

(declare-fun d!492308 () Bool)

(assert (=> d!492308 (= (get!5205 (maxPrefixZipperSequence!691 thiss!17113 rules!1846 lt!596484)) (v!24446 (maxPrefixZipperSequence!691 thiss!17113 rules!1846 lt!596484)))))

(assert (=> b!1634832 d!492308))

(declare-fun b!1634920 () Bool)

(declare-fun e!1048491 () Option!3370)

(declare-fun lt!596571 () Option!3370)

(declare-fun lt!596569 () Option!3370)

(assert (=> b!1634920 (= e!1048491 (ite (and ((_ is None!3369) lt!596571) ((_ is None!3369) lt!596569)) None!3369 (ite ((_ is None!3369) lt!596569) lt!596571 (ite ((_ is None!3369) lt!596571) lt!596569 (ite (>= (size!14340 (_1!10199 (v!24446 lt!596571))) (size!14340 (_1!10199 (v!24446 lt!596569)))) lt!596571 lt!596569)))))))

(declare-fun call!105612 () Option!3370)

(assert (=> b!1634920 (= lt!596571 call!105612)))

(assert (=> b!1634920 (= lt!596569 (maxPrefixZipperSequence!691 thiss!17113 (t!149668 rules!1846) lt!596484))))

(declare-fun lt!596567 () Option!3370)

(declare-fun b!1634921 () Bool)

(declare-fun e!1048493 () Bool)

(assert (=> b!1634921 (= e!1048493 (= (list!7079 (_2!10199 (get!5205 lt!596567))) (_2!10198 (get!5204 (maxPrefixZipper!324 thiss!17113 rules!1846 (list!7079 lt!596484))))))))

(declare-fun d!492310 () Bool)

(declare-fun e!1048495 () Bool)

(assert (=> d!492310 e!1048495))

(declare-fun res!731953 () Bool)

(assert (=> d!492310 (=> (not res!731953) (not e!1048495))))

(assert (=> d!492310 (= res!731953 (= (isDefined!2737 lt!596567) (isDefined!2736 (maxPrefixZipper!324 thiss!17113 rules!1846 (list!7079 lt!596484)))))))

(assert (=> d!492310 (= lt!596567 e!1048491)))

(declare-fun c!266041 () Bool)

(assert (=> d!492310 (= c!266041 (and ((_ is Cons!17973) rules!1846) ((_ is Nil!17973) (t!149668 rules!1846))))))

(declare-fun lt!596570 () Unit!29354)

(declare-fun lt!596568 () Unit!29354)

(assert (=> d!492310 (= lt!596570 lt!596568)))

(declare-fun lt!596565 () List!18042)

(declare-fun lt!596566 () List!18042)

(assert (=> d!492310 (isPrefix!1427 lt!596565 lt!596566)))

(declare-fun lemmaIsPrefixRefl!972 (List!18042 List!18042) Unit!29354)

(assert (=> d!492310 (= lt!596568 (lemmaIsPrefixRefl!972 lt!596565 lt!596566))))

(assert (=> d!492310 (= lt!596566 (list!7079 lt!596484))))

(assert (=> d!492310 (= lt!596565 (list!7079 lt!596484))))

(assert (=> d!492310 (rulesValidInductive!988 thiss!17113 rules!1846)))

(assert (=> d!492310 (= (maxPrefixZipperSequence!691 thiss!17113 rules!1846 lt!596484) lt!596567)))

(declare-fun b!1634922 () Bool)

(declare-fun e!1048494 () Bool)

(declare-fun e!1048497 () Bool)

(assert (=> b!1634922 (= e!1048494 e!1048497)))

(declare-fun res!731952 () Bool)

(assert (=> b!1634922 (=> (not res!731952) (not e!1048497))))

(assert (=> b!1634922 (= res!731952 (= (_1!10199 (get!5205 lt!596567)) (_1!10198 (get!5204 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 lt!596484))))))))

(declare-fun b!1634923 () Bool)

(assert (=> b!1634923 (= e!1048491 call!105612)))

(declare-fun b!1634924 () Bool)

(assert (=> b!1634924 (= e!1048495 e!1048494)))

(declare-fun res!731950 () Bool)

(assert (=> b!1634924 (=> res!731950 e!1048494)))

(assert (=> b!1634924 (= res!731950 (not (isDefined!2737 lt!596567)))))

(declare-fun bm!105607 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!327 (LexerInterface!2796 Rule!6134 BalanceConc!11908) Option!3370)

(assert (=> bm!105607 (= call!105612 (maxPrefixOneRuleZipperSequence!327 thiss!17113 (h!23374 rules!1846) lt!596484))))

(declare-fun b!1634925 () Bool)

(declare-fun res!731949 () Bool)

(assert (=> b!1634925 (=> (not res!731949) (not e!1048495))))

(declare-fun e!1048496 () Bool)

(assert (=> b!1634925 (= res!731949 e!1048496)))

(declare-fun res!731954 () Bool)

(assert (=> b!1634925 (=> res!731954 e!1048496)))

(assert (=> b!1634925 (= res!731954 (not (isDefined!2737 lt!596567)))))

(declare-fun b!1634926 () Bool)

(assert (=> b!1634926 (= e!1048497 (= (list!7079 (_2!10199 (get!5205 lt!596567))) (_2!10198 (get!5204 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 lt!596484))))))))

(declare-fun b!1634927 () Bool)

(assert (=> b!1634927 (= e!1048496 e!1048493)))

(declare-fun res!731951 () Bool)

(assert (=> b!1634927 (=> (not res!731951) (not e!1048493))))

(assert (=> b!1634927 (= res!731951 (= (_1!10199 (get!5205 lt!596567)) (_1!10198 (get!5204 (maxPrefixZipper!324 thiss!17113 rules!1846 (list!7079 lt!596484))))))))

(assert (= (and d!492310 c!266041) b!1634923))

(assert (= (and d!492310 (not c!266041)) b!1634920))

(assert (= (or b!1634923 b!1634920) bm!105607))

(assert (= (and d!492310 res!731953) b!1634925))

(assert (= (and b!1634925 (not res!731954)) b!1634927))

(assert (= (and b!1634927 res!731951) b!1634921))

(assert (= (and b!1634925 res!731949) b!1634924))

(assert (= (and b!1634924 (not res!731950)) b!1634922))

(assert (= (and b!1634922 res!731952) b!1634926))

(declare-fun m!1970949 () Bool)

(assert (=> b!1634922 m!1970949))

(assert (=> b!1634922 m!1970721))

(assert (=> b!1634922 m!1970721))

(declare-fun m!1970951 () Bool)

(assert (=> b!1634922 m!1970951))

(assert (=> b!1634922 m!1970951))

(declare-fun m!1970953 () Bool)

(assert (=> b!1634922 m!1970953))

(declare-fun m!1970955 () Bool)

(assert (=> bm!105607 m!1970955))

(declare-fun m!1970957 () Bool)

(assert (=> b!1634925 m!1970957))

(declare-fun m!1970959 () Bool)

(assert (=> b!1634920 m!1970959))

(declare-fun m!1970961 () Bool)

(assert (=> b!1634926 m!1970961))

(assert (=> b!1634926 m!1970721))

(assert (=> b!1634926 m!1970951))

(assert (=> b!1634926 m!1970721))

(assert (=> b!1634926 m!1970949))

(assert (=> b!1634926 m!1970951))

(assert (=> b!1634926 m!1970953))

(assert (=> b!1634921 m!1970961))

(declare-fun m!1970963 () Bool)

(assert (=> b!1634921 m!1970963))

(declare-fun m!1970965 () Bool)

(assert (=> b!1634921 m!1970965))

(assert (=> b!1634921 m!1970721))

(assert (=> b!1634921 m!1970949))

(assert (=> b!1634921 m!1970721))

(assert (=> b!1634921 m!1970963))

(assert (=> d!492310 m!1970823))

(declare-fun m!1970967 () Bool)

(assert (=> d!492310 m!1970967))

(assert (=> d!492310 m!1970957))

(assert (=> d!492310 m!1970721))

(declare-fun m!1970969 () Bool)

(assert (=> d!492310 m!1970969))

(assert (=> d!492310 m!1970721))

(assert (=> d!492310 m!1970963))

(assert (=> d!492310 m!1970963))

(declare-fun m!1970971 () Bool)

(assert (=> d!492310 m!1970971))

(assert (=> b!1634927 m!1970949))

(assert (=> b!1634927 m!1970721))

(assert (=> b!1634927 m!1970721))

(assert (=> b!1634927 m!1970963))

(assert (=> b!1634927 m!1970963))

(assert (=> b!1634927 m!1970965))

(assert (=> b!1634924 m!1970957))

(assert (=> b!1634832 d!492310))

(declare-fun d!492328 () Bool)

(assert (=> d!492328 (= (isEmpty!11005 (_2!10198 lt!596462)) ((_ is Nil!17972) (_2!10198 lt!596462)))))

(assert (=> b!1634831 d!492328))

(declare-fun d!492330 () Bool)

(assert (=> d!492330 (= (get!5204 (maxPrefixZipper!324 thiss!17113 rules!1846 lt!596468)) (v!24445 (maxPrefixZipper!324 thiss!17113 rules!1846 lt!596468)))))

(assert (=> b!1634852 d!492330))

(declare-fun d!492332 () Bool)

(declare-fun lt!596594 () Option!3369)

(assert (=> d!492332 (= lt!596594 (maxPrefix!1360 thiss!17113 rules!1846 lt!596468))))

(declare-fun e!1048515 () Option!3369)

(assert (=> d!492332 (= lt!596594 e!1048515)))

(declare-fun c!266051 () Bool)

(assert (=> d!492332 (= c!266051 (and ((_ is Cons!17973) rules!1846) ((_ is Nil!17973) (t!149668 rules!1846))))))

(declare-fun lt!596598 () Unit!29354)

(declare-fun lt!596595 () Unit!29354)

(assert (=> d!492332 (= lt!596598 lt!596595)))

(assert (=> d!492332 (isPrefix!1427 lt!596468 lt!596468)))

(assert (=> d!492332 (= lt!596595 (lemmaIsPrefixRefl!972 lt!596468 lt!596468))))

(assert (=> d!492332 (rulesValidInductive!988 thiss!17113 rules!1846)))

(assert (=> d!492332 (= (maxPrefixZipper!324 thiss!17113 rules!1846 lt!596468) lt!596594)))

(declare-fun bm!105610 () Bool)

(declare-fun call!105615 () Option!3369)

(declare-fun maxPrefixOneRuleZipper!114 (LexerInterface!2796 Rule!6134 List!18042) Option!3369)

(assert (=> bm!105610 (= call!105615 (maxPrefixOneRuleZipper!114 thiss!17113 (h!23374 rules!1846) lt!596468))))

(declare-fun b!1634956 () Bool)

(assert (=> b!1634956 (= e!1048515 call!105615)))

(declare-fun b!1634957 () Bool)

(declare-fun lt!596597 () Option!3369)

(declare-fun lt!596596 () Option!3369)

(assert (=> b!1634957 (= e!1048515 (ite (and ((_ is None!3368) lt!596597) ((_ is None!3368) lt!596596)) None!3368 (ite ((_ is None!3368) lt!596596) lt!596597 (ite ((_ is None!3368) lt!596597) lt!596596 (ite (>= (size!14340 (_1!10198 (v!24445 lt!596597))) (size!14340 (_1!10198 (v!24445 lt!596596)))) lt!596597 lt!596596)))))))

(assert (=> b!1634957 (= lt!596597 call!105615)))

(assert (=> b!1634957 (= lt!596596 (maxPrefixZipper!324 thiss!17113 (t!149668 rules!1846) lt!596468))))

(assert (= (and d!492332 c!266051) b!1634956))

(assert (= (and d!492332 (not c!266051)) b!1634957))

(assert (= (or b!1634956 b!1634957) bm!105610))

(assert (=> d!492332 m!1970743))

(declare-fun m!1971027 () Bool)

(assert (=> d!492332 m!1971027))

(declare-fun m!1971029 () Bool)

(assert (=> d!492332 m!1971029))

(assert (=> d!492332 m!1970823))

(declare-fun m!1971031 () Bool)

(assert (=> bm!105610 m!1971031))

(declare-fun m!1971033 () Bool)

(assert (=> b!1634957 m!1971033))

(assert (=> b!1634852 d!492332))

(declare-fun d!492350 () Bool)

(declare-fun e!1048518 () Bool)

(assert (=> d!492350 e!1048518))

(declare-fun res!731969 () Bool)

(assert (=> d!492350 (=> (not res!731969) (not e!1048518))))

(declare-fun lt!596601 () BalanceConc!11908)

(assert (=> d!492350 (= res!731969 (= (list!7079 lt!596601) (Cons!17972 (apply!4642 (charsOf!1816 (h!23375 (t!149669 tokens!457))) 0) Nil!17972)))))

(declare-fun singleton!692 (C!9164) BalanceConc!11908)

(assert (=> d!492350 (= lt!596601 (singleton!692 (apply!4642 (charsOf!1816 (h!23375 (t!149669 tokens!457))) 0)))))

(assert (=> d!492350 (= (singletonSeq!1612 (apply!4642 (charsOf!1816 (h!23375 (t!149669 tokens!457))) 0)) lt!596601)))

(declare-fun b!1634960 () Bool)

(declare-fun isBalanced!1812 (Conc!5982) Bool)

(assert (=> b!1634960 (= e!1048518 (isBalanced!1812 (c!266027 lt!596601)))))

(assert (= (and d!492350 res!731969) b!1634960))

(declare-fun m!1971035 () Bool)

(assert (=> d!492350 m!1971035))

(assert (=> d!492350 m!1970761))

(declare-fun m!1971037 () Bool)

(assert (=> d!492350 m!1971037))

(declare-fun m!1971039 () Bool)

(assert (=> b!1634960 m!1971039))

(assert (=> b!1634830 d!492350))

(declare-fun d!492352 () Bool)

(declare-fun lt!596623 () Bool)

(assert (=> d!492352 (= lt!596623 (prefixMatch!430 lt!596463 (list!7079 (++!4810 lt!596474 lt!596473))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18046 0))(
  ( (Nil!17976) (Cons!17976 (h!23377 Regex!4495) (t!149713 List!18046)) )
))
(declare-datatypes ((Context!1756 0))(
  ( (Context!1757 (exprs!1378 List!18046)) )
))
(declare-fun prefixMatchZipperSequence!568 ((InoxSet Context!1756) BalanceConc!11908 Int) Bool)

(declare-fun focus!184 (Regex!4495) (InoxSet Context!1756))

(assert (=> d!492352 (= lt!596623 (prefixMatchZipperSequence!568 (focus!184 lt!596463) (++!4810 lt!596474 lt!596473) 0))))

(declare-fun lt!596629 () Unit!29354)

(declare-fun lt!596631 () Unit!29354)

(assert (=> d!492352 (= lt!596629 lt!596631)))

(declare-fun lt!596628 () List!18042)

(declare-fun lt!596630 () (InoxSet Context!1756))

(declare-fun prefixMatchZipper!163 ((InoxSet Context!1756) List!18042) Bool)

(assert (=> d!492352 (= (prefixMatch!430 lt!596463 lt!596628) (prefixMatchZipper!163 lt!596630 lt!596628))))

(declare-datatypes ((List!18047 0))(
  ( (Nil!17977) (Cons!17977 (h!23378 Context!1756) (t!149714 List!18047)) )
))
(declare-fun lt!596622 () List!18047)

(declare-fun prefixMatchZipperRegexEquiv!163 ((InoxSet Context!1756) List!18047 Regex!4495 List!18042) Unit!29354)

(assert (=> d!492352 (= lt!596631 (prefixMatchZipperRegexEquiv!163 lt!596630 lt!596622 lt!596463 lt!596628))))

(assert (=> d!492352 (= lt!596628 (list!7079 (++!4810 lt!596474 lt!596473)))))

(declare-fun toList!924 ((InoxSet Context!1756)) List!18047)

(assert (=> d!492352 (= lt!596622 (toList!924 (focus!184 lt!596463)))))

(assert (=> d!492352 (= lt!596630 (focus!184 lt!596463))))

(declare-fun lt!596624 () Unit!29354)

(declare-fun lt!596627 () Unit!29354)

(assert (=> d!492352 (= lt!596624 lt!596627)))

(declare-fun lt!596625 () (InoxSet Context!1756))

(declare-fun lt!596626 () Int)

(declare-fun dropList!630 (BalanceConc!11908 Int) List!18042)

(assert (=> d!492352 (= (prefixMatchZipper!163 lt!596625 (dropList!630 (++!4810 lt!596474 lt!596473) lt!596626)) (prefixMatchZipperSequence!568 lt!596625 (++!4810 lt!596474 lt!596473) lt!596626))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!163 ((InoxSet Context!1756) BalanceConc!11908 Int) Unit!29354)

(assert (=> d!492352 (= lt!596627 (lemmaprefixMatchZipperSequenceEquivalent!163 lt!596625 (++!4810 lt!596474 lt!596473) lt!596626))))

(assert (=> d!492352 (= lt!596626 0)))

(assert (=> d!492352 (= lt!596625 (focus!184 lt!596463))))

(declare-fun validRegex!1790 (Regex!4495) Bool)

(assert (=> d!492352 (validRegex!1790 lt!596463)))

(assert (=> d!492352 (= (prefixMatchZipperSequence!567 lt!596463 (++!4810 lt!596474 lt!596473)) lt!596623)))

(declare-fun bs!395336 () Bool)

(assert (= bs!395336 d!492352))

(declare-fun m!1971041 () Bool)

(assert (=> bs!395336 m!1971041))

(declare-fun m!1971043 () Bool)

(assert (=> bs!395336 m!1971043))

(declare-fun m!1971045 () Bool)

(assert (=> bs!395336 m!1971045))

(assert (=> bs!395336 m!1971043))

(declare-fun m!1971047 () Bool)

(assert (=> bs!395336 m!1971047))

(declare-fun m!1971049 () Bool)

(assert (=> bs!395336 m!1971049))

(declare-fun m!1971051 () Bool)

(assert (=> bs!395336 m!1971051))

(declare-fun m!1971053 () Bool)

(assert (=> bs!395336 m!1971053))

(declare-fun m!1971055 () Bool)

(assert (=> bs!395336 m!1971055))

(assert (=> bs!395336 m!1970757))

(declare-fun m!1971057 () Bool)

(assert (=> bs!395336 m!1971057))

(assert (=> bs!395336 m!1970757))

(declare-fun m!1971059 () Bool)

(assert (=> bs!395336 m!1971059))

(assert (=> bs!395336 m!1971043))

(assert (=> bs!395336 m!1970757))

(declare-fun m!1971061 () Bool)

(assert (=> bs!395336 m!1971061))

(assert (=> bs!395336 m!1971059))

(declare-fun m!1971063 () Bool)

(assert (=> bs!395336 m!1971063))

(assert (=> bs!395336 m!1970757))

(assert (=> bs!395336 m!1971053))

(assert (=> bs!395336 m!1970757))

(declare-fun m!1971065 () Bool)

(assert (=> bs!395336 m!1971065))

(assert (=> b!1634830 d!492352))

(declare-fun d!492354 () Bool)

(declare-fun lt!596634 () C!9164)

(declare-fun apply!4646 (List!18042 Int) C!9164)

(assert (=> d!492354 (= lt!596634 (apply!4646 (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457)))) 0))))

(declare-fun apply!4647 (Conc!5982 Int) C!9164)

(assert (=> d!492354 (= lt!596634 (apply!4647 (c!266027 (charsOf!1816 (h!23375 (t!149669 tokens!457)))) 0))))

(declare-fun e!1048521 () Bool)

(assert (=> d!492354 e!1048521))

(declare-fun res!731972 () Bool)

(assert (=> d!492354 (=> (not res!731972) (not e!1048521))))

(assert (=> d!492354 (= res!731972 (<= 0 0))))

(assert (=> d!492354 (= (apply!4642 (charsOf!1816 (h!23375 (t!149669 tokens!457))) 0) lt!596634)))

(declare-fun b!1634963 () Bool)

(declare-fun size!14344 (BalanceConc!11908) Int)

(assert (=> b!1634963 (= e!1048521 (< 0 (size!14344 (charsOf!1816 (h!23375 (t!149669 tokens!457))))))))

(assert (= (and d!492354 res!731972) b!1634963))

(assert (=> d!492354 m!1970765))

(declare-fun m!1971067 () Bool)

(assert (=> d!492354 m!1971067))

(assert (=> d!492354 m!1971067))

(declare-fun m!1971069 () Bool)

(assert (=> d!492354 m!1971069))

(declare-fun m!1971071 () Bool)

(assert (=> d!492354 m!1971071))

(assert (=> b!1634963 m!1970765))

(declare-fun m!1971073 () Bool)

(assert (=> b!1634963 m!1971073))

(assert (=> b!1634830 d!492354))

(declare-fun d!492356 () Bool)

(declare-fun lt!596637 () Unit!29354)

(declare-fun lemma!249 (List!18043 LexerInterface!2796 List!18043) Unit!29354)

(assert (=> d!492356 (= lt!596637 (lemma!249 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67397 () Int)

(declare-fun generalisedUnion!257 (List!18046) Regex!4495)

(declare-fun map!3712 (List!18043 Int) List!18046)

(assert (=> d!492356 (= (rulesRegex!557 thiss!17113 rules!1846) (generalisedUnion!257 (map!3712 rules!1846 lambda!67397)))))

(declare-fun bs!395337 () Bool)

(assert (= bs!395337 d!492356))

(declare-fun m!1971075 () Bool)

(assert (=> bs!395337 m!1971075))

(declare-fun m!1971077 () Bool)

(assert (=> bs!395337 m!1971077))

(assert (=> bs!395337 m!1971077))

(declare-fun m!1971079 () Bool)

(assert (=> bs!395337 m!1971079))

(assert (=> b!1634830 d!492356))

(declare-fun d!492358 () Bool)

(declare-fun lt!596640 () BalanceConc!11908)

(assert (=> d!492358 (= (list!7079 lt!596640) (originalCharacters!3981 (h!23375 (t!149669 tokens!457))))))

(declare-fun dynLambda!8011 (Int TokenValue!3257) BalanceConc!11908)

(assert (=> d!492358 (= lt!596640 (dynLambda!8011 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) (value!99932 (h!23375 (t!149669 tokens!457)))))))

(assert (=> d!492358 (= (charsOf!1816 (h!23375 (t!149669 tokens!457))) lt!596640)))

(declare-fun b_lambda!51413 () Bool)

(assert (=> (not b_lambda!51413) (not d!492358)))

(declare-fun t!149673 () Bool)

(declare-fun tb!93751 () Bool)

(assert (=> (and b!1634844 (= (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457)))))) t!149673) tb!93751))

(declare-fun b!1634968 () Bool)

(declare-fun e!1048524 () Bool)

(declare-fun tp!474241 () Bool)

(declare-fun inv!23335 (Conc!5982) Bool)

(assert (=> b!1634968 (= e!1048524 (and (inv!23335 (c!266027 (dynLambda!8011 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) (value!99932 (h!23375 (t!149669 tokens!457)))))) tp!474241))))

(declare-fun result!113098 () Bool)

(declare-fun inv!23336 (BalanceConc!11908) Bool)

(assert (=> tb!93751 (= result!113098 (and (inv!23336 (dynLambda!8011 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) (value!99932 (h!23375 (t!149669 tokens!457))))) e!1048524))))

(assert (= tb!93751 b!1634968))

(declare-fun m!1971081 () Bool)

(assert (=> b!1634968 m!1971081))

(declare-fun m!1971083 () Bool)

(assert (=> tb!93751 m!1971083))

(assert (=> d!492358 t!149673))

(declare-fun b_and!115909 () Bool)

(assert (= b_and!115903 (and (=> t!149673 result!113098) b_and!115909)))

(declare-fun t!149675 () Bool)

(declare-fun tb!93753 () Bool)

(assert (=> (and b!1634847 (= (toChars!4457 (transformation!3167 (h!23374 rules!1846))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457)))))) t!149675) tb!93753))

(declare-fun result!113102 () Bool)

(assert (= result!113102 result!113098))

(assert (=> d!492358 t!149675))

(declare-fun b_and!115911 () Bool)

(assert (= b_and!115907 (and (=> t!149675 result!113102) b_and!115911)))

(declare-fun m!1971085 () Bool)

(assert (=> d!492358 m!1971085))

(declare-fun m!1971087 () Bool)

(assert (=> d!492358 m!1971087))

(assert (=> b!1634830 d!492358))

(declare-fun b!1634977 () Bool)

(declare-fun res!731983 () Bool)

(declare-fun e!1048527 () Bool)

(assert (=> b!1634977 (=> (not res!731983) (not e!1048527))))

(declare-fun ++!4811 (Conc!5982 Conc!5982) Conc!5982)

(assert (=> b!1634977 (= res!731983 (isBalanced!1812 (++!4811 (c!266027 lt!596474) (c!266027 lt!596473))))))

(declare-fun b!1634978 () Bool)

(declare-fun res!731984 () Bool)

(assert (=> b!1634978 (=> (not res!731984) (not e!1048527))))

(declare-fun height!918 (Conc!5982) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1634978 (= res!731984 (<= (height!918 (++!4811 (c!266027 lt!596474) (c!266027 lt!596473))) (+ (max!0 (height!918 (c!266027 lt!596474)) (height!918 (c!266027 lt!596473))) 1)))))

(declare-fun d!492360 () Bool)

(assert (=> d!492360 e!1048527))

(declare-fun res!731981 () Bool)

(assert (=> d!492360 (=> (not res!731981) (not e!1048527))))

(declare-fun appendAssocInst!446 (Conc!5982 Conc!5982) Bool)

(assert (=> d!492360 (= res!731981 (appendAssocInst!446 (c!266027 lt!596474) (c!266027 lt!596473)))))

(declare-fun lt!596643 () BalanceConc!11908)

(assert (=> d!492360 (= lt!596643 (BalanceConc!11909 (++!4811 (c!266027 lt!596474) (c!266027 lt!596473))))))

(assert (=> d!492360 (= (++!4810 lt!596474 lt!596473) lt!596643)))

(declare-fun b!1634979 () Bool)

(declare-fun res!731982 () Bool)

(assert (=> b!1634979 (=> (not res!731982) (not e!1048527))))

(assert (=> b!1634979 (= res!731982 (>= (height!918 (++!4811 (c!266027 lt!596474) (c!266027 lt!596473))) (max!0 (height!918 (c!266027 lt!596474)) (height!918 (c!266027 lt!596473)))))))

(declare-fun b!1634980 () Bool)

(assert (=> b!1634980 (= e!1048527 (= (list!7079 lt!596643) (++!4809 (list!7079 lt!596474) (list!7079 lt!596473))))))

(assert (= (and d!492360 res!731981) b!1634977))

(assert (= (and b!1634977 res!731983) b!1634978))

(assert (= (and b!1634978 res!731984) b!1634979))

(assert (= (and b!1634979 res!731982) b!1634980))

(declare-fun m!1971089 () Bool)

(assert (=> b!1634977 m!1971089))

(assert (=> b!1634977 m!1971089))

(declare-fun m!1971091 () Bool)

(assert (=> b!1634977 m!1971091))

(declare-fun m!1971093 () Bool)

(assert (=> b!1634978 m!1971093))

(declare-fun m!1971095 () Bool)

(assert (=> b!1634978 m!1971095))

(assert (=> b!1634978 m!1971089))

(assert (=> b!1634978 m!1971089))

(declare-fun m!1971097 () Bool)

(assert (=> b!1634978 m!1971097))

(assert (=> b!1634978 m!1971095))

(assert (=> b!1634978 m!1971093))

(declare-fun m!1971099 () Bool)

(assert (=> b!1634978 m!1971099))

(declare-fun m!1971101 () Bool)

(assert (=> b!1634980 m!1971101))

(assert (=> b!1634980 m!1970739))

(assert (=> b!1634980 m!1970841))

(assert (=> b!1634980 m!1970739))

(assert (=> b!1634980 m!1970841))

(declare-fun m!1971103 () Bool)

(assert (=> b!1634980 m!1971103))

(declare-fun m!1971105 () Bool)

(assert (=> d!492360 m!1971105))

(assert (=> d!492360 m!1971089))

(assert (=> b!1634979 m!1971093))

(assert (=> b!1634979 m!1971095))

(assert (=> b!1634979 m!1971089))

(assert (=> b!1634979 m!1971089))

(assert (=> b!1634979 m!1971097))

(assert (=> b!1634979 m!1971095))

(assert (=> b!1634979 m!1971093))

(assert (=> b!1634979 m!1971099))

(assert (=> b!1634830 d!492360))

(declare-fun d!492362 () Bool)

(declare-fun res!732006 () Bool)

(declare-fun e!1048551 () Bool)

(assert (=> d!492362 (=> res!732006 e!1048551)))

(assert (=> d!492362 (= res!732006 (or (not ((_ is Cons!17974) tokens!457)) (not ((_ is Cons!17974) (t!149669 tokens!457)))))))

(assert (=> d!492362 (= (tokensListTwoByTwoPredicateSeparableList!489 thiss!17113 tokens!457 rules!1846) e!1048551)))

(declare-fun b!1635013 () Bool)

(declare-fun e!1048552 () Bool)

(assert (=> b!1635013 (= e!1048551 e!1048552)))

(declare-fun res!732005 () Bool)

(assert (=> b!1635013 (=> (not res!732005) (not e!1048552))))

(assert (=> b!1635013 (= res!732005 (separableTokensPredicate!738 thiss!17113 (h!23375 tokens!457) (h!23375 (t!149669 tokens!457)) rules!1846))))

(declare-fun lt!596668 () Unit!29354)

(declare-fun Unit!29359 () Unit!29354)

(assert (=> b!1635013 (= lt!596668 Unit!29359)))

(assert (=> b!1635013 (> (size!14344 (charsOf!1816 (h!23375 (t!149669 tokens!457)))) 0)))

(declare-fun lt!596666 () Unit!29354)

(declare-fun Unit!29360 () Unit!29354)

(assert (=> b!1635013 (= lt!596666 Unit!29360)))

(assert (=> b!1635013 (rulesProduceIndividualToken!1448 thiss!17113 rules!1846 (h!23375 (t!149669 tokens!457)))))

(declare-fun lt!596669 () Unit!29354)

(declare-fun Unit!29361 () Unit!29354)

(assert (=> b!1635013 (= lt!596669 Unit!29361)))

(assert (=> b!1635013 (rulesProduceIndividualToken!1448 thiss!17113 rules!1846 (h!23375 tokens!457))))

(declare-fun lt!596670 () Unit!29354)

(declare-fun lt!596667 () Unit!29354)

(assert (=> b!1635013 (= lt!596670 lt!596667)))

(assert (=> b!1635013 (rulesProduceIndividualToken!1448 thiss!17113 rules!1846 (h!23375 (t!149669 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!577 (LexerInterface!2796 List!18043 List!18044 Token!5900) Unit!29354)

(assert (=> b!1635013 (= lt!596667 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!577 thiss!17113 rules!1846 tokens!457 (h!23375 (t!149669 tokens!457))))))

(declare-fun lt!596671 () Unit!29354)

(declare-fun lt!596672 () Unit!29354)

(assert (=> b!1635013 (= lt!596671 lt!596672)))

(assert (=> b!1635013 (rulesProduceIndividualToken!1448 thiss!17113 rules!1846 (h!23375 tokens!457))))

(assert (=> b!1635013 (= lt!596672 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!577 thiss!17113 rules!1846 tokens!457 (h!23375 tokens!457)))))

(declare-fun b!1635014 () Bool)

(assert (=> b!1635014 (= e!1048552 (tokensListTwoByTwoPredicateSeparableList!489 thiss!17113 (Cons!17974 (h!23375 (t!149669 tokens!457)) (t!149669 (t!149669 tokens!457))) rules!1846))))

(assert (= (and d!492362 (not res!732006)) b!1635013))

(assert (= (and b!1635013 res!732005) b!1635014))

(declare-fun m!1971129 () Bool)

(assert (=> b!1635013 m!1971129))

(declare-fun m!1971131 () Bool)

(assert (=> b!1635013 m!1971131))

(declare-fun m!1971133 () Bool)

(assert (=> b!1635013 m!1971133))

(assert (=> b!1635013 m!1970765))

(assert (=> b!1635013 m!1971073))

(assert (=> b!1635013 m!1970813))

(assert (=> b!1635013 m!1970765))

(assert (=> b!1635013 m!1970795))

(declare-fun m!1971135 () Bool)

(assert (=> b!1635014 m!1971135))

(assert (=> b!1634851 d!492362))

(declare-fun d!492368 () Bool)

(assert (=> d!492368 (= (inv!23328 (tag!3447 (rule!5007 (h!23375 tokens!457)))) (= (mod (str.len (value!99931 (tag!3447 (rule!5007 (h!23375 tokens!457))))) 2) 0))))

(assert (=> b!1634829 d!492368))

(declare-fun d!492370 () Bool)

(declare-fun res!732009 () Bool)

(declare-fun e!1048555 () Bool)

(assert (=> d!492370 (=> (not res!732009) (not e!1048555))))

(declare-fun semiInverseModEq!1212 (Int Int) Bool)

(assert (=> d!492370 (= res!732009 (semiInverseModEq!1212 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (toValue!4598 (transformation!3167 (rule!5007 (h!23375 tokens!457))))))))

(assert (=> d!492370 (= (inv!23331 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) e!1048555)))

(declare-fun b!1635017 () Bool)

(declare-fun equivClasses!1153 (Int Int) Bool)

(assert (=> b!1635017 (= e!1048555 (equivClasses!1153 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (toValue!4598 (transformation!3167 (rule!5007 (h!23375 tokens!457))))))))

(assert (= (and d!492370 res!732009) b!1635017))

(declare-fun m!1971137 () Bool)

(assert (=> d!492370 m!1971137))

(declare-fun m!1971139 () Bool)

(assert (=> b!1635017 m!1971139))

(assert (=> b!1634829 d!492370))

(declare-fun d!492372 () Bool)

(declare-fun lt!596675 () BalanceConc!11908)

(assert (=> d!492372 (= (list!7079 lt!596675) (printList!911 thiss!17113 (list!7080 lt!596466)))))

(assert (=> d!492372 (= lt!596675 (printTailRec!849 thiss!17113 lt!596466 0 (BalanceConc!11909 Empty!5982)))))

(assert (=> d!492372 (= (print!1327 thiss!17113 lt!596466) lt!596675)))

(declare-fun bs!395338 () Bool)

(assert (= bs!395338 d!492372))

(declare-fun m!1971141 () Bool)

(assert (=> bs!395338 m!1971141))

(declare-fun m!1971143 () Bool)

(assert (=> bs!395338 m!1971143))

(assert (=> bs!395338 m!1971143))

(declare-fun m!1971145 () Bool)

(assert (=> bs!395338 m!1971145))

(assert (=> bs!395338 m!1970747))

(assert (=> b!1634850 d!492372))

(declare-fun b!1635036 () Bool)

(declare-fun e!1048563 () Option!3369)

(declare-fun lt!596687 () Option!3369)

(declare-fun lt!596688 () Option!3369)

(assert (=> b!1635036 (= e!1048563 (ite (and ((_ is None!3368) lt!596687) ((_ is None!3368) lt!596688)) None!3368 (ite ((_ is None!3368) lt!596688) lt!596687 (ite ((_ is None!3368) lt!596687) lt!596688 (ite (>= (size!14340 (_1!10198 (v!24445 lt!596687))) (size!14340 (_1!10198 (v!24445 lt!596688)))) lt!596687 lt!596688)))))))

(declare-fun call!105618 () Option!3369)

(assert (=> b!1635036 (= lt!596687 call!105618)))

(assert (=> b!1635036 (= lt!596688 (maxPrefix!1360 thiss!17113 (t!149668 rules!1846) lt!596468))))

(declare-fun d!492374 () Bool)

(declare-fun e!1048562 () Bool)

(assert (=> d!492374 e!1048562))

(declare-fun res!732026 () Bool)

(assert (=> d!492374 (=> res!732026 e!1048562)))

(declare-fun lt!596686 () Option!3369)

(declare-fun isEmpty!11008 (Option!3369) Bool)

(assert (=> d!492374 (= res!732026 (isEmpty!11008 lt!596686))))

(assert (=> d!492374 (= lt!596686 e!1048563)))

(declare-fun c!266063 () Bool)

(assert (=> d!492374 (= c!266063 (and ((_ is Cons!17973) rules!1846) ((_ is Nil!17973) (t!149668 rules!1846))))))

(declare-fun lt!596690 () Unit!29354)

(declare-fun lt!596689 () Unit!29354)

(assert (=> d!492374 (= lt!596690 lt!596689)))

(assert (=> d!492374 (isPrefix!1427 lt!596468 lt!596468)))

(assert (=> d!492374 (= lt!596689 (lemmaIsPrefixRefl!972 lt!596468 lt!596468))))

(assert (=> d!492374 (rulesValidInductive!988 thiss!17113 rules!1846)))

(assert (=> d!492374 (= (maxPrefix!1360 thiss!17113 rules!1846 lt!596468) lt!596686)))

(declare-fun b!1635037 () Bool)

(declare-fun e!1048564 () Bool)

(assert (=> b!1635037 (= e!1048562 e!1048564)))

(declare-fun res!732029 () Bool)

(assert (=> b!1635037 (=> (not res!732029) (not e!1048564))))

(assert (=> b!1635037 (= res!732029 (isDefined!2736 lt!596686))))

(declare-fun b!1635038 () Bool)

(declare-fun res!732024 () Bool)

(assert (=> b!1635038 (=> (not res!732024) (not e!1048564))))

(assert (=> b!1635038 (= res!732024 (matchR!1994 (regex!3167 (rule!5007 (_1!10198 (get!5204 lt!596686)))) (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!596686))))))))

(declare-fun b!1635039 () Bool)

(declare-fun res!732030 () Bool)

(assert (=> b!1635039 (=> (not res!732030) (not e!1048564))))

(declare-fun size!14345 (List!18042) Int)

(assert (=> b!1635039 (= res!732030 (< (size!14345 (_2!10198 (get!5204 lt!596686))) (size!14345 lt!596468)))))

(declare-fun b!1635040 () Bool)

(declare-fun res!732025 () Bool)

(assert (=> b!1635040 (=> (not res!732025) (not e!1048564))))

(assert (=> b!1635040 (= res!732025 (= (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!596686)))) (originalCharacters!3981 (_1!10198 (get!5204 lt!596686)))))))

(declare-fun b!1635041 () Bool)

(declare-fun res!732027 () Bool)

(assert (=> b!1635041 (=> (not res!732027) (not e!1048564))))

(assert (=> b!1635041 (= res!732027 (= (++!4809 (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!596686)))) (_2!10198 (get!5204 lt!596686))) lt!596468))))

(declare-fun b!1635042 () Bool)

(declare-fun res!732028 () Bool)

(assert (=> b!1635042 (=> (not res!732028) (not e!1048564))))

(declare-fun apply!4648 (TokenValueInjection!6174 BalanceConc!11908) TokenValue!3257)

(assert (=> b!1635042 (= res!732028 (= (value!99932 (_1!10198 (get!5204 lt!596686))) (apply!4648 (transformation!3167 (rule!5007 (_1!10198 (get!5204 lt!596686)))) (seqFromList!2084 (originalCharacters!3981 (_1!10198 (get!5204 lt!596686)))))))))

(declare-fun b!1635043 () Bool)

(declare-fun contains!3138 (List!18043 Rule!6134) Bool)

(assert (=> b!1635043 (= e!1048564 (contains!3138 rules!1846 (rule!5007 (_1!10198 (get!5204 lt!596686)))))))

(declare-fun bm!105613 () Bool)

(declare-fun maxPrefixOneRule!787 (LexerInterface!2796 Rule!6134 List!18042) Option!3369)

(assert (=> bm!105613 (= call!105618 (maxPrefixOneRule!787 thiss!17113 (h!23374 rules!1846) lt!596468))))

(declare-fun b!1635044 () Bool)

(assert (=> b!1635044 (= e!1048563 call!105618)))

(assert (= (and d!492374 c!266063) b!1635044))

(assert (= (and d!492374 (not c!266063)) b!1635036))

(assert (= (or b!1635044 b!1635036) bm!105613))

(assert (= (and d!492374 (not res!732026)) b!1635037))

(assert (= (and b!1635037 res!732029) b!1635040))

(assert (= (and b!1635040 res!732025) b!1635039))

(assert (= (and b!1635039 res!732030) b!1635041))

(assert (= (and b!1635041 res!732027) b!1635042))

(assert (= (and b!1635042 res!732028) b!1635038))

(assert (= (and b!1635038 res!732024) b!1635043))

(declare-fun m!1971147 () Bool)

(assert (=> b!1635043 m!1971147))

(declare-fun m!1971149 () Bool)

(assert (=> b!1635043 m!1971149))

(declare-fun m!1971151 () Bool)

(assert (=> bm!105613 m!1971151))

(assert (=> b!1635038 m!1971147))

(declare-fun m!1971153 () Bool)

(assert (=> b!1635038 m!1971153))

(assert (=> b!1635038 m!1971153))

(declare-fun m!1971155 () Bool)

(assert (=> b!1635038 m!1971155))

(assert (=> b!1635038 m!1971155))

(declare-fun m!1971157 () Bool)

(assert (=> b!1635038 m!1971157))

(assert (=> b!1635039 m!1971147))

(declare-fun m!1971159 () Bool)

(assert (=> b!1635039 m!1971159))

(declare-fun m!1971161 () Bool)

(assert (=> b!1635039 m!1971161))

(assert (=> b!1635040 m!1971147))

(assert (=> b!1635040 m!1971153))

(assert (=> b!1635040 m!1971153))

(assert (=> b!1635040 m!1971155))

(assert (=> b!1635042 m!1971147))

(declare-fun m!1971163 () Bool)

(assert (=> b!1635042 m!1971163))

(assert (=> b!1635042 m!1971163))

(declare-fun m!1971165 () Bool)

(assert (=> b!1635042 m!1971165))

(declare-fun m!1971167 () Bool)

(assert (=> b!1635036 m!1971167))

(assert (=> b!1635041 m!1971147))

(assert (=> b!1635041 m!1971153))

(assert (=> b!1635041 m!1971153))

(assert (=> b!1635041 m!1971155))

(assert (=> b!1635041 m!1971155))

(declare-fun m!1971169 () Bool)

(assert (=> b!1635041 m!1971169))

(declare-fun m!1971171 () Bool)

(assert (=> d!492374 m!1971171))

(assert (=> d!492374 m!1971027))

(assert (=> d!492374 m!1971029))

(assert (=> d!492374 m!1970823))

(declare-fun m!1971173 () Bool)

(assert (=> b!1635037 m!1971173))

(assert (=> b!1634850 d!492374))

(declare-fun d!492376 () Bool)

(declare-fun lt!596711 () BalanceConc!11908)

(declare-fun printListTailRec!367 (LexerInterface!2796 List!18044 List!18042) List!18042)

(declare-fun dropList!631 (BalanceConc!11910 Int) List!18044)

(assert (=> d!492376 (= (list!7079 lt!596711) (printListTailRec!367 thiss!17113 (dropList!631 lt!596466 0) (list!7079 (BalanceConc!11909 Empty!5982))))))

(declare-fun e!1048570 () BalanceConc!11908)

(assert (=> d!492376 (= lt!596711 e!1048570)))

(declare-fun c!266066 () Bool)

(declare-fun size!14346 (BalanceConc!11910) Int)

(assert (=> d!492376 (= c!266066 (>= 0 (size!14346 lt!596466)))))

(declare-fun e!1048569 () Bool)

(assert (=> d!492376 e!1048569))

(declare-fun res!732033 () Bool)

(assert (=> d!492376 (=> (not res!732033) (not e!1048569))))

(assert (=> d!492376 (= res!732033 (>= 0 0))))

(assert (=> d!492376 (= (printTailRec!849 thiss!17113 lt!596466 0 (BalanceConc!11909 Empty!5982)) lt!596711)))

(declare-fun b!1635051 () Bool)

(assert (=> b!1635051 (= e!1048569 (<= 0 (size!14346 lt!596466)))))

(declare-fun b!1635052 () Bool)

(assert (=> b!1635052 (= e!1048570 (BalanceConc!11909 Empty!5982))))

(declare-fun b!1635053 () Bool)

(declare-fun apply!4649 (BalanceConc!11910 Int) Token!5900)

(assert (=> b!1635053 (= e!1048570 (printTailRec!849 thiss!17113 lt!596466 (+ 0 1) (++!4810 (BalanceConc!11909 Empty!5982) (charsOf!1816 (apply!4649 lt!596466 0)))))))

(declare-fun lt!596706 () List!18044)

(assert (=> b!1635053 (= lt!596706 (list!7080 lt!596466))))

(declare-fun lt!596710 () Unit!29354)

(declare-fun lemmaDropApply!574 (List!18044 Int) Unit!29354)

(assert (=> b!1635053 (= lt!596710 (lemmaDropApply!574 lt!596706 0))))

(declare-fun head!3517 (List!18044) Token!5900)

(declare-fun drop!886 (List!18044 Int) List!18044)

(declare-fun apply!4650 (List!18044 Int) Token!5900)

(assert (=> b!1635053 (= (head!3517 (drop!886 lt!596706 0)) (apply!4650 lt!596706 0))))

(declare-fun lt!596707 () Unit!29354)

(assert (=> b!1635053 (= lt!596707 lt!596710)))

(declare-fun lt!596708 () List!18044)

(assert (=> b!1635053 (= lt!596708 (list!7080 lt!596466))))

(declare-fun lt!596709 () Unit!29354)

(declare-fun lemmaDropTail!554 (List!18044 Int) Unit!29354)

(assert (=> b!1635053 (= lt!596709 (lemmaDropTail!554 lt!596708 0))))

(declare-fun tail!2389 (List!18044) List!18044)

(assert (=> b!1635053 (= (tail!2389 (drop!886 lt!596708 0)) (drop!886 lt!596708 (+ 0 1)))))

(declare-fun lt!596705 () Unit!29354)

(assert (=> b!1635053 (= lt!596705 lt!596709)))

(assert (= (and d!492376 res!732033) b!1635051))

(assert (= (and d!492376 c!266066) b!1635052))

(assert (= (and d!492376 (not c!266066)) b!1635053))

(declare-fun m!1971175 () Bool)

(assert (=> d!492376 m!1971175))

(declare-fun m!1971177 () Bool)

(assert (=> d!492376 m!1971177))

(declare-fun m!1971179 () Bool)

(assert (=> d!492376 m!1971179))

(declare-fun m!1971181 () Bool)

(assert (=> d!492376 m!1971181))

(assert (=> d!492376 m!1971175))

(assert (=> d!492376 m!1971177))

(declare-fun m!1971183 () Bool)

(assert (=> d!492376 m!1971183))

(assert (=> b!1635051 m!1971181))

(declare-fun m!1971185 () Bool)

(assert (=> b!1635053 m!1971185))

(declare-fun m!1971187 () Bool)

(assert (=> b!1635053 m!1971187))

(declare-fun m!1971189 () Bool)

(assert (=> b!1635053 m!1971189))

(declare-fun m!1971191 () Bool)

(assert (=> b!1635053 m!1971191))

(declare-fun m!1971193 () Bool)

(assert (=> b!1635053 m!1971193))

(declare-fun m!1971195 () Bool)

(assert (=> b!1635053 m!1971195))

(assert (=> b!1635053 m!1971187))

(declare-fun m!1971197 () Bool)

(assert (=> b!1635053 m!1971197))

(declare-fun m!1971199 () Bool)

(assert (=> b!1635053 m!1971199))

(declare-fun m!1971201 () Bool)

(assert (=> b!1635053 m!1971201))

(assert (=> b!1635053 m!1971201))

(assert (=> b!1635053 m!1971193))

(declare-fun m!1971203 () Bool)

(assert (=> b!1635053 m!1971203))

(declare-fun m!1971205 () Bool)

(assert (=> b!1635053 m!1971205))

(assert (=> b!1635053 m!1971195))

(declare-fun m!1971207 () Bool)

(assert (=> b!1635053 m!1971207))

(assert (=> b!1635053 m!1971143))

(assert (=> b!1635053 m!1971203))

(assert (=> b!1634850 d!492376))

(declare-fun d!492378 () Bool)

(declare-fun list!7083 (Conc!5982) List!18042)

(assert (=> d!492378 (= (list!7079 lt!596477) (list!7083 (c!266027 lt!596477)))))

(declare-fun bs!395339 () Bool)

(assert (= bs!395339 d!492378))

(declare-fun m!1971209 () Bool)

(assert (=> bs!395339 m!1971209))

(assert (=> b!1634850 d!492378))

(declare-fun d!492380 () Bool)

(declare-fun c!266069 () Bool)

(assert (=> d!492380 (= c!266069 ((_ is Cons!17974) (Cons!17974 (h!23375 tokens!457) Nil!17974)))))

(declare-fun e!1048573 () List!18042)

(assert (=> d!492380 (= (printList!911 thiss!17113 (Cons!17974 (h!23375 tokens!457) Nil!17974)) e!1048573)))

(declare-fun b!1635058 () Bool)

(assert (=> b!1635058 (= e!1048573 (++!4809 (list!7079 (charsOf!1816 (h!23375 (Cons!17974 (h!23375 tokens!457) Nil!17974)))) (printList!911 thiss!17113 (t!149669 (Cons!17974 (h!23375 tokens!457) Nil!17974)))))))

(declare-fun b!1635059 () Bool)

(assert (=> b!1635059 (= e!1048573 Nil!17972)))

(assert (= (and d!492380 c!266069) b!1635058))

(assert (= (and d!492380 (not c!266069)) b!1635059))

(declare-fun m!1971211 () Bool)

(assert (=> b!1635058 m!1971211))

(assert (=> b!1635058 m!1971211))

(declare-fun m!1971213 () Bool)

(assert (=> b!1635058 m!1971213))

(declare-fun m!1971215 () Bool)

(assert (=> b!1635058 m!1971215))

(assert (=> b!1635058 m!1971213))

(assert (=> b!1635058 m!1971215))

(declare-fun m!1971217 () Bool)

(assert (=> b!1635058 m!1971217))

(assert (=> b!1634850 d!492380))

(declare-fun d!492382 () Bool)

(declare-fun e!1048576 () Bool)

(assert (=> d!492382 e!1048576))

(declare-fun res!732036 () Bool)

(assert (=> d!492382 (=> (not res!732036) (not e!1048576))))

(declare-fun lt!596714 () BalanceConc!11910)

(assert (=> d!492382 (= res!732036 (= (list!7080 lt!596714) (Cons!17974 (h!23375 tokens!457) Nil!17974)))))

(declare-fun singleton!693 (Token!5900) BalanceConc!11910)

(assert (=> d!492382 (= lt!596714 (singleton!693 (h!23375 tokens!457)))))

(assert (=> d!492382 (= (singletonSeq!1613 (h!23375 tokens!457)) lt!596714)))

(declare-fun b!1635062 () Bool)

(declare-fun isBalanced!1813 (Conc!5983) Bool)

(assert (=> b!1635062 (= e!1048576 (isBalanced!1813 (c!266029 lt!596714)))))

(assert (= (and d!492382 res!732036) b!1635062))

(declare-fun m!1971219 () Bool)

(assert (=> d!492382 m!1971219))

(declare-fun m!1971221 () Bool)

(assert (=> d!492382 m!1971221))

(declare-fun m!1971223 () Bool)

(assert (=> b!1635062 m!1971223))

(assert (=> b!1634850 d!492382))

(declare-fun d!492384 () Bool)

(declare-fun isEmpty!11009 (Option!3370) Bool)

(assert (=> d!492384 (= (isDefined!2737 (maxPrefixZipperSequence!691 thiss!17113 rules!1846 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457))))) (not (isEmpty!11009 (maxPrefixZipperSequence!691 thiss!17113 rules!1846 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))))

(declare-fun bs!395340 () Bool)

(assert (= bs!395340 d!492384))

(assert (=> bs!395340 m!1970775))

(declare-fun m!1971225 () Bool)

(assert (=> bs!395340 m!1971225))

(assert (=> b!1634828 d!492384))

(declare-fun b!1635063 () Bool)

(declare-fun e!1048577 () Option!3370)

(declare-fun lt!596721 () Option!3370)

(declare-fun lt!596719 () Option!3370)

(assert (=> b!1635063 (= e!1048577 (ite (and ((_ is None!3369) lt!596721) ((_ is None!3369) lt!596719)) None!3369 (ite ((_ is None!3369) lt!596719) lt!596721 (ite ((_ is None!3369) lt!596721) lt!596719 (ite (>= (size!14340 (_1!10199 (v!24446 lt!596721))) (size!14340 (_1!10199 (v!24446 lt!596719)))) lt!596721 lt!596719)))))))

(declare-fun call!105619 () Option!3370)

(assert (=> b!1635063 (= lt!596721 call!105619)))

(assert (=> b!1635063 (= lt!596719 (maxPrefixZipperSequence!691 thiss!17113 (t!149668 rules!1846) (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))

(declare-fun lt!596717 () Option!3370)

(declare-fun e!1048578 () Bool)

(declare-fun b!1635064 () Bool)

(assert (=> b!1635064 (= e!1048578 (= (list!7079 (_2!10199 (get!5205 lt!596717))) (_2!10198 (get!5204 (maxPrefixZipper!324 thiss!17113 rules!1846 (list!7079 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))))))

(declare-fun d!492386 () Bool)

(declare-fun e!1048580 () Bool)

(assert (=> d!492386 e!1048580))

(declare-fun res!732041 () Bool)

(assert (=> d!492386 (=> (not res!732041) (not e!1048580))))

(assert (=> d!492386 (= res!732041 (= (isDefined!2737 lt!596717) (isDefined!2736 (maxPrefixZipper!324 thiss!17113 rules!1846 (list!7079 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457))))))))))

(assert (=> d!492386 (= lt!596717 e!1048577)))

(declare-fun c!266070 () Bool)

(assert (=> d!492386 (= c!266070 (and ((_ is Cons!17973) rules!1846) ((_ is Nil!17973) (t!149668 rules!1846))))))

(declare-fun lt!596720 () Unit!29354)

(declare-fun lt!596718 () Unit!29354)

(assert (=> d!492386 (= lt!596720 lt!596718)))

(declare-fun lt!596715 () List!18042)

(declare-fun lt!596716 () List!18042)

(assert (=> d!492386 (isPrefix!1427 lt!596715 lt!596716)))

(assert (=> d!492386 (= lt!596718 (lemmaIsPrefixRefl!972 lt!596715 lt!596716))))

(assert (=> d!492386 (= lt!596716 (list!7079 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))

(assert (=> d!492386 (= lt!596715 (list!7079 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))

(assert (=> d!492386 (rulesValidInductive!988 thiss!17113 rules!1846)))

(assert (=> d!492386 (= (maxPrefixZipperSequence!691 thiss!17113 rules!1846 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))) lt!596717)))

(declare-fun b!1635065 () Bool)

(declare-fun e!1048579 () Bool)

(declare-fun e!1048582 () Bool)

(assert (=> b!1635065 (= e!1048579 e!1048582)))

(declare-fun res!732040 () Bool)

(assert (=> b!1635065 (=> (not res!732040) (not e!1048582))))

(assert (=> b!1635065 (= res!732040 (= (_1!10199 (get!5205 lt!596717)) (_1!10198 (get!5204 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))))))

(declare-fun b!1635066 () Bool)

(assert (=> b!1635066 (= e!1048577 call!105619)))

(declare-fun b!1635067 () Bool)

(assert (=> b!1635067 (= e!1048580 e!1048579)))

(declare-fun res!732038 () Bool)

(assert (=> b!1635067 (=> res!732038 e!1048579)))

(assert (=> b!1635067 (= res!732038 (not (isDefined!2737 lt!596717)))))

(declare-fun bm!105614 () Bool)

(assert (=> bm!105614 (= call!105619 (maxPrefixOneRuleZipperSequence!327 thiss!17113 (h!23374 rules!1846) (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))

(declare-fun b!1635068 () Bool)

(declare-fun res!732037 () Bool)

(assert (=> b!1635068 (=> (not res!732037) (not e!1048580))))

(declare-fun e!1048581 () Bool)

(assert (=> b!1635068 (= res!732037 e!1048581)))

(declare-fun res!732042 () Bool)

(assert (=> b!1635068 (=> res!732042 e!1048581)))

(assert (=> b!1635068 (= res!732042 (not (isDefined!2737 lt!596717)))))

(declare-fun b!1635069 () Bool)

(assert (=> b!1635069 (= e!1048582 (= (list!7079 (_2!10199 (get!5205 lt!596717))) (_2!10198 (get!5204 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))))))

(declare-fun b!1635070 () Bool)

(assert (=> b!1635070 (= e!1048581 e!1048578)))

(declare-fun res!732039 () Bool)

(assert (=> b!1635070 (=> (not res!732039) (not e!1048578))))

(assert (=> b!1635070 (= res!732039 (= (_1!10199 (get!5205 lt!596717)) (_1!10198 (get!5204 (maxPrefixZipper!324 thiss!17113 rules!1846 (list!7079 (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457)))))))))))

(assert (= (and d!492386 c!266070) b!1635066))

(assert (= (and d!492386 (not c!266070)) b!1635063))

(assert (= (or b!1635066 b!1635063) bm!105614))

(assert (= (and d!492386 res!732041) b!1635068))

(assert (= (and b!1635068 (not res!732042)) b!1635070))

(assert (= (and b!1635070 res!732039) b!1635064))

(assert (= (and b!1635068 res!732037) b!1635067))

(assert (= (and b!1635067 (not res!732038)) b!1635065))

(assert (= (and b!1635065 res!732040) b!1635069))

(declare-fun m!1971227 () Bool)

(assert (=> b!1635065 m!1971227))

(assert (=> b!1635065 m!1970773))

(declare-fun m!1971229 () Bool)

(assert (=> b!1635065 m!1971229))

(assert (=> b!1635065 m!1971229))

(declare-fun m!1971231 () Bool)

(assert (=> b!1635065 m!1971231))

(assert (=> b!1635065 m!1971231))

(declare-fun m!1971233 () Bool)

(assert (=> b!1635065 m!1971233))

(assert (=> bm!105614 m!1970773))

(declare-fun m!1971235 () Bool)

(assert (=> bm!105614 m!1971235))

(declare-fun m!1971237 () Bool)

(assert (=> b!1635068 m!1971237))

(assert (=> b!1635063 m!1970773))

(declare-fun m!1971239 () Bool)

(assert (=> b!1635063 m!1971239))

(declare-fun m!1971241 () Bool)

(assert (=> b!1635069 m!1971241))

(assert (=> b!1635069 m!1971229))

(assert (=> b!1635069 m!1971231))

(assert (=> b!1635069 m!1970773))

(assert (=> b!1635069 m!1971229))

(assert (=> b!1635069 m!1971227))

(assert (=> b!1635069 m!1971231))

(assert (=> b!1635069 m!1971233))

(assert (=> b!1635064 m!1971241))

(declare-fun m!1971243 () Bool)

(assert (=> b!1635064 m!1971243))

(declare-fun m!1971245 () Bool)

(assert (=> b!1635064 m!1971245))

(assert (=> b!1635064 m!1970773))

(assert (=> b!1635064 m!1971229))

(assert (=> b!1635064 m!1971227))

(assert (=> b!1635064 m!1971229))

(assert (=> b!1635064 m!1971243))

(assert (=> d!492386 m!1970823))

(declare-fun m!1971247 () Bool)

(assert (=> d!492386 m!1971247))

(assert (=> d!492386 m!1971237))

(assert (=> d!492386 m!1970773))

(assert (=> d!492386 m!1971229))

(declare-fun m!1971249 () Bool)

(assert (=> d!492386 m!1971249))

(assert (=> d!492386 m!1971229))

(assert (=> d!492386 m!1971243))

(assert (=> d!492386 m!1971243))

(declare-fun m!1971251 () Bool)

(assert (=> d!492386 m!1971251))

(assert (=> b!1635070 m!1971227))

(assert (=> b!1635070 m!1970773))

(assert (=> b!1635070 m!1971229))

(assert (=> b!1635070 m!1971229))

(assert (=> b!1635070 m!1971243))

(assert (=> b!1635070 m!1971243))

(assert (=> b!1635070 m!1971245))

(assert (=> b!1635067 m!1971237))

(assert (=> b!1634828 d!492386))

(declare-fun d!492388 () Bool)

(declare-fun fromListB!917 (List!18042) BalanceConc!11908)

(assert (=> d!492388 (= (seqFromList!2084 (originalCharacters!3981 (h!23375 tokens!457))) (fromListB!917 (originalCharacters!3981 (h!23375 tokens!457))))))

(declare-fun bs!395341 () Bool)

(assert (= bs!395341 d!492388))

(declare-fun m!1971253 () Bool)

(assert (=> bs!395341 m!1971253))

(assert (=> b!1634828 d!492388))

(declare-fun d!492390 () Bool)

(declare-fun lt!596724 () C!9164)

(assert (=> d!492390 (= lt!596724 (head!3515 (list!7079 lt!596486)))))

(declare-fun head!3518 (Conc!5982) C!9164)

(assert (=> d!492390 (= lt!596724 (head!3518 (c!266027 lt!596486)))))

(declare-fun isEmpty!11012 (BalanceConc!11908) Bool)

(assert (=> d!492390 (not (isEmpty!11012 lt!596486))))

(assert (=> d!492390 (= (head!3514 lt!596486) lt!596724)))

(declare-fun bs!395342 () Bool)

(assert (= bs!395342 d!492390))

(assert (=> bs!395342 m!1970733))

(assert (=> bs!395342 m!1970733))

(declare-fun m!1971255 () Bool)

(assert (=> bs!395342 m!1971255))

(declare-fun m!1971257 () Bool)

(assert (=> bs!395342 m!1971257))

(declare-fun m!1971259 () Bool)

(assert (=> bs!395342 m!1971259))

(assert (=> b!1634828 d!492390))

(declare-fun d!492392 () Bool)

(declare-fun list!7084 (Conc!5983) List!18044)

(assert (=> d!492392 (= (list!7080 (_1!10197 lt!596487)) (list!7084 (c!266029 (_1!10197 lt!596487))))))

(declare-fun bs!395343 () Bool)

(assert (= bs!395343 d!492392))

(declare-fun m!1971261 () Bool)

(assert (=> bs!395343 m!1971261))

(assert (=> b!1634849 d!492392))

(declare-fun d!492394 () Bool)

(declare-fun e!1048634 () Bool)

(assert (=> d!492394 e!1048634))

(declare-fun res!732087 () Bool)

(assert (=> d!492394 (=> (not res!732087) (not e!1048634))))

(assert (=> d!492394 (= res!732087 (= (list!7080 (_1!10197 (lex!1280 thiss!17113 rules!1846 (print!1327 thiss!17113 (seqFromList!2083 (t!149669 tokens!457)))))) (t!149669 tokens!457)))))

(declare-fun lt!596830 () Unit!29354)

(declare-fun e!1048633 () Unit!29354)

(assert (=> d!492394 (= lt!596830 e!1048633)))

(declare-fun c!266091 () Bool)

(assert (=> d!492394 (= c!266091 (or ((_ is Nil!17974) (t!149669 tokens!457)) ((_ is Nil!17974) (t!149669 (t!149669 tokens!457)))))))

(assert (=> d!492394 (not (isEmpty!11003 rules!1846))))

(assert (=> d!492394 (= (theoremInvertabilityWhenTokenListSeparable!241 thiss!17113 rules!1846 (t!149669 tokens!457)) lt!596830)))

(declare-fun b!1635162 () Bool)

(declare-fun Unit!29364 () Unit!29354)

(assert (=> b!1635162 (= e!1048633 Unit!29364)))

(declare-fun b!1635163 () Bool)

(declare-fun Unit!29365 () Unit!29354)

(assert (=> b!1635163 (= e!1048633 Unit!29365)))

(declare-fun lt!596808 () BalanceConc!11908)

(assert (=> b!1635163 (= lt!596808 (print!1327 thiss!17113 (seqFromList!2083 (t!149669 tokens!457))))))

(declare-fun lt!596820 () BalanceConc!11908)

(assert (=> b!1635163 (= lt!596820 (print!1327 thiss!17113 (seqFromList!2083 (t!149669 (t!149669 tokens!457)))))))

(declare-fun lt!596825 () tuple2!17590)

(assert (=> b!1635163 (= lt!596825 (lex!1280 thiss!17113 rules!1846 lt!596820))))

(declare-fun lt!596817 () List!18042)

(assert (=> b!1635163 (= lt!596817 (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457)))))))

(declare-fun lt!596831 () List!18042)

(assert (=> b!1635163 (= lt!596831 (list!7079 lt!596820))))

(declare-fun lt!596814 () Unit!29354)

(assert (=> b!1635163 (= lt!596814 (lemmaConcatTwoListThenFirstIsPrefix!952 lt!596817 lt!596831))))

(assert (=> b!1635163 (isPrefix!1427 lt!596817 (++!4809 lt!596817 lt!596831))))

(declare-fun lt!596829 () Unit!29354)

(assert (=> b!1635163 (= lt!596829 lt!596814)))

(declare-fun lt!596819 () Unit!29354)

(assert (=> b!1635163 (= lt!596819 (theoremInvertabilityWhenTokenListSeparable!241 thiss!17113 rules!1846 (t!149669 (t!149669 tokens!457))))))

(declare-fun lt!596806 () Unit!29354)

(assert (=> b!1635163 (= lt!596806 (seqFromListBHdTlConstructive!244 (h!23375 (t!149669 (t!149669 tokens!457))) (t!149669 (t!149669 (t!149669 tokens!457))) (_1!10197 lt!596825)))))

(assert (=> b!1635163 (= (list!7080 (_1!10197 lt!596825)) (list!7080 (prepend!705 (seqFromList!2083 (t!149669 (t!149669 (t!149669 tokens!457)))) (h!23375 (t!149669 (t!149669 tokens!457))))))))

(declare-fun lt!596828 () Unit!29354)

(assert (=> b!1635163 (= lt!596828 lt!596806)))

(declare-fun lt!596811 () Option!3369)

(assert (=> b!1635163 (= lt!596811 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 lt!596808)))))

(assert (=> b!1635163 (= (print!1327 thiss!17113 (singletonSeq!1613 (h!23375 (t!149669 tokens!457)))) (printTailRec!849 thiss!17113 (singletonSeq!1613 (h!23375 (t!149669 tokens!457))) 0 (BalanceConc!11909 Empty!5982)))))

(declare-fun lt!596827 () Unit!29354)

(declare-fun Unit!29366 () Unit!29354)

(assert (=> b!1635163 (= lt!596827 Unit!29366)))

(declare-fun lt!596822 () Unit!29354)

(assert (=> b!1635163 (= lt!596822 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!370 thiss!17113 rules!1846 (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457)))) (list!7079 lt!596820)))))

(assert (=> b!1635163 (= (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457)))) (originalCharacters!3981 (h!23375 (t!149669 tokens!457))))))

(declare-fun lt!596816 () Unit!29354)

(declare-fun Unit!29367 () Unit!29354)

(assert (=> b!1635163 (= lt!596816 Unit!29367)))

(assert (=> b!1635163 (= (list!7079 (singletonSeq!1612 (apply!4642 (charsOf!1816 (h!23375 (t!149669 (t!149669 tokens!457)))) 0))) (Cons!17972 (head!3515 (originalCharacters!3981 (h!23375 (t!149669 (t!149669 tokens!457))))) Nil!17972))))

(declare-fun lt!596823 () Unit!29354)

(declare-fun Unit!29368 () Unit!29354)

(assert (=> b!1635163 (= lt!596823 Unit!29368)))

(assert (=> b!1635163 (= (list!7079 (singletonSeq!1612 (apply!4642 (charsOf!1816 (h!23375 (t!149669 (t!149669 tokens!457)))) 0))) (Cons!17972 (head!3515 (list!7079 lt!596820)) Nil!17972))))

(declare-fun lt!596818 () Unit!29354)

(declare-fun Unit!29369 () Unit!29354)

(assert (=> b!1635163 (= lt!596818 Unit!29369)))

(assert (=> b!1635163 (= (list!7079 (singletonSeq!1612 (apply!4642 (charsOf!1816 (h!23375 (t!149669 (t!149669 tokens!457)))) 0))) (Cons!17972 (head!3514 lt!596820) Nil!17972))))

(declare-fun lt!596810 () Unit!29354)

(declare-fun Unit!29370 () Unit!29354)

(assert (=> b!1635163 (= lt!596810 Unit!29370)))

(assert (=> b!1635163 (isDefined!2736 (maxPrefix!1360 thiss!17113 rules!1846 (originalCharacters!3981 (h!23375 (t!149669 tokens!457)))))))

(declare-fun lt!596824 () Unit!29354)

(declare-fun Unit!29371 () Unit!29354)

(assert (=> b!1635163 (= lt!596824 Unit!29371)))

(assert (=> b!1635163 (isDefined!2736 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457))))))))

(declare-fun lt!596809 () Unit!29354)

(declare-fun Unit!29372 () Unit!29354)

(assert (=> b!1635163 (= lt!596809 Unit!29372)))

(declare-fun lt!596812 () Unit!29354)

(declare-fun Unit!29373 () Unit!29354)

(assert (=> b!1635163 (= lt!596812 Unit!29373)))

(assert (=> b!1635163 (= (_1!10198 (get!5204 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457))))))) (h!23375 (t!149669 tokens!457)))))

(declare-fun lt!596815 () Unit!29354)

(declare-fun Unit!29374 () Unit!29354)

(assert (=> b!1635163 (= lt!596815 Unit!29374)))

(assert (=> b!1635163 (isEmpty!11005 (_2!10198 (get!5204 (maxPrefix!1360 thiss!17113 rules!1846 (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457))))))))))

(declare-fun lt!596813 () Unit!29354)

(declare-fun Unit!29375 () Unit!29354)

(assert (=> b!1635163 (= lt!596813 Unit!29375)))

(assert (=> b!1635163 (matchR!1994 (regex!3167 (rule!5007 (h!23375 (t!149669 tokens!457)))) (list!7079 (charsOf!1816 (h!23375 (t!149669 tokens!457)))))))

(declare-fun lt!596821 () Unit!29354)

(declare-fun Unit!29376 () Unit!29354)

(assert (=> b!1635163 (= lt!596821 Unit!29376)))

(assert (=> b!1635163 (= (rule!5007 (h!23375 (t!149669 tokens!457))) (rule!5007 (h!23375 (t!149669 tokens!457))))))

(declare-fun lt!596826 () Unit!29354)

(declare-fun Unit!29377 () Unit!29354)

(assert (=> b!1635163 (= lt!596826 Unit!29377)))

(declare-fun lt!596807 () Unit!29354)

(assert (=> b!1635163 (= lt!596807 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!132 thiss!17113 rules!1846 (h!23375 (t!149669 tokens!457)) (rule!5007 (h!23375 (t!149669 tokens!457))) (list!7079 lt!596820)))))

(declare-fun b!1635164 () Bool)

(assert (=> b!1635164 (= e!1048634 (isEmpty!11012 (_2!10197 (lex!1280 thiss!17113 rules!1846 (print!1327 thiss!17113 (seqFromList!2083 (t!149669 tokens!457)))))))))

(assert (= (and d!492394 c!266091) b!1635162))

(assert (= (and d!492394 (not c!266091)) b!1635163))

(assert (= (and d!492394 res!732087) b!1635164))

(declare-fun m!1971377 () Bool)

(assert (=> d!492394 m!1971377))

(assert (=> d!492394 m!1970727))

(declare-fun m!1971379 () Bool)

(assert (=> d!492394 m!1971379))

(assert (=> d!492394 m!1970727))

(assert (=> d!492394 m!1971379))

(declare-fun m!1971381 () Bool)

(assert (=> d!492394 m!1971381))

(assert (=> d!492394 m!1970835))

(declare-fun m!1971383 () Bool)

(assert (=> b!1635163 m!1971383))

(declare-fun m!1971385 () Bool)

(assert (=> b!1635163 m!1971385))

(declare-fun m!1971387 () Bool)

(assert (=> b!1635163 m!1971387))

(declare-fun m!1971389 () Bool)

(assert (=> b!1635163 m!1971389))

(declare-fun m!1971391 () Bool)

(assert (=> b!1635163 m!1971391))

(declare-fun m!1971393 () Bool)

(assert (=> b!1635163 m!1971393))

(assert (=> b!1635163 m!1970727))

(declare-fun m!1971395 () Bool)

(assert (=> b!1635163 m!1971395))

(assert (=> b!1635163 m!1971393))

(declare-fun m!1971397 () Bool)

(assert (=> b!1635163 m!1971397))

(declare-fun m!1971399 () Bool)

(assert (=> b!1635163 m!1971399))

(declare-fun m!1971401 () Bool)

(assert (=> b!1635163 m!1971401))

(declare-fun m!1971403 () Bool)

(assert (=> b!1635163 m!1971403))

(assert (=> b!1635163 m!1970765))

(assert (=> b!1635163 m!1971383))

(declare-fun m!1971405 () Bool)

(assert (=> b!1635163 m!1971405))

(declare-fun m!1971407 () Bool)

(assert (=> b!1635163 m!1971407))

(assert (=> b!1635163 m!1971389))

(assert (=> b!1635163 m!1971067))

(declare-fun m!1971409 () Bool)

(assert (=> b!1635163 m!1971409))

(declare-fun m!1971411 () Bool)

(assert (=> b!1635163 m!1971411))

(assert (=> b!1635163 m!1971409))

(declare-fun m!1971413 () Bool)

(assert (=> b!1635163 m!1971413))

(assert (=> b!1635163 m!1971409))

(assert (=> b!1635163 m!1970727))

(assert (=> b!1635163 m!1971379))

(declare-fun m!1971415 () Bool)

(assert (=> b!1635163 m!1971415))

(declare-fun m!1971417 () Bool)

(assert (=> b!1635163 m!1971417))

(assert (=> b!1635163 m!1971067))

(declare-fun m!1971419 () Bool)

(assert (=> b!1635163 m!1971419))

(assert (=> b!1635163 m!1970829))

(assert (=> b!1635163 m!1970829))

(declare-fun m!1971421 () Bool)

(assert (=> b!1635163 m!1971421))

(declare-fun m!1971423 () Bool)

(assert (=> b!1635163 m!1971423))

(declare-fun m!1971425 () Bool)

(assert (=> b!1635163 m!1971425))

(assert (=> b!1635163 m!1970765))

(assert (=> b!1635163 m!1971067))

(assert (=> b!1635163 m!1971409))

(declare-fun m!1971427 () Bool)

(assert (=> b!1635163 m!1971427))

(declare-fun m!1971429 () Bool)

(assert (=> b!1635163 m!1971429))

(declare-fun m!1971431 () Bool)

(assert (=> b!1635163 m!1971431))

(assert (=> b!1635163 m!1971423))

(declare-fun m!1971433 () Bool)

(assert (=> b!1635163 m!1971433))

(declare-fun m!1971435 () Bool)

(assert (=> b!1635163 m!1971435))

(assert (=> b!1635163 m!1971417))

(declare-fun m!1971437 () Bool)

(assert (=> b!1635163 m!1971437))

(assert (=> b!1635163 m!1971399))

(assert (=> b!1635163 m!1971067))

(assert (=> b!1635163 m!1971383))

(assert (=> b!1635163 m!1971415))

(declare-fun m!1971439 () Bool)

(assert (=> b!1635163 m!1971439))

(declare-fun m!1971441 () Bool)

(assert (=> b!1635163 m!1971441))

(declare-fun m!1971443 () Bool)

(assert (=> b!1635163 m!1971443))

(assert (=> b!1635163 m!1971443))

(declare-fun m!1971445 () Bool)

(assert (=> b!1635163 m!1971445))

(assert (=> b!1635163 m!1971435))

(assert (=> b!1635163 m!1971441))

(assert (=> b!1635163 m!1971399))

(declare-fun m!1971447 () Bool)

(assert (=> b!1635163 m!1971447))

(assert (=> b!1635164 m!1970727))

(assert (=> b!1635164 m!1970727))

(assert (=> b!1635164 m!1971379))

(assert (=> b!1635164 m!1971379))

(assert (=> b!1635164 m!1971381))

(declare-fun m!1971449 () Bool)

(assert (=> b!1635164 m!1971449))

(assert (=> b!1634849 d!492394))

(declare-fun b!1635175 () Bool)

(declare-fun e!1048641 () Bool)

(declare-fun tail!2390 (List!18042) List!18042)

(assert (=> b!1635175 (= e!1048641 (isPrefix!1427 (tail!2390 lt!596490) (tail!2390 lt!596470)))))

(declare-fun b!1635173 () Bool)

(declare-fun e!1048643 () Bool)

(assert (=> b!1635173 (= e!1048643 e!1048641)))

(declare-fun res!732099 () Bool)

(assert (=> b!1635173 (=> (not res!732099) (not e!1048641))))

(assert (=> b!1635173 (= res!732099 (not ((_ is Nil!17972) lt!596470)))))

(declare-fun b!1635174 () Bool)

(declare-fun res!732098 () Bool)

(assert (=> b!1635174 (=> (not res!732098) (not e!1048641))))

(assert (=> b!1635174 (= res!732098 (= (head!3515 lt!596490) (head!3515 lt!596470)))))

(declare-fun d!492440 () Bool)

(declare-fun e!1048642 () Bool)

(assert (=> d!492440 e!1048642))

(declare-fun res!732096 () Bool)

(assert (=> d!492440 (=> res!732096 e!1048642)))

(declare-fun lt!596834 () Bool)

(assert (=> d!492440 (= res!732096 (not lt!596834))))

(assert (=> d!492440 (= lt!596834 e!1048643)))

(declare-fun res!732097 () Bool)

(assert (=> d!492440 (=> res!732097 e!1048643)))

(assert (=> d!492440 (= res!732097 ((_ is Nil!17972) lt!596490))))

(assert (=> d!492440 (= (isPrefix!1427 lt!596490 lt!596470) lt!596834)))

(declare-fun b!1635176 () Bool)

(assert (=> b!1635176 (= e!1048642 (>= (size!14345 lt!596470) (size!14345 lt!596490)))))

(assert (= (and d!492440 (not res!732097)) b!1635173))

(assert (= (and b!1635173 res!732099) b!1635174))

(assert (= (and b!1635174 res!732098) b!1635175))

(assert (= (and d!492440 (not res!732096)) b!1635176))

(declare-fun m!1971451 () Bool)

(assert (=> b!1635175 m!1971451))

(declare-fun m!1971453 () Bool)

(assert (=> b!1635175 m!1971453))

(assert (=> b!1635175 m!1971451))

(assert (=> b!1635175 m!1971453))

(declare-fun m!1971455 () Bool)

(assert (=> b!1635175 m!1971455))

(declare-fun m!1971457 () Bool)

(assert (=> b!1635174 m!1971457))

(declare-fun m!1971459 () Bool)

(assert (=> b!1635174 m!1971459))

(declare-fun m!1971461 () Bool)

(assert (=> b!1635176 m!1971461))

(declare-fun m!1971463 () Bool)

(assert (=> b!1635176 m!1971463))

(assert (=> b!1634849 d!492440))

(declare-fun d!492442 () Bool)

(assert (=> d!492442 (isPrefix!1427 lt!596490 (++!4809 lt!596490 lt!596485))))

(declare-fun lt!596837 () Unit!29354)

(declare-fun choose!9826 (List!18042 List!18042) Unit!29354)

(assert (=> d!492442 (= lt!596837 (choose!9826 lt!596490 lt!596485))))

(assert (=> d!492442 (= (lemmaConcatTwoListThenFirstIsPrefix!952 lt!596490 lt!596485) lt!596837)))

(declare-fun bs!395353 () Bool)

(assert (= bs!395353 d!492442))

(assert (=> bs!395353 m!1970737))

(assert (=> bs!395353 m!1970737))

(declare-fun m!1971465 () Bool)

(assert (=> bs!395353 m!1971465))

(declare-fun m!1971467 () Bool)

(assert (=> bs!395353 m!1971467))

(assert (=> b!1634849 d!492442))

(declare-fun d!492444 () Bool)

(declare-fun res!732104 () Bool)

(declare-fun e!1048646 () Bool)

(assert (=> d!492444 (=> (not res!732104) (not e!1048646))))

(assert (=> d!492444 (= res!732104 (not (isEmpty!11005 (originalCharacters!3981 (h!23375 tokens!457)))))))

(assert (=> d!492444 (= (inv!23332 (h!23375 tokens!457)) e!1048646)))

(declare-fun b!1635181 () Bool)

(declare-fun res!732105 () Bool)

(assert (=> b!1635181 (=> (not res!732105) (not e!1048646))))

(assert (=> b!1635181 (= res!732105 (= (originalCharacters!3981 (h!23375 tokens!457)) (list!7079 (dynLambda!8011 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (value!99932 (h!23375 tokens!457))))))))

(declare-fun b!1635182 () Bool)

(assert (=> b!1635182 (= e!1048646 (= (size!14340 (h!23375 tokens!457)) (size!14345 (originalCharacters!3981 (h!23375 tokens!457)))))))

(assert (= (and d!492444 res!732104) b!1635181))

(assert (= (and b!1635181 res!732105) b!1635182))

(declare-fun b_lambda!51417 () Bool)

(assert (=> (not b_lambda!51417) (not b!1635181)))

(declare-fun t!149683 () Bool)

(declare-fun tb!93759 () Bool)

(assert (=> (and b!1634844 (= (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457))))) t!149683) tb!93759))

(declare-fun b!1635183 () Bool)

(declare-fun e!1048647 () Bool)

(declare-fun tp!474245 () Bool)

(assert (=> b!1635183 (= e!1048647 (and (inv!23335 (c!266027 (dynLambda!8011 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (value!99932 (h!23375 tokens!457))))) tp!474245))))

(declare-fun result!113110 () Bool)

(assert (=> tb!93759 (= result!113110 (and (inv!23336 (dynLambda!8011 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (value!99932 (h!23375 tokens!457)))) e!1048647))))

(assert (= tb!93759 b!1635183))

(declare-fun m!1971469 () Bool)

(assert (=> b!1635183 m!1971469))

(declare-fun m!1971471 () Bool)

(assert (=> tb!93759 m!1971471))

(assert (=> b!1635181 t!149683))

(declare-fun b_and!115917 () Bool)

(assert (= b_and!115909 (and (=> t!149683 result!113110) b_and!115917)))

(declare-fun t!149685 () Bool)

(declare-fun tb!93761 () Bool)

(assert (=> (and b!1634847 (= (toChars!4457 (transformation!3167 (h!23374 rules!1846))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457))))) t!149685) tb!93761))

(declare-fun result!113112 () Bool)

(assert (= result!113112 result!113110))

(assert (=> b!1635181 t!149685))

(declare-fun b_and!115919 () Bool)

(assert (= b_and!115911 (and (=> t!149685 result!113112) b_and!115919)))

(declare-fun m!1971473 () Bool)

(assert (=> d!492444 m!1971473))

(declare-fun m!1971475 () Bool)

(assert (=> b!1635181 m!1971475))

(assert (=> b!1635181 m!1971475))

(declare-fun m!1971477 () Bool)

(assert (=> b!1635181 m!1971477))

(declare-fun m!1971479 () Bool)

(assert (=> b!1635182 m!1971479))

(assert (=> b!1634838 d!492444))

(declare-fun d!492446 () Bool)

(assert (=> d!492446 (= (inv!23328 (tag!3447 (h!23374 rules!1846))) (= (mod (str.len (value!99931 (tag!3447 (h!23374 rules!1846)))) 2) 0))))

(assert (=> b!1634837 d!492446))

(declare-fun d!492448 () Bool)

(declare-fun res!732106 () Bool)

(declare-fun e!1048648 () Bool)

(assert (=> d!492448 (=> (not res!732106) (not e!1048648))))

(assert (=> d!492448 (= res!732106 (semiInverseModEq!1212 (toChars!4457 (transformation!3167 (h!23374 rules!1846))) (toValue!4598 (transformation!3167 (h!23374 rules!1846)))))))

(assert (=> d!492448 (= (inv!23331 (transformation!3167 (h!23374 rules!1846))) e!1048648)))

(declare-fun b!1635184 () Bool)

(assert (=> b!1635184 (= e!1048648 (equivClasses!1153 (toChars!4457 (transformation!3167 (h!23374 rules!1846))) (toValue!4598 (transformation!3167 (h!23374 rules!1846)))))))

(assert (= (and d!492448 res!732106) b!1635184))

(declare-fun m!1971481 () Bool)

(assert (=> d!492448 m!1971481))

(declare-fun m!1971483 () Bool)

(assert (=> b!1635184 m!1971483))

(assert (=> b!1634837 d!492448))

(declare-fun d!492450 () Bool)

(assert (=> d!492450 true))

(declare-fun lt!596937 () Bool)

(declare-fun lambda!67403 () Int)

(declare-fun forall!4104 (List!18043 Int) Bool)

(assert (=> d!492450 (= lt!596937 (forall!4104 rules!1846 lambda!67403))))

(declare-fun e!1048698 () Bool)

(assert (=> d!492450 (= lt!596937 e!1048698)))

(declare-fun res!732166 () Bool)

(assert (=> d!492450 (=> res!732166 e!1048698)))

(assert (=> d!492450 (= res!732166 (not ((_ is Cons!17973) rules!1846)))))

(assert (=> d!492450 (= (rulesValidInductive!988 thiss!17113 rules!1846) lt!596937)))

(declare-fun b!1635268 () Bool)

(declare-fun e!1048699 () Bool)

(assert (=> b!1635268 (= e!1048698 e!1048699)))

(declare-fun res!732167 () Bool)

(assert (=> b!1635268 (=> (not res!732167) (not e!1048699))))

(declare-fun ruleValid!747 (LexerInterface!2796 Rule!6134) Bool)

(assert (=> b!1635268 (= res!732167 (ruleValid!747 thiss!17113 (h!23374 rules!1846)))))

(declare-fun b!1635269 () Bool)

(assert (=> b!1635269 (= e!1048699 (rulesValidInductive!988 thiss!17113 (t!149668 rules!1846)))))

(assert (= (and d!492450 (not res!732166)) b!1635268))

(assert (= (and b!1635268 res!732167) b!1635269))

(declare-fun m!1971707 () Bool)

(assert (=> d!492450 m!1971707))

(declare-fun m!1971709 () Bool)

(assert (=> b!1635268 m!1971709))

(declare-fun m!1971711 () Bool)

(assert (=> b!1635269 m!1971711))

(assert (=> b!1634836 d!492450))

(declare-fun d!492492 () Bool)

(declare-fun e!1048702 () Bool)

(assert (=> d!492492 e!1048702))

(declare-fun res!732170 () Bool)

(assert (=> d!492492 (=> (not res!732170) (not e!1048702))))

(declare-fun prepend!707 (Conc!5983 Token!5900) Conc!5983)

(assert (=> d!492492 (= res!732170 (isBalanced!1813 (prepend!707 (c!266029 (seqFromList!2083 (t!149669 (t!149669 tokens!457)))) (h!23375 (t!149669 tokens!457)))))))

(declare-fun lt!596940 () BalanceConc!11910)

(assert (=> d!492492 (= lt!596940 (BalanceConc!11911 (prepend!707 (c!266029 (seqFromList!2083 (t!149669 (t!149669 tokens!457)))) (h!23375 (t!149669 tokens!457)))))))

(assert (=> d!492492 (= (prepend!705 (seqFromList!2083 (t!149669 (t!149669 tokens!457))) (h!23375 (t!149669 tokens!457))) lt!596940)))

(declare-fun b!1635274 () Bool)

(assert (=> b!1635274 (= e!1048702 (= (list!7080 lt!596940) (Cons!17974 (h!23375 (t!149669 tokens!457)) (list!7080 (seqFromList!2083 (t!149669 (t!149669 tokens!457)))))))))

(assert (= (and d!492492 res!732170) b!1635274))

(declare-fun m!1971713 () Bool)

(assert (=> d!492492 m!1971713))

(assert (=> d!492492 m!1971713))

(declare-fun m!1971715 () Bool)

(assert (=> d!492492 m!1971715))

(declare-fun m!1971717 () Bool)

(assert (=> b!1635274 m!1971717))

(assert (=> b!1635274 m!1970829))

(declare-fun m!1971719 () Bool)

(assert (=> b!1635274 m!1971719))

(assert (=> b!1634835 d!492492))

(declare-fun d!492494 () Bool)

(assert (=> d!492494 (= (list!7080 (_1!10197 lt!596487)) (list!7080 (prepend!705 (seqFromList!2083 (t!149669 (t!149669 tokens!457))) (h!23375 (t!149669 tokens!457)))))))

(declare-fun lt!596943 () Unit!29354)

(declare-fun choose!9827 (Token!5900 List!18044 BalanceConc!11910) Unit!29354)

(assert (=> d!492494 (= lt!596943 (choose!9827 (h!23375 (t!149669 tokens!457)) (t!149669 (t!149669 tokens!457)) (_1!10197 lt!596487)))))

(declare-fun $colon$colon!343 (List!18044 Token!5900) List!18044)

(assert (=> d!492494 (= (list!7080 (_1!10197 lt!596487)) (list!7080 (seqFromList!2083 ($colon$colon!343 (t!149669 (t!149669 tokens!457)) (h!23375 (t!149669 tokens!457))))))))

(assert (=> d!492494 (= (seqFromListBHdTlConstructive!244 (h!23375 (t!149669 tokens!457)) (t!149669 (t!149669 tokens!457)) (_1!10197 lt!596487)) lt!596943)))

(declare-fun bs!395363 () Bool)

(assert (= bs!395363 d!492494))

(assert (=> bs!395363 m!1970845))

(declare-fun m!1971721 () Bool)

(assert (=> bs!395363 m!1971721))

(declare-fun m!1971723 () Bool)

(assert (=> bs!395363 m!1971723))

(assert (=> bs!395363 m!1970829))

(assert (=> bs!395363 m!1971723))

(declare-fun m!1971725 () Bool)

(assert (=> bs!395363 m!1971725))

(assert (=> bs!395363 m!1971721))

(declare-fun m!1971727 () Bool)

(assert (=> bs!395363 m!1971727))

(assert (=> bs!395363 m!1970831))

(assert (=> bs!395363 m!1970833))

(assert (=> bs!395363 m!1970829))

(assert (=> bs!395363 m!1970831))

(assert (=> b!1634835 d!492494))

(declare-fun d!492496 () Bool)

(assert (=> d!492496 (= (list!7080 (prepend!705 (seqFromList!2083 (t!149669 (t!149669 tokens!457))) (h!23375 (t!149669 tokens!457)))) (list!7084 (c!266029 (prepend!705 (seqFromList!2083 (t!149669 (t!149669 tokens!457))) (h!23375 (t!149669 tokens!457))))))))

(declare-fun bs!395364 () Bool)

(assert (= bs!395364 d!492496))

(declare-fun m!1971729 () Bool)

(assert (=> bs!395364 m!1971729))

(assert (=> b!1634835 d!492496))

(declare-fun d!492498 () Bool)

(assert (=> d!492498 (= (list!7080 lt!596472) (list!7084 (c!266029 lt!596472)))))

(declare-fun bs!395365 () Bool)

(assert (= bs!395365 d!492498))

(declare-fun m!1971731 () Bool)

(assert (=> bs!395365 m!1971731))

(assert (=> b!1634835 d!492498))

(declare-fun d!492500 () Bool)

(declare-fun fromListB!919 (List!18044) BalanceConc!11910)

(assert (=> d!492500 (= (seqFromList!2083 (t!149669 (t!149669 tokens!457))) (fromListB!919 (t!149669 (t!149669 tokens!457))))))

(declare-fun bs!395366 () Bool)

(assert (= bs!395366 d!492500))

(declare-fun m!1971733 () Bool)

(assert (=> bs!395366 m!1971733))

(assert (=> b!1634835 d!492500))

(declare-fun d!492502 () Bool)

(declare-fun c!266107 () Bool)

(assert (=> d!492502 (= c!266107 (isEmpty!11005 (++!4809 lt!596490 lt!596481)))))

(declare-fun e!1048705 () Bool)

(assert (=> d!492502 (= (prefixMatch!430 lt!596463 (++!4809 lt!596490 lt!596481)) e!1048705)))

(declare-fun b!1635279 () Bool)

(declare-fun lostCause!450 (Regex!4495) Bool)

(assert (=> b!1635279 (= e!1048705 (not (lostCause!450 lt!596463)))))

(declare-fun b!1635280 () Bool)

(declare-fun derivativeStep!1094 (Regex!4495 C!9164) Regex!4495)

(assert (=> b!1635280 (= e!1048705 (prefixMatch!430 (derivativeStep!1094 lt!596463 (head!3515 (++!4809 lt!596490 lt!596481))) (tail!2390 (++!4809 lt!596490 lt!596481))))))

(assert (= (and d!492502 c!266107) b!1635279))

(assert (= (and d!492502 (not c!266107)) b!1635280))

(assert (=> d!492502 m!1970769))

(declare-fun m!1971735 () Bool)

(assert (=> d!492502 m!1971735))

(declare-fun m!1971737 () Bool)

(assert (=> b!1635279 m!1971737))

(assert (=> b!1635280 m!1970769))

(declare-fun m!1971739 () Bool)

(assert (=> b!1635280 m!1971739))

(assert (=> b!1635280 m!1971739))

(declare-fun m!1971741 () Bool)

(assert (=> b!1635280 m!1971741))

(assert (=> b!1635280 m!1970769))

(declare-fun m!1971743 () Bool)

(assert (=> b!1635280 m!1971743))

(assert (=> b!1635280 m!1971741))

(assert (=> b!1635280 m!1971743))

(declare-fun m!1971745 () Bool)

(assert (=> b!1635280 m!1971745))

(assert (=> b!1634834 d!492502))

(declare-fun b!1635291 () Bool)

(declare-fun res!732176 () Bool)

(declare-fun e!1048711 () Bool)

(assert (=> b!1635291 (=> (not res!732176) (not e!1048711))))

(declare-fun lt!596946 () List!18042)

(assert (=> b!1635291 (= res!732176 (= (size!14345 lt!596946) (+ (size!14345 lt!596490) (size!14345 lt!596481))))))

(declare-fun b!1635292 () Bool)

(assert (=> b!1635292 (= e!1048711 (or (not (= lt!596481 Nil!17972)) (= lt!596946 lt!596490)))))

(declare-fun b!1635289 () Bool)

(declare-fun e!1048710 () List!18042)

(assert (=> b!1635289 (= e!1048710 lt!596481)))

(declare-fun d!492504 () Bool)

(assert (=> d!492504 e!1048711))

(declare-fun res!732175 () Bool)

(assert (=> d!492504 (=> (not res!732175) (not e!1048711))))

(declare-fun content!2491 (List!18042) (InoxSet C!9164))

(assert (=> d!492504 (= res!732175 (= (content!2491 lt!596946) ((_ map or) (content!2491 lt!596490) (content!2491 lt!596481))))))

(assert (=> d!492504 (= lt!596946 e!1048710)))

(declare-fun c!266110 () Bool)

(assert (=> d!492504 (= c!266110 ((_ is Nil!17972) lt!596490))))

(assert (=> d!492504 (= (++!4809 lt!596490 lt!596481) lt!596946)))

(declare-fun b!1635290 () Bool)

(assert (=> b!1635290 (= e!1048710 (Cons!17972 (h!23373 lt!596490) (++!4809 (t!149667 lt!596490) lt!596481)))))

(assert (= (and d!492504 c!266110) b!1635289))

(assert (= (and d!492504 (not c!266110)) b!1635290))

(assert (= (and d!492504 res!732175) b!1635291))

(assert (= (and b!1635291 res!732176) b!1635292))

(declare-fun m!1971747 () Bool)

(assert (=> b!1635291 m!1971747))

(assert (=> b!1635291 m!1971463))

(declare-fun m!1971749 () Bool)

(assert (=> b!1635291 m!1971749))

(declare-fun m!1971751 () Bool)

(assert (=> d!492504 m!1971751))

(declare-fun m!1971753 () Bool)

(assert (=> d!492504 m!1971753))

(declare-fun m!1971755 () Bool)

(assert (=> d!492504 m!1971755))

(declare-fun m!1971757 () Bool)

(assert (=> b!1635290 m!1971757))

(assert (=> b!1634834 d!492504))

(declare-fun d!492506 () Bool)

(assert (=> d!492506 (= (head!3515 (originalCharacters!3981 (h!23375 (t!149669 tokens!457)))) (h!23373 (originalCharacters!3981 (h!23375 (t!149669 tokens!457)))))))

(assert (=> b!1634833 d!492506))

(declare-fun d!492508 () Bool)

(declare-fun lt!596947 () BalanceConc!11908)

(assert (=> d!492508 (= (list!7079 lt!596947) (printList!911 thiss!17113 (list!7080 (seqFromList!2083 tokens!457))))))

(assert (=> d!492508 (= lt!596947 (printTailRec!849 thiss!17113 (seqFromList!2083 tokens!457) 0 (BalanceConc!11909 Empty!5982)))))

(assert (=> d!492508 (= (print!1327 thiss!17113 (seqFromList!2083 tokens!457)) lt!596947)))

(declare-fun bs!395367 () Bool)

(assert (= bs!395367 d!492508))

(declare-fun m!1971759 () Bool)

(assert (=> bs!395367 m!1971759))

(assert (=> bs!395367 m!1970729))

(declare-fun m!1971761 () Bool)

(assert (=> bs!395367 m!1971761))

(assert (=> bs!395367 m!1971761))

(declare-fun m!1971763 () Bool)

(assert (=> bs!395367 m!1971763))

(assert (=> bs!395367 m!1970729))

(declare-fun m!1971765 () Bool)

(assert (=> bs!395367 m!1971765))

(assert (=> b!1634822 d!492508))

(declare-fun d!492510 () Bool)

(assert (=> d!492510 (= (list!7079 lt!596484) (list!7083 (c!266027 lt!596484)))))

(declare-fun bs!395368 () Bool)

(assert (= bs!395368 d!492510))

(declare-fun m!1971767 () Bool)

(assert (=> bs!395368 m!1971767))

(assert (=> b!1634822 d!492510))

(declare-fun d!492512 () Bool)

(declare-fun lt!596948 () BalanceConc!11908)

(assert (=> d!492512 (= (list!7079 lt!596948) (printList!911 thiss!17113 (list!7080 lt!596472)))))

(assert (=> d!492512 (= lt!596948 (printTailRec!849 thiss!17113 lt!596472 0 (BalanceConc!11909 Empty!5982)))))

(assert (=> d!492512 (= (print!1327 thiss!17113 lt!596472) lt!596948)))

(declare-fun bs!395369 () Bool)

(assert (= bs!395369 d!492512))

(declare-fun m!1971769 () Bool)

(assert (=> bs!395369 m!1971769))

(assert (=> bs!395369 m!1970827))

(assert (=> bs!395369 m!1970827))

(declare-fun m!1971771 () Bool)

(assert (=> bs!395369 m!1971771))

(declare-fun m!1971773 () Bool)

(assert (=> bs!395369 m!1971773))

(assert (=> b!1634822 d!492512))

(declare-fun d!492514 () Bool)

(assert (=> d!492514 (= (seqFromList!2083 tokens!457) (fromListB!919 tokens!457))))

(declare-fun bs!395370 () Bool)

(assert (= bs!395370 d!492514))

(declare-fun m!1971775 () Bool)

(assert (=> bs!395370 m!1971775))

(assert (=> b!1634822 d!492514))

(declare-fun d!492516 () Bool)

(declare-fun lt!596949 () BalanceConc!11908)

(assert (=> d!492516 (= (list!7079 lt!596949) (originalCharacters!3981 (h!23375 tokens!457)))))

(assert (=> d!492516 (= lt!596949 (dynLambda!8011 (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (value!99932 (h!23375 tokens!457))))))

(assert (=> d!492516 (= (charsOf!1816 (h!23375 tokens!457)) lt!596949)))

(declare-fun b_lambda!51421 () Bool)

(assert (=> (not b_lambda!51421) (not d!492516)))

(assert (=> d!492516 t!149683))

(declare-fun b_and!115925 () Bool)

(assert (= b_and!115917 (and (=> t!149683 result!113110) b_and!115925)))

(assert (=> d!492516 t!149685))

(declare-fun b_and!115927 () Bool)

(assert (= b_and!115919 (and (=> t!149685 result!113112) b_and!115927)))

(declare-fun m!1971777 () Bool)

(assert (=> d!492516 m!1971777))

(assert (=> d!492516 m!1971475))

(assert (=> b!1634822 d!492516))

(declare-fun b!1635295 () Bool)

(declare-fun res!732178 () Bool)

(declare-fun e!1048713 () Bool)

(assert (=> b!1635295 (=> (not res!732178) (not e!1048713))))

(declare-fun lt!596950 () List!18042)

(assert (=> b!1635295 (= res!732178 (= (size!14345 lt!596950) (+ (size!14345 lt!596490) (size!14345 lt!596485))))))

(declare-fun b!1635296 () Bool)

(assert (=> b!1635296 (= e!1048713 (or (not (= lt!596485 Nil!17972)) (= lt!596950 lt!596490)))))

(declare-fun b!1635293 () Bool)

(declare-fun e!1048712 () List!18042)

(assert (=> b!1635293 (= e!1048712 lt!596485)))

(declare-fun d!492518 () Bool)

(assert (=> d!492518 e!1048713))

(declare-fun res!732177 () Bool)

(assert (=> d!492518 (=> (not res!732177) (not e!1048713))))

(assert (=> d!492518 (= res!732177 (= (content!2491 lt!596950) ((_ map or) (content!2491 lt!596490) (content!2491 lt!596485))))))

(assert (=> d!492518 (= lt!596950 e!1048712)))

(declare-fun c!266111 () Bool)

(assert (=> d!492518 (= c!266111 ((_ is Nil!17972) lt!596490))))

(assert (=> d!492518 (= (++!4809 lt!596490 lt!596485) lt!596950)))

(declare-fun b!1635294 () Bool)

(assert (=> b!1635294 (= e!1048712 (Cons!17972 (h!23373 lt!596490) (++!4809 (t!149667 lt!596490) lt!596485)))))

(assert (= (and d!492518 c!266111) b!1635293))

(assert (= (and d!492518 (not c!266111)) b!1635294))

(assert (= (and d!492518 res!732177) b!1635295))

(assert (= (and b!1635295 res!732178) b!1635296))

(declare-fun m!1971779 () Bool)

(assert (=> b!1635295 m!1971779))

(assert (=> b!1635295 m!1971463))

(declare-fun m!1971781 () Bool)

(assert (=> b!1635295 m!1971781))

(declare-fun m!1971783 () Bool)

(assert (=> d!492518 m!1971783))

(assert (=> d!492518 m!1971753))

(declare-fun m!1971785 () Bool)

(assert (=> d!492518 m!1971785))

(declare-fun m!1971787 () Bool)

(assert (=> b!1635294 m!1971787))

(assert (=> b!1634822 d!492518))

(declare-fun d!492520 () Bool)

(assert (=> d!492520 (= (list!7079 lt!596486) (list!7083 (c!266027 lt!596486)))))

(declare-fun bs!395371 () Bool)

(assert (= bs!395371 d!492520))

(declare-fun m!1971789 () Bool)

(assert (=> bs!395371 m!1971789))

(assert (=> b!1634822 d!492520))

(declare-fun d!492522 () Bool)

(assert (=> d!492522 (= (list!7079 lt!596474) (list!7083 (c!266027 lt!596474)))))

(declare-fun bs!395372 () Bool)

(assert (= bs!395372 d!492522))

(declare-fun m!1971791 () Bool)

(assert (=> bs!395372 m!1971791))

(assert (=> b!1634822 d!492522))

(declare-fun d!492524 () Bool)

(assert (=> d!492524 (= (seqFromList!2083 (t!149669 tokens!457)) (fromListB!919 (t!149669 tokens!457)))))

(declare-fun bs!395373 () Bool)

(assert (= bs!395373 d!492524))

(declare-fun m!1971793 () Bool)

(assert (=> bs!395373 m!1971793))

(assert (=> b!1634822 d!492524))

(declare-fun b!1635307 () Bool)

(declare-fun e!1048721 () Bool)

(declare-fun lt!596953 () tuple2!17590)

(assert (=> b!1635307 (= e!1048721 (not (isEmpty!11004 (_1!10197 lt!596953))))))

(declare-fun b!1635308 () Bool)

(declare-fun res!732186 () Bool)

(declare-fun e!1048722 () Bool)

(assert (=> b!1635308 (=> (not res!732186) (not e!1048722))))

(declare-datatypes ((tuple2!17598 0))(
  ( (tuple2!17599 (_1!10201 List!18044) (_2!10201 List!18042)) )
))
(declare-fun lexList!841 (LexerInterface!2796 List!18043 List!18042) tuple2!17598)

(assert (=> b!1635308 (= res!732186 (= (list!7080 (_1!10197 lt!596953)) (_1!10201 (lexList!841 thiss!17113 rules!1846 (list!7079 lt!596486)))))))

(declare-fun d!492526 () Bool)

(assert (=> d!492526 e!1048722))

(declare-fun res!732187 () Bool)

(assert (=> d!492526 (=> (not res!732187) (not e!1048722))))

(declare-fun e!1048720 () Bool)

(assert (=> d!492526 (= res!732187 e!1048720)))

(declare-fun c!266114 () Bool)

(assert (=> d!492526 (= c!266114 (> (size!14346 (_1!10197 lt!596953)) 0))))

(declare-fun lexTailRecV2!564 (LexerInterface!2796 List!18043 BalanceConc!11908 BalanceConc!11908 BalanceConc!11908 BalanceConc!11910) tuple2!17590)

(assert (=> d!492526 (= lt!596953 (lexTailRecV2!564 thiss!17113 rules!1846 lt!596486 (BalanceConc!11909 Empty!5982) lt!596486 (BalanceConc!11911 Empty!5983)))))

(assert (=> d!492526 (= (lex!1280 thiss!17113 rules!1846 lt!596486) lt!596953)))

(declare-fun b!1635309 () Bool)

(assert (=> b!1635309 (= e!1048720 (= (_2!10197 lt!596953) lt!596486))))

(declare-fun b!1635310 () Bool)

(assert (=> b!1635310 (= e!1048720 e!1048721)))

(declare-fun res!732185 () Bool)

(assert (=> b!1635310 (= res!732185 (< (size!14344 (_2!10197 lt!596953)) (size!14344 lt!596486)))))

(assert (=> b!1635310 (=> (not res!732185) (not e!1048721))))

(declare-fun b!1635311 () Bool)

(assert (=> b!1635311 (= e!1048722 (= (list!7079 (_2!10197 lt!596953)) (_2!10201 (lexList!841 thiss!17113 rules!1846 (list!7079 lt!596486)))))))

(assert (= (and d!492526 c!266114) b!1635310))

(assert (= (and d!492526 (not c!266114)) b!1635309))

(assert (= (and b!1635310 res!732185) b!1635307))

(assert (= (and d!492526 res!732187) b!1635308))

(assert (= (and b!1635308 res!732186) b!1635311))

(declare-fun m!1971795 () Bool)

(assert (=> b!1635308 m!1971795))

(assert (=> b!1635308 m!1970733))

(assert (=> b!1635308 m!1970733))

(declare-fun m!1971797 () Bool)

(assert (=> b!1635308 m!1971797))

(declare-fun m!1971799 () Bool)

(assert (=> b!1635311 m!1971799))

(assert (=> b!1635311 m!1970733))

(assert (=> b!1635311 m!1970733))

(assert (=> b!1635311 m!1971797))

(declare-fun m!1971801 () Bool)

(assert (=> b!1635307 m!1971801))

(declare-fun m!1971803 () Bool)

(assert (=> d!492526 m!1971803))

(declare-fun m!1971805 () Bool)

(assert (=> d!492526 m!1971805))

(declare-fun m!1971807 () Bool)

(assert (=> b!1635310 m!1971807))

(declare-fun m!1971809 () Bool)

(assert (=> b!1635310 m!1971809))

(assert (=> b!1634822 d!492526))

(declare-fun b!1635322 () Bool)

(declare-fun e!1048731 () Bool)

(declare-fun e!1048730 () Bool)

(assert (=> b!1635322 (= e!1048731 e!1048730)))

(declare-fun c!266119 () Bool)

(assert (=> b!1635322 (= c!266119 ((_ is IntegerValue!9772) (value!99932 (h!23375 tokens!457))))))

(declare-fun b!1635323 () Bool)

(declare-fun inv!17 (TokenValue!3257) Bool)

(assert (=> b!1635323 (= e!1048730 (inv!17 (value!99932 (h!23375 tokens!457))))))

(declare-fun b!1635324 () Bool)

(declare-fun inv!16 (TokenValue!3257) Bool)

(assert (=> b!1635324 (= e!1048731 (inv!16 (value!99932 (h!23375 tokens!457))))))

(declare-fun b!1635325 () Bool)

(declare-fun res!732190 () Bool)

(declare-fun e!1048729 () Bool)

(assert (=> b!1635325 (=> res!732190 e!1048729)))

(assert (=> b!1635325 (= res!732190 (not ((_ is IntegerValue!9773) (value!99932 (h!23375 tokens!457)))))))

(assert (=> b!1635325 (= e!1048730 e!1048729)))

(declare-fun b!1635326 () Bool)

(declare-fun inv!15 (TokenValue!3257) Bool)

(assert (=> b!1635326 (= e!1048729 (inv!15 (value!99932 (h!23375 tokens!457))))))

(declare-fun d!492528 () Bool)

(declare-fun c!266120 () Bool)

(assert (=> d!492528 (= c!266120 ((_ is IntegerValue!9771) (value!99932 (h!23375 tokens!457))))))

(assert (=> d!492528 (= (inv!21 (value!99932 (h!23375 tokens!457))) e!1048731)))

(assert (= (and d!492528 c!266120) b!1635324))

(assert (= (and d!492528 (not c!266120)) b!1635322))

(assert (= (and b!1635322 c!266119) b!1635323))

(assert (= (and b!1635322 (not c!266119)) b!1635325))

(assert (= (and b!1635325 (not res!732190)) b!1635326))

(declare-fun m!1971811 () Bool)

(assert (=> b!1635323 m!1971811))

(declare-fun m!1971813 () Bool)

(assert (=> b!1635324 m!1971813))

(declare-fun m!1971815 () Bool)

(assert (=> b!1635326 m!1971815))

(assert (=> b!1634843 d!492528))

(declare-fun d!492530 () Bool)

(assert (=> d!492530 (= (isEmpty!11003 rules!1846) ((_ is Nil!17973) rules!1846))))

(assert (=> b!1634821 d!492530))

(declare-fun b!1635355 () Bool)

(declare-fun res!732210 () Bool)

(declare-fun e!1048750 () Bool)

(assert (=> b!1635355 (=> res!732210 e!1048750)))

(assert (=> b!1635355 (= res!732210 (not (isEmpty!11005 (tail!2390 lt!596490))))))

(declare-fun b!1635356 () Bool)

(assert (=> b!1635356 (= e!1048750 (not (= (head!3515 lt!596490) (c!266028 (regex!3167 (rule!5007 (h!23375 tokens!457)))))))))

(declare-fun b!1635357 () Bool)

(declare-fun e!1048751 () Bool)

(declare-fun nullable!1329 (Regex!4495) Bool)

(assert (=> b!1635357 (= e!1048751 (nullable!1329 (regex!3167 (rule!5007 (h!23375 tokens!457)))))))

(declare-fun b!1635358 () Bool)

(declare-fun e!1048749 () Bool)

(declare-fun lt!596956 () Bool)

(declare-fun call!105634 () Bool)

(assert (=> b!1635358 (= e!1048749 (= lt!596956 call!105634))))

(declare-fun b!1635359 () Bool)

(declare-fun e!1048752 () Bool)

(assert (=> b!1635359 (= e!1048752 (= (head!3515 lt!596490) (c!266028 (regex!3167 (rule!5007 (h!23375 tokens!457))))))))

(declare-fun b!1635360 () Bool)

(declare-fun e!1048747 () Bool)

(assert (=> b!1635360 (= e!1048747 (not lt!596956))))

(declare-fun d!492532 () Bool)

(assert (=> d!492532 e!1048749))

(declare-fun c!266128 () Bool)

(assert (=> d!492532 (= c!266128 ((_ is EmptyExpr!4495) (regex!3167 (rule!5007 (h!23375 tokens!457)))))))

(assert (=> d!492532 (= lt!596956 e!1048751)))

(declare-fun c!266127 () Bool)

(assert (=> d!492532 (= c!266127 (isEmpty!11005 lt!596490))))

(assert (=> d!492532 (validRegex!1790 (regex!3167 (rule!5007 (h!23375 tokens!457))))))

(assert (=> d!492532 (= (matchR!1994 (regex!3167 (rule!5007 (h!23375 tokens!457))) lt!596490) lt!596956)))

(declare-fun b!1635361 () Bool)

(declare-fun res!732212 () Bool)

(declare-fun e!1048748 () Bool)

(assert (=> b!1635361 (=> res!732212 e!1048748)))

(assert (=> b!1635361 (= res!732212 (not ((_ is ElementMatch!4495) (regex!3167 (rule!5007 (h!23375 tokens!457))))))))

(assert (=> b!1635361 (= e!1048747 e!1048748)))

(declare-fun bm!105629 () Bool)

(assert (=> bm!105629 (= call!105634 (isEmpty!11005 lt!596490))))

(declare-fun b!1635362 () Bool)

(declare-fun e!1048746 () Bool)

(assert (=> b!1635362 (= e!1048746 e!1048750)))

(declare-fun res!732211 () Bool)

(assert (=> b!1635362 (=> res!732211 e!1048750)))

(assert (=> b!1635362 (= res!732211 call!105634)))

(declare-fun b!1635363 () Bool)

(declare-fun res!732207 () Bool)

(assert (=> b!1635363 (=> (not res!732207) (not e!1048752))))

(assert (=> b!1635363 (= res!732207 (isEmpty!11005 (tail!2390 lt!596490)))))

(declare-fun b!1635364 () Bool)

(assert (=> b!1635364 (= e!1048748 e!1048746)))

(declare-fun res!732208 () Bool)

(assert (=> b!1635364 (=> (not res!732208) (not e!1048746))))

(assert (=> b!1635364 (= res!732208 (not lt!596956))))

(declare-fun b!1635365 () Bool)

(assert (=> b!1635365 (= e!1048749 e!1048747)))

(declare-fun c!266129 () Bool)

(assert (=> b!1635365 (= c!266129 ((_ is EmptyLang!4495) (regex!3167 (rule!5007 (h!23375 tokens!457)))))))

(declare-fun b!1635366 () Bool)

(declare-fun res!732209 () Bool)

(assert (=> b!1635366 (=> res!732209 e!1048748)))

(assert (=> b!1635366 (= res!732209 e!1048752)))

(declare-fun res!732213 () Bool)

(assert (=> b!1635366 (=> (not res!732213) (not e!1048752))))

(assert (=> b!1635366 (= res!732213 lt!596956)))

(declare-fun b!1635367 () Bool)

(declare-fun res!732214 () Bool)

(assert (=> b!1635367 (=> (not res!732214) (not e!1048752))))

(assert (=> b!1635367 (= res!732214 (not call!105634))))

(declare-fun b!1635368 () Bool)

(assert (=> b!1635368 (= e!1048751 (matchR!1994 (derivativeStep!1094 (regex!3167 (rule!5007 (h!23375 tokens!457))) (head!3515 lt!596490)) (tail!2390 lt!596490)))))

(assert (= (and d!492532 c!266127) b!1635357))

(assert (= (and d!492532 (not c!266127)) b!1635368))

(assert (= (and d!492532 c!266128) b!1635358))

(assert (= (and d!492532 (not c!266128)) b!1635365))

(assert (= (and b!1635365 c!266129) b!1635360))

(assert (= (and b!1635365 (not c!266129)) b!1635361))

(assert (= (and b!1635361 (not res!732212)) b!1635366))

(assert (= (and b!1635366 res!732213) b!1635367))

(assert (= (and b!1635367 res!732214) b!1635363))

(assert (= (and b!1635363 res!732207) b!1635359))

(assert (= (and b!1635366 (not res!732209)) b!1635364))

(assert (= (and b!1635364 res!732208) b!1635362))

(assert (= (and b!1635362 (not res!732211)) b!1635355))

(assert (= (and b!1635355 (not res!732210)) b!1635356))

(assert (= (or b!1635358 b!1635367 b!1635362) bm!105629))

(assert (=> b!1635363 m!1971451))

(assert (=> b!1635363 m!1971451))

(declare-fun m!1971817 () Bool)

(assert (=> b!1635363 m!1971817))

(assert (=> b!1635359 m!1971457))

(assert (=> b!1635355 m!1971451))

(assert (=> b!1635355 m!1971451))

(assert (=> b!1635355 m!1971817))

(declare-fun m!1971819 () Bool)

(assert (=> bm!105629 m!1971819))

(declare-fun m!1971821 () Bool)

(assert (=> b!1635357 m!1971821))

(assert (=> d!492532 m!1971819))

(declare-fun m!1971823 () Bool)

(assert (=> d!492532 m!1971823))

(assert (=> b!1635356 m!1971457))

(assert (=> b!1635368 m!1971457))

(assert (=> b!1635368 m!1971457))

(declare-fun m!1971825 () Bool)

(assert (=> b!1635368 m!1971825))

(assert (=> b!1635368 m!1971451))

(assert (=> b!1635368 m!1971825))

(assert (=> b!1635368 m!1971451))

(declare-fun m!1971827 () Bool)

(assert (=> b!1635368 m!1971827))

(assert (=> b!1634842 d!492532))

(declare-fun d!492534 () Bool)

(declare-fun lt!597045 () Bool)

(declare-fun e!1048773 () Bool)

(assert (=> d!492534 (= lt!597045 e!1048773)))

(declare-fun res!732236 () Bool)

(assert (=> d!492534 (=> (not res!732236) (not e!1048773))))

(assert (=> d!492534 (= res!732236 (= (list!7080 (_1!10197 (lex!1280 thiss!17113 rules!1846 (print!1327 thiss!17113 (singletonSeq!1613 (h!23375 tokens!457)))))) (list!7080 (singletonSeq!1613 (h!23375 tokens!457)))))))

(declare-fun e!1048772 () Bool)

(assert (=> d!492534 (= lt!597045 e!1048772)))

(declare-fun res!732238 () Bool)

(assert (=> d!492534 (=> (not res!732238) (not e!1048772))))

(declare-fun lt!597046 () tuple2!17590)

(assert (=> d!492534 (= res!732238 (= (size!14346 (_1!10197 lt!597046)) 1))))

(assert (=> d!492534 (= lt!597046 (lex!1280 thiss!17113 rules!1846 (print!1327 thiss!17113 (singletonSeq!1613 (h!23375 tokens!457)))))))

(assert (=> d!492534 (not (isEmpty!11003 rules!1846))))

(assert (=> d!492534 (= (rulesProduceIndividualToken!1448 thiss!17113 rules!1846 (h!23375 tokens!457)) lt!597045)))

(declare-fun b!1635396 () Bool)

(declare-fun res!732237 () Bool)

(assert (=> b!1635396 (=> (not res!732237) (not e!1048772))))

(assert (=> b!1635396 (= res!732237 (= (apply!4649 (_1!10197 lt!597046) 0) (h!23375 tokens!457)))))

(declare-fun b!1635397 () Bool)

(assert (=> b!1635397 (= e!1048772 (isEmpty!11012 (_2!10197 lt!597046)))))

(declare-fun b!1635398 () Bool)

(assert (=> b!1635398 (= e!1048773 (isEmpty!11012 (_2!10197 (lex!1280 thiss!17113 rules!1846 (print!1327 thiss!17113 (singletonSeq!1613 (h!23375 tokens!457)))))))))

(assert (= (and d!492534 res!732238) b!1635396))

(assert (= (and b!1635396 res!732237) b!1635397))

(assert (= (and d!492534 res!732236) b!1635398))

(declare-fun m!1971917 () Bool)

(assert (=> d!492534 m!1971917))

(declare-fun m!1971919 () Bool)

(assert (=> d!492534 m!1971919))

(assert (=> d!492534 m!1970751))

(declare-fun m!1971921 () Bool)

(assert (=> d!492534 m!1971921))

(assert (=> d!492534 m!1970835))

(declare-fun m!1971923 () Bool)

(assert (=> d!492534 m!1971923))

(assert (=> d!492534 m!1970751))

(declare-fun m!1971925 () Bool)

(assert (=> d!492534 m!1971925))

(assert (=> d!492534 m!1970751))

(assert (=> d!492534 m!1971917))

(declare-fun m!1971927 () Bool)

(assert (=> b!1635396 m!1971927))

(declare-fun m!1971929 () Bool)

(assert (=> b!1635397 m!1971929))

(assert (=> b!1635398 m!1970751))

(assert (=> b!1635398 m!1970751))

(assert (=> b!1635398 m!1971917))

(assert (=> b!1635398 m!1971917))

(assert (=> b!1635398 m!1971919))

(declare-fun m!1971931 () Bool)

(assert (=> b!1635398 m!1971931))

(assert (=> b!1634820 d!492534))

(declare-fun d!492542 () Bool)

(assert (=> d!492542 (= (head!3515 lt!596485) (h!23373 lt!596485))))

(assert (=> b!1634841 d!492542))

(declare-fun d!492544 () Bool)

(assert (=> d!492544 (= (get!5204 lt!596489) (v!24445 lt!596489))))

(assert (=> b!1634840 d!492544))

(declare-fun b!1635446 () Bool)

(assert (=> b!1635446 false))

(declare-fun lt!597230 () Unit!29354)

(declare-fun lt!597226 () Unit!29354)

(assert (=> b!1635446 (= lt!597230 lt!597226)))

(declare-fun lt!597218 () Token!5900)

(assert (=> b!1635446 (= (rule!5007 lt!597218) (rule!5007 (h!23375 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!55 (List!18043 Rule!6134 Rule!6134) Unit!29354)

(assert (=> b!1635446 (= lt!597226 (lemmaSameIndexThenSameElement!55 rules!1846 (rule!5007 lt!597218) (rule!5007 (h!23375 tokens!457))))))

(declare-fun e!1048806 () Unit!29354)

(declare-fun Unit!29392 () Unit!29354)

(assert (=> b!1635446 (= e!1048806 Unit!29392)))

(declare-fun b!1635447 () Bool)

(declare-fun e!1048808 () Unit!29354)

(declare-fun Unit!29394 () Unit!29354)

(assert (=> b!1635447 (= e!1048808 Unit!29394)))

(declare-fun b!1635448 () Bool)

(declare-fun Unit!29395 () Unit!29354)

(assert (=> b!1635448 (= e!1048806 Unit!29395)))

(declare-fun b!1635449 () Bool)

(declare-fun res!732249 () Bool)

(declare-fun e!1048804 () Bool)

(assert (=> b!1635449 (=> (not res!732249) (not e!1048804))))

(declare-datatypes ((Option!3372 0))(
  ( (None!3371) (Some!3371 (v!24454 Rule!6134)) )
))
(declare-fun get!5207 (Option!3372) Rule!6134)

(declare-fun getRuleFromTag!296 (LexerInterface!2796 List!18043 String!20617) Option!3372)

(assert (=> b!1635449 (= res!732249 (matchR!1994 (regex!3167 (get!5207 (getRuleFromTag!296 thiss!17113 rules!1846 (tag!3447 (rule!5007 lt!597218))))) (list!7079 (charsOf!1816 lt!597218))))))

(declare-fun b!1635450 () Bool)

(declare-fun e!1048805 () Unit!29354)

(declare-fun Unit!29398 () Unit!29354)

(assert (=> b!1635450 (= e!1048805 Unit!29398)))

(declare-fun b!1635451 () Bool)

(declare-fun e!1048809 () Unit!29354)

(declare-fun Unit!29399 () Unit!29354)

(assert (=> b!1635451 (= e!1048809 Unit!29399)))

(declare-fun lt!597222 () List!18042)

(assert (=> b!1635451 (= lt!597222 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597216 () List!18042)

(assert (=> b!1635451 (= lt!597216 (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(declare-fun lt!597205 () List!18042)

(declare-fun lt!597246 () Unit!29354)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!130 (LexerInterface!2796 List!18043 Rule!6134 List!18042 List!18042 List!18042 Rule!6134) Unit!29354)

(assert (=> b!1635451 (= lt!597246 (lemmaMaxPrefixOutputsMaxPrefix!130 thiss!17113 rules!1846 (rule!5007 lt!597218) lt!597222 lt!597205 lt!597216 (rule!5007 (h!23375 tokens!457))))))

(assert (=> b!1635451 (not (matchR!1994 (regex!3167 (rule!5007 (h!23375 tokens!457))) lt!597216))))

(declare-fun lt!597225 () Unit!29354)

(assert (=> b!1635451 (= lt!597225 lt!597246)))

(assert (=> b!1635451 false))

(declare-fun b!1635452 () Bool)

(assert (=> b!1635452 false))

(declare-fun lt!597199 () Unit!29354)

(declare-fun lt!597204 () Unit!29354)

(assert (=> b!1635452 (= lt!597199 lt!597204)))

(declare-fun lt!597249 () List!18042)

(assert (=> b!1635452 (not (matchR!1994 (regex!3167 (rule!5007 (h!23375 tokens!457))) lt!597249))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!80 (LexerInterface!2796 List!18043 Rule!6134 List!18042 List!18042 Rule!6134) Unit!29354)

(assert (=> b!1635452 (= lt!597204 (lemmaMaxPrefNoSmallerRuleMatches!80 thiss!17113 rules!1846 (rule!5007 lt!597218) lt!597249 lt!597205 (rule!5007 (h!23375 tokens!457))))))

(assert (=> b!1635452 (= lt!597249 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun e!1048807 () Unit!29354)

(declare-fun Unit!29404 () Unit!29354)

(assert (=> b!1635452 (= e!1048807 Unit!29404)))

(declare-fun b!1635453 () Bool)

(declare-fun e!1048803 () Unit!29354)

(declare-fun Unit!29405 () Unit!29354)

(assert (=> b!1635453 (= e!1048803 Unit!29405)))

(declare-fun d!492546 () Bool)

(assert (=> d!492546 (= (maxPrefix!1360 thiss!17113 rules!1846 (++!4809 (list!7079 (charsOf!1816 (h!23375 tokens!457))) lt!596485)) (Some!3368 (tuple2!17593 (h!23375 tokens!457) lt!596485)))))

(declare-fun lt!597258 () Unit!29354)

(declare-fun Unit!29406 () Unit!29354)

(assert (=> d!492546 (= lt!597258 Unit!29406)))

(declare-fun lt!597252 () Unit!29354)

(assert (=> d!492546 (= lt!597252 e!1048808)))

(declare-fun c!266148 () Bool)

(assert (=> d!492546 (= c!266148 (not (= (rule!5007 lt!597218) (rule!5007 (h!23375 tokens!457)))))))

(declare-fun lt!597219 () Unit!29354)

(declare-fun lt!597244 () Unit!29354)

(assert (=> d!492546 (= lt!597219 lt!597244)))

(declare-fun lt!597215 () List!18042)

(assert (=> d!492546 (= lt!596485 lt!597215)))

(declare-fun lemmaSamePrefixThenSameSuffix!662 (List!18042 List!18042 List!18042 List!18042 List!18042) Unit!29354)

(assert (=> d!492546 (= lt!597244 (lemmaSamePrefixThenSameSuffix!662 (list!7079 (charsOf!1816 (h!23375 tokens!457))) lt!596485 (list!7079 (charsOf!1816 (h!23375 tokens!457))) lt!597215 lt!597205))))

(declare-fun lt!597213 () Unit!29354)

(declare-fun lt!597207 () Unit!29354)

(assert (=> d!492546 (= lt!597213 lt!597207)))

(declare-fun lt!597243 () List!18042)

(declare-fun lt!597214 () List!18042)

(assert (=> d!492546 (= lt!597243 lt!597214)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!162 (List!18042 List!18042 List!18042) Unit!29354)

(assert (=> d!492546 (= lt!597207 (lemmaIsPrefixSameLengthThenSameList!162 lt!597243 lt!597214 lt!597205))))

(assert (=> d!492546 (= lt!597214 (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(assert (=> d!492546 (= lt!597243 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597250 () Unit!29354)

(assert (=> d!492546 (= lt!597250 e!1048809)))

(declare-fun c!266150 () Bool)

(assert (=> d!492546 (= c!266150 (< (size!14344 (charsOf!1816 lt!597218)) (size!14344 (charsOf!1816 (h!23375 tokens!457)))))))

(declare-fun lt!597221 () Unit!29354)

(assert (=> d!492546 (= lt!597221 e!1048803)))

(declare-fun c!266147 () Bool)

(assert (=> d!492546 (= c!266147 (> (size!14344 (charsOf!1816 lt!597218)) (size!14344 (charsOf!1816 (h!23375 tokens!457)))))))

(declare-fun lt!597224 () Unit!29354)

(declare-fun lt!597236 () Unit!29354)

(assert (=> d!492546 (= lt!597224 lt!597236)))

(assert (=> d!492546 (matchR!1994 (rulesRegex!557 thiss!17113 rules!1846) (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!40 (LexerInterface!2796 List!18043 List!18042 Token!5900 Rule!6134 List!18042) Unit!29354)

(assert (=> d!492546 (= lt!597236 (lemmaMaxPrefixThenMatchesRulesRegex!40 thiss!17113 rules!1846 (list!7079 (charsOf!1816 (h!23375 tokens!457))) (h!23375 tokens!457) (rule!5007 (h!23375 tokens!457)) Nil!17972))))

(declare-fun lt!597238 () Unit!29354)

(declare-fun lt!597228 () Unit!29354)

(assert (=> d!492546 (= lt!597238 lt!597228)))

(declare-fun lt!597254 () List!18042)

(assert (=> d!492546 (= lt!597215 lt!597254)))

(declare-fun lt!597194 () List!18042)

(declare-fun lt!597255 () List!18042)

(assert (=> d!492546 (= lt!597228 (lemmaSamePrefixThenSameSuffix!662 lt!597194 lt!597215 lt!597255 lt!597254 lt!597205))))

(declare-fun getSuffix!710 (List!18042 List!18042) List!18042)

(assert (=> d!492546 (= lt!597254 (getSuffix!710 lt!597205 (list!7079 (charsOf!1816 lt!597218))))))

(assert (=> d!492546 (= lt!597255 (list!7079 (charsOf!1816 lt!597218)))))

(assert (=> d!492546 (= lt!597194 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597261 () Unit!29354)

(declare-fun lt!597237 () Unit!29354)

(assert (=> d!492546 (= lt!597261 lt!597237)))

(declare-fun lt!597231 () List!18042)

(assert (=> d!492546 (= (maxPrefixOneRule!787 thiss!17113 (rule!5007 lt!597218) lt!597205) (Some!3368 (tuple2!17593 (Token!5901 (apply!4648 (transformation!3167 (rule!5007 lt!597218)) (seqFromList!2084 lt!597231)) (rule!5007 lt!597218) (size!14345 lt!597231) lt!597231) lt!597215)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!228 (LexerInterface!2796 List!18043 List!18042 List!18042 List!18042 Rule!6134) Unit!29354)

(assert (=> d!492546 (= lt!597237 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!228 thiss!17113 rules!1846 lt!597231 lt!597205 lt!597215 (rule!5007 lt!597218)))))

(assert (=> d!492546 (= lt!597231 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597247 () Unit!29354)

(declare-fun lemmaCharactersSize!334 (Token!5900) Unit!29354)

(assert (=> d!492546 (= lt!597247 (lemmaCharactersSize!334 lt!597218))))

(declare-fun lt!597196 () Unit!29354)

(declare-fun lemmaEqSameImage!187 (TokenValueInjection!6174 BalanceConc!11908 BalanceConc!11908) Unit!29354)

(assert (=> d!492546 (= lt!597196 (lemmaEqSameImage!187 (transformation!3167 (rule!5007 lt!597218)) (charsOf!1816 lt!597218) (seqFromList!2084 (originalCharacters!3981 lt!597218))))))

(declare-fun lt!597239 () Unit!29354)

(declare-fun lemmaSemiInverse!402 (TokenValueInjection!6174 BalanceConc!11908) Unit!29354)

(assert (=> d!492546 (= lt!597239 (lemmaSemiInverse!402 (transformation!3167 (rule!5007 lt!597218)) (charsOf!1816 lt!597218)))))

(declare-fun lt!597203 () Unit!29354)

(declare-fun lemmaInv!467 (TokenValueInjection!6174) Unit!29354)

(assert (=> d!492546 (= lt!597203 (lemmaInv!467 (transformation!3167 (rule!5007 lt!597218))))))

(declare-fun lt!597192 () Unit!29354)

(declare-fun lt!597212 () Unit!29354)

(assert (=> d!492546 (= lt!597192 lt!597212)))

(declare-fun lt!597208 () List!18042)

(assert (=> d!492546 (isPrefix!1427 lt!597208 (++!4809 lt!597208 lt!597215))))

(assert (=> d!492546 (= lt!597212 (lemmaConcatTwoListThenFirstIsPrefix!952 lt!597208 lt!597215))))

(assert (=> d!492546 (= lt!597208 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597229 () Unit!29354)

(declare-fun lt!597234 () Unit!29354)

(assert (=> d!492546 (= lt!597229 lt!597234)))

(assert (=> d!492546 e!1048804))

(declare-fun res!732250 () Bool)

(assert (=> d!492546 (=> (not res!732250) (not e!1048804))))

(declare-fun isDefined!2739 (Option!3372) Bool)

(assert (=> d!492546 (= res!732250 (isDefined!2739 (getRuleFromTag!296 thiss!17113 rules!1846 (tag!3447 (rule!5007 lt!597218)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!296 (LexerInterface!2796 List!18043 List!18042 Token!5900) Unit!29354)

(assert (=> d!492546 (= lt!597234 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!296 thiss!17113 rules!1846 lt!597205 lt!597218))))

(declare-fun lt!597232 () Option!3369)

(assert (=> d!492546 (= lt!597215 (_2!10198 (get!5204 lt!597232)))))

(assert (=> d!492546 (= lt!597218 (_1!10198 (get!5204 lt!597232)))))

(declare-fun lt!597248 () Unit!29354)

(assert (=> d!492546 (= lt!597248 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!370 thiss!17113 rules!1846 (list!7079 (charsOf!1816 (h!23375 tokens!457))) lt!596485))))

(assert (=> d!492546 (= lt!597232 (maxPrefix!1360 thiss!17113 rules!1846 lt!597205))))

(declare-fun lt!597227 () Unit!29354)

(declare-fun lt!597259 () Unit!29354)

(assert (=> d!492546 (= lt!597227 lt!597259)))

(declare-fun lt!597256 () List!18042)

(assert (=> d!492546 (isPrefix!1427 lt!597256 (++!4809 lt!597256 lt!596485))))

(assert (=> d!492546 (= lt!597259 (lemmaConcatTwoListThenFirstIsPrefix!952 lt!597256 lt!596485))))

(assert (=> d!492546 (= lt!597256 (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(assert (=> d!492546 (= lt!597205 (++!4809 (list!7079 (charsOf!1816 (h!23375 tokens!457))) lt!596485))))

(assert (=> d!492546 (not (isEmpty!11003 rules!1846))))

(assert (=> d!492546 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!132 thiss!17113 rules!1846 (h!23375 tokens!457) (rule!5007 (h!23375 tokens!457)) lt!596485) lt!597258)))

(declare-fun b!1635454 () Bool)

(declare-fun Unit!29410 () Unit!29354)

(assert (=> b!1635454 (= e!1048809 Unit!29410)))

(declare-fun b!1635455 () Bool)

(assert (=> b!1635455 false))

(declare-fun lt!597220 () Unit!29354)

(declare-fun lt!597217 () Unit!29354)

(assert (=> b!1635455 (= lt!597220 lt!597217)))

(declare-fun lt!597198 () List!18042)

(assert (=> b!1635455 (not (matchR!1994 (regex!3167 (rule!5007 lt!597218)) lt!597198))))

(assert (=> b!1635455 (= lt!597217 (lemmaMaxPrefNoSmallerRuleMatches!80 thiss!17113 rules!1846 (rule!5007 (h!23375 tokens!457)) lt!597198 (list!7079 (charsOf!1816 (h!23375 tokens!457))) (rule!5007 lt!597218)))))

(assert (=> b!1635455 (= lt!597198 (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(declare-fun Unit!29411 () Unit!29354)

(assert (=> b!1635455 (= e!1048805 Unit!29411)))

(declare-fun b!1635456 () Bool)

(declare-fun Unit!29412 () Unit!29354)

(assert (=> b!1635456 (= e!1048803 Unit!29412)))

(declare-fun lt!597253 () Unit!29354)

(assert (=> b!1635456 (= lt!597253 (lemmaMaxPrefixThenMatchesRulesRegex!40 thiss!17113 rules!1846 lt!597205 lt!597218 (rule!5007 lt!597218) lt!597215))))

(assert (=> b!1635456 (matchR!1994 (rulesRegex!557 thiss!17113 rules!1846) (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597200 () Unit!29354)

(assert (=> b!1635456 (= lt!597200 lt!597253)))

(declare-fun lt!597235 () List!18042)

(assert (=> b!1635456 (= lt!597235 (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(declare-fun lt!597262 () List!18042)

(assert (=> b!1635456 (= lt!597262 (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(declare-fun lt!597245 () List!18042)

(assert (=> b!1635456 (= lt!597245 (getSuffix!710 lt!597205 (list!7079 (charsOf!1816 (h!23375 tokens!457)))))))

(declare-fun lt!597240 () Unit!29354)

(assert (=> b!1635456 (= lt!597240 (lemmaSamePrefixThenSameSuffix!662 lt!597235 lt!596485 lt!597262 lt!597245 lt!597205))))

(assert (=> b!1635456 (= lt!596485 lt!597245)))

(declare-fun lt!597223 () Unit!29354)

(assert (=> b!1635456 (= lt!597223 lt!597240)))

(declare-fun lt!597260 () List!18042)

(assert (=> b!1635456 (= lt!597260 (list!7079 (charsOf!1816 (h!23375 tokens!457))))))

(declare-fun lt!597257 () Unit!29354)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!153 (List!18042 List!18042) Unit!29354)

(assert (=> b!1635456 (= lt!597257 (lemmaAddHeadSuffixToPrefixStillPrefix!153 lt!597260 lt!597205))))

(assert (=> b!1635456 (isPrefix!1427 (++!4809 lt!597260 (Cons!17972 (head!3515 (getSuffix!710 lt!597205 lt!597260)) Nil!17972)) lt!597205)))

(declare-fun lt!597201 () Unit!29354)

(assert (=> b!1635456 (= lt!597201 lt!597257)))

(declare-fun lt!597202 () List!18042)

(assert (=> b!1635456 (= lt!597202 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597251 () List!18042)

(assert (=> b!1635456 (= lt!597251 (++!4809 (list!7079 (charsOf!1816 (h!23375 tokens!457))) (Cons!17972 (head!3515 lt!596485) Nil!17972)))))

(declare-fun lt!597210 () Unit!29354)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!39 (List!18042 List!18042 List!18042) Unit!29354)

(assert (=> b!1635456 (= lt!597210 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!39 lt!597202 lt!597251 lt!597205))))

(assert (=> b!1635456 (isPrefix!1427 lt!597251 lt!597202)))

(declare-fun lt!597241 () Unit!29354)

(assert (=> b!1635456 (= lt!597241 lt!597210)))

(declare-fun lt!597233 () Regex!4495)

(assert (=> b!1635456 (= lt!597233 (rulesRegex!557 thiss!17113 rules!1846))))

(declare-fun lt!597242 () List!18042)

(assert (=> b!1635456 (= lt!597242 (++!4809 (list!7079 (charsOf!1816 (h!23375 tokens!457))) (Cons!17972 (head!3515 lt!596485) Nil!17972)))))

(declare-fun lt!597211 () List!18042)

(assert (=> b!1635456 (= lt!597211 (list!7079 (charsOf!1816 lt!597218)))))

(declare-fun lt!597209 () Unit!29354)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!40 (Regex!4495 List!18042 List!18042) Unit!29354)

(assert (=> b!1635456 (= lt!597209 (lemmaNotPrefixMatchThenCannotMatchLonger!40 lt!597233 lt!597242 lt!597211))))

(assert (=> b!1635456 (not (matchR!1994 lt!597233 lt!597211))))

(declare-fun lt!597206 () Unit!29354)

(assert (=> b!1635456 (= lt!597206 lt!597209)))

(assert (=> b!1635456 false))

(declare-fun b!1635457 () Bool)

(assert (=> b!1635457 (= e!1048804 (= (rule!5007 lt!597218) (get!5207 (getRuleFromTag!296 thiss!17113 rules!1846 (tag!3447 (rule!5007 lt!597218))))))))

(declare-fun b!1635458 () Bool)

(declare-fun Unit!29413 () Unit!29354)

(assert (=> b!1635458 (= e!1048807 Unit!29413)))

(declare-fun b!1635459 () Bool)

(declare-fun Unit!29414 () Unit!29354)

(assert (=> b!1635459 (= e!1048808 Unit!29414)))

(declare-fun c!266146 () Bool)

(declare-fun getIndex!107 (List!18043 Rule!6134) Int)

(assert (=> b!1635459 (= c!266146 (< (getIndex!107 rules!1846 (rule!5007 (h!23375 tokens!457))) (getIndex!107 rules!1846 (rule!5007 lt!597218))))))

(declare-fun lt!597193 () Unit!29354)

(assert (=> b!1635459 (= lt!597193 e!1048807)))

(declare-fun c!266145 () Bool)

(assert (=> b!1635459 (= c!266145 (< (getIndex!107 rules!1846 (rule!5007 lt!597218)) (getIndex!107 rules!1846 (rule!5007 (h!23375 tokens!457)))))))

(declare-fun lt!597197 () Unit!29354)

(assert (=> b!1635459 (= lt!597197 e!1048805)))

(declare-fun c!266149 () Bool)

(assert (=> b!1635459 (= c!266149 (= (getIndex!107 rules!1846 (rule!5007 lt!597218)) (getIndex!107 rules!1846 (rule!5007 (h!23375 tokens!457)))))))

(declare-fun lt!597195 () Unit!29354)

(assert (=> b!1635459 (= lt!597195 e!1048806)))

(assert (=> b!1635459 false))

(assert (= (and d!492546 res!732250) b!1635449))

(assert (= (and b!1635449 res!732249) b!1635457))

(assert (= (and d!492546 c!266147) b!1635456))

(assert (= (and d!492546 (not c!266147)) b!1635453))

(assert (= (and d!492546 c!266150) b!1635451))

(assert (= (and d!492546 (not c!266150)) b!1635454))

(assert (= (and d!492546 c!266148) b!1635459))

(assert (= (and d!492546 (not c!266148)) b!1635447))

(assert (= (and b!1635459 c!266146) b!1635452))

(assert (= (and b!1635459 (not c!266146)) b!1635458))

(assert (= (and b!1635459 c!266145) b!1635455))

(assert (= (and b!1635459 (not c!266145)) b!1635450))

(assert (= (and b!1635459 c!266149) b!1635446))

(assert (= (and b!1635459 (not c!266149)) b!1635448))

(declare-fun m!1971937 () Bool)

(assert (=> b!1635452 m!1971937))

(declare-fun m!1971939 () Bool)

(assert (=> b!1635452 m!1971939))

(declare-fun m!1971941 () Bool)

(assert (=> b!1635452 m!1971941))

(assert (=> b!1635452 m!1971941))

(declare-fun m!1971943 () Bool)

(assert (=> b!1635452 m!1971943))

(declare-fun m!1971945 () Bool)

(assert (=> b!1635446 m!1971945))

(assert (=> b!1635449 m!1971941))

(assert (=> b!1635449 m!1971943))

(declare-fun m!1971947 () Bool)

(assert (=> b!1635449 m!1971947))

(declare-fun m!1971949 () Bool)

(assert (=> b!1635449 m!1971949))

(assert (=> b!1635449 m!1971947))

(assert (=> b!1635449 m!1971943))

(declare-fun m!1971951 () Bool)

(assert (=> b!1635449 m!1971951))

(assert (=> b!1635449 m!1971941))

(assert (=> b!1635457 m!1971947))

(assert (=> b!1635457 m!1971947))

(assert (=> b!1635457 m!1971949))

(declare-fun m!1971953 () Bool)

(assert (=> b!1635451 m!1971953))

(assert (=> b!1635451 m!1971941))

(assert (=> b!1635451 m!1971943))

(declare-fun m!1971955 () Bool)

(assert (=> b!1635451 m!1971955))

(assert (=> b!1635451 m!1971941))

(assert (=> b!1635451 m!1970723))

(assert (=> b!1635451 m!1970723))

(declare-fun m!1971957 () Bool)

(assert (=> b!1635451 m!1971957))

(declare-fun m!1971959 () Bool)

(assert (=> d!492546 m!1971959))

(declare-fun m!1971961 () Bool)

(assert (=> d!492546 m!1971961))

(declare-fun m!1971963 () Bool)

(assert (=> d!492546 m!1971963))

(declare-fun m!1971965 () Bool)

(assert (=> d!492546 m!1971965))

(declare-fun m!1971967 () Bool)

(assert (=> d!492546 m!1971967))

(declare-fun m!1971969 () Bool)

(assert (=> d!492546 m!1971969))

(declare-fun m!1971971 () Bool)

(assert (=> d!492546 m!1971971))

(assert (=> d!492546 m!1970723))

(declare-fun m!1971973 () Bool)

(assert (=> d!492546 m!1971973))

(assert (=> d!492546 m!1971941))

(declare-fun m!1971975 () Bool)

(assert (=> d!492546 m!1971975))

(declare-fun m!1971977 () Bool)

(assert (=> d!492546 m!1971977))

(declare-fun m!1971979 () Bool)

(assert (=> d!492546 m!1971979))

(declare-fun m!1971981 () Bool)

(assert (=> d!492546 m!1971981))

(assert (=> d!492546 m!1970755))

(assert (=> d!492546 m!1971957))

(assert (=> d!492546 m!1971957))

(declare-fun m!1971983 () Bool)

(assert (=> d!492546 m!1971983))

(assert (=> d!492546 m!1971957))

(assert (=> d!492546 m!1971961))

(assert (=> d!492546 m!1971941))

(assert (=> d!492546 m!1971943))

(declare-fun m!1971985 () Bool)

(assert (=> d!492546 m!1971985))

(assert (=> d!492546 m!1971965))

(declare-fun m!1971987 () Bool)

(assert (=> d!492546 m!1971987))

(declare-fun m!1971989 () Bool)

(assert (=> d!492546 m!1971989))

(assert (=> d!492546 m!1970835))

(assert (=> d!492546 m!1971943))

(declare-fun m!1971991 () Bool)

(assert (=> d!492546 m!1971991))

(assert (=> d!492546 m!1971941))

(assert (=> d!492546 m!1971947))

(declare-fun m!1971993 () Bool)

(assert (=> d!492546 m!1971993))

(assert (=> d!492546 m!1971975))

(assert (=> d!492546 m!1971947))

(declare-fun m!1971995 () Bool)

(assert (=> d!492546 m!1971995))

(assert (=> d!492546 m!1971941))

(declare-fun m!1971997 () Bool)

(assert (=> d!492546 m!1971997))

(declare-fun m!1971999 () Bool)

(assert (=> d!492546 m!1971999))

(assert (=> d!492546 m!1971981))

(declare-fun m!1972001 () Bool)

(assert (=> d!492546 m!1972001))

(assert (=> d!492546 m!1971957))

(declare-fun m!1972003 () Bool)

(assert (=> d!492546 m!1972003))

(declare-fun m!1972005 () Bool)

(assert (=> d!492546 m!1972005))

(assert (=> d!492546 m!1971989))

(declare-fun m!1972007 () Bool)

(assert (=> d!492546 m!1972007))

(assert (=> d!492546 m!1971957))

(declare-fun m!1972009 () Bool)

(assert (=> d!492546 m!1972009))

(assert (=> d!492546 m!1971941))

(declare-fun m!1972011 () Bool)

(assert (=> d!492546 m!1972011))

(declare-fun m!1972013 () Bool)

(assert (=> d!492546 m!1972013))

(assert (=> d!492546 m!1970723))

(declare-fun m!1972015 () Bool)

(assert (=> d!492546 m!1972015))

(assert (=> d!492546 m!1970723))

(assert (=> d!492546 m!1971957))

(declare-fun m!1972017 () Bool)

(assert (=> d!492546 m!1972017))

(assert (=> d!492546 m!1970755))

(assert (=> d!492546 m!1971957))

(declare-fun m!1972019 () Bool)

(assert (=> d!492546 m!1972019))

(assert (=> b!1635456 m!1971941))

(assert (=> b!1635456 m!1971943))

(declare-fun m!1972021 () Bool)

(assert (=> b!1635456 m!1972021))

(declare-fun m!1972023 () Bool)

(assert (=> b!1635456 m!1972023))

(declare-fun m!1972025 () Bool)

(assert (=> b!1635456 m!1972025))

(assert (=> b!1635456 m!1971957))

(declare-fun m!1972027 () Bool)

(assert (=> b!1635456 m!1972027))

(declare-fun m!1972029 () Bool)

(assert (=> b!1635456 m!1972029))

(assert (=> b!1635456 m!1970723))

(assert (=> b!1635456 m!1971957))

(assert (=> b!1635456 m!1970755))

(declare-fun m!1972031 () Bool)

(assert (=> b!1635456 m!1972031))

(assert (=> b!1635456 m!1972023))

(declare-fun m!1972033 () Bool)

(assert (=> b!1635456 m!1972033))

(declare-fun m!1972035 () Bool)

(assert (=> b!1635456 m!1972035))

(assert (=> b!1635456 m!1970755))

(assert (=> b!1635456 m!1971943))

(declare-fun m!1972037 () Bool)

(assert (=> b!1635456 m!1972037))

(assert (=> b!1635456 m!1971957))

(declare-fun m!1972039 () Bool)

(assert (=> b!1635456 m!1972039))

(declare-fun m!1972041 () Bool)

(assert (=> b!1635456 m!1972041))

(declare-fun m!1972043 () Bool)

(assert (=> b!1635456 m!1972043))

(assert (=> b!1635456 m!1972041))

(assert (=> b!1635456 m!1971941))

(declare-fun m!1972045 () Bool)

(assert (=> b!1635456 m!1972045))

(assert (=> b!1635456 m!1970767))

(assert (=> b!1635456 m!1970723))

(declare-fun m!1972047 () Bool)

(assert (=> b!1635456 m!1972047))

(declare-fun m!1972049 () Bool)

(assert (=> b!1635455 m!1972049))

(assert (=> b!1635455 m!1970723))

(assert (=> b!1635455 m!1970723))

(assert (=> b!1635455 m!1971957))

(assert (=> b!1635455 m!1971957))

(declare-fun m!1972051 () Bool)

(assert (=> b!1635455 m!1972051))

(declare-fun m!1972053 () Bool)

(assert (=> b!1635459 m!1972053))

(declare-fun m!1972055 () Bool)

(assert (=> b!1635459 m!1972055))

(assert (=> b!1634840 d!492546))

(declare-fun d!492554 () Bool)

(assert (=> d!492554 (= (get!5204 lt!596471) (v!24445 lt!596471))))

(assert (=> b!1634827 d!492554))

(declare-fun b!1635460 () Bool)

(declare-fun e!1048811 () Option!3369)

(declare-fun lt!597264 () Option!3369)

(declare-fun lt!597265 () Option!3369)

(assert (=> b!1635460 (= e!1048811 (ite (and ((_ is None!3368) lt!597264) ((_ is None!3368) lt!597265)) None!3368 (ite ((_ is None!3368) lt!597265) lt!597264 (ite ((_ is None!3368) lt!597264) lt!597265 (ite (>= (size!14340 (_1!10198 (v!24445 lt!597264))) (size!14340 (_1!10198 (v!24445 lt!597265)))) lt!597264 lt!597265)))))))

(declare-fun call!105635 () Option!3369)

(assert (=> b!1635460 (= lt!597264 call!105635)))

(assert (=> b!1635460 (= lt!597265 (maxPrefix!1360 thiss!17113 (t!149668 rules!1846) (originalCharacters!3981 (h!23375 tokens!457))))))

(declare-fun d!492556 () Bool)

(declare-fun e!1048810 () Bool)

(assert (=> d!492556 e!1048810))

(declare-fun res!732253 () Bool)

(assert (=> d!492556 (=> res!732253 e!1048810)))

(declare-fun lt!597263 () Option!3369)

(assert (=> d!492556 (= res!732253 (isEmpty!11008 lt!597263))))

(assert (=> d!492556 (= lt!597263 e!1048811)))

(declare-fun c!266151 () Bool)

(assert (=> d!492556 (= c!266151 (and ((_ is Cons!17973) rules!1846) ((_ is Nil!17973) (t!149668 rules!1846))))))

(declare-fun lt!597267 () Unit!29354)

(declare-fun lt!597266 () Unit!29354)

(assert (=> d!492556 (= lt!597267 lt!597266)))

(assert (=> d!492556 (isPrefix!1427 (originalCharacters!3981 (h!23375 tokens!457)) (originalCharacters!3981 (h!23375 tokens!457)))))

(assert (=> d!492556 (= lt!597266 (lemmaIsPrefixRefl!972 (originalCharacters!3981 (h!23375 tokens!457)) (originalCharacters!3981 (h!23375 tokens!457))))))

(assert (=> d!492556 (rulesValidInductive!988 thiss!17113 rules!1846)))

(assert (=> d!492556 (= (maxPrefix!1360 thiss!17113 rules!1846 (originalCharacters!3981 (h!23375 tokens!457))) lt!597263)))

(declare-fun b!1635461 () Bool)

(declare-fun e!1048812 () Bool)

(assert (=> b!1635461 (= e!1048810 e!1048812)))

(declare-fun res!732256 () Bool)

(assert (=> b!1635461 (=> (not res!732256) (not e!1048812))))

(assert (=> b!1635461 (= res!732256 (isDefined!2736 lt!597263))))

(declare-fun b!1635462 () Bool)

(declare-fun res!732251 () Bool)

(assert (=> b!1635462 (=> (not res!732251) (not e!1048812))))

(assert (=> b!1635462 (= res!732251 (matchR!1994 (regex!3167 (rule!5007 (_1!10198 (get!5204 lt!597263)))) (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!597263))))))))

(declare-fun b!1635463 () Bool)

(declare-fun res!732257 () Bool)

(assert (=> b!1635463 (=> (not res!732257) (not e!1048812))))

(assert (=> b!1635463 (= res!732257 (< (size!14345 (_2!10198 (get!5204 lt!597263))) (size!14345 (originalCharacters!3981 (h!23375 tokens!457)))))))

(declare-fun b!1635464 () Bool)

(declare-fun res!732252 () Bool)

(assert (=> b!1635464 (=> (not res!732252) (not e!1048812))))

(assert (=> b!1635464 (= res!732252 (= (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!597263)))) (originalCharacters!3981 (_1!10198 (get!5204 lt!597263)))))))

(declare-fun b!1635465 () Bool)

(declare-fun res!732254 () Bool)

(assert (=> b!1635465 (=> (not res!732254) (not e!1048812))))

(assert (=> b!1635465 (= res!732254 (= (++!4809 (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!597263)))) (_2!10198 (get!5204 lt!597263))) (originalCharacters!3981 (h!23375 tokens!457))))))

(declare-fun b!1635466 () Bool)

(declare-fun res!732255 () Bool)

(assert (=> b!1635466 (=> (not res!732255) (not e!1048812))))

(assert (=> b!1635466 (= res!732255 (= (value!99932 (_1!10198 (get!5204 lt!597263))) (apply!4648 (transformation!3167 (rule!5007 (_1!10198 (get!5204 lt!597263)))) (seqFromList!2084 (originalCharacters!3981 (_1!10198 (get!5204 lt!597263)))))))))

(declare-fun b!1635467 () Bool)

(assert (=> b!1635467 (= e!1048812 (contains!3138 rules!1846 (rule!5007 (_1!10198 (get!5204 lt!597263)))))))

(declare-fun bm!105630 () Bool)

(assert (=> bm!105630 (= call!105635 (maxPrefixOneRule!787 thiss!17113 (h!23374 rules!1846) (originalCharacters!3981 (h!23375 tokens!457))))))

(declare-fun b!1635468 () Bool)

(assert (=> b!1635468 (= e!1048811 call!105635)))

(assert (= (and d!492556 c!266151) b!1635468))

(assert (= (and d!492556 (not c!266151)) b!1635460))

(assert (= (or b!1635468 b!1635460) bm!105630))

(assert (= (and d!492556 (not res!732253)) b!1635461))

(assert (= (and b!1635461 res!732256) b!1635464))

(assert (= (and b!1635464 res!732252) b!1635463))

(assert (= (and b!1635463 res!732257) b!1635465))

(assert (= (and b!1635465 res!732254) b!1635466))

(assert (= (and b!1635466 res!732255) b!1635462))

(assert (= (and b!1635462 res!732251) b!1635467))

(declare-fun m!1972057 () Bool)

(assert (=> b!1635467 m!1972057))

(declare-fun m!1972059 () Bool)

(assert (=> b!1635467 m!1972059))

(declare-fun m!1972061 () Bool)

(assert (=> bm!105630 m!1972061))

(assert (=> b!1635462 m!1972057))

(declare-fun m!1972063 () Bool)

(assert (=> b!1635462 m!1972063))

(assert (=> b!1635462 m!1972063))

(declare-fun m!1972065 () Bool)

(assert (=> b!1635462 m!1972065))

(assert (=> b!1635462 m!1972065))

(declare-fun m!1972067 () Bool)

(assert (=> b!1635462 m!1972067))

(assert (=> b!1635463 m!1972057))

(declare-fun m!1972069 () Bool)

(assert (=> b!1635463 m!1972069))

(assert (=> b!1635463 m!1971479))

(assert (=> b!1635464 m!1972057))

(assert (=> b!1635464 m!1972063))

(assert (=> b!1635464 m!1972063))

(assert (=> b!1635464 m!1972065))

(assert (=> b!1635466 m!1972057))

(declare-fun m!1972071 () Bool)

(assert (=> b!1635466 m!1972071))

(assert (=> b!1635466 m!1972071))

(declare-fun m!1972073 () Bool)

(assert (=> b!1635466 m!1972073))

(declare-fun m!1972075 () Bool)

(assert (=> b!1635460 m!1972075))

(assert (=> b!1635465 m!1972057))

(assert (=> b!1635465 m!1972063))

(assert (=> b!1635465 m!1972063))

(assert (=> b!1635465 m!1972065))

(assert (=> b!1635465 m!1972065))

(declare-fun m!1972077 () Bool)

(assert (=> b!1635465 m!1972077))

(declare-fun m!1972079 () Bool)

(assert (=> d!492556 m!1972079))

(declare-fun m!1972081 () Bool)

(assert (=> d!492556 m!1972081))

(declare-fun m!1972083 () Bool)

(assert (=> d!492556 m!1972083))

(assert (=> d!492556 m!1970823))

(declare-fun m!1972085 () Bool)

(assert (=> b!1635461 m!1972085))

(assert (=> b!1634827 d!492556))

(declare-fun d!492558 () Bool)

(assert (=> d!492558 (= (isDefined!2736 (maxPrefix!1360 thiss!17113 rules!1846 (originalCharacters!3981 (h!23375 tokens!457)))) (not (isEmpty!11008 (maxPrefix!1360 thiss!17113 rules!1846 (originalCharacters!3981 (h!23375 tokens!457))))))))

(declare-fun bs!395375 () Bool)

(assert (= bs!395375 d!492558))

(assert (=> bs!395375 m!1970801))

(declare-fun m!1972087 () Bool)

(assert (=> bs!395375 m!1972087))

(assert (=> b!1634827 d!492558))

(declare-fun d!492560 () Bool)

(assert (=> d!492560 (= (isDefined!2736 lt!596471) (not (isEmpty!11008 lt!596471)))))

(declare-fun bs!395376 () Bool)

(assert (= bs!395376 d!492560))

(declare-fun m!1972089 () Bool)

(assert (=> bs!395376 m!1972089))

(assert (=> b!1634827 d!492560))

(declare-fun b!1635469 () Bool)

(declare-fun e!1048814 () Option!3369)

(declare-fun lt!597269 () Option!3369)

(declare-fun lt!597270 () Option!3369)

(assert (=> b!1635469 (= e!1048814 (ite (and ((_ is None!3368) lt!597269) ((_ is None!3368) lt!597270)) None!3368 (ite ((_ is None!3368) lt!597270) lt!597269 (ite ((_ is None!3368) lt!597269) lt!597270 (ite (>= (size!14340 (_1!10198 (v!24445 lt!597269))) (size!14340 (_1!10198 (v!24445 lt!597270)))) lt!597269 lt!597270)))))))

(declare-fun call!105636 () Option!3369)

(assert (=> b!1635469 (= lt!597269 call!105636)))

(assert (=> b!1635469 (= lt!597270 (maxPrefix!1360 thiss!17113 (t!149668 rules!1846) lt!596490))))

(declare-fun d!492562 () Bool)

(declare-fun e!1048813 () Bool)

(assert (=> d!492562 e!1048813))

(declare-fun res!732260 () Bool)

(assert (=> d!492562 (=> res!732260 e!1048813)))

(declare-fun lt!597268 () Option!3369)

(assert (=> d!492562 (= res!732260 (isEmpty!11008 lt!597268))))

(assert (=> d!492562 (= lt!597268 e!1048814)))

(declare-fun c!266152 () Bool)

(assert (=> d!492562 (= c!266152 (and ((_ is Cons!17973) rules!1846) ((_ is Nil!17973) (t!149668 rules!1846))))))

(declare-fun lt!597272 () Unit!29354)

(declare-fun lt!597271 () Unit!29354)

(assert (=> d!492562 (= lt!597272 lt!597271)))

(assert (=> d!492562 (isPrefix!1427 lt!596490 lt!596490)))

(assert (=> d!492562 (= lt!597271 (lemmaIsPrefixRefl!972 lt!596490 lt!596490))))

(assert (=> d!492562 (rulesValidInductive!988 thiss!17113 rules!1846)))

(assert (=> d!492562 (= (maxPrefix!1360 thiss!17113 rules!1846 lt!596490) lt!597268)))

(declare-fun b!1635470 () Bool)

(declare-fun e!1048815 () Bool)

(assert (=> b!1635470 (= e!1048813 e!1048815)))

(declare-fun res!732263 () Bool)

(assert (=> b!1635470 (=> (not res!732263) (not e!1048815))))

(assert (=> b!1635470 (= res!732263 (isDefined!2736 lt!597268))))

(declare-fun b!1635471 () Bool)

(declare-fun res!732258 () Bool)

(assert (=> b!1635471 (=> (not res!732258) (not e!1048815))))

(assert (=> b!1635471 (= res!732258 (matchR!1994 (regex!3167 (rule!5007 (_1!10198 (get!5204 lt!597268)))) (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!597268))))))))

(declare-fun b!1635472 () Bool)

(declare-fun res!732264 () Bool)

(assert (=> b!1635472 (=> (not res!732264) (not e!1048815))))

(assert (=> b!1635472 (= res!732264 (< (size!14345 (_2!10198 (get!5204 lt!597268))) (size!14345 lt!596490)))))

(declare-fun b!1635473 () Bool)

(declare-fun res!732259 () Bool)

(assert (=> b!1635473 (=> (not res!732259) (not e!1048815))))

(assert (=> b!1635473 (= res!732259 (= (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!597268)))) (originalCharacters!3981 (_1!10198 (get!5204 lt!597268)))))))

(declare-fun b!1635474 () Bool)

(declare-fun res!732261 () Bool)

(assert (=> b!1635474 (=> (not res!732261) (not e!1048815))))

(assert (=> b!1635474 (= res!732261 (= (++!4809 (list!7079 (charsOf!1816 (_1!10198 (get!5204 lt!597268)))) (_2!10198 (get!5204 lt!597268))) lt!596490))))

(declare-fun b!1635475 () Bool)

(declare-fun res!732262 () Bool)

(assert (=> b!1635475 (=> (not res!732262) (not e!1048815))))

(assert (=> b!1635475 (= res!732262 (= (value!99932 (_1!10198 (get!5204 lt!597268))) (apply!4648 (transformation!3167 (rule!5007 (_1!10198 (get!5204 lt!597268)))) (seqFromList!2084 (originalCharacters!3981 (_1!10198 (get!5204 lt!597268)))))))))

(declare-fun b!1635476 () Bool)

(assert (=> b!1635476 (= e!1048815 (contains!3138 rules!1846 (rule!5007 (_1!10198 (get!5204 lt!597268)))))))

(declare-fun bm!105631 () Bool)

(assert (=> bm!105631 (= call!105636 (maxPrefixOneRule!787 thiss!17113 (h!23374 rules!1846) lt!596490))))

(declare-fun b!1635477 () Bool)

(assert (=> b!1635477 (= e!1048814 call!105636)))

(assert (= (and d!492562 c!266152) b!1635477))

(assert (= (and d!492562 (not c!266152)) b!1635469))

(assert (= (or b!1635477 b!1635469) bm!105631))

(assert (= (and d!492562 (not res!732260)) b!1635470))

(assert (= (and b!1635470 res!732263) b!1635473))

(assert (= (and b!1635473 res!732259) b!1635472))

(assert (= (and b!1635472 res!732264) b!1635474))

(assert (= (and b!1635474 res!732261) b!1635475))

(assert (= (and b!1635475 res!732262) b!1635471))

(assert (= (and b!1635471 res!732258) b!1635476))

(declare-fun m!1972091 () Bool)

(assert (=> b!1635476 m!1972091))

(declare-fun m!1972093 () Bool)

(assert (=> b!1635476 m!1972093))

(declare-fun m!1972095 () Bool)

(assert (=> bm!105631 m!1972095))

(assert (=> b!1635471 m!1972091))

(declare-fun m!1972097 () Bool)

(assert (=> b!1635471 m!1972097))

(assert (=> b!1635471 m!1972097))

(declare-fun m!1972099 () Bool)

(assert (=> b!1635471 m!1972099))

(assert (=> b!1635471 m!1972099))

(declare-fun m!1972101 () Bool)

(assert (=> b!1635471 m!1972101))

(assert (=> b!1635472 m!1972091))

(declare-fun m!1972103 () Bool)

(assert (=> b!1635472 m!1972103))

(assert (=> b!1635472 m!1971463))

(assert (=> b!1635473 m!1972091))

(assert (=> b!1635473 m!1972097))

(assert (=> b!1635473 m!1972097))

(assert (=> b!1635473 m!1972099))

(assert (=> b!1635475 m!1972091))

(declare-fun m!1972105 () Bool)

(assert (=> b!1635475 m!1972105))

(assert (=> b!1635475 m!1972105))

(declare-fun m!1972107 () Bool)

(assert (=> b!1635475 m!1972107))

(declare-fun m!1972109 () Bool)

(assert (=> b!1635469 m!1972109))

(assert (=> b!1635474 m!1972091))

(assert (=> b!1635474 m!1972097))

(assert (=> b!1635474 m!1972097))

(assert (=> b!1635474 m!1972099))

(assert (=> b!1635474 m!1972099))

(declare-fun m!1972111 () Bool)

(assert (=> b!1635474 m!1972111))

(declare-fun m!1972113 () Bool)

(assert (=> d!492562 m!1972113))

(declare-fun m!1972115 () Bool)

(assert (=> d!492562 m!1972115))

(declare-fun m!1972117 () Bool)

(assert (=> d!492562 m!1972117))

(assert (=> d!492562 m!1970823))

(declare-fun m!1972119 () Bool)

(assert (=> b!1635470 m!1972119))

(assert (=> b!1634827 d!492562))

(declare-fun d!492564 () Bool)

(declare-fun c!266153 () Bool)

(assert (=> d!492564 (= c!266153 (isEmpty!11005 (++!4809 (originalCharacters!3981 (h!23375 tokens!457)) lt!596481)))))

(declare-fun e!1048816 () Bool)

(assert (=> d!492564 (= (prefixMatch!430 lt!596463 (++!4809 (originalCharacters!3981 (h!23375 tokens!457)) lt!596481)) e!1048816)))

(declare-fun b!1635478 () Bool)

(assert (=> b!1635478 (= e!1048816 (not (lostCause!450 lt!596463)))))

(declare-fun b!1635479 () Bool)

(assert (=> b!1635479 (= e!1048816 (prefixMatch!430 (derivativeStep!1094 lt!596463 (head!3515 (++!4809 (originalCharacters!3981 (h!23375 tokens!457)) lt!596481))) (tail!2390 (++!4809 (originalCharacters!3981 (h!23375 tokens!457)) lt!596481))))))

(assert (= (and d!492564 c!266153) b!1635478))

(assert (= (and d!492564 (not c!266153)) b!1635479))

(assert (=> d!492564 m!1970799))

(declare-fun m!1972121 () Bool)

(assert (=> d!492564 m!1972121))

(assert (=> b!1635478 m!1971737))

(assert (=> b!1635479 m!1970799))

(declare-fun m!1972123 () Bool)

(assert (=> b!1635479 m!1972123))

(assert (=> b!1635479 m!1972123))

(declare-fun m!1972125 () Bool)

(assert (=> b!1635479 m!1972125))

(assert (=> b!1635479 m!1970799))

(declare-fun m!1972127 () Bool)

(assert (=> b!1635479 m!1972127))

(assert (=> b!1635479 m!1972125))

(assert (=> b!1635479 m!1972127))

(declare-fun m!1972129 () Bool)

(assert (=> b!1635479 m!1972129))

(assert (=> b!1634827 d!492564))

(declare-fun b!1635482 () Bool)

(declare-fun res!732266 () Bool)

(declare-fun e!1048818 () Bool)

(assert (=> b!1635482 (=> (not res!732266) (not e!1048818))))

(declare-fun lt!597273 () List!18042)

(assert (=> b!1635482 (= res!732266 (= (size!14345 lt!597273) (+ (size!14345 (originalCharacters!3981 (h!23375 tokens!457))) (size!14345 lt!596481))))))

(declare-fun b!1635483 () Bool)

(assert (=> b!1635483 (= e!1048818 (or (not (= lt!596481 Nil!17972)) (= lt!597273 (originalCharacters!3981 (h!23375 tokens!457)))))))

(declare-fun b!1635480 () Bool)

(declare-fun e!1048817 () List!18042)

(assert (=> b!1635480 (= e!1048817 lt!596481)))

(declare-fun d!492566 () Bool)

(assert (=> d!492566 e!1048818))

(declare-fun res!732265 () Bool)

(assert (=> d!492566 (=> (not res!732265) (not e!1048818))))

(assert (=> d!492566 (= res!732265 (= (content!2491 lt!597273) ((_ map or) (content!2491 (originalCharacters!3981 (h!23375 tokens!457))) (content!2491 lt!596481))))))

(assert (=> d!492566 (= lt!597273 e!1048817)))

(declare-fun c!266154 () Bool)

(assert (=> d!492566 (= c!266154 ((_ is Nil!17972) (originalCharacters!3981 (h!23375 tokens!457))))))

(assert (=> d!492566 (= (++!4809 (originalCharacters!3981 (h!23375 tokens!457)) lt!596481) lt!597273)))

(declare-fun b!1635481 () Bool)

(assert (=> b!1635481 (= e!1048817 (Cons!17972 (h!23373 (originalCharacters!3981 (h!23375 tokens!457))) (++!4809 (t!149667 (originalCharacters!3981 (h!23375 tokens!457))) lt!596481)))))

(assert (= (and d!492566 c!266154) b!1635480))

(assert (= (and d!492566 (not c!266154)) b!1635481))

(assert (= (and d!492566 res!732265) b!1635482))

(assert (= (and b!1635482 res!732266) b!1635483))

(declare-fun m!1972131 () Bool)

(assert (=> b!1635482 m!1972131))

(assert (=> b!1635482 m!1971479))

(assert (=> b!1635482 m!1971749))

(declare-fun m!1972133 () Bool)

(assert (=> d!492566 m!1972133))

(declare-fun m!1972135 () Bool)

(assert (=> d!492566 m!1972135))

(assert (=> d!492566 m!1971755))

(declare-fun m!1972137 () Bool)

(assert (=> b!1635481 m!1972137))

(assert (=> b!1634827 d!492566))

(declare-fun d!492568 () Bool)

(assert (=> d!492568 (= (isDefined!2736 lt!596489) (not (isEmpty!11008 lt!596489)))))

(declare-fun bs!395377 () Bool)

(assert (= bs!395377 d!492568))

(declare-fun m!1972139 () Bool)

(assert (=> bs!395377 m!1972139))

(assert (=> b!1634848 d!492568))

(declare-fun d!492570 () Bool)

(assert (=> d!492570 (isDefined!2736 (maxPrefix!1360 thiss!17113 rules!1846 (++!4809 lt!596490 lt!596485)))))

(declare-fun lt!597569 () Unit!29354)

(declare-fun e!1048851 () Unit!29354)

(assert (=> d!492570 (= lt!597569 e!1048851)))

(declare-fun c!266175 () Bool)

(assert (=> d!492570 (= c!266175 (isEmpty!11008 (maxPrefix!1360 thiss!17113 rules!1846 (++!4809 lt!596490 lt!596485))))))

(declare-fun lt!597558 () Unit!29354)

(declare-fun lt!597571 () Unit!29354)

(assert (=> d!492570 (= lt!597558 lt!597571)))

(declare-fun e!1048852 () Bool)

(assert (=> d!492570 e!1048852))

(declare-fun res!732285 () Bool)

(assert (=> d!492570 (=> (not res!732285) (not e!1048852))))

(declare-fun lt!597566 () Token!5900)

(assert (=> d!492570 (= res!732285 (isDefined!2739 (getRuleFromTag!296 thiss!17113 rules!1846 (tag!3447 (rule!5007 lt!597566)))))))

(assert (=> d!492570 (= lt!597571 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!296 thiss!17113 rules!1846 lt!596490 lt!597566))))

(declare-fun lt!597568 () Unit!29354)

(declare-fun lt!597559 () Unit!29354)

(assert (=> d!492570 (= lt!597568 lt!597559)))

(declare-fun lt!597561 () List!18042)

(assert (=> d!492570 (isPrefix!1427 lt!597561 (++!4809 lt!596490 lt!596485))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!182 (List!18042 List!18042 List!18042) Unit!29354)

(assert (=> d!492570 (= lt!597559 (lemmaPrefixStaysPrefixWhenAddingToSuffix!182 lt!597561 lt!596490 lt!596485))))

(assert (=> d!492570 (= lt!597561 (list!7079 (charsOf!1816 lt!597566)))))

(declare-fun lt!597565 () Unit!29354)

(declare-fun lt!597557 () Unit!29354)

(assert (=> d!492570 (= lt!597565 lt!597557)))

(declare-fun lt!597567 () List!18042)

(declare-fun lt!597562 () List!18042)

(assert (=> d!492570 (isPrefix!1427 lt!597567 (++!4809 lt!597567 lt!597562))))

(assert (=> d!492570 (= lt!597557 (lemmaConcatTwoListThenFirstIsPrefix!952 lt!597567 lt!597562))))

(assert (=> d!492570 (= lt!597562 (_2!10198 (get!5204 (maxPrefix!1360 thiss!17113 rules!1846 lt!596490))))))

(assert (=> d!492570 (= lt!597567 (list!7079 (charsOf!1816 lt!597566)))))

(assert (=> d!492570 (= lt!597566 (head!3517 (list!7080 (_1!10197 (lex!1280 thiss!17113 rules!1846 (seqFromList!2084 lt!596490))))))))

(assert (=> d!492570 (not (isEmpty!11003 rules!1846))))

(assert (=> d!492570 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!370 thiss!17113 rules!1846 lt!596490 lt!596485) lt!597569)))

(declare-fun b!1635544 () Bool)

(declare-fun Unit!29418 () Unit!29354)

(assert (=> b!1635544 (= e!1048851 Unit!29418)))

(declare-fun b!1635543 () Bool)

(declare-fun Unit!29419 () Unit!29354)

(assert (=> b!1635543 (= e!1048851 Unit!29419)))

(declare-fun lt!597573 () List!18042)

(assert (=> b!1635543 (= lt!597573 (++!4809 lt!596490 lt!596485))))

(declare-fun lt!597570 () Unit!29354)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!190 (LexerInterface!2796 Rule!6134 List!18043 List!18042) Unit!29354)

(assert (=> b!1635543 (= lt!597570 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!190 thiss!17113 (rule!5007 lt!597566) rules!1846 lt!597573))))

(assert (=> b!1635543 (isEmpty!11008 (maxPrefixOneRule!787 thiss!17113 (rule!5007 lt!597566) lt!597573))))

(declare-fun lt!597560 () Unit!29354)

(assert (=> b!1635543 (= lt!597560 lt!597570)))

(declare-fun lt!597563 () List!18042)

(assert (=> b!1635543 (= lt!597563 (list!7079 (charsOf!1816 lt!597566)))))

(declare-fun lt!597564 () Unit!29354)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!186 (LexerInterface!2796 Rule!6134 List!18042 List!18042) Unit!29354)

(assert (=> b!1635543 (= lt!597564 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!186 thiss!17113 (rule!5007 lt!597566) lt!597563 (++!4809 lt!596490 lt!596485)))))

(assert (=> b!1635543 (not (matchR!1994 (regex!3167 (rule!5007 lt!597566)) lt!597563))))

(declare-fun lt!597572 () Unit!29354)

(assert (=> b!1635543 (= lt!597572 lt!597564)))

(assert (=> b!1635543 false))

(declare-fun b!1635541 () Bool)

(declare-fun res!732284 () Bool)

(assert (=> b!1635541 (=> (not res!732284) (not e!1048852))))

(assert (=> b!1635541 (= res!732284 (matchR!1994 (regex!3167 (get!5207 (getRuleFromTag!296 thiss!17113 rules!1846 (tag!3447 (rule!5007 lt!597566))))) (list!7079 (charsOf!1816 lt!597566))))))

(declare-fun b!1635542 () Bool)

(assert (=> b!1635542 (= e!1048852 (= (rule!5007 lt!597566) (get!5207 (getRuleFromTag!296 thiss!17113 rules!1846 (tag!3447 (rule!5007 lt!597566))))))))

(assert (= (and d!492570 res!732285) b!1635541))

(assert (= (and b!1635541 res!732284) b!1635542))

(assert (= (and d!492570 c!266175) b!1635543))

(assert (= (and d!492570 (not c!266175)) b!1635544))

(assert (=> d!492570 m!1970809))

(declare-fun m!1972301 () Bool)

(assert (=> d!492570 m!1972301))

(assert (=> d!492570 m!1970737))

(declare-fun m!1972303 () Bool)

(assert (=> d!492570 m!1972303))

(declare-fun m!1972305 () Bool)

(assert (=> d!492570 m!1972305))

(assert (=> d!492570 m!1970809))

(assert (=> d!492570 m!1972305))

(declare-fun m!1972307 () Bool)

(assert (=> d!492570 m!1972307))

(assert (=> d!492570 m!1970737))

(declare-fun m!1972309 () Bool)

(assert (=> d!492570 m!1972309))

(declare-fun m!1972311 () Bool)

(assert (=> d!492570 m!1972311))

(declare-fun m!1972313 () Bool)

(assert (=> d!492570 m!1972313))

(assert (=> d!492570 m!1972309))

(declare-fun m!1972315 () Bool)

(assert (=> d!492570 m!1972315))

(declare-fun m!1972317 () Bool)

(assert (=> d!492570 m!1972317))

(declare-fun m!1972319 () Bool)

(assert (=> d!492570 m!1972319))

(assert (=> d!492570 m!1970737))

(declare-fun m!1972321 () Bool)

(assert (=> d!492570 m!1972321))

(declare-fun m!1972323 () Bool)

(assert (=> d!492570 m!1972323))

(assert (=> d!492570 m!1970703))

(assert (=> d!492570 m!1972321))

(declare-fun m!1972325 () Bool)

(assert (=> d!492570 m!1972325))

(declare-fun m!1972327 () Bool)

(assert (=> d!492570 m!1972327))

(assert (=> d!492570 m!1972317))

(assert (=> d!492570 m!1972309))

(declare-fun m!1972329 () Bool)

(assert (=> d!492570 m!1972329))

(assert (=> d!492570 m!1970835))

(assert (=> d!492570 m!1970703))

(assert (=> d!492570 m!1970705))

(assert (=> d!492570 m!1972327))

(declare-fun m!1972331 () Bool)

(assert (=> d!492570 m!1972331))

(assert (=> b!1635543 m!1970737))

(declare-fun m!1972333 () Bool)

(assert (=> b!1635543 m!1972333))

(declare-fun m!1972335 () Bool)

(assert (=> b!1635543 m!1972335))

(declare-fun m!1972337 () Bool)

(assert (=> b!1635543 m!1972337))

(declare-fun m!1972339 () Bool)

(assert (=> b!1635543 m!1972339))

(assert (=> b!1635543 m!1972335))

(assert (=> b!1635543 m!1972327))

(assert (=> b!1635543 m!1972327))

(assert (=> b!1635543 m!1972331))

(assert (=> b!1635543 m!1970737))

(declare-fun m!1972341 () Bool)

(assert (=> b!1635543 m!1972341))

(assert (=> b!1635541 m!1972327))

(assert (=> b!1635541 m!1972331))

(declare-fun m!1972343 () Bool)

(assert (=> b!1635541 m!1972343))

(assert (=> b!1635541 m!1972327))

(assert (=> b!1635541 m!1972331))

(assert (=> b!1635541 m!1972321))

(declare-fun m!1972345 () Bool)

(assert (=> b!1635541 m!1972345))

(assert (=> b!1635541 m!1972321))

(assert (=> b!1635542 m!1972321))

(assert (=> b!1635542 m!1972321))

(assert (=> b!1635542 m!1972345))

(assert (=> b!1634848 d!492570))

(declare-fun d!492584 () Bool)

(declare-fun c!266179 () Bool)

(assert (=> d!492584 (= c!266179 (isEmpty!11005 (++!4809 lt!596490 lt!596480)))))

(declare-fun e!1048855 () Bool)

(assert (=> d!492584 (= (prefixMatch!430 lt!596463 (++!4809 lt!596490 lt!596480)) e!1048855)))

(declare-fun b!1635553 () Bool)

(assert (=> b!1635553 (= e!1048855 (not (lostCause!450 lt!596463)))))

(declare-fun b!1635554 () Bool)

(assert (=> b!1635554 (= e!1048855 (prefixMatch!430 (derivativeStep!1094 lt!596463 (head!3515 (++!4809 lt!596490 lt!596480))) (tail!2390 (++!4809 lt!596490 lt!596480))))))

(assert (= (and d!492584 c!266179) b!1635553))

(assert (= (and d!492584 (not c!266179)) b!1635554))

(assert (=> d!492584 m!1970837))

(declare-fun m!1972347 () Bool)

(assert (=> d!492584 m!1972347))

(assert (=> b!1635553 m!1971737))

(assert (=> b!1635554 m!1970837))

(declare-fun m!1972349 () Bool)

(assert (=> b!1635554 m!1972349))

(assert (=> b!1635554 m!1972349))

(declare-fun m!1972351 () Bool)

(assert (=> b!1635554 m!1972351))

(assert (=> b!1635554 m!1970837))

(declare-fun m!1972353 () Bool)

(assert (=> b!1635554 m!1972353))

(assert (=> b!1635554 m!1972351))

(assert (=> b!1635554 m!1972353))

(declare-fun m!1972355 () Bool)

(assert (=> b!1635554 m!1972355))

(assert (=> b!1634826 d!492584))

(declare-fun b!1635557 () Bool)

(declare-fun res!732295 () Bool)

(declare-fun e!1048857 () Bool)

(assert (=> b!1635557 (=> (not res!732295) (not e!1048857))))

(declare-fun lt!597576 () List!18042)

(assert (=> b!1635557 (= res!732295 (= (size!14345 lt!597576) (+ (size!14345 lt!596490) (size!14345 lt!596480))))))

(declare-fun b!1635558 () Bool)

(assert (=> b!1635558 (= e!1048857 (or (not (= lt!596480 Nil!17972)) (= lt!597576 lt!596490)))))

(declare-fun b!1635555 () Bool)

(declare-fun e!1048856 () List!18042)

(assert (=> b!1635555 (= e!1048856 lt!596480)))

(declare-fun d!492586 () Bool)

(assert (=> d!492586 e!1048857))

(declare-fun res!732294 () Bool)

(assert (=> d!492586 (=> (not res!732294) (not e!1048857))))

(assert (=> d!492586 (= res!732294 (= (content!2491 lt!597576) ((_ map or) (content!2491 lt!596490) (content!2491 lt!596480))))))

(assert (=> d!492586 (= lt!597576 e!1048856)))

(declare-fun c!266180 () Bool)

(assert (=> d!492586 (= c!266180 ((_ is Nil!17972) lt!596490))))

(assert (=> d!492586 (= (++!4809 lt!596490 lt!596480) lt!597576)))

(declare-fun b!1635556 () Bool)

(assert (=> b!1635556 (= e!1048856 (Cons!17972 (h!23373 lt!596490) (++!4809 (t!149667 lt!596490) lt!596480)))))

(assert (= (and d!492586 c!266180) b!1635555))

(assert (= (and d!492586 (not c!266180)) b!1635556))

(assert (= (and d!492586 res!732294) b!1635557))

(assert (= (and b!1635557 res!732295) b!1635558))

(declare-fun m!1972357 () Bool)

(assert (=> b!1635557 m!1972357))

(assert (=> b!1635557 m!1971463))

(declare-fun m!1972359 () Bool)

(assert (=> b!1635557 m!1972359))

(declare-fun m!1972361 () Bool)

(assert (=> d!492586 m!1972361))

(assert (=> d!492586 m!1971753))

(declare-fun m!1972363 () Bool)

(assert (=> d!492586 m!1972363))

(declare-fun m!1972365 () Bool)

(assert (=> b!1635556 m!1972365))

(assert (=> b!1634826 d!492586))

(declare-fun d!492588 () Bool)

(assert (=> d!492588 (= (list!7079 lt!596473) (list!7083 (c!266027 lt!596473)))))

(declare-fun bs!395379 () Bool)

(assert (= bs!395379 d!492588))

(declare-fun m!1972367 () Bool)

(assert (=> bs!395379 m!1972367))

(assert (=> b!1634826 d!492588))

(declare-fun lt!597580 () Bool)

(declare-fun d!492590 () Bool)

(declare-fun isEmpty!11014 (List!18044) Bool)

(assert (=> d!492590 (= lt!597580 (isEmpty!11014 (list!7080 (_1!10197 (lex!1280 thiss!17113 rules!1846 (seqFromList!2084 lt!596490))))))))

(declare-fun isEmpty!11015 (Conc!5983) Bool)

(assert (=> d!492590 (= lt!597580 (isEmpty!11015 (c!266029 (_1!10197 (lex!1280 thiss!17113 rules!1846 (seqFromList!2084 lt!596490))))))))

(assert (=> d!492590 (= (isEmpty!11004 (_1!10197 (lex!1280 thiss!17113 rules!1846 (seqFromList!2084 lt!596490)))) lt!597580)))

(declare-fun bs!395380 () Bool)

(assert (= bs!395380 d!492590))

(assert (=> bs!395380 m!1972317))

(assert (=> bs!395380 m!1972317))

(declare-fun m!1972375 () Bool)

(assert (=> bs!395380 m!1972375))

(declare-fun m!1972379 () Bool)

(assert (=> bs!395380 m!1972379))

(assert (=> b!1634825 d!492590))

(declare-fun b!1635563 () Bool)

(declare-fun e!1048860 () Bool)

(declare-fun lt!597581 () tuple2!17590)

(assert (=> b!1635563 (= e!1048860 (not (isEmpty!11004 (_1!10197 lt!597581))))))

(declare-fun b!1635564 () Bool)

(declare-fun res!732301 () Bool)

(declare-fun e!1048861 () Bool)

(assert (=> b!1635564 (=> (not res!732301) (not e!1048861))))

(assert (=> b!1635564 (= res!732301 (= (list!7080 (_1!10197 lt!597581)) (_1!10201 (lexList!841 thiss!17113 rules!1846 (list!7079 (seqFromList!2084 lt!596490))))))))

(declare-fun d!492592 () Bool)

(assert (=> d!492592 e!1048861))

(declare-fun res!732302 () Bool)

(assert (=> d!492592 (=> (not res!732302) (not e!1048861))))

(declare-fun e!1048859 () Bool)

(assert (=> d!492592 (= res!732302 e!1048859)))

(declare-fun c!266181 () Bool)

(assert (=> d!492592 (= c!266181 (> (size!14346 (_1!10197 lt!597581)) 0))))

(assert (=> d!492592 (= lt!597581 (lexTailRecV2!564 thiss!17113 rules!1846 (seqFromList!2084 lt!596490) (BalanceConc!11909 Empty!5982) (seqFromList!2084 lt!596490) (BalanceConc!11911 Empty!5983)))))

(assert (=> d!492592 (= (lex!1280 thiss!17113 rules!1846 (seqFromList!2084 lt!596490)) lt!597581)))

(declare-fun b!1635565 () Bool)

(assert (=> b!1635565 (= e!1048859 (= (_2!10197 lt!597581) (seqFromList!2084 lt!596490)))))

(declare-fun b!1635566 () Bool)

(assert (=> b!1635566 (= e!1048859 e!1048860)))

(declare-fun res!732300 () Bool)

(assert (=> b!1635566 (= res!732300 (< (size!14344 (_2!10197 lt!597581)) (size!14344 (seqFromList!2084 lt!596490))))))

(assert (=> b!1635566 (=> (not res!732300) (not e!1048860))))

(declare-fun b!1635567 () Bool)

(assert (=> b!1635567 (= e!1048861 (= (list!7079 (_2!10197 lt!597581)) (_2!10201 (lexList!841 thiss!17113 rules!1846 (list!7079 (seqFromList!2084 lt!596490))))))))

(assert (= (and d!492592 c!266181) b!1635566))

(assert (= (and d!492592 (not c!266181)) b!1635565))

(assert (= (and b!1635566 res!732300) b!1635563))

(assert (= (and d!492592 res!732302) b!1635564))

(assert (= (and b!1635564 res!732301) b!1635567))

(declare-fun m!1972391 () Bool)

(assert (=> b!1635564 m!1972391))

(assert (=> b!1635564 m!1970703))

(declare-fun m!1972393 () Bool)

(assert (=> b!1635564 m!1972393))

(assert (=> b!1635564 m!1972393))

(declare-fun m!1972395 () Bool)

(assert (=> b!1635564 m!1972395))

(declare-fun m!1972397 () Bool)

(assert (=> b!1635567 m!1972397))

(assert (=> b!1635567 m!1970703))

(assert (=> b!1635567 m!1972393))

(assert (=> b!1635567 m!1972393))

(assert (=> b!1635567 m!1972395))

(declare-fun m!1972399 () Bool)

(assert (=> b!1635563 m!1972399))

(declare-fun m!1972401 () Bool)

(assert (=> d!492592 m!1972401))

(assert (=> d!492592 m!1970703))

(assert (=> d!492592 m!1970703))

(declare-fun m!1972403 () Bool)

(assert (=> d!492592 m!1972403))

(declare-fun m!1972405 () Bool)

(assert (=> b!1635566 m!1972405))

(assert (=> b!1635566 m!1970703))

(declare-fun m!1972407 () Bool)

(assert (=> b!1635566 m!1972407))

(assert (=> b!1634825 d!492592))

(declare-fun d!492596 () Bool)

(assert (=> d!492596 (= (seqFromList!2084 lt!596490) (fromListB!917 lt!596490))))

(declare-fun bs!395381 () Bool)

(assert (= bs!395381 d!492596))

(declare-fun m!1972409 () Bool)

(assert (=> bs!395381 m!1972409))

(assert (=> b!1634825 d!492596))

(declare-fun d!492598 () Bool)

(declare-fun res!732305 () Bool)

(declare-fun e!1048864 () Bool)

(assert (=> d!492598 (=> (not res!732305) (not e!1048864))))

(declare-fun rulesValid!1140 (LexerInterface!2796 List!18043) Bool)

(assert (=> d!492598 (= res!732305 (rulesValid!1140 thiss!17113 rules!1846))))

(assert (=> d!492598 (= (rulesInvariant!2465 thiss!17113 rules!1846) e!1048864)))

(declare-fun b!1635570 () Bool)

(declare-datatypes ((List!18050 0))(
  ( (Nil!17980) (Cons!17980 (h!23381 String!20617) (t!149717 List!18050)) )
))
(declare-fun noDuplicateTag!1140 (LexerInterface!2796 List!18043 List!18050) Bool)

(assert (=> b!1635570 (= e!1048864 (noDuplicateTag!1140 thiss!17113 rules!1846 Nil!17980))))

(assert (= (and d!492598 res!732305) b!1635570))

(declare-fun m!1972411 () Bool)

(assert (=> d!492598 m!1972411))

(declare-fun m!1972413 () Bool)

(assert (=> b!1635570 m!1972413))

(assert (=> b!1634846 d!492598))

(declare-fun b!1635636 () Bool)

(declare-fun e!1048917 () Bool)

(assert (=> b!1635636 (= e!1048917 true)))

(declare-fun b!1635635 () Bool)

(declare-fun e!1048916 () Bool)

(assert (=> b!1635635 (= e!1048916 e!1048917)))

(declare-fun b!1635634 () Bool)

(declare-fun e!1048915 () Bool)

(assert (=> b!1635634 (= e!1048915 e!1048916)))

(declare-fun d!492600 () Bool)

(assert (=> d!492600 e!1048915))

(assert (= b!1635635 b!1635636))

(assert (= b!1635634 b!1635635))

(assert (= (and d!492600 ((_ is Cons!17973) rules!1846)) b!1635634))

(declare-fun order!10661 () Int)

(declare-fun lambda!67412 () Int)

(declare-fun order!10659 () Int)

(declare-fun dynLambda!8015 (Int Int) Int)

(declare-fun dynLambda!8016 (Int Int) Int)

(assert (=> b!1635636 (< (dynLambda!8015 order!10659 (toValue!4598 (transformation!3167 (h!23374 rules!1846)))) (dynLambda!8016 order!10661 lambda!67412))))

(declare-fun order!10663 () Int)

(declare-fun dynLambda!8017 (Int Int) Int)

(assert (=> b!1635636 (< (dynLambda!8017 order!10663 (toChars!4457 (transformation!3167 (h!23374 rules!1846)))) (dynLambda!8016 order!10661 lambda!67412))))

(assert (=> d!492600 true))

(declare-fun lt!597588 () Bool)

(declare-fun forall!4106 (List!18044 Int) Bool)

(assert (=> d!492600 (= lt!597588 (forall!4106 tokens!457 lambda!67412))))

(declare-fun e!1048908 () Bool)

(assert (=> d!492600 (= lt!597588 e!1048908)))

(declare-fun res!732311 () Bool)

(assert (=> d!492600 (=> res!732311 e!1048908)))

(assert (=> d!492600 (= res!732311 (not ((_ is Cons!17974) tokens!457)))))

(assert (=> d!492600 (not (isEmpty!11003 rules!1846))))

(assert (=> d!492600 (= (rulesProduceEachTokenIndividuallyList!998 thiss!17113 rules!1846 tokens!457) lt!597588)))

(declare-fun b!1635624 () Bool)

(declare-fun e!1048907 () Bool)

(assert (=> b!1635624 (= e!1048908 e!1048907)))

(declare-fun res!732310 () Bool)

(assert (=> b!1635624 (=> (not res!732310) (not e!1048907))))

(assert (=> b!1635624 (= res!732310 (rulesProduceIndividualToken!1448 thiss!17113 rules!1846 (h!23375 tokens!457)))))

(declare-fun b!1635625 () Bool)

(assert (=> b!1635625 (= e!1048907 (rulesProduceEachTokenIndividuallyList!998 thiss!17113 rules!1846 (t!149669 tokens!457)))))

(assert (= (and d!492600 (not res!732311)) b!1635624))

(assert (= (and b!1635624 res!732310) b!1635625))

(declare-fun m!1972441 () Bool)

(assert (=> d!492600 m!1972441))

(assert (=> d!492600 m!1970835))

(assert (=> b!1635624 m!1970795))

(declare-fun m!1972443 () Bool)

(assert (=> b!1635625 m!1972443))

(assert (=> b!1634824 d!492600))

(declare-fun d!492604 () Bool)

(assert (=> d!492604 (= (separableTokensPredicate!738 thiss!17113 (h!23375 tokens!457) (h!23375 (t!149669 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!567 (rulesRegex!557 thiss!17113 rules!1846) (++!4810 (charsOf!1816 (h!23375 tokens!457)) (singletonSeq!1612 (apply!4642 (charsOf!1816 (h!23375 (t!149669 tokens!457))) 0))))))))

(declare-fun bs!395383 () Bool)

(assert (= bs!395383 d!492604))

(assert (=> bs!395383 m!1970755))

(assert (=> bs!395383 m!1970723))

(assert (=> bs!395383 m!1970763))

(declare-fun m!1972445 () Bool)

(assert (=> bs!395383 m!1972445))

(assert (=> bs!395383 m!1970765))

(assert (=> bs!395383 m!1970723))

(assert (=> bs!395383 m!1970761))

(assert (=> bs!395383 m!1970763))

(assert (=> bs!395383 m!1970755))

(assert (=> bs!395383 m!1972445))

(declare-fun m!1972447 () Bool)

(assert (=> bs!395383 m!1972447))

(assert (=> bs!395383 m!1970765))

(assert (=> bs!395383 m!1970761))

(assert (=> b!1634845 d!492604))

(declare-fun b!1635652 () Bool)

(declare-fun b_free!44199 () Bool)

(declare-fun b_next!44903 () Bool)

(assert (=> b!1635652 (= b_free!44199 (not b_next!44903))))

(declare-fun tp!474307 () Bool)

(declare-fun b_and!115941 () Bool)

(assert (=> b!1635652 (= tp!474307 b_and!115941)))

(declare-fun b_free!44201 () Bool)

(declare-fun b_next!44905 () Bool)

(assert (=> b!1635652 (= b_free!44201 (not b_next!44905))))

(declare-fun t!149705 () Bool)

(declare-fun tb!93775 () Bool)

(assert (=> (and b!1635652 (= (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457)))))) t!149705) tb!93775))

(declare-fun result!113136 () Bool)

(assert (= result!113136 result!113098))

(assert (=> d!492358 t!149705))

(declare-fun t!149707 () Bool)

(declare-fun tb!93777 () Bool)

(assert (=> (and b!1635652 (= (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457))))) t!149707) tb!93777))

(declare-fun result!113138 () Bool)

(assert (= result!113138 result!113110))

(assert (=> b!1635181 t!149707))

(assert (=> d!492516 t!149707))

(declare-fun tp!474308 () Bool)

(declare-fun b_and!115943 () Bool)

(assert (=> b!1635652 (= tp!474308 (and (=> t!149705 result!113136) (=> t!149707 result!113138) b_and!115943))))

(declare-fun e!1048932 () Bool)

(assert (=> b!1634838 (= tp!474232 e!1048932)))

(declare-fun b!1635649 () Bool)

(declare-fun tp!474310 () Bool)

(declare-fun e!1048933 () Bool)

(assert (=> b!1635649 (= e!1048932 (and (inv!23332 (h!23375 (t!149669 tokens!457))) e!1048933 tp!474310))))

(declare-fun e!1048934 () Bool)

(assert (=> b!1635652 (= e!1048934 (and tp!474307 tp!474308))))

(declare-fun tp!474309 () Bool)

(declare-fun b!1635650 () Bool)

(declare-fun e!1048930 () Bool)

(assert (=> b!1635650 (= e!1048933 (and (inv!21 (value!99932 (h!23375 (t!149669 tokens!457)))) e!1048930 tp!474309))))

(declare-fun b!1635651 () Bool)

(declare-fun tp!474311 () Bool)

(assert (=> b!1635651 (= e!1048930 (and tp!474311 (inv!23328 (tag!3447 (rule!5007 (h!23375 (t!149669 tokens!457))))) (inv!23331 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) e!1048934))))

(assert (= b!1635651 b!1635652))

(assert (= b!1635650 b!1635651))

(assert (= b!1635649 b!1635650))

(assert (= (and b!1634838 ((_ is Cons!17974) (t!149669 tokens!457))) b!1635649))

(declare-fun m!1972449 () Bool)

(assert (=> b!1635649 m!1972449))

(declare-fun m!1972451 () Bool)

(assert (=> b!1635650 m!1972451))

(declare-fun m!1972453 () Bool)

(assert (=> b!1635651 m!1972453))

(declare-fun m!1972455 () Bool)

(assert (=> b!1635651 m!1972455))

(declare-fun b!1635657 () Bool)

(declare-fun e!1048938 () Bool)

(declare-fun tp_is_empty!7305 () Bool)

(declare-fun tp!474314 () Bool)

(assert (=> b!1635657 (= e!1048938 (and tp_is_empty!7305 tp!474314))))

(assert (=> b!1634843 (= tp!474237 e!1048938)))

(assert (= (and b!1634843 ((_ is Cons!17972) (originalCharacters!3981 (h!23375 tokens!457)))) b!1635657))

(declare-fun b!1635669 () Bool)

(declare-fun e!1048941 () Bool)

(declare-fun tp!474327 () Bool)

(declare-fun tp!474326 () Bool)

(assert (=> b!1635669 (= e!1048941 (and tp!474327 tp!474326))))

(declare-fun b!1635671 () Bool)

(declare-fun tp!474328 () Bool)

(declare-fun tp!474329 () Bool)

(assert (=> b!1635671 (= e!1048941 (and tp!474328 tp!474329))))

(declare-fun b!1635668 () Bool)

(assert (=> b!1635668 (= e!1048941 tp_is_empty!7305)))

(declare-fun b!1635670 () Bool)

(declare-fun tp!474325 () Bool)

(assert (=> b!1635670 (= e!1048941 tp!474325)))

(assert (=> b!1634837 (= tp!474235 e!1048941)))

(assert (= (and b!1634837 ((_ is ElementMatch!4495) (regex!3167 (h!23374 rules!1846)))) b!1635668))

(assert (= (and b!1634837 ((_ is Concat!7753) (regex!3167 (h!23374 rules!1846)))) b!1635669))

(assert (= (and b!1634837 ((_ is Star!4495) (regex!3167 (h!23374 rules!1846)))) b!1635670))

(assert (= (and b!1634837 ((_ is Union!4495) (regex!3167 (h!23374 rules!1846)))) b!1635671))

(declare-fun b!1635673 () Bool)

(declare-fun e!1048942 () Bool)

(declare-fun tp!474332 () Bool)

(declare-fun tp!474331 () Bool)

(assert (=> b!1635673 (= e!1048942 (and tp!474332 tp!474331))))

(declare-fun b!1635675 () Bool)

(declare-fun tp!474333 () Bool)

(declare-fun tp!474334 () Bool)

(assert (=> b!1635675 (= e!1048942 (and tp!474333 tp!474334))))

(declare-fun b!1635672 () Bool)

(assert (=> b!1635672 (= e!1048942 tp_is_empty!7305)))

(declare-fun b!1635674 () Bool)

(declare-fun tp!474330 () Bool)

(assert (=> b!1635674 (= e!1048942 tp!474330)))

(assert (=> b!1634829 (= tp!474234 e!1048942)))

(assert (= (and b!1634829 ((_ is ElementMatch!4495) (regex!3167 (rule!5007 (h!23375 tokens!457))))) b!1635672))

(assert (= (and b!1634829 ((_ is Concat!7753) (regex!3167 (rule!5007 (h!23375 tokens!457))))) b!1635673))

(assert (= (and b!1634829 ((_ is Star!4495) (regex!3167 (rule!5007 (h!23375 tokens!457))))) b!1635674))

(assert (= (and b!1634829 ((_ is Union!4495) (regex!3167 (rule!5007 (h!23375 tokens!457))))) b!1635675))

(declare-fun b!1635686 () Bool)

(declare-fun b_free!44203 () Bool)

(declare-fun b_next!44907 () Bool)

(assert (=> b!1635686 (= b_free!44203 (not b_next!44907))))

(declare-fun tp!474343 () Bool)

(declare-fun b_and!115945 () Bool)

(assert (=> b!1635686 (= tp!474343 b_and!115945)))

(declare-fun b_free!44205 () Bool)

(declare-fun b_next!44909 () Bool)

(assert (=> b!1635686 (= b_free!44205 (not b_next!44909))))

(declare-fun t!149709 () Bool)

(declare-fun tb!93779 () Bool)

(assert (=> (and b!1635686 (= (toChars!4457 (transformation!3167 (h!23374 (t!149668 rules!1846)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457)))))) t!149709) tb!93779))

(declare-fun result!113146 () Bool)

(assert (= result!113146 result!113098))

(assert (=> d!492358 t!149709))

(declare-fun t!149711 () Bool)

(declare-fun tb!93781 () Bool)

(assert (=> (and b!1635686 (= (toChars!4457 (transformation!3167 (h!23374 (t!149668 rules!1846)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457))))) t!149711) tb!93781))

(declare-fun result!113148 () Bool)

(assert (= result!113148 result!113110))

(assert (=> b!1635181 t!149711))

(assert (=> d!492516 t!149711))

(declare-fun tp!474346 () Bool)

(declare-fun b_and!115947 () Bool)

(assert (=> b!1635686 (= tp!474346 (and (=> t!149709 result!113146) (=> t!149711 result!113148) b_and!115947))))

(declare-fun e!1048952 () Bool)

(assert (=> b!1635686 (= e!1048952 (and tp!474343 tp!474346))))

(declare-fun b!1635685 () Bool)

(declare-fun tp!474345 () Bool)

(declare-fun e!1048953 () Bool)

(assert (=> b!1635685 (= e!1048953 (and tp!474345 (inv!23328 (tag!3447 (h!23374 (t!149668 rules!1846)))) (inv!23331 (transformation!3167 (h!23374 (t!149668 rules!1846)))) e!1048952))))

(declare-fun b!1635684 () Bool)

(declare-fun e!1048951 () Bool)

(declare-fun tp!474344 () Bool)

(assert (=> b!1635684 (= e!1048951 (and e!1048953 tp!474344))))

(assert (=> b!1634839 (= tp!474231 e!1048951)))

(assert (= b!1635685 b!1635686))

(assert (= b!1635684 b!1635685))

(assert (= (and b!1634839 ((_ is Cons!17973) (t!149668 rules!1846))) b!1635684))

(declare-fun m!1972457 () Bool)

(assert (=> b!1635685 m!1972457))

(declare-fun m!1972459 () Bool)

(assert (=> b!1635685 m!1972459))

(declare-fun b_lambda!51431 () Bool)

(assert (= b_lambda!51421 (or (and b!1634844 b_free!44185) (and b!1634847 b_free!44189 (= (toChars!4457 (transformation!3167 (h!23374 rules!1846))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))))) (and b!1635652 b_free!44201 (= (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))))) (and b!1635686 b_free!44205 (= (toChars!4457 (transformation!3167 (h!23374 (t!149668 rules!1846)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))))) b_lambda!51431)))

(declare-fun b_lambda!51433 () Bool)

(assert (= b_lambda!51417 (or (and b!1634844 b_free!44185) (and b!1634847 b_free!44189 (= (toChars!4457 (transformation!3167 (h!23374 rules!1846))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))))) (and b!1635652 b_free!44201 (= (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))))) (and b!1635686 b_free!44205 (= (toChars!4457 (transformation!3167 (h!23374 (t!149668 rules!1846)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))))) b_lambda!51433)))

(declare-fun b_lambda!51435 () Bool)

(assert (= b_lambda!51413 (or (and b!1634844 b_free!44185 (= (toChars!4457 (transformation!3167 (rule!5007 (h!23375 tokens!457)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))))) (and b!1634847 b_free!44189 (= (toChars!4457 (transformation!3167 (h!23374 rules!1846))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))))) (and b!1635652 b_free!44201) (and b!1635686 b_free!44205 (= (toChars!4457 (transformation!3167 (h!23374 (t!149668 rules!1846)))) (toChars!4457 (transformation!3167 (rule!5007 (h!23375 (t!149669 tokens!457))))))) b_lambda!51435)))

(check-sat (not b!1635634) (not tb!93751) (not b!1635290) (not b!1635570) (not d!492394) (not d!492600) (not d!492504) (not b!1635476) tp_is_empty!7305 (not b!1635037) (not d!492332) (not b!1635462) (not b!1635053) b_and!115947 b_and!115941 (not b!1635455) (not b!1635673) (not d!492518) (not b!1635181) (not b!1635070) (not b!1635446) (not b!1635566) (not d!492448) b_and!115927 (not b!1635473) (not b!1635357) (not b_lambda!51433) (not b!1635670) (not b!1635268) (not d!492388) (not b!1635649) (not b_next!44893) (not b!1635475) (not b!1635470) (not b!1635291) (not d!492392) (not b!1635163) (not d!492356) (not d!492350) (not b!1635451) (not b_lambda!51435) (not b!1635463) (not d!492524) (not b!1635467) (not b!1634979) (not b!1635482) (not d!492378) (not b!1634963) (not d!492450) (not b!1635474) (not b!1635356) (not b!1635062) (not d!492442) (not b!1635452) (not b!1635068) (not d!492558) (not d!492372) (not d!492494) (not d!492546) (not d!492560) (not d!492382) (not b!1635307) (not b!1635479) (not d!492376) (not b_next!44887) (not b!1635675) (not b!1635069) (not b!1635624) (not b!1635041) (not d!492374) (not b!1635449) (not d!492568) (not d!492384) (not bm!105613) (not b!1634960) (not b!1635564) b_and!115901 (not b!1635685) (not b!1635308) (not b!1635036) (not b!1635175) (not d!492310) (not b!1635625) (not d!492522) (not b!1635294) (not b!1635183) (not b!1635481) (not d!492500) (not b_next!44909) (not b!1634968) (not b!1635464) (not b!1635556) (not b!1635359) (not d!492590) (not d!492360) (not d!492588) (not d!492598) (not b!1635013) (not b!1634978) (not b!1635363) (not bm!105610) (not bm!105631) (not b!1635671) (not b!1635017) (not b!1634926) (not b!1635323) (not d!492520) (not b!1635279) (not b!1635461) (not d!492496) (not b!1635295) b_and!115943 (not b!1635164) (not d!492358) (not b!1635396) (not d!492370) (not d!492604) (not b!1635274) (not b!1635563) (not b_next!44891) (not b!1634921) (not tb!93759) (not b_next!44905) (not b!1635469) (not d!492444) (not b!1635311) (not b!1635478) (not b!1634922) (not d!492526) (not d!492516) (not d!492514) (not b!1635542) (not b_next!44907) (not b!1635067) (not b!1635541) (not b!1635038) (not d!492502) (not b!1635657) (not b!1635466) (not b!1635457) b_and!115945 (not b!1635176) (not d!492534) (not b!1635669) (not b!1635471) (not d!492352) (not bm!105630) (not b!1634977) (not b!1635058) (not d!492512) (not b!1635460) (not b!1635039) (not b!1635184) (not b!1635051) (not d!492390) (not d!492556) (not b!1635465) (not b!1635063) (not d!492562) (not b!1634925) (not b_next!44889) (not b!1635651) (not b!1635310) (not b!1635650) (not b!1635456) (not d!492532) (not d!492586) (not b!1635280) (not d!492510) (not b!1635042) (not d!492564) (not b!1635040) (not b_lambda!51431) (not b!1635174) (not d!492566) (not d!492570) (not b!1634927) (not b!1635543) (not b!1635684) (not d!492386) b_and!115905 (not b!1635472) (not b!1634924) (not b!1635557) (not d!492354) (not bm!105629) (not b!1635398) (not b!1634957) (not d!492584) (not b!1635324) (not b!1634980) (not b!1635182) (not b!1634920) (not bm!105614) (not b_next!44903) (not b!1635355) (not d!492492) (not d!492596) (not b!1635269) (not b!1635554) (not d!492592) (not b!1635397) (not b!1635014) (not d!492498) (not b!1635567) (not b!1635368) (not b!1635674) (not b!1635326) (not bm!105607) (not b!1635064) (not b!1635459) (not b!1635043) (not b!1635065) b_and!115925 (not d!492508) (not b!1635553))
(check-sat b_and!115927 (not b_next!44893) (not b_next!44887) b_and!115901 (not b_next!44909) b_and!115943 (not b_next!44907) b_and!115945 (not b_next!44889) b_and!115905 (not b_next!44903) b_and!115925 b_and!115947 b_and!115941 (not b_next!44891) (not b_next!44905))
