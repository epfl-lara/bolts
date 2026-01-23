; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221400 () Bool)

(assert start!221400)

(declare-fun b!2266565 () Bool)

(declare-fun b_free!67213 () Bool)

(declare-fun b_next!67917 () Bool)

(assert (=> b!2266565 (= b_free!67213 (not b_next!67917))))

(declare-fun tp!717191 () Bool)

(declare-fun b_and!178393 () Bool)

(assert (=> b!2266565 (= tp!717191 b_and!178393)))

(declare-fun b_free!67215 () Bool)

(declare-fun b_next!67919 () Bool)

(assert (=> b!2266565 (= b_free!67215 (not b_next!67919))))

(declare-fun tp!717187 () Bool)

(declare-fun b_and!178395 () Bool)

(assert (=> b!2266565 (= tp!717187 b_and!178395)))

(declare-fun b!2266567 () Bool)

(declare-fun b_free!67217 () Bool)

(declare-fun b_next!67921 () Bool)

(assert (=> b!2266567 (= b_free!67217 (not b_next!67921))))

(declare-fun tp!717175 () Bool)

(declare-fun b_and!178397 () Bool)

(assert (=> b!2266567 (= tp!717175 b_and!178397)))

(declare-fun b_free!67219 () Bool)

(declare-fun b_next!67923 () Bool)

(assert (=> b!2266567 (= b_free!67219 (not b_next!67923))))

(declare-fun tp!717178 () Bool)

(declare-fun b_and!178399 () Bool)

(assert (=> b!2266567 (= tp!717178 b_and!178399)))

(declare-fun b!2266558 () Bool)

(declare-fun b_free!67221 () Bool)

(declare-fun b_next!67925 () Bool)

(assert (=> b!2266558 (= b_free!67221 (not b_next!67925))))

(declare-fun tp!717186 () Bool)

(declare-fun b_and!178401 () Bool)

(assert (=> b!2266558 (= tp!717186 b_and!178401)))

(declare-fun b_free!67223 () Bool)

(declare-fun b_next!67927 () Bool)

(assert (=> b!2266558 (= b_free!67223 (not b_next!67927))))

(declare-fun tp!717180 () Bool)

(declare-fun b_and!178403 () Bool)

(assert (=> b!2266558 (= tp!717180 b_and!178403)))

(declare-fun b!2266562 () Bool)

(declare-fun b_free!67225 () Bool)

(declare-fun b_next!67929 () Bool)

(assert (=> b!2266562 (= b_free!67225 (not b_next!67929))))

(declare-fun tp!717176 () Bool)

(declare-fun b_and!178405 () Bool)

(assert (=> b!2266562 (= tp!717176 b_and!178405)))

(declare-fun b_free!67227 () Bool)

(declare-fun b_next!67931 () Bool)

(assert (=> b!2266562 (= b_free!67227 (not b_next!67931))))

(declare-fun tp!717183 () Bool)

(declare-fun b_and!178407 () Bool)

(assert (=> b!2266562 (= tp!717183 b_and!178407)))

(declare-fun e!1451632 () Bool)

(assert (=> b!2266558 (= e!1451632 (and tp!717186 tp!717180))))

