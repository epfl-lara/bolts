; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219876 () Bool)

(assert start!219876)

(declare-fun b!2253022 () Bool)

(declare-fun b_free!66061 () Bool)

(declare-fun b_next!66765 () Bool)

(assert (=> b!2253022 (= b_free!66061 (not b_next!66765))))

(declare-fun tp!711898 () Bool)

(declare-fun b_and!176561 () Bool)

(assert (=> b!2253022 (= tp!711898 b_and!176561)))

(declare-fun b_free!66063 () Bool)

(declare-fun b_next!66767 () Bool)

(assert (=> b!2253022 (= b_free!66063 (not b_next!66767))))

(declare-fun tp!711905 () Bool)

(declare-fun b_and!176563 () Bool)

(assert (=> b!2253022 (= tp!711905 b_and!176563)))

(declare-fun b!2253047 () Bool)

(declare-fun b_free!66065 () Bool)

(declare-fun b_next!66769 () Bool)

(assert (=> b!2253047 (= b_free!66065 (not b_next!66769))))

(declare-fun tp!711896 () Bool)

(declare-fun b_and!176565 () Bool)

(assert (=> b!2253047 (= tp!711896 b_and!176565)))

(declare-fun b_free!66067 () Bool)

(declare-fun b_next!66771 () Bool)

(assert (=> b!2253047 (= b_free!66067 (not b_next!66771))))

(declare-fun tp!711902 () Bool)

(declare-fun b_and!176567 () Bool)

(assert (=> b!2253047 (= tp!711902 b_and!176567)))

(declare-fun b!2253033 () Bool)

(declare-fun b_free!66069 () Bool)

(declare-fun b_next!66773 () Bool)

(assert (=> b!2253033 (= b_free!66069 (not b_next!66773))))

(declare-fun tp!711911 () Bool)

(declare-fun b_and!176569 () Bool)

(assert (=> b!2253033 (= tp!711911 b_and!176569)))

(declare-fun b_free!66071 () Bool)

(declare-fun b_next!66775 () Bool)

(assert (=> b!2253033 (= b_free!66071 (not b_next!66775))))

(declare-fun tp!711913 () Bool)

(declare-fun b_and!176571 () Bool)

(assert (=> b!2253033 (= tp!711913 b_and!176571)))

(declare-fun b!2253020 () Bool)

(declare-fun b_free!66073 () Bool)

(declare-fun b_next!66777 () Bool)

(assert (=> b!2253020 (= b_free!66073 (not b_next!66777))))

(declare-fun tp!711906 () Bool)

(declare-fun b_and!176573 () Bool)

(assert (=> b!2253020 (= tp!711906 b_and!176573)))

(declare-fun b_free!66075 () Bool)

(declare-fun b_next!66779 () Bool)

(assert (=> b!2253020 (= b_free!66075 (not b_next!66779))))

(declare-fun tp!711912 () Bool)

(declare-fun b_and!176575 () Bool)

(assert (=> b!2253020 (= tp!711912 b_and!176575)))

(declare-fun b!2253014 () Bool)

(declare-fun res!962687 () Bool)

(declare-fun e!1441799 () Bool)

(assert (=> b!2253014 (=> (not res!962687) (not e!1441799))))

