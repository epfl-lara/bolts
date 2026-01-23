; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224124 () Bool)

(assert start!224124)

(declare-fun b!2285910 () Bool)

(declare-fun b_free!68525 () Bool)

(declare-fun b_next!69229 () Bool)

(assert (=> b!2285910 (= b_free!68525 (not b_next!69229))))

(declare-fun tp!724677 () Bool)

(declare-fun b_and!180969 () Bool)

(assert (=> b!2285910 (= tp!724677 b_and!180969)))

(declare-fun b_free!68527 () Bool)

(declare-fun b_next!69231 () Bool)

(assert (=> b!2285910 (= b_free!68527 (not b_next!69231))))

(declare-fun tp!724679 () Bool)

(declare-fun b_and!180971 () Bool)

(assert (=> b!2285910 (= tp!724679 b_and!180971)))

(declare-fun b!2285886 () Bool)

(declare-fun b_free!68529 () Bool)

(declare-fun b_next!69233 () Bool)

(assert (=> b!2285886 (= b_free!68529 (not b_next!69233))))

(declare-fun tp!724674 () Bool)

(declare-fun b_and!180973 () Bool)

(assert (=> b!2285886 (= tp!724674 b_and!180973)))

(declare-fun b_free!68531 () Bool)

(declare-fun b_next!69235 () Bool)

(assert (=> b!2285886 (= b_free!68531 (not b_next!69235))))

(declare-fun tp!724664 () Bool)

(declare-fun b_and!180975 () Bool)

(assert (=> b!2285886 (= tp!724664 b_and!180975)))

(declare-fun b!2285894 () Bool)

(declare-fun b_free!68533 () Bool)

(declare-fun b_next!69237 () Bool)

(assert (=> b!2285894 (= b_free!68533 (not b_next!69237))))

(declare-fun tp!724666 () Bool)

(declare-fun b_and!180977 () Bool)

(assert (=> b!2285894 (= tp!724666 b_and!180977)))

(declare-fun b_free!68535 () Bool)

(declare-fun b_next!69239 () Bool)

(assert (=> b!2285894 (= b_free!68535 (not b_next!69239))))

(declare-fun tp!724668 () Bool)

(declare-fun b_and!180979 () Bool)

(assert (=> b!2285894 (= tp!724668 b_and!180979)))

(declare-fun b!2285891 () Bool)

(declare-fun b_free!68537 () Bool)

(declare-fun b_next!69241 () Bool)

(assert (=> b!2285891 (= b_free!68537 (not b_next!69241))))

(declare-fun tp!724665 () Bool)

(declare-fun b_and!180981 () Bool)

(assert (=> b!2285891 (= tp!724665 b_and!180981)))

(declare-fun b_free!68539 () Bool)

(declare-fun b_next!69243 () Bool)

(assert (=> b!2285891 (= b_free!68539 (not b_next!69243))))

(declare-fun tp!724676 () Bool)

(declare-fun b_and!180983 () Bool)

(assert (=> b!2285891 (= tp!724676 b_and!180983)))

(declare-fun b!2285880 () Bool)

(declare-fun e!1464593 () Bool)

(declare-fun e!1464595 () Bool)

(assert (=> b!2285880 (= e!1464593 e!1464595)))

(declare-fun res!977296 () Bool)

(assert (=> b!2285880 (=> (not res!977296) (not e!1464595))))

(declare-fun e!1464603 () Bool)

(assert (=> b!2285880 (= res!977296 e!1464603)))

(declare-fun res!977298 () Bool)

(assert (=> b!2285880 (=> res!977298 e!1464603)))

(declare-fun lt!848237 () Bool)

(assert (=> b!2285880 (= res!977298 lt!848237)))

(declare-datatypes ((List!27305 0))(
  ( (Nil!27211) (Cons!27211 (h!32612 (_ BitVec 16)) (t!204031 List!27305)) )
))
(declare-datatypes ((TokenValue!4513 0))(
  ( (FloatLiteralValue!9026 (text!32036 List!27305)) (TokenValueExt!4512 (__x!18086 Int)) (Broken!22565 (value!137797 List!27305)) (Object!4606) (End!4513) (Def!4513) (Underscore!4513) (Match!4513) (Else!4513) (Error!4513) (Case!4513) (If!4513) (Extends!4513) (Abstract!4513) (Class!4513) (Val!4513) (DelimiterValue!9026 (del!4573 List!27305)) (KeywordValue!4519 (value!137798 List!27305)) (CommentValue!9026 (value!137799 List!27305)) (WhitespaceValue!9026 (value!137800 List!27305)) (IndentationValue!4513 (value!137801 List!27305)) (String!29668) (Int32!4513) (Broken!22566 (value!137802 List!27305)) (Boolean!4514) (Unit!40111) (OperatorValue!4516 (op!4573 List!27305)) (IdentifierValue!9026 (value!137803 List!27305)) (IdentifierValue!9027 (value!137804 List!27305)) (WhitespaceValue!9027 (value!137805 List!27305)) (True!9026) (False!9026) (Broken!22567 (value!137806 List!27305)) (Broken!22568 (value!137807 List!27305)) (True!9027) (RightBrace!4513) (RightBracket!4513) (Colon!4513) (Null!4513) (Comma!4513) (LeftBracket!4513) (False!9027) (LeftBrace!4513) (ImaginaryLiteralValue!4513 (text!32037 List!27305)) (StringLiteralValue!13539 (value!137808 List!27305)) (EOFValue!4513 (value!137809 List!27305)) (IdentValue!4513 (value!137810 List!27305)) (DelimiterValue!9027 (value!137811 List!27305)) (DedentValue!4513 (value!137812 List!27305)) (NewLineValue!4513 (value!137813 List!27305)) (IntegerValue!13539 (value!137814 (_ BitVec 32)) (text!32038 List!27305)) (IntegerValue!13540 (value!137815 Int) (text!32039 List!27305)) (Times!4513) (Or!4513) (Equal!4513) (Minus!4513) (Broken!22569 (value!137816 List!27305)) (And!4513) (Div!4513) (LessEqual!4513) (Mod!4513) (Concat!11212) (Not!4513) (Plus!4513) (SpaceValue!4513 (value!137817 List!27305)) (IntegerValue!13541 (value!137818 Int) (text!32040 List!27305)) (StringLiteralValue!13540 (text!32041 List!27305)) (FloatLiteralValue!9027 (text!32042 List!27305)) (BytesLiteralValue!4513 (value!137819 List!27305)) (CommentValue!9027 (value!137820 List!27305)) (StringLiteralValue!13541 (value!137821 List!27305)) (ErrorTokenValue!4513 (msg!4574 List!27305)) )
))
(declare-datatypes ((C!13544 0))(
  ( (C!13545 (val!7820 Int)) )
))
(declare-datatypes ((List!27306 0))(
  ( (Nil!27212) (Cons!27212 (h!32613 C!13544) (t!204032 List!27306)) )
))
(declare-datatypes ((IArray!17705 0))(
  ( (IArray!17706 (innerList!8910 List!27306)) )
))
(declare-datatypes ((Conc!8850 0))(
  ( (Node!8850 (left!20630 Conc!8850) (right!20960 Conc!8850) (csize!17930 Int) (cheight!9061 Int)) (Leaf!13011 (xs!11792 IArray!17705) (csize!17931 Int)) (Empty!8850) )
))
(declare-datatypes ((BalanceConc!17428 0))(
  ( (BalanceConc!17429 (c!362568 Conc!8850)) )
))
(declare-datatypes ((Regex!6699 0))(
  ( (ElementMatch!6699 (c!362569 C!13544)) (Concat!11213 (regOne!13910 Regex!6699) (regTwo!13910 Regex!6699)) (EmptyExpr!6699) (Star!6699 (reg!7028 Regex!6699)) (EmptyLang!6699) (Union!6699 (regOne!13911 Regex!6699) (regTwo!13911 Regex!6699)) )
))
(declare-datatypes ((String!29669 0))(
  ( (String!29670 (value!137822 String)) )
))
(declare-datatypes ((TokenValueInjection!8566 0))(
  ( (TokenValueInjection!8567 (toValue!6137 Int) (toChars!5996 Int)) )
))
(declare-datatypes ((Rule!8502 0))(
  ( (Rule!8503 (regex!4351 Regex!6699) (tag!4841 String!29669) (isSeparator!4351 Bool) (transformation!4351 TokenValueInjection!8566)) )
))
(declare-datatypes ((Token!8180 0))(
  ( (Token!8181 (value!137823 TokenValue!4513) (rule!6679 Rule!8502) (size!21408 Int) (originalCharacters!5121 List!27306)) )
))
(declare-datatypes ((List!27307 0))(
  ( (Nil!27213) (Cons!27213 (h!32614 Token!8180) (t!204033 List!27307)) )
))
(declare-fun tokens!456 () List!27307)

(declare-fun isEmpty!15476 (List!27307) Bool)

(assert (=> b!2285880 (= lt!848237 (isEmpty!15476 tokens!456))))

(declare-fun b!2285881 () Bool)

(declare-fun e!1464597 () Bool)

(declare-fun tp_is_empty!10619 () Bool)

(declare-fun tp!724670 () Bool)

(assert (=> b!2285881 (= e!1464597 (and tp_is_empty!10619 tp!724670))))

(declare-fun e!1464583 () Bool)

(declare-datatypes ((tuple2!26986 0))(
  ( (tuple2!26987 (_1!16003 Token!8180) (_2!16003 List!27306)) )
))
(declare-datatypes ((Option!5339 0))(
  ( (None!5338) (Some!5338 (v!30410 tuple2!26986)) )
))
(declare-fun lt!848242 () Option!5339)

(declare-fun lt!848247 () List!27306)

(declare-fun lt!848240 () tuple2!26986)

(declare-fun r!2363 () Rule!8502)

(declare-fun b!2285882 () Bool)

(declare-fun lt!848241 () BalanceConc!17428)

(declare-fun lt!848236 () Int)

(declare-fun apply!6623 (TokenValueInjection!8566 BalanceConc!17428) TokenValue!4513)

(assert (=> b!2285882 (= e!1464583 (= lt!848242 (Some!5338 (tuple2!26987 (Token!8181 (apply!6623 (transformation!4351 r!2363) lt!848241) r!2363 lt!848236 lt!848247) (_2!16003 lt!848240)))))))

(declare-datatypes ((Unit!40112 0))(
  ( (Unit!40113) )
))
(declare-fun lt!848248 () Unit!40112)

(declare-fun lemmaSemiInverse!1054 (TokenValueInjection!8566 BalanceConc!17428) Unit!40112)

(assert (=> b!2285882 (= lt!848248 (lemmaSemiInverse!1054 (transformation!4351 r!2363) lt!848241))))

(declare-fun seqFromList!3055 (List!27306) BalanceConc!17428)

(assert (=> b!2285882 (= lt!848241 (seqFromList!3055 lt!848247))))

(declare-fun b!2285883 () Bool)

(declare-fun e!1464589 () Bool)

(declare-fun e!1464602 () Bool)

(assert (=> b!2285883 (= e!1464589 e!1464602)))

(declare-fun res!977305 () Bool)

(assert (=> b!2285883 (=> res!977305 e!1464602)))

(assert (=> b!2285883 (= res!977305 (not (= (h!32614 tokens!456) (_1!16003 lt!848240))))))

(declare-fun get!8206 (Option!5339) tuple2!26986)

(assert (=> b!2285883 (= lt!848240 (get!8206 lt!848242))))

(declare-datatypes ((LexerInterface!3948 0))(
  ( (LexerInterfaceExt!3945 (__x!18087 Int)) (Lexer!3946) )
))
(declare-fun thiss!16613 () LexerInterface!3948)

(declare-fun input!1722 () List!27306)

(declare-datatypes ((List!27308 0))(
  ( (Nil!27214) (Cons!27214 (h!32615 Rule!8502) (t!204034 List!27308)) )
))
(declare-fun rules!1750 () List!27308)

(declare-fun maxPrefix!2212 (LexerInterface!3948 List!27308 List!27306) Option!5339)

(assert (=> b!2285883 (= lt!848242 (maxPrefix!2212 thiss!16613 rules!1750 input!1722))))

(declare-fun tp!724678 () Bool)

(declare-fun b!2285884 () Bool)

(declare-fun e!1464587 () Bool)

(declare-fun e!1464591 () Bool)

(declare-fun inv!36800 (String!29669) Bool)

(declare-fun inv!36803 (TokenValueInjection!8566) Bool)

(assert (=> b!2285884 (= e!1464587 (and tp!724678 (inv!36800 (tag!4841 r!2363)) (inv!36803 (transformation!4351 r!2363)) e!1464591))))

(declare-fun b!2285885 () Bool)

(declare-fun res!977306 () Bool)

(assert (=> b!2285885 (=> res!977306 e!1464589)))

(get-info :version)

(assert (=> b!2285885 (= res!977306 ((_ is Nil!27213) tokens!456))))

(assert (=> b!2285886 (= e!1464591 (and tp!724674 tp!724664))))

(declare-fun b!2285887 () Bool)

(declare-fun e!1464601 () Bool)

(assert (=> b!2285887 (= e!1464601 e!1464589)))

(declare-fun res!977311 () Bool)

(assert (=> b!2285887 (=> res!977311 e!1464589)))

(declare-fun otherR!12 () Rule!8502)

(declare-fun getIndex!364 (List!27308 Rule!8502) Int)

(assert (=> b!2285887 (= res!977311 (<= (getIndex!364 rules!1750 r!2363) (getIndex!364 rules!1750 otherR!12)))))

(declare-fun ruleValid!1441 (LexerInterface!3948 Rule!8502) Bool)

(assert (=> b!2285887 (ruleValid!1441 thiss!16613 otherR!12)))

(declare-fun lt!848249 () Unit!40112)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!846 (LexerInterface!3948 Rule!8502 List!27308) Unit!40112)

(assert (=> b!2285887 (= lt!848249 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!846 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2285888 () Bool)

(declare-fun e!1464590 () Bool)

(declare-fun tp!724662 () Bool)

(assert (=> b!2285888 (= e!1464590 (and tp_is_empty!10619 tp!724662))))

(declare-fun b!2285889 () Bool)

(declare-fun e!1464604 () Bool)

(declare-fun e!1464584 () Bool)

(declare-fun tp!724669 () Bool)

(assert (=> b!2285889 (= e!1464604 (and e!1464584 tp!724669))))

(declare-fun tp!724673 () Bool)

(declare-fun b!2285890 () Bool)

(declare-fun e!1464586 () Bool)

(declare-fun e!1464594 () Bool)

(declare-fun inv!36804 (Token!8180) Bool)

(assert (=> b!2285890 (= e!1464594 (and (inv!36804 (h!32614 tokens!456)) e!1464586 tp!724673))))

(declare-fun e!1464588 () Bool)

(assert (=> b!2285891 (= e!1464588 (and tp!724665 tp!724676))))

(declare-fun res!977293 () Bool)

(declare-fun e!1464598 () Bool)

(assert (=> start!224124 (=> (not res!977293) (not e!1464598))))

(assert (=> start!224124 (= res!977293 ((_ is Lexer!3946) thiss!16613))))

(assert (=> start!224124 e!1464598))

(assert (=> start!224124 true))

(assert (=> start!224124 e!1464590))

(declare-fun e!1464581 () Bool)

(assert (=> start!224124 e!1464581))

(assert (=> start!224124 e!1464597))

(declare-fun e!1464599 () Bool)

(assert (=> start!224124 e!1464599))

(assert (=> start!224124 e!1464604))

(assert (=> start!224124 e!1464587))

(assert (=> start!224124 e!1464594))

(declare-fun b!2285892 () Bool)

(declare-fun otherP!12 () List!27306)

(declare-fun size!21409 (BalanceConc!17428) Int)

(declare-fun charsOf!2739 (Token!8180) BalanceConc!17428)

(declare-fun head!4970 (List!27307) Token!8180)

(declare-fun size!21410 (List!27306) Int)

(assert (=> b!2285892 (= e!1464603 (<= (size!21409 (charsOf!2739 (head!4970 tokens!456))) (size!21410 otherP!12)))))

(declare-fun b!2285893 () Bool)

(declare-fun e!1464606 () Bool)

(declare-fun matchR!2956 (Regex!6699 List!27306) Bool)

(declare-fun list!10632 (BalanceConc!17428) List!27306)

(assert (=> b!2285893 (= e!1464606 (not (matchR!2956 (regex!4351 r!2363) (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(declare-fun e!1464580 () Bool)

(assert (=> b!2285894 (= e!1464580 (and tp!724666 tp!724668))))

(declare-fun b!2285895 () Bool)

(declare-fun res!977304 () Bool)

(assert (=> b!2285895 (=> (not res!977304) (not e!1464598))))

(declare-fun contains!4725 (List!27308 Rule!8502) Bool)

(assert (=> b!2285895 (= res!977304 (contains!4725 rules!1750 r!2363))))

(declare-fun b!2285896 () Bool)

(declare-fun res!977307 () Bool)

(assert (=> b!2285896 (=> (not res!977307) (not e!1464595))))

(assert (=> b!2285896 (= res!977307 (not (= r!2363 otherR!12)))))

(declare-fun b!2285897 () Bool)

(declare-fun res!977308 () Bool)

(assert (=> b!2285897 (=> (not res!977308) (not e!1464598))))

(declare-fun rulesInvariant!3450 (LexerInterface!3948 List!27308) Bool)

(assert (=> b!2285897 (= res!977308 (rulesInvariant!3450 thiss!16613 rules!1750))))

(declare-fun tp!724672 () Bool)

(declare-fun b!2285898 () Bool)

(assert (=> b!2285898 (= e!1464581 (and tp!724672 (inv!36800 (tag!4841 otherR!12)) (inv!36803 (transformation!4351 otherR!12)) e!1464580))))

(declare-fun b!2285899 () Bool)

(declare-fun tp!724667 () Bool)

(assert (=> b!2285899 (= e!1464599 (and tp_is_empty!10619 tp!724667))))

(declare-fun b!2285900 () Bool)

(declare-fun res!977309 () Bool)

(assert (=> b!2285900 (=> (not res!977309) (not e!1464598))))

(assert (=> b!2285900 (= res!977309 (contains!4725 rules!1750 otherR!12))))

(declare-fun b!2285901 () Bool)

(declare-fun tp!724671 () Bool)

(declare-fun e!1464582 () Bool)

(declare-fun inv!21 (TokenValue!4513) Bool)

(assert (=> b!2285901 (= e!1464586 (and (inv!21 (value!137823 (h!32614 tokens!456))) e!1464582 tp!724671))))

(declare-fun b!2285902 () Bool)

(assert (=> b!2285902 (= e!1464595 (not e!1464601))))

(declare-fun res!977310 () Bool)

(assert (=> b!2285902 (=> res!977310 e!1464601)))

(assert (=> b!2285902 (= res!977310 e!1464606)))

(declare-fun res!977299 () Bool)

(assert (=> b!2285902 (=> (not res!977299) (not e!1464606))))

(assert (=> b!2285902 (= res!977299 (not lt!848237))))

(assert (=> b!2285902 (ruleValid!1441 thiss!16613 r!2363)))

(declare-fun lt!848250 () Unit!40112)

(assert (=> b!2285902 (= lt!848250 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!846 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2285903 () Bool)

(declare-fun res!977295 () Bool)

(assert (=> b!2285903 (=> (not res!977295) (not e!1464595))))

(declare-fun isPrefix!2341 (List!27306 List!27306) Bool)

(assert (=> b!2285903 (= res!977295 (isPrefix!2341 otherP!12 input!1722))))

(declare-fun b!2285904 () Bool)

(assert (=> b!2285904 (= e!1464602 e!1464583)))

(declare-fun res!977302 () Bool)

(assert (=> b!2285904 (=> res!977302 e!1464583)))

(declare-fun lt!848246 () Int)

(declare-fun lt!848238 () List!27306)

(assert (=> b!2285904 (= res!977302 (or (= lt!848246 lt!848236) (not (= input!1722 lt!848238))))))

(assert (=> b!2285904 (= lt!848236 (size!21410 lt!848247))))

(assert (=> b!2285904 (= lt!848246 (size!21410 otherP!12))))

(declare-fun lt!848243 () List!27306)

(assert (=> b!2285904 (= (_2!16003 lt!848240) lt!848243)))

(declare-fun lt!848239 () Unit!40112)

(declare-fun lemmaSamePrefixThenSameSuffix!1042 (List!27306 List!27306 List!27306 List!27306 List!27306) Unit!40112)

(assert (=> b!2285904 (= lt!848239 (lemmaSamePrefixThenSameSuffix!1042 lt!848247 (_2!16003 lt!848240) lt!848247 lt!848243 input!1722))))

(declare-fun getSuffix!1132 (List!27306 List!27306) List!27306)

(assert (=> b!2285904 (= lt!848243 (getSuffix!1132 input!1722 lt!848247))))

(assert (=> b!2285904 (isPrefix!2341 lt!848247 lt!848238)))

(declare-fun ++!6647 (List!27306 List!27306) List!27306)

(assert (=> b!2285904 (= lt!848238 (++!6647 lt!848247 (_2!16003 lt!848240)))))

(declare-fun lt!848245 () Unit!40112)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1546 (List!27306 List!27306) Unit!40112)

(assert (=> b!2285904 (= lt!848245 (lemmaConcatTwoListThenFirstIsPrefix!1546 lt!848247 (_2!16003 lt!848240)))))

(assert (=> b!2285904 (= lt!848247 (list!10632 (charsOf!2739 (h!32614 tokens!456))))))

(declare-fun b!2285905 () Bool)

(declare-fun e!1464579 () Bool)

(declare-fun tp!724675 () Bool)

(assert (=> b!2285905 (= e!1464584 (and tp!724675 (inv!36800 (tag!4841 (h!32615 rules!1750))) (inv!36803 (transformation!4351 (h!32615 rules!1750))) e!1464579))))

(declare-fun b!2285906 () Bool)

(declare-fun res!977297 () Bool)

(assert (=> b!2285906 (=> res!977297 e!1464583)))

(declare-fun isEmpty!15477 (List!27306) Bool)

(assert (=> b!2285906 (= res!977297 (isEmpty!15477 lt!848247))))

(declare-fun b!2285907 () Bool)

(declare-fun e!1464605 () Bool)

(assert (=> b!2285907 (= e!1464605 (= (rule!6679 (head!4970 tokens!456)) r!2363))))

(declare-fun b!2285908 () Bool)

(assert (=> b!2285908 (= e!1464598 e!1464593)))

(declare-fun res!977300 () Bool)

(assert (=> b!2285908 (=> (not res!977300) (not e!1464593))))

(declare-datatypes ((IArray!17707 0))(
  ( (IArray!17708 (innerList!8911 List!27307)) )
))
(declare-datatypes ((Conc!8851 0))(
  ( (Node!8851 (left!20631 Conc!8851) (right!20961 Conc!8851) (csize!17932 Int) (cheight!9062 Int)) (Leaf!13012 (xs!11793 IArray!17707) (csize!17933 Int)) (Empty!8851) )
))
(declare-datatypes ((BalanceConc!17430 0))(
  ( (BalanceConc!17431 (c!362570 Conc!8851)) )
))
(declare-datatypes ((tuple2!26988 0))(
  ( (tuple2!26989 (_1!16004 BalanceConc!17430) (_2!16004 BalanceConc!17428)) )
))
(declare-fun lt!848244 () tuple2!26988)

(declare-fun suffix!886 () List!27306)

(declare-datatypes ((tuple2!26990 0))(
  ( (tuple2!26991 (_1!16005 List!27307) (_2!16005 List!27306)) )
))
(declare-fun list!10633 (BalanceConc!17430) List!27307)

(assert (=> b!2285908 (= res!977300 (= (tuple2!26991 (list!10633 (_1!16004 lt!848244)) (list!10632 (_2!16004 lt!848244))) (tuple2!26991 tokens!456 suffix!886)))))

(declare-fun lex!1787 (LexerInterface!3948 List!27308 BalanceConc!17428) tuple2!26988)

(assert (=> b!2285908 (= lt!848244 (lex!1787 thiss!16613 rules!1750 (seqFromList!3055 input!1722)))))

(declare-fun b!2285909 () Bool)

(declare-fun res!977303 () Bool)

(assert (=> b!2285909 (=> (not res!977303) (not e!1464595))))

(assert (=> b!2285909 (= res!977303 e!1464605)))

(declare-fun res!977301 () Bool)

(assert (=> b!2285909 (=> res!977301 e!1464605)))

(assert (=> b!2285909 (= res!977301 lt!848237)))

(assert (=> b!2285910 (= e!1464579 (and tp!724677 tp!724679))))

(declare-fun b!2285911 () Bool)

(declare-fun res!977294 () Bool)

(assert (=> b!2285911 (=> (not res!977294) (not e!1464598))))

(declare-fun isEmpty!15478 (List!27308) Bool)

(assert (=> b!2285911 (= res!977294 (not (isEmpty!15478 rules!1750)))))

(declare-fun b!2285912 () Bool)

(declare-fun tp!724663 () Bool)

(assert (=> b!2285912 (= e!1464582 (and tp!724663 (inv!36800 (tag!4841 (rule!6679 (h!32614 tokens!456)))) (inv!36803 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) e!1464588))))

(assert (= (and start!224124 res!977293) b!2285911))

(assert (= (and b!2285911 res!977294) b!2285897))

(assert (= (and b!2285897 res!977308) b!2285895))

(assert (= (and b!2285895 res!977304) b!2285900))

(assert (= (and b!2285900 res!977309) b!2285908))

(assert (= (and b!2285908 res!977300) b!2285880))

(assert (= (and b!2285880 (not res!977298)) b!2285892))

(assert (= (and b!2285880 res!977296) b!2285909))

(assert (= (and b!2285909 (not res!977301)) b!2285907))

(assert (= (and b!2285909 res!977303) b!2285903))

(assert (= (and b!2285903 res!977295) b!2285896))

(assert (= (and b!2285896 res!977307) b!2285902))

(assert (= (and b!2285902 res!977299) b!2285893))

(assert (= (and b!2285902 (not res!977310)) b!2285887))

(assert (= (and b!2285887 (not res!977311)) b!2285885))

(assert (= (and b!2285885 (not res!977306)) b!2285883))

(assert (= (and b!2285883 (not res!977305)) b!2285904))

(assert (= (and b!2285904 (not res!977302)) b!2285906))

(assert (= (and b!2285906 (not res!977297)) b!2285882))

(assert (= (and start!224124 ((_ is Cons!27212) input!1722)) b!2285888))

(assert (= b!2285898 b!2285894))

(assert (= start!224124 b!2285898))

(assert (= (and start!224124 ((_ is Cons!27212) suffix!886)) b!2285881))

(assert (= (and start!224124 ((_ is Cons!27212) otherP!12)) b!2285899))

(assert (= b!2285905 b!2285910))

(assert (= b!2285889 b!2285905))

(assert (= (and start!224124 ((_ is Cons!27214) rules!1750)) b!2285889))

(assert (= b!2285884 b!2285886))

(assert (= start!224124 b!2285884))

(assert (= b!2285912 b!2285891))

(assert (= b!2285901 b!2285912))

(assert (= b!2285890 b!2285901))

(assert (= (and start!224124 ((_ is Cons!27213) tokens!456)) b!2285890))

(declare-fun m!2713571 () Bool)

(assert (=> b!2285903 m!2713571))

(declare-fun m!2713573 () Bool)

(assert (=> b!2285908 m!2713573))

(declare-fun m!2713575 () Bool)

(assert (=> b!2285908 m!2713575))

(declare-fun m!2713577 () Bool)

(assert (=> b!2285908 m!2713577))

(assert (=> b!2285908 m!2713577))

(declare-fun m!2713579 () Bool)

(assert (=> b!2285908 m!2713579))

(declare-fun m!2713581 () Bool)

(assert (=> b!2285900 m!2713581))

(declare-fun m!2713583 () Bool)

(assert (=> b!2285895 m!2713583))

(declare-fun m!2713585 () Bool)

(assert (=> b!2285902 m!2713585))

(declare-fun m!2713587 () Bool)

(assert (=> b!2285902 m!2713587))

(declare-fun m!2713589 () Bool)

(assert (=> b!2285905 m!2713589))

(declare-fun m!2713591 () Bool)

(assert (=> b!2285905 m!2713591))

(declare-fun m!2713593 () Bool)

(assert (=> b!2285884 m!2713593))

(declare-fun m!2713595 () Bool)

(assert (=> b!2285884 m!2713595))

(declare-fun m!2713597 () Bool)

(assert (=> b!2285904 m!2713597))

(declare-fun m!2713599 () Bool)

(assert (=> b!2285904 m!2713599))

(declare-fun m!2713601 () Bool)

(assert (=> b!2285904 m!2713601))

(declare-fun m!2713603 () Bool)

(assert (=> b!2285904 m!2713603))

(declare-fun m!2713605 () Bool)

(assert (=> b!2285904 m!2713605))

(declare-fun m!2713607 () Bool)

(assert (=> b!2285904 m!2713607))

(assert (=> b!2285904 m!2713605))

(declare-fun m!2713609 () Bool)

(assert (=> b!2285904 m!2713609))

(declare-fun m!2713611 () Bool)

(assert (=> b!2285904 m!2713611))

(declare-fun m!2713613 () Bool)

(assert (=> b!2285904 m!2713613))

(declare-fun m!2713615 () Bool)

(assert (=> b!2285897 m!2713615))

(declare-fun m!2713617 () Bool)

(assert (=> b!2285880 m!2713617))

(declare-fun m!2713619 () Bool)

(assert (=> b!2285898 m!2713619))

(declare-fun m!2713621 () Bool)

(assert (=> b!2285898 m!2713621))

(declare-fun m!2713623 () Bool)

(assert (=> b!2285892 m!2713623))

(assert (=> b!2285892 m!2713623))

(declare-fun m!2713625 () Bool)

(assert (=> b!2285892 m!2713625))

(assert (=> b!2285892 m!2713625))

(declare-fun m!2713627 () Bool)

(assert (=> b!2285892 m!2713627))

(assert (=> b!2285892 m!2713599))

(declare-fun m!2713629 () Bool)

(assert (=> b!2285912 m!2713629))

(declare-fun m!2713631 () Bool)

(assert (=> b!2285912 m!2713631))

(declare-fun m!2713633 () Bool)

(assert (=> b!2285901 m!2713633))

(assert (=> b!2285893 m!2713623))

(assert (=> b!2285893 m!2713623))

(assert (=> b!2285893 m!2713625))

(assert (=> b!2285893 m!2713625))

(declare-fun m!2713635 () Bool)

(assert (=> b!2285893 m!2713635))

(assert (=> b!2285893 m!2713635))

(declare-fun m!2713637 () Bool)

(assert (=> b!2285893 m!2713637))

(declare-fun m!2713639 () Bool)

(assert (=> b!2285906 m!2713639))

(declare-fun m!2713641 () Bool)

(assert (=> b!2285890 m!2713641))

(assert (=> b!2285907 m!2713623))

(declare-fun m!2713643 () Bool)

(assert (=> b!2285882 m!2713643))

(declare-fun m!2713645 () Bool)

(assert (=> b!2285882 m!2713645))

(declare-fun m!2713647 () Bool)

(assert (=> b!2285882 m!2713647))

(declare-fun m!2713649 () Bool)

(assert (=> b!2285887 m!2713649))

(declare-fun m!2713651 () Bool)

(assert (=> b!2285887 m!2713651))

(declare-fun m!2713653 () Bool)

(assert (=> b!2285887 m!2713653))

(declare-fun m!2713655 () Bool)

(assert (=> b!2285887 m!2713655))

(declare-fun m!2713657 () Bool)

(assert (=> b!2285911 m!2713657))

(declare-fun m!2713659 () Bool)

(assert (=> b!2285883 m!2713659))

(declare-fun m!2713661 () Bool)

(assert (=> b!2285883 m!2713661))

(check-sat (not b_next!69241) (not b!2285901) b_and!180975 (not b!2285904) (not b_next!69231) (not b_next!69237) (not b_next!69229) b_and!180969 (not b!2285883) (not b!2285900) (not b!2285890) b_and!180971 (not b!2285889) (not b_next!69243) b_and!180981 (not b!2285902) (not b!2285903) (not b!2285906) (not b!2285887) (not b_next!69235) (not b!2285881) (not b!2285905) (not b!2285908) (not b!2285880) (not b!2285911) (not b!2285888) (not b_next!69233) (not b!2285898) (not b!2285899) (not b_next!69239) (not b!2285897) (not b!2285893) (not b!2285882) (not b!2285907) b_and!180979 (not b!2285892) (not b!2285895) (not b!2285912) (not b!2285884) tp_is_empty!10619 b_and!180983 b_and!180973 b_and!180977)
(check-sat b_and!180971 (not b_next!69235) (not b_next!69241) b_and!180975 (not b_next!69233) (not b_next!69231) (not b_next!69237) (not b_next!69239) b_and!180979 (not b_next!69229) b_and!180969 b_and!180983 (not b_next!69243) b_and!180981 b_and!180973 b_and!180977)
(get-model)

(declare-fun d!676255 () Bool)

(assert (=> d!676255 (= (isEmpty!15478 rules!1750) ((_ is Nil!27214) rules!1750))))

(assert (=> b!2285911 d!676255))

(declare-fun d!676257 () Bool)

(declare-fun res!977330 () Bool)

(declare-fun e!1464622 () Bool)

(assert (=> d!676257 (=> (not res!977330) (not e!1464622))))

(assert (=> d!676257 (= res!977330 (not (isEmpty!15477 (originalCharacters!5121 (h!32614 tokens!456)))))))

(assert (=> d!676257 (= (inv!36804 (h!32614 tokens!456)) e!1464622)))

(declare-fun b!2285934 () Bool)

(declare-fun res!977331 () Bool)

(assert (=> b!2285934 (=> (not res!977331) (not e!1464622))))

(declare-fun dynLambda!11805 (Int TokenValue!4513) BalanceConc!17428)

(assert (=> b!2285934 (= res!977331 (= (originalCharacters!5121 (h!32614 tokens!456)) (list!10632 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))))))

(declare-fun b!2285935 () Bool)

(assert (=> b!2285935 (= e!1464622 (= (size!21408 (h!32614 tokens!456)) (size!21410 (originalCharacters!5121 (h!32614 tokens!456)))))))

(assert (= (and d!676257 res!977330) b!2285934))

(assert (= (and b!2285934 res!977331) b!2285935))

(declare-fun b_lambda!72767 () Bool)

(assert (=> (not b_lambda!72767) (not b!2285934)))

(declare-fun t!204044 () Bool)

(declare-fun tb!135991 () Bool)

(assert (=> (and b!2285910 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204044) tb!135991))

(declare-fun b!2285940 () Bool)

(declare-fun e!1464625 () Bool)

(declare-fun tp!724682 () Bool)

(declare-fun inv!36807 (Conc!8850) Bool)

(assert (=> b!2285940 (= e!1464625 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))) tp!724682))))

(declare-fun result!165828 () Bool)

(declare-fun inv!36808 (BalanceConc!17428) Bool)

(assert (=> tb!135991 (= result!165828 (and (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))) e!1464625))))

(assert (= tb!135991 b!2285940))

(declare-fun m!2713673 () Bool)

(assert (=> b!2285940 m!2713673))

(declare-fun m!2713675 () Bool)

(assert (=> tb!135991 m!2713675))

(assert (=> b!2285934 t!204044))

(declare-fun b_and!180993 () Bool)

(assert (= b_and!180971 (and (=> t!204044 result!165828) b_and!180993)))

(declare-fun t!204046 () Bool)

(declare-fun tb!135993 () Bool)

(assert (=> (and b!2285886 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204046) tb!135993))

(declare-fun result!165832 () Bool)

(assert (= result!165832 result!165828))

(assert (=> b!2285934 t!204046))

(declare-fun b_and!180995 () Bool)

(assert (= b_and!180975 (and (=> t!204046 result!165832) b_and!180995)))

(declare-fun tb!135995 () Bool)

(declare-fun t!204048 () Bool)

(assert (=> (and b!2285894 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204048) tb!135995))

(declare-fun result!165834 () Bool)

(assert (= result!165834 result!165828))

(assert (=> b!2285934 t!204048))

(declare-fun b_and!180997 () Bool)

(assert (= b_and!180979 (and (=> t!204048 result!165834) b_and!180997)))

(declare-fun t!204050 () Bool)

(declare-fun tb!135997 () Bool)

(assert (=> (and b!2285891 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204050) tb!135997))

(declare-fun result!165836 () Bool)

(assert (= result!165836 result!165828))

(assert (=> b!2285934 t!204050))

(declare-fun b_and!180999 () Bool)

(assert (= b_and!180983 (and (=> t!204050 result!165836) b_and!180999)))

(declare-fun m!2713677 () Bool)

(assert (=> d!676257 m!2713677))

(declare-fun m!2713679 () Bool)

(assert (=> b!2285934 m!2713679))

(assert (=> b!2285934 m!2713679))

(declare-fun m!2713681 () Bool)

(assert (=> b!2285934 m!2713681))

(declare-fun m!2713683 () Bool)

(assert (=> b!2285935 m!2713683))

(assert (=> b!2285890 d!676257))

(declare-fun d!676259 () Bool)

(declare-fun lt!848255 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3646 (List!27308) (InoxSet Rule!8502))

(assert (=> d!676259 (= lt!848255 (select (content!3646 rules!1750) otherR!12))))

(declare-fun e!1464631 () Bool)

(assert (=> d!676259 (= lt!848255 e!1464631)))

(declare-fun res!977337 () Bool)

(assert (=> d!676259 (=> (not res!977337) (not e!1464631))))

(assert (=> d!676259 (= res!977337 ((_ is Cons!27214) rules!1750))))

(assert (=> d!676259 (= (contains!4725 rules!1750 otherR!12) lt!848255)))

(declare-fun b!2285945 () Bool)

(declare-fun e!1464630 () Bool)

(assert (=> b!2285945 (= e!1464631 e!1464630)))

(declare-fun res!977336 () Bool)

(assert (=> b!2285945 (=> res!977336 e!1464630)))

(assert (=> b!2285945 (= res!977336 (= (h!32615 rules!1750) otherR!12))))

(declare-fun b!2285946 () Bool)

(assert (=> b!2285946 (= e!1464630 (contains!4725 (t!204034 rules!1750) otherR!12))))

(assert (= (and d!676259 res!977337) b!2285945))

(assert (= (and b!2285945 (not res!977336)) b!2285946))

(declare-fun m!2713685 () Bool)

(assert (=> d!676259 m!2713685))

(declare-fun m!2713687 () Bool)

(assert (=> d!676259 m!2713687))

(declare-fun m!2713689 () Bool)

(assert (=> b!2285946 m!2713689))

(assert (=> b!2285900 d!676259))

(declare-fun b!2285956 () Bool)

(declare-fun e!1464638 () Int)

(declare-fun e!1464637 () Int)

(assert (=> b!2285956 (= e!1464638 e!1464637)))

(declare-fun c!362583 () Bool)

(assert (=> b!2285956 (= c!362583 (and ((_ is Cons!27214) rules!1750) (not (= (h!32615 rules!1750) r!2363))))))

(declare-fun b!2285957 () Bool)

(assert (=> b!2285957 (= e!1464637 (+ 1 (getIndex!364 (t!204034 rules!1750) r!2363)))))

(declare-fun d!676261 () Bool)

(declare-fun lt!848258 () Int)

(assert (=> d!676261 (>= lt!848258 0)))

(assert (=> d!676261 (= lt!848258 e!1464638)))

(declare-fun c!362582 () Bool)

(assert (=> d!676261 (= c!362582 (and ((_ is Cons!27214) rules!1750) (= (h!32615 rules!1750) r!2363)))))

(assert (=> d!676261 (contains!4725 rules!1750 r!2363)))

(assert (=> d!676261 (= (getIndex!364 rules!1750 r!2363) lt!848258)))

(declare-fun b!2285958 () Bool)

(assert (=> b!2285958 (= e!1464637 (- 1))))

(declare-fun b!2285955 () Bool)

(assert (=> b!2285955 (= e!1464638 0)))

(assert (= (and d!676261 c!362582) b!2285955))

(assert (= (and d!676261 (not c!362582)) b!2285956))

(assert (= (and b!2285956 c!362583) b!2285957))

(assert (= (and b!2285956 (not c!362583)) b!2285958))

(declare-fun m!2713691 () Bool)

(assert (=> b!2285957 m!2713691))

(assert (=> d!676261 m!2713583))

(assert (=> b!2285887 d!676261))

(declare-fun b!2285960 () Bool)

(declare-fun e!1464640 () Int)

(declare-fun e!1464639 () Int)

(assert (=> b!2285960 (= e!1464640 e!1464639)))

(declare-fun c!362585 () Bool)

(assert (=> b!2285960 (= c!362585 (and ((_ is Cons!27214) rules!1750) (not (= (h!32615 rules!1750) otherR!12))))))

(declare-fun b!2285961 () Bool)

(assert (=> b!2285961 (= e!1464639 (+ 1 (getIndex!364 (t!204034 rules!1750) otherR!12)))))

(declare-fun d!676263 () Bool)

(declare-fun lt!848259 () Int)

(assert (=> d!676263 (>= lt!848259 0)))

(assert (=> d!676263 (= lt!848259 e!1464640)))

(declare-fun c!362584 () Bool)

(assert (=> d!676263 (= c!362584 (and ((_ is Cons!27214) rules!1750) (= (h!32615 rules!1750) otherR!12)))))

(assert (=> d!676263 (contains!4725 rules!1750 otherR!12)))

(assert (=> d!676263 (= (getIndex!364 rules!1750 otherR!12) lt!848259)))

(declare-fun b!2285962 () Bool)

(assert (=> b!2285962 (= e!1464639 (- 1))))

(declare-fun b!2285959 () Bool)

(assert (=> b!2285959 (= e!1464640 0)))

(assert (= (and d!676263 c!362584) b!2285959))

(assert (= (and d!676263 (not c!362584)) b!2285960))

(assert (= (and b!2285960 c!362585) b!2285961))

(assert (= (and b!2285960 (not c!362585)) b!2285962))

(declare-fun m!2713693 () Bool)

(assert (=> b!2285961 m!2713693))

(assert (=> d!676263 m!2713581))

(assert (=> b!2285887 d!676263))

(declare-fun d!676265 () Bool)

(declare-fun res!977342 () Bool)

(declare-fun e!1464643 () Bool)

(assert (=> d!676265 (=> (not res!977342) (not e!1464643))))

(declare-fun validRegex!2520 (Regex!6699) Bool)

(assert (=> d!676265 (= res!977342 (validRegex!2520 (regex!4351 otherR!12)))))

(assert (=> d!676265 (= (ruleValid!1441 thiss!16613 otherR!12) e!1464643)))

(declare-fun b!2285967 () Bool)

(declare-fun res!977343 () Bool)

(assert (=> b!2285967 (=> (not res!977343) (not e!1464643))))

(declare-fun nullable!1858 (Regex!6699) Bool)

(assert (=> b!2285967 (= res!977343 (not (nullable!1858 (regex!4351 otherR!12))))))

(declare-fun b!2285968 () Bool)

(assert (=> b!2285968 (= e!1464643 (not (= (tag!4841 otherR!12) (String!29670 ""))))))

(assert (= (and d!676265 res!977342) b!2285967))

(assert (= (and b!2285967 res!977343) b!2285968))

(declare-fun m!2713695 () Bool)

(assert (=> d!676265 m!2713695))

(declare-fun m!2713697 () Bool)

(assert (=> b!2285967 m!2713697))

(assert (=> b!2285887 d!676265))

(declare-fun d!676267 () Bool)

(assert (=> d!676267 (ruleValid!1441 thiss!16613 otherR!12)))

(declare-fun lt!848262 () Unit!40112)

(declare-fun choose!13341 (LexerInterface!3948 Rule!8502 List!27308) Unit!40112)

(assert (=> d!676267 (= lt!848262 (choose!13341 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!676267 (contains!4725 rules!1750 otherR!12)))

(assert (=> d!676267 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!846 thiss!16613 otherR!12 rules!1750) lt!848262)))

(declare-fun bs!456796 () Bool)

(assert (= bs!456796 d!676267))

(assert (=> bs!456796 m!2713653))

(declare-fun m!2713699 () Bool)

(assert (=> bs!456796 m!2713699))

(assert (=> bs!456796 m!2713581))

(assert (=> b!2285887 d!676267))

(declare-fun d!676269 () Bool)

(assert (=> d!676269 (= (inv!36800 (tag!4841 otherR!12)) (= (mod (str.len (value!137822 (tag!4841 otherR!12))) 2) 0))))

(assert (=> b!2285898 d!676269))

(declare-fun d!676271 () Bool)

(declare-fun res!977346 () Bool)

(declare-fun e!1464646 () Bool)

(assert (=> d!676271 (=> (not res!977346) (not e!1464646))))

(declare-fun semiInverseModEq!1760 (Int Int) Bool)

(assert (=> d!676271 (= res!977346 (semiInverseModEq!1760 (toChars!5996 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 otherR!12))))))

(assert (=> d!676271 (= (inv!36803 (transformation!4351 otherR!12)) e!1464646)))

(declare-fun b!2285971 () Bool)

(declare-fun equivClasses!1679 (Int Int) Bool)

(assert (=> b!2285971 (= e!1464646 (equivClasses!1679 (toChars!5996 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 otherR!12))))))

(assert (= (and d!676271 res!977346) b!2285971))

(declare-fun m!2713701 () Bool)

(assert (=> d!676271 m!2713701))

(declare-fun m!2713703 () Bool)

(assert (=> b!2285971 m!2713703))

(assert (=> b!2285898 d!676271))

(declare-fun d!676273 () Bool)

(declare-fun res!977349 () Bool)

(declare-fun e!1464649 () Bool)

(assert (=> d!676273 (=> (not res!977349) (not e!1464649))))

(declare-fun rulesValid!1604 (LexerInterface!3948 List!27308) Bool)

(assert (=> d!676273 (= res!977349 (rulesValid!1604 thiss!16613 rules!1750))))

(assert (=> d!676273 (= (rulesInvariant!3450 thiss!16613 rules!1750) e!1464649)))

(declare-fun b!2285974 () Bool)

(declare-datatypes ((List!27310 0))(
  ( (Nil!27216) (Cons!27216 (h!32617 String!29669) (t!204132 List!27310)) )
))
(declare-fun noDuplicateTag!1602 (LexerInterface!3948 List!27308 List!27310) Bool)

(assert (=> b!2285974 (= e!1464649 (noDuplicateTag!1602 thiss!16613 rules!1750 Nil!27216))))

(assert (= (and d!676273 res!977349) b!2285974))

(declare-fun m!2713705 () Bool)

(assert (=> d!676273 m!2713705))

(declare-fun m!2713707 () Bool)

(assert (=> b!2285974 m!2713707))

(assert (=> b!2285897 d!676273))

(declare-fun d!676275 () Bool)

(declare-fun list!10636 (Conc!8851) List!27307)

(assert (=> d!676275 (= (list!10633 (_1!16004 lt!848244)) (list!10636 (c!362570 (_1!16004 lt!848244))))))

(declare-fun bs!456797 () Bool)

(assert (= bs!456797 d!676275))

(declare-fun m!2713709 () Bool)

(assert (=> bs!456797 m!2713709))

(assert (=> b!2285908 d!676275))

(declare-fun d!676277 () Bool)

(declare-fun list!10637 (Conc!8850) List!27306)

(assert (=> d!676277 (= (list!10632 (_2!16004 lt!848244)) (list!10637 (c!362568 (_2!16004 lt!848244))))))

(declare-fun bs!456798 () Bool)

(assert (= bs!456798 d!676277))

(declare-fun m!2713711 () Bool)

(assert (=> bs!456798 m!2713711))

(assert (=> b!2285908 d!676277))

(declare-fun b!2285985 () Bool)

(declare-fun e!1464656 () Bool)

(declare-fun lt!848265 () tuple2!26988)

(assert (=> b!2285985 (= e!1464656 (= (_2!16004 lt!848265) (seqFromList!3055 input!1722)))))

(declare-fun b!2285986 () Bool)

(declare-fun e!1464657 () Bool)

(declare-fun isEmpty!15481 (BalanceConc!17430) Bool)

(assert (=> b!2285986 (= e!1464657 (not (isEmpty!15481 (_1!16004 lt!848265))))))

(declare-fun d!676279 () Bool)

(declare-fun e!1464658 () Bool)

(assert (=> d!676279 e!1464658))

(declare-fun res!977356 () Bool)

(assert (=> d!676279 (=> (not res!977356) (not e!1464658))))

(assert (=> d!676279 (= res!977356 e!1464656)))

(declare-fun c!362588 () Bool)

(declare-fun size!21412 (BalanceConc!17430) Int)

(assert (=> d!676279 (= c!362588 (> (size!21412 (_1!16004 lt!848265)) 0))))

(declare-fun lexTailRecV2!779 (LexerInterface!3948 List!27308 BalanceConc!17428 BalanceConc!17428 BalanceConc!17428 BalanceConc!17430) tuple2!26988)

(assert (=> d!676279 (= lt!848265 (lexTailRecV2!779 thiss!16613 rules!1750 (seqFromList!3055 input!1722) (BalanceConc!17429 Empty!8850) (seqFromList!3055 input!1722) (BalanceConc!17431 Empty!8851)))))

(assert (=> d!676279 (= (lex!1787 thiss!16613 rules!1750 (seqFromList!3055 input!1722)) lt!848265)))

(declare-fun b!2285987 () Bool)

(declare-fun res!977358 () Bool)

(assert (=> b!2285987 (=> (not res!977358) (not e!1464658))))

(declare-fun lexList!1104 (LexerInterface!3948 List!27308 List!27306) tuple2!26990)

(assert (=> b!2285987 (= res!977358 (= (list!10633 (_1!16004 lt!848265)) (_1!16005 (lexList!1104 thiss!16613 rules!1750 (list!10632 (seqFromList!3055 input!1722))))))))

(declare-fun b!2285988 () Bool)

(assert (=> b!2285988 (= e!1464658 (= (list!10632 (_2!16004 lt!848265)) (_2!16005 (lexList!1104 thiss!16613 rules!1750 (list!10632 (seqFromList!3055 input!1722))))))))

(declare-fun b!2285989 () Bool)

(assert (=> b!2285989 (= e!1464656 e!1464657)))

(declare-fun res!977357 () Bool)

(assert (=> b!2285989 (= res!977357 (< (size!21409 (_2!16004 lt!848265)) (size!21409 (seqFromList!3055 input!1722))))))

(assert (=> b!2285989 (=> (not res!977357) (not e!1464657))))

(assert (= (and d!676279 c!362588) b!2285989))

(assert (= (and d!676279 (not c!362588)) b!2285985))

(assert (= (and b!2285989 res!977357) b!2285986))

(assert (= (and d!676279 res!977356) b!2285987))

(assert (= (and b!2285987 res!977358) b!2285988))

(declare-fun m!2713713 () Bool)

(assert (=> b!2285987 m!2713713))

(assert (=> b!2285987 m!2713577))

(declare-fun m!2713715 () Bool)

(assert (=> b!2285987 m!2713715))

(assert (=> b!2285987 m!2713715))

(declare-fun m!2713717 () Bool)

(assert (=> b!2285987 m!2713717))

(declare-fun m!2713719 () Bool)

(assert (=> b!2285986 m!2713719))

(declare-fun m!2713721 () Bool)

(assert (=> d!676279 m!2713721))

(assert (=> d!676279 m!2713577))

(assert (=> d!676279 m!2713577))

(declare-fun m!2713723 () Bool)

(assert (=> d!676279 m!2713723))

(declare-fun m!2713725 () Bool)

(assert (=> b!2285988 m!2713725))

(assert (=> b!2285988 m!2713577))

(assert (=> b!2285988 m!2713715))

(assert (=> b!2285988 m!2713715))

(assert (=> b!2285988 m!2713717))

(declare-fun m!2713727 () Bool)

(assert (=> b!2285989 m!2713727))

(assert (=> b!2285989 m!2713577))

(declare-fun m!2713729 () Bool)

(assert (=> b!2285989 m!2713729))

(assert (=> b!2285908 d!676279))

(declare-fun d!676281 () Bool)

(declare-fun fromListB!1370 (List!27306) BalanceConc!17428)

(assert (=> d!676281 (= (seqFromList!3055 input!1722) (fromListB!1370 input!1722))))

(declare-fun bs!456799 () Bool)

(assert (= bs!456799 d!676281))

(declare-fun m!2713731 () Bool)

(assert (=> bs!456799 m!2713731))

(assert (=> b!2285908 d!676281))

(declare-fun d!676283 () Bool)

(assert (=> d!676283 (= (head!4970 tokens!456) (h!32614 tokens!456))))

(assert (=> b!2285907 d!676283))

(declare-fun d!676285 () Bool)

(declare-fun lt!848266 () Bool)

(assert (=> d!676285 (= lt!848266 (select (content!3646 rules!1750) r!2363))))

(declare-fun e!1464660 () Bool)

(assert (=> d!676285 (= lt!848266 e!1464660)))

(declare-fun res!977360 () Bool)

(assert (=> d!676285 (=> (not res!977360) (not e!1464660))))

(assert (=> d!676285 (= res!977360 ((_ is Cons!27214) rules!1750))))

(assert (=> d!676285 (= (contains!4725 rules!1750 r!2363) lt!848266)))

(declare-fun b!2285990 () Bool)

(declare-fun e!1464659 () Bool)

(assert (=> b!2285990 (= e!1464660 e!1464659)))

(declare-fun res!977359 () Bool)

(assert (=> b!2285990 (=> res!977359 e!1464659)))

(assert (=> b!2285990 (= res!977359 (= (h!32615 rules!1750) r!2363))))

(declare-fun b!2285991 () Bool)

(assert (=> b!2285991 (= e!1464659 (contains!4725 (t!204034 rules!1750) r!2363))))

(assert (= (and d!676285 res!977360) b!2285990))

(assert (= (and b!2285990 (not res!977359)) b!2285991))

(assert (=> d!676285 m!2713685))

(declare-fun m!2713733 () Bool)

(assert (=> d!676285 m!2713733))

(declare-fun m!2713735 () Bool)

(assert (=> b!2285991 m!2713735))

(assert (=> b!2285895 d!676285))

(declare-fun d!676287 () Bool)

(assert (=> d!676287 (= (isEmpty!15477 lt!848247) ((_ is Nil!27212) lt!848247))))

(assert (=> b!2285906 d!676287))

(declare-fun d!676289 () Bool)

(assert (=> d!676289 (= (inv!36800 (tag!4841 (h!32615 rules!1750))) (= (mod (str.len (value!137822 (tag!4841 (h!32615 rules!1750)))) 2) 0))))

(assert (=> b!2285905 d!676289))

(declare-fun d!676291 () Bool)

(declare-fun res!977361 () Bool)

(declare-fun e!1464661 () Bool)

(assert (=> d!676291 (=> (not res!977361) (not e!1464661))))

(assert (=> d!676291 (= res!977361 (semiInverseModEq!1760 (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 (h!32615 rules!1750)))))))

(assert (=> d!676291 (= (inv!36803 (transformation!4351 (h!32615 rules!1750))) e!1464661)))

(declare-fun b!2285992 () Bool)

(assert (=> b!2285992 (= e!1464661 (equivClasses!1679 (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 (h!32615 rules!1750)))))))

(assert (= (and d!676291 res!977361) b!2285992))

(declare-fun m!2713737 () Bool)

(assert (=> d!676291 m!2713737))

(declare-fun m!2713739 () Bool)

(assert (=> b!2285992 m!2713739))

(assert (=> b!2285905 d!676291))

(declare-fun d!676293 () Bool)

(assert (=> d!676293 (= (inv!36800 (tag!4841 r!2363)) (= (mod (str.len (value!137822 (tag!4841 r!2363))) 2) 0))))

(assert (=> b!2285884 d!676293))

(declare-fun d!676295 () Bool)

(declare-fun res!977362 () Bool)

(declare-fun e!1464662 () Bool)

(assert (=> d!676295 (=> (not res!977362) (not e!1464662))))

(assert (=> d!676295 (= res!977362 (semiInverseModEq!1760 (toChars!5996 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 r!2363))))))

(assert (=> d!676295 (= (inv!36803 (transformation!4351 r!2363)) e!1464662)))

(declare-fun b!2285993 () Bool)

(assert (=> b!2285993 (= e!1464662 (equivClasses!1679 (toChars!5996 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 r!2363))))))

(assert (= (and d!676295 res!977362) b!2285993))

(declare-fun m!2713741 () Bool)

(assert (=> d!676295 m!2713741))

(declare-fun m!2713743 () Bool)

(assert (=> b!2285993 m!2713743))

(assert (=> b!2285884 d!676295))

(declare-fun d!676297 () Bool)

(assert (=> d!676297 (= (get!8206 lt!848242) (v!30410 lt!848242))))

(assert (=> b!2285883 d!676297))

(declare-fun b!2286047 () Bool)

(declare-fun e!1464690 () Bool)

(declare-fun lt!848285 () Option!5339)

(assert (=> b!2286047 (= e!1464690 (contains!4725 rules!1750 (rule!6679 (_1!16003 (get!8206 lt!848285)))))))

(declare-fun b!2286048 () Bool)

(declare-fun e!1464691 () Option!5339)

(declare-fun call!136531 () Option!5339)

(assert (=> b!2286048 (= e!1464691 call!136531)))

(declare-fun b!2286049 () Bool)

(declare-fun res!977387 () Bool)

(assert (=> b!2286049 (=> (not res!977387) (not e!1464690))))

(assert (=> b!2286049 (= res!977387 (= (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))) (originalCharacters!5121 (_1!16003 (get!8206 lt!848285)))))))

(declare-fun b!2286050 () Bool)

(declare-fun res!977388 () Bool)

(assert (=> b!2286050 (=> (not res!977388) (not e!1464690))))

(assert (=> b!2286050 (= res!977388 (< (size!21410 (_2!16003 (get!8206 lt!848285))) (size!21410 input!1722)))))

(declare-fun b!2286051 () Bool)

(declare-fun res!977391 () Bool)

(assert (=> b!2286051 (=> (not res!977391) (not e!1464690))))

(assert (=> b!2286051 (= res!977391 (= (value!137823 (_1!16003 (get!8206 lt!848285))) (apply!6623 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))) (seqFromList!3055 (originalCharacters!5121 (_1!16003 (get!8206 lt!848285)))))))))

(declare-fun b!2286052 () Bool)

(declare-fun lt!848287 () Option!5339)

(declare-fun lt!848289 () Option!5339)

(assert (=> b!2286052 (= e!1464691 (ite (and ((_ is None!5338) lt!848287) ((_ is None!5338) lt!848289)) None!5338 (ite ((_ is None!5338) lt!848289) lt!848287 (ite ((_ is None!5338) lt!848287) lt!848289 (ite (>= (size!21408 (_1!16003 (v!30410 lt!848287))) (size!21408 (_1!16003 (v!30410 lt!848289)))) lt!848287 lt!848289)))))))

(assert (=> b!2286052 (= lt!848287 call!136531)))

(assert (=> b!2286052 (= lt!848289 (maxPrefix!2212 thiss!16613 (t!204034 rules!1750) input!1722))))

(declare-fun d!676299 () Bool)

(declare-fun e!1464692 () Bool)

(assert (=> d!676299 e!1464692))

(declare-fun res!977392 () Bool)

(assert (=> d!676299 (=> res!977392 e!1464692)))

(declare-fun isEmpty!15482 (Option!5339) Bool)

(assert (=> d!676299 (= res!977392 (isEmpty!15482 lt!848285))))

(assert (=> d!676299 (= lt!848285 e!1464691)))

(declare-fun c!362599 () Bool)

(assert (=> d!676299 (= c!362599 (and ((_ is Cons!27214) rules!1750) ((_ is Nil!27214) (t!204034 rules!1750))))))

(declare-fun lt!848288 () Unit!40112)

(declare-fun lt!848286 () Unit!40112)

(assert (=> d!676299 (= lt!848288 lt!848286)))

(assert (=> d!676299 (isPrefix!2341 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1487 (List!27306 List!27306) Unit!40112)

(assert (=> d!676299 (= lt!848286 (lemmaIsPrefixRefl!1487 input!1722 input!1722))))

(declare-fun rulesValidInductive!1529 (LexerInterface!3948 List!27308) Bool)

(assert (=> d!676299 (rulesValidInductive!1529 thiss!16613 rules!1750)))

(assert (=> d!676299 (= (maxPrefix!2212 thiss!16613 rules!1750 input!1722) lt!848285)))

(declare-fun b!2286053 () Bool)

(assert (=> b!2286053 (= e!1464692 e!1464690)))

(declare-fun res!977390 () Bool)

(assert (=> b!2286053 (=> (not res!977390) (not e!1464690))))

(declare-fun isDefined!4224 (Option!5339) Bool)

(assert (=> b!2286053 (= res!977390 (isDefined!4224 lt!848285))))

(declare-fun bm!136526 () Bool)

(declare-fun maxPrefixOneRule!1382 (LexerInterface!3948 Rule!8502 List!27306) Option!5339)

(assert (=> bm!136526 (= call!136531 (maxPrefixOneRule!1382 thiss!16613 (h!32615 rules!1750) input!1722))))

(declare-fun b!2286054 () Bool)

(declare-fun res!977389 () Bool)

(assert (=> b!2286054 (=> (not res!977389) (not e!1464690))))

(assert (=> b!2286054 (= res!977389 (matchR!2956 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))) (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))))))

(declare-fun b!2286055 () Bool)

(declare-fun res!977386 () Bool)

(assert (=> b!2286055 (=> (not res!977386) (not e!1464690))))

(assert (=> b!2286055 (= res!977386 (= (++!6647 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))) (_2!16003 (get!8206 lt!848285))) input!1722))))

(assert (= (and d!676299 c!362599) b!2286048))

(assert (= (and d!676299 (not c!362599)) b!2286052))

(assert (= (or b!2286048 b!2286052) bm!136526))

(assert (= (and d!676299 (not res!977392)) b!2286053))

(assert (= (and b!2286053 res!977390) b!2286049))

(assert (= (and b!2286049 res!977387) b!2286050))

(assert (= (and b!2286050 res!977388) b!2286055))

(assert (= (and b!2286055 res!977386) b!2286051))

(assert (= (and b!2286051 res!977391) b!2286054))

(assert (= (and b!2286054 res!977389) b!2286047))

(declare-fun m!2713775 () Bool)

(assert (=> b!2286050 m!2713775))

(declare-fun m!2713777 () Bool)

(assert (=> b!2286050 m!2713777))

(declare-fun m!2713779 () Bool)

(assert (=> b!2286050 m!2713779))

(assert (=> b!2286055 m!2713775))

(declare-fun m!2713781 () Bool)

(assert (=> b!2286055 m!2713781))

(assert (=> b!2286055 m!2713781))

(declare-fun m!2713783 () Bool)

(assert (=> b!2286055 m!2713783))

(assert (=> b!2286055 m!2713783))

(declare-fun m!2713785 () Bool)

(assert (=> b!2286055 m!2713785))

(assert (=> b!2286051 m!2713775))

(declare-fun m!2713787 () Bool)

(assert (=> b!2286051 m!2713787))

(assert (=> b!2286051 m!2713787))

(declare-fun m!2713789 () Bool)

(assert (=> b!2286051 m!2713789))

(declare-fun m!2713791 () Bool)

(assert (=> d!676299 m!2713791))

(declare-fun m!2713793 () Bool)

(assert (=> d!676299 m!2713793))

(declare-fun m!2713795 () Bool)

(assert (=> d!676299 m!2713795))

(declare-fun m!2713797 () Bool)

(assert (=> d!676299 m!2713797))

(declare-fun m!2713799 () Bool)

(assert (=> bm!136526 m!2713799))

(declare-fun m!2713801 () Bool)

(assert (=> b!2286052 m!2713801))

(assert (=> b!2286054 m!2713775))

(assert (=> b!2286054 m!2713781))

(assert (=> b!2286054 m!2713781))

(assert (=> b!2286054 m!2713783))

(assert (=> b!2286054 m!2713783))

(declare-fun m!2713805 () Bool)

(assert (=> b!2286054 m!2713805))

(assert (=> b!2286049 m!2713775))

(assert (=> b!2286049 m!2713781))

(assert (=> b!2286049 m!2713781))

(assert (=> b!2286049 m!2713783))

(declare-fun m!2713807 () Bool)

(assert (=> b!2286053 m!2713807))

(assert (=> b!2286047 m!2713775))

(declare-fun m!2713809 () Bool)

(assert (=> b!2286047 m!2713809))

(assert (=> b!2285883 d!676299))

(declare-fun b!2286084 () Bool)

(declare-fun e!1464712 () Bool)

(declare-fun derivativeStep!1517 (Regex!6699 C!13544) Regex!6699)

(declare-fun head!4972 (List!27306) C!13544)

(declare-fun tail!3301 (List!27306) List!27306)

(assert (=> b!2286084 (= e!1464712 (matchR!2956 (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(declare-fun b!2286085 () Bool)

(declare-fun e!1464710 () Bool)

(declare-fun lt!848292 () Bool)

(declare-fun call!136534 () Bool)

(assert (=> b!2286085 (= e!1464710 (= lt!848292 call!136534))))

(declare-fun b!2286086 () Bool)

(declare-fun res!977416 () Bool)

(declare-fun e!1464708 () Bool)

(assert (=> b!2286086 (=> (not res!977416) (not e!1464708))))

(assert (=> b!2286086 (= res!977416 (isEmpty!15477 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(declare-fun b!2286087 () Bool)

(declare-fun e!1464711 () Bool)

(assert (=> b!2286087 (= e!1464711 (not lt!848292))))

(declare-fun b!2286088 () Bool)

(declare-fun e!1464709 () Bool)

(declare-fun e!1464707 () Bool)

(assert (=> b!2286088 (= e!1464709 e!1464707)))

(declare-fun res!977413 () Bool)

(assert (=> b!2286088 (=> (not res!977413) (not e!1464707))))

(assert (=> b!2286088 (= res!977413 (not lt!848292))))

(declare-fun b!2286089 () Bool)

(declare-fun res!977409 () Bool)

(assert (=> b!2286089 (=> res!977409 e!1464709)))

(assert (=> b!2286089 (= res!977409 e!1464708)))

(declare-fun res!977410 () Bool)

(assert (=> b!2286089 (=> (not res!977410) (not e!1464708))))

(assert (=> b!2286089 (= res!977410 lt!848292)))

(declare-fun b!2286090 () Bool)

(assert (=> b!2286090 (= e!1464710 e!1464711)))

(declare-fun c!362607 () Bool)

(assert (=> b!2286090 (= c!362607 ((_ is EmptyLang!6699) (regex!4351 r!2363)))))

(declare-fun b!2286091 () Bool)

(declare-fun res!977411 () Bool)

(declare-fun e!1464713 () Bool)

(assert (=> b!2286091 (=> res!977411 e!1464713)))

(assert (=> b!2286091 (= res!977411 (not (isEmpty!15477 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))

(declare-fun b!2286092 () Bool)

(assert (=> b!2286092 (= e!1464707 e!1464713)))

(declare-fun res!977414 () Bool)

(assert (=> b!2286092 (=> res!977414 e!1464713)))

(assert (=> b!2286092 (= res!977414 call!136534)))

(declare-fun d!676323 () Bool)

(assert (=> d!676323 e!1464710))

(declare-fun c!362608 () Bool)

(assert (=> d!676323 (= c!362608 ((_ is EmptyExpr!6699) (regex!4351 r!2363)))))

(assert (=> d!676323 (= lt!848292 e!1464712)))

(declare-fun c!362606 () Bool)

(assert (=> d!676323 (= c!362606 (isEmpty!15477 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))

(assert (=> d!676323 (validRegex!2520 (regex!4351 r!2363))))

(assert (=> d!676323 (= (matchR!2956 (regex!4351 r!2363) (list!10632 (charsOf!2739 (head!4970 tokens!456)))) lt!848292)))

(declare-fun b!2286093 () Bool)

(declare-fun res!977412 () Bool)

(assert (=> b!2286093 (=> res!977412 e!1464709)))

(assert (=> b!2286093 (= res!977412 (not ((_ is ElementMatch!6699) (regex!4351 r!2363))))))

(assert (=> b!2286093 (= e!1464711 e!1464709)))

(declare-fun b!2286094 () Bool)

(declare-fun res!977415 () Bool)

(assert (=> b!2286094 (=> (not res!977415) (not e!1464708))))

(assert (=> b!2286094 (= res!977415 (not call!136534))))

(declare-fun b!2286095 () Bool)

(assert (=> b!2286095 (= e!1464713 (not (= (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))) (c!362569 (regex!4351 r!2363)))))))

(declare-fun bm!136529 () Bool)

(assert (=> bm!136529 (= call!136534 (isEmpty!15477 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))

(declare-fun b!2286096 () Bool)

(assert (=> b!2286096 (= e!1464708 (= (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))) (c!362569 (regex!4351 r!2363))))))

(declare-fun b!2286097 () Bool)

(assert (=> b!2286097 (= e!1464712 (nullable!1858 (regex!4351 r!2363)))))

(assert (= (and d!676323 c!362606) b!2286097))

(assert (= (and d!676323 (not c!362606)) b!2286084))

(assert (= (and d!676323 c!362608) b!2286085))

(assert (= (and d!676323 (not c!362608)) b!2286090))

(assert (= (and b!2286090 c!362607) b!2286087))

(assert (= (and b!2286090 (not c!362607)) b!2286093))

(assert (= (and b!2286093 (not res!977412)) b!2286089))

(assert (= (and b!2286089 res!977410) b!2286094))

(assert (= (and b!2286094 res!977415) b!2286086))

(assert (= (and b!2286086 res!977416) b!2286096))

(assert (= (and b!2286089 (not res!977409)) b!2286088))

(assert (= (and b!2286088 res!977413) b!2286092))

(assert (= (and b!2286092 (not res!977414)) b!2286091))

(assert (= (and b!2286091 (not res!977411)) b!2286095))

(assert (= (or b!2286085 b!2286092 b!2286094) bm!136529))

(assert (=> b!2286086 m!2713635))

(declare-fun m!2713811 () Bool)

(assert (=> b!2286086 m!2713811))

(assert (=> b!2286086 m!2713811))

(declare-fun m!2713813 () Bool)

(assert (=> b!2286086 m!2713813))

(assert (=> b!2286095 m!2713635))

(declare-fun m!2713815 () Bool)

(assert (=> b!2286095 m!2713815))

(assert (=> d!676323 m!2713635))

(declare-fun m!2713817 () Bool)

(assert (=> d!676323 m!2713817))

(declare-fun m!2713819 () Bool)

(assert (=> d!676323 m!2713819))

(assert (=> bm!136529 m!2713635))

(assert (=> bm!136529 m!2713817))

(declare-fun m!2713821 () Bool)

(assert (=> b!2286097 m!2713821))

(assert (=> b!2286091 m!2713635))

(assert (=> b!2286091 m!2713811))

(assert (=> b!2286091 m!2713811))

(assert (=> b!2286091 m!2713813))

(assert (=> b!2286096 m!2713635))

(assert (=> b!2286096 m!2713815))

(assert (=> b!2286084 m!2713635))

(assert (=> b!2286084 m!2713815))

(assert (=> b!2286084 m!2713815))

(declare-fun m!2713823 () Bool)

(assert (=> b!2286084 m!2713823))

(assert (=> b!2286084 m!2713635))

(assert (=> b!2286084 m!2713811))

(assert (=> b!2286084 m!2713823))

(assert (=> b!2286084 m!2713811))

(declare-fun m!2713825 () Bool)

(assert (=> b!2286084 m!2713825))

(assert (=> b!2285893 d!676323))

(declare-fun d!676325 () Bool)

(assert (=> d!676325 (= (list!10632 (charsOf!2739 (head!4970 tokens!456))) (list!10637 (c!362568 (charsOf!2739 (head!4970 tokens!456)))))))

(declare-fun bs!456804 () Bool)

(assert (= bs!456804 d!676325))

(declare-fun m!2713827 () Bool)

(assert (=> bs!456804 m!2713827))

(assert (=> b!2285893 d!676325))

(declare-fun d!676327 () Bool)

(declare-fun lt!848295 () BalanceConc!17428)

(assert (=> d!676327 (= (list!10632 lt!848295) (originalCharacters!5121 (head!4970 tokens!456)))))

(assert (=> d!676327 (= lt!848295 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))))

(assert (=> d!676327 (= (charsOf!2739 (head!4970 tokens!456)) lt!848295)))

(declare-fun b_lambda!72773 () Bool)

(assert (=> (not b_lambda!72773) (not d!676327)))

(declare-fun tb!136007 () Bool)

(declare-fun t!204060 () Bool)

(assert (=> (and b!2285910 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204060) tb!136007))

(declare-fun b!2286098 () Bool)

(declare-fun e!1464714 () Bool)

(declare-fun tp!724686 () Bool)

(assert (=> b!2286098 (= e!1464714 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))) tp!724686))))

(declare-fun result!165848 () Bool)

(assert (=> tb!136007 (= result!165848 (and (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))) e!1464714))))

(assert (= tb!136007 b!2286098))

(declare-fun m!2713829 () Bool)

(assert (=> b!2286098 m!2713829))

(declare-fun m!2713831 () Bool)

(assert (=> tb!136007 m!2713831))

(assert (=> d!676327 t!204060))

(declare-fun b_and!181017 () Bool)

(assert (= b_and!180993 (and (=> t!204060 result!165848) b_and!181017)))

(declare-fun t!204062 () Bool)

(declare-fun tb!136009 () Bool)

(assert (=> (and b!2285886 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204062) tb!136009))

(declare-fun result!165850 () Bool)

(assert (= result!165850 result!165848))

(assert (=> d!676327 t!204062))

(declare-fun b_and!181019 () Bool)

(assert (= b_and!180995 (and (=> t!204062 result!165850) b_and!181019)))

(declare-fun tb!136011 () Bool)

(declare-fun t!204064 () Bool)

(assert (=> (and b!2285894 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204064) tb!136011))

(declare-fun result!165852 () Bool)

(assert (= result!165852 result!165848))

(assert (=> d!676327 t!204064))

(declare-fun b_and!181021 () Bool)

(assert (= b_and!180997 (and (=> t!204064 result!165852) b_and!181021)))

(declare-fun t!204066 () Bool)

(declare-fun tb!136013 () Bool)

(assert (=> (and b!2285891 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204066) tb!136013))

(declare-fun result!165854 () Bool)

(assert (= result!165854 result!165848))

(assert (=> d!676327 t!204066))

(declare-fun b_and!181023 () Bool)

(assert (= b_and!180999 (and (=> t!204066 result!165854) b_and!181023)))

(declare-fun m!2713833 () Bool)

(assert (=> d!676327 m!2713833))

(declare-fun m!2713835 () Bool)

(assert (=> d!676327 m!2713835))

(assert (=> b!2285893 d!676327))

(assert (=> b!2285893 d!676283))

(declare-fun d!676329 () Bool)

(assert (=> d!676329 (= (_2!16003 lt!848240) lt!848243)))

(declare-fun lt!848298 () Unit!40112)

(declare-fun choose!13342 (List!27306 List!27306 List!27306 List!27306 List!27306) Unit!40112)

(assert (=> d!676329 (= lt!848298 (choose!13342 lt!848247 (_2!16003 lt!848240) lt!848247 lt!848243 input!1722))))

(assert (=> d!676329 (isPrefix!2341 lt!848247 input!1722)))

(assert (=> d!676329 (= (lemmaSamePrefixThenSameSuffix!1042 lt!848247 (_2!16003 lt!848240) lt!848247 lt!848243 input!1722) lt!848298)))

(declare-fun bs!456805 () Bool)

(assert (= bs!456805 d!676329))

(declare-fun m!2713837 () Bool)

(assert (=> bs!456805 m!2713837))

(declare-fun m!2713839 () Bool)

(assert (=> bs!456805 m!2713839))

(assert (=> b!2285904 d!676329))

(declare-fun lt!848301 () List!27306)

(declare-fun b!2286110 () Bool)

(declare-fun e!1464719 () Bool)

(assert (=> b!2286110 (= e!1464719 (or (not (= (_2!16003 lt!848240) Nil!27212)) (= lt!848301 lt!848247)))))

(declare-fun b!2286107 () Bool)

(declare-fun e!1464720 () List!27306)

(assert (=> b!2286107 (= e!1464720 (_2!16003 lt!848240))))

(declare-fun b!2286109 () Bool)

(declare-fun res!977422 () Bool)

(assert (=> b!2286109 (=> (not res!977422) (not e!1464719))))

(assert (=> b!2286109 (= res!977422 (= (size!21410 lt!848301) (+ (size!21410 lt!848247) (size!21410 (_2!16003 lt!848240)))))))

(declare-fun d!676331 () Bool)

(assert (=> d!676331 e!1464719))

(declare-fun res!977421 () Bool)

(assert (=> d!676331 (=> (not res!977421) (not e!1464719))))

(declare-fun content!3647 (List!27306) (InoxSet C!13544))

(assert (=> d!676331 (= res!977421 (= (content!3647 lt!848301) ((_ map or) (content!3647 lt!848247) (content!3647 (_2!16003 lt!848240)))))))

(assert (=> d!676331 (= lt!848301 e!1464720)))

(declare-fun c!362611 () Bool)

(assert (=> d!676331 (= c!362611 ((_ is Nil!27212) lt!848247))))

(assert (=> d!676331 (= (++!6647 lt!848247 (_2!16003 lt!848240)) lt!848301)))

(declare-fun b!2286108 () Bool)

(assert (=> b!2286108 (= e!1464720 (Cons!27212 (h!32613 lt!848247) (++!6647 (t!204032 lt!848247) (_2!16003 lt!848240))))))

(assert (= (and d!676331 c!362611) b!2286107))

(assert (= (and d!676331 (not c!362611)) b!2286108))

(assert (= (and d!676331 res!977421) b!2286109))

(assert (= (and b!2286109 res!977422) b!2286110))

(declare-fun m!2713841 () Bool)

(assert (=> b!2286109 m!2713841))

(assert (=> b!2286109 m!2713613))

(declare-fun m!2713843 () Bool)

(assert (=> b!2286109 m!2713843))

(declare-fun m!2713845 () Bool)

(assert (=> d!676331 m!2713845))

(declare-fun m!2713847 () Bool)

(assert (=> d!676331 m!2713847))

(declare-fun m!2713849 () Bool)

(assert (=> d!676331 m!2713849))

(declare-fun m!2713851 () Bool)

(assert (=> b!2286108 m!2713851))

(assert (=> b!2285904 d!676331))

(declare-fun d!676333 () Bool)

(assert (=> d!676333 (isPrefix!2341 lt!848247 (++!6647 lt!848247 (_2!16003 lt!848240)))))

(declare-fun lt!848304 () Unit!40112)

(declare-fun choose!13343 (List!27306 List!27306) Unit!40112)

(assert (=> d!676333 (= lt!848304 (choose!13343 lt!848247 (_2!16003 lt!848240)))))

(assert (=> d!676333 (= (lemmaConcatTwoListThenFirstIsPrefix!1546 lt!848247 (_2!16003 lt!848240)) lt!848304)))

(declare-fun bs!456806 () Bool)

(assert (= bs!456806 d!676333))

(assert (=> bs!456806 m!2713609))

(assert (=> bs!456806 m!2713609))

(declare-fun m!2713853 () Bool)

(assert (=> bs!456806 m!2713853))

(declare-fun m!2713855 () Bool)

(assert (=> bs!456806 m!2713855))

(assert (=> b!2285904 d!676333))

(declare-fun d!676335 () Bool)

(assert (=> d!676335 (= (list!10632 (charsOf!2739 (h!32614 tokens!456))) (list!10637 (c!362568 (charsOf!2739 (h!32614 tokens!456)))))))

(declare-fun bs!456807 () Bool)

(assert (= bs!456807 d!676335))

(declare-fun m!2713857 () Bool)

(assert (=> bs!456807 m!2713857))

(assert (=> b!2285904 d!676335))

(declare-fun d!676337 () Bool)

(declare-fun lt!848307 () Int)

(assert (=> d!676337 (>= lt!848307 0)))

(declare-fun e!1464723 () Int)

(assert (=> d!676337 (= lt!848307 e!1464723)))

(declare-fun c!362614 () Bool)

(assert (=> d!676337 (= c!362614 ((_ is Nil!27212) lt!848247))))

(assert (=> d!676337 (= (size!21410 lt!848247) lt!848307)))

(declare-fun b!2286115 () Bool)

(assert (=> b!2286115 (= e!1464723 0)))

(declare-fun b!2286116 () Bool)

(assert (=> b!2286116 (= e!1464723 (+ 1 (size!21410 (t!204032 lt!848247))))))

(assert (= (and d!676337 c!362614) b!2286115))

(assert (= (and d!676337 (not c!362614)) b!2286116))

(declare-fun m!2713859 () Bool)

(assert (=> b!2286116 m!2713859))

(assert (=> b!2285904 d!676337))

(declare-fun d!676339 () Bool)

(declare-fun e!1464731 () Bool)

(assert (=> d!676339 e!1464731))

(declare-fun res!977434 () Bool)

(assert (=> d!676339 (=> res!977434 e!1464731)))

(declare-fun lt!848310 () Bool)

(assert (=> d!676339 (= res!977434 (not lt!848310))))

(declare-fun e!1464730 () Bool)

(assert (=> d!676339 (= lt!848310 e!1464730)))

(declare-fun res!977433 () Bool)

(assert (=> d!676339 (=> res!977433 e!1464730)))

(assert (=> d!676339 (= res!977433 ((_ is Nil!27212) lt!848247))))

(assert (=> d!676339 (= (isPrefix!2341 lt!848247 lt!848238) lt!848310)))

(declare-fun b!2286128 () Bool)

(assert (=> b!2286128 (= e!1464731 (>= (size!21410 lt!848238) (size!21410 lt!848247)))))

(declare-fun b!2286126 () Bool)

(declare-fun res!977432 () Bool)

(declare-fun e!1464732 () Bool)

(assert (=> b!2286126 (=> (not res!977432) (not e!1464732))))

(assert (=> b!2286126 (= res!977432 (= (head!4972 lt!848247) (head!4972 lt!848238)))))

(declare-fun b!2286127 () Bool)

(assert (=> b!2286127 (= e!1464732 (isPrefix!2341 (tail!3301 lt!848247) (tail!3301 lt!848238)))))

(declare-fun b!2286125 () Bool)

(assert (=> b!2286125 (= e!1464730 e!1464732)))

(declare-fun res!977431 () Bool)

(assert (=> b!2286125 (=> (not res!977431) (not e!1464732))))

(assert (=> b!2286125 (= res!977431 (not ((_ is Nil!27212) lt!848238)))))

(assert (= (and d!676339 (not res!977433)) b!2286125))

(assert (= (and b!2286125 res!977431) b!2286126))

(assert (= (and b!2286126 res!977432) b!2286127))

(assert (= (and d!676339 (not res!977434)) b!2286128))

(declare-fun m!2713861 () Bool)

(assert (=> b!2286128 m!2713861))

(assert (=> b!2286128 m!2713613))

(declare-fun m!2713863 () Bool)

(assert (=> b!2286126 m!2713863))

(declare-fun m!2713865 () Bool)

(assert (=> b!2286126 m!2713865))

(declare-fun m!2713867 () Bool)

(assert (=> b!2286127 m!2713867))

(declare-fun m!2713869 () Bool)

(assert (=> b!2286127 m!2713869))

(assert (=> b!2286127 m!2713867))

(assert (=> b!2286127 m!2713869))

(declare-fun m!2713871 () Bool)

(assert (=> b!2286127 m!2713871))

(assert (=> b!2285904 d!676339))

(declare-fun d!676341 () Bool)

(declare-fun lt!848311 () BalanceConc!17428)

(assert (=> d!676341 (= (list!10632 lt!848311) (originalCharacters!5121 (h!32614 tokens!456)))))

(assert (=> d!676341 (= lt!848311 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))))

(assert (=> d!676341 (= (charsOf!2739 (h!32614 tokens!456)) lt!848311)))

(declare-fun b_lambda!72775 () Bool)

(assert (=> (not b_lambda!72775) (not d!676341)))

(assert (=> d!676341 t!204044))

(declare-fun b_and!181025 () Bool)

(assert (= b_and!181017 (and (=> t!204044 result!165828) b_and!181025)))

(assert (=> d!676341 t!204046))

(declare-fun b_and!181027 () Bool)

(assert (= b_and!181019 (and (=> t!204046 result!165832) b_and!181027)))

(assert (=> d!676341 t!204048))

(declare-fun b_and!181029 () Bool)

(assert (= b_and!181021 (and (=> t!204048 result!165834) b_and!181029)))

(assert (=> d!676341 t!204050))

(declare-fun b_and!181031 () Bool)

(assert (= b_and!181023 (and (=> t!204050 result!165836) b_and!181031)))

(declare-fun m!2713873 () Bool)

(assert (=> d!676341 m!2713873))

(assert (=> d!676341 m!2713679))

(assert (=> b!2285904 d!676341))

(declare-fun d!676343 () Bool)

(declare-fun lt!848312 () Int)

(assert (=> d!676343 (>= lt!848312 0)))

(declare-fun e!1464733 () Int)

(assert (=> d!676343 (= lt!848312 e!1464733)))

(declare-fun c!362615 () Bool)

(assert (=> d!676343 (= c!362615 ((_ is Nil!27212) otherP!12))))

(assert (=> d!676343 (= (size!21410 otherP!12) lt!848312)))

(declare-fun b!2286129 () Bool)

(assert (=> b!2286129 (= e!1464733 0)))

(declare-fun b!2286130 () Bool)

(assert (=> b!2286130 (= e!1464733 (+ 1 (size!21410 (t!204032 otherP!12))))))

(assert (= (and d!676343 c!362615) b!2286129))

(assert (= (and d!676343 (not c!362615)) b!2286130))

(declare-fun m!2713875 () Bool)

(assert (=> b!2286130 m!2713875))

(assert (=> b!2285904 d!676343))

(declare-fun d!676345 () Bool)

(declare-fun lt!848315 () List!27306)

(assert (=> d!676345 (= (++!6647 lt!848247 lt!848315) input!1722)))

(declare-fun e!1464736 () List!27306)

(assert (=> d!676345 (= lt!848315 e!1464736)))

(declare-fun c!362618 () Bool)

(assert (=> d!676345 (= c!362618 ((_ is Cons!27212) lt!848247))))

(assert (=> d!676345 (>= (size!21410 input!1722) (size!21410 lt!848247))))

(assert (=> d!676345 (= (getSuffix!1132 input!1722 lt!848247) lt!848315)))

(declare-fun b!2286135 () Bool)

(assert (=> b!2286135 (= e!1464736 (getSuffix!1132 (tail!3301 input!1722) (t!204032 lt!848247)))))

(declare-fun b!2286136 () Bool)

(assert (=> b!2286136 (= e!1464736 input!1722)))

(assert (= (and d!676345 c!362618) b!2286135))

(assert (= (and d!676345 (not c!362618)) b!2286136))

(declare-fun m!2713877 () Bool)

(assert (=> d!676345 m!2713877))

(assert (=> d!676345 m!2713779))

(assert (=> d!676345 m!2713613))

(declare-fun m!2713879 () Bool)

(assert (=> b!2286135 m!2713879))

(assert (=> b!2286135 m!2713879))

(declare-fun m!2713881 () Bool)

(assert (=> b!2286135 m!2713881))

(assert (=> b!2285904 d!676345))

(declare-fun d!676347 () Bool)

(declare-fun e!1464738 () Bool)

(assert (=> d!676347 e!1464738))

(declare-fun res!977438 () Bool)

(assert (=> d!676347 (=> res!977438 e!1464738)))

(declare-fun lt!848316 () Bool)

(assert (=> d!676347 (= res!977438 (not lt!848316))))

(declare-fun e!1464737 () Bool)

(assert (=> d!676347 (= lt!848316 e!1464737)))

(declare-fun res!977437 () Bool)

(assert (=> d!676347 (=> res!977437 e!1464737)))

(assert (=> d!676347 (= res!977437 ((_ is Nil!27212) otherP!12))))

(assert (=> d!676347 (= (isPrefix!2341 otherP!12 input!1722) lt!848316)))

(declare-fun b!2286140 () Bool)

(assert (=> b!2286140 (= e!1464738 (>= (size!21410 input!1722) (size!21410 otherP!12)))))

(declare-fun b!2286138 () Bool)

(declare-fun res!977436 () Bool)

(declare-fun e!1464739 () Bool)

(assert (=> b!2286138 (=> (not res!977436) (not e!1464739))))

(assert (=> b!2286138 (= res!977436 (= (head!4972 otherP!12) (head!4972 input!1722)))))

(declare-fun b!2286139 () Bool)

(assert (=> b!2286139 (= e!1464739 (isPrefix!2341 (tail!3301 otherP!12) (tail!3301 input!1722)))))

(declare-fun b!2286137 () Bool)

(assert (=> b!2286137 (= e!1464737 e!1464739)))

(declare-fun res!977435 () Bool)

(assert (=> b!2286137 (=> (not res!977435) (not e!1464739))))

(assert (=> b!2286137 (= res!977435 (not ((_ is Nil!27212) input!1722)))))

(assert (= (and d!676347 (not res!977437)) b!2286137))

(assert (= (and b!2286137 res!977435) b!2286138))

(assert (= (and b!2286138 res!977436) b!2286139))

(assert (= (and d!676347 (not res!977438)) b!2286140))

(assert (=> b!2286140 m!2713779))

(assert (=> b!2286140 m!2713599))

(declare-fun m!2713883 () Bool)

(assert (=> b!2286138 m!2713883))

(declare-fun m!2713885 () Bool)

(assert (=> b!2286138 m!2713885))

(declare-fun m!2713887 () Bool)

(assert (=> b!2286139 m!2713887))

(assert (=> b!2286139 m!2713879))

(assert (=> b!2286139 m!2713887))

(assert (=> b!2286139 m!2713879))

(declare-fun m!2713889 () Bool)

(assert (=> b!2286139 m!2713889))

(assert (=> b!2285903 d!676347))

(declare-fun d!676349 () Bool)

(declare-fun dynLambda!11806 (Int BalanceConc!17428) TokenValue!4513)

(assert (=> d!676349 (= (apply!6623 (transformation!4351 r!2363) lt!848241) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))

(declare-fun b_lambda!72777 () Bool)

(assert (=> (not b_lambda!72777) (not d!676349)))

(declare-fun tb!136015 () Bool)

(declare-fun t!204068 () Bool)

(assert (=> (and b!2285910 (= (toValue!6137 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 r!2363))) t!204068) tb!136015))

(declare-fun result!165856 () Bool)

(assert (=> tb!136015 (= result!165856 (inv!21 (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))

(declare-fun m!2713891 () Bool)

(assert (=> tb!136015 m!2713891))

(assert (=> d!676349 t!204068))

(declare-fun b_and!181033 () Bool)

(assert (= b_and!180969 (and (=> t!204068 result!165856) b_and!181033)))

(declare-fun t!204070 () Bool)

(declare-fun tb!136017 () Bool)

(assert (=> (and b!2285886 (= (toValue!6137 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 r!2363))) t!204070) tb!136017))

(declare-fun result!165860 () Bool)

(assert (= result!165860 result!165856))

(assert (=> d!676349 t!204070))

(declare-fun b_and!181035 () Bool)

(assert (= b_and!180973 (and (=> t!204070 result!165860) b_and!181035)))

(declare-fun tb!136019 () Bool)

(declare-fun t!204072 () Bool)

(assert (=> (and b!2285894 (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 r!2363))) t!204072) tb!136019))

(declare-fun result!165862 () Bool)

(assert (= result!165862 result!165856))

(assert (=> d!676349 t!204072))

(declare-fun b_and!181037 () Bool)

(assert (= b_and!180977 (and (=> t!204072 result!165862) b_and!181037)))

(declare-fun t!204074 () Bool)

(declare-fun tb!136021 () Bool)

(assert (=> (and b!2285891 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 r!2363))) t!204074) tb!136021))

(declare-fun result!165864 () Bool)

(assert (= result!165864 result!165856))

(assert (=> d!676349 t!204074))

(declare-fun b_and!181039 () Bool)

(assert (= b_and!180981 (and (=> t!204074 result!165864) b_and!181039)))

(declare-fun m!2713893 () Bool)

(assert (=> d!676349 m!2713893))

(assert (=> b!2285882 d!676349))

(declare-fun b!2286356 () Bool)

(declare-fun e!1464871 () Bool)

(assert (=> b!2286356 (= e!1464871 true)))

(declare-fun d!676351 () Bool)

(assert (=> d!676351 e!1464871))

(assert (= d!676351 b!2286356))

(declare-fun order!15163 () Int)

(declare-fun order!15165 () Int)

(declare-fun lambda!85703 () Int)

(declare-fun dynLambda!11807 (Int Int) Int)

(declare-fun dynLambda!11808 (Int Int) Int)

(assert (=> b!2286356 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 r!2363))) (dynLambda!11808 order!15165 lambda!85703))))

(declare-fun order!15167 () Int)

(declare-fun dynLambda!11809 (Int Int) Int)

(assert (=> b!2286356 (< (dynLambda!11809 order!15167 (toChars!5996 (transformation!4351 r!2363))) (dynLambda!11808 order!15165 lambda!85703))))

(assert (=> d!676351 (= (list!10632 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))) (list!10632 lt!848241))))

(declare-fun lt!848372 () Unit!40112)

(declare-fun ForallOf!491 (Int BalanceConc!17428) Unit!40112)

(assert (=> d!676351 (= lt!848372 (ForallOf!491 lambda!85703 lt!848241))))

(assert (=> d!676351 (= (lemmaSemiInverse!1054 (transformation!4351 r!2363) lt!848241) lt!848372)))

(declare-fun b_lambda!72795 () Bool)

(assert (=> (not b_lambda!72795) (not d!676351)))

(declare-fun tb!136055 () Bool)

(declare-fun t!204109 () Bool)

(assert (=> (and b!2285910 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 r!2363))) t!204109) tb!136055))

(declare-fun e!1464872 () Bool)

(declare-fun tp!724752 () Bool)

(declare-fun b!2286357 () Bool)

(assert (=> b!2286357 (= e!1464872 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))) tp!724752))))

(declare-fun result!165906 () Bool)

(assert (=> tb!136055 (= result!165906 (and (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))) e!1464872))))

(assert (= tb!136055 b!2286357))

(declare-fun m!2714085 () Bool)

(assert (=> b!2286357 m!2714085))

(declare-fun m!2714087 () Bool)

(assert (=> tb!136055 m!2714087))

(assert (=> d!676351 t!204109))

(declare-fun b_and!181073 () Bool)

(assert (= b_and!181025 (and (=> t!204109 result!165906) b_and!181073)))

(declare-fun t!204111 () Bool)

(declare-fun tb!136057 () Bool)

(assert (=> (and b!2285886 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 r!2363))) t!204111) tb!136057))

(declare-fun result!165908 () Bool)

(assert (= result!165908 result!165906))

(assert (=> d!676351 t!204111))

(declare-fun b_and!181075 () Bool)

(assert (= b_and!181027 (and (=> t!204111 result!165908) b_and!181075)))

(declare-fun tb!136059 () Bool)

(declare-fun t!204113 () Bool)

(assert (=> (and b!2285894 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 r!2363))) t!204113) tb!136059))

(declare-fun result!165910 () Bool)

(assert (= result!165910 result!165906))

(assert (=> d!676351 t!204113))

(declare-fun b_and!181077 () Bool)

(assert (= b_and!181029 (and (=> t!204113 result!165910) b_and!181077)))

(declare-fun t!204115 () Bool)

(declare-fun tb!136061 () Bool)

(assert (=> (and b!2285891 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 r!2363))) t!204115) tb!136061))

(declare-fun result!165912 () Bool)

(assert (= result!165912 result!165906))

(assert (=> d!676351 t!204115))

(declare-fun b_and!181079 () Bool)

(assert (= b_and!181031 (and (=> t!204115 result!165912) b_and!181079)))

(declare-fun b_lambda!72797 () Bool)

(assert (=> (not b_lambda!72797) (not d!676351)))

(assert (=> d!676351 t!204068))

(declare-fun b_and!181081 () Bool)

(assert (= b_and!181033 (and (=> t!204068 result!165856) b_and!181081)))

(assert (=> d!676351 t!204070))

(declare-fun b_and!181083 () Bool)

(assert (= b_and!181035 (and (=> t!204070 result!165860) b_and!181083)))

(assert (=> d!676351 t!204072))

(declare-fun b_and!181085 () Bool)

(assert (= b_and!181037 (and (=> t!204072 result!165862) b_and!181085)))

(assert (=> d!676351 t!204074))

(declare-fun b_and!181087 () Bool)

(assert (= b_and!181039 (and (=> t!204074 result!165864) b_and!181087)))

(assert (=> d!676351 m!2713893))

(declare-fun m!2714089 () Bool)

(assert (=> d!676351 m!2714089))

(declare-fun m!2714091 () Bool)

(assert (=> d!676351 m!2714091))

(declare-fun m!2714093 () Bool)

(assert (=> d!676351 m!2714093))

(declare-fun m!2714095 () Bool)

(assert (=> d!676351 m!2714095))

(assert (=> d!676351 m!2713893))

(assert (=> d!676351 m!2714091))

(assert (=> b!2285882 d!676351))

(declare-fun d!676417 () Bool)

(assert (=> d!676417 (= (seqFromList!3055 lt!848247) (fromListB!1370 lt!848247))))

(declare-fun bs!456815 () Bool)

(assert (= bs!456815 d!676417))

(declare-fun m!2714097 () Bool)

(assert (=> bs!456815 m!2714097))

(assert (=> b!2285882 d!676417))

(declare-fun d!676419 () Bool)

(declare-fun lt!848375 () Int)

(assert (=> d!676419 (= lt!848375 (size!21410 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))

(declare-fun size!21414 (Conc!8850) Int)

(assert (=> d!676419 (= lt!848375 (size!21414 (c!362568 (charsOf!2739 (head!4970 tokens!456)))))))

(assert (=> d!676419 (= (size!21409 (charsOf!2739 (head!4970 tokens!456))) lt!848375)))

(declare-fun bs!456816 () Bool)

(assert (= bs!456816 d!676419))

(assert (=> bs!456816 m!2713625))

(assert (=> bs!456816 m!2713635))

(assert (=> bs!456816 m!2713635))

(declare-fun m!2714099 () Bool)

(assert (=> bs!456816 m!2714099))

(declare-fun m!2714101 () Bool)

(assert (=> bs!456816 m!2714101))

(assert (=> b!2285892 d!676419))

(assert (=> b!2285892 d!676327))

(assert (=> b!2285892 d!676283))

(assert (=> b!2285892 d!676343))

(declare-fun d!676421 () Bool)

(declare-fun res!977537 () Bool)

(declare-fun e!1464873 () Bool)

(assert (=> d!676421 (=> (not res!977537) (not e!1464873))))

(assert (=> d!676421 (= res!977537 (validRegex!2520 (regex!4351 r!2363)))))

(assert (=> d!676421 (= (ruleValid!1441 thiss!16613 r!2363) e!1464873)))

(declare-fun b!2286358 () Bool)

(declare-fun res!977538 () Bool)

(assert (=> b!2286358 (=> (not res!977538) (not e!1464873))))

(assert (=> b!2286358 (= res!977538 (not (nullable!1858 (regex!4351 r!2363))))))

(declare-fun b!2286359 () Bool)

(assert (=> b!2286359 (= e!1464873 (not (= (tag!4841 r!2363) (String!29670 ""))))))

(assert (= (and d!676421 res!977537) b!2286358))

(assert (= (and b!2286358 res!977538) b!2286359))

(assert (=> d!676421 m!2713819))

(assert (=> b!2286358 m!2713821))

(assert (=> b!2285902 d!676421))

(declare-fun d!676423 () Bool)

(assert (=> d!676423 (ruleValid!1441 thiss!16613 r!2363)))

(declare-fun lt!848376 () Unit!40112)

(assert (=> d!676423 (= lt!848376 (choose!13341 thiss!16613 r!2363 rules!1750))))

(assert (=> d!676423 (contains!4725 rules!1750 r!2363)))

(assert (=> d!676423 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!846 thiss!16613 r!2363 rules!1750) lt!848376)))

(declare-fun bs!456817 () Bool)

(assert (= bs!456817 d!676423))

(assert (=> bs!456817 m!2713585))

(declare-fun m!2714103 () Bool)

(assert (=> bs!456817 m!2714103))

(assert (=> bs!456817 m!2713583))

(assert (=> b!2285902 d!676423))

(declare-fun b!2286370 () Bool)

(declare-fun e!1464882 () Bool)

(declare-fun inv!16 (TokenValue!4513) Bool)

(assert (=> b!2286370 (= e!1464882 (inv!16 (value!137823 (h!32614 tokens!456))))))

(declare-fun b!2286371 () Bool)

(declare-fun res!977541 () Bool)

(declare-fun e!1464881 () Bool)

(assert (=> b!2286371 (=> res!977541 e!1464881)))

(assert (=> b!2286371 (= res!977541 (not ((_ is IntegerValue!13541) (value!137823 (h!32614 tokens!456)))))))

(declare-fun e!1464880 () Bool)

(assert (=> b!2286371 (= e!1464880 e!1464881)))

(declare-fun b!2286372 () Bool)

(assert (=> b!2286372 (= e!1464882 e!1464880)))

(declare-fun c!362650 () Bool)

(assert (=> b!2286372 (= c!362650 ((_ is IntegerValue!13540) (value!137823 (h!32614 tokens!456))))))

(declare-fun b!2286373 () Bool)

(declare-fun inv!17 (TokenValue!4513) Bool)

(assert (=> b!2286373 (= e!1464880 (inv!17 (value!137823 (h!32614 tokens!456))))))

(declare-fun d!676425 () Bool)

(declare-fun c!362649 () Bool)

(assert (=> d!676425 (= c!362649 ((_ is IntegerValue!13539) (value!137823 (h!32614 tokens!456))))))

(assert (=> d!676425 (= (inv!21 (value!137823 (h!32614 tokens!456))) e!1464882)))

(declare-fun b!2286374 () Bool)

(declare-fun inv!15 (TokenValue!4513) Bool)

(assert (=> b!2286374 (= e!1464881 (inv!15 (value!137823 (h!32614 tokens!456))))))

(assert (= (and d!676425 c!362649) b!2286370))

(assert (= (and d!676425 (not c!362649)) b!2286372))

(assert (= (and b!2286372 c!362650) b!2286373))

(assert (= (and b!2286372 (not c!362650)) b!2286371))

(assert (= (and b!2286371 (not res!977541)) b!2286374))

(declare-fun m!2714105 () Bool)

(assert (=> b!2286370 m!2714105))

(declare-fun m!2714107 () Bool)

(assert (=> b!2286373 m!2714107))

(declare-fun m!2714109 () Bool)

(assert (=> b!2286374 m!2714109))

(assert (=> b!2285901 d!676425))

(declare-fun d!676427 () Bool)

(assert (=> d!676427 (= (inv!36800 (tag!4841 (rule!6679 (h!32614 tokens!456)))) (= (mod (str.len (value!137822 (tag!4841 (rule!6679 (h!32614 tokens!456))))) 2) 0))))

(assert (=> b!2285912 d!676427))

(declare-fun d!676429 () Bool)

(declare-fun res!977542 () Bool)

(declare-fun e!1464883 () Bool)

(assert (=> d!676429 (=> (not res!977542) (not e!1464883))))

(assert (=> d!676429 (= res!977542 (semiInverseModEq!1760 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))))))

(assert (=> d!676429 (= (inv!36803 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) e!1464883)))

(declare-fun b!2286375 () Bool)

(assert (=> b!2286375 (= e!1464883 (equivClasses!1679 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))))))

(assert (= (and d!676429 res!977542) b!2286375))

(declare-fun m!2714111 () Bool)

(assert (=> d!676429 m!2714111))

(declare-fun m!2714113 () Bool)

(assert (=> b!2286375 m!2714113))

(assert (=> b!2285912 d!676429))

(declare-fun d!676431 () Bool)

(assert (=> d!676431 (= (isEmpty!15476 tokens!456) ((_ is Nil!27213) tokens!456))))

(assert (=> b!2285880 d!676431))

(declare-fun b!2286389 () Bool)

(declare-fun b_free!68549 () Bool)

(declare-fun b_next!69253 () Bool)

(assert (=> b!2286389 (= b_free!68549 (not b_next!69253))))

(declare-fun t!204117 () Bool)

(declare-fun tb!136063 () Bool)

(assert (=> (and b!2286389 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toValue!6137 (transformation!4351 r!2363))) t!204117) tb!136063))

(declare-fun result!165916 () Bool)

(assert (= result!165916 result!165856))

(assert (=> d!676349 t!204117))

(assert (=> d!676351 t!204117))

(declare-fun tp!724764 () Bool)

(declare-fun b_and!181089 () Bool)

(assert (=> b!2286389 (= tp!724764 (and (=> t!204117 result!165916) b_and!181089))))

(declare-fun b_free!68551 () Bool)

(declare-fun b_next!69255 () Bool)

(assert (=> b!2286389 (= b_free!68551 (not b_next!69255))))

(declare-fun t!204119 () Bool)

(declare-fun tb!136065 () Bool)

(assert (=> (and b!2286389 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204119) tb!136065))

(declare-fun result!165918 () Bool)

(assert (= result!165918 result!165828))

(assert (=> b!2285934 t!204119))

(declare-fun t!204121 () Bool)

(declare-fun tb!136067 () Bool)

(assert (=> (and b!2286389 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204121) tb!136067))

(declare-fun result!165920 () Bool)

(assert (= result!165920 result!165848))

(assert (=> d!676327 t!204121))

(assert (=> d!676341 t!204119))

(declare-fun t!204123 () Bool)

(declare-fun tb!136069 () Bool)

(assert (=> (and b!2286389 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 r!2363))) t!204123) tb!136069))

(declare-fun result!165922 () Bool)

(assert (= result!165922 result!165906))

(assert (=> d!676351 t!204123))

(declare-fun tp!724766 () Bool)

(declare-fun b_and!181091 () Bool)

(assert (=> b!2286389 (= tp!724766 (and (=> t!204119 result!165918) (=> t!204121 result!165920) (=> t!204123 result!165922) b_and!181091))))

(declare-fun e!1464899 () Bool)

(declare-fun e!1464897 () Bool)

(declare-fun tp!724765 () Bool)

(declare-fun b!2286386 () Bool)

(assert (=> b!2286386 (= e!1464899 (and (inv!36804 (h!32614 (t!204033 tokens!456))) e!1464897 tp!724765))))

(declare-fun e!1464896 () Bool)

(declare-fun b!2286388 () Bool)

(declare-fun e!1464898 () Bool)

(declare-fun tp!724763 () Bool)

(assert (=> b!2286388 (= e!1464896 (and tp!724763 (inv!36800 (tag!4841 (rule!6679 (h!32614 (t!204033 tokens!456))))) (inv!36803 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) e!1464898))))

(assert (=> b!2286389 (= e!1464898 (and tp!724764 tp!724766))))

(declare-fun tp!724767 () Bool)

(declare-fun b!2286387 () Bool)

(assert (=> b!2286387 (= e!1464897 (and (inv!21 (value!137823 (h!32614 (t!204033 tokens!456)))) e!1464896 tp!724767))))

(assert (=> b!2285890 (= tp!724673 e!1464899)))

(assert (= b!2286388 b!2286389))

(assert (= b!2286387 b!2286388))

(assert (= b!2286386 b!2286387))

(assert (= (and b!2285890 ((_ is Cons!27213) (t!204033 tokens!456))) b!2286386))

(declare-fun m!2714115 () Bool)

(assert (=> b!2286386 m!2714115))

(declare-fun m!2714117 () Bool)

(assert (=> b!2286388 m!2714117))

(declare-fun m!2714119 () Bool)

(assert (=> b!2286388 m!2714119))

(declare-fun m!2714121 () Bool)

(assert (=> b!2286387 m!2714121))

(declare-fun b!2286400 () Bool)

(declare-fun b_free!68553 () Bool)

(declare-fun b_next!69257 () Bool)

(assert (=> b!2286400 (= b_free!68553 (not b_next!69257))))

(declare-fun t!204125 () Bool)

(declare-fun tb!136071 () Bool)

(assert (=> (and b!2286400 (= (toValue!6137 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toValue!6137 (transformation!4351 r!2363))) t!204125) tb!136071))

(declare-fun result!165926 () Bool)

(assert (= result!165926 result!165856))

(assert (=> d!676349 t!204125))

(assert (=> d!676351 t!204125))

(declare-fun tp!724776 () Bool)

(declare-fun b_and!181093 () Bool)

(assert (=> b!2286400 (= tp!724776 (and (=> t!204125 result!165926) b_and!181093))))

(declare-fun b_free!68555 () Bool)

(declare-fun b_next!69259 () Bool)

(assert (=> b!2286400 (= b_free!68555 (not b_next!69259))))

(declare-fun tb!136073 () Bool)

(declare-fun t!204127 () Bool)

(assert (=> (and b!2286400 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204127) tb!136073))

(declare-fun result!165928 () Bool)

(assert (= result!165928 result!165828))

(assert (=> b!2285934 t!204127))

(declare-fun t!204129 () Bool)

(declare-fun tb!136075 () Bool)

(assert (=> (and b!2286400 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204129) tb!136075))

(declare-fun result!165930 () Bool)

(assert (= result!165930 result!165848))

(assert (=> d!676327 t!204129))

(assert (=> d!676341 t!204127))

(declare-fun tb!136077 () Bool)

(declare-fun t!204131 () Bool)

(assert (=> (and b!2286400 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 r!2363))) t!204131) tb!136077))

(declare-fun result!165932 () Bool)

(assert (= result!165932 result!165906))

(assert (=> d!676351 t!204131))

(declare-fun tp!724779 () Bool)

(declare-fun b_and!181095 () Bool)

(assert (=> b!2286400 (= tp!724779 (and (=> t!204127 result!165928) (=> t!204129 result!165930) (=> t!204131 result!165932) b_and!181095))))

(declare-fun e!1464910 () Bool)

(assert (=> b!2286400 (= e!1464910 (and tp!724776 tp!724779))))

(declare-fun tp!724778 () Bool)

(declare-fun e!1464911 () Bool)

(declare-fun b!2286399 () Bool)

(assert (=> b!2286399 (= e!1464911 (and tp!724778 (inv!36800 (tag!4841 (h!32615 (t!204034 rules!1750)))) (inv!36803 (transformation!4351 (h!32615 (t!204034 rules!1750)))) e!1464910))))

(declare-fun b!2286398 () Bool)

(declare-fun e!1464912 () Bool)

(declare-fun tp!724777 () Bool)

(assert (=> b!2286398 (= e!1464912 (and e!1464911 tp!724777))))

(assert (=> b!2285889 (= tp!724669 e!1464912)))

(assert (= b!2286399 b!2286400))

(assert (= b!2286398 b!2286399))

(assert (= (and b!2285889 ((_ is Cons!27214) (t!204034 rules!1750))) b!2286398))

(declare-fun m!2714123 () Bool)

(assert (=> b!2286399 m!2714123))

(declare-fun m!2714125 () Bool)

(assert (=> b!2286399 m!2714125))

(declare-fun b!2286405 () Bool)

(declare-fun e!1464916 () Bool)

(declare-fun tp!724782 () Bool)

(assert (=> b!2286405 (= e!1464916 (and tp_is_empty!10619 tp!724782))))

(assert (=> b!2285899 (= tp!724667 e!1464916)))

(assert (= (and b!2285899 ((_ is Cons!27212) (t!204032 otherP!12))) b!2286405))

(declare-fun b!2286406 () Bool)

(declare-fun e!1464917 () Bool)

(declare-fun tp!724783 () Bool)

(assert (=> b!2286406 (= e!1464917 (and tp_is_empty!10619 tp!724783))))

(assert (=> b!2285888 (= tp!724662 e!1464917)))

(assert (= (and b!2285888 ((_ is Cons!27212) (t!204032 input!1722))) b!2286406))

(declare-fun b!2286418 () Bool)

(declare-fun e!1464920 () Bool)

(declare-fun tp!724794 () Bool)

(declare-fun tp!724796 () Bool)

(assert (=> b!2286418 (= e!1464920 (and tp!724794 tp!724796))))

(declare-fun b!2286420 () Bool)

(declare-fun tp!724798 () Bool)

(declare-fun tp!724795 () Bool)

(assert (=> b!2286420 (= e!1464920 (and tp!724798 tp!724795))))

(assert (=> b!2285898 (= tp!724672 e!1464920)))

(declare-fun b!2286417 () Bool)

(assert (=> b!2286417 (= e!1464920 tp_is_empty!10619)))

(declare-fun b!2286419 () Bool)

(declare-fun tp!724797 () Bool)

(assert (=> b!2286419 (= e!1464920 tp!724797)))

(assert (= (and b!2285898 ((_ is ElementMatch!6699) (regex!4351 otherR!12))) b!2286417))

(assert (= (and b!2285898 ((_ is Concat!11213) (regex!4351 otherR!12))) b!2286418))

(assert (= (and b!2285898 ((_ is Star!6699) (regex!4351 otherR!12))) b!2286419))

(assert (= (and b!2285898 ((_ is Union!6699) (regex!4351 otherR!12))) b!2286420))

(declare-fun b!2286422 () Bool)

(declare-fun e!1464921 () Bool)

(declare-fun tp!724799 () Bool)

(declare-fun tp!724801 () Bool)

(assert (=> b!2286422 (= e!1464921 (and tp!724799 tp!724801))))

(declare-fun b!2286424 () Bool)

(declare-fun tp!724803 () Bool)

(declare-fun tp!724800 () Bool)

(assert (=> b!2286424 (= e!1464921 (and tp!724803 tp!724800))))

(assert (=> b!2285905 (= tp!724675 e!1464921)))

(declare-fun b!2286421 () Bool)

(assert (=> b!2286421 (= e!1464921 tp_is_empty!10619)))

(declare-fun b!2286423 () Bool)

(declare-fun tp!724802 () Bool)

(assert (=> b!2286423 (= e!1464921 tp!724802)))

(assert (= (and b!2285905 ((_ is ElementMatch!6699) (regex!4351 (h!32615 rules!1750)))) b!2286421))

(assert (= (and b!2285905 ((_ is Concat!11213) (regex!4351 (h!32615 rules!1750)))) b!2286422))

(assert (= (and b!2285905 ((_ is Star!6699) (regex!4351 (h!32615 rules!1750)))) b!2286423))

(assert (= (and b!2285905 ((_ is Union!6699) (regex!4351 (h!32615 rules!1750)))) b!2286424))

(declare-fun b!2286426 () Bool)

(declare-fun e!1464922 () Bool)

(declare-fun tp!724804 () Bool)

(declare-fun tp!724806 () Bool)

(assert (=> b!2286426 (= e!1464922 (and tp!724804 tp!724806))))

(declare-fun b!2286428 () Bool)

(declare-fun tp!724808 () Bool)

(declare-fun tp!724805 () Bool)

(assert (=> b!2286428 (= e!1464922 (and tp!724808 tp!724805))))

(assert (=> b!2285884 (= tp!724678 e!1464922)))

(declare-fun b!2286425 () Bool)

(assert (=> b!2286425 (= e!1464922 tp_is_empty!10619)))

(declare-fun b!2286427 () Bool)

(declare-fun tp!724807 () Bool)

(assert (=> b!2286427 (= e!1464922 tp!724807)))

(assert (= (and b!2285884 ((_ is ElementMatch!6699) (regex!4351 r!2363))) b!2286425))

(assert (= (and b!2285884 ((_ is Concat!11213) (regex!4351 r!2363))) b!2286426))

(assert (= (and b!2285884 ((_ is Star!6699) (regex!4351 r!2363))) b!2286427))

(assert (= (and b!2285884 ((_ is Union!6699) (regex!4351 r!2363))) b!2286428))

(declare-fun b!2286429 () Bool)

(declare-fun e!1464923 () Bool)

(declare-fun tp!724809 () Bool)

(assert (=> b!2286429 (= e!1464923 (and tp_is_empty!10619 tp!724809))))

(assert (=> b!2285881 (= tp!724670 e!1464923)))

(assert (= (and b!2285881 ((_ is Cons!27212) (t!204032 suffix!886))) b!2286429))

(declare-fun b!2286430 () Bool)

(declare-fun e!1464924 () Bool)

(declare-fun tp!724810 () Bool)

(assert (=> b!2286430 (= e!1464924 (and tp_is_empty!10619 tp!724810))))

(assert (=> b!2285901 (= tp!724671 e!1464924)))

(assert (= (and b!2285901 ((_ is Cons!27212) (originalCharacters!5121 (h!32614 tokens!456)))) b!2286430))

(declare-fun b!2286432 () Bool)

(declare-fun e!1464925 () Bool)

(declare-fun tp!724811 () Bool)

(declare-fun tp!724813 () Bool)

(assert (=> b!2286432 (= e!1464925 (and tp!724811 tp!724813))))

(declare-fun b!2286434 () Bool)

(declare-fun tp!724815 () Bool)

(declare-fun tp!724812 () Bool)

(assert (=> b!2286434 (= e!1464925 (and tp!724815 tp!724812))))

(assert (=> b!2285912 (= tp!724663 e!1464925)))

(declare-fun b!2286431 () Bool)

(assert (=> b!2286431 (= e!1464925 tp_is_empty!10619)))

(declare-fun b!2286433 () Bool)

(declare-fun tp!724814 () Bool)

(assert (=> b!2286433 (= e!1464925 tp!724814)))

(assert (= (and b!2285912 ((_ is ElementMatch!6699) (regex!4351 (rule!6679 (h!32614 tokens!456))))) b!2286431))

(assert (= (and b!2285912 ((_ is Concat!11213) (regex!4351 (rule!6679 (h!32614 tokens!456))))) b!2286432))

(assert (= (and b!2285912 ((_ is Star!6699) (regex!4351 (rule!6679 (h!32614 tokens!456))))) b!2286433))

(assert (= (and b!2285912 ((_ is Union!6699) (regex!4351 (rule!6679 (h!32614 tokens!456))))) b!2286434))

(declare-fun b_lambda!72799 () Bool)

(assert (= b_lambda!72777 (or (and b!2285891 b_free!68537 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2285910 b_free!68525 (= (toValue!6137 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2286389 b_free!68549 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2286400 b_free!68553 (= (toValue!6137 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2285894 b_free!68533 (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 r!2363)))) (and b!2285886 b_free!68529) b_lambda!72799)))

(declare-fun b_lambda!72801 () Bool)

(assert (= b_lambda!72797 (or (and b!2285891 b_free!68537 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2285910 b_free!68525 (= (toValue!6137 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2286389 b_free!68549 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2286400 b_free!68553 (= (toValue!6137 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toValue!6137 (transformation!4351 r!2363)))) (and b!2285894 b_free!68533 (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 r!2363)))) (and b!2285886 b_free!68529) b_lambda!72801)))

(declare-fun b_lambda!72803 () Bool)

(assert (= b_lambda!72767 (or (and b!2286389 b_free!68551 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285910 b_free!68527 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2286400 b_free!68555 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285894 b_free!68535 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285886 b_free!68531 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285891 b_free!68539) b_lambda!72803)))

(declare-fun b_lambda!72805 () Bool)

(assert (= b_lambda!72775 (or (and b!2286389 b_free!68551 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285910 b_free!68527 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2286400 b_free!68555 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285894 b_free!68535 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285886 b_free!68531 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (and b!2285891 b_free!68539) b_lambda!72805)))

(declare-fun b_lambda!72807 () Bool)

(assert (= b_lambda!72795 (or (and b!2286389 b_free!68551 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 r!2363)))) (and b!2285891 b_free!68539 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 r!2363)))) (and b!2285910 b_free!68527 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 r!2363)))) (and b!2286400 b_free!68555 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 r!2363)))) (and b!2285886 b_free!68531) (and b!2285894 b_free!68535 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 r!2363)))) b_lambda!72807)))

(check-sat (not b!2285987) tp_is_empty!10619 (not d!676419) (not d!676429) (not b_lambda!72803) (not b!2286051) (not b!2285946) (not b!2286375) (not b_next!69255) (not b_lambda!72799) (not b_next!69243) (not d!676273) (not b!2285934) (not b!2286370) (not b!2285986) (not b_lambda!72801) (not d!676335) (not d!676345) (not b!2286418) (not d!676351) (not b_next!69235) (not b!2286128) (not d!676417) b_and!181091 (not d!676295) (not d!676325) (not b!2286432) b_and!181089 (not b!2286095) (not b_next!69241) (not b!2286406) (not b!2286126) (not bm!136529) (not b!2286138) (not d!676423) (not b!2286130) (not b!2285993) (not d!676285) (not b!2285991) (not b!2286434) (not d!676291) (not d!676277) b_and!181083 (not b!2286091) b_and!181081 (not d!676267) b_and!181079 (not b!2286388) (not d!676421) (not tb!136015) (not b!2286109) (not b_next!69253) (not d!676261) (not b!2285988) (not b!2286423) (not d!676331) (not b!2285974) (not d!676279) (not d!676281) (not d!676257) (not b!2286419) (not b_next!69257) (not b!2286373) (not b_next!69233) (not b!2286429) b_and!181077 (not b!2286426) (not b!2286049) (not b!2286139) (not b_next!69231) (not d!676265) (not bm!136526) (not b!2286084) (not b_next!69237) (not b!2286055) (not b!2286424) (not b!2286422) (not b!2286050) (not b!2285935) b_and!181093 (not b!2286135) (not b_next!69239) (not d!676333) (not b!2286420) (not b!2286052) (not d!676329) (not b!2285961) (not b!2286086) (not d!676323) (not b!2286097) (not b!2286374) (not b!2286386) (not b_next!69229) (not b!2286096) (not d!676271) (not b!2286398) b_and!181087 (not b!2286358) b_and!181073 b_and!181085 (not b!2286405) (not b!2286098) (not b!2285957) (not b_lambda!72773) (not d!676327) (not b!2286433) (not d!676259) (not b_lambda!72807) (not b!2286427) (not tb!136055) (not b!2285989) (not b!2286116) b_and!181075 (not b!2286428) (not b!2286399) (not tb!136007) (not d!676263) (not b!2286430) (not b!2286387) (not b!2286053) (not b!2286047) (not tb!135991) (not b!2286054) (not b!2286357) (not b!2285940) (not b!2286127) (not d!676275) b_and!181095 (not b!2286108) (not b!2286140) (not b!2285967) (not b!2285992) (not b_lambda!72805) (not b_next!69259) (not d!676341) (not d!676299) (not b!2285971))
(check-sat (not b_next!69255) (not b_next!69243) (not b_next!69235) (not b_next!69241) b_and!181083 (not b_next!69253) (not b_next!69231) (not b_next!69237) (not b_next!69229) b_and!181085 b_and!181075 b_and!181095 (not b_next!69259) b_and!181091 b_and!181089 b_and!181081 b_and!181079 (not b_next!69257) b_and!181077 (not b_next!69233) (not b_next!69239) b_and!181093 b_and!181073 b_and!181087)
(get-model)

(declare-fun d!676459 () Bool)

(assert (=> d!676459 (= (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))) (h!32613 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))

(assert (=> b!2286095 d!676459))

(declare-fun d!676461 () Bool)

(declare-fun c!362673 () Bool)

(assert (=> d!676461 (= c!362673 ((_ is Empty!8850) (c!362568 (charsOf!2739 (head!4970 tokens!456)))))))

(declare-fun e!1464956 () List!27306)

(assert (=> d!676461 (= (list!10637 (c!362568 (charsOf!2739 (head!4970 tokens!456)))) e!1464956)))

(declare-fun b!2286497 () Bool)

(declare-fun e!1464957 () List!27306)

(declare-fun list!10638 (IArray!17705) List!27306)

(assert (=> b!2286497 (= e!1464957 (list!10638 (xs!11792 (c!362568 (charsOf!2739 (head!4970 tokens!456))))))))

(declare-fun b!2286498 () Bool)

(assert (=> b!2286498 (= e!1464957 (++!6647 (list!10637 (left!20630 (c!362568 (charsOf!2739 (head!4970 tokens!456))))) (list!10637 (right!20960 (c!362568 (charsOf!2739 (head!4970 tokens!456)))))))))

(declare-fun b!2286495 () Bool)

(assert (=> b!2286495 (= e!1464956 Nil!27212)))

(declare-fun b!2286496 () Bool)

(assert (=> b!2286496 (= e!1464956 e!1464957)))

(declare-fun c!362674 () Bool)

(assert (=> b!2286496 (= c!362674 ((_ is Leaf!13011) (c!362568 (charsOf!2739 (head!4970 tokens!456)))))))

(assert (= (and d!676461 c!362673) b!2286495))

(assert (= (and d!676461 (not c!362673)) b!2286496))

(assert (= (and b!2286496 c!362674) b!2286497))

(assert (= (and b!2286496 (not c!362674)) b!2286498))

(declare-fun m!2714181 () Bool)

(assert (=> b!2286497 m!2714181))

(declare-fun m!2714183 () Bool)

(assert (=> b!2286498 m!2714183))

(declare-fun m!2714185 () Bool)

(assert (=> b!2286498 m!2714185))

(assert (=> b!2286498 m!2714183))

(assert (=> b!2286498 m!2714185))

(declare-fun m!2714189 () Bool)

(assert (=> b!2286498 m!2714189))

(assert (=> d!676325 d!676461))

(declare-fun b!2286503 () Bool)

(declare-fun e!1464959 () Bool)

(declare-fun lt!848390 () List!27306)

(assert (=> b!2286503 (= e!1464959 (or (not (= (_2!16003 lt!848240) Nil!27212)) (= lt!848390 (t!204032 lt!848247))))))

(declare-fun b!2286500 () Bool)

(declare-fun e!1464960 () List!27306)

(assert (=> b!2286500 (= e!1464960 (_2!16003 lt!848240))))

(declare-fun b!2286502 () Bool)

(declare-fun res!977555 () Bool)

(assert (=> b!2286502 (=> (not res!977555) (not e!1464959))))

(assert (=> b!2286502 (= res!977555 (= (size!21410 lt!848390) (+ (size!21410 (t!204032 lt!848247)) (size!21410 (_2!16003 lt!848240)))))))

(declare-fun d!676467 () Bool)

(assert (=> d!676467 e!1464959))

(declare-fun res!977554 () Bool)

(assert (=> d!676467 (=> (not res!977554) (not e!1464959))))

(assert (=> d!676467 (= res!977554 (= (content!3647 lt!848390) ((_ map or) (content!3647 (t!204032 lt!848247)) (content!3647 (_2!16003 lt!848240)))))))

(assert (=> d!676467 (= lt!848390 e!1464960)))

(declare-fun c!362675 () Bool)

(assert (=> d!676467 (= c!362675 ((_ is Nil!27212) (t!204032 lt!848247)))))

(assert (=> d!676467 (= (++!6647 (t!204032 lt!848247) (_2!16003 lt!848240)) lt!848390)))

(declare-fun b!2286501 () Bool)

(assert (=> b!2286501 (= e!1464960 (Cons!27212 (h!32613 (t!204032 lt!848247)) (++!6647 (t!204032 (t!204032 lt!848247)) (_2!16003 lt!848240))))))

(assert (= (and d!676467 c!362675) b!2286500))

(assert (= (and d!676467 (not c!362675)) b!2286501))

(assert (= (and d!676467 res!977554) b!2286502))

(assert (= (and b!2286502 res!977555) b!2286503))

(declare-fun m!2714195 () Bool)

(assert (=> b!2286502 m!2714195))

(assert (=> b!2286502 m!2713859))

(assert (=> b!2286502 m!2713843))

(declare-fun m!2714197 () Bool)

(assert (=> d!676467 m!2714197))

(declare-fun m!2714199 () Bool)

(assert (=> d!676467 m!2714199))

(assert (=> d!676467 m!2713849))

(declare-fun m!2714201 () Bool)

(assert (=> b!2286501 m!2714201))

(assert (=> b!2286108 d!676467))

(declare-fun d!676471 () Bool)

(declare-fun nullableFct!448 (Regex!6699) Bool)

(assert (=> d!676471 (= (nullable!1858 (regex!4351 otherR!12)) (nullableFct!448 (regex!4351 otherR!12)))))

(declare-fun bs!456827 () Bool)

(assert (= bs!456827 d!676471))

(declare-fun m!2714205 () Bool)

(assert (=> bs!456827 m!2714205))

(assert (=> b!2285967 d!676471))

(declare-fun b!2286564 () Bool)

(declare-fun res!977596 () Bool)

(declare-fun e!1464999 () Bool)

(assert (=> b!2286564 (=> (not res!977596) (not e!1464999))))

(declare-fun lt!848416 () Option!5339)

(assert (=> b!2286564 (= res!977596 (= (++!6647 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848416)))) (_2!16003 (get!8206 lt!848416))) input!1722))))

(declare-fun b!2286565 () Bool)

(declare-fun res!977594 () Bool)

(assert (=> b!2286565 (=> (not res!977594) (not e!1464999))))

(assert (=> b!2286565 (= res!977594 (= (rule!6679 (_1!16003 (get!8206 lt!848416))) (h!32615 rules!1750)))))

(declare-fun b!2286566 () Bool)

(assert (=> b!2286566 (= e!1464999 (= (size!21408 (_1!16003 (get!8206 lt!848416))) (size!21410 (originalCharacters!5121 (_1!16003 (get!8206 lt!848416))))))))

(declare-fun b!2286567 () Bool)

(declare-fun e!1465002 () Bool)

(declare-datatypes ((tuple2!26992 0))(
  ( (tuple2!26993 (_1!16006 List!27306) (_2!16006 List!27306)) )
))
(declare-fun findLongestMatchInner!714 (Regex!6699 List!27306 Int List!27306 List!27306 Int) tuple2!26992)

(assert (=> b!2286567 (= e!1465002 (matchR!2956 (regex!4351 (h!32615 rules!1750)) (_1!16006 (findLongestMatchInner!714 (regex!4351 (h!32615 rules!1750)) Nil!27212 (size!21410 Nil!27212) input!1722 input!1722 (size!21410 input!1722)))))))

(declare-fun b!2286568 () Bool)

(declare-fun res!977598 () Bool)

(assert (=> b!2286568 (=> (not res!977598) (not e!1464999))))

(assert (=> b!2286568 (= res!977598 (= (value!137823 (_1!16003 (get!8206 lt!848416))) (apply!6623 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848416)))) (seqFromList!3055 (originalCharacters!5121 (_1!16003 (get!8206 lt!848416)))))))))

(declare-fun b!2286569 () Bool)

(declare-fun e!1465001 () Bool)

(assert (=> b!2286569 (= e!1465001 e!1464999)))

(declare-fun res!977595 () Bool)

(assert (=> b!2286569 (=> (not res!977595) (not e!1464999))))

(assert (=> b!2286569 (= res!977595 (matchR!2956 (regex!4351 (h!32615 rules!1750)) (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848416))))))))

(declare-fun b!2286570 () Bool)

(declare-fun e!1465000 () Option!5339)

(assert (=> b!2286570 (= e!1465000 None!5338)))

(declare-fun d!676479 () Bool)

(assert (=> d!676479 e!1465001))

(declare-fun res!977593 () Bool)

(assert (=> d!676479 (=> res!977593 e!1465001)))

(assert (=> d!676479 (= res!977593 (isEmpty!15482 lt!848416))))

(assert (=> d!676479 (= lt!848416 e!1465000)))

(declare-fun c!362687 () Bool)

(declare-fun lt!848417 () tuple2!26992)

(assert (=> d!676479 (= c!362687 (isEmpty!15477 (_1!16006 lt!848417)))))

(declare-fun findLongestMatch!643 (Regex!6699 List!27306) tuple2!26992)

(assert (=> d!676479 (= lt!848417 (findLongestMatch!643 (regex!4351 (h!32615 rules!1750)) input!1722))))

(assert (=> d!676479 (ruleValid!1441 thiss!16613 (h!32615 rules!1750))))

(assert (=> d!676479 (= (maxPrefixOneRule!1382 thiss!16613 (h!32615 rules!1750) input!1722) lt!848416)))

(declare-fun b!2286571 () Bool)

(assert (=> b!2286571 (= e!1465000 (Some!5338 (tuple2!26987 (Token!8181 (apply!6623 (transformation!4351 (h!32615 rules!1750)) (seqFromList!3055 (_1!16006 lt!848417))) (h!32615 rules!1750) (size!21409 (seqFromList!3055 (_1!16006 lt!848417))) (_1!16006 lt!848417)) (_2!16006 lt!848417))))))

(declare-fun lt!848413 () Unit!40112)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!687 (Regex!6699 List!27306) Unit!40112)

(assert (=> b!2286571 (= lt!848413 (longestMatchIsAcceptedByMatchOrIsEmpty!687 (regex!4351 (h!32615 rules!1750)) input!1722))))

(declare-fun res!977592 () Bool)

(assert (=> b!2286571 (= res!977592 (isEmpty!15477 (_1!16006 (findLongestMatchInner!714 (regex!4351 (h!32615 rules!1750)) Nil!27212 (size!21410 Nil!27212) input!1722 input!1722 (size!21410 input!1722)))))))

(assert (=> b!2286571 (=> res!977592 e!1465002)))

(assert (=> b!2286571 e!1465002))

(declare-fun lt!848414 () Unit!40112)

(assert (=> b!2286571 (= lt!848414 lt!848413)))

(declare-fun lt!848415 () Unit!40112)

(assert (=> b!2286571 (= lt!848415 (lemmaSemiInverse!1054 (transformation!4351 (h!32615 rules!1750)) (seqFromList!3055 (_1!16006 lt!848417))))))

(declare-fun b!2286572 () Bool)

(declare-fun res!977597 () Bool)

(assert (=> b!2286572 (=> (not res!977597) (not e!1464999))))

(assert (=> b!2286572 (= res!977597 (< (size!21410 (_2!16003 (get!8206 lt!848416))) (size!21410 input!1722)))))

(assert (= (and d!676479 c!362687) b!2286570))

(assert (= (and d!676479 (not c!362687)) b!2286571))

(assert (= (and b!2286571 (not res!977592)) b!2286567))

(assert (= (and d!676479 (not res!977593)) b!2286569))

(assert (= (and b!2286569 res!977595) b!2286564))

(assert (= (and b!2286564 res!977596) b!2286572))

(assert (= (and b!2286572 res!977597) b!2286565))

(assert (= (and b!2286565 res!977594) b!2286568))

(assert (= (and b!2286568 res!977598) b!2286566))

(declare-fun m!2714321 () Bool)

(assert (=> b!2286569 m!2714321))

(declare-fun m!2714323 () Bool)

(assert (=> b!2286569 m!2714323))

(assert (=> b!2286569 m!2714323))

(declare-fun m!2714325 () Bool)

(assert (=> b!2286569 m!2714325))

(assert (=> b!2286569 m!2714325))

(declare-fun m!2714327 () Bool)

(assert (=> b!2286569 m!2714327))

(assert (=> b!2286572 m!2714321))

(declare-fun m!2714329 () Bool)

(assert (=> b!2286572 m!2714329))

(assert (=> b!2286572 m!2713779))

(declare-fun m!2714331 () Bool)

(assert (=> b!2286571 m!2714331))

(assert (=> b!2286571 m!2714331))

(assert (=> b!2286571 m!2713779))

(declare-fun m!2714333 () Bool)

(assert (=> b!2286571 m!2714333))

(declare-fun m!2714335 () Bool)

(assert (=> b!2286571 m!2714335))

(declare-fun m!2714337 () Bool)

(assert (=> b!2286571 m!2714337))

(assert (=> b!2286571 m!2714335))

(declare-fun m!2714339 () Bool)

(assert (=> b!2286571 m!2714339))

(assert (=> b!2286571 m!2714335))

(declare-fun m!2714341 () Bool)

(assert (=> b!2286571 m!2714341))

(declare-fun m!2714343 () Bool)

(assert (=> b!2286571 m!2714343))

(assert (=> b!2286571 m!2714335))

(declare-fun m!2714345 () Bool)

(assert (=> b!2286571 m!2714345))

(assert (=> b!2286571 m!2713779))

(assert (=> b!2286567 m!2714331))

(assert (=> b!2286567 m!2713779))

(assert (=> b!2286567 m!2714331))

(assert (=> b!2286567 m!2713779))

(assert (=> b!2286567 m!2714333))

(declare-fun m!2714347 () Bool)

(assert (=> b!2286567 m!2714347))

(assert (=> b!2286565 m!2714321))

(declare-fun m!2714349 () Bool)

(assert (=> d!676479 m!2714349))

(declare-fun m!2714351 () Bool)

(assert (=> d!676479 m!2714351))

(declare-fun m!2714353 () Bool)

(assert (=> d!676479 m!2714353))

(declare-fun m!2714355 () Bool)

(assert (=> d!676479 m!2714355))

(assert (=> b!2286566 m!2714321))

(declare-fun m!2714357 () Bool)

(assert (=> b!2286566 m!2714357))

(assert (=> b!2286568 m!2714321))

(declare-fun m!2714359 () Bool)

(assert (=> b!2286568 m!2714359))

(assert (=> b!2286568 m!2714359))

(declare-fun m!2714361 () Bool)

(assert (=> b!2286568 m!2714361))

(assert (=> b!2286564 m!2714321))

(assert (=> b!2286564 m!2714323))

(assert (=> b!2286564 m!2714323))

(assert (=> b!2286564 m!2714325))

(assert (=> b!2286564 m!2714325))

(declare-fun m!2714363 () Bool)

(assert (=> b!2286564 m!2714363))

(assert (=> bm!136526 d!676479))

(assert (=> d!676423 d!676421))

(declare-fun d!676549 () Bool)

(assert (=> d!676549 (ruleValid!1441 thiss!16613 r!2363)))

(assert (=> d!676549 true))

(declare-fun _$65!1130 () Unit!40112)

(assert (=> d!676549 (= (choose!13341 thiss!16613 r!2363 rules!1750) _$65!1130)))

(declare-fun bs!456840 () Bool)

(assert (= bs!456840 d!676549))

(assert (=> bs!456840 m!2713585))

(assert (=> d!676423 d!676549))

(assert (=> d!676423 d!676285))

(declare-fun d!676551 () Bool)

(declare-fun lt!848418 () Int)

(assert (=> d!676551 (= lt!848418 (size!21410 (list!10632 (_2!16004 lt!848265))))))

(assert (=> d!676551 (= lt!848418 (size!21414 (c!362568 (_2!16004 lt!848265))))))

(assert (=> d!676551 (= (size!21409 (_2!16004 lt!848265)) lt!848418)))

(declare-fun bs!456841 () Bool)

(assert (= bs!456841 d!676551))

(assert (=> bs!456841 m!2713725))

(assert (=> bs!456841 m!2713725))

(declare-fun m!2714365 () Bool)

(assert (=> bs!456841 m!2714365))

(declare-fun m!2714367 () Bool)

(assert (=> bs!456841 m!2714367))

(assert (=> b!2285989 d!676551))

(declare-fun d!676553 () Bool)

(declare-fun lt!848419 () Int)

(assert (=> d!676553 (= lt!848419 (size!21410 (list!10632 (seqFromList!3055 input!1722))))))

(assert (=> d!676553 (= lt!848419 (size!21414 (c!362568 (seqFromList!3055 input!1722))))))

(assert (=> d!676553 (= (size!21409 (seqFromList!3055 input!1722)) lt!848419)))

(declare-fun bs!456842 () Bool)

(assert (= bs!456842 d!676553))

(assert (=> bs!456842 m!2713577))

(assert (=> bs!456842 m!2713715))

(assert (=> bs!456842 m!2713715))

(declare-fun m!2714369 () Bool)

(assert (=> bs!456842 m!2714369))

(declare-fun m!2714371 () Bool)

(assert (=> bs!456842 m!2714371))

(assert (=> b!2285989 d!676553))

(declare-fun b!2286573 () Bool)

(declare-fun e!1465003 () Bool)

(declare-fun lt!848420 () Option!5339)

(assert (=> b!2286573 (= e!1465003 (contains!4725 (t!204034 rules!1750) (rule!6679 (_1!16003 (get!8206 lt!848420)))))))

(declare-fun b!2286574 () Bool)

(declare-fun e!1465004 () Option!5339)

(declare-fun call!136541 () Option!5339)

(assert (=> b!2286574 (= e!1465004 call!136541)))

(declare-fun b!2286575 () Bool)

(declare-fun res!977600 () Bool)

(assert (=> b!2286575 (=> (not res!977600) (not e!1465003))))

(assert (=> b!2286575 (= res!977600 (= (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848420)))) (originalCharacters!5121 (_1!16003 (get!8206 lt!848420)))))))

(declare-fun b!2286576 () Bool)

(declare-fun res!977601 () Bool)

(assert (=> b!2286576 (=> (not res!977601) (not e!1465003))))

(assert (=> b!2286576 (= res!977601 (< (size!21410 (_2!16003 (get!8206 lt!848420))) (size!21410 input!1722)))))

(declare-fun b!2286577 () Bool)

(declare-fun res!977604 () Bool)

(assert (=> b!2286577 (=> (not res!977604) (not e!1465003))))

(assert (=> b!2286577 (= res!977604 (= (value!137823 (_1!16003 (get!8206 lt!848420))) (apply!6623 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848420)))) (seqFromList!3055 (originalCharacters!5121 (_1!16003 (get!8206 lt!848420)))))))))

(declare-fun b!2286578 () Bool)

(declare-fun lt!848422 () Option!5339)

(declare-fun lt!848424 () Option!5339)

(assert (=> b!2286578 (= e!1465004 (ite (and ((_ is None!5338) lt!848422) ((_ is None!5338) lt!848424)) None!5338 (ite ((_ is None!5338) lt!848424) lt!848422 (ite ((_ is None!5338) lt!848422) lt!848424 (ite (>= (size!21408 (_1!16003 (v!30410 lt!848422))) (size!21408 (_1!16003 (v!30410 lt!848424)))) lt!848422 lt!848424)))))))

(assert (=> b!2286578 (= lt!848422 call!136541)))

(assert (=> b!2286578 (= lt!848424 (maxPrefix!2212 thiss!16613 (t!204034 (t!204034 rules!1750)) input!1722))))

(declare-fun d!676555 () Bool)

(declare-fun e!1465005 () Bool)

(assert (=> d!676555 e!1465005))

(declare-fun res!977605 () Bool)

(assert (=> d!676555 (=> res!977605 e!1465005)))

(assert (=> d!676555 (= res!977605 (isEmpty!15482 lt!848420))))

(assert (=> d!676555 (= lt!848420 e!1465004)))

(declare-fun c!362688 () Bool)

(assert (=> d!676555 (= c!362688 (and ((_ is Cons!27214) (t!204034 rules!1750)) ((_ is Nil!27214) (t!204034 (t!204034 rules!1750)))))))

(declare-fun lt!848423 () Unit!40112)

(declare-fun lt!848421 () Unit!40112)

(assert (=> d!676555 (= lt!848423 lt!848421)))

(assert (=> d!676555 (isPrefix!2341 input!1722 input!1722)))

(assert (=> d!676555 (= lt!848421 (lemmaIsPrefixRefl!1487 input!1722 input!1722))))

(assert (=> d!676555 (rulesValidInductive!1529 thiss!16613 (t!204034 rules!1750))))

(assert (=> d!676555 (= (maxPrefix!2212 thiss!16613 (t!204034 rules!1750) input!1722) lt!848420)))

(declare-fun b!2286579 () Bool)

(assert (=> b!2286579 (= e!1465005 e!1465003)))

(declare-fun res!977603 () Bool)

(assert (=> b!2286579 (=> (not res!977603) (not e!1465003))))

(assert (=> b!2286579 (= res!977603 (isDefined!4224 lt!848420))))

(declare-fun bm!136536 () Bool)

(assert (=> bm!136536 (= call!136541 (maxPrefixOneRule!1382 thiss!16613 (h!32615 (t!204034 rules!1750)) input!1722))))

(declare-fun b!2286580 () Bool)

(declare-fun res!977602 () Bool)

(assert (=> b!2286580 (=> (not res!977602) (not e!1465003))))

(assert (=> b!2286580 (= res!977602 (matchR!2956 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848420)))) (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848420))))))))

(declare-fun b!2286581 () Bool)

(declare-fun res!977599 () Bool)

(assert (=> b!2286581 (=> (not res!977599) (not e!1465003))))

(assert (=> b!2286581 (= res!977599 (= (++!6647 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848420)))) (_2!16003 (get!8206 lt!848420))) input!1722))))

(assert (= (and d!676555 c!362688) b!2286574))

(assert (= (and d!676555 (not c!362688)) b!2286578))

(assert (= (or b!2286574 b!2286578) bm!136536))

(assert (= (and d!676555 (not res!977605)) b!2286579))

(assert (= (and b!2286579 res!977603) b!2286575))

(assert (= (and b!2286575 res!977600) b!2286576))

(assert (= (and b!2286576 res!977601) b!2286581))

(assert (= (and b!2286581 res!977599) b!2286577))

(assert (= (and b!2286577 res!977604) b!2286580))

(assert (= (and b!2286580 res!977602) b!2286573))

(declare-fun m!2714373 () Bool)

(assert (=> b!2286576 m!2714373))

(declare-fun m!2714375 () Bool)

(assert (=> b!2286576 m!2714375))

(assert (=> b!2286576 m!2713779))

(assert (=> b!2286581 m!2714373))

(declare-fun m!2714377 () Bool)

(assert (=> b!2286581 m!2714377))

(assert (=> b!2286581 m!2714377))

(declare-fun m!2714379 () Bool)

(assert (=> b!2286581 m!2714379))

(assert (=> b!2286581 m!2714379))

(declare-fun m!2714381 () Bool)

(assert (=> b!2286581 m!2714381))

(assert (=> b!2286577 m!2714373))

(declare-fun m!2714383 () Bool)

(assert (=> b!2286577 m!2714383))

(assert (=> b!2286577 m!2714383))

(declare-fun m!2714385 () Bool)

(assert (=> b!2286577 m!2714385))

(declare-fun m!2714387 () Bool)

(assert (=> d!676555 m!2714387))

(assert (=> d!676555 m!2713793))

(assert (=> d!676555 m!2713795))

(declare-fun m!2714389 () Bool)

(assert (=> d!676555 m!2714389))

(declare-fun m!2714391 () Bool)

(assert (=> bm!136536 m!2714391))

(declare-fun m!2714393 () Bool)

(assert (=> b!2286578 m!2714393))

(assert (=> b!2286580 m!2714373))

(assert (=> b!2286580 m!2714377))

(assert (=> b!2286580 m!2714377))

(assert (=> b!2286580 m!2714379))

(assert (=> b!2286580 m!2714379))

(declare-fun m!2714395 () Bool)

(assert (=> b!2286580 m!2714395))

(assert (=> b!2286575 m!2714373))

(assert (=> b!2286575 m!2714377))

(assert (=> b!2286575 m!2714377))

(assert (=> b!2286575 m!2714379))

(declare-fun m!2714397 () Bool)

(assert (=> b!2286579 m!2714397))

(assert (=> b!2286573 m!2714373))

(declare-fun m!2714399 () Bool)

(assert (=> b!2286573 m!2714399))

(assert (=> b!2286052 d!676555))

(declare-fun d!676557 () Bool)

(declare-fun charsToBigInt!0 (List!27305 Int) Int)

(assert (=> d!676557 (= (inv!15 (value!137823 (h!32614 tokens!456))) (= (charsToBigInt!0 (text!32040 (value!137823 (h!32614 tokens!456))) 0) (value!137818 (value!137823 (h!32614 tokens!456)))))))

(declare-fun bs!456843 () Bool)

(assert (= bs!456843 d!676557))

(declare-fun m!2714401 () Bool)

(assert (=> bs!456843 m!2714401))

(assert (=> b!2286374 d!676557))

(declare-fun b!2286583 () Bool)

(declare-fun e!1465007 () Int)

(declare-fun e!1465006 () Int)

(assert (=> b!2286583 (= e!1465007 e!1465006)))

(declare-fun c!362690 () Bool)

(assert (=> b!2286583 (= c!362690 (and ((_ is Cons!27214) (t!204034 rules!1750)) (not (= (h!32615 (t!204034 rules!1750)) otherR!12))))))

(declare-fun b!2286584 () Bool)

(assert (=> b!2286584 (= e!1465006 (+ 1 (getIndex!364 (t!204034 (t!204034 rules!1750)) otherR!12)))))

(declare-fun d!676559 () Bool)

(declare-fun lt!848425 () Int)

(assert (=> d!676559 (>= lt!848425 0)))

(assert (=> d!676559 (= lt!848425 e!1465007)))

(declare-fun c!362689 () Bool)

(assert (=> d!676559 (= c!362689 (and ((_ is Cons!27214) (t!204034 rules!1750)) (= (h!32615 (t!204034 rules!1750)) otherR!12)))))

(assert (=> d!676559 (contains!4725 (t!204034 rules!1750) otherR!12)))

(assert (=> d!676559 (= (getIndex!364 (t!204034 rules!1750) otherR!12) lt!848425)))

(declare-fun b!2286585 () Bool)

(assert (=> b!2286585 (= e!1465006 (- 1))))

(declare-fun b!2286582 () Bool)

(assert (=> b!2286582 (= e!1465007 0)))

(assert (= (and d!676559 c!362689) b!2286582))

(assert (= (and d!676559 (not c!362689)) b!2286583))

(assert (= (and b!2286583 c!362690) b!2286584))

(assert (= (and b!2286583 (not c!362690)) b!2286585))

(declare-fun m!2714403 () Bool)

(assert (=> b!2286584 m!2714403))

(assert (=> d!676559 m!2713689))

(assert (=> b!2285961 d!676559))

(declare-fun d!676561 () Bool)

(declare-fun charsToInt!0 (List!27305) (_ BitVec 32))

(assert (=> d!676561 (= (inv!16 (value!137823 (h!32614 tokens!456))) (= (charsToInt!0 (text!32038 (value!137823 (h!32614 tokens!456)))) (value!137814 (value!137823 (h!32614 tokens!456)))))))

(declare-fun bs!456844 () Bool)

(assert (= bs!456844 d!676561))

(declare-fun m!2714405 () Bool)

(assert (=> bs!456844 m!2714405))

(assert (=> b!2286370 d!676561))

(declare-fun d!676563 () Bool)

(declare-fun lt!848426 () Bool)

(assert (=> d!676563 (= lt!848426 (select (content!3646 (t!204034 rules!1750)) r!2363))))

(declare-fun e!1465009 () Bool)

(assert (=> d!676563 (= lt!848426 e!1465009)))

(declare-fun res!977607 () Bool)

(assert (=> d!676563 (=> (not res!977607) (not e!1465009))))

(assert (=> d!676563 (= res!977607 ((_ is Cons!27214) (t!204034 rules!1750)))))

(assert (=> d!676563 (= (contains!4725 (t!204034 rules!1750) r!2363) lt!848426)))

(declare-fun b!2286586 () Bool)

(declare-fun e!1465008 () Bool)

(assert (=> b!2286586 (= e!1465009 e!1465008)))

(declare-fun res!977606 () Bool)

(assert (=> b!2286586 (=> res!977606 e!1465008)))

(assert (=> b!2286586 (= res!977606 (= (h!32615 (t!204034 rules!1750)) r!2363))))

(declare-fun b!2286587 () Bool)

(assert (=> b!2286587 (= e!1465008 (contains!4725 (t!204034 (t!204034 rules!1750)) r!2363))))

(assert (= (and d!676563 res!977607) b!2286586))

(assert (= (and b!2286586 (not res!977606)) b!2286587))

(declare-fun m!2714407 () Bool)

(assert (=> d!676563 m!2714407))

(declare-fun m!2714409 () Bool)

(assert (=> d!676563 m!2714409))

(declare-fun m!2714411 () Bool)

(assert (=> b!2286587 m!2714411))

(assert (=> b!2285991 d!676563))

(declare-fun d!676565 () Bool)

(assert (=> d!676565 (= (isEmpty!15477 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) ((_ is Nil!27212) (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(assert (=> b!2286091 d!676565))

(declare-fun d!676567 () Bool)

(assert (=> d!676567 (= (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456)))) (t!204032 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))

(assert (=> b!2286091 d!676567))

(declare-fun d!676569 () Bool)

(assert (=> d!676569 (= (list!10633 (_1!16004 lt!848265)) (list!10636 (c!362570 (_1!16004 lt!848265))))))

(declare-fun bs!456845 () Bool)

(assert (= bs!456845 d!676569))

(declare-fun m!2714413 () Bool)

(assert (=> bs!456845 m!2714413))

(assert (=> b!2285987 d!676569))

(declare-fun b!2286616 () Bool)

(declare-fun e!1465025 () tuple2!26990)

(declare-fun lt!848444 () Option!5339)

(declare-fun lt!848445 () tuple2!26990)

(assert (=> b!2286616 (= e!1465025 (tuple2!26991 (Cons!27213 (_1!16003 (v!30410 lt!848444)) (_1!16005 lt!848445)) (_2!16005 lt!848445)))))

(assert (=> b!2286616 (= lt!848445 (lexList!1104 thiss!16613 rules!1750 (_2!16003 (v!30410 lt!848444))))))

(declare-fun d!676571 () Bool)

(declare-fun e!1465024 () Bool)

(assert (=> d!676571 e!1465024))

(declare-fun c!362698 () Bool)

(declare-fun lt!848443 () tuple2!26990)

(declare-fun size!21415 (List!27307) Int)

(assert (=> d!676571 (= c!362698 (> (size!21415 (_1!16005 lt!848443)) 0))))

(assert (=> d!676571 (= lt!848443 e!1465025)))

(declare-fun c!362697 () Bool)

(assert (=> d!676571 (= c!362697 ((_ is Some!5338) lt!848444))))

(assert (=> d!676571 (= lt!848444 (maxPrefix!2212 thiss!16613 rules!1750 (list!10632 (seqFromList!3055 input!1722))))))

(assert (=> d!676571 (= (lexList!1104 thiss!16613 rules!1750 (list!10632 (seqFromList!3055 input!1722))) lt!848443)))

(declare-fun b!2286617 () Bool)

(assert (=> b!2286617 (= e!1465025 (tuple2!26991 Nil!27213 (list!10632 (seqFromList!3055 input!1722))))))

(declare-fun b!2286618 () Bool)

(declare-fun e!1465026 () Bool)

(assert (=> b!2286618 (= e!1465026 (not (isEmpty!15476 (_1!16005 lt!848443))))))

(declare-fun b!2286619 () Bool)

(assert (=> b!2286619 (= e!1465024 e!1465026)))

(declare-fun res!977624 () Bool)

(assert (=> b!2286619 (= res!977624 (< (size!21410 (_2!16005 lt!848443)) (size!21410 (list!10632 (seqFromList!3055 input!1722)))))))

(assert (=> b!2286619 (=> (not res!977624) (not e!1465026))))

(declare-fun b!2286620 () Bool)

(assert (=> b!2286620 (= e!1465024 (= (_2!16005 lt!848443) (list!10632 (seqFromList!3055 input!1722))))))

(assert (= (and d!676571 c!362697) b!2286616))

(assert (= (and d!676571 (not c!362697)) b!2286617))

(assert (= (and d!676571 c!362698) b!2286619))

(assert (= (and d!676571 (not c!362698)) b!2286620))

(assert (= (and b!2286619 res!977624) b!2286618))

(declare-fun m!2714415 () Bool)

(assert (=> b!2286616 m!2714415))

(declare-fun m!2714417 () Bool)

(assert (=> d!676571 m!2714417))

(assert (=> d!676571 m!2713715))

(declare-fun m!2714419 () Bool)

(assert (=> d!676571 m!2714419))

(declare-fun m!2714421 () Bool)

(assert (=> b!2286618 m!2714421))

(declare-fun m!2714423 () Bool)

(assert (=> b!2286619 m!2714423))

(assert (=> b!2286619 m!2713715))

(assert (=> b!2286619 m!2714369))

(assert (=> b!2285987 d!676571))

(declare-fun d!676573 () Bool)

(assert (=> d!676573 (= (list!10632 (seqFromList!3055 input!1722)) (list!10637 (c!362568 (seqFromList!3055 input!1722))))))

(declare-fun bs!456846 () Bool)

(assert (= bs!456846 d!676573))

(declare-fun m!2714425 () Bool)

(assert (=> bs!456846 m!2714425))

(assert (=> b!2285987 d!676573))

(declare-fun d!676575 () Bool)

(declare-fun lt!848446 () Int)

(assert (=> d!676575 (>= lt!848446 0)))

(declare-fun e!1465027 () Int)

(assert (=> d!676575 (= lt!848446 e!1465027)))

(declare-fun c!362699 () Bool)

(assert (=> d!676575 (= c!362699 ((_ is Nil!27212) (_2!16003 (get!8206 lt!848285))))))

(assert (=> d!676575 (= (size!21410 (_2!16003 (get!8206 lt!848285))) lt!848446)))

(declare-fun b!2286621 () Bool)

(assert (=> b!2286621 (= e!1465027 0)))

(declare-fun b!2286622 () Bool)

(assert (=> b!2286622 (= e!1465027 (+ 1 (size!21410 (t!204032 (_2!16003 (get!8206 lt!848285))))))))

(assert (= (and d!676575 c!362699) b!2286621))

(assert (= (and d!676575 (not c!362699)) b!2286622))

(declare-fun m!2714427 () Bool)

(assert (=> b!2286622 m!2714427))

(assert (=> b!2286050 d!676575))

(declare-fun d!676577 () Bool)

(assert (=> d!676577 (= (get!8206 lt!848285) (v!30410 lt!848285))))

(assert (=> b!2286050 d!676577))

(declare-fun d!676579 () Bool)

(declare-fun lt!848447 () Int)

(assert (=> d!676579 (>= lt!848447 0)))

(declare-fun e!1465028 () Int)

(assert (=> d!676579 (= lt!848447 e!1465028)))

(declare-fun c!362700 () Bool)

(assert (=> d!676579 (= c!362700 ((_ is Nil!27212) input!1722))))

(assert (=> d!676579 (= (size!21410 input!1722) lt!848447)))

(declare-fun b!2286623 () Bool)

(assert (=> b!2286623 (= e!1465028 0)))

(declare-fun b!2286624 () Bool)

(assert (=> b!2286624 (= e!1465028 (+ 1 (size!21410 (t!204032 input!1722))))))

(assert (= (and d!676579 c!362700) b!2286623))

(assert (= (and d!676579 (not c!362700)) b!2286624))

(declare-fun m!2714429 () Bool)

(assert (=> b!2286624 m!2714429))

(assert (=> b!2286050 d!676579))

(declare-fun d!676581 () Bool)

(declare-fun isBalanced!2679 (Conc!8850) Bool)

(assert (=> d!676581 (= (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))) (isBalanced!2679 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))))))

(declare-fun bs!456847 () Bool)

(assert (= bs!456847 d!676581))

(declare-fun m!2714431 () Bool)

(assert (=> bs!456847 m!2714431))

(assert (=> tb!136007 d!676581))

(declare-fun d!676583 () Bool)

(declare-fun lt!848455 () Int)

(assert (=> d!676583 (= lt!848455 (size!21415 (list!10633 (_1!16004 lt!848265))))))

(declare-fun size!21416 (Conc!8851) Int)

(assert (=> d!676583 (= lt!848455 (size!21416 (c!362570 (_1!16004 lt!848265))))))

(assert (=> d!676583 (= (size!21412 (_1!16004 lt!848265)) lt!848455)))

(declare-fun bs!456848 () Bool)

(assert (= bs!456848 d!676583))

(assert (=> bs!456848 m!2713713))

(assert (=> bs!456848 m!2713713))

(declare-fun m!2714457 () Bool)

(assert (=> bs!456848 m!2714457))

(declare-fun m!2714461 () Bool)

(assert (=> bs!456848 m!2714461))

(assert (=> d!676279 d!676583))

(declare-fun b!2286744 () Bool)

(declare-fun e!1465102 () tuple2!26988)

(assert (=> b!2286744 (= e!1465102 (tuple2!26989 (BalanceConc!17431 Empty!8851) (seqFromList!3055 input!1722)))))

(declare-fun d!676585 () Bool)

(declare-fun e!1465101 () Bool)

(assert (=> d!676585 e!1465101))

(declare-fun res!977666 () Bool)

(assert (=> d!676585 (=> (not res!977666) (not e!1465101))))

(declare-fun lt!848545 () tuple2!26988)

(declare-fun lexRec!538 (LexerInterface!3948 List!27308 BalanceConc!17428) tuple2!26988)

(assert (=> d!676585 (= res!977666 (= (list!10633 (_1!16004 lt!848545)) (list!10633 (_1!16004 (lexRec!538 thiss!16613 rules!1750 (seqFromList!3055 input!1722))))))))

(declare-fun e!1465099 () tuple2!26988)

(assert (=> d!676585 (= lt!848545 e!1465099)))

(declare-fun c!362740 () Bool)

(declare-datatypes ((tuple2!26994 0))(
  ( (tuple2!26995 (_1!16007 Token!8180) (_2!16007 BalanceConc!17428)) )
))
(declare-datatypes ((Option!5340 0))(
  ( (None!5339) (Some!5339 (v!30413 tuple2!26994)) )
))
(declare-fun lt!848536 () Option!5340)

(assert (=> d!676585 (= c!362740 ((_ is Some!5339) lt!848536))))

(declare-fun maxPrefixZipperSequenceV2!408 (LexerInterface!3948 List!27308 BalanceConc!17428 BalanceConc!17428) Option!5340)

(assert (=> d!676585 (= lt!848536 (maxPrefixZipperSequenceV2!408 thiss!16613 rules!1750 (seqFromList!3055 input!1722) (seqFromList!3055 input!1722)))))

(declare-fun lt!848551 () Unit!40112)

(declare-fun lt!848546 () Unit!40112)

(assert (=> d!676585 (= lt!848551 lt!848546)))

(declare-fun lt!848564 () List!27306)

(declare-fun lt!848547 () List!27306)

(declare-fun isSuffix!774 (List!27306 List!27306) Bool)

(assert (=> d!676585 (isSuffix!774 lt!848564 (++!6647 lt!848547 lt!848564))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!468 (List!27306 List!27306) Unit!40112)

(assert (=> d!676585 (= lt!848546 (lemmaConcatTwoListThenFSndIsSuffix!468 lt!848547 lt!848564))))

(assert (=> d!676585 (= lt!848564 (list!10632 (seqFromList!3055 input!1722)))))

(assert (=> d!676585 (= lt!848547 (list!10632 (BalanceConc!17429 Empty!8850)))))

(assert (=> d!676585 (= (lexTailRecV2!779 thiss!16613 rules!1750 (seqFromList!3055 input!1722) (BalanceConc!17429 Empty!8850) (seqFromList!3055 input!1722) (BalanceConc!17431 Empty!8851)) lt!848545)))

(declare-fun lt!848563 () BalanceConc!17428)

(declare-fun b!2286745 () Bool)

(declare-fun append!701 (BalanceConc!17430 Token!8180) BalanceConc!17430)

(assert (=> b!2286745 (= e!1465099 (lexTailRecV2!779 thiss!16613 rules!1750 (seqFromList!3055 input!1722) lt!848563 (_2!16007 (v!30413 lt!848536)) (append!701 (BalanceConc!17431 Empty!8851) (_1!16007 (v!30413 lt!848536)))))))

(declare-fun lt!848560 () tuple2!26988)

(assert (=> b!2286745 (= lt!848560 (lexRec!538 thiss!16613 rules!1750 (_2!16007 (v!30413 lt!848536))))))

(declare-fun lt!848537 () List!27306)

(assert (=> b!2286745 (= lt!848537 (list!10632 (BalanceConc!17429 Empty!8850)))))

(declare-fun lt!848540 () List!27306)

(assert (=> b!2286745 (= lt!848540 (list!10632 (charsOf!2739 (_1!16007 (v!30413 lt!848536)))))))

(declare-fun lt!848550 () List!27306)

(assert (=> b!2286745 (= lt!848550 (list!10632 (_2!16007 (v!30413 lt!848536))))))

(declare-fun lt!848544 () Unit!40112)

(declare-fun lemmaConcatAssociativity!1388 (List!27306 List!27306 List!27306) Unit!40112)

(assert (=> b!2286745 (= lt!848544 (lemmaConcatAssociativity!1388 lt!848537 lt!848540 lt!848550))))

(assert (=> b!2286745 (= (++!6647 (++!6647 lt!848537 lt!848540) lt!848550) (++!6647 lt!848537 (++!6647 lt!848540 lt!848550)))))

(declare-fun lt!848548 () Unit!40112)

(assert (=> b!2286745 (= lt!848548 lt!848544)))

(declare-fun lt!848554 () Option!5340)

(declare-fun maxPrefixZipperSequence!873 (LexerInterface!3948 List!27308 BalanceConc!17428) Option!5340)

(assert (=> b!2286745 (= lt!848554 (maxPrefixZipperSequence!873 thiss!16613 rules!1750 (seqFromList!3055 input!1722)))))

(declare-fun c!362742 () Bool)

(assert (=> b!2286745 (= c!362742 ((_ is Some!5339) lt!848554))))

(assert (=> b!2286745 (= (lexRec!538 thiss!16613 rules!1750 (seqFromList!3055 input!1722)) e!1465102)))

(declare-fun lt!848561 () Unit!40112)

(declare-fun Unit!40114 () Unit!40112)

(assert (=> b!2286745 (= lt!848561 Unit!40114)))

(declare-fun lt!848557 () List!27307)

(assert (=> b!2286745 (= lt!848557 (list!10633 (BalanceConc!17431 Empty!8851)))))

(declare-fun lt!848565 () List!27307)

(assert (=> b!2286745 (= lt!848565 (Cons!27213 (_1!16007 (v!30413 lt!848536)) Nil!27213))))

(declare-fun lt!848566 () List!27307)

(assert (=> b!2286745 (= lt!848566 (list!10633 (_1!16004 lt!848560)))))

(declare-fun lt!848542 () Unit!40112)

(declare-fun lemmaConcatAssociativity!1389 (List!27307 List!27307 List!27307) Unit!40112)

(assert (=> b!2286745 (= lt!848542 (lemmaConcatAssociativity!1389 lt!848557 lt!848565 lt!848566))))

(declare-fun ++!6648 (List!27307 List!27307) List!27307)

(assert (=> b!2286745 (= (++!6648 (++!6648 lt!848557 lt!848565) lt!848566) (++!6648 lt!848557 (++!6648 lt!848565 lt!848566)))))

(declare-fun lt!848562 () Unit!40112)

(assert (=> b!2286745 (= lt!848562 lt!848542)))

(declare-fun lt!848549 () List!27306)

(assert (=> b!2286745 (= lt!848549 (++!6647 (list!10632 (BalanceConc!17429 Empty!8850)) (list!10632 (charsOf!2739 (_1!16007 (v!30413 lt!848536))))))))

(declare-fun lt!848558 () List!27306)

(assert (=> b!2286745 (= lt!848558 (list!10632 (_2!16007 (v!30413 lt!848536))))))

(declare-fun lt!848541 () List!27307)

(assert (=> b!2286745 (= lt!848541 (list!10633 (append!701 (BalanceConc!17431 Empty!8851) (_1!16007 (v!30413 lt!848536)))))))

(declare-fun lt!848567 () Unit!40112)

(declare-fun lemmaLexThenLexPrefix!352 (LexerInterface!3948 List!27308 List!27306 List!27306 List!27307 List!27307 List!27306) Unit!40112)

(assert (=> b!2286745 (= lt!848567 (lemmaLexThenLexPrefix!352 thiss!16613 rules!1750 lt!848549 lt!848558 lt!848541 (list!10633 (_1!16004 lt!848560)) (list!10632 (_2!16004 lt!848560))))))

(assert (=> b!2286745 (= (lexList!1104 thiss!16613 rules!1750 lt!848549) (tuple2!26991 lt!848541 Nil!27212))))

(declare-fun lt!848556 () Unit!40112)

(assert (=> b!2286745 (= lt!848556 lt!848567)))

(declare-fun lt!848538 () BalanceConc!17428)

(declare-fun ++!6649 (BalanceConc!17428 BalanceConc!17428) BalanceConc!17428)

(assert (=> b!2286745 (= lt!848538 (++!6649 (BalanceConc!17429 Empty!8850) (charsOf!2739 (_1!16007 (v!30413 lt!848536)))))))

(declare-fun lt!848568 () Option!5340)

(assert (=> b!2286745 (= lt!848568 (maxPrefixZipperSequence!873 thiss!16613 rules!1750 lt!848538))))

(declare-fun c!362741 () Bool)

(assert (=> b!2286745 (= c!362741 ((_ is Some!5339) lt!848568))))

(declare-fun e!1465100 () tuple2!26988)

(assert (=> b!2286745 (= (lexRec!538 thiss!16613 rules!1750 (++!6649 (BalanceConc!17429 Empty!8850) (charsOf!2739 (_1!16007 (v!30413 lt!848536))))) e!1465100)))

(declare-fun lt!848539 () Unit!40112)

(declare-fun Unit!40115 () Unit!40112)

(assert (=> b!2286745 (= lt!848539 Unit!40115)))

(assert (=> b!2286745 (= lt!848563 (++!6649 (BalanceConc!17429 Empty!8850) (charsOf!2739 (_1!16007 (v!30413 lt!848536)))))))

(declare-fun lt!848552 () List!27306)

(assert (=> b!2286745 (= lt!848552 (list!10632 lt!848563))))

(declare-fun lt!848535 () List!27306)

(assert (=> b!2286745 (= lt!848535 (list!10632 (_2!16007 (v!30413 lt!848536))))))

(declare-fun lt!848555 () Unit!40112)

(assert (=> b!2286745 (= lt!848555 (lemmaConcatTwoListThenFSndIsSuffix!468 lt!848552 lt!848535))))

(assert (=> b!2286745 (isSuffix!774 lt!848535 (++!6647 lt!848552 lt!848535))))

(declare-fun lt!848543 () Unit!40112)

(assert (=> b!2286745 (= lt!848543 lt!848555)))

(declare-fun lt!848559 () tuple2!26988)

(declare-fun b!2286746 () Bool)

(assert (=> b!2286746 (= lt!848559 (lexRec!538 thiss!16613 rules!1750 (_2!16007 (v!30413 lt!848568))))))

(declare-fun prepend!1008 (BalanceConc!17430 Token!8180) BalanceConc!17430)

(assert (=> b!2286746 (= e!1465100 (tuple2!26989 (prepend!1008 (_1!16004 lt!848559) (_1!16007 (v!30413 lt!848568))) (_2!16004 lt!848559)))))

(declare-fun b!2286747 () Bool)

(assert (=> b!2286747 (= e!1465101 (= (list!10632 (_2!16004 lt!848545)) (list!10632 (_2!16004 (lexRec!538 thiss!16613 rules!1750 (seqFromList!3055 input!1722))))))))

(declare-fun lt!848553 () tuple2!26988)

(declare-fun b!2286748 () Bool)

(assert (=> b!2286748 (= lt!848553 (lexRec!538 thiss!16613 rules!1750 (_2!16007 (v!30413 lt!848554))))))

(assert (=> b!2286748 (= e!1465102 (tuple2!26989 (prepend!1008 (_1!16004 lt!848553) (_1!16007 (v!30413 lt!848554))) (_2!16004 lt!848553)))))

(declare-fun b!2286749 () Bool)

(assert (=> b!2286749 (= e!1465099 (tuple2!26989 (BalanceConc!17431 Empty!8851) (seqFromList!3055 input!1722)))))

(declare-fun b!2286750 () Bool)

(assert (=> b!2286750 (= e!1465100 (tuple2!26989 (BalanceConc!17431 Empty!8851) lt!848538))))

(assert (= (and d!676585 c!362740) b!2286745))

(assert (= (and d!676585 (not c!362740)) b!2286749))

(assert (= (and b!2286745 c!362742) b!2286748))

(assert (= (and b!2286745 (not c!362742)) b!2286744))

(assert (= (and b!2286745 c!362741) b!2286746))

(assert (= (and b!2286745 (not c!362741)) b!2286750))

(assert (= (and d!676585 res!977666) b!2286747))

(declare-fun m!2714573 () Bool)

(assert (=> b!2286748 m!2714573))

(declare-fun m!2714575 () Bool)

(assert (=> b!2286748 m!2714575))

(declare-fun m!2714577 () Bool)

(assert (=> b!2286747 m!2714577))

(assert (=> b!2286747 m!2713577))

(declare-fun m!2714579 () Bool)

(assert (=> b!2286747 m!2714579))

(declare-fun m!2714581 () Bool)

(assert (=> b!2286747 m!2714581))

(declare-fun m!2714583 () Bool)

(assert (=> b!2286746 m!2714583))

(declare-fun m!2714585 () Bool)

(assert (=> b!2286746 m!2714585))

(declare-fun m!2714587 () Bool)

(assert (=> d!676585 m!2714587))

(declare-fun m!2714589 () Bool)

(assert (=> d!676585 m!2714589))

(declare-fun m!2714591 () Bool)

(assert (=> d!676585 m!2714591))

(declare-fun m!2714593 () Bool)

(assert (=> d!676585 m!2714593))

(assert (=> d!676585 m!2713577))

(assert (=> d!676585 m!2713715))

(assert (=> d!676585 m!2713577))

(assert (=> d!676585 m!2713577))

(declare-fun m!2714595 () Bool)

(assert (=> d!676585 m!2714595))

(declare-fun m!2714597 () Bool)

(assert (=> d!676585 m!2714597))

(assert (=> d!676585 m!2714593))

(declare-fun m!2714599 () Bool)

(assert (=> d!676585 m!2714599))

(assert (=> d!676585 m!2713577))

(assert (=> d!676585 m!2714579))

(declare-fun m!2714601 () Bool)

(assert (=> b!2286745 m!2714601))

(declare-fun m!2714603 () Bool)

(assert (=> b!2286745 m!2714603))

(declare-fun m!2714605 () Bool)

(assert (=> b!2286745 m!2714605))

(declare-fun m!2714607 () Bool)

(assert (=> b!2286745 m!2714607))

(declare-fun m!2714609 () Bool)

(assert (=> b!2286745 m!2714609))

(declare-fun m!2714611 () Bool)

(assert (=> b!2286745 m!2714611))

(declare-fun m!2714613 () Bool)

(assert (=> b!2286745 m!2714613))

(declare-fun m!2714615 () Bool)

(assert (=> b!2286745 m!2714615))

(assert (=> b!2286745 m!2713577))

(declare-fun m!2714617 () Bool)

(assert (=> b!2286745 m!2714617))

(declare-fun m!2714619 () Bool)

(assert (=> b!2286745 m!2714619))

(declare-fun m!2714621 () Bool)

(assert (=> b!2286745 m!2714621))

(declare-fun m!2714623 () Bool)

(assert (=> b!2286745 m!2714623))

(declare-fun m!2714625 () Bool)

(assert (=> b!2286745 m!2714625))

(declare-fun m!2714627 () Bool)

(assert (=> b!2286745 m!2714627))

(declare-fun m!2714629 () Bool)

(assert (=> b!2286745 m!2714629))

(declare-fun m!2714631 () Bool)

(assert (=> b!2286745 m!2714631))

(declare-fun m!2714633 () Bool)

(assert (=> b!2286745 m!2714633))

(declare-fun m!2714635 () Bool)

(assert (=> b!2286745 m!2714635))

(declare-fun m!2714637 () Bool)

(assert (=> b!2286745 m!2714637))

(assert (=> b!2286745 m!2714637))

(declare-fun m!2714639 () Bool)

(assert (=> b!2286745 m!2714639))

(assert (=> b!2286745 m!2714617))

(declare-fun m!2714641 () Bool)

(assert (=> b!2286745 m!2714641))

(assert (=> b!2286745 m!2714589))

(declare-fun m!2714643 () Bool)

(assert (=> b!2286745 m!2714643))

(declare-fun m!2714645 () Bool)

(assert (=> b!2286745 m!2714645))

(assert (=> b!2286745 m!2714623))

(assert (=> b!2286745 m!2713577))

(assert (=> b!2286745 m!2714579))

(assert (=> b!2286745 m!2714589))

(declare-fun m!2714647 () Bool)

(assert (=> b!2286745 m!2714647))

(declare-fun m!2714649 () Bool)

(assert (=> b!2286745 m!2714649))

(assert (=> b!2286745 m!2713577))

(declare-fun m!2714651 () Bool)

(assert (=> b!2286745 m!2714651))

(assert (=> b!2286745 m!2714617))

(declare-fun m!2714653 () Bool)

(assert (=> b!2286745 m!2714653))

(assert (=> b!2286745 m!2714645))

(declare-fun m!2714655 () Bool)

(assert (=> b!2286745 m!2714655))

(assert (=> b!2286745 m!2714611))

(assert (=> b!2286745 m!2714601))

(assert (=> b!2286745 m!2714631))

(assert (=> b!2286745 m!2714613))

(declare-fun m!2714657 () Bool)

(assert (=> b!2286745 m!2714657))

(assert (=> b!2286745 m!2714621))

(declare-fun m!2714659 () Bool)

(assert (=> b!2286745 m!2714659))

(declare-fun m!2714661 () Bool)

(assert (=> b!2286745 m!2714661))

(assert (=> b!2286745 m!2714659))

(assert (=> b!2286745 m!2714611))

(assert (=> b!2286745 m!2714647))

(assert (=> d!676279 d!676585))

(declare-fun d!676629 () Bool)

(declare-fun e!1465105 () Bool)

(assert (=> d!676629 e!1465105))

(declare-fun res!977669 () Bool)

(assert (=> d!676629 (=> (not res!977669) (not e!1465105))))

(declare-fun lt!848571 () BalanceConc!17428)

(assert (=> d!676629 (= res!977669 (= (list!10632 lt!848571) lt!848247))))

(declare-fun fromList!536 (List!27306) Conc!8850)

(assert (=> d!676629 (= lt!848571 (BalanceConc!17429 (fromList!536 lt!848247)))))

(assert (=> d!676629 (= (fromListB!1370 lt!848247) lt!848571)))

(declare-fun b!2286753 () Bool)

(assert (=> b!2286753 (= e!1465105 (isBalanced!2679 (fromList!536 lt!848247)))))

(assert (= (and d!676629 res!977669) b!2286753))

(declare-fun m!2714663 () Bool)

(assert (=> d!676629 m!2714663))

(declare-fun m!2714665 () Bool)

(assert (=> d!676629 m!2714665))

(assert (=> b!2286753 m!2714665))

(assert (=> b!2286753 m!2714665))

(declare-fun m!2714667 () Bool)

(assert (=> b!2286753 m!2714667))

(assert (=> d!676417 d!676629))

(declare-fun d!676631 () Bool)

(declare-fun lt!848572 () Int)

(assert (=> d!676631 (>= lt!848572 0)))

(declare-fun e!1465106 () Int)

(assert (=> d!676631 (= lt!848572 e!1465106)))

(declare-fun c!362744 () Bool)

(assert (=> d!676631 (= c!362744 ((_ is Nil!27212) lt!848238))))

(assert (=> d!676631 (= (size!21410 lt!848238) lt!848572)))

(declare-fun b!2286754 () Bool)

(assert (=> b!2286754 (= e!1465106 0)))

(declare-fun b!2286755 () Bool)

(assert (=> b!2286755 (= e!1465106 (+ 1 (size!21410 (t!204032 lt!848238))))))

(assert (= (and d!676631 c!362744) b!2286754))

(assert (= (and d!676631 (not c!362744)) b!2286755))

(declare-fun m!2714669 () Bool)

(assert (=> b!2286755 m!2714669))

(assert (=> b!2286128 d!676631))

(assert (=> b!2286128 d!676337))

(declare-fun d!676633 () Bool)

(assert (=> d!676633 (= (isEmpty!15477 (originalCharacters!5121 (h!32614 tokens!456))) ((_ is Nil!27212) (originalCharacters!5121 (h!32614 tokens!456))))))

(assert (=> d!676257 d!676633))

(declare-fun d!676635 () Bool)

(assert (=> d!676635 (= (isEmpty!15482 lt!848285) (not ((_ is Some!5338) lt!848285)))))

(assert (=> d!676299 d!676635))

(declare-fun d!676637 () Bool)

(declare-fun e!1465108 () Bool)

(assert (=> d!676637 e!1465108))

(declare-fun res!977673 () Bool)

(assert (=> d!676637 (=> res!977673 e!1465108)))

(declare-fun lt!848573 () Bool)

(assert (=> d!676637 (= res!977673 (not lt!848573))))

(declare-fun e!1465107 () Bool)

(assert (=> d!676637 (= lt!848573 e!1465107)))

(declare-fun res!977672 () Bool)

(assert (=> d!676637 (=> res!977672 e!1465107)))

(assert (=> d!676637 (= res!977672 ((_ is Nil!27212) input!1722))))

(assert (=> d!676637 (= (isPrefix!2341 input!1722 input!1722) lt!848573)))

(declare-fun b!2286759 () Bool)

(assert (=> b!2286759 (= e!1465108 (>= (size!21410 input!1722) (size!21410 input!1722)))))

(declare-fun b!2286757 () Bool)

(declare-fun res!977671 () Bool)

(declare-fun e!1465109 () Bool)

(assert (=> b!2286757 (=> (not res!977671) (not e!1465109))))

(assert (=> b!2286757 (= res!977671 (= (head!4972 input!1722) (head!4972 input!1722)))))

(declare-fun b!2286758 () Bool)

(assert (=> b!2286758 (= e!1465109 (isPrefix!2341 (tail!3301 input!1722) (tail!3301 input!1722)))))

(declare-fun b!2286756 () Bool)

(assert (=> b!2286756 (= e!1465107 e!1465109)))

(declare-fun res!977670 () Bool)

(assert (=> b!2286756 (=> (not res!977670) (not e!1465109))))

(assert (=> b!2286756 (= res!977670 (not ((_ is Nil!27212) input!1722)))))

(assert (= (and d!676637 (not res!977672)) b!2286756))

(assert (= (and b!2286756 res!977670) b!2286757))

(assert (= (and b!2286757 res!977671) b!2286758))

(assert (= (and d!676637 (not res!977673)) b!2286759))

(assert (=> b!2286759 m!2713779))

(assert (=> b!2286759 m!2713779))

(assert (=> b!2286757 m!2713885))

(assert (=> b!2286757 m!2713885))

(assert (=> b!2286758 m!2713879))

(assert (=> b!2286758 m!2713879))

(assert (=> b!2286758 m!2713879))

(assert (=> b!2286758 m!2713879))

(declare-fun m!2714671 () Bool)

(assert (=> b!2286758 m!2714671))

(assert (=> d!676299 d!676637))

(declare-fun d!676639 () Bool)

(assert (=> d!676639 (isPrefix!2341 input!1722 input!1722)))

(declare-fun lt!848576 () Unit!40112)

(declare-fun choose!13344 (List!27306 List!27306) Unit!40112)

(assert (=> d!676639 (= lt!848576 (choose!13344 input!1722 input!1722))))

(assert (=> d!676639 (= (lemmaIsPrefixRefl!1487 input!1722 input!1722) lt!848576)))

(declare-fun bs!456861 () Bool)

(assert (= bs!456861 d!676639))

(assert (=> bs!456861 m!2713793))

(declare-fun m!2714673 () Bool)

(assert (=> bs!456861 m!2714673))

(assert (=> d!676299 d!676639))

(declare-fun d!676641 () Bool)

(assert (=> d!676641 true))

(declare-fun lt!848579 () Bool)

(declare-fun lambda!85719 () Int)

(declare-fun forall!5492 (List!27308 Int) Bool)

(assert (=> d!676641 (= lt!848579 (forall!5492 rules!1750 lambda!85719))))

(declare-fun e!1465115 () Bool)

(assert (=> d!676641 (= lt!848579 e!1465115)))

(declare-fun res!977679 () Bool)

(assert (=> d!676641 (=> res!977679 e!1465115)))

(assert (=> d!676641 (= res!977679 (not ((_ is Cons!27214) rules!1750)))))

(assert (=> d!676641 (= (rulesValidInductive!1529 thiss!16613 rules!1750) lt!848579)))

(declare-fun b!2286764 () Bool)

(declare-fun e!1465114 () Bool)

(assert (=> b!2286764 (= e!1465115 e!1465114)))

(declare-fun res!977678 () Bool)

(assert (=> b!2286764 (=> (not res!977678) (not e!1465114))))

(assert (=> b!2286764 (= res!977678 (ruleValid!1441 thiss!16613 (h!32615 rules!1750)))))

(declare-fun b!2286765 () Bool)

(assert (=> b!2286765 (= e!1465114 (rulesValidInductive!1529 thiss!16613 (t!204034 rules!1750)))))

(assert (= (and d!676641 (not res!977679)) b!2286764))

(assert (= (and b!2286764 res!977678) b!2286765))

(declare-fun m!2714675 () Bool)

(assert (=> d!676641 m!2714675))

(assert (=> b!2286764 m!2714355))

(assert (=> b!2286765 m!2714389))

(assert (=> d!676299 d!676641))

(assert (=> d!676263 d!676259))

(declare-fun d!676643 () Bool)

(assert (=> d!676643 true))

(declare-fun lambda!85722 () Int)

(declare-fun order!15171 () Int)

(declare-fun dynLambda!11811 (Int Int) Int)

(assert (=> d!676643 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (dynLambda!11811 order!15171 lambda!85722))))

(declare-fun Forall2!706 (Int) Bool)

(assert (=> d!676643 (= (equivClasses!1679 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (Forall2!706 lambda!85722))))

(declare-fun bs!456862 () Bool)

(assert (= bs!456862 d!676643))

(declare-fun m!2714677 () Bool)

(assert (=> bs!456862 m!2714677))

(assert (=> b!2286375 d!676643))

(declare-fun d!676645 () Bool)

(declare-fun lt!848630 () Int)

(assert (=> d!676645 (>= lt!848630 0)))

(declare-fun e!1465122 () Int)

(assert (=> d!676645 (= lt!848630 e!1465122)))

(declare-fun c!362749 () Bool)

(assert (=> d!676645 (= c!362749 ((_ is Nil!27212) (t!204032 lt!848247)))))

(assert (=> d!676645 (= (size!21410 (t!204032 lt!848247)) lt!848630)))

(declare-fun b!2286780 () Bool)

(assert (=> b!2286780 (= e!1465122 0)))

(declare-fun b!2286781 () Bool)

(assert (=> b!2286781 (= e!1465122 (+ 1 (size!21410 (t!204032 (t!204032 lt!848247)))))))

(assert (= (and d!676645 c!362749) b!2286780))

(assert (= (and d!676645 (not c!362749)) b!2286781))

(declare-fun m!2714679 () Bool)

(assert (=> b!2286781 m!2714679))

(assert (=> b!2286116 d!676645))

(declare-fun bs!456863 () Bool)

(declare-fun d!676647 () Bool)

(assert (= bs!456863 (and d!676647 d!676351)))

(declare-fun lambda!85725 () Int)

(assert (=> bs!456863 (= (and (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 r!2363))) (= (toValue!6137 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 r!2363)))) (= lambda!85725 lambda!85703))))

(assert (=> d!676647 true))

(assert (=> d!676647 (< (dynLambda!11809 order!15167 (toChars!5996 (transformation!4351 (h!32615 rules!1750)))) (dynLambda!11808 order!15165 lambda!85725))))

(assert (=> d!676647 true))

(assert (=> d!676647 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 (h!32615 rules!1750)))) (dynLambda!11808 order!15165 lambda!85725))))

(declare-fun Forall!1089 (Int) Bool)

(assert (=> d!676647 (= (semiInverseModEq!1760 (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 (h!32615 rules!1750)))) (Forall!1089 lambda!85725))))

(declare-fun bs!456864 () Bool)

(assert (= bs!456864 d!676647))

(declare-fun m!2714681 () Bool)

(assert (=> bs!456864 m!2714681))

(assert (=> d!676291 d!676647))

(declare-fun d!676649 () Bool)

(assert (=> d!676649 (= (head!4972 lt!848247) (h!32613 lt!848247))))

(assert (=> b!2286126 d!676649))

(declare-fun d!676651 () Bool)

(assert (=> d!676651 (= (head!4972 lt!848238) (h!32613 lt!848238))))

(assert (=> b!2286126 d!676651))

(assert (=> d!676267 d!676265))

(declare-fun d!676653 () Bool)

(assert (=> d!676653 (ruleValid!1441 thiss!16613 otherR!12)))

(assert (=> d!676653 true))

(declare-fun _$65!1131 () Unit!40112)

(assert (=> d!676653 (= (choose!13341 thiss!16613 otherR!12 rules!1750) _$65!1131)))

(declare-fun bs!456865 () Bool)

(assert (= bs!456865 d!676653))

(assert (=> bs!456865 m!2713653))

(assert (=> d!676267 d!676653))

(assert (=> d!676267 d!676259))

(declare-fun d!676655 () Bool)

(assert (=> d!676655 (= (inv!36800 (tag!4841 (h!32615 (t!204034 rules!1750)))) (= (mod (str.len (value!137822 (tag!4841 (h!32615 (t!204034 rules!1750))))) 2) 0))))

(assert (=> b!2286399 d!676655))

(declare-fun d!676657 () Bool)

(declare-fun res!977684 () Bool)

(declare-fun e!1465127 () Bool)

(assert (=> d!676657 (=> (not res!977684) (not e!1465127))))

(assert (=> d!676657 (= res!977684 (semiInverseModEq!1760 (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toValue!6137 (transformation!4351 (h!32615 (t!204034 rules!1750))))))))

(assert (=> d!676657 (= (inv!36803 (transformation!4351 (h!32615 (t!204034 rules!1750)))) e!1465127)))

(declare-fun b!2286792 () Bool)

(assert (=> b!2286792 (= e!1465127 (equivClasses!1679 (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toValue!6137 (transformation!4351 (h!32615 (t!204034 rules!1750))))))))

(assert (= (and d!676657 res!977684) b!2286792))

(declare-fun m!2714683 () Bool)

(assert (=> d!676657 m!2714683))

(declare-fun m!2714685 () Bool)

(assert (=> b!2286792 m!2714685))

(assert (=> b!2286399 d!676657))

(declare-fun d!676659 () Bool)

(assert (=> d!676659 (= (list!10632 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))) (list!10637 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))))))

(declare-fun bs!456866 () Bool)

(assert (= bs!456866 d!676659))

(declare-fun m!2714687 () Bool)

(assert (=> bs!456866 m!2714687))

(assert (=> b!2285934 d!676659))

(declare-fun d!676661 () Bool)

(declare-fun c!362752 () Bool)

(assert (=> d!676661 (= c!362752 ((_ is Empty!8850) (c!362568 (charsOf!2739 (h!32614 tokens!456)))))))

(declare-fun e!1465128 () List!27306)

(assert (=> d!676661 (= (list!10637 (c!362568 (charsOf!2739 (h!32614 tokens!456)))) e!1465128)))

(declare-fun b!2286795 () Bool)

(declare-fun e!1465129 () List!27306)

(assert (=> b!2286795 (= e!1465129 (list!10638 (xs!11792 (c!362568 (charsOf!2739 (h!32614 tokens!456))))))))

(declare-fun b!2286796 () Bool)

(assert (=> b!2286796 (= e!1465129 (++!6647 (list!10637 (left!20630 (c!362568 (charsOf!2739 (h!32614 tokens!456))))) (list!10637 (right!20960 (c!362568 (charsOf!2739 (h!32614 tokens!456)))))))))

(declare-fun b!2286793 () Bool)

(assert (=> b!2286793 (= e!1465128 Nil!27212)))

(declare-fun b!2286794 () Bool)

(assert (=> b!2286794 (= e!1465128 e!1465129)))

(declare-fun c!362753 () Bool)

(assert (=> b!2286794 (= c!362753 ((_ is Leaf!13011) (c!362568 (charsOf!2739 (h!32614 tokens!456)))))))

(assert (= (and d!676661 c!362752) b!2286793))

(assert (= (and d!676661 (not c!362752)) b!2286794))

(assert (= (and b!2286794 c!362753) b!2286795))

(assert (= (and b!2286794 (not c!362753)) b!2286796))

(declare-fun m!2714689 () Bool)

(assert (=> b!2286795 m!2714689))

(declare-fun m!2714691 () Bool)

(assert (=> b!2286796 m!2714691))

(declare-fun m!2714693 () Bool)

(assert (=> b!2286796 m!2714693))

(assert (=> b!2286796 m!2714691))

(assert (=> b!2286796 m!2714693))

(declare-fun m!2714695 () Bool)

(assert (=> b!2286796 m!2714695))

(assert (=> d!676335 d!676661))

(declare-fun d!676663 () Bool)

(declare-fun c!362754 () Bool)

(assert (=> d!676663 (= c!362754 ((_ is Empty!8850) (c!362568 (_2!16004 lt!848244))))))

(declare-fun e!1465130 () List!27306)

(assert (=> d!676663 (= (list!10637 (c!362568 (_2!16004 lt!848244))) e!1465130)))

(declare-fun b!2286799 () Bool)

(declare-fun e!1465131 () List!27306)

(assert (=> b!2286799 (= e!1465131 (list!10638 (xs!11792 (c!362568 (_2!16004 lt!848244)))))))

(declare-fun b!2286800 () Bool)

(assert (=> b!2286800 (= e!1465131 (++!6647 (list!10637 (left!20630 (c!362568 (_2!16004 lt!848244)))) (list!10637 (right!20960 (c!362568 (_2!16004 lt!848244))))))))

(declare-fun b!2286797 () Bool)

(assert (=> b!2286797 (= e!1465130 Nil!27212)))

(declare-fun b!2286798 () Bool)

(assert (=> b!2286798 (= e!1465130 e!1465131)))

(declare-fun c!362755 () Bool)

(assert (=> b!2286798 (= c!362755 ((_ is Leaf!13011) (c!362568 (_2!16004 lt!848244))))))

(assert (= (and d!676663 c!362754) b!2286797))

(assert (= (and d!676663 (not c!362754)) b!2286798))

(assert (= (and b!2286798 c!362755) b!2286799))

(assert (= (and b!2286798 (not c!362755)) b!2286800))

(declare-fun m!2714697 () Bool)

(assert (=> b!2286799 m!2714697))

(declare-fun m!2714699 () Bool)

(assert (=> b!2286800 m!2714699))

(declare-fun m!2714701 () Bool)

(assert (=> b!2286800 m!2714701))

(assert (=> b!2286800 m!2714699))

(assert (=> b!2286800 m!2714701))

(declare-fun m!2714703 () Bool)

(assert (=> b!2286800 m!2714703))

(assert (=> d!676277 d!676663))

(declare-fun lt!848649 () List!27306)

(declare-fun b!2286804 () Bool)

(declare-fun e!1465132 () Bool)

(assert (=> b!2286804 (= e!1465132 (or (not (= lt!848315 Nil!27212)) (= lt!848649 lt!848247)))))

(declare-fun b!2286801 () Bool)

(declare-fun e!1465133 () List!27306)

(assert (=> b!2286801 (= e!1465133 lt!848315)))

(declare-fun b!2286803 () Bool)

(declare-fun res!977686 () Bool)

(assert (=> b!2286803 (=> (not res!977686) (not e!1465132))))

(assert (=> b!2286803 (= res!977686 (= (size!21410 lt!848649) (+ (size!21410 lt!848247) (size!21410 lt!848315))))))

(declare-fun d!676665 () Bool)

(assert (=> d!676665 e!1465132))

(declare-fun res!977685 () Bool)

(assert (=> d!676665 (=> (not res!977685) (not e!1465132))))

(assert (=> d!676665 (= res!977685 (= (content!3647 lt!848649) ((_ map or) (content!3647 lt!848247) (content!3647 lt!848315))))))

(assert (=> d!676665 (= lt!848649 e!1465133)))

(declare-fun c!362756 () Bool)

(assert (=> d!676665 (= c!362756 ((_ is Nil!27212) lt!848247))))

(assert (=> d!676665 (= (++!6647 lt!848247 lt!848315) lt!848649)))

(declare-fun b!2286802 () Bool)

(assert (=> b!2286802 (= e!1465133 (Cons!27212 (h!32613 lt!848247) (++!6647 (t!204032 lt!848247) lt!848315)))))

(assert (= (and d!676665 c!362756) b!2286801))

(assert (= (and d!676665 (not c!362756)) b!2286802))

(assert (= (and d!676665 res!977685) b!2286803))

(assert (= (and b!2286803 res!977686) b!2286804))

(declare-fun m!2714705 () Bool)

(assert (=> b!2286803 m!2714705))

(assert (=> b!2286803 m!2713613))

(declare-fun m!2714707 () Bool)

(assert (=> b!2286803 m!2714707))

(declare-fun m!2714709 () Bool)

(assert (=> d!676665 m!2714709))

(assert (=> d!676665 m!2713847))

(declare-fun m!2714711 () Bool)

(assert (=> d!676665 m!2714711))

(declare-fun m!2714713 () Bool)

(assert (=> b!2286802 m!2714713))

(assert (=> d!676345 d!676665))

(assert (=> d!676345 d!676579))

(assert (=> d!676345 d!676337))

(declare-fun b!2286805 () Bool)

(declare-fun e!1465136 () Bool)

(assert (=> b!2286805 (= e!1465136 (inv!16 (value!137823 (h!32614 (t!204033 tokens!456)))))))

(declare-fun b!2286806 () Bool)

(declare-fun res!977687 () Bool)

(declare-fun e!1465135 () Bool)

(assert (=> b!2286806 (=> res!977687 e!1465135)))

(assert (=> b!2286806 (= res!977687 (not ((_ is IntegerValue!13541) (value!137823 (h!32614 (t!204033 tokens!456))))))))

(declare-fun e!1465134 () Bool)

(assert (=> b!2286806 (= e!1465134 e!1465135)))

(declare-fun b!2286807 () Bool)

(assert (=> b!2286807 (= e!1465136 e!1465134)))

(declare-fun c!362758 () Bool)

(assert (=> b!2286807 (= c!362758 ((_ is IntegerValue!13540) (value!137823 (h!32614 (t!204033 tokens!456)))))))

(declare-fun b!2286808 () Bool)

(assert (=> b!2286808 (= e!1465134 (inv!17 (value!137823 (h!32614 (t!204033 tokens!456)))))))

(declare-fun d!676667 () Bool)

(declare-fun c!362757 () Bool)

(assert (=> d!676667 (= c!362757 ((_ is IntegerValue!13539) (value!137823 (h!32614 (t!204033 tokens!456)))))))

(assert (=> d!676667 (= (inv!21 (value!137823 (h!32614 (t!204033 tokens!456)))) e!1465136)))

(declare-fun b!2286809 () Bool)

(assert (=> b!2286809 (= e!1465135 (inv!15 (value!137823 (h!32614 (t!204033 tokens!456)))))))

(assert (= (and d!676667 c!362757) b!2286805))

(assert (= (and d!676667 (not c!362757)) b!2286807))

(assert (= (and b!2286807 c!362758) b!2286808))

(assert (= (and b!2286807 (not c!362758)) b!2286806))

(assert (= (and b!2286806 (not res!977687)) b!2286809))

(declare-fun m!2714715 () Bool)

(assert (=> b!2286805 m!2714715))

(declare-fun m!2714717 () Bool)

(assert (=> b!2286808 m!2714717))

(declare-fun m!2714719 () Bool)

(assert (=> b!2286809 m!2714719))

(assert (=> b!2286387 d!676667))

(declare-fun d!676669 () Bool)

(declare-fun res!977701 () Bool)

(declare-fun e!1465156 () Bool)

(assert (=> d!676669 (=> res!977701 e!1465156)))

(assert (=> d!676669 (= res!977701 ((_ is ElementMatch!6699) (regex!4351 otherR!12)))))

(assert (=> d!676669 (= (validRegex!2520 (regex!4351 otherR!12)) e!1465156)))

(declare-fun b!2286835 () Bool)

(declare-fun e!1465155 () Bool)

(declare-fun call!136572 () Bool)

(assert (=> b!2286835 (= e!1465155 call!136572)))

(declare-fun b!2286836 () Bool)

(declare-fun e!1465157 () Bool)

(declare-fun e!1465158 () Bool)

(assert (=> b!2286836 (= e!1465157 e!1465158)))

(declare-fun res!977702 () Bool)

(assert (=> b!2286836 (=> (not res!977702) (not e!1465158))))

(assert (=> b!2286836 (= res!977702 call!136572)))

(declare-fun bm!136565 () Bool)

(declare-fun call!136571 () Bool)

(declare-fun c!362766 () Bool)

(declare-fun c!362767 () Bool)

(assert (=> bm!136565 (= call!136571 (validRegex!2520 (ite c!362767 (reg!7028 (regex!4351 otherR!12)) (ite c!362766 (regOne!13911 (regex!4351 otherR!12)) (regTwo!13910 (regex!4351 otherR!12))))))))

(declare-fun bm!136566 () Bool)

(assert (=> bm!136566 (= call!136572 (validRegex!2520 (ite c!362766 (regTwo!13911 (regex!4351 otherR!12)) (regOne!13910 (regex!4351 otherR!12)))))))

(declare-fun b!2286837 () Bool)

(declare-fun e!1465160 () Bool)

(declare-fun e!1465159 () Bool)

(assert (=> b!2286837 (= e!1465160 e!1465159)))

(declare-fun res!977700 () Bool)

(assert (=> b!2286837 (= res!977700 (not (nullable!1858 (reg!7028 (regex!4351 otherR!12)))))))

(assert (=> b!2286837 (=> (not res!977700) (not e!1465159))))

(declare-fun b!2286838 () Bool)

(assert (=> b!2286838 (= e!1465159 call!136571)))

(declare-fun b!2286839 () Bool)

(assert (=> b!2286839 (= e!1465156 e!1465160)))

(assert (=> b!2286839 (= c!362767 ((_ is Star!6699) (regex!4351 otherR!12)))))

(declare-fun bm!136567 () Bool)

(declare-fun call!136570 () Bool)

(assert (=> bm!136567 (= call!136570 call!136571)))

(declare-fun b!2286840 () Bool)

(declare-fun res!977703 () Bool)

(assert (=> b!2286840 (=> res!977703 e!1465157)))

(assert (=> b!2286840 (= res!977703 (not ((_ is Concat!11213) (regex!4351 otherR!12))))))

(declare-fun e!1465161 () Bool)

(assert (=> b!2286840 (= e!1465161 e!1465157)))

(declare-fun b!2286841 () Bool)

(assert (=> b!2286841 (= e!1465160 e!1465161)))

(assert (=> b!2286841 (= c!362766 ((_ is Union!6699) (regex!4351 otherR!12)))))

(declare-fun b!2286842 () Bool)

(declare-fun res!977699 () Bool)

(assert (=> b!2286842 (=> (not res!977699) (not e!1465155))))

(assert (=> b!2286842 (= res!977699 call!136570)))

(assert (=> b!2286842 (= e!1465161 e!1465155)))

(declare-fun b!2286843 () Bool)

(assert (=> b!2286843 (= e!1465158 call!136570)))

(assert (= (and d!676669 (not res!977701)) b!2286839))

(assert (= (and b!2286839 c!362767) b!2286837))

(assert (= (and b!2286839 (not c!362767)) b!2286841))

(assert (= (and b!2286837 res!977700) b!2286838))

(assert (= (and b!2286841 c!362766) b!2286842))

(assert (= (and b!2286841 (not c!362766)) b!2286840))

(assert (= (and b!2286842 res!977699) b!2286835))

(assert (= (and b!2286840 (not res!977703)) b!2286836))

(assert (= (and b!2286836 res!977702) b!2286843))

(assert (= (or b!2286842 b!2286843) bm!136567))

(assert (= (or b!2286835 b!2286836) bm!136566))

(assert (= (or b!2286838 bm!136567) bm!136565))

(declare-fun m!2714721 () Bool)

(assert (=> bm!136565 m!2714721))

(declare-fun m!2714723 () Bool)

(assert (=> bm!136566 m!2714723))

(declare-fun m!2714725 () Bool)

(assert (=> b!2286837 m!2714725))

(assert (=> d!676265 d!676669))

(declare-fun d!676671 () Bool)

(assert (=> d!676671 (= (list!10632 lt!848295) (list!10637 (c!362568 lt!848295)))))

(declare-fun bs!456867 () Bool)

(assert (= bs!456867 d!676671))

(declare-fun m!2714727 () Bool)

(assert (=> bs!456867 m!2714727))

(assert (=> d!676327 d!676671))

(declare-fun d!676673 () Bool)

(declare-fun e!1465163 () Bool)

(assert (=> d!676673 e!1465163))

(declare-fun res!977707 () Bool)

(assert (=> d!676673 (=> res!977707 e!1465163)))

(declare-fun lt!848684 () Bool)

(assert (=> d!676673 (= res!977707 (not lt!848684))))

(declare-fun e!1465162 () Bool)

(assert (=> d!676673 (= lt!848684 e!1465162)))

(declare-fun res!977706 () Bool)

(assert (=> d!676673 (=> res!977706 e!1465162)))

(assert (=> d!676673 (= res!977706 ((_ is Nil!27212) (tail!3301 otherP!12)))))

(assert (=> d!676673 (= (isPrefix!2341 (tail!3301 otherP!12) (tail!3301 input!1722)) lt!848684)))

(declare-fun b!2286847 () Bool)

(assert (=> b!2286847 (= e!1465163 (>= (size!21410 (tail!3301 input!1722)) (size!21410 (tail!3301 otherP!12))))))

(declare-fun b!2286845 () Bool)

(declare-fun res!977705 () Bool)

(declare-fun e!1465164 () Bool)

(assert (=> b!2286845 (=> (not res!977705) (not e!1465164))))

(assert (=> b!2286845 (= res!977705 (= (head!4972 (tail!3301 otherP!12)) (head!4972 (tail!3301 input!1722))))))

(declare-fun b!2286846 () Bool)

(assert (=> b!2286846 (= e!1465164 (isPrefix!2341 (tail!3301 (tail!3301 otherP!12)) (tail!3301 (tail!3301 input!1722))))))

(declare-fun b!2286844 () Bool)

(assert (=> b!2286844 (= e!1465162 e!1465164)))

(declare-fun res!977704 () Bool)

(assert (=> b!2286844 (=> (not res!977704) (not e!1465164))))

(assert (=> b!2286844 (= res!977704 (not ((_ is Nil!27212) (tail!3301 input!1722))))))

(assert (= (and d!676673 (not res!977706)) b!2286844))

(assert (= (and b!2286844 res!977704) b!2286845))

(assert (= (and b!2286845 res!977705) b!2286846))

(assert (= (and d!676673 (not res!977707)) b!2286847))

(assert (=> b!2286847 m!2713879))

(declare-fun m!2714729 () Bool)

(assert (=> b!2286847 m!2714729))

(assert (=> b!2286847 m!2713887))

(declare-fun m!2714731 () Bool)

(assert (=> b!2286847 m!2714731))

(assert (=> b!2286845 m!2713887))

(declare-fun m!2714733 () Bool)

(assert (=> b!2286845 m!2714733))

(assert (=> b!2286845 m!2713879))

(declare-fun m!2714735 () Bool)

(assert (=> b!2286845 m!2714735))

(assert (=> b!2286846 m!2713887))

(declare-fun m!2714737 () Bool)

(assert (=> b!2286846 m!2714737))

(assert (=> b!2286846 m!2713879))

(declare-fun m!2714739 () Bool)

(assert (=> b!2286846 m!2714739))

(assert (=> b!2286846 m!2714737))

(assert (=> b!2286846 m!2714739))

(declare-fun m!2714741 () Bool)

(assert (=> b!2286846 m!2714741))

(assert (=> b!2286139 d!676673))

(declare-fun d!676675 () Bool)

(assert (=> d!676675 (= (tail!3301 otherP!12) (t!204032 otherP!12))))

(assert (=> b!2286139 d!676675))

(declare-fun d!676677 () Bool)

(assert (=> d!676677 (= (tail!3301 input!1722) (t!204032 input!1722))))

(assert (=> b!2286139 d!676677))

(declare-fun d!676679 () Bool)

(declare-fun lt!848685 () Int)

(assert (=> d!676679 (>= lt!848685 0)))

(declare-fun e!1465165 () Int)

(assert (=> d!676679 (= lt!848685 e!1465165)))

(declare-fun c!362768 () Bool)

(assert (=> d!676679 (= c!362768 ((_ is Nil!27212) (t!204032 otherP!12)))))

(assert (=> d!676679 (= (size!21410 (t!204032 otherP!12)) lt!848685)))

(declare-fun b!2286848 () Bool)

(assert (=> b!2286848 (= e!1465165 0)))

(declare-fun b!2286849 () Bool)

(assert (=> b!2286849 (= e!1465165 (+ 1 (size!21410 (t!204032 (t!204032 otherP!12)))))))

(assert (= (and d!676679 c!362768) b!2286848))

(assert (= (and d!676679 (not c!362768)) b!2286849))

(declare-fun m!2714745 () Bool)

(assert (=> b!2286849 m!2714745))

(assert (=> b!2286130 d!676679))

(declare-fun d!676681 () Bool)

(assert (=> d!676681 (= (nullable!1858 (regex!4351 r!2363)) (nullableFct!448 (regex!4351 r!2363)))))

(declare-fun bs!456868 () Bool)

(assert (= bs!456868 d!676681))

(declare-fun m!2714753 () Bool)

(assert (=> bs!456868 m!2714753))

(assert (=> b!2286097 d!676681))

(declare-fun d!676683 () Bool)

(declare-fun lt!848686 () Int)

(assert (=> d!676683 (>= lt!848686 0)))

(declare-fun e!1465166 () Int)

(assert (=> d!676683 (= lt!848686 e!1465166)))

(declare-fun c!362769 () Bool)

(assert (=> d!676683 (= c!362769 ((_ is Nil!27212) lt!848301))))

(assert (=> d!676683 (= (size!21410 lt!848301) lt!848686)))

(declare-fun b!2286850 () Bool)

(assert (=> b!2286850 (= e!1465166 0)))

(declare-fun b!2286851 () Bool)

(assert (=> b!2286851 (= e!1465166 (+ 1 (size!21410 (t!204032 lt!848301))))))

(assert (= (and d!676683 c!362769) b!2286850))

(assert (= (and d!676683 (not c!362769)) b!2286851))

(declare-fun m!2714767 () Bool)

(assert (=> b!2286851 m!2714767))

(assert (=> b!2286109 d!676683))

(assert (=> b!2286109 d!676337))

(declare-fun d!676685 () Bool)

(declare-fun lt!848687 () Int)

(assert (=> d!676685 (>= lt!848687 0)))

(declare-fun e!1465167 () Int)

(assert (=> d!676685 (= lt!848687 e!1465167)))

(declare-fun c!362770 () Bool)

(assert (=> d!676685 (= c!362770 ((_ is Nil!27212) (_2!16003 lt!848240)))))

(assert (=> d!676685 (= (size!21410 (_2!16003 lt!848240)) lt!848687)))

(declare-fun b!2286852 () Bool)

(assert (=> b!2286852 (= e!1465167 0)))

(declare-fun b!2286853 () Bool)

(assert (=> b!2286853 (= e!1465167 (+ 1 (size!21410 (t!204032 (_2!16003 lt!848240)))))))

(assert (= (and d!676685 c!362770) b!2286852))

(assert (= (and d!676685 (not c!362770)) b!2286853))

(declare-fun m!2714783 () Bool)

(assert (=> b!2286853 m!2714783))

(assert (=> b!2286109 d!676685))

(declare-fun bs!456870 () Bool)

(declare-fun d!676687 () Bool)

(assert (= bs!456870 (and d!676687 d!676641)))

(declare-fun lambda!85728 () Int)

(assert (=> bs!456870 (= lambda!85728 lambda!85719)))

(assert (=> d!676687 true))

(declare-fun lt!848690 () Bool)

(assert (=> d!676687 (= lt!848690 (rulesValidInductive!1529 thiss!16613 rules!1750))))

(assert (=> d!676687 (= lt!848690 (forall!5492 rules!1750 lambda!85728))))

(assert (=> d!676687 (= (rulesValid!1604 thiss!16613 rules!1750) lt!848690)))

(declare-fun bs!456871 () Bool)

(assert (= bs!456871 d!676687))

(assert (=> bs!456871 m!2713797))

(declare-fun m!2714843 () Bool)

(assert (=> bs!456871 m!2714843))

(assert (=> d!676273 d!676687))

(declare-fun d!676693 () Bool)

(assert (=> d!676693 (= (isEmpty!15477 (list!10632 (charsOf!2739 (head!4970 tokens!456)))) ((_ is Nil!27212) (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))

(assert (=> bm!136529 d!676693))

(declare-fun d!676695 () Bool)

(assert (=> d!676695 (= (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))) (isBalanced!2679 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))))

(declare-fun bs!456872 () Bool)

(assert (= bs!456872 d!676695))

(declare-fun m!2714845 () Bool)

(assert (=> bs!456872 m!2714845))

(assert (=> tb!136055 d!676695))

(declare-fun b!2286854 () Bool)

(declare-fun e!1465173 () Bool)

(assert (=> b!2286854 (= e!1465173 (matchR!2956 (derivativeStep!1517 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))) (head!4972 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))))) (tail!3301 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))))))))

(declare-fun b!2286855 () Bool)

(declare-fun e!1465171 () Bool)

(declare-fun lt!848691 () Bool)

(declare-fun call!136573 () Bool)

(assert (=> b!2286855 (= e!1465171 (= lt!848691 call!136573))))

(declare-fun b!2286856 () Bool)

(declare-fun res!977715 () Bool)

(declare-fun e!1465169 () Bool)

(assert (=> b!2286856 (=> (not res!977715) (not e!1465169))))

(assert (=> b!2286856 (= res!977715 (isEmpty!15477 (tail!3301 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))))))))

(declare-fun b!2286857 () Bool)

(declare-fun e!1465172 () Bool)

(assert (=> b!2286857 (= e!1465172 (not lt!848691))))

(declare-fun b!2286858 () Bool)

(declare-fun e!1465170 () Bool)

(declare-fun e!1465168 () Bool)

(assert (=> b!2286858 (= e!1465170 e!1465168)))

(declare-fun res!977712 () Bool)

(assert (=> b!2286858 (=> (not res!977712) (not e!1465168))))

(assert (=> b!2286858 (= res!977712 (not lt!848691))))

(declare-fun b!2286859 () Bool)

(declare-fun res!977708 () Bool)

(assert (=> b!2286859 (=> res!977708 e!1465170)))

(assert (=> b!2286859 (= res!977708 e!1465169)))

(declare-fun res!977709 () Bool)

(assert (=> b!2286859 (=> (not res!977709) (not e!1465169))))

(assert (=> b!2286859 (= res!977709 lt!848691)))

(declare-fun b!2286860 () Bool)

(assert (=> b!2286860 (= e!1465171 e!1465172)))

(declare-fun c!362772 () Bool)

(assert (=> b!2286860 (= c!362772 ((_ is EmptyLang!6699) (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))))))

(declare-fun b!2286861 () Bool)

(declare-fun res!977710 () Bool)

(declare-fun e!1465174 () Bool)

(assert (=> b!2286861 (=> res!977710 e!1465174)))

(assert (=> b!2286861 (= res!977710 (not (isEmpty!15477 (tail!3301 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))))))))

(declare-fun b!2286862 () Bool)

(assert (=> b!2286862 (= e!1465168 e!1465174)))

(declare-fun res!977713 () Bool)

(assert (=> b!2286862 (=> res!977713 e!1465174)))

(assert (=> b!2286862 (= res!977713 call!136573)))

(declare-fun d!676697 () Bool)

(assert (=> d!676697 e!1465171))

(declare-fun c!362773 () Bool)

(assert (=> d!676697 (= c!362773 ((_ is EmptyExpr!6699) (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))))))

(assert (=> d!676697 (= lt!848691 e!1465173)))

(declare-fun c!362771 () Bool)

(assert (=> d!676697 (= c!362771 (isEmpty!15477 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))))))

(assert (=> d!676697 (validRegex!2520 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))))

(assert (=> d!676697 (= (matchR!2956 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))) (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))) lt!848691)))

(declare-fun b!2286863 () Bool)

(declare-fun res!977711 () Bool)

(assert (=> b!2286863 (=> res!977711 e!1465170)))

(assert (=> b!2286863 (= res!977711 (not ((_ is ElementMatch!6699) (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))))))

(assert (=> b!2286863 (= e!1465172 e!1465170)))

(declare-fun b!2286864 () Bool)

(declare-fun res!977714 () Bool)

(assert (=> b!2286864 (=> (not res!977714) (not e!1465169))))

(assert (=> b!2286864 (= res!977714 (not call!136573))))

(declare-fun b!2286865 () Bool)

(assert (=> b!2286865 (= e!1465174 (not (= (head!4972 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))) (c!362569 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))))))))

(declare-fun bm!136568 () Bool)

(assert (=> bm!136568 (= call!136573 (isEmpty!15477 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))))))

(declare-fun b!2286866 () Bool)

(assert (=> b!2286866 (= e!1465169 (= (head!4972 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))) (c!362569 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))))))

(declare-fun b!2286867 () Bool)

(assert (=> b!2286867 (= e!1465173 (nullable!1858 (regex!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))))))

(assert (= (and d!676697 c!362771) b!2286867))

(assert (= (and d!676697 (not c!362771)) b!2286854))

(assert (= (and d!676697 c!362773) b!2286855))

(assert (= (and d!676697 (not c!362773)) b!2286860))

(assert (= (and b!2286860 c!362772) b!2286857))

(assert (= (and b!2286860 (not c!362772)) b!2286863))

(assert (= (and b!2286863 (not res!977711)) b!2286859))

(assert (= (and b!2286859 res!977709) b!2286864))

(assert (= (and b!2286864 res!977714) b!2286856))

(assert (= (and b!2286856 res!977715) b!2286866))

(assert (= (and b!2286859 (not res!977708)) b!2286858))

(assert (= (and b!2286858 res!977712) b!2286862))

(assert (= (and b!2286862 (not res!977713)) b!2286861))

(assert (= (and b!2286861 (not res!977710)) b!2286865))

(assert (= (or b!2286855 b!2286862 b!2286864) bm!136568))

(assert (=> b!2286856 m!2713783))

(declare-fun m!2714847 () Bool)

(assert (=> b!2286856 m!2714847))

(assert (=> b!2286856 m!2714847))

(declare-fun m!2714849 () Bool)

(assert (=> b!2286856 m!2714849))

(assert (=> b!2286865 m!2713783))

(declare-fun m!2714851 () Bool)

(assert (=> b!2286865 m!2714851))

(assert (=> d!676697 m!2713783))

(declare-fun m!2714853 () Bool)

(assert (=> d!676697 m!2714853))

(declare-fun m!2714855 () Bool)

(assert (=> d!676697 m!2714855))

(assert (=> bm!136568 m!2713783))

(assert (=> bm!136568 m!2714853))

(declare-fun m!2714857 () Bool)

(assert (=> b!2286867 m!2714857))

(assert (=> b!2286861 m!2713783))

(assert (=> b!2286861 m!2714847))

(assert (=> b!2286861 m!2714847))

(assert (=> b!2286861 m!2714849))

(assert (=> b!2286866 m!2713783))

(assert (=> b!2286866 m!2714851))

(assert (=> b!2286854 m!2713783))

(assert (=> b!2286854 m!2714851))

(assert (=> b!2286854 m!2714851))

(declare-fun m!2714859 () Bool)

(assert (=> b!2286854 m!2714859))

(assert (=> b!2286854 m!2713783))

(assert (=> b!2286854 m!2714847))

(assert (=> b!2286854 m!2714859))

(assert (=> b!2286854 m!2714847))

(declare-fun m!2714861 () Bool)

(assert (=> b!2286854 m!2714861))

(assert (=> b!2286054 d!676697))

(assert (=> b!2286054 d!676577))

(declare-fun d!676699 () Bool)

(assert (=> d!676699 (= (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))) (list!10637 (c!362568 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))))))

(declare-fun bs!456873 () Bool)

(assert (= bs!456873 d!676699))

(declare-fun m!2714863 () Bool)

(assert (=> bs!456873 m!2714863))

(assert (=> b!2286054 d!676699))

(declare-fun d!676701 () Bool)

(declare-fun lt!848692 () BalanceConc!17428)

(assert (=> d!676701 (= (list!10632 lt!848692) (originalCharacters!5121 (_1!16003 (get!8206 lt!848285))))))

(assert (=> d!676701 (= lt!848692 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))) (value!137823 (_1!16003 (get!8206 lt!848285)))))))

(assert (=> d!676701 (= (charsOf!2739 (_1!16003 (get!8206 lt!848285))) lt!848692)))

(declare-fun b_lambda!72815 () Bool)

(assert (=> (not b_lambda!72815) (not d!676701)))

(declare-fun tb!136115 () Bool)

(declare-fun t!204173 () Bool)

(assert (=> (and b!2285894 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204173) tb!136115))

(declare-fun b!2286868 () Bool)

(declare-fun e!1465175 () Bool)

(declare-fun tp!724818 () Bool)

(assert (=> b!2286868 (= e!1465175 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))) (value!137823 (_1!16003 (get!8206 lt!848285)))))) tp!724818))))

(declare-fun result!165974 () Bool)

(assert (=> tb!136115 (= result!165974 (and (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))) (value!137823 (_1!16003 (get!8206 lt!848285))))) e!1465175))))

(assert (= tb!136115 b!2286868))

(declare-fun m!2714865 () Bool)

(assert (=> b!2286868 m!2714865))

(declare-fun m!2714867 () Bool)

(assert (=> tb!136115 m!2714867))

(assert (=> d!676701 t!204173))

(declare-fun b_and!181133 () Bool)

(assert (= b_and!181077 (and (=> t!204173 result!165974) b_and!181133)))

(declare-fun t!204175 () Bool)

(declare-fun tb!136117 () Bool)

(assert (=> (and b!2286400 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204175) tb!136117))

(declare-fun result!165976 () Bool)

(assert (= result!165976 result!165974))

(assert (=> d!676701 t!204175))

(declare-fun b_and!181135 () Bool)

(assert (= b_and!181095 (and (=> t!204175 result!165976) b_and!181135)))

(declare-fun t!204177 () Bool)

(declare-fun tb!136119 () Bool)

(assert (=> (and b!2285910 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204177) tb!136119))

(declare-fun result!165978 () Bool)

(assert (= result!165978 result!165974))

(assert (=> d!676701 t!204177))

(declare-fun b_and!181137 () Bool)

(assert (= b_and!181073 (and (=> t!204177 result!165978) b_and!181137)))

(declare-fun tb!136121 () Bool)

(declare-fun t!204179 () Bool)

(assert (=> (and b!2286389 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204179) tb!136121))

(declare-fun result!165980 () Bool)

(assert (= result!165980 result!165974))

(assert (=> d!676701 t!204179))

(declare-fun b_and!181139 () Bool)

(assert (= b_and!181091 (and (=> t!204179 result!165980) b_and!181139)))

(declare-fun tb!136123 () Bool)

(declare-fun t!204181 () Bool)

(assert (=> (and b!2285891 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204181) tb!136123))

(declare-fun result!165982 () Bool)

(assert (= result!165982 result!165974))

(assert (=> d!676701 t!204181))

(declare-fun b_and!181141 () Bool)

(assert (= b_and!181079 (and (=> t!204181 result!165982) b_and!181141)))

(declare-fun tb!136125 () Bool)

(declare-fun t!204183 () Bool)

(assert (=> (and b!2285886 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204183) tb!136125))

(declare-fun result!165984 () Bool)

(assert (= result!165984 result!165974))

(assert (=> d!676701 t!204183))

(declare-fun b_and!181143 () Bool)

(assert (= b_and!181075 (and (=> t!204183 result!165984) b_and!181143)))

(declare-fun m!2714869 () Bool)

(assert (=> d!676701 m!2714869))

(declare-fun m!2714871 () Bool)

(assert (=> d!676701 m!2714871))

(assert (=> b!2286054 d!676701))

(declare-fun b!2286869 () Bool)

(declare-fun e!1465178 () Bool)

(assert (=> b!2286869 (= e!1465178 (inv!16 (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))

(declare-fun b!2286870 () Bool)

(declare-fun res!977716 () Bool)

(declare-fun e!1465177 () Bool)

(assert (=> b!2286870 (=> res!977716 e!1465177)))

(assert (=> b!2286870 (= res!977716 (not ((_ is IntegerValue!13541) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))))

(declare-fun e!1465176 () Bool)

(assert (=> b!2286870 (= e!1465176 e!1465177)))

(declare-fun b!2286871 () Bool)

(assert (=> b!2286871 (= e!1465178 e!1465176)))

(declare-fun c!362775 () Bool)

(assert (=> b!2286871 (= c!362775 ((_ is IntegerValue!13540) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))

(declare-fun b!2286872 () Bool)

(assert (=> b!2286872 (= e!1465176 (inv!17 (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))

(declare-fun d!676703 () Bool)

(declare-fun c!362774 () Bool)

(assert (=> d!676703 (= c!362774 ((_ is IntegerValue!13539) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))

(assert (=> d!676703 (= (inv!21 (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)) e!1465178)))

(declare-fun b!2286873 () Bool)

(assert (=> b!2286873 (= e!1465177 (inv!15 (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))

(assert (= (and d!676703 c!362774) b!2286869))

(assert (= (and d!676703 (not c!362774)) b!2286871))

(assert (= (and b!2286871 c!362775) b!2286872))

(assert (= (and b!2286871 (not c!362775)) b!2286870))

(assert (= (and b!2286870 (not res!977716)) b!2286873))

(declare-fun m!2714873 () Bool)

(assert (=> b!2286869 m!2714873))

(declare-fun m!2714875 () Bool)

(assert (=> b!2286872 m!2714875))

(declare-fun m!2714877 () Bool)

(assert (=> b!2286873 m!2714877))

(assert (=> tb!136015 d!676703))

(declare-fun d!676705 () Bool)

(assert (=> d!676705 (= (isDefined!4224 lt!848285) (not (isEmpty!15482 lt!848285)))))

(declare-fun bs!456874 () Bool)

(assert (= bs!456874 d!676705))

(assert (=> bs!456874 m!2713791))

(assert (=> b!2286053 d!676705))

(declare-fun d!676707 () Bool)

(declare-fun charsToBigInt!1 (List!27305) Int)

(assert (=> d!676707 (= (inv!17 (value!137823 (h!32614 tokens!456))) (= (charsToBigInt!1 (text!32039 (value!137823 (h!32614 tokens!456)))) (value!137815 (value!137823 (h!32614 tokens!456)))))))

(declare-fun bs!456875 () Bool)

(assert (= bs!456875 d!676707))

(declare-fun m!2714879 () Bool)

(assert (=> bs!456875 m!2714879))

(assert (=> b!2286373 d!676707))

(assert (=> d!676323 d!676693))

(declare-fun d!676709 () Bool)

(declare-fun res!977719 () Bool)

(declare-fun e!1465180 () Bool)

(assert (=> d!676709 (=> res!977719 e!1465180)))

(assert (=> d!676709 (= res!977719 ((_ is ElementMatch!6699) (regex!4351 r!2363)))))

(assert (=> d!676709 (= (validRegex!2520 (regex!4351 r!2363)) e!1465180)))

(declare-fun b!2286874 () Bool)

(declare-fun e!1465179 () Bool)

(declare-fun call!136576 () Bool)

(assert (=> b!2286874 (= e!1465179 call!136576)))

(declare-fun b!2286875 () Bool)

(declare-fun e!1465181 () Bool)

(declare-fun e!1465182 () Bool)

(assert (=> b!2286875 (= e!1465181 e!1465182)))

(declare-fun res!977720 () Bool)

(assert (=> b!2286875 (=> (not res!977720) (not e!1465182))))

(assert (=> b!2286875 (= res!977720 call!136576)))

(declare-fun call!136575 () Bool)

(declare-fun c!362777 () Bool)

(declare-fun c!362776 () Bool)

(declare-fun bm!136569 () Bool)

(assert (=> bm!136569 (= call!136575 (validRegex!2520 (ite c!362777 (reg!7028 (regex!4351 r!2363)) (ite c!362776 (regOne!13911 (regex!4351 r!2363)) (regTwo!13910 (regex!4351 r!2363))))))))

(declare-fun bm!136570 () Bool)

(assert (=> bm!136570 (= call!136576 (validRegex!2520 (ite c!362776 (regTwo!13911 (regex!4351 r!2363)) (regOne!13910 (regex!4351 r!2363)))))))

(declare-fun b!2286876 () Bool)

(declare-fun e!1465184 () Bool)

(declare-fun e!1465183 () Bool)

(assert (=> b!2286876 (= e!1465184 e!1465183)))

(declare-fun res!977718 () Bool)

(assert (=> b!2286876 (= res!977718 (not (nullable!1858 (reg!7028 (regex!4351 r!2363)))))))

(assert (=> b!2286876 (=> (not res!977718) (not e!1465183))))

(declare-fun b!2286877 () Bool)

(assert (=> b!2286877 (= e!1465183 call!136575)))

(declare-fun b!2286878 () Bool)

(assert (=> b!2286878 (= e!1465180 e!1465184)))

(assert (=> b!2286878 (= c!362777 ((_ is Star!6699) (regex!4351 r!2363)))))

(declare-fun bm!136571 () Bool)

(declare-fun call!136574 () Bool)

(assert (=> bm!136571 (= call!136574 call!136575)))

(declare-fun b!2286879 () Bool)

(declare-fun res!977721 () Bool)

(assert (=> b!2286879 (=> res!977721 e!1465181)))

(assert (=> b!2286879 (= res!977721 (not ((_ is Concat!11213) (regex!4351 r!2363))))))

(declare-fun e!1465185 () Bool)

(assert (=> b!2286879 (= e!1465185 e!1465181)))

(declare-fun b!2286880 () Bool)

(assert (=> b!2286880 (= e!1465184 e!1465185)))

(assert (=> b!2286880 (= c!362776 ((_ is Union!6699) (regex!4351 r!2363)))))

(declare-fun b!2286881 () Bool)

(declare-fun res!977717 () Bool)

(assert (=> b!2286881 (=> (not res!977717) (not e!1465179))))

(assert (=> b!2286881 (= res!977717 call!136574)))

(assert (=> b!2286881 (= e!1465185 e!1465179)))

(declare-fun b!2286882 () Bool)

(assert (=> b!2286882 (= e!1465182 call!136574)))

(assert (= (and d!676709 (not res!977719)) b!2286878))

(assert (= (and b!2286878 c!362777) b!2286876))

(assert (= (and b!2286878 (not c!362777)) b!2286880))

(assert (= (and b!2286876 res!977718) b!2286877))

(assert (= (and b!2286880 c!362776) b!2286881))

(assert (= (and b!2286880 (not c!362776)) b!2286879))

(assert (= (and b!2286881 res!977717) b!2286874))

(assert (= (and b!2286879 (not res!977721)) b!2286875))

(assert (= (and b!2286875 res!977720) b!2286882))

(assert (= (or b!2286881 b!2286882) bm!136571))

(assert (= (or b!2286874 b!2286875) bm!136570))

(assert (= (or b!2286877 bm!136571) bm!136569))

(declare-fun m!2714881 () Bool)

(assert (=> bm!136569 m!2714881))

(declare-fun m!2714883 () Bool)

(assert (=> bm!136570 m!2714883))

(declare-fun m!2714885 () Bool)

(assert (=> b!2286876 m!2714885))

(assert (=> d!676323 d!676709))

(declare-fun d!676711 () Bool)

(declare-fun c!362780 () Bool)

(assert (=> d!676711 (= c!362780 ((_ is Node!8850) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))))))

(declare-fun e!1465190 () Bool)

(assert (=> d!676711 (= (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))) e!1465190)))

(declare-fun b!2286889 () Bool)

(declare-fun inv!36811 (Conc!8850) Bool)

(assert (=> b!2286889 (= e!1465190 (inv!36811 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))))))

(declare-fun b!2286890 () Bool)

(declare-fun e!1465191 () Bool)

(assert (=> b!2286890 (= e!1465190 e!1465191)))

(declare-fun res!977724 () Bool)

(assert (=> b!2286890 (= res!977724 (not ((_ is Leaf!13011) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))))))))

(assert (=> b!2286890 (=> res!977724 e!1465191)))

(declare-fun b!2286891 () Bool)

(declare-fun inv!36812 (Conc!8850) Bool)

(assert (=> b!2286891 (= e!1465191 (inv!36812 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))))))

(assert (= (and d!676711 c!362780) b!2286889))

(assert (= (and d!676711 (not c!362780)) b!2286890))

(assert (= (and b!2286890 (not res!977724)) b!2286891))

(declare-fun m!2714887 () Bool)

(assert (=> b!2286889 m!2714887))

(declare-fun m!2714889 () Bool)

(assert (=> b!2286891 m!2714889))

(assert (=> b!2286098 d!676711))

(declare-fun b!2286902 () Bool)

(declare-fun e!1465197 () List!27307)

(declare-fun list!10640 (IArray!17707) List!27307)

(assert (=> b!2286902 (= e!1465197 (list!10640 (xs!11793 (c!362570 (_1!16004 lt!848244)))))))

(declare-fun b!2286901 () Bool)

(declare-fun e!1465196 () List!27307)

(assert (=> b!2286901 (= e!1465196 e!1465197)))

(declare-fun c!362786 () Bool)

(assert (=> b!2286901 (= c!362786 ((_ is Leaf!13012) (c!362570 (_1!16004 lt!848244))))))

(declare-fun b!2286903 () Bool)

(assert (=> b!2286903 (= e!1465197 (++!6648 (list!10636 (left!20631 (c!362570 (_1!16004 lt!848244)))) (list!10636 (right!20961 (c!362570 (_1!16004 lt!848244))))))))

(declare-fun b!2286900 () Bool)

(assert (=> b!2286900 (= e!1465196 Nil!27213)))

(declare-fun d!676713 () Bool)

(declare-fun c!362785 () Bool)

(assert (=> d!676713 (= c!362785 ((_ is Empty!8851) (c!362570 (_1!16004 lt!848244))))))

(assert (=> d!676713 (= (list!10636 (c!362570 (_1!16004 lt!848244))) e!1465196)))

(assert (= (and d!676713 c!362785) b!2286900))

(assert (= (and d!676713 (not c!362785)) b!2286901))

(assert (= (and b!2286901 c!362786) b!2286902))

(assert (= (and b!2286901 (not c!362786)) b!2286903))

(declare-fun m!2714891 () Bool)

(assert (=> b!2286902 m!2714891))

(declare-fun m!2714893 () Bool)

(assert (=> b!2286903 m!2714893))

(declare-fun m!2714895 () Bool)

(assert (=> b!2286903 m!2714895))

(assert (=> b!2286903 m!2714893))

(assert (=> b!2286903 m!2714895))

(declare-fun m!2714897 () Bool)

(assert (=> b!2286903 m!2714897))

(assert (=> d!676275 d!676713))

(assert (=> d!676261 d!676285))

(declare-fun bs!456876 () Bool)

(declare-fun d!676715 () Bool)

(assert (= bs!456876 (and d!676715 d!676351)))

(declare-fun lambda!85729 () Int)

(assert (=> bs!456876 (= lambda!85729 lambda!85703)))

(declare-fun bs!456877 () Bool)

(assert (= bs!456877 (and d!676715 d!676647)))

(assert (=> bs!456877 (= (and (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (h!32615 rules!1750)))) (= (toValue!6137 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 (h!32615 rules!1750))))) (= lambda!85729 lambda!85725))))

(assert (=> d!676715 true))

(assert (=> d!676715 (< (dynLambda!11809 order!15167 (toChars!5996 (transformation!4351 r!2363))) (dynLambda!11808 order!15165 lambda!85729))))

(assert (=> d!676715 true))

(assert (=> d!676715 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 r!2363))) (dynLambda!11808 order!15165 lambda!85729))))

(assert (=> d!676715 (= (semiInverseModEq!1760 (toChars!5996 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 r!2363))) (Forall!1089 lambda!85729))))

(declare-fun bs!456878 () Bool)

(assert (= bs!456878 d!676715))

(declare-fun m!2714899 () Bool)

(assert (=> bs!456878 m!2714899))

(assert (=> d!676295 d!676715))

(declare-fun d!676717 () Bool)

(declare-fun lt!848699 () Int)

(assert (=> d!676717 (>= lt!848699 0)))

(declare-fun e!1465204 () Int)

(assert (=> d!676717 (= lt!848699 e!1465204)))

(declare-fun c!362791 () Bool)

(assert (=> d!676717 (= c!362791 ((_ is Nil!27212) (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))

(assert (=> d!676717 (= (size!21410 (list!10632 (charsOf!2739 (head!4970 tokens!456)))) lt!848699)))

(declare-fun b!2286914 () Bool)

(assert (=> b!2286914 (= e!1465204 0)))

(declare-fun b!2286915 () Bool)

(assert (=> b!2286915 (= e!1465204 (+ 1 (size!21410 (t!204032 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))

(assert (= (and d!676717 c!362791) b!2286914))

(assert (= (and d!676717 (not c!362791)) b!2286915))

(declare-fun m!2714901 () Bool)

(assert (=> b!2286915 m!2714901))

(assert (=> d!676419 d!676717))

(assert (=> d!676419 d!676325))

(declare-fun d!676719 () Bool)

(declare-fun lt!848705 () Int)

(assert (=> d!676719 (= lt!848705 (size!21410 (list!10637 (c!362568 (charsOf!2739 (head!4970 tokens!456))))))))

(assert (=> d!676719 (= lt!848705 (ite ((_ is Empty!8850) (c!362568 (charsOf!2739 (head!4970 tokens!456)))) 0 (ite ((_ is Leaf!13011) (c!362568 (charsOf!2739 (head!4970 tokens!456)))) (csize!17931 (c!362568 (charsOf!2739 (head!4970 tokens!456)))) (csize!17930 (c!362568 (charsOf!2739 (head!4970 tokens!456)))))))))

(assert (=> d!676719 (= (size!21414 (c!362568 (charsOf!2739 (head!4970 tokens!456)))) lt!848705)))

(declare-fun bs!456879 () Bool)

(assert (= bs!456879 d!676719))

(assert (=> bs!456879 m!2713827))

(assert (=> bs!456879 m!2713827))

(declare-fun m!2714911 () Bool)

(assert (=> bs!456879 m!2714911))

(assert (=> d!676419 d!676719))

(declare-fun d!676721 () Bool)

(declare-fun e!1465208 () Bool)

(assert (=> d!676721 e!1465208))

(declare-fun res!977728 () Bool)

(assert (=> d!676721 (=> (not res!977728) (not e!1465208))))

(declare-fun lt!848706 () BalanceConc!17428)

(assert (=> d!676721 (= res!977728 (= (list!10632 lt!848706) input!1722))))

(assert (=> d!676721 (= lt!848706 (BalanceConc!17429 (fromList!536 input!1722)))))

(assert (=> d!676721 (= (fromListB!1370 input!1722) lt!848706)))

(declare-fun b!2286921 () Bool)

(assert (=> b!2286921 (= e!1465208 (isBalanced!2679 (fromList!536 input!1722)))))

(assert (= (and d!676721 res!977728) b!2286921))

(declare-fun m!2714917 () Bool)

(assert (=> d!676721 m!2714917))

(declare-fun m!2714919 () Bool)

(assert (=> d!676721 m!2714919))

(assert (=> b!2286921 m!2714919))

(assert (=> b!2286921 m!2714919))

(declare-fun m!2714923 () Bool)

(assert (=> b!2286921 m!2714923))

(assert (=> d!676281 d!676721))

(declare-fun d!676727 () Bool)

(assert (=> d!676727 (= (list!10632 (_2!16004 lt!848265)) (list!10637 (c!362568 (_2!16004 lt!848265))))))

(declare-fun bs!456882 () Bool)

(assert (= bs!456882 d!676727))

(declare-fun m!2714925 () Bool)

(assert (=> bs!456882 m!2714925))

(assert (=> b!2285988 d!676727))

(assert (=> b!2285988 d!676571))

(assert (=> b!2285988 d!676573))

(assert (=> b!2286051 d!676577))

(declare-fun d!676731 () Bool)

(assert (=> d!676731 (= (apply!6623 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))) (seqFromList!3055 (originalCharacters!5121 (_1!16003 (get!8206 lt!848285))))) (dynLambda!11806 (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))) (seqFromList!3055 (originalCharacters!5121 (_1!16003 (get!8206 lt!848285))))))))

(declare-fun b_lambda!72817 () Bool)

(assert (=> (not b_lambda!72817) (not d!676731)))

(declare-fun t!204187 () Bool)

(declare-fun tb!136127 () Bool)

(assert (=> (and b!2286389 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204187) tb!136127))

(declare-fun result!165986 () Bool)

(assert (=> tb!136127 (= result!165986 (inv!21 (dynLambda!11806 (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285))))) (seqFromList!3055 (originalCharacters!5121 (_1!16003 (get!8206 lt!848285)))))))))

(declare-fun m!2714927 () Bool)

(assert (=> tb!136127 m!2714927))

(assert (=> d!676731 t!204187))

(declare-fun b_and!181145 () Bool)

(assert (= b_and!181089 (and (=> t!204187 result!165986) b_and!181145)))

(declare-fun tb!136129 () Bool)

(declare-fun t!204189 () Bool)

(assert (=> (and b!2285891 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204189) tb!136129))

(declare-fun result!165988 () Bool)

(assert (= result!165988 result!165986))

(assert (=> d!676731 t!204189))

(declare-fun b_and!181147 () Bool)

(assert (= b_and!181087 (and (=> t!204189 result!165988) b_and!181147)))

(declare-fun tb!136131 () Bool)

(declare-fun t!204192 () Bool)

(assert (=> (and b!2285910 (= (toValue!6137 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204192) tb!136131))

(declare-fun result!165990 () Bool)

(assert (= result!165990 result!165986))

(assert (=> d!676731 t!204192))

(declare-fun b_and!181149 () Bool)

(assert (= b_and!181081 (and (=> t!204192 result!165990) b_and!181149)))

(declare-fun t!204194 () Bool)

(declare-fun tb!136133 () Bool)

(assert (=> (and b!2285894 (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204194) tb!136133))

(declare-fun result!165992 () Bool)

(assert (= result!165992 result!165986))

(assert (=> d!676731 t!204194))

(declare-fun b_and!181151 () Bool)

(assert (= b_and!181085 (and (=> t!204194 result!165992) b_and!181151)))

(declare-fun t!204196 () Bool)

(declare-fun tb!136135 () Bool)

(assert (=> (and b!2286400 (= (toValue!6137 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204196) tb!136135))

(declare-fun result!165994 () Bool)

(assert (= result!165994 result!165986))

(assert (=> d!676731 t!204196))

(declare-fun b_and!181153 () Bool)

(assert (= b_and!181093 (and (=> t!204196 result!165994) b_and!181153)))

(declare-fun tb!136137 () Bool)

(declare-fun t!204198 () Bool)

(assert (=> (and b!2285886 (= (toValue!6137 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204198) tb!136137))

(declare-fun result!165996 () Bool)

(assert (= result!165996 result!165986))

(assert (=> d!676731 t!204198))

(declare-fun b_and!181155 () Bool)

(assert (= b_and!181083 (and (=> t!204198 result!165996) b_and!181155)))

(assert (=> d!676731 m!2713787))

(declare-fun m!2714929 () Bool)

(assert (=> d!676731 m!2714929))

(assert (=> b!2286051 d!676731))

(declare-fun d!676733 () Bool)

(assert (=> d!676733 (= (seqFromList!3055 (originalCharacters!5121 (_1!16003 (get!8206 lt!848285)))) (fromListB!1370 (originalCharacters!5121 (_1!16003 (get!8206 lt!848285)))))))

(declare-fun bs!456883 () Bool)

(assert (= bs!456883 d!676733))

(declare-fun m!2714931 () Bool)

(assert (=> bs!456883 m!2714931))

(assert (=> b!2286051 d!676733))

(assert (=> b!2286358 d!676681))

(declare-fun d!676735 () Bool)

(declare-fun lt!848709 () Bool)

(assert (=> d!676735 (= lt!848709 (isEmpty!15476 (list!10633 (_1!16004 lt!848265))))))

(declare-fun isEmpty!15484 (Conc!8851) Bool)

(assert (=> d!676735 (= lt!848709 (isEmpty!15484 (c!362570 (_1!16004 lt!848265))))))

(assert (=> d!676735 (= (isEmpty!15481 (_1!16004 lt!848265)) lt!848709)))

(declare-fun bs!456886 () Bool)

(assert (= bs!456886 d!676735))

(assert (=> bs!456886 m!2713713))

(assert (=> bs!456886 m!2713713))

(declare-fun m!2714941 () Bool)

(assert (=> bs!456886 m!2714941))

(declare-fun m!2714943 () Bool)

(assert (=> bs!456886 m!2714943))

(assert (=> b!2285986 d!676735))

(assert (=> b!2286049 d!676699))

(assert (=> b!2286049 d!676701))

(assert (=> b!2286049 d!676577))

(declare-fun d!676739 () Bool)

(declare-fun e!1465217 () Bool)

(assert (=> d!676739 e!1465217))

(declare-fun res!977732 () Bool)

(assert (=> d!676739 (=> res!977732 e!1465217)))

(declare-fun lt!848710 () Bool)

(assert (=> d!676739 (= res!977732 (not lt!848710))))

(declare-fun e!1465216 () Bool)

(assert (=> d!676739 (= lt!848710 e!1465216)))

(declare-fun res!977731 () Bool)

(assert (=> d!676739 (=> res!977731 e!1465216)))

(assert (=> d!676739 (= res!977731 ((_ is Nil!27212) lt!848247))))

(assert (=> d!676739 (= (isPrefix!2341 lt!848247 (++!6647 lt!848247 (_2!16003 lt!848240))) lt!848710)))

(declare-fun b!2286937 () Bool)

(assert (=> b!2286937 (= e!1465217 (>= (size!21410 (++!6647 lt!848247 (_2!16003 lt!848240))) (size!21410 lt!848247)))))

(declare-fun b!2286935 () Bool)

(declare-fun res!977730 () Bool)

(declare-fun e!1465218 () Bool)

(assert (=> b!2286935 (=> (not res!977730) (not e!1465218))))

(assert (=> b!2286935 (= res!977730 (= (head!4972 lt!848247) (head!4972 (++!6647 lt!848247 (_2!16003 lt!848240)))))))

(declare-fun b!2286936 () Bool)

(assert (=> b!2286936 (= e!1465218 (isPrefix!2341 (tail!3301 lt!848247) (tail!3301 (++!6647 lt!848247 (_2!16003 lt!848240)))))))

(declare-fun b!2286934 () Bool)

(assert (=> b!2286934 (= e!1465216 e!1465218)))

(declare-fun res!977729 () Bool)

(assert (=> b!2286934 (=> (not res!977729) (not e!1465218))))

(assert (=> b!2286934 (= res!977729 (not ((_ is Nil!27212) (++!6647 lt!848247 (_2!16003 lt!848240)))))))

(assert (= (and d!676739 (not res!977731)) b!2286934))

(assert (= (and b!2286934 res!977729) b!2286935))

(assert (= (and b!2286935 res!977730) b!2286936))

(assert (= (and d!676739 (not res!977732)) b!2286937))

(assert (=> b!2286937 m!2713609))

(declare-fun m!2714947 () Bool)

(assert (=> b!2286937 m!2714947))

(assert (=> b!2286937 m!2713613))

(assert (=> b!2286935 m!2713863))

(assert (=> b!2286935 m!2713609))

(declare-fun m!2714949 () Bool)

(assert (=> b!2286935 m!2714949))

(assert (=> b!2286936 m!2713867))

(assert (=> b!2286936 m!2713609))

(declare-fun m!2714953 () Bool)

(assert (=> b!2286936 m!2714953))

(assert (=> b!2286936 m!2713867))

(assert (=> b!2286936 m!2714953))

(declare-fun m!2714957 () Bool)

(assert (=> b!2286936 m!2714957))

(assert (=> d!676333 d!676739))

(assert (=> d!676333 d!676331))

(declare-fun d!676745 () Bool)

(assert (=> d!676745 (isPrefix!2341 lt!848247 (++!6647 lt!848247 (_2!16003 lt!848240)))))

(assert (=> d!676745 true))

(declare-fun _$46!1323 () Unit!40112)

(assert (=> d!676745 (= (choose!13343 lt!848247 (_2!16003 lt!848240)) _$46!1323)))

(declare-fun bs!456889 () Bool)

(assert (= bs!456889 d!676745))

(assert (=> bs!456889 m!2713609))

(assert (=> bs!456889 m!2713609))

(assert (=> bs!456889 m!2713853))

(assert (=> d!676333 d!676745))

(declare-fun bs!456890 () Bool)

(declare-fun d!676747 () Bool)

(assert (= bs!456890 (and d!676747 d!676643)))

(declare-fun lambda!85731 () Int)

(assert (=> bs!456890 (= (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (= lambda!85731 lambda!85722))))

(assert (=> d!676747 true))

(assert (=> d!676747 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 otherR!12))) (dynLambda!11811 order!15171 lambda!85731))))

(assert (=> d!676747 (= (equivClasses!1679 (toChars!5996 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 otherR!12))) (Forall2!706 lambda!85731))))

(declare-fun bs!456891 () Bool)

(assert (= bs!456891 d!676747))

(declare-fun m!2714959 () Bool)

(assert (=> bs!456891 m!2714959))

(assert (=> b!2285971 d!676747))

(declare-fun d!676749 () Bool)

(assert (=> d!676749 (= (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))) (isBalanced!2679 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))))))

(declare-fun bs!456893 () Bool)

(assert (= bs!456893 d!676749))

(declare-fun m!2714963 () Bool)

(assert (=> bs!456893 m!2714963))

(assert (=> tb!135991 d!676749))

(declare-fun d!676753 () Bool)

(assert (=> d!676753 (= (_2!16003 lt!848240) lt!848243)))

(assert (=> d!676753 true))

(declare-fun _$63!820 () Unit!40112)

(assert (=> d!676753 (= (choose!13342 lt!848247 (_2!16003 lt!848240) lt!848247 lt!848243 input!1722) _$63!820)))

(assert (=> d!676329 d!676753))

(declare-fun d!676755 () Bool)

(declare-fun e!1465229 () Bool)

(assert (=> d!676755 e!1465229))

(declare-fun res!977743 () Bool)

(assert (=> d!676755 (=> res!977743 e!1465229)))

(declare-fun lt!848712 () Bool)

(assert (=> d!676755 (= res!977743 (not lt!848712))))

(declare-fun e!1465228 () Bool)

(assert (=> d!676755 (= lt!848712 e!1465228)))

(declare-fun res!977742 () Bool)

(assert (=> d!676755 (=> res!977742 e!1465228)))

(assert (=> d!676755 (= res!977742 ((_ is Nil!27212) lt!848247))))

(assert (=> d!676755 (= (isPrefix!2341 lt!848247 input!1722) lt!848712)))

(declare-fun b!2286952 () Bool)

(assert (=> b!2286952 (= e!1465229 (>= (size!21410 input!1722) (size!21410 lt!848247)))))

(declare-fun b!2286950 () Bool)

(declare-fun res!977741 () Bool)

(declare-fun e!1465230 () Bool)

(assert (=> b!2286950 (=> (not res!977741) (not e!1465230))))

(assert (=> b!2286950 (= res!977741 (= (head!4972 lt!848247) (head!4972 input!1722)))))

(declare-fun b!2286951 () Bool)

(assert (=> b!2286951 (= e!1465230 (isPrefix!2341 (tail!3301 lt!848247) (tail!3301 input!1722)))))

(declare-fun b!2286949 () Bool)

(assert (=> b!2286949 (= e!1465228 e!1465230)))

(declare-fun res!977740 () Bool)

(assert (=> b!2286949 (=> (not res!977740) (not e!1465230))))

(assert (=> b!2286949 (= res!977740 (not ((_ is Nil!27212) input!1722)))))

(assert (= (and d!676755 (not res!977742)) b!2286949))

(assert (= (and b!2286949 res!977740) b!2286950))

(assert (= (and b!2286950 res!977741) b!2286951))

(assert (= (and d!676755 (not res!977743)) b!2286952))

(assert (=> b!2286952 m!2713779))

(assert (=> b!2286952 m!2713613))

(assert (=> b!2286950 m!2713863))

(assert (=> b!2286950 m!2713885))

(assert (=> b!2286951 m!2713867))

(assert (=> b!2286951 m!2713879))

(assert (=> b!2286951 m!2713867))

(assert (=> b!2286951 m!2713879))

(declare-fun m!2714971 () Bool)

(assert (=> b!2286951 m!2714971))

(assert (=> d!676329 d!676755))

(declare-fun d!676759 () Bool)

(declare-fun lt!848713 () Bool)

(assert (=> d!676759 (= lt!848713 (select (content!3646 rules!1750) (rule!6679 (_1!16003 (get!8206 lt!848285)))))))

(declare-fun e!1465232 () Bool)

(assert (=> d!676759 (= lt!848713 e!1465232)))

(declare-fun res!977745 () Bool)

(assert (=> d!676759 (=> (not res!977745) (not e!1465232))))

(assert (=> d!676759 (= res!977745 ((_ is Cons!27214) rules!1750))))

(assert (=> d!676759 (= (contains!4725 rules!1750 (rule!6679 (_1!16003 (get!8206 lt!848285)))) lt!848713)))

(declare-fun b!2286953 () Bool)

(declare-fun e!1465231 () Bool)

(assert (=> b!2286953 (= e!1465232 e!1465231)))

(declare-fun res!977744 () Bool)

(assert (=> b!2286953 (=> res!977744 e!1465231)))

(assert (=> b!2286953 (= res!977744 (= (h!32615 rules!1750) (rule!6679 (_1!16003 (get!8206 lt!848285)))))))

(declare-fun b!2286954 () Bool)

(assert (=> b!2286954 (= e!1465231 (contains!4725 (t!204034 rules!1750) (rule!6679 (_1!16003 (get!8206 lt!848285)))))))

(assert (= (and d!676759 res!977745) b!2286953))

(assert (= (and b!2286953 (not res!977744)) b!2286954))

(assert (=> d!676759 m!2713685))

(declare-fun m!2714973 () Bool)

(assert (=> d!676759 m!2714973))

(declare-fun m!2714975 () Bool)

(assert (=> b!2286954 m!2714975))

(assert (=> b!2286047 d!676759))

(assert (=> b!2286047 d!676577))

(declare-fun d!676763 () Bool)

(declare-fun res!977754 () Bool)

(declare-fun e!1465240 () Bool)

(assert (=> d!676763 (=> res!977754 e!1465240)))

(assert (=> d!676763 (= res!977754 ((_ is Nil!27214) rules!1750))))

(assert (=> d!676763 (= (noDuplicateTag!1602 thiss!16613 rules!1750 Nil!27216) e!1465240)))

(declare-fun b!2286963 () Bool)

(declare-fun e!1465241 () Bool)

(assert (=> b!2286963 (= e!1465240 e!1465241)))

(declare-fun res!977755 () Bool)

(assert (=> b!2286963 (=> (not res!977755) (not e!1465241))))

(declare-fun contains!4727 (List!27310 String!29669) Bool)

(assert (=> b!2286963 (= res!977755 (not (contains!4727 Nil!27216 (tag!4841 (h!32615 rules!1750)))))))

(declare-fun b!2286964 () Bool)

(assert (=> b!2286964 (= e!1465241 (noDuplicateTag!1602 thiss!16613 (t!204034 rules!1750) (Cons!27216 (tag!4841 (h!32615 rules!1750)) Nil!27216)))))

(assert (= (and d!676763 (not res!977754)) b!2286963))

(assert (= (and b!2286963 res!977755) b!2286964))

(declare-fun m!2714981 () Bool)

(assert (=> b!2286963 m!2714981))

(declare-fun m!2714983 () Bool)

(assert (=> b!2286964 m!2714983))

(assert (=> b!2285974 d!676763))

(declare-fun d!676769 () Bool)

(declare-fun lt!848718 () Bool)

(assert (=> d!676769 (= lt!848718 (select (content!3646 (t!204034 rules!1750)) otherR!12))))

(declare-fun e!1465243 () Bool)

(assert (=> d!676769 (= lt!848718 e!1465243)))

(declare-fun res!977757 () Bool)

(assert (=> d!676769 (=> (not res!977757) (not e!1465243))))

(assert (=> d!676769 (= res!977757 ((_ is Cons!27214) (t!204034 rules!1750)))))

(assert (=> d!676769 (= (contains!4725 (t!204034 rules!1750) otherR!12) lt!848718)))

(declare-fun b!2286965 () Bool)

(declare-fun e!1465242 () Bool)

(assert (=> b!2286965 (= e!1465243 e!1465242)))

(declare-fun res!977756 () Bool)

(assert (=> b!2286965 (=> res!977756 e!1465242)))

(assert (=> b!2286965 (= res!977756 (= (h!32615 (t!204034 rules!1750)) otherR!12))))

(declare-fun b!2286966 () Bool)

(assert (=> b!2286966 (= e!1465242 (contains!4725 (t!204034 (t!204034 rules!1750)) otherR!12))))

(assert (= (and d!676769 res!977757) b!2286965))

(assert (= (and b!2286965 (not res!977756)) b!2286966))

(assert (=> d!676769 m!2714407))

(declare-fun m!2714985 () Bool)

(assert (=> d!676769 m!2714985))

(declare-fun m!2714987 () Bool)

(assert (=> b!2286966 m!2714987))

(assert (=> b!2285946 d!676769))

(declare-fun bs!456895 () Bool)

(declare-fun d!676771 () Bool)

(assert (= bs!456895 (and d!676771 d!676643)))

(declare-fun lambda!85732 () Int)

(assert (=> bs!456895 (= (= (toValue!6137 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (= lambda!85732 lambda!85722))))

(declare-fun bs!456896 () Bool)

(assert (= bs!456896 (and d!676771 d!676747)))

(assert (=> bs!456896 (= (= (toValue!6137 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 otherR!12))) (= lambda!85732 lambda!85731))))

(assert (=> d!676771 true))

(assert (=> d!676771 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 (h!32615 rules!1750)))) (dynLambda!11811 order!15171 lambda!85732))))

(assert (=> d!676771 (= (equivClasses!1679 (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toValue!6137 (transformation!4351 (h!32615 rules!1750)))) (Forall2!706 lambda!85732))))

(declare-fun bs!456897 () Bool)

(assert (= bs!456897 d!676771))

(declare-fun m!2714989 () Bool)

(assert (=> bs!456897 m!2714989))

(assert (=> b!2285992 d!676771))

(assert (=> b!2286086 d!676565))

(assert (=> b!2286086 d!676567))

(assert (=> d!676421 d!676709))

(declare-fun bs!456898 () Bool)

(declare-fun d!676773 () Bool)

(assert (= bs!456898 (and d!676773 d!676351)))

(declare-fun lambda!85735 () Int)

(assert (=> bs!456898 (= (and (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 r!2363))) (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 r!2363)))) (= lambda!85735 lambda!85703))))

(declare-fun bs!456899 () Bool)

(assert (= bs!456899 (and d!676773 d!676647)))

(assert (=> bs!456899 (= (and (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 (h!32615 rules!1750)))) (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 (h!32615 rules!1750))))) (= lambda!85735 lambda!85725))))

(declare-fun bs!456900 () Bool)

(assert (= bs!456900 (and d!676773 d!676715)))

(assert (=> bs!456900 (= (and (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 r!2363))) (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 r!2363)))) (= lambda!85735 lambda!85729))))

(assert (=> d!676773 true))

(assert (=> d!676773 (< (dynLambda!11809 order!15167 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (dynLambda!11808 order!15165 lambda!85735))))

(assert (=> d!676773 true))

(assert (=> d!676773 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (dynLambda!11808 order!15165 lambda!85735))))

(assert (=> d!676773 (= (semiInverseModEq!1760 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (Forall!1089 lambda!85735))))

(declare-fun bs!456901 () Bool)

(assert (= bs!456901 d!676773))

(declare-fun m!2714991 () Bool)

(assert (=> bs!456901 m!2714991))

(assert (=> d!676429 d!676773))

(declare-fun d!676775 () Bool)

(declare-fun c!362804 () Bool)

(assert (=> d!676775 (= c!362804 ((_ is Nil!27214) rules!1750))))

(declare-fun e!1465252 () (InoxSet Rule!8502))

(assert (=> d!676775 (= (content!3646 rules!1750) e!1465252)))

(declare-fun b!2286977 () Bool)

(assert (=> b!2286977 (= e!1465252 ((as const (Array Rule!8502 Bool)) false))))

(declare-fun b!2286978 () Bool)

(assert (=> b!2286978 (= e!1465252 ((_ map or) (store ((as const (Array Rule!8502 Bool)) false) (h!32615 rules!1750) true) (content!3646 (t!204034 rules!1750))))))

(assert (= (and d!676775 c!362804) b!2286977))

(assert (= (and d!676775 (not c!362804)) b!2286978))

(declare-fun m!2714999 () Bool)

(assert (=> b!2286978 m!2714999))

(assert (=> b!2286978 m!2714407))

(assert (=> d!676285 d!676775))

(declare-fun b!2286979 () Bool)

(declare-fun e!1465258 () Bool)

(assert (=> b!2286979 (= e!1465258 (matchR!2956 (derivativeStep!1517 (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) (head!4972 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))) (tail!3301 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))

(declare-fun b!2286980 () Bool)

(declare-fun e!1465256 () Bool)

(declare-fun lt!848722 () Bool)

(declare-fun call!136580 () Bool)

(assert (=> b!2286980 (= e!1465256 (= lt!848722 call!136580))))

(declare-fun b!2286981 () Bool)

(declare-fun res!977771 () Bool)

(declare-fun e!1465254 () Bool)

(assert (=> b!2286981 (=> (not res!977771) (not e!1465254))))

(assert (=> b!2286981 (= res!977771 (isEmpty!15477 (tail!3301 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))

(declare-fun b!2286982 () Bool)

(declare-fun e!1465257 () Bool)

(assert (=> b!2286982 (= e!1465257 (not lt!848722))))

(declare-fun b!2286983 () Bool)

(declare-fun e!1465255 () Bool)

(declare-fun e!1465253 () Bool)

(assert (=> b!2286983 (= e!1465255 e!1465253)))

(declare-fun res!977768 () Bool)

(assert (=> b!2286983 (=> (not res!977768) (not e!1465253))))

(assert (=> b!2286983 (= res!977768 (not lt!848722))))

(declare-fun b!2286984 () Bool)

(declare-fun res!977764 () Bool)

(assert (=> b!2286984 (=> res!977764 e!1465255)))

(assert (=> b!2286984 (= res!977764 e!1465254)))

(declare-fun res!977765 () Bool)

(assert (=> b!2286984 (=> (not res!977765) (not e!1465254))))

(assert (=> b!2286984 (= res!977765 lt!848722)))

(declare-fun b!2286985 () Bool)

(assert (=> b!2286985 (= e!1465256 e!1465257)))

(declare-fun c!362806 () Bool)

(assert (=> b!2286985 (= c!362806 ((_ is EmptyLang!6699) (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))

(declare-fun b!2286986 () Bool)

(declare-fun res!977766 () Bool)

(declare-fun e!1465259 () Bool)

(assert (=> b!2286986 (=> res!977766 e!1465259)))

(assert (=> b!2286986 (= res!977766 (not (isEmpty!15477 (tail!3301 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))))

(declare-fun b!2286987 () Bool)

(assert (=> b!2286987 (= e!1465253 e!1465259)))

(declare-fun res!977769 () Bool)

(assert (=> b!2286987 (=> res!977769 e!1465259)))

(assert (=> b!2286987 (= res!977769 call!136580)))

(declare-fun d!676781 () Bool)

(assert (=> d!676781 e!1465256))

(declare-fun c!362807 () Bool)

(assert (=> d!676781 (= c!362807 ((_ is EmptyExpr!6699) (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))

(assert (=> d!676781 (= lt!848722 e!1465258)))

(declare-fun c!362805 () Bool)

(assert (=> d!676781 (= c!362805 (isEmpty!15477 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(assert (=> d!676781 (validRegex!2520 (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(assert (=> d!676781 (= (matchR!2956 (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) lt!848722)))

(declare-fun b!2286988 () Bool)

(declare-fun res!977767 () Bool)

(assert (=> b!2286988 (=> res!977767 e!1465255)))

(assert (=> b!2286988 (= res!977767 (not ((_ is ElementMatch!6699) (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))))

(assert (=> b!2286988 (= e!1465257 e!1465255)))

(declare-fun b!2286989 () Bool)

(declare-fun res!977770 () Bool)

(assert (=> b!2286989 (=> (not res!977770) (not e!1465254))))

(assert (=> b!2286989 (= res!977770 (not call!136580))))

(declare-fun b!2286990 () Bool)

(assert (=> b!2286990 (= e!1465259 (not (= (head!4972 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) (c!362569 (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))))

(declare-fun bm!136575 () Bool)

(assert (=> bm!136575 (= call!136580 (isEmpty!15477 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(declare-fun b!2286991 () Bool)

(assert (=> b!2286991 (= e!1465254 (= (head!4972 (tail!3301 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) (c!362569 (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))))

(declare-fun b!2286992 () Bool)

(assert (=> b!2286992 (= e!1465258 (nullable!1858 (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))))))))

(assert (= (and d!676781 c!362805) b!2286992))

(assert (= (and d!676781 (not c!362805)) b!2286979))

(assert (= (and d!676781 c!362807) b!2286980))

(assert (= (and d!676781 (not c!362807)) b!2286985))

(assert (= (and b!2286985 c!362806) b!2286982))

(assert (= (and b!2286985 (not c!362806)) b!2286988))

(assert (= (and b!2286988 (not res!977767)) b!2286984))

(assert (= (and b!2286984 res!977765) b!2286989))

(assert (= (and b!2286989 res!977770) b!2286981))

(assert (= (and b!2286981 res!977771) b!2286991))

(assert (= (and b!2286984 (not res!977764)) b!2286983))

(assert (= (and b!2286983 res!977768) b!2286987))

(assert (= (and b!2286987 (not res!977769)) b!2286986))

(assert (= (and b!2286986 (not res!977766)) b!2286990))

(assert (= (or b!2286980 b!2286987 b!2286989) bm!136575))

(assert (=> b!2286981 m!2713811))

(declare-fun m!2715007 () Bool)

(assert (=> b!2286981 m!2715007))

(assert (=> b!2286981 m!2715007))

(declare-fun m!2715009 () Bool)

(assert (=> b!2286981 m!2715009))

(assert (=> b!2286990 m!2713811))

(declare-fun m!2715011 () Bool)

(assert (=> b!2286990 m!2715011))

(assert (=> d!676781 m!2713811))

(assert (=> d!676781 m!2713813))

(assert (=> d!676781 m!2713823))

(declare-fun m!2715013 () Bool)

(assert (=> d!676781 m!2715013))

(assert (=> bm!136575 m!2713811))

(assert (=> bm!136575 m!2713813))

(assert (=> b!2286992 m!2713823))

(declare-fun m!2715015 () Bool)

(assert (=> b!2286992 m!2715015))

(assert (=> b!2286986 m!2713811))

(assert (=> b!2286986 m!2715007))

(assert (=> b!2286986 m!2715007))

(assert (=> b!2286986 m!2715009))

(assert (=> b!2286991 m!2713811))

(assert (=> b!2286991 m!2715011))

(assert (=> b!2286979 m!2713811))

(assert (=> b!2286979 m!2715011))

(assert (=> b!2286979 m!2713823))

(assert (=> b!2286979 m!2715011))

(declare-fun m!2715017 () Bool)

(assert (=> b!2286979 m!2715017))

(assert (=> b!2286979 m!2713811))

(assert (=> b!2286979 m!2715007))

(assert (=> b!2286979 m!2715017))

(assert (=> b!2286979 m!2715007))

(declare-fun m!2715019 () Bool)

(assert (=> b!2286979 m!2715019))

(assert (=> b!2286084 d!676781))

(declare-fun b!2287052 () Bool)

(declare-fun e!1465290 () Regex!6699)

(declare-fun call!136591 () Regex!6699)

(assert (=> b!2287052 (= e!1465290 (Concat!11213 call!136591 (regex!4351 r!2363)))))

(declare-fun b!2287053 () Bool)

(declare-fun e!1465292 () Regex!6699)

(declare-fun e!1465293 () Regex!6699)

(assert (=> b!2287053 (= e!1465292 e!1465293)))

(declare-fun c!362831 () Bool)

(assert (=> b!2287053 (= c!362831 ((_ is ElementMatch!6699) (regex!4351 r!2363)))))

(declare-fun b!2287054 () Bool)

(declare-fun c!362829 () Bool)

(assert (=> b!2287054 (= c!362829 ((_ is Union!6699) (regex!4351 r!2363)))))

(declare-fun e!1465289 () Regex!6699)

(assert (=> b!2287054 (= e!1465293 e!1465289)))

(declare-fun b!2287055 () Bool)

(declare-fun e!1465291 () Regex!6699)

(declare-fun call!136594 () Regex!6699)

(assert (=> b!2287055 (= e!1465291 (Union!6699 (Concat!11213 call!136594 (regTwo!13910 (regex!4351 r!2363))) EmptyLang!6699))))

(declare-fun b!2287057 () Bool)

(declare-fun call!136593 () Regex!6699)

(declare-fun call!136592 () Regex!6699)

(assert (=> b!2287057 (= e!1465289 (Union!6699 call!136593 call!136592))))

(declare-fun bm!136586 () Bool)

(assert (=> bm!136586 (= call!136594 call!136591)))

(declare-fun c!362830 () Bool)

(declare-fun bm!136587 () Bool)

(assert (=> bm!136587 (= call!136593 (derivativeStep!1517 (ite c!362829 (regOne!13911 (regex!4351 r!2363)) (ite c!362830 (reg!7028 (regex!4351 r!2363)) (regOne!13910 (regex!4351 r!2363)))) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(declare-fun bm!136588 () Bool)

(assert (=> bm!136588 (= call!136591 call!136593)))

(declare-fun bm!136589 () Bool)

(assert (=> bm!136589 (= call!136592 (derivativeStep!1517 (ite c!362829 (regTwo!13911 (regex!4351 r!2363)) (regTwo!13910 (regex!4351 r!2363))) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))))))

(declare-fun b!2287058 () Bool)

(assert (=> b!2287058 (= e!1465291 (Union!6699 (Concat!11213 call!136594 (regTwo!13910 (regex!4351 r!2363))) call!136592))))

(declare-fun b!2287059 () Bool)

(assert (=> b!2287059 (= e!1465292 EmptyLang!6699)))

(declare-fun d!676791 () Bool)

(declare-fun lt!848740 () Regex!6699)

(assert (=> d!676791 (validRegex!2520 lt!848740)))

(assert (=> d!676791 (= lt!848740 e!1465292)))

(declare-fun c!362833 () Bool)

(assert (=> d!676791 (= c!362833 (or ((_ is EmptyExpr!6699) (regex!4351 r!2363)) ((_ is EmptyLang!6699) (regex!4351 r!2363))))))

(assert (=> d!676791 (validRegex!2520 (regex!4351 r!2363))))

(assert (=> d!676791 (= (derivativeStep!1517 (regex!4351 r!2363) (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456))))) lt!848740)))

(declare-fun b!2287056 () Bool)

(assert (=> b!2287056 (= e!1465293 (ite (= (head!4972 (list!10632 (charsOf!2739 (head!4970 tokens!456)))) (c!362569 (regex!4351 r!2363))) EmptyExpr!6699 EmptyLang!6699))))

(declare-fun b!2287060 () Bool)

(declare-fun c!362832 () Bool)

(assert (=> b!2287060 (= c!362832 (nullable!1858 (regOne!13910 (regex!4351 r!2363))))))

(assert (=> b!2287060 (= e!1465290 e!1465291)))

(declare-fun b!2287061 () Bool)

(assert (=> b!2287061 (= e!1465289 e!1465290)))

(assert (=> b!2287061 (= c!362830 ((_ is Star!6699) (regex!4351 r!2363)))))

(assert (= (and d!676791 c!362833) b!2287059))

(assert (= (and d!676791 (not c!362833)) b!2287053))

(assert (= (and b!2287053 c!362831) b!2287056))

(assert (= (and b!2287053 (not c!362831)) b!2287054))

(assert (= (and b!2287054 c!362829) b!2287057))

(assert (= (and b!2287054 (not c!362829)) b!2287061))

(assert (= (and b!2287061 c!362830) b!2287052))

(assert (= (and b!2287061 (not c!362830)) b!2287060))

(assert (= (and b!2287060 c!362832) b!2287058))

(assert (= (and b!2287060 (not c!362832)) b!2287055))

(assert (= (or b!2287058 b!2287055) bm!136586))

(assert (= (or b!2287052 bm!136586) bm!136588))

(assert (= (or b!2287057 bm!136588) bm!136587))

(assert (= (or b!2287057 b!2287058) bm!136589))

(assert (=> bm!136587 m!2713815))

(declare-fun m!2715085 () Bool)

(assert (=> bm!136587 m!2715085))

(assert (=> bm!136589 m!2713815))

(declare-fun m!2715089 () Bool)

(assert (=> bm!136589 m!2715089))

(declare-fun m!2715091 () Bool)

(assert (=> d!676791 m!2715091))

(assert (=> d!676791 m!2713819))

(declare-fun m!2715093 () Bool)

(assert (=> b!2287060 m!2715093))

(assert (=> b!2286084 d!676791))

(assert (=> b!2286084 d!676459))

(assert (=> b!2286084 d!676567))

(declare-fun d!676821 () Bool)

(declare-fun e!1465297 () Bool)

(assert (=> d!676821 e!1465297))

(declare-fun res!977792 () Bool)

(assert (=> d!676821 (=> res!977792 e!1465297)))

(declare-fun lt!848742 () Bool)

(assert (=> d!676821 (= res!977792 (not lt!848742))))

(declare-fun e!1465296 () Bool)

(assert (=> d!676821 (= lt!848742 e!1465296)))

(declare-fun res!977791 () Bool)

(assert (=> d!676821 (=> res!977791 e!1465296)))

(assert (=> d!676821 (= res!977791 ((_ is Nil!27212) (tail!3301 lt!848247)))))

(assert (=> d!676821 (= (isPrefix!2341 (tail!3301 lt!848247) (tail!3301 lt!848238)) lt!848742)))

(declare-fun b!2287069 () Bool)

(assert (=> b!2287069 (= e!1465297 (>= (size!21410 (tail!3301 lt!848238)) (size!21410 (tail!3301 lt!848247))))))

(declare-fun b!2287067 () Bool)

(declare-fun res!977790 () Bool)

(declare-fun e!1465298 () Bool)

(assert (=> b!2287067 (=> (not res!977790) (not e!1465298))))

(assert (=> b!2287067 (= res!977790 (= (head!4972 (tail!3301 lt!848247)) (head!4972 (tail!3301 lt!848238))))))

(declare-fun b!2287068 () Bool)

(assert (=> b!2287068 (= e!1465298 (isPrefix!2341 (tail!3301 (tail!3301 lt!848247)) (tail!3301 (tail!3301 lt!848238))))))

(declare-fun b!2287066 () Bool)

(assert (=> b!2287066 (= e!1465296 e!1465298)))

(declare-fun res!977789 () Bool)

(assert (=> b!2287066 (=> (not res!977789) (not e!1465298))))

(assert (=> b!2287066 (= res!977789 (not ((_ is Nil!27212) (tail!3301 lt!848238))))))

(assert (= (and d!676821 (not res!977791)) b!2287066))

(assert (= (and b!2287066 res!977789) b!2287067))

(assert (= (and b!2287067 res!977790) b!2287068))

(assert (= (and d!676821 (not res!977792)) b!2287069))

(assert (=> b!2287069 m!2713869))

(declare-fun m!2715101 () Bool)

(assert (=> b!2287069 m!2715101))

(assert (=> b!2287069 m!2713867))

(declare-fun m!2715103 () Bool)

(assert (=> b!2287069 m!2715103))

(assert (=> b!2287067 m!2713867))

(declare-fun m!2715105 () Bool)

(assert (=> b!2287067 m!2715105))

(assert (=> b!2287067 m!2713869))

(declare-fun m!2715107 () Bool)

(assert (=> b!2287067 m!2715107))

(assert (=> b!2287068 m!2713867))

(declare-fun m!2715109 () Bool)

(assert (=> b!2287068 m!2715109))

(assert (=> b!2287068 m!2713869))

(declare-fun m!2715111 () Bool)

(assert (=> b!2287068 m!2715111))

(assert (=> b!2287068 m!2715109))

(assert (=> b!2287068 m!2715111))

(declare-fun m!2715113 () Bool)

(assert (=> b!2287068 m!2715113))

(assert (=> b!2286127 d!676821))

(declare-fun d!676827 () Bool)

(assert (=> d!676827 (= (tail!3301 lt!848247) (t!204032 lt!848247))))

(assert (=> b!2286127 d!676827))

(declare-fun d!676829 () Bool)

(assert (=> d!676829 (= (tail!3301 lt!848238) (t!204032 lt!848238))))

(assert (=> b!2286127 d!676829))

(declare-fun d!676831 () Bool)

(declare-fun c!362839 () Bool)

(assert (=> d!676831 (= c!362839 ((_ is Nil!27212) lt!848301))))

(declare-fun e!1465308 () (InoxSet C!13544))

(assert (=> d!676831 (= (content!3647 lt!848301) e!1465308)))

(declare-fun b!2287089 () Bool)

(assert (=> b!2287089 (= e!1465308 ((as const (Array C!13544 Bool)) false))))

(declare-fun b!2287090 () Bool)

(assert (=> b!2287090 (= e!1465308 ((_ map or) (store ((as const (Array C!13544 Bool)) false) (h!32613 lt!848301) true) (content!3647 (t!204032 lt!848301))))))

(assert (= (and d!676831 c!362839) b!2287089))

(assert (= (and d!676831 (not c!362839)) b!2287090))

(declare-fun m!2715117 () Bool)

(assert (=> b!2287090 m!2715117))

(declare-fun m!2715119 () Bool)

(assert (=> b!2287090 m!2715119))

(assert (=> d!676331 d!676831))

(declare-fun d!676835 () Bool)

(declare-fun c!362840 () Bool)

(assert (=> d!676835 (= c!362840 ((_ is Nil!27212) lt!848247))))

(declare-fun e!1465312 () (InoxSet C!13544))

(assert (=> d!676835 (= (content!3647 lt!848247) e!1465312)))

(declare-fun b!2287099 () Bool)

(assert (=> b!2287099 (= e!1465312 ((as const (Array C!13544 Bool)) false))))

(declare-fun b!2287100 () Bool)

(assert (=> b!2287100 (= e!1465312 ((_ map or) (store ((as const (Array C!13544 Bool)) false) (h!32613 lt!848247) true) (content!3647 (t!204032 lt!848247))))))

(assert (= (and d!676835 c!362840) b!2287099))

(assert (= (and d!676835 (not c!362840)) b!2287100))

(declare-fun m!2715121 () Bool)

(assert (=> b!2287100 m!2715121))

(assert (=> b!2287100 m!2714199))

(assert (=> d!676331 d!676835))

(declare-fun d!676837 () Bool)

(declare-fun c!362841 () Bool)

(assert (=> d!676837 (= c!362841 ((_ is Nil!27212) (_2!16003 lt!848240)))))

(declare-fun e!1465313 () (InoxSet C!13544))

(assert (=> d!676837 (= (content!3647 (_2!16003 lt!848240)) e!1465313)))

(declare-fun b!2287103 () Bool)

(assert (=> b!2287103 (= e!1465313 ((as const (Array C!13544 Bool)) false))))

(declare-fun b!2287104 () Bool)

(assert (=> b!2287104 (= e!1465313 ((_ map or) (store ((as const (Array C!13544 Bool)) false) (h!32613 (_2!16003 lt!848240)) true) (content!3647 (t!204032 (_2!16003 lt!848240)))))))

(assert (= (and d!676837 c!362841) b!2287103))

(assert (= (and d!676837 (not c!362841)) b!2287104))

(declare-fun m!2715123 () Bool)

(assert (=> b!2287104 m!2715123))

(declare-fun m!2715125 () Bool)

(assert (=> b!2287104 m!2715125))

(assert (=> d!676331 d!676837))

(declare-fun d!676839 () Bool)

(declare-fun c!362842 () Bool)

(assert (=> d!676839 (= c!362842 ((_ is Node!8850) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))))))

(declare-fun e!1465316 () Bool)

(assert (=> d!676839 (= (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))) e!1465316)))

(declare-fun b!2287107 () Bool)

(assert (=> b!2287107 (= e!1465316 (inv!36811 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))))))

(declare-fun b!2287108 () Bool)

(declare-fun e!1465317 () Bool)

(assert (=> b!2287108 (= e!1465316 e!1465317)))

(declare-fun res!977798 () Bool)

(assert (=> b!2287108 (= res!977798 (not ((_ is Leaf!13011) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))))))))

(assert (=> b!2287108 (=> res!977798 e!1465317)))

(declare-fun b!2287109 () Bool)

(assert (=> b!2287109 (= e!1465317 (inv!36812 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))))))

(assert (= (and d!676839 c!362842) b!2287107))

(assert (= (and d!676839 (not c!362842)) b!2287108))

(assert (= (and b!2287108 (not res!977798)) b!2287109))

(declare-fun m!2715127 () Bool)

(assert (=> b!2287107 m!2715127))

(declare-fun m!2715129 () Bool)

(assert (=> b!2287109 m!2715129))

(assert (=> b!2285940 d!676839))

(declare-fun d!676841 () Bool)

(assert (=> d!676841 (= (inv!36800 (tag!4841 (rule!6679 (h!32614 (t!204033 tokens!456))))) (= (mod (str.len (value!137822 (tag!4841 (rule!6679 (h!32614 (t!204033 tokens!456)))))) 2) 0))))

(assert (=> b!2286388 d!676841))

(declare-fun d!676843 () Bool)

(declare-fun res!977799 () Bool)

(declare-fun e!1465318 () Bool)

(assert (=> d!676843 (=> (not res!977799) (not e!1465318))))

(assert (=> d!676843 (= res!977799 (semiInverseModEq!1760 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))))))

(assert (=> d!676843 (= (inv!36803 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) e!1465318)))

(declare-fun b!2287110 () Bool)

(assert (=> b!2287110 (= e!1465318 (equivClasses!1679 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))))))

(assert (= (and d!676843 res!977799) b!2287110))

(declare-fun m!2715131 () Bool)

(assert (=> d!676843 m!2715131))

(declare-fun m!2715133 () Bool)

(assert (=> b!2287110 m!2715133))

(assert (=> b!2286388 d!676843))

(declare-fun d!676845 () Bool)

(declare-fun lt!848744 () Int)

(assert (=> d!676845 (>= lt!848744 0)))

(declare-fun e!1465319 () Int)

(assert (=> d!676845 (= lt!848744 e!1465319)))

(declare-fun c!362843 () Bool)

(assert (=> d!676845 (= c!362843 ((_ is Nil!27212) (originalCharacters!5121 (h!32614 tokens!456))))))

(assert (=> d!676845 (= (size!21410 (originalCharacters!5121 (h!32614 tokens!456))) lt!848744)))

(declare-fun b!2287111 () Bool)

(assert (=> b!2287111 (= e!1465319 0)))

(declare-fun b!2287112 () Bool)

(assert (=> b!2287112 (= e!1465319 (+ 1 (size!21410 (t!204032 (originalCharacters!5121 (h!32614 tokens!456))))))))

(assert (= (and d!676845 c!362843) b!2287111))

(assert (= (and d!676845 (not c!362843)) b!2287112))

(declare-fun m!2715135 () Bool)

(assert (=> b!2287112 m!2715135))

(assert (=> b!2285935 d!676845))

(declare-fun d!676847 () Bool)

(declare-fun res!977800 () Bool)

(declare-fun e!1465322 () Bool)

(assert (=> d!676847 (=> (not res!977800) (not e!1465322))))

(assert (=> d!676847 (= res!977800 (not (isEmpty!15477 (originalCharacters!5121 (h!32614 (t!204033 tokens!456))))))))

(assert (=> d!676847 (= (inv!36804 (h!32614 (t!204033 tokens!456))) e!1465322)))

(declare-fun b!2287116 () Bool)

(declare-fun res!977801 () Bool)

(assert (=> b!2287116 (=> (not res!977801) (not e!1465322))))

(assert (=> b!2287116 (= res!977801 (= (originalCharacters!5121 (h!32614 (t!204033 tokens!456))) (list!10632 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (value!137823 (h!32614 (t!204033 tokens!456)))))))))

(declare-fun b!2287117 () Bool)

(assert (=> b!2287117 (= e!1465322 (= (size!21408 (h!32614 (t!204033 tokens!456))) (size!21410 (originalCharacters!5121 (h!32614 (t!204033 tokens!456))))))))

(assert (= (and d!676847 res!977800) b!2287116))

(assert (= (and b!2287116 res!977801) b!2287117))

(declare-fun b_lambda!72821 () Bool)

(assert (=> (not b_lambda!72821) (not b!2287116)))

(declare-fun t!204200 () Bool)

(declare-fun tb!136139 () Bool)

(assert (=> (and b!2285891 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204200) tb!136139))

(declare-fun b!2287123 () Bool)

(declare-fun e!1465325 () Bool)

(declare-fun tp!724849 () Bool)

(assert (=> b!2287123 (= e!1465325 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (value!137823 (h!32614 (t!204033 tokens!456)))))) tp!724849))))

(declare-fun result!166000 () Bool)

(assert (=> tb!136139 (= result!166000 (and (inv!36808 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (value!137823 (h!32614 (t!204033 tokens!456))))) e!1465325))))

(assert (= tb!136139 b!2287123))

(declare-fun m!2715143 () Bool)

(assert (=> b!2287123 m!2715143))

(declare-fun m!2715145 () Bool)

(assert (=> tb!136139 m!2715145))

(assert (=> b!2287116 t!204200))

(declare-fun b_and!181157 () Bool)

(assert (= b_and!181141 (and (=> t!204200 result!166000) b_and!181157)))

(declare-fun t!204202 () Bool)

(declare-fun tb!136141 () Bool)

(assert (=> (and b!2285886 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204202) tb!136141))

(declare-fun result!166002 () Bool)

(assert (= result!166002 result!166000))

(assert (=> b!2287116 t!204202))

(declare-fun b_and!181159 () Bool)

(assert (= b_and!181143 (and (=> t!204202 result!166002) b_and!181159)))

(declare-fun t!204204 () Bool)

(declare-fun tb!136143 () Bool)

(assert (=> (and b!2285894 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204204) tb!136143))

(declare-fun result!166004 () Bool)

(assert (= result!166004 result!166000))

(assert (=> b!2287116 t!204204))

(declare-fun b_and!181161 () Bool)

(assert (= b_and!181133 (and (=> t!204204 result!166004) b_and!181161)))

(declare-fun t!204206 () Bool)

(declare-fun tb!136145 () Bool)

(assert (=> (and b!2286400 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204206) tb!136145))

(declare-fun result!166006 () Bool)

(assert (= result!166006 result!166000))

(assert (=> b!2287116 t!204206))

(declare-fun b_and!181163 () Bool)

(assert (= b_and!181135 (and (=> t!204206 result!166006) b_and!181163)))

(declare-fun tb!136147 () Bool)

(declare-fun t!204208 () Bool)

(assert (=> (and b!2285910 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204208) tb!136147))

(declare-fun result!166008 () Bool)

(assert (= result!166008 result!166000))

(assert (=> b!2287116 t!204208))

(declare-fun b_and!181165 () Bool)

(assert (= b_and!181137 (and (=> t!204208 result!166008) b_and!181165)))

(declare-fun t!204210 () Bool)

(declare-fun tb!136149 () Bool)

(assert (=> (and b!2286389 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204210) tb!136149))

(declare-fun result!166010 () Bool)

(assert (= result!166010 result!166000))

(assert (=> b!2287116 t!204210))

(declare-fun b_and!181167 () Bool)

(assert (= b_and!181139 (and (=> t!204210 result!166010) b_and!181167)))

(declare-fun m!2715147 () Bool)

(assert (=> d!676847 m!2715147))

(declare-fun m!2715149 () Bool)

(assert (=> b!2287116 m!2715149))

(assert (=> b!2287116 m!2715149))

(declare-fun m!2715151 () Bool)

(assert (=> b!2287116 m!2715151))

(declare-fun m!2715153 () Bool)

(assert (=> b!2287117 m!2715153))

(assert (=> b!2286386 d!676847))

(assert (=> d!676259 d!676775))

(declare-fun b!2287139 () Bool)

(declare-fun e!1465337 () Int)

(declare-fun e!1465336 () Int)

(assert (=> b!2287139 (= e!1465337 e!1465336)))

(declare-fun c!362845 () Bool)

(assert (=> b!2287139 (= c!362845 (and ((_ is Cons!27214) (t!204034 rules!1750)) (not (= (h!32615 (t!204034 rules!1750)) r!2363))))))

(declare-fun b!2287140 () Bool)

(assert (=> b!2287140 (= e!1465336 (+ 1 (getIndex!364 (t!204034 (t!204034 rules!1750)) r!2363)))))

(declare-fun d!676849 () Bool)

(declare-fun lt!848745 () Int)

(assert (=> d!676849 (>= lt!848745 0)))

(assert (=> d!676849 (= lt!848745 e!1465337)))

(declare-fun c!362844 () Bool)

(assert (=> d!676849 (= c!362844 (and ((_ is Cons!27214) (t!204034 rules!1750)) (= (h!32615 (t!204034 rules!1750)) r!2363)))))

(assert (=> d!676849 (contains!4725 (t!204034 rules!1750) r!2363)))

(assert (=> d!676849 (= (getIndex!364 (t!204034 rules!1750) r!2363) lt!848745)))

(declare-fun b!2287141 () Bool)

(assert (=> b!2287141 (= e!1465336 (- 1))))

(declare-fun b!2287138 () Bool)

(assert (=> b!2287138 (= e!1465337 0)))

(assert (= (and d!676849 c!362844) b!2287138))

(assert (= (and d!676849 (not c!362844)) b!2287139))

(assert (= (and b!2287139 c!362845) b!2287140))

(assert (= (and b!2287139 (not c!362845)) b!2287141))

(declare-fun m!2715155 () Bool)

(assert (=> b!2287140 m!2715155))

(assert (=> d!676849 m!2713735))

(assert (=> b!2285957 d!676849))

(declare-fun d!676851 () Bool)

(declare-fun c!362846 () Bool)

(assert (=> d!676851 (= c!362846 ((_ is Node!8850) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))))

(declare-fun e!1465338 () Bool)

(assert (=> d!676851 (= (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))) e!1465338)))

(declare-fun b!2287142 () Bool)

(assert (=> b!2287142 (= e!1465338 (inv!36811 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))))

(declare-fun b!2287143 () Bool)

(declare-fun e!1465339 () Bool)

(assert (=> b!2287143 (= e!1465338 e!1465339)))

(declare-fun res!977802 () Bool)

(assert (=> b!2287143 (= res!977802 (not ((_ is Leaf!13011) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))))))

(assert (=> b!2287143 (=> res!977802 e!1465339)))

(declare-fun b!2287144 () Bool)

(assert (=> b!2287144 (= e!1465339 (inv!36812 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))))

(assert (= (and d!676851 c!362846) b!2287142))

(assert (= (and d!676851 (not c!362846)) b!2287143))

(assert (= (and b!2287143 (not res!977802)) b!2287144))

(declare-fun m!2715157 () Bool)

(assert (=> b!2287142 m!2715157))

(declare-fun m!2715159 () Bool)

(assert (=> b!2287144 m!2715159))

(assert (=> b!2286357 d!676851))

(declare-fun d!676853 () Bool)

(declare-fun lt!848746 () List!27306)

(assert (=> d!676853 (= (++!6647 (t!204032 lt!848247) lt!848746) (tail!3301 input!1722))))

(declare-fun e!1465340 () List!27306)

(assert (=> d!676853 (= lt!848746 e!1465340)))

(declare-fun c!362847 () Bool)

(assert (=> d!676853 (= c!362847 ((_ is Cons!27212) (t!204032 lt!848247)))))

(assert (=> d!676853 (>= (size!21410 (tail!3301 input!1722)) (size!21410 (t!204032 lt!848247)))))

(assert (=> d!676853 (= (getSuffix!1132 (tail!3301 input!1722) (t!204032 lt!848247)) lt!848746)))

(declare-fun b!2287145 () Bool)

(assert (=> b!2287145 (= e!1465340 (getSuffix!1132 (tail!3301 (tail!3301 input!1722)) (t!204032 (t!204032 lt!848247))))))

(declare-fun b!2287146 () Bool)

(assert (=> b!2287146 (= e!1465340 (tail!3301 input!1722))))

(assert (= (and d!676853 c!362847) b!2287145))

(assert (= (and d!676853 (not c!362847)) b!2287146))

(declare-fun m!2715161 () Bool)

(assert (=> d!676853 m!2715161))

(assert (=> d!676853 m!2713879))

(assert (=> d!676853 m!2714729))

(assert (=> d!676853 m!2713859))

(assert (=> b!2287145 m!2713879))

(assert (=> b!2287145 m!2714739))

(assert (=> b!2287145 m!2714739))

(declare-fun m!2715163 () Bool)

(assert (=> b!2287145 m!2715163))

(assert (=> b!2286135 d!676853))

(assert (=> b!2286135 d!676677))

(declare-fun d!676855 () Bool)

(assert (=> d!676855 (= (list!10632 lt!848311) (list!10637 (c!362568 lt!848311)))))

(declare-fun bs!456915 () Bool)

(assert (= bs!456915 d!676855))

(declare-fun m!2715165 () Bool)

(assert (=> bs!456915 m!2715165))

(assert (=> d!676341 d!676855))

(declare-fun bs!456916 () Bool)

(declare-fun d!676857 () Bool)

(assert (= bs!456916 (and d!676857 d!676351)))

(declare-fun lambda!85738 () Int)

(assert (=> bs!456916 (= (and (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 r!2363))) (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 r!2363)))) (= lambda!85738 lambda!85703))))

(declare-fun bs!456917 () Bool)

(assert (= bs!456917 (and d!676857 d!676647)))

(assert (=> bs!456917 (= (and (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (h!32615 rules!1750)))) (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 (h!32615 rules!1750))))) (= lambda!85738 lambda!85725))))

(declare-fun bs!456918 () Bool)

(assert (= bs!456918 (and d!676857 d!676715)))

(assert (=> bs!456918 (= (and (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 r!2363))) (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 r!2363)))) (= lambda!85738 lambda!85729))))

(declare-fun bs!456919 () Bool)

(assert (= bs!456919 (and d!676857 d!676773)))

(assert (=> bs!456919 (= (and (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (= (toValue!6137 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456)))))) (= lambda!85738 lambda!85735))))

(assert (=> d!676857 true))

(assert (=> d!676857 (< (dynLambda!11809 order!15167 (toChars!5996 (transformation!4351 otherR!12))) (dynLambda!11808 order!15165 lambda!85738))))

(assert (=> d!676857 true))

(assert (=> d!676857 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 otherR!12))) (dynLambda!11808 order!15165 lambda!85738))))

(assert (=> d!676857 (= (semiInverseModEq!1760 (toChars!5996 (transformation!4351 otherR!12)) (toValue!6137 (transformation!4351 otherR!12))) (Forall!1089 lambda!85738))))

(declare-fun bs!456920 () Bool)

(assert (= bs!456920 d!676857))

(declare-fun m!2715175 () Bool)

(assert (=> bs!456920 m!2715175))

(assert (=> d!676271 d!676857))

(declare-fun b!2287165 () Bool)

(declare-fun e!1465348 () Bool)

(declare-fun lt!848747 () List!27306)

(assert (=> b!2287165 (= e!1465348 (or (not (= (_2!16003 (get!8206 lt!848285)) Nil!27212)) (= lt!848747 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))))))))

(declare-fun b!2287162 () Bool)

(declare-fun e!1465349 () List!27306)

(assert (=> b!2287162 (= e!1465349 (_2!16003 (get!8206 lt!848285)))))

(declare-fun b!2287164 () Bool)

(declare-fun res!977804 () Bool)

(assert (=> b!2287164 (=> (not res!977804) (not e!1465348))))

(assert (=> b!2287164 (= res!977804 (= (size!21410 lt!848747) (+ (size!21410 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))) (size!21410 (_2!16003 (get!8206 lt!848285))))))))

(declare-fun d!676859 () Bool)

(assert (=> d!676859 e!1465348))

(declare-fun res!977803 () Bool)

(assert (=> d!676859 (=> (not res!977803) (not e!1465348))))

(assert (=> d!676859 (= res!977803 (= (content!3647 lt!848747) ((_ map or) (content!3647 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))) (content!3647 (_2!16003 (get!8206 lt!848285))))))))

(assert (=> d!676859 (= lt!848747 e!1465349)))

(declare-fun c!362848 () Bool)

(assert (=> d!676859 (= c!362848 ((_ is Nil!27212) (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))))))

(assert (=> d!676859 (= (++!6647 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285)))) (_2!16003 (get!8206 lt!848285))) lt!848747)))

(declare-fun b!2287163 () Bool)

(assert (=> b!2287163 (= e!1465349 (Cons!27212 (h!32613 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))) (++!6647 (t!204032 (list!10632 (charsOf!2739 (_1!16003 (get!8206 lt!848285))))) (_2!16003 (get!8206 lt!848285)))))))

(assert (= (and d!676859 c!362848) b!2287162))

(assert (= (and d!676859 (not c!362848)) b!2287163))

(assert (= (and d!676859 res!977803) b!2287164))

(assert (= (and b!2287164 res!977804) b!2287165))

(declare-fun m!2715177 () Bool)

(assert (=> b!2287164 m!2715177))

(assert (=> b!2287164 m!2713783))

(declare-fun m!2715179 () Bool)

(assert (=> b!2287164 m!2715179))

(assert (=> b!2287164 m!2713777))

(declare-fun m!2715181 () Bool)

(assert (=> d!676859 m!2715181))

(assert (=> d!676859 m!2713783))

(declare-fun m!2715183 () Bool)

(assert (=> d!676859 m!2715183))

(declare-fun m!2715185 () Bool)

(assert (=> d!676859 m!2715185))

(declare-fun m!2715187 () Bool)

(assert (=> b!2287163 m!2715187))

(assert (=> b!2286055 d!676859))

(assert (=> b!2286055 d!676699))

(assert (=> b!2286055 d!676701))

(assert (=> b!2286055 d!676577))

(declare-fun d!676861 () Bool)

(assert (=> d!676861 (= (list!10632 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))) (list!10637 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))))))

(declare-fun bs!456921 () Bool)

(assert (= bs!456921 d!676861))

(declare-fun m!2715193 () Bool)

(assert (=> bs!456921 m!2715193))

(assert (=> d!676351 d!676861))

(declare-fun d!676863 () Bool)

(assert (=> d!676863 (= (list!10632 lt!848241) (list!10637 (c!362568 lt!848241)))))

(declare-fun bs!456922 () Bool)

(assert (= bs!456922 d!676863))

(declare-fun m!2715195 () Bool)

(assert (=> bs!456922 m!2715195))

(assert (=> d!676351 d!676863))

(declare-fun d!676865 () Bool)

(declare-fun dynLambda!11813 (Int BalanceConc!17428) Bool)

(assert (=> d!676865 (dynLambda!11813 lambda!85703 lt!848241)))

(declare-fun lt!848750 () Unit!40112)

(declare-fun choose!13347 (Int BalanceConc!17428) Unit!40112)

(assert (=> d!676865 (= lt!848750 (choose!13347 lambda!85703 lt!848241))))

(assert (=> d!676865 (Forall!1089 lambda!85703)))

(assert (=> d!676865 (= (ForallOf!491 lambda!85703 lt!848241) lt!848750)))

(declare-fun b_lambda!72823 () Bool)

(assert (=> (not b_lambda!72823) (not d!676865)))

(declare-fun bs!456923 () Bool)

(assert (= bs!456923 d!676865))

(declare-fun m!2715203 () Bool)

(assert (=> bs!456923 m!2715203))

(declare-fun m!2715205 () Bool)

(assert (=> bs!456923 m!2715205))

(declare-fun m!2715207 () Bool)

(assert (=> bs!456923 m!2715207))

(assert (=> d!676351 d!676865))

(assert (=> b!2286140 d!676579))

(assert (=> b!2286140 d!676343))

(declare-fun d!676867 () Bool)

(assert (=> d!676867 (= (head!4972 otherP!12) (h!32613 otherP!12))))

(assert (=> b!2286138 d!676867))

(declare-fun d!676869 () Bool)

(assert (=> d!676869 (= (head!4972 input!1722) (h!32613 input!1722))))

(assert (=> b!2286138 d!676869))

(assert (=> b!2286096 d!676459))

(declare-fun bs!456924 () Bool)

(declare-fun d!676871 () Bool)

(assert (= bs!456924 (and d!676871 d!676643)))

(declare-fun lambda!85739 () Int)

(assert (=> bs!456924 (= (= (toValue!6137 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) (= lambda!85739 lambda!85722))))

(declare-fun bs!456925 () Bool)

(assert (= bs!456925 (and d!676871 d!676747)))

(assert (=> bs!456925 (= (= (toValue!6137 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 otherR!12))) (= lambda!85739 lambda!85731))))

(declare-fun bs!456926 () Bool)

(assert (= bs!456926 (and d!676871 d!676771)))

(assert (=> bs!456926 (= (= (toValue!6137 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 (h!32615 rules!1750)))) (= lambda!85739 lambda!85732))))

(assert (=> d!676871 true))

(assert (=> d!676871 (< (dynLambda!11807 order!15163 (toValue!6137 (transformation!4351 r!2363))) (dynLambda!11811 order!15171 lambda!85739))))

(assert (=> d!676871 (= (equivClasses!1679 (toChars!5996 (transformation!4351 r!2363)) (toValue!6137 (transformation!4351 r!2363))) (Forall2!706 lambda!85739))))

(declare-fun bs!456927 () Bool)

(assert (= bs!456927 d!676871))

(declare-fun m!2715215 () Bool)

(assert (=> bs!456927 m!2715215))

(assert (=> b!2285993 d!676871))

(declare-fun b!2287234 () Bool)

(declare-fun tp!724965 () Bool)

(declare-fun e!1465374 () Bool)

(declare-fun tp!724966 () Bool)

(assert (=> b!2287234 (= e!1465374 (and (inv!36807 (left!20630 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))))) tp!724966 (inv!36807 (right!20960 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))))) tp!724965))))

(declare-fun b!2287236 () Bool)

(declare-fun e!1465373 () Bool)

(declare-fun tp!724967 () Bool)

(assert (=> b!2287236 (= e!1465373 tp!724967)))

(declare-fun b!2287235 () Bool)

(declare-fun inv!36814 (IArray!17705) Bool)

(assert (=> b!2287235 (= e!1465374 (and (inv!36814 (xs!11792 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))))) e!1465373))))

(assert (=> b!2286098 (= tp!724686 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456))))) e!1465374))))

(assert (= (and b!2286098 ((_ is Node!8850) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))))) b!2287234))

(assert (= b!2287235 b!2287236))

(assert (= (and b!2286098 ((_ is Leaf!13011) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))) (value!137823 (head!4970 tokens!456)))))) b!2287235))

(declare-fun m!2715217 () Bool)

(assert (=> b!2287234 m!2715217))

(declare-fun m!2715219 () Bool)

(assert (=> b!2287234 m!2715219))

(declare-fun m!2715221 () Bool)

(assert (=> b!2287235 m!2715221))

(assert (=> b!2286098 m!2713829))

(declare-fun b!2287237 () Bool)

(declare-fun e!1465375 () Bool)

(declare-fun tp!724968 () Bool)

(assert (=> b!2287237 (= e!1465375 (and tp_is_empty!10619 tp!724968))))

(assert (=> b!2286405 (= tp!724782 e!1465375)))

(assert (= (and b!2286405 ((_ is Cons!27212) (t!204032 (t!204032 otherP!12)))) b!2287237))

(declare-fun b!2287238 () Bool)

(declare-fun e!1465376 () Bool)

(declare-fun tp!724969 () Bool)

(assert (=> b!2287238 (= e!1465376 (and tp_is_empty!10619 tp!724969))))

(assert (=> b!2286430 (= tp!724810 e!1465376)))

(assert (= (and b!2286430 ((_ is Cons!27212) (t!204032 (originalCharacters!5121 (h!32614 tokens!456))))) b!2287238))

(declare-fun b!2287239 () Bool)

(declare-fun e!1465377 () Bool)

(declare-fun tp!724970 () Bool)

(assert (=> b!2287239 (= e!1465377 (and tp_is_empty!10619 tp!724970))))

(assert (=> b!2286429 (= tp!724809 e!1465377)))

(assert (= (and b!2286429 ((_ is Cons!27212) (t!204032 (t!204032 suffix!886)))) b!2287239))

(declare-fun b!2287241 () Bool)

(declare-fun e!1465378 () Bool)

(declare-fun tp!724971 () Bool)

(declare-fun tp!724973 () Bool)

(assert (=> b!2287241 (= e!1465378 (and tp!724971 tp!724973))))

(declare-fun b!2287243 () Bool)

(declare-fun tp!724975 () Bool)

(declare-fun tp!724972 () Bool)

(assert (=> b!2287243 (= e!1465378 (and tp!724975 tp!724972))))

(assert (=> b!2286419 (= tp!724797 e!1465378)))

(declare-fun b!2287240 () Bool)

(assert (=> b!2287240 (= e!1465378 tp_is_empty!10619)))

(declare-fun b!2287242 () Bool)

(declare-fun tp!724974 () Bool)

(assert (=> b!2287242 (= e!1465378 tp!724974)))

(assert (= (and b!2286419 ((_ is ElementMatch!6699) (reg!7028 (regex!4351 otherR!12)))) b!2287240))

(assert (= (and b!2286419 ((_ is Concat!11213) (reg!7028 (regex!4351 otherR!12)))) b!2287241))

(assert (= (and b!2286419 ((_ is Star!6699) (reg!7028 (regex!4351 otherR!12)))) b!2287242))

(assert (= (and b!2286419 ((_ is Union!6699) (reg!7028 (regex!4351 otherR!12)))) b!2287243))

(declare-fun b!2287245 () Bool)

(declare-fun e!1465379 () Bool)

(declare-fun tp!724976 () Bool)

(declare-fun tp!724978 () Bool)

(assert (=> b!2287245 (= e!1465379 (and tp!724976 tp!724978))))

(declare-fun b!2287247 () Bool)

(declare-fun tp!724980 () Bool)

(declare-fun tp!724977 () Bool)

(assert (=> b!2287247 (= e!1465379 (and tp!724980 tp!724977))))

(assert (=> b!2286428 (= tp!724808 e!1465379)))

(declare-fun b!2287244 () Bool)

(assert (=> b!2287244 (= e!1465379 tp_is_empty!10619)))

(declare-fun b!2287246 () Bool)

(declare-fun tp!724979 () Bool)

(assert (=> b!2287246 (= e!1465379 tp!724979)))

(assert (= (and b!2286428 ((_ is ElementMatch!6699) (regOne!13911 (regex!4351 r!2363)))) b!2287244))

(assert (= (and b!2286428 ((_ is Concat!11213) (regOne!13911 (regex!4351 r!2363)))) b!2287245))

(assert (= (and b!2286428 ((_ is Star!6699) (regOne!13911 (regex!4351 r!2363)))) b!2287246))

(assert (= (and b!2286428 ((_ is Union!6699) (regOne!13911 (regex!4351 r!2363)))) b!2287247))

(declare-fun b!2287249 () Bool)

(declare-fun e!1465380 () Bool)

(declare-fun tp!724981 () Bool)

(declare-fun tp!724983 () Bool)

(assert (=> b!2287249 (= e!1465380 (and tp!724981 tp!724983))))

(declare-fun b!2287251 () Bool)

(declare-fun tp!724985 () Bool)

(declare-fun tp!724982 () Bool)

(assert (=> b!2287251 (= e!1465380 (and tp!724985 tp!724982))))

(assert (=> b!2286428 (= tp!724805 e!1465380)))

(declare-fun b!2287248 () Bool)

(assert (=> b!2287248 (= e!1465380 tp_is_empty!10619)))

(declare-fun b!2287250 () Bool)

(declare-fun tp!724984 () Bool)

(assert (=> b!2287250 (= e!1465380 tp!724984)))

(assert (= (and b!2286428 ((_ is ElementMatch!6699) (regTwo!13911 (regex!4351 r!2363)))) b!2287248))

(assert (= (and b!2286428 ((_ is Concat!11213) (regTwo!13911 (regex!4351 r!2363)))) b!2287249))

(assert (= (and b!2286428 ((_ is Star!6699) (regTwo!13911 (regex!4351 r!2363)))) b!2287250))

(assert (= (and b!2286428 ((_ is Union!6699) (regTwo!13911 (regex!4351 r!2363)))) b!2287251))

(declare-fun b!2287253 () Bool)

(declare-fun e!1465381 () Bool)

(declare-fun tp!724986 () Bool)

(declare-fun tp!724988 () Bool)

(assert (=> b!2287253 (= e!1465381 (and tp!724986 tp!724988))))

(declare-fun b!2287255 () Bool)

(declare-fun tp!724990 () Bool)

(declare-fun tp!724987 () Bool)

(assert (=> b!2287255 (= e!1465381 (and tp!724990 tp!724987))))

(assert (=> b!2286418 (= tp!724794 e!1465381)))

(declare-fun b!2287252 () Bool)

(assert (=> b!2287252 (= e!1465381 tp_is_empty!10619)))

(declare-fun b!2287254 () Bool)

(declare-fun tp!724989 () Bool)

(assert (=> b!2287254 (= e!1465381 tp!724989)))

(assert (= (and b!2286418 ((_ is ElementMatch!6699) (regOne!13910 (regex!4351 otherR!12)))) b!2287252))

(assert (= (and b!2286418 ((_ is Concat!11213) (regOne!13910 (regex!4351 otherR!12)))) b!2287253))

(assert (= (and b!2286418 ((_ is Star!6699) (regOne!13910 (regex!4351 otherR!12)))) b!2287254))

(assert (= (and b!2286418 ((_ is Union!6699) (regOne!13910 (regex!4351 otherR!12)))) b!2287255))

(declare-fun b!2287257 () Bool)

(declare-fun e!1465382 () Bool)

(declare-fun tp!724991 () Bool)

(declare-fun tp!724993 () Bool)

(assert (=> b!2287257 (= e!1465382 (and tp!724991 tp!724993))))

(declare-fun b!2287259 () Bool)

(declare-fun tp!724995 () Bool)

(declare-fun tp!724992 () Bool)

(assert (=> b!2287259 (= e!1465382 (and tp!724995 tp!724992))))

(assert (=> b!2286418 (= tp!724796 e!1465382)))

(declare-fun b!2287256 () Bool)

(assert (=> b!2287256 (= e!1465382 tp_is_empty!10619)))

(declare-fun b!2287258 () Bool)

(declare-fun tp!724994 () Bool)

(assert (=> b!2287258 (= e!1465382 tp!724994)))

(assert (= (and b!2286418 ((_ is ElementMatch!6699) (regTwo!13910 (regex!4351 otherR!12)))) b!2287256))

(assert (= (and b!2286418 ((_ is Concat!11213) (regTwo!13910 (regex!4351 otherR!12)))) b!2287257))

(assert (= (and b!2286418 ((_ is Star!6699) (regTwo!13910 (regex!4351 otherR!12)))) b!2287258))

(assert (= (and b!2286418 ((_ is Union!6699) (regTwo!13910 (regex!4351 otherR!12)))) b!2287259))

(declare-fun b!2287261 () Bool)

(declare-fun e!1465383 () Bool)

(declare-fun tp!724996 () Bool)

(declare-fun tp!724998 () Bool)

(assert (=> b!2287261 (= e!1465383 (and tp!724996 tp!724998))))

(declare-fun b!2287263 () Bool)

(declare-fun tp!725000 () Bool)

(declare-fun tp!724997 () Bool)

(assert (=> b!2287263 (= e!1465383 (and tp!725000 tp!724997))))

(assert (=> b!2286420 (= tp!724798 e!1465383)))

(declare-fun b!2287260 () Bool)

(assert (=> b!2287260 (= e!1465383 tp_is_empty!10619)))

(declare-fun b!2287262 () Bool)

(declare-fun tp!724999 () Bool)

(assert (=> b!2287262 (= e!1465383 tp!724999)))

(assert (= (and b!2286420 ((_ is ElementMatch!6699) (regOne!13911 (regex!4351 otherR!12)))) b!2287260))

(assert (= (and b!2286420 ((_ is Concat!11213) (regOne!13911 (regex!4351 otherR!12)))) b!2287261))

(assert (= (and b!2286420 ((_ is Star!6699) (regOne!13911 (regex!4351 otherR!12)))) b!2287262))

(assert (= (and b!2286420 ((_ is Union!6699) (regOne!13911 (regex!4351 otherR!12)))) b!2287263))

(declare-fun b!2287265 () Bool)

(declare-fun e!1465384 () Bool)

(declare-fun tp!725001 () Bool)

(declare-fun tp!725003 () Bool)

(assert (=> b!2287265 (= e!1465384 (and tp!725001 tp!725003))))

(declare-fun b!2287267 () Bool)

(declare-fun tp!725005 () Bool)

(declare-fun tp!725002 () Bool)

(assert (=> b!2287267 (= e!1465384 (and tp!725005 tp!725002))))

(assert (=> b!2286420 (= tp!724795 e!1465384)))

(declare-fun b!2287264 () Bool)

(assert (=> b!2287264 (= e!1465384 tp_is_empty!10619)))

(declare-fun b!2287266 () Bool)

(declare-fun tp!725004 () Bool)

(assert (=> b!2287266 (= e!1465384 tp!725004)))

(assert (= (and b!2286420 ((_ is ElementMatch!6699) (regTwo!13911 (regex!4351 otherR!12)))) b!2287264))

(assert (= (and b!2286420 ((_ is Concat!11213) (regTwo!13911 (regex!4351 otherR!12)))) b!2287265))

(assert (= (and b!2286420 ((_ is Star!6699) (regTwo!13911 (regex!4351 otherR!12)))) b!2287266))

(assert (= (and b!2286420 ((_ is Union!6699) (regTwo!13911 (regex!4351 otherR!12)))) b!2287267))

(declare-fun b!2287269 () Bool)

(declare-fun e!1465385 () Bool)

(declare-fun tp!725006 () Bool)

(declare-fun tp!725008 () Bool)

(assert (=> b!2287269 (= e!1465385 (and tp!725006 tp!725008))))

(declare-fun b!2287271 () Bool)

(declare-fun tp!725010 () Bool)

(declare-fun tp!725007 () Bool)

(assert (=> b!2287271 (= e!1465385 (and tp!725010 tp!725007))))

(assert (=> b!2286427 (= tp!724807 e!1465385)))

(declare-fun b!2287268 () Bool)

(assert (=> b!2287268 (= e!1465385 tp_is_empty!10619)))

(declare-fun b!2287270 () Bool)

(declare-fun tp!725009 () Bool)

(assert (=> b!2287270 (= e!1465385 tp!725009)))

(assert (= (and b!2286427 ((_ is ElementMatch!6699) (reg!7028 (regex!4351 r!2363)))) b!2287268))

(assert (= (and b!2286427 ((_ is Concat!11213) (reg!7028 (regex!4351 r!2363)))) b!2287269))

(assert (= (and b!2286427 ((_ is Star!6699) (reg!7028 (regex!4351 r!2363)))) b!2287270))

(assert (= (and b!2286427 ((_ is Union!6699) (reg!7028 (regex!4351 r!2363)))) b!2287271))

(declare-fun b!2287273 () Bool)

(declare-fun e!1465386 () Bool)

(declare-fun tp!725011 () Bool)

(declare-fun tp!725013 () Bool)

(assert (=> b!2287273 (= e!1465386 (and tp!725011 tp!725013))))

(declare-fun b!2287275 () Bool)

(declare-fun tp!725015 () Bool)

(declare-fun tp!725012 () Bool)

(assert (=> b!2287275 (= e!1465386 (and tp!725015 tp!725012))))

(assert (=> b!2286426 (= tp!724804 e!1465386)))

(declare-fun b!2287272 () Bool)

(assert (=> b!2287272 (= e!1465386 tp_is_empty!10619)))

(declare-fun b!2287274 () Bool)

(declare-fun tp!725014 () Bool)

(assert (=> b!2287274 (= e!1465386 tp!725014)))

(assert (= (and b!2286426 ((_ is ElementMatch!6699) (regOne!13910 (regex!4351 r!2363)))) b!2287272))

(assert (= (and b!2286426 ((_ is Concat!11213) (regOne!13910 (regex!4351 r!2363)))) b!2287273))

(assert (= (and b!2286426 ((_ is Star!6699) (regOne!13910 (regex!4351 r!2363)))) b!2287274))

(assert (= (and b!2286426 ((_ is Union!6699) (regOne!13910 (regex!4351 r!2363)))) b!2287275))

(declare-fun b!2287277 () Bool)

(declare-fun e!1465387 () Bool)

(declare-fun tp!725016 () Bool)

(declare-fun tp!725018 () Bool)

(assert (=> b!2287277 (= e!1465387 (and tp!725016 tp!725018))))

(declare-fun b!2287279 () Bool)

(declare-fun tp!725020 () Bool)

(declare-fun tp!725017 () Bool)

(assert (=> b!2287279 (= e!1465387 (and tp!725020 tp!725017))))

(assert (=> b!2286426 (= tp!724806 e!1465387)))

(declare-fun b!2287276 () Bool)

(assert (=> b!2287276 (= e!1465387 tp_is_empty!10619)))

(declare-fun b!2287278 () Bool)

(declare-fun tp!725019 () Bool)

(assert (=> b!2287278 (= e!1465387 tp!725019)))

(assert (= (and b!2286426 ((_ is ElementMatch!6699) (regTwo!13910 (regex!4351 r!2363)))) b!2287276))

(assert (= (and b!2286426 ((_ is Concat!11213) (regTwo!13910 (regex!4351 r!2363)))) b!2287277))

(assert (= (and b!2286426 ((_ is Star!6699) (regTwo!13910 (regex!4351 r!2363)))) b!2287278))

(assert (= (and b!2286426 ((_ is Union!6699) (regTwo!13910 (regex!4351 r!2363)))) b!2287279))

(declare-fun b!2287281 () Bool)

(declare-fun e!1465388 () Bool)

(declare-fun tp!725021 () Bool)

(declare-fun tp!725023 () Bool)

(assert (=> b!2287281 (= e!1465388 (and tp!725021 tp!725023))))

(declare-fun b!2287283 () Bool)

(declare-fun tp!725025 () Bool)

(declare-fun tp!725022 () Bool)

(assert (=> b!2287283 (= e!1465388 (and tp!725025 tp!725022))))

(assert (=> b!2286434 (= tp!724815 e!1465388)))

(declare-fun b!2287280 () Bool)

(assert (=> b!2287280 (= e!1465388 tp_is_empty!10619)))

(declare-fun b!2287282 () Bool)

(declare-fun tp!725024 () Bool)

(assert (=> b!2287282 (= e!1465388 tp!725024)))

(assert (= (and b!2286434 ((_ is ElementMatch!6699) (regOne!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287280))

(assert (= (and b!2286434 ((_ is Concat!11213) (regOne!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287281))

(assert (= (and b!2286434 ((_ is Star!6699) (regOne!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287282))

(assert (= (and b!2286434 ((_ is Union!6699) (regOne!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287283))

(declare-fun b!2287285 () Bool)

(declare-fun e!1465389 () Bool)

(declare-fun tp!725026 () Bool)

(declare-fun tp!725028 () Bool)

(assert (=> b!2287285 (= e!1465389 (and tp!725026 tp!725028))))

(declare-fun b!2287287 () Bool)

(declare-fun tp!725030 () Bool)

(declare-fun tp!725027 () Bool)

(assert (=> b!2287287 (= e!1465389 (and tp!725030 tp!725027))))

(assert (=> b!2286434 (= tp!724812 e!1465389)))

(declare-fun b!2287284 () Bool)

(assert (=> b!2287284 (= e!1465389 tp_is_empty!10619)))

(declare-fun b!2287286 () Bool)

(declare-fun tp!725029 () Bool)

(assert (=> b!2287286 (= e!1465389 tp!725029)))

(assert (= (and b!2286434 ((_ is ElementMatch!6699) (regTwo!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287284))

(assert (= (and b!2286434 ((_ is Concat!11213) (regTwo!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287285))

(assert (= (and b!2286434 ((_ is Star!6699) (regTwo!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287286))

(assert (= (and b!2286434 ((_ is Union!6699) (regTwo!13911 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287287))

(declare-fun tp!725032 () Bool)

(declare-fun b!2287288 () Bool)

(declare-fun tp!725031 () Bool)

(declare-fun e!1465391 () Bool)

(assert (=> b!2287288 (= e!1465391 (and (inv!36807 (left!20630 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))))) tp!725032 (inv!36807 (right!20960 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))))) tp!725031))))

(declare-fun b!2287290 () Bool)

(declare-fun e!1465390 () Bool)

(declare-fun tp!725033 () Bool)

(assert (=> b!2287290 (= e!1465390 tp!725033)))

(declare-fun b!2287289 () Bool)

(assert (=> b!2287289 (= e!1465391 (and (inv!36814 (xs!11792 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))))) e!1465390))))

(assert (=> b!2285940 (= tp!724682 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456))))) e!1465391))))

(assert (= (and b!2285940 ((_ is Node!8850) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))))) b!2287288))

(assert (= b!2287289 b!2287290))

(assert (= (and b!2285940 ((_ is Leaf!13011) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (value!137823 (h!32614 tokens!456)))))) b!2287289))

(declare-fun m!2715223 () Bool)

(assert (=> b!2287288 m!2715223))

(declare-fun m!2715225 () Bool)

(assert (=> b!2287288 m!2715225))

(declare-fun m!2715227 () Bool)

(assert (=> b!2287289 m!2715227))

(assert (=> b!2285940 m!2713673))

(declare-fun b!2287292 () Bool)

(declare-fun e!1465392 () Bool)

(declare-fun tp!725034 () Bool)

(declare-fun tp!725036 () Bool)

(assert (=> b!2287292 (= e!1465392 (and tp!725034 tp!725036))))

(declare-fun b!2287294 () Bool)

(declare-fun tp!725038 () Bool)

(declare-fun tp!725035 () Bool)

(assert (=> b!2287294 (= e!1465392 (and tp!725038 tp!725035))))

(assert (=> b!2286388 (= tp!724763 e!1465392)))

(declare-fun b!2287291 () Bool)

(assert (=> b!2287291 (= e!1465392 tp_is_empty!10619)))

(declare-fun b!2287293 () Bool)

(declare-fun tp!725037 () Bool)

(assert (=> b!2287293 (= e!1465392 tp!725037)))

(assert (= (and b!2286388 ((_ is ElementMatch!6699) (regex!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) b!2287291))

(assert (= (and b!2286388 ((_ is Concat!11213) (regex!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) b!2287292))

(assert (= (and b!2286388 ((_ is Star!6699) (regex!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) b!2287293))

(assert (= (and b!2286388 ((_ is Union!6699) (regex!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) b!2287294))

(declare-fun b!2287298 () Bool)

(declare-fun b_free!68565 () Bool)

(declare-fun b_next!69269 () Bool)

(assert (=> b!2287298 (= b_free!68565 (not b_next!69269))))

(declare-fun tb!136179 () Bool)

(declare-fun t!204240 () Bool)

(assert (=> (and b!2287298 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toValue!6137 (transformation!4351 r!2363))) t!204240) tb!136179))

(declare-fun result!166042 () Bool)

(assert (= result!166042 result!165856))

(assert (=> d!676349 t!204240))

(assert (=> d!676351 t!204240))

(declare-fun tb!136181 () Bool)

(declare-fun t!204242 () Bool)

(assert (=> (and b!2287298 (= (toValue!6137 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204242) tb!136181))

(declare-fun result!166044 () Bool)

(assert (= result!166044 result!165986))

(assert (=> d!676731 t!204242))

(declare-fun tp!725040 () Bool)

(declare-fun b_and!181209 () Bool)

(assert (=> b!2287298 (= tp!725040 (and (=> t!204240 result!166042) (=> t!204242 result!166044) b_and!181209))))

(declare-fun b_free!68567 () Bool)

(declare-fun b_next!69271 () Bool)

(assert (=> b!2287298 (= b_free!68567 (not b_next!69271))))

(declare-fun t!204244 () Bool)

(declare-fun tb!136183 () Bool)

(assert (=> (and b!2287298 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204244) tb!136183))

(declare-fun result!166046 () Bool)

(assert (= result!166046 result!165828))

(assert (=> d!676341 t!204244))

(assert (=> b!2285934 t!204244))

(declare-fun tb!136185 () Bool)

(declare-fun t!204246 () Bool)

(assert (=> (and b!2287298 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toChars!5996 (transformation!4351 r!2363))) t!204246) tb!136185))

(declare-fun result!166048 () Bool)

(assert (= result!166048 result!165906))

(assert (=> d!676351 t!204246))

(declare-fun t!204248 () Bool)

(declare-fun tb!136187 () Bool)

(assert (=> (and b!2287298 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204248) tb!136187))

(declare-fun result!166050 () Bool)

(assert (= result!166050 result!165848))

(assert (=> d!676327 t!204248))

(declare-fun t!204250 () Bool)

(declare-fun tb!136189 () Bool)

(assert (=> (and b!2287298 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204250) tb!136189))

(declare-fun result!166052 () Bool)

(assert (= result!166052 result!166000))

(assert (=> b!2287116 t!204250))

(declare-fun t!204252 () Bool)

(declare-fun tb!136191 () Bool)

(assert (=> (and b!2287298 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204252) tb!136191))

(declare-fun result!166054 () Bool)

(assert (= result!166054 result!165974))

(assert (=> d!676701 t!204252))

(declare-fun tp!725042 () Bool)

(declare-fun b_and!181211 () Bool)

(assert (=> b!2287298 (= tp!725042 (and (=> t!204252 result!166054) (=> t!204248 result!166050) (=> t!204244 result!166046) (=> t!204246 result!166048) (=> t!204250 result!166052) b_and!181211))))

(declare-fun tp!725041 () Bool)

(declare-fun e!1465394 () Bool)

(declare-fun b!2287295 () Bool)

(declare-fun e!1465396 () Bool)

(assert (=> b!2287295 (= e!1465396 (and (inv!36804 (h!32614 (t!204033 (t!204033 tokens!456)))) e!1465394 tp!725041))))

(declare-fun e!1465393 () Bool)

(declare-fun b!2287297 () Bool)

(declare-fun tp!725039 () Bool)

(declare-fun e!1465395 () Bool)

(assert (=> b!2287297 (= e!1465393 (and tp!725039 (inv!36800 (tag!4841 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (inv!36803 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) e!1465395))))

(assert (=> b!2287298 (= e!1465395 (and tp!725040 tp!725042))))

(declare-fun b!2287296 () Bool)

(declare-fun tp!725043 () Bool)

(assert (=> b!2287296 (= e!1465394 (and (inv!21 (value!137823 (h!32614 (t!204033 (t!204033 tokens!456))))) e!1465393 tp!725043))))

(assert (=> b!2286386 (= tp!724765 e!1465396)))

(assert (= b!2287297 b!2287298))

(assert (= b!2287296 b!2287297))

(assert (= b!2287295 b!2287296))

(assert (= (and b!2286386 ((_ is Cons!27213) (t!204033 (t!204033 tokens!456)))) b!2287295))

(declare-fun m!2715229 () Bool)

(assert (=> b!2287295 m!2715229))

(declare-fun m!2715231 () Bool)

(assert (=> b!2287297 m!2715231))

(declare-fun m!2715233 () Bool)

(assert (=> b!2287297 m!2715233))

(declare-fun m!2715235 () Bool)

(assert (=> b!2287296 m!2715235))

(declare-fun b!2287300 () Bool)

(declare-fun e!1465399 () Bool)

(declare-fun tp!725044 () Bool)

(declare-fun tp!725046 () Bool)

(assert (=> b!2287300 (= e!1465399 (and tp!725044 tp!725046))))

(declare-fun b!2287302 () Bool)

(declare-fun tp!725048 () Bool)

(declare-fun tp!725045 () Bool)

(assert (=> b!2287302 (= e!1465399 (and tp!725048 tp!725045))))

(assert (=> b!2286399 (= tp!724778 e!1465399)))

(declare-fun b!2287299 () Bool)

(assert (=> b!2287299 (= e!1465399 tp_is_empty!10619)))

(declare-fun b!2287301 () Bool)

(declare-fun tp!725047 () Bool)

(assert (=> b!2287301 (= e!1465399 tp!725047)))

(assert (= (and b!2286399 ((_ is ElementMatch!6699) (regex!4351 (h!32615 (t!204034 rules!1750))))) b!2287299))

(assert (= (and b!2286399 ((_ is Concat!11213) (regex!4351 (h!32615 (t!204034 rules!1750))))) b!2287300))

(assert (= (and b!2286399 ((_ is Star!6699) (regex!4351 (h!32615 (t!204034 rules!1750))))) b!2287301))

(assert (= (and b!2286399 ((_ is Union!6699) (regex!4351 (h!32615 (t!204034 rules!1750))))) b!2287302))

(declare-fun b!2287304 () Bool)

(declare-fun e!1465400 () Bool)

(declare-fun tp!725049 () Bool)

(declare-fun tp!725051 () Bool)

(assert (=> b!2287304 (= e!1465400 (and tp!725049 tp!725051))))

(declare-fun b!2287306 () Bool)

(declare-fun tp!725053 () Bool)

(declare-fun tp!725050 () Bool)

(assert (=> b!2287306 (= e!1465400 (and tp!725053 tp!725050))))

(assert (=> b!2286433 (= tp!724814 e!1465400)))

(declare-fun b!2287303 () Bool)

(assert (=> b!2287303 (= e!1465400 tp_is_empty!10619)))

(declare-fun b!2287305 () Bool)

(declare-fun tp!725052 () Bool)

(assert (=> b!2287305 (= e!1465400 tp!725052)))

(assert (= (and b!2286433 ((_ is ElementMatch!6699) (reg!7028 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287303))

(assert (= (and b!2286433 ((_ is Concat!11213) (reg!7028 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287304))

(assert (= (and b!2286433 ((_ is Star!6699) (reg!7028 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287305))

(assert (= (and b!2286433 ((_ is Union!6699) (reg!7028 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287306))

(declare-fun b!2287307 () Bool)

(declare-fun tp!725055 () Bool)

(declare-fun e!1465402 () Bool)

(declare-fun tp!725054 () Bool)

(assert (=> b!2287307 (= e!1465402 (and (inv!36807 (left!20630 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))) tp!725055 (inv!36807 (right!20960 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))) tp!725054))))

(declare-fun b!2287309 () Bool)

(declare-fun e!1465401 () Bool)

(declare-fun tp!725056 () Bool)

(assert (=> b!2287309 (= e!1465401 tp!725056)))

(declare-fun b!2287308 () Bool)

(assert (=> b!2287308 (= e!1465402 (and (inv!36814 (xs!11792 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))) e!1465401))))

(assert (=> b!2286357 (= tp!724752 (and (inv!36807 (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241)))) e!1465402))))

(assert (= (and b!2286357 ((_ is Node!8850) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))) b!2287307))

(assert (= b!2287308 b!2287309))

(assert (= (and b!2286357 ((_ is Leaf!13011) (c!362568 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))))) b!2287308))

(declare-fun m!2715237 () Bool)

(assert (=> b!2287307 m!2715237))

(declare-fun m!2715239 () Bool)

(assert (=> b!2287307 m!2715239))

(declare-fun m!2715241 () Bool)

(assert (=> b!2287308 m!2715241))

(assert (=> b!2286357 m!2714085))

(declare-fun b!2287310 () Bool)

(declare-fun e!1465403 () Bool)

(declare-fun tp!725057 () Bool)

(assert (=> b!2287310 (= e!1465403 (and tp_is_empty!10619 tp!725057))))

(assert (=> b!2286387 (= tp!724767 e!1465403)))

(assert (= (and b!2286387 ((_ is Cons!27212) (originalCharacters!5121 (h!32614 (t!204033 tokens!456))))) b!2287310))

(declare-fun b!2287312 () Bool)

(declare-fun e!1465404 () Bool)

(declare-fun tp!725058 () Bool)

(declare-fun tp!725060 () Bool)

(assert (=> b!2287312 (= e!1465404 (and tp!725058 tp!725060))))

(declare-fun b!2287314 () Bool)

(declare-fun tp!725062 () Bool)

(declare-fun tp!725059 () Bool)

(assert (=> b!2287314 (= e!1465404 (and tp!725062 tp!725059))))

(assert (=> b!2286432 (= tp!724811 e!1465404)))

(declare-fun b!2287311 () Bool)

(assert (=> b!2287311 (= e!1465404 tp_is_empty!10619)))

(declare-fun b!2287313 () Bool)

(declare-fun tp!725061 () Bool)

(assert (=> b!2287313 (= e!1465404 tp!725061)))

(assert (= (and b!2286432 ((_ is ElementMatch!6699) (regOne!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287311))

(assert (= (and b!2286432 ((_ is Concat!11213) (regOne!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287312))

(assert (= (and b!2286432 ((_ is Star!6699) (regOne!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287313))

(assert (= (and b!2286432 ((_ is Union!6699) (regOne!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287314))

(declare-fun b!2287316 () Bool)

(declare-fun e!1465405 () Bool)

(declare-fun tp!725063 () Bool)

(declare-fun tp!725065 () Bool)

(assert (=> b!2287316 (= e!1465405 (and tp!725063 tp!725065))))

(declare-fun b!2287318 () Bool)

(declare-fun tp!725067 () Bool)

(declare-fun tp!725064 () Bool)

(assert (=> b!2287318 (= e!1465405 (and tp!725067 tp!725064))))

(assert (=> b!2286432 (= tp!724813 e!1465405)))

(declare-fun b!2287315 () Bool)

(assert (=> b!2287315 (= e!1465405 tp_is_empty!10619)))

(declare-fun b!2287317 () Bool)

(declare-fun tp!725066 () Bool)

(assert (=> b!2287317 (= e!1465405 tp!725066)))

(assert (= (and b!2286432 ((_ is ElementMatch!6699) (regTwo!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287315))

(assert (= (and b!2286432 ((_ is Concat!11213) (regTwo!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287316))

(assert (= (and b!2286432 ((_ is Star!6699) (regTwo!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287317))

(assert (= (and b!2286432 ((_ is Union!6699) (regTwo!13910 (regex!4351 (rule!6679 (h!32614 tokens!456)))))) b!2287318))

(declare-fun b!2287320 () Bool)

(declare-fun e!1465406 () Bool)

(declare-fun tp!725068 () Bool)

(declare-fun tp!725070 () Bool)

(assert (=> b!2287320 (= e!1465406 (and tp!725068 tp!725070))))

(declare-fun b!2287322 () Bool)

(declare-fun tp!725072 () Bool)

(declare-fun tp!725069 () Bool)

(assert (=> b!2287322 (= e!1465406 (and tp!725072 tp!725069))))

(assert (=> b!2286423 (= tp!724802 e!1465406)))

(declare-fun b!2287319 () Bool)

(assert (=> b!2287319 (= e!1465406 tp_is_empty!10619)))

(declare-fun b!2287321 () Bool)

(declare-fun tp!725071 () Bool)

(assert (=> b!2287321 (= e!1465406 tp!725071)))

(assert (= (and b!2286423 ((_ is ElementMatch!6699) (reg!7028 (regex!4351 (h!32615 rules!1750))))) b!2287319))

(assert (= (and b!2286423 ((_ is Concat!11213) (reg!7028 (regex!4351 (h!32615 rules!1750))))) b!2287320))

(assert (= (and b!2286423 ((_ is Star!6699) (reg!7028 (regex!4351 (h!32615 rules!1750))))) b!2287321))

(assert (= (and b!2286423 ((_ is Union!6699) (reg!7028 (regex!4351 (h!32615 rules!1750))))) b!2287322))

(declare-fun b!2287325 () Bool)

(declare-fun b_free!68569 () Bool)

(declare-fun b_next!69273 () Bool)

(assert (=> b!2287325 (= b_free!68569 (not b_next!69273))))

(declare-fun tb!136193 () Bool)

(declare-fun t!204254 () Bool)

(assert (=> (and b!2287325 (= (toValue!6137 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toValue!6137 (transformation!4351 r!2363))) t!204254) tb!136193))

(declare-fun result!166056 () Bool)

(assert (= result!166056 result!165856))

(assert (=> d!676349 t!204254))

(assert (=> d!676351 t!204254))

(declare-fun t!204256 () Bool)

(declare-fun tb!136195 () Bool)

(assert (=> (and b!2287325 (= (toValue!6137 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toValue!6137 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204256) tb!136195))

(declare-fun result!166058 () Bool)

(assert (= result!166058 result!165986))

(assert (=> d!676731 t!204256))

(declare-fun tp!725073 () Bool)

(declare-fun b_and!181213 () Bool)

(assert (=> b!2287325 (= tp!725073 (and (=> t!204254 result!166056) (=> t!204256 result!166058) b_and!181213))))

(declare-fun b_free!68571 () Bool)

(declare-fun b_next!69275 () Bool)

(assert (=> b!2287325 (= b_free!68571 (not b_next!69275))))

(declare-fun tb!136197 () Bool)

(declare-fun t!204258 () Bool)

(assert (=> (and b!2287325 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456))))) t!204258) tb!136197))

(declare-fun result!166060 () Bool)

(assert (= result!166060 result!165828))

(assert (=> d!676341 t!204258))

(assert (=> b!2285934 t!204258))

(declare-fun tb!136199 () Bool)

(declare-fun t!204260 () Bool)

(assert (=> (and b!2287325 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toChars!5996 (transformation!4351 r!2363))) t!204260) tb!136199))

(declare-fun result!166062 () Bool)

(assert (= result!166062 result!165906))

(assert (=> d!676351 t!204260))

(declare-fun tb!136201 () Bool)

(declare-fun t!204262 () Bool)

(assert (=> (and b!2287325 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456))))) t!204262) tb!136201))

(declare-fun result!166064 () Bool)

(assert (= result!166064 result!165848))

(assert (=> d!676327 t!204262))

(declare-fun t!204264 () Bool)

(declare-fun tb!136203 () Bool)

(assert (=> (and b!2287325 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456)))))) t!204264) tb!136203))

(declare-fun result!166066 () Bool)

(assert (= result!166066 result!166000))

(assert (=> b!2287116 t!204264))

(declare-fun t!204266 () Bool)

(declare-fun tb!136205 () Bool)

(assert (=> (and b!2287325 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toChars!5996 (transformation!4351 (rule!6679 (_1!16003 (get!8206 lt!848285)))))) t!204266) tb!136205))

(declare-fun result!166068 () Bool)

(assert (= result!166068 result!165974))

(assert (=> d!676701 t!204266))

(declare-fun b_and!181215 () Bool)

(declare-fun tp!725076 () Bool)

(assert (=> b!2287325 (= tp!725076 (and (=> t!204258 result!166060) (=> t!204264 result!166066) (=> t!204260 result!166062) (=> t!204266 result!166068) (=> t!204262 result!166064) b_and!181215))))

(declare-fun e!1465407 () Bool)

(assert (=> b!2287325 (= e!1465407 (and tp!725073 tp!725076))))

(declare-fun tp!725075 () Bool)

(declare-fun e!1465408 () Bool)

(declare-fun b!2287324 () Bool)

(assert (=> b!2287324 (= e!1465408 (and tp!725075 (inv!36800 (tag!4841 (h!32615 (t!204034 (t!204034 rules!1750))))) (inv!36803 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) e!1465407))))

(declare-fun b!2287323 () Bool)

(declare-fun e!1465409 () Bool)

(declare-fun tp!725074 () Bool)

(assert (=> b!2287323 (= e!1465409 (and e!1465408 tp!725074))))

(assert (=> b!2286398 (= tp!724777 e!1465409)))

(assert (= b!2287324 b!2287325))

(assert (= b!2287323 b!2287324))

(assert (= (and b!2286398 ((_ is Cons!27214) (t!204034 (t!204034 rules!1750)))) b!2287323))

(declare-fun m!2715243 () Bool)

(assert (=> b!2287324 m!2715243))

(declare-fun m!2715245 () Bool)

(assert (=> b!2287324 m!2715245))

(declare-fun b!2287327 () Bool)

(declare-fun e!1465411 () Bool)

(declare-fun tp!725077 () Bool)

(declare-fun tp!725079 () Bool)

(assert (=> b!2287327 (= e!1465411 (and tp!725077 tp!725079))))

(declare-fun b!2287329 () Bool)

(declare-fun tp!725081 () Bool)

(declare-fun tp!725078 () Bool)

(assert (=> b!2287329 (= e!1465411 (and tp!725081 tp!725078))))

(assert (=> b!2286424 (= tp!724803 e!1465411)))

(declare-fun b!2287326 () Bool)

(assert (=> b!2287326 (= e!1465411 tp_is_empty!10619)))

(declare-fun b!2287328 () Bool)

(declare-fun tp!725080 () Bool)

(assert (=> b!2287328 (= e!1465411 tp!725080)))

(assert (= (and b!2286424 ((_ is ElementMatch!6699) (regOne!13911 (regex!4351 (h!32615 rules!1750))))) b!2287326))

(assert (= (and b!2286424 ((_ is Concat!11213) (regOne!13911 (regex!4351 (h!32615 rules!1750))))) b!2287327))

(assert (= (and b!2286424 ((_ is Star!6699) (regOne!13911 (regex!4351 (h!32615 rules!1750))))) b!2287328))

(assert (= (and b!2286424 ((_ is Union!6699) (regOne!13911 (regex!4351 (h!32615 rules!1750))))) b!2287329))

(declare-fun b!2287331 () Bool)

(declare-fun e!1465412 () Bool)

(declare-fun tp!725082 () Bool)

(declare-fun tp!725084 () Bool)

(assert (=> b!2287331 (= e!1465412 (and tp!725082 tp!725084))))

(declare-fun b!2287333 () Bool)

(declare-fun tp!725086 () Bool)

(declare-fun tp!725083 () Bool)

(assert (=> b!2287333 (= e!1465412 (and tp!725086 tp!725083))))

(assert (=> b!2286424 (= tp!724800 e!1465412)))

(declare-fun b!2287330 () Bool)

(assert (=> b!2287330 (= e!1465412 tp_is_empty!10619)))

(declare-fun b!2287332 () Bool)

(declare-fun tp!725085 () Bool)

(assert (=> b!2287332 (= e!1465412 tp!725085)))

(assert (= (and b!2286424 ((_ is ElementMatch!6699) (regTwo!13911 (regex!4351 (h!32615 rules!1750))))) b!2287330))

(assert (= (and b!2286424 ((_ is Concat!11213) (regTwo!13911 (regex!4351 (h!32615 rules!1750))))) b!2287331))

(assert (= (and b!2286424 ((_ is Star!6699) (regTwo!13911 (regex!4351 (h!32615 rules!1750))))) b!2287332))

(assert (= (and b!2286424 ((_ is Union!6699) (regTwo!13911 (regex!4351 (h!32615 rules!1750))))) b!2287333))

(declare-fun b!2287334 () Bool)

(declare-fun e!1465413 () Bool)

(declare-fun tp!725087 () Bool)

(assert (=> b!2287334 (= e!1465413 (and tp_is_empty!10619 tp!725087))))

(assert (=> b!2286406 (= tp!724783 e!1465413)))

(assert (= (and b!2286406 ((_ is Cons!27212) (t!204032 (t!204032 input!1722)))) b!2287334))

(declare-fun b!2287336 () Bool)

(declare-fun e!1465414 () Bool)

(declare-fun tp!725088 () Bool)

(declare-fun tp!725090 () Bool)

(assert (=> b!2287336 (= e!1465414 (and tp!725088 tp!725090))))

(declare-fun b!2287338 () Bool)

(declare-fun tp!725092 () Bool)

(declare-fun tp!725089 () Bool)

(assert (=> b!2287338 (= e!1465414 (and tp!725092 tp!725089))))

(assert (=> b!2286422 (= tp!724799 e!1465414)))

(declare-fun b!2287335 () Bool)

(assert (=> b!2287335 (= e!1465414 tp_is_empty!10619)))

(declare-fun b!2287337 () Bool)

(declare-fun tp!725091 () Bool)

(assert (=> b!2287337 (= e!1465414 tp!725091)))

(assert (= (and b!2286422 ((_ is ElementMatch!6699) (regOne!13910 (regex!4351 (h!32615 rules!1750))))) b!2287335))

(assert (= (and b!2286422 ((_ is Concat!11213) (regOne!13910 (regex!4351 (h!32615 rules!1750))))) b!2287336))

(assert (= (and b!2286422 ((_ is Star!6699) (regOne!13910 (regex!4351 (h!32615 rules!1750))))) b!2287337))

(assert (= (and b!2286422 ((_ is Union!6699) (regOne!13910 (regex!4351 (h!32615 rules!1750))))) b!2287338))

(declare-fun b!2287340 () Bool)

(declare-fun e!1465415 () Bool)

(declare-fun tp!725093 () Bool)

(declare-fun tp!725095 () Bool)

(assert (=> b!2287340 (= e!1465415 (and tp!725093 tp!725095))))

(declare-fun b!2287342 () Bool)

(declare-fun tp!725097 () Bool)

(declare-fun tp!725094 () Bool)

(assert (=> b!2287342 (= e!1465415 (and tp!725097 tp!725094))))

(assert (=> b!2286422 (= tp!724801 e!1465415)))

(declare-fun b!2287339 () Bool)

(assert (=> b!2287339 (= e!1465415 tp_is_empty!10619)))

(declare-fun b!2287341 () Bool)

(declare-fun tp!725096 () Bool)

(assert (=> b!2287341 (= e!1465415 tp!725096)))

(assert (= (and b!2286422 ((_ is ElementMatch!6699) (regTwo!13910 (regex!4351 (h!32615 rules!1750))))) b!2287339))

(assert (= (and b!2286422 ((_ is Concat!11213) (regTwo!13910 (regex!4351 (h!32615 rules!1750))))) b!2287340))

(assert (= (and b!2286422 ((_ is Star!6699) (regTwo!13910 (regex!4351 (h!32615 rules!1750))))) b!2287341))

(assert (= (and b!2286422 ((_ is Union!6699) (regTwo!13910 (regex!4351 (h!32615 rules!1750))))) b!2287342))

(declare-fun b_lambda!72835 () Bool)

(assert (= b_lambda!72821 (or (and b!2286400 b_free!68555 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))))) (and b!2285886 b_free!68531 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))))) (and b!2287325 b_free!68571 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))))) (and b!2286389 b_free!68551) (and b!2285910 b_free!68527 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))))) (and b!2287298 b_free!68567 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))))) (and b!2285891 b_free!68539 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))))) (and b!2285894 b_free!68535 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))))) b_lambda!72835)))

(declare-fun b_lambda!72837 () Bool)

(assert (= b_lambda!72823 (or d!676351 b_lambda!72837)))

(declare-fun bs!456929 () Bool)

(declare-fun d!676875 () Bool)

(assert (= bs!456929 (and d!676875 d!676351)))

(assert (=> bs!456929 (= (dynLambda!11813 lambda!85703 lt!848241) (= (list!10632 (dynLambda!11805 (toChars!5996 (transformation!4351 r!2363)) (dynLambda!11806 (toValue!6137 (transformation!4351 r!2363)) lt!848241))) (list!10632 lt!848241)))))

(declare-fun b_lambda!72841 () Bool)

(assert (=> (not b_lambda!72841) (not bs!456929)))

(assert (=> bs!456929 t!204123))

(declare-fun b_and!181217 () Bool)

(assert (= b_and!181167 (and (=> t!204123 result!165922) b_and!181217)))

(assert (=> bs!456929 t!204113))

(declare-fun b_and!181219 () Bool)

(assert (= b_and!181161 (and (=> t!204113 result!165910) b_and!181219)))

(assert (=> bs!456929 t!204260))

(declare-fun b_and!181221 () Bool)

(assert (= b_and!181215 (and (=> t!204260 result!166062) b_and!181221)))

(assert (=> bs!456929 t!204115))

(declare-fun b_and!181223 () Bool)

(assert (= b_and!181157 (and (=> t!204115 result!165912) b_and!181223)))

(assert (=> bs!456929 t!204131))

(declare-fun b_and!181225 () Bool)

(assert (= b_and!181163 (and (=> t!204131 result!165932) b_and!181225)))

(assert (=> bs!456929 t!204109))

(declare-fun b_and!181227 () Bool)

(assert (= b_and!181165 (and (=> t!204109 result!165906) b_and!181227)))

(assert (=> bs!456929 t!204111))

(declare-fun b_and!181229 () Bool)

(assert (= b_and!181159 (and (=> t!204111 result!165908) b_and!181229)))

(assert (=> bs!456929 t!204246))

(declare-fun b_and!181231 () Bool)

(assert (= b_and!181211 (and (=> t!204246 result!166048) b_and!181231)))

(declare-fun b_lambda!72843 () Bool)

(assert (=> (not b_lambda!72843) (not bs!456929)))

(assert (=> bs!456929 t!204117))

(declare-fun b_and!181233 () Bool)

(assert (= b_and!181145 (and (=> t!204117 result!165916) b_and!181233)))

(assert (=> bs!456929 t!204125))

(declare-fun b_and!181235 () Bool)

(assert (= b_and!181153 (and (=> t!204125 result!165926) b_and!181235)))

(assert (=> bs!456929 t!204254))

(declare-fun b_and!181237 () Bool)

(assert (= b_and!181213 (and (=> t!204254 result!166056) b_and!181237)))

(assert (=> bs!456929 t!204240))

(declare-fun b_and!181239 () Bool)

(assert (= b_and!181209 (and (=> t!204240 result!166042) b_and!181239)))

(assert (=> bs!456929 t!204074))

(declare-fun b_and!181241 () Bool)

(assert (= b_and!181147 (and (=> t!204074 result!165864) b_and!181241)))

(assert (=> bs!456929 t!204070))

(declare-fun b_and!181243 () Bool)

(assert (= b_and!181155 (and (=> t!204070 result!165860) b_and!181243)))

(assert (=> bs!456929 t!204072))

(declare-fun b_and!181245 () Bool)

(assert (= b_and!181151 (and (=> t!204072 result!165862) b_and!181245)))

(assert (=> bs!456929 t!204068))

(declare-fun b_and!181247 () Bool)

(assert (= b_and!181149 (and (=> t!204068 result!165856) b_and!181247)))

(assert (=> bs!456929 m!2713893))

(assert (=> bs!456929 m!2714091))

(assert (=> bs!456929 m!2714091))

(assert (=> bs!456929 m!2714093))

(assert (=> bs!456929 m!2713893))

(assert (=> bs!456929 m!2714095))

(assert (=> d!676865 d!676875))

(declare-fun b_lambda!72839 () Bool)

(assert (= b_lambda!72773 (or (and b!2287325 b_free!68571 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 (t!204034 rules!1750))))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) (and b!2286400 b_free!68555 (= (toChars!5996 (transformation!4351 (h!32615 (t!204034 rules!1750)))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) (and b!2285910 b_free!68527 (= (toChars!5996 (transformation!4351 (h!32615 rules!1750))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) (and b!2285891 b_free!68539 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 tokens!456)))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) (and b!2285894 b_free!68535 (= (toChars!5996 (transformation!4351 otherR!12)) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) (and b!2285886 b_free!68531 (= (toChars!5996 (transformation!4351 r!2363)) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) (and b!2287298 b_free!68567 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 (t!204033 tokens!456)))))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) (and b!2286389 b_free!68551 (= (toChars!5996 (transformation!4351 (rule!6679 (h!32614 (t!204033 tokens!456))))) (toChars!5996 (transformation!4351 (rule!6679 (head!4970 tokens!456)))))) b_lambda!72839)))

(check-sat (not bm!136568) (not bm!136566) (not b_lambda!72817) b_and!181245 (not b!2287321) (not b_lambda!72803) (not b_next!69255) (not b_lambda!72799) (not b!2287116) (not b!2287243) (not b!2287266) (not b!2287145) (not b!2287235) (not b!2286809) (not b!2287336) (not b_next!69243) (not d!676665) b_and!181225 (not d!676479) (not b_lambda!72841) (not b!2286872) (not d!676847) (not b!2286903) (not d!676681) (not b!2287301) (not b!2286502) (not b!2286902) (not b!2286578) (not b!2287263) (not d!676471) (not b!2287323) (not b!2286497) (not b_lambda!72801) (not b!2287123) (not b!2287289) (not b!2286891) (not b_next!69235) (not b!2286966) (not b!2287164) (not b!2287251) (not b!2287273) (not b!2286937) (not b!2287302) (not b!2286792) (not d!676561) (not d!676861) (not b!2286873) (not b!2286992) (not b_next!69241) (not d!676699) b_and!181243 (not d!676863) b_and!181223 (not b!2287313) (not b!2286846) (not b!2287287) (not b!2287259) (not b!2286979) (not d!676629) (not b!2286757) (not b!2287265) (not b!2287309) (not b!2287308) (not b!2286837) (not b!2287283) (not b!2287293) (not d!676569) (not b!2287255) (not bm!136589) (not b!2286581) (not b!2286951) (not d!676671) (not b!2286616) (not b!2287333) (not bm!136587) (not d!676639) (not b!2286963) (not b!2287068) (not d!676647) (not b!2287069) (not tb!136127) (not b!2287107) (not b!2286758) (not b!2287278) (not b!2286584) (not bm!136536) (not b!2287322) (not d!676559) (not b!2287314) (not b!2287334) (not b!2286759) (not b!2287253) (not b!2287100) (not d!676585) (not b_next!69253) (not b!2286580) (not b!2287296) (not b!2286856) (not b!2286869) (not d!676657) (not bs!456929) (not b!2286564) (not b!2287067) b_and!181247 (not b!2286978) (not b!2287341) (not b!2286861) (not b!2287328) (not b!2287258) (not b!2287324) (not d!676749) (not b!2287112) (not b!2286867) (not d!676773) (not b!2287267) (not b!2286950) (not b!2286851) (not b!2287234) (not b!2286849) b_and!181229 b_and!181239 (not bm!136565) (not b!2286587) (not b!2287246) (not b!2287163) (not d!676871) (not b!2286576) (not d!676555) (not b!2286566) (not b!2286573) b_and!181227 (not b_next!69269) (not b!2287316) (not b!2287242) (not b_next!69257) (not d!676719) (not b!2286845) (not b_next!69233) (not d!676571) (not b!2287261) (not b!2286795) (not b!2286854) (not b!2286501) (not b!2287090) (not d!676859) (not b_next!69231) (not b!2286745) (not b!2287307) (not b_lambda!72815) (not b!2287241) (not d!676747) (not b_lambda!72835) (not b_next!69275) (not b!2286866) (not b!2287269) (not b!2286764) (not b_next!69273) (not d!676557) (not b_next!69237) (not b!2286915) (not b!2287238) (not b!2286935) (not d!676701) (not b!2286565) (not d!676643) (not d!676791) (not d!676849) (not b!2286572) (not d!676721) (not b!2287257) (not b!2287306) (not b!2287312) (not b!2286781) (not b!2286571) b_and!181217 (not b!2287271) (not b!2287304) (not d!676771) (not d!676549) (not d!676745) (not b!2287279) (not b!2286498) (not tb!136115) (not b!2287297) (not d!676573) (not d!676727) (not b!2287277) (not b!2287342) (not b!2287295) (not b_next!69239) (not b_lambda!72837) (not bm!136570) (not d!676759) (not d!676697) (not d!676705) (not b!2286805) b_and!181237 (not d!676583) (not b!2286853) (not b!2286569) (not b!2287239) (not b!2287285) (not d!676853) (not b!2287275) (not b!2286981) (not b!2286802) (not b!2287281) (not b!2287338) (not d!676551) (not b!2287331) (not b_next!69229) (not b_lambda!72839) (not b!2287060) (not b!2287250) (not b!2286847) (not d!676733) (not b_lambda!72843) (not b!2287317) (not b!2286921) (not b!2286796) (not d!676563) (not b!2287245) (not b!2287318) (not b!2286622) (not b!2286747) (not b!2286098) (not b!2286568) (not b!2286799) (not b!2286868) (not b!2287144) (not b!2287327) (not d!676769) b_and!181235 (not b!2287329) (not b!2286567) (not b!2286986) (not d!676857) (not b!2287140) (not d!676707) (not b!2286990) (not b!2286865) (not b!2286753) (not b!2287247) (not b!2286765) (not b_next!69271) (not b!2287288) (not b!2287110) (not bm!136569) (not b!2287337) (not b!2286800) (not d!676641) (not b!2287290) (not b_lambda!72807) (not b!2287104) (not b!2286876) b_and!181241 (not b!2286964) (not d!676553) (not b!2286808) (not b!2287274) (not d!676467) (not b!2287270) (not b!2287117) (not b!2286954) b_and!181231 (not b!2286577) (not d!676695) (not bm!136575) (not b!2287292) (not tb!136139) (not b!2286991) (not b!2287236) (not d!676659) (not d!676865) (not b!2286357) b_and!181221 (not b!2285940) (not b!2287300) (not b!2286748) (not b!2287294) (not b!2287286) (not b!2287142) b_and!181233 (not b!2286624) (not d!676781) (not b!2287109) (not b!2287310) (not d!676855) (not b!2286575) (not b!2287305) (not d!676715) (not b!2286619) (not b!2286936) (not d!676843) (not b!2287262) (not b!2286746) (not b!2287282) (not b!2287254) (not b!2287340) (not d!676653) (not b!2287320) (not b!2286952) (not b!2287249) tp_is_empty!10619 (not b!2286755) b_and!181219 (not d!676687) (not b!2287237) (not b!2286803) (not b_lambda!72805) (not b!2286579) (not b_next!69259) (not b!2286618) (not d!676581) (not b!2286889) (not b!2287332) (not d!676735))
(check-sat (not b_next!69235) (not b_next!69253) b_and!181247 b_and!181217 (not b_next!69239) b_and!181237 (not b_next!69229) b_and!181235 (not b_next!69271) b_and!181241 b_and!181231 b_and!181221 b_and!181233 b_and!181219 (not b_next!69259) (not b_next!69255) b_and!181245 (not b_next!69243) b_and!181225 (not b_next!69241) b_and!181243 b_and!181223 b_and!181229 b_and!181239 b_and!181227 (not b_next!69269) (not b_next!69257) (not b_next!69233) (not b_next!69231) (not b_next!69275) (not b_next!69273) (not b_next!69237))
