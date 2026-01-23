; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366724 () Bool)

(assert start!366724)

(declare-fun b!3914075 () Bool)

(declare-fun b_free!106229 () Bool)

(declare-fun b_next!106933 () Bool)

(assert (=> b!3914075 (= b_free!106229 (not b_next!106933))))

(declare-fun tp!1191408 () Bool)

(declare-fun b_and!297923 () Bool)

(assert (=> b!3914075 (= tp!1191408 b_and!297923)))

(declare-fun b_free!106231 () Bool)

(declare-fun b_next!106935 () Bool)

(assert (=> b!3914075 (= b_free!106231 (not b_next!106935))))

(declare-fun tp!1191412 () Bool)

(declare-fun b_and!297925 () Bool)

(assert (=> b!3914075 (= tp!1191412 b_and!297925)))

(declare-fun b!3914064 () Bool)

(declare-fun b_free!106233 () Bool)

(declare-fun b_next!106937 () Bool)

(assert (=> b!3914064 (= b_free!106233 (not b_next!106937))))

(declare-fun tp!1191404 () Bool)

(declare-fun b_and!297927 () Bool)

(assert (=> b!3914064 (= tp!1191404 b_and!297927)))

(declare-fun b_free!106235 () Bool)

(declare-fun b_next!106939 () Bool)

(assert (=> b!3914064 (= b_free!106235 (not b_next!106939))))

(declare-fun tp!1191398 () Bool)

(declare-fun b_and!297929 () Bool)

(assert (=> b!3914064 (= tp!1191398 b_and!297929)))

(declare-fun b!3914087 () Bool)

(declare-fun b_free!106237 () Bool)

(declare-fun b_next!106941 () Bool)

(assert (=> b!3914087 (= b_free!106237 (not b_next!106941))))

(declare-fun tp!1191411 () Bool)

(declare-fun b_and!297931 () Bool)

(assert (=> b!3914087 (= tp!1191411 b_and!297931)))

(declare-fun b_free!106239 () Bool)

(declare-fun b_next!106943 () Bool)

(assert (=> b!3914087 (= b_free!106239 (not b_next!106943))))

(declare-fun tp!1191403 () Bool)

(declare-fun b_and!297933 () Bool)

(assert (=> b!3914087 (= tp!1191403 b_and!297933)))

(declare-fun b!3914058 () Bool)

(declare-fun e!2419975 () Bool)

(declare-fun e!2419978 () Bool)

(assert (=> b!3914058 (= e!2419975 e!2419978)))

(declare-fun res!1583122 () Bool)

(assert (=> b!3914058 (=> res!1583122 e!2419978)))

(declare-datatypes ((C!22912 0))(
  ( (C!22913 (val!13550 Int)) )
))
(declare-datatypes ((List!41603 0))(
  ( (Nil!41479) (Cons!41479 (h!46899 C!22912) (t!323512 List!41603)) )
))
(declare-datatypes ((IArray!25343 0))(
  ( (IArray!25344 (innerList!12729 List!41603)) )
))
(declare-datatypes ((Conc!12669 0))(
  ( (Node!12669 (left!31744 Conc!12669) (right!32074 Conc!12669) (csize!25568 Int) (cheight!12880 Int)) (Leaf!19605 (xs!15975 IArray!25343) (csize!25569 Int)) (Empty!12669) )
))
(declare-datatypes ((BalanceConc!24932 0))(
  ( (BalanceConc!24933 (c!680326 Conc!12669)) )
))
(declare-datatypes ((List!41604 0))(
  ( (Nil!41480) (Cons!41480 (h!46900 (_ BitVec 16)) (t!323513 List!41604)) )
))
(declare-datatypes ((TokenValue!6688 0))(
  ( (FloatLiteralValue!13376 (text!47261 List!41604)) (TokenValueExt!6687 (__x!25593 Int)) (Broken!33440 (value!204661 List!41604)) (Object!6811) (End!6688) (Def!6688) (Underscore!6688) (Match!6688) (Else!6688) (Error!6688) (Case!6688) (If!6688) (Extends!6688) (Abstract!6688) (Class!6688) (Val!6688) (DelimiterValue!13376 (del!6748 List!41604)) (KeywordValue!6694 (value!204662 List!41604)) (CommentValue!13376 (value!204663 List!41604)) (WhitespaceValue!13376 (value!204664 List!41604)) (IndentationValue!6688 (value!204665 List!41604)) (String!47157) (Int32!6688) (Broken!33441 (value!204666 List!41604)) (Boolean!6689) (Unit!59620) (OperatorValue!6691 (op!6748 List!41604)) (IdentifierValue!13376 (value!204667 List!41604)) (IdentifierValue!13377 (value!204668 List!41604)) (WhitespaceValue!13377 (value!204669 List!41604)) (True!13376) (False!13376) (Broken!33442 (value!204670 List!41604)) (Broken!33443 (value!204671 List!41604)) (True!13377) (RightBrace!6688) (RightBracket!6688) (Colon!6688) (Null!6688) (Comma!6688) (LeftBracket!6688) (False!13377) (LeftBrace!6688) (ImaginaryLiteralValue!6688 (text!47262 List!41604)) (StringLiteralValue!20064 (value!204672 List!41604)) (EOFValue!6688 (value!204673 List!41604)) (IdentValue!6688 (value!204674 List!41604)) (DelimiterValue!13377 (value!204675 List!41604)) (DedentValue!6688 (value!204676 List!41604)) (NewLineValue!6688 (value!204677 List!41604)) (IntegerValue!20064 (value!204678 (_ BitVec 32)) (text!47263 List!41604)) (IntegerValue!20065 (value!204679 Int) (text!47264 List!41604)) (Times!6688) (Or!6688) (Equal!6688) (Minus!6688) (Broken!33444 (value!204680 List!41604)) (And!6688) (Div!6688) (LessEqual!6688) (Mod!6688) (Concat!18051) (Not!6688) (Plus!6688) (SpaceValue!6688 (value!204681 List!41604)) (IntegerValue!20066 (value!204682 Int) (text!47265 List!41604)) (StringLiteralValue!20065 (text!47266 List!41604)) (FloatLiteralValue!13377 (text!47267 List!41604)) (BytesLiteralValue!6688 (value!204683 List!41604)) (CommentValue!13377 (value!204684 List!41604)) (StringLiteralValue!20066 (value!204685 List!41604)) (ErrorTokenValue!6688 (msg!6749 List!41604)) )
))
(declare-datatypes ((Regex!11363 0))(
  ( (ElementMatch!11363 (c!680327 C!22912)) (Concat!18052 (regOne!23238 Regex!11363) (regTwo!23238 Regex!11363)) (EmptyExpr!11363) (Star!11363 (reg!11692 Regex!11363)) (EmptyLang!11363) (Union!11363 (regOne!23239 Regex!11363) (regTwo!23239 Regex!11363)) )
))
(declare-datatypes ((String!47158 0))(
  ( (String!47159 (value!204686 String)) )
))
(declare-datatypes ((TokenValueInjection!12804 0))(
  ( (TokenValueInjection!12805 (toValue!8906 Int) (toChars!8765 Int)) )
))
(declare-datatypes ((Rule!12716 0))(
  ( (Rule!12717 (regex!6458 Regex!11363) (tag!7318 String!47158) (isSeparator!6458 Bool) (transformation!6458 TokenValueInjection!12804)) )
))
(declare-datatypes ((Token!12054 0))(
  ( (Token!12055 (value!204687 TokenValue!6688) (rule!9378 Rule!12716) (size!31143 Int) (originalCharacters!7058 List!41603)) )
))
(declare-datatypes ((tuple2!40730 0))(
  ( (tuple2!40731 (_1!23499 Token!12054) (_2!23499 List!41603)) )
))
(declare-fun lt!1363627 () tuple2!40730)

(declare-fun lt!1363625 () Token!12054)

(assert (=> b!3914058 (= res!1583122 (not (= (_1!23499 lt!1363627) lt!1363625)))))

(declare-datatypes ((List!41605 0))(
  ( (Nil!41481) (Cons!41481 (h!46901 Token!12054) (t!323514 List!41605)) )
))
(declare-fun prefixTokens!80 () List!41605)

(declare-fun head!8269 (List!41605) Token!12054)

(assert (=> b!3914058 (= lt!1363625 (head!8269 prefixTokens!80))))

(declare-datatypes ((Option!8878 0))(
  ( (None!8877) (Some!8877 (v!39201 tuple2!40730)) )
))
(declare-fun lt!1363624 () Option!8878)

(declare-fun get!13707 (Option!8878) tuple2!40730)

(assert (=> b!3914058 (= lt!1363627 (get!13707 lt!1363624))))

(declare-fun b!3914059 () Bool)

(declare-fun res!1583119 () Bool)

(declare-fun e!2419976 () Bool)

(assert (=> b!3914059 (=> res!1583119 e!2419976)))

(declare-fun suffix!1176 () List!41603)

(declare-datatypes ((tuple2!40732 0))(
  ( (tuple2!40733 (_1!23500 List!41605) (_2!23500 List!41603)) )
))
(declare-fun lt!1363626 () tuple2!40732)

(assert (=> b!3914059 (= res!1583119 (or (not (= lt!1363626 (tuple2!40733 (_1!23500 lt!1363626) (_2!23500 lt!1363626)))) (= (_2!23499 (v!39201 lt!1363624)) suffix!1176)))))

(declare-fun b!3914060 () Bool)

(declare-fun e!2419969 () Bool)

(declare-fun tp_is_empty!19697 () Bool)

(declare-fun tp!1191402 () Bool)

(assert (=> b!3914060 (= e!2419969 (and tp_is_empty!19697 tp!1191402))))

(declare-fun b!3914061 () Bool)

(assert (=> b!3914061 (= e!2419978 (or (not (= prefixTokens!80 (Cons!41481 lt!1363625 Nil!41481))) (= (_1!23499 (v!39201 lt!1363624)) lt!1363625)))))

(declare-fun b!3914062 () Bool)

(declare-fun res!1583124 () Bool)

(assert (=> b!3914062 (=> res!1583124 e!2419978)))

(declare-fun lt!1363630 () Int)

(declare-fun size!31144 (List!41603) Int)

(assert (=> b!3914062 (= res!1583124 (>= (size!31144 (_2!23499 lt!1363627)) lt!1363630))))

(declare-fun b!3914063 () Bool)

(declare-fun e!2419972 () Bool)

(declare-fun e!2419954 () Bool)

(assert (=> b!3914063 (= e!2419972 e!2419954)))

(declare-fun res!1583125 () Bool)

(assert (=> b!3914063 (=> (not res!1583125) (not e!2419954))))

(declare-fun suffixResult!91 () List!41603)

(declare-fun lt!1363633 () List!41605)

(declare-fun lt!1363632 () tuple2!40732)

(assert (=> b!3914063 (= res!1583125 (= lt!1363632 (tuple2!40733 lt!1363633 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6047 0))(
  ( (LexerInterfaceExt!6044 (__x!25594 Int)) (Lexer!6045) )
))
(declare-fun thiss!20629 () LexerInterface!6047)

(declare-fun lt!1363617 () List!41603)

(declare-datatypes ((List!41606 0))(
  ( (Nil!41482) (Cons!41482 (h!46902 Rule!12716) (t!323515 List!41606)) )
))
(declare-fun rules!2768 () List!41606)

(declare-fun lexList!1815 (LexerInterface!6047 List!41606 List!41603) tuple2!40732)

(assert (=> b!3914063 (= lt!1363632 (lexList!1815 thiss!20629 rules!2768 lt!1363617))))

(declare-fun suffixTokens!72 () List!41605)

(declare-fun ++!10673 (List!41605 List!41605) List!41605)

(assert (=> b!3914063 (= lt!1363633 (++!10673 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41603)

(declare-fun ++!10674 (List!41603 List!41603) List!41603)

(assert (=> b!3914063 (= lt!1363617 (++!10674 prefix!426 suffix!1176))))

(declare-fun e!2419966 () Bool)

(assert (=> b!3914064 (= e!2419966 (and tp!1191404 tp!1191398))))

(declare-fun e!2419958 () Bool)

(declare-fun b!3914065 () Bool)

(declare-fun e!2419955 () Bool)

(declare-fun tp!1191413 () Bool)

(declare-fun inv!55666 (String!47158) Bool)

(declare-fun inv!55669 (TokenValueInjection!12804) Bool)

(assert (=> b!3914065 (= e!2419955 (and tp!1191413 (inv!55666 (tag!7318 (rule!9378 (h!46901 prefixTokens!80)))) (inv!55669 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) e!2419958))))

(declare-fun tp!1191410 () Bool)

(declare-fun e!2419963 () Bool)

(declare-fun b!3914066 () Bool)

(declare-fun inv!21 (TokenValue!6688) Bool)

(assert (=> b!3914066 (= e!2419963 (and (inv!21 (value!204687 (h!46901 prefixTokens!80))) e!2419955 tp!1191410))))

(declare-fun tp!1191406 () Bool)

(declare-fun b!3914067 () Bool)

(declare-fun e!2419974 () Bool)

(declare-fun inv!55670 (Token!12054) Bool)

(assert (=> b!3914067 (= e!2419974 (and (inv!55670 (h!46901 prefixTokens!80)) e!2419963 tp!1191406))))

(declare-fun b!3914068 () Bool)

(declare-fun e!2419980 () Bool)

(assert (=> b!3914068 (= e!2419980 (not e!2419976))))

(declare-fun res!1583117 () Bool)

(assert (=> b!3914068 (=> res!1583117 e!2419976)))

(declare-fun lt!1363623 () List!41603)

(assert (=> b!3914068 (= res!1583117 (not (= lt!1363623 lt!1363617)))))

(assert (=> b!3914068 (= lt!1363626 (lexList!1815 thiss!20629 rules!2768 (_2!23499 (v!39201 lt!1363624))))))

(declare-fun lt!1363621 () List!41603)

(declare-fun lt!1363620 () List!41603)

(declare-fun lt!1363619 () Int)

(declare-fun lt!1363618 () TokenValue!6688)

(assert (=> b!3914068 (and (= (size!31143 (_1!23499 (v!39201 lt!1363624))) lt!1363619) (= (originalCharacters!7058 (_1!23499 (v!39201 lt!1363624))) lt!1363621) (= (v!39201 lt!1363624) (tuple2!40731 (Token!12055 lt!1363618 (rule!9378 (_1!23499 (v!39201 lt!1363624))) lt!1363619 lt!1363621) lt!1363620)))))

(assert (=> b!3914068 (= lt!1363619 (size!31144 lt!1363621))))

(declare-fun e!2419962 () Bool)

(assert (=> b!3914068 e!2419962))

(declare-fun res!1583132 () Bool)

(assert (=> b!3914068 (=> (not res!1583132) (not e!2419962))))

(assert (=> b!3914068 (= res!1583132 (= (value!204687 (_1!23499 (v!39201 lt!1363624))) lt!1363618))))

(declare-fun apply!9697 (TokenValueInjection!12804 BalanceConc!24932) TokenValue!6688)

(declare-fun seqFromList!4725 (List!41603) BalanceConc!24932)

(assert (=> b!3914068 (= lt!1363618 (apply!9697 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (seqFromList!4725 lt!1363621)))))

(assert (=> b!3914068 (= (_2!23499 (v!39201 lt!1363624)) lt!1363620)))

(declare-datatypes ((Unit!59621 0))(
  ( (Unit!59622) )
))
(declare-fun lt!1363636 () Unit!59621)

(declare-fun lemmaSamePrefixThenSameSuffix!1774 (List!41603 List!41603 List!41603 List!41603 List!41603) Unit!59621)

(assert (=> b!3914068 (= lt!1363636 (lemmaSamePrefixThenSameSuffix!1774 lt!1363621 (_2!23499 (v!39201 lt!1363624)) lt!1363621 lt!1363620 lt!1363617))))

(declare-fun getSuffix!2008 (List!41603 List!41603) List!41603)

(assert (=> b!3914068 (= lt!1363620 (getSuffix!2008 lt!1363617 lt!1363621))))

(declare-fun isPrefix!3553 (List!41603 List!41603) Bool)

(assert (=> b!3914068 (isPrefix!3553 lt!1363621 lt!1363623)))

(assert (=> b!3914068 (= lt!1363623 (++!10674 lt!1363621 (_2!23499 (v!39201 lt!1363624))))))

(declare-fun lt!1363622 () Unit!59621)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2416 (List!41603 List!41603) Unit!59621)

(assert (=> b!3914068 (= lt!1363622 (lemmaConcatTwoListThenFirstIsPrefix!2416 lt!1363621 (_2!23499 (v!39201 lt!1363624))))))

(declare-fun list!15421 (BalanceConc!24932) List!41603)

(declare-fun charsOf!4282 (Token!12054) BalanceConc!24932)

(assert (=> b!3914068 (= lt!1363621 (list!15421 (charsOf!4282 (_1!23499 (v!39201 lt!1363624)))))))

(declare-fun ruleValid!2406 (LexerInterface!6047 Rule!12716) Bool)

(assert (=> b!3914068 (ruleValid!2406 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))

(declare-fun lt!1363631 () Unit!59621)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1486 (LexerInterface!6047 Rule!12716 List!41606) Unit!59621)

(assert (=> b!3914068 (= lt!1363631 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1486 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))) rules!2768))))

(declare-fun lt!1363628 () Unit!59621)

(declare-fun lemmaCharactersSize!1115 (Token!12054) Unit!59621)

(assert (=> b!3914068 (= lt!1363628 (lemmaCharactersSize!1115 (_1!23499 (v!39201 lt!1363624))))))

(declare-fun b!3914069 () Bool)

(declare-fun e!2419960 () Bool)

(assert (=> b!3914069 (= e!2419976 e!2419960)))

(declare-fun res!1583126 () Bool)

(assert (=> b!3914069 (=> res!1583126 e!2419960)))

(declare-fun lt!1363634 () Int)

(assert (=> b!3914069 (= res!1583126 (>= lt!1363634 lt!1363630))))

(assert (=> b!3914069 (= lt!1363630 (size!31144 suffix!1176))))

(assert (=> b!3914069 (= lt!1363634 (size!31144 (_2!23499 (v!39201 lt!1363624))))))

(declare-fun b!3914070 () Bool)