(declare-datatypes ((List!27041 0))(
  ( (Nil!26947) (Cons!26947 (h!32348 (_ BitVec 16)) (t!202135 List!27041)) )
))
(declare-datatypes ((TokenValue!4455 0))(
  ( (FloatLiteralValue!8910 (text!31630 List!27041)) (TokenValueExt!4454 (__x!17970 Int)) (Broken!22275 (value!136144 List!27041)) (Object!4548) (End!4455) (Def!4455) (Underscore!4455) (Match!4455) (Else!4455) (Error!4455) (Case!4455) (If!4455) (Extends!4455) (Abstract!4455) (Class!4455) (Val!4455) (DelimiterValue!8910 (del!4515 List!27041)) (KeywordValue!4461 (value!136145 List!27041)) (CommentValue!8910 (value!136146 List!27041)) (WhitespaceValue!8910 (value!136147 List!27041)) (IndentationValue!4455 (value!136148 List!27041)) (String!29378) (Int32!4455) (Broken!22276 (value!136149 List!27041)) (Boolean!4456) (Unit!39903) (OperatorValue!4458 (op!4515 List!27041)) (IdentifierValue!8910 (value!136150 List!27041)) (IdentifierValue!8911 (value!136151 List!27041)) (WhitespaceValue!8911 (value!136152 List!27041)) (True!8910) (False!8910) (Broken!22277 (value!136153 List!27041)) (Broken!22278 (value!136154 List!27041)) (True!8911) (RightBrace!4455) (RightBracket!4455) (Colon!4455) (Null!4455) (Comma!4455) (LeftBracket!4455) (False!8911) (LeftBrace!4455) (ImaginaryLiteralValue!4455 (text!31631 List!27041)) (StringLiteralValue!13365 (value!136155 List!27041)) (EOFValue!4455 (value!136156 List!27041)) (IdentValue!4455 (value!136157 List!27041)) (DelimiterValue!8911 (value!136158 List!27041)) (DedentValue!4455 (value!136159 List!27041)) (NewLineValue!4455 (value!136160 List!27041)) (IntegerValue!13365 (value!136161 (_ BitVec 32)) (text!31632 List!27041)) (IntegerValue!13366 (value!136162 Int) (text!31633 List!27041)) (Times!4455) (Or!4455) (Equal!4455) (Minus!4455) (Broken!22279 (value!136163 List!27041)) (And!4455) (Div!4455) (LessEqual!4455) (Mod!4455) (Concat!11096) (Not!4455) (Plus!4455) (SpaceValue!4455 (value!136164 List!27041)) (IntegerValue!13367 (value!136165 Int) (text!31634 List!27041)) (StringLiteralValue!13366 (text!31635 List!27041)) (FloatLiteralValue!8911 (text!31636 List!27041)) (BytesLiteralValue!4455 (value!136166 List!27041)) (CommentValue!8911 (value!136167 List!27041)) (StringLiteralValue!13367 (value!136168 List!27041)) (ErrorTokenValue!4455 (msg!4516 List!27041)) )
))
(declare-datatypes ((C!13428 0))(
  ( (C!13429 (val!7762 Int)) )
))
(declare-datatypes ((List!27042 0))(
  ( (Nil!26948) (Cons!26948 (h!32349 C!13428) (t!202136 List!27042)) )
))
(declare-datatypes ((IArray!17473 0))(
  ( (IArray!17474 (innerList!8794 List!27042)) )
))
(declare-datatypes ((Conc!8734 0))(
  ( (Node!8734 (left!20449 Conc!8734) (right!20779 Conc!8734) (csize!17698 Int) (cheight!8945 Int)) (Leaf!12866 (xs!11676 IArray!17473) (csize!17699 Int)) (Empty!8734) )
))
(declare-datatypes ((BalanceConc!17196 0))(
  ( (BalanceConc!17197 (c!359930 Conc!8734)) )
))
(declare-datatypes ((Regex!6641 0))(
  ( (ElementMatch!6641 (c!359931 C!13428)) (Concat!11097 (regOne!13794 Regex!6641) (regTwo!13794 Regex!6641)) (EmptyExpr!6641) (Star!6641 (reg!6970 Regex!6641)) (EmptyLang!6641) (Union!6641 (regOne!13795 Regex!6641) (regTwo!13795 Regex!6641)) )
))
(declare-datatypes ((String!29379 0))(
  ( (String!29380 (value!136169 String)) )
))
(declare-datatypes ((TokenValueInjection!8450 0))(
  ( (TokenValueInjection!8451 (toValue!6047 Int) (toChars!5906 Int)) )
))
(declare-datatypes ((Rule!8386 0))(
  ( (Rule!8387 (regex!4293 Regex!6641) (tag!4783 String!29379) (isSeparator!4293 Bool) (transformation!4293 TokenValueInjection!8450)) )
))
(declare-fun otherR!12 () Rule!8386)

(declare-fun e!1451618 () Bool)

(declare-fun b!2266559 () Bool)

(declare-fun tp!717189 () Bool)

(declare-fun inv!36488 (String!29379) Bool)

(declare-fun inv!36491 (TokenValueInjection!8450) Bool)

(assert (=> b!2266559 (= e!1451618 (and tp!717189 (inv!36488 (tag!4783 otherR!12)) (inv!36491 (transformation!4293 otherR!12)) e!1451632))))

(declare-fun b!2266560 () Bool)

