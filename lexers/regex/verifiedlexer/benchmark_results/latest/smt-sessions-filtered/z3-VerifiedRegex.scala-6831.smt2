; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359404 () Bool)

(assert start!359404)

(declare-fun b!3838365 () Bool)

(declare-fun b_free!102141 () Bool)

(declare-fun b_next!102845 () Bool)

(assert (=> b!3838365 (= b_free!102141 (not b_next!102845))))

(declare-fun tp!1162159 () Bool)

(declare-fun b_and!285691 () Bool)

(assert (=> b!3838365 (= tp!1162159 b_and!285691)))

(declare-fun b_free!102143 () Bool)

(declare-fun b_next!102847 () Bool)

(assert (=> b!3838365 (= b_free!102143 (not b_next!102847))))

(declare-fun tp!1162168 () Bool)

(declare-fun b_and!285693 () Bool)

(assert (=> b!3838365 (= tp!1162168 b_and!285693)))

(declare-fun b!3838372 () Bool)

(declare-fun b_free!102145 () Bool)

(declare-fun b_next!102849 () Bool)

(assert (=> b!3838372 (= b_free!102145 (not b_next!102849))))

(declare-fun tp!1162158 () Bool)

(declare-fun b_and!285695 () Bool)

(assert (=> b!3838372 (= tp!1162158 b_and!285695)))

(declare-fun b_free!102147 () Bool)

(declare-fun b_next!102851 () Bool)

(assert (=> b!3838372 (= b_free!102147 (not b_next!102851))))

(declare-fun tp!1162157 () Bool)

(declare-fun b_and!285697 () Bool)

(assert (=> b!3838372 (= tp!1162157 b_and!285697)))

(declare-fun b!3838358 () Bool)

(declare-fun b_free!102149 () Bool)

(declare-fun b_next!102853 () Bool)

(assert (=> b!3838358 (= b_free!102149 (not b_next!102853))))

(declare-fun tp!1162160 () Bool)

(declare-fun b_and!285699 () Bool)

(assert (=> b!3838358 (= tp!1162160 b_and!285699)))

(declare-fun b_free!102151 () Bool)

(declare-fun b_next!102855 () Bool)

(assert (=> b!3838358 (= b_free!102151 (not b_next!102855))))

(declare-fun tp!1162165 () Bool)

(declare-fun b_and!285701 () Bool)

(assert (=> b!3838358 (= tp!1162165 b_and!285701)))

(declare-fun b!3838354 () Bool)

(declare-fun res!1553508 () Bool)

(declare-fun e!2370746 () Bool)

(assert (=> b!3838354 (=> (not res!1553508) (not e!2370746))))

