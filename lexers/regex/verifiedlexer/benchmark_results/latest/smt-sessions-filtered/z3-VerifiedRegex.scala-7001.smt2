; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371708 () Bool)

(assert start!371708)

(declare-fun b!3953665 () Bool)

(declare-fun b_free!108837 () Bool)

(declare-fun b_next!109541 () Bool)

(assert (=> b!3953665 (= b_free!108837 (not b_next!109541))))

(declare-fun tp!1204771 () Bool)

(declare-fun b_and!303127 () Bool)

(assert (=> b!3953665 (= tp!1204771 b_and!303127)))

(declare-fun b_free!108839 () Bool)

(declare-fun b_next!109543 () Bool)

(assert (=> b!3953665 (= b_free!108839 (not b_next!109543))))

(declare-fun tp!1204782 () Bool)

(declare-fun b_and!303129 () Bool)

(assert (=> b!3953665 (= tp!1204782 b_and!303129)))

(declare-fun b!3953676 () Bool)

(declare-fun b_free!108841 () Bool)

(declare-fun b_next!109545 () Bool)

(assert (=> b!3953676 (= b_free!108841 (not b_next!109545))))

(declare-fun tp!1204767 () Bool)

(declare-fun b_and!303131 () Bool)

(assert (=> b!3953676 (= tp!1204767 b_and!303131)))

(declare-fun b_free!108843 () Bool)

(declare-fun b_next!109547 () Bool)

(assert (=> b!3953676 (= b_free!108843 (not b_next!109547))))

(declare-fun tp!1204777 () Bool)

(declare-fun b_and!303133 () Bool)

(assert (=> b!3953676 (= tp!1204777 b_and!303133)))

(declare-fun b!3953663 () Bool)

(declare-fun b_free!108845 () Bool)

(declare-fun b_next!109549 () Bool)

(assert (=> b!3953663 (= b_free!108845 (not b_next!109549))))

(declare-fun tp!1204779 () Bool)

(declare-fun b_and!303135 () Bool)

(assert (=> b!3953663 (= tp!1204779 b_and!303135)))

(declare-fun b_free!108847 () Bool)

(declare-fun b_next!109551 () Bool)

(assert (=> b!3953663 (= b_free!108847 (not b_next!109551))))

(declare-fun tp!1204781 () Bool)

(declare-fun b_and!303137 () Bool)

(assert (=> b!3953663 (= tp!1204781 b_and!303137)))

(declare-fun b!3953657 () Bool)

(declare-fun res!1599799 () Bool)

(declare-fun e!2447586 () Bool)

(assert (=> b!3953657 (=> (not res!1599799) (not e!2447586))))

