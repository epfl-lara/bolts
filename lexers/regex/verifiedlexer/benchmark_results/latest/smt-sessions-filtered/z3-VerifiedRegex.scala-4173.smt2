; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225392 () Bool)

(assert start!225392)

(declare-fun b!2295013 () Bool)

(declare-fun b_free!69101 () Bool)

(declare-fun b_next!69805 () Bool)

(assert (=> b!2295013 (= b_free!69101 (not b_next!69805))))

(declare-fun tp!727871 () Bool)

(declare-fun b_and!182529 () Bool)

(assert (=> b!2295013 (= tp!727871 b_and!182529)))

(declare-fun b_free!69103 () Bool)

(declare-fun b_next!69807 () Bool)

(assert (=> b!2295013 (= b_free!69103 (not b_next!69807))))

(declare-fun tp!727863 () Bool)

(declare-fun b_and!182531 () Bool)

(assert (=> b!2295013 (= tp!727863 b_and!182531)))

(declare-fun b!2295026 () Bool)

(declare-fun b_free!69105 () Bool)

(declare-fun b_next!69809 () Bool)

(assert (=> b!2295026 (= b_free!69105 (not b_next!69809))))

(declare-fun tp!727864 () Bool)

(declare-fun b_and!182533 () Bool)

(assert (=> b!2295026 (= tp!727864 b_and!182533)))

(declare-fun b_free!69107 () Bool)

(declare-fun b_next!69811 () Bool)

(assert (=> b!2295026 (= b_free!69107 (not b_next!69811))))

(declare-fun tp!727865 () Bool)

(declare-fun b_and!182535 () Bool)

(assert (=> b!2295026 (= tp!727865 b_and!182535)))

(declare-fun b!2295030 () Bool)

(declare-fun b_free!69109 () Bool)

(declare-fun b_next!69813 () Bool)

(assert (=> b!2295030 (= b_free!69109 (not b_next!69813))))

(declare-fun tp!727868 () Bool)

(declare-fun b_and!182537 () Bool)

(assert (=> b!2295030 (= tp!727868 b_and!182537)))

(declare-fun b_free!69111 () Bool)

(declare-fun b_next!69815 () Bool)

(assert (=> b!2295030 (= b_free!69111 (not b_next!69815))))

(declare-fun tp!727858 () Bool)

(declare-fun b_and!182539 () Bool)

(assert (=> b!2295030 (= tp!727858 b_and!182539)))

(declare-fun b!2295042 () Bool)

(declare-fun b_free!69113 () Bool)

(declare-fun b_next!69817 () Bool)

(assert (=> b!2295042 (= b_free!69113 (not b_next!69817))))

(declare-fun tp!727856 () Bool)

(declare-fun b_and!182541 () Bool)

(assert (=> b!2295042 (= tp!727856 b_and!182541)))

(declare-fun b_free!69115 () Bool)

(declare-fun b_next!69819 () Bool)

(assert (=> b!2295042 (= b_free!69115 (not b_next!69819))))

(declare-fun tp!727859 () Bool)

(declare-fun b_and!182543 () Bool)

(assert (=> b!2295042 (= tp!727859 b_and!182543)))

(declare-fun b!2295012 () Bool)

(declare-fun e!1470696 () Bool)

(declare-fun tp_is_empty!10671 () Bool)

(declare-fun tp!727870 () Bool)

(assert (=> b!2295012 (= e!1470696 (and tp_is_empty!10671 tp!727870))))

(declare-fun e!1470698 () Bool)

(assert (=> b!2295013 (= e!1470698 (and tp!727871 tp!727863))))

(declare-fun b!2295014 () Bool)

(declare-fun e!1470707 () Bool)

(declare-datatypes ((List!27423 0))(
  ( (Nil!27329) (Cons!27329 (h!32730 (_ BitVec 16)) (t!205207 List!27423)) )
))
(declare-datatypes ((TokenValue!4539 0))(
  ( (FloatLiteralValue!9078 (text!32218 List!27423)) (TokenValueExt!4538 (__x!18138 Int)) (Broken!22695 (value!138538 List!27423)) (Object!4632) (End!4539) (Def!4539) (Underscore!4539) (Match!4539) (Else!4539) (Error!4539) (Case!4539) (If!4539) (Extends!4539) (Abstract!4539) (Class!4539) (Val!4539) (DelimiterValue!9078 (del!4599 List!27423)) (KeywordValue!4545 (value!138539 List!27423)) (CommentValue!9078 (value!138540 List!27423)) (WhitespaceValue!9078 (value!138541 List!27423)) (IndentationValue!4539 (value!138542 List!27423)) (String!29798) (Int32!4539) (Broken!22696 (value!138543 List!27423)) (Boolean!4540) (Unit!40217) (OperatorValue!4542 (op!4599 List!27423)) (IdentifierValue!9078 (value!138544 List!27423)) (IdentifierValue!9079 (value!138545 List!27423)) (WhitespaceValue!9079 (value!138546 List!27423)) (True!9078) (False!9078) (Broken!22697 (value!138547 List!27423)) (Broken!22698 (value!138548 List!27423)) (True!9079) (RightBrace!4539) (RightBracket!4539) (Colon!4539) (Null!4539) (Comma!4539) (LeftBracket!4539) (False!9079) (LeftBrace!4539) (ImaginaryLiteralValue!4539 (text!32219 List!27423)) (StringLiteralValue!13617 (value!138549 List!27423)) (EOFValue!4539 (value!138550 List!27423)) (IdentValue!4539 (value!138551 List!27423)) (DelimiterValue!9079 (value!138552 List!27423)) (DedentValue!4539 (value!138553 List!27423)) (NewLineValue!4539 (value!138554 List!27423)) (IntegerValue!13617 (value!138555 (_ BitVec 32)) (text!32220 List!27423)) (IntegerValue!13618 (value!138556 Int) (text!32221 List!27423)) (Times!4539) (Or!4539) (Equal!4539) (Minus!4539) (Broken!22699 (value!138557 List!27423)) (And!4539) (Div!4539) (LessEqual!4539) (Mod!4539) (Concat!11264) (Not!4539) (Plus!4539) (SpaceValue!4539 (value!138558 List!27423)) (IntegerValue!13619 (value!138559 Int) (text!32222 List!27423)) (StringLiteralValue!13618 (text!32223 List!27423)) (FloatLiteralValue!9079 (text!32224 List!27423)) (BytesLiteralValue!4539 (value!138560 List!27423)) (CommentValue!9079 (value!138561 List!27423)) (StringLiteralValue!13619 (value!138562 List!27423)) (ErrorTokenValue!4539 (msg!4600 List!27423)) )
))
(declare-datatypes ((C!13596 0))(
  ( (C!13597 (val!7846 Int)) )
))
(declare-datatypes ((List!27424 0))(
  ( (Nil!27330) (Cons!27330 (h!32731 C!13596) (t!205208 List!27424)) )
))
(declare-datatypes ((IArray!17809 0))(
  ( (IArray!17810 (innerList!8962 List!27424)) )
))
(declare-datatypes ((Conc!8902 0))(
  ( (Node!8902 (left!20715 Conc!8902) (right!21045 Conc!8902) (csize!18034 Int) (cheight!9113 Int)) (Leaf!13076 (xs!11844 IArray!17809) (csize!18035 Int)) (Empty!8902) )
))
(declare-datatypes ((BalanceConc!17532 0))(
  ( (BalanceConc!17533 (c!363882 Conc!8902)) )
))
(declare-datatypes ((Regex!6725 0))(
  ( (ElementMatch!6725 (c!363883 C!13596)) (Concat!11265 (regOne!13962 Regex!6725) (regTwo!13962 Regex!6725)) (EmptyExpr!6725) (Star!6725 (reg!7054 Regex!6725)) (EmptyLang!6725) (Union!6725 (regOne!13963 Regex!6725) (regTwo!13963 Regex!6725)) )
))
(declare-datatypes ((String!29799 0))(
  ( (String!29800 (value!138563 String)) )
))
(declare-datatypes ((TokenValueInjection!8618 0))(
  ( (TokenValueInjection!8619 (toValue!6175 Int) (toChars!6034 Int)) )
))
(declare-datatypes ((Rule!8554 0))(
  ( (Rule!8555 (regex!4377 Regex!6725) (tag!4867 String!29799) (isSeparator!4377 Bool) (transformation!4377 TokenValueInjection!8618)) )
))
(declare-datatypes ((Token!8232 0))(
  ( (Token!8233 (value!138564 TokenValue!4539) (rule!6715 Rule!8554) (size!21528 Int) (originalCharacters!5147 List!27424)) )
))
(declare-datatypes ((List!27425 0))(
  ( (Nil!27331) (Cons!27331 (h!32732 Token!8232) (t!205209 List!27425)) )
))
(declare-fun tokens!456 () List!27425)

(declare-fun otherP!12 () List!27424)

(declare-fun size!21529 (BalanceConc!17532) Int)

(declare-fun charsOf!2765 (Token!8232) BalanceConc!17532)

(declare-fun head!5010 (List!27425) Token!8232)

(declare-fun size!21530 (List!27424) Int)

(assert (=> b!2295014 (= e!1470707 (<= (size!21529 (charsOf!2765 (head!5010 tokens!456))) (size!21530 otherP!12)))))

(declare-fun b!2295015 () Bool)

(declare-fun e!1470703 () Bool)

(declare-fun tp!727869 () Bool)

(declare-fun e!1470705 () Bool)

(declare-fun inv!36940 (Token!8232) Bool)

(assert (=> b!2295015 (= e!1470703 (and (inv!36940 (h!32732 tokens!456)) e!1470705 tp!727869))))

(declare-fun b!2295016 () Bool)

(declare-fun res!981286 () Bool)

(declare-fun e!1470687 () Bool)

(assert (=> b!2295016 (=> res!981286 e!1470687)))

(declare-datatypes ((LexerInterface!3974 0))(
  ( (LexerInterfaceExt!3971 (__x!18139 Int)) (Lexer!3972) )
))
(declare-fun thiss!16613 () LexerInterface!3974)

(declare-datatypes ((List!27426 0))(
  ( (Nil!27332) (Cons!27332 (h!32733 Rule!8554) (t!205210 List!27426)) )
))
(declare-fun rules!1750 () List!27426)

(declare-fun rulesValidInductive!1545 (LexerInterface!3974 List!27426) Bool)

(assert (=> b!2295016 (= res!981286 (not (rulesValidInductive!1545 thiss!16613 rules!1750)))))

(declare-fun b!2295017 () Bool)

(declare-datatypes ((Unit!40218 0))(
  ( (Unit!40219) )
))
(declare-fun e!1470708 () Unit!40218)

(declare-fun Unit!40220 () Unit!40218)

(assert (=> b!2295017 (= e!1470708 Unit!40220)))

(declare-fun b!2295018 () Bool)

(declare-fun e!1470695 () Bool)

(declare-fun e!1470706 () Bool)

(assert (=> b!2295018 (= e!1470695 e!1470706)))

(declare-fun res!981284 () Bool)

(assert (=> b!2295018 (=> (not res!981284) (not e!1470706))))

(assert (=> b!2295018 (= res!981284 e!1470707)))

(declare-fun res!981287 () Bool)

(assert (=> b!2295018 (=> res!981287 e!1470707)))

(declare-fun lt!851521 () Bool)

(assert (=> b!2295018 (= res!981287 lt!851521)))

(declare-fun isEmpty!15574 (List!27425) Bool)

(assert (=> b!2295018 (= lt!851521 (isEmpty!15574 tokens!456))))

(declare-fun b!2295019 () Bool)

(declare-fun e!1470704 () Bool)

(assert (=> b!2295019 (= e!1470706 (not e!1470704))))

(declare-fun res!981291 () Bool)

(assert (=> b!2295019 (=> res!981291 e!1470704)))

(declare-fun e!1470702 () Bool)

(assert (=> b!2295019 (= res!981291 e!1470702)))

(declare-fun res!981283 () Bool)

(assert (=> b!2295019 (=> (not res!981283) (not e!1470702))))

(assert (=> b!2295019 (= res!981283 (not lt!851521))))

(declare-fun r!2363 () Rule!8554)

(declare-fun ruleValid!1467 (LexerInterface!3974 Rule!8554) Bool)

(assert (=> b!2295019 (ruleValid!1467 thiss!16613 r!2363)))

(declare-fun lt!851519 () Unit!40218)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!872 (LexerInterface!3974 Rule!8554 List!27426) Unit!40218)

