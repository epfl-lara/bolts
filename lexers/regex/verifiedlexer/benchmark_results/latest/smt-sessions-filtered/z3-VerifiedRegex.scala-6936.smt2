; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366848 () Bool)

(assert start!366848)

(declare-fun b!3914861 () Bool)

(declare-fun b_free!106277 () Bool)

(declare-fun b_next!106981 () Bool)

(assert (=> b!3914861 (= b_free!106277 (not b_next!106981))))

(declare-fun tp!1191640 () Bool)

(declare-fun b_and!298019 () Bool)

(assert (=> b!3914861 (= tp!1191640 b_and!298019)))

(declare-fun b_free!106279 () Bool)

(declare-fun b_next!106983 () Bool)

(assert (=> b!3914861 (= b_free!106279 (not b_next!106983))))

(declare-fun tp!1191641 () Bool)

(declare-fun b_and!298021 () Bool)

(assert (=> b!3914861 (= tp!1191641 b_and!298021)))

(declare-fun b!3914869 () Bool)

(declare-fun b_free!106281 () Bool)

(declare-fun b_next!106985 () Bool)

(assert (=> b!3914869 (= b_free!106281 (not b_next!106985))))

(declare-fun tp!1191639 () Bool)

(declare-fun b_and!298023 () Bool)

(assert (=> b!3914869 (= tp!1191639 b_and!298023)))

(declare-fun b_free!106283 () Bool)

(declare-fun b_next!106987 () Bool)

(assert (=> b!3914869 (= b_free!106283 (not b_next!106987))))

(declare-fun tp!1191646 () Bool)

(declare-fun b_and!298025 () Bool)

(assert (=> b!3914869 (= tp!1191646 b_and!298025)))

(declare-fun b!3914876 () Bool)

(declare-fun b_free!106285 () Bool)

(declare-fun b_next!106989 () Bool)

(assert (=> b!3914876 (= b_free!106285 (not b_next!106989))))

(declare-fun tp!1191643 () Bool)

(declare-fun b_and!298027 () Bool)

(assert (=> b!3914876 (= tp!1191643 b_and!298027)))

(declare-fun b_free!106287 () Bool)

(declare-fun b_next!106991 () Bool)

(assert (=> b!3914876 (= b_free!106287 (not b_next!106991))))

(declare-fun tp!1191650 () Bool)

(declare-fun b_and!298029 () Bool)

(assert (=> b!3914876 (= tp!1191650 b_and!298029)))

(declare-fun e!2420500 () Bool)

(assert (=> b!3914861 (= e!2420500 (and tp!1191640 tp!1191641))))

(declare-fun b!3914862 () Bool)

(declare-fun res!1583500 () Bool)

(declare-fun e!2420503 () Bool)

(assert (=> b!3914862 (=> (not res!1583500) (not e!2420503))))

(declare-datatypes ((LexerInterface!6049 0))(
  ( (LexerInterfaceExt!6046 (__x!25597 Int)) (Lexer!6047) )
))
(declare-fun thiss!20629 () LexerInterface!6049)

(declare-datatypes ((C!22916 0))(
  ( (C!22917 (val!13552 Int)) )
))
(declare-datatypes ((List!41613 0))(
  ( (Nil!41489) (Cons!41489 (h!46909 C!22916) (t!323618 List!41613)) )
))
(declare-datatypes ((IArray!25347 0))(
  ( (IArray!25348 (innerList!12731 List!41613)) )
))
(declare-datatypes ((Conc!12671 0))(
  ( (Node!12671 (left!31747 Conc!12671) (right!32077 Conc!12671) (csize!25572 Int) (cheight!12882 Int)) (Leaf!19608 (xs!15977 IArray!25347) (csize!25573 Int)) (Empty!12671) )
))
(declare-datatypes ((BalanceConc!24936 0))(
  ( (BalanceConc!24937 (c!680438 Conc!12671)) )
))
(declare-datatypes ((List!41614 0))(
  ( (Nil!41490) (Cons!41490 (h!46910 (_ BitVec 16)) (t!323619 List!41614)) )
))
(declare-datatypes ((TokenValue!6690 0))(
  ( (FloatLiteralValue!13380 (text!47275 List!41614)) (TokenValueExt!6689 (__x!25598 Int)) (Broken!33450 (value!204718 List!41614)) (Object!6813) (End!6690) (Def!6690) (Underscore!6690) (Match!6690) (Else!6690) (Error!6690) (Case!6690) (If!6690) (Extends!6690) (Abstract!6690) (Class!6690) (Val!6690) (DelimiterValue!13380 (del!6750 List!41614)) (KeywordValue!6696 (value!204719 List!41614)) (CommentValue!13380 (value!204720 List!41614)) (WhitespaceValue!13380 (value!204721 List!41614)) (IndentationValue!6690 (value!204722 List!41614)) (String!47167) (Int32!6690) (Broken!33451 (value!204723 List!41614)) (Boolean!6691) (Unit!59628) (OperatorValue!6693 (op!6750 List!41614)) (IdentifierValue!13380 (value!204724 List!41614)) (IdentifierValue!13381 (value!204725 List!41614)) (WhitespaceValue!13381 (value!204726 List!41614)) (True!13380) (False!13380) (Broken!33452 (value!204727 List!41614)) (Broken!33453 (value!204728 List!41614)) (True!13381) (RightBrace!6690) (RightBracket!6690) (Colon!6690) (Null!6690) (Comma!6690) (LeftBracket!6690) (False!13381) (LeftBrace!6690) (ImaginaryLiteralValue!6690 (text!47276 List!41614)) (StringLiteralValue!20070 (value!204729 List!41614)) (EOFValue!6690 (value!204730 List!41614)) (IdentValue!6690 (value!204731 List!41614)) (DelimiterValue!13381 (value!204732 List!41614)) (DedentValue!6690 (value!204733 List!41614)) (NewLineValue!6690 (value!204734 List!41614)) (IntegerValue!20070 (value!204735 (_ BitVec 32)) (text!47277 List!41614)) (IntegerValue!20071 (value!204736 Int) (text!47278 List!41614)) (Times!6690) (Or!6690) (Equal!6690) (Minus!6690) (Broken!33454 (value!204737 List!41614)) (And!6690) (Div!6690) (LessEqual!6690) (Mod!6690) (Concat!18055) (Not!6690) (Plus!6690) (SpaceValue!6690 (value!204738 List!41614)) (IntegerValue!20072 (value!204739 Int) (text!47279 List!41614)) (StringLiteralValue!20071 (text!47280 List!41614)) (FloatLiteralValue!13381 (text!47281 List!41614)) (BytesLiteralValue!6690 (value!204740 List!41614)) (CommentValue!13381 (value!204741 List!41614)) (StringLiteralValue!20072 (value!204742 List!41614)) (ErrorTokenValue!6690 (msg!6751 List!41614)) )
))
(declare-datatypes ((Regex!11365 0))(
  ( (ElementMatch!11365 (c!680439 C!22916)) (Concat!18056 (regOne!23242 Regex!11365) (regTwo!23242 Regex!11365)) (EmptyExpr!11365) (Star!11365 (reg!11694 Regex!11365)) (EmptyLang!11365) (Union!11365 (regOne!23243 Regex!11365) (regTwo!23243 Regex!11365)) )
))
(declare-datatypes ((String!47168 0))(
  ( (String!47169 (value!204743 String)) )
))
(declare-datatypes ((TokenValueInjection!12808 0))(
  ( (TokenValueInjection!12809 (toValue!8908 Int) (toChars!8767 Int)) )
))
(declare-datatypes ((Rule!12720 0))(
  ( (Rule!12721 (regex!6460 Regex!11365) (tag!7320 String!47168) (isSeparator!6460 Bool) (transformation!6460 TokenValueInjection!12808)) )
))
(declare-datatypes ((List!41615 0))(
  ( (Nil!41491) (Cons!41491 (h!46911 Rule!12720) (t!323620 List!41615)) )
))
(declare-fun rules!2768 () List!41615)

(declare-fun rulesInvariant!5392 (LexerInterface!6049 List!41615) Bool)

(assert (=> b!3914862 (= res!1583500 (rulesInvariant!5392 thiss!20629 rules!2768))))

(declare-fun b!3914863 () Bool)

(declare-fun e!2420481 () Bool)

(declare-fun e!2420483 () Bool)

(assert (=> b!3914863 (= e!2420481 e!2420483)))

(declare-fun res!1583496 () Bool)

(assert (=> b!3914863 (=> res!1583496 e!2420483)))

(declare-fun lt!1363925 () Int)

(declare-fun lt!1363935 () Int)

(assert (=> b!3914863 (= res!1583496 (>= lt!1363925 lt!1363935))))

(declare-fun suffix!1176 () List!41613)

(declare-fun size!31151 (List!41613) Int)

(assert (=> b!3914863 (= lt!1363935 (size!31151 suffix!1176))))

(declare-datatypes ((Token!12058 0))(
  ( (Token!12059 (value!204744 TokenValue!6690) (rule!9382 Rule!12720) (size!31152 Int) (originalCharacters!7060 List!41613)) )
))
(declare-datatypes ((tuple2!40742 0))(
  ( (tuple2!40743 (_1!23505 Token!12058) (_2!23505 List!41613)) )
))
(declare-datatypes ((Option!8880 0))(
  ( (None!8879) (Some!8879 (v!39203 tuple2!40742)) )
))
(declare-fun lt!1363924 () Option!8880)

(assert (=> b!3914863 (= lt!1363925 (size!31151 (_2!23505 (v!39203 lt!1363924))))))

(declare-fun e!2420493 () Bool)

(declare-fun b!3914864 () Bool)

(declare-fun tp!1191648 () Bool)

(declare-datatypes ((List!41616 0))(
  ( (Nil!41492) (Cons!41492 (h!46912 Token!12058) (t!323621 List!41616)) )
))
(declare-fun suffixTokens!72 () List!41616)

(declare-fun e!2420486 () Bool)

(declare-fun inv!55677 (String!47168) Bool)

(declare-fun inv!55680 (TokenValueInjection!12808) Bool)

(assert (=> b!3914864 (= e!2420493 (and tp!1191648 (inv!55677 (tag!7320 (rule!9382 (h!46912 suffixTokens!72)))) (inv!55680 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) e!2420486))))

(declare-fun b!3914865 () Bool)

(declare-fun e!2420501 () Bool)

(declare-fun e!2420506 () Bool)

(assert (=> b!3914865 (= e!2420501 e!2420506)))

(declare-fun res!1583497 () Bool)

(assert (=> b!3914865 (=> (not res!1583497) (not e!2420506))))

(get-info :version)

(assert (=> b!3914865 (= res!1583497 ((_ is Some!8879) lt!1363924))))

(declare-fun lt!1363918 () List!41613)

(declare-fun maxPrefix!3353 (LexerInterface!6049 List!41615 List!41613) Option!8880)

(assert (=> b!3914865 (= lt!1363924 (maxPrefix!3353 thiss!20629 rules!2768 lt!1363918))))

(declare-fun e!2420489 () Bool)

(declare-fun prefixTokens!80 () List!41616)

(declare-fun b!3914866 () Bool)

(declare-fun e!2420505 () Bool)

(declare-fun tp!1191638 () Bool)

(declare-fun inv!21 (TokenValue!6690) Bool)

(assert (=> b!3914866 (= e!2420505 (and (inv!21 (value!204744 (h!46912 prefixTokens!80))) e!2420489 tp!1191638))))

(declare-fun b!3914867 () Bool)

(declare-fun res!1583506 () Bool)

(assert (=> b!3914867 (=> res!1583506 e!2420481)))

(declare-datatypes ((tuple2!40744 0))(
  ( (tuple2!40745 (_1!23506 List!41616) (_2!23506 List!41613)) )
))
(declare-fun lt!1363931 () tuple2!40744)

(assert (=> b!3914867 (= res!1583506 (or (not (= lt!1363931 (tuple2!40745 (_1!23506 lt!1363931) (_2!23506 lt!1363931)))) (= (_2!23505 (v!39203 lt!1363924)) suffix!1176)))))

(declare-fun b!3914868 () Bool)

(declare-fun res!1583510 () Bool)

(assert (=> b!3914868 (=> (not res!1583510) (not e!2420503))))

(declare-fun isEmpty!24688 (List!41615) Bool)

(assert (=> b!3914868 (= res!1583510 (not (isEmpty!24688 rules!2768)))))

(assert (=> b!3914869 (= e!2420486 (and tp!1191639 tp!1191646))))

(declare-fun tp!1191654 () Bool)

(declare-fun b!3914870 () Bool)

(assert (=> b!3914870 (= e!2420489 (and tp!1191654 (inv!55677 (tag!7320 (rule!9382 (h!46912 prefixTokens!80)))) (inv!55680 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) e!2420500))))

(declare-fun b!3914871 () Bool)

(declare-fun res!1583495 () Bool)

(assert (=> b!3914871 (=> res!1583495 e!2420481)))

(declare-fun lt!1363921 () tuple2!40744)

(declare-fun ++!10677 (List!41616 List!41616) List!41616)

(assert (=> b!3914871 (= res!1583495 (not (= lt!1363921 (tuple2!40745 (++!10677 (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492) (_1!23506 lt!1363931)) (_2!23506 lt!1363931)))))))

(declare-fun b!3914872 () Bool)

(declare-fun res!1583503 () Bool)

(declare-fun e!2420482 () Bool)

(assert (=> b!3914872 (=> res!1583503 e!2420482)))

(declare-fun lt!1363915 () Token!12058)

(assert (=> b!3914872 (= res!1583503 (or (not (= prefixTokens!80 (Cons!41492 lt!1363915 Nil!41492))) (not (= (_1!23505 (v!39203 lt!1363924)) lt!1363915))))))

(declare-fun b!3914873 () Bool)

(declare-fun e!2420484 () Bool)

(declare-fun e!2420497 () Bool)

(assert (=> b!3914873 (= e!2420484 e!2420497)))

(declare-fun res!1583498 () Bool)

(assert (=> b!3914873 (=> res!1583498 e!2420497)))

(declare-fun lt!1363930 () List!41613)

(declare-fun matchR!5454 (Regex!11365 List!41613) Bool)

(assert (=> b!3914873 (= res!1583498 (not (matchR!5454 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) lt!1363930)))))

(declare-fun lt!1363919 () TokenValue!6690)

(declare-fun lt!1363923 () Int)

(declare-fun maxPrefixOneRule!2423 (LexerInterface!6049 Rule!12720 List!41613) Option!8880)

(assert (=> b!3914873 (= (maxPrefixOneRule!2423 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))) lt!1363918) (Some!8879 (tuple2!40743 (Token!12059 lt!1363919 (rule!9382 (_1!23505 (v!39203 lt!1363924))) lt!1363923 lt!1363930) (_2!23505 (v!39203 lt!1363924)))))))

(declare-datatypes ((Unit!59629 0))(
  ( (Unit!59630) )
))
(declare-fun lt!1363926 () Unit!59629)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1291 (LexerInterface!6049 List!41615 List!41613 List!41613 List!41613 Rule!12720) Unit!59629)

(assert (=> b!3914873 (= lt!1363926 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1291 thiss!20629 rules!2768 lt!1363930 lt!1363918 (_2!23505 (v!39203 lt!1363924)) (rule!9382 (_1!23505 (v!39203 lt!1363924)))))))

(declare-fun b!3914874 () Bool)

(declare-fun res!1583499 () Bool)

(assert (=> b!3914874 (=> (not res!1583499) (not e!2420501))))

(declare-fun suffixResult!91 () List!41613)

(declare-fun lexList!1817 (LexerInterface!6049 List!41615 List!41613) tuple2!40744)