(declare-datatypes ((C!23176 0))(
  ( (C!23177 (val!13682 Int)) )
))
(declare-datatypes ((List!42197 0))(
  ( (Nil!42073) (Cons!42073 (h!47493 C!23176) (t!328934 List!42197)) )
))
(declare-datatypes ((IArray!25607 0))(
  ( (IArray!25608 (innerList!12861 List!42197)) )
))
(declare-datatypes ((Conc!12801 0))(
  ( (Node!12801 (left!31974 Conc!12801) (right!32304 Conc!12801) (csize!25832 Int) (cheight!13012 Int)) (Leaf!19803 (xs!16107 IArray!25607) (csize!25833 Int)) (Empty!12801) )
))
(declare-datatypes ((BalanceConc!25196 0))(
  ( (BalanceConc!25197 (c!686314 Conc!12801)) )
))
(declare-datatypes ((List!42198 0))(
  ( (Nil!42074) (Cons!42074 (h!47494 (_ BitVec 16)) (t!328935 List!42198)) )
))
(declare-datatypes ((TokenValue!6820 0))(
  ( (FloatLiteralValue!13640 (text!48185 List!42198)) (TokenValueExt!6819 (__x!25857 Int)) (Broken!34100 (value!208423 List!42198)) (Object!6943) (End!6820) (Def!6820) (Underscore!6820) (Match!6820) (Else!6820) (Error!6820) (Case!6820) (If!6820) (Extends!6820) (Abstract!6820) (Class!6820) (Val!6820) (DelimiterValue!13640 (del!6880 List!42198)) (KeywordValue!6826 (value!208424 List!42198)) (CommentValue!13640 (value!208425 List!42198)) (WhitespaceValue!13640 (value!208426 List!42198)) (IndentationValue!6820 (value!208427 List!42198)) (String!47817) (Int32!6820) (Broken!34101 (value!208428 List!42198)) (Boolean!6821) (Unit!60573) (OperatorValue!6823 (op!6880 List!42198)) (IdentifierValue!13640 (value!208429 List!42198)) (IdentifierValue!13641 (value!208430 List!42198)) (WhitespaceValue!13641 (value!208431 List!42198)) (True!13640) (False!13640) (Broken!34102 (value!208432 List!42198)) (Broken!34103 (value!208433 List!42198)) (True!13641) (RightBrace!6820) (RightBracket!6820) (Colon!6820) (Null!6820) (Comma!6820) (LeftBracket!6820) (False!13641) (LeftBrace!6820) (ImaginaryLiteralValue!6820 (text!48186 List!42198)) (StringLiteralValue!20460 (value!208434 List!42198)) (EOFValue!6820 (value!208435 List!42198)) (IdentValue!6820 (value!208436 List!42198)) (DelimiterValue!13641 (value!208437 List!42198)) (DedentValue!6820 (value!208438 List!42198)) (NewLineValue!6820 (value!208439 List!42198)) (IntegerValue!20460 (value!208440 (_ BitVec 32)) (text!48187 List!42198)) (IntegerValue!20461 (value!208441 Int) (text!48188 List!42198)) (Times!6820) (Or!6820) (Equal!6820) (Minus!6820) (Broken!34104 (value!208442 List!42198)) (And!6820) (Div!6820) (LessEqual!6820) (Mod!6820) (Concat!18315) (Not!6820) (Plus!6820) (SpaceValue!6820 (value!208443 List!42198)) (IntegerValue!20462 (value!208444 Int) (text!48189 List!42198)) (StringLiteralValue!20461 (text!48190 List!42198)) (FloatLiteralValue!13641 (text!48191 List!42198)) (BytesLiteralValue!6820 (value!208445 List!42198)) (CommentValue!13641 (value!208446 List!42198)) (StringLiteralValue!20462 (value!208447 List!42198)) (ErrorTokenValue!6820 (msg!6881 List!42198)) )
))
(declare-datatypes ((Regex!11495 0))(
  ( (ElementMatch!11495 (c!686315 C!23176)) (Concat!18316 (regOne!23502 Regex!11495) (regTwo!23502 Regex!11495)) (EmptyExpr!11495) (Star!11495 (reg!11824 Regex!11495)) (EmptyLang!11495) (Union!11495 (regOne!23503 Regex!11495) (regTwo!23503 Regex!11495)) )
))
(declare-datatypes ((String!47818 0))(
  ( (String!47819 (value!208448 String)) )
))
(declare-datatypes ((TokenValueInjection!13068 0))(
  ( (TokenValueInjection!13069 (toValue!9066 Int) (toChars!8925 Int)) )
))
(declare-datatypes ((Rule!12980 0))(
  ( (Rule!12981 (regex!6590 Regex!11495) (tag!7450 String!47818) (isSeparator!6590 Bool) (transformation!6590 TokenValueInjection!13068)) )
))
(declare-datatypes ((List!42199 0))(
  ( (Nil!42075) (Cons!42075 (h!47495 Rule!12980) (t!328936 List!42199)) )
))
(declare-fun rules!2768 () List!42199)

(declare-fun isEmpty!25140 (List!42199) Bool)

(assert (=> b!3953657 (= res!1599799 (not (isEmpty!25140 rules!2768)))))

(declare-fun e!2447595 () Bool)

(declare-fun tp!1204772 () Bool)

(declare-fun b!3953658 () Bool)

(declare-fun e!2447594 () Bool)