(declare-fun res!1583118 () Bool)

(assert (=> b!3914070 (=> (not res!1583118) (not e!2419972))))

(declare-fun rulesInvariant!5390 (LexerInterface!6047 List!41606) Bool)

(assert (=> b!3914070 (= res!1583118 (rulesInvariant!5390 thiss!20629 rules!2768))))

(declare-fun b!3914071 () Bool)

(declare-fun e!2419959 () Bool)

(declare-fun e!2419970 () Bool)

(assert (=> b!3914071 (= e!2419959 e!2419970)))

(declare-fun res!1583133 () Bool)

(assert (=> b!3914071 (=> res!1583133 e!2419970)))

(declare-fun lt!1363635 () Int)

(declare-fun lt!1363637 () Int)

(assert (=> b!3914071 (= res!1583133 (or (not (= (+ lt!1363635 lt!1363630) lt!1363637)) (<= lt!1363619 lt!1363635)))))

(assert (=> b!3914071 (= lt!1363635 (size!31144 prefix!426))))

(declare-fun b!3914072 () Bool)

(declare-fun e!2419977 () Bool)

(declare-fun tp!1191401 () Bool)

(assert (=> b!3914072 (= e!2419977 (and tp_is_empty!19697 tp!1191401))))

(declare-fun b!3914073 () Bool)

(declare-fun res!1583131 () Bool)

(assert (=> b!3914073 (=> res!1583131 e!2419978)))

(declare-fun isEmpty!24680 (List!41605) Bool)

(declare-fun tail!5985 (List!41605) List!41605)

(assert (=> b!3914073 (= res!1583131 (not (isEmpty!24680 (tail!5985 prefixTokens!80))))))

(declare-fun e!2419973 () Bool)

(declare-fun e!2419956 () Bool)

(declare-fun tp!1191400 () Bool)

(declare-fun b!3914074 () Bool)

(assert (=> b!3914074 (= e!2419956 (and (inv!55670 (h!46901 suffixTokens!72)) e!2419973 tp!1191400))))

(assert (=> b!3914075 (= e!2419958 (and tp!1191408 tp!1191412))))

(declare-fun b!3914076 () Bool)

(assert (=> b!3914076 (= e!2419970 e!2419975)))

(declare-fun res!1583128 () Bool)

(assert (=> b!3914076 (=> res!1583128 e!2419975)))

(declare-fun matchR!5452 (Regex!11363 List!41603) Bool)

(assert (=> b!3914076 (= res!1583128 (not (matchR!5452 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) lt!1363621)))))

(declare-fun maxPrefixOneRule!2421 (LexerInterface!6047 Rule!12716 List!41603) Option!8878)

(assert (=> b!3914076 (= (maxPrefixOneRule!2421 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))) lt!1363617) (Some!8877 (tuple2!40731 (Token!12055 lt!1363618 (rule!9378 (_1!23499 (v!39201 lt!1363624))) lt!1363619 lt!1363621) (_2!23499 (v!39201 lt!1363624)))))))

(declare-fun lt!1363629 () Unit!59621)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1289 (LexerInterface!6047 List!41606 List!41603 List!41603 List!41603 Rule!12716) Unit!59621)

(assert (=> b!3914076 (= lt!1363629 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1289 thiss!20629 rules!2768 lt!1363621 lt!1363617 (_2!23499 (v!39201 lt!1363624)) (rule!9378 (_1!23499 (v!39201 lt!1363624)))))))

(declare-fun b!3914077 () Bool)

(declare-fun res!1583120 () Bool)

(assert (=> b!3914077 (=> (not res!1583120) (not e!2419972))))

(declare-fun isEmpty!24681 (List!41603) Bool)

(assert (=> b!3914077 (= res!1583120 (not (isEmpty!24681 prefix!426)))))

(declare-fun b!3914078 () Bool)

(declare-fun e!2419971 () Bool)

(declare-fun e!2419952 () Bool)

(declare-fun tp!1191405 () Bool)

(assert (=> b!3914078 (= e!2419971 (and e!2419952 tp!1191405))))

(declare-fun e!2419961 () Bool)

(declare-fun tp!1191407 () Bool)

(declare-fun b!3914079 () Bool)

(assert (=> b!3914079 (= e!2419952 (and tp!1191407 (inv!55666 (tag!7318 (h!46902 rules!2768))) (inv!55669 (transformation!6458 (h!46902 rules!2768))) e!2419961))))

(declare-fun b!3914081 () Bool)

(declare-fun res!1583129 () Bool)

(assert (=> b!3914081 (=> (not res!1583129) (not e!2419972))))

(assert (=> b!3914081 (= res!1583129 (not (isEmpty!24680 prefixTokens!80)))))

(declare-fun res!1583121 () Bool)

(assert (=> start!366724 (=> (not res!1583121) (not e!2419972))))

(get-info :version)

(assert (=> start!366724 (= res!1583121 ((_ is Lexer!6045) thiss!20629))))

(assert (=> start!366724 e!2419972))

(assert (=> start!366724 e!2419969))

(assert (=> start!366724 true))

(declare-fun e!2419964 () Bool)

(assert (=> start!366724 e!2419964))

(assert (=> start!366724 e!2419971))

(assert (=> start!366724 e!2419974))

(assert (=> start!366724 e!2419956))

(assert (=> start!366724 e!2419977))

(declare-fun b!3914080 () Bool)

(declare-fun e!2419957 () Bool)

(declare-fun tp!1191414 () Bool)

(assert (=> b!3914080 (= e!2419973 (and (inv!21 (value!204687 (h!46901 suffixTokens!72))) e!2419957 tp!1191414))))

(declare-fun b!3914082 () Bool)

(assert (=> b!3914082 (= e!2419954 e!2419980)))

(declare-fun res!1583134 () Bool)

(assert (=> b!3914082 (=> (not res!1583134) (not e!2419980))))

(assert (=> b!3914082 (= res!1583134 ((_ is Some!8877) lt!1363624))))

(declare-fun maxPrefix!3351 (LexerInterface!6047 List!41606 List!41603) Option!8878)

(assert (=> b!3914082 (= lt!1363624 (maxPrefix!3351 thiss!20629 rules!2768 lt!1363617))))

(declare-fun b!3914083 () Bool)

(declare-fun res!1583130 () Bool)

(assert (=> b!3914083 (=> (not res!1583130) (not e!2419972))))

(declare-fun isEmpty!24682 (List!41606) Bool)

(assert (=> b!3914083 (= res!1583130 (not (isEmpty!24682 rules!2768)))))

(declare-fun b!3914084 () Bool)

(assert (=> b!3914084 (= e!2419962 (= (size!31143 (_1!23499 (v!39201 lt!1363624))) (size!31144 (originalCharacters!7058 (_1!23499 (v!39201 lt!1363624))))))))

(declare-fun tp!1191409 () Bool)

(declare-fun b!3914085 () Bool)

(assert (=> b!3914085 (= e!2419957 (and tp!1191409 (inv!55666 (tag!7318 (rule!9378 (h!46901 suffixTokens!72)))) (inv!55669 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) e!2419966))))

(declare-fun b!3914086 () Bool)

(assert (=> b!3914086 (= e!2419960 e!2419959)))

(declare-fun res!1583116 () Bool)

(assert (=> b!3914086 (=> res!1583116 e!2419959)))

(assert (=> b!3914086 (= res!1583116 (not (= (+ lt!1363619 lt!1363634) lt!1363637)))))

(assert (=> b!3914086 (= lt!1363637 (size!31144 lt!1363617))))

(assert (=> b!3914087 (= e!2419961 (and tp!1191411 tp!1191403))))

(declare-fun b!3914088 () Bool)

(declare-fun tp!1191399 () Bool)

(assert (=> b!3914088 (= e!2419964 (and tp_is_empty!19697 tp!1191399))))

(declare-fun b!3914089 () Bool)

(declare-fun res!1583127 () Bool)

(assert (=> b!3914089 (=> res!1583127 e!2419976)))

(assert (=> b!3914089 (= res!1583127 (not (= lt!1363632 (tuple2!40733 (++!10673 (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481) (_1!23500 lt!1363626)) (_2!23500 lt!1363626)))))))

(declare-fun b!3914090 () Bool)

(declare-fun res!1583123 () Bool)

(assert (=> b!3914090 (=> (not res!1583123) (not e!2419954))))

(assert (=> b!3914090 (= res!1583123 (= (lexList!1815 thiss!20629 rules!2768 suffix!1176) (tuple2!40733 suffixTokens!72 suffixResult!91)))))

(assert (= (and start!366724 res!1583121) b!3914083))

(assert (= (and b!3914083 res!1583130) b!3914070))

(assert (= (and b!3914070 res!1583118) b!3914081))

(assert (= (and b!3914081 res!1583129) b!3914077))

(assert (= (and b!3914077 res!1583120) b!3914063))

(assert (= (and b!3914063 res!1583125) b!3914090))

(assert (= (and b!3914090 res!1583123) b!3914082))

(assert (= (and b!3914082 res!1583134) b!3914068))

(assert (= (and b!3914068 res!1583132) b!3914084))

(assert (= (and b!3914068 (not res!1583117)) b!3914089))

(assert (= (and b!3914089 (not res!1583127)) b!3914059))

(assert (= (and b!3914059 (not res!1583119)) b!3914069))

(assert (= (and b!3914069 (not res!1583126)) b!3914086))

(assert (= (and b!3914086 (not res!1583116)) b!3914071))

(assert (= (and b!3914071 (not res!1583133)) b!3914076))

(assert (= (and b!3914076 (not res!1583128)) b!3914058))

(assert (= (and b!3914058 (not res!1583122)) b!3914062))

(assert (= (and b!3914062 (not res!1583124)) b!3914073))

(assert (= (and b!3914073 (not res!1583131)) b!3914061))

(assert (= (and start!366724 ((_ is Cons!41479) suffixResult!91)) b!3914060))

(assert (= (and start!366724 ((_ is Cons!41479) suffix!1176)) b!3914088))

(assert (= b!3914079 b!3914087))

(assert (= b!3914078 b!3914079))

(assert (= (and start!366724 ((_ is Cons!41482) rules!2768)) b!3914078))

(assert (= b!3914065 b!3914075))

(assert (= b!3914066 b!3914065))

(assert (= b!3914067 b!3914066))

(assert (= (and start!366724 ((_ is Cons!41481) prefixTokens!80)) b!3914067))

(assert (= b!3914085 b!3914064))

(assert (= b!3914080 b!3914085))

(assert (= b!3914074 b!3914080))

(assert (= (and start!366724 ((_ is Cons!41481) suffixTokens!72)) b!3914074))

(assert (= (and start!366724 ((_ is Cons!41479) prefix!426)) b!3914072))

(declare-fun m!4477411 () Bool)

(assert (=> b!3914074 m!4477411))

(declare-fun m!4477413 () Bool)

(assert (=> b!3914071 m!4477413))

(declare-fun m!4477415 () Bool)

(assert (=> b!3914090 m!4477415))

(declare-fun m!4477417 () Bool)

(assert (=> b!3914066 m!4477417))

(declare-fun m!4477419 () Bool)

(assert (=> b!3914082 m!4477419))

(declare-fun m!4477421 () Bool)

(assert (=> b!3914068 m!4477421))

(declare-fun m!4477423 () Bool)

(assert (=> b!3914068 m!4477423))

(declare-fun m!4477425 () Bool)

(assert (=> b!3914068 m!4477425))

(declare-fun m!4477427 () Bool)

(assert (=> b!3914068 m!4477427))

(declare-fun m!4477429 () Bool)

(assert (=> b!3914068 m!4477429))

(declare-fun m!4477431 () Bool)

(assert (=> b!3914068 m!4477431))

(declare-fun m!4477433 () Bool)

(assert (=> b!3914068 m!4477433))

(assert (=> b!3914068 m!4477425))

(declare-fun m!4477435 () Bool)

(assert (=> b!3914068 m!4477435))

(declare-fun m!4477437 () Bool)

(assert (=> b!3914068 m!4477437))

(declare-fun m!4477439 () Bool)

(assert (=> b!3914068 m!4477439))

(declare-fun m!4477441 () Bool)

(assert (=> b!3914068 m!4477441))

(declare-fun m!4477443 () Bool)

(assert (=> b!3914068 m!4477443))

(declare-fun m!4477445 () Bool)

(assert (=> b!3914068 m!4477445))

(declare-fun m!4477447 () Bool)

(assert (=> b!3914068 m!4477447))

(assert (=> b!3914068 m!4477443))

(declare-fun m!4477449 () Bool)

(assert (=> b!3914080 m!4477449))

(declare-fun m!4477451 () Bool)

(assert (=> b!3914089 m!4477451))

(declare-fun m!4477453 () Bool)

(assert (=> b!3914081 m!4477453))

(declare-fun m!4477455 () Bool)

(assert (=> b!3914085 m!4477455))

(declare-fun m!4477457 () Bool)

(assert (=> b!3914085 m!4477457))

(declare-fun m!4477459 () Bool)

(assert (=> b!3914077 m!4477459))

(declare-fun m!4477461 () Bool)

(assert (=> b!3914067 m!4477461))

(declare-fun m!4477463 () Bool)

(assert (=> b!3914086 m!4477463))

(declare-fun m!4477465 () Bool)

(assert (=> b!3914063 m!4477465))

(declare-fun m!4477467 () Bool)

(assert (=> b!3914063 m!4477467))

(declare-fun m!4477469 () Bool)

(assert (=> b!3914063 m!4477469))

(declare-fun m!4477471 () Bool)

(assert (=> b!3914079 m!4477471))

(declare-fun m!4477473 () Bool)

(assert (=> b!3914079 m!4477473))

(declare-fun m!4477475 () Bool)

(assert (=> b!3914058 m!4477475))

(declare-fun m!4477477 () Bool)

(assert (=> b!3914058 m!4477477))

(declare-fun m!4477479 () Bool)

(assert (=> b!3914083 m!4477479))

(declare-fun m!4477481 () Bool)

(assert (=> b!3914084 m!4477481))

(declare-fun m!4477483 () Bool)

(assert (=> b!3914069 m!4477483))

(declare-fun m!4477485 () Bool)

(assert (=> b!3914069 m!4477485))

(declare-fun m!4477487 () Bool)

(assert (=> b!3914070 m!4477487))

(declare-fun m!4477489 () Bool)

(assert (=> b!3914065 m!4477489))

(declare-fun m!4477491 () Bool)

(assert (=> b!3914065 m!4477491))

(declare-fun m!4477493 () Bool)

(assert (=> b!3914076 m!4477493))

(declare-fun m!4477495 () Bool)

(assert (=> b!3914076 m!4477495))

(declare-fun m!4477497 () Bool)

(assert (=> b!3914076 m!4477497))

(declare-fun m!4477499 () Bool)

(assert (=> b!3914073 m!4477499))

(assert (=> b!3914073 m!4477499))

(declare-fun m!4477501 () Bool)

(assert (=> b!3914073 m!4477501))

(declare-fun m!4477503 () Bool)

(assert (=> b!3914062 m!4477503))

(check-sat b_and!297925 (not b!3914062) b_and!297923 (not b!3914058) (not b!3914070) (not b!3914063) (not b!3914080) (not b_next!106943) (not b!3914079) (not b_next!106941) (not b!3914067) (not b_next!106939) b_and!297927 (not b!3914076) (not b!3914066) (not b!3914072) (not b!3914065) (not b_next!106933) b_and!297931 tp_is_empty!19697 (not b_next!106935) (not b!3914077) b_and!297933 (not b!3914090) (not b!3914082) (not b!3914069) (not b!3914060) (not b_next!106937) (not b!3914089) (not b!3914073) (not b!3914088) b_and!297929 (not b!3914068) (not b!3914085) (not b!3914086) (not b!3914071) (not b!3914083) (not b!3914078) (not b!3914081) (not b!3914084) (not b!3914074))
(check-sat (not b_next!106933) b_and!297925 b_and!297931 b_and!297923 (not b_next!106935) b_and!297933 (not b_next!106943) (not b_next!106937) (not b_next!106941) b_and!297929 (not b_next!106939) b_and!297927)
(get-model)

(declare-fun d!1161120 () Bool)

(assert (=> d!1161120 (= (inv!55666 (tag!7318 (rule!9378 (h!46901 prefixTokens!80)))) (= (mod (str.len (value!204686 (tag!7318 (rule!9378 (h!46901 prefixTokens!80))))) 2) 0))))

(assert (=> b!3914065 d!1161120))

(declare-fun d!1161122 () Bool)

(declare-fun res!1583141 () Bool)

(declare-fun e!2419983 () Bool)

(assert (=> d!1161122 (=> (not res!1583141) (not e!2419983))))

(declare-fun semiInverseModEq!2775 (Int Int) Bool)

(assert (=> d!1161122 (= res!1583141 (semiInverseModEq!2775 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (toValue!8906 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))))))

(assert (=> d!1161122 (= (inv!55669 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) e!2419983)))

(declare-fun b!3914093 () Bool)

(declare-fun equivClasses!2674 (Int Int) Bool)

(assert (=> b!3914093 (= e!2419983 (equivClasses!2674 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (toValue!8906 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))))))

(assert (= (and d!1161122 res!1583141) b!3914093))

(declare-fun m!4477505 () Bool)

(assert (=> d!1161122 m!4477505))

(declare-fun m!4477507 () Bool)

(assert (=> b!3914093 m!4477507))

(assert (=> b!3914065 d!1161122))

(declare-fun d!1161124 () Bool)

(declare-fun lt!1363640 () Int)

(assert (=> d!1161124 (>= lt!1363640 0)))

(declare-fun e!2419986 () Int)

(assert (=> d!1161124 (= lt!1363640 e!2419986)))

(declare-fun c!680330 () Bool)

(assert (=> d!1161124 (= c!680330 ((_ is Nil!41479) lt!1363617))))

(assert (=> d!1161124 (= (size!31144 lt!1363617) lt!1363640)))

(declare-fun b!3914098 () Bool)

(assert (=> b!3914098 (= e!2419986 0)))

(declare-fun b!3914099 () Bool)

(assert (=> b!3914099 (= e!2419986 (+ 1 (size!31144 (t!323512 lt!1363617))))))

(assert (= (and d!1161124 c!680330) b!3914098))

