; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221232 () Bool)

(assert start!221232)

(declare-fun b!2264555 () Bool)

(declare-fun b_free!67005 () Bool)

(declare-fun b_next!67709 () Bool)

(assert (=> b!2264555 (= b_free!67005 (not b_next!67709))))

(declare-fun tp!716397 () Bool)

(declare-fun b_and!178089 () Bool)

(assert (=> b!2264555 (= tp!716397 b_and!178089)))

(declare-fun b_free!67007 () Bool)

(declare-fun b_next!67711 () Bool)

(assert (=> b!2264555 (= b_free!67007 (not b_next!67711))))

(declare-fun tp!716390 () Bool)

(declare-fun b_and!178091 () Bool)

(assert (=> b!2264555 (= tp!716390 b_and!178091)))

(declare-fun b!2264588 () Bool)

(declare-fun b_free!67009 () Bool)

(declare-fun b_next!67713 () Bool)

(assert (=> b!2264588 (= b_free!67009 (not b_next!67713))))

(declare-fun tp!716391 () Bool)

(declare-fun b_and!178093 () Bool)

(assert (=> b!2264588 (= tp!716391 b_and!178093)))

(declare-fun b_free!67011 () Bool)

(declare-fun b_next!67715 () Bool)

(assert (=> b!2264588 (= b_free!67011 (not b_next!67715))))

(declare-fun tp!716392 () Bool)

(declare-fun b_and!178095 () Bool)

(assert (=> b!2264588 (= tp!716392 b_and!178095)))

(declare-fun b!2264586 () Bool)

(declare-fun b_free!67013 () Bool)

(declare-fun b_next!67717 () Bool)

(assert (=> b!2264586 (= b_free!67013 (not b_next!67717))))

(declare-fun tp!716405 () Bool)

(declare-fun b_and!178097 () Bool)

(assert (=> b!2264586 (= tp!716405 b_and!178097)))

(declare-fun b_free!67015 () Bool)

(declare-fun b_next!67719 () Bool)

(assert (=> b!2264586 (= b_free!67015 (not b_next!67719))))

(declare-fun tp!716404 () Bool)

(declare-fun b_and!178099 () Bool)

(assert (=> b!2264586 (= tp!716404 b_and!178099)))

(declare-fun b!2264556 () Bool)

(declare-fun b_free!67017 () Bool)

(declare-fun b_next!67721 () Bool)

(assert (=> b!2264556 (= b_free!67017 (not b_next!67721))))

(declare-fun tp!716396 () Bool)

(declare-fun b_and!178101 () Bool)

(assert (=> b!2264556 (= tp!716396 b_and!178101)))

(declare-fun b_free!67019 () Bool)

(declare-fun b_next!67723 () Bool)

(assert (=> b!2264556 (= b_free!67019 (not b_next!67723))))

(declare-fun tp!716395 () Bool)

(declare-fun b_and!178103 () Bool)

(assert (=> b!2264556 (= tp!716395 b_and!178103)))

(declare-fun b!2264553 () Bool)

(declare-fun e!1450077 () Bool)

(declare-fun e!1450057 () Bool)

(assert (=> b!2264553 (= e!1450077 (not e!1450057))))

(declare-fun res!968022 () Bool)

(assert (=> b!2264553 (=> res!968022 e!1450057)))

(declare-fun e!1450078 () Bool)

(assert (=> b!2264553 (= res!968022 e!1450078)))

(declare-fun res!968033 () Bool)

(assert (=> b!2264553 (=> (not res!968033) (not e!1450078))))

(declare-fun lt!841448 () Bool)

(assert (=> b!2264553 (= res!968033 (not lt!841448))))

(declare-datatypes ((LexerInterface!3878 0))(
  ( (LexerInterfaceExt!3875 (__x!17946 Int)) (Lexer!3876) )
))
(declare-fun thiss!16613 () LexerInterface!3878)

