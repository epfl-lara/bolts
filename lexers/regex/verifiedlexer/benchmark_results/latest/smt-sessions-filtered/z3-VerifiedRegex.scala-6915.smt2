; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364484 () Bool)

(assert start!364484)

(declare-fun b!3881832 () Bool)

(declare-fun b_free!105205 () Bool)

(declare-fun b_next!105909 () Bool)

(assert (=> b!3881832 (= b_free!105205 (not b_next!105909))))

(declare-fun tp!1177061 () Bool)

(declare-fun b_and!291291 () Bool)

(assert (=> b!3881832 (= tp!1177061 b_and!291291)))

(declare-fun b_free!105207 () Bool)

(declare-fun b_next!105911 () Bool)

(assert (=> b!3881832 (= b_free!105207 (not b_next!105911))))

(declare-fun tp!1177058 () Bool)

(declare-fun b_and!291293 () Bool)

(assert (=> b!3881832 (= tp!1177058 b_and!291293)))

(declare-fun b!3881813 () Bool)

(declare-fun b_free!105209 () Bool)

(declare-fun b_next!105913 () Bool)

(assert (=> b!3881813 (= b_free!105209 (not b_next!105913))))

(declare-fun tp!1177053 () Bool)

(declare-fun b_and!291295 () Bool)

(assert (=> b!3881813 (= tp!1177053 b_and!291295)))

(declare-fun b_free!105211 () Bool)

(declare-fun b_next!105915 () Bool)

(assert (=> b!3881813 (= b_free!105211 (not b_next!105915))))

(declare-fun tp!1177056 () Bool)

(declare-fun b_and!291297 () Bool)

(assert (=> b!3881813 (= tp!1177056 b_and!291297)))

(declare-fun b!3881827 () Bool)

(declare-fun b_free!105213 () Bool)

(declare-fun b_next!105917 () Bool)

(assert (=> b!3881827 (= b_free!105213 (not b_next!105917))))

(declare-fun tp!1177057 () Bool)

(declare-fun b_and!291299 () Bool)

(assert (=> b!3881827 (= tp!1177057 b_and!291299)))

(declare-fun b_free!105215 () Bool)

(declare-fun b_next!105919 () Bool)

(assert (=> b!3881827 (= b_free!105215 (not b_next!105919))))

(declare-fun tp!1177047 () Bool)

(declare-fun b_and!291301 () Bool)

(assert (=> b!3881827 (= tp!1177047 b_and!291301)))

(declare-fun b!3881812 () Bool)

(declare-fun e!2402097 () Bool)

(declare-fun tp_is_empty!19617 () Bool)

(declare-fun tp!1177046 () Bool)

(assert (=> b!3881812 (= e!2402097 (and tp_is_empty!19617 tp!1177046))))

(declare-fun e!2402101 () Bool)

(assert (=> b!3881813 (= e!2402101 (and tp!1177053 tp!1177056))))

(declare-fun b!3881814 () Bool)

(declare-fun e!2402105 () Bool)

(declare-fun tp!1177059 () Bool)

(assert (=> b!3881814 (= e!2402105 (and tp_is_empty!19617 tp!1177059))))

(declare-fun b!3881815 () Bool)

(declare-fun e!2402091 () Bool)