(assert (=> b!2295019 (= lt!851519 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!872 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2295020 () Bool)

(declare-fun e!1470693 () Bool)

(declare-fun tp!727867 () Bool)

(declare-fun inv!21 (TokenValue!4539) Bool)

(assert (=> b!2295020 (= e!1470705 (and (inv!21 (value!138564 (h!32732 tokens!456))) e!1470693 tp!727867))))

(declare-fun b!2295021 () Bool)

(declare-fun res!981294 () Bool)

(declare-fun e!1470715 () Bool)

(assert (=> b!2295021 (=> (not res!981294) (not e!1470715))))

(declare-fun otherR!12 () Rule!8554)

(declare-fun contains!4757 (List!27426 Rule!8554) Bool)

(assert (=> b!2295021 (= res!981294 (contains!4757 rules!1750 otherR!12))))

(declare-fun b!2295023 () Bool)

(declare-fun res!981293 () Bool)

(assert (=> b!2295023 (=> (not res!981293) (not e!1470715))))

(assert (=> b!2295023 (= res!981293 (contains!4757 rules!1750 r!2363))))

(declare-fun b!2295024 () Bool)

(assert (=> b!2295024 (= e!1470715 e!1470695)))

(declare-fun res!981285 () Bool)

(assert (=> b!2295024 (=> (not res!981285) (not e!1470695))))

(declare-datatypes ((IArray!17811 0))(
  ( (IArray!17812 (innerList!8963 List!27425)) )
))
(declare-datatypes ((Conc!8903 0))(
  ( (Node!8903 (left!20716 Conc!8903) (right!21046 Conc!8903) (csize!18036 Int) (cheight!9114 Int)) (Leaf!13077 (xs!11845 IArray!17811) (csize!18037 Int)) (Empty!8903) )
))
(declare-datatypes ((BalanceConc!17534 0))(
  ( (BalanceConc!17535 (c!363884 Conc!8903)) )
))
(declare-datatypes ((tuple2!27166 0))(
  ( (tuple2!27167 (_1!16093 BalanceConc!17534) (_2!16093 BalanceConc!17532)) )
))
(declare-fun lt!851517 () tuple2!27166)

(declare-fun suffix!886 () List!27424)

(declare-datatypes ((tuple2!27168 0))(
  ( (tuple2!27169 (_1!16094 List!27425) (_2!16094 List!27424)) )
))
(declare-fun list!10724 (BalanceConc!17534) List!27425)

(declare-fun list!10725 (BalanceConc!17532) List!27424)

(assert (=> b!2295024 (= res!981285 (= (tuple2!27169 (list!10724 (_1!16093 lt!851517)) (list!10725 (_2!16093 lt!851517))) (tuple2!27169 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27424)

(declare-fun lex!1813 (LexerInterface!3974 List!27426 BalanceConc!17532) tuple2!27166)

(declare-fun seqFromList!3081 (List!27424) BalanceConc!17532)

(assert (=> b!2295024 (= lt!851517 (lex!1813 thiss!16613 rules!1750 (seqFromList!3081 input!1722)))))

(declare-fun b!2295025 () Bool)

(declare-fun res!981292 () Bool)

(assert (=> b!2295025 (=> (not res!981292) (not e!1470706))))

(declare-fun e!1470694 () Bool)

(assert (=> b!2295025 (= res!981292 e!1470694)))

(declare-fun res!981280 () Bool)

(assert (=> b!2295025 (=> res!981280 e!1470694)))

(assert (=> b!2295025 (= res!981280 lt!851521)))

(declare-fun e!1470688 () Bool)

(assert (=> b!2295026 (= e!1470688 (and tp!727864 tp!727865))))

(declare-fun b!2295027 () Bool)

(declare-fun res!981295 () Bool)

(assert (=> b!2295027 (=> (not res!981295) (not e!1470715))))

(declare-fun rulesInvariant!3476 (LexerInterface!3974 List!27426) Bool)

(assert (=> b!2295027 (= res!981295 (rulesInvariant!3476 thiss!16613 rules!1750))))

(declare-fun b!2295028 () Bool)

(declare-fun res!981290 () Bool)

(assert (=> b!2295028 (=> (not res!981290) (not e!1470715))))

(declare-fun isEmpty!15575 (List!27426) Bool)

(assert (=> b!2295028 (= res!981290 (not (isEmpty!15575 rules!1750)))))

(declare-fun b!2295029 () Bool)

(declare-fun e!1470713 () Bool)

(declare-fun tp!727857 () Bool)

(declare-fun inv!36937 (String!29799) Bool)

(declare-fun inv!36941 (TokenValueInjection!8618) Bool)

(assert (=> b!2295029 (= e!1470713 (and tp!727857 (inv!36937 (tag!4867 otherR!12)) (inv!36941 (transformation!4377 otherR!12)) e!1470698))))

(declare-fun e!1470714 () Bool)

(assert (=> b!2295030 (= e!1470714 (and tp!727868 tp!727858))))

(declare-fun b!2295031 () Bool)

(declare-fun e!1470697 () Bool)

(declare-fun tp!727861 () Bool)

(assert (=> b!2295031 (= e!1470697 (and tp_is_empty!10671 tp!727861))))

(declare-fun b!2295032 () Bool)

(declare-fun matchR!2982 (Regex!6725 List!27424) Bool)

(assert (=> b!2295032 (= e!1470702 (not (matchR!2982 (regex!4377 r!2363) (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(declare-fun b!2295033 () Bool)

(declare-fun tp!727862 () Bool)

(declare-fun e!1470701 () Bool)

(assert (=> b!2295033 (= e!1470693 (and tp!727862 (inv!36937 (tag!4867 (rule!6715 (h!32732 tokens!456)))) (inv!36941 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) e!1470701))))

(declare-fun b!2295034 () Bool)

(declare-fun res!981281 () Bool)

(assert (=> b!2295034 (=> (not res!981281) (not e!1470706))))

(declare-fun isPrefix!2367 (List!27424 List!27424) Bool)

(assert (=> b!2295034 (= res!981281 (isPrefix!2367 otherP!12 input!1722))))

(declare-fun b!2295035 () Bool)

(declare-fun e!1470699 () Bool)

(assert (=> b!2295035 (= e!1470704 e!1470699)))

(declare-fun res!981279 () Bool)

(assert (=> b!2295035 (=> res!981279 e!1470699)))

(declare-fun lt!851520 () Int)

(declare-fun lt!851515 () Int)

(assert (=> b!2295035 (= res!981279 (> lt!851520 lt!851515))))

(declare-fun getIndex!390 (List!27426 Rule!8554) Int)

(assert (=> b!2295035 (= lt!851515 (getIndex!390 rules!1750 otherR!12))))

(assert (=> b!2295035 (= lt!851520 (getIndex!390 rules!1750 r!2363))))

(assert (=> b!2295035 (ruleValid!1467 thiss!16613 otherR!12)))

(declare-fun lt!851518 () Unit!40218)

(assert (=> b!2295035 (= lt!851518 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!872 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1470690 () Bool)

(declare-fun tp!727860 () Bool)

(declare-fun b!2295036 () Bool)

(assert (=> b!2295036 (= e!1470690 (and tp!727860 (inv!36937 (tag!4867 r!2363)) (inv!36941 (transformation!4377 r!2363)) e!1470714))))

(declare-fun b!2295037 () Bool)

(declare-fun res!981289 () Bool)

(assert (=> b!2295037 (=> (not res!981289) (not e!1470706))))

(assert (=> b!2295037 (= res!981289 (not (= r!2363 otherR!12)))))

(declare-fun b!2295038 () Bool)

(declare-fun e!1470710 () Bool)

(declare-fun e!1470700 () Bool)

(declare-fun tp!727855 () Bool)

(assert (=> b!2295038 (= e!1470710 (and e!1470700 tp!727855))))

(declare-fun b!2295039 () Bool)

(assert (=> b!2295039 (= e!1470694 (= (rule!6715 (head!5010 tokens!456)) r!2363))))

(declare-fun b!2295040 () Bool)

(declare-datatypes ((tuple2!27170 0))(
  ( (tuple2!27171 (_1!16095 Token!8232) (_2!16095 List!27424)) )
))
(declare-datatypes ((Option!5367 0))(
  ( (None!5366) (Some!5366 (v!30452 tuple2!27170)) )
))
(declare-fun isEmpty!15576 (Option!5367) Bool)

(declare-fun maxPrefix!2234 (LexerInterface!3974 List!27426 List!27424) Option!5367)

(assert (=> b!2295040 (= e!1470687 (isEmpty!15576 (maxPrefix!2234 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2295041 () Bool)

(declare-fun e!1470691 () Bool)

(declare-fun tp!727866 () Bool)

(assert (=> b!2295041 (= e!1470691 (and tp_is_empty!10671 tp!727866))))

(declare-fun res!981282 () Bool)

(assert (=> start!225392 (=> (not res!981282) (not e!1470715))))

(get-info :version)

(assert (=> start!225392 (= res!981282 ((_ is Lexer!3972) thiss!16613))))

(assert (=> start!225392 e!1470715))

(assert (=> start!225392 true))

(assert (=> start!225392 e!1470696))

(assert (=> start!225392 e!1470713))

(assert (=> start!225392 e!1470697))

(assert (=> start!225392 e!1470691))

(assert (=> start!225392 e!1470710))

(assert (=> start!225392 e!1470690))

(assert (=> start!225392 e!1470703))

(declare-fun b!2295022 () Bool)

(assert (=> b!2295022 (= e!1470699 e!1470687)))

(declare-fun res!981288 () Bool)

(assert (=> b!2295022 (=> res!981288 e!1470687)))

(assert (=> b!2295022 (= res!981288 (not ((_ is Nil!27331) tokens!456)))))

(declare-fun lt!851516 () Unit!40218)

(assert (=> b!2295022 (= lt!851516 e!1470708)))

(declare-fun c!363881 () Bool)

(assert (=> b!2295022 (= c!363881 (= lt!851520 lt!851515))))

(assert (=> b!2295042 (= e!1470701 (and tp!727856 tp!727859))))

(declare-fun b!2295043 () Bool)

(declare-fun Unit!40221 () Unit!40218)

(assert (=> b!2295043 (= e!1470708 Unit!40221)))

(declare-fun lt!851522 () Unit!40218)

(declare-fun lemmaSameIndexThenSameElement!170 (List!27426 Rule!8554 Rule!8554) Unit!40218)

(assert (=> b!2295043 (= lt!851522 (lemmaSameIndexThenSameElement!170 rules!1750 r!2363 otherR!12))))

(assert (=> b!2295043 false))

(declare-fun tp!727854 () Bool)

(declare-fun b!2295044 () Bool)

(assert (=> b!2295044 (= e!1470700 (and tp!727854 (inv!36937 (tag!4867 (h!32733 rules!1750))) (inv!36941 (transformation!4377 (h!32733 rules!1750))) e!1470688))))

(assert (= (and start!225392 res!981282) b!2295028))

(assert (= (and b!2295028 res!981290) b!2295027))

(assert (= (and b!2295027 res!981295) b!2295023))

(assert (= (and b!2295023 res!981293) b!2295021))

(assert (= (and b!2295021 res!981294) b!2295024))

(assert (= (and b!2295024 res!981285) b!2295018))

(assert (= (and b!2295018 (not res!981287)) b!2295014))

(assert (= (and b!2295018 res!981284) b!2295025))

(assert (= (and b!2295025 (not res!981280)) b!2295039))

(assert (= (and b!2295025 res!981292) b!2295034))

(assert (= (and b!2295034 res!981281) b!2295037))

(assert (= (and b!2295037 res!981289) b!2295019))

(assert (= (and b!2295019 res!981283) b!2295032))

(assert (= (and b!2295019 (not res!981291)) b!2295035))

(assert (= (and b!2295035 (not res!981279)) b!2295022))

(assert (= (and b!2295022 c!363881) b!2295043))

(assert (= (and b!2295022 (not c!363881)) b!2295017))

(assert (= (and b!2295022 (not res!981288)) b!2295016))

(assert (= (and b!2295016 (not res!981286)) b!2295040))

(assert (= (and start!225392 ((_ is Cons!27330) input!1722)) b!2295012))

(assert (= b!2295029 b!2295013))

(assert (= start!225392 b!2295029))

(assert (= (and start!225392 ((_ is Cons!27330) suffix!886)) b!2295031))

(assert (= (and start!225392 ((_ is Cons!27330) otherP!12)) b!2295041))

(assert (= b!2295044 b!2295026))

(assert (= b!2295038 b!2295044))

(assert (= (and start!225392 ((_ is Cons!27332) rules!1750)) b!2295038))

(assert (= b!2295036 b!2295030))

(assert (= start!225392 b!2295036))

(assert (= b!2295033 b!2295042))

(assert (= b!2295020 b!2295033))

(assert (= b!2295015 b!2295020))

(assert (= (and start!225392 ((_ is Cons!27331) tokens!456)) b!2295015))

(declare-fun m!2722555 () Bool)

(assert (=> b!2295033 m!2722555))

(declare-fun m!2722557 () Bool)

(assert (=> b!2295033 m!2722557))

(declare-fun m!2722559 () Bool)

(assert (=> b!2295044 m!2722559))

(declare-fun m!2722561 () Bool)

(assert (=> b!2295044 m!2722561))

(declare-fun m!2722563 () Bool)

(assert (=> b!2295023 m!2722563))

(declare-fun m!2722565 () Bool)

(assert (=> b!2295040 m!2722565))

(assert (=> b!2295040 m!2722565))

(declare-fun m!2722567 () Bool)

(assert (=> b!2295040 m!2722567))

(declare-fun m!2722569 () Bool)

(assert (=> b!2295024 m!2722569))

(declare-fun m!2722571 () Bool)

(assert (=> b!2295024 m!2722571))

(declare-fun m!2722573 () Bool)

(assert (=> b!2295024 m!2722573))

(assert (=> b!2295024 m!2722573))

(declare-fun m!2722575 () Bool)

(assert (=> b!2295024 m!2722575))

(declare-fun m!2722577 () Bool)

(assert (=> b!2295035 m!2722577))

(declare-fun m!2722579 () Bool)

(assert (=> b!2295035 m!2722579))

(declare-fun m!2722581 () Bool)

(assert (=> b!2295035 m!2722581))

(declare-fun m!2722583 () Bool)

(assert (=> b!2295035 m!2722583))

(declare-fun m!2722585 () Bool)

(assert (=> b!2295014 m!2722585))

(assert (=> b!2295014 m!2722585))

(declare-fun m!2722587 () Bool)

(assert (=> b!2295014 m!2722587))

(assert (=> b!2295014 m!2722587))

(declare-fun m!2722589 () Bool)

(assert (=> b!2295014 m!2722589))

(declare-fun m!2722591 () Bool)

(assert (=> b!2295014 m!2722591))

(declare-fun m!2722593 () Bool)

(assert (=> b!2295028 m!2722593))

(declare-fun m!2722595 () Bool)

(assert (=> b!2295015 m!2722595))

(declare-fun m!2722597 () Bool)

(assert (=> b!2295034 m!2722597))

(declare-fun m!2722599 () Bool)

(assert (=> b!2295016 m!2722599))

(declare-fun m!2722601 () Bool)

(assert (=> b!2295043 m!2722601))

(declare-fun m!2722603 () Bool)

(assert (=> b!2295020 m!2722603))

(assert (=> b!2295032 m!2722585))

(assert (=> b!2295032 m!2722585))

(assert (=> b!2295032 m!2722587))

(assert (=> b!2295032 m!2722587))

(declare-fun m!2722605 () Bool)

(assert (=> b!2295032 m!2722605))

(assert (=> b!2295032 m!2722605))

(declare-fun m!2722607 () Bool)

(assert (=> b!2295032 m!2722607))

(declare-fun m!2722609 () Bool)

(assert (=> b!2295021 m!2722609))

(declare-fun m!2722611 () Bool)

(assert (=> b!2295029 m!2722611))

(declare-fun m!2722613 () Bool)

(assert (=> b!2295029 m!2722613))

(declare-fun m!2722615 () Bool)

(assert (=> b!2295027 m!2722615))

(declare-fun m!2722617 () Bool)

(assert (=> b!2295018 m!2722617))

(declare-fun m!2722619 () Bool)

(assert (=> b!2295019 m!2722619))

(declare-fun m!2722621 () Bool)

(assert (=> b!2295019 m!2722621))

(declare-fun m!2722623 () Bool)

(assert (=> b!2295036 m!2722623))

(declare-fun m!2722625 () Bool)

(assert (=> b!2295036 m!2722625))

(assert (=> b!2295039 m!2722585))

(check-sat (not b_next!69813) b_and!182543 (not b!2295024) b_and!182529 (not b!2295033) (not b!2295019) (not b!2295036) (not b!2295016) (not b!2295018) (not b_next!69817) (not b!2295032) b_and!182539 (not b!2295043) (not b!2295035) (not b!2295040) (not b!2295014) b_and!182541 b_and!182533 (not b!2295031) (not b!2295034) (not b!2295020) (not b_next!69819) (not b!2295023) (not b!2295029) (not b!2295028) (not b_next!69807) (not b_next!69805) (not b!2295041) tp_is_empty!10671 (not b!2295038) (not b!2295012) (not b_next!69811) (not b!2295021) b_and!182531 (not b!2295044) (not b_next!69815) (not b!2295039) (not b!2295027) b_and!182537 (not b!2295015) b_and!182535 (not b_next!69809))
(check-sat (not b_next!69813) b_and!182543 b_and!182529 (not b_next!69819) (not b_next!69807) (not b_next!69805) (not b_next!69811) (not b_next!69817) b_and!182537 b_and!182539 b_and!182541 b_and!182533 b_and!182531 (not b_next!69815) b_and!182535 (not b_next!69809))
(get-model)

(declare-fun d!678836 () Bool)

(declare-fun lt!851525 () Int)

(assert (=> d!678836 (= lt!851525 (size!21530 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))

(declare-fun size!21533 (Conc!8902) Int)

(assert (=> d!678836 (= lt!851525 (size!21533 (c!363882 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (=> d!678836 (= (size!21529 (charsOf!2765 (head!5010 tokens!456))) lt!851525)))

(declare-fun bs!457316 () Bool)

(assert (= bs!457316 d!678836))

(assert (=> bs!457316 m!2722587))

(assert (=> bs!457316 m!2722605))

(assert (=> bs!457316 m!2722605))

(declare-fun m!2722631 () Bool)

(assert (=> bs!457316 m!2722631))

(declare-fun m!2722637 () Bool)

(assert (=> bs!457316 m!2722637))

(assert (=> b!2295014 d!678836))

(declare-fun d!678842 () Bool)

(declare-fun lt!851528 () BalanceConc!17532)

(assert (=> d!678842 (= (list!10725 lt!851528) (originalCharacters!5147 (head!5010 tokens!456)))))

(declare-fun dynLambda!11869 (Int TokenValue!4539) BalanceConc!17532)

(assert (=> d!678842 (= lt!851528 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))))

(assert (=> d!678842 (= (charsOf!2765 (head!5010 tokens!456)) lt!851528)))

(declare-fun b_lambda!73141 () Bool)

(assert (=> (not b_lambda!73141) (not d!678842)))

(declare-fun tb!137023 () Bool)

(declare-fun t!205212 () Bool)

(assert (=> (and b!2295013 (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205212) tb!137023))

(declare-fun b!2295095 () Bool)

(declare-fun e!1470744 () Bool)

(declare-fun tp!727874 () Bool)

(declare-fun inv!36944 (Conc!8902) Bool)

(assert (=> b!2295095 (= e!1470744 (and (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))) tp!727874))))

(declare-fun result!167034 () Bool)

(declare-fun inv!36945 (BalanceConc!17532) Bool)

(assert (=> tb!137023 (= result!167034 (and (inv!36945 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))) e!1470744))))

(assert (= tb!137023 b!2295095))

(declare-fun m!2722641 () Bool)

(assert (=> b!2295095 m!2722641))

(declare-fun m!2722643 () Bool)

(assert (=> tb!137023 m!2722643))

(assert (=> d!678842 t!205212))

(declare-fun b_and!182545 () Bool)

(assert (= b_and!182531 (and (=> t!205212 result!167034) b_and!182545)))

(declare-fun tb!137025 () Bool)

(declare-fun t!205214 () Bool)

(assert (=> (and b!2295026 (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205214) tb!137025))

(declare-fun result!167038 () Bool)

(assert (= result!167038 result!167034))

(assert (=> d!678842 t!205214))

(declare-fun b_and!182547 () Bool)

(assert (= b_and!182535 (and (=> t!205214 result!167038) b_and!182547)))

(declare-fun t!205216 () Bool)

(declare-fun tb!137027 () Bool)

(assert (=> (and b!2295030 (= (toChars!6034 (transformation!4377 r!2363)) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205216) tb!137027))

(declare-fun result!167040 () Bool)

(assert (= result!167040 result!167034))

(assert (=> d!678842 t!205216))

(declare-fun b_and!182549 () Bool)

(assert (= b_and!182539 (and (=> t!205216 result!167040) b_and!182549)))

(declare-fun t!205218 () Bool)

(declare-fun tb!137029 () Bool)

(assert (=> (and b!2295042 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205218) tb!137029))

(declare-fun result!167042 () Bool)

(assert (= result!167042 result!167034))

(assert (=> d!678842 t!205218))

(declare-fun b_and!182551 () Bool)

(assert (= b_and!182543 (and (=> t!205218 result!167042) b_and!182551)))

(declare-fun m!2722645 () Bool)

(assert (=> d!678842 m!2722645))

(declare-fun m!2722647 () Bool)

(assert (=> d!678842 m!2722647))

(assert (=> b!2295014 d!678842))

(declare-fun d!678844 () Bool)

(assert (=> d!678844 (= (head!5010 tokens!456) (h!32732 tokens!456))))

(assert (=> b!2295014 d!678844))

(declare-fun d!678846 () Bool)

(declare-fun lt!851534 () Int)

(assert (=> d!678846 (>= lt!851534 0)))

(declare-fun e!1470754 () Int)

(assert (=> d!678846 (= lt!851534 e!1470754)))

(declare-fun c!363902 () Bool)

(assert (=> d!678846 (= c!363902 ((_ is Nil!27330) otherP!12))))

(assert (=> d!678846 (= (size!21530 otherP!12) lt!851534)))

(declare-fun b!2295114 () Bool)

(assert (=> b!2295114 (= e!1470754 0)))

(declare-fun b!2295115 () Bool)

(assert (=> b!2295115 (= e!1470754 (+ 1 (size!21530 (t!205208 otherP!12))))))

(assert (= (and d!678846 c!363902) b!2295114))

(assert (= (and d!678846 (not c!363902)) b!2295115))

(declare-fun m!2722667 () Bool)

(assert (=> b!2295115 m!2722667))

(assert (=> b!2295014 d!678846))

(declare-fun b!2295138 () Bool)

(declare-fun e!1470767 () Int)

(assert (=> b!2295138 (= e!1470767 (+ 1 (getIndex!390 (t!205210 rules!1750) otherR!12)))))

(declare-fun d!678852 () Bool)

(declare-fun lt!851540 () Int)

(assert (=> d!678852 (>= lt!851540 0)))

(declare-fun e!1470768 () Int)

(assert (=> d!678852 (= lt!851540 e!1470768)))

(declare-fun c!363907 () Bool)

(assert (=> d!678852 (= c!363907 (and ((_ is Cons!27332) rules!1750) (= (h!32733 rules!1750) otherR!12)))))

(assert (=> d!678852 (contains!4757 rules!1750 otherR!12)))

(assert (=> d!678852 (= (getIndex!390 rules!1750 otherR!12) lt!851540)))

(declare-fun b!2295137 () Bool)

(assert (=> b!2295137 (= e!1470768 e!1470767)))

(declare-fun c!363908 () Bool)

(assert (=> b!2295137 (= c!363908 (and ((_ is Cons!27332) rules!1750) (not (= (h!32733 rules!1750) otherR!12))))))

(declare-fun b!2295139 () Bool)

(assert (=> b!2295139 (= e!1470767 (- 1))))

(declare-fun b!2295136 () Bool)

(assert (=> b!2295136 (= e!1470768 0)))

(assert (= (and d!678852 c!363907) b!2295136))

(assert (= (and d!678852 (not c!363907)) b!2295137))

(assert (= (and b!2295137 c!363908) b!2295138))

(assert (= (and b!2295137 (not c!363908)) b!2295139))

(declare-fun m!2722689 () Bool)

(assert (=> b!2295138 m!2722689))

(assert (=> d!678852 m!2722609))

(assert (=> b!2295035 d!678852))

(declare-fun b!2295144 () Bool)

(declare-fun e!1470771 () Int)

(assert (=> b!2295144 (= e!1470771 (+ 1 (getIndex!390 (t!205210 rules!1750) r!2363)))))

(declare-fun d!678862 () Bool)

(declare-fun lt!851541 () Int)

(assert (=> d!678862 (>= lt!851541 0)))

(declare-fun e!1470772 () Int)

(assert (=> d!678862 (= lt!851541 e!1470772)))

(declare-fun c!363909 () Bool)

(assert (=> d!678862 (= c!363909 (and ((_ is Cons!27332) rules!1750) (= (h!32733 rules!1750) r!2363)))))

(assert (=> d!678862 (contains!4757 rules!1750 r!2363)))

(assert (=> d!678862 (= (getIndex!390 rules!1750 r!2363) lt!851541)))

(declare-fun b!2295143 () Bool)

(assert (=> b!2295143 (= e!1470772 e!1470771)))

(declare-fun c!363910 () Bool)

(assert (=> b!2295143 (= c!363910 (and ((_ is Cons!27332) rules!1750) (not (= (h!32733 rules!1750) r!2363))))))

(declare-fun b!2295145 () Bool)

(assert (=> b!2295145 (= e!1470771 (- 1))))

(declare-fun b!2295142 () Bool)

(assert (=> b!2295142 (= e!1470772 0)))

(assert (= (and d!678862 c!363909) b!2295142))

(assert (= (and d!678862 (not c!363909)) b!2295143))

(assert (= (and b!2295143 c!363910) b!2295144))

(assert (= (and b!2295143 (not c!363910)) b!2295145))

(declare-fun m!2722693 () Bool)

(assert (=> b!2295144 m!2722693))

(assert (=> d!678862 m!2722563))

(assert (=> b!2295035 d!678862))

(declare-fun d!678866 () Bool)

(declare-fun res!981359 () Bool)

(declare-fun e!1470785 () Bool)

(assert (=> d!678866 (=> (not res!981359) (not e!1470785))))

(declare-fun validRegex!2534 (Regex!6725) Bool)

(assert (=> d!678866 (= res!981359 (validRegex!2534 (regex!4377 otherR!12)))))

(assert (=> d!678866 (= (ruleValid!1467 thiss!16613 otherR!12) e!1470785)))

(declare-fun b!2295163 () Bool)

(declare-fun res!981360 () Bool)

(assert (=> b!2295163 (=> (not res!981360) (not e!1470785))))

(declare-fun nullable!1872 (Regex!6725) Bool)

(assert (=> b!2295163 (= res!981360 (not (nullable!1872 (regex!4377 otherR!12))))))

(declare-fun b!2295164 () Bool)

(assert (=> b!2295164 (= e!1470785 (not (= (tag!4867 otherR!12) (String!29800 ""))))))

(assert (= (and d!678866 res!981359) b!2295163))

(assert (= (and b!2295163 res!981360) b!2295164))

(declare-fun m!2722709 () Bool)

(assert (=> d!678866 m!2722709))

(declare-fun m!2722711 () Bool)

(assert (=> b!2295163 m!2722711))

(assert (=> b!2295035 d!678866))

(declare-fun d!678870 () Bool)

(assert (=> d!678870 (ruleValid!1467 thiss!16613 otherR!12)))

(declare-fun lt!851553 () Unit!40218)

(declare-fun choose!13400 (LexerInterface!3974 Rule!8554 List!27426) Unit!40218)

(assert (=> d!678870 (= lt!851553 (choose!13400 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!678870 (contains!4757 rules!1750 otherR!12)))

(assert (=> d!678870 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!872 thiss!16613 otherR!12 rules!1750) lt!851553)))

(declare-fun bs!457319 () Bool)

(assert (= bs!457319 d!678870))

(assert (=> bs!457319 m!2722581))

(declare-fun m!2722719 () Bool)

(assert (=> bs!457319 m!2722719))

(assert (=> bs!457319 m!2722609))

(assert (=> b!2295035 d!678870))

(declare-fun d!678876 () Bool)

(declare-fun list!10728 (Conc!8903) List!27425)

(assert (=> d!678876 (= (list!10724 (_1!16093 lt!851517)) (list!10728 (c!363884 (_1!16093 lt!851517))))))

(declare-fun bs!457320 () Bool)

(assert (= bs!457320 d!678876))

(declare-fun m!2722721 () Bool)

(assert (=> bs!457320 m!2722721))

(assert (=> b!2295024 d!678876))

(declare-fun d!678878 () Bool)

(declare-fun list!10729 (Conc!8902) List!27424)

(assert (=> d!678878 (= (list!10725 (_2!16093 lt!851517)) (list!10729 (c!363882 (_2!16093 lt!851517))))))

(declare-fun bs!457321 () Bool)

(assert (= bs!457321 d!678878))

(declare-fun m!2722723 () Bool)

(assert (=> bs!457321 m!2722723))

(assert (=> b!2295024 d!678878))

(declare-fun b!2295185 () Bool)

(declare-fun e!1470800 () Bool)

(declare-fun lt!851558 () tuple2!27166)

(declare-fun isEmpty!15579 (BalanceConc!17534) Bool)

(assert (=> b!2295185 (= e!1470800 (not (isEmpty!15579 (_1!16093 lt!851558))))))

(declare-fun b!2295186 () Bool)

(declare-fun e!1470801 () Bool)

(assert (=> b!2295186 (= e!1470801 e!1470800)))

(declare-fun res!981373 () Bool)

(assert (=> b!2295186 (= res!981373 (< (size!21529 (_2!16093 lt!851558)) (size!21529 (seqFromList!3081 input!1722))))))

(assert (=> b!2295186 (=> (not res!981373) (not e!1470800))))

(declare-fun e!1470799 () Bool)

(declare-fun b!2295187 () Bool)

(declare-fun lexList!1118 (LexerInterface!3974 List!27426 List!27424) tuple2!27168)

(assert (=> b!2295187 (= e!1470799 (= (list!10725 (_2!16093 lt!851558)) (_2!16094 (lexList!1118 thiss!16613 rules!1750 (list!10725 (seqFromList!3081 input!1722))))))))

(declare-fun b!2295188 () Bool)

(assert (=> b!2295188 (= e!1470801 (= (_2!16093 lt!851558) (seqFromList!3081 input!1722)))))

(declare-fun b!2295189 () Bool)

(declare-fun res!981371 () Bool)

(assert (=> b!2295189 (=> (not res!981371) (not e!1470799))))

(assert (=> b!2295189 (= res!981371 (= (list!10724 (_1!16093 lt!851558)) (_1!16094 (lexList!1118 thiss!16613 rules!1750 (list!10725 (seqFromList!3081 input!1722))))))))

(declare-fun d!678880 () Bool)

(assert (=> d!678880 e!1470799))

(declare-fun res!981372 () Bool)

(assert (=> d!678880 (=> (not res!981372) (not e!1470799))))

(assert (=> d!678880 (= res!981372 e!1470801)))

(declare-fun c!363916 () Bool)

(declare-fun size!21534 (BalanceConc!17534) Int)

(assert (=> d!678880 (= c!363916 (> (size!21534 (_1!16093 lt!851558)) 0))))

(declare-fun lexTailRecV2!793 (LexerInterface!3974 List!27426 BalanceConc!17532 BalanceConc!17532 BalanceConc!17532 BalanceConc!17534) tuple2!27166)

(assert (=> d!678880 (= lt!851558 (lexTailRecV2!793 thiss!16613 rules!1750 (seqFromList!3081 input!1722) (BalanceConc!17533 Empty!8902) (seqFromList!3081 input!1722) (BalanceConc!17535 Empty!8903)))))

(assert (=> d!678880 (= (lex!1813 thiss!16613 rules!1750 (seqFromList!3081 input!1722)) lt!851558)))

(assert (= (and d!678880 c!363916) b!2295186))

(assert (= (and d!678880 (not c!363916)) b!2295188))

(assert (= (and b!2295186 res!981373) b!2295185))

(assert (= (and d!678880 res!981372) b!2295189))

(assert (= (and b!2295189 res!981371) b!2295187))

(declare-fun m!2722725 () Bool)

(assert (=> b!2295185 m!2722725))

(declare-fun m!2722727 () Bool)

(assert (=> d!678880 m!2722727))

(assert (=> d!678880 m!2722573))

(assert (=> d!678880 m!2722573))

(declare-fun m!2722729 () Bool)

(assert (=> d!678880 m!2722729))

(declare-fun m!2722731 () Bool)

(assert (=> b!2295186 m!2722731))

(assert (=> b!2295186 m!2722573))

(declare-fun m!2722733 () Bool)

(assert (=> b!2295186 m!2722733))

(declare-fun m!2722735 () Bool)

(assert (=> b!2295189 m!2722735))

(assert (=> b!2295189 m!2722573))

(declare-fun m!2722737 () Bool)

(assert (=> b!2295189 m!2722737))

(assert (=> b!2295189 m!2722737))

(declare-fun m!2722739 () Bool)

(assert (=> b!2295189 m!2722739))

(declare-fun m!2722741 () Bool)

(assert (=> b!2295187 m!2722741))

(assert (=> b!2295187 m!2722573))

(assert (=> b!2295187 m!2722737))

(assert (=> b!2295187 m!2722737))

(assert (=> b!2295187 m!2722739))

(assert (=> b!2295024 d!678880))

(declare-fun d!678882 () Bool)

(declare-fun fromListB!1384 (List!27424) BalanceConc!17532)

(assert (=> d!678882 (= (seqFromList!3081 input!1722) (fromListB!1384 input!1722))))

(declare-fun bs!457322 () Bool)

(assert (= bs!457322 d!678882))

(declare-fun m!2722743 () Bool)

(assert (=> bs!457322 m!2722743))

(assert (=> b!2295024 d!678882))

(declare-fun b!2295200 () Bool)

(declare-fun e!1470809 () Bool)

(declare-fun tail!3315 (List!27424) List!27424)

(assert (=> b!2295200 (= e!1470809 (isPrefix!2367 (tail!3315 otherP!12) (tail!3315 input!1722)))))

(declare-fun b!2295199 () Bool)

(declare-fun res!981382 () Bool)

(assert (=> b!2295199 (=> (not res!981382) (not e!1470809))))

(declare-fun head!5012 (List!27424) C!13596)

(assert (=> b!2295199 (= res!981382 (= (head!5012 otherP!12) (head!5012 input!1722)))))

(declare-fun b!2295198 () Bool)

(declare-fun e!1470810 () Bool)

(assert (=> b!2295198 (= e!1470810 e!1470809)))

(declare-fun res!981384 () Bool)

(assert (=> b!2295198 (=> (not res!981384) (not e!1470809))))

(assert (=> b!2295198 (= res!981384 (not ((_ is Nil!27330) input!1722)))))

(declare-fun d!678884 () Bool)

(declare-fun e!1470808 () Bool)

(assert (=> d!678884 e!1470808))

(declare-fun res!981385 () Bool)

(assert (=> d!678884 (=> res!981385 e!1470808)))

(declare-fun lt!851561 () Bool)

(assert (=> d!678884 (= res!981385 (not lt!851561))))

(assert (=> d!678884 (= lt!851561 e!1470810)))

(declare-fun res!981383 () Bool)

(assert (=> d!678884 (=> res!981383 e!1470810)))

(assert (=> d!678884 (= res!981383 ((_ is Nil!27330) otherP!12))))

(assert (=> d!678884 (= (isPrefix!2367 otherP!12 input!1722) lt!851561)))

(declare-fun b!2295201 () Bool)

(assert (=> b!2295201 (= e!1470808 (>= (size!21530 input!1722) (size!21530 otherP!12)))))

(assert (= (and d!678884 (not res!981383)) b!2295198))

(assert (= (and b!2295198 res!981384) b!2295199))

(assert (= (and b!2295199 res!981382) b!2295200))

(assert (= (and d!678884 (not res!981385)) b!2295201))

(declare-fun m!2722745 () Bool)

(assert (=> b!2295200 m!2722745))

(declare-fun m!2722747 () Bool)

(assert (=> b!2295200 m!2722747))

(assert (=> b!2295200 m!2722745))

(assert (=> b!2295200 m!2722747))

(declare-fun m!2722749 () Bool)

(assert (=> b!2295200 m!2722749))

(declare-fun m!2722751 () Bool)

(assert (=> b!2295199 m!2722751))

(declare-fun m!2722753 () Bool)

(assert (=> b!2295199 m!2722753))

(declare-fun m!2722755 () Bool)

(assert (=> b!2295201 m!2722755))

(assert (=> b!2295201 m!2722591))

(assert (=> b!2295034 d!678884))

(declare-fun d!678886 () Bool)

(declare-fun lt!851564 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3671 (List!27426) (InoxSet Rule!8554))

(assert (=> d!678886 (= lt!851564 (select (content!3671 rules!1750) r!2363))))

(declare-fun e!1470816 () Bool)

(assert (=> d!678886 (= lt!851564 e!1470816)))

(declare-fun res!981390 () Bool)

(assert (=> d!678886 (=> (not res!981390) (not e!1470816))))

(assert (=> d!678886 (= res!981390 ((_ is Cons!27332) rules!1750))))

(assert (=> d!678886 (= (contains!4757 rules!1750 r!2363) lt!851564)))

(declare-fun b!2295206 () Bool)

(declare-fun e!1470815 () Bool)

(assert (=> b!2295206 (= e!1470816 e!1470815)))

(declare-fun res!981391 () Bool)

(assert (=> b!2295206 (=> res!981391 e!1470815)))

(assert (=> b!2295206 (= res!981391 (= (h!32733 rules!1750) r!2363))))

(declare-fun b!2295207 () Bool)

(assert (=> b!2295207 (= e!1470815 (contains!4757 (t!205210 rules!1750) r!2363))))

(assert (= (and d!678886 res!981390) b!2295206))

(assert (= (and b!2295206 (not res!981391)) b!2295207))

(declare-fun m!2722757 () Bool)

(assert (=> d!678886 m!2722757))

(declare-fun m!2722759 () Bool)

(assert (=> d!678886 m!2722759))

(declare-fun m!2722761 () Bool)

(assert (=> b!2295207 m!2722761))

(assert (=> b!2295023 d!678886))

(declare-fun d!678888 () Bool)

(assert (=> d!678888 (= (inv!36937 (tag!4867 (h!32733 rules!1750))) (= (mod (str.len (value!138563 (tag!4867 (h!32733 rules!1750)))) 2) 0))))

(assert (=> b!2295044 d!678888))

(declare-fun d!678890 () Bool)

(declare-fun res!981394 () Bool)

(declare-fun e!1470819 () Bool)

(assert (=> d!678890 (=> (not res!981394) (not e!1470819))))

(declare-fun semiInverseModEq!1774 (Int Int) Bool)

(assert (=> d!678890 (= res!981394 (semiInverseModEq!1774 (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 (h!32733 rules!1750)))))))

(assert (=> d!678890 (= (inv!36941 (transformation!4377 (h!32733 rules!1750))) e!1470819)))

(declare-fun b!2295210 () Bool)

(declare-fun equivClasses!1693 (Int Int) Bool)

(assert (=> b!2295210 (= e!1470819 (equivClasses!1693 (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 (h!32733 rules!1750)))))))

(assert (= (and d!678890 res!981394) b!2295210))

(declare-fun m!2722763 () Bool)

(assert (=> d!678890 m!2722763))

(declare-fun m!2722765 () Bool)

(assert (=> b!2295210 m!2722765))

(assert (=> b!2295044 d!678890))

(declare-fun d!678892 () Bool)

(declare-fun res!981397 () Bool)

(declare-fun e!1470822 () Bool)

(assert (=> d!678892 (=> (not res!981397) (not e!1470822))))

(declare-fun rulesValid!1618 (LexerInterface!3974 List!27426) Bool)

(assert (=> d!678892 (= res!981397 (rulesValid!1618 thiss!16613 rules!1750))))

(assert (=> d!678892 (= (rulesInvariant!3476 thiss!16613 rules!1750) e!1470822)))

(declare-fun b!2295213 () Bool)

(declare-datatypes ((List!27428 0))(
  ( (Nil!27334) (Cons!27334 (h!32735 String!29799) (t!205260 List!27428)) )
))
(declare-fun noDuplicateTag!1616 (LexerInterface!3974 List!27426 List!27428) Bool)

(assert (=> b!2295213 (= e!1470822 (noDuplicateTag!1616 thiss!16613 rules!1750 Nil!27334))))

(assert (= (and d!678892 res!981397) b!2295213))

(declare-fun m!2722767 () Bool)

(assert (=> d!678892 m!2722767))

(declare-fun m!2722769 () Bool)

(assert (=> b!2295213 m!2722769))

(assert (=> b!2295027 d!678892))

(declare-fun d!678894 () Bool)

(assert (=> d!678894 true))

(declare-fun lt!851601 () Bool)

(declare-fun lambda!85839 () Int)

(declare-fun forall!5498 (List!27426 Int) Bool)

(assert (=> d!678894 (= lt!851601 (forall!5498 rules!1750 lambda!85839))))

(declare-fun e!1470913 () Bool)

(assert (=> d!678894 (= lt!851601 e!1470913)))

(declare-fun res!981453 () Bool)

(assert (=> d!678894 (=> res!981453 e!1470913)))

(assert (=> d!678894 (= res!981453 (not ((_ is Cons!27332) rules!1750)))))

(assert (=> d!678894 (= (rulesValidInductive!1545 thiss!16613 rules!1750) lt!851601)))

(declare-fun b!2295358 () Bool)

(declare-fun e!1470914 () Bool)

(assert (=> b!2295358 (= e!1470913 e!1470914)))

(declare-fun res!981454 () Bool)

(assert (=> b!2295358 (=> (not res!981454) (not e!1470914))))

(assert (=> b!2295358 (= res!981454 (ruleValid!1467 thiss!16613 (h!32733 rules!1750)))))

(declare-fun b!2295359 () Bool)

(assert (=> b!2295359 (= e!1470914 (rulesValidInductive!1545 thiss!16613 (t!205210 rules!1750)))))

(assert (= (and d!678894 (not res!981453)) b!2295358))

(assert (= (and b!2295358 res!981454) b!2295359))

(declare-fun m!2722879 () Bool)

(assert (=> d!678894 m!2722879))

(declare-fun m!2722881 () Bool)

(assert (=> b!2295358 m!2722881))

(declare-fun m!2722883 () Bool)

(assert (=> b!2295359 m!2722883))

(assert (=> b!2295016 d!678894))

(declare-fun d!678942 () Bool)

(declare-fun res!981459 () Bool)

(declare-fun e!1470917 () Bool)

(assert (=> d!678942 (=> (not res!981459) (not e!1470917))))

(declare-fun isEmpty!15580 (List!27424) Bool)

(assert (=> d!678942 (= res!981459 (not (isEmpty!15580 (originalCharacters!5147 (h!32732 tokens!456)))))))

(assert (=> d!678942 (= (inv!36940 (h!32732 tokens!456)) e!1470917)))

(declare-fun b!2295366 () Bool)

(declare-fun res!981460 () Bool)

(assert (=> b!2295366 (=> (not res!981460) (not e!1470917))))

(assert (=> b!2295366 (= res!981460 (= (originalCharacters!5147 (h!32732 tokens!456)) (list!10725 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))))))

(declare-fun b!2295367 () Bool)

(assert (=> b!2295367 (= e!1470917 (= (size!21528 (h!32732 tokens!456)) (size!21530 (originalCharacters!5147 (h!32732 tokens!456)))))))

(assert (= (and d!678942 res!981459) b!2295366))

(assert (= (and b!2295366 res!981460) b!2295367))

(declare-fun b_lambda!73149 () Bool)

(assert (=> (not b_lambda!73149) (not b!2295366)))

(declare-fun tb!137055 () Bool)

(declare-fun t!205245 () Bool)

(assert (=> (and b!2295013 (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205245) tb!137055))

(declare-fun b!2295368 () Bool)

(declare-fun e!1470918 () Bool)

(declare-fun tp!727942 () Bool)

(assert (=> b!2295368 (= e!1470918 (and (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))) tp!727942))))

(declare-fun result!167078 () Bool)

(assert (=> tb!137055 (= result!167078 (and (inv!36945 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))) e!1470918))))

(assert (= tb!137055 b!2295368))

(declare-fun m!2722885 () Bool)

(assert (=> b!2295368 m!2722885))

(declare-fun m!2722887 () Bool)

(assert (=> tb!137055 m!2722887))

(assert (=> b!2295366 t!205245))

(declare-fun b_and!182577 () Bool)

(assert (= b_and!182545 (and (=> t!205245 result!167078) b_and!182577)))

(declare-fun t!205247 () Bool)

(declare-fun tb!137057 () Bool)

(assert (=> (and b!2295026 (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205247) tb!137057))

(declare-fun result!167080 () Bool)

(assert (= result!167080 result!167078))

(assert (=> b!2295366 t!205247))

(declare-fun b_and!182579 () Bool)

(assert (= b_and!182547 (and (=> t!205247 result!167080) b_and!182579)))

(declare-fun t!205249 () Bool)

(declare-fun tb!137059 () Bool)

(assert (=> (and b!2295030 (= (toChars!6034 (transformation!4377 r!2363)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205249) tb!137059))

(declare-fun result!167082 () Bool)

(assert (= result!167082 result!167078))

(assert (=> b!2295366 t!205249))

(declare-fun b_and!182581 () Bool)

(assert (= b_and!182549 (and (=> t!205249 result!167082) b_and!182581)))

(declare-fun t!205251 () Bool)

(declare-fun tb!137061 () Bool)

(assert (=> (and b!2295042 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205251) tb!137061))

(declare-fun result!167084 () Bool)

(assert (= result!167084 result!167078))

(assert (=> b!2295366 t!205251))

(declare-fun b_and!182583 () Bool)

(assert (= b_and!182551 (and (=> t!205251 result!167084) b_and!182583)))

(declare-fun m!2722889 () Bool)

(assert (=> d!678942 m!2722889))

(declare-fun m!2722891 () Bool)

(assert (=> b!2295366 m!2722891))

(assert (=> b!2295366 m!2722891))

(declare-fun m!2722893 () Bool)

(assert (=> b!2295366 m!2722893))

(declare-fun m!2722895 () Bool)

(assert (=> b!2295367 m!2722895))

(assert (=> b!2295015 d!678942))

(declare-fun d!678944 () Bool)

(assert (=> d!678944 (= (inv!36937 (tag!4867 r!2363)) (= (mod (str.len (value!138563 (tag!4867 r!2363))) 2) 0))))

(assert (=> b!2295036 d!678944))

(declare-fun d!678946 () Bool)

(declare-fun res!981461 () Bool)

(declare-fun e!1470919 () Bool)

(assert (=> d!678946 (=> (not res!981461) (not e!1470919))))

(assert (=> d!678946 (= res!981461 (semiInverseModEq!1774 (toChars!6034 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 r!2363))))))

(assert (=> d!678946 (= (inv!36941 (transformation!4377 r!2363)) e!1470919)))

(declare-fun b!2295369 () Bool)

(assert (=> b!2295369 (= e!1470919 (equivClasses!1693 (toChars!6034 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 r!2363))))))

(assert (= (and d!678946 res!981461) b!2295369))

(declare-fun m!2722897 () Bool)

(assert (=> d!678946 m!2722897))

(declare-fun m!2722899 () Bool)

(assert (=> b!2295369 m!2722899))

(assert (=> b!2295036 d!678946))

(declare-fun d!678948 () Bool)

(declare-fun res!981462 () Bool)

(declare-fun e!1470920 () Bool)

(assert (=> d!678948 (=> (not res!981462) (not e!1470920))))

(assert (=> d!678948 (= res!981462 (validRegex!2534 (regex!4377 r!2363)))))

(assert (=> d!678948 (= (ruleValid!1467 thiss!16613 r!2363) e!1470920)))

(declare-fun b!2295370 () Bool)

(declare-fun res!981463 () Bool)

(assert (=> b!2295370 (=> (not res!981463) (not e!1470920))))

(assert (=> b!2295370 (= res!981463 (not (nullable!1872 (regex!4377 r!2363))))))

(declare-fun b!2295371 () Bool)

(assert (=> b!2295371 (= e!1470920 (not (= (tag!4867 r!2363) (String!29800 ""))))))

(assert (= (and d!678948 res!981462) b!2295370))

(assert (= (and b!2295370 res!981463) b!2295371))

(declare-fun m!2722901 () Bool)

(assert (=> d!678948 m!2722901))

(declare-fun m!2722903 () Bool)

(assert (=> b!2295370 m!2722903))

(assert (=> b!2295019 d!678948))

(declare-fun d!678950 () Bool)

(assert (=> d!678950 (ruleValid!1467 thiss!16613 r!2363)))

(declare-fun lt!851602 () Unit!40218)

(assert (=> d!678950 (= lt!851602 (choose!13400 thiss!16613 r!2363 rules!1750))))

(assert (=> d!678950 (contains!4757 rules!1750 r!2363)))

(assert (=> d!678950 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!872 thiss!16613 r!2363 rules!1750) lt!851602)))

(declare-fun bs!457329 () Bool)

(assert (= bs!457329 d!678950))

(assert (=> bs!457329 m!2722619))

(declare-fun m!2722905 () Bool)

(assert (=> bs!457329 m!2722905))

(assert (=> bs!457329 m!2722563))

(assert (=> b!2295019 d!678950))

(declare-fun d!678952 () Bool)

(assert (=> d!678952 (= (isEmpty!15576 (maxPrefix!2234 thiss!16613 rules!1750 input!1722)) (not ((_ is Some!5366) (maxPrefix!2234 thiss!16613 rules!1750 input!1722))))))

(assert (=> b!2295040 d!678952))

(declare-fun d!678954 () Bool)

(declare-fun e!1470927 () Bool)

(assert (=> d!678954 e!1470927))

(declare-fun res!981479 () Bool)

(assert (=> d!678954 (=> res!981479 e!1470927)))

(declare-fun lt!851616 () Option!5367)

(assert (=> d!678954 (= res!981479 (isEmpty!15576 lt!851616))))

(declare-fun e!1470928 () Option!5367)

(assert (=> d!678954 (= lt!851616 e!1470928)))

(declare-fun c!363933 () Bool)

(assert (=> d!678954 (= c!363933 (and ((_ is Cons!27332) rules!1750) ((_ is Nil!27332) (t!205210 rules!1750))))))

(declare-fun lt!851614 () Unit!40218)

(declare-fun lt!851615 () Unit!40218)

(assert (=> d!678954 (= lt!851614 lt!851615)))

(assert (=> d!678954 (isPrefix!2367 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1503 (List!27424 List!27424) Unit!40218)

(assert (=> d!678954 (= lt!851615 (lemmaIsPrefixRefl!1503 input!1722 input!1722))))

(assert (=> d!678954 (rulesValidInductive!1545 thiss!16613 rules!1750)))

(assert (=> d!678954 (= (maxPrefix!2234 thiss!16613 rules!1750 input!1722) lt!851616)))

(declare-fun b!2295390 () Bool)

(declare-fun lt!851617 () Option!5367)

(declare-fun lt!851613 () Option!5367)

(assert (=> b!2295390 (= e!1470928 (ite (and ((_ is None!5366) lt!851617) ((_ is None!5366) lt!851613)) None!5366 (ite ((_ is None!5366) lt!851613) lt!851617 (ite ((_ is None!5366) lt!851617) lt!851613 (ite (>= (size!21528 (_1!16095 (v!30452 lt!851617))) (size!21528 (_1!16095 (v!30452 lt!851613)))) lt!851617 lt!851613)))))))

(declare-fun call!136843 () Option!5367)

(assert (=> b!2295390 (= lt!851617 call!136843)))

(assert (=> b!2295390 (= lt!851613 (maxPrefix!2234 thiss!16613 (t!205210 rules!1750) input!1722))))

(declare-fun b!2295391 () Bool)

(declare-fun res!981478 () Bool)

(declare-fun e!1470929 () Bool)

(assert (=> b!2295391 (=> (not res!981478) (not e!1470929))))

(declare-fun get!8239 (Option!5367) tuple2!27170)

(assert (=> b!2295391 (= res!981478 (matchR!2982 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))) (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))))))

(declare-fun b!2295392 () Bool)

(assert (=> b!2295392 (= e!1470927 e!1470929)))

(declare-fun res!981481 () Bool)

(assert (=> b!2295392 (=> (not res!981481) (not e!1470929))))

(declare-fun isDefined!4236 (Option!5367) Bool)

(assert (=> b!2295392 (= res!981481 (isDefined!4236 lt!851616))))

(declare-fun b!2295393 () Bool)

(declare-fun res!981483 () Bool)

(assert (=> b!2295393 (=> (not res!981483) (not e!1470929))))

(declare-fun apply!6643 (TokenValueInjection!8618 BalanceConc!17532) TokenValue!4539)

(assert (=> b!2295393 (= res!981483 (= (value!138564 (_1!16095 (get!8239 lt!851616))) (apply!6643 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))) (seqFromList!3081 (originalCharacters!5147 (_1!16095 (get!8239 lt!851616)))))))))

(declare-fun b!2295394 () Bool)

(declare-fun res!981482 () Bool)

(assert (=> b!2295394 (=> (not res!981482) (not e!1470929))))

(declare-fun ++!6681 (List!27424 List!27424) List!27424)

(assert (=> b!2295394 (= res!981482 (= (++!6681 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))) (_2!16095 (get!8239 lt!851616))) input!1722))))

(declare-fun b!2295395 () Bool)

(assert (=> b!2295395 (= e!1470928 call!136843)))

(declare-fun b!2295396 () Bool)

(declare-fun res!981484 () Bool)

(assert (=> b!2295396 (=> (not res!981484) (not e!1470929))))

(assert (=> b!2295396 (= res!981484 (= (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))) (originalCharacters!5147 (_1!16095 (get!8239 lt!851616)))))))

(declare-fun bm!136838 () Bool)

(declare-fun maxPrefixOneRule!1402 (LexerInterface!3974 Rule!8554 List!27424) Option!5367)

(assert (=> bm!136838 (= call!136843 (maxPrefixOneRule!1402 thiss!16613 (h!32733 rules!1750) input!1722))))

(declare-fun b!2295397 () Bool)

(declare-fun res!981480 () Bool)

(assert (=> b!2295397 (=> (not res!981480) (not e!1470929))))

(assert (=> b!2295397 (= res!981480 (< (size!21530 (_2!16095 (get!8239 lt!851616))) (size!21530 input!1722)))))

(declare-fun b!2295398 () Bool)

(assert (=> b!2295398 (= e!1470929 (contains!4757 rules!1750 (rule!6715 (_1!16095 (get!8239 lt!851616)))))))

(assert (= (and d!678954 c!363933) b!2295395))

(assert (= (and d!678954 (not c!363933)) b!2295390))

(assert (= (or b!2295395 b!2295390) bm!136838))

(assert (= (and d!678954 (not res!981479)) b!2295392))

(assert (= (and b!2295392 res!981481) b!2295396))

(assert (= (and b!2295396 res!981484) b!2295397))

(assert (= (and b!2295397 res!981480) b!2295394))

(assert (= (and b!2295394 res!981482) b!2295393))

(assert (= (and b!2295393 res!981483) b!2295391))

(assert (= (and b!2295391 res!981478) b!2295398))

(declare-fun m!2722907 () Bool)

(assert (=> b!2295396 m!2722907))

(declare-fun m!2722909 () Bool)

(assert (=> b!2295396 m!2722909))

(assert (=> b!2295396 m!2722909))

(declare-fun m!2722911 () Bool)

(assert (=> b!2295396 m!2722911))

(assert (=> b!2295397 m!2722907))

(declare-fun m!2722913 () Bool)

(assert (=> b!2295397 m!2722913))

(assert (=> b!2295397 m!2722755))

(declare-fun m!2722915 () Bool)

(assert (=> b!2295390 m!2722915))

(declare-fun m!2722917 () Bool)

(assert (=> bm!136838 m!2722917))

(assert (=> b!2295393 m!2722907))

(declare-fun m!2722919 () Bool)

(assert (=> b!2295393 m!2722919))

(assert (=> b!2295393 m!2722919))

(declare-fun m!2722921 () Bool)

(assert (=> b!2295393 m!2722921))

(assert (=> b!2295398 m!2722907))

(declare-fun m!2722923 () Bool)

(assert (=> b!2295398 m!2722923))

(declare-fun m!2722925 () Bool)

(assert (=> d!678954 m!2722925))

(declare-fun m!2722927 () Bool)

(assert (=> d!678954 m!2722927))

(declare-fun m!2722929 () Bool)

(assert (=> d!678954 m!2722929))

(assert (=> d!678954 m!2722599))

(assert (=> b!2295394 m!2722907))

(assert (=> b!2295394 m!2722909))

(assert (=> b!2295394 m!2722909))

(assert (=> b!2295394 m!2722911))

(assert (=> b!2295394 m!2722911))

(declare-fun m!2722931 () Bool)

(assert (=> b!2295394 m!2722931))

(declare-fun m!2722933 () Bool)

(assert (=> b!2295392 m!2722933))

(assert (=> b!2295391 m!2722907))

(assert (=> b!2295391 m!2722909))

(assert (=> b!2295391 m!2722909))

(assert (=> b!2295391 m!2722911))

(assert (=> b!2295391 m!2722911))

(declare-fun m!2722935 () Bool)

(assert (=> b!2295391 m!2722935))

(assert (=> b!2295040 d!678954))

(declare-fun d!678956 () Bool)

(assert (=> d!678956 (= (inv!36937 (tag!4867 otherR!12)) (= (mod (str.len (value!138563 (tag!4867 otherR!12))) 2) 0))))

(assert (=> b!2295029 d!678956))

(declare-fun d!678958 () Bool)

(declare-fun res!981485 () Bool)

(declare-fun e!1470930 () Bool)

(assert (=> d!678958 (=> (not res!981485) (not e!1470930))))

(assert (=> d!678958 (= res!981485 (semiInverseModEq!1774 (toChars!6034 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 otherR!12))))))

(assert (=> d!678958 (= (inv!36941 (transformation!4377 otherR!12)) e!1470930)))

(declare-fun b!2295399 () Bool)

(assert (=> b!2295399 (= e!1470930 (equivClasses!1693 (toChars!6034 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 otherR!12))))))

(assert (= (and d!678958 res!981485) b!2295399))

(declare-fun m!2722937 () Bool)

(assert (=> d!678958 m!2722937))

(declare-fun m!2722939 () Bool)

(assert (=> b!2295399 m!2722939))

(assert (=> b!2295029 d!678958))

(declare-fun d!678960 () Bool)

(assert (=> d!678960 (= (isEmpty!15574 tokens!456) ((_ is Nil!27331) tokens!456))))

(assert (=> b!2295018 d!678960))

(assert (=> b!2295039 d!678844))

(declare-fun d!678962 () Bool)

(assert (=> d!678962 (= (isEmpty!15575 rules!1750) ((_ is Nil!27332) rules!1750))))

(assert (=> b!2295028 d!678962))

(declare-fun d!678964 () Bool)

(assert (=> d!678964 (= (inv!36937 (tag!4867 (rule!6715 (h!32732 tokens!456)))) (= (mod (str.len (value!138563 (tag!4867 (rule!6715 (h!32732 tokens!456))))) 2) 0))))

(assert (=> b!2295033 d!678964))

(declare-fun d!678966 () Bool)

(declare-fun res!981486 () Bool)

(declare-fun e!1470931 () Bool)

(assert (=> d!678966 (=> (not res!981486) (not e!1470931))))

(assert (=> d!678966 (= res!981486 (semiInverseModEq!1774 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))))))

(assert (=> d!678966 (= (inv!36941 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) e!1470931)))

(declare-fun b!2295400 () Bool)

(assert (=> b!2295400 (= e!1470931 (equivClasses!1693 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))))))

(assert (= (and d!678966 res!981486) b!2295400))

(declare-fun m!2722941 () Bool)

(assert (=> d!678966 m!2722941))

(declare-fun m!2722943 () Bool)

(assert (=> b!2295400 m!2722943))

(assert (=> b!2295033 d!678966))

(declare-fun d!678968 () Bool)

(assert (=> d!678968 (= r!2363 otherR!12)))

(declare-fun lt!851620 () Unit!40218)

(declare-fun choose!13401 (List!27426 Rule!8554 Rule!8554) Unit!40218)

(assert (=> d!678968 (= lt!851620 (choose!13401 rules!1750 r!2363 otherR!12))))

(assert (=> d!678968 (contains!4757 rules!1750 r!2363)))

(assert (=> d!678968 (= (lemmaSameIndexThenSameElement!170 rules!1750 r!2363 otherR!12) lt!851620)))

(declare-fun bs!457330 () Bool)

(assert (= bs!457330 d!678968))

(declare-fun m!2722945 () Bool)

(assert (=> bs!457330 m!2722945))

(assert (=> bs!457330 m!2722563))

(assert (=> b!2295043 d!678968))

(declare-fun b!2295429 () Bool)

(declare-fun res!981508 () Bool)

(declare-fun e!1470948 () Bool)

(assert (=> b!2295429 (=> (not res!981508) (not e!1470948))))

(declare-fun call!136846 () Bool)

(assert (=> b!2295429 (= res!981508 (not call!136846))))

(declare-fun b!2295430 () Bool)

(declare-fun e!1470947 () Bool)

(declare-fun e!1470950 () Bool)

(assert (=> b!2295430 (= e!1470947 e!1470950)))

(declare-fun c!363940 () Bool)

(assert (=> b!2295430 (= c!363940 ((_ is EmptyLang!6725) (regex!4377 r!2363)))))

(declare-fun b!2295431 () Bool)

(declare-fun lt!851623 () Bool)

(assert (=> b!2295431 (= e!1470947 (= lt!851623 call!136846))))

(declare-fun b!2295432 () Bool)

(declare-fun res!981507 () Bool)

(declare-fun e!1470951 () Bool)

(assert (=> b!2295432 (=> res!981507 e!1470951)))

(assert (=> b!2295432 (= res!981507 (not ((_ is ElementMatch!6725) (regex!4377 r!2363))))))

(assert (=> b!2295432 (= e!1470950 e!1470951)))

(declare-fun b!2295433 () Bool)

(declare-fun res!981505 () Bool)

(assert (=> b!2295433 (=> (not res!981505) (not e!1470948))))

