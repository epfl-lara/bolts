; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361792 () Bool)

(assert start!361792)

(declare-fun b!3858743 () Bool)

(declare-fun b_free!103645 () Bool)

(declare-fun b_next!104349 () Bool)

(assert (=> b!3858743 (= b_free!103645 (not b_next!104349))))

(declare-fun tp!1169616 () Bool)

(declare-fun b_and!288771 () Bool)

(assert (=> b!3858743 (= tp!1169616 b_and!288771)))

(declare-fun b_free!103647 () Bool)

(declare-fun b_next!104351 () Bool)

(assert (=> b!3858743 (= b_free!103647 (not b_next!104351))))

(declare-fun tp!1169623 () Bool)

(declare-fun b_and!288773 () Bool)

(assert (=> b!3858743 (= tp!1169623 b_and!288773)))

(declare-fun b!3858744 () Bool)

(declare-fun b_free!103649 () Bool)

(declare-fun b_next!104353 () Bool)

(assert (=> b!3858744 (= b_free!103649 (not b_next!104353))))

(declare-fun tp!1169622 () Bool)

(declare-fun b_and!288775 () Bool)

(assert (=> b!3858744 (= tp!1169622 b_and!288775)))

(declare-fun b_free!103651 () Bool)

(declare-fun b_next!104355 () Bool)

(assert (=> b!3858744 (= b_free!103651 (not b_next!104355))))

(declare-fun tp!1169619 () Bool)

(declare-fun b_and!288777 () Bool)

(assert (=> b!3858744 (= tp!1169619 b_and!288777)))

(declare-fun b!3858723 () Bool)

(declare-fun b_free!103653 () Bool)

(declare-fun b_next!104357 () Bool)

(assert (=> b!3858723 (= b_free!103653 (not b_next!104357))))

(declare-fun tp!1169618 () Bool)

(declare-fun b_and!288779 () Bool)

(assert (=> b!3858723 (= tp!1169618 b_and!288779)))

(declare-fun b_free!103655 () Bool)

(declare-fun b_next!104359 () Bool)

(assert (=> b!3858723 (= b_free!103655 (not b_next!104359))))

(declare-fun tp!1169628 () Bool)

(declare-fun b_and!288781 () Bool)

(assert (=> b!3858723 (= tp!1169628 b_and!288781)))

(declare-fun b!3858714 () Bool)

(declare-fun res!1562216 () Bool)

(declare-fun e!2385347 () Bool)

(assert (=> b!3858714 (=> res!1562216 e!2385347)))