(assert (=> b!3914874 (= res!1583499 (= (lexList!1817 thiss!20629 rules!2768 suffix!1176) (tuple2!40745 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3914875 () Bool)

(declare-fun res!1583507 () Bool)

(assert (=> b!3914875 (=> (not res!1583507) (not e!2420503))))

(declare-fun prefix!426 () List!41613)

(declare-fun isEmpty!24689 (List!41613) Bool)

(assert (=> b!3914875 (= res!1583507 (not (isEmpty!24689 prefix!426)))))

(declare-fun e!2420491 () Bool)

(assert (=> b!3914876 (= e!2420491 (and tp!1191643 tp!1191650))))

(declare-fun b!3914877 () Bool)

(declare-fun e!2420490 () Bool)

(declare-fun tp_is_empty!19701 () Bool)

(declare-fun tp!1191645 () Bool)

(assert (=> b!3914877 (= e!2420490 (and tp_is_empty!19701 tp!1191645))))

(declare-fun b!3914878 () Bool)

(declare-fun e!2420488 () Bool)

(assert (=> b!3914878 (= e!2420488 (= (size!31152 (_1!23505 (v!39203 lt!1363924))) (size!31151 (originalCharacters!7060 (_1!23505 (v!39203 lt!1363924))))))))

(declare-fun b!3914879 () Bool)

(declare-fun e!2420496 () Bool)

(declare-fun tp!1191651 () Bool)

(assert (=> b!3914879 (= e!2420496 (and tp_is_empty!19701 tp!1191651))))

(declare-fun b!3914880 () Bool)

(declare-fun res!1583501 () Bool)

(assert (=> b!3914880 (=> (not res!1583501) (not e!2420503))))

(declare-fun isEmpty!24690 (List!41616) Bool)

(assert (=> b!3914880 (= res!1583501 (not (isEmpty!24690 prefixTokens!80)))))

(declare-fun b!3914881 () Bool)

(declare-fun e!2420507 () Bool)

(declare-fun tp!1191649 () Bool)

(assert (=> b!3914881 (= e!2420507 (and (inv!21 (value!204744 (h!46912 suffixTokens!72))) e!2420493 tp!1191649))))

(declare-fun b!3914882 () Bool)

(declare-fun e!2420494 () Bool)

(declare-fun tp!1191653 () Bool)

(assert (=> b!3914882 (= e!2420494 (and tp!1191653 (inv!55677 (tag!7320 (h!46911 rules!2768))) (inv!55680 (transformation!6460 (h!46911 rules!2768))) e!2420491))))

(declare-fun b!3914883 () Bool)

(declare-fun e!2420499 () Bool)

(assert (=> b!3914883 (= e!2420483 e!2420499)))

(declare-fun res!1583505 () Bool)

(assert (=> b!3914883 (=> res!1583505 e!2420499)))

(declare-fun lt!1363927 () Int)

(assert (=> b!3914883 (= res!1583505 (not (= (+ lt!1363923 lt!1363925) lt!1363927)))))

(assert (=> b!3914883 (= lt!1363927 (size!31151 lt!1363918))))

(declare-fun b!3914884 () Bool)

(declare-fun e!2420487 () Bool)

(declare-fun tp!1191647 () Bool)

(assert (=> b!3914884 (= e!2420487 (and e!2420494 tp!1191647))))

(declare-fun b!3914885 () Bool)

(assert (=> b!3914885 (= e!2420499 e!2420484)))

(declare-fun res!1583493 () Bool)

(assert (=> b!3914885 (=> res!1583493 e!2420484)))

(declare-fun lt!1363932 () Int)

(assert (=> b!3914885 (= res!1583493 (or (not (= (+ lt!1363932 lt!1363935) lt!1363927)) (<= lt!1363923 lt!1363932)))))

(assert (=> b!3914885 (= lt!1363932 (size!31151 prefix!426))))

(declare-fun b!3914886 () Bool)

(assert (=> b!3914886 (= e!2420506 (not e!2420481))))

(declare-fun res!1583504 () Bool)

(assert (=> b!3914886 (=> res!1583504 e!2420481)))

(declare-fun lt!1363929 () List!41613)

(assert (=> b!3914886 (= res!1583504 (not (= lt!1363929 lt!1363918)))))

(assert (=> b!3914886 (= lt!1363931 (lexList!1817 thiss!20629 rules!2768 (_2!23505 (v!39203 lt!1363924))))))

(declare-fun lt!1363928 () List!41613)

(assert (=> b!3914886 (and (= (size!31152 (_1!23505 (v!39203 lt!1363924))) lt!1363923) (= (originalCharacters!7060 (_1!23505 (v!39203 lt!1363924))) lt!1363930) (= (v!39203 lt!1363924) (tuple2!40743 (Token!12059 lt!1363919 (rule!9382 (_1!23505 (v!39203 lt!1363924))) lt!1363923 lt!1363930) lt!1363928)))))

(assert (=> b!3914886 (= lt!1363923 (size!31151 lt!1363930))))

(assert (=> b!3914886 e!2420488))

(declare-fun res!1583512 () Bool)

(assert (=> b!3914886 (=> (not res!1583512) (not e!2420488))))

(assert (=> b!3914886 (= res!1583512 (= (value!204744 (_1!23505 (v!39203 lt!1363924))) lt!1363919))))

(declare-fun apply!9699 (TokenValueInjection!12808 BalanceConc!24936) TokenValue!6690)

(declare-fun seqFromList!4727 (List!41613) BalanceConc!24936)

(assert (=> b!3914886 (= lt!1363919 (apply!9699 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (seqFromList!4727 lt!1363930)))))

(assert (=> b!3914886 (= (_2!23505 (v!39203 lt!1363924)) lt!1363928)))

(declare-fun lt!1363922 () Unit!59629)

(declare-fun lemmaSamePrefixThenSameSuffix!1776 (List!41613 List!41613 List!41613 List!41613 List!41613) Unit!59629)

(assert (=> b!3914886 (= lt!1363922 (lemmaSamePrefixThenSameSuffix!1776 lt!1363930 (_2!23505 (v!39203 lt!1363924)) lt!1363930 lt!1363928 lt!1363918))))

(declare-fun getSuffix!2010 (List!41613 List!41613) List!41613)

(assert (=> b!3914886 (= lt!1363928 (getSuffix!2010 lt!1363918 lt!1363930))))

(declare-fun isPrefix!3555 (List!41613 List!41613) Bool)

(assert (=> b!3914886 (isPrefix!3555 lt!1363930 lt!1363929)))

(declare-fun ++!10678 (List!41613 List!41613) List!41613)

(assert (=> b!3914886 (= lt!1363929 (++!10678 lt!1363930 (_2!23505 (v!39203 lt!1363924))))))

(declare-fun lt!1363916 () Unit!59629)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2418 (List!41613 List!41613) Unit!59629)

(assert (=> b!3914886 (= lt!1363916 (lemmaConcatTwoListThenFirstIsPrefix!2418 lt!1363930 (_2!23505 (v!39203 lt!1363924))))))

(declare-fun list!15425 (BalanceConc!24936) List!41613)

(declare-fun charsOf!4284 (Token!12058) BalanceConc!24936)

(assert (=> b!3914886 (= lt!1363930 (list!15425 (charsOf!4284 (_1!23505 (v!39203 lt!1363924)))))))

(declare-fun ruleValid!2408 (LexerInterface!6049 Rule!12720) Bool)

(assert (=> b!3914886 (ruleValid!2408 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))

(declare-fun lt!1363933 () Unit!59629)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1488 (LexerInterface!6049 Rule!12720 List!41615) Unit!59629)

(assert (=> b!3914886 (= lt!1363933 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1488 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))) rules!2768))))

(declare-fun lt!1363934 () Unit!59629)

(declare-fun lemmaCharactersSize!1117 (Token!12058) Unit!59629)

(assert (=> b!3914886 (= lt!1363934 (lemmaCharactersSize!1117 (_1!23505 (v!39203 lt!1363924))))))

(declare-fun b!3914887 () Bool)

(declare-fun res!1583508 () Bool)

(assert (=> b!3914887 (=> res!1583508 e!2420482)))

(declare-fun tail!5989 (List!41616) List!41616)

(assert (=> b!3914887 (= res!1583508 (not (isEmpty!24690 (tail!5989 prefixTokens!80))))))

(declare-fun res!1583502 () Bool)

(assert (=> start!366848 (=> (not res!1583502) (not e!2420503))))

(assert (=> start!366848 (= res!1583502 ((_ is Lexer!6047) thiss!20629))))

(assert (=> start!366848 e!2420503))

(declare-fun e!2420504 () Bool)

(assert (=> start!366848 e!2420504))

(assert (=> start!366848 true))

(assert (=> start!366848 e!2420490))

(assert (=> start!366848 e!2420487))

(declare-fun e!2420485 () Bool)

(assert (=> start!366848 e!2420485))

(declare-fun e!2420498 () Bool)

(assert (=> start!366848 e!2420498))

(assert (=> start!366848 e!2420496))

(declare-fun tp!1191642 () Bool)

(declare-fun b!3914888 () Bool)

(declare-fun inv!55681 (Token!12058) Bool)

(assert (=> b!3914888 (= e!2420485 (and (inv!55681 (h!46912 prefixTokens!80)) e!2420505 tp!1191642))))

(declare-fun b!3914889 () Bool)

(declare-fun tp!1191652 () Bool)

(assert (=> b!3914889 (= e!2420498 (and (inv!55681 (h!46912 suffixTokens!72)) e!2420507 tp!1191652))))

(declare-fun b!3914890 () Bool)

(assert (=> b!3914890 (= e!2420497 e!2420482)))

(declare-fun res!1583509 () Bool)

(assert (=> b!3914890 (=> res!1583509 e!2420482)))

(declare-fun lt!1363920 () tuple2!40742)

(assert (=> b!3914890 (= res!1583509 (not (= (_1!23505 lt!1363920) lt!1363915)))))

(declare-fun head!8273 (List!41616) Token!12058)

(assert (=> b!3914890 (= lt!1363915 (head!8273 prefixTokens!80))))

(declare-fun get!13710 (Option!8880) tuple2!40742)

(assert (=> b!3914890 (= lt!1363920 (get!13710 lt!1363924))))

(declare-fun b!3914891 () Bool)

(assert (=> b!3914891 (= e!2420503 e!2420501)))

(declare-fun res!1583511 () Bool)

(assert (=> b!3914891 (=> (not res!1583511) (not e!2420501))))

(declare-fun lt!1363917 () List!41616)

(assert (=> b!3914891 (= res!1583511 (= lt!1363921 (tuple2!40745 lt!1363917 suffixResult!91)))))

(assert (=> b!3914891 (= lt!1363921 (lexList!1817 thiss!20629 rules!2768 lt!1363918))))

(assert (=> b!3914891 (= lt!1363917 (++!10677 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3914891 (= lt!1363918 (++!10678 prefix!426 suffix!1176))))

(declare-fun b!3914892 () Bool)

(declare-fun tp!1191644 () Bool)

(assert (=> b!3914892 (= e!2420504 (and tp_is_empty!19701 tp!1191644))))

(declare-fun b!3914893 () Bool)

(declare-fun res!1583494 () Bool)

(assert (=> b!3914893 (=> res!1583494 e!2420482)))

(assert (=> b!3914893 (= res!1583494 (>= (size!31151 (_2!23505 lt!1363920)) lt!1363935))))

(declare-fun b!3914894 () Bool)

(assert (=> b!3914894 (= e!2420482 (= lt!1363929 (++!10678 lt!1363930 (_2!23505 lt!1363920))))))

(assert (= (and start!366848 res!1583502) b!3914868))

(assert (= (and b!3914868 res!1583510) b!3914862))

(assert (= (and b!3914862 res!1583500) b!3914880))

(assert (= (and b!3914880 res!1583501) b!3914875))

(assert (= (and b!3914875 res!1583507) b!3914891))

(assert (= (and b!3914891 res!1583511) b!3914874))

(assert (= (and b!3914874 res!1583499) b!3914865))

(assert (= (and b!3914865 res!1583497) b!3914886))

(assert (= (and b!3914886 res!1583512) b!3914878))

(assert (= (and b!3914886 (not res!1583504)) b!3914871))

(assert (= (and b!3914871 (not res!1583495)) b!3914867))

(assert (= (and b!3914867 (not res!1583506)) b!3914863))

(assert (= (and b!3914863 (not res!1583496)) b!3914883))

(assert (= (and b!3914883 (not res!1583505)) b!3914885))

(assert (= (and b!3914885 (not res!1583493)) b!3914873))

(assert (= (and b!3914873 (not res!1583498)) b!3914890))

(assert (= (and b!3914890 (not res!1583509)) b!3914893))

(assert (= (and b!3914893 (not res!1583494)) b!3914887))

(assert (= (and b!3914887 (not res!1583508)) b!3914872))

(assert (= (and b!3914872 (not res!1583503)) b!3914894))

(assert (= (and start!366848 ((_ is Cons!41489) suffixResult!91)) b!3914892))

(assert (= (and start!366848 ((_ is Cons!41489) suffix!1176)) b!3914877))

(assert (= b!3914882 b!3914876))

(assert (= b!3914884 b!3914882))

(assert (= (and start!366848 ((_ is Cons!41491) rules!2768)) b!3914884))

(assert (= b!3914870 b!3914861))

(assert (= b!3914866 b!3914870))

(assert (= b!3914888 b!3914866))

(assert (= (and start!366848 ((_ is Cons!41492) prefixTokens!80)) b!3914888))

(assert (= b!3914864 b!3914869))

(assert (= b!3914881 b!3914864))

(assert (= b!3914889 b!3914881))

(assert (= (and start!366848 ((_ is Cons!41492) suffixTokens!72)) b!3914889))

(assert (= (and start!366848 ((_ is Cons!41489) prefix!426)) b!3914879))

(declare-fun m!4478193 () Bool)

(assert (=> b!3914865 m!4478193))

(declare-fun m!4478195 () Bool)

(assert (=> b!3914863 m!4478195))

(declare-fun m!4478197 () Bool)

(assert (=> b!3914863 m!4478197))

(declare-fun m!4478199 () Bool)

(assert (=> b!3914891 m!4478199))

(declare-fun m!4478201 () Bool)

(assert (=> b!3914891 m!4478201))

(declare-fun m!4478203 () Bool)

(assert (=> b!3914891 m!4478203))

(declare-fun m!4478205 () Bool)

(assert (=> b!3914887 m!4478205))

(assert (=> b!3914887 m!4478205))

(declare-fun m!4478207 () Bool)

(assert (=> b!3914887 m!4478207))

(declare-fun m!4478209 () Bool)

(assert (=> b!3914868 m!4478209))

(declare-fun m!4478211 () Bool)

(assert (=> b!3914878 m!4478211))

(declare-fun m!4478213 () Bool)

(assert (=> b!3914875 m!4478213))

(declare-fun m!4478215 () Bool)

(assert (=> b!3914885 m!4478215))

(declare-fun m!4478217 () Bool)

(assert (=> b!3914880 m!4478217))

(declare-fun m!4478219 () Bool)

(assert (=> b!3914862 m!4478219))

(declare-fun m!4478221 () Bool)

(assert (=> b!3914886 m!4478221))

(declare-fun m!4478223 () Bool)

(assert (=> b!3914886 m!4478223))

(declare-fun m!4478225 () Bool)

(assert (=> b!3914886 m!4478225))

(declare-fun m!4478227 () Bool)

(assert (=> b!3914886 m!4478227))

(declare-fun m!4478229 () Bool)

(assert (=> b!3914886 m!4478229))

(declare-fun m!4478231 () Bool)

(assert (=> b!3914886 m!4478231))

(declare-fun m!4478233 () Bool)

(assert (=> b!3914886 m!4478233))

(declare-fun m!4478235 () Bool)

(assert (=> b!3914886 m!4478235))

(declare-fun m!4478237 () Bool)

(assert (=> b!3914886 m!4478237))

(declare-fun m!4478239 () Bool)

(assert (=> b!3914886 m!4478239))

(declare-fun m!4478241 () Bool)

(assert (=> b!3914886 m!4478241))

(assert (=> b!3914886 m!4478239))

(declare-fun m!4478243 () Bool)

(assert (=> b!3914886 m!4478243))

(declare-fun m!4478245 () Bool)

(assert (=> b!3914886 m!4478245))

(assert (=> b!3914886 m!4478245))

(declare-fun m!4478247 () Bool)

(assert (=> b!3914886 m!4478247))

(declare-fun m!4478249 () Bool)

(assert (=> b!3914870 m!4478249))

(declare-fun m!4478251 () Bool)

(assert (=> b!3914870 m!4478251))

(declare-fun m!4478253 () Bool)

(assert (=> b!3914882 m!4478253))

(declare-fun m!4478255 () Bool)

(assert (=> b!3914882 m!4478255))

(declare-fun m!4478257 () Bool)

(assert (=> b!3914873 m!4478257))

(declare-fun m!4478259 () Bool)

(assert (=> b!3914873 m!4478259))

(declare-fun m!4478261 () Bool)

(assert (=> b!3914873 m!4478261))

(declare-fun m!4478263 () Bool)

(assert (=> b!3914864 m!4478263))

(declare-fun m!4478265 () Bool)

(assert (=> b!3914864 m!4478265))

(declare-fun m!4478267 () Bool)

(assert (=> b!3914888 m!4478267))

(declare-fun m!4478269 () Bool)

(assert (=> b!3914894 m!4478269))

(declare-fun m!4478271 () Bool)

(assert (=> b!3914889 m!4478271))

(declare-fun m!4478273 () Bool)

(assert (=> b!3914883 m!4478273))

(declare-fun m!4478275 () Bool)

(assert (=> b!3914881 m!4478275))

(declare-fun m!4478277 () Bool)

(assert (=> b!3914890 m!4478277))

(declare-fun m!4478279 () Bool)

(assert (=> b!3914890 m!4478279))

(declare-fun m!4478281 () Bool)

(assert (=> b!3914874 m!4478281))

(declare-fun m!4478283 () Bool)

(assert (=> b!3914866 m!4478283))

(declare-fun m!4478285 () Bool)

(assert (=> b!3914893 m!4478285))

(declare-fun m!4478287 () Bool)

(assert (=> b!3914871 m!4478287))

(check-sat (not b!3914888) b_and!298027 (not b!3914884) (not b!3914880) (not b!3914892) (not b!3914868) b_and!298021 (not b!3914871) (not b!3914889) b_and!298025 (not b!3914881) (not b!3914891) b_and!298029 (not b_next!106987) (not b!3914890) (not b_next!106989) (not b!3914877) (not b_next!106985) (not b!3914862) (not b!3914870) (not b_next!106981) b_and!298019 (not b!3914875) b_and!298023 (not b!3914885) (not b!3914894) (not b!3914879) (not b!3914864) (not b!3914866) (not b_next!106983) (not b!3914886) (not b!3914893) (not b!3914863) (not b!3914865) (not b!3914883) (not b!3914874) tp_is_empty!19701 (not b!3914878) (not b!3914873) (not b_next!106991) (not b!3914887) (not b!3914882))
(check-sat (not b_next!106989) (not b_next!106985) b_and!298027 b_and!298021 b_and!298023 b_and!298025 (not b_next!106983) b_and!298029 (not b_next!106991) (not b_next!106987) (not b_next!106981) b_and!298019)
(get-model)

(declare-fun d!1161309 () Bool)

(declare-fun res!1583519 () Bool)

(declare-fun e!2420511 () Bool)

(assert (=> d!1161309 (=> (not res!1583519) (not e!2420511))))

(assert (=> d!1161309 (= res!1583519 (not (isEmpty!24689 (originalCharacters!7060 (h!46912 suffixTokens!72)))))))

(assert (=> d!1161309 (= (inv!55681 (h!46912 suffixTokens!72)) e!2420511)))

(declare-fun b!3914899 () Bool)

(declare-fun res!1583520 () Bool)

(assert (=> b!3914899 (=> (not res!1583520) (not e!2420511))))

(declare-fun dynLambda!17823 (Int TokenValue!6690) BalanceConc!24936)

(assert (=> b!3914899 (= res!1583520 (= (originalCharacters!7060 (h!46912 suffixTokens!72)) (list!15425 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (value!204744 (h!46912 suffixTokens!72))))))))

(declare-fun b!3914900 () Bool)

(assert (=> b!3914900 (= e!2420511 (= (size!31152 (h!46912 suffixTokens!72)) (size!31151 (originalCharacters!7060 (h!46912 suffixTokens!72)))))))

(assert (= (and d!1161309 res!1583519) b!3914899))

(assert (= (and b!3914899 res!1583520) b!3914900))

(declare-fun b_lambda!114623 () Bool)

(assert (=> (not b_lambda!114623) (not b!3914899)))

(declare-fun t!323623 () Bool)

(declare-fun tb!233285 () Bool)

(assert (=> (and b!3914861 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))) t!323623) tb!233285))

(declare-fun b!3914905 () Bool)

(declare-fun e!2420514 () Bool)

(declare-fun tp!1191657 () Bool)

(declare-fun inv!55682 (Conc!12671) Bool)

(assert (=> b!3914905 (= e!2420514 (and (inv!55682 (c!680438 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (value!204744 (h!46912 suffixTokens!72))))) tp!1191657))))

(declare-fun result!282738 () Bool)

(declare-fun inv!55683 (BalanceConc!24936) Bool)

(assert (=> tb!233285 (= result!282738 (and (inv!55683 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (value!204744 (h!46912 suffixTokens!72)))) e!2420514))))

(assert (= tb!233285 b!3914905))

(declare-fun m!4478289 () Bool)

(assert (=> b!3914905 m!4478289))

