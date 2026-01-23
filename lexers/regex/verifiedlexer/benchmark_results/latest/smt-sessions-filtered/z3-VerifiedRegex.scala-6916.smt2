; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364488 () Bool)

(assert start!364488)

(declare-fun b!3882025 () Bool)

(declare-fun b_free!105233 () Bool)

(declare-fun b_next!105937 () Bool)

(assert (=> b!3882025 (= b_free!105233 (not b_next!105937))))

(declare-fun tp!1177178 () Bool)

(declare-fun b_and!291319 () Bool)

(assert (=> b!3882025 (= tp!1177178 b_and!291319)))

(declare-fun b_free!105235 () Bool)

(declare-fun b_next!105939 () Bool)

(assert (=> b!3882025 (= b_free!105235 (not b_next!105939))))

(declare-fun tp!1177192 () Bool)

(declare-fun b_and!291321 () Bool)

(assert (=> b!3882025 (= tp!1177192 b_and!291321)))

(declare-fun b!3882028 () Bool)

(declare-fun b_free!105237 () Bool)

(declare-fun b_next!105941 () Bool)

(assert (=> b!3882028 (= b_free!105237 (not b_next!105941))))

(declare-fun tp!1177188 () Bool)

(declare-fun b_and!291323 () Bool)

(assert (=> b!3882028 (= tp!1177188 b_and!291323)))

(declare-fun b_free!105239 () Bool)

(declare-fun b_next!105943 () Bool)

(assert (=> b!3882028 (= b_free!105239 (not b_next!105943))))

(declare-fun tp!1177185 () Bool)

(declare-fun b_and!291325 () Bool)

(assert (=> b!3882028 (= tp!1177185 b_and!291325)))

(declare-fun b!3882030 () Bool)

(declare-fun b_free!105241 () Bool)

(declare-fun b_next!105945 () Bool)

(assert (=> b!3882030 (= b_free!105241 (not b_next!105945))))

(declare-fun tp!1177173 () Bool)

(declare-fun b_and!291327 () Bool)

(assert (=> b!3882030 (= tp!1177173 b_and!291327)))

(declare-fun b_free!105243 () Bool)

(declare-fun b_next!105947 () Bool)

(assert (=> b!3882030 (= b_free!105243 (not b_next!105947))))

(declare-fun tp!1177183 () Bool)

(declare-fun b_and!291329 () Bool)

(assert (=> b!3882030 (= tp!1177183 b_and!291329)))

(declare-fun b!3882039 () Bool)

(declare-fun b_free!105245 () Bool)

(declare-fun b_next!105949 () Bool)

(assert (=> b!3882039 (= b_free!105245 (not b_next!105949))))

(declare-fun tp!1177186 () Bool)

(declare-fun b_and!291331 () Bool)

(assert (=> b!3882039 (= tp!1177186 b_and!291331)))

(declare-fun b_free!105247 () Bool)

(declare-fun b_next!105951 () Bool)

(assert (=> b!3882039 (= b_free!105247 (not b_next!105951))))

(declare-fun tp!1177176 () Bool)

(declare-fun b_and!291333 () Bool)

(assert (=> b!3882039 (= tp!1177176 b_and!291333)))

(declare-fun e!2402301 () Bool)

