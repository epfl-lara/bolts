; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373756 () Bool)

(assert start!373756)

(declare-fun b!3972091 () Bool)

(declare-fun b_free!110089 () Bool)

(declare-fun b_next!110793 () Bool)

(assert (=> b!3972091 (= b_free!110089 (not b_next!110793))))

(declare-fun tp!1211208 () Bool)

(declare-fun b_and!305359 () Bool)

(assert (=> b!3972091 (= tp!1211208 b_and!305359)))

(declare-fun b_free!110091 () Bool)

(declare-fun b_next!110795 () Bool)

(assert (=> b!3972091 (= b_free!110091 (not b_next!110795))))

(declare-fun tp!1211213 () Bool)

(declare-fun b_and!305361 () Bool)

(assert (=> b!3972091 (= tp!1211213 b_and!305361)))

(declare-fun b!3972099 () Bool)

(declare-fun b_free!110093 () Bool)

(declare-fun b_next!110797 () Bool)

(assert (=> b!3972099 (= b_free!110093 (not b_next!110797))))

(declare-fun tp!1211211 () Bool)

(declare-fun b_and!305363 () Bool)

(assert (=> b!3972099 (= tp!1211211 b_and!305363)))

(declare-fun b_free!110095 () Bool)

(declare-fun b_next!110799 () Bool)

(assert (=> b!3972099 (= b_free!110095 (not b_next!110799))))

(declare-fun tp!1211203 () Bool)

(declare-fun b_and!305365 () Bool)

(assert (=> b!3972099 (= tp!1211203 b_and!305365)))

(declare-fun b!3972079 () Bool)

(declare-fun res!1608030 () Bool)

(declare-fun e!2460724 () Bool)

(assert (=> b!3972079 (=> (not res!1608030) (not e!2460724))))

(declare-datatypes ((LexerInterface!6265 0))(
  ( (LexerInterfaceExt!6262 (__x!26029 Int)) (Lexer!6263) )
))
(declare-fun thiss!21717 () LexerInterface!6265)

(declare-datatypes ((C!23348 0))(
  ( (C!23349 (val!13768 Int)) )
))
(declare-datatypes ((List!42538 0))(
  ( (Nil!42414) (Cons!42414 (h!47834 C!23348) (t!330929 List!42538)) )
))
(declare-datatypes ((IArray!25779 0))(
  ( (IArray!25780 (innerList!12947 List!42538)) )
))
(declare-datatypes ((Conc!12887 0))(
  ( (Node!12887 (left!32119 Conc!12887) (right!32449 Conc!12887) (csize!26004 Int) (cheight!13098 Int)) (Leaf!19932 (xs!16193 IArray!25779) (csize!26005 Int)) (Empty!12887) )
))
(declare-datatypes ((BalanceConc!25368 0))(
  ( (BalanceConc!25369 (c!688836 Conc!12887)) )
))
(declare-datatypes ((List!42539 0))(
  ( (Nil!42415) (Cons!42415 (h!47835 (_ BitVec 16)) (t!330930 List!42539)) )
))
(declare-datatypes ((Regex!11581 0))(
  ( (ElementMatch!11581 (c!688837 C!23348)) (Concat!18487 (regOne!23674 Regex!11581) (regTwo!23674 Regex!11581)) (EmptyExpr!11581) (Star!11581 (reg!11910 Regex!11581)) (EmptyLang!11581) (Union!11581 (regOne!23675 Regex!11581) (regTwo!23675 Regex!11581)) )
))
(declare-datatypes ((String!48247 0))(
  ( (String!48248 (value!210874 String)) )
))
(declare-datatypes ((TokenValue!6906 0))(
  ( (FloatLiteralValue!13812 (text!48787 List!42539)) (TokenValueExt!6905 (__x!26030 Int)) (Broken!34530 (value!210875 List!42539)) (Object!7029) (End!6906) (Def!6906) (Underscore!6906) (Match!6906) (Else!6906) (Error!6906) (Case!6906) (If!6906) (Extends!6906) (Abstract!6906) (Class!6906) (Val!6906) (DelimiterValue!13812 (del!6966 List!42539)) (KeywordValue!6912 (value!210876 List!42539)) (CommentValue!13812 (value!210877 List!42539)) (WhitespaceValue!13812 (value!210878 List!42539)) (IndentationValue!6906 (value!210879 List!42539)) (String!48249) (Int32!6906) (Broken!34531 (value!210880 List!42539)) (Boolean!6907) (Unit!61064) (OperatorValue!6909 (op!6966 List!42539)) (IdentifierValue!13812 (value!210881 List!42539)) (IdentifierValue!13813 (value!210882 List!42539)) (WhitespaceValue!13813 (value!210883 List!42539)) (True!13812) (False!13812) (Broken!34532 (value!210884 List!42539)) (Broken!34533 (value!210885 List!42539)) (True!13813) (RightBrace!6906) (RightBracket!6906) (Colon!6906) (Null!6906) (Comma!6906) (LeftBracket!6906) (False!13813) (LeftBrace!6906) (ImaginaryLiteralValue!6906 (text!48788 List!42539)) (StringLiteralValue!20718 (value!210886 List!42539)) (EOFValue!6906 (value!210887 List!42539)) (IdentValue!6906 (value!210888 List!42539)) (DelimiterValue!13813 (value!210889 List!42539)) (DedentValue!6906 (value!210890 List!42539)) (NewLineValue!6906 (value!210891 List!42539)) (IntegerValue!20718 (value!210892 (_ BitVec 32)) (text!48789 List!42539)) (IntegerValue!20719 (value!210893 Int) (text!48790 List!42539)) (Times!6906) (Or!6906) (Equal!6906) (Minus!6906) (Broken!34534 (value!210894 List!42539)) (And!6906) (Div!6906) (LessEqual!6906) (Mod!6906) (Concat!18488) (Not!6906) (Plus!6906) (SpaceValue!6906 (value!210895 List!42539)) (IntegerValue!20720 (value!210896 Int) (text!48791 List!42539)) (StringLiteralValue!20719 (text!48792 List!42539)) (FloatLiteralValue!13813 (text!48793 List!42539)) (BytesLiteralValue!6906 (value!210897 List!42539)) (CommentValue!13813 (value!210898 List!42539)) (StringLiteralValue!20720 (value!210899 List!42539)) (ErrorTokenValue!6906 (msg!6967 List!42539)) )
))
(declare-datatypes ((TokenValueInjection!13240 0))(
  ( (TokenValueInjection!13241 (toValue!9164 Int) (toChars!9023 Int)) )
))
(declare-datatypes ((Rule!13152 0))(
  ( (Rule!13153 (regex!6676 Regex!11581) (tag!7536 String!48247) (isSeparator!6676 Bool) (transformation!6676 TokenValueInjection!13240)) )
))
(declare-datatypes ((List!42540 0))(
  ( (Nil!42416) (Cons!42416 (h!47836 Rule!13152) (t!330931 List!42540)) )
))
(declare-fun rules!2999 () List!42540)

(declare-fun rulesInvariant!5608 (LexerInterface!6265 List!42540) Bool)

(assert (=> b!3972079 (= res!1608030 (rulesInvariant!5608 thiss!21717 rules!2999))))

(declare-fun b!3972080 () Bool)

(declare-fun e!2460727 () Bool)

(declare-fun tp_is_empty!20133 () Bool)

(declare-fun tp!1211212 () Bool)

(assert (=> b!3972080 (= e!2460727 (and tp_is_empty!20133 tp!1211212))))

(declare-fun b!3972081 () Bool)

(declare-fun e!2460710 () Bool)

(declare-fun e!2460715 () Bool)

(assert (=> b!3972081 (= e!2460710 (not e!2460715))))

(declare-fun res!1608037 () Bool)

(assert (=> b!3972081 (=> res!1608037 e!2460715)))

(declare-fun lt!1391626 () List!42538)

(declare-fun lt!1391636 () List!42538)

(assert (=> b!3972081 (= res!1608037 (not (= lt!1391626 lt!1391636)))))

(declare-fun lt!1391645 () List!42538)

(declare-fun suffixResult!105 () List!42538)

(declare-fun ++!11078 (List!42538 List!42538) List!42538)

(assert (=> b!3972081 (= lt!1391626 (++!11078 lt!1391645 suffixResult!105))))

(declare-datatypes ((Unit!61065 0))(
  ( (Unit!61066) )
))
(declare-fun lt!1391629 () Unit!61065)

(declare-datatypes ((Token!12490 0))(
  ( (Token!12491 (value!210900 TokenValue!6906) (rule!9666 Rule!13152) (size!31734 Int) (originalCharacters!7276 List!42538)) )
))
(declare-fun token!484 () Token!12490)

(declare-fun lemmaInv!891 (TokenValueInjection!13240) Unit!61065)

(assert (=> b!3972081 (= lt!1391629 (lemmaInv!891 (transformation!6676 (rule!9666 token!484))))))

(declare-fun ruleValid!2608 (LexerInterface!6265 Rule!13152) Bool)

(assert (=> b!3972081 (ruleValid!2608 thiss!21717 (rule!9666 token!484))))

(declare-fun lt!1391624 () Unit!61065)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1682 (LexerInterface!6265 Rule!13152 List!42540) Unit!61065)

(assert (=> b!3972081 (= lt!1391624 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1682 thiss!21717 (rule!9666 token!484) rules!2999))))

(declare-fun b!3972082 () Bool)

(declare-fun e!2460731 () Bool)

(declare-fun e!2460709 () Bool)

(assert (=> b!3972082 (= e!2460731 e!2460709)))

(declare-fun res!1608039 () Bool)

(assert (=> b!3972082 (=> res!1608039 e!2460709)))

(declare-fun lt!1391632 () List!42538)

(declare-fun prefix!494 () List!42538)

(assert (=> b!3972082 (= res!1608039 (not (= lt!1391632 prefix!494)))))

(declare-fun lt!1391640 () List!42538)

(assert (=> b!3972082 (= lt!1391632 (++!11078 lt!1391645 lt!1391640))))

(declare-fun getSuffix!2194 (List!42538 List!42538) List!42538)

(assert (=> b!3972082 (= lt!1391640 (getSuffix!2194 prefix!494 lt!1391645))))

(declare-fun isPrefix!3763 (List!42538 List!42538) Bool)

(assert (=> b!3972082 (isPrefix!3763 lt!1391645 prefix!494)))

(declare-fun lt!1391625 () Unit!61065)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!341 (List!42538 List!42538 List!42538) Unit!61065)

(assert (=> b!3972082 (= lt!1391625 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!341 prefix!494 lt!1391645 lt!1391636))))

(declare-fun b!3972083 () Bool)

(declare-fun res!1608046 () Bool)

(assert (=> b!3972083 (=> (not res!1608046) (not e!2460724))))

(declare-fun newSuffix!27 () List!42538)

(declare-fun suffix!1299 () List!42538)

(assert (=> b!3972083 (= res!1608046 (isPrefix!3763 newSuffix!27 suffix!1299))))

(declare-fun tp!1211204 () Bool)

(declare-fun b!3972084 () Bool)

(declare-fun e!2460718 () Bool)

(declare-fun e!2460716 () Bool)

(declare-fun inv!56670 (String!48247) Bool)

(declare-fun inv!56673 (TokenValueInjection!13240) Bool)

(assert (=> b!3972084 (= e!2460716 (and tp!1211204 (inv!56670 (tag!7536 (h!47836 rules!2999))) (inv!56673 (transformation!6676 (h!47836 rules!2999))) e!2460718))))

(declare-fun b!3972085 () Bool)

(declare-fun e!2460713 () Bool)

(assert (=> b!3972085 (= e!2460709 e!2460713)))

(declare-fun res!1608040 () Bool)

(assert (=> b!3972085 (=> res!1608040 e!2460713)))

(declare-fun lt!1391641 () List!42538)

(declare-fun lt!1391643 () List!42538)

(assert (=> b!3972085 (= res!1608040 (or (not (= lt!1391636 lt!1391641)) (not (= lt!1391636 lt!1391643))))))

(assert (=> b!3972085 (= lt!1391641 lt!1391643)))

(declare-fun lt!1391638 () List!42538)

(assert (=> b!3972085 (= lt!1391643 (++!11078 lt!1391645 lt!1391638))))

(assert (=> b!3972085 (= lt!1391641 (++!11078 lt!1391632 suffix!1299))))

(assert (=> b!3972085 (= lt!1391638 (++!11078 lt!1391640 suffix!1299))))

(declare-fun lt!1391631 () Unit!61065)

(declare-fun lemmaConcatAssociativity!2398 (List!42538 List!42538 List!42538) Unit!61065)

(assert (=> b!3972085 (= lt!1391631 (lemmaConcatAssociativity!2398 lt!1391645 lt!1391640 suffix!1299))))

(declare-fun b!3972086 () Bool)

(declare-fun res!1608045 () Bool)

(assert (=> b!3972086 (=> (not res!1608045) (not e!2460724))))

(declare-fun isEmpty!25370 (List!42540) Bool)

(assert (=> b!3972086 (= res!1608045 (not (isEmpty!25370 rules!2999)))))

(declare-fun b!3972087 () Bool)

(assert (=> b!3972087 (= e!2460715 e!2460731)))

(declare-fun res!1608044 () Bool)

(assert (=> b!3972087 (=> res!1608044 e!2460731)))

(assert (=> b!3972087 (= res!1608044 (not (isPrefix!3763 lt!1391645 lt!1391636)))))

(assert (=> b!3972087 (isPrefix!3763 prefix!494 lt!1391636)))

(declare-fun lt!1391627 () Unit!61065)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2606 (List!42538 List!42538) Unit!61065)

(assert (=> b!3972087 (= lt!1391627 (lemmaConcatTwoListThenFirstIsPrefix!2606 prefix!494 suffix!1299))))

(assert (=> b!3972087 (isPrefix!3763 lt!1391645 lt!1391626)))

(declare-fun lt!1391619 () Unit!61065)

(assert (=> b!3972087 (= lt!1391619 (lemmaConcatTwoListThenFirstIsPrefix!2606 lt!1391645 suffixResult!105))))

(declare-fun lt!1391633 () Int)

(declare-fun b!3972088 () Bool)

(declare-fun e!2460728 () Bool)

(assert (=> b!3972088 (= e!2460728 (and (= (size!31734 token!484) lt!1391633) (= (originalCharacters!7276 token!484) lt!1391645)))))

(declare-fun b!3972089 () Bool)

(declare-fun e!2460730 () Bool)

(assert (=> b!3972089 (= e!2460713 e!2460730)))

(declare-fun res!1608038 () Bool)

(assert (=> b!3972089 (=> res!1608038 e!2460730)))

(declare-datatypes ((tuple2!41668 0))(
  ( (tuple2!41669 (_1!23968 Token!12490) (_2!23968 List!42538)) )
))
(declare-datatypes ((Option!9090 0))(
  ( (None!9089) (Some!9089 (v!39437 tuple2!41668)) )
))
(declare-fun lt!1391642 () Option!9090)

(declare-fun lt!1391630 () Option!9090)

(assert (=> b!3972089 (= res!1608038 (not (= lt!1391642 lt!1391630)))))

(declare-fun lt!1391628 () TokenValue!6906)