(declare-datatypes ((List!40680 0))(
  ( (Nil!40556) (Cons!40556 (h!45976 (_ BitVec 16)) (t!310113 List!40680)) )
))
(declare-datatypes ((TokenValue!6480 0))(
  ( (FloatLiteralValue!12960 (text!45805 List!40680)) (TokenValueExt!6479 (__x!25177 Int)) (Broken!32400 (value!198733 List!40680)) (Object!6603) (End!6480) (Def!6480) (Underscore!6480) (Match!6480) (Else!6480) (Error!6480) (Case!6480) (If!6480) (Extends!6480) (Abstract!6480) (Class!6480) (Val!6480) (DelimiterValue!12960 (del!6540 List!40680)) (KeywordValue!6486 (value!198734 List!40680)) (CommentValue!12960 (value!198735 List!40680)) (WhitespaceValue!12960 (value!198736 List!40680)) (IndentationValue!6480 (value!198737 List!40680)) (String!46117) (Int32!6480) (Broken!32401 (value!198738 List!40680)) (Boolean!6481) (Unit!58281) (OperatorValue!6483 (op!6540 List!40680)) (IdentifierValue!12960 (value!198739 List!40680)) (IdentifierValue!12961 (value!198740 List!40680)) (WhitespaceValue!12961 (value!198741 List!40680)) (True!12960) (False!12960) (Broken!32402 (value!198742 List!40680)) (Broken!32403 (value!198743 List!40680)) (True!12961) (RightBrace!6480) (RightBracket!6480) (Colon!6480) (Null!6480) (Comma!6480) (LeftBracket!6480) (False!12961) (LeftBrace!6480) (ImaginaryLiteralValue!6480 (text!45806 List!40680)) (StringLiteralValue!19440 (value!198744 List!40680)) (EOFValue!6480 (value!198745 List!40680)) (IdentValue!6480 (value!198746 List!40680)) (DelimiterValue!12961 (value!198747 List!40680)) (DedentValue!6480 (value!198748 List!40680)) (NewLineValue!6480 (value!198749 List!40680)) (IntegerValue!19440 (value!198750 (_ BitVec 32)) (text!45807 List!40680)) (IntegerValue!19441 (value!198751 Int) (text!45808 List!40680)) (Times!6480) (Or!6480) (Equal!6480) (Minus!6480) (Broken!32404 (value!198752 List!40680)) (And!6480) (Div!6480) (LessEqual!6480) (Mod!6480) (Concat!17635) (Not!6480) (Plus!6480) (SpaceValue!6480 (value!198753 List!40680)) (IntegerValue!19442 (value!198754 Int) (text!45809 List!40680)) (StringLiteralValue!19441 (text!45810 List!40680)) (FloatLiteralValue!12961 (text!45811 List!40680)) (BytesLiteralValue!6480 (value!198755 List!40680)) (CommentValue!12961 (value!198756 List!40680)) (StringLiteralValue!19442 (value!198757 List!40680)) (ErrorTokenValue!6480 (msg!6541 List!40680)) )
))
(declare-datatypes ((C!22496 0))(
  ( (C!22497 (val!13342 Int)) )
))
(declare-datatypes ((Regex!11155 0))(
  ( (ElementMatch!11155 (c!669164 C!22496)) (Concat!17636 (regOne!22822 Regex!11155) (regTwo!22822 Regex!11155)) (EmptyExpr!11155) (Star!11155 (reg!11484 Regex!11155)) (EmptyLang!11155) (Union!11155 (regOne!22823 Regex!11155) (regTwo!22823 Regex!11155)) )
))
(declare-datatypes ((String!46118 0))(
  ( (String!46119 (value!198758 String)) )
))
(declare-datatypes ((List!40681 0))(
  ( (Nil!40557) (Cons!40557 (h!45977 C!22496) (t!310114 List!40681)) )
))
(declare-datatypes ((IArray!24927 0))(
  ( (IArray!24928 (innerList!12521 List!40681)) )
))
(declare-datatypes ((Conc!12461 0))(
  ( (Node!12461 (left!31352 Conc!12461) (right!31682 Conc!12461) (csize!25152 Int) (cheight!12672 Int)) (Leaf!19293 (xs!15767 IArray!24927) (csize!25153 Int)) (Empty!12461) )
))
(declare-datatypes ((BalanceConc!24516 0))(
  ( (BalanceConc!24517 (c!669165 Conc!12461)) )
))
(declare-datatypes ((TokenValueInjection!12388 0))(
  ( (TokenValueInjection!12389 (toValue!8666 Int) (toChars!8525 Int)) )
))
(declare-datatypes ((Rule!12300 0))(
  ( (Rule!12301 (regex!6250 Regex!11155) (tag!7110 String!46118) (isSeparator!6250 Bool) (transformation!6250 TokenValueInjection!12388)) )
))
(declare-datatypes ((Token!11638 0))(
  ( (Token!11639 (value!198759 TokenValue!6480) (rule!9086 Rule!12300) (size!30541 Int) (originalCharacters!6850 List!40681)) )
))
(declare-datatypes ((List!40682 0))(
  ( (Nil!40558) (Cons!40558 (h!45978 Token!11638) (t!310115 List!40682)) )
))
(declare-fun prefixTokens!80 () List!40682)