(declare-datatypes ((List!41420 0))(
  ( (Nil!41296) (Cons!41296 (h!46716 (_ BitVec 16)) (t!315545 List!41420)) )
))
(declare-datatypes ((TokenValue!6648 0))(
  ( (FloatLiteralValue!13296 (text!46981 List!41420)) (TokenValueExt!6647 (__x!25513 Int)) (Broken!33240 (value!203521 List!41420)) (Object!6771) (End!6648) (Def!6648) (Underscore!6648) (Match!6648) (Else!6648) (Error!6648) (Case!6648) (If!6648) (Extends!6648) (Abstract!6648) (Class!6648) (Val!6648) (DelimiterValue!13296 (del!6708 List!41420)) (KeywordValue!6654 (value!203522 List!41420)) (CommentValue!13296 (value!203523 List!41420)) (WhitespaceValue!13296 (value!203524 List!41420)) (IndentationValue!6648 (value!203525 List!41420)) (String!46957) (Int32!6648) (Broken!33241 (value!203526 List!41420)) (Boolean!6649) (Unit!59363) (OperatorValue!6651 (op!6708 List!41420)) (IdentifierValue!13296 (value!203527 List!41420)) (IdentifierValue!13297 (value!203528 List!41420)) (WhitespaceValue!13297 (value!203529 List!41420)) (True!13296) (False!13296) (Broken!33242 (value!203530 List!41420)) (Broken!33243 (value!203531 List!41420)) (True!13297) (RightBrace!6648) (RightBracket!6648) (Colon!6648) (Null!6648) (Comma!6648) (LeftBracket!6648) (False!13297) (LeftBrace!6648) (ImaginaryLiteralValue!6648 (text!46982 List!41420)) (StringLiteralValue!19944 (value!203532 List!41420)) (EOFValue!6648 (value!203533 List!41420)) (IdentValue!6648 (value!203534 List!41420)) (DelimiterValue!13297 (value!203535 List!41420)) (DedentValue!6648 (value!203536 List!41420)) (NewLineValue!6648 (value!203537 List!41420)) (IntegerValue!19944 (value!203538 (_ BitVec 32)) (text!46983 List!41420)) (IntegerValue!19945 (value!203539 Int) (text!46984 List!41420)) (Times!6648) (Or!6648) (Equal!6648) (Minus!6648) (Broken!33244 (value!203540 List!41420)) (And!6648) (Div!6648) (LessEqual!6648) (Mod!6648) (Concat!17971) (Not!6648) (Plus!6648) (SpaceValue!6648 (value!203541 List!41420)) (IntegerValue!19946 (value!203542 Int) (text!46985 List!41420)) (StringLiteralValue!19945 (text!46986 List!41420)) (FloatLiteralValue!13297 (text!46987 List!41420)) (BytesLiteralValue!6648 (value!203543 List!41420)) (CommentValue!13297 (value!203544 List!41420)) (StringLiteralValue!19946 (value!203545 List!41420)) (ErrorTokenValue!6648 (msg!6709 List!41420)) )
))
(declare-datatypes ((C!22832 0))(
  ( (C!22833 (val!13510 Int)) )
))
(declare-datatypes ((Regex!11323 0))(
  ( (ElementMatch!11323 (c!675186 C!22832)) (Concat!17972 (regOne!23158 Regex!11323) (regTwo!23158 Regex!11323)) (EmptyExpr!11323) (Star!11323 (reg!11652 Regex!11323)) (EmptyLang!11323) (Union!11323 (regOne!23159 Regex!11323) (regTwo!23159 Regex!11323)) )
))
(declare-datatypes ((String!46958 0))(
  ( (String!46959 (value!203546 String)) )
))
(declare-datatypes ((List!41421 0))(
  ( (Nil!41297) (Cons!41297 (h!46717 C!22832) (t!315546 List!41421)) )
))
(declare-datatypes ((IArray!25263 0))(
  ( (IArray!25264 (innerList!12689 List!41421)) )
))
(declare-datatypes ((Conc!12629 0))(
  ( (Node!12629 (left!31668 Conc!12629) (right!31998 Conc!12629) (csize!25488 Int) (cheight!12840 Int)) (Leaf!19545 (xs!15935 IArray!25263) (csize!25489 Int)) (Empty!12629) )
))
(declare-datatypes ((BalanceConc!24852 0))(
  ( (BalanceConc!24853 (c!675187 Conc!12629)) )
))
(declare-datatypes ((TokenValueInjection!12724 0))(
  ( (TokenValueInjection!12725 (toValue!8850 Int) (toChars!8709 Int)) )
))
(declare-datatypes ((Rule!12636 0))(
  ( (Rule!12637 (regex!6418 Regex!11323) (tag!7278 String!46958) (isSeparator!6418 Bool) (transformation!6418 TokenValueInjection!12724)) )
))
(declare-datatypes ((Token!11974 0))(
  ( (Token!11975 (value!203547 TokenValue!6648) (rule!9318 Rule!12636) (size!31011 Int) (originalCharacters!7018 List!41421)) )
))
(declare-datatypes ((List!41422 0))(
  ( (Nil!41298) (Cons!41298 (h!46718 Token!11974) (t!315547 List!41422)) )
))
(declare-datatypes ((tuple2!40530 0))(
  ( (tuple2!40531 (_1!23399 List!41422) (_2!23399 List!41421)) )
))
(declare-fun lt!1354471 () tuple2!40530)

