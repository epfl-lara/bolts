; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371252 () Bool)

(assert start!371252)

(declare-fun b!3949201 () Bool)

(declare-fun b_free!108389 () Bool)

(declare-fun b_next!109093 () Bool)

(assert (=> b!3949201 (= b_free!108389 (not b_next!109093))))

(declare-fun tp!1202722 () Bool)

(declare-fun b_and!302411 () Bool)

(assert (=> b!3949201 (= tp!1202722 b_and!302411)))

(declare-fun b_free!108391 () Bool)

(declare-fun b_next!109095 () Bool)

(assert (=> b!3949201 (= b_free!108391 (not b_next!109095))))

(declare-fun tp!1202732 () Bool)

(declare-fun b_and!302413 () Bool)

(assert (=> b!3949201 (= tp!1202732 b_and!302413)))

(declare-fun b!3949183 () Bool)

(declare-fun b_free!108393 () Bool)

(declare-fun b_next!109097 () Bool)

(assert (=> b!3949183 (= b_free!108393 (not b_next!109097))))

(declare-fun tp!1202724 () Bool)

(declare-fun b_and!302415 () Bool)

(assert (=> b!3949183 (= tp!1202724 b_and!302415)))

(declare-fun b_free!108395 () Bool)

(declare-fun b_next!109099 () Bool)

(assert (=> b!3949183 (= b_free!108395 (not b_next!109099))))

(declare-fun tp!1202727 () Bool)

(declare-fun b_and!302417 () Bool)

(assert (=> b!3949183 (= tp!1202727 b_and!302417)))

(declare-fun b!3949193 () Bool)

(declare-fun b_free!108397 () Bool)

(declare-fun b_next!109101 () Bool)

(assert (=> b!3949193 (= b_free!108397 (not b_next!109101))))

(declare-fun tp!1202728 () Bool)

(declare-fun b_and!302419 () Bool)

(assert (=> b!3949193 (= tp!1202728 b_and!302419)))

(declare-fun b_free!108399 () Bool)

(declare-fun b_next!109103 () Bool)

(assert (=> b!3949193 (= b_free!108399 (not b_next!109103))))

(declare-fun tp!1202719 () Bool)

(declare-fun b_and!302421 () Bool)

(assert (=> b!3949193 (= tp!1202719 b_and!302421)))

(declare-fun e!2444015 () Bool)

(assert (=> b!3949183 (= e!2444015 (and tp!1202724 tp!1202727))))

(declare-fun tp!1202718 () Bool)

(declare-fun e!2444030 () Bool)