(declare-datatypes ((List!26991 0))(
  ( (Nil!26897) (Cons!26897 (h!32298 (_ BitVec 16)) (t!201989 List!26991)) )
))
(declare-datatypes ((TokenValue!4443 0))(
  ( (FloatLiteralValue!8886 (text!31546 List!26991)) (TokenValueExt!4442 (__x!17947 Int)) (Broken!22215 (value!135802 List!26991)) (Object!4536) (End!4443) (Def!4443) (Underscore!4443) (Match!4443) (Else!4443) (Error!4443) (Case!4443) (If!4443) (Extends!4443) (Abstract!4443) (Class!4443) (Val!4443) (DelimiterValue!8886 (del!4503 List!26991)) (KeywordValue!4449 (value!135803 List!26991)) (CommentValue!8886 (value!135804 List!26991)) (WhitespaceValue!8886 (value!135805 List!26991)) (IndentationValue!4443 (value!135806 List!26991)) (String!29318) (Int32!4443) (Broken!22216 (value!135807 List!26991)) (Boolean!4444) (Unit!39843) (OperatorValue!4446 (op!4503 List!26991)) (IdentifierValue!8886 (value!135808 List!26991)) (IdentifierValue!8887 (value!135809 List!26991)) (WhitespaceValue!8887 (value!135810 List!26991)) (True!8886) (False!8886) (Broken!22217 (value!135811 List!26991)) (Broken!22218 (value!135812 List!26991)) (True!8887) (RightBrace!4443) (RightBracket!4443) (Colon!4443) (Null!4443) (Comma!4443) (LeftBracket!4443) (False!8887) (LeftBrace!4443) (ImaginaryLiteralValue!4443 (text!31547 List!26991)) (StringLiteralValue!13329 (value!135813 List!26991)) (EOFValue!4443 (value!135814 List!26991)) (IdentValue!4443 (value!135815 List!26991)) (DelimiterValue!8887 (value!135816 List!26991)) (DedentValue!4443 (value!135817 List!26991)) (NewLineValue!4443 (value!135818 List!26991)) (IntegerValue!13329 (value!135819 (_ BitVec 32)) (text!31548 List!26991)) (IntegerValue!13330 (value!135820 Int) (text!31549 List!26991)) (Times!4443) (Or!4443) (Equal!4443) (Minus!4443) (Broken!22219 (value!135821 List!26991)) (And!4443) (Div!4443) (LessEqual!4443) (Mod!4443) (Concat!11072) (Not!4443) (Plus!4443) (SpaceValue!4443 (value!135822 List!26991)) (IntegerValue!13331 (value!135823 Int) (text!31550 List!26991)) (StringLiteralValue!13330 (text!31551 List!26991)) (FloatLiteralValue!8887 (text!31552 List!26991)) (BytesLiteralValue!4443 (value!135824 List!26991)) (CommentValue!8887 (value!135825 List!26991)) (StringLiteralValue!13331 (value!135826 List!26991)) (ErrorTokenValue!4443 (msg!4504 List!26991)) )
))
(declare-datatypes ((C!13404 0))(
  ( (C!13405 (val!7750 Int)) )
))
(declare-datatypes ((List!26992 0))(
  ( (Nil!26898) (Cons!26898 (h!32299 C!13404) (t!201990 List!26992)) )
))
(declare-datatypes ((IArray!17425 0))(
  ( (IArray!17426 (innerList!8770 List!26992)) )
))
(declare-datatypes ((Conc!8710 0))(
  ( (Node!8710 (left!20415 Conc!8710) (right!20745 Conc!8710) (csize!17650 Int) (cheight!8921 Int)) (Leaf!12836 (xs!11652 IArray!17425) (csize!17651 Int)) (Empty!8710) )
))
(declare-datatypes ((BalanceConc!17148 0))(
  ( (BalanceConc!17149 (c!359730 Conc!8710)) )
))
(declare-datatypes ((String!29319 0))(
  ( (String!29320 (value!135827 String)) )
))
(declare-datatypes ((Regex!6629 0))(
  ( (ElementMatch!6629 (c!359731 C!13404)) (Concat!11073 (regOne!13770 Regex!6629) (regTwo!13770 Regex!6629)) (EmptyExpr!6629) (Star!6629 (reg!6958 Regex!6629)) (EmptyLang!6629) (Union!6629 (regOne!13771 Regex!6629) (regTwo!13771 Regex!6629)) )
))
(declare-datatypes ((TokenValueInjection!8426 0))(
  ( (TokenValueInjection!8427 (toValue!6035 Int) (toChars!5894 Int)) )
))
(declare-datatypes ((Rule!8362 0))(
  ( (Rule!8363 (regex!4281 Regex!6629) (tag!4771 String!29319) (isSeparator!4281 Bool) (transformation!4281 TokenValueInjection!8426)) )
))
(declare-fun r!2363 () Rule!8362)

(declare-fun ruleValid!1373 (LexerInterface!3878 Rule!8362) Bool)

(assert (=> b!2264553 (ruleValid!1373 thiss!16613 r!2363)))

(declare-datatypes ((List!26993 0))(
  ( (Nil!26899) (Cons!26899 (h!32300 Rule!8362) (t!201991 List!26993)) )
))
(declare-fun rules!1750 () List!26993)

(declare-datatypes ((Unit!39844 0))(
  ( (Unit!39845) )
))
(declare-fun lt!841452 () Unit!39844)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!780 (LexerInterface!3878 Rule!8362 List!26993) Unit!39844)