(assert (=> b!3881815 (= e!2402091 (= lt!1354471 (tuple2!40531 (_1!23399 lt!1354471) (_2!23399 lt!1354471))))))

(declare-fun b!3881816 () Bool)

(declare-fun e!2402099 () Bool)

(declare-fun e!2402085 () Bool)

(assert (=> b!3881816 (= e!2402099 e!2402085)))

(declare-fun res!1572927 () Bool)

(assert (=> b!3881816 (=> (not res!1572927) (not e!2402085))))

(declare-datatypes ((tuple2!40532 0))(
  ( (tuple2!40533 (_1!23400 Token!11974) (_2!23400 List!41421)) )
))
(declare-datatypes ((Option!8836 0))(
  ( (None!8835) (Some!8835 (v!39135 tuple2!40532)) )
))
(declare-fun lt!1354468 () Option!8836)

(get-info :version)

(assert (=> b!3881816 (= res!1572927 ((_ is Some!8835) lt!1354468))))

(declare-fun lt!1354476 () List!41421)

(declare-datatypes ((LexerInterface!6007 0))(
  ( (LexerInterfaceExt!6004 (__x!25514 Int)) (Lexer!6005) )
))
(declare-fun thiss!20629 () LexerInterface!6007)

(declare-datatypes ((List!41423 0))(
  ( (Nil!41299) (Cons!41299 (h!46719 Rule!12636) (t!315548 List!41423)) )
))
(declare-fun rules!2768 () List!41423)

(declare-fun maxPrefix!3311 (LexerInterface!6007 List!41423 List!41421) Option!8836)

(assert (=> b!3881816 (= lt!1354468 (maxPrefix!3311 thiss!20629 rules!2768 lt!1354476))))

(declare-fun b!3881817 () Bool)

(assert (=> b!3881817 (= e!2402085 (not e!2402091))))

(declare-fun res!1572921 () Bool)

(assert (=> b!3881817 (=> res!1572921 e!2402091)))

(declare-fun lt!1354474 () List!41421)

(assert (=> b!3881817 (= res!1572921 (not (= lt!1354474 lt!1354476)))))

(declare-fun lexList!1775 (LexerInterface!6007 List!41423 List!41421) tuple2!40530)

(assert (=> b!3881817 (= lt!1354471 (lexList!1775 thiss!20629 rules!2768 (_2!23400 (v!39135 lt!1354468))))))

(declare-fun lt!1354473 () List!41421)

(declare-fun lt!1354480 () Int)

(declare-fun lt!1354470 () TokenValue!6648)

(declare-fun lt!1354479 () List!41421)

(assert (=> b!3881817 (and (= (size!31011 (_1!23400 (v!39135 lt!1354468))) lt!1354480) (= (originalCharacters!7018 (_1!23400 (v!39135 lt!1354468))) lt!1354473) (= (v!39135 lt!1354468) (tuple2!40533 (Token!11975 lt!1354470 (rule!9318 (_1!23400 (v!39135 lt!1354468))) lt!1354480 lt!1354473) lt!1354479)))))

(declare-fun size!31012 (List!41421) Int)

(assert (=> b!3881817 (= lt!1354480 (size!31012 lt!1354473))))

(declare-fun e!2402103 () Bool)

(assert (=> b!3881817 e!2402103))

(declare-fun res!1572925 () Bool)

(assert (=> b!3881817 (=> (not res!1572925) (not e!2402103))))

(assert (=> b!3881817 (= res!1572925 (= (value!203547 (_1!23400 (v!39135 lt!1354468))) lt!1354470))))

(declare-fun apply!9657 (TokenValueInjection!12724 BalanceConc!24852) TokenValue!6648)

(declare-fun seqFromList!4685 (List!41421) BalanceConc!24852)