(assert (=> b!2295433 (= res!981505 (isEmpty!15580 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(declare-fun bm!136841 () Bool)

(assert (=> bm!136841 (= call!136846 (isEmpty!15580 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))

(declare-fun b!2295434 () Bool)

(declare-fun e!1470946 () Bool)

(declare-fun e!1470949 () Bool)

(assert (=> b!2295434 (= e!1470946 e!1470949)))

(declare-fun res!981510 () Bool)

(assert (=> b!2295434 (=> res!981510 e!1470949)))

(assert (=> b!2295434 (= res!981510 call!136846)))

(declare-fun b!2295435 () Bool)

(declare-fun res!981504 () Bool)

(assert (=> b!2295435 (=> res!981504 e!1470951)))

(assert (=> b!2295435 (= res!981504 e!1470948)))

(declare-fun res!981506 () Bool)

(assert (=> b!2295435 (=> (not res!981506) (not e!1470948))))

(assert (=> b!2295435 (= res!981506 lt!851623)))

(declare-fun b!2295436 () Bool)

(declare-fun res!981509 () Bool)

(assert (=> b!2295436 (=> res!981509 e!1470949)))

(assert (=> b!2295436 (= res!981509 (not (isEmpty!15580 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))

(declare-fun d!678970 () Bool)

(assert (=> d!678970 e!1470947))

(declare-fun c!363941 () Bool)

(assert (=> d!678970 (= c!363941 ((_ is EmptyExpr!6725) (regex!4377 r!2363)))))

(declare-fun e!1470952 () Bool)

(assert (=> d!678970 (= lt!851623 e!1470952)))

(declare-fun c!363942 () Bool)

(assert (=> d!678970 (= c!363942 (isEmpty!15580 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (=> d!678970 (validRegex!2534 (regex!4377 r!2363))))

(assert (=> d!678970 (= (matchR!2982 (regex!4377 r!2363) (list!10725 (charsOf!2765 (head!5010 tokens!456)))) lt!851623)))

(declare-fun b!2295437 () Bool)

(assert (=> b!2295437 (= e!1470950 (not lt!851623))))

(declare-fun b!2295438 () Bool)

(assert (=> b!2295438 (= e!1470948 (= (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))) (c!363883 (regex!4377 r!2363))))))

(declare-fun b!2295439 () Bool)

(declare-fun derivativeStep!1532 (Regex!6725 C!13596) Regex!6725)

(assert (=> b!2295439 (= e!1470952 (matchR!2982 (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(declare-fun b!2295440 () Bool)

(assert (=> b!2295440 (= e!1470949 (not (= (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))) (c!363883 (regex!4377 r!2363)))))))

(declare-fun b!2295441 () Bool)

(assert (=> b!2295441 (= e!1470951 e!1470946)))

(declare-fun res!981503 () Bool)

(assert (=> b!2295441 (=> (not res!981503) (not e!1470946))))

(assert (=> b!2295441 (= res!981503 (not lt!851623))))

(declare-fun b!2295442 () Bool)

(assert (=> b!2295442 (= e!1470952 (nullable!1872 (regex!4377 r!2363)))))

(assert (= (and d!678970 c!363942) b!2295442))

(assert (= (and d!678970 (not c!363942)) b!2295439))

(assert (= (and d!678970 c!363941) b!2295431))

(assert (= (and d!678970 (not c!363941)) b!2295430))

(assert (= (and b!2295430 c!363940) b!2295437))

(assert (= (and b!2295430 (not c!363940)) b!2295432))

(assert (= (and b!2295432 (not res!981507)) b!2295435))

(assert (= (and b!2295435 res!981506) b!2295429))

(assert (= (and b!2295429 res!981508) b!2295433))

(assert (= (and b!2295433 res!981505) b!2295438))

(assert (= (and b!2295435 (not res!981504)) b!2295441))

(assert (= (and b!2295441 res!981503) b!2295434))

(assert (= (and b!2295434 (not res!981510)) b!2295436))

(assert (= (and b!2295436 (not res!981509)) b!2295440))

(assert (= (or b!2295431 b!2295429 b!2295434) bm!136841))

(assert (=> b!2295442 m!2722903))

(assert (=> b!2295440 m!2722605))

(declare-fun m!2722947 () Bool)

(assert (=> b!2295440 m!2722947))

(assert (=> bm!136841 m!2722605))

(declare-fun m!2722949 () Bool)

(assert (=> bm!136841 m!2722949))

(assert (=> b!2295436 m!2722605))

(declare-fun m!2722951 () Bool)

(assert (=> b!2295436 m!2722951))

(assert (=> b!2295436 m!2722951))

(declare-fun m!2722953 () Bool)

(assert (=> b!2295436 m!2722953))

(assert (=> d!678970 m!2722605))

(assert (=> d!678970 m!2722949))

(assert (=> d!678970 m!2722901))

(assert (=> b!2295439 m!2722605))

(assert (=> b!2295439 m!2722947))

(assert (=> b!2295439 m!2722947))

(declare-fun m!2722955 () Bool)

(assert (=> b!2295439 m!2722955))

(assert (=> b!2295439 m!2722605))

(assert (=> b!2295439 m!2722951))

(assert (=> b!2295439 m!2722955))

(assert (=> b!2295439 m!2722951))

(declare-fun m!2722957 () Bool)

(assert (=> b!2295439 m!2722957))

(assert (=> b!2295438 m!2722605))

(assert (=> b!2295438 m!2722947))

(assert (=> b!2295433 m!2722605))

(assert (=> b!2295433 m!2722951))

(assert (=> b!2295433 m!2722951))

(assert (=> b!2295433 m!2722953))

(assert (=> b!2295032 d!678970))

(declare-fun d!678972 () Bool)

(assert (=> d!678972 (= (list!10725 (charsOf!2765 (head!5010 tokens!456))) (list!10729 (c!363882 (charsOf!2765 (head!5010 tokens!456)))))))

(declare-fun bs!457331 () Bool)

(assert (= bs!457331 d!678972))

(declare-fun m!2722959 () Bool)

(assert (=> bs!457331 m!2722959))

(assert (=> b!2295032 d!678972))

(assert (=> b!2295032 d!678842))

(assert (=> b!2295032 d!678844))

(declare-fun d!678974 () Bool)

(declare-fun lt!851624 () Bool)

(assert (=> d!678974 (= lt!851624 (select (content!3671 rules!1750) otherR!12))))

(declare-fun e!1470954 () Bool)

(assert (=> d!678974 (= lt!851624 e!1470954)))

(declare-fun res!981511 () Bool)

(assert (=> d!678974 (=> (not res!981511) (not e!1470954))))

(assert (=> d!678974 (= res!981511 ((_ is Cons!27332) rules!1750))))

(assert (=> d!678974 (= (contains!4757 rules!1750 otherR!12) lt!851624)))

(declare-fun b!2295443 () Bool)

(declare-fun e!1470953 () Bool)

(assert (=> b!2295443 (= e!1470954 e!1470953)))

(declare-fun res!981512 () Bool)

(assert (=> b!2295443 (=> res!981512 e!1470953)))

(assert (=> b!2295443 (= res!981512 (= (h!32733 rules!1750) otherR!12))))

(declare-fun b!2295444 () Bool)

(assert (=> b!2295444 (= e!1470953 (contains!4757 (t!205210 rules!1750) otherR!12))))

(assert (= (and d!678974 res!981511) b!2295443))

(assert (= (and b!2295443 (not res!981512)) b!2295444))

(assert (=> d!678974 m!2722757))

(declare-fun m!2722961 () Bool)

(assert (=> d!678974 m!2722961))

(declare-fun m!2722963 () Bool)

(assert (=> b!2295444 m!2722963))

(assert (=> b!2295021 d!678974))

(declare-fun d!678976 () Bool)

(declare-fun c!363947 () Bool)

(assert (=> d!678976 (= c!363947 ((_ is IntegerValue!13617) (value!138564 (h!32732 tokens!456))))))

(declare-fun e!1470963 () Bool)

(assert (=> d!678976 (= (inv!21 (value!138564 (h!32732 tokens!456))) e!1470963)))

(declare-fun b!2295455 () Bool)

(declare-fun res!981515 () Bool)

(declare-fun e!1470961 () Bool)

(assert (=> b!2295455 (=> res!981515 e!1470961)))

(assert (=> b!2295455 (= res!981515 (not ((_ is IntegerValue!13619) (value!138564 (h!32732 tokens!456)))))))

(declare-fun e!1470962 () Bool)

(assert (=> b!2295455 (= e!1470962 e!1470961)))

(declare-fun b!2295456 () Bool)

(declare-fun inv!16 (TokenValue!4539) Bool)

(assert (=> b!2295456 (= e!1470963 (inv!16 (value!138564 (h!32732 tokens!456))))))

(declare-fun b!2295457 () Bool)

(declare-fun inv!15 (TokenValue!4539) Bool)

(assert (=> b!2295457 (= e!1470961 (inv!15 (value!138564 (h!32732 tokens!456))))))

(declare-fun b!2295458 () Bool)

(assert (=> b!2295458 (= e!1470963 e!1470962)))

(declare-fun c!363948 () Bool)

(assert (=> b!2295458 (= c!363948 ((_ is IntegerValue!13618) (value!138564 (h!32732 tokens!456))))))

(declare-fun b!2295459 () Bool)

(declare-fun inv!17 (TokenValue!4539) Bool)

(assert (=> b!2295459 (= e!1470962 (inv!17 (value!138564 (h!32732 tokens!456))))))

(assert (= (and d!678976 c!363947) b!2295456))

(assert (= (and d!678976 (not c!363947)) b!2295458))

(assert (= (and b!2295458 c!363948) b!2295459))

(assert (= (and b!2295458 (not c!363948)) b!2295455))

(assert (= (and b!2295455 (not res!981515)) b!2295457))

(declare-fun m!2722965 () Bool)

(assert (=> b!2295456 m!2722965))

(declare-fun m!2722967 () Bool)

(assert (=> b!2295457 m!2722967))

(declare-fun m!2722969 () Bool)

(assert (=> b!2295459 m!2722969))

(assert (=> b!2295020 d!678976))

(declare-fun b!2295464 () Bool)

(declare-fun e!1470966 () Bool)

(declare-fun tp!727945 () Bool)

(assert (=> b!2295464 (= e!1470966 (and tp_is_empty!10671 tp!727945))))

(assert (=> b!2295012 (= tp!727870 e!1470966)))

(assert (= (and b!2295012 ((_ is Cons!27330) (t!205208 input!1722))) b!2295464))

(declare-fun b!2295475 () Bool)

(declare-fun e!1470969 () Bool)

(assert (=> b!2295475 (= e!1470969 tp_is_empty!10671)))

(declare-fun b!2295476 () Bool)

(declare-fun tp!727960 () Bool)

(declare-fun tp!727957 () Bool)

(assert (=> b!2295476 (= e!1470969 (and tp!727960 tp!727957))))

(declare-fun b!2295477 () Bool)

(declare-fun tp!727958 () Bool)

(assert (=> b!2295477 (= e!1470969 tp!727958)))

(declare-fun b!2295478 () Bool)

(declare-fun tp!727959 () Bool)

(declare-fun tp!727956 () Bool)

(assert (=> b!2295478 (= e!1470969 (and tp!727959 tp!727956))))

(assert (=> b!2295044 (= tp!727854 e!1470969)))

(assert (= (and b!2295044 ((_ is ElementMatch!6725) (regex!4377 (h!32733 rules!1750)))) b!2295475))

(assert (= (and b!2295044 ((_ is Concat!11265) (regex!4377 (h!32733 rules!1750)))) b!2295476))

(assert (= (and b!2295044 ((_ is Star!6725) (regex!4377 (h!32733 rules!1750)))) b!2295477))

(assert (= (and b!2295044 ((_ is Union!6725) (regex!4377 (h!32733 rules!1750)))) b!2295478))

(declare-fun b!2295489 () Bool)

(declare-fun b_free!69125 () Bool)

(declare-fun b_next!69829 () Bool)

(assert (=> b!2295489 (= b_free!69125 (not b_next!69829))))

(declare-fun tp!727970 () Bool)

(declare-fun b_and!182585 () Bool)

(assert (=> b!2295489 (= tp!727970 b_and!182585)))

(declare-fun b_free!69127 () Bool)

(declare-fun b_next!69831 () Bool)

(assert (=> b!2295489 (= b_free!69127 (not b_next!69831))))

(declare-fun tb!137063 () Bool)

(declare-fun t!205253 () Bool)

(assert (=> (and b!2295489 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205253) tb!137063))

(declare-fun result!167092 () Bool)

(assert (= result!167092 result!167034))

(assert (=> d!678842 t!205253))

(declare-fun t!205255 () Bool)

(declare-fun tb!137065 () Bool)

(assert (=> (and b!2295489 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205255) tb!137065))

(declare-fun result!167094 () Bool)

(assert (= result!167094 result!167078))

(assert (=> b!2295366 t!205255))

(declare-fun tp!727969 () Bool)

(declare-fun b_and!182587 () Bool)

(assert (=> b!2295489 (= tp!727969 (and (=> t!205253 result!167092) (=> t!205255 result!167094) b_and!182587))))

(declare-fun e!1470981 () Bool)

(assert (=> b!2295489 (= e!1470981 (and tp!727970 tp!727969))))

(declare-fun e!1470980 () Bool)

(declare-fun tp!727972 () Bool)

(declare-fun b!2295488 () Bool)

(assert (=> b!2295488 (= e!1470980 (and tp!727972 (inv!36937 (tag!4867 (h!32733 (t!205210 rules!1750)))) (inv!36941 (transformation!4377 (h!32733 (t!205210 rules!1750)))) e!1470981))))

(declare-fun b!2295487 () Bool)

(declare-fun e!1470978 () Bool)

(declare-fun tp!727971 () Bool)

(assert (=> b!2295487 (= e!1470978 (and e!1470980 tp!727971))))

(assert (=> b!2295038 (= tp!727855 e!1470978)))

(assert (= b!2295488 b!2295489))

(assert (= b!2295487 b!2295488))

(assert (= (and b!2295038 ((_ is Cons!27332) (t!205210 rules!1750))) b!2295487))

(declare-fun m!2722971 () Bool)

(assert (=> b!2295488 m!2722971))

(declare-fun m!2722973 () Bool)

(assert (=> b!2295488 m!2722973))

(declare-fun b!2295503 () Bool)

(declare-fun b_free!69129 () Bool)

(declare-fun b_next!69833 () Bool)

(assert (=> b!2295503 (= b_free!69129 (not b_next!69833))))

(declare-fun tp!727984 () Bool)

(declare-fun b_and!182589 () Bool)

(assert (=> b!2295503 (= tp!727984 b_and!182589)))

(declare-fun b_free!69131 () Bool)

(declare-fun b_next!69835 () Bool)

(assert (=> b!2295503 (= b_free!69131 (not b_next!69835))))

(declare-fun t!205257 () Bool)

(declare-fun tb!137067 () Bool)

(assert (=> (and b!2295503 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205257) tb!137067))

(declare-fun result!167098 () Bool)

(assert (= result!167098 result!167034))

(assert (=> d!678842 t!205257))

(declare-fun t!205259 () Bool)

(declare-fun tb!137069 () Bool)

(assert (=> (and b!2295503 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205259) tb!137069))

(declare-fun result!167100 () Bool)

(assert (= result!167100 result!167078))

(assert (=> b!2295366 t!205259))

(declare-fun tp!727985 () Bool)

(declare-fun b_and!182591 () Bool)

(assert (=> b!2295503 (= tp!727985 (and (=> t!205257 result!167098) (=> t!205259 result!167100) b_and!182591))))

(declare-fun e!1470995 () Bool)

(declare-fun e!1470997 () Bool)

(declare-fun tp!727986 () Bool)

(declare-fun b!2295502 () Bool)

(assert (=> b!2295502 (= e!1470997 (and tp!727986 (inv!36937 (tag!4867 (rule!6715 (h!32732 (t!205209 tokens!456))))) (inv!36941 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) e!1470995))))

(assert (=> b!2295503 (= e!1470995 (and tp!727984 tp!727985))))

(declare-fun b!2295500 () Bool)

(declare-fun tp!727983 () Bool)

(declare-fun e!1470998 () Bool)

(declare-fun e!1470996 () Bool)

(assert (=> b!2295500 (= e!1470996 (and (inv!36940 (h!32732 (t!205209 tokens!456))) e!1470998 tp!727983))))

(assert (=> b!2295015 (= tp!727869 e!1470996)))

(declare-fun tp!727987 () Bool)

(declare-fun b!2295501 () Bool)

(assert (=> b!2295501 (= e!1470998 (and (inv!21 (value!138564 (h!32732 (t!205209 tokens!456)))) e!1470997 tp!727987))))

(assert (= b!2295502 b!2295503))

(assert (= b!2295501 b!2295502))

(assert (= b!2295500 b!2295501))

(assert (= (and b!2295015 ((_ is Cons!27331) (t!205209 tokens!456))) b!2295500))

(declare-fun m!2722975 () Bool)

(assert (=> b!2295502 m!2722975))

(declare-fun m!2722977 () Bool)

(assert (=> b!2295502 m!2722977))

(declare-fun m!2722979 () Bool)

(assert (=> b!2295500 m!2722979))

(declare-fun m!2722981 () Bool)

(assert (=> b!2295501 m!2722981))

(declare-fun b!2295504 () Bool)

(declare-fun e!1471000 () Bool)

(assert (=> b!2295504 (= e!1471000 tp_is_empty!10671)))

(declare-fun b!2295505 () Bool)

(declare-fun tp!727992 () Bool)

(declare-fun tp!727989 () Bool)

(assert (=> b!2295505 (= e!1471000 (and tp!727992 tp!727989))))

(declare-fun b!2295506 () Bool)

(declare-fun tp!727990 () Bool)

(assert (=> b!2295506 (= e!1471000 tp!727990)))

(declare-fun b!2295507 () Bool)

(declare-fun tp!727991 () Bool)

(declare-fun tp!727988 () Bool)

(assert (=> b!2295507 (= e!1471000 (and tp!727991 tp!727988))))

(assert (=> b!2295036 (= tp!727860 e!1471000)))

(assert (= (and b!2295036 ((_ is ElementMatch!6725) (regex!4377 r!2363))) b!2295504))

(assert (= (and b!2295036 ((_ is Concat!11265) (regex!4377 r!2363))) b!2295505))

(assert (= (and b!2295036 ((_ is Star!6725) (regex!4377 r!2363))) b!2295506))

(assert (= (and b!2295036 ((_ is Union!6725) (regex!4377 r!2363))) b!2295507))

(declare-fun b!2295508 () Bool)

(declare-fun e!1471001 () Bool)

(declare-fun tp!727993 () Bool)

(assert (=> b!2295508 (= e!1471001 (and tp_is_empty!10671 tp!727993))))

(assert (=> b!2295041 (= tp!727866 e!1471001)))

(assert (= (and b!2295041 ((_ is Cons!27330) (t!205208 otherP!12))) b!2295508))

(declare-fun b!2295509 () Bool)

(declare-fun e!1471002 () Bool)

(assert (=> b!2295509 (= e!1471002 tp_is_empty!10671)))

(declare-fun b!2295510 () Bool)

(declare-fun tp!727998 () Bool)

(declare-fun tp!727995 () Bool)

(assert (=> b!2295510 (= e!1471002 (and tp!727998 tp!727995))))

(declare-fun b!2295511 () Bool)

(declare-fun tp!727996 () Bool)

(assert (=> b!2295511 (= e!1471002 tp!727996)))

(declare-fun b!2295512 () Bool)

(declare-fun tp!727997 () Bool)

(declare-fun tp!727994 () Bool)

(assert (=> b!2295512 (= e!1471002 (and tp!727997 tp!727994))))

(assert (=> b!2295029 (= tp!727857 e!1471002)))

(assert (= (and b!2295029 ((_ is ElementMatch!6725) (regex!4377 otherR!12))) b!2295509))

(assert (= (and b!2295029 ((_ is Concat!11265) (regex!4377 otherR!12))) b!2295510))

(assert (= (and b!2295029 ((_ is Star!6725) (regex!4377 otherR!12))) b!2295511))

(assert (= (and b!2295029 ((_ is Union!6725) (regex!4377 otherR!12))) b!2295512))

(declare-fun b!2295513 () Bool)

(declare-fun e!1471003 () Bool)

(assert (=> b!2295513 (= e!1471003 tp_is_empty!10671)))

(declare-fun b!2295514 () Bool)

(declare-fun tp!728003 () Bool)

(declare-fun tp!728000 () Bool)

(assert (=> b!2295514 (= e!1471003 (and tp!728003 tp!728000))))

(declare-fun b!2295515 () Bool)

(declare-fun tp!728001 () Bool)

(assert (=> b!2295515 (= e!1471003 tp!728001)))

(declare-fun b!2295516 () Bool)

(declare-fun tp!728002 () Bool)

(declare-fun tp!727999 () Bool)

(assert (=> b!2295516 (= e!1471003 (and tp!728002 tp!727999))))

(assert (=> b!2295033 (= tp!727862 e!1471003)))

(assert (= (and b!2295033 ((_ is ElementMatch!6725) (regex!4377 (rule!6715 (h!32732 tokens!456))))) b!2295513))

(assert (= (and b!2295033 ((_ is Concat!11265) (regex!4377 (rule!6715 (h!32732 tokens!456))))) b!2295514))

(assert (= (and b!2295033 ((_ is Star!6725) (regex!4377 (rule!6715 (h!32732 tokens!456))))) b!2295515))

(assert (= (and b!2295033 ((_ is Union!6725) (regex!4377 (rule!6715 (h!32732 tokens!456))))) b!2295516))

(declare-fun b!2295517 () Bool)

(declare-fun e!1471004 () Bool)

(declare-fun tp!728004 () Bool)

(assert (=> b!2295517 (= e!1471004 (and tp_is_empty!10671 tp!728004))))

(assert (=> b!2295031 (= tp!727861 e!1471004)))

(assert (= (and b!2295031 ((_ is Cons!27330) (t!205208 suffix!886))) b!2295517))

(declare-fun b!2295518 () Bool)

(declare-fun e!1471005 () Bool)

(declare-fun tp!728005 () Bool)

(assert (=> b!2295518 (= e!1471005 (and tp_is_empty!10671 tp!728005))))

(assert (=> b!2295020 (= tp!727867 e!1471005)))

(assert (= (and b!2295020 ((_ is Cons!27330) (originalCharacters!5147 (h!32732 tokens!456)))) b!2295518))

(declare-fun b_lambda!73151 () Bool)

(assert (= b_lambda!73149 (or (and b!2295030 b_free!69111 (= (toChars!6034 (transformation!4377 r!2363)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))))) (and b!2295489 b_free!69127 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))))) (and b!2295013 b_free!69103 (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))))) (and b!2295503 b_free!69131 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))))) (and b!2295042 b_free!69115) (and b!2295026 b_free!69107 (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))))) b_lambda!73151)))

(check-sat (not b!2295095) tp_is_empty!10671 (not b!2295213) (not b!2295506) (not b!2295477) (not d!678974) (not b!2295459) (not d!678876) (not b_next!69813) (not b!2295115) (not d!678892) (not d!678836) b_and!182541 (not b_next!69831) b_and!182533 (not b!2295478) (not d!678890) (not d!678862) (not d!678886) (not b_next!69829) (not b!2295440) (not b!2295505) (not b!2295163) b_and!182589 (not b!2295358) (not d!678948) (not b!2295476) (not b!2295207) (not b!2295397) b_and!182529 b_and!182585 (not b!2295488) (not d!678946) (not b!2295516) (not b!2295396) (not b_next!69819) (not b!2295400) (not tb!137055) (not b!2295512) (not b!2295518) (not d!678882) (not d!678842) (not b!2295187) (not b_lambda!73151) (not b!2295464) b_and!182579 (not d!678878) (not b_next!69833) (not d!678880) (not b!2295199) (not b_next!69807) (not d!678894) (not b_next!69805) (not b!2295444) (not d!678958) (not b!2295514) (not b!2295359) (not b!2295185) (not b!2295369) (not b!2295393) (not b!2295200) (not b_next!69811) (not d!678950) (not b!2295487) (not b_next!69815) (not b!2295442) (not b!2295508) (not b!2295439) (not b!2295510) (not d!678942) (not b_next!69835) (not b!2295394) (not b!2295502) (not b!2295201) (not d!678954) b_and!182581 (not b!2295392) (not b!2295189) (not d!678972) (not d!678866) b_and!182583 (not b_lambda!73141) (not d!678966) (not b!2295367) (not b!2295399) b_and!182587 (not b!2295138) (not bm!136838) (not b_next!69817) b_and!182537 (not b!2295507) (not b!2295456) (not bm!136841) (not b!2295500) (not d!678870) b_and!182591 (not b!2295186) (not b!2295210) (not b!2295457) (not b!2295517) (not d!678852) (not b!2295398) (not b!2295390) (not b!2295438) (not b!2295366) (not b!2295436) (not b!2295501) (not d!678970) (not b!2295370) (not b!2295391) (not d!678968) (not b!2295144) (not tb!137023) (not b_next!69809) (not b!2295368) b_and!182577 (not b!2295511) (not b!2295433) (not b!2295515))
(check-sat (not b_next!69813) (not b_next!69829) b_and!182589 (not b_next!69819) (not b_next!69807) (not b_next!69805) (not b_next!69811) (not b_next!69815) (not b_next!69835) b_and!182581 b_and!182583 b_and!182537 b_and!182591 (not b_next!69809) b_and!182577 b_and!182541 (not b_next!69831) b_and!182533 b_and!182529 b_and!182585 (not b_next!69833) b_and!182579 b_and!182587 (not b_next!69817))
(get-model)

(declare-fun d!679002 () Bool)

(declare-fun charsToInt!0 (List!27423) (_ BitVec 32))

(assert (=> d!679002 (= (inv!16 (value!138564 (h!32732 tokens!456))) (= (charsToInt!0 (text!32220 (value!138564 (h!32732 tokens!456)))) (value!138555 (value!138564 (h!32732 tokens!456)))))))

(declare-fun bs!457341 () Bool)

(assert (= bs!457341 d!679002))

(declare-fun m!2723015 () Bool)

(assert (=> bs!457341 m!2723015))

(assert (=> b!2295456 d!679002))

(declare-fun d!679004 () Bool)

(assert (=> d!679004 (= (list!10725 (_2!16093 lt!851558)) (list!10729 (c!363882 (_2!16093 lt!851558))))))

(declare-fun bs!457342 () Bool)

(assert (= bs!457342 d!679004))

(declare-fun m!2723017 () Bool)

(assert (=> bs!457342 m!2723017))

(assert (=> b!2295187 d!679004))

(declare-fun b!2295629 () Bool)

(declare-fun e!1471080 () Bool)

(declare-fun lt!851648 () tuple2!27168)

(assert (=> b!2295629 (= e!1471080 (not (isEmpty!15574 (_1!16094 lt!851648))))))

(declare-fun b!2295630 () Bool)

(declare-fun e!1471079 () Bool)

(assert (=> b!2295630 (= e!1471079 e!1471080)))

(declare-fun res!981571 () Bool)

(assert (=> b!2295630 (= res!981571 (< (size!21530 (_2!16094 lt!851648)) (size!21530 (list!10725 (seqFromList!3081 input!1722)))))))

(assert (=> b!2295630 (=> (not res!981571) (not e!1471080))))

(declare-fun d!679006 () Bool)

(assert (=> d!679006 e!1471079))

(declare-fun c!363980 () Bool)

(declare-fun size!21535 (List!27425) Int)

(assert (=> d!679006 (= c!363980 (> (size!21535 (_1!16094 lt!851648)) 0))))

(declare-fun e!1471081 () tuple2!27168)

(assert (=> d!679006 (= lt!851648 e!1471081)))

(declare-fun c!363979 () Bool)

(declare-fun lt!851647 () Option!5367)

(assert (=> d!679006 (= c!363979 ((_ is Some!5366) lt!851647))))

(assert (=> d!679006 (= lt!851647 (maxPrefix!2234 thiss!16613 rules!1750 (list!10725 (seqFromList!3081 input!1722))))))

(assert (=> d!679006 (= (lexList!1118 thiss!16613 rules!1750 (list!10725 (seqFromList!3081 input!1722))) lt!851648)))

(declare-fun b!2295631 () Bool)

(assert (=> b!2295631 (= e!1471079 (= (_2!16094 lt!851648) (list!10725 (seqFromList!3081 input!1722))))))

(declare-fun b!2295632 () Bool)

(assert (=> b!2295632 (= e!1471081 (tuple2!27169 Nil!27331 (list!10725 (seqFromList!3081 input!1722))))))

(declare-fun b!2295633 () Bool)

(declare-fun lt!851646 () tuple2!27168)

(assert (=> b!2295633 (= e!1471081 (tuple2!27169 (Cons!27331 (_1!16095 (v!30452 lt!851647)) (_1!16094 lt!851646)) (_2!16094 lt!851646)))))

(assert (=> b!2295633 (= lt!851646 (lexList!1118 thiss!16613 rules!1750 (_2!16095 (v!30452 lt!851647))))))

(assert (= (and d!679006 c!363979) b!2295633))

(assert (= (and d!679006 (not c!363979)) b!2295632))

(assert (= (and d!679006 c!363980) b!2295630))

(assert (= (and d!679006 (not c!363980)) b!2295631))

(assert (= (and b!2295630 res!981571) b!2295629))

(declare-fun m!2723085 () Bool)

(assert (=> b!2295629 m!2723085))

(declare-fun m!2723087 () Bool)

(assert (=> b!2295630 m!2723087))

(assert (=> b!2295630 m!2722737))

(declare-fun m!2723089 () Bool)

(assert (=> b!2295630 m!2723089))

(declare-fun m!2723091 () Bool)

(assert (=> d!679006 m!2723091))

(assert (=> d!679006 m!2722737))

(declare-fun m!2723093 () Bool)

(assert (=> d!679006 m!2723093))

(declare-fun m!2723095 () Bool)

(assert (=> b!2295633 m!2723095))

(assert (=> b!2295187 d!679006))

(declare-fun d!679042 () Bool)

(assert (=> d!679042 (= (list!10725 (seqFromList!3081 input!1722)) (list!10729 (c!363882 (seqFromList!3081 input!1722))))))

(declare-fun bs!457347 () Bool)

(assert (= bs!457347 d!679042))

(declare-fun m!2723097 () Bool)

(assert (=> bs!457347 m!2723097))

(assert (=> b!2295187 d!679042))

(assert (=> d!678862 d!678886))

(declare-fun d!679044 () Bool)

(declare-fun res!981576 () Bool)

(declare-fun e!1471088 () Bool)

(assert (=> d!679044 (=> res!981576 e!1471088)))

(assert (=> d!679044 (= res!981576 ((_ is Nil!27332) rules!1750))))

(assert (=> d!679044 (= (noDuplicateTag!1616 thiss!16613 rules!1750 Nil!27334) e!1471088)))

(declare-fun b!2295642 () Bool)

(declare-fun e!1471089 () Bool)

(assert (=> b!2295642 (= e!1471088 e!1471089)))

(declare-fun res!981577 () Bool)

(assert (=> b!2295642 (=> (not res!981577) (not e!1471089))))

(declare-fun contains!4758 (List!27428 String!29799) Bool)

(assert (=> b!2295642 (= res!981577 (not (contains!4758 Nil!27334 (tag!4867 (h!32733 rules!1750)))))))

(declare-fun b!2295643 () Bool)

(assert (=> b!2295643 (= e!1471089 (noDuplicateTag!1616 thiss!16613 (t!205210 rules!1750) (Cons!27334 (tag!4867 (h!32733 rules!1750)) Nil!27334)))))

(assert (= (and d!679044 (not res!981576)) b!2295642))

(assert (= (and b!2295642 res!981577) b!2295643))

(declare-fun m!2723105 () Bool)

(assert (=> b!2295642 m!2723105))

(declare-fun m!2723107 () Bool)

(assert (=> b!2295643 m!2723107))

(assert (=> b!2295213 d!679044))

(declare-fun d!679054 () Bool)

(declare-fun lt!851650 () Bool)

(assert (=> d!679054 (= lt!851650 (select (content!3671 (t!205210 rules!1750)) otherR!12))))

(declare-fun e!1471091 () Bool)

(assert (=> d!679054 (= lt!851650 e!1471091)))

(declare-fun res!981578 () Bool)

(assert (=> d!679054 (=> (not res!981578) (not e!1471091))))

(assert (=> d!679054 (= res!981578 ((_ is Cons!27332) (t!205210 rules!1750)))))

(assert (=> d!679054 (= (contains!4757 (t!205210 rules!1750) otherR!12) lt!851650)))

(declare-fun b!2295644 () Bool)

(declare-fun e!1471090 () Bool)

(assert (=> b!2295644 (= e!1471091 e!1471090)))

(declare-fun res!981579 () Bool)

(assert (=> b!2295644 (=> res!981579 e!1471090)))

(assert (=> b!2295644 (= res!981579 (= (h!32733 (t!205210 rules!1750)) otherR!12))))

(declare-fun b!2295645 () Bool)

(assert (=> b!2295645 (= e!1471090 (contains!4757 (t!205210 (t!205210 rules!1750)) otherR!12))))

(assert (= (and d!679054 res!981578) b!2295644))

(assert (= (and b!2295644 (not res!981579)) b!2295645))

(declare-fun m!2723109 () Bool)

(assert (=> d!679054 m!2723109))

(declare-fun m!2723111 () Bool)

(assert (=> d!679054 m!2723111))

(declare-fun m!2723113 () Bool)

(assert (=> b!2295645 m!2723113))

(assert (=> b!2295444 d!679054))

(declare-fun d!679056 () Bool)

(declare-fun lt!851651 () Int)

(assert (=> d!679056 (>= lt!851651 0)))

(declare-fun e!1471092 () Int)

(assert (=> d!679056 (= lt!851651 e!1471092)))

(declare-fun c!363983 () Bool)

(assert (=> d!679056 (= c!363983 ((_ is Nil!27330) (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (=> d!679056 (= (size!21530 (list!10725 (charsOf!2765 (head!5010 tokens!456)))) lt!851651)))

(declare-fun b!2295646 () Bool)

(assert (=> b!2295646 (= e!1471092 0)))

(declare-fun b!2295647 () Bool)

(assert (=> b!2295647 (= e!1471092 (+ 1 (size!21530 (t!205208 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))

(assert (= (and d!679056 c!363983) b!2295646))

(assert (= (and d!679056 (not c!363983)) b!2295647))

(declare-fun m!2723115 () Bool)

(assert (=> b!2295647 m!2723115))

(assert (=> d!678836 d!679056))

(assert (=> d!678836 d!678972))

(declare-fun d!679058 () Bool)

(declare-fun lt!851657 () Int)

(assert (=> d!679058 (= lt!851657 (size!21530 (list!10729 (c!363882 (charsOf!2765 (head!5010 tokens!456))))))))

(assert (=> d!679058 (= lt!851657 (ite ((_ is Empty!8902) (c!363882 (charsOf!2765 (head!5010 tokens!456)))) 0 (ite ((_ is Leaf!13076) (c!363882 (charsOf!2765 (head!5010 tokens!456)))) (csize!18035 (c!363882 (charsOf!2765 (head!5010 tokens!456)))) (csize!18034 (c!363882 (charsOf!2765 (head!5010 tokens!456)))))))))

(assert (=> d!679058 (= (size!21533 (c!363882 (charsOf!2765 (head!5010 tokens!456)))) lt!851657)))

(declare-fun bs!457349 () Bool)

(assert (= bs!457349 d!679058))

(assert (=> bs!457349 m!2722959))

(assert (=> bs!457349 m!2722959))

(declare-fun m!2723121 () Bool)

(assert (=> bs!457349 m!2723121))

(assert (=> d!678836 d!679058))

(declare-fun d!679062 () Bool)

(declare-fun lt!851658 () Bool)

(assert (=> d!679062 (= lt!851658 (select (content!3671 (t!205210 rules!1750)) r!2363))))

(declare-fun e!1471094 () Bool)

(assert (=> d!679062 (= lt!851658 e!1471094)))

(declare-fun res!981580 () Bool)

(assert (=> d!679062 (=> (not res!981580) (not e!1471094))))

(assert (=> d!679062 (= res!981580 ((_ is Cons!27332) (t!205210 rules!1750)))))

(assert (=> d!679062 (= (contains!4757 (t!205210 rules!1750) r!2363) lt!851658)))

(declare-fun b!2295648 () Bool)

(declare-fun e!1471093 () Bool)

(assert (=> b!2295648 (= e!1471094 e!1471093)))

(declare-fun res!981581 () Bool)

(assert (=> b!2295648 (=> res!981581 e!1471093)))

(assert (=> b!2295648 (= res!981581 (= (h!32733 (t!205210 rules!1750)) r!2363))))

(declare-fun b!2295649 () Bool)

(assert (=> b!2295649 (= e!1471093 (contains!4757 (t!205210 (t!205210 rules!1750)) r!2363))))

(assert (= (and d!679062 res!981580) b!2295648))

(assert (= (and b!2295648 (not res!981581)) b!2295649))

(assert (=> d!679062 m!2723109))

(declare-fun m!2723125 () Bool)

(assert (=> d!679062 m!2723125))

(declare-fun m!2723127 () Bool)

(assert (=> b!2295649 m!2723127))

(assert (=> b!2295207 d!679062))

(declare-fun d!679066 () Bool)

(assert (=> d!679066 (= (list!10724 (_1!16093 lt!851558)) (list!10728 (c!363884 (_1!16093 lt!851558))))))

(declare-fun bs!457351 () Bool)

(assert (= bs!457351 d!679066))

(declare-fun m!2723129 () Bool)

(assert (=> bs!457351 m!2723129))

(assert (=> b!2295189 d!679066))

(assert (=> b!2295189 d!679006))

(assert (=> b!2295189 d!679042))

(declare-fun d!679068 () Bool)

(declare-fun c!363984 () Bool)

(assert (=> d!679068 (= c!363984 ((_ is IntegerValue!13617) (value!138564 (h!32732 (t!205209 tokens!456)))))))

(declare-fun e!1471097 () Bool)

(assert (=> d!679068 (= (inv!21 (value!138564 (h!32732 (t!205209 tokens!456)))) e!1471097)))

(declare-fun b!2295650 () Bool)

(declare-fun res!981582 () Bool)

(declare-fun e!1471095 () Bool)

(assert (=> b!2295650 (=> res!981582 e!1471095)))

(assert (=> b!2295650 (= res!981582 (not ((_ is IntegerValue!13619) (value!138564 (h!32732 (t!205209 tokens!456))))))))

(declare-fun e!1471096 () Bool)

(assert (=> b!2295650 (= e!1471096 e!1471095)))

(declare-fun b!2295651 () Bool)

(assert (=> b!2295651 (= e!1471097 (inv!16 (value!138564 (h!32732 (t!205209 tokens!456)))))))

(declare-fun b!2295652 () Bool)

(assert (=> b!2295652 (= e!1471095 (inv!15 (value!138564 (h!32732 (t!205209 tokens!456)))))))

(declare-fun b!2295653 () Bool)

(assert (=> b!2295653 (= e!1471097 e!1471096)))

(declare-fun c!363985 () Bool)

(assert (=> b!2295653 (= c!363985 ((_ is IntegerValue!13618) (value!138564 (h!32732 (t!205209 tokens!456)))))))

(declare-fun b!2295654 () Bool)

(assert (=> b!2295654 (= e!1471096 (inv!17 (value!138564 (h!32732 (t!205209 tokens!456)))))))

(assert (= (and d!679068 c!363984) b!2295651))

(assert (= (and d!679068 (not c!363984)) b!2295653))

(assert (= (and b!2295653 c!363985) b!2295654))

(assert (= (and b!2295653 (not c!363985)) b!2295650))

(assert (= (and b!2295650 (not res!981582)) b!2295652))

(declare-fun m!2723131 () Bool)

(assert (=> b!2295651 m!2723131))

(declare-fun m!2723133 () Bool)

(assert (=> b!2295652 m!2723133))

(declare-fun m!2723135 () Bool)

(assert (=> b!2295654 m!2723135))

(assert (=> b!2295501 d!679068))

(declare-fun d!679070 () Bool)

(declare-fun isBalanced!2684 (Conc!8902) Bool)

(assert (=> d!679070 (= (inv!36945 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))) (isBalanced!2684 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))))))

(declare-fun bs!457356 () Bool)

(assert (= bs!457356 d!679070))

(declare-fun m!2723139 () Bool)

(assert (=> bs!457356 m!2723139))

(assert (=> tb!137023 d!679070))

(declare-fun d!679074 () Bool)

(assert (=> d!679074 true))

(declare-fun order!15235 () Int)

(declare-fun lambda!85852 () Int)

(declare-fun order!15233 () Int)

(declare-fun dynLambda!11873 (Int Int) Int)

(declare-fun dynLambda!11874 (Int Int) Int)

(assert (=> d!679074 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 (h!32733 rules!1750)))) (dynLambda!11874 order!15235 lambda!85852))))