(assert (=> b!2264553 (= lt!841452 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!780 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2264554 () Bool)

(declare-fun e!1450060 () Bool)

(declare-datatypes ((Token!8040 0))(
  ( (Token!8041 (value!135828 TokenValue!4443) (rule!6595 Rule!8362) (size!21088 Int) (originalCharacters!5051 List!26992)) )
))
(declare-datatypes ((List!26994 0))(
  ( (Nil!26900) (Cons!26900 (h!32301 Token!8040) (t!201992 List!26994)) )
))
(declare-fun tokens!456 () List!26994)

(declare-fun otherP!12 () List!26992)

(declare-fun size!21089 (BalanceConc!17148) Int)

(declare-fun charsOf!2669 (Token!8040) BalanceConc!17148)

(declare-fun head!4866 (List!26994) Token!8040)

(declare-fun size!21090 (List!26992) Int)

(assert (=> b!2264554 (= e!1450060 (<= (size!21089 (charsOf!2669 (head!4866 tokens!456))) (size!21090 otherP!12)))))

(declare-fun e!1450081 () Bool)

(assert (=> b!2264555 (= e!1450081 (and tp!716397 tp!716390))))

(declare-fun e!1450064 () Bool)

(assert (=> b!2264556 (= e!1450064 (and tp!716396 tp!716395))))

(declare-fun b!2264557 () Bool)

(declare-fun matchR!2890 (Regex!6629 List!26992) Bool)

(declare-fun list!10393 (BalanceConc!17148) List!26992)

(assert (=> b!2264557 (= e!1450078 (not (matchR!2890 (regex!4281 r!2363) (list!10393 (charsOf!2669 (head!4866 tokens!456))))))))

(declare-fun b!2264558 () Bool)

(declare-fun e!1450071 () Bool)

(declare-fun e!1450068 () Bool)

(assert (=> b!2264558 (= e!1450071 e!1450068)))

(declare-fun res!968025 () Bool)

(assert (=> b!2264558 (=> res!968025 e!1450068)))

(declare-fun lt!841462 () Int)

(declare-fun lt!841464 () Int)

(assert (=> b!2264558 (= res!968025 (<= lt!841462 lt!841464))))

(declare-fun lt!841446 () List!26992)

(assert (=> b!2264558 (= lt!841464 (size!21090 lt!841446))))

(assert (=> b!2264558 (= lt!841462 (size!21090 otherP!12))))

(declare-datatypes ((tuple2!26518 0))(
  ( (tuple2!26519 (_1!15769 Token!8040) (_2!15769 List!26992)) )
))
(declare-fun lt!841458 () tuple2!26518)

(declare-fun lt!841443 () List!26992)

(assert (=> b!2264558 (= (_2!15769 lt!841458) lt!841443)))

(declare-fun input!1722 () List!26992)

(declare-fun lt!841460 () Unit!39844)

(declare-fun lemmaSamePrefixThenSameSuffix!1000 (List!26992 List!26992 List!26992 List!26992 List!26992) Unit!39844)

(assert (=> b!2264558 (= lt!841460 (lemmaSamePrefixThenSameSuffix!1000 lt!841446 (_2!15769 lt!841458) lt!841446 lt!841443 input!1722))))

(declare-fun getSuffix!1082 (List!26992 List!26992) List!26992)

(assert (=> b!2264558 (= lt!841443 (getSuffix!1082 input!1722 lt!841446))))

(declare-fun isPrefix!2271 (List!26992 List!26992) Bool)

(declare-fun ++!6553 (List!26992 List!26992) List!26992)

(assert (=> b!2264558 (isPrefix!2271 lt!841446 (++!6553 lt!841446 (_2!15769 lt!841458)))))

(declare-fun lt!841457 () Unit!39844)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1496 (List!26992 List!26992) Unit!39844)

(assert (=> b!2264558 (= lt!841457 (lemmaConcatTwoListThenFirstIsPrefix!1496 lt!841446 (_2!15769 lt!841458)))))

(assert (=> b!2264558 (= lt!841446 (list!10393 (charsOf!2669 (h!32301 tokens!456))))))

(declare-datatypes ((Option!5259 0))(
  ( (None!5258) (Some!5258 (v!30296 tuple2!26518)) )
))
(declare-fun lt!841455 () Option!5259)

(declare-fun get!8115 (Option!5259) tuple2!26518)

(assert (=> b!2264558 (= lt!841458 (get!8115 lt!841455))))

(declare-fun maxPrefix!2152 (LexerInterface!3878 List!26993 List!26992) Option!5259)

(assert (=> b!2264558 (= lt!841455 (maxPrefix!2152 thiss!16613 rules!1750 input!1722))))

(declare-fun e!1450073 () Bool)

(declare-fun tp!716403 () Bool)

(declare-fun b!2264559 () Bool)

(declare-fun inv!36442 (String!29319) Bool)

(declare-fun inv!36445 (TokenValueInjection!8426) Bool)

(assert (=> b!2264559 (= e!1450073 (and tp!716403 (inv!36442 (tag!4771 r!2363)) (inv!36445 (transformation!4281 r!2363)) e!1450064))))

(declare-fun b!2264560 () Bool)

(declare-fun res!968026 () Bool)

(declare-fun e!1450059 () Bool)

(assert (=> b!2264560 (=> res!968026 e!1450059)))

(assert (=> b!2264560 (= res!968026 (not (matchR!2890 (regex!4281 r!2363) lt!841446)))))

(declare-fun b!2264561 () Bool)

(declare-fun res!968031 () Bool)

(declare-fun e!1450076 () Bool)

(assert (=> b!2264561 (=> (not res!968031) (not e!1450076))))

(declare-fun otherR!12 () Rule!8362)

(declare-fun contains!4639 (List!26993 Rule!8362) Bool)

(assert (=> b!2264561 (= res!968031 (contains!4639 rules!1750 otherR!12))))

(declare-fun b!2264562 () Bool)

(declare-fun e!1450055 () Bool)

(assert (=> b!2264562 (= e!1450059 e!1450055)))

(declare-fun res!968024 () Bool)

(assert (=> b!2264562 (=> res!968024 e!1450055)))

(declare-fun lt!841459 () Option!5259)

(declare-fun lt!841444 () Option!5259)

(assert (=> b!2264562 (= res!968024 (or (not (= lt!841444 lt!841459)) (not (= lt!841455 lt!841459))))))

(declare-fun lt!841461 () Token!8040)

(assert (=> b!2264562 (= lt!841459 (Some!5258 (tuple2!26519 lt!841461 lt!841443)))))

(assert (=> b!2264562 (isPrefix!2271 input!1722 input!1722)))

(declare-fun lt!841453 () Unit!39844)

(declare-fun lemmaIsPrefixRefl!1455 (List!26992 List!26992) Unit!39844)

(assert (=> b!2264562 (= lt!841453 (lemmaIsPrefixRefl!1455 input!1722 input!1722))))

(declare-fun lt!841447 () Unit!39844)

(declare-fun lt!841449 () BalanceConc!17148)

(declare-fun lemmaSemiInverse!1028 (TokenValueInjection!8426 BalanceConc!17148) Unit!39844)

(assert (=> b!2264562 (= lt!841447 (lemmaSemiInverse!1028 (transformation!4281 r!2363) lt!841449))))

(declare-fun b!2264563 () Bool)

(declare-fun res!968017 () Bool)

(assert (=> b!2264563 (=> (not res!968017) (not e!1450077))))

(declare-fun e!1450079 () Bool)

(assert (=> b!2264563 (= res!968017 e!1450079)))

(declare-fun res!968016 () Bool)

(assert (=> b!2264563 (=> res!968016 e!1450079)))

(assert (=> b!2264563 (= res!968016 lt!841448)))

(declare-fun b!2264564 () Bool)

(declare-fun res!968023 () Bool)

(assert (=> b!2264564 (=> (not res!968023) (not e!1450077))))

(assert (=> b!2264564 (= res!968023 (isPrefix!2271 otherP!12 input!1722))))

(declare-fun b!2264565 () Bool)

(declare-fun e!1450070 () Bool)

(assert (=> b!2264565 (= e!1450076 e!1450070)))

(declare-fun res!968019 () Bool)

(assert (=> b!2264565 (=> (not res!968019) (not e!1450070))))

(declare-fun suffix!886 () List!26992)

(declare-datatypes ((IArray!17427 0))(
  ( (IArray!17428 (innerList!8771 List!26994)) )
))
(declare-datatypes ((Conc!8711 0))(
  ( (Node!8711 (left!20416 Conc!8711) (right!20746 Conc!8711) (csize!17652 Int) (cheight!8922 Int)) (Leaf!12837 (xs!11653 IArray!17427) (csize!17653 Int)) (Empty!8711) )
))
(declare-datatypes ((BalanceConc!17150 0))(
  ( (BalanceConc!17151 (c!359732 Conc!8711)) )
))
(declare-datatypes ((tuple2!26520 0))(
  ( (tuple2!26521 (_1!15770 BalanceConc!17150) (_2!15770 BalanceConc!17148)) )
))
(declare-fun lt!841454 () tuple2!26520)

(declare-datatypes ((tuple2!26522 0))(
  ( (tuple2!26523 (_1!15771 List!26994) (_2!15771 List!26992)) )
))
(declare-fun list!10394 (BalanceConc!17150) List!26994)

(assert (=> b!2264565 (= res!968019 (= (tuple2!26523 (list!10394 (_1!15770 lt!841454)) (list!10393 (_2!15770 lt!841454))) (tuple2!26523 tokens!456 suffix!886)))))

(declare-fun lex!1717 (LexerInterface!3878 List!26993 BalanceConc!17148) tuple2!26520)

(declare-fun seqFromList!2985 (List!26992) BalanceConc!17148)

(assert (=> b!2264565 (= lt!841454 (lex!1717 thiss!16613 rules!1750 (seqFromList!2985 input!1722)))))

(declare-fun b!2264566 () Bool)

(declare-fun tp!716400 () Bool)

(declare-fun e!1450053 () Bool)

(declare-fun e!1450058 () Bool)

(assert (=> b!2264566 (= e!1450053 (and tp!716400 (inv!36442 (tag!4771 (rule!6595 (h!32301 tokens!456)))) (inv!36445 (transformation!4281 (rule!6595 (h!32301 tokens!456)))) e!1450058))))

(declare-fun b!2264567 () Bool)

(assert (=> b!2264567 (= e!1450055 true)))

(assert (=> b!2264567 (not (matchR!2890 (regex!4281 otherR!12) otherP!12))))

(declare-fun lt!841445 () Unit!39844)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!278 (LexerInterface!3878 List!26993 Rule!8362 List!26992 List!26992 List!26992 Rule!8362) Unit!39844)

