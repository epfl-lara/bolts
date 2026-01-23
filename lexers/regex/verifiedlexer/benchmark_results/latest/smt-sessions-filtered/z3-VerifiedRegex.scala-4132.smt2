; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221404 () Bool)

(assert start!221404)

(declare-fun b!2266791 () Bool)

(declare-fun b_free!67245 () Bool)

(declare-fun b_next!67949 () Bool)

(assert (=> b!2266791 (= b_free!67245 (not b_next!67949))))

(declare-fun tp!717287 () Bool)

(declare-fun b_and!178425 () Bool)

(assert (=> b!2266791 (= tp!717287 b_and!178425)))

(declare-fun b_free!67247 () Bool)

(declare-fun b_next!67951 () Bool)

(assert (=> b!2266791 (= b_free!67247 (not b_next!67951))))

(declare-fun tp!717293 () Bool)

(declare-fun b_and!178427 () Bool)

(assert (=> b!2266791 (= tp!717293 b_and!178427)))

(declare-fun b!2266804 () Bool)

(declare-fun b_free!67249 () Bool)

(declare-fun b_next!67953 () Bool)

(assert (=> b!2266804 (= b_free!67249 (not b_next!67953))))

(declare-fun tp!717294 () Bool)

(declare-fun b_and!178429 () Bool)

(assert (=> b!2266804 (= tp!717294 b_and!178429)))

(declare-fun b_free!67251 () Bool)

(declare-fun b_next!67955 () Bool)

(assert (=> b!2266804 (= b_free!67251 (not b_next!67955))))

(declare-fun tp!717298 () Bool)

(declare-fun b_and!178431 () Bool)

(assert (=> b!2266804 (= tp!717298 b_and!178431)))

(declare-fun b!2266797 () Bool)

(declare-fun b_free!67253 () Bool)

(declare-fun b_next!67957 () Bool)

(assert (=> b!2266797 (= b_free!67253 (not b_next!67957))))

(declare-fun tp!717295 () Bool)

(declare-fun b_and!178433 () Bool)

(assert (=> b!2266797 (= tp!717295 b_and!178433)))

(declare-fun b_free!67255 () Bool)

(declare-fun b_next!67959 () Bool)

(assert (=> b!2266797 (= b_free!67255 (not b_next!67959))))

(declare-fun tp!717291 () Bool)

(declare-fun b_and!178435 () Bool)

(assert (=> b!2266797 (= tp!717291 b_and!178435)))

(declare-fun b!2266801 () Bool)

(declare-fun b_free!67257 () Bool)

(declare-fun b_next!67961 () Bool)

(assert (=> b!2266801 (= b_free!67257 (not b_next!67961))))

(declare-fun tp!717290 () Bool)

(declare-fun b_and!178437 () Bool)

(assert (=> b!2266801 (= tp!717290 b_and!178437)))

(declare-fun b_free!67259 () Bool)

(declare-fun b_next!67963 () Bool)

(assert (=> b!2266801 (= b_free!67259 (not b_next!67963))))

(declare-fun tp!717283 () Bool)

(declare-fun b_and!178439 () Bool)

(assert (=> b!2266801 (= tp!717283 b_and!178439)))

(declare-fun b!2266773 () Bool)

(declare-fun e!1451811 () Bool)

(declare-datatypes ((List!27049 0))(
  ( (Nil!26955) (Cons!26955 (h!32356 (_ BitVec 16)) (t!202143 List!27049)) )
))
(declare-datatypes ((TokenValue!4457 0))(
  ( (FloatLiteralValue!8914 (text!31644 List!27049)) (TokenValueExt!4456 (__x!17974 Int)) (Broken!22285 (value!136201 List!27049)) (Object!4550) (End!4457) (Def!4457) (Underscore!4457) (Match!4457) (Else!4457) (Error!4457) (Case!4457) (If!4457) (Extends!4457) (Abstract!4457) (Class!4457) (Val!4457) (DelimiterValue!8914 (del!4517 List!27049)) (KeywordValue!4463 (value!136202 List!27049)) (CommentValue!8914 (value!136203 List!27049)) (WhitespaceValue!8914 (value!136204 List!27049)) (IndentationValue!4457 (value!136205 List!27049)) (String!29388) (Int32!4457) (Broken!22286 (value!136206 List!27049)) (Boolean!4458) (Unit!39913) (OperatorValue!4460 (op!4517 List!27049)) (IdentifierValue!8914 (value!136207 List!27049)) (IdentifierValue!8915 (value!136208 List!27049)) (WhitespaceValue!8915 (value!136209 List!27049)) (True!8914) (False!8914) (Broken!22287 (value!136210 List!27049)) (Broken!22288 (value!136211 List!27049)) (True!8915) (RightBrace!4457) (RightBracket!4457) (Colon!4457) (Null!4457) (Comma!4457) (LeftBracket!4457) (False!8915) (LeftBrace!4457) (ImaginaryLiteralValue!4457 (text!31645 List!27049)) (StringLiteralValue!13371 (value!136212 List!27049)) (EOFValue!4457 (value!136213 List!27049)) (IdentValue!4457 (value!136214 List!27049)) (DelimiterValue!8915 (value!136215 List!27049)) (DedentValue!4457 (value!136216 List!27049)) (NewLineValue!4457 (value!136217 List!27049)) (IntegerValue!13371 (value!136218 (_ BitVec 32)) (text!31646 List!27049)) (IntegerValue!13372 (value!136219 Int) (text!31647 List!27049)) (Times!4457) (Or!4457) (Equal!4457) (Minus!4457) (Broken!22289 (value!136220 List!27049)) (And!4457) (Div!4457) (LessEqual!4457) (Mod!4457) (Concat!11100) (Not!4457) (Plus!4457) (SpaceValue!4457 (value!136221 List!27049)) (IntegerValue!13373 (value!136222 Int) (text!31648 List!27049)) (StringLiteralValue!13372 (text!31649 List!27049)) (FloatLiteralValue!8915 (text!31650 List!27049)) (BytesLiteralValue!4457 (value!136223 List!27049)) (CommentValue!8915 (value!136224 List!27049)) (StringLiteralValue!13373 (value!136225 List!27049)) (ErrorTokenValue!4457 (msg!4518 List!27049)) )
))
(declare-datatypes ((C!13432 0))(
  ( (C!13433 (val!7764 Int)) )
))
(declare-datatypes ((List!27050 0))(
  ( (Nil!26956) (Cons!26956 (h!32357 C!13432) (t!202144 List!27050)) )
))
(declare-datatypes ((IArray!17481 0))(
  ( (IArray!17482 (innerList!8798 List!27050)) )
))
(declare-datatypes ((Conc!8738 0))(
  ( (Node!8738 (left!20454 Conc!8738) (right!20784 Conc!8738) (csize!17706 Int) (cheight!8949 Int)) (Leaf!12871 (xs!11680 IArray!17481) (csize!17707 Int)) (Empty!8738) )
))
(declare-datatypes ((BalanceConc!17204 0))(
  ( (BalanceConc!17205 (c!359944 Conc!8738)) )
))
(declare-datatypes ((Regex!6643 0))(
  ( (ElementMatch!6643 (c!359945 C!13432)) (Concat!11101 (regOne!13798 Regex!6643) (regTwo!13798 Regex!6643)) (EmptyExpr!6643) (Star!6643 (reg!6972 Regex!6643)) (EmptyLang!6643) (Union!6643 (regOne!13799 Regex!6643) (regTwo!13799 Regex!6643)) )
))
(declare-datatypes ((String!29389 0))(
  ( (String!29390 (value!136226 String)) )
))
(declare-datatypes ((TokenValueInjection!8454 0))(
  ( (TokenValueInjection!8455 (toValue!6049 Int) (toChars!5908 Int)) )
))
(declare-datatypes ((Rule!8390 0))(
  ( (Rule!8391 (regex!4295 Regex!6643) (tag!4785 String!29389) (isSeparator!4295 Bool) (transformation!4295 TokenValueInjection!8454)) )
))
(declare-datatypes ((Token!8068 0))(
  ( (Token!8069 (value!136227 TokenValue!4457) (rule!6611 Rule!8390) (size!21141 Int) (originalCharacters!5065 List!27050)) )
))
(declare-datatypes ((List!27051 0))(
  ( (Nil!26957) (Cons!26957 (h!32358 Token!8068) (t!202145 List!27051)) )
))
(declare-fun tokens!456 () List!27051)

(declare-fun otherP!12 () List!27050)

(declare-fun size!21142 (BalanceConc!17204) Int)

(declare-fun charsOf!2683 (Token!8068) BalanceConc!17204)

(declare-fun head!4882 (List!27051) Token!8068)

(declare-fun size!21143 (List!27050) Int)

(assert (=> b!2266773 (= e!1451811 (<= (size!21142 (charsOf!2683 (head!4882 tokens!456))) (size!21143 otherP!12)))))

(declare-fun b!2266774 () Bool)

(declare-fun res!969218 () Bool)

(declare-fun e!1451810 () Bool)

(assert (=> b!2266774 (=> (not res!969218) (not e!1451810))))

(declare-fun e!1451823 () Bool)

(assert (=> b!2266774 (= res!969218 e!1451823)))

(declare-fun res!969211 () Bool)

(assert (=> b!2266774 (=> res!969211 e!1451823)))

(declare-fun lt!842414 () Bool)

(assert (=> b!2266774 (= res!969211 lt!842414)))

(declare-fun b!2266775 () Bool)

(declare-fun res!969217 () Bool)

(declare-fun e!1451813 () Bool)

(assert (=> b!2266775 (=> (not res!969217) (not e!1451813))))

(declare-datatypes ((List!27052 0))(
  ( (Nil!26958) (Cons!26958 (h!32359 Rule!8390) (t!202146 List!27052)) )
))
(declare-fun rules!1750 () List!27052)

(declare-fun r!2363 () Rule!8390)

(declare-fun contains!4653 (List!27052 Rule!8390) Bool)

(assert (=> b!2266775 (= res!969217 (contains!4653 rules!1750 r!2363))))

(declare-fun e!1451830 () Bool)

(declare-fun b!2266776 () Bool)

(declare-fun tp!717285 () Bool)

(declare-fun e!1451814 () Bool)

(declare-fun inv!36495 (String!29389) Bool)

(declare-fun inv!36498 (TokenValueInjection!8454) Bool)

(assert (=> b!2266776 (= e!1451814 (and tp!717285 (inv!36495 (tag!4785 (h!32359 rules!1750))) (inv!36498 (transformation!4295 (h!32359 rules!1750))) e!1451830))))

(declare-fun b!2266777 () Bool)

(declare-fun res!969204 () Bool)

(assert (=> b!2266777 (=> (not res!969204) (not e!1451810))))

(declare-fun input!1722 () List!27050)

(declare-fun isPrefix!2285 (List!27050 List!27050) Bool)

(assert (=> b!2266777 (= res!969204 (isPrefix!2285 otherP!12 input!1722))))

(declare-fun tp!717292 () Bool)

(declare-fun e!1451802 () Bool)

(declare-fun e!1451825 () Bool)

(declare-fun b!2266778 () Bool)

(declare-fun inv!36499 (Token!8068) Bool)

(assert (=> b!2266778 (= e!1451802 (and (inv!36499 (h!32358 tokens!456)) e!1451825 tp!717292))))

(declare-fun b!2266779 () Bool)

(declare-fun res!969214 () Bool)

(assert (=> b!2266779 (=> (not res!969214) (not e!1451813))))

(declare-fun isEmpty!15251 (List!27052) Bool)

(assert (=> b!2266779 (= res!969214 (not (isEmpty!15251 rules!1750)))))

(declare-fun b!2266781 () Bool)

(declare-fun res!969209 () Bool)

(declare-fun e!1451817 () Bool)

(assert (=> b!2266781 (=> res!969209 e!1451817)))

(declare-fun e!1451824 () Bool)

(assert (=> b!2266781 (= res!969209 e!1451824)))

(declare-fun res!969220 () Bool)

(assert (=> b!2266781 (=> (not res!969220) (not e!1451824))))

(declare-fun size!21144 (List!27051) Int)

(assert (=> b!2266781 (= res!969220 (> (size!21144 tokens!456) 0))))

(declare-fun b!2266782 () Bool)

(declare-fun e!1451821 () Bool)

(declare-fun tp_is_empty!10507 () Bool)

(declare-fun tp!717288 () Bool)

(assert (=> b!2266782 (= e!1451821 (and tp_is_empty!10507 tp!717288))))

(declare-fun e!1451816 () Bool)

(declare-fun e!1451818 () Bool)

(declare-fun tp!717296 () Bool)

(declare-fun b!2266783 () Bool)

(assert (=> b!2266783 (= e!1451816 (and tp!717296 (inv!36495 (tag!4785 r!2363)) (inv!36498 (transformation!4295 r!2363)) e!1451818))))

(declare-fun b!2266784 () Bool)

(declare-fun e!1451812 () Bool)

(assert (=> b!2266784 (= e!1451812 e!1451817)))

(declare-fun res!969205 () Bool)

(assert (=> b!2266784 (=> res!969205 e!1451817)))

(declare-fun lt!842407 () Int)

(declare-fun lt!842417 () List!27050)

(assert (=> b!2266784 (= res!969205 (> lt!842407 (size!21143 lt!842417)))))

(assert (=> b!2266784 (= lt!842407 (size!21143 otherP!12))))

(declare-datatypes ((tuple2!26606 0))(
  ( (tuple2!26607 (_1!15813 Token!8068) (_2!15813 List!27050)) )
))
(declare-fun lt!842419 () tuple2!26606)

(declare-fun lt!842409 () List!27050)

(assert (=> b!2266784 (= (_2!15813 lt!842419) lt!842409)))

(declare-datatypes ((Unit!39914 0))(
  ( (Unit!39915) )
))
(declare-fun lt!842418 () Unit!39914)

(declare-fun lemmaSamePrefixThenSameSuffix!1014 (List!27050 List!27050 List!27050 List!27050 List!27050) Unit!39914)

(assert (=> b!2266784 (= lt!842418 (lemmaSamePrefixThenSameSuffix!1014 lt!842417 (_2!15813 lt!842419) lt!842417 lt!842409 input!1722))))

(declare-fun getSuffix!1096 (List!27050 List!27050) List!27050)

(assert (=> b!2266784 (= lt!842409 (getSuffix!1096 input!1722 lt!842417))))

(declare-fun ++!6567 (List!27050 List!27050) List!27050)

(assert (=> b!2266784 (isPrefix!2285 lt!842417 (++!6567 lt!842417 (_2!15813 lt!842419)))))

(declare-fun lt!842411 () Unit!39914)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1510 (List!27050 List!27050) Unit!39914)

(assert (=> b!2266784 (= lt!842411 (lemmaConcatTwoListThenFirstIsPrefix!1510 lt!842417 (_2!15813 lt!842419)))))

(declare-fun list!10425 (BalanceConc!17204) List!27050)

(assert (=> b!2266784 (= lt!842417 (list!10425 (charsOf!2683 (h!32358 tokens!456))))))

(declare-datatypes ((LexerInterface!3892 0))(
  ( (LexerInterfaceExt!3889 (__x!17975 Int)) (Lexer!3890) )
))
(declare-fun thiss!16613 () LexerInterface!3892)

(declare-datatypes ((Option!5273 0))(
  ( (None!5272) (Some!5272 (v!30312 tuple2!26606)) )
))
(declare-fun get!8136 (Option!5273) tuple2!26606)

(declare-fun maxPrefix!2166 (LexerInterface!3892 List!27052 List!27050) Option!5273)