(declare-fun m!4478291 () Bool)

(assert (=> tb!233285 m!4478291))

(assert (=> b!3914899 t!323623))

(declare-fun b_and!298031 () Bool)

(assert (= b_and!298021 (and (=> t!323623 result!282738) b_and!298031)))

(declare-fun t!323625 () Bool)

(declare-fun tb!233287 () Bool)

(assert (=> (and b!3914869 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))) t!323625) tb!233287))

(declare-fun result!282742 () Bool)

(assert (= result!282742 result!282738))

(assert (=> b!3914899 t!323625))

(declare-fun b_and!298033 () Bool)

(assert (= b_and!298025 (and (=> t!323625 result!282742) b_and!298033)))

(declare-fun t!323627 () Bool)

(declare-fun tb!233289 () Bool)

(assert (=> (and b!3914876 (= (toChars!8767 (transformation!6460 (h!46911 rules!2768))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))) t!323627) tb!233289))

(declare-fun result!282744 () Bool)

(assert (= result!282744 result!282738))

(assert (=> b!3914899 t!323627))

(declare-fun b_and!298035 () Bool)

(assert (= b_and!298029 (and (=> t!323627 result!282744) b_and!298035)))

(declare-fun m!4478293 () Bool)

(assert (=> d!1161309 m!4478293))

(declare-fun m!4478295 () Bool)

(assert (=> b!3914899 m!4478295))

(assert (=> b!3914899 m!4478295))

(declare-fun m!4478297 () Bool)

(assert (=> b!3914899 m!4478297))

(declare-fun m!4478299 () Bool)

(assert (=> b!3914900 m!4478299))

(assert (=> b!3914889 d!1161309))

(declare-fun d!1161311 () Bool)

(assert (=> d!1161311 (= (isEmpty!24688 rules!2768) ((_ is Nil!41491) rules!2768))))

(assert (=> b!3914868 d!1161311))

(declare-fun d!1161313 () Bool)

(assert (=> d!1161313 (= (head!8273 prefixTokens!80) (h!46912 prefixTokens!80))))

(assert (=> b!3914890 d!1161313))

(declare-fun d!1161315 () Bool)

(assert (=> d!1161315 (= (get!13710 lt!1363924) (v!39203 lt!1363924))))

(assert (=> b!3914890 d!1161315))

(declare-fun b!3914916 () Bool)

(declare-fun e!2420521 () Bool)

(declare-fun lt!1363944 () tuple2!40744)

(assert (=> b!3914916 (= e!2420521 (= (_2!23506 lt!1363944) lt!1363918))))

(declare-fun b!3914917 () Bool)

(declare-fun e!2420523 () tuple2!40744)

(declare-fun lt!1363943 () Option!8880)

(declare-fun lt!1363942 () tuple2!40744)

(assert (=> b!3914917 (= e!2420523 (tuple2!40745 (Cons!41492 (_1!23505 (v!39203 lt!1363943)) (_1!23506 lt!1363942)) (_2!23506 lt!1363942)))))

(assert (=> b!3914917 (= lt!1363942 (lexList!1817 thiss!20629 rules!2768 (_2!23505 (v!39203 lt!1363943))))))

(declare-fun b!3914918 () Bool)

(declare-fun e!2420522 () Bool)

(assert (=> b!3914918 (= e!2420521 e!2420522)))

(declare-fun res!1583523 () Bool)

(assert (=> b!3914918 (= res!1583523 (< (size!31151 (_2!23506 lt!1363944)) (size!31151 lt!1363918)))))

(assert (=> b!3914918 (=> (not res!1583523) (not e!2420522))))

(declare-fun d!1161317 () Bool)

(assert (=> d!1161317 e!2420521))

(declare-fun c!680445 () Bool)

(declare-fun size!31153 (List!41616) Int)

(assert (=> d!1161317 (= c!680445 (> (size!31153 (_1!23506 lt!1363944)) 0))))

(assert (=> d!1161317 (= lt!1363944 e!2420523)))

(declare-fun c!680444 () Bool)

(assert (=> d!1161317 (= c!680444 ((_ is Some!8879) lt!1363943))))

(assert (=> d!1161317 (= lt!1363943 (maxPrefix!3353 thiss!20629 rules!2768 lt!1363918))))

(assert (=> d!1161317 (= (lexList!1817 thiss!20629 rules!2768 lt!1363918) lt!1363944)))

(declare-fun b!3914919 () Bool)

(assert (=> b!3914919 (= e!2420523 (tuple2!40745 Nil!41492 lt!1363918))))

(declare-fun b!3914920 () Bool)

(assert (=> b!3914920 (= e!2420522 (not (isEmpty!24690 (_1!23506 lt!1363944))))))

(assert (= (and d!1161317 c!680444) b!3914917))

(assert (= (and d!1161317 (not c!680444)) b!3914919))

(assert (= (and d!1161317 c!680445) b!3914918))

(assert (= (and d!1161317 (not c!680445)) b!3914916))

(assert (= (and b!3914918 res!1583523) b!3914920))

(declare-fun m!4478301 () Bool)

(assert (=> b!3914917 m!4478301))

(declare-fun m!4478303 () Bool)

(assert (=> b!3914918 m!4478303))

(assert (=> b!3914918 m!4478273))

(declare-fun m!4478305 () Bool)

(assert (=> d!1161317 m!4478305))

(assert (=> d!1161317 m!4478193))

(declare-fun m!4478307 () Bool)

(assert (=> b!3914920 m!4478307))

(assert (=> b!3914891 d!1161317))

(declare-fun b!3914929 () Bool)

(declare-fun e!2420528 () List!41616)

(assert (=> b!3914929 (= e!2420528 suffixTokens!72)))

(declare-fun d!1161319 () Bool)

(declare-fun e!2420529 () Bool)

(assert (=> d!1161319 e!2420529))

(declare-fun res!1583529 () Bool)

(assert (=> d!1161319 (=> (not res!1583529) (not e!2420529))))

(declare-fun lt!1363947 () List!41616)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6235 (List!41616) (InoxSet Token!12058))

(assert (=> d!1161319 (= res!1583529 (= (content!6235 lt!1363947) ((_ map or) (content!6235 prefixTokens!80) (content!6235 suffixTokens!72))))))

(assert (=> d!1161319 (= lt!1363947 e!2420528)))

(declare-fun c!680448 () Bool)

(assert (=> d!1161319 (= c!680448 ((_ is Nil!41492) prefixTokens!80))))

(assert (=> d!1161319 (= (++!10677 prefixTokens!80 suffixTokens!72) lt!1363947)))

(declare-fun b!3914931 () Bool)

(declare-fun res!1583528 () Bool)

(assert (=> b!3914931 (=> (not res!1583528) (not e!2420529))))

(assert (=> b!3914931 (= res!1583528 (= (size!31153 lt!1363947) (+ (size!31153 prefixTokens!80) (size!31153 suffixTokens!72))))))

(declare-fun b!3914932 () Bool)

(assert (=> b!3914932 (= e!2420529 (or (not (= suffixTokens!72 Nil!41492)) (= lt!1363947 prefixTokens!80)))))

(declare-fun b!3914930 () Bool)

(assert (=> b!3914930 (= e!2420528 (Cons!41492 (h!46912 prefixTokens!80) (++!10677 (t!323621 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1161319 c!680448) b!3914929))

(assert (= (and d!1161319 (not c!680448)) b!3914930))

(assert (= (and d!1161319 res!1583529) b!3914931))

(assert (= (and b!3914931 res!1583528) b!3914932))

(declare-fun m!4478309 () Bool)

(assert (=> d!1161319 m!4478309))

(declare-fun m!4478311 () Bool)

(assert (=> d!1161319 m!4478311))

(declare-fun m!4478313 () Bool)

(assert (=> d!1161319 m!4478313))

(declare-fun m!4478315 () Bool)

(assert (=> b!3914931 m!4478315))

(declare-fun m!4478317 () Bool)

(assert (=> b!3914931 m!4478317))

(declare-fun m!4478319 () Bool)

(assert (=> b!3914931 m!4478319))

(declare-fun m!4478321 () Bool)

(assert (=> b!3914930 m!4478321))

(assert (=> b!3914891 d!1161319))

(declare-fun b!3914941 () Bool)

(declare-fun e!2420534 () List!41613)

(assert (=> b!3914941 (= e!2420534 suffix!1176)))

(declare-fun b!3914943 () Bool)

(declare-fun res!1583534 () Bool)

(declare-fun e!2420535 () Bool)

(assert (=> b!3914943 (=> (not res!1583534) (not e!2420535))))

(declare-fun lt!1363950 () List!41613)

(assert (=> b!3914943 (= res!1583534 (= (size!31151 lt!1363950) (+ (size!31151 prefix!426) (size!31151 suffix!1176))))))

(declare-fun b!3914942 () Bool)

(assert (=> b!3914942 (= e!2420534 (Cons!41489 (h!46909 prefix!426) (++!10678 (t!323618 prefix!426) suffix!1176)))))

(declare-fun b!3914944 () Bool)

(assert (=> b!3914944 (= e!2420535 (or (not (= suffix!1176 Nil!41489)) (= lt!1363950 prefix!426)))))

(declare-fun d!1161321 () Bool)

(assert (=> d!1161321 e!2420535))

(declare-fun res!1583535 () Bool)

(assert (=> d!1161321 (=> (not res!1583535) (not e!2420535))))

(declare-fun content!6236 (List!41613) (InoxSet C!22916))

(assert (=> d!1161321 (= res!1583535 (= (content!6236 lt!1363950) ((_ map or) (content!6236 prefix!426) (content!6236 suffix!1176))))))

(assert (=> d!1161321 (= lt!1363950 e!2420534)))

(declare-fun c!680451 () Bool)

(assert (=> d!1161321 (= c!680451 ((_ is Nil!41489) prefix!426))))

(assert (=> d!1161321 (= (++!10678 prefix!426 suffix!1176) lt!1363950)))

(assert (= (and d!1161321 c!680451) b!3914941))

(assert (= (and d!1161321 (not c!680451)) b!3914942))

(assert (= (and d!1161321 res!1583535) b!3914943))

(assert (= (and b!3914943 res!1583534) b!3914944))

(declare-fun m!4478323 () Bool)

(assert (=> b!3914943 m!4478323))

(assert (=> b!3914943 m!4478215))

(assert (=> b!3914943 m!4478195))

(declare-fun m!4478325 () Bool)

(assert (=> b!3914942 m!4478325))

(declare-fun m!4478327 () Bool)

(assert (=> d!1161321 m!4478327))

(declare-fun m!4478329 () Bool)

(assert (=> d!1161321 m!4478329))

(declare-fun m!4478331 () Bool)

(assert (=> d!1161321 m!4478331))

(assert (=> b!3914891 d!1161321))

(declare-fun d!1161323 () Bool)

(assert (=> d!1161323 (= (inv!55677 (tag!7320 (rule!9382 (h!46912 prefixTokens!80)))) (= (mod (str.len (value!204743 (tag!7320 (rule!9382 (h!46912 prefixTokens!80))))) 2) 0))))

(assert (=> b!3914870 d!1161323))

(declare-fun d!1161325 () Bool)

(declare-fun res!1583540 () Bool)

(declare-fun e!2420538 () Bool)

(assert (=> d!1161325 (=> (not res!1583540) (not e!2420538))))

(declare-fun semiInverseModEq!2776 (Int Int) Bool)

(assert (=> d!1161325 (= res!1583540 (semiInverseModEq!2776 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (toValue!8908 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))))))

(assert (=> d!1161325 (= (inv!55680 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) e!2420538)))

(declare-fun b!3914947 () Bool)

(declare-fun equivClasses!2675 (Int Int) Bool)

(assert (=> b!3914947 (= e!2420538 (equivClasses!2675 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (toValue!8908 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))))))

(assert (= (and d!1161325 res!1583540) b!3914947))

(declare-fun m!4478333 () Bool)

(assert (=> d!1161325 m!4478333))

(declare-fun m!4478335 () Bool)

(assert (=> b!3914947 m!4478335))

(assert (=> b!3914870 d!1161325))

(declare-fun b!3914948 () Bool)

(declare-fun e!2420539 () List!41616)

(assert (=> b!3914948 (= e!2420539 (_1!23506 lt!1363931))))

(declare-fun d!1161327 () Bool)

(declare-fun e!2420540 () Bool)

(assert (=> d!1161327 e!2420540))

(declare-fun res!1583542 () Bool)

(assert (=> d!1161327 (=> (not res!1583542) (not e!2420540))))

(declare-fun lt!1363951 () List!41616)

(assert (=> d!1161327 (= res!1583542 (= (content!6235 lt!1363951) ((_ map or) (content!6235 (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492)) (content!6235 (_1!23506 lt!1363931)))))))

(assert (=> d!1161327 (= lt!1363951 e!2420539)))

(declare-fun c!680452 () Bool)

(assert (=> d!1161327 (= c!680452 ((_ is Nil!41492) (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492)))))

(assert (=> d!1161327 (= (++!10677 (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492) (_1!23506 lt!1363931)) lt!1363951)))

(declare-fun b!3914950 () Bool)

(declare-fun res!1583541 () Bool)

(assert (=> b!3914950 (=> (not res!1583541) (not e!2420540))))

(assert (=> b!3914950 (= res!1583541 (= (size!31153 lt!1363951) (+ (size!31153 (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492)) (size!31153 (_1!23506 lt!1363931)))))))

(declare-fun b!3914951 () Bool)

(assert (=> b!3914951 (= e!2420540 (or (not (= (_1!23506 lt!1363931) Nil!41492)) (= lt!1363951 (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492))))))

(declare-fun b!3914949 () Bool)

(assert (=> b!3914949 (= e!2420539 (Cons!41492 (h!46912 (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492)) (++!10677 (t!323621 (Cons!41492 (_1!23505 (v!39203 lt!1363924)) Nil!41492)) (_1!23506 lt!1363931))))))

(assert (= (and d!1161327 c!680452) b!3914948))

(assert (= (and d!1161327 (not c!680452)) b!3914949))

(assert (= (and d!1161327 res!1583542) b!3914950))

(assert (= (and b!3914950 res!1583541) b!3914951))

(declare-fun m!4478337 () Bool)

(assert (=> d!1161327 m!4478337))

(declare-fun m!4478339 () Bool)

(assert (=> d!1161327 m!4478339))

(declare-fun m!4478341 () Bool)

(assert (=> d!1161327 m!4478341))

(declare-fun m!4478343 () Bool)

(assert (=> b!3914950 m!4478343))

(declare-fun m!4478345 () Bool)

(assert (=> b!3914950 m!4478345))

(declare-fun m!4478347 () Bool)

(assert (=> b!3914950 m!4478347))

(declare-fun m!4478349 () Bool)

(assert (=> b!3914949 m!4478349))

(assert (=> b!3914871 d!1161327))

(declare-fun d!1161329 () Bool)

(declare-fun lt!1363954 () Int)

(assert (=> d!1161329 (>= lt!1363954 0)))

(declare-fun e!2420543 () Int)

(assert (=> d!1161329 (= lt!1363954 e!2420543)))

(declare-fun c!680455 () Bool)

(assert (=> d!1161329 (= c!680455 ((_ is Nil!41489) (_2!23505 lt!1363920)))))

(assert (=> d!1161329 (= (size!31151 (_2!23505 lt!1363920)) lt!1363954)))

(declare-fun b!3914956 () Bool)

(assert (=> b!3914956 (= e!2420543 0)))

(declare-fun b!3914957 () Bool)

(assert (=> b!3914957 (= e!2420543 (+ 1 (size!31151 (t!323618 (_2!23505 lt!1363920)))))))

(assert (= (and d!1161329 c!680455) b!3914956))

(assert (= (and d!1161329 (not c!680455)) b!3914957))

(declare-fun m!4478351 () Bool)

(assert (=> b!3914957 m!4478351))

(assert (=> b!3914893 d!1161329))

(declare-fun b!3914958 () Bool)

(declare-fun e!2420544 () List!41613)

(assert (=> b!3914958 (= e!2420544 (_2!23505 lt!1363920))))

(declare-fun b!3914960 () Bool)

(declare-fun res!1583543 () Bool)

(declare-fun e!2420545 () Bool)

(assert (=> b!3914960 (=> (not res!1583543) (not e!2420545))))

(declare-fun lt!1363955 () List!41613)

(assert (=> b!3914960 (= res!1583543 (= (size!31151 lt!1363955) (+ (size!31151 lt!1363930) (size!31151 (_2!23505 lt!1363920)))))))

(declare-fun b!3914959 () Bool)

(assert (=> b!3914959 (= e!2420544 (Cons!41489 (h!46909 lt!1363930) (++!10678 (t!323618 lt!1363930) (_2!23505 lt!1363920))))))

(declare-fun b!3914961 () Bool)

(assert (=> b!3914961 (= e!2420545 (or (not (= (_2!23505 lt!1363920) Nil!41489)) (= lt!1363955 lt!1363930)))))

(declare-fun d!1161331 () Bool)

(assert (=> d!1161331 e!2420545))

(declare-fun res!1583544 () Bool)

(assert (=> d!1161331 (=> (not res!1583544) (not e!2420545))))

(assert (=> d!1161331 (= res!1583544 (= (content!6236 lt!1363955) ((_ map or) (content!6236 lt!1363930) (content!6236 (_2!23505 lt!1363920)))))))

(assert (=> d!1161331 (= lt!1363955 e!2420544)))

(declare-fun c!680456 () Bool)

(assert (=> d!1161331 (= c!680456 ((_ is Nil!41489) lt!1363930))))

(assert (=> d!1161331 (= (++!10678 lt!1363930 (_2!23505 lt!1363920)) lt!1363955)))

(assert (= (and d!1161331 c!680456) b!3914958))

(assert (= (and d!1161331 (not c!680456)) b!3914959))

(assert (= (and d!1161331 res!1583544) b!3914960))

(assert (= (and b!3914960 res!1583543) b!3914961))

(declare-fun m!4478353 () Bool)

(assert (=> b!3914960 m!4478353))

(assert (=> b!3914960 m!4478225))

(assert (=> b!3914960 m!4478285))

(declare-fun m!4478355 () Bool)

(assert (=> b!3914959 m!4478355))

(declare-fun m!4478357 () Bool)

(assert (=> d!1161331 m!4478357))

(declare-fun m!4478359 () Bool)

(assert (=> d!1161331 m!4478359))

(declare-fun m!4478361 () Bool)

(assert (=> d!1161331 m!4478361))

(assert (=> b!3914894 d!1161331))

(declare-fun d!1161333 () Bool)

(declare-fun lt!1363956 () Int)

(assert (=> d!1161333 (>= lt!1363956 0)))

(declare-fun e!2420546 () Int)

(assert (=> d!1161333 (= lt!1363956 e!2420546)))

(declare-fun c!680457 () Bool)

(assert (=> d!1161333 (= c!680457 ((_ is Nil!41489) suffix!1176))))

(assert (=> d!1161333 (= (size!31151 suffix!1176) lt!1363956)))

(declare-fun b!3914962 () Bool)

(assert (=> b!3914962 (= e!2420546 0)))

(declare-fun b!3914963 () Bool)

(assert (=> b!3914963 (= e!2420546 (+ 1 (size!31151 (t!323618 suffix!1176))))))

(assert (= (and d!1161333 c!680457) b!3914962))

(assert (= (and d!1161333 (not c!680457)) b!3914963))

(declare-fun m!4478363 () Bool)

(assert (=> b!3914963 m!4478363))

(assert (=> b!3914863 d!1161333))

(declare-fun d!1161335 () Bool)

(declare-fun lt!1363957 () Int)

(assert (=> d!1161335 (>= lt!1363957 0)))

(declare-fun e!2420547 () Int)

(assert (=> d!1161335 (= lt!1363957 e!2420547)))

(declare-fun c!680458 () Bool)

(assert (=> d!1161335 (= c!680458 ((_ is Nil!41489) (_2!23505 (v!39203 lt!1363924))))))

(assert (=> d!1161335 (= (size!31151 (_2!23505 (v!39203 lt!1363924))) lt!1363957)))

(declare-fun b!3914964 () Bool)

(assert (=> b!3914964 (= e!2420547 0)))

(declare-fun b!3914965 () Bool)

(assert (=> b!3914965 (= e!2420547 (+ 1 (size!31151 (t!323618 (_2!23505 (v!39203 lt!1363924))))))))

(assert (= (and d!1161335 c!680458) b!3914964))

(assert (= (and d!1161335 (not c!680458)) b!3914965))

(declare-fun m!4478365 () Bool)

(assert (=> b!3914965 m!4478365))

(assert (=> b!3914863 d!1161335))

(declare-fun d!1161337 () Bool)

(declare-fun lt!1363958 () Int)

(assert (=> d!1161337 (>= lt!1363958 0)))

(declare-fun e!2420548 () Int)

(assert (=> d!1161337 (= lt!1363958 e!2420548)))

(declare-fun c!680459 () Bool)

(assert (=> d!1161337 (= c!680459 ((_ is Nil!41489) prefix!426))))

(assert (=> d!1161337 (= (size!31151 prefix!426) lt!1363958)))

(declare-fun b!3914966 () Bool)

(assert (=> b!3914966 (= e!2420548 0)))

(declare-fun b!3914967 () Bool)

(assert (=> b!3914967 (= e!2420548 (+ 1 (size!31151 (t!323618 prefix!426))))))

(assert (= (and d!1161337 c!680459) b!3914966))

(assert (= (and d!1161337 (not c!680459)) b!3914967))

(declare-fun m!4478367 () Bool)

(assert (=> b!3914967 m!4478367))

(assert (=> b!3914885 d!1161337))

(declare-fun d!1161339 () Bool)

(assert (=> d!1161339 (= (inv!55677 (tag!7320 (rule!9382 (h!46912 suffixTokens!72)))) (= (mod (str.len (value!204743 (tag!7320 (rule!9382 (h!46912 suffixTokens!72))))) 2) 0))))

(assert (=> b!3914864 d!1161339))

(declare-fun d!1161341 () Bool)

(declare-fun res!1583545 () Bool)

(declare-fun e!2420549 () Bool)

(assert (=> d!1161341 (=> (not res!1583545) (not e!2420549))))

(assert (=> d!1161341 (= res!1583545 (semiInverseModEq!2776 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (toValue!8908 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))))))

