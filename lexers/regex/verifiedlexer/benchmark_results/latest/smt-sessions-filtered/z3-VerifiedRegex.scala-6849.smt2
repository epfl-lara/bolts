; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360044 () Bool)

(assert start!360044)

(declare-fun b!3844946 () Bool)

(declare-fun b_free!102801 () Bool)

(declare-fun b_next!103505 () Bool)

(assert (=> b!3844946 (= b_free!102801 (not b_next!103505))))

(declare-fun tp!1165176 () Bool)

(declare-fun b_and!286719 () Bool)

(assert (=> b!3844946 (= tp!1165176 b_and!286719)))

(declare-fun b_free!102803 () Bool)

(declare-fun b_next!103507 () Bool)

(assert (=> b!3844946 (= b_free!102803 (not b_next!103507))))

(declare-fun tp!1165167 () Bool)

(declare-fun b_and!286721 () Bool)

(assert (=> b!3844946 (= tp!1165167 b_and!286721)))

(declare-fun b!3844941 () Bool)

(declare-fun b_free!102805 () Bool)

(declare-fun b_next!103509 () Bool)

(assert (=> b!3844941 (= b_free!102805 (not b_next!103509))))

(declare-fun tp!1165158 () Bool)

(declare-fun b_and!286723 () Bool)

(assert (=> b!3844941 (= tp!1165158 b_and!286723)))

(declare-fun b_free!102807 () Bool)

(declare-fun b_next!103511 () Bool)

(assert (=> b!3844941 (= b_free!102807 (not b_next!103511))))

(declare-fun tp!1165166 () Bool)

(declare-fun b_and!286725 () Bool)

(assert (=> b!3844941 (= tp!1165166 b_and!286725)))

(declare-fun b!3844927 () Bool)

(declare-fun b_free!102809 () Bool)

(declare-fun b_next!103513 () Bool)

(assert (=> b!3844927 (= b_free!102809 (not b_next!103513))))

(declare-fun tp!1165171 () Bool)

(declare-fun b_and!286727 () Bool)

(assert (=> b!3844927 (= tp!1165171 b_and!286727)))

(declare-fun b_free!102811 () Bool)

(declare-fun b_next!103515 () Bool)

(assert (=> b!3844927 (= b_free!102811 (not b_next!103515))))

(declare-fun tp!1165162 () Bool)

(declare-fun b_and!286729 () Bool)

(assert (=> b!3844927 (= tp!1165162 b_and!286729)))

(declare-fun b!3844926 () Bool)

(declare-fun b_free!102813 () Bool)

(declare-fun b_next!103517 () Bool)

(assert (=> b!3844926 (= b_free!102813 (not b_next!103517))))

(declare-fun tp!1165157 () Bool)

(declare-fun b_and!286731 () Bool)

(assert (=> b!3844926 (= tp!1165157 b_and!286731)))

(declare-fun b_free!102815 () Bool)

(declare-fun b_next!103519 () Bool)

(assert (=> b!3844926 (= b_free!102815 (not b_next!103519))))

(declare-fun tp!1165160 () Bool)

(declare-fun b_and!286733 () Bool)

(assert (=> b!3844926 (= tp!1165160 b_and!286733)))

(declare-fun e!2376023 () Bool)

(assert (=> b!3844926 (= e!2376023 (and tp!1165157 tp!1165160))))

(declare-fun e!2376006 () Bool)

(assert (=> b!3844927 (= e!2376006 (and tp!1165171 tp!1165162))))

(declare-fun b!3844928 () Bool)

(declare-fun e!2376040 () Bool)

(declare-fun e!2376033 () Bool)

(assert (=> b!3844928 (= e!2376040 e!2376033)))

(declare-fun res!1556330 () Bool)

(assert (=> b!3844928 (=> res!1556330 e!2376033)))