(assert (=> b!2266784 (= lt!842419 (get!8136 (maxPrefix!2166 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2266785 () Bool)

(declare-fun e!1451805 () Bool)

(assert (=> b!2266785 (= e!1451810 (not e!1451805))))

(declare-fun res!969210 () Bool)

(assert (=> b!2266785 (=> res!969210 e!1451805)))

(declare-fun e!1451829 () Bool)

(assert (=> b!2266785 (= res!969210 e!1451829)))

(declare-fun res!969202 () Bool)

(assert (=> b!2266785 (=> (not res!969202) (not e!1451829))))

(assert (=> b!2266785 (= res!969202 (not lt!842414))))

(declare-fun ruleValid!1387 (LexerInterface!3892 Rule!8390) Bool)

(assert (=> b!2266785 (ruleValid!1387 thiss!16613 r!2363)))

(declare-fun lt!842416 () Unit!39914)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!794 (LexerInterface!3892 Rule!8390 List!27052) Unit!39914)

(assert (=> b!2266785 (= lt!842416 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!794 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2266786 () Bool)

(declare-fun e!1451831 () Bool)

(declare-fun tp!717297 () Bool)

(assert (=> b!2266786 (= e!1451831 (and tp_is_empty!10507 tp!717297))))

(declare-fun b!2266787 () Bool)

(declare-fun otherR!12 () Rule!8390)

(declare-fun validRegex!2488 (Regex!6643) Bool)

(assert (=> b!2266787 (= e!1451817 (validRegex!2488 (regex!4295 otherR!12)))))

(declare-fun b!2266788 () Bool)

(declare-fun res!969213 () Bool)

(assert (=> b!2266788 (=> (not res!969213) (not e!1451810))))

(assert (=> b!2266788 (= res!969213 (not (= r!2363 otherR!12)))))

(declare-fun b!2266789 () Bool)

(declare-fun res!969206 () Bool)

(assert (=> b!2266789 (=> (not res!969206) (not e!1451813))))

(declare-fun rulesInvariant!3394 (LexerInterface!3892 List!27052) Bool)

(assert (=> b!2266789 (= res!969206 (rulesInvariant!3394 thiss!16613 rules!1750))))

(declare-fun b!2266790 () Bool)

(declare-fun e!1451815 () Bool)

(assert (=> b!2266790 (= e!1451805 e!1451815)))

(declare-fun res!969221 () Bool)

(assert (=> b!2266790 (=> res!969221 e!1451815)))

(declare-fun lt!842413 () Int)

(declare-fun lt!842408 () Int)

(assert (=> b!2266790 (= res!969221 (> lt!842413 lt!842408))))

(declare-fun getIndex!316 (List!27052 Rule!8390) Int)

(assert (=> b!2266790 (= lt!842408 (getIndex!316 rules!1750 otherR!12))))

(assert (=> b!2266790 (= lt!842413 (getIndex!316 rules!1750 r!2363))))

(assert (=> b!2266790 (ruleValid!1387 thiss!16613 otherR!12)))

(declare-fun lt!842412 () Unit!39914)

(assert (=> b!2266790 (= lt!842412 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!794 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2266791 (= e!1451818 (and tp!717287 tp!717293))))

(declare-fun e!1451820 () Bool)

(declare-fun b!2266792 () Bool)

(declare-fun e!1451803 () Bool)

(declare-fun tp!717284 () Bool)

(assert (=> b!2266792 (= e!1451803 (and tp!717284 (inv!36495 (tag!4785 otherR!12)) (inv!36498 (transformation!4295 otherR!12)) e!1451820))))

(declare-fun res!969219 () Bool)

(assert (=> start!221404 (=> (not res!969219) (not e!1451813))))

(get-info :version)

(assert (=> start!221404 (= res!969219 ((_ is Lexer!3890) thiss!16613))))

(assert (=> start!221404 e!1451813))

(assert (=> start!221404 true))

(assert (=> start!221404 e!1451821))

(assert (=> start!221404 e!1451803))

(declare-fun e!1451806 () Bool)

(assert (=> start!221404 e!1451806))

(assert (=> start!221404 e!1451831))

(declare-fun e!1451809 () Bool)

(assert (=> start!221404 e!1451809))

(assert (=> start!221404 e!1451816))

(assert (=> start!221404 e!1451802))

(declare-fun b!2266780 () Bool)

(declare-fun e!1451804 () Unit!39914)

(declare-fun Unit!39916 () Unit!39914)

(assert (=> b!2266780 (= e!1451804 Unit!39916)))

(declare-fun b!2266793 () Bool)

(assert (=> b!2266793 (= e!1451824 (<= lt!842407 (size!21142 (charsOf!2683 (head!4882 tokens!456)))))))

(declare-fun b!2266794 () Bool)

(declare-fun tp!717289 () Bool)

(assert (=> b!2266794 (= e!1451806 (and tp_is_empty!10507 tp!717289))))

(declare-fun b!2266795 () Bool)

(assert (=> b!2266795 (= e!1451823 (= (rule!6611 (head!4882 tokens!456)) r!2363))))

(declare-fun b!2266796 () Bool)

(declare-fun res!969215 () Bool)

(assert (=> b!2266796 (=> res!969215 e!1451817)))

(assert (=> b!2266796 (= res!969215 (< lt!842408 lt!842413))))

(declare-fun e!1451807 () Bool)

(assert (=> b!2266797 (= e!1451807 (and tp!717295 tp!717291))))

(declare-fun b!2266798 () Bool)

(assert (=> b!2266798 (= e!1451815 e!1451812)))

(declare-fun res!969212 () Bool)

(assert (=> b!2266798 (=> res!969212 e!1451812)))

(assert (=> b!2266798 (= res!969212 ((_ is Nil!26957) tokens!456))))

(declare-fun lt!842420 () Unit!39914)

(assert (=> b!2266798 (= lt!842420 e!1451804)))

(declare-fun c!359943 () Bool)

(assert (=> b!2266798 (= c!359943 (= lt!842413 lt!842408))))

(declare-fun b!2266799 () Bool)

(declare-fun e!1451819 () Bool)

(assert (=> b!2266799 (= e!1451813 e!1451819)))

(declare-fun res!969216 () Bool)

(assert (=> b!2266799 (=> (not res!969216) (not e!1451819))))

(declare-datatypes ((IArray!17483 0))(
  ( (IArray!17484 (innerList!8799 List!27051)) )
))
(declare-datatypes ((Conc!8739 0))(
  ( (Node!8739 (left!20455 Conc!8739) (right!20785 Conc!8739) (csize!17708 Int) (cheight!8950 Int)) (Leaf!12872 (xs!11681 IArray!17483) (csize!17709 Int)) (Empty!8739) )
))
(declare-datatypes ((BalanceConc!17206 0))(
  ( (BalanceConc!17207 (c!359946 Conc!8739)) )
))
(declare-datatypes ((tuple2!26608 0))(
  ( (tuple2!26609 (_1!15814 BalanceConc!17206) (_2!15814 BalanceConc!17204)) )
))
(declare-fun lt!842415 () tuple2!26608)

(declare-fun suffix!886 () List!27050)

(declare-datatypes ((tuple2!26610 0))(
  ( (tuple2!26611 (_1!15815 List!27051) (_2!15815 List!27050)) )
))
(declare-fun list!10426 (BalanceConc!17206) List!27051)

(assert (=> b!2266799 (= res!969216 (= (tuple2!26611 (list!10426 (_1!15814 lt!842415)) (list!10425 (_2!15814 lt!842415))) (tuple2!26611 tokens!456 suffix!886)))))

(declare-fun lex!1731 (LexerInterface!3892 List!27052 BalanceConc!17204) tuple2!26608)

(declare-fun seqFromList!2999 (List!27050) BalanceConc!17204)

(assert (=> b!2266799 (= lt!842415 (lex!1731 thiss!16613 rules!1750 (seqFromList!2999 input!1722)))))

(declare-fun b!2266800 () Bool)

(declare-fun tp!717282 () Bool)

(assert (=> b!2266800 (= e!1451809 (and e!1451814 tp!717282))))

(assert (=> b!2266801 (= e!1451820 (and tp!717290 tp!717283))))

(declare-fun b!2266802 () Bool)

(declare-fun res!969208 () Bool)

(assert (=> b!2266802 (=> (not res!969208) (not e!1451813))))

(assert (=> b!2266802 (= res!969208 (contains!4653 rules!1750 otherR!12))))

(declare-fun b!2266803 () Bool)

(declare-fun Unit!39917 () Unit!39914)

(assert (=> b!2266803 (= e!1451804 Unit!39917)))

(declare-fun lt!842410 () Unit!39914)

(declare-fun lemmaSameIndexThenSameElement!162 (List!27052 Rule!8390 Rule!8390) Unit!39914)

(assert (=> b!2266803 (= lt!842410 (lemmaSameIndexThenSameElement!162 rules!1750 r!2363 otherR!12))))

(assert (=> b!2266803 false))

(assert (=> b!2266804 (= e!1451830 (and tp!717294 tp!717298))))

(declare-fun b!2266805 () Bool)

(declare-fun tp!717286 () Bool)

(declare-fun e!1451828 () Bool)

(declare-fun inv!21 (TokenValue!4457) Bool)

(assert (=> b!2266805 (= e!1451825 (and (inv!21 (value!136227 (h!32358 tokens!456))) e!1451828 tp!717286))))

(declare-fun b!2266806 () Bool)

(assert (=> b!2266806 (= e!1451819 e!1451810)))

(declare-fun res!969203 () Bool)

(assert (=> b!2266806 (=> (not res!969203) (not e!1451810))))

(assert (=> b!2266806 (= res!969203 e!1451811)))

(declare-fun res!969207 () Bool)

(assert (=> b!2266806 (=> res!969207 e!1451811)))

(assert (=> b!2266806 (= res!969207 lt!842414)))

(declare-fun isEmpty!15252 (List!27051) Bool)

(assert (=> b!2266806 (= lt!842414 (isEmpty!15252 tokens!456))))

(declare-fun b!2266807 () Bool)

(declare-fun matchR!2904 (Regex!6643 List!27050) Bool)

(assert (=> b!2266807 (= e!1451829 (not (matchR!2904 (regex!4295 r!2363) (list!10425 (charsOf!2683 (head!4882 tokens!456))))))))

(declare-fun b!2266808 () Bool)

(declare-fun tp!717299 () Bool)

(assert (=> b!2266808 (= e!1451828 (and tp!717299 (inv!36495 (tag!4785 (rule!6611 (h!32358 tokens!456)))) (inv!36498 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) e!1451807))))

(assert (= (and start!221404 res!969219) b!2266779))

(assert (= (and b!2266779 res!969214) b!2266789))

(assert (= (and b!2266789 res!969206) b!2266775))

(assert (= (and b!2266775 res!969217) b!2266802))

(assert (= (and b!2266802 res!969208) b!2266799))

(assert (= (and b!2266799 res!969216) b!2266806))

(assert (= (and b!2266806 (not res!969207)) b!2266773))

(assert (= (and b!2266806 res!969203) b!2266774))

(assert (= (and b!2266774 (not res!969211)) b!2266795))

(assert (= (and b!2266774 res!969218) b!2266777))

(assert (= (and b!2266777 res!969204) b!2266788))

(assert (= (and b!2266788 res!969213) b!2266785))

(assert (= (and b!2266785 res!969202) b!2266807))

(assert (= (and b!2266785 (not res!969210)) b!2266790))

(assert (= (and b!2266790 (not res!969221)) b!2266798))

(assert (= (and b!2266798 c!359943) b!2266803))

(assert (= (and b!2266798 (not c!359943)) b!2266780))

(assert (= (and b!2266798 (not res!969212)) b!2266784))

(assert (= (and b!2266784 (not res!969205)) b!2266796))

(assert (= (and b!2266796 (not res!969215)) b!2266781))

(assert (= (and b!2266781 res!969220) b!2266793))

(assert (= (and b!2266781 (not res!969209)) b!2266787))

(assert (= (and start!221404 ((_ is Cons!26956) input!1722)) b!2266782))

(assert (= b!2266792 b!2266801))

(assert (= start!221404 b!2266792))

(assert (= (and start!221404 ((_ is Cons!26956) suffix!886)) b!2266794))

(assert (= (and start!221404 ((_ is Cons!26956) otherP!12)) b!2266786))

(assert (= b!2266776 b!2266804))

(assert (= b!2266800 b!2266776))

(assert (= (and start!221404 ((_ is Cons!26958) rules!1750)) b!2266800))

(assert (= b!2266783 b!2266791))

(assert (= start!221404 b!2266783))

(assert (= b!2266808 b!2266797))

(assert (= b!2266805 b!2266808))

(assert (= b!2266778 b!2266805))

(assert (= (and start!221404 ((_ is Cons!26957) tokens!456)) b!2266778))

(declare-fun m!2695957 () Bool)

(assert (=> b!2266777 m!2695957))

(declare-fun m!2695959 () Bool)

(assert (=> b!2266793 m!2695959))

(assert (=> b!2266793 m!2695959))

(declare-fun m!2695961 () Bool)

(assert (=> b!2266793 m!2695961))

(assert (=> b!2266793 m!2695961))

(declare-fun m!2695963 () Bool)

(assert (=> b!2266793 m!2695963))

(assert (=> b!2266807 m!2695959))

(assert (=> b!2266807 m!2695959))

(assert (=> b!2266807 m!2695961))

(assert (=> b!2266807 m!2695961))

(declare-fun m!2695965 () Bool)

(assert (=> b!2266807 m!2695965))

(assert (=> b!2266807 m!2695965))

(declare-fun m!2695967 () Bool)

(assert (=> b!2266807 m!2695967))

(assert (=> b!2266773 m!2695959))

(assert (=> b!2266773 m!2695959))

(assert (=> b!2266773 m!2695961))

(assert (=> b!2266773 m!2695961))

(assert (=> b!2266773 m!2695963))

(declare-fun m!2695969 () Bool)

(assert (=> b!2266773 m!2695969))

(declare-fun m!2695971 () Bool)

(assert (=> b!2266779 m!2695971))

(declare-fun m!2695973 () Bool)

(assert (=> b!2266792 m!2695973))

(declare-fun m!2695975 () Bool)

(assert (=> b!2266792 m!2695975))

(declare-fun m!2695977 () Bool)

(assert (=> b!2266802 m!2695977))

(declare-fun m!2695979 () Bool)

(assert (=> b!2266805 m!2695979))

(assert (=> b!2266795 m!2695959))

(declare-fun m!2695981 () Bool)

(assert (=> b!2266787 m!2695981))

(declare-fun m!2695983 () Bool)

(assert (=> b!2266808 m!2695983))

(declare-fun m!2695985 () Bool)

(assert (=> b!2266808 m!2695985))

(declare-fun m!2695987 () Bool)

(assert (=> b!2266806 m!2695987))

(declare-fun m!2695989 () Bool)

(assert (=> b!2266783 m!2695989))

(declare-fun m!2695991 () Bool)

(assert (=> b!2266783 m!2695991))

(declare-fun m!2695993 () Bool)

(assert (=> b!2266789 m!2695993))

(declare-fun m!2695995 () Bool)

(assert (=> b!2266781 m!2695995))

(declare-fun m!2695997 () Bool)

(assert (=> b!2266799 m!2695997))

(declare-fun m!2695999 () Bool)

(assert (=> b!2266799 m!2695999))

(declare-fun m!2696001 () Bool)

(assert (=> b!2266799 m!2696001))

(assert (=> b!2266799 m!2696001))

(declare-fun m!2696003 () Bool)

(assert (=> b!2266799 m!2696003))

(declare-fun m!2696005 () Bool)

(assert (=> b!2266803 m!2696005))

(declare-fun m!2696007 () Bool)

(assert (=> b!2266790 m!2696007))

(declare-fun m!2696009 () Bool)

(assert (=> b!2266790 m!2696009))

(declare-fun m!2696011 () Bool)

(assert (=> b!2266790 m!2696011))

(declare-fun m!2696013 () Bool)

(assert (=> b!2266790 m!2696013))

(declare-fun m!2696015 () Bool)

(assert (=> b!2266776 m!2696015))

(declare-fun m!2696017 () Bool)

(assert (=> b!2266776 m!2696017))

(declare-fun m!2696019 () Bool)

(assert (=> b!2266784 m!2696019))

(declare-fun m!2696021 () Bool)

(assert (=> b!2266784 m!2696021))

(declare-fun m!2696023 () Bool)

(assert (=> b!2266784 m!2696023))

(declare-fun m!2696025 () Bool)

(assert (=> b!2266784 m!2696025))

(declare-fun m!2696027 () Bool)

(assert (=> b!2266784 m!2696027))

(declare-fun m!2696029 () Bool)

(assert (=> b!2266784 m!2696029))

(declare-fun m!2696031 () Bool)

(assert (=> b!2266784 m!2696031))

(assert (=> b!2266784 m!2696029))

(declare-fun m!2696033 () Bool)

(assert (=> b!2266784 m!2696033))

(declare-fun m!2696035 () Bool)

(assert (=> b!2266784 m!2696035))

(assert (=> b!2266784 m!2695969))

(assert (=> b!2266784 m!2696019))

(declare-fun m!2696037 () Bool)

(assert (=> b!2266784 m!2696037))

(assert (=> b!2266784 m!2696033))

(declare-fun m!2696039 () Bool)

(assert (=> b!2266785 m!2696039))

(declare-fun m!2696041 () Bool)

(assert (=> b!2266785 m!2696041))

(declare-fun m!2696043 () Bool)

(assert (=> b!2266778 m!2696043))

(declare-fun m!2696045 () Bool)

(assert (=> b!2266775 m!2696045))

(check-sat (not b!2266795) (not b_next!67959) (not b!2266781) (not b!2266800) (not b!2266778) (not b_next!67951) (not b!2266783) tp_is_empty!10507 (not b!2266808) (not b!2266777) (not b!2266807) (not b!2266776) (not b!2266779) (not b_next!67955) b_and!178437 (not b!2266787) (not b!2266775) (not b!2266806) (not b!2266805) b_and!178435 (not b!2266773) b_and!178427 b_and!178439 (not b!2266786) (not b_next!67953) (not b!2266790) (not b_next!67949) (not b!2266789) (not b!2266803) b_and!178429 b_and!178425 b_and!178431 (not b_next!67961) (not b!2266794) (not b!2266785) (not b_next!67957) (not b!2266802) (not b!2266793) (not b!2266784) b_and!178433 (not b!2266792) (not b!2266782) (not b_next!67963) (not b!2266799))
(check-sat (not b_next!67959) b_and!178439 (not b_next!67951) b_and!178429 (not b_next!67961) (not b_next!67957) b_and!178433 (not b_next!67963) (not b_next!67955) b_and!178437 b_and!178435 b_and!178427 (not b_next!67953) (not b_next!67949) b_and!178425 b_and!178431)
(get-model)

(declare-fun b!2266862 () Bool)

(declare-fun res!969264 () Bool)

(declare-fun e!1451866 () Bool)

(assert (=> b!2266862 (=> (not res!969264) (not e!1451866))))

(declare-fun head!4884 (List!27050) C!13432)

(assert (=> b!2266862 (= res!969264 (= (head!4884 otherP!12) (head!4884 input!1722)))))

(declare-fun b!2266864 () Bool)

(declare-fun e!1451864 () Bool)

(assert (=> b!2266864 (= e!1451864 (>= (size!21143 input!1722) (size!21143 otherP!12)))))

(declare-fun d!671041 () Bool)

(assert (=> d!671041 e!1451864))

(declare-fun res!969263 () Bool)

(assert (=> d!671041 (=> res!969263 e!1451864)))

(declare-fun lt!842449 () Bool)

(assert (=> d!671041 (= res!969263 (not lt!842449))))

(declare-fun e!1451865 () Bool)

(assert (=> d!671041 (= lt!842449 e!1451865)))

(declare-fun res!969262 () Bool)

(assert (=> d!671041 (=> res!969262 e!1451865)))

(assert (=> d!671041 (= res!969262 ((_ is Nil!26956) otherP!12))))

(assert (=> d!671041 (= (isPrefix!2285 otherP!12 input!1722) lt!842449)))

(declare-fun b!2266863 () Bool)

(declare-fun tail!3269 (List!27050) List!27050)

(assert (=> b!2266863 (= e!1451866 (isPrefix!2285 (tail!3269 otherP!12) (tail!3269 input!1722)))))

(declare-fun b!2266861 () Bool)

(assert (=> b!2266861 (= e!1451865 e!1451866)))

(declare-fun res!969261 () Bool)

(assert (=> b!2266861 (=> (not res!969261) (not e!1451866))))

(assert (=> b!2266861 (= res!969261 (not ((_ is Nil!26956) input!1722)))))

(assert (= (and d!671041 (not res!969262)) b!2266861))

(assert (= (and b!2266861 res!969261) b!2266862))

(assert (= (and b!2266862 res!969264) b!2266863))

(assert (= (and d!671041 (not res!969263)) b!2266864))

(declare-fun m!2696111 () Bool)

(assert (=> b!2266862 m!2696111))

(declare-fun m!2696113 () Bool)

(assert (=> b!2266862 m!2696113))

(declare-fun m!2696115 () Bool)

(assert (=> b!2266864 m!2696115))

(assert (=> b!2266864 m!2695969))

(declare-fun m!2696117 () Bool)

(assert (=> b!2266863 m!2696117))

(declare-fun m!2696119 () Bool)

(assert (=> b!2266863 m!2696119))

(assert (=> b!2266863 m!2696117))

(assert (=> b!2266863 m!2696119))

(declare-fun m!2696121 () Bool)

(assert (=> b!2266863 m!2696121))

(assert (=> b!2266777 d!671041))

(declare-fun d!671043 () Bool)

(declare-fun list!10429 (Conc!8739) List!27051)

(assert (=> d!671043 (= (list!10426 (_1!15814 lt!842415)) (list!10429 (c!359946 (_1!15814 lt!842415))))))

(declare-fun bs!455720 () Bool)

(assert (= bs!455720 d!671043))

(declare-fun m!2696123 () Bool)

(assert (=> bs!455720 m!2696123))

(assert (=> b!2266799 d!671043))

(declare-fun d!671045 () Bool)

(declare-fun list!10430 (Conc!8738) List!27050)

(assert (=> d!671045 (= (list!10425 (_2!15814 lt!842415)) (list!10430 (c!359944 (_2!15814 lt!842415))))))

(declare-fun bs!455721 () Bool)

(assert (= bs!455721 d!671045))

(declare-fun m!2696125 () Bool)

(assert (=> bs!455721 m!2696125))

(assert (=> b!2266799 d!671045))

(declare-fun d!671047 () Bool)

(declare-fun e!1452024 () Bool)

(assert (=> d!671047 e!1452024))

(declare-fun res!969380 () Bool)

(assert (=> d!671047 (=> (not res!969380) (not e!1452024))))

(declare-fun e!1452025 () Bool)

(assert (=> d!671047 (= res!969380 e!1452025)))

(declare-fun c!359997 () Bool)

(declare-fun lt!842492 () tuple2!26608)

(declare-fun size!21147 (BalanceConc!17206) Int)

(assert (=> d!671047 (= c!359997 (> (size!21147 (_1!15814 lt!842492)) 0))))

(declare-fun lexTailRecV2!747 (LexerInterface!3892 List!27052 BalanceConc!17204 BalanceConc!17204 BalanceConc!17204 BalanceConc!17206) tuple2!26608)

(assert (=> d!671047 (= lt!842492 (lexTailRecV2!747 thiss!16613 rules!1750 (seqFromList!2999 input!1722) (BalanceConc!17205 Empty!8738) (seqFromList!2999 input!1722) (BalanceConc!17207 Empty!8739)))))

(assert (=> d!671047 (= (lex!1731 thiss!16613 rules!1750 (seqFromList!2999 input!1722)) lt!842492)))

(declare-fun b!2267117 () Bool)

(declare-fun res!969378 () Bool)

(assert (=> b!2267117 (=> (not res!969378) (not e!1452024))))

(declare-fun lexList!1072 (LexerInterface!3892 List!27052 List!27050) tuple2!26610)

(assert (=> b!2267117 (= res!969378 (= (list!10426 (_1!15814 lt!842492)) (_1!15815 (lexList!1072 thiss!16613 rules!1750 (list!10425 (seqFromList!2999 input!1722))))))))

(declare-fun b!2267118 () Bool)

(declare-fun e!1452023 () Bool)

(declare-fun isEmpty!15255 (BalanceConc!17206) Bool)

(assert (=> b!2267118 (= e!1452023 (not (isEmpty!15255 (_1!15814 lt!842492))))))

(declare-fun b!2267119 () Bool)

(assert (=> b!2267119 (= e!1452024 (= (list!10425 (_2!15814 lt!842492)) (_2!15815 (lexList!1072 thiss!16613 rules!1750 (list!10425 (seqFromList!2999 input!1722))))))))

(declare-fun b!2267120 () Bool)

(assert (=> b!2267120 (= e!1452025 e!1452023)))

(declare-fun res!969379 () Bool)

(assert (=> b!2267120 (= res!969379 (< (size!21142 (_2!15814 lt!842492)) (size!21142 (seqFromList!2999 input!1722))))))

(assert (=> b!2267120 (=> (not res!969379) (not e!1452023))))

(declare-fun b!2267121 () Bool)

(assert (=> b!2267121 (= e!1452025 (= (_2!15814 lt!842492) (seqFromList!2999 input!1722)))))

(assert (= (and d!671047 c!359997) b!2267120))

(assert (= (and d!671047 (not c!359997)) b!2267121))

(assert (= (and b!2267120 res!969379) b!2267118))

(assert (= (and d!671047 res!969380) b!2267117))

(assert (= (and b!2267117 res!969378) b!2267119))

(declare-fun m!2696283 () Bool)

(assert (=> b!2267118 m!2696283))

(declare-fun m!2696285 () Bool)

(assert (=> d!671047 m!2696285))

(assert (=> d!671047 m!2696001))

(assert (=> d!671047 m!2696001))

(declare-fun m!2696287 () Bool)

(assert (=> d!671047 m!2696287))

(declare-fun m!2696289 () Bool)

(assert (=> b!2267120 m!2696289))

(assert (=> b!2267120 m!2696001))

(declare-fun m!2696291 () Bool)

(assert (=> b!2267120 m!2696291))

(declare-fun m!2696293 () Bool)

(assert (=> b!2267117 m!2696293))

(assert (=> b!2267117 m!2696001))

(declare-fun m!2696295 () Bool)

(assert (=> b!2267117 m!2696295))

(assert (=> b!2267117 m!2696295))

(declare-fun m!2696297 () Bool)

(assert (=> b!2267117 m!2696297))

(declare-fun m!2696299 () Bool)

(assert (=> b!2267119 m!2696299))

(assert (=> b!2267119 m!2696001))

(assert (=> b!2267119 m!2696295))

(assert (=> b!2267119 m!2696295))

(assert (=> b!2267119 m!2696297))

(assert (=> b!2266799 d!671047))

(declare-fun d!671111 () Bool)

(declare-fun fromListB!1338 (List!27050) BalanceConc!17204)

(assert (=> d!671111 (= (seqFromList!2999 input!1722) (fromListB!1338 input!1722))))

(declare-fun bs!455729 () Bool)

(assert (= bs!455729 d!671111))

(declare-fun m!2696301 () Bool)

(assert (=> bs!455729 m!2696301))

(assert (=> b!2266799 d!671111))

(declare-fun d!671113 () Bool)

(declare-fun res!969385 () Bool)

(declare-fun e!1452028 () Bool)

(assert (=> d!671113 (=> (not res!969385) (not e!1452028))))

(declare-fun isEmpty!15256 (List!27050) Bool)

(assert (=> d!671113 (= res!969385 (not (isEmpty!15256 (originalCharacters!5065 (h!32358 tokens!456)))))))

(assert (=> d!671113 (= (inv!36499 (h!32358 tokens!456)) e!1452028)))

(declare-fun b!2267126 () Bool)

(declare-fun res!969386 () Bool)

(assert (=> b!2267126 (=> (not res!969386) (not e!1452028))))

(declare-fun dynLambda!11677 (Int TokenValue!4457) BalanceConc!17204)

(assert (=> b!2267126 (= res!969386 (= (originalCharacters!5065 (h!32358 tokens!456)) (list!10425 (dynLambda!11677 (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (value!136227 (h!32358 tokens!456))))))))

(declare-fun b!2267127 () Bool)

(assert (=> b!2267127 (= e!1452028 (= (size!21141 (h!32358 tokens!456)) (size!21143 (originalCharacters!5065 (h!32358 tokens!456)))))))

(assert (= (and d!671113 res!969385) b!2267126))

(assert (= (and b!2267126 res!969386) b!2267127))

(declare-fun b_lambda!72271 () Bool)

(assert (=> (not b_lambda!72271) (not b!2267126)))

(declare-fun t!202172 () Bool)

(declare-fun tb!134423 () Bool)

(assert (=> (and b!2266791 (= (toChars!5908 (transformation!4295 r!2363)) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456))))) t!202172) tb!134423))

(declare-fun b!2267132 () Bool)

(declare-fun e!1452031 () Bool)

(declare-fun tp!717369 () Bool)

(declare-fun inv!36502 (Conc!8738) Bool)

(assert (=> b!2267132 (= e!1452031 (and (inv!36502 (c!359944 (dynLambda!11677 (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (value!136227 (h!32358 tokens!456))))) tp!717369))))

(declare-fun result!163892 () Bool)

(declare-fun inv!36503 (BalanceConc!17204) Bool)

(assert (=> tb!134423 (= result!163892 (and (inv!36503 (dynLambda!11677 (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (value!136227 (h!32358 tokens!456)))) e!1452031))))

(assert (= tb!134423 b!2267132))

(declare-fun m!2696303 () Bool)

(assert (=> b!2267132 m!2696303))

(declare-fun m!2696305 () Bool)

(assert (=> tb!134423 m!2696305))

(assert (=> b!2267126 t!202172))

(declare-fun b_and!178473 () Bool)

(assert (= b_and!178427 (and (=> t!202172 result!163892) b_and!178473)))

(declare-fun t!202174 () Bool)

(declare-fun tb!134425 () Bool)

(assert (=> (and b!2266804 (= (toChars!5908 (transformation!4295 (h!32359 rules!1750))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456))))) t!202174) tb!134425))

(declare-fun result!163896 () Bool)

(assert (= result!163896 result!163892))

(assert (=> b!2267126 t!202174))

(declare-fun b_and!178475 () Bool)

(assert (= b_and!178431 (and (=> t!202174 result!163896) b_and!178475)))

(declare-fun t!202176 () Bool)

(declare-fun tb!134427 () Bool)

(assert (=> (and b!2266797 (= (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456))))) t!202176) tb!134427))