(assert (=> d!1161341 (= (inv!55680 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) e!2420549)))

(declare-fun b!3914968 () Bool)

(assert (=> b!3914968 (= e!2420549 (equivClasses!2675 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (toValue!8908 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))))))

(assert (= (and d!1161341 res!1583545) b!3914968))

(declare-fun m!4478369 () Bool)

(assert (=> d!1161341 m!4478369))

(declare-fun m!4478371 () Bool)

(assert (=> b!3914968 m!4478371))

(assert (=> b!3914864 d!1161341))

(declare-fun d!1161343 () Bool)

(assert (=> d!1161343 (ruleValid!2408 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))

(declare-fun lt!1363961 () Unit!59629)

(declare-fun choose!23185 (LexerInterface!6049 Rule!12720 List!41615) Unit!59629)

(assert (=> d!1161343 (= lt!1363961 (choose!23185 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))) rules!2768))))

(declare-fun contains!8338 (List!41615 Rule!12720) Bool)

(assert (=> d!1161343 (contains!8338 rules!2768 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))

(assert (=> d!1161343 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1488 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))) rules!2768) lt!1363961)))

(declare-fun bs!585683 () Bool)

(assert (= bs!585683 d!1161343))

(assert (=> bs!585683 m!4478221))

(declare-fun m!4478373 () Bool)

(assert (=> bs!585683 m!4478373))

(declare-fun m!4478375 () Bool)

(assert (=> bs!585683 m!4478375))

(assert (=> b!3914886 d!1161343))

(declare-fun d!1161349 () Bool)

(declare-fun fromListB!2185 (List!41613) BalanceConc!24936)

(assert (=> d!1161349 (= (seqFromList!4727 lt!1363930) (fromListB!2185 lt!1363930))))

(declare-fun bs!585684 () Bool)

(assert (= bs!585684 d!1161349))

(declare-fun m!4478377 () Bool)

(assert (=> bs!585684 m!4478377))

(assert (=> b!3914886 d!1161349))

(declare-fun d!1161351 () Bool)

(declare-fun dynLambda!17825 (Int BalanceConc!24936) TokenValue!6690)

(assert (=> d!1161351 (= (apply!9699 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (seqFromList!4727 lt!1363930)) (dynLambda!17825 (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))) (seqFromList!4727 lt!1363930)))))

(declare-fun b_lambda!114625 () Bool)

(assert (=> (not b_lambda!114625) (not d!1161351)))

(declare-fun tb!233291 () Bool)

(declare-fun t!323629 () Bool)

(assert (=> (and b!3914861 (= (toValue!8908 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323629) tb!233291))

(declare-fun result!282746 () Bool)

(assert (=> tb!233291 (= result!282746 (inv!21 (dynLambda!17825 (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))) (seqFromList!4727 lt!1363930))))))

(declare-fun m!4478379 () Bool)

(assert (=> tb!233291 m!4478379))

(assert (=> d!1161351 t!323629))

(declare-fun b_and!298037 () Bool)

(assert (= b_and!298019 (and (=> t!323629 result!282746) b_and!298037)))

(declare-fun t!323631 () Bool)

(declare-fun tb!233293 () Bool)

(assert (=> (and b!3914869 (= (toValue!8908 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323631) tb!233293))

(declare-fun result!282750 () Bool)

(assert (= result!282750 result!282746))

(assert (=> d!1161351 t!323631))

(declare-fun b_and!298039 () Bool)

(assert (= b_and!298023 (and (=> t!323631 result!282750) b_and!298039)))

(declare-fun tb!233295 () Bool)

(declare-fun t!323633 () Bool)

(assert (=> (and b!3914876 (= (toValue!8908 (transformation!6460 (h!46911 rules!2768))) (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323633) tb!233295))

(declare-fun result!282752 () Bool)

(assert (= result!282752 result!282746))

(assert (=> d!1161351 t!323633))

(declare-fun b_and!298041 () Bool)

(assert (= b_and!298027 (and (=> t!323633 result!282752) b_and!298041)))

(assert (=> d!1161351 m!4478245))

(declare-fun m!4478385 () Bool)

(assert (=> d!1161351 m!4478385))

(assert (=> b!3914886 d!1161351))

(declare-fun d!1161355 () Bool)

(assert (=> d!1161355 (isPrefix!3555 lt!1363930 (++!10678 lt!1363930 (_2!23505 (v!39203 lt!1363924))))))

(declare-fun lt!1363964 () Unit!59629)

(declare-fun choose!23186 (List!41613 List!41613) Unit!59629)

(assert (=> d!1161355 (= lt!1363964 (choose!23186 lt!1363930 (_2!23505 (v!39203 lt!1363924))))))

(assert (=> d!1161355 (= (lemmaConcatTwoListThenFirstIsPrefix!2418 lt!1363930 (_2!23505 (v!39203 lt!1363924))) lt!1363964)))

(declare-fun bs!585685 () Bool)

(assert (= bs!585685 d!1161355))

(assert (=> bs!585685 m!4478237))

(assert (=> bs!585685 m!4478237))

(declare-fun m!4478387 () Bool)

(assert (=> bs!585685 m!4478387))

(declare-fun m!4478389 () Bool)

(assert (=> bs!585685 m!4478389))

(assert (=> b!3914886 d!1161355))

(declare-fun d!1161359 () Bool)

(declare-fun lt!1363965 () Int)

(assert (=> d!1161359 (>= lt!1363965 0)))

(declare-fun e!2420558 () Int)

(assert (=> d!1161359 (= lt!1363965 e!2420558)))

(declare-fun c!680460 () Bool)

(assert (=> d!1161359 (= c!680460 ((_ is Nil!41489) lt!1363930))))

(assert (=> d!1161359 (= (size!31151 lt!1363930) lt!1363965)))

(declare-fun b!3914978 () Bool)

(assert (=> b!3914978 (= e!2420558 0)))

(declare-fun b!3914979 () Bool)

(assert (=> b!3914979 (= e!2420558 (+ 1 (size!31151 (t!323618 lt!1363930))))))

(assert (= (and d!1161359 c!680460) b!3914978))

(assert (= (and d!1161359 (not c!680460)) b!3914979))

(declare-fun m!4478391 () Bool)

(assert (=> b!3914979 m!4478391))

(assert (=> b!3914886 d!1161359))

(declare-fun b!3914980 () Bool)

(declare-fun e!2420559 () Bool)

(declare-fun lt!1363968 () tuple2!40744)

(assert (=> b!3914980 (= e!2420559 (= (_2!23506 lt!1363968) (_2!23505 (v!39203 lt!1363924))))))

(declare-fun b!3914981 () Bool)

(declare-fun e!2420561 () tuple2!40744)

(declare-fun lt!1363967 () Option!8880)

(declare-fun lt!1363966 () tuple2!40744)

(assert (=> b!3914981 (= e!2420561 (tuple2!40745 (Cons!41492 (_1!23505 (v!39203 lt!1363967)) (_1!23506 lt!1363966)) (_2!23506 lt!1363966)))))

(assert (=> b!3914981 (= lt!1363966 (lexList!1817 thiss!20629 rules!2768 (_2!23505 (v!39203 lt!1363967))))))

(declare-fun b!3914982 () Bool)

(declare-fun e!2420560 () Bool)

(assert (=> b!3914982 (= e!2420559 e!2420560)))

(declare-fun res!1583553 () Bool)

(assert (=> b!3914982 (= res!1583553 (< (size!31151 (_2!23506 lt!1363968)) (size!31151 (_2!23505 (v!39203 lt!1363924)))))))

(assert (=> b!3914982 (=> (not res!1583553) (not e!2420560))))

(declare-fun d!1161361 () Bool)

(assert (=> d!1161361 e!2420559))

(declare-fun c!680462 () Bool)

(assert (=> d!1161361 (= c!680462 (> (size!31153 (_1!23506 lt!1363968)) 0))))

(assert (=> d!1161361 (= lt!1363968 e!2420561)))

(declare-fun c!680461 () Bool)

(assert (=> d!1161361 (= c!680461 ((_ is Some!8879) lt!1363967))))

(assert (=> d!1161361 (= lt!1363967 (maxPrefix!3353 thiss!20629 rules!2768 (_2!23505 (v!39203 lt!1363924))))))

(assert (=> d!1161361 (= (lexList!1817 thiss!20629 rules!2768 (_2!23505 (v!39203 lt!1363924))) lt!1363968)))

(declare-fun b!3914983 () Bool)

(assert (=> b!3914983 (= e!2420561 (tuple2!40745 Nil!41492 (_2!23505 (v!39203 lt!1363924))))))

(declare-fun b!3914984 () Bool)

(assert (=> b!3914984 (= e!2420560 (not (isEmpty!24690 (_1!23506 lt!1363968))))))

(assert (= (and d!1161361 c!680461) b!3914981))

(assert (= (and d!1161361 (not c!680461)) b!3914983))

(assert (= (and d!1161361 c!680462) b!3914982))

(assert (= (and d!1161361 (not c!680462)) b!3914980))

(assert (= (and b!3914982 res!1583553) b!3914984))

(declare-fun m!4478393 () Bool)

(assert (=> b!3914981 m!4478393))

(declare-fun m!4478395 () Bool)

(assert (=> b!3914982 m!4478395))

(assert (=> b!3914982 m!4478197))

(declare-fun m!4478397 () Bool)

(assert (=> d!1161361 m!4478397))

(declare-fun m!4478399 () Bool)

(assert (=> d!1161361 m!4478399))

(declare-fun m!4478401 () Bool)

(assert (=> b!3914984 m!4478401))

(assert (=> b!3914886 d!1161361))

(declare-fun d!1161363 () Bool)

(declare-fun res!1583560 () Bool)

(declare-fun e!2420568 () Bool)

(assert (=> d!1161363 (=> (not res!1583560) (not e!2420568))))

(declare-fun validRegex!5175 (Regex!11365) Bool)

(assert (=> d!1161363 (= res!1583560 (validRegex!5175 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))))

(assert (=> d!1161363 (= (ruleValid!2408 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) e!2420568)))

(declare-fun b!3914996 () Bool)

(declare-fun res!1583561 () Bool)

(assert (=> b!3914996 (=> (not res!1583561) (not e!2420568))))

(declare-fun nullable!3976 (Regex!11365) Bool)

(assert (=> b!3914996 (= res!1583561 (not (nullable!3976 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))))))

(declare-fun b!3914997 () Bool)

(assert (=> b!3914997 (= e!2420568 (not (= (tag!7320 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (String!47169 ""))))))

(assert (= (and d!1161363 res!1583560) b!3914996))

(assert (= (and b!3914996 res!1583561) b!3914997))

(declare-fun m!4478415 () Bool)

(assert (=> d!1161363 m!4478415))

(declare-fun m!4478417 () Bool)

(assert (=> b!3914996 m!4478417))

(assert (=> b!3914886 d!1161363))

(declare-fun d!1161367 () Bool)

(declare-fun lt!1363975 () List!41613)

(assert (=> d!1161367 (= (++!10678 lt!1363930 lt!1363975) lt!1363918)))

(declare-fun e!2420575 () List!41613)

(assert (=> d!1161367 (= lt!1363975 e!2420575)))

(declare-fun c!680469 () Bool)

(assert (=> d!1161367 (= c!680469 ((_ is Cons!41489) lt!1363930))))

(assert (=> d!1161367 (>= (size!31151 lt!1363918) (size!31151 lt!1363930))))

(assert (=> d!1161367 (= (getSuffix!2010 lt!1363918 lt!1363930) lt!1363975)))

(declare-fun b!3915010 () Bool)

(declare-fun tail!5990 (List!41613) List!41613)

(assert (=> b!3915010 (= e!2420575 (getSuffix!2010 (tail!5990 lt!1363918) (t!323618 lt!1363930)))))

(declare-fun b!3915011 () Bool)

(assert (=> b!3915011 (= e!2420575 lt!1363918)))

(assert (= (and d!1161367 c!680469) b!3915010))

(assert (= (and d!1161367 (not c!680469)) b!3915011))

(declare-fun m!4478423 () Bool)

(assert (=> d!1161367 m!4478423))

(assert (=> d!1161367 m!4478273))

(assert (=> d!1161367 m!4478225))

(declare-fun m!4478425 () Bool)

(assert (=> b!3915010 m!4478425))

(assert (=> b!3915010 m!4478425))

(declare-fun m!4478427 () Bool)

(assert (=> b!3915010 m!4478427))

(assert (=> b!3914886 d!1161367))

(declare-fun d!1161373 () Bool)

(declare-fun e!2420583 () Bool)

(assert (=> d!1161373 e!2420583))

(declare-fun res!1583571 () Bool)

(assert (=> d!1161373 (=> res!1583571 e!2420583)))

(declare-fun lt!1363978 () Bool)

(assert (=> d!1161373 (= res!1583571 (not lt!1363978))))

(declare-fun e!2420584 () Bool)

(assert (=> d!1161373 (= lt!1363978 e!2420584)))

(declare-fun res!1583570 () Bool)

(assert (=> d!1161373 (=> res!1583570 e!2420584)))

(assert (=> d!1161373 (= res!1583570 ((_ is Nil!41489) lt!1363930))))

(assert (=> d!1161373 (= (isPrefix!3555 lt!1363930 lt!1363929) lt!1363978)))

(declare-fun b!3915023 () Bool)

(assert (=> b!3915023 (= e!2420583 (>= (size!31151 lt!1363929) (size!31151 lt!1363930)))))

(declare-fun b!3915021 () Bool)

(declare-fun res!1583573 () Bool)

(declare-fun e!2420582 () Bool)

(assert (=> b!3915021 (=> (not res!1583573) (not e!2420582))))

(declare-fun head!8274 (List!41613) C!22916)

(assert (=> b!3915021 (= res!1583573 (= (head!8274 lt!1363930) (head!8274 lt!1363929)))))

(declare-fun b!3915020 () Bool)

(assert (=> b!3915020 (= e!2420584 e!2420582)))

(declare-fun res!1583572 () Bool)

(assert (=> b!3915020 (=> (not res!1583572) (not e!2420582))))

(assert (=> b!3915020 (= res!1583572 (not ((_ is Nil!41489) lt!1363929)))))

(declare-fun b!3915022 () Bool)

(assert (=> b!3915022 (= e!2420582 (isPrefix!3555 (tail!5990 lt!1363930) (tail!5990 lt!1363929)))))

(assert (= (and d!1161373 (not res!1583570)) b!3915020))

(assert (= (and b!3915020 res!1583572) b!3915021))

(assert (= (and b!3915021 res!1583573) b!3915022))

(assert (= (and d!1161373 (not res!1583571)) b!3915023))

(declare-fun m!4478429 () Bool)

(assert (=> b!3915023 m!4478429))

(assert (=> b!3915023 m!4478225))

(declare-fun m!4478431 () Bool)

(assert (=> b!3915021 m!4478431))

(declare-fun m!4478433 () Bool)

(assert (=> b!3915021 m!4478433))

(declare-fun m!4478435 () Bool)

(assert (=> b!3915022 m!4478435))

(declare-fun m!4478437 () Bool)

(assert (=> b!3915022 m!4478437))

(assert (=> b!3915022 m!4478435))

(assert (=> b!3915022 m!4478437))

(declare-fun m!4478439 () Bool)

(assert (=> b!3915022 m!4478439))

(assert (=> b!3914886 d!1161373))

(declare-fun d!1161375 () Bool)

(assert (=> d!1161375 (= (_2!23505 (v!39203 lt!1363924)) lt!1363928)))

(declare-fun lt!1363981 () Unit!59629)

(declare-fun choose!23187 (List!41613 List!41613 List!41613 List!41613 List!41613) Unit!59629)

(assert (=> d!1161375 (= lt!1363981 (choose!23187 lt!1363930 (_2!23505 (v!39203 lt!1363924)) lt!1363930 lt!1363928 lt!1363918))))

(assert (=> d!1161375 (isPrefix!3555 lt!1363930 lt!1363918)))

(assert (=> d!1161375 (= (lemmaSamePrefixThenSameSuffix!1776 lt!1363930 (_2!23505 (v!39203 lt!1363924)) lt!1363930 lt!1363928 lt!1363918) lt!1363981)))

(declare-fun bs!585686 () Bool)

(assert (= bs!585686 d!1161375))

(declare-fun m!4478441 () Bool)

(assert (=> bs!585686 m!4478441))

(declare-fun m!4478443 () Bool)

(assert (=> bs!585686 m!4478443))

(assert (=> b!3914886 d!1161375))

(declare-fun d!1161377 () Bool)

(declare-fun list!15426 (Conc!12671) List!41613)

(assert (=> d!1161377 (= (list!15425 (charsOf!4284 (_1!23505 (v!39203 lt!1363924)))) (list!15426 (c!680438 (charsOf!4284 (_1!23505 (v!39203 lt!1363924))))))))

(declare-fun bs!585687 () Bool)

(assert (= bs!585687 d!1161377))

(declare-fun m!4478445 () Bool)

(assert (=> bs!585687 m!4478445))

(assert (=> b!3914886 d!1161377))

(declare-fun d!1161379 () Bool)

(declare-fun lt!1363984 () BalanceConc!24936)

(assert (=> d!1161379 (= (list!15425 lt!1363984) (originalCharacters!7060 (_1!23505 (v!39203 lt!1363924))))))

(assert (=> d!1161379 (= lt!1363984 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))) (value!204744 (_1!23505 (v!39203 lt!1363924)))))))

