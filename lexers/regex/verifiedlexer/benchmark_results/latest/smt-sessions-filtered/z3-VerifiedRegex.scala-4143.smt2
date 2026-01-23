; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!222652 () Bool)

(assert start!222652)

(declare-fun b!2275218 () Bool)

(declare-fun b_free!67789 () Bool)

(declare-fun b_next!68493 () Bool)

(assert (=> b!2275218 (= b_free!67789 (not b_next!68493))))

(declare-fun tp!720798 () Bool)

(declare-fun b_and!179425 () Bool)

(assert (=> b!2275218 (= tp!720798 b_and!179425)))

(declare-fun b_free!67791 () Bool)

(declare-fun b_next!68495 () Bool)

(assert (=> b!2275218 (= b_free!67791 (not b_next!68495))))

(declare-fun tp!720792 () Bool)

(declare-fun b_and!179427 () Bool)

(assert (=> b!2275218 (= tp!720792 b_and!179427)))

(declare-fun b!2275219 () Bool)

(declare-fun b_free!67793 () Bool)

(declare-fun b_next!68497 () Bool)

(assert (=> b!2275219 (= b_free!67793 (not b_next!68497))))

(declare-fun tp!720796 () Bool)

(declare-fun b_and!179429 () Bool)

(assert (=> b!2275219 (= tp!720796 b_and!179429)))

(declare-fun b_free!67795 () Bool)

(declare-fun b_next!68499 () Bool)

(assert (=> b!2275219 (= b_free!67795 (not b_next!68499))))

(declare-fun tp!720785 () Bool)

(declare-fun b_and!179431 () Bool)

(assert (=> b!2275219 (= tp!720785 b_and!179431)))

(declare-fun b!2275200 () Bool)

(declare-fun b_free!67797 () Bool)

(declare-fun b_next!68501 () Bool)

(assert (=> b!2275200 (= b_free!67797 (not b_next!68501))))

(declare-fun tp!720799 () Bool)

(declare-fun b_and!179433 () Bool)

(assert (=> b!2275200 (= tp!720799 b_and!179433)))

(declare-fun b_free!67799 () Bool)

(declare-fun b_next!68503 () Bool)

(assert (=> b!2275200 (= b_free!67799 (not b_next!68503))))

(declare-fun tp!720795 () Bool)

(declare-fun b_and!179435 () Bool)

(assert (=> b!2275200 (= tp!720795 b_and!179435)))

(declare-fun b!2275201 () Bool)

(declare-fun b_free!67801 () Bool)

(declare-fun b_next!68505 () Bool)

(assert (=> b!2275201 (= b_free!67801 (not b_next!68505))))

(declare-fun tp!720784 () Bool)

(declare-fun b_and!179437 () Bool)

(assert (=> b!2275201 (= tp!720784 b_and!179437)))

(declare-fun b_free!67803 () Bool)

(declare-fun b_next!68507 () Bool)

(assert (=> b!2275201 (= b_free!67803 (not b_next!68507))))

(declare-fun tp!720786 () Bool)

(declare-fun b_and!179439 () Bool)

(assert (=> b!2275201 (= tp!720786 b_and!179439)))

(declare-fun b!2275194 () Bool)

(declare-fun e!1457353 () Bool)

(declare-fun tp_is_empty!10551 () Bool)

(declare-fun tp!720790 () Bool)

(assert (=> b!2275194 (= e!1457353 (and tp_is_empty!10551 tp!720790))))

(declare-fun b!2275195 () Bool)

(declare-fun e!1457349 () Bool)

(declare-fun tp!720791 () Bool)

(declare-fun e!1457340 () Bool)

(declare-datatypes ((List!27151 0))(
  ( (Nil!27057) (Cons!27057 (h!32458 (_ BitVec 16)) (t!202979 List!27151)) )
))
(declare-datatypes ((TokenValue!4479 0))(
  ( (FloatLiteralValue!8958 (text!31798 List!27151)) (TokenValueExt!4478 (__x!18018 Int)) (Broken!22395 (value!136828 List!27151)) (Object!4572) (End!4479) (Def!4479) (Underscore!4479) (Match!4479) (Else!4479) (Error!4479) (Case!4479) (If!4479) (Extends!4479) (Abstract!4479) (Class!4479) (Val!4479) (DelimiterValue!8958 (del!4539 List!27151)) (KeywordValue!4485 (value!136829 List!27151)) (CommentValue!8958 (value!136830 List!27151)) (WhitespaceValue!8958 (value!136831 List!27151)) (IndentationValue!4479 (value!136832 List!27151)) (String!29498) (Int32!4479) (Broken!22396 (value!136833 List!27151)) (Boolean!4480) (Unit!39997) (OperatorValue!4482 (op!4539 List!27151)) (IdentifierValue!8958 (value!136834 List!27151)) (IdentifierValue!8959 (value!136835 List!27151)) (WhitespaceValue!8959 (value!136836 List!27151)) (True!8958) (False!8958) (Broken!22397 (value!136837 List!27151)) (Broken!22398 (value!136838 List!27151)) (True!8959) (RightBrace!4479) (RightBracket!4479) (Colon!4479) (Null!4479) (Comma!4479) (LeftBracket!4479) (False!8959) (LeftBrace!4479) (ImaginaryLiteralValue!4479 (text!31799 List!27151)) (StringLiteralValue!13437 (value!136839 List!27151)) (EOFValue!4479 (value!136840 List!27151)) (IdentValue!4479 (value!136841 List!27151)) (DelimiterValue!8959 (value!136842 List!27151)) (DedentValue!4479 (value!136843 List!27151)) (NewLineValue!4479 (value!136844 List!27151)) (IntegerValue!13437 (value!136845 (_ BitVec 32)) (text!31800 List!27151)) (IntegerValue!13438 (value!136846 Int) (text!31801 List!27151)) (Times!4479) (Or!4479) (Equal!4479) (Minus!4479) (Broken!22399 (value!136847 List!27151)) (And!4479) (Div!4479) (LessEqual!4479) (Mod!4479) (Concat!11144) (Not!4479) (Plus!4479) (SpaceValue!4479 (value!136848 List!27151)) (IntegerValue!13439 (value!136849 Int) (text!31802 List!27151)) (StringLiteralValue!13438 (text!31803 List!27151)) (FloatLiteralValue!8959 (text!31804 List!27151)) (BytesLiteralValue!4479 (value!136850 List!27151)) (CommentValue!8959 (value!136851 List!27151)) (StringLiteralValue!13439 (value!136852 List!27151)) (ErrorTokenValue!4479 (msg!4540 List!27151)) )
))
(declare-datatypes ((C!13476 0))(
  ( (C!13477 (val!7786 Int)) )
))
(declare-datatypes ((List!27152 0))(
  ( (Nil!27058) (Cons!27058 (h!32459 C!13476) (t!202980 List!27152)) )
))
(declare-datatypes ((IArray!17569 0))(
  ( (IArray!17570 (innerList!8842 List!27152)) )
))
(declare-datatypes ((Conc!8782 0))(
  ( (Node!8782 (left!20529 Conc!8782) (right!20859 Conc!8782) (csize!17794 Int) (cheight!8993 Int)) (Leaf!12926 (xs!11724 IArray!17569) (csize!17795 Int)) (Empty!8782) )
))
(declare-datatypes ((BalanceConc!17292 0))(
  ( (BalanceConc!17293 (c!361142 Conc!8782)) )
))
(declare-datatypes ((TokenValueInjection!8498 0))(
  ( (TokenValueInjection!8499 (toValue!6091 Int) (toChars!5950 Int)) )
))
(declare-datatypes ((Regex!6665 0))(
  ( (ElementMatch!6665 (c!361143 C!13476)) (Concat!11145 (regOne!13842 Regex!6665) (regTwo!13842 Regex!6665)) (EmptyExpr!6665) (Star!6665 (reg!6994 Regex!6665)) (EmptyLang!6665) (Union!6665 (regOne!13843 Regex!6665) (regTwo!13843 Regex!6665)) )
))
(declare-datatypes ((String!29499 0))(
  ( (String!29500 (value!136853 String)) )
))
(declare-datatypes ((Rule!8434 0))(
  ( (Rule!8435 (regex!4317 Regex!6665) (tag!4807 String!29499) (isSeparator!4317 Bool) (transformation!4317 TokenValueInjection!8498)) )
))
(declare-datatypes ((Token!8112 0))(
  ( (Token!8113 (value!136854 TokenValue!4479) (rule!6639 Rule!8434) (size!21258 Int) (originalCharacters!5087 List!27152)) )
))
(declare-datatypes ((List!27153 0))(
  ( (Nil!27059) (Cons!27059 (h!32460 Token!8112) (t!202981 List!27153)) )
))
(declare-fun tokens!456 () List!27153)

(declare-fun inv!21 (TokenValue!4479) Bool)

(assert (=> b!2275195 (= e!1457349 (and (inv!21 (value!136854 (h!32460 tokens!456))) e!1457340 tp!720791))))

(declare-fun b!2275196 () Bool)

(declare-fun res!972444 () Bool)

(declare-fun e!1457335 () Bool)

(assert (=> b!2275196 (=> (not res!972444) (not e!1457335))))

(declare-fun e!1457358 () Bool)

(assert (=> b!2275196 (= res!972444 e!1457358)))

(declare-fun res!972456 () Bool)

(assert (=> b!2275196 (=> res!972456 e!1457358)))

(declare-fun lt!844848 () Bool)

(assert (=> b!2275196 (= res!972456 lt!844848)))

(declare-fun b!2275197 () Bool)

(declare-fun res!972454 () Bool)

(declare-fun e!1457338 () Bool)

(assert (=> b!2275197 (=> (not res!972454) (not e!1457338))))

(declare-datatypes ((List!27154 0))(
  ( (Nil!27060) (Cons!27060 (h!32461 Rule!8434) (t!202982 List!27154)) )
))
(declare-fun rules!1750 () List!27154)

(declare-fun isEmpty!15343 (List!27154) Bool)

(assert (=> b!2275197 (= res!972454 (not (isEmpty!15343 rules!1750)))))

(declare-fun b!2275198 () Bool)

(declare-fun e!1457360 () Bool)

(declare-fun tp!720787 () Bool)

(assert (=> b!2275198 (= e!1457360 (and tp_is_empty!10551 tp!720787))))

(declare-fun b!2275199 () Bool)

(declare-fun e!1457346 () Bool)

(declare-fun tp!720797 () Bool)

(assert (=> b!2275199 (= e!1457346 (and tp_is_empty!10551 tp!720797))))

(declare-fun e!1457357 () Bool)

(assert (=> b!2275200 (= e!1457357 (and tp!720799 tp!720795))))

(declare-fun e!1457348 () Bool)

(assert (=> b!2275201 (= e!1457348 (and tp!720784 tp!720786))))

(declare-fun tp!720794 () Bool)

(declare-fun b!2275202 () Bool)

(declare-fun inv!36627 (String!29499) Bool)

(declare-fun inv!36630 (TokenValueInjection!8498) Bool)

(assert (=> b!2275202 (= e!1457340 (and tp!720794 (inv!36627 (tag!4807 (rule!6639 (h!32460 tokens!456)))) (inv!36630 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) e!1457348))))

(declare-fun b!2275203 () Bool)

(declare-fun e!1457354 () Bool)

(declare-fun lt!844846 () List!27152)

(declare-fun input!1722 () List!27152)

(declare-fun isPrefix!2307 (List!27152 List!27152) Bool)

(assert (=> b!2275203 (= e!1457354 (isPrefix!2307 lt!844846 input!1722))))

(declare-fun lt!844850 () List!27152)

(declare-fun getSuffix!1098 (List!27152 List!27152) List!27152)

(assert (=> b!2275203 (= lt!844850 (getSuffix!1098 input!1722 lt!844846))))

(declare-datatypes ((tuple2!26758 0))(
  ( (tuple2!26759 (_1!15889 Token!8112) (_2!15889 List!27152)) )
))
(declare-fun lt!844849 () tuple2!26758)

(declare-fun ++!6601 (List!27152 List!27152) List!27152)

(assert (=> b!2275203 (isPrefix!2307 lt!844846 (++!6601 lt!844846 (_2!15889 lt!844849)))))

(declare-datatypes ((Unit!39998 0))(
  ( (Unit!39999) )
))
(declare-fun lt!844844 () Unit!39998)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1512 (List!27152 List!27152) Unit!39998)

(assert (=> b!2275203 (= lt!844844 (lemmaConcatTwoListThenFirstIsPrefix!1512 lt!844846 (_2!15889 lt!844849)))))

(declare-fun list!10516 (BalanceConc!17292) List!27152)

(declare-fun charsOf!2705 (Token!8112) BalanceConc!17292)

(assert (=> b!2275203 (= lt!844846 (list!10516 (charsOf!2705 (h!32460 tokens!456))))))

(declare-fun b!2275204 () Bool)

(declare-fun res!972447 () Bool)

(assert (=> b!2275204 (=> (not res!972447) (not e!1457335))))

(declare-fun otherP!12 () List!27152)

(assert (=> b!2275204 (= res!972447 (isPrefix!2307 otherP!12 input!1722))))

(declare-fun b!2275205 () Bool)

(declare-fun res!972442 () Bool)

(assert (=> b!2275205 (=> (not res!972442) (not e!1457338))))

(declare-fun r!2363 () Rule!8434)

(declare-fun contains!4685 (List!27154 Rule!8434) Bool)

(assert (=> b!2275205 (= res!972442 (contains!4685 rules!1750 r!2363))))

(declare-fun b!2275207 () Bool)

(declare-fun res!972452 () Bool)

(assert (=> b!2275207 (=> (not res!972452) (not e!1457338))))

(declare-datatypes ((LexerInterface!3914 0))(
  ( (LexerInterfaceExt!3911 (__x!18019 Int)) (Lexer!3912) )
))
(declare-fun thiss!16613 () LexerInterface!3914)

(declare-fun rulesInvariant!3416 (LexerInterface!3914 List!27154) Bool)

(assert (=> b!2275207 (= res!972452 (rulesInvariant!3416 thiss!16613 rules!1750))))

(declare-fun b!2275208 () Bool)

(declare-fun e!1457336 () Bool)

(declare-fun e!1457350 () Bool)

(declare-fun tp!720793 () Bool)

(assert (=> b!2275208 (= e!1457336 (and e!1457350 tp!720793))))

(declare-fun b!2275209 () Bool)

(declare-fun e!1457339 () Bool)

(declare-fun matchR!2922 (Regex!6665 List!27152) Bool)

(declare-fun head!4918 (List!27153) Token!8112)

(assert (=> b!2275209 (= e!1457339 (not (matchR!2922 (regex!4317 r!2363) (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(declare-fun b!2275210 () Bool)

(declare-fun res!972451 () Bool)

(declare-fun e!1457359 () Bool)

(assert (=> b!2275210 (=> res!972451 e!1457359)))

(get-info :version)

(assert (=> b!2275210 (= res!972451 ((_ is Nil!27059) tokens!456))))

(declare-fun e!1457361 () Bool)

(declare-fun b!2275211 () Bool)

(declare-fun tp!720782 () Bool)

(assert (=> b!2275211 (= e!1457350 (and tp!720782 (inv!36627 (tag!4807 (h!32461 rules!1750))) (inv!36630 (transformation!4317 (h!32461 rules!1750))) e!1457361))))

(declare-fun b!2275212 () Bool)

(assert (=> b!2275212 (= e!1457358 (= (rule!6639 (head!4918 tokens!456)) r!2363))))

(declare-fun b!2275213 () Bool)

(declare-fun e!1457343 () Bool)

(assert (=> b!2275213 (= e!1457343 e!1457359)))

(declare-fun res!972449 () Bool)

(assert (=> b!2275213 (=> res!972449 e!1457359)))

(declare-fun otherR!12 () Rule!8434)

(declare-fun getIndex!330 (List!27154 Rule!8434) Int)

(assert (=> b!2275213 (= res!972449 (<= (getIndex!330 rules!1750 r!2363) (getIndex!330 rules!1750 otherR!12)))))

(declare-fun ruleValid!1407 (LexerInterface!3914 Rule!8434) Bool)

(assert (=> b!2275213 (ruleValid!1407 thiss!16613 otherR!12)))

(declare-fun lt!844843 () Unit!39998)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!812 (LexerInterface!3914 Rule!8434 List!27154) Unit!39998)

(assert (=> b!2275213 (= lt!844843 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!812 thiss!16613 otherR!12 rules!1750))))

(declare-fun tp!720788 () Bool)

(declare-fun e!1457345 () Bool)

(declare-fun b!2275214 () Bool)

(assert (=> b!2275214 (= e!1457345 (and tp!720788 (inv!36627 (tag!4807 r!2363)) (inv!36630 (transformation!4317 r!2363)) e!1457357))))

(declare-fun b!2275215 () Bool)

(declare-fun tp!720789 () Bool)

(declare-fun e!1457341 () Bool)

(declare-fun inv!36631 (Token!8112) Bool)

(assert (=> b!2275215 (= e!1457341 (and (inv!36631 (h!32460 tokens!456)) e!1457349 tp!720789))))

(declare-fun b!2275216 () Bool)

(declare-fun e!1457352 () Bool)

(declare-fun e!1457356 () Bool)

(declare-fun tp!720783 () Bool)

(assert (=> b!2275216 (= e!1457356 (and tp!720783 (inv!36627 (tag!4807 otherR!12)) (inv!36630 (transformation!4317 otherR!12)) e!1457352))))

(declare-fun b!2275217 () Bool)

(declare-fun res!972445 () Bool)

(assert (=> b!2275217 (=> (not res!972445) (not e!1457338))))

(assert (=> b!2275217 (= res!972445 (contains!4685 rules!1750 otherR!12))))

(assert (=> b!2275218 (= e!1457352 (and tp!720798 tp!720792))))

(assert (=> b!2275219 (= e!1457361 (and tp!720796 tp!720785))))

(declare-fun b!2275220 () Bool)

(declare-fun e!1457337 () Bool)

(declare-fun size!21259 (BalanceConc!17292) Int)

(declare-fun size!21260 (List!27152) Int)

(assert (=> b!2275220 (= e!1457337 (<= (size!21259 (charsOf!2705 (head!4918 tokens!456))) (size!21260 otherP!12)))))

(declare-fun b!2275221 () Bool)

(declare-fun res!972450 () Bool)

(assert (=> b!2275221 (=> (not res!972450) (not e!1457335))))

(assert (=> b!2275221 (= res!972450 (not (= r!2363 otherR!12)))))

(declare-fun b!2275222 () Bool)

(declare-fun e!1457334 () Bool)

(assert (=> b!2275222 (= e!1457338 e!1457334)))

(declare-fun res!972448 () Bool)

(assert (=> b!2275222 (=> (not res!972448) (not e!1457334))))

(declare-datatypes ((IArray!17571 0))(
  ( (IArray!17572 (innerList!8843 List!27153)) )
))
(declare-datatypes ((Conc!8783 0))(
  ( (Node!8783 (left!20530 Conc!8783) (right!20860 Conc!8783) (csize!17796 Int) (cheight!8994 Int)) (Leaf!12927 (xs!11725 IArray!17571) (csize!17797 Int)) (Empty!8783) )
))
(declare-datatypes ((BalanceConc!17294 0))(
  ( (BalanceConc!17295 (c!361144 Conc!8783)) )
))
(declare-datatypes ((tuple2!26760 0))(
  ( (tuple2!26761 (_1!15890 BalanceConc!17294) (_2!15890 BalanceConc!17292)) )
))
(declare-fun lt!844847 () tuple2!26760)

(declare-fun suffix!886 () List!27152)

(declare-datatypes ((tuple2!26762 0))(
  ( (tuple2!26763 (_1!15891 List!27153) (_2!15891 List!27152)) )
))
(declare-fun list!10517 (BalanceConc!17294) List!27153)

(assert (=> b!2275222 (= res!972448 (= (tuple2!26763 (list!10517 (_1!15890 lt!844847)) (list!10516 (_2!15890 lt!844847))) (tuple2!26763 tokens!456 suffix!886)))))

(declare-fun lex!1753 (LexerInterface!3914 List!27154 BalanceConc!17292) tuple2!26760)

(declare-fun seqFromList!3021 (List!27152) BalanceConc!17292)

(assert (=> b!2275222 (= lt!844847 (lex!1753 thiss!16613 rules!1750 (seqFromList!3021 input!1722)))))

(declare-fun b!2275223 () Bool)

(assert (=> b!2275223 (= e!1457335 (not e!1457343))))

(declare-fun res!972455 () Bool)

(assert (=> b!2275223 (=> res!972455 e!1457343)))

(assert (=> b!2275223 (= res!972455 e!1457339)))

(declare-fun res!972441 () Bool)

(assert (=> b!2275223 (=> (not res!972441) (not e!1457339))))

(assert (=> b!2275223 (= res!972441 (not lt!844848))))

(assert (=> b!2275223 (ruleValid!1407 thiss!16613 r!2363)))

(declare-fun lt!844845 () Unit!39998)

(assert (=> b!2275223 (= lt!844845 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!812 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2275224 () Bool)

(assert (=> b!2275224 (= e!1457334 e!1457335)))

(declare-fun res!972440 () Bool)

(assert (=> b!2275224 (=> (not res!972440) (not e!1457335))))

(assert (=> b!2275224 (= res!972440 e!1457337)))

(declare-fun res!972453 () Bool)

(assert (=> b!2275224 (=> res!972453 e!1457337)))

(assert (=> b!2275224 (= res!972453 lt!844848)))

(declare-fun isEmpty!15344 (List!27153) Bool)

(assert (=> b!2275224 (= lt!844848 (isEmpty!15344 tokens!456))))

(declare-fun res!972443 () Bool)

(assert (=> start!222652 (=> (not res!972443) (not e!1457338))))

(assert (=> start!222652 (= res!972443 ((_ is Lexer!3912) thiss!16613))))

(assert (=> start!222652 e!1457338))

(assert (=> start!222652 true))

(assert (=> start!222652 e!1457346))

(assert (=> start!222652 e!1457356))

(assert (=> start!222652 e!1457360))

(assert (=> start!222652 e!1457353))

(assert (=> start!222652 e!1457336))

(assert (=> start!222652 e!1457345))

(assert (=> start!222652 e!1457341))

(declare-fun b!2275206 () Bool)

(assert (=> b!2275206 (= e!1457359 e!1457354)))

(declare-fun res!972446 () Bool)

(assert (=> b!2275206 (=> res!972446 e!1457354)))

(assert (=> b!2275206 (= res!972446 (not (= (h!32460 tokens!456) (_1!15889 lt!844849))))))

(declare-datatypes ((Option!5299 0))(
  ( (None!5298) (Some!5298 (v!30352 tuple2!26758)) )
))
(declare-fun get!8155 (Option!5299) tuple2!26758)

(declare-fun maxPrefix!2178 (LexerInterface!3914 List!27154 List!27152) Option!5299)

(assert (=> b!2275206 (= lt!844849 (get!8155 (maxPrefix!2178 thiss!16613 rules!1750 input!1722)))))

(assert (= (and start!222652 res!972443) b!2275197))

(assert (= (and b!2275197 res!972454) b!2275207))

(assert (= (and b!2275207 res!972452) b!2275205))

(assert (= (and b!2275205 res!972442) b!2275217))

(assert (= (and b!2275217 res!972445) b!2275222))

(assert (= (and b!2275222 res!972448) b!2275224))

(assert (= (and b!2275224 (not res!972453)) b!2275220))

(assert (= (and b!2275224 res!972440) b!2275196))

(assert (= (and b!2275196 (not res!972456)) b!2275212))

(assert (= (and b!2275196 res!972444) b!2275204))

(assert (= (and b!2275204 res!972447) b!2275221))

(assert (= (and b!2275221 res!972450) b!2275223))

(assert (= (and b!2275223 res!972441) b!2275209))

(assert (= (and b!2275223 (not res!972455)) b!2275213))

(assert (= (and b!2275213 (not res!972449)) b!2275210))

(assert (= (and b!2275210 (not res!972451)) b!2275206))

(assert (= (and b!2275206 (not res!972446)) b!2275203))

(assert (= (and start!222652 ((_ is Cons!27058) input!1722)) b!2275199))

(assert (= b!2275216 b!2275218))

(assert (= start!222652 b!2275216))

(assert (= (and start!222652 ((_ is Cons!27058) suffix!886)) b!2275198))

(assert (= (and start!222652 ((_ is Cons!27058) otherP!12)) b!2275194))

(assert (= b!2275211 b!2275219))

(assert (= b!2275208 b!2275211))

(assert (= (and start!222652 ((_ is Cons!27060) rules!1750)) b!2275208))

(assert (= b!2275214 b!2275200))

(assert (= start!222652 b!2275214))

(assert (= b!2275202 b!2275201))

(assert (= b!2275195 b!2275202))

(assert (= b!2275215 b!2275195))

(assert (= (and start!222652 ((_ is Cons!27059) tokens!456)) b!2275215))

(declare-fun m!2703425 () Bool)

(assert (=> b!2275222 m!2703425))

(declare-fun m!2703427 () Bool)

(assert (=> b!2275222 m!2703427))

(declare-fun m!2703429 () Bool)

(assert (=> b!2275222 m!2703429))

(assert (=> b!2275222 m!2703429))

(declare-fun m!2703431 () Bool)

(assert (=> b!2275222 m!2703431))

(declare-fun m!2703433 () Bool)

(assert (=> b!2275209 m!2703433))

(assert (=> b!2275209 m!2703433))

(declare-fun m!2703435 () Bool)

(assert (=> b!2275209 m!2703435))

(assert (=> b!2275209 m!2703435))

(declare-fun m!2703437 () Bool)

(assert (=> b!2275209 m!2703437))

(assert (=> b!2275209 m!2703437))

(declare-fun m!2703439 () Bool)

(assert (=> b!2275209 m!2703439))

(declare-fun m!2703441 () Bool)

(assert (=> b!2275211 m!2703441))

(declare-fun m!2703443 () Bool)

(assert (=> b!2275211 m!2703443))

(declare-fun m!2703445 () Bool)

(assert (=> b!2275213 m!2703445))

(declare-fun m!2703447 () Bool)

(assert (=> b!2275213 m!2703447))

(declare-fun m!2703449 () Bool)

(assert (=> b!2275213 m!2703449))

(declare-fun m!2703451 () Bool)

(assert (=> b!2275213 m!2703451))

(declare-fun m!2703453 () Bool)

(assert (=> b!2275215 m!2703453))

(declare-fun m!2703455 () Bool)

(assert (=> b!2275207 m!2703455))

(declare-fun m!2703457 () Bool)

(assert (=> b!2275197 m!2703457))

(declare-fun m!2703459 () Bool)

(assert (=> b!2275203 m!2703459))

(declare-fun m!2703461 () Bool)

(assert (=> b!2275203 m!2703461))

(declare-fun m!2703463 () Bool)

(assert (=> b!2275203 m!2703463))

(declare-fun m!2703465 () Bool)

(assert (=> b!2275203 m!2703465))

(declare-fun m!2703467 () Bool)

(assert (=> b!2275203 m!2703467))

(declare-fun m!2703469 () Bool)

(assert (=> b!2275203 m!2703469))

(assert (=> b!2275203 m!2703461))

(declare-fun m!2703471 () Bool)

(assert (=> b!2275203 m!2703471))

(assert (=> b!2275203 m!2703467))

(declare-fun m!2703473 () Bool)

(assert (=> b!2275204 m!2703473))

(declare-fun m!2703475 () Bool)

(assert (=> b!2275202 m!2703475))

(declare-fun m!2703477 () Bool)

(assert (=> b!2275202 m!2703477))

(declare-fun m!2703479 () Bool)

(assert (=> b!2275224 m!2703479))

(declare-fun m!2703481 () Bool)

(assert (=> b!2275206 m!2703481))

(assert (=> b!2275206 m!2703481))

(declare-fun m!2703483 () Bool)

(assert (=> b!2275206 m!2703483))

(declare-fun m!2703485 () Bool)

(assert (=> b!2275217 m!2703485))

(declare-fun m!2703487 () Bool)

(assert (=> b!2275214 m!2703487))

(declare-fun m!2703489 () Bool)

(assert (=> b!2275214 m!2703489))

(declare-fun m!2703491 () Bool)

(assert (=> b!2275205 m!2703491))

(assert (=> b!2275212 m!2703433))

(declare-fun m!2703493 () Bool)

(assert (=> b!2275216 m!2703493))

(declare-fun m!2703495 () Bool)

(assert (=> b!2275216 m!2703495))

(assert (=> b!2275220 m!2703433))

(assert (=> b!2275220 m!2703433))

(assert (=> b!2275220 m!2703435))

(assert (=> b!2275220 m!2703435))

(declare-fun m!2703497 () Bool)

(assert (=> b!2275220 m!2703497))

(declare-fun m!2703499 () Bool)

(assert (=> b!2275220 m!2703499))

(declare-fun m!2703501 () Bool)

(assert (=> b!2275223 m!2703501))

(declare-fun m!2703503 () Bool)

(assert (=> b!2275223 m!2703503))

(declare-fun m!2703505 () Bool)

(assert (=> b!2275195 m!2703505))

(check-sat (not b!2275202) (not b!2275220) (not b!2275204) (not b_next!68497) (not b!2275197) b_and!179435 (not b_next!68501) (not b!2275205) b_and!179425 (not b!2275214) (not b_next!68499) (not b!2275224) tp_is_empty!10551 (not b!2275207) b_and!179437 (not b!2275195) (not b!2275206) (not b_next!68495) (not b_next!68493) (not b!2275217) (not b!2275198) (not b!2275203) b_and!179439 (not b!2275215) b_and!179427 (not b!2275211) (not b!2275212) (not b!2275208) (not b!2275223) b_and!179431 (not b!2275222) (not b!2275199) (not b_next!68507) (not b!2275213) (not b!2275194) (not b_next!68505) (not b_next!68503) b_and!179429 b_and!179433 (not b!2275216) (not b!2275209))
(check-sat b_and!179437 (not b_next!68495) (not b_next!68493) b_and!179439 b_and!179427 (not b_next!68497) b_and!179431 b_and!179435 (not b_next!68501) b_and!179425 (not b_next!68507) (not b_next!68499) (not b_next!68505) (not b_next!68503) b_and!179429 b_and!179433)
(get-model)

(declare-fun d!673400 () Bool)

(declare-fun lt!844853 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3609 (List!27154) (InoxSet Rule!8434))

(assert (=> d!673400 (= lt!844853 (select (content!3609 rules!1750) otherR!12))))

(declare-fun e!1457366 () Bool)

(assert (=> d!673400 (= lt!844853 e!1457366)))

(declare-fun res!972467 () Bool)

(assert (=> d!673400 (=> (not res!972467) (not e!1457366))))

(assert (=> d!673400 (= res!972467 ((_ is Cons!27060) rules!1750))))

(assert (=> d!673400 (= (contains!4685 rules!1750 otherR!12) lt!844853)))

(declare-fun b!2275229 () Bool)

(declare-fun e!1457367 () Bool)

(assert (=> b!2275229 (= e!1457366 e!1457367)))

(declare-fun res!972468 () Bool)

(assert (=> b!2275229 (=> res!972468 e!1457367)))

(assert (=> b!2275229 (= res!972468 (= (h!32461 rules!1750) otherR!12))))

(declare-fun b!2275230 () Bool)

(assert (=> b!2275230 (= e!1457367 (contains!4685 (t!202982 rules!1750) otherR!12))))

(assert (= (and d!673400 res!972467) b!2275229))

(assert (= (and b!2275229 (not res!972468)) b!2275230))

(declare-fun m!2703507 () Bool)

(assert (=> d!673400 m!2703507))

(declare-fun m!2703509 () Bool)

(assert (=> d!673400 m!2703509))

(declare-fun m!2703511 () Bool)

(assert (=> b!2275230 m!2703511))

(assert (=> b!2275217 d!673400))

(declare-fun d!673402 () Bool)

(assert (=> d!673402 (= (get!8155 (maxPrefix!2178 thiss!16613 rules!1750 input!1722)) (v!30352 (maxPrefix!2178 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2275206 d!673402))

(declare-fun b!2275312 () Bool)

(declare-fun e!1457414 () Option!5299)

(declare-fun lt!844880 () Option!5299)

(declare-fun lt!844881 () Option!5299)

(assert (=> b!2275312 (= e!1457414 (ite (and ((_ is None!5298) lt!844880) ((_ is None!5298) lt!844881)) None!5298 (ite ((_ is None!5298) lt!844881) lt!844880 (ite ((_ is None!5298) lt!844880) lt!844881 (ite (>= (size!21258 (_1!15889 (v!30352 lt!844880))) (size!21258 (_1!15889 (v!30352 lt!844881)))) lt!844880 lt!844881)))))))

(declare-fun call!136259 () Option!5299)

(assert (=> b!2275312 (= lt!844880 call!136259)))

(assert (=> b!2275312 (= lt!844881 (maxPrefix!2178 thiss!16613 (t!202982 rules!1750) input!1722))))

(declare-fun b!2275313 () Bool)

(declare-fun res!972523 () Bool)

(declare-fun e!1457413 () Bool)

(assert (=> b!2275313 (=> (not res!972523) (not e!1457413))))

(declare-fun lt!844883 () Option!5299)

(declare-fun apply!6600 (TokenValueInjection!8498 BalanceConc!17292) TokenValue!4479)

(assert (=> b!2275313 (= res!972523 (= (value!136854 (_1!15889 (get!8155 lt!844883))) (apply!6600 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))) (seqFromList!3021 (originalCharacters!5087 (_1!15889 (get!8155 lt!844883)))))))))

(declare-fun b!2275314 () Bool)

(assert (=> b!2275314 (= e!1457413 (contains!4685 rules!1750 (rule!6639 (_1!15889 (get!8155 lt!844883)))))))

(declare-fun b!2275315 () Bool)

(declare-fun res!972524 () Bool)

(assert (=> b!2275315 (=> (not res!972524) (not e!1457413))))

(assert (=> b!2275315 (= res!972524 (matchR!2922 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))) (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))))))

(declare-fun b!2275316 () Bool)

(declare-fun res!972522 () Bool)

(assert (=> b!2275316 (=> (not res!972522) (not e!1457413))))

(assert (=> b!2275316 (= res!972522 (= (++!6601 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))) (_2!15889 (get!8155 lt!844883))) input!1722))))

(declare-fun b!2275317 () Bool)

(assert (=> b!2275317 (= e!1457414 call!136259)))

(declare-fun d!673404 () Bool)

(declare-fun e!1457415 () Bool)

(assert (=> d!673404 e!1457415))

(declare-fun res!972525 () Bool)

(assert (=> d!673404 (=> res!972525 e!1457415)))

(declare-fun isEmpty!15347 (Option!5299) Bool)

(assert (=> d!673404 (= res!972525 (isEmpty!15347 lt!844883))))

(assert (=> d!673404 (= lt!844883 e!1457414)))

(declare-fun c!361159 () Bool)

(assert (=> d!673404 (= c!361159 (and ((_ is Cons!27060) rules!1750) ((_ is Nil!27060) (t!202982 rules!1750))))))

(declare-fun lt!844882 () Unit!39998)

(declare-fun lt!844884 () Unit!39998)

(assert (=> d!673404 (= lt!844882 lt!844884)))

(assert (=> d!673404 (isPrefix!2307 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1468 (List!27152 List!27152) Unit!39998)

(assert (=> d!673404 (= lt!844884 (lemmaIsPrefixRefl!1468 input!1722 input!1722))))

(declare-fun rulesValidInductive!1510 (LexerInterface!3914 List!27154) Bool)

(assert (=> d!673404 (rulesValidInductive!1510 thiss!16613 rules!1750)))

(assert (=> d!673404 (= (maxPrefix!2178 thiss!16613 rules!1750 input!1722) lt!844883)))

(declare-fun b!2275318 () Bool)

(declare-fun res!972526 () Bool)

(assert (=> b!2275318 (=> (not res!972526) (not e!1457413))))

(assert (=> b!2275318 (= res!972526 (< (size!21260 (_2!15889 (get!8155 lt!844883))) (size!21260 input!1722)))))

(declare-fun b!2275319 () Bool)

(assert (=> b!2275319 (= e!1457415 e!1457413)))

(declare-fun res!972527 () Bool)

(assert (=> b!2275319 (=> (not res!972527) (not e!1457413))))

(declare-fun isDefined!4205 (Option!5299) Bool)

(assert (=> b!2275319 (= res!972527 (isDefined!4205 lt!844883))))

(declare-fun b!2275320 () Bool)

(declare-fun res!972528 () Bool)

(assert (=> b!2275320 (=> (not res!972528) (not e!1457413))))

(assert (=> b!2275320 (= res!972528 (= (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))) (originalCharacters!5087 (_1!15889 (get!8155 lt!844883)))))))

(declare-fun bm!136254 () Bool)

(declare-fun maxPrefixOneRule!1363 (LexerInterface!3914 Rule!8434 List!27152) Option!5299)

(assert (=> bm!136254 (= call!136259 (maxPrefixOneRule!1363 thiss!16613 (h!32461 rules!1750) input!1722))))

(assert (= (and d!673404 c!361159) b!2275317))

(assert (= (and d!673404 (not c!361159)) b!2275312))

(assert (= (or b!2275317 b!2275312) bm!136254))

(assert (= (and d!673404 (not res!972525)) b!2275319))

(assert (= (and b!2275319 res!972527) b!2275320))

(assert (= (and b!2275320 res!972528) b!2275318))

(assert (= (and b!2275318 res!972526) b!2275316))

(assert (= (and b!2275316 res!972522) b!2275313))

(assert (= (and b!2275313 res!972523) b!2275315))

(assert (= (and b!2275315 res!972524) b!2275314))

(declare-fun m!2703583 () Bool)

(assert (=> b!2275319 m!2703583))

(declare-fun m!2703585 () Bool)

(assert (=> b!2275314 m!2703585))

(declare-fun m!2703587 () Bool)

(assert (=> b!2275314 m!2703587))

(assert (=> b!2275313 m!2703585))

(declare-fun m!2703589 () Bool)

(assert (=> b!2275313 m!2703589))

(assert (=> b!2275313 m!2703589))

(declare-fun m!2703591 () Bool)

(assert (=> b!2275313 m!2703591))

(assert (=> b!2275316 m!2703585))

(declare-fun m!2703593 () Bool)

(assert (=> b!2275316 m!2703593))

(assert (=> b!2275316 m!2703593))

(declare-fun m!2703595 () Bool)

(assert (=> b!2275316 m!2703595))

(assert (=> b!2275316 m!2703595))

(declare-fun m!2703597 () Bool)

(assert (=> b!2275316 m!2703597))

(assert (=> b!2275315 m!2703585))

(assert (=> b!2275315 m!2703593))

(assert (=> b!2275315 m!2703593))

(assert (=> b!2275315 m!2703595))

(assert (=> b!2275315 m!2703595))

(declare-fun m!2703599 () Bool)

(assert (=> b!2275315 m!2703599))

(declare-fun m!2703601 () Bool)

(assert (=> bm!136254 m!2703601))

(assert (=> b!2275318 m!2703585))

(declare-fun m!2703603 () Bool)

(assert (=> b!2275318 m!2703603))

(declare-fun m!2703605 () Bool)

(assert (=> b!2275318 m!2703605))

(assert (=> b!2275320 m!2703585))

(assert (=> b!2275320 m!2703593))

(assert (=> b!2275320 m!2703593))

(assert (=> b!2275320 m!2703595))

(declare-fun m!2703607 () Bool)

(assert (=> b!2275312 m!2703607))

(declare-fun m!2703609 () Bool)

(assert (=> d!673404 m!2703609))

(declare-fun m!2703611 () Bool)

(assert (=> d!673404 m!2703611))

(declare-fun m!2703613 () Bool)

(assert (=> d!673404 m!2703613))

(declare-fun m!2703615 () Bool)

(assert (=> d!673404 m!2703615))

(assert (=> b!2275206 d!673404))

(declare-fun d!673436 () Bool)

(declare-fun res!972531 () Bool)

(declare-fun e!1457418 () Bool)

(assert (=> d!673436 (=> (not res!972531) (not e!1457418))))

(declare-fun rulesValid!1585 (LexerInterface!3914 List!27154) Bool)

(assert (=> d!673436 (= res!972531 (rulesValid!1585 thiss!16613 rules!1750))))

(assert (=> d!673436 (= (rulesInvariant!3416 thiss!16613 rules!1750) e!1457418)))

(declare-fun b!2275323 () Bool)

(declare-datatypes ((List!27155 0))(
  ( (Nil!27061) (Cons!27061 (h!32462 String!29499) (t!203031 List!27155)) )
))
(declare-fun noDuplicateTag!1583 (LexerInterface!3914 List!27154 List!27155) Bool)

(assert (=> b!2275323 (= e!1457418 (noDuplicateTag!1583 thiss!16613 rules!1750 Nil!27061))))

(assert (= (and d!673436 res!972531) b!2275323))

(declare-fun m!2703617 () Bool)

(assert (=> d!673436 m!2703617))

(declare-fun m!2703619 () Bool)

(assert (=> b!2275323 m!2703619))

(assert (=> b!2275207 d!673436))

(declare-fun d!673438 () Bool)

(declare-fun lt!844885 () Bool)

(assert (=> d!673438 (= lt!844885 (select (content!3609 rules!1750) r!2363))))

(declare-fun e!1457419 () Bool)

(assert (=> d!673438 (= lt!844885 e!1457419)))

(declare-fun res!972532 () Bool)

(assert (=> d!673438 (=> (not res!972532) (not e!1457419))))

(assert (=> d!673438 (= res!972532 ((_ is Cons!27060) rules!1750))))

(assert (=> d!673438 (= (contains!4685 rules!1750 r!2363) lt!844885)))

(declare-fun b!2275324 () Bool)

(declare-fun e!1457420 () Bool)

(assert (=> b!2275324 (= e!1457419 e!1457420)))

(declare-fun res!972533 () Bool)

(assert (=> b!2275324 (=> res!972533 e!1457420)))

(assert (=> b!2275324 (= res!972533 (= (h!32461 rules!1750) r!2363))))

(declare-fun b!2275325 () Bool)

(assert (=> b!2275325 (= e!1457420 (contains!4685 (t!202982 rules!1750) r!2363))))

(assert (= (and d!673438 res!972532) b!2275324))

(assert (= (and b!2275324 (not res!972533)) b!2275325))

(assert (=> d!673438 m!2703507))

(declare-fun m!2703621 () Bool)

(assert (=> d!673438 m!2703621))

(declare-fun m!2703623 () Bool)

(assert (=> b!2275325 m!2703623))

(assert (=> b!2275205 d!673438))

(declare-fun b!2275336 () Bool)

(declare-fun e!1457427 () Bool)

(declare-fun inv!15 (TokenValue!4479) Bool)

(assert (=> b!2275336 (= e!1457427 (inv!15 (value!136854 (h!32460 tokens!456))))))

(declare-fun b!2275337 () Bool)

(declare-fun e!1457428 () Bool)

(declare-fun inv!17 (TokenValue!4479) Bool)

(assert (=> b!2275337 (= e!1457428 (inv!17 (value!136854 (h!32460 tokens!456))))))

(declare-fun d!673440 () Bool)

(declare-fun c!361165 () Bool)

(assert (=> d!673440 (= c!361165 ((_ is IntegerValue!13437) (value!136854 (h!32460 tokens!456))))))

(declare-fun e!1457429 () Bool)

(assert (=> d!673440 (= (inv!21 (value!136854 (h!32460 tokens!456))) e!1457429)))

(declare-fun b!2275338 () Bool)

(declare-fun res!972536 () Bool)

(assert (=> b!2275338 (=> res!972536 e!1457427)))

(assert (=> b!2275338 (= res!972536 (not ((_ is IntegerValue!13439) (value!136854 (h!32460 tokens!456)))))))

(assert (=> b!2275338 (= e!1457428 e!1457427)))

(declare-fun b!2275339 () Bool)

(declare-fun inv!16 (TokenValue!4479) Bool)

(assert (=> b!2275339 (= e!1457429 (inv!16 (value!136854 (h!32460 tokens!456))))))

(declare-fun b!2275340 () Bool)

(assert (=> b!2275340 (= e!1457429 e!1457428)))

(declare-fun c!361164 () Bool)

(assert (=> b!2275340 (= c!361164 ((_ is IntegerValue!13438) (value!136854 (h!32460 tokens!456))))))

(assert (= (and d!673440 c!361165) b!2275339))

(assert (= (and d!673440 (not c!361165)) b!2275340))

(assert (= (and b!2275340 c!361164) b!2275337))

(assert (= (and b!2275340 (not c!361164)) b!2275338))

(assert (= (and b!2275338 (not res!972536)) b!2275336))

(declare-fun m!2703625 () Bool)

(assert (=> b!2275336 m!2703625))

(declare-fun m!2703627 () Bool)

(assert (=> b!2275337 m!2703627))

(declare-fun m!2703629 () Bool)

(assert (=> b!2275339 m!2703629))

(assert (=> b!2275195 d!673440))

(declare-fun d!673442 () Bool)

(assert (=> d!673442 (= (inv!36627 (tag!4807 otherR!12)) (= (mod (str.len (value!136853 (tag!4807 otherR!12))) 2) 0))))

(assert (=> b!2275216 d!673442))

(declare-fun d!673444 () Bool)

(declare-fun res!972539 () Bool)

(declare-fun e!1457432 () Bool)

(assert (=> d!673444 (=> (not res!972539) (not e!1457432))))

(declare-fun semiInverseModEq!1742 (Int Int) Bool)

(assert (=> d!673444 (= res!972539 (semiInverseModEq!1742 (toChars!5950 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 otherR!12))))))

(assert (=> d!673444 (= (inv!36630 (transformation!4317 otherR!12)) e!1457432)))

(declare-fun b!2275343 () Bool)

(declare-fun equivClasses!1661 (Int Int) Bool)

(assert (=> b!2275343 (= e!1457432 (equivClasses!1661 (toChars!5950 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 otherR!12))))))

(assert (= (and d!673444 res!972539) b!2275343))

(declare-fun m!2703631 () Bool)

(assert (=> d!673444 m!2703631))

(declare-fun m!2703633 () Bool)

(assert (=> b!2275343 m!2703633))

(assert (=> b!2275216 d!673444))

(declare-fun d!673446 () Bool)

(assert (=> d!673446 (= (inv!36627 (tag!4807 r!2363)) (= (mod (str.len (value!136853 (tag!4807 r!2363))) 2) 0))))

(assert (=> b!2275214 d!673446))

(declare-fun d!673448 () Bool)

(declare-fun res!972540 () Bool)

(declare-fun e!1457433 () Bool)

(assert (=> d!673448 (=> (not res!972540) (not e!1457433))))

(assert (=> d!673448 (= res!972540 (semiInverseModEq!1742 (toChars!5950 (transformation!4317 r!2363)) (toValue!6091 (transformation!4317 r!2363))))))

(assert (=> d!673448 (= (inv!36630 (transformation!4317 r!2363)) e!1457433)))

(declare-fun b!2275344 () Bool)

(assert (=> b!2275344 (= e!1457433 (equivClasses!1661 (toChars!5950 (transformation!4317 r!2363)) (toValue!6091 (transformation!4317 r!2363))))))

(assert (= (and d!673448 res!972540) b!2275344))

(declare-fun m!2703635 () Bool)

(assert (=> d!673448 m!2703635))

(declare-fun m!2703637 () Bool)

(assert (=> b!2275344 m!2703637))

(assert (=> b!2275214 d!673448))

(declare-fun d!673450 () Bool)

(declare-fun res!972545 () Bool)

(declare-fun e!1457436 () Bool)

(assert (=> d!673450 (=> (not res!972545) (not e!1457436))))

(declare-fun isEmpty!15348 (List!27152) Bool)

(assert (=> d!673450 (= res!972545 (not (isEmpty!15348 (originalCharacters!5087 (h!32460 tokens!456)))))))

(assert (=> d!673450 (= (inv!36631 (h!32460 tokens!456)) e!1457436)))

(declare-fun b!2275349 () Bool)

(declare-fun res!972546 () Bool)

(assert (=> b!2275349 (=> (not res!972546) (not e!1457436))))

(declare-fun dynLambda!11743 (Int TokenValue!4479) BalanceConc!17292)

(assert (=> b!2275349 (= res!972546 (= (originalCharacters!5087 (h!32460 tokens!456)) (list!10516 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))))))

(declare-fun b!2275350 () Bool)

(assert (=> b!2275350 (= e!1457436 (= (size!21258 (h!32460 tokens!456)) (size!21260 (originalCharacters!5087 (h!32460 tokens!456)))))))

(assert (= (and d!673450 res!972545) b!2275349))

(assert (= (and b!2275349 res!972546) b!2275350))

(declare-fun b_lambda!72465 () Bool)

(assert (=> (not b_lambda!72465) (not b!2275349)))

(declare-fun tb!135111 () Bool)

(declare-fun t!202992 () Bool)

(assert (=> (and b!2275218 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!202992) tb!135111))

(declare-fun b!2275355 () Bool)

(declare-fun e!1457439 () Bool)

(declare-fun tp!720805 () Bool)

(declare-fun inv!36634 (Conc!8782) Bool)

(assert (=> b!2275355 (= e!1457439 (and (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))) tp!720805))))

(declare-fun result!164740 () Bool)

(declare-fun inv!36635 (BalanceConc!17292) Bool)

(assert (=> tb!135111 (= result!164740 (and (inv!36635 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))) e!1457439))))

(assert (= tb!135111 b!2275355))

(declare-fun m!2703639 () Bool)

(assert (=> b!2275355 m!2703639))

(declare-fun m!2703641 () Bool)

(assert (=> tb!135111 m!2703641))

(assert (=> b!2275349 t!202992))

(declare-fun b_and!179457 () Bool)

(assert (= b_and!179427 (and (=> t!202992 result!164740) b_and!179457)))

(declare-fun t!202994 () Bool)

(declare-fun tb!135113 () Bool)

(assert (=> (and b!2275219 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!202994) tb!135113))

(declare-fun result!164744 () Bool)

(assert (= result!164744 result!164740))

(assert (=> b!2275349 t!202994))

(declare-fun b_and!179459 () Bool)

(assert (= b_and!179431 (and (=> t!202994 result!164744) b_and!179459)))

(declare-fun t!202996 () Bool)

(declare-fun tb!135115 () Bool)

(assert (=> (and b!2275200 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!202996) tb!135115))

(declare-fun result!164746 () Bool)

(assert (= result!164746 result!164740))

(assert (=> b!2275349 t!202996))

(declare-fun b_and!179461 () Bool)

(assert (= b_and!179435 (and (=> t!202996 result!164746) b_and!179461)))

(declare-fun t!202998 () Bool)

(declare-fun tb!135117 () Bool)

(assert (=> (and b!2275201 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!202998) tb!135117))

(declare-fun result!164748 () Bool)

(assert (= result!164748 result!164740))

(assert (=> b!2275349 t!202998))

(declare-fun b_and!179463 () Bool)

(assert (= b_and!179439 (and (=> t!202998 result!164748) b_and!179463)))

(declare-fun m!2703643 () Bool)

(assert (=> d!673450 m!2703643))

(declare-fun m!2703645 () Bool)

(assert (=> b!2275349 m!2703645))

(assert (=> b!2275349 m!2703645))

(declare-fun m!2703647 () Bool)

(assert (=> b!2275349 m!2703647))

(declare-fun m!2703649 () Bool)

(assert (=> b!2275350 m!2703649))

(assert (=> b!2275215 d!673450))

(declare-fun d!673452 () Bool)

(declare-fun e!1457446 () Bool)

(assert (=> d!673452 e!1457446))

(declare-fun res!972557 () Bool)

(assert (=> d!673452 (=> res!972557 e!1457446)))

(declare-fun lt!844888 () Bool)

(assert (=> d!673452 (= res!972557 (not lt!844888))))

(declare-fun e!1457448 () Bool)

(assert (=> d!673452 (= lt!844888 e!1457448)))

(declare-fun res!972558 () Bool)

(assert (=> d!673452 (=> res!972558 e!1457448)))

(assert (=> d!673452 (= res!972558 ((_ is Nil!27058) otherP!12))))

(assert (=> d!673452 (= (isPrefix!2307 otherP!12 input!1722) lt!844888)))

(declare-fun b!2275367 () Bool)

(assert (=> b!2275367 (= e!1457446 (>= (size!21260 input!1722) (size!21260 otherP!12)))))

(declare-fun b!2275365 () Bool)

(declare-fun res!972556 () Bool)

(declare-fun e!1457447 () Bool)

(assert (=> b!2275365 (=> (not res!972556) (not e!1457447))))

(declare-fun head!4920 (List!27152) C!13476)

(assert (=> b!2275365 (= res!972556 (= (head!4920 otherP!12) (head!4920 input!1722)))))

(declare-fun b!2275366 () Bool)

(declare-fun tail!3283 (List!27152) List!27152)

(assert (=> b!2275366 (= e!1457447 (isPrefix!2307 (tail!3283 otherP!12) (tail!3283 input!1722)))))

(declare-fun b!2275364 () Bool)

(assert (=> b!2275364 (= e!1457448 e!1457447)))

(declare-fun res!972555 () Bool)

(assert (=> b!2275364 (=> (not res!972555) (not e!1457447))))

(assert (=> b!2275364 (= res!972555 (not ((_ is Nil!27058) input!1722)))))

(assert (= (and d!673452 (not res!972558)) b!2275364))

(assert (= (and b!2275364 res!972555) b!2275365))

(assert (= (and b!2275365 res!972556) b!2275366))

(assert (= (and d!673452 (not res!972557)) b!2275367))

(assert (=> b!2275367 m!2703605))

(assert (=> b!2275367 m!2703499))

(declare-fun m!2703651 () Bool)

(assert (=> b!2275365 m!2703651))

(declare-fun m!2703653 () Bool)

(assert (=> b!2275365 m!2703653))

(declare-fun m!2703655 () Bool)

(assert (=> b!2275366 m!2703655))

(declare-fun m!2703657 () Bool)

(assert (=> b!2275366 m!2703657))

(assert (=> b!2275366 m!2703655))

(assert (=> b!2275366 m!2703657))

(declare-fun m!2703659 () Bool)

(assert (=> b!2275366 m!2703659))

(assert (=> b!2275204 d!673452))

(declare-fun b!2275377 () Bool)

(declare-fun e!1457454 () Int)

(declare-fun e!1457455 () Int)

(assert (=> b!2275377 (= e!1457454 e!1457455)))

(declare-fun c!361171 () Bool)

(assert (=> b!2275377 (= c!361171 (and ((_ is Cons!27060) rules!1750) (not (= (h!32461 rules!1750) r!2363))))))

(declare-fun b!2275378 () Bool)

(assert (=> b!2275378 (= e!1457455 (+ 1 (getIndex!330 (t!202982 rules!1750) r!2363)))))

(declare-fun b!2275379 () Bool)

(assert (=> b!2275379 (= e!1457455 (- 1))))

(declare-fun b!2275376 () Bool)

(assert (=> b!2275376 (= e!1457454 0)))

(declare-fun d!673454 () Bool)

(declare-fun lt!844891 () Int)

(assert (=> d!673454 (>= lt!844891 0)))

(assert (=> d!673454 (= lt!844891 e!1457454)))

(declare-fun c!361170 () Bool)

(assert (=> d!673454 (= c!361170 (and ((_ is Cons!27060) rules!1750) (= (h!32461 rules!1750) r!2363)))))

(assert (=> d!673454 (contains!4685 rules!1750 r!2363)))

(assert (=> d!673454 (= (getIndex!330 rules!1750 r!2363) lt!844891)))

(assert (= (and d!673454 c!361170) b!2275376))

(assert (= (and d!673454 (not c!361170)) b!2275377))

(assert (= (and b!2275377 c!361171) b!2275378))

(assert (= (and b!2275377 (not c!361171)) b!2275379))

(declare-fun m!2703661 () Bool)

(assert (=> b!2275378 m!2703661))

(assert (=> d!673454 m!2703491))

(assert (=> b!2275213 d!673454))

(declare-fun b!2275381 () Bool)

(declare-fun e!1457456 () Int)

(declare-fun e!1457457 () Int)

(assert (=> b!2275381 (= e!1457456 e!1457457)))

(declare-fun c!361173 () Bool)

(assert (=> b!2275381 (= c!361173 (and ((_ is Cons!27060) rules!1750) (not (= (h!32461 rules!1750) otherR!12))))))

(declare-fun b!2275382 () Bool)

(assert (=> b!2275382 (= e!1457457 (+ 1 (getIndex!330 (t!202982 rules!1750) otherR!12)))))

(declare-fun b!2275383 () Bool)

(assert (=> b!2275383 (= e!1457457 (- 1))))

(declare-fun b!2275380 () Bool)

(assert (=> b!2275380 (= e!1457456 0)))

(declare-fun d!673456 () Bool)

(declare-fun lt!844892 () Int)

(assert (=> d!673456 (>= lt!844892 0)))

(assert (=> d!673456 (= lt!844892 e!1457456)))

(declare-fun c!361172 () Bool)

(assert (=> d!673456 (= c!361172 (and ((_ is Cons!27060) rules!1750) (= (h!32461 rules!1750) otherR!12)))))

(assert (=> d!673456 (contains!4685 rules!1750 otherR!12)))

(assert (=> d!673456 (= (getIndex!330 rules!1750 otherR!12) lt!844892)))

(assert (= (and d!673456 c!361172) b!2275380))

(assert (= (and d!673456 (not c!361172)) b!2275381))

(assert (= (and b!2275381 c!361173) b!2275382))

(assert (= (and b!2275381 (not c!361173)) b!2275383))

(declare-fun m!2703663 () Bool)

(assert (=> b!2275382 m!2703663))

(assert (=> d!673456 m!2703485))

(assert (=> b!2275213 d!673456))

(declare-fun d!673458 () Bool)

(declare-fun res!972572 () Bool)

(declare-fun e!1457469 () Bool)

(assert (=> d!673458 (=> (not res!972572) (not e!1457469))))

(declare-fun validRegex!2501 (Regex!6665) Bool)

(assert (=> d!673458 (= res!972572 (validRegex!2501 (regex!4317 otherR!12)))))

(assert (=> d!673458 (= (ruleValid!1407 thiss!16613 otherR!12) e!1457469)))

(declare-fun b!2275403 () Bool)

(declare-fun res!972573 () Bool)

(assert (=> b!2275403 (=> (not res!972573) (not e!1457469))))

(declare-fun nullable!1839 (Regex!6665) Bool)

(assert (=> b!2275403 (= res!972573 (not (nullable!1839 (regex!4317 otherR!12))))))

(declare-fun b!2275404 () Bool)

(assert (=> b!2275404 (= e!1457469 (not (= (tag!4807 otherR!12) (String!29500 ""))))))

(assert (= (and d!673458 res!972572) b!2275403))

(assert (= (and b!2275403 res!972573) b!2275404))

(declare-fun m!2703681 () Bool)

(assert (=> d!673458 m!2703681))

(declare-fun m!2703685 () Bool)

(assert (=> b!2275403 m!2703685))

(assert (=> b!2275213 d!673458))

(declare-fun d!673460 () Bool)

(assert (=> d!673460 (ruleValid!1407 thiss!16613 otherR!12)))

(declare-fun lt!844900 () Unit!39998)

(declare-fun choose!13277 (LexerInterface!3914 Rule!8434 List!27154) Unit!39998)

(assert (=> d!673460 (= lt!844900 (choose!13277 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!673460 (contains!4685 rules!1750 otherR!12)))

(assert (=> d!673460 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!812 thiss!16613 otherR!12 rules!1750) lt!844900)))

(declare-fun bs!456283 () Bool)

(assert (= bs!456283 d!673460))

(assert (=> bs!456283 m!2703449))

(declare-fun m!2703693 () Bool)

(assert (=> bs!456283 m!2703693))

(assert (=> bs!456283 m!2703485))

(assert (=> b!2275213 d!673460))

(declare-fun d!673470 () Bool)

(assert (=> d!673470 (= (inv!36627 (tag!4807 (rule!6639 (h!32460 tokens!456)))) (= (mod (str.len (value!136853 (tag!4807 (rule!6639 (h!32460 tokens!456))))) 2) 0))))

(assert (=> b!2275202 d!673470))

(declare-fun d!673472 () Bool)

(declare-fun res!972579 () Bool)

(declare-fun e!1457475 () Bool)

(assert (=> d!673472 (=> (not res!972579) (not e!1457475))))

(assert (=> d!673472 (= res!972579 (semiInverseModEq!1742 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))))))

(assert (=> d!673472 (= (inv!36630 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) e!1457475)))

(declare-fun b!2275410 () Bool)

(assert (=> b!2275410 (= e!1457475 (equivClasses!1661 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))))))

(assert (= (and d!673472 res!972579) b!2275410))

(declare-fun m!2703695 () Bool)

(assert (=> d!673472 m!2703695))

(declare-fun m!2703697 () Bool)

(assert (=> b!2275410 m!2703697))

(assert (=> b!2275202 d!673472))

(declare-fun d!673474 () Bool)

(declare-fun lt!844911 () List!27152)

(assert (=> d!673474 (= (++!6601 lt!844846 lt!844911) input!1722)))

(declare-fun e!1457484 () List!27152)

(assert (=> d!673474 (= lt!844911 e!1457484)))

(declare-fun c!361182 () Bool)

(assert (=> d!673474 (= c!361182 ((_ is Cons!27058) lt!844846))))

(assert (=> d!673474 (>= (size!21260 input!1722) (size!21260 lt!844846))))

(assert (=> d!673474 (= (getSuffix!1098 input!1722 lt!844846) lt!844911)))

(declare-fun b!2275424 () Bool)

(assert (=> b!2275424 (= e!1457484 (getSuffix!1098 (tail!3283 input!1722) (t!202980 lt!844846)))))

(declare-fun b!2275425 () Bool)

(assert (=> b!2275425 (= e!1457484 input!1722)))

(assert (= (and d!673474 c!361182) b!2275424))

(assert (= (and d!673474 (not c!361182)) b!2275425))

(declare-fun m!2703719 () Bool)

(assert (=> d!673474 m!2703719))

(assert (=> d!673474 m!2703605))

(declare-fun m!2703721 () Bool)

(assert (=> d!673474 m!2703721))

(assert (=> b!2275424 m!2703657))

(assert (=> b!2275424 m!2703657))

(declare-fun m!2703723 () Bool)

(assert (=> b!2275424 m!2703723))

(assert (=> b!2275203 d!673474))

(declare-fun d!673486 () Bool)

(assert (=> d!673486 (isPrefix!2307 lt!844846 (++!6601 lt!844846 (_2!15889 lt!844849)))))

(declare-fun lt!844914 () Unit!39998)

(declare-fun choose!13278 (List!27152 List!27152) Unit!39998)

(assert (=> d!673486 (= lt!844914 (choose!13278 lt!844846 (_2!15889 lt!844849)))))

(assert (=> d!673486 (= (lemmaConcatTwoListThenFirstIsPrefix!1512 lt!844846 (_2!15889 lt!844849)) lt!844914)))

(declare-fun bs!456285 () Bool)

(assert (= bs!456285 d!673486))

(assert (=> bs!456285 m!2703461))

(assert (=> bs!456285 m!2703461))

(assert (=> bs!456285 m!2703463))

(declare-fun m!2703725 () Bool)

(assert (=> bs!456285 m!2703725))

(assert (=> b!2275203 d!673486))

(declare-fun d!673488 () Bool)

(declare-fun e!1457485 () Bool)

(assert (=> d!673488 e!1457485))

(declare-fun res!972584 () Bool)

(assert (=> d!673488 (=> res!972584 e!1457485)))

(declare-fun lt!844915 () Bool)

(assert (=> d!673488 (= res!972584 (not lt!844915))))

(declare-fun e!1457487 () Bool)

(assert (=> d!673488 (= lt!844915 e!1457487)))

(declare-fun res!972585 () Bool)

(assert (=> d!673488 (=> res!972585 e!1457487)))

(assert (=> d!673488 (= res!972585 ((_ is Nil!27058) lt!844846))))

(assert (=> d!673488 (= (isPrefix!2307 lt!844846 (++!6601 lt!844846 (_2!15889 lt!844849))) lt!844915)))

(declare-fun b!2275429 () Bool)

(assert (=> b!2275429 (= e!1457485 (>= (size!21260 (++!6601 lt!844846 (_2!15889 lt!844849))) (size!21260 lt!844846)))))

(declare-fun b!2275427 () Bool)

(declare-fun res!972583 () Bool)

(declare-fun e!1457486 () Bool)

(assert (=> b!2275427 (=> (not res!972583) (not e!1457486))))

(assert (=> b!2275427 (= res!972583 (= (head!4920 lt!844846) (head!4920 (++!6601 lt!844846 (_2!15889 lt!844849)))))))

(declare-fun b!2275428 () Bool)

(assert (=> b!2275428 (= e!1457486 (isPrefix!2307 (tail!3283 lt!844846) (tail!3283 (++!6601 lt!844846 (_2!15889 lt!844849)))))))

(declare-fun b!2275426 () Bool)

(assert (=> b!2275426 (= e!1457487 e!1457486)))

(declare-fun res!972582 () Bool)

(assert (=> b!2275426 (=> (not res!972582) (not e!1457486))))

(assert (=> b!2275426 (= res!972582 (not ((_ is Nil!27058) (++!6601 lt!844846 (_2!15889 lt!844849)))))))

(assert (= (and d!673488 (not res!972585)) b!2275426))

(assert (= (and b!2275426 res!972582) b!2275427))

(assert (= (and b!2275427 res!972583) b!2275428))

(assert (= (and d!673488 (not res!972584)) b!2275429))

(assert (=> b!2275429 m!2703461))

(declare-fun m!2703727 () Bool)

(assert (=> b!2275429 m!2703727))

(assert (=> b!2275429 m!2703721))

(declare-fun m!2703729 () Bool)

(assert (=> b!2275427 m!2703729))

(assert (=> b!2275427 m!2703461))

(declare-fun m!2703731 () Bool)

(assert (=> b!2275427 m!2703731))

(declare-fun m!2703733 () Bool)

(assert (=> b!2275428 m!2703733))

(assert (=> b!2275428 m!2703461))

(declare-fun m!2703735 () Bool)

(assert (=> b!2275428 m!2703735))

(assert (=> b!2275428 m!2703733))

(assert (=> b!2275428 m!2703735))

(declare-fun m!2703737 () Bool)

(assert (=> b!2275428 m!2703737))

(assert (=> b!2275203 d!673488))

(declare-fun d!673490 () Bool)

(declare-fun e!1457488 () Bool)

(assert (=> d!673490 e!1457488))

(declare-fun res!972588 () Bool)

(assert (=> d!673490 (=> res!972588 e!1457488)))

(declare-fun lt!844916 () Bool)

(assert (=> d!673490 (= res!972588 (not lt!844916))))

(declare-fun e!1457490 () Bool)

(assert (=> d!673490 (= lt!844916 e!1457490)))

(declare-fun res!972589 () Bool)

(assert (=> d!673490 (=> res!972589 e!1457490)))

(assert (=> d!673490 (= res!972589 ((_ is Nil!27058) lt!844846))))

(assert (=> d!673490 (= (isPrefix!2307 lt!844846 input!1722) lt!844916)))

(declare-fun b!2275433 () Bool)

(assert (=> b!2275433 (= e!1457488 (>= (size!21260 input!1722) (size!21260 lt!844846)))))

(declare-fun b!2275431 () Bool)

(declare-fun res!972587 () Bool)

(declare-fun e!1457489 () Bool)

(assert (=> b!2275431 (=> (not res!972587) (not e!1457489))))

(assert (=> b!2275431 (= res!972587 (= (head!4920 lt!844846) (head!4920 input!1722)))))

(declare-fun b!2275432 () Bool)

(assert (=> b!2275432 (= e!1457489 (isPrefix!2307 (tail!3283 lt!844846) (tail!3283 input!1722)))))

(declare-fun b!2275430 () Bool)

(assert (=> b!2275430 (= e!1457490 e!1457489)))

(declare-fun res!972586 () Bool)

(assert (=> b!2275430 (=> (not res!972586) (not e!1457489))))

(assert (=> b!2275430 (= res!972586 (not ((_ is Nil!27058) input!1722)))))

(assert (= (and d!673490 (not res!972589)) b!2275430))

(assert (= (and b!2275430 res!972586) b!2275431))

(assert (= (and b!2275431 res!972587) b!2275432))

(assert (= (and d!673490 (not res!972588)) b!2275433))

(assert (=> b!2275433 m!2703605))

(assert (=> b!2275433 m!2703721))

(assert (=> b!2275431 m!2703729))

(assert (=> b!2275431 m!2703653))

(assert (=> b!2275432 m!2703733))

(assert (=> b!2275432 m!2703657))

(assert (=> b!2275432 m!2703733))

(assert (=> b!2275432 m!2703657))

(declare-fun m!2703739 () Bool)

(assert (=> b!2275432 m!2703739))

(assert (=> b!2275203 d!673490))

(declare-fun d!673492 () Bool)

(declare-fun list!10520 (Conc!8782) List!27152)

(assert (=> d!673492 (= (list!10516 (charsOf!2705 (h!32460 tokens!456))) (list!10520 (c!361142 (charsOf!2705 (h!32460 tokens!456)))))))

(declare-fun bs!456286 () Bool)

(assert (= bs!456286 d!673492))

(declare-fun m!2703741 () Bool)

(assert (=> bs!456286 m!2703741))

(assert (=> b!2275203 d!673492))

(declare-fun lt!844919 () List!27152)

(declare-fun e!1457496 () Bool)

(declare-fun b!2275445 () Bool)

(assert (=> b!2275445 (= e!1457496 (or (not (= (_2!15889 lt!844849) Nil!27058)) (= lt!844919 lt!844846)))))

(declare-fun b!2275442 () Bool)

(declare-fun e!1457495 () List!27152)

(assert (=> b!2275442 (= e!1457495 (_2!15889 lt!844849))))

(declare-fun b!2275443 () Bool)

(assert (=> b!2275443 (= e!1457495 (Cons!27058 (h!32459 lt!844846) (++!6601 (t!202980 lt!844846) (_2!15889 lt!844849))))))

(declare-fun d!673494 () Bool)

(assert (=> d!673494 e!1457496))

(declare-fun res!972594 () Bool)

(assert (=> d!673494 (=> (not res!972594) (not e!1457496))))

(declare-fun content!3611 (List!27152) (InoxSet C!13476))

(assert (=> d!673494 (= res!972594 (= (content!3611 lt!844919) ((_ map or) (content!3611 lt!844846) (content!3611 (_2!15889 lt!844849)))))))

(assert (=> d!673494 (= lt!844919 e!1457495)))

(declare-fun c!361185 () Bool)

(assert (=> d!673494 (= c!361185 ((_ is Nil!27058) lt!844846))))

(assert (=> d!673494 (= (++!6601 lt!844846 (_2!15889 lt!844849)) lt!844919)))

(declare-fun b!2275444 () Bool)

(declare-fun res!972595 () Bool)

(assert (=> b!2275444 (=> (not res!972595) (not e!1457496))))

(assert (=> b!2275444 (= res!972595 (= (size!21260 lt!844919) (+ (size!21260 lt!844846) (size!21260 (_2!15889 lt!844849)))))))

(assert (= (and d!673494 c!361185) b!2275442))

(assert (= (and d!673494 (not c!361185)) b!2275443))

(assert (= (and d!673494 res!972594) b!2275444))

(assert (= (and b!2275444 res!972595) b!2275445))

(declare-fun m!2703743 () Bool)

(assert (=> b!2275443 m!2703743))

(declare-fun m!2703745 () Bool)

(assert (=> d!673494 m!2703745))

(declare-fun m!2703747 () Bool)

(assert (=> d!673494 m!2703747))

(declare-fun m!2703749 () Bool)

(assert (=> d!673494 m!2703749))

(declare-fun m!2703751 () Bool)

(assert (=> b!2275444 m!2703751))

(assert (=> b!2275444 m!2703721))

(declare-fun m!2703753 () Bool)

(assert (=> b!2275444 m!2703753))

(assert (=> b!2275203 d!673494))

(declare-fun d!673496 () Bool)

(declare-fun lt!844922 () BalanceConc!17292)

(assert (=> d!673496 (= (list!10516 lt!844922) (originalCharacters!5087 (h!32460 tokens!456)))))

(assert (=> d!673496 (= lt!844922 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))))

(assert (=> d!673496 (= (charsOf!2705 (h!32460 tokens!456)) lt!844922)))

(declare-fun b_lambda!72469 () Bool)

(assert (=> (not b_lambda!72469) (not d!673496)))

(assert (=> d!673496 t!202992))

(declare-fun b_and!179473 () Bool)

(assert (= b_and!179457 (and (=> t!202992 result!164740) b_and!179473)))

(assert (=> d!673496 t!202994))

(declare-fun b_and!179475 () Bool)

(assert (= b_and!179459 (and (=> t!202994 result!164744) b_and!179475)))

(assert (=> d!673496 t!202996))

(declare-fun b_and!179477 () Bool)

(assert (= b_and!179461 (and (=> t!202996 result!164746) b_and!179477)))

(assert (=> d!673496 t!202998))

(declare-fun b_and!179479 () Bool)

(assert (= b_and!179463 (and (=> t!202998 result!164748) b_and!179479)))

(declare-fun m!2703755 () Bool)

(assert (=> d!673496 m!2703755))

(assert (=> d!673496 m!2703645))

(assert (=> b!2275203 d!673496))

(declare-fun d!673498 () Bool)

(assert (=> d!673498 (= (isEmpty!15344 tokens!456) ((_ is Nil!27059) tokens!456))))

(assert (=> b!2275224 d!673498))

(declare-fun d!673500 () Bool)

(declare-fun list!10521 (Conc!8783) List!27153)

(assert (=> d!673500 (= (list!10517 (_1!15890 lt!844847)) (list!10521 (c!361144 (_1!15890 lt!844847))))))

(declare-fun bs!456287 () Bool)

(assert (= bs!456287 d!673500))

(declare-fun m!2703757 () Bool)

(assert (=> bs!456287 m!2703757))

(assert (=> b!2275222 d!673500))

(declare-fun d!673502 () Bool)

(assert (=> d!673502 (= (list!10516 (_2!15890 lt!844847)) (list!10520 (c!361142 (_2!15890 lt!844847))))))

(declare-fun bs!456288 () Bool)

(assert (= bs!456288 d!673502))

(declare-fun m!2703759 () Bool)

(assert (=> bs!456288 m!2703759))

(assert (=> b!2275222 d!673502))

(declare-fun b!2275619 () Bool)

(declare-fun e!1457598 () Bool)

(declare-fun e!1457599 () Bool)

(assert (=> b!2275619 (= e!1457598 e!1457599)))

(declare-fun res!972668 () Bool)

(declare-fun lt!844953 () tuple2!26760)

(assert (=> b!2275619 (= res!972668 (< (size!21259 (_2!15890 lt!844953)) (size!21259 (seqFromList!3021 input!1722))))))

(assert (=> b!2275619 (=> (not res!972668) (not e!1457599))))

(declare-fun b!2275620 () Bool)

(declare-fun e!1457600 () Bool)

(declare-fun lexList!1086 (LexerInterface!3914 List!27154 List!27152) tuple2!26762)

(assert (=> b!2275620 (= e!1457600 (= (list!10516 (_2!15890 lt!844953)) (_2!15891 (lexList!1086 thiss!16613 rules!1750 (list!10516 (seqFromList!3021 input!1722))))))))

(declare-fun b!2275621 () Bool)

(assert (=> b!2275621 (= e!1457598 (= (_2!15890 lt!844953) (seqFromList!3021 input!1722)))))

(declare-fun d!673504 () Bool)

(assert (=> d!673504 e!1457600))

(declare-fun res!972667 () Bool)

(assert (=> d!673504 (=> (not res!972667) (not e!1457600))))

(assert (=> d!673504 (= res!972667 e!1457598)))

(declare-fun c!361208 () Bool)

(declare-fun size!21263 (BalanceConc!17294) Int)

(assert (=> d!673504 (= c!361208 (> (size!21263 (_1!15890 lt!844953)) 0))))

(declare-fun lexTailRecV2!761 (LexerInterface!3914 List!27154 BalanceConc!17292 BalanceConc!17292 BalanceConc!17292 BalanceConc!17294) tuple2!26760)

(assert (=> d!673504 (= lt!844953 (lexTailRecV2!761 thiss!16613 rules!1750 (seqFromList!3021 input!1722) (BalanceConc!17293 Empty!8782) (seqFromList!3021 input!1722) (BalanceConc!17295 Empty!8783)))))

(assert (=> d!673504 (= (lex!1753 thiss!16613 rules!1750 (seqFromList!3021 input!1722)) lt!844953)))

(declare-fun b!2275622 () Bool)

(declare-fun res!972666 () Bool)

(assert (=> b!2275622 (=> (not res!972666) (not e!1457600))))

(assert (=> b!2275622 (= res!972666 (= (list!10517 (_1!15890 lt!844953)) (_1!15891 (lexList!1086 thiss!16613 rules!1750 (list!10516 (seqFromList!3021 input!1722))))))))

(declare-fun b!2275623 () Bool)

(declare-fun isEmpty!15350 (BalanceConc!17294) Bool)

(assert (=> b!2275623 (= e!1457599 (not (isEmpty!15350 (_1!15890 lt!844953))))))

(assert (= (and d!673504 c!361208) b!2275619))

(assert (= (and d!673504 (not c!361208)) b!2275621))

(assert (= (and b!2275619 res!972668) b!2275623))

(assert (= (and d!673504 res!972667) b!2275622))

(assert (= (and b!2275622 res!972666) b!2275620))

(declare-fun m!2703857 () Bool)

(assert (=> d!673504 m!2703857))

(assert (=> d!673504 m!2703429))

(assert (=> d!673504 m!2703429))

(declare-fun m!2703859 () Bool)

(assert (=> d!673504 m!2703859))

(declare-fun m!2703861 () Bool)

(assert (=> b!2275619 m!2703861))

(assert (=> b!2275619 m!2703429))

(declare-fun m!2703863 () Bool)

(assert (=> b!2275619 m!2703863))

(declare-fun m!2703865 () Bool)

(assert (=> b!2275622 m!2703865))

(assert (=> b!2275622 m!2703429))

(declare-fun m!2703867 () Bool)

(assert (=> b!2275622 m!2703867))

(assert (=> b!2275622 m!2703867))

(declare-fun m!2703869 () Bool)

(assert (=> b!2275622 m!2703869))

(declare-fun m!2703871 () Bool)

(assert (=> b!2275620 m!2703871))

(assert (=> b!2275620 m!2703429))

(assert (=> b!2275620 m!2703867))

(assert (=> b!2275620 m!2703867))

(assert (=> b!2275620 m!2703869))

(declare-fun m!2703873 () Bool)

(assert (=> b!2275623 m!2703873))

(assert (=> b!2275222 d!673504))

(declare-fun d!673540 () Bool)

(declare-fun fromListB!1352 (List!27152) BalanceConc!17292)

(assert (=> d!673540 (= (seqFromList!3021 input!1722) (fromListB!1352 input!1722))))

(declare-fun bs!456292 () Bool)

(assert (= bs!456292 d!673540))

(declare-fun m!2703875 () Bool)

(assert (=> bs!456292 m!2703875))

(assert (=> b!2275222 d!673540))

(declare-fun d!673542 () Bool)

(declare-fun res!972669 () Bool)

(declare-fun e!1457601 () Bool)

(assert (=> d!673542 (=> (not res!972669) (not e!1457601))))

(assert (=> d!673542 (= res!972669 (validRegex!2501 (regex!4317 r!2363)))))

(assert (=> d!673542 (= (ruleValid!1407 thiss!16613 r!2363) e!1457601)))

(declare-fun b!2275624 () Bool)

(declare-fun res!972670 () Bool)

(assert (=> b!2275624 (=> (not res!972670) (not e!1457601))))

(assert (=> b!2275624 (= res!972670 (not (nullable!1839 (regex!4317 r!2363))))))

(declare-fun b!2275625 () Bool)

(assert (=> b!2275625 (= e!1457601 (not (= (tag!4807 r!2363) (String!29500 ""))))))

(assert (= (and d!673542 res!972669) b!2275624))

(assert (= (and b!2275624 res!972670) b!2275625))

(declare-fun m!2703877 () Bool)

(assert (=> d!673542 m!2703877))

(declare-fun m!2703879 () Bool)

(assert (=> b!2275624 m!2703879))

(assert (=> b!2275223 d!673542))

(declare-fun d!673544 () Bool)

(assert (=> d!673544 (ruleValid!1407 thiss!16613 r!2363)))

(declare-fun lt!844954 () Unit!39998)

(assert (=> d!673544 (= lt!844954 (choose!13277 thiss!16613 r!2363 rules!1750))))

(assert (=> d!673544 (contains!4685 rules!1750 r!2363)))

(assert (=> d!673544 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!812 thiss!16613 r!2363 rules!1750) lt!844954)))

(declare-fun bs!456293 () Bool)

(assert (= bs!456293 d!673544))

(assert (=> bs!456293 m!2703501))

(declare-fun m!2703881 () Bool)

(assert (=> bs!456293 m!2703881))

(assert (=> bs!456293 m!2703491))

(assert (=> b!2275223 d!673544))

(declare-fun d!673546 () Bool)

(assert (=> d!673546 (= (head!4918 tokens!456) (h!32460 tokens!456))))

(assert (=> b!2275212 d!673546))

(declare-fun d!673548 () Bool)

(assert (=> d!673548 (= (inv!36627 (tag!4807 (h!32461 rules!1750))) (= (mod (str.len (value!136853 (tag!4807 (h!32461 rules!1750)))) 2) 0))))

(assert (=> b!2275211 d!673548))

(declare-fun d!673550 () Bool)

(declare-fun res!972671 () Bool)

(declare-fun e!1457602 () Bool)

(assert (=> d!673550 (=> (not res!972671) (not e!1457602))))

(assert (=> d!673550 (= res!972671 (semiInverseModEq!1742 (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 (h!32461 rules!1750)))))))

(assert (=> d!673550 (= (inv!36630 (transformation!4317 (h!32461 rules!1750))) e!1457602)))

(declare-fun b!2275626 () Bool)

(assert (=> b!2275626 (= e!1457602 (equivClasses!1661 (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 (h!32461 rules!1750)))))))

(assert (= (and d!673550 res!972671) b!2275626))

(declare-fun m!2703883 () Bool)

(assert (=> d!673550 m!2703883))

(declare-fun m!2703885 () Bool)

(assert (=> b!2275626 m!2703885))

(assert (=> b!2275211 d!673550))

(declare-fun b!2275656 () Bool)

(declare-fun res!972693 () Bool)

(declare-fun e!1457618 () Bool)

(assert (=> b!2275656 (=> res!972693 e!1457618)))

(declare-fun e!1457621 () Bool)

(assert (=> b!2275656 (= res!972693 e!1457621)))

(declare-fun res!972692 () Bool)

(assert (=> b!2275656 (=> (not res!972692) (not e!1457621))))

(declare-fun lt!844957 () Bool)

(assert (=> b!2275656 (= res!972692 lt!844957)))

(declare-fun bm!136263 () Bool)

(declare-fun call!136268 () Bool)

(assert (=> bm!136263 (= call!136268 (isEmpty!15348 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))

(declare-fun b!2275657 () Bool)

(declare-fun e!1457623 () Bool)

(assert (=> b!2275657 (= e!1457618 e!1457623)))

(declare-fun res!972689 () Bool)

(assert (=> b!2275657 (=> (not res!972689) (not e!1457623))))

(assert (=> b!2275657 (= res!972689 (not lt!844957))))

(declare-fun b!2275658 () Bool)

(declare-fun e!1457620 () Bool)

(assert (=> b!2275658 (= e!1457623 e!1457620)))

(declare-fun res!972688 () Bool)

(assert (=> b!2275658 (=> res!972688 e!1457620)))

(assert (=> b!2275658 (= res!972688 call!136268)))

(declare-fun b!2275659 () Bool)

(declare-fun e!1457619 () Bool)

(assert (=> b!2275659 (= e!1457619 (not lt!844957))))

(declare-fun b!2275660 () Bool)

(declare-fun res!972694 () Bool)

(assert (=> b!2275660 (=> res!972694 e!1457620)))

(assert (=> b!2275660 (= res!972694 (not (isEmpty!15348 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))

(declare-fun b!2275661 () Bool)

(declare-fun e!1457622 () Bool)

(assert (=> b!2275661 (= e!1457622 (nullable!1839 (regex!4317 r!2363)))))

(declare-fun b!2275662 () Bool)

(declare-fun e!1457617 () Bool)

(assert (=> b!2275662 (= e!1457617 e!1457619)))

(declare-fun c!361217 () Bool)

(assert (=> b!2275662 (= c!361217 ((_ is EmptyLang!6665) (regex!4317 r!2363)))))

(declare-fun b!2275663 () Bool)

(assert (=> b!2275663 (= e!1457617 (= lt!844957 call!136268))))

(declare-fun b!2275664 () Bool)

(declare-fun res!972691 () Bool)

(assert (=> b!2275664 (=> res!972691 e!1457618)))

(assert (=> b!2275664 (= res!972691 (not ((_ is ElementMatch!6665) (regex!4317 r!2363))))))

(assert (=> b!2275664 (= e!1457619 e!1457618)))

(declare-fun b!2275665 () Bool)

(declare-fun res!972695 () Bool)

(assert (=> b!2275665 (=> (not res!972695) (not e!1457621))))

(assert (=> b!2275665 (= res!972695 (isEmpty!15348 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(declare-fun b!2275666 () Bool)

(declare-fun res!972690 () Bool)

(assert (=> b!2275666 (=> (not res!972690) (not e!1457621))))

(assert (=> b!2275666 (= res!972690 (not call!136268))))

(declare-fun d!673552 () Bool)

(assert (=> d!673552 e!1457617))

(declare-fun c!361216 () Bool)

(assert (=> d!673552 (= c!361216 ((_ is EmptyExpr!6665) (regex!4317 r!2363)))))

(assert (=> d!673552 (= lt!844957 e!1457622)))

(declare-fun c!361215 () Bool)

(assert (=> d!673552 (= c!361215 (isEmpty!15348 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))

(assert (=> d!673552 (validRegex!2501 (regex!4317 r!2363))))

(assert (=> d!673552 (= (matchR!2922 (regex!4317 r!2363) (list!10516 (charsOf!2705 (head!4918 tokens!456)))) lt!844957)))

(declare-fun b!2275655 () Bool)

(assert (=> b!2275655 (= e!1457620 (not (= (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))) (c!361143 (regex!4317 r!2363)))))))

(declare-fun b!2275667 () Bool)

(assert (=> b!2275667 (= e!1457621 (= (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))) (c!361143 (regex!4317 r!2363))))))

(declare-fun b!2275668 () Bool)

(declare-fun derivativeStep!1500 (Regex!6665 C!13476) Regex!6665)

(assert (=> b!2275668 (= e!1457622 (matchR!2922 (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(assert (= (and d!673552 c!361215) b!2275661))

(assert (= (and d!673552 (not c!361215)) b!2275668))

(assert (= (and d!673552 c!361216) b!2275663))

(assert (= (and d!673552 (not c!361216)) b!2275662))

(assert (= (and b!2275662 c!361217) b!2275659))

(assert (= (and b!2275662 (not c!361217)) b!2275664))

(assert (= (and b!2275664 (not res!972691)) b!2275656))

(assert (= (and b!2275656 res!972692) b!2275666))

(assert (= (and b!2275666 res!972690) b!2275665))

(assert (= (and b!2275665 res!972695) b!2275667))

(assert (= (and b!2275656 (not res!972693)) b!2275657))

(assert (= (and b!2275657 res!972689) b!2275658))

(assert (= (and b!2275658 (not res!972688)) b!2275660))

(assert (= (and b!2275660 (not res!972694)) b!2275655))

(assert (= (or b!2275663 b!2275658 b!2275666) bm!136263))

(assert (=> b!2275655 m!2703437))

(declare-fun m!2703887 () Bool)

(assert (=> b!2275655 m!2703887))

(assert (=> b!2275667 m!2703437))

(assert (=> b!2275667 m!2703887))

(assert (=> b!2275665 m!2703437))

(declare-fun m!2703889 () Bool)

(assert (=> b!2275665 m!2703889))

(assert (=> b!2275665 m!2703889))

(declare-fun m!2703891 () Bool)

(assert (=> b!2275665 m!2703891))

(assert (=> b!2275668 m!2703437))

(assert (=> b!2275668 m!2703887))

(assert (=> b!2275668 m!2703887))

(declare-fun m!2703893 () Bool)

(assert (=> b!2275668 m!2703893))

(assert (=> b!2275668 m!2703437))

(assert (=> b!2275668 m!2703889))

(assert (=> b!2275668 m!2703893))

(assert (=> b!2275668 m!2703889))

(declare-fun m!2703895 () Bool)

(assert (=> b!2275668 m!2703895))

(assert (=> bm!136263 m!2703437))

(declare-fun m!2703897 () Bool)

(assert (=> bm!136263 m!2703897))

(assert (=> b!2275661 m!2703879))

(assert (=> b!2275660 m!2703437))

(assert (=> b!2275660 m!2703889))

(assert (=> b!2275660 m!2703889))

(assert (=> b!2275660 m!2703891))

(assert (=> d!673552 m!2703437))

(assert (=> d!673552 m!2703897))

(assert (=> d!673552 m!2703877))

(assert (=> b!2275209 d!673552))

(declare-fun d!673554 () Bool)

(assert (=> d!673554 (= (list!10516 (charsOf!2705 (head!4918 tokens!456))) (list!10520 (c!361142 (charsOf!2705 (head!4918 tokens!456)))))))

(declare-fun bs!456294 () Bool)

(assert (= bs!456294 d!673554))

(declare-fun m!2703899 () Bool)

(assert (=> bs!456294 m!2703899))

(assert (=> b!2275209 d!673554))

(declare-fun d!673556 () Bool)

(declare-fun lt!844958 () BalanceConc!17292)

(assert (=> d!673556 (= (list!10516 lt!844958) (originalCharacters!5087 (head!4918 tokens!456)))))

(assert (=> d!673556 (= lt!844958 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))))

(assert (=> d!673556 (= (charsOf!2705 (head!4918 tokens!456)) lt!844958)))

(declare-fun b_lambda!72475 () Bool)

(assert (=> (not b_lambda!72475) (not d!673556)))

(declare-fun t!203016 () Bool)

(declare-fun tb!135135 () Bool)

(assert (=> (and b!2275218 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203016) tb!135135))

(declare-fun b!2275669 () Bool)

(declare-fun e!1457624 () Bool)

(declare-fun tp!720870 () Bool)

(assert (=> b!2275669 (= e!1457624 (and (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))) tp!720870))))

(declare-fun result!164774 () Bool)

(assert (=> tb!135135 (= result!164774 (and (inv!36635 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))) e!1457624))))

(assert (= tb!135135 b!2275669))

(declare-fun m!2703901 () Bool)

(assert (=> b!2275669 m!2703901))

(declare-fun m!2703903 () Bool)

(assert (=> tb!135135 m!2703903))

(assert (=> d!673556 t!203016))

(declare-fun b_and!179489 () Bool)

(assert (= b_and!179473 (and (=> t!203016 result!164774) b_and!179489)))

(declare-fun tb!135137 () Bool)

(declare-fun t!203018 () Bool)

(assert (=> (and b!2275219 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203018) tb!135137))

(declare-fun result!164776 () Bool)

(assert (= result!164776 result!164774))

(assert (=> d!673556 t!203018))

(declare-fun b_and!179491 () Bool)

(assert (= b_and!179475 (and (=> t!203018 result!164776) b_and!179491)))

(declare-fun tb!135139 () Bool)

(declare-fun t!203020 () Bool)

(assert (=> (and b!2275200 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203020) tb!135139))

(declare-fun result!164778 () Bool)

(assert (= result!164778 result!164774))

(assert (=> d!673556 t!203020))

(declare-fun b_and!179493 () Bool)

(assert (= b_and!179477 (and (=> t!203020 result!164778) b_and!179493)))

(declare-fun t!203022 () Bool)

(declare-fun tb!135141 () Bool)

(assert (=> (and b!2275201 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203022) tb!135141))

(declare-fun result!164780 () Bool)

(assert (= result!164780 result!164774))

(assert (=> d!673556 t!203022))

(declare-fun b_and!179495 () Bool)

(assert (= b_and!179479 (and (=> t!203022 result!164780) b_and!179495)))

(declare-fun m!2703905 () Bool)

(assert (=> d!673556 m!2703905))

(declare-fun m!2703907 () Bool)

(assert (=> d!673556 m!2703907))

(assert (=> b!2275209 d!673556))

(assert (=> b!2275209 d!673546))

(declare-fun d!673558 () Bool)

(declare-fun lt!844961 () Int)

(assert (=> d!673558 (= lt!844961 (size!21260 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))

(declare-fun size!21264 (Conc!8782) Int)

(assert (=> d!673558 (= lt!844961 (size!21264 (c!361142 (charsOf!2705 (head!4918 tokens!456)))))))

(assert (=> d!673558 (= (size!21259 (charsOf!2705 (head!4918 tokens!456))) lt!844961)))

(declare-fun bs!456295 () Bool)

(assert (= bs!456295 d!673558))

(assert (=> bs!456295 m!2703435))

(assert (=> bs!456295 m!2703437))

(assert (=> bs!456295 m!2703437))

(declare-fun m!2703909 () Bool)

(assert (=> bs!456295 m!2703909))

(declare-fun m!2703911 () Bool)

(assert (=> bs!456295 m!2703911))

(assert (=> b!2275220 d!673558))

(assert (=> b!2275220 d!673556))

(assert (=> b!2275220 d!673546))

(declare-fun d!673560 () Bool)

(declare-fun lt!844964 () Int)

(assert (=> d!673560 (>= lt!844964 0)))

(declare-fun e!1457627 () Int)

(assert (=> d!673560 (= lt!844964 e!1457627)))

(declare-fun c!361220 () Bool)

(assert (=> d!673560 (= c!361220 ((_ is Nil!27058) otherP!12))))

(assert (=> d!673560 (= (size!21260 otherP!12) lt!844964)))

(declare-fun b!2275674 () Bool)

(assert (=> b!2275674 (= e!1457627 0)))

(declare-fun b!2275675 () Bool)

(assert (=> b!2275675 (= e!1457627 (+ 1 (size!21260 (t!202980 otherP!12))))))

(assert (= (and d!673560 c!361220) b!2275674))

(assert (= (and d!673560 (not c!361220)) b!2275675))

(declare-fun m!2703913 () Bool)

(assert (=> b!2275675 m!2703913))

(assert (=> b!2275220 d!673560))

(declare-fun d!673562 () Bool)

(assert (=> d!673562 (= (isEmpty!15343 rules!1750) ((_ is Nil!27060) rules!1750))))

(assert (=> b!2275197 d!673562))

(declare-fun b!2275680 () Bool)

(declare-fun e!1457630 () Bool)

(declare-fun tp!720873 () Bool)

(assert (=> b!2275680 (= e!1457630 (and tp_is_empty!10551 tp!720873))))

(assert (=> b!2275194 (= tp!720790 e!1457630)))

(assert (= (and b!2275194 ((_ is Cons!27058) (t!202980 otherP!12))) b!2275680))

(declare-fun b!2275681 () Bool)

(declare-fun e!1457631 () Bool)

(declare-fun tp!720874 () Bool)

(assert (=> b!2275681 (= e!1457631 (and tp_is_empty!10551 tp!720874))))

(assert (=> b!2275195 (= tp!720791 e!1457631)))

(assert (= (and b!2275195 ((_ is Cons!27058) (originalCharacters!5087 (h!32460 tokens!456)))) b!2275681))

(declare-fun b!2275693 () Bool)

(declare-fun e!1457634 () Bool)

(declare-fun tp!720887 () Bool)

(declare-fun tp!720889 () Bool)

(assert (=> b!2275693 (= e!1457634 (and tp!720887 tp!720889))))

(declare-fun b!2275692 () Bool)

(assert (=> b!2275692 (= e!1457634 tp_is_empty!10551)))

(declare-fun b!2275694 () Bool)

(declare-fun tp!720886 () Bool)

(assert (=> b!2275694 (= e!1457634 tp!720886)))

(assert (=> b!2275216 (= tp!720783 e!1457634)))

(declare-fun b!2275695 () Bool)

(declare-fun tp!720885 () Bool)

(declare-fun tp!720888 () Bool)

(assert (=> b!2275695 (= e!1457634 (and tp!720885 tp!720888))))

(assert (= (and b!2275216 ((_ is ElementMatch!6665) (regex!4317 otherR!12))) b!2275692))

(assert (= (and b!2275216 ((_ is Concat!11145) (regex!4317 otherR!12))) b!2275693))

(assert (= (and b!2275216 ((_ is Star!6665) (regex!4317 otherR!12))) b!2275694))

(assert (= (and b!2275216 ((_ is Union!6665) (regex!4317 otherR!12))) b!2275695))

(declare-fun b!2275697 () Bool)

(declare-fun e!1457635 () Bool)

(declare-fun tp!720892 () Bool)

(declare-fun tp!720894 () Bool)

(assert (=> b!2275697 (= e!1457635 (and tp!720892 tp!720894))))

(declare-fun b!2275696 () Bool)

(assert (=> b!2275696 (= e!1457635 tp_is_empty!10551)))

(declare-fun b!2275698 () Bool)

(declare-fun tp!720891 () Bool)

(assert (=> b!2275698 (= e!1457635 tp!720891)))

(assert (=> b!2275214 (= tp!720788 e!1457635)))

(declare-fun b!2275699 () Bool)

(declare-fun tp!720890 () Bool)

(declare-fun tp!720893 () Bool)

(assert (=> b!2275699 (= e!1457635 (and tp!720890 tp!720893))))

(assert (= (and b!2275214 ((_ is ElementMatch!6665) (regex!4317 r!2363))) b!2275696))

(assert (= (and b!2275214 ((_ is Concat!11145) (regex!4317 r!2363))) b!2275697))

(assert (= (and b!2275214 ((_ is Star!6665) (regex!4317 r!2363))) b!2275698))

(assert (= (and b!2275214 ((_ is Union!6665) (regex!4317 r!2363))) b!2275699))

(declare-fun b!2275713 () Bool)

(declare-fun b_free!67813 () Bool)

(declare-fun b_next!68517 () Bool)

(assert (=> b!2275713 (= b_free!67813 (not b_next!68517))))

(declare-fun tp!720908 () Bool)

(declare-fun b_and!179497 () Bool)

(assert (=> b!2275713 (= tp!720908 b_and!179497)))

(declare-fun b_free!67815 () Bool)

(declare-fun b_next!68519 () Bool)

(assert (=> b!2275713 (= b_free!67815 (not b_next!68519))))

(declare-fun t!203024 () Bool)

(declare-fun tb!135143 () Bool)

(assert (=> (and b!2275713 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!203024) tb!135143))

(declare-fun result!164788 () Bool)

(assert (= result!164788 result!164740))

(assert (=> b!2275349 t!203024))

(assert (=> d!673496 t!203024))

(declare-fun t!203026 () Bool)

(declare-fun tb!135145 () Bool)

(assert (=> (and b!2275713 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203026) tb!135145))

(declare-fun result!164790 () Bool)

(assert (= result!164790 result!164774))

(assert (=> d!673556 t!203026))

(declare-fun b_and!179499 () Bool)

(declare-fun tp!720906 () Bool)

(assert (=> b!2275713 (= tp!720906 (and (=> t!203024 result!164788) (=> t!203026 result!164790) b_and!179499))))

(declare-fun e!1457649 () Bool)

(declare-fun e!1457653 () Bool)

(declare-fun b!2275711 () Bool)

(declare-fun tp!720905 () Bool)

(assert (=> b!2275711 (= e!1457649 (and (inv!21 (value!136854 (h!32460 (t!202981 tokens!456)))) e!1457653 tp!720905))))

(declare-fun tp!720909 () Bool)

(declare-fun e!1457651 () Bool)

(declare-fun b!2275710 () Bool)

(assert (=> b!2275710 (= e!1457651 (and (inv!36631 (h!32460 (t!202981 tokens!456))) e!1457649 tp!720909))))

(declare-fun b!2275712 () Bool)

(declare-fun tp!720907 () Bool)

(declare-fun e!1457652 () Bool)

(assert (=> b!2275712 (= e!1457653 (and tp!720907 (inv!36627 (tag!4807 (rule!6639 (h!32460 (t!202981 tokens!456))))) (inv!36630 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) e!1457652))))

(assert (=> b!2275713 (= e!1457652 (and tp!720908 tp!720906))))

(assert (=> b!2275215 (= tp!720789 e!1457651)))

(assert (= b!2275712 b!2275713))

(assert (= b!2275711 b!2275712))

(assert (= b!2275710 b!2275711))

(assert (= (and b!2275215 ((_ is Cons!27059) (t!202981 tokens!456))) b!2275710))

(declare-fun m!2703915 () Bool)

(assert (=> b!2275711 m!2703915))

(declare-fun m!2703917 () Bool)

(assert (=> b!2275710 m!2703917))

(declare-fun m!2703919 () Bool)

(assert (=> b!2275712 m!2703919))

(declare-fun m!2703921 () Bool)

(assert (=> b!2275712 m!2703921))

(declare-fun b!2275715 () Bool)

(declare-fun e!1457654 () Bool)

(declare-fun tp!720912 () Bool)

(declare-fun tp!720914 () Bool)

(assert (=> b!2275715 (= e!1457654 (and tp!720912 tp!720914))))

(declare-fun b!2275714 () Bool)

(assert (=> b!2275714 (= e!1457654 tp_is_empty!10551)))

(declare-fun b!2275716 () Bool)

(declare-fun tp!720911 () Bool)

(assert (=> b!2275716 (= e!1457654 tp!720911)))

(assert (=> b!2275202 (= tp!720794 e!1457654)))

(declare-fun b!2275717 () Bool)

(declare-fun tp!720910 () Bool)

(declare-fun tp!720913 () Bool)

(assert (=> b!2275717 (= e!1457654 (and tp!720910 tp!720913))))

(assert (= (and b!2275202 ((_ is ElementMatch!6665) (regex!4317 (rule!6639 (h!32460 tokens!456))))) b!2275714))

(assert (= (and b!2275202 ((_ is Concat!11145) (regex!4317 (rule!6639 (h!32460 tokens!456))))) b!2275715))

(assert (= (and b!2275202 ((_ is Star!6665) (regex!4317 (rule!6639 (h!32460 tokens!456))))) b!2275716))

(assert (= (and b!2275202 ((_ is Union!6665) (regex!4317 (rule!6639 (h!32460 tokens!456))))) b!2275717))

(declare-fun b!2275719 () Bool)

(declare-fun e!1457655 () Bool)

(declare-fun tp!720917 () Bool)

(declare-fun tp!720919 () Bool)

(assert (=> b!2275719 (= e!1457655 (and tp!720917 tp!720919))))

(declare-fun b!2275718 () Bool)

(assert (=> b!2275718 (= e!1457655 tp_is_empty!10551)))

(declare-fun b!2275720 () Bool)

(declare-fun tp!720916 () Bool)

(assert (=> b!2275720 (= e!1457655 tp!720916)))

(assert (=> b!2275211 (= tp!720782 e!1457655)))

(declare-fun b!2275721 () Bool)

(declare-fun tp!720915 () Bool)

(declare-fun tp!720918 () Bool)

(assert (=> b!2275721 (= e!1457655 (and tp!720915 tp!720918))))

(assert (= (and b!2275211 ((_ is ElementMatch!6665) (regex!4317 (h!32461 rules!1750)))) b!2275718))

(assert (= (and b!2275211 ((_ is Concat!11145) (regex!4317 (h!32461 rules!1750)))) b!2275719))

(assert (= (and b!2275211 ((_ is Star!6665) (regex!4317 (h!32461 rules!1750)))) b!2275720))

(assert (= (and b!2275211 ((_ is Union!6665) (regex!4317 (h!32461 rules!1750)))) b!2275721))

(declare-fun b!2275722 () Bool)

(declare-fun e!1457656 () Bool)

(declare-fun tp!720920 () Bool)

(assert (=> b!2275722 (= e!1457656 (and tp_is_empty!10551 tp!720920))))

(assert (=> b!2275198 (= tp!720787 e!1457656)))

(assert (= (and b!2275198 ((_ is Cons!27058) (t!202980 suffix!886))) b!2275722))

(declare-fun b!2275723 () Bool)

(declare-fun e!1457657 () Bool)

(declare-fun tp!720921 () Bool)

(assert (=> b!2275723 (= e!1457657 (and tp_is_empty!10551 tp!720921))))

(assert (=> b!2275199 (= tp!720797 e!1457657)))

(assert (= (and b!2275199 ((_ is Cons!27058) (t!202980 input!1722))) b!2275723))

(declare-fun b!2275734 () Bool)

(declare-fun b_free!67817 () Bool)

(declare-fun b_next!68521 () Bool)

(assert (=> b!2275734 (= b_free!67817 (not b_next!68521))))

(declare-fun tp!720933 () Bool)

(declare-fun b_and!179501 () Bool)

(assert (=> b!2275734 (= tp!720933 b_and!179501)))

(declare-fun b_free!67819 () Bool)

(declare-fun b_next!68523 () Bool)

(assert (=> b!2275734 (= b_free!67819 (not b_next!68523))))

(declare-fun t!203028 () Bool)

(declare-fun tb!135147 () Bool)

(assert (=> (and b!2275734 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!203028) tb!135147))

(declare-fun result!164794 () Bool)

(assert (= result!164794 result!164740))

(assert (=> b!2275349 t!203028))

(assert (=> d!673496 t!203028))

(declare-fun t!203030 () Bool)

(declare-fun tb!135149 () Bool)

(assert (=> (and b!2275734 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203030) tb!135149))

(declare-fun result!164796 () Bool)

(assert (= result!164796 result!164774))

(assert (=> d!673556 t!203030))

(declare-fun tp!720932 () Bool)

(declare-fun b_and!179503 () Bool)

(assert (=> b!2275734 (= tp!720932 (and (=> t!203028 result!164794) (=> t!203030 result!164796) b_and!179503))))

(declare-fun e!1457669 () Bool)

(assert (=> b!2275734 (= e!1457669 (and tp!720933 tp!720932))))

(declare-fun tp!720930 () Bool)

(declare-fun b!2275733 () Bool)

(declare-fun e!1457666 () Bool)

(assert (=> b!2275733 (= e!1457666 (and tp!720930 (inv!36627 (tag!4807 (h!32461 (t!202982 rules!1750)))) (inv!36630 (transformation!4317 (h!32461 (t!202982 rules!1750)))) e!1457669))))

(declare-fun b!2275732 () Bool)

(declare-fun e!1457667 () Bool)

(declare-fun tp!720931 () Bool)

(assert (=> b!2275732 (= e!1457667 (and e!1457666 tp!720931))))

(assert (=> b!2275208 (= tp!720793 e!1457667)))

(assert (= b!2275733 b!2275734))

(assert (= b!2275732 b!2275733))

(assert (= (and b!2275208 ((_ is Cons!27060) (t!202982 rules!1750))) b!2275732))

(declare-fun m!2703923 () Bool)

(assert (=> b!2275733 m!2703923))

(declare-fun m!2703925 () Bool)

(assert (=> b!2275733 m!2703925))

(declare-fun b_lambda!72477 () Bool)

(assert (= b_lambda!72465 (or (and b!2275713 b_free!67815 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275219 b_free!67795 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275200 b_free!67799 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275201 b_free!67803) (and b!2275734 b_free!67819 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275218 b_free!67791 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) b_lambda!72477)))

(declare-fun b_lambda!72479 () Bool)

(assert (= b_lambda!72469 (or (and b!2275713 b_free!67815 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275219 b_free!67795 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275200 b_free!67799 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275201 b_free!67803) (and b!2275734 b_free!67819 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) (and b!2275218 b_free!67791 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))))) b_lambda!72479)))

(check-sat (not b!2275431) (not b!2275722) tp_is_empty!10551 b_and!179437 (not b!2275680) (not b!2275350) (not b_next!68495) (not d!673502) (not b!2275665) (not b!2275711) (not b!2275669) (not b!2275318) (not b_next!68493) (not b!2275319) b_and!179489 (not b!2275382) (not d!673504) (not d!673486) (not b!2275366) (not d!673544) (not b!2275660) (not d!673438) (not b!2275336) (not b!2275733) (not b!2275668) (not d!673444) (not b!2275444) (not b!2275620) (not b!2275355) (not b!2275339) (not b_lambda!72475) (not d!673454) b_and!179495 (not b!2275697) (not b!2275410) (not d!673496) (not d!673448) (not d!673542) (not b!2275681) (not b!2275732) (not b!2275344) (not d!673450) (not b_next!68517) (not d!673460) (not b!2275675) (not b_next!68519) (not bm!136254) (not b!2275403) (not b!2275424) (not b!2275710) (not b!2275624) (not d!673550) (not b!2275661) (not b_next!68497) (not d!673554) (not b!2275716) (not b!2275432) (not b!2275719) (not b!2275695) (not d!673456) (not b!2275230) (not d!673500) (not b!2275312) (not b_lambda!72479) (not d!673494) (not b!2275694) (not d!673540) b_and!179499 (not b!2275698) (not b!2275337) (not b!2275367) (not b!2275720) b_and!179491 (not b!2275427) (not d!673472) (not b!2275433) (not b_next!68523) (not b!2275313) (not b_next!68521) b_and!179497 (not b!2275443) (not b!2275715) (not tb!135135) (not tb!135111) b_and!179493 (not b_lambda!72477) (not b_next!68501) (not b!2275429) (not b!2275314) (not b!2275343) b_and!179425 (not b!2275723) (not b!2275623) (not b!2275717) (not b!2275349) (not b!2275622) (not d!673400) (not b!2275320) (not b!2275667) (not b!2275428) (not b_next!68507) (not d!673458) (not bm!136263) b_and!179501 (not b!2275655) (not b_next!68505) (not b!2275325) (not b_next!68503) (not d!673558) (not b!2275365) b_and!179429 (not d!673552) (not d!673474) b_and!179433 (not b!2275316) (not b_next!68499) (not d!673404) (not b!2275721) (not b!2275378) b_and!179503 (not b!2275712) (not d!673492) (not b!2275315) (not d!673436) (not d!673556) (not b!2275619) (not b!2275699) (not b!2275626) (not b!2275323) (not b!2275693))
(check-sat b_and!179437 (not b_next!68495) (not b_next!68493) b_and!179489 b_and!179495 (not b_next!68517) (not b_next!68519) (not b_next!68497) b_and!179425 (not b_next!68499) b_and!179503 b_and!179499 b_and!179491 (not b_next!68523) (not b_next!68521) b_and!179497 b_and!179493 (not b_next!68501) (not b_next!68507) b_and!179501 (not b_next!68505) (not b_next!68503) b_and!179429 b_and!179433)
(get-model)

(declare-fun d!673564 () Bool)

(assert (=> d!673564 true))

(declare-fun lambda!85580 () Int)

(declare-fun order!15099 () Int)

(declare-fun order!15097 () Int)

(declare-fun dynLambda!11744 (Int Int) Int)

(declare-fun dynLambda!11745 (Int Int) Int)

(assert (=> d!673564 (< (dynLambda!11744 order!15097 (toChars!5950 (transformation!4317 r!2363))) (dynLambda!11745 order!15099 lambda!85580))))

(assert (=> d!673564 true))

(declare-fun order!15101 () Int)

(declare-fun dynLambda!11746 (Int Int) Int)

(assert (=> d!673564 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 r!2363))) (dynLambda!11745 order!15099 lambda!85580))))

(declare-fun Forall!1082 (Int) Bool)

(assert (=> d!673564 (= (semiInverseModEq!1742 (toChars!5950 (transformation!4317 r!2363)) (toValue!6091 (transformation!4317 r!2363))) (Forall!1082 lambda!85580))))

(declare-fun bs!456301 () Bool)

(assert (= bs!456301 d!673564))

(declare-fun m!2703951 () Bool)

(assert (=> bs!456301 m!2703951))

(assert (=> d!673448 d!673564))

(declare-fun d!673594 () Bool)

(declare-fun nullableFct!442 (Regex!6665) Bool)

(assert (=> d!673594 (= (nullable!1839 (regex!4317 otherR!12)) (nullableFct!442 (regex!4317 otherR!12)))))

(declare-fun bs!456302 () Bool)

(assert (= bs!456302 d!673594))

(declare-fun m!2703953 () Bool)

(assert (=> bs!456302 m!2703953))

(assert (=> b!2275403 d!673594))

(declare-fun d!673596 () Bool)

(assert (=> d!673596 (= (head!4920 otherP!12) (h!32459 otherP!12))))

(assert (=> b!2275365 d!673596))

(declare-fun d!673598 () Bool)

(assert (=> d!673598 (= (head!4920 input!1722) (h!32459 input!1722))))

(assert (=> b!2275365 d!673598))

(declare-fun d!673600 () Bool)

(declare-fun res!972714 () Bool)

(declare-fun e!1457685 () Bool)

(assert (=> d!673600 (=> res!972714 e!1457685)))

(assert (=> d!673600 (= res!972714 ((_ is Nil!27060) rules!1750))))

(assert (=> d!673600 (= (noDuplicateTag!1583 thiss!16613 rules!1750 Nil!27061) e!1457685)))

(declare-fun b!2275760 () Bool)

(declare-fun e!1457686 () Bool)

(assert (=> b!2275760 (= e!1457685 e!1457686)))

(declare-fun res!972715 () Bool)

(assert (=> b!2275760 (=> (not res!972715) (not e!1457686))))

(declare-fun contains!4686 (List!27155 String!29499) Bool)

(assert (=> b!2275760 (= res!972715 (not (contains!4686 Nil!27061 (tag!4807 (h!32461 rules!1750)))))))

(declare-fun b!2275761 () Bool)

(assert (=> b!2275761 (= e!1457686 (noDuplicateTag!1583 thiss!16613 (t!202982 rules!1750) (Cons!27061 (tag!4807 (h!32461 rules!1750)) Nil!27061)))))

(assert (= (and d!673600 (not res!972714)) b!2275760))

(assert (= (and b!2275760 res!972715) b!2275761))

(declare-fun m!2703955 () Bool)

(assert (=> b!2275760 m!2703955))

(declare-fun m!2703957 () Bool)

(assert (=> b!2275761 m!2703957))

(assert (=> b!2275323 d!673600))

(declare-fun b!2275763 () Bool)

(declare-fun e!1457687 () Int)

(declare-fun e!1457688 () Int)

(assert (=> b!2275763 (= e!1457687 e!1457688)))

(declare-fun c!361228 () Bool)

(assert (=> b!2275763 (= c!361228 (and ((_ is Cons!27060) (t!202982 rules!1750)) (not (= (h!32461 (t!202982 rules!1750)) otherR!12))))))

(declare-fun b!2275764 () Bool)

(assert (=> b!2275764 (= e!1457688 (+ 1 (getIndex!330 (t!202982 (t!202982 rules!1750)) otherR!12)))))

(declare-fun b!2275765 () Bool)

(assert (=> b!2275765 (= e!1457688 (- 1))))

(declare-fun b!2275762 () Bool)

(assert (=> b!2275762 (= e!1457687 0)))

(declare-fun d!673602 () Bool)

(declare-fun lt!844974 () Int)

(assert (=> d!673602 (>= lt!844974 0)))

(assert (=> d!673602 (= lt!844974 e!1457687)))

(declare-fun c!361227 () Bool)

(assert (=> d!673602 (= c!361227 (and ((_ is Cons!27060) (t!202982 rules!1750)) (= (h!32461 (t!202982 rules!1750)) otherR!12)))))

(assert (=> d!673602 (contains!4685 (t!202982 rules!1750) otherR!12)))

(assert (=> d!673602 (= (getIndex!330 (t!202982 rules!1750) otherR!12) lt!844974)))

(assert (= (and d!673602 c!361227) b!2275762))

(assert (= (and d!673602 (not c!361227)) b!2275763))

(assert (= (and b!2275763 c!361228) b!2275764))

(assert (= (and b!2275763 (not c!361228)) b!2275765))

(declare-fun m!2703959 () Bool)

(assert (=> b!2275764 m!2703959))

(assert (=> d!673602 m!2703511))

(assert (=> b!2275382 d!673602))

(declare-fun b!2275766 () Bool)

(declare-fun e!1457689 () Bool)

(assert (=> b!2275766 (= e!1457689 (inv!15 (value!136854 (h!32460 (t!202981 tokens!456)))))))

(declare-fun b!2275767 () Bool)

(declare-fun e!1457690 () Bool)

(assert (=> b!2275767 (= e!1457690 (inv!17 (value!136854 (h!32460 (t!202981 tokens!456)))))))

(declare-fun d!673604 () Bool)

(declare-fun c!361230 () Bool)

(assert (=> d!673604 (= c!361230 ((_ is IntegerValue!13437) (value!136854 (h!32460 (t!202981 tokens!456)))))))

(declare-fun e!1457691 () Bool)

(assert (=> d!673604 (= (inv!21 (value!136854 (h!32460 (t!202981 tokens!456)))) e!1457691)))

(declare-fun b!2275768 () Bool)

(declare-fun res!972716 () Bool)

(assert (=> b!2275768 (=> res!972716 e!1457689)))

(assert (=> b!2275768 (= res!972716 (not ((_ is IntegerValue!13439) (value!136854 (h!32460 (t!202981 tokens!456))))))))

(assert (=> b!2275768 (= e!1457690 e!1457689)))

(declare-fun b!2275769 () Bool)

(assert (=> b!2275769 (= e!1457691 (inv!16 (value!136854 (h!32460 (t!202981 tokens!456)))))))

(declare-fun b!2275770 () Bool)

(assert (=> b!2275770 (= e!1457691 e!1457690)))

(declare-fun c!361229 () Bool)

(assert (=> b!2275770 (= c!361229 ((_ is IntegerValue!13438) (value!136854 (h!32460 (t!202981 tokens!456)))))))

(assert (= (and d!673604 c!361230) b!2275769))

(assert (= (and d!673604 (not c!361230)) b!2275770))

(assert (= (and b!2275770 c!361229) b!2275767))

(assert (= (and b!2275770 (not c!361229)) b!2275768))

(assert (= (and b!2275768 (not res!972716)) b!2275766))

(declare-fun m!2703961 () Bool)

(assert (=> b!2275766 m!2703961))

(declare-fun m!2703963 () Bool)

(assert (=> b!2275767 m!2703963))

(declare-fun m!2703965 () Bool)

(assert (=> b!2275769 m!2703965))

(assert (=> b!2275711 d!673604))

(declare-fun d!673606 () Bool)

(assert (=> d!673606 true))

(declare-fun lambda!85583 () Int)

(declare-fun order!15103 () Int)

(declare-fun dynLambda!11747 (Int Int) Int)

(assert (=> d!673606 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (dynLambda!11747 order!15103 lambda!85583))))

(declare-fun Forall2!699 (Int) Bool)

(assert (=> d!673606 (= (equivClasses!1661 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (Forall2!699 lambda!85583))))

(declare-fun bs!456303 () Bool)

(assert (= bs!456303 d!673606))

(declare-fun m!2703967 () Bool)

(assert (=> bs!456303 m!2703967))

(assert (=> b!2275410 d!673606))

(declare-fun d!673608 () Bool)

(declare-fun isBalanced!2672 (Conc!8782) Bool)

(assert (=> d!673608 (= (inv!36635 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))) (isBalanced!2672 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))))))

(declare-fun bs!456304 () Bool)

(assert (= bs!456304 d!673608))

(declare-fun m!2703969 () Bool)

(assert (=> bs!456304 m!2703969))

(assert (=> tb!135135 d!673608))

(declare-fun d!673610 () Bool)

(declare-fun lt!844975 () Int)

(assert (=> d!673610 (>= lt!844975 0)))

(declare-fun e!1457694 () Int)

(assert (=> d!673610 (= lt!844975 e!1457694)))

(declare-fun c!361231 () Bool)

(assert (=> d!673610 (= c!361231 ((_ is Nil!27058) lt!844919))))

(assert (=> d!673610 (= (size!21260 lt!844919) lt!844975)))

(declare-fun b!2275775 () Bool)

(assert (=> b!2275775 (= e!1457694 0)))

(declare-fun b!2275776 () Bool)

(assert (=> b!2275776 (= e!1457694 (+ 1 (size!21260 (t!202980 lt!844919))))))

(assert (= (and d!673610 c!361231) b!2275775))

(assert (= (and d!673610 (not c!361231)) b!2275776))

(declare-fun m!2703971 () Bool)

(assert (=> b!2275776 m!2703971))

(assert (=> b!2275444 d!673610))

(declare-fun d!673612 () Bool)

(declare-fun lt!844976 () Int)

(assert (=> d!673612 (>= lt!844976 0)))

(declare-fun e!1457695 () Int)

(assert (=> d!673612 (= lt!844976 e!1457695)))

(declare-fun c!361232 () Bool)

(assert (=> d!673612 (= c!361232 ((_ is Nil!27058) lt!844846))))

(assert (=> d!673612 (= (size!21260 lt!844846) lt!844976)))

(declare-fun b!2275777 () Bool)

(assert (=> b!2275777 (= e!1457695 0)))

(declare-fun b!2275778 () Bool)

(assert (=> b!2275778 (= e!1457695 (+ 1 (size!21260 (t!202980 lt!844846))))))

(assert (= (and d!673612 c!361232) b!2275777))

(assert (= (and d!673612 (not c!361232)) b!2275778))

(declare-fun m!2703973 () Bool)

(assert (=> b!2275778 m!2703973))

(assert (=> b!2275444 d!673612))

(declare-fun d!673614 () Bool)

(declare-fun lt!844977 () Int)

(assert (=> d!673614 (>= lt!844977 0)))

(declare-fun e!1457696 () Int)

(assert (=> d!673614 (= lt!844977 e!1457696)))

(declare-fun c!361233 () Bool)

(assert (=> d!673614 (= c!361233 ((_ is Nil!27058) (_2!15889 lt!844849)))))

(assert (=> d!673614 (= (size!21260 (_2!15889 lt!844849)) lt!844977)))

(declare-fun b!2275779 () Bool)

(assert (=> b!2275779 (= e!1457696 0)))

(declare-fun b!2275780 () Bool)

(assert (=> b!2275780 (= e!1457696 (+ 1 (size!21260 (t!202980 (_2!15889 lt!844849)))))))

(assert (= (and d!673614 c!361233) b!2275779))

(assert (= (and d!673614 (not c!361233)) b!2275780))

(declare-fun m!2703975 () Bool)

(assert (=> b!2275780 m!2703975))

(assert (=> b!2275444 d!673614))

(declare-fun bs!456305 () Bool)

(declare-fun d!673616 () Bool)

(assert (= bs!456305 (and d!673616 d!673564)))

(declare-fun lambda!85584 () Int)

(assert (=> bs!456305 (= (and (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 r!2363))) (= (toValue!6091 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 r!2363)))) (= lambda!85584 lambda!85580))))

(assert (=> d!673616 true))

(assert (=> d!673616 (< (dynLambda!11744 order!15097 (toChars!5950 (transformation!4317 (h!32461 rules!1750)))) (dynLambda!11745 order!15099 lambda!85584))))

(assert (=> d!673616 true))

(assert (=> d!673616 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 (h!32461 rules!1750)))) (dynLambda!11745 order!15099 lambda!85584))))

(assert (=> d!673616 (= (semiInverseModEq!1742 (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 (h!32461 rules!1750)))) (Forall!1082 lambda!85584))))

(declare-fun bs!456306 () Bool)

(assert (= bs!456306 d!673616))

(declare-fun m!2703977 () Bool)

(assert (=> bs!456306 m!2703977))

(assert (=> d!673550 d!673616))

(declare-fun d!673618 () Bool)

(declare-fun lt!844978 () Bool)

(assert (=> d!673618 (= lt!844978 (select (content!3609 (t!202982 rules!1750)) otherR!12))))

(declare-fun e!1457697 () Bool)

(assert (=> d!673618 (= lt!844978 e!1457697)))

(declare-fun res!972719 () Bool)

(assert (=> d!673618 (=> (not res!972719) (not e!1457697))))

(assert (=> d!673618 (= res!972719 ((_ is Cons!27060) (t!202982 rules!1750)))))

(assert (=> d!673618 (= (contains!4685 (t!202982 rules!1750) otherR!12) lt!844978)))

(declare-fun b!2275781 () Bool)

(declare-fun e!1457698 () Bool)

(assert (=> b!2275781 (= e!1457697 e!1457698)))

(declare-fun res!972720 () Bool)

(assert (=> b!2275781 (=> res!972720 e!1457698)))

(assert (=> b!2275781 (= res!972720 (= (h!32461 (t!202982 rules!1750)) otherR!12))))

(declare-fun b!2275782 () Bool)

(assert (=> b!2275782 (= e!1457698 (contains!4685 (t!202982 (t!202982 rules!1750)) otherR!12))))

(assert (= (and d!673618 res!972719) b!2275781))

(assert (= (and b!2275781 (not res!972720)) b!2275782))

(declare-fun m!2703979 () Bool)

(assert (=> d!673618 m!2703979))

(declare-fun m!2703981 () Bool)

(assert (=> d!673618 m!2703981))

(declare-fun m!2703983 () Bool)

(assert (=> b!2275782 m!2703983))

(assert (=> b!2275230 d!673618))

(declare-fun d!673620 () Bool)

(assert (=> d!673620 (= (nullable!1839 (regex!4317 r!2363)) (nullableFct!442 (regex!4317 r!2363)))))

(declare-fun bs!456307 () Bool)

(assert (= bs!456307 d!673620))

(declare-fun m!2703985 () Bool)

(assert (=> bs!456307 m!2703985))

(assert (=> b!2275624 d!673620))

(declare-fun d!673622 () Bool)

(declare-fun lt!844979 () List!27152)

(assert (=> d!673622 (= (++!6601 (t!202980 lt!844846) lt!844979) (tail!3283 input!1722))))

(declare-fun e!1457699 () List!27152)

(assert (=> d!673622 (= lt!844979 e!1457699)))

(declare-fun c!361234 () Bool)

(assert (=> d!673622 (= c!361234 ((_ is Cons!27058) (t!202980 lt!844846)))))

(assert (=> d!673622 (>= (size!21260 (tail!3283 input!1722)) (size!21260 (t!202980 lt!844846)))))

(assert (=> d!673622 (= (getSuffix!1098 (tail!3283 input!1722) (t!202980 lt!844846)) lt!844979)))

(declare-fun b!2275783 () Bool)

(assert (=> b!2275783 (= e!1457699 (getSuffix!1098 (tail!3283 (tail!3283 input!1722)) (t!202980 (t!202980 lt!844846))))))

(declare-fun b!2275784 () Bool)

(assert (=> b!2275784 (= e!1457699 (tail!3283 input!1722))))

(assert (= (and d!673622 c!361234) b!2275783))

(assert (= (and d!673622 (not c!361234)) b!2275784))

(declare-fun m!2703987 () Bool)

(assert (=> d!673622 m!2703987))

(assert (=> d!673622 m!2703657))

(declare-fun m!2703989 () Bool)

(assert (=> d!673622 m!2703989))

(assert (=> d!673622 m!2703973))

(assert (=> b!2275783 m!2703657))

(declare-fun m!2703991 () Bool)

(assert (=> b!2275783 m!2703991))

(assert (=> b!2275783 m!2703991))

(declare-fun m!2703993 () Bool)

(assert (=> b!2275783 m!2703993))

(assert (=> b!2275424 d!673622))

(declare-fun d!673624 () Bool)

(assert (=> d!673624 (= (tail!3283 input!1722) (t!202980 input!1722))))

(assert (=> b!2275424 d!673624))

(declare-fun bs!456308 () Bool)

(declare-fun d!673626 () Bool)

(assert (= bs!456308 (and d!673626 d!673606)))

(declare-fun lambda!85585 () Int)

(assert (=> bs!456308 (= (= (toValue!6091 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (= lambda!85585 lambda!85583))))

(assert (=> d!673626 true))

(assert (=> d!673626 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 otherR!12))) (dynLambda!11747 order!15103 lambda!85585))))

(assert (=> d!673626 (= (equivClasses!1661 (toChars!5950 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 otherR!12))) (Forall2!699 lambda!85585))))

(declare-fun bs!456309 () Bool)

(assert (= bs!456309 d!673626))

(declare-fun m!2703995 () Bool)

(assert (=> bs!456309 m!2703995))

(assert (=> b!2275343 d!673626))

(declare-fun b!2275793 () Bool)

(declare-fun e!1457704 () List!27153)

(assert (=> b!2275793 (= e!1457704 Nil!27059)))

(declare-fun b!2275795 () Bool)

(declare-fun e!1457705 () List!27153)

(declare-fun list!10522 (IArray!17571) List!27153)

(assert (=> b!2275795 (= e!1457705 (list!10522 (xs!11725 (c!361144 (_1!15890 lt!844847)))))))

(declare-fun b!2275794 () Bool)

(assert (=> b!2275794 (= e!1457704 e!1457705)))

(declare-fun c!361240 () Bool)

(assert (=> b!2275794 (= c!361240 ((_ is Leaf!12927) (c!361144 (_1!15890 lt!844847))))))

(declare-fun b!2275796 () Bool)

(declare-fun ++!6602 (List!27153 List!27153) List!27153)

(assert (=> b!2275796 (= e!1457705 (++!6602 (list!10521 (left!20530 (c!361144 (_1!15890 lt!844847)))) (list!10521 (right!20860 (c!361144 (_1!15890 lt!844847))))))))

(declare-fun d!673628 () Bool)

(declare-fun c!361239 () Bool)

(assert (=> d!673628 (= c!361239 ((_ is Empty!8783) (c!361144 (_1!15890 lt!844847))))))

(assert (=> d!673628 (= (list!10521 (c!361144 (_1!15890 lt!844847))) e!1457704)))

(assert (= (and d!673628 c!361239) b!2275793))

(assert (= (and d!673628 (not c!361239)) b!2275794))

(assert (= (and b!2275794 c!361240) b!2275795))

(assert (= (and b!2275794 (not c!361240)) b!2275796))

(declare-fun m!2703997 () Bool)

(assert (=> b!2275795 m!2703997))

(declare-fun m!2703999 () Bool)

(assert (=> b!2275796 m!2703999))

(declare-fun m!2704001 () Bool)

(assert (=> b!2275796 m!2704001))

(assert (=> b!2275796 m!2703999))

(assert (=> b!2275796 m!2704001))

(declare-fun m!2704003 () Bool)

(assert (=> b!2275796 m!2704003))

(assert (=> d!673500 d!673628))

(declare-fun b!2275815 () Bool)

(declare-fun e!1457724 () Bool)

(declare-fun call!136277 () Bool)

(assert (=> b!2275815 (= e!1457724 call!136277)))

(declare-fun b!2275816 () Bool)

(declare-fun e!1457723 () Bool)

(declare-fun e!1457726 () Bool)

(assert (=> b!2275816 (= e!1457723 e!1457726)))

(declare-fun c!361246 () Bool)

(assert (=> b!2275816 (= c!361246 ((_ is Union!6665) (regex!4317 r!2363)))))

(declare-fun bm!136270 () Bool)

(declare-fun call!136275 () Bool)

(assert (=> bm!136270 (= call!136275 (validRegex!2501 (ite c!361246 (regOne!13843 (regex!4317 r!2363)) (regTwo!13842 (regex!4317 r!2363)))))))

(declare-fun b!2275817 () Bool)

(declare-fun e!1457722 () Bool)

(assert (=> b!2275817 (= e!1457723 e!1457722)))

(declare-fun res!972735 () Bool)

(assert (=> b!2275817 (= res!972735 (not (nullable!1839 (reg!6994 (regex!4317 r!2363)))))))

(assert (=> b!2275817 (=> (not res!972735) (not e!1457722))))

(declare-fun b!2275818 () Bool)

(declare-fun e!1457721 () Bool)

(assert (=> b!2275818 (= e!1457721 e!1457723)))

(declare-fun c!361245 () Bool)

(assert (=> b!2275818 (= c!361245 ((_ is Star!6665) (regex!4317 r!2363)))))

(declare-fun d!673630 () Bool)

(declare-fun res!972731 () Bool)

(assert (=> d!673630 (=> res!972731 e!1457721)))

(assert (=> d!673630 (= res!972731 ((_ is ElementMatch!6665) (regex!4317 r!2363)))))

(assert (=> d!673630 (= (validRegex!2501 (regex!4317 r!2363)) e!1457721)))

(declare-fun bm!136271 () Bool)

(declare-fun call!136276 () Bool)

(assert (=> bm!136271 (= call!136277 call!136276)))

(declare-fun b!2275819 () Bool)

(declare-fun e!1457720 () Bool)

(declare-fun e!1457725 () Bool)

(assert (=> b!2275819 (= e!1457720 e!1457725)))

(declare-fun res!972732 () Bool)

(assert (=> b!2275819 (=> (not res!972732) (not e!1457725))))

(assert (=> b!2275819 (= res!972732 call!136277)))

(declare-fun b!2275820 () Bool)

(assert (=> b!2275820 (= e!1457722 call!136276)))

(declare-fun b!2275821 () Bool)

(declare-fun res!972734 () Bool)

(assert (=> b!2275821 (=> res!972734 e!1457720)))

(assert (=> b!2275821 (= res!972734 (not ((_ is Concat!11145) (regex!4317 r!2363))))))

(assert (=> b!2275821 (= e!1457726 e!1457720)))

(declare-fun b!2275822 () Bool)

(assert (=> b!2275822 (= e!1457725 call!136275)))

(declare-fun b!2275823 () Bool)

(declare-fun res!972733 () Bool)

(assert (=> b!2275823 (=> (not res!972733) (not e!1457724))))

(assert (=> b!2275823 (= res!972733 call!136275)))

(assert (=> b!2275823 (= e!1457726 e!1457724)))

(declare-fun bm!136272 () Bool)

(assert (=> bm!136272 (= call!136276 (validRegex!2501 (ite c!361245 (reg!6994 (regex!4317 r!2363)) (ite c!361246 (regTwo!13843 (regex!4317 r!2363)) (regOne!13842 (regex!4317 r!2363))))))))

(assert (= (and d!673630 (not res!972731)) b!2275818))

(assert (= (and b!2275818 c!361245) b!2275817))

(assert (= (and b!2275818 (not c!361245)) b!2275816))

(assert (= (and b!2275817 res!972735) b!2275820))

(assert (= (and b!2275816 c!361246) b!2275823))

(assert (= (and b!2275816 (not c!361246)) b!2275821))

(assert (= (and b!2275823 res!972733) b!2275815))

(assert (= (and b!2275821 (not res!972734)) b!2275819))

(assert (= (and b!2275819 res!972732) b!2275822))

(assert (= (or b!2275823 b!2275822) bm!136270))

(assert (= (or b!2275815 b!2275819) bm!136271))

(assert (= (or b!2275820 bm!136271) bm!136272))

(declare-fun m!2704005 () Bool)

(assert (=> bm!136270 m!2704005))

(declare-fun m!2704007 () Bool)

(assert (=> b!2275817 m!2704007))

(declare-fun m!2704009 () Bool)

(assert (=> bm!136272 m!2704009))

(assert (=> d!673542 d!673630))

(declare-fun d!673632 () Bool)

(declare-fun c!361249 () Bool)

(assert (=> d!673632 (= c!361249 ((_ is Nil!27060) rules!1750))))

(declare-fun e!1457729 () (InoxSet Rule!8434))

(assert (=> d!673632 (= (content!3609 rules!1750) e!1457729)))

(declare-fun b!2275828 () Bool)

(assert (=> b!2275828 (= e!1457729 ((as const (Array Rule!8434 Bool)) false))))

(declare-fun b!2275829 () Bool)

(assert (=> b!2275829 (= e!1457729 ((_ map or) (store ((as const (Array Rule!8434 Bool)) false) (h!32461 rules!1750) true) (content!3609 (t!202982 rules!1750))))))

(assert (= (and d!673632 c!361249) b!2275828))

(assert (= (and d!673632 (not c!361249)) b!2275829))

(declare-fun m!2704011 () Bool)

(assert (=> b!2275829 m!2704011))

(assert (=> b!2275829 m!2703979))

(assert (=> d!673400 d!673632))

(declare-fun d!673634 () Bool)

(assert (=> d!673634 (= (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))) (list!10520 (c!361142 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))))))

(declare-fun bs!456310 () Bool)

(assert (= bs!456310 d!673634))

(declare-fun m!2704013 () Bool)

(assert (=> bs!456310 m!2704013))

(assert (=> b!2275320 d!673634))

(declare-fun d!673636 () Bool)

(declare-fun lt!844980 () BalanceConc!17292)

(assert (=> d!673636 (= (list!10516 lt!844980) (originalCharacters!5087 (_1!15889 (get!8155 lt!844883))))))

(assert (=> d!673636 (= lt!844980 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))) (value!136854 (_1!15889 (get!8155 lt!844883)))))))

(assert (=> d!673636 (= (charsOf!2705 (_1!15889 (get!8155 lt!844883))) lt!844980)))

(declare-fun b_lambda!72481 () Bool)

(assert (=> (not b_lambda!72481) (not d!673636)))

(declare-fun t!203036 () Bool)

(declare-fun tb!135151 () Bool)

(assert (=> (and b!2275219 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203036) tb!135151))

(declare-fun b!2275830 () Bool)

(declare-fun e!1457730 () Bool)

(declare-fun tp!720934 () Bool)

(assert (=> b!2275830 (= e!1457730 (and (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))) (value!136854 (_1!15889 (get!8155 lt!844883)))))) tp!720934))))

(declare-fun result!164798 () Bool)

(assert (=> tb!135151 (= result!164798 (and (inv!36635 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))) (value!136854 (_1!15889 (get!8155 lt!844883))))) e!1457730))))

(assert (= tb!135151 b!2275830))

(declare-fun m!2704015 () Bool)

(assert (=> b!2275830 m!2704015))

(declare-fun m!2704017 () Bool)

(assert (=> tb!135151 m!2704017))

(assert (=> d!673636 t!203036))

(declare-fun b_and!179505 () Bool)

(assert (= b_and!179491 (and (=> t!203036 result!164798) b_and!179505)))

(declare-fun t!203038 () Bool)

(declare-fun tb!135153 () Bool)

(assert (=> (and b!2275200 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203038) tb!135153))

(declare-fun result!164800 () Bool)

(assert (= result!164800 result!164798))

(assert (=> d!673636 t!203038))

(declare-fun b_and!179507 () Bool)

(assert (= b_and!179493 (and (=> t!203038 result!164800) b_and!179507)))

(declare-fun tb!135155 () Bool)

(declare-fun t!203040 () Bool)

(assert (=> (and b!2275734 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203040) tb!135155))

(declare-fun result!164802 () Bool)

(assert (= result!164802 result!164798))

(assert (=> d!673636 t!203040))

(declare-fun b_and!179509 () Bool)

(assert (= b_and!179503 (and (=> t!203040 result!164802) b_and!179509)))

(declare-fun tb!135157 () Bool)

(declare-fun t!203042 () Bool)

(assert (=> (and b!2275201 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203042) tb!135157))

(declare-fun result!164804 () Bool)

(assert (= result!164804 result!164798))

(assert (=> d!673636 t!203042))

(declare-fun b_and!179511 () Bool)

(assert (= b_and!179495 (and (=> t!203042 result!164804) b_and!179511)))

(declare-fun tb!135159 () Bool)

(declare-fun t!203044 () Bool)

(assert (=> (and b!2275218 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203044) tb!135159))

(declare-fun result!164806 () Bool)

(assert (= result!164806 result!164798))

(assert (=> d!673636 t!203044))

(declare-fun b_and!179513 () Bool)

(assert (= b_and!179489 (and (=> t!203044 result!164806) b_and!179513)))

(declare-fun tb!135161 () Bool)

(declare-fun t!203046 () Bool)

(assert (=> (and b!2275713 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203046) tb!135161))

(declare-fun result!164808 () Bool)

(assert (= result!164808 result!164798))

(assert (=> d!673636 t!203046))

(declare-fun b_and!179515 () Bool)

(assert (= b_and!179499 (and (=> t!203046 result!164808) b_and!179515)))

(declare-fun m!2704019 () Bool)

(assert (=> d!673636 m!2704019))

(declare-fun m!2704021 () Bool)

(assert (=> d!673636 m!2704021))

(assert (=> b!2275320 d!673636))

(declare-fun d!673638 () Bool)

(assert (=> d!673638 (= (get!8155 lt!844883) (v!30352 lt!844883))))

(assert (=> b!2275320 d!673638))

(declare-fun lt!844981 () List!27152)

(declare-fun b!2275834 () Bool)

(declare-fun e!1457732 () Bool)

(assert (=> b!2275834 (= e!1457732 (or (not (= lt!844911 Nil!27058)) (= lt!844981 lt!844846)))))

(declare-fun b!2275831 () Bool)

(declare-fun e!1457731 () List!27152)

(assert (=> b!2275831 (= e!1457731 lt!844911)))

(declare-fun b!2275832 () Bool)

(assert (=> b!2275832 (= e!1457731 (Cons!27058 (h!32459 lt!844846) (++!6601 (t!202980 lt!844846) lt!844911)))))

(declare-fun d!673640 () Bool)

(assert (=> d!673640 e!1457732))

(declare-fun res!972736 () Bool)

(assert (=> d!673640 (=> (not res!972736) (not e!1457732))))

(assert (=> d!673640 (= res!972736 (= (content!3611 lt!844981) ((_ map or) (content!3611 lt!844846) (content!3611 lt!844911))))))

(assert (=> d!673640 (= lt!844981 e!1457731)))

(declare-fun c!361250 () Bool)

(assert (=> d!673640 (= c!361250 ((_ is Nil!27058) lt!844846))))

(assert (=> d!673640 (= (++!6601 lt!844846 lt!844911) lt!844981)))

(declare-fun b!2275833 () Bool)

(declare-fun res!972737 () Bool)

(assert (=> b!2275833 (=> (not res!972737) (not e!1457732))))

(assert (=> b!2275833 (= res!972737 (= (size!21260 lt!844981) (+ (size!21260 lt!844846) (size!21260 lt!844911))))))

(assert (= (and d!673640 c!361250) b!2275831))

(assert (= (and d!673640 (not c!361250)) b!2275832))

(assert (= (and d!673640 res!972736) b!2275833))

(assert (= (and b!2275833 res!972737) b!2275834))

(declare-fun m!2704023 () Bool)

(assert (=> b!2275832 m!2704023))

(declare-fun m!2704025 () Bool)

(assert (=> d!673640 m!2704025))

(assert (=> d!673640 m!2703747))

(declare-fun m!2704027 () Bool)

(assert (=> d!673640 m!2704027))

(declare-fun m!2704029 () Bool)

(assert (=> b!2275833 m!2704029))

(assert (=> b!2275833 m!2703721))

(declare-fun m!2704031 () Bool)

(assert (=> b!2275833 m!2704031))

(assert (=> d!673474 d!673640))

(declare-fun d!673642 () Bool)

(declare-fun lt!844982 () Int)

(assert (=> d!673642 (>= lt!844982 0)))

(declare-fun e!1457733 () Int)

(assert (=> d!673642 (= lt!844982 e!1457733)))

(declare-fun c!361251 () Bool)

(assert (=> d!673642 (= c!361251 ((_ is Nil!27058) input!1722))))

(assert (=> d!673642 (= (size!21260 input!1722) lt!844982)))

(declare-fun b!2275835 () Bool)

(assert (=> b!2275835 (= e!1457733 0)))

(declare-fun b!2275836 () Bool)

(assert (=> b!2275836 (= e!1457733 (+ 1 (size!21260 (t!202980 input!1722))))))

(assert (= (and d!673642 c!361251) b!2275835))

(assert (= (and d!673642 (not c!361251)) b!2275836))

(declare-fun m!2704033 () Bool)

(assert (=> b!2275836 m!2704033))

(assert (=> d!673474 d!673642))

(assert (=> d!673474 d!673612))

(declare-fun b!2275838 () Bool)

(declare-fun res!972743 () Bool)

(declare-fun e!1457735 () Bool)

(assert (=> b!2275838 (=> res!972743 e!1457735)))

(declare-fun e!1457738 () Bool)

(assert (=> b!2275838 (= res!972743 e!1457738)))

(declare-fun res!972742 () Bool)

(assert (=> b!2275838 (=> (not res!972742) (not e!1457738))))

(declare-fun lt!844983 () Bool)

(assert (=> b!2275838 (= res!972742 lt!844983)))

(declare-fun bm!136273 () Bool)

(declare-fun call!136278 () Bool)

(assert (=> bm!136273 (= call!136278 (isEmpty!15348 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(declare-fun b!2275839 () Bool)

(declare-fun e!1457740 () Bool)

(assert (=> b!2275839 (= e!1457735 e!1457740)))

(declare-fun res!972739 () Bool)

(assert (=> b!2275839 (=> (not res!972739) (not e!1457740))))

(assert (=> b!2275839 (= res!972739 (not lt!844983))))

(declare-fun b!2275840 () Bool)

(declare-fun e!1457737 () Bool)

(assert (=> b!2275840 (= e!1457740 e!1457737)))

(declare-fun res!972738 () Bool)

(assert (=> b!2275840 (=> res!972738 e!1457737)))

(assert (=> b!2275840 (= res!972738 call!136278)))

(declare-fun b!2275841 () Bool)

(declare-fun e!1457736 () Bool)

(assert (=> b!2275841 (= e!1457736 (not lt!844983))))

(declare-fun b!2275842 () Bool)

(declare-fun res!972744 () Bool)

(assert (=> b!2275842 (=> res!972744 e!1457737)))

(assert (=> b!2275842 (= res!972744 (not (isEmpty!15348 (tail!3283 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))))

(declare-fun b!2275843 () Bool)

(declare-fun e!1457739 () Bool)

(assert (=> b!2275843 (= e!1457739 (nullable!1839 (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))

(declare-fun b!2275844 () Bool)

(declare-fun e!1457734 () Bool)

(assert (=> b!2275844 (= e!1457734 e!1457736)))

(declare-fun c!361254 () Bool)

(assert (=> b!2275844 (= c!361254 ((_ is EmptyLang!6665) (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))

(declare-fun b!2275845 () Bool)

(assert (=> b!2275845 (= e!1457734 (= lt!844983 call!136278))))

(declare-fun b!2275846 () Bool)

(declare-fun res!972741 () Bool)

(assert (=> b!2275846 (=> res!972741 e!1457735)))

(assert (=> b!2275846 (= res!972741 (not ((_ is ElementMatch!6665) (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))))

(assert (=> b!2275846 (= e!1457736 e!1457735)))

(declare-fun b!2275847 () Bool)

(declare-fun res!972745 () Bool)

(assert (=> b!2275847 (=> (not res!972745) (not e!1457738))))

(assert (=> b!2275847 (= res!972745 (isEmpty!15348 (tail!3283 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))

(declare-fun b!2275848 () Bool)

(declare-fun res!972740 () Bool)

(assert (=> b!2275848 (=> (not res!972740) (not e!1457738))))

(assert (=> b!2275848 (= res!972740 (not call!136278))))

(declare-fun d!673644 () Bool)

(assert (=> d!673644 e!1457734))

(declare-fun c!361253 () Bool)

(assert (=> d!673644 (= c!361253 ((_ is EmptyExpr!6665) (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))

(assert (=> d!673644 (= lt!844983 e!1457739)))

(declare-fun c!361252 () Bool)

(assert (=> d!673644 (= c!361252 (isEmpty!15348 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(assert (=> d!673644 (validRegex!2501 (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(assert (=> d!673644 (= (matchR!2922 (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) lt!844983)))

(declare-fun b!2275837 () Bool)

(assert (=> b!2275837 (= e!1457737 (not (= (head!4920 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) (c!361143 (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))))

(declare-fun b!2275849 () Bool)

(assert (=> b!2275849 (= e!1457738 (= (head!4920 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) (c!361143 (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))))

(declare-fun b!2275850 () Bool)

(assert (=> b!2275850 (= e!1457739 (matchR!2922 (derivativeStep!1500 (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) (head!4920 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))) (tail!3283 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))

(assert (= (and d!673644 c!361252) b!2275843))

(assert (= (and d!673644 (not c!361252)) b!2275850))

(assert (= (and d!673644 c!361253) b!2275845))

(assert (= (and d!673644 (not c!361253)) b!2275844))

(assert (= (and b!2275844 c!361254) b!2275841))

(assert (= (and b!2275844 (not c!361254)) b!2275846))

(assert (= (and b!2275846 (not res!972741)) b!2275838))

(assert (= (and b!2275838 res!972742) b!2275848))

(assert (= (and b!2275848 res!972740) b!2275847))

(assert (= (and b!2275847 res!972745) b!2275849))

(assert (= (and b!2275838 (not res!972743)) b!2275839))

(assert (= (and b!2275839 res!972739) b!2275840))

(assert (= (and b!2275840 (not res!972738)) b!2275842))

(assert (= (and b!2275842 (not res!972744)) b!2275837))

(assert (= (or b!2275845 b!2275840 b!2275848) bm!136273))

(assert (=> b!2275837 m!2703889))

(declare-fun m!2704035 () Bool)

(assert (=> b!2275837 m!2704035))

(assert (=> b!2275849 m!2703889))

(assert (=> b!2275849 m!2704035))

(assert (=> b!2275847 m!2703889))

(declare-fun m!2704037 () Bool)

(assert (=> b!2275847 m!2704037))

(assert (=> b!2275847 m!2704037))

(declare-fun m!2704039 () Bool)

(assert (=> b!2275847 m!2704039))

(assert (=> b!2275850 m!2703889))

(assert (=> b!2275850 m!2704035))

(assert (=> b!2275850 m!2703893))

(assert (=> b!2275850 m!2704035))

(declare-fun m!2704041 () Bool)

(assert (=> b!2275850 m!2704041))

(assert (=> b!2275850 m!2703889))

(assert (=> b!2275850 m!2704037))

(assert (=> b!2275850 m!2704041))

(assert (=> b!2275850 m!2704037))

(declare-fun m!2704043 () Bool)

(assert (=> b!2275850 m!2704043))

(assert (=> bm!136273 m!2703889))

(assert (=> bm!136273 m!2703891))

(assert (=> b!2275843 m!2703893))

(declare-fun m!2704045 () Bool)

(assert (=> b!2275843 m!2704045))

(assert (=> b!2275842 m!2703889))

(assert (=> b!2275842 m!2704037))

(assert (=> b!2275842 m!2704037))

(assert (=> b!2275842 m!2704039))

(assert (=> d!673644 m!2703889))

(assert (=> d!673644 m!2703891))

(assert (=> d!673644 m!2703893))

(declare-fun m!2704047 () Bool)

(assert (=> d!673644 m!2704047))

(assert (=> b!2275668 d!673644))

(declare-fun c!361268 () Bool)

(declare-fun bm!136282 () Bool)

(declare-fun call!136289 () Regex!6665)

(assert (=> bm!136282 (= call!136289 (derivativeStep!1500 (ite c!361268 (regOne!13843 (regex!4317 r!2363)) (regTwo!13842 (regex!4317 r!2363))) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(declare-fun b!2275871 () Bool)

(declare-fun e!1457752 () Regex!6665)

(declare-fun call!136287 () Regex!6665)

(assert (=> b!2275871 (= e!1457752 (Union!6665 call!136289 call!136287))))

(declare-fun bm!136283 () Bool)

(declare-fun c!361267 () Bool)

(assert (=> bm!136283 (= call!136287 (derivativeStep!1500 (ite c!361268 (regTwo!13843 (regex!4317 r!2363)) (ite c!361267 (reg!6994 (regex!4317 r!2363)) (regOne!13842 (regex!4317 r!2363)))) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(declare-fun b!2275872 () Bool)

(declare-fun e!1457755 () Regex!6665)

(declare-fun e!1457753 () Regex!6665)

(assert (=> b!2275872 (= e!1457755 e!1457753)))

(declare-fun c!361266 () Bool)

(assert (=> b!2275872 (= c!361266 ((_ is ElementMatch!6665) (regex!4317 r!2363)))))

(declare-fun d!673646 () Bool)

(declare-fun lt!844986 () Regex!6665)

(assert (=> d!673646 (validRegex!2501 lt!844986)))

(assert (=> d!673646 (= lt!844986 e!1457755)))

(declare-fun c!361265 () Bool)

(assert (=> d!673646 (= c!361265 (or ((_ is EmptyExpr!6665) (regex!4317 r!2363)) ((_ is EmptyLang!6665) (regex!4317 r!2363))))))

(assert (=> d!673646 (validRegex!2501 (regex!4317 r!2363))))

(assert (=> d!673646 (= (derivativeStep!1500 (regex!4317 r!2363) (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) lt!844986)))

(declare-fun bm!136284 () Bool)

(declare-fun call!136288 () Regex!6665)

(assert (=> bm!136284 (= call!136288 call!136287)))

(declare-fun b!2275873 () Bool)

(assert (=> b!2275873 (= c!361268 ((_ is Union!6665) (regex!4317 r!2363)))))

(assert (=> b!2275873 (= e!1457753 e!1457752)))

(declare-fun b!2275874 () Bool)

(assert (=> b!2275874 (= e!1457753 (ite (= (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))) (c!361143 (regex!4317 r!2363))) EmptyExpr!6665 EmptyLang!6665))))

(declare-fun b!2275875 () Bool)

(declare-fun e!1457754 () Regex!6665)

(assert (=> b!2275875 (= e!1457752 e!1457754)))

(assert (=> b!2275875 (= c!361267 ((_ is Star!6665) (regex!4317 r!2363)))))

(declare-fun b!2275876 () Bool)

(declare-fun c!361269 () Bool)

(assert (=> b!2275876 (= c!361269 (nullable!1839 (regOne!13842 (regex!4317 r!2363))))))

(declare-fun e!1457751 () Regex!6665)

(assert (=> b!2275876 (= e!1457754 e!1457751)))

(declare-fun call!136290 () Regex!6665)

(declare-fun b!2275877 () Bool)

(assert (=> b!2275877 (= e!1457751 (Union!6665 (Concat!11145 call!136290 (regTwo!13842 (regex!4317 r!2363))) call!136289))))

(declare-fun b!2275878 () Bool)

(assert (=> b!2275878 (= e!1457751 (Union!6665 (Concat!11145 call!136290 (regTwo!13842 (regex!4317 r!2363))) EmptyLang!6665))))

(declare-fun b!2275879 () Bool)

(assert (=> b!2275879 (= e!1457754 (Concat!11145 call!136288 (regex!4317 r!2363)))))

(declare-fun bm!136285 () Bool)

(assert (=> bm!136285 (= call!136290 call!136288)))

(declare-fun b!2275880 () Bool)

(assert (=> b!2275880 (= e!1457755 EmptyLang!6665)))

(assert (= (and d!673646 c!361265) b!2275880))

(assert (= (and d!673646 (not c!361265)) b!2275872))

(assert (= (and b!2275872 c!361266) b!2275874))

(assert (= (and b!2275872 (not c!361266)) b!2275873))

(assert (= (and b!2275873 c!361268) b!2275871))

(assert (= (and b!2275873 (not c!361268)) b!2275875))

(assert (= (and b!2275875 c!361267) b!2275879))

(assert (= (and b!2275875 (not c!361267)) b!2275876))

(assert (= (and b!2275876 c!361269) b!2275877))

(assert (= (and b!2275876 (not c!361269)) b!2275878))

(assert (= (or b!2275877 b!2275878) bm!136285))

(assert (= (or b!2275879 bm!136285) bm!136284))

(assert (= (or b!2275871 b!2275877) bm!136282))

(assert (= (or b!2275871 bm!136284) bm!136283))

(assert (=> bm!136282 m!2703887))

(declare-fun m!2704049 () Bool)

(assert (=> bm!136282 m!2704049))

(assert (=> bm!136283 m!2703887))

(declare-fun m!2704051 () Bool)

(assert (=> bm!136283 m!2704051))

(declare-fun m!2704053 () Bool)

(assert (=> d!673646 m!2704053))

(assert (=> d!673646 m!2703877))

(declare-fun m!2704055 () Bool)

(assert (=> b!2275876 m!2704055))

(assert (=> b!2275668 d!673646))

(declare-fun d!673648 () Bool)

(assert (=> d!673648 (= (head!4920 (list!10516 (charsOf!2705 (head!4918 tokens!456)))) (h!32459 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))

(assert (=> b!2275668 d!673648))

(declare-fun d!673650 () Bool)

(assert (=> d!673650 (= (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456)))) (t!202980 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))

(assert (=> b!2275668 d!673650))

(declare-fun d!673652 () Bool)

(declare-fun lt!844987 () Bool)

(assert (=> d!673652 (= lt!844987 (select (content!3609 (t!202982 rules!1750)) r!2363))))

(declare-fun e!1457756 () Bool)

(assert (=> d!673652 (= lt!844987 e!1457756)))

(declare-fun res!972746 () Bool)

(assert (=> d!673652 (=> (not res!972746) (not e!1457756))))

(assert (=> d!673652 (= res!972746 ((_ is Cons!27060) (t!202982 rules!1750)))))

(assert (=> d!673652 (= (contains!4685 (t!202982 rules!1750) r!2363) lt!844987)))

(declare-fun b!2275881 () Bool)

(declare-fun e!1457757 () Bool)

(assert (=> b!2275881 (= e!1457756 e!1457757)))

(declare-fun res!972747 () Bool)

(assert (=> b!2275881 (=> res!972747 e!1457757)))

(assert (=> b!2275881 (= res!972747 (= (h!32461 (t!202982 rules!1750)) r!2363))))

(declare-fun b!2275882 () Bool)

(assert (=> b!2275882 (= e!1457757 (contains!4685 (t!202982 (t!202982 rules!1750)) r!2363))))

(assert (= (and d!673652 res!972746) b!2275881))

(assert (= (and b!2275881 (not res!972747)) b!2275882))

(assert (=> d!673652 m!2703979))

(declare-fun m!2704057 () Bool)

(assert (=> d!673652 m!2704057))

(declare-fun m!2704059 () Bool)

(assert (=> b!2275882 m!2704059))

(assert (=> b!2275325 d!673652))

(declare-fun d!673654 () Bool)

(declare-fun lt!844990 () Int)

(declare-fun size!21265 (List!27153) Int)

(assert (=> d!673654 (= lt!844990 (size!21265 (list!10517 (_1!15890 lt!844953))))))

(declare-fun size!21266 (Conc!8783) Int)

(assert (=> d!673654 (= lt!844990 (size!21266 (c!361144 (_1!15890 lt!844953))))))

(assert (=> d!673654 (= (size!21263 (_1!15890 lt!844953)) lt!844990)))

(declare-fun bs!456311 () Bool)

(assert (= bs!456311 d!673654))

(assert (=> bs!456311 m!2703865))

(assert (=> bs!456311 m!2703865))

(declare-fun m!2704061 () Bool)

(assert (=> bs!456311 m!2704061))

(declare-fun m!2704063 () Bool)

(assert (=> bs!456311 m!2704063))

(assert (=> d!673504 d!673654))

(declare-fun lt!845079 () BalanceConc!17292)

(declare-fun e!1457766 () tuple2!26760)

(declare-fun b!2275897 () Bool)

(declare-datatypes ((tuple2!26764 0))(
  ( (tuple2!26765 (_1!15892 Token!8112) (_2!15892 BalanceConc!17292)) )
))
(declare-datatypes ((Option!5300 0))(
  ( (None!5299) (Some!5299 (v!30355 tuple2!26764)) )
))
(declare-fun lt!845062 () Option!5300)

(declare-fun append!695 (BalanceConc!17294 Token!8112) BalanceConc!17294)

(assert (=> b!2275897 (= e!1457766 (lexTailRecV2!761 thiss!16613 rules!1750 (seqFromList!3021 input!1722) lt!845079 (_2!15892 (v!30355 lt!845062)) (append!695 (BalanceConc!17295 Empty!8783) (_1!15892 (v!30355 lt!845062)))))))

(declare-fun lt!845060 () tuple2!26760)

(declare-fun lexRec!532 (LexerInterface!3914 List!27154 BalanceConc!17292) tuple2!26760)

(assert (=> b!2275897 (= lt!845060 (lexRec!532 thiss!16613 rules!1750 (_2!15892 (v!30355 lt!845062))))))

(declare-fun lt!845082 () List!27152)

(assert (=> b!2275897 (= lt!845082 (list!10516 (BalanceConc!17293 Empty!8782)))))

(declare-fun lt!845080 () List!27152)

(assert (=> b!2275897 (= lt!845080 (list!10516 (charsOf!2705 (_1!15892 (v!30355 lt!845062)))))))

(declare-fun lt!845067 () List!27152)

(assert (=> b!2275897 (= lt!845067 (list!10516 (_2!15892 (v!30355 lt!845062))))))

(declare-fun lt!845064 () Unit!39998)

(declare-fun lemmaConcatAssociativity!1376 (List!27152 List!27152 List!27152) Unit!39998)

(assert (=> b!2275897 (= lt!845064 (lemmaConcatAssociativity!1376 lt!845082 lt!845080 lt!845067))))

(assert (=> b!2275897 (= (++!6601 (++!6601 lt!845082 lt!845080) lt!845067) (++!6601 lt!845082 (++!6601 lt!845080 lt!845067)))))

(declare-fun lt!845063 () Unit!39998)

(assert (=> b!2275897 (= lt!845063 lt!845064)))

(declare-fun lt!845074 () Option!5300)

(declare-fun maxPrefixZipperSequence!867 (LexerInterface!3914 List!27154 BalanceConc!17292) Option!5300)

(assert (=> b!2275897 (= lt!845074 (maxPrefixZipperSequence!867 thiss!16613 rules!1750 (seqFromList!3021 input!1722)))))

(declare-fun c!361278 () Bool)

(assert (=> b!2275897 (= c!361278 ((_ is Some!5299) lt!845074))))

(declare-fun e!1457768 () tuple2!26760)

(assert (=> b!2275897 (= (lexRec!532 thiss!16613 rules!1750 (seqFromList!3021 input!1722)) e!1457768)))

(declare-fun lt!845069 () Unit!39998)

(declare-fun Unit!40000 () Unit!39998)

(assert (=> b!2275897 (= lt!845069 Unit!40000)))

(declare-fun lt!845070 () List!27153)

(assert (=> b!2275897 (= lt!845070 (list!10517 (BalanceConc!17295 Empty!8783)))))

(declare-fun lt!845092 () List!27153)

(assert (=> b!2275897 (= lt!845092 (Cons!27059 (_1!15892 (v!30355 lt!845062)) Nil!27059))))

(declare-fun lt!845065 () List!27153)

(assert (=> b!2275897 (= lt!845065 (list!10517 (_1!15890 lt!845060)))))

(declare-fun lt!845089 () Unit!39998)

(declare-fun lemmaConcatAssociativity!1377 (List!27153 List!27153 List!27153) Unit!39998)

(assert (=> b!2275897 (= lt!845089 (lemmaConcatAssociativity!1377 lt!845070 lt!845092 lt!845065))))

(assert (=> b!2275897 (= (++!6602 (++!6602 lt!845070 lt!845092) lt!845065) (++!6602 lt!845070 (++!6602 lt!845092 lt!845065)))))

(declare-fun lt!845078 () Unit!39998)

(assert (=> b!2275897 (= lt!845078 lt!845089)))

(declare-fun lt!845068 () List!27152)

(assert (=> b!2275897 (= lt!845068 (++!6601 (list!10516 (BalanceConc!17293 Empty!8782)) (list!10516 (charsOf!2705 (_1!15892 (v!30355 lt!845062))))))))

(declare-fun lt!845091 () List!27152)

(assert (=> b!2275897 (= lt!845091 (list!10516 (_2!15892 (v!30355 lt!845062))))))

(declare-fun lt!845083 () List!27153)

(assert (=> b!2275897 (= lt!845083 (list!10517 (append!695 (BalanceConc!17295 Empty!8783) (_1!15892 (v!30355 lt!845062)))))))

(declare-fun lt!845085 () Unit!39998)

(declare-fun lemmaLexThenLexPrefix!346 (LexerInterface!3914 List!27154 List!27152 List!27152 List!27153 List!27153 List!27152) Unit!39998)

(assert (=> b!2275897 (= lt!845085 (lemmaLexThenLexPrefix!346 thiss!16613 rules!1750 lt!845068 lt!845091 lt!845083 (list!10517 (_1!15890 lt!845060)) (list!10516 (_2!15890 lt!845060))))))

(assert (=> b!2275897 (= (lexList!1086 thiss!16613 rules!1750 lt!845068) (tuple2!26763 lt!845083 Nil!27058))))

(declare-fun lt!845076 () Unit!39998)

(assert (=> b!2275897 (= lt!845076 lt!845085)))

(declare-fun lt!845086 () BalanceConc!17292)

(declare-fun ++!6603 (BalanceConc!17292 BalanceConc!17292) BalanceConc!17292)

(assert (=> b!2275897 (= lt!845086 (++!6603 (BalanceConc!17293 Empty!8782) (charsOf!2705 (_1!15892 (v!30355 lt!845062)))))))

(declare-fun lt!845066 () Option!5300)

(assert (=> b!2275897 (= lt!845066 (maxPrefixZipperSequence!867 thiss!16613 rules!1750 lt!845086))))

(declare-fun c!361276 () Bool)

(assert (=> b!2275897 (= c!361276 ((_ is Some!5299) lt!845066))))

(declare-fun e!1457767 () tuple2!26760)

(assert (=> b!2275897 (= (lexRec!532 thiss!16613 rules!1750 (++!6603 (BalanceConc!17293 Empty!8782) (charsOf!2705 (_1!15892 (v!30355 lt!845062))))) e!1457767)))

(declare-fun lt!845072 () Unit!39998)

(declare-fun Unit!40001 () Unit!39998)

(assert (=> b!2275897 (= lt!845072 Unit!40001)))

(assert (=> b!2275897 (= lt!845079 (++!6603 (BalanceConc!17293 Empty!8782) (charsOf!2705 (_1!15892 (v!30355 lt!845062)))))))

(declare-fun lt!845075 () List!27152)

(assert (=> b!2275897 (= lt!845075 (list!10516 lt!845079))))

(declare-fun lt!845084 () List!27152)

(assert (=> b!2275897 (= lt!845084 (list!10516 (_2!15892 (v!30355 lt!845062))))))

(declare-fun lt!845090 () Unit!39998)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!462 (List!27152 List!27152) Unit!39998)

(assert (=> b!2275897 (= lt!845090 (lemmaConcatTwoListThenFSndIsSuffix!462 lt!845075 lt!845084))))

(declare-fun isSuffix!768 (List!27152 List!27152) Bool)

(assert (=> b!2275897 (isSuffix!768 lt!845084 (++!6601 lt!845075 lt!845084))))

(declare-fun lt!845061 () Unit!39998)

(assert (=> b!2275897 (= lt!845061 lt!845090)))

(declare-fun b!2275898 () Bool)

(declare-fun lt!845088 () tuple2!26760)

(assert (=> b!2275898 (= lt!845088 (lexRec!532 thiss!16613 rules!1750 (_2!15892 (v!30355 lt!845074))))))

(declare-fun prepend!1002 (BalanceConc!17294 Token!8112) BalanceConc!17294)

(assert (=> b!2275898 (= e!1457768 (tuple2!26761 (prepend!1002 (_1!15890 lt!845088) (_1!15892 (v!30355 lt!845074))) (_2!15890 lt!845088)))))

(declare-fun b!2275899 () Bool)

(assert (=> b!2275899 (= e!1457767 (tuple2!26761 (BalanceConc!17295 Empty!8783) lt!845086))))

(declare-fun d!673656 () Bool)

(declare-fun e!1457769 () Bool)

(assert (=> d!673656 e!1457769))

(declare-fun res!972750 () Bool)

(assert (=> d!673656 (=> (not res!972750) (not e!1457769))))

(declare-fun lt!845087 () tuple2!26760)

(assert (=> d!673656 (= res!972750 (= (list!10517 (_1!15890 lt!845087)) (list!10517 (_1!15890 (lexRec!532 thiss!16613 rules!1750 (seqFromList!3021 input!1722))))))))

(assert (=> d!673656 (= lt!845087 e!1457766)))

(declare-fun c!361277 () Bool)

(assert (=> d!673656 (= c!361277 ((_ is Some!5299) lt!845062))))

(declare-fun maxPrefixZipperSequenceV2!402 (LexerInterface!3914 List!27154 BalanceConc!17292 BalanceConc!17292) Option!5300)

(assert (=> d!673656 (= lt!845062 (maxPrefixZipperSequenceV2!402 thiss!16613 rules!1750 (seqFromList!3021 input!1722) (seqFromList!3021 input!1722)))))

(declare-fun lt!845059 () Unit!39998)

(declare-fun lt!845073 () Unit!39998)

(assert (=> d!673656 (= lt!845059 lt!845073)))

(declare-fun lt!845077 () List!27152)

(declare-fun lt!845081 () List!27152)

(assert (=> d!673656 (isSuffix!768 lt!845077 (++!6601 lt!845081 lt!845077))))

(assert (=> d!673656 (= lt!845073 (lemmaConcatTwoListThenFSndIsSuffix!462 lt!845081 lt!845077))))

(assert (=> d!673656 (= lt!845077 (list!10516 (seqFromList!3021 input!1722)))))

(assert (=> d!673656 (= lt!845081 (list!10516 (BalanceConc!17293 Empty!8782)))))

(assert (=> d!673656 (= (lexTailRecV2!761 thiss!16613 rules!1750 (seqFromList!3021 input!1722) (BalanceConc!17293 Empty!8782) (seqFromList!3021 input!1722) (BalanceConc!17295 Empty!8783)) lt!845087)))

(declare-fun b!2275900 () Bool)

(declare-fun lt!845071 () tuple2!26760)

(assert (=> b!2275900 (= lt!845071 (lexRec!532 thiss!16613 rules!1750 (_2!15892 (v!30355 lt!845066))))))

(assert (=> b!2275900 (= e!1457767 (tuple2!26761 (prepend!1002 (_1!15890 lt!845071) (_1!15892 (v!30355 lt!845066))) (_2!15890 lt!845071)))))

(declare-fun b!2275901 () Bool)

(assert (=> b!2275901 (= e!1457769 (= (list!10516 (_2!15890 lt!845087)) (list!10516 (_2!15890 (lexRec!532 thiss!16613 rules!1750 (seqFromList!3021 input!1722))))))))

(declare-fun b!2275902 () Bool)

(assert (=> b!2275902 (= e!1457766 (tuple2!26761 (BalanceConc!17295 Empty!8783) (seqFromList!3021 input!1722)))))

(declare-fun b!2275903 () Bool)

(assert (=> b!2275903 (= e!1457768 (tuple2!26761 (BalanceConc!17295 Empty!8783) (seqFromList!3021 input!1722)))))

(assert (= (and d!673656 c!361277) b!2275897))

(assert (= (and d!673656 (not c!361277)) b!2275902))

(assert (= (and b!2275897 c!361278) b!2275898))

(assert (= (and b!2275897 (not c!361278)) b!2275903))

(assert (= (and b!2275897 c!361276) b!2275900))

(assert (= (and b!2275897 (not c!361276)) b!2275899))

(assert (= (and d!673656 res!972750) b!2275901))

(declare-fun m!2704065 () Bool)

(assert (=> d!673656 m!2704065))

(declare-fun m!2704067 () Bool)

(assert (=> d!673656 m!2704067))

(declare-fun m!2704069 () Bool)

(assert (=> d!673656 m!2704069))

(assert (=> d!673656 m!2704067))

(assert (=> d!673656 m!2703429))

(assert (=> d!673656 m!2703867))

(declare-fun m!2704071 () Bool)

(assert (=> d!673656 m!2704071))

(declare-fun m!2704073 () Bool)

(assert (=> d!673656 m!2704073))

(declare-fun m!2704075 () Bool)

(assert (=> d!673656 m!2704075))

(assert (=> d!673656 m!2703429))

(assert (=> d!673656 m!2703429))

(declare-fun m!2704077 () Bool)

(assert (=> d!673656 m!2704077))

(assert (=> d!673656 m!2703429))

(declare-fun m!2704079 () Bool)

(assert (=> d!673656 m!2704079))

(assert (=> b!2275897 m!2703429))

(assert (=> b!2275897 m!2704079))

(declare-fun m!2704081 () Bool)

(assert (=> b!2275897 m!2704081))

(declare-fun m!2704083 () Bool)

(assert (=> b!2275897 m!2704083))

(declare-fun m!2704085 () Bool)

(assert (=> b!2275897 m!2704085))

(declare-fun m!2704087 () Bool)

(assert (=> b!2275897 m!2704087))

(declare-fun m!2704089 () Bool)

(assert (=> b!2275897 m!2704089))

(declare-fun m!2704091 () Bool)

(assert (=> b!2275897 m!2704091))

(declare-fun m!2704093 () Bool)

(assert (=> b!2275897 m!2704093))

(declare-fun m!2704095 () Bool)

(assert (=> b!2275897 m!2704095))

(assert (=> b!2275897 m!2704073))

(assert (=> b!2275897 m!2704095))

(declare-fun m!2704097 () Bool)

(assert (=> b!2275897 m!2704097))

(declare-fun m!2704099 () Bool)

(assert (=> b!2275897 m!2704099))

(declare-fun m!2704101 () Bool)

(assert (=> b!2275897 m!2704101))

(assert (=> b!2275897 m!2704083))

(assert (=> b!2275897 m!2704087))

(declare-fun m!2704103 () Bool)

(assert (=> b!2275897 m!2704103))

(assert (=> b!2275897 m!2704091))

(declare-fun m!2704105 () Bool)

(assert (=> b!2275897 m!2704105))

(declare-fun m!2704107 () Bool)

(assert (=> b!2275897 m!2704107))

(declare-fun m!2704109 () Bool)

(assert (=> b!2275897 m!2704109))

(assert (=> b!2275897 m!2704105))

(declare-fun m!2704111 () Bool)

(assert (=> b!2275897 m!2704111))

(assert (=> b!2275897 m!2703429))

(declare-fun m!2704113 () Bool)

(assert (=> b!2275897 m!2704113))

(declare-fun m!2704115 () Bool)

(assert (=> b!2275897 m!2704115))

(assert (=> b!2275897 m!2704113))

(declare-fun m!2704117 () Bool)

(assert (=> b!2275897 m!2704117))

(declare-fun m!2704119 () Bool)

(assert (=> b!2275897 m!2704119))

(declare-fun m!2704121 () Bool)

(assert (=> b!2275897 m!2704121))

(assert (=> b!2275897 m!2704073))

(assert (=> b!2275897 m!2704085))

(declare-fun m!2704123 () Bool)

(assert (=> b!2275897 m!2704123))

(declare-fun m!2704125 () Bool)

(assert (=> b!2275897 m!2704125))

(declare-fun m!2704127 () Bool)

(assert (=> b!2275897 m!2704127))

(declare-fun m!2704129 () Bool)

(assert (=> b!2275897 m!2704129))

(assert (=> b!2275897 m!2704083))

(assert (=> b!2275897 m!2704099))

(assert (=> b!2275897 m!2704113))

(declare-fun m!2704131 () Bool)

(assert (=> b!2275897 m!2704131))

(assert (=> b!2275897 m!2704125))

(assert (=> b!2275897 m!2703429))

(declare-fun m!2704133 () Bool)

(assert (=> b!2275897 m!2704133))

(declare-fun m!2704135 () Bool)

(assert (=> b!2275897 m!2704135))

(assert (=> b!2275897 m!2704081))

(declare-fun m!2704137 () Bool)

(assert (=> b!2275897 m!2704137))

(declare-fun m!2704139 () Bool)

(assert (=> b!2275897 m!2704139))

(assert (=> b!2275897 m!2704121))

(declare-fun m!2704141 () Bool)

(assert (=> b!2275897 m!2704141))

(declare-fun m!2704143 () Bool)

(assert (=> b!2275898 m!2704143))

(declare-fun m!2704145 () Bool)

(assert (=> b!2275898 m!2704145))

(declare-fun m!2704147 () Bool)

(assert (=> b!2275900 m!2704147))

(declare-fun m!2704149 () Bool)

(assert (=> b!2275900 m!2704149))

(declare-fun m!2704151 () Bool)

(assert (=> b!2275901 m!2704151))

(assert (=> b!2275901 m!2703429))

(assert (=> b!2275901 m!2704079))

(declare-fun m!2704153 () Bool)

(assert (=> b!2275901 m!2704153))

(assert (=> d!673504 d!673656))

(declare-fun d!673658 () Bool)

(declare-fun e!1457770 () Bool)

(assert (=> d!673658 e!1457770))

(declare-fun res!972753 () Bool)

(assert (=> d!673658 (=> res!972753 e!1457770)))

(declare-fun lt!845093 () Bool)

(assert (=> d!673658 (= res!972753 (not lt!845093))))

(declare-fun e!1457772 () Bool)

(assert (=> d!673658 (= lt!845093 e!1457772)))

(declare-fun res!972754 () Bool)

(assert (=> d!673658 (=> res!972754 e!1457772)))

(assert (=> d!673658 (= res!972754 ((_ is Nil!27058) (tail!3283 lt!844846)))))

(assert (=> d!673658 (= (isPrefix!2307 (tail!3283 lt!844846) (tail!3283 input!1722)) lt!845093)))

(declare-fun b!2275907 () Bool)

(assert (=> b!2275907 (= e!1457770 (>= (size!21260 (tail!3283 input!1722)) (size!21260 (tail!3283 lt!844846))))))

(declare-fun b!2275905 () Bool)

(declare-fun res!972752 () Bool)

(declare-fun e!1457771 () Bool)

(assert (=> b!2275905 (=> (not res!972752) (not e!1457771))))

(assert (=> b!2275905 (= res!972752 (= (head!4920 (tail!3283 lt!844846)) (head!4920 (tail!3283 input!1722))))))

(declare-fun b!2275906 () Bool)

(assert (=> b!2275906 (= e!1457771 (isPrefix!2307 (tail!3283 (tail!3283 lt!844846)) (tail!3283 (tail!3283 input!1722))))))

(declare-fun b!2275904 () Bool)

(assert (=> b!2275904 (= e!1457772 e!1457771)))

(declare-fun res!972751 () Bool)

(assert (=> b!2275904 (=> (not res!972751) (not e!1457771))))

(assert (=> b!2275904 (= res!972751 (not ((_ is Nil!27058) (tail!3283 input!1722))))))

(assert (= (and d!673658 (not res!972754)) b!2275904))

(assert (= (and b!2275904 res!972751) b!2275905))

(assert (= (and b!2275905 res!972752) b!2275906))

(assert (= (and d!673658 (not res!972753)) b!2275907))

(assert (=> b!2275907 m!2703657))

(assert (=> b!2275907 m!2703989))

(assert (=> b!2275907 m!2703733))

(declare-fun m!2704155 () Bool)

(assert (=> b!2275907 m!2704155))

(assert (=> b!2275905 m!2703733))

(declare-fun m!2704157 () Bool)

(assert (=> b!2275905 m!2704157))

(assert (=> b!2275905 m!2703657))

(declare-fun m!2704159 () Bool)

(assert (=> b!2275905 m!2704159))

(assert (=> b!2275906 m!2703733))

(declare-fun m!2704161 () Bool)

(assert (=> b!2275906 m!2704161))

(assert (=> b!2275906 m!2703657))

(assert (=> b!2275906 m!2703991))

(assert (=> b!2275906 m!2704161))

(assert (=> b!2275906 m!2703991))

(declare-fun m!2704163 () Bool)

(assert (=> b!2275906 m!2704163))

(assert (=> b!2275432 d!673658))

(declare-fun d!673660 () Bool)

(assert (=> d!673660 (= (tail!3283 lt!844846) (t!202980 lt!844846))))

(assert (=> b!2275432 d!673660))

(assert (=> b!2275432 d!673624))

(declare-fun d!673662 () Bool)

(assert (=> d!673662 (= (isEmpty!15348 (originalCharacters!5087 (h!32460 tokens!456))) ((_ is Nil!27058) (originalCharacters!5087 (h!32460 tokens!456))))))

(assert (=> d!673450 d!673662))

(declare-fun d!673664 () Bool)

(declare-fun lt!845094 () Int)

(assert (=> d!673664 (>= lt!845094 0)))

(declare-fun e!1457773 () Int)

(assert (=> d!673664 (= lt!845094 e!1457773)))

(declare-fun c!361279 () Bool)

(assert (=> d!673664 (= c!361279 ((_ is Nil!27058) (_2!15889 (get!8155 lt!844883))))))

(assert (=> d!673664 (= (size!21260 (_2!15889 (get!8155 lt!844883))) lt!845094)))

(declare-fun b!2275908 () Bool)

(assert (=> b!2275908 (= e!1457773 0)))

(declare-fun b!2275909 () Bool)

(assert (=> b!2275909 (= e!1457773 (+ 1 (size!21260 (t!202980 (_2!15889 (get!8155 lt!844883))))))))

(assert (= (and d!673664 c!361279) b!2275908))

(assert (= (and d!673664 (not c!361279)) b!2275909))

(declare-fun m!2704165 () Bool)

(assert (=> b!2275909 m!2704165))

(assert (=> b!2275318 d!673664))

(assert (=> b!2275318 d!673638))

(assert (=> b!2275318 d!673642))

(assert (=> d!673456 d!673400))

(declare-fun d!673666 () Bool)

(assert (=> d!673666 (= (inv!36627 (tag!4807 (h!32461 (t!202982 rules!1750)))) (= (mod (str.len (value!136853 (tag!4807 (h!32461 (t!202982 rules!1750))))) 2) 0))))

(assert (=> b!2275733 d!673666))

(declare-fun d!673668 () Bool)

(declare-fun res!972755 () Bool)

(declare-fun e!1457774 () Bool)

(assert (=> d!673668 (=> (not res!972755) (not e!1457774))))

(assert (=> d!673668 (= res!972755 (semiInverseModEq!1742 (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toValue!6091 (transformation!4317 (h!32461 (t!202982 rules!1750))))))))

(assert (=> d!673668 (= (inv!36630 (transformation!4317 (h!32461 (t!202982 rules!1750)))) e!1457774)))

(declare-fun b!2275910 () Bool)

(assert (=> b!2275910 (= e!1457774 (equivClasses!1661 (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toValue!6091 (transformation!4317 (h!32461 (t!202982 rules!1750))))))))

(assert (= (and d!673668 res!972755) b!2275910))

(declare-fun m!2704167 () Bool)

(assert (=> d!673668 m!2704167))

(declare-fun m!2704169 () Bool)

(assert (=> b!2275910 m!2704169))

(assert (=> b!2275733 d!673668))

(declare-fun b!2275914 () Bool)

(declare-fun e!1457776 () Bool)

(declare-fun lt!845095 () List!27152)

(assert (=> b!2275914 (= e!1457776 (or (not (= (_2!15889 (get!8155 lt!844883)) Nil!27058)) (= lt!845095 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))))))))

(declare-fun b!2275911 () Bool)

(declare-fun e!1457775 () List!27152)

(assert (=> b!2275911 (= e!1457775 (_2!15889 (get!8155 lt!844883)))))

(declare-fun b!2275912 () Bool)

(assert (=> b!2275912 (= e!1457775 (Cons!27058 (h!32459 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))) (++!6601 (t!202980 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))) (_2!15889 (get!8155 lt!844883)))))))

(declare-fun d!673670 () Bool)

(assert (=> d!673670 e!1457776))

(declare-fun res!972756 () Bool)

(assert (=> d!673670 (=> (not res!972756) (not e!1457776))))

(assert (=> d!673670 (= res!972756 (= (content!3611 lt!845095) ((_ map or) (content!3611 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))) (content!3611 (_2!15889 (get!8155 lt!844883))))))))

(assert (=> d!673670 (= lt!845095 e!1457775)))

(declare-fun c!361280 () Bool)

(assert (=> d!673670 (= c!361280 ((_ is Nil!27058) (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))))))

(assert (=> d!673670 (= (++!6601 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))) (_2!15889 (get!8155 lt!844883))) lt!845095)))

(declare-fun b!2275913 () Bool)

(declare-fun res!972757 () Bool)

(assert (=> b!2275913 (=> (not res!972757) (not e!1457776))))

(assert (=> b!2275913 (= res!972757 (= (size!21260 lt!845095) (+ (size!21260 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))) (size!21260 (_2!15889 (get!8155 lt!844883))))))))

(assert (= (and d!673670 c!361280) b!2275911))

(assert (= (and d!673670 (not c!361280)) b!2275912))

(assert (= (and d!673670 res!972756) b!2275913))

(assert (= (and b!2275913 res!972757) b!2275914))

(declare-fun m!2704171 () Bool)

(assert (=> b!2275912 m!2704171))

(declare-fun m!2704173 () Bool)

(assert (=> d!673670 m!2704173))

(assert (=> d!673670 m!2703595))

(declare-fun m!2704175 () Bool)

(assert (=> d!673670 m!2704175))

(declare-fun m!2704177 () Bool)

(assert (=> d!673670 m!2704177))

(declare-fun m!2704179 () Bool)

(assert (=> b!2275913 m!2704179))

(assert (=> b!2275913 m!2703595))

(declare-fun m!2704181 () Bool)

(assert (=> b!2275913 m!2704181))

(assert (=> b!2275913 m!2703603))

(assert (=> b!2275316 d!673670))

(assert (=> b!2275316 d!673634))

(assert (=> b!2275316 d!673636))

(assert (=> b!2275316 d!673638))

(declare-fun d!673672 () Bool)

(assert (=> d!673672 (= (list!10516 lt!844922) (list!10520 (c!361142 lt!844922)))))

(declare-fun bs!456312 () Bool)

(assert (= bs!456312 d!673672))

(declare-fun m!2704183 () Bool)

(assert (=> bs!456312 m!2704183))

(assert (=> d!673496 d!673672))

(declare-fun d!673674 () Bool)

(assert (=> d!673674 (= (isEmpty!15347 lt!844883) (not ((_ is Some!5298) lt!844883)))))

(assert (=> d!673404 d!673674))

(declare-fun d!673676 () Bool)

(declare-fun e!1457777 () Bool)

(assert (=> d!673676 e!1457777))

(declare-fun res!972760 () Bool)

(assert (=> d!673676 (=> res!972760 e!1457777)))

(declare-fun lt!845096 () Bool)

(assert (=> d!673676 (= res!972760 (not lt!845096))))

(declare-fun e!1457779 () Bool)

(assert (=> d!673676 (= lt!845096 e!1457779)))

(declare-fun res!972761 () Bool)

(assert (=> d!673676 (=> res!972761 e!1457779)))

(assert (=> d!673676 (= res!972761 ((_ is Nil!27058) input!1722))))

(assert (=> d!673676 (= (isPrefix!2307 input!1722 input!1722) lt!845096)))

(declare-fun b!2275918 () Bool)

(assert (=> b!2275918 (= e!1457777 (>= (size!21260 input!1722) (size!21260 input!1722)))))

(declare-fun b!2275916 () Bool)

(declare-fun res!972759 () Bool)

(declare-fun e!1457778 () Bool)

(assert (=> b!2275916 (=> (not res!972759) (not e!1457778))))

(assert (=> b!2275916 (= res!972759 (= (head!4920 input!1722) (head!4920 input!1722)))))

(declare-fun b!2275917 () Bool)

(assert (=> b!2275917 (= e!1457778 (isPrefix!2307 (tail!3283 input!1722) (tail!3283 input!1722)))))

(declare-fun b!2275915 () Bool)

(assert (=> b!2275915 (= e!1457779 e!1457778)))

(declare-fun res!972758 () Bool)

(assert (=> b!2275915 (=> (not res!972758) (not e!1457778))))

(assert (=> b!2275915 (= res!972758 (not ((_ is Nil!27058) input!1722)))))

(assert (= (and d!673676 (not res!972761)) b!2275915))

(assert (= (and b!2275915 res!972758) b!2275916))

(assert (= (and b!2275916 res!972759) b!2275917))

(assert (= (and d!673676 (not res!972760)) b!2275918))

(assert (=> b!2275918 m!2703605))

(assert (=> b!2275918 m!2703605))

(assert (=> b!2275916 m!2703653))

(assert (=> b!2275916 m!2703653))

(assert (=> b!2275917 m!2703657))

(assert (=> b!2275917 m!2703657))

(assert (=> b!2275917 m!2703657))

(assert (=> b!2275917 m!2703657))

(declare-fun m!2704185 () Bool)

(assert (=> b!2275917 m!2704185))

(assert (=> d!673404 d!673676))

(declare-fun d!673678 () Bool)

(assert (=> d!673678 (isPrefix!2307 input!1722 input!1722)))

(declare-fun lt!845099 () Unit!39998)

(declare-fun choose!13280 (List!27152 List!27152) Unit!39998)

(assert (=> d!673678 (= lt!845099 (choose!13280 input!1722 input!1722))))

(assert (=> d!673678 (= (lemmaIsPrefixRefl!1468 input!1722 input!1722) lt!845099)))

(declare-fun bs!456313 () Bool)

(assert (= bs!456313 d!673678))

(assert (=> bs!456313 m!2703611))

(declare-fun m!2704187 () Bool)

(assert (=> bs!456313 m!2704187))

(assert (=> d!673404 d!673678))

(declare-fun d!673680 () Bool)

(assert (=> d!673680 true))

(declare-fun lt!845102 () Bool)

(declare-fun lambda!85588 () Int)

(declare-fun forall!5485 (List!27154 Int) Bool)

(assert (=> d!673680 (= lt!845102 (forall!5485 rules!1750 lambda!85588))))

(declare-fun e!1457784 () Bool)

(assert (=> d!673680 (= lt!845102 e!1457784)))

(declare-fun res!972766 () Bool)

(assert (=> d!673680 (=> res!972766 e!1457784)))

(assert (=> d!673680 (= res!972766 (not ((_ is Cons!27060) rules!1750)))))

(assert (=> d!673680 (= (rulesValidInductive!1510 thiss!16613 rules!1750) lt!845102)))

(declare-fun b!2275923 () Bool)

(declare-fun e!1457785 () Bool)

(assert (=> b!2275923 (= e!1457784 e!1457785)))

(declare-fun res!972767 () Bool)

(assert (=> b!2275923 (=> (not res!972767) (not e!1457785))))

(assert (=> b!2275923 (= res!972767 (ruleValid!1407 thiss!16613 (h!32461 rules!1750)))))

(declare-fun b!2275924 () Bool)

(assert (=> b!2275924 (= e!1457785 (rulesValidInductive!1510 thiss!16613 (t!202982 rules!1750)))))

(assert (= (and d!673680 (not res!972766)) b!2275923))

(assert (= (and b!2275923 res!972767) b!2275924))

(declare-fun m!2704189 () Bool)

(assert (=> d!673680 m!2704189))

(declare-fun m!2704191 () Bool)

(assert (=> b!2275923 m!2704191))

(declare-fun m!2704193 () Bool)

(assert (=> b!2275924 m!2704193))

(assert (=> d!673404 d!673680))

(declare-fun d!673682 () Bool)

(declare-fun lt!845103 () Int)

(assert (=> d!673682 (>= lt!845103 0)))

(declare-fun e!1457786 () Int)

(assert (=> d!673682 (= lt!845103 e!1457786)))

(declare-fun c!361281 () Bool)

(assert (=> d!673682 (= c!361281 ((_ is Nil!27058) (++!6601 lt!844846 (_2!15889 lt!844849))))))

(assert (=> d!673682 (= (size!21260 (++!6601 lt!844846 (_2!15889 lt!844849))) lt!845103)))

(declare-fun b!2275927 () Bool)

(assert (=> b!2275927 (= e!1457786 0)))

(declare-fun b!2275928 () Bool)

(assert (=> b!2275928 (= e!1457786 (+ 1 (size!21260 (t!202980 (++!6601 lt!844846 (_2!15889 lt!844849))))))))

(assert (= (and d!673682 c!361281) b!2275927))

(assert (= (and d!673682 (not c!361281)) b!2275928))

(declare-fun m!2704195 () Bool)

(assert (=> b!2275928 m!2704195))

(assert (=> b!2275429 d!673682))

(assert (=> b!2275429 d!673612))

(declare-fun d!673684 () Bool)

(assert (=> d!673684 (= (list!10516 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))) (list!10520 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))))))

(declare-fun bs!456314 () Bool)

(assert (= bs!456314 d!673684))

(declare-fun m!2704197 () Bool)

(assert (=> bs!456314 m!2704197))

(assert (=> b!2275349 d!673684))

(declare-fun d!673686 () Bool)

(assert (=> d!673686 (= (list!10517 (_1!15890 lt!844953)) (list!10521 (c!361144 (_1!15890 lt!844953))))))

(declare-fun bs!456315 () Bool)

(assert (= bs!456315 d!673686))

(declare-fun m!2704199 () Bool)

(assert (=> bs!456315 m!2704199))

(assert (=> b!2275622 d!673686))

(declare-fun b!2275939 () Bool)

(declare-fun e!1457795 () tuple2!26762)

(assert (=> b!2275939 (= e!1457795 (tuple2!26763 Nil!27059 (list!10516 (seqFromList!3021 input!1722))))))

(declare-fun b!2275940 () Bool)

(declare-fun e!1457794 () Bool)

(declare-fun e!1457793 () Bool)

(assert (=> b!2275940 (= e!1457794 e!1457793)))

(declare-fun res!972770 () Bool)

(declare-fun lt!845112 () tuple2!26762)

(assert (=> b!2275940 (= res!972770 (< (size!21260 (_2!15891 lt!845112)) (size!21260 (list!10516 (seqFromList!3021 input!1722)))))))

(assert (=> b!2275940 (=> (not res!972770) (not e!1457793))))

(declare-fun b!2275941 () Bool)

(assert (=> b!2275941 (= e!1457794 (= (_2!15891 lt!845112) (list!10516 (seqFromList!3021 input!1722))))))

(declare-fun b!2275942 () Bool)

(declare-fun lt!845111 () Option!5299)

(declare-fun lt!845110 () tuple2!26762)

(assert (=> b!2275942 (= e!1457795 (tuple2!26763 (Cons!27059 (_1!15889 (v!30352 lt!845111)) (_1!15891 lt!845110)) (_2!15891 lt!845110)))))

(assert (=> b!2275942 (= lt!845110 (lexList!1086 thiss!16613 rules!1750 (_2!15889 (v!30352 lt!845111))))))

(declare-fun d!673688 () Bool)

(assert (=> d!673688 e!1457794))

(declare-fun c!361287 () Bool)

(assert (=> d!673688 (= c!361287 (> (size!21265 (_1!15891 lt!845112)) 0))))

(assert (=> d!673688 (= lt!845112 e!1457795)))

(declare-fun c!361286 () Bool)

(assert (=> d!673688 (= c!361286 ((_ is Some!5298) lt!845111))))

(assert (=> d!673688 (= lt!845111 (maxPrefix!2178 thiss!16613 rules!1750 (list!10516 (seqFromList!3021 input!1722))))))

(assert (=> d!673688 (= (lexList!1086 thiss!16613 rules!1750 (list!10516 (seqFromList!3021 input!1722))) lt!845112)))

(declare-fun b!2275943 () Bool)

(assert (=> b!2275943 (= e!1457793 (not (isEmpty!15344 (_1!15891 lt!845112))))))

(assert (= (and d!673688 c!361286) b!2275942))

(assert (= (and d!673688 (not c!361286)) b!2275939))

(assert (= (and d!673688 c!361287) b!2275940))

(assert (= (and d!673688 (not c!361287)) b!2275941))

(assert (= (and b!2275940 res!972770) b!2275943))

(declare-fun m!2704201 () Bool)

(assert (=> b!2275940 m!2704201))

(assert (=> b!2275940 m!2703867))

(declare-fun m!2704203 () Bool)

(assert (=> b!2275940 m!2704203))

(declare-fun m!2704205 () Bool)

(assert (=> b!2275942 m!2704205))

(declare-fun m!2704207 () Bool)

(assert (=> d!673688 m!2704207))

(assert (=> d!673688 m!2703867))

(declare-fun m!2704209 () Bool)

(assert (=> d!673688 m!2704209))

(declare-fun m!2704211 () Bool)

(assert (=> b!2275943 m!2704211))

(assert (=> b!2275622 d!673688))

(declare-fun d!673690 () Bool)

(assert (=> d!673690 (= (list!10516 (seqFromList!3021 input!1722)) (list!10520 (c!361142 (seqFromList!3021 input!1722))))))

(declare-fun bs!456316 () Bool)

(assert (= bs!456316 d!673690))

(declare-fun m!2704213 () Bool)

(assert (=> bs!456316 m!2704213))

(assert (=> b!2275622 d!673690))

(declare-fun d!673692 () Bool)

(declare-fun lt!845113 () Bool)

(assert (=> d!673692 (= lt!845113 (select (content!3609 rules!1750) (rule!6639 (_1!15889 (get!8155 lt!844883)))))))

(declare-fun e!1457796 () Bool)

(assert (=> d!673692 (= lt!845113 e!1457796)))

(declare-fun res!972771 () Bool)

(assert (=> d!673692 (=> (not res!972771) (not e!1457796))))

(assert (=> d!673692 (= res!972771 ((_ is Cons!27060) rules!1750))))

(assert (=> d!673692 (= (contains!4685 rules!1750 (rule!6639 (_1!15889 (get!8155 lt!844883)))) lt!845113)))

(declare-fun b!2275944 () Bool)

(declare-fun e!1457797 () Bool)

(assert (=> b!2275944 (= e!1457796 e!1457797)))

(declare-fun res!972772 () Bool)

(assert (=> b!2275944 (=> res!972772 e!1457797)))

(assert (=> b!2275944 (= res!972772 (= (h!32461 rules!1750) (rule!6639 (_1!15889 (get!8155 lt!844883)))))))

(declare-fun b!2275945 () Bool)

(assert (=> b!2275945 (= e!1457797 (contains!4685 (t!202982 rules!1750) (rule!6639 (_1!15889 (get!8155 lt!844883)))))))

(assert (= (and d!673692 res!972771) b!2275944))

(assert (= (and b!2275944 (not res!972772)) b!2275945))

(assert (=> d!673692 m!2703507))

(declare-fun m!2704215 () Bool)

(assert (=> d!673692 m!2704215))

(declare-fun m!2704217 () Bool)

(assert (=> b!2275945 m!2704217))

(assert (=> b!2275314 d!673692))

(assert (=> b!2275314 d!673638))

(declare-fun d!673694 () Bool)

(declare-fun charsToBigInt!0 (List!27151 Int) Int)

(assert (=> d!673694 (= (inv!15 (value!136854 (h!32460 tokens!456))) (= (charsToBigInt!0 (text!31802 (value!136854 (h!32460 tokens!456))) 0) (value!136849 (value!136854 (h!32460 tokens!456)))))))

(declare-fun bs!456317 () Bool)

(assert (= bs!456317 d!673694))

(declare-fun m!2704219 () Bool)

(assert (=> bs!456317 m!2704219))

(assert (=> b!2275336 d!673694))

(declare-fun d!673696 () Bool)

(declare-fun e!1457804 () Bool)

(assert (=> d!673696 e!1457804))

(declare-fun res!972777 () Bool)

(assert (=> d!673696 (=> (not res!972777) (not e!1457804))))

(declare-fun lt!845116 () BalanceConc!17292)

(assert (=> d!673696 (= res!972777 (= (list!10516 lt!845116) input!1722))))

(declare-fun fromList!529 (List!27152) Conc!8782)

(assert (=> d!673696 (= lt!845116 (BalanceConc!17293 (fromList!529 input!1722)))))

(assert (=> d!673696 (= (fromListB!1352 input!1722) lt!845116)))

(declare-fun b!2275954 () Bool)

(assert (=> b!2275954 (= e!1457804 (isBalanced!2672 (fromList!529 input!1722)))))

(assert (= (and d!673696 res!972777) b!2275954))

(declare-fun m!2704225 () Bool)

(assert (=> d!673696 m!2704225))

(declare-fun m!2704227 () Bool)

(assert (=> d!673696 m!2704227))

(assert (=> b!2275954 m!2704227))

(assert (=> b!2275954 m!2704227))

(declare-fun m!2704229 () Bool)

(assert (=> b!2275954 m!2704229))

(assert (=> d!673540 d!673696))

(declare-fun b!2275955 () Bool)

(declare-fun e!1457807 () Option!5299)

(declare-fun lt!845117 () Option!5299)

(declare-fun lt!845118 () Option!5299)

(assert (=> b!2275955 (= e!1457807 (ite (and ((_ is None!5298) lt!845117) ((_ is None!5298) lt!845118)) None!5298 (ite ((_ is None!5298) lt!845118) lt!845117 (ite ((_ is None!5298) lt!845117) lt!845118 (ite (>= (size!21258 (_1!15889 (v!30352 lt!845117))) (size!21258 (_1!15889 (v!30352 lt!845118)))) lt!845117 lt!845118)))))))

(declare-fun call!136291 () Option!5299)

(assert (=> b!2275955 (= lt!845117 call!136291)))

(assert (=> b!2275955 (= lt!845118 (maxPrefix!2178 thiss!16613 (t!202982 (t!202982 rules!1750)) input!1722))))

(declare-fun b!2275956 () Bool)

(declare-fun res!972779 () Bool)

(declare-fun e!1457806 () Bool)

(assert (=> b!2275956 (=> (not res!972779) (not e!1457806))))

(declare-fun lt!845120 () Option!5299)

(assert (=> b!2275956 (= res!972779 (= (value!136854 (_1!15889 (get!8155 lt!845120))) (apply!6600 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!845120)))) (seqFromList!3021 (originalCharacters!5087 (_1!15889 (get!8155 lt!845120)))))))))

(declare-fun b!2275957 () Bool)

(assert (=> b!2275957 (= e!1457806 (contains!4685 (t!202982 rules!1750) (rule!6639 (_1!15889 (get!8155 lt!845120)))))))

(declare-fun b!2275958 () Bool)

(declare-fun res!972780 () Bool)

(assert (=> b!2275958 (=> (not res!972780) (not e!1457806))))

(assert (=> b!2275958 (= res!972780 (matchR!2922 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!845120)))) (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!845120))))))))

(declare-fun b!2275959 () Bool)

(declare-fun res!972778 () Bool)

(assert (=> b!2275959 (=> (not res!972778) (not e!1457806))))

(assert (=> b!2275959 (= res!972778 (= (++!6601 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!845120)))) (_2!15889 (get!8155 lt!845120))) input!1722))))

(declare-fun b!2275960 () Bool)

(assert (=> b!2275960 (= e!1457807 call!136291)))

(declare-fun d!673700 () Bool)

(declare-fun e!1457808 () Bool)

(assert (=> d!673700 e!1457808))

(declare-fun res!972781 () Bool)

(assert (=> d!673700 (=> res!972781 e!1457808)))

(assert (=> d!673700 (= res!972781 (isEmpty!15347 lt!845120))))

(assert (=> d!673700 (= lt!845120 e!1457807)))

(declare-fun c!361289 () Bool)

(assert (=> d!673700 (= c!361289 (and ((_ is Cons!27060) (t!202982 rules!1750)) ((_ is Nil!27060) (t!202982 (t!202982 rules!1750)))))))

(declare-fun lt!845119 () Unit!39998)

(declare-fun lt!845121 () Unit!39998)

(assert (=> d!673700 (= lt!845119 lt!845121)))

(assert (=> d!673700 (isPrefix!2307 input!1722 input!1722)))

(assert (=> d!673700 (= lt!845121 (lemmaIsPrefixRefl!1468 input!1722 input!1722))))

(assert (=> d!673700 (rulesValidInductive!1510 thiss!16613 (t!202982 rules!1750))))

(assert (=> d!673700 (= (maxPrefix!2178 thiss!16613 (t!202982 rules!1750) input!1722) lt!845120)))

(declare-fun b!2275961 () Bool)

(declare-fun res!972782 () Bool)

(assert (=> b!2275961 (=> (not res!972782) (not e!1457806))))

(assert (=> b!2275961 (= res!972782 (< (size!21260 (_2!15889 (get!8155 lt!845120))) (size!21260 input!1722)))))

(declare-fun b!2275962 () Bool)

(assert (=> b!2275962 (= e!1457808 e!1457806)))

(declare-fun res!972783 () Bool)

(assert (=> b!2275962 (=> (not res!972783) (not e!1457806))))

(assert (=> b!2275962 (= res!972783 (isDefined!4205 lt!845120))))

(declare-fun b!2275963 () Bool)

(declare-fun res!972784 () Bool)

(assert (=> b!2275963 (=> (not res!972784) (not e!1457806))))

(assert (=> b!2275963 (= res!972784 (= (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!845120)))) (originalCharacters!5087 (_1!15889 (get!8155 lt!845120)))))))

(declare-fun bm!136286 () Bool)

(assert (=> bm!136286 (= call!136291 (maxPrefixOneRule!1363 thiss!16613 (h!32461 (t!202982 rules!1750)) input!1722))))

(assert (= (and d!673700 c!361289) b!2275960))

(assert (= (and d!673700 (not c!361289)) b!2275955))

(assert (= (or b!2275960 b!2275955) bm!136286))

(assert (= (and d!673700 (not res!972781)) b!2275962))

(assert (= (and b!2275962 res!972783) b!2275963))

(assert (= (and b!2275963 res!972784) b!2275961))

(assert (= (and b!2275961 res!972782) b!2275959))

(assert (= (and b!2275959 res!972778) b!2275956))

(assert (= (and b!2275956 res!972779) b!2275958))

(assert (= (and b!2275958 res!972780) b!2275957))

(declare-fun m!2704235 () Bool)

(assert (=> b!2275962 m!2704235))

(declare-fun m!2704237 () Bool)

(assert (=> b!2275957 m!2704237))

(declare-fun m!2704239 () Bool)

(assert (=> b!2275957 m!2704239))

(assert (=> b!2275956 m!2704237))

(declare-fun m!2704241 () Bool)

(assert (=> b!2275956 m!2704241))

(assert (=> b!2275956 m!2704241))

(declare-fun m!2704243 () Bool)

(assert (=> b!2275956 m!2704243))

(assert (=> b!2275959 m!2704237))

(declare-fun m!2704247 () Bool)

(assert (=> b!2275959 m!2704247))

(assert (=> b!2275959 m!2704247))

(declare-fun m!2704249 () Bool)

(assert (=> b!2275959 m!2704249))

(assert (=> b!2275959 m!2704249))

(declare-fun m!2704251 () Bool)

(assert (=> b!2275959 m!2704251))

(assert (=> b!2275958 m!2704237))

(assert (=> b!2275958 m!2704247))

(assert (=> b!2275958 m!2704247))

(assert (=> b!2275958 m!2704249))

(assert (=> b!2275958 m!2704249))

(declare-fun m!2704253 () Bool)

(assert (=> b!2275958 m!2704253))

(declare-fun m!2704255 () Bool)

(assert (=> bm!136286 m!2704255))

(assert (=> b!2275961 m!2704237))

(declare-fun m!2704257 () Bool)

(assert (=> b!2275961 m!2704257))

(assert (=> b!2275961 m!2703605))

(assert (=> b!2275963 m!2704237))

(assert (=> b!2275963 m!2704247))

(assert (=> b!2275963 m!2704247))

(assert (=> b!2275963 m!2704249))

(declare-fun m!2704259 () Bool)

(assert (=> b!2275955 m!2704259))

(declare-fun m!2704261 () Bool)

(assert (=> d!673700 m!2704261))

(assert (=> d!673700 m!2703611))

(assert (=> d!673700 m!2703613))

(assert (=> d!673700 m!2704193))

(assert (=> b!2275312 d!673700))

(declare-fun d!673710 () Bool)

(assert (=> d!673710 (= (head!4920 lt!844846) (h!32459 lt!844846))))

(assert (=> b!2275427 d!673710))

(declare-fun d!673712 () Bool)

(assert (=> d!673712 (= (head!4920 (++!6601 lt!844846 (_2!15889 lt!844849))) (h!32459 (++!6601 lt!844846 (_2!15889 lt!844849))))))

(assert (=> b!2275427 d!673712))

(assert (=> d!673544 d!673542))

(declare-fun d!673714 () Bool)

(assert (=> d!673714 (ruleValid!1407 thiss!16613 r!2363)))

(assert (=> d!673714 true))

(declare-fun _$65!1109 () Unit!39998)

(assert (=> d!673714 (= (choose!13277 thiss!16613 r!2363 rules!1750) _$65!1109)))

(declare-fun bs!456321 () Bool)

(assert (= bs!456321 d!673714))

(assert (=> bs!456321 m!2703501))

(assert (=> d!673544 d!673714))

(assert (=> d!673544 d!673438))

(declare-fun d!673718 () Bool)

(assert (=> d!673718 (= (isEmpty!15348 (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))) ((_ is Nil!27058) (tail!3283 (list!10516 (charsOf!2705 (head!4918 tokens!456))))))))

(assert (=> b!2275660 d!673718))

(assert (=> b!2275660 d!673650))

(declare-fun d!673720 () Bool)

(declare-fun lt!845126 () Int)

(assert (=> d!673720 (>= lt!845126 0)))

(declare-fun e!1457812 () Int)

(assert (=> d!673720 (= lt!845126 e!1457812)))

(declare-fun c!361290 () Bool)

(assert (=> d!673720 (= c!361290 ((_ is Nil!27058) (t!202980 otherP!12)))))

(assert (=> d!673720 (= (size!21260 (t!202980 otherP!12)) lt!845126)))

(declare-fun b!2275968 () Bool)

(assert (=> b!2275968 (= e!1457812 0)))

(declare-fun b!2275969 () Bool)

(assert (=> b!2275969 (= e!1457812 (+ 1 (size!21260 (t!202980 (t!202980 otherP!12)))))))

(assert (= (and d!673720 c!361290) b!2275968))

(assert (= (and d!673720 (not c!361290)) b!2275969))

(declare-fun m!2704265 () Bool)

(assert (=> b!2275969 m!2704265))

(assert (=> b!2275675 d!673720))

(declare-fun d!673722 () Bool)

(declare-fun e!1457813 () Bool)

(assert (=> d!673722 e!1457813))

(declare-fun res!972791 () Bool)

(assert (=> d!673722 (=> res!972791 e!1457813)))

(declare-fun lt!845127 () Bool)

(assert (=> d!673722 (= res!972791 (not lt!845127))))

(declare-fun e!1457815 () Bool)

(assert (=> d!673722 (= lt!845127 e!1457815)))

(declare-fun res!972792 () Bool)

(assert (=> d!673722 (=> res!972792 e!1457815)))

(assert (=> d!673722 (= res!972792 ((_ is Nil!27058) (tail!3283 otherP!12)))))

(assert (=> d!673722 (= (isPrefix!2307 (tail!3283 otherP!12) (tail!3283 input!1722)) lt!845127)))

(declare-fun b!2275973 () Bool)

(assert (=> b!2275973 (= e!1457813 (>= (size!21260 (tail!3283 input!1722)) (size!21260 (tail!3283 otherP!12))))))

(declare-fun b!2275971 () Bool)

(declare-fun res!972790 () Bool)

(declare-fun e!1457814 () Bool)

(assert (=> b!2275971 (=> (not res!972790) (not e!1457814))))

(assert (=> b!2275971 (= res!972790 (= (head!4920 (tail!3283 otherP!12)) (head!4920 (tail!3283 input!1722))))))

(declare-fun b!2275972 () Bool)

(assert (=> b!2275972 (= e!1457814 (isPrefix!2307 (tail!3283 (tail!3283 otherP!12)) (tail!3283 (tail!3283 input!1722))))))

(declare-fun b!2275970 () Bool)

(assert (=> b!2275970 (= e!1457815 e!1457814)))

(declare-fun res!972789 () Bool)

(assert (=> b!2275970 (=> (not res!972789) (not e!1457814))))

(assert (=> b!2275970 (= res!972789 (not ((_ is Nil!27058) (tail!3283 input!1722))))))

(assert (= (and d!673722 (not res!972792)) b!2275970))

(assert (= (and b!2275970 res!972789) b!2275971))

(assert (= (and b!2275971 res!972790) b!2275972))

(assert (= (and d!673722 (not res!972791)) b!2275973))

(assert (=> b!2275973 m!2703657))

(assert (=> b!2275973 m!2703989))

(assert (=> b!2275973 m!2703655))

(declare-fun m!2704267 () Bool)

(assert (=> b!2275973 m!2704267))

(assert (=> b!2275971 m!2703655))

(declare-fun m!2704269 () Bool)

(assert (=> b!2275971 m!2704269))

(assert (=> b!2275971 m!2703657))

(assert (=> b!2275971 m!2704159))

(assert (=> b!2275972 m!2703655))

(declare-fun m!2704271 () Bool)

(assert (=> b!2275972 m!2704271))

(assert (=> b!2275972 m!2703657))

(assert (=> b!2275972 m!2703991))

(assert (=> b!2275972 m!2704271))

(assert (=> b!2275972 m!2703991))

(declare-fun m!2704273 () Bool)

(assert (=> b!2275972 m!2704273))

(assert (=> b!2275366 d!673722))

(declare-fun d!673724 () Bool)

(assert (=> d!673724 (= (tail!3283 otherP!12) (t!202980 otherP!12))))

(assert (=> b!2275366 d!673724))

(assert (=> b!2275366 d!673624))

(declare-fun bs!456322 () Bool)

(declare-fun d!673726 () Bool)

(assert (= bs!456322 (and d!673726 d!673606)))

(declare-fun lambda!85592 () Int)

(assert (=> bs!456322 (= (= (toValue!6091 (transformation!4317 r!2363)) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (= lambda!85592 lambda!85583))))

(declare-fun bs!456323 () Bool)

(assert (= bs!456323 (and d!673726 d!673626)))

(assert (=> bs!456323 (= (= (toValue!6091 (transformation!4317 r!2363)) (toValue!6091 (transformation!4317 otherR!12))) (= lambda!85592 lambda!85585))))

(assert (=> d!673726 true))

(assert (=> d!673726 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 r!2363))) (dynLambda!11747 order!15103 lambda!85592))))

(assert (=> d!673726 (= (equivClasses!1661 (toChars!5950 (transformation!4317 r!2363)) (toValue!6091 (transformation!4317 r!2363))) (Forall2!699 lambda!85592))))

(declare-fun bs!456324 () Bool)

(assert (= bs!456324 d!673726))

(declare-fun m!2704275 () Bool)

(assert (=> bs!456324 m!2704275))

(assert (=> b!2275344 d!673726))

(declare-fun d!673728 () Bool)

(declare-fun c!361293 () Bool)

(assert (=> d!673728 (= c!361293 ((_ is Nil!27058) lt!844919))))

(declare-fun e!1457824 () (InoxSet C!13476))

(assert (=> d!673728 (= (content!3611 lt!844919) e!1457824)))

(declare-fun b!2275984 () Bool)

(assert (=> b!2275984 (= e!1457824 ((as const (Array C!13476 Bool)) false))))

(declare-fun b!2275985 () Bool)

(assert (=> b!2275985 (= e!1457824 ((_ map or) (store ((as const (Array C!13476 Bool)) false) (h!32459 lt!844919) true) (content!3611 (t!202980 lt!844919))))))

(assert (= (and d!673728 c!361293) b!2275984))

(assert (= (and d!673728 (not c!361293)) b!2275985))

(declare-fun m!2704277 () Bool)

(assert (=> b!2275985 m!2704277))

(declare-fun m!2704279 () Bool)

(assert (=> b!2275985 m!2704279))

(assert (=> d!673494 d!673728))

(declare-fun d!673730 () Bool)

(declare-fun c!361294 () Bool)

(assert (=> d!673730 (= c!361294 ((_ is Nil!27058) lt!844846))))

(declare-fun e!1457825 () (InoxSet C!13476))

(assert (=> d!673730 (= (content!3611 lt!844846) e!1457825)))

(declare-fun b!2275988 () Bool)

(assert (=> b!2275988 (= e!1457825 ((as const (Array C!13476 Bool)) false))))

(declare-fun b!2275989 () Bool)

(assert (=> b!2275989 (= e!1457825 ((_ map or) (store ((as const (Array C!13476 Bool)) false) (h!32459 lt!844846) true) (content!3611 (t!202980 lt!844846))))))

(assert (= (and d!673730 c!361294) b!2275988))

(assert (= (and d!673730 (not c!361294)) b!2275989))

(declare-fun m!2704281 () Bool)

(assert (=> b!2275989 m!2704281))

(declare-fun m!2704283 () Bool)

(assert (=> b!2275989 m!2704283))

(assert (=> d!673494 d!673730))

(declare-fun d!673732 () Bool)

(declare-fun c!361295 () Bool)

(assert (=> d!673732 (= c!361295 ((_ is Nil!27058) (_2!15889 lt!844849)))))

(declare-fun e!1457826 () (InoxSet C!13476))

(assert (=> d!673732 (= (content!3611 (_2!15889 lt!844849)) e!1457826)))

(declare-fun b!2275990 () Bool)

(assert (=> b!2275990 (= e!1457826 ((as const (Array C!13476 Bool)) false))))

(declare-fun b!2275991 () Bool)

(assert (=> b!2275991 (= e!1457826 ((_ map or) (store ((as const (Array C!13476 Bool)) false) (h!32459 (_2!15889 lt!844849)) true) (content!3611 (t!202980 (_2!15889 lt!844849)))))))

(assert (= (and d!673732 c!361295) b!2275990))

(assert (= (and d!673732 (not c!361295)) b!2275991))

(declare-fun m!2704289 () Bool)

(assert (=> b!2275991 m!2704289))

(declare-fun m!2704293 () Bool)

(assert (=> b!2275991 m!2704293))

(assert (=> d!673494 d!673732))

(declare-fun d!673736 () Bool)

(assert (=> d!673736 (= (isEmpty!15348 (list!10516 (charsOf!2705 (head!4918 tokens!456)))) ((_ is Nil!27058) (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))

(assert (=> d!673552 d!673736))

(assert (=> d!673552 d!673630))

(declare-fun b!2276000 () Bool)

(declare-fun e!1457831 () List!27152)

(assert (=> b!2276000 (= e!1457831 Nil!27058)))

(declare-fun b!2276001 () Bool)

(declare-fun e!1457832 () List!27152)

(assert (=> b!2276001 (= e!1457831 e!1457832)))

(declare-fun c!361301 () Bool)

(assert (=> b!2276001 (= c!361301 ((_ is Leaf!12926) (c!361142 (charsOf!2705 (head!4918 tokens!456)))))))

(declare-fun b!2276003 () Bool)

(assert (=> b!2276003 (= e!1457832 (++!6601 (list!10520 (left!20529 (c!361142 (charsOf!2705 (head!4918 tokens!456))))) (list!10520 (right!20859 (c!361142 (charsOf!2705 (head!4918 tokens!456)))))))))

(declare-fun b!2276002 () Bool)

(declare-fun list!10523 (IArray!17569) List!27152)

(assert (=> b!2276002 (= e!1457832 (list!10523 (xs!11724 (c!361142 (charsOf!2705 (head!4918 tokens!456))))))))

(declare-fun d!673738 () Bool)

(declare-fun c!361300 () Bool)

(assert (=> d!673738 (= c!361300 ((_ is Empty!8782) (c!361142 (charsOf!2705 (head!4918 tokens!456)))))))

(assert (=> d!673738 (= (list!10520 (c!361142 (charsOf!2705 (head!4918 tokens!456)))) e!1457831)))

(assert (= (and d!673738 c!361300) b!2276000))

(assert (= (and d!673738 (not c!361300)) b!2276001))

(assert (= (and b!2276001 c!361301) b!2276002))

(assert (= (and b!2276001 (not c!361301)) b!2276003))

(declare-fun m!2704295 () Bool)

(assert (=> b!2276003 m!2704295))

(declare-fun m!2704297 () Bool)

(assert (=> b!2276003 m!2704297))

(assert (=> b!2276003 m!2704295))

(assert (=> b!2276003 m!2704297))

(declare-fun m!2704299 () Bool)

(assert (=> b!2276003 m!2704299))

(declare-fun m!2704301 () Bool)

(assert (=> b!2276002 m!2704301))

(assert (=> d!673554 d!673738))

(declare-fun bs!456325 () Bool)

(declare-fun d!673740 () Bool)

(assert (= bs!456325 (and d!673740 d!673564)))

(declare-fun lambda!85596 () Int)

(assert (=> bs!456325 (= (and (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 r!2363))) (= (toValue!6091 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 r!2363)))) (= lambda!85596 lambda!85580))))

(declare-fun bs!456326 () Bool)

(assert (= bs!456326 (and d!673740 d!673616)))

(assert (=> bs!456326 (= (and (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (h!32461 rules!1750)))) (= (toValue!6091 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 (h!32461 rules!1750))))) (= lambda!85596 lambda!85584))))

(assert (=> d!673740 true))

(assert (=> d!673740 (< (dynLambda!11744 order!15097 (toChars!5950 (transformation!4317 otherR!12))) (dynLambda!11745 order!15099 lambda!85596))))

(assert (=> d!673740 true))

(assert (=> d!673740 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 otherR!12))) (dynLambda!11745 order!15099 lambda!85596))))

(assert (=> d!673740 (= (semiInverseModEq!1742 (toChars!5950 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 otherR!12))) (Forall!1082 lambda!85596))))

(declare-fun bs!456327 () Bool)

(assert (= bs!456327 d!673740))

(declare-fun m!2704303 () Bool)

(assert (=> bs!456327 m!2704303))

(assert (=> d!673444 d!673740))

(declare-fun b!2276005 () Bool)

(declare-fun e!1457833 () Int)

(declare-fun e!1457834 () Int)

(assert (=> b!2276005 (= e!1457833 e!1457834)))

(declare-fun c!361303 () Bool)

(assert (=> b!2276005 (= c!361303 (and ((_ is Cons!27060) (t!202982 rules!1750)) (not (= (h!32461 (t!202982 rules!1750)) r!2363))))))

(declare-fun b!2276006 () Bool)

(assert (=> b!2276006 (= e!1457834 (+ 1 (getIndex!330 (t!202982 (t!202982 rules!1750)) r!2363)))))

(declare-fun b!2276007 () Bool)

(assert (=> b!2276007 (= e!1457834 (- 1))))

(declare-fun b!2276004 () Bool)

(assert (=> b!2276004 (= e!1457833 0)))

(declare-fun d!673742 () Bool)

(declare-fun lt!845131 () Int)

(assert (=> d!673742 (>= lt!845131 0)))

(assert (=> d!673742 (= lt!845131 e!1457833)))

(declare-fun c!361302 () Bool)

(assert (=> d!673742 (= c!361302 (and ((_ is Cons!27060) (t!202982 rules!1750)) (= (h!32461 (t!202982 rules!1750)) r!2363)))))

(assert (=> d!673742 (contains!4685 (t!202982 rules!1750) r!2363)))

(assert (=> d!673742 (= (getIndex!330 (t!202982 rules!1750) r!2363) lt!845131)))

(assert (= (and d!673742 c!361302) b!2276004))

(assert (= (and d!673742 (not c!361302)) b!2276005))

(assert (= (and b!2276005 c!361303) b!2276006))

(assert (= (and b!2276005 (not c!361303)) b!2276007))

(declare-fun m!2704305 () Bool)

(assert (=> b!2276006 m!2704305))

(assert (=> d!673742 m!2703623))

(assert (=> b!2275378 d!673742))

(declare-fun d!673744 () Bool)

(assert (=> d!673744 (= (list!10516 (_2!15890 lt!844953)) (list!10520 (c!361142 (_2!15890 lt!844953))))))

(declare-fun bs!456328 () Bool)

(assert (= bs!456328 d!673744))

(declare-fun m!2704307 () Bool)

(assert (=> bs!456328 m!2704307))

(assert (=> b!2275620 d!673744))

(assert (=> b!2275620 d!673688))

(assert (=> b!2275620 d!673690))

(declare-fun d!673746 () Bool)

(declare-fun c!361306 () Bool)

(assert (=> d!673746 (= c!361306 ((_ is Node!8782) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))))))

(declare-fun e!1457839 () Bool)

(assert (=> d!673746 (= (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))) e!1457839)))

(declare-fun b!2276014 () Bool)

(declare-fun inv!36638 (Conc!8782) Bool)

(assert (=> b!2276014 (= e!1457839 (inv!36638 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))))))

(declare-fun b!2276015 () Bool)

(declare-fun e!1457840 () Bool)

(assert (=> b!2276015 (= e!1457839 e!1457840)))

(declare-fun res!972801 () Bool)

(assert (=> b!2276015 (= res!972801 (not ((_ is Leaf!12926) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))))))))

(assert (=> b!2276015 (=> res!972801 e!1457840)))

(declare-fun b!2276016 () Bool)

(declare-fun inv!36639 (Conc!8782) Bool)

(assert (=> b!2276016 (= e!1457840 (inv!36639 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))))))

(assert (= (and d!673746 c!361306) b!2276014))

(assert (= (and d!673746 (not c!361306)) b!2276015))

(assert (= (and b!2276015 (not res!972801)) b!2276016))

(declare-fun m!2704309 () Bool)

(assert (=> b!2276014 m!2704309))

(declare-fun m!2704311 () Bool)

(assert (=> b!2276016 m!2704311))

(assert (=> b!2275669 d!673746))

(assert (=> b!2275655 d!673648))

(declare-fun d!673748 () Bool)

(declare-fun res!972802 () Bool)

(declare-fun e!1457841 () Bool)

(assert (=> d!673748 (=> (not res!972802) (not e!1457841))))

(assert (=> d!673748 (= res!972802 (not (isEmpty!15348 (originalCharacters!5087 (h!32460 (t!202981 tokens!456))))))))

(assert (=> d!673748 (= (inv!36631 (h!32460 (t!202981 tokens!456))) e!1457841)))

(declare-fun b!2276017 () Bool)

(declare-fun res!972803 () Bool)

(assert (=> b!2276017 (=> (not res!972803) (not e!1457841))))

(assert (=> b!2276017 (= res!972803 (= (originalCharacters!5087 (h!32460 (t!202981 tokens!456))) (list!10516 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (value!136854 (h!32460 (t!202981 tokens!456)))))))))

(declare-fun b!2276018 () Bool)

(assert (=> b!2276018 (= e!1457841 (= (size!21258 (h!32460 (t!202981 tokens!456))) (size!21260 (originalCharacters!5087 (h!32460 (t!202981 tokens!456))))))))

(assert (= (and d!673748 res!972802) b!2276017))

(assert (= (and b!2276017 res!972803) b!2276018))

(declare-fun b_lambda!72485 () Bool)

(assert (=> (not b_lambda!72485) (not b!2276017)))

(declare-fun t!203061 () Bool)

(declare-fun tb!135175 () Bool)

(assert (=> (and b!2275218 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203061) tb!135175))

(declare-fun b!2276019 () Bool)

(declare-fun e!1457842 () Bool)

(declare-fun tp!720935 () Bool)

(assert (=> b!2276019 (= e!1457842 (and (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (value!136854 (h!32460 (t!202981 tokens!456)))))) tp!720935))))

(declare-fun result!164824 () Bool)

(assert (=> tb!135175 (= result!164824 (and (inv!36635 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (value!136854 (h!32460 (t!202981 tokens!456))))) e!1457842))))

(assert (= tb!135175 b!2276019))

(declare-fun m!2704313 () Bool)

(assert (=> b!2276019 m!2704313))

(declare-fun m!2704315 () Bool)

(assert (=> tb!135175 m!2704315))

(assert (=> b!2276017 t!203061))

(declare-fun b_and!179529 () Bool)

(assert (= b_and!179513 (and (=> t!203061 result!164824) b_and!179529)))

(declare-fun tb!135177 () Bool)

(declare-fun t!203063 () Bool)

(assert (=> (and b!2275734 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203063) tb!135177))

(declare-fun result!164826 () Bool)

(assert (= result!164826 result!164824))

(assert (=> b!2276017 t!203063))

(declare-fun b_and!179531 () Bool)

(assert (= b_and!179509 (and (=> t!203063 result!164826) b_and!179531)))

(declare-fun t!203065 () Bool)

(declare-fun tb!135179 () Bool)

(assert (=> (and b!2275713 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203065) tb!135179))

(declare-fun result!164828 () Bool)

(assert (= result!164828 result!164824))

(assert (=> b!2276017 t!203065))

(declare-fun b_and!179533 () Bool)

(assert (= b_and!179515 (and (=> t!203065 result!164828) b_and!179533)))

(declare-fun t!203067 () Bool)

(declare-fun tb!135181 () Bool)

(assert (=> (and b!2275201 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203067) tb!135181))

(declare-fun result!164830 () Bool)

(assert (= result!164830 result!164824))

(assert (=> b!2276017 t!203067))

(declare-fun b_and!179535 () Bool)

(assert (= b_and!179511 (and (=> t!203067 result!164830) b_and!179535)))

(declare-fun tb!135183 () Bool)

(declare-fun t!203069 () Bool)

(assert (=> (and b!2275219 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203069) tb!135183))

(declare-fun result!164832 () Bool)

(assert (= result!164832 result!164824))

(assert (=> b!2276017 t!203069))

(declare-fun b_and!179537 () Bool)

(assert (= b_and!179505 (and (=> t!203069 result!164832) b_and!179537)))

(declare-fun t!203071 () Bool)

(declare-fun tb!135185 () Bool)

(assert (=> (and b!2275200 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203071) tb!135185))

(declare-fun result!164834 () Bool)

(assert (= result!164834 result!164824))

(assert (=> b!2276017 t!203071))

(declare-fun b_and!179539 () Bool)

(assert (= b_and!179507 (and (=> t!203071 result!164834) b_and!179539)))

(declare-fun m!2704317 () Bool)

(assert (=> d!673748 m!2704317))

(declare-fun m!2704319 () Bool)

(assert (=> b!2276017 m!2704319))

(assert (=> b!2276017 m!2704319))

(declare-fun m!2704321 () Bool)

(assert (=> b!2276017 m!2704321))

(declare-fun m!2704323 () Bool)

(assert (=> b!2276018 m!2704323))

(assert (=> b!2275710 d!673748))

(assert (=> bm!136263 d!673736))

(declare-fun d!673750 () Bool)

(assert (=> d!673750 (= (inv!36627 (tag!4807 (rule!6639 (h!32460 (t!202981 tokens!456))))) (= (mod (str.len (value!136853 (tag!4807 (rule!6639 (h!32460 (t!202981 tokens!456)))))) 2) 0))))

(assert (=> b!2275712 d!673750))

(declare-fun d!673752 () Bool)

(declare-fun res!972804 () Bool)

(declare-fun e!1457843 () Bool)

(assert (=> d!673752 (=> (not res!972804) (not e!1457843))))

(assert (=> d!673752 (= res!972804 (semiInverseModEq!1742 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))))))

(assert (=> d!673752 (= (inv!36630 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) e!1457843)))

(declare-fun b!2276020 () Bool)

(assert (=> b!2276020 (= e!1457843 (equivClasses!1661 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))))))

(assert (= (and d!673752 res!972804) b!2276020))

(declare-fun m!2704325 () Bool)

(assert (=> d!673752 m!2704325))

(declare-fun m!2704327 () Bool)

(assert (=> b!2276020 m!2704327))

(assert (=> b!2275712 d!673752))

(declare-fun bs!456329 () Bool)

(declare-fun d!673754 () Bool)

(assert (= bs!456329 (and d!673754 d!673606)))

(declare-fun lambda!85597 () Int)

(assert (=> bs!456329 (= (= (toValue!6091 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (= lambda!85597 lambda!85583))))

(declare-fun bs!456330 () Bool)

(assert (= bs!456330 (and d!673754 d!673626)))

(assert (=> bs!456330 (= (= (toValue!6091 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 otherR!12))) (= lambda!85597 lambda!85585))))

(declare-fun bs!456331 () Bool)

(assert (= bs!456331 (and d!673754 d!673726)))

(assert (=> bs!456331 (= (= (toValue!6091 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 r!2363))) (= lambda!85597 lambda!85592))))

(assert (=> d!673754 true))

(assert (=> d!673754 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 (h!32461 rules!1750)))) (dynLambda!11747 order!15103 lambda!85597))))

(assert (=> d!673754 (= (equivClasses!1661 (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 (h!32461 rules!1750)))) (Forall2!699 lambda!85597))))

(declare-fun bs!456332 () Bool)

(assert (= bs!456332 d!673754))

(declare-fun m!2704329 () Bool)

(assert (=> bs!456332 m!2704329))

(assert (=> b!2275626 d!673754))

(declare-fun bs!456333 () Bool)

(declare-fun d!673756 () Bool)

(assert (= bs!456333 (and d!673756 d!673564)))

(declare-fun lambda!85598 () Int)

(assert (=> bs!456333 (= (and (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 r!2363))) (= (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 r!2363)))) (= lambda!85598 lambda!85580))))

(declare-fun bs!456334 () Bool)

(assert (= bs!456334 (and d!673756 d!673616)))

(assert (=> bs!456334 (= (and (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 (h!32461 rules!1750)))) (= (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 (h!32461 rules!1750))))) (= lambda!85598 lambda!85584))))

(declare-fun bs!456335 () Bool)

(assert (= bs!456335 (and d!673756 d!673740)))

(assert (=> bs!456335 (= (and (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 otherR!12))) (= (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 otherR!12)))) (= lambda!85598 lambda!85596))))

(assert (=> d!673756 true))

(assert (=> d!673756 (< (dynLambda!11744 order!15097 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (dynLambda!11745 order!15099 lambda!85598))))

(assert (=> d!673756 true))

(assert (=> d!673756 (< (dynLambda!11746 order!15101 (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (dynLambda!11745 order!15099 lambda!85598))))

(assert (=> d!673756 (= (semiInverseModEq!1742 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) (Forall!1082 lambda!85598))))

(declare-fun bs!456336 () Bool)

(assert (= bs!456336 d!673756))

(declare-fun m!2704331 () Bool)

(assert (=> bs!456336 m!2704331))

(assert (=> d!673472 d!673756))

(assert (=> d!673454 d!673438))

(declare-fun b!2276021 () Bool)

(declare-fun e!1457844 () List!27152)

(assert (=> b!2276021 (= e!1457844 Nil!27058)))

(declare-fun b!2276022 () Bool)

(declare-fun e!1457845 () List!27152)

(assert (=> b!2276022 (= e!1457844 e!1457845)))

(declare-fun c!361308 () Bool)

(assert (=> b!2276022 (= c!361308 ((_ is Leaf!12926) (c!361142 (charsOf!2705 (h!32460 tokens!456)))))))

(declare-fun b!2276024 () Bool)

(assert (=> b!2276024 (= e!1457845 (++!6601 (list!10520 (left!20529 (c!361142 (charsOf!2705 (h!32460 tokens!456))))) (list!10520 (right!20859 (c!361142 (charsOf!2705 (h!32460 tokens!456)))))))))

(declare-fun b!2276023 () Bool)

(assert (=> b!2276023 (= e!1457845 (list!10523 (xs!11724 (c!361142 (charsOf!2705 (h!32460 tokens!456))))))))

(declare-fun d!673758 () Bool)

(declare-fun c!361307 () Bool)

(assert (=> d!673758 (= c!361307 ((_ is Empty!8782) (c!361142 (charsOf!2705 (h!32460 tokens!456)))))))

(assert (=> d!673758 (= (list!10520 (c!361142 (charsOf!2705 (h!32460 tokens!456)))) e!1457844)))

(assert (= (and d!673758 c!361307) b!2276021))

(assert (= (and d!673758 (not c!361307)) b!2276022))

(assert (= (and b!2276022 c!361308) b!2276023))

(assert (= (and b!2276022 (not c!361308)) b!2276024))

(declare-fun m!2704333 () Bool)

(assert (=> b!2276024 m!2704333))

(declare-fun m!2704335 () Bool)

(assert (=> b!2276024 m!2704335))

(assert (=> b!2276024 m!2704333))

(assert (=> b!2276024 m!2704335))

(declare-fun m!2704337 () Bool)

(assert (=> b!2276024 m!2704337))

(declare-fun m!2704339 () Bool)

(assert (=> b!2276023 m!2704339))

(assert (=> d!673492 d!673758))

(assert (=> b!2275433 d!673642))

(assert (=> b!2275433 d!673612))

(declare-fun d!673760 () Bool)

(declare-fun lt!845132 () Int)

(assert (=> d!673760 (>= lt!845132 0)))

(declare-fun e!1457846 () Int)

(assert (=> d!673760 (= lt!845132 e!1457846)))

(declare-fun c!361309 () Bool)

(assert (=> d!673760 (= c!361309 ((_ is Nil!27058) (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))

(assert (=> d!673760 (= (size!21260 (list!10516 (charsOf!2705 (head!4918 tokens!456)))) lt!845132)))

(declare-fun b!2276025 () Bool)

(assert (=> b!2276025 (= e!1457846 0)))

(declare-fun b!2276026 () Bool)

(assert (=> b!2276026 (= e!1457846 (+ 1 (size!21260 (t!202980 (list!10516 (charsOf!2705 (head!4918 tokens!456)))))))))

(assert (= (and d!673760 c!361309) b!2276025))

(assert (= (and d!673760 (not c!361309)) b!2276026))

(declare-fun m!2704341 () Bool)

(assert (=> b!2276026 m!2704341))

(assert (=> d!673558 d!673760))

(assert (=> d!673558 d!673554))

(declare-fun d!673762 () Bool)

(declare-fun lt!845135 () Int)

(assert (=> d!673762 (= lt!845135 (size!21260 (list!10520 (c!361142 (charsOf!2705 (head!4918 tokens!456))))))))

(assert (=> d!673762 (= lt!845135 (ite ((_ is Empty!8782) (c!361142 (charsOf!2705 (head!4918 tokens!456)))) 0 (ite ((_ is Leaf!12926) (c!361142 (charsOf!2705 (head!4918 tokens!456)))) (csize!17795 (c!361142 (charsOf!2705 (head!4918 tokens!456)))) (csize!17794 (c!361142 (charsOf!2705 (head!4918 tokens!456)))))))))

(assert (=> d!673762 (= (size!21264 (c!361142 (charsOf!2705 (head!4918 tokens!456)))) lt!845135)))

(declare-fun bs!456337 () Bool)

(assert (= bs!456337 d!673762))

(assert (=> bs!456337 m!2703899))

(assert (=> bs!456337 m!2703899))

(declare-fun m!2704343 () Bool)

(assert (=> bs!456337 m!2704343))

(assert (=> d!673558 d!673762))

(declare-fun d!673764 () Bool)

(assert (=> d!673764 (= (inv!36635 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))) (isBalanced!2672 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))))))

(declare-fun bs!456338 () Bool)

(assert (= bs!456338 d!673764))

(declare-fun m!2704345 () Bool)

(assert (=> bs!456338 m!2704345))

(assert (=> tb!135111 d!673764))

(declare-fun e!1457848 () Bool)

(declare-fun b!2276030 () Bool)

(declare-fun lt!845136 () List!27152)

(assert (=> b!2276030 (= e!1457848 (or (not (= (_2!15889 lt!844849) Nil!27058)) (= lt!845136 (t!202980 lt!844846))))))

(declare-fun b!2276027 () Bool)

(declare-fun e!1457847 () List!27152)

(assert (=> b!2276027 (= e!1457847 (_2!15889 lt!844849))))

(declare-fun b!2276028 () Bool)

(assert (=> b!2276028 (= e!1457847 (Cons!27058 (h!32459 (t!202980 lt!844846)) (++!6601 (t!202980 (t!202980 lt!844846)) (_2!15889 lt!844849))))))

(declare-fun d!673766 () Bool)

(assert (=> d!673766 e!1457848))

(declare-fun res!972805 () Bool)

(assert (=> d!673766 (=> (not res!972805) (not e!1457848))))

(assert (=> d!673766 (= res!972805 (= (content!3611 lt!845136) ((_ map or) (content!3611 (t!202980 lt!844846)) (content!3611 (_2!15889 lt!844849)))))))

(assert (=> d!673766 (= lt!845136 e!1457847)))

(declare-fun c!361310 () Bool)

(assert (=> d!673766 (= c!361310 ((_ is Nil!27058) (t!202980 lt!844846)))))

(assert (=> d!673766 (= (++!6601 (t!202980 lt!844846) (_2!15889 lt!844849)) lt!845136)))

(declare-fun b!2276029 () Bool)

(declare-fun res!972806 () Bool)

(assert (=> b!2276029 (=> (not res!972806) (not e!1457848))))

(assert (=> b!2276029 (= res!972806 (= (size!21260 lt!845136) (+ (size!21260 (t!202980 lt!844846)) (size!21260 (_2!15889 lt!844849)))))))

(assert (= (and d!673766 c!361310) b!2276027))

(assert (= (and d!673766 (not c!361310)) b!2276028))

(assert (= (and d!673766 res!972805) b!2276029))

(assert (= (and b!2276029 res!972806) b!2276030))

(declare-fun m!2704347 () Bool)

(assert (=> b!2276028 m!2704347))

(declare-fun m!2704349 () Bool)

(assert (=> d!673766 m!2704349))

(assert (=> d!673766 m!2704283))

(assert (=> d!673766 m!2703749))

(declare-fun m!2704351 () Bool)

(assert (=> b!2276029 m!2704351))

(assert (=> b!2276029 m!2703973))

(assert (=> b!2276029 m!2703753))

(assert (=> b!2275443 d!673766))

(declare-fun b!2276076 () Bool)

(declare-fun res!972846 () Bool)

(declare-fun e!1457872 () Bool)

(assert (=> b!2276076 (=> (not res!972846) (not e!1457872))))

(declare-fun lt!845164 () Option!5299)

(assert (=> b!2276076 (= res!972846 (< (size!21260 (_2!15889 (get!8155 lt!845164))) (size!21260 input!1722)))))

(declare-fun b!2276077 () Bool)

(declare-fun e!1457871 () Option!5299)

(declare-datatypes ((tuple2!26768 0))(
  ( (tuple2!26769 (_1!15894 List!27152) (_2!15894 List!27152)) )
))
(declare-fun lt!845166 () tuple2!26768)

(assert (=> b!2276077 (= e!1457871 (Some!5298 (tuple2!26759 (Token!8113 (apply!6600 (transformation!4317 (h!32461 rules!1750)) (seqFromList!3021 (_1!15894 lt!845166))) (h!32461 rules!1750) (size!21259 (seqFromList!3021 (_1!15894 lt!845166))) (_1!15894 lt!845166)) (_2!15894 lt!845166))))))

(declare-fun lt!845162 () Unit!39998)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!682 (Regex!6665 List!27152) Unit!39998)

(assert (=> b!2276077 (= lt!845162 (longestMatchIsAcceptedByMatchOrIsEmpty!682 (regex!4317 (h!32461 rules!1750)) input!1722))))

(declare-fun res!972844 () Bool)

(declare-fun findLongestMatchInner!709 (Regex!6665 List!27152 Int List!27152 List!27152 Int) tuple2!26768)

(assert (=> b!2276077 (= res!972844 (isEmpty!15348 (_1!15894 (findLongestMatchInner!709 (regex!4317 (h!32461 rules!1750)) Nil!27058 (size!21260 Nil!27058) input!1722 input!1722 (size!21260 input!1722)))))))

(declare-fun e!1457870 () Bool)

(assert (=> b!2276077 (=> res!972844 e!1457870)))

(assert (=> b!2276077 e!1457870))

(declare-fun lt!845165 () Unit!39998)

(assert (=> b!2276077 (= lt!845165 lt!845162)))

(declare-fun lt!845163 () Unit!39998)

(declare-fun lemmaSemiInverse!1042 (TokenValueInjection!8498 BalanceConc!17292) Unit!39998)

(assert (=> b!2276077 (= lt!845163 (lemmaSemiInverse!1042 (transformation!4317 (h!32461 rules!1750)) (seqFromList!3021 (_1!15894 lt!845166))))))

(declare-fun b!2276078 () Bool)

(declare-fun e!1457869 () Bool)

(assert (=> b!2276078 (= e!1457869 e!1457872)))

(declare-fun res!972843 () Bool)

(assert (=> b!2276078 (=> (not res!972843) (not e!1457872))))

(assert (=> b!2276078 (= res!972843 (matchR!2922 (regex!4317 (h!32461 rules!1750)) (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!845164))))))))

(declare-fun b!2276079 () Bool)

(declare-fun res!972848 () Bool)

(assert (=> b!2276079 (=> (not res!972848) (not e!1457872))))

(assert (=> b!2276079 (= res!972848 (= (rule!6639 (_1!15889 (get!8155 lt!845164))) (h!32461 rules!1750)))))

(declare-fun b!2276080 () Bool)

(declare-fun res!972845 () Bool)

(assert (=> b!2276080 (=> (not res!972845) (not e!1457872))))

(assert (=> b!2276080 (= res!972845 (= (++!6601 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!845164)))) (_2!15889 (get!8155 lt!845164))) input!1722))))

(declare-fun b!2276082 () Bool)

(assert (=> b!2276082 (= e!1457872 (= (size!21258 (_1!15889 (get!8155 lt!845164))) (size!21260 (originalCharacters!5087 (_1!15889 (get!8155 lt!845164))))))))

(declare-fun b!2276083 () Bool)

(declare-fun res!972842 () Bool)

(assert (=> b!2276083 (=> (not res!972842) (not e!1457872))))

(assert (=> b!2276083 (= res!972842 (= (value!136854 (_1!15889 (get!8155 lt!845164))) (apply!6600 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!845164)))) (seqFromList!3021 (originalCharacters!5087 (_1!15889 (get!8155 lt!845164)))))))))

(declare-fun b!2276084 () Bool)

(assert (=> b!2276084 (= e!1457871 None!5298)))

(declare-fun b!2276081 () Bool)

(assert (=> b!2276081 (= e!1457870 (matchR!2922 (regex!4317 (h!32461 rules!1750)) (_1!15894 (findLongestMatchInner!709 (regex!4317 (h!32461 rules!1750)) Nil!27058 (size!21260 Nil!27058) input!1722 input!1722 (size!21260 input!1722)))))))

(declare-fun d!673768 () Bool)

(assert (=> d!673768 e!1457869))

(declare-fun res!972847 () Bool)

(assert (=> d!673768 (=> res!972847 e!1457869)))

(assert (=> d!673768 (= res!972847 (isEmpty!15347 lt!845164))))

(assert (=> d!673768 (= lt!845164 e!1457871)))

(declare-fun c!361316 () Bool)

(assert (=> d!673768 (= c!361316 (isEmpty!15348 (_1!15894 lt!845166)))))

(declare-fun findLongestMatch!638 (Regex!6665 List!27152) tuple2!26768)

(assert (=> d!673768 (= lt!845166 (findLongestMatch!638 (regex!4317 (h!32461 rules!1750)) input!1722))))

(assert (=> d!673768 (ruleValid!1407 thiss!16613 (h!32461 rules!1750))))

(assert (=> d!673768 (= (maxPrefixOneRule!1363 thiss!16613 (h!32461 rules!1750) input!1722) lt!845164)))

(assert (= (and d!673768 c!361316) b!2276084))

(assert (= (and d!673768 (not c!361316)) b!2276077))

(assert (= (and b!2276077 (not res!972844)) b!2276081))

(assert (= (and d!673768 (not res!972847)) b!2276078))

(assert (= (and b!2276078 res!972843) b!2276080))

(assert (= (and b!2276080 res!972845) b!2276076))

(assert (= (and b!2276076 res!972846) b!2276079))

(assert (= (and b!2276079 res!972848) b!2276083))

(assert (= (and b!2276083 res!972842) b!2276082))

(declare-fun m!2704397 () Bool)

(assert (=> b!2276079 m!2704397))

(assert (=> b!2276082 m!2704397))

(declare-fun m!2704399 () Bool)

(assert (=> b!2276082 m!2704399))

(declare-fun m!2704401 () Bool)

(assert (=> b!2276081 m!2704401))

(assert (=> b!2276081 m!2703605))

(assert (=> b!2276081 m!2704401))

(assert (=> b!2276081 m!2703605))

(declare-fun m!2704403 () Bool)

(assert (=> b!2276081 m!2704403))

(declare-fun m!2704405 () Bool)

(assert (=> b!2276081 m!2704405))

(assert (=> b!2276076 m!2704397))

(declare-fun m!2704407 () Bool)

(assert (=> b!2276076 m!2704407))

(assert (=> b!2276076 m!2703605))

(assert (=> b!2276080 m!2704397))

(declare-fun m!2704409 () Bool)

(assert (=> b!2276080 m!2704409))

(assert (=> b!2276080 m!2704409))

(declare-fun m!2704411 () Bool)

(assert (=> b!2276080 m!2704411))

(assert (=> b!2276080 m!2704411))

(declare-fun m!2704413 () Bool)

(assert (=> b!2276080 m!2704413))

(assert (=> b!2276078 m!2704397))

(assert (=> b!2276078 m!2704409))

(assert (=> b!2276078 m!2704409))

(assert (=> b!2276078 m!2704411))

(assert (=> b!2276078 m!2704411))

(declare-fun m!2704415 () Bool)

(assert (=> b!2276078 m!2704415))

(declare-fun m!2704417 () Bool)

(assert (=> d!673768 m!2704417))

(declare-fun m!2704419 () Bool)

(assert (=> d!673768 m!2704419))

(declare-fun m!2704421 () Bool)

(assert (=> d!673768 m!2704421))

(assert (=> d!673768 m!2704191))

(assert (=> b!2276083 m!2704397))

(declare-fun m!2704423 () Bool)

(assert (=> b!2276083 m!2704423))

(assert (=> b!2276083 m!2704423))

(declare-fun m!2704425 () Bool)

(assert (=> b!2276083 m!2704425))

(assert (=> b!2276077 m!2704401))

(declare-fun m!2704427 () Bool)

(assert (=> b!2276077 m!2704427))

(declare-fun m!2704429 () Bool)

(assert (=> b!2276077 m!2704429))

(assert (=> b!2276077 m!2703605))

(declare-fun m!2704431 () Bool)

(assert (=> b!2276077 m!2704431))

(assert (=> b!2276077 m!2704427))

(declare-fun m!2704433 () Bool)

(assert (=> b!2276077 m!2704433))

(assert (=> b!2276077 m!2704427))

(declare-fun m!2704435 () Bool)

(assert (=> b!2276077 m!2704435))

(assert (=> b!2276077 m!2704427))

(declare-fun m!2704437 () Bool)

(assert (=> b!2276077 m!2704437))

(assert (=> b!2276077 m!2704401))

(assert (=> b!2276077 m!2703605))

(assert (=> b!2276077 m!2704403))

(assert (=> bm!136254 d!673768))

(declare-fun d!673776 () Bool)

(assert (=> d!673776 (= (isDefined!4205 lt!844883) (not (isEmpty!15347 lt!844883)))))

(declare-fun bs!456340 () Bool)

(assert (= bs!456340 d!673776))

(assert (=> bs!456340 m!2703609))

(assert (=> b!2275319 d!673776))

(declare-fun b!2276089 () Bool)

(declare-fun e!1457879 () Bool)

(declare-fun call!136294 () Bool)

(assert (=> b!2276089 (= e!1457879 call!136294)))

(declare-fun b!2276090 () Bool)

(declare-fun e!1457878 () Bool)

(declare-fun e!1457881 () Bool)

(assert (=> b!2276090 (= e!1457878 e!1457881)))

(declare-fun c!361320 () Bool)

(assert (=> b!2276090 (= c!361320 ((_ is Union!6665) (regex!4317 otherR!12)))))

(declare-fun bm!136287 () Bool)

(declare-fun call!136292 () Bool)

(assert (=> bm!136287 (= call!136292 (validRegex!2501 (ite c!361320 (regOne!13843 (regex!4317 otherR!12)) (regTwo!13842 (regex!4317 otherR!12)))))))

(declare-fun b!2276091 () Bool)

(declare-fun e!1457877 () Bool)

(assert (=> b!2276091 (= e!1457878 e!1457877)))

(declare-fun res!972853 () Bool)

(assert (=> b!2276091 (= res!972853 (not (nullable!1839 (reg!6994 (regex!4317 otherR!12)))))))

(assert (=> b!2276091 (=> (not res!972853) (not e!1457877))))

(declare-fun b!2276092 () Bool)

(declare-fun e!1457876 () Bool)

(assert (=> b!2276092 (= e!1457876 e!1457878)))

(declare-fun c!361319 () Bool)

(assert (=> b!2276092 (= c!361319 ((_ is Star!6665) (regex!4317 otherR!12)))))

(declare-fun d!673778 () Bool)

(declare-fun res!972849 () Bool)

(assert (=> d!673778 (=> res!972849 e!1457876)))

(assert (=> d!673778 (= res!972849 ((_ is ElementMatch!6665) (regex!4317 otherR!12)))))

(assert (=> d!673778 (= (validRegex!2501 (regex!4317 otherR!12)) e!1457876)))

(declare-fun bm!136288 () Bool)

(declare-fun call!136293 () Bool)

(assert (=> bm!136288 (= call!136294 call!136293)))

(declare-fun b!2276093 () Bool)

(declare-fun e!1457875 () Bool)

(declare-fun e!1457880 () Bool)

(assert (=> b!2276093 (= e!1457875 e!1457880)))

(declare-fun res!972850 () Bool)

(assert (=> b!2276093 (=> (not res!972850) (not e!1457880))))

(assert (=> b!2276093 (= res!972850 call!136294)))

(declare-fun b!2276094 () Bool)

(assert (=> b!2276094 (= e!1457877 call!136293)))

(declare-fun b!2276095 () Bool)

(declare-fun res!972852 () Bool)

(assert (=> b!2276095 (=> res!972852 e!1457875)))

(assert (=> b!2276095 (= res!972852 (not ((_ is Concat!11145) (regex!4317 otherR!12))))))

(assert (=> b!2276095 (= e!1457881 e!1457875)))

(declare-fun b!2276096 () Bool)

(assert (=> b!2276096 (= e!1457880 call!136292)))

(declare-fun b!2276097 () Bool)

(declare-fun res!972851 () Bool)

(assert (=> b!2276097 (=> (not res!972851) (not e!1457879))))

(assert (=> b!2276097 (= res!972851 call!136292)))

(assert (=> b!2276097 (= e!1457881 e!1457879)))

(declare-fun bm!136289 () Bool)

(assert (=> bm!136289 (= call!136293 (validRegex!2501 (ite c!361319 (reg!6994 (regex!4317 otherR!12)) (ite c!361320 (regTwo!13843 (regex!4317 otherR!12)) (regOne!13842 (regex!4317 otherR!12))))))))

(assert (= (and d!673778 (not res!972849)) b!2276092))

(assert (= (and b!2276092 c!361319) b!2276091))

(assert (= (and b!2276092 (not c!361319)) b!2276090))

(assert (= (and b!2276091 res!972853) b!2276094))

(assert (= (and b!2276090 c!361320) b!2276097))

(assert (= (and b!2276090 (not c!361320)) b!2276095))

(assert (= (and b!2276097 res!972851) b!2276089))

(assert (= (and b!2276095 (not res!972852)) b!2276093))

(assert (= (and b!2276093 res!972850) b!2276096))

(assert (= (or b!2276097 b!2276096) bm!136287))

(assert (= (or b!2276089 b!2276093) bm!136288))

(assert (= (or b!2276094 bm!136288) bm!136289))

(declare-fun m!2704439 () Bool)

(assert (=> bm!136287 m!2704439))

(declare-fun m!2704441 () Bool)

(assert (=> b!2276091 m!2704441))

(declare-fun m!2704443 () Bool)

(assert (=> bm!136289 m!2704443))

(assert (=> d!673458 d!673778))

(declare-fun d!673780 () Bool)

(declare-fun charsToInt!0 (List!27151) (_ BitVec 32))

(assert (=> d!673780 (= (inv!16 (value!136854 (h!32460 tokens!456))) (= (charsToInt!0 (text!31800 (value!136854 (h!32460 tokens!456)))) (value!136845 (value!136854 (h!32460 tokens!456)))))))

(declare-fun bs!456341 () Bool)

(assert (= bs!456341 d!673780))

(declare-fun m!2704445 () Bool)

(assert (=> bs!456341 m!2704445))

(assert (=> b!2275339 d!673780))

(assert (=> b!2275431 d!673710))

(assert (=> b!2275431 d!673598))

(declare-fun d!673782 () Bool)

(declare-fun c!361323 () Bool)

(assert (=> d!673782 (= c!361323 ((_ is Node!8782) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))))))

(declare-fun e!1457886 () Bool)

(assert (=> d!673782 (= (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))) e!1457886)))

(declare-fun b!2276104 () Bool)

(assert (=> b!2276104 (= e!1457886 (inv!36638 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))))))

(declare-fun b!2276105 () Bool)

(declare-fun e!1457887 () Bool)

(assert (=> b!2276105 (= e!1457886 e!1457887)))

(declare-fun res!972856 () Bool)

(assert (=> b!2276105 (= res!972856 (not ((_ is Leaf!12926) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))))))))

(assert (=> b!2276105 (=> res!972856 e!1457887)))

(declare-fun b!2276106 () Bool)

(assert (=> b!2276106 (= e!1457887 (inv!36639 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))))))

(assert (= (and d!673782 c!361323) b!2276104))

(assert (= (and d!673782 (not c!361323)) b!2276105))

(assert (= (and b!2276105 (not res!972856)) b!2276106))

(declare-fun m!2704447 () Bool)

(assert (=> b!2276104 m!2704447))

(declare-fun m!2704449 () Bool)

(assert (=> b!2276106 m!2704449))

(assert (=> b!2275355 d!673782))

(declare-fun d!673784 () Bool)

(declare-fun e!1457888 () Bool)

(assert (=> d!673784 e!1457888))

(declare-fun res!972859 () Bool)

(assert (=> d!673784 (=> res!972859 e!1457888)))

(declare-fun lt!845173 () Bool)

(assert (=> d!673784 (= res!972859 (not lt!845173))))

(declare-fun e!1457890 () Bool)

(assert (=> d!673784 (= lt!845173 e!1457890)))

(declare-fun res!972860 () Bool)

(assert (=> d!673784 (=> res!972860 e!1457890)))

(assert (=> d!673784 (= res!972860 ((_ is Nil!27058) (tail!3283 lt!844846)))))

(assert (=> d!673784 (= (isPrefix!2307 (tail!3283 lt!844846) (tail!3283 (++!6601 lt!844846 (_2!15889 lt!844849)))) lt!845173)))

(declare-fun b!2276110 () Bool)

(assert (=> b!2276110 (= e!1457888 (>= (size!21260 (tail!3283 (++!6601 lt!844846 (_2!15889 lt!844849)))) (size!21260 (tail!3283 lt!844846))))))

(declare-fun b!2276108 () Bool)

(declare-fun res!972858 () Bool)

(declare-fun e!1457889 () Bool)

(assert (=> b!2276108 (=> (not res!972858) (not e!1457889))))

(assert (=> b!2276108 (= res!972858 (= (head!4920 (tail!3283 lt!844846)) (head!4920 (tail!3283 (++!6601 lt!844846 (_2!15889 lt!844849))))))))

(declare-fun b!2276109 () Bool)

(assert (=> b!2276109 (= e!1457889 (isPrefix!2307 (tail!3283 (tail!3283 lt!844846)) (tail!3283 (tail!3283 (++!6601 lt!844846 (_2!15889 lt!844849))))))))

(declare-fun b!2276107 () Bool)

(assert (=> b!2276107 (= e!1457890 e!1457889)))

(declare-fun res!972857 () Bool)

(assert (=> b!2276107 (=> (not res!972857) (not e!1457889))))

(assert (=> b!2276107 (= res!972857 (not ((_ is Nil!27058) (tail!3283 (++!6601 lt!844846 (_2!15889 lt!844849))))))))

(assert (= (and d!673784 (not res!972860)) b!2276107))

(assert (= (and b!2276107 res!972857) b!2276108))

(assert (= (and b!2276108 res!972858) b!2276109))

(assert (= (and d!673784 (not res!972859)) b!2276110))

(assert (=> b!2276110 m!2703735))

(declare-fun m!2704451 () Bool)

(assert (=> b!2276110 m!2704451))

(assert (=> b!2276110 m!2703733))

(assert (=> b!2276110 m!2704155))

(assert (=> b!2276108 m!2703733))

(assert (=> b!2276108 m!2704157))

(assert (=> b!2276108 m!2703735))

(declare-fun m!2704453 () Bool)

(assert (=> b!2276108 m!2704453))

(assert (=> b!2276109 m!2703733))

(assert (=> b!2276109 m!2704161))

(assert (=> b!2276109 m!2703735))

(declare-fun m!2704455 () Bool)

(assert (=> b!2276109 m!2704455))

(assert (=> b!2276109 m!2704161))

(assert (=> b!2276109 m!2704455))

(declare-fun m!2704457 () Bool)

(assert (=> b!2276109 m!2704457))

(assert (=> b!2275428 d!673784))

(assert (=> b!2275428 d!673660))

(declare-fun d!673786 () Bool)

(assert (=> d!673786 (= (tail!3283 (++!6601 lt!844846 (_2!15889 lt!844849))) (t!202980 (++!6601 lt!844846 (_2!15889 lt!844849))))))

(assert (=> b!2275428 d!673786))

(assert (=> b!2275665 d!673718))

(assert (=> b!2275665 d!673650))

(declare-fun d!673788 () Bool)

(assert (=> d!673788 (= (list!10516 lt!844958) (list!10520 (c!361142 lt!844958)))))

(declare-fun bs!456342 () Bool)

(assert (= bs!456342 d!673788))

(declare-fun m!2704461 () Bool)

(assert (=> bs!456342 m!2704461))

(assert (=> d!673556 d!673788))

(declare-fun b!2276117 () Bool)

(declare-fun res!972867 () Bool)

(declare-fun e!1457895 () Bool)

(assert (=> b!2276117 (=> res!972867 e!1457895)))

(declare-fun e!1457898 () Bool)

(assert (=> b!2276117 (= res!972867 e!1457898)))

(declare-fun res!972866 () Bool)

(assert (=> b!2276117 (=> (not res!972866) (not e!1457898))))

(declare-fun lt!845177 () Bool)

(assert (=> b!2276117 (= res!972866 lt!845177)))

(declare-fun bm!136290 () Bool)

(declare-fun call!136295 () Bool)

(assert (=> bm!136290 (= call!136295 (isEmpty!15348 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))))))

(declare-fun b!2276118 () Bool)

(declare-fun e!1457900 () Bool)

(assert (=> b!2276118 (= e!1457895 e!1457900)))

(declare-fun res!972863 () Bool)

(assert (=> b!2276118 (=> (not res!972863) (not e!1457900))))

(assert (=> b!2276118 (= res!972863 (not lt!845177))))

(declare-fun b!2276119 () Bool)

(declare-fun e!1457897 () Bool)

(assert (=> b!2276119 (= e!1457900 e!1457897)))

(declare-fun res!972862 () Bool)

(assert (=> b!2276119 (=> res!972862 e!1457897)))

(assert (=> b!2276119 (= res!972862 call!136295)))

(declare-fun b!2276120 () Bool)

(declare-fun e!1457896 () Bool)

(assert (=> b!2276120 (= e!1457896 (not lt!845177))))

(declare-fun b!2276121 () Bool)

(declare-fun res!972868 () Bool)

(assert (=> b!2276121 (=> res!972868 e!1457897)))

(assert (=> b!2276121 (= res!972868 (not (isEmpty!15348 (tail!3283 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))))))))

(declare-fun b!2276122 () Bool)

(declare-fun e!1457899 () Bool)

(assert (=> b!2276122 (= e!1457899 (nullable!1839 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))))))

(declare-fun b!2276123 () Bool)

(declare-fun e!1457894 () Bool)

(assert (=> b!2276123 (= e!1457894 e!1457896)))

(declare-fun c!361328 () Bool)

(assert (=> b!2276123 (= c!361328 ((_ is EmptyLang!6665) (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))))))

(declare-fun b!2276124 () Bool)

(assert (=> b!2276124 (= e!1457894 (= lt!845177 call!136295))))

(declare-fun b!2276125 () Bool)

(declare-fun res!972865 () Bool)

(assert (=> b!2276125 (=> res!972865 e!1457895)))

(assert (=> b!2276125 (= res!972865 (not ((_ is ElementMatch!6665) (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))))))

(assert (=> b!2276125 (= e!1457896 e!1457895)))

(declare-fun b!2276126 () Bool)

(declare-fun res!972869 () Bool)

(assert (=> b!2276126 (=> (not res!972869) (not e!1457898))))

(assert (=> b!2276126 (= res!972869 (isEmpty!15348 (tail!3283 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))))))))

(declare-fun b!2276127 () Bool)

(declare-fun res!972864 () Bool)

(assert (=> b!2276127 (=> (not res!972864) (not e!1457898))))

(assert (=> b!2276127 (= res!972864 (not call!136295))))

(declare-fun d!673790 () Bool)

(assert (=> d!673790 e!1457894))

(declare-fun c!361327 () Bool)

(assert (=> d!673790 (= c!361327 ((_ is EmptyExpr!6665) (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))))))

(assert (=> d!673790 (= lt!845177 e!1457899)))

(declare-fun c!361326 () Bool)

(assert (=> d!673790 (= c!361326 (isEmpty!15348 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))))))

(assert (=> d!673790 (validRegex!2501 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))))

(assert (=> d!673790 (= (matchR!2922 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))) (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))) lt!845177)))

(declare-fun b!2276116 () Bool)

(assert (=> b!2276116 (= e!1457897 (not (= (head!4920 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))) (c!361143 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))))))))

(declare-fun b!2276128 () Bool)

(assert (=> b!2276128 (= e!1457898 (= (head!4920 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883))))) (c!361143 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))))))

(declare-fun b!2276129 () Bool)

(assert (=> b!2276129 (= e!1457899 (matchR!2922 (derivativeStep!1500 (regex!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))) (head!4920 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))))) (tail!3283 (list!10516 (charsOf!2705 (_1!15889 (get!8155 lt!844883)))))))))

(assert (= (and d!673790 c!361326) b!2276122))

(assert (= (and d!673790 (not c!361326)) b!2276129))

(assert (= (and d!673790 c!361327) b!2276124))

(assert (= (and d!673790 (not c!361327)) b!2276123))

(assert (= (and b!2276123 c!361328) b!2276120))

(assert (= (and b!2276123 (not c!361328)) b!2276125))

(assert (= (and b!2276125 (not res!972865)) b!2276117))

(assert (= (and b!2276117 res!972866) b!2276127))

(assert (= (and b!2276127 res!972864) b!2276126))

(assert (= (and b!2276126 res!972869) b!2276128))

(assert (= (and b!2276117 (not res!972867)) b!2276118))

(assert (= (and b!2276118 res!972863) b!2276119))

(assert (= (and b!2276119 (not res!972862)) b!2276121))

(assert (= (and b!2276121 (not res!972868)) b!2276116))

(assert (= (or b!2276124 b!2276119 b!2276127) bm!136290))

(assert (=> b!2276116 m!2703595))

(declare-fun m!2704473 () Bool)

(assert (=> b!2276116 m!2704473))

(assert (=> b!2276128 m!2703595))

(assert (=> b!2276128 m!2704473))

(assert (=> b!2276126 m!2703595))

(declare-fun m!2704475 () Bool)

(assert (=> b!2276126 m!2704475))

(assert (=> b!2276126 m!2704475))

(declare-fun m!2704477 () Bool)

(assert (=> b!2276126 m!2704477))

(assert (=> b!2276129 m!2703595))

(assert (=> b!2276129 m!2704473))

(assert (=> b!2276129 m!2704473))

(declare-fun m!2704479 () Bool)

(assert (=> b!2276129 m!2704479))

(assert (=> b!2276129 m!2703595))

(assert (=> b!2276129 m!2704475))

(assert (=> b!2276129 m!2704479))

(assert (=> b!2276129 m!2704475))

(declare-fun m!2704483 () Bool)

(assert (=> b!2276129 m!2704483))

(assert (=> bm!136290 m!2703595))

(declare-fun m!2704487 () Bool)

(assert (=> bm!136290 m!2704487))

(declare-fun m!2704489 () Bool)

(assert (=> b!2276122 m!2704489))

(assert (=> b!2276121 m!2703595))

(assert (=> b!2276121 m!2704475))

(assert (=> b!2276121 m!2704475))

(assert (=> b!2276121 m!2704477))

(assert (=> d!673790 m!2703595))

(assert (=> d!673790 m!2704487))

(declare-fun m!2704493 () Bool)

(assert (=> d!673790 m!2704493))

(assert (=> b!2275315 d!673790))

(assert (=> b!2275315 d!673638))

(assert (=> b!2275315 d!673634))

(assert (=> b!2275315 d!673636))

(assert (=> b!2275667 d!673648))

(declare-fun d!673796 () Bool)

(declare-fun charsToBigInt!1 (List!27151) Int)

(assert (=> d!673796 (= (inv!17 (value!136854 (h!32460 tokens!456))) (= (charsToBigInt!1 (text!31801 (value!136854 (h!32460 tokens!456)))) (value!136846 (value!136854 (h!32460 tokens!456)))))))

(declare-fun bs!456344 () Bool)

(assert (= bs!456344 d!673796))

(declare-fun m!2704503 () Bool)

(assert (=> bs!456344 m!2704503))

(assert (=> b!2275337 d!673796))

(declare-fun b!2276144 () Bool)

(declare-fun e!1457908 () List!27152)

(assert (=> b!2276144 (= e!1457908 Nil!27058)))

(declare-fun b!2276145 () Bool)

(declare-fun e!1457909 () List!27152)

(assert (=> b!2276145 (= e!1457908 e!1457909)))

(declare-fun c!361333 () Bool)

(assert (=> b!2276145 (= c!361333 ((_ is Leaf!12926) (c!361142 (_2!15890 lt!844847))))))

(declare-fun b!2276147 () Bool)

(assert (=> b!2276147 (= e!1457909 (++!6601 (list!10520 (left!20529 (c!361142 (_2!15890 lt!844847)))) (list!10520 (right!20859 (c!361142 (_2!15890 lt!844847))))))))

(declare-fun b!2276146 () Bool)

(assert (=> b!2276146 (= e!1457909 (list!10523 (xs!11724 (c!361142 (_2!15890 lt!844847)))))))

(declare-fun d!673800 () Bool)

(declare-fun c!361332 () Bool)

(assert (=> d!673800 (= c!361332 ((_ is Empty!8782) (c!361142 (_2!15890 lt!844847))))))

(assert (=> d!673800 (= (list!10520 (c!361142 (_2!15890 lt!844847))) e!1457908)))

(assert (= (and d!673800 c!361332) b!2276144))

(assert (= (and d!673800 (not c!361332)) b!2276145))

(assert (= (and b!2276145 c!361333) b!2276146))

(assert (= (and b!2276145 (not c!361333)) b!2276147))

(declare-fun m!2704505 () Bool)

(assert (=> b!2276147 m!2704505))

(declare-fun m!2704507 () Bool)

(assert (=> b!2276147 m!2704507))

(assert (=> b!2276147 m!2704505))

(assert (=> b!2276147 m!2704507))

(declare-fun m!2704509 () Bool)

(assert (=> b!2276147 m!2704509))

(declare-fun m!2704511 () Bool)

(assert (=> b!2276146 m!2704511))

(assert (=> d!673502 d!673800))

(assert (=> d!673460 d!673458))

(declare-fun d!673802 () Bool)

(assert (=> d!673802 (ruleValid!1407 thiss!16613 otherR!12)))

(assert (=> d!673802 true))

(declare-fun _$65!1110 () Unit!39998)

(assert (=> d!673802 (= (choose!13277 thiss!16613 otherR!12 rules!1750) _$65!1110)))

(declare-fun bs!456345 () Bool)

(assert (= bs!456345 d!673802))

(assert (=> bs!456345 m!2703449))

(assert (=> d!673460 d!673802))

(assert (=> d!673460 d!673400))

(declare-fun d!673804 () Bool)

(declare-fun lt!845179 () Int)

(assert (=> d!673804 (>= lt!845179 0)))

(declare-fun e!1457910 () Int)

(assert (=> d!673804 (= lt!845179 e!1457910)))

(declare-fun c!361334 () Bool)

(assert (=> d!673804 (= c!361334 ((_ is Nil!27058) (originalCharacters!5087 (h!32460 tokens!456))))))

(assert (=> d!673804 (= (size!21260 (originalCharacters!5087 (h!32460 tokens!456))) lt!845179)))

(declare-fun b!2276148 () Bool)

(assert (=> b!2276148 (= e!1457910 0)))

(declare-fun b!2276149 () Bool)

(assert (=> b!2276149 (= e!1457910 (+ 1 (size!21260 (t!202980 (originalCharacters!5087 (h!32460 tokens!456))))))))

(assert (= (and d!673804 c!361334) b!2276148))

(assert (= (and d!673804 (not c!361334)) b!2276149))

(declare-fun m!2704513 () Bool)

(assert (=> b!2276149 m!2704513))

(assert (=> b!2275350 d!673804))

(declare-fun bs!456346 () Bool)

(declare-fun d!673806 () Bool)

(assert (= bs!456346 (and d!673806 d!673680)))

(declare-fun lambda!85601 () Int)

(assert (=> bs!456346 (= lambda!85601 lambda!85588)))

(assert (=> d!673806 true))

(declare-fun lt!845182 () Bool)

(assert (=> d!673806 (= lt!845182 (rulesValidInductive!1510 thiss!16613 rules!1750))))

(assert (=> d!673806 (= lt!845182 (forall!5485 rules!1750 lambda!85601))))

(assert (=> d!673806 (= (rulesValid!1585 thiss!16613 rules!1750) lt!845182)))

(declare-fun bs!456347 () Bool)

(assert (= bs!456347 d!673806))

(assert (=> bs!456347 m!2703615))

(declare-fun m!2704515 () Bool)

(assert (=> bs!456347 m!2704515))

(assert (=> d!673436 d!673806))

(assert (=> d!673438 d!673632))

(assert (=> b!2275313 d!673638))

(declare-fun d!673808 () Bool)

(declare-fun dynLambda!11751 (Int BalanceConc!17292) TokenValue!4479)

(assert (=> d!673808 (= (apply!6600 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))) (seqFromList!3021 (originalCharacters!5087 (_1!15889 (get!8155 lt!844883))))) (dynLambda!11751 (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))) (seqFromList!3021 (originalCharacters!5087 (_1!15889 (get!8155 lt!844883))))))))

(declare-fun b_lambda!72487 () Bool)

(assert (=> (not b_lambda!72487) (not d!673808)))

(declare-fun t!203074 () Bool)

(declare-fun tb!135187 () Bool)

(assert (=> (and b!2275201 (= (toValue!6091 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203074) tb!135187))

(declare-fun result!164836 () Bool)

(assert (=> tb!135187 (= result!164836 (inv!21 (dynLambda!11751 (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883))))) (seqFromList!3021 (originalCharacters!5087 (_1!15889 (get!8155 lt!844883)))))))))

(declare-fun m!2704517 () Bool)

(assert (=> tb!135187 m!2704517))

(assert (=> d!673808 t!203074))

(declare-fun b_and!179541 () Bool)

(assert (= b_and!179437 (and (=> t!203074 result!164836) b_and!179541)))

(declare-fun t!203076 () Bool)

(declare-fun tb!135189 () Bool)

(assert (=> (and b!2275219 (= (toValue!6091 (transformation!4317 (h!32461 rules!1750))) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203076) tb!135189))

(declare-fun result!164840 () Bool)

(assert (= result!164840 result!164836))

(assert (=> d!673808 t!203076))

(declare-fun b_and!179543 () Bool)

(assert (= b_and!179429 (and (=> t!203076 result!164840) b_and!179543)))

(declare-fun t!203078 () Bool)

(declare-fun tb!135191 () Bool)

(assert (=> (and b!2275734 (= (toValue!6091 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203078) tb!135191))

(declare-fun result!164842 () Bool)

(assert (= result!164842 result!164836))

(assert (=> d!673808 t!203078))

(declare-fun b_and!179545 () Bool)

(assert (= b_and!179501 (and (=> t!203078 result!164842) b_and!179545)))

(declare-fun tb!135193 () Bool)

(declare-fun t!203080 () Bool)

(assert (=> (and b!2275218 (= (toValue!6091 (transformation!4317 otherR!12)) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203080) tb!135193))

(declare-fun result!164844 () Bool)

(assert (= result!164844 result!164836))

(assert (=> d!673808 t!203080))

(declare-fun b_and!179547 () Bool)

(assert (= b_and!179425 (and (=> t!203080 result!164844) b_and!179547)))

(declare-fun tb!135195 () Bool)

(declare-fun t!203082 () Bool)

(assert (=> (and b!2275713 (= (toValue!6091 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203082) tb!135195))

(declare-fun result!164846 () Bool)

(assert (= result!164846 result!164836))

(assert (=> d!673808 t!203082))

(declare-fun b_and!179549 () Bool)

(assert (= b_and!179497 (and (=> t!203082 result!164846) b_and!179549)))

(declare-fun t!203084 () Bool)

(declare-fun tb!135197 () Bool)

(assert (=> (and b!2275200 (= (toValue!6091 (transformation!4317 r!2363)) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203084) tb!135197))

(declare-fun result!164848 () Bool)

(assert (= result!164848 result!164836))

(assert (=> d!673808 t!203084))

(declare-fun b_and!179551 () Bool)

(assert (= b_and!179433 (and (=> t!203084 result!164848) b_and!179551)))

(assert (=> d!673808 m!2703589))

(declare-fun m!2704519 () Bool)

(assert (=> d!673808 m!2704519))

(assert (=> b!2275313 d!673808))

(declare-fun d!673810 () Bool)

(assert (=> d!673810 (= (seqFromList!3021 (originalCharacters!5087 (_1!15889 (get!8155 lt!844883)))) (fromListB!1352 (originalCharacters!5087 (_1!15889 (get!8155 lt!844883)))))))

(declare-fun bs!456348 () Bool)

(assert (= bs!456348 d!673810))

(declare-fun m!2704521 () Bool)

(assert (=> bs!456348 m!2704521))

(assert (=> b!2275313 d!673810))

(assert (=> d!673486 d!673488))

(assert (=> d!673486 d!673494))

(declare-fun d!673812 () Bool)

(assert (=> d!673812 (isPrefix!2307 lt!844846 (++!6601 lt!844846 (_2!15889 lt!844849)))))

(assert (=> d!673812 true))

(declare-fun _$46!1305 () Unit!39998)

(assert (=> d!673812 (= (choose!13278 lt!844846 (_2!15889 lt!844849)) _$46!1305)))

(declare-fun bs!456349 () Bool)

(assert (= bs!456349 d!673812))

(assert (=> bs!456349 m!2703461))

(assert (=> bs!456349 m!2703461))

(assert (=> bs!456349 m!2703463))

(assert (=> d!673486 d!673812))

(declare-fun d!673814 () Bool)

(declare-fun lt!845188 () Bool)

(assert (=> d!673814 (= lt!845188 (isEmpty!15344 (list!10517 (_1!15890 lt!844953))))))

(declare-fun isEmpty!15351 (Conc!8783) Bool)

(assert (=> d!673814 (= lt!845188 (isEmpty!15351 (c!361144 (_1!15890 lt!844953))))))

(assert (=> d!673814 (= (isEmpty!15350 (_1!15890 lt!844953)) lt!845188)))

(declare-fun bs!456350 () Bool)

(assert (= bs!456350 d!673814))

(assert (=> bs!456350 m!2703865))

(assert (=> bs!456350 m!2703865))

(declare-fun m!2704523 () Bool)

(assert (=> bs!456350 m!2704523))

(declare-fun m!2704525 () Bool)

(assert (=> bs!456350 m!2704525))

(assert (=> b!2275623 d!673814))

(declare-fun d!673816 () Bool)

(declare-fun lt!845189 () Int)

(assert (=> d!673816 (= lt!845189 (size!21260 (list!10516 (_2!15890 lt!844953))))))

(assert (=> d!673816 (= lt!845189 (size!21264 (c!361142 (_2!15890 lt!844953))))))

(assert (=> d!673816 (= (size!21259 (_2!15890 lt!844953)) lt!845189)))

(declare-fun bs!456351 () Bool)

(assert (= bs!456351 d!673816))

(assert (=> bs!456351 m!2703871))

(assert (=> bs!456351 m!2703871))

(declare-fun m!2704527 () Bool)

(assert (=> bs!456351 m!2704527))

(declare-fun m!2704529 () Bool)

(assert (=> bs!456351 m!2704529))

(assert (=> b!2275619 d!673816))

(declare-fun d!673818 () Bool)

(declare-fun lt!845190 () Int)

(assert (=> d!673818 (= lt!845190 (size!21260 (list!10516 (seqFromList!3021 input!1722))))))

(assert (=> d!673818 (= lt!845190 (size!21264 (c!361142 (seqFromList!3021 input!1722))))))

(assert (=> d!673818 (= (size!21259 (seqFromList!3021 input!1722)) lt!845190)))

(declare-fun bs!456352 () Bool)

(assert (= bs!456352 d!673818))

(assert (=> bs!456352 m!2703429))

(assert (=> bs!456352 m!2703867))

(assert (=> bs!456352 m!2703867))

(assert (=> bs!456352 m!2704203))

(declare-fun m!2704531 () Bool)

(assert (=> bs!456352 m!2704531))

(assert (=> b!2275619 d!673818))

(assert (=> b!2275367 d!673642))

(assert (=> b!2275367 d!673560))

(assert (=> b!2275661 d!673620))

(declare-fun b!2276183 () Bool)

(declare-fun e!1457929 () Bool)

(declare-fun tp!720938 () Bool)

(declare-fun tp!720940 () Bool)

(assert (=> b!2276183 (= e!1457929 (and tp!720938 tp!720940))))

(declare-fun b!2276182 () Bool)

(assert (=> b!2276182 (= e!1457929 tp_is_empty!10551)))

(declare-fun b!2276184 () Bool)

(declare-fun tp!720937 () Bool)

(assert (=> b!2276184 (= e!1457929 tp!720937)))

(assert (=> b!2275693 (= tp!720887 e!1457929)))

(declare-fun b!2276185 () Bool)

(declare-fun tp!720936 () Bool)

(declare-fun tp!720939 () Bool)

(assert (=> b!2276185 (= e!1457929 (and tp!720936 tp!720939))))

(assert (= (and b!2275693 ((_ is ElementMatch!6665) (regOne!13842 (regex!4317 otherR!12)))) b!2276182))

(assert (= (and b!2275693 ((_ is Concat!11145) (regOne!13842 (regex!4317 otherR!12)))) b!2276183))

(assert (= (and b!2275693 ((_ is Star!6665) (regOne!13842 (regex!4317 otherR!12)))) b!2276184))

(assert (= (and b!2275693 ((_ is Union!6665) (regOne!13842 (regex!4317 otherR!12)))) b!2276185))

(declare-fun b!2276187 () Bool)

(declare-fun e!1457930 () Bool)

(declare-fun tp!720943 () Bool)

(declare-fun tp!720945 () Bool)

(assert (=> b!2276187 (= e!1457930 (and tp!720943 tp!720945))))

(declare-fun b!2276186 () Bool)

(assert (=> b!2276186 (= e!1457930 tp_is_empty!10551)))

(declare-fun b!2276188 () Bool)

(declare-fun tp!720942 () Bool)

(assert (=> b!2276188 (= e!1457930 tp!720942)))

(assert (=> b!2275693 (= tp!720889 e!1457930)))

(declare-fun b!2276189 () Bool)

(declare-fun tp!720941 () Bool)

(declare-fun tp!720944 () Bool)

(assert (=> b!2276189 (= e!1457930 (and tp!720941 tp!720944))))

(assert (= (and b!2275693 ((_ is ElementMatch!6665) (regTwo!13842 (regex!4317 otherR!12)))) b!2276186))

(assert (= (and b!2275693 ((_ is Concat!11145) (regTwo!13842 (regex!4317 otherR!12)))) b!2276187))

(assert (= (and b!2275693 ((_ is Star!6665) (regTwo!13842 (regex!4317 otherR!12)))) b!2276188))

(assert (= (and b!2275693 ((_ is Union!6665) (regTwo!13842 (regex!4317 otherR!12)))) b!2276189))

(declare-fun e!1457936 () Bool)

(declare-fun b!2276198 () Bool)

(declare-fun tp!720953 () Bool)

(declare-fun tp!720952 () Bool)

(assert (=> b!2276198 (= e!1457936 (and (inv!36634 (left!20529 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))))) tp!720953 (inv!36634 (right!20859 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))))) tp!720952))))

(declare-fun b!2276200 () Bool)

(declare-fun e!1457935 () Bool)

(declare-fun tp!720954 () Bool)

(assert (=> b!2276200 (= e!1457935 tp!720954)))

(declare-fun b!2276199 () Bool)

(declare-fun inv!36640 (IArray!17569) Bool)

(assert (=> b!2276199 (= e!1457936 (and (inv!36640 (xs!11724 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))))) e!1457935))))

(assert (=> b!2275669 (= tp!720870 (and (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456))))) e!1457936))))

(assert (= (and b!2275669 ((_ is Node!8782) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))))) b!2276198))

(assert (= b!2276199 b!2276200))

(assert (= (and b!2275669 ((_ is Leaf!12926) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))) (value!136854 (head!4918 tokens!456)))))) b!2276199))

(declare-fun m!2704543 () Bool)

(assert (=> b!2276198 m!2704543))

(declare-fun m!2704545 () Bool)

(assert (=> b!2276198 m!2704545))

(declare-fun m!2704547 () Bool)

(assert (=> b!2276199 m!2704547))

(assert (=> b!2275669 m!2703901))

(declare-fun b!2276210 () Bool)

(declare-fun e!1457941 () Bool)

(declare-fun tp!720957 () Bool)

(declare-fun tp!720959 () Bool)

(assert (=> b!2276210 (= e!1457941 (and tp!720957 tp!720959))))

(declare-fun b!2276209 () Bool)

(assert (=> b!2276209 (= e!1457941 tp_is_empty!10551)))

(declare-fun b!2276211 () Bool)

(declare-fun tp!720956 () Bool)

(assert (=> b!2276211 (= e!1457941 tp!720956)))

(assert (=> b!2275717 (= tp!720910 e!1457941)))

(declare-fun b!2276212 () Bool)

(declare-fun tp!720955 () Bool)

(declare-fun tp!720958 () Bool)

(assert (=> b!2276212 (= e!1457941 (and tp!720955 tp!720958))))

(assert (= (and b!2275717 ((_ is ElementMatch!6665) (regOne!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276209))

(assert (= (and b!2275717 ((_ is Concat!11145) (regOne!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276210))

(assert (= (and b!2275717 ((_ is Star!6665) (regOne!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276211))

(assert (= (and b!2275717 ((_ is Union!6665) (regOne!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276212))

(declare-fun b!2276214 () Bool)

(declare-fun e!1457942 () Bool)

(declare-fun tp!720962 () Bool)

(declare-fun tp!720964 () Bool)

(assert (=> b!2276214 (= e!1457942 (and tp!720962 tp!720964))))

(declare-fun b!2276213 () Bool)

(assert (=> b!2276213 (= e!1457942 tp_is_empty!10551)))

(declare-fun b!2276215 () Bool)

(declare-fun tp!720961 () Bool)

(assert (=> b!2276215 (= e!1457942 tp!720961)))

(assert (=> b!2275717 (= tp!720913 e!1457942)))

(declare-fun b!2276216 () Bool)

(declare-fun tp!720960 () Bool)

(declare-fun tp!720963 () Bool)

(assert (=> b!2276216 (= e!1457942 (and tp!720960 tp!720963))))

(assert (= (and b!2275717 ((_ is ElementMatch!6665) (regTwo!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276213))

(assert (= (and b!2275717 ((_ is Concat!11145) (regTwo!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276214))

(assert (= (and b!2275717 ((_ is Star!6665) (regTwo!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276215))

(assert (= (and b!2275717 ((_ is Union!6665) (regTwo!13843 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276216))

(declare-fun b!2276218 () Bool)

(declare-fun e!1457943 () Bool)

(declare-fun tp!720967 () Bool)

(declare-fun tp!720969 () Bool)

(assert (=> b!2276218 (= e!1457943 (and tp!720967 tp!720969))))

(declare-fun b!2276217 () Bool)

(assert (=> b!2276217 (= e!1457943 tp_is_empty!10551)))

(declare-fun b!2276219 () Bool)

(declare-fun tp!720966 () Bool)

(assert (=> b!2276219 (= e!1457943 tp!720966)))

(assert (=> b!2275694 (= tp!720886 e!1457943)))

(declare-fun b!2276220 () Bool)

(declare-fun tp!720965 () Bool)

(declare-fun tp!720968 () Bool)

(assert (=> b!2276220 (= e!1457943 (and tp!720965 tp!720968))))

(assert (= (and b!2275694 ((_ is ElementMatch!6665) (reg!6994 (regex!4317 otherR!12)))) b!2276217))

(assert (= (and b!2275694 ((_ is Concat!11145) (reg!6994 (regex!4317 otherR!12)))) b!2276218))

(assert (= (and b!2275694 ((_ is Star!6665) (reg!6994 (regex!4317 otherR!12)))) b!2276219))

(assert (= (and b!2275694 ((_ is Union!6665) (reg!6994 (regex!4317 otherR!12)))) b!2276220))

(declare-fun b!2276222 () Bool)

(declare-fun e!1457944 () Bool)

(declare-fun tp!720972 () Bool)

(declare-fun tp!720974 () Bool)

(assert (=> b!2276222 (= e!1457944 (and tp!720972 tp!720974))))

(declare-fun b!2276221 () Bool)

(assert (=> b!2276221 (= e!1457944 tp_is_empty!10551)))

(declare-fun b!2276223 () Bool)

(declare-fun tp!720971 () Bool)

(assert (=> b!2276223 (= e!1457944 tp!720971)))

(assert (=> b!2275715 (= tp!720912 e!1457944)))

(declare-fun b!2276224 () Bool)

(declare-fun tp!720970 () Bool)

(declare-fun tp!720973 () Bool)

(assert (=> b!2276224 (= e!1457944 (and tp!720970 tp!720973))))

(assert (= (and b!2275715 ((_ is ElementMatch!6665) (regOne!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276221))

(assert (= (and b!2275715 ((_ is Concat!11145) (regOne!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276222))

(assert (= (and b!2275715 ((_ is Star!6665) (regOne!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276223))

(assert (= (and b!2275715 ((_ is Union!6665) (regOne!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276224))

(declare-fun b!2276226 () Bool)

(declare-fun e!1457945 () Bool)

(declare-fun tp!720977 () Bool)

(declare-fun tp!720979 () Bool)

(assert (=> b!2276226 (= e!1457945 (and tp!720977 tp!720979))))

(declare-fun b!2276225 () Bool)

(assert (=> b!2276225 (= e!1457945 tp_is_empty!10551)))

(declare-fun b!2276227 () Bool)

(declare-fun tp!720976 () Bool)

(assert (=> b!2276227 (= e!1457945 tp!720976)))

(assert (=> b!2275715 (= tp!720914 e!1457945)))

(declare-fun b!2276228 () Bool)

(declare-fun tp!720975 () Bool)

(declare-fun tp!720978 () Bool)

(assert (=> b!2276228 (= e!1457945 (and tp!720975 tp!720978))))

(assert (= (and b!2275715 ((_ is ElementMatch!6665) (regTwo!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276225))

(assert (= (and b!2275715 ((_ is Concat!11145) (regTwo!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276226))

(assert (= (and b!2275715 ((_ is Star!6665) (regTwo!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276227))

(assert (= (and b!2275715 ((_ is Union!6665) (regTwo!13842 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276228))

(declare-fun b!2276232 () Bool)

(declare-fun b_free!67821 () Bool)

(declare-fun b_next!68525 () Bool)

(assert (=> b!2276232 (= b_free!67821 (not b_next!68525))))

(declare-fun tb!135199 () Bool)

(declare-fun t!203087 () Bool)

(assert (=> (and b!2276232 (= (toValue!6091 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203087) tb!135199))

(declare-fun result!164852 () Bool)

(assert (= result!164852 result!164836))

(assert (=> d!673808 t!203087))

(declare-fun b_and!179553 () Bool)

(declare-fun tp!720983 () Bool)

(assert (=> b!2276232 (= tp!720983 (and (=> t!203087 result!164852) b_and!179553))))

(declare-fun b_free!67823 () Bool)

(declare-fun b_next!68527 () Bool)

(assert (=> b!2276232 (= b_free!67823 (not b_next!68527))))

(declare-fun t!203089 () Bool)

(declare-fun tb!135201 () Bool)

(assert (=> (and b!2276232 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203089) tb!135201))

(declare-fun result!164854 () Bool)

(assert (= result!164854 result!164824))

(assert (=> b!2276017 t!203089))

(declare-fun t!203091 () Bool)

(declare-fun tb!135203 () Bool)

(assert (=> (and b!2276232 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203091) tb!135203))

(declare-fun result!164856 () Bool)

(assert (= result!164856 result!164798))

(assert (=> d!673636 t!203091))

(declare-fun t!203093 () Bool)

(declare-fun tb!135205 () Bool)

(assert (=> (and b!2276232 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!203093) tb!135205))

(declare-fun result!164858 () Bool)

(assert (= result!164858 result!164740))

(assert (=> d!673496 t!203093))

(assert (=> b!2275349 t!203093))

(declare-fun t!203095 () Bool)

(declare-fun tb!135207 () Bool)

(assert (=> (and b!2276232 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203095) tb!135207))

(declare-fun result!164860 () Bool)

(assert (= result!164860 result!164774))

(assert (=> d!673556 t!203095))

(declare-fun b_and!179555 () Bool)

(declare-fun tp!720981 () Bool)

(assert (=> b!2276232 (= tp!720981 (and (=> t!203095 result!164860) (=> t!203089 result!164854) (=> t!203093 result!164858) (=> t!203091 result!164856) b_and!179555))))

(declare-fun tp!720980 () Bool)

(declare-fun e!1457947 () Bool)

(declare-fun e!1457951 () Bool)

(declare-fun b!2276230 () Bool)

(assert (=> b!2276230 (= e!1457947 (and (inv!21 (value!136854 (h!32460 (t!202981 (t!202981 tokens!456))))) e!1457951 tp!720980))))

(declare-fun b!2276229 () Bool)

(declare-fun e!1457949 () Bool)

(declare-fun tp!720984 () Bool)

(assert (=> b!2276229 (= e!1457949 (and (inv!36631 (h!32460 (t!202981 (t!202981 tokens!456)))) e!1457947 tp!720984))))

(declare-fun b!2276231 () Bool)

(declare-fun e!1457950 () Bool)

(declare-fun tp!720982 () Bool)

(assert (=> b!2276231 (= e!1457951 (and tp!720982 (inv!36627 (tag!4807 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (inv!36630 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) e!1457950))))

(assert (=> b!2276232 (= e!1457950 (and tp!720983 tp!720981))))

(assert (=> b!2275710 (= tp!720909 e!1457949)))

(assert (= b!2276231 b!2276232))

(assert (= b!2276230 b!2276231))

(assert (= b!2276229 b!2276230))

(assert (= (and b!2275710 ((_ is Cons!27059) (t!202981 (t!202981 tokens!456)))) b!2276229))

(declare-fun m!2704557 () Bool)

(assert (=> b!2276230 m!2704557))

(declare-fun m!2704559 () Bool)

(assert (=> b!2276229 m!2704559))

(declare-fun m!2704561 () Bool)

(assert (=> b!2276231 m!2704561))

(declare-fun m!2704563 () Bool)

(assert (=> b!2276231 m!2704563))

(declare-fun b!2276238 () Bool)

(declare-fun e!1457954 () Bool)

(declare-fun tp!720987 () Bool)

(declare-fun tp!720989 () Bool)

(assert (=> b!2276238 (= e!1457954 (and tp!720987 tp!720989))))

(declare-fun b!2276237 () Bool)

(assert (=> b!2276237 (= e!1457954 tp_is_empty!10551)))

(declare-fun b!2276239 () Bool)

(declare-fun tp!720986 () Bool)

(assert (=> b!2276239 (= e!1457954 tp!720986)))

(assert (=> b!2275712 (= tp!720907 e!1457954)))

(declare-fun b!2276240 () Bool)

(declare-fun tp!720985 () Bool)

(declare-fun tp!720988 () Bool)

(assert (=> b!2276240 (= e!1457954 (and tp!720985 tp!720988))))

(assert (= (and b!2275712 ((_ is ElementMatch!6665) (regex!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) b!2276237))

(assert (= (and b!2275712 ((_ is Concat!11145) (regex!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) b!2276238))

(assert (= (and b!2275712 ((_ is Star!6665) (regex!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) b!2276239))

(assert (= (and b!2275712 ((_ is Union!6665) (regex!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) b!2276240))

(declare-fun b!2276243 () Bool)

(declare-fun e!1457955 () Bool)

(declare-fun tp!720990 () Bool)

(assert (=> b!2276243 (= e!1457955 (and tp_is_empty!10551 tp!720990))))

(assert (=> b!2275711 (= tp!720905 e!1457955)))

(assert (= (and b!2275711 ((_ is Cons!27058) (originalCharacters!5087 (h!32460 (t!202981 tokens!456))))) b!2276243))

(declare-fun b!2276247 () Bool)

(declare-fun e!1457958 () Bool)

(declare-fun tp!720993 () Bool)

(declare-fun tp!720995 () Bool)

(assert (=> b!2276247 (= e!1457958 (and tp!720993 tp!720995))))

(declare-fun b!2276246 () Bool)

(assert (=> b!2276246 (= e!1457958 tp_is_empty!10551)))

(declare-fun b!2276248 () Bool)

(declare-fun tp!720992 () Bool)

(assert (=> b!2276248 (= e!1457958 tp!720992)))

(assert (=> b!2275716 (= tp!720911 e!1457958)))

(declare-fun b!2276249 () Bool)

(declare-fun tp!720991 () Bool)

(declare-fun tp!720994 () Bool)

(assert (=> b!2276249 (= e!1457958 (and tp!720991 tp!720994))))

(assert (= (and b!2275716 ((_ is ElementMatch!6665) (reg!6994 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276246))

(assert (= (and b!2275716 ((_ is Concat!11145) (reg!6994 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276247))

(assert (= (and b!2275716 ((_ is Star!6665) (reg!6994 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276248))

(assert (= (and b!2275716 ((_ is Union!6665) (reg!6994 (regex!4317 (rule!6639 (h!32460 tokens!456)))))) b!2276249))

(declare-fun b!2276250 () Bool)

(declare-fun e!1457959 () Bool)

(declare-fun tp!720996 () Bool)

(assert (=> b!2276250 (= e!1457959 (and tp_is_empty!10551 tp!720996))))

(assert (=> b!2275723 (= tp!720921 e!1457959)))

(assert (= (and b!2275723 ((_ is Cons!27058) (t!202980 (t!202980 input!1722)))) b!2276250))

(declare-fun b!2276253 () Bool)

(declare-fun b_free!67825 () Bool)

(declare-fun b_next!68529 () Bool)

(assert (=> b!2276253 (= b_free!67825 (not b_next!68529))))

(declare-fun tb!135209 () Bool)

(declare-fun t!203097 () Bool)

(assert (=> (and b!2276253 (= (toValue!6091 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) (toValue!6091 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203097) tb!135209))

(declare-fun result!164862 () Bool)

(assert (= result!164862 result!164836))

(assert (=> d!673808 t!203097))

(declare-fun b_and!179557 () Bool)

(declare-fun tp!721000 () Bool)

(assert (=> b!2276253 (= tp!721000 (and (=> t!203097 result!164862) b_and!179557))))

(declare-fun b_free!67827 () Bool)

(declare-fun b_next!68531 () Bool)

(assert (=> b!2276253 (= b_free!67827 (not b_next!68531))))

(declare-fun t!203099 () Bool)

(declare-fun tb!135211 () Bool)

(assert (=> (and b!2276253 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456)))))) t!203099) tb!135211))

(declare-fun result!164864 () Bool)

(assert (= result!164864 result!164824))

(assert (=> b!2276017 t!203099))

(declare-fun tb!135213 () Bool)

(declare-fun t!203101 () Bool)

(assert (=> (and b!2276253 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) (toChars!5950 (transformation!4317 (rule!6639 (_1!15889 (get!8155 lt!844883)))))) t!203101) tb!135213))

(declare-fun result!164866 () Bool)

(assert (= result!164866 result!164798))

(assert (=> d!673636 t!203101))

(declare-fun t!203103 () Bool)

(declare-fun tb!135215 () Bool)

(assert (=> (and b!2276253 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456))))) t!203103) tb!135215))

(declare-fun result!164868 () Bool)

(assert (= result!164868 result!164740))

(assert (=> d!673496 t!203103))

(assert (=> b!2275349 t!203103))

(declare-fun t!203105 () Bool)

(declare-fun tb!135217 () Bool)

(assert (=> (and b!2276253 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456))))) t!203105) tb!135217))

(declare-fun result!164870 () Bool)

(assert (= result!164870 result!164774))

(assert (=> d!673556 t!203105))

(declare-fun b_and!179559 () Bool)

(declare-fun tp!720999 () Bool)

(assert (=> b!2276253 (= tp!720999 (and (=> t!203103 result!164868) (=> t!203099 result!164864) (=> t!203101 result!164866) (=> t!203105 result!164870) b_and!179559))))

(declare-fun e!1457963 () Bool)

(assert (=> b!2276253 (= e!1457963 (and tp!721000 tp!720999))))

(declare-fun e!1457960 () Bool)

(declare-fun tp!720997 () Bool)

(declare-fun b!2276252 () Bool)

(assert (=> b!2276252 (= e!1457960 (and tp!720997 (inv!36627 (tag!4807 (h!32461 (t!202982 (t!202982 rules!1750))))) (inv!36630 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) e!1457963))))

(declare-fun b!2276251 () Bool)

(declare-fun e!1457961 () Bool)

(declare-fun tp!720998 () Bool)

(assert (=> b!2276251 (= e!1457961 (and e!1457960 tp!720998))))

(assert (=> b!2275732 (= tp!720931 e!1457961)))

(assert (= b!2276252 b!2276253))

(assert (= b!2276251 b!2276252))

(assert (= (and b!2275732 ((_ is Cons!27060) (t!202982 (t!202982 rules!1750)))) b!2276251))

(declare-fun m!2704569 () Bool)

(assert (=> b!2276252 m!2704569))

(declare-fun m!2704571 () Bool)

(assert (=> b!2276252 m!2704571))

(declare-fun b!2276259 () Bool)

(declare-fun e!1457966 () Bool)

(declare-fun tp!721003 () Bool)

(declare-fun tp!721005 () Bool)

(assert (=> b!2276259 (= e!1457966 (and tp!721003 tp!721005))))

(declare-fun b!2276258 () Bool)

(assert (=> b!2276258 (= e!1457966 tp_is_empty!10551)))

(declare-fun b!2276260 () Bool)

(declare-fun tp!721002 () Bool)

(assert (=> b!2276260 (= e!1457966 tp!721002)))

(assert (=> b!2275698 (= tp!720891 e!1457966)))

(declare-fun b!2276261 () Bool)

(declare-fun tp!721001 () Bool)

(declare-fun tp!721004 () Bool)

(assert (=> b!2276261 (= e!1457966 (and tp!721001 tp!721004))))

(assert (= (and b!2275698 ((_ is ElementMatch!6665) (reg!6994 (regex!4317 r!2363)))) b!2276258))

(assert (= (and b!2275698 ((_ is Concat!11145) (reg!6994 (regex!4317 r!2363)))) b!2276259))

(assert (= (and b!2275698 ((_ is Star!6665) (reg!6994 (regex!4317 r!2363)))) b!2276260))

(assert (= (and b!2275698 ((_ is Union!6665) (reg!6994 (regex!4317 r!2363)))) b!2276261))

(declare-fun b!2276263 () Bool)

(declare-fun e!1457967 () Bool)

(declare-fun tp!721008 () Bool)

(declare-fun tp!721010 () Bool)

(assert (=> b!2276263 (= e!1457967 (and tp!721008 tp!721010))))

(declare-fun b!2276262 () Bool)

(assert (=> b!2276262 (= e!1457967 tp_is_empty!10551)))

(declare-fun b!2276264 () Bool)

(declare-fun tp!721007 () Bool)

(assert (=> b!2276264 (= e!1457967 tp!721007)))

(assert (=> b!2275697 (= tp!720892 e!1457967)))

(declare-fun b!2276265 () Bool)

(declare-fun tp!721006 () Bool)

(declare-fun tp!721009 () Bool)

(assert (=> b!2276265 (= e!1457967 (and tp!721006 tp!721009))))

(assert (= (and b!2275697 ((_ is ElementMatch!6665) (regOne!13842 (regex!4317 r!2363)))) b!2276262))

(assert (= (and b!2275697 ((_ is Concat!11145) (regOne!13842 (regex!4317 r!2363)))) b!2276263))

(assert (= (and b!2275697 ((_ is Star!6665) (regOne!13842 (regex!4317 r!2363)))) b!2276264))

(assert (= (and b!2275697 ((_ is Union!6665) (regOne!13842 (regex!4317 r!2363)))) b!2276265))

(declare-fun b!2276267 () Bool)

(declare-fun e!1457969 () Bool)

(declare-fun tp!721013 () Bool)

(declare-fun tp!721015 () Bool)

(assert (=> b!2276267 (= e!1457969 (and tp!721013 tp!721015))))

(declare-fun b!2276266 () Bool)

(assert (=> b!2276266 (= e!1457969 tp_is_empty!10551)))

(declare-fun b!2276268 () Bool)

(declare-fun tp!721012 () Bool)

(assert (=> b!2276268 (= e!1457969 tp!721012)))

(assert (=> b!2275697 (= tp!720894 e!1457969)))

(declare-fun b!2276270 () Bool)

(declare-fun tp!721011 () Bool)

(declare-fun tp!721014 () Bool)

(assert (=> b!2276270 (= e!1457969 (and tp!721011 tp!721014))))

(assert (= (and b!2275697 ((_ is ElementMatch!6665) (regTwo!13842 (regex!4317 r!2363)))) b!2276266))

(assert (= (and b!2275697 ((_ is Concat!11145) (regTwo!13842 (regex!4317 r!2363)))) b!2276267))

(assert (= (and b!2275697 ((_ is Star!6665) (regTwo!13842 (regex!4317 r!2363)))) b!2276268))

(assert (= (and b!2275697 ((_ is Union!6665) (regTwo!13842 (regex!4317 r!2363)))) b!2276270))

(declare-fun b!2276273 () Bool)

(declare-fun e!1457970 () Bool)

(declare-fun tp!721018 () Bool)

(declare-fun tp!721020 () Bool)

(assert (=> b!2276273 (= e!1457970 (and tp!721018 tp!721020))))

(declare-fun b!2276272 () Bool)

(assert (=> b!2276272 (= e!1457970 tp_is_empty!10551)))

(declare-fun b!2276274 () Bool)

(declare-fun tp!721017 () Bool)

(assert (=> b!2276274 (= e!1457970 tp!721017)))

(assert (=> b!2275699 (= tp!720890 e!1457970)))

(declare-fun b!2276275 () Bool)

(declare-fun tp!721016 () Bool)

(declare-fun tp!721019 () Bool)

(assert (=> b!2276275 (= e!1457970 (and tp!721016 tp!721019))))

(assert (= (and b!2275699 ((_ is ElementMatch!6665) (regOne!13843 (regex!4317 r!2363)))) b!2276272))

(assert (= (and b!2275699 ((_ is Concat!11145) (regOne!13843 (regex!4317 r!2363)))) b!2276273))

(assert (= (and b!2275699 ((_ is Star!6665) (regOne!13843 (regex!4317 r!2363)))) b!2276274))

(assert (= (and b!2275699 ((_ is Union!6665) (regOne!13843 (regex!4317 r!2363)))) b!2276275))

(declare-fun b!2276279 () Bool)

(declare-fun e!1457972 () Bool)

(declare-fun tp!721023 () Bool)

(declare-fun tp!721025 () Bool)

(assert (=> b!2276279 (= e!1457972 (and tp!721023 tp!721025))))

(declare-fun b!2276278 () Bool)

(assert (=> b!2276278 (= e!1457972 tp_is_empty!10551)))

(declare-fun b!2276280 () Bool)

(declare-fun tp!721022 () Bool)

(assert (=> b!2276280 (= e!1457972 tp!721022)))

(assert (=> b!2275699 (= tp!720893 e!1457972)))

(declare-fun b!2276281 () Bool)

(declare-fun tp!721021 () Bool)

(declare-fun tp!721024 () Bool)

(assert (=> b!2276281 (= e!1457972 (and tp!721021 tp!721024))))

(assert (= (and b!2275699 ((_ is ElementMatch!6665) (regTwo!13843 (regex!4317 r!2363)))) b!2276278))

(assert (= (and b!2275699 ((_ is Concat!11145) (regTwo!13843 (regex!4317 r!2363)))) b!2276279))

(assert (= (and b!2275699 ((_ is Star!6665) (regTwo!13843 (regex!4317 r!2363)))) b!2276280))

(assert (= (and b!2275699 ((_ is Union!6665) (regTwo!13843 (regex!4317 r!2363)))) b!2276281))

(declare-fun b!2276284 () Bool)

(declare-fun e!1457974 () Bool)

(declare-fun tp!721026 () Bool)

(assert (=> b!2276284 (= e!1457974 (and tp_is_empty!10551 tp!721026))))

(assert (=> b!2275722 (= tp!720920 e!1457974)))

(assert (= (and b!2275722 ((_ is Cons!27058) (t!202980 (t!202980 suffix!886)))) b!2276284))

(declare-fun b!2276286 () Bool)

(declare-fun e!1457975 () Bool)

(declare-fun tp!721029 () Bool)

(declare-fun tp!721031 () Bool)

(assert (=> b!2276286 (= e!1457975 (and tp!721029 tp!721031))))

(declare-fun b!2276285 () Bool)

(assert (=> b!2276285 (= e!1457975 tp_is_empty!10551)))

(declare-fun b!2276287 () Bool)

(declare-fun tp!721028 () Bool)

(assert (=> b!2276287 (= e!1457975 tp!721028)))

(assert (=> b!2275733 (= tp!720930 e!1457975)))

(declare-fun b!2276288 () Bool)

(declare-fun tp!721027 () Bool)

(declare-fun tp!721030 () Bool)

(assert (=> b!2276288 (= e!1457975 (and tp!721027 tp!721030))))

(assert (= (and b!2275733 ((_ is ElementMatch!6665) (regex!4317 (h!32461 (t!202982 rules!1750))))) b!2276285))

(assert (= (and b!2275733 ((_ is Concat!11145) (regex!4317 (h!32461 (t!202982 rules!1750))))) b!2276286))

(assert (= (and b!2275733 ((_ is Star!6665) (regex!4317 (h!32461 (t!202982 rules!1750))))) b!2276287))

(assert (= (and b!2275733 ((_ is Union!6665) (regex!4317 (h!32461 (t!202982 rules!1750))))) b!2276288))

(declare-fun e!1457977 () Bool)

(declare-fun b!2276289 () Bool)

(declare-fun tp!721033 () Bool)

(declare-fun tp!721032 () Bool)

(assert (=> b!2276289 (= e!1457977 (and (inv!36634 (left!20529 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))))) tp!721033 (inv!36634 (right!20859 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))))) tp!721032))))

(declare-fun b!2276291 () Bool)

(declare-fun e!1457976 () Bool)

(declare-fun tp!721034 () Bool)

(assert (=> b!2276291 (= e!1457976 tp!721034)))

(declare-fun b!2276290 () Bool)

(assert (=> b!2276290 (= e!1457977 (and (inv!36640 (xs!11724 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))))) e!1457976))))

(assert (=> b!2275355 (= tp!720805 (and (inv!36634 (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456))))) e!1457977))))

(assert (= (and b!2275355 ((_ is Node!8782) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))))) b!2276289))

(assert (= b!2276290 b!2276291))

(assert (= (and b!2275355 ((_ is Leaf!12926) (c!361142 (dynLambda!11743 (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (value!136854 (h!32460 tokens!456)))))) b!2276290))

(declare-fun m!2704589 () Bool)

(assert (=> b!2276289 m!2704589))

(declare-fun m!2704591 () Bool)

(assert (=> b!2276289 m!2704591))

(declare-fun m!2704593 () Bool)

(assert (=> b!2276290 m!2704593))

(assert (=> b!2275355 m!2703639))

(declare-fun b!2276293 () Bool)

(declare-fun e!1457978 () Bool)

(declare-fun tp!721037 () Bool)

(declare-fun tp!721039 () Bool)

(assert (=> b!2276293 (= e!1457978 (and tp!721037 tp!721039))))

(declare-fun b!2276292 () Bool)

(assert (=> b!2276292 (= e!1457978 tp_is_empty!10551)))

(declare-fun b!2276294 () Bool)

(declare-fun tp!721036 () Bool)

(assert (=> b!2276294 (= e!1457978 tp!721036)))

(assert (=> b!2275720 (= tp!720916 e!1457978)))

(declare-fun b!2276295 () Bool)

(declare-fun tp!721035 () Bool)

(declare-fun tp!721038 () Bool)

(assert (=> b!2276295 (= e!1457978 (and tp!721035 tp!721038))))

(assert (= (and b!2275720 ((_ is ElementMatch!6665) (reg!6994 (regex!4317 (h!32461 rules!1750))))) b!2276292))

(assert (= (and b!2275720 ((_ is Concat!11145) (reg!6994 (regex!4317 (h!32461 rules!1750))))) b!2276293))

(assert (= (and b!2275720 ((_ is Star!6665) (reg!6994 (regex!4317 (h!32461 rules!1750))))) b!2276294))

(assert (= (and b!2275720 ((_ is Union!6665) (reg!6994 (regex!4317 (h!32461 rules!1750))))) b!2276295))

(declare-fun b!2276297 () Bool)

(declare-fun e!1457979 () Bool)

(declare-fun tp!721042 () Bool)

(declare-fun tp!721044 () Bool)

(assert (=> b!2276297 (= e!1457979 (and tp!721042 tp!721044))))

(declare-fun b!2276296 () Bool)

(assert (=> b!2276296 (= e!1457979 tp_is_empty!10551)))

(declare-fun b!2276298 () Bool)

(declare-fun tp!721041 () Bool)

(assert (=> b!2276298 (= e!1457979 tp!721041)))

(assert (=> b!2275719 (= tp!720917 e!1457979)))

(declare-fun b!2276299 () Bool)

(declare-fun tp!721040 () Bool)

(declare-fun tp!721043 () Bool)

(assert (=> b!2276299 (= e!1457979 (and tp!721040 tp!721043))))

(assert (= (and b!2275719 ((_ is ElementMatch!6665) (regOne!13842 (regex!4317 (h!32461 rules!1750))))) b!2276296))

(assert (= (and b!2275719 ((_ is Concat!11145) (regOne!13842 (regex!4317 (h!32461 rules!1750))))) b!2276297))

(assert (= (and b!2275719 ((_ is Star!6665) (regOne!13842 (regex!4317 (h!32461 rules!1750))))) b!2276298))

(assert (= (and b!2275719 ((_ is Union!6665) (regOne!13842 (regex!4317 (h!32461 rules!1750))))) b!2276299))

(declare-fun b!2276301 () Bool)

(declare-fun e!1457980 () Bool)

(declare-fun tp!721047 () Bool)

(declare-fun tp!721049 () Bool)

(assert (=> b!2276301 (= e!1457980 (and tp!721047 tp!721049))))

(declare-fun b!2276300 () Bool)

(assert (=> b!2276300 (= e!1457980 tp_is_empty!10551)))

(declare-fun b!2276302 () Bool)

(declare-fun tp!721046 () Bool)

(assert (=> b!2276302 (= e!1457980 tp!721046)))

(assert (=> b!2275719 (= tp!720919 e!1457980)))

(declare-fun b!2276303 () Bool)

(declare-fun tp!721045 () Bool)

(declare-fun tp!721048 () Bool)

(assert (=> b!2276303 (= e!1457980 (and tp!721045 tp!721048))))

(assert (= (and b!2275719 ((_ is ElementMatch!6665) (regTwo!13842 (regex!4317 (h!32461 rules!1750))))) b!2276300))

(assert (= (and b!2275719 ((_ is Concat!11145) (regTwo!13842 (regex!4317 (h!32461 rules!1750))))) b!2276301))

(assert (= (and b!2275719 ((_ is Star!6665) (regTwo!13842 (regex!4317 (h!32461 rules!1750))))) b!2276302))

(assert (= (and b!2275719 ((_ is Union!6665) (regTwo!13842 (regex!4317 (h!32461 rules!1750))))) b!2276303))

(declare-fun b!2276304 () Bool)

(declare-fun e!1457981 () Bool)

(declare-fun tp!721050 () Bool)

(assert (=> b!2276304 (= e!1457981 (and tp_is_empty!10551 tp!721050))))

(assert (=> b!2275681 (= tp!720874 e!1457981)))

(assert (= (and b!2275681 ((_ is Cons!27058) (t!202980 (originalCharacters!5087 (h!32460 tokens!456))))) b!2276304))

(declare-fun b!2276306 () Bool)

(declare-fun e!1457982 () Bool)

(declare-fun tp!721053 () Bool)

(declare-fun tp!721055 () Bool)

(assert (=> b!2276306 (= e!1457982 (and tp!721053 tp!721055))))

(declare-fun b!2276305 () Bool)

(assert (=> b!2276305 (= e!1457982 tp_is_empty!10551)))

(declare-fun b!2276307 () Bool)

(declare-fun tp!721052 () Bool)

(assert (=> b!2276307 (= e!1457982 tp!721052)))

(assert (=> b!2275721 (= tp!720915 e!1457982)))

(declare-fun b!2276308 () Bool)

(declare-fun tp!721051 () Bool)

(declare-fun tp!721054 () Bool)

(assert (=> b!2276308 (= e!1457982 (and tp!721051 tp!721054))))

(assert (= (and b!2275721 ((_ is ElementMatch!6665) (regOne!13843 (regex!4317 (h!32461 rules!1750))))) b!2276305))

(assert (= (and b!2275721 ((_ is Concat!11145) (regOne!13843 (regex!4317 (h!32461 rules!1750))))) b!2276306))

(assert (= (and b!2275721 ((_ is Star!6665) (regOne!13843 (regex!4317 (h!32461 rules!1750))))) b!2276307))

(assert (= (and b!2275721 ((_ is Union!6665) (regOne!13843 (regex!4317 (h!32461 rules!1750))))) b!2276308))

(declare-fun b!2276310 () Bool)

(declare-fun e!1457983 () Bool)

(declare-fun tp!721058 () Bool)

(declare-fun tp!721060 () Bool)

(assert (=> b!2276310 (= e!1457983 (and tp!721058 tp!721060))))

(declare-fun b!2276309 () Bool)

(assert (=> b!2276309 (= e!1457983 tp_is_empty!10551)))

(declare-fun b!2276311 () Bool)

(declare-fun tp!721057 () Bool)

(assert (=> b!2276311 (= e!1457983 tp!721057)))

(assert (=> b!2275721 (= tp!720918 e!1457983)))

(declare-fun b!2276312 () Bool)

(declare-fun tp!721056 () Bool)

(declare-fun tp!721059 () Bool)

(assert (=> b!2276312 (= e!1457983 (and tp!721056 tp!721059))))

(assert (= (and b!2275721 ((_ is ElementMatch!6665) (regTwo!13843 (regex!4317 (h!32461 rules!1750))))) b!2276309))

(assert (= (and b!2275721 ((_ is Concat!11145) (regTwo!13843 (regex!4317 (h!32461 rules!1750))))) b!2276310))

(assert (= (and b!2275721 ((_ is Star!6665) (regTwo!13843 (regex!4317 (h!32461 rules!1750))))) b!2276311))

(assert (= (and b!2275721 ((_ is Union!6665) (regTwo!13843 (regex!4317 (h!32461 rules!1750))))) b!2276312))

(declare-fun b!2276313 () Bool)

(declare-fun e!1457984 () Bool)

(declare-fun tp!721061 () Bool)

(assert (=> b!2276313 (= e!1457984 (and tp_is_empty!10551 tp!721061))))

(assert (=> b!2275680 (= tp!720873 e!1457984)))

(assert (= (and b!2275680 ((_ is Cons!27058) (t!202980 (t!202980 otherP!12)))) b!2276313))

(declare-fun b!2276315 () Bool)

(declare-fun e!1457985 () Bool)

(declare-fun tp!721064 () Bool)

(declare-fun tp!721066 () Bool)

(assert (=> b!2276315 (= e!1457985 (and tp!721064 tp!721066))))

(declare-fun b!2276314 () Bool)

(assert (=> b!2276314 (= e!1457985 tp_is_empty!10551)))

(declare-fun b!2276316 () Bool)

(declare-fun tp!721063 () Bool)

(assert (=> b!2276316 (= e!1457985 tp!721063)))

(assert (=> b!2275695 (= tp!720885 e!1457985)))

(declare-fun b!2276317 () Bool)

(declare-fun tp!721062 () Bool)

(declare-fun tp!721065 () Bool)

(assert (=> b!2276317 (= e!1457985 (and tp!721062 tp!721065))))

(assert (= (and b!2275695 ((_ is ElementMatch!6665) (regOne!13843 (regex!4317 otherR!12)))) b!2276314))

(assert (= (and b!2275695 ((_ is Concat!11145) (regOne!13843 (regex!4317 otherR!12)))) b!2276315))

(assert (= (and b!2275695 ((_ is Star!6665) (regOne!13843 (regex!4317 otherR!12)))) b!2276316))

(assert (= (and b!2275695 ((_ is Union!6665) (regOne!13843 (regex!4317 otherR!12)))) b!2276317))

(declare-fun b!2276319 () Bool)

(declare-fun e!1457986 () Bool)

(declare-fun tp!721069 () Bool)

(declare-fun tp!721071 () Bool)

(assert (=> b!2276319 (= e!1457986 (and tp!721069 tp!721071))))

(declare-fun b!2276318 () Bool)

(assert (=> b!2276318 (= e!1457986 tp_is_empty!10551)))

(declare-fun b!2276320 () Bool)

(declare-fun tp!721068 () Bool)

(assert (=> b!2276320 (= e!1457986 tp!721068)))

(assert (=> b!2275695 (= tp!720888 e!1457986)))

(declare-fun b!2276321 () Bool)

(declare-fun tp!721067 () Bool)

(declare-fun tp!721070 () Bool)

(assert (=> b!2276321 (= e!1457986 (and tp!721067 tp!721070))))

(assert (= (and b!2275695 ((_ is ElementMatch!6665) (regTwo!13843 (regex!4317 otherR!12)))) b!2276318))

(assert (= (and b!2275695 ((_ is Concat!11145) (regTwo!13843 (regex!4317 otherR!12)))) b!2276319))

(assert (= (and b!2275695 ((_ is Star!6665) (regTwo!13843 (regex!4317 otherR!12)))) b!2276320))

(assert (= (and b!2275695 ((_ is Union!6665) (regTwo!13843 (regex!4317 otherR!12)))) b!2276321))

(declare-fun b_lambda!72489 () Bool)

(assert (= b_lambda!72475 (or (and b!2275713 b_free!67815 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) (and b!2275734 b_free!67819 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) (and b!2276232 b_free!67823 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) (and b!2275200 b_free!67799 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) (and b!2275218 b_free!67791 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) (and b!2275219 b_free!67795 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) (and b!2276253 b_free!67827 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) (and b!2275201 b_free!67803 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 (rule!6639 (head!4918 tokens!456)))))) b_lambda!72489)))

(declare-fun b_lambda!72491 () Bool)

(assert (= b_lambda!72485 (or (and b!2275200 b_free!67799 (= (toChars!5950 (transformation!4317 r!2363)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))))) (and b!2275218 b_free!67791 (= (toChars!5950 (transformation!4317 otherR!12)) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))))) (and b!2275713 b_free!67815) (and b!2275219 b_free!67795 (= (toChars!5950 (transformation!4317 (h!32461 rules!1750))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))))) (and b!2275734 b_free!67819 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 rules!1750)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))))) (and b!2276232 b_free!67823 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 (t!202981 tokens!456)))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))))) (and b!2275201 b_free!67803 (= (toChars!5950 (transformation!4317 (rule!6639 (h!32460 tokens!456)))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))))) (and b!2276253 b_free!67827 (= (toChars!5950 (transformation!4317 (h!32461 (t!202982 (t!202982 rules!1750))))) (toChars!5950 (transformation!4317 (rule!6639 (h!32460 (t!202981 tokens!456))))))) b_lambda!72491)))

(check-sat (not b!2276227) (not b!2276239) tp_is_empty!10551 (not d!673602) (not b!2275876) (not b_next!68527) (not b!2275850) (not b!2275942) (not b_next!68529) (not b_next!68495) (not b!2276306) (not b!2276104) (not b!2275782) (not b!2275943) (not b!2276264) (not b!2276281) (not b!2275669) (not b!2275760) (not b!2275913) (not b_next!68493) (not d!673744) (not b!2276211) (not b!2276321) (not b!2276312) (not b!2276291) (not b!2276261) (not d!673686) (not b!2275963) (not b!2275969) (not b!2276108) (not d!673670) (not b!2275780) (not b!2275959) (not d!673814) (not d!673754) (not b!2276224) (not b!2276214) (not b!2276018) (not b!2276250) (not b!2275796) b_and!179537 (not d!673656) b_and!179553 (not b!2275916) (not b!2275897) (not b!2276198) (not d!673694) b_and!179529 (not b!2275954) (not b_lambda!72481) (not d!673608) (not b!2275917) (not b!2276279) (not bm!136287) (not b!2276183) (not b!2275836) (not b!2275355) (not d!673678) (not d!673818) (not b!2276014) (not d!673646) (not b!2275843) (not d!673776) (not b!2275910) (not b!2276020) (not b!2276212) (not b!2276006) (not b!2275991) (not b!2275900) (not b!2276076) (not d!673714) (not b!2276122) (not b!2276129) (not b!2276243) (not b!2276078) (not b!2275940) (not b!2276317) (not b!2275989) (not b!2275918) (not b!2276029) (not b!2275972) (not d!673802) (not b!2276146) (not d!673768) (not b_next!68517) (not b!2276229) (not b!2276288) (not b!2276297) (not b!2276313) (not d!673742) (not b!2276200) (not b_lambda!72489) (not bm!136272) (not b!2276023) (not bm!136270) (not b!2275849) (not d!673620) (not d!673690) (not b!2276080) (not b_next!68519) (not b!2275764) (not d!673606) (not b!2275898) (not b!2276231) (not b!2276230) (not b!2275832) (not bm!136273) (not d!673652) (not b!2276228) (not b!2276248) (not d!673762) (not d!673680) (not b!2275795) (not b!2276116) (not d!673692) (not b!2275945) b_and!179557 (not b!2276079) (not b!2276185) (not d!673740) (not b!2276302) (not b!2276294) (not b!2275769) (not bm!136283) (not b!2276003) (not b!2276238) (not b!2275767) (not b_next!68497) (not b!2276223) (not b!2275842) (not b_next!68531) (not b!2276293) (not b!2276109) (not b!2276251) (not d!673626) (not b_next!68525) b_and!179559 (not d!673618) (not b!2275924) (not b!2276267) (not b!2275956) (not b!2276268) (not b!2276220) (not b!2276280) (not b!2275901) (not b!2276222) (not b!2276247) (not bm!136282) (not b!2275928) b_and!179533 (not b_lambda!72479) (not b!2276274) (not b!2275958) (not tb!135175) (not b!2275761) (not d!673700) b_and!179547 b_and!179541 (not b!2275971) (not b!2276265) (not b!2276184) b_and!179539 (not d!673672) (not b!2276126) (not b!2276273) (not b!2276301) (not d!673564) (not b!2276270) b_and!179543 (not d!673766) (not bm!136286) (not tb!135151) (not b!2276149) (not b!2276284) (not d!673684) b_and!179549 (not b!2276308) (not b!2275955) (not b!2276106) (not b!2276081) (not d!673764) (not b!2276298) (not b!2276299) (not b!2275905) (not b!2276026) (not b!2275829) (not b_next!68523) (not b_next!68521) (not d!673622) (not b!2276002) (not d!673654) (not b!2275957) (not b!2276295) (not d!673636) (not b!2276304) (not b!2275909) (not b!2276290) (not d!673756) (not b!2276077) (not d!673594) (not bm!136289) (not b_lambda!72477) (not b!2275912) (not b_next!68501) (not d!673810) (not d!673788) (not d!673634) (not b!2276275) (not b!2276188) (not b!2276147) (not d!673780) (not b!2276017) (not d!673790) (not b!2275847) (not b!2276121) (not b!2276226) (not d!673644) (not d!673796) (not b!2276019) (not b!2276128) (not b!2276260) (not tb!135187) (not d!673806) b_and!179551 (not b!2276287) (not b!2276252) (not b!2276110) b_and!179555 (not b!2275961) (not b!2275906) (not b!2276315) (not b!2275778) (not b!2276216) (not b!2276289) (not b!2276307) (not b!2276210) (not b_lambda!72487) (not b!2275776) (not b!2276311) (not b!2276024) (not b!2276083) (not b_next!68507) (not d!673752) (not b!2275923) (not b!2275833) b_and!179531 (not b!2276187) (not b!2275962) (not b!2276218) b_and!179535 (not b!2276219) (not b_next!68505) (not b!2276082) (not b_next!68503) (not b!2275837) (not b!2276189) (not b!2276316) (not b!2276091) (not b!2276320) (not b!2275830) (not b!2276303) (not d!673668) (not b!2276319) (not b!2275882) (not b!2275783) (not b!2275817) (not b!2276310) (not b_next!68499) (not d!673696) (not b!2275766) (not d!673816) (not b!2276215) (not d!673812) (not b!2276016) (not d!673726) (not b_lambda!72491) (not d!673748) (not b!2275973) (not d!673640) (not b!2276249) (not b!2276259) (not b!2276240) (not b!2276028) (not b!2276263) (not d!673688) (not d!673616) (not b!2276199) b_and!179545 (not b!2275985) (not b!2275907) (not b!2276286) (not bm!136290))
(check-sat (not b_next!68493) b_and!179537 (not b_next!68517) (not b_next!68519) b_and!179533 (not b_next!68501) (not b_next!68499) b_and!179545 (not b_next!68527) (not b_next!68529) (not b_next!68495) b_and!179553 b_and!179529 b_and!179557 (not b_next!68497) (not b_next!68531) b_and!179559 (not b_next!68525) b_and!179547 b_and!179541 b_and!179539 b_and!179543 b_and!179549 (not b_next!68523) (not b_next!68521) b_and!179555 b_and!179551 (not b_next!68507) b_and!179535 b_and!179531 (not b_next!68505) (not b_next!68503))