(assert (=> b!2264567 (= lt!841445 (lemmaMaxPrefixOutputsMaxPrefix!278 thiss!16613 rules!1750 r!2363 lt!841446 input!1722 otherP!12 otherR!12))))

(declare-fun b!2264568 () Bool)

(assert (=> b!2264568 (= e!1450079 (= (rule!6595 (head!4866 tokens!456)) r!2363))))

(declare-fun b!2264569 () Bool)

(declare-fun res!968034 () Bool)

(assert (=> b!2264569 (=> (not res!968034) (not e!1450076))))

(assert (=> b!2264569 (= res!968034 (contains!4639 rules!1750 r!2363))))

(declare-fun b!2264570 () Bool)

(declare-fun e!1450075 () Bool)

(declare-fun tp_is_empty!10479 () Bool)

(declare-fun tp!716401 () Bool)

(assert (=> b!2264570 (= e!1450075 (and tp_is_empty!10479 tp!716401))))

(declare-fun b!2264571 () Bool)

(declare-fun res!968030 () Bool)

(assert (=> b!2264571 (=> (not res!968030) (not e!1450077))))

(assert (=> b!2264571 (= res!968030 (not (= r!2363 otherR!12)))))

(declare-fun b!2264572 () Bool)

(declare-fun e!1450067 () Bool)