(declare-fun Forall2!712 (Int) Bool)

(assert (=> d!679074 (= (equivClasses!1693 (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 (h!32733 rules!1750)))) (Forall2!712 lambda!85852))))

(declare-fun bs!457360 () Bool)

(assert (= bs!457360 d!679074))

(declare-fun m!2723153 () Bool)

(assert (=> bs!457360 m!2723153))

(assert (=> b!2295210 d!679074))

(declare-fun b!2295664 () Bool)

(declare-fun e!1471104 () Bool)

(assert (=> b!2295664 (= e!1471104 (isPrefix!2367 (tail!3315 (tail!3315 otherP!12)) (tail!3315 (tail!3315 input!1722))))))

(declare-fun b!2295663 () Bool)

(declare-fun res!981588 () Bool)

(assert (=> b!2295663 (=> (not res!981588) (not e!1471104))))

(assert (=> b!2295663 (= res!981588 (= (head!5012 (tail!3315 otherP!12)) (head!5012 (tail!3315 input!1722))))))

(declare-fun b!2295662 () Bool)

(declare-fun e!1471105 () Bool)

(assert (=> b!2295662 (= e!1471105 e!1471104)))

(declare-fun res!981590 () Bool)

(assert (=> b!2295662 (=> (not res!981590) (not e!1471104))))

(assert (=> b!2295662 (= res!981590 (not ((_ is Nil!27330) (tail!3315 input!1722))))))

(declare-fun d!679084 () Bool)

(declare-fun e!1471103 () Bool)

(assert (=> d!679084 e!1471103))

(declare-fun res!981591 () Bool)

(assert (=> d!679084 (=> res!981591 e!1471103)))

(declare-fun lt!851662 () Bool)

(assert (=> d!679084 (= res!981591 (not lt!851662))))

(assert (=> d!679084 (= lt!851662 e!1471105)))

(declare-fun res!981589 () Bool)

(assert (=> d!679084 (=> res!981589 e!1471105)))

(assert (=> d!679084 (= res!981589 ((_ is Nil!27330) (tail!3315 otherP!12)))))

(assert (=> d!679084 (= (isPrefix!2367 (tail!3315 otherP!12) (tail!3315 input!1722)) lt!851662)))

(declare-fun b!2295665 () Bool)

(assert (=> b!2295665 (= e!1471103 (>= (size!21530 (tail!3315 input!1722)) (size!21530 (tail!3315 otherP!12))))))

(assert (= (and d!679084 (not res!981589)) b!2295662))

(assert (= (and b!2295662 res!981590) b!2295663))

(assert (= (and b!2295663 res!981588) b!2295664))

(assert (= (and d!679084 (not res!981591)) b!2295665))

(assert (=> b!2295664 m!2722745))

(declare-fun m!2723155 () Bool)

(assert (=> b!2295664 m!2723155))

(assert (=> b!2295664 m!2722747))

(declare-fun m!2723157 () Bool)

(assert (=> b!2295664 m!2723157))

(assert (=> b!2295664 m!2723155))

(assert (=> b!2295664 m!2723157))

(declare-fun m!2723159 () Bool)

(assert (=> b!2295664 m!2723159))

(assert (=> b!2295663 m!2722745))

(declare-fun m!2723161 () Bool)

(assert (=> b!2295663 m!2723161))

(assert (=> b!2295663 m!2722747))

(declare-fun m!2723163 () Bool)

(assert (=> b!2295663 m!2723163))

(assert (=> b!2295665 m!2722747))

(declare-fun m!2723165 () Bool)

(assert (=> b!2295665 m!2723165))

(assert (=> b!2295665 m!2722745))

(declare-fun m!2723167 () Bool)

(assert (=> b!2295665 m!2723167))

(assert (=> b!2295200 d!679084))

(declare-fun d!679086 () Bool)

(assert (=> d!679086 (= (tail!3315 otherP!12) (t!205208 otherP!12))))

(assert (=> b!2295200 d!679086))

(declare-fun d!679088 () Bool)

(assert (=> d!679088 (= (tail!3315 input!1722) (t!205208 input!1722))))

(assert (=> b!2295200 d!679088))

(declare-fun d!679090 () Bool)

(assert (=> d!679090 true))

(declare-fun order!15237 () Int)

(declare-fun lambda!85855 () Int)

(declare-fun order!15239 () Int)

(declare-fun dynLambda!11875 (Int Int) Int)

(declare-fun dynLambda!11876 (Int Int) Int)

(assert (=> d!679090 (< (dynLambda!11875 order!15237 (toChars!6034 (transformation!4377 r!2363))) (dynLambda!11876 order!15239 lambda!85855))))

(assert (=> d!679090 true))

(assert (=> d!679090 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 r!2363))) (dynLambda!11876 order!15239 lambda!85855))))

(declare-fun Forall!1094 (Int) Bool)

(assert (=> d!679090 (= (semiInverseModEq!1774 (toChars!6034 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 r!2363))) (Forall!1094 lambda!85855))))

(declare-fun bs!457361 () Bool)

(assert (= bs!457361 d!679090))

(declare-fun m!2723169 () Bool)

(assert (=> bs!457361 m!2723169))

(assert (=> d!678946 d!679090))

(declare-fun d!679092 () Bool)

(declare-fun c!363989 () Bool)

(assert (=> d!679092 (= c!363989 ((_ is Node!8902) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))))))

(declare-fun e!1471110 () Bool)

(assert (=> d!679092 (= (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))) e!1471110)))

(declare-fun b!2295676 () Bool)

(declare-fun inv!36948 (Conc!8902) Bool)

(assert (=> b!2295676 (= e!1471110 (inv!36948 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))))))

(declare-fun b!2295677 () Bool)

(declare-fun e!1471111 () Bool)

(assert (=> b!2295677 (= e!1471110 e!1471111)))

(declare-fun res!981594 () Bool)

(assert (=> b!2295677 (= res!981594 (not ((_ is Leaf!13076) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))))))))

(assert (=> b!2295677 (=> res!981594 e!1471111)))

(declare-fun b!2295678 () Bool)

(declare-fun inv!36949 (Conc!8902) Bool)

(assert (=> b!2295678 (= e!1471111 (inv!36949 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))))))

(assert (= (and d!679092 c!363989) b!2295676))

(assert (= (and d!679092 (not c!363989)) b!2295677))

(assert (= (and b!2295677 (not res!981594)) b!2295678))

(declare-fun m!2723171 () Bool)

(assert (=> b!2295676 m!2723171))

(declare-fun m!2723173 () Bool)

(assert (=> b!2295678 m!2723173))

(assert (=> b!2295368 d!679092))

(declare-fun b!2295681 () Bool)

(declare-fun e!1471112 () Int)

(assert (=> b!2295681 (= e!1471112 (+ 1 (getIndex!390 (t!205210 (t!205210 rules!1750)) r!2363)))))

(declare-fun d!679094 () Bool)

(declare-fun lt!851663 () Int)

(assert (=> d!679094 (>= lt!851663 0)))

(declare-fun e!1471113 () Int)

(assert (=> d!679094 (= lt!851663 e!1471113)))

(declare-fun c!363990 () Bool)

(assert (=> d!679094 (= c!363990 (and ((_ is Cons!27332) (t!205210 rules!1750)) (= (h!32733 (t!205210 rules!1750)) r!2363)))))

(assert (=> d!679094 (contains!4757 (t!205210 rules!1750) r!2363)))

(assert (=> d!679094 (= (getIndex!390 (t!205210 rules!1750) r!2363) lt!851663)))

(declare-fun b!2295680 () Bool)

(assert (=> b!2295680 (= e!1471113 e!1471112)))

(declare-fun c!363991 () Bool)

(assert (=> b!2295680 (= c!363991 (and ((_ is Cons!27332) (t!205210 rules!1750)) (not (= (h!32733 (t!205210 rules!1750)) r!2363))))))

(declare-fun b!2295682 () Bool)

(assert (=> b!2295682 (= e!1471112 (- 1))))

(declare-fun b!2295679 () Bool)

(assert (=> b!2295679 (= e!1471113 0)))

(assert (= (and d!679094 c!363990) b!2295679))

(assert (= (and d!679094 (not c!363990)) b!2295680))

(assert (= (and b!2295680 c!363991) b!2295681))

(assert (= (and b!2295680 (not c!363991)) b!2295682))

(declare-fun m!2723175 () Bool)

(assert (=> b!2295681 m!2723175))

(assert (=> d!679094 m!2722761))

(assert (=> b!2295144 d!679094))

(declare-fun bs!457362 () Bool)

(declare-fun d!679096 () Bool)

(assert (= bs!457362 (and d!679096 d!678894)))

(declare-fun lambda!85858 () Int)

(assert (=> bs!457362 (= lambda!85858 lambda!85839)))

(assert (=> d!679096 true))

(declare-fun lt!851666 () Bool)

(assert (=> d!679096 (= lt!851666 (rulesValidInductive!1545 thiss!16613 rules!1750))))

(assert (=> d!679096 (= lt!851666 (forall!5498 rules!1750 lambda!85858))))

(assert (=> d!679096 (= (rulesValid!1618 thiss!16613 rules!1750) lt!851666)))

(declare-fun bs!457363 () Bool)

(assert (= bs!457363 d!679096))

(assert (=> bs!457363 m!2722599))

(declare-fun m!2723177 () Bool)

(assert (=> bs!457363 m!2723177))

(assert (=> d!678892 d!679096))

(declare-fun b!2295683 () Bool)

(declare-fun res!981600 () Bool)

(declare-fun e!1471116 () Bool)

(assert (=> b!2295683 (=> (not res!981600) (not e!1471116))))

(declare-fun call!136857 () Bool)

(assert (=> b!2295683 (= res!981600 (not call!136857))))

(declare-fun b!2295684 () Bool)

(declare-fun e!1471115 () Bool)

(declare-fun e!1471118 () Bool)

(assert (=> b!2295684 (= e!1471115 e!1471118)))

(declare-fun c!363992 () Bool)

(assert (=> b!2295684 (= c!363992 ((_ is EmptyLang!6725) (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))))))

(declare-fun b!2295685 () Bool)

(declare-fun lt!851667 () Bool)

(assert (=> b!2295685 (= e!1471115 (= lt!851667 call!136857))))

(declare-fun b!2295686 () Bool)

(declare-fun res!981599 () Bool)

(declare-fun e!1471119 () Bool)

(assert (=> b!2295686 (=> res!981599 e!1471119)))

(assert (=> b!2295686 (= res!981599 (not ((_ is ElementMatch!6725) (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))))))

(assert (=> b!2295686 (= e!1471118 e!1471119)))

(declare-fun b!2295687 () Bool)

(declare-fun res!981597 () Bool)

(assert (=> b!2295687 (=> (not res!981597) (not e!1471116))))

(assert (=> b!2295687 (= res!981597 (isEmpty!15580 (tail!3315 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))))))))

(declare-fun bm!136852 () Bool)

(assert (=> bm!136852 (= call!136857 (isEmpty!15580 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))))))

(declare-fun b!2295688 () Bool)

(declare-fun e!1471114 () Bool)

(declare-fun e!1471117 () Bool)

(assert (=> b!2295688 (= e!1471114 e!1471117)))

(declare-fun res!981602 () Bool)

(assert (=> b!2295688 (=> res!981602 e!1471117)))

(assert (=> b!2295688 (= res!981602 call!136857)))

(declare-fun b!2295689 () Bool)

(declare-fun res!981596 () Bool)

(assert (=> b!2295689 (=> res!981596 e!1471119)))

(assert (=> b!2295689 (= res!981596 e!1471116)))

(declare-fun res!981598 () Bool)

(assert (=> b!2295689 (=> (not res!981598) (not e!1471116))))

(assert (=> b!2295689 (= res!981598 lt!851667)))

(declare-fun b!2295690 () Bool)

(declare-fun res!981601 () Bool)

(assert (=> b!2295690 (=> res!981601 e!1471117)))

(assert (=> b!2295690 (= res!981601 (not (isEmpty!15580 (tail!3315 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))))))))

(declare-fun d!679098 () Bool)

(assert (=> d!679098 e!1471115))

(declare-fun c!363993 () Bool)

(assert (=> d!679098 (= c!363993 ((_ is EmptyExpr!6725) (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))))))

(declare-fun e!1471120 () Bool)

(assert (=> d!679098 (= lt!851667 e!1471120)))

(declare-fun c!363994 () Bool)

(assert (=> d!679098 (= c!363994 (isEmpty!15580 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))))))

(assert (=> d!679098 (validRegex!2534 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))))

(assert (=> d!679098 (= (matchR!2982 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))) (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))) lt!851667)))

(declare-fun b!2295691 () Bool)

(assert (=> b!2295691 (= e!1471118 (not lt!851667))))

(declare-fun b!2295692 () Bool)

(assert (=> b!2295692 (= e!1471116 (= (head!5012 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))) (c!363883 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))))))

(declare-fun b!2295693 () Bool)

(assert (=> b!2295693 (= e!1471120 (matchR!2982 (derivativeStep!1532 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))) (head!5012 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))))) (tail!3315 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))))))))

(declare-fun b!2295694 () Bool)

(assert (=> b!2295694 (= e!1471117 (not (= (head!5012 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))) (c!363883 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))))))))

(declare-fun b!2295695 () Bool)

(assert (=> b!2295695 (= e!1471119 e!1471114)))

(declare-fun res!981595 () Bool)

(assert (=> b!2295695 (=> (not res!981595) (not e!1471114))))

(assert (=> b!2295695 (= res!981595 (not lt!851667))))

(declare-fun b!2295696 () Bool)

(assert (=> b!2295696 (= e!1471120 (nullable!1872 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))))))

(assert (= (and d!679098 c!363994) b!2295696))

(assert (= (and d!679098 (not c!363994)) b!2295693))

(assert (= (and d!679098 c!363993) b!2295685))

(assert (= (and d!679098 (not c!363993)) b!2295684))

(assert (= (and b!2295684 c!363992) b!2295691))

(assert (= (and b!2295684 (not c!363992)) b!2295686))

(assert (= (and b!2295686 (not res!981599)) b!2295689))

(assert (= (and b!2295689 res!981598) b!2295683))

(assert (= (and b!2295683 res!981600) b!2295687))

(assert (= (and b!2295687 res!981597) b!2295692))

(assert (= (and b!2295689 (not res!981596)) b!2295695))

(assert (= (and b!2295695 res!981595) b!2295688))

(assert (= (and b!2295688 (not res!981602)) b!2295690))

(assert (= (and b!2295690 (not res!981601)) b!2295694))

(assert (= (or b!2295685 b!2295683 b!2295688) bm!136852))

(declare-fun m!2723179 () Bool)

(assert (=> b!2295696 m!2723179))

(assert (=> b!2295694 m!2722911))

(declare-fun m!2723181 () Bool)

(assert (=> b!2295694 m!2723181))

(assert (=> bm!136852 m!2722911))

(declare-fun m!2723183 () Bool)

(assert (=> bm!136852 m!2723183))

(assert (=> b!2295690 m!2722911))

(declare-fun m!2723185 () Bool)

(assert (=> b!2295690 m!2723185))

(assert (=> b!2295690 m!2723185))

(declare-fun m!2723187 () Bool)

(assert (=> b!2295690 m!2723187))

(assert (=> d!679098 m!2722911))

(assert (=> d!679098 m!2723183))

(declare-fun m!2723189 () Bool)

(assert (=> d!679098 m!2723189))

(assert (=> b!2295693 m!2722911))

(assert (=> b!2295693 m!2723181))

(assert (=> b!2295693 m!2723181))

(declare-fun m!2723191 () Bool)

(assert (=> b!2295693 m!2723191))

(assert (=> b!2295693 m!2722911))

(assert (=> b!2295693 m!2723185))

(assert (=> b!2295693 m!2723191))

(assert (=> b!2295693 m!2723185))

(declare-fun m!2723193 () Bool)

(assert (=> b!2295693 m!2723193))

(assert (=> b!2295692 m!2722911))

(assert (=> b!2295692 m!2723181))

(assert (=> b!2295687 m!2722911))

(assert (=> b!2295687 m!2723185))

(assert (=> b!2295687 m!2723185))

(assert (=> b!2295687 m!2723187))

(assert (=> b!2295391 d!679098))

(declare-fun d!679100 () Bool)

(assert (=> d!679100 (= (get!8239 lt!851616) (v!30452 lt!851616))))

(assert (=> b!2295391 d!679100))

(declare-fun d!679102 () Bool)

(assert (=> d!679102 (= (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))) (list!10729 (c!363882 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))))))

(declare-fun bs!457364 () Bool)

(assert (= bs!457364 d!679102))

(declare-fun m!2723195 () Bool)

(assert (=> bs!457364 m!2723195))

(assert (=> b!2295391 d!679102))

(declare-fun d!679104 () Bool)

(declare-fun lt!851674 () BalanceConc!17532)

(assert (=> d!679104 (= (list!10725 lt!851674) (originalCharacters!5147 (_1!16095 (get!8239 lt!851616))))))

(assert (=> d!679104 (= lt!851674 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))) (value!138564 (_1!16095 (get!8239 lt!851616)))))))

(assert (=> d!679104 (= (charsOf!2765 (_1!16095 (get!8239 lt!851616))) lt!851674)))

(declare-fun b_lambda!73157 () Bool)

(assert (=> (not b_lambda!73157) (not d!679104)))

(declare-fun tb!137083 () Bool)

(declare-fun t!205277 () Bool)

(assert (=> (and b!2295013 (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205277) tb!137083))

(declare-fun b!2295707 () Bool)

(declare-fun e!1471127 () Bool)

(declare-fun tp!728007 () Bool)

(assert (=> b!2295707 (= e!1471127 (and (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))) (value!138564 (_1!16095 (get!8239 lt!851616)))))) tp!728007))))

(declare-fun result!167114 () Bool)

(assert (=> tb!137083 (= result!167114 (and (inv!36945 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))) (value!138564 (_1!16095 (get!8239 lt!851616))))) e!1471127))))

(assert (= tb!137083 b!2295707))

(declare-fun m!2723197 () Bool)

(assert (=> b!2295707 m!2723197))

(declare-fun m!2723199 () Bool)

(assert (=> tb!137083 m!2723199))

(assert (=> d!679104 t!205277))

(declare-fun b_and!182605 () Bool)

(assert (= b_and!182577 (and (=> t!205277 result!167114) b_and!182605)))

(declare-fun tb!137085 () Bool)

(declare-fun t!205279 () Bool)

(assert (=> (and b!2295042 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205279) tb!137085))

(declare-fun result!167116 () Bool)

(assert (= result!167116 result!167114))

(assert (=> d!679104 t!205279))

(declare-fun b_and!182607 () Bool)

(assert (= b_and!182583 (and (=> t!205279 result!167116) b_and!182607)))

(declare-fun t!205281 () Bool)

(declare-fun tb!137087 () Bool)

(assert (=> (and b!2295030 (= (toChars!6034 (transformation!4377 r!2363)) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205281) tb!137087))

(declare-fun result!167118 () Bool)

(assert (= result!167118 result!167114))

(assert (=> d!679104 t!205281))

(declare-fun b_and!182609 () Bool)

(assert (= b_and!182581 (and (=> t!205281 result!167118) b_and!182609)))

(declare-fun tb!137089 () Bool)

(declare-fun t!205283 () Bool)

(assert (=> (and b!2295489 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205283) tb!137089))

(declare-fun result!167120 () Bool)

(assert (= result!167120 result!167114))

(assert (=> d!679104 t!205283))

(declare-fun b_and!182611 () Bool)

(assert (= b_and!182587 (and (=> t!205283 result!167120) b_and!182611)))

(declare-fun t!205285 () Bool)

(declare-fun tb!137091 () Bool)

(assert (=> (and b!2295026 (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205285) tb!137091))

(declare-fun result!167122 () Bool)

(assert (= result!167122 result!167114))

(assert (=> d!679104 t!205285))

(declare-fun b_and!182613 () Bool)

(assert (= b_and!182579 (and (=> t!205285 result!167122) b_and!182613)))

(declare-fun tb!137093 () Bool)

(declare-fun t!205287 () Bool)

(assert (=> (and b!2295503 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205287) tb!137093))

(declare-fun result!167124 () Bool)

(assert (= result!167124 result!167114))

(assert (=> d!679104 t!205287))

(declare-fun b_and!182615 () Bool)

(assert (= b_and!182591 (and (=> t!205287 result!167124) b_and!182615)))

(declare-fun m!2723201 () Bool)

(assert (=> d!679104 m!2723201))

(declare-fun m!2723203 () Bool)

(assert (=> d!679104 m!2723203))

(assert (=> b!2295391 d!679104))

(declare-fun d!679106 () Bool)

(assert (=> d!679106 (= (isEmpty!15580 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) ((_ is Nil!27330) (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(assert (=> b!2295433 d!679106))

(declare-fun d!679108 () Bool)

(assert (=> d!679108 (= (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456)))) (t!205208 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (=> b!2295433 d!679108))

(declare-fun d!679110 () Bool)

(declare-fun res!981617 () Bool)

(declare-fun e!1471138 () Bool)

(assert (=> d!679110 (=> res!981617 e!1471138)))

(assert (=> d!679110 (= res!981617 ((_ is Nil!27332) rules!1750))))

(assert (=> d!679110 (= (forall!5498 rules!1750 lambda!85839) e!1471138)))

(declare-fun b!2295726 () Bool)

(declare-fun e!1471139 () Bool)

(assert (=> b!2295726 (= e!1471138 e!1471139)))

(declare-fun res!981618 () Bool)

(assert (=> b!2295726 (=> (not res!981618) (not e!1471139))))

(declare-fun dynLambda!11877 (Int Rule!8554) Bool)

(assert (=> b!2295726 (= res!981618 (dynLambda!11877 lambda!85839 (h!32733 rules!1750)))))

(declare-fun b!2295727 () Bool)

(assert (=> b!2295727 (= e!1471139 (forall!5498 (t!205210 rules!1750) lambda!85839))))

(assert (= (and d!679110 (not res!981617)) b!2295726))

(assert (= (and b!2295726 res!981618) b!2295727))

(declare-fun b_lambda!73159 () Bool)

(assert (=> (not b_lambda!73159) (not b!2295726)))

(declare-fun m!2723219 () Bool)

(assert (=> b!2295726 m!2723219))

(declare-fun m!2723221 () Bool)

(assert (=> b!2295727 m!2723221))

(assert (=> d!678894 d!679110))

(declare-fun bs!457366 () Bool)

(declare-fun d!679116 () Bool)

(assert (= bs!457366 (and d!679116 d!679074)))

(declare-fun lambda!85859 () Int)

(assert (=> bs!457366 (= (= (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 (h!32733 rules!1750)))) (= lambda!85859 lambda!85852))))

(assert (=> d!679116 true))

(assert (=> d!679116 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (dynLambda!11874 order!15235 lambda!85859))))

(assert (=> d!679116 (= (equivClasses!1693 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (Forall2!712 lambda!85859))))

(declare-fun bs!457367 () Bool)

(assert (= bs!457367 d!679116))

(declare-fun m!2723223 () Bool)

(assert (=> bs!457367 m!2723223))

(assert (=> b!2295400 d!679116))

(assert (=> b!2295436 d!679106))

(assert (=> b!2295436 d!679108))

(declare-fun d!679118 () Bool)

(assert (=> d!679118 (= (isEmpty!15580 (list!10725 (charsOf!2765 (head!5010 tokens!456)))) ((_ is Nil!27330) (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (=> d!678970 d!679118))

(declare-fun b!2295752 () Bool)

(declare-fun e!1471162 () Bool)

(declare-fun e!1471164 () Bool)

(assert (=> b!2295752 (= e!1471162 e!1471164)))

(declare-fun c!364007 () Bool)

(assert (=> b!2295752 (= c!364007 ((_ is Star!6725) (regex!4377 r!2363)))))

(declare-fun b!2295753 () Bool)

(declare-fun e!1471161 () Bool)

(declare-fun e!1471165 () Bool)

(assert (=> b!2295753 (= e!1471161 e!1471165)))

(declare-fun res!981636 () Bool)

(assert (=> b!2295753 (=> (not res!981636) (not e!1471165))))

(declare-fun call!136866 () Bool)

(assert (=> b!2295753 (= res!981636 call!136866)))

(declare-fun b!2295754 () Bool)

(declare-fun e!1471166 () Bool)

(assert (=> b!2295754 (= e!1471166 call!136866)))

(declare-fun d!679120 () Bool)

(declare-fun res!981633 () Bool)

(assert (=> d!679120 (=> res!981633 e!1471162)))

(assert (=> d!679120 (= res!981633 ((_ is ElementMatch!6725) (regex!4377 r!2363)))))

(assert (=> d!679120 (= (validRegex!2534 (regex!4377 r!2363)) e!1471162)))

(declare-fun b!2295755 () Bool)

(declare-fun res!981635 () Bool)

(assert (=> b!2295755 (=> res!981635 e!1471161)))

(assert (=> b!2295755 (= res!981635 (not ((_ is Concat!11265) (regex!4377 r!2363))))))

(declare-fun e!1471160 () Bool)

(assert (=> b!2295755 (= e!1471160 e!1471161)))

(declare-fun bm!136860 () Bool)

(declare-fun call!136865 () Bool)

(assert (=> bm!136860 (= call!136866 call!136865)))

(declare-fun bm!136861 () Bool)

(declare-fun c!364006 () Bool)

(assert (=> bm!136861 (= call!136865 (validRegex!2534 (ite c!364007 (reg!7054 (regex!4377 r!2363)) (ite c!364006 (regTwo!13963 (regex!4377 r!2363)) (regOne!13962 (regex!4377 r!2363))))))))

(declare-fun b!2295756 () Bool)

(assert (=> b!2295756 (= e!1471164 e!1471160)))

(assert (=> b!2295756 (= c!364006 ((_ is Union!6725) (regex!4377 r!2363)))))

(declare-fun b!2295757 () Bool)

(declare-fun call!136867 () Bool)

(assert (=> b!2295757 (= e!1471165 call!136867)))

(declare-fun b!2295758 () Bool)

(declare-fun e!1471163 () Bool)

(assert (=> b!2295758 (= e!1471163 call!136865)))

(declare-fun b!2295759 () Bool)

(declare-fun res!981637 () Bool)

(assert (=> b!2295759 (=> (not res!981637) (not e!1471166))))

(assert (=> b!2295759 (= res!981637 call!136867)))

(assert (=> b!2295759 (= e!1471160 e!1471166)))

(declare-fun bm!136862 () Bool)

(assert (=> bm!136862 (= call!136867 (validRegex!2534 (ite c!364006 (regOne!13963 (regex!4377 r!2363)) (regTwo!13962 (regex!4377 r!2363)))))))

(declare-fun b!2295760 () Bool)

(assert (=> b!2295760 (= e!1471164 e!1471163)))

(declare-fun res!981634 () Bool)

(assert (=> b!2295760 (= res!981634 (not (nullable!1872 (reg!7054 (regex!4377 r!2363)))))))

(assert (=> b!2295760 (=> (not res!981634) (not e!1471163))))

(assert (= (and d!679120 (not res!981633)) b!2295752))

(assert (= (and b!2295752 c!364007) b!2295760))

(assert (= (and b!2295752 (not c!364007)) b!2295756))

(assert (= (and b!2295760 res!981634) b!2295758))

(assert (= (and b!2295756 c!364006) b!2295759))

(assert (= (and b!2295756 (not c!364006)) b!2295755))

(assert (= (and b!2295759 res!981637) b!2295754))

(assert (= (and b!2295755 (not res!981635)) b!2295753))

(assert (= (and b!2295753 res!981636) b!2295757))

(assert (= (or b!2295759 b!2295757) bm!136862))

(assert (= (or b!2295754 b!2295753) bm!136860))

(assert (= (or b!2295758 bm!136860) bm!136861))

(declare-fun m!2723261 () Bool)

(assert (=> bm!136861 m!2723261))

(declare-fun m!2723263 () Bool)

(assert (=> bm!136862 m!2723263))

(declare-fun m!2723265 () Bool)

(assert (=> b!2295760 m!2723265))

(assert (=> d!678970 d!679120))

(declare-fun bs!457370 () Bool)

(declare-fun d!679134 () Bool)

(assert (= bs!457370 (and d!679134 d!679074)))

(declare-fun lambda!85860 () Int)

(assert (=> bs!457370 (= (= (toValue!6175 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 (h!32733 rules!1750)))) (= lambda!85860 lambda!85852))))

(declare-fun bs!457371 () Bool)

(assert (= bs!457371 (and d!679134 d!679116)))

(assert (=> bs!457371 (= (= (toValue!6175 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (= lambda!85860 lambda!85859))))

(assert (=> d!679134 true))

(assert (=> d!679134 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 otherR!12))) (dynLambda!11874 order!15235 lambda!85860))))

(assert (=> d!679134 (= (equivClasses!1693 (toChars!6034 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 otherR!12))) (Forall2!712 lambda!85860))))

(declare-fun bs!457372 () Bool)

(assert (= bs!457372 d!679134))

(declare-fun m!2723267 () Bool)

(assert (=> bs!457372 m!2723267))

(assert (=> b!2295399 d!679134))

(declare-fun d!679136 () Bool)

(assert (=> d!679136 (= (isEmpty!15576 lt!851616) (not ((_ is Some!5366) lt!851616)))))

(assert (=> d!678954 d!679136))

(declare-fun b!2295763 () Bool)

(declare-fun e!1471168 () Bool)

(assert (=> b!2295763 (= e!1471168 (isPrefix!2367 (tail!3315 input!1722) (tail!3315 input!1722)))))

(declare-fun b!2295762 () Bool)

(declare-fun res!981638 () Bool)

(assert (=> b!2295762 (=> (not res!981638) (not e!1471168))))

(assert (=> b!2295762 (= res!981638 (= (head!5012 input!1722) (head!5012 input!1722)))))

(declare-fun b!2295761 () Bool)

(declare-fun e!1471169 () Bool)

(assert (=> b!2295761 (= e!1471169 e!1471168)))

(declare-fun res!981640 () Bool)

(assert (=> b!2295761 (=> (not res!981640) (not e!1471168))))

(assert (=> b!2295761 (= res!981640 (not ((_ is Nil!27330) input!1722)))))

(declare-fun d!679138 () Bool)

(declare-fun e!1471167 () Bool)

(assert (=> d!679138 e!1471167))

(declare-fun res!981641 () Bool)

(assert (=> d!679138 (=> res!981641 e!1471167)))

(declare-fun lt!851687 () Bool)

(assert (=> d!679138 (= res!981641 (not lt!851687))))

(assert (=> d!679138 (= lt!851687 e!1471169)))

(declare-fun res!981639 () Bool)

(assert (=> d!679138 (=> res!981639 e!1471169)))

(assert (=> d!679138 (= res!981639 ((_ is Nil!27330) input!1722))))

(assert (=> d!679138 (= (isPrefix!2367 input!1722 input!1722) lt!851687)))

(declare-fun b!2295764 () Bool)

(assert (=> b!2295764 (= e!1471167 (>= (size!21530 input!1722) (size!21530 input!1722)))))

(assert (= (and d!679138 (not res!981639)) b!2295761))

(assert (= (and b!2295761 res!981640) b!2295762))

(assert (= (and b!2295762 res!981638) b!2295763))

(assert (= (and d!679138 (not res!981641)) b!2295764))

(assert (=> b!2295763 m!2722747))

(assert (=> b!2295763 m!2722747))

(assert (=> b!2295763 m!2722747))

(assert (=> b!2295763 m!2722747))

(declare-fun m!2723269 () Bool)

(assert (=> b!2295763 m!2723269))

(assert (=> b!2295762 m!2722753))

(assert (=> b!2295762 m!2722753))

(assert (=> b!2295764 m!2722755))

(assert (=> b!2295764 m!2722755))

(assert (=> d!678954 d!679138))

(declare-fun d!679140 () Bool)

(assert (=> d!679140 (isPrefix!2367 input!1722 input!1722)))

(declare-fun lt!851690 () Unit!40218)

(declare-fun choose!13402 (List!27424 List!27424) Unit!40218)

(assert (=> d!679140 (= lt!851690 (choose!13402 input!1722 input!1722))))

(assert (=> d!679140 (= (lemmaIsPrefixRefl!1503 input!1722 input!1722) lt!851690)))

(declare-fun bs!457374 () Bool)

(assert (= bs!457374 d!679140))

(assert (=> bs!457374 m!2722927))

(declare-fun m!2723273 () Bool)

(assert (=> bs!457374 m!2723273))

(assert (=> d!678954 d!679140))

(assert (=> d!678954 d!678894))

(declare-fun d!679144 () Bool)

(declare-fun nullableFct!455 (Regex!6725) Bool)

(assert (=> d!679144 (= (nullable!1872 (regex!4377 otherR!12)) (nullableFct!455 (regex!4377 otherR!12)))))

(declare-fun bs!457375 () Bool)

(assert (= bs!457375 d!679144))

(declare-fun m!2723275 () Bool)

(assert (=> bs!457375 m!2723275))

(assert (=> b!2295163 d!679144))

(declare-fun d!679146 () Bool)

(assert (=> d!679146 (= (inv!36937 (tag!4867 (h!32733 (t!205210 rules!1750)))) (= (mod (str.len (value!138563 (tag!4867 (h!32733 (t!205210 rules!1750))))) 2) 0))))

(assert (=> b!2295488 d!679146))

(declare-fun d!679148 () Bool)

(declare-fun res!981642 () Bool)

(declare-fun e!1471170 () Bool)

(assert (=> d!679148 (=> (not res!981642) (not e!1471170))))

(assert (=> d!679148 (= res!981642 (semiInverseModEq!1774 (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toValue!6175 (transformation!4377 (h!32733 (t!205210 rules!1750))))))))

(assert (=> d!679148 (= (inv!36941 (transformation!4377 (h!32733 (t!205210 rules!1750)))) e!1471170)))

(declare-fun b!2295765 () Bool)

(assert (=> b!2295765 (= e!1471170 (equivClasses!1693 (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toValue!6175 (transformation!4377 (h!32733 (t!205210 rules!1750))))))))

(assert (= (and d!679148 res!981642) b!2295765))

(declare-fun m!2723277 () Bool)

(assert (=> d!679148 m!2723277))

(declare-fun m!2723279 () Bool)

(assert (=> b!2295765 m!2723279))

(assert (=> b!2295488 d!679148))

(assert (=> b!2295393 d!679100))

(declare-fun d!679150 () Bool)

(declare-fun dynLambda!11878 (Int BalanceConc!17532) TokenValue!4539)

(assert (=> d!679150 (= (apply!6643 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))) (seqFromList!3081 (originalCharacters!5147 (_1!16095 (get!8239 lt!851616))))) (dynLambda!11878 (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))) (seqFromList!3081 (originalCharacters!5147 (_1!16095 (get!8239 lt!851616))))))))

(declare-fun b_lambda!73163 () Bool)

(assert (=> (not b_lambda!73163) (not d!679150)))

(declare-fun tb!137107 () Bool)

(declare-fun t!205301 () Bool)

(assert (=> (and b!2295030 (= (toValue!6175 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205301) tb!137107))

(declare-fun result!167140 () Bool)

(assert (=> tb!137107 (= result!167140 (inv!21 (dynLambda!11878 (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616))))) (seqFromList!3081 (originalCharacters!5147 (_1!16095 (get!8239 lt!851616)))))))))