(assert (=> d!1161379 (= (charsOf!4284 (_1!23505 (v!39203 lt!1363924))) lt!1363984)))

(declare-fun b_lambda!114629 () Bool)

(assert (=> (not b_lambda!114629) (not d!1161379)))

(declare-fun t!323641 () Bool)

(declare-fun tb!233303 () Bool)

(assert (=> (and b!3914861 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323641) tb!233303))

(declare-fun b!3915024 () Bool)

(declare-fun e!2420585 () Bool)

(declare-fun tp!1191661 () Bool)

(assert (=> b!3915024 (= e!2420585 (and (inv!55682 (c!680438 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))) (value!204744 (_1!23505 (v!39203 lt!1363924)))))) tp!1191661))))

(declare-fun result!282762 () Bool)

(assert (=> tb!233303 (= result!282762 (and (inv!55683 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))) (value!204744 (_1!23505 (v!39203 lt!1363924))))) e!2420585))))

(assert (= tb!233303 b!3915024))

(declare-fun m!4478447 () Bool)

(assert (=> b!3915024 m!4478447))

(declare-fun m!4478449 () Bool)

(assert (=> tb!233303 m!4478449))

(assert (=> d!1161379 t!323641))

(declare-fun b_and!298049 () Bool)

(assert (= b_and!298031 (and (=> t!323641 result!282762) b_and!298049)))

(declare-fun tb!233305 () Bool)

(declare-fun t!323643 () Bool)

(assert (=> (and b!3914869 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323643) tb!233305))

(declare-fun result!282764 () Bool)

(assert (= result!282764 result!282762))

(assert (=> d!1161379 t!323643))

(declare-fun b_and!298051 () Bool)

(assert (= b_and!298033 (and (=> t!323643 result!282764) b_and!298051)))

(declare-fun t!323645 () Bool)

(declare-fun tb!233307 () Bool)

(assert (=> (and b!3914876 (= (toChars!8767 (transformation!6460 (h!46911 rules!2768))) (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323645) tb!233307))

(declare-fun result!282766 () Bool)

(assert (= result!282766 result!282762))

(assert (=> d!1161379 t!323645))

(declare-fun b_and!298053 () Bool)

(assert (= b_and!298035 (and (=> t!323645 result!282766) b_and!298053)))

(declare-fun m!4478451 () Bool)

(assert (=> d!1161379 m!4478451))

(declare-fun m!4478453 () Bool)

(assert (=> d!1161379 m!4478453))

(assert (=> b!3914886 d!1161379))

(declare-fun b!3915025 () Bool)

(declare-fun e!2420586 () List!41613)

(assert (=> b!3915025 (= e!2420586 (_2!23505 (v!39203 lt!1363924)))))

(declare-fun b!3915027 () Bool)

(declare-fun res!1583574 () Bool)

(declare-fun e!2420587 () Bool)

(assert (=> b!3915027 (=> (not res!1583574) (not e!2420587))))

(declare-fun lt!1363985 () List!41613)

(assert (=> b!3915027 (= res!1583574 (= (size!31151 lt!1363985) (+ (size!31151 lt!1363930) (size!31151 (_2!23505 (v!39203 lt!1363924))))))))

(declare-fun b!3915026 () Bool)

(assert (=> b!3915026 (= e!2420586 (Cons!41489 (h!46909 lt!1363930) (++!10678 (t!323618 lt!1363930) (_2!23505 (v!39203 lt!1363924)))))))

(declare-fun b!3915028 () Bool)

(assert (=> b!3915028 (= e!2420587 (or (not (= (_2!23505 (v!39203 lt!1363924)) Nil!41489)) (= lt!1363985 lt!1363930)))))

(declare-fun d!1161381 () Bool)

(assert (=> d!1161381 e!2420587))

(declare-fun res!1583575 () Bool)

(assert (=> d!1161381 (=> (not res!1583575) (not e!2420587))))

(assert (=> d!1161381 (= res!1583575 (= (content!6236 lt!1363985) ((_ map or) (content!6236 lt!1363930) (content!6236 (_2!23505 (v!39203 lt!1363924))))))))

(assert (=> d!1161381 (= lt!1363985 e!2420586)))

(declare-fun c!680470 () Bool)

(assert (=> d!1161381 (= c!680470 ((_ is Nil!41489) lt!1363930))))

(assert (=> d!1161381 (= (++!10678 lt!1363930 (_2!23505 (v!39203 lt!1363924))) lt!1363985)))

(assert (= (and d!1161381 c!680470) b!3915025))

(assert (= (and d!1161381 (not c!680470)) b!3915026))

(assert (= (and d!1161381 res!1583575) b!3915027))

(assert (= (and b!3915027 res!1583574) b!3915028))

(declare-fun m!4478455 () Bool)

(assert (=> b!3915027 m!4478455))

(assert (=> b!3915027 m!4478225))

(assert (=> b!3915027 m!4478197))

(declare-fun m!4478457 () Bool)

(assert (=> b!3915026 m!4478457))

(declare-fun m!4478459 () Bool)

(assert (=> d!1161381 m!4478459))

(assert (=> d!1161381 m!4478359))

(declare-fun m!4478461 () Bool)

(assert (=> d!1161381 m!4478461))

(assert (=> b!3914886 d!1161381))

(declare-fun d!1161383 () Bool)

(assert (=> d!1161383 (= (size!31152 (_1!23505 (v!39203 lt!1363924))) (size!31151 (originalCharacters!7060 (_1!23505 (v!39203 lt!1363924)))))))

(declare-fun Unit!59631 () Unit!59629)

(assert (=> d!1161383 (= (lemmaCharactersSize!1117 (_1!23505 (v!39203 lt!1363924))) Unit!59631)))

(declare-fun bs!585688 () Bool)

(assert (= bs!585688 d!1161383))

(assert (=> bs!585688 m!4478211))

(assert (=> b!3914886 d!1161383))

(declare-fun b!3915077 () Bool)

(declare-fun e!2420605 () Option!8880)

(declare-fun call!284430 () Option!8880)

(assert (=> b!3915077 (= e!2420605 call!284430)))

(declare-fun b!3915078 () Bool)

(declare-fun e!2420607 () Bool)

(declare-fun lt!1364013 () Option!8880)

(assert (=> b!3915078 (= e!2420607 (contains!8338 rules!2768 (rule!9382 (_1!23505 (get!13710 lt!1364013)))))))

(declare-fun b!3915079 () Bool)

(declare-fun res!1583615 () Bool)

(assert (=> b!3915079 (=> (not res!1583615) (not e!2420607))))

(assert (=> b!3915079 (= res!1583615 (= (list!15425 (charsOf!4284 (_1!23505 (get!13710 lt!1364013)))) (originalCharacters!7060 (_1!23505 (get!13710 lt!1364013)))))))

(declare-fun b!3915080 () Bool)

(declare-fun lt!1364015 () Option!8880)

(declare-fun lt!1364011 () Option!8880)

(assert (=> b!3915080 (= e!2420605 (ite (and ((_ is None!8879) lt!1364015) ((_ is None!8879) lt!1364011)) None!8879 (ite ((_ is None!8879) lt!1364011) lt!1364015 (ite ((_ is None!8879) lt!1364015) lt!1364011 (ite (>= (size!31152 (_1!23505 (v!39203 lt!1364015))) (size!31152 (_1!23505 (v!39203 lt!1364011)))) lt!1364015 lt!1364011)))))))

(assert (=> b!3915080 (= lt!1364015 call!284430)))

(assert (=> b!3915080 (= lt!1364011 (maxPrefix!3353 thiss!20629 (t!323620 rules!2768) lt!1363918))))

(declare-fun b!3915081 () Bool)

(declare-fun res!1583617 () Bool)

(assert (=> b!3915081 (=> (not res!1583617) (not e!2420607))))

(assert (=> b!3915081 (= res!1583617 (= (value!204744 (_1!23505 (get!13710 lt!1364013))) (apply!9699 (transformation!6460 (rule!9382 (_1!23505 (get!13710 lt!1364013)))) (seqFromList!4727 (originalCharacters!7060 (_1!23505 (get!13710 lt!1364013)))))))))

(declare-fun b!3915082 () Bool)

(declare-fun res!1583619 () Bool)

(assert (=> b!3915082 (=> (not res!1583619) (not e!2420607))))

(assert (=> b!3915082 (= res!1583619 (< (size!31151 (_2!23505 (get!13710 lt!1364013))) (size!31151 lt!1363918)))))

(declare-fun d!1161385 () Bool)

(declare-fun e!2420606 () Bool)

(assert (=> d!1161385 e!2420606))

(declare-fun res!1583614 () Bool)

(assert (=> d!1161385 (=> res!1583614 e!2420606)))

(declare-fun isEmpty!24692 (Option!8880) Bool)

(assert (=> d!1161385 (= res!1583614 (isEmpty!24692 lt!1364013))))

(assert (=> d!1161385 (= lt!1364013 e!2420605)))

(declare-fun c!680476 () Bool)

(assert (=> d!1161385 (= c!680476 (and ((_ is Cons!41491) rules!2768) ((_ is Nil!41491) (t!323620 rules!2768))))))

(declare-fun lt!1364012 () Unit!59629)

(declare-fun lt!1364014 () Unit!59629)

(assert (=> d!1161385 (= lt!1364012 lt!1364014)))

(assert (=> d!1161385 (isPrefix!3555 lt!1363918 lt!1363918)))

(declare-fun lemmaIsPrefixRefl!2256 (List!41613 List!41613) Unit!59629)

(assert (=> d!1161385 (= lt!1364014 (lemmaIsPrefixRefl!2256 lt!1363918 lt!1363918))))

(declare-fun rulesValidInductive!2326 (LexerInterface!6049 List!41615) Bool)

(assert (=> d!1161385 (rulesValidInductive!2326 thiss!20629 rules!2768)))

(assert (=> d!1161385 (= (maxPrefix!3353 thiss!20629 rules!2768 lt!1363918) lt!1364013)))

(declare-fun b!3915083 () Bool)

(assert (=> b!3915083 (= e!2420606 e!2420607)))

(declare-fun res!1583613 () Bool)

(assert (=> b!3915083 (=> (not res!1583613) (not e!2420607))))

(declare-fun isDefined!6925 (Option!8880) Bool)

(assert (=> b!3915083 (= res!1583613 (isDefined!6925 lt!1364013))))

(declare-fun b!3915084 () Bool)

(declare-fun res!1583616 () Bool)

(assert (=> b!3915084 (=> (not res!1583616) (not e!2420607))))

(assert (=> b!3915084 (= res!1583616 (matchR!5454 (regex!6460 (rule!9382 (_1!23505 (get!13710 lt!1364013)))) (list!15425 (charsOf!4284 (_1!23505 (get!13710 lt!1364013))))))))

(declare-fun bm!284425 () Bool)

(assert (=> bm!284425 (= call!284430 (maxPrefixOneRule!2423 thiss!20629 (h!46911 rules!2768) lt!1363918))))

(declare-fun b!3915085 () Bool)

(declare-fun res!1583618 () Bool)

(assert (=> b!3915085 (=> (not res!1583618) (not e!2420607))))

(assert (=> b!3915085 (= res!1583618 (= (++!10678 (list!15425 (charsOf!4284 (_1!23505 (get!13710 lt!1364013)))) (_2!23505 (get!13710 lt!1364013))) lt!1363918))))

(assert (= (and d!1161385 c!680476) b!3915077))

(assert (= (and d!1161385 (not c!680476)) b!3915080))

(assert (= (or b!3915077 b!3915080) bm!284425))

(assert (= (and d!1161385 (not res!1583614)) b!3915083))

(assert (= (and b!3915083 res!1583613) b!3915079))

(assert (= (and b!3915079 res!1583615) b!3915082))

(assert (= (and b!3915082 res!1583619) b!3915085))

(assert (= (and b!3915085 res!1583618) b!3915081))

(assert (= (and b!3915081 res!1583617) b!3915084))

(assert (= (and b!3915084 res!1583616) b!3915078))

(declare-fun m!4478507 () Bool)

(assert (=> b!3915084 m!4478507))

(declare-fun m!4478509 () Bool)

(assert (=> b!3915084 m!4478509))

(assert (=> b!3915084 m!4478509))

(declare-fun m!4478511 () Bool)

(assert (=> b!3915084 m!4478511))

(assert (=> b!3915084 m!4478511))

(declare-fun m!4478513 () Bool)

(assert (=> b!3915084 m!4478513))

(assert (=> b!3915081 m!4478507))

(declare-fun m!4478515 () Bool)

(assert (=> b!3915081 m!4478515))

(assert (=> b!3915081 m!4478515))

(declare-fun m!4478517 () Bool)

(assert (=> b!3915081 m!4478517))

(declare-fun m!4478519 () Bool)

(assert (=> d!1161385 m!4478519))

(declare-fun m!4478521 () Bool)

(assert (=> d!1161385 m!4478521))

(declare-fun m!4478523 () Bool)

(assert (=> d!1161385 m!4478523))

(declare-fun m!4478525 () Bool)

(assert (=> d!1161385 m!4478525))

(declare-fun m!4478527 () Bool)

(assert (=> b!3915080 m!4478527))

(assert (=> b!3915085 m!4478507))

(assert (=> b!3915085 m!4478509))

(assert (=> b!3915085 m!4478509))

(assert (=> b!3915085 m!4478511))

(assert (=> b!3915085 m!4478511))

(declare-fun m!4478529 () Bool)

(assert (=> b!3915085 m!4478529))

(assert (=> b!3915082 m!4478507))

(declare-fun m!4478531 () Bool)

(assert (=> b!3915082 m!4478531))

(assert (=> b!3915082 m!4478273))

(assert (=> b!3915079 m!4478507))

(assert (=> b!3915079 m!4478509))

(assert (=> b!3915079 m!4478509))

(assert (=> b!3915079 m!4478511))

(declare-fun m!4478533 () Bool)

(assert (=> bm!284425 m!4478533))

(declare-fun m!4478535 () Bool)

(assert (=> b!3915083 m!4478535))

(assert (=> b!3915078 m!4478507))

(declare-fun m!4478537 () Bool)

(assert (=> b!3915078 m!4478537))

(assert (=> b!3914865 d!1161385))

(declare-fun d!1161391 () Bool)

(assert (=> d!1161391 (= (isEmpty!24690 (tail!5989 prefixTokens!80)) ((_ is Nil!41492) (tail!5989 prefixTokens!80)))))

(assert (=> b!3914887 d!1161391))

(declare-fun d!1161393 () Bool)

(assert (=> d!1161393 (= (tail!5989 prefixTokens!80) (t!323621 prefixTokens!80))))

(assert (=> b!3914887 d!1161393))

(declare-fun b!3915106 () Bool)

(declare-fun e!2420621 () Bool)

(declare-fun inv!17 (TokenValue!6690) Bool)

(assert (=> b!3915106 (= e!2420621 (inv!17 (value!204744 (h!46912 prefixTokens!80))))))

(declare-fun b!3915107 () Bool)

(declare-fun e!2420622 () Bool)

(declare-fun inv!15 (TokenValue!6690) Bool)

(assert (=> b!3915107 (= e!2420622 (inv!15 (value!204744 (h!46912 prefixTokens!80))))))

(declare-fun b!3915108 () Bool)

(declare-fun res!1583624 () Bool)

(assert (=> b!3915108 (=> res!1583624 e!2420622)))

(assert (=> b!3915108 (= res!1583624 (not ((_ is IntegerValue!20072) (value!204744 (h!46912 prefixTokens!80)))))))

(assert (=> b!3915108 (= e!2420621 e!2420622)))

(declare-fun b!3915109 () Bool)

(declare-fun e!2420620 () Bool)

(declare-fun inv!16 (TokenValue!6690) Bool)

(assert (=> b!3915109 (= e!2420620 (inv!16 (value!204744 (h!46912 prefixTokens!80))))))

(declare-fun d!1161395 () Bool)

(declare-fun c!680485 () Bool)

(assert (=> d!1161395 (= c!680485 ((_ is IntegerValue!20070) (value!204744 (h!46912 prefixTokens!80))))))

(assert (=> d!1161395 (= (inv!21 (value!204744 (h!46912 prefixTokens!80))) e!2420620)))

(declare-fun b!3915110 () Bool)

(assert (=> b!3915110 (= e!2420620 e!2420621)))

(declare-fun c!680486 () Bool)

(assert (=> b!3915110 (= c!680486 ((_ is IntegerValue!20071) (value!204744 (h!46912 prefixTokens!80))))))

(assert (= (and d!1161395 c!680485) b!3915109))

(assert (= (and d!1161395 (not c!680485)) b!3915110))

(assert (= (and b!3915110 c!680486) b!3915106))

(assert (= (and b!3915110 (not c!680486)) b!3915108))

(assert (= (and b!3915108 (not res!1583624)) b!3915107))

(declare-fun m!4478539 () Bool)

(assert (=> b!3915106 m!4478539))

(declare-fun m!4478541 () Bool)

(assert (=> b!3915107 m!4478541))

(declare-fun m!4478543 () Bool)

(assert (=> b!3915109 m!4478543))

(assert (=> b!3914866 d!1161395))

(declare-fun d!1161397 () Bool)

(declare-fun res!1583625 () Bool)

(declare-fun e!2420623 () Bool)

(assert (=> d!1161397 (=> (not res!1583625) (not e!2420623))))

(assert (=> d!1161397 (= res!1583625 (not (isEmpty!24689 (originalCharacters!7060 (h!46912 prefixTokens!80)))))))

(assert (=> d!1161397 (= (inv!55681 (h!46912 prefixTokens!80)) e!2420623)))

(declare-fun b!3915111 () Bool)

(declare-fun res!1583626 () Bool)

(assert (=> b!3915111 (=> (not res!1583626) (not e!2420623))))

(assert (=> b!3915111 (= res!1583626 (= (originalCharacters!7060 (h!46912 prefixTokens!80)) (list!15425 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (value!204744 (h!46912 prefixTokens!80))))))))

(declare-fun b!3915112 () Bool)

(assert (=> b!3915112 (= e!2420623 (= (size!31152 (h!46912 prefixTokens!80)) (size!31151 (originalCharacters!7060 (h!46912 prefixTokens!80)))))))

(assert (= (and d!1161397 res!1583625) b!3915111))

(assert (= (and b!3915111 res!1583626) b!3915112))

(declare-fun b_lambda!114633 () Bool)

(assert (=> (not b_lambda!114633) (not b!3915111)))

(declare-fun t!323653 () Bool)

(declare-fun tb!233315 () Bool)

(assert (=> (and b!3914861 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))) t!323653) tb!233315))