(declare-fun e!1451637 () Bool)

(declare-datatypes ((Token!8064 0))(
  ( (Token!8065 (value!136170 TokenValue!4455) (rule!6609 Rule!8386) (size!21133 Int) (originalCharacters!5063 List!27042)) )
))
(declare-datatypes ((List!27043 0))(
  ( (Nil!26949) (Cons!26949 (h!32350 Token!8064) (t!202137 List!27043)) )
))
(declare-fun tokens!456 () List!27043)

(declare-fun otherP!12 () List!27042)

(declare-fun size!21134 (BalanceConc!17196) Int)

(declare-fun charsOf!2681 (Token!8064) BalanceConc!17196)

(declare-fun head!4880 (List!27043) Token!8064)

(declare-fun size!21135 (List!27042) Int)

(assert (=> b!2266560 (= e!1451637 (<= (size!21134 (charsOf!2681 (head!4880 tokens!456))) (size!21135 otherP!12)))))

(declare-fun b!2266561 () Bool)

(declare-fun e!1451641 () Bool)

(declare-fun e!1451631 () Bool)

(declare-fun tp!717177 () Bool)

(assert (=> b!2266561 (= e!1451641 (and e!1451631 tp!717177))))

(declare-fun e!1451644 () Bool)

(assert (=> b!2266562 (= e!1451644 (and tp!717176 tp!717183))))

(declare-fun b!2266563 () Bool)

(declare-fun res!969097 () Bool)

(declare-fun e!1451624 () Bool)

(assert (=> b!2266563 (=> (not res!969097) (not e!1451624))))

(declare-fun r!2363 () Rule!8386)

(assert (=> b!2266563 (= res!969097 (not (= r!2363 otherR!12)))))

(declare-fun b!2266564 () Bool)

(declare-fun res!969086 () Bool)

(declare-fun e!1451617 () Bool)

(assert (=> b!2266564 (=> (not res!969086) (not e!1451617))))

(declare-datatypes ((List!27044 0))(
  ( (Nil!26950) (Cons!26950 (h!32351 Rule!8386) (t!202138 List!27044)) )
))
(declare-fun rules!1750 () List!27044)

(declare-fun contains!4651 (List!27044 Rule!8386) Bool)

(assert (=> b!2266564 (= res!969086 (contains!4651 rules!1750 otherR!12))))

(declare-fun e!1451620 () Bool)

(assert (=> b!2266565 (= e!1451620 (and tp!717191 tp!717187))))

(declare-fun b!2266566 () Bool)

(declare-fun res!969089 () Bool)

(declare-fun e!1451630 () Bool)

(assert (=> b!2266566 (=> res!969089 e!1451630)))

(declare-fun lt!842326 () Int)

(declare-fun lt!842332 () Int)

(assert (=> b!2266566 (= res!969089 (< lt!842326 lt!842332))))

(declare-fun e!1451629 () Bool)

(assert (=> b!2266567 (= e!1451629 (and tp!717175 tp!717178))))

(declare-fun b!2266568 () Bool)

(declare-fun e!1451622 () Bool)

(declare-fun tp_is_empty!10503 () Bool)

(declare-fun tp!717174 () Bool)

(assert (=> b!2266568 (= e!1451622 (and tp_is_empty!10503 tp!717174))))

(declare-fun b!2266569 () Bool)

(declare-fun e!1451616 () Bool)

(declare-fun e!1451642 () Bool)

(assert (=> b!2266569 (= e!1451616 e!1451642)))

(declare-fun res!969090 () Bool)

(assert (=> b!2266569 (=> res!969090 e!1451642)))

(get-info :version)

(assert (=> b!2266569 (= res!969090 ((_ is Nil!26949) tokens!456))))

(declare-datatypes ((Unit!39904 0))(
  ( (Unit!39905) )
))
(declare-fun lt!842334 () Unit!39904)

(declare-fun e!1451638 () Unit!39904)

(assert (=> b!2266569 (= lt!842334 e!1451638)))

(declare-fun c!359929 () Bool)

(assert (=> b!2266569 (= c!359929 (= lt!842332 lt!842326))))

(declare-fun b!2266570 () Bool)

(declare-fun res!969091 () Bool)

(assert (=> b!2266570 (=> (not res!969091) (not e!1451617))))