(declare-datatypes ((List!40834 0))(
  ( (Nil!40710) (Cons!40710 (h!46130 (_ BitVec 16)) (t!310923 List!40834)) )
))
(declare-datatypes ((TokenValue!6516 0))(
  ( (FloatLiteralValue!13032 (text!46057 List!40834)) (TokenValueExt!6515 (__x!25249 Int)) (Broken!32580 (value!199759 List!40834)) (Object!6639) (End!6516) (Def!6516) (Underscore!6516) (Match!6516) (Else!6516) (Error!6516) (Case!6516) (If!6516) (Extends!6516) (Abstract!6516) (Class!6516) (Val!6516) (DelimiterValue!13032 (del!6576 List!40834)) (KeywordValue!6522 (value!199760 List!40834)) (CommentValue!13032 (value!199761 List!40834)) (WhitespaceValue!13032 (value!199762 List!40834)) (IndentationValue!6516 (value!199763 List!40834)) (String!46297) (Int32!6516) (Broken!32581 (value!199764 List!40834)) (Boolean!6517) (Unit!58399) (OperatorValue!6519 (op!6576 List!40834)) (IdentifierValue!13032 (value!199765 List!40834)) (IdentifierValue!13033 (value!199766 List!40834)) (WhitespaceValue!13033 (value!199767 List!40834)) (True!13032) (False!13032) (Broken!32582 (value!199768 List!40834)) (Broken!32583 (value!199769 List!40834)) (True!13033) (RightBrace!6516) (RightBracket!6516) (Colon!6516) (Null!6516) (Comma!6516) (LeftBracket!6516) (False!13033) (LeftBrace!6516) (ImaginaryLiteralValue!6516 (text!46058 List!40834)) (StringLiteralValue!19548 (value!199770 List!40834)) (EOFValue!6516 (value!199771 List!40834)) (IdentValue!6516 (value!199772 List!40834)) (DelimiterValue!13033 (value!199773 List!40834)) (DedentValue!6516 (value!199774 List!40834)) (NewLineValue!6516 (value!199775 List!40834)) (IntegerValue!19548 (value!199776 (_ BitVec 32)) (text!46059 List!40834)) (IntegerValue!19549 (value!199777 Int) (text!46060 List!40834)) (Times!6516) (Or!6516) (Equal!6516) (Minus!6516) (Broken!32584 (value!199778 List!40834)) (And!6516) (Div!6516) (LessEqual!6516) (Mod!6516) (Concat!17707) (Not!6516) (Plus!6516) (SpaceValue!6516 (value!199779 List!40834)) (IntegerValue!19550 (value!199780 Int) (text!46061 List!40834)) (StringLiteralValue!19549 (text!46062 List!40834)) (FloatLiteralValue!13033 (text!46063 List!40834)) (BytesLiteralValue!6516 (value!199781 List!40834)) (CommentValue!13033 (value!199782 List!40834)) (StringLiteralValue!19550 (value!199783 List!40834)) (ErrorTokenValue!6516 (msg!6577 List!40834)) )
))
(declare-datatypes ((C!22568 0))(
  ( (C!22569 (val!13378 Int)) )
))
(declare-datatypes ((Regex!11191 0))(
  ( (ElementMatch!11191 (c!669864 C!22568)) (Concat!17708 (regOne!22894 Regex!11191) (regTwo!22894 Regex!11191)) (EmptyExpr!11191) (Star!11191 (reg!11520 Regex!11191)) (EmptyLang!11191) (Union!11191 (regOne!22895 Regex!11191) (regTwo!22895 Regex!11191)) )
))
(declare-datatypes ((String!46298 0))(
  ( (String!46299 (value!199784 String)) )
))
(declare-datatypes ((List!40835 0))(
  ( (Nil!40711) (Cons!40711 (h!46131 C!22568) (t!310924 List!40835)) )
))
(declare-datatypes ((IArray!24999 0))(
  ( (IArray!25000 (innerList!12557 List!40835)) )
))
(declare-datatypes ((Conc!12497 0))(
  ( (Node!12497 (left!31426 Conc!12497) (right!31756 Conc!12497) (csize!25224 Int) (cheight!12708 Int)) (Leaf!19347 (xs!15803 IArray!24999) (csize!25225 Int)) (Empty!12497) )
))
(declare-datatypes ((BalanceConc!24588 0))(
  ( (BalanceConc!24589 (c!669865 Conc!12497)) )
))
(declare-datatypes ((TokenValueInjection!12460 0))(
  ( (TokenValueInjection!12461 (toValue!8702 Int) (toChars!8561 Int)) )
))
(declare-datatypes ((Rule!12372 0))(
  ( (Rule!12373 (regex!6286 Regex!11191) (tag!7146 String!46298) (isSeparator!6286 Bool) (transformation!6286 TokenValueInjection!12460)) )
))
(declare-datatypes ((Token!11710 0))(
  ( (Token!11711 (value!199785 TokenValue!6516) (rule!9130 Rule!12372) (size!30631 Int) (originalCharacters!6886 List!40835)) )
))
(declare-datatypes ((tuple2!39890 0))(
  ( (tuple2!39891 (_1!23079 Token!11710) (_2!23079 List!40835)) )
))
(declare-datatypes ((Option!8704 0))(
  ( (None!8703) (Some!8703 (v!38995 tuple2!39890)) )
))
(declare-fun lt!1334906 () Option!8704)

(assert (=> b!3844928 (= res!1556330 (not (= lt!1334906 (Some!8703 (tuple2!39891 (_1!23079 (v!38995 lt!1334906)) (_2!23079 (v!38995 lt!1334906)))))))))

(declare-fun e!2376025 () Bool)

(assert (=> b!3844928 e!2376025))

(declare-fun res!1556324 () Bool)

(assert (=> b!3844928 (=> (not res!1556324) (not e!2376025))))

(declare-fun lt!1334901 () List!40835)

(declare-fun isPrefix!3385 (List!40835 List!40835) Bool)

(assert (=> b!3844928 (= res!1556324 (isPrefix!3385 lt!1334901 lt!1334901))))

(declare-datatypes ((Unit!58400 0))(
  ( (Unit!58401) )
))
(declare-fun lt!1334902 () Unit!58400)

(declare-fun lemmaIsPrefixRefl!2158 (List!40835 List!40835) Unit!58400)

(assert (=> b!3844928 (= lt!1334902 (lemmaIsPrefixRefl!2158 lt!1334901 lt!1334901))))