(declare-datatypes ((List!41428 0))(
  ( (Nil!41304) (Cons!41304 (h!46724 (_ BitVec 16)) (t!315553 List!41428)) )
))
(declare-datatypes ((TokenValue!6650 0))(
  ( (FloatLiteralValue!13300 (text!46995 List!41428)) (TokenValueExt!6649 (__x!25517 Int)) (Broken!33250 (value!203578 List!41428)) (Object!6773) (End!6650) (Def!6650) (Underscore!6650) (Match!6650) (Else!6650) (Error!6650) (Case!6650) (If!6650) (Extends!6650) (Abstract!6650) (Class!6650) (Val!6650) (DelimiterValue!13300 (del!6710 List!41428)) (KeywordValue!6656 (value!203579 List!41428)) (CommentValue!13300 (value!203580 List!41428)) (WhitespaceValue!13300 (value!203581 List!41428)) (IndentationValue!6650 (value!203582 List!41428)) (String!46967) (Int32!6650) (Broken!33251 (value!203583 List!41428)) (Boolean!6651) (Unit!59369) (OperatorValue!6653 (op!6710 List!41428)) (IdentifierValue!13300 (value!203584 List!41428)) (IdentifierValue!13301 (value!203585 List!41428)) (WhitespaceValue!13301 (value!203586 List!41428)) (True!13300) (False!13300) (Broken!33252 (value!203587 List!41428)) (Broken!33253 (value!203588 List!41428)) (True!13301) (RightBrace!6650) (RightBracket!6650) (Colon!6650) (Null!6650) (Comma!6650) (LeftBracket!6650) (False!13301) (LeftBrace!6650) (ImaginaryLiteralValue!6650 (text!46996 List!41428)) (StringLiteralValue!19950 (value!203589 List!41428)) (EOFValue!6650 (value!203590 List!41428)) (IdentValue!6650 (value!203591 List!41428)) (DelimiterValue!13301 (value!203592 List!41428)) (DedentValue!6650 (value!203593 List!41428)) (NewLineValue!6650 (value!203594 List!41428)) (IntegerValue!19950 (value!203595 (_ BitVec 32)) (text!46997 List!41428)) (IntegerValue!19951 (value!203596 Int) (text!46998 List!41428)) (Times!6650) (Or!6650) (Equal!6650) (Minus!6650) (Broken!33254 (value!203597 List!41428)) (And!6650) (Div!6650) (LessEqual!6650) (Mod!6650) (Concat!17975) (Not!6650) (Plus!6650) (SpaceValue!6650 (value!203598 List!41428)) (IntegerValue!19952 (value!203599 Int) (text!46999 List!41428)) (StringLiteralValue!19951 (text!47000 List!41428)) (FloatLiteralValue!13301 (text!47001 List!41428)) (BytesLiteralValue!6650 (value!203600 List!41428)) (CommentValue!13301 (value!203601 List!41428)) (StringLiteralValue!19952 (value!203602 List!41428)) (ErrorTokenValue!6650 (msg!6711 List!41428)) )
))
(declare-datatypes ((C!22836 0))(
  ( (C!22837 (val!13512 Int)) )
))
(declare-datatypes ((Regex!11325 0))(
  ( (ElementMatch!11325 (c!675204 C!22836)) (Concat!17976 (regOne!23162 Regex!11325) (regTwo!23162 Regex!11325)) (EmptyExpr!11325) (Star!11325 (reg!11654 Regex!11325)) (EmptyLang!11325) (Union!11325 (regOne!23163 Regex!11325) (regTwo!23163 Regex!11325)) )
))
(declare-datatypes ((String!46968 0))(
  ( (String!46969 (value!203603 String)) )
))
(declare-datatypes ((List!41429 0))(
  ( (Nil!41305) (Cons!41305 (h!46725 C!22836) (t!315554 List!41429)) )
))
(declare-datatypes ((IArray!25267 0))(
  ( (IArray!25268 (innerList!12691 List!41429)) )
))
(declare-datatypes ((Conc!12631 0))(
  ( (Node!12631 (left!31671 Conc!12631) (right!32001 Conc!12631) (csize!25492 Int) (cheight!12842 Int)) (Leaf!19548 (xs!15937 IArray!25267) (csize!25493 Int)) (Empty!12631) )
))
(declare-datatypes ((BalanceConc!24856 0))(
  ( (BalanceConc!24857 (c!675205 Conc!12631)) )
))
(declare-datatypes ((TokenValueInjection!12728 0))(
  ( (TokenValueInjection!12729 (toValue!8852 Int) (toChars!8711 Int)) )
))
(declare-datatypes ((Rule!12640 0))(
  ( (Rule!12641 (regex!6420 Regex!11325) (tag!7280 String!46968) (isSeparator!6420 Bool) (transformation!6420 TokenValueInjection!12728)) )
))
(declare-datatypes ((Token!11978 0))(
  ( (Token!11979 (value!203604 TokenValue!6650) (rule!9320 Rule!12640) (size!31015 Int) (originalCharacters!7020 List!41429)) )
))
(declare-datatypes ((List!41430 0))(
  ( (Nil!41306) (Cons!41306 (h!46726 Token!11978) (t!315555 List!41430)) )
))
(declare-fun suffixTokens!72 () List!41430)

(declare-fun b!3882012 () Bool)

(declare-fun e!2402288 () Bool)

(declare-fun tp!1177175 () Bool)

(declare-fun inv!55464 (Token!11978) Bool)

(assert (=> b!3882012 (= e!2402288 (and (inv!55464 (h!46726 suffixTokens!72)) e!2402301 tp!1177175))))

(declare-fun lt!1354570 () List!41429)

(declare-datatypes ((LexerInterface!6009 0))(
  ( (LexerInterfaceExt!6006 (__x!25518 Int)) (Lexer!6007) )
))
(declare-fun thiss!20629 () LexerInterface!6009)

