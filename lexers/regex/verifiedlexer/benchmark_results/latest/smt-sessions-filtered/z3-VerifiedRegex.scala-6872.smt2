; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361804 () Bool)

(assert start!361804)

(declare-fun b!3859365 () Bool)

(declare-fun b_free!103717 () Bool)

(declare-fun b_next!104421 () Bool)

(assert (=> b!3859365 (= b_free!103717 (not b_next!104421))))

(declare-fun tp!1169924 () Bool)

(declare-fun b_and!288843 () Bool)

(assert (=> b!3859365 (= tp!1169924 b_and!288843)))

(declare-fun b_free!103719 () Bool)

(declare-fun b_next!104423 () Bool)

(assert (=> b!3859365 (= b_free!103719 (not b_next!104423))))

(declare-fun tp!1169926 () Bool)

(declare-fun b_and!288845 () Bool)

(assert (=> b!3859365 (= tp!1169926 b_and!288845)))

(declare-fun b!3859352 () Bool)

(declare-fun b_free!103721 () Bool)

(declare-fun b_next!104425 () Bool)

(assert (=> b!3859352 (= b_free!103721 (not b_next!104425))))

(declare-fun tp!1169933 () Bool)

(declare-fun b_and!288847 () Bool)

(assert (=> b!3859352 (= tp!1169933 b_and!288847)))

(declare-fun b_free!103723 () Bool)

(declare-fun b_next!104427 () Bool)

(assert (=> b!3859352 (= b_free!103723 (not b_next!104427))))

(declare-fun tp!1169930 () Bool)

(declare-fun b_and!288849 () Bool)

(assert (=> b!3859352 (= tp!1169930 b_and!288849)))

(declare-fun b!3859345 () Bool)

(declare-fun b_free!103725 () Bool)

(declare-fun b_next!104429 () Bool)

(assert (=> b!3859345 (= b_free!103725 (not b_next!104429))))

(declare-fun tp!1169925 () Bool)

(declare-fun b_and!288851 () Bool)

(assert (=> b!3859345 (= tp!1169925 b_and!288851)))

(declare-fun b_free!103727 () Bool)

(declare-fun b_next!104431 () Bool)

(assert (=> b!3859345 (= b_free!103727 (not b_next!104431))))

(declare-fun tp!1169923 () Bool)

(declare-fun b_and!288853 () Bool)

(assert (=> b!3859345 (= tp!1169923 b_and!288853)))

(declare-fun b!3859341 () Bool)

(declare-fun e!2385874 () Bool)

(declare-fun e!2385881 () Bool)

(assert (=> b!3859341 (= e!2385874 e!2385881)))

(declare-fun res!1562598 () Bool)

(assert (=> b!3859341 (=> res!1562598 e!2385881)))

(declare-fun lt!1340972 () Int)

(declare-fun lt!1340986 () Int)

(assert (=> b!3859341 (= res!1562598 (>= lt!1340972 lt!1340986))))

(declare-datatypes ((C!22660 0))(
  ( (C!22661 (val!13424 Int)) )
))
(declare-datatypes ((List!41040 0))(
  ( (Nil!40916) (Cons!40916 (h!46336 C!22660) (t!313243 List!41040)) )
))
(declare-fun suffix!1176 () List!41040)

(declare-fun size!30773 (List!41040) Int)

(assert (=> b!3859341 (= lt!1340986 (size!30773 suffix!1176))))