(declare-fun tp!716398 () Bool)

(declare-fun inv!21 (TokenValue!4443) Bool)

(assert (=> b!2264572 (= e!1450067 (and (inv!21 (value!135828 (h!32301 tokens!456))) e!1450053 tp!716398))))

(declare-fun e!1450062 () Bool)

(declare-fun tp!716394 () Bool)

(declare-fun b!2264573 () Bool)

(assert (=> b!2264573 (= e!1450062 (and tp!716394 (inv!36442 (tag!4771 otherR!12)) (inv!36445 (transformation!4281 otherR!12)) e!1450081))))

(declare-fun b!2264574 () Bool)

(declare-fun res!968028 () Bool)

(assert (=> b!2264574 (=> (not res!968028) (not e!1450076))))

(declare-fun isEmpty!15217 (List!26993) Bool)

(assert (=> b!2264574 (= res!968028 (not (isEmpty!15217 rules!1750)))))

(declare-fun b!2264575 () Bool)

(assert (=> b!2264575 (= e!1450070 e!1450077)))

(declare-fun res!968018 () Bool)

(assert (=> b!2264575 (=> (not res!968018) (not e!1450077))))

(assert (=> b!2264575 (= res!968018 e!1450060)))

(declare-fun res!968020 () Bool)

(assert (=> b!2264575 (=> res!968020 e!1450060)))

(assert (=> b!2264575 (= res!968020 lt!841448)))

(declare-fun isEmpty!15218 (List!26994) Bool)

(assert (=> b!2264575 (= lt!841448 (isEmpty!15218 tokens!456))))

(declare-fun b!2264576 () Bool)

(declare-fun e!1450072 () Bool)

(declare-fun e!1450063 () Bool)

(declare-fun tp!716393 () Bool)

(assert (=> b!2264576 (= e!1450072 (and e!1450063 tp!716393))))

(declare-fun res!968027 () Bool)

(assert (=> start!221232 (=> (not res!968027) (not e!1450076))))

(get-info :version)

(assert (=> start!221232 (= res!968027 ((_ is Lexer!3876) thiss!16613))))

(assert (=> start!221232 e!1450076))

(assert (=> start!221232 true))

(declare-fun e!1450066 () Bool)

(assert (=> start!221232 e!1450066))

(assert (=> start!221232 e!1450062))

(assert (=> start!221232 e!1450075))

(declare-fun e!1450080 () Bool)

(assert (=> start!221232 e!1450080))

(assert (=> start!221232 e!1450072))

(assert (=> start!221232 e!1450073))

(declare-fun e!1450065 () Bool)

(assert (=> start!221232 e!1450065))