(declare-datatypes ((Token!12318 0))(
  ( (Token!12319 (value!208449 TokenValue!6820) (rule!9560 Rule!12980) (size!31520 Int) (originalCharacters!7190 List!42197)) )
))
(declare-datatypes ((List!42200 0))(
  ( (Nil!42076) (Cons!42076 (h!47496 Token!12318) (t!328937 List!42200)) )
))
(declare-fun suffixTokens!72 () List!42200)

(declare-fun inv!21 (TokenValue!6820) Bool)

(assert (=> b!3953658 (= e!2447594 (and (inv!21 (value!208449 (h!47496 suffixTokens!72))) e!2447595 tp!1204772))))

(declare-fun b!3953659 () Bool)

(declare-fun res!1599801 () Bool)

(declare-fun e!2447592 () Bool)

(assert (=> b!3953659 (=> (not res!1599801) (not e!2447592))))

(declare-fun suffixResult!91 () List!42197)

(declare-datatypes ((LexerInterface!6179 0))(
  ( (LexerInterfaceExt!6176 (__x!25858 Int)) (Lexer!6177) )
))
(declare-fun thiss!20629 () LexerInterface!6179)

(declare-fun suffix!1176 () List!42197)

(declare-datatypes ((tuple2!41358 0))(
  ( (tuple2!41359 (_1!23813 List!42200) (_2!23813 List!42197)) )
))
(declare-fun lexList!1947 (LexerInterface!6179 List!42199 List!42197) tuple2!41358)