(declare-datatypes ((List!41041 0))(
  ( (Nil!40917) (Cons!40917 (h!46337 (_ BitVec 16)) (t!313244 List!41041)) )
))
(declare-datatypes ((TokenValue!6562 0))(
  ( (FloatLiteralValue!13124 (text!46379 List!41041)) (TokenValueExt!6561 (__x!25341 Int)) (Broken!32810 (value!201070 List!41041)) (Object!6685) (End!6562) (Def!6562) (Underscore!6562) (Match!6562) (Else!6562) (Error!6562) (Case!6562) (If!6562) (Extends!6562) (Abstract!6562) (Class!6562) (Val!6562) (DelimiterValue!13124 (del!6622 List!41041)) (KeywordValue!6568 (value!201071 List!41041)) (CommentValue!13124 (value!201072 List!41041)) (WhitespaceValue!13124 (value!201073 List!41041)) (IndentationValue!6562 (value!201074 List!41041)) (String!46527) (Int32!6562) (Broken!32811 (value!201075 List!41041)) (Boolean!6563) (Unit!58577) (OperatorValue!6565 (op!6622 List!41041)) (IdentifierValue!13124 (value!201076 List!41041)) (IdentifierValue!13125 (value!201077 List!41041)) (WhitespaceValue!13125 (value!201078 List!41041)) (True!13124) (False!13124) (Broken!32812 (value!201079 List!41041)) (Broken!32813 (value!201080 List!41041)) (True!13125) (RightBrace!6562) (RightBracket!6562) (Colon!6562) (Null!6562) (Comma!6562) (LeftBracket!6562) (False!13125) (LeftBrace!6562) (ImaginaryLiteralValue!6562 (text!46380 List!41041)) (StringLiteralValue!19686 (value!201081 List!41041)) (EOFValue!6562 (value!201082 List!41041)) (IdentValue!6562 (value!201083 List!41041)) (DelimiterValue!13125 (value!201084 List!41041)) (DedentValue!6562 (value!201085 List!41041)) (NewLineValue!6562 (value!201086 List!41041)) (IntegerValue!19686 (value!201087 (_ BitVec 32)) (text!46381 List!41041)) (IntegerValue!19687 (value!201088 Int) (text!46382 List!41041)) (Times!6562) (Or!6562) (Equal!6562) (Minus!6562) (Broken!32814 (value!201089 List!41041)) (And!6562) (Div!6562) (LessEqual!6562) (Mod!6562) (Concat!17799) (Not!6562) (Plus!6562) (SpaceValue!6562 (value!201090 List!41041)) (IntegerValue!19688 (value!201091 Int) (text!46383 List!41041)) (StringLiteralValue!19687 (text!46384 List!41041)) (FloatLiteralValue!13125 (text!46385 List!41041)) (BytesLiteralValue!6562 (value!201092 List!41041)) (CommentValue!13125 (value!201093 List!41041)) (StringLiteralValue!19688 (value!201094 List!41041)) (ErrorTokenValue!6562 (msg!6623 List!41041)) )
))
(declare-datatypes ((Regex!11237 0))(
  ( (ElementMatch!11237 (c!671970 C!22660)) (Concat!17800 (regOne!22986 Regex!11237) (regTwo!22986 Regex!11237)) (EmptyExpr!11237) (Star!11237 (reg!11566 Regex!11237)) (EmptyLang!11237) (Union!11237 (regOne!22987 Regex!11237) (regTwo!22987 Regex!11237)) )
))
(declare-datatypes ((String!46528 0))(
  ( (String!46529 (value!201095 String)) )
))
(declare-datatypes ((IArray!25091 0))(
  ( (IArray!25092 (innerList!12603 List!41040)) )
))
(declare-datatypes ((Conc!12543 0))(
  ( (Node!12543 (left!31523 Conc!12543) (right!31853 Conc!12543) (csize!25316 Int) (cheight!12754 Int)) (Leaf!19416 (xs!15849 IArray!25091) (csize!25317 Int)) (Empty!12543) )
))
(declare-datatypes ((BalanceConc!24680 0))(
  ( (BalanceConc!24681 (c!671971 Conc!12543)) )
))
(declare-datatypes ((TokenValueInjection!12552 0))(
  ( (TokenValueInjection!12553 (toValue!8760 Int) (toChars!8619 Int)) )
))
(declare-datatypes ((Rule!12464 0))(
  ( (Rule!12465 (regex!6332 Regex!11237) (tag!7192 String!46528) (isSeparator!6332 Bool) (transformation!6332 TokenValueInjection!12552)) )
))
(declare-datatypes ((Token!11802 0))(
  ( (Token!11803 (value!201096 TokenValue!6562) (rule!9198 Rule!12464) (size!30774 Int) (originalCharacters!6932 List!41040)) )
))
(declare-datatypes ((tuple2!40118 0))(
  ( (tuple2!40119 (_1!23193 Token!11802) (_2!23193 List!41040)) )
))
(declare-datatypes ((Option!8750 0))(
  ( (None!8749) (Some!8749 (v!39047 tuple2!40118)) )
))
(declare-fun lt!1340987 () Option!8750)

(assert (=> b!3859341 (= lt!1340972 (size!30773 (_2!23193 (v!39047 lt!1340987))))))

(declare-fun b!3859342 () Bool)

(declare-fun res!1562586 () Bool)

(declare-fun e!2385883 () Bool)

(assert (=> b!3859342 (=> res!1562586 e!2385883)))

(declare-datatypes ((List!41042 0))(
  ( (Nil!40918) (Cons!40918 (h!46338 Token!11802) (t!313245 List!41042)) )
))
(declare-fun prefixTokens!80 () List!41042)

(declare-fun lt!1340985 () Token!11802)

(assert (=> b!3859342 (= res!1562586 (or (not (= prefixTokens!80 (Cons!40918 lt!1340985 Nil!40918))) (not (= (_1!23193 (v!39047 lt!1340987)) lt!1340985))))))

(declare-fun b!3859343 () Bool)

(declare-fun e!2385861 () Bool)

(declare-fun tp!1169920 () Bool)

(declare-fun e!2385882 () Bool)

(declare-fun inv!55078 (Token!11802) Bool)