(assert (= (and d!1161124 (not c!680330)) b!3914099))

(declare-fun m!4477509 () Bool)

(assert (=> b!3914099 m!4477509))

(assert (=> b!3914086 d!1161124))

(declare-fun b!3914129 () Bool)

(declare-fun e!2420005 () Bool)

(declare-fun lt!1363658 () tuple2!40732)

(assert (=> b!3914129 (= e!2420005 (= (_2!23500 lt!1363658) lt!1363617))))

(declare-fun b!3914130 () Bool)

(declare-fun e!2420006 () tuple2!40732)

(declare-fun lt!1363656 () Option!8878)

(declare-fun lt!1363657 () tuple2!40732)

(assert (=> b!3914130 (= e!2420006 (tuple2!40733 (Cons!41481 (_1!23499 (v!39201 lt!1363656)) (_1!23500 lt!1363657)) (_2!23500 lt!1363657)))))

(assert (=> b!3914130 (= lt!1363657 (lexList!1815 thiss!20629 rules!2768 (_2!23499 (v!39201 lt!1363656))))))

(declare-fun d!1161126 () Bool)

(assert (=> d!1161126 e!2420005))

(declare-fun c!680342 () Bool)

(declare-fun size!31146 (List!41605) Int)

(assert (=> d!1161126 (= c!680342 (> (size!31146 (_1!23500 lt!1363658)) 0))))

(assert (=> d!1161126 (= lt!1363658 e!2420006)))

(declare-fun c!680343 () Bool)

(assert (=> d!1161126 (= c!680343 ((_ is Some!8877) lt!1363656))))

(assert (=> d!1161126 (= lt!1363656 (maxPrefix!3351 thiss!20629 rules!2768 lt!1363617))))

(assert (=> d!1161126 (= (lexList!1815 thiss!20629 rules!2768 lt!1363617) lt!1363658)))

(declare-fun b!3914131 () Bool)

(assert (=> b!3914131 (= e!2420006 (tuple2!40733 Nil!41481 lt!1363617))))

(declare-fun b!3914132 () Bool)

(declare-fun e!2420007 () Bool)

(assert (=> b!3914132 (= e!2420007 (not (isEmpty!24680 (_1!23500 lt!1363658))))))

(declare-fun b!3914133 () Bool)

(assert (=> b!3914133 (= e!2420005 e!2420007)))

(declare-fun res!1583153 () Bool)

(assert (=> b!3914133 (= res!1583153 (< (size!31144 (_2!23500 lt!1363658)) (size!31144 lt!1363617)))))

(assert (=> b!3914133 (=> (not res!1583153) (not e!2420007))))

(assert (= (and d!1161126 c!680343) b!3914130))

(assert (= (and d!1161126 (not c!680343)) b!3914131))

(assert (= (and d!1161126 c!680342) b!3914133))

(assert (= (and d!1161126 (not c!680342)) b!3914129))

(assert (= (and b!3914133 res!1583153) b!3914132))

(declare-fun m!4477517 () Bool)

(assert (=> b!3914130 m!4477517))

(declare-fun m!4477519 () Bool)

(assert (=> d!1161126 m!4477519))

(assert (=> d!1161126 m!4477419))

(declare-fun m!4477521 () Bool)

(assert (=> b!3914132 m!4477521))

(declare-fun m!4477523 () Bool)

(assert (=> b!3914133 m!4477523))

(assert (=> b!3914133 m!4477463))

(assert (=> b!3914063 d!1161126))

(declare-fun b!3914173 () Bool)

(declare-fun res!1583172 () Bool)

(declare-fun e!2420028 () Bool)

(assert (=> b!3914173 (=> (not res!1583172) (not e!2420028))))

(declare-fun lt!1363670 () List!41605)

(assert (=> b!3914173 (= res!1583172 (= (size!31146 lt!1363670) (+ (size!31146 prefixTokens!80) (size!31146 suffixTokens!72))))))

(declare-fun b!3914172 () Bool)

(declare-fun e!2420027 () List!41605)

(assert (=> b!3914172 (= e!2420027 (Cons!41481 (h!46901 prefixTokens!80) (++!10673 (t!323514 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3914174 () Bool)

(assert (=> b!3914174 (= e!2420028 (or (not (= suffixTokens!72 Nil!41481)) (= lt!1363670 prefixTokens!80)))))

(declare-fun d!1161136 () Bool)

(assert (=> d!1161136 e!2420028))

(declare-fun res!1583171 () Bool)

(assert (=> d!1161136 (=> (not res!1583171) (not e!2420028))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6233 (List!41605) (InoxSet Token!12054))

(assert (=> d!1161136 (= res!1583171 (= (content!6233 lt!1363670) ((_ map or) (content!6233 prefixTokens!80) (content!6233 suffixTokens!72))))))

(assert (=> d!1161136 (= lt!1363670 e!2420027)))

(declare-fun c!680354 () Bool)

(assert (=> d!1161136 (= c!680354 ((_ is Nil!41481) prefixTokens!80))))

(assert (=> d!1161136 (= (++!10673 prefixTokens!80 suffixTokens!72) lt!1363670)))

(declare-fun b!3914171 () Bool)

(assert (=> b!3914171 (= e!2420027 suffixTokens!72)))

(assert (= (and d!1161136 c!680354) b!3914171))

(assert (= (and d!1161136 (not c!680354)) b!3914172))

(assert (= (and d!1161136 res!1583171) b!3914173))

(assert (= (and b!3914173 res!1583172) b!3914174))

(declare-fun m!4477557 () Bool)

(assert (=> b!3914173 m!4477557))

(declare-fun m!4477559 () Bool)

(assert (=> b!3914173 m!4477559))

(declare-fun m!4477561 () Bool)

(assert (=> b!3914173 m!4477561))

(declare-fun m!4477563 () Bool)

(assert (=> b!3914172 m!4477563))

(declare-fun m!4477565 () Bool)

(assert (=> d!1161136 m!4477565))

(declare-fun m!4477567 () Bool)

(assert (=> d!1161136 m!4477567))

(declare-fun m!4477569 () Bool)

(assert (=> d!1161136 m!4477569))

(assert (=> b!3914063 d!1161136))

(declare-fun d!1161144 () Bool)

(declare-fun e!2420042 () Bool)

(assert (=> d!1161144 e!2420042))

(declare-fun res!1583185 () Bool)

(assert (=> d!1161144 (=> (not res!1583185) (not e!2420042))))

(declare-fun lt!1363686 () List!41603)

(declare-fun content!6234 (List!41603) (InoxSet C!22912))

(assert (=> d!1161144 (= res!1583185 (= (content!6234 lt!1363686) ((_ map or) (content!6234 prefix!426) (content!6234 suffix!1176))))))

(declare-fun e!2420043 () List!41603)

(assert (=> d!1161144 (= lt!1363686 e!2420043)))

(declare-fun c!680360 () Bool)

(assert (=> d!1161144 (= c!680360 ((_ is Nil!41479) prefix!426))))

(assert (=> d!1161144 (= (++!10674 prefix!426 suffix!1176) lt!1363686)))

(declare-fun b!3914199 () Bool)

(assert (=> b!3914199 (= e!2420043 (Cons!41479 (h!46899 prefix!426) (++!10674 (t!323512 prefix!426) suffix!1176)))))

(declare-fun b!3914200 () Bool)

(declare-fun res!1583184 () Bool)

(assert (=> b!3914200 (=> (not res!1583184) (not e!2420042))))

(assert (=> b!3914200 (= res!1583184 (= (size!31144 lt!1363686) (+ (size!31144 prefix!426) (size!31144 suffix!1176))))))

(declare-fun b!3914201 () Bool)

(assert (=> b!3914201 (= e!2420042 (or (not (= suffix!1176 Nil!41479)) (= lt!1363686 prefix!426)))))

(declare-fun b!3914198 () Bool)

(assert (=> b!3914198 (= e!2420043 suffix!1176)))

(assert (= (and d!1161144 c!680360) b!3914198))

(assert (= (and d!1161144 (not c!680360)) b!3914199))

(assert (= (and d!1161144 res!1583185) b!3914200))

(assert (= (and b!3914200 res!1583184) b!3914201))

(declare-fun m!4477603 () Bool)

(assert (=> d!1161144 m!4477603))

(declare-fun m!4477605 () Bool)

(assert (=> d!1161144 m!4477605))

(declare-fun m!4477607 () Bool)

(assert (=> d!1161144 m!4477607))

(declare-fun m!4477609 () Bool)

(assert (=> b!3914199 m!4477609))

(declare-fun m!4477611 () Bool)

(assert (=> b!3914200 m!4477611))

(assert (=> b!3914200 m!4477413))

(assert (=> b!3914200 m!4477483))

(assert (=> b!3914063 d!1161144))

(declare-fun d!1161160 () Bool)

(declare-fun lt!1363687 () Int)

(assert (=> d!1161160 (>= lt!1363687 0)))

(declare-fun e!2420045 () Int)

(assert (=> d!1161160 (= lt!1363687 e!2420045)))

(declare-fun c!680361 () Bool)

(assert (=> d!1161160 (= c!680361 ((_ is Nil!41479) (originalCharacters!7058 (_1!23499 (v!39201 lt!1363624)))))))

(assert (=> d!1161160 (= (size!31144 (originalCharacters!7058 (_1!23499 (v!39201 lt!1363624)))) lt!1363687)))

(declare-fun b!3914202 () Bool)

(assert (=> b!3914202 (= e!2420045 0)))

(declare-fun b!3914203 () Bool)

(assert (=> b!3914203 (= e!2420045 (+ 1 (size!31144 (t!323512 (originalCharacters!7058 (_1!23499 (v!39201 lt!1363624)))))))))

(assert (= (and d!1161160 c!680361) b!3914202))

(assert (= (and d!1161160 (not c!680361)) b!3914203))

(declare-fun m!4477613 () Bool)

(assert (=> b!3914203 m!4477613))

(assert (=> b!3914084 d!1161160))

(declare-fun d!1161162 () Bool)

(assert (=> d!1161162 (= (inv!55666 (tag!7318 (rule!9378 (h!46901 suffixTokens!72)))) (= (mod (str.len (value!204686 (tag!7318 (rule!9378 (h!46901 suffixTokens!72))))) 2) 0))))

(assert (=> b!3914085 d!1161162))

(declare-fun d!1161164 () Bool)

(declare-fun res!1583186 () Bool)

(declare-fun e!2420046 () Bool)

(assert (=> d!1161164 (=> (not res!1583186) (not e!2420046))))

(assert (=> d!1161164 (= res!1583186 (semiInverseModEq!2775 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (toValue!8906 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))))))

(assert (=> d!1161164 (= (inv!55669 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) e!2420046)))

(declare-fun b!3914204 () Bool)

(assert (=> b!3914204 (= e!2420046 (equivClasses!2674 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (toValue!8906 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))))))

(assert (= (and d!1161164 res!1583186) b!3914204))

(declare-fun m!4477615 () Bool)

(assert (=> d!1161164 m!4477615))

(declare-fun m!4477617 () Bool)

(assert (=> b!3914204 m!4477617))

(assert (=> b!3914085 d!1161164))

(declare-fun d!1161166 () Bool)

(declare-fun res!1583203 () Bool)

(declare-fun e!2420061 () Bool)

(assert (=> d!1161166 (=> (not res!1583203) (not e!2420061))))

(assert (=> d!1161166 (= res!1583203 (not (isEmpty!24681 (originalCharacters!7058 (h!46901 prefixTokens!80)))))))

(assert (=> d!1161166 (= (inv!55670 (h!46901 prefixTokens!80)) e!2420061)))

(declare-fun b!3914227 () Bool)

(declare-fun res!1583204 () Bool)

(assert (=> b!3914227 (=> (not res!1583204) (not e!2420061))))

(declare-fun dynLambda!17821 (Int TokenValue!6688) BalanceConc!24932)

(assert (=> b!3914227 (= res!1583204 (= (originalCharacters!7058 (h!46901 prefixTokens!80)) (list!15421 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (value!204687 (h!46901 prefixTokens!80))))))))

(declare-fun b!3914228 () Bool)

(assert (=> b!3914228 (= e!2420061 (= (size!31143 (h!46901 prefixTokens!80)) (size!31144 (originalCharacters!7058 (h!46901 prefixTokens!80)))))))

(assert (= (and d!1161166 res!1583203) b!3914227))

(assert (= (and b!3914227 res!1583204) b!3914228))

(declare-fun b_lambda!114601 () Bool)

(assert (=> (not b_lambda!114601) (not b!3914227)))

(declare-fun t!323523 () Bool)

(declare-fun tb!233195 () Bool)

(assert (=> (and b!3914075 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))) t!323523) tb!233195))

(declare-fun b!3914237 () Bool)

(declare-fun e!2420066 () Bool)

(declare-fun tp!1191417 () Bool)

(declare-fun inv!55673 (Conc!12669) Bool)

(assert (=> b!3914237 (= e!2420066 (and (inv!55673 (c!680326 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (value!204687 (h!46901 prefixTokens!80))))) tp!1191417))))

(declare-fun result!282626 () Bool)

(declare-fun inv!55674 (BalanceConc!24932) Bool)

(assert (=> tb!233195 (= result!282626 (and (inv!55674 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (value!204687 (h!46901 prefixTokens!80)))) e!2420066))))

(assert (= tb!233195 b!3914237))

(declare-fun m!4477649 () Bool)

(assert (=> b!3914237 m!4477649))

(declare-fun m!4477651 () Bool)

(assert (=> tb!233195 m!4477651))

(assert (=> b!3914227 t!323523))

(declare-fun b_and!297941 () Bool)

(assert (= b_and!297925 (and (=> t!323523 result!282626) b_and!297941)))

(declare-fun t!323525 () Bool)

(declare-fun tb!233197 () Bool)

(assert (=> (and b!3914064 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))) t!323525) tb!233197))

(declare-fun result!282630 () Bool)

(assert (= result!282630 result!282626))

(assert (=> b!3914227 t!323525))

(declare-fun b_and!297943 () Bool)

(assert (= b_and!297929 (and (=> t!323525 result!282630) b_and!297943)))

(declare-fun t!323527 () Bool)

(declare-fun tb!233199 () Bool)

(assert (=> (and b!3914087 (= (toChars!8765 (transformation!6458 (h!46902 rules!2768))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))) t!323527) tb!233199))

(declare-fun result!282632 () Bool)

(assert (= result!282632 result!282626))

(assert (=> b!3914227 t!323527))

(declare-fun b_and!297945 () Bool)

(assert (= b_and!297933 (and (=> t!323527 result!282632) b_and!297945)))

(declare-fun m!4477653 () Bool)

(assert (=> d!1161166 m!4477653))

(declare-fun m!4477655 () Bool)

(assert (=> b!3914227 m!4477655))

(assert (=> b!3914227 m!4477655))

(declare-fun m!4477657 () Bool)

(assert (=> b!3914227 m!4477657))

(declare-fun m!4477659 () Bool)

(assert (=> b!3914228 m!4477659))

(assert (=> b!3914067 d!1161166))

(declare-fun b!3914240 () Bool)

(declare-fun res!1583208 () Bool)

(declare-fun e!2420068 () Bool)

(assert (=> b!3914240 (=> (not res!1583208) (not e!2420068))))

(declare-fun lt!1363695 () List!41605)

(assert (=> b!3914240 (= res!1583208 (= (size!31146 lt!1363695) (+ (size!31146 (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481)) (size!31146 (_1!23500 lt!1363626)))))))

(declare-fun b!3914239 () Bool)

(declare-fun e!2420067 () List!41605)

(assert (=> b!3914239 (= e!2420067 (Cons!41481 (h!46901 (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481)) (++!10673 (t!323514 (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481)) (_1!23500 lt!1363626))))))

(declare-fun b!3914241 () Bool)

(assert (=> b!3914241 (= e!2420068 (or (not (= (_1!23500 lt!1363626) Nil!41481)) (= lt!1363695 (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481))))))

(declare-fun d!1161178 () Bool)

(assert (=> d!1161178 e!2420068))

(declare-fun res!1583207 () Bool)

(assert (=> d!1161178 (=> (not res!1583207) (not e!2420068))))

(assert (=> d!1161178 (= res!1583207 (= (content!6233 lt!1363695) ((_ map or) (content!6233 (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481)) (content!6233 (_1!23500 lt!1363626)))))))

(assert (=> d!1161178 (= lt!1363695 e!2420067)))

(declare-fun c!680366 () Bool)

(assert (=> d!1161178 (= c!680366 ((_ is Nil!41481) (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481)))))

(assert (=> d!1161178 (= (++!10673 (Cons!41481 (_1!23499 (v!39201 lt!1363624)) Nil!41481) (_1!23500 lt!1363626)) lt!1363695)))

(declare-fun b!3914238 () Bool)

(assert (=> b!3914238 (= e!2420067 (_1!23500 lt!1363626))))

(assert (= (and d!1161178 c!680366) b!3914238))

(assert (= (and d!1161178 (not c!680366)) b!3914239))

(assert (= (and d!1161178 res!1583207) b!3914240))

(assert (= (and b!3914240 res!1583208) b!3914241))

(declare-fun m!4477663 () Bool)

(assert (=> b!3914240 m!4477663))

(declare-fun m!4477665 () Bool)

(assert (=> b!3914240 m!4477665))

(declare-fun m!4477667 () Bool)

(assert (=> b!3914240 m!4477667))

(declare-fun m!4477669 () Bool)

(assert (=> b!3914239 m!4477669))

(declare-fun m!4477671 () Bool)

(assert (=> d!1161178 m!4477671))

(declare-fun m!4477673 () Bool)

(assert (=> d!1161178 m!4477673))

(declare-fun m!4477675 () Bool)

(assert (=> d!1161178 m!4477675))

(assert (=> b!3914089 d!1161178))

(declare-fun b!3914270 () Bool)

(declare-fun e!2420086 () Bool)

(declare-fun inv!16 (TokenValue!6688) Bool)

(assert (=> b!3914270 (= e!2420086 (inv!16 (value!204687 (h!46901 prefixTokens!80))))))

(declare-fun b!3914272 () Bool)

(declare-fun res!1583213 () Bool)

(declare-fun e!2420085 () Bool)

(assert (=> b!3914272 (=> res!1583213 e!2420085)))