(declare-datatypes ((List!26783 0))(
  ( (Nil!26689) (Cons!26689 (h!32090 (_ BitVec 16)) (t!201011 List!26783)) )
))
(declare-datatypes ((TokenValue!4395 0))(
  ( (FloatLiteralValue!8790 (text!31210 List!26783)) (TokenValueExt!4394 (__x!17850 Int)) (Broken!21975 (value!134434 List!26783)) (Object!4488) (End!4395) (Def!4395) (Underscore!4395) (Match!4395) (Else!4395) (Error!4395) (Case!4395) (If!4395) (Extends!4395) (Abstract!4395) (Class!4395) (Val!4395) (DelimiterValue!8790 (del!4455 List!26783)) (KeywordValue!4401 (value!134435 List!26783)) (CommentValue!8790 (value!134436 List!26783)) (WhitespaceValue!8790 (value!134437 List!26783)) (IndentationValue!4395 (value!134438 List!26783)) (String!29078) (Int32!4395) (Broken!21976 (value!134439 List!26783)) (Boolean!4396) (Unit!39625) (OperatorValue!4398 (op!4455 List!26783)) (IdentifierValue!8790 (value!134440 List!26783)) (IdentifierValue!8791 (value!134441 List!26783)) (WhitespaceValue!8791 (value!134442 List!26783)) (True!8790) (False!8790) (Broken!21977 (value!134443 List!26783)) (Broken!21978 (value!134444 List!26783)) (True!8791) (RightBrace!4395) (RightBracket!4395) (Colon!4395) (Null!4395) (Comma!4395) (LeftBracket!4395) (False!8791) (LeftBrace!4395) (ImaginaryLiteralValue!4395 (text!31211 List!26783)) (StringLiteralValue!13185 (value!134445 List!26783)) (EOFValue!4395 (value!134446 List!26783)) (IdentValue!4395 (value!134447 List!26783)) (DelimiterValue!8791 (value!134448 List!26783)) (DedentValue!4395 (value!134449 List!26783)) (NewLineValue!4395 (value!134450 List!26783)) (IntegerValue!13185 (value!134451 (_ BitVec 32)) (text!31212 List!26783)) (IntegerValue!13186 (value!134452 Int) (text!31213 List!26783)) (Times!4395) (Or!4395) (Equal!4395) (Minus!4395) (Broken!21979 (value!134453 List!26783)) (And!4395) (Div!4395) (LessEqual!4395) (Mod!4395) (Concat!10976) (Not!4395) (Plus!4395) (SpaceValue!4395 (value!134454 List!26783)) (IntegerValue!13187 (value!134455 Int) (text!31214 List!26783)) (StringLiteralValue!13186 (text!31215 List!26783)) (FloatLiteralValue!8791 (text!31216 List!26783)) (BytesLiteralValue!4395 (value!134456 List!26783)) (CommentValue!8791 (value!134457 List!26783)) (StringLiteralValue!13187 (value!134458 List!26783)) (ErrorTokenValue!4395 (msg!4456 List!26783)) )
))
(declare-datatypes ((C!13308 0))(
  ( (C!13309 (val!7702 Int)) )
))
(declare-datatypes ((List!26784 0))(
  ( (Nil!26690) (Cons!26690 (h!32091 C!13308) (t!201012 List!26784)) )
))
(declare-datatypes ((IArray!17233 0))(
  ( (IArray!17234 (innerList!8674 List!26784)) )
))
(declare-datatypes ((Conc!8614 0))(
  ( (Node!8614 (left!20275 Conc!8614) (right!20605 Conc!8614) (csize!17458 Int) (cheight!8825 Int)) (Leaf!12716 (xs!11556 IArray!17233) (csize!17459 Int)) (Empty!8614) )
))
(declare-datatypes ((BalanceConc!16956 0))(
  ( (BalanceConc!16957 (c!358292 Conc!8614)) )
))
(declare-datatypes ((TokenValueInjection!8330 0))(
  ( (TokenValueInjection!8331 (toValue!5975 Int) (toChars!5834 Int)) )
))
(declare-datatypes ((Regex!6581 0))(
  ( (ElementMatch!6581 (c!358293 C!13308)) (Concat!10977 (regOne!13674 Regex!6581) (regTwo!13674 Regex!6581)) (EmptyExpr!6581) (Star!6581 (reg!6910 Regex!6581)) (EmptyLang!6581) (Union!6581 (regOne!13675 Regex!6581) (regTwo!13675 Regex!6581)) )
))
(declare-datatypes ((String!29079 0))(
  ( (String!29080 (value!134459 String)) )
))
(declare-datatypes ((Rule!8266 0))(
  ( (Rule!8267 (regex!4233 Regex!6581) (tag!4723 String!29079) (isSeparator!4233 Bool) (transformation!4233 TokenValueInjection!8330)) )
))
(declare-fun r!2363 () Rule!8266)

(declare-fun otherR!12 () Rule!8266)

(assert (=> b!2253014 (= res!962687 (not (= r!2363 otherR!12)))))

(declare-fun b!2253016 () Bool)

(declare-fun res!962694 () Bool)

(assert (=> b!2253016 (=> (not res!962694) (not e!1441799))))

(declare-fun e!1441791 () Bool)

(assert (=> b!2253016 (= res!962694 e!1441791)))

(declare-fun res!962678 () Bool)

(assert (=> b!2253016 (=> res!962678 e!1441791)))

(declare-fun lt!837415 () Bool)

(assert (=> b!2253016 (= res!962678 lt!837415)))

(declare-fun b!2253017 () Bool)

(declare-fun res!962680 () Bool)

(declare-fun e!1441807 () Bool)

(assert (=> b!2253017 (=> (not res!962680) (not e!1441807))))