(declare-fun result!163898 () Bool)

(assert (= result!163898 result!163892))

(assert (=> b!2267126 t!202176))

(declare-fun b_and!178477 () Bool)

(assert (= b_and!178435 (and (=> t!202176 result!163898) b_and!178477)))

(declare-fun tb!134429 () Bool)

(declare-fun t!202178 () Bool)

(assert (=> (and b!2266801 (= (toChars!5908 (transformation!4295 otherR!12)) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456))))) t!202178) tb!134429))

(declare-fun result!163900 () Bool)

(assert (= result!163900 result!163892))

(assert (=> b!2267126 t!202178))

(declare-fun b_and!178479 () Bool)

(assert (= b_and!178439 (and (=> t!202178 result!163900) b_and!178479)))

(declare-fun m!2696307 () Bool)

(assert (=> d!671113 m!2696307))

(declare-fun m!2696309 () Bool)

(assert (=> b!2267126 m!2696309))

(assert (=> b!2267126 m!2696309))

(declare-fun m!2696311 () Bool)

(assert (=> b!2267126 m!2696311))

(declare-fun m!2696313 () Bool)

(assert (=> b!2267127 m!2696313))

(assert (=> b!2266778 d!671113))

(declare-fun d!671115 () Bool)

(assert (=> d!671115 (= (inv!36495 (tag!4785 (rule!6611 (h!32358 tokens!456)))) (= (mod (str.len (value!136226 (tag!4785 (rule!6611 (h!32358 tokens!456))))) 2) 0))))