(declare-fun b!2264577 () Bool)

(declare-fun e!1450056 () Bool)

(assert (=> b!2264577 (= e!1450056 e!1450071)))

(declare-fun res!968021 () Bool)

(assert (=> b!2264577 (=> res!968021 e!1450071)))

(assert (=> b!2264577 (= res!968021 ((_ is Nil!26900) tokens!456))))

(declare-fun lt!841442 () Unit!39844)

(declare-fun e!1450061 () Unit!39844)

(assert (=> b!2264577 (= lt!841442 e!1450061)))

(declare-fun c!359729 () Bool)

(declare-fun lt!841441 () Int)

(declare-fun lt!841456 () Int)

(assert (=> b!2264577 (= c!359729 (= lt!841441 lt!841456))))

(declare-fun b!2264578 () Bool)

(declare-fun tp!716407 () Bool)

(assert (=> b!2264578 (= e!1450066 (and tp_is_empty!10479 tp!716407))))

(declare-fun b!2264579 () Bool)

(declare-fun res!968032 () Bool)

(assert (=> b!2264579 (=> (not res!968032) (not e!1450076))))

(declare-fun rulesInvariant!3380 (LexerInterface!3878 List!26993) Bool)

(assert (=> b!2264579 (= res!968032 (rulesInvariant!3380 thiss!16613 rules!1750))))

(declare-fun b!2264580 () Bool)

(assert (=> b!2264580 (= e!1450068 e!1450059)))

(declare-fun res!968015 () Bool)

(assert (=> b!2264580 (=> res!968015 e!1450059)))

(assert (=> b!2264580 (= res!968015 (not (isPrefix!2271 lt!841446 input!1722)))))

(assert (=> b!2264580 (= lt!841444 (Some!5258 (tuple2!26519 lt!841461 (_2!15769 lt!841458))))))

(declare-fun maxPrefixOneRule!1346 (LexerInterface!3878 Rule!8362 List!26992) Option!5259)

(assert (=> b!2264580 (= lt!841444 (maxPrefixOneRule!1346 thiss!16613 r!2363 input!1722))))

(declare-fun apply!6585 (TokenValueInjection!8426 BalanceConc!17148) TokenValue!4443)

(assert (=> b!2264580 (= lt!841461 (Token!8041 (apply!6585 (transformation!4281 r!2363) lt!841449) r!2363 lt!841464 lt!841446))))

(assert (=> b!2264580 (= lt!841449 (seqFromList!2985 lt!841446))))

(declare-fun lt!841463 () Unit!39844)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!571 (LexerInterface!3878 List!26993 List!26992 List!26992 List!26992 Rule!8362) Unit!39844)

(assert (=> b!2264580 (= lt!841463 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!571 thiss!16613 rules!1750 lt!841446 input!1722 (_2!15769 lt!841458) r!2363))))

(declare-fun b!2264581 () Bool)

(declare-fun tp!716406 () Bool)

(assert (=> b!2264581 (= e!1450080 (and tp_is_empty!10479 tp!716406))))

(declare-fun b!2264582 () Bool)

(assert (=> b!2264582 (= e!1450057 e!1450056)))

(declare-fun res!968029 () Bool)

(assert (=> b!2264582 (=> res!968029 e!1450056)))

(assert (=> b!2264582 (= res!968029 (> lt!841441 lt!841456))))

(declare-fun getIndex!302 (List!26993 Rule!8362) Int)

(assert (=> b!2264582 (= lt!841456 (getIndex!302 rules!1750 otherR!12))))

(assert (=> b!2264582 (= lt!841441 (getIndex!302 rules!1750 r!2363))))

(assert (=> b!2264582 (ruleValid!1373 thiss!16613 otherR!12)))

(declare-fun lt!841450 () Unit!39844)

