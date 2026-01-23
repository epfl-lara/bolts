; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223888 () Bool)

(assert start!223888)

(declare-fun b!2284091 () Bool)

(declare-fun b_free!68365 () Bool)

(declare-fun b_next!69069 () Bool)

(assert (=> b!2284091 (= b_free!68365 (not b_next!69069))))

(declare-fun tp!723975 () Bool)

(declare-fun b_and!180713 () Bool)

(assert (=> b!2284091 (= tp!723975 b_and!180713)))

(declare-fun b_free!68367 () Bool)

(declare-fun b_next!69071 () Bool)

(assert (=> b!2284091 (= b_free!68367 (not b_next!69071))))

(declare-fun tp!723965 () Bool)

(declare-fun b_and!180715 () Bool)

(assert (=> b!2284091 (= tp!723965 b_and!180715)))

(declare-fun b!2284096 () Bool)

(declare-fun b_free!68369 () Bool)

(declare-fun b_next!69073 () Bool)

(assert (=> b!2284096 (= b_free!68369 (not b_next!69073))))

(declare-fun tp!723978 () Bool)

(declare-fun b_and!180717 () Bool)

(assert (=> b!2284096 (= tp!723978 b_and!180717)))

(declare-fun b_free!68371 () Bool)

(declare-fun b_next!69075 () Bool)

(assert (=> b!2284096 (= b_free!68371 (not b_next!69075))))

(declare-fun tp!723976 () Bool)

(declare-fun b_and!180719 () Bool)

(assert (=> b!2284096 (= tp!723976 b_and!180719)))

(declare-fun b!2284113 () Bool)

(declare-fun b_free!68373 () Bool)

(declare-fun b_next!69077 () Bool)

(assert (=> b!2284113 (= b_free!68373 (not b_next!69077))))

(declare-fun tp!723963 () Bool)

(declare-fun b_and!180721 () Bool)

(assert (=> b!2284113 (= tp!723963 b_and!180721)))

(declare-fun b_free!68375 () Bool)

(declare-fun b_next!69079 () Bool)

(assert (=> b!2284113 (= b_free!68375 (not b_next!69079))))

(declare-fun tp!723969 () Bool)

(declare-fun b_and!180723 () Bool)

(assert (=> b!2284113 (= tp!723969 b_and!180723)))

(declare-fun b!2284110 () Bool)

(declare-fun b_free!68377 () Bool)

(declare-fun b_next!69081 () Bool)

(assert (=> b!2284110 (= b_free!68377 (not b_next!69081))))

(declare-fun tp!723966 () Bool)

(declare-fun b_and!180725 () Bool)

(assert (=> b!2284110 (= tp!723966 b_and!180725)))

(declare-fun b_free!68379 () Bool)

(declare-fun b_next!69083 () Bool)

(assert (=> b!2284110 (= b_free!68379 (not b_next!69083))))

(declare-fun tp!723972 () Bool)

(declare-fun b_and!180727 () Bool)

(assert (=> b!2284110 (= tp!723972 b_and!180727)))

(declare-fun e!1463293 () Bool)

(assert (=> b!2284091 (= e!1463293 (and tp!723975 tp!723965))))

(declare-fun b!2284092 () Bool)

(declare-fun res!976409 () Bool)

(declare-fun e!1463301 () Bool)

(assert (=> b!2284092 (=> res!976409 e!1463301)))