(declare-datatypes ((LexerInterface!3830 0))(
  ( (LexerInterfaceExt!3827 (__x!17851 Int)) (Lexer!3828) )
))
(declare-fun thiss!16613 () LexerInterface!3830)

(declare-datatypes ((List!26785 0))(
  ( (Nil!26691) (Cons!26691 (h!32092 Rule!8266) (t!201013 List!26785)) )
))
(declare-fun rules!1750 () List!26785)

(declare-fun rulesInvariant!3332 (LexerInterface!3830 List!26785) Bool)

(assert (=> b!2253017 (= res!962680 (rulesInvariant!3332 thiss!16613 rules!1750))))

(declare-fun b!2253018 () Bool)

(declare-fun e!1441785 () Bool)

(assert (=> b!2253018 (= e!1441807 e!1441785)))

(declare-fun res!962689 () Bool)

(assert (=> b!2253018 (=> (not res!962689) (not e!1441785))))

(declare-datatypes ((Token!7944 0))(
  ( (Token!7945 (value!134460 TokenValue!4395) (rule!6537 Rule!8266) (size!20892 Int) (originalCharacters!5003 List!26784)) )
))
(declare-datatypes ((List!26786 0))(
  ( (Nil!26692) (Cons!26692 (h!32093 Token!7944) (t!201014 List!26786)) )
))
(declare-datatypes ((IArray!17235 0))(
  ( (IArray!17236 (innerList!8675 List!26786)) )
))
(declare-datatypes ((Conc!8615 0))(
  ( (Node!8615 (left!20276 Conc!8615) (right!20606 Conc!8615) (csize!17460 Int) (cheight!8826 Int)) (Leaf!12717 (xs!11557 IArray!17235) (csize!17461 Int)) (Empty!8615) )
))
(declare-datatypes ((BalanceConc!16958 0))(
  ( (BalanceConc!16959 (c!358294 Conc!8615)) )
))
(declare-datatypes ((tuple2!26206 0))(
  ( (tuple2!26207 (_1!15613 BalanceConc!16958) (_2!15613 BalanceConc!16956)) )
))
(declare-fun lt!837428 () tuple2!26206)

(declare-fun tokens!456 () List!26786)

(declare-fun suffix!886 () List!26784)

(declare-datatypes ((tuple2!26208 0))(
  ( (tuple2!26209 (_1!15614 List!26786) (_2!15614 List!26784)) )
))
(declare-fun list!10253 (BalanceConc!16958) List!26786)

(declare-fun list!10254 (BalanceConc!16956) List!26784)