(assert (=> b!2266808 d!671115))

(declare-fun d!671117 () Bool)

(declare-fun res!969389 () Bool)

(declare-fun e!1452034 () Bool)

(assert (=> d!671117 (=> (not res!969389) (not e!1452034))))

(declare-fun semiInverseModEq!1728 (Int Int) Bool)

(assert (=> d!671117 (= res!969389 (semiInverseModEq!1728 (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (toValue!6049 (transformation!4295 (rule!6611 (h!32358 tokens!456))))))))

(assert (=> d!671117 (= (inv!36498 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) e!1452034)))

(declare-fun b!2267135 () Bool)

(declare-fun equivClasses!1647 (Int Int) Bool)

(assert (=> b!2267135 (= e!1452034 (equivClasses!1647 (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (toValue!6049 (transformation!4295 (rule!6611 (h!32358 tokens!456))))))))

(assert (= (and d!671117 res!969389) b!2267135))

(declare-fun m!2696315 () Bool)

(assert (=> d!671117 m!2696315))

(declare-fun m!2696317 () Bool)

(assert (=> b!2267135 m!2696317))

(assert (=> b!2266808 d!671117))

(declare-fun d!671119 () Bool)

(assert (=> d!671119 (= (inv!36495 (tag!4785 (h!32359 rules!1750))) (= (mod (str.len (value!136226 (tag!4785 (h!32359 rules!1750)))) 2) 0))))

(assert (=> b!2266776 d!671119))

(declare-fun d!671121 () Bool)

(declare-fun res!969390 () Bool)

(declare-fun e!1452035 () Bool)

(assert (=> d!671121 (=> (not res!969390) (not e!1452035))))

(assert (=> d!671121 (= res!969390 (semiInverseModEq!1728 (toChars!5908 (transformation!4295 (h!32359 rules!1750))) (toValue!6049 (transformation!4295 (h!32359 rules!1750)))))))

(assert (=> d!671121 (= (inv!36498 (transformation!4295 (h!32359 rules!1750))) e!1452035)))

(declare-fun b!2267136 () Bool)

(assert (=> b!2267136 (= e!1452035 (equivClasses!1647 (toChars!5908 (transformation!4295 (h!32359 rules!1750))) (toValue!6049 (transformation!4295 (h!32359 rules!1750)))))))

(assert (= (and d!671121 res!969390) b!2267136))

(declare-fun m!2696319 () Bool)

(assert (=> d!671121 m!2696319))

(declare-fun m!2696321 () Bool)

(assert (=> b!2267136 m!2696321))

(assert (=> b!2266776 d!671121))

(declare-fun d!671123 () Bool)

(declare-fun res!969404 () Bool)

(declare-fun e!1452056 () Bool)

(assert (=> d!671123 (=> res!969404 e!1452056)))

(assert (=> d!671123 (= res!969404 ((_ is ElementMatch!6643) (regex!4295 otherR!12)))))

(assert (=> d!671123 (= (validRegex!2488 (regex!4295 otherR!12)) e!1452056)))

(declare-fun b!2267155 () Bool)

(declare-fun e!1452053 () Bool)

(declare-fun call!136004 () Bool)

(assert (=> b!2267155 (= e!1452053 call!136004)))

(declare-fun b!2267156 () Bool)

(declare-fun res!969403 () Bool)

(declare-fun e!1452051 () Bool)

(assert (=> b!2267156 (=> (not res!969403) (not e!1452051))))

(declare-fun call!136005 () Bool)

(assert (=> b!2267156 (= res!969403 call!136005)))

(declare-fun e!1452052 () Bool)

(assert (=> b!2267156 (= e!1452052 e!1452051)))

(declare-fun b!2267157 () Bool)

(declare-fun call!136006 () Bool)

(assert (=> b!2267157 (= e!1452051 call!136006)))

(declare-fun bm!135999 () Bool)

(assert (=> bm!135999 (= call!136006 call!136004)))

(declare-fun b!2267158 () Bool)

(declare-fun e!1452050 () Bool)

(assert (=> b!2267158 (= e!1452056 e!1452050)))

(declare-fun c!360003 () Bool)

(assert (=> b!2267158 (= c!360003 ((_ is Star!6643) (regex!4295 otherR!12)))))

(declare-fun bm!136000 () Bool)

(declare-fun c!360002 () Bool)

(assert (=> bm!136000 (= call!136005 (validRegex!2488 (ite c!360002 (regOne!13799 (regex!4295 otherR!12)) (regTwo!13798 (regex!4295 otherR!12)))))))

(declare-fun b!2267159 () Bool)

(declare-fun e!1452055 () Bool)

(assert (=> b!2267159 (= e!1452055 call!136005)))

(declare-fun b!2267160 () Bool)

(assert (=> b!2267160 (= e!1452050 e!1452052)))

(assert (=> b!2267160 (= c!360002 ((_ is Union!6643) (regex!4295 otherR!12)))))

(declare-fun b!2267161 () Bool)

(declare-fun e!1452054 () Bool)

(assert (=> b!2267161 (= e!1452054 e!1452055)))

(declare-fun res!969405 () Bool)

(assert (=> b!2267161 (=> (not res!969405) (not e!1452055))))

(assert (=> b!2267161 (= res!969405 call!136006)))

(declare-fun b!2267162 () Bool)

(declare-fun res!969401 () Bool)

(assert (=> b!2267162 (=> res!969401 e!1452054)))

(assert (=> b!2267162 (= res!969401 (not ((_ is Concat!11101) (regex!4295 otherR!12))))))

(assert (=> b!2267162 (= e!1452052 e!1452054)))

(declare-fun bm!136001 () Bool)

(assert (=> bm!136001 (= call!136004 (validRegex!2488 (ite c!360003 (reg!6972 (regex!4295 otherR!12)) (ite c!360002 (regTwo!13799 (regex!4295 otherR!12)) (regOne!13798 (regex!4295 otherR!12))))))))

(declare-fun b!2267163 () Bool)

(assert (=> b!2267163 (= e!1452050 e!1452053)))

(declare-fun res!969402 () Bool)

(declare-fun nullable!1826 (Regex!6643) Bool)

(assert (=> b!2267163 (= res!969402 (not (nullable!1826 (reg!6972 (regex!4295 otherR!12)))))))

(assert (=> b!2267163 (=> (not res!969402) (not e!1452053))))

(assert (= (and d!671123 (not res!969404)) b!2267158))

(assert (= (and b!2267158 c!360003) b!2267163))

(assert (= (and b!2267158 (not c!360003)) b!2267160))

(assert (= (and b!2267163 res!969402) b!2267155))

(assert (= (and b!2267160 c!360002) b!2267156))

(assert (= (and b!2267160 (not c!360002)) b!2267162))

(assert (= (and b!2267156 res!969403) b!2267157))

(assert (= (and b!2267162 (not res!969401)) b!2267161))

(assert (= (and b!2267161 res!969405) b!2267159))

(assert (= (or b!2267156 b!2267159) bm!136000))

(assert (= (or b!2267157 b!2267161) bm!135999))

(assert (= (or b!2267155 bm!135999) bm!136001))

(declare-fun m!2696323 () Bool)

(assert (=> bm!136000 m!2696323))

(declare-fun m!2696325 () Bool)

(assert (=> bm!136001 m!2696325))

(declare-fun m!2696327 () Bool)

(assert (=> b!2267163 m!2696327))

(assert (=> b!2266787 d!671123))

(declare-fun d!671125 () Bool)

(declare-fun res!969410 () Bool)

(declare-fun e!1452059 () Bool)

(assert (=> d!671125 (=> (not res!969410) (not e!1452059))))

(assert (=> d!671125 (= res!969410 (validRegex!2488 (regex!4295 r!2363)))))

(assert (=> d!671125 (= (ruleValid!1387 thiss!16613 r!2363) e!1452059)))

(declare-fun b!2267168 () Bool)

(declare-fun res!969411 () Bool)

(assert (=> b!2267168 (=> (not res!969411) (not e!1452059))))

(assert (=> b!2267168 (= res!969411 (not (nullable!1826 (regex!4295 r!2363))))))

(declare-fun b!2267169 () Bool)

(assert (=> b!2267169 (= e!1452059 (not (= (tag!4785 r!2363) (String!29390 ""))))))

(assert (= (and d!671125 res!969410) b!2267168))

(assert (= (and b!2267168 res!969411) b!2267169))

(declare-fun m!2696329 () Bool)

(assert (=> d!671125 m!2696329))

(declare-fun m!2696331 () Bool)

(assert (=> b!2267168 m!2696331))

(assert (=> b!2266785 d!671125))

(declare-fun d!671127 () Bool)

(assert (=> d!671127 (ruleValid!1387 thiss!16613 r!2363)))

(declare-fun lt!842495 () Unit!39914)

(declare-fun choose!13257 (LexerInterface!3892 Rule!8390 List!27052) Unit!39914)

(assert (=> d!671127 (= lt!842495 (choose!13257 thiss!16613 r!2363 rules!1750))))

(assert (=> d!671127 (contains!4653 rules!1750 r!2363)))

(assert (=> d!671127 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!794 thiss!16613 r!2363 rules!1750) lt!842495)))

(declare-fun bs!455730 () Bool)

(assert (= bs!455730 d!671127))

(assert (=> bs!455730 m!2696039))

(declare-fun m!2696333 () Bool)

(assert (=> bs!455730 m!2696333))

(assert (=> bs!455730 m!2696045))

(assert (=> b!2266785 d!671127))

(declare-fun b!2267198 () Bool)

(declare-fun e!1452078 () Bool)

(declare-fun e!1452077 () Bool)

(assert (=> b!2267198 (= e!1452078 e!1452077)))

(declare-fun res!969428 () Bool)

(assert (=> b!2267198 (=> res!969428 e!1452077)))

(declare-fun call!136009 () Bool)

(assert (=> b!2267198 (= res!969428 call!136009)))

(declare-fun b!2267199 () Bool)

(declare-fun res!969430 () Bool)

(assert (=> b!2267199 (=> res!969430 e!1452077)))

(assert (=> b!2267199 (= res!969430 (not (isEmpty!15256 (tail!3269 (list!10425 (charsOf!2683 (head!4882 tokens!456)))))))))

(declare-fun b!2267200 () Bool)

(declare-fun e!1452076 () Bool)

(assert (=> b!2267200 (= e!1452076 e!1452078)))

(declare-fun res!969433 () Bool)

(assert (=> b!2267200 (=> (not res!969433) (not e!1452078))))

(declare-fun lt!842498 () Bool)

(assert (=> b!2267200 (= res!969433 (not lt!842498))))

(declare-fun b!2267201 () Bool)

(declare-fun e!1452075 () Bool)

(declare-fun derivativeStep!1488 (Regex!6643 C!13432) Regex!6643)

(assert (=> b!2267201 (= e!1452075 (matchR!2904 (derivativeStep!1488 (regex!4295 r!2363) (head!4884 (list!10425 (charsOf!2683 (head!4882 tokens!456))))) (tail!3269 (list!10425 (charsOf!2683 (head!4882 tokens!456))))))))

(declare-fun b!2267202 () Bool)

(declare-fun res!969434 () Bool)

(assert (=> b!2267202 (=> res!969434 e!1452076)))

(declare-fun e!1452079 () Bool)

(assert (=> b!2267202 (= res!969434 e!1452079)))

(declare-fun res!969435 () Bool)

(assert (=> b!2267202 (=> (not res!969435) (not e!1452079))))

(assert (=> b!2267202 (= res!969435 lt!842498)))

(declare-fun b!2267203 () Bool)

(declare-fun e!1452074 () Bool)

(assert (=> b!2267203 (= e!1452074 (not lt!842498))))

(declare-fun b!2267204 () Bool)

(assert (=> b!2267204 (= e!1452075 (nullable!1826 (regex!4295 r!2363)))))

(declare-fun b!2267205 () Bool)

(declare-fun e!1452080 () Bool)

(assert (=> b!2267205 (= e!1452080 e!1452074)))

(declare-fun c!360010 () Bool)

(assert (=> b!2267205 (= c!360010 ((_ is EmptyLang!6643) (regex!4295 r!2363)))))

(declare-fun b!2267206 () Bool)

(assert (=> b!2267206 (= e!1452080 (= lt!842498 call!136009))))

(declare-fun b!2267207 () Bool)

(declare-fun res!969431 () Bool)

(assert (=> b!2267207 (=> (not res!969431) (not e!1452079))))

(assert (=> b!2267207 (= res!969431 (isEmpty!15256 (tail!3269 (list!10425 (charsOf!2683 (head!4882 tokens!456))))))))

(declare-fun b!2267208 () Bool)

(declare-fun res!969432 () Bool)

(assert (=> b!2267208 (=> (not res!969432) (not e!1452079))))

(assert (=> b!2267208 (= res!969432 (not call!136009))))

(declare-fun b!2267209 () Bool)

(assert (=> b!2267209 (= e!1452077 (not (= (head!4884 (list!10425 (charsOf!2683 (head!4882 tokens!456)))) (c!359945 (regex!4295 r!2363)))))))

(declare-fun bm!136004 () Bool)

(assert (=> bm!136004 (= call!136009 (isEmpty!15256 (list!10425 (charsOf!2683 (head!4882 tokens!456)))))))

(declare-fun d!671129 () Bool)

(assert (=> d!671129 e!1452080))

(declare-fun c!360011 () Bool)

(assert (=> d!671129 (= c!360011 ((_ is EmptyExpr!6643) (regex!4295 r!2363)))))

(assert (=> d!671129 (= lt!842498 e!1452075)))

(declare-fun c!360012 () Bool)

(assert (=> d!671129 (= c!360012 (isEmpty!15256 (list!10425 (charsOf!2683 (head!4882 tokens!456)))))))

(assert (=> d!671129 (validRegex!2488 (regex!4295 r!2363))))

(assert (=> d!671129 (= (matchR!2904 (regex!4295 r!2363) (list!10425 (charsOf!2683 (head!4882 tokens!456)))) lt!842498)))

(declare-fun b!2267210 () Bool)

(declare-fun res!969429 () Bool)

(assert (=> b!2267210 (=> res!969429 e!1452076)))

(assert (=> b!2267210 (= res!969429 (not ((_ is ElementMatch!6643) (regex!4295 r!2363))))))

(assert (=> b!2267210 (= e!1452074 e!1452076)))

(declare-fun b!2267211 () Bool)

(assert (=> b!2267211 (= e!1452079 (= (head!4884 (list!10425 (charsOf!2683 (head!4882 tokens!456)))) (c!359945 (regex!4295 r!2363))))))

(assert (= (and d!671129 c!360012) b!2267204))

(assert (= (and d!671129 (not c!360012)) b!2267201))

(assert (= (and d!671129 c!360011) b!2267206))

(assert (= (and d!671129 (not c!360011)) b!2267205))

(assert (= (and b!2267205 c!360010) b!2267203))

(assert (= (and b!2267205 (not c!360010)) b!2267210))

(assert (= (and b!2267210 (not res!969429)) b!2267202))

(assert (= (and b!2267202 res!969435) b!2267208))

(assert (= (and b!2267208 res!969432) b!2267207))

(assert (= (and b!2267207 res!969431) b!2267211))

(assert (= (and b!2267202 (not res!969434)) b!2267200))

(assert (= (and b!2267200 res!969433) b!2267198))

(assert (= (and b!2267198 (not res!969428)) b!2267199))

(assert (= (and b!2267199 (not res!969430)) b!2267209))