(declare-fun isEmpty!23958 (List!40682) Bool)

(assert (=> b!3838354 (= res!1553508 (not (isEmpty!23958 prefixTokens!80)))))

(declare-fun b!3838355 () Bool)

(declare-fun e!2370765 () Bool)

(declare-fun e!2370768 () Bool)

(declare-fun tp!1162154 () Bool)

(declare-fun inv!54710 (Token!11638) Bool)

(assert (=> b!3838355 (= e!2370765 (and (inv!54710 (h!45978 prefixTokens!80)) e!2370768 tp!1162154))))

(declare-fun b!3838356 () Bool)

(declare-fun res!1553503 () Bool)

(assert (=> b!3838356 (=> (not res!1553503) (not e!2370746))))

(declare-fun prefix!426 () List!40681)

(declare-fun isEmpty!23959 (List!40681) Bool)

(assert (=> b!3838356 (= res!1553503 (not (isEmpty!23959 prefix!426)))))

(declare-fun res!1553505 () Bool)

(assert (=> start!359404 (=> (not res!1553505) (not e!2370746))))

(declare-datatypes ((LexerInterface!5839 0))(
  ( (LexerInterfaceExt!5836 (__x!25178 Int)) (Lexer!5837) )
))
(declare-fun thiss!20629 () LexerInterface!5839)

(get-info :version)

(assert (=> start!359404 (= res!1553505 ((_ is Lexer!5837) thiss!20629))))

(assert (=> start!359404 e!2370746))

(declare-fun e!2370755 () Bool)

(assert (=> start!359404 e!2370755))

(assert (=> start!359404 true))

(declare-fun e!2370762 () Bool)

(assert (=> start!359404 e!2370762))

(declare-fun e!2370751 () Bool)

(assert (=> start!359404 e!2370751))

(assert (=> start!359404 e!2370765))

(declare-fun e!2370760 () Bool)

(assert (=> start!359404 e!2370760))

(declare-fun e!2370766 () Bool)

(assert (=> start!359404 e!2370766))

(declare-fun tp!1162161 () Bool)

(declare-fun b!3838357 () Bool)

(declare-fun e!2370756 () Bool)

(declare-fun e!2370748 () Bool)

(declare-fun suffixTokens!72 () List!40682)

(declare-fun inv!21 (TokenValue!6480) Bool)

(assert (=> b!3838357 (= e!2370748 (and (inv!21 (value!198759 (h!45978 suffixTokens!72))) e!2370756 tp!1162161))))

(declare-fun e!2370757 () Bool)

(assert (=> b!3838358 (= e!2370757 (and tp!1162160 tp!1162165))))

(declare-fun b!3838359 () Bool)

(declare-fun e!2370750 () Bool)

(declare-fun e!2370753 () Bool)

(assert (=> b!3838359 (= e!2370750 e!2370753)))

(declare-fun res!1553504 () Bool)

(assert (=> b!3838359 (=> (not res!1553504) (not e!2370753))))

(declare-datatypes ((tuple2!39730 0))(
  ( (tuple2!39731 (_1!22999 Token!11638) (_2!22999 List!40681)) )
))
(declare-datatypes ((Option!8668 0))(
  ( (None!8667) (Some!8667 (v!38959 tuple2!39730)) )
))
(declare-fun lt!1331951 () Option!8668)

(assert (=> b!3838359 (= res!1553504 ((_ is Some!8667) lt!1331951))))

(declare-datatypes ((List!40683 0))(
  ( (Nil!40559) (Cons!40559 (h!45979 Rule!12300) (t!310116 List!40683)) )
))
(declare-fun rules!2768 () List!40683)

(declare-fun lt!1331948 () List!40681)

(declare-fun maxPrefix!3143 (LexerInterface!5839 List!40683 List!40681) Option!8668)