(assert (=> b!2253018 (= res!962689 (= (tuple2!26209 (list!10253 (_1!15613 lt!837428)) (list!10254 (_2!15613 lt!837428))) (tuple2!26209 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26784)

(declare-fun lex!1669 (LexerInterface!3830 List!26785 BalanceConc!16956) tuple2!26206)

(declare-fun seqFromList!2937 (List!26784) BalanceConc!16956)

(assert (=> b!2253018 (= lt!837428 (lex!1669 thiss!16613 rules!1750 (seqFromList!2937 input!1722)))))

(declare-fun b!2253019 () Bool)

(declare-fun e!1441790 () Bool)

(declare-fun e!1441792 () Bool)

(assert (=> b!2253019 (= e!1441790 e!1441792)))

(declare-fun res!962682 () Bool)

(assert (=> b!2253019 (=> res!962682 e!1441792)))

(declare-fun getIndex!254 (List!26785 Rule!8266) Int)

(assert (=> b!2253019 (= res!962682 (<= (getIndex!254 rules!1750 r!2363) (getIndex!254 rules!1750 otherR!12)))))

(declare-fun ruleValid!1325 (LexerInterface!3830 Rule!8266) Bool)

(assert (=> b!2253019 (ruleValid!1325 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39626 0))(
  ( (Unit!39627) )
))
(declare-fun lt!837414 () Unit!39626)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!732 (LexerInterface!3830 Rule!8266 List!26785) Unit!39626)

(assert (=> b!2253019 (= lt!837414 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!732 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1441798 () Bool)

(assert (=> b!2253020 (= e!1441798 (and tp!711906 tp!711912))))

(declare-fun b!2253021 () Bool)

(declare-fun res!962685 () Bool)

(assert (=> b!2253021 (=> (not res!962685) (not e!1441807))))

(declare-fun contains!4585 (List!26785 Rule!8266) Bool)

(assert (=> b!2253021 (= res!962685 (contains!4585 rules!1750 otherR!12))))

(declare-fun e!1441786 () Bool)

(assert (=> b!2253022 (= e!1441786 (and tp!711898 tp!711905))))

(declare-fun b!2253023 () Bool)

(assert (=> b!2253023 (= e!1441785 e!1441799)))

(declare-fun res!962692 () Bool)

(assert (=> b!2253023 (=> (not res!962692) (not e!1441799))))

(declare-fun e!1441783 () Bool)

(assert (=> b!2253023 (= res!962692 e!1441783)))

(declare-fun res!962693 () Bool)

(assert (=> b!2253023 (=> res!962693 e!1441783)))

(assert (=> b!2253023 (= res!962693 lt!837415)))

(declare-fun isEmpty!15056 (List!26786) Bool)

(assert (=> b!2253023 (= lt!837415 (isEmpty!15056 tokens!456))))

(declare-fun b!2253024 () Bool)

(declare-fun e!1441801 () Bool)

(declare-fun tp!711910 () Bool)

(declare-fun e!1441795 () Bool)

(declare-fun inv!36225 (String!29079) Bool)

(declare-fun inv!36228 (TokenValueInjection!8330) Bool)

(assert (=> b!2253024 (= e!1441801 (and tp!711910 (inv!36225 (tag!4723 (rule!6537 (h!32093 tokens!456)))) (inv!36228 (transformation!4233 (rule!6537 (h!32093 tokens!456)))) e!1441795))))

(declare-fun b!2253025 () Bool)

(declare-fun res!962681 () Bool)

(assert (=> b!2253025 (=> (not res!962681) (not e!1441799))))

(declare-fun otherP!12 () List!26784)

(declare-fun isPrefix!2223 (List!26784 List!26784) Bool)

(assert (=> b!2253025 (= res!962681 (isPrefix!2223 otherP!12 input!1722))))

(declare-fun tp!711909 () Bool)

(declare-fun b!2253026 () Bool)

(declare-fun e!1441784 () Bool)

(declare-fun inv!21 (TokenValue!4395) Bool)

(assert (=> b!2253026 (= e!1441784 (and (inv!21 (value!134460 (h!32093 tokens!456))) e!1441801 tp!711909))))

(declare-fun b!2253027 () Bool)

(declare-fun e!1441797 () Bool)

(declare-fun tp_is_empty!10383 () Bool)

(declare-fun tp!711907 () Bool)

(assert (=> b!2253027 (= e!1441797 (and tp_is_empty!10383 tp!711907))))

(declare-fun b!2253028 () Bool)

(declare-fun e!1441781 () Bool)

(declare-fun e!1441808 () Bool)

(declare-fun tp!711900 () Bool)

(assert (=> b!2253028 (= e!1441781 (and e!1441808 tp!711900))))

(declare-fun res!962684 () Bool)

(assert (=> start!219876 (=> (not res!962684) (not e!1441807))))

(get-info :version)

(assert (=> start!219876 (= res!962684 ((_ is Lexer!3828) thiss!16613))))

(assert (=> start!219876 e!1441807))

(assert (=> start!219876 true))

(assert (=> start!219876 e!1441797))

(declare-fun e!1441800 () Bool)

(assert (=> start!219876 e!1441800))

(declare-fun e!1441779 () Bool)

(assert (=> start!219876 e!1441779))

(declare-fun e!1441803 () Bool)

(assert (=> start!219876 e!1441803))

(assert (=> start!219876 e!1441781))

(declare-fun e!1441796 () Bool)

(assert (=> start!219876 e!1441796))

(declare-fun e!1441788 () Bool)

(assert (=> start!219876 e!1441788))

(declare-fun b!2253015 () Bool)

(declare-fun size!20893 (BalanceConc!16956) Int)

(declare-fun charsOf!2621 (Token!7944) BalanceConc!16956)

(declare-fun head!4802 (List!26786) Token!7944)

(declare-fun size!20894 (List!26784) Int)

(assert (=> b!2253015 (= e!1441783 (<= (size!20893 (charsOf!2621 (head!4802 tokens!456))) (size!20894 otherP!12)))))

(declare-fun b!2253029 () Bool)

(declare-fun res!962679 () Bool)

(assert (=> b!2253029 (=> (not res!962679) (not e!1441807))))

(declare-fun isEmpty!15057 (List!26785) Bool)

(assert (=> b!2253029 (= res!962679 (not (isEmpty!15057 rules!1750)))))

(declare-fun b!2253030 () Bool)

(declare-fun e!1441793 () Bool)

(declare-fun e!1441805 () Bool)

(assert (=> b!2253030 (= e!1441793 e!1441805)))

(declare-fun res!962690 () Bool)

(assert (=> b!2253030 (=> res!962690 e!1441805)))

(declare-fun lt!837419 () List!26784)

(declare-datatypes ((tuple2!26210 0))(
  ( (tuple2!26211 (_1!15615 Token!7944) (_2!15615 List!26784)) )
))
(declare-datatypes ((Option!5209 0))(
  ( (None!5208) (Some!5208 (v!30230 tuple2!26210)) )
))
(declare-fun lt!837421 () Option!5209)

(declare-fun lt!837422 () Int)

(declare-fun lt!837424 () BalanceConc!16956)

(declare-fun lt!837423 () List!26784)

(declare-fun apply!6553 (TokenValueInjection!8330 BalanceConc!16956) TokenValue!4395)

(assert (=> b!2253030 (= res!962690 (not (= lt!837421 (Some!5208 (tuple2!26211 (Token!7945 (apply!6553 (transformation!4233 r!2363) lt!837424) r!2363 lt!837422 lt!837423) lt!837419)))))))

(declare-fun lt!837416 () Unit!39626)

(declare-fun lemmaSemiInverse!998 (TokenValueInjection!8330 BalanceConc!16956) Unit!39626)

(assert (=> b!2253030 (= lt!837416 (lemmaSemiInverse!998 (transformation!4233 r!2363) lt!837424))))

(assert (=> b!2253030 (= lt!837424 (seqFromList!2937 lt!837423))))

(declare-fun b!2253031 () Bool)

(declare-fun e!1441809 () Bool)

(assert (=> b!2253031 (= e!1441792 e!1441809)))

(declare-fun res!962691 () Bool)

(assert (=> b!2253031 (=> res!962691 e!1441809)))

(declare-fun lt!837427 () tuple2!26210)

(assert (=> b!2253031 (= res!962691 (not (= (h!32093 tokens!456) (_1!15615 lt!837427))))))

(declare-fun get!8057 (Option!5209) tuple2!26210)

(assert (=> b!2253031 (= lt!837427 (get!8057 lt!837421))))

(declare-fun maxPrefix!2118 (LexerInterface!3830 List!26785 List!26784) Option!5209)

(assert (=> b!2253031 (= lt!837421 (maxPrefix!2118 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2253032 () Bool)

(declare-fun res!962677 () Bool)

(assert (=> b!2253032 (=> res!962677 e!1441792)))

(assert (=> b!2253032 (= res!962677 ((_ is Nil!26692) tokens!456))))

(assert (=> b!2253033 (= e!1441795 (and tp!711911 tp!711913))))

(declare-fun b!2253034 () Bool)

(declare-fun res!962676 () Bool)

(assert (=> b!2253034 (=> res!962676 e!1441793)))

(declare-fun isEmpty!15058 (List!26784) Bool)

(assert (=> b!2253034 (= res!962676 (isEmpty!15058 lt!837423))))

(declare-fun b!2253035 () Bool)

(declare-fun tp!711908 () Bool)

(assert (=> b!2253035 (= e!1441803 (and tp_is_empty!10383 tp!711908))))

(declare-fun b!2253036 () Bool)

(assert (=> b!2253036 (= e!1441791 (= (rule!6537 (head!4802 tokens!456)) r!2363))))

(declare-fun e!1441787 () Bool)

(declare-fun tp!711904 () Bool)

(declare-fun b!2253037 () Bool)

(assert (=> b!2253037 (= e!1441808 (and tp!711904 (inv!36225 (tag!4723 (h!32092 rules!1750))) (inv!36228 (transformation!4233 (h!32092 rules!1750))) e!1441787))))

(declare-fun b!2253038 () Bool)

(declare-fun e!1441804 () Bool)

(assert (=> b!2253038 (= e!1441809 e!1441804)))

(declare-fun res!962696 () Bool)

(assert (=> b!2253038 (=> res!962696 e!1441804)))

(declare-fun lt!837426 () Int)

(assert (=> b!2253038 (= res!962696 (not (= lt!837426 lt!837422)))))

(assert (=> b!2253038 (= lt!837422 (size!20894 lt!837423))))

(assert (=> b!2253038 (= lt!837426 (size!20894 otherP!12))))

(assert (=> b!2253038 (= (_2!15615 lt!837427) lt!837419)))

(declare-fun lt!837417 () Unit!39626)

(declare-fun lemmaSamePrefixThenSameSuffix!978 (List!26784 List!26784 List!26784 List!26784 List!26784) Unit!39626)

(assert (=> b!2253038 (= lt!837417 (lemmaSamePrefixThenSameSuffix!978 lt!837423 (_2!15615 lt!837427) lt!837423 lt!837419 input!1722))))

(declare-fun getSuffix!1058 (List!26784 List!26784) List!26784)

(assert (=> b!2253038 (= lt!837419 (getSuffix!1058 input!1722 lt!837423))))

(declare-fun ++!6505 (List!26784 List!26784) List!26784)

(assert (=> b!2253038 (isPrefix!2223 lt!837423 (++!6505 lt!837423 (_2!15615 lt!837427)))))

(declare-fun lt!837413 () Unit!39626)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1468 (List!26784 List!26784) Unit!39626)

(assert (=> b!2253038 (= lt!837413 (lemmaConcatTwoListThenFirstIsPrefix!1468 lt!837423 (_2!15615 lt!837427)))))

(assert (=> b!2253038 (= lt!837423 (list!10254 (charsOf!2621 (h!32093 tokens!456))))))

(declare-fun b!2253039 () Bool)

(assert (=> b!2253039 (= e!1441804 e!1441793)))

(declare-fun res!962686 () Bool)

(assert (=> b!2253039 (=> res!962686 e!1441793)))

(assert (=> b!2253039 (= res!962686 (not (isPrefix!2223 lt!837423 input!1722)))))

(assert (=> b!2253039 (= lt!837423 otherP!12)))

(declare-fun lt!837425 () Unit!39626)

(declare-fun lemmaIsPrefixSameLengthThenSameList!379 (List!26784 List!26784 List!26784) Unit!39626)

(assert (=> b!2253039 (= lt!837425 (lemmaIsPrefixSameLengthThenSameList!379 lt!837423 otherP!12 input!1722))))

(declare-fun b!2253040 () Bool)

(declare-fun tp!711903 () Bool)

(assert (=> b!2253040 (= e!1441779 (and tp_is_empty!10383 tp!711903))))

(declare-fun tp!711899 () Bool)

(declare-fun b!2253041 () Bool)

(declare-fun inv!36229 (Token!7944) Bool)

(assert (=> b!2253041 (= e!1441788 (and (inv!36229 (h!32093 tokens!456)) e!1441784 tp!711899))))

(declare-fun b!2253042 () Bool)

(declare-fun tp!711897 () Bool)

(assert (=> b!2253042 (= e!1441800 (and tp!711897 (inv!36225 (tag!4723 otherR!12)) (inv!36228 (transformation!4233 otherR!12)) e!1441786))))

(declare-fun b!2253043 () Bool)

(declare-fun e!1441782 () Bool)

(declare-fun matchR!2842 (Regex!6581 List!26784) Bool)

(assert (=> b!2253043 (= e!1441782 (not (matchR!2842 (regex!4233 r!2363) (list!10254 (charsOf!2621 (head!4802 tokens!456))))))))

(declare-fun b!2253044 () Bool)

(declare-fun res!962683 () Bool)

(assert (=> b!2253044 (=> (not res!962683) (not e!1441807))))

(assert (=> b!2253044 (= res!962683 (contains!4585 rules!1750 r!2363))))

(declare-fun b!2253045 () Bool)

(assert (=> b!2253045 (= e!1441799 (not e!1441790))))

(declare-fun res!962688 () Bool)

(assert (=> b!2253045 (=> res!962688 e!1441790)))

(assert (=> b!2253045 (= res!962688 e!1441782)))

(declare-fun res!962695 () Bool)

(assert (=> b!2253045 (=> (not res!962695) (not e!1441782))))

(assert (=> b!2253045 (= res!962695 (not lt!837415))))

(assert (=> b!2253045 (ruleValid!1325 thiss!16613 r!2363)))

(declare-fun lt!837420 () Unit!39626)

(assert (=> b!2253045 (= lt!837420 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!732 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2253046 () Bool)

(assert (=> b!2253046 (= e!1441805 true)))

(declare-fun lt!837418 () Bool)

(assert (=> b!2253046 (= lt!837418 (matchR!2842 (regex!4233 r!2363) lt!837423))))

(assert (=> b!2253047 (= e!1441787 (and tp!711896 tp!711902))))

(declare-fun b!2253048 () Bool)

(declare-fun tp!711901 () Bool)

(assert (=> b!2253048 (= e!1441796 (and tp!711901 (inv!36225 (tag!4723 r!2363)) (inv!36228 (transformation!4233 r!2363)) e!1441798))))

(assert (= (and start!219876 res!962684) b!2253029))

(assert (= (and b!2253029 res!962679) b!2253017))

(assert (= (and b!2253017 res!962680) b!2253044))

(assert (= (and b!2253044 res!962683) b!2253021))

(assert (= (and b!2253021 res!962685) b!2253018))

(assert (= (and b!2253018 res!962689) b!2253023))

(assert (= (and b!2253023 (not res!962693)) b!2253015))

(assert (= (and b!2253023 res!962692) b!2253016))

(assert (= (and b!2253016 (not res!962678)) b!2253036))

(assert (= (and b!2253016 res!962694) b!2253025))

(assert (= (and b!2253025 res!962681) b!2253014))

(assert (= (and b!2253014 res!962687) b!2253045))

(assert (= (and b!2253045 res!962695) b!2253043))

(assert (= (and b!2253045 (not res!962688)) b!2253019))

(assert (= (and b!2253019 (not res!962682)) b!2253032))

(assert (= (and b!2253032 (not res!962677)) b!2253031))

(assert (= (and b!2253031 (not res!962691)) b!2253038))

(assert (= (and b!2253038 (not res!962696)) b!2253039))

(assert (= (and b!2253039 (not res!962686)) b!2253034))

(assert (= (and b!2253034 (not res!962676)) b!2253030))

(assert (= (and b!2253030 (not res!962690)) b!2253046))

(assert (= (and start!219876 ((_ is Cons!26690) input!1722)) b!2253027))

(assert (= b!2253042 b!2253022))

(assert (= start!219876 b!2253042))

(assert (= (and start!219876 ((_ is Cons!26690) suffix!886)) b!2253040))

(assert (= (and start!219876 ((_ is Cons!26690) otherP!12)) b!2253035))

(assert (= b!2253037 b!2253047))

(assert (= b!2253028 b!2253037))

(assert (= (and start!219876 ((_ is Cons!26691) rules!1750)) b!2253028))

(assert (= b!2253048 b!2253020))

(assert (= start!219876 b!2253048))

(assert (= b!2253024 b!2253033))

(assert (= b!2253026 b!2253024))

(assert (= b!2253041 b!2253026))

(assert (= (and start!219876 ((_ is Cons!26692) tokens!456)) b!2253041))

(declare-fun m!2683765 () Bool)

(assert (=> b!2253029 m!2683765))

(declare-fun m!2683767 () Bool)

(assert (=> b!2253018 m!2683767))

(declare-fun m!2683769 () Bool)

(assert (=> b!2253018 m!2683769))

(declare-fun m!2683771 () Bool)

(assert (=> b!2253018 m!2683771))

(assert (=> b!2253018 m!2683771))

(declare-fun m!2683773 () Bool)

(assert (=> b!2253018 m!2683773))

(declare-fun m!2683775 () Bool)

(assert (=> b!2253024 m!2683775))

(declare-fun m!2683777 () Bool)

(assert (=> b!2253024 m!2683777))

(declare-fun m!2683779 () Bool)

(assert (=> b!2253031 m!2683779))

(declare-fun m!2683781 () Bool)

(assert (=> b!2253031 m!2683781))

(declare-fun m!2683783 () Bool)

(assert (=> b!2253025 m!2683783))

(declare-fun m!2683785 () Bool)

(assert (=> b!2253037 m!2683785))

(declare-fun m!2683787 () Bool)

(assert (=> b!2253037 m!2683787))

(declare-fun m!2683789 () Bool)

(assert (=> b!2253039 m!2683789))

(declare-fun m!2683791 () Bool)

(assert (=> b!2253039 m!2683791))

(declare-fun m!2683793 () Bool)

(assert (=> b!2253046 m!2683793))

(declare-fun m!2683795 () Bool)

(assert (=> b!2253036 m!2683795))

(declare-fun m!2683797 () Bool)

(assert (=> b!2253045 m!2683797))

(declare-fun m!2683799 () Bool)

(assert (=> b!2253045 m!2683799))

(declare-fun m!2683801 () Bool)

(assert (=> b!2253019 m!2683801))

(declare-fun m!2683803 () Bool)

(assert (=> b!2253019 m!2683803))

(declare-fun m!2683805 () Bool)

(assert (=> b!2253019 m!2683805))

(declare-fun m!2683807 () Bool)

(assert (=> b!2253019 m!2683807))

(declare-fun m!2683809 () Bool)

(assert (=> b!2253030 m!2683809))

(declare-fun m!2683811 () Bool)

(assert (=> b!2253030 m!2683811))

(declare-fun m!2683813 () Bool)

(assert (=> b!2253030 m!2683813))

(declare-fun m!2683815 () Bool)

(assert (=> b!2253017 m!2683815))

(assert (=> b!2253043 m!2683795))

(assert (=> b!2253043 m!2683795))

(declare-fun m!2683817 () Bool)

(assert (=> b!2253043 m!2683817))

(assert (=> b!2253043 m!2683817))

(declare-fun m!2683819 () Bool)

(assert (=> b!2253043 m!2683819))

(assert (=> b!2253043 m!2683819))

(declare-fun m!2683821 () Bool)

(assert (=> b!2253043 m!2683821))

(declare-fun m!2683823 () Bool)

(assert (=> b!2253048 m!2683823))

(declare-fun m!2683825 () Bool)

(assert (=> b!2253048 m!2683825))

(declare-fun m!2683827 () Bool)

(assert (=> b!2253034 m!2683827))

(declare-fun m!2683829 () Bool)

(assert (=> b!2253038 m!2683829))

(declare-fun m!2683831 () Bool)

(assert (=> b!2253038 m!2683831))

(declare-fun m!2683833 () Bool)

(assert (=> b!2253038 m!2683833))

(declare-fun m!2683835 () Bool)

(assert (=> b!2253038 m!2683835))

(declare-fun m!2683837 () Bool)

(assert (=> b!2253038 m!2683837))

(declare-fun m!2683839 () Bool)

(assert (=> b!2253038 m!2683839))

(assert (=> b!2253038 m!2683839))

(declare-fun m!2683841 () Bool)

(assert (=> b!2253038 m!2683841))

(assert (=> b!2253038 m!2683835))

(declare-fun m!2683843 () Bool)

(assert (=> b!2253038 m!2683843))

(declare-fun m!2683845 () Bool)

(assert (=> b!2253038 m!2683845))

(declare-fun m!2683847 () Bool)

(assert (=> b!2253044 m!2683847))

(declare-fun m!2683849 () Bool)

(assert (=> b!2253021 m!2683849))

(declare-fun m!2683851 () Bool)

(assert (=> b!2253041 m!2683851))

(declare-fun m!2683853 () Bool)

(assert (=> b!2253023 m!2683853))

(assert (=> b!2253015 m!2683795))

(assert (=> b!2253015 m!2683795))

(assert (=> b!2253015 m!2683817))

(assert (=> b!2253015 m!2683817))

(declare-fun m!2683855 () Bool)

(assert (=> b!2253015 m!2683855))

(assert (=> b!2253015 m!2683833))

(declare-fun m!2683857 () Bool)

(assert (=> b!2253026 m!2683857))

(declare-fun m!2683859 () Bool)

(assert (=> b!2253042 m!2683859))

(declare-fun m!2683861 () Bool)

(assert (=> b!2253042 m!2683861))

(check-sat b_and!176575 (not b!2253018) (not b!2253028) b_and!176573 b_and!176565 b_and!176561 (not b!2253017) (not b!2253048) (not b!2253034) (not b!2253041) (not b!2253025) (not b!2253036) (not b!2253045) (not b_next!66777) (not b_next!66773) b_and!176571 (not b_next!66775) (not b!2253015) (not b!2253037) (not b!2253040) (not b!2253044) (not b!2253027) (not b!2253042) (not b_next!66767) (not b_next!66765) (not b!2253031) b_and!176563 (not b!2253026) (not b!2253021) (not b!2253035) (not b!2253030) (not b!2253043) (not b!2253046) (not b!2253038) (not b!2253039) (not b_next!66779) tp_is_empty!10383 (not b_next!66769) (not b!2253024) (not b!2253019) (not b!2253023) b_and!176567 b_and!176569 (not b_next!66771) (not b!2253029))
(check-sat b_and!176575 (not b_next!66777) b_and!176573 b_and!176565 b_and!176561 b_and!176563 (not b_next!66771) (not b_next!66773) b_and!176571 (not b_next!66775) (not b_next!66767) (not b_next!66765) (not b_next!66779) (not b_next!66769) b_and!176567 b_and!176569)