(assert (= (or b!2267206 b!2267198 b!2267208) bm!136004))

(assert (=> b!2267209 m!2695965))

(declare-fun m!2696335 () Bool)

(assert (=> b!2267209 m!2696335))

(assert (=> b!2267211 m!2695965))

(assert (=> b!2267211 m!2696335))

(assert (=> d!671129 m!2695965))

(declare-fun m!2696337 () Bool)

(assert (=> d!671129 m!2696337))

(assert (=> d!671129 m!2696329))

(assert (=> b!2267199 m!2695965))

(declare-fun m!2696339 () Bool)

(assert (=> b!2267199 m!2696339))

(assert (=> b!2267199 m!2696339))

(declare-fun m!2696341 () Bool)

(assert (=> b!2267199 m!2696341))

(assert (=> b!2267207 m!2695965))

(assert (=> b!2267207 m!2696339))

(assert (=> b!2267207 m!2696339))

(assert (=> b!2267207 m!2696341))

(assert (=> b!2267201 m!2695965))

(assert (=> b!2267201 m!2696335))

(assert (=> b!2267201 m!2696335))

(declare-fun m!2696343 () Bool)

(assert (=> b!2267201 m!2696343))

(assert (=> b!2267201 m!2695965))

(assert (=> b!2267201 m!2696339))

(assert (=> b!2267201 m!2696343))

(assert (=> b!2267201 m!2696339))

(declare-fun m!2696345 () Bool)

(assert (=> b!2267201 m!2696345))

(assert (=> b!2267204 m!2696331))

(assert (=> bm!136004 m!2695965))

(assert (=> bm!136004 m!2696337))

(assert (=> b!2266807 d!671129))

(declare-fun d!671131 () Bool)

(assert (=> d!671131 (= (list!10425 (charsOf!2683 (head!4882 tokens!456))) (list!10430 (c!359944 (charsOf!2683 (head!4882 tokens!456)))))))

(declare-fun bs!455731 () Bool)

(assert (= bs!455731 d!671131))

(declare-fun m!2696347 () Bool)

(assert (=> bs!455731 m!2696347))

(assert (=> b!2266807 d!671131))

(declare-fun d!671133 () Bool)

(declare-fun lt!842501 () BalanceConc!17204)

(assert (=> d!671133 (= (list!10425 lt!842501) (originalCharacters!5065 (head!4882 tokens!456)))))

(assert (=> d!671133 (= lt!842501 (dynLambda!11677 (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456)))) (value!136227 (head!4882 tokens!456))))))

(assert (=> d!671133 (= (charsOf!2683 (head!4882 tokens!456)) lt!842501)))

(declare-fun b_lambda!72273 () Bool)

(assert (=> (not b_lambda!72273) (not d!671133)))

(declare-fun t!202180 () Bool)

(declare-fun tb!134431 () Bool)

(assert (=> (and b!2266791 (= (toChars!5908 (transformation!4295 r!2363)) (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456))))) t!202180) tb!134431))

(declare-fun b!2267212 () Bool)

(declare-fun e!1452081 () Bool)

(declare-fun tp!717370 () Bool)

(assert (=> b!2267212 (= e!1452081 (and (inv!36502 (c!359944 (dynLambda!11677 (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456)))) (value!136227 (head!4882 tokens!456))))) tp!717370))))

(declare-fun result!163902 () Bool)

(assert (=> tb!134431 (= result!163902 (and (inv!36503 (dynLambda!11677 (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456)))) (value!136227 (head!4882 tokens!456)))) e!1452081))))

(assert (= tb!134431 b!2267212))

(declare-fun m!2696349 () Bool)

(assert (=> b!2267212 m!2696349))

(declare-fun m!2696351 () Bool)

(assert (=> tb!134431 m!2696351))

(assert (=> d!671133 t!202180))

(declare-fun b_and!178481 () Bool)

(assert (= b_and!178473 (and (=> t!202180 result!163902) b_and!178481)))

(declare-fun tb!134433 () Bool)

(declare-fun t!202182 () Bool)

(assert (=> (and b!2266804 (= (toChars!5908 (transformation!4295 (h!32359 rules!1750))) (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456))))) t!202182) tb!134433))

(declare-fun result!163904 () Bool)

(assert (= result!163904 result!163902))

(assert (=> d!671133 t!202182))

(declare-fun b_and!178483 () Bool)

(assert (= b_and!178475 (and (=> t!202182 result!163904) b_and!178483)))

(declare-fun t!202184 () Bool)

(declare-fun tb!134435 () Bool)

(assert (=> (and b!2266797 (= (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456))))) t!202184) tb!134435))

(declare-fun result!163906 () Bool)

(assert (= result!163906 result!163902))

(assert (=> d!671133 t!202184))

(declare-fun b_and!178485 () Bool)

(assert (= b_and!178477 (and (=> t!202184 result!163906) b_and!178485)))

(declare-fun tb!134437 () Bool)

(declare-fun t!202186 () Bool)

(assert (=> (and b!2266801 (= (toChars!5908 (transformation!4295 otherR!12)) (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456))))) t!202186) tb!134437))

(declare-fun result!163908 () Bool)

(assert (= result!163908 result!163902))

(assert (=> d!671133 t!202186))

(declare-fun b_and!178487 () Bool)

(assert (= b_and!178479 (and (=> t!202186 result!163908) b_and!178487)))

(declare-fun m!2696353 () Bool)

(assert (=> d!671133 m!2696353))

(declare-fun m!2696355 () Bool)

(assert (=> d!671133 m!2696355))

(assert (=> b!2266807 d!671133))

(declare-fun d!671135 () Bool)

(assert (=> d!671135 (= (head!4882 tokens!456) (h!32358 tokens!456))))

(assert (=> b!2266807 d!671135))

(declare-fun d!671137 () Bool)

(declare-fun lt!842504 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3591 (List!27052) (InoxSet Rule!8390))

(assert (=> d!671137 (= lt!842504 (select (content!3591 rules!1750) r!2363))))

(declare-fun e!1452087 () Bool)

(assert (=> d!671137 (= lt!842504 e!1452087)))

(declare-fun res!969440 () Bool)

(assert (=> d!671137 (=> (not res!969440) (not e!1452087))))

(assert (=> d!671137 (= res!969440 ((_ is Cons!26958) rules!1750))))

(assert (=> d!671137 (= (contains!4653 rules!1750 r!2363) lt!842504)))

(declare-fun b!2267217 () Bool)

(declare-fun e!1452086 () Bool)

(assert (=> b!2267217 (= e!1452087 e!1452086)))

(declare-fun res!969441 () Bool)

(assert (=> b!2267217 (=> res!969441 e!1452086)))

(assert (=> b!2267217 (= res!969441 (= (h!32359 rules!1750) r!2363))))

(declare-fun b!2267218 () Bool)

(assert (=> b!2267218 (= e!1452086 (contains!4653 (t!202146 rules!1750) r!2363))))

(assert (= (and d!671137 res!969440) b!2267217))

(assert (= (and b!2267217 (not res!969441)) b!2267218))

(declare-fun m!2696357 () Bool)

(assert (=> d!671137 m!2696357))

(declare-fun m!2696359 () Bool)

(assert (=> d!671137 m!2696359))

(declare-fun m!2696361 () Bool)

(assert (=> b!2267218 m!2696361))

(assert (=> b!2266775 d!671137))

(declare-fun b!2267229 () Bool)

(declare-fun res!969444 () Bool)

(declare-fun e!1452095 () Bool)

(assert (=> b!2267229 (=> res!969444 e!1452095)))

(assert (=> b!2267229 (= res!969444 (not ((_ is IntegerValue!13373) (value!136227 (h!32358 tokens!456)))))))

(declare-fun e!1452094 () Bool)

(assert (=> b!2267229 (= e!1452094 e!1452095)))

(declare-fun b!2267230 () Bool)

(declare-fun e!1452096 () Bool)

(declare-fun inv!16 (TokenValue!4457) Bool)

(assert (=> b!2267230 (= e!1452096 (inv!16 (value!136227 (h!32358 tokens!456))))))

(declare-fun b!2267231 () Bool)

(declare-fun inv!17 (TokenValue!4457) Bool)

(assert (=> b!2267231 (= e!1452094 (inv!17 (value!136227 (h!32358 tokens!456))))))

(declare-fun d!671139 () Bool)

(declare-fun c!360018 () Bool)

(assert (=> d!671139 (= c!360018 ((_ is IntegerValue!13371) (value!136227 (h!32358 tokens!456))))))

(assert (=> d!671139 (= (inv!21 (value!136227 (h!32358 tokens!456))) e!1452096)))

(declare-fun b!2267232 () Bool)

(declare-fun inv!15 (TokenValue!4457) Bool)

(assert (=> b!2267232 (= e!1452095 (inv!15 (value!136227 (h!32358 tokens!456))))))

(declare-fun b!2267233 () Bool)

(assert (=> b!2267233 (= e!1452096 e!1452094)))

(declare-fun c!360017 () Bool)

(assert (=> b!2267233 (= c!360017 ((_ is IntegerValue!13372) (value!136227 (h!32358 tokens!456))))))

(assert (= (and d!671139 c!360018) b!2267230))

(assert (= (and d!671139 (not c!360018)) b!2267233))

(assert (= (and b!2267233 c!360017) b!2267231))

(assert (= (and b!2267233 (not c!360017)) b!2267229))

(assert (= (and b!2267229 (not res!969444)) b!2267232))

(declare-fun m!2696363 () Bool)

(assert (=> b!2267230 m!2696363))

(declare-fun m!2696365 () Bool)

(assert (=> b!2267231 m!2696365))

(declare-fun m!2696367 () Bool)

(assert (=> b!2267232 m!2696367))

(assert (=> b!2266805 d!671139))

(declare-fun d!671141 () Bool)

(declare-fun lt!842507 () Int)

(assert (=> d!671141 (= lt!842507 (size!21143 (list!10425 (charsOf!2683 (head!4882 tokens!456)))))))

(declare-fun size!21148 (Conc!8738) Int)

(assert (=> d!671141 (= lt!842507 (size!21148 (c!359944 (charsOf!2683 (head!4882 tokens!456)))))))

(assert (=> d!671141 (= (size!21142 (charsOf!2683 (head!4882 tokens!456))) lt!842507)))

(declare-fun bs!455732 () Bool)

(assert (= bs!455732 d!671141))

(assert (=> bs!455732 m!2695961))

(assert (=> bs!455732 m!2695965))

(assert (=> bs!455732 m!2695965))

(declare-fun m!2696369 () Bool)

(assert (=> bs!455732 m!2696369))

(declare-fun m!2696371 () Bool)

(assert (=> bs!455732 m!2696371))

(assert (=> b!2266773 d!671141))

(assert (=> b!2266773 d!671133))

(assert (=> b!2266773 d!671135))

(declare-fun d!671143 () Bool)

(declare-fun lt!842510 () Int)

(assert (=> d!671143 (>= lt!842510 0)))

(declare-fun e!1452099 () Int)

(assert (=> d!671143 (= lt!842510 e!1452099)))

(declare-fun c!360021 () Bool)

(assert (=> d!671143 (= c!360021 ((_ is Nil!26956) otherP!12))))

(assert (=> d!671143 (= (size!21143 otherP!12) lt!842510)))

(declare-fun b!2267238 () Bool)

(assert (=> b!2267238 (= e!1452099 0)))

(declare-fun b!2267239 () Bool)

(assert (=> b!2267239 (= e!1452099 (+ 1 (size!21143 (t!202144 otherP!12))))))

(assert (= (and d!671143 c!360021) b!2267238))

(assert (= (and d!671143 (not c!360021)) b!2267239))

(declare-fun m!2696373 () Bool)

(assert (=> b!2267239 m!2696373))

(assert (=> b!2266773 d!671143))

(declare-fun d!671145 () Bool)

(declare-fun lt!842511 () Int)

(assert (=> d!671145 (>= lt!842511 0)))

(declare-fun e!1452100 () Int)

(assert (=> d!671145 (= lt!842511 e!1452100)))

(declare-fun c!360022 () Bool)

(assert (=> d!671145 (= c!360022 ((_ is Nil!26956) lt!842417))))

(assert (=> d!671145 (= (size!21143 lt!842417) lt!842511)))

(declare-fun b!2267240 () Bool)

(assert (=> b!2267240 (= e!1452100 0)))

(declare-fun b!2267241 () Bool)

(assert (=> b!2267241 (= e!1452100 (+ 1 (size!21143 (t!202144 lt!842417))))))

(assert (= (and d!671145 c!360022) b!2267240))

(assert (= (and d!671145 (not c!360022)) b!2267241))

(declare-fun m!2696375 () Bool)

(assert (=> b!2267241 m!2696375))

(assert (=> b!2266784 d!671145))

(declare-fun d!671147 () Bool)

(assert (=> d!671147 (= (_2!15813 lt!842419) lt!842409)))

(declare-fun lt!842514 () Unit!39914)

(declare-fun choose!13258 (List!27050 List!27050 List!27050 List!27050 List!27050) Unit!39914)

(assert (=> d!671147 (= lt!842514 (choose!13258 lt!842417 (_2!15813 lt!842419) lt!842417 lt!842409 input!1722))))

(assert (=> d!671147 (isPrefix!2285 lt!842417 input!1722)))

(assert (=> d!671147 (= (lemmaSamePrefixThenSameSuffix!1014 lt!842417 (_2!15813 lt!842419) lt!842417 lt!842409 input!1722) lt!842514)))

(declare-fun bs!455733 () Bool)

(assert (= bs!455733 d!671147))

(declare-fun m!2696377 () Bool)

(assert (=> bs!455733 m!2696377))

(declare-fun m!2696379 () Bool)

(assert (=> bs!455733 m!2696379))

(assert (=> b!2266784 d!671147))

(declare-fun d!671149 () Bool)

(declare-fun lt!842517 () List!27050)

(assert (=> d!671149 (= (++!6567 lt!842417 lt!842517) input!1722)))

(declare-fun e!1452103 () List!27050)

(assert (=> d!671149 (= lt!842517 e!1452103)))

(declare-fun c!360025 () Bool)

(assert (=> d!671149 (= c!360025 ((_ is Cons!26956) lt!842417))))

(assert (=> d!671149 (>= (size!21143 input!1722) (size!21143 lt!842417))))

(assert (=> d!671149 (= (getSuffix!1096 input!1722 lt!842417) lt!842517)))

(declare-fun b!2267246 () Bool)

(assert (=> b!2267246 (= e!1452103 (getSuffix!1096 (tail!3269 input!1722) (t!202144 lt!842417)))))

(declare-fun b!2267247 () Bool)

(assert (=> b!2267247 (= e!1452103 input!1722)))

(assert (= (and d!671149 c!360025) b!2267246))

(assert (= (and d!671149 (not c!360025)) b!2267247))

(declare-fun m!2696381 () Bool)

(assert (=> d!671149 m!2696381))

(assert (=> d!671149 m!2696115))

(assert (=> d!671149 m!2696021))

(assert (=> b!2267246 m!2696119))

(assert (=> b!2267246 m!2696119))

(declare-fun m!2696383 () Bool)

(assert (=> b!2267246 m!2696383))

(assert (=> b!2266784 d!671149))

(assert (=> b!2266784 d!671143))

(declare-fun d!671151 () Bool)

(assert (=> d!671151 (= (list!10425 (charsOf!2683 (h!32358 tokens!456))) (list!10430 (c!359944 (charsOf!2683 (h!32358 tokens!456)))))))

(declare-fun bs!455734 () Bool)

(assert (= bs!455734 d!671151))

(declare-fun m!2696385 () Bool)

(assert (=> bs!455734 m!2696385))

(assert (=> b!2266784 d!671151))

(declare-fun d!671153 () Bool)

(assert (=> d!671153 (isPrefix!2285 lt!842417 (++!6567 lt!842417 (_2!15813 lt!842419)))))

(declare-fun lt!842520 () Unit!39914)