(assert (=> b!3881817 (= lt!1354470 (apply!9657 (transformation!6418 (rule!9318 (_1!23400 (v!39135 lt!1354468)))) (seqFromList!4685 lt!1354473)))))

(assert (=> b!3881817 (= (_2!23400 (v!39135 lt!1354468)) lt!1354479)))

(declare-datatypes ((Unit!59364 0))(
  ( (Unit!59365) )
))
(declare-fun lt!1354469 () Unit!59364)

(declare-fun lemmaSamePrefixThenSameSuffix!1734 (List!41421 List!41421 List!41421 List!41421 List!41421) Unit!59364)

(assert (=> b!3881817 (= lt!1354469 (lemmaSamePrefixThenSameSuffix!1734 lt!1354473 (_2!23400 (v!39135 lt!1354468)) lt!1354473 lt!1354479 lt!1354476))))

(declare-fun getSuffix!1968 (List!41421 List!41421) List!41421)

(assert (=> b!3881817 (= lt!1354479 (getSuffix!1968 lt!1354476 lt!1354473))))

(declare-fun isPrefix!3513 (List!41421 List!41421) Bool)

(assert (=> b!3881817 (isPrefix!3513 lt!1354473 lt!1354474)))

(declare-fun ++!10593 (List!41421 List!41421) List!41421)

(assert (=> b!3881817 (= lt!1354474 (++!10593 lt!1354473 (_2!23400 (v!39135 lt!1354468))))))

(declare-fun lt!1354475 () Unit!59364)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2376 (List!41421 List!41421) Unit!59364)

(assert (=> b!3881817 (= lt!1354475 (lemmaConcatTwoListThenFirstIsPrefix!2376 lt!1354473 (_2!23400 (v!39135 lt!1354468))))))

(declare-fun list!15350 (BalanceConc!24852) List!41421)

(declare-fun charsOf!4242 (Token!11974) BalanceConc!24852)

(assert (=> b!3881817 (= lt!1354473 (list!15350 (charsOf!4242 (_1!23400 (v!39135 lt!1354468)))))))

(declare-fun ruleValid!2366 (LexerInterface!6007 Rule!12636) Bool)

(assert (=> b!3881817 (ruleValid!2366 thiss!20629 (rule!9318 (_1!23400 (v!39135 lt!1354468))))))

(declare-fun lt!1354472 () Unit!59364)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1446 (LexerInterface!6007 Rule!12636 List!41423) Unit!59364)

(assert (=> b!3881817 (= lt!1354472 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1446 thiss!20629 (rule!9318 (_1!23400 (v!39135 lt!1354468))) rules!2768))))

(declare-fun lt!1354477 () Unit!59364)

(declare-fun lemmaCharactersSize!1075 (Token!11974) Unit!59364)

(assert (=> b!3881817 (= lt!1354477 (lemmaCharactersSize!1075 (_1!23400 (v!39135 lt!1354468))))))

(declare-fun b!3881818 () Bool)

(declare-fun res!1572922 () Bool)

(declare-fun e!2402096 () Bool)

(assert (=> b!3881818 (=> (not res!1572922) (not e!2402096))))

(declare-fun rulesInvariant!5350 (LexerInterface!6007 List!41423) Bool)

(assert (=> b!3881818 (= res!1572922 (rulesInvariant!5350 thiss!20629 rules!2768))))

(declare-fun b!3881819 () Bool)

(declare-fun res!1572929 () Bool)

(assert (=> b!3881819 (=> (not res!1572929) (not e!2402096))))

(declare-fun prefix!426 () List!41421)

(declare-fun isEmpty!24530 (List!41421) Bool)

(assert (=> b!3881819 (= res!1572929 (not (isEmpty!24530 prefix!426)))))

(declare-fun b!3881820 () Bool)

(declare-fun e!2402092 () Bool)

(declare-fun e!2402100 () Bool)

(declare-fun tp!1177049 () Bool)

(assert (=> b!3881820 (= e!2402092 (and e!2402100 tp!1177049))))

(declare-fun e!2402095 () Bool)

(declare-fun tp!1177054 () Bool)