(declare-fun b!3915113 () Bool)

(declare-fun e!2420624 () Bool)

(declare-fun tp!1191663 () Bool)

(assert (=> b!3915113 (= e!2420624 (and (inv!55682 (c!680438 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (value!204744 (h!46912 prefixTokens!80))))) tp!1191663))))

(declare-fun result!282774 () Bool)

(assert (=> tb!233315 (= result!282774 (and (inv!55683 (dynLambda!17823 (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (value!204744 (h!46912 prefixTokens!80)))) e!2420624))))

(assert (= tb!233315 b!3915113))

(declare-fun m!4478545 () Bool)

(assert (=> b!3915113 m!4478545))

(declare-fun m!4478547 () Bool)

(assert (=> tb!233315 m!4478547))

(assert (=> b!3915111 t!323653))

(declare-fun b_and!298061 () Bool)

(assert (= b_and!298049 (and (=> t!323653 result!282774) b_and!298061)))

(declare-fun tb!233317 () Bool)

(declare-fun t!323655 () Bool)

(assert (=> (and b!3914869 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))) t!323655) tb!233317))

(declare-fun result!282776 () Bool)

(assert (= result!282776 result!282774))

(assert (=> b!3915111 t!323655))

(declare-fun b_and!298063 () Bool)

(assert (= b_and!298051 (and (=> t!323655 result!282776) b_and!298063)))

(declare-fun tb!233319 () Bool)

(declare-fun t!323657 () Bool)

(assert (=> (and b!3914876 (= (toChars!8767 (transformation!6460 (h!46911 rules!2768))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))) t!323657) tb!233319))

(declare-fun result!282778 () Bool)

(assert (= result!282778 result!282774))

(assert (=> b!3915111 t!323657))

(declare-fun b_and!298065 () Bool)

(assert (= b_and!298053 (and (=> t!323657 result!282778) b_and!298065)))

(declare-fun m!4478549 () Bool)

(assert (=> d!1161397 m!4478549))

(declare-fun m!4478551 () Bool)

(assert (=> b!3915111 m!4478551))

(assert (=> b!3915111 m!4478551))

(declare-fun m!4478553 () Bool)

(assert (=> b!3915111 m!4478553))

(declare-fun m!4478555 () Bool)

(assert (=> b!3915112 m!4478555))

(assert (=> b!3914888 d!1161397))

(declare-fun d!1161399 () Bool)

(assert (=> d!1161399 (= (isEmpty!24690 prefixTokens!80) ((_ is Nil!41492) prefixTokens!80))))

(assert (=> b!3914880 d!1161399))

(declare-fun b!3915114 () Bool)

(declare-fun e!2420626 () Bool)

(assert (=> b!3915114 (= e!2420626 (inv!17 (value!204744 (h!46912 suffixTokens!72))))))

(declare-fun b!3915115 () Bool)

(declare-fun e!2420627 () Bool)

(assert (=> b!3915115 (= e!2420627 (inv!15 (value!204744 (h!46912 suffixTokens!72))))))

(declare-fun b!3915116 () Bool)

(declare-fun res!1583627 () Bool)

(assert (=> b!3915116 (=> res!1583627 e!2420627)))

(assert (=> b!3915116 (= res!1583627 (not ((_ is IntegerValue!20072) (value!204744 (h!46912 suffixTokens!72)))))))

(assert (=> b!3915116 (= e!2420626 e!2420627)))

(declare-fun b!3915117 () Bool)

(declare-fun e!2420625 () Bool)

(assert (=> b!3915117 (= e!2420625 (inv!16 (value!204744 (h!46912 suffixTokens!72))))))

(declare-fun d!1161401 () Bool)

(declare-fun c!680487 () Bool)

(assert (=> d!1161401 (= c!680487 ((_ is IntegerValue!20070) (value!204744 (h!46912 suffixTokens!72))))))

(assert (=> d!1161401 (= (inv!21 (value!204744 (h!46912 suffixTokens!72))) e!2420625)))

(declare-fun b!3915118 () Bool)

(assert (=> b!3915118 (= e!2420625 e!2420626)))

(declare-fun c!680488 () Bool)

(assert (=> b!3915118 (= c!680488 ((_ is IntegerValue!20071) (value!204744 (h!46912 suffixTokens!72))))))

(assert (= (and d!1161401 c!680487) b!3915117))

(assert (= (and d!1161401 (not c!680487)) b!3915118))

(assert (= (and b!3915118 c!680488) b!3915114))

(assert (= (and b!3915118 (not c!680488)) b!3915116))

(assert (= (and b!3915116 (not res!1583627)) b!3915115))

(declare-fun m!4478557 () Bool)

(assert (=> b!3915114 m!4478557))

(declare-fun m!4478559 () Bool)

(assert (=> b!3915115 m!4478559))

(declare-fun m!4478561 () Bool)

(assert (=> b!3915117 m!4478561))

(assert (=> b!3914881 d!1161401))

(declare-fun d!1161403 () Bool)

(assert (=> d!1161403 (= (inv!55677 (tag!7320 (h!46911 rules!2768))) (= (mod (str.len (value!204743 (tag!7320 (h!46911 rules!2768)))) 2) 0))))

(assert (=> b!3914882 d!1161403))

(declare-fun d!1161405 () Bool)

(declare-fun res!1583629 () Bool)

(declare-fun e!2420631 () Bool)

(assert (=> d!1161405 (=> (not res!1583629) (not e!2420631))))

(assert (=> d!1161405 (= res!1583629 (semiInverseModEq!2776 (toChars!8767 (transformation!6460 (h!46911 rules!2768))) (toValue!8908 (transformation!6460 (h!46911 rules!2768)))))))

(assert (=> d!1161405 (= (inv!55680 (transformation!6460 (h!46911 rules!2768))) e!2420631)))

(declare-fun b!3915124 () Bool)

(assert (=> b!3915124 (= e!2420631 (equivClasses!2675 (toChars!8767 (transformation!6460 (h!46911 rules!2768))) (toValue!8908 (transformation!6460 (h!46911 rules!2768)))))))

(assert (= (and d!1161405 res!1583629) b!3915124))

(declare-fun m!4478563 () Bool)

(assert (=> d!1161405 m!4478563))

(declare-fun m!4478565 () Bool)

(assert (=> b!3915124 m!4478565))

(assert (=> b!3914882 d!1161405))

(declare-fun d!1161407 () Bool)

(declare-fun lt!1364025 () Int)

(assert (=> d!1161407 (>= lt!1364025 0)))

(declare-fun e!2420632 () Int)

(assert (=> d!1161407 (= lt!1364025 e!2420632)))

(declare-fun c!680491 () Bool)

(assert (=> d!1161407 (= c!680491 ((_ is Nil!41489) lt!1363918))))

(assert (=> d!1161407 (= (size!31151 lt!1363918) lt!1364025)))

(declare-fun b!3915125 () Bool)

(assert (=> b!3915125 (= e!2420632 0)))

(declare-fun b!3915126 () Bool)

(assert (=> b!3915126 (= e!2420632 (+ 1 (size!31151 (t!323618 lt!1363918))))))

(assert (= (and d!1161407 c!680491) b!3915125))

(assert (= (and d!1161407 (not c!680491)) b!3915126))

(declare-fun m!4478571 () Bool)

(assert (=> b!3915126 m!4478571))

(assert (=> b!3914883 d!1161407))

(declare-fun d!1161409 () Bool)

(declare-fun res!1583632 () Bool)

(declare-fun e!2420635 () Bool)

(assert (=> d!1161409 (=> (not res!1583632) (not e!2420635))))

(declare-fun rulesValid!2511 (LexerInterface!6049 List!41615) Bool)

(assert (=> d!1161409 (= res!1583632 (rulesValid!2511 thiss!20629 rules!2768))))

(assert (=> d!1161409 (= (rulesInvariant!5392 thiss!20629 rules!2768) e!2420635)))

(declare-fun b!3915129 () Bool)

(declare-datatypes ((List!41618 0))(
  ( (Nil!41494) (Cons!41494 (h!46914 String!47168) (t!323719 List!41618)) )
))
(declare-fun noDuplicateTag!2512 (LexerInterface!6049 List!41615 List!41618) Bool)

(assert (=> b!3915129 (= e!2420635 (noDuplicateTag!2512 thiss!20629 rules!2768 Nil!41494))))

(assert (= (and d!1161409 res!1583632) b!3915129))

(declare-fun m!4478577 () Bool)

(assert (=> d!1161409 m!4478577))

(declare-fun m!4478579 () Bool)

(assert (=> b!3915129 m!4478579))

(assert (=> b!3914862 d!1161409))

(declare-fun b!3915184 () Bool)

(declare-fun res!1583667 () Bool)

(declare-fun e!2420666 () Bool)

(assert (=> b!3915184 (=> res!1583667 e!2420666)))

(declare-fun e!2420667 () Bool)

(assert (=> b!3915184 (= res!1583667 e!2420667)))

(declare-fun res!1583665 () Bool)

(assert (=> b!3915184 (=> (not res!1583665) (not e!2420667))))

(declare-fun lt!1364035 () Bool)

(assert (=> b!3915184 (= res!1583665 lt!1364035)))

(declare-fun b!3915185 () Bool)

(declare-fun e!2420664 () Bool)

(assert (=> b!3915185 (= e!2420666 e!2420664)))

(declare-fun res!1583664 () Bool)

(assert (=> b!3915185 (=> (not res!1583664) (not e!2420664))))

(assert (=> b!3915185 (= res!1583664 (not lt!1364035))))

(declare-fun b!3915186 () Bool)

(declare-fun res!1583663 () Bool)

(assert (=> b!3915186 (=> (not res!1583663) (not e!2420667))))

(declare-fun call!284433 () Bool)

(assert (=> b!3915186 (= res!1583663 (not call!284433))))

(declare-fun b!3915187 () Bool)

(declare-fun e!2420668 () Bool)

(declare-fun e!2420665 () Bool)

(assert (=> b!3915187 (= e!2420668 e!2420665)))

(declare-fun c!680506 () Bool)

(assert (=> b!3915187 (= c!680506 ((_ is EmptyLang!11365) (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))))

(declare-fun d!1161413 () Bool)

(assert (=> d!1161413 e!2420668))

(declare-fun c!680505 () Bool)

(assert (=> d!1161413 (= c!680505 ((_ is EmptyExpr!11365) (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))))

(declare-fun e!2420669 () Bool)

(assert (=> d!1161413 (= lt!1364035 e!2420669)))

(declare-fun c!680507 () Bool)

(assert (=> d!1161413 (= c!680507 (isEmpty!24689 lt!1363930))))

(assert (=> d!1161413 (validRegex!5175 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))))

(assert (=> d!1161413 (= (matchR!5454 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) lt!1363930) lt!1364035)))

(declare-fun b!3915188 () Bool)

(assert (=> b!3915188 (= e!2420667 (= (head!8274 lt!1363930) (c!680439 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))))))

(declare-fun b!3915189 () Bool)

(declare-fun res!1583662 () Bool)

(declare-fun e!2420663 () Bool)

(assert (=> b!3915189 (=> res!1583662 e!2420663)))

(assert (=> b!3915189 (= res!1583662 (not (isEmpty!24689 (tail!5990 lt!1363930))))))

(declare-fun b!3915190 () Bool)

(assert (=> b!3915190 (= e!2420668 (= lt!1364035 call!284433))))

(declare-fun b!3915191 () Bool)

(declare-fun derivativeStep!3442 (Regex!11365 C!22916) Regex!11365)

(assert (=> b!3915191 (= e!2420669 (matchR!5454 (derivativeStep!3442 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (head!8274 lt!1363930)) (tail!5990 lt!1363930)))))

(declare-fun b!3915192 () Bool)

(declare-fun res!1583668 () Bool)

(assert (=> b!3915192 (=> (not res!1583668) (not e!2420667))))

(assert (=> b!3915192 (= res!1583668 (isEmpty!24689 (tail!5990 lt!1363930)))))

(declare-fun b!3915193 () Bool)

(assert (=> b!3915193 (= e!2420665 (not lt!1364035))))

(declare-fun b!3915194 () Bool)

(assert (=> b!3915194 (= e!2420664 e!2420663)))

(declare-fun res!1583666 () Bool)

(assert (=> b!3915194 (=> res!1583666 e!2420663)))

(assert (=> b!3915194 (= res!1583666 call!284433)))

(declare-fun bm!284428 () Bool)

(assert (=> bm!284428 (= call!284433 (isEmpty!24689 lt!1363930))))

(declare-fun b!3915195 () Bool)

(assert (=> b!3915195 (= e!2420663 (not (= (head!8274 lt!1363930) (c!680439 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))))))

(declare-fun b!3915196 () Bool)

(assert (=> b!3915196 (= e!2420669 (nullable!3976 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))))

(declare-fun b!3915197 () Bool)

(declare-fun res!1583661 () Bool)

(assert (=> b!3915197 (=> res!1583661 e!2420666)))

(assert (=> b!3915197 (= res!1583661 (not ((_ is ElementMatch!11365) (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))))))

(assert (=> b!3915197 (= e!2420665 e!2420666)))

(assert (= (and d!1161413 c!680507) b!3915196))

(assert (= (and d!1161413 (not c!680507)) b!3915191))

(assert (= (and d!1161413 c!680505) b!3915190))

(assert (= (and d!1161413 (not c!680505)) b!3915187))

(assert (= (and b!3915187 c!680506) b!3915193))

(assert (= (and b!3915187 (not c!680506)) b!3915197))

(assert (= (and b!3915197 (not res!1583661)) b!3915184))

(assert (= (and b!3915184 res!1583665) b!3915186))

(assert (= (and b!3915186 res!1583663) b!3915192))

(assert (= (and b!3915192 res!1583668) b!3915188))

(assert (= (and b!3915184 (not res!1583667)) b!3915185))

(assert (= (and b!3915185 res!1583664) b!3915194))

(assert (= (and b!3915194 (not res!1583666)) b!3915189))

(assert (= (and b!3915189 (not res!1583662)) b!3915195))

(assert (= (or b!3915190 b!3915186 b!3915194) bm!284428))

(assert (=> b!3915188 m!4478431))

(assert (=> b!3915195 m!4478431))

(assert (=> b!3915196 m!4478417))

(assert (=> b!3915192 m!4478435))

(assert (=> b!3915192 m!4478435))

(declare-fun m!4478607 () Bool)

(assert (=> b!3915192 m!4478607))

(declare-fun m!4478609 () Bool)

(assert (=> bm!284428 m!4478609))

(assert (=> d!1161413 m!4478609))

(assert (=> d!1161413 m!4478415))

(assert (=> b!3915189 m!4478435))

(assert (=> b!3915189 m!4478435))

(assert (=> b!3915189 m!4478607))

(assert (=> b!3915191 m!4478431))

(assert (=> b!3915191 m!4478431))

(declare-fun m!4478611 () Bool)

(assert (=> b!3915191 m!4478611))

(assert (=> b!3915191 m!4478435))

(assert (=> b!3915191 m!4478611))

(assert (=> b!3915191 m!4478435))

(declare-fun m!4478613 () Bool)

(assert (=> b!3915191 m!4478613))

(assert (=> b!3914873 d!1161413))

(declare-fun b!3915279 () Bool)

(declare-fun e!2420713 () Bool)

(declare-datatypes ((tuple2!40748 0))(
  ( (tuple2!40749 (_1!23508 List!41613) (_2!23508 List!41613)) )
))
(declare-fun findLongestMatchInner!1238 (Regex!11365 List!41613 Int List!41613 List!41613 Int) tuple2!40748)

(assert (=> b!3915279 (= e!2420713 (matchR!5454 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (_1!23508 (findLongestMatchInner!1238 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) Nil!41489 (size!31151 Nil!41489) lt!1363918 lt!1363918 (size!31151 lt!1363918)))))))

(declare-fun b!3915280 () Bool)

(declare-fun res!1583720 () Bool)

(declare-fun e!2420714 () Bool)

(assert (=> b!3915280 (=> (not res!1583720) (not e!2420714))))

(declare-fun lt!1364054 () Option!8880)

(assert (=> b!3915280 (= res!1583720 (= (rule!9382 (_1!23505 (get!13710 lt!1364054))) (rule!9382 (_1!23505 (v!39203 lt!1363924)))))))