(declare-datatypes ((List!40836 0))(
  ( (Nil!40712) (Cons!40712 (h!46132 Token!11710) (t!310925 List!40836)) )
))
(declare-datatypes ((tuple2!39892 0))(
  ( (tuple2!39893 (_1!23080 List!40836) (_2!23080 List!40835)) )
))
(declare-fun lt!1334905 () tuple2!39892)

(declare-fun lt!1334911 () tuple2!39892)

(assert (=> b!3844928 (= lt!1334905 (tuple2!39893 (Cons!40712 (_1!23079 (v!38995 lt!1334906)) (_1!23080 lt!1334911)) (_2!23080 lt!1334911)))))

(declare-fun b!3844929 () Bool)

(declare-fun e!2376017 () Bool)

(assert (=> b!3844929 (= e!2376017 true)))

(declare-fun lt!1334916 () Bool)

(declare-datatypes ((LexerInterface!5875 0))(
  ( (LexerInterfaceExt!5872 (__x!25250 Int)) (Lexer!5873) )
))
(declare-fun thiss!20629 () LexerInterface!5875)

(declare-datatypes ((List!40837 0))(
  ( (Nil!40713) (Cons!40713 (h!46133 Rule!12372) (t!310926 List!40837)) )
))
(declare-fun rules!2768 () List!40837)

(declare-fun rulesValidInductive!2226 (LexerInterface!5875 List!40837) Bool)

(assert (=> b!3844929 (= lt!1334916 (rulesValidInductive!2226 thiss!20629 rules!2768))))

(declare-fun b!3844930 () Bool)

(declare-fun e!2376027 () Bool)

(declare-fun e!2376035 () Bool)

(assert (=> b!3844930 (= e!2376027 e!2376035)))

(declare-fun res!1556321 () Bool)

(assert (=> b!3844930 (=> (not res!1556321) (not e!2376035))))

(get-info :version)

(assert (=> b!3844930 (= res!1556321 ((_ is Some!8703) lt!1334906))))

(declare-fun maxPrefix!3179 (LexerInterface!5875 List!40837 List!40835) Option!8704)

(assert (=> b!3844930 (= lt!1334906 (maxPrefix!3179 thiss!20629 rules!2768 lt!1334901))))

(declare-fun b!3844932 () Bool)

(declare-fun tp!1165161 () Bool)

(declare-fun err!4297 () Option!8704)

(declare-fun e!2376029 () Bool)

(declare-fun inv!54853 (String!46298) Bool)

(declare-fun inv!54856 (TokenValueInjection!12460) Bool)

(assert (=> b!3844932 (= e!2376029 (and tp!1165161 (inv!54853 (tag!7146 (rule!9130 (_1!23079 (v!38995 err!4297))))) (inv!54856 (transformation!6286 (rule!9130 (_1!23079 (v!38995 err!4297))))) e!2376023))))

(declare-fun e!2376028 () Bool)

(declare-fun suffixTokens!72 () List!40836)

(declare-fun b!3844933 () Bool)

(declare-fun e!2376016 () Bool)

(declare-fun tp!1165170 () Bool)

(declare-fun inv!54857 (Token!11710) Bool)

(assert (=> b!3844933 (= e!2376028 (and (inv!54857 (h!46132 suffixTokens!72)) e!2376016 tp!1165170))))

(declare-fun b!3844934 () Bool)

(declare-fun e!2376021 () Option!8704)

(declare-fun e!2376018 () Option!8704)

(assert (=> b!3844934 (= e!2376021 e!2376018)))

(declare-fun c!669863 () Bool)

(assert (=> b!3844934 (= c!669863 ((_ is Cons!40713) rules!2768))))

(declare-fun b!3844935 () Bool)

(declare-fun e!2376031 () Bool)

(declare-fun tp_is_empty!19353 () Bool)

(declare-fun tp!1165168 () Bool)

(assert (=> b!3844935 (= e!2376031 (and tp_is_empty!19353 tp!1165168))))

(declare-fun b!3844936 () Bool)

(declare-fun tp!1165173 () Bool)

(declare-fun e!2376036 () Bool)

(declare-fun prefixTokens!80 () List!40836)

(declare-fun e!2376034 () Bool)

(declare-fun inv!21 (TokenValue!6516) Bool)

(assert (=> b!3844936 (= e!2376036 (and (inv!21 (value!199785 (h!46132 prefixTokens!80))) e!2376034 tp!1165173))))

(declare-fun b!3844937 () Bool)

(declare-fun e!2376007 () Bool)

(declare-fun tp!1165174 () Bool)

(assert (=> b!3844937 (= e!2376007 (and tp_is_empty!19353 tp!1165174))))

(declare-fun b!3844938 () Bool)

(declare-fun e!2376030 () Bool)

(declare-fun tp!1165164 () Bool)

(assert (=> b!3844938 (= e!2376030 (and (inv!54857 (h!46132 prefixTokens!80)) e!2376036 tp!1165164))))

(declare-fun b!3844939 () Bool)

(declare-fun call!282042 () Option!8704)

(assert (=> b!3844939 (= e!2376021 call!282042)))

(declare-fun b!3844940 () Bool)

(declare-fun e!2376037 () Bool)