(assert (=> b!3838359 (= lt!1331951 (maxPrefix!3143 thiss!20629 rules!2768 lt!1331948))))

(declare-fun e!2370759 () Bool)

(declare-fun b!3838360 () Bool)

(declare-fun tp!1162156 () Bool)

(declare-fun inv!54707 (String!46118) Bool)

(declare-fun inv!54711 (TokenValueInjection!12388) Bool)

(assert (=> b!3838360 (= e!2370756 (and tp!1162156 (inv!54707 (tag!7110 (rule!9086 (h!45978 suffixTokens!72)))) (inv!54711 (transformation!6250 (rule!9086 (h!45978 suffixTokens!72)))) e!2370759))))

(declare-fun b!3838361 () Bool)

(declare-fun tp_is_empty!19281 () Bool)

(declare-fun tp!1162153 () Bool)

(assert (=> b!3838361 (= e!2370755 (and tp_is_empty!19281 tp!1162153))))

(declare-fun b!3838362 () Bool)

(declare-fun e!2370749 () Bool)

(declare-fun size!30542 (List!40681) Int)

(assert (=> b!3838362 (= e!2370749 (= (size!30541 (_1!22999 (v!38959 lt!1331951))) (size!30542 (originalCharacters!6850 (_1!22999 (v!38959 lt!1331951))))))))

(declare-fun b!3838363 () Bool)

(declare-fun res!1553507 () Bool)

(assert (=> b!3838363 (=> (not res!1553507) (not e!2370750))))

(declare-fun suffixResult!91 () List!40681)

(declare-fun suffix!1176 () List!40681)

(declare-datatypes ((tuple2!39732 0))(
  ( (tuple2!39733 (_1!23000 List!40682) (_2!23000 List!40681)) )
))
(declare-fun lexList!1607 (LexerInterface!5839 List!40683 List!40681) tuple2!39732)