(assert (=> b!3914272 (= res!1583213 (not ((_ is IntegerValue!20066) (value!204687 (h!46901 prefixTokens!80)))))))

(declare-fun e!2420084 () Bool)

(assert (=> b!3914272 (= e!2420084 e!2420085)))

(declare-fun d!1161182 () Bool)

(declare-fun c!680377 () Bool)

(assert (=> d!1161182 (= c!680377 ((_ is IntegerValue!20064) (value!204687 (h!46901 prefixTokens!80))))))

(assert (=> d!1161182 (= (inv!21 (value!204687 (h!46901 prefixTokens!80))) e!2420086)))

(declare-fun b!3914273 () Bool)

(declare-fun inv!17 (TokenValue!6688) Bool)

(assert (=> b!3914273 (= e!2420084 (inv!17 (value!204687 (h!46901 prefixTokens!80))))))

(declare-fun b!3914274 () Bool)

(declare-fun inv!15 (TokenValue!6688) Bool)

(assert (=> b!3914274 (= e!2420085 (inv!15 (value!204687 (h!46901 prefixTokens!80))))))

(declare-fun b!3914275 () Bool)

(assert (=> b!3914275 (= e!2420086 e!2420084)))

(declare-fun c!680378 () Bool)

(assert (=> b!3914275 (= c!680378 ((_ is IntegerValue!20065) (value!204687 (h!46901 prefixTokens!80))))))

(assert (= (and d!1161182 c!680377) b!3914270))

(assert (= (and d!1161182 (not c!680377)) b!3914275))

(assert (= (and b!3914275 c!680378) b!3914273))

(assert (= (and b!3914275 (not c!680378)) b!3914272))

(assert (= (and b!3914272 (not res!1583213)) b!3914274))

(declare-fun m!4477685 () Bool)

(assert (=> b!3914270 m!4477685))

(declare-fun m!4477687 () Bool)

(assert (=> b!3914273 m!4477687))

(declare-fun m!4477689 () Bool)

(assert (=> b!3914274 m!4477689))

(assert (=> b!3914066 d!1161182))

(declare-fun b!3914290 () Bool)

(declare-fun e!2420097 () Bool)

(assert (=> b!3914290 (= e!2420097 (inv!16 (value!204687 (h!46901 suffixTokens!72))))))

(declare-fun b!3914291 () Bool)

(declare-fun res!1583228 () Bool)

(declare-fun e!2420096 () Bool)

(assert (=> b!3914291 (=> res!1583228 e!2420096)))

(assert (=> b!3914291 (= res!1583228 (not ((_ is IntegerValue!20066) (value!204687 (h!46901 suffixTokens!72)))))))

(declare-fun e!2420095 () Bool)

(assert (=> b!3914291 (= e!2420095 e!2420096)))

(declare-fun d!1161186 () Bool)

(declare-fun c!680379 () Bool)

(assert (=> d!1161186 (= c!680379 ((_ is IntegerValue!20064) (value!204687 (h!46901 suffixTokens!72))))))

(assert (=> d!1161186 (= (inv!21 (value!204687 (h!46901 suffixTokens!72))) e!2420097)))

(declare-fun b!3914292 () Bool)

(assert (=> b!3914292 (= e!2420095 (inv!17 (value!204687 (h!46901 suffixTokens!72))))))

(declare-fun b!3914293 () Bool)

(assert (=> b!3914293 (= e!2420096 (inv!15 (value!204687 (h!46901 suffixTokens!72))))))

(declare-fun b!3914294 () Bool)

(assert (=> b!3914294 (= e!2420097 e!2420095)))

(declare-fun c!680380 () Bool)

(assert (=> b!3914294 (= c!680380 ((_ is IntegerValue!20065) (value!204687 (h!46901 suffixTokens!72))))))

(assert (= (and d!1161186 c!680379) b!3914290))

(assert (= (and d!1161186 (not c!680379)) b!3914294))

(assert (= (and b!3914294 c!680380) b!3914292))

(assert (= (and b!3914294 (not c!680380)) b!3914291))

(assert (= (and b!3914291 (not res!1583228)) b!3914293))

(declare-fun m!4477691 () Bool)

(assert (=> b!3914290 m!4477691))

(declare-fun m!4477693 () Bool)

(assert (=> b!3914292 m!4477693))

(declare-fun m!4477695 () Bool)

(assert (=> b!3914293 m!4477695))

(assert (=> b!3914080 d!1161186))

(declare-fun d!1161188 () Bool)

(assert (=> d!1161188 (= (isEmpty!24680 prefixTokens!80) ((_ is Nil!41481) prefixTokens!80))))

(assert (=> b!3914081 d!1161188))

(declare-fun d!1161190 () Bool)

(assert (=> d!1161190 (= (inv!55666 (tag!7318 (h!46902 rules!2768))) (= (mod (str.len (value!204686 (tag!7318 (h!46902 rules!2768)))) 2) 0))))

(assert (=> b!3914079 d!1161190))

(declare-fun d!1161192 () Bool)

(declare-fun res!1583229 () Bool)

(declare-fun e!2420098 () Bool)

(assert (=> d!1161192 (=> (not res!1583229) (not e!2420098))))

(assert (=> d!1161192 (= res!1583229 (semiInverseModEq!2775 (toChars!8765 (transformation!6458 (h!46902 rules!2768))) (toValue!8906 (transformation!6458 (h!46902 rules!2768)))))))

(assert (=> d!1161192 (= (inv!55669 (transformation!6458 (h!46902 rules!2768))) e!2420098)))

(declare-fun b!3914295 () Bool)

(assert (=> b!3914295 (= e!2420098 (equivClasses!2674 (toChars!8765 (transformation!6458 (h!46902 rules!2768))) (toValue!8906 (transformation!6458 (h!46902 rules!2768)))))))

(assert (= (and d!1161192 res!1583229) b!3914295))

(declare-fun m!4477697 () Bool)

(assert (=> d!1161192 m!4477697))

(declare-fun m!4477699 () Bool)

(assert (=> b!3914295 m!4477699))

(assert (=> b!3914079 d!1161192))

(declare-fun d!1161194 () Bool)

(assert (=> d!1161194 (= (head!8269 prefixTokens!80) (h!46901 prefixTokens!80))))

(assert (=> b!3914058 d!1161194))

(declare-fun d!1161196 () Bool)

(assert (=> d!1161196 (= (get!13707 lt!1363624) (v!39201 lt!1363624))))

(assert (=> b!3914058 d!1161196))

(declare-fun d!1161198 () Bool)

(assert (=> d!1161198 (= (isEmpty!24682 rules!2768) ((_ is Nil!41482) rules!2768))))

(assert (=> b!3914083 d!1161198))

(declare-fun d!1161200 () Bool)

(declare-fun lt!1363702 () Int)

(assert (=> d!1161200 (>= lt!1363702 0)))

(declare-fun e!2420106 () Int)

(assert (=> d!1161200 (= lt!1363702 e!2420106)))

(declare-fun c!680384 () Bool)

(assert (=> d!1161200 (= c!680384 ((_ is Nil!41479) (_2!23499 lt!1363627)))))

(assert (=> d!1161200 (= (size!31144 (_2!23499 lt!1363627)) lt!1363702)))

(declare-fun b!3914310 () Bool)

(assert (=> b!3914310 (= e!2420106 0)))

(declare-fun b!3914311 () Bool)

(assert (=> b!3914311 (= e!2420106 (+ 1 (size!31144 (t!323512 (_2!23499 lt!1363627)))))))

(assert (= (and d!1161200 c!680384) b!3914310))

(assert (= (and d!1161200 (not c!680384)) b!3914311))

(declare-fun m!4477705 () Bool)

(assert (=> b!3914311 m!4477705))

(assert (=> b!3914062 d!1161200))

(declare-fun b!3914357 () Bool)

(declare-fun res!1583274 () Bool)

(declare-fun e!2420126 () Bool)

(assert (=> b!3914357 (=> (not res!1583274) (not e!2420126))))

(declare-fun lt!1363728 () Option!8878)

(assert (=> b!3914357 (= res!1583274 (= (list!15421 (charsOf!4282 (_1!23499 (get!13707 lt!1363728)))) (originalCharacters!7058 (_1!23499 (get!13707 lt!1363728)))))))

(declare-fun b!3914358 () Bool)

(declare-fun contains!8337 (List!41606 Rule!12716) Bool)

(assert (=> b!3914358 (= e!2420126 (contains!8337 rules!2768 (rule!9378 (_1!23499 (get!13707 lt!1363728)))))))

(declare-fun b!3914359 () Bool)

(declare-fun res!1583273 () Bool)

(assert (=> b!3914359 (=> (not res!1583273) (not e!2420126))))

(assert (=> b!3914359 (= res!1583273 (= (++!10674 (list!15421 (charsOf!4282 (_1!23499 (get!13707 lt!1363728)))) (_2!23499 (get!13707 lt!1363728))) lt!1363617))))

(declare-fun b!3914360 () Bool)

(declare-fun res!1583278 () Bool)

(assert (=> b!3914360 (=> (not res!1583278) (not e!2420126))))

(assert (=> b!3914360 (= res!1583278 (< (size!31144 (_2!23499 (get!13707 lt!1363728))) (size!31144 lt!1363617)))))

(declare-fun b!3914361 () Bool)

(declare-fun e!2420125 () Bool)

(assert (=> b!3914361 (= e!2420125 e!2420126)))

(declare-fun res!1583279 () Bool)

(assert (=> b!3914361 (=> (not res!1583279) (not e!2420126))))

(declare-fun isDefined!6922 (Option!8878) Bool)

(assert (=> b!3914361 (= res!1583279 (isDefined!6922 lt!1363728))))

(declare-fun d!1161202 () Bool)

(assert (=> d!1161202 e!2420125))

(declare-fun res!1583276 () Bool)

(assert (=> d!1161202 (=> res!1583276 e!2420125)))

(declare-fun isEmpty!24684 (Option!8878) Bool)

(assert (=> d!1161202 (= res!1583276 (isEmpty!24684 lt!1363728))))

(declare-fun e!2420127 () Option!8878)

(assert (=> d!1161202 (= lt!1363728 e!2420127)))

(declare-fun c!680390 () Bool)

(assert (=> d!1161202 (= c!680390 (and ((_ is Cons!41482) rules!2768) ((_ is Nil!41482) (t!323515 rules!2768))))))

(declare-fun lt!1363732 () Unit!59621)

(declare-fun lt!1363731 () Unit!59621)

(assert (=> d!1161202 (= lt!1363732 lt!1363731)))

(assert (=> d!1161202 (isPrefix!3553 lt!1363617 lt!1363617)))

(declare-fun lemmaIsPrefixRefl!2253 (List!41603 List!41603) Unit!59621)

(assert (=> d!1161202 (= lt!1363731 (lemmaIsPrefixRefl!2253 lt!1363617 lt!1363617))))

(declare-fun rulesValidInductive!2323 (LexerInterface!6047 List!41606) Bool)

(assert (=> d!1161202 (rulesValidInductive!2323 thiss!20629 rules!2768)))

(assert (=> d!1161202 (= (maxPrefix!3351 thiss!20629 rules!2768 lt!1363617) lt!1363728)))

(declare-fun bm!284413 () Bool)

(declare-fun call!284418 () Option!8878)

(assert (=> bm!284413 (= call!284418 (maxPrefixOneRule!2421 thiss!20629 (h!46902 rules!2768) lt!1363617))))

(declare-fun b!3914362 () Bool)

(declare-fun res!1583275 () Bool)

(assert (=> b!3914362 (=> (not res!1583275) (not e!2420126))))

(assert (=> b!3914362 (= res!1583275 (= (value!204687 (_1!23499 (get!13707 lt!1363728))) (apply!9697 (transformation!6458 (rule!9378 (_1!23499 (get!13707 lt!1363728)))) (seqFromList!4725 (originalCharacters!7058 (_1!23499 (get!13707 lt!1363728)))))))))

(declare-fun b!3914363 () Bool)

(declare-fun lt!1363730 () Option!8878)

(declare-fun lt!1363729 () Option!8878)

(assert (=> b!3914363 (= e!2420127 (ite (and ((_ is None!8877) lt!1363730) ((_ is None!8877) lt!1363729)) None!8877 (ite ((_ is None!8877) lt!1363729) lt!1363730 (ite ((_ is None!8877) lt!1363730) lt!1363729 (ite (>= (size!31143 (_1!23499 (v!39201 lt!1363730))) (size!31143 (_1!23499 (v!39201 lt!1363729)))) lt!1363730 lt!1363729)))))))

(assert (=> b!3914363 (= lt!1363730 call!284418)))

(assert (=> b!3914363 (= lt!1363729 (maxPrefix!3351 thiss!20629 (t!323515 rules!2768) lt!1363617))))

(declare-fun b!3914364 () Bool)

(assert (=> b!3914364 (= e!2420127 call!284418)))

(declare-fun b!3914365 () Bool)

(declare-fun res!1583277 () Bool)

(assert (=> b!3914365 (=> (not res!1583277) (not e!2420126))))

(assert (=> b!3914365 (= res!1583277 (matchR!5452 (regex!6458 (rule!9378 (_1!23499 (get!13707 lt!1363728)))) (list!15421 (charsOf!4282 (_1!23499 (get!13707 lt!1363728))))))))

(assert (= (and d!1161202 c!680390) b!3914364))

(assert (= (and d!1161202 (not c!680390)) b!3914363))

(assert (= (or b!3914364 b!3914363) bm!284413))

(assert (= (and d!1161202 (not res!1583276)) b!3914361))

(assert (= (and b!3914361 res!1583279) b!3914357))

(assert (= (and b!3914357 res!1583274) b!3914360))

(assert (= (and b!3914360 res!1583278) b!3914359))

(assert (= (and b!3914359 res!1583273) b!3914362))

(assert (= (and b!3914362 res!1583275) b!3914365))

(assert (= (and b!3914365 res!1583277) b!3914358))

(declare-fun m!4477753 () Bool)

(assert (=> b!3914361 m!4477753))

(declare-fun m!4477755 () Bool)

(assert (=> b!3914365 m!4477755))

(declare-fun m!4477757 () Bool)

(assert (=> b!3914365 m!4477757))

(assert (=> b!3914365 m!4477757))

(declare-fun m!4477759 () Bool)

(assert (=> b!3914365 m!4477759))

(assert (=> b!3914365 m!4477759))

(declare-fun m!4477761 () Bool)

(assert (=> b!3914365 m!4477761))

(assert (=> b!3914358 m!4477755))

(declare-fun m!4477763 () Bool)

(assert (=> b!3914358 m!4477763))

(declare-fun m!4477765 () Bool)

(assert (=> b!3914363 m!4477765))

(assert (=> b!3914359 m!4477755))

(assert (=> b!3914359 m!4477757))

(assert (=> b!3914359 m!4477757))

(assert (=> b!3914359 m!4477759))

(assert (=> b!3914359 m!4477759))

(declare-fun m!4477767 () Bool)

(assert (=> b!3914359 m!4477767))

(assert (=> b!3914357 m!4477755))

(assert (=> b!3914357 m!4477757))

(assert (=> b!3914357 m!4477757))

(assert (=> b!3914357 m!4477759))

(declare-fun m!4477769 () Bool)

(assert (=> d!1161202 m!4477769))

(declare-fun m!4477771 () Bool)

(assert (=> d!1161202 m!4477771))

(declare-fun m!4477773 () Bool)

(assert (=> d!1161202 m!4477773))

(declare-fun m!4477775 () Bool)

(assert (=> d!1161202 m!4477775))

(assert (=> b!3914362 m!4477755))

(declare-fun m!4477777 () Bool)

(assert (=> b!3914362 m!4477777))

(assert (=> b!3914362 m!4477777))

(declare-fun m!4477779 () Bool)

(assert (=> b!3914362 m!4477779))

(assert (=> b!3914360 m!4477755))

(declare-fun m!4477781 () Bool)

(assert (=> b!3914360 m!4477781))

(assert (=> b!3914360 m!4477463))

(declare-fun m!4477783 () Bool)

(assert (=> bm!284413 m!4477783))

(assert (=> b!3914082 d!1161202))

(declare-fun d!1161208 () Bool)

(declare-fun res!1583280 () Bool)

(declare-fun e!2420128 () Bool)

(assert (=> d!1161208 (=> (not res!1583280) (not e!2420128))))

(assert (=> d!1161208 (= res!1583280 (not (isEmpty!24681 (originalCharacters!7058 (h!46901 suffixTokens!72)))))))

(assert (=> d!1161208 (= (inv!55670 (h!46901 suffixTokens!72)) e!2420128)))

(declare-fun b!3914366 () Bool)

(declare-fun res!1583281 () Bool)

(assert (=> b!3914366 (=> (not res!1583281) (not e!2420128))))

(assert (=> b!3914366 (= res!1583281 (= (originalCharacters!7058 (h!46901 suffixTokens!72)) (list!15421 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (value!204687 (h!46901 suffixTokens!72))))))))

(declare-fun b!3914367 () Bool)

(assert (=> b!3914367 (= e!2420128 (= (size!31143 (h!46901 suffixTokens!72)) (size!31144 (originalCharacters!7058 (h!46901 suffixTokens!72)))))))

(assert (= (and d!1161208 res!1583280) b!3914366))

(assert (= (and b!3914366 res!1583281) b!3914367))

(declare-fun b_lambda!114605 () Bool)

(assert (=> (not b_lambda!114605) (not b!3914366)))

(declare-fun t!323535 () Bool)

(declare-fun tb!233207 () Bool)

(assert (=> (and b!3914075 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))) t!323535) tb!233207))

(declare-fun b!3914368 () Bool)

(declare-fun e!2420129 () Bool)

(declare-fun tp!1191421 () Bool)

(assert (=> b!3914368 (= e!2420129 (and (inv!55673 (c!680326 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (value!204687 (h!46901 suffixTokens!72))))) tp!1191421))))

(declare-fun result!282642 () Bool)

(assert (=> tb!233207 (= result!282642 (and (inv!55674 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (value!204687 (h!46901 suffixTokens!72)))) e!2420129))))

(assert (= tb!233207 b!3914368))

(declare-fun m!4477785 () Bool)

(assert (=> b!3914368 m!4477785))