(declare-fun e!2376014 () Bool)

(declare-fun tp!1165172 () Bool)

(assert (=> b!3844940 (= e!2376037 (and e!2376014 tp!1165172))))

(declare-fun e!2376026 () Bool)

(assert (=> b!3844941 (= e!2376026 (and tp!1165158 tp!1165166))))

(declare-fun b!3844942 () Bool)

(declare-fun e!2376010 () Bool)

(declare-fun tp!1165178 () Bool)

(assert (=> b!3844942 (= e!2376010 (and tp_is_empty!19353 tp!1165178))))

(declare-fun b!3844943 () Bool)

(declare-fun res!1556331 () Bool)

(declare-fun e!2376012 () Bool)

(assert (=> b!3844943 (=> (not res!1556331) (not e!2376012))))

(declare-fun rulesInvariant!5218 (LexerInterface!5875 List!40837) Bool)

(assert (=> b!3844943 (= res!1556331 (rulesInvariant!5218 thiss!20629 rules!2768))))

(declare-fun b!3844944 () Bool)

(assert (=> b!3844944 (= e!2376012 e!2376027)))

(declare-fun res!1556323 () Bool)

(assert (=> b!3844944 (=> (not res!1556323) (not e!2376027))))

(declare-fun suffixResult!91 () List!40835)

(declare-fun lt!1334914 () List!40836)

(assert (=> b!3844944 (= res!1556323 (= lt!1334905 (tuple2!39893 lt!1334914 suffixResult!91)))))

(declare-fun lexList!1643 (LexerInterface!5875 List!40837 List!40835) tuple2!39892)

(assert (=> b!3844944 (= lt!1334905 (lexList!1643 thiss!20629 rules!2768 lt!1334901))))

(declare-fun ++!10329 (List!40836 List!40836) List!40836)

(assert (=> b!3844944 (= lt!1334914 (++!10329 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40835)

(declare-fun suffix!1176 () List!40835)

(declare-fun ++!10330 (List!40835 List!40835) List!40835)

(assert (=> b!3844944 (= lt!1334901 (++!10330 prefix!426 suffix!1176))))

(declare-fun bm!282037 () Bool)

(declare-fun maxPrefixOneRule!2263 (LexerInterface!5875 Rule!12372 List!40835) Option!8704)

(assert (=> bm!282037 (= call!282042 (maxPrefixOneRule!2263 thiss!20629 (h!46133 rules!2768) lt!1334901))))

(declare-fun tp!1165177 () Bool)

(declare-fun e!2376032 () Bool)

(declare-fun b!3844945 () Bool)

(declare-fun e!2376015 () Bool)

(assert (=> b!3844945 (= e!2376015 (and (inv!54857 (_1!23079 (v!38995 err!4297))) e!2376032 tp!1165177))))

(declare-fun e!2376024 () Bool)

(assert (=> b!3844946 (= e!2376024 (and tp!1165176 tp!1165167))))

(declare-fun b!3844947 () Bool)

(declare-fun res!1556337 () Bool)

(assert (=> b!3844947 (=> (not res!1556337) (not e!2376012))))

(declare-fun isEmpty!24076 (List!40835) Bool)

(assert (=> b!3844947 (= res!1556337 (not (isEmpty!24076 prefix!426)))))

(declare-fun b!3844948 () Bool)

(declare-fun e!2376005 () Bool)

(assert (=> b!3844948 (= e!2376035 (not e!2376005))))

(declare-fun res!1556332 () Bool)

(assert (=> b!3844948 (=> res!1556332 e!2376005)))

(declare-fun lt!1334913 () List!40835)

(assert (=> b!3844948 (= res!1556332 (not (= lt!1334913 lt!1334901)))))

(assert (=> b!3844948 (= lt!1334911 (lexList!1643 thiss!20629 rules!2768 (_2!23079 (v!38995 lt!1334906))))))

(declare-fun lt!1334912 () Int)

(declare-fun lt!1334910 () List!40835)

(declare-fun lt!1334900 () TokenValue!6516)

(declare-fun lt!1334897 () List!40835)

(assert (=> b!3844948 (and (= (size!30631 (_1!23079 (v!38995 lt!1334906))) lt!1334912) (= (originalCharacters!6886 (_1!23079 (v!38995 lt!1334906))) lt!1334897) (= (tuple2!39891 (_1!23079 (v!38995 lt!1334906)) (_2!23079 (v!38995 lt!1334906))) (tuple2!39891 (Token!11711 lt!1334900 (rule!9130 (_1!23079 (v!38995 lt!1334906))) lt!1334912 lt!1334897) lt!1334910)))))

(declare-fun size!30632 (List!40835) Int)

(assert (=> b!3844948 (= lt!1334912 (size!30632 lt!1334897))))

(declare-fun e!2376008 () Bool)

(assert (=> b!3844948 e!2376008))

(declare-fun res!1556333 () Bool)

(assert (=> b!3844948 (=> (not res!1556333) (not e!2376008))))

(assert (=> b!3844948 (= res!1556333 (= (value!199785 (_1!23079 (v!38995 lt!1334906))) lt!1334900))))

(declare-fun apply!9529 (TokenValueInjection!12460 BalanceConc!24588) TokenValue!6516)

(declare-fun seqFromList!4557 (List!40835) BalanceConc!24588)

(assert (=> b!3844948 (= lt!1334900 (apply!9529 (transformation!6286 (rule!9130 (_1!23079 (v!38995 lt!1334906)))) (seqFromList!4557 lt!1334897)))))

(assert (=> b!3844948 (= (_2!23079 (v!38995 lt!1334906)) lt!1334910)))

(declare-fun lt!1334917 () Unit!58400)

(declare-fun lemmaSamePrefixThenSameSuffix!1606 (List!40835 List!40835 List!40835 List!40835 List!40835) Unit!58400)

(assert (=> b!3844948 (= lt!1334917 (lemmaSamePrefixThenSameSuffix!1606 lt!1334897 (_2!23079 (v!38995 lt!1334906)) lt!1334897 lt!1334910 lt!1334901))))

(declare-fun getSuffix!1840 (List!40835 List!40835) List!40835)

(assert (=> b!3844948 (= lt!1334910 (getSuffix!1840 lt!1334901 lt!1334897))))

(assert (=> b!3844948 (isPrefix!3385 lt!1334897 lt!1334913)))

(assert (=> b!3844948 (= lt!1334913 (++!10330 lt!1334897 (_2!23079 (v!38995 lt!1334906))))))

(declare-fun lt!1334907 () Unit!58400)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2248 (List!40835 List!40835) Unit!58400)

(assert (=> b!3844948 (= lt!1334907 (lemmaConcatTwoListThenFirstIsPrefix!2248 lt!1334897 (_2!23079 (v!38995 lt!1334906))))))

(declare-fun list!15156 (BalanceConc!24588) List!40835)

(declare-fun charsOf!4114 (Token!11710) BalanceConc!24588)

(assert (=> b!3844948 (= lt!1334897 (list!15156 (charsOf!4114 (_1!23079 (v!38995 lt!1334906)))))))

(declare-fun ruleValid!2238 (LexerInterface!5875 Rule!12372) Bool)

(assert (=> b!3844948 (ruleValid!2238 thiss!20629 (rule!9130 (_1!23079 (v!38995 lt!1334906))))))

(declare-fun lt!1334904 () Unit!58400)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1318 (LexerInterface!5875 Rule!12372 List!40837) Unit!58400)

(assert (=> b!3844948 (= lt!1334904 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1318 thiss!20629 (rule!9130 (_1!23079 (v!38995 lt!1334906))) rules!2768))))