(declare-fun m!2723283 () Bool)

(assert (=> tb!137107 m!2723283))

(assert (=> d!679150 t!205301))

(declare-fun b_and!182629 () Bool)

(assert (= b_and!182537 (and (=> t!205301 result!167140) b_and!182629)))

(declare-fun tb!137109 () Bool)

(declare-fun t!205303 () Bool)

(assert (=> (and b!2295013 (= (toValue!6175 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205303) tb!137109))

(declare-fun result!167144 () Bool)

(assert (= result!167144 result!167140))

(assert (=> d!679150 t!205303))

(declare-fun b_and!182631 () Bool)

(assert (= b_and!182529 (and (=> t!205303 result!167144) b_and!182631)))

(declare-fun t!205305 () Bool)

(declare-fun tb!137111 () Bool)

(assert (=> (and b!2295042 (= (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205305) tb!137111))

(declare-fun result!167146 () Bool)

(assert (= result!167146 result!167140))

(assert (=> d!679150 t!205305))

(declare-fun b_and!182633 () Bool)

(assert (= b_and!182541 (and (=> t!205305 result!167146) b_and!182633)))

(declare-fun tb!137113 () Bool)

(declare-fun t!205307 () Bool)

(assert (=> (and b!2295489 (= (toValue!6175 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205307) tb!137113))

(declare-fun result!167148 () Bool)

(assert (= result!167148 result!167140))

(assert (=> d!679150 t!205307))

(declare-fun b_and!182635 () Bool)

(assert (= b_and!182585 (and (=> t!205307 result!167148) b_and!182635)))

(declare-fun tb!137115 () Bool)

(declare-fun t!205309 () Bool)

(assert (=> (and b!2295026 (= (toValue!6175 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205309) tb!137115))

(declare-fun result!167150 () Bool)

(assert (= result!167150 result!167140))

(assert (=> d!679150 t!205309))

(declare-fun b_and!182637 () Bool)

(assert (= b_and!182533 (and (=> t!205309 result!167150) b_and!182637)))

(declare-fun t!205311 () Bool)

(declare-fun tb!137117 () Bool)

(assert (=> (and b!2295503 (= (toValue!6175 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205311) tb!137117))

(declare-fun result!167152 () Bool)

(assert (= result!167152 result!167140))

(assert (=> d!679150 t!205311))

(declare-fun b_and!182639 () Bool)

(assert (= b_and!182589 (and (=> t!205311 result!167152) b_and!182639)))

(assert (=> d!679150 m!2722919))

(declare-fun m!2723285 () Bool)

(assert (=> d!679150 m!2723285))

(assert (=> b!2295393 d!679150))

(declare-fun d!679154 () Bool)

(assert (=> d!679154 (= (seqFromList!3081 (originalCharacters!5147 (_1!16095 (get!8239 lt!851616)))) (fromListB!1384 (originalCharacters!5147 (_1!16095 (get!8239 lt!851616)))))))

(declare-fun bs!457377 () Bool)

(assert (= bs!457377 d!679154))

(declare-fun m!2723287 () Bool)

(assert (=> bs!457377 m!2723287))

(assert (=> b!2295393 d!679154))

(declare-fun b!2295847 () Bool)

(declare-fun res!981673 () Bool)

(declare-fun e!1471214 () Bool)

(assert (=> b!2295847 (=> (not res!981673) (not e!1471214))))

(declare-fun lt!851713 () Option!5367)

(assert (=> b!2295847 (= res!981673 (= (rule!6715 (_1!16095 (get!8239 lt!851713))) (h!32733 rules!1750)))))

(declare-fun b!2295848 () Bool)

(declare-fun res!981678 () Bool)

(assert (=> b!2295848 (=> (not res!981678) (not e!1471214))))

(assert (=> b!2295848 (= res!981678 (= (value!138564 (_1!16095 (get!8239 lt!851713))) (apply!6643 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851713)))) (seqFromList!3081 (originalCharacters!5147 (_1!16095 (get!8239 lt!851713)))))))))

(declare-fun d!679156 () Bool)

(declare-fun e!1471213 () Bool)

(assert (=> d!679156 e!1471213))

(declare-fun res!981675 () Bool)

(assert (=> d!679156 (=> res!981675 e!1471213)))

(assert (=> d!679156 (= res!981675 (isEmpty!15576 lt!851713))))

(declare-fun e!1471215 () Option!5367)

(assert (=> d!679156 (= lt!851713 e!1471215)))

(declare-fun c!364030 () Bool)

(declare-datatypes ((tuple2!27172 0))(
  ( (tuple2!27173 (_1!16096 List!27424) (_2!16096 List!27424)) )
))
(declare-fun lt!851710 () tuple2!27172)

(assert (=> d!679156 (= c!364030 (isEmpty!15580 (_1!16096 lt!851710)))))

(declare-fun findLongestMatch!653 (Regex!6725 List!27424) tuple2!27172)

(assert (=> d!679156 (= lt!851710 (findLongestMatch!653 (regex!4377 (h!32733 rules!1750)) input!1722))))

(assert (=> d!679156 (ruleValid!1467 thiss!16613 (h!32733 rules!1750))))

(assert (=> d!679156 (= (maxPrefixOneRule!1402 thiss!16613 (h!32733 rules!1750) input!1722) lt!851713)))

(declare-fun b!2295849 () Bool)

(declare-fun res!981677 () Bool)

(assert (=> b!2295849 (=> (not res!981677) (not e!1471214))))

(assert (=> b!2295849 (= res!981677 (= (++!6681 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851713)))) (_2!16095 (get!8239 lt!851713))) input!1722))))

(declare-fun b!2295850 () Bool)

(assert (=> b!2295850 (= e!1471215 None!5366)))

(declare-fun b!2295851 () Bool)

(declare-fun e!1471216 () Bool)

(declare-fun findLongestMatchInner!724 (Regex!6725 List!27424 Int List!27424 List!27424 Int) tuple2!27172)

(assert (=> b!2295851 (= e!1471216 (matchR!2982 (regex!4377 (h!32733 rules!1750)) (_1!16096 (findLongestMatchInner!724 (regex!4377 (h!32733 rules!1750)) Nil!27330 (size!21530 Nil!27330) input!1722 input!1722 (size!21530 input!1722)))))))

(declare-fun b!2295852 () Bool)

(assert (=> b!2295852 (= e!1471215 (Some!5366 (tuple2!27171 (Token!8233 (apply!6643 (transformation!4377 (h!32733 rules!1750)) (seqFromList!3081 (_1!16096 lt!851710))) (h!32733 rules!1750) (size!21529 (seqFromList!3081 (_1!16096 lt!851710))) (_1!16096 lt!851710)) (_2!16096 lt!851710))))))

(declare-fun lt!851712 () Unit!40218)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!697 (Regex!6725 List!27424) Unit!40218)

(assert (=> b!2295852 (= lt!851712 (longestMatchIsAcceptedByMatchOrIsEmpty!697 (regex!4377 (h!32733 rules!1750)) input!1722))))

(declare-fun res!981679 () Bool)

(assert (=> b!2295852 (= res!981679 (isEmpty!15580 (_1!16096 (findLongestMatchInner!724 (regex!4377 (h!32733 rules!1750)) Nil!27330 (size!21530 Nil!27330) input!1722 input!1722 (size!21530 input!1722)))))))

(assert (=> b!2295852 (=> res!981679 e!1471216)))

(assert (=> b!2295852 e!1471216))

(declare-fun lt!851711 () Unit!40218)

(assert (=> b!2295852 (= lt!851711 lt!851712)))

(declare-fun lt!851714 () Unit!40218)

(declare-fun lemmaSemiInverse!1069 (TokenValueInjection!8618 BalanceConc!17532) Unit!40218)

(assert (=> b!2295852 (= lt!851714 (lemmaSemiInverse!1069 (transformation!4377 (h!32733 rules!1750)) (seqFromList!3081 (_1!16096 lt!851710))))))

(declare-fun b!2295853 () Bool)

(declare-fun res!981674 () Bool)

(assert (=> b!2295853 (=> (not res!981674) (not e!1471214))))

(assert (=> b!2295853 (= res!981674 (< (size!21530 (_2!16095 (get!8239 lt!851713))) (size!21530 input!1722)))))

(declare-fun b!2295854 () Bool)

(assert (=> b!2295854 (= e!1471213 e!1471214)))

(declare-fun res!981676 () Bool)

(assert (=> b!2295854 (=> (not res!981676) (not e!1471214))))

(assert (=> b!2295854 (= res!981676 (matchR!2982 (regex!4377 (h!32733 rules!1750)) (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851713))))))))

(declare-fun b!2295855 () Bool)

(assert (=> b!2295855 (= e!1471214 (= (size!21528 (_1!16095 (get!8239 lt!851713))) (size!21530 (originalCharacters!5147 (_1!16095 (get!8239 lt!851713))))))))

(assert (= (and d!679156 c!364030) b!2295850))

(assert (= (and d!679156 (not c!364030)) b!2295852))

(assert (= (and b!2295852 (not res!981679)) b!2295851))

(assert (= (and d!679156 (not res!981675)) b!2295854))

(assert (= (and b!2295854 res!981676) b!2295849))

(assert (= (and b!2295849 res!981677) b!2295853))

(assert (= (and b!2295853 res!981674) b!2295847))

(assert (= (and b!2295847 res!981673) b!2295848))

(assert (= (and b!2295848 res!981678) b!2295855))

(declare-fun m!2723355 () Bool)

(assert (=> b!2295849 m!2723355))

(declare-fun m!2723357 () Bool)

(assert (=> b!2295849 m!2723357))

(assert (=> b!2295849 m!2723357))

(declare-fun m!2723359 () Bool)

(assert (=> b!2295849 m!2723359))

(assert (=> b!2295849 m!2723359))

(declare-fun m!2723361 () Bool)

(assert (=> b!2295849 m!2723361))

(declare-fun m!2723363 () Bool)

(assert (=> b!2295851 m!2723363))

(assert (=> b!2295851 m!2722755))

(assert (=> b!2295851 m!2723363))

(assert (=> b!2295851 m!2722755))

(declare-fun m!2723365 () Bool)

(assert (=> b!2295851 m!2723365))

(declare-fun m!2723367 () Bool)

(assert (=> b!2295851 m!2723367))

(assert (=> b!2295855 m!2723355))

(declare-fun m!2723369 () Bool)

(assert (=> b!2295855 m!2723369))

(declare-fun m!2723371 () Bool)

(assert (=> d!679156 m!2723371))

(declare-fun m!2723373 () Bool)

(assert (=> d!679156 m!2723373))

(declare-fun m!2723375 () Bool)

(assert (=> d!679156 m!2723375))

(assert (=> d!679156 m!2722881))

(assert (=> b!2295848 m!2723355))

(declare-fun m!2723377 () Bool)

(assert (=> b!2295848 m!2723377))

(assert (=> b!2295848 m!2723377))

(declare-fun m!2723379 () Bool)

(assert (=> b!2295848 m!2723379))

(assert (=> b!2295853 m!2723355))

(declare-fun m!2723381 () Bool)

(assert (=> b!2295853 m!2723381))

(assert (=> b!2295853 m!2722755))

(assert (=> b!2295854 m!2723355))

(assert (=> b!2295854 m!2723357))

(assert (=> b!2295854 m!2723357))

(assert (=> b!2295854 m!2723359))

(assert (=> b!2295854 m!2723359))

(declare-fun m!2723383 () Bool)

(assert (=> b!2295854 m!2723383))

(declare-fun m!2723385 () Bool)

(assert (=> b!2295852 m!2723385))

(declare-fun m!2723387 () Bool)

(assert (=> b!2295852 m!2723387))

(assert (=> b!2295852 m!2722755))

(declare-fun m!2723389 () Bool)

(assert (=> b!2295852 m!2723389))

(declare-fun m!2723391 () Bool)

(assert (=> b!2295852 m!2723391))

(assert (=> b!2295852 m!2723385))

(assert (=> b!2295852 m!2723385))

(declare-fun m!2723393 () Bool)

(assert (=> b!2295852 m!2723393))

(assert (=> b!2295852 m!2723385))

(declare-fun m!2723395 () Bool)

(assert (=> b!2295852 m!2723395))

(assert (=> b!2295852 m!2723363))

(assert (=> b!2295852 m!2722755))

(assert (=> b!2295852 m!2723365))

(assert (=> b!2295852 m!2723363))

(assert (=> b!2295847 m!2723355))

(assert (=> bm!136838 d!679156))

(declare-fun d!679190 () Bool)

(assert (=> d!679190 (= (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))) (h!32731 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (=> b!2295438 d!679190))

(declare-fun d!679192 () Bool)

(declare-fun lt!851715 () Int)

(assert (=> d!679192 (>= lt!851715 0)))

(declare-fun e!1471217 () Int)

(assert (=> d!679192 (= lt!851715 e!1471217)))

(declare-fun c!364031 () Bool)

(assert (=> d!679192 (= c!364031 ((_ is Nil!27330) (originalCharacters!5147 (h!32732 tokens!456))))))

(assert (=> d!679192 (= (size!21530 (originalCharacters!5147 (h!32732 tokens!456))) lt!851715)))

(declare-fun b!2295856 () Bool)

(assert (=> b!2295856 (= e!1471217 0)))

(declare-fun b!2295857 () Bool)

(assert (=> b!2295857 (= e!1471217 (+ 1 (size!21530 (t!205208 (originalCharacters!5147 (h!32732 tokens!456))))))))

(assert (= (and d!679192 c!364031) b!2295856))

(assert (= (and d!679192 (not c!364031)) b!2295857))

(declare-fun m!2723397 () Bool)

(assert (=> b!2295857 m!2723397))

(assert (=> b!2295367 d!679192))

(declare-fun d!679194 () Bool)

(declare-fun lt!851716 () Bool)

(assert (=> d!679194 (= lt!851716 (select (content!3671 rules!1750) (rule!6715 (_1!16095 (get!8239 lt!851616)))))))

(declare-fun e!1471219 () Bool)

(assert (=> d!679194 (= lt!851716 e!1471219)))

(declare-fun res!981680 () Bool)

(assert (=> d!679194 (=> (not res!981680) (not e!1471219))))

(assert (=> d!679194 (= res!981680 ((_ is Cons!27332) rules!1750))))

(assert (=> d!679194 (= (contains!4757 rules!1750 (rule!6715 (_1!16095 (get!8239 lt!851616)))) lt!851716)))

(declare-fun b!2295858 () Bool)

(declare-fun e!1471218 () Bool)

(assert (=> b!2295858 (= e!1471219 e!1471218)))

(declare-fun res!981681 () Bool)

(assert (=> b!2295858 (=> res!981681 e!1471218)))

(assert (=> b!2295858 (= res!981681 (= (h!32733 rules!1750) (rule!6715 (_1!16095 (get!8239 lt!851616)))))))

(declare-fun b!2295859 () Bool)

(assert (=> b!2295859 (= e!1471218 (contains!4757 (t!205210 rules!1750) (rule!6715 (_1!16095 (get!8239 lt!851616)))))))

(assert (= (and d!679194 res!981680) b!2295858))

(assert (= (and b!2295858 (not res!981681)) b!2295859))

(assert (=> d!679194 m!2722757))

(declare-fun m!2723399 () Bool)

(assert (=> d!679194 m!2723399))

(declare-fun m!2723401 () Bool)

(assert (=> b!2295859 m!2723401))

(assert (=> b!2295398 d!679194))

(assert (=> b!2295398 d!679100))

(declare-fun d!679196 () Bool)

(assert (=> d!679196 (= r!2363 otherR!12)))

(assert (=> d!679196 true))

(declare-fun _$42!205 () Unit!40218)

(assert (=> d!679196 (= (choose!13401 rules!1750 r!2363 otherR!12) _$42!205)))

(assert (=> d!678968 d!679196))

(assert (=> d!678968 d!678886))

(declare-fun d!679198 () Bool)

(assert (=> d!679198 (= (nullable!1872 (regex!4377 r!2363)) (nullableFct!455 (regex!4377 r!2363)))))

(declare-fun bs!457390 () Bool)

(assert (= bs!457390 d!679198))

(declare-fun m!2723403 () Bool)

(assert (=> bs!457390 m!2723403))

(assert (=> b!2295442 d!679198))

(assert (=> b!2295440 d!679190))

(declare-fun d!679200 () Bool)

(declare-fun c!364034 () Bool)

(assert (=> d!679200 (= c!364034 ((_ is Nil!27332) rules!1750))))

(declare-fun e!1471222 () (InoxSet Rule!8554))

(assert (=> d!679200 (= (content!3671 rules!1750) e!1471222)))

(declare-fun b!2295864 () Bool)

(assert (=> b!2295864 (= e!1471222 ((as const (Array Rule!8554 Bool)) false))))

(declare-fun b!2295865 () Bool)

(assert (=> b!2295865 (= e!1471222 ((_ map or) (store ((as const (Array Rule!8554 Bool)) false) (h!32733 rules!1750) true) (content!3671 (t!205210 rules!1750))))))

(assert (= (and d!679200 c!364034) b!2295864))

(assert (= (and d!679200 (not c!364034)) b!2295865))

(declare-fun m!2723405 () Bool)

(assert (=> b!2295865 m!2723405))

(assert (=> b!2295865 m!2723109))

(assert (=> d!678974 d!679200))

(declare-fun d!679202 () Bool)

(declare-fun res!981682 () Bool)

(declare-fun e!1471223 () Bool)

(assert (=> d!679202 (=> (not res!981682) (not e!1471223))))

(assert (=> d!679202 (= res!981682 (validRegex!2534 (regex!4377 (h!32733 rules!1750))))))

(assert (=> d!679202 (= (ruleValid!1467 thiss!16613 (h!32733 rules!1750)) e!1471223)))

(declare-fun b!2295866 () Bool)

(declare-fun res!981683 () Bool)

(assert (=> b!2295866 (=> (not res!981683) (not e!1471223))))

(assert (=> b!2295866 (= res!981683 (not (nullable!1872 (regex!4377 (h!32733 rules!1750)))))))

(declare-fun b!2295867 () Bool)

(assert (=> b!2295867 (= e!1471223 (not (= (tag!4867 (h!32733 rules!1750)) (String!29800 ""))))))

(assert (= (and d!679202 res!981682) b!2295866))

(assert (= (and b!2295866 res!981683) b!2295867))

(declare-fun m!2723407 () Bool)

(assert (=> d!679202 m!2723407))

(declare-fun m!2723409 () Bool)

(assert (=> b!2295866 m!2723409))

(assert (=> b!2295358 d!679202))

(declare-fun d!679204 () Bool)

(assert (=> d!679204 (= (inv!36945 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))) (isBalanced!2684 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))))))

(declare-fun bs!457391 () Bool)

(assert (= bs!457391 d!679204))

(declare-fun m!2723411 () Bool)

(assert (=> bs!457391 m!2723411))

(assert (=> tb!137055 d!679204))

(declare-fun d!679206 () Bool)

(declare-fun e!1471226 () Bool)

(assert (=> d!679206 e!1471226))

(declare-fun res!981686 () Bool)

(assert (=> d!679206 (=> (not res!981686) (not e!1471226))))

(declare-fun lt!851719 () BalanceConc!17532)

(assert (=> d!679206 (= res!981686 (= (list!10725 lt!851719) input!1722))))

(declare-fun fromList!542 (List!27424) Conc!8902)

(assert (=> d!679206 (= lt!851719 (BalanceConc!17533 (fromList!542 input!1722)))))

(assert (=> d!679206 (= (fromListB!1384 input!1722) lt!851719)))

(declare-fun b!2295870 () Bool)

(assert (=> b!2295870 (= e!1471226 (isBalanced!2684 (fromList!542 input!1722)))))

(assert (= (and d!679206 res!981686) b!2295870))

(declare-fun m!2723413 () Bool)

(assert (=> d!679206 m!2723413))

(declare-fun m!2723415 () Bool)

(assert (=> d!679206 m!2723415))

(assert (=> b!2295870 m!2723415))

(assert (=> b!2295870 m!2723415))

(declare-fun m!2723417 () Bool)

(assert (=> b!2295870 m!2723417))

(assert (=> d!678882 d!679206))

(declare-fun d!679208 () Bool)

(declare-fun lt!851720 () Int)

(assert (=> d!679208 (= lt!851720 (size!21530 (list!10725 (_2!16093 lt!851558))))))

(assert (=> d!679208 (= lt!851720 (size!21533 (c!363882 (_2!16093 lt!851558))))))

(assert (=> d!679208 (= (size!21529 (_2!16093 lt!851558)) lt!851720)))

(declare-fun bs!457392 () Bool)

(assert (= bs!457392 d!679208))

(assert (=> bs!457392 m!2722741))

(assert (=> bs!457392 m!2722741))

(declare-fun m!2723419 () Bool)

(assert (=> bs!457392 m!2723419))

(declare-fun m!2723421 () Bool)

(assert (=> bs!457392 m!2723421))

(assert (=> b!2295186 d!679208))

(declare-fun d!679210 () Bool)

(declare-fun lt!851721 () Int)

(assert (=> d!679210 (= lt!851721 (size!21530 (list!10725 (seqFromList!3081 input!1722))))))

(assert (=> d!679210 (= lt!851721 (size!21533 (c!363882 (seqFromList!3081 input!1722))))))

(assert (=> d!679210 (= (size!21529 (seqFromList!3081 input!1722)) lt!851721)))

(declare-fun bs!457393 () Bool)

(assert (= bs!457393 d!679210))

(assert (=> bs!457393 m!2722573))

(assert (=> bs!457393 m!2722737))

(assert (=> bs!457393 m!2722737))

(assert (=> bs!457393 m!2723089))

(declare-fun m!2723423 () Bool)

(assert (=> bs!457393 m!2723423))

(assert (=> b!2295186 d!679210))

(assert (=> d!678950 d!678948))

(declare-fun d!679212 () Bool)

(assert (=> d!679212 (ruleValid!1467 thiss!16613 r!2363)))

(assert (=> d!679212 true))

(declare-fun _$65!1157 () Unit!40218)

(assert (=> d!679212 (= (choose!13400 thiss!16613 r!2363 rules!1750) _$65!1157)))

(declare-fun bs!457394 () Bool)

(assert (= bs!457394 d!679212))

(assert (=> bs!457394 m!2722619))

(assert (=> d!678950 d!679212))

(assert (=> d!678950 d!678886))

(declare-fun d!679214 () Bool)

(assert (=> d!679214 (= (head!5012 otherP!12) (h!32731 otherP!12))))

(assert (=> b!2295199 d!679214))

(declare-fun d!679216 () Bool)

(assert (=> d!679216 (= (head!5012 input!1722) (h!32731 input!1722))))

(assert (=> b!2295199 d!679216))

(declare-fun d!679218 () Bool)

(declare-fun charsToBigInt!1 (List!27423) Int)

(assert (=> d!679218 (= (inv!17 (value!138564 (h!32732 tokens!456))) (= (charsToBigInt!1 (text!32221 (value!138564 (h!32732 tokens!456)))) (value!138556 (value!138564 (h!32732 tokens!456)))))))

(declare-fun bs!457395 () Bool)

(assert (= bs!457395 d!679218))

(declare-fun m!2723425 () Bool)

(assert (=> bs!457395 m!2723425))

(assert (=> b!2295459 d!679218))

(declare-fun d!679220 () Bool)

(declare-fun charsToBigInt!0 (List!27423 Int) Int)

(assert (=> d!679220 (= (inv!15 (value!138564 (h!32732 tokens!456))) (= (charsToBigInt!0 (text!32222 (value!138564 (h!32732 tokens!456))) 0) (value!138559 (value!138564 (h!32732 tokens!456)))))))

(declare-fun bs!457396 () Bool)

(assert (= bs!457396 d!679220))

(declare-fun m!2723427 () Bool)

(assert (=> bs!457396 m!2723427))

(assert (=> b!2295457 d!679220))

(declare-fun d!679222 () Bool)

(declare-fun lt!851722 () Int)

(assert (=> d!679222 (>= lt!851722 0)))

(declare-fun e!1471227 () Int)

(assert (=> d!679222 (= lt!851722 e!1471227)))

(declare-fun c!364036 () Bool)

(assert (=> d!679222 (= c!364036 ((_ is Nil!27330) (t!205208 otherP!12)))))

(assert (=> d!679222 (= (size!21530 (t!205208 otherP!12)) lt!851722)))

(declare-fun b!2295871 () Bool)

(assert (=> b!2295871 (= e!1471227 0)))

(declare-fun b!2295872 () Bool)

(assert (=> b!2295872 (= e!1471227 (+ 1 (size!21530 (t!205208 (t!205208 otherP!12)))))))

(assert (= (and d!679222 c!364036) b!2295871))

(assert (= (and d!679222 (not c!364036)) b!2295872))

(declare-fun m!2723429 () Bool)

(assert (=> b!2295872 m!2723429))

(assert (=> b!2295115 d!679222))

(declare-fun d!679224 () Bool)

(declare-fun c!364041 () Bool)

(assert (=> d!679224 (= c!364041 ((_ is Empty!8903) (c!363884 (_1!16093 lt!851517))))))

(declare-fun e!1471232 () List!27425)

(assert (=> d!679224 (= (list!10728 (c!363884 (_1!16093 lt!851517))) e!1471232)))

(declare-fun b!2295884 () Bool)

(declare-fun e!1471233 () List!27425)

(declare-fun ++!6682 (List!27425 List!27425) List!27425)

(assert (=> b!2295884 (= e!1471233 (++!6682 (list!10728 (left!20716 (c!363884 (_1!16093 lt!851517)))) (list!10728 (right!21046 (c!363884 (_1!16093 lt!851517))))))))

(declare-fun b!2295882 () Bool)

(assert (=> b!2295882 (= e!1471232 e!1471233)))

(declare-fun c!364042 () Bool)

(assert (=> b!2295882 (= c!364042 ((_ is Leaf!13077) (c!363884 (_1!16093 lt!851517))))))

(declare-fun b!2295881 () Bool)

(assert (=> b!2295881 (= e!1471232 Nil!27331)))

(declare-fun b!2295883 () Bool)

(declare-fun list!10731 (IArray!17811) List!27425)

(assert (=> b!2295883 (= e!1471233 (list!10731 (xs!11845 (c!363884 (_1!16093 lt!851517)))))))

(assert (= (and d!679224 c!364041) b!2295881))

(assert (= (and d!679224 (not c!364041)) b!2295882))

(assert (= (and b!2295882 c!364042) b!2295883))

(assert (= (and b!2295882 (not c!364042)) b!2295884))

(declare-fun m!2723431 () Bool)

(assert (=> b!2295884 m!2723431))

(declare-fun m!2723433 () Bool)

(assert (=> b!2295884 m!2723433))

(assert (=> b!2295884 m!2723431))

(assert (=> b!2295884 m!2723433))

(declare-fun m!2723435 () Bool)

(assert (=> b!2295884 m!2723435))

(declare-fun m!2723437 () Bool)

(assert (=> b!2295883 m!2723437))

(assert (=> d!678876 d!679224))

(declare-fun d!679226 () Bool)

(declare-fun lt!851723 () Int)

(assert (=> d!679226 (>= lt!851723 0)))

(declare-fun e!1471234 () Int)

(assert (=> d!679226 (= lt!851723 e!1471234)))

(declare-fun c!364043 () Bool)

(assert (=> d!679226 (= c!364043 ((_ is Nil!27330) input!1722))))

(assert (=> d!679226 (= (size!21530 input!1722) lt!851723)))

(declare-fun b!2295885 () Bool)

(assert (=> b!2295885 (= e!1471234 0)))

(declare-fun b!2295886 () Bool)

(assert (=> b!2295886 (= e!1471234 (+ 1 (size!21530 (t!205208 input!1722))))))

(assert (= (and d!679226 c!364043) b!2295885))

(assert (= (and d!679226 (not c!364043)) b!2295886))

(declare-fun m!2723439 () Bool)

(assert (=> b!2295886 m!2723439))

(assert (=> b!2295201 d!679226))

(assert (=> b!2295201 d!678846))

(declare-fun b!2295887 () Bool)

(declare-fun e!1471237 () Bool)

(declare-fun e!1471239 () Bool)

(assert (=> b!2295887 (= e!1471237 e!1471239)))

(declare-fun c!364045 () Bool)

(assert (=> b!2295887 (= c!364045 ((_ is Star!6725) (regex!4377 otherR!12)))))

(declare-fun b!2295888 () Bool)

(declare-fun e!1471236 () Bool)

(declare-fun e!1471240 () Bool)

(assert (=> b!2295888 (= e!1471236 e!1471240)))

(declare-fun res!981690 () Bool)

(assert (=> b!2295888 (=> (not res!981690) (not e!1471240))))

(declare-fun call!136882 () Bool)

(assert (=> b!2295888 (= res!981690 call!136882)))

(declare-fun b!2295889 () Bool)

(declare-fun e!1471241 () Bool)

(assert (=> b!2295889 (= e!1471241 call!136882)))

(declare-fun d!679228 () Bool)

(declare-fun res!981687 () Bool)

(assert (=> d!679228 (=> res!981687 e!1471237)))

(assert (=> d!679228 (= res!981687 ((_ is ElementMatch!6725) (regex!4377 otherR!12)))))

(assert (=> d!679228 (= (validRegex!2534 (regex!4377 otherR!12)) e!1471237)))

(declare-fun b!2295890 () Bool)

(declare-fun res!981689 () Bool)

(assert (=> b!2295890 (=> res!981689 e!1471236)))

(assert (=> b!2295890 (= res!981689 (not ((_ is Concat!11265) (regex!4377 otherR!12))))))

(declare-fun e!1471235 () Bool)

(assert (=> b!2295890 (= e!1471235 e!1471236)))

(declare-fun bm!136876 () Bool)

(declare-fun call!136881 () Bool)

(assert (=> bm!136876 (= call!136882 call!136881)))

(declare-fun bm!136877 () Bool)

(declare-fun c!364044 () Bool)

(assert (=> bm!136877 (= call!136881 (validRegex!2534 (ite c!364045 (reg!7054 (regex!4377 otherR!12)) (ite c!364044 (regTwo!13963 (regex!4377 otherR!12)) (regOne!13962 (regex!4377 otherR!12))))))))

(declare-fun b!2295891 () Bool)

(assert (=> b!2295891 (= e!1471239 e!1471235)))

(assert (=> b!2295891 (= c!364044 ((_ is Union!6725) (regex!4377 otherR!12)))))

(declare-fun b!2295892 () Bool)

(declare-fun call!136883 () Bool)

(assert (=> b!2295892 (= e!1471240 call!136883)))

(declare-fun b!2295893 () Bool)

(declare-fun e!1471238 () Bool)

(assert (=> b!2295893 (= e!1471238 call!136881)))

(declare-fun b!2295894 () Bool)

(declare-fun res!981691 () Bool)

(assert (=> b!2295894 (=> (not res!981691) (not e!1471241))))

(assert (=> b!2295894 (= res!981691 call!136883)))

(assert (=> b!2295894 (= e!1471235 e!1471241)))

(declare-fun bm!136878 () Bool)

(assert (=> bm!136878 (= call!136883 (validRegex!2534 (ite c!364044 (regOne!13963 (regex!4377 otherR!12)) (regTwo!13962 (regex!4377 otherR!12)))))))

(declare-fun b!2295895 () Bool)

(assert (=> b!2295895 (= e!1471239 e!1471238)))

(declare-fun res!981688 () Bool)

(assert (=> b!2295895 (= res!981688 (not (nullable!1872 (reg!7054 (regex!4377 otherR!12)))))))

(assert (=> b!2295895 (=> (not res!981688) (not e!1471238))))

(assert (= (and d!679228 (not res!981687)) b!2295887))

(assert (= (and b!2295887 c!364045) b!2295895))

(assert (= (and b!2295887 (not c!364045)) b!2295891))

(assert (= (and b!2295895 res!981688) b!2295893))

(assert (= (and b!2295891 c!364044) b!2295894))

(assert (= (and b!2295891 (not c!364044)) b!2295890))

(assert (= (and b!2295894 res!981691) b!2295889))

(assert (= (and b!2295890 (not res!981689)) b!2295888))

(assert (= (and b!2295888 res!981690) b!2295892))

(assert (= (or b!2295894 b!2295892) bm!136878))

(assert (= (or b!2295889 b!2295888) bm!136876))

(assert (= (or b!2295893 bm!136876) bm!136877))

(declare-fun m!2723441 () Bool)

(assert (=> bm!136877 m!2723441))

(declare-fun m!2723443 () Bool)

(assert (=> bm!136878 m!2723443))

(declare-fun m!2723445 () Bool)

(assert (=> b!2295895 m!2723445))

(assert (=> d!678866 d!679228))

(declare-fun d!679230 () Bool)

(declare-fun res!981692 () Bool)

(declare-fun e!1471242 () Bool)

(assert (=> d!679230 (=> (not res!981692) (not e!1471242))))

(assert (=> d!679230 (= res!981692 (not (isEmpty!15580 (originalCharacters!5147 (h!32732 (t!205209 tokens!456))))))))

(assert (=> d!679230 (= (inv!36940 (h!32732 (t!205209 tokens!456))) e!1471242)))

(declare-fun b!2295896 () Bool)

(declare-fun res!981693 () Bool)

(assert (=> b!2295896 (=> (not res!981693) (not e!1471242))))

(assert (=> b!2295896 (= res!981693 (= (originalCharacters!5147 (h!32732 (t!205209 tokens!456))) (list!10725 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (value!138564 (h!32732 (t!205209 tokens!456)))))))))

(declare-fun b!2295897 () Bool)

(assert (=> b!2295897 (= e!1471242 (= (size!21528 (h!32732 (t!205209 tokens!456))) (size!21530 (originalCharacters!5147 (h!32732 (t!205209 tokens!456))))))))

(assert (= (and d!679230 res!981692) b!2295896))

(assert (= (and b!2295896 res!981693) b!2295897))

(declare-fun b_lambda!73167 () Bool)

(assert (=> (not b_lambda!73167) (not b!2295896)))

(declare-fun tb!137131 () Bool)

(declare-fun t!205326 () Bool)

(assert (=> (and b!2295026 (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205326) tb!137131))

(declare-fun b!2295898 () Bool)

(declare-fun e!1471243 () Bool)

(declare-fun tp!728009 () Bool)

(assert (=> b!2295898 (= e!1471243 (and (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (value!138564 (h!32732 (t!205209 tokens!456)))))) tp!728009))))

(declare-fun result!167166 () Bool)

(assert (=> tb!137131 (= result!167166 (and (inv!36945 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (value!138564 (h!32732 (t!205209 tokens!456))))) e!1471243))))

(assert (= tb!137131 b!2295898))

(declare-fun m!2723447 () Bool)

(assert (=> b!2295898 m!2723447))

(declare-fun m!2723449 () Bool)

(assert (=> tb!137131 m!2723449))

(assert (=> b!2295896 t!205326))

(declare-fun b_and!182653 () Bool)

(assert (= b_and!182613 (and (=> t!205326 result!167166) b_and!182653)))

(declare-fun tb!137133 () Bool)

(declare-fun t!205328 () Bool)