(declare-fun e!2402089 () Bool)

(declare-fun suffixTokens!72 () List!41422)

(declare-fun b!3881821 () Bool)

(declare-fun inv!21 (TokenValue!6648) Bool)

(assert (=> b!3881821 (= e!2402089 (and (inv!21 (value!203547 (h!46718 suffixTokens!72))) e!2402095 tp!1177054))))

(declare-fun b!3881822 () Bool)

(assert (=> b!3881822 (= e!2402103 (= (size!31011 (_1!23400 (v!39135 lt!1354468))) (size!31012 (originalCharacters!7018 (_1!23400 (v!39135 lt!1354468))))))))

(declare-fun b!3881823 () Bool)

(declare-fun res!1572920 () Bool)

(assert (=> b!3881823 (=> (not res!1572920) (not e!2402096))))

(declare-fun prefixTokens!80 () List!41422)

(declare-fun isEmpty!24531 (List!41422) Bool)

(assert (=> b!3881823 (= res!1572920 (not (isEmpty!24531 prefixTokens!80)))))

(declare-fun tp!1177062 () Bool)

(declare-fun b!3881824 () Bool)

(declare-fun inv!55454 (String!46958) Bool)

(declare-fun inv!55457 (TokenValueInjection!12724) Bool)

(assert (=> b!3881824 (= e!2402095 (and tp!1177062 (inv!55454 (tag!7278 (rule!9318 (h!46718 suffixTokens!72)))) (inv!55457 (transformation!6418 (rule!9318 (h!46718 suffixTokens!72)))) e!2402101))))

(declare-fun tp!1177055 () Bool)

(declare-fun e!2402088 () Bool)

(declare-fun b!3881825 () Bool)

(declare-fun e!2402093 () Bool)

(declare-fun inv!55458 (Token!11974) Bool)

(assert (=> b!3881825 (= e!2402088 (and (inv!55458 (h!46718 prefixTokens!80)) e!2402093 tp!1177055))))

(declare-fun b!3881826 () Bool)

(declare-fun res!1572926 () Bool)

(assert (=> b!3881826 (=> (not res!1572926) (not e!2402096))))

(declare-fun isEmpty!24532 (List!41423) Bool)

(assert (=> b!3881826 (= res!1572926 (not (isEmpty!24532 rules!2768)))))

(declare-fun e!2402084 () Bool)

(assert (=> b!3881827 (= e!2402084 (and tp!1177057 tp!1177047))))

(declare-fun b!3881828 () Bool)

(declare-fun e!2402104 () Bool)

(declare-fun tp!1177048 () Bool)

(assert (=> b!3881828 (= e!2402104 (and tp_is_empty!19617 tp!1177048))))

(declare-fun b!3881829 () Bool)

(declare-fun res!1572928 () Bool)

(assert (=> b!3881829 (=> (not res!1572928) (not e!2402099))))

(declare-fun suffixResult!91 () List!41421)

(declare-fun suffix!1176 () List!41421)