(declare-datatypes ((List!27269 0))(
  ( (Nil!27175) (Cons!27175 (h!32576 (_ BitVec 16)) (t!203899 List!27269)) )
))
(declare-datatypes ((TokenValue!4505 0))(
  ( (FloatLiteralValue!9010 (text!31980 List!27269)) (TokenValueExt!4504 (__x!18070 Int)) (Broken!22525 (value!137569 List!27269)) (Object!4598) (End!4505) (Def!4505) (Underscore!4505) (Match!4505) (Else!4505) (Error!4505) (Case!4505) (If!4505) (Extends!4505) (Abstract!4505) (Class!4505) (Val!4505) (DelimiterValue!9010 (del!4565 List!27269)) (KeywordValue!4511 (value!137570 List!27269)) (CommentValue!9010 (value!137571 List!27269)) (WhitespaceValue!9010 (value!137572 List!27269)) (IndentationValue!4505 (value!137573 List!27269)) (String!29628) (Int32!4505) (Broken!22526 (value!137574 List!27269)) (Boolean!4506) (Unit!40087) (OperatorValue!4508 (op!4565 List!27269)) (IdentifierValue!9010 (value!137575 List!27269)) (IdentifierValue!9011 (value!137576 List!27269)) (WhitespaceValue!9011 (value!137577 List!27269)) (True!9010) (False!9010) (Broken!22527 (value!137578 List!27269)) (Broken!22528 (value!137579 List!27269)) (True!9011) (RightBrace!4505) (RightBracket!4505) (Colon!4505) (Null!4505) (Comma!4505) (LeftBracket!4505) (False!9011) (LeftBrace!4505) (ImaginaryLiteralValue!4505 (text!31981 List!27269)) (StringLiteralValue!13515 (value!137580 List!27269)) (EOFValue!4505 (value!137581 List!27269)) (IdentValue!4505 (value!137582 List!27269)) (DelimiterValue!9011 (value!137583 List!27269)) (DedentValue!4505 (value!137584 List!27269)) (NewLineValue!4505 (value!137585 List!27269)) (IntegerValue!13515 (value!137586 (_ BitVec 32)) (text!31982 List!27269)) (IntegerValue!13516 (value!137587 Int) (text!31983 List!27269)) (Times!4505) (Or!4505) (Equal!4505) (Minus!4505) (Broken!22529 (value!137588 List!27269)) (And!4505) (Div!4505) (LessEqual!4505) (Mod!4505) (Concat!11196) (Not!4505) (Plus!4505) (SpaceValue!4505 (value!137589 List!27269)) (IntegerValue!13517 (value!137590 Int) (text!31984 List!27269)) (StringLiteralValue!13516 (text!31985 List!27269)) (FloatLiteralValue!9011 (text!31986 List!27269)) (BytesLiteralValue!4505 (value!137591 List!27269)) (CommentValue!9011 (value!137592 List!27269)) (StringLiteralValue!13517 (value!137593 List!27269)) (ErrorTokenValue!4505 (msg!4566 List!27269)) )
))
(declare-datatypes ((C!13528 0))(
  ( (C!13529 (val!7812 Int)) )
))
(declare-datatypes ((List!27270 0))(
  ( (Nil!27176) (Cons!27176 (h!32577 C!13528) (t!203900 List!27270)) )
))
(declare-datatypes ((IArray!17673 0))(
  ( (IArray!17674 (innerList!8894 List!27270)) )
))
(declare-datatypes ((Conc!8834 0))(
  ( (Node!8834 (left!20610 Conc!8834) (right!20940 Conc!8834) (csize!17898 Int) (cheight!9045 Int)) (Leaf!12991 (xs!11776 IArray!17673) (csize!17899 Int)) (Empty!8834) )
))
(declare-datatypes ((BalanceConc!17396 0))(
  ( (BalanceConc!17397 (c!362380 Conc!8834)) )
))
(declare-datatypes ((Regex!6691 0))(
  ( (ElementMatch!6691 (c!362381 C!13528)) (Concat!11197 (regOne!13894 Regex!6691) (regTwo!13894 Regex!6691)) (EmptyExpr!6691) (Star!6691 (reg!7020 Regex!6691)) (EmptyLang!6691) (Union!6691 (regOne!13895 Regex!6691) (regTwo!13895 Regex!6691)) )
))
(declare-datatypes ((String!29629 0))(
  ( (String!29630 (value!137594 String)) )
))
(declare-datatypes ((TokenValueInjection!8550 0))(
  ( (TokenValueInjection!8551 (toValue!6129 Int) (toChars!5988 Int)) )
))
(declare-datatypes ((Rule!8486 0))(
  ( (Rule!8487 (regex!4343 Regex!6691) (tag!4833 String!29629) (isSeparator!4343 Bool) (transformation!4343 TokenValueInjection!8550)) )
))
(declare-fun r!2363 () Rule!8486)

(declare-fun lt!847732 () List!27270)

(declare-fun matchR!2948 (Regex!6691 List!27270) Bool)

(assert (=> b!2284092 (= res!976409 (not (matchR!2948 (regex!4343 r!2363) lt!847732)))))

(declare-fun b!2284093 () Bool)

(declare-fun e!1463303 () Bool)

(declare-fun e!1463297 () Bool)

(assert (=> b!2284093 (= e!1463303 e!1463297)))

(declare-fun res!976408 () Bool)

(assert (=> b!2284093 (=> res!976408 e!1463297)))

(declare-datatypes ((Token!8164 0))(
  ( (Token!8165 (value!137595 TokenValue!4505) (rule!6671 Rule!8486) (size!21376 Int) (originalCharacters!5113 List!27270)) )
))
(declare-datatypes ((List!27271 0))(
  ( (Nil!27177) (Cons!27177 (h!32578 Token!8164) (t!203901 List!27271)) )
))
(declare-fun tokens!456 () List!27271)