(declare-fun lt!1334908 () Unit!58400)

(declare-fun lemmaCharactersSize!947 (Token!11710) Unit!58400)

(assert (=> b!3844948 (= lt!1334908 (lemmaCharactersSize!947 (_1!23079 (v!38995 lt!1334906))))))

(declare-fun b!3844949 () Bool)

(declare-fun res!1556325 () Bool)

(assert (=> b!3844949 (=> res!1556325 e!2376017)))

(declare-fun lt!1334896 () Option!8704)

(declare-fun get!13475 (Option!8704) tuple2!39890)

(assert (=> b!3844949 (= res!1556325 (not (= (_1!23079 (get!13475 lt!1334896)) (_1!23079 (v!38995 lt!1334906)))))))

(declare-fun b!3844950 () Bool)

(declare-fun tp!1165175 () Bool)

(assert (=> b!3844950 (= e!2376014 (and tp!1165175 (inv!54853 (tag!7146 (h!46133 rules!2768))) (inv!54856 (transformation!6286 (h!46133 rules!2768))) e!2376024))))

(declare-fun b!3844951 () Bool)

(declare-fun lt!1334898 () Option!8704)

(assert (=> b!3844951 (= lt!1334898 (maxPrefix!3179 thiss!20629 (t!310926 rules!2768) lt!1334901))))

(declare-fun lt!1334909 () Option!8704)

(assert (=> b!3844951 (= lt!1334909 call!282042)))

(assert (=> b!3844951 (= e!2376018 (ite (and ((_ is None!8703) lt!1334909) ((_ is None!8703) lt!1334898)) None!8703 (ite ((_ is None!8703) lt!1334898) lt!1334909 (ite ((_ is None!8703) lt!1334909) lt!1334898 (ite (>= (size!30631 (_1!23079 (v!38995 lt!1334909))) (size!30631 (_1!23079 (v!38995 lt!1334898)))) (Some!8703 (v!38995 lt!1334909)) lt!1334898)))))))

(declare-fun b!3844952 () Bool)

(assert (=> b!3844952 (= e!2376005 e!2376040)))

(declare-fun res!1556329 () Bool)

(assert (=> b!3844952 (=> res!1556329 e!2376040)))

(declare-fun lt!1334915 () List!40836)

(assert (=> b!3844952 (= res!1556329 (or (not (= lt!1334905 (tuple2!39893 lt!1334915 (_2!23080 lt!1334911)))) (not (= lt!1334911 (tuple2!39893 (_1!23080 lt!1334911) (_2!23080 lt!1334911)))) (not (= (_2!23079 (v!38995 lt!1334906)) suffix!1176))))))