(assert (=> b!3972089 (= lt!1391642 (Some!9089 (tuple2!41669 (Token!12491 lt!1391628 (rule!9666 token!484) lt!1391633 lt!1391645) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2597 (LexerInterface!6265 Rule!13152 List!42538) Option!9090)

(assert (=> b!3972089 (= lt!1391642 (maxPrefixOneRule!2597 thiss!21717 (rule!9666 token!484) lt!1391636))))

(declare-fun apply!9887 (TokenValueInjection!13240 BalanceConc!25368) TokenValue!6906)

(declare-fun seqFromList!4915 (List!42538) BalanceConc!25368)

(assert (=> b!3972089 (= lt!1391628 (apply!9887 (transformation!6676 (rule!9666 token!484)) (seqFromList!4915 lt!1391645)))))

(declare-fun lt!1391623 () Unit!61065)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1419 (LexerInterface!6265 List!42540 List!42538 List!42538 List!42538 Rule!13152) Unit!61065)

(assert (=> b!3972089 (= lt!1391623 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1419 thiss!21717 rules!2999 lt!1391645 lt!1391636 suffixResult!105 (rule!9666 token!484)))))

(assert (=> b!3972089 (= lt!1391638 suffixResult!105)))

(declare-fun lt!1391635 () Unit!61065)

(declare-fun lemmaSamePrefixThenSameSuffix!1950 (List!42538 List!42538 List!42538 List!42538 List!42538) Unit!61065)

(assert (=> b!3972089 (= lt!1391635 (lemmaSamePrefixThenSameSuffix!1950 lt!1391645 lt!1391638 lt!1391645 suffixResult!105 lt!1391636))))

(assert (=> b!3972089 (isPrefix!3763 lt!1391645 lt!1391643)))

(declare-fun lt!1391621 () Unit!61065)

(assert (=> b!3972089 (= lt!1391621 (lemmaConcatTwoListThenFirstIsPrefix!2606 lt!1391645 lt!1391638))))

(declare-fun b!3972090 () Bool)

(declare-fun e!2460719 () Bool)

(assert (=> b!3972090 (= e!2460730 e!2460719)))

(declare-fun res!1608041 () Bool)

(assert (=> b!3972090 (=> res!1608041 e!2460719)))

(declare-fun matchR!5558 (Regex!11581 List!42538) Bool)

(assert (=> b!3972090 (= res!1608041 (not (matchR!5558 (regex!6676 (rule!9666 token!484)) lt!1391645)))))

(declare-fun lt!1391639 () List!42538)

(assert (=> b!3972090 (isPrefix!3763 lt!1391645 lt!1391639)))

(declare-fun lt!1391644 () Unit!61065)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!596 (List!42538 List!42538 List!42538) Unit!61065)

(assert (=> b!3972090 (= lt!1391644 (lemmaPrefixStaysPrefixWhenAddingToSuffix!596 lt!1391645 prefix!494 newSuffix!27))))

(declare-fun lt!1391637 () Unit!61065)

(assert (=> b!3972090 (= lt!1391637 (lemmaPrefixStaysPrefixWhenAddingToSuffix!596 lt!1391645 prefix!494 suffix!1299))))

(declare-fun b!3972092 () Bool)

(declare-fun res!1608031 () Bool)

(assert (=> b!3972092 (=> (not res!1608031) (not e!2460728))))

(assert (=> b!3972092 (= res!1608031 (= (value!210900 token!484) lt!1391628))))

(declare-fun b!3972093 () Bool)

(declare-fun res!1608033 () Bool)

(assert (=> b!3972093 (=> (not res!1608033) (not e!2460724))))

(declare-fun size!31735 (List!42538) Int)

(assert (=> b!3972093 (= res!1608033 (>= (size!31735 suffix!1299) (size!31735 newSuffix!27)))))

(declare-fun b!3972094 () Bool)

(declare-fun e!2460717 () Bool)

(declare-fun tp!1211207 () Bool)

(assert (=> b!3972094 (= e!2460717 (and tp_is_empty!20133 tp!1211207))))

(declare-fun b!3972095 () Bool)

(declare-fun e!2460711 () Bool)

(declare-fun tp!1211202 () Bool)

(assert (=> b!3972095 (= e!2460711 (and tp_is_empty!20133 tp!1211202))))

(declare-fun b!3972096 () Bool)

(declare-fun tp!1211205 () Bool)

(declare-fun e!2460708 () Bool)

(declare-fun e!2460725 () Bool)

(declare-fun inv!21 (TokenValue!6906) Bool)

(assert (=> b!3972096 (= e!2460708 (and (inv!21 (value!210900 token!484)) e!2460725 tp!1211205))))

(declare-fun b!3972097 () Bool)

(declare-fun e!2460726 () Bool)

(assert (=> b!3972097 (= e!2460724 e!2460726)))

(declare-fun res!1608036 () Bool)

(assert (=> b!3972097 (=> (not res!1608036) (not e!2460726))))

(declare-fun lt!1391622 () Int)

(assert (=> b!3972097 (= res!1608036 (>= lt!1391622 lt!1391633))))

(assert (=> b!3972097 (= lt!1391633 (size!31735 lt!1391645))))

(assert (=> b!3972097 (= lt!1391622 (size!31735 prefix!494))))

(declare-fun list!15738 (BalanceConc!25368) List!42538)

(declare-fun charsOf!4492 (Token!12490) BalanceConc!25368)

(assert (=> b!3972097 (= lt!1391645 (list!15738 (charsOf!4492 token!484)))))

(declare-fun e!2460729 () Bool)

(declare-fun tp!1211214 () Bool)

(declare-fun b!3972098 () Bool)

(assert (=> b!3972098 (= e!2460725 (and tp!1211214 (inv!56670 (tag!7536 (rule!9666 token!484))) (inv!56673 (transformation!6676 (rule!9666 token!484))) e!2460729))))

(assert (=> b!3972099 (= e!2460729 (and tp!1211211 tp!1211203))))

(declare-fun b!3972100 () Bool)

(declare-fun res!1608042 () Bool)

(assert (=> b!3972100 (=> (not res!1608042) (not e!2460728))))

(assert (=> b!3972100 (= res!1608042 (= (size!31734 token!484) (size!31735 (originalCharacters!7276 token!484))))))

(declare-fun b!3972101 () Bool)

(declare-fun e!2460712 () Bool)

(declare-fun tp!1211209 () Bool)

(assert (=> b!3972101 (= e!2460712 (and e!2460716 tp!1211209))))

(declare-fun b!3972102 () Bool)

(declare-fun e!2460732 () Bool)

(assert (=> b!3972102 (= e!2460726 e!2460732)))

(declare-fun res!1608043 () Bool)

(assert (=> b!3972102 (=> (not res!1608043) (not e!2460732))))

(declare-fun lt!1391620 () List!42538)

(assert (=> b!3972102 (= res!1608043 (= lt!1391620 lt!1391639))))

(assert (=> b!3972102 (= lt!1391639 (++!11078 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42538)

(assert (=> b!3972102 (= lt!1391620 (++!11078 lt!1391645 newSuffixResult!27))))

(declare-fun b!3972103 () Bool)

(assert (=> b!3972103 (= e!2460719 (>= (size!31735 lt!1391636) lt!1391633))))

(assert (=> b!3972103 e!2460728))

(declare-fun res!1608034 () Bool)

(assert (=> b!3972103 (=> (not res!1608034) (not e!2460728))))

(assert (=> b!3972103 (= res!1608034 (isPrefix!3763 lt!1391636 lt!1391636))))

(declare-fun lt!1391634 () Unit!61065)

(declare-fun lemmaIsPrefixRefl!2355 (List!42538 List!42538) Unit!61065)

(assert (=> b!3972103 (= lt!1391634 (lemmaIsPrefixRefl!2355 lt!1391636 lt!1391636))))

(assert (=> b!3972091 (= e!2460718 (and tp!1211208 tp!1211213))))

(declare-fun res!1608032 () Bool)

(assert (=> start!373756 (=> (not res!1608032) (not e!2460724))))

(get-info :version)

(assert (=> start!373756 (= res!1608032 ((_ is Lexer!6263) thiss!21717))))

(assert (=> start!373756 e!2460724))

(assert (=> start!373756 e!2460711))

(declare-fun inv!56674 (Token!12490) Bool)

(assert (=> start!373756 (and (inv!56674 token!484) e!2460708)))

(declare-fun e!2460721 () Bool)

(assert (=> start!373756 e!2460721))

(assert (=> start!373756 e!2460717))

(assert (=> start!373756 e!2460727))

(assert (=> start!373756 true))

(assert (=> start!373756 e!2460712))

(declare-fun e!2460722 () Bool)

(assert (=> start!373756 e!2460722))

(declare-fun b!3972104 () Bool)

(assert (=> b!3972104 (= e!2460732 e!2460710)))

(declare-fun res!1608035 () Bool)

(assert (=> b!3972104 (=> (not res!1608035) (not e!2460710))))

(declare-fun maxPrefix!3563 (LexerInterface!6265 List!42540 List!42538) Option!9090)

(assert (=> b!3972104 (= res!1608035 (= (maxPrefix!3563 thiss!21717 rules!2999 lt!1391636) lt!1391630))))

(assert (=> b!3972104 (= lt!1391630 (Some!9089 (tuple2!41669 token!484 suffixResult!105)))))

(assert (=> b!3972104 (= lt!1391636 (++!11078 prefix!494 suffix!1299))))

(declare-fun b!3972105 () Bool)

(declare-fun tp!1211210 () Bool)

(assert (=> b!3972105 (= e!2460721 (and tp_is_empty!20133 tp!1211210))))

(declare-fun b!3972106 () Bool)

(declare-fun tp!1211206 () Bool)

(assert (=> b!3972106 (= e!2460722 (and tp_is_empty!20133 tp!1211206))))

(assert (= (and start!373756 res!1608032) b!3972086))

(assert (= (and b!3972086 res!1608045) b!3972079))

(assert (= (and b!3972079 res!1608030) b!3972093))

(assert (= (and b!3972093 res!1608033) b!3972083))

(assert (= (and b!3972083 res!1608046) b!3972097))

(assert (= (and b!3972097 res!1608036) b!3972102))

(assert (= (and b!3972102 res!1608043) b!3972104))

(assert (= (and b!3972104 res!1608035) b!3972081))

(assert (= (and b!3972081 (not res!1608037)) b!3972087))

(assert (= (and b!3972087 (not res!1608044)) b!3972082))

(assert (= (and b!3972082 (not res!1608039)) b!3972085))

(assert (= (and b!3972085 (not res!1608040)) b!3972089))

(assert (= (and b!3972089 (not res!1608038)) b!3972090))

(assert (= (and b!3972090 (not res!1608041)) b!3972103))

(assert (= (and b!3972103 res!1608034) b!3972092))

(assert (= (and b!3972092 res!1608031) b!3972100))

(assert (= (and b!3972100 res!1608042) b!3972088))

(assert (= (and start!373756 ((_ is Cons!42414) prefix!494)) b!3972095))

(assert (= b!3972098 b!3972099))

(assert (= b!3972096 b!3972098))

(assert (= start!373756 b!3972096))

(assert (= (and start!373756 ((_ is Cons!42414) suffixResult!105)) b!3972105))

(assert (= (and start!373756 ((_ is Cons!42414) suffix!1299)) b!3972094))

(assert (= (and start!373756 ((_ is Cons!42414) newSuffix!27)) b!3972080))

(assert (= b!3972084 b!3972091))

(assert (= b!3972101 b!3972084))

(assert (= (and start!373756 ((_ is Cons!42416) rules!2999)) b!3972101))

(assert (= (and start!373756 ((_ is Cons!42414) newSuffixResult!27)) b!3972106))

(declare-fun m!4542491 () Bool)

(assert (=> b!3972082 m!4542491))

(declare-fun m!4542493 () Bool)

(assert (=> b!3972082 m!4542493))

(declare-fun m!4542495 () Bool)

(assert (=> b!3972082 m!4542495))

(declare-fun m!4542497 () Bool)

(assert (=> b!3972082 m!4542497))

(declare-fun m!4542499 () Bool)

(assert (=> b!3972084 m!4542499))

(declare-fun m!4542501 () Bool)

(assert (=> b!3972084 m!4542501))

(declare-fun m!4542503 () Bool)

(assert (=> b!3972098 m!4542503))

(declare-fun m!4542505 () Bool)

(assert (=> b!3972098 m!4542505))

(declare-fun m!4542507 () Bool)

(assert (=> b!3972093 m!4542507))

(declare-fun m!4542509 () Bool)

(assert (=> b!3972093 m!4542509))

(declare-fun m!4542511 () Bool)

(assert (=> b!3972090 m!4542511))

(declare-fun m!4542513 () Bool)

(assert (=> b!3972090 m!4542513))

(declare-fun m!4542515 () Bool)

(assert (=> b!3972090 m!4542515))

(declare-fun m!4542517 () Bool)

(assert (=> b!3972090 m!4542517))

(declare-fun m!4542519 () Bool)

(assert (=> b!3972081 m!4542519))

(declare-fun m!4542521 () Bool)

(assert (=> b!3972081 m!4542521))

(declare-fun m!4542523 () Bool)

(assert (=> b!3972081 m!4542523))

(declare-fun m!4542525 () Bool)

(assert (=> b!3972081 m!4542525))

(declare-fun m!4542527 () Bool)

(assert (=> b!3972086 m!4542527))

(declare-fun m!4542529 () Bool)

(assert (=> b!3972089 m!4542529))

(declare-fun m!4542531 () Bool)

(assert (=> b!3972089 m!4542531))

(declare-fun m!4542533 () Bool)

(assert (=> b!3972089 m!4542533))

(declare-fun m!4542535 () Bool)

(assert (=> b!3972089 m!4542535))

(declare-fun m!4542537 () Bool)

(assert (=> b!3972089 m!4542537))

(assert (=> b!3972089 m!4542537))

(declare-fun m!4542539 () Bool)

(assert (=> b!3972089 m!4542539))

(declare-fun m!4542541 () Bool)

(assert (=> b!3972089 m!4542541))

(declare-fun m!4542543 () Bool)

(assert (=> b!3972083 m!4542543))

(declare-fun m!4542545 () Bool)

(assert (=> b!3972085 m!4542545))

(declare-fun m!4542547 () Bool)

(assert (=> b!3972085 m!4542547))

(declare-fun m!4542549 () Bool)

(assert (=> b!3972085 m!4542549))

(declare-fun m!4542551 () Bool)

(assert (=> b!3972085 m!4542551))

(declare-fun m!4542553 () Bool)

(assert (=> b!3972103 m!4542553))

(declare-fun m!4542555 () Bool)

(assert (=> b!3972103 m!4542555))

(declare-fun m!4542557 () Bool)

(assert (=> b!3972103 m!4542557))

(declare-fun m!4542559 () Bool)

(assert (=> b!3972097 m!4542559))

(declare-fun m!4542561 () Bool)

(assert (=> b!3972097 m!4542561))

(declare-fun m!4542563 () Bool)

(assert (=> b!3972097 m!4542563))

(assert (=> b!3972097 m!4542563))

(declare-fun m!4542565 () Bool)

(assert (=> b!3972097 m!4542565))

(declare-fun m!4542567 () Bool)

(assert (=> b!3972087 m!4542567))

(declare-fun m!4542569 () Bool)

(assert (=> b!3972087 m!4542569))

(declare-fun m!4542571 () Bool)

(assert (=> b!3972087 m!4542571))

(declare-fun m!4542573 () Bool)

(assert (=> b!3972087 m!4542573))

(declare-fun m!4542575 () Bool)

(assert (=> b!3972087 m!4542575))

(declare-fun m!4542577 () Bool)

(assert (=> b!3972079 m!4542577))

(declare-fun m!4542579 () Bool)

(assert (=> b!3972096 m!4542579))

(declare-fun m!4542581 () Bool)

(assert (=> b!3972104 m!4542581))

(declare-fun m!4542583 () Bool)

(assert (=> b!3972104 m!4542583))

(declare-fun m!4542585 () Bool)

(assert (=> b!3972100 m!4542585))

(declare-fun m!4542587 () Bool)

(assert (=> start!373756 m!4542587))

(declare-fun m!4542589 () Bool)

(assert (=> b!3972102 m!4542589))

(declare-fun m!4542591 () Bool)

(assert (=> b!3972102 m!4542591))

(check-sat (not b!3972093) (not b!3972097) (not b!3972082) (not b!3972103) (not b!3972104) (not b!3972090) (not b!3972096) (not b!3972086) b_and!305359 b_and!305361 (not b!3972100) tp_is_empty!20133 b_and!305363 b_and!305365 (not b!3972080) (not b!3972081) (not b!3972106) (not b!3972095) (not b!3972079) (not b!3972102) (not b_next!110795) (not start!373756) (not b!3972105) (not b!3972101) (not b_next!110797) (not b!3972083) (not b!3972094) (not b_next!110799) (not b!3972087) (not b!3972084) (not b!3972098) (not b!3972089) (not b!3972085) (not b_next!110793))
(check-sat (not b_next!110795) (not b_next!110797) b_and!305359 b_and!305361 b_and!305363 b_and!305365 (not b_next!110799) (not b_next!110793))
(get-model)

(declare-fun d!1176417 () Bool)

(assert (=> d!1176417 (= (inv!56670 (tag!7536 (h!47836 rules!2999))) (= (mod (str.len (value!210874 (tag!7536 (h!47836 rules!2999)))) 2) 0))))

(assert (=> b!3972084 d!1176417))

(declare-fun d!1176421 () Bool)

(declare-fun res!1608068 () Bool)

(declare-fun e!2460750 () Bool)

(assert (=> d!1176421 (=> (not res!1608068) (not e!2460750))))

(declare-fun semiInverseModEq!2869 (Int Int) Bool)

(assert (=> d!1176421 (= res!1608068 (semiInverseModEq!2869 (toChars!9023 (transformation!6676 (h!47836 rules!2999))) (toValue!9164 (transformation!6676 (h!47836 rules!2999)))))))

(assert (=> d!1176421 (= (inv!56673 (transformation!6676 (h!47836 rules!2999))) e!2460750)))

(declare-fun b!3972136 () Bool)

(declare-fun equivClasses!2768 (Int Int) Bool)

(assert (=> b!3972136 (= e!2460750 (equivClasses!2768 (toChars!9023 (transformation!6676 (h!47836 rules!2999))) (toValue!9164 (transformation!6676 (h!47836 rules!2999)))))))

(assert (= (and d!1176421 res!1608068) b!3972136))

(declare-fun m!4542619 () Bool)

(assert (=> d!1176421 m!4542619))

(declare-fun m!4542621 () Bool)

(assert (=> b!3972136 m!4542621))

(assert (=> b!3972084 d!1176421))

(declare-fun b!3972173 () Bool)

(declare-fun e!2460775 () Bool)

(declare-fun e!2460776 () Bool)

(assert (=> b!3972173 (= e!2460775 e!2460776)))

(declare-fun res!1608098 () Bool)

(assert (=> b!3972173 (=> (not res!1608098) (not e!2460776))))

(assert (=> b!3972173 (= res!1608098 (not ((_ is Nil!42414) suffix!1299)))))

(declare-fun b!3972174 () Bool)

(declare-fun res!1608097 () Bool)

(assert (=> b!3972174 (=> (not res!1608097) (not e!2460776))))

(declare-fun head!8463 (List!42538) C!23348)

(assert (=> b!3972174 (= res!1608097 (= (head!8463 newSuffix!27) (head!8463 suffix!1299)))))

(declare-fun d!1176429 () Bool)

(declare-fun e!2460774 () Bool)

(assert (=> d!1176429 e!2460774))

(declare-fun res!1608096 () Bool)

(assert (=> d!1176429 (=> res!1608096 e!2460774)))

(declare-fun lt!1391670 () Bool)

(assert (=> d!1176429 (= res!1608096 (not lt!1391670))))

(assert (=> d!1176429 (= lt!1391670 e!2460775)))

(declare-fun res!1608095 () Bool)

(assert (=> d!1176429 (=> res!1608095 e!2460775)))

(assert (=> d!1176429 (= res!1608095 ((_ is Nil!42414) newSuffix!27))))

(assert (=> d!1176429 (= (isPrefix!3763 newSuffix!27 suffix!1299) lt!1391670)))

(declare-fun b!3972176 () Bool)

(assert (=> b!3972176 (= e!2460774 (>= (size!31735 suffix!1299) (size!31735 newSuffix!27)))))

(declare-fun b!3972175 () Bool)

(declare-fun tail!6195 (List!42538) List!42538)

(assert (=> b!3972175 (= e!2460776 (isPrefix!3763 (tail!6195 newSuffix!27) (tail!6195 suffix!1299)))))

(assert (= (and d!1176429 (not res!1608095)) b!3972173))

(assert (= (and b!3972173 res!1608098) b!3972174))

(assert (= (and b!3972174 res!1608097) b!3972175))

(assert (= (and d!1176429 (not res!1608096)) b!3972176))

(declare-fun m!4542673 () Bool)

(assert (=> b!3972174 m!4542673))

(declare-fun m!4542675 () Bool)

(assert (=> b!3972174 m!4542675))

(assert (=> b!3972176 m!4542507))

(assert (=> b!3972176 m!4542509))

(declare-fun m!4542677 () Bool)

(assert (=> b!3972175 m!4542677))

(declare-fun m!4542679 () Bool)

(assert (=> b!3972175 m!4542679))

(assert (=> b!3972175 m!4542677))

(assert (=> b!3972175 m!4542679))

(declare-fun m!4542681 () Bool)

(assert (=> b!3972175 m!4542681))

(assert (=> b!3972083 d!1176429))

(declare-fun bm!285625 () Bool)

(declare-fun call!285630 () Option!9090)

(assert (=> bm!285625 (= call!285630 (maxPrefixOneRule!2597 thiss!21717 (h!47836 rules!2999) lt!1391636))))

(declare-fun b!3972260 () Bool)

(declare-fun res!1608145 () Bool)

(declare-fun e!2460820 () Bool)

(assert (=> b!3972260 (=> (not res!1608145) (not e!2460820))))

(declare-fun lt!1391706 () Option!9090)

(declare-fun get!13976 (Option!9090) tuple2!41668)

(assert (=> b!3972260 (= res!1608145 (= (value!210900 (_1!23968 (get!13976 lt!1391706))) (apply!9887 (transformation!6676 (rule!9666 (_1!23968 (get!13976 lt!1391706)))) (seqFromList!4915 (originalCharacters!7276 (_1!23968 (get!13976 lt!1391706)))))))))

(declare-fun b!3972261 () Bool)

(declare-fun e!2460822 () Option!9090)

(declare-fun lt!1391707 () Option!9090)

(declare-fun lt!1391710 () Option!9090)

(assert (=> b!3972261 (= e!2460822 (ite (and ((_ is None!9089) lt!1391707) ((_ is None!9089) lt!1391710)) None!9089 (ite ((_ is None!9089) lt!1391710) lt!1391707 (ite ((_ is None!9089) lt!1391707) lt!1391710 (ite (>= (size!31734 (_1!23968 (v!39437 lt!1391707))) (size!31734 (_1!23968 (v!39437 lt!1391710)))) lt!1391707 lt!1391710)))))))

(assert (=> b!3972261 (= lt!1391707 call!285630)))

(assert (=> b!3972261 (= lt!1391710 (maxPrefix!3563 thiss!21717 (t!330931 rules!2999) lt!1391636))))

(declare-fun b!3972262 () Bool)

(declare-fun e!2460821 () Bool)

(assert (=> b!3972262 (= e!2460821 e!2460820)))

(declare-fun res!1608149 () Bool)

(assert (=> b!3972262 (=> (not res!1608149) (not e!2460820))))

(declare-fun isDefined!7013 (Option!9090) Bool)

(assert (=> b!3972262 (= res!1608149 (isDefined!7013 lt!1391706))))

(declare-fun b!3972263 () Bool)

(assert (=> b!3972263 (= e!2460822 call!285630)))

(declare-fun b!3972264 () Bool)

(declare-fun res!1608148 () Bool)

(assert (=> b!3972264 (=> (not res!1608148) (not e!2460820))))

(assert (=> b!3972264 (= res!1608148 (= (++!11078 (list!15738 (charsOf!4492 (_1!23968 (get!13976 lt!1391706)))) (_2!23968 (get!13976 lt!1391706))) lt!1391636))))

(declare-fun b!3972265 () Bool)

(declare-fun contains!8451 (List!42540 Rule!13152) Bool)

(assert (=> b!3972265 (= e!2460820 (contains!8451 rules!2999 (rule!9666 (_1!23968 (get!13976 lt!1391706)))))))

(declare-fun b!3972266 () Bool)

(declare-fun res!1608147 () Bool)

(assert (=> b!3972266 (=> (not res!1608147) (not e!2460820))))

(assert (=> b!3972266 (= res!1608147 (= (list!15738 (charsOf!4492 (_1!23968 (get!13976 lt!1391706)))) (originalCharacters!7276 (_1!23968 (get!13976 lt!1391706)))))))

(declare-fun b!3972267 () Bool)

(declare-fun res!1608150 () Bool)

(assert (=> b!3972267 (=> (not res!1608150) (not e!2460820))))

(assert (=> b!3972267 (= res!1608150 (< (size!31735 (_2!23968 (get!13976 lt!1391706))) (size!31735 lt!1391636)))))

(declare-fun b!3972268 () Bool)

(declare-fun res!1608146 () Bool)

(assert (=> b!3972268 (=> (not res!1608146) (not e!2460820))))

(assert (=> b!3972268 (= res!1608146 (matchR!5558 (regex!6676 (rule!9666 (_1!23968 (get!13976 lt!1391706)))) (list!15738 (charsOf!4492 (_1!23968 (get!13976 lt!1391706))))))))

(declare-fun d!1176449 () Bool)

(assert (=> d!1176449 e!2460821))

(declare-fun res!1608151 () Bool)

(assert (=> d!1176449 (=> res!1608151 e!2460821)))

(declare-fun isEmpty!25373 (Option!9090) Bool)

(assert (=> d!1176449 (= res!1608151 (isEmpty!25373 lt!1391706))))

(assert (=> d!1176449 (= lt!1391706 e!2460822)))

(declare-fun c!688864 () Bool)

(assert (=> d!1176449 (= c!688864 (and ((_ is Cons!42416) rules!2999) ((_ is Nil!42416) (t!330931 rules!2999))))))

(declare-fun lt!1391708 () Unit!61065)

(declare-fun lt!1391709 () Unit!61065)

(assert (=> d!1176449 (= lt!1391708 lt!1391709)))

(assert (=> d!1176449 (isPrefix!3763 lt!1391636 lt!1391636)))

(assert (=> d!1176449 (= lt!1391709 (lemmaIsPrefixRefl!2355 lt!1391636 lt!1391636))))

(declare-fun rulesValidInductive!2420 (LexerInterface!6265 List!42540) Bool)

(assert (=> d!1176449 (rulesValidInductive!2420 thiss!21717 rules!2999)))

(assert (=> d!1176449 (= (maxPrefix!3563 thiss!21717 rules!2999 lt!1391636) lt!1391706)))

(assert (= (and d!1176449 c!688864) b!3972263))

(assert (= (and d!1176449 (not c!688864)) b!3972261))

(assert (= (or b!3972263 b!3972261) bm!285625))

(assert (= (and d!1176449 (not res!1608151)) b!3972262))

(assert (= (and b!3972262 res!1608149) b!3972266))

(assert (= (and b!3972266 res!1608147) b!3972267))

(assert (= (and b!3972267 res!1608150) b!3972264))

(assert (= (and b!3972264 res!1608148) b!3972260))

(assert (= (and b!3972260 res!1608145) b!3972268))

(assert (= (and b!3972268 res!1608146) b!3972265))

(declare-fun m!4542747 () Bool)

(assert (=> b!3972265 m!4542747))

(declare-fun m!4542749 () Bool)

(assert (=> b!3972265 m!4542749))

(assert (=> b!3972264 m!4542747))

(declare-fun m!4542751 () Bool)

(assert (=> b!3972264 m!4542751))

(assert (=> b!3972264 m!4542751))

(declare-fun m!4542753 () Bool)

(assert (=> b!3972264 m!4542753))

(assert (=> b!3972264 m!4542753))

(declare-fun m!4542755 () Bool)

(assert (=> b!3972264 m!4542755))

(declare-fun m!4542757 () Bool)

(assert (=> b!3972262 m!4542757))

(assert (=> b!3972260 m!4542747))

(declare-fun m!4542759 () Bool)

(assert (=> b!3972260 m!4542759))

(assert (=> b!3972260 m!4542759))

(declare-fun m!4542761 () Bool)

(assert (=> b!3972260 m!4542761))

(declare-fun m!4542763 () Bool)

(assert (=> d!1176449 m!4542763))

(assert (=> d!1176449 m!4542555))

(assert (=> d!1176449 m!4542557))

(declare-fun m!4542765 () Bool)

(assert (=> d!1176449 m!4542765))

(declare-fun m!4542767 () Bool)

(assert (=> bm!285625 m!4542767))

(declare-fun m!4542769 () Bool)

(assert (=> b!3972261 m!4542769))

(assert (=> b!3972267 m!4542747))

(declare-fun m!4542771 () Bool)

(assert (=> b!3972267 m!4542771))

(assert (=> b!3972267 m!4542553))

(assert (=> b!3972266 m!4542747))

(assert (=> b!3972266 m!4542751))

(assert (=> b!3972266 m!4542751))

(assert (=> b!3972266 m!4542753))

(assert (=> b!3972268 m!4542747))

(assert (=> b!3972268 m!4542751))

(assert (=> b!3972268 m!4542751))

(assert (=> b!3972268 m!4542753))

(assert (=> b!3972268 m!4542753))

(declare-fun m!4542773 () Bool)

(assert (=> b!3972268 m!4542773))

(assert (=> b!3972104 d!1176449))

(declare-fun b!3972301 () Bool)

(declare-fun e!2460837 () List!42538)

(assert (=> b!3972301 (= e!2460837 (Cons!42414 (h!47834 prefix!494) (++!11078 (t!330929 prefix!494) suffix!1299)))))

(declare-fun b!3972302 () Bool)

(declare-fun res!1608177 () Bool)

(declare-fun e!2460838 () Bool)

(assert (=> b!3972302 (=> (not res!1608177) (not e!2460838))))

(declare-fun lt!1391724 () List!42538)

(assert (=> b!3972302 (= res!1608177 (= (size!31735 lt!1391724) (+ (size!31735 prefix!494) (size!31735 suffix!1299))))))

(declare-fun b!3972300 () Bool)

(assert (=> b!3972300 (= e!2460837 suffix!1299)))

(declare-fun d!1176477 () Bool)

(assert (=> d!1176477 e!2460838))

(declare-fun res!1608178 () Bool)

(assert (=> d!1176477 (=> (not res!1608178) (not e!2460838))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6437 (List!42538) (InoxSet C!23348))

(assert (=> d!1176477 (= res!1608178 (= (content!6437 lt!1391724) ((_ map or) (content!6437 prefix!494) (content!6437 suffix!1299))))))

(assert (=> d!1176477 (= lt!1391724 e!2460837)))

(declare-fun c!688868 () Bool)

(assert (=> d!1176477 (= c!688868 ((_ is Nil!42414) prefix!494))))

(assert (=> d!1176477 (= (++!11078 prefix!494 suffix!1299) lt!1391724)))

(declare-fun b!3972303 () Bool)

(assert (=> b!3972303 (= e!2460838 (or (not (= suffix!1299 Nil!42414)) (= lt!1391724 prefix!494)))))

(assert (= (and d!1176477 c!688868) b!3972300))

(assert (= (and d!1176477 (not c!688868)) b!3972301))

(assert (= (and d!1176477 res!1608178) b!3972302))

(assert (= (and b!3972302 res!1608177) b!3972303))

(declare-fun m!4542817 () Bool)

(assert (=> b!3972301 m!4542817))

(declare-fun m!4542819 () Bool)

(assert (=> b!3972302 m!4542819))

(assert (=> b!3972302 m!4542561))

(assert (=> b!3972302 m!4542507))

(declare-fun m!4542821 () Bool)

(assert (=> d!1176477 m!4542821))

(declare-fun m!4542823 () Bool)

(assert (=> d!1176477 m!4542823))

(declare-fun m!4542825 () Bool)

(assert (=> d!1176477 m!4542825))

(assert (=> b!3972104 d!1176477))

(declare-fun d!1176481 () Bool)

(declare-fun lt!1391729 () Int)

(assert (=> d!1176481 (>= lt!1391729 0)))

(declare-fun e!2460841 () Int)

(assert (=> d!1176481 (= lt!1391729 e!2460841)))

(declare-fun c!688871 () Bool)

(assert (=> d!1176481 (= c!688871 ((_ is Nil!42414) suffix!1299))))

(assert (=> d!1176481 (= (size!31735 suffix!1299) lt!1391729)))

(declare-fun b!3972308 () Bool)

(assert (=> b!3972308 (= e!2460841 0)))

(declare-fun b!3972309 () Bool)

(assert (=> b!3972309 (= e!2460841 (+ 1 (size!31735 (t!330929 suffix!1299))))))

(assert (= (and d!1176481 c!688871) b!3972308))

(assert (= (and d!1176481 (not c!688871)) b!3972309))

(declare-fun m!4542827 () Bool)

(assert (=> b!3972309 m!4542827))

(assert (=> b!3972093 d!1176481))

(declare-fun d!1176483 () Bool)

(declare-fun lt!1391730 () Int)

(assert (=> d!1176483 (>= lt!1391730 0)))

(declare-fun e!2460842 () Int)

(assert (=> d!1176483 (= lt!1391730 e!2460842)))

(declare-fun c!688872 () Bool)

(assert (=> d!1176483 (= c!688872 ((_ is Nil!42414) newSuffix!27))))

(assert (=> d!1176483 (= (size!31735 newSuffix!27) lt!1391730)))

(declare-fun b!3972310 () Bool)

(assert (=> b!3972310 (= e!2460842 0)))

(declare-fun b!3972311 () Bool)

(assert (=> b!3972311 (= e!2460842 (+ 1 (size!31735 (t!330929 newSuffix!27))))))

(assert (= (and d!1176483 c!688872) b!3972310))

(assert (= (and d!1176483 (not c!688872)) b!3972311))

(declare-fun m!4542829 () Bool)

(assert (=> b!3972311 m!4542829))

(assert (=> b!3972093 d!1176483))

(declare-fun d!1176485 () Bool)

(declare-fun res!1608206 () Bool)

(declare-fun e!2460865 () Bool)

(assert (=> d!1176485 (=> (not res!1608206) (not e!2460865))))

(declare-fun isEmpty!25374 (List!42538) Bool)

(assert (=> d!1176485 (= res!1608206 (not (isEmpty!25374 (originalCharacters!7276 token!484))))))

(assert (=> d!1176485 (= (inv!56674 token!484) e!2460865)))

(declare-fun b!3972345 () Bool)

(declare-fun res!1608207 () Bool)

(assert (=> b!3972345 (=> (not res!1608207) (not e!2460865))))

(declare-fun dynLambda!18076 (Int TokenValue!6906) BalanceConc!25368)

(assert (=> b!3972345 (= res!1608207 (= (originalCharacters!7276 token!484) (list!15738 (dynLambda!18076 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (value!210900 token!484)))))))

(declare-fun b!3972346 () Bool)

(assert (=> b!3972346 (= e!2460865 (= (size!31734 token!484) (size!31735 (originalCharacters!7276 token!484))))))

(assert (= (and d!1176485 res!1608206) b!3972345))

(assert (= (and b!3972345 res!1608207) b!3972346))

(declare-fun b_lambda!116091 () Bool)

(assert (=> (not b_lambda!116091) (not b!3972345)))

(declare-fun t!330941 () Bool)

(declare-fun tb!239661 () Bool)

(assert (=> (and b!3972091 (= (toChars!9023 (transformation!6676 (h!47836 rules!2999))) (toChars!9023 (transformation!6676 (rule!9666 token!484)))) t!330941) tb!239661))

(declare-fun b!3972353 () Bool)

(declare-fun e!2460870 () Bool)

(declare-fun tp!1211220 () Bool)

(declare-fun inv!56677 (Conc!12887) Bool)

(assert (=> b!3972353 (= e!2460870 (and (inv!56677 (c!688836 (dynLambda!18076 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (value!210900 token!484)))) tp!1211220))))

(declare-fun result!290226 () Bool)

(declare-fun inv!56678 (BalanceConc!25368) Bool)

(assert (=> tb!239661 (= result!290226 (and (inv!56678 (dynLambda!18076 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (value!210900 token!484))) e!2460870))))

(assert (= tb!239661 b!3972353))

(declare-fun m!4542891 () Bool)

(assert (=> b!3972353 m!4542891))

(declare-fun m!4542893 () Bool)

(assert (=> tb!239661 m!4542893))

(assert (=> b!3972345 t!330941))

(declare-fun b_and!305375 () Bool)

(assert (= b_and!305361 (and (=> t!330941 result!290226) b_and!305375)))

(declare-fun t!330943 () Bool)

(declare-fun tb!239663 () Bool)

(assert (=> (and b!3972099 (= (toChars!9023 (transformation!6676 (rule!9666 token!484))) (toChars!9023 (transformation!6676 (rule!9666 token!484)))) t!330943) tb!239663))

(declare-fun result!290230 () Bool)

(assert (= result!290230 result!290226))

(assert (=> b!3972345 t!330943))

(declare-fun b_and!305377 () Bool)

(assert (= b_and!305365 (and (=> t!330943 result!290230) b_and!305377)))

(declare-fun m!4542899 () Bool)

(assert (=> d!1176485 m!4542899))

(declare-fun m!4542901 () Bool)

(assert (=> b!3972345 m!4542901))

(assert (=> b!3972345 m!4542901))

(declare-fun m!4542903 () Bool)

(assert (=> b!3972345 m!4542903))

(assert (=> b!3972346 m!4542585))

(assert (=> start!373756 d!1176485))

(declare-fun d!1176517 () Bool)

(assert (=> d!1176517 (= (inv!56670 (tag!7536 (rule!9666 token!484))) (= (mod (str.len (value!210874 (tag!7536 (rule!9666 token!484)))) 2) 0))))

(assert (=> b!3972098 d!1176517))

(declare-fun d!1176519 () Bool)

(declare-fun res!1608212 () Bool)

(declare-fun e!2460873 () Bool)

(assert (=> d!1176519 (=> (not res!1608212) (not e!2460873))))

(assert (=> d!1176519 (= res!1608212 (semiInverseModEq!2869 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (toValue!9164 (transformation!6676 (rule!9666 token!484)))))))

(assert (=> d!1176519 (= (inv!56673 (transformation!6676 (rule!9666 token!484))) e!2460873)))

(declare-fun b!3972356 () Bool)

(assert (=> b!3972356 (= e!2460873 (equivClasses!2768 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (toValue!9164 (transformation!6676 (rule!9666 token!484)))))))

(assert (= (and d!1176519 res!1608212) b!3972356))

(declare-fun m!4542905 () Bool)

(assert (=> d!1176519 m!4542905))

(declare-fun m!4542907 () Bool)

(assert (=> b!3972356 m!4542907))

(assert (=> b!3972098 d!1176519))

(declare-fun b!3972357 () Bool)

(declare-fun e!2460875 () Bool)

(declare-fun e!2460876 () Bool)

(assert (=> b!3972357 (= e!2460875 e!2460876)))

(declare-fun res!1608216 () Bool)

(assert (=> b!3972357 (=> (not res!1608216) (not e!2460876))))

(assert (=> b!3972357 (= res!1608216 (not ((_ is Nil!42414) lt!1391636)))))

(declare-fun b!3972358 () Bool)

(declare-fun res!1608215 () Bool)

(assert (=> b!3972358 (=> (not res!1608215) (not e!2460876))))

(assert (=> b!3972358 (= res!1608215 (= (head!8463 lt!1391645) (head!8463 lt!1391636)))))

(declare-fun d!1176521 () Bool)

(declare-fun e!2460874 () Bool)

(assert (=> d!1176521 e!2460874))

(declare-fun res!1608214 () Bool)

(assert (=> d!1176521 (=> res!1608214 e!2460874)))

(declare-fun lt!1391741 () Bool)

(assert (=> d!1176521 (= res!1608214 (not lt!1391741))))

(assert (=> d!1176521 (= lt!1391741 e!2460875)))

(declare-fun res!1608213 () Bool)

(assert (=> d!1176521 (=> res!1608213 e!2460875)))

(assert (=> d!1176521 (= res!1608213 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176521 (= (isPrefix!3763 lt!1391645 lt!1391636) lt!1391741)))

(declare-fun b!3972360 () Bool)

(assert (=> b!3972360 (= e!2460874 (>= (size!31735 lt!1391636) (size!31735 lt!1391645)))))

(declare-fun b!3972359 () Bool)

(assert (=> b!3972359 (= e!2460876 (isPrefix!3763 (tail!6195 lt!1391645) (tail!6195 lt!1391636)))))

(assert (= (and d!1176521 (not res!1608213)) b!3972357))

(assert (= (and b!3972357 res!1608216) b!3972358))

(assert (= (and b!3972358 res!1608215) b!3972359))

(assert (= (and d!1176521 (not res!1608214)) b!3972360))

(declare-fun m!4542909 () Bool)

(assert (=> b!3972358 m!4542909))

(declare-fun m!4542911 () Bool)

(assert (=> b!3972358 m!4542911))

(assert (=> b!3972360 m!4542553))

(assert (=> b!3972360 m!4542559))

(declare-fun m!4542913 () Bool)

(assert (=> b!3972359 m!4542913))

(declare-fun m!4542915 () Bool)

(assert (=> b!3972359 m!4542915))

(assert (=> b!3972359 m!4542913))

(assert (=> b!3972359 m!4542915))

(declare-fun m!4542917 () Bool)

(assert (=> b!3972359 m!4542917))

(assert (=> b!3972087 d!1176521))

(declare-fun d!1176523 () Bool)

(assert (=> d!1176523 (isPrefix!3763 lt!1391645 (++!11078 lt!1391645 suffixResult!105))))

(declare-fun lt!1391744 () Unit!61065)

(declare-fun choose!23765 (List!42538 List!42538) Unit!61065)

(assert (=> d!1176523 (= lt!1391744 (choose!23765 lt!1391645 suffixResult!105))))

(assert (=> d!1176523 (= (lemmaConcatTwoListThenFirstIsPrefix!2606 lt!1391645 suffixResult!105) lt!1391744)))

(declare-fun bs!587647 () Bool)

(assert (= bs!587647 d!1176523))

(assert (=> bs!587647 m!4542519))

(assert (=> bs!587647 m!4542519))

(declare-fun m!4542925 () Bool)

(assert (=> bs!587647 m!4542925))

(declare-fun m!4542927 () Bool)

(assert (=> bs!587647 m!4542927))

(assert (=> b!3972087 d!1176523))

(declare-fun b!3972376 () Bool)

(declare-fun e!2460887 () Bool)

(declare-fun e!2460888 () Bool)

(assert (=> b!3972376 (= e!2460887 e!2460888)))

(declare-fun res!1608223 () Bool)

(assert (=> b!3972376 (=> (not res!1608223) (not e!2460888))))

(assert (=> b!3972376 (= res!1608223 (not ((_ is Nil!42414) lt!1391636)))))

(declare-fun b!3972377 () Bool)

(declare-fun res!1608222 () Bool)

(assert (=> b!3972377 (=> (not res!1608222) (not e!2460888))))

(assert (=> b!3972377 (= res!1608222 (= (head!8463 prefix!494) (head!8463 lt!1391636)))))

(declare-fun d!1176527 () Bool)

(declare-fun e!2460886 () Bool)

(assert (=> d!1176527 e!2460886))

(declare-fun res!1608221 () Bool)

(assert (=> d!1176527 (=> res!1608221 e!2460886)))

(declare-fun lt!1391745 () Bool)

(assert (=> d!1176527 (= res!1608221 (not lt!1391745))))

(assert (=> d!1176527 (= lt!1391745 e!2460887)))

(declare-fun res!1608220 () Bool)

(assert (=> d!1176527 (=> res!1608220 e!2460887)))

(assert (=> d!1176527 (= res!1608220 ((_ is Nil!42414) prefix!494))))

(assert (=> d!1176527 (= (isPrefix!3763 prefix!494 lt!1391636) lt!1391745)))

(declare-fun b!3972379 () Bool)

(assert (=> b!3972379 (= e!2460886 (>= (size!31735 lt!1391636) (size!31735 prefix!494)))))

(declare-fun b!3972378 () Bool)

(assert (=> b!3972378 (= e!2460888 (isPrefix!3763 (tail!6195 prefix!494) (tail!6195 lt!1391636)))))

(assert (= (and d!1176527 (not res!1608220)) b!3972376))

(assert (= (and b!3972376 res!1608223) b!3972377))

(assert (= (and b!3972377 res!1608222) b!3972378))

(assert (= (and d!1176527 (not res!1608221)) b!3972379))

(declare-fun m!4542929 () Bool)

(assert (=> b!3972377 m!4542929))

(assert (=> b!3972377 m!4542911))

(assert (=> b!3972379 m!4542553))

(assert (=> b!3972379 m!4542561))

(declare-fun m!4542931 () Bool)

(assert (=> b!3972378 m!4542931))

(assert (=> b!3972378 m!4542915))

(assert (=> b!3972378 m!4542931))

(assert (=> b!3972378 m!4542915))

(declare-fun m!4542933 () Bool)

(assert (=> b!3972378 m!4542933))

(assert (=> b!3972087 d!1176527))

(declare-fun b!3972380 () Bool)

(declare-fun e!2460890 () Bool)

(declare-fun e!2460891 () Bool)

(assert (=> b!3972380 (= e!2460890 e!2460891)))

(declare-fun res!1608227 () Bool)

(assert (=> b!3972380 (=> (not res!1608227) (not e!2460891))))

(assert (=> b!3972380 (= res!1608227 (not ((_ is Nil!42414) lt!1391626)))))

(declare-fun b!3972381 () Bool)

(declare-fun res!1608226 () Bool)

(assert (=> b!3972381 (=> (not res!1608226) (not e!2460891))))

(assert (=> b!3972381 (= res!1608226 (= (head!8463 lt!1391645) (head!8463 lt!1391626)))))

(declare-fun d!1176529 () Bool)

(declare-fun e!2460889 () Bool)

(assert (=> d!1176529 e!2460889))

(declare-fun res!1608225 () Bool)

(assert (=> d!1176529 (=> res!1608225 e!2460889)))

(declare-fun lt!1391746 () Bool)

(assert (=> d!1176529 (= res!1608225 (not lt!1391746))))

(assert (=> d!1176529 (= lt!1391746 e!2460890)))

(declare-fun res!1608224 () Bool)

(assert (=> d!1176529 (=> res!1608224 e!2460890)))

(assert (=> d!1176529 (= res!1608224 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176529 (= (isPrefix!3763 lt!1391645 lt!1391626) lt!1391746)))

(declare-fun b!3972383 () Bool)

(assert (=> b!3972383 (= e!2460889 (>= (size!31735 lt!1391626) (size!31735 lt!1391645)))))

(declare-fun b!3972382 () Bool)

(assert (=> b!3972382 (= e!2460891 (isPrefix!3763 (tail!6195 lt!1391645) (tail!6195 lt!1391626)))))

(assert (= (and d!1176529 (not res!1608224)) b!3972380))

(assert (= (and b!3972380 res!1608227) b!3972381))

(assert (= (and b!3972381 res!1608226) b!3972382))

(assert (= (and d!1176529 (not res!1608225)) b!3972383))

(assert (=> b!3972381 m!4542909))

(declare-fun m!4542935 () Bool)

(assert (=> b!3972381 m!4542935))

(declare-fun m!4542937 () Bool)

(assert (=> b!3972383 m!4542937))

(assert (=> b!3972383 m!4542559))

(assert (=> b!3972382 m!4542913))

(declare-fun m!4542939 () Bool)

(assert (=> b!3972382 m!4542939))

(assert (=> b!3972382 m!4542913))

(assert (=> b!3972382 m!4542939))

(declare-fun m!4542941 () Bool)

(assert (=> b!3972382 m!4542941))

(assert (=> b!3972087 d!1176529))

(declare-fun d!1176531 () Bool)

(assert (=> d!1176531 (isPrefix!3763 prefix!494 (++!11078 prefix!494 suffix!1299))))

(declare-fun lt!1391747 () Unit!61065)

(assert (=> d!1176531 (= lt!1391747 (choose!23765 prefix!494 suffix!1299))))

(assert (=> d!1176531 (= (lemmaConcatTwoListThenFirstIsPrefix!2606 prefix!494 suffix!1299) lt!1391747)))

(declare-fun bs!587648 () Bool)

(assert (= bs!587648 d!1176531))

(assert (=> bs!587648 m!4542583))

(assert (=> bs!587648 m!4542583))

(declare-fun m!4542943 () Bool)

(assert (=> bs!587648 m!4542943))

(declare-fun m!4542945 () Bool)

(assert (=> bs!587648 m!4542945))

(assert (=> b!3972087 d!1176531))

(declare-fun d!1176533 () Bool)

(declare-fun lt!1391748 () Int)

(assert (=> d!1176533 (>= lt!1391748 0)))

(declare-fun e!2460892 () Int)

(assert (=> d!1176533 (= lt!1391748 e!2460892)))

(declare-fun c!688882 () Bool)

(assert (=> d!1176533 (= c!688882 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176533 (= (size!31735 lt!1391645) lt!1391748)))

(declare-fun b!3972384 () Bool)

(assert (=> b!3972384 (= e!2460892 0)))

(declare-fun b!3972385 () Bool)

(assert (=> b!3972385 (= e!2460892 (+ 1 (size!31735 (t!330929 lt!1391645))))))

(assert (= (and d!1176533 c!688882) b!3972384))

(assert (= (and d!1176533 (not c!688882)) b!3972385))

(declare-fun m!4542947 () Bool)

(assert (=> b!3972385 m!4542947))

(assert (=> b!3972097 d!1176533))

(declare-fun d!1176535 () Bool)

(declare-fun lt!1391749 () Int)

(assert (=> d!1176535 (>= lt!1391749 0)))

(declare-fun e!2460893 () Int)

(assert (=> d!1176535 (= lt!1391749 e!2460893)))

(declare-fun c!688883 () Bool)

(assert (=> d!1176535 (= c!688883 ((_ is Nil!42414) prefix!494))))

(assert (=> d!1176535 (= (size!31735 prefix!494) lt!1391749)))

(declare-fun b!3972386 () Bool)

(assert (=> b!3972386 (= e!2460893 0)))

(declare-fun b!3972387 () Bool)

(assert (=> b!3972387 (= e!2460893 (+ 1 (size!31735 (t!330929 prefix!494))))))

(assert (= (and d!1176535 c!688883) b!3972386))

(assert (= (and d!1176535 (not c!688883)) b!3972387))

(declare-fun m!4542949 () Bool)

(assert (=> b!3972387 m!4542949))

(assert (=> b!3972097 d!1176535))

(declare-fun d!1176537 () Bool)

(declare-fun list!15740 (Conc!12887) List!42538)

(assert (=> d!1176537 (= (list!15738 (charsOf!4492 token!484)) (list!15740 (c!688836 (charsOf!4492 token!484))))))

(declare-fun bs!587649 () Bool)

(assert (= bs!587649 d!1176537))

(declare-fun m!4542951 () Bool)

(assert (=> bs!587649 m!4542951))

(assert (=> b!3972097 d!1176537))

(declare-fun d!1176539 () Bool)

(declare-fun lt!1391752 () BalanceConc!25368)

(assert (=> d!1176539 (= (list!15738 lt!1391752) (originalCharacters!7276 token!484))))

(assert (=> d!1176539 (= lt!1391752 (dynLambda!18076 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (value!210900 token!484)))))

(assert (=> d!1176539 (= (charsOf!4492 token!484) lt!1391752)))

(declare-fun b_lambda!116093 () Bool)

(assert (=> (not b_lambda!116093) (not d!1176539)))

(assert (=> d!1176539 t!330941))

(declare-fun b_and!305379 () Bool)

(assert (= b_and!305375 (and (=> t!330941 result!290226) b_and!305379)))

(assert (=> d!1176539 t!330943))

(declare-fun b_and!305381 () Bool)

(assert (= b_and!305377 (and (=> t!330943 result!290230) b_and!305381)))

(declare-fun m!4542953 () Bool)

(assert (=> d!1176539 m!4542953))

(assert (=> d!1176539 m!4542901))

(assert (=> b!3972097 d!1176539))

(declare-fun d!1176541 () Bool)

(assert (=> d!1176541 (= (isEmpty!25370 rules!2999) ((_ is Nil!42416) rules!2999))))

(assert (=> b!3972086 d!1176541))

(declare-fun b!3972398 () Bool)

(declare-fun e!2460902 () Bool)

(declare-fun inv!17 (TokenValue!6906) Bool)

(assert (=> b!3972398 (= e!2460902 (inv!17 (value!210900 token!484)))))

(declare-fun b!3972399 () Bool)

(declare-fun e!2460901 () Bool)

(declare-fun inv!15 (TokenValue!6906) Bool)

(assert (=> b!3972399 (= e!2460901 (inv!15 (value!210900 token!484)))))

(declare-fun d!1176543 () Bool)

(declare-fun c!688889 () Bool)

(assert (=> d!1176543 (= c!688889 ((_ is IntegerValue!20718) (value!210900 token!484)))))

(declare-fun e!2460900 () Bool)

(assert (=> d!1176543 (= (inv!21 (value!210900 token!484)) e!2460900)))

(declare-fun b!3972400 () Bool)

(declare-fun inv!16 (TokenValue!6906) Bool)

(assert (=> b!3972400 (= e!2460900 (inv!16 (value!210900 token!484)))))

(declare-fun b!3972401 () Bool)

(assert (=> b!3972401 (= e!2460900 e!2460902)))

(declare-fun c!688888 () Bool)

(assert (=> b!3972401 (= c!688888 ((_ is IntegerValue!20719) (value!210900 token!484)))))

(declare-fun b!3972402 () Bool)

(declare-fun res!1608230 () Bool)

(assert (=> b!3972402 (=> res!1608230 e!2460901)))

(assert (=> b!3972402 (= res!1608230 (not ((_ is IntegerValue!20720) (value!210900 token!484))))))

(assert (=> b!3972402 (= e!2460902 e!2460901)))

(assert (= (and d!1176543 c!688889) b!3972400))

(assert (= (and d!1176543 (not c!688889)) b!3972401))

(assert (= (and b!3972401 c!688888) b!3972398))

(assert (= (and b!3972401 (not c!688888)) b!3972402))

(assert (= (and b!3972402 (not res!1608230)) b!3972399))

(declare-fun m!4542955 () Bool)

(assert (=> b!3972398 m!4542955))

(declare-fun m!4542957 () Bool)

(assert (=> b!3972399 m!4542957))

(declare-fun m!4542959 () Bool)

(assert (=> b!3972400 m!4542959))

(assert (=> b!3972096 d!1176543))

(declare-fun b!3972404 () Bool)

(declare-fun e!2460903 () List!42538)

(assert (=> b!3972404 (= e!2460903 (Cons!42414 (h!47834 lt!1391645) (++!11078 (t!330929 lt!1391645) lt!1391638)))))

(declare-fun b!3972405 () Bool)

(declare-fun res!1608231 () Bool)

(declare-fun e!2460904 () Bool)

(assert (=> b!3972405 (=> (not res!1608231) (not e!2460904))))

(declare-fun lt!1391753 () List!42538)

(assert (=> b!3972405 (= res!1608231 (= (size!31735 lt!1391753) (+ (size!31735 lt!1391645) (size!31735 lt!1391638))))))

(declare-fun b!3972403 () Bool)

(assert (=> b!3972403 (= e!2460903 lt!1391638)))

(declare-fun d!1176545 () Bool)

(assert (=> d!1176545 e!2460904))

(declare-fun res!1608232 () Bool)

(assert (=> d!1176545 (=> (not res!1608232) (not e!2460904))))

(assert (=> d!1176545 (= res!1608232 (= (content!6437 lt!1391753) ((_ map or) (content!6437 lt!1391645) (content!6437 lt!1391638))))))

(assert (=> d!1176545 (= lt!1391753 e!2460903)))

(declare-fun c!688890 () Bool)

(assert (=> d!1176545 (= c!688890 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176545 (= (++!11078 lt!1391645 lt!1391638) lt!1391753)))

(declare-fun b!3972406 () Bool)

(assert (=> b!3972406 (= e!2460904 (or (not (= lt!1391638 Nil!42414)) (= lt!1391753 lt!1391645)))))

(assert (= (and d!1176545 c!688890) b!3972403))

(assert (= (and d!1176545 (not c!688890)) b!3972404))

(assert (= (and d!1176545 res!1608232) b!3972405))

(assert (= (and b!3972405 res!1608231) b!3972406))

(declare-fun m!4542961 () Bool)

(assert (=> b!3972404 m!4542961))

(declare-fun m!4542963 () Bool)

(assert (=> b!3972405 m!4542963))

(assert (=> b!3972405 m!4542559))

(declare-fun m!4542965 () Bool)

(assert (=> b!3972405 m!4542965))

(declare-fun m!4542967 () Bool)

(assert (=> d!1176545 m!4542967))

(declare-fun m!4542969 () Bool)

(assert (=> d!1176545 m!4542969))

(declare-fun m!4542971 () Bool)

(assert (=> d!1176545 m!4542971))

(assert (=> b!3972085 d!1176545))

(declare-fun b!3972408 () Bool)

(declare-fun e!2460905 () List!42538)

(assert (=> b!3972408 (= e!2460905 (Cons!42414 (h!47834 lt!1391632) (++!11078 (t!330929 lt!1391632) suffix!1299)))))

(declare-fun b!3972409 () Bool)

(declare-fun res!1608233 () Bool)

(declare-fun e!2460906 () Bool)

(assert (=> b!3972409 (=> (not res!1608233) (not e!2460906))))

(declare-fun lt!1391754 () List!42538)

(assert (=> b!3972409 (= res!1608233 (= (size!31735 lt!1391754) (+ (size!31735 lt!1391632) (size!31735 suffix!1299))))))

(declare-fun b!3972407 () Bool)

(assert (=> b!3972407 (= e!2460905 suffix!1299)))

(declare-fun d!1176547 () Bool)

(assert (=> d!1176547 e!2460906))

(declare-fun res!1608234 () Bool)

(assert (=> d!1176547 (=> (not res!1608234) (not e!2460906))))

(assert (=> d!1176547 (= res!1608234 (= (content!6437 lt!1391754) ((_ map or) (content!6437 lt!1391632) (content!6437 suffix!1299))))))

(assert (=> d!1176547 (= lt!1391754 e!2460905)))

(declare-fun c!688891 () Bool)

(assert (=> d!1176547 (= c!688891 ((_ is Nil!42414) lt!1391632))))

(assert (=> d!1176547 (= (++!11078 lt!1391632 suffix!1299) lt!1391754)))

(declare-fun b!3972410 () Bool)

(assert (=> b!3972410 (= e!2460906 (or (not (= suffix!1299 Nil!42414)) (= lt!1391754 lt!1391632)))))

(assert (= (and d!1176547 c!688891) b!3972407))

(assert (= (and d!1176547 (not c!688891)) b!3972408))

(assert (= (and d!1176547 res!1608234) b!3972409))

(assert (= (and b!3972409 res!1608233) b!3972410))

(declare-fun m!4542973 () Bool)

(assert (=> b!3972408 m!4542973))

(declare-fun m!4542975 () Bool)

(assert (=> b!3972409 m!4542975))

(declare-fun m!4542977 () Bool)

(assert (=> b!3972409 m!4542977))

(assert (=> b!3972409 m!4542507))

(declare-fun m!4542979 () Bool)

(assert (=> d!1176547 m!4542979))

(declare-fun m!4542981 () Bool)

(assert (=> d!1176547 m!4542981))

(assert (=> d!1176547 m!4542825))

(assert (=> b!3972085 d!1176547))

(declare-fun b!3972412 () Bool)

(declare-fun e!2460907 () List!42538)

(assert (=> b!3972412 (= e!2460907 (Cons!42414 (h!47834 lt!1391640) (++!11078 (t!330929 lt!1391640) suffix!1299)))))

(declare-fun b!3972413 () Bool)

(declare-fun res!1608235 () Bool)

(declare-fun e!2460908 () Bool)

(assert (=> b!3972413 (=> (not res!1608235) (not e!2460908))))

(declare-fun lt!1391755 () List!42538)

(assert (=> b!3972413 (= res!1608235 (= (size!31735 lt!1391755) (+ (size!31735 lt!1391640) (size!31735 suffix!1299))))))

(declare-fun b!3972411 () Bool)

(assert (=> b!3972411 (= e!2460907 suffix!1299)))

(declare-fun d!1176549 () Bool)

(assert (=> d!1176549 e!2460908))

(declare-fun res!1608236 () Bool)

(assert (=> d!1176549 (=> (not res!1608236) (not e!2460908))))

(assert (=> d!1176549 (= res!1608236 (= (content!6437 lt!1391755) ((_ map or) (content!6437 lt!1391640) (content!6437 suffix!1299))))))

(assert (=> d!1176549 (= lt!1391755 e!2460907)))

(declare-fun c!688892 () Bool)

(assert (=> d!1176549 (= c!688892 ((_ is Nil!42414) lt!1391640))))

(assert (=> d!1176549 (= (++!11078 lt!1391640 suffix!1299) lt!1391755)))

(declare-fun b!3972414 () Bool)

(assert (=> b!3972414 (= e!2460908 (or (not (= suffix!1299 Nil!42414)) (= lt!1391755 lt!1391640)))))

(assert (= (and d!1176549 c!688892) b!3972411))

(assert (= (and d!1176549 (not c!688892)) b!3972412))

(assert (= (and d!1176549 res!1608236) b!3972413))

(assert (= (and b!3972413 res!1608235) b!3972414))

(declare-fun m!4542983 () Bool)

(assert (=> b!3972412 m!4542983))

(declare-fun m!4542985 () Bool)

(assert (=> b!3972413 m!4542985))

(declare-fun m!4542987 () Bool)

(assert (=> b!3972413 m!4542987))

(assert (=> b!3972413 m!4542507))

(declare-fun m!4542989 () Bool)

(assert (=> d!1176549 m!4542989))

(declare-fun m!4542991 () Bool)

(assert (=> d!1176549 m!4542991))

(assert (=> d!1176549 m!4542825))

(assert (=> b!3972085 d!1176549))

(declare-fun d!1176551 () Bool)

(assert (=> d!1176551 (= (++!11078 (++!11078 lt!1391645 lt!1391640) suffix!1299) (++!11078 lt!1391645 (++!11078 lt!1391640 suffix!1299)))))

(declare-fun lt!1391768 () Unit!61065)

(declare-fun choose!23766 (List!42538 List!42538 List!42538) Unit!61065)

(assert (=> d!1176551 (= lt!1391768 (choose!23766 lt!1391645 lt!1391640 suffix!1299))))

(assert (=> d!1176551 (= (lemmaConcatAssociativity!2398 lt!1391645 lt!1391640 suffix!1299) lt!1391768)))

(declare-fun bs!587650 () Bool)

(assert (= bs!587650 d!1176551))

(assert (=> bs!587650 m!4542549))

(declare-fun m!4542993 () Bool)

(assert (=> bs!587650 m!4542993))

(assert (=> bs!587650 m!4542549))

(declare-fun m!4542995 () Bool)

(assert (=> bs!587650 m!4542995))

(assert (=> bs!587650 m!4542491))

(assert (=> bs!587650 m!4542491))

(declare-fun m!4542997 () Bool)

(assert (=> bs!587650 m!4542997))

(assert (=> b!3972085 d!1176551))

(declare-fun b!3972524 () Bool)

(declare-fun res!1608294 () Bool)

(declare-fun e!2460966 () Bool)

(assert (=> b!3972524 (=> res!1608294 e!2460966)))

(assert (=> b!3972524 (= res!1608294 (not (isEmpty!25374 (tail!6195 lt!1391645))))))

(declare-fun d!1176553 () Bool)

(declare-fun e!2460967 () Bool)

(assert (=> d!1176553 e!2460967))

(declare-fun c!688909 () Bool)

(assert (=> d!1176553 (= c!688909 ((_ is EmptyExpr!11581) (regex!6676 (rule!9666 token!484))))))

(declare-fun lt!1391785 () Bool)

(declare-fun e!2460969 () Bool)

(assert (=> d!1176553 (= lt!1391785 e!2460969)))

(declare-fun c!688907 () Bool)

(assert (=> d!1176553 (= c!688907 (isEmpty!25374 lt!1391645))))

(declare-fun validRegex!5262 (Regex!11581) Bool)

(assert (=> d!1176553 (validRegex!5262 (regex!6676 (rule!9666 token!484)))))

(assert (=> d!1176553 (= (matchR!5558 (regex!6676 (rule!9666 token!484)) lt!1391645) lt!1391785)))

(declare-fun bm!285631 () Bool)

(declare-fun call!285636 () Bool)

(assert (=> bm!285631 (= call!285636 (isEmpty!25374 lt!1391645))))

(declare-fun b!3972525 () Bool)

(declare-fun res!1608291 () Bool)

(declare-fun e!2460970 () Bool)

(assert (=> b!3972525 (=> res!1608291 e!2460970)))

(assert (=> b!3972525 (= res!1608291 (not ((_ is ElementMatch!11581) (regex!6676 (rule!9666 token!484)))))))

(declare-fun e!2460971 () Bool)

(assert (=> b!3972525 (= e!2460971 e!2460970)))

(declare-fun b!3972526 () Bool)

(assert (=> b!3972526 (= e!2460971 (not lt!1391785))))

(declare-fun b!3972527 () Bool)

(declare-fun derivativeStep!3473 (Regex!11581 C!23348) Regex!11581)

(assert (=> b!3972527 (= e!2460969 (matchR!5558 (derivativeStep!3473 (regex!6676 (rule!9666 token!484)) (head!8463 lt!1391645)) (tail!6195 lt!1391645)))))

(declare-fun b!3972528 () Bool)

(declare-fun res!1608288 () Bool)

(assert (=> b!3972528 (=> res!1608288 e!2460970)))

(declare-fun e!2460972 () Bool)

(assert (=> b!3972528 (= res!1608288 e!2460972)))

(declare-fun res!1608290 () Bool)

(assert (=> b!3972528 (=> (not res!1608290) (not e!2460972))))

(assert (=> b!3972528 (= res!1608290 lt!1391785)))

(declare-fun b!3972529 () Bool)

(assert (=> b!3972529 (= e!2460967 e!2460971)))

(declare-fun c!688908 () Bool)

(assert (=> b!3972529 (= c!688908 ((_ is EmptyLang!11581) (regex!6676 (rule!9666 token!484))))))

(declare-fun b!3972530 () Bool)

(declare-fun e!2460968 () Bool)

(assert (=> b!3972530 (= e!2460970 e!2460968)))

(declare-fun res!1608293 () Bool)

(assert (=> b!3972530 (=> (not res!1608293) (not e!2460968))))

(assert (=> b!3972530 (= res!1608293 (not lt!1391785))))

(declare-fun b!3972531 () Bool)

(assert (=> b!3972531 (= e!2460967 (= lt!1391785 call!285636))))

(declare-fun b!3972532 () Bool)

(declare-fun res!1608289 () Bool)

(assert (=> b!3972532 (=> (not res!1608289) (not e!2460972))))

(assert (=> b!3972532 (= res!1608289 (isEmpty!25374 (tail!6195 lt!1391645)))))

(declare-fun b!3972533 () Bool)

(assert (=> b!3972533 (= e!2460972 (= (head!8463 lt!1391645) (c!688837 (regex!6676 (rule!9666 token!484)))))))

(declare-fun b!3972534 () Bool)

(assert (=> b!3972534 (= e!2460966 (not (= (head!8463 lt!1391645) (c!688837 (regex!6676 (rule!9666 token!484))))))))

(declare-fun b!3972535 () Bool)

(declare-fun res!1608295 () Bool)

(assert (=> b!3972535 (=> (not res!1608295) (not e!2460972))))

(assert (=> b!3972535 (= res!1608295 (not call!285636))))

(declare-fun b!3972536 () Bool)

(assert (=> b!3972536 (= e!2460968 e!2460966)))

(declare-fun res!1608292 () Bool)

(assert (=> b!3972536 (=> res!1608292 e!2460966)))

(assert (=> b!3972536 (= res!1608292 call!285636)))

(declare-fun b!3972537 () Bool)

(declare-fun nullable!4062 (Regex!11581) Bool)

(assert (=> b!3972537 (= e!2460969 (nullable!4062 (regex!6676 (rule!9666 token!484))))))

(assert (= (and d!1176553 c!688907) b!3972537))

(assert (= (and d!1176553 (not c!688907)) b!3972527))

(assert (= (and d!1176553 c!688909) b!3972531))

(assert (= (and d!1176553 (not c!688909)) b!3972529))

(assert (= (and b!3972529 c!688908) b!3972526))

(assert (= (and b!3972529 (not c!688908)) b!3972525))

(assert (= (and b!3972525 (not res!1608291)) b!3972528))

(assert (= (and b!3972528 res!1608290) b!3972535))

(assert (= (and b!3972535 res!1608295) b!3972532))

(assert (= (and b!3972532 res!1608289) b!3972533))

(assert (= (and b!3972528 (not res!1608288)) b!3972530))

(assert (= (and b!3972530 res!1608293) b!3972536))

(assert (= (and b!3972536 (not res!1608292)) b!3972524))

(assert (= (and b!3972524 (not res!1608294)) b!3972534))

(assert (= (or b!3972531 b!3972536 b!3972535) bm!285631))

(assert (=> b!3972534 m!4542909))

(declare-fun m!4543055 () Bool)

(assert (=> d!1176553 m!4543055))

(declare-fun m!4543057 () Bool)

(assert (=> d!1176553 m!4543057))

(declare-fun m!4543059 () Bool)

(assert (=> b!3972537 m!4543059))

(assert (=> b!3972527 m!4542909))

(assert (=> b!3972527 m!4542909))

(declare-fun m!4543061 () Bool)

(assert (=> b!3972527 m!4543061))

(assert (=> b!3972527 m!4542913))

(assert (=> b!3972527 m!4543061))

(assert (=> b!3972527 m!4542913))

(declare-fun m!4543063 () Bool)

(assert (=> b!3972527 m!4543063))

(assert (=> b!3972533 m!4542909))

(assert (=> bm!285631 m!4543055))

(assert (=> b!3972524 m!4542913))

(assert (=> b!3972524 m!4542913))

(declare-fun m!4543065 () Bool)

(assert (=> b!3972524 m!4543065))

(assert (=> b!3972532 m!4542913))

(assert (=> b!3972532 m!4542913))

(assert (=> b!3972532 m!4543065))

(assert (=> b!3972090 d!1176553))

(declare-fun b!3972547 () Bool)

(declare-fun e!2460977 () Bool)

(declare-fun e!2460978 () Bool)

(assert (=> b!3972547 (= e!2460977 e!2460978)))

(declare-fun res!1608299 () Bool)

(assert (=> b!3972547 (=> (not res!1608299) (not e!2460978))))

(assert (=> b!3972547 (= res!1608299 (not ((_ is Nil!42414) lt!1391639)))))

(declare-fun b!3972548 () Bool)

(declare-fun res!1608298 () Bool)

(assert (=> b!3972548 (=> (not res!1608298) (not e!2460978))))

(assert (=> b!3972548 (= res!1608298 (= (head!8463 lt!1391645) (head!8463 lt!1391639)))))

(declare-fun d!1176567 () Bool)

(declare-fun e!2460976 () Bool)

(assert (=> d!1176567 e!2460976))

(declare-fun res!1608297 () Bool)

(assert (=> d!1176567 (=> res!1608297 e!2460976)))

(declare-fun lt!1391786 () Bool)

(assert (=> d!1176567 (= res!1608297 (not lt!1391786))))

(assert (=> d!1176567 (= lt!1391786 e!2460977)))

(declare-fun res!1608296 () Bool)

(assert (=> d!1176567 (=> res!1608296 e!2460977)))

(assert (=> d!1176567 (= res!1608296 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176567 (= (isPrefix!3763 lt!1391645 lt!1391639) lt!1391786)))

(declare-fun b!3972550 () Bool)

(assert (=> b!3972550 (= e!2460976 (>= (size!31735 lt!1391639) (size!31735 lt!1391645)))))

(declare-fun b!3972549 () Bool)

(assert (=> b!3972549 (= e!2460978 (isPrefix!3763 (tail!6195 lt!1391645) (tail!6195 lt!1391639)))))

(assert (= (and d!1176567 (not res!1608296)) b!3972547))

(assert (= (and b!3972547 res!1608299) b!3972548))

(assert (= (and b!3972548 res!1608298) b!3972549))

(assert (= (and d!1176567 (not res!1608297)) b!3972550))

(assert (=> b!3972548 m!4542909))

(declare-fun m!4543067 () Bool)

(assert (=> b!3972548 m!4543067))

(declare-fun m!4543069 () Bool)

(assert (=> b!3972550 m!4543069))

(assert (=> b!3972550 m!4542559))

(assert (=> b!3972549 m!4542913))

(declare-fun m!4543071 () Bool)

(assert (=> b!3972549 m!4543071))

(assert (=> b!3972549 m!4542913))

(assert (=> b!3972549 m!4543071))

(declare-fun m!4543073 () Bool)

(assert (=> b!3972549 m!4543073))

(assert (=> b!3972090 d!1176567))

(declare-fun d!1176569 () Bool)

(assert (=> d!1176569 (isPrefix!3763 lt!1391645 (++!11078 prefix!494 newSuffix!27))))

(declare-fun lt!1391789 () Unit!61065)

(declare-fun choose!23768 (List!42538 List!42538 List!42538) Unit!61065)

(assert (=> d!1176569 (= lt!1391789 (choose!23768 lt!1391645 prefix!494 newSuffix!27))))

(assert (=> d!1176569 (isPrefix!3763 lt!1391645 prefix!494)))

(assert (=> d!1176569 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!596 lt!1391645 prefix!494 newSuffix!27) lt!1391789)))

(declare-fun bs!587652 () Bool)

(assert (= bs!587652 d!1176569))

(assert (=> bs!587652 m!4542589))

(assert (=> bs!587652 m!4542589))

(declare-fun m!4543075 () Bool)

(assert (=> bs!587652 m!4543075))

(declare-fun m!4543077 () Bool)

(assert (=> bs!587652 m!4543077))

(assert (=> bs!587652 m!4542495))

(assert (=> b!3972090 d!1176569))

(declare-fun d!1176571 () Bool)

(assert (=> d!1176571 (isPrefix!3763 lt!1391645 (++!11078 prefix!494 suffix!1299))))

(declare-fun lt!1391790 () Unit!61065)

(assert (=> d!1176571 (= lt!1391790 (choose!23768 lt!1391645 prefix!494 suffix!1299))))

(assert (=> d!1176571 (isPrefix!3763 lt!1391645 prefix!494)))

(assert (=> d!1176571 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!596 lt!1391645 prefix!494 suffix!1299) lt!1391790)))

(declare-fun bs!587653 () Bool)

(assert (= bs!587653 d!1176571))

(assert (=> bs!587653 m!4542583))

(assert (=> bs!587653 m!4542583))

(declare-fun m!4543079 () Bool)

(assert (=> bs!587653 m!4543079))

(declare-fun m!4543081 () Bool)

(assert (=> bs!587653 m!4543081))

(assert (=> bs!587653 m!4542495))

(assert (=> b!3972090 d!1176571))

(declare-fun d!1176573 () Bool)

(declare-fun res!1608302 () Bool)

(declare-fun e!2460981 () Bool)

(assert (=> d!1176573 (=> (not res!1608302) (not e!2460981))))

(declare-fun rulesValid!2603 (LexerInterface!6265 List!42540) Bool)

(assert (=> d!1176573 (= res!1608302 (rulesValid!2603 thiss!21717 rules!2999))))

(assert (=> d!1176573 (= (rulesInvariant!5608 thiss!21717 rules!2999) e!2460981)))

(declare-fun b!3972553 () Bool)

(declare-datatypes ((List!42542 0))(
  ( (Nil!42418) (Cons!42418 (h!47838 String!48247) (t!330957 List!42542)) )
))
(declare-fun noDuplicateTag!2604 (LexerInterface!6265 List!42540 List!42542) Bool)

(assert (=> b!3972553 (= e!2460981 (noDuplicateTag!2604 thiss!21717 rules!2999 Nil!42418))))

(assert (= (and d!1176573 res!1608302) b!3972553))

(declare-fun m!4543083 () Bool)

(assert (=> d!1176573 m!4543083))

(declare-fun m!4543085 () Bool)

(assert (=> b!3972553 m!4543085))

(assert (=> b!3972079 d!1176573))

(declare-fun d!1176575 () Bool)

(declare-fun lt!1391791 () Int)

(assert (=> d!1176575 (>= lt!1391791 0)))

(declare-fun e!2460982 () Int)

(assert (=> d!1176575 (= lt!1391791 e!2460982)))

(declare-fun c!688910 () Bool)

(assert (=> d!1176575 (= c!688910 ((_ is Nil!42414) (originalCharacters!7276 token!484)))))

(assert (=> d!1176575 (= (size!31735 (originalCharacters!7276 token!484)) lt!1391791)))

(declare-fun b!3972554 () Bool)

(assert (=> b!3972554 (= e!2460982 0)))

(declare-fun b!3972555 () Bool)

(assert (=> b!3972555 (= e!2460982 (+ 1 (size!31735 (t!330929 (originalCharacters!7276 token!484)))))))

(assert (= (and d!1176575 c!688910) b!3972554))

(assert (= (and d!1176575 (not c!688910)) b!3972555))

(declare-fun m!4543087 () Bool)

(assert (=> b!3972555 m!4543087))

(assert (=> b!3972100 d!1176575))

(declare-fun d!1176577 () Bool)

(assert (=> d!1176577 (isPrefix!3763 lt!1391645 (++!11078 lt!1391645 lt!1391638))))

(declare-fun lt!1391792 () Unit!61065)

(assert (=> d!1176577 (= lt!1391792 (choose!23765 lt!1391645 lt!1391638))))

(assert (=> d!1176577 (= (lemmaConcatTwoListThenFirstIsPrefix!2606 lt!1391645 lt!1391638) lt!1391792)))

(declare-fun bs!587654 () Bool)

(assert (= bs!587654 d!1176577))

(assert (=> bs!587654 m!4542545))

(assert (=> bs!587654 m!4542545))

(declare-fun m!4543089 () Bool)

(assert (=> bs!587654 m!4543089))

(declare-fun m!4543091 () Bool)

(assert (=> bs!587654 m!4543091))

(assert (=> b!3972089 d!1176577))

(declare-fun d!1176579 () Bool)

(declare-fun fromListB!2264 (List!42538) BalanceConc!25368)

(assert (=> d!1176579 (= (seqFromList!4915 lt!1391645) (fromListB!2264 lt!1391645))))

(declare-fun bs!587655 () Bool)

(assert (= bs!587655 d!1176579))

(declare-fun m!4543093 () Bool)

(assert (=> bs!587655 m!4543093))

(assert (=> b!3972089 d!1176579))

(declare-fun b!3972574 () Bool)

(declare-fun e!2460994 () Option!9090)

(declare-datatypes ((tuple2!41672 0))(
  ( (tuple2!41673 (_1!23970 List!42538) (_2!23970 List!42538)) )
))
(declare-fun lt!1391803 () tuple2!41672)

(declare-fun size!31737 (BalanceConc!25368) Int)

(assert (=> b!3972574 (= e!2460994 (Some!9089 (tuple2!41669 (Token!12491 (apply!9887 (transformation!6676 (rule!9666 token!484)) (seqFromList!4915 (_1!23970 lt!1391803))) (rule!9666 token!484) (size!31737 (seqFromList!4915 (_1!23970 lt!1391803))) (_1!23970 lt!1391803)) (_2!23970 lt!1391803))))))

(declare-fun lt!1391804 () Unit!61065)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1279 (Regex!11581 List!42538) Unit!61065)

(assert (=> b!3972574 (= lt!1391804 (longestMatchIsAcceptedByMatchOrIsEmpty!1279 (regex!6676 (rule!9666 token!484)) lt!1391636))))

(declare-fun res!1608319 () Bool)

(declare-fun findLongestMatchInner!1306 (Regex!11581 List!42538 Int List!42538 List!42538 Int) tuple2!41672)

(assert (=> b!3972574 (= res!1608319 (isEmpty!25374 (_1!23970 (findLongestMatchInner!1306 (regex!6676 (rule!9666 token!484)) Nil!42414 (size!31735 Nil!42414) lt!1391636 lt!1391636 (size!31735 lt!1391636)))))))

(declare-fun e!2460993 () Bool)

(assert (=> b!3972574 (=> res!1608319 e!2460993)))

(assert (=> b!3972574 e!2460993))

(declare-fun lt!1391805 () Unit!61065)

(assert (=> b!3972574 (= lt!1391805 lt!1391804)))

(declare-fun lt!1391807 () Unit!61065)

(declare-fun lemmaSemiInverse!1816 (TokenValueInjection!13240 BalanceConc!25368) Unit!61065)

(assert (=> b!3972574 (= lt!1391807 (lemmaSemiInverse!1816 (transformation!6676 (rule!9666 token!484)) (seqFromList!4915 (_1!23970 lt!1391803))))))

(declare-fun b!3972575 () Bool)

(declare-fun res!1608321 () Bool)

(declare-fun e!2460991 () Bool)

(assert (=> b!3972575 (=> (not res!1608321) (not e!2460991))))

(declare-fun lt!1391806 () Option!9090)

(assert (=> b!3972575 (= res!1608321 (= (value!210900 (_1!23968 (get!13976 lt!1391806))) (apply!9887 (transformation!6676 (rule!9666 (_1!23968 (get!13976 lt!1391806)))) (seqFromList!4915 (originalCharacters!7276 (_1!23968 (get!13976 lt!1391806)))))))))

(declare-fun b!3972576 () Bool)

(assert (=> b!3972576 (= e!2460993 (matchR!5558 (regex!6676 (rule!9666 token!484)) (_1!23970 (findLongestMatchInner!1306 (regex!6676 (rule!9666 token!484)) Nil!42414 (size!31735 Nil!42414) lt!1391636 lt!1391636 (size!31735 lt!1391636)))))))

(declare-fun b!3972577 () Bool)

(declare-fun res!1608317 () Bool)

(assert (=> b!3972577 (=> (not res!1608317) (not e!2460991))))

(assert (=> b!3972577 (= res!1608317 (< (size!31735 (_2!23968 (get!13976 lt!1391806))) (size!31735 lt!1391636)))))

(declare-fun b!3972578 () Bool)

(assert (=> b!3972578 (= e!2460991 (= (size!31734 (_1!23968 (get!13976 lt!1391806))) (size!31735 (originalCharacters!7276 (_1!23968 (get!13976 lt!1391806))))))))

(declare-fun d!1176581 () Bool)

(declare-fun e!2460992 () Bool)

(assert (=> d!1176581 e!2460992))

(declare-fun res!1608318 () Bool)

(assert (=> d!1176581 (=> res!1608318 e!2460992)))

(assert (=> d!1176581 (= res!1608318 (isEmpty!25373 lt!1391806))))

(assert (=> d!1176581 (= lt!1391806 e!2460994)))

(declare-fun c!688913 () Bool)

(assert (=> d!1176581 (= c!688913 (isEmpty!25374 (_1!23970 lt!1391803)))))

(declare-fun findLongestMatch!1219 (Regex!11581 List!42538) tuple2!41672)

(assert (=> d!1176581 (= lt!1391803 (findLongestMatch!1219 (regex!6676 (rule!9666 token!484)) lt!1391636))))

(assert (=> d!1176581 (ruleValid!2608 thiss!21717 (rule!9666 token!484))))

(assert (=> d!1176581 (= (maxPrefixOneRule!2597 thiss!21717 (rule!9666 token!484) lt!1391636) lt!1391806)))

(declare-fun b!3972579 () Bool)

(declare-fun res!1608322 () Bool)

(assert (=> b!3972579 (=> (not res!1608322) (not e!2460991))))

(assert (=> b!3972579 (= res!1608322 (= (++!11078 (list!15738 (charsOf!4492 (_1!23968 (get!13976 lt!1391806)))) (_2!23968 (get!13976 lt!1391806))) lt!1391636))))

(declare-fun b!3972580 () Bool)

(assert (=> b!3972580 (= e!2460992 e!2460991)))

(declare-fun res!1608323 () Bool)

(assert (=> b!3972580 (=> (not res!1608323) (not e!2460991))))

(assert (=> b!3972580 (= res!1608323 (matchR!5558 (regex!6676 (rule!9666 token!484)) (list!15738 (charsOf!4492 (_1!23968 (get!13976 lt!1391806))))))))

(declare-fun b!3972581 () Bool)

(assert (=> b!3972581 (= e!2460994 None!9089)))

(declare-fun b!3972582 () Bool)

(declare-fun res!1608320 () Bool)

(assert (=> b!3972582 (=> (not res!1608320) (not e!2460991))))

(assert (=> b!3972582 (= res!1608320 (= (rule!9666 (_1!23968 (get!13976 lt!1391806))) (rule!9666 token!484)))))

(assert (= (and d!1176581 c!688913) b!3972581))

(assert (= (and d!1176581 (not c!688913)) b!3972574))

(assert (= (and b!3972574 (not res!1608319)) b!3972576))

(assert (= (and d!1176581 (not res!1608318)) b!3972580))

(assert (= (and b!3972580 res!1608323) b!3972579))

(assert (= (and b!3972579 res!1608322) b!3972577))

(assert (= (and b!3972577 res!1608317) b!3972582))

(assert (= (and b!3972582 res!1608320) b!3972575))

(assert (= (and b!3972575 res!1608321) b!3972578))

(assert (=> b!3972574 m!4542553))

(declare-fun m!4543095 () Bool)

(assert (=> b!3972574 m!4543095))

(declare-fun m!4543097 () Bool)

(assert (=> b!3972574 m!4543097))

(declare-fun m!4543099 () Bool)

(assert (=> b!3972574 m!4543099))

(assert (=> b!3972574 m!4542553))

(declare-fun m!4543101 () Bool)

(assert (=> b!3972574 m!4543101))

(declare-fun m!4543103 () Bool)

(assert (=> b!3972574 m!4543103))

(declare-fun m!4543105 () Bool)

(assert (=> b!3972574 m!4543105))

(assert (=> b!3972574 m!4543095))

(assert (=> b!3972574 m!4543099))

(assert (=> b!3972574 m!4543095))

(declare-fun m!4543107 () Bool)

(assert (=> b!3972574 m!4543107))

(assert (=> b!3972574 m!4543095))

(declare-fun m!4543109 () Bool)

(assert (=> b!3972574 m!4543109))

(declare-fun m!4543111 () Bool)

(assert (=> b!3972575 m!4543111))

(declare-fun m!4543113 () Bool)

(assert (=> b!3972575 m!4543113))

(assert (=> b!3972575 m!4543113))

(declare-fun m!4543115 () Bool)

(assert (=> b!3972575 m!4543115))

(declare-fun m!4543117 () Bool)

(assert (=> d!1176581 m!4543117))

(declare-fun m!4543119 () Bool)

(assert (=> d!1176581 m!4543119))

(declare-fun m!4543121 () Bool)

(assert (=> d!1176581 m!4543121))

(assert (=> d!1176581 m!4542523))

(assert (=> b!3972577 m!4543111))

(declare-fun m!4543123 () Bool)

(assert (=> b!3972577 m!4543123))

(assert (=> b!3972577 m!4542553))

(assert (=> b!3972579 m!4543111))

(declare-fun m!4543125 () Bool)

(assert (=> b!3972579 m!4543125))

(assert (=> b!3972579 m!4543125))

(declare-fun m!4543127 () Bool)

(assert (=> b!3972579 m!4543127))

(assert (=> b!3972579 m!4543127))

(declare-fun m!4543129 () Bool)

(assert (=> b!3972579 m!4543129))

(assert (=> b!3972578 m!4543111))

(declare-fun m!4543131 () Bool)

(assert (=> b!3972578 m!4543131))

(assert (=> b!3972582 m!4543111))

(assert (=> b!3972580 m!4543111))

(assert (=> b!3972580 m!4543125))

(assert (=> b!3972580 m!4543125))

(assert (=> b!3972580 m!4543127))

(assert (=> b!3972580 m!4543127))

(declare-fun m!4543133 () Bool)

(assert (=> b!3972580 m!4543133))

(assert (=> b!3972576 m!4543099))

(assert (=> b!3972576 m!4542553))

(assert (=> b!3972576 m!4543099))

(assert (=> b!3972576 m!4542553))

(assert (=> b!3972576 m!4543101))

(declare-fun m!4543135 () Bool)

(assert (=> b!3972576 m!4543135))

(assert (=> b!3972089 d!1176581))

(declare-fun d!1176583 () Bool)

(declare-fun dynLambda!18077 (Int BalanceConc!25368) TokenValue!6906)

(assert (=> d!1176583 (= (apply!9887 (transformation!6676 (rule!9666 token!484)) (seqFromList!4915 lt!1391645)) (dynLambda!18077 (toValue!9164 (transformation!6676 (rule!9666 token!484))) (seqFromList!4915 lt!1391645)))))

(declare-fun b_lambda!116103 () Bool)

(assert (=> (not b_lambda!116103) (not d!1176583)))

(declare-fun t!330949 () Bool)

(declare-fun tb!239669 () Bool)

(assert (=> (and b!3972091 (= (toValue!9164 (transformation!6676 (h!47836 rules!2999))) (toValue!9164 (transformation!6676 (rule!9666 token!484)))) t!330949) tb!239669))

(declare-fun result!290242 () Bool)

(assert (=> tb!239669 (= result!290242 (inv!21 (dynLambda!18077 (toValue!9164 (transformation!6676 (rule!9666 token!484))) (seqFromList!4915 lt!1391645))))))

(declare-fun m!4543137 () Bool)

(assert (=> tb!239669 m!4543137))

(assert (=> d!1176583 t!330949))

(declare-fun b_and!305391 () Bool)

(assert (= b_and!305359 (and (=> t!330949 result!290242) b_and!305391)))

(declare-fun t!330951 () Bool)

(declare-fun tb!239671 () Bool)

(assert (=> (and b!3972099 (= (toValue!9164 (transformation!6676 (rule!9666 token!484))) (toValue!9164 (transformation!6676 (rule!9666 token!484)))) t!330951) tb!239671))

(declare-fun result!290246 () Bool)

(assert (= result!290246 result!290242))

(assert (=> d!1176583 t!330951))

(declare-fun b_and!305393 () Bool)

(assert (= b_and!305363 (and (=> t!330951 result!290246) b_and!305393)))

(assert (=> d!1176583 m!4542537))

(declare-fun m!4543139 () Bool)

(assert (=> d!1176583 m!4543139))

(assert (=> b!3972089 d!1176583))

(declare-fun d!1176585 () Bool)

(assert (=> d!1176585 (= lt!1391638 suffixResult!105)))

(declare-fun lt!1391810 () Unit!61065)

(declare-fun choose!23769 (List!42538 List!42538 List!42538 List!42538 List!42538) Unit!61065)

(assert (=> d!1176585 (= lt!1391810 (choose!23769 lt!1391645 lt!1391638 lt!1391645 suffixResult!105 lt!1391636))))

(assert (=> d!1176585 (isPrefix!3763 lt!1391645 lt!1391636)))

(assert (=> d!1176585 (= (lemmaSamePrefixThenSameSuffix!1950 lt!1391645 lt!1391638 lt!1391645 suffixResult!105 lt!1391636) lt!1391810)))

(declare-fun bs!587656 () Bool)

(assert (= bs!587656 d!1176585))

(declare-fun m!4543141 () Bool)

(assert (=> bs!587656 m!4543141))

(assert (=> bs!587656 m!4542569))

(assert (=> b!3972089 d!1176585))

(declare-fun b!3972585 () Bool)

(declare-fun e!2460999 () Bool)

(declare-fun e!2461000 () Bool)

(assert (=> b!3972585 (= e!2460999 e!2461000)))

(declare-fun res!1608327 () Bool)

(assert (=> b!3972585 (=> (not res!1608327) (not e!2461000))))

(assert (=> b!3972585 (= res!1608327 (not ((_ is Nil!42414) lt!1391643)))))

(declare-fun b!3972586 () Bool)

(declare-fun res!1608326 () Bool)

(assert (=> b!3972586 (=> (not res!1608326) (not e!2461000))))

(assert (=> b!3972586 (= res!1608326 (= (head!8463 lt!1391645) (head!8463 lt!1391643)))))

(declare-fun d!1176587 () Bool)

(declare-fun e!2460998 () Bool)

(assert (=> d!1176587 e!2460998))

(declare-fun res!1608325 () Bool)

(assert (=> d!1176587 (=> res!1608325 e!2460998)))

(declare-fun lt!1391811 () Bool)

(assert (=> d!1176587 (= res!1608325 (not lt!1391811))))

(assert (=> d!1176587 (= lt!1391811 e!2460999)))

(declare-fun res!1608324 () Bool)

(assert (=> d!1176587 (=> res!1608324 e!2460999)))

(assert (=> d!1176587 (= res!1608324 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176587 (= (isPrefix!3763 lt!1391645 lt!1391643) lt!1391811)))

(declare-fun b!3972588 () Bool)

(assert (=> b!3972588 (= e!2460998 (>= (size!31735 lt!1391643) (size!31735 lt!1391645)))))

(declare-fun b!3972587 () Bool)

(assert (=> b!3972587 (= e!2461000 (isPrefix!3763 (tail!6195 lt!1391645) (tail!6195 lt!1391643)))))

(assert (= (and d!1176587 (not res!1608324)) b!3972585))

(assert (= (and b!3972585 res!1608327) b!3972586))

(assert (= (and b!3972586 res!1608326) b!3972587))

(assert (= (and d!1176587 (not res!1608325)) b!3972588))

(assert (=> b!3972586 m!4542909))

(declare-fun m!4543143 () Bool)

(assert (=> b!3972586 m!4543143))

(declare-fun m!4543145 () Bool)

(assert (=> b!3972588 m!4543145))

(assert (=> b!3972588 m!4542559))

(assert (=> b!3972587 m!4542913))

(declare-fun m!4543147 () Bool)

(assert (=> b!3972587 m!4543147))

(assert (=> b!3972587 m!4542913))

(assert (=> b!3972587 m!4543147))

(declare-fun m!4543149 () Bool)

(assert (=> b!3972587 m!4543149))

(assert (=> b!3972089 d!1176587))

(declare-fun d!1176589 () Bool)

(assert (=> d!1176589 (= (maxPrefixOneRule!2597 thiss!21717 (rule!9666 token!484) lt!1391636) (Some!9089 (tuple2!41669 (Token!12491 (apply!9887 (transformation!6676 (rule!9666 token!484)) (seqFromList!4915 lt!1391645)) (rule!9666 token!484) (size!31735 lt!1391645) lt!1391645) suffixResult!105)))))

(declare-fun lt!1391814 () Unit!61065)

(declare-fun choose!23770 (LexerInterface!6265 List!42540 List!42538 List!42538 List!42538 Rule!13152) Unit!61065)

(assert (=> d!1176589 (= lt!1391814 (choose!23770 thiss!21717 rules!2999 lt!1391645 lt!1391636 suffixResult!105 (rule!9666 token!484)))))

(assert (=> d!1176589 (not (isEmpty!25370 rules!2999))))

(assert (=> d!1176589 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1419 thiss!21717 rules!2999 lt!1391645 lt!1391636 suffixResult!105 (rule!9666 token!484)) lt!1391814)))

(declare-fun bs!587657 () Bool)

(assert (= bs!587657 d!1176589))

(assert (=> bs!587657 m!4542559))

(declare-fun m!4543151 () Bool)

(assert (=> bs!587657 m!4543151))

(assert (=> bs!587657 m!4542541))

(assert (=> bs!587657 m!4542537))

(assert (=> bs!587657 m!4542527))

(assert (=> bs!587657 m!4542537))

(assert (=> bs!587657 m!4542539))

(assert (=> b!3972089 d!1176589))

(declare-fun b!3972590 () Bool)

(declare-fun e!2461001 () List!42538)

(assert (=> b!3972590 (= e!2461001 (Cons!42414 (h!47834 lt!1391645) (++!11078 (t!330929 lt!1391645) lt!1391640)))))

(declare-fun b!3972591 () Bool)

(declare-fun res!1608328 () Bool)

(declare-fun e!2461002 () Bool)

(assert (=> b!3972591 (=> (not res!1608328) (not e!2461002))))

(declare-fun lt!1391815 () List!42538)

(assert (=> b!3972591 (= res!1608328 (= (size!31735 lt!1391815) (+ (size!31735 lt!1391645) (size!31735 lt!1391640))))))

(declare-fun b!3972589 () Bool)

(assert (=> b!3972589 (= e!2461001 lt!1391640)))

(declare-fun d!1176591 () Bool)

(assert (=> d!1176591 e!2461002))

(declare-fun res!1608329 () Bool)

(assert (=> d!1176591 (=> (not res!1608329) (not e!2461002))))

(assert (=> d!1176591 (= res!1608329 (= (content!6437 lt!1391815) ((_ map or) (content!6437 lt!1391645) (content!6437 lt!1391640))))))

(assert (=> d!1176591 (= lt!1391815 e!2461001)))

(declare-fun c!688914 () Bool)

(assert (=> d!1176591 (= c!688914 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176591 (= (++!11078 lt!1391645 lt!1391640) lt!1391815)))

(declare-fun b!3972592 () Bool)

(assert (=> b!3972592 (= e!2461002 (or (not (= lt!1391640 Nil!42414)) (= lt!1391815 lt!1391645)))))

(assert (= (and d!1176591 c!688914) b!3972589))

(assert (= (and d!1176591 (not c!688914)) b!3972590))

(assert (= (and d!1176591 res!1608329) b!3972591))

(assert (= (and b!3972591 res!1608328) b!3972592))

(declare-fun m!4543153 () Bool)

(assert (=> b!3972590 m!4543153))

(declare-fun m!4543155 () Bool)

(assert (=> b!3972591 m!4543155))

(assert (=> b!3972591 m!4542559))

(assert (=> b!3972591 m!4542987))

(declare-fun m!4543157 () Bool)

(assert (=> d!1176591 m!4543157))

(assert (=> d!1176591 m!4542969))

(assert (=> d!1176591 m!4542991))

(assert (=> b!3972082 d!1176591))

(declare-fun d!1176593 () Bool)

(declare-fun lt!1391818 () List!42538)

(assert (=> d!1176593 (= (++!11078 lt!1391645 lt!1391818) prefix!494)))

(declare-fun e!2461005 () List!42538)

(assert (=> d!1176593 (= lt!1391818 e!2461005)))

(declare-fun c!688917 () Bool)

(assert (=> d!1176593 (= c!688917 ((_ is Cons!42414) lt!1391645))))

(assert (=> d!1176593 (>= (size!31735 prefix!494) (size!31735 lt!1391645))))

(assert (=> d!1176593 (= (getSuffix!2194 prefix!494 lt!1391645) lt!1391818)))

(declare-fun b!3972597 () Bool)

(assert (=> b!3972597 (= e!2461005 (getSuffix!2194 (tail!6195 prefix!494) (t!330929 lt!1391645)))))

(declare-fun b!3972598 () Bool)

(assert (=> b!3972598 (= e!2461005 prefix!494)))

(assert (= (and d!1176593 c!688917) b!3972597))

(assert (= (and d!1176593 (not c!688917)) b!3972598))

(declare-fun m!4543159 () Bool)

(assert (=> d!1176593 m!4543159))

(assert (=> d!1176593 m!4542561))

(assert (=> d!1176593 m!4542559))

(assert (=> b!3972597 m!4542931))

(assert (=> b!3972597 m!4542931))

(declare-fun m!4543161 () Bool)

(assert (=> b!3972597 m!4543161))

(assert (=> b!3972082 d!1176593))

(declare-fun b!3972599 () Bool)

(declare-fun e!2461007 () Bool)

(declare-fun e!2461008 () Bool)

(assert (=> b!3972599 (= e!2461007 e!2461008)))

(declare-fun res!1608333 () Bool)

(assert (=> b!3972599 (=> (not res!1608333) (not e!2461008))))

(assert (=> b!3972599 (= res!1608333 (not ((_ is Nil!42414) prefix!494)))))

(declare-fun b!3972600 () Bool)

(declare-fun res!1608332 () Bool)

(assert (=> b!3972600 (=> (not res!1608332) (not e!2461008))))

(assert (=> b!3972600 (= res!1608332 (= (head!8463 lt!1391645) (head!8463 prefix!494)))))

(declare-fun d!1176595 () Bool)

(declare-fun e!2461006 () Bool)

(assert (=> d!1176595 e!2461006))

(declare-fun res!1608331 () Bool)

(assert (=> d!1176595 (=> res!1608331 e!2461006)))

(declare-fun lt!1391819 () Bool)

(assert (=> d!1176595 (= res!1608331 (not lt!1391819))))

(assert (=> d!1176595 (= lt!1391819 e!2461007)))

(declare-fun res!1608330 () Bool)

(assert (=> d!1176595 (=> res!1608330 e!2461007)))

(assert (=> d!1176595 (= res!1608330 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176595 (= (isPrefix!3763 lt!1391645 prefix!494) lt!1391819)))

(declare-fun b!3972602 () Bool)

(assert (=> b!3972602 (= e!2461006 (>= (size!31735 prefix!494) (size!31735 lt!1391645)))))

(declare-fun b!3972601 () Bool)

(assert (=> b!3972601 (= e!2461008 (isPrefix!3763 (tail!6195 lt!1391645) (tail!6195 prefix!494)))))

(assert (= (and d!1176595 (not res!1608330)) b!3972599))

(assert (= (and b!3972599 res!1608333) b!3972600))

(assert (= (and b!3972600 res!1608332) b!3972601))

(assert (= (and d!1176595 (not res!1608331)) b!3972602))

(assert (=> b!3972600 m!4542909))

(assert (=> b!3972600 m!4542929))

(assert (=> b!3972602 m!4542561))

(assert (=> b!3972602 m!4542559))

(assert (=> b!3972601 m!4542913))

(assert (=> b!3972601 m!4542931))

(assert (=> b!3972601 m!4542913))

(assert (=> b!3972601 m!4542931))

(declare-fun m!4543163 () Bool)

(assert (=> b!3972601 m!4543163))

(assert (=> b!3972082 d!1176595))

(declare-fun d!1176597 () Bool)

(assert (=> d!1176597 (isPrefix!3763 lt!1391645 prefix!494)))

(declare-fun lt!1391822 () Unit!61065)

(declare-fun choose!23771 (List!42538 List!42538 List!42538) Unit!61065)

(assert (=> d!1176597 (= lt!1391822 (choose!23771 prefix!494 lt!1391645 lt!1391636))))

(assert (=> d!1176597 (isPrefix!3763 prefix!494 lt!1391636)))

(assert (=> d!1176597 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!341 prefix!494 lt!1391645 lt!1391636) lt!1391822)))

(declare-fun bs!587658 () Bool)

(assert (= bs!587658 d!1176597))

(assert (=> bs!587658 m!4542495))

(declare-fun m!4543165 () Bool)

(assert (=> bs!587658 m!4543165))

(assert (=> bs!587658 m!4542567))

(assert (=> b!3972082 d!1176597))

(declare-fun d!1176599 () Bool)

(declare-fun lt!1391823 () Int)

(assert (=> d!1176599 (>= lt!1391823 0)))

(declare-fun e!2461009 () Int)

(assert (=> d!1176599 (= lt!1391823 e!2461009)))

(declare-fun c!688918 () Bool)

(assert (=> d!1176599 (= c!688918 ((_ is Nil!42414) lt!1391636))))

(assert (=> d!1176599 (= (size!31735 lt!1391636) lt!1391823)))

(declare-fun b!3972603 () Bool)

(assert (=> b!3972603 (= e!2461009 0)))

(declare-fun b!3972604 () Bool)

(assert (=> b!3972604 (= e!2461009 (+ 1 (size!31735 (t!330929 lt!1391636))))))

(assert (= (and d!1176599 c!688918) b!3972603))

(assert (= (and d!1176599 (not c!688918)) b!3972604))

(declare-fun m!4543167 () Bool)

(assert (=> b!3972604 m!4543167))

(assert (=> b!3972103 d!1176599))

(declare-fun b!3972605 () Bool)

(declare-fun e!2461011 () Bool)

(declare-fun e!2461012 () Bool)

(assert (=> b!3972605 (= e!2461011 e!2461012)))

(declare-fun res!1608337 () Bool)

(assert (=> b!3972605 (=> (not res!1608337) (not e!2461012))))

(assert (=> b!3972605 (= res!1608337 (not ((_ is Nil!42414) lt!1391636)))))

(declare-fun b!3972606 () Bool)

(declare-fun res!1608336 () Bool)

(assert (=> b!3972606 (=> (not res!1608336) (not e!2461012))))

(assert (=> b!3972606 (= res!1608336 (= (head!8463 lt!1391636) (head!8463 lt!1391636)))))

(declare-fun d!1176601 () Bool)

(declare-fun e!2461010 () Bool)

(assert (=> d!1176601 e!2461010))

(declare-fun res!1608335 () Bool)

(assert (=> d!1176601 (=> res!1608335 e!2461010)))

(declare-fun lt!1391824 () Bool)

(assert (=> d!1176601 (= res!1608335 (not lt!1391824))))

(assert (=> d!1176601 (= lt!1391824 e!2461011)))

(declare-fun res!1608334 () Bool)

(assert (=> d!1176601 (=> res!1608334 e!2461011)))

(assert (=> d!1176601 (= res!1608334 ((_ is Nil!42414) lt!1391636))))

(assert (=> d!1176601 (= (isPrefix!3763 lt!1391636 lt!1391636) lt!1391824)))

(declare-fun b!3972608 () Bool)

(assert (=> b!3972608 (= e!2461010 (>= (size!31735 lt!1391636) (size!31735 lt!1391636)))))

(declare-fun b!3972607 () Bool)

(assert (=> b!3972607 (= e!2461012 (isPrefix!3763 (tail!6195 lt!1391636) (tail!6195 lt!1391636)))))

(assert (= (and d!1176601 (not res!1608334)) b!3972605))

(assert (= (and b!3972605 res!1608337) b!3972606))

(assert (= (and b!3972606 res!1608336) b!3972607))

(assert (= (and d!1176601 (not res!1608335)) b!3972608))

(assert (=> b!3972606 m!4542911))

(assert (=> b!3972606 m!4542911))

(assert (=> b!3972608 m!4542553))

(assert (=> b!3972608 m!4542553))

(assert (=> b!3972607 m!4542915))

(assert (=> b!3972607 m!4542915))

(assert (=> b!3972607 m!4542915))

(assert (=> b!3972607 m!4542915))

(declare-fun m!4543169 () Bool)

(assert (=> b!3972607 m!4543169))

(assert (=> b!3972103 d!1176601))

(declare-fun d!1176603 () Bool)

(assert (=> d!1176603 (isPrefix!3763 lt!1391636 lt!1391636)))

(declare-fun lt!1391827 () Unit!61065)

(declare-fun choose!23772 (List!42538 List!42538) Unit!61065)

(assert (=> d!1176603 (= lt!1391827 (choose!23772 lt!1391636 lt!1391636))))

(assert (=> d!1176603 (= (lemmaIsPrefixRefl!2355 lt!1391636 lt!1391636) lt!1391827)))

(declare-fun bs!587659 () Bool)

(assert (= bs!587659 d!1176603))

(assert (=> bs!587659 m!4542555))

(declare-fun m!4543171 () Bool)

(assert (=> bs!587659 m!4543171))

(assert (=> b!3972103 d!1176603))

(declare-fun b!3972610 () Bool)

(declare-fun e!2461013 () List!42538)

(assert (=> b!3972610 (= e!2461013 (Cons!42414 (h!47834 lt!1391645) (++!11078 (t!330929 lt!1391645) suffixResult!105)))))

(declare-fun b!3972611 () Bool)

(declare-fun res!1608338 () Bool)

(declare-fun e!2461014 () Bool)

(assert (=> b!3972611 (=> (not res!1608338) (not e!2461014))))

(declare-fun lt!1391828 () List!42538)

(assert (=> b!3972611 (= res!1608338 (= (size!31735 lt!1391828) (+ (size!31735 lt!1391645) (size!31735 suffixResult!105))))))

(declare-fun b!3972609 () Bool)

(assert (=> b!3972609 (= e!2461013 suffixResult!105)))

(declare-fun d!1176605 () Bool)

(assert (=> d!1176605 e!2461014))

(declare-fun res!1608339 () Bool)

(assert (=> d!1176605 (=> (not res!1608339) (not e!2461014))))

(assert (=> d!1176605 (= res!1608339 (= (content!6437 lt!1391828) ((_ map or) (content!6437 lt!1391645) (content!6437 suffixResult!105))))))

(assert (=> d!1176605 (= lt!1391828 e!2461013)))

(declare-fun c!688919 () Bool)

(assert (=> d!1176605 (= c!688919 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176605 (= (++!11078 lt!1391645 suffixResult!105) lt!1391828)))

(declare-fun b!3972612 () Bool)

(assert (=> b!3972612 (= e!2461014 (or (not (= suffixResult!105 Nil!42414)) (= lt!1391828 lt!1391645)))))

(assert (= (and d!1176605 c!688919) b!3972609))

(assert (= (and d!1176605 (not c!688919)) b!3972610))

(assert (= (and d!1176605 res!1608339) b!3972611))

(assert (= (and b!3972611 res!1608338) b!3972612))

(declare-fun m!4543173 () Bool)

(assert (=> b!3972610 m!4543173))

(declare-fun m!4543175 () Bool)

(assert (=> b!3972611 m!4543175))

(assert (=> b!3972611 m!4542559))

(declare-fun m!4543177 () Bool)

(assert (=> b!3972611 m!4543177))

(declare-fun m!4543179 () Bool)

(assert (=> d!1176605 m!4543179))

(assert (=> d!1176605 m!4542969))

(declare-fun m!4543181 () Bool)

(assert (=> d!1176605 m!4543181))

(assert (=> b!3972081 d!1176605))

(declare-fun d!1176607 () Bool)

(declare-fun e!2461017 () Bool)

(assert (=> d!1176607 e!2461017))

(declare-fun res!1608342 () Bool)

(assert (=> d!1176607 (=> (not res!1608342) (not e!2461017))))

(assert (=> d!1176607 (= res!1608342 (semiInverseModEq!2869 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (toValue!9164 (transformation!6676 (rule!9666 token!484)))))))

(declare-fun Unit!61068 () Unit!61065)

(assert (=> d!1176607 (= (lemmaInv!891 (transformation!6676 (rule!9666 token!484))) Unit!61068)))

(declare-fun b!3972615 () Bool)

(assert (=> b!3972615 (= e!2461017 (equivClasses!2768 (toChars!9023 (transformation!6676 (rule!9666 token!484))) (toValue!9164 (transformation!6676 (rule!9666 token!484)))))))

(assert (= (and d!1176607 res!1608342) b!3972615))

(assert (=> d!1176607 m!4542905))

(assert (=> b!3972615 m!4542907))

(assert (=> b!3972081 d!1176607))

(declare-fun d!1176609 () Bool)

(declare-fun res!1608347 () Bool)

(declare-fun e!2461020 () Bool)

(assert (=> d!1176609 (=> (not res!1608347) (not e!2461020))))

(assert (=> d!1176609 (= res!1608347 (validRegex!5262 (regex!6676 (rule!9666 token!484))))))

(assert (=> d!1176609 (= (ruleValid!2608 thiss!21717 (rule!9666 token!484)) e!2461020)))

(declare-fun b!3972620 () Bool)

(declare-fun res!1608348 () Bool)

(assert (=> b!3972620 (=> (not res!1608348) (not e!2461020))))

(assert (=> b!3972620 (= res!1608348 (not (nullable!4062 (regex!6676 (rule!9666 token!484)))))))

(declare-fun b!3972621 () Bool)

(assert (=> b!3972621 (= e!2461020 (not (= (tag!7536 (rule!9666 token!484)) (String!48248 ""))))))

(assert (= (and d!1176609 res!1608347) b!3972620))

(assert (= (and b!3972620 res!1608348) b!3972621))

(assert (=> d!1176609 m!4543057))

(assert (=> b!3972620 m!4543059))

(assert (=> b!3972081 d!1176609))

(declare-fun d!1176611 () Bool)

(assert (=> d!1176611 (ruleValid!2608 thiss!21717 (rule!9666 token!484))))

(declare-fun lt!1391831 () Unit!61065)

(declare-fun choose!23773 (LexerInterface!6265 Rule!13152 List!42540) Unit!61065)

(assert (=> d!1176611 (= lt!1391831 (choose!23773 thiss!21717 (rule!9666 token!484) rules!2999))))

(assert (=> d!1176611 (contains!8451 rules!2999 (rule!9666 token!484))))

(assert (=> d!1176611 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1682 thiss!21717 (rule!9666 token!484) rules!2999) lt!1391831)))

(declare-fun bs!587660 () Bool)

(assert (= bs!587660 d!1176611))

(assert (=> bs!587660 m!4542523))

(declare-fun m!4543183 () Bool)

(assert (=> bs!587660 m!4543183))

(declare-fun m!4543185 () Bool)

(assert (=> bs!587660 m!4543185))

(assert (=> b!3972081 d!1176611))

(declare-fun b!3972623 () Bool)

(declare-fun e!2461021 () List!42538)

(assert (=> b!3972623 (= e!2461021 (Cons!42414 (h!47834 prefix!494) (++!11078 (t!330929 prefix!494) newSuffix!27)))))

(declare-fun b!3972624 () Bool)

(declare-fun res!1608349 () Bool)

(declare-fun e!2461022 () Bool)

(assert (=> b!3972624 (=> (not res!1608349) (not e!2461022))))

(declare-fun lt!1391832 () List!42538)

(assert (=> b!3972624 (= res!1608349 (= (size!31735 lt!1391832) (+ (size!31735 prefix!494) (size!31735 newSuffix!27))))))

(declare-fun b!3972622 () Bool)

(assert (=> b!3972622 (= e!2461021 newSuffix!27)))

(declare-fun d!1176613 () Bool)

(assert (=> d!1176613 e!2461022))

(declare-fun res!1608350 () Bool)

(assert (=> d!1176613 (=> (not res!1608350) (not e!2461022))))

(assert (=> d!1176613 (= res!1608350 (= (content!6437 lt!1391832) ((_ map or) (content!6437 prefix!494) (content!6437 newSuffix!27))))))

(assert (=> d!1176613 (= lt!1391832 e!2461021)))

(declare-fun c!688920 () Bool)

(assert (=> d!1176613 (= c!688920 ((_ is Nil!42414) prefix!494))))

(assert (=> d!1176613 (= (++!11078 prefix!494 newSuffix!27) lt!1391832)))

(declare-fun b!3972625 () Bool)

(assert (=> b!3972625 (= e!2461022 (or (not (= newSuffix!27 Nil!42414)) (= lt!1391832 prefix!494)))))

(assert (= (and d!1176613 c!688920) b!3972622))

(assert (= (and d!1176613 (not c!688920)) b!3972623))

(assert (= (and d!1176613 res!1608350) b!3972624))

(assert (= (and b!3972624 res!1608349) b!3972625))

(declare-fun m!4543187 () Bool)

(assert (=> b!3972623 m!4543187))

(declare-fun m!4543189 () Bool)

(assert (=> b!3972624 m!4543189))

(assert (=> b!3972624 m!4542561))

(assert (=> b!3972624 m!4542509))

(declare-fun m!4543191 () Bool)

(assert (=> d!1176613 m!4543191))

(assert (=> d!1176613 m!4542823))

(declare-fun m!4543193 () Bool)

(assert (=> d!1176613 m!4543193))

(assert (=> b!3972102 d!1176613))

(declare-fun b!3972627 () Bool)

(declare-fun e!2461023 () List!42538)

(assert (=> b!3972627 (= e!2461023 (Cons!42414 (h!47834 lt!1391645) (++!11078 (t!330929 lt!1391645) newSuffixResult!27)))))

(declare-fun b!3972628 () Bool)

(declare-fun res!1608351 () Bool)

(declare-fun e!2461024 () Bool)

(assert (=> b!3972628 (=> (not res!1608351) (not e!2461024))))

(declare-fun lt!1391833 () List!42538)

(assert (=> b!3972628 (= res!1608351 (= (size!31735 lt!1391833) (+ (size!31735 lt!1391645) (size!31735 newSuffixResult!27))))))

(declare-fun b!3972626 () Bool)

(assert (=> b!3972626 (= e!2461023 newSuffixResult!27)))

(declare-fun d!1176615 () Bool)

(assert (=> d!1176615 e!2461024))

(declare-fun res!1608352 () Bool)

(assert (=> d!1176615 (=> (not res!1608352) (not e!2461024))))

(assert (=> d!1176615 (= res!1608352 (= (content!6437 lt!1391833) ((_ map or) (content!6437 lt!1391645) (content!6437 newSuffixResult!27))))))

(assert (=> d!1176615 (= lt!1391833 e!2461023)))

(declare-fun c!688921 () Bool)

(assert (=> d!1176615 (= c!688921 ((_ is Nil!42414) lt!1391645))))

(assert (=> d!1176615 (= (++!11078 lt!1391645 newSuffixResult!27) lt!1391833)))

(declare-fun b!3972629 () Bool)

(assert (=> b!3972629 (= e!2461024 (or (not (= newSuffixResult!27 Nil!42414)) (= lt!1391833 lt!1391645)))))

(assert (= (and d!1176615 c!688921) b!3972626))

(assert (= (and d!1176615 (not c!688921)) b!3972627))

(assert (= (and d!1176615 res!1608352) b!3972628))

(assert (= (and b!3972628 res!1608351) b!3972629))

(declare-fun m!4543195 () Bool)

(assert (=> b!3972627 m!4543195))

(declare-fun m!4543197 () Bool)

(assert (=> b!3972628 m!4543197))

(assert (=> b!3972628 m!4542559))

(declare-fun m!4543199 () Bool)

(assert (=> b!3972628 m!4543199))

(declare-fun m!4543201 () Bool)

(assert (=> d!1176615 m!4543201))

(assert (=> d!1176615 m!4542969))

(declare-fun m!4543203 () Bool)

(assert (=> d!1176615 m!4543203))

(assert (=> b!3972102 d!1176615))

(declare-fun b!3972634 () Bool)

(declare-fun e!2461027 () Bool)

(declare-fun tp!1211263 () Bool)

(assert (=> b!3972634 (= e!2461027 (and tp_is_empty!20133 tp!1211263))))

(assert (=> b!3972106 (= tp!1211206 e!2461027)))

(assert (= (and b!3972106 ((_ is Cons!42414) (t!330929 newSuffixResult!27))) b!3972634))

(declare-fun b!3972635 () Bool)

(declare-fun e!2461028 () Bool)

(declare-fun tp!1211264 () Bool)

(assert (=> b!3972635 (= e!2461028 (and tp_is_empty!20133 tp!1211264))))

(assert (=> b!3972095 (= tp!1211202 e!2461028)))

(assert (= (and b!3972095 ((_ is Cons!42414) (t!330929 prefix!494))) b!3972635))

(declare-fun b!3972648 () Bool)

(declare-fun e!2461031 () Bool)

(declare-fun tp!1211276 () Bool)

(assert (=> b!3972648 (= e!2461031 tp!1211276)))

(declare-fun b!3972649 () Bool)

(declare-fun tp!1211277 () Bool)

(declare-fun tp!1211275 () Bool)

(assert (=> b!3972649 (= e!2461031 (and tp!1211277 tp!1211275))))

(declare-fun b!3972647 () Bool)

(declare-fun tp!1211279 () Bool)

(declare-fun tp!1211278 () Bool)

(assert (=> b!3972647 (= e!2461031 (and tp!1211279 tp!1211278))))

(declare-fun b!3972646 () Bool)

(assert (=> b!3972646 (= e!2461031 tp_is_empty!20133)))

(assert (=> b!3972084 (= tp!1211204 e!2461031)))

(assert (= (and b!3972084 ((_ is ElementMatch!11581) (regex!6676 (h!47836 rules!2999)))) b!3972646))

(assert (= (and b!3972084 ((_ is Concat!18487) (regex!6676 (h!47836 rules!2999)))) b!3972647))

(assert (= (and b!3972084 ((_ is Star!11581) (regex!6676 (h!47836 rules!2999)))) b!3972648))

(assert (= (and b!3972084 ((_ is Union!11581) (regex!6676 (h!47836 rules!2999)))) b!3972649))

(declare-fun b!3972650 () Bool)

(declare-fun e!2461032 () Bool)

(declare-fun tp!1211280 () Bool)

(assert (=> b!3972650 (= e!2461032 (and tp_is_empty!20133 tp!1211280))))

(assert (=> b!3972105 (= tp!1211210 e!2461032)))

(assert (= (and b!3972105 ((_ is Cons!42414) (t!330929 suffixResult!105))) b!3972650))

(declare-fun b!3972651 () Bool)

(declare-fun e!2461033 () Bool)

(declare-fun tp!1211281 () Bool)

(assert (=> b!3972651 (= e!2461033 (and tp_is_empty!20133 tp!1211281))))

(assert (=> b!3972094 (= tp!1211207 e!2461033)))

(assert (= (and b!3972094 ((_ is Cons!42414) (t!330929 suffix!1299))) b!3972651))

(declare-fun b!3972654 () Bool)

(declare-fun e!2461034 () Bool)

(declare-fun tp!1211283 () Bool)

(assert (=> b!3972654 (= e!2461034 tp!1211283)))

(declare-fun b!3972655 () Bool)

(declare-fun tp!1211284 () Bool)

(declare-fun tp!1211282 () Bool)

(assert (=> b!3972655 (= e!2461034 (and tp!1211284 tp!1211282))))

(declare-fun b!3972653 () Bool)

(declare-fun tp!1211286 () Bool)

(declare-fun tp!1211285 () Bool)

(assert (=> b!3972653 (= e!2461034 (and tp!1211286 tp!1211285))))

(declare-fun b!3972652 () Bool)

(assert (=> b!3972652 (= e!2461034 tp_is_empty!20133)))

(assert (=> b!3972098 (= tp!1211214 e!2461034)))

(assert (= (and b!3972098 ((_ is ElementMatch!11581) (regex!6676 (rule!9666 token!484)))) b!3972652))

(assert (= (and b!3972098 ((_ is Concat!18487) (regex!6676 (rule!9666 token!484)))) b!3972653))

(assert (= (and b!3972098 ((_ is Star!11581) (regex!6676 (rule!9666 token!484)))) b!3972654))

(assert (= (and b!3972098 ((_ is Union!11581) (regex!6676 (rule!9666 token!484)))) b!3972655))

(declare-fun b!3972656 () Bool)

(declare-fun e!2461035 () Bool)

(declare-fun tp!1211287 () Bool)

(assert (=> b!3972656 (= e!2461035 (and tp_is_empty!20133 tp!1211287))))

(assert (=> b!3972080 (= tp!1211212 e!2461035)))

(assert (= (and b!3972080 ((_ is Cons!42414) (t!330929 newSuffix!27))) b!3972656))

(declare-fun b!3972657 () Bool)

(declare-fun e!2461036 () Bool)

(declare-fun tp!1211288 () Bool)

(assert (=> b!3972657 (= e!2461036 (and tp_is_empty!20133 tp!1211288))))

(assert (=> b!3972096 (= tp!1211205 e!2461036)))

(assert (= (and b!3972096 ((_ is Cons!42414) (originalCharacters!7276 token!484))) b!3972657))

(declare-fun b!3972668 () Bool)

(declare-fun b_free!110101 () Bool)

(declare-fun b_next!110805 () Bool)

(assert (=> b!3972668 (= b_free!110101 (not b_next!110805))))

(declare-fun tb!239673 () Bool)

(declare-fun t!330953 () Bool)

(assert (=> (and b!3972668 (= (toValue!9164 (transformation!6676 (h!47836 (t!330931 rules!2999)))) (toValue!9164 (transformation!6676 (rule!9666 token!484)))) t!330953) tb!239673))

(declare-fun result!290254 () Bool)

(assert (= result!290254 result!290242))

(assert (=> d!1176583 t!330953))

(declare-fun tp!1211297 () Bool)

(declare-fun b_and!305395 () Bool)

(assert (=> b!3972668 (= tp!1211297 (and (=> t!330953 result!290254) b_and!305395))))

(declare-fun b_free!110103 () Bool)

(declare-fun b_next!110807 () Bool)

(assert (=> b!3972668 (= b_free!110103 (not b_next!110807))))

(declare-fun t!330955 () Bool)

(declare-fun tb!239675 () Bool)

(assert (=> (and b!3972668 (= (toChars!9023 (transformation!6676 (h!47836 (t!330931 rules!2999)))) (toChars!9023 (transformation!6676 (rule!9666 token!484)))) t!330955) tb!239675))

(declare-fun result!290256 () Bool)

(assert (= result!290256 result!290226))

(assert (=> b!3972345 t!330955))

(assert (=> d!1176539 t!330955))

(declare-fun b_and!305397 () Bool)

(declare-fun tp!1211298 () Bool)

(assert (=> b!3972668 (= tp!1211298 (and (=> t!330955 result!290256) b_and!305397))))

(declare-fun e!2461047 () Bool)

(assert (=> b!3972668 (= e!2461047 (and tp!1211297 tp!1211298))))

(declare-fun tp!1211300 () Bool)

(declare-fun e!2461046 () Bool)

(declare-fun b!3972667 () Bool)

(assert (=> b!3972667 (= e!2461046 (and tp!1211300 (inv!56670 (tag!7536 (h!47836 (t!330931 rules!2999)))) (inv!56673 (transformation!6676 (h!47836 (t!330931 rules!2999)))) e!2461047))))

(declare-fun b!3972666 () Bool)

(declare-fun e!2461048 () Bool)

(declare-fun tp!1211299 () Bool)

(assert (=> b!3972666 (= e!2461048 (and e!2461046 tp!1211299))))

(assert (=> b!3972101 (= tp!1211209 e!2461048)))

(assert (= b!3972667 b!3972668))

(assert (= b!3972666 b!3972667))

(assert (= (and b!3972101 ((_ is Cons!42416) (t!330931 rules!2999))) b!3972666))

(declare-fun m!4543205 () Bool)

(assert (=> b!3972667 m!4543205))

(declare-fun m!4543207 () Bool)

(assert (=> b!3972667 m!4543207))

(declare-fun b_lambda!116105 () Bool)

(assert (= b_lambda!116103 (or (and b!3972091 b_free!110089 (= (toValue!9164 (transformation!6676 (h!47836 rules!2999))) (toValue!9164 (transformation!6676 (rule!9666 token!484))))) (and b!3972099 b_free!110093) (and b!3972668 b_free!110101 (= (toValue!9164 (transformation!6676 (h!47836 (t!330931 rules!2999)))) (toValue!9164 (transformation!6676 (rule!9666 token!484))))) b_lambda!116105)))

(declare-fun b_lambda!116107 () Bool)

(assert (= b_lambda!116093 (or (and b!3972091 b_free!110091 (= (toChars!9023 (transformation!6676 (h!47836 rules!2999))) (toChars!9023 (transformation!6676 (rule!9666 token!484))))) (and b!3972099 b_free!110095) (and b!3972668 b_free!110103 (= (toChars!9023 (transformation!6676 (h!47836 (t!330931 rules!2999)))) (toChars!9023 (transformation!6676 (rule!9666 token!484))))) b_lambda!116107)))

(declare-fun b_lambda!116109 () Bool)

(assert (= b_lambda!116091 (or (and b!3972091 b_free!110091 (= (toChars!9023 (transformation!6676 (h!47836 rules!2999))) (toChars!9023 (transformation!6676 (rule!9666 token!484))))) (and b!3972099 b_free!110095) (and b!3972668 b_free!110103 (= (toChars!9023 (transformation!6676 (h!47836 (t!330931 rules!2999)))) (toChars!9023 (transformation!6676 (rule!9666 token!484))))) b_lambda!116109)))

(check-sat (not b!3972587) (not b!3972600) (not b!3972382) (not b_next!110805) (not d!1176579) (not b!3972378) (not b!3972608) (not b!3972399) (not b_lambda!116107) (not b!3972301) (not b!3972606) (not b!3972359) (not d!1176553) (not b!3972412) (not d!1176609) (not b!3972580) (not b!3972383) (not b!3972413) (not d!1176545) (not b!3972524) (not bm!285631) (not b!3972610) (not b!3972649) (not b!3972266) (not b!3972548) (not b!3972655) (not b!3972175) (not d!1176485) (not b!3972648) (not b!3972667) (not b!3972377) (not b!3972400) (not b!3972309) (not b!3972586) (not b!3972604) b_and!305381 (not d!1176573) (not b!3972550) (not b!3972136) (not b!3972527) (not d!1176519) (not b!3972575) (not d!1176449) (not d!1176551) (not b!3972265) (not d!1176581) (not b!3972653) (not b_next!110795) (not b!3972654) (not b!3972261) (not b!3972353) (not b!3972635) (not d!1176531) (not b!3972650) (not b!3972555) (not b!3972582) b_and!305397 (not d!1176539) (not b!3972405) (not b!3972268) (not b!3972574) (not d!1176577) (not b!3972379) (not b!3972534) (not d!1176613) (not d!1176547) (not b!3972588) (not b!3972634) (not b!3972607) (not d!1176593) b_and!305395 (not d!1176523) (not b_next!110797) (not b!3972624) (not b!3972597) (not b!3972647) (not b!3972408) (not b!3972356) (not b!3972666) (not b!3972602) (not b!3972267) (not b!3972174) (not b!3972532) (not b!3972264) (not d!1176585) (not b!3972656) (not b!3972628) (not b!3972576) (not d!1176589) (not bm!285625) (not b!3972577) (not b!3972381) b_and!305393 (not b!3972549) (not b!3972404) (not b!3972346) (not b!3972533) (not b!3972620) (not b!3972176) (not tb!239669) (not b!3972302) (not b!3972260) (not b!3972398) (not b!3972262) (not d!1176549) (not d!1176571) tp_is_empty!20133 (not b!3972578) (not b!3972360) (not d!1176597) (not b!3972387) (not b!3972623) (not b!3972590) (not b!3972345) (not b!3972385) (not b!3972651) (not tb!239661) (not d!1176615) (not b_lambda!116105) (not b!3972311) (not b!3972591) (not b!3972579) (not b_next!110799) (not b!3972409) (not d!1176591) (not b!3972657) (not d!1176537) b_and!305379 (not d!1176421) (not d!1176477) (not d!1176569) b_and!305391 (not b!3972358) (not b!3972611) (not b!3972601) (not d!1176605) (not b!3972627) (not b_next!110807) (not d!1176607) (not d!1176603) (not b!3972615) (not d!1176611) (not b_lambda!116109) (not b_next!110793) (not b!3972537) (not b!3972553))
(check-sat (not b_next!110805) b_and!305381 (not b_next!110795) b_and!305397 b_and!305395 (not b_next!110797) b_and!305393 (not b_next!110799) b_and!305379 b_and!305391 (not b_next!110807) (not b_next!110793))