(assert (=> (and b!2295030 (= (toChars!6034 (transformation!4377 r!2363)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205328) tb!137133))

(declare-fun result!167168 () Bool)

(assert (= result!167168 result!167166))

(assert (=> b!2295896 t!205328))

(declare-fun b_and!182655 () Bool)

(assert (= b_and!182609 (and (=> t!205328 result!167168) b_and!182655)))

(declare-fun t!205330 () Bool)

(declare-fun tb!137135 () Bool)

(assert (=> (and b!2295489 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205330) tb!137135))

(declare-fun result!167170 () Bool)

(assert (= result!167170 result!167166))

(assert (=> b!2295896 t!205330))

(declare-fun b_and!182657 () Bool)

(assert (= b_and!182611 (and (=> t!205330 result!167170) b_and!182657)))

(declare-fun t!205332 () Bool)

(declare-fun tb!137137 () Bool)

(assert (=> (and b!2295013 (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205332) tb!137137))

(declare-fun result!167172 () Bool)

(assert (= result!167172 result!167166))

(assert (=> b!2295896 t!205332))

(declare-fun b_and!182659 () Bool)

(assert (= b_and!182605 (and (=> t!205332 result!167172) b_and!182659)))

(declare-fun t!205334 () Bool)

(declare-fun tb!137139 () Bool)

(assert (=> (and b!2295503 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205334) tb!137139))

(declare-fun result!167174 () Bool)

(assert (= result!167174 result!167166))

(assert (=> b!2295896 t!205334))

(declare-fun b_and!182661 () Bool)

(assert (= b_and!182615 (and (=> t!205334 result!167174) b_and!182661)))

(declare-fun t!205336 () Bool)

(declare-fun tb!137141 () Bool)

(assert (=> (and b!2295042 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205336) tb!137141))

(declare-fun result!167176 () Bool)

(assert (= result!167176 result!167166))

(assert (=> b!2295896 t!205336))

(declare-fun b_and!182663 () Bool)

(assert (= b_and!182607 (and (=> t!205336 result!167176) b_and!182663)))

(declare-fun m!2723451 () Bool)

(assert (=> d!679230 m!2723451))

(declare-fun m!2723453 () Bool)

(assert (=> b!2295896 m!2723453))

(assert (=> b!2295896 m!2723453))

(declare-fun m!2723455 () Bool)

(assert (=> b!2295896 m!2723455))

(declare-fun m!2723457 () Bool)

(assert (=> b!2295897 m!2723457))

(assert (=> b!2295500 d!679230))

(assert (=> d!678852 d!678974))

(declare-fun d!679232 () Bool)

(declare-fun c!364046 () Bool)

(assert (=> d!679232 (= c!364046 ((_ is Node!8902) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))))))

(declare-fun e!1471244 () Bool)

(assert (=> d!679232 (= (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))) e!1471244)))

(declare-fun b!2295899 () Bool)

(assert (=> b!2295899 (= e!1471244 (inv!36948 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))))))

(declare-fun b!2295900 () Bool)

(declare-fun e!1471245 () Bool)

(assert (=> b!2295900 (= e!1471244 e!1471245)))

(declare-fun res!981694 () Bool)

(assert (=> b!2295900 (= res!981694 (not ((_ is Leaf!13076) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))))))))

(assert (=> b!2295900 (=> res!981694 e!1471245)))

(declare-fun b!2295901 () Bool)

(assert (=> b!2295901 (= e!1471245 (inv!36949 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))))))

(assert (= (and d!679232 c!364046) b!2295899))

(assert (= (and d!679232 (not c!364046)) b!2295900))

(assert (= (and b!2295900 (not res!981694)) b!2295901))

(declare-fun m!2723459 () Bool)

(assert (=> b!2295899 m!2723459))

(declare-fun m!2723461 () Bool)

(assert (=> b!2295901 m!2723461))

(assert (=> b!2295095 d!679232))

(declare-fun d!679234 () Bool)

(assert (=> d!679234 (= (inv!36937 (tag!4867 (rule!6715 (h!32732 (t!205209 tokens!456))))) (= (mod (str.len (value!138563 (tag!4867 (rule!6715 (h!32732 (t!205209 tokens!456)))))) 2) 0))))

(assert (=> b!2295502 d!679234))

(declare-fun d!679236 () Bool)

(declare-fun res!981695 () Bool)

(declare-fun e!1471246 () Bool)

(assert (=> d!679236 (=> (not res!981695) (not e!1471246))))

(assert (=> d!679236 (= res!981695 (semiInverseModEq!1774 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))))))

(assert (=> d!679236 (= (inv!36941 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) e!1471246)))

(declare-fun b!2295902 () Bool)

(assert (=> b!2295902 (= e!1471246 (equivClasses!1693 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))))))

(assert (= (and d!679236 res!981695) b!2295902))

(declare-fun m!2723463 () Bool)

(assert (=> d!679236 m!2723463))

(declare-fun m!2723465 () Bool)

(assert (=> b!2295902 m!2723465))

(assert (=> b!2295502 d!679236))

(declare-fun bs!457397 () Bool)

(declare-fun d!679238 () Bool)

(assert (= bs!457397 (and d!679238 d!679074)))

(declare-fun lambda!85867 () Int)

(assert (=> bs!457397 (= (= (toValue!6175 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 (h!32733 rules!1750)))) (= lambda!85867 lambda!85852))))

(declare-fun bs!457398 () Bool)

(assert (= bs!457398 (and d!679238 d!679116)))

(assert (=> bs!457398 (= (= (toValue!6175 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (= lambda!85867 lambda!85859))))

(declare-fun bs!457399 () Bool)

(assert (= bs!457399 (and d!679238 d!679134)))

(assert (=> bs!457399 (= (= (toValue!6175 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 otherR!12))) (= lambda!85867 lambda!85860))))

(assert (=> d!679238 true))

(assert (=> d!679238 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 r!2363))) (dynLambda!11874 order!15235 lambda!85867))))

(assert (=> d!679238 (= (equivClasses!1693 (toChars!6034 (transformation!4377 r!2363)) (toValue!6175 (transformation!4377 r!2363))) (Forall2!712 lambda!85867))))

(declare-fun bs!457400 () Bool)

(assert (= bs!457400 d!679238))

(declare-fun m!2723467 () Bool)

(assert (=> bs!457400 m!2723467))

(assert (=> b!2295369 d!679238))

(declare-fun bs!457401 () Bool)

(declare-fun d!679240 () Bool)

(assert (= bs!457401 (and d!679240 d!679090)))

(declare-fun lambda!85868 () Int)

(assert (=> bs!457401 (= (and (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 r!2363))) (= (toValue!6175 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 r!2363)))) (= lambda!85868 lambda!85855))))

(assert (=> d!679240 true))

(assert (=> d!679240 (< (dynLambda!11875 order!15237 (toChars!6034 (transformation!4377 otherR!12))) (dynLambda!11876 order!15239 lambda!85868))))

(assert (=> d!679240 true))

(assert (=> d!679240 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 otherR!12))) (dynLambda!11876 order!15239 lambda!85868))))

(assert (=> d!679240 (= (semiInverseModEq!1774 (toChars!6034 (transformation!4377 otherR!12)) (toValue!6175 (transformation!4377 otherR!12))) (Forall!1094 lambda!85868))))

(declare-fun bs!457402 () Bool)

(assert (= bs!457402 d!679240))

(declare-fun m!2723469 () Bool)

(assert (=> bs!457402 m!2723469))

(assert (=> d!678958 d!679240))

(declare-fun bs!457403 () Bool)

(declare-fun d!679242 () Bool)

(assert (= bs!457403 (and d!679242 d!679090)))

(declare-fun lambda!85869 () Int)

(assert (=> bs!457403 (= (and (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 r!2363))) (= (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 r!2363)))) (= lambda!85869 lambda!85855))))

(declare-fun bs!457404 () Bool)

(assert (= bs!457404 (and d!679242 d!679240)))

(assert (=> bs!457404 (= (and (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 otherR!12))) (= (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 otherR!12)))) (= lambda!85869 lambda!85868))))

(assert (=> d!679242 true))

(assert (=> d!679242 (< (dynLambda!11875 order!15237 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (dynLambda!11876 order!15239 lambda!85869))))

(assert (=> d!679242 true))

(assert (=> d!679242 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (dynLambda!11876 order!15239 lambda!85869))))

(assert (=> d!679242 (= (semiInverseModEq!1774 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (Forall!1094 lambda!85869))))

(declare-fun bs!457405 () Bool)

(assert (= bs!457405 d!679242))

(declare-fun m!2723471 () Bool)

(assert (=> bs!457405 m!2723471))

(assert (=> d!678966 d!679242))

(assert (=> bm!136841 d!679118))

(declare-fun b!2295905 () Bool)

(declare-fun e!1471247 () Int)

(assert (=> b!2295905 (= e!1471247 (+ 1 (getIndex!390 (t!205210 (t!205210 rules!1750)) otherR!12)))))

(declare-fun d!679244 () Bool)

(declare-fun lt!851724 () Int)

(assert (=> d!679244 (>= lt!851724 0)))

(declare-fun e!1471248 () Int)

(assert (=> d!679244 (= lt!851724 e!1471248)))

(declare-fun c!364047 () Bool)

(assert (=> d!679244 (= c!364047 (and ((_ is Cons!27332) (t!205210 rules!1750)) (= (h!32733 (t!205210 rules!1750)) otherR!12)))))

(assert (=> d!679244 (contains!4757 (t!205210 rules!1750) otherR!12)))

(assert (=> d!679244 (= (getIndex!390 (t!205210 rules!1750) otherR!12) lt!851724)))

(declare-fun b!2295904 () Bool)

(assert (=> b!2295904 (= e!1471248 e!1471247)))

(declare-fun c!364048 () Bool)

(assert (=> b!2295904 (= c!364048 (and ((_ is Cons!27332) (t!205210 rules!1750)) (not (= (h!32733 (t!205210 rules!1750)) otherR!12))))))

(declare-fun b!2295906 () Bool)

(assert (=> b!2295906 (= e!1471247 (- 1))))

(declare-fun b!2295903 () Bool)

(assert (=> b!2295903 (= e!1471248 0)))

(assert (= (and d!679244 c!364047) b!2295903))

(assert (= (and d!679244 (not c!364047)) b!2295904))

(assert (= (and b!2295904 c!364048) b!2295905))

(assert (= (and b!2295904 (not c!364048)) b!2295906))

(declare-fun m!2723473 () Bool)

(assert (=> b!2295905 m!2723473))

(assert (=> d!679244 m!2722963))

(assert (=> b!2295138 d!679244))

(declare-fun d!679246 () Bool)

(assert (=> d!679246 (= (isDefined!4236 lt!851616) (not (isEmpty!15576 lt!851616)))))

(declare-fun bs!457406 () Bool)

(assert (= bs!457406 d!679246))

(assert (=> bs!457406 m!2722925))

(assert (=> b!2295392 d!679246))

(declare-fun d!679248 () Bool)

(declare-fun e!1471249 () Bool)

(assert (=> d!679248 e!1471249))

(declare-fun res!981697 () Bool)

(assert (=> d!679248 (=> res!981697 e!1471249)))

(declare-fun lt!851728 () Option!5367)

(assert (=> d!679248 (= res!981697 (isEmpty!15576 lt!851728))))

(declare-fun e!1471250 () Option!5367)

(assert (=> d!679248 (= lt!851728 e!1471250)))

(declare-fun c!364049 () Bool)

(assert (=> d!679248 (= c!364049 (and ((_ is Cons!27332) (t!205210 rules!1750)) ((_ is Nil!27332) (t!205210 (t!205210 rules!1750)))))))

(declare-fun lt!851726 () Unit!40218)

(declare-fun lt!851727 () Unit!40218)

(assert (=> d!679248 (= lt!851726 lt!851727)))

(assert (=> d!679248 (isPrefix!2367 input!1722 input!1722)))

(assert (=> d!679248 (= lt!851727 (lemmaIsPrefixRefl!1503 input!1722 input!1722))))

(assert (=> d!679248 (rulesValidInductive!1545 thiss!16613 (t!205210 rules!1750))))

(assert (=> d!679248 (= (maxPrefix!2234 thiss!16613 (t!205210 rules!1750) input!1722) lt!851728)))

(declare-fun b!2295907 () Bool)

(declare-fun lt!851729 () Option!5367)

(declare-fun lt!851725 () Option!5367)

(assert (=> b!2295907 (= e!1471250 (ite (and ((_ is None!5366) lt!851729) ((_ is None!5366) lt!851725)) None!5366 (ite ((_ is None!5366) lt!851725) lt!851729 (ite ((_ is None!5366) lt!851729) lt!851725 (ite (>= (size!21528 (_1!16095 (v!30452 lt!851729))) (size!21528 (_1!16095 (v!30452 lt!851725)))) lt!851729 lt!851725)))))))

(declare-fun call!136884 () Option!5367)

(assert (=> b!2295907 (= lt!851729 call!136884)))

(assert (=> b!2295907 (= lt!851725 (maxPrefix!2234 thiss!16613 (t!205210 (t!205210 rules!1750)) input!1722))))

(declare-fun b!2295908 () Bool)

(declare-fun res!981696 () Bool)

(declare-fun e!1471251 () Bool)

(assert (=> b!2295908 (=> (not res!981696) (not e!1471251))))

(assert (=> b!2295908 (= res!981696 (matchR!2982 (regex!4377 (rule!6715 (_1!16095 (get!8239 lt!851728)))) (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851728))))))))

(declare-fun b!2295909 () Bool)

(assert (=> b!2295909 (= e!1471249 e!1471251)))

(declare-fun res!981699 () Bool)

(assert (=> b!2295909 (=> (not res!981699) (not e!1471251))))

(assert (=> b!2295909 (= res!981699 (isDefined!4236 lt!851728))))

(declare-fun b!2295910 () Bool)

(declare-fun res!981701 () Bool)

(assert (=> b!2295910 (=> (not res!981701) (not e!1471251))))

(assert (=> b!2295910 (= res!981701 (= (value!138564 (_1!16095 (get!8239 lt!851728))) (apply!6643 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851728)))) (seqFromList!3081 (originalCharacters!5147 (_1!16095 (get!8239 lt!851728)))))))))

(declare-fun b!2295911 () Bool)

(declare-fun res!981700 () Bool)

(assert (=> b!2295911 (=> (not res!981700) (not e!1471251))))

(assert (=> b!2295911 (= res!981700 (= (++!6681 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851728)))) (_2!16095 (get!8239 lt!851728))) input!1722))))

(declare-fun b!2295912 () Bool)

(assert (=> b!2295912 (= e!1471250 call!136884)))

(declare-fun b!2295913 () Bool)

(declare-fun res!981702 () Bool)

(assert (=> b!2295913 (=> (not res!981702) (not e!1471251))))

(assert (=> b!2295913 (= res!981702 (= (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851728)))) (originalCharacters!5147 (_1!16095 (get!8239 lt!851728)))))))

(declare-fun bm!136879 () Bool)

(assert (=> bm!136879 (= call!136884 (maxPrefixOneRule!1402 thiss!16613 (h!32733 (t!205210 rules!1750)) input!1722))))

(declare-fun b!2295914 () Bool)

(declare-fun res!981698 () Bool)

(assert (=> b!2295914 (=> (not res!981698) (not e!1471251))))

(assert (=> b!2295914 (= res!981698 (< (size!21530 (_2!16095 (get!8239 lt!851728))) (size!21530 input!1722)))))

(declare-fun b!2295915 () Bool)

(assert (=> b!2295915 (= e!1471251 (contains!4757 (t!205210 rules!1750) (rule!6715 (_1!16095 (get!8239 lt!851728)))))))

(assert (= (and d!679248 c!364049) b!2295912))

(assert (= (and d!679248 (not c!364049)) b!2295907))

(assert (= (or b!2295912 b!2295907) bm!136879))

(assert (= (and d!679248 (not res!981697)) b!2295909))

(assert (= (and b!2295909 res!981699) b!2295913))

(assert (= (and b!2295913 res!981702) b!2295914))

(assert (= (and b!2295914 res!981698) b!2295911))

(assert (= (and b!2295911 res!981700) b!2295910))

(assert (= (and b!2295910 res!981701) b!2295908))

(assert (= (and b!2295908 res!981696) b!2295915))

(declare-fun m!2723475 () Bool)

(assert (=> b!2295913 m!2723475))

(declare-fun m!2723477 () Bool)

(assert (=> b!2295913 m!2723477))

(assert (=> b!2295913 m!2723477))

(declare-fun m!2723479 () Bool)

(assert (=> b!2295913 m!2723479))

(assert (=> b!2295914 m!2723475))

(declare-fun m!2723481 () Bool)

(assert (=> b!2295914 m!2723481))

(assert (=> b!2295914 m!2722755))

(declare-fun m!2723483 () Bool)

(assert (=> b!2295907 m!2723483))

(declare-fun m!2723485 () Bool)

(assert (=> bm!136879 m!2723485))

(assert (=> b!2295910 m!2723475))

(declare-fun m!2723487 () Bool)

(assert (=> b!2295910 m!2723487))

(assert (=> b!2295910 m!2723487))

(declare-fun m!2723489 () Bool)

(assert (=> b!2295910 m!2723489))

(assert (=> b!2295915 m!2723475))

(declare-fun m!2723491 () Bool)

(assert (=> b!2295915 m!2723491))

(declare-fun m!2723493 () Bool)

(assert (=> d!679248 m!2723493))

(assert (=> d!679248 m!2722927))

(assert (=> d!679248 m!2722929))

(assert (=> d!679248 m!2722883))

(assert (=> b!2295911 m!2723475))

(assert (=> b!2295911 m!2723477))

(assert (=> b!2295911 m!2723477))

(assert (=> b!2295911 m!2723479))

(assert (=> b!2295911 m!2723479))

(declare-fun m!2723495 () Bool)

(assert (=> b!2295911 m!2723495))

(declare-fun m!2723497 () Bool)

(assert (=> b!2295909 m!2723497))

(assert (=> b!2295908 m!2723475))

(assert (=> b!2295908 m!2723477))

(assert (=> b!2295908 m!2723477))

(assert (=> b!2295908 m!2723479))

(assert (=> b!2295908 m!2723479))

(declare-fun m!2723499 () Bool)

(assert (=> b!2295908 m!2723499))

(assert (=> b!2295390 d!679248))

(declare-fun b!2295924 () Bool)

(declare-fun e!1471256 () List!27424)

(assert (=> b!2295924 (= e!1471256 Nil!27330)))

(declare-fun b!2295927 () Bool)

(declare-fun e!1471257 () List!27424)

(assert (=> b!2295927 (= e!1471257 (++!6681 (list!10729 (left!20715 (c!363882 (_2!16093 lt!851517)))) (list!10729 (right!21045 (c!363882 (_2!16093 lt!851517))))))))

(declare-fun d!679250 () Bool)

(declare-fun c!364054 () Bool)

(assert (=> d!679250 (= c!364054 ((_ is Empty!8902) (c!363882 (_2!16093 lt!851517))))))

(assert (=> d!679250 (= (list!10729 (c!363882 (_2!16093 lt!851517))) e!1471256)))

(declare-fun b!2295926 () Bool)

(declare-fun list!10732 (IArray!17809) List!27424)

(assert (=> b!2295926 (= e!1471257 (list!10732 (xs!11844 (c!363882 (_2!16093 lt!851517)))))))

(declare-fun b!2295925 () Bool)

(assert (=> b!2295925 (= e!1471256 e!1471257)))

(declare-fun c!364055 () Bool)

(assert (=> b!2295925 (= c!364055 ((_ is Leaf!13076) (c!363882 (_2!16093 lt!851517))))))

(assert (= (and d!679250 c!364054) b!2295924))

(assert (= (and d!679250 (not c!364054)) b!2295925))

(assert (= (and b!2295925 c!364055) b!2295926))

(assert (= (and b!2295925 (not c!364055)) b!2295927))

(declare-fun m!2723501 () Bool)

(assert (=> b!2295927 m!2723501))

(declare-fun m!2723503 () Bool)

(assert (=> b!2295927 m!2723503))

(assert (=> b!2295927 m!2723501))

(assert (=> b!2295927 m!2723503))

(declare-fun m!2723505 () Bool)

(assert (=> b!2295927 m!2723505))

(declare-fun m!2723507 () Bool)

(assert (=> b!2295926 m!2723507))

(assert (=> d!678878 d!679250))

(declare-fun d!679252 () Bool)

(declare-fun e!1471263 () Bool)

(assert (=> d!679252 e!1471263))

(declare-fun res!981707 () Bool)

(assert (=> d!679252 (=> (not res!981707) (not e!1471263))))

(declare-fun lt!851732 () List!27424)

(declare-fun content!3672 (List!27424) (InoxSet C!13596))

(assert (=> d!679252 (= res!981707 (= (content!3672 lt!851732) ((_ map or) (content!3672 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))) (content!3672 (_2!16095 (get!8239 lt!851616))))))))

(declare-fun e!1471262 () List!27424)

(assert (=> d!679252 (= lt!851732 e!1471262)))

(declare-fun c!364058 () Bool)

(assert (=> d!679252 (= c!364058 ((_ is Nil!27330) (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))))))

(assert (=> d!679252 (= (++!6681 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))) (_2!16095 (get!8239 lt!851616))) lt!851732)))

(declare-fun b!2295938 () Bool)

(declare-fun res!981708 () Bool)

(assert (=> b!2295938 (=> (not res!981708) (not e!1471263))))

(assert (=> b!2295938 (= res!981708 (= (size!21530 lt!851732) (+ (size!21530 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))) (size!21530 (_2!16095 (get!8239 lt!851616))))))))

(declare-fun b!2295937 () Bool)

(assert (=> b!2295937 (= e!1471262 (Cons!27330 (h!32731 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))) (++!6681 (t!205208 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616))))) (_2!16095 (get!8239 lt!851616)))))))

(declare-fun b!2295936 () Bool)

(assert (=> b!2295936 (= e!1471262 (_2!16095 (get!8239 lt!851616)))))

(declare-fun b!2295939 () Bool)

(assert (=> b!2295939 (= e!1471263 (or (not (= (_2!16095 (get!8239 lt!851616)) Nil!27330)) (= lt!851732 (list!10725 (charsOf!2765 (_1!16095 (get!8239 lt!851616)))))))))

(assert (= (and d!679252 c!364058) b!2295936))

(assert (= (and d!679252 (not c!364058)) b!2295937))

(assert (= (and d!679252 res!981707) b!2295938))

(assert (= (and b!2295938 res!981708) b!2295939))

(declare-fun m!2723509 () Bool)

(assert (=> d!679252 m!2723509))

(assert (=> d!679252 m!2722911))

(declare-fun m!2723511 () Bool)

(assert (=> d!679252 m!2723511))

(declare-fun m!2723513 () Bool)

(assert (=> d!679252 m!2723513))

(declare-fun m!2723515 () Bool)

(assert (=> b!2295938 m!2723515))

(assert (=> b!2295938 m!2722911))

(declare-fun m!2723517 () Bool)

(assert (=> b!2295938 m!2723517))

(assert (=> b!2295938 m!2722913))

(declare-fun m!2723519 () Bool)

(assert (=> b!2295937 m!2723519))

(assert (=> b!2295394 d!679252))

(assert (=> b!2295394 d!679102))

(assert (=> b!2295394 d!679104))

(assert (=> b!2295394 d!679100))

(assert (=> d!678948 d!679120))

(declare-fun d!679254 () Bool)

(assert (=> d!679254 (= (list!10725 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))) (list!10729 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))))))

(declare-fun bs!457407 () Bool)

(assert (= bs!457407 d!679254))

(declare-fun m!2723521 () Bool)

(assert (=> bs!457407 m!2723521))

(assert (=> b!2295366 d!679254))

(declare-fun b!2295940 () Bool)

(declare-fun e!1471264 () List!27424)

(assert (=> b!2295940 (= e!1471264 Nil!27330)))

(declare-fun b!2295943 () Bool)

(declare-fun e!1471265 () List!27424)

(assert (=> b!2295943 (= e!1471265 (++!6681 (list!10729 (left!20715 (c!363882 (charsOf!2765 (head!5010 tokens!456))))) (list!10729 (right!21045 (c!363882 (charsOf!2765 (head!5010 tokens!456)))))))))

(declare-fun d!679256 () Bool)

(declare-fun c!364059 () Bool)