(declare-fun choose!13259 (List!27050 List!27050) Unit!39914)

(assert (=> d!671153 (= lt!842520 (choose!13259 lt!842417 (_2!15813 lt!842419)))))

(assert (=> d!671153 (= (lemmaConcatTwoListThenFirstIsPrefix!1510 lt!842417 (_2!15813 lt!842419)) lt!842520)))

(declare-fun bs!455735 () Bool)

(assert (= bs!455735 d!671153))

(assert (=> bs!455735 m!2696019))

(assert (=> bs!455735 m!2696019))

(assert (=> bs!455735 m!2696037))

(declare-fun m!2696387 () Bool)

(assert (=> bs!455735 m!2696387))

(assert (=> b!2266784 d!671153))

(declare-fun d!671155 () Bool)

(assert (=> d!671155 (= (get!8136 (maxPrefix!2166 thiss!16613 rules!1750 input!1722)) (v!30312 (maxPrefix!2166 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2266784 d!671155))

(declare-fun b!2267266 () Bool)

(declare-fun res!969463 () Bool)

(declare-fun e!1452111 () Bool)

(assert (=> b!2267266 (=> (not res!969463) (not e!1452111))))

(declare-fun lt!842531 () Option!5273)

(declare-fun apply!6593 (TokenValueInjection!8454 BalanceConc!17204) TokenValue!4457)

(assert (=> b!2267266 (= res!969463 (= (value!136227 (_1!15813 (get!8136 lt!842531))) (apply!6593 (transformation!4295 (rule!6611 (_1!15813 (get!8136 lt!842531)))) (seqFromList!2999 (originalCharacters!5065 (_1!15813 (get!8136 lt!842531)))))))))

(declare-fun d!671157 () Bool)

(declare-fun e!1452112 () Bool)

(assert (=> d!671157 e!1452112))

(declare-fun res!969459 () Bool)

(assert (=> d!671157 (=> res!969459 e!1452112)))

(declare-fun isEmpty!15258 (Option!5273) Bool)

(assert (=> d!671157 (= res!969459 (isEmpty!15258 lt!842531))))

(declare-fun e!1452110 () Option!5273)

(assert (=> d!671157 (= lt!842531 e!1452110)))

(declare-fun c!360028 () Bool)

(assert (=> d!671157 (= c!360028 (and ((_ is Cons!26958) rules!1750) ((_ is Nil!26958) (t!202146 rules!1750))))))

(declare-fun lt!842534 () Unit!39914)

(declare-fun lt!842533 () Unit!39914)

(assert (=> d!671157 (= lt!842534 lt!842533)))

(assert (=> d!671157 (isPrefix!2285 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1463 (List!27050 List!27050) Unit!39914)

(assert (=> d!671157 (= lt!842533 (lemmaIsPrefixRefl!1463 input!1722 input!1722))))

(declare-fun rulesValidInductive!1497 (LexerInterface!3892 List!27052) Bool)

(assert (=> d!671157 (rulesValidInductive!1497 thiss!16613 rules!1750)))

(assert (=> d!671157 (= (maxPrefix!2166 thiss!16613 rules!1750 input!1722) lt!842531)))

(declare-fun b!2267267 () Bool)

(declare-fun res!969462 () Bool)

(assert (=> b!2267267 (=> (not res!969462) (not e!1452111))))

(assert (=> b!2267267 (= res!969462 (= (++!6567 (list!10425 (charsOf!2683 (_1!15813 (get!8136 lt!842531)))) (_2!15813 (get!8136 lt!842531))) input!1722))))

(declare-fun b!2267268 () Bool)

(assert (=> b!2267268 (= e!1452111 (contains!4653 rules!1750 (rule!6611 (_1!15813 (get!8136 lt!842531)))))))

(declare-fun b!2267269 () Bool)

(assert (=> b!2267269 (= e!1452112 e!1452111)))

(declare-fun res!969464 () Bool)

(assert (=> b!2267269 (=> (not res!969464) (not e!1452111))))

(declare-fun isDefined!4200 (Option!5273) Bool)

(assert (=> b!2267269 (= res!969464 (isDefined!4200 lt!842531))))

(declare-fun b!2267270 () Bool)

(declare-fun res!969465 () Bool)

(assert (=> b!2267270 (=> (not res!969465) (not e!1452111))))

(assert (=> b!2267270 (= res!969465 (< (size!21143 (_2!15813 (get!8136 lt!842531))) (size!21143 input!1722)))))

(declare-fun b!2267271 () Bool)

(declare-fun res!969461 () Bool)

(assert (=> b!2267271 (=> (not res!969461) (not e!1452111))))

(assert (=> b!2267271 (= res!969461 (= (list!10425 (charsOf!2683 (_1!15813 (get!8136 lt!842531)))) (originalCharacters!5065 (_1!15813 (get!8136 lt!842531)))))))

(declare-fun b!2267272 () Bool)

(declare-fun lt!842532 () Option!5273)

(declare-fun lt!842535 () Option!5273)

(assert (=> b!2267272 (= e!1452110 (ite (and ((_ is None!5272) lt!842532) ((_ is None!5272) lt!842535)) None!5272 (ite ((_ is None!5272) lt!842535) lt!842532 (ite ((_ is None!5272) lt!842532) lt!842535 (ite (>= (size!21141 (_1!15813 (v!30312 lt!842532))) (size!21141 (_1!15813 (v!30312 lt!842535)))) lt!842532 lt!842535)))))))

(declare-fun call!136012 () Option!5273)

(assert (=> b!2267272 (= lt!842532 call!136012)))

(assert (=> b!2267272 (= lt!842535 (maxPrefix!2166 thiss!16613 (t!202146 rules!1750) input!1722))))

(declare-fun b!2267273 () Bool)

(declare-fun res!969460 () Bool)

(assert (=> b!2267273 (=> (not res!969460) (not e!1452111))))

(assert (=> b!2267273 (= res!969460 (matchR!2904 (regex!4295 (rule!6611 (_1!15813 (get!8136 lt!842531)))) (list!10425 (charsOf!2683 (_1!15813 (get!8136 lt!842531))))))))

(declare-fun b!2267274 () Bool)

(assert (=> b!2267274 (= e!1452110 call!136012)))

(declare-fun bm!136007 () Bool)

(declare-fun maxPrefixOneRule!1354 (LexerInterface!3892 Rule!8390 List!27050) Option!5273)

(assert (=> bm!136007 (= call!136012 (maxPrefixOneRule!1354 thiss!16613 (h!32359 rules!1750) input!1722))))

(assert (= (and d!671157 c!360028) b!2267274))

(assert (= (and d!671157 (not c!360028)) b!2267272))

(assert (= (or b!2267274 b!2267272) bm!136007))

(assert (= (and d!671157 (not res!969459)) b!2267269))

(assert (= (and b!2267269 res!969464) b!2267271))

(assert (= (and b!2267271 res!969461) b!2267270))

(assert (= (and b!2267270 res!969465) b!2267267))

(assert (= (and b!2267267 res!969462) b!2267266))

(assert (= (and b!2267266 res!969463) b!2267273))

(assert (= (and b!2267273 res!969460) b!2267268))

(declare-fun m!2696389 () Bool)

(assert (=> b!2267271 m!2696389))

(declare-fun m!2696391 () Bool)

(assert (=> b!2267271 m!2696391))

(assert (=> b!2267271 m!2696391))

(declare-fun m!2696393 () Bool)

(assert (=> b!2267271 m!2696393))

(assert (=> b!2267273 m!2696389))

(assert (=> b!2267273 m!2696391))

(assert (=> b!2267273 m!2696391))

(assert (=> b!2267273 m!2696393))

(assert (=> b!2267273 m!2696393))

(declare-fun m!2696395 () Bool)

(assert (=> b!2267273 m!2696395))

(declare-fun m!2696397 () Bool)

(assert (=> bm!136007 m!2696397))

(assert (=> b!2267268 m!2696389))

(declare-fun m!2696399 () Bool)

(assert (=> b!2267268 m!2696399))

(declare-fun m!2696401 () Bool)

(assert (=> b!2267269 m!2696401))

(assert (=> b!2267270 m!2696389))

(declare-fun m!2696403 () Bool)

(assert (=> b!2267270 m!2696403))

(assert (=> b!2267270 m!2696115))

(assert (=> b!2267267 m!2696389))

(assert (=> b!2267267 m!2696391))

(assert (=> b!2267267 m!2696391))

(assert (=> b!2267267 m!2696393))

(assert (=> b!2267267 m!2696393))

(declare-fun m!2696405 () Bool)

(assert (=> b!2267267 m!2696405))

(declare-fun m!2696407 () Bool)

(assert (=> d!671157 m!2696407))

(declare-fun m!2696409 () Bool)

(assert (=> d!671157 m!2696409))

(declare-fun m!2696411 () Bool)

(assert (=> d!671157 m!2696411))

(declare-fun m!2696413 () Bool)

(assert (=> d!671157 m!2696413))

(declare-fun m!2696415 () Bool)

(assert (=> b!2267272 m!2696415))

(assert (=> b!2267266 m!2696389))

(declare-fun m!2696417 () Bool)

(assert (=> b!2267266 m!2696417))

(assert (=> b!2267266 m!2696417))

(declare-fun m!2696419 () Bool)

(assert (=> b!2267266 m!2696419))

(assert (=> b!2266784 d!671157))

(declare-fun b!2267276 () Bool)

(declare-fun res!969469 () Bool)

(declare-fun e!1452115 () Bool)

(assert (=> b!2267276 (=> (not res!969469) (not e!1452115))))

(assert (=> b!2267276 (= res!969469 (= (head!4884 lt!842417) (head!4884 (++!6567 lt!842417 (_2!15813 lt!842419)))))))

(declare-fun b!2267278 () Bool)

(declare-fun e!1452113 () Bool)

(assert (=> b!2267278 (= e!1452113 (>= (size!21143 (++!6567 lt!842417 (_2!15813 lt!842419))) (size!21143 lt!842417)))))

(declare-fun d!671159 () Bool)

(assert (=> d!671159 e!1452113))

(declare-fun res!969468 () Bool)

(assert (=> d!671159 (=> res!969468 e!1452113)))

(declare-fun lt!842536 () Bool)

(assert (=> d!671159 (= res!969468 (not lt!842536))))

(declare-fun e!1452114 () Bool)

(assert (=> d!671159 (= lt!842536 e!1452114)))

(declare-fun res!969467 () Bool)

(assert (=> d!671159 (=> res!969467 e!1452114)))

(assert (=> d!671159 (= res!969467 ((_ is Nil!26956) lt!842417))))

(assert (=> d!671159 (= (isPrefix!2285 lt!842417 (++!6567 lt!842417 (_2!15813 lt!842419))) lt!842536)))

(declare-fun b!2267277 () Bool)

(assert (=> b!2267277 (= e!1452115 (isPrefix!2285 (tail!3269 lt!842417) (tail!3269 (++!6567 lt!842417 (_2!15813 lt!842419)))))))

(declare-fun b!2267275 () Bool)

(assert (=> b!2267275 (= e!1452114 e!1452115)))

(declare-fun res!969466 () Bool)

(assert (=> b!2267275 (=> (not res!969466) (not e!1452115))))

(assert (=> b!2267275 (= res!969466 (not ((_ is Nil!26956) (++!6567 lt!842417 (_2!15813 lt!842419)))))))

(assert (= (and d!671159 (not res!969467)) b!2267275))

(assert (= (and b!2267275 res!969466) b!2267276))

(assert (= (and b!2267276 res!969469) b!2267277))

(assert (= (and d!671159 (not res!969468)) b!2267278))

(declare-fun m!2696421 () Bool)

(assert (=> b!2267276 m!2696421))

(assert (=> b!2267276 m!2696019))

(declare-fun m!2696423 () Bool)

(assert (=> b!2267276 m!2696423))

(assert (=> b!2267278 m!2696019))

(declare-fun m!2696425 () Bool)

(assert (=> b!2267278 m!2696425))

(assert (=> b!2267278 m!2696021))

(declare-fun m!2696427 () Bool)

(assert (=> b!2267277 m!2696427))

(assert (=> b!2267277 m!2696019))

(declare-fun m!2696429 () Bool)

(assert (=> b!2267277 m!2696429))

(assert (=> b!2267277 m!2696427))

(assert (=> b!2267277 m!2696429))

(declare-fun m!2696431 () Bool)

(assert (=> b!2267277 m!2696431))

(assert (=> b!2266784 d!671159))

(declare-fun lt!842539 () List!27050)

(declare-fun e!1452121 () Bool)

(declare-fun b!2267290 () Bool)

(assert (=> b!2267290 (= e!1452121 (or (not (= (_2!15813 lt!842419) Nil!26956)) (= lt!842539 lt!842417)))))

(declare-fun b!2267289 () Bool)

(declare-fun res!969475 () Bool)

(assert (=> b!2267289 (=> (not res!969475) (not e!1452121))))

(assert (=> b!2267289 (= res!969475 (= (size!21143 lt!842539) (+ (size!21143 lt!842417) (size!21143 (_2!15813 lt!842419)))))))

(declare-fun b!2267288 () Bool)

(declare-fun e!1452120 () List!27050)

(assert (=> b!2267288 (= e!1452120 (Cons!26956 (h!32357 lt!842417) (++!6567 (t!202144 lt!842417) (_2!15813 lt!842419))))))

(declare-fun b!2267287 () Bool)

(assert (=> b!2267287 (= e!1452120 (_2!15813 lt!842419))))

(declare-fun d!671161 () Bool)

(assert (=> d!671161 e!1452121))

(declare-fun res!969474 () Bool)

(assert (=> d!671161 (=> (not res!969474) (not e!1452121))))

(declare-fun content!3592 (List!27050) (InoxSet C!13432))

(assert (=> d!671161 (= res!969474 (= (content!3592 lt!842539) ((_ map or) (content!3592 lt!842417) (content!3592 (_2!15813 lt!842419)))))))

(assert (=> d!671161 (= lt!842539 e!1452120)))

(declare-fun c!360031 () Bool)

(assert (=> d!671161 (= c!360031 ((_ is Nil!26956) lt!842417))))

(assert (=> d!671161 (= (++!6567 lt!842417 (_2!15813 lt!842419)) lt!842539)))

(assert (= (and d!671161 c!360031) b!2267287))

(assert (= (and d!671161 (not c!360031)) b!2267288))

(assert (= (and d!671161 res!969474) b!2267289))

(assert (= (and b!2267289 res!969475) b!2267290))

(declare-fun m!2696433 () Bool)

(assert (=> b!2267289 m!2696433))

(assert (=> b!2267289 m!2696021))

(declare-fun m!2696435 () Bool)

(assert (=> b!2267289 m!2696435))

(declare-fun m!2696437 () Bool)

(assert (=> b!2267288 m!2696437))

(declare-fun m!2696439 () Bool)

(assert (=> d!671161 m!2696439))

(declare-fun m!2696441 () Bool)

(assert (=> d!671161 m!2696441))

(declare-fun m!2696443 () Bool)

(assert (=> d!671161 m!2696443))

(assert (=> b!2266784 d!671161))

(declare-fun d!671163 () Bool)

(declare-fun lt!842540 () BalanceConc!17204)

(assert (=> d!671163 (= (list!10425 lt!842540) (originalCharacters!5065 (h!32358 tokens!456)))))

(assert (=> d!671163 (= lt!842540 (dynLambda!11677 (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))) (value!136227 (h!32358 tokens!456))))))

(assert (=> d!671163 (= (charsOf!2683 (h!32358 tokens!456)) lt!842540)))

(declare-fun b_lambda!72275 () Bool)

(assert (=> (not b_lambda!72275) (not d!671163)))

(assert (=> d!671163 t!202172))

(declare-fun b_and!178489 () Bool)

(assert (= b_and!178481 (and (=> t!202172 result!163892) b_and!178489)))

(assert (=> d!671163 t!202174))

(declare-fun b_and!178491 () Bool)

(assert (= b_and!178483 (and (=> t!202174 result!163896) b_and!178491)))

(assert (=> d!671163 t!202176))

(declare-fun b_and!178493 () Bool)

(assert (= b_and!178485 (and (=> t!202176 result!163898) b_and!178493)))

(assert (=> d!671163 t!202178))

(declare-fun b_and!178495 () Bool)

(assert (= b_and!178487 (and (=> t!202178 result!163900) b_and!178495)))

(declare-fun m!2696445 () Bool)

(assert (=> d!671163 m!2696445))

(assert (=> d!671163 m!2696309))

(assert (=> b!2266784 d!671163))

(assert (=> b!2266795 d!671135))

(declare-fun d!671165 () Bool)

(assert (=> d!671165 (= (isEmpty!15252 tokens!456) ((_ is Nil!26957) tokens!456))))

(assert (=> b!2266806 d!671165))

(assert (=> b!2266793 d!671141))

(assert (=> b!2266793 d!671133))

(assert (=> b!2266793 d!671135))

(declare-fun d!671167 () Bool)

(assert (=> d!671167 (= (inv!36495 (tag!4785 r!2363)) (= (mod (str.len (value!136226 (tag!4785 r!2363))) 2) 0))))

(assert (=> b!2266783 d!671167))

(declare-fun d!671169 () Bool)

(declare-fun res!969476 () Bool)

(declare-fun e!1452122 () Bool)

(assert (=> d!671169 (=> (not res!969476) (not e!1452122))))

(assert (=> d!671169 (= res!969476 (semiInverseModEq!1728 (toChars!5908 (transformation!4295 r!2363)) (toValue!6049 (transformation!4295 r!2363))))))

(assert (=> d!671169 (= (inv!36498 (transformation!4295 r!2363)) e!1452122)))

(declare-fun b!2267291 () Bool)

(assert (=> b!2267291 (= e!1452122 (equivClasses!1647 (toChars!5908 (transformation!4295 r!2363)) (toValue!6049 (transformation!4295 r!2363))))))

(assert (= (and d!671169 res!969476) b!2267291))

(declare-fun m!2696447 () Bool)

(assert (=> d!671169 m!2696447))

(declare-fun m!2696449 () Bool)

(assert (=> b!2267291 m!2696449))

(assert (=> b!2266783 d!671169))

(declare-fun d!671171 () Bool)

(declare-fun lt!842543 () Int)

(assert (=> d!671171 (>= lt!842543 0)))

(declare-fun e!1452125 () Int)

(assert (=> d!671171 (= lt!842543 e!1452125)))

(declare-fun c!360034 () Bool)

(assert (=> d!671171 (= c!360034 ((_ is Nil!26957) tokens!456))))

(assert (=> d!671171 (= (size!21144 tokens!456) lt!842543)))

(declare-fun b!2267296 () Bool)

(assert (=> b!2267296 (= e!1452125 0)))

(declare-fun b!2267297 () Bool)

(assert (=> b!2267297 (= e!1452125 (+ 1 (size!21144 (t!202145 tokens!456))))))

(assert (= (and d!671171 c!360034) b!2267296))

(assert (= (and d!671171 (not c!360034)) b!2267297))

(declare-fun m!2696451 () Bool)

(assert (=> b!2267297 m!2696451))

(assert (=> b!2266781 d!671171))

(declare-fun d!671173 () Bool)

(assert (=> d!671173 (= (inv!36495 (tag!4785 otherR!12)) (= (mod (str.len (value!136226 (tag!4785 otherR!12))) 2) 0))))

(assert (=> b!2266792 d!671173))

(declare-fun d!671175 () Bool)

(declare-fun res!969477 () Bool)

(declare-fun e!1452126 () Bool)

(assert (=> d!671175 (=> (not res!969477) (not e!1452126))))

(assert (=> d!671175 (= res!969477 (semiInverseModEq!1728 (toChars!5908 (transformation!4295 otherR!12)) (toValue!6049 (transformation!4295 otherR!12))))))

(assert (=> d!671175 (= (inv!36498 (transformation!4295 otherR!12)) e!1452126)))

(declare-fun b!2267298 () Bool)

(assert (=> b!2267298 (= e!1452126 (equivClasses!1647 (toChars!5908 (transformation!4295 otherR!12)) (toValue!6049 (transformation!4295 otherR!12))))))

(assert (= (and d!671175 res!969477) b!2267298))

(declare-fun m!2696453 () Bool)

(assert (=> d!671175 m!2696453))

(declare-fun m!2696455 () Bool)

(assert (=> b!2267298 m!2696455))

(assert (=> b!2266792 d!671175))

(declare-fun d!671177 () Bool)

(assert (=> d!671177 (= r!2363 otherR!12)))

(declare-fun lt!842546 () Unit!39914)

(declare-fun choose!13260 (List!27052 Rule!8390 Rule!8390) Unit!39914)

(assert (=> d!671177 (= lt!842546 (choose!13260 rules!1750 r!2363 otherR!12))))

(assert (=> d!671177 (contains!4653 rules!1750 r!2363)))

(assert (=> d!671177 (= (lemmaSameIndexThenSameElement!162 rules!1750 r!2363 otherR!12) lt!842546)))

(declare-fun bs!455736 () Bool)

(assert (= bs!455736 d!671177))

(declare-fun m!2696457 () Bool)

(assert (=> bs!455736 m!2696457))

(assert (=> bs!455736 m!2696045))

(assert (=> b!2266803 d!671177))

(declare-fun d!671179 () Bool)

(declare-fun lt!842547 () Bool)

(assert (=> d!671179 (= lt!842547 (select (content!3591 rules!1750) otherR!12))))

(declare-fun e!1452128 () Bool)

(assert (=> d!671179 (= lt!842547 e!1452128)))

(declare-fun res!969478 () Bool)

(assert (=> d!671179 (=> (not res!969478) (not e!1452128))))

(assert (=> d!671179 (= res!969478 ((_ is Cons!26958) rules!1750))))

(assert (=> d!671179 (= (contains!4653 rules!1750 otherR!12) lt!842547)))

(declare-fun b!2267299 () Bool)

(declare-fun e!1452127 () Bool)

(assert (=> b!2267299 (= e!1452128 e!1452127)))

(declare-fun res!969479 () Bool)

(assert (=> b!2267299 (=> res!969479 e!1452127)))

(assert (=> b!2267299 (= res!969479 (= (h!32359 rules!1750) otherR!12))))

(declare-fun b!2267300 () Bool)

(assert (=> b!2267300 (= e!1452127 (contains!4653 (t!202146 rules!1750) otherR!12))))

(assert (= (and d!671179 res!969478) b!2267299))

(assert (= (and b!2267299 (not res!969479)) b!2267300))

(assert (=> d!671179 m!2696357))

(declare-fun m!2696459 () Bool)

(assert (=> d!671179 m!2696459))

(declare-fun m!2696461 () Bool)

(assert (=> b!2267300 m!2696461))

(assert (=> b!2266802 d!671179))

(declare-fun d!671181 () Bool)

(declare-fun res!969482 () Bool)

(declare-fun e!1452131 () Bool)

(assert (=> d!671181 (=> (not res!969482) (not e!1452131))))

(declare-fun rulesValid!1572 (LexerInterface!3892 List!27052) Bool)

(assert (=> d!671181 (= res!969482 (rulesValid!1572 thiss!16613 rules!1750))))

(assert (=> d!671181 (= (rulesInvariant!3394 thiss!16613 rules!1750) e!1452131)))

(declare-fun b!2267303 () Bool)

(declare-datatypes ((List!27054 0))(
  ( (Nil!26960) (Cons!26960 (h!32361 String!29389) (t!202196 List!27054)) )
))
(declare-fun noDuplicateTag!1570 (LexerInterface!3892 List!27052 List!27054) Bool)

(assert (=> b!2267303 (= e!1452131 (noDuplicateTag!1570 thiss!16613 rules!1750 Nil!26960))))

(assert (= (and d!671181 res!969482) b!2267303))

(declare-fun m!2696463 () Bool)

(assert (=> d!671181 m!2696463))

(declare-fun m!2696465 () Bool)

(assert (=> b!2267303 m!2696465))

(assert (=> b!2266789 d!671181))

(declare-fun d!671183 () Bool)

(assert (=> d!671183 (= (isEmpty!15251 rules!1750) ((_ is Nil!26958) rules!1750))))

(assert (=> b!2266779 d!671183))

(declare-fun b!2267313 () Bool)

(declare-fun e!1452138 () Int)

(declare-fun e!1452137 () Int)

(assert (=> b!2267313 (= e!1452138 e!1452137)))

(declare-fun c!360040 () Bool)

(assert (=> b!2267313 (= c!360040 (and ((_ is Cons!26958) rules!1750) (not (= (h!32359 rules!1750) otherR!12))))))

(declare-fun b!2267314 () Bool)

(assert (=> b!2267314 (= e!1452137 (+ 1 (getIndex!316 (t!202146 rules!1750) otherR!12)))))

(declare-fun d!671185 () Bool)

(declare-fun lt!842550 () Int)

(assert (=> d!671185 (>= lt!842550 0)))

(assert (=> d!671185 (= lt!842550 e!1452138)))

(declare-fun c!360039 () Bool)

(assert (=> d!671185 (= c!360039 (and ((_ is Cons!26958) rules!1750) (= (h!32359 rules!1750) otherR!12)))))

(assert (=> d!671185 (contains!4653 rules!1750 otherR!12)))

(assert (=> d!671185 (= (getIndex!316 rules!1750 otherR!12) lt!842550)))

(declare-fun b!2267315 () Bool)

(assert (=> b!2267315 (= e!1452137 (- 1))))

(declare-fun b!2267312 () Bool)

(assert (=> b!2267312 (= e!1452138 0)))

(assert (= (and d!671185 c!360039) b!2267312))

(assert (= (and d!671185 (not c!360039)) b!2267313))

(assert (= (and b!2267313 c!360040) b!2267314))

(assert (= (and b!2267313 (not c!360040)) b!2267315))

(declare-fun m!2696467 () Bool)

(assert (=> b!2267314 m!2696467))

(assert (=> d!671185 m!2695977))

(assert (=> b!2266790 d!671185))

(declare-fun b!2267317 () Bool)

(declare-fun e!1452140 () Int)

(declare-fun e!1452139 () Int)

(assert (=> b!2267317 (= e!1452140 e!1452139)))

(declare-fun c!360042 () Bool)

(assert (=> b!2267317 (= c!360042 (and ((_ is Cons!26958) rules!1750) (not (= (h!32359 rules!1750) r!2363))))))

(declare-fun b!2267318 () Bool)

(assert (=> b!2267318 (= e!1452139 (+ 1 (getIndex!316 (t!202146 rules!1750) r!2363)))))

(declare-fun d!671187 () Bool)

(declare-fun lt!842551 () Int)

(assert (=> d!671187 (>= lt!842551 0)))

(assert (=> d!671187 (= lt!842551 e!1452140)))

(declare-fun c!360041 () Bool)

(assert (=> d!671187 (= c!360041 (and ((_ is Cons!26958) rules!1750) (= (h!32359 rules!1750) r!2363)))))

(assert (=> d!671187 (contains!4653 rules!1750 r!2363)))

(assert (=> d!671187 (= (getIndex!316 rules!1750 r!2363) lt!842551)))

(declare-fun b!2267319 () Bool)

(assert (=> b!2267319 (= e!1452139 (- 1))))

(declare-fun b!2267316 () Bool)

(assert (=> b!2267316 (= e!1452140 0)))

(assert (= (and d!671187 c!360041) b!2267316))

(assert (= (and d!671187 (not c!360041)) b!2267317))

(assert (= (and b!2267317 c!360042) b!2267318))

(assert (= (and b!2267317 (not c!360042)) b!2267319))

(declare-fun m!2696469 () Bool)

(assert (=> b!2267318 m!2696469))

(assert (=> d!671187 m!2696045))

(assert (=> b!2266790 d!671187))

(declare-fun d!671189 () Bool)

(declare-fun res!969483 () Bool)

(declare-fun e!1452141 () Bool)

(assert (=> d!671189 (=> (not res!969483) (not e!1452141))))

(assert (=> d!671189 (= res!969483 (validRegex!2488 (regex!4295 otherR!12)))))

(assert (=> d!671189 (= (ruleValid!1387 thiss!16613 otherR!12) e!1452141)))

(declare-fun b!2267320 () Bool)

(declare-fun res!969484 () Bool)

(assert (=> b!2267320 (=> (not res!969484) (not e!1452141))))

(assert (=> b!2267320 (= res!969484 (not (nullable!1826 (regex!4295 otherR!12))))))

(declare-fun b!2267321 () Bool)

(assert (=> b!2267321 (= e!1452141 (not (= (tag!4785 otherR!12) (String!29390 ""))))))

(assert (= (and d!671189 res!969483) b!2267320))

(assert (= (and b!2267320 res!969484) b!2267321))

(assert (=> d!671189 m!2695981))

(declare-fun m!2696471 () Bool)

(assert (=> b!2267320 m!2696471))

(assert (=> b!2266790 d!671189))

(declare-fun d!671191 () Bool)

(assert (=> d!671191 (ruleValid!1387 thiss!16613 otherR!12)))

(declare-fun lt!842552 () Unit!39914)

(assert (=> d!671191 (= lt!842552 (choose!13257 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!671191 (contains!4653 rules!1750 otherR!12)))

(assert (=> d!671191 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!794 thiss!16613 otherR!12 rules!1750) lt!842552)))

(declare-fun bs!455737 () Bool)

(assert (= bs!455737 d!671191))

(assert (=> bs!455737 m!2696011))

(declare-fun m!2696473 () Bool)

(assert (=> bs!455737 m!2696473))

(assert (=> bs!455737 m!2695977))

(assert (=> b!2266790 d!671191))

(declare-fun b!2267335 () Bool)

(declare-fun b_free!67269 () Bool)

(declare-fun b_next!67973 () Bool)

(assert (=> b!2267335 (= b_free!67269 (not b_next!67973))))

(declare-fun tp!717383 () Bool)

(declare-fun b_and!178497 () Bool)

(assert (=> b!2267335 (= tp!717383 b_and!178497)))

(declare-fun b_free!67271 () Bool)

(declare-fun b_next!67975 () Bool)

(assert (=> b!2267335 (= b_free!67271 (not b_next!67975))))

(declare-fun t!202189 () Bool)

(declare-fun tb!134439 () Bool)

(assert (=> (and b!2267335 (= (toChars!5908 (transformation!4295 (rule!6611 (h!32358 (t!202145 tokens!456))))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456))))) t!202189) tb!134439))