(assert (=> b!3953659 (= res!1599801 (= (lexList!1947 thiss!20629 rules!2768 suffix!1176) (tuple2!41359 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3953660 () Bool)

(declare-fun e!2447609 () Bool)

(declare-datatypes ((tuple2!41360 0))(
  ( (tuple2!41361 (_1!23814 Token!12318) (_2!23814 List!42197)) )
))
(declare-datatypes ((Option!9010 0))(
  ( (None!9009) (Some!9009 (v!39351 tuple2!41360)) )
))
(declare-fun lt!1382348 () Option!9010)

(declare-fun size!31521 (List!42197) Int)

(assert (=> b!3953660 (= e!2447609 (= (size!31520 (_1!23814 (v!39351 lt!1382348))) (size!31521 (originalCharacters!7190 (_1!23814 (v!39351 lt!1382348))))))))

(declare-fun b!3953661 () Bool)

(declare-fun e!2447597 () Bool)

(declare-fun e!2447604 () Bool)

(declare-fun tp!1204780 () Bool)

(assert (=> b!3953661 (= e!2447597 (and e!2447604 tp!1204780))))

(declare-fun e!2447605 () Bool)

(declare-fun tp!1204774 () Bool)

(declare-fun b!3953662 () Bool)

(declare-fun inv!56296 (String!47818) Bool)

(declare-fun inv!56299 (TokenValueInjection!13068) Bool)

(assert (=> b!3953662 (= e!2447604 (and tp!1204774 (inv!56296 (tag!7450 (h!47495 rules!2768))) (inv!56299 (transformation!6590 (h!47495 rules!2768))) e!2447605))))

(declare-fun e!2447593 () Bool)

(assert (=> b!3953663 (= e!2447593 (and tp!1204779 tp!1204781))))

(declare-fun res!1599796 () Bool)

(assert (=> start!371708 (=> (not res!1599796) (not e!2447586))))

(get-info :version)

(assert (=> start!371708 (= res!1599796 ((_ is Lexer!6177) thiss!20629))))

(assert (=> start!371708 e!2447586))

(declare-fun e!2447607 () Bool)

(assert (=> start!371708 e!2447607))

(assert (=> start!371708 true))

(declare-fun e!2447606 () Bool)

(assert (=> start!371708 e!2447606))

(assert (=> start!371708 e!2447597))

(declare-fun e!2447589 () Bool)

(assert (=> start!371708 e!2447589))

(declare-fun e!2447588 () Bool)

(assert (=> start!371708 e!2447588))

(declare-fun e!2447599 () Bool)

(assert (=> start!371708 e!2447599))

(declare-fun b!3953664 () Bool)

(declare-fun e!2447585 () Bool)

(declare-fun e!2447591 () Bool)

(assert (=> b!3953664 (= e!2447585 (not e!2447591))))

(declare-fun res!1599794 () Bool)

(assert (=> b!3953664 (=> res!1599794 e!2447591)))

(declare-fun lt!1382358 () List!42197)

(declare-fun lt!1382352 () List!42197)

(assert (=> b!3953664 (= res!1599794 (not (= lt!1382358 lt!1382352)))))

(declare-fun lt!1382353 () tuple2!41358)

(assert (=> b!3953664 (= lt!1382353 (lexList!1947 thiss!20629 rules!2768 (_2!23814 (v!39351 lt!1382348))))))

(declare-fun lt!1382361 () List!42197)

(declare-fun lt!1382359 () List!42197)

(declare-fun lt!1382354 () Int)

(declare-fun lt!1382351 () TokenValue!6820)

(assert (=> b!3953664 (and (= (size!31520 (_1!23814 (v!39351 lt!1382348))) lt!1382354) (= (originalCharacters!7190 (_1!23814 (v!39351 lt!1382348))) lt!1382361) (= (v!39351 lt!1382348) (tuple2!41361 (Token!12319 lt!1382351 (rule!9560 (_1!23814 (v!39351 lt!1382348))) lt!1382354 lt!1382361) lt!1382359)))))

(assert (=> b!3953664 (= lt!1382354 (size!31521 lt!1382361))))

(assert (=> b!3953664 e!2447609))

(declare-fun res!1599803 () Bool)

(assert (=> b!3953664 (=> (not res!1599803) (not e!2447609))))

(assert (=> b!3953664 (= res!1599803 (= (value!208449 (_1!23814 (v!39351 lt!1382348))) lt!1382351))))

(declare-fun apply!9821 (TokenValueInjection!13068 BalanceConc!25196) TokenValue!6820)

(declare-fun seqFromList!4849 (List!42197) BalanceConc!25196)

(assert (=> b!3953664 (= lt!1382351 (apply!9821 (transformation!6590 (rule!9560 (_1!23814 (v!39351 lt!1382348)))) (seqFromList!4849 lt!1382361)))))

(assert (=> b!3953664 (= (_2!23814 (v!39351 lt!1382348)) lt!1382359)))

(declare-datatypes ((Unit!60574 0))(
  ( (Unit!60575) )
))
(declare-fun lt!1382356 () Unit!60574)

(declare-fun lemmaSamePrefixThenSameSuffix!1888 (List!42197 List!42197 List!42197 List!42197 List!42197) Unit!60574)

(assert (=> b!3953664 (= lt!1382356 (lemmaSamePrefixThenSameSuffix!1888 lt!1382361 (_2!23814 (v!39351 lt!1382348)) lt!1382361 lt!1382359 lt!1382352))))

(declare-fun getSuffix!2130 (List!42197 List!42197) List!42197)

(assert (=> b!3953664 (= lt!1382359 (getSuffix!2130 lt!1382352 lt!1382361))))

(declare-fun isPrefix!3679 (List!42197 List!42197) Bool)

(assert (=> b!3953664 (isPrefix!3679 lt!1382361 lt!1382358)))

(declare-fun ++!10937 (List!42197 List!42197) List!42197)

(assert (=> b!3953664 (= lt!1382358 (++!10937 lt!1382361 (_2!23814 (v!39351 lt!1382348))))))

(declare-fun lt!1382355 () Unit!60574)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2538 (List!42197 List!42197) Unit!60574)

(assert (=> b!3953664 (= lt!1382355 (lemmaConcatTwoListThenFirstIsPrefix!2538 lt!1382361 (_2!23814 (v!39351 lt!1382348))))))

(declare-fun list!15622 (BalanceConc!25196) List!42197)

(declare-fun charsOf!4408 (Token!12318) BalanceConc!25196)

(assert (=> b!3953664 (= lt!1382361 (list!15622 (charsOf!4408 (_1!23814 (v!39351 lt!1382348)))))))

(declare-fun ruleValid!2532 (LexerInterface!6179 Rule!12980) Bool)

(assert (=> b!3953664 (ruleValid!2532 thiss!20629 (rule!9560 (_1!23814 (v!39351 lt!1382348))))))

(declare-fun lt!1382347 () Unit!60574)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1608 (LexerInterface!6179 Rule!12980 List!42199) Unit!60574)

(assert (=> b!3953664 (= lt!1382347 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1608 thiss!20629 (rule!9560 (_1!23814 (v!39351 lt!1382348))) rules!2768))))

(declare-fun lt!1382349 () Unit!60574)

(declare-fun lemmaCharactersSize!1243 (Token!12318) Unit!60574)

(assert (=> b!3953664 (= lt!1382349 (lemmaCharactersSize!1243 (_1!23814 (v!39351 lt!1382348))))))

(assert (=> b!3953665 (= e!2447605 (and tp!1204771 tp!1204782))))

(declare-fun e!2447602 () Bool)

(declare-fun prefixTokens!80 () List!42200)

(declare-fun tp!1204776 () Bool)

(declare-fun b!3953666 () Bool)

(declare-fun e!2447590 () Bool)

(assert (=> b!3953666 (= e!2447590 (and tp!1204776 (inv!56296 (tag!7450 (rule!9560 (h!47496 prefixTokens!80)))) (inv!56299 (transformation!6590 (rule!9560 (h!47496 prefixTokens!80)))) e!2447602))))

(declare-fun b!3953667 () Bool)

(assert (=> b!3953667 (= e!2447592 e!2447585)))

(declare-fun res!1599808 () Bool)

(assert (=> b!3953667 (=> (not res!1599808) (not e!2447585))))

(assert (=> b!3953667 (= res!1599808 ((_ is Some!9009) lt!1382348))))

(declare-fun maxPrefix!3483 (LexerInterface!6179 List!42199 List!42197) Option!9010)

(assert (=> b!3953667 (= lt!1382348 (maxPrefix!3483 thiss!20629 rules!2768 lt!1382352))))

(declare-fun b!3953668 () Bool)

(declare-fun res!1599809 () Bool)

(assert (=> b!3953668 (=> (not res!1599809) (not e!2447586))))

(declare-fun isEmpty!25141 (List!42200) Bool)

(assert (=> b!3953668 (= res!1599809 (not (isEmpty!25141 prefixTokens!80)))))

(declare-fun b!3953669 () Bool)

(declare-fun e!2447598 () Bool)

(declare-fun e!2447596 () Bool)

(assert (=> b!3953669 (= e!2447598 e!2447596)))

(declare-fun res!1599795 () Bool)

(assert (=> b!3953669 (=> res!1599795 e!2447596)))

(declare-fun lt!1382363 () Int)

(declare-fun lt!1382357 () Int)

(assert (=> b!3953669 (= res!1599795 (not (= (+ lt!1382354 lt!1382357) lt!1382363)))))

(assert (=> b!3953669 (= lt!1382363 (size!31521 lt!1382352))))

(declare-fun b!3953670 () Bool)

(declare-fun res!1599797 () Bool)

(assert (=> b!3953670 (=> res!1599797 e!2447591)))

(assert (=> b!3953670 (= res!1599797 (or (not (= lt!1382353 (tuple2!41359 (_1!23813 lt!1382353) (_2!23813 lt!1382353)))) (= (_2!23814 (v!39351 lt!1382348)) suffix!1176)))))

(declare-fun b!3953671 () Bool)

(declare-fun tp_is_empty!19961 () Bool)

(declare-fun tp!1204768 () Bool)

(assert (=> b!3953671 (= e!2447599 (and tp_is_empty!19961 tp!1204768))))

(declare-fun b!3953672 () Bool)

(declare-fun e!2447601 () Bool)

(assert (=> b!3953672 (= e!2447601 (= lt!1382352 lt!1382358))))

(declare-fun b!3953673 () Bool)

(declare-fun res!1599802 () Bool)

(assert (=> b!3953673 (=> (not res!1599802) (not e!2447586))))

(declare-fun rulesInvariant!5522 (LexerInterface!6179 List!42199) Bool)

(assert (=> b!3953673 (= res!1599802 (rulesInvariant!5522 thiss!20629 rules!2768))))

(declare-fun tp!1204769 () Bool)

(declare-fun b!3953674 () Bool)

(assert (=> b!3953674 (= e!2447595 (and tp!1204769 (inv!56296 (tag!7450 (rule!9560 (h!47496 suffixTokens!72)))) (inv!56299 (transformation!6590 (rule!9560 (h!47496 suffixTokens!72)))) e!2447593))))

(declare-fun b!3953675 () Bool)

(declare-fun tp!1204766 () Bool)

(assert (=> b!3953675 (= e!2447606 (and tp_is_empty!19961 tp!1204766))))

(assert (=> b!3953676 (= e!2447602 (and tp!1204767 tp!1204777))))

(declare-fun b!3953677 () Bool)

(declare-fun res!1599805 () Bool)

(assert (=> b!3953677 (=> (not res!1599805) (not e!2447586))))

(declare-fun prefix!426 () List!42197)

(declare-fun isEmpty!25142 (List!42197) Bool)

(assert (=> b!3953677 (= res!1599805 (not (isEmpty!25142 prefix!426)))))

(declare-fun b!3953678 () Bool)

(assert (=> b!3953678 (= e!2447586 e!2447592)))

(declare-fun res!1599804 () Bool)

(assert (=> b!3953678 (=> (not res!1599804) (not e!2447592))))

(declare-fun lt!1382362 () List!42200)

(declare-fun lt!1382346 () tuple2!41358)

(assert (=> b!3953678 (= res!1599804 (= lt!1382346 (tuple2!41359 lt!1382362 suffixResult!91)))))

(assert (=> b!3953678 (= lt!1382346 (lexList!1947 thiss!20629 rules!2768 lt!1382352))))

(declare-fun ++!10938 (List!42200 List!42200) List!42200)

(assert (=> b!3953678 (= lt!1382362 (++!10938 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3953678 (= lt!1382352 (++!10937 prefix!426 suffix!1176))))

(declare-fun b!3953679 () Bool)

(assert (=> b!3953679 (= e!2447591 e!2447598)))

(declare-fun res!1599807 () Bool)

(assert (=> b!3953679 (=> res!1599807 e!2447598)))

(declare-fun lt!1382350 () Int)

(assert (=> b!3953679 (= res!1599807 (>= lt!1382357 lt!1382350))))

(assert (=> b!3953679 (= lt!1382350 (size!31521 suffix!1176))))

(assert (=> b!3953679 (= lt!1382357 (size!31521 (_2!23814 (v!39351 lt!1382348))))))

(declare-fun tp!1204773 () Bool)

(declare-fun e!2447610 () Bool)

(declare-fun b!3953680 () Bool)

(declare-fun inv!56300 (Token!12318) Bool)

(assert (=> b!3953680 (= e!2447589 (and (inv!56300 (h!47496 prefixTokens!80)) e!2447610 tp!1204773))))

(declare-fun b!3953681 () Bool)

(declare-fun res!1599806 () Bool)

(assert (=> b!3953681 (=> res!1599806 e!2447601)))

(declare-fun contains!8412 (List!42199 Rule!12980) Bool)

(assert (=> b!3953681 (= res!1599806 (not (contains!8412 rules!2768 (rule!9560 (_1!23814 (v!39351 lt!1382348))))))))

(declare-fun b!3953682 () Bool)

(declare-fun res!1599798 () Bool)

(assert (=> b!3953682 (=> res!1599798 e!2447591)))

(assert (=> b!3953682 (= res!1599798 (not (= lt!1382346 (tuple2!41359 (++!10938 (Cons!42076 (_1!23814 (v!39351 lt!1382348)) Nil!42076) (_1!23813 lt!1382353)) (_2!23813 lt!1382353)))))))

(declare-fun b!3953683 () Bool)

(declare-fun tp!1204775 () Bool)

(assert (=> b!3953683 (= e!2447610 (and (inv!21 (value!208449 (h!47496 prefixTokens!80))) e!2447590 tp!1204775))))

(declare-fun b!3953684 () Bool)

(assert (=> b!3953684 (= e!2447596 e!2447601)))

(declare-fun res!1599800 () Bool)

(assert (=> b!3953684 (=> res!1599800 e!2447601)))

(declare-fun lt!1382360 () Int)

(assert (=> b!3953684 (= res!1599800 (or (not (= (+ lt!1382360 lt!1382350) lt!1382363)) (<= lt!1382354 lt!1382360)))))

(assert (=> b!3953684 (= lt!1382360 (size!31521 prefix!426))))

(declare-fun b!3953685 () Bool)

(declare-fun tp!1204778 () Bool)

(assert (=> b!3953685 (= e!2447588 (and (inv!56300 (h!47496 suffixTokens!72)) e!2447594 tp!1204778))))

(declare-fun b!3953686 () Bool)

(declare-fun tp!1204770 () Bool)

(assert (=> b!3953686 (= e!2447607 (and tp_is_empty!19961 tp!1204770))))

(assert (= (and start!371708 res!1599796) b!3953657))

(assert (= (and b!3953657 res!1599799) b!3953673))

(assert (= (and b!3953673 res!1599802) b!3953668))

(assert (= (and b!3953668 res!1599809) b!3953677))

(assert (= (and b!3953677 res!1599805) b!3953678))

(assert (= (and b!3953678 res!1599804) b!3953659))

(assert (= (and b!3953659 res!1599801) b!3953667))

(assert (= (and b!3953667 res!1599808) b!3953664))

(assert (= (and b!3953664 res!1599803) b!3953660))

(assert (= (and b!3953664 (not res!1599794)) b!3953682))

(assert (= (and b!3953682 (not res!1599798)) b!3953670))

(assert (= (and b!3953670 (not res!1599797)) b!3953679))

(assert (= (and b!3953679 (not res!1599807)) b!3953669))

(assert (= (and b!3953669 (not res!1599795)) b!3953684))

(assert (= (and b!3953684 (not res!1599800)) b!3953681))

(assert (= (and b!3953681 (not res!1599806)) b!3953672))

(assert (= (and start!371708 ((_ is Cons!42073) suffixResult!91)) b!3953686))

(assert (= (and start!371708 ((_ is Cons!42073) suffix!1176)) b!3953675))

(assert (= b!3953662 b!3953665))

(assert (= b!3953661 b!3953662))

(assert (= (and start!371708 ((_ is Cons!42075) rules!2768)) b!3953661))

(assert (= b!3953666 b!3953676))

(assert (= b!3953683 b!3953666))

(assert (= b!3953680 b!3953683))

(assert (= (and start!371708 ((_ is Cons!42076) prefixTokens!80)) b!3953680))

(assert (= b!3953674 b!3953663))

(assert (= b!3953658 b!3953674))

(assert (= b!3953685 b!3953658))

(assert (= (and start!371708 ((_ is Cons!42076) suffixTokens!72)) b!3953685))

(assert (= (and start!371708 ((_ is Cons!42073) prefix!426)) b!3953671))

(declare-fun m!4522421 () Bool)

(assert (=> b!3953667 m!4522421))

(declare-fun m!4522423 () Bool)

(assert (=> b!3953681 m!4522423))

(declare-fun m!4522425 () Bool)

(assert (=> b!3953668 m!4522425))

(declare-fun m!4522427 () Bool)

(assert (=> b!3953677 m!4522427))

(declare-fun m!4522429 () Bool)

(assert (=> b!3953680 m!4522429))

(declare-fun m!4522431 () Bool)

(assert (=> b!3953664 m!4522431))

(declare-fun m!4522433 () Bool)

(assert (=> b!3953664 m!4522433))

(declare-fun m!4522435 () Bool)

(assert (=> b!3953664 m!4522435))

(declare-fun m!4522437 () Bool)

(assert (=> b!3953664 m!4522437))

(declare-fun m!4522439 () Bool)

(assert (=> b!3953664 m!4522439))

(declare-fun m!4522441 () Bool)

(assert (=> b!3953664 m!4522441))

(declare-fun m!4522443 () Bool)

(assert (=> b!3953664 m!4522443))

(declare-fun m!4522445 () Bool)

(assert (=> b!3953664 m!4522445))

(assert (=> b!3953664 m!4522431))

(declare-fun m!4522447 () Bool)

(assert (=> b!3953664 m!4522447))

(declare-fun m!4522449 () Bool)

(assert (=> b!3953664 m!4522449))

(declare-fun m!4522451 () Bool)

(assert (=> b!3953664 m!4522451))

(declare-fun m!4522453 () Bool)

(assert (=> b!3953664 m!4522453))

(assert (=> b!3953664 m!4522437))

(declare-fun m!4522455 () Bool)

(assert (=> b!3953664 m!4522455))

(declare-fun m!4522457 () Bool)

(assert (=> b!3953664 m!4522457))

(declare-fun m!4522459 () Bool)

(assert (=> b!3953658 m!4522459))

(declare-fun m!4522461 () Bool)

(assert (=> b!3953674 m!4522461))

(declare-fun m!4522463 () Bool)

(assert (=> b!3953674 m!4522463))

(declare-fun m!4522465 () Bool)

(assert (=> b!3953685 m!4522465))

(declare-fun m!4522467 () Bool)

(assert (=> b!3953679 m!4522467))

(declare-fun m!4522469 () Bool)

(assert (=> b!3953679 m!4522469))

(declare-fun m!4522471 () Bool)

(assert (=> b!3953662 m!4522471))

(declare-fun m!4522473 () Bool)

(assert (=> b!3953662 m!4522473))

(declare-fun m!4522475 () Bool)

(assert (=> b!3953669 m!4522475))

(declare-fun m!4522477 () Bool)

(assert (=> b!3953682 m!4522477))

(declare-fun m!4522479 () Bool)

(assert (=> b!3953666 m!4522479))

(declare-fun m!4522481 () Bool)

(assert (=> b!3953666 m!4522481))

(declare-fun m!4522483 () Bool)

(assert (=> b!3953678 m!4522483))

(declare-fun m!4522485 () Bool)

(assert (=> b!3953678 m!4522485))

(declare-fun m!4522487 () Bool)

(assert (=> b!3953678 m!4522487))

(declare-fun m!4522489 () Bool)

(assert (=> b!3953673 m!4522489))

(declare-fun m!4522491 () Bool)

(assert (=> b!3953683 m!4522491))

(declare-fun m!4522493 () Bool)

(assert (=> b!3953684 m!4522493))

(declare-fun m!4522495 () Bool)

(assert (=> b!3953657 m!4522495))

(declare-fun m!4522497 () Bool)

(assert (=> b!3953659 m!4522497))

(declare-fun m!4522499 () Bool)

(assert (=> b!3953660 m!4522499))

(check-sat b_and!303127 (not b!3953682) (not b!3953685) b_and!303137 (not b!3953661) (not b!3953675) (not b!3953664) b_and!303131 (not b!3953658) (not b!3953679) (not b!3953671) (not b!3953662) (not b!3953673) (not b_next!109551) (not b!3953674) (not b_next!109543) (not b!3953681) b_and!303129 b_and!303133 (not b!3953680) (not b!3953678) (not b_next!109545) (not b!3953666) (not b!3953669) (not b!3953657) (not b!3953677) b_and!303135 (not b!3953659) (not b_next!109541) (not b!3953667) (not b!3953660) (not b_next!109547) (not b_next!109549) tp_is_empty!19961 (not b!3953683) (not b!3953684) (not b!3953686) (not b!3953668))
(check-sat (not b_next!109543) b_and!303129 b_and!303133 (not b_next!109545) b_and!303127 b_and!303137 b_and!303135 (not b_next!109541) b_and!303131 (not b_next!109551) (not b_next!109547) (not b_next!109549))