(declare-datatypes ((LexerInterface!3890 0))(
  ( (LexerInterfaceExt!3887 (__x!17971 Int)) (Lexer!3888) )
))
(declare-fun thiss!16613 () LexerInterface!3890)

(declare-fun rulesInvariant!3392 (LexerInterface!3890 List!27044) Bool)

(assert (=> b!2266570 (= res!969091 (rulesInvariant!3392 thiss!16613 rules!1750))))

(declare-fun b!2266571 () Bool)

(declare-fun e!1451627 () Bool)

(declare-fun tp!717188 () Bool)

(assert (=> b!2266571 (= e!1451627 (and tp_is_empty!10503 tp!717188))))

(declare-fun b!2266572 () Bool)

(declare-fun Unit!39906 () Unit!39904)

(assert (=> b!2266572 (= e!1451638 Unit!39906)))

(declare-fun b!2266573 () Bool)

(declare-fun res!969098 () Bool)

(assert (=> b!2266573 (=> res!969098 e!1451630)))

(declare-fun size!21136 (List!27043) Int)

(assert (=> b!2266573 (= res!969098 (<= (size!21136 tokens!456) 0))))

(declare-fun b!2266574 () Bool)

(declare-fun Unit!39907 () Unit!39904)

(assert (=> b!2266574 (= e!1451638 Unit!39907)))

(declare-fun lt!842324 () Unit!39904)

(declare-fun lemmaSameIndexThenSameElement!160 (List!27044 Rule!8386 Rule!8386) Unit!39904)

(assert (=> b!2266574 (= lt!842324 (lemmaSameIndexThenSameElement!160 rules!1750 r!2363 otherR!12))))

(assert (=> b!2266574 false))

(declare-fun b!2266575 () Bool)

(declare-fun res!969093 () Bool)

(assert (=> b!2266575 (=> (not res!969093) (not e!1451617))))

(assert (=> b!2266575 (= res!969093 (contains!4651 rules!1750 r!2363))))

(declare-fun b!2266576 () Bool)

(assert (=> b!2266576 (= e!1451630 (not (= tokens!456 Nil!26949)))))

(declare-fun b!2266577 () Bool)

(declare-fun tp!717185 () Bool)

(assert (=> b!2266577 (= e!1451631 (and tp!717185 (inv!36488 (tag!4783 (h!32351 rules!1750))) (inv!36491 (transformation!4293 (h!32351 rules!1750))) e!1451644))))

(declare-fun b!2266578 () Bool)

(declare-fun e!1451643 () Bool)

(declare-fun tp!717190 () Bool)

(assert (=> b!2266578 (= e!1451643 (and tp_is_empty!10503 tp!717190))))

(declare-fun res!969092 () Bool)

(assert (=> start!221400 (=> (not res!969092) (not e!1451617))))

(assert (=> start!221400 (= res!969092 ((_ is Lexer!3888) thiss!16613))))

(assert (=> start!221400 e!1451617))

(assert (=> start!221400 true))

(assert (=> start!221400 e!1451643))

(assert (=> start!221400 e!1451618))

(assert (=> start!221400 e!1451627))

(assert (=> start!221400 e!1451622))

(assert (=> start!221400 e!1451641))

(declare-fun e!1451645 () Bool)

(assert (=> start!221400 e!1451645))

(declare-fun e!1451623 () Bool)

(assert (=> start!221400 e!1451623))

(declare-fun tp!717184 () Bool)

(declare-fun e!1451633 () Bool)

(declare-fun b!2266579 () Bool)

(declare-fun e!1451619 () Bool)

(declare-fun inv!21 (TokenValue!4455) Bool)

(assert (=> b!2266579 (= e!1451619 (and (inv!21 (value!136170 (h!32350 tokens!456))) e!1451633 tp!717184))))

(declare-fun b!2266580 () Bool)

(declare-fun tp!717179 () Bool)

(assert (=> b!2266580 (= e!1451645 (and tp!717179 (inv!36488 (tag!4783 r!2363)) (inv!36491 (transformation!4293 r!2363)) e!1451620))))

(declare-fun b!2266581 () Bool)

(declare-fun e!1451635 () Bool)

(assert (=> b!2266581 (= e!1451635 e!1451624)))

(declare-fun res!969100 () Bool)

(assert (=> b!2266581 (=> (not res!969100) (not e!1451624))))