(assert (=> b!3859343 (= e!2385861 (and (inv!55078 (h!46338 prefixTokens!80)) e!2385882 tp!1169920))))

(declare-fun b!3859344 () Bool)

(declare-fun e!2385865 () Bool)

(declare-fun e!2385873 () Bool)

(assert (=> b!3859344 (= e!2385865 e!2385873)))

(declare-fun res!1562584 () Bool)

(assert (=> b!3859344 (=> (not res!1562584) (not e!2385873))))

(declare-fun suffixResult!91 () List!41040)

(declare-datatypes ((tuple2!40120 0))(
  ( (tuple2!40121 (_1!23194 List!41042) (_2!23194 List!41040)) )
))
(declare-fun lt!1340988 () tuple2!40120)

(declare-fun lt!1340984 () List!41042)

(assert (=> b!3859344 (= res!1562584 (= lt!1340988 (tuple2!40121 lt!1340984 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5921 0))(
  ( (LexerInterfaceExt!5918 (__x!25342 Int)) (Lexer!5919) )
))
(declare-fun thiss!20629 () LexerInterface!5921)

(declare-fun lt!1340976 () List!41040)

(declare-datatypes ((List!41043 0))(
  ( (Nil!40919) (Cons!40919 (h!46339 Rule!12464) (t!313246 List!41043)) )
))
(declare-fun rules!2768 () List!41043)

(declare-fun lexList!1689 (LexerInterface!5921 List!41043 List!41040) tuple2!40120)

(assert (=> b!3859344 (= lt!1340988 (lexList!1689 thiss!20629 rules!2768 lt!1340976))))

(declare-fun suffixTokens!72 () List!41042)

(declare-fun ++!10421 (List!41042 List!41042) List!41042)

(assert (=> b!3859344 (= lt!1340984 (++!10421 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41040)

(declare-fun ++!10422 (List!41040 List!41040) List!41040)

(assert (=> b!3859344 (= lt!1340976 (++!10422 prefix!426 suffix!1176))))

(declare-fun e!2385858 () Bool)

(assert (=> b!3859345 (= e!2385858 (and tp!1169925 tp!1169923))))

(declare-fun b!3859346 () Bool)

(declare-fun e!2385880 () Bool)

(assert (=> b!3859346 (= e!2385880 true)))

(declare-fun lt!1340973 () tuple2!40120)

(declare-fun lt!1340981 () tuple2!40118)

(assert (=> b!3859346 (= lt!1340973 (lexList!1689 thiss!20629 rules!2768 (_2!23193 lt!1340981)))))

(declare-fun b!3859347 () Bool)

(assert (=> b!3859347 (= e!2385883 e!2385880)))

(declare-fun res!1562597 () Bool)

(assert (=> b!3859347 (=> res!1562597 e!2385880)))

(declare-fun lt!1340968 () Int)

(assert (=> b!3859347 (= res!1562597 (not (= lt!1340972 lt!1340968)))))

(assert (=> b!3859347 (= (_2!23193 (v!39047 lt!1340987)) (_2!23193 lt!1340981))))

(declare-datatypes ((Unit!58578 0))(
  ( (Unit!58579) )
))
(declare-fun lt!1340974 () Unit!58578)

(declare-fun lt!1340971 () List!41040)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!424 (List!41040 List!41040 List!41040 List!41040) Unit!58578)

(assert (=> b!3859347 (= lt!1340974 (lemmaConcatSameAndSameSizesThenSameLists!424 lt!1340971 (_2!23193 (v!39047 lt!1340987)) lt!1340971 (_2!23193 lt!1340981)))))

(declare-fun b!3859348 () Bool)

(declare-fun e!2385866 () Bool)

(declare-fun e!2385872 () Bool)

(declare-fun tp!1169929 () Bool)

(assert (=> b!3859348 (= e!2385866 (and e!2385872 tp!1169929))))

(declare-fun b!3859349 () Bool)

(declare-fun res!1562587 () Bool)

(assert (=> b!3859349 (=> (not res!1562587) (not e!2385865))))

(declare-fun isEmpty!24236 (List!41042) Bool)

(assert (=> b!3859349 (= res!1562587 (not (isEmpty!24236 prefixTokens!80)))))

(declare-fun b!3859350 () Bool)

(declare-fun res!1562596 () Bool)

(assert (=> b!3859350 (=> (not res!1562596) (not e!2385873))))

(assert (=> b!3859350 (= res!1562596 (= (lexList!1689 thiss!20629 rules!2768 suffix!1176) (tuple2!40121 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3859351 () Bool)

(declare-fun res!1562591 () Bool)

(assert (=> b!3859351 (=> (not res!1562591) (not e!2385865))))

(declare-fun isEmpty!24237 (List!41043) Bool)

(assert (=> b!3859351 (= res!1562591 (not (isEmpty!24237 rules!2768)))))

(declare-fun e!2385860 () Bool)

(assert (=> b!3859352 (= e!2385860 (and tp!1169933 tp!1169930))))

(declare-fun b!3859353 () Bool)

(declare-fun e!2385870 () Bool)

(assert (=> b!3859353 (= e!2385870 (not e!2385874))))

(declare-fun res!1562593 () Bool)

(assert (=> b!3859353 (=> res!1562593 e!2385874)))

(declare-fun lt!1340967 () List!41040)

(assert (=> b!3859353 (= res!1562593 (not (= lt!1340967 lt!1340976)))))

(declare-fun lt!1340982 () tuple2!40120)

(assert (=> b!3859353 (= lt!1340982 (lexList!1689 thiss!20629 rules!2768 (_2!23193 (v!39047 lt!1340987))))))

(declare-fun lt!1340970 () List!41040)

(declare-fun lt!1340989 () TokenValue!6562)

(declare-fun lt!1340966 () Int)

(assert (=> b!3859353 (and (= (size!30774 (_1!23193 (v!39047 lt!1340987))) lt!1340966) (= (originalCharacters!6932 (_1!23193 (v!39047 lt!1340987))) lt!1340971) (= (v!39047 lt!1340987) (tuple2!40119 (Token!11803 lt!1340989 (rule!9198 (_1!23193 (v!39047 lt!1340987))) lt!1340966 lt!1340971) lt!1340970)))))

(assert (=> b!3859353 (= lt!1340966 (size!30773 lt!1340971))))

(declare-fun e!2385859 () Bool)

(assert (=> b!3859353 e!2385859))

(declare-fun res!1562601 () Bool)

(assert (=> b!3859353 (=> (not res!1562601) (not e!2385859))))

(assert (=> b!3859353 (= res!1562601 (= (value!201096 (_1!23193 (v!39047 lt!1340987))) lt!1340989))))

(declare-fun apply!9575 (TokenValueInjection!12552 BalanceConc!24680) TokenValue!6562)

(declare-fun seqFromList!4603 (List!41040) BalanceConc!24680)

(assert (=> b!3859353 (= lt!1340989 (apply!9575 (transformation!6332 (rule!9198 (_1!23193 (v!39047 lt!1340987)))) (seqFromList!4603 lt!1340971)))))

(assert (=> b!3859353 (= (_2!23193 (v!39047 lt!1340987)) lt!1340970)))

(declare-fun lt!1340978 () Unit!58578)

(declare-fun lemmaSamePrefixThenSameSuffix!1652 (List!41040 List!41040 List!41040 List!41040 List!41040) Unit!58578)

(assert (=> b!3859353 (= lt!1340978 (lemmaSamePrefixThenSameSuffix!1652 lt!1340971 (_2!23193 (v!39047 lt!1340987)) lt!1340971 lt!1340970 lt!1340976))))

(declare-fun getSuffix!1886 (List!41040 List!41040) List!41040)

(assert (=> b!3859353 (= lt!1340970 (getSuffix!1886 lt!1340976 lt!1340971))))

(declare-fun isPrefix!3431 (List!41040 List!41040) Bool)

(assert (=> b!3859353 (isPrefix!3431 lt!1340971 lt!1340967)))

(assert (=> b!3859353 (= lt!1340967 (++!10422 lt!1340971 (_2!23193 (v!39047 lt!1340987))))))

(declare-fun lt!1340977 () Unit!58578)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2294 (List!41040 List!41040) Unit!58578)

(assert (=> b!3859353 (= lt!1340977 (lemmaConcatTwoListThenFirstIsPrefix!2294 lt!1340971 (_2!23193 (v!39047 lt!1340987))))))

(declare-fun list!15230 (BalanceConc!24680) List!41040)

(declare-fun charsOf!4160 (Token!11802) BalanceConc!24680)

(assert (=> b!3859353 (= lt!1340971 (list!15230 (charsOf!4160 (_1!23193 (v!39047 lt!1340987)))))))

(declare-fun ruleValid!2284 (LexerInterface!5921 Rule!12464) Bool)

(assert (=> b!3859353 (ruleValid!2284 thiss!20629 (rule!9198 (_1!23193 (v!39047 lt!1340987))))))

(declare-fun lt!1340975 () Unit!58578)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1364 (LexerInterface!5921 Rule!12464 List!41043) Unit!58578)

(assert (=> b!3859353 (= lt!1340975 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1364 thiss!20629 (rule!9198 (_1!23193 (v!39047 lt!1340987))) rules!2768))))

(declare-fun lt!1340969 () Unit!58578)

(declare-fun lemmaCharactersSize!993 (Token!11802) Unit!58578)

(assert (=> b!3859353 (= lt!1340969 (lemmaCharactersSize!993 (_1!23193 (v!39047 lt!1340987))))))

(declare-fun b!3859354 () Bool)

(assert (=> b!3859354 (= e!2385873 e!2385870)))

(declare-fun res!1562602 () Bool)

(assert (=> b!3859354 (=> (not res!1562602) (not e!2385870))))

(get-info :version)

(assert (=> b!3859354 (= res!1562602 ((_ is Some!8749) lt!1340987))))

(declare-fun maxPrefix!3225 (LexerInterface!5921 List!41043 List!41040) Option!8750)

(assert (=> b!3859354 (= lt!1340987 (maxPrefix!3225 thiss!20629 rules!2768 lt!1340976))))

(declare-fun b!3859355 () Bool)

(declare-fun res!1562592 () Bool)

(assert (=> b!3859355 (=> (not res!1562592) (not e!2385865))))

(declare-fun isEmpty!24238 (List!41040) Bool)

(assert (=> b!3859355 (= res!1562592 (not (isEmpty!24238 prefix!426)))))

(declare-fun b!3859356 () Bool)

(declare-fun res!1562604 () Bool)

(assert (=> b!3859356 (=> res!1562604 e!2385874)))

(assert (=> b!3859356 (= res!1562604 (not (= lt!1340988 (tuple2!40121 (++!10421 (Cons!40918 (_1!23193 (v!39047 lt!1340987)) Nil!40918) (_1!23194 lt!1340982)) (_2!23194 lt!1340982)))))))

(declare-fun b!3859357 () Bool)

(declare-fun e!2385884 () Bool)

(declare-fun e!2385862 () Bool)

(assert (=> b!3859357 (= e!2385884 e!2385862)))

(declare-fun res!1562599 () Bool)

(assert (=> b!3859357 (=> res!1562599 e!2385862)))

(declare-fun matchR!5384 (Regex!11237 List!41040) Bool)

(assert (=> b!3859357 (= res!1562599 (not (matchR!5384 (regex!6332 (rule!9198 (_1!23193 (v!39047 lt!1340987)))) lt!1340971)))))

(declare-fun maxPrefixOneRule!2307 (LexerInterface!5921 Rule!12464 List!41040) Option!8750)

(assert (=> b!3859357 (= (maxPrefixOneRule!2307 thiss!20629 (rule!9198 (_1!23193 (v!39047 lt!1340987))) lt!1340976) (Some!8749 (tuple2!40119 (Token!11803 lt!1340989 (rule!9198 (_1!23193 (v!39047 lt!1340987))) lt!1340966 lt!1340971) (_2!23193 (v!39047 lt!1340987)))))))

(declare-fun lt!1340983 () Unit!58578)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1205 (LexerInterface!5921 List!41043 List!41040 List!41040 List!41040 Rule!12464) Unit!58578)

(assert (=> b!3859357 (= lt!1340983 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1205 thiss!20629 rules!2768 lt!1340971 lt!1340976 (_2!23193 (v!39047 lt!1340987)) (rule!9198 (_1!23193 (v!39047 lt!1340987)))))))

(declare-fun b!3859358 () Bool)

(declare-fun e!2385871 () Bool)

(declare-fun tp_is_empty!19445 () Bool)

(declare-fun tp!1169931 () Bool)

(assert (=> b!3859358 (= e!2385871 (and tp_is_empty!19445 tp!1169931))))

(declare-fun b!3859359 () Bool)

(declare-fun e!2385868 () Bool)

(assert (=> b!3859359 (= e!2385862 e!2385868)))

(declare-fun res!1562594 () Bool)

(assert (=> b!3859359 (=> res!1562594 e!2385868)))

(assert (=> b!3859359 (= res!1562594 (not (= (_1!23193 lt!1340981) lt!1340985)))))

(declare-fun head!8134 (List!41042) Token!11802)

(assert (=> b!3859359 (= lt!1340985 (head!8134 prefixTokens!80))))

(declare-fun get!13538 (Option!8750) tuple2!40118)

(assert (=> b!3859359 (= lt!1340981 (get!13538 lt!1340987))))

(declare-fun b!3859360 () Bool)

(declare-fun e!2385869 () Bool)

(declare-fun e!2385875 () Bool)

(declare-fun tp!1169928 () Bool)

(assert (=> b!3859360 (= e!2385875 (and (inv!55078 (h!46338 suffixTokens!72)) e!2385869 tp!1169928))))

(declare-fun b!3859361 () Bool)

(declare-fun res!1562600 () Bool)

(assert (=> b!3859361 (=> res!1562600 e!2385874)))

(assert (=> b!3859361 (= res!1562600 (or (not (= lt!1340982 (tuple2!40121 (_1!23194 lt!1340982) (_2!23194 lt!1340982)))) (= (_2!23193 (v!39047 lt!1340987)) suffix!1176)))))

(declare-fun b!3859362 () Bool)

(declare-fun e!2385879 () Bool)

(assert (=> b!3859362 (= e!2385879 e!2385884)))

(declare-fun res!1562585 () Bool)

(assert (=> b!3859362 (=> res!1562585 e!2385884)))

(declare-fun lt!1340980 () Int)

(declare-fun lt!1340979 () Int)

(assert (=> b!3859362 (= res!1562585 (or (not (= (+ lt!1340979 lt!1340986) lt!1340980)) (<= lt!1340966 lt!1340979)))))

(assert (=> b!3859362 (= lt!1340979 (size!30773 prefix!426))))

(declare-fun b!3859363 () Bool)

(declare-fun res!1562603 () Bool)

(assert (=> b!3859363 (=> res!1562603 e!2385883)))

(assert (=> b!3859363 (= res!1562603 (not (= lt!1340967 (++!10422 lt!1340971 (_2!23193 lt!1340981)))))))

(declare-fun b!3859364 () Bool)

(declare-fun res!1562583 () Bool)

(assert (=> b!3859364 (=> res!1562583 e!2385883)))

(declare-fun tail!5845 (List!41042) List!41042)

(assert (=> b!3859364 (= res!1562583 (not (isEmpty!24236 (tail!5845 prefixTokens!80))))))

(declare-fun e!2385886 () Bool)

(assert (=> b!3859365 (= e!2385886 (and tp!1169924 tp!1169926))))

(declare-fun b!3859366 () Bool)

(assert (=> b!3859366 (= e!2385868 e!2385883)))

(declare-fun res!1562595 () Bool)

(assert (=> b!3859366 (=> res!1562595 e!2385883)))

(assert (=> b!3859366 (= res!1562595 (>= lt!1340968 lt!1340986))))

(assert (=> b!3859366 (= lt!1340968 (size!30773 (_2!23193 lt!1340981)))))

(declare-fun b!3859367 () Bool)

(assert (=> b!3859367 (= e!2385881 e!2385879)))

(declare-fun res!1562590 () Bool)

(assert (=> b!3859367 (=> res!1562590 e!2385879)))

(assert (=> b!3859367 (= res!1562590 (not (= (+ lt!1340966 lt!1340972) lt!1340980)))))

(assert (=> b!3859367 (= lt!1340980 (size!30773 lt!1340976))))

(declare-fun b!3859368 () Bool)

(declare-fun e!2385887 () Bool)

(declare-fun tp!1169927 () Bool)

(declare-fun inv!55075 (String!46528) Bool)

(declare-fun inv!55079 (TokenValueInjection!12552) Bool)

(assert (=> b!3859368 (= e!2385887 (and tp!1169927 (inv!55075 (tag!7192 (rule!9198 (h!46338 prefixTokens!80)))) (inv!55079 (transformation!6332 (rule!9198 (h!46338 prefixTokens!80)))) e!2385858))))

(declare-fun b!3859369 () Bool)

(declare-fun tp!1169921 () Bool)

(declare-fun e!2385867 () Bool)

(assert (=> b!3859369 (= e!2385867 (and tp!1169921 (inv!55075 (tag!7192 (rule!9198 (h!46338 suffixTokens!72)))) (inv!55079 (transformation!6332 (rule!9198 (h!46338 suffixTokens!72)))) e!2385886))))

(declare-fun b!3859370 () Bool)

(assert (=> b!3859370 (= e!2385859 (= (size!30774 (_1!23193 (v!39047 lt!1340987))) (size!30773 (originalCharacters!6932 (_1!23193 (v!39047 lt!1340987))))))))

(declare-fun b!3859371 () Bool)

(declare-fun e!2385877 () Bool)

(declare-fun tp!1169919 () Bool)

(assert (=> b!3859371 (= e!2385877 (and tp_is_empty!19445 tp!1169919))))

(declare-fun res!1562588 () Bool)

(assert (=> start!361804 (=> (not res!1562588) (not e!2385865))))

(assert (=> start!361804 (= res!1562588 ((_ is Lexer!5919) thiss!20629))))

(assert (=> start!361804 e!2385865))

(assert (=> start!361804 e!2385871))

(assert (=> start!361804 true))

(assert (=> start!361804 e!2385877))

(assert (=> start!361804 e!2385866))

(assert (=> start!361804 e!2385861))

(assert (=> start!361804 e!2385875))

(declare-fun e!2385864 () Bool)

(assert (=> start!361804 e!2385864))

(declare-fun b!3859372 () Bool)

(declare-fun res!1562589 () Bool)

(assert (=> b!3859372 (=> (not res!1562589) (not e!2385865))))

(declare-fun rulesInvariant!5264 (LexerInterface!5921 List!41043) Bool)

(assert (=> b!3859372 (= res!1562589 (rulesInvariant!5264 thiss!20629 rules!2768))))

(declare-fun tp!1169934 () Bool)

(declare-fun b!3859373 () Bool)

(declare-fun inv!21 (TokenValue!6562) Bool)

(assert (=> b!3859373 (= e!2385869 (and (inv!21 (value!201096 (h!46338 suffixTokens!72))) e!2385867 tp!1169934))))

(declare-fun b!3859374 () Bool)

(declare-fun tp!1169918 () Bool)

(assert (=> b!3859374 (= e!2385872 (and tp!1169918 (inv!55075 (tag!7192 (h!46339 rules!2768))) (inv!55079 (transformation!6332 (h!46339 rules!2768))) e!2385860))))

(declare-fun b!3859375 () Bool)

(declare-fun tp!1169932 () Bool)

(assert (=> b!3859375 (= e!2385864 (and tp_is_empty!19445 tp!1169932))))

(declare-fun tp!1169922 () Bool)

(declare-fun b!3859376 () Bool)

(assert (=> b!3859376 (= e!2385882 (and (inv!21 (value!201096 (h!46338 prefixTokens!80))) e!2385887 tp!1169922))))

(assert (= (and start!361804 res!1562588) b!3859351))

(assert (= (and b!3859351 res!1562591) b!3859372))

(assert (= (and b!3859372 res!1562589) b!3859349))

(assert (= (and b!3859349 res!1562587) b!3859355))

(assert (= (and b!3859355 res!1562592) b!3859344))

(assert (= (and b!3859344 res!1562584) b!3859350))

(assert (= (and b!3859350 res!1562596) b!3859354))

(assert (= (and b!3859354 res!1562602) b!3859353))

(assert (= (and b!3859353 res!1562601) b!3859370))

(assert (= (and b!3859353 (not res!1562593)) b!3859356))

(assert (= (and b!3859356 (not res!1562604)) b!3859361))

(assert (= (and b!3859361 (not res!1562600)) b!3859341))

(assert (= (and b!3859341 (not res!1562598)) b!3859367))

(assert (= (and b!3859367 (not res!1562590)) b!3859362))

(assert (= (and b!3859362 (not res!1562585)) b!3859357))

(assert (= (and b!3859357 (not res!1562599)) b!3859359))

(assert (= (and b!3859359 (not res!1562594)) b!3859366))

(assert (= (and b!3859366 (not res!1562595)) b!3859364))

(assert (= (and b!3859364 (not res!1562583)) b!3859342))

(assert (= (and b!3859342 (not res!1562586)) b!3859363))

(assert (= (and b!3859363 (not res!1562603)) b!3859347))

(assert (= (and b!3859347 (not res!1562597)) b!3859346))

(assert (= (and start!361804 ((_ is Cons!40916) suffixResult!91)) b!3859358))

(assert (= (and start!361804 ((_ is Cons!40916) suffix!1176)) b!3859371))

(assert (= b!3859374 b!3859352))

(assert (= b!3859348 b!3859374))

(assert (= (and start!361804 ((_ is Cons!40919) rules!2768)) b!3859348))

(assert (= b!3859368 b!3859345))

(assert (= b!3859376 b!3859368))

(assert (= b!3859343 b!3859376))

(assert (= (and start!361804 ((_ is Cons!40918) prefixTokens!80)) b!3859343))

(assert (= b!3859369 b!3859365))

(assert (= b!3859373 b!3859369))

(assert (= b!3859360 b!3859373))

(assert (= (and start!361804 ((_ is Cons!40918) suffixTokens!72)) b!3859360))

(assert (= (and start!361804 ((_ is Cons!40916) prefix!426)) b!3859375))

(declare-fun m!4414837 () Bool)

(assert (=> b!3859362 m!4414837))

(declare-fun m!4414839 () Bool)

(assert (=> b!3859343 m!4414839))

(declare-fun m!4414841 () Bool)

(assert (=> b!3859368 m!4414841))

(declare-fun m!4414843 () Bool)

(assert (=> b!3859368 m!4414843))

(declare-fun m!4414845 () Bool)

(assert (=> b!3859373 m!4414845))

(declare-fun m!4414847 () Bool)

(assert (=> b!3859344 m!4414847))

(declare-fun m!4414849 () Bool)

(assert (=> b!3859344 m!4414849))

(declare-fun m!4414851 () Bool)

(assert (=> b!3859344 m!4414851))

(declare-fun m!4414853 () Bool)

(assert (=> b!3859349 m!4414853))

(declare-fun m!4414855 () Bool)

(assert (=> b!3859363 m!4414855))

(declare-fun m!4414857 () Bool)

(assert (=> b!3859357 m!4414857))

(declare-fun m!4414859 () Bool)

(assert (=> b!3859357 m!4414859))

(declare-fun m!4414861 () Bool)

(assert (=> b!3859357 m!4414861))

(declare-fun m!4414863 () Bool)

(assert (=> b!3859359 m!4414863))

(declare-fun m!4414865 () Bool)

(assert (=> b!3859359 m!4414865))

(declare-fun m!4414867 () Bool)

(assert (=> b!3859376 m!4414867))

(declare-fun m!4414869 () Bool)

(assert (=> b!3859353 m!4414869))

(declare-fun m!4414871 () Bool)

(assert (=> b!3859353 m!4414871))

(declare-fun m!4414873 () Bool)

(assert (=> b!3859353 m!4414873))

(assert (=> b!3859353 m!4414869))

(declare-fun m!4414875 () Bool)

(assert (=> b!3859353 m!4414875))

(declare-fun m!4414877 () Bool)

(assert (=> b!3859353 m!4414877))

(declare-fun m!4414879 () Bool)

(assert (=> b!3859353 m!4414879))

(declare-fun m!4414881 () Bool)

(assert (=> b!3859353 m!4414881))

(declare-fun m!4414883 () Bool)

(assert (=> b!3859353 m!4414883))

(declare-fun m!4414885 () Bool)

(assert (=> b!3859353 m!4414885))

(declare-fun m!4414887 () Bool)

(assert (=> b!3859353 m!4414887))

(assert (=> b!3859353 m!4414883))

(declare-fun m!4414889 () Bool)

(assert (=> b!3859353 m!4414889))

(declare-fun m!4414891 () Bool)

(assert (=> b!3859353 m!4414891))

(declare-fun m!4414893 () Bool)

(assert (=> b!3859353 m!4414893))

(declare-fun m!4414895 () Bool)

(assert (=> b!3859353 m!4414895))

(declare-fun m!4414897 () Bool)

(assert (=> b!3859347 m!4414897))

(declare-fun m!4414899 () Bool)

(assert (=> b!3859355 m!4414899))

(declare-fun m!4414901 () Bool)

(assert (=> b!3859341 m!4414901))

(declare-fun m!4414903 () Bool)

(assert (=> b!3859341 m!4414903))

(declare-fun m!4414905 () Bool)

(assert (=> b!3859366 m!4414905))

(declare-fun m!4414907 () Bool)

(assert (=> b!3859372 m!4414907))

(declare-fun m!4414909 () Bool)

(assert (=> b!3859369 m!4414909))

(declare-fun m!4414911 () Bool)

(assert (=> b!3859369 m!4414911))

(declare-fun m!4414913 () Bool)

(assert (=> b!3859374 m!4414913))

(declare-fun m!4414915 () Bool)

(assert (=> b!3859374 m!4414915))

(declare-fun m!4414917 () Bool)

(assert (=> b!3859370 m!4414917))

(declare-fun m!4414919 () Bool)

(assert (=> b!3859354 m!4414919))

(declare-fun m!4414921 () Bool)

(assert (=> b!3859350 m!4414921))

(declare-fun m!4414923 () Bool)

(assert (=> b!3859360 m!4414923))

(declare-fun m!4414925 () Bool)

(assert (=> b!3859346 m!4414925))

(declare-fun m!4414927 () Bool)

(assert (=> b!3859351 m!4414927))

(declare-fun m!4414929 () Bool)

(assert (=> b!3859356 m!4414929))

(declare-fun m!4414931 () Bool)

(assert (=> b!3859367 m!4414931))

(declare-fun m!4414933 () Bool)

(assert (=> b!3859364 m!4414933))

(assert (=> b!3859364 m!4414933))

(declare-fun m!4414935 () Bool)

(assert (=> b!3859364 m!4414935))

(check-sat (not b!3859374) tp_is_empty!19445 (not b_next!104427) (not b!3859372) (not b!3859356) (not b!3859376) (not b!3859359) (not b!3859347) (not b_next!104431) b_and!288847 (not b!3859343) (not b!3859348) (not b!3859370) (not b!3859354) (not b!3859362) (not b!3859367) (not b!3859369) (not b_next!104425) (not b!3859363) b_and!288851 b_and!288845 (not b!3859364) (not b!3859355) (not b_next!104423) (not b!3859360) (not b!3859366) b_and!288843 (not b!3859375) (not b!3859373) (not b!3859368) (not b!3859350) (not b!3859349) (not b!3859346) (not b!3859341) (not b!3859357) (not b_next!104429) (not b!3859353) b_and!288853 (not b!3859358) (not b!3859371) b_and!288849 (not b!3859344) (not b_next!104421) (not b!3859351))
(check-sat (not b_next!104425) (not b_next!104423) (not b_next!104427) b_and!288843 (not b_next!104431) (not b_next!104429) b_and!288847 b_and!288853 b_and!288849 (not b_next!104421) b_and!288851 b_and!288845)