(assert (=> b!2264582 (= lt!841450 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!780 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2264583 () Bool)

(declare-fun Unit!39846 () Unit!39844)

(assert (=> b!2264583 (= e!1450061 Unit!39846)))

(declare-fun b!2264584 () Bool)

(declare-fun tp!716399 () Bool)

(declare-fun inv!36446 (Token!8040) Bool)

(assert (=> b!2264584 (= e!1450065 (and (inv!36446 (h!32301 tokens!456)) e!1450067 tp!716399))))

(declare-fun tp!716402 () Bool)

(declare-fun e!1450052 () Bool)

(declare-fun b!2264585 () Bool)

(assert (=> b!2264585 (= e!1450063 (and tp!716402 (inv!36442 (tag!4771 (h!32300 rules!1750))) (inv!36445 (transformation!4281 (h!32300 rules!1750))) e!1450052))))

(assert (=> b!2264586 (= e!1450058 (and tp!716405 tp!716404))))

(declare-fun b!2264587 () Bool)

(declare-fun Unit!39847 () Unit!39844)

(assert (=> b!2264587 (= e!1450061 Unit!39847)))

(declare-fun lt!841451 () Unit!39844)

(declare-fun lemmaSameIndexThenSameElement!148 (List!26993 Rule!8362 Rule!8362) Unit!39844)

(assert (=> b!2264587 (= lt!841451 (lemmaSameIndexThenSameElement!148 rules!1750 r!2363 otherR!12))))

(assert (=> b!2264587 false))

(assert (=> b!2264588 (= e!1450052 (and tp!716391 tp!716392))))

(assert (= (and start!221232 res!968027) b!2264574))

(assert (= (and b!2264574 res!968028) b!2264579))

(assert (= (and b!2264579 res!968032) b!2264569))

(assert (= (and b!2264569 res!968034) b!2264561))

(assert (= (and b!2264561 res!968031) b!2264565))

(assert (= (and b!2264565 res!968019) b!2264575))

(assert (= (and b!2264575 (not res!968020)) b!2264554))

(assert (= (and b!2264575 res!968018) b!2264563))

(assert (= (and b!2264563 (not res!968016)) b!2264568))

(assert (= (and b!2264563 res!968017) b!2264564))

(assert (= (and b!2264564 res!968023) b!2264571))

(assert (= (and b!2264571 res!968030) b!2264553))

(assert (= (and b!2264553 res!968033) b!2264557))

(assert (= (and b!2264553 (not res!968022)) b!2264582))

(assert (= (and b!2264582 (not res!968029)) b!2264577))

(assert (= (and b!2264577 c!359729) b!2264587))

(assert (= (and b!2264577 (not c!359729)) b!2264583))

(assert (= (and b!2264577 (not res!968021)) b!2264558))

(assert (= (and b!2264558 (not res!968025)) b!2264580))

(assert (= (and b!2264580 (not res!968015)) b!2264560))

(assert (= (and b!2264560 (not res!968026)) b!2264562))

(assert (= (and b!2264562 (not res!968024)) b!2264567))

(assert (= (and start!221232 ((_ is Cons!26898) input!1722)) b!2264578))

(assert (= b!2264573 b!2264555))

(assert (= start!221232 b!2264573))

(assert (= (and start!221232 ((_ is Cons!26898) suffix!886)) b!2264570))

(assert (= (and start!221232 ((_ is Cons!26898) otherP!12)) b!2264581))

(assert (= b!2264585 b!2264588))

(assert (= b!2264576 b!2264585))

(assert (= (and start!221232 ((_ is Cons!26899) rules!1750)) b!2264576))

(assert (= b!2264559 b!2264556))

(assert (= start!221232 b!2264559))

(assert (= b!2264566 b!2264586))

(assert (= b!2264572 b!2264566))

(assert (= b!2264584 b!2264572))

(assert (= (and start!221232 ((_ is Cons!26900) tokens!456)) b!2264584))

(declare-fun m!2693967 () Bool)

(assert (=> b!2264554 m!2693967))

(assert (=> b!2264554 m!2693967))

(declare-fun m!2693969 () Bool)

(assert (=> b!2264554 m!2693969))

(assert (=> b!2264554 m!2693969))

(declare-fun m!2693971 () Bool)

(assert (=> b!2264554 m!2693971))

(declare-fun m!2693973 () Bool)

(assert (=> b!2264554 m!2693973))

(declare-fun m!2693975 () Bool)

(assert (=> b!2264575 m!2693975))

(declare-fun m!2693977 () Bool)

(assert (=> b!2264585 m!2693977))

(declare-fun m!2693979 () Bool)

(assert (=> b!2264585 m!2693979))

(declare-fun m!2693981 () Bool)

(assert (=> b!2264569 m!2693981))

(assert (=> b!2264557 m!2693967))

(assert (=> b!2264557 m!2693967))

(assert (=> b!2264557 m!2693969))

(assert (=> b!2264557 m!2693969))

(declare-fun m!2693983 () Bool)

(assert (=> b!2264557 m!2693983))

(assert (=> b!2264557 m!2693983))

(declare-fun m!2693985 () Bool)

(assert (=> b!2264557 m!2693985))

(declare-fun m!2693987 () Bool)

(assert (=> b!2264562 m!2693987))

(declare-fun m!2693989 () Bool)

(assert (=> b!2264562 m!2693989))

(declare-fun m!2693991 () Bool)

(assert (=> b!2264562 m!2693991))

(declare-fun m!2693993 () Bool)

(assert (=> b!2264573 m!2693993))

(declare-fun m!2693995 () Bool)

(assert (=> b!2264573 m!2693995))

(declare-fun m!2693997 () Bool)

(assert (=> b!2264587 m!2693997))

(declare-fun m!2693999 () Bool)

(assert (=> b!2264564 m!2693999))

(declare-fun m!2694001 () Bool)

(assert (=> b!2264579 m!2694001))

(declare-fun m!2694003 () Bool)

(assert (=> b!2264567 m!2694003))

(declare-fun m!2694005 () Bool)

(assert (=> b!2264567 m!2694005))

(declare-fun m!2694007 () Bool)

(assert (=> b!2264572 m!2694007))

(declare-fun m!2694009 () Bool)

(assert (=> b!2264560 m!2694009))

(declare-fun m!2694011 () Bool)

(assert (=> b!2264566 m!2694011))

(declare-fun m!2694013 () Bool)

(assert (=> b!2264566 m!2694013))

(declare-fun m!2694015 () Bool)

(assert (=> b!2264574 m!2694015))

(declare-fun m!2694017 () Bool)

(assert (=> b!2264553 m!2694017))

(declare-fun m!2694019 () Bool)

(assert (=> b!2264553 m!2694019))

(declare-fun m!2694021 () Bool)

(assert (=> b!2264580 m!2694021))

(declare-fun m!2694023 () Bool)

(assert (=> b!2264580 m!2694023))

(declare-fun m!2694025 () Bool)

(assert (=> b!2264580 m!2694025))

(declare-fun m!2694027 () Bool)

(assert (=> b!2264580 m!2694027))

(declare-fun m!2694029 () Bool)

(assert (=> b!2264580 m!2694029))

(declare-fun m!2694031 () Bool)

(assert (=> b!2264565 m!2694031))

(declare-fun m!2694033 () Bool)

(assert (=> b!2264565 m!2694033))

(declare-fun m!2694035 () Bool)

(assert (=> b!2264565 m!2694035))

(assert (=> b!2264565 m!2694035))

(declare-fun m!2694037 () Bool)

(assert (=> b!2264565 m!2694037))

(declare-fun m!2694039 () Bool)

(assert (=> b!2264582 m!2694039))

(declare-fun m!2694041 () Bool)

(assert (=> b!2264582 m!2694041))

(declare-fun m!2694043 () Bool)

(assert (=> b!2264582 m!2694043))

(declare-fun m!2694045 () Bool)

(assert (=> b!2264582 m!2694045))

(declare-fun m!2694047 () Bool)

(assert (=> b!2264561 m!2694047))

(declare-fun m!2694049 () Bool)

(assert (=> b!2264584 m!2694049))

(assert (=> b!2264568 m!2693967))

(declare-fun m!2694051 () Bool)

(assert (=> b!2264558 m!2694051))

(declare-fun m!2694053 () Bool)

(assert (=> b!2264558 m!2694053))

(declare-fun m!2694055 () Bool)

(assert (=> b!2264558 m!2694055))

(assert (=> b!2264558 m!2693973))

(declare-fun m!2694057 () Bool)

(assert (=> b!2264558 m!2694057))

(declare-fun m!2694059 () Bool)

(assert (=> b!2264558 m!2694059))

(declare-fun m!2694061 () Bool)

(assert (=> b!2264558 m!2694061))

(declare-fun m!2694063 () Bool)

(assert (=> b!2264558 m!2694063))

(declare-fun m!2694065 () Bool)

(assert (=> b!2264558 m!2694065))

(declare-fun m!2694067 () Bool)

(assert (=> b!2264558 m!2694067))

(declare-fun m!2694069 () Bool)

(assert (=> b!2264558 m!2694069))

(assert (=> b!2264558 m!2694063))

(assert (=> b!2264558 m!2694059))

(declare-fun m!2694071 () Bool)

(assert (=> b!2264559 m!2694071))

(declare-fun m!2694073 () Bool)

(assert (=> b!2264559 m!2694073))

(check-sat (not b_next!67711) (not b_next!67723) (not b!2264564) b_and!178095 tp_is_empty!10479 (not b!2264575) (not b!2264584) (not b!2264557) (not b_next!67715) (not b!2264554) (not b!2264581) b_and!178101 (not b!2264574) (not b_next!67719) (not b!2264578) (not b!2264558) (not b!2264566) (not b!2264568) (not b!2264562) b_and!178103 (not b!2264572) (not b_next!67721) (not b!2264576) b_and!178091 (not b_next!67709) (not b_next!67717) b_and!178099 (not b!2264553) (not b!2264573) (not b!2264567) (not b!2264579) (not b!2264587) (not b_next!67713) (not b!2264570) b_and!178093 (not b!2264560) (not b!2264580) b_and!178089 (not b!2264559) (not b!2264582) b_and!178097 (not b!2264561) (not b!2264585) (not b!2264569) (not b!2264565))
(check-sat (not b_next!67711) (not b_next!67723) b_and!178101 (not b_next!67719) b_and!178103 b_and!178095 b_and!178099 (not b_next!67713) b_and!178093 b_and!178089 (not b_next!67715) b_and!178097 (not b_next!67721) b_and!178091 (not b_next!67709) (not b_next!67717))