(declare-datatypes ((List!42093 0))(
  ( (Nil!41969) (Cons!41969 (h!47389 (_ BitVec 16)) (t!328334 List!42093)) )
))
(declare-datatypes ((TokenValue!6796 0))(
  ( (FloatLiteralValue!13592 (text!48017 List!42093)) (TokenValueExt!6795 (__x!25809 Int)) (Broken!33980 (value!207739 List!42093)) (Object!6919) (End!6796) (Def!6796) (Underscore!6796) (Match!6796) (Else!6796) (Error!6796) (Case!6796) (If!6796) (Extends!6796) (Abstract!6796) (Class!6796) (Val!6796) (DelimiterValue!13592 (del!6856 List!42093)) (KeywordValue!6802 (value!207740 List!42093)) (CommentValue!13592 (value!207741 List!42093)) (WhitespaceValue!13592 (value!207742 List!42093)) (IndentationValue!6796 (value!207743 List!42093)) (String!47697) (Int32!6796) (Broken!33981 (value!207744 List!42093)) (Boolean!6797) (Unit!60493) (OperatorValue!6799 (op!6856 List!42093)) (IdentifierValue!13592 (value!207745 List!42093)) (IdentifierValue!13593 (value!207746 List!42093)) (WhitespaceValue!13593 (value!207747 List!42093)) (True!13592) (False!13592) (Broken!33982 (value!207748 List!42093)) (Broken!33983 (value!207749 List!42093)) (True!13593) (RightBrace!6796) (RightBracket!6796) (Colon!6796) (Null!6796) (Comma!6796) (LeftBracket!6796) (False!13593) (LeftBrace!6796) (ImaginaryLiteralValue!6796 (text!48018 List!42093)) (StringLiteralValue!20388 (value!207750 List!42093)) (EOFValue!6796 (value!207751 List!42093)) (IdentValue!6796 (value!207752 List!42093)) (DelimiterValue!13593 (value!207753 List!42093)) (DedentValue!6796 (value!207754 List!42093)) (NewLineValue!6796 (value!207755 List!42093)) (IntegerValue!20388 (value!207756 (_ BitVec 32)) (text!48019 List!42093)) (IntegerValue!20389 (value!207757 Int) (text!48020 List!42093)) (Times!6796) (Or!6796) (Equal!6796) (Minus!6796) (Broken!33984 (value!207758 List!42093)) (And!6796) (Div!6796) (LessEqual!6796) (Mod!6796) (Concat!18267) (Not!6796) (Plus!6796) (SpaceValue!6796 (value!207759 List!42093)) (IntegerValue!20390 (value!207760 Int) (text!48021 List!42093)) (StringLiteralValue!20389 (text!48022 List!42093)) (FloatLiteralValue!13593 (text!48023 List!42093)) (BytesLiteralValue!6796 (value!207761 List!42093)) (CommentValue!13593 (value!207762 List!42093)) (StringLiteralValue!20390 (value!207763 List!42093)) (ErrorTokenValue!6796 (msg!6857 List!42093)) )
))
(declare-datatypes ((C!23128 0))(
  ( (C!23129 (val!13658 Int)) )
))
(declare-datatypes ((Regex!11471 0))(
  ( (ElementMatch!11471 (c!685826 C!23128)) (Concat!18268 (regOne!23454 Regex!11471) (regTwo!23454 Regex!11471)) (EmptyExpr!11471) (Star!11471 (reg!11800 Regex!11471)) (EmptyLang!11471) (Union!11471 (regOne!23455 Regex!11471) (regTwo!23455 Regex!11471)) )
))
(declare-datatypes ((String!47698 0))(
  ( (String!47699 (value!207764 String)) )
))
(declare-datatypes ((List!42094 0))(
  ( (Nil!41970) (Cons!41970 (h!47390 C!23128) (t!328335 List!42094)) )
))
(declare-datatypes ((IArray!25559 0))(
  ( (IArray!25560 (innerList!12837 List!42094)) )
))
(declare-datatypes ((Conc!12777 0))(
  ( (Node!12777 (left!31938 Conc!12777) (right!32268 Conc!12777) (csize!25784 Int) (cheight!12988 Int)) (Leaf!19767 (xs!16083 IArray!25559) (csize!25785 Int)) (Empty!12777) )
))
(declare-datatypes ((BalanceConc!25148 0))(
  ( (BalanceConc!25149 (c!685827 Conc!12777)) )
))
(declare-datatypes ((TokenValueInjection!13020 0))(
  ( (TokenValueInjection!13021 (toValue!9042 Int) (toChars!8901 Int)) )
))
(declare-datatypes ((Rule!12932 0))(
  ( (Rule!12933 (regex!6566 Regex!11471) (tag!7426 String!47698) (isSeparator!6566 Bool) (transformation!6566 TokenValueInjection!13020)) )
))
(declare-datatypes ((Token!12270 0))(
  ( (Token!12271 (value!207765 TokenValue!6796) (rule!9532 Rule!12932) (size!31460 Int) (originalCharacters!7166 List!42094)) )
))
(declare-datatypes ((List!42095 0))(
  ( (Nil!41971) (Cons!41971 (h!47391 Token!12270) (t!328336 List!42095)) )
))
(declare-fun suffixTokens!72 () List!42095)