(declare-fun b!3882013 () Bool)

(declare-datatypes ((tuple2!40538 0))(
  ( (tuple2!40539 (_1!23403 Token!11978) (_2!23403 List!41429)) )
))
(declare-datatypes ((Option!8838 0))(
  ( (None!8837) (Some!8837 (v!39137 tuple2!40538)) )
))
(declare-fun lt!1354568 () Option!8838)

(declare-datatypes ((List!41431 0))(
  ( (Nil!41307) (Cons!41307 (h!46727 Rule!12640) (t!315556 List!41431)) )
))
(declare-fun rules!2768 () List!41431)

(declare-fun maxPrefix!3313 (LexerInterface!6009 List!41431 List!41429) Option!8838)

(assert (=> b!3882013 (= lt!1354568 (maxPrefix!3313 thiss!20629 (t!315556 rules!2768) lt!1354570))))

(declare-fun lt!1354581 () Option!8838)

(declare-fun call!282902 () Option!8838)

(assert (=> b!3882013 (= lt!1354581 call!282902)))

(declare-fun e!2402304 () Option!8838)

(get-info :version)

(assert (=> b!3882013 (= e!2402304 (ite (and ((_ is None!8837) lt!1354581) ((_ is None!8837) lt!1354568)) None!8837 (ite ((_ is None!8837) lt!1354568) lt!1354581 (ite ((_ is None!8837) lt!1354581) lt!1354568 (ite (>= (size!31015 (_1!23403 (v!39137 lt!1354581))) (size!31015 (_1!23403 (v!39137 lt!1354568)))) (Some!8837 (v!39137 lt!1354581)) lt!1354568)))))))

(declare-fun e!2402295 () Bool)

(declare-fun b!3882014 () Bool)

(declare-fun prefixTokens!80 () List!41430)

(declare-fun tp!1177180 () Bool)

(declare-fun e!2402274 () Bool)

(declare-fun inv!21 (TokenValue!6650) Bool)

(assert (=> b!3882014 (= e!2402295 (and (inv!21 (value!203604 (h!46726 prefixTokens!80))) e!2402274 tp!1177180))))

(declare-fun tp!1177189 () Bool)

(declare-fun e!2402278 () Bool)

(declare-fun b!3882015 () Bool)

(declare-fun e!2402298 () Bool)

(declare-fun inv!55461 (String!46968) Bool)

(declare-fun inv!55465 (TokenValueInjection!12728) Bool)

(assert (=> b!3882015 (= e!2402278 (and tp!1177189 (inv!55461 (tag!7280 (h!46727 rules!2768))) (inv!55465 (transformation!6420 (h!46727 rules!2768))) e!2402298))))

(declare-fun e!2402279 () Bool)

(declare-fun tp!1177193 () Bool)

(declare-fun b!3882016 () Bool)

(declare-fun e!2402293 () Bool)

(assert (=> b!3882016 (= e!2402279 (and tp!1177193 (inv!55461 (tag!7280 (rule!9320 (h!46726 suffixTokens!72)))) (inv!55465 (transformation!6420 (rule!9320 (h!46726 suffixTokens!72)))) e!2402293))))

(declare-fun b!3882017 () Bool)

(declare-fun res!1573007 () Bool)

(declare-fun e!2402300 () Bool)

(assert (=> b!3882017 (=> res!1573007 e!2402300)))

(declare-fun lt!1354572 () Option!8838)

(declare-datatypes ((tuple2!40540 0))(
  ( (tuple2!40541 (_1!23404 List!41430) (_2!23404 List!41429)) )
))
(declare-fun lt!1354577 () tuple2!40540)

(declare-fun suffix!1176 () List!41429)

(assert (=> b!3882017 (= res!1573007 (or (not (= lt!1354577 (tuple2!40541 (_1!23404 lt!1354577) (_2!23404 lt!1354577)))) (not (= (_2!23403 (v!39137 lt!1354572)) suffix!1176))))))

(declare-fun b!3882018 () Bool)

(declare-fun e!2402291 () Bool)

(declare-fun tp_is_empty!19621 () Bool)

(declare-fun tp!1177181 () Bool)

(assert (=> b!3882018 (= e!2402291 (and tp_is_empty!19621 tp!1177181))))

(declare-fun b!3882019 () Bool)

(declare-fun e!2402273 () Bool)

(declare-fun e!2402302 () Option!8838)

(assert (=> b!3882019 (= e!2402273 (= lt!1354572 e!2402302))))

(declare-fun c!675202 () Bool)