(declare-fun m!4477787 () Bool)

(assert (=> tb!233207 m!4477787))

(assert (=> b!3914366 t!323535))

(declare-fun b_and!297953 () Bool)

(assert (= b_and!297941 (and (=> t!323535 result!282642) b_and!297953)))

(declare-fun t!323537 () Bool)

(declare-fun tb!233209 () Bool)

(assert (=> (and b!3914064 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))) t!323537) tb!233209))

(declare-fun result!282644 () Bool)

(assert (= result!282644 result!282642))

(assert (=> b!3914366 t!323537))

(declare-fun b_and!297955 () Bool)

(assert (= b_and!297943 (and (=> t!323537 result!282644) b_and!297955)))

(declare-fun t!323539 () Bool)

(declare-fun tb!233211 () Bool)

(assert (=> (and b!3914087 (= (toChars!8765 (transformation!6458 (h!46902 rules!2768))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))) t!323539) tb!233211))

(declare-fun result!282646 () Bool)

(assert (= result!282646 result!282642))

(assert (=> b!3914366 t!323539))

(declare-fun b_and!297957 () Bool)

(assert (= b_and!297945 (and (=> t!323539 result!282646) b_and!297957)))

(declare-fun m!4477789 () Bool)

(assert (=> d!1161208 m!4477789))

(declare-fun m!4477791 () Bool)

(assert (=> b!3914366 m!4477791))

(assert (=> b!3914366 m!4477791))

(declare-fun m!4477793 () Bool)

(assert (=> b!3914366 m!4477793))

(declare-fun m!4477795 () Bool)

(assert (=> b!3914367 m!4477795))

(assert (=> b!3914074 d!1161208))

(declare-fun b!3914423 () Bool)

(declare-fun res!1583308 () Bool)

(declare-fun e!2420161 () Bool)

(assert (=> b!3914423 (=> res!1583308 e!2420161)))

(assert (=> b!3914423 (= res!1583308 (not ((_ is ElementMatch!11363) (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))))))

(declare-fun e!2420164 () Bool)

(assert (=> b!3914423 (= e!2420164 e!2420161)))

(declare-fun b!3914424 () Bool)

(declare-fun res!1583305 () Bool)

(assert (=> b!3914424 (=> res!1583305 e!2420161)))

(declare-fun e!2420163 () Bool)

(assert (=> b!3914424 (= res!1583305 e!2420163)))

(declare-fun res!1583307 () Bool)

(assert (=> b!3914424 (=> (not res!1583307) (not e!2420163))))

(declare-fun lt!1363741 () Bool)

(assert (=> b!3914424 (= res!1583307 lt!1363741)))

(declare-fun d!1161210 () Bool)

(declare-fun e!2420159 () Bool)

(assert (=> d!1161210 e!2420159))

(declare-fun c!680409 () Bool)

(assert (=> d!1161210 (= c!680409 ((_ is EmptyExpr!11363) (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))))

(declare-fun e!2420162 () Bool)

(assert (=> d!1161210 (= lt!1363741 e!2420162)))

(declare-fun c!680408 () Bool)

(assert (=> d!1161210 (= c!680408 (isEmpty!24681 lt!1363621))))

(declare-fun validRegex!5174 (Regex!11363) Bool)

(assert (=> d!1161210 (validRegex!5174 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))))

(assert (=> d!1161210 (= (matchR!5452 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) lt!1363621) lt!1363741)))

(declare-fun b!3914425 () Bool)

(declare-fun derivativeStep!3440 (Regex!11363 C!22912) Regex!11363)

(declare-fun head!8271 (List!41603) C!22912)

(declare-fun tail!5987 (List!41603) List!41603)

(assert (=> b!3914425 (= e!2420162 (matchR!5452 (derivativeStep!3440 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (head!8271 lt!1363621)) (tail!5987 lt!1363621)))))

(declare-fun b!3914426 () Bool)

(declare-fun e!2420160 () Bool)

(assert (=> b!3914426 (= e!2420160 (not (= (head!8271 lt!1363621) (c!680327 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))))))

(declare-fun b!3914427 () Bool)

(declare-fun res!1583304 () Bool)

(assert (=> b!3914427 (=> res!1583304 e!2420160)))

(assert (=> b!3914427 (= res!1583304 (not (isEmpty!24681 (tail!5987 lt!1363621))))))

(declare-fun bm!284416 () Bool)

(declare-fun call!284421 () Bool)

(assert (=> bm!284416 (= call!284421 (isEmpty!24681 lt!1363621))))

(declare-fun b!3914428 () Bool)

(declare-fun nullable!3975 (Regex!11363) Bool)

(assert (=> b!3914428 (= e!2420162 (nullable!3975 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))))

(declare-fun b!3914429 () Bool)

(assert (=> b!3914429 (= e!2420163 (= (head!8271 lt!1363621) (c!680327 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))))))

(declare-fun b!3914430 () Bool)

(declare-fun e!2420165 () Bool)

(assert (=> b!3914430 (= e!2420161 e!2420165)))

(declare-fun res!1583303 () Bool)

(assert (=> b!3914430 (=> (not res!1583303) (not e!2420165))))

(assert (=> b!3914430 (= res!1583303 (not lt!1363741))))

(declare-fun b!3914431 () Bool)

(declare-fun res!1583306 () Bool)

(assert (=> b!3914431 (=> (not res!1583306) (not e!2420163))))

(assert (=> b!3914431 (= res!1583306 (isEmpty!24681 (tail!5987 lt!1363621)))))

(declare-fun b!3914432 () Bool)

(assert (=> b!3914432 (= e!2420165 e!2420160)))

(declare-fun res!1583302 () Bool)

(assert (=> b!3914432 (=> res!1583302 e!2420160)))

(assert (=> b!3914432 (= res!1583302 call!284421)))

(declare-fun b!3914433 () Bool)

(assert (=> b!3914433 (= e!2420159 (= lt!1363741 call!284421))))

(declare-fun b!3914434 () Bool)

(assert (=> b!3914434 (= e!2420159 e!2420164)))

(declare-fun c!680410 () Bool)

(assert (=> b!3914434 (= c!680410 ((_ is EmptyLang!11363) (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))))

(declare-fun b!3914435 () Bool)

(declare-fun res!1583309 () Bool)

(assert (=> b!3914435 (=> (not res!1583309) (not e!2420163))))

(assert (=> b!3914435 (= res!1583309 (not call!284421))))

(declare-fun b!3914436 () Bool)

(assert (=> b!3914436 (= e!2420164 (not lt!1363741))))

(assert (= (and d!1161210 c!680408) b!3914428))

(assert (= (and d!1161210 (not c!680408)) b!3914425))

(assert (= (and d!1161210 c!680409) b!3914433))

(assert (= (and d!1161210 (not c!680409)) b!3914434))

(assert (= (and b!3914434 c!680410) b!3914436))

(assert (= (and b!3914434 (not c!680410)) b!3914423))

(assert (= (and b!3914423 (not res!1583308)) b!3914424))

(assert (= (and b!3914424 res!1583307) b!3914435))

(assert (= (and b!3914435 res!1583309) b!3914431))

(assert (= (and b!3914431 res!1583306) b!3914429))

(assert (= (and b!3914424 (not res!1583305)) b!3914430))

(assert (= (and b!3914430 res!1583303) b!3914432))

(assert (= (and b!3914432 (not res!1583302)) b!3914427))

(assert (= (and b!3914427 (not res!1583304)) b!3914426))

(assert (= (or b!3914433 b!3914432 b!3914435) bm!284416))

(declare-fun m!4477817 () Bool)

(assert (=> b!3914426 m!4477817))

(declare-fun m!4477819 () Bool)

(assert (=> b!3914427 m!4477819))

(assert (=> b!3914427 m!4477819))

(declare-fun m!4477821 () Bool)

(assert (=> b!3914427 m!4477821))

(assert (=> b!3914431 m!4477819))

(assert (=> b!3914431 m!4477819))

(assert (=> b!3914431 m!4477821))

(declare-fun m!4477823 () Bool)

(assert (=> b!3914428 m!4477823))

(declare-fun m!4477825 () Bool)

(assert (=> bm!284416 m!4477825))

(assert (=> b!3914425 m!4477817))

(assert (=> b!3914425 m!4477817))

(declare-fun m!4477827 () Bool)

(assert (=> b!3914425 m!4477827))

(assert (=> b!3914425 m!4477819))

(assert (=> b!3914425 m!4477827))

(assert (=> b!3914425 m!4477819))

(declare-fun m!4477829 () Bool)

(assert (=> b!3914425 m!4477829))

(assert (=> d!1161210 m!4477825))

(declare-fun m!4477831 () Bool)

(assert (=> d!1161210 m!4477831))

(assert (=> b!3914429 m!4477817))

(assert (=> b!3914076 d!1161210))

(declare-fun b!3914570 () Bool)

(declare-fun e!2420251 () Bool)

(declare-fun e!2420249 () Bool)

(assert (=> b!3914570 (= e!2420251 e!2420249)))

(declare-fun res!1583362 () Bool)

(assert (=> b!3914570 (=> (not res!1583362) (not e!2420249))))

(declare-fun lt!1363777 () Option!8878)

(assert (=> b!3914570 (= res!1583362 (matchR!5452 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (list!15421 (charsOf!4282 (_1!23499 (get!13707 lt!1363777))))))))

(declare-fun b!3914571 () Bool)

(declare-fun res!1583365 () Bool)

(assert (=> b!3914571 (=> (not res!1583365) (not e!2420249))))

(assert (=> b!3914571 (= res!1583365 (= (rule!9378 (_1!23499 (get!13707 lt!1363777))) (rule!9378 (_1!23499 (v!39201 lt!1363624)))))))

(declare-fun b!3914572 () Bool)

(declare-fun e!2420250 () Bool)

(declare-datatypes ((tuple2!40736 0))(
  ( (tuple2!40737 (_1!23502 List!41603) (_2!23502 List!41603)) )
))
(declare-fun findLongestMatchInner!1236 (Regex!11363 List!41603 Int List!41603 List!41603 Int) tuple2!40736)

(assert (=> b!3914572 (= e!2420250 (matchR!5452 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (_1!23502 (findLongestMatchInner!1236 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) Nil!41479 (size!31144 Nil!41479) lt!1363617 lt!1363617 (size!31144 lt!1363617)))))))

(declare-fun d!1161232 () Bool)

(assert (=> d!1161232 e!2420251))

(declare-fun res!1583361 () Bool)

(assert (=> d!1161232 (=> res!1583361 e!2420251)))

(assert (=> d!1161232 (= res!1583361 (isEmpty!24684 lt!1363777))))

(declare-fun e!2420252 () Option!8878)

(assert (=> d!1161232 (= lt!1363777 e!2420252)))

(declare-fun c!680421 () Bool)

(declare-fun lt!1363773 () tuple2!40736)

(assert (=> d!1161232 (= c!680421 (isEmpty!24681 (_1!23502 lt!1363773)))))

(declare-fun findLongestMatch!1149 (Regex!11363 List!41603) tuple2!40736)

(assert (=> d!1161232 (= lt!1363773 (findLongestMatch!1149 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) lt!1363617))))

(assert (=> d!1161232 (ruleValid!2406 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))

(assert (=> d!1161232 (= (maxPrefixOneRule!2421 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))) lt!1363617) lt!1363777)))

(declare-fun b!3914573 () Bool)

(declare-fun res!1583366 () Bool)

(assert (=> b!3914573 (=> (not res!1583366) (not e!2420249))))

(assert (=> b!3914573 (= res!1583366 (= (++!10674 (list!15421 (charsOf!4282 (_1!23499 (get!13707 lt!1363777)))) (_2!23499 (get!13707 lt!1363777))) lt!1363617))))

(declare-fun b!3914574 () Bool)

(assert (=> b!3914574 (= e!2420249 (= (size!31143 (_1!23499 (get!13707 lt!1363777))) (size!31144 (originalCharacters!7058 (_1!23499 (get!13707 lt!1363777))))))))

(declare-fun b!3914575 () Bool)

(declare-fun size!31148 (BalanceConc!24932) Int)

(assert (=> b!3914575 (= e!2420252 (Some!8877 (tuple2!40731 (Token!12055 (apply!9697 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (seqFromList!4725 (_1!23502 lt!1363773))) (rule!9378 (_1!23499 (v!39201 lt!1363624))) (size!31148 (seqFromList!4725 (_1!23502 lt!1363773))) (_1!23502 lt!1363773)) (_2!23502 lt!1363773))))))

(declare-fun lt!1363774 () Unit!59621)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1209 (Regex!11363 List!41603) Unit!59621)

(assert (=> b!3914575 (= lt!1363774 (longestMatchIsAcceptedByMatchOrIsEmpty!1209 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) lt!1363617))))

(declare-fun res!1583367 () Bool)

(assert (=> b!3914575 (= res!1583367 (isEmpty!24681 (_1!23502 (findLongestMatchInner!1236 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) Nil!41479 (size!31144 Nil!41479) lt!1363617 lt!1363617 (size!31144 lt!1363617)))))))

(assert (=> b!3914575 (=> res!1583367 e!2420250)))

(assert (=> b!3914575 e!2420250))

(declare-fun lt!1363776 () Unit!59621)

(assert (=> b!3914575 (= lt!1363776 lt!1363774)))

(declare-fun lt!1363775 () Unit!59621)

(declare-fun lemmaSemiInverse!1742 (TokenValueInjection!12804 BalanceConc!24932) Unit!59621)

(assert (=> b!3914575 (= lt!1363775 (lemmaSemiInverse!1742 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (seqFromList!4725 (_1!23502 lt!1363773))))))

(declare-fun b!3914576 () Bool)

(assert (=> b!3914576 (= e!2420252 None!8877)))

(declare-fun b!3914577 () Bool)

(declare-fun res!1583364 () Bool)

(assert (=> b!3914577 (=> (not res!1583364) (not e!2420249))))

(assert (=> b!3914577 (= res!1583364 (= (value!204687 (_1!23499 (get!13707 lt!1363777))) (apply!9697 (transformation!6458 (rule!9378 (_1!23499 (get!13707 lt!1363777)))) (seqFromList!4725 (originalCharacters!7058 (_1!23499 (get!13707 lt!1363777)))))))))

(declare-fun b!3914578 () Bool)

(declare-fun res!1583363 () Bool)

(assert (=> b!3914578 (=> (not res!1583363) (not e!2420249))))

(assert (=> b!3914578 (= res!1583363 (< (size!31144 (_2!23499 (get!13707 lt!1363777))) (size!31144 lt!1363617)))))

(assert (= (and d!1161232 c!680421) b!3914576))

(assert (= (and d!1161232 (not c!680421)) b!3914575))

(assert (= (and b!3914575 (not res!1583367)) b!3914572))

(assert (= (and d!1161232 (not res!1583361)) b!3914570))

(assert (= (and b!3914570 res!1583362) b!3914573))

(assert (= (and b!3914573 res!1583366) b!3914578))

(assert (= (and b!3914578 res!1583363) b!3914571))

(assert (= (and b!3914571 res!1583365) b!3914577))

(assert (= (and b!3914577 res!1583364) b!3914574))

(declare-fun m!4477949 () Bool)

(assert (=> d!1161232 m!4477949))

(declare-fun m!4477951 () Bool)

(assert (=> d!1161232 m!4477951))

(declare-fun m!4477953 () Bool)

(assert (=> d!1161232 m!4477953))

(assert (=> d!1161232 m!4477427))

(declare-fun m!4477955 () Bool)

(assert (=> b!3914574 m!4477955))

(declare-fun m!4477957 () Bool)

(assert (=> b!3914574 m!4477957))

(declare-fun m!4477959 () Bool)

(assert (=> b!3914572 m!4477959))

(assert (=> b!3914572 m!4477463))

(assert (=> b!3914572 m!4477959))

(assert (=> b!3914572 m!4477463))

(declare-fun m!4477961 () Bool)

(assert (=> b!3914572 m!4477961))

(declare-fun m!4477963 () Bool)

(assert (=> b!3914572 m!4477963))

(assert (=> b!3914573 m!4477955))

(declare-fun m!4477965 () Bool)

(assert (=> b!3914573 m!4477965))

(assert (=> b!3914573 m!4477965))

(declare-fun m!4477967 () Bool)

(assert (=> b!3914573 m!4477967))

(assert (=> b!3914573 m!4477967))

(declare-fun m!4477969 () Bool)

(assert (=> b!3914573 m!4477969))

(assert (=> b!3914577 m!4477955))

(declare-fun m!4477971 () Bool)

(assert (=> b!3914577 m!4477971))

(assert (=> b!3914577 m!4477971))

(declare-fun m!4477973 () Bool)

(assert (=> b!3914577 m!4477973))

(assert (=> b!3914570 m!4477955))

(assert (=> b!3914570 m!4477965))

(assert (=> b!3914570 m!4477965))

(assert (=> b!3914570 m!4477967))

(assert (=> b!3914570 m!4477967))

(declare-fun m!4477975 () Bool)

(assert (=> b!3914570 m!4477975))

(declare-fun m!4477977 () Bool)

(assert (=> b!3914575 m!4477977))

(declare-fun m!4477979 () Bool)

(assert (=> b!3914575 m!4477979))

(assert (=> b!3914575 m!4477959))

(assert (=> b!3914575 m!4477979))

(declare-fun m!4477981 () Bool)

(assert (=> b!3914575 m!4477981))

(assert (=> b!3914575 m!4477959))

(assert (=> b!3914575 m!4477463))

(assert (=> b!3914575 m!4477961))

(assert (=> b!3914575 m!4477979))

(declare-fun m!4477983 () Bool)

(assert (=> b!3914575 m!4477983))

(declare-fun m!4477985 () Bool)

(assert (=> b!3914575 m!4477985))

(assert (=> b!3914575 m!4477463))

(assert (=> b!3914575 m!4477979))

(declare-fun m!4477987 () Bool)

(assert (=> b!3914575 m!4477987))

(assert (=> b!3914571 m!4477955))

(assert (=> b!3914578 m!4477955))

(declare-fun m!4477989 () Bool)

(assert (=> b!3914578 m!4477989))

(assert (=> b!3914578 m!4477463))

(assert (=> b!3914076 d!1161232))

(declare-fun d!1161262 () Bool)