(declare-fun b!3949184 () Bool)

(declare-fun e!2444017 () Bool)

(declare-fun inv!21 (TokenValue!6796) Bool)

(assert (=> b!3949184 (= e!2444030 (and (inv!21 (value!207765 (h!47391 suffixTokens!72))) e!2444017 tp!1202718))))

(declare-fun b!3949185 () Bool)

(declare-fun res!1597910 () Bool)

(declare-fun e!2444029 () Bool)

(assert (=> b!3949185 (=> (not res!1597910) (not e!2444029))))

(declare-fun prefix!426 () List!42094)

(declare-fun isEmpty!25060 (List!42094) Bool)

(assert (=> b!3949185 (= res!1597910 (not (isEmpty!25060 prefix!426)))))

(declare-fun b!3949186 () Bool)

(declare-fun e!2444021 () Bool)

(declare-fun tp_is_empty!19913 () Bool)

(declare-fun tp!1202725 () Bool)

(assert (=> b!3949186 (= e!2444021 (and tp_is_empty!19913 tp!1202725))))

(declare-fun b!3949187 () Bool)

(declare-fun res!1597916 () Bool)

(assert (=> b!3949187 (=> (not res!1597916) (not e!2444029))))

(declare-datatypes ((LexerInterface!6155 0))(
  ( (LexerInterfaceExt!6152 (__x!25810 Int)) (Lexer!6153) )
))
(declare-fun thiss!20629 () LexerInterface!6155)

(declare-datatypes ((List!42096 0))(
  ( (Nil!41972) (Cons!41972 (h!47392 Rule!12932) (t!328337 List!42096)) )
))
(declare-fun rules!2768 () List!42096)

(declare-fun rulesInvariant!5498 (LexerInterface!6155 List!42096) Bool)

(assert (=> b!3949187 (= res!1597916 (rulesInvariant!5498 thiss!20629 rules!2768))))

(declare-fun tp!1202723 () Bool)

(declare-fun b!3949188 () Bool)

(declare-fun e!2444034 () Bool)

(declare-fun prefixTokens!80 () List!42095)

(declare-fun e!2444022 () Bool)

(assert (=> b!3949188 (= e!2444034 (and (inv!21 (value!207765 (h!47391 prefixTokens!80))) e!2444022 tp!1202723))))

(declare-fun b!3949189 () Bool)

(declare-fun e!2444023 () Bool)

(assert (=> b!3949189 (= e!2444029 e!2444023)))

(declare-fun res!1597913 () Bool)

(assert (=> b!3949189 (=> (not res!1597913) (not e!2444023))))

(declare-fun lt!1380439 () List!42094)

(declare-fun suffixResult!91 () List!42094)

(declare-datatypes ((tuple2!41254 0))(
  ( (tuple2!41255 (_1!23761 List!42095) (_2!23761 List!42094)) )
))
(declare-fun lexList!1923 (LexerInterface!6155 List!42096 List!42094) tuple2!41254)

(declare-fun ++!10889 (List!42095 List!42095) List!42095)