(declare-datatypes ((tuple2!26938 0))(
  ( (tuple2!26939 (_1!15979 Token!8164) (_2!15979 List!27270)) )
))
(declare-fun lt!847727 () tuple2!26938)

(assert (=> b!2284093 (= res!976408 (not (= (h!32578 tokens!456) (_1!15979 lt!847727))))))

(declare-datatypes ((Option!5331 0))(
  ( (None!5330) (Some!5330 (v!30398 tuple2!26938)) )
))
(declare-fun lt!847720 () Option!5331)

(declare-fun get!8194 (Option!5331) tuple2!26938)

(assert (=> b!2284093 (= lt!847727 (get!8194 lt!847720))))

(declare-fun input!1722 () List!27270)

(declare-datatypes ((List!27272 0))(
  ( (Nil!27178) (Cons!27178 (h!32579 Rule!8486) (t!203902 List!27272)) )
))
(declare-fun rules!1750 () List!27272)

(declare-datatypes ((LexerInterface!3940 0))(
  ( (LexerInterfaceExt!3937 (__x!18071 Int)) (Lexer!3938) )
))
(declare-fun thiss!16613 () LexerInterface!3940)

(declare-fun maxPrefix!2204 (LexerInterface!3940 List!27272 List!27270) Option!5331)