(declare-datatypes ((C!22648 0))(
  ( (C!22649 (val!13418 Int)) )
))
(declare-datatypes ((List!41016 0))(
  ( (Nil!40892) (Cons!40892 (h!46312 C!22648) (t!313219 List!41016)) )
))
(declare-datatypes ((IArray!25079 0))(
  ( (IArray!25080 (innerList!12597 List!41016)) )
))
(declare-datatypes ((Conc!12537 0))(
  ( (Node!12537 (left!31514 Conc!12537) (right!31844 Conc!12537) (csize!25304 Int) (cheight!12748 Int)) (Leaf!19407 (xs!15843 IArray!25079) (csize!25305 Int)) (Empty!12537) )
))
(declare-datatypes ((BalanceConc!24668 0))(
  ( (BalanceConc!24669 (c!671952 Conc!12537)) )
))
(declare-datatypes ((List!41017 0))(
  ( (Nil!40893) (Cons!40893 (h!46313 (_ BitVec 16)) (t!313220 List!41017)) )
))
(declare-datatypes ((TokenValue!6556 0))(
  ( (FloatLiteralValue!13112 (text!46337 List!41017)) (TokenValueExt!6555 (__x!25329 Int)) (Broken!32780 (value!200899 List!41017)) (Object!6679) (End!6556) (Def!6556) (Underscore!6556) (Match!6556) (Else!6556) (Error!6556) (Case!6556) (If!6556) (Extends!6556) (Abstract!6556) (Class!6556) (Val!6556) (DelimiterValue!13112 (del!6616 List!41017)) (KeywordValue!6562 (value!200900 List!41017)) (CommentValue!13112 (value!200901 List!41017)) (WhitespaceValue!13112 (value!200902 List!41017)) (IndentationValue!6556 (value!200903 List!41017)) (String!46497) (Int32!6556) (Broken!32781 (value!200904 List!41017)) (Boolean!6557) (Unit!58559) (OperatorValue!6559 (op!6616 List!41017)) (IdentifierValue!13112 (value!200905 List!41017)) (IdentifierValue!13113 (value!200906 List!41017)) (WhitespaceValue!13113 (value!200907 List!41017)) (True!13112) (False!13112) (Broken!32782 (value!200908 List!41017)) (Broken!32783 (value!200909 List!41017)) (True!13113) (RightBrace!6556) (RightBracket!6556) (Colon!6556) (Null!6556) (Comma!6556) (LeftBracket!6556) (False!13113) (LeftBrace!6556) (ImaginaryLiteralValue!6556 (text!46338 List!41017)) (StringLiteralValue!19668 (value!200910 List!41017)) (EOFValue!6556 (value!200911 List!41017)) (IdentValue!6556 (value!200912 List!41017)) (DelimiterValue!13113 (value!200913 List!41017)) (DedentValue!6556 (value!200914 List!41017)) (NewLineValue!6556 (value!200915 List!41017)) (IntegerValue!19668 (value!200916 (_ BitVec 32)) (text!46339 List!41017)) (IntegerValue!19669 (value!200917 Int) (text!46340 List!41017)) (Times!6556) (Or!6556) (Equal!6556) (Minus!6556) (Broken!32784 (value!200918 List!41017)) (And!6556) (Div!6556) (LessEqual!6556) (Mod!6556) (Concat!17787) (Not!6556) (Plus!6556) (SpaceValue!6556 (value!200919 List!41017)) (IntegerValue!19670 (value!200920 Int) (text!46341 List!41017)) (StringLiteralValue!19669 (text!46342 List!41017)) (FloatLiteralValue!13113 (text!46343 List!41017)) (BytesLiteralValue!6556 (value!200921 List!41017)) (CommentValue!13113 (value!200922 List!41017)) (StringLiteralValue!19670 (value!200923 List!41017)) (ErrorTokenValue!6556 (msg!6617 List!41017)) )
))
(declare-datatypes ((Regex!11231 0))(
  ( (ElementMatch!11231 (c!671953 C!22648)) (Concat!17788 (regOne!22974 Regex!11231) (regTwo!22974 Regex!11231)) (EmptyExpr!11231) (Star!11231 (reg!11560 Regex!11231)) (EmptyLang!11231) (Union!11231 (regOne!22975 Regex!11231) (regTwo!22975 Regex!11231)) )
))
(declare-datatypes ((String!46498 0))(
  ( (String!46499 (value!200924 String)) )
))
(declare-datatypes ((TokenValueInjection!12540 0))(
  ( (TokenValueInjection!12541 (toValue!8754 Int) (toChars!8613 Int)) )
))
(declare-datatypes ((Rule!12452 0))(
  ( (Rule!12453 (regex!6326 Regex!11231) (tag!7186 String!46498) (isSeparator!6326 Bool) (transformation!6326 TokenValueInjection!12540)) )
))
(declare-datatypes ((Token!11790 0))(
  ( (Token!11791 (value!200925 TokenValue!6556) (rule!9192 Rule!12452) (size!30761 Int) (originalCharacters!6926 List!41016)) )
))
(declare-datatypes ((tuple2!40094 0))(
  ( (tuple2!40095 (_1!23181 Token!11790) (_2!23181 List!41016)) )
))
(declare-fun lt!1340575 () tuple2!40094)

(declare-fun lt!1340562 () Int)

(declare-fun size!30762 (List!41016) Int)

(assert (=> b!3858714 (= res!1562216 (>= (size!30762 (_2!23181 lt!1340575)) lt!1340562))))

(declare-fun b!3858715 () Bool)

(declare-fun res!1562222 () Bool)

(assert (=> b!3858715 (=> res!1562222 e!2385347)))

(declare-datatypes ((List!41018 0))(
  ( (Nil!40894) (Cons!40894 (h!46314 Token!11790) (t!313221 List!41018)) )
))
(declare-fun prefixTokens!80 () List!41018)

(declare-fun isEmpty!24218 (List!41018) Bool)

(declare-fun tail!5839 (List!41018) List!41018)

(assert (=> b!3858715 (= res!1562222 (not (isEmpty!24218 (tail!5839 prefixTokens!80))))))

(declare-fun b!3858716 () Bool)

(declare-fun e!2385332 () Bool)

(declare-fun e!2385331 () Bool)

(assert (=> b!3858716 (= e!2385332 e!2385331)))

(declare-fun res!1562221 () Bool)

(assert (=> b!3858716 (=> (not res!1562221) (not e!2385331))))