(declare-fun b!3915281 () Bool)

(declare-fun e!2420716 () Option!8880)

(assert (=> b!3915281 (= e!2420716 None!8879)))

(declare-fun b!3915282 () Bool)

(declare-fun res!1583719 () Bool)

(assert (=> b!3915282 (=> (not res!1583719) (not e!2420714))))

(assert (=> b!3915282 (= res!1583719 (= (value!204744 (_1!23505 (get!13710 lt!1364054))) (apply!9699 (transformation!6460 (rule!9382 (_1!23505 (get!13710 lt!1364054)))) (seqFromList!4727 (originalCharacters!7060 (_1!23505 (get!13710 lt!1364054)))))))))

(declare-fun d!1161431 () Bool)

(declare-fun e!2420715 () Bool)

(assert (=> d!1161431 e!2420715))

(declare-fun res!1583717 () Bool)

(assert (=> d!1161431 (=> res!1583717 e!2420715)))

(assert (=> d!1161431 (= res!1583717 (isEmpty!24692 lt!1364054))))

(assert (=> d!1161431 (= lt!1364054 e!2420716)))

(declare-fun c!680526 () Bool)

(declare-fun lt!1364050 () tuple2!40748)

(assert (=> d!1161431 (= c!680526 (isEmpty!24689 (_1!23508 lt!1364050)))))

(declare-fun findLongestMatch!1151 (Regex!11365 List!41613) tuple2!40748)

(assert (=> d!1161431 (= lt!1364050 (findLongestMatch!1151 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) lt!1363918))))

(assert (=> d!1161431 (ruleValid!2408 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))))))

(assert (=> d!1161431 (= (maxPrefixOneRule!2423 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))) lt!1363918) lt!1364054)))

(declare-fun b!3915283 () Bool)

(declare-fun size!31156 (BalanceConc!24936) Int)

(assert (=> b!3915283 (= e!2420716 (Some!8879 (tuple2!40743 (Token!12059 (apply!9699 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (seqFromList!4727 (_1!23508 lt!1364050))) (rule!9382 (_1!23505 (v!39203 lt!1363924))) (size!31156 (seqFromList!4727 (_1!23508 lt!1364050))) (_1!23508 lt!1364050)) (_2!23508 lt!1364050))))))

(declare-fun lt!1364053 () Unit!59629)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1211 (Regex!11365 List!41613) Unit!59629)

(assert (=> b!3915283 (= lt!1364053 (longestMatchIsAcceptedByMatchOrIsEmpty!1211 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) lt!1363918))))

(declare-fun res!1583718 () Bool)

(assert (=> b!3915283 (= res!1583718 (isEmpty!24689 (_1!23508 (findLongestMatchInner!1238 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) Nil!41489 (size!31151 Nil!41489) lt!1363918 lt!1363918 (size!31151 lt!1363918)))))))

(assert (=> b!3915283 (=> res!1583718 e!2420713)))

(assert (=> b!3915283 e!2420713))

(declare-fun lt!1364052 () Unit!59629)

(assert (=> b!3915283 (= lt!1364052 lt!1364053)))

(declare-fun lt!1364051 () Unit!59629)

(declare-fun lemmaSemiInverse!1744 (TokenValueInjection!12808 BalanceConc!24936) Unit!59629)

(assert (=> b!3915283 (= lt!1364051 (lemmaSemiInverse!1744 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (seqFromList!4727 (_1!23508 lt!1364050))))))

(declare-fun b!3915284 () Bool)

(assert (=> b!3915284 (= e!2420714 (= (size!31152 (_1!23505 (get!13710 lt!1364054))) (size!31151 (originalCharacters!7060 (_1!23505 (get!13710 lt!1364054))))))))

(declare-fun b!3915285 () Bool)

(declare-fun res!1583716 () Bool)

(assert (=> b!3915285 (=> (not res!1583716) (not e!2420714))))

(assert (=> b!3915285 (= res!1583716 (< (size!31151 (_2!23505 (get!13710 lt!1364054))) (size!31151 lt!1363918)))))

(declare-fun b!3915286 () Bool)

(declare-fun res!1583715 () Bool)

(assert (=> b!3915286 (=> (not res!1583715) (not e!2420714))))

(assert (=> b!3915286 (= res!1583715 (= (++!10678 (list!15425 (charsOf!4284 (_1!23505 (get!13710 lt!1364054)))) (_2!23505 (get!13710 lt!1364054))) lt!1363918))))

(declare-fun b!3915287 () Bool)

(assert (=> b!3915287 (= e!2420715 e!2420714)))

(declare-fun res!1583714 () Bool)

(assert (=> b!3915287 (=> (not res!1583714) (not e!2420714))))

(assert (=> b!3915287 (= res!1583714 (matchR!5454 (regex!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (list!15425 (charsOf!4284 (_1!23505 (get!13710 lt!1364054))))))))

(assert (= (and d!1161431 c!680526) b!3915281))

(assert (= (and d!1161431 (not c!680526)) b!3915283))

(assert (= (and b!3915283 (not res!1583718)) b!3915279))

(assert (= (and d!1161431 (not res!1583717)) b!3915287))

(assert (= (and b!3915287 res!1583714) b!3915286))

(assert (= (and b!3915286 res!1583715) b!3915285))

(assert (= (and b!3915285 res!1583716) b!3915280))

(assert (= (and b!3915280 res!1583720) b!3915282))

(assert (= (and b!3915282 res!1583719) b!3915284))

(declare-fun m!4478647 () Bool)

(assert (=> b!3915283 m!4478647))

(declare-fun m!4478649 () Bool)

(assert (=> b!3915283 m!4478649))

(declare-fun m!4478651 () Bool)

(assert (=> b!3915283 m!4478651))

(declare-fun m!4478653 () Bool)

(assert (=> b!3915283 m!4478653))

(assert (=> b!3915283 m!4478273))

(declare-fun m!4478655 () Bool)

(assert (=> b!3915283 m!4478655))

(assert (=> b!3915283 m!4478649))

(assert (=> b!3915283 m!4478649))

(declare-fun m!4478657 () Bool)

(assert (=> b!3915283 m!4478657))

(assert (=> b!3915283 m!4478653))

(assert (=> b!3915283 m!4478649))

(declare-fun m!4478659 () Bool)

(assert (=> b!3915283 m!4478659))

(declare-fun m!4478661 () Bool)

(assert (=> b!3915283 m!4478661))

(assert (=> b!3915283 m!4478273))

(declare-fun m!4478663 () Bool)

(assert (=> b!3915287 m!4478663))

(declare-fun m!4478665 () Bool)

(assert (=> b!3915287 m!4478665))

(assert (=> b!3915287 m!4478665))

(declare-fun m!4478667 () Bool)

(assert (=> b!3915287 m!4478667))

(assert (=> b!3915287 m!4478667))

(declare-fun m!4478669 () Bool)

(assert (=> b!3915287 m!4478669))

(assert (=> b!3915285 m!4478663))

(declare-fun m!4478671 () Bool)

(assert (=> b!3915285 m!4478671))

(assert (=> b!3915285 m!4478273))

(declare-fun m!4478673 () Bool)

(assert (=> d!1161431 m!4478673))

(declare-fun m!4478675 () Bool)

(assert (=> d!1161431 m!4478675))

(declare-fun m!4478677 () Bool)

(assert (=> d!1161431 m!4478677))

(assert (=> d!1161431 m!4478221))

(assert (=> b!3915279 m!4478653))

(assert (=> b!3915279 m!4478273))

(assert (=> b!3915279 m!4478653))

(assert (=> b!3915279 m!4478273))

(assert (=> b!3915279 m!4478655))

(declare-fun m!4478679 () Bool)

(assert (=> b!3915279 m!4478679))

(assert (=> b!3915282 m!4478663))

(declare-fun m!4478681 () Bool)

(assert (=> b!3915282 m!4478681))

(assert (=> b!3915282 m!4478681))

(declare-fun m!4478683 () Bool)

(assert (=> b!3915282 m!4478683))

(assert (=> b!3915286 m!4478663))

(assert (=> b!3915286 m!4478665))

(assert (=> b!3915286 m!4478665))

(assert (=> b!3915286 m!4478667))

(assert (=> b!3915286 m!4478667))

(declare-fun m!4478685 () Bool)

(assert (=> b!3915286 m!4478685))

(assert (=> b!3915284 m!4478663))

(declare-fun m!4478687 () Bool)

(assert (=> b!3915284 m!4478687))

(assert (=> b!3915280 m!4478663))

(assert (=> b!3914873 d!1161431))

(declare-fun d!1161445 () Bool)

(assert (=> d!1161445 (= (maxPrefixOneRule!2423 thiss!20629 (rule!9382 (_1!23505 (v!39203 lt!1363924))) lt!1363918) (Some!8879 (tuple2!40743 (Token!12059 (apply!9699 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))) (seqFromList!4727 lt!1363930)) (rule!9382 (_1!23505 (v!39203 lt!1363924))) (size!31151 lt!1363930) lt!1363930) (_2!23505 (v!39203 lt!1363924)))))))

(declare-fun lt!1364072 () Unit!59629)

(declare-fun choose!23189 (LexerInterface!6049 List!41615 List!41613 List!41613 List!41613 Rule!12720) Unit!59629)

(assert (=> d!1161445 (= lt!1364072 (choose!23189 thiss!20629 rules!2768 lt!1363930 lt!1363918 (_2!23505 (v!39203 lt!1363924)) (rule!9382 (_1!23505 (v!39203 lt!1363924)))))))

(assert (=> d!1161445 (not (isEmpty!24688 rules!2768))))

(assert (=> d!1161445 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1291 thiss!20629 rules!2768 lt!1363930 lt!1363918 (_2!23505 (v!39203 lt!1363924)) (rule!9382 (_1!23505 (v!39203 lt!1363924)))) lt!1364072)))

(declare-fun bs!585689 () Bool)

(assert (= bs!585689 d!1161445))

(assert (=> bs!585689 m!4478259))

(assert (=> bs!585689 m!4478225))

(declare-fun m!4478689 () Bool)

(assert (=> bs!585689 m!4478689))

(assert (=> bs!585689 m!4478209))

(assert (=> bs!585689 m!4478245))

(assert (=> bs!585689 m!4478247))

(assert (=> bs!585689 m!4478245))

(assert (=> b!3914873 d!1161445))

(declare-fun b!3915315 () Bool)

(declare-fun e!2420729 () Bool)

(declare-fun lt!1364075 () tuple2!40744)

(assert (=> b!3915315 (= e!2420729 (= (_2!23506 lt!1364075) suffix!1176))))

(declare-fun b!3915316 () Bool)

(declare-fun e!2420731 () tuple2!40744)

(declare-fun lt!1364074 () Option!8880)

(declare-fun lt!1364073 () tuple2!40744)

(assert (=> b!3915316 (= e!2420731 (tuple2!40745 (Cons!41492 (_1!23505 (v!39203 lt!1364074)) (_1!23506 lt!1364073)) (_2!23506 lt!1364073)))))

(assert (=> b!3915316 (= lt!1364073 (lexList!1817 thiss!20629 rules!2768 (_2!23505 (v!39203 lt!1364074))))))

(declare-fun b!3915317 () Bool)

(declare-fun e!2420730 () Bool)

(assert (=> b!3915317 (= e!2420729 e!2420730)))

(declare-fun res!1583742 () Bool)

(assert (=> b!3915317 (= res!1583742 (< (size!31151 (_2!23506 lt!1364075)) (size!31151 suffix!1176)))))

(assert (=> b!3915317 (=> (not res!1583742) (not e!2420730))))

(declare-fun d!1161447 () Bool)

(assert (=> d!1161447 e!2420729))

(declare-fun c!680531 () Bool)

(assert (=> d!1161447 (= c!680531 (> (size!31153 (_1!23506 lt!1364075)) 0))))

(assert (=> d!1161447 (= lt!1364075 e!2420731)))

(declare-fun c!680530 () Bool)

(assert (=> d!1161447 (= c!680530 ((_ is Some!8879) lt!1364074))))

(assert (=> d!1161447 (= lt!1364074 (maxPrefix!3353 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1161447 (= (lexList!1817 thiss!20629 rules!2768 suffix!1176) lt!1364075)))

(declare-fun b!3915318 () Bool)

(assert (=> b!3915318 (= e!2420731 (tuple2!40745 Nil!41492 suffix!1176))))

(declare-fun b!3915319 () Bool)

(assert (=> b!3915319 (= e!2420730 (not (isEmpty!24690 (_1!23506 lt!1364075))))))

(assert (= (and d!1161447 c!680530) b!3915316))

(assert (= (and d!1161447 (not c!680530)) b!3915318))

(assert (= (and d!1161447 c!680531) b!3915317))

(assert (= (and d!1161447 (not c!680531)) b!3915315))

(assert (= (and b!3915317 res!1583742) b!3915319))

(declare-fun m!4478691 () Bool)

(assert (=> b!3915316 m!4478691))

(declare-fun m!4478693 () Bool)

(assert (=> b!3915317 m!4478693))

(assert (=> b!3915317 m!4478195))

(declare-fun m!4478695 () Bool)

(assert (=> d!1161447 m!4478695))

(declare-fun m!4478697 () Bool)

(assert (=> d!1161447 m!4478697))

(declare-fun m!4478699 () Bool)

(assert (=> b!3915319 m!4478699))

(assert (=> b!3914874 d!1161447))

(declare-fun d!1161449 () Bool)

(assert (=> d!1161449 (= (isEmpty!24689 prefix!426) ((_ is Nil!41489) prefix!426))))

(assert (=> b!3914875 d!1161449))

(declare-fun d!1161451 () Bool)

(declare-fun lt!1364076 () Int)

(assert (=> d!1161451 (>= lt!1364076 0)))

(declare-fun e!2420732 () Int)

(assert (=> d!1161451 (= lt!1364076 e!2420732)))

(declare-fun c!680532 () Bool)

(assert (=> d!1161451 (= c!680532 ((_ is Nil!41489) (originalCharacters!7060 (_1!23505 (v!39203 lt!1363924)))))))

(assert (=> d!1161451 (= (size!31151 (originalCharacters!7060 (_1!23505 (v!39203 lt!1363924)))) lt!1364076)))

(declare-fun b!3915320 () Bool)

(assert (=> b!3915320 (= e!2420732 0)))

(declare-fun b!3915321 () Bool)

(assert (=> b!3915321 (= e!2420732 (+ 1 (size!31151 (t!323618 (originalCharacters!7060 (_1!23505 (v!39203 lt!1363924)))))))))

(assert (= (and d!1161451 c!680532) b!3915320))

(assert (= (and d!1161451 (not c!680532)) b!3915321))

(declare-fun m!4478713 () Bool)

(assert (=> b!3915321 m!4478713))

(assert (=> b!3914878 d!1161451))

(declare-fun b!3915335 () Bool)

(declare-fun b_free!106289 () Bool)

(declare-fun b_next!106993 () Bool)

(assert (=> b!3915335 (= b_free!106289 (not b_next!106993))))

(declare-fun tb!233321 () Bool)

(declare-fun t!323659 () Bool)

(assert (=> (and b!3915335 (= (toValue!8908 (transformation!6460 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323659) tb!233321))

(declare-fun result!282782 () Bool)

(assert (= result!282782 result!282746))

(assert (=> d!1161351 t!323659))

(declare-fun tp!1191675 () Bool)

(declare-fun b_and!298067 () Bool)

(assert (=> b!3915335 (= tp!1191675 (and (=> t!323659 result!282782) b_and!298067))))

(declare-fun b_free!106291 () Bool)

(declare-fun b_next!106995 () Bool)

(assert (=> b!3915335 (= b_free!106291 (not b_next!106995))))

(declare-fun t!323661 () Bool)

(declare-fun tb!233323 () Bool)

(assert (=> (and b!3915335 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))) t!323661) tb!233323))

(declare-fun result!282784 () Bool)

(assert (= result!282784 result!282738))

(assert (=> b!3914899 t!323661))

(declare-fun t!323663 () Bool)

(declare-fun tb!233325 () Bool)

(assert (=> (and b!3915335 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323663) tb!233325))

(declare-fun result!282786 () Bool)

(assert (= result!282786 result!282762))

(assert (=> d!1161379 t!323663))

(declare-fun tb!233327 () Bool)

(declare-fun t!323665 () Bool)

(assert (=> (and b!3915335 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))) t!323665) tb!233327))

(declare-fun result!282788 () Bool)

(assert (= result!282788 result!282774))

(assert (=> b!3915111 t!323665))

(declare-fun b_and!298069 () Bool)

(declare-fun tp!1191678 () Bool)

(assert (=> b!3915335 (= tp!1191678 (and (=> t!323661 result!282784) (=> t!323663 result!282786) (=> t!323665 result!282788) b_and!298069))))

(declare-fun e!2420749 () Bool)

(declare-fun tp!1191674 () Bool)

(declare-fun e!2420750 () Bool)

(declare-fun b!3915334 () Bool)