(assert (=> d!1161262 (= (maxPrefixOneRule!2421 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))) lt!1363617) (Some!8877 (tuple2!40731 (Token!12055 (apply!9697 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (seqFromList!4725 lt!1363621)) (rule!9378 (_1!23499 (v!39201 lt!1363624))) (size!31144 lt!1363621) lt!1363621) (_2!23499 (v!39201 lt!1363624)))))))

(declare-fun lt!1363780 () Unit!59621)

(declare-fun choose!23181 (LexerInterface!6047 List!41606 List!41603 List!41603 List!41603 Rule!12716) Unit!59621)

(assert (=> d!1161262 (= lt!1363780 (choose!23181 thiss!20629 rules!2768 lt!1363621 lt!1363617 (_2!23499 (v!39201 lt!1363624)) (rule!9378 (_1!23499 (v!39201 lt!1363624)))))))

(assert (=> d!1161262 (not (isEmpty!24682 rules!2768))))

(assert (=> d!1161262 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1289 thiss!20629 rules!2768 lt!1363621 lt!1363617 (_2!23499 (v!39201 lt!1363624)) (rule!9378 (_1!23499 (v!39201 lt!1363624)))) lt!1363780)))

(declare-fun bs!585674 () Bool)

(assert (= bs!585674 d!1161262))

(assert (=> bs!585674 m!4477425))

(assert (=> bs!585674 m!4477435))

(assert (=> bs!585674 m!4477425))

(assert (=> bs!585674 m!4477495))

(declare-fun m!4477991 () Bool)

(assert (=> bs!585674 m!4477991))

(assert (=> bs!585674 m!4477437))

(assert (=> bs!585674 m!4477479))

(assert (=> b!3914076 d!1161262))

(declare-fun d!1161264 () Bool)

(assert (=> d!1161264 (= (isEmpty!24681 prefix!426) ((_ is Nil!41479) prefix!426))))

(assert (=> b!3914077 d!1161264))

(declare-fun d!1161266 () Bool)

(declare-fun res!1583370 () Bool)

(declare-fun e!2420255 () Bool)

(assert (=> d!1161266 (=> (not res!1583370) (not e!2420255))))

(declare-fun rulesValid!2508 (LexerInterface!6047 List!41606) Bool)

(assert (=> d!1161266 (= res!1583370 (rulesValid!2508 thiss!20629 rules!2768))))

(assert (=> d!1161266 (= (rulesInvariant!5390 thiss!20629 rules!2768) e!2420255)))

(declare-fun b!3914581 () Bool)

(declare-datatypes ((List!41607 0))(
  ( (Nil!41483) (Cons!41483 (h!46903 String!47158) (t!323612 List!41607)) )
))
(declare-fun noDuplicateTag!2509 (LexerInterface!6047 List!41606 List!41607) Bool)

(assert (=> b!3914581 (= e!2420255 (noDuplicateTag!2509 thiss!20629 rules!2768 Nil!41483))))

(assert (= (and d!1161266 res!1583370) b!3914581))

(declare-fun m!4477993 () Bool)

(assert (=> d!1161266 m!4477993))

(declare-fun m!4477995 () Bool)

(assert (=> b!3914581 m!4477995))

(assert (=> b!3914070 d!1161266))

(declare-fun d!1161268 () Bool)

(assert (=> d!1161268 (= (size!31143 (_1!23499 (v!39201 lt!1363624))) (size!31144 (originalCharacters!7058 (_1!23499 (v!39201 lt!1363624)))))))

(declare-fun Unit!59624 () Unit!59621)

(assert (=> d!1161268 (= (lemmaCharactersSize!1115 (_1!23499 (v!39201 lt!1363624))) Unit!59624)))

(declare-fun bs!585675 () Bool)

(assert (= bs!585675 d!1161268))

(assert (=> bs!585675 m!4477481))

(assert (=> b!3914068 d!1161268))

(declare-fun d!1161270 () Bool)

(declare-fun dynLambda!17822 (Int BalanceConc!24932) TokenValue!6688)

(assert (=> d!1161270 (= (apply!9697 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (seqFromList!4725 lt!1363621)) (dynLambda!17822 (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))) (seqFromList!4725 lt!1363621)))))

(declare-fun b_lambda!114615 () Bool)

(assert (=> (not b_lambda!114615) (not d!1161270)))

(declare-fun tb!233249 () Bool)

(declare-fun t!323577 () Bool)

(assert (=> (and b!3914075 (= (toValue!8906 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323577) tb!233249))

(declare-fun result!282692 () Bool)

(assert (=> tb!233249 (= result!282692 (inv!21 (dynLambda!17822 (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))) (seqFromList!4725 lt!1363621))))))

(declare-fun m!4477997 () Bool)

(assert (=> tb!233249 m!4477997))

(assert (=> d!1161270 t!323577))

(declare-fun b_and!297983 () Bool)

(assert (= b_and!297923 (and (=> t!323577 result!282692) b_and!297983)))

(declare-fun tb!233251 () Bool)

(declare-fun t!323579 () Bool)

(assert (=> (and b!3914064 (= (toValue!8906 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323579) tb!233251))

(declare-fun result!282696 () Bool)

(assert (= result!282696 result!282692))

(assert (=> d!1161270 t!323579))

(declare-fun b_and!297985 () Bool)

(assert (= b_and!297927 (and (=> t!323579 result!282696) b_and!297985)))

(declare-fun tb!233253 () Bool)

(declare-fun t!323581 () Bool)

(assert (=> (and b!3914087 (= (toValue!8906 (transformation!6458 (h!46902 rules!2768))) (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323581) tb!233253))

(declare-fun result!282698 () Bool)

(assert (= result!282698 result!282692))

(assert (=> d!1161270 t!323581))

(declare-fun b_and!297987 () Bool)

(assert (= b_and!297931 (and (=> t!323581 result!282698) b_and!297987)))

(assert (=> d!1161270 m!4477425))

(declare-fun m!4477999 () Bool)

(assert (=> d!1161270 m!4477999))

(assert (=> b!3914068 d!1161270))

(declare-fun b!3914592 () Bool)

(declare-fun e!2420266 () Bool)

(declare-fun e!2420267 () Bool)

(assert (=> b!3914592 (= e!2420266 e!2420267)))

(declare-fun res!1583380 () Bool)

(assert (=> b!3914592 (=> (not res!1583380) (not e!2420267))))

(assert (=> b!3914592 (= res!1583380 (not ((_ is Nil!41479) lt!1363623)))))

(declare-fun b!3914593 () Bool)

(declare-fun res!1583379 () Bool)

(assert (=> b!3914593 (=> (not res!1583379) (not e!2420267))))

(assert (=> b!3914593 (= res!1583379 (= (head!8271 lt!1363621) (head!8271 lt!1363623)))))

(declare-fun d!1161272 () Bool)

(declare-fun e!2420265 () Bool)

(assert (=> d!1161272 e!2420265))

(declare-fun res!1583381 () Bool)

(assert (=> d!1161272 (=> res!1583381 e!2420265)))

(declare-fun lt!1363783 () Bool)

(assert (=> d!1161272 (= res!1583381 (not lt!1363783))))

(assert (=> d!1161272 (= lt!1363783 e!2420266)))

(declare-fun res!1583382 () Bool)

(assert (=> d!1161272 (=> res!1583382 e!2420266)))

(assert (=> d!1161272 (= res!1583382 ((_ is Nil!41479) lt!1363621))))

(assert (=> d!1161272 (= (isPrefix!3553 lt!1363621 lt!1363623) lt!1363783)))

(declare-fun b!3914594 () Bool)

(assert (=> b!3914594 (= e!2420267 (isPrefix!3553 (tail!5987 lt!1363621) (tail!5987 lt!1363623)))))

(declare-fun b!3914595 () Bool)

(assert (=> b!3914595 (= e!2420265 (>= (size!31144 lt!1363623) (size!31144 lt!1363621)))))

(assert (= (and d!1161272 (not res!1583382)) b!3914592))

(assert (= (and b!3914592 res!1583380) b!3914593))

(assert (= (and b!3914593 res!1583379) b!3914594))

(assert (= (and d!1161272 (not res!1583381)) b!3914595))

(assert (=> b!3914593 m!4477817))

(declare-fun m!4478001 () Bool)

(assert (=> b!3914593 m!4478001))

(assert (=> b!3914594 m!4477819))

(declare-fun m!4478003 () Bool)

(assert (=> b!3914594 m!4478003))

(assert (=> b!3914594 m!4477819))

(assert (=> b!3914594 m!4478003))

(declare-fun m!4478005 () Bool)

(assert (=> b!3914594 m!4478005))

(declare-fun m!4478007 () Bool)

(assert (=> b!3914595 m!4478007))

(assert (=> b!3914595 m!4477437))

(assert (=> b!3914068 d!1161272))

(declare-fun d!1161274 () Bool)

(assert (=> d!1161274 (= (_2!23499 (v!39201 lt!1363624)) lt!1363620)))

(declare-fun lt!1363786 () Unit!59621)

(declare-fun choose!23182 (List!41603 List!41603 List!41603 List!41603 List!41603) Unit!59621)

(assert (=> d!1161274 (= lt!1363786 (choose!23182 lt!1363621 (_2!23499 (v!39201 lt!1363624)) lt!1363621 lt!1363620 lt!1363617))))

(assert (=> d!1161274 (isPrefix!3553 lt!1363621 lt!1363617)))

(assert (=> d!1161274 (= (lemmaSamePrefixThenSameSuffix!1774 lt!1363621 (_2!23499 (v!39201 lt!1363624)) lt!1363621 lt!1363620 lt!1363617) lt!1363786)))

(declare-fun bs!585676 () Bool)

(assert (= bs!585676 d!1161274))

(declare-fun m!4478009 () Bool)

(assert (=> bs!585676 m!4478009))

(declare-fun m!4478011 () Bool)

(assert (=> bs!585676 m!4478011))

(assert (=> b!3914068 d!1161274))

(declare-fun d!1161276 () Bool)

(declare-fun fromListB!2184 (List!41603) BalanceConc!24932)

(assert (=> d!1161276 (= (seqFromList!4725 lt!1363621) (fromListB!2184 lt!1363621))))

(declare-fun bs!585677 () Bool)

(assert (= bs!585677 d!1161276))

(declare-fun m!4478013 () Bool)

(assert (=> bs!585677 m!4478013))

(assert (=> b!3914068 d!1161276))

(declare-fun d!1161278 () Bool)

(declare-fun lt!1363789 () List!41603)

(assert (=> d!1161278 (= (++!10674 lt!1363621 lt!1363789) lt!1363617)))

(declare-fun e!2420270 () List!41603)

(assert (=> d!1161278 (= lt!1363789 e!2420270)))

(declare-fun c!680424 () Bool)

(assert (=> d!1161278 (= c!680424 ((_ is Cons!41479) lt!1363621))))

(assert (=> d!1161278 (>= (size!31144 lt!1363617) (size!31144 lt!1363621))))

(assert (=> d!1161278 (= (getSuffix!2008 lt!1363617 lt!1363621) lt!1363789)))

(declare-fun b!3914600 () Bool)

(assert (=> b!3914600 (= e!2420270 (getSuffix!2008 (tail!5987 lt!1363617) (t!323512 lt!1363621)))))

(declare-fun b!3914601 () Bool)

(assert (=> b!3914601 (= e!2420270 lt!1363617)))

(assert (= (and d!1161278 c!680424) b!3914600))

(assert (= (and d!1161278 (not c!680424)) b!3914601))

(declare-fun m!4478015 () Bool)

(assert (=> d!1161278 m!4478015))

(assert (=> d!1161278 m!4477463))

(assert (=> d!1161278 m!4477437))

(declare-fun m!4478017 () Bool)

(assert (=> b!3914600 m!4478017))

(assert (=> b!3914600 m!4478017))

(declare-fun m!4478019 () Bool)

(assert (=> b!3914600 m!4478019))

(assert (=> b!3914068 d!1161278))

(declare-fun d!1161280 () Bool)

(assert (=> d!1161280 (ruleValid!2406 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))

(declare-fun lt!1363792 () Unit!59621)

(declare-fun choose!23183 (LexerInterface!6047 Rule!12716 List!41606) Unit!59621)

(assert (=> d!1161280 (= lt!1363792 (choose!23183 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))) rules!2768))))

(assert (=> d!1161280 (contains!8337 rules!2768 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))

(assert (=> d!1161280 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1486 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624))) rules!2768) lt!1363792)))

(declare-fun bs!585678 () Bool)

(assert (= bs!585678 d!1161280))

(assert (=> bs!585678 m!4477427))

(declare-fun m!4478021 () Bool)

(assert (=> bs!585678 m!4478021))

(declare-fun m!4478023 () Bool)

(assert (=> bs!585678 m!4478023))

(assert (=> b!3914068 d!1161280))

(declare-fun d!1161282 () Bool)

(declare-fun e!2420271 () Bool)

(assert (=> d!1161282 e!2420271))

(declare-fun res!1583384 () Bool)

(assert (=> d!1161282 (=> (not res!1583384) (not e!2420271))))

(declare-fun lt!1363793 () List!41603)

(assert (=> d!1161282 (= res!1583384 (= (content!6234 lt!1363793) ((_ map or) (content!6234 lt!1363621) (content!6234 (_2!23499 (v!39201 lt!1363624))))))))

(declare-fun e!2420272 () List!41603)

(assert (=> d!1161282 (= lt!1363793 e!2420272)))

(declare-fun c!680425 () Bool)

(assert (=> d!1161282 (= c!680425 ((_ is Nil!41479) lt!1363621))))

(assert (=> d!1161282 (= (++!10674 lt!1363621 (_2!23499 (v!39201 lt!1363624))) lt!1363793)))

(declare-fun b!3914603 () Bool)

(assert (=> b!3914603 (= e!2420272 (Cons!41479 (h!46899 lt!1363621) (++!10674 (t!323512 lt!1363621) (_2!23499 (v!39201 lt!1363624)))))))

(declare-fun b!3914604 () Bool)

(declare-fun res!1583383 () Bool)

(assert (=> b!3914604 (=> (not res!1583383) (not e!2420271))))

(assert (=> b!3914604 (= res!1583383 (= (size!31144 lt!1363793) (+ (size!31144 lt!1363621) (size!31144 (_2!23499 (v!39201 lt!1363624))))))))

(declare-fun b!3914605 () Bool)

(assert (=> b!3914605 (= e!2420271 (or (not (= (_2!23499 (v!39201 lt!1363624)) Nil!41479)) (= lt!1363793 lt!1363621)))))

(declare-fun b!3914602 () Bool)

(assert (=> b!3914602 (= e!2420272 (_2!23499 (v!39201 lt!1363624)))))

(assert (= (and d!1161282 c!680425) b!3914602))

(assert (= (and d!1161282 (not c!680425)) b!3914603))

(assert (= (and d!1161282 res!1583384) b!3914604))

(assert (= (and b!3914604 res!1583383) b!3914605))

(declare-fun m!4478025 () Bool)

(assert (=> d!1161282 m!4478025))

(declare-fun m!4478027 () Bool)

(assert (=> d!1161282 m!4478027))

(declare-fun m!4478029 () Bool)

(assert (=> d!1161282 m!4478029))

(declare-fun m!4478031 () Bool)

(assert (=> b!3914603 m!4478031))

(declare-fun m!4478033 () Bool)

(assert (=> b!3914604 m!4478033))

(assert (=> b!3914604 m!4477437))

(assert (=> b!3914604 m!4477485))

(assert (=> b!3914068 d!1161282))

(declare-fun d!1161284 () Bool)

(declare-fun list!15423 (Conc!12669) List!41603)

(assert (=> d!1161284 (= (list!15421 (charsOf!4282 (_1!23499 (v!39201 lt!1363624)))) (list!15423 (c!680326 (charsOf!4282 (_1!23499 (v!39201 lt!1363624))))))))

(declare-fun bs!585679 () Bool)

(assert (= bs!585679 d!1161284))

(declare-fun m!4478035 () Bool)

(assert (=> bs!585679 m!4478035))

(assert (=> b!3914068 d!1161284))

(declare-fun b!3914606 () Bool)

(declare-fun e!2420273 () Bool)

(declare-fun lt!1363796 () tuple2!40732)

(assert (=> b!3914606 (= e!2420273 (= (_2!23500 lt!1363796) (_2!23499 (v!39201 lt!1363624))))))

(declare-fun b!3914607 () Bool)

(declare-fun e!2420274 () tuple2!40732)

(declare-fun lt!1363794 () Option!8878)

(declare-fun lt!1363795 () tuple2!40732)

(assert (=> b!3914607 (= e!2420274 (tuple2!40733 (Cons!41481 (_1!23499 (v!39201 lt!1363794)) (_1!23500 lt!1363795)) (_2!23500 lt!1363795)))))

(assert (=> b!3914607 (= lt!1363795 (lexList!1815 thiss!20629 rules!2768 (_2!23499 (v!39201 lt!1363794))))))

(declare-fun d!1161286 () Bool)

(assert (=> d!1161286 e!2420273))

(declare-fun c!680426 () Bool)

(assert (=> d!1161286 (= c!680426 (> (size!31146 (_1!23500 lt!1363796)) 0))))

(assert (=> d!1161286 (= lt!1363796 e!2420274)))

(declare-fun c!680427 () Bool)

(assert (=> d!1161286 (= c!680427 ((_ is Some!8877) lt!1363794))))

(assert (=> d!1161286 (= lt!1363794 (maxPrefix!3351 thiss!20629 rules!2768 (_2!23499 (v!39201 lt!1363624))))))

(assert (=> d!1161286 (= (lexList!1815 thiss!20629 rules!2768 (_2!23499 (v!39201 lt!1363624))) lt!1363796)))

(declare-fun b!3914608 () Bool)

(assert (=> b!3914608 (= e!2420274 (tuple2!40733 Nil!41481 (_2!23499 (v!39201 lt!1363624))))))

(declare-fun b!3914609 () Bool)

(declare-fun e!2420275 () Bool)

(assert (=> b!3914609 (= e!2420275 (not (isEmpty!24680 (_1!23500 lt!1363796))))))

(declare-fun b!3914610 () Bool)

(assert (=> b!3914610 (= e!2420273 e!2420275)))