(assert (=> b!3838363 (= res!1553507 (= (lexList!1607 thiss!20629 rules!2768 suffix!1176) (tuple2!39733 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3838364 () Bool)

(declare-fun tp!1162164 () Bool)

(assert (=> b!3838364 (= e!2370762 (and tp_is_empty!19281 tp!1162164))))

(assert (=> b!3838365 (= e!2370759 (and tp!1162159 tp!1162168))))

(declare-fun b!3838366 () Bool)

(declare-fun e!2370747 () Bool)

(declare-fun tp!1162155 () Bool)

(assert (=> b!3838366 (= e!2370768 (and (inv!21 (value!198759 (h!45978 prefixTokens!80))) e!2370747 tp!1162155))))

(declare-fun b!3838367 () Bool)

(declare-fun res!1553506 () Bool)

(assert (=> b!3838367 (=> (not res!1553506) (not e!2370746))))

(declare-fun rulesInvariant!5182 (LexerInterface!5839 List!40683) Bool)

(assert (=> b!3838367 (= res!1553506 (rulesInvariant!5182 thiss!20629 rules!2768))))

(declare-fun b!3838368 () Bool)

(assert (=> b!3838368 (= e!2370753 (not true))))

(declare-fun lt!1331957 () tuple2!39732)

(assert (=> b!3838368 (= lt!1331957 (lexList!1607 thiss!20629 rules!2768 (_2!22999 (v!38959 lt!1331951))))))

(declare-fun lt!1331953 () List!40681)

(declare-fun lt!1331952 () List!40681)

(declare-fun lt!1331947 () Int)

(declare-fun lt!1331955 () TokenValue!6480)

(assert (=> b!3838368 (and (= (size!30541 (_1!22999 (v!38959 lt!1331951))) lt!1331947) (= (originalCharacters!6850 (_1!22999 (v!38959 lt!1331951))) lt!1331952) (= (v!38959 lt!1331951) (tuple2!39731 (Token!11639 lt!1331955 (rule!9086 (_1!22999 (v!38959 lt!1331951))) lt!1331947 lt!1331952) lt!1331953)))))

(assert (=> b!3838368 (= lt!1331947 (size!30542 lt!1331952))))

(assert (=> b!3838368 e!2370749))

(declare-fun res!1553509 () Bool)

(assert (=> b!3838368 (=> (not res!1553509) (not e!2370749))))

(assert (=> b!3838368 (= res!1553509 (= (value!198759 (_1!22999 (v!38959 lt!1331951))) lt!1331955))))

(declare-fun apply!9493 (TokenValueInjection!12388 BalanceConc!24516) TokenValue!6480)

(declare-fun seqFromList!4521 (List!40681) BalanceConc!24516)

(assert (=> b!3838368 (= lt!1331955 (apply!9493 (transformation!6250 (rule!9086 (_1!22999 (v!38959 lt!1331951)))) (seqFromList!4521 lt!1331952)))))

(assert (=> b!3838368 (= (_2!22999 (v!38959 lt!1331951)) lt!1331953)))

(declare-datatypes ((Unit!58282 0))(
  ( (Unit!58283) )
))
(declare-fun lt!1331956 () Unit!58282)

(declare-fun lemmaSamePrefixThenSameSuffix!1570 (List!40681 List!40681 List!40681 List!40681 List!40681) Unit!58282)

(assert (=> b!3838368 (= lt!1331956 (lemmaSamePrefixThenSameSuffix!1570 lt!1331952 (_2!22999 (v!38959 lt!1331951)) lt!1331952 lt!1331953 lt!1331948))))

(declare-fun getSuffix!1804 (List!40681 List!40681) List!40681)

(assert (=> b!3838368 (= lt!1331953 (getSuffix!1804 lt!1331948 lt!1331952))))

(declare-fun isPrefix!3349 (List!40681 List!40681) Bool)

(declare-fun ++!10257 (List!40681 List!40681) List!40681)

(assert (=> b!3838368 (isPrefix!3349 lt!1331952 (++!10257 lt!1331952 (_2!22999 (v!38959 lt!1331951))))))

(declare-fun lt!1331949 () Unit!58282)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2212 (List!40681 List!40681) Unit!58282)

(assert (=> b!3838368 (= lt!1331949 (lemmaConcatTwoListThenFirstIsPrefix!2212 lt!1331952 (_2!22999 (v!38959 lt!1331951))))))

(declare-fun list!15110 (BalanceConc!24516) List!40681)

(declare-fun charsOf!4078 (Token!11638) BalanceConc!24516)

(assert (=> b!3838368 (= lt!1331952 (list!15110 (charsOf!4078 (_1!22999 (v!38959 lt!1331951)))))))

(declare-fun ruleValid!2202 (LexerInterface!5839 Rule!12300) Bool)

(assert (=> b!3838368 (ruleValid!2202 thiss!20629 (rule!9086 (_1!22999 (v!38959 lt!1331951))))))

(declare-fun lt!1331950 () Unit!58282)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1282 (LexerInterface!5839 Rule!12300 List!40683) Unit!58282)

(assert (=> b!3838368 (= lt!1331950 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1282 thiss!20629 (rule!9086 (_1!22999 (v!38959 lt!1331951))) rules!2768))))

(declare-fun lt!1331954 () Unit!58282)

(declare-fun lemmaCharactersSize!911 (Token!11638) Unit!58282)

(assert (=> b!3838368 (= lt!1331954 (lemmaCharactersSize!911 (_1!22999 (v!38959 lt!1331951))))))

(declare-fun b!3838369 () Bool)

(declare-fun res!1553502 () Bool)

(assert (=> b!3838369 (=> (not res!1553502) (not e!2370746))))

(declare-fun isEmpty!23960 (List!40683) Bool)

(assert (=> b!3838369 (= res!1553502 (not (isEmpty!23960 rules!2768)))))

(declare-fun b!3838370 () Bool)

(declare-fun e!2370754 () Bool)

(declare-fun tp!1162163 () Bool)

(assert (=> b!3838370 (= e!2370751 (and e!2370754 tp!1162163))))

(declare-fun b!3838371 () Bool)

(declare-fun tp!1162167 () Bool)

(assert (=> b!3838371 (= e!2370747 (and tp!1162167 (inv!54707 (tag!7110 (rule!9086 (h!45978 prefixTokens!80)))) (inv!54711 (transformation!6250 (rule!9086 (h!45978 prefixTokens!80)))) e!2370757))))

(declare-fun e!2370767 () Bool)

(assert (=> b!3838372 (= e!2370767 (and tp!1162158 tp!1162157))))

(declare-fun b!3838373 () Bool)

(assert (=> b!3838373 (= e!2370746 e!2370750)))

(declare-fun res!1553510 () Bool)

(assert (=> b!3838373 (=> (not res!1553510) (not e!2370750))))

(declare-fun ++!10258 (List!40682 List!40682) List!40682)

(assert (=> b!3838373 (= res!1553510 (= (lexList!1607 thiss!20629 rules!2768 lt!1331948) (tuple2!39733 (++!10258 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(assert (=> b!3838373 (= lt!1331948 (++!10257 prefix!426 suffix!1176))))

(declare-fun tp!1162166 () Bool)

(declare-fun b!3838374 () Bool)

(assert (=> b!3838374 (= e!2370760 (and (inv!54710 (h!45978 suffixTokens!72)) e!2370748 tp!1162166))))

(declare-fun b!3838375 () Bool)

(declare-fun tp!1162152 () Bool)

(assert (=> b!3838375 (= e!2370766 (and tp_is_empty!19281 tp!1162152))))

(declare-fun b!3838376 () Bool)

(declare-fun tp!1162162 () Bool)

(assert (=> b!3838376 (= e!2370754 (and tp!1162162 (inv!54707 (tag!7110 (h!45979 rules!2768))) (inv!54711 (transformation!6250 (h!45979 rules!2768))) e!2370767))))

(assert (= (and start!359404 res!1553505) b!3838369))

(assert (= (and b!3838369 res!1553502) b!3838367))

(assert (= (and b!3838367 res!1553506) b!3838354))

(assert (= (and b!3838354 res!1553508) b!3838356))

(assert (= (and b!3838356 res!1553503) b!3838373))

(assert (= (and b!3838373 res!1553510) b!3838363))

(assert (= (and b!3838363 res!1553507) b!3838359))

(assert (= (and b!3838359 res!1553504) b!3838368))

(assert (= (and b!3838368 res!1553509) b!3838362))

(assert (= (and start!359404 ((_ is Cons!40557) suffixResult!91)) b!3838361))

(assert (= (and start!359404 ((_ is Cons!40557) suffix!1176)) b!3838364))

(assert (= b!3838376 b!3838372))

(assert (= b!3838370 b!3838376))

(assert (= (and start!359404 ((_ is Cons!40559) rules!2768)) b!3838370))

(assert (= b!3838371 b!3838358))

(assert (= b!3838366 b!3838371))

(assert (= b!3838355 b!3838366))

(assert (= (and start!359404 ((_ is Cons!40558) prefixTokens!80)) b!3838355))

(assert (= b!3838360 b!3838365))

(assert (= b!3838357 b!3838360))

(assert (= b!3838374 b!3838357))

(assert (= (and start!359404 ((_ is Cons!40558) suffixTokens!72)) b!3838374))

(assert (= (and start!359404 ((_ is Cons!40557) prefix!426)) b!3838375))

(declare-fun m!4392697 () Bool)

(assert (=> b!3838373 m!4392697))

(declare-fun m!4392699 () Bool)

(assert (=> b!3838373 m!4392699))

(declare-fun m!4392701 () Bool)

(assert (=> b!3838373 m!4392701))

(declare-fun m!4392703 () Bool)

(assert (=> b!3838359 m!4392703))

(declare-fun m!4392705 () Bool)

(assert (=> b!3838371 m!4392705))

(declare-fun m!4392707 () Bool)

(assert (=> b!3838371 m!4392707))

(declare-fun m!4392709 () Bool)

(assert (=> b!3838356 m!4392709))

(declare-fun m!4392711 () Bool)

(assert (=> b!3838367 m!4392711))

(declare-fun m!4392713 () Bool)

(assert (=> b!3838366 m!4392713))

(declare-fun m!4392715 () Bool)

(assert (=> b!3838360 m!4392715))

(declare-fun m!4392717 () Bool)

(assert (=> b!3838360 m!4392717))

(declare-fun m!4392719 () Bool)

(assert (=> b!3838374 m!4392719))

(declare-fun m!4392721 () Bool)

(assert (=> b!3838362 m!4392721))

(declare-fun m!4392723 () Bool)

(assert (=> b!3838376 m!4392723))

(declare-fun m!4392725 () Bool)

(assert (=> b!3838376 m!4392725))

(declare-fun m!4392727 () Bool)

(assert (=> b!3838354 m!4392727))

(declare-fun m!4392729 () Bool)

(assert (=> b!3838363 m!4392729))

(declare-fun m!4392731 () Bool)

(assert (=> b!3838369 m!4392731))

(declare-fun m!4392733 () Bool)

(assert (=> b!3838355 m!4392733))

(declare-fun m!4392735 () Bool)

(assert (=> b!3838368 m!4392735))

(declare-fun m!4392737 () Bool)

(assert (=> b!3838368 m!4392737))

(declare-fun m!4392739 () Bool)

(assert (=> b!3838368 m!4392739))

(declare-fun m!4392741 () Bool)

(assert (=> b!3838368 m!4392741))

(declare-fun m!4392743 () Bool)

(assert (=> b!3838368 m!4392743))

(declare-fun m!4392745 () Bool)

(assert (=> b!3838368 m!4392745))

(declare-fun m!4392747 () Bool)

(assert (=> b!3838368 m!4392747))

(declare-fun m!4392749 () Bool)

(assert (=> b!3838368 m!4392749))

(assert (=> b!3838368 m!4392739))

(declare-fun m!4392751 () Bool)

(assert (=> b!3838368 m!4392751))

(declare-fun m!4392753 () Bool)

(assert (=> b!3838368 m!4392753))

(declare-fun m!4392755 () Bool)

(assert (=> b!3838368 m!4392755))

(assert (=> b!3838368 m!4392735))

(declare-fun m!4392757 () Bool)

(assert (=> b!3838368 m!4392757))

(declare-fun m!4392759 () Bool)

(assert (=> b!3838368 m!4392759))

(assert (=> b!3838368 m!4392747))

(declare-fun m!4392761 () Bool)

(assert (=> b!3838368 m!4392761))

(declare-fun m!4392763 () Bool)

(assert (=> b!3838357 m!4392763))

(check-sat (not b!3838375) (not b!3838367) b_and!285699 (not b!3838369) (not b!3838356) (not b!3838373) (not b!3838366) (not b!3838354) (not b!3838370) (not b!3838374) (not b!3838363) (not b!3838361) (not b_next!102851) (not b!3838371) (not b_next!102853) (not b!3838368) b_and!285697 b_and!285695 (not b_next!102847) b_and!285693 (not b!3838376) (not b_next!102845) tp_is_empty!19281 (not b!3838362) (not b_next!102855) b_and!285701 b_and!285691 (not b!3838357) (not b!3838359) (not b!3838364) (not b!3838355) (not b!3838360) (not b_next!102849))
(check-sat b_and!285699 b_and!285693 (not b_next!102845) (not b_next!102855) (not b_next!102849) (not b_next!102851) (not b_next!102853) b_and!285697 b_and!285695 (not b_next!102847) b_and!285701 b_and!285691)