(assert (=> b!3915334 (= e!2420750 (and tp!1191674 (inv!55677 (tag!7320 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) (inv!55680 (transformation!6460 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) e!2420749))))

(declare-fun e!2420747 () Bool)

(assert (=> b!3914889 (= tp!1191652 e!2420747)))

(assert (=> b!3915335 (= e!2420749 (and tp!1191675 tp!1191678))))

(declare-fun e!2420745 () Bool)

(declare-fun tp!1191677 () Bool)

(declare-fun b!3915332 () Bool)

(assert (=> b!3915332 (= e!2420747 (and (inv!55681 (h!46912 (t!323621 suffixTokens!72))) e!2420745 tp!1191677))))

(declare-fun tp!1191676 () Bool)

(declare-fun b!3915333 () Bool)

(assert (=> b!3915333 (= e!2420745 (and (inv!21 (value!204744 (h!46912 (t!323621 suffixTokens!72)))) e!2420750 tp!1191676))))

(assert (= b!3915334 b!3915335))

(assert (= b!3915333 b!3915334))

(assert (= b!3915332 b!3915333))

(assert (= (and b!3914889 ((_ is Cons!41492) (t!323621 suffixTokens!72))) b!3915332))

(declare-fun m!4478745 () Bool)

(assert (=> b!3915334 m!4478745))

(declare-fun m!4478747 () Bool)

(assert (=> b!3915334 m!4478747))

(declare-fun m!4478749 () Bool)

(assert (=> b!3915332 m!4478749))

(declare-fun m!4478751 () Bool)

(assert (=> b!3915333 m!4478751))

(declare-fun b!3915340 () Bool)

(declare-fun e!2420753 () Bool)

(declare-fun tp!1191681 () Bool)

(assert (=> b!3915340 (= e!2420753 (and tp_is_empty!19701 tp!1191681))))

(assert (=> b!3914879 (= tp!1191651 e!2420753)))

(assert (= (and b!3914879 ((_ is Cons!41489) (t!323618 prefix!426))) b!3915340))

(declare-fun b!3915351 () Bool)

(declare-fun e!2420756 () Bool)

(assert (=> b!3915351 (= e!2420756 tp_is_empty!19701)))

(declare-fun b!3915353 () Bool)

(declare-fun tp!1191696 () Bool)

(assert (=> b!3915353 (= e!2420756 tp!1191696)))

(declare-fun b!3915352 () Bool)

(declare-fun tp!1191695 () Bool)

(declare-fun tp!1191692 () Bool)

(assert (=> b!3915352 (= e!2420756 (and tp!1191695 tp!1191692))))

(declare-fun b!3915354 () Bool)

(declare-fun tp!1191693 () Bool)

(declare-fun tp!1191694 () Bool)

(assert (=> b!3915354 (= e!2420756 (and tp!1191693 tp!1191694))))

(assert (=> b!3914870 (= tp!1191654 e!2420756)))

(assert (= (and b!3914870 ((_ is ElementMatch!11365) (regex!6460 (rule!9382 (h!46912 prefixTokens!80))))) b!3915351))

(assert (= (and b!3914870 ((_ is Concat!18056) (regex!6460 (rule!9382 (h!46912 prefixTokens!80))))) b!3915352))

(assert (= (and b!3914870 ((_ is Star!11365) (regex!6460 (rule!9382 (h!46912 prefixTokens!80))))) b!3915353))

(assert (= (and b!3914870 ((_ is Union!11365) (regex!6460 (rule!9382 (h!46912 prefixTokens!80))))) b!3915354))

(declare-fun b!3915355 () Bool)

(declare-fun e!2420757 () Bool)

(declare-fun tp!1191697 () Bool)

(assert (=> b!3915355 (= e!2420757 (and tp_is_empty!19701 tp!1191697))))

(assert (=> b!3914881 (= tp!1191649 e!2420757)))

(assert (= (and b!3914881 ((_ is Cons!41489) (originalCharacters!7060 (h!46912 suffixTokens!72)))) b!3915355))

(declare-fun b!3915356 () Bool)

(declare-fun e!2420758 () Bool)

(declare-fun tp!1191698 () Bool)

(assert (=> b!3915356 (= e!2420758 (and tp_is_empty!19701 tp!1191698))))

(assert (=> b!3914892 (= tp!1191644 e!2420758)))

(assert (= (and b!3914892 ((_ is Cons!41489) (t!323618 suffixResult!91))) b!3915356))

(declare-fun b!3915357 () Bool)

(declare-fun e!2420759 () Bool)

(assert (=> b!3915357 (= e!2420759 tp_is_empty!19701)))

(declare-fun b!3915359 () Bool)

(declare-fun tp!1191703 () Bool)

(assert (=> b!3915359 (= e!2420759 tp!1191703)))

(declare-fun b!3915358 () Bool)

(declare-fun tp!1191702 () Bool)

(declare-fun tp!1191699 () Bool)

(assert (=> b!3915358 (= e!2420759 (and tp!1191702 tp!1191699))))

(declare-fun b!3915360 () Bool)

(declare-fun tp!1191700 () Bool)

(declare-fun tp!1191701 () Bool)

(assert (=> b!3915360 (= e!2420759 (and tp!1191700 tp!1191701))))

(assert (=> b!3914882 (= tp!1191653 e!2420759)))

(assert (= (and b!3914882 ((_ is ElementMatch!11365) (regex!6460 (h!46911 rules!2768)))) b!3915357))

(assert (= (and b!3914882 ((_ is Concat!18056) (regex!6460 (h!46911 rules!2768)))) b!3915358))

(assert (= (and b!3914882 ((_ is Star!11365) (regex!6460 (h!46911 rules!2768)))) b!3915359))

(assert (= (and b!3914882 ((_ is Union!11365) (regex!6460 (h!46911 rules!2768)))) b!3915360))

(declare-fun b!3915371 () Bool)

(declare-fun b_free!106293 () Bool)

(declare-fun b_next!106997 () Bool)

(assert (=> b!3915371 (= b_free!106293 (not b_next!106997))))

(declare-fun t!323667 () Bool)

(declare-fun tb!233329 () Bool)

(assert (=> (and b!3915371 (= (toValue!8908 (transformation!6460 (h!46911 (t!323620 rules!2768)))) (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323667) tb!233329))

(declare-fun result!282796 () Bool)

(assert (= result!282796 result!282746))

(assert (=> d!1161351 t!323667))

(declare-fun b_and!298071 () Bool)

(declare-fun tp!1191715 () Bool)

(assert (=> b!3915371 (= tp!1191715 (and (=> t!323667 result!282796) b_and!298071))))

(declare-fun b_free!106295 () Bool)

(declare-fun b_next!106999 () Bool)

(assert (=> b!3915371 (= b_free!106295 (not b_next!106999))))

(declare-fun tb!233331 () Bool)

(declare-fun t!323669 () Bool)

(assert (=> (and b!3915371 (= (toChars!8767 (transformation!6460 (h!46911 (t!323620 rules!2768)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))) t!323669) tb!233331))

(declare-fun result!282798 () Bool)

(assert (= result!282798 result!282738))

(assert (=> b!3914899 t!323669))

(declare-fun t!323671 () Bool)

(declare-fun tb!233333 () Bool)

(assert (=> (and b!3915371 (= (toChars!8767 (transformation!6460 (h!46911 (t!323620 rules!2768)))) (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323671) tb!233333))

(declare-fun result!282800 () Bool)

(assert (= result!282800 result!282762))

(assert (=> d!1161379 t!323671))

(declare-fun t!323673 () Bool)

(declare-fun tb!233335 () Bool)

(assert (=> (and b!3915371 (= (toChars!8767 (transformation!6460 (h!46911 (t!323620 rules!2768)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))) t!323673) tb!233335))

(declare-fun result!282802 () Bool)

(assert (= result!282802 result!282774))

(assert (=> b!3915111 t!323673))

(declare-fun b_and!298073 () Bool)

(declare-fun tp!1191714 () Bool)

(assert (=> b!3915371 (= tp!1191714 (and (=> t!323669 result!282798) (=> t!323671 result!282800) (=> t!323673 result!282802) b_and!298073))))

(declare-fun e!2420770 () Bool)

(assert (=> b!3915371 (= e!2420770 (and tp!1191715 tp!1191714))))

(declare-fun tp!1191713 () Bool)

(declare-fun b!3915370 () Bool)

(declare-fun e!2420768 () Bool)

(assert (=> b!3915370 (= e!2420768 (and tp!1191713 (inv!55677 (tag!7320 (h!46911 (t!323620 rules!2768)))) (inv!55680 (transformation!6460 (h!46911 (t!323620 rules!2768)))) e!2420770))))

(declare-fun b!3915369 () Bool)

(declare-fun e!2420769 () Bool)

(declare-fun tp!1191712 () Bool)

(assert (=> b!3915369 (= e!2420769 (and e!2420768 tp!1191712))))

(assert (=> b!3914884 (= tp!1191647 e!2420769)))

(assert (= b!3915370 b!3915371))

(assert (= b!3915369 b!3915370))

(assert (= (and b!3914884 ((_ is Cons!41491) (t!323620 rules!2768))) b!3915369))

(declare-fun m!4478753 () Bool)

(assert (=> b!3915370 m!4478753))

(declare-fun m!4478755 () Bool)

(assert (=> b!3915370 m!4478755))

(declare-fun b!3915372 () Bool)

(declare-fun e!2420772 () Bool)

(assert (=> b!3915372 (= e!2420772 tp_is_empty!19701)))

(declare-fun b!3915374 () Bool)

(declare-fun tp!1191720 () Bool)

(assert (=> b!3915374 (= e!2420772 tp!1191720)))

(declare-fun b!3915373 () Bool)

(declare-fun tp!1191719 () Bool)

(declare-fun tp!1191716 () Bool)

(assert (=> b!3915373 (= e!2420772 (and tp!1191719 tp!1191716))))

(declare-fun b!3915375 () Bool)

(declare-fun tp!1191717 () Bool)

(declare-fun tp!1191718 () Bool)

(assert (=> b!3915375 (= e!2420772 (and tp!1191717 tp!1191718))))

(assert (=> b!3914864 (= tp!1191648 e!2420772)))

(assert (= (and b!3914864 ((_ is ElementMatch!11365) (regex!6460 (rule!9382 (h!46912 suffixTokens!72))))) b!3915372))

(assert (= (and b!3914864 ((_ is Concat!18056) (regex!6460 (rule!9382 (h!46912 suffixTokens!72))))) b!3915373))

(assert (= (and b!3914864 ((_ is Star!11365) (regex!6460 (rule!9382 (h!46912 suffixTokens!72))))) b!3915374))

(assert (= (and b!3914864 ((_ is Union!11365) (regex!6460 (rule!9382 (h!46912 suffixTokens!72))))) b!3915375))

(declare-fun b!3915376 () Bool)

(declare-fun e!2420773 () Bool)

(declare-fun tp!1191721 () Bool)

(assert (=> b!3915376 (= e!2420773 (and tp_is_empty!19701 tp!1191721))))

(assert (=> b!3914866 (= tp!1191638 e!2420773)))

(assert (= (and b!3914866 ((_ is Cons!41489) (originalCharacters!7060 (h!46912 prefixTokens!80)))) b!3915376))

(declare-fun b!3915377 () Bool)

(declare-fun e!2420774 () Bool)

(declare-fun tp!1191722 () Bool)

(assert (=> b!3915377 (= e!2420774 (and tp_is_empty!19701 tp!1191722))))

(assert (=> b!3914877 (= tp!1191645 e!2420774)))

(assert (= (and b!3914877 ((_ is Cons!41489) (t!323618 suffix!1176))) b!3915377))

(declare-fun b!3915381 () Bool)

(declare-fun b_free!106297 () Bool)

(declare-fun b_next!107001 () Bool)

(assert (=> b!3915381 (= b_free!106297 (not b_next!107001))))

(declare-fun t!323675 () Bool)

(declare-fun tb!233337 () Bool)

(assert (=> (and b!3915381 (= (toValue!8908 (transformation!6460 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) (toValue!8908 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323675) tb!233337))

(declare-fun result!282804 () Bool)

(assert (= result!282804 result!282746))

(assert (=> d!1161351 t!323675))

(declare-fun b_and!298075 () Bool)

(declare-fun tp!1191724 () Bool)

(assert (=> b!3915381 (= tp!1191724 (and (=> t!323675 result!282804) b_and!298075))))

(declare-fun b_free!106299 () Bool)

(declare-fun b_next!107003 () Bool)

(assert (=> b!3915381 (= b_free!106299 (not b_next!107003))))

(declare-fun t!323677 () Bool)

(declare-fun tb!233339 () Bool)

(assert (=> (and b!3915381 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72))))) t!323677) tb!233339))

(declare-fun result!282806 () Bool)

(assert (= result!282806 result!282738))

(assert (=> b!3914899 t!323677))

(declare-fun t!323679 () Bool)

(declare-fun tb!233341 () Bool)

(assert (=> (and b!3915381 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) (toChars!8767 (transformation!6460 (rule!9382 (_1!23505 (v!39203 lt!1363924)))))) t!323679) tb!233341))

(declare-fun result!282808 () Bool)

(assert (= result!282808 result!282762))

(assert (=> d!1161379 t!323679))

(declare-fun t!323681 () Bool)

(declare-fun tb!233343 () Bool)

(assert (=> (and b!3915381 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80))))) t!323681) tb!233343))

(declare-fun result!282810 () Bool)

(assert (= result!282810 result!282774))

(assert (=> b!3915111 t!323681))

(declare-fun tp!1191727 () Bool)

(declare-fun b_and!298077 () Bool)

(assert (=> b!3915381 (= tp!1191727 (and (=> t!323677 result!282806) (=> t!323679 result!282808) (=> t!323681 result!282810) b_and!298077))))

(declare-fun tp!1191723 () Bool)

(declare-fun e!2420779 () Bool)

(declare-fun e!2420780 () Bool)

(declare-fun b!3915380 () Bool)

(assert (=> b!3915380 (= e!2420780 (and tp!1191723 (inv!55677 (tag!7320 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) (inv!55680 (transformation!6460 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) e!2420779))))

(declare-fun e!2420777 () Bool)

(assert (=> b!3914888 (= tp!1191642 e!2420777)))

(assert (=> b!3915381 (= e!2420779 (and tp!1191724 tp!1191727))))

(declare-fun e!2420775 () Bool)

(declare-fun tp!1191726 () Bool)

(declare-fun b!3915378 () Bool)

(assert (=> b!3915378 (= e!2420777 (and (inv!55681 (h!46912 (t!323621 prefixTokens!80))) e!2420775 tp!1191726))))

(declare-fun tp!1191725 () Bool)

(declare-fun b!3915379 () Bool)

(assert (=> b!3915379 (= e!2420775 (and (inv!21 (value!204744 (h!46912 (t!323621 prefixTokens!80)))) e!2420780 tp!1191725))))

(assert (= b!3915380 b!3915381))

(assert (= b!3915379 b!3915380))

(assert (= b!3915378 b!3915379))

(assert (= (and b!3914888 ((_ is Cons!41492) (t!323621 prefixTokens!80))) b!3915378))

(declare-fun m!4478757 () Bool)

(assert (=> b!3915380 m!4478757))

(declare-fun m!4478759 () Bool)

(assert (=> b!3915380 m!4478759))

(declare-fun m!4478761 () Bool)

(assert (=> b!3915378 m!4478761))

(declare-fun m!4478763 () Bool)

(assert (=> b!3915379 m!4478763))

(declare-fun b_lambda!114635 () Bool)

(assert (= b_lambda!114623 (or (and b!3914861 b_free!106279 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))))) (and b!3915335 b_free!106291 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))))) (and b!3914869 b_free!106283) (and b!3915371 b_free!106295 (= (toChars!8767 (transformation!6460 (h!46911 (t!323620 rules!2768)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))))) (and b!3915381 b_free!106299 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))))) (and b!3914876 b_free!106287 (= (toChars!8767 (transformation!6460 (h!46911 rules!2768))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))))) b_lambda!114635)))

(declare-fun b_lambda!114637 () Bool)

(assert (= b_lambda!114633 (or (and b!3914869 b_free!106283 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 suffixTokens!72)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))))) (and b!3915335 b_free!106291 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 suffixTokens!72))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))))) (and b!3914861 b_free!106279) (and b!3915381 b_free!106299 (= (toChars!8767 (transformation!6460 (rule!9382 (h!46912 (t!323621 prefixTokens!80))))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))))) (and b!3915371 b_free!106295 (= (toChars!8767 (transformation!6460 (h!46911 (t!323620 rules!2768)))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))))) (and b!3914876 b_free!106287 (= (toChars!8767 (transformation!6460 (h!46911 rules!2768))) (toChars!8767 (transformation!6460 (rule!9382 (h!46912 prefixTokens!80)))))) b_lambda!114637)))

(check-sat (not b!3915113) (not b!3914947) (not b_lambda!114635) (not b_next!106993) (not b!3914950) (not b!3915376) (not b!3915027) (not b!3915080) (not b!3914899) (not b_lambda!114637) (not d!1161377) (not b_next!106989) (not b!3915192) (not b!3915319) (not d!1161361) (not b!3915378) (not d!1161379) (not b!3915195) (not tb!233303) b_and!298037 (not b_next!106985) (not b_lambda!114629) (not b!3915010) (not b!3914931) (not b!3914979) b_and!298039 (not d!1161375) (not d!1161355) (not b!3915078) b_and!298065 (not b!3915117) (not b!3915111) (not d!1161363) (not b!3915023) (not b!3915352) (not b!3915106) (not b!3915379) (not b!3914984) (not d!1161327) (not b!3914918) (not b!3915316) (not d!1161349) (not b_next!107001) (not b!3915082) (not b_next!106995) (not b!3915280) (not b!3915083) (not b!3914982) (not d!1161319) (not d!1161367) (not b!3914963) (not b!3914917) (not b!3915022) (not b!3915024) (not d!1161341) b_and!298041 (not b!3915115) (not d!1161413) (not b!3914959) (not b!3914949) (not b!3915285) (not b!3914943) b_and!298069 (not tb!233315) (not b!3914967) (not b!3915196) (not b_next!106981) (not b_next!106999) (not b!3915355) (not d!1161331) (not b!3914957) (not b!3915079) (not b!3915191) (not b!3915279) b_and!298075 b_and!298077 (not b!3915129) (not b!3915021) (not b!3915375) (not d!1161447) (not b!3914920) (not b!3915084) (not b!3914905) (not d!1161325) (not b!3915189) (not tb!233291) (not d!1161381) (not d!1161397) (not d!1161445) (not b!3915107) (not b!3915353) (not d!1161383) (not b!3915282) b_and!298073 (not b_lambda!114625) (not b!3914965) (not b!3914960) (not b!3915085) (not b!3915373) (not d!1161431) (not d!1161385) (not b!3915283) (not b!3915356) (not b!3915333) (not b!3914968) (not b!3915358) b_and!298061 (not d!1161405) (not b!3915126) (not b!3915109) b_and!298071 (not bm!284425) b_and!298067 (not b_next!106983) (not b!3914996) (not b!3915112) (not b!3915340) (not d!1161317) (not b!3915026) b_and!298063 (not d!1161321) (not d!1161409) (not b!3915377) (not b_next!106997) (not bm!284428) (not b!3915334) (not b!3915359) (not b!3915284) (not b!3915317) (not b!3915321) (not d!1161309) (not b_next!107003) (not b!3915380) (not b!3914942) (not b!3915374) (not b!3915332) (not b!3914930) tp_is_empty!19701 (not b!3915124) (not b_next!106991) (not b!3915369) (not b!3915354) (not b!3915081) (not b!3915287) (not b!3915286) (not b!3914981) (not d!1161343) (not b!3915188) (not b_next!106987) (not b!3915360) (not b!3915114) (not tb!233285) (not b!3914900) (not b!3915370))
(check-sat (not b_next!106993) (not b_next!106989) b_and!298039 b_and!298065 (not b_next!107001) (not b_next!106995) b_and!298041 b_and!298069 b_and!298073 b_and!298063 (not b_next!106997) (not b_next!107003) (not b_next!106991) (not b_next!106987) b_and!298037 (not b_next!106985) (not b_next!106981) (not b_next!106999) b_and!298075 b_and!298077 b_and!298071 b_and!298061 b_and!298067 (not b_next!106983))