(declare-fun res!1583385 () Bool)

(assert (=> b!3914610 (= res!1583385 (< (size!31144 (_2!23500 lt!1363796)) (size!31144 (_2!23499 (v!39201 lt!1363624)))))))

(assert (=> b!3914610 (=> (not res!1583385) (not e!2420275))))

(assert (= (and d!1161286 c!680427) b!3914607))

(assert (= (and d!1161286 (not c!680427)) b!3914608))

(assert (= (and d!1161286 c!680426) b!3914610))

(assert (= (and d!1161286 (not c!680426)) b!3914606))

(assert (= (and b!3914610 res!1583385) b!3914609))

(declare-fun m!4478037 () Bool)

(assert (=> b!3914607 m!4478037))

(declare-fun m!4478039 () Bool)

(assert (=> d!1161286 m!4478039))

(declare-fun m!4478041 () Bool)

(assert (=> d!1161286 m!4478041))

(declare-fun m!4478043 () Bool)

(assert (=> b!3914609 m!4478043))

(declare-fun m!4478045 () Bool)

(assert (=> b!3914610 m!4478045))

(assert (=> b!3914610 m!4477485))

(assert (=> b!3914068 d!1161286))

(declare-fun d!1161288 () Bool)

(declare-fun res!1583390 () Bool)

(declare-fun e!2420278 () Bool)

(assert (=> d!1161288 (=> (not res!1583390) (not e!2420278))))

(assert (=> d!1161288 (= res!1583390 (validRegex!5174 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))))))

(assert (=> d!1161288 (= (ruleValid!2406 thiss!20629 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) e!2420278)))

(declare-fun b!3914615 () Bool)

(declare-fun res!1583391 () Bool)

(assert (=> b!3914615 (=> (not res!1583391) (not e!2420278))))

(assert (=> b!3914615 (= res!1583391 (not (nullable!3975 (regex!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))))))

(declare-fun b!3914616 () Bool)

(assert (=> b!3914616 (= e!2420278 (not (= (tag!7318 (rule!9378 (_1!23499 (v!39201 lt!1363624)))) (String!47159 ""))))))

(assert (= (and d!1161288 res!1583390) b!3914615))

(assert (= (and b!3914615 res!1583391) b!3914616))

(assert (=> d!1161288 m!4477831))

(assert (=> b!3914615 m!4477823))

(assert (=> b!3914068 d!1161288))

(declare-fun d!1161290 () Bool)

(declare-fun lt!1363797 () Int)

(assert (=> d!1161290 (>= lt!1363797 0)))

(declare-fun e!2420279 () Int)

(assert (=> d!1161290 (= lt!1363797 e!2420279)))

(declare-fun c!680428 () Bool)

(assert (=> d!1161290 (= c!680428 ((_ is Nil!41479) lt!1363621))))

(assert (=> d!1161290 (= (size!31144 lt!1363621) lt!1363797)))

(declare-fun b!3914617 () Bool)

(assert (=> b!3914617 (= e!2420279 0)))

(declare-fun b!3914618 () Bool)

(assert (=> b!3914618 (= e!2420279 (+ 1 (size!31144 (t!323512 lt!1363621))))))

(assert (= (and d!1161290 c!680428) b!3914617))

(assert (= (and d!1161290 (not c!680428)) b!3914618))

(declare-fun m!4478047 () Bool)

(assert (=> b!3914618 m!4478047))

(assert (=> b!3914068 d!1161290))

(declare-fun d!1161292 () Bool)

(declare-fun lt!1363800 () BalanceConc!24932)

(assert (=> d!1161292 (= (list!15421 lt!1363800) (originalCharacters!7058 (_1!23499 (v!39201 lt!1363624))))))

(assert (=> d!1161292 (= lt!1363800 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))) (value!204687 (_1!23499 (v!39201 lt!1363624)))))))

(assert (=> d!1161292 (= (charsOf!4282 (_1!23499 (v!39201 lt!1363624))) lt!1363800)))

(declare-fun b_lambda!114617 () Bool)

(assert (=> (not b_lambda!114617) (not d!1161292)))

(declare-fun t!323583 () Bool)

(declare-fun tb!233255 () Bool)

(assert (=> (and b!3914075 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323583) tb!233255))

(declare-fun b!3914619 () Bool)

(declare-fun e!2420280 () Bool)

(declare-fun tp!1191488 () Bool)

(assert (=> b!3914619 (= e!2420280 (and (inv!55673 (c!680326 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))) (value!204687 (_1!23499 (v!39201 lt!1363624)))))) tp!1191488))))

(declare-fun result!282700 () Bool)

(assert (=> tb!233255 (= result!282700 (and (inv!55674 (dynLambda!17821 (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624))))) (value!204687 (_1!23499 (v!39201 lt!1363624))))) e!2420280))))

(assert (= tb!233255 b!3914619))

(declare-fun m!4478049 () Bool)

(assert (=> b!3914619 m!4478049))

(declare-fun m!4478051 () Bool)

(assert (=> tb!233255 m!4478051))

(assert (=> d!1161292 t!323583))

(declare-fun b_and!297989 () Bool)

(assert (= b_and!297953 (and (=> t!323583 result!282700) b_and!297989)))

(declare-fun tb!233257 () Bool)

(declare-fun t!323585 () Bool)

(assert (=> (and b!3914064 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323585) tb!233257))

(declare-fun result!282702 () Bool)

(assert (= result!282702 result!282700))

(assert (=> d!1161292 t!323585))

(declare-fun b_and!297991 () Bool)

(assert (= b_and!297955 (and (=> t!323585 result!282702) b_and!297991)))

(declare-fun t!323587 () Bool)

(declare-fun tb!233259 () Bool)

(assert (=> (and b!3914087 (= (toChars!8765 (transformation!6458 (h!46902 rules!2768))) (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323587) tb!233259))

(declare-fun result!282704 () Bool)

(assert (= result!282704 result!282700))

(assert (=> d!1161292 t!323587))

(declare-fun b_and!297993 () Bool)

(assert (= b_and!297957 (and (=> t!323587 result!282704) b_and!297993)))

(declare-fun m!4478053 () Bool)

(assert (=> d!1161292 m!4478053))

(declare-fun m!4478055 () Bool)

(assert (=> d!1161292 m!4478055))

(assert (=> b!3914068 d!1161292))

(declare-fun d!1161294 () Bool)

(assert (=> d!1161294 (isPrefix!3553 lt!1363621 (++!10674 lt!1363621 (_2!23499 (v!39201 lt!1363624))))))

(declare-fun lt!1363803 () Unit!59621)

(declare-fun choose!23184 (List!41603 List!41603) Unit!59621)

(assert (=> d!1161294 (= lt!1363803 (choose!23184 lt!1363621 (_2!23499 (v!39201 lt!1363624))))))

(assert (=> d!1161294 (= (lemmaConcatTwoListThenFirstIsPrefix!2416 lt!1363621 (_2!23499 (v!39201 lt!1363624))) lt!1363803)))

(declare-fun bs!585680 () Bool)

(assert (= bs!585680 d!1161294))

(assert (=> bs!585680 m!4477441))

(assert (=> bs!585680 m!4477441))

(declare-fun m!4478057 () Bool)

(assert (=> bs!585680 m!4478057))

(declare-fun m!4478059 () Bool)

(assert (=> bs!585680 m!4478059))

(assert (=> b!3914068 d!1161294))

(declare-fun d!1161296 () Bool)

(declare-fun lt!1363804 () Int)

(assert (=> d!1161296 (>= lt!1363804 0)))

(declare-fun e!2420281 () Int)

(assert (=> d!1161296 (= lt!1363804 e!2420281)))

(declare-fun c!680429 () Bool)

(assert (=> d!1161296 (= c!680429 ((_ is Nil!41479) suffix!1176))))

(assert (=> d!1161296 (= (size!31144 suffix!1176) lt!1363804)))

(declare-fun b!3914620 () Bool)

(assert (=> b!3914620 (= e!2420281 0)))

(declare-fun b!3914621 () Bool)

(assert (=> b!3914621 (= e!2420281 (+ 1 (size!31144 (t!323512 suffix!1176))))))

(assert (= (and d!1161296 c!680429) b!3914620))

(assert (= (and d!1161296 (not c!680429)) b!3914621))

(declare-fun m!4478061 () Bool)

(assert (=> b!3914621 m!4478061))

(assert (=> b!3914069 d!1161296))

(declare-fun d!1161298 () Bool)

(declare-fun lt!1363805 () Int)

(assert (=> d!1161298 (>= lt!1363805 0)))

(declare-fun e!2420282 () Int)

(assert (=> d!1161298 (= lt!1363805 e!2420282)))

(declare-fun c!680430 () Bool)

(assert (=> d!1161298 (= c!680430 ((_ is Nil!41479) (_2!23499 (v!39201 lt!1363624))))))

(assert (=> d!1161298 (= (size!31144 (_2!23499 (v!39201 lt!1363624))) lt!1363805)))

(declare-fun b!3914622 () Bool)

(assert (=> b!3914622 (= e!2420282 0)))

(declare-fun b!3914623 () Bool)

(assert (=> b!3914623 (= e!2420282 (+ 1 (size!31144 (t!323512 (_2!23499 (v!39201 lt!1363624))))))))

(assert (= (and d!1161298 c!680430) b!3914622))

(assert (= (and d!1161298 (not c!680430)) b!3914623))

(declare-fun m!4478063 () Bool)

(assert (=> b!3914623 m!4478063))

(assert (=> b!3914069 d!1161298))

(declare-fun b!3914624 () Bool)

(declare-fun e!2420283 () Bool)

(declare-fun lt!1363808 () tuple2!40732)

(assert (=> b!3914624 (= e!2420283 (= (_2!23500 lt!1363808) suffix!1176))))

(declare-fun b!3914625 () Bool)

(declare-fun e!2420284 () tuple2!40732)

(declare-fun lt!1363806 () Option!8878)

(declare-fun lt!1363807 () tuple2!40732)

(assert (=> b!3914625 (= e!2420284 (tuple2!40733 (Cons!41481 (_1!23499 (v!39201 lt!1363806)) (_1!23500 lt!1363807)) (_2!23500 lt!1363807)))))

(assert (=> b!3914625 (= lt!1363807 (lexList!1815 thiss!20629 rules!2768 (_2!23499 (v!39201 lt!1363806))))))

(declare-fun d!1161300 () Bool)

(assert (=> d!1161300 e!2420283))

(declare-fun c!680431 () Bool)

(assert (=> d!1161300 (= c!680431 (> (size!31146 (_1!23500 lt!1363808)) 0))))

(assert (=> d!1161300 (= lt!1363808 e!2420284)))

(declare-fun c!680432 () Bool)

(assert (=> d!1161300 (= c!680432 ((_ is Some!8877) lt!1363806))))

(assert (=> d!1161300 (= lt!1363806 (maxPrefix!3351 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1161300 (= (lexList!1815 thiss!20629 rules!2768 suffix!1176) lt!1363808)))

(declare-fun b!3914626 () Bool)

(assert (=> b!3914626 (= e!2420284 (tuple2!40733 Nil!41481 suffix!1176))))

(declare-fun b!3914627 () Bool)

(declare-fun e!2420285 () Bool)

(assert (=> b!3914627 (= e!2420285 (not (isEmpty!24680 (_1!23500 lt!1363808))))))

(declare-fun b!3914628 () Bool)

(assert (=> b!3914628 (= e!2420283 e!2420285)))

(declare-fun res!1583392 () Bool)

(assert (=> b!3914628 (= res!1583392 (< (size!31144 (_2!23500 lt!1363808)) (size!31144 suffix!1176)))))

(assert (=> b!3914628 (=> (not res!1583392) (not e!2420285))))

(assert (= (and d!1161300 c!680432) b!3914625))

(assert (= (and d!1161300 (not c!680432)) b!3914626))

(assert (= (and d!1161300 c!680431) b!3914628))

(assert (= (and d!1161300 (not c!680431)) b!3914624))

(assert (= (and b!3914628 res!1583392) b!3914627))

(declare-fun m!4478065 () Bool)

(assert (=> b!3914625 m!4478065))

(declare-fun m!4478067 () Bool)

(assert (=> d!1161300 m!4478067))

(declare-fun m!4478069 () Bool)

(assert (=> d!1161300 m!4478069))

(declare-fun m!4478071 () Bool)

(assert (=> b!3914627 m!4478071))

(declare-fun m!4478073 () Bool)

(assert (=> b!3914628 m!4478073))

(assert (=> b!3914628 m!4477483))

(assert (=> b!3914090 d!1161300))

(declare-fun d!1161302 () Bool)

(assert (=> d!1161302 (= (isEmpty!24680 (tail!5985 prefixTokens!80)) ((_ is Nil!41481) (tail!5985 prefixTokens!80)))))

(assert (=> b!3914073 d!1161302))

(declare-fun d!1161304 () Bool)

(assert (=> d!1161304 (= (tail!5985 prefixTokens!80) (t!323514 prefixTokens!80))))

(assert (=> b!3914073 d!1161304))

(declare-fun d!1161306 () Bool)

(declare-fun lt!1363809 () Int)

(assert (=> d!1161306 (>= lt!1363809 0)))

(declare-fun e!2420286 () Int)

(assert (=> d!1161306 (= lt!1363809 e!2420286)))

(declare-fun c!680433 () Bool)

(assert (=> d!1161306 (= c!680433 ((_ is Nil!41479) prefix!426))))

(assert (=> d!1161306 (= (size!31144 prefix!426) lt!1363809)))

(declare-fun b!3914629 () Bool)

(assert (=> b!3914629 (= e!2420286 0)))

(declare-fun b!3914630 () Bool)

(assert (=> b!3914630 (= e!2420286 (+ 1 (size!31144 (t!323512 prefix!426))))))

(assert (= (and d!1161306 c!680433) b!3914629))

(assert (= (and d!1161306 (not c!680433)) b!3914630))

(declare-fun m!4478075 () Bool)

(assert (=> b!3914630 m!4478075))

(assert (=> b!3914071 d!1161306))

(declare-fun b!3914643 () Bool)

(declare-fun e!2420289 () Bool)

(declare-fun tp!1191500 () Bool)

(assert (=> b!3914643 (= e!2420289 tp!1191500)))

(assert (=> b!3914065 (= tp!1191413 e!2420289)))

(declare-fun b!3914644 () Bool)

(declare-fun tp!1191502 () Bool)

(declare-fun tp!1191503 () Bool)

(assert (=> b!3914644 (= e!2420289 (and tp!1191502 tp!1191503))))

(declare-fun b!3914641 () Bool)

(assert (=> b!3914641 (= e!2420289 tp_is_empty!19697)))

(declare-fun b!3914642 () Bool)

(declare-fun tp!1191499 () Bool)

(declare-fun tp!1191501 () Bool)

(assert (=> b!3914642 (= e!2420289 (and tp!1191499 tp!1191501))))

(assert (= (and b!3914065 ((_ is ElementMatch!11363) (regex!6458 (rule!9378 (h!46901 prefixTokens!80))))) b!3914641))

(assert (= (and b!3914065 ((_ is Concat!18052) (regex!6458 (rule!9378 (h!46901 prefixTokens!80))))) b!3914642))

(assert (= (and b!3914065 ((_ is Star!11363) (regex!6458 (rule!9378 (h!46901 prefixTokens!80))))) b!3914643))

(assert (= (and b!3914065 ((_ is Union!11363) (regex!6458 (rule!9378 (h!46901 prefixTokens!80))))) b!3914644))

(declare-fun b!3914647 () Bool)

(declare-fun e!2420290 () Bool)

(declare-fun tp!1191505 () Bool)

(assert (=> b!3914647 (= e!2420290 tp!1191505)))

(assert (=> b!3914085 (= tp!1191409 e!2420290)))

(declare-fun b!3914648 () Bool)

(declare-fun tp!1191507 () Bool)

(declare-fun tp!1191508 () Bool)

(assert (=> b!3914648 (= e!2420290 (and tp!1191507 tp!1191508))))

(declare-fun b!3914645 () Bool)

(assert (=> b!3914645 (= e!2420290 tp_is_empty!19697)))

(declare-fun b!3914646 () Bool)

(declare-fun tp!1191504 () Bool)

(declare-fun tp!1191506 () Bool)

(assert (=> b!3914646 (= e!2420290 (and tp!1191504 tp!1191506))))

(assert (= (and b!3914085 ((_ is ElementMatch!11363) (regex!6458 (rule!9378 (h!46901 suffixTokens!72))))) b!3914645))

(assert (= (and b!3914085 ((_ is Concat!18052) (regex!6458 (rule!9378 (h!46901 suffixTokens!72))))) b!3914646))

(assert (= (and b!3914085 ((_ is Star!11363) (regex!6458 (rule!9378 (h!46901 suffixTokens!72))))) b!3914647))

(assert (= (and b!3914085 ((_ is Union!11363) (regex!6458 (rule!9378 (h!46901 suffixTokens!72))))) b!3914648))

(declare-fun b!3914662 () Bool)

(declare-fun b_free!106253 () Bool)

(declare-fun b_next!106957 () Bool)

(assert (=> b!3914662 (= b_free!106253 (not b_next!106957))))

(declare-fun t!323589 () Bool)

(declare-fun tb!233261 () Bool)

(assert (=> (and b!3914662 (= (toValue!8906 (transformation!6458 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323589) tb!233261))

(declare-fun result!282710 () Bool)

(assert (= result!282710 result!282692))

(assert (=> d!1161270 t!323589))

(declare-fun tp!1191519 () Bool)

(declare-fun b_and!297995 () Bool)

(assert (=> b!3914662 (= tp!1191519 (and (=> t!323589 result!282710) b_and!297995))))

(declare-fun b_free!106255 () Bool)

(declare-fun b_next!106959 () Bool)

(assert (=> b!3914662 (= b_free!106255 (not b_next!106959))))

(declare-fun tb!233263 () Bool)

(declare-fun t!323591 () Bool)

(assert (=> (and b!3914662 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))) t!323591) tb!233263))

(declare-fun result!282712 () Bool)

(assert (= result!282712 result!282626))

(assert (=> b!3914227 t!323591))

(declare-fun t!323593 () Bool)

(declare-fun tb!233265 () Bool)

(assert (=> (and b!3914662 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))) t!323593) tb!233265))

(declare-fun result!282714 () Bool)

(assert (= result!282714 result!282642))

(assert (=> b!3914366 t!323593))

(declare-fun tb!233267 () Bool)

(declare-fun t!323595 () Bool)

(assert (=> (and b!3914662 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323595) tb!233267))

(declare-fun result!282716 () Bool)

(assert (= result!282716 result!282700))

(assert (=> d!1161292 t!323595))

(declare-fun b_and!297997 () Bool)

(declare-fun tp!1191520 () Bool)

(assert (=> b!3914662 (= tp!1191520 (and (=> t!323591 result!282712) (=> t!323593 result!282714) (=> t!323595 result!282716) b_and!297997))))

(declare-fun e!2420305 () Bool)

(assert (=> b!3914662 (= e!2420305 (and tp!1191519 tp!1191520))))

(declare-fun e!2420306 () Bool)

(assert (=> b!3914074 (= tp!1191400 e!2420306)))

(declare-fun e!2420307 () Bool)

(declare-fun tp!1191521 () Bool)

(declare-fun e!2420308 () Bool)

(declare-fun b!3914660 () Bool)

(assert (=> b!3914660 (= e!2420307 (and (inv!21 (value!204687 (h!46901 (t!323514 suffixTokens!72)))) e!2420308 tp!1191521))))

(declare-fun tp!1191523 () Bool)

(declare-fun b!3914661 () Bool)

(assert (=> b!3914661 (= e!2420308 (and tp!1191523 (inv!55666 (tag!7318 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) (inv!55669 (transformation!6458 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) e!2420305))))

(declare-fun tp!1191522 () Bool)

(declare-fun b!3914659 () Bool)

(assert (=> b!3914659 (= e!2420306 (and (inv!55670 (h!46901 (t!323514 suffixTokens!72))) e!2420307 tp!1191522))))

(assert (= b!3914661 b!3914662))

(assert (= b!3914660 b!3914661))

(assert (= b!3914659 b!3914660))

(assert (= (and b!3914074 ((_ is Cons!41481) (t!323514 suffixTokens!72))) b!3914659))

(declare-fun m!4478077 () Bool)

(assert (=> b!3914660 m!4478077))

(declare-fun m!4478079 () Bool)

(assert (=> b!3914661 m!4478079))

(declare-fun m!4478081 () Bool)

(assert (=> b!3914661 m!4478081))

(declare-fun m!4478083 () Bool)

(assert (=> b!3914659 m!4478083))

(declare-fun b!3914666 () Bool)

(declare-fun b_free!106257 () Bool)

(declare-fun b_next!106961 () Bool)

(assert (=> b!3914666 (= b_free!106257 (not b_next!106961))))

(declare-fun tb!233269 () Bool)

(declare-fun t!323597 () Bool)

(assert (=> (and b!3914666 (= (toValue!8906 (transformation!6458 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323597) tb!233269))

(declare-fun result!282718 () Bool)

(assert (= result!282718 result!282692))

(assert (=> d!1161270 t!323597))

(declare-fun tp!1191524 () Bool)

(declare-fun b_and!297999 () Bool)

(assert (=> b!3914666 (= tp!1191524 (and (=> t!323597 result!282718) b_and!297999))))

(declare-fun b_free!106259 () Bool)

(declare-fun b_next!106963 () Bool)

(assert (=> b!3914666 (= b_free!106259 (not b_next!106963))))

(declare-fun t!323599 () Bool)

(declare-fun tb!233271 () Bool)

(assert (=> (and b!3914666 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))) t!323599) tb!233271))

(declare-fun result!282720 () Bool)

(assert (= result!282720 result!282626))

(assert (=> b!3914227 t!323599))

(declare-fun tb!233273 () Bool)

(declare-fun t!323601 () Bool)

(assert (=> (and b!3914666 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))) t!323601) tb!233273))