(assert (=> b!2266581 (= res!969100 e!1451637)))

(declare-fun res!969083 () Bool)

(assert (=> b!2266581 (=> res!969083 e!1451637)))

(declare-fun lt!842330 () Bool)

(assert (=> b!2266581 (= res!969083 lt!842330)))

(declare-fun isEmpty!15247 (List!27043) Bool)

(assert (=> b!2266581 (= lt!842330 (isEmpty!15247 tokens!456))))

(declare-fun b!2266582 () Bool)

(declare-fun e!1451625 () Bool)

(assert (=> b!2266582 (= e!1451625 e!1451616)))

(declare-fun res!969096 () Bool)

(assert (=> b!2266582 (=> res!969096 e!1451616)))

(assert (=> b!2266582 (= res!969096 (> lt!842332 lt!842326))))

(declare-fun getIndex!314 (List!27044 Rule!8386) Int)

(assert (=> b!2266582 (= lt!842326 (getIndex!314 rules!1750 otherR!12))))

(assert (=> b!2266582 (= lt!842332 (getIndex!314 rules!1750 r!2363))))

(declare-fun ruleValid!1385 (LexerInterface!3890 Rule!8386) Bool)

(assert (=> b!2266582 (ruleValid!1385 thiss!16613 otherR!12)))

(declare-fun lt!842335 () Unit!39904)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!792 (LexerInterface!3890 Rule!8386 List!27044) Unit!39904)