(assert (=> d!679256 (= c!364059 ((_ is Empty!8902) (c!363882 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (=> d!679256 (= (list!10729 (c!363882 (charsOf!2765 (head!5010 tokens!456)))) e!1471264)))

(declare-fun b!2295942 () Bool)

(assert (=> b!2295942 (= e!1471265 (list!10732 (xs!11844 (c!363882 (charsOf!2765 (head!5010 tokens!456))))))))

(declare-fun b!2295941 () Bool)

(assert (=> b!2295941 (= e!1471264 e!1471265)))

(declare-fun c!364060 () Bool)

(assert (=> b!2295941 (= c!364060 ((_ is Leaf!13076) (c!363882 (charsOf!2765 (head!5010 tokens!456)))))))

(assert (= (and d!679256 c!364059) b!2295940))

(assert (= (and d!679256 (not c!364059)) b!2295941))

(assert (= (and b!2295941 c!364060) b!2295942))

(assert (= (and b!2295941 (not c!364060)) b!2295943))

(declare-fun m!2723523 () Bool)

(assert (=> b!2295943 m!2723523))

(declare-fun m!2723525 () Bool)

(assert (=> b!2295943 m!2723525))

(assert (=> b!2295943 m!2723523))

(assert (=> b!2295943 m!2723525))

(declare-fun m!2723527 () Bool)

(assert (=> b!2295943 m!2723527))

(declare-fun m!2723529 () Bool)

(assert (=> b!2295942 m!2723529))

(assert (=> d!678972 d!679256))

(declare-fun d!679258 () Bool)

(assert (=> d!679258 (= (isEmpty!15580 (originalCharacters!5147 (h!32732 tokens!456))) ((_ is Nil!27330) (originalCharacters!5147 (h!32732 tokens!456))))))

(assert (=> d!678942 d!679258))

(declare-fun b!2295944 () Bool)

(declare-fun res!981714 () Bool)

(declare-fun e!1471268 () Bool)

(assert (=> b!2295944 (=> (not res!981714) (not e!1471268))))

(declare-fun call!136885 () Bool)

(assert (=> b!2295944 (= res!981714 (not call!136885))))

(declare-fun b!2295945 () Bool)

(declare-fun e!1471267 () Bool)

(declare-fun e!1471270 () Bool)

(assert (=> b!2295945 (= e!1471267 e!1471270)))

(declare-fun c!364061 () Bool)

(assert (=> b!2295945 (= c!364061 ((_ is EmptyLang!6725) (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))

(declare-fun b!2295946 () Bool)

(declare-fun lt!851733 () Bool)

(assert (=> b!2295946 (= e!1471267 (= lt!851733 call!136885))))

(declare-fun b!2295947 () Bool)

(declare-fun res!981713 () Bool)

(declare-fun e!1471271 () Bool)

(assert (=> b!2295947 (=> res!981713 e!1471271)))

(assert (=> b!2295947 (= res!981713 (not ((_ is ElementMatch!6725) (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))))

(assert (=> b!2295947 (= e!1471270 e!1471271)))

(declare-fun b!2295948 () Bool)

(declare-fun res!981711 () Bool)

(assert (=> b!2295948 (=> (not res!981711) (not e!1471268))))

(assert (=> b!2295948 (= res!981711 (isEmpty!15580 (tail!3315 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))

(declare-fun bm!136880 () Bool)

(assert (=> bm!136880 (= call!136885 (isEmpty!15580 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(declare-fun b!2295949 () Bool)

(declare-fun e!1471266 () Bool)

(declare-fun e!1471269 () Bool)

(assert (=> b!2295949 (= e!1471266 e!1471269)))

(declare-fun res!981716 () Bool)

(assert (=> b!2295949 (=> res!981716 e!1471269)))

(assert (=> b!2295949 (= res!981716 call!136885)))

(declare-fun b!2295950 () Bool)

(declare-fun res!981710 () Bool)

(assert (=> b!2295950 (=> res!981710 e!1471271)))

(assert (=> b!2295950 (= res!981710 e!1471268)))

(declare-fun res!981712 () Bool)

(assert (=> b!2295950 (=> (not res!981712) (not e!1471268))))

(assert (=> b!2295950 (= res!981712 lt!851733)))

(declare-fun b!2295951 () Bool)

(declare-fun res!981715 () Bool)

(assert (=> b!2295951 (=> res!981715 e!1471269)))

(assert (=> b!2295951 (= res!981715 (not (isEmpty!15580 (tail!3315 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))))

(declare-fun d!679260 () Bool)

(assert (=> d!679260 e!1471267))

(declare-fun c!364062 () Bool)

(assert (=> d!679260 (= c!364062 ((_ is EmptyExpr!6725) (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))

(declare-fun e!1471272 () Bool)

(assert (=> d!679260 (= lt!851733 e!1471272)))

(declare-fun c!364063 () Bool)

(assert (=> d!679260 (= c!364063 (isEmpty!15580 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(assert (=> d!679260 (validRegex!2534 (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(assert (=> d!679260 (= (matchR!2982 (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) lt!851733)))

(declare-fun b!2295952 () Bool)

(assert (=> b!2295952 (= e!1471270 (not lt!851733))))

(declare-fun b!2295953 () Bool)

(assert (=> b!2295953 (= e!1471268 (= (head!5012 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) (c!363883 (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))))

(declare-fun b!2295954 () Bool)

(assert (=> b!2295954 (= e!1471272 (matchR!2982 (derivativeStep!1532 (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) (head!5012 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))) (tail!3315 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))

(declare-fun b!2295955 () Bool)

(assert (=> b!2295955 (= e!1471269 (not (= (head!5012 (tail!3315 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) (c!363883 (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))))

(declare-fun b!2295956 () Bool)

(assert (=> b!2295956 (= e!1471271 e!1471266)))

(declare-fun res!981709 () Bool)

(assert (=> b!2295956 (=> (not res!981709) (not e!1471266))))

(assert (=> b!2295956 (= res!981709 (not lt!851733))))

(declare-fun b!2295957 () Bool)

(assert (=> b!2295957 (= e!1471272 (nullable!1872 (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))))))))

(assert (= (and d!679260 c!364063) b!2295957))

(assert (= (and d!679260 (not c!364063)) b!2295954))

(assert (= (and d!679260 c!364062) b!2295946))

(assert (= (and d!679260 (not c!364062)) b!2295945))

(assert (= (and b!2295945 c!364061) b!2295952))

(assert (= (and b!2295945 (not c!364061)) b!2295947))

(assert (= (and b!2295947 (not res!981713)) b!2295950))

(assert (= (and b!2295950 res!981712) b!2295944))

(assert (= (and b!2295944 res!981714) b!2295948))

(assert (= (and b!2295948 res!981711) b!2295953))

(assert (= (and b!2295950 (not res!981710)) b!2295956))

(assert (= (and b!2295956 res!981709) b!2295949))

(assert (= (and b!2295949 (not res!981716)) b!2295951))

(assert (= (and b!2295951 (not res!981715)) b!2295955))

(assert (= (or b!2295946 b!2295944 b!2295949) bm!136880))

(assert (=> b!2295957 m!2722955))

(declare-fun m!2723531 () Bool)

(assert (=> b!2295957 m!2723531))

(assert (=> b!2295955 m!2722951))

(declare-fun m!2723533 () Bool)

(assert (=> b!2295955 m!2723533))

(assert (=> bm!136880 m!2722951))

(assert (=> bm!136880 m!2722953))

(assert (=> b!2295951 m!2722951))

(declare-fun m!2723535 () Bool)

(assert (=> b!2295951 m!2723535))

(assert (=> b!2295951 m!2723535))

(declare-fun m!2723537 () Bool)

(assert (=> b!2295951 m!2723537))

(assert (=> d!679260 m!2722951))

(assert (=> d!679260 m!2722953))

(assert (=> d!679260 m!2722955))

(declare-fun m!2723539 () Bool)

(assert (=> d!679260 m!2723539))

(assert (=> b!2295954 m!2722951))

(assert (=> b!2295954 m!2723533))

(assert (=> b!2295954 m!2722955))

(assert (=> b!2295954 m!2723533))

(declare-fun m!2723541 () Bool)

(assert (=> b!2295954 m!2723541))

(assert (=> b!2295954 m!2722951))

(assert (=> b!2295954 m!2723535))

(assert (=> b!2295954 m!2723541))

(assert (=> b!2295954 m!2723535))

(declare-fun m!2723543 () Bool)

(assert (=> b!2295954 m!2723543))

(assert (=> b!2295953 m!2722951))

(assert (=> b!2295953 m!2723533))

(assert (=> b!2295948 m!2722951))

(assert (=> b!2295948 m!2723535))

(assert (=> b!2295948 m!2723535))

(assert (=> b!2295948 m!2723537))

(assert (=> b!2295439 d!679260))

(declare-fun b!2295978 () Bool)

(declare-fun e!1471287 () Regex!6725)

(assert (=> b!2295978 (= e!1471287 (ite (= (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456)))) (c!363883 (regex!4377 r!2363))) EmptyExpr!6725 EmptyLang!6725))))

(declare-fun b!2295979 () Bool)

(declare-fun c!364078 () Bool)

(assert (=> b!2295979 (= c!364078 ((_ is Union!6725) (regex!4377 r!2363)))))

(declare-fun e!1471285 () Regex!6725)

(assert (=> b!2295979 (= e!1471287 e!1471285)))

(declare-fun bm!136889 () Bool)

(declare-fun call!136896 () Regex!6725)

(declare-fun call!136897 () Regex!6725)

(assert (=> bm!136889 (= call!136896 call!136897)))

(declare-fun b!2295980 () Bool)

(declare-fun e!1471283 () Regex!6725)

(declare-fun call!136895 () Regex!6725)

(assert (=> b!2295980 (= e!1471283 (Union!6725 (Concat!11265 call!136895 (regTwo!13962 (regex!4377 r!2363))) EmptyLang!6725))))

(declare-fun b!2295981 () Bool)

(declare-fun e!1471286 () Regex!6725)

(assert (=> b!2295981 (= e!1471286 e!1471287)))

(declare-fun c!364075 () Bool)

(assert (=> b!2295981 (= c!364075 ((_ is ElementMatch!6725) (regex!4377 r!2363)))))

(declare-fun b!2295982 () Bool)

(declare-fun call!136894 () Regex!6725)

(assert (=> b!2295982 (= e!1471285 (Union!6725 call!136894 call!136897))))

(declare-fun b!2295983 () Bool)

(assert (=> b!2295983 (= e!1471283 (Union!6725 (Concat!11265 call!136895 (regTwo!13962 (regex!4377 r!2363))) call!136894))))

(declare-fun bm!136890 () Bool)

(assert (=> bm!136890 (= call!136894 (derivativeStep!1532 (ite c!364078 (regOne!13963 (regex!4377 r!2363)) (regTwo!13962 (regex!4377 r!2363))) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(declare-fun b!2295984 () Bool)

(declare-fun c!364074 () Bool)

(assert (=> b!2295984 (= c!364074 (nullable!1872 (regOne!13962 (regex!4377 r!2363))))))

(declare-fun e!1471284 () Regex!6725)

(assert (=> b!2295984 (= e!1471284 e!1471283)))

(declare-fun b!2295985 () Bool)

(assert (=> b!2295985 (= e!1471286 EmptyLang!6725)))

(declare-fun b!2295986 () Bool)

(assert (=> b!2295986 (= e!1471285 e!1471284)))

(declare-fun c!364076 () Bool)

(assert (=> b!2295986 (= c!364076 ((_ is Star!6725) (regex!4377 r!2363)))))

(declare-fun bm!136891 () Bool)

(assert (=> bm!136891 (= call!136897 (derivativeStep!1532 (ite c!364078 (regTwo!13963 (regex!4377 r!2363)) (ite c!364076 (reg!7054 (regex!4377 r!2363)) (regOne!13962 (regex!4377 r!2363)))) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))))))

(declare-fun bm!136892 () Bool)

(assert (=> bm!136892 (= call!136895 call!136896)))

(declare-fun b!2295987 () Bool)

(assert (=> b!2295987 (= e!1471284 (Concat!11265 call!136896 (regex!4377 r!2363)))))

(declare-fun d!679262 () Bool)

(declare-fun lt!851736 () Regex!6725)

(assert (=> d!679262 (validRegex!2534 lt!851736)))

(assert (=> d!679262 (= lt!851736 e!1471286)))

(declare-fun c!364077 () Bool)

(assert (=> d!679262 (= c!364077 (or ((_ is EmptyExpr!6725) (regex!4377 r!2363)) ((_ is EmptyLang!6725) (regex!4377 r!2363))))))

(assert (=> d!679262 (validRegex!2534 (regex!4377 r!2363))))

(assert (=> d!679262 (= (derivativeStep!1532 (regex!4377 r!2363) (head!5012 (list!10725 (charsOf!2765 (head!5010 tokens!456))))) lt!851736)))

(assert (= (and d!679262 c!364077) b!2295985))

(assert (= (and d!679262 (not c!364077)) b!2295981))

(assert (= (and b!2295981 c!364075) b!2295978))

(assert (= (and b!2295981 (not c!364075)) b!2295979))

(assert (= (and b!2295979 c!364078) b!2295982))

(assert (= (and b!2295979 (not c!364078)) b!2295986))

(assert (= (and b!2295986 c!364076) b!2295987))

(assert (= (and b!2295986 (not c!364076)) b!2295984))

(assert (= (and b!2295984 c!364074) b!2295983))

(assert (= (and b!2295984 (not c!364074)) b!2295980))

(assert (= (or b!2295983 b!2295980) bm!136892))

(assert (= (or b!2295987 bm!136892) bm!136889))

(assert (= (or b!2295982 b!2295983) bm!136890))

(assert (= (or b!2295982 bm!136889) bm!136891))

(assert (=> bm!136890 m!2722947))

(declare-fun m!2723545 () Bool)

(assert (=> bm!136890 m!2723545))

(declare-fun m!2723547 () Bool)

(assert (=> b!2295984 m!2723547))

(assert (=> bm!136891 m!2722947))

(declare-fun m!2723549 () Bool)

(assert (=> bm!136891 m!2723549))

(declare-fun m!2723551 () Bool)

(assert (=> d!679262 m!2723551))

(assert (=> d!679262 m!2722901))

(assert (=> b!2295439 d!679262))

(assert (=> b!2295439 d!679190))

(assert (=> b!2295439 d!679108))

(assert (=> b!2295396 d!679102))

(assert (=> b!2295396 d!679104))

(assert (=> b!2295396 d!679100))

(declare-fun d!679264 () Bool)

(assert (=> d!679264 (= (list!10725 lt!851528) (list!10729 (c!363882 lt!851528)))))

(declare-fun bs!457408 () Bool)

(assert (= bs!457408 d!679264))

(declare-fun m!2723553 () Bool)

(assert (=> bs!457408 m!2723553))

(assert (=> d!678842 d!679264))

(declare-fun bs!457409 () Bool)

(declare-fun d!679266 () Bool)

(assert (= bs!457409 (and d!679266 d!679090)))

(declare-fun lambda!85870 () Int)

(assert (=> bs!457409 (= (and (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 r!2363))) (= (toValue!6175 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 r!2363)))) (= lambda!85870 lambda!85855))))

(declare-fun bs!457410 () Bool)

(assert (= bs!457410 (and d!679266 d!679240)))

(assert (=> bs!457410 (= (and (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 otherR!12))) (= (toValue!6175 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 otherR!12)))) (= lambda!85870 lambda!85868))))

(declare-fun bs!457411 () Bool)

(assert (= bs!457411 (and d!679266 d!679242)))

(assert (=> bs!457411 (= (and (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) (= (toValue!6175 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 (rule!6715 (h!32732 tokens!456)))))) (= lambda!85870 lambda!85869))))

(assert (=> d!679266 true))

(assert (=> d!679266 (< (dynLambda!11875 order!15237 (toChars!6034 (transformation!4377 (h!32733 rules!1750)))) (dynLambda!11876 order!15239 lambda!85870))))

(assert (=> d!679266 true))

(assert (=> d!679266 (< (dynLambda!11873 order!15233 (toValue!6175 (transformation!4377 (h!32733 rules!1750)))) (dynLambda!11876 order!15239 lambda!85870))))

(assert (=> d!679266 (= (semiInverseModEq!1774 (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toValue!6175 (transformation!4377 (h!32733 rules!1750)))) (Forall!1094 lambda!85870))))

(declare-fun bs!457412 () Bool)

(assert (= bs!457412 d!679266))

(declare-fun m!2723555 () Bool)

(assert (=> bs!457412 m!2723555))

(assert (=> d!678890 d!679266))

(declare-fun bs!457413 () Bool)

(declare-fun d!679268 () Bool)

(assert (= bs!457413 (and d!679268 d!678894)))

(declare-fun lambda!85871 () Int)

(assert (=> bs!457413 (= lambda!85871 lambda!85839)))

(declare-fun bs!457414 () Bool)

(assert (= bs!457414 (and d!679268 d!679096)))

(assert (=> bs!457414 (= lambda!85871 lambda!85858)))

(assert (=> d!679268 true))

(declare-fun lt!851737 () Bool)

(assert (=> d!679268 (= lt!851737 (forall!5498 (t!205210 rules!1750) lambda!85871))))

(declare-fun e!1471288 () Bool)

(assert (=> d!679268 (= lt!851737 e!1471288)))

(declare-fun res!981717 () Bool)

(assert (=> d!679268 (=> res!981717 e!1471288)))

(assert (=> d!679268 (= res!981717 (not ((_ is Cons!27332) (t!205210 rules!1750))))))

(assert (=> d!679268 (= (rulesValidInductive!1545 thiss!16613 (t!205210 rules!1750)) lt!851737)))

(declare-fun b!2295988 () Bool)

(declare-fun e!1471289 () Bool)

(assert (=> b!2295988 (= e!1471288 e!1471289)))

(declare-fun res!981718 () Bool)

(assert (=> b!2295988 (=> (not res!981718) (not e!1471289))))

(assert (=> b!2295988 (= res!981718 (ruleValid!1467 thiss!16613 (h!32733 (t!205210 rules!1750))))))

(declare-fun b!2295989 () Bool)

(assert (=> b!2295989 (= e!1471289 (rulesValidInductive!1545 thiss!16613 (t!205210 (t!205210 rules!1750))))))

(assert (= (and d!679268 (not res!981717)) b!2295988))

(assert (= (and b!2295988 res!981718) b!2295989))

(declare-fun m!2723557 () Bool)

(assert (=> d!679268 m!2723557))

(declare-fun m!2723559 () Bool)

(assert (=> b!2295988 m!2723559))

(declare-fun m!2723561 () Bool)

(assert (=> b!2295989 m!2723561))

(assert (=> b!2295359 d!679268))

(assert (=> d!678886 d!679200))

(assert (=> d!678870 d!678866))

(declare-fun d!679270 () Bool)

(assert (=> d!679270 (ruleValid!1467 thiss!16613 otherR!12)))

(assert (=> d!679270 true))

(declare-fun _$65!1158 () Unit!40218)

(assert (=> d!679270 (= (choose!13400 thiss!16613 otherR!12 rules!1750) _$65!1158)))

(declare-fun bs!457415 () Bool)

(assert (= bs!457415 d!679270))

(assert (=> bs!457415 m!2722581))

(assert (=> d!678870 d!679270))

(assert (=> d!678870 d!678974))

(declare-fun d!679272 () Bool)

(declare-fun lt!851740 () Bool)

(assert (=> d!679272 (= lt!851740 (isEmpty!15574 (list!10724 (_1!16093 lt!851558))))))

(declare-fun isEmpty!15582 (Conc!8903) Bool)

(assert (=> d!679272 (= lt!851740 (isEmpty!15582 (c!363884 (_1!16093 lt!851558))))))

(assert (=> d!679272 (= (isEmpty!15579 (_1!16093 lt!851558)) lt!851740)))

(declare-fun bs!457416 () Bool)

(assert (= bs!457416 d!679272))

(assert (=> bs!457416 m!2722735))

(assert (=> bs!457416 m!2722735))

(declare-fun m!2723563 () Bool)

(assert (=> bs!457416 m!2723563))

(declare-fun m!2723565 () Bool)

(assert (=> bs!457416 m!2723565))

(assert (=> b!2295185 d!679272))

(declare-fun d!679274 () Bool)

(declare-fun lt!851741 () Int)

(assert (=> d!679274 (>= lt!851741 0)))

(declare-fun e!1471290 () Int)

(assert (=> d!679274 (= lt!851741 e!1471290)))

(declare-fun c!364079 () Bool)

(assert (=> d!679274 (= c!364079 ((_ is Nil!27330) (_2!16095 (get!8239 lt!851616))))))

(assert (=> d!679274 (= (size!21530 (_2!16095 (get!8239 lt!851616))) lt!851741)))

(declare-fun b!2295990 () Bool)

(assert (=> b!2295990 (= e!1471290 0)))

(declare-fun b!2295991 () Bool)

(assert (=> b!2295991 (= e!1471290 (+ 1 (size!21530 (t!205208 (_2!16095 (get!8239 lt!851616))))))))

(assert (= (and d!679274 c!364079) b!2295990))

(assert (= (and d!679274 (not c!364079)) b!2295991))

(declare-fun m!2723567 () Bool)

(assert (=> b!2295991 m!2723567))

(assert (=> b!2295397 d!679274))

(assert (=> b!2295397 d!679100))

(assert (=> b!2295397 d!679226))

(assert (=> b!2295370 d!679198))

(declare-fun d!679276 () Bool)

(declare-fun lt!851744 () Int)

(assert (=> d!679276 (= lt!851744 (size!21535 (list!10724 (_1!16093 lt!851558))))))

(declare-fun size!21538 (Conc!8903) Int)

(assert (=> d!679276 (= lt!851744 (size!21538 (c!363884 (_1!16093 lt!851558))))))

(assert (=> d!679276 (= (size!21534 (_1!16093 lt!851558)) lt!851744)))

(declare-fun bs!457417 () Bool)

(assert (= bs!457417 d!679276))

(assert (=> bs!457417 m!2722735))

(assert (=> bs!457417 m!2722735))

(declare-fun m!2723569 () Bool)

(assert (=> bs!457417 m!2723569))

(declare-fun m!2723571 () Bool)

(assert (=> bs!457417 m!2723571))

(assert (=> d!678880 d!679276))

(declare-fun b!2296219 () Bool)

(declare-fun e!1471402 () tuple2!27166)

(declare-fun lt!851969 () BalanceConc!17532)

(assert (=> b!2296219 (= e!1471402 (tuple2!27167 (BalanceConc!17535 Empty!8903) lt!851969))))

(declare-fun lt!851953 () BalanceConc!17532)

(declare-fun e!1471401 () tuple2!27166)

(declare-datatypes ((tuple2!27178 0))(
  ( (tuple2!27179 (_1!16099 Token!8232) (_2!16099 BalanceConc!17532)) )
))
(declare-datatypes ((Option!5369 0))(
  ( (None!5368) (Some!5368 (v!30456 tuple2!27178)) )
))
(declare-fun lt!851963 () Option!5369)

(declare-fun b!2296220 () Bool)

(declare-fun append!708 (BalanceConc!17534 Token!8232) BalanceConc!17534)

(assert (=> b!2296220 (= e!1471401 (lexTailRecV2!793 thiss!16613 rules!1750 (seqFromList!3081 input!1722) lt!851953 (_2!16099 (v!30456 lt!851963)) (append!708 (BalanceConc!17535 Empty!8903) (_1!16099 (v!30456 lt!851963)))))))

(declare-fun lt!851959 () tuple2!27166)

(declare-fun lexRec!545 (LexerInterface!3974 List!27426 BalanceConc!17532) tuple2!27166)

(assert (=> b!2296220 (= lt!851959 (lexRec!545 thiss!16613 rules!1750 (_2!16099 (v!30456 lt!851963))))))

(declare-fun lt!851937 () List!27424)

(assert (=> b!2296220 (= lt!851937 (list!10725 (BalanceConc!17533 Empty!8902)))))

(declare-fun lt!851946 () List!27424)

(assert (=> b!2296220 (= lt!851946 (list!10725 (charsOf!2765 (_1!16099 (v!30456 lt!851963)))))))

(declare-fun lt!851940 () List!27424)

(assert (=> b!2296220 (= lt!851940 (list!10725 (_2!16099 (v!30456 lt!851963))))))

(declare-fun lt!851965 () Unit!40218)

(declare-fun lemmaConcatAssociativity!1402 (List!27424 List!27424 List!27424) Unit!40218)

(assert (=> b!2296220 (= lt!851965 (lemmaConcatAssociativity!1402 lt!851937 lt!851946 lt!851940))))

(assert (=> b!2296220 (= (++!6681 (++!6681 lt!851937 lt!851946) lt!851940) (++!6681 lt!851937 (++!6681 lt!851946 lt!851940)))))

(declare-fun lt!851954 () Unit!40218)

(assert (=> b!2296220 (= lt!851954 lt!851965)))

(declare-fun lt!851947 () Option!5369)

(declare-fun maxPrefixZipperSequence!880 (LexerInterface!3974 List!27426 BalanceConc!17532) Option!5369)

(assert (=> b!2296220 (= lt!851947 (maxPrefixZipperSequence!880 thiss!16613 rules!1750 (seqFromList!3081 input!1722)))))

(declare-fun c!364115 () Bool)

(assert (=> b!2296220 (= c!364115 ((_ is Some!5368) lt!851947))))

(declare-fun e!1471400 () tuple2!27166)

(assert (=> b!2296220 (= (lexRec!545 thiss!16613 rules!1750 (seqFromList!3081 input!1722)) e!1471400)))

(declare-fun lt!851964 () Unit!40218)

(declare-fun Unit!40224 () Unit!40218)

(assert (=> b!2296220 (= lt!851964 Unit!40224)))

(declare-fun lt!851944 () List!27425)

(assert (=> b!2296220 (= lt!851944 (list!10724 (BalanceConc!17535 Empty!8903)))))

(declare-fun lt!851962 () List!27425)

(assert (=> b!2296220 (= lt!851962 (Cons!27331 (_1!16099 (v!30456 lt!851963)) Nil!27331))))

(declare-fun lt!851968 () List!27425)

(assert (=> b!2296220 (= lt!851968 (list!10724 (_1!16093 lt!851959)))))

(declare-fun lt!851958 () Unit!40218)

(declare-fun lemmaConcatAssociativity!1403 (List!27425 List!27425 List!27425) Unit!40218)

(assert (=> b!2296220 (= lt!851958 (lemmaConcatAssociativity!1403 lt!851944 lt!851962 lt!851968))))

(assert (=> b!2296220 (= (++!6682 (++!6682 lt!851944 lt!851962) lt!851968) (++!6682 lt!851944 (++!6682 lt!851962 lt!851968)))))

(declare-fun lt!851938 () Unit!40218)

(assert (=> b!2296220 (= lt!851938 lt!851958)))

(declare-fun lt!851939 () List!27424)

(assert (=> b!2296220 (= lt!851939 (++!6681 (list!10725 (BalanceConc!17533 Empty!8902)) (list!10725 (charsOf!2765 (_1!16099 (v!30456 lt!851963))))))))

(declare-fun lt!851970 () List!27424)

(assert (=> b!2296220 (= lt!851970 (list!10725 (_2!16099 (v!30456 lt!851963))))))

(declare-fun lt!851952 () List!27425)

(assert (=> b!2296220 (= lt!851952 (list!10724 (append!708 (BalanceConc!17535 Empty!8903) (_1!16099 (v!30456 lt!851963)))))))

(declare-fun lt!851943 () Unit!40218)

(declare-fun lemmaLexThenLexPrefix!359 (LexerInterface!3974 List!27426 List!27424 List!27424 List!27425 List!27425 List!27424) Unit!40218)

(assert (=> b!2296220 (= lt!851943 (lemmaLexThenLexPrefix!359 thiss!16613 rules!1750 lt!851939 lt!851970 lt!851952 (list!10724 (_1!16093 lt!851959)) (list!10725 (_2!16093 lt!851959))))))

(assert (=> b!2296220 (= (lexList!1118 thiss!16613 rules!1750 lt!851939) (tuple2!27169 lt!851952 Nil!27330))))

(declare-fun lt!851950 () Unit!40218)

(assert (=> b!2296220 (= lt!851950 lt!851943)))

(declare-fun ++!6685 (BalanceConc!17532 BalanceConc!17532) BalanceConc!17532)

(assert (=> b!2296220 (= lt!851969 (++!6685 (BalanceConc!17533 Empty!8902) (charsOf!2765 (_1!16099 (v!30456 lt!851963)))))))

(declare-fun lt!851967 () Option!5369)

(assert (=> b!2296220 (= lt!851967 (maxPrefixZipperSequence!880 thiss!16613 rules!1750 lt!851969))))

(declare-fun c!364116 () Bool)

(assert (=> b!2296220 (= c!364116 ((_ is Some!5368) lt!851967))))

(assert (=> b!2296220 (= (lexRec!545 thiss!16613 rules!1750 (++!6685 (BalanceConc!17533 Empty!8902) (charsOf!2765 (_1!16099 (v!30456 lt!851963))))) e!1471402)))

(declare-fun lt!851960 () Unit!40218)

(declare-fun Unit!40225 () Unit!40218)

(assert (=> b!2296220 (= lt!851960 Unit!40225)))

(assert (=> b!2296220 (= lt!851953 (++!6685 (BalanceConc!17533 Empty!8902) (charsOf!2765 (_1!16099 (v!30456 lt!851963)))))))

(declare-fun lt!851945 () List!27424)

(assert (=> b!2296220 (= lt!851945 (list!10725 lt!851953))))

(declare-fun lt!851941 () List!27424)

(assert (=> b!2296220 (= lt!851941 (list!10725 (_2!16099 (v!30456 lt!851963))))))

(declare-fun lt!851966 () Unit!40218)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!475 (List!27424 List!27424) Unit!40218)

(assert (=> b!2296220 (= lt!851966 (lemmaConcatTwoListThenFSndIsSuffix!475 lt!851945 lt!851941))))

(declare-fun isSuffix!781 (List!27424 List!27424) Bool)

(assert (=> b!2296220 (isSuffix!781 lt!851941 (++!6681 lt!851945 lt!851941))))

(declare-fun lt!851948 () Unit!40218)

(assert (=> b!2296220 (= lt!851948 lt!851966)))

(declare-fun lt!851955 () tuple2!27166)

(declare-fun b!2296221 () Bool)

(assert (=> b!2296221 (= lt!851955 (lexRec!545 thiss!16613 rules!1750 (_2!16099 (v!30456 lt!851967))))))

(declare-fun prepend!1015 (BalanceConc!17534 Token!8232) BalanceConc!17534)

(assert (=> b!2296221 (= e!1471402 (tuple2!27167 (prepend!1015 (_1!16093 lt!851955) (_1!16099 (v!30456 lt!851967))) (_2!16093 lt!851955)))))

(declare-fun b!2296222 () Bool)

(assert (=> b!2296222 (= e!1471400 (tuple2!27167 (BalanceConc!17535 Empty!8903) (seqFromList!3081 input!1722)))))

(declare-fun e!1471399 () Bool)

(declare-fun lt!851949 () tuple2!27166)

(declare-fun b!2296223 () Bool)

(assert (=> b!2296223 (= e!1471399 (= (list!10725 (_2!16093 lt!851949)) (list!10725 (_2!16093 (lexRec!545 thiss!16613 rules!1750 (seqFromList!3081 input!1722))))))))

(declare-fun lt!851951 () tuple2!27166)

(declare-fun b!2296224 () Bool)

(assert (=> b!2296224 (= lt!851951 (lexRec!545 thiss!16613 rules!1750 (_2!16099 (v!30456 lt!851947))))))

(assert (=> b!2296224 (= e!1471400 (tuple2!27167 (prepend!1015 (_1!16093 lt!851951) (_1!16099 (v!30456 lt!851947))) (_2!16093 lt!851951)))))

(declare-fun d!679278 () Bool)

(assert (=> d!679278 e!1471399))

(declare-fun res!981763 () Bool)

(assert (=> d!679278 (=> (not res!981763) (not e!1471399))))

(assert (=> d!679278 (= res!981763 (= (list!10724 (_1!16093 lt!851949)) (list!10724 (_1!16093 (lexRec!545 thiss!16613 rules!1750 (seqFromList!3081 input!1722))))))))

(assert (=> d!679278 (= lt!851949 e!1471401)))

(declare-fun c!364114 () Bool)

(assert (=> d!679278 (= c!364114 ((_ is Some!5368) lt!851963))))

(declare-fun maxPrefixZipperSequenceV2!415 (LexerInterface!3974 List!27426 BalanceConc!17532 BalanceConc!17532) Option!5369)

(assert (=> d!679278 (= lt!851963 (maxPrefixZipperSequenceV2!415 thiss!16613 rules!1750 (seqFromList!3081 input!1722) (seqFromList!3081 input!1722)))))

(declare-fun lt!851956 () Unit!40218)

(declare-fun lt!851957 () Unit!40218)

(assert (=> d!679278 (= lt!851956 lt!851957)))

(declare-fun lt!851961 () List!27424)

(declare-fun lt!851942 () List!27424)

(assert (=> d!679278 (isSuffix!781 lt!851961 (++!6681 lt!851942 lt!851961))))

(assert (=> d!679278 (= lt!851957 (lemmaConcatTwoListThenFSndIsSuffix!475 lt!851942 lt!851961))))

(assert (=> d!679278 (= lt!851961 (list!10725 (seqFromList!3081 input!1722)))))

(assert (=> d!679278 (= lt!851942 (list!10725 (BalanceConc!17533 Empty!8902)))))

(assert (=> d!679278 (= (lexTailRecV2!793 thiss!16613 rules!1750 (seqFromList!3081 input!1722) (BalanceConc!17533 Empty!8902) (seqFromList!3081 input!1722) (BalanceConc!17535 Empty!8903)) lt!851949)))

(declare-fun b!2296218 () Bool)

(assert (=> b!2296218 (= e!1471401 (tuple2!27167 (BalanceConc!17535 Empty!8903) (seqFromList!3081 input!1722)))))

(assert (= (and d!679278 c!364114) b!2296220))

(assert (= (and d!679278 (not c!364114)) b!2296218))

(assert (= (and b!2296220 c!364115) b!2296224))

(assert (= (and b!2296220 (not c!364115)) b!2296222))

(assert (= (and b!2296220 c!364116) b!2296221))

(assert (= (and b!2296220 (not c!364116)) b!2296219))

(assert (= (and d!679278 res!981763) b!2296223))

(declare-fun m!2723789 () Bool)

(assert (=> b!2296223 m!2723789))

(assert (=> b!2296223 m!2722573))

(declare-fun m!2723791 () Bool)

(assert (=> b!2296223 m!2723791))

(declare-fun m!2723793 () Bool)

(assert (=> b!2296223 m!2723793))

(declare-fun m!2723795 () Bool)

(assert (=> b!2296224 m!2723795))

(declare-fun m!2723797 () Bool)

(assert (=> b!2296224 m!2723797))

(declare-fun m!2723799 () Bool)

(assert (=> b!2296221 m!2723799))

(declare-fun m!2723801 () Bool)

(assert (=> b!2296221 m!2723801))

(declare-fun m!2723803 () Bool)

(assert (=> d!679278 m!2723803))

(declare-fun m!2723805 () Bool)

(assert (=> d!679278 m!2723805))

(declare-fun m!2723807 () Bool)

(assert (=> d!679278 m!2723807))

(assert (=> d!679278 m!2722573))

(assert (=> d!679278 m!2722573))

(declare-fun m!2723809 () Bool)

(assert (=> d!679278 m!2723809))

(declare-fun m!2723811 () Bool)

(assert (=> d!679278 m!2723811))

(assert (=> d!679278 m!2722573))

(assert (=> d!679278 m!2722737))

(assert (=> d!679278 m!2722573))

(assert (=> d!679278 m!2723791))

(declare-fun m!2723813 () Bool)

(assert (=> d!679278 m!2723813))

(assert (=> d!679278 m!2723811))

(declare-fun m!2723815 () Bool)

(assert (=> d!679278 m!2723815))

(declare-fun m!2723817 () Bool)

(assert (=> b!2296220 m!2723817))

(declare-fun m!2723819 () Bool)

(assert (=> b!2296220 m!2723819))

(declare-fun m!2723821 () Bool)

(assert (=> b!2296220 m!2723821))

(assert (=> b!2296220 m!2723813))

(declare-fun m!2723823 () Bool)

(assert (=> b!2296220 m!2723823))

(declare-fun m!2723825 () Bool)

(assert (=> b!2296220 m!2723825))

(declare-fun m!2723827 () Bool)

(assert (=> b!2296220 m!2723827))

(assert (=> b!2296220 m!2723823))

(declare-fun m!2723829 () Bool)

(assert (=> b!2296220 m!2723829))

(declare-fun m!2723831 () Bool)

(assert (=> b!2296220 m!2723831))

(declare-fun m!2723833 () Bool)

(assert (=> b!2296220 m!2723833))

(declare-fun m!2723835 () Bool)

(assert (=> b!2296220 m!2723835))

(assert (=> b!2296220 m!2723833))

(declare-fun m!2723837 () Bool)

(assert (=> b!2296220 m!2723837))

(declare-fun m!2723839 () Bool)

(assert (=> b!2296220 m!2723839))

(declare-fun m!2723841 () Bool)

(assert (=> b!2296220 m!2723841))

(declare-fun m!2723843 () Bool)

(assert (=> b!2296220 m!2723843))

(declare-fun m!2723845 () Bool)

(assert (=> b!2296220 m!2723845))

(declare-fun m!2723847 () Bool)

(assert (=> b!2296220 m!2723847))

(declare-fun m!2723849 () Bool)

(assert (=> b!2296220 m!2723849))

(declare-fun m!2723851 () Bool)

(assert (=> b!2296220 m!2723851))

(declare-fun m!2723853 () Bool)

(assert (=> b!2296220 m!2723853))

(declare-fun m!2723855 () Bool)

(assert (=> b!2296220 m!2723855))

(assert (=> b!2296220 m!2723831))

(assert (=> b!2296220 m!2723841))

(declare-fun m!2723857 () Bool)

(assert (=> b!2296220 m!2723857))

(declare-fun m!2723859 () Bool)

(assert (=> b!2296220 m!2723859))

(assert (=> b!2296220 m!2722573))

(declare-fun m!2723861 () Bool)

(assert (=> b!2296220 m!2723861))

(declare-fun m!2723863 () Bool)

(assert (=> b!2296220 m!2723863))

(declare-fun m!2723865 () Bool)

(assert (=> b!2296220 m!2723865))

(assert (=> b!2296220 m!2723845))

(assert (=> b!2296220 m!2723813))

(assert (=> b!2296220 m!2723859))

(declare-fun m!2723867 () Bool)

(assert (=> b!2296220 m!2723867))

(assert (=> b!2296220 m!2723853))

(assert (=> b!2296220 m!2723837))

(assert (=> b!2296220 m!2722573))

(assert (=> b!2296220 m!2723853))

(declare-fun m!2723869 () Bool)

(assert (=> b!2296220 m!2723869))

(declare-fun m!2723871 () Bool)

(assert (=> b!2296220 m!2723871))

(assert (=> b!2296220 m!2723857))

(declare-fun m!2723873 () Bool)

(assert (=> b!2296220 m!2723873))

(assert (=> b!2296220 m!2723857))

(assert (=> b!2296220 m!2723825))

(declare-fun m!2723875 () Bool)

(assert (=> b!2296220 m!2723875))

(assert (=> b!2296220 m!2722573))

(assert (=> b!2296220 m!2723791))

(assert (=> b!2296220 m!2723873))

(declare-fun m!2723877 () Bool)

(assert (=> b!2296220 m!2723877))

(assert (=> d!678880 d!679278))

(declare-fun b!2296225 () Bool)

(declare-fun e!1471403 () Bool)

(assert (=> b!2296225 (= e!1471403 tp_is_empty!10671)))

(declare-fun b!2296226 () Bool)

(declare-fun tp!728150 () Bool)

(declare-fun tp!728147 () Bool)

(assert (=> b!2296226 (= e!1471403 (and tp!728150 tp!728147))))

(declare-fun b!2296227 () Bool)

(declare-fun tp!728148 () Bool)

(assert (=> b!2296227 (= e!1471403 tp!728148)))

(declare-fun b!2296228 () Bool)

(declare-fun tp!728149 () Bool)

(declare-fun tp!728146 () Bool)

(assert (=> b!2296228 (= e!1471403 (and tp!728149 tp!728146))))

(assert (=> b!2295512 (= tp!727997 e!1471403)))

(assert (= (and b!2295512 ((_ is ElementMatch!6725) (regOne!13963 (regex!4377 otherR!12)))) b!2296225))

(assert (= (and b!2295512 ((_ is Concat!11265) (regOne!13963 (regex!4377 otherR!12)))) b!2296226))

(assert (= (and b!2295512 ((_ is Star!6725) (regOne!13963 (regex!4377 otherR!12)))) b!2296227))

(assert (= (and b!2295512 ((_ is Union!6725) (regOne!13963 (regex!4377 otherR!12)))) b!2296228))

(declare-fun b!2296229 () Bool)

(declare-fun e!1471404 () Bool)

(assert (=> b!2296229 (= e!1471404 tp_is_empty!10671)))

(declare-fun b!2296230 () Bool)

(declare-fun tp!728155 () Bool)

(declare-fun tp!728152 () Bool)

(assert (=> b!2296230 (= e!1471404 (and tp!728155 tp!728152))))

(declare-fun b!2296231 () Bool)

(declare-fun tp!728153 () Bool)

(assert (=> b!2296231 (= e!1471404 tp!728153)))

(declare-fun b!2296232 () Bool)

(declare-fun tp!728154 () Bool)

(declare-fun tp!728151 () Bool)

(assert (=> b!2296232 (= e!1471404 (and tp!728154 tp!728151))))

(assert (=> b!2295512 (= tp!727994 e!1471404)))

(assert (= (and b!2295512 ((_ is ElementMatch!6725) (regTwo!13963 (regex!4377 otherR!12)))) b!2296229))

(assert (= (and b!2295512 ((_ is Concat!11265) (regTwo!13963 (regex!4377 otherR!12)))) b!2296230))

(assert (= (and b!2295512 ((_ is Star!6725) (regTwo!13963 (regex!4377 otherR!12)))) b!2296231))

(assert (= (and b!2295512 ((_ is Union!6725) (regTwo!13963 (regex!4377 otherR!12)))) b!2296232))

(declare-fun b!2296233 () Bool)

(declare-fun e!1471405 () Bool)

(declare-fun tp!728156 () Bool)

(assert (=> b!2296233 (= e!1471405 (and tp_is_empty!10671 tp!728156))))

(assert (=> b!2295464 (= tp!727945 e!1471405)))

(assert (= (and b!2295464 ((_ is Cons!27330) (t!205208 (t!205208 input!1722)))) b!2296233))

(declare-fun b!2296234 () Bool)

(declare-fun e!1471406 () Bool)

(declare-fun tp!728157 () Bool)

(assert (=> b!2296234 (= e!1471406 (and tp_is_empty!10671 tp!728157))))

(assert (=> b!2295501 (= tp!727987 e!1471406)))

(assert (= (and b!2295501 ((_ is Cons!27330) (originalCharacters!5147 (h!32732 (t!205209 tokens!456))))) b!2296234))

(declare-fun b!2296235 () Bool)

(declare-fun e!1471407 () Bool)

(assert (=> b!2296235 (= e!1471407 tp_is_empty!10671)))

(declare-fun b!2296236 () Bool)

(declare-fun tp!728162 () Bool)

(declare-fun tp!728159 () Bool)

(assert (=> b!2296236 (= e!1471407 (and tp!728162 tp!728159))))

(declare-fun b!2296237 () Bool)

(declare-fun tp!728160 () Bool)

(assert (=> b!2296237 (= e!1471407 tp!728160)))

(declare-fun b!2296238 () Bool)

(declare-fun tp!728161 () Bool)

(declare-fun tp!728158 () Bool)

(assert (=> b!2296238 (= e!1471407 (and tp!728161 tp!728158))))

(assert (=> b!2295506 (= tp!727990 e!1471407)))

(assert (= (and b!2295506 ((_ is ElementMatch!6725) (reg!7054 (regex!4377 r!2363)))) b!2296235))

(assert (= (and b!2295506 ((_ is Concat!11265) (reg!7054 (regex!4377 r!2363)))) b!2296236))

(assert (= (and b!2295506 ((_ is Star!6725) (reg!7054 (regex!4377 r!2363)))) b!2296237))

(assert (= (and b!2295506 ((_ is Union!6725) (reg!7054 (regex!4377 r!2363)))) b!2296238))

(declare-fun tp!728170 () Bool)

(declare-fun b!2296247 () Bool)

(declare-fun e!1471412 () Bool)

(declare-fun tp!728171 () Bool)

(assert (=> b!2296247 (= e!1471412 (and (inv!36944 (left!20715 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))))) tp!728171 (inv!36944 (right!21045 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))))) tp!728170))))

(declare-fun b!2296249 () Bool)

(declare-fun e!1471413 () Bool)

(declare-fun tp!728169 () Bool)

(assert (=> b!2296249 (= e!1471413 tp!728169)))

(declare-fun b!2296248 () Bool)

(declare-fun inv!36950 (IArray!17809) Bool)

(assert (=> b!2296248 (= e!1471412 (and (inv!36950 (xs!11844 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))))) e!1471413))))

(assert (=> b!2295368 (= tp!727942 (and (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456))))) e!1471412))))

(assert (= (and b!2295368 ((_ is Node!8902) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))))) b!2296247))

(assert (= b!2296248 b!2296249))

(assert (= (and b!2295368 ((_ is Leaf!13076) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (value!138564 (h!32732 tokens!456)))))) b!2296248))

(declare-fun m!2723879 () Bool)

(assert (=> b!2296247 m!2723879))

(declare-fun m!2723881 () Bool)

(assert (=> b!2296247 m!2723881))

(declare-fun m!2723883 () Bool)

(assert (=> b!2296248 m!2723883))

(assert (=> b!2295368 m!2722885))

(declare-fun b!2296253 () Bool)

(declare-fun b_free!69141 () Bool)

(declare-fun b_next!69845 () Bool)

(assert (=> b!2296253 (= b_free!69141 (not b_next!69845))))

(declare-fun t!205360 () Bool)

(declare-fun tb!137163 () Bool)

(assert (=> (and b!2296253 (= (toValue!6175 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205360) tb!137163))

(declare-fun result!167202 () Bool)

(assert (= result!167202 result!167140))

(assert (=> d!679150 t!205360))

(declare-fun tp!728173 () Bool)

(declare-fun b_and!182673 () Bool)

(assert (=> b!2296253 (= tp!728173 (and (=> t!205360 result!167202) b_and!182673))))

(declare-fun b_free!69143 () Bool)

(declare-fun b_next!69847 () Bool)

(assert (=> b!2296253 (= b_free!69143 (not b_next!69847))))

(declare-fun t!205362 () Bool)

(declare-fun tb!137165 () Bool)

(assert (=> (and b!2296253 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205362) tb!137165))

(declare-fun result!167204 () Bool)

(assert (= result!167204 result!167034))

(assert (=> d!678842 t!205362))

(declare-fun t!205364 () Bool)

(declare-fun tb!137167 () Bool)

(assert (=> (and b!2296253 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205364) tb!137167))

(declare-fun result!167206 () Bool)

(assert (= result!167206 result!167078))

(assert (=> b!2295366 t!205364))

(declare-fun tb!137169 () Bool)

(declare-fun t!205366 () Bool)

(assert (=> (and b!2296253 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205366) tb!137169))

(declare-fun result!167208 () Bool)

(assert (= result!167208 result!167114))

(assert (=> d!679104 t!205366))

(declare-fun t!205368 () Bool)

(declare-fun tb!137171 () Bool)

(assert (=> (and b!2296253 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205368) tb!137171))

(declare-fun result!167210 () Bool)

(assert (= result!167210 result!167166))

(assert (=> b!2295896 t!205368))

(declare-fun b_and!182675 () Bool)

(declare-fun tp!728174 () Bool)

(assert (=> b!2296253 (= tp!728174 (and (=> t!205362 result!167204) (=> t!205364 result!167206) (=> t!205366 result!167208) (=> t!205368 result!167210) b_and!182675))))

(declare-fun b!2296252 () Bool)

(declare-fun tp!728175 () Bool)

(declare-fun e!1471415 () Bool)

(declare-fun e!1471417 () Bool)

(assert (=> b!2296252 (= e!1471417 (and tp!728175 (inv!36937 (tag!4867 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (inv!36941 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) e!1471415))))

(assert (=> b!2296253 (= e!1471415 (and tp!728173 tp!728174))))

(declare-fun e!1471418 () Bool)

(declare-fun b!2296250 () Bool)

(declare-fun tp!728172 () Bool)

(declare-fun e!1471416 () Bool)

(assert (=> b!2296250 (= e!1471416 (and (inv!36940 (h!32732 (t!205209 (t!205209 tokens!456)))) e!1471418 tp!728172))))

(assert (=> b!2295500 (= tp!727983 e!1471416)))

(declare-fun b!2296251 () Bool)

(declare-fun tp!728176 () Bool)

(assert (=> b!2296251 (= e!1471418 (and (inv!21 (value!138564 (h!32732 (t!205209 (t!205209 tokens!456))))) e!1471417 tp!728176))))

(assert (= b!2296252 b!2296253))

(assert (= b!2296251 b!2296252))

(assert (= b!2296250 b!2296251))

(assert (= (and b!2295500 ((_ is Cons!27331) (t!205209 (t!205209 tokens!456)))) b!2296250))

(declare-fun m!2723885 () Bool)

(assert (=> b!2296252 m!2723885))

(declare-fun m!2723887 () Bool)

(assert (=> b!2296252 m!2723887))

(declare-fun m!2723889 () Bool)

(assert (=> b!2296250 m!2723889))

(declare-fun m!2723891 () Bool)

(assert (=> b!2296251 m!2723891))

(declare-fun b!2296254 () Bool)

(declare-fun e!1471420 () Bool)

(assert (=> b!2296254 (= e!1471420 tp_is_empty!10671)))

(declare-fun b!2296255 () Bool)

(declare-fun tp!728181 () Bool)

(declare-fun tp!728178 () Bool)

(assert (=> b!2296255 (= e!1471420 (and tp!728181 tp!728178))))

(declare-fun b!2296256 () Bool)

(declare-fun tp!728179 () Bool)

(assert (=> b!2296256 (= e!1471420 tp!728179)))

(declare-fun b!2296257 () Bool)

(declare-fun tp!728180 () Bool)

(declare-fun tp!728177 () Bool)

(assert (=> b!2296257 (= e!1471420 (and tp!728180 tp!728177))))

(assert (=> b!2295505 (= tp!727992 e!1471420)))

(assert (= (and b!2295505 ((_ is ElementMatch!6725) (regOne!13962 (regex!4377 r!2363)))) b!2296254))

(assert (= (and b!2295505 ((_ is Concat!11265) (regOne!13962 (regex!4377 r!2363)))) b!2296255))

(assert (= (and b!2295505 ((_ is Star!6725) (regOne!13962 (regex!4377 r!2363)))) b!2296256))

(assert (= (and b!2295505 ((_ is Union!6725) (regOne!13962 (regex!4377 r!2363)))) b!2296257))

(declare-fun b!2296258 () Bool)

(declare-fun e!1471421 () Bool)

(assert (=> b!2296258 (= e!1471421 tp_is_empty!10671)))

(declare-fun b!2296259 () Bool)

(declare-fun tp!728186 () Bool)

(declare-fun tp!728183 () Bool)

(assert (=> b!2296259 (= e!1471421 (and tp!728186 tp!728183))))

(declare-fun b!2296260 () Bool)

(declare-fun tp!728184 () Bool)

(assert (=> b!2296260 (= e!1471421 tp!728184)))

(declare-fun b!2296261 () Bool)

(declare-fun tp!728185 () Bool)

(declare-fun tp!728182 () Bool)

(assert (=> b!2296261 (= e!1471421 (and tp!728185 tp!728182))))

(assert (=> b!2295505 (= tp!727989 e!1471421)))

(assert (= (and b!2295505 ((_ is ElementMatch!6725) (regTwo!13962 (regex!4377 r!2363)))) b!2296258))

(assert (= (and b!2295505 ((_ is Concat!11265) (regTwo!13962 (regex!4377 r!2363)))) b!2296259))

(assert (= (and b!2295505 ((_ is Star!6725) (regTwo!13962 (regex!4377 r!2363)))) b!2296260))

(assert (= (and b!2295505 ((_ is Union!6725) (regTwo!13962 (regex!4377 r!2363)))) b!2296261))

(declare-fun b!2296262 () Bool)

(declare-fun e!1471422 () Bool)

(assert (=> b!2296262 (= e!1471422 tp_is_empty!10671)))

(declare-fun b!2296263 () Bool)

(declare-fun tp!728191 () Bool)

(declare-fun tp!728188 () Bool)

(assert (=> b!2296263 (= e!1471422 (and tp!728191 tp!728188))))

(declare-fun b!2296264 () Bool)

(declare-fun tp!728189 () Bool)

(assert (=> b!2296264 (= e!1471422 tp!728189)))

(declare-fun b!2296265 () Bool)

(declare-fun tp!728190 () Bool)

(declare-fun tp!728187 () Bool)

(assert (=> b!2296265 (= e!1471422 (and tp!728190 tp!728187))))

(assert (=> b!2295516 (= tp!728002 e!1471422)))

(assert (= (and b!2295516 ((_ is ElementMatch!6725) (regOne!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296262))

(assert (= (and b!2295516 ((_ is Concat!11265) (regOne!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296263))

(assert (= (and b!2295516 ((_ is Star!6725) (regOne!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296264))

(assert (= (and b!2295516 ((_ is Union!6725) (regOne!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296265))

(declare-fun b!2296266 () Bool)

(declare-fun e!1471423 () Bool)

(assert (=> b!2296266 (= e!1471423 tp_is_empty!10671)))

(declare-fun b!2296267 () Bool)

(declare-fun tp!728196 () Bool)

(declare-fun tp!728193 () Bool)

(assert (=> b!2296267 (= e!1471423 (and tp!728196 tp!728193))))

(declare-fun b!2296268 () Bool)

(declare-fun tp!728194 () Bool)

(assert (=> b!2296268 (= e!1471423 tp!728194)))

(declare-fun b!2296269 () Bool)

(declare-fun tp!728195 () Bool)

(declare-fun tp!728192 () Bool)

(assert (=> b!2296269 (= e!1471423 (and tp!728195 tp!728192))))

(assert (=> b!2295516 (= tp!727999 e!1471423)))

(assert (= (and b!2295516 ((_ is ElementMatch!6725) (regTwo!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296266))

(assert (= (and b!2295516 ((_ is Concat!11265) (regTwo!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296267))

(assert (= (and b!2295516 ((_ is Star!6725) (regTwo!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296268))

(assert (= (and b!2295516 ((_ is Union!6725) (regTwo!13963 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296269))

(declare-fun e!1471424 () Bool)

(declare-fun tp!728199 () Bool)

(declare-fun b!2296270 () Bool)

(declare-fun tp!728198 () Bool)

(assert (=> b!2296270 (= e!1471424 (and (inv!36944 (left!20715 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))))) tp!728199 (inv!36944 (right!21045 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))))) tp!728198))))

(declare-fun b!2296272 () Bool)

(declare-fun e!1471425 () Bool)

(declare-fun tp!728197 () Bool)

(assert (=> b!2296272 (= e!1471425 tp!728197)))

(declare-fun b!2296271 () Bool)

(assert (=> b!2296271 (= e!1471424 (and (inv!36950 (xs!11844 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))))) e!1471425))))

(assert (=> b!2295095 (= tp!727874 (and (inv!36944 (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456))))) e!1471424))))

(assert (= (and b!2295095 ((_ is Node!8902) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))))) b!2296270))

(assert (= b!2296271 b!2296272))

(assert (= (and b!2295095 ((_ is Leaf!13076) (c!363882 (dynLambda!11869 (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))) (value!138564 (head!5010 tokens!456)))))) b!2296271))

(declare-fun m!2723893 () Bool)

(assert (=> b!2296270 m!2723893))

(declare-fun m!2723895 () Bool)

(assert (=> b!2296270 m!2723895))

(declare-fun m!2723897 () Bool)

(assert (=> b!2296271 m!2723897))

(assert (=> b!2295095 m!2722641))

(declare-fun b!2296273 () Bool)

(declare-fun e!1471426 () Bool)

(assert (=> b!2296273 (= e!1471426 tp_is_empty!10671)))

(declare-fun b!2296274 () Bool)

(declare-fun tp!728204 () Bool)

(declare-fun tp!728201 () Bool)

(assert (=> b!2296274 (= e!1471426 (and tp!728204 tp!728201))))

(declare-fun b!2296275 () Bool)

(declare-fun tp!728202 () Bool)

(assert (=> b!2296275 (= e!1471426 tp!728202)))

(declare-fun b!2296276 () Bool)

(declare-fun tp!728203 () Bool)

(declare-fun tp!728200 () Bool)

(assert (=> b!2296276 (= e!1471426 (and tp!728203 tp!728200))))

(assert (=> b!2295502 (= tp!727986 e!1471426)))

(assert (= (and b!2295502 ((_ is ElementMatch!6725) (regex!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) b!2296273))

(assert (= (and b!2295502 ((_ is Concat!11265) (regex!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) b!2296274))

(assert (= (and b!2295502 ((_ is Star!6725) (regex!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) b!2296275))

(assert (= (and b!2295502 ((_ is Union!6725) (regex!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) b!2296276))

(declare-fun b!2296277 () Bool)

(declare-fun e!1471427 () Bool)

(assert (=> b!2296277 (= e!1471427 tp_is_empty!10671)))

(declare-fun b!2296278 () Bool)

(declare-fun tp!728209 () Bool)

(declare-fun tp!728206 () Bool)

(assert (=> b!2296278 (= e!1471427 (and tp!728209 tp!728206))))

(declare-fun b!2296279 () Bool)

(declare-fun tp!728207 () Bool)

(assert (=> b!2296279 (= e!1471427 tp!728207)))

(declare-fun b!2296280 () Bool)

(declare-fun tp!728208 () Bool)

(declare-fun tp!728205 () Bool)

(assert (=> b!2296280 (= e!1471427 (and tp!728208 tp!728205))))

(assert (=> b!2295514 (= tp!728003 e!1471427)))

(assert (= (and b!2295514 ((_ is ElementMatch!6725) (regOne!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296277))

(assert (= (and b!2295514 ((_ is Concat!11265) (regOne!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296278))

(assert (= (and b!2295514 ((_ is Star!6725) (regOne!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296279))

(assert (= (and b!2295514 ((_ is Union!6725) (regOne!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296280))

(declare-fun b!2296281 () Bool)

(declare-fun e!1471428 () Bool)

(assert (=> b!2296281 (= e!1471428 tp_is_empty!10671)))

(declare-fun b!2296282 () Bool)

(declare-fun tp!728214 () Bool)

(declare-fun tp!728211 () Bool)

(assert (=> b!2296282 (= e!1471428 (and tp!728214 tp!728211))))

(declare-fun b!2296283 () Bool)

(declare-fun tp!728212 () Bool)

(assert (=> b!2296283 (= e!1471428 tp!728212)))

(declare-fun b!2296284 () Bool)

(declare-fun tp!728213 () Bool)

(declare-fun tp!728210 () Bool)

(assert (=> b!2296284 (= e!1471428 (and tp!728213 tp!728210))))

(assert (=> b!2295514 (= tp!728000 e!1471428)))

(assert (= (and b!2295514 ((_ is ElementMatch!6725) (regTwo!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296281))

(assert (= (and b!2295514 ((_ is Concat!11265) (regTwo!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296282))

(assert (= (and b!2295514 ((_ is Star!6725) (regTwo!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296283))

(assert (= (and b!2295514 ((_ is Union!6725) (regTwo!13962 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296284))

(declare-fun b!2296285 () Bool)

(declare-fun e!1471429 () Bool)

(assert (=> b!2296285 (= e!1471429 tp_is_empty!10671)))

(declare-fun b!2296286 () Bool)

(declare-fun tp!728219 () Bool)

(declare-fun tp!728216 () Bool)

(assert (=> b!2296286 (= e!1471429 (and tp!728219 tp!728216))))

(declare-fun b!2296287 () Bool)

(declare-fun tp!728217 () Bool)

(assert (=> b!2296287 (= e!1471429 tp!728217)))

(declare-fun b!2296288 () Bool)

(declare-fun tp!728218 () Bool)

(declare-fun tp!728215 () Bool)

(assert (=> b!2296288 (= e!1471429 (and tp!728218 tp!728215))))

(assert (=> b!2295507 (= tp!727991 e!1471429)))

(assert (= (and b!2295507 ((_ is ElementMatch!6725) (regOne!13963 (regex!4377 r!2363)))) b!2296285))

(assert (= (and b!2295507 ((_ is Concat!11265) (regOne!13963 (regex!4377 r!2363)))) b!2296286))

(assert (= (and b!2295507 ((_ is Star!6725) (regOne!13963 (regex!4377 r!2363)))) b!2296287))

(assert (= (and b!2295507 ((_ is Union!6725) (regOne!13963 (regex!4377 r!2363)))) b!2296288))

(declare-fun b!2296289 () Bool)

(declare-fun e!1471430 () Bool)

(assert (=> b!2296289 (= e!1471430 tp_is_empty!10671)))

(declare-fun b!2296290 () Bool)

(declare-fun tp!728224 () Bool)

(declare-fun tp!728221 () Bool)

(assert (=> b!2296290 (= e!1471430 (and tp!728224 tp!728221))))

(declare-fun b!2296291 () Bool)

(declare-fun tp!728222 () Bool)

(assert (=> b!2296291 (= e!1471430 tp!728222)))

(declare-fun b!2296292 () Bool)

(declare-fun tp!728223 () Bool)

(declare-fun tp!728220 () Bool)

(assert (=> b!2296292 (= e!1471430 (and tp!728223 tp!728220))))

(assert (=> b!2295507 (= tp!727988 e!1471430)))

(assert (= (and b!2295507 ((_ is ElementMatch!6725) (regTwo!13963 (regex!4377 r!2363)))) b!2296289))

(assert (= (and b!2295507 ((_ is Concat!11265) (regTwo!13963 (regex!4377 r!2363)))) b!2296290))

(assert (= (and b!2295507 ((_ is Star!6725) (regTwo!13963 (regex!4377 r!2363)))) b!2296291))

(assert (= (and b!2295507 ((_ is Union!6725) (regTwo!13963 (regex!4377 r!2363)))) b!2296292))

(declare-fun b!2296293 () Bool)

(declare-fun e!1471431 () Bool)

(assert (=> b!2296293 (= e!1471431 tp_is_empty!10671)))

(declare-fun b!2296294 () Bool)

(declare-fun tp!728229 () Bool)

(declare-fun tp!728226 () Bool)

(assert (=> b!2296294 (= e!1471431 (and tp!728229 tp!728226))))

(declare-fun b!2296295 () Bool)

(declare-fun tp!728227 () Bool)

(assert (=> b!2296295 (= e!1471431 tp!728227)))

(declare-fun b!2296296 () Bool)

(declare-fun tp!728228 () Bool)

(declare-fun tp!728225 () Bool)

(assert (=> b!2296296 (= e!1471431 (and tp!728228 tp!728225))))

(assert (=> b!2295515 (= tp!728001 e!1471431)))

(assert (= (and b!2295515 ((_ is ElementMatch!6725) (reg!7054 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296293))

(assert (= (and b!2295515 ((_ is Concat!11265) (reg!7054 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296294))

(assert (= (and b!2295515 ((_ is Star!6725) (reg!7054 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296295))

(assert (= (and b!2295515 ((_ is Union!6725) (reg!7054 (regex!4377 (rule!6715 (h!32732 tokens!456)))))) b!2296296))

(declare-fun b!2296297 () Bool)

(declare-fun e!1471432 () Bool)

(declare-fun tp!728230 () Bool)

(assert (=> b!2296297 (= e!1471432 (and tp_is_empty!10671 tp!728230))))

(assert (=> b!2295517 (= tp!728004 e!1471432)))

(assert (= (and b!2295517 ((_ is Cons!27330) (t!205208 (t!205208 suffix!886)))) b!2296297))

(declare-fun b!2296298 () Bool)

(declare-fun e!1471433 () Bool)

(declare-fun tp!728231 () Bool)

(assert (=> b!2296298 (= e!1471433 (and tp_is_empty!10671 tp!728231))))

(assert (=> b!2295508 (= tp!727993 e!1471433)))

(assert (= (and b!2295508 ((_ is Cons!27330) (t!205208 (t!205208 otherP!12)))) b!2296298))

(declare-fun b!2296301 () Bool)

(declare-fun b_free!69145 () Bool)

(declare-fun b_next!69849 () Bool)

(assert (=> b!2296301 (= b_free!69145 (not b_next!69849))))

(declare-fun tb!137173 () Bool)

(declare-fun t!205370 () Bool)

(assert (=> (and b!2296301 (= (toValue!6175 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) (toValue!6175 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205370) tb!137173))

(declare-fun result!167212 () Bool)

(assert (= result!167212 result!167140))

(assert (=> d!679150 t!205370))

(declare-fun tp!728233 () Bool)

(declare-fun b_and!182677 () Bool)

(assert (=> b!2296301 (= tp!728233 (and (=> t!205370 result!167212) b_and!182677))))

(declare-fun b_free!69147 () Bool)

(declare-fun b_next!69851 () Bool)

(assert (=> b!2296301 (= b_free!69147 (not b_next!69851))))

(declare-fun tb!137175 () Bool)

(declare-fun t!205372 () Bool)

(assert (=> (and b!2296301 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456))))) t!205372) tb!137175))

(declare-fun result!167214 () Bool)

(assert (= result!167214 result!167034))

(assert (=> d!678842 t!205372))

(declare-fun t!205374 () Bool)

(declare-fun tb!137177 () Bool)

(assert (=> (and b!2296301 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456))))) t!205374) tb!137177))

(declare-fun result!167216 () Bool)

(assert (= result!167216 result!167078))

(assert (=> b!2295366 t!205374))

(declare-fun t!205376 () Bool)

(declare-fun tb!137179 () Bool)

(assert (=> (and b!2296301 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) (toChars!6034 (transformation!4377 (rule!6715 (_1!16095 (get!8239 lt!851616)))))) t!205376) tb!137179))

(declare-fun result!167218 () Bool)

(assert (= result!167218 result!167114))

(assert (=> d!679104 t!205376))

(declare-fun tb!137181 () Bool)

(declare-fun t!205378 () Bool)

(assert (=> (and b!2296301 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456)))))) t!205378) tb!137181))

(declare-fun result!167220 () Bool)

(assert (= result!167220 result!167166))

(assert (=> b!2295896 t!205378))

(declare-fun b_and!182679 () Bool)

(declare-fun tp!728232 () Bool)

(assert (=> b!2296301 (= tp!728232 (and (=> t!205372 result!167214) (=> t!205374 result!167216) (=> t!205376 result!167218) (=> t!205378 result!167220) b_and!182679))))

(declare-fun e!1471437 () Bool)

(assert (=> b!2296301 (= e!1471437 (and tp!728233 tp!728232))))

(declare-fun b!2296300 () Bool)

(declare-fun e!1471436 () Bool)

(declare-fun tp!728235 () Bool)

(assert (=> b!2296300 (= e!1471436 (and tp!728235 (inv!36937 (tag!4867 (h!32733 (t!205210 (t!205210 rules!1750))))) (inv!36941 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) e!1471437))))

(declare-fun b!2296299 () Bool)

(declare-fun e!1471434 () Bool)

(declare-fun tp!728234 () Bool)

(assert (=> b!2296299 (= e!1471434 (and e!1471436 tp!728234))))

(assert (=> b!2295487 (= tp!727971 e!1471434)))

(assert (= b!2296300 b!2296301))

(assert (= b!2296299 b!2296300))

(assert (= (and b!2295487 ((_ is Cons!27332) (t!205210 (t!205210 rules!1750)))) b!2296299))

(declare-fun m!2723899 () Bool)

(assert (=> b!2296300 m!2723899))

(declare-fun m!2723901 () Bool)

(assert (=> b!2296300 m!2723901))

(declare-fun b!2296302 () Bool)

(declare-fun e!1471438 () Bool)

(assert (=> b!2296302 (= e!1471438 tp_is_empty!10671)))

(declare-fun b!2296303 () Bool)

(declare-fun tp!728240 () Bool)

(declare-fun tp!728237 () Bool)

(assert (=> b!2296303 (= e!1471438 (and tp!728240 tp!728237))))

(declare-fun b!2296304 () Bool)

(declare-fun tp!728238 () Bool)

(assert (=> b!2296304 (= e!1471438 tp!728238)))

(declare-fun b!2296305 () Bool)

(declare-fun tp!728239 () Bool)

(declare-fun tp!728236 () Bool)

(assert (=> b!2296305 (= e!1471438 (and tp!728239 tp!728236))))

(assert (=> b!2295488 (= tp!727972 e!1471438)))

(assert (= (and b!2295488 ((_ is ElementMatch!6725) (regex!4377 (h!32733 (t!205210 rules!1750))))) b!2296302))

(assert (= (and b!2295488 ((_ is Concat!11265) (regex!4377 (h!32733 (t!205210 rules!1750))))) b!2296303))

(assert (= (and b!2295488 ((_ is Star!6725) (regex!4377 (h!32733 (t!205210 rules!1750))))) b!2296304))

(assert (= (and b!2295488 ((_ is Union!6725) (regex!4377 (h!32733 (t!205210 rules!1750))))) b!2296305))

(declare-fun b!2296306 () Bool)

(declare-fun e!1471439 () Bool)

(assert (=> b!2296306 (= e!1471439 tp_is_empty!10671)))

(declare-fun b!2296307 () Bool)

(declare-fun tp!728245 () Bool)

(declare-fun tp!728242 () Bool)

(assert (=> b!2296307 (= e!1471439 (and tp!728245 tp!728242))))

(declare-fun b!2296308 () Bool)

(declare-fun tp!728243 () Bool)

(assert (=> b!2296308 (= e!1471439 tp!728243)))

(declare-fun b!2296309 () Bool)

(declare-fun tp!728244 () Bool)

(declare-fun tp!728241 () Bool)

(assert (=> b!2296309 (= e!1471439 (and tp!728244 tp!728241))))

(assert (=> b!2295477 (= tp!727958 e!1471439)))

(assert (= (and b!2295477 ((_ is ElementMatch!6725) (reg!7054 (regex!4377 (h!32733 rules!1750))))) b!2296306))

(assert (= (and b!2295477 ((_ is Concat!11265) (reg!7054 (regex!4377 (h!32733 rules!1750))))) b!2296307))

(assert (= (and b!2295477 ((_ is Star!6725) (reg!7054 (regex!4377 (h!32733 rules!1750))))) b!2296308))

(assert (= (and b!2295477 ((_ is Union!6725) (reg!7054 (regex!4377 (h!32733 rules!1750))))) b!2296309))

(declare-fun b!2296310 () Bool)

(declare-fun e!1471440 () Bool)

(declare-fun tp!728246 () Bool)

(assert (=> b!2296310 (= e!1471440 (and tp_is_empty!10671 tp!728246))))

(assert (=> b!2295518 (= tp!728005 e!1471440)))

(assert (= (and b!2295518 ((_ is Cons!27330) (t!205208 (originalCharacters!5147 (h!32732 tokens!456))))) b!2296310))

(declare-fun b!2296311 () Bool)

(declare-fun e!1471441 () Bool)

(assert (=> b!2296311 (= e!1471441 tp_is_empty!10671)))

(declare-fun b!2296312 () Bool)

(declare-fun tp!728251 () Bool)

(declare-fun tp!728248 () Bool)

(assert (=> b!2296312 (= e!1471441 (and tp!728251 tp!728248))))

(declare-fun b!2296313 () Bool)

(declare-fun tp!728249 () Bool)

(assert (=> b!2296313 (= e!1471441 tp!728249)))

(declare-fun b!2296314 () Bool)

(declare-fun tp!728250 () Bool)

(declare-fun tp!728247 () Bool)

(assert (=> b!2296314 (= e!1471441 (and tp!728250 tp!728247))))

(assert (=> b!2295476 (= tp!727960 e!1471441)))

(assert (= (and b!2295476 ((_ is ElementMatch!6725) (regOne!13962 (regex!4377 (h!32733 rules!1750))))) b!2296311))

(assert (= (and b!2295476 ((_ is Concat!11265) (regOne!13962 (regex!4377 (h!32733 rules!1750))))) b!2296312))

(assert (= (and b!2295476 ((_ is Star!6725) (regOne!13962 (regex!4377 (h!32733 rules!1750))))) b!2296313))

(assert (= (and b!2295476 ((_ is Union!6725) (regOne!13962 (regex!4377 (h!32733 rules!1750))))) b!2296314))

(declare-fun b!2296315 () Bool)

(declare-fun e!1471442 () Bool)

(assert (=> b!2296315 (= e!1471442 tp_is_empty!10671)))

(declare-fun b!2296316 () Bool)

(declare-fun tp!728256 () Bool)

(declare-fun tp!728253 () Bool)

(assert (=> b!2296316 (= e!1471442 (and tp!728256 tp!728253))))

(declare-fun b!2296317 () Bool)

(declare-fun tp!728254 () Bool)

(assert (=> b!2296317 (= e!1471442 tp!728254)))

(declare-fun b!2296318 () Bool)

(declare-fun tp!728255 () Bool)

(declare-fun tp!728252 () Bool)

(assert (=> b!2296318 (= e!1471442 (and tp!728255 tp!728252))))

(assert (=> b!2295476 (= tp!727957 e!1471442)))

(assert (= (and b!2295476 ((_ is ElementMatch!6725) (regTwo!13962 (regex!4377 (h!32733 rules!1750))))) b!2296315))

(assert (= (and b!2295476 ((_ is Concat!11265) (regTwo!13962 (regex!4377 (h!32733 rules!1750))))) b!2296316))

(assert (= (and b!2295476 ((_ is Star!6725) (regTwo!13962 (regex!4377 (h!32733 rules!1750))))) b!2296317))

(assert (= (and b!2295476 ((_ is Union!6725) (regTwo!13962 (regex!4377 (h!32733 rules!1750))))) b!2296318))

(declare-fun b!2296319 () Bool)

(declare-fun e!1471443 () Bool)

(assert (=> b!2296319 (= e!1471443 tp_is_empty!10671)))

(declare-fun b!2296320 () Bool)

(declare-fun tp!728261 () Bool)

(declare-fun tp!728258 () Bool)

(assert (=> b!2296320 (= e!1471443 (and tp!728261 tp!728258))))

(declare-fun b!2296321 () Bool)

(declare-fun tp!728259 () Bool)

(assert (=> b!2296321 (= e!1471443 tp!728259)))

(declare-fun b!2296322 () Bool)

(declare-fun tp!728260 () Bool)

(declare-fun tp!728257 () Bool)

(assert (=> b!2296322 (= e!1471443 (and tp!728260 tp!728257))))

(assert (=> b!2295511 (= tp!727996 e!1471443)))

(assert (= (and b!2295511 ((_ is ElementMatch!6725) (reg!7054 (regex!4377 otherR!12)))) b!2296319))

(assert (= (and b!2295511 ((_ is Concat!11265) (reg!7054 (regex!4377 otherR!12)))) b!2296320))

(assert (= (and b!2295511 ((_ is Star!6725) (reg!7054 (regex!4377 otherR!12)))) b!2296321))

(assert (= (and b!2295511 ((_ is Union!6725) (reg!7054 (regex!4377 otherR!12)))) b!2296322))

(declare-fun b!2296323 () Bool)

(declare-fun e!1471444 () Bool)

(assert (=> b!2296323 (= e!1471444 tp_is_empty!10671)))

(declare-fun b!2296324 () Bool)

(declare-fun tp!728266 () Bool)

(declare-fun tp!728263 () Bool)

(assert (=> b!2296324 (= e!1471444 (and tp!728266 tp!728263))))

(declare-fun b!2296325 () Bool)

(declare-fun tp!728264 () Bool)

(assert (=> b!2296325 (= e!1471444 tp!728264)))

(declare-fun b!2296326 () Bool)

(declare-fun tp!728265 () Bool)

(declare-fun tp!728262 () Bool)

(assert (=> b!2296326 (= e!1471444 (and tp!728265 tp!728262))))

(assert (=> b!2295478 (= tp!727959 e!1471444)))

(assert (= (and b!2295478 ((_ is ElementMatch!6725) (regOne!13963 (regex!4377 (h!32733 rules!1750))))) b!2296323))

(assert (= (and b!2295478 ((_ is Concat!11265) (regOne!13963 (regex!4377 (h!32733 rules!1750))))) b!2296324))

(assert (= (and b!2295478 ((_ is Star!6725) (regOne!13963 (regex!4377 (h!32733 rules!1750))))) b!2296325))

(assert (= (and b!2295478 ((_ is Union!6725) (regOne!13963 (regex!4377 (h!32733 rules!1750))))) b!2296326))

(declare-fun b!2296327 () Bool)

(declare-fun e!1471445 () Bool)

(assert (=> b!2296327 (= e!1471445 tp_is_empty!10671)))

(declare-fun b!2296328 () Bool)

(declare-fun tp!728271 () Bool)

(declare-fun tp!728268 () Bool)

(assert (=> b!2296328 (= e!1471445 (and tp!728271 tp!728268))))

(declare-fun b!2296329 () Bool)

(declare-fun tp!728269 () Bool)

(assert (=> b!2296329 (= e!1471445 tp!728269)))

(declare-fun b!2296330 () Bool)

(declare-fun tp!728270 () Bool)

(declare-fun tp!728267 () Bool)

(assert (=> b!2296330 (= e!1471445 (and tp!728270 tp!728267))))

(assert (=> b!2295478 (= tp!727956 e!1471445)))

(assert (= (and b!2295478 ((_ is ElementMatch!6725) (regTwo!13963 (regex!4377 (h!32733 rules!1750))))) b!2296327))

(assert (= (and b!2295478 ((_ is Concat!11265) (regTwo!13963 (regex!4377 (h!32733 rules!1750))))) b!2296328))

(assert (= (and b!2295478 ((_ is Star!6725) (regTwo!13963 (regex!4377 (h!32733 rules!1750))))) b!2296329))

(assert (= (and b!2295478 ((_ is Union!6725) (regTwo!13963 (regex!4377 (h!32733 rules!1750))))) b!2296330))

(declare-fun b!2296331 () Bool)

(declare-fun e!1471446 () Bool)

(assert (=> b!2296331 (= e!1471446 tp_is_empty!10671)))

(declare-fun b!2296332 () Bool)

(declare-fun tp!728276 () Bool)

(declare-fun tp!728273 () Bool)

(assert (=> b!2296332 (= e!1471446 (and tp!728276 tp!728273))))

(declare-fun b!2296333 () Bool)

(declare-fun tp!728274 () Bool)

(assert (=> b!2296333 (= e!1471446 tp!728274)))

(declare-fun b!2296334 () Bool)

(declare-fun tp!728275 () Bool)

(declare-fun tp!728272 () Bool)

(assert (=> b!2296334 (= e!1471446 (and tp!728275 tp!728272))))

(assert (=> b!2295510 (= tp!727998 e!1471446)))

(assert (= (and b!2295510 ((_ is ElementMatch!6725) (regOne!13962 (regex!4377 otherR!12)))) b!2296331))

(assert (= (and b!2295510 ((_ is Concat!11265) (regOne!13962 (regex!4377 otherR!12)))) b!2296332))

(assert (= (and b!2295510 ((_ is Star!6725) (regOne!13962 (regex!4377 otherR!12)))) b!2296333))

(assert (= (and b!2295510 ((_ is Union!6725) (regOne!13962 (regex!4377 otherR!12)))) b!2296334))

(declare-fun b!2296335 () Bool)

(declare-fun e!1471447 () Bool)

(assert (=> b!2296335 (= e!1471447 tp_is_empty!10671)))

(declare-fun b!2296336 () Bool)

(declare-fun tp!728281 () Bool)

(declare-fun tp!728278 () Bool)

(assert (=> b!2296336 (= e!1471447 (and tp!728281 tp!728278))))

(declare-fun b!2296337 () Bool)

(declare-fun tp!728279 () Bool)

(assert (=> b!2296337 (= e!1471447 tp!728279)))

(declare-fun b!2296338 () Bool)

(declare-fun tp!728280 () Bool)

(declare-fun tp!728277 () Bool)

(assert (=> b!2296338 (= e!1471447 (and tp!728280 tp!728277))))

(assert (=> b!2295510 (= tp!727995 e!1471447)))

(assert (= (and b!2295510 ((_ is ElementMatch!6725) (regTwo!13962 (regex!4377 otherR!12)))) b!2296335))

(assert (= (and b!2295510 ((_ is Concat!11265) (regTwo!13962 (regex!4377 otherR!12)))) b!2296336))

(assert (= (and b!2295510 ((_ is Star!6725) (regTwo!13962 (regex!4377 otherR!12)))) b!2296337))

(assert (= (and b!2295510 ((_ is Union!6725) (regTwo!13962 (regex!4377 otherR!12)))) b!2296338))

(declare-fun b_lambda!73175 () Bool)

(assert (= b_lambda!73167 (or (and b!2295503 b_free!69131) (and b!2295489 b_free!69127 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))))) (and b!2295013 b_free!69103 (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))))) (and b!2296301 b_free!69147 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))))) (and b!2296253 b_free!69143 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))))) (and b!2295026 b_free!69107 (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))))) (and b!2295030 b_free!69111 (= (toChars!6034 (transformation!4377 r!2363)) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))))) (and b!2295042 b_free!69115 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))))) b_lambda!73175)))

(declare-fun b_lambda!73177 () Bool)

(assert (= b_lambda!73159 (or d!678894 b_lambda!73177)))

(declare-fun bs!457427 () Bool)

(declare-fun d!679320 () Bool)

(assert (= bs!457427 (and d!679320 d!678894)))

(assert (=> bs!457427 (= (dynLambda!11877 lambda!85839 (h!32733 rules!1750)) (ruleValid!1467 thiss!16613 (h!32733 rules!1750)))))

(assert (=> bs!457427 m!2722881))

(assert (=> b!2295726 d!679320))

(declare-fun b_lambda!73179 () Bool)

(assert (= b_lambda!73141 (or (and b!2295042 b_free!69115 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 tokens!456)))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) (and b!2295489 b_free!69127 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 rules!1750)))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) (and b!2295030 b_free!69111 (= (toChars!6034 (transformation!4377 r!2363)) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) (and b!2295013 b_free!69103 (= (toChars!6034 (transformation!4377 otherR!12)) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) (and b!2296253 b_free!69143 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 (t!205209 tokens!456)))))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) (and b!2296301 b_free!69147 (= (toChars!6034 (transformation!4377 (h!32733 (t!205210 (t!205210 rules!1750))))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) (and b!2295503 b_free!69131 (= (toChars!6034 (transformation!4377 (rule!6715 (h!32732 (t!205209 tokens!456))))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) (and b!2295026 b_free!69107 (= (toChars!6034 (transformation!4377 (h!32733 rules!1750))) (toChars!6034 (transformation!4377 (rule!6715 (head!5010 tokens!456)))))) b_lambda!73179)))

(check-sat (not b!2296322) (not b!2296300) (not d!679006) (not b!2296334) (not d!679242) (not b!2295955) (not b!2296282) (not d!679264) (not b!2296231) (not b!2296251) (not b_next!69813) (not tb!137083) (not b!2296252) (not b!2296336) (not b!2295895) (not d!679268) (not b!2295633) (not b!2296220) (not b!2295707) (not b!2296233) (not b!2296264) (not b!2295665) b_and!182631 (not b!2296265) (not b!2296292) (not d!679054) (not b!2296236) (not b!2296308) (not d!679094) (not b!2296317) (not b_next!69831) (not tb!137131) (not b!2295693) (not bm!136879) (not b!2295866) (not b!2295647) (not b_next!69829) (not b!2295664) b_and!182679 (not d!679070) (not d!679102) (not b!2296325) (not b!2296286) (not b!2296297) (not b!2296228) b_and!182635 (not b!2295886) (not b!2295942) (not b!2296223) (not d!679246) (not b_next!69845) (not b!2295654) (not b!2296296) (not b!2296230) (not b!2295870) (not b!2296238) (not b!2295760) (not bm!136852) (not d!679148) (not b!2295957) (not d!679198) b_and!182677 (not d!679236) (not d!679208) (not d!679212) (not b!2296313) (not b_next!69819) (not b!2295897) (not b!2295938) (not b!2296284) (not d!679254) (not b!2295853) (not bm!136890) (not b!2295937) (not b!2295948) (not b!2296318) (not b!2295908) (not d!679266) b_and!182663 (not d!679004) (not d!679220) (not d!679262) (not d!679278) (not b!2295643) (not d!679204) (not b!2296278) (not bm!136861) (not b!2295764) (not b!2295988) (not b!2296310) (not b!2295883) (not b!2296299) (not b_next!69847) (not b!2296324) (not b!2296287) (not b_lambda!73151) (not b!2295855) (not d!679098) (not b!2295645) (not d!679002) (not b!2295629) (not b!2296268) (not b_next!69833) (not b!2296256) (not b!2296291) (not b!2296271) (not b!2295681) (not b!2296248) (not b!2296261) (not b_next!69807) (not b!2296304) (not d!679248) (not d!679276) (not b!2296294) (not d!679066) (not b!2296305) (not b!2295954) (not b!2295857) (not b!2296260) (not d!679096) (not b!2295095) (not b_next!69805) (not b!2296227) (not b!2296328) (not b!2295687) (not d!679062) (not b!2295910) (not d!679206) (not b!2295678) (not b_lambda!73175) (not b!2295649) (not b!2295851) (not b!2295630) (not b!2295909) (not b!2296270) (not bm!136878) tp_is_empty!10671 (not bm!136877) (not b!2295901) (not b_next!69849) (not b!2295911) (not d!679104) (not b!2296314) (not b_next!69811) (not d!679154) (not b!2295696) b_and!182633 (not b!2296280) (not d!679240) (not b!2296329) (not b!2295762) (not b!2296232) (not b!2295991) (not d!679116) (not b!2296275) b_and!182629 (not b!2296272) (not b!2295898) (not d!679090) (not b_lambda!73157) (not b!2295859) (not b!2296234) b_and!182659 (not b!2295642) (not b!2296237) b_and!182675 (not b!2296226) (not b!2295692) (not b_next!69815) (not b!2295884) (not b!2296288) (not d!679252) b_and!182661 (not b_next!69835) (not d!679272) (not b!2296295) (not b!2295849) b_and!182657 (not b!2296330) (not b!2295852) (not b!2295847) (not d!679144) (not d!679140) (not d!679238) (not b!2296221) (not b!2296307) (not b!2295872) (not b_lambda!73177) (not b!2296269) (not b!2295905) (not b_lambda!73163) (not b!2295694) (not bm!136880) (not b!2296303) (not b_next!69817) (not b!2295854) (not d!679218) (not b!2295953) (not b!2296263) (not b!2295951) (not b!2295926) (not bm!136862) (not b!2295896) (not tb!137107) (not b!2296290) (not b!2296274) (not b!2295765) (not b!2296247) (not b!2295913) (not b!2295763) (not d!679074) (not b!2296332) (not b!2296267) (not b!2296279) (not b!2295690) (not b!2296320) b_and!182637 b_and!182673 (not b!2296276) (not b!2295989) (not d!679270) (not b!2295676) (not b!2295927) (not b!2295663) (not b!2295984) (not b!2295848) (not b!2296316) (not bs!457427) (not b!2296312) b_and!182655 b_and!182653 (not b!2296224) (not b!2296249) (not d!679210) (not b!2296283) (not b!2295865) (not b!2295943) (not d!679156) (not b_lambda!73179) (not b!2296309) (not b!2295727) (not b!2296259) (not d!679230) (not b!2295915) (not b!2295651) (not d!679194) (not b!2296321) (not b!2296326) (not b!2295914) (not b!2296337) (not b!2296255) (not d!679244) (not b_next!69809) (not d!679260) (not d!679134) (not b!2295368) (not b!2296298) (not b!2295652) (not b!2295907) (not bm!136891) (not d!679042) (not b!2295899) (not b!2296333) b_and!182639 (not b!2295902) (not d!679058) (not b_next!69851) (not b!2296338) (not b!2296250) (not b!2296257) (not d!679202))
(check-sat (not b_next!69813) (not b_next!69829) (not b_next!69845) b_and!182677 (not b_next!69819) b_and!182663 (not b_next!69847) (not b_next!69833) (not b_next!69807) (not b_next!69805) (not b_next!69849) b_and!182657 (not b_next!69817) (not b_next!69809) b_and!182631 (not b_next!69831) b_and!182679 b_and!182635 (not b_next!69811) b_and!182633 b_and!182629 b_and!182659 b_and!182675 (not b_next!69815) b_and!182661 (not b_next!69835) b_and!182637 b_and!182673 b_and!182655 b_and!182653 (not b_next!69851) b_and!182639)