(declare-datatypes ((tuple2!40096 0))(
  ( (tuple2!40097 (_1!23182 List!41018) (_2!23182 List!41016)) )
))
(declare-fun lt!1340561 () tuple2!40096)

(declare-fun suffixResult!91 () List!41016)

(declare-fun lt!1340569 () List!41018)

(assert (=> b!3858716 (= res!1562221 (= lt!1340561 (tuple2!40097 lt!1340569 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5915 0))(
  ( (LexerInterfaceExt!5912 (__x!25330 Int)) (Lexer!5913) )
))
(declare-fun thiss!20629 () LexerInterface!5915)

(declare-datatypes ((List!41019 0))(
  ( (Nil!40895) (Cons!40895 (h!46315 Rule!12452) (t!313222 List!41019)) )
))
(declare-fun rules!2768 () List!41019)

(declare-fun lt!1340574 () List!41016)

(declare-fun lexList!1683 (LexerInterface!5915 List!41019 List!41016) tuple2!40096)

(assert (=> b!3858716 (= lt!1340561 (lexList!1683 thiss!20629 rules!2768 lt!1340574))))

(declare-fun suffixTokens!72 () List!41018)

(declare-fun ++!10409 (List!41018 List!41018) List!41018)

(assert (=> b!3858716 (= lt!1340569 (++!10409 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41016)

(declare-fun suffix!1176 () List!41016)

(declare-fun ++!10410 (List!41016 List!41016) List!41016)

(assert (=> b!3858716 (= lt!1340574 (++!10410 prefix!426 suffix!1176))))

(declare-fun b!3858717 () Bool)

(declare-fun res!1562225 () Bool)

(declare-fun e!2385326 () Bool)

(assert (=> b!3858717 (=> res!1562225 e!2385326)))

(declare-fun lt!1340566 () tuple2!40096)

(declare-datatypes ((Option!8744 0))(
  ( (None!8743) (Some!8743 (v!39041 tuple2!40094)) )
))
(declare-fun lt!1340579 () Option!8744)

(assert (=> b!3858717 (= res!1562225 (or (not (= lt!1340566 (tuple2!40097 (_1!23182 lt!1340566) (_2!23182 lt!1340566)))) (= (_2!23181 (v!39041 lt!1340579)) suffix!1176)))))

(declare-fun b!3858718 () Bool)

(declare-fun e!2385351 () Bool)

(declare-fun tp_is_empty!19433 () Bool)

(declare-fun tp!1169614 () Bool)

(assert (=> b!3858718 (= e!2385351 (and tp_is_empty!19433 tp!1169614))))

(declare-fun tp!1169613 () Bool)

(declare-fun e!2385353 () Bool)

(declare-fun b!3858719 () Bool)

(declare-fun e!2385344 () Bool)

(declare-fun inv!55054 (String!46498) Bool)

(declare-fun inv!55057 (TokenValueInjection!12540) Bool)

(assert (=> b!3858719 (= e!2385353 (and tp!1169613 (inv!55054 (tag!7186 (rule!9192 (h!46314 prefixTokens!80)))) (inv!55057 (transformation!6326 (rule!9192 (h!46314 prefixTokens!80)))) e!2385344))))

(declare-fun res!1562211 () Bool)

(assert (=> start!361792 (=> (not res!1562211) (not e!2385332))))

(get-info :version)

(assert (=> start!361792 (= res!1562211 ((_ is Lexer!5913) thiss!20629))))

(assert (=> start!361792 e!2385332))

(assert (=> start!361792 e!2385351))

(assert (=> start!361792 true))

(declare-fun e!2385327 () Bool)

(assert (=> start!361792 e!2385327))

(declare-fun e!2385335 () Bool)

(assert (=> start!361792 e!2385335))

(declare-fun e!2385337 () Bool)

(assert (=> start!361792 e!2385337))

(declare-fun e!2385352 () Bool)

(assert (=> start!361792 e!2385352))

(declare-fun e!2385333 () Bool)

(assert (=> start!361792 e!2385333))

(declare-fun b!3858720 () Bool)

(declare-fun res!1562217 () Bool)

(assert (=> b!3858720 (=> res!1562217 e!2385326)))

(assert (=> b!3858720 (= res!1562217 (not (= lt!1340561 (tuple2!40097 (++!10409 (Cons!40894 (_1!23181 (v!39041 lt!1340579)) Nil!40894) (_1!23182 lt!1340566)) (_2!23182 lt!1340566)))))))

(declare-fun b!3858721 () Bool)

(declare-fun tp!1169625 () Bool)

(assert (=> b!3858721 (= e!2385327 (and tp_is_empty!19433 tp!1169625))))

(declare-fun b!3858722 () Bool)

(declare-fun lt!1340576 () Token!11790)

(assert (=> b!3858722 (= e!2385347 (or (not (= prefixTokens!80 (Cons!40894 lt!1340576 Nil!40894))) (not (= prefixTokens!80 Nil!40894))))))

(declare-fun e!2385348 () Bool)

(assert (=> b!3858723 (= e!2385348 (and tp!1169618 tp!1169628))))

(declare-fun b!3858724 () Bool)

(declare-fun res!1562224 () Bool)

(assert (=> b!3858724 (=> (not res!1562224) (not e!2385331))))

(assert (=> b!3858724 (= res!1562224 (= (lexList!1683 thiss!20629 rules!2768 suffix!1176) (tuple2!40097 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3858725 () Bool)

(declare-fun e!2385328 () Bool)

(declare-fun e!2385330 () Bool)

(assert (=> b!3858725 (= e!2385328 e!2385330)))

(declare-fun res!1562219 () Bool)

(assert (=> b!3858725 (=> res!1562219 e!2385330)))

(declare-fun lt!1340563 () Int)

(declare-fun lt!1340567 () Int)

(declare-fun lt!1340565 () Int)

(assert (=> b!3858725 (= res!1562219 (not (= (+ lt!1340563 lt!1340565) lt!1340567)))))

(assert (=> b!3858725 (= lt!1340567 (size!30762 lt!1340574))))

(declare-fun b!3858726 () Bool)

(declare-fun e!2385343 () Bool)

(assert (=> b!3858726 (= e!2385343 (= (size!30761 (_1!23181 (v!39041 lt!1340579))) (size!30762 (originalCharacters!6926 (_1!23181 (v!39041 lt!1340579))))))))

(declare-fun b!3858727 () Bool)

(declare-fun res!1562209 () Bool)

(assert (=> b!3858727 (=> (not res!1562209) (not e!2385332))))

(assert (=> b!3858727 (= res!1562209 (not (isEmpty!24218 prefixTokens!80)))))

(declare-fun tp!1169626 () Bool)

(declare-fun e!2385354 () Bool)

(declare-fun b!3858728 () Bool)

(assert (=> b!3858728 (= e!2385354 (and tp!1169626 (inv!55054 (tag!7186 (h!46315 rules!2768))) (inv!55057 (transformation!6326 (h!46315 rules!2768))) e!2385348))))

(declare-fun b!3858729 () Bool)

(declare-fun e!2385349 () Bool)

(declare-fun tp!1169612 () Bool)

(declare-fun inv!55058 (Token!11790) Bool)

(assert (=> b!3858729 (= e!2385337 (and (inv!55058 (h!46314 prefixTokens!80)) e!2385349 tp!1169612))))

(declare-fun b!3858730 () Bool)

(declare-fun res!1562215 () Bool)

(assert (=> b!3858730 (=> (not res!1562215) (not e!2385332))))

(declare-fun rulesInvariant!5258 (LexerInterface!5915 List!41019) Bool)

(assert (=> b!3858730 (= res!1562215 (rulesInvariant!5258 thiss!20629 rules!2768))))

(declare-fun b!3858731 () Bool)

(declare-fun tp!1169621 () Bool)

(assert (=> b!3858731 (= e!2385333 (and tp_is_empty!19433 tp!1169621))))

(declare-fun b!3858732 () Bool)

(assert (=> b!3858732 (= e!2385326 e!2385328)))

(declare-fun res!1562223 () Bool)

(assert (=> b!3858732 (=> res!1562223 e!2385328)))

(assert (=> b!3858732 (= res!1562223 (>= lt!1340565 lt!1340562))))

(assert (=> b!3858732 (= lt!1340562 (size!30762 suffix!1176))))

(assert (=> b!3858732 (= lt!1340565 (size!30762 (_2!23181 (v!39041 lt!1340579))))))

(declare-fun b!3858733 () Bool)

(declare-fun e!2385336 () Bool)

(assert (=> b!3858733 (= e!2385336 (not e!2385326))))

(declare-fun res!1562212 () Bool)

(assert (=> b!3858733 (=> res!1562212 e!2385326)))

(declare-fun lt!1340578 () List!41016)

(assert (=> b!3858733 (= res!1562212 (not (= lt!1340578 lt!1340574)))))

(assert (=> b!3858733 (= lt!1340566 (lexList!1683 thiss!20629 rules!2768 (_2!23181 (v!39041 lt!1340579))))))

(declare-fun lt!1340581 () List!41016)

(declare-fun lt!1340572 () TokenValue!6556)

(declare-fun lt!1340570 () List!41016)

(assert (=> b!3858733 (and (= (size!30761 (_1!23181 (v!39041 lt!1340579))) lt!1340563) (= (originalCharacters!6926 (_1!23181 (v!39041 lt!1340579))) lt!1340581) (= (v!39041 lt!1340579) (tuple2!40095 (Token!11791 lt!1340572 (rule!9192 (_1!23181 (v!39041 lt!1340579))) lt!1340563 lt!1340581) lt!1340570)))))

(assert (=> b!3858733 (= lt!1340563 (size!30762 lt!1340581))))

(assert (=> b!3858733 e!2385343))

(declare-fun res!1562218 () Bool)

(assert (=> b!3858733 (=> (not res!1562218) (not e!2385343))))

(assert (=> b!3858733 (= res!1562218 (= (value!200925 (_1!23181 (v!39041 lt!1340579))) lt!1340572))))

(declare-fun apply!9569 (TokenValueInjection!12540 BalanceConc!24668) TokenValue!6556)

(declare-fun seqFromList!4597 (List!41016) BalanceConc!24668)

(assert (=> b!3858733 (= lt!1340572 (apply!9569 (transformation!6326 (rule!9192 (_1!23181 (v!39041 lt!1340579)))) (seqFromList!4597 lt!1340581)))))

(assert (=> b!3858733 (= (_2!23181 (v!39041 lt!1340579)) lt!1340570)))

(declare-datatypes ((Unit!58560 0))(
  ( (Unit!58561) )
))
(declare-fun lt!1340568 () Unit!58560)

(declare-fun lemmaSamePrefixThenSameSuffix!1646 (List!41016 List!41016 List!41016 List!41016 List!41016) Unit!58560)

(assert (=> b!3858733 (= lt!1340568 (lemmaSamePrefixThenSameSuffix!1646 lt!1340581 (_2!23181 (v!39041 lt!1340579)) lt!1340581 lt!1340570 lt!1340574))))

(declare-fun getSuffix!1880 (List!41016 List!41016) List!41016)

(assert (=> b!3858733 (= lt!1340570 (getSuffix!1880 lt!1340574 lt!1340581))))

(declare-fun isPrefix!3425 (List!41016 List!41016) Bool)

(assert (=> b!3858733 (isPrefix!3425 lt!1340581 lt!1340578)))

(assert (=> b!3858733 (= lt!1340578 (++!10410 lt!1340581 (_2!23181 (v!39041 lt!1340579))))))

(declare-fun lt!1340577 () Unit!58560)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2288 (List!41016 List!41016) Unit!58560)

(assert (=> b!3858733 (= lt!1340577 (lemmaConcatTwoListThenFirstIsPrefix!2288 lt!1340581 (_2!23181 (v!39041 lt!1340579))))))

(declare-fun list!15224 (BalanceConc!24668) List!41016)

(declare-fun charsOf!4154 (Token!11790) BalanceConc!24668)

(assert (=> b!3858733 (= lt!1340581 (list!15224 (charsOf!4154 (_1!23181 (v!39041 lt!1340579)))))))

(declare-fun ruleValid!2278 (LexerInterface!5915 Rule!12452) Bool)

(assert (=> b!3858733 (ruleValid!2278 thiss!20629 (rule!9192 (_1!23181 (v!39041 lt!1340579))))))

(declare-fun lt!1340571 () Unit!58560)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1358 (LexerInterface!5915 Rule!12452 List!41019) Unit!58560)

(assert (=> b!3858733 (= lt!1340571 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1358 thiss!20629 (rule!9192 (_1!23181 (v!39041 lt!1340579))) rules!2768))))

(declare-fun lt!1340564 () Unit!58560)

(declare-fun lemmaCharactersSize!987 (Token!11790) Unit!58560)

(assert (=> b!3858733 (= lt!1340564 (lemmaCharactersSize!987 (_1!23181 (v!39041 lt!1340579))))))

(declare-fun e!2385350 () Bool)

(declare-fun b!3858734 () Bool)

(declare-fun e!2385338 () Bool)

(declare-fun tp!1169615 () Bool)

(declare-fun inv!21 (TokenValue!6556) Bool)

(assert (=> b!3858734 (= e!2385350 (and (inv!21 (value!200925 (h!46314 suffixTokens!72))) e!2385338 tp!1169615))))

(declare-fun b!3858735 () Bool)

(declare-fun res!1562210 () Bool)

(assert (=> b!3858735 (=> (not res!1562210) (not e!2385332))))

(declare-fun isEmpty!24219 (List!41016) Bool)

(assert (=> b!3858735 (= res!1562210 (not (isEmpty!24219 prefix!426)))))

(declare-fun b!3858736 () Bool)

(declare-fun e!2385342 () Bool)

(assert (=> b!3858736 (= e!2385342 e!2385347)))

(declare-fun res!1562208 () Bool)

(assert (=> b!3858736 (=> res!1562208 e!2385347)))

(assert (=> b!3858736 (= res!1562208 (not (= (_1!23181 lt!1340575) lt!1340576)))))

(declare-fun head!8128 (List!41018) Token!11790)

(assert (=> b!3858736 (= lt!1340576 (head!8128 prefixTokens!80))))

(declare-fun get!13529 (Option!8744) tuple2!40094)

(assert (=> b!3858736 (= lt!1340575 (get!13529 lt!1340579))))

(declare-fun e!2385346 () Bool)

(declare-fun tp!1169627 () Bool)

(declare-fun b!3858737 () Bool)

(assert (=> b!3858737 (= e!2385338 (and tp!1169627 (inv!55054 (tag!7186 (rule!9192 (h!46314 suffixTokens!72)))) (inv!55057 (transformation!6326 (rule!9192 (h!46314 suffixTokens!72)))) e!2385346))))

(declare-fun b!3858738 () Bool)

(declare-fun e!2385329 () Bool)

(assert (=> b!3858738 (= e!2385329 e!2385342)))

(declare-fun res!1562220 () Bool)

(assert (=> b!3858738 (=> res!1562220 e!2385342)))

(declare-fun matchR!5378 (Regex!11231 List!41016) Bool)

(assert (=> b!3858738 (= res!1562220 (not (matchR!5378 (regex!6326 (rule!9192 (_1!23181 (v!39041 lt!1340579)))) lt!1340581)))))

(declare-fun maxPrefixOneRule!2301 (LexerInterface!5915 Rule!12452 List!41016) Option!8744)

(assert (=> b!3858738 (= (maxPrefixOneRule!2301 thiss!20629 (rule!9192 (_1!23181 (v!39041 lt!1340579))) lt!1340574) (Some!8743 (tuple2!40095 (Token!11791 lt!1340572 (rule!9192 (_1!23181 (v!39041 lt!1340579))) lt!1340563 lt!1340581) (_2!23181 (v!39041 lt!1340579)))))))

(declare-fun lt!1340573 () Unit!58560)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1199 (LexerInterface!5915 List!41019 List!41016 List!41016 List!41016 Rule!12452) Unit!58560)

(assert (=> b!3858738 (= lt!1340573 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1199 thiss!20629 rules!2768 lt!1340581 lt!1340574 (_2!23181 (v!39041 lt!1340579)) (rule!9192 (_1!23181 (v!39041 lt!1340579)))))))

(declare-fun b!3858739 () Bool)

(declare-fun tp!1169624 () Bool)

(assert (=> b!3858739 (= e!2385335 (and e!2385354 tp!1169624))))

(declare-fun tp!1169617 () Bool)

(declare-fun b!3858740 () Bool)

(assert (=> b!3858740 (= e!2385349 (and (inv!21 (value!200925 (h!46314 prefixTokens!80))) e!2385353 tp!1169617))))

(declare-fun b!3858741 () Bool)

(declare-fun res!1562213 () Bool)

(assert (=> b!3858741 (=> (not res!1562213) (not e!2385332))))

(declare-fun isEmpty!24220 (List!41019) Bool)

(assert (=> b!3858741 (= res!1562213 (not (isEmpty!24220 rules!2768)))))

(declare-fun b!3858742 () Bool)

(assert (=> b!3858742 (= e!2385331 e!2385336)))

(declare-fun res!1562214 () Bool)

(assert (=> b!3858742 (=> (not res!1562214) (not e!2385336))))

(assert (=> b!3858742 (= res!1562214 ((_ is Some!8743) lt!1340579))))

(declare-fun maxPrefix!3219 (LexerInterface!5915 List!41019 List!41016) Option!8744)

(assert (=> b!3858742 (= lt!1340579 (maxPrefix!3219 thiss!20629 rules!2768 lt!1340574))))

(assert (=> b!3858743 (= e!2385346 (and tp!1169616 tp!1169623))))

(assert (=> b!3858744 (= e!2385344 (and tp!1169622 tp!1169619))))

(declare-fun tp!1169620 () Bool)

(declare-fun b!3858745 () Bool)

(assert (=> b!3858745 (= e!2385352 (and (inv!55058 (h!46314 suffixTokens!72)) e!2385350 tp!1169620))))

(declare-fun b!3858746 () Bool)

(assert (=> b!3858746 (= e!2385330 e!2385329)))

(declare-fun res!1562226 () Bool)

(assert (=> b!3858746 (=> res!1562226 e!2385329)))

(declare-fun lt!1340580 () Int)

(assert (=> b!3858746 (= res!1562226 (or (not (= (+ lt!1340580 lt!1340562) lt!1340567)) (<= lt!1340563 lt!1340580)))))

(assert (=> b!3858746 (= lt!1340580 (size!30762 prefix!426))))

(assert (= (and start!361792 res!1562211) b!3858741))

(assert (= (and b!3858741 res!1562213) b!3858730))

(assert (= (and b!3858730 res!1562215) b!3858727))

(assert (= (and b!3858727 res!1562209) b!3858735))

(assert (= (and b!3858735 res!1562210) b!3858716))

(assert (= (and b!3858716 res!1562221) b!3858724))

(assert (= (and b!3858724 res!1562224) b!3858742))

(assert (= (and b!3858742 res!1562214) b!3858733))

(assert (= (and b!3858733 res!1562218) b!3858726))

(assert (= (and b!3858733 (not res!1562212)) b!3858720))

(assert (= (and b!3858720 (not res!1562217)) b!3858717))

(assert (= (and b!3858717 (not res!1562225)) b!3858732))

(assert (= (and b!3858732 (not res!1562223)) b!3858725))

(assert (= (and b!3858725 (not res!1562219)) b!3858746))

(assert (= (and b!3858746 (not res!1562226)) b!3858738))

(assert (= (and b!3858738 (not res!1562220)) b!3858736))

(assert (= (and b!3858736 (not res!1562208)) b!3858714))

(assert (= (and b!3858714 (not res!1562216)) b!3858715))

(assert (= (and b!3858715 (not res!1562222)) b!3858722))

(assert (= (and start!361792 ((_ is Cons!40892) suffixResult!91)) b!3858718))

(assert (= (and start!361792 ((_ is Cons!40892) suffix!1176)) b!3858721))

(assert (= b!3858728 b!3858723))

(assert (= b!3858739 b!3858728))

(assert (= (and start!361792 ((_ is Cons!40895) rules!2768)) b!3858739))

(assert (= b!3858719 b!3858744))

(assert (= b!3858740 b!3858719))

(assert (= b!3858729 b!3858740))

(assert (= (and start!361792 ((_ is Cons!40894) prefixTokens!80)) b!3858729))

(assert (= b!3858737 b!3858743))

(assert (= b!3858734 b!3858737))

(assert (= b!3858745 b!3858734))

(assert (= (and start!361792 ((_ is Cons!40894) suffixTokens!72)) b!3858745))

(assert (= (and start!361792 ((_ is Cons!40892) prefix!426)) b!3858731))

(declare-fun m!4414255 () Bool)

(assert (=> b!3858737 m!4414255))

(declare-fun m!4414257 () Bool)

(assert (=> b!3858737 m!4414257))

(declare-fun m!4414259 () Bool)

(assert (=> b!3858732 m!4414259))

(declare-fun m!4414261 () Bool)

(assert (=> b!3858732 m!4414261))

(declare-fun m!4414263 () Bool)

(assert (=> b!3858741 m!4414263))

(declare-fun m!4414265 () Bool)

(assert (=> b!3858716 m!4414265))

(declare-fun m!4414267 () Bool)

(assert (=> b!3858716 m!4414267))

(declare-fun m!4414269 () Bool)

(assert (=> b!3858716 m!4414269))

(declare-fun m!4414271 () Bool)

(assert (=> b!3858715 m!4414271))

(assert (=> b!3858715 m!4414271))

(declare-fun m!4414273 () Bool)

(assert (=> b!3858715 m!4414273))

(declare-fun m!4414275 () Bool)

(assert (=> b!3858720 m!4414275))

(declare-fun m!4414277 () Bool)

(assert (=> b!3858714 m!4414277))

(declare-fun m!4414279 () Bool)

(assert (=> b!3858746 m!4414279))

(declare-fun m!4414281 () Bool)

(assert (=> b!3858745 m!4414281))

(declare-fun m!4414283 () Bool)

(assert (=> b!3858725 m!4414283))

(declare-fun m!4414285 () Bool)

(assert (=> b!3858726 m!4414285))

(declare-fun m!4414287 () Bool)

(assert (=> b!3858738 m!4414287))

(declare-fun m!4414289 () Bool)

(assert (=> b!3858738 m!4414289))

(declare-fun m!4414291 () Bool)

(assert (=> b!3858738 m!4414291))

(declare-fun m!4414293 () Bool)

(assert (=> b!3858742 m!4414293))

(declare-fun m!4414295 () Bool)

(assert (=> b!3858724 m!4414295))

(declare-fun m!4414297 () Bool)

(assert (=> b!3858727 m!4414297))

(declare-fun m!4414299 () Bool)

(assert (=> b!3858736 m!4414299))

(declare-fun m!4414301 () Bool)

(assert (=> b!3858736 m!4414301))

(declare-fun m!4414303 () Bool)

(assert (=> b!3858728 m!4414303))

(declare-fun m!4414305 () Bool)

(assert (=> b!3858728 m!4414305))

(declare-fun m!4414307 () Bool)

(assert (=> b!3858740 m!4414307))

(declare-fun m!4414309 () Bool)

(assert (=> b!3858730 m!4414309))

(declare-fun m!4414311 () Bool)

(assert (=> b!3858729 m!4414311))

(declare-fun m!4414313 () Bool)

(assert (=> b!3858735 m!4414313))

(declare-fun m!4414315 () Bool)

(assert (=> b!3858719 m!4414315))

(declare-fun m!4414317 () Bool)

(assert (=> b!3858719 m!4414317))

(declare-fun m!4414319 () Bool)

(assert (=> b!3858733 m!4414319))

(declare-fun m!4414321 () Bool)

(assert (=> b!3858733 m!4414321))

(declare-fun m!4414323 () Bool)

(assert (=> b!3858733 m!4414323))

(declare-fun m!4414325 () Bool)

(assert (=> b!3858733 m!4414325))

(declare-fun m!4414327 () Bool)

(assert (=> b!3858733 m!4414327))

(declare-fun m!4414329 () Bool)

(assert (=> b!3858733 m!4414329))

(declare-fun m!4414331 () Bool)

(assert (=> b!3858733 m!4414331))

(assert (=> b!3858733 m!4414325))

(declare-fun m!4414333 () Bool)

(assert (=> b!3858733 m!4414333))

(declare-fun m!4414335 () Bool)

(assert (=> b!3858733 m!4414335))

(declare-fun m!4414337 () Bool)

(assert (=> b!3858733 m!4414337))

(declare-fun m!4414339 () Bool)

(assert (=> b!3858733 m!4414339))

(declare-fun m!4414341 () Bool)

(assert (=> b!3858733 m!4414341))

(declare-fun m!4414343 () Bool)

(assert (=> b!3858733 m!4414343))

(assert (=> b!3858733 m!4414337))

(declare-fun m!4414345 () Bool)

(assert (=> b!3858733 m!4414345))

(declare-fun m!4414347 () Bool)

(assert (=> b!3858734 m!4414347))

(check-sat (not b!3858738) (not b!3858716) (not b!3858739) (not b_next!104349) (not b!3858731) (not b_next!104355) (not b!3858726) (not b_next!104359) (not b!3858725) (not b!3858732) (not b!3858742) (not b!3858727) (not b!3858719) (not b!3858724) b_and!288771 (not b!3858733) (not b_next!104353) (not b!3858736) b_and!288775 (not b_next!104351) (not b!3858714) b_and!288773 (not b!3858735) (not b!3858730) (not b!3858740) (not b!3858745) b_and!288781 (not b_next!104357) (not b!3858728) (not b!3858741) (not b!3858715) (not b!3858729) (not b!3858720) (not b!3858721) (not b!3858718) b_and!288779 (not b!3858746) tp_is_empty!19433 b_and!288777 (not b!3858734) (not b!3858737))
(check-sat b_and!288771 (not b_next!104353) b_and!288773 (not b_next!104349) (not b_next!104355) (not b_next!104359) b_and!288779 b_and!288777 b_and!288775 (not b_next!104351) b_and!288781 (not b_next!104357))