(assert (=> b!3881829 (= res!1572928 (= (lexList!1775 thiss!20629 rules!2768 suffix!1176) (tuple2!40531 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2402094 () Bool)

(declare-fun tp!1177050 () Bool)

(declare-fun e!2402087 () Bool)

(declare-fun b!3881830 () Bool)

(assert (=> b!3881830 (= e!2402087 (and tp!1177050 (inv!55454 (tag!7278 (rule!9318 (h!46718 prefixTokens!80)))) (inv!55457 (transformation!6418 (rule!9318 (h!46718 prefixTokens!80)))) e!2402094))))

(declare-fun b!3881831 () Bool)

(declare-fun tp!1177052 () Bool)

(assert (=> b!3881831 (= e!2402093 (and (inv!21 (value!203547 (h!46718 prefixTokens!80))) e!2402087 tp!1177052))))

(assert (=> b!3881832 (= e!2402094 (and tp!1177061 tp!1177058))))

(declare-fun b!3881833 () Bool)

(assert (=> b!3881833 (= e!2402096 e!2402099)))

(declare-fun res!1572930 () Bool)

(assert (=> b!3881833 (=> (not res!1572930) (not e!2402099))))

(declare-fun lt!1354478 () tuple2!40530)

(declare-fun lt!1354481 () List!41422)

(assert (=> b!3881833 (= res!1572930 (= lt!1354478 (tuple2!40531 lt!1354481 suffixResult!91)))))

(assert (=> b!3881833 (= lt!1354478 (lexList!1775 thiss!20629 rules!2768 lt!1354476))))

(declare-fun ++!10594 (List!41422 List!41422) List!41422)

(assert (=> b!3881833 (= lt!1354481 (++!10594 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3881833 (= lt!1354476 (++!10593 prefix!426 suffix!1176))))

(declare-fun b!3881834 () Bool)

(declare-fun tp!1177051 () Bool)

(assert (=> b!3881834 (= e!2402100 (and tp!1177051 (inv!55454 (tag!7278 (h!46719 rules!2768))) (inv!55457 (transformation!6418 (h!46719 rules!2768))) e!2402084))))

(declare-fun res!1572924 () Bool)

(assert (=> start!364484 (=> (not res!1572924) (not e!2402096))))

(assert (=> start!364484 (= res!1572924 ((_ is Lexer!6005) thiss!20629))))

(assert (=> start!364484 e!2402096))

(assert (=> start!364484 e!2402097))

(assert (=> start!364484 true))

(assert (=> start!364484 e!2402105))

(assert (=> start!364484 e!2402092))

(assert (=> start!364484 e!2402088))

(declare-fun e!2402090 () Bool)

(assert (=> start!364484 e!2402090))

(assert (=> start!364484 e!2402104))

(declare-fun tp!1177060 () Bool)

(declare-fun b!3881835 () Bool)

(assert (=> b!3881835 (= e!2402090 (and (inv!55458 (h!46718 suffixTokens!72)) e!2402089 tp!1177060))))

(declare-fun b!3881836 () Bool)

(declare-fun res!1572923 () Bool)

(assert (=> b!3881836 (=> res!1572923 e!2402091)))

(assert (=> b!3881836 (= res!1572923 (not (= lt!1354478 (tuple2!40531 (++!10594 (Cons!41298 (_1!23400 (v!39135 lt!1354468)) Nil!41298) (_1!23399 lt!1354471)) (_2!23399 lt!1354471)))))))

(assert (= (and start!364484 res!1572924) b!3881826))

(assert (= (and b!3881826 res!1572926) b!3881818))

(assert (= (and b!3881818 res!1572922) b!3881823))

(assert (= (and b!3881823 res!1572920) b!3881819))

(assert (= (and b!3881819 res!1572929) b!3881833))

(assert (= (and b!3881833 res!1572930) b!3881829))

(assert (= (and b!3881829 res!1572928) b!3881816))

(assert (= (and b!3881816 res!1572927) b!3881817))

(assert (= (and b!3881817 res!1572925) b!3881822))

(assert (= (and b!3881817 (not res!1572921)) b!3881836))

(assert (= (and b!3881836 (not res!1572923)) b!3881815))

(assert (= (and start!364484 ((_ is Cons!41297) suffixResult!91)) b!3881812))

(assert (= (and start!364484 ((_ is Cons!41297) suffix!1176)) b!3881814))

(assert (= b!3881834 b!3881827))

(assert (= b!3881820 b!3881834))

(assert (= (and start!364484 ((_ is Cons!41299) rules!2768)) b!3881820))

(assert (= b!3881830 b!3881832))

(assert (= b!3881831 b!3881830))

(assert (= b!3881825 b!3881831))

(assert (= (and start!364484 ((_ is Cons!41298) prefixTokens!80)) b!3881825))

(assert (= b!3881824 b!3881813))

(assert (= b!3881821 b!3881824))

(assert (= b!3881835 b!3881821))

(assert (= (and start!364484 ((_ is Cons!41298) suffixTokens!72)) b!3881835))

(assert (= (and start!364484 ((_ is Cons!41297) prefix!426)) b!3881828))

(declare-fun m!4440495 () Bool)

(assert (=> b!3881829 m!4440495))

(declare-fun m!4440497 () Bool)

(assert (=> b!3881818 m!4440497))

(declare-fun m!4440499 () Bool)

(assert (=> b!3881834 m!4440499))

(declare-fun m!4440501 () Bool)

(assert (=> b!3881834 m!4440501))

(declare-fun m!4440503 () Bool)

(assert (=> b!3881835 m!4440503))

(declare-fun m!4440505 () Bool)

(assert (=> b!3881826 m!4440505))

(declare-fun m!4440507 () Bool)

(assert (=> b!3881830 m!4440507))

(declare-fun m!4440509 () Bool)

(assert (=> b!3881830 m!4440509))

(declare-fun m!4440511 () Bool)

(assert (=> b!3881836 m!4440511))

(declare-fun m!4440513 () Bool)

(assert (=> b!3881824 m!4440513))

(declare-fun m!4440515 () Bool)

(assert (=> b!3881824 m!4440515))

(declare-fun m!4440517 () Bool)

(assert (=> b!3881825 m!4440517))

(declare-fun m!4440519 () Bool)

(assert (=> b!3881823 m!4440519))

(declare-fun m!4440521 () Bool)

(assert (=> b!3881817 m!4440521))

(declare-fun m!4440523 () Bool)

(assert (=> b!3881817 m!4440523))

(declare-fun m!4440525 () Bool)

(assert (=> b!3881817 m!4440525))

(declare-fun m!4440527 () Bool)

(assert (=> b!3881817 m!4440527))

(declare-fun m!4440529 () Bool)

(assert (=> b!3881817 m!4440529))

(declare-fun m!4440531 () Bool)

(assert (=> b!3881817 m!4440531))

(declare-fun m!4440533 () Bool)

(assert (=> b!3881817 m!4440533))

(declare-fun m!4440535 () Bool)

(assert (=> b!3881817 m!4440535))

(declare-fun m!4440537 () Bool)

(assert (=> b!3881817 m!4440537))

(declare-fun m!4440539 () Bool)

(assert (=> b!3881817 m!4440539))

(declare-fun m!4440541 () Bool)

(assert (=> b!3881817 m!4440541))

(declare-fun m!4440543 () Bool)

(assert (=> b!3881817 m!4440543))

(declare-fun m!4440545 () Bool)

(assert (=> b!3881817 m!4440545))

(assert (=> b!3881817 m!4440525))

(assert (=> b!3881817 m!4440533))

(declare-fun m!4440547 () Bool)

(assert (=> b!3881817 m!4440547))

(declare-fun m!4440549 () Bool)

(assert (=> b!3881819 m!4440549))

(declare-fun m!4440551 () Bool)

(assert (=> b!3881833 m!4440551))

(declare-fun m!4440553 () Bool)

(assert (=> b!3881833 m!4440553))

(declare-fun m!4440555 () Bool)

(assert (=> b!3881833 m!4440555))

(declare-fun m!4440557 () Bool)

(assert (=> b!3881831 m!4440557))

(declare-fun m!4440559 () Bool)

(assert (=> b!3881816 m!4440559))

(declare-fun m!4440561 () Bool)

(assert (=> b!3881822 m!4440561))

(declare-fun m!4440563 () Bool)

(assert (=> b!3881821 m!4440563))

(check-sat b_and!291299 (not b!3881831) b_and!291295 (not b!3881818) (not b!3881824) (not b!3881828) (not b!3881812) (not b!3881826) (not b!3881830) (not b!3881833) (not b_next!105915) (not b!3881816) (not b!3881829) (not b_next!105917) tp_is_empty!19617 (not b_next!105911) (not b!3881819) (not b!3881836) b_and!291301 (not b!3881820) (not b!3881814) b_and!291293 (not b!3881835) (not b!3881823) (not b!3881822) (not b_next!105919) (not b!3881825) (not b!3881821) (not b_next!105909) b_and!291297 (not b!3881834) (not b_next!105913) (not b!3881817) b_and!291291)
(check-sat b_and!291299 (not b_next!105915) (not b_next!105917) (not b_next!105911) b_and!291295 b_and!291301 b_and!291293 (not b_next!105919) (not b_next!105909) b_and!291297 (not b_next!105913) b_and!291291)