(declare-fun result!282722 () Bool)

(assert (= result!282722 result!282642))

(assert (=> b!3914366 t!323601))

(declare-fun t!323603 () Bool)

(declare-fun tb!233275 () Bool)

(assert (=> (and b!3914666 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323603) tb!233275))

(declare-fun result!282724 () Bool)

(assert (= result!282724 result!282700))

(assert (=> d!1161292 t!323603))

(declare-fun b_and!298001 () Bool)

(declare-fun tp!1191525 () Bool)

(assert (=> b!3914666 (= tp!1191525 (and (=> t!323599 result!282720) (=> t!323601 result!282722) (=> t!323603 result!282724) b_and!298001))))

(declare-fun e!2420311 () Bool)

(assert (=> b!3914666 (= e!2420311 (and tp!1191524 tp!1191525))))

(declare-fun e!2420312 () Bool)

(assert (=> b!3914067 (= tp!1191406 e!2420312)))

(declare-fun tp!1191526 () Bool)

(declare-fun b!3914664 () Bool)

(declare-fun e!2420314 () Bool)

(declare-fun e!2420313 () Bool)

(assert (=> b!3914664 (= e!2420313 (and (inv!21 (value!204687 (h!46901 (t!323514 prefixTokens!80)))) e!2420314 tp!1191526))))

(declare-fun b!3914665 () Bool)

(declare-fun tp!1191528 () Bool)

(assert (=> b!3914665 (= e!2420314 (and tp!1191528 (inv!55666 (tag!7318 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) (inv!55669 (transformation!6458 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) e!2420311))))

(declare-fun b!3914663 () Bool)

(declare-fun tp!1191527 () Bool)

(assert (=> b!3914663 (= e!2420312 (and (inv!55670 (h!46901 (t!323514 prefixTokens!80))) e!2420313 tp!1191527))))

(assert (= b!3914665 b!3914666))

(assert (= b!3914664 b!3914665))

(assert (= b!3914663 b!3914664))

(assert (= (and b!3914067 ((_ is Cons!41481) (t!323514 prefixTokens!80))) b!3914663))

(declare-fun m!4478085 () Bool)

(assert (=> b!3914664 m!4478085))

(declare-fun m!4478087 () Bool)

(assert (=> b!3914665 m!4478087))

(declare-fun m!4478089 () Bool)

(assert (=> b!3914665 m!4478089))

(declare-fun m!4478091 () Bool)

(assert (=> b!3914663 m!4478091))

(declare-fun b!3914671 () Bool)

(declare-fun e!2420317 () Bool)

(declare-fun tp!1191531 () Bool)

(assert (=> b!3914671 (= e!2420317 (and tp_is_empty!19697 tp!1191531))))

(assert (=> b!3914088 (= tp!1191399 e!2420317)))

(assert (= (and b!3914088 ((_ is Cons!41479) (t!323512 suffix!1176))) b!3914671))

(declare-fun b!3914682 () Bool)

(declare-fun b_free!106261 () Bool)

(declare-fun b_next!106965 () Bool)

(assert (=> b!3914682 (= b_free!106261 (not b_next!106965))))

(declare-fun t!323605 () Bool)

(declare-fun tb!233277 () Bool)

(assert (=> (and b!3914682 (= (toValue!8906 (transformation!6458 (h!46902 (t!323515 rules!2768)))) (toValue!8906 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323605) tb!233277))

(declare-fun result!282730 () Bool)

(assert (= result!282730 result!282692))

(assert (=> d!1161270 t!323605))

(declare-fun tp!1191543 () Bool)

(declare-fun b_and!298003 () Bool)

(assert (=> b!3914682 (= tp!1191543 (and (=> t!323605 result!282730) b_and!298003))))

(declare-fun b_free!106263 () Bool)

(declare-fun b_next!106967 () Bool)

(assert (=> b!3914682 (= b_free!106263 (not b_next!106967))))

(declare-fun t!323607 () Bool)

(declare-fun tb!233279 () Bool)

(assert (=> (and b!3914682 (= (toChars!8765 (transformation!6458 (h!46902 (t!323515 rules!2768)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80))))) t!323607) tb!233279))

(declare-fun result!282732 () Bool)

(assert (= result!282732 result!282626))

(assert (=> b!3914227 t!323607))

(declare-fun tb!233281 () Bool)

(declare-fun t!323609 () Bool)

(assert (=> (and b!3914682 (= (toChars!8765 (transformation!6458 (h!46902 (t!323515 rules!2768)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72))))) t!323609) tb!233281))

(declare-fun result!282734 () Bool)

(assert (= result!282734 result!282642))

(assert (=> b!3914366 t!323609))

(declare-fun tb!233283 () Bool)

(declare-fun t!323611 () Bool)

(assert (=> (and b!3914682 (= (toChars!8765 (transformation!6458 (h!46902 (t!323515 rules!2768)))) (toChars!8765 (transformation!6458 (rule!9378 (_1!23499 (v!39201 lt!1363624)))))) t!323611) tb!233283))

(declare-fun result!282736 () Bool)

(assert (= result!282736 result!282700))

(assert (=> d!1161292 t!323611))

(declare-fun b_and!298005 () Bool)

(declare-fun tp!1191540 () Bool)

(assert (=> b!3914682 (= tp!1191540 (and (=> t!323607 result!282732) (=> t!323609 result!282734) (=> t!323611 result!282736) b_and!298005))))

(declare-fun e!2420328 () Bool)

(assert (=> b!3914682 (= e!2420328 (and tp!1191543 tp!1191540))))

(declare-fun b!3914681 () Bool)

(declare-fun tp!1191542 () Bool)

(declare-fun e!2420329 () Bool)

(assert (=> b!3914681 (= e!2420329 (and tp!1191542 (inv!55666 (tag!7318 (h!46902 (t!323515 rules!2768)))) (inv!55669 (transformation!6458 (h!46902 (t!323515 rules!2768)))) e!2420328))))

(declare-fun b!3914680 () Bool)

(declare-fun e!2420326 () Bool)

(declare-fun tp!1191541 () Bool)

(assert (=> b!3914680 (= e!2420326 (and e!2420329 tp!1191541))))

(assert (=> b!3914078 (= tp!1191405 e!2420326)))

(assert (= b!3914681 b!3914682))

(assert (= b!3914680 b!3914681))

(assert (= (and b!3914078 ((_ is Cons!41482) (t!323515 rules!2768))) b!3914680))

(declare-fun m!4478093 () Bool)

(assert (=> b!3914681 m!4478093))

(declare-fun m!4478095 () Bool)

(assert (=> b!3914681 m!4478095))

(declare-fun b!3914683 () Bool)

(declare-fun e!2420330 () Bool)

(declare-fun tp!1191544 () Bool)

(assert (=> b!3914683 (= e!2420330 (and tp_is_empty!19697 tp!1191544))))

(assert (=> b!3914066 (= tp!1191410 e!2420330)))

(assert (= (and b!3914066 ((_ is Cons!41479) (originalCharacters!7058 (h!46901 prefixTokens!80)))) b!3914683))

(declare-fun b!3914684 () Bool)

(declare-fun e!2420331 () Bool)

(declare-fun tp!1191545 () Bool)

(assert (=> b!3914684 (= e!2420331 (and tp_is_empty!19697 tp!1191545))))

(assert (=> b!3914080 (= tp!1191414 e!2420331)))

(assert (= (and b!3914080 ((_ is Cons!41479) (originalCharacters!7058 (h!46901 suffixTokens!72)))) b!3914684))

(declare-fun b!3914687 () Bool)

(declare-fun e!2420332 () Bool)

(declare-fun tp!1191547 () Bool)

(assert (=> b!3914687 (= e!2420332 tp!1191547)))

(assert (=> b!3914079 (= tp!1191407 e!2420332)))

(declare-fun b!3914688 () Bool)

(declare-fun tp!1191549 () Bool)

(declare-fun tp!1191550 () Bool)

(assert (=> b!3914688 (= e!2420332 (and tp!1191549 tp!1191550))))

(declare-fun b!3914685 () Bool)

(assert (=> b!3914685 (= e!2420332 tp_is_empty!19697)))

(declare-fun b!3914686 () Bool)

(declare-fun tp!1191546 () Bool)

(declare-fun tp!1191548 () Bool)

(assert (=> b!3914686 (= e!2420332 (and tp!1191546 tp!1191548))))

(assert (= (and b!3914079 ((_ is ElementMatch!11363) (regex!6458 (h!46902 rules!2768)))) b!3914685))

(assert (= (and b!3914079 ((_ is Concat!18052) (regex!6458 (h!46902 rules!2768)))) b!3914686))

(assert (= (and b!3914079 ((_ is Star!11363) (regex!6458 (h!46902 rules!2768)))) b!3914687))

(assert (= (and b!3914079 ((_ is Union!11363) (regex!6458 (h!46902 rules!2768)))) b!3914688))

(declare-fun b!3914689 () Bool)

(declare-fun e!2420333 () Bool)

(declare-fun tp!1191551 () Bool)

(assert (=> b!3914689 (= e!2420333 (and tp_is_empty!19697 tp!1191551))))

(assert (=> b!3914072 (= tp!1191401 e!2420333)))

(assert (= (and b!3914072 ((_ is Cons!41479) (t!323512 prefix!426))) b!3914689))

(declare-fun b!3914690 () Bool)

(declare-fun e!2420334 () Bool)

(declare-fun tp!1191552 () Bool)

(assert (=> b!3914690 (= e!2420334 (and tp_is_empty!19697 tp!1191552))))

(assert (=> b!3914060 (= tp!1191402 e!2420334)))

(assert (= (and b!3914060 ((_ is Cons!41479) (t!323512 suffixResult!91))) b!3914690))

(declare-fun b_lambda!114619 () Bool)

(assert (= b_lambda!114605 (or (and b!3914662 b_free!106255 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))))) (and b!3914075 b_free!106231 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))))) (and b!3914666 b_free!106259 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))))) (and b!3914682 b_free!106263 (= (toChars!8765 (transformation!6458 (h!46902 (t!323515 rules!2768)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))))) (and b!3914087 b_free!106239 (= (toChars!8765 (transformation!6458 (h!46902 rules!2768))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))))) (and b!3914064 b_free!106235) b_lambda!114619)))

(declare-fun b_lambda!114621 () Bool)

(assert (= b_lambda!114601 (or (and b!3914666 b_free!106259 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 prefixTokens!80))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))))) (and b!3914682 b_free!106263 (= (toChars!8765 (transformation!6458 (h!46902 (t!323515 rules!2768)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))))) (and b!3914087 b_free!106239 (= (toChars!8765 (transformation!6458 (h!46902 rules!2768))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))))) (and b!3914064 b_free!106235 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 suffixTokens!72)))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))))) (and b!3914662 b_free!106255 (= (toChars!8765 (transformation!6458 (rule!9378 (h!46901 (t!323514 suffixTokens!72))))) (toChars!8765 (transformation!6458 (rule!9378 (h!46901 prefixTokens!80)))))) (and b!3914075 b_free!106231) b_lambda!114621)))

(check-sat (not b!3914621) (not d!1161280) (not b!3914368) b_and!297991 (not b_next!106957) (not b!3914625) (not b_next!106933) (not b!3914646) (not b_next!106965) (not b!3914172) (not d!1161288) (not b!3914671) (not b!3914431) (not b!3914570) (not b!3914425) b_and!297983 (not d!1161208) (not b!3914684) (not tb!233195) (not b!3914362) tp_is_empty!19697 (not d!1161274) (not d!1161122) (not b!3914630) (not b!3914427) b_and!297985 (not d!1161278) (not b!3914644) (not d!1161262) (not b!3914239) (not b!3914574) (not b!3914429) (not b!3914581) (not b_next!106935) (not b!3914600) b_and!298001 (not b!3914627) (not b!3914359) b_and!297989 (not b!3914683) (not bm!284416) (not b!3914293) b_and!297997 (not d!1161210) (not d!1161136) (not b!3914575) (not b!3914680) (not b!3914132) (not b!3914660) (not b!3914593) (not b!3914357) (not b!3914690) (not b!3914133) (not b!3914366) (not d!1161286) (not d!1161282) (not b_lambda!114615) (not b!3914604) (not b!3914619) (not b!3914200) (not b!3914665) (not b_next!106943) (not bm!284413) (not b!3914204) (not d!1161266) (not b_next!106937) (not d!1161164) (not d!1161294) (not b!3914648) (not tb!233255) (not b!3914573) (not b!3914689) (not b_next!106961) (not b!3914686) (not b!3914228) (not tb!233207) (not d!1161276) (not b!3914361) (not b_next!106941) (not b!3914173) b_and!298003 (not b!3914093) (not b!3914688) (not d!1161284) (not b!3914358) (not b!3914594) (not b!3914311) (not b!3914603) (not b!3914571) (not d!1161232) (not b!3914623) (not b_next!106939) (not b!3914363) b_and!297987 (not b!3914227) (not b!3914578) (not d!1161166) b_and!298005 (not d!1161292) (not b_lambda!114619) b_and!297993 (not d!1161268) (not b!3914237) (not b!3914274) (not b_next!106959) (not b!3914663) (not b!3914615) (not b_lambda!114621) (not b!3914618) (not b!3914643) (not b!3914292) (not b!3914642) (not b!3914426) (not b!3914360) (not b!3914295) (not b!3914365) (not b!3914681) (not b!3914661) (not b!3914607) (not d!1161144) (not b!3914595) (not b!3914367) (not b!3914610) (not b!3914099) (not b!3914270) (not d!1161178) (not d!1161192) (not b!3914647) (not d!1161126) (not d!1161300) (not b!3914203) (not b!3914609) (not b_lambda!114617) (not b_next!106967) b_and!297999 (not b!3914428) (not b!3914572) (not b!3914199) (not d!1161202) (not b!3914628) b_and!297995 (not b!3914273) (not b!3914659) (not tb!233249) (not b!3914290) (not b!3914664) (not b!3914240) (not b!3914577) (not b!3914130) (not b!3914687) (not b_next!106963))
(check-sat (not b_next!106965) b_and!297983 b_and!297985 (not b_next!106935) b_and!297997 (not b_next!106943) (not b_next!106937) (not b_next!106961) b_and!298005 b_and!297995 (not b_next!106963) b_and!297991 (not b_next!106957) (not b_next!106933) b_and!298001 b_and!297989 b_and!298003 (not b_next!106941) (not b_next!106939) b_and!297987 b_and!297993 (not b_next!106959) (not b_next!106967) b_and!297999)