(declare-fun lt!1334903 () List!40836)

(assert (=> b!3844952 (= lt!1334915 (++!10329 lt!1334903 (_1!23080 lt!1334911)))))

(assert (=> b!3844952 (= lt!1334903 (Cons!40712 (_1!23079 (v!38995 lt!1334906)) Nil!40712))))

(declare-fun b!3844953 () Bool)

(declare-fun tp!1165163 () Bool)

(assert (=> b!3844953 (= e!2376034 (and tp!1165163 (inv!54853 (tag!7146 (rule!9130 (h!46132 prefixTokens!80)))) (inv!54856 (transformation!6286 (rule!9130 (h!46132 prefixTokens!80)))) e!2376006))))

(declare-fun b!3844954 () Bool)

(declare-fun res!1556335 () Bool)

(assert (=> b!3844954 (=> (not res!1556335) (not e!2376027))))

(assert (=> b!3844954 (= res!1556335 (= (lexList!1643 thiss!20629 rules!2768 suffix!1176) (tuple2!39893 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2376004 () Bool)

(declare-fun b!3844955 () Bool)

(declare-fun tp!1165169 () Bool)

(assert (=> b!3844955 (= e!2376016 (and (inv!21 (value!199785 (h!46132 suffixTokens!72))) e!2376004 tp!1165169))))

(declare-fun res!1556327 () Bool)

(assert (=> start!360044 (=> (not res!1556327) (not e!2376012))))

(assert (=> start!360044 (= res!1556327 ((_ is Lexer!5873) thiss!20629))))

(assert (=> start!360044 e!2376012))

(assert (=> start!360044 e!2376010))

(assert (=> start!360044 true))

(assert (=> start!360044 e!2376031))

(assert (=> start!360044 e!2376037))

(assert (=> start!360044 e!2376030))

(assert (=> start!360044 e!2376028))

(assert (=> start!360044 e!2376007))

(declare-fun b!3844931 () Bool)

(declare-fun res!1556326 () Bool)

(assert (=> b!3844931 (=> (not res!1556326) (not e!2376012))))

(declare-fun isEmpty!24077 (List!40836) Bool)

(assert (=> b!3844931 (= res!1556326 (not (isEmpty!24077 prefixTokens!80)))))

(declare-fun b!3844956 () Bool)

(assert (=> b!3844956 (= e!2376025 (= lt!1334906 e!2376021))))

(declare-fun c!669862 () Bool)

(assert (=> b!3844956 (= c!669862 (and ((_ is Cons!40713) rules!2768) ((_ is Nil!40713) (t!310926 rules!2768))))))

(declare-fun tp!1165165 () Bool)

(declare-fun b!3844957 () Bool)

(assert (=> b!3844957 (= e!2376032 (and (inv!21 (value!199785 (_1!23079 (v!38995 err!4297)))) e!2376029 tp!1165165))))

(declare-fun b!3844958 () Bool)

(declare-fun e!2376039 () Bool)

(assert (=> b!3844958 (= e!2376033 e!2376039)))

(declare-fun res!1556334 () Bool)

(assert (=> b!3844958 (=> res!1556334 e!2376039)))

(assert (=> b!3844958 (= res!1556334 (or (not (= lt!1334914 (_1!23080 lt!1334905))) (not (= lt!1334914 lt!1334915)) (not (= prefixTokens!80 lt!1334903)) (not (= prefix!426 lt!1334897))))))

(assert (=> b!3844958 (= lt!1334897 prefix!426)))

(declare-fun lt!1334899 () Unit!58400)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!414 (List!40835 List!40835 List!40835 List!40835) Unit!58400)

(assert (=> b!3844958 (= lt!1334899 (lemmaConcatSameAndSameSizesThenSameLists!414 lt!1334897 (_2!23079 (v!38995 lt!1334906)) prefix!426 suffix!1176))))

(declare-fun b!3844959 () Bool)

(assert (=> b!3844959 true))

(assert (=> b!3844959 e!2376015))

(assert (=> b!3844959 (= e!2376018 err!4297)))

(declare-fun b!3844960 () Bool)

(declare-fun res!1556336 () Bool)

(assert (=> b!3844960 (=> (not res!1556336) (not e!2376012))))

(declare-fun isEmpty!24078 (List!40837) Bool)

(assert (=> b!3844960 (= res!1556336 (not (isEmpty!24078 rules!2768)))))

(declare-fun b!3844961 () Bool)

(assert (=> b!3844961 (= e!2376008 (= (size!30631 (_1!23079 (v!38995 lt!1334906))) (size!30632 (originalCharacters!6886 (_1!23079 (v!38995 lt!1334906))))))))

(declare-fun b!3844962 () Bool)

(assert (=> b!3844962 (= e!2376039 e!2376017)))

(declare-fun res!1556328 () Bool)

(assert (=> b!3844962 (=> res!1556328 e!2376017)))

(declare-fun isDefined!6835 (Option!8704) Bool)

(assert (=> b!3844962 (= res!1556328 (not (isDefined!6835 lt!1334896)))))

(assert (=> b!3844962 (= lt!1334896 (maxPrefix!3179 thiss!20629 rules!2768 prefix!426))))

(assert (=> b!3844962 (= (maxPrefix!3179 thiss!20629 rules!2768 (++!10330 prefix!426 Nil!40711)) (Some!8703 (tuple2!39891 (_1!23079 (v!38995 lt!1334906)) Nil!40711)))))

(declare-fun lt!1334895 () Unit!58400)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!16 (LexerInterface!5875 List!40837 List!40835 List!40835 List!40835 Token!11710 List!40835 List!40835) Unit!58400)

(assert (=> b!3844962 (= lt!1334895 (lemmaMaxPrefixThenWithShorterSuffix!16 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40711 (_1!23079 (v!38995 lt!1334906)) suffix!1176 Nil!40711))))

(declare-fun b!3844963 () Bool)

(declare-fun res!1556322 () Bool)

(assert (=> b!3844963 (=> res!1556322 e!2376039)))

(assert (=> b!3844963 (= res!1556322 (not (isPrefix!3385 Nil!40711 suffix!1176)))))

(declare-fun b!3844964 () Bool)

(declare-fun tp!1165159 () Bool)

(assert (=> b!3844964 (= e!2376004 (and tp!1165159 (inv!54853 (tag!7146 (rule!9130 (h!46132 suffixTokens!72)))) (inv!54856 (transformation!6286 (rule!9130 (h!46132 suffixTokens!72)))) e!2376026))))

(assert (= (and start!360044 res!1556327) b!3844960))

(assert (= (and b!3844960 res!1556336) b!3844943))

(assert (= (and b!3844943 res!1556331) b!3844931))

(assert (= (and b!3844931 res!1556326) b!3844947))

(assert (= (and b!3844947 res!1556337) b!3844944))

(assert (= (and b!3844944 res!1556323) b!3844954))

(assert (= (and b!3844954 res!1556335) b!3844930))

(assert (= (and b!3844930 res!1556321) b!3844948))

(assert (= (and b!3844948 res!1556333) b!3844961))

(assert (= (and b!3844948 (not res!1556332)) b!3844952))

(assert (= (and b!3844952 (not res!1556329)) b!3844928))

(assert (= (and b!3844928 res!1556324) b!3844956))

(assert (= (and b!3844956 c!669862) b!3844939))

(assert (= (and b!3844956 (not c!669862)) b!3844934))

(assert (= (and b!3844934 c!669863) b!3844951))

(assert (= (and b!3844934 (not c!669863)) b!3844959))

(assert (= b!3844932 b!3844926))

(assert (= b!3844957 b!3844932))

(assert (= b!3844945 b!3844957))

(assert (= (and b!3844959 ((_ is Some!8703) err!4297)) b!3844945))

(assert (= (or b!3844939 b!3844951) bm!282037))

(assert (= (and b!3844928 (not res!1556330)) b!3844958))

(assert (= (and b!3844958 (not res!1556334)) b!3844963))

(assert (= (and b!3844963 (not res!1556322)) b!3844962))

(assert (= (and b!3844962 (not res!1556328)) b!3844949))

(assert (= (and b!3844949 (not res!1556325)) b!3844929))

(assert (= (and start!360044 ((_ is Cons!40711) suffixResult!91)) b!3844942))

(assert (= (and start!360044 ((_ is Cons!40711) suffix!1176)) b!3844935))

(assert (= b!3844950 b!3844946))

(assert (= b!3844940 b!3844950))

(assert (= (and start!360044 ((_ is Cons!40713) rules!2768)) b!3844940))

(assert (= b!3844953 b!3844927))

(assert (= b!3844936 b!3844953))

(assert (= b!3844938 b!3844936))

(assert (= (and start!360044 ((_ is Cons!40712) prefixTokens!80)) b!3844938))

(assert (= b!3844964 b!3844941))

(assert (= b!3844955 b!3844964))

(assert (= b!3844933 b!3844955))

(assert (= (and start!360044 ((_ is Cons!40712) suffixTokens!72)) b!3844933))

(assert (= (and start!360044 ((_ is Cons!40711) prefix!426)) b!3844937))

(declare-fun m!4399525 () Bool)

(assert (=> b!3844949 m!4399525))

(declare-fun m!4399527 () Bool)

(assert (=> b!3844938 m!4399527))

(declare-fun m!4399529 () Bool)

(assert (=> b!3844947 m!4399529))

(declare-fun m!4399531 () Bool)

(assert (=> b!3844936 m!4399531))

(declare-fun m!4399533 () Bool)

(assert (=> b!3844950 m!4399533))

(declare-fun m!4399535 () Bool)

(assert (=> b!3844950 m!4399535))

(declare-fun m!4399537 () Bool)

(assert (=> b!3844952 m!4399537))

(declare-fun m!4399539 () Bool)

(assert (=> b!3844954 m!4399539))

(declare-fun m!4399541 () Bool)

(assert (=> b!3844961 m!4399541))

(declare-fun m!4399543 () Bool)

(assert (=> b!3844945 m!4399543))

(declare-fun m!4399545 () Bool)

(assert (=> b!3844943 m!4399545))

(declare-fun m!4399547 () Bool)

(assert (=> b!3844931 m!4399547))

(declare-fun m!4399549 () Bool)

(assert (=> b!3844964 m!4399549))

(declare-fun m!4399551 () Bool)

(assert (=> b!3844964 m!4399551))

(declare-fun m!4399553 () Bool)

(assert (=> b!3844958 m!4399553))

(declare-fun m!4399555 () Bool)

(assert (=> b!3844944 m!4399555))

(declare-fun m!4399557 () Bool)

(assert (=> b!3844944 m!4399557))

(declare-fun m!4399559 () Bool)

(assert (=> b!3844944 m!4399559))

(declare-fun m!4399561 () Bool)

(assert (=> b!3844929 m!4399561))

(declare-fun m!4399563 () Bool)

(assert (=> b!3844930 m!4399563))

(declare-fun m!4399565 () Bool)

(assert (=> b!3844928 m!4399565))

(declare-fun m!4399567 () Bool)

(assert (=> b!3844928 m!4399567))

(declare-fun m!4399569 () Bool)

(assert (=> b!3844963 m!4399569))

(declare-fun m!4399571 () Bool)

(assert (=> b!3844933 m!4399571))

(declare-fun m!4399573 () Bool)

(assert (=> b!3844960 m!4399573))

(declare-fun m!4399575 () Bool)

(assert (=> b!3844953 m!4399575))

(declare-fun m!4399577 () Bool)

(assert (=> b!3844953 m!4399577))

(declare-fun m!4399579 () Bool)

(assert (=> b!3844951 m!4399579))

(declare-fun m!4399581 () Bool)

(assert (=> b!3844948 m!4399581))

(declare-fun m!4399583 () Bool)

(assert (=> b!3844948 m!4399583))

(declare-fun m!4399585 () Bool)

(assert (=> b!3844948 m!4399585))

(declare-fun m!4399587 () Bool)

(assert (=> b!3844948 m!4399587))

(declare-fun m!4399589 () Bool)

(assert (=> b!3844948 m!4399589))

(declare-fun m!4399591 () Bool)

(assert (=> b!3844948 m!4399591))

(declare-fun m!4399593 () Bool)

(assert (=> b!3844948 m!4399593))

(declare-fun m!4399595 () Bool)

(assert (=> b!3844948 m!4399595))

(declare-fun m!4399597 () Bool)

(assert (=> b!3844948 m!4399597))

(declare-fun m!4399599 () Bool)

(assert (=> b!3844948 m!4399599))

(declare-fun m!4399601 () Bool)

(assert (=> b!3844948 m!4399601))

(declare-fun m!4399603 () Bool)

(assert (=> b!3844948 m!4399603))

(declare-fun m!4399605 () Bool)

(assert (=> b!3844948 m!4399605))

(declare-fun m!4399607 () Bool)

(assert (=> b!3844948 m!4399607))

(assert (=> b!3844948 m!4399601))

(assert (=> b!3844948 m!4399605))

(declare-fun m!4399609 () Bool)

(assert (=> b!3844955 m!4399609))

(declare-fun m!4399611 () Bool)

(assert (=> b!3844932 m!4399611))

(declare-fun m!4399613 () Bool)

(assert (=> b!3844932 m!4399613))

(declare-fun m!4399615 () Bool)

(assert (=> bm!282037 m!4399615))

(declare-fun m!4399617 () Bool)

(assert (=> b!3844962 m!4399617))

(declare-fun m!4399619 () Bool)

(assert (=> b!3844962 m!4399619))

(declare-fun m!4399621 () Bool)

(assert (=> b!3844962 m!4399621))

(assert (=> b!3844962 m!4399617))

(declare-fun m!4399623 () Bool)

(assert (=> b!3844962 m!4399623))

(declare-fun m!4399625 () Bool)

(assert (=> b!3844962 m!4399625))

(declare-fun m!4399627 () Bool)

(assert (=> b!3844957 m!4399627))

(check-sat (not b!3844949) (not b!3844928) (not b!3844953) b_and!286733 (not b!3844933) (not b!3844931) (not b!3844930) (not b!3844955) (not b!3844952) (not b!3844935) (not b!3844942) (not bm!282037) (not b!3844951) (not b!3844958) (not b!3844940) (not b_next!103505) (not b_next!103517) (not b!3844936) (not b!3844964) (not b_next!103509) (not b!3844957) (not b!3844948) (not b_next!103519) (not b!3844950) (not b_next!103511) tp_is_empty!19353 (not b!3844954) b_and!286723 b_and!286727 (not b_next!103515) (not b!3844932) (not b!3844937) b_and!286729 b_and!286721 (not b_next!103513) b_and!286719 (not b!3844938) (not b!3844929) (not b!3844944) (not b!3844943) b_and!286725 (not b!3844961) (not b!3844962) (not b!3844945) b_and!286731 (not b!3844963) (not b_next!103507) (not b!3844947) (not b!3844960))
(check-sat (not b_next!103509) b_and!286723 b_and!286729 b_and!286733 b_and!286725 b_and!286731 (not b_next!103507) (not b_next!103505) (not b_next!103517) (not b_next!103519) (not b_next!103511) b_and!286727 (not b_next!103515) b_and!286721 (not b_next!103513) b_and!286719)