(assert (=> b!2284093 (= lt!847720 (maxPrefix!2204 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2284094 () Bool)

(declare-fun res!976395 () Bool)

(assert (=> b!2284094 (=> res!976395 e!1463301)))

(declare-fun lt!847717 () Int)

(declare-fun lt!847723 () Int)

(assert (=> b!2284094 (= res!976395 (>= lt!847717 lt!847723))))

(declare-fun b!2284095 () Bool)

(declare-fun res!976391 () Bool)

(declare-fun e!1463298 () Bool)

(assert (=> b!2284095 (=> (not res!976391) (not e!1463298))))

(declare-fun otherR!12 () Rule!8486)

(assert (=> b!2284095 (= res!976391 (not (= r!2363 otherR!12)))))

(declare-fun e!1463286 () Bool)

(assert (=> b!2284096 (= e!1463286 (and tp!723978 tp!723976))))

(declare-fun e!1463306 () Bool)

(declare-fun b!2284097 () Bool)

(declare-fun tp!723968 () Bool)

(declare-fun inv!36764 (String!29629) Bool)

(declare-fun inv!36767 (TokenValueInjection!8550) Bool)

(assert (=> b!2284097 (= e!1463306 (and tp!723968 (inv!36764 (tag!4833 (rule!6671 (h!32578 tokens!456)))) (inv!36767 (transformation!4343 (rule!6671 (h!32578 tokens!456)))) e!1463293))))

(declare-fun b!2284098 () Bool)

(declare-fun e!1463289 () Bool)

(declare-fun e!1463305 () Bool)

(declare-fun tp!723974 () Bool)

(assert (=> b!2284098 (= e!1463289 (and e!1463305 tp!723974))))

(declare-fun res!976394 () Bool)

(declare-fun e!1463290 () Bool)

(assert (=> start!223888 (=> (not res!976394) (not e!1463290))))

(get-info :version)

(assert (=> start!223888 (= res!976394 ((_ is Lexer!3938) thiss!16613))))

(assert (=> start!223888 e!1463290))

(assert (=> start!223888 true))

(declare-fun e!1463288 () Bool)

(assert (=> start!223888 e!1463288))

(declare-fun e!1463309 () Bool)

(assert (=> start!223888 e!1463309))

(declare-fun e!1463299 () Bool)

(assert (=> start!223888 e!1463299))

(declare-fun e!1463292 () Bool)

(assert (=> start!223888 e!1463292))

(assert (=> start!223888 e!1463289))

(declare-fun e!1463295 () Bool)

(assert (=> start!223888 e!1463295))

(declare-fun e!1463294 () Bool)

(assert (=> start!223888 e!1463294))

(declare-fun e!1463308 () Bool)

(declare-fun tp!723973 () Bool)

(declare-fun b!2284099 () Bool)

(declare-fun inv!36768 (Token!8164) Bool)

(assert (=> b!2284099 (= e!1463294 (and (inv!36768 (h!32578 tokens!456)) e!1463308 tp!723973))))

(declare-fun b!2284100 () Bool)

(declare-fun res!976410 () Bool)

(assert (=> b!2284100 (=> (not res!976410) (not e!1463290))))

(declare-fun contains!4717 (List!27272 Rule!8486) Bool)

(assert (=> b!2284100 (= res!976410 (contains!4717 rules!1750 r!2363))))

(declare-fun b!2284101 () Bool)

(declare-fun res!976401 () Bool)

(assert (=> b!2284101 (=> (not res!976401) (not e!1463290))))

(declare-fun isEmpty!15446 (List!27272) Bool)

(assert (=> b!2284101 (= res!976401 (not (isEmpty!15446 rules!1750)))))

(declare-fun b!2284102 () Bool)

(declare-fun e!1463302 () Bool)

(declare-fun list!10608 (BalanceConc!17396) List!27270)

(declare-fun charsOf!2731 (Token!8164) BalanceConc!17396)

(declare-fun head!4958 (List!27271) Token!8164)

(assert (=> b!2284102 (= e!1463302 (not (matchR!2948 (regex!4343 r!2363) (list!10608 (charsOf!2731 (head!4958 tokens!456))))))))

(declare-fun b!2284103 () Bool)

(declare-fun res!976392 () Bool)

(assert (=> b!2284103 (=> (not res!976392) (not e!1463298))))

(declare-fun e!1463291 () Bool)

(assert (=> b!2284103 (= res!976392 e!1463291)))

(declare-fun res!976402 () Bool)

(assert (=> b!2284103 (=> res!976402 e!1463291)))

(declare-fun lt!847729 () Bool)

(assert (=> b!2284103 (= res!976402 lt!847729)))

(declare-fun tp!723979 () Bool)

(declare-fun b!2284104 () Bool)

(declare-fun inv!21 (TokenValue!4505) Bool)

(assert (=> b!2284104 (= e!1463308 (and (inv!21 (value!137595 (h!32578 tokens!456))) e!1463306 tp!723979))))

(declare-fun b!2284105 () Bool)

(declare-fun otherP!12 () List!27270)

(assert (=> b!2284105 (= e!1463301 (not (matchR!2948 (regex!4343 otherR!12) otherP!12)))))

(assert (=> b!2284105 (not (matchR!2948 (regex!4343 otherR!12) lt!847732))))

(declare-datatypes ((Unit!40088 0))(
  ( (Unit!40089) )
))
(declare-fun lt!847734 () Unit!40088)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!186 (LexerInterface!3940 List!27272 Rule!8486 List!27270 List!27270 Rule!8486) Unit!40088)

(assert (=> b!2284105 (= lt!847734 (lemmaMaxPrefNoSmallerRuleMatches!186 thiss!16613 rules!1750 r!2363 lt!847732 input!1722 otherR!12))))

(declare-fun b!2284106 () Bool)

(assert (=> b!2284106 (= e!1463291 (= (rule!6671 (head!4958 tokens!456)) r!2363))))

(declare-fun b!2284107 () Bool)

(declare-fun e!1463300 () Bool)

(assert (=> b!2284107 (= e!1463300 e!1463303)))

(declare-fun res!976393 () Bool)

(assert (=> b!2284107 (=> res!976393 e!1463303)))

(assert (=> b!2284107 (= res!976393 (or (<= lt!847723 lt!847717) ((_ is Nil!27177) tokens!456)))))

(declare-fun getIndex!356 (List!27272 Rule!8486) Int)

(assert (=> b!2284107 (= lt!847717 (getIndex!356 rules!1750 otherR!12))))

(assert (=> b!2284107 (= lt!847723 (getIndex!356 rules!1750 r!2363))))

(declare-fun ruleValid!1433 (LexerInterface!3940 Rule!8486) Bool)

(assert (=> b!2284107 (ruleValid!1433 thiss!16613 otherR!12)))

(declare-fun lt!847719 () Unit!40088)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!838 (LexerInterface!3940 Rule!8486 List!27272) Unit!40088)

(assert (=> b!2284107 (= lt!847719 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!838 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2284108 () Bool)

(declare-fun tp_is_empty!10603 () Bool)

(declare-fun tp!723970 () Bool)

(assert (=> b!2284108 (= e!1463299 (and tp_is_empty!10603 tp!723970))))

(declare-fun tp!723962 () Bool)

(declare-fun e!1463282 () Bool)

(declare-fun b!2284109 () Bool)

(assert (=> b!2284109 (= e!1463309 (and tp!723962 (inv!36764 (tag!4833 otherR!12)) (inv!36767 (transformation!4343 otherR!12)) e!1463282))))

(assert (=> b!2284110 (= e!1463282 (and tp!723966 tp!723972))))

(declare-fun b!2284111 () Bool)

(declare-fun tp!723964 () Bool)

(assert (=> b!2284111 (= e!1463292 (and tp_is_empty!10603 tp!723964))))

(declare-fun b!2284112 () Bool)

(declare-fun res!976400 () Bool)

(assert (=> b!2284112 (=> (not res!976400) (not e!1463298))))

(declare-fun isPrefix!2333 (List!27270 List!27270) Bool)

(assert (=> b!2284112 (= res!976400 (isPrefix!2333 otherP!12 input!1722))))

(declare-fun e!1463283 () Bool)

(assert (=> b!2284113 (= e!1463283 (and tp!723963 tp!723969))))

(declare-fun b!2284114 () Bool)

(declare-fun tp!723977 () Bool)

(assert (=> b!2284114 (= e!1463305 (and tp!723977 (inv!36764 (tag!4833 (h!32579 rules!1750))) (inv!36767 (transformation!4343 (h!32579 rules!1750))) e!1463283))))

(declare-fun b!2284115 () Bool)

(declare-fun res!976403 () Bool)

(assert (=> b!2284115 (=> (not res!976403) (not e!1463290))))

(assert (=> b!2284115 (= res!976403 (contains!4717 rules!1750 otherR!12))))

(declare-fun b!2284116 () Bool)

(assert (=> b!2284116 (= e!1463298 (not e!1463300))))

(declare-fun res!976390 () Bool)

(assert (=> b!2284116 (=> res!976390 e!1463300)))

(assert (=> b!2284116 (= res!976390 e!1463302)))

(declare-fun res!976398 () Bool)

(assert (=> b!2284116 (=> (not res!976398) (not e!1463302))))

(assert (=> b!2284116 (= res!976398 (not lt!847729))))

(assert (=> b!2284116 (ruleValid!1433 thiss!16613 r!2363)))

(declare-fun lt!847724 () Unit!40088)

(assert (=> b!2284116 (= lt!847724 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!838 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2284117 () Bool)

(declare-fun e!1463307 () Bool)

(assert (=> b!2284117 (= e!1463307 e!1463298)))

(declare-fun res!976396 () Bool)

(assert (=> b!2284117 (=> (not res!976396) (not e!1463298))))

(declare-fun e!1463281 () Bool)

(assert (=> b!2284117 (= res!976396 e!1463281)))

(declare-fun res!976404 () Bool)

(assert (=> b!2284117 (=> res!976404 e!1463281)))

(assert (=> b!2284117 (= res!976404 lt!847729)))

(declare-fun isEmpty!15447 (List!27271) Bool)

(assert (=> b!2284117 (= lt!847729 (isEmpty!15447 tokens!456))))

(declare-fun b!2284118 () Bool)

(declare-fun res!976411 () Bool)

(assert (=> b!2284118 (=> (not res!976411) (not e!1463290))))

(declare-fun rulesInvariant!3442 (LexerInterface!3940 List!27272) Bool)

(assert (=> b!2284118 (= res!976411 (rulesInvariant!3442 thiss!16613 rules!1750))))

(declare-fun b!2284119 () Bool)

(declare-fun tp!723971 () Bool)

(assert (=> b!2284119 (= e!1463295 (and tp!723971 (inv!36764 (tag!4833 r!2363)) (inv!36767 (transformation!4343 r!2363)) e!1463286))))

(declare-fun b!2284120 () Bool)

(declare-fun e!1463287 () Bool)

(assert (=> b!2284120 (= e!1463297 e!1463287)))

(declare-fun res!976406 () Bool)

(assert (=> b!2284120 (=> res!976406 e!1463287)))

(declare-fun lt!847725 () Int)

(declare-fun lt!847733 () Int)

(assert (=> b!2284120 (= res!976406 (not (= lt!847725 lt!847733)))))

(declare-fun size!21377 (List!27270) Int)

(assert (=> b!2284120 (= lt!847733 (size!21377 lt!847732))))

(assert (=> b!2284120 (= lt!847725 (size!21377 otherP!12))))

(declare-fun lt!847728 () List!27270)

(assert (=> b!2284120 (= (_2!15979 lt!847727) lt!847728)))

(declare-fun lt!847731 () Unit!40088)

(declare-fun lemmaSamePrefixThenSameSuffix!1034 (List!27270 List!27270 List!27270 List!27270 List!27270) Unit!40088)

(assert (=> b!2284120 (= lt!847731 (lemmaSamePrefixThenSameSuffix!1034 lt!847732 (_2!15979 lt!847727) lt!847732 lt!847728 input!1722))))

(declare-fun getSuffix!1124 (List!27270 List!27270) List!27270)

(assert (=> b!2284120 (= lt!847728 (getSuffix!1124 input!1722 lt!847732))))

(declare-fun ++!6639 (List!27270 List!27270) List!27270)

(assert (=> b!2284120 (isPrefix!2333 lt!847732 (++!6639 lt!847732 (_2!15979 lt!847727)))))

(declare-fun lt!847726 () Unit!40088)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1538 (List!27270 List!27270) Unit!40088)

(assert (=> b!2284120 (= lt!847726 (lemmaConcatTwoListThenFirstIsPrefix!1538 lt!847732 (_2!15979 lt!847727)))))

(assert (=> b!2284120 (= lt!847732 (list!10608 (charsOf!2731 (h!32578 tokens!456))))))

(declare-fun b!2284121 () Bool)

(declare-fun e!1463285 () Bool)

(assert (=> b!2284121 (= e!1463285 e!1463301)))

(declare-fun res!976405 () Bool)

(assert (=> b!2284121 (=> res!976405 e!1463301)))

(declare-fun lt!847718 () BalanceConc!17396)

(declare-fun apply!6617 (TokenValueInjection!8550 BalanceConc!17396) TokenValue!4505)

(assert (=> b!2284121 (= res!976405 (not (= lt!847720 (Some!5330 (tuple2!26939 (Token!8165 (apply!6617 (transformation!4343 r!2363) lt!847718) r!2363 lt!847733 lt!847732) lt!847728)))))))

(declare-fun lt!847730 () Unit!40088)

(declare-fun lemmaSemiInverse!1052 (TokenValueInjection!8550 BalanceConc!17396) Unit!40088)

(assert (=> b!2284121 (= lt!847730 (lemmaSemiInverse!1052 (transformation!4343 r!2363) lt!847718))))

(declare-fun seqFromList!3047 (List!27270) BalanceConc!17396)

(assert (=> b!2284121 (= lt!847718 (seqFromList!3047 lt!847732))))

(declare-fun b!2284122 () Bool)

(declare-fun res!976399 () Bool)

(assert (=> b!2284122 (=> res!976399 e!1463285)))

(declare-fun isEmpty!15448 (List!27270) Bool)

(assert (=> b!2284122 (= res!976399 (isEmpty!15448 lt!847732))))

(declare-fun b!2284123 () Bool)

(declare-fun tp!723967 () Bool)

(assert (=> b!2284123 (= e!1463288 (and tp_is_empty!10603 tp!723967))))

(declare-fun b!2284124 () Bool)

(declare-fun size!21378 (BalanceConc!17396) Int)

(assert (=> b!2284124 (= e!1463281 (<= (size!21378 (charsOf!2731 (head!4958 tokens!456))) (size!21377 otherP!12)))))

(declare-fun b!2284125 () Bool)

(assert (=> b!2284125 (= e!1463287 e!1463285)))

(declare-fun res!976397 () Bool)

(assert (=> b!2284125 (=> res!976397 e!1463285)))

(assert (=> b!2284125 (= res!976397 (not (isPrefix!2333 lt!847732 input!1722)))))

(assert (=> b!2284125 (= lt!847732 otherP!12)))

(declare-fun lt!847722 () Unit!40088)

(declare-fun lemmaIsPrefixSameLengthThenSameList!399 (List!27270 List!27270 List!27270) Unit!40088)

(assert (=> b!2284125 (= lt!847722 (lemmaIsPrefixSameLengthThenSameList!399 lt!847732 otherP!12 input!1722))))

(declare-fun b!2284126 () Bool)

(assert (=> b!2284126 (= e!1463290 e!1463307)))

(declare-fun res!976407 () Bool)

(assert (=> b!2284126 (=> (not res!976407) (not e!1463307))))

(declare-datatypes ((IArray!17675 0))(
  ( (IArray!17676 (innerList!8895 List!27271)) )
))
(declare-datatypes ((Conc!8835 0))(
  ( (Node!8835 (left!20611 Conc!8835) (right!20941 Conc!8835) (csize!17900 Int) (cheight!9046 Int)) (Leaf!12992 (xs!11777 IArray!17675) (csize!17901 Int)) (Empty!8835) )
))
(declare-datatypes ((BalanceConc!17398 0))(
  ( (BalanceConc!17399 (c!362382 Conc!8835)) )
))
(declare-datatypes ((tuple2!26940 0))(
  ( (tuple2!26941 (_1!15980 BalanceConc!17398) (_2!15980 BalanceConc!17396)) )
))
(declare-fun lt!847721 () tuple2!26940)

(declare-fun suffix!886 () List!27270)

(declare-datatypes ((tuple2!26942 0))(
  ( (tuple2!26943 (_1!15981 List!27271) (_2!15981 List!27270)) )
))
(declare-fun list!10609 (BalanceConc!17398) List!27271)

(assert (=> b!2284126 (= res!976407 (= (tuple2!26943 (list!10609 (_1!15980 lt!847721)) (list!10608 (_2!15980 lt!847721))) (tuple2!26943 tokens!456 suffix!886)))))

(declare-fun lex!1779 (LexerInterface!3940 List!27272 BalanceConc!17396) tuple2!26940)

(assert (=> b!2284126 (= lt!847721 (lex!1779 thiss!16613 rules!1750 (seqFromList!3047 input!1722)))))

(assert (= (and start!223888 res!976394) b!2284101))

(assert (= (and b!2284101 res!976401) b!2284118))

(assert (= (and b!2284118 res!976411) b!2284100))

(assert (= (and b!2284100 res!976410) b!2284115))

(assert (= (and b!2284115 res!976403) b!2284126))

(assert (= (and b!2284126 res!976407) b!2284117))

(assert (= (and b!2284117 (not res!976404)) b!2284124))

(assert (= (and b!2284117 res!976396) b!2284103))

(assert (= (and b!2284103 (not res!976402)) b!2284106))

(assert (= (and b!2284103 res!976392) b!2284112))

(assert (= (and b!2284112 res!976400) b!2284095))

(assert (= (and b!2284095 res!976391) b!2284116))

(assert (= (and b!2284116 res!976398) b!2284102))

(assert (= (and b!2284116 (not res!976390)) b!2284107))

(assert (= (and b!2284107 (not res!976393)) b!2284093))

(assert (= (and b!2284093 (not res!976408)) b!2284120))

(assert (= (and b!2284120 (not res!976406)) b!2284125))

(assert (= (and b!2284125 (not res!976397)) b!2284122))

(assert (= (and b!2284122 (not res!976399)) b!2284121))

(assert (= (and b!2284121 (not res!976405)) b!2284092))

(assert (= (and b!2284092 (not res!976409)) b!2284094))

(assert (= (and b!2284094 (not res!976395)) b!2284105))

(assert (= (and start!223888 ((_ is Cons!27176) input!1722)) b!2284123))

(assert (= b!2284109 b!2284110))

(assert (= start!223888 b!2284109))

(assert (= (and start!223888 ((_ is Cons!27176) suffix!886)) b!2284108))

(assert (= (and start!223888 ((_ is Cons!27176) otherP!12)) b!2284111))

(assert (= b!2284114 b!2284113))

(assert (= b!2284098 b!2284114))

(assert (= (and start!223888 ((_ is Cons!27178) rules!1750)) b!2284098))

(assert (= b!2284119 b!2284096))

(assert (= start!223888 b!2284119))

(assert (= b!2284097 b!2284091))

(assert (= b!2284104 b!2284097))

(assert (= b!2284099 b!2284104))

(assert (= (and start!223888 ((_ is Cons!27177) tokens!456)) b!2284099))

(declare-fun m!2712011 () Bool)

(assert (=> b!2284126 m!2712011))

(declare-fun m!2712013 () Bool)

(assert (=> b!2284126 m!2712013))

(declare-fun m!2712015 () Bool)

(assert (=> b!2284126 m!2712015))

(assert (=> b!2284126 m!2712015))

(declare-fun m!2712017 () Bool)

(assert (=> b!2284126 m!2712017))

(declare-fun m!2712019 () Bool)

(assert (=> b!2284115 m!2712019))

(declare-fun m!2712021 () Bool)

(assert (=> b!2284101 m!2712021))

(declare-fun m!2712023 () Bool)

(assert (=> b!2284092 m!2712023))

(declare-fun m!2712025 () Bool)

(assert (=> b!2284117 m!2712025))

(declare-fun m!2712027 () Bool)

(assert (=> b!2284106 m!2712027))

(assert (=> b!2284124 m!2712027))

(assert (=> b!2284124 m!2712027))

(declare-fun m!2712029 () Bool)

(assert (=> b!2284124 m!2712029))

(assert (=> b!2284124 m!2712029))

(declare-fun m!2712031 () Bool)

(assert (=> b!2284124 m!2712031))

(declare-fun m!2712033 () Bool)

(assert (=> b!2284124 m!2712033))

(declare-fun m!2712035 () Bool)

(assert (=> b!2284122 m!2712035))

(declare-fun m!2712037 () Bool)

(assert (=> b!2284121 m!2712037))

(declare-fun m!2712039 () Bool)

(assert (=> b!2284121 m!2712039))

(declare-fun m!2712041 () Bool)

(assert (=> b!2284121 m!2712041))

(declare-fun m!2712043 () Bool)

(assert (=> b!2284107 m!2712043))

(declare-fun m!2712045 () Bool)

(assert (=> b!2284107 m!2712045))

(declare-fun m!2712047 () Bool)

(assert (=> b!2284107 m!2712047))

(declare-fun m!2712049 () Bool)

(assert (=> b!2284107 m!2712049))

(declare-fun m!2712051 () Bool)

(assert (=> b!2284104 m!2712051))

(declare-fun m!2712053 () Bool)

(assert (=> b!2284125 m!2712053))

(declare-fun m!2712055 () Bool)

(assert (=> b!2284125 m!2712055))

(declare-fun m!2712057 () Bool)

(assert (=> b!2284112 m!2712057))

(declare-fun m!2712059 () Bool)

(assert (=> b!2284119 m!2712059))

(declare-fun m!2712061 () Bool)

(assert (=> b!2284119 m!2712061))

(assert (=> b!2284102 m!2712027))

(assert (=> b!2284102 m!2712027))

(assert (=> b!2284102 m!2712029))

(assert (=> b!2284102 m!2712029))

(declare-fun m!2712063 () Bool)

(assert (=> b!2284102 m!2712063))

(assert (=> b!2284102 m!2712063))

(declare-fun m!2712065 () Bool)

(assert (=> b!2284102 m!2712065))

(declare-fun m!2712067 () Bool)

(assert (=> b!2284116 m!2712067))

(declare-fun m!2712069 () Bool)

(assert (=> b!2284116 m!2712069))

(declare-fun m!2712071 () Bool)

(assert (=> b!2284109 m!2712071))

(declare-fun m!2712073 () Bool)

(assert (=> b!2284109 m!2712073))

(declare-fun m!2712075 () Bool)

(assert (=> b!2284105 m!2712075))

(declare-fun m!2712077 () Bool)

(assert (=> b!2284105 m!2712077))

(declare-fun m!2712079 () Bool)

(assert (=> b!2284105 m!2712079))

(declare-fun m!2712081 () Bool)

(assert (=> b!2284093 m!2712081))

(declare-fun m!2712083 () Bool)

(assert (=> b!2284093 m!2712083))

(declare-fun m!2712085 () Bool)

(assert (=> b!2284097 m!2712085))

(declare-fun m!2712087 () Bool)

(assert (=> b!2284097 m!2712087))

(declare-fun m!2712089 () Bool)

(assert (=> b!2284099 m!2712089))

(declare-fun m!2712091 () Bool)

(assert (=> b!2284118 m!2712091))

(declare-fun m!2712093 () Bool)

(assert (=> b!2284100 m!2712093))

(declare-fun m!2712095 () Bool)

(assert (=> b!2284120 m!2712095))

(declare-fun m!2712097 () Bool)

(assert (=> b!2284120 m!2712097))

(declare-fun m!2712099 () Bool)

(assert (=> b!2284120 m!2712099))

(declare-fun m!2712101 () Bool)

(assert (=> b!2284120 m!2712101))

(declare-fun m!2712103 () Bool)

(assert (=> b!2284120 m!2712103))

(assert (=> b!2284120 m!2712097))

(declare-fun m!2712105 () Bool)

(assert (=> b!2284120 m!2712105))

(declare-fun m!2712107 () Bool)

(assert (=> b!2284120 m!2712107))

(assert (=> b!2284120 m!2712105))

(declare-fun m!2712109 () Bool)

(assert (=> b!2284120 m!2712109))

(assert (=> b!2284120 m!2712033))

(declare-fun m!2712111 () Bool)

(assert (=> b!2284114 m!2712111))

(declare-fun m!2712113 () Bool)

(assert (=> b!2284114 m!2712113))

(check-sat (not b!2284108) (not b!2284117) b_and!180725 (not b!2284100) b_and!180723 b_and!180721 (not b!2284102) (not b!2284119) (not b_next!69081) (not b!2284112) (not b!2284122) (not b_next!69073) (not b_next!69071) (not b!2284125) (not b!2284104) (not b!2284111) (not b!2284120) (not b!2284123) (not b_next!69075) (not b_next!69083) (not b!2284092) b_and!180727 b_and!180715 (not b_next!69077) (not b!2284124) (not b!2284106) b_and!180717 b_and!180719 (not b!2284118) (not b!2284101) (not b!2284093) (not b!2284099) (not b!2284114) (not b!2284098) b_and!180713 (not b!2284107) (not b!2284115) tp_is_empty!10603 (not b_next!69069) (not b!2284126) (not b!2284109) (not b!2284121) (not b!2284097) (not b!2284116) (not b_next!69079) (not b!2284105))
(check-sat (not b_next!69073) (not b_next!69071) b_and!180725 b_and!180723 b_and!180721 b_and!180727 (not b_next!69081) b_and!180713 (not b_next!69069) (not b_next!69079) (not b_next!69075) (not b_next!69083) b_and!180715 (not b_next!69077) b_and!180717 b_and!180719)