(assert (=> b!3882019 (= c!675202 (and ((_ is Cons!41307) rules!2768) ((_ is Nil!41307) (t!315556 rules!2768))))))

(declare-fun tp!1177174 () Bool)

(declare-fun b!3882020 () Bool)

(declare-fun err!4329 () Option!8838)

(declare-fun e!2402282 () Bool)

(declare-fun e!2402272 () Bool)

(assert (=> b!3882020 (= e!2402272 (and (inv!21 (value!203604 (_1!23403 (v!39137 err!4329)))) e!2402282 tp!1177174))))

(declare-fun b!3882021 () Bool)

(declare-fun e!2402289 () Bool)

(assert (=> b!3882021 (= e!2402289 (not e!2402300))))

(declare-fun res!1573005 () Bool)

(assert (=> b!3882021 (=> res!1573005 e!2402300)))

(declare-fun lt!1354582 () List!41429)

(assert (=> b!3882021 (= res!1573005 (not (= lt!1354582 lt!1354570)))))

(declare-fun lexList!1777 (LexerInterface!6009 List!41431 List!41429) tuple2!40540)

(assert (=> b!3882021 (= lt!1354577 (lexList!1777 thiss!20629 rules!2768 (_2!23403 (v!39137 lt!1354572))))))

(declare-fun lt!1354569 () TokenValue!6650)

(declare-fun lt!1354567 () List!41429)

(declare-fun lt!1354579 () List!41429)

(declare-fun lt!1354578 () Int)

(assert (=> b!3882021 (and (= (size!31015 (_1!23403 (v!39137 lt!1354572))) lt!1354578) (= (originalCharacters!7020 (_1!23403 (v!39137 lt!1354572))) lt!1354579) (= (tuple2!40539 (_1!23403 (v!39137 lt!1354572)) (_2!23403 (v!39137 lt!1354572))) (tuple2!40539 (Token!11979 lt!1354569 (rule!9320 (_1!23403 (v!39137 lt!1354572))) lt!1354578 lt!1354579) lt!1354567)))))

(declare-fun size!31016 (List!41429) Int)

(assert (=> b!3882021 (= lt!1354578 (size!31016 lt!1354579))))

(declare-fun e!2402292 () Bool)

(assert (=> b!3882021 e!2402292))

(declare-fun res!1573001 () Bool)

(assert (=> b!3882021 (=> (not res!1573001) (not e!2402292))))

(assert (=> b!3882021 (= res!1573001 (= (value!203604 (_1!23403 (v!39137 lt!1354572))) lt!1354569))))

(declare-fun apply!9659 (TokenValueInjection!12728 BalanceConc!24856) TokenValue!6650)

(declare-fun seqFromList!4687 (List!41429) BalanceConc!24856)

(assert (=> b!3882021 (= lt!1354569 (apply!9659 (transformation!6420 (rule!9320 (_1!23403 (v!39137 lt!1354572)))) (seqFromList!4687 lt!1354579)))))

(assert (=> b!3882021 (= (_2!23403 (v!39137 lt!1354572)) lt!1354567)))

(declare-datatypes ((Unit!59370 0))(
  ( (Unit!59371) )
))
(declare-fun lt!1354571 () Unit!59370)

(declare-fun lemmaSamePrefixThenSameSuffix!1736 (List!41429 List!41429 List!41429 List!41429 List!41429) Unit!59370)

(assert (=> b!3882021 (= lt!1354571 (lemmaSamePrefixThenSameSuffix!1736 lt!1354579 (_2!23403 (v!39137 lt!1354572)) lt!1354579 lt!1354567 lt!1354570))))

(declare-fun getSuffix!1970 (List!41429 List!41429) List!41429)

(assert (=> b!3882021 (= lt!1354567 (getSuffix!1970 lt!1354570 lt!1354579))))

(declare-fun isPrefix!3515 (List!41429 List!41429) Bool)

(assert (=> b!3882021 (isPrefix!3515 lt!1354579 lt!1354582)))

(declare-fun ++!10597 (List!41429 List!41429) List!41429)

(assert (=> b!3882021 (= lt!1354582 (++!10597 lt!1354579 (_2!23403 (v!39137 lt!1354572))))))

(declare-fun lt!1354580 () Unit!59370)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2378 (List!41429 List!41429) Unit!59370)

(assert (=> b!3882021 (= lt!1354580 (lemmaConcatTwoListThenFirstIsPrefix!2378 lt!1354579 (_2!23403 (v!39137 lt!1354572))))))

(declare-fun list!15352 (BalanceConc!24856) List!41429)