(assert (=> b!2266582 (= lt!842335 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!792 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2266583 () Bool)

(declare-fun res!969085 () Bool)

(assert (=> b!2266583 (=> (not res!969085) (not e!1451624))))

(declare-fun e!1451621 () Bool)

(assert (=> b!2266583 (= res!969085 e!1451621)))

(declare-fun res!969095 () Bool)

(assert (=> b!2266583 (=> res!969095 e!1451621)))

(assert (=> b!2266583 (= res!969095 lt!842330)))

(declare-fun b!2266584 () Bool)

(declare-fun res!969099 () Bool)

(assert (=> b!2266584 (=> (not res!969099) (not e!1451624))))

(declare-fun input!1722 () List!27042)

(declare-fun isPrefix!2283 (List!27042 List!27042) Bool)

(assert (=> b!2266584 (= res!969099 (isPrefix!2283 otherP!12 input!1722))))

(declare-fun b!2266585 () Bool)

(assert (=> b!2266585 (= e!1451617 e!1451635)))

(declare-fun res!969094 () Bool)

(assert (=> b!2266585 (=> (not res!969094) (not e!1451635))))

(declare-fun suffix!886 () List!27042)

(declare-datatypes ((IArray!17475 0))(
  ( (IArray!17476 (innerList!8795 List!27043)) )
))
(declare-datatypes ((Conc!8735 0))(
  ( (Node!8735 (left!20450 Conc!8735) (right!20780 Conc!8735) (csize!17700 Int) (cheight!8946 Int)) (Leaf!12867 (xs!11677 IArray!17475) (csize!17701 Int)) (Empty!8735) )
))
(declare-datatypes ((BalanceConc!17198 0))(
  ( (BalanceConc!17199 (c!359932 Conc!8735)) )
))
(declare-datatypes ((tuple2!26594 0))(
  ( (tuple2!26595 (_1!15807 BalanceConc!17198) (_2!15807 BalanceConc!17196)) )
))
(declare-fun lt!842327 () tuple2!26594)

(declare-datatypes ((tuple2!26596 0))(
  ( (tuple2!26597 (_1!15808 List!27043) (_2!15808 List!27042)) )
))
(declare-fun list!10421 (BalanceConc!17198) List!27043)

(declare-fun list!10422 (BalanceConc!17196) List!27042)

(assert (=> b!2266585 (= res!969094 (= (tuple2!26597 (list!10421 (_1!15807 lt!842327)) (list!10422 (_2!15807 lt!842327))) (tuple2!26597 tokens!456 suffix!886)))))

(declare-fun lex!1729 (LexerInterface!3890 List!27044 BalanceConc!17196) tuple2!26594)

(declare-fun seqFromList!2997 (List!27042) BalanceConc!17196)

(assert (=> b!2266585 (= lt!842327 (lex!1729 thiss!16613 rules!1750 (seqFromList!2997 input!1722)))))

(declare-fun b!2266586 () Bool)

(assert (=> b!2266586 (= e!1451621 (= (rule!6609 (head!4880 tokens!456)) r!2363))))

(declare-fun b!2266587 () Bool)

(assert (=> b!2266587 (= e!1451624 (not e!1451625))))

(declare-fun res!969088 () Bool)

(assert (=> b!2266587 (=> res!969088 e!1451625)))

(declare-fun e!1451634 () Bool)

(assert (=> b!2266587 (= res!969088 e!1451634)))

(declare-fun res!969087 () Bool)

(assert (=> b!2266587 (=> (not res!969087) (not e!1451634))))

(assert (=> b!2266587 (= res!969087 (not lt!842330))))

(assert (=> b!2266587 (ruleValid!1385 thiss!16613 r!2363)))

(declare-fun lt!842331 () Unit!39904)

(assert (=> b!2266587 (= lt!842331 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!792 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2266588 () Bool)

(declare-fun tp!717181 () Bool)

(declare-fun inv!36492 (Token!8064) Bool)

(assert (=> b!2266588 (= e!1451623 (and (inv!36492 (h!32350 tokens!456)) e!1451619 tp!717181))))

(declare-fun b!2266589 () Bool)

(declare-fun tp!717182 () Bool)

(assert (=> b!2266589 (= e!1451633 (and tp!717182 (inv!36488 (tag!4783 (rule!6609 (h!32350 tokens!456)))) (inv!36491 (transformation!4293 (rule!6609 (h!32350 tokens!456)))) e!1451629))))

(declare-fun b!2266590 () Bool)

(declare-fun res!969101 () Bool)

(assert (=> b!2266590 (=> (not res!969101) (not e!1451617))))

(declare-fun isEmpty!15248 (List!27044) Bool)

(assert (=> b!2266590 (= res!969101 (not (isEmpty!15248 rules!1750)))))

(declare-fun b!2266591 () Bool)

(declare-fun matchR!2902 (Regex!6641 List!27042) Bool)

(assert (=> b!2266591 (= e!1451634 (not (matchR!2902 (regex!4293 r!2363) (list!10422 (charsOf!2681 (head!4880 tokens!456))))))))

(declare-fun b!2266592 () Bool)

(assert (=> b!2266592 (= e!1451642 e!1451630)))

(declare-fun res!969084 () Bool)

(assert (=> b!2266592 (=> res!969084 e!1451630)))

(declare-fun lt!842333 () List!27042)

(assert (=> b!2266592 (= res!969084 (> (size!21135 otherP!12) (size!21135 lt!842333)))))

(declare-datatypes ((tuple2!26598 0))(
  ( (tuple2!26599 (_1!15809 Token!8064) (_2!15809 List!27042)) )
))
(declare-fun lt!842329 () tuple2!26598)

(declare-fun lt!842336 () List!27042)

(assert (=> b!2266592 (= (_2!15809 lt!842329) lt!842336)))

(declare-fun lt!842328 () Unit!39904)

(declare-fun lemmaSamePrefixThenSameSuffix!1012 (List!27042 List!27042 List!27042 List!27042 List!27042) Unit!39904)

(assert (=> b!2266592 (= lt!842328 (lemmaSamePrefixThenSameSuffix!1012 lt!842333 (_2!15809 lt!842329) lt!842333 lt!842336 input!1722))))

(declare-fun getSuffix!1094 (List!27042 List!27042) List!27042)

(assert (=> b!2266592 (= lt!842336 (getSuffix!1094 input!1722 lt!842333))))

(declare-fun ++!6565 (List!27042 List!27042) List!27042)

(assert (=> b!2266592 (isPrefix!2283 lt!842333 (++!6565 lt!842333 (_2!15809 lt!842329)))))

(declare-fun lt!842325 () Unit!39904)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1508 (List!27042 List!27042) Unit!39904)

(assert (=> b!2266592 (= lt!842325 (lemmaConcatTwoListThenFirstIsPrefix!1508 lt!842333 (_2!15809 lt!842329)))))

(assert (=> b!2266592 (= lt!842333 (list!10422 (charsOf!2681 (h!32350 tokens!456))))))

(declare-datatypes ((Option!5271 0))(
  ( (None!5270) (Some!5270 (v!30310 tuple2!26598)) )
))
(declare-fun get!8133 (Option!5271) tuple2!26598)

(declare-fun maxPrefix!2164 (LexerInterface!3890 List!27044 List!27042) Option!5271)

(assert (=> b!2266592 (= lt!842329 (get!8133 (maxPrefix!2164 thiss!16613 rules!1750 input!1722)))))

(assert (= (and start!221400 res!969092) b!2266590))

(assert (= (and b!2266590 res!969101) b!2266570))

(assert (= (and b!2266570 res!969091) b!2266575))

(assert (= (and b!2266575 res!969093) b!2266564))

(assert (= (and b!2266564 res!969086) b!2266585))

(assert (= (and b!2266585 res!969094) b!2266581))

(assert (= (and b!2266581 (not res!969083)) b!2266560))

(assert (= (and b!2266581 res!969100) b!2266583))

(assert (= (and b!2266583 (not res!969095)) b!2266586))

(assert (= (and b!2266583 res!969085) b!2266584))

(assert (= (and b!2266584 res!969099) b!2266563))

(assert (= (and b!2266563 res!969097) b!2266587))

(assert (= (and b!2266587 res!969087) b!2266591))

(assert (= (and b!2266587 (not res!969088)) b!2266582))

(assert (= (and b!2266582 (not res!969096)) b!2266569))

(assert (= (and b!2266569 c!359929) b!2266574))

(assert (= (and b!2266569 (not c!359929)) b!2266572))

(assert (= (and b!2266569 (not res!969090)) b!2266592))

(assert (= (and b!2266592 (not res!969084)) b!2266566))

(assert (= (and b!2266566 (not res!969089)) b!2266573))

(assert (= (and b!2266573 (not res!969098)) b!2266576))

(assert (= (and start!221400 ((_ is Cons!26948) input!1722)) b!2266578))

(assert (= b!2266559 b!2266558))

(assert (= start!221400 b!2266559))

(assert (= (and start!221400 ((_ is Cons!26948) suffix!886)) b!2266571))

(assert (= (and start!221400 ((_ is Cons!26948) otherP!12)) b!2266568))

(assert (= b!2266577 b!2266562))

(assert (= b!2266561 b!2266577))

(assert (= (and start!221400 ((_ is Cons!26950) rules!1750)) b!2266561))

(assert (= b!2266580 b!2266565))

(assert (= start!221400 b!2266580))

(assert (= b!2266589 b!2266567))

(assert (= b!2266579 b!2266589))

(assert (= b!2266588 b!2266579))

(assert (= (and start!221400 ((_ is Cons!26949) tokens!456)) b!2266588))

(declare-fun m!2695779 () Bool)

(assert (=> b!2266580 m!2695779))

(declare-fun m!2695781 () Bool)

(assert (=> b!2266580 m!2695781))

(declare-fun m!2695783 () Bool)

(assert (=> b!2266574 m!2695783))

(declare-fun m!2695785 () Bool)

(assert (=> b!2266589 m!2695785))

(declare-fun m!2695787 () Bool)

(assert (=> b!2266589 m!2695787))

(declare-fun m!2695789 () Bool)

(assert (=> b!2266590 m!2695789))

(declare-fun m!2695791 () Bool)

(assert (=> b!2266591 m!2695791))

(assert (=> b!2266591 m!2695791))

(declare-fun m!2695793 () Bool)

(assert (=> b!2266591 m!2695793))

(assert (=> b!2266591 m!2695793))

(declare-fun m!2695795 () Bool)

(assert (=> b!2266591 m!2695795))

(assert (=> b!2266591 m!2695795))

(declare-fun m!2695797 () Bool)

(assert (=> b!2266591 m!2695797))

(declare-fun m!2695799 () Bool)

(assert (=> b!2266573 m!2695799))

(assert (=> b!2266560 m!2695791))

(assert (=> b!2266560 m!2695791))

(assert (=> b!2266560 m!2695793))

(assert (=> b!2266560 m!2695793))

(declare-fun m!2695801 () Bool)

(assert (=> b!2266560 m!2695801))

(declare-fun m!2695803 () Bool)

(assert (=> b!2266560 m!2695803))

(declare-fun m!2695805 () Bool)

(assert (=> b!2266575 m!2695805))

(declare-fun m!2695807 () Bool)

(assert (=> b!2266564 m!2695807))

(declare-fun m!2695809 () Bool)

(assert (=> b!2266570 m!2695809))

(declare-fun m!2695811 () Bool)

(assert (=> b!2266581 m!2695811))

(declare-fun m!2695813 () Bool)

(assert (=> b!2266577 m!2695813))

(declare-fun m!2695815 () Bool)

(assert (=> b!2266577 m!2695815))

(assert (=> b!2266586 m!2695791))

(declare-fun m!2695817 () Bool)

(assert (=> b!2266579 m!2695817))

(declare-fun m!2695819 () Bool)

(assert (=> b!2266584 m!2695819))

(declare-fun m!2695821 () Bool)

(assert (=> b!2266582 m!2695821))

(declare-fun m!2695823 () Bool)

(assert (=> b!2266582 m!2695823))

(declare-fun m!2695825 () Bool)

(assert (=> b!2266582 m!2695825))

(declare-fun m!2695827 () Bool)

(assert (=> b!2266582 m!2695827))

(declare-fun m!2695829 () Bool)

(assert (=> b!2266588 m!2695829))

(declare-fun m!2695831 () Bool)

(assert (=> b!2266585 m!2695831))

(declare-fun m!2695833 () Bool)

(assert (=> b!2266585 m!2695833))

(declare-fun m!2695835 () Bool)

(assert (=> b!2266585 m!2695835))

(assert (=> b!2266585 m!2695835))

(declare-fun m!2695837 () Bool)

(assert (=> b!2266585 m!2695837))

(declare-fun m!2695839 () Bool)

(assert (=> b!2266587 m!2695839))

(declare-fun m!2695841 () Bool)

(assert (=> b!2266587 m!2695841))

(declare-fun m!2695843 () Bool)

(assert (=> b!2266592 m!2695843))

(declare-fun m!2695845 () Bool)

(assert (=> b!2266592 m!2695845))

(declare-fun m!2695847 () Bool)

(assert (=> b!2266592 m!2695847))

(declare-fun m!2695849 () Bool)

(assert (=> b!2266592 m!2695849))

(declare-fun m!2695851 () Bool)

(assert (=> b!2266592 m!2695851))

(declare-fun m!2695853 () Bool)

(assert (=> b!2266592 m!2695853))

(declare-fun m!2695855 () Bool)

(assert (=> b!2266592 m!2695855))

(assert (=> b!2266592 m!2695853))

(assert (=> b!2266592 m!2695849))

(declare-fun m!2695857 () Bool)

(assert (=> b!2266592 m!2695857))

(declare-fun m!2695859 () Bool)

(assert (=> b!2266592 m!2695859))

(assert (=> b!2266592 m!2695847))

(declare-fun m!2695861 () Bool)

(assert (=> b!2266592 m!2695861))

(assert (=> b!2266592 m!2695803))

(declare-fun m!2695863 () Bool)

(assert (=> b!2266559 m!2695863))

(declare-fun m!2695865 () Bool)

(assert (=> b!2266559 m!2695865))

(check-sat (not b!2266564) (not b!2266586) (not b!2266592) b_and!178403 (not b_next!67923) b_and!178401 (not b!2266577) (not b!2266579) (not b!2266589) (not b_next!67927) (not b!2266573) b_and!178407 (not b_next!67931) (not b!2266575) b_and!178395 b_and!178393 (not b!2266590) (not b!2266585) (not b!2266559) (not b!2266580) (not b_next!67921) (not b_next!67925) b_and!178399 (not b!2266582) (not b!2266560) (not b!2266578) (not b!2266574) (not b!2266568) (not b!2266588) b_and!178405 (not b!2266561) (not b!2266571) (not b!2266584) (not b_next!67929) tp_is_empty!10503 (not b!2266591) b_and!178397 (not b_next!67919) (not b!2266581) (not b!2266587) (not b!2266570) (not b_next!67917))
(check-sat b_and!178393 (not b_next!67921) b_and!178403 b_and!178405 (not b_next!67923) b_and!178401 (not b_next!67929) (not b_next!67927) b_and!178407 (not b_next!67917) (not b_next!67931) b_and!178395 (not b_next!67925) b_and!178399 b_and!178397 (not b_next!67919))