(declare-fun result!163912 () Bool)

(assert (= result!163912 result!163892))

(assert (=> b!2267126 t!202189))

(declare-fun t!202191 () Bool)

(declare-fun tb!134441 () Bool)

(assert (=> (and b!2267335 (= (toChars!5908 (transformation!4295 (rule!6611 (h!32358 (t!202145 tokens!456))))) (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456))))) t!202191) tb!134441))

(declare-fun result!163914 () Bool)

(assert (= result!163914 result!163902))

(assert (=> d!671133 t!202191))

(assert (=> d!671163 t!202189))

(declare-fun b_and!178499 () Bool)

(declare-fun tp!717384 () Bool)

(assert (=> b!2267335 (= tp!717384 (and (=> t!202189 result!163912) (=> t!202191 result!163914) b_and!178499))))

(declare-fun e!1452156 () Bool)

(declare-fun tp!717382 () Bool)

(declare-fun b!2267332 () Bool)

(declare-fun e!1452155 () Bool)

(assert (=> b!2267332 (= e!1452155 (and (inv!36499 (h!32358 (t!202145 tokens!456))) e!1452156 tp!717382))))

(declare-fun b!2267334 () Bool)

(declare-fun e!1452157 () Bool)

(declare-fun tp!717385 () Bool)