(declare-fun charsOf!4244 (Token!11978) BalanceConc!24856)

(assert (=> b!3882021 (= lt!1354579 (list!15352 (charsOf!4244 (_1!23403 (v!39137 lt!1354572)))))))

(declare-fun ruleValid!2368 (LexerInterface!6009 Rule!12640) Bool)

(assert (=> b!3882021 (ruleValid!2368 thiss!20629 (rule!9320 (_1!23403 (v!39137 lt!1354572))))))

(declare-fun lt!1354573 () Unit!59370)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1448 (LexerInterface!6009 Rule!12640 List!41431) Unit!59370)

(assert (=> b!3882021 (= lt!1354573 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1448 thiss!20629 (rule!9320 (_1!23403 (v!39137 lt!1354572))) rules!2768))))

(declare-fun lt!1354575 () Unit!59370)

(declare-fun lemmaCharactersSize!1077 (Token!11978) Unit!59370)

(assert (=> b!3882021 (= lt!1354575 (lemmaCharactersSize!1077 (_1!23403 (v!39137 lt!1354572))))))

(declare-fun b!3882023 () Bool)

(declare-fun e!2402297 () Bool)

(assert (=> b!3882023 (= e!2402297 e!2402289)))

(declare-fun res!1572997 () Bool)

(assert (=> b!3882023 (=> (not res!1572997) (not e!2402289))))

(assert (=> b!3882023 (= res!1572997 ((_ is Some!8837) lt!1354572))))

(assert (=> b!3882023 (= lt!1354572 (maxPrefix!3313 thiss!20629 rules!2768 lt!1354570))))

(declare-fun b!3882024 () Bool)

(assert (=> b!3882024 (= e!2402302 e!2402304)))

(declare-fun c!675203 () Bool)

(assert (=> b!3882024 (= c!675203 ((_ is Cons!41307) rules!2768))))

(declare-fun e!2402286 () Bool)

(assert (=> b!3882025 (= e!2402286 (and tp!1177178 tp!1177192))))

(declare-fun b!3882026 () Bool)

(assert (=> b!3882026 (= e!2402302 call!282902)))

(declare-fun b!3882027 () Bool)

(declare-fun res!1573003 () Bool)

(assert (=> b!3882027 (=> (not res!1573003) (not e!2402297))))

(declare-fun suffixResult!91 () List!41429)

(assert (=> b!3882027 (= res!1573003 (= (lexList!1777 thiss!20629 rules!2768 suffix!1176) (tuple2!40541 suffixTokens!72 suffixResult!91)))))

(assert (=> b!3882028 (= e!2402298 (and tp!1177188 tp!1177185))))

(declare-fun b!3882029 () Bool)

(declare-fun e!2402283 () Bool)

(declare-fun tp!1177177 () Bool)

(assert (=> b!3882029 (= e!2402283 (and tp_is_empty!19621 tp!1177177))))

(assert (=> b!3882030 (= e!2402293 (and tp!1177173 tp!1177183))))

(declare-fun bm!282897 () Bool)

(declare-fun maxPrefixOneRule!2389 (LexerInterface!6009 Rule!12640 List!41429) Option!8838)

(assert (=> bm!282897 (= call!282902 (maxPrefixOneRule!2389 thiss!20629 (h!46727 rules!2768) lt!1354570))))

(declare-fun b!3882031 () Bool)

(declare-fun res!1573000 () Bool)

(declare-fun e!2402275 () Bool)

(assert (=> b!3882031 (=> (not res!1573000) (not e!2402275))))

(declare-fun prefix!426 () List!41429)

(declare-fun isEmpty!24536 (List!41429) Bool)

(assert (=> b!3882031 (= res!1573000 (not (isEmpty!24536 prefix!426)))))

(declare-fun b!3882032 () Bool)

(declare-fun e!2402290 () Bool)

(declare-fun tp!1177191 () Bool)

(assert (=> b!3882032 (= e!2402290 (and tp_is_empty!19621 tp!1177191))))

(declare-fun b!3882033 () Bool)

(declare-fun res!1572998 () Bool)

(assert (=> b!3882033 (=> (not res!1572998) (not e!2402275))))

(declare-fun isEmpty!24537 (List!41430) Bool)

(assert (=> b!3882033 (= res!1572998 (not (isEmpty!24537 prefixTokens!80)))))

(declare-fun b!3882034 () Bool)

(assert (=> b!3882034 (= e!2402300 (= lt!1354572 (Some!8837 (tuple2!40539 (_1!23403 (v!39137 lt!1354572)) (_2!23403 (v!39137 lt!1354572))))))))