(assert (=> b!3949189 (= res!1597913 (= (lexList!1923 thiss!20629 rules!2768 lt!1380439) (tuple2!41255 (++!10889 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!42094)

(declare-fun ++!10890 (List!42094 List!42094) List!42094)

(assert (=> b!3949189 (= lt!1380439 (++!10890 prefix!426 suffix!1176))))

(declare-fun b!3949190 () Bool)

(declare-fun res!1597907 () Bool)

(declare-fun e!2444032 () Bool)

(assert (=> b!3949190 (=> (not res!1597907) (not e!2444032))))

(declare-datatypes ((tuple2!41256 0))(
  ( (tuple2!41257 (_1!23762 Token!12270) (_2!23762 List!42094)) )
))
(declare-datatypes ((Option!8986 0))(
  ( (None!8985) (Some!8985 (v!39325 tuple2!41256)) )
))
(declare-fun lt!1380437 () Option!8986)

(declare-fun lt!1380441 () List!42094)

(declare-fun size!31461 (List!42094) Int)

(assert (=> b!3949190 (= res!1597907 (= (size!31460 (_1!23762 (v!39325 lt!1380437))) (size!31461 lt!1380441)))))

(declare-fun e!2444035 () Bool)

(declare-fun tp!1202729 () Bool)

(declare-fun b!3949191 () Bool)

(declare-fun inv!56199 (Token!12270) Bool)

(assert (=> b!3949191 (= e!2444035 (and (inv!56199 (h!47391 prefixTokens!80)) e!2444034 tp!1202729))))

(declare-fun b!3949192 () Bool)

(declare-fun e!2444024 () Bool)

(declare-fun tp!1202717 () Bool)

(assert (=> b!3949192 (= e!2444024 (and tp_is_empty!19913 tp!1202717))))

(declare-fun e!2444026 () Bool)

(assert (=> b!3949193 (= e!2444026 (and tp!1202728 tp!1202719))))

(declare-fun b!3949194 () Bool)

(declare-fun res!1597915 () Bool)

(assert (=> b!3949194 (=> (not res!1597915) (not e!2444029))))

(declare-fun isEmpty!25061 (List!42096) Bool)

(assert (=> b!3949194 (= res!1597915 (not (isEmpty!25061 rules!2768)))))

(declare-fun tp!1202720 () Bool)

(declare-fun b!3949195 () Bool)

(declare-fun e!2444028 () Bool)

(declare-fun inv!56196 (String!47698) Bool)

(declare-fun inv!56200 (TokenValueInjection!13020) Bool)

(assert (=> b!3949195 (= e!2444028 (and tp!1202720 (inv!56196 (tag!7426 (h!47392 rules!2768))) (inv!56200 (transformation!6566 (h!47392 rules!2768))) e!2444026))))

(declare-fun b!3949196 () Bool)

(declare-fun e!2444025 () Bool)

(assert (=> b!3949196 (= e!2444023 e!2444025)))

(declare-fun res!1597917 () Bool)

(assert (=> b!3949196 (=> (not res!1597917) (not e!2444025))))

(get-info :version)

(assert (=> b!3949196 (= res!1597917 ((_ is Some!8985) lt!1380437))))

(declare-fun maxPrefix!3459 (LexerInterface!6155 List!42096 List!42094) Option!8986)

(assert (=> b!3949196 (= lt!1380437 (maxPrefix!3459 thiss!20629 rules!2768 lt!1380439))))

(declare-fun res!1597908 () Bool)

(assert (=> start!371252 (=> (not res!1597908) (not e!2444029))))

(assert (=> start!371252 (= res!1597908 ((_ is Lexer!6153) thiss!20629))))

(assert (=> start!371252 e!2444029))

(declare-fun e!2444016 () Bool)

(assert (=> start!371252 e!2444016))

(assert (=> start!371252 true))

(assert (=> start!371252 e!2444021))

(declare-fun e!2444019 () Bool)

(assert (=> start!371252 e!2444019))

(assert (=> start!371252 e!2444035))

(declare-fun e!2444033 () Bool)

(assert (=> start!371252 e!2444033))

(assert (=> start!371252 e!2444024))

(declare-fun b!3949197 () Bool)

(declare-fun res!1597911 () Bool)

(assert (=> b!3949197 (=> (not res!1597911) (not e!2444032))))

(declare-fun apply!9797 (TokenValueInjection!13020 BalanceConc!25148) TokenValue!6796)

(declare-fun seqFromList!4825 (List!42094) BalanceConc!25148)

(assert (=> b!3949197 (= res!1597911 (= (value!207765 (_1!23762 (v!39325 lt!1380437))) (apply!9797 (transformation!6566 (rule!9532 (_1!23762 (v!39325 lt!1380437)))) (seqFromList!4825 lt!1380441))))))

(declare-fun b!3949198 () Bool)

(declare-fun res!1597914 () Bool)

(assert (=> b!3949198 (=> (not res!1597914) (not e!2444032))))

(assert (=> b!3949198 (= res!1597914 (= (size!31460 (_1!23762 (v!39325 lt!1380437))) (size!31461 (originalCharacters!7166 (_1!23762 (v!39325 lt!1380437))))))))

(declare-fun tp!1202721 () Bool)

(declare-fun b!3949199 () Bool)

(assert (=> b!3949199 (= e!2444017 (and tp!1202721 (inv!56196 (tag!7426 (rule!9532 (h!47391 suffixTokens!72)))) (inv!56200 (transformation!6566 (rule!9532 (h!47391 suffixTokens!72)))) e!2444015))))

(declare-fun b!3949200 () Bool)

(assert (=> b!3949200 (= e!2444025 (not true))))

(assert (=> b!3949200 e!2444032))

(declare-fun res!1597909 () Bool)

(assert (=> b!3949200 (=> (not res!1597909) (not e!2444032))))

(declare-fun lt!1380435 () List!42094)

(assert (=> b!3949200 (= res!1597909 (= (_2!23762 (v!39325 lt!1380437)) lt!1380435))))

(declare-datatypes ((Unit!60494 0))(
  ( (Unit!60495) )
))
(declare-fun lt!1380440 () Unit!60494)

(declare-fun lemmaSamePrefixThenSameSuffix!1864 (List!42094 List!42094 List!42094 List!42094 List!42094) Unit!60494)

(assert (=> b!3949200 (= lt!1380440 (lemmaSamePrefixThenSameSuffix!1864 lt!1380441 (_2!23762 (v!39325 lt!1380437)) lt!1380441 lt!1380435 lt!1380439))))

(declare-fun getSuffix!2106 (List!42094 List!42094) List!42094)

(assert (=> b!3949200 (= lt!1380435 (getSuffix!2106 lt!1380439 lt!1380441))))

(declare-fun isPrefix!3655 (List!42094 List!42094) Bool)

(assert (=> b!3949200 (isPrefix!3655 lt!1380441 (++!10890 lt!1380441 (_2!23762 (v!39325 lt!1380437))))))

(declare-fun lt!1380438 () Unit!60494)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2514 (List!42094 List!42094) Unit!60494)

(assert (=> b!3949200 (= lt!1380438 (lemmaConcatTwoListThenFirstIsPrefix!2514 lt!1380441 (_2!23762 (v!39325 lt!1380437))))))

(declare-fun list!15590 (BalanceConc!25148) List!42094)

(declare-fun charsOf!4384 (Token!12270) BalanceConc!25148)

(assert (=> b!3949200 (= lt!1380441 (list!15590 (charsOf!4384 (_1!23762 (v!39325 lt!1380437)))))))

(declare-fun ruleValid!2508 (LexerInterface!6155 Rule!12932) Bool)

(assert (=> b!3949200 (ruleValid!2508 thiss!20629 (rule!9532 (_1!23762 (v!39325 lt!1380437))))))

(declare-fun lt!1380436 () Unit!60494)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1584 (LexerInterface!6155 Rule!12932 List!42096) Unit!60494)

(assert (=> b!3949200 (= lt!1380436 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1584 thiss!20629 (rule!9532 (_1!23762 (v!39325 lt!1380437))) rules!2768))))

(declare-fun lt!1380434 () Unit!60494)

(declare-fun lemmaCharactersSize!1219 (Token!12270) Unit!60494)

(assert (=> b!3949200 (= lt!1380434 (lemmaCharactersSize!1219 (_1!23762 (v!39325 lt!1380437))))))

(declare-fun e!2444018 () Bool)

(assert (=> b!3949201 (= e!2444018 (and tp!1202722 tp!1202732))))

(declare-fun b!3949202 () Bool)

(declare-fun tp!1202731 () Bool)

(assert (=> b!3949202 (= e!2444019 (and e!2444028 tp!1202731))))

(declare-fun tp!1202716 () Bool)

(declare-fun b!3949203 () Bool)

(assert (=> b!3949203 (= e!2444022 (and tp!1202716 (inv!56196 (tag!7426 (rule!9532 (h!47391 prefixTokens!80)))) (inv!56200 (transformation!6566 (rule!9532 (h!47391 prefixTokens!80)))) e!2444018))))

(declare-fun b!3949204 () Bool)

(declare-fun res!1597912 () Bool)

(assert (=> b!3949204 (=> (not res!1597912) (not e!2444023))))

(assert (=> b!3949204 (= res!1597912 (= (lexList!1923 thiss!20629 rules!2768 suffix!1176) (tuple2!41255 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3949205 () Bool)

(assert (=> b!3949205 (= e!2444032 (= (originalCharacters!7166 (_1!23762 (v!39325 lt!1380437))) lt!1380441))))

(declare-fun b!3949206 () Bool)

(declare-fun tp!1202726 () Bool)

(assert (=> b!3949206 (= e!2444016 (and tp_is_empty!19913 tp!1202726))))

(declare-fun b!3949207 () Bool)

(declare-fun res!1597918 () Bool)

(assert (=> b!3949207 (=> (not res!1597918) (not e!2444029))))

(declare-fun isEmpty!25062 (List!42095) Bool)

(assert (=> b!3949207 (= res!1597918 (not (isEmpty!25062 prefixTokens!80)))))

(declare-fun b!3949208 () Bool)

(declare-fun tp!1202730 () Bool)

(assert (=> b!3949208 (= e!2444033 (and (inv!56199 (h!47391 suffixTokens!72)) e!2444030 tp!1202730))))

(assert (= (and start!371252 res!1597908) b!3949194))

(assert (= (and b!3949194 res!1597915) b!3949187))

(assert (= (and b!3949187 res!1597916) b!3949207))

(assert (= (and b!3949207 res!1597918) b!3949185))

(assert (= (and b!3949185 res!1597910) b!3949189))

(assert (= (and b!3949189 res!1597913) b!3949204))

(assert (= (and b!3949204 res!1597912) b!3949196))

(assert (= (and b!3949196 res!1597917) b!3949200))

(assert (= (and b!3949200 res!1597909) b!3949197))

(assert (= (and b!3949197 res!1597911) b!3949198))

(assert (= (and b!3949198 res!1597914) b!3949190))

(assert (= (and b!3949190 res!1597907) b!3949205))

(assert (= (and start!371252 ((_ is Cons!41970) suffixResult!91)) b!3949206))

(assert (= (and start!371252 ((_ is Cons!41970) suffix!1176)) b!3949186))

(assert (= b!3949195 b!3949193))

(assert (= b!3949202 b!3949195))

(assert (= (and start!371252 ((_ is Cons!41972) rules!2768)) b!3949202))

(assert (= b!3949203 b!3949201))

(assert (= b!3949188 b!3949203))

(assert (= b!3949191 b!3949188))

(assert (= (and start!371252 ((_ is Cons!41971) prefixTokens!80)) b!3949191))

(assert (= b!3949199 b!3949183))

(assert (= b!3949184 b!3949199))

(assert (= b!3949208 b!3949184))

(assert (= (and start!371252 ((_ is Cons!41971) suffixTokens!72)) b!3949208))

(assert (= (and start!371252 ((_ is Cons!41970) prefix!426)) b!3949192))

(declare-fun m!4518003 () Bool)

(assert (=> b!3949189 m!4518003))

(declare-fun m!4518005 () Bool)

(assert (=> b!3949189 m!4518005))

(declare-fun m!4518007 () Bool)

(assert (=> b!3949189 m!4518007))

(declare-fun m!4518009 () Bool)

(assert (=> b!3949190 m!4518009))

(declare-fun m!4518011 () Bool)

(assert (=> b!3949197 m!4518011))

(assert (=> b!3949197 m!4518011))

(declare-fun m!4518013 () Bool)

(assert (=> b!3949197 m!4518013))

(declare-fun m!4518015 () Bool)

(assert (=> b!3949187 m!4518015))

(declare-fun m!4518017 () Bool)

(assert (=> b!3949208 m!4518017))

(declare-fun m!4518019 () Bool)

(assert (=> b!3949191 m!4518019))

(declare-fun m!4518021 () Bool)

(assert (=> b!3949198 m!4518021))

(declare-fun m!4518023 () Bool)

(assert (=> b!3949200 m!4518023))

(declare-fun m!4518025 () Bool)

(assert (=> b!3949200 m!4518025))

(declare-fun m!4518027 () Bool)

(assert (=> b!3949200 m!4518027))

(declare-fun m!4518029 () Bool)

(assert (=> b!3949200 m!4518029))

(declare-fun m!4518031 () Bool)

(assert (=> b!3949200 m!4518031))

(declare-fun m!4518033 () Bool)

(assert (=> b!3949200 m!4518033))

(declare-fun m!4518035 () Bool)

(assert (=> b!3949200 m!4518035))

(assert (=> b!3949200 m!4518031))

(declare-fun m!4518037 () Bool)

(assert (=> b!3949200 m!4518037))

(assert (=> b!3949200 m!4518035))

(declare-fun m!4518039 () Bool)

(assert (=> b!3949200 m!4518039))

(declare-fun m!4518041 () Bool)

(assert (=> b!3949200 m!4518041))

(declare-fun m!4518043 () Bool)

(assert (=> b!3949207 m!4518043))

(declare-fun m!4518045 () Bool)

(assert (=> b!3949194 m!4518045))

(declare-fun m!4518047 () Bool)

(assert (=> b!3949195 m!4518047))

(declare-fun m!4518049 () Bool)

(assert (=> b!3949195 m!4518049))

(declare-fun m!4518051 () Bool)

(assert (=> b!3949199 m!4518051))

(declare-fun m!4518053 () Bool)

(assert (=> b!3949199 m!4518053))

(declare-fun m!4518055 () Bool)

(assert (=> b!3949188 m!4518055))

(declare-fun m!4518057 () Bool)

(assert (=> b!3949204 m!4518057))

(declare-fun m!4518059 () Bool)

(assert (=> b!3949185 m!4518059))

(declare-fun m!4518061 () Bool)

(assert (=> b!3949184 m!4518061))

(declare-fun m!4518063 () Bool)

(assert (=> b!3949203 m!4518063))

(declare-fun m!4518065 () Bool)

(assert (=> b!3949203 m!4518065))

(declare-fun m!4518067 () Bool)

(assert (=> b!3949196 m!4518067))

(check-sat (not b!3949203) (not b!3949208) (not b!3949189) tp_is_empty!19913 (not b_next!109093) b_and!302413 (not b_next!109101) (not b!3949198) (not b!3949199) (not b_next!109099) (not b!3949207) (not b!3949188) (not b!3949194) (not b_next!109095) (not b!3949191) (not b!3949195) (not b!3949206) b_and!302411 (not b!3949185) (not b!3949200) b_and!302421 (not b!3949184) (not b!3949186) (not b_next!109103) (not b_next!109097) (not b!3949202) (not b!3949187) (not b!3949190) b_and!302419 (not b!3949196) b_and!302415 (not b!3949197) b_and!302417 (not b!3949192) (not b!3949204))
(check-sat (not b_next!109095) (not b_next!109093) b_and!302411 b_and!302413 (not b_next!109101) b_and!302421 (not b_next!109099) b_and!302417 (not b_next!109103) (not b_next!109097) b_and!302419 b_and!302415)