(declare-fun e!1452154 () Bool)

(assert (=> b!2267334 (= e!1452154 (and tp!717385 (inv!36495 (tag!4785 (rule!6611 (h!32358 (t!202145 tokens!456))))) (inv!36498 (transformation!4295 (rule!6611 (h!32358 (t!202145 tokens!456))))) e!1452157))))

(assert (=> b!2266778 (= tp!717292 e!1452155)))

(declare-fun b!2267333 () Bool)

(declare-fun tp!717381 () Bool)

(assert (=> b!2267333 (= e!1452156 (and (inv!21 (value!136227 (h!32358 (t!202145 tokens!456)))) e!1452154 tp!717381))))

(assert (=> b!2267335 (= e!1452157 (and tp!717383 tp!717384))))

(assert (= b!2267334 b!2267335))

(assert (= b!2267333 b!2267334))

(assert (= b!2267332 b!2267333))

(assert (= (and b!2266778 ((_ is Cons!26957) (t!202145 tokens!456))) b!2267332))

(declare-fun m!2696475 () Bool)

(assert (=> b!2267332 m!2696475))

(declare-fun m!2696477 () Bool)

(assert (=> b!2267334 m!2696477))

(declare-fun m!2696479 () Bool)

(assert (=> b!2267334 m!2696479))

(declare-fun m!2696481 () Bool)

(assert (=> b!2267333 m!2696481))

(declare-fun b!2267348 () Bool)

(declare-fun e!1452162 () Bool)

(declare-fun tp!717398 () Bool)

(assert (=> b!2267348 (= e!1452162 tp!717398)))

(declare-fun b!2267349 () Bool)

(declare-fun tp!717397 () Bool)

(declare-fun tp!717399 () Bool)

(assert (=> b!2267349 (= e!1452162 (and tp!717397 tp!717399))))

(declare-fun b!2267347 () Bool)

(declare-fun tp!717400 () Bool)

(declare-fun tp!717396 () Bool)

(assert (=> b!2267347 (= e!1452162 (and tp!717400 tp!717396))))

(assert (=> b!2266808 (= tp!717299 e!1452162)))

(declare-fun b!2267346 () Bool)

(assert (=> b!2267346 (= e!1452162 tp_is_empty!10507)))

(assert (= (and b!2266808 ((_ is ElementMatch!6643) (regex!4295 (rule!6611 (h!32358 tokens!456))))) b!2267346))

(assert (= (and b!2266808 ((_ is Concat!11101) (regex!4295 (rule!6611 (h!32358 tokens!456))))) b!2267347))

(assert (= (and b!2266808 ((_ is Star!6643) (regex!4295 (rule!6611 (h!32358 tokens!456))))) b!2267348))

(assert (= (and b!2266808 ((_ is Union!6643) (regex!4295 (rule!6611 (h!32358 tokens!456))))) b!2267349))

(declare-fun b!2267352 () Bool)

(declare-fun e!1452163 () Bool)

(declare-fun tp!717403 () Bool)

(assert (=> b!2267352 (= e!1452163 tp!717403)))

(declare-fun b!2267353 () Bool)

(declare-fun tp!717402 () Bool)

(declare-fun tp!717404 () Bool)

(assert (=> b!2267353 (= e!1452163 (and tp!717402 tp!717404))))

(declare-fun b!2267351 () Bool)

(declare-fun tp!717405 () Bool)

(declare-fun tp!717401 () Bool)

(assert (=> b!2267351 (= e!1452163 (and tp!717405 tp!717401))))

(assert (=> b!2266776 (= tp!717285 e!1452163)))

(declare-fun b!2267350 () Bool)

(assert (=> b!2267350 (= e!1452163 tp_is_empty!10507)))

(assert (= (and b!2266776 ((_ is ElementMatch!6643) (regex!4295 (h!32359 rules!1750)))) b!2267350))

(assert (= (and b!2266776 ((_ is Concat!11101) (regex!4295 (h!32359 rules!1750)))) b!2267351))

(assert (= (and b!2266776 ((_ is Star!6643) (regex!4295 (h!32359 rules!1750)))) b!2267352))

(assert (= (and b!2266776 ((_ is Union!6643) (regex!4295 (h!32359 rules!1750)))) b!2267353))

(declare-fun b!2267358 () Bool)

(declare-fun e!1452166 () Bool)

(declare-fun tp!717408 () Bool)

(assert (=> b!2267358 (= e!1452166 (and tp_is_empty!10507 tp!717408))))

(assert (=> b!2266786 (= tp!717297 e!1452166)))

(assert (= (and b!2266786 ((_ is Cons!26956) (t!202144 otherP!12))) b!2267358))

(declare-fun b!2267359 () Bool)

(declare-fun e!1452167 () Bool)

(declare-fun tp!717409 () Bool)

(assert (=> b!2267359 (= e!1452167 (and tp_is_empty!10507 tp!717409))))

(assert (=> b!2266805 (= tp!717286 e!1452167)))

(assert (= (and b!2266805 ((_ is Cons!26956) (originalCharacters!5065 (h!32358 tokens!456)))) b!2267359))

(declare-fun b!2267362 () Bool)

(declare-fun e!1452168 () Bool)

(declare-fun tp!717412 () Bool)

(assert (=> b!2267362 (= e!1452168 tp!717412)))

(declare-fun b!2267363 () Bool)

(declare-fun tp!717411 () Bool)

(declare-fun tp!717413 () Bool)

(assert (=> b!2267363 (= e!1452168 (and tp!717411 tp!717413))))

(declare-fun b!2267361 () Bool)

(declare-fun tp!717414 () Bool)

(declare-fun tp!717410 () Bool)

(assert (=> b!2267361 (= e!1452168 (and tp!717414 tp!717410))))

(assert (=> b!2266783 (= tp!717296 e!1452168)))

(declare-fun b!2267360 () Bool)

(assert (=> b!2267360 (= e!1452168 tp_is_empty!10507)))

(assert (= (and b!2266783 ((_ is ElementMatch!6643) (regex!4295 r!2363))) b!2267360))

(assert (= (and b!2266783 ((_ is Concat!11101) (regex!4295 r!2363))) b!2267361))

(assert (= (and b!2266783 ((_ is Star!6643) (regex!4295 r!2363))) b!2267362))

(assert (= (and b!2266783 ((_ is Union!6643) (regex!4295 r!2363))) b!2267363))

(declare-fun b!2267364 () Bool)

(declare-fun e!1452169 () Bool)

(declare-fun tp!717415 () Bool)

(assert (=> b!2267364 (= e!1452169 (and tp_is_empty!10507 tp!717415))))

(assert (=> b!2266794 (= tp!717289 e!1452169)))

(assert (= (and b!2266794 ((_ is Cons!26956) (t!202144 suffix!886))) b!2267364))

(declare-fun b!2267367 () Bool)

(declare-fun e!1452170 () Bool)

(declare-fun tp!717418 () Bool)

(assert (=> b!2267367 (= e!1452170 tp!717418)))

(declare-fun b!2267368 () Bool)

(declare-fun tp!717417 () Bool)

(declare-fun tp!717419 () Bool)

(assert (=> b!2267368 (= e!1452170 (and tp!717417 tp!717419))))

(declare-fun b!2267366 () Bool)

(declare-fun tp!717420 () Bool)

(declare-fun tp!717416 () Bool)

(assert (=> b!2267366 (= e!1452170 (and tp!717420 tp!717416))))

(assert (=> b!2266792 (= tp!717284 e!1452170)))

(declare-fun b!2267365 () Bool)

(assert (=> b!2267365 (= e!1452170 tp_is_empty!10507)))

(assert (= (and b!2266792 ((_ is ElementMatch!6643) (regex!4295 otherR!12))) b!2267365))

(assert (= (and b!2266792 ((_ is Concat!11101) (regex!4295 otherR!12))) b!2267366))

(assert (= (and b!2266792 ((_ is Star!6643) (regex!4295 otherR!12))) b!2267367))

(assert (= (and b!2266792 ((_ is Union!6643) (regex!4295 otherR!12))) b!2267368))

(declare-fun b!2267369 () Bool)

(declare-fun e!1452171 () Bool)

(declare-fun tp!717421 () Bool)

(assert (=> b!2267369 (= e!1452171 (and tp_is_empty!10507 tp!717421))))

(assert (=> b!2266782 (= tp!717288 e!1452171)))

(assert (= (and b!2266782 ((_ is Cons!26956) (t!202144 input!1722))) b!2267369))

(declare-fun b!2267380 () Bool)

(declare-fun b_free!67273 () Bool)

(declare-fun b_next!67977 () Bool)

(assert (=> b!2267380 (= b_free!67273 (not b_next!67977))))

(declare-fun tp!717432 () Bool)

(declare-fun b_and!178501 () Bool)

(assert (=> b!2267380 (= tp!717432 b_and!178501)))

(declare-fun b_free!67275 () Bool)

(declare-fun b_next!67979 () Bool)

(assert (=> b!2267380 (= b_free!67275 (not b_next!67979))))

(declare-fun tb!134443 () Bool)

(declare-fun t!202193 () Bool)

(assert (=> (and b!2267380 (= (toChars!5908 (transformation!4295 (h!32359 (t!202146 rules!1750)))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456))))) t!202193) tb!134443))

(declare-fun result!163922 () Bool)

(assert (= result!163922 result!163892))

(assert (=> b!2267126 t!202193))

(declare-fun tb!134445 () Bool)

(declare-fun t!202195 () Bool)

(assert (=> (and b!2267380 (= (toChars!5908 (transformation!4295 (h!32359 (t!202146 rules!1750)))) (toChars!5908 (transformation!4295 (rule!6611 (head!4882 tokens!456))))) t!202195) tb!134445))

(declare-fun result!163924 () Bool)

(assert (= result!163924 result!163902))

(assert (=> d!671133 t!202195))

(assert (=> d!671163 t!202193))

(declare-fun b_and!178503 () Bool)

(declare-fun tp!717433 () Bool)

(assert (=> b!2267380 (= tp!717433 (and (=> t!202193 result!163922) (=> t!202195 result!163924) b_and!178503))))

(declare-fun e!1452183 () Bool)

(assert (=> b!2267380 (= e!1452183 (and tp!717432 tp!717433))))

(declare-fun b!2267379 () Bool)

(declare-fun tp!717430 () Bool)

(declare-fun e!1452181 () Bool)

(assert (=> b!2267379 (= e!1452181 (and tp!717430 (inv!36495 (tag!4785 (h!32359 (t!202146 rules!1750)))) (inv!36498 (transformation!4295 (h!32359 (t!202146 rules!1750)))) e!1452183))))

(declare-fun b!2267378 () Bool)

(declare-fun e!1452182 () Bool)

(declare-fun tp!717431 () Bool)

(assert (=> b!2267378 (= e!1452182 (and e!1452181 tp!717431))))

(assert (=> b!2266800 (= tp!717282 e!1452182)))

(assert (= b!2267379 b!2267380))

(assert (= b!2267378 b!2267379))

(assert (= (and b!2266800 ((_ is Cons!26958) (t!202146 rules!1750))) b!2267378))

(declare-fun m!2696483 () Bool)

(assert (=> b!2267379 m!2696483))

(declare-fun m!2696485 () Bool)

(assert (=> b!2267379 m!2696485))

(declare-fun b_lambda!72277 () Bool)

(assert (= b_lambda!72275 (or (and b!2267335 b_free!67271 (= (toChars!5908 (transformation!4295 (rule!6611 (h!32358 (t!202145 tokens!456))))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2266797 b_free!67255) (and b!2266791 b_free!67247 (= (toChars!5908 (transformation!4295 r!2363)) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2267380 b_free!67275 (= (toChars!5908 (transformation!4295 (h!32359 (t!202146 rules!1750)))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2266804 b_free!67251 (= (toChars!5908 (transformation!4295 (h!32359 rules!1750))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2266801 b_free!67259 (= (toChars!5908 (transformation!4295 otherR!12)) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) b_lambda!72277)))

(declare-fun b_lambda!72279 () Bool)

(assert (= b_lambda!72271 (or (and b!2267335 b_free!67271 (= (toChars!5908 (transformation!4295 (rule!6611 (h!32358 (t!202145 tokens!456))))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2266797 b_free!67255) (and b!2266791 b_free!67247 (= (toChars!5908 (transformation!4295 r!2363)) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2267380 b_free!67275 (= (toChars!5908 (transformation!4295 (h!32359 (t!202146 rules!1750)))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2266804 b_free!67251 (= (toChars!5908 (transformation!4295 (h!32359 rules!1750))) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) (and b!2266801 b_free!67259 (= (toChars!5908 (transformation!4295 otherR!12)) (toChars!5908 (transformation!4295 (rule!6611 (h!32358 tokens!456)))))) b_lambda!72279)))

(check-sat (not d!671179) (not b!2267246) b_and!178433 (not b!2267241) (not d!671181) (not b!2267288) (not b!2267207) (not b!2267364) (not bm!136001) (not b!2266863) (not b!2267369) (not b_next!67955) b_and!178437 (not d!671117) (not b!2267118) (not b_next!67959) (not b_lambda!72277) (not b!2267119) (not b!2267231) (not b!2267358) (not b!2267303) (not d!671177) (not d!671157) (not d!671121) (not b!2267368) (not d!671047) b_and!178495 b_and!178499 (not b!2267347) (not b!2267366) (not b!2267120) (not d!671161) (not d!671191) (not d!671141) (not d!671129) (not d!671125) (not b!2266862) (not b!2267132) (not b!2267291) (not b!2267352) (not bm!136004) (not b!2267332) (not b!2267209) (not b!2267212) (not b!2267199) (not bm!136007) (not b!2267136) (not d!671127) b_and!178493 (not b!2267349) (not b!2267363) (not b!2267267) (not b_next!67951) (not d!671185) (not d!671187) (not b!2267333) (not bm!136000) (not b!2267379) (not tb!134423) (not b!2267361) (not b!2267135) (not d!671149) (not b!2267266) (not b!2267314) tp_is_empty!10507 (not b!2267117) (not d!671043) (not b_next!67953) (not b_next!67949) (not b!2267278) (not d!671111) (not b_next!67977) (not b!2267269) b_and!178503 (not b!2267201) (not b!2267348) (not d!671113) (not b!2267204) b_and!178429 (not b!2267126) b_and!178425 (not b!2267277) (not b!2267239) (not d!671133) (not b!2266864) (not b_next!67975) (not d!671163) b_and!178501 (not d!671153) (not b!2267298) (not b_next!67961) (not d!671151) (not d!671169) (not b!2267272) b_and!178497 (not b!2267268) (not b!2267334) (not b!2267163) (not b!2267168) (not b_next!67979) (not b_next!67957) (not d!671045) (not b!2267127) (not d!671147) (not b!2267367) (not b!2267211) (not b!2267297) (not b!2267289) (not b!2267271) (not b!2267218) b_and!178489 (not tb!134431) (not b!2267300) (not b!2267318) (not d!671175) (not b!2267270) (not b!2267359) (not b!2267230) (not b!2267353) (not d!671189) (not b!2267276) (not b!2267320) (not d!671131) (not b_next!67973) (not d!671137) (not b!2267273) (not b_lambda!72279) (not b!2267351) (not b!2267362) (not b_lambda!72273) (not b!2267232) (not b!2267378) (not b_next!67963) b_and!178491)
(check-sat (not b_next!67959) b_and!178493 (not b_next!67951) b_and!178429 b_and!178425 b_and!178489 (not b_next!67973) b_and!178433 (not b_next!67955) b_and!178437 b_and!178495 b_and!178499 (not b_next!67953) (not b_next!67949) (not b_next!67977) b_and!178503 b_and!178501 (not b_next!67975) (not b_next!67961) b_and!178497 (not b_next!67979) (not b_next!67957) (not b_next!67963) b_and!178491)