(assert (=> b!3882034 e!2402273))

(declare-fun res!1572996 () Bool)

(assert (=> b!3882034 (=> (not res!1572996) (not e!2402273))))

(assert (=> b!3882034 (= res!1572996 (isPrefix!3515 lt!1354570 lt!1354570))))

(declare-fun lt!1354583 () Unit!59370)

(declare-fun lemmaIsPrefixRefl!2222 (List!41429 List!41429) Unit!59370)

(assert (=> b!3882034 (= lt!1354583 (lemmaIsPrefixRefl!2222 lt!1354570 lt!1354570))))

(declare-fun lt!1354574 () tuple2!40540)

(assert (=> b!3882034 (= lt!1354574 (tuple2!40541 (Cons!41306 (_1!23403 (v!39137 lt!1354572)) (_1!23404 lt!1354577)) (_2!23404 lt!1354577)))))

(declare-fun b!3882035 () Bool)

(declare-fun tp!1177194 () Bool)

(assert (=> b!3882035 (= e!2402301 (and (inv!21 (value!203604 (h!46726 suffixTokens!72))) e!2402279 tp!1177194))))

(declare-fun b!3882036 () Bool)

(assert (=> b!3882036 (= e!2402275 e!2402297)))

(declare-fun res!1572999 () Bool)

(assert (=> b!3882036 (=> (not res!1572999) (not e!2402297))))

(declare-fun lt!1354576 () List!41430)

(assert (=> b!3882036 (= res!1572999 (= lt!1354574 (tuple2!40541 lt!1354576 suffixResult!91)))))

(assert (=> b!3882036 (= lt!1354574 (lexList!1777 thiss!20629 rules!2768 lt!1354570))))

(declare-fun ++!10598 (List!41430 List!41430) List!41430)

(assert (=> b!3882036 (= lt!1354576 (++!10598 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3882036 (= lt!1354570 (++!10597 prefix!426 suffix!1176))))

(declare-fun res!1573008 () Bool)

(assert (=> start!364488 (=> (not res!1573008) (not e!2402275))))

(assert (=> start!364488 (= res!1573008 ((_ is Lexer!6007) thiss!20629))))

(assert (=> start!364488 e!2402275))

(assert (=> start!364488 e!2402291))

(assert (=> start!364488 true))

(assert (=> start!364488 e!2402283))

(declare-fun e!2402281 () Bool)

(assert (=> start!364488 e!2402281))

(declare-fun e!2402276 () Bool)

(assert (=> start!364488 e!2402276))

(assert (=> start!364488 e!2402288))

(assert (=> start!364488 e!2402290))

(declare-fun b!3882022 () Bool)

(assert (=> b!3882022 (= e!2402292 (= (size!31015 (_1!23403 (v!39137 lt!1354572))) (size!31016 (originalCharacters!7020 (_1!23403 (v!39137 lt!1354572))))))))

(declare-fun b!3882037 () Bool)

(declare-fun res!1573002 () Bool)

(assert (=> b!3882037 (=> (not res!1573002) (not e!2402275))))

(declare-fun isEmpty!24538 (List!41431) Bool)

(assert (=> b!3882037 (= res!1573002 (not (isEmpty!24538 rules!2768)))))

(declare-fun b!3882038 () Bool)

(declare-fun tp!1177187 () Bool)

(assert (=> b!3882038 (= e!2402276 (and (inv!55464 (h!46726 prefixTokens!80)) e!2402295 tp!1177187))))

(declare-fun e!2402296 () Bool)

(assert (=> b!3882039 (= e!2402296 (and tp!1177186 tp!1177176))))

(declare-fun b!3882040 () Bool)

(declare-fun res!1573006 () Bool)

(assert (=> b!3882040 (=> (not res!1573006) (not e!2402275))))

(declare-fun rulesInvariant!5352 (LexerInterface!6009 List!41431) Bool)

(assert (=> b!3882040 (= res!1573006 (rulesInvariant!5352 thiss!20629 rules!2768))))

(declare-fun b!3882041 () Bool)

(declare-fun tp!1177184 () Bool)

(assert (=> b!3882041 (= e!2402281 (and e!2402278 tp!1177184))))

(declare-fun tp!1177179 () Bool)

(declare-fun b!3882042 () Bool)

(assert (=> b!3882042 (= e!2402274 (and tp!1177179 (inv!55461 (tag!7280 (rule!9320 (h!46726 prefixTokens!80)))) (inv!55465 (transformation!6420 (rule!9320 (h!46726 prefixTokens!80)))) e!2402286))))

(declare-fun tp!1177190 () Bool)

(declare-fun b!3882043 () Bool)

(declare-fun e!2402280 () Bool)

(assert (=> b!3882043 (= e!2402280 (and (inv!55464 (_1!23403 (v!39137 err!4329))) e!2402272 tp!1177190))))

(declare-fun b!3882044 () Bool)

(declare-fun tp!1177182 () Bool)

(assert (=> b!3882044 (= e!2402282 (and tp!1177182 (inv!55461 (tag!7280 (rule!9320 (_1!23403 (v!39137 err!4329))))) (inv!55465 (transformation!6420 (rule!9320 (_1!23403 (v!39137 err!4329))))) e!2402296))))

(declare-fun b!3882045 () Bool)

(declare-fun res!1573004 () Bool)

(assert (=> b!3882045 (=> res!1573004 e!2402300)))

(assert (=> b!3882045 (= res!1573004 (not (= lt!1354574 (tuple2!40541 (++!10598 (Cons!41306 (_1!23403 (v!39137 lt!1354572)) Nil!41306) (_1!23404 lt!1354577)) (_2!23404 lt!1354577)))))))

(declare-fun b!3882046 () Bool)

(assert (=> b!3882046 true))

(assert (=> b!3882046 e!2402280))

(assert (=> b!3882046 (= e!2402304 err!4329)))

(assert (= (and start!364488 res!1573008) b!3882037))

(assert (= (and b!3882037 res!1573002) b!3882040))

(assert (= (and b!3882040 res!1573006) b!3882033))

(assert (= (and b!3882033 res!1572998) b!3882031))

(assert (= (and b!3882031 res!1573000) b!3882036))

(assert (= (and b!3882036 res!1572999) b!3882027))

(assert (= (and b!3882027 res!1573003) b!3882023))

(assert (= (and b!3882023 res!1572997) b!3882021))

(assert (= (and b!3882021 res!1573001) b!3882022))

(assert (= (and b!3882021 (not res!1573005)) b!3882045))

(assert (= (and b!3882045 (not res!1573004)) b!3882017))

(assert (= (and b!3882017 (not res!1573007)) b!3882034))

(assert (= (and b!3882034 res!1572996) b!3882019))

(assert (= (and b!3882019 c!675202) b!3882026))

(assert (= (and b!3882019 (not c!675202)) b!3882024))

(assert (= (and b!3882024 c!675203) b!3882013))

(assert (= (and b!3882024 (not c!675203)) b!3882046))

(assert (= b!3882044 b!3882039))

(assert (= b!3882020 b!3882044))

(assert (= b!3882043 b!3882020))

(assert (= (and b!3882046 ((_ is Some!8837) err!4329)) b!3882043))

(assert (= (or b!3882026 b!3882013) bm!282897))

(assert (= (and start!364488 ((_ is Cons!41305) suffixResult!91)) b!3882018))

(assert (= (and start!364488 ((_ is Cons!41305) suffix!1176)) b!3882029))

(assert (= b!3882015 b!3882028))

(assert (= b!3882041 b!3882015))

(assert (= (and start!364488 ((_ is Cons!41307) rules!2768)) b!3882041))

(assert (= b!3882042 b!3882025))

(assert (= b!3882014 b!3882042))

(assert (= b!3882038 b!3882014))

(assert (= (and start!364488 ((_ is Cons!41306) prefixTokens!80)) b!3882038))

(assert (= b!3882016 b!3882030))

(assert (= b!3882035 b!3882016))

(assert (= b!3882012 b!3882035))

(assert (= (and start!364488 ((_ is Cons!41306) suffixTokens!72)) b!3882012))

(assert (= (and start!364488 ((_ is Cons!41305) prefix!426)) b!3882032))

(declare-fun m!4440651 () Bool)

(assert (=> b!3882036 m!4440651))

(declare-fun m!4440653 () Bool)

(assert (=> b!3882036 m!4440653))

(declare-fun m!4440655 () Bool)

(assert (=> b!3882036 m!4440655))

(declare-fun m!4440657 () Bool)

(assert (=> b!3882034 m!4440657))

(declare-fun m!4440659 () Bool)

(assert (=> b!3882034 m!4440659))

(declare-fun m!4440661 () Bool)

(assert (=> bm!282897 m!4440661))

(declare-fun m!4440663 () Bool)

(assert (=> b!3882045 m!4440663))

(declare-fun m!4440665 () Bool)

(assert (=> b!3882015 m!4440665))

(declare-fun m!4440667 () Bool)

(assert (=> b!3882015 m!4440667))

(declare-fun m!4440669 () Bool)

(assert (=> b!3882013 m!4440669))

(declare-fun m!4440671 () Bool)

(assert (=> b!3882016 m!4440671))

(declare-fun m!4440673 () Bool)

(assert (=> b!3882016 m!4440673))

(declare-fun m!4440675 () Bool)

(assert (=> b!3882035 m!4440675))

(declare-fun m!4440677 () Bool)

(assert (=> b!3882040 m!4440677))

(declare-fun m!4440679 () Bool)

(assert (=> b!3882037 m!4440679))

(declare-fun m!4440681 () Bool)

(assert (=> b!3882012 m!4440681))

(declare-fun m!4440683 () Bool)

(assert (=> b!3882042 m!4440683))

(declare-fun m!4440685 () Bool)

(assert (=> b!3882042 m!4440685))

(declare-fun m!4440687 () Bool)

(assert (=> b!3882031 m!4440687))

(declare-fun m!4440689 () Bool)

(assert (=> b!3882021 m!4440689))

(declare-fun m!4440691 () Bool)

(assert (=> b!3882021 m!4440691))

(declare-fun m!4440693 () Bool)

(assert (=> b!3882021 m!4440693))

(declare-fun m!4440695 () Bool)

(assert (=> b!3882021 m!4440695))

(declare-fun m!4440697 () Bool)

(assert (=> b!3882021 m!4440697))

(declare-fun m!4440699 () Bool)

(assert (=> b!3882021 m!4440699))

(declare-fun m!4440701 () Bool)

(assert (=> b!3882021 m!4440701))

(declare-fun m!4440703 () Bool)

(assert (=> b!3882021 m!4440703))

(declare-fun m!4440705 () Bool)

(assert (=> b!3882021 m!4440705))

(declare-fun m!4440707 () Bool)

(assert (=> b!3882021 m!4440707))

(assert (=> b!3882021 m!4440693))

(declare-fun m!4440709 () Bool)

(assert (=> b!3882021 m!4440709))

(assert (=> b!3882021 m!4440701))

(declare-fun m!4440711 () Bool)

(assert (=> b!3882021 m!4440711))

(declare-fun m!4440713 () Bool)

(assert (=> b!3882021 m!4440713))

(declare-fun m!4440715 () Bool)

(assert (=> b!3882021 m!4440715))

(declare-fun m!4440717 () Bool)

(assert (=> b!3882043 m!4440717))

(declare-fun m!4440719 () Bool)

(assert (=> b!3882020 m!4440719))

(declare-fun m!4440721 () Bool)

(assert (=> b!3882033 m!4440721))

(declare-fun m!4440723 () Bool)

(assert (=> b!3882027 m!4440723))

(declare-fun m!4440725 () Bool)

(assert (=> b!3882014 m!4440725))

(declare-fun m!4440727 () Bool)

(assert (=> b!3882044 m!4440727))

(declare-fun m!4440729 () Bool)

(assert (=> b!3882044 m!4440729))

(declare-fun m!4440731 () Bool)

(assert (=> b!3882022 m!4440731))

(declare-fun m!4440733 () Bool)

(assert (=> b!3882038 m!4440733))

(declare-fun m!4440735 () Bool)

(assert (=> b!3882023 m!4440735))

(check-sat tp_is_empty!19621 (not b!3882015) (not b!3882018) (not b!3882022) (not b_next!105939) (not b!3882042) (not b!3882029) (not b_next!105945) (not b!3882044) (not b!3882035) (not b!3882034) (not b!3882040) (not b!3882036) (not b!3882043) b_and!291323 (not b!3882032) (not b!3882014) (not b!3882013) (not b!3882038) (not b!3882045) b_and!291327 b_and!291321 (not b_next!105943) b_and!291325 (not b_next!105949) (not b!3882041) (not b!3882033) (not b!3882027) (not bm!282897) (not b_next!105951) b_and!291331 (not b_next!105941) (not b_next!105947) (not b!3882012) b_and!291329 b_and!291319 (not b!3882031) (not b!3882016) (not b!3882020) (not b!3882021) (not b_next!105937) (not b!3882037) (not b!3882023) b_and!291333)
(check-sat (not b_next!105945) b_and!291323 (not b_next!105939) (not b_next!105949) (not b_next!105951) (not b_next!105947) (not b_next!105937) b_and!291333 b_and!291327 b_and!291321 (not b_next!105943) b_and!291325 b_and!291331 (not b_next!105941) b_and!291329 b_and!291319)
