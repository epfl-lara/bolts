; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381224 () Bool)

(assert start!381224)

(declare-fun b!4042499 () Bool)

(declare-fun b_free!112553 () Bool)

(declare-fun b_next!113257 () Bool)

(assert (=> b!4042499 (= b_free!112553 (not b_next!113257))))

(declare-fun tp!1227128 () Bool)

(declare-fun b_and!310803 () Bool)

(assert (=> b!4042499 (= tp!1227128 b_and!310803)))

(declare-fun b_free!112555 () Bool)

(declare-fun b_next!113259 () Bool)

(assert (=> b!4042499 (= b_free!112555 (not b_next!113259))))

(declare-fun tp!1227132 () Bool)

(declare-fun b_and!310805 () Bool)

(assert (=> b!4042499 (= tp!1227132 b_and!310805)))

(declare-fun b!4042502 () Bool)

(declare-fun b_free!112557 () Bool)

(declare-fun b_next!113261 () Bool)

(assert (=> b!4042502 (= b_free!112557 (not b_next!113261))))

(declare-fun tp!1227127 () Bool)

(declare-fun b_and!310807 () Bool)

(assert (=> b!4042502 (= tp!1227127 b_and!310807)))

(declare-fun b_free!112559 () Bool)

(declare-fun b_next!113263 () Bool)

(assert (=> b!4042502 (= b_free!112559 (not b_next!113263))))

(declare-fun tp!1227124 () Bool)

(declare-fun b_and!310809 () Bool)

(assert (=> b!4042502 (= tp!1227124 b_and!310809)))

(declare-fun b!4042498 () Bool)

(declare-fun e!2508203 () Bool)

(declare-fun e!2508209 () Bool)

(assert (=> b!4042498 (= e!2508203 e!2508209)))

(declare-fun res!1646437 () Bool)

(assert (=> b!4042498 (=> (not res!1646437) (not e!2508209))))

(declare-fun lt!1438773 () Int)

(declare-fun lt!1438804 () Int)

(assert (=> b!4042498 (= res!1646437 (>= lt!1438773 lt!1438804))))

(declare-datatypes ((C!23844 0))(
  ( (C!23845 (val!14016 Int)) )
))
(declare-datatypes ((List!43373 0))(
  ( (Nil!43249) (Cons!43249 (h!48669 C!23844) (t!335212 List!43373)) )
))
(declare-fun lt!1438798 () List!43373)

(declare-fun size!32333 (List!43373) Int)

(assert (=> b!4042498 (= lt!1438804 (size!32333 lt!1438798))))

(declare-fun prefix!494 () List!43373)

(assert (=> b!4042498 (= lt!1438773 (size!32333 prefix!494))))

(declare-datatypes ((IArray!26275 0))(
  ( (IArray!26276 (innerList!13195 List!43373)) )
))
(declare-datatypes ((Conc!13135 0))(
  ( (Node!13135 (left!32575 Conc!13135) (right!32905 Conc!13135) (csize!26500 Int) (cheight!13346 Int)) (Leaf!20304 (xs!16441 IArray!26275) (csize!26501 Int)) (Empty!13135) )
))
(declare-datatypes ((BalanceConc!25864 0))(
  ( (BalanceConc!25865 (c!698370 Conc!13135)) )
))
(declare-datatypes ((List!43374 0))(
  ( (Nil!43250) (Cons!43250 (h!48670 (_ BitVec 16)) (t!335213 List!43374)) )
))
(declare-datatypes ((TokenValue!7154 0))(
  ( (FloatLiteralValue!14308 (text!50523 List!43374)) (TokenValueExt!7153 (__x!26525 Int)) (Broken!35770 (value!217942 List!43374)) (Object!7277) (End!7154) (Def!7154) (Underscore!7154) (Match!7154) (Else!7154) (Error!7154) (Case!7154) (If!7154) (Extends!7154) (Abstract!7154) (Class!7154) (Val!7154) (DelimiterValue!14308 (del!7214 List!43374)) (KeywordValue!7160 (value!217943 List!43374)) (CommentValue!14308 (value!217944 List!43374)) (WhitespaceValue!14308 (value!217945 List!43374)) (IndentationValue!7154 (value!217946 List!43374)) (String!49487) (Int32!7154) (Broken!35771 (value!217947 List!43374)) (Boolean!7155) (Unit!62476) (OperatorValue!7157 (op!7214 List!43374)) (IdentifierValue!14308 (value!217948 List!43374)) (IdentifierValue!14309 (value!217949 List!43374)) (WhitespaceValue!14309 (value!217950 List!43374)) (True!14308) (False!14308) (Broken!35772 (value!217951 List!43374)) (Broken!35773 (value!217952 List!43374)) (True!14309) (RightBrace!7154) (RightBracket!7154) (Colon!7154) (Null!7154) (Comma!7154) (LeftBracket!7154) (False!14309) (LeftBrace!7154) (ImaginaryLiteralValue!7154 (text!50524 List!43374)) (StringLiteralValue!21462 (value!217953 List!43374)) (EOFValue!7154 (value!217954 List!43374)) (IdentValue!7154 (value!217955 List!43374)) (DelimiterValue!14309 (value!217956 List!43374)) (DedentValue!7154 (value!217957 List!43374)) (NewLineValue!7154 (value!217958 List!43374)) (IntegerValue!21462 (value!217959 (_ BitVec 32)) (text!50525 List!43374)) (IntegerValue!21463 (value!217960 Int) (text!50526 List!43374)) (Times!7154) (Or!7154) (Equal!7154) (Minus!7154) (Broken!35774 (value!217961 List!43374)) (And!7154) (Div!7154) (LessEqual!7154) (Mod!7154) (Concat!18983) (Not!7154) (Plus!7154) (SpaceValue!7154 (value!217962 List!43374)) (IntegerValue!21464 (value!217963 Int) (text!50527 List!43374)) (StringLiteralValue!21463 (text!50528 List!43374)) (FloatLiteralValue!14309 (text!50529 List!43374)) (BytesLiteralValue!7154 (value!217964 List!43374)) (CommentValue!14309 (value!217965 List!43374)) (StringLiteralValue!21464 (value!217966 List!43374)) (ErrorTokenValue!7154 (msg!7215 List!43374)) )
))
(declare-datatypes ((Regex!11829 0))(
  ( (ElementMatch!11829 (c!698371 C!23844)) (Concat!18984 (regOne!24170 Regex!11829) (regTwo!24170 Regex!11829)) (EmptyExpr!11829) (Star!11829 (reg!12158 Regex!11829)) (EmptyLang!11829) (Union!11829 (regOne!24171 Regex!11829) (regTwo!24171 Regex!11829)) )
))
(declare-datatypes ((String!49488 0))(
  ( (String!49489 (value!217967 String)) )
))
(declare-datatypes ((TokenValueInjection!13736 0))(
  ( (TokenValueInjection!13737 (toValue!9468 Int) (toChars!9327 Int)) )
))
(declare-datatypes ((Rule!13648 0))(
  ( (Rule!13649 (regex!6924 Regex!11829) (tag!7784 String!49488) (isSeparator!6924 Bool) (transformation!6924 TokenValueInjection!13736)) )
))
(declare-datatypes ((Token!12986 0))(
  ( (Token!12987 (value!217968 TokenValue!7154) (rule!9998 Rule!13648) (size!32334 Int) (originalCharacters!7524 List!43373)) )
))
(declare-fun token!484 () Token!12986)

(declare-fun list!16106 (BalanceConc!25864) List!43373)

(declare-fun charsOf!4740 (Token!12986) BalanceConc!25864)

(assert (=> b!4042498 (= lt!1438798 (list!16106 (charsOf!4740 token!484)))))

(declare-fun e!2508197 () Bool)

(assert (=> b!4042499 (= e!2508197 (and tp!1227128 tp!1227132))))

(declare-fun b!4042500 () Bool)

(declare-fun e!2508223 () Bool)

(declare-fun tp_is_empty!20629 () Bool)

(declare-fun tp!1227133 () Bool)

(assert (=> b!4042500 (= e!2508223 (and tp_is_empty!20629 tp!1227133))))

(declare-fun e!2508214 () Bool)

(declare-fun e!2508222 () Bool)

(declare-fun tp!1227129 () Bool)

(declare-fun b!4042501 () Bool)

(declare-fun inv!21 (TokenValue!7154) Bool)

(assert (=> b!4042501 (= e!2508222 (and (inv!21 (value!217968 token!484)) e!2508214 tp!1227129))))

(declare-fun e!2508225 () Bool)

(assert (=> b!4042502 (= e!2508225 (and tp!1227127 tp!1227124))))

(declare-fun b!4042503 () Bool)

(declare-fun e!2508200 () Bool)

(declare-fun e!2508211 () Bool)

(assert (=> b!4042503 (= e!2508200 e!2508211)))

(declare-fun res!1646436 () Bool)

(assert (=> b!4042503 (=> (not res!1646436) (not e!2508211))))

(declare-datatypes ((LexerInterface!6513 0))(
  ( (LexerInterfaceExt!6510 (__x!26526 Int)) (Lexer!6511) )
))
(declare-fun thiss!21717 () LexerInterface!6513)

(declare-datatypes ((List!43375 0))(
  ( (Nil!43251) (Cons!43251 (h!48671 Rule!13648) (t!335214 List!43375)) )
))
(declare-fun rules!2999 () List!43375)

(declare-fun lt!1438775 () List!43373)

(declare-datatypes ((tuple2!42330 0))(
  ( (tuple2!42331 (_1!24299 Token!12986) (_2!24299 List!43373)) )
))
(declare-datatypes ((Option!9338 0))(
  ( (None!9337) (Some!9337 (v!39739 tuple2!42330)) )
))
(declare-fun lt!1438782 () Option!9338)

(declare-fun maxPrefix!3811 (LexerInterface!6513 List!43375 List!43373) Option!9338)

(assert (=> b!4042503 (= res!1646436 (= (maxPrefix!3811 thiss!21717 rules!2999 lt!1438775) lt!1438782))))

(declare-fun lt!1438790 () tuple2!42330)

(assert (=> b!4042503 (= lt!1438782 (Some!9337 lt!1438790))))

(declare-fun suffixResult!105 () List!43373)

(assert (=> b!4042503 (= lt!1438790 (tuple2!42331 token!484 suffixResult!105))))

(declare-fun suffix!1299 () List!43373)

(declare-fun ++!11326 (List!43373 List!43373) List!43373)

(assert (=> b!4042503 (= lt!1438775 (++!11326 prefix!494 suffix!1299))))

(declare-fun b!4042504 () Bool)

(declare-fun res!1646443 () Bool)

(assert (=> b!4042504 (=> (not res!1646443) (not e!2508203))))

(declare-fun newSuffix!27 () List!43373)

(declare-fun isPrefix!4011 (List!43373 List!43373) Bool)

(assert (=> b!4042504 (= res!1646443 (isPrefix!4011 newSuffix!27 suffix!1299))))

(declare-fun b!4042505 () Bool)

(declare-fun e!2508205 () Bool)

(declare-fun tp!1227125 () Bool)

(assert (=> b!4042505 (= e!2508205 (and tp_is_empty!20629 tp!1227125))))

(declare-fun res!1646446 () Bool)

(assert (=> start!381224 (=> (not res!1646446) (not e!2508203))))

(get-info :version)

(assert (=> start!381224 (= res!1646446 ((_ is Lexer!6511) thiss!21717))))

(assert (=> start!381224 e!2508203))

(assert (=> start!381224 e!2508223))

(declare-fun inv!57805 (Token!12986) Bool)

(assert (=> start!381224 (and (inv!57805 token!484) e!2508222)))

(declare-fun e!2508201 () Bool)

(assert (=> start!381224 e!2508201))

(declare-fun e!2508215 () Bool)

(assert (=> start!381224 e!2508215))

(declare-fun e!2508202 () Bool)

(assert (=> start!381224 e!2508202))

(assert (=> start!381224 true))

(declare-fun e!2508207 () Bool)

(assert (=> start!381224 e!2508207))

(assert (=> start!381224 e!2508205))

(declare-fun b!4042506 () Bool)

(declare-fun e!2508204 () Bool)

(declare-fun e!2508208 () Bool)

(assert (=> b!4042506 (= e!2508204 e!2508208)))

(declare-fun res!1646431 () Bool)

(assert (=> b!4042506 (=> res!1646431 e!2508208)))

(declare-fun matchR!5782 (Regex!11829 List!43373) Bool)

(assert (=> b!4042506 (= res!1646431 (not (matchR!5782 (regex!6924 (rule!9998 token!484)) lt!1438798)))))

(declare-fun lt!1438785 () List!43373)

(assert (=> b!4042506 (isPrefix!4011 lt!1438798 lt!1438785)))

(declare-datatypes ((Unit!62477 0))(
  ( (Unit!62478) )
))
(declare-fun lt!1438766 () Unit!62477)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!804 (List!43373 List!43373 List!43373) Unit!62477)

(assert (=> b!4042506 (= lt!1438766 (lemmaPrefixStaysPrefixWhenAddingToSuffix!804 lt!1438798 prefix!494 newSuffix!27))))

(declare-fun lt!1438764 () Unit!62477)

(assert (=> b!4042506 (= lt!1438764 (lemmaPrefixStaysPrefixWhenAddingToSuffix!804 lt!1438798 prefix!494 suffix!1299))))

(declare-fun b!4042507 () Bool)

(declare-fun e!2508219 () Bool)

(declare-fun e!2508198 () Bool)

(assert (=> b!4042507 (= e!2508219 e!2508198)))

(declare-fun res!1646428 () Bool)

(assert (=> b!4042507 (=> res!1646428 e!2508198)))

(declare-fun lt!1438808 () List!43373)

(assert (=> b!4042507 (= res!1646428 (not (= lt!1438808 lt!1438775)))))

(declare-fun lt!1438791 () List!43373)

(assert (=> b!4042507 (= lt!1438808 (++!11326 prefix!494 lt!1438791))))

(declare-fun lt!1438799 () List!43373)

(assert (=> b!4042507 (= lt!1438808 (++!11326 lt!1438785 lt!1438799))))

(declare-fun lt!1438806 () Unit!62477)

(declare-fun lemmaConcatAssociativity!2628 (List!43373 List!43373 List!43373) Unit!62477)

(assert (=> b!4042507 (= lt!1438806 (lemmaConcatAssociativity!2628 prefix!494 newSuffix!27 lt!1438799))))

(declare-fun b!4042508 () Bool)

(declare-fun e!2508217 () Bool)

(declare-fun e!2508213 () Bool)

(assert (=> b!4042508 (= e!2508217 e!2508213)))

(declare-fun res!1646447 () Bool)

(assert (=> b!4042508 (=> res!1646447 e!2508213)))

(declare-fun lt!1438787 () List!43373)

(assert (=> b!4042508 (= res!1646447 (not (= lt!1438787 prefix!494)))))

(declare-fun lt!1438769 () List!43373)

(assert (=> b!4042508 (= lt!1438787 (++!11326 lt!1438798 lt!1438769))))

(declare-fun getSuffix!2428 (List!43373 List!43373) List!43373)

(assert (=> b!4042508 (= lt!1438769 (getSuffix!2428 prefix!494 lt!1438798))))

(assert (=> b!4042508 (isPrefix!4011 lt!1438798 prefix!494)))

(declare-fun lt!1438800 () Unit!62477)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!575 (List!43373 List!43373 List!43373) Unit!62477)

(assert (=> b!4042508 (= lt!1438800 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!575 prefix!494 lt!1438798 lt!1438775))))

(declare-fun b!4042509 () Bool)

(declare-fun res!1646432 () Bool)

(assert (=> b!4042509 (=> (not res!1646432) (not e!2508203))))

(declare-fun rulesInvariant!5856 (LexerInterface!6513 List!43375) Bool)

(assert (=> b!4042509 (= res!1646432 (rulesInvariant!5856 thiss!21717 rules!2999))))

(declare-fun b!4042510 () Bool)

(declare-fun res!1646438 () Bool)

(declare-fun e!2508224 () Bool)

(assert (=> b!4042510 (=> (not res!1646438) (not e!2508224))))

(declare-fun lt!1438797 () TokenValue!7154)

(assert (=> b!4042510 (= res!1646438 (= (value!217968 token!484) lt!1438797))))

(declare-fun b!4042511 () Bool)

(assert (=> b!4042511 (= e!2508209 e!2508200)))

(declare-fun res!1646442 () Bool)

(assert (=> b!4042511 (=> (not res!1646442) (not e!2508200))))

(declare-fun lt!1438795 () List!43373)

(assert (=> b!4042511 (= res!1646442 (= lt!1438795 lt!1438785))))

(assert (=> b!4042511 (= lt!1438785 (++!11326 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43373)

(assert (=> b!4042511 (= lt!1438795 (++!11326 lt!1438798 newSuffixResult!27))))

(declare-fun b!4042512 () Bool)

(declare-fun e!2508212 () Bool)

(assert (=> b!4042512 (= e!2508212 e!2508219)))

(declare-fun res!1646427 () Bool)

(assert (=> b!4042512 (=> res!1646427 e!2508219)))

(assert (=> b!4042512 (= res!1646427 (not (= lt!1438791 suffix!1299)))))

(assert (=> b!4042512 (= lt!1438791 (++!11326 newSuffix!27 lt!1438799))))

(assert (=> b!4042512 (= lt!1438799 (getSuffix!2428 suffix!1299 newSuffix!27))))

(declare-fun b!4042513 () Bool)

(declare-fun e!2508216 () Bool)

(assert (=> b!4042513 (= e!2508216 e!2508212)))

(declare-fun res!1646434 () Bool)

(assert (=> b!4042513 (=> res!1646434 e!2508212)))

(declare-fun lt!1438803 () Option!9338)

(declare-fun lt!1438779 () Option!9338)

(assert (=> b!4042513 (= res!1646434 (not (= lt!1438803 (Some!9337 (v!39739 lt!1438779)))))))

(declare-fun lt!1438792 () List!43373)

(assert (=> b!4042513 (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 newSuffixResult!27))))

(declare-fun lt!1438809 () Unit!62477)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2846 (List!43373 List!43373) Unit!62477)

(assert (=> b!4042513 (= lt!1438809 (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438792 newSuffixResult!27))))

(assert (=> b!4042513 (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))

(declare-fun lt!1438771 () Unit!62477)

(assert (=> b!4042513 (= lt!1438771 (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))

(declare-fun lt!1438784 () TokenValue!7154)

(declare-fun lt!1438768 () Int)

(assert (=> b!4042513 (= lt!1438803 (Some!9337 (tuple2!42331 (Token!12987 lt!1438784 (rule!9998 (_1!24299 (v!39739 lt!1438779))) lt!1438768 lt!1438792) (_2!24299 (v!39739 lt!1438779)))))))

(declare-fun maxPrefixOneRule!2823 (LexerInterface!6513 Rule!13648 List!43373) Option!9338)

(assert (=> b!4042513 (= lt!1438803 (maxPrefixOneRule!2823 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) lt!1438785))))

(assert (=> b!4042513 (= lt!1438768 (size!32333 lt!1438792))))

(declare-fun apply!10113 (TokenValueInjection!13736 BalanceConc!25864) TokenValue!7154)

(declare-fun seqFromList!5141 (List!43373) BalanceConc!25864)

(assert (=> b!4042513 (= lt!1438784 (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 lt!1438792)))))

(declare-fun lt!1438772 () Unit!62477)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1629 (LexerInterface!6513 List!43375 List!43373 List!43373 List!43373 Rule!13648) Unit!62477)

(assert (=> b!4042513 (= lt!1438772 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1629 thiss!21717 rules!2999 lt!1438792 lt!1438785 (_2!24299 (v!39739 lt!1438779)) (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> b!4042513 (= lt!1438792 (list!16106 (charsOf!4740 (_1!24299 (v!39739 lt!1438779)))))))

(declare-fun lt!1438780 () Unit!62477)

(declare-fun lemmaInv!1133 (TokenValueInjection!13736) Unit!62477)

(assert (=> b!4042513 (= lt!1438780 (lemmaInv!1133 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun ruleValid!2854 (LexerInterface!6513 Rule!13648) Bool)

(assert (=> b!4042513 (ruleValid!2854 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))

(declare-fun lt!1438801 () Unit!62477)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1924 (LexerInterface!6513 Rule!13648 List!43375) Unit!62477)

(assert (=> b!4042513 (= lt!1438801 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1924 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) rules!2999))))

(declare-fun lt!1438786 () Unit!62477)

(declare-fun lemmaCharactersSize!1443 (Token!12986) Unit!62477)

(assert (=> b!4042513 (= lt!1438786 (lemmaCharactersSize!1443 token!484))))

(declare-fun lt!1438776 () Unit!62477)

(assert (=> b!4042513 (= lt!1438776 (lemmaCharactersSize!1443 (_1!24299 (v!39739 lt!1438779))))))

(declare-fun b!4042514 () Bool)

(declare-fun tp!1227130 () Bool)

(assert (=> b!4042514 (= e!2508215 (and tp_is_empty!20629 tp!1227130))))

(declare-fun b!4042515 () Bool)

(declare-fun res!1646430 () Bool)

(assert (=> b!4042515 (=> (not res!1646430) (not e!2508224))))

(assert (=> b!4042515 (= res!1646430 (= (size!32334 token!484) (size!32333 (originalCharacters!7524 token!484))))))

(declare-fun b!4042516 () Bool)

(declare-fun e!2508221 () Bool)

(assert (=> b!4042516 (= e!2508208 e!2508221)))

(declare-fun res!1646433 () Bool)

(assert (=> b!4042516 (=> res!1646433 e!2508221)))

(declare-fun lt!1438794 () List!43373)

(assert (=> b!4042516 (= res!1646433 (not (= lt!1438794 lt!1438775)))))

(declare-fun lt!1438762 () List!43373)

(assert (=> b!4042516 (= lt!1438794 (++!11326 lt!1438798 lt!1438762))))

(assert (=> b!4042516 (= lt!1438762 (getSuffix!2428 lt!1438775 lt!1438798))))

(assert (=> b!4042516 e!2508224))

(declare-fun res!1646439 () Bool)

(assert (=> b!4042516 (=> (not res!1646439) (not e!2508224))))

(assert (=> b!4042516 (= res!1646439 (isPrefix!4011 lt!1438775 lt!1438775))))

(declare-fun lt!1438789 () Unit!62477)

(declare-fun lemmaIsPrefixRefl!2578 (List!43373 List!43373) Unit!62477)

(assert (=> b!4042516 (= lt!1438789 (lemmaIsPrefixRefl!2578 lt!1438775 lt!1438775))))

(declare-fun b!4042517 () Bool)

(declare-fun e!2508206 () Bool)

(assert (=> b!4042517 (= e!2508206 e!2508204)))

(declare-fun res!1646444 () Bool)

(assert (=> b!4042517 (=> res!1646444 e!2508204)))

(declare-fun lt!1438807 () Option!9338)

(assert (=> b!4042517 (= res!1646444 (not (= lt!1438807 lt!1438782)))))

(declare-fun lt!1438781 () Token!12986)

(assert (=> b!4042517 (= lt!1438807 (Some!9337 (tuple2!42331 lt!1438781 suffixResult!105)))))

(assert (=> b!4042517 (= lt!1438807 (maxPrefixOneRule!2823 thiss!21717 (rule!9998 token!484) lt!1438775))))

(assert (=> b!4042517 (= lt!1438781 (Token!12987 lt!1438797 (rule!9998 token!484) lt!1438804 lt!1438798))))

(assert (=> b!4042517 (= lt!1438797 (apply!10113 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 lt!1438798)))))

(declare-fun lt!1438783 () Unit!62477)

(assert (=> b!4042517 (= lt!1438783 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1629 thiss!21717 rules!2999 lt!1438798 lt!1438775 suffixResult!105 (rule!9998 token!484)))))

(declare-fun lt!1438778 () List!43373)

(assert (=> b!4042517 (= lt!1438778 suffixResult!105)))

(declare-fun lt!1438796 () Unit!62477)

(declare-fun lemmaSamePrefixThenSameSuffix!2172 (List!43373 List!43373 List!43373 List!43373 List!43373) Unit!62477)

(assert (=> b!4042517 (= lt!1438796 (lemmaSamePrefixThenSameSuffix!2172 lt!1438798 lt!1438778 lt!1438798 suffixResult!105 lt!1438775))))

(declare-fun lt!1438774 () List!43373)

(assert (=> b!4042517 (isPrefix!4011 lt!1438798 lt!1438774)))

(declare-fun lt!1438802 () Unit!62477)

(assert (=> b!4042517 (= lt!1438802 (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438798 lt!1438778))))

(declare-fun e!2508220 () Bool)

(declare-fun tp!1227122 () Bool)

(declare-fun b!4042518 () Bool)

(declare-fun inv!57802 (String!49488) Bool)

(declare-fun inv!57806 (TokenValueInjection!13736) Bool)

(assert (=> b!4042518 (= e!2508220 (and tp!1227122 (inv!57802 (tag!7784 (h!48671 rules!2999))) (inv!57806 (transformation!6924 (h!48671 rules!2999))) e!2508197))))

(declare-fun b!4042519 () Bool)

(assert (=> b!4042519 (= e!2508221 e!2508216)))

(declare-fun res!1646441 () Bool)

(assert (=> b!4042519 (=> res!1646441 e!2508216)))

(assert (=> b!4042519 (= res!1646441 (not ((_ is Some!9337) lt!1438779)))))

(assert (=> b!4042519 (= lt!1438779 (maxPrefix!3811 thiss!21717 rules!2999 lt!1438785))))

(assert (=> b!4042519 (and (= suffixResult!105 lt!1438762) (= lt!1438790 (tuple2!42331 lt!1438781 lt!1438762)))))

(declare-fun lt!1438770 () Unit!62477)

(assert (=> b!4042519 (= lt!1438770 (lemmaSamePrefixThenSameSuffix!2172 lt!1438798 suffixResult!105 lt!1438798 lt!1438762 lt!1438775))))

(assert (=> b!4042519 (isPrefix!4011 lt!1438798 lt!1438794)))

(declare-fun lt!1438788 () Unit!62477)

(assert (=> b!4042519 (= lt!1438788 (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438798 lt!1438762))))

(declare-fun b!4042520 () Bool)

(declare-fun e!2508199 () Bool)

(assert (=> b!4042520 (= e!2508211 (not e!2508199))))

(declare-fun res!1646445 () Bool)

(assert (=> b!4042520 (=> res!1646445 e!2508199)))

(declare-fun lt!1438767 () List!43373)

(assert (=> b!4042520 (= res!1646445 (not (= lt!1438767 lt!1438775)))))

(assert (=> b!4042520 (= lt!1438767 (++!11326 lt!1438798 suffixResult!105))))

(declare-fun lt!1438763 () Unit!62477)

(assert (=> b!4042520 (= lt!1438763 (lemmaInv!1133 (transformation!6924 (rule!9998 token!484))))))

(assert (=> b!4042520 (ruleValid!2854 thiss!21717 (rule!9998 token!484))))

(declare-fun lt!1438793 () Unit!62477)

(assert (=> b!4042520 (= lt!1438793 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1924 thiss!21717 (rule!9998 token!484) rules!2999))))

(declare-fun b!4042521 () Bool)

(assert (=> b!4042521 (= e!2508198 (isPrefix!4011 lt!1438792 lt!1438785))))

(declare-fun b!4042522 () Bool)

(declare-fun tp!1227123 () Bool)

(assert (=> b!4042522 (= e!2508201 (and tp_is_empty!20629 tp!1227123))))

(declare-fun b!4042523 () Bool)

(declare-fun res!1646429 () Bool)

(assert (=> b!4042523 (=> (not res!1646429) (not e!2508203))))

(assert (=> b!4042523 (= res!1646429 (>= (size!32333 suffix!1299) (size!32333 newSuffix!27)))))

(declare-fun b!4042524 () Bool)

(assert (=> b!4042524 (= e!2508213 e!2508206)))

(declare-fun res!1646426 () Bool)

(assert (=> b!4042524 (=> res!1646426 e!2508206)))

(declare-fun lt!1438761 () List!43373)

(assert (=> b!4042524 (= res!1646426 (or (not (= lt!1438775 lt!1438761)) (not (= lt!1438775 lt!1438774))))))

(assert (=> b!4042524 (= lt!1438761 lt!1438774)))

(assert (=> b!4042524 (= lt!1438774 (++!11326 lt!1438798 lt!1438778))))

(assert (=> b!4042524 (= lt!1438761 (++!11326 lt!1438787 suffix!1299))))

(assert (=> b!4042524 (= lt!1438778 (++!11326 lt!1438769 suffix!1299))))

(declare-fun lt!1438765 () Unit!62477)

(assert (=> b!4042524 (= lt!1438765 (lemmaConcatAssociativity!2628 lt!1438798 lt!1438769 suffix!1299))))

(declare-fun b!4042525 () Bool)

(assert (=> b!4042525 (= e!2508199 e!2508217)))

(declare-fun res!1646435 () Bool)

(assert (=> b!4042525 (=> res!1646435 e!2508217)))

(assert (=> b!4042525 (= res!1646435 (not (isPrefix!4011 lt!1438798 lt!1438775)))))

(assert (=> b!4042525 (isPrefix!4011 prefix!494 lt!1438775)))

(declare-fun lt!1438777 () Unit!62477)

(assert (=> b!4042525 (= lt!1438777 (lemmaConcatTwoListThenFirstIsPrefix!2846 prefix!494 suffix!1299))))

(assert (=> b!4042525 (isPrefix!4011 lt!1438798 lt!1438767)))

(declare-fun lt!1438805 () Unit!62477)

(assert (=> b!4042525 (= lt!1438805 (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438798 suffixResult!105))))

(declare-fun b!4042526 () Bool)

(declare-fun tp!1227131 () Bool)

(assert (=> b!4042526 (= e!2508207 (and e!2508220 tp!1227131))))

(declare-fun b!4042527 () Bool)

(declare-fun tp!1227134 () Bool)

(assert (=> b!4042527 (= e!2508202 (and tp_is_empty!20629 tp!1227134))))

(declare-fun b!4042528 () Bool)

(assert (=> b!4042528 (= e!2508224 (and (= (size!32334 token!484) lt!1438804) (= (originalCharacters!7524 token!484) lt!1438798)))))

(declare-fun b!4042529 () Bool)

(declare-fun tp!1227126 () Bool)

(assert (=> b!4042529 (= e!2508214 (and tp!1227126 (inv!57802 (tag!7784 (rule!9998 token!484))) (inv!57806 (transformation!6924 (rule!9998 token!484))) e!2508225))))

(declare-fun b!4042530 () Bool)

(declare-fun res!1646440 () Bool)

(assert (=> b!4042530 (=> (not res!1646440) (not e!2508203))))

(declare-fun isEmpty!25813 (List!43375) Bool)

(assert (=> b!4042530 (= res!1646440 (not (isEmpty!25813 rules!2999)))))

(assert (= (and start!381224 res!1646446) b!4042530))

(assert (= (and b!4042530 res!1646440) b!4042509))

(assert (= (and b!4042509 res!1646432) b!4042523))

(assert (= (and b!4042523 res!1646429) b!4042504))

(assert (= (and b!4042504 res!1646443) b!4042498))

(assert (= (and b!4042498 res!1646437) b!4042511))

(assert (= (and b!4042511 res!1646442) b!4042503))

(assert (= (and b!4042503 res!1646436) b!4042520))

(assert (= (and b!4042520 (not res!1646445)) b!4042525))

(assert (= (and b!4042525 (not res!1646435)) b!4042508))

(assert (= (and b!4042508 (not res!1646447)) b!4042524))

(assert (= (and b!4042524 (not res!1646426)) b!4042517))

(assert (= (and b!4042517 (not res!1646444)) b!4042506))

(assert (= (and b!4042506 (not res!1646431)) b!4042516))

(assert (= (and b!4042516 res!1646439) b!4042510))

(assert (= (and b!4042510 res!1646438) b!4042515))

(assert (= (and b!4042515 res!1646430) b!4042528))

(assert (= (and b!4042516 (not res!1646433)) b!4042519))

(assert (= (and b!4042519 (not res!1646441)) b!4042513))

(assert (= (and b!4042513 (not res!1646434)) b!4042512))

(assert (= (and b!4042512 (not res!1646427)) b!4042507))

(assert (= (and b!4042507 (not res!1646428)) b!4042521))

(assert (= (and start!381224 ((_ is Cons!43249) prefix!494)) b!4042500))

(assert (= b!4042529 b!4042502))

(assert (= b!4042501 b!4042529))

(assert (= start!381224 b!4042501))

(assert (= (and start!381224 ((_ is Cons!43249) suffixResult!105)) b!4042522))

(assert (= (and start!381224 ((_ is Cons!43249) suffix!1299)) b!4042514))

(assert (= (and start!381224 ((_ is Cons!43249) newSuffix!27)) b!4042527))

(assert (= b!4042518 b!4042499))

(assert (= b!4042526 b!4042518))

(assert (= (and start!381224 ((_ is Cons!43251) rules!2999)) b!4042526))

(assert (= (and start!381224 ((_ is Cons!43249) newSuffixResult!27)) b!4042505))

(declare-fun m!4639185 () Bool)

(assert (=> b!4042520 m!4639185))

(declare-fun m!4639187 () Bool)

(assert (=> b!4042520 m!4639187))

(declare-fun m!4639189 () Bool)

(assert (=> b!4042520 m!4639189))

(declare-fun m!4639191 () Bool)

(assert (=> b!4042520 m!4639191))

(declare-fun m!4639193 () Bool)

(assert (=> b!4042530 m!4639193))

(declare-fun m!4639195 () Bool)

(assert (=> b!4042501 m!4639195))

(declare-fun m!4639197 () Bool)

(assert (=> b!4042507 m!4639197))

(declare-fun m!4639199 () Bool)

(assert (=> b!4042507 m!4639199))

(declare-fun m!4639201 () Bool)

(assert (=> b!4042507 m!4639201))

(declare-fun m!4639203 () Bool)

(assert (=> b!4042498 m!4639203))

(declare-fun m!4639205 () Bool)

(assert (=> b!4042498 m!4639205))

(declare-fun m!4639207 () Bool)

(assert (=> b!4042498 m!4639207))

(assert (=> b!4042498 m!4639207))

(declare-fun m!4639209 () Bool)

(assert (=> b!4042498 m!4639209))

(declare-fun m!4639211 () Bool)

(assert (=> b!4042521 m!4639211))

(declare-fun m!4639213 () Bool)

(assert (=> b!4042509 m!4639213))

(declare-fun m!4639215 () Bool)

(assert (=> b!4042517 m!4639215))

(declare-fun m!4639217 () Bool)

(assert (=> b!4042517 m!4639217))

(declare-fun m!4639219 () Bool)

(assert (=> b!4042517 m!4639219))

(declare-fun m!4639221 () Bool)

(assert (=> b!4042517 m!4639221))

(declare-fun m!4639223 () Bool)

(assert (=> b!4042517 m!4639223))

(declare-fun m!4639225 () Bool)

(assert (=> b!4042517 m!4639225))

(assert (=> b!4042517 m!4639217))

(declare-fun m!4639227 () Bool)

(assert (=> b!4042517 m!4639227))

(declare-fun m!4639229 () Bool)

(assert (=> b!4042512 m!4639229))

(declare-fun m!4639231 () Bool)

(assert (=> b!4042512 m!4639231))

(declare-fun m!4639233 () Bool)

(assert (=> b!4042518 m!4639233))

(declare-fun m!4639235 () Bool)

(assert (=> b!4042518 m!4639235))

(declare-fun m!4639237 () Bool)

(assert (=> b!4042529 m!4639237))

(declare-fun m!4639239 () Bool)

(assert (=> b!4042529 m!4639239))

(declare-fun m!4639241 () Bool)

(assert (=> b!4042523 m!4639241))

(declare-fun m!4639243 () Bool)

(assert (=> b!4042523 m!4639243))

(declare-fun m!4639245 () Bool)

(assert (=> b!4042525 m!4639245))

(declare-fun m!4639247 () Bool)

(assert (=> b!4042525 m!4639247))

(declare-fun m!4639249 () Bool)

(assert (=> b!4042525 m!4639249))

(declare-fun m!4639251 () Bool)

(assert (=> b!4042525 m!4639251))

(declare-fun m!4639253 () Bool)

(assert (=> b!4042525 m!4639253))

(declare-fun m!4639255 () Bool)

(assert (=> b!4042516 m!4639255))

(declare-fun m!4639257 () Bool)

(assert (=> b!4042516 m!4639257))

(declare-fun m!4639259 () Bool)

(assert (=> b!4042516 m!4639259))

(declare-fun m!4639261 () Bool)

(assert (=> b!4042516 m!4639261))

(declare-fun m!4639263 () Bool)

(assert (=> b!4042511 m!4639263))

(declare-fun m!4639265 () Bool)

(assert (=> b!4042511 m!4639265))

(declare-fun m!4639267 () Bool)

(assert (=> b!4042506 m!4639267))

(declare-fun m!4639269 () Bool)

(assert (=> b!4042506 m!4639269))

(declare-fun m!4639271 () Bool)

(assert (=> b!4042506 m!4639271))

(declare-fun m!4639273 () Bool)

(assert (=> b!4042506 m!4639273))

(declare-fun m!4639275 () Bool)

(assert (=> b!4042508 m!4639275))

(declare-fun m!4639277 () Bool)

(assert (=> b!4042508 m!4639277))

(declare-fun m!4639279 () Bool)

(assert (=> b!4042508 m!4639279))

(declare-fun m!4639281 () Bool)

(assert (=> b!4042508 m!4639281))

(declare-fun m!4639283 () Bool)

(assert (=> b!4042524 m!4639283))

(declare-fun m!4639285 () Bool)

(assert (=> b!4042524 m!4639285))

(declare-fun m!4639287 () Bool)

(assert (=> b!4042524 m!4639287))

(declare-fun m!4639289 () Bool)

(assert (=> b!4042524 m!4639289))

(declare-fun m!4639291 () Bool)

(assert (=> b!4042515 m!4639291))

(declare-fun m!4639293 () Bool)

(assert (=> start!381224 m!4639293))

(declare-fun m!4639295 () Bool)

(assert (=> b!4042519 m!4639295))

(declare-fun m!4639297 () Bool)

(assert (=> b!4042519 m!4639297))

(declare-fun m!4639299 () Bool)

(assert (=> b!4042519 m!4639299))

(declare-fun m!4639301 () Bool)

(assert (=> b!4042519 m!4639301))

(declare-fun m!4639303 () Bool)

(assert (=> b!4042513 m!4639303))

(declare-fun m!4639305 () Bool)

(assert (=> b!4042513 m!4639305))

(declare-fun m!4639307 () Bool)

(assert (=> b!4042513 m!4639307))

(declare-fun m!4639309 () Bool)

(assert (=> b!4042513 m!4639309))

(declare-fun m!4639311 () Bool)

(assert (=> b!4042513 m!4639311))

(declare-fun m!4639313 () Bool)

(assert (=> b!4042513 m!4639313))

(declare-fun m!4639315 () Bool)

(assert (=> b!4042513 m!4639315))

(declare-fun m!4639317 () Bool)

(assert (=> b!4042513 m!4639317))

(declare-fun m!4639319 () Bool)

(assert (=> b!4042513 m!4639319))

(declare-fun m!4639321 () Bool)

(assert (=> b!4042513 m!4639321))

(declare-fun m!4639323 () Bool)

(assert (=> b!4042513 m!4639323))

(declare-fun m!4639325 () Bool)

(assert (=> b!4042513 m!4639325))

(declare-fun m!4639327 () Bool)

(assert (=> b!4042513 m!4639327))

(assert (=> b!4042513 m!4639325))

(declare-fun m!4639329 () Bool)

(assert (=> b!4042513 m!4639329))

(declare-fun m!4639331 () Bool)

(assert (=> b!4042513 m!4639331))

(assert (=> b!4042513 m!4639315))

(declare-fun m!4639333 () Bool)

(assert (=> b!4042513 m!4639333))

(declare-fun m!4639335 () Bool)

(assert (=> b!4042513 m!4639335))

(declare-fun m!4639337 () Bool)

(assert (=> b!4042513 m!4639337))

(assert (=> b!4042513 m!4639317))

(assert (=> b!4042513 m!4639303))

(declare-fun m!4639339 () Bool)

(assert (=> b!4042503 m!4639339))

(declare-fun m!4639341 () Bool)

(assert (=> b!4042503 m!4639341))

(declare-fun m!4639343 () Bool)

(assert (=> b!4042504 m!4639343))

(check-sat (not b!4042501) (not b!4042506) (not b!4042514) (not b_next!113257) (not b!4042526) (not b!4042519) (not b!4042498) b_and!310803 (not b!4042517) (not b!4042509) (not b!4042523) (not b!4042505) (not b!4042503) (not b_next!113261) (not b!4042530) (not b!4042527) (not b!4042521) b_and!310809 (not b!4042522) (not b!4042508) (not b!4042516) (not b!4042529) (not b!4042520) (not b!4042504) (not b!4042511) (not start!381224) (not b!4042507) (not b!4042524) (not b!4042525) tp_is_empty!20629 (not b!4042500) (not b!4042515) (not b!4042513) (not b!4042512) b_and!310807 (not b_next!113259) b_and!310805 (not b!4042518) (not b_next!113263))
(check-sat (not b_next!113261) b_and!310809 (not b_next!113257) b_and!310803 b_and!310807 (not b_next!113259) b_and!310805 (not b_next!113263))
(get-model)

(declare-fun lt!1438812 () List!43373)

(declare-fun e!2508231 () Bool)

(declare-fun b!4042542 () Bool)

(assert (=> b!4042542 (= e!2508231 (or (not (= lt!1438762 Nil!43249)) (= lt!1438812 lt!1438798)))))

(declare-fun b!4042540 () Bool)

(declare-fun e!2508232 () List!43373)

(assert (=> b!4042540 (= e!2508232 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) lt!1438762)))))

(declare-fun b!4042539 () Bool)

(assert (=> b!4042539 (= e!2508232 lt!1438762)))

(declare-fun b!4042541 () Bool)

(declare-fun res!1646457 () Bool)

(assert (=> b!4042541 (=> (not res!1646457) (not e!2508231))))

(assert (=> b!4042541 (= res!1646457 (= (size!32333 lt!1438812) (+ (size!32333 lt!1438798) (size!32333 lt!1438762))))))

(declare-fun d!1199321 () Bool)

(assert (=> d!1199321 e!2508231))

(declare-fun res!1646456 () Bool)

(assert (=> d!1199321 (=> (not res!1646456) (not e!2508231))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6581 (List!43373) (InoxSet C!23844))

(assert (=> d!1199321 (= res!1646456 (= (content!6581 lt!1438812) ((_ map or) (content!6581 lt!1438798) (content!6581 lt!1438762))))))

(assert (=> d!1199321 (= lt!1438812 e!2508232)))

(declare-fun c!698374 () Bool)

(assert (=> d!1199321 (= c!698374 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199321 (= (++!11326 lt!1438798 lt!1438762) lt!1438812)))

(assert (= (and d!1199321 c!698374) b!4042539))

(assert (= (and d!1199321 (not c!698374)) b!4042540))

(assert (= (and d!1199321 res!1646456) b!4042541))

(assert (= (and b!4042541 res!1646457) b!4042542))

(declare-fun m!4639345 () Bool)

(assert (=> b!4042540 m!4639345))

(declare-fun m!4639347 () Bool)

(assert (=> b!4042541 m!4639347))

(assert (=> b!4042541 m!4639203))

(declare-fun m!4639349 () Bool)

(assert (=> b!4042541 m!4639349))

(declare-fun m!4639351 () Bool)

(assert (=> d!1199321 m!4639351))

(declare-fun m!4639353 () Bool)

(assert (=> d!1199321 m!4639353))

(declare-fun m!4639355 () Bool)

(assert (=> d!1199321 m!4639355))

(assert (=> b!4042516 d!1199321))

(declare-fun d!1199323 () Bool)

(declare-fun lt!1438815 () List!43373)

(assert (=> d!1199323 (= (++!11326 lt!1438798 lt!1438815) lt!1438775)))

(declare-fun e!2508235 () List!43373)

(assert (=> d!1199323 (= lt!1438815 e!2508235)))

(declare-fun c!698377 () Bool)

(assert (=> d!1199323 (= c!698377 ((_ is Cons!43249) lt!1438798))))

(assert (=> d!1199323 (>= (size!32333 lt!1438775) (size!32333 lt!1438798))))

(assert (=> d!1199323 (= (getSuffix!2428 lt!1438775 lt!1438798) lt!1438815)))

(declare-fun b!4042547 () Bool)

(declare-fun tail!6287 (List!43373) List!43373)

(assert (=> b!4042547 (= e!2508235 (getSuffix!2428 (tail!6287 lt!1438775) (t!335212 lt!1438798)))))

(declare-fun b!4042548 () Bool)

(assert (=> b!4042548 (= e!2508235 lt!1438775)))

(assert (= (and d!1199323 c!698377) b!4042547))

(assert (= (and d!1199323 (not c!698377)) b!4042548))

(declare-fun m!4639357 () Bool)

(assert (=> d!1199323 m!4639357))

(declare-fun m!4639359 () Bool)

(assert (=> d!1199323 m!4639359))

(assert (=> d!1199323 m!4639203))

(declare-fun m!4639361 () Bool)

(assert (=> b!4042547 m!4639361))

(assert (=> b!4042547 m!4639361))

(declare-fun m!4639363 () Bool)

(assert (=> b!4042547 m!4639363))

(assert (=> b!4042516 d!1199323))

(declare-fun b!4042573 () Bool)

(declare-fun e!2508250 () Bool)

(declare-fun e!2508251 () Bool)

(assert (=> b!4042573 (= e!2508250 e!2508251)))

(declare-fun res!1646479 () Bool)

(assert (=> b!4042573 (=> (not res!1646479) (not e!2508251))))

(assert (=> b!4042573 (= res!1646479 (not ((_ is Nil!43249) lt!1438775)))))

(declare-fun b!4042574 () Bool)

(declare-fun res!1646480 () Bool)

(assert (=> b!4042574 (=> (not res!1646480) (not e!2508251))))

(declare-fun head!8555 (List!43373) C!23844)

(assert (=> b!4042574 (= res!1646480 (= (head!8555 lt!1438775) (head!8555 lt!1438775)))))

(declare-fun d!1199325 () Bool)

(declare-fun e!2508252 () Bool)

(assert (=> d!1199325 e!2508252))

(declare-fun res!1646478 () Bool)

(assert (=> d!1199325 (=> res!1646478 e!2508252)))

(declare-fun lt!1438822 () Bool)

(assert (=> d!1199325 (= res!1646478 (not lt!1438822))))

(assert (=> d!1199325 (= lt!1438822 e!2508250)))

(declare-fun res!1646481 () Bool)

(assert (=> d!1199325 (=> res!1646481 e!2508250)))

(assert (=> d!1199325 (= res!1646481 ((_ is Nil!43249) lt!1438775))))

(assert (=> d!1199325 (= (isPrefix!4011 lt!1438775 lt!1438775) lt!1438822)))

(declare-fun b!4042575 () Bool)

(assert (=> b!4042575 (= e!2508251 (isPrefix!4011 (tail!6287 lt!1438775) (tail!6287 lt!1438775)))))

(declare-fun b!4042576 () Bool)

(assert (=> b!4042576 (= e!2508252 (>= (size!32333 lt!1438775) (size!32333 lt!1438775)))))

(assert (= (and d!1199325 (not res!1646481)) b!4042573))

(assert (= (and b!4042573 res!1646479) b!4042574))

(assert (= (and b!4042574 res!1646480) b!4042575))

(assert (= (and d!1199325 (not res!1646478)) b!4042576))

(declare-fun m!4639387 () Bool)

(assert (=> b!4042574 m!4639387))

(assert (=> b!4042574 m!4639387))

(assert (=> b!4042575 m!4639361))

(assert (=> b!4042575 m!4639361))

(assert (=> b!4042575 m!4639361))

(assert (=> b!4042575 m!4639361))

(declare-fun m!4639389 () Bool)

(assert (=> b!4042575 m!4639389))

(assert (=> b!4042576 m!4639359))

(assert (=> b!4042576 m!4639359))

(assert (=> b!4042516 d!1199325))

(declare-fun d!1199333 () Bool)

(assert (=> d!1199333 (isPrefix!4011 lt!1438775 lt!1438775)))

(declare-fun lt!1438825 () Unit!62477)

(declare-fun choose!24502 (List!43373 List!43373) Unit!62477)

(assert (=> d!1199333 (= lt!1438825 (choose!24502 lt!1438775 lt!1438775))))

(assert (=> d!1199333 (= (lemmaIsPrefixRefl!2578 lt!1438775 lt!1438775) lt!1438825)))

(declare-fun bs!591015 () Bool)

(assert (= bs!591015 d!1199333))

(assert (=> bs!591015 m!4639259))

(declare-fun m!4639395 () Bool)

(assert (=> bs!591015 m!4639395))

(assert (=> b!4042516 d!1199333))

(declare-fun d!1199337 () Bool)

(declare-fun lt!1438833 () Int)

(assert (=> d!1199337 (>= lt!1438833 0)))

(declare-fun e!2508267 () Int)

(assert (=> d!1199337 (= lt!1438833 e!2508267)))

(declare-fun c!698384 () Bool)

(assert (=> d!1199337 (= c!698384 ((_ is Nil!43249) (originalCharacters!7524 token!484)))))

(assert (=> d!1199337 (= (size!32333 (originalCharacters!7524 token!484)) lt!1438833)))

(declare-fun b!4042596 () Bool)

(assert (=> b!4042596 (= e!2508267 0)))

(declare-fun b!4042597 () Bool)

(assert (=> b!4042597 (= e!2508267 (+ 1 (size!32333 (t!335212 (originalCharacters!7524 token!484)))))))

(assert (= (and d!1199337 c!698384) b!4042596))

(assert (= (and d!1199337 (not c!698384)) b!4042597))

(declare-fun m!4639411 () Bool)

(assert (=> b!4042597 m!4639411))

(assert (=> b!4042515 d!1199337))

(declare-fun b!4042643 () Bool)

(declare-fun e!2508287 () Option!9338)

(declare-fun lt!1438863 () Option!9338)

(declare-fun lt!1438866 () Option!9338)

(assert (=> b!4042643 (= e!2508287 (ite (and ((_ is None!9337) lt!1438863) ((_ is None!9337) lt!1438866)) None!9337 (ite ((_ is None!9337) lt!1438866) lt!1438863 (ite ((_ is None!9337) lt!1438863) lt!1438866 (ite (>= (size!32334 (_1!24299 (v!39739 lt!1438863))) (size!32334 (_1!24299 (v!39739 lt!1438866)))) lt!1438863 lt!1438866)))))))

(declare-fun call!287517 () Option!9338)

(assert (=> b!4042643 (= lt!1438863 call!287517)))

(assert (=> b!4042643 (= lt!1438866 (maxPrefix!3811 thiss!21717 (t!335214 rules!2999) lt!1438785))))

(declare-fun b!4042644 () Bool)

(declare-fun res!1646538 () Bool)

(declare-fun e!2508288 () Bool)

(assert (=> b!4042644 (=> (not res!1646538) (not e!2508288))))

(declare-fun lt!1438867 () Option!9338)

(declare-fun get!14192 (Option!9338) tuple2!42330)

(assert (=> b!4042644 (= res!1646538 (< (size!32333 (_2!24299 (get!14192 lt!1438867))) (size!32333 lt!1438785)))))

(declare-fun bm!287512 () Bool)

(assert (=> bm!287512 (= call!287517 (maxPrefixOneRule!2823 thiss!21717 (h!48671 rules!2999) lt!1438785))))

(declare-fun b!4042645 () Bool)

(declare-fun res!1646536 () Bool)

(assert (=> b!4042645 (=> (not res!1646536) (not e!2508288))))

(assert (=> b!4042645 (= res!1646536 (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))))))

(declare-fun b!4042646 () Bool)

(declare-fun e!2508286 () Bool)

(assert (=> b!4042646 (= e!2508286 e!2508288)))

(declare-fun res!1646535 () Bool)

(assert (=> b!4042646 (=> (not res!1646535) (not e!2508288))))

(declare-fun isDefined!7105 (Option!9338) Bool)

(assert (=> b!4042646 (= res!1646535 (isDefined!7105 lt!1438867))))

(declare-fun d!1199343 () Bool)

(assert (=> d!1199343 e!2508286))

(declare-fun res!1646532 () Bool)

(assert (=> d!1199343 (=> res!1646532 e!2508286)))

(declare-fun isEmpty!25816 (Option!9338) Bool)

(assert (=> d!1199343 (= res!1646532 (isEmpty!25816 lt!1438867))))

(assert (=> d!1199343 (= lt!1438867 e!2508287)))

(declare-fun c!698390 () Bool)

(assert (=> d!1199343 (= c!698390 (and ((_ is Cons!43251) rules!2999) ((_ is Nil!43251) (t!335214 rules!2999))))))

(declare-fun lt!1438864 () Unit!62477)

(declare-fun lt!1438865 () Unit!62477)

(assert (=> d!1199343 (= lt!1438864 lt!1438865)))

(assert (=> d!1199343 (isPrefix!4011 lt!1438785 lt!1438785)))

(assert (=> d!1199343 (= lt!1438865 (lemmaIsPrefixRefl!2578 lt!1438785 lt!1438785))))

(declare-fun rulesValidInductive!2526 (LexerInterface!6513 List!43375) Bool)

(assert (=> d!1199343 (rulesValidInductive!2526 thiss!21717 rules!2999)))

(assert (=> d!1199343 (= (maxPrefix!3811 thiss!21717 rules!2999 lt!1438785) lt!1438867)))

(declare-fun b!4042647 () Bool)

(assert (=> b!4042647 (= e!2508287 call!287517)))

(declare-fun b!4042648 () Bool)

(declare-fun res!1646537 () Bool)

(assert (=> b!4042648 (=> (not res!1646537) (not e!2508288))))

(assert (=> b!4042648 (= res!1646537 (= (value!217968 (_1!24299 (get!14192 lt!1438867))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867)))))))))

(declare-fun b!4042649 () Bool)

(declare-fun res!1646533 () Bool)

(assert (=> b!4042649 (=> (not res!1646533) (not e!2508288))))

(assert (=> b!4042649 (= res!1646533 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))) (_2!24299 (get!14192 lt!1438867))) lt!1438785))))

(declare-fun b!4042650 () Bool)

(declare-fun contains!8595 (List!43375 Rule!13648) Bool)

(assert (=> b!4042650 (= e!2508288 (contains!8595 rules!2999 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))))

(declare-fun b!4042651 () Bool)

(declare-fun res!1646534 () Bool)

(assert (=> b!4042651 (=> (not res!1646534) (not e!2508288))))

(assert (=> b!4042651 (= res!1646534 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))) (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867)))))))

(assert (= (and d!1199343 c!698390) b!4042647))

(assert (= (and d!1199343 (not c!698390)) b!4042643))

(assert (= (or b!4042647 b!4042643) bm!287512))

(assert (= (and d!1199343 (not res!1646532)) b!4042646))

(assert (= (and b!4042646 res!1646535) b!4042651))

(assert (= (and b!4042651 res!1646534) b!4042644))

(assert (= (and b!4042644 res!1646538) b!4042649))

(assert (= (and b!4042649 res!1646533) b!4042648))

(assert (= (and b!4042648 res!1646537) b!4042645))

(assert (= (and b!4042645 res!1646536) b!4042650))

(declare-fun m!4639463 () Bool)

(assert (=> b!4042648 m!4639463))

(declare-fun m!4639465 () Bool)

(assert (=> b!4042648 m!4639465))

(assert (=> b!4042648 m!4639465))

(declare-fun m!4639467 () Bool)

(assert (=> b!4042648 m!4639467))

(assert (=> b!4042644 m!4639463))

(declare-fun m!4639469 () Bool)

(assert (=> b!4042644 m!4639469))

(declare-fun m!4639471 () Bool)

(assert (=> b!4042644 m!4639471))

(declare-fun m!4639473 () Bool)

(assert (=> b!4042643 m!4639473))

(assert (=> b!4042645 m!4639463))

(declare-fun m!4639475 () Bool)

(assert (=> b!4042645 m!4639475))

(assert (=> b!4042645 m!4639475))

(declare-fun m!4639477 () Bool)

(assert (=> b!4042645 m!4639477))

(assert (=> b!4042645 m!4639477))

(declare-fun m!4639479 () Bool)

(assert (=> b!4042645 m!4639479))

(assert (=> b!4042649 m!4639463))

(assert (=> b!4042649 m!4639475))

(assert (=> b!4042649 m!4639475))

(assert (=> b!4042649 m!4639477))

(assert (=> b!4042649 m!4639477))

(declare-fun m!4639481 () Bool)

(assert (=> b!4042649 m!4639481))

(assert (=> b!4042650 m!4639463))

(declare-fun m!4639485 () Bool)

(assert (=> b!4042650 m!4639485))

(declare-fun m!4639487 () Bool)

(assert (=> bm!287512 m!4639487))

(declare-fun m!4639489 () Bool)

(assert (=> b!4042646 m!4639489))

(assert (=> b!4042651 m!4639463))

(assert (=> b!4042651 m!4639475))

(assert (=> b!4042651 m!4639475))

(assert (=> b!4042651 m!4639477))

(declare-fun m!4639493 () Bool)

(assert (=> d!1199343 m!4639493))

(declare-fun m!4639495 () Bool)

(assert (=> d!1199343 m!4639495))

(declare-fun m!4639497 () Bool)

(assert (=> d!1199343 m!4639497))

(declare-fun m!4639499 () Bool)

(assert (=> d!1199343 m!4639499))

(assert (=> b!4042519 d!1199343))

(declare-fun d!1199353 () Bool)

(assert (=> d!1199353 (= suffixResult!105 lt!1438762)))

(declare-fun lt!1438879 () Unit!62477)

(declare-fun choose!24503 (List!43373 List!43373 List!43373 List!43373 List!43373) Unit!62477)

(assert (=> d!1199353 (= lt!1438879 (choose!24503 lt!1438798 suffixResult!105 lt!1438798 lt!1438762 lt!1438775))))

(assert (=> d!1199353 (isPrefix!4011 lt!1438798 lt!1438775)))

(assert (=> d!1199353 (= (lemmaSamePrefixThenSameSuffix!2172 lt!1438798 suffixResult!105 lt!1438798 lt!1438762 lt!1438775) lt!1438879)))

(declare-fun bs!591022 () Bool)

(assert (= bs!591022 d!1199353))

(declare-fun m!4639531 () Bool)

(assert (=> bs!591022 m!4639531))

(assert (=> bs!591022 m!4639249))

(assert (=> b!4042519 d!1199353))

(declare-fun b!4042674 () Bool)

(declare-fun e!2508305 () Bool)

(declare-fun e!2508306 () Bool)

(assert (=> b!4042674 (= e!2508305 e!2508306)))

(declare-fun res!1646556 () Bool)

(assert (=> b!4042674 (=> (not res!1646556) (not e!2508306))))

(assert (=> b!4042674 (= res!1646556 (not ((_ is Nil!43249) lt!1438794)))))

(declare-fun b!4042675 () Bool)

(declare-fun res!1646557 () Bool)

(assert (=> b!4042675 (=> (not res!1646557) (not e!2508306))))

(assert (=> b!4042675 (= res!1646557 (= (head!8555 lt!1438798) (head!8555 lt!1438794)))))

(declare-fun d!1199369 () Bool)

(declare-fun e!2508307 () Bool)

(assert (=> d!1199369 e!2508307))

(declare-fun res!1646555 () Bool)

(assert (=> d!1199369 (=> res!1646555 e!2508307)))

(declare-fun lt!1438881 () Bool)

(assert (=> d!1199369 (= res!1646555 (not lt!1438881))))

(assert (=> d!1199369 (= lt!1438881 e!2508305)))

(declare-fun res!1646558 () Bool)

(assert (=> d!1199369 (=> res!1646558 e!2508305)))

(assert (=> d!1199369 (= res!1646558 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199369 (= (isPrefix!4011 lt!1438798 lt!1438794) lt!1438881)))

(declare-fun b!4042676 () Bool)

(assert (=> b!4042676 (= e!2508306 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438794)))))

(declare-fun b!4042677 () Bool)

(assert (=> b!4042677 (= e!2508307 (>= (size!32333 lt!1438794) (size!32333 lt!1438798)))))

(assert (= (and d!1199369 (not res!1646558)) b!4042674))

(assert (= (and b!4042674 res!1646556) b!4042675))

(assert (= (and b!4042675 res!1646557) b!4042676))

(assert (= (and d!1199369 (not res!1646555)) b!4042677))

(declare-fun m!4639555 () Bool)

(assert (=> b!4042675 m!4639555))

(declare-fun m!4639561 () Bool)

(assert (=> b!4042675 m!4639561))

(declare-fun m!4639565 () Bool)

(assert (=> b!4042676 m!4639565))

(declare-fun m!4639571 () Bool)

(assert (=> b!4042676 m!4639571))

(assert (=> b!4042676 m!4639565))

(assert (=> b!4042676 m!4639571))

(declare-fun m!4639573 () Bool)

(assert (=> b!4042676 m!4639573))

(declare-fun m!4639575 () Bool)

(assert (=> b!4042677 m!4639575))

(assert (=> b!4042677 m!4639203))

(assert (=> b!4042519 d!1199369))

(declare-fun d!1199375 () Bool)

(assert (=> d!1199375 (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 lt!1438762))))

(declare-fun lt!1438888 () Unit!62477)

(declare-fun choose!24505 (List!43373 List!43373) Unit!62477)

(assert (=> d!1199375 (= lt!1438888 (choose!24505 lt!1438798 lt!1438762))))

(assert (=> d!1199375 (= (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438798 lt!1438762) lt!1438888)))

(declare-fun bs!591024 () Bool)

(assert (= bs!591024 d!1199375))

(assert (=> bs!591024 m!4639255))

(assert (=> bs!591024 m!4639255))

(declare-fun m!4639583 () Bool)

(assert (=> bs!591024 m!4639583))

(declare-fun m!4639585 () Bool)

(assert (=> bs!591024 m!4639585))

(assert (=> b!4042519 d!1199375))

(declare-fun d!1199379 () Bool)

(declare-fun lt!1438889 () Int)

(assert (=> d!1199379 (>= lt!1438889 0)))

(declare-fun e!2508310 () Int)

(assert (=> d!1199379 (= lt!1438889 e!2508310)))

(declare-fun c!698394 () Bool)

(assert (=> d!1199379 (= c!698394 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199379 (= (size!32333 lt!1438798) lt!1438889)))

(declare-fun b!4042682 () Bool)

(assert (=> b!4042682 (= e!2508310 0)))

(declare-fun b!4042683 () Bool)

(assert (=> b!4042683 (= e!2508310 (+ 1 (size!32333 (t!335212 lt!1438798))))))

(assert (= (and d!1199379 c!698394) b!4042682))

(assert (= (and d!1199379 (not c!698394)) b!4042683))

(declare-fun m!4639587 () Bool)

(assert (=> b!4042683 m!4639587))

(assert (=> b!4042498 d!1199379))

(declare-fun d!1199381 () Bool)

(declare-fun lt!1438890 () Int)

(assert (=> d!1199381 (>= lt!1438890 0)))

(declare-fun e!2508313 () Int)

(assert (=> d!1199381 (= lt!1438890 e!2508313)))

(declare-fun c!698395 () Bool)

(assert (=> d!1199381 (= c!698395 ((_ is Nil!43249) prefix!494))))

(assert (=> d!1199381 (= (size!32333 prefix!494) lt!1438890)))

(declare-fun b!4042688 () Bool)

(assert (=> b!4042688 (= e!2508313 0)))

(declare-fun b!4042689 () Bool)

(assert (=> b!4042689 (= e!2508313 (+ 1 (size!32333 (t!335212 prefix!494))))))

(assert (= (and d!1199381 c!698395) b!4042688))

(assert (= (and d!1199381 (not c!698395)) b!4042689))

(declare-fun m!4639589 () Bool)

(assert (=> b!4042689 m!4639589))

(assert (=> b!4042498 d!1199381))

(declare-fun d!1199383 () Bool)

(declare-fun list!16107 (Conc!13135) List!43373)

(assert (=> d!1199383 (= (list!16106 (charsOf!4740 token!484)) (list!16107 (c!698370 (charsOf!4740 token!484))))))

(declare-fun bs!591025 () Bool)

(assert (= bs!591025 d!1199383))

(declare-fun m!4639591 () Bool)

(assert (=> bs!591025 m!4639591))

(assert (=> b!4042498 d!1199383))

(declare-fun d!1199385 () Bool)

(declare-fun lt!1438893 () BalanceConc!25864)

(assert (=> d!1199385 (= (list!16106 lt!1438893) (originalCharacters!7524 token!484))))

(declare-fun dynLambda!18369 (Int TokenValue!7154) BalanceConc!25864)

(assert (=> d!1199385 (= lt!1438893 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))))

(assert (=> d!1199385 (= (charsOf!4740 token!484) lt!1438893)))

(declare-fun b_lambda!118091 () Bool)

(assert (=> (not b_lambda!118091) (not d!1199385)))

(declare-fun tb!243081 () Bool)

(declare-fun t!335224 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335224) tb!243081))

(declare-fun b!4042716 () Bool)

(declare-fun e!2508329 () Bool)

(declare-fun tp!1227140 () Bool)

(declare-fun inv!57809 (Conc!13135) Bool)

(assert (=> b!4042716 (= e!2508329 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))) tp!1227140))))

(declare-fun result!294606 () Bool)

(declare-fun inv!57810 (BalanceConc!25864) Bool)

(assert (=> tb!243081 (= result!294606 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))) e!2508329))))

(assert (= tb!243081 b!4042716))

(declare-fun m!4639609 () Bool)

(assert (=> b!4042716 m!4639609))

(declare-fun m!4639611 () Bool)

(assert (=> tb!243081 m!4639611))

(assert (=> d!1199385 t!335224))

(declare-fun b_and!310819 () Bool)

(assert (= b_and!310805 (and (=> t!335224 result!294606) b_and!310819)))

(declare-fun t!335226 () Bool)

(declare-fun tb!243083 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335226) tb!243083))

(declare-fun result!294610 () Bool)

(assert (= result!294610 result!294606))

(assert (=> d!1199385 t!335226))

(declare-fun b_and!310821 () Bool)

(assert (= b_and!310809 (and (=> t!335226 result!294610) b_and!310821)))

(declare-fun m!4639613 () Bool)

(assert (=> d!1199385 m!4639613))

(declare-fun m!4639615 () Bool)

(assert (=> d!1199385 m!4639615))

(assert (=> b!4042498 d!1199385))

(declare-fun d!1199391 () Bool)

(assert (=> d!1199391 (= (inv!57802 (tag!7784 (h!48671 rules!2999))) (= (mod (str.len (value!217967 (tag!7784 (h!48671 rules!2999)))) 2) 0))))

(assert (=> b!4042518 d!1199391))

(declare-fun d!1199393 () Bool)

(declare-fun res!1646572 () Bool)

(declare-fun e!2508332 () Bool)

(assert (=> d!1199393 (=> (not res!1646572) (not e!2508332))))

(declare-fun semiInverseModEq!2959 (Int Int) Bool)

(assert (=> d!1199393 (= res!1646572 (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (h!48671 rules!2999)))))))

(assert (=> d!1199393 (= (inv!57806 (transformation!6924 (h!48671 rules!2999))) e!2508332)))

(declare-fun b!4042719 () Bool)

(declare-fun equivClasses!2858 (Int Int) Bool)

(assert (=> b!4042719 (= e!2508332 (equivClasses!2858 (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (h!48671 rules!2999)))))))

(assert (= (and d!1199393 res!1646572) b!4042719))

(declare-fun m!4639617 () Bool)

(assert (=> d!1199393 m!4639617))

(declare-fun m!4639619 () Bool)

(assert (=> b!4042719 m!4639619))

(assert (=> b!4042518 d!1199393))

(declare-fun d!1199395 () Bool)

(assert (=> d!1199395 (= lt!1438778 suffixResult!105)))

(declare-fun lt!1438894 () Unit!62477)

(assert (=> d!1199395 (= lt!1438894 (choose!24503 lt!1438798 lt!1438778 lt!1438798 suffixResult!105 lt!1438775))))

(assert (=> d!1199395 (isPrefix!4011 lt!1438798 lt!1438775)))

(assert (=> d!1199395 (= (lemmaSamePrefixThenSameSuffix!2172 lt!1438798 lt!1438778 lt!1438798 suffixResult!105 lt!1438775) lt!1438894)))

(declare-fun bs!591026 () Bool)

(assert (= bs!591026 d!1199395))

(declare-fun m!4639621 () Bool)

(assert (=> bs!591026 m!4639621))

(assert (=> bs!591026 m!4639249))

(assert (=> b!4042517 d!1199395))

(declare-fun d!1199397 () Bool)

(assert (=> d!1199397 (= (maxPrefixOneRule!2823 thiss!21717 (rule!9998 token!484) lt!1438775) (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 lt!1438798)) (rule!9998 token!484) (size!32333 lt!1438798) lt!1438798) suffixResult!105)))))

(declare-fun lt!1438912 () Unit!62477)

(declare-fun choose!24506 (LexerInterface!6513 List!43375 List!43373 List!43373 List!43373 Rule!13648) Unit!62477)

(assert (=> d!1199397 (= lt!1438912 (choose!24506 thiss!21717 rules!2999 lt!1438798 lt!1438775 suffixResult!105 (rule!9998 token!484)))))

(assert (=> d!1199397 (not (isEmpty!25813 rules!2999))))

(assert (=> d!1199397 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1629 thiss!21717 rules!2999 lt!1438798 lt!1438775 suffixResult!105 (rule!9998 token!484)) lt!1438912)))

(declare-fun bs!591027 () Bool)

(assert (= bs!591027 d!1199397))

(declare-fun m!4639623 () Bool)

(assert (=> bs!591027 m!4639623))

(assert (=> bs!591027 m!4639217))

(assert (=> bs!591027 m!4639219))

(assert (=> bs!591027 m!4639203))

(assert (=> bs!591027 m!4639193))

(assert (=> bs!591027 m!4639217))

(assert (=> bs!591027 m!4639227))

(assert (=> b!4042517 d!1199397))

(declare-fun b!4042883 () Bool)

(declare-fun e!2508418 () Bool)

(declare-fun lt!1438965 () Option!9338)

(assert (=> b!4042883 (= e!2508418 (= (size!32334 (_1!24299 (get!14192 lt!1438965))) (size!32333 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965))))))))

(declare-fun b!4042884 () Bool)

(declare-fun res!1646687 () Bool)

(assert (=> b!4042884 (=> (not res!1646687) (not e!2508418))))

(assert (=> b!4042884 (= res!1646687 (= (value!217968 (_1!24299 (get!14192 lt!1438965))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965)))))))))

(declare-fun b!4042885 () Bool)

(declare-fun res!1646688 () Bool)

(assert (=> b!4042885 (=> (not res!1646688) (not e!2508418))))

(assert (=> b!4042885 (= res!1646688 (= (rule!9998 (_1!24299 (get!14192 lt!1438965))) (rule!9998 token!484)))))

(declare-fun b!4042886 () Bool)

(declare-fun e!2508420 () Option!9338)

(declare-datatypes ((tuple2!42334 0))(
  ( (tuple2!42335 (_1!24301 List!43373) (_2!24301 List!43373)) )
))
(declare-fun lt!1438966 () tuple2!42334)

(declare-fun size!32336 (BalanceConc!25864) Int)

(assert (=> b!4042886 (= e!2508420 (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 (_1!24301 lt!1438966))) (rule!9998 token!484) (size!32336 (seqFromList!5141 (_1!24301 lt!1438966))) (_1!24301 lt!1438966)) (_2!24301 lt!1438966))))))

(declare-fun lt!1438969 () Unit!62477)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1362 (Regex!11829 List!43373) Unit!62477)

(assert (=> b!4042886 (= lt!1438969 (longestMatchIsAcceptedByMatchOrIsEmpty!1362 (regex!6924 (rule!9998 token!484)) lt!1438775))))

(declare-fun res!1646691 () Bool)

(declare-fun isEmpty!25817 (List!43373) Bool)

(declare-fun findLongestMatchInner!1389 (Regex!11829 List!43373 Int List!43373 List!43373 Int) tuple2!42334)

(assert (=> b!4042886 (= res!1646691 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(declare-fun e!2508419 () Bool)

(assert (=> b!4042886 (=> res!1646691 e!2508419)))

(assert (=> b!4042886 e!2508419))

(declare-fun lt!1438967 () Unit!62477)

(assert (=> b!4042886 (= lt!1438967 lt!1438969)))

(declare-fun lt!1438968 () Unit!62477)

(declare-fun lemmaSemiInverse!1909 (TokenValueInjection!13736 BalanceConc!25864) Unit!62477)

(assert (=> b!4042886 (= lt!1438968 (lemmaSemiInverse!1909 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 (_1!24301 lt!1438966))))))

(declare-fun b!4042887 () Bool)

(assert (=> b!4042887 (= e!2508420 None!9337)))

(declare-fun b!4042888 () Bool)

(assert (=> b!4042888 (= e!2508419 (matchR!5782 (regex!6924 (rule!9998 token!484)) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(declare-fun b!4042889 () Bool)

(declare-fun e!2508417 () Bool)

(assert (=> b!4042889 (= e!2508417 e!2508418)))

(declare-fun res!1646685 () Bool)

(assert (=> b!4042889 (=> (not res!1646685) (not e!2508418))))

(assert (=> b!4042889 (= res!1646685 (matchR!5782 (regex!6924 (rule!9998 token!484)) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))))))

(declare-fun b!4042890 () Bool)

(declare-fun res!1646686 () Bool)

(assert (=> b!4042890 (=> (not res!1646686) (not e!2508418))))

(assert (=> b!4042890 (= res!1646686 (< (size!32333 (_2!24299 (get!14192 lt!1438965))) (size!32333 lt!1438775)))))

(declare-fun d!1199399 () Bool)

(assert (=> d!1199399 e!2508417))

(declare-fun res!1646689 () Bool)

(assert (=> d!1199399 (=> res!1646689 e!2508417)))

(assert (=> d!1199399 (= res!1646689 (isEmpty!25816 lt!1438965))))

(assert (=> d!1199399 (= lt!1438965 e!2508420)))

(declare-fun c!698427 () Bool)

(assert (=> d!1199399 (= c!698427 (isEmpty!25817 (_1!24301 lt!1438966)))))

(declare-fun findLongestMatch!1302 (Regex!11829 List!43373) tuple2!42334)

(assert (=> d!1199399 (= lt!1438966 (findLongestMatch!1302 (regex!6924 (rule!9998 token!484)) lt!1438775))))

(assert (=> d!1199399 (ruleValid!2854 thiss!21717 (rule!9998 token!484))))

(assert (=> d!1199399 (= (maxPrefixOneRule!2823 thiss!21717 (rule!9998 token!484) lt!1438775) lt!1438965)))

(declare-fun b!4042891 () Bool)

(declare-fun res!1646690 () Bool)

(assert (=> b!4042891 (=> (not res!1646690) (not e!2508418))))

(assert (=> b!4042891 (= res!1646690 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965)))) (_2!24299 (get!14192 lt!1438965))) lt!1438775))))

(assert (= (and d!1199399 c!698427) b!4042887))

(assert (= (and d!1199399 (not c!698427)) b!4042886))

(assert (= (and b!4042886 (not res!1646691)) b!4042888))

(assert (= (and d!1199399 (not res!1646689)) b!4042889))

(assert (= (and b!4042889 res!1646685) b!4042891))

(assert (= (and b!4042891 res!1646690) b!4042890))

(assert (= (and b!4042890 res!1646686) b!4042885))

(assert (= (and b!4042885 res!1646688) b!4042884))

(assert (= (and b!4042884 res!1646687) b!4042883))

(declare-fun m!4639881 () Bool)

(assert (=> b!4042883 m!4639881))

(declare-fun m!4639883 () Bool)

(assert (=> b!4042883 m!4639883))

(declare-fun m!4639885 () Bool)

(assert (=> b!4042888 m!4639885))

(assert (=> b!4042888 m!4639359))

(assert (=> b!4042888 m!4639885))

(assert (=> b!4042888 m!4639359))

(declare-fun m!4639887 () Bool)

(assert (=> b!4042888 m!4639887))

(declare-fun m!4639889 () Bool)

(assert (=> b!4042888 m!4639889))

(assert (=> b!4042889 m!4639881))

(declare-fun m!4639895 () Bool)

(assert (=> b!4042889 m!4639895))

(assert (=> b!4042889 m!4639895))

(declare-fun m!4639903 () Bool)

(assert (=> b!4042889 m!4639903))

(assert (=> b!4042889 m!4639903))

(declare-fun m!4639905 () Bool)

(assert (=> b!4042889 m!4639905))

(declare-fun m!4639907 () Bool)

(assert (=> b!4042886 m!4639907))

(declare-fun m!4639909 () Bool)

(assert (=> b!4042886 m!4639909))

(assert (=> b!4042886 m!4639907))

(declare-fun m!4639911 () Bool)

(assert (=> b!4042886 m!4639911))

(assert (=> b!4042886 m!4639885))

(assert (=> b!4042886 m!4639359))

(assert (=> b!4042886 m!4639887))

(assert (=> b!4042886 m!4639907))

(declare-fun m!4639913 () Bool)

(assert (=> b!4042886 m!4639913))

(assert (=> b!4042886 m!4639885))

(assert (=> b!4042886 m!4639359))

(assert (=> b!4042886 m!4639907))

(declare-fun m!4639915 () Bool)

(assert (=> b!4042886 m!4639915))

(declare-fun m!4639917 () Bool)

(assert (=> b!4042886 m!4639917))

(declare-fun m!4639919 () Bool)

(assert (=> d!1199399 m!4639919))

(declare-fun m!4639921 () Bool)

(assert (=> d!1199399 m!4639921))

(declare-fun m!4639923 () Bool)

(assert (=> d!1199399 m!4639923))

(assert (=> d!1199399 m!4639189))

(assert (=> b!4042891 m!4639881))

(assert (=> b!4042891 m!4639895))

(assert (=> b!4042891 m!4639895))

(assert (=> b!4042891 m!4639903))

(assert (=> b!4042891 m!4639903))

(declare-fun m!4639929 () Bool)

(assert (=> b!4042891 m!4639929))

(assert (=> b!4042890 m!4639881))

(declare-fun m!4639931 () Bool)

(assert (=> b!4042890 m!4639931))

(assert (=> b!4042890 m!4639359))

(assert (=> b!4042884 m!4639881))

(declare-fun m!4639933 () Bool)

(assert (=> b!4042884 m!4639933))

(assert (=> b!4042884 m!4639933))

(declare-fun m!4639937 () Bool)

(assert (=> b!4042884 m!4639937))

(assert (=> b!4042885 m!4639881))

(assert (=> b!4042517 d!1199399))

(declare-fun d!1199483 () Bool)

(declare-fun dynLambda!18370 (Int BalanceConc!25864) TokenValue!7154)

(assert (=> d!1199483 (= (apply!10113 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 lt!1438798)) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798)))))

(declare-fun b_lambda!118099 () Bool)

(assert (=> (not b_lambda!118099) (not d!1199483)))

(declare-fun tb!243093 () Bool)

(declare-fun t!335236 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335236) tb!243093))

(declare-fun result!294620 () Bool)

(assert (=> tb!243093 (= result!294620 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798))))))

(declare-fun m!4639955 () Bool)

(assert (=> tb!243093 m!4639955))

(assert (=> d!1199483 t!335236))

(declare-fun b_and!310835 () Bool)

(assert (= b_and!310803 (and (=> t!335236 result!294620) b_and!310835)))

(declare-fun t!335238 () Bool)

(declare-fun tb!243095 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335238) tb!243095))

(declare-fun result!294624 () Bool)

(assert (= result!294624 result!294620))

(assert (=> d!1199483 t!335238))

(declare-fun b_and!310837 () Bool)

(assert (= b_and!310807 (and (=> t!335238 result!294624) b_and!310837)))

(assert (=> d!1199483 m!4639217))

(declare-fun m!4639957 () Bool)

(assert (=> d!1199483 m!4639957))

(assert (=> b!4042517 d!1199483))

(declare-fun b!4042921 () Bool)

(declare-fun e!2508439 () Bool)

(declare-fun e!2508440 () Bool)

(assert (=> b!4042921 (= e!2508439 e!2508440)))

(declare-fun res!1646706 () Bool)

(assert (=> b!4042921 (=> (not res!1646706) (not e!2508440))))

(assert (=> b!4042921 (= res!1646706 (not ((_ is Nil!43249) lt!1438774)))))

(declare-fun b!4042922 () Bool)

(declare-fun res!1646707 () Bool)

(assert (=> b!4042922 (=> (not res!1646707) (not e!2508440))))

(assert (=> b!4042922 (= res!1646707 (= (head!8555 lt!1438798) (head!8555 lt!1438774)))))

(declare-fun d!1199495 () Bool)

(declare-fun e!2508441 () Bool)

(assert (=> d!1199495 e!2508441))

(declare-fun res!1646705 () Bool)

(assert (=> d!1199495 (=> res!1646705 e!2508441)))

(declare-fun lt!1438980 () Bool)

(assert (=> d!1199495 (= res!1646705 (not lt!1438980))))

(assert (=> d!1199495 (= lt!1438980 e!2508439)))

(declare-fun res!1646708 () Bool)

(assert (=> d!1199495 (=> res!1646708 e!2508439)))

(assert (=> d!1199495 (= res!1646708 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199495 (= (isPrefix!4011 lt!1438798 lt!1438774) lt!1438980)))

(declare-fun b!4042923 () Bool)

(assert (=> b!4042923 (= e!2508440 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438774)))))

(declare-fun b!4042924 () Bool)

(assert (=> b!4042924 (= e!2508441 (>= (size!32333 lt!1438774) (size!32333 lt!1438798)))))

(assert (= (and d!1199495 (not res!1646708)) b!4042921))

(assert (= (and b!4042921 res!1646706) b!4042922))

(assert (= (and b!4042922 res!1646707) b!4042923))

(assert (= (and d!1199495 (not res!1646705)) b!4042924))

(assert (=> b!4042922 m!4639555))

(declare-fun m!4639961 () Bool)

(assert (=> b!4042922 m!4639961))

(assert (=> b!4042923 m!4639565))

(declare-fun m!4639963 () Bool)

(assert (=> b!4042923 m!4639963))

(assert (=> b!4042923 m!4639565))

(assert (=> b!4042923 m!4639963))

(declare-fun m!4639965 () Bool)

(assert (=> b!4042923 m!4639965))

(declare-fun m!4639967 () Bool)

(assert (=> b!4042924 m!4639967))

(assert (=> b!4042924 m!4639203))

(assert (=> b!4042517 d!1199495))

(declare-fun d!1199499 () Bool)

(assert (=> d!1199499 (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 lt!1438778))))

(declare-fun lt!1438981 () Unit!62477)

(assert (=> d!1199499 (= lt!1438981 (choose!24505 lt!1438798 lt!1438778))))

(assert (=> d!1199499 (= (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438798 lt!1438778) lt!1438981)))

(declare-fun bs!591042 () Bool)

(assert (= bs!591042 d!1199499))

(assert (=> bs!591042 m!4639283))

(assert (=> bs!591042 m!4639283))

(declare-fun m!4639969 () Bool)

(assert (=> bs!591042 m!4639969))

(declare-fun m!4639971 () Bool)

(assert (=> bs!591042 m!4639971))

(assert (=> b!4042517 d!1199499))

(declare-fun d!1199501 () Bool)

(declare-fun fromListB!2346 (List!43373) BalanceConc!25864)

(assert (=> d!1199501 (= (seqFromList!5141 lt!1438798) (fromListB!2346 lt!1438798))))

(declare-fun bs!591044 () Bool)

(assert (= bs!591044 d!1199501))

(declare-fun m!4639975 () Bool)

(assert (=> bs!591044 m!4639975))

(assert (=> b!4042517 d!1199501))

(declare-fun b!4042929 () Bool)

(declare-fun e!2508444 () Bool)

(declare-fun e!2508445 () Bool)

(assert (=> b!4042929 (= e!2508444 e!2508445)))

(declare-fun res!1646712 () Bool)

(assert (=> b!4042929 (=> (not res!1646712) (not e!2508445))))

(assert (=> b!4042929 (= res!1646712 (not ((_ is Nil!43249) lt!1438785)))))

(declare-fun b!4042930 () Bool)

(declare-fun res!1646713 () Bool)

(assert (=> b!4042930 (=> (not res!1646713) (not e!2508445))))

(assert (=> b!4042930 (= res!1646713 (= (head!8555 lt!1438792) (head!8555 lt!1438785)))))

(declare-fun d!1199505 () Bool)

(declare-fun e!2508446 () Bool)

(assert (=> d!1199505 e!2508446))

(declare-fun res!1646711 () Bool)

(assert (=> d!1199505 (=> res!1646711 e!2508446)))

(declare-fun lt!1438986 () Bool)

(assert (=> d!1199505 (= res!1646711 (not lt!1438986))))

(assert (=> d!1199505 (= lt!1438986 e!2508444)))

(declare-fun res!1646714 () Bool)

(assert (=> d!1199505 (=> res!1646714 e!2508444)))

(assert (=> d!1199505 (= res!1646714 ((_ is Nil!43249) lt!1438792))))

(assert (=> d!1199505 (= (isPrefix!4011 lt!1438792 lt!1438785) lt!1438986)))

(declare-fun b!4042931 () Bool)

(assert (=> b!4042931 (= e!2508445 (isPrefix!4011 (tail!6287 lt!1438792) (tail!6287 lt!1438785)))))

(declare-fun b!4042932 () Bool)

(assert (=> b!4042932 (= e!2508446 (>= (size!32333 lt!1438785) (size!32333 lt!1438792)))))

(assert (= (and d!1199505 (not res!1646714)) b!4042929))

(assert (= (and b!4042929 res!1646712) b!4042930))

(assert (= (and b!4042930 res!1646713) b!4042931))

(assert (= (and d!1199505 (not res!1646711)) b!4042932))

(declare-fun m!4639989 () Bool)

(assert (=> b!4042930 m!4639989))

(declare-fun m!4639993 () Bool)

(assert (=> b!4042930 m!4639993))

(declare-fun m!4639995 () Bool)

(assert (=> b!4042931 m!4639995))

(declare-fun m!4639997 () Bool)

(assert (=> b!4042931 m!4639997))

(assert (=> b!4042931 m!4639995))

(assert (=> b!4042931 m!4639997))

(declare-fun m!4639999 () Bool)

(assert (=> b!4042931 m!4639999))

(assert (=> b!4042932 m!4639471))

(assert (=> b!4042932 m!4639331))

(assert (=> b!4042521 d!1199505))

(declare-fun e!2508451 () Bool)

(declare-fun b!4042942 () Bool)

(declare-fun lt!1438989 () List!43373)

(assert (=> b!4042942 (= e!2508451 (or (not (= suffixResult!105 Nil!43249)) (= lt!1438989 lt!1438798)))))

(declare-fun b!4042940 () Bool)

(declare-fun e!2508452 () List!43373)

(assert (=> b!4042940 (= e!2508452 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) suffixResult!105)))))

(declare-fun b!4042939 () Bool)

(assert (=> b!4042939 (= e!2508452 suffixResult!105)))

(declare-fun b!4042941 () Bool)

(declare-fun res!1646720 () Bool)

(assert (=> b!4042941 (=> (not res!1646720) (not e!2508451))))

(assert (=> b!4042941 (= res!1646720 (= (size!32333 lt!1438989) (+ (size!32333 lt!1438798) (size!32333 suffixResult!105))))))

(declare-fun d!1199511 () Bool)

(assert (=> d!1199511 e!2508451))

(declare-fun res!1646719 () Bool)

(assert (=> d!1199511 (=> (not res!1646719) (not e!2508451))))

(assert (=> d!1199511 (= res!1646719 (= (content!6581 lt!1438989) ((_ map or) (content!6581 lt!1438798) (content!6581 suffixResult!105))))))

(assert (=> d!1199511 (= lt!1438989 e!2508452)))

(declare-fun c!698437 () Bool)

(assert (=> d!1199511 (= c!698437 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199511 (= (++!11326 lt!1438798 suffixResult!105) lt!1438989)))

(assert (= (and d!1199511 c!698437) b!4042939))

(assert (= (and d!1199511 (not c!698437)) b!4042940))

(assert (= (and d!1199511 res!1646719) b!4042941))

(assert (= (and b!4042941 res!1646720) b!4042942))

(declare-fun m!4640003 () Bool)

(assert (=> b!4042940 m!4640003))

(declare-fun m!4640005 () Bool)

(assert (=> b!4042941 m!4640005))

(assert (=> b!4042941 m!4639203))

(declare-fun m!4640007 () Bool)

(assert (=> b!4042941 m!4640007))

(declare-fun m!4640009 () Bool)

(assert (=> d!1199511 m!4640009))

(assert (=> d!1199511 m!4639353))

(declare-fun m!4640011 () Bool)

(assert (=> d!1199511 m!4640011))

(assert (=> b!4042520 d!1199511))

(declare-fun d!1199515 () Bool)

(declare-fun e!2508460 () Bool)

(assert (=> d!1199515 e!2508460))

(declare-fun res!1646727 () Bool)

(assert (=> d!1199515 (=> (not res!1646727) (not e!2508460))))

(assert (=> d!1199515 (= res!1646727 (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))))))

(declare-fun Unit!62479 () Unit!62477)

(assert (=> d!1199515 (= (lemmaInv!1133 (transformation!6924 (rule!9998 token!484))) Unit!62479)))

(declare-fun b!4042953 () Bool)

(assert (=> b!4042953 (= e!2508460 (equivClasses!2858 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))))))

(assert (= (and d!1199515 res!1646727) b!4042953))

(declare-fun m!4640021 () Bool)

(assert (=> d!1199515 m!4640021))

(declare-fun m!4640023 () Bool)

(assert (=> b!4042953 m!4640023))

(assert (=> b!4042520 d!1199515))

(declare-fun d!1199527 () Bool)

(declare-fun res!1646736 () Bool)

(declare-fun e!2508471 () Bool)

(assert (=> d!1199527 (=> (not res!1646736) (not e!2508471))))

(declare-fun validRegex!5351 (Regex!11829) Bool)

(assert (=> d!1199527 (= res!1646736 (validRegex!5351 (regex!6924 (rule!9998 token!484))))))

(assert (=> d!1199527 (= (ruleValid!2854 thiss!21717 (rule!9998 token!484)) e!2508471)))

(declare-fun b!4042973 () Bool)

(declare-fun res!1646737 () Bool)

(assert (=> b!4042973 (=> (not res!1646737) (not e!2508471))))

(declare-fun nullable!4151 (Regex!11829) Bool)

(assert (=> b!4042973 (= res!1646737 (not (nullable!4151 (regex!6924 (rule!9998 token!484)))))))

(declare-fun b!4042974 () Bool)

(assert (=> b!4042974 (= e!2508471 (not (= (tag!7784 (rule!9998 token!484)) (String!49489 ""))))))

(assert (= (and d!1199527 res!1646736) b!4042973))

(assert (= (and b!4042973 res!1646737) b!4042974))

(declare-fun m!4640049 () Bool)

(assert (=> d!1199527 m!4640049))

(declare-fun m!4640051 () Bool)

(assert (=> b!4042973 m!4640051))

(assert (=> b!4042520 d!1199527))

(declare-fun d!1199533 () Bool)

(assert (=> d!1199533 (ruleValid!2854 thiss!21717 (rule!9998 token!484))))

(declare-fun lt!1439001 () Unit!62477)

(declare-fun choose!24507 (LexerInterface!6513 Rule!13648 List!43375) Unit!62477)

(assert (=> d!1199533 (= lt!1439001 (choose!24507 thiss!21717 (rule!9998 token!484) rules!2999))))

(assert (=> d!1199533 (contains!8595 rules!2999 (rule!9998 token!484))))

(assert (=> d!1199533 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1924 thiss!21717 (rule!9998 token!484) rules!2999) lt!1439001)))

(declare-fun bs!591047 () Bool)

(assert (= bs!591047 d!1199533))

(assert (=> bs!591047 m!4639189))

(declare-fun m!4640053 () Bool)

(assert (=> bs!591047 m!4640053))

(declare-fun m!4640055 () Bool)

(assert (=> bs!591047 m!4640055))

(assert (=> b!4042520 d!1199533))

(declare-fun b!4042986 () Bool)

(declare-fun e!2508486 () Option!9338)

(declare-fun lt!1439002 () Option!9338)

(declare-fun lt!1439005 () Option!9338)

(assert (=> b!4042986 (= e!2508486 (ite (and ((_ is None!9337) lt!1439002) ((_ is None!9337) lt!1439005)) None!9337 (ite ((_ is None!9337) lt!1439005) lt!1439002 (ite ((_ is None!9337) lt!1439002) lt!1439005 (ite (>= (size!32334 (_1!24299 (v!39739 lt!1439002))) (size!32334 (_1!24299 (v!39739 lt!1439005)))) lt!1439002 lt!1439005)))))))

(declare-fun call!287525 () Option!9338)

(assert (=> b!4042986 (= lt!1439002 call!287525)))

(assert (=> b!4042986 (= lt!1439005 (maxPrefix!3811 thiss!21717 (t!335214 rules!2999) lt!1438775))))

(declare-fun b!4042987 () Bool)

(declare-fun res!1646744 () Bool)

(declare-fun e!2508487 () Bool)

(assert (=> b!4042987 (=> (not res!1646744) (not e!2508487))))

(declare-fun lt!1439006 () Option!9338)

(assert (=> b!4042987 (= res!1646744 (< (size!32333 (_2!24299 (get!14192 lt!1439006))) (size!32333 lt!1438775)))))

(declare-fun bm!287520 () Bool)

(assert (=> bm!287520 (= call!287525 (maxPrefixOneRule!2823 thiss!21717 (h!48671 rules!2999) lt!1438775))))

(declare-fun b!4042988 () Bool)

(declare-fun res!1646742 () Bool)

(assert (=> b!4042988 (=> (not res!1646742) (not e!2508487))))

(assert (=> b!4042988 (= res!1646742 (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))))))

(declare-fun b!4042989 () Bool)

(declare-fun e!2508485 () Bool)

(assert (=> b!4042989 (= e!2508485 e!2508487)))

(declare-fun res!1646741 () Bool)

(assert (=> b!4042989 (=> (not res!1646741) (not e!2508487))))

(assert (=> b!4042989 (= res!1646741 (isDefined!7105 lt!1439006))))

(declare-fun d!1199535 () Bool)

(assert (=> d!1199535 e!2508485))

(declare-fun res!1646738 () Bool)

(assert (=> d!1199535 (=> res!1646738 e!2508485)))

(assert (=> d!1199535 (= res!1646738 (isEmpty!25816 lt!1439006))))

(assert (=> d!1199535 (= lt!1439006 e!2508486)))

(declare-fun c!698442 () Bool)

(assert (=> d!1199535 (= c!698442 (and ((_ is Cons!43251) rules!2999) ((_ is Nil!43251) (t!335214 rules!2999))))))

(declare-fun lt!1439003 () Unit!62477)

(declare-fun lt!1439004 () Unit!62477)

(assert (=> d!1199535 (= lt!1439003 lt!1439004)))

(assert (=> d!1199535 (isPrefix!4011 lt!1438775 lt!1438775)))

(assert (=> d!1199535 (= lt!1439004 (lemmaIsPrefixRefl!2578 lt!1438775 lt!1438775))))

(assert (=> d!1199535 (rulesValidInductive!2526 thiss!21717 rules!2999)))

(assert (=> d!1199535 (= (maxPrefix!3811 thiss!21717 rules!2999 lt!1438775) lt!1439006)))

(declare-fun b!4042990 () Bool)

(assert (=> b!4042990 (= e!2508486 call!287525)))

(declare-fun b!4042991 () Bool)

(declare-fun res!1646743 () Bool)

(assert (=> b!4042991 (=> (not res!1646743) (not e!2508487))))

(assert (=> b!4042991 (= res!1646743 (= (value!217968 (_1!24299 (get!14192 lt!1439006))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006)))))))))

(declare-fun b!4042992 () Bool)

(declare-fun res!1646739 () Bool)

(assert (=> b!4042992 (=> (not res!1646739) (not e!2508487))))

(assert (=> b!4042992 (= res!1646739 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))) (_2!24299 (get!14192 lt!1439006))) lt!1438775))))

(declare-fun b!4042993 () Bool)

(assert (=> b!4042993 (= e!2508487 (contains!8595 rules!2999 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))))

(declare-fun b!4042994 () Bool)

(declare-fun res!1646740 () Bool)

(assert (=> b!4042994 (=> (not res!1646740) (not e!2508487))))

(assert (=> b!4042994 (= res!1646740 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))) (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006)))))))

(assert (= (and d!1199535 c!698442) b!4042990))

(assert (= (and d!1199535 (not c!698442)) b!4042986))

(assert (= (or b!4042990 b!4042986) bm!287520))

(assert (= (and d!1199535 (not res!1646738)) b!4042989))

(assert (= (and b!4042989 res!1646741) b!4042994))

(assert (= (and b!4042994 res!1646740) b!4042987))

(assert (= (and b!4042987 res!1646744) b!4042992))

(assert (= (and b!4042992 res!1646739) b!4042991))

(assert (= (and b!4042991 res!1646743) b!4042988))

(assert (= (and b!4042988 res!1646742) b!4042993))

(declare-fun m!4640061 () Bool)

(assert (=> b!4042991 m!4640061))

(declare-fun m!4640063 () Bool)

(assert (=> b!4042991 m!4640063))

(assert (=> b!4042991 m!4640063))

(declare-fun m!4640065 () Bool)

(assert (=> b!4042991 m!4640065))

(assert (=> b!4042987 m!4640061))

(declare-fun m!4640067 () Bool)

(assert (=> b!4042987 m!4640067))

(assert (=> b!4042987 m!4639359))

(declare-fun m!4640069 () Bool)

(assert (=> b!4042986 m!4640069))

(assert (=> b!4042988 m!4640061))

(declare-fun m!4640071 () Bool)

(assert (=> b!4042988 m!4640071))

(assert (=> b!4042988 m!4640071))

(declare-fun m!4640073 () Bool)

(assert (=> b!4042988 m!4640073))

(assert (=> b!4042988 m!4640073))

(declare-fun m!4640075 () Bool)

(assert (=> b!4042988 m!4640075))

(assert (=> b!4042992 m!4640061))

(assert (=> b!4042992 m!4640071))

(assert (=> b!4042992 m!4640071))

(assert (=> b!4042992 m!4640073))

(assert (=> b!4042992 m!4640073))

(declare-fun m!4640077 () Bool)

(assert (=> b!4042992 m!4640077))

(assert (=> b!4042993 m!4640061))

(declare-fun m!4640079 () Bool)

(assert (=> b!4042993 m!4640079))

(declare-fun m!4640081 () Bool)

(assert (=> bm!287520 m!4640081))

(declare-fun m!4640083 () Bool)

(assert (=> b!4042989 m!4640083))

(assert (=> b!4042994 m!4640061))

(assert (=> b!4042994 m!4640071))

(assert (=> b!4042994 m!4640071))

(assert (=> b!4042994 m!4640073))

(declare-fun m!4640085 () Bool)

(assert (=> d!1199535 m!4640085))

(assert (=> d!1199535 m!4639259))

(assert (=> d!1199535 m!4639261))

(assert (=> d!1199535 m!4639499))

(assert (=> b!4042503 d!1199535))

(declare-fun e!2508495 () Bool)

(declare-fun lt!1439007 () List!43373)

(declare-fun b!4043019 () Bool)

(assert (=> b!4043019 (= e!2508495 (or (not (= suffix!1299 Nil!43249)) (= lt!1439007 prefix!494)))))

(declare-fun b!4043017 () Bool)

(declare-fun e!2508496 () List!43373)

(assert (=> b!4043017 (= e!2508496 (Cons!43249 (h!48669 prefix!494) (++!11326 (t!335212 prefix!494) suffix!1299)))))

(declare-fun b!4043016 () Bool)

(assert (=> b!4043016 (= e!2508496 suffix!1299)))

(declare-fun b!4043018 () Bool)

(declare-fun res!1646746 () Bool)

(assert (=> b!4043018 (=> (not res!1646746) (not e!2508495))))

(assert (=> b!4043018 (= res!1646746 (= (size!32333 lt!1439007) (+ (size!32333 prefix!494) (size!32333 suffix!1299))))))

(declare-fun d!1199537 () Bool)

(assert (=> d!1199537 e!2508495))

(declare-fun res!1646745 () Bool)

(assert (=> d!1199537 (=> (not res!1646745) (not e!2508495))))

(assert (=> d!1199537 (= res!1646745 (= (content!6581 lt!1439007) ((_ map or) (content!6581 prefix!494) (content!6581 suffix!1299))))))

(assert (=> d!1199537 (= lt!1439007 e!2508496)))

(declare-fun c!698443 () Bool)

(assert (=> d!1199537 (= c!698443 ((_ is Nil!43249) prefix!494))))

(assert (=> d!1199537 (= (++!11326 prefix!494 suffix!1299) lt!1439007)))

(assert (= (and d!1199537 c!698443) b!4043016))

(assert (= (and d!1199537 (not c!698443)) b!4043017))

(assert (= (and d!1199537 res!1646745) b!4043018))

(assert (= (and b!4043018 res!1646746) b!4043019))

(declare-fun m!4640087 () Bool)

(assert (=> b!4043017 m!4640087))

(declare-fun m!4640089 () Bool)

(assert (=> b!4043018 m!4640089))

(assert (=> b!4043018 m!4639205))

(assert (=> b!4043018 m!4639241))

(declare-fun m!4640091 () Bool)

(assert (=> d!1199537 m!4640091))

(declare-fun m!4640093 () Bool)

(assert (=> d!1199537 m!4640093))

(declare-fun m!4640095 () Bool)

(assert (=> d!1199537 m!4640095))

(assert (=> b!4042503 d!1199537))

(declare-fun e!2508497 () Bool)

(declare-fun b!4043023 () Bool)

(declare-fun lt!1439008 () List!43373)

(assert (=> b!4043023 (= e!2508497 (or (not (= lt!1438778 Nil!43249)) (= lt!1439008 lt!1438798)))))

(declare-fun b!4043021 () Bool)

(declare-fun e!2508498 () List!43373)

(assert (=> b!4043021 (= e!2508498 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) lt!1438778)))))

(declare-fun b!4043020 () Bool)

(assert (=> b!4043020 (= e!2508498 lt!1438778)))

(declare-fun b!4043022 () Bool)

(declare-fun res!1646748 () Bool)

(assert (=> b!4043022 (=> (not res!1646748) (not e!2508497))))

(assert (=> b!4043022 (= res!1646748 (= (size!32333 lt!1439008) (+ (size!32333 lt!1438798) (size!32333 lt!1438778))))))

(declare-fun d!1199539 () Bool)

(assert (=> d!1199539 e!2508497))

(declare-fun res!1646747 () Bool)

(assert (=> d!1199539 (=> (not res!1646747) (not e!2508497))))

(assert (=> d!1199539 (= res!1646747 (= (content!6581 lt!1439008) ((_ map or) (content!6581 lt!1438798) (content!6581 lt!1438778))))))

(assert (=> d!1199539 (= lt!1439008 e!2508498)))

(declare-fun c!698444 () Bool)

(assert (=> d!1199539 (= c!698444 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199539 (= (++!11326 lt!1438798 lt!1438778) lt!1439008)))

(assert (= (and d!1199539 c!698444) b!4043020))

(assert (= (and d!1199539 (not c!698444)) b!4043021))

(assert (= (and d!1199539 res!1646747) b!4043022))

(assert (= (and b!4043022 res!1646748) b!4043023))

(declare-fun m!4640097 () Bool)

(assert (=> b!4043021 m!4640097))

(declare-fun m!4640099 () Bool)

(assert (=> b!4043022 m!4640099))

(assert (=> b!4043022 m!4639203))

(declare-fun m!4640101 () Bool)

(assert (=> b!4043022 m!4640101))

(declare-fun m!4640103 () Bool)

(assert (=> d!1199539 m!4640103))

(assert (=> d!1199539 m!4639353))

(declare-fun m!4640105 () Bool)

(assert (=> d!1199539 m!4640105))

(assert (=> b!4042524 d!1199539))

(declare-fun b!4043027 () Bool)

(declare-fun lt!1439009 () List!43373)

(declare-fun e!2508499 () Bool)

(assert (=> b!4043027 (= e!2508499 (or (not (= suffix!1299 Nil!43249)) (= lt!1439009 lt!1438787)))))

(declare-fun b!4043025 () Bool)

(declare-fun e!2508500 () List!43373)

(assert (=> b!4043025 (= e!2508500 (Cons!43249 (h!48669 lt!1438787) (++!11326 (t!335212 lt!1438787) suffix!1299)))))

(declare-fun b!4043024 () Bool)

(assert (=> b!4043024 (= e!2508500 suffix!1299)))

(declare-fun b!4043026 () Bool)

(declare-fun res!1646750 () Bool)

(assert (=> b!4043026 (=> (not res!1646750) (not e!2508499))))

(assert (=> b!4043026 (= res!1646750 (= (size!32333 lt!1439009) (+ (size!32333 lt!1438787) (size!32333 suffix!1299))))))

(declare-fun d!1199541 () Bool)

(assert (=> d!1199541 e!2508499))

(declare-fun res!1646749 () Bool)

(assert (=> d!1199541 (=> (not res!1646749) (not e!2508499))))

(assert (=> d!1199541 (= res!1646749 (= (content!6581 lt!1439009) ((_ map or) (content!6581 lt!1438787) (content!6581 suffix!1299))))))

(assert (=> d!1199541 (= lt!1439009 e!2508500)))

(declare-fun c!698445 () Bool)

(assert (=> d!1199541 (= c!698445 ((_ is Nil!43249) lt!1438787))))

(assert (=> d!1199541 (= (++!11326 lt!1438787 suffix!1299) lt!1439009)))

(assert (= (and d!1199541 c!698445) b!4043024))

(assert (= (and d!1199541 (not c!698445)) b!4043025))

(assert (= (and d!1199541 res!1646749) b!4043026))

(assert (= (and b!4043026 res!1646750) b!4043027))

(declare-fun m!4640107 () Bool)

(assert (=> b!4043025 m!4640107))

(declare-fun m!4640109 () Bool)

(assert (=> b!4043026 m!4640109))

(declare-fun m!4640111 () Bool)

(assert (=> b!4043026 m!4640111))

(assert (=> b!4043026 m!4639241))

(declare-fun m!4640113 () Bool)

(assert (=> d!1199541 m!4640113))

(declare-fun m!4640115 () Bool)

(assert (=> d!1199541 m!4640115))

(assert (=> d!1199541 m!4640095))

(assert (=> b!4042524 d!1199541))

(declare-fun lt!1439010 () List!43373)

(declare-fun b!4043031 () Bool)

(declare-fun e!2508501 () Bool)

(assert (=> b!4043031 (= e!2508501 (or (not (= suffix!1299 Nil!43249)) (= lt!1439010 lt!1438769)))))

(declare-fun b!4043029 () Bool)

(declare-fun e!2508502 () List!43373)

(assert (=> b!4043029 (= e!2508502 (Cons!43249 (h!48669 lt!1438769) (++!11326 (t!335212 lt!1438769) suffix!1299)))))

(declare-fun b!4043028 () Bool)

(assert (=> b!4043028 (= e!2508502 suffix!1299)))

(declare-fun b!4043030 () Bool)

(declare-fun res!1646752 () Bool)

(assert (=> b!4043030 (=> (not res!1646752) (not e!2508501))))

(assert (=> b!4043030 (= res!1646752 (= (size!32333 lt!1439010) (+ (size!32333 lt!1438769) (size!32333 suffix!1299))))))

(declare-fun d!1199543 () Bool)

(assert (=> d!1199543 e!2508501))

(declare-fun res!1646751 () Bool)

(assert (=> d!1199543 (=> (not res!1646751) (not e!2508501))))

(assert (=> d!1199543 (= res!1646751 (= (content!6581 lt!1439010) ((_ map or) (content!6581 lt!1438769) (content!6581 suffix!1299))))))

(assert (=> d!1199543 (= lt!1439010 e!2508502)))

(declare-fun c!698446 () Bool)

(assert (=> d!1199543 (= c!698446 ((_ is Nil!43249) lt!1438769))))

(assert (=> d!1199543 (= (++!11326 lt!1438769 suffix!1299) lt!1439010)))

(assert (= (and d!1199543 c!698446) b!4043028))

(assert (= (and d!1199543 (not c!698446)) b!4043029))

(assert (= (and d!1199543 res!1646751) b!4043030))

(assert (= (and b!4043030 res!1646752) b!4043031))

(declare-fun m!4640117 () Bool)

(assert (=> b!4043029 m!4640117))

(declare-fun m!4640119 () Bool)

(assert (=> b!4043030 m!4640119))

(declare-fun m!4640121 () Bool)

(assert (=> b!4043030 m!4640121))

(assert (=> b!4043030 m!4639241))

(declare-fun m!4640123 () Bool)

(assert (=> d!1199543 m!4640123))

(declare-fun m!4640125 () Bool)

(assert (=> d!1199543 m!4640125))

(assert (=> d!1199543 m!4640095))

(assert (=> b!4042524 d!1199543))

(declare-fun d!1199545 () Bool)

(assert (=> d!1199545 (= (++!11326 (++!11326 lt!1438798 lt!1438769) suffix!1299) (++!11326 lt!1438798 (++!11326 lt!1438769 suffix!1299)))))

(declare-fun lt!1439013 () Unit!62477)

(declare-fun choose!24508 (List!43373 List!43373 List!43373) Unit!62477)

(assert (=> d!1199545 (= lt!1439013 (choose!24508 lt!1438798 lt!1438769 suffix!1299))))

(assert (=> d!1199545 (= (lemmaConcatAssociativity!2628 lt!1438798 lt!1438769 suffix!1299) lt!1439013)))

(declare-fun bs!591048 () Bool)

(assert (= bs!591048 d!1199545))

(assert (=> bs!591048 m!4639275))

(declare-fun m!4640127 () Bool)

(assert (=> bs!591048 m!4640127))

(assert (=> bs!591048 m!4639287))

(declare-fun m!4640129 () Bool)

(assert (=> bs!591048 m!4640129))

(assert (=> bs!591048 m!4639275))

(declare-fun m!4640131 () Bool)

(assert (=> bs!591048 m!4640131))

(assert (=> bs!591048 m!4639287))

(assert (=> b!4042524 d!1199545))

(declare-fun d!1199547 () Bool)

(declare-fun lt!1439014 () Int)

(assert (=> d!1199547 (>= lt!1439014 0)))

(declare-fun e!2508503 () Int)

(assert (=> d!1199547 (= lt!1439014 e!2508503)))

(declare-fun c!698447 () Bool)

(assert (=> d!1199547 (= c!698447 ((_ is Nil!43249) suffix!1299))))

(assert (=> d!1199547 (= (size!32333 suffix!1299) lt!1439014)))

(declare-fun b!4043032 () Bool)

(assert (=> b!4043032 (= e!2508503 0)))

(declare-fun b!4043033 () Bool)

(assert (=> b!4043033 (= e!2508503 (+ 1 (size!32333 (t!335212 suffix!1299))))))

(assert (= (and d!1199547 c!698447) b!4043032))

(assert (= (and d!1199547 (not c!698447)) b!4043033))

(declare-fun m!4640133 () Bool)

(assert (=> b!4043033 m!4640133))

(assert (=> b!4042523 d!1199547))

(declare-fun d!1199549 () Bool)

(declare-fun lt!1439015 () Int)

(assert (=> d!1199549 (>= lt!1439015 0)))

(declare-fun e!2508504 () Int)

(assert (=> d!1199549 (= lt!1439015 e!2508504)))

(declare-fun c!698448 () Bool)

(assert (=> d!1199549 (= c!698448 ((_ is Nil!43249) newSuffix!27))))

(assert (=> d!1199549 (= (size!32333 newSuffix!27) lt!1439015)))

(declare-fun b!4043034 () Bool)

(assert (=> b!4043034 (= e!2508504 0)))

(declare-fun b!4043035 () Bool)

(assert (=> b!4043035 (= e!2508504 (+ 1 (size!32333 (t!335212 newSuffix!27))))))

(assert (= (and d!1199549 c!698448) b!4043034))

(assert (= (and d!1199549 (not c!698448)) b!4043035))

(declare-fun m!4640135 () Bool)

(assert (=> b!4043035 m!4640135))

(assert (=> b!4042523 d!1199549))

(declare-fun b!4043046 () Bool)

(declare-fun res!1646755 () Bool)

(declare-fun e!2508512 () Bool)

(assert (=> b!4043046 (=> res!1646755 e!2508512)))

(assert (=> b!4043046 (= res!1646755 (not ((_ is IntegerValue!21464) (value!217968 token!484))))))

(declare-fun e!2508511 () Bool)

(assert (=> b!4043046 (= e!2508511 e!2508512)))

(declare-fun b!4043047 () Bool)

(declare-fun inv!17 (TokenValue!7154) Bool)

(assert (=> b!4043047 (= e!2508511 (inv!17 (value!217968 token!484)))))

(declare-fun b!4043048 () Bool)

(declare-fun e!2508513 () Bool)

(declare-fun inv!16 (TokenValue!7154) Bool)

(assert (=> b!4043048 (= e!2508513 (inv!16 (value!217968 token!484)))))

(declare-fun b!4043049 () Bool)

(assert (=> b!4043049 (= e!2508513 e!2508511)))

(declare-fun c!698453 () Bool)

(assert (=> b!4043049 (= c!698453 ((_ is IntegerValue!21463) (value!217968 token!484)))))

(declare-fun d!1199551 () Bool)

(declare-fun c!698454 () Bool)

(assert (=> d!1199551 (= c!698454 ((_ is IntegerValue!21462) (value!217968 token!484)))))

(assert (=> d!1199551 (= (inv!21 (value!217968 token!484)) e!2508513)))

(declare-fun b!4043050 () Bool)

(declare-fun inv!15 (TokenValue!7154) Bool)

(assert (=> b!4043050 (= e!2508512 (inv!15 (value!217968 token!484)))))

(assert (= (and d!1199551 c!698454) b!4043048))

(assert (= (and d!1199551 (not c!698454)) b!4043049))

(assert (= (and b!4043049 c!698453) b!4043047))

(assert (= (and b!4043049 (not c!698453)) b!4043046))

(assert (= (and b!4043046 (not res!1646755)) b!4043050))

(declare-fun m!4640137 () Bool)

(assert (=> b!4043047 m!4640137))

(declare-fun m!4640139 () Bool)

(assert (=> b!4043048 m!4640139))

(declare-fun m!4640141 () Bool)

(assert (=> b!4043050 m!4640141))

(assert (=> b!4042501 d!1199551))

(declare-fun b!4043079 () Bool)

(declare-fun res!1646775 () Bool)

(declare-fun e!2508534 () Bool)

(assert (=> b!4043079 (=> res!1646775 e!2508534)))

(assert (=> b!4043079 (= res!1646775 (not (isEmpty!25817 (tail!6287 lt!1438798))))))

(declare-fun d!1199553 () Bool)

(declare-fun e!2508531 () Bool)

(assert (=> d!1199553 e!2508531))

(declare-fun c!698463 () Bool)

(assert (=> d!1199553 (= c!698463 ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun lt!1439018 () Bool)

(declare-fun e!2508530 () Bool)

(assert (=> d!1199553 (= lt!1439018 e!2508530)))

(declare-fun c!698462 () Bool)

(assert (=> d!1199553 (= c!698462 (isEmpty!25817 lt!1438798))))

(assert (=> d!1199553 (validRegex!5351 (regex!6924 (rule!9998 token!484)))))

(assert (=> d!1199553 (= (matchR!5782 (regex!6924 (rule!9998 token!484)) lt!1438798) lt!1439018)))

(declare-fun b!4043080 () Bool)

(assert (=> b!4043080 (= e!2508534 (not (= (head!8555 lt!1438798) (c!698371 (regex!6924 (rule!9998 token!484))))))))

(declare-fun b!4043081 () Bool)

(declare-fun res!1646776 () Bool)

(declare-fun e!2508533 () Bool)

(assert (=> b!4043081 (=> res!1646776 e!2508533)))

(assert (=> b!4043081 (= res!1646776 (not ((_ is ElementMatch!11829) (regex!6924 (rule!9998 token!484)))))))

(declare-fun e!2508532 () Bool)

(assert (=> b!4043081 (= e!2508532 e!2508533)))

(declare-fun b!4043082 () Bool)

(assert (=> b!4043082 (= e!2508530 (nullable!4151 (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4043083 () Bool)

(declare-fun call!287528 () Bool)

(assert (=> b!4043083 (= e!2508531 (= lt!1439018 call!287528))))

(declare-fun b!4043084 () Bool)

(declare-fun e!2508528 () Bool)

(assert (=> b!4043084 (= e!2508528 (= (head!8555 lt!1438798) (c!698371 (regex!6924 (rule!9998 token!484)))))))

(declare-fun b!4043085 () Bool)

(assert (=> b!4043085 (= e!2508531 e!2508532)))

(declare-fun c!698461 () Bool)

(assert (=> b!4043085 (= c!698461 ((_ is EmptyLang!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4043086 () Bool)

(declare-fun derivativeStep!3557 (Regex!11829 C!23844) Regex!11829)

(assert (=> b!4043086 (= e!2508530 (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798)) (tail!6287 lt!1438798)))))

(declare-fun b!4043087 () Bool)

(assert (=> b!4043087 (= e!2508532 (not lt!1439018))))

(declare-fun b!4043088 () Bool)

(declare-fun e!2508529 () Bool)

(assert (=> b!4043088 (= e!2508533 e!2508529)))

(declare-fun res!1646772 () Bool)

(assert (=> b!4043088 (=> (not res!1646772) (not e!2508529))))

(assert (=> b!4043088 (= res!1646772 (not lt!1439018))))

(declare-fun b!4043089 () Bool)

(assert (=> b!4043089 (= e!2508529 e!2508534)))

(declare-fun res!1646773 () Bool)

(assert (=> b!4043089 (=> res!1646773 e!2508534)))

(assert (=> b!4043089 (= res!1646773 call!287528)))

(declare-fun b!4043090 () Bool)

(declare-fun res!1646777 () Bool)

(assert (=> b!4043090 (=> (not res!1646777) (not e!2508528))))

(assert (=> b!4043090 (= res!1646777 (not call!287528))))

(declare-fun b!4043091 () Bool)

(declare-fun res!1646778 () Bool)

(assert (=> b!4043091 (=> res!1646778 e!2508533)))

(assert (=> b!4043091 (= res!1646778 e!2508528)))

(declare-fun res!1646774 () Bool)

(assert (=> b!4043091 (=> (not res!1646774) (not e!2508528))))

(assert (=> b!4043091 (= res!1646774 lt!1439018)))

(declare-fun b!4043092 () Bool)

(declare-fun res!1646779 () Bool)

(assert (=> b!4043092 (=> (not res!1646779) (not e!2508528))))

(assert (=> b!4043092 (= res!1646779 (isEmpty!25817 (tail!6287 lt!1438798)))))

(declare-fun bm!287523 () Bool)

(assert (=> bm!287523 (= call!287528 (isEmpty!25817 lt!1438798))))

(assert (= (and d!1199553 c!698462) b!4043082))

(assert (= (and d!1199553 (not c!698462)) b!4043086))

(assert (= (and d!1199553 c!698463) b!4043083))

(assert (= (and d!1199553 (not c!698463)) b!4043085))

(assert (= (and b!4043085 c!698461) b!4043087))

(assert (= (and b!4043085 (not c!698461)) b!4043081))

(assert (= (and b!4043081 (not res!1646776)) b!4043091))

(assert (= (and b!4043091 res!1646774) b!4043090))

(assert (= (and b!4043090 res!1646777) b!4043092))

(assert (= (and b!4043092 res!1646779) b!4043084))

(assert (= (and b!4043091 (not res!1646778)) b!4043088))

(assert (= (and b!4043088 res!1646772) b!4043089))

(assert (= (and b!4043089 (not res!1646773)) b!4043079))

(assert (= (and b!4043079 (not res!1646775)) b!4043080))

(assert (= (or b!4043083 b!4043089 b!4043090) bm!287523))

(assert (=> b!4043092 m!4639565))

(assert (=> b!4043092 m!4639565))

(declare-fun m!4640143 () Bool)

(assert (=> b!4043092 m!4640143))

(assert (=> b!4043080 m!4639555))

(assert (=> b!4043084 m!4639555))

(assert (=> b!4043082 m!4640051))

(assert (=> b!4043086 m!4639555))

(assert (=> b!4043086 m!4639555))

(declare-fun m!4640145 () Bool)

(assert (=> b!4043086 m!4640145))

(assert (=> b!4043086 m!4639565))

(assert (=> b!4043086 m!4640145))

(assert (=> b!4043086 m!4639565))

(declare-fun m!4640147 () Bool)

(assert (=> b!4043086 m!4640147))

(assert (=> b!4043079 m!4639565))

(assert (=> b!4043079 m!4639565))

(assert (=> b!4043079 m!4640143))

(declare-fun m!4640149 () Bool)

(assert (=> bm!287523 m!4640149))

(assert (=> d!1199553 m!4640149))

(assert (=> d!1199553 m!4640049))

(assert (=> b!4042506 d!1199553))

(declare-fun b!4043093 () Bool)

(declare-fun e!2508535 () Bool)

(declare-fun e!2508536 () Bool)

(assert (=> b!4043093 (= e!2508535 e!2508536)))

(declare-fun res!1646781 () Bool)

(assert (=> b!4043093 (=> (not res!1646781) (not e!2508536))))

(assert (=> b!4043093 (= res!1646781 (not ((_ is Nil!43249) lt!1438785)))))

(declare-fun b!4043094 () Bool)

(declare-fun res!1646782 () Bool)

(assert (=> b!4043094 (=> (not res!1646782) (not e!2508536))))

(assert (=> b!4043094 (= res!1646782 (= (head!8555 lt!1438798) (head!8555 lt!1438785)))))

(declare-fun d!1199555 () Bool)

(declare-fun e!2508537 () Bool)

(assert (=> d!1199555 e!2508537))

(declare-fun res!1646780 () Bool)

(assert (=> d!1199555 (=> res!1646780 e!2508537)))

(declare-fun lt!1439019 () Bool)

(assert (=> d!1199555 (= res!1646780 (not lt!1439019))))

(assert (=> d!1199555 (= lt!1439019 e!2508535)))

(declare-fun res!1646783 () Bool)

(assert (=> d!1199555 (=> res!1646783 e!2508535)))

(assert (=> d!1199555 (= res!1646783 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199555 (= (isPrefix!4011 lt!1438798 lt!1438785) lt!1439019)))

(declare-fun b!4043095 () Bool)

(assert (=> b!4043095 (= e!2508536 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438785)))))

(declare-fun b!4043096 () Bool)

(assert (=> b!4043096 (= e!2508537 (>= (size!32333 lt!1438785) (size!32333 lt!1438798)))))

(assert (= (and d!1199555 (not res!1646783)) b!4043093))

(assert (= (and b!4043093 res!1646781) b!4043094))

(assert (= (and b!4043094 res!1646782) b!4043095))

(assert (= (and d!1199555 (not res!1646780)) b!4043096))

(assert (=> b!4043094 m!4639555))

(assert (=> b!4043094 m!4639993))

(assert (=> b!4043095 m!4639565))

(assert (=> b!4043095 m!4639997))

(assert (=> b!4043095 m!4639565))

(assert (=> b!4043095 m!4639997))

(declare-fun m!4640151 () Bool)

(assert (=> b!4043095 m!4640151))

(assert (=> b!4043096 m!4639471))

(assert (=> b!4043096 m!4639203))

(assert (=> b!4042506 d!1199555))

(declare-fun d!1199557 () Bool)

(assert (=> d!1199557 (isPrefix!4011 lt!1438798 (++!11326 prefix!494 newSuffix!27))))

(declare-fun lt!1439022 () Unit!62477)

(declare-fun choose!24511 (List!43373 List!43373 List!43373) Unit!62477)

(assert (=> d!1199557 (= lt!1439022 (choose!24511 lt!1438798 prefix!494 newSuffix!27))))

(assert (=> d!1199557 (isPrefix!4011 lt!1438798 prefix!494)))

(assert (=> d!1199557 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!804 lt!1438798 prefix!494 newSuffix!27) lt!1439022)))

(declare-fun bs!591049 () Bool)

(assert (= bs!591049 d!1199557))

(assert (=> bs!591049 m!4639263))

(assert (=> bs!591049 m!4639263))

(declare-fun m!4640153 () Bool)

(assert (=> bs!591049 m!4640153))

(declare-fun m!4640155 () Bool)

(assert (=> bs!591049 m!4640155))

(assert (=> bs!591049 m!4639279))

(assert (=> b!4042506 d!1199557))

(declare-fun d!1199559 () Bool)

(assert (=> d!1199559 (isPrefix!4011 lt!1438798 (++!11326 prefix!494 suffix!1299))))

(declare-fun lt!1439023 () Unit!62477)

(assert (=> d!1199559 (= lt!1439023 (choose!24511 lt!1438798 prefix!494 suffix!1299))))

(assert (=> d!1199559 (isPrefix!4011 lt!1438798 prefix!494)))

(assert (=> d!1199559 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!804 lt!1438798 prefix!494 suffix!1299) lt!1439023)))

(declare-fun bs!591050 () Bool)

(assert (= bs!591050 d!1199559))

(assert (=> bs!591050 m!4639341))

(assert (=> bs!591050 m!4639341))

(declare-fun m!4640157 () Bool)

(assert (=> bs!591050 m!4640157))

(declare-fun m!4640159 () Bool)

(assert (=> bs!591050 m!4640159))

(assert (=> bs!591050 m!4639279))

(assert (=> b!4042506 d!1199559))

(declare-fun b!4043097 () Bool)

(declare-fun e!2508538 () Bool)

(declare-fun e!2508539 () Bool)

(assert (=> b!4043097 (= e!2508538 e!2508539)))

(declare-fun res!1646785 () Bool)

(assert (=> b!4043097 (=> (not res!1646785) (not e!2508539))))

(assert (=> b!4043097 (= res!1646785 (not ((_ is Nil!43249) lt!1438775)))))

(declare-fun b!4043098 () Bool)

(declare-fun res!1646786 () Bool)

(assert (=> b!4043098 (=> (not res!1646786) (not e!2508539))))

(assert (=> b!4043098 (= res!1646786 (= (head!8555 prefix!494) (head!8555 lt!1438775)))))

(declare-fun d!1199561 () Bool)

(declare-fun e!2508540 () Bool)

(assert (=> d!1199561 e!2508540))

(declare-fun res!1646784 () Bool)

(assert (=> d!1199561 (=> res!1646784 e!2508540)))

(declare-fun lt!1439024 () Bool)

(assert (=> d!1199561 (= res!1646784 (not lt!1439024))))

(assert (=> d!1199561 (= lt!1439024 e!2508538)))

(declare-fun res!1646787 () Bool)

(assert (=> d!1199561 (=> res!1646787 e!2508538)))

(assert (=> d!1199561 (= res!1646787 ((_ is Nil!43249) prefix!494))))

(assert (=> d!1199561 (= (isPrefix!4011 prefix!494 lt!1438775) lt!1439024)))

(declare-fun b!4043099 () Bool)

(assert (=> b!4043099 (= e!2508539 (isPrefix!4011 (tail!6287 prefix!494) (tail!6287 lt!1438775)))))

(declare-fun b!4043100 () Bool)

(assert (=> b!4043100 (= e!2508540 (>= (size!32333 lt!1438775) (size!32333 prefix!494)))))

(assert (= (and d!1199561 (not res!1646787)) b!4043097))

(assert (= (and b!4043097 res!1646785) b!4043098))

(assert (= (and b!4043098 res!1646786) b!4043099))

(assert (= (and d!1199561 (not res!1646784)) b!4043100))

(declare-fun m!4640161 () Bool)

(assert (=> b!4043098 m!4640161))

(assert (=> b!4043098 m!4639387))

(declare-fun m!4640163 () Bool)

(assert (=> b!4043099 m!4640163))

(assert (=> b!4043099 m!4639361))

(assert (=> b!4043099 m!4640163))

(assert (=> b!4043099 m!4639361))

(declare-fun m!4640165 () Bool)

(assert (=> b!4043099 m!4640165))

(assert (=> b!4043100 m!4639359))

(assert (=> b!4043100 m!4639205))

(assert (=> b!4042525 d!1199561))

(declare-fun d!1199563 () Bool)

(assert (=> d!1199563 (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 suffixResult!105))))

(declare-fun lt!1439025 () Unit!62477)

(assert (=> d!1199563 (= lt!1439025 (choose!24505 lt!1438798 suffixResult!105))))

(assert (=> d!1199563 (= (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438798 suffixResult!105) lt!1439025)))

(declare-fun bs!591051 () Bool)

(assert (= bs!591051 d!1199563))

(assert (=> bs!591051 m!4639185))

(assert (=> bs!591051 m!4639185))

(declare-fun m!4640167 () Bool)

(assert (=> bs!591051 m!4640167))

(declare-fun m!4640169 () Bool)

(assert (=> bs!591051 m!4640169))

(assert (=> b!4042525 d!1199563))

(declare-fun b!4043101 () Bool)

(declare-fun e!2508541 () Bool)

(declare-fun e!2508542 () Bool)

(assert (=> b!4043101 (= e!2508541 e!2508542)))

(declare-fun res!1646789 () Bool)

(assert (=> b!4043101 (=> (not res!1646789) (not e!2508542))))

(assert (=> b!4043101 (= res!1646789 (not ((_ is Nil!43249) lt!1438775)))))

(declare-fun b!4043102 () Bool)

(declare-fun res!1646790 () Bool)

(assert (=> b!4043102 (=> (not res!1646790) (not e!2508542))))

(assert (=> b!4043102 (= res!1646790 (= (head!8555 lt!1438798) (head!8555 lt!1438775)))))

(declare-fun d!1199565 () Bool)

(declare-fun e!2508543 () Bool)

(assert (=> d!1199565 e!2508543))

(declare-fun res!1646788 () Bool)

(assert (=> d!1199565 (=> res!1646788 e!2508543)))

(declare-fun lt!1439026 () Bool)

(assert (=> d!1199565 (= res!1646788 (not lt!1439026))))

(assert (=> d!1199565 (= lt!1439026 e!2508541)))

(declare-fun res!1646791 () Bool)

(assert (=> d!1199565 (=> res!1646791 e!2508541)))

(assert (=> d!1199565 (= res!1646791 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199565 (= (isPrefix!4011 lt!1438798 lt!1438775) lt!1439026)))

(declare-fun b!4043103 () Bool)

(assert (=> b!4043103 (= e!2508542 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438775)))))

(declare-fun b!4043104 () Bool)

(assert (=> b!4043104 (= e!2508543 (>= (size!32333 lt!1438775) (size!32333 lt!1438798)))))

(assert (= (and d!1199565 (not res!1646791)) b!4043101))

(assert (= (and b!4043101 res!1646789) b!4043102))

(assert (= (and b!4043102 res!1646790) b!4043103))

(assert (= (and d!1199565 (not res!1646788)) b!4043104))

(assert (=> b!4043102 m!4639555))

(assert (=> b!4043102 m!4639387))

(assert (=> b!4043103 m!4639565))

(assert (=> b!4043103 m!4639361))

(assert (=> b!4043103 m!4639565))

(assert (=> b!4043103 m!4639361))

(declare-fun m!4640171 () Bool)

(assert (=> b!4043103 m!4640171))

(assert (=> b!4043104 m!4639359))

(assert (=> b!4043104 m!4639203))

(assert (=> b!4042525 d!1199565))

(declare-fun d!1199567 () Bool)

(assert (=> d!1199567 (isPrefix!4011 prefix!494 (++!11326 prefix!494 suffix!1299))))

(declare-fun lt!1439027 () Unit!62477)

(assert (=> d!1199567 (= lt!1439027 (choose!24505 prefix!494 suffix!1299))))

(assert (=> d!1199567 (= (lemmaConcatTwoListThenFirstIsPrefix!2846 prefix!494 suffix!1299) lt!1439027)))

(declare-fun bs!591052 () Bool)

(assert (= bs!591052 d!1199567))

(assert (=> bs!591052 m!4639341))

(assert (=> bs!591052 m!4639341))

(declare-fun m!4640173 () Bool)

(assert (=> bs!591052 m!4640173))

(declare-fun m!4640175 () Bool)

(assert (=> bs!591052 m!4640175))

(assert (=> b!4042525 d!1199567))

(declare-fun b!4043105 () Bool)

(declare-fun e!2508544 () Bool)

(declare-fun e!2508545 () Bool)

(assert (=> b!4043105 (= e!2508544 e!2508545)))

(declare-fun res!1646793 () Bool)

(assert (=> b!4043105 (=> (not res!1646793) (not e!2508545))))

(assert (=> b!4043105 (= res!1646793 (not ((_ is Nil!43249) lt!1438767)))))

(declare-fun b!4043106 () Bool)

(declare-fun res!1646794 () Bool)

(assert (=> b!4043106 (=> (not res!1646794) (not e!2508545))))

(assert (=> b!4043106 (= res!1646794 (= (head!8555 lt!1438798) (head!8555 lt!1438767)))))

(declare-fun d!1199569 () Bool)

(declare-fun e!2508546 () Bool)

(assert (=> d!1199569 e!2508546))

(declare-fun res!1646792 () Bool)

(assert (=> d!1199569 (=> res!1646792 e!2508546)))

(declare-fun lt!1439028 () Bool)

(assert (=> d!1199569 (= res!1646792 (not lt!1439028))))

(assert (=> d!1199569 (= lt!1439028 e!2508544)))

(declare-fun res!1646795 () Bool)

(assert (=> d!1199569 (=> res!1646795 e!2508544)))

(assert (=> d!1199569 (= res!1646795 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199569 (= (isPrefix!4011 lt!1438798 lt!1438767) lt!1439028)))

(declare-fun b!4043107 () Bool)

(assert (=> b!4043107 (= e!2508545 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438767)))))

(declare-fun b!4043108 () Bool)

(assert (=> b!4043108 (= e!2508546 (>= (size!32333 lt!1438767) (size!32333 lt!1438798)))))

(assert (= (and d!1199569 (not res!1646795)) b!4043105))

(assert (= (and b!4043105 res!1646793) b!4043106))

(assert (= (and b!4043106 res!1646794) b!4043107))

(assert (= (and d!1199569 (not res!1646792)) b!4043108))

(assert (=> b!4043106 m!4639555))

(declare-fun m!4640177 () Bool)

(assert (=> b!4043106 m!4640177))

(assert (=> b!4043107 m!4639565))

(declare-fun m!4640179 () Bool)

(assert (=> b!4043107 m!4640179))

(assert (=> b!4043107 m!4639565))

(assert (=> b!4043107 m!4640179))

(declare-fun m!4640181 () Bool)

(assert (=> b!4043107 m!4640181))

(declare-fun m!4640183 () Bool)

(assert (=> b!4043108 m!4640183))

(assert (=> b!4043108 m!4639203))

(assert (=> b!4042525 d!1199569))

(declare-fun b!4043109 () Bool)

(declare-fun e!2508547 () Bool)

(declare-fun e!2508548 () Bool)

(assert (=> b!4043109 (= e!2508547 e!2508548)))

(declare-fun res!1646797 () Bool)

(assert (=> b!4043109 (=> (not res!1646797) (not e!2508548))))

(assert (=> b!4043109 (= res!1646797 (not ((_ is Nil!43249) suffix!1299)))))

(declare-fun b!4043110 () Bool)

(declare-fun res!1646798 () Bool)

(assert (=> b!4043110 (=> (not res!1646798) (not e!2508548))))

(assert (=> b!4043110 (= res!1646798 (= (head!8555 newSuffix!27) (head!8555 suffix!1299)))))

(declare-fun d!1199571 () Bool)

(declare-fun e!2508549 () Bool)

(assert (=> d!1199571 e!2508549))

(declare-fun res!1646796 () Bool)

(assert (=> d!1199571 (=> res!1646796 e!2508549)))

(declare-fun lt!1439029 () Bool)

(assert (=> d!1199571 (= res!1646796 (not lt!1439029))))

(assert (=> d!1199571 (= lt!1439029 e!2508547)))

(declare-fun res!1646799 () Bool)

(assert (=> d!1199571 (=> res!1646799 e!2508547)))

(assert (=> d!1199571 (= res!1646799 ((_ is Nil!43249) newSuffix!27))))

(assert (=> d!1199571 (= (isPrefix!4011 newSuffix!27 suffix!1299) lt!1439029)))

(declare-fun b!4043111 () Bool)

(assert (=> b!4043111 (= e!2508548 (isPrefix!4011 (tail!6287 newSuffix!27) (tail!6287 suffix!1299)))))

(declare-fun b!4043112 () Bool)

(assert (=> b!4043112 (= e!2508549 (>= (size!32333 suffix!1299) (size!32333 newSuffix!27)))))

(assert (= (and d!1199571 (not res!1646799)) b!4043109))

(assert (= (and b!4043109 res!1646797) b!4043110))

(assert (= (and b!4043110 res!1646798) b!4043111))

(assert (= (and d!1199571 (not res!1646796)) b!4043112))

(declare-fun m!4640185 () Bool)

(assert (=> b!4043110 m!4640185))

(declare-fun m!4640187 () Bool)

(assert (=> b!4043110 m!4640187))

(declare-fun m!4640189 () Bool)

(assert (=> b!4043111 m!4640189))

(declare-fun m!4640191 () Bool)

(assert (=> b!4043111 m!4640191))

(assert (=> b!4043111 m!4640189))

(assert (=> b!4043111 m!4640191))

(declare-fun m!4640193 () Bool)

(assert (=> b!4043111 m!4640193))

(assert (=> b!4043112 m!4639241))

(assert (=> b!4043112 m!4639243))

(assert (=> b!4042504 d!1199571))

(declare-fun d!1199573 () Bool)

(assert (=> d!1199573 (= (isEmpty!25813 rules!2999) ((_ is Nil!43251) rules!2999))))

(assert (=> b!4042530 d!1199573))

(declare-fun d!1199575 () Bool)

(assert (=> d!1199575 (= (inv!57802 (tag!7784 (rule!9998 token!484))) (= (mod (str.len (value!217967 (tag!7784 (rule!9998 token!484)))) 2) 0))))

(assert (=> b!4042529 d!1199575))

(declare-fun d!1199577 () Bool)

(declare-fun res!1646800 () Bool)

(declare-fun e!2508550 () Bool)

(assert (=> d!1199577 (=> (not res!1646800) (not e!2508550))))

(assert (=> d!1199577 (= res!1646800 (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))))))

(assert (=> d!1199577 (= (inv!57806 (transformation!6924 (rule!9998 token!484))) e!2508550)))

(declare-fun b!4043113 () Bool)

(assert (=> b!4043113 (= e!2508550 (equivClasses!2858 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))))))

(assert (= (and d!1199577 res!1646800) b!4043113))

(assert (=> d!1199577 m!4640021))

(assert (=> b!4043113 m!4640023))

(assert (=> b!4042529 d!1199577))

(declare-fun b!4043117 () Bool)

(declare-fun e!2508551 () Bool)

(declare-fun lt!1439030 () List!43373)

(assert (=> b!4043117 (= e!2508551 (or (not (= lt!1438769 Nil!43249)) (= lt!1439030 lt!1438798)))))

(declare-fun b!4043115 () Bool)

(declare-fun e!2508552 () List!43373)

(assert (=> b!4043115 (= e!2508552 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) lt!1438769)))))

(declare-fun b!4043114 () Bool)

(assert (=> b!4043114 (= e!2508552 lt!1438769)))

(declare-fun b!4043116 () Bool)

(declare-fun res!1646802 () Bool)

(assert (=> b!4043116 (=> (not res!1646802) (not e!2508551))))

(assert (=> b!4043116 (= res!1646802 (= (size!32333 lt!1439030) (+ (size!32333 lt!1438798) (size!32333 lt!1438769))))))

(declare-fun d!1199579 () Bool)

(assert (=> d!1199579 e!2508551))

(declare-fun res!1646801 () Bool)

(assert (=> d!1199579 (=> (not res!1646801) (not e!2508551))))

(assert (=> d!1199579 (= res!1646801 (= (content!6581 lt!1439030) ((_ map or) (content!6581 lt!1438798) (content!6581 lt!1438769))))))

(assert (=> d!1199579 (= lt!1439030 e!2508552)))

(declare-fun c!698464 () Bool)

(assert (=> d!1199579 (= c!698464 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199579 (= (++!11326 lt!1438798 lt!1438769) lt!1439030)))

(assert (= (and d!1199579 c!698464) b!4043114))

(assert (= (and d!1199579 (not c!698464)) b!4043115))

(assert (= (and d!1199579 res!1646801) b!4043116))

(assert (= (and b!4043116 res!1646802) b!4043117))

(declare-fun m!4640195 () Bool)

(assert (=> b!4043115 m!4640195))

(declare-fun m!4640197 () Bool)

(assert (=> b!4043116 m!4640197))

(assert (=> b!4043116 m!4639203))

(assert (=> b!4043116 m!4640121))

(declare-fun m!4640199 () Bool)

(assert (=> d!1199579 m!4640199))

(assert (=> d!1199579 m!4639353))

(assert (=> d!1199579 m!4640125))

(assert (=> b!4042508 d!1199579))

(declare-fun d!1199581 () Bool)

(declare-fun lt!1439031 () List!43373)

(assert (=> d!1199581 (= (++!11326 lt!1438798 lt!1439031) prefix!494)))

(declare-fun e!2508553 () List!43373)

(assert (=> d!1199581 (= lt!1439031 e!2508553)))

(declare-fun c!698465 () Bool)

(assert (=> d!1199581 (= c!698465 ((_ is Cons!43249) lt!1438798))))

(assert (=> d!1199581 (>= (size!32333 prefix!494) (size!32333 lt!1438798))))

(assert (=> d!1199581 (= (getSuffix!2428 prefix!494 lt!1438798) lt!1439031)))

(declare-fun b!4043118 () Bool)

(assert (=> b!4043118 (= e!2508553 (getSuffix!2428 (tail!6287 prefix!494) (t!335212 lt!1438798)))))

(declare-fun b!4043119 () Bool)

(assert (=> b!4043119 (= e!2508553 prefix!494)))

(assert (= (and d!1199581 c!698465) b!4043118))

(assert (= (and d!1199581 (not c!698465)) b!4043119))

(declare-fun m!4640201 () Bool)

(assert (=> d!1199581 m!4640201))

(assert (=> d!1199581 m!4639205))

(assert (=> d!1199581 m!4639203))

(assert (=> b!4043118 m!4640163))

(assert (=> b!4043118 m!4640163))

(declare-fun m!4640203 () Bool)

(assert (=> b!4043118 m!4640203))

(assert (=> b!4042508 d!1199581))

(declare-fun b!4043120 () Bool)

(declare-fun e!2508554 () Bool)

(declare-fun e!2508555 () Bool)

(assert (=> b!4043120 (= e!2508554 e!2508555)))

(declare-fun res!1646804 () Bool)

(assert (=> b!4043120 (=> (not res!1646804) (not e!2508555))))

(assert (=> b!4043120 (= res!1646804 (not ((_ is Nil!43249) prefix!494)))))

(declare-fun b!4043121 () Bool)

(declare-fun res!1646805 () Bool)

(assert (=> b!4043121 (=> (not res!1646805) (not e!2508555))))

(assert (=> b!4043121 (= res!1646805 (= (head!8555 lt!1438798) (head!8555 prefix!494)))))

(declare-fun d!1199583 () Bool)

(declare-fun e!2508556 () Bool)

(assert (=> d!1199583 e!2508556))

(declare-fun res!1646803 () Bool)

(assert (=> d!1199583 (=> res!1646803 e!2508556)))

(declare-fun lt!1439032 () Bool)

(assert (=> d!1199583 (= res!1646803 (not lt!1439032))))

(assert (=> d!1199583 (= lt!1439032 e!2508554)))

(declare-fun res!1646806 () Bool)

(assert (=> d!1199583 (=> res!1646806 e!2508554)))

(assert (=> d!1199583 (= res!1646806 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199583 (= (isPrefix!4011 lt!1438798 prefix!494) lt!1439032)))

(declare-fun b!4043122 () Bool)

(assert (=> b!4043122 (= e!2508555 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 prefix!494)))))

(declare-fun b!4043123 () Bool)

(assert (=> b!4043123 (= e!2508556 (>= (size!32333 prefix!494) (size!32333 lt!1438798)))))

(assert (= (and d!1199583 (not res!1646806)) b!4043120))

(assert (= (and b!4043120 res!1646804) b!4043121))

(assert (= (and b!4043121 res!1646805) b!4043122))

(assert (= (and d!1199583 (not res!1646803)) b!4043123))

(assert (=> b!4043121 m!4639555))

(assert (=> b!4043121 m!4640161))

(assert (=> b!4043122 m!4639565))

(assert (=> b!4043122 m!4640163))

(assert (=> b!4043122 m!4639565))

(assert (=> b!4043122 m!4640163))

(declare-fun m!4640205 () Bool)

(assert (=> b!4043122 m!4640205))

(assert (=> b!4043123 m!4639205))

(assert (=> b!4043123 m!4639203))

(assert (=> b!4042508 d!1199583))

(declare-fun d!1199585 () Bool)

(assert (=> d!1199585 (isPrefix!4011 lt!1438798 prefix!494)))

(declare-fun lt!1439035 () Unit!62477)

(declare-fun choose!24512 (List!43373 List!43373 List!43373) Unit!62477)

(assert (=> d!1199585 (= lt!1439035 (choose!24512 prefix!494 lt!1438798 lt!1438775))))

(assert (=> d!1199585 (isPrefix!4011 prefix!494 lt!1438775)))

(assert (=> d!1199585 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!575 prefix!494 lt!1438798 lt!1438775) lt!1439035)))

(declare-fun bs!591053 () Bool)

(assert (= bs!591053 d!1199585))

(assert (=> bs!591053 m!4639279))

(declare-fun m!4640207 () Bool)

(assert (=> bs!591053 m!4640207))

(assert (=> bs!591053 m!4639245))

(assert (=> b!4042508 d!1199585))

(declare-fun b!4043127 () Bool)

(declare-fun e!2508557 () Bool)

(declare-fun lt!1439036 () List!43373)

(assert (=> b!4043127 (= e!2508557 (or (not (= lt!1438791 Nil!43249)) (= lt!1439036 prefix!494)))))

(declare-fun b!4043125 () Bool)

(declare-fun e!2508558 () List!43373)

(assert (=> b!4043125 (= e!2508558 (Cons!43249 (h!48669 prefix!494) (++!11326 (t!335212 prefix!494) lt!1438791)))))

(declare-fun b!4043124 () Bool)

(assert (=> b!4043124 (= e!2508558 lt!1438791)))

(declare-fun b!4043126 () Bool)

(declare-fun res!1646808 () Bool)

(assert (=> b!4043126 (=> (not res!1646808) (not e!2508557))))

(assert (=> b!4043126 (= res!1646808 (= (size!32333 lt!1439036) (+ (size!32333 prefix!494) (size!32333 lt!1438791))))))

(declare-fun d!1199587 () Bool)

(assert (=> d!1199587 e!2508557))

(declare-fun res!1646807 () Bool)

(assert (=> d!1199587 (=> (not res!1646807) (not e!2508557))))

(assert (=> d!1199587 (= res!1646807 (= (content!6581 lt!1439036) ((_ map or) (content!6581 prefix!494) (content!6581 lt!1438791))))))

(assert (=> d!1199587 (= lt!1439036 e!2508558)))

(declare-fun c!698466 () Bool)

(assert (=> d!1199587 (= c!698466 ((_ is Nil!43249) prefix!494))))

(assert (=> d!1199587 (= (++!11326 prefix!494 lt!1438791) lt!1439036)))

(assert (= (and d!1199587 c!698466) b!4043124))

(assert (= (and d!1199587 (not c!698466)) b!4043125))

(assert (= (and d!1199587 res!1646807) b!4043126))

(assert (= (and b!4043126 res!1646808) b!4043127))

(declare-fun m!4640209 () Bool)

(assert (=> b!4043125 m!4640209))

(declare-fun m!4640211 () Bool)

(assert (=> b!4043126 m!4640211))

(assert (=> b!4043126 m!4639205))

(declare-fun m!4640213 () Bool)

(assert (=> b!4043126 m!4640213))

(declare-fun m!4640215 () Bool)

(assert (=> d!1199587 m!4640215))

(assert (=> d!1199587 m!4640093))

(declare-fun m!4640217 () Bool)

(assert (=> d!1199587 m!4640217))

(assert (=> b!4042507 d!1199587))

(declare-fun e!2508559 () Bool)

(declare-fun lt!1439037 () List!43373)

(declare-fun b!4043131 () Bool)

(assert (=> b!4043131 (= e!2508559 (or (not (= lt!1438799 Nil!43249)) (= lt!1439037 lt!1438785)))))

(declare-fun b!4043129 () Bool)

(declare-fun e!2508560 () List!43373)

(assert (=> b!4043129 (= e!2508560 (Cons!43249 (h!48669 lt!1438785) (++!11326 (t!335212 lt!1438785) lt!1438799)))))

(declare-fun b!4043128 () Bool)

(assert (=> b!4043128 (= e!2508560 lt!1438799)))

(declare-fun b!4043130 () Bool)

(declare-fun res!1646810 () Bool)

(assert (=> b!4043130 (=> (not res!1646810) (not e!2508559))))

(assert (=> b!4043130 (= res!1646810 (= (size!32333 lt!1439037) (+ (size!32333 lt!1438785) (size!32333 lt!1438799))))))

(declare-fun d!1199589 () Bool)

(assert (=> d!1199589 e!2508559))

(declare-fun res!1646809 () Bool)

(assert (=> d!1199589 (=> (not res!1646809) (not e!2508559))))

(assert (=> d!1199589 (= res!1646809 (= (content!6581 lt!1439037) ((_ map or) (content!6581 lt!1438785) (content!6581 lt!1438799))))))

(assert (=> d!1199589 (= lt!1439037 e!2508560)))

(declare-fun c!698467 () Bool)

(assert (=> d!1199589 (= c!698467 ((_ is Nil!43249) lt!1438785))))

(assert (=> d!1199589 (= (++!11326 lt!1438785 lt!1438799) lt!1439037)))

(assert (= (and d!1199589 c!698467) b!4043128))

(assert (= (and d!1199589 (not c!698467)) b!4043129))

(assert (= (and d!1199589 res!1646809) b!4043130))

(assert (= (and b!4043130 res!1646810) b!4043131))

(declare-fun m!4640219 () Bool)

(assert (=> b!4043129 m!4640219))

(declare-fun m!4640221 () Bool)

(assert (=> b!4043130 m!4640221))

(assert (=> b!4043130 m!4639471))

(declare-fun m!4640223 () Bool)

(assert (=> b!4043130 m!4640223))

(declare-fun m!4640225 () Bool)

(assert (=> d!1199589 m!4640225))

(declare-fun m!4640227 () Bool)

(assert (=> d!1199589 m!4640227))

(declare-fun m!4640229 () Bool)

(assert (=> d!1199589 m!4640229))

(assert (=> b!4042507 d!1199589))

(declare-fun d!1199591 () Bool)

(assert (=> d!1199591 (= (++!11326 (++!11326 prefix!494 newSuffix!27) lt!1438799) (++!11326 prefix!494 (++!11326 newSuffix!27 lt!1438799)))))

(declare-fun lt!1439038 () Unit!62477)

(assert (=> d!1199591 (= lt!1439038 (choose!24508 prefix!494 newSuffix!27 lt!1438799))))

(assert (=> d!1199591 (= (lemmaConcatAssociativity!2628 prefix!494 newSuffix!27 lt!1438799) lt!1439038)))

(declare-fun bs!591054 () Bool)

(assert (= bs!591054 d!1199591))

(assert (=> bs!591054 m!4639263))

(declare-fun m!4640231 () Bool)

(assert (=> bs!591054 m!4640231))

(assert (=> bs!591054 m!4639229))

(declare-fun m!4640233 () Bool)

(assert (=> bs!591054 m!4640233))

(assert (=> bs!591054 m!4639263))

(declare-fun m!4640235 () Bool)

(assert (=> bs!591054 m!4640235))

(assert (=> bs!591054 m!4639229))

(assert (=> b!4042507 d!1199591))

(declare-fun e!2508561 () Bool)

(declare-fun lt!1439039 () List!43373)

(declare-fun b!4043135 () Bool)

(assert (=> b!4043135 (= e!2508561 (or (not (= newSuffix!27 Nil!43249)) (= lt!1439039 prefix!494)))))

(declare-fun b!4043133 () Bool)

(declare-fun e!2508562 () List!43373)

(assert (=> b!4043133 (= e!2508562 (Cons!43249 (h!48669 prefix!494) (++!11326 (t!335212 prefix!494) newSuffix!27)))))

(declare-fun b!4043132 () Bool)

(assert (=> b!4043132 (= e!2508562 newSuffix!27)))

(declare-fun b!4043134 () Bool)

(declare-fun res!1646812 () Bool)

(assert (=> b!4043134 (=> (not res!1646812) (not e!2508561))))

(assert (=> b!4043134 (= res!1646812 (= (size!32333 lt!1439039) (+ (size!32333 prefix!494) (size!32333 newSuffix!27))))))

(declare-fun d!1199593 () Bool)

(assert (=> d!1199593 e!2508561))

(declare-fun res!1646811 () Bool)

(assert (=> d!1199593 (=> (not res!1646811) (not e!2508561))))

(assert (=> d!1199593 (= res!1646811 (= (content!6581 lt!1439039) ((_ map or) (content!6581 prefix!494) (content!6581 newSuffix!27))))))

(assert (=> d!1199593 (= lt!1439039 e!2508562)))

(declare-fun c!698468 () Bool)

(assert (=> d!1199593 (= c!698468 ((_ is Nil!43249) prefix!494))))

(assert (=> d!1199593 (= (++!11326 prefix!494 newSuffix!27) lt!1439039)))

(assert (= (and d!1199593 c!698468) b!4043132))

(assert (= (and d!1199593 (not c!698468)) b!4043133))

(assert (= (and d!1199593 res!1646811) b!4043134))

(assert (= (and b!4043134 res!1646812) b!4043135))

(declare-fun m!4640237 () Bool)

(assert (=> b!4043133 m!4640237))

(declare-fun m!4640239 () Bool)

(assert (=> b!4043134 m!4640239))

(assert (=> b!4043134 m!4639205))

(assert (=> b!4043134 m!4639243))

(declare-fun m!4640241 () Bool)

(assert (=> d!1199593 m!4640241))

(assert (=> d!1199593 m!4640093))

(declare-fun m!4640243 () Bool)

(assert (=> d!1199593 m!4640243))

(assert (=> b!4042511 d!1199593))

(declare-fun lt!1439040 () List!43373)

(declare-fun e!2508563 () Bool)

(declare-fun b!4043139 () Bool)

(assert (=> b!4043139 (= e!2508563 (or (not (= newSuffixResult!27 Nil!43249)) (= lt!1439040 lt!1438798)))))

(declare-fun b!4043137 () Bool)

(declare-fun e!2508564 () List!43373)

(assert (=> b!4043137 (= e!2508564 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) newSuffixResult!27)))))

(declare-fun b!4043136 () Bool)

(assert (=> b!4043136 (= e!2508564 newSuffixResult!27)))

(declare-fun b!4043138 () Bool)

(declare-fun res!1646814 () Bool)

(assert (=> b!4043138 (=> (not res!1646814) (not e!2508563))))

(assert (=> b!4043138 (= res!1646814 (= (size!32333 lt!1439040) (+ (size!32333 lt!1438798) (size!32333 newSuffixResult!27))))))

(declare-fun d!1199595 () Bool)

(assert (=> d!1199595 e!2508563))

(declare-fun res!1646813 () Bool)

(assert (=> d!1199595 (=> (not res!1646813) (not e!2508563))))

(assert (=> d!1199595 (= res!1646813 (= (content!6581 lt!1439040) ((_ map or) (content!6581 lt!1438798) (content!6581 newSuffixResult!27))))))

(assert (=> d!1199595 (= lt!1439040 e!2508564)))

(declare-fun c!698469 () Bool)

(assert (=> d!1199595 (= c!698469 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199595 (= (++!11326 lt!1438798 newSuffixResult!27) lt!1439040)))

(assert (= (and d!1199595 c!698469) b!4043136))

(assert (= (and d!1199595 (not c!698469)) b!4043137))

(assert (= (and d!1199595 res!1646813) b!4043138))

(assert (= (and b!4043138 res!1646814) b!4043139))

(declare-fun m!4640245 () Bool)

(assert (=> b!4043137 m!4640245))

(declare-fun m!4640247 () Bool)

(assert (=> b!4043138 m!4640247))

(assert (=> b!4043138 m!4639203))

(declare-fun m!4640249 () Bool)

(assert (=> b!4043138 m!4640249))

(declare-fun m!4640251 () Bool)

(assert (=> d!1199595 m!4640251))

(assert (=> d!1199595 m!4639353))

(declare-fun m!4640253 () Bool)

(assert (=> d!1199595 m!4640253))

(assert (=> b!4042511 d!1199595))

(declare-fun d!1199597 () Bool)

(declare-fun res!1646817 () Bool)

(declare-fun e!2508567 () Bool)

(assert (=> d!1199597 (=> (not res!1646817) (not e!2508567))))

(declare-fun rulesValid!2694 (LexerInterface!6513 List!43375) Bool)

(assert (=> d!1199597 (= res!1646817 (rulesValid!2694 thiss!21717 rules!2999))))

(assert (=> d!1199597 (= (rulesInvariant!5856 thiss!21717 rules!2999) e!2508567)))

(declare-fun b!4043142 () Bool)

(declare-datatypes ((List!43377 0))(
  ( (Nil!43253) (Cons!43253 (h!48673 String!49488) (t!335264 List!43377)) )
))
(declare-fun noDuplicateTag!2695 (LexerInterface!6513 List!43375 List!43377) Bool)

(assert (=> b!4043142 (= e!2508567 (noDuplicateTag!2695 thiss!21717 rules!2999 Nil!43253))))

(assert (= (and d!1199597 res!1646817) b!4043142))

(declare-fun m!4640255 () Bool)

(assert (=> d!1199597 m!4640255))

(declare-fun m!4640257 () Bool)

(assert (=> b!4043142 m!4640257))

(assert (=> b!4042509 d!1199597))

(declare-fun d!1199599 () Bool)

(assert (=> d!1199599 (= (maxPrefixOneRule!2823 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) lt!1438785) (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 lt!1438792)) (rule!9998 (_1!24299 (v!39739 lt!1438779))) (size!32333 lt!1438792) lt!1438792) (_2!24299 (v!39739 lt!1438779)))))))

(declare-fun lt!1439041 () Unit!62477)

(assert (=> d!1199599 (= lt!1439041 (choose!24506 thiss!21717 rules!2999 lt!1438792 lt!1438785 (_2!24299 (v!39739 lt!1438779)) (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1199599 (not (isEmpty!25813 rules!2999))))

(assert (=> d!1199599 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1629 thiss!21717 rules!2999 lt!1438792 lt!1438785 (_2!24299 (v!39739 lt!1438779)) (rule!9998 (_1!24299 (v!39739 lt!1438779)))) lt!1439041)))

(declare-fun bs!591055 () Bool)

(assert (= bs!591055 d!1199599))

(declare-fun m!4640259 () Bool)

(assert (=> bs!591055 m!4640259))

(assert (=> bs!591055 m!4639317))

(assert (=> bs!591055 m!4639337))

(assert (=> bs!591055 m!4639331))

(assert (=> bs!591055 m!4639193))

(assert (=> bs!591055 m!4639317))

(assert (=> bs!591055 m!4639319))

(assert (=> b!4042513 d!1199599))

(declare-fun d!1199601 () Bool)

(declare-fun lt!1439042 () Int)

(assert (=> d!1199601 (>= lt!1439042 0)))

(declare-fun e!2508568 () Int)

(assert (=> d!1199601 (= lt!1439042 e!2508568)))

(declare-fun c!698470 () Bool)

(assert (=> d!1199601 (= c!698470 ((_ is Nil!43249) lt!1438792))))

(assert (=> d!1199601 (= (size!32333 lt!1438792) lt!1439042)))

(declare-fun b!4043143 () Bool)

(assert (=> b!4043143 (= e!2508568 0)))

(declare-fun b!4043144 () Bool)

(assert (=> b!4043144 (= e!2508568 (+ 1 (size!32333 (t!335212 lt!1438792))))))

(assert (= (and d!1199601 c!698470) b!4043143))

(assert (= (and d!1199601 (not c!698470)) b!4043144))

(declare-fun m!4640261 () Bool)

(assert (=> b!4043144 m!4640261))

(assert (=> b!4042513 d!1199601))

(declare-fun d!1199603 () Bool)

(assert (=> d!1199603 (= (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 lt!1438792)) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792)))))

(declare-fun b_lambda!118107 () Bool)

(assert (=> (not b_lambda!118107) (not d!1199603)))

(declare-fun t!335249 () Bool)

(declare-fun tb!243105 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335249) tb!243105))

(declare-fun result!294640 () Bool)

(assert (=> tb!243105 (= result!294640 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792))))))

(declare-fun m!4640263 () Bool)

(assert (=> tb!243105 m!4640263))

(assert (=> d!1199603 t!335249))

(declare-fun b_and!310843 () Bool)

(assert (= b_and!310835 (and (=> t!335249 result!294640) b_and!310843)))

(declare-fun tb!243107 () Bool)

(declare-fun t!335251 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335251) tb!243107))

(declare-fun result!294642 () Bool)

(assert (= result!294642 result!294640))

(assert (=> d!1199603 t!335251))

(declare-fun b_and!310845 () Bool)

(assert (= b_and!310837 (and (=> t!335251 result!294642) b_and!310845)))

(assert (=> d!1199603 m!4639317))

(declare-fun m!4640265 () Bool)

(assert (=> d!1199603 m!4640265))

(assert (=> b!4042513 d!1199603))

(declare-fun lt!1439043 () List!43373)

(declare-fun b!4043148 () Bool)

(declare-fun e!2508570 () Bool)

(assert (=> b!4043148 (= e!2508570 (or (not (= (_2!24299 (v!39739 lt!1438779)) Nil!43249)) (= lt!1439043 lt!1438792)))))

(declare-fun b!4043146 () Bool)

(declare-fun e!2508571 () List!43373)

(assert (=> b!4043146 (= e!2508571 (Cons!43249 (h!48669 lt!1438792) (++!11326 (t!335212 lt!1438792) (_2!24299 (v!39739 lt!1438779)))))))

(declare-fun b!4043145 () Bool)

(assert (=> b!4043145 (= e!2508571 (_2!24299 (v!39739 lt!1438779)))))

(declare-fun b!4043147 () Bool)

(declare-fun res!1646819 () Bool)

(assert (=> b!4043147 (=> (not res!1646819) (not e!2508570))))

(assert (=> b!4043147 (= res!1646819 (= (size!32333 lt!1439043) (+ (size!32333 lt!1438792) (size!32333 (_2!24299 (v!39739 lt!1438779))))))))

(declare-fun d!1199605 () Bool)

(assert (=> d!1199605 e!2508570))

(declare-fun res!1646818 () Bool)

(assert (=> d!1199605 (=> (not res!1646818) (not e!2508570))))

(assert (=> d!1199605 (= res!1646818 (= (content!6581 lt!1439043) ((_ map or) (content!6581 lt!1438792) (content!6581 (_2!24299 (v!39739 lt!1438779))))))))

(assert (=> d!1199605 (= lt!1439043 e!2508571)))

(declare-fun c!698471 () Bool)

(assert (=> d!1199605 (= c!698471 ((_ is Nil!43249) lt!1438792))))

(assert (=> d!1199605 (= (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))) lt!1439043)))

(assert (= (and d!1199605 c!698471) b!4043145))

(assert (= (and d!1199605 (not c!698471)) b!4043146))

(assert (= (and d!1199605 res!1646818) b!4043147))

(assert (= (and b!4043147 res!1646819) b!4043148))

(declare-fun m!4640267 () Bool)

(assert (=> b!4043146 m!4640267))

(declare-fun m!4640269 () Bool)

(assert (=> b!4043147 m!4640269))

(assert (=> b!4043147 m!4639331))

(declare-fun m!4640271 () Bool)

(assert (=> b!4043147 m!4640271))

(declare-fun m!4640273 () Bool)

(assert (=> d!1199605 m!4640273))

(declare-fun m!4640275 () Bool)

(assert (=> d!1199605 m!4640275))

(declare-fun m!4640277 () Bool)

(assert (=> d!1199605 m!4640277))

(assert (=> b!4042513 d!1199605))

(declare-fun d!1199607 () Bool)

(assert (=> d!1199607 (= (size!32334 token!484) (size!32333 (originalCharacters!7524 token!484)))))

(declare-fun Unit!62484 () Unit!62477)

(assert (=> d!1199607 (= (lemmaCharactersSize!1443 token!484) Unit!62484)))

(declare-fun bs!591056 () Bool)

(assert (= bs!591056 d!1199607))

(assert (=> bs!591056 m!4639291))

(assert (=> b!4042513 d!1199607))

(declare-fun d!1199609 () Bool)

(assert (=> d!1199609 (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))

(declare-fun lt!1439044 () Unit!62477)

(assert (=> d!1199609 (= lt!1439044 (choose!24505 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))

(assert (=> d!1199609 (= (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438792 (_2!24299 (v!39739 lt!1438779))) lt!1439044)))

(declare-fun bs!591057 () Bool)

(assert (= bs!591057 d!1199609))

(assert (=> bs!591057 m!4639325))

(assert (=> bs!591057 m!4639325))

(assert (=> bs!591057 m!4639329))

(declare-fun m!4640279 () Bool)

(assert (=> bs!591057 m!4640279))

(assert (=> b!4042513 d!1199609))

(declare-fun b!4043149 () Bool)

(declare-fun e!2508572 () Bool)

(declare-fun e!2508573 () Bool)

(assert (=> b!4043149 (= e!2508572 e!2508573)))

(declare-fun res!1646821 () Bool)

(assert (=> b!4043149 (=> (not res!1646821) (not e!2508573))))

(assert (=> b!4043149 (= res!1646821 (not ((_ is Nil!43249) (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))))

(declare-fun b!4043150 () Bool)

(declare-fun res!1646822 () Bool)

(assert (=> b!4043150 (=> (not res!1646822) (not e!2508573))))

(assert (=> b!4043150 (= res!1646822 (= (head!8555 lt!1438792) (head!8555 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))))

(declare-fun d!1199611 () Bool)

(declare-fun e!2508574 () Bool)

(assert (=> d!1199611 e!2508574))

(declare-fun res!1646820 () Bool)

(assert (=> d!1199611 (=> res!1646820 e!2508574)))

(declare-fun lt!1439045 () Bool)

(assert (=> d!1199611 (= res!1646820 (not lt!1439045))))

(assert (=> d!1199611 (= lt!1439045 e!2508572)))

(declare-fun res!1646823 () Bool)

(assert (=> d!1199611 (=> res!1646823 e!2508572)))

(assert (=> d!1199611 (= res!1646823 ((_ is Nil!43249) lt!1438792))))

(assert (=> d!1199611 (= (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))) lt!1439045)))

(declare-fun b!4043151 () Bool)

(assert (=> b!4043151 (= e!2508573 (isPrefix!4011 (tail!6287 lt!1438792) (tail!6287 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))))

(declare-fun b!4043152 () Bool)

(assert (=> b!4043152 (= e!2508574 (>= (size!32333 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))) (size!32333 lt!1438792)))))

(assert (= (and d!1199611 (not res!1646823)) b!4043149))

(assert (= (and b!4043149 res!1646821) b!4043150))

(assert (= (and b!4043150 res!1646822) b!4043151))

(assert (= (and d!1199611 (not res!1646820)) b!4043152))

(assert (=> b!4043150 m!4639989))

(assert (=> b!4043150 m!4639325))

(declare-fun m!4640281 () Bool)

(assert (=> b!4043150 m!4640281))

(assert (=> b!4043151 m!4639995))

(assert (=> b!4043151 m!4639325))

(declare-fun m!4640283 () Bool)

(assert (=> b!4043151 m!4640283))

(assert (=> b!4043151 m!4639995))

(assert (=> b!4043151 m!4640283))

(declare-fun m!4640285 () Bool)

(assert (=> b!4043151 m!4640285))

(assert (=> b!4043152 m!4639325))

(declare-fun m!4640287 () Bool)

(assert (=> b!4043152 m!4640287))

(assert (=> b!4043152 m!4639331))

(assert (=> b!4042513 d!1199611))

(declare-fun e!2508575 () Bool)

(declare-fun b!4043156 () Bool)

(declare-fun lt!1439046 () List!43373)

(assert (=> b!4043156 (= e!2508575 (or (not (= newSuffixResult!27 Nil!43249)) (= lt!1439046 lt!1438792)))))

(declare-fun b!4043154 () Bool)

(declare-fun e!2508576 () List!43373)

(assert (=> b!4043154 (= e!2508576 (Cons!43249 (h!48669 lt!1438792) (++!11326 (t!335212 lt!1438792) newSuffixResult!27)))))

(declare-fun b!4043153 () Bool)

(assert (=> b!4043153 (= e!2508576 newSuffixResult!27)))

(declare-fun b!4043155 () Bool)

(declare-fun res!1646825 () Bool)

(assert (=> b!4043155 (=> (not res!1646825) (not e!2508575))))

(assert (=> b!4043155 (= res!1646825 (= (size!32333 lt!1439046) (+ (size!32333 lt!1438792) (size!32333 newSuffixResult!27))))))

(declare-fun d!1199613 () Bool)

(assert (=> d!1199613 e!2508575))

(declare-fun res!1646824 () Bool)

(assert (=> d!1199613 (=> (not res!1646824) (not e!2508575))))

(assert (=> d!1199613 (= res!1646824 (= (content!6581 lt!1439046) ((_ map or) (content!6581 lt!1438792) (content!6581 newSuffixResult!27))))))

(assert (=> d!1199613 (= lt!1439046 e!2508576)))

(declare-fun c!698472 () Bool)

(assert (=> d!1199613 (= c!698472 ((_ is Nil!43249) lt!1438792))))

(assert (=> d!1199613 (= (++!11326 lt!1438792 newSuffixResult!27) lt!1439046)))

(assert (= (and d!1199613 c!698472) b!4043153))

(assert (= (and d!1199613 (not c!698472)) b!4043154))

(assert (= (and d!1199613 res!1646824) b!4043155))

(assert (= (and b!4043155 res!1646825) b!4043156))

(declare-fun m!4640289 () Bool)

(assert (=> b!4043154 m!4640289))

(declare-fun m!4640291 () Bool)

(assert (=> b!4043155 m!4640291))

(assert (=> b!4043155 m!4639331))

(assert (=> b!4043155 m!4640249))

(declare-fun m!4640293 () Bool)

(assert (=> d!1199613 m!4640293))

(assert (=> d!1199613 m!4640275))

(assert (=> d!1199613 m!4640253))

(assert (=> b!4042513 d!1199613))

(declare-fun d!1199615 () Bool)

(declare-fun e!2508577 () Bool)

(assert (=> d!1199615 e!2508577))

(declare-fun res!1646826 () Bool)

(assert (=> d!1199615 (=> (not res!1646826) (not e!2508577))))

(assert (=> d!1199615 (= res!1646826 (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun Unit!62485 () Unit!62477)

(assert (=> d!1199615 (= (lemmaInv!1133 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) Unit!62485)))

(declare-fun b!4043157 () Bool)

(assert (=> b!4043157 (= e!2508577 (equivClasses!2858 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(assert (= (and d!1199615 res!1646826) b!4043157))

(declare-fun m!4640295 () Bool)

(assert (=> d!1199615 m!4640295))

(declare-fun m!4640297 () Bool)

(assert (=> b!4043157 m!4640297))

(assert (=> b!4042513 d!1199615))

(declare-fun d!1199617 () Bool)

(declare-fun res!1646827 () Bool)

(declare-fun e!2508578 () Bool)

(assert (=> d!1199617 (=> (not res!1646827) (not e!2508578))))

(assert (=> d!1199617 (= res!1646827 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(assert (=> d!1199617 (= (ruleValid!2854 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) e!2508578)))

(declare-fun b!4043158 () Bool)

(declare-fun res!1646828 () Bool)

(assert (=> b!4043158 (=> (not res!1646828) (not e!2508578))))

(assert (=> b!4043158 (= res!1646828 (not (nullable!4151 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun b!4043159 () Bool)

(assert (=> b!4043159 (= e!2508578 (not (= (tag!7784 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (String!49489 ""))))))

(assert (= (and d!1199617 res!1646827) b!4043158))

(assert (= (and b!4043158 res!1646828) b!4043159))

(declare-fun m!4640299 () Bool)

(assert (=> d!1199617 m!4640299))

(declare-fun m!4640301 () Bool)

(assert (=> b!4043158 m!4640301))

(assert (=> b!4042513 d!1199617))

(declare-fun b!4043160 () Bool)

(declare-fun e!2508580 () Bool)

(declare-fun lt!1439047 () Option!9338)

(assert (=> b!4043160 (= e!2508580 (= (size!32334 (_1!24299 (get!14192 lt!1439047))) (size!32333 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047))))))))

(declare-fun b!4043161 () Bool)

(declare-fun res!1646831 () Bool)

(assert (=> b!4043161 (=> (not res!1646831) (not e!2508580))))

(assert (=> b!4043161 (= res!1646831 (= (value!217968 (_1!24299 (get!14192 lt!1439047))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047)))))))))

(declare-fun b!4043162 () Bool)

(declare-fun res!1646832 () Bool)

(assert (=> b!4043162 (=> (not res!1646832) (not e!2508580))))

(assert (=> b!4043162 (= res!1646832 (= (rule!9998 (_1!24299 (get!14192 lt!1439047))) (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(declare-fun b!4043163 () Bool)

(declare-fun e!2508582 () Option!9338)

(declare-fun lt!1439048 () tuple2!42334)

(assert (=> b!4043163 (= e!2508582 (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 (_1!24301 lt!1439048))) (rule!9998 (_1!24299 (v!39739 lt!1438779))) (size!32336 (seqFromList!5141 (_1!24301 lt!1439048))) (_1!24301 lt!1439048)) (_2!24301 lt!1439048))))))

(declare-fun lt!1439051 () Unit!62477)

(assert (=> b!4043163 (= lt!1439051 (longestMatchIsAcceptedByMatchOrIsEmpty!1362 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) lt!1438785))))

(declare-fun res!1646835 () Bool)

(assert (=> b!4043163 (= res!1646835 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(declare-fun e!2508581 () Bool)

(assert (=> b!4043163 (=> res!1646835 e!2508581)))

(assert (=> b!4043163 e!2508581))

(declare-fun lt!1439049 () Unit!62477)

(assert (=> b!4043163 (= lt!1439049 lt!1439051)))

(declare-fun lt!1439050 () Unit!62477)

(assert (=> b!4043163 (= lt!1439050 (lemmaSemiInverse!1909 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 (_1!24301 lt!1439048))))))

(declare-fun b!4043164 () Bool)

(assert (=> b!4043164 (= e!2508582 None!9337)))

(declare-fun b!4043165 () Bool)

(assert (=> b!4043165 (= e!2508581 (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(declare-fun b!4043166 () Bool)

(declare-fun e!2508579 () Bool)

(assert (=> b!4043166 (= e!2508579 e!2508580)))

(declare-fun res!1646829 () Bool)

(assert (=> b!4043166 (=> (not res!1646829) (not e!2508580))))

(assert (=> b!4043166 (= res!1646829 (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))))))

(declare-fun b!4043167 () Bool)

(declare-fun res!1646830 () Bool)

(assert (=> b!4043167 (=> (not res!1646830) (not e!2508580))))

(assert (=> b!4043167 (= res!1646830 (< (size!32333 (_2!24299 (get!14192 lt!1439047))) (size!32333 lt!1438785)))))

(declare-fun d!1199619 () Bool)

(assert (=> d!1199619 e!2508579))

(declare-fun res!1646833 () Bool)

(assert (=> d!1199619 (=> res!1646833 e!2508579)))

(assert (=> d!1199619 (= res!1646833 (isEmpty!25816 lt!1439047))))

(assert (=> d!1199619 (= lt!1439047 e!2508582)))

(declare-fun c!698473 () Bool)

(assert (=> d!1199619 (= c!698473 (isEmpty!25817 (_1!24301 lt!1439048)))))

(assert (=> d!1199619 (= lt!1439048 (findLongestMatch!1302 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) lt!1438785))))

(assert (=> d!1199619 (ruleValid!2854 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))

(assert (=> d!1199619 (= (maxPrefixOneRule!2823 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) lt!1438785) lt!1439047)))

(declare-fun b!4043168 () Bool)

(declare-fun res!1646834 () Bool)

(assert (=> b!4043168 (=> (not res!1646834) (not e!2508580))))

(assert (=> b!4043168 (= res!1646834 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047)))) (_2!24299 (get!14192 lt!1439047))) lt!1438785))))

(assert (= (and d!1199619 c!698473) b!4043164))

(assert (= (and d!1199619 (not c!698473)) b!4043163))

(assert (= (and b!4043163 (not res!1646835)) b!4043165))

(assert (= (and d!1199619 (not res!1646833)) b!4043166))

(assert (= (and b!4043166 res!1646829) b!4043168))

(assert (= (and b!4043168 res!1646834) b!4043167))

(assert (= (and b!4043167 res!1646830) b!4043162))

(assert (= (and b!4043162 res!1646832) b!4043161))

(assert (= (and b!4043161 res!1646831) b!4043160))

(declare-fun m!4640303 () Bool)

(assert (=> b!4043160 m!4640303))

(declare-fun m!4640305 () Bool)

(assert (=> b!4043160 m!4640305))

(assert (=> b!4043165 m!4639885))

(assert (=> b!4043165 m!4639471))

(assert (=> b!4043165 m!4639885))

(assert (=> b!4043165 m!4639471))

(declare-fun m!4640307 () Bool)

(assert (=> b!4043165 m!4640307))

(declare-fun m!4640309 () Bool)

(assert (=> b!4043165 m!4640309))

(assert (=> b!4043166 m!4640303))

(declare-fun m!4640311 () Bool)

(assert (=> b!4043166 m!4640311))

(assert (=> b!4043166 m!4640311))

(declare-fun m!4640313 () Bool)

(assert (=> b!4043166 m!4640313))

(assert (=> b!4043166 m!4640313))

(declare-fun m!4640315 () Bool)

(assert (=> b!4043166 m!4640315))

(declare-fun m!4640317 () Bool)

(assert (=> b!4043163 m!4640317))

(declare-fun m!4640319 () Bool)

(assert (=> b!4043163 m!4640319))

(assert (=> b!4043163 m!4640317))

(declare-fun m!4640321 () Bool)

(assert (=> b!4043163 m!4640321))

(assert (=> b!4043163 m!4639885))

(assert (=> b!4043163 m!4639471))

(assert (=> b!4043163 m!4640307))

(assert (=> b!4043163 m!4640317))

(declare-fun m!4640323 () Bool)

(assert (=> b!4043163 m!4640323))

(assert (=> b!4043163 m!4639885))

(assert (=> b!4043163 m!4639471))

(assert (=> b!4043163 m!4640317))

(declare-fun m!4640325 () Bool)

(assert (=> b!4043163 m!4640325))

(declare-fun m!4640327 () Bool)

(assert (=> b!4043163 m!4640327))

(declare-fun m!4640329 () Bool)

(assert (=> d!1199619 m!4640329))

(declare-fun m!4640331 () Bool)

(assert (=> d!1199619 m!4640331))

(declare-fun m!4640333 () Bool)

(assert (=> d!1199619 m!4640333))

(assert (=> d!1199619 m!4639309))

(assert (=> b!4043168 m!4640303))

(assert (=> b!4043168 m!4640311))

(assert (=> b!4043168 m!4640311))

(assert (=> b!4043168 m!4640313))

(assert (=> b!4043168 m!4640313))

(declare-fun m!4640335 () Bool)

(assert (=> b!4043168 m!4640335))

(assert (=> b!4043167 m!4640303))

(declare-fun m!4640337 () Bool)

(assert (=> b!4043167 m!4640337))

(assert (=> b!4043167 m!4639471))

(assert (=> b!4043161 m!4640303))

(declare-fun m!4640339 () Bool)

(assert (=> b!4043161 m!4640339))

(assert (=> b!4043161 m!4640339))

(declare-fun m!4640341 () Bool)

(assert (=> b!4043161 m!4640341))

(assert (=> b!4043162 m!4640303))

(assert (=> b!4042513 d!1199619))

(declare-fun d!1199621 () Bool)

(declare-fun lt!1439052 () BalanceConc!25864)

(assert (=> d!1199621 (= (list!16106 lt!1439052) (originalCharacters!7524 (_1!24299 (v!39739 lt!1438779))))))

(assert (=> d!1199621 (= lt!1439052 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1199621 (= (charsOf!4740 (_1!24299 (v!39739 lt!1438779))) lt!1439052)))

(declare-fun b_lambda!118109 () Bool)

(assert (=> (not b_lambda!118109) (not d!1199621)))

(declare-fun tb!243109 () Bool)

(declare-fun t!335253 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335253) tb!243109))

(declare-fun b!4043169 () Bool)

(declare-fun e!2508583 () Bool)

(declare-fun tp!1227182 () Bool)

(assert (=> b!4043169 (= e!2508583 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))) tp!1227182))))

(declare-fun result!294644 () Bool)

(assert (=> tb!243109 (= result!294644 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))) e!2508583))))

(assert (= tb!243109 b!4043169))

(declare-fun m!4640343 () Bool)

(assert (=> b!4043169 m!4640343))

(declare-fun m!4640345 () Bool)

(assert (=> tb!243109 m!4640345))

(assert (=> d!1199621 t!335253))

(declare-fun b_and!310847 () Bool)

(assert (= b_and!310819 (and (=> t!335253 result!294644) b_and!310847)))

(declare-fun tb!243111 () Bool)

(declare-fun t!335255 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335255) tb!243111))

(declare-fun result!294646 () Bool)

(assert (= result!294646 result!294644))

(assert (=> d!1199621 t!335255))

(declare-fun b_and!310849 () Bool)

(assert (= b_and!310821 (and (=> t!335255 result!294646) b_and!310849)))

(declare-fun m!4640347 () Bool)

(assert (=> d!1199621 m!4640347))

(declare-fun m!4640349 () Bool)

(assert (=> d!1199621 m!4640349))

(assert (=> b!4042513 d!1199621))

(declare-fun d!1199623 () Bool)

(assert (=> d!1199623 (ruleValid!2854 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))

(declare-fun lt!1439053 () Unit!62477)

(assert (=> d!1199623 (= lt!1439053 (choose!24507 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) rules!2999))))

(assert (=> d!1199623 (contains!8595 rules!2999 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))

(assert (=> d!1199623 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1924 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) rules!2999) lt!1439053)))

(declare-fun bs!591058 () Bool)

(assert (= bs!591058 d!1199623))

(assert (=> bs!591058 m!4639309))

(declare-fun m!4640351 () Bool)

(assert (=> bs!591058 m!4640351))

(declare-fun m!4640353 () Bool)

(assert (=> bs!591058 m!4640353))

(assert (=> b!4042513 d!1199623))

(declare-fun d!1199625 () Bool)

(assert (=> d!1199625 (= (list!16106 (charsOf!4740 (_1!24299 (v!39739 lt!1438779)))) (list!16107 (c!698370 (charsOf!4740 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun bs!591059 () Bool)

(assert (= bs!591059 d!1199625))

(declare-fun m!4640355 () Bool)

(assert (=> bs!591059 m!4640355))

(assert (=> b!4042513 d!1199625))

(declare-fun b!4043170 () Bool)

(declare-fun e!2508584 () Bool)

(declare-fun e!2508585 () Bool)

(assert (=> b!4043170 (= e!2508584 e!2508585)))

(declare-fun res!1646837 () Bool)

(assert (=> b!4043170 (=> (not res!1646837) (not e!2508585))))

(assert (=> b!4043170 (= res!1646837 (not ((_ is Nil!43249) (++!11326 lt!1438792 newSuffixResult!27))))))

(declare-fun b!4043171 () Bool)

(declare-fun res!1646838 () Bool)

(assert (=> b!4043171 (=> (not res!1646838) (not e!2508585))))

(assert (=> b!4043171 (= res!1646838 (= (head!8555 lt!1438792) (head!8555 (++!11326 lt!1438792 newSuffixResult!27))))))

(declare-fun d!1199627 () Bool)

(declare-fun e!2508586 () Bool)

(assert (=> d!1199627 e!2508586))

(declare-fun res!1646836 () Bool)

(assert (=> d!1199627 (=> res!1646836 e!2508586)))

(declare-fun lt!1439054 () Bool)

(assert (=> d!1199627 (= res!1646836 (not lt!1439054))))

(assert (=> d!1199627 (= lt!1439054 e!2508584)))

(declare-fun res!1646839 () Bool)

(assert (=> d!1199627 (=> res!1646839 e!2508584)))

(assert (=> d!1199627 (= res!1646839 ((_ is Nil!43249) lt!1438792))))

(assert (=> d!1199627 (= (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 newSuffixResult!27)) lt!1439054)))

(declare-fun b!4043172 () Bool)

(assert (=> b!4043172 (= e!2508585 (isPrefix!4011 (tail!6287 lt!1438792) (tail!6287 (++!11326 lt!1438792 newSuffixResult!27))))))

(declare-fun b!4043173 () Bool)

(assert (=> b!4043173 (= e!2508586 (>= (size!32333 (++!11326 lt!1438792 newSuffixResult!27)) (size!32333 lt!1438792)))))

(assert (= (and d!1199627 (not res!1646839)) b!4043170))

(assert (= (and b!4043170 res!1646837) b!4043171))

(assert (= (and b!4043171 res!1646838) b!4043172))

(assert (= (and d!1199627 (not res!1646836)) b!4043173))

(assert (=> b!4043171 m!4639989))

(assert (=> b!4043171 m!4639315))

(declare-fun m!4640357 () Bool)

(assert (=> b!4043171 m!4640357))

(assert (=> b!4043172 m!4639995))

(assert (=> b!4043172 m!4639315))

(declare-fun m!4640359 () Bool)

(assert (=> b!4043172 m!4640359))

(assert (=> b!4043172 m!4639995))

(assert (=> b!4043172 m!4640359))

(declare-fun m!4640361 () Bool)

(assert (=> b!4043172 m!4640361))

(assert (=> b!4043173 m!4639315))

(declare-fun m!4640363 () Bool)

(assert (=> b!4043173 m!4640363))

(assert (=> b!4043173 m!4639331))

(assert (=> b!4042513 d!1199627))

(declare-fun d!1199629 () Bool)

(assert (=> d!1199629 (= (size!32334 (_1!24299 (v!39739 lt!1438779))) (size!32333 (originalCharacters!7524 (_1!24299 (v!39739 lt!1438779)))))))

(declare-fun Unit!62486 () Unit!62477)

(assert (=> d!1199629 (= (lemmaCharactersSize!1443 (_1!24299 (v!39739 lt!1438779))) Unit!62486)))

(declare-fun bs!591060 () Bool)

(assert (= bs!591060 d!1199629))

(declare-fun m!4640365 () Bool)

(assert (=> bs!591060 m!4640365))

(assert (=> b!4042513 d!1199629))

(declare-fun d!1199631 () Bool)

(assert (=> d!1199631 (= (seqFromList!5141 lt!1438792) (fromListB!2346 lt!1438792))))

(declare-fun bs!591061 () Bool)

(assert (= bs!591061 d!1199631))

(declare-fun m!4640367 () Bool)

(assert (=> bs!591061 m!4640367))

(assert (=> b!4042513 d!1199631))

(declare-fun d!1199633 () Bool)

(assert (=> d!1199633 (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 newSuffixResult!27))))

(declare-fun lt!1439055 () Unit!62477)

(assert (=> d!1199633 (= lt!1439055 (choose!24505 lt!1438792 newSuffixResult!27))))

(assert (=> d!1199633 (= (lemmaConcatTwoListThenFirstIsPrefix!2846 lt!1438792 newSuffixResult!27) lt!1439055)))

(declare-fun bs!591062 () Bool)

(assert (= bs!591062 d!1199633))

(assert (=> bs!591062 m!4639315))

(assert (=> bs!591062 m!4639315))

(assert (=> bs!591062 m!4639333))

(declare-fun m!4640369 () Bool)

(assert (=> bs!591062 m!4640369))

(assert (=> b!4042513 d!1199633))

(declare-fun d!1199635 () Bool)

(declare-fun res!1646844 () Bool)

(declare-fun e!2508589 () Bool)

(assert (=> d!1199635 (=> (not res!1646844) (not e!2508589))))

(assert (=> d!1199635 (= res!1646844 (not (isEmpty!25817 (originalCharacters!7524 token!484))))))

(assert (=> d!1199635 (= (inv!57805 token!484) e!2508589)))

(declare-fun b!4043178 () Bool)

(declare-fun res!1646845 () Bool)

(assert (=> b!4043178 (=> (not res!1646845) (not e!2508589))))

(assert (=> b!4043178 (= res!1646845 (= (originalCharacters!7524 token!484) (list!16106 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))))))

(declare-fun b!4043179 () Bool)

(assert (=> b!4043179 (= e!2508589 (= (size!32334 token!484) (size!32333 (originalCharacters!7524 token!484))))))

(assert (= (and d!1199635 res!1646844) b!4043178))

(assert (= (and b!4043178 res!1646845) b!4043179))

(declare-fun b_lambda!118111 () Bool)

(assert (=> (not b_lambda!118111) (not b!4043178)))

(assert (=> b!4043178 t!335224))

(declare-fun b_and!310851 () Bool)

(assert (= b_and!310847 (and (=> t!335224 result!294606) b_and!310851)))

(assert (=> b!4043178 t!335226))

(declare-fun b_and!310853 () Bool)

(assert (= b_and!310849 (and (=> t!335226 result!294610) b_and!310853)))

(declare-fun m!4640371 () Bool)

(assert (=> d!1199635 m!4640371))

(assert (=> b!4043178 m!4639615))

(assert (=> b!4043178 m!4639615))

(declare-fun m!4640373 () Bool)

(assert (=> b!4043178 m!4640373))

(assert (=> b!4043179 m!4639291))

(assert (=> start!381224 d!1199635))

(declare-fun e!2508590 () Bool)

(declare-fun lt!1439056 () List!43373)

(declare-fun b!4043183 () Bool)

(assert (=> b!4043183 (= e!2508590 (or (not (= lt!1438799 Nil!43249)) (= lt!1439056 newSuffix!27)))))

(declare-fun b!4043181 () Bool)

(declare-fun e!2508591 () List!43373)

(assert (=> b!4043181 (= e!2508591 (Cons!43249 (h!48669 newSuffix!27) (++!11326 (t!335212 newSuffix!27) lt!1438799)))))

(declare-fun b!4043180 () Bool)

(assert (=> b!4043180 (= e!2508591 lt!1438799)))

(declare-fun b!4043182 () Bool)

(declare-fun res!1646847 () Bool)

(assert (=> b!4043182 (=> (not res!1646847) (not e!2508590))))

(assert (=> b!4043182 (= res!1646847 (= (size!32333 lt!1439056) (+ (size!32333 newSuffix!27) (size!32333 lt!1438799))))))

(declare-fun d!1199637 () Bool)

(assert (=> d!1199637 e!2508590))

(declare-fun res!1646846 () Bool)

(assert (=> d!1199637 (=> (not res!1646846) (not e!2508590))))

(assert (=> d!1199637 (= res!1646846 (= (content!6581 lt!1439056) ((_ map or) (content!6581 newSuffix!27) (content!6581 lt!1438799))))))

(assert (=> d!1199637 (= lt!1439056 e!2508591)))

(declare-fun c!698474 () Bool)

(assert (=> d!1199637 (= c!698474 ((_ is Nil!43249) newSuffix!27))))

(assert (=> d!1199637 (= (++!11326 newSuffix!27 lt!1438799) lt!1439056)))

(assert (= (and d!1199637 c!698474) b!4043180))

(assert (= (and d!1199637 (not c!698474)) b!4043181))

(assert (= (and d!1199637 res!1646846) b!4043182))

(assert (= (and b!4043182 res!1646847) b!4043183))

(declare-fun m!4640375 () Bool)

(assert (=> b!4043181 m!4640375))

(declare-fun m!4640377 () Bool)

(assert (=> b!4043182 m!4640377))

(assert (=> b!4043182 m!4639243))

(assert (=> b!4043182 m!4640223))

(declare-fun m!4640379 () Bool)

(assert (=> d!1199637 m!4640379))

(assert (=> d!1199637 m!4640243))

(assert (=> d!1199637 m!4640229))

(assert (=> b!4042512 d!1199637))

(declare-fun d!1199639 () Bool)

(declare-fun lt!1439057 () List!43373)

(assert (=> d!1199639 (= (++!11326 newSuffix!27 lt!1439057) suffix!1299)))

(declare-fun e!2508592 () List!43373)

(assert (=> d!1199639 (= lt!1439057 e!2508592)))

(declare-fun c!698475 () Bool)

(assert (=> d!1199639 (= c!698475 ((_ is Cons!43249) newSuffix!27))))

(assert (=> d!1199639 (>= (size!32333 suffix!1299) (size!32333 newSuffix!27))))

(assert (=> d!1199639 (= (getSuffix!2428 suffix!1299 newSuffix!27) lt!1439057)))

(declare-fun b!4043184 () Bool)

(assert (=> b!4043184 (= e!2508592 (getSuffix!2428 (tail!6287 suffix!1299) (t!335212 newSuffix!27)))))

(declare-fun b!4043185 () Bool)

(assert (=> b!4043185 (= e!2508592 suffix!1299)))

(assert (= (and d!1199639 c!698475) b!4043184))

(assert (= (and d!1199639 (not c!698475)) b!4043185))

(declare-fun m!4640381 () Bool)

(assert (=> d!1199639 m!4640381))

(assert (=> d!1199639 m!4639241))

(assert (=> d!1199639 m!4639243))

(assert (=> b!4043184 m!4640191))

(assert (=> b!4043184 m!4640191))

(declare-fun m!4640383 () Bool)

(assert (=> b!4043184 m!4640383))

(assert (=> b!4042512 d!1199639))

(declare-fun b!4043190 () Bool)

(declare-fun e!2508595 () Bool)

(declare-fun tp!1227185 () Bool)

(assert (=> b!4043190 (= e!2508595 (and tp_is_empty!20629 tp!1227185))))

(assert (=> b!4042527 (= tp!1227134 e!2508595)))

(assert (= (and b!4042527 ((_ is Cons!43249) (t!335212 newSuffix!27))) b!4043190))

(declare-fun b!4043191 () Bool)

(declare-fun e!2508596 () Bool)

(declare-fun tp!1227186 () Bool)

(assert (=> b!4043191 (= e!2508596 (and tp_is_empty!20629 tp!1227186))))

(assert (=> b!4042522 (= tp!1227123 e!2508596)))

(assert (= (and b!4042522 ((_ is Cons!43249) (t!335212 suffixResult!105))) b!4043191))

(declare-fun b!4043192 () Bool)

(declare-fun e!2508597 () Bool)

(declare-fun tp!1227187 () Bool)

(assert (=> b!4043192 (= e!2508597 (and tp_is_empty!20629 tp!1227187))))

(assert (=> b!4042505 (= tp!1227125 e!2508597)))

(assert (= (and b!4042505 ((_ is Cons!43249) (t!335212 newSuffixResult!27))) b!4043192))

(declare-fun b!4043193 () Bool)

(declare-fun e!2508598 () Bool)

(declare-fun tp!1227188 () Bool)

(assert (=> b!4043193 (= e!2508598 (and tp_is_empty!20629 tp!1227188))))

(assert (=> b!4042500 (= tp!1227133 e!2508598)))

(assert (= (and b!4042500 ((_ is Cons!43249) (t!335212 prefix!494))) b!4043193))

(declare-fun b!4043204 () Bool)

(declare-fun b_free!112565 () Bool)

(declare-fun b_next!113269 () Bool)

(assert (=> b!4043204 (= b_free!112565 (not b_next!113269))))

(declare-fun t!335257 () Bool)

(declare-fun tb!243113 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335257) tb!243113))

(declare-fun result!294652 () Bool)

(assert (= result!294652 result!294620))

(assert (=> d!1199483 t!335257))

(declare-fun t!335259 () Bool)

(declare-fun tb!243115 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335259) tb!243115))

(declare-fun result!294654 () Bool)

(assert (= result!294654 result!294640))

(assert (=> d!1199603 t!335259))

(declare-fun tp!1227200 () Bool)

(declare-fun b_and!310855 () Bool)

(assert (=> b!4043204 (= tp!1227200 (and (=> t!335257 result!294652) (=> t!335259 result!294654) b_and!310855))))

(declare-fun b_free!112567 () Bool)

(declare-fun b_next!113271 () Bool)

(assert (=> b!4043204 (= b_free!112567 (not b_next!113271))))

(declare-fun tb!243117 () Bool)

(declare-fun t!335261 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335261) tb!243117))

(declare-fun result!294656 () Bool)

(assert (= result!294656 result!294606))

(assert (=> d!1199385 t!335261))

(declare-fun t!335263 () Bool)

(declare-fun tb!243119 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335263) tb!243119))

(declare-fun result!294658 () Bool)

(assert (= result!294658 result!294644))

(assert (=> d!1199621 t!335263))

(assert (=> b!4043178 t!335261))

(declare-fun tp!1227199 () Bool)

(declare-fun b_and!310857 () Bool)

(assert (=> b!4043204 (= tp!1227199 (and (=> t!335261 result!294656) (=> t!335263 result!294658) b_and!310857))))

(declare-fun e!2508607 () Bool)

(assert (=> b!4043204 (= e!2508607 (and tp!1227200 tp!1227199))))

(declare-fun e!2508609 () Bool)

(declare-fun b!4043203 () Bool)

(declare-fun tp!1227198 () Bool)

(assert (=> b!4043203 (= e!2508609 (and tp!1227198 (inv!57802 (tag!7784 (h!48671 (t!335214 rules!2999)))) (inv!57806 (transformation!6924 (h!48671 (t!335214 rules!2999)))) e!2508607))))

(declare-fun b!4043202 () Bool)

(declare-fun e!2508610 () Bool)

(declare-fun tp!1227197 () Bool)

(assert (=> b!4043202 (= e!2508610 (and e!2508609 tp!1227197))))

(assert (=> b!4042526 (= tp!1227131 e!2508610)))

(assert (= b!4043203 b!4043204))

(assert (= b!4043202 b!4043203))

(assert (= (and b!4042526 ((_ is Cons!43251) (t!335214 rules!2999))) b!4043202))

(declare-fun m!4640385 () Bool)

(assert (=> b!4043203 m!4640385))

(declare-fun m!4640387 () Bool)

(assert (=> b!4043203 m!4640387))

(declare-fun b!4043205 () Bool)

(declare-fun e!2508611 () Bool)

(declare-fun tp!1227201 () Bool)

(assert (=> b!4043205 (= e!2508611 (and tp_is_empty!20629 tp!1227201))))

(assert (=> b!4042514 (= tp!1227130 e!2508611)))

(assert (= (and b!4042514 ((_ is Cons!43249) (t!335212 suffix!1299))) b!4043205))

(declare-fun e!2508614 () Bool)

(assert (=> b!4042529 (= tp!1227126 e!2508614)))

(declare-fun b!4043216 () Bool)

(assert (=> b!4043216 (= e!2508614 tp_is_empty!20629)))

(declare-fun b!4043218 () Bool)

(declare-fun tp!1227212 () Bool)

(assert (=> b!4043218 (= e!2508614 tp!1227212)))

(declare-fun b!4043217 () Bool)

(declare-fun tp!1227215 () Bool)

(declare-fun tp!1227216 () Bool)

(assert (=> b!4043217 (= e!2508614 (and tp!1227215 tp!1227216))))

(declare-fun b!4043219 () Bool)

(declare-fun tp!1227213 () Bool)

(declare-fun tp!1227214 () Bool)

(assert (=> b!4043219 (= e!2508614 (and tp!1227213 tp!1227214))))

(assert (= (and b!4042529 ((_ is ElementMatch!11829) (regex!6924 (rule!9998 token!484)))) b!4043216))

(assert (= (and b!4042529 ((_ is Concat!18984) (regex!6924 (rule!9998 token!484)))) b!4043217))

(assert (= (and b!4042529 ((_ is Star!11829) (regex!6924 (rule!9998 token!484)))) b!4043218))

(assert (= (and b!4042529 ((_ is Union!11829) (regex!6924 (rule!9998 token!484)))) b!4043219))

(declare-fun e!2508615 () Bool)

(assert (=> b!4042518 (= tp!1227122 e!2508615)))

(declare-fun b!4043220 () Bool)

(assert (=> b!4043220 (= e!2508615 tp_is_empty!20629)))

(declare-fun b!4043222 () Bool)

(declare-fun tp!1227217 () Bool)

(assert (=> b!4043222 (= e!2508615 tp!1227217)))

(declare-fun b!4043221 () Bool)

(declare-fun tp!1227220 () Bool)

(declare-fun tp!1227221 () Bool)

(assert (=> b!4043221 (= e!2508615 (and tp!1227220 tp!1227221))))

(declare-fun b!4043223 () Bool)

(declare-fun tp!1227218 () Bool)

(declare-fun tp!1227219 () Bool)

(assert (=> b!4043223 (= e!2508615 (and tp!1227218 tp!1227219))))

(assert (= (and b!4042518 ((_ is ElementMatch!11829) (regex!6924 (h!48671 rules!2999)))) b!4043220))

(assert (= (and b!4042518 ((_ is Concat!18984) (regex!6924 (h!48671 rules!2999)))) b!4043221))

(assert (= (and b!4042518 ((_ is Star!11829) (regex!6924 (h!48671 rules!2999)))) b!4043222))

(assert (= (and b!4042518 ((_ is Union!11829) (regex!6924 (h!48671 rules!2999)))) b!4043223))

(declare-fun b!4043224 () Bool)

(declare-fun e!2508616 () Bool)

(declare-fun tp!1227222 () Bool)

(assert (=> b!4043224 (= e!2508616 (and tp_is_empty!20629 tp!1227222))))

(assert (=> b!4042501 (= tp!1227129 e!2508616)))

(assert (= (and b!4042501 ((_ is Cons!43249) (originalCharacters!7524 token!484))) b!4043224))

(declare-fun b_lambda!118113 () Bool)

(assert (= b_lambda!118111 (or (and b!4042499 b_free!112555 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 token!484))))) (and b!4042502 b_free!112559) (and b!4043204 b_free!112567 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 token!484))))) b_lambda!118113)))

(declare-fun b_lambda!118115 () Bool)

(assert (= b_lambda!118091 (or (and b!4042499 b_free!112555 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 token!484))))) (and b!4042502 b_free!112559) (and b!4043204 b_free!112567 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 token!484))))) b_lambda!118115)))

(declare-fun b_lambda!118117 () Bool)

(assert (= b_lambda!118099 (or (and b!4042499 b_free!112553 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) (and b!4042502 b_free!112557) (and b!4043204 b_free!112565 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) b_lambda!118117)))

(check-sat (not d!1199399) (not b!4042885) (not b!4043146) (not d!1199397) (not b!4043169) (not b!4043107) (not d!1199527) (not b_lambda!118117) b_and!310845 (not b!4042891) (not d!1199563) (not d!1199591) (not b_next!113261) (not b!4042941) (not b!4042576) (not b!4042651) (not d!1199593) (not b_next!113269) (not b!4042994) (not b!4042930) (not b!4043130) (not b!4042597) (not tb!243109) (not b!4042931) (not b!4042643) (not b!4043121) (not b!4043178) (not d!1199585) (not b!4043193) (not b!4043047) (not b!4043191) (not b!4043152) (not b!4043184) (not d!1199559) (not d!1199567) (not b!4042988) (not b!4042973) (not b!4042940) (not b!4042953) (not b!4043173) (not b!4043167) (not b!4043203) (not b!4043092) (not b!4043158) (not b_next!113257) (not b!4043125) (not b!4042547) (not d!1199629) (not b!4043168) (not b!4042923) (not b!4043182) (not b!4043022) (not b!4043048) (not b!4042883) (not b!4042884) (not d!1199535) b_and!310857 (not b!4043172) (not b!4042689) (not b_lambda!118109) (not d!1199639) (not b!4043181) (not d!1199637) (not b!4043116) (not b!4043163) (not bm!287520) (not b!4042574) b_and!310853 (not b!4043026) (not d!1199553) (not d!1199321) (not b!4042650) (not b!4043084) (not b!4043123) (not b!4043111) (not b!4043094) (not b!4043142) (not d!1199621) (not d!1199587) (not d!1199615) (not b!4043133) (not d!1199395) (not b!4043221) (not d!1199631) (not d!1199537) b_and!310851 (not b!4042986) (not b!4043144) (not d!1199625) (not b!4043217) (not b!4043126) (not b!4043080) (not b!4043115) (not b!4043162) (not d!1199385) (not d!1199581) (not b!4043224) (not b!4043166) (not d!1199499) (not b!4043219) (not b!4042924) (not b!4042675) (not d!1199557) b_and!310843 (not b!4043137) (not b!4043102) (not d!1199589) (not b!4043160) (not d!1199577) (not b_lambda!118107) (not b!4043017) (not d!1199541) (not b!4043171) (not d!1199607) (not b!4043030) (not b_lambda!118115) (not d!1199613) (not d!1199323) (not b!4042575) (not b!4043155) (not d!1199605) (not tb!243081) (not b!4042677) (not b_next!113271) (not d!1199595) (not d!1199375) (not b!4043021) (not d!1199623) (not tb!243105) (not d!1199353) (not d!1199511) (not d!1199539) (not b!4043118) (not b!4043113) (not b!4043157) (not b!4042922) tp_is_empty!20629 (not b!4042540) (not b!4042993) (not b!4042644) (not b!4043035) (not b!4042989) (not b!4043033) (not d!1199533) (not d!1199383) (not b!4042992) (not b!4043150) (not b!4043025) (not d!1199501) (not tb!243093) (not b_lambda!118113) (not b!4043110) (not b!4043192) (not b!4043138) (not d!1199579) (not b!4042648) (not d!1199543) (not b!4042888) (not b!4042676) (not d!1199619) (not b!4043179) (not b!4042716) (not b!4043106) (not bm!287512) (not b!4043190) (not b!4043082) (not b!4043202) (not b!4043134) (not b!4043086) (not b!4043100) (not d!1199635) (not b!4043154) (not d!1199609) (not b!4042683) (not b!4043029) (not d!1199393) (not b!4043108) (not b!4042646) (not b!4043096) (not b!4043151) (not b!4042719) (not b!4043099) (not b!4043161) (not b!4043165) (not b!4043018) (not b!4043095) (not b!4042987) (not b!4043112) (not d!1199599) (not b_next!113259) (not b!4042541) (not b!4042886) (not b!4043218) (not d!1199633) (not b!4042645) (not d!1199333) (not b!4043129) (not b!4043104) (not d!1199617) (not bm!287523) (not b!4042889) (not b!4043079) (not b!4043050) b_and!310855 (not b_next!113263) (not b!4042991) (not b!4042932) (not b!4042890) (not b!4043222) (not b!4043205) (not d!1199515) (not b!4043147) (not b!4043098) (not b!4043223) (not d!1199343) (not b!4043103) (not d!1199597) (not b!4042649) (not d!1199545) (not b!4043122))
(check-sat b_and!310845 (not b_next!113261) (not b_next!113269) (not b_next!113257) b_and!310857 b_and!310853 b_and!310851 b_and!310843 (not b_next!113271) (not b_next!113259) b_and!310855 (not b_next!113263))
(get-model)

(declare-fun d!1199661 () Bool)

(declare-fun nullableFct!1167 (Regex!11829) Bool)

(assert (=> d!1199661 (= (nullable!4151 (regex!6924 (rule!9998 token!484))) (nullableFct!1167 (regex!6924 (rule!9998 token!484))))))

(declare-fun bs!591064 () Bool)

(assert (= bs!591064 d!1199661))

(declare-fun m!4640435 () Bool)

(assert (=> bs!591064 m!4640435))

(assert (=> b!4042973 d!1199661))

(assert (=> d!1199591 d!1199637))

(declare-fun lt!1439061 () List!43373)

(declare-fun b!4043257 () Bool)

(declare-fun e!2508633 () Bool)

(assert (=> b!4043257 (= e!2508633 (or (not (= lt!1438799 Nil!43249)) (= lt!1439061 (++!11326 prefix!494 newSuffix!27))))))

(declare-fun e!2508634 () List!43373)

(declare-fun b!4043255 () Bool)

(assert (=> b!4043255 (= e!2508634 (Cons!43249 (h!48669 (++!11326 prefix!494 newSuffix!27)) (++!11326 (t!335212 (++!11326 prefix!494 newSuffix!27)) lt!1438799)))))

(declare-fun b!4043254 () Bool)

(assert (=> b!4043254 (= e!2508634 lt!1438799)))

(declare-fun b!4043256 () Bool)

(declare-fun res!1646861 () Bool)

(assert (=> b!4043256 (=> (not res!1646861) (not e!2508633))))

(assert (=> b!4043256 (= res!1646861 (= (size!32333 lt!1439061) (+ (size!32333 (++!11326 prefix!494 newSuffix!27)) (size!32333 lt!1438799))))))

(declare-fun d!1199665 () Bool)

(assert (=> d!1199665 e!2508633))

(declare-fun res!1646860 () Bool)

(assert (=> d!1199665 (=> (not res!1646860) (not e!2508633))))

(assert (=> d!1199665 (= res!1646860 (= (content!6581 lt!1439061) ((_ map or) (content!6581 (++!11326 prefix!494 newSuffix!27)) (content!6581 lt!1438799))))))

(assert (=> d!1199665 (= lt!1439061 e!2508634)))

(declare-fun c!698484 () Bool)

(assert (=> d!1199665 (= c!698484 ((_ is Nil!43249) (++!11326 prefix!494 newSuffix!27)))))

(assert (=> d!1199665 (= (++!11326 (++!11326 prefix!494 newSuffix!27) lt!1438799) lt!1439061)))

(assert (= (and d!1199665 c!698484) b!4043254))

(assert (= (and d!1199665 (not c!698484)) b!4043255))

(assert (= (and d!1199665 res!1646860) b!4043256))

(assert (= (and b!4043256 res!1646861) b!4043257))

(declare-fun m!4640437 () Bool)

(assert (=> b!4043255 m!4640437))

(declare-fun m!4640439 () Bool)

(assert (=> b!4043256 m!4640439))

(assert (=> b!4043256 m!4639263))

(declare-fun m!4640441 () Bool)

(assert (=> b!4043256 m!4640441))

(assert (=> b!4043256 m!4640223))

(declare-fun m!4640443 () Bool)

(assert (=> d!1199665 m!4640443))

(assert (=> d!1199665 m!4639263))

(declare-fun m!4640445 () Bool)

(assert (=> d!1199665 m!4640445))

(assert (=> d!1199665 m!4640229))

(assert (=> d!1199591 d!1199665))

(declare-fun b!4043261 () Bool)

(declare-fun e!2508635 () Bool)

(declare-fun lt!1439062 () List!43373)

(assert (=> b!4043261 (= e!2508635 (or (not (= (++!11326 newSuffix!27 lt!1438799) Nil!43249)) (= lt!1439062 prefix!494)))))

(declare-fun b!4043259 () Bool)

(declare-fun e!2508636 () List!43373)

(assert (=> b!4043259 (= e!2508636 (Cons!43249 (h!48669 prefix!494) (++!11326 (t!335212 prefix!494) (++!11326 newSuffix!27 lt!1438799))))))

(declare-fun b!4043258 () Bool)

(assert (=> b!4043258 (= e!2508636 (++!11326 newSuffix!27 lt!1438799))))

(declare-fun b!4043260 () Bool)

(declare-fun res!1646863 () Bool)

(assert (=> b!4043260 (=> (not res!1646863) (not e!2508635))))

(assert (=> b!4043260 (= res!1646863 (= (size!32333 lt!1439062) (+ (size!32333 prefix!494) (size!32333 (++!11326 newSuffix!27 lt!1438799)))))))

(declare-fun d!1199667 () Bool)

(assert (=> d!1199667 e!2508635))

(declare-fun res!1646862 () Bool)

(assert (=> d!1199667 (=> (not res!1646862) (not e!2508635))))

(assert (=> d!1199667 (= res!1646862 (= (content!6581 lt!1439062) ((_ map or) (content!6581 prefix!494) (content!6581 (++!11326 newSuffix!27 lt!1438799)))))))

(assert (=> d!1199667 (= lt!1439062 e!2508636)))

(declare-fun c!698485 () Bool)

(assert (=> d!1199667 (= c!698485 ((_ is Nil!43249) prefix!494))))

(assert (=> d!1199667 (= (++!11326 prefix!494 (++!11326 newSuffix!27 lt!1438799)) lt!1439062)))

(assert (= (and d!1199667 c!698485) b!4043258))

(assert (= (and d!1199667 (not c!698485)) b!4043259))

(assert (= (and d!1199667 res!1646862) b!4043260))

(assert (= (and b!4043260 res!1646863) b!4043261))

(assert (=> b!4043259 m!4639229))

(declare-fun m!4640447 () Bool)

(assert (=> b!4043259 m!4640447))

(declare-fun m!4640449 () Bool)

(assert (=> b!4043260 m!4640449))

(assert (=> b!4043260 m!4639205))

(assert (=> b!4043260 m!4639229))

(declare-fun m!4640451 () Bool)

(assert (=> b!4043260 m!4640451))

(declare-fun m!4640453 () Bool)

(assert (=> d!1199667 m!4640453))

(assert (=> d!1199667 m!4640093))

(assert (=> d!1199667 m!4639229))

(declare-fun m!4640455 () Bool)

(assert (=> d!1199667 m!4640455))

(assert (=> d!1199591 d!1199667))

(assert (=> d!1199591 d!1199593))

(declare-fun d!1199669 () Bool)

(assert (=> d!1199669 (= (++!11326 (++!11326 prefix!494 newSuffix!27) lt!1438799) (++!11326 prefix!494 (++!11326 newSuffix!27 lt!1438799)))))

(assert (=> d!1199669 true))

(declare-fun _$52!2319 () Unit!62477)

(assert (=> d!1199669 (= (choose!24508 prefix!494 newSuffix!27 lt!1438799) _$52!2319)))

(declare-fun bs!591065 () Bool)

(assert (= bs!591065 d!1199669))

(assert (=> bs!591065 m!4639263))

(assert (=> bs!591065 m!4639263))

(assert (=> bs!591065 m!4640235))

(assert (=> bs!591065 m!4639229))

(assert (=> bs!591065 m!4639229))

(assert (=> bs!591065 m!4640233))

(assert (=> d!1199591 d!1199669))

(declare-fun d!1199671 () Bool)

(assert (=> d!1199671 (= (get!14192 lt!1439047) (v!39739 lt!1439047))))

(assert (=> b!4043160 d!1199671))

(declare-fun d!1199673 () Bool)

(declare-fun lt!1439063 () Int)

(assert (=> d!1199673 (>= lt!1439063 0)))

(declare-fun e!2508637 () Int)

(assert (=> d!1199673 (= lt!1439063 e!2508637)))

(declare-fun c!698486 () Bool)

(assert (=> d!1199673 (= c!698486 ((_ is Nil!43249) (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047)))))))

(assert (=> d!1199673 (= (size!32333 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047)))) lt!1439063)))

(declare-fun b!4043262 () Bool)

(assert (=> b!4043262 (= e!2508637 0)))

(declare-fun b!4043263 () Bool)

(assert (=> b!4043263 (= e!2508637 (+ 1 (size!32333 (t!335212 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047)))))))))

(assert (= (and d!1199673 c!698486) b!4043262))

(assert (= (and d!1199673 (not c!698486)) b!4043263))

(declare-fun m!4640457 () Bool)

(assert (=> b!4043263 m!4640457))

(assert (=> b!4043160 d!1199673))

(assert (=> d!1199633 d!1199627))

(assert (=> d!1199633 d!1199613))

(declare-fun d!1199675 () Bool)

(assert (=> d!1199675 (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 newSuffixResult!27))))

(assert (=> d!1199675 true))

(declare-fun _$46!1774 () Unit!62477)

(assert (=> d!1199675 (= (choose!24505 lt!1438792 newSuffixResult!27) _$46!1774)))

(declare-fun bs!591066 () Bool)

(assert (= bs!591066 d!1199675))

(assert (=> bs!591066 m!4639315))

(assert (=> bs!591066 m!4639315))

(assert (=> bs!591066 m!4639333))

(assert (=> d!1199633 d!1199675))

(declare-fun d!1199677 () Bool)

(assert (=> d!1199677 (= (get!14192 lt!1438965) (v!39739 lt!1438965))))

(assert (=> b!4042884 d!1199677))

(declare-fun d!1199679 () Bool)

(assert (=> d!1199679 (= (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965))))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965))))))))

(declare-fun b_lambda!118121 () Bool)

(assert (=> (not b_lambda!118121) (not d!1199679)))

(declare-fun t!335272 () Bool)

(declare-fun tb!243127 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335272) tb!243127))

(declare-fun result!294668 () Bool)

(assert (=> tb!243127 (= result!294668 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965)))))))))

(declare-fun m!4640459 () Bool)

(assert (=> tb!243127 m!4640459))

(assert (=> d!1199679 t!335272))

(declare-fun b_and!310865 () Bool)

(assert (= b_and!310843 (and (=> t!335272 result!294668) b_and!310865)))

(declare-fun t!335274 () Bool)

(declare-fun tb!243129 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335274) tb!243129))

(declare-fun result!294670 () Bool)

(assert (= result!294670 result!294668))

(assert (=> d!1199679 t!335274))

(declare-fun b_and!310867 () Bool)

(assert (= b_and!310845 (and (=> t!335274 result!294670) b_and!310867)))

(declare-fun t!335276 () Bool)

(declare-fun tb!243131 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335276) tb!243131))

(declare-fun result!294672 () Bool)

(assert (= result!294672 result!294668))

(assert (=> d!1199679 t!335276))

(declare-fun b_and!310869 () Bool)

(assert (= b_and!310855 (and (=> t!335276 result!294672) b_and!310869)))

(assert (=> d!1199679 m!4639933))

(declare-fun m!4640461 () Bool)

(assert (=> d!1199679 m!4640461))

(assert (=> b!4042884 d!1199679))

(declare-fun d!1199681 () Bool)

(assert (=> d!1199681 (= (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965)))) (fromListB!2346 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965)))))))

(declare-fun bs!591067 () Bool)

(assert (= bs!591067 d!1199681))

(declare-fun m!4640463 () Bool)

(assert (=> bs!591067 m!4640463))

(assert (=> b!4042884 d!1199681))

(declare-fun d!1199683 () Bool)

(declare-fun c!698489 () Bool)

(assert (=> d!1199683 (= c!698489 ((_ is Nil!43249) lt!1439030))))

(declare-fun e!2508641 () (InoxSet C!23844))

(assert (=> d!1199683 (= (content!6581 lt!1439030) e!2508641)))

(declare-fun b!4043268 () Bool)

(assert (=> b!4043268 (= e!2508641 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043269 () Bool)

(assert (=> b!4043269 (= e!2508641 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439030) true) (content!6581 (t!335212 lt!1439030))))))

(assert (= (and d!1199683 c!698489) b!4043268))

(assert (= (and d!1199683 (not c!698489)) b!4043269))

(declare-fun m!4640465 () Bool)

(assert (=> b!4043269 m!4640465))

(declare-fun m!4640467 () Bool)

(assert (=> b!4043269 m!4640467))

(assert (=> d!1199579 d!1199683))

(declare-fun d!1199685 () Bool)

(declare-fun c!698490 () Bool)

(assert (=> d!1199685 (= c!698490 ((_ is Nil!43249) lt!1438798))))

(declare-fun e!2508642 () (InoxSet C!23844))

(assert (=> d!1199685 (= (content!6581 lt!1438798) e!2508642)))

(declare-fun b!4043270 () Bool)

(assert (=> b!4043270 (= e!2508642 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043271 () Bool)

(assert (=> b!4043271 (= e!2508642 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438798) true) (content!6581 (t!335212 lt!1438798))))))

(assert (= (and d!1199685 c!698490) b!4043270))

(assert (= (and d!1199685 (not c!698490)) b!4043271))

(declare-fun m!4640469 () Bool)

(assert (=> b!4043271 m!4640469))

(declare-fun m!4640471 () Bool)

(assert (=> b!4043271 m!4640471))

(assert (=> d!1199579 d!1199685))

(declare-fun d!1199687 () Bool)

(declare-fun c!698491 () Bool)

(assert (=> d!1199687 (= c!698491 ((_ is Nil!43249) lt!1438769))))

(declare-fun e!2508643 () (InoxSet C!23844))

(assert (=> d!1199687 (= (content!6581 lt!1438769) e!2508643)))

(declare-fun b!4043272 () Bool)

(assert (=> b!4043272 (= e!2508643 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043273 () Bool)

(assert (=> b!4043273 (= e!2508643 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438769) true) (content!6581 (t!335212 lt!1438769))))))

(assert (= (and d!1199687 c!698491) b!4043272))

(assert (= (and d!1199687 (not c!698491)) b!4043273))

(declare-fun m!4640473 () Bool)

(assert (=> b!4043273 m!4640473))

(declare-fun m!4640475 () Bool)

(assert (=> b!4043273 m!4640475))

(assert (=> d!1199579 d!1199687))

(declare-fun d!1199689 () Bool)

(declare-fun lt!1439064 () Int)

(assert (=> d!1199689 (>= lt!1439064 0)))

(declare-fun e!2508644 () Int)

(assert (=> d!1199689 (= lt!1439064 e!2508644)))

(declare-fun c!698492 () Bool)

(assert (=> d!1199689 (= c!698492 ((_ is Nil!43249) lt!1438774))))

(assert (=> d!1199689 (= (size!32333 lt!1438774) lt!1439064)))

(declare-fun b!4043274 () Bool)

(assert (=> b!4043274 (= e!2508644 0)))

(declare-fun b!4043275 () Bool)

(assert (=> b!4043275 (= e!2508644 (+ 1 (size!32333 (t!335212 lt!1438774))))))

(assert (= (and d!1199689 c!698492) b!4043274))

(assert (= (and d!1199689 (not c!698492)) b!4043275))

(declare-fun m!4640477 () Bool)

(assert (=> b!4043275 m!4640477))

(assert (=> b!4042924 d!1199689))

(assert (=> b!4042924 d!1199379))

(declare-fun b!4043276 () Bool)

(declare-fun res!1646867 () Bool)

(declare-fun e!2508651 () Bool)

(assert (=> b!4043276 (=> res!1646867 e!2508651)))

(assert (=> b!4043276 (= res!1646867 (not (isEmpty!25817 (tail!6287 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))))

(declare-fun d!1199691 () Bool)

(declare-fun e!2508648 () Bool)

(assert (=> d!1199691 e!2508648))

(declare-fun c!698495 () Bool)

(assert (=> d!1199691 (= c!698495 ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun lt!1439065 () Bool)

(declare-fun e!2508647 () Bool)

(assert (=> d!1199691 (= lt!1439065 e!2508647)))

(declare-fun c!698494 () Bool)

(assert (=> d!1199691 (= c!698494 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(assert (=> d!1199691 (validRegex!5351 (regex!6924 (rule!9998 token!484)))))

(assert (=> d!1199691 (= (matchR!5782 (regex!6924 (rule!9998 token!484)) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))) lt!1439065)))

(declare-fun b!4043277 () Bool)

(assert (=> b!4043277 (= e!2508651 (not (= (head!8555 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))) (c!698371 (regex!6924 (rule!9998 token!484))))))))

(declare-fun b!4043278 () Bool)

(declare-fun res!1646868 () Bool)

(declare-fun e!2508650 () Bool)

(assert (=> b!4043278 (=> res!1646868 e!2508650)))

(assert (=> b!4043278 (= res!1646868 (not ((_ is ElementMatch!11829) (regex!6924 (rule!9998 token!484)))))))

(declare-fun e!2508649 () Bool)

(assert (=> b!4043278 (= e!2508649 e!2508650)))

(declare-fun b!4043279 () Bool)

(assert (=> b!4043279 (= e!2508647 (nullable!4151 (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4043280 () Bool)

(declare-fun call!287530 () Bool)

(assert (=> b!4043280 (= e!2508648 (= lt!1439065 call!287530))))

(declare-fun b!4043281 () Bool)

(declare-fun e!2508645 () Bool)

(assert (=> b!4043281 (= e!2508645 (= (head!8555 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))) (c!698371 (regex!6924 (rule!9998 token!484)))))))

(declare-fun b!4043282 () Bool)

(assert (=> b!4043282 (= e!2508648 e!2508649)))

(declare-fun c!698493 () Bool)

(assert (=> b!4043282 (= c!698493 ((_ is EmptyLang!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4043283 () Bool)

(assert (=> b!4043283 (= e!2508647 (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775))))) (tail!6287 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775))))))))

(declare-fun b!4043284 () Bool)

(assert (=> b!4043284 (= e!2508649 (not lt!1439065))))

(declare-fun b!4043285 () Bool)

(declare-fun e!2508646 () Bool)

(assert (=> b!4043285 (= e!2508650 e!2508646)))

(declare-fun res!1646864 () Bool)

(assert (=> b!4043285 (=> (not res!1646864) (not e!2508646))))

(assert (=> b!4043285 (= res!1646864 (not lt!1439065))))

(declare-fun b!4043286 () Bool)

(assert (=> b!4043286 (= e!2508646 e!2508651)))

(declare-fun res!1646865 () Bool)

(assert (=> b!4043286 (=> res!1646865 e!2508651)))

(assert (=> b!4043286 (= res!1646865 call!287530)))

(declare-fun b!4043287 () Bool)

(declare-fun res!1646869 () Bool)

(assert (=> b!4043287 (=> (not res!1646869) (not e!2508645))))

(assert (=> b!4043287 (= res!1646869 (not call!287530))))

(declare-fun b!4043288 () Bool)

(declare-fun res!1646870 () Bool)

(assert (=> b!4043288 (=> res!1646870 e!2508650)))

(assert (=> b!4043288 (= res!1646870 e!2508645)))

(declare-fun res!1646866 () Bool)

(assert (=> b!4043288 (=> (not res!1646866) (not e!2508645))))

(assert (=> b!4043288 (= res!1646866 lt!1439065)))

(declare-fun b!4043289 () Bool)

(declare-fun res!1646871 () Bool)

(assert (=> b!4043289 (=> (not res!1646871) (not e!2508645))))

(assert (=> b!4043289 (= res!1646871 (isEmpty!25817 (tail!6287 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775))))))))

(declare-fun bm!287525 () Bool)

(assert (=> bm!287525 (= call!287530 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(assert (= (and d!1199691 c!698494) b!4043279))

(assert (= (and d!1199691 (not c!698494)) b!4043283))

(assert (= (and d!1199691 c!698495) b!4043280))

(assert (= (and d!1199691 (not c!698495)) b!4043282))

(assert (= (and b!4043282 c!698493) b!4043284))

(assert (= (and b!4043282 (not c!698493)) b!4043278))

(assert (= (and b!4043278 (not res!1646868)) b!4043288))

(assert (= (and b!4043288 res!1646866) b!4043287))

(assert (= (and b!4043287 res!1646869) b!4043289))

(assert (= (and b!4043289 res!1646871) b!4043281))

(assert (= (and b!4043288 (not res!1646870)) b!4043285))

(assert (= (and b!4043285 res!1646864) b!4043286))

(assert (= (and b!4043286 (not res!1646865)) b!4043276))

(assert (= (and b!4043276 (not res!1646867)) b!4043277))

(assert (= (or b!4043280 b!4043286 b!4043287) bm!287525))

(declare-fun m!4640479 () Bool)

(assert (=> b!4043289 m!4640479))

(assert (=> b!4043289 m!4640479))

(declare-fun m!4640481 () Bool)

(assert (=> b!4043289 m!4640481))

(declare-fun m!4640483 () Bool)

(assert (=> b!4043277 m!4640483))

(assert (=> b!4043281 m!4640483))

(assert (=> b!4043279 m!4640051))

(assert (=> b!4043283 m!4640483))

(assert (=> b!4043283 m!4640483))

(declare-fun m!4640485 () Bool)

(assert (=> b!4043283 m!4640485))

(assert (=> b!4043283 m!4640479))

(assert (=> b!4043283 m!4640485))

(assert (=> b!4043283 m!4640479))

(declare-fun m!4640487 () Bool)

(assert (=> b!4043283 m!4640487))

(assert (=> b!4043276 m!4640479))

(assert (=> b!4043276 m!4640479))

(assert (=> b!4043276 m!4640481))

(assert (=> bm!287525 m!4639917))

(assert (=> d!1199691 m!4639917))

(assert (=> d!1199691 m!4640049))

(assert (=> b!4042888 d!1199691))

(declare-fun bm!287542 () Bool)

(declare-fun call!287548 () List!43373)

(assert (=> bm!287542 (= call!287548 (tail!6287 lt!1438775))))

(declare-fun b!4043318 () Bool)

(declare-fun c!698511 () Bool)

(declare-fun call!287547 () Bool)

(assert (=> b!4043318 (= c!698511 call!287547)))

(declare-fun lt!1439126 () Unit!62477)

(declare-fun lt!1439143 () Unit!62477)

(assert (=> b!4043318 (= lt!1439126 lt!1439143)))

(declare-fun lt!1439139 () C!23844)

(declare-fun lt!1439149 () List!43373)

(assert (=> b!4043318 (= (++!11326 (++!11326 Nil!43249 (Cons!43249 lt!1439139 Nil!43249)) lt!1439149) lt!1438775)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1256 (List!43373 C!23844 List!43373 List!43373) Unit!62477)

(assert (=> b!4043318 (= lt!1439143 (lemmaMoveElementToOtherListKeepsConcatEq!1256 Nil!43249 lt!1439139 lt!1439149 lt!1438775))))

(assert (=> b!4043318 (= lt!1439149 (tail!6287 lt!1438775))))

(assert (=> b!4043318 (= lt!1439139 (head!8555 lt!1438775))))

(declare-fun lt!1439124 () Unit!62477)

(declare-fun lt!1439155 () Unit!62477)

(assert (=> b!4043318 (= lt!1439124 lt!1439155)))

(assert (=> b!4043318 (isPrefix!4011 (++!11326 Nil!43249 (Cons!43249 (head!8555 (getSuffix!2428 lt!1438775 Nil!43249)) Nil!43249)) lt!1438775)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!638 (List!43373 List!43373) Unit!62477)

(assert (=> b!4043318 (= lt!1439155 (lemmaAddHeadSuffixToPrefixStillPrefix!638 Nil!43249 lt!1438775))))

(declare-fun lt!1439152 () Unit!62477)

(declare-fun lt!1439134 () Unit!62477)

(assert (=> b!4043318 (= lt!1439152 lt!1439134)))

(assert (=> b!4043318 (= lt!1439134 (lemmaAddHeadSuffixToPrefixStillPrefix!638 Nil!43249 lt!1438775))))

(declare-fun lt!1439146 () List!43373)

(assert (=> b!4043318 (= lt!1439146 (++!11326 Nil!43249 (Cons!43249 (head!8555 lt!1438775) Nil!43249)))))

(declare-fun lt!1439123 () Unit!62477)

(declare-fun e!2508674 () Unit!62477)

(assert (=> b!4043318 (= lt!1439123 e!2508674)))

(declare-fun c!698508 () Bool)

(assert (=> b!4043318 (= c!698508 (= (size!32333 Nil!43249) (size!32333 lt!1438775)))))

(declare-fun lt!1439131 () Unit!62477)

(declare-fun lt!1439136 () Unit!62477)

(assert (=> b!4043318 (= lt!1439131 lt!1439136)))

(assert (=> b!4043318 (<= (size!32333 Nil!43249) (size!32333 lt!1438775))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!446 (List!43373 List!43373) Unit!62477)

(assert (=> b!4043318 (= lt!1439136 (lemmaIsPrefixThenSmallerEqSize!446 Nil!43249 lt!1438775))))

(declare-fun e!2508668 () tuple2!42334)

(declare-fun e!2508673 () tuple2!42334)

(assert (=> b!4043318 (= e!2508668 e!2508673)))

(declare-fun bm!287543 () Bool)

(declare-fun call!287554 () Bool)

(assert (=> bm!287543 (= call!287554 (isPrefix!4011 lt!1438775 lt!1438775))))

(declare-fun b!4043319 () Bool)

(declare-fun c!698513 () Bool)

(assert (=> b!4043319 (= c!698513 call!287547)))

(declare-fun lt!1439132 () Unit!62477)

(declare-fun lt!1439150 () Unit!62477)

(assert (=> b!4043319 (= lt!1439132 lt!1439150)))

(assert (=> b!4043319 (= lt!1438775 Nil!43249)))

(declare-fun call!287549 () Unit!62477)

(assert (=> b!4043319 (= lt!1439150 call!287549)))

(declare-fun lt!1439127 () Unit!62477)

(declare-fun lt!1439129 () Unit!62477)

(assert (=> b!4043319 (= lt!1439127 lt!1439129)))

(assert (=> b!4043319 call!287554))

(declare-fun call!287552 () Unit!62477)

(assert (=> b!4043319 (= lt!1439129 call!287552)))

(declare-fun e!2508669 () tuple2!42334)

(assert (=> b!4043319 (= e!2508668 e!2508669)))

(declare-fun bm!287544 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!922 (List!43373 List!43373 List!43373) Unit!62477)

(assert (=> bm!287544 (= call!287549 (lemmaIsPrefixSameLengthThenSameList!922 lt!1438775 Nil!43249 lt!1438775))))

(declare-fun b!4043320 () Bool)

(declare-fun e!2508672 () tuple2!42334)

(assert (=> b!4043320 (= e!2508672 e!2508668)))

(declare-fun c!698509 () Bool)

(assert (=> b!4043320 (= c!698509 (= (size!32333 Nil!43249) (size!32333 lt!1438775)))))

(declare-fun b!4043321 () Bool)

(declare-fun e!2508671 () tuple2!42334)

(assert (=> b!4043321 (= e!2508671 (tuple2!42335 Nil!43249 lt!1438775))))

(declare-fun b!4043322 () Bool)

(declare-fun e!2508675 () Bool)

(declare-fun lt!1439147 () tuple2!42334)

(assert (=> b!4043322 (= e!2508675 (>= (size!32333 (_1!24301 lt!1439147)) (size!32333 Nil!43249)))))

(declare-fun d!1199693 () Bool)

(declare-fun e!2508670 () Bool)

(assert (=> d!1199693 e!2508670))

(declare-fun res!1646876 () Bool)

(assert (=> d!1199693 (=> (not res!1646876) (not e!2508670))))

(assert (=> d!1199693 (= res!1646876 (= (++!11326 (_1!24301 lt!1439147) (_2!24301 lt!1439147)) lt!1438775))))

(assert (=> d!1199693 (= lt!1439147 e!2508672)))

(declare-fun c!698510 () Bool)

(declare-fun lostCause!1012 (Regex!11829) Bool)

(assert (=> d!1199693 (= c!698510 (lostCause!1012 (regex!6924 (rule!9998 token!484))))))

(declare-fun lt!1439151 () Unit!62477)

(declare-fun Unit!62488 () Unit!62477)

(assert (=> d!1199693 (= lt!1439151 Unit!62488)))

(assert (=> d!1199693 (= (getSuffix!2428 lt!1438775 Nil!43249) lt!1438775)))

(declare-fun lt!1439122 () Unit!62477)

(declare-fun lt!1439153 () Unit!62477)

(assert (=> d!1199693 (= lt!1439122 lt!1439153)))

(declare-fun lt!1439135 () List!43373)

(assert (=> d!1199693 (= lt!1438775 lt!1439135)))

(assert (=> d!1199693 (= lt!1439153 (lemmaSamePrefixThenSameSuffix!2172 Nil!43249 lt!1438775 Nil!43249 lt!1439135 lt!1438775))))

(assert (=> d!1199693 (= lt!1439135 (getSuffix!2428 lt!1438775 Nil!43249))))

(declare-fun lt!1439130 () Unit!62477)

(declare-fun lt!1439154 () Unit!62477)

(assert (=> d!1199693 (= lt!1439130 lt!1439154)))

(assert (=> d!1199693 (isPrefix!4011 Nil!43249 (++!11326 Nil!43249 lt!1438775))))

(assert (=> d!1199693 (= lt!1439154 (lemmaConcatTwoListThenFirstIsPrefix!2846 Nil!43249 lt!1438775))))

(assert (=> d!1199693 (validRegex!5351 (regex!6924 (rule!9998 token!484)))))

(assert (=> d!1199693 (= (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)) lt!1439147)))

(declare-fun bm!287545 () Bool)

(assert (=> bm!287545 (= call!287552 (lemmaIsPrefixRefl!2578 lt!1438775 lt!1438775))))

(declare-fun b!4043323 () Bool)

(declare-fun Unit!62489 () Unit!62477)

(assert (=> b!4043323 (= e!2508674 Unit!62489)))

(declare-fun lt!1439128 () Unit!62477)

(assert (=> b!4043323 (= lt!1439128 call!287552)))

(assert (=> b!4043323 call!287554))

(declare-fun lt!1439145 () Unit!62477)

(assert (=> b!4043323 (= lt!1439145 lt!1439128)))

(declare-fun lt!1439148 () Unit!62477)

(assert (=> b!4043323 (= lt!1439148 call!287549)))

(assert (=> b!4043323 (= lt!1438775 Nil!43249)))

(declare-fun lt!1439133 () Unit!62477)

(assert (=> b!4043323 (= lt!1439133 lt!1439148)))

(assert (=> b!4043323 false))

(declare-fun b!4043324 () Bool)

(assert (=> b!4043324 (= e!2508673 e!2508671)))

(declare-fun lt!1439125 () tuple2!42334)

(declare-fun call!287550 () tuple2!42334)

(assert (=> b!4043324 (= lt!1439125 call!287550)))

(declare-fun c!698512 () Bool)

(assert (=> b!4043324 (= c!698512 (isEmpty!25817 (_1!24301 lt!1439125)))))

(declare-fun bm!287546 () Bool)

(declare-fun call!287551 () Regex!11829)

(declare-fun call!287553 () C!23844)

(assert (=> bm!287546 (= call!287551 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) call!287553))))

(declare-fun b!4043325 () Bool)

(assert (=> b!4043325 (= e!2508669 (tuple2!42335 Nil!43249 Nil!43249))))

(declare-fun b!4043326 () Bool)

(assert (=> b!4043326 (= e!2508669 (tuple2!42335 Nil!43249 lt!1438775))))

(declare-fun b!4043327 () Bool)

(declare-fun Unit!62491 () Unit!62477)

(assert (=> b!4043327 (= e!2508674 Unit!62491)))

(declare-fun bm!287547 () Bool)

(assert (=> bm!287547 (= call!287553 (head!8555 lt!1438775))))

(declare-fun b!4043328 () Bool)

(assert (=> b!4043328 (= e!2508671 lt!1439125)))

(declare-fun b!4043329 () Bool)

(assert (=> b!4043329 (= e!2508670 e!2508675)))

(declare-fun res!1646877 () Bool)

(assert (=> b!4043329 (=> res!1646877 e!2508675)))

(assert (=> b!4043329 (= res!1646877 (isEmpty!25817 (_1!24301 lt!1439147)))))

(declare-fun b!4043330 () Bool)

(assert (=> b!4043330 (= e!2508673 call!287550)))

(declare-fun b!4043331 () Bool)

(assert (=> b!4043331 (= e!2508672 (tuple2!42335 Nil!43249 lt!1438775))))

(declare-fun bm!287548 () Bool)

(assert (=> bm!287548 (= call!287550 (findLongestMatchInner!1389 call!287551 lt!1439146 (+ (size!32333 Nil!43249) 1) call!287548 lt!1438775 (size!32333 lt!1438775)))))

(declare-fun bm!287549 () Bool)

(assert (=> bm!287549 (= call!287547 (nullable!4151 (regex!6924 (rule!9998 token!484))))))

(assert (= (and d!1199693 c!698510) b!4043331))

(assert (= (and d!1199693 (not c!698510)) b!4043320))

(assert (= (and b!4043320 c!698509) b!4043319))

(assert (= (and b!4043320 (not c!698509)) b!4043318))

(assert (= (and b!4043319 c!698513) b!4043325))

(assert (= (and b!4043319 (not c!698513)) b!4043326))

(assert (= (and b!4043318 c!698508) b!4043323))

(assert (= (and b!4043318 (not c!698508)) b!4043327))

(assert (= (and b!4043318 c!698511) b!4043324))

(assert (= (and b!4043318 (not c!698511)) b!4043330))

(assert (= (and b!4043324 c!698512) b!4043321))

(assert (= (and b!4043324 (not c!698512)) b!4043328))

(assert (= (or b!4043324 b!4043330) bm!287547))

(assert (= (or b!4043324 b!4043330) bm!287542))

(assert (= (or b!4043324 b!4043330) bm!287546))

(assert (= (or b!4043324 b!4043330) bm!287548))

(assert (= (or b!4043319 b!4043323) bm!287543))

(assert (= (or b!4043319 b!4043318) bm!287549))

(assert (= (or b!4043319 b!4043323) bm!287544))

(assert (= (or b!4043319 b!4043323) bm!287545))

(assert (= (and d!1199693 res!1646876) b!4043329))

(assert (= (and b!4043329 (not res!1646877)) b!4043322))

(assert (=> bm!287543 m!4639259))

(assert (=> bm!287545 m!4639261))

(assert (=> bm!287542 m!4639361))

(declare-fun m!4640489 () Bool)

(assert (=> b!4043329 m!4640489))

(declare-fun m!4640491 () Bool)

(assert (=> b!4043318 m!4640491))

(declare-fun m!4640493 () Bool)

(assert (=> b!4043318 m!4640493))

(declare-fun m!4640495 () Bool)

(assert (=> b!4043318 m!4640495))

(declare-fun m!4640497 () Bool)

(assert (=> b!4043318 m!4640497))

(assert (=> b!4043318 m!4640495))

(assert (=> b!4043318 m!4639885))

(declare-fun m!4640499 () Bool)

(assert (=> b!4043318 m!4640499))

(declare-fun m!4640501 () Bool)

(assert (=> b!4043318 m!4640501))

(assert (=> b!4043318 m!4639359))

(declare-fun m!4640503 () Bool)

(assert (=> b!4043318 m!4640503))

(declare-fun m!4640505 () Bool)

(assert (=> b!4043318 m!4640505))

(assert (=> b!4043318 m!4640503))

(assert (=> b!4043318 m!4640491))

(declare-fun m!4640507 () Bool)

(assert (=> b!4043318 m!4640507))

(declare-fun m!4640509 () Bool)

(assert (=> b!4043318 m!4640509))

(assert (=> b!4043318 m!4639361))

(assert (=> b!4043318 m!4639387))

(assert (=> bm!287547 m!4639387))

(assert (=> bm!287549 m!4640051))

(declare-fun m!4640511 () Bool)

(assert (=> b!4043324 m!4640511))

(declare-fun m!4640513 () Bool)

(assert (=> bm!287546 m!4640513))

(declare-fun m!4640515 () Bool)

(assert (=> bm!287544 m!4640515))

(assert (=> bm!287548 m!4639359))

(declare-fun m!4640517 () Bool)

(assert (=> bm!287548 m!4640517))

(declare-fun m!4640519 () Bool)

(assert (=> d!1199693 m!4640519))

(declare-fun m!4640521 () Bool)

(assert (=> d!1199693 m!4640521))

(declare-fun m!4640523 () Bool)

(assert (=> d!1199693 m!4640523))

(assert (=> d!1199693 m!4640049))

(declare-fun m!4640525 () Bool)

(assert (=> d!1199693 m!4640525))

(assert (=> d!1199693 m!4640519))

(assert (=> d!1199693 m!4640503))

(declare-fun m!4640527 () Bool)

(assert (=> d!1199693 m!4640527))

(declare-fun m!4640529 () Bool)

(assert (=> d!1199693 m!4640529))

(declare-fun m!4640531 () Bool)

(assert (=> b!4043322 m!4640531))

(assert (=> b!4043322 m!4639885))

(assert (=> b!4042888 d!1199693))

(declare-fun d!1199695 () Bool)

(declare-fun lt!1439206 () Int)

(assert (=> d!1199695 (>= lt!1439206 0)))

(declare-fun e!2508688 () Int)

(assert (=> d!1199695 (= lt!1439206 e!2508688)))

(declare-fun c!698526 () Bool)

(assert (=> d!1199695 (= c!698526 ((_ is Nil!43249) Nil!43249))))

(assert (=> d!1199695 (= (size!32333 Nil!43249) lt!1439206)))

(declare-fun b!4043356 () Bool)

(assert (=> b!4043356 (= e!2508688 0)))

(declare-fun b!4043357 () Bool)

(assert (=> b!4043357 (= e!2508688 (+ 1 (size!32333 (t!335212 Nil!43249))))))

(assert (= (and d!1199695 c!698526) b!4043356))

(assert (= (and d!1199695 (not c!698526)) b!4043357))

(declare-fun m!4640533 () Bool)

(assert (=> b!4043357 m!4640533))

(assert (=> b!4042888 d!1199695))

(declare-fun d!1199697 () Bool)

(declare-fun lt!1439207 () Int)

(assert (=> d!1199697 (>= lt!1439207 0)))

(declare-fun e!2508689 () Int)

(assert (=> d!1199697 (= lt!1439207 e!2508689)))

(declare-fun c!698527 () Bool)

(assert (=> d!1199697 (= c!698527 ((_ is Nil!43249) lt!1438775))))

(assert (=> d!1199697 (= (size!32333 lt!1438775) lt!1439207)))

(declare-fun b!4043358 () Bool)

(assert (=> b!4043358 (= e!2508689 0)))

(declare-fun b!4043359 () Bool)

(assert (=> b!4043359 (= e!2508689 (+ 1 (size!32333 (t!335212 lt!1438775))))))

(assert (= (and d!1199697 c!698527) b!4043358))

(assert (= (and d!1199697 (not c!698527)) b!4043359))

(declare-fun m!4640535 () Bool)

(assert (=> b!4043359 m!4640535))

(assert (=> b!4042888 d!1199697))

(declare-fun d!1199699 () Bool)

(declare-fun res!1646882 () Bool)

(declare-fun e!2508694 () Bool)

(assert (=> d!1199699 (=> res!1646882 e!2508694)))

(assert (=> d!1199699 (= res!1646882 ((_ is Nil!43251) rules!2999))))

(assert (=> d!1199699 (= (noDuplicateTag!2695 thiss!21717 rules!2999 Nil!43253) e!2508694)))

(declare-fun b!4043364 () Bool)

(declare-fun e!2508695 () Bool)

(assert (=> b!4043364 (= e!2508694 e!2508695)))

(declare-fun res!1646883 () Bool)

(assert (=> b!4043364 (=> (not res!1646883) (not e!2508695))))

(declare-fun contains!8597 (List!43377 String!49488) Bool)

(assert (=> b!4043364 (= res!1646883 (not (contains!8597 Nil!43253 (tag!7784 (h!48671 rules!2999)))))))

(declare-fun b!4043365 () Bool)

(assert (=> b!4043365 (= e!2508695 (noDuplicateTag!2695 thiss!21717 (t!335214 rules!2999) (Cons!43253 (tag!7784 (h!48671 rules!2999)) Nil!43253)))))

(assert (= (and d!1199699 (not res!1646882)) b!4043364))

(assert (= (and b!4043364 res!1646883) b!4043365))

(declare-fun m!4640537 () Bool)

(assert (=> b!4043364 m!4640537))

(declare-fun m!4640539 () Bool)

(assert (=> b!4043365 m!4640539))

(assert (=> b!4043142 d!1199699))

(declare-fun b!4043366 () Bool)

(declare-fun e!2508696 () Bool)

(declare-fun e!2508697 () Bool)

(assert (=> b!4043366 (= e!2508696 e!2508697)))

(declare-fun res!1646885 () Bool)

(assert (=> b!4043366 (=> (not res!1646885) (not e!2508697))))

(assert (=> b!4043366 (= res!1646885 (not ((_ is Nil!43249) (tail!6287 (++!11326 lt!1438792 newSuffixResult!27)))))))

(declare-fun b!4043367 () Bool)

(declare-fun res!1646886 () Bool)

(assert (=> b!4043367 (=> (not res!1646886) (not e!2508697))))

(assert (=> b!4043367 (= res!1646886 (= (head!8555 (tail!6287 lt!1438792)) (head!8555 (tail!6287 (++!11326 lt!1438792 newSuffixResult!27)))))))

(declare-fun d!1199701 () Bool)

(declare-fun e!2508698 () Bool)

(assert (=> d!1199701 e!2508698))

(declare-fun res!1646884 () Bool)

(assert (=> d!1199701 (=> res!1646884 e!2508698)))

(declare-fun lt!1439208 () Bool)

(assert (=> d!1199701 (= res!1646884 (not lt!1439208))))

(assert (=> d!1199701 (= lt!1439208 e!2508696)))

(declare-fun res!1646887 () Bool)

(assert (=> d!1199701 (=> res!1646887 e!2508696)))

(assert (=> d!1199701 (= res!1646887 ((_ is Nil!43249) (tail!6287 lt!1438792)))))

(assert (=> d!1199701 (= (isPrefix!4011 (tail!6287 lt!1438792) (tail!6287 (++!11326 lt!1438792 newSuffixResult!27))) lt!1439208)))

(declare-fun b!4043368 () Bool)

(assert (=> b!4043368 (= e!2508697 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438792)) (tail!6287 (tail!6287 (++!11326 lt!1438792 newSuffixResult!27)))))))

(declare-fun b!4043369 () Bool)

(assert (=> b!4043369 (= e!2508698 (>= (size!32333 (tail!6287 (++!11326 lt!1438792 newSuffixResult!27))) (size!32333 (tail!6287 lt!1438792))))))

(assert (= (and d!1199701 (not res!1646887)) b!4043366))

(assert (= (and b!4043366 res!1646885) b!4043367))

(assert (= (and b!4043367 res!1646886) b!4043368))

(assert (= (and d!1199701 (not res!1646884)) b!4043369))

(assert (=> b!4043367 m!4639995))

(declare-fun m!4640541 () Bool)

(assert (=> b!4043367 m!4640541))

(assert (=> b!4043367 m!4640359))

(declare-fun m!4640543 () Bool)

(assert (=> b!4043367 m!4640543))

(assert (=> b!4043368 m!4639995))

(declare-fun m!4640545 () Bool)

(assert (=> b!4043368 m!4640545))

(assert (=> b!4043368 m!4640359))

(declare-fun m!4640547 () Bool)

(assert (=> b!4043368 m!4640547))

(assert (=> b!4043368 m!4640545))

(assert (=> b!4043368 m!4640547))

(declare-fun m!4640549 () Bool)

(assert (=> b!4043368 m!4640549))

(assert (=> b!4043369 m!4640359))

(declare-fun m!4640551 () Bool)

(assert (=> b!4043369 m!4640551))

(assert (=> b!4043369 m!4639995))

(declare-fun m!4640553 () Bool)

(assert (=> b!4043369 m!4640553))

(assert (=> b!4043172 d!1199701))

(declare-fun d!1199703 () Bool)

(assert (=> d!1199703 (= (tail!6287 lt!1438792) (t!335212 lt!1438792))))

(assert (=> b!4043172 d!1199703))

(declare-fun d!1199705 () Bool)

(assert (=> d!1199705 (= (tail!6287 (++!11326 lt!1438792 newSuffixResult!27)) (t!335212 (++!11326 lt!1438792 newSuffixResult!27)))))

(assert (=> b!4043172 d!1199705))

(declare-fun b!4043370 () Bool)

(declare-fun e!2508699 () Bool)

(declare-fun e!2508700 () Bool)

(assert (=> b!4043370 (= e!2508699 e!2508700)))

(declare-fun res!1646889 () Bool)

(assert (=> b!4043370 (=> (not res!1646889) (not e!2508700))))

(assert (=> b!4043370 (= res!1646889 (not ((_ is Nil!43249) (tail!6287 lt!1438775))))))

(declare-fun b!4043371 () Bool)

(declare-fun res!1646890 () Bool)

(assert (=> b!4043371 (=> (not res!1646890) (not e!2508700))))

(assert (=> b!4043371 (= res!1646890 (= (head!8555 (tail!6287 lt!1438775)) (head!8555 (tail!6287 lt!1438775))))))

(declare-fun d!1199707 () Bool)

(declare-fun e!2508701 () Bool)

(assert (=> d!1199707 e!2508701))

(declare-fun res!1646888 () Bool)

(assert (=> d!1199707 (=> res!1646888 e!2508701)))

(declare-fun lt!1439209 () Bool)

(assert (=> d!1199707 (= res!1646888 (not lt!1439209))))

(assert (=> d!1199707 (= lt!1439209 e!2508699)))

(declare-fun res!1646891 () Bool)

(assert (=> d!1199707 (=> res!1646891 e!2508699)))

(assert (=> d!1199707 (= res!1646891 ((_ is Nil!43249) (tail!6287 lt!1438775)))))

(assert (=> d!1199707 (= (isPrefix!4011 (tail!6287 lt!1438775) (tail!6287 lt!1438775)) lt!1439209)))

(declare-fun b!4043372 () Bool)

(assert (=> b!4043372 (= e!2508700 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438775)) (tail!6287 (tail!6287 lt!1438775))))))

(declare-fun b!4043373 () Bool)

(assert (=> b!4043373 (= e!2508701 (>= (size!32333 (tail!6287 lt!1438775)) (size!32333 (tail!6287 lt!1438775))))))

(assert (= (and d!1199707 (not res!1646891)) b!4043370))

(assert (= (and b!4043370 res!1646889) b!4043371))

(assert (= (and b!4043371 res!1646890) b!4043372))

(assert (= (and d!1199707 (not res!1646888)) b!4043373))

(assert (=> b!4043371 m!4639361))

(declare-fun m!4640555 () Bool)

(assert (=> b!4043371 m!4640555))

(assert (=> b!4043371 m!4639361))

(assert (=> b!4043371 m!4640555))

(assert (=> b!4043372 m!4639361))

(declare-fun m!4640557 () Bool)

(assert (=> b!4043372 m!4640557))

(assert (=> b!4043372 m!4639361))

(assert (=> b!4043372 m!4640557))

(assert (=> b!4043372 m!4640557))

(assert (=> b!4043372 m!4640557))

(declare-fun m!4640559 () Bool)

(assert (=> b!4043372 m!4640559))

(assert (=> b!4043373 m!4639361))

(declare-fun m!4640561 () Bool)

(assert (=> b!4043373 m!4640561))

(assert (=> b!4043373 m!4639361))

(assert (=> b!4043373 m!4640561))

(assert (=> b!4042575 d!1199707))

(declare-fun d!1199709 () Bool)

(assert (=> d!1199709 (= (tail!6287 lt!1438775) (t!335212 lt!1438775))))

(assert (=> b!4042575 d!1199709))

(declare-fun b!4043381 () Bool)

(declare-fun lt!1439210 () List!43373)

(declare-fun e!2508706 () Bool)

(assert (=> b!4043381 (= e!2508706 (or (not (= lt!1438791 Nil!43249)) (= lt!1439210 (t!335212 prefix!494))))))

(declare-fun b!4043379 () Bool)

(declare-fun e!2508707 () List!43373)

(assert (=> b!4043379 (= e!2508707 (Cons!43249 (h!48669 (t!335212 prefix!494)) (++!11326 (t!335212 (t!335212 prefix!494)) lt!1438791)))))

(declare-fun b!4043378 () Bool)

(assert (=> b!4043378 (= e!2508707 lt!1438791)))

(declare-fun b!4043380 () Bool)

(declare-fun res!1646897 () Bool)

(assert (=> b!4043380 (=> (not res!1646897) (not e!2508706))))

(assert (=> b!4043380 (= res!1646897 (= (size!32333 lt!1439210) (+ (size!32333 (t!335212 prefix!494)) (size!32333 lt!1438791))))))

(declare-fun d!1199711 () Bool)

(assert (=> d!1199711 e!2508706))

(declare-fun res!1646896 () Bool)

(assert (=> d!1199711 (=> (not res!1646896) (not e!2508706))))

(assert (=> d!1199711 (= res!1646896 (= (content!6581 lt!1439210) ((_ map or) (content!6581 (t!335212 prefix!494)) (content!6581 lt!1438791))))))

(assert (=> d!1199711 (= lt!1439210 e!2508707)))

(declare-fun c!698528 () Bool)

(assert (=> d!1199711 (= c!698528 ((_ is Nil!43249) (t!335212 prefix!494)))))

(assert (=> d!1199711 (= (++!11326 (t!335212 prefix!494) lt!1438791) lt!1439210)))

(assert (= (and d!1199711 c!698528) b!4043378))

(assert (= (and d!1199711 (not c!698528)) b!4043379))

(assert (= (and d!1199711 res!1646896) b!4043380))

(assert (= (and b!4043380 res!1646897) b!4043381))

(declare-fun m!4640563 () Bool)

(assert (=> b!4043379 m!4640563))

(declare-fun m!4640565 () Bool)

(assert (=> b!4043380 m!4640565))

(assert (=> b!4043380 m!4639589))

(assert (=> b!4043380 m!4640213))

(declare-fun m!4640567 () Bool)

(assert (=> d!1199711 m!4640567))

(declare-fun m!4640569 () Bool)

(assert (=> d!1199711 m!4640569))

(assert (=> d!1199711 m!4640217))

(assert (=> b!4043125 d!1199711))

(declare-fun b!4043385 () Bool)

(declare-fun e!2508708 () Bool)

(declare-fun lt!1439211 () List!43373)

(assert (=> b!4043385 (= e!2508708 (or (not (= (_2!24299 (get!14192 lt!1438867)) Nil!43249)) (= lt!1439211 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))))))))

(declare-fun b!4043383 () Bool)

(declare-fun e!2508709 () List!43373)

(assert (=> b!4043383 (= e!2508709 (Cons!43249 (h!48669 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))) (++!11326 (t!335212 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))) (_2!24299 (get!14192 lt!1438867)))))))

(declare-fun b!4043382 () Bool)

(assert (=> b!4043382 (= e!2508709 (_2!24299 (get!14192 lt!1438867)))))

(declare-fun b!4043384 () Bool)

(declare-fun res!1646899 () Bool)

(assert (=> b!4043384 (=> (not res!1646899) (not e!2508708))))

(assert (=> b!4043384 (= res!1646899 (= (size!32333 lt!1439211) (+ (size!32333 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))) (size!32333 (_2!24299 (get!14192 lt!1438867))))))))

(declare-fun d!1199713 () Bool)

(assert (=> d!1199713 e!2508708))

(declare-fun res!1646898 () Bool)

(assert (=> d!1199713 (=> (not res!1646898) (not e!2508708))))

(assert (=> d!1199713 (= res!1646898 (= (content!6581 lt!1439211) ((_ map or) (content!6581 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))) (content!6581 (_2!24299 (get!14192 lt!1438867))))))))

(assert (=> d!1199713 (= lt!1439211 e!2508709)))

(declare-fun c!698529 () Bool)

(assert (=> d!1199713 (= c!698529 ((_ is Nil!43249) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))))))

(assert (=> d!1199713 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))) (_2!24299 (get!14192 lt!1438867))) lt!1439211)))

(assert (= (and d!1199713 c!698529) b!4043382))

(assert (= (and d!1199713 (not c!698529)) b!4043383))

(assert (= (and d!1199713 res!1646898) b!4043384))

(assert (= (and b!4043384 res!1646899) b!4043385))

(declare-fun m!4640571 () Bool)

(assert (=> b!4043383 m!4640571))

(declare-fun m!4640573 () Bool)

(assert (=> b!4043384 m!4640573))

(assert (=> b!4043384 m!4639477))

(declare-fun m!4640575 () Bool)

(assert (=> b!4043384 m!4640575))

(assert (=> b!4043384 m!4639469))

(declare-fun m!4640577 () Bool)

(assert (=> d!1199713 m!4640577))

(assert (=> d!1199713 m!4639477))

(declare-fun m!4640579 () Bool)

(assert (=> d!1199713 m!4640579))

(declare-fun m!4640581 () Bool)

(assert (=> d!1199713 m!4640581))

(assert (=> b!4042649 d!1199713))

(declare-fun d!1199715 () Bool)

(assert (=> d!1199715 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))) (list!16107 (c!698370 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))))))

(declare-fun bs!591068 () Bool)

(assert (= bs!591068 d!1199715))

(declare-fun m!4640583 () Bool)

(assert (=> bs!591068 m!4640583))

(assert (=> b!4042649 d!1199715))

(declare-fun d!1199717 () Bool)

(declare-fun lt!1439212 () BalanceConc!25864)

(assert (=> d!1199717 (= (list!16106 lt!1439212) (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867))))))

(assert (=> d!1199717 (= lt!1439212 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))) (value!217968 (_1!24299 (get!14192 lt!1438867)))))))

(assert (=> d!1199717 (= (charsOf!4740 (_1!24299 (get!14192 lt!1438867))) lt!1439212)))

(declare-fun b_lambda!118123 () Bool)

(assert (=> (not b_lambda!118123) (not d!1199717)))

(declare-fun t!335278 () Bool)

(declare-fun tb!243133 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335278) tb!243133))

(declare-fun b!4043386 () Bool)

(declare-fun e!2508710 () Bool)

(declare-fun tp!1227224 () Bool)

(assert (=> b!4043386 (= e!2508710 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))) (value!217968 (_1!24299 (get!14192 lt!1438867)))))) tp!1227224))))

(declare-fun result!294674 () Bool)

(assert (=> tb!243133 (= result!294674 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))) (value!217968 (_1!24299 (get!14192 lt!1438867))))) e!2508710))))

(assert (= tb!243133 b!4043386))

(declare-fun m!4640585 () Bool)

(assert (=> b!4043386 m!4640585))

(declare-fun m!4640587 () Bool)

(assert (=> tb!243133 m!4640587))

(assert (=> d!1199717 t!335278))

(declare-fun b_and!310871 () Bool)

(assert (= b_and!310851 (and (=> t!335278 result!294674) b_and!310871)))

(declare-fun tb!243135 () Bool)

(declare-fun t!335280 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335280) tb!243135))

(declare-fun result!294676 () Bool)

(assert (= result!294676 result!294674))

(assert (=> d!1199717 t!335280))

(declare-fun b_and!310873 () Bool)

(assert (= b_and!310853 (and (=> t!335280 result!294676) b_and!310873)))

(declare-fun t!335282 () Bool)

(declare-fun tb!243137 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335282) tb!243137))

(declare-fun result!294678 () Bool)

(assert (= result!294678 result!294674))

(assert (=> d!1199717 t!335282))

(declare-fun b_and!310875 () Bool)

(assert (= b_and!310857 (and (=> t!335282 result!294678) b_and!310875)))

(declare-fun m!4640589 () Bool)

(assert (=> d!1199717 m!4640589))

(declare-fun m!4640591 () Bool)

(assert (=> d!1199717 m!4640591))

(assert (=> b!4042649 d!1199717))

(declare-fun d!1199719 () Bool)

(assert (=> d!1199719 (= (get!14192 lt!1438867) (v!39739 lt!1438867))))

(assert (=> b!4042649 d!1199719))

(declare-fun d!1199721 () Bool)

(declare-fun c!698530 () Bool)

(assert (=> d!1199721 (= c!698530 ((_ is Nil!43249) lt!1439008))))

(declare-fun e!2508711 () (InoxSet C!23844))

(assert (=> d!1199721 (= (content!6581 lt!1439008) e!2508711)))

(declare-fun b!4043387 () Bool)

(assert (=> b!4043387 (= e!2508711 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043388 () Bool)

(assert (=> b!4043388 (= e!2508711 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439008) true) (content!6581 (t!335212 lt!1439008))))))

(assert (= (and d!1199721 c!698530) b!4043387))

(assert (= (and d!1199721 (not c!698530)) b!4043388))

(declare-fun m!4640593 () Bool)

(assert (=> b!4043388 m!4640593))

(declare-fun m!4640595 () Bool)

(assert (=> b!4043388 m!4640595))

(assert (=> d!1199539 d!1199721))

(assert (=> d!1199539 d!1199685))

(declare-fun d!1199723 () Bool)

(declare-fun c!698531 () Bool)

(assert (=> d!1199723 (= c!698531 ((_ is Nil!43249) lt!1438778))))

(declare-fun e!2508712 () (InoxSet C!23844))

(assert (=> d!1199723 (= (content!6581 lt!1438778) e!2508712)))

(declare-fun b!4043389 () Bool)

(assert (=> b!4043389 (= e!2508712 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043390 () Bool)

(assert (=> b!4043390 (= e!2508712 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438778) true) (content!6581 (t!335212 lt!1438778))))))

(assert (= (and d!1199723 c!698531) b!4043389))

(assert (= (and d!1199723 (not c!698531)) b!4043390))

(declare-fun m!4640597 () Bool)

(assert (=> b!4043390 m!4640597))

(declare-fun m!4640599 () Bool)

(assert (=> b!4043390 m!4640599))

(assert (=> d!1199539 d!1199723))

(declare-fun b!4043391 () Bool)

(declare-fun e!2508713 () Bool)

(declare-fun e!2508714 () Bool)

(assert (=> b!4043391 (= e!2508713 e!2508714)))

(declare-fun res!1646901 () Bool)

(assert (=> b!4043391 (=> (not res!1646901) (not e!2508714))))

(assert (=> b!4043391 (= res!1646901 (not ((_ is Nil!43249) (++!11326 lt!1438798 lt!1438762))))))

(declare-fun b!4043392 () Bool)

(declare-fun res!1646902 () Bool)

(assert (=> b!4043392 (=> (not res!1646902) (not e!2508714))))

(assert (=> b!4043392 (= res!1646902 (= (head!8555 lt!1438798) (head!8555 (++!11326 lt!1438798 lt!1438762))))))

(declare-fun d!1199725 () Bool)

(declare-fun e!2508715 () Bool)

(assert (=> d!1199725 e!2508715))

(declare-fun res!1646900 () Bool)

(assert (=> d!1199725 (=> res!1646900 e!2508715)))

(declare-fun lt!1439213 () Bool)

(assert (=> d!1199725 (= res!1646900 (not lt!1439213))))

(assert (=> d!1199725 (= lt!1439213 e!2508713)))

(declare-fun res!1646903 () Bool)

(assert (=> d!1199725 (=> res!1646903 e!2508713)))

(assert (=> d!1199725 (= res!1646903 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199725 (= (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 lt!1438762)) lt!1439213)))

(declare-fun b!4043393 () Bool)

(assert (=> b!4043393 (= e!2508714 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 (++!11326 lt!1438798 lt!1438762))))))

(declare-fun b!4043394 () Bool)

(assert (=> b!4043394 (= e!2508715 (>= (size!32333 (++!11326 lt!1438798 lt!1438762)) (size!32333 lt!1438798)))))

(assert (= (and d!1199725 (not res!1646903)) b!4043391))

(assert (= (and b!4043391 res!1646901) b!4043392))

(assert (= (and b!4043392 res!1646902) b!4043393))

(assert (= (and d!1199725 (not res!1646900)) b!4043394))

(assert (=> b!4043392 m!4639555))

(assert (=> b!4043392 m!4639255))

(declare-fun m!4640601 () Bool)

(assert (=> b!4043392 m!4640601))

(assert (=> b!4043393 m!4639565))

(assert (=> b!4043393 m!4639255))

(declare-fun m!4640603 () Bool)

(assert (=> b!4043393 m!4640603))

(assert (=> b!4043393 m!4639565))

(assert (=> b!4043393 m!4640603))

(declare-fun m!4640605 () Bool)

(assert (=> b!4043393 m!4640605))

(assert (=> b!4043394 m!4639255))

(declare-fun m!4640607 () Bool)

(assert (=> b!4043394 m!4640607))

(assert (=> b!4043394 m!4639203))

(assert (=> d!1199375 d!1199725))

(assert (=> d!1199375 d!1199321))

(declare-fun d!1199727 () Bool)

(assert (=> d!1199727 (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 lt!1438762))))

(assert (=> d!1199727 true))

(declare-fun _$46!1775 () Unit!62477)

(assert (=> d!1199727 (= (choose!24505 lt!1438798 lt!1438762) _$46!1775)))

(declare-fun bs!591069 () Bool)

(assert (= bs!591069 d!1199727))

(assert (=> bs!591069 m!4639255))

(assert (=> bs!591069 m!4639255))

(assert (=> bs!591069 m!4639583))

(assert (=> d!1199375 d!1199727))

(declare-fun d!1199729 () Bool)

(declare-fun c!698534 () Bool)

(assert (=> d!1199729 (= c!698534 ((_ is Node!13135) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))))))

(declare-fun e!2508720 () Bool)

(assert (=> d!1199729 (= (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))) e!2508720)))

(declare-fun b!4043401 () Bool)

(declare-fun inv!57811 (Conc!13135) Bool)

(assert (=> b!4043401 (= e!2508720 (inv!57811 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))))))

(declare-fun b!4043402 () Bool)

(declare-fun e!2508721 () Bool)

(assert (=> b!4043402 (= e!2508720 e!2508721)))

(declare-fun res!1646906 () Bool)

(assert (=> b!4043402 (= res!1646906 (not ((_ is Leaf!20304) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))))))))

(assert (=> b!4043402 (=> res!1646906 e!2508721)))

(declare-fun b!4043403 () Bool)

(declare-fun inv!57812 (Conc!13135) Bool)

(assert (=> b!4043403 (= e!2508721 (inv!57812 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))))))

(assert (= (and d!1199729 c!698534) b!4043401))

(assert (= (and d!1199729 (not c!698534)) b!4043402))

(assert (= (and b!4043402 (not res!1646906)) b!4043403))

(declare-fun m!4640609 () Bool)

(assert (=> b!4043401 m!4640609))

(declare-fun m!4640611 () Bool)

(assert (=> b!4043403 m!4640611))

(assert (=> b!4042716 d!1199729))

(declare-fun d!1199731 () Bool)

(assert (=> d!1199731 (= (head!8555 prefix!494) (h!48669 prefix!494))))

(assert (=> b!4043098 d!1199731))

(declare-fun d!1199733 () Bool)

(assert (=> d!1199733 (= (head!8555 lt!1438775) (h!48669 lt!1438775))))

(assert (=> b!4043098 d!1199733))

(declare-fun d!1199735 () Bool)

(declare-fun lt!1439242 () Int)

(assert (=> d!1199735 (>= lt!1439242 0)))

(declare-fun e!2508730 () Int)

(assert (=> d!1199735 (= lt!1439242 e!2508730)))

(declare-fun c!698541 () Bool)

(assert (=> d!1199735 (= c!698541 ((_ is Nil!43249) (t!335212 suffix!1299)))))

(assert (=> d!1199735 (= (size!32333 (t!335212 suffix!1299)) lt!1439242)))

(declare-fun b!4043418 () Bool)

(assert (=> b!4043418 (= e!2508730 0)))

(declare-fun b!4043419 () Bool)

(assert (=> b!4043419 (= e!2508730 (+ 1 (size!32333 (t!335212 (t!335212 suffix!1299)))))))

(assert (= (and d!1199735 c!698541) b!4043418))

(assert (= (and d!1199735 (not c!698541)) b!4043419))

(declare-fun m!4640613 () Bool)

(assert (=> b!4043419 m!4640613))

(assert (=> b!4043033 d!1199735))

(declare-fun d!1199737 () Bool)

(assert (=> d!1199737 (= (isEmpty!25816 lt!1438965) (not ((_ is Some!9337) lt!1438965)))))

(assert (=> d!1199399 d!1199737))

(declare-fun d!1199739 () Bool)

(assert (=> d!1199739 (= (isEmpty!25817 (_1!24301 lt!1438966)) ((_ is Nil!43249) (_1!24301 lt!1438966)))))

(assert (=> d!1199399 d!1199739))

(declare-fun d!1199741 () Bool)

(declare-fun lt!1439279 () tuple2!42334)

(assert (=> d!1199741 (= (++!11326 (_1!24301 lt!1439279) (_2!24301 lt!1439279)) lt!1438775)))

(declare-fun sizeTr!275 (List!43373 Int) Int)

(assert (=> d!1199741 (= lt!1439279 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 0 lt!1438775 lt!1438775 (sizeTr!275 lt!1438775 0)))))

(declare-fun lt!1439278 () Unit!62477)

(declare-fun lt!1439274 () Unit!62477)

(assert (=> d!1199741 (= lt!1439278 lt!1439274)))

(declare-fun lt!1439275 () List!43373)

(declare-fun lt!1439280 () Int)

(assert (=> d!1199741 (= (sizeTr!275 lt!1439275 lt!1439280) (+ (size!32333 lt!1439275) lt!1439280))))

(declare-fun lemmaSizeTrEqualsSize!274 (List!43373 Int) Unit!62477)

(assert (=> d!1199741 (= lt!1439274 (lemmaSizeTrEqualsSize!274 lt!1439275 lt!1439280))))

(assert (=> d!1199741 (= lt!1439280 0)))

(assert (=> d!1199741 (= lt!1439275 Nil!43249)))

(declare-fun lt!1439276 () Unit!62477)

(declare-fun lt!1439277 () Unit!62477)

(assert (=> d!1199741 (= lt!1439276 lt!1439277)))

(declare-fun lt!1439281 () Int)

(assert (=> d!1199741 (= (sizeTr!275 lt!1438775 lt!1439281) (+ (size!32333 lt!1438775) lt!1439281))))

(assert (=> d!1199741 (= lt!1439277 (lemmaSizeTrEqualsSize!274 lt!1438775 lt!1439281))))

(assert (=> d!1199741 (= lt!1439281 0)))

(assert (=> d!1199741 (validRegex!5351 (regex!6924 (rule!9998 token!484)))))

(assert (=> d!1199741 (= (findLongestMatch!1302 (regex!6924 (rule!9998 token!484)) lt!1438775) lt!1439279)))

(declare-fun bs!591072 () Bool)

(assert (= bs!591072 d!1199741))

(declare-fun m!4640741 () Bool)

(assert (=> bs!591072 m!4640741))

(declare-fun m!4640743 () Bool)

(assert (=> bs!591072 m!4640743))

(declare-fun m!4640745 () Bool)

(assert (=> bs!591072 m!4640745))

(declare-fun m!4640747 () Bool)

(assert (=> bs!591072 m!4640747))

(assert (=> bs!591072 m!4640049))

(declare-fun m!4640749 () Bool)

(assert (=> bs!591072 m!4640749))

(assert (=> bs!591072 m!4640745))

(declare-fun m!4640751 () Bool)

(assert (=> bs!591072 m!4640751))

(declare-fun m!4640753 () Bool)

(assert (=> bs!591072 m!4640753))

(assert (=> bs!591072 m!4639359))

(declare-fun m!4640755 () Bool)

(assert (=> bs!591072 m!4640755))

(assert (=> d!1199399 d!1199741))

(assert (=> d!1199399 d!1199527))

(declare-fun b!4043470 () Bool)

(declare-fun e!2508757 () Bool)

(declare-fun lt!1439282 () List!43373)

(assert (=> b!4043470 (= e!2508757 (or (not (= (_2!24299 (get!14192 lt!1439047)) Nil!43249)) (= lt!1439282 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047)))))))))

(declare-fun b!4043468 () Bool)

(declare-fun e!2508758 () List!43373)

(assert (=> b!4043468 (= e!2508758 (Cons!43249 (h!48669 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))) (++!11326 (t!335212 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))) (_2!24299 (get!14192 lt!1439047)))))))

(declare-fun b!4043467 () Bool)

(assert (=> b!4043467 (= e!2508758 (_2!24299 (get!14192 lt!1439047)))))

(declare-fun b!4043469 () Bool)

(declare-fun res!1646926 () Bool)

(assert (=> b!4043469 (=> (not res!1646926) (not e!2508757))))

(assert (=> b!4043469 (= res!1646926 (= (size!32333 lt!1439282) (+ (size!32333 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))) (size!32333 (_2!24299 (get!14192 lt!1439047))))))))

(declare-fun d!1199789 () Bool)

(assert (=> d!1199789 e!2508757))

(declare-fun res!1646925 () Bool)

(assert (=> d!1199789 (=> (not res!1646925) (not e!2508757))))

(assert (=> d!1199789 (= res!1646925 (= (content!6581 lt!1439282) ((_ map or) (content!6581 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))) (content!6581 (_2!24299 (get!14192 lt!1439047))))))))

(assert (=> d!1199789 (= lt!1439282 e!2508758)))

(declare-fun c!698557 () Bool)

(assert (=> d!1199789 (= c!698557 ((_ is Nil!43249) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))))))

(assert (=> d!1199789 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047)))) (_2!24299 (get!14192 lt!1439047))) lt!1439282)))

(assert (= (and d!1199789 c!698557) b!4043467))

(assert (= (and d!1199789 (not c!698557)) b!4043468))

(assert (= (and d!1199789 res!1646925) b!4043469))

(assert (= (and b!4043469 res!1646926) b!4043470))

(declare-fun m!4640757 () Bool)

(assert (=> b!4043468 m!4640757))

(declare-fun m!4640759 () Bool)

(assert (=> b!4043469 m!4640759))

(assert (=> b!4043469 m!4640313))

(declare-fun m!4640761 () Bool)

(assert (=> b!4043469 m!4640761))

(assert (=> b!4043469 m!4640337))

(declare-fun m!4640763 () Bool)

(assert (=> d!1199789 m!4640763))

(assert (=> d!1199789 m!4640313))

(declare-fun m!4640765 () Bool)

(assert (=> d!1199789 m!4640765))

(declare-fun m!4640767 () Bool)

(assert (=> d!1199789 m!4640767))

(assert (=> b!4043168 d!1199789))

(declare-fun d!1199791 () Bool)

(assert (=> d!1199791 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047)))) (list!16107 (c!698370 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))))))

(declare-fun bs!591073 () Bool)

(assert (= bs!591073 d!1199791))

(declare-fun m!4640769 () Bool)

(assert (=> bs!591073 m!4640769))

(assert (=> b!4043168 d!1199791))

(declare-fun d!1199793 () Bool)

(declare-fun lt!1439283 () BalanceConc!25864)

(assert (=> d!1199793 (= (list!16106 lt!1439283) (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047))))))

(assert (=> d!1199793 (= lt!1439283 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047))))) (value!217968 (_1!24299 (get!14192 lt!1439047)))))))

(assert (=> d!1199793 (= (charsOf!4740 (_1!24299 (get!14192 lt!1439047))) lt!1439283)))

(declare-fun b_lambda!118127 () Bool)

(assert (=> (not b_lambda!118127) (not d!1199793)))

(declare-fun t!335290 () Bool)

(declare-fun tb!243145 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335290) tb!243145))

(declare-fun b!4043471 () Bool)

(declare-fun e!2508759 () Bool)

(declare-fun tp!1227226 () Bool)

(assert (=> b!4043471 (= e!2508759 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047))))) (value!217968 (_1!24299 (get!14192 lt!1439047)))))) tp!1227226))))

(declare-fun result!294686 () Bool)

(assert (=> tb!243145 (= result!294686 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047))))) (value!217968 (_1!24299 (get!14192 lt!1439047))))) e!2508759))))

(assert (= tb!243145 b!4043471))

(declare-fun m!4640771 () Bool)

(assert (=> b!4043471 m!4640771))

(declare-fun m!4640773 () Bool)

(assert (=> tb!243145 m!4640773))

(assert (=> d!1199793 t!335290))

(declare-fun b_and!310883 () Bool)

(assert (= b_and!310871 (and (=> t!335290 result!294686) b_and!310883)))

(declare-fun t!335292 () Bool)

(declare-fun tb!243147 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335292) tb!243147))

(declare-fun result!294688 () Bool)

(assert (= result!294688 result!294686))

(assert (=> d!1199793 t!335292))

(declare-fun b_and!310885 () Bool)

(assert (= b_and!310873 (and (=> t!335292 result!294688) b_and!310885)))

(declare-fun t!335294 () Bool)

(declare-fun tb!243149 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335294) tb!243149))

(declare-fun result!294690 () Bool)

(assert (= result!294690 result!294686))

(assert (=> d!1199793 t!335294))

(declare-fun b_and!310887 () Bool)

(assert (= b_and!310875 (and (=> t!335294 result!294690) b_and!310887)))

(declare-fun m!4640775 () Bool)

(assert (=> d!1199793 m!4640775))

(declare-fun m!4640777 () Bool)

(assert (=> d!1199793 m!4640777))

(assert (=> b!4043168 d!1199793))

(assert (=> b!4043168 d!1199671))

(declare-fun b!4043472 () Bool)

(declare-fun e!2508761 () Bool)

(declare-fun lt!1439284 () Option!9338)

(assert (=> b!4043472 (= e!2508761 (= (size!32334 (_1!24299 (get!14192 lt!1439284))) (size!32333 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439284))))))))

(declare-fun b!4043473 () Bool)

(declare-fun res!1646929 () Bool)

(assert (=> b!4043473 (=> (not res!1646929) (not e!2508761))))

(assert (=> b!4043473 (= res!1646929 (= (value!217968 (_1!24299 (get!14192 lt!1439284))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439284)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439284)))))))))

(declare-fun b!4043474 () Bool)

(declare-fun res!1646930 () Bool)

(assert (=> b!4043474 (=> (not res!1646930) (not e!2508761))))

(assert (=> b!4043474 (= res!1646930 (= (rule!9998 (_1!24299 (get!14192 lt!1439284))) (h!48671 rules!2999)))))

(declare-fun b!4043475 () Bool)

(declare-fun e!2508763 () Option!9338)

(declare-fun lt!1439285 () tuple2!42334)

(assert (=> b!4043475 (= e!2508763 (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (h!48671 rules!2999)) (seqFromList!5141 (_1!24301 lt!1439285))) (h!48671 rules!2999) (size!32336 (seqFromList!5141 (_1!24301 lt!1439285))) (_1!24301 lt!1439285)) (_2!24301 lt!1439285))))))

(declare-fun lt!1439288 () Unit!62477)

(assert (=> b!4043475 (= lt!1439288 (longestMatchIsAcceptedByMatchOrIsEmpty!1362 (regex!6924 (h!48671 rules!2999)) lt!1438775))))

(declare-fun res!1646933 () Bool)

(assert (=> b!4043475 (= res!1646933 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (h!48671 rules!2999)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(declare-fun e!2508762 () Bool)

(assert (=> b!4043475 (=> res!1646933 e!2508762)))

(assert (=> b!4043475 e!2508762))

(declare-fun lt!1439286 () Unit!62477)

(assert (=> b!4043475 (= lt!1439286 lt!1439288)))

(declare-fun lt!1439287 () Unit!62477)

(assert (=> b!4043475 (= lt!1439287 (lemmaSemiInverse!1909 (transformation!6924 (h!48671 rules!2999)) (seqFromList!5141 (_1!24301 lt!1439285))))))

(declare-fun b!4043476 () Bool)

(assert (=> b!4043476 (= e!2508763 None!9337)))

(declare-fun b!4043477 () Bool)

(assert (=> b!4043477 (= e!2508762 (matchR!5782 (regex!6924 (h!48671 rules!2999)) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (h!48671 rules!2999)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(declare-fun b!4043478 () Bool)

(declare-fun e!2508760 () Bool)

(assert (=> b!4043478 (= e!2508760 e!2508761)))

(declare-fun res!1646927 () Bool)

(assert (=> b!4043478 (=> (not res!1646927) (not e!2508761))))

(assert (=> b!4043478 (= res!1646927 (matchR!5782 (regex!6924 (h!48671 rules!2999)) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439284))))))))

(declare-fun b!4043479 () Bool)

(declare-fun res!1646928 () Bool)

(assert (=> b!4043479 (=> (not res!1646928) (not e!2508761))))

(assert (=> b!4043479 (= res!1646928 (< (size!32333 (_2!24299 (get!14192 lt!1439284))) (size!32333 lt!1438775)))))

(declare-fun d!1199795 () Bool)

(assert (=> d!1199795 e!2508760))

(declare-fun res!1646931 () Bool)

(assert (=> d!1199795 (=> res!1646931 e!2508760)))

(assert (=> d!1199795 (= res!1646931 (isEmpty!25816 lt!1439284))))

(assert (=> d!1199795 (= lt!1439284 e!2508763)))

(declare-fun c!698558 () Bool)

(assert (=> d!1199795 (= c!698558 (isEmpty!25817 (_1!24301 lt!1439285)))))

(assert (=> d!1199795 (= lt!1439285 (findLongestMatch!1302 (regex!6924 (h!48671 rules!2999)) lt!1438775))))

(assert (=> d!1199795 (ruleValid!2854 thiss!21717 (h!48671 rules!2999))))

(assert (=> d!1199795 (= (maxPrefixOneRule!2823 thiss!21717 (h!48671 rules!2999) lt!1438775) lt!1439284)))

(declare-fun b!4043480 () Bool)

(declare-fun res!1646932 () Bool)

(assert (=> b!4043480 (=> (not res!1646932) (not e!2508761))))

(assert (=> b!4043480 (= res!1646932 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439284)))) (_2!24299 (get!14192 lt!1439284))) lt!1438775))))

(assert (= (and d!1199795 c!698558) b!4043476))

(assert (= (and d!1199795 (not c!698558)) b!4043475))

(assert (= (and b!4043475 (not res!1646933)) b!4043477))

(assert (= (and d!1199795 (not res!1646931)) b!4043478))

(assert (= (and b!4043478 res!1646927) b!4043480))

(assert (= (and b!4043480 res!1646932) b!4043479))

(assert (= (and b!4043479 res!1646928) b!4043474))

(assert (= (and b!4043474 res!1646930) b!4043473))

(assert (= (and b!4043473 res!1646929) b!4043472))

(declare-fun m!4640779 () Bool)

(assert (=> b!4043472 m!4640779))

(declare-fun m!4640781 () Bool)

(assert (=> b!4043472 m!4640781))

(assert (=> b!4043477 m!4639885))

(assert (=> b!4043477 m!4639359))

(assert (=> b!4043477 m!4639885))

(assert (=> b!4043477 m!4639359))

(declare-fun m!4640783 () Bool)

(assert (=> b!4043477 m!4640783))

(declare-fun m!4640785 () Bool)

(assert (=> b!4043477 m!4640785))

(assert (=> b!4043478 m!4640779))

(declare-fun m!4640787 () Bool)

(assert (=> b!4043478 m!4640787))

(assert (=> b!4043478 m!4640787))

(declare-fun m!4640789 () Bool)

(assert (=> b!4043478 m!4640789))

(assert (=> b!4043478 m!4640789))

(declare-fun m!4640791 () Bool)

(assert (=> b!4043478 m!4640791))

(declare-fun m!4640793 () Bool)

(assert (=> b!4043475 m!4640793))

(declare-fun m!4640795 () Bool)

(assert (=> b!4043475 m!4640795))

(assert (=> b!4043475 m!4640793))

(declare-fun m!4640797 () Bool)

(assert (=> b!4043475 m!4640797))

(assert (=> b!4043475 m!4639885))

(assert (=> b!4043475 m!4639359))

(assert (=> b!4043475 m!4640783))

(assert (=> b!4043475 m!4640793))

(declare-fun m!4640799 () Bool)

(assert (=> b!4043475 m!4640799))

(assert (=> b!4043475 m!4639885))

(assert (=> b!4043475 m!4639359))

(assert (=> b!4043475 m!4640793))

(declare-fun m!4640801 () Bool)

(assert (=> b!4043475 m!4640801))

(declare-fun m!4640803 () Bool)

(assert (=> b!4043475 m!4640803))

(declare-fun m!4640805 () Bool)

(assert (=> d!1199795 m!4640805))

(declare-fun m!4640807 () Bool)

(assert (=> d!1199795 m!4640807))

(declare-fun m!4640809 () Bool)

(assert (=> d!1199795 m!4640809))

(declare-fun m!4640811 () Bool)

(assert (=> d!1199795 m!4640811))

(assert (=> b!4043480 m!4640779))

(assert (=> b!4043480 m!4640787))

(assert (=> b!4043480 m!4640787))

(assert (=> b!4043480 m!4640789))

(assert (=> b!4043480 m!4640789))

(declare-fun m!4640813 () Bool)

(assert (=> b!4043480 m!4640813))

(assert (=> b!4043479 m!4640779))

(declare-fun m!4640815 () Bool)

(assert (=> b!4043479 m!4640815))

(assert (=> b!4043479 m!4639359))

(assert (=> b!4043473 m!4640779))

(declare-fun m!4640817 () Bool)

(assert (=> b!4043473 m!4640817))

(assert (=> b!4043473 m!4640817))

(declare-fun m!4640819 () Bool)

(assert (=> b!4043473 m!4640819))

(assert (=> b!4043474 m!4640779))

(assert (=> bm!287520 d!1199795))

(declare-fun d!1199797 () Bool)

(declare-fun c!698559 () Bool)

(assert (=> d!1199797 (= c!698559 ((_ is Nil!43249) lt!1439043))))

(declare-fun e!2508764 () (InoxSet C!23844))

(assert (=> d!1199797 (= (content!6581 lt!1439043) e!2508764)))

(declare-fun b!4043481 () Bool)

(assert (=> b!4043481 (= e!2508764 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043482 () Bool)

(assert (=> b!4043482 (= e!2508764 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439043) true) (content!6581 (t!335212 lt!1439043))))))

(assert (= (and d!1199797 c!698559) b!4043481))

(assert (= (and d!1199797 (not c!698559)) b!4043482))

(declare-fun m!4640821 () Bool)

(assert (=> b!4043482 m!4640821))

(declare-fun m!4640823 () Bool)

(assert (=> b!4043482 m!4640823))

(assert (=> d!1199605 d!1199797))

(declare-fun d!1199799 () Bool)

(declare-fun c!698560 () Bool)

(assert (=> d!1199799 (= c!698560 ((_ is Nil!43249) lt!1438792))))

(declare-fun e!2508765 () (InoxSet C!23844))

(assert (=> d!1199799 (= (content!6581 lt!1438792) e!2508765)))

(declare-fun b!4043483 () Bool)

(assert (=> b!4043483 (= e!2508765 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043484 () Bool)

(assert (=> b!4043484 (= e!2508765 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438792) true) (content!6581 (t!335212 lt!1438792))))))

(assert (= (and d!1199799 c!698560) b!4043483))

(assert (= (and d!1199799 (not c!698560)) b!4043484))

(declare-fun m!4640825 () Bool)

(assert (=> b!4043484 m!4640825))

(declare-fun m!4640827 () Bool)

(assert (=> b!4043484 m!4640827))

(assert (=> d!1199605 d!1199799))

(declare-fun d!1199801 () Bool)

(declare-fun c!698561 () Bool)

(assert (=> d!1199801 (= c!698561 ((_ is Nil!43249) (_2!24299 (v!39739 lt!1438779))))))

(declare-fun e!2508766 () (InoxSet C!23844))

(assert (=> d!1199801 (= (content!6581 (_2!24299 (v!39739 lt!1438779))) e!2508766)))

(declare-fun b!4043485 () Bool)

(assert (=> b!4043485 (= e!2508766 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043486 () Bool)

(assert (=> b!4043486 (= e!2508766 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 (_2!24299 (v!39739 lt!1438779))) true) (content!6581 (t!335212 (_2!24299 (v!39739 lt!1438779))))))))

(assert (= (and d!1199801 c!698561) b!4043485))

(assert (= (and d!1199801 (not c!698561)) b!4043486))

(declare-fun m!4640829 () Bool)

(assert (=> b!4043486 m!4640829))

(declare-fun m!4640831 () Bool)

(assert (=> b!4043486 m!4640831))

(assert (=> d!1199605 d!1199801))

(declare-fun lt!1439289 () List!43373)

(declare-fun b!4043490 () Bool)

(declare-fun e!2508767 () Bool)

(assert (=> b!4043490 (= e!2508767 (or (not (= lt!1438769 Nil!43249)) (= lt!1439289 (t!335212 lt!1438798))))))

(declare-fun b!4043488 () Bool)

(declare-fun e!2508768 () List!43373)

(assert (=> b!4043488 (= e!2508768 (Cons!43249 (h!48669 (t!335212 lt!1438798)) (++!11326 (t!335212 (t!335212 lt!1438798)) lt!1438769)))))

(declare-fun b!4043487 () Bool)

(assert (=> b!4043487 (= e!2508768 lt!1438769)))

(declare-fun b!4043489 () Bool)

(declare-fun res!1646935 () Bool)

(assert (=> b!4043489 (=> (not res!1646935) (not e!2508767))))

(assert (=> b!4043489 (= res!1646935 (= (size!32333 lt!1439289) (+ (size!32333 (t!335212 lt!1438798)) (size!32333 lt!1438769))))))

(declare-fun d!1199803 () Bool)

(assert (=> d!1199803 e!2508767))

(declare-fun res!1646934 () Bool)

(assert (=> d!1199803 (=> (not res!1646934) (not e!2508767))))

(assert (=> d!1199803 (= res!1646934 (= (content!6581 lt!1439289) ((_ map or) (content!6581 (t!335212 lt!1438798)) (content!6581 lt!1438769))))))

(assert (=> d!1199803 (= lt!1439289 e!2508768)))

(declare-fun c!698562 () Bool)

(assert (=> d!1199803 (= c!698562 ((_ is Nil!43249) (t!335212 lt!1438798)))))

(assert (=> d!1199803 (= (++!11326 (t!335212 lt!1438798) lt!1438769) lt!1439289)))

(assert (= (and d!1199803 c!698562) b!4043487))

(assert (= (and d!1199803 (not c!698562)) b!4043488))

(assert (= (and d!1199803 res!1646934) b!4043489))

(assert (= (and b!4043489 res!1646935) b!4043490))

(declare-fun m!4640833 () Bool)

(assert (=> b!4043488 m!4640833))

(declare-fun m!4640835 () Bool)

(assert (=> b!4043489 m!4640835))

(assert (=> b!4043489 m!4639587))

(assert (=> b!4043489 m!4640121))

(declare-fun m!4640837 () Bool)

(assert (=> d!1199803 m!4640837))

(assert (=> d!1199803 m!4640471))

(assert (=> d!1199803 m!4640125))

(assert (=> b!4043115 d!1199803))

(declare-fun d!1199805 () Bool)

(assert (=> d!1199805 (= (isEmpty!25816 lt!1439006) (not ((_ is Some!9337) lt!1439006)))))

(assert (=> d!1199535 d!1199805))

(assert (=> d!1199535 d!1199325))

(assert (=> d!1199535 d!1199333))

(declare-fun d!1199807 () Bool)

(assert (=> d!1199807 true))

(declare-fun lt!1439293 () Bool)

(declare-fun lambda!127425 () Int)

(declare-fun forall!8375 (List!43375 Int) Bool)

(assert (=> d!1199807 (= lt!1439293 (forall!8375 rules!2999 lambda!127425))))

(declare-fun e!2508776 () Bool)

(assert (=> d!1199807 (= lt!1439293 e!2508776)))

(declare-fun res!1646945 () Bool)

(assert (=> d!1199807 (=> res!1646945 e!2508776)))

(assert (=> d!1199807 (= res!1646945 (not ((_ is Cons!43251) rules!2999)))))

(assert (=> d!1199807 (= (rulesValidInductive!2526 thiss!21717 rules!2999) lt!1439293)))

(declare-fun b!4043503 () Bool)

(declare-fun e!2508777 () Bool)

(assert (=> b!4043503 (= e!2508776 e!2508777)))

(declare-fun res!1646944 () Bool)

(assert (=> b!4043503 (=> (not res!1646944) (not e!2508777))))

(assert (=> b!4043503 (= res!1646944 (ruleValid!2854 thiss!21717 (h!48671 rules!2999)))))

(declare-fun b!4043504 () Bool)

(assert (=> b!4043504 (= e!2508777 (rulesValidInductive!2526 thiss!21717 (t!335214 rules!2999)))))

(assert (= (and d!1199807 (not res!1646945)) b!4043503))

(assert (= (and b!4043503 res!1646944) b!4043504))

(declare-fun m!4640853 () Bool)

(assert (=> d!1199807 m!4640853))

(assert (=> b!4043503 m!4640811))

(declare-fun m!4640855 () Bool)

(assert (=> b!4043504 m!4640855))

(assert (=> d!1199535 d!1199807))

(declare-fun b!4043511 () Bool)

(declare-fun res!1646949 () Bool)

(declare-fun e!2508786 () Bool)

(assert (=> b!4043511 (=> res!1646949 e!2508786)))

(assert (=> b!4043511 (= res!1646949 (not (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))))))))

(declare-fun d!1199821 () Bool)

(declare-fun e!2508783 () Bool)

(assert (=> d!1199821 e!2508783))

(declare-fun c!698567 () Bool)

(assert (=> d!1199821 (= c!698567 ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))))))

(declare-fun lt!1439296 () Bool)

(declare-fun e!2508782 () Bool)

(assert (=> d!1199821 (= lt!1439296 e!2508782)))

(declare-fun c!698566 () Bool)

(assert (=> d!1199821 (= c!698566 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))))))

(assert (=> d!1199821 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))))

(assert (=> d!1199821 (= (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))) lt!1439296)))

(declare-fun b!4043512 () Bool)

(assert (=> b!4043512 (= e!2508786 (not (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))))))))

(declare-fun b!4043513 () Bool)

(declare-fun res!1646950 () Bool)

(declare-fun e!2508785 () Bool)

(assert (=> b!4043513 (=> res!1646950 e!2508785)))

(assert (=> b!4043513 (= res!1646950 (not ((_ is ElementMatch!11829) (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))))))

(declare-fun e!2508784 () Bool)

(assert (=> b!4043513 (= e!2508784 e!2508785)))

(declare-fun b!4043514 () Bool)

(assert (=> b!4043514 (= e!2508782 (nullable!4151 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))))))

(declare-fun b!4043515 () Bool)

(declare-fun call!287579 () Bool)

(assert (=> b!4043515 (= e!2508783 (= lt!1439296 call!287579))))

(declare-fun b!4043516 () Bool)

(declare-fun e!2508780 () Bool)

(assert (=> b!4043516 (= e!2508780 (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))))))

(declare-fun b!4043517 () Bool)

(assert (=> b!4043517 (= e!2508783 e!2508784)))

(declare-fun c!698565 () Bool)

(assert (=> b!4043517 (= c!698565 ((_ is EmptyLang!11829) (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))))))

(declare-fun b!4043518 () Bool)

(assert (=> b!4043518 (= e!2508782 (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))) (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))))) (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))))))))

(declare-fun b!4043519 () Bool)

(assert (=> b!4043519 (= e!2508784 (not lt!1439296))))

(declare-fun b!4043520 () Bool)

(declare-fun e!2508781 () Bool)

(assert (=> b!4043520 (= e!2508785 e!2508781)))

(declare-fun res!1646946 () Bool)

(assert (=> b!4043520 (=> (not res!1646946) (not e!2508781))))

(assert (=> b!4043520 (= res!1646946 (not lt!1439296))))

(declare-fun b!4043521 () Bool)

(assert (=> b!4043521 (= e!2508781 e!2508786)))

(declare-fun res!1646947 () Bool)

(assert (=> b!4043521 (=> res!1646947 e!2508786)))

(assert (=> b!4043521 (= res!1646947 call!287579)))

(declare-fun b!4043522 () Bool)

(declare-fun res!1646951 () Bool)

(assert (=> b!4043522 (=> (not res!1646951) (not e!2508780))))

(assert (=> b!4043522 (= res!1646951 (not call!287579))))

(declare-fun b!4043523 () Bool)

(declare-fun res!1646952 () Bool)

(assert (=> b!4043523 (=> res!1646952 e!2508785)))

(assert (=> b!4043523 (= res!1646952 e!2508780)))

(declare-fun res!1646948 () Bool)

(assert (=> b!4043523 (=> (not res!1646948) (not e!2508780))))

(assert (=> b!4043523 (= res!1646948 lt!1439296)))

(declare-fun b!4043524 () Bool)

(declare-fun res!1646953 () Bool)

(assert (=> b!4043524 (=> (not res!1646953) (not e!2508780))))

(assert (=> b!4043524 (= res!1646953 (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))))))))

(declare-fun bm!287574 () Bool)

(assert (=> bm!287574 (= call!287579 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))))))

(assert (= (and d!1199821 c!698566) b!4043514))

(assert (= (and d!1199821 (not c!698566)) b!4043518))

(assert (= (and d!1199821 c!698567) b!4043515))

(assert (= (and d!1199821 (not c!698567)) b!4043517))

(assert (= (and b!4043517 c!698565) b!4043519))

(assert (= (and b!4043517 (not c!698565)) b!4043513))

(assert (= (and b!4043513 (not res!1646950)) b!4043523))

(assert (= (and b!4043523 res!1646948) b!4043522))

(assert (= (and b!4043522 res!1646951) b!4043524))

(assert (= (and b!4043524 res!1646953) b!4043516))

(assert (= (and b!4043523 (not res!1646952)) b!4043520))

(assert (= (and b!4043520 res!1646946) b!4043521))

(assert (= (and b!4043521 (not res!1646947)) b!4043511))

(assert (= (and b!4043511 (not res!1646949)) b!4043512))

(assert (= (or b!4043515 b!4043521 b!4043522) bm!287574))

(assert (=> b!4043524 m!4640073))

(declare-fun m!4640869 () Bool)

(assert (=> b!4043524 m!4640869))

(assert (=> b!4043524 m!4640869))

(declare-fun m!4640873 () Bool)

(assert (=> b!4043524 m!4640873))

(assert (=> b!4043512 m!4640073))

(declare-fun m!4640875 () Bool)

(assert (=> b!4043512 m!4640875))

(assert (=> b!4043516 m!4640073))

(assert (=> b!4043516 m!4640875))

(declare-fun m!4640877 () Bool)

(assert (=> b!4043514 m!4640877))

(assert (=> b!4043518 m!4640073))

(assert (=> b!4043518 m!4640875))

(assert (=> b!4043518 m!4640875))

(declare-fun m!4640879 () Bool)

(assert (=> b!4043518 m!4640879))

(assert (=> b!4043518 m!4640073))

(assert (=> b!4043518 m!4640869))

(assert (=> b!4043518 m!4640879))

(assert (=> b!4043518 m!4640869))

(declare-fun m!4640881 () Bool)

(assert (=> b!4043518 m!4640881))

(assert (=> b!4043511 m!4640073))

(assert (=> b!4043511 m!4640869))

(assert (=> b!4043511 m!4640869))

(assert (=> b!4043511 m!4640873))

(assert (=> bm!287574 m!4640073))

(declare-fun m!4640883 () Bool)

(assert (=> bm!287574 m!4640883))

(assert (=> d!1199821 m!4640073))

(assert (=> d!1199821 m!4640883))

(declare-fun m!4640885 () Bool)

(assert (=> d!1199821 m!4640885))

(assert (=> b!4042988 d!1199821))

(declare-fun d!1199831 () Bool)

(assert (=> d!1199831 (= (get!14192 lt!1439006) (v!39739 lt!1439006))))

(assert (=> b!4042988 d!1199831))

(declare-fun d!1199833 () Bool)

(assert (=> d!1199833 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))) (list!16107 (c!698370 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))))))

(declare-fun bs!591077 () Bool)

(assert (= bs!591077 d!1199833))

(declare-fun m!4640891 () Bool)

(assert (=> bs!591077 m!4640891))

(assert (=> b!4042988 d!1199833))

(declare-fun d!1199835 () Bool)

(declare-fun lt!1439299 () BalanceConc!25864)

(assert (=> d!1199835 (= (list!16106 lt!1439299) (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006))))))

(assert (=> d!1199835 (= lt!1439299 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))) (value!217968 (_1!24299 (get!14192 lt!1439006)))))))

(assert (=> d!1199835 (= (charsOf!4740 (_1!24299 (get!14192 lt!1439006))) lt!1439299)))

(declare-fun b_lambda!118131 () Bool)

(assert (=> (not b_lambda!118131) (not d!1199835)))

(declare-fun t!335302 () Bool)

(declare-fun tb!243157 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335302) tb!243157))

(declare-fun b!4043534 () Bool)

(declare-fun e!2508792 () Bool)

(declare-fun tp!1227228 () Bool)

(assert (=> b!4043534 (= e!2508792 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))) (value!217968 (_1!24299 (get!14192 lt!1439006)))))) tp!1227228))))

(declare-fun result!294698 () Bool)

(assert (=> tb!243157 (= result!294698 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))) (value!217968 (_1!24299 (get!14192 lt!1439006))))) e!2508792))))

(assert (= tb!243157 b!4043534))

(declare-fun m!4640903 () Bool)

(assert (=> b!4043534 m!4640903))

(declare-fun m!4640905 () Bool)

(assert (=> tb!243157 m!4640905))

(assert (=> d!1199835 t!335302))

(declare-fun b_and!310895 () Bool)

(assert (= b_and!310883 (and (=> t!335302 result!294698) b_and!310895)))

(declare-fun t!335304 () Bool)

(declare-fun tb!243159 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335304) tb!243159))

(declare-fun result!294700 () Bool)

(assert (= result!294700 result!294698))

(assert (=> d!1199835 t!335304))

(declare-fun b_and!310897 () Bool)

(assert (= b_and!310885 (and (=> t!335304 result!294700) b_and!310897)))

(declare-fun t!335306 () Bool)

(declare-fun tb!243161 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335306) tb!243161))

(declare-fun result!294702 () Bool)

(assert (= result!294702 result!294698))

(assert (=> d!1199835 t!335306))

(declare-fun b_and!310899 () Bool)

(assert (= b_and!310887 (and (=> t!335306 result!294702) b_and!310899)))

(declare-fun m!4640907 () Bool)

(assert (=> d!1199835 m!4640907))

(declare-fun m!4640909 () Bool)

(assert (=> d!1199835 m!4640909))

(assert (=> b!4042988 d!1199835))

(declare-fun d!1199847 () Bool)

(declare-fun charsToBigInt!1 (List!43374) Int)

(assert (=> d!1199847 (= (inv!17 (value!217968 token!484)) (= (charsToBigInt!1 (text!50526 (value!217968 token!484))) (value!217960 (value!217968 token!484))))))

(declare-fun bs!591078 () Bool)

(assert (= bs!591078 d!1199847))

(declare-fun m!4640919 () Bool)

(assert (=> bs!591078 m!4640919))

(assert (=> b!4043047 d!1199847))

(declare-fun b!4043542 () Bool)

(declare-fun lt!1439302 () List!43373)

(declare-fun e!2508796 () Bool)

(assert (=> b!4043542 (= e!2508796 (or (not (= lt!1438815 Nil!43249)) (= lt!1439302 lt!1438798)))))

(declare-fun b!4043540 () Bool)

(declare-fun e!2508797 () List!43373)

(assert (=> b!4043540 (= e!2508797 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) lt!1438815)))))

(declare-fun b!4043539 () Bool)

(assert (=> b!4043539 (= e!2508797 lt!1438815)))

(declare-fun b!4043541 () Bool)

(declare-fun res!1646963 () Bool)

(assert (=> b!4043541 (=> (not res!1646963) (not e!2508796))))

(assert (=> b!4043541 (= res!1646963 (= (size!32333 lt!1439302) (+ (size!32333 lt!1438798) (size!32333 lt!1438815))))))

(declare-fun d!1199851 () Bool)

(assert (=> d!1199851 e!2508796))

(declare-fun res!1646962 () Bool)

(assert (=> d!1199851 (=> (not res!1646962) (not e!2508796))))

(assert (=> d!1199851 (= res!1646962 (= (content!6581 lt!1439302) ((_ map or) (content!6581 lt!1438798) (content!6581 lt!1438815))))))

(assert (=> d!1199851 (= lt!1439302 e!2508797)))

(declare-fun c!698570 () Bool)

(assert (=> d!1199851 (= c!698570 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199851 (= (++!11326 lt!1438798 lt!1438815) lt!1439302)))

(assert (= (and d!1199851 c!698570) b!4043539))

(assert (= (and d!1199851 (not c!698570)) b!4043540))

(assert (= (and d!1199851 res!1646962) b!4043541))

(assert (= (and b!4043541 res!1646963) b!4043542))

(declare-fun m!4640921 () Bool)

(assert (=> b!4043540 m!4640921))

(declare-fun m!4640923 () Bool)

(assert (=> b!4043541 m!4640923))

(assert (=> b!4043541 m!4639203))

(declare-fun m!4640925 () Bool)

(assert (=> b!4043541 m!4640925))

(declare-fun m!4640927 () Bool)

(assert (=> d!1199851 m!4640927))

(assert (=> d!1199851 m!4639353))

(declare-fun m!4640929 () Bool)

(assert (=> d!1199851 m!4640929))

(assert (=> d!1199323 d!1199851))

(assert (=> d!1199323 d!1199697))

(assert (=> d!1199323 d!1199379))

(declare-fun d!1199855 () Bool)

(declare-fun lt!1439303 () Int)

(assert (=> d!1199855 (>= lt!1439303 0)))

(declare-fun e!2508798 () Int)

(assert (=> d!1199855 (= lt!1439303 e!2508798)))

(declare-fun c!698571 () Bool)

(assert (=> d!1199855 (= c!698571 ((_ is Nil!43249) lt!1439030))))

(assert (=> d!1199855 (= (size!32333 lt!1439030) lt!1439303)))

(declare-fun b!4043543 () Bool)

(assert (=> b!4043543 (= e!2508798 0)))

(declare-fun b!4043544 () Bool)

(assert (=> b!4043544 (= e!2508798 (+ 1 (size!32333 (t!335212 lt!1439030))))))

(assert (= (and d!1199855 c!698571) b!4043543))

(assert (= (and d!1199855 (not c!698571)) b!4043544))

(declare-fun m!4640931 () Bool)

(assert (=> b!4043544 m!4640931))

(assert (=> b!4043116 d!1199855))

(assert (=> b!4043116 d!1199379))

(declare-fun d!1199857 () Bool)

(declare-fun lt!1439304 () Int)

(assert (=> d!1199857 (>= lt!1439304 0)))

(declare-fun e!2508799 () Int)

(assert (=> d!1199857 (= lt!1439304 e!2508799)))

(declare-fun c!698572 () Bool)

(assert (=> d!1199857 (= c!698572 ((_ is Nil!43249) lt!1438769))))

(assert (=> d!1199857 (= (size!32333 lt!1438769) lt!1439304)))

(declare-fun b!4043545 () Bool)

(assert (=> b!4043545 (= e!2508799 0)))

(declare-fun b!4043546 () Bool)

(assert (=> b!4043546 (= e!2508799 (+ 1 (size!32333 (t!335212 lt!1438769))))))

(assert (= (and d!1199857 c!698572) b!4043545))

(assert (= (and d!1199857 (not c!698572)) b!4043546))

(declare-fun m!4640933 () Bool)

(assert (=> b!4043546 m!4640933))

(assert (=> b!4043116 d!1199857))

(declare-fun b!4043550 () Bool)

(declare-fun e!2508800 () Bool)

(declare-fun lt!1439305 () List!43373)

(assert (=> b!4043550 (= e!2508800 (or (not (= suffix!1299 Nil!43249)) (= lt!1439305 (t!335212 lt!1438787))))))

(declare-fun b!4043548 () Bool)

(declare-fun e!2508801 () List!43373)

(assert (=> b!4043548 (= e!2508801 (Cons!43249 (h!48669 (t!335212 lt!1438787)) (++!11326 (t!335212 (t!335212 lt!1438787)) suffix!1299)))))

(declare-fun b!4043547 () Bool)

(assert (=> b!4043547 (= e!2508801 suffix!1299)))

(declare-fun b!4043549 () Bool)

(declare-fun res!1646965 () Bool)

(assert (=> b!4043549 (=> (not res!1646965) (not e!2508800))))

(assert (=> b!4043549 (= res!1646965 (= (size!32333 lt!1439305) (+ (size!32333 (t!335212 lt!1438787)) (size!32333 suffix!1299))))))

(declare-fun d!1199859 () Bool)

(assert (=> d!1199859 e!2508800))

(declare-fun res!1646964 () Bool)

(assert (=> d!1199859 (=> (not res!1646964) (not e!2508800))))

(assert (=> d!1199859 (= res!1646964 (= (content!6581 lt!1439305) ((_ map or) (content!6581 (t!335212 lt!1438787)) (content!6581 suffix!1299))))))

(assert (=> d!1199859 (= lt!1439305 e!2508801)))

(declare-fun c!698573 () Bool)

(assert (=> d!1199859 (= c!698573 ((_ is Nil!43249) (t!335212 lt!1438787)))))

(assert (=> d!1199859 (= (++!11326 (t!335212 lt!1438787) suffix!1299) lt!1439305)))

(assert (= (and d!1199859 c!698573) b!4043547))

(assert (= (and d!1199859 (not c!698573)) b!4043548))

(assert (= (and d!1199859 res!1646964) b!4043549))

(assert (= (and b!4043549 res!1646965) b!4043550))

(declare-fun m!4640935 () Bool)

(assert (=> b!4043548 m!4640935))

(declare-fun m!4640937 () Bool)

(assert (=> b!4043549 m!4640937))

(declare-fun m!4640939 () Bool)

(assert (=> b!4043549 m!4640939))

(assert (=> b!4043549 m!4639241))

(declare-fun m!4640941 () Bool)

(assert (=> d!1199859 m!4640941))

(declare-fun m!4640943 () Bool)

(assert (=> d!1199859 m!4640943))

(assert (=> d!1199859 m!4640095))

(assert (=> b!4043025 d!1199859))

(declare-fun b!4043554 () Bool)

(declare-fun lt!1439306 () List!43373)

(declare-fun e!2508802 () Bool)

(assert (=> b!4043554 (= e!2508802 (or (not (= newSuffixResult!27 Nil!43249)) (= lt!1439306 (t!335212 lt!1438792))))))

(declare-fun b!4043552 () Bool)

(declare-fun e!2508803 () List!43373)

(assert (=> b!4043552 (= e!2508803 (Cons!43249 (h!48669 (t!335212 lt!1438792)) (++!11326 (t!335212 (t!335212 lt!1438792)) newSuffixResult!27)))))

(declare-fun b!4043551 () Bool)

(assert (=> b!4043551 (= e!2508803 newSuffixResult!27)))

(declare-fun b!4043553 () Bool)

(declare-fun res!1646967 () Bool)

(assert (=> b!4043553 (=> (not res!1646967) (not e!2508802))))

(assert (=> b!4043553 (= res!1646967 (= (size!32333 lt!1439306) (+ (size!32333 (t!335212 lt!1438792)) (size!32333 newSuffixResult!27))))))

(declare-fun d!1199861 () Bool)

(assert (=> d!1199861 e!2508802))

(declare-fun res!1646966 () Bool)

(assert (=> d!1199861 (=> (not res!1646966) (not e!2508802))))

(assert (=> d!1199861 (= res!1646966 (= (content!6581 lt!1439306) ((_ map or) (content!6581 (t!335212 lt!1438792)) (content!6581 newSuffixResult!27))))))

(assert (=> d!1199861 (= lt!1439306 e!2508803)))

(declare-fun c!698574 () Bool)

(assert (=> d!1199861 (= c!698574 ((_ is Nil!43249) (t!335212 lt!1438792)))))

(assert (=> d!1199861 (= (++!11326 (t!335212 lt!1438792) newSuffixResult!27) lt!1439306)))

(assert (= (and d!1199861 c!698574) b!4043551))

(assert (= (and d!1199861 (not c!698574)) b!4043552))

(assert (= (and d!1199861 res!1646966) b!4043553))

(assert (= (and b!4043553 res!1646967) b!4043554))

(declare-fun m!4640945 () Bool)

(assert (=> b!4043552 m!4640945))

(declare-fun m!4640947 () Bool)

(assert (=> b!4043553 m!4640947))

(assert (=> b!4043553 m!4640261))

(assert (=> b!4043553 m!4640249))

(declare-fun m!4640949 () Bool)

(assert (=> d!1199861 m!4640949))

(assert (=> d!1199861 m!4640827))

(assert (=> d!1199861 m!4640253))

(assert (=> b!4043154 d!1199861))

(declare-fun d!1199863 () Bool)

(declare-fun lt!1439307 () Int)

(assert (=> d!1199863 (>= lt!1439307 0)))

(declare-fun e!2508804 () Int)

(assert (=> d!1199863 (= lt!1439307 e!2508804)))

(declare-fun c!698575 () Bool)

(assert (=> d!1199863 (= c!698575 ((_ is Nil!43249) lt!1439008))))

(assert (=> d!1199863 (= (size!32333 lt!1439008) lt!1439307)))

(declare-fun b!4043555 () Bool)

(assert (=> b!4043555 (= e!2508804 0)))

(declare-fun b!4043556 () Bool)

(assert (=> b!4043556 (= e!2508804 (+ 1 (size!32333 (t!335212 lt!1439008))))))

(assert (= (and d!1199863 c!698575) b!4043555))

(assert (= (and d!1199863 (not c!698575)) b!4043556))

(declare-fun m!4640951 () Bool)

(assert (=> b!4043556 m!4640951))

(assert (=> b!4043022 d!1199863))

(assert (=> b!4043022 d!1199379))

(declare-fun d!1199865 () Bool)

(declare-fun lt!1439308 () Int)

(assert (=> d!1199865 (>= lt!1439308 0)))

(declare-fun e!2508805 () Int)

(assert (=> d!1199865 (= lt!1439308 e!2508805)))

(declare-fun c!698576 () Bool)

(assert (=> d!1199865 (= c!698576 ((_ is Nil!43249) lt!1438778))))

(assert (=> d!1199865 (= (size!32333 lt!1438778) lt!1439308)))

(declare-fun b!4043557 () Bool)

(assert (=> b!4043557 (= e!2508805 0)))

(declare-fun b!4043558 () Bool)

(assert (=> b!4043558 (= e!2508805 (+ 1 (size!32333 (t!335212 lt!1438778))))))

(assert (= (and d!1199865 c!698576) b!4043557))

(assert (= (and d!1199865 (not c!698576)) b!4043558))

(declare-fun m!4640953 () Bool)

(assert (=> b!4043558 m!4640953))

(assert (=> b!4043022 d!1199865))

(declare-fun b!4043566 () Bool)

(declare-fun e!2508808 () Bool)

(declare-fun lt!1439309 () List!43373)

(assert (=> b!4043566 (= e!2508808 (or (not (= (_2!24299 (get!14192 lt!1439006)) Nil!43249)) (= lt!1439309 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))))))))

(declare-fun b!4043564 () Bool)

(declare-fun e!2508809 () List!43373)

(assert (=> b!4043564 (= e!2508809 (Cons!43249 (h!48669 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))) (++!11326 (t!335212 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))) (_2!24299 (get!14192 lt!1439006)))))))

(declare-fun b!4043563 () Bool)

(assert (=> b!4043563 (= e!2508809 (_2!24299 (get!14192 lt!1439006)))))

(declare-fun b!4043565 () Bool)

(declare-fun res!1646971 () Bool)

(assert (=> b!4043565 (=> (not res!1646971) (not e!2508808))))

(assert (=> b!4043565 (= res!1646971 (= (size!32333 lt!1439309) (+ (size!32333 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))) (size!32333 (_2!24299 (get!14192 lt!1439006))))))))

(declare-fun d!1199867 () Bool)

(assert (=> d!1199867 e!2508808))

(declare-fun res!1646970 () Bool)

(assert (=> d!1199867 (=> (not res!1646970) (not e!2508808))))

(assert (=> d!1199867 (= res!1646970 (= (content!6581 lt!1439309) ((_ map or) (content!6581 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))) (content!6581 (_2!24299 (get!14192 lt!1439006))))))))

(assert (=> d!1199867 (= lt!1439309 e!2508809)))

(declare-fun c!698577 () Bool)

(assert (=> d!1199867 (= c!698577 ((_ is Nil!43249) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006))))))))

(assert (=> d!1199867 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439006)))) (_2!24299 (get!14192 lt!1439006))) lt!1439309)))

(assert (= (and d!1199867 c!698577) b!4043563))

(assert (= (and d!1199867 (not c!698577)) b!4043564))

(assert (= (and d!1199867 res!1646970) b!4043565))

(assert (= (and b!4043565 res!1646971) b!4043566))

(declare-fun m!4640955 () Bool)

(assert (=> b!4043564 m!4640955))

(declare-fun m!4640957 () Bool)

(assert (=> b!4043565 m!4640957))

(assert (=> b!4043565 m!4640073))

(declare-fun m!4640959 () Bool)

(assert (=> b!4043565 m!4640959))

(assert (=> b!4043565 m!4640067))

(declare-fun m!4640961 () Bool)

(assert (=> d!1199867 m!4640961))

(assert (=> d!1199867 m!4640073))

(declare-fun m!4640963 () Bool)

(assert (=> d!1199867 m!4640963))

(declare-fun m!4640965 () Bool)

(assert (=> d!1199867 m!4640965))

(assert (=> b!4042992 d!1199867))

(assert (=> b!4042992 d!1199833))

(assert (=> b!4042992 d!1199835))

(assert (=> b!4042992 d!1199831))

(declare-fun d!1199869 () Bool)

(assert (=> d!1199869 (= (head!8555 lt!1438792) (h!48669 lt!1438792))))

(assert (=> b!4043150 d!1199869))

(declare-fun d!1199871 () Bool)

(assert (=> d!1199871 (= (head!8555 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))) (h!48669 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))))))

(assert (=> b!4043150 d!1199871))

(assert (=> d!1199533 d!1199527))

(declare-fun d!1199873 () Bool)

(assert (=> d!1199873 (ruleValid!2854 thiss!21717 (rule!9998 token!484))))

(assert (=> d!1199873 true))

(declare-fun _$65!1511 () Unit!62477)

(assert (=> d!1199873 (= (choose!24507 thiss!21717 (rule!9998 token!484) rules!2999) _$65!1511)))

(declare-fun bs!591080 () Bool)

(assert (= bs!591080 d!1199873))

(assert (=> bs!591080 m!4639189))

(assert (=> d!1199533 d!1199873))

(declare-fun d!1199875 () Bool)

(declare-fun lt!1439312 () Bool)

(declare-fun content!6583 (List!43375) (InoxSet Rule!13648))

(assert (=> d!1199875 (= lt!1439312 (select (content!6583 rules!2999) (rule!9998 token!484)))))

(declare-fun e!2508834 () Bool)

(assert (=> d!1199875 (= lt!1439312 e!2508834)))

(declare-fun res!1646989 () Bool)

(assert (=> d!1199875 (=> (not res!1646989) (not e!2508834))))

(assert (=> d!1199875 (= res!1646989 ((_ is Cons!43251) rules!2999))))

(assert (=> d!1199875 (= (contains!8595 rules!2999 (rule!9998 token!484)) lt!1439312)))

(declare-fun b!4043594 () Bool)

(declare-fun e!2508833 () Bool)

(assert (=> b!4043594 (= e!2508834 e!2508833)))

(declare-fun res!1646990 () Bool)

(assert (=> b!4043594 (=> res!1646990 e!2508833)))

(assert (=> b!4043594 (= res!1646990 (= (h!48671 rules!2999) (rule!9998 token!484)))))

(declare-fun b!4043595 () Bool)

(assert (=> b!4043595 (= e!2508833 (contains!8595 (t!335214 rules!2999) (rule!9998 token!484)))))

(assert (= (and d!1199875 res!1646989) b!4043594))

(assert (= (and b!4043594 (not res!1646990)) b!4043595))

(declare-fun m!4640973 () Bool)

(assert (=> d!1199875 m!4640973))

(declare-fun m!4640975 () Bool)

(assert (=> d!1199875 m!4640975))

(declare-fun m!4640977 () Bool)

(assert (=> b!4043595 m!4640977))

(assert (=> d!1199533 d!1199875))

(declare-fun b!4043596 () Bool)

(declare-fun e!2508835 () Bool)

(declare-fun e!2508836 () Bool)

(assert (=> b!4043596 (= e!2508835 e!2508836)))

(declare-fun res!1646992 () Bool)

(assert (=> b!4043596 (=> (not res!1646992) (not e!2508836))))

(assert (=> b!4043596 (= res!1646992 (not ((_ is Nil!43249) (++!11326 prefix!494 newSuffix!27))))))

(declare-fun b!4043597 () Bool)

(declare-fun res!1646993 () Bool)

(assert (=> b!4043597 (=> (not res!1646993) (not e!2508836))))

(assert (=> b!4043597 (= res!1646993 (= (head!8555 lt!1438798) (head!8555 (++!11326 prefix!494 newSuffix!27))))))

(declare-fun d!1199881 () Bool)

(declare-fun e!2508837 () Bool)

(assert (=> d!1199881 e!2508837))

(declare-fun res!1646991 () Bool)

(assert (=> d!1199881 (=> res!1646991 e!2508837)))

(declare-fun lt!1439313 () Bool)

(assert (=> d!1199881 (= res!1646991 (not lt!1439313))))

(assert (=> d!1199881 (= lt!1439313 e!2508835)))

(declare-fun res!1646994 () Bool)

(assert (=> d!1199881 (=> res!1646994 e!2508835)))

(assert (=> d!1199881 (= res!1646994 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199881 (= (isPrefix!4011 lt!1438798 (++!11326 prefix!494 newSuffix!27)) lt!1439313)))

(declare-fun b!4043598 () Bool)

(assert (=> b!4043598 (= e!2508836 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 (++!11326 prefix!494 newSuffix!27))))))

(declare-fun b!4043599 () Bool)

(assert (=> b!4043599 (= e!2508837 (>= (size!32333 (++!11326 prefix!494 newSuffix!27)) (size!32333 lt!1438798)))))

(assert (= (and d!1199881 (not res!1646994)) b!4043596))

(assert (= (and b!4043596 res!1646992) b!4043597))

(assert (= (and b!4043597 res!1646993) b!4043598))

(assert (= (and d!1199881 (not res!1646991)) b!4043599))

(assert (=> b!4043597 m!4639555))

(assert (=> b!4043597 m!4639263))

(declare-fun m!4640979 () Bool)

(assert (=> b!4043597 m!4640979))

(assert (=> b!4043598 m!4639565))

(assert (=> b!4043598 m!4639263))

(declare-fun m!4640981 () Bool)

(assert (=> b!4043598 m!4640981))

(assert (=> b!4043598 m!4639565))

(assert (=> b!4043598 m!4640981))

(declare-fun m!4640983 () Bool)

(assert (=> b!4043598 m!4640983))

(assert (=> b!4043599 m!4639263))

(assert (=> b!4043599 m!4640441))

(assert (=> b!4043599 m!4639203))

(assert (=> d!1199557 d!1199881))

(assert (=> d!1199557 d!1199593))

(declare-fun d!1199883 () Bool)

(assert (=> d!1199883 (isPrefix!4011 lt!1438798 (++!11326 prefix!494 newSuffix!27))))

(assert (=> d!1199883 true))

(declare-fun _$58!596 () Unit!62477)

(assert (=> d!1199883 (= (choose!24511 lt!1438798 prefix!494 newSuffix!27) _$58!596)))

(declare-fun bs!591081 () Bool)

(assert (= bs!591081 d!1199883))

(assert (=> bs!591081 m!4639263))

(assert (=> bs!591081 m!4639263))

(assert (=> bs!591081 m!4640153))

(assert (=> d!1199557 d!1199883))

(assert (=> d!1199557 d!1199583))

(declare-fun b!4043603 () Bool)

(declare-fun lt!1439314 () List!43373)

(declare-fun e!2508838 () Bool)

(assert (=> b!4043603 (= e!2508838 (or (not (= suffixResult!105 Nil!43249)) (= lt!1439314 (t!335212 lt!1438798))))))

(declare-fun b!4043601 () Bool)

(declare-fun e!2508839 () List!43373)

(assert (=> b!4043601 (= e!2508839 (Cons!43249 (h!48669 (t!335212 lt!1438798)) (++!11326 (t!335212 (t!335212 lt!1438798)) suffixResult!105)))))

(declare-fun b!4043600 () Bool)

(assert (=> b!4043600 (= e!2508839 suffixResult!105)))

(declare-fun b!4043602 () Bool)

(declare-fun res!1646996 () Bool)

(assert (=> b!4043602 (=> (not res!1646996) (not e!2508838))))

(assert (=> b!4043602 (= res!1646996 (= (size!32333 lt!1439314) (+ (size!32333 (t!335212 lt!1438798)) (size!32333 suffixResult!105))))))

(declare-fun d!1199885 () Bool)

(assert (=> d!1199885 e!2508838))

(declare-fun res!1646995 () Bool)

(assert (=> d!1199885 (=> (not res!1646995) (not e!2508838))))

(assert (=> d!1199885 (= res!1646995 (= (content!6581 lt!1439314) ((_ map or) (content!6581 (t!335212 lt!1438798)) (content!6581 suffixResult!105))))))

(assert (=> d!1199885 (= lt!1439314 e!2508839)))

(declare-fun c!698584 () Bool)

(assert (=> d!1199885 (= c!698584 ((_ is Nil!43249) (t!335212 lt!1438798)))))

(assert (=> d!1199885 (= (++!11326 (t!335212 lt!1438798) suffixResult!105) lt!1439314)))

(assert (= (and d!1199885 c!698584) b!4043600))

(assert (= (and d!1199885 (not c!698584)) b!4043601))

(assert (= (and d!1199885 res!1646995) b!4043602))

(assert (= (and b!4043602 res!1646996) b!4043603))

(declare-fun m!4640985 () Bool)

(assert (=> b!4043601 m!4640985))

(declare-fun m!4640987 () Bool)

(assert (=> b!4043602 m!4640987))

(assert (=> b!4043602 m!4639587))

(assert (=> b!4043602 m!4640007))

(declare-fun m!4640989 () Bool)

(assert (=> d!1199885 m!4640989))

(assert (=> d!1199885 m!4640471))

(assert (=> d!1199885 m!4640011))

(assert (=> b!4042940 d!1199885))

(assert (=> b!4043104 d!1199697))

(assert (=> b!4043104 d!1199379))

(declare-fun d!1199887 () Bool)

(declare-fun lt!1439315 () Int)

(assert (=> d!1199887 (>= lt!1439315 0)))

(declare-fun e!2508842 () Int)

(assert (=> d!1199887 (= lt!1439315 e!2508842)))

(declare-fun c!698585 () Bool)

(assert (=> d!1199887 (= c!698585 ((_ is Nil!43249) (t!335212 newSuffix!27)))))

(assert (=> d!1199887 (= (size!32333 (t!335212 newSuffix!27)) lt!1439315)))

(declare-fun b!4043606 () Bool)

(assert (=> b!4043606 (= e!2508842 0)))

(declare-fun b!4043607 () Bool)

(assert (=> b!4043607 (= e!2508842 (+ 1 (size!32333 (t!335212 (t!335212 newSuffix!27)))))))

(assert (= (and d!1199887 c!698585) b!4043606))

(assert (= (and d!1199887 (not c!698585)) b!4043607))

(declare-fun m!4640991 () Bool)

(assert (=> b!4043607 m!4640991))

(assert (=> b!4043035 d!1199887))

(declare-fun lt!1439316 () List!43373)

(declare-fun b!4043611 () Bool)

(declare-fun e!2508843 () Bool)

(assert (=> b!4043611 (= e!2508843 (or (not (= lt!1438762 Nil!43249)) (= lt!1439316 (t!335212 lt!1438798))))))

(declare-fun b!4043609 () Bool)

(declare-fun e!2508844 () List!43373)

(assert (=> b!4043609 (= e!2508844 (Cons!43249 (h!48669 (t!335212 lt!1438798)) (++!11326 (t!335212 (t!335212 lt!1438798)) lt!1438762)))))

(declare-fun b!4043608 () Bool)

(assert (=> b!4043608 (= e!2508844 lt!1438762)))

(declare-fun b!4043610 () Bool)

(declare-fun res!1647000 () Bool)

(assert (=> b!4043610 (=> (not res!1647000) (not e!2508843))))

(assert (=> b!4043610 (= res!1647000 (= (size!32333 lt!1439316) (+ (size!32333 (t!335212 lt!1438798)) (size!32333 lt!1438762))))))

(declare-fun d!1199889 () Bool)

(assert (=> d!1199889 e!2508843))

(declare-fun res!1646999 () Bool)

(assert (=> d!1199889 (=> (not res!1646999) (not e!2508843))))

(assert (=> d!1199889 (= res!1646999 (= (content!6581 lt!1439316) ((_ map or) (content!6581 (t!335212 lt!1438798)) (content!6581 lt!1438762))))))

(assert (=> d!1199889 (= lt!1439316 e!2508844)))

(declare-fun c!698586 () Bool)

(assert (=> d!1199889 (= c!698586 ((_ is Nil!43249) (t!335212 lt!1438798)))))

(assert (=> d!1199889 (= (++!11326 (t!335212 lt!1438798) lt!1438762) lt!1439316)))

(assert (= (and d!1199889 c!698586) b!4043608))

(assert (= (and d!1199889 (not c!698586)) b!4043609))

(assert (= (and d!1199889 res!1646999) b!4043610))

(assert (= (and b!4043610 res!1647000) b!4043611))

(declare-fun m!4640993 () Bool)

(assert (=> b!4043609 m!4640993))

(declare-fun m!4640995 () Bool)

(assert (=> b!4043610 m!4640995))

(assert (=> b!4043610 m!4639587))

(assert (=> b!4043610 m!4639349))

(declare-fun m!4640997 () Bool)

(assert (=> d!1199889 m!4640997))

(assert (=> d!1199889 m!4640471))

(assert (=> d!1199889 m!4639355))

(assert (=> b!4042540 d!1199889))

(declare-fun d!1199891 () Bool)

(declare-fun c!698587 () Bool)

(assert (=> d!1199891 (= c!698587 ((_ is Nil!43249) lt!1439036))))

(declare-fun e!2508845 () (InoxSet C!23844))

(assert (=> d!1199891 (= (content!6581 lt!1439036) e!2508845)))

(declare-fun b!4043612 () Bool)

(assert (=> b!4043612 (= e!2508845 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043613 () Bool)

(assert (=> b!4043613 (= e!2508845 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439036) true) (content!6581 (t!335212 lt!1439036))))))

(assert (= (and d!1199891 c!698587) b!4043612))

(assert (= (and d!1199891 (not c!698587)) b!4043613))

(declare-fun m!4640999 () Bool)

(assert (=> b!4043613 m!4640999))

(declare-fun m!4641001 () Bool)

(assert (=> b!4043613 m!4641001))

(assert (=> d!1199587 d!1199891))

(declare-fun d!1199893 () Bool)

(declare-fun c!698588 () Bool)

(assert (=> d!1199893 (= c!698588 ((_ is Nil!43249) prefix!494))))

(declare-fun e!2508846 () (InoxSet C!23844))

(assert (=> d!1199893 (= (content!6581 prefix!494) e!2508846)))

(declare-fun b!4043614 () Bool)

(assert (=> b!4043614 (= e!2508846 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043615 () Bool)

(assert (=> b!4043615 (= e!2508846 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 prefix!494) true) (content!6581 (t!335212 prefix!494))))))

(assert (= (and d!1199893 c!698588) b!4043614))

(assert (= (and d!1199893 (not c!698588)) b!4043615))

(declare-fun m!4641003 () Bool)

(assert (=> b!4043615 m!4641003))

(assert (=> b!4043615 m!4640569))

(assert (=> d!1199587 d!1199893))

(declare-fun d!1199895 () Bool)

(declare-fun c!698589 () Bool)

(assert (=> d!1199895 (= c!698589 ((_ is Nil!43249) lt!1438791))))

(declare-fun e!2508847 () (InoxSet C!23844))

(assert (=> d!1199895 (= (content!6581 lt!1438791) e!2508847)))

(declare-fun b!4043616 () Bool)

(assert (=> b!4043616 (= e!2508847 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043617 () Bool)

(assert (=> b!4043617 (= e!2508847 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438791) true) (content!6581 (t!335212 lt!1438791))))))

(assert (= (and d!1199895 c!698589) b!4043616))

(assert (= (and d!1199895 (not c!698589)) b!4043617))

(declare-fun m!4641005 () Bool)

(assert (=> b!4043617 m!4641005))

(declare-fun m!4641007 () Bool)

(assert (=> b!4043617 m!4641007))

(assert (=> d!1199587 d!1199895))

(declare-fun d!1199897 () Bool)

(assert (=> d!1199897 (= (isEmpty!25817 (tail!6287 lt!1438798)) ((_ is Nil!43249) (tail!6287 lt!1438798)))))

(assert (=> b!4043079 d!1199897))

(declare-fun d!1199899 () Bool)

(assert (=> d!1199899 (= (tail!6287 lt!1438798) (t!335212 lt!1438798))))

(assert (=> b!4043079 d!1199899))

(declare-fun d!1199901 () Bool)

(declare-fun lt!1439317 () Int)

(assert (=> d!1199901 (>= lt!1439317 0)))

(declare-fun e!2508848 () Int)

(assert (=> d!1199901 (= lt!1439317 e!2508848)))

(declare-fun c!698590 () Bool)

(assert (=> d!1199901 (= c!698590 ((_ is Nil!43249) lt!1439043))))

(assert (=> d!1199901 (= (size!32333 lt!1439043) lt!1439317)))

(declare-fun b!4043620 () Bool)

(assert (=> b!4043620 (= e!2508848 0)))

(declare-fun b!4043621 () Bool)

(assert (=> b!4043621 (= e!2508848 (+ 1 (size!32333 (t!335212 lt!1439043))))))

(assert (= (and d!1199901 c!698590) b!4043620))

(assert (= (and d!1199901 (not c!698590)) b!4043621))

(declare-fun m!4641011 () Bool)

(assert (=> b!4043621 m!4641011))

(assert (=> b!4043147 d!1199901))

(assert (=> b!4043147 d!1199601))

(declare-fun d!1199905 () Bool)

(declare-fun lt!1439319 () Int)

(assert (=> d!1199905 (>= lt!1439319 0)))

(declare-fun e!2508850 () Int)

(assert (=> d!1199905 (= lt!1439319 e!2508850)))

(declare-fun c!698592 () Bool)

(assert (=> d!1199905 (= c!698592 ((_ is Nil!43249) (_2!24299 (v!39739 lt!1438779))))))

(assert (=> d!1199905 (= (size!32333 (_2!24299 (v!39739 lt!1438779))) lt!1439319)))

(declare-fun b!4043624 () Bool)

(assert (=> b!4043624 (= e!2508850 0)))

(declare-fun b!4043625 () Bool)

(assert (=> b!4043625 (= e!2508850 (+ 1 (size!32333 (t!335212 (_2!24299 (v!39739 lt!1438779))))))))

(assert (= (and d!1199905 c!698592) b!4043624))

(assert (= (and d!1199905 (not c!698592)) b!4043625))

(declare-fun m!4641015 () Bool)

(assert (=> b!4043625 m!4641015))

(assert (=> b!4043147 d!1199905))

(assert (=> b!4043112 d!1199547))

(assert (=> b!4043112 d!1199549))

(declare-fun b!4043628 () Bool)

(declare-fun res!1647004 () Bool)

(declare-fun e!2508858 () Bool)

(assert (=> b!4043628 (=> res!1647004 e!2508858)))

(assert (=> b!4043628 (= res!1647004 (not (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))))))))

(declare-fun d!1199909 () Bool)

(declare-fun e!2508855 () Bool)

(assert (=> d!1199909 e!2508855))

(declare-fun c!698596 () Bool)

(assert (=> d!1199909 (= c!698596 ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))))))

(declare-fun lt!1439321 () Bool)

(declare-fun e!2508854 () Bool)

(assert (=> d!1199909 (= lt!1439321 e!2508854)))

(declare-fun c!698595 () Bool)

(assert (=> d!1199909 (= c!698595 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))))))

(assert (=> d!1199909 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))))

(assert (=> d!1199909 (= (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))) lt!1439321)))

(declare-fun b!4043629 () Bool)

(assert (=> b!4043629 (= e!2508858 (not (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))))))))

(declare-fun b!4043630 () Bool)

(declare-fun res!1647005 () Bool)

(declare-fun e!2508857 () Bool)

(assert (=> b!4043630 (=> res!1647005 e!2508857)))

(assert (=> b!4043630 (= res!1647005 (not ((_ is ElementMatch!11829) (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))))))

(declare-fun e!2508856 () Bool)

(assert (=> b!4043630 (= e!2508856 e!2508857)))

(declare-fun b!4043631 () Bool)

(assert (=> b!4043631 (= e!2508854 (nullable!4151 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))))))

(declare-fun b!4043632 () Bool)

(declare-fun call!287589 () Bool)

(assert (=> b!4043632 (= e!2508855 (= lt!1439321 call!287589))))

(declare-fun b!4043633 () Bool)

(declare-fun e!2508852 () Bool)

(assert (=> b!4043633 (= e!2508852 (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))))))

(declare-fun b!4043634 () Bool)

(assert (=> b!4043634 (= e!2508855 e!2508856)))

(declare-fun c!698594 () Bool)

(assert (=> b!4043634 (= c!698594 ((_ is EmptyLang!11829) (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))))))

(declare-fun b!4043635 () Bool)

(assert (=> b!4043635 (= e!2508854 (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))) (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))))) (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))))))))

(declare-fun b!4043636 () Bool)

(assert (=> b!4043636 (= e!2508856 (not lt!1439321))))

(declare-fun b!4043637 () Bool)

(declare-fun e!2508853 () Bool)

(assert (=> b!4043637 (= e!2508857 e!2508853)))

(declare-fun res!1647001 () Bool)

(assert (=> b!4043637 (=> (not res!1647001) (not e!2508853))))

(assert (=> b!4043637 (= res!1647001 (not lt!1439321))))

(declare-fun b!4043638 () Bool)

(assert (=> b!4043638 (= e!2508853 e!2508858)))

(declare-fun res!1647002 () Bool)

(assert (=> b!4043638 (=> res!1647002 e!2508858)))

(assert (=> b!4043638 (= res!1647002 call!287589)))

(declare-fun b!4043639 () Bool)

(declare-fun res!1647006 () Bool)

(assert (=> b!4043639 (=> (not res!1647006) (not e!2508852))))

(assert (=> b!4043639 (= res!1647006 (not call!287589))))

(declare-fun b!4043640 () Bool)

(declare-fun res!1647007 () Bool)

(assert (=> b!4043640 (=> res!1647007 e!2508857)))

(assert (=> b!4043640 (= res!1647007 e!2508852)))

(declare-fun res!1647003 () Bool)

(assert (=> b!4043640 (=> (not res!1647003) (not e!2508852))))

(assert (=> b!4043640 (= res!1647003 lt!1439321)))

(declare-fun b!4043641 () Bool)

(declare-fun res!1647008 () Bool)

(assert (=> b!4043641 (=> (not res!1647008) (not e!2508852))))

(assert (=> b!4043641 (= res!1647008 (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867)))))))))

(declare-fun bm!287584 () Bool)

(assert (=> bm!287584 (= call!287589 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438867))))))))

(assert (= (and d!1199909 c!698595) b!4043631))

(assert (= (and d!1199909 (not c!698595)) b!4043635))

(assert (= (and d!1199909 c!698596) b!4043632))

(assert (= (and d!1199909 (not c!698596)) b!4043634))

(assert (= (and b!4043634 c!698594) b!4043636))

(assert (= (and b!4043634 (not c!698594)) b!4043630))

(assert (= (and b!4043630 (not res!1647005)) b!4043640))

(assert (= (and b!4043640 res!1647003) b!4043639))

(assert (= (and b!4043639 res!1647006) b!4043641))

(assert (= (and b!4043641 res!1647008) b!4043633))

(assert (= (and b!4043640 (not res!1647007)) b!4043637))

(assert (= (and b!4043637 res!1647001) b!4043638))

(assert (= (and b!4043638 (not res!1647002)) b!4043628))

(assert (= (and b!4043628 (not res!1647004)) b!4043629))

(assert (= (or b!4043632 b!4043638 b!4043639) bm!287584))

(assert (=> b!4043641 m!4639477))

(declare-fun m!4641019 () Bool)

(assert (=> b!4043641 m!4641019))

(assert (=> b!4043641 m!4641019))

(declare-fun m!4641021 () Bool)

(assert (=> b!4043641 m!4641021))

(assert (=> b!4043629 m!4639477))

(declare-fun m!4641023 () Bool)

(assert (=> b!4043629 m!4641023))

(assert (=> b!4043633 m!4639477))

(assert (=> b!4043633 m!4641023))

(declare-fun m!4641025 () Bool)

(assert (=> b!4043631 m!4641025))

(assert (=> b!4043635 m!4639477))

(assert (=> b!4043635 m!4641023))

(assert (=> b!4043635 m!4641023))

(declare-fun m!4641027 () Bool)

(assert (=> b!4043635 m!4641027))

(assert (=> b!4043635 m!4639477))

(assert (=> b!4043635 m!4641019))

(assert (=> b!4043635 m!4641027))

(assert (=> b!4043635 m!4641019))

(declare-fun m!4641029 () Bool)

(assert (=> b!4043635 m!4641029))

(assert (=> b!4043628 m!4639477))

(assert (=> b!4043628 m!4641019))

(assert (=> b!4043628 m!4641019))

(assert (=> b!4043628 m!4641021))

(assert (=> bm!287584 m!4639477))

(declare-fun m!4641031 () Bool)

(assert (=> bm!287584 m!4641031))

(assert (=> d!1199909 m!4639477))

(assert (=> d!1199909 m!4641031))

(declare-fun m!4641033 () Bool)

(assert (=> d!1199909 m!4641033))

(assert (=> b!4042645 d!1199909))

(assert (=> b!4042645 d!1199719))

(assert (=> b!4042645 d!1199715))

(assert (=> b!4042645 d!1199717))

(declare-fun d!1199913 () Bool)

(declare-fun lt!1439322 () Int)

(assert (=> d!1199913 (>= lt!1439322 0)))

(declare-fun e!2508859 () Int)

(assert (=> d!1199913 (= lt!1439322 e!2508859)))

(declare-fun c!698597 () Bool)

(assert (=> d!1199913 (= c!698597 ((_ is Nil!43249) lt!1438794))))

(assert (=> d!1199913 (= (size!32333 lt!1438794) lt!1439322)))

(declare-fun b!4043642 () Bool)

(assert (=> b!4043642 (= e!2508859 0)))

(declare-fun b!4043643 () Bool)

(assert (=> b!4043643 (= e!2508859 (+ 1 (size!32333 (t!335212 lt!1438794))))))

(assert (= (and d!1199913 c!698597) b!4043642))

(assert (= (and d!1199913 (not c!698597)) b!4043643))

(declare-fun m!4641035 () Bool)

(assert (=> b!4043643 m!4641035))

(assert (=> b!4042677 d!1199913))

(assert (=> b!4042677 d!1199379))

(declare-fun d!1199915 () Bool)

(declare-fun lt!1439323 () Int)

(assert (=> d!1199915 (>= lt!1439323 0)))

(declare-fun e!2508860 () Int)

(assert (=> d!1199915 (= lt!1439323 e!2508860)))

(declare-fun c!698599 () Bool)

(assert (=> d!1199915 (= c!698599 ((_ is Nil!43249) (t!335212 lt!1438792)))))

(assert (=> d!1199915 (= (size!32333 (t!335212 lt!1438792)) lt!1439323)))

(declare-fun b!4043644 () Bool)

(assert (=> b!4043644 (= e!2508860 0)))

(declare-fun b!4043645 () Bool)

(assert (=> b!4043645 (= e!2508860 (+ 1 (size!32333 (t!335212 (t!335212 lt!1438792)))))))

(assert (= (and d!1199915 c!698599) b!4043644))

(assert (= (and d!1199915 (not c!698599)) b!4043645))

(declare-fun m!4641037 () Bool)

(assert (=> b!4043645 m!4641037))

(assert (=> b!4043144 d!1199915))

(declare-fun b!4043646 () Bool)

(declare-fun e!2508861 () Bool)

(declare-fun e!2508862 () Bool)

(assert (=> b!4043646 (= e!2508861 e!2508862)))

(declare-fun res!1647010 () Bool)

(assert (=> b!4043646 (=> (not res!1647010) (not e!2508862))))

(assert (=> b!4043646 (= res!1647010 (not ((_ is Nil!43249) (++!11326 prefix!494 suffix!1299))))))

(declare-fun b!4043647 () Bool)

(declare-fun res!1647011 () Bool)

(assert (=> b!4043647 (=> (not res!1647011) (not e!2508862))))

(assert (=> b!4043647 (= res!1647011 (= (head!8555 prefix!494) (head!8555 (++!11326 prefix!494 suffix!1299))))))

(declare-fun d!1199917 () Bool)

(declare-fun e!2508863 () Bool)

(assert (=> d!1199917 e!2508863))

(declare-fun res!1647009 () Bool)

(assert (=> d!1199917 (=> res!1647009 e!2508863)))

(declare-fun lt!1439324 () Bool)

(assert (=> d!1199917 (= res!1647009 (not lt!1439324))))

(assert (=> d!1199917 (= lt!1439324 e!2508861)))

(declare-fun res!1647012 () Bool)

(assert (=> d!1199917 (=> res!1647012 e!2508861)))

(assert (=> d!1199917 (= res!1647012 ((_ is Nil!43249) prefix!494))))

(assert (=> d!1199917 (= (isPrefix!4011 prefix!494 (++!11326 prefix!494 suffix!1299)) lt!1439324)))

(declare-fun b!4043648 () Bool)

(assert (=> b!4043648 (= e!2508862 (isPrefix!4011 (tail!6287 prefix!494) (tail!6287 (++!11326 prefix!494 suffix!1299))))))

(declare-fun b!4043649 () Bool)

(assert (=> b!4043649 (= e!2508863 (>= (size!32333 (++!11326 prefix!494 suffix!1299)) (size!32333 prefix!494)))))

(assert (= (and d!1199917 (not res!1647012)) b!4043646))

(assert (= (and b!4043646 res!1647010) b!4043647))

(assert (= (and b!4043647 res!1647011) b!4043648))

(assert (= (and d!1199917 (not res!1647009)) b!4043649))

(assert (=> b!4043647 m!4640161))

(assert (=> b!4043647 m!4639341))

(declare-fun m!4641039 () Bool)

(assert (=> b!4043647 m!4641039))

(assert (=> b!4043648 m!4640163))

(assert (=> b!4043648 m!4639341))

(declare-fun m!4641041 () Bool)

(assert (=> b!4043648 m!4641041))

(assert (=> b!4043648 m!4640163))

(assert (=> b!4043648 m!4641041))

(declare-fun m!4641043 () Bool)

(assert (=> b!4043648 m!4641043))

(assert (=> b!4043649 m!4639341))

(declare-fun m!4641045 () Bool)

(assert (=> b!4043649 m!4641045))

(assert (=> b!4043649 m!4639205))

(assert (=> d!1199567 d!1199917))

(assert (=> d!1199567 d!1199537))

(declare-fun d!1199919 () Bool)

(assert (=> d!1199919 (isPrefix!4011 prefix!494 (++!11326 prefix!494 suffix!1299))))

(assert (=> d!1199919 true))

(declare-fun _$46!1779 () Unit!62477)

(assert (=> d!1199919 (= (choose!24505 prefix!494 suffix!1299) _$46!1779)))

(declare-fun bs!591083 () Bool)

(assert (= bs!591083 d!1199919))

(assert (=> bs!591083 m!4639341))

(assert (=> bs!591083 m!4639341))

(assert (=> bs!591083 m!4640173))

(assert (=> d!1199567 d!1199919))

(declare-fun d!1199921 () Bool)

(assert (=> d!1199921 (= (isEmpty!25817 lt!1438798) ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1199553 d!1199921))

(declare-fun b!4043685 () Bool)

(declare-fun e!2508894 () Bool)

(declare-fun e!2508897 () Bool)

(assert (=> b!4043685 (= e!2508894 e!2508897)))

(declare-fun c!698608 () Bool)

(assert (=> b!4043685 (= c!698608 ((_ is Union!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4043686 () Bool)

(declare-fun res!1647038 () Bool)

(declare-fun e!2508896 () Bool)

(assert (=> b!4043686 (=> (not res!1647038) (not e!2508896))))

(declare-fun call!287597 () Bool)

(assert (=> b!4043686 (= res!1647038 call!287597)))

(assert (=> b!4043686 (= e!2508897 e!2508896)))

(declare-fun call!287596 () Bool)

(declare-fun bm!287591 () Bool)

(declare-fun c!698607 () Bool)

(assert (=> bm!287591 (= call!287596 (validRegex!5351 (ite c!698607 (reg!12158 (regex!6924 (rule!9998 token!484))) (ite c!698608 (regOne!24171 (regex!6924 (rule!9998 token!484))) (regOne!24170 (regex!6924 (rule!9998 token!484)))))))))

(declare-fun b!4043687 () Bool)

(declare-fun e!2508892 () Bool)

(assert (=> b!4043687 (= e!2508894 e!2508892)))

(declare-fun res!1647035 () Bool)

(assert (=> b!4043687 (= res!1647035 (not (nullable!4151 (reg!12158 (regex!6924 (rule!9998 token!484))))))))

(assert (=> b!4043687 (=> (not res!1647035) (not e!2508892))))

(declare-fun b!4043689 () Bool)

(declare-fun e!2508893 () Bool)

(declare-fun call!287598 () Bool)

(assert (=> b!4043689 (= e!2508893 call!287598)))

(declare-fun b!4043690 () Bool)

(assert (=> b!4043690 (= e!2508892 call!287596)))

(declare-fun bm!287592 () Bool)

(assert (=> bm!287592 (= call!287597 call!287596)))

(declare-fun b!4043691 () Bool)

(declare-fun e!2508895 () Bool)

(assert (=> b!4043691 (= e!2508895 e!2508893)))

(declare-fun res!1647034 () Bool)

(assert (=> b!4043691 (=> (not res!1647034) (not e!2508893))))

(assert (=> b!4043691 (= res!1647034 call!287597)))

(declare-fun b!4043692 () Bool)

(declare-fun res!1647036 () Bool)

(assert (=> b!4043692 (=> res!1647036 e!2508895)))

(assert (=> b!4043692 (= res!1647036 (not ((_ is Concat!18984) (regex!6924 (rule!9998 token!484)))))))

(assert (=> b!4043692 (= e!2508897 e!2508895)))

(declare-fun d!1199923 () Bool)

(declare-fun res!1647037 () Bool)

(declare-fun e!2508891 () Bool)

(assert (=> d!1199923 (=> res!1647037 e!2508891)))

(assert (=> d!1199923 (= res!1647037 ((_ is ElementMatch!11829) (regex!6924 (rule!9998 token!484))))))

(assert (=> d!1199923 (= (validRegex!5351 (regex!6924 (rule!9998 token!484))) e!2508891)))

(declare-fun b!4043688 () Bool)

(assert (=> b!4043688 (= e!2508896 call!287598)))

(declare-fun b!4043693 () Bool)

(assert (=> b!4043693 (= e!2508891 e!2508894)))

(assert (=> b!4043693 (= c!698607 ((_ is Star!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun bm!287593 () Bool)

(assert (=> bm!287593 (= call!287598 (validRegex!5351 (ite c!698608 (regTwo!24171 (regex!6924 (rule!9998 token!484))) (regTwo!24170 (regex!6924 (rule!9998 token!484))))))))

(assert (= (and d!1199923 (not res!1647037)) b!4043693))

(assert (= (and b!4043693 c!698607) b!4043687))

(assert (= (and b!4043693 (not c!698607)) b!4043685))

(assert (= (and b!4043687 res!1647035) b!4043690))

(assert (= (and b!4043685 c!698608) b!4043686))

(assert (= (and b!4043685 (not c!698608)) b!4043692))

(assert (= (and b!4043686 res!1647038) b!4043688))

(assert (= (and b!4043692 (not res!1647036)) b!4043691))

(assert (= (and b!4043691 res!1647034) b!4043689))

(assert (= (or b!4043688 b!4043689) bm!287593))

(assert (= (or b!4043686 b!4043691) bm!287592))

(assert (= (or b!4043690 bm!287592) bm!287591))

(declare-fun m!4641069 () Bool)

(assert (=> bm!287591 m!4641069))

(declare-fun m!4641071 () Bool)

(assert (=> b!4043687 m!4641071))

(declare-fun m!4641073 () Bool)

(assert (=> bm!287593 m!4641073))

(assert (=> d!1199553 d!1199923))

(declare-fun d!1199941 () Bool)

(assert (=> d!1199941 true))

(declare-fun order!22665 () Int)

(declare-fun lambda!127434 () Int)

(declare-fun order!22663 () Int)

(declare-fun dynLambda!18375 (Int Int) Int)

(declare-fun dynLambda!18376 (Int Int) Int)

(assert (=> d!1199941 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (h!48671 rules!2999)))) (dynLambda!18376 order!22665 lambda!127434))))

(declare-fun Forall2!1093 (Int) Bool)

(assert (=> d!1199941 (= (equivClasses!2858 (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (h!48671 rules!2999)))) (Forall2!1093 lambda!127434))))

(declare-fun bs!591085 () Bool)

(assert (= bs!591085 d!1199941))

(declare-fun m!4641081 () Bool)

(assert (=> bs!591085 m!4641081))

(assert (=> b!4042719 d!1199941))

(assert (=> b!4043123 d!1199381))

(assert (=> b!4043123 d!1199379))

(declare-fun d!1199945 () Bool)

(declare-fun lt!1439338 () Int)

(assert (=> d!1199945 (>= lt!1439338 0)))

(declare-fun e!2508913 () Int)

(assert (=> d!1199945 (= lt!1439338 e!2508913)))

(declare-fun c!698612 () Bool)

(assert (=> d!1199945 (= c!698612 ((_ is Nil!43249) (t!335212 prefix!494)))))

(assert (=> d!1199945 (= (size!32333 (t!335212 prefix!494)) lt!1439338)))

(declare-fun b!4043720 () Bool)

(assert (=> b!4043720 (= e!2508913 0)))

(declare-fun b!4043721 () Bool)

(assert (=> b!4043721 (= e!2508913 (+ 1 (size!32333 (t!335212 (t!335212 prefix!494)))))))

(assert (= (and d!1199945 c!698612) b!4043720))

(assert (= (and d!1199945 (not c!698612)) b!4043721))

(declare-fun m!4641091 () Bool)

(assert (=> b!4043721 m!4641091))

(assert (=> b!4042689 d!1199945))

(assert (=> b!4043171 d!1199869))

(declare-fun d!1199947 () Bool)

(assert (=> d!1199947 (= (head!8555 (++!11326 lt!1438792 newSuffixResult!27)) (h!48669 (++!11326 lt!1438792 newSuffixResult!27)))))

(assert (=> b!4043171 d!1199947))

(declare-fun d!1199949 () Bool)

(declare-fun c!698613 () Bool)

(assert (=> d!1199949 (= c!698613 ((_ is Nil!43249) lt!1439007))))

(declare-fun e!2508914 () (InoxSet C!23844))

(assert (=> d!1199949 (= (content!6581 lt!1439007) e!2508914)))

(declare-fun b!4043722 () Bool)

(assert (=> b!4043722 (= e!2508914 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043723 () Bool)

(assert (=> b!4043723 (= e!2508914 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439007) true) (content!6581 (t!335212 lt!1439007))))))

(assert (= (and d!1199949 c!698613) b!4043722))

(assert (= (and d!1199949 (not c!698613)) b!4043723))

(declare-fun m!4641097 () Bool)

(assert (=> b!4043723 m!4641097))

(declare-fun m!4641099 () Bool)

(assert (=> b!4043723 m!4641099))

(assert (=> d!1199537 d!1199949))

(assert (=> d!1199537 d!1199893))

(declare-fun d!1199951 () Bool)

(declare-fun c!698614 () Bool)

(assert (=> d!1199951 (= c!698614 ((_ is Nil!43249) suffix!1299))))

(declare-fun e!2508915 () (InoxSet C!23844))

(assert (=> d!1199951 (= (content!6581 suffix!1299) e!2508915)))

(declare-fun b!4043724 () Bool)

(assert (=> b!4043724 (= e!2508915 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4043725 () Bool)

(assert (=> b!4043725 (= e!2508915 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 suffix!1299) true) (content!6581 (t!335212 suffix!1299))))))

(assert (= (and d!1199951 c!698614) b!4043724))

(assert (= (and d!1199951 (not c!698614)) b!4043725))

(declare-fun m!4641101 () Bool)

(assert (=> b!4043725 m!4641101))

(declare-fun m!4641103 () Bool)

(assert (=> b!4043725 m!4641103))

(assert (=> d!1199537 d!1199951))

(declare-fun d!1199955 () Bool)

(assert (=> d!1199955 (= (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 (_1!24301 lt!1439048))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 (_1!24301 lt!1439048))))))

(declare-fun b_lambda!118133 () Bool)

(assert (=> (not b_lambda!118133) (not d!1199955)))

(declare-fun tb!243163 () Bool)

(declare-fun t!335308 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335308) tb!243163))

(declare-fun result!294704 () Bool)

(assert (=> tb!243163 (= result!294704 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 (_1!24301 lt!1439048)))))))

(declare-fun m!4641113 () Bool)

(assert (=> tb!243163 m!4641113))

(assert (=> d!1199955 t!335308))

(declare-fun b_and!310901 () Bool)

(assert (= b_and!310865 (and (=> t!335308 result!294704) b_and!310901)))

(declare-fun t!335310 () Bool)

(declare-fun tb!243165 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335310) tb!243165))

(declare-fun result!294706 () Bool)

(assert (= result!294706 result!294704))

(assert (=> d!1199955 t!335310))

(declare-fun b_and!310903 () Bool)

(assert (= b_and!310867 (and (=> t!335310 result!294706) b_and!310903)))

(declare-fun tb!243167 () Bool)

(declare-fun t!335312 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335312) tb!243167))

(declare-fun result!294708 () Bool)

(assert (= result!294708 result!294704))

(assert (=> d!1199955 t!335312))

(declare-fun b_and!310905 () Bool)

(assert (= b_and!310869 (and (=> t!335312 result!294708) b_and!310905)))

(assert (=> d!1199955 m!4640317))

(declare-fun m!4641115 () Bool)

(assert (=> d!1199955 m!4641115))

(assert (=> b!4043163 d!1199955))

(declare-fun d!1199961 () Bool)

(declare-fun lt!1439339 () Int)

(assert (=> d!1199961 (>= lt!1439339 0)))

(declare-fun e!2508919 () Int)

(assert (=> d!1199961 (= lt!1439339 e!2508919)))

(declare-fun c!698617 () Bool)

(assert (=> d!1199961 (= c!698617 ((_ is Nil!43249) lt!1438785))))

(assert (=> d!1199961 (= (size!32333 lt!1438785) lt!1439339)))

(declare-fun b!4043730 () Bool)

(assert (=> b!4043730 (= e!2508919 0)))

(declare-fun b!4043731 () Bool)

(assert (=> b!4043731 (= e!2508919 (+ 1 (size!32333 (t!335212 lt!1438785))))))

(assert (= (and d!1199961 c!698617) b!4043730))

(assert (= (and d!1199961 (not c!698617)) b!4043731))

(declare-fun m!4641117 () Bool)

(assert (=> b!4043731 m!4641117))

(assert (=> b!4043163 d!1199961))

(declare-fun d!1199963 () Bool)

(declare-fun e!2508946 () Bool)

(assert (=> d!1199963 e!2508946))

(declare-fun res!1647070 () Bool)

(assert (=> d!1199963 (=> res!1647070 e!2508946)))

(assert (=> d!1199963 (= res!1647070 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(declare-fun lt!1439371 () Unit!62477)

(declare-fun choose!24515 (Regex!11829 List!43373) Unit!62477)

(assert (=> d!1199963 (= lt!1439371 (choose!24515 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) lt!1438785))))

(assert (=> d!1199963 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1199963 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1362 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) lt!1438785) lt!1439371)))

(declare-fun b!4043777 () Bool)

(assert (=> b!4043777 (= e!2508946 (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(assert (= (and d!1199963 (not res!1647070)) b!4043777))

(assert (=> d!1199963 m!4639471))

(assert (=> d!1199963 m!4640299))

(assert (=> d!1199963 m!4639885))

(assert (=> d!1199963 m!4639471))

(assert (=> d!1199963 m!4640307))

(assert (=> d!1199963 m!4639885))

(declare-fun m!4641187 () Bool)

(assert (=> d!1199963 m!4641187))

(assert (=> d!1199963 m!4640327))

(assert (=> b!4043777 m!4639885))

(assert (=> b!4043777 m!4639471))

(assert (=> b!4043777 m!4639885))

(assert (=> b!4043777 m!4639471))

(assert (=> b!4043777 m!4640307))

(assert (=> b!4043777 m!4640309))

(assert (=> b!4043163 d!1199963))

(declare-fun d!1199977 () Bool)

(assert (=> d!1199977 (= (seqFromList!5141 (_1!24301 lt!1439048)) (fromListB!2346 (_1!24301 lt!1439048)))))

(declare-fun bs!591086 () Bool)

(assert (= bs!591086 d!1199977))

(declare-fun m!4641189 () Bool)

(assert (=> bs!591086 m!4641189))

(assert (=> b!4043163 d!1199977))

(declare-fun bm!287604 () Bool)

(declare-fun call!287610 () List!43373)

(assert (=> bm!287604 (= call!287610 (tail!6287 lt!1438785))))

(declare-fun b!4043778 () Bool)

(declare-fun c!698636 () Bool)

(declare-fun call!287609 () Bool)

(assert (=> b!4043778 (= c!698636 call!287609)))

(declare-fun lt!1439376 () Unit!62477)

(declare-fun lt!1439388 () Unit!62477)

(assert (=> b!4043778 (= lt!1439376 lt!1439388)))

(declare-fun lt!1439387 () C!23844)

(declare-fun lt!1439395 () List!43373)

(assert (=> b!4043778 (= (++!11326 (++!11326 Nil!43249 (Cons!43249 lt!1439387 Nil!43249)) lt!1439395) lt!1438785)))

(assert (=> b!4043778 (= lt!1439388 (lemmaMoveElementToOtherListKeepsConcatEq!1256 Nil!43249 lt!1439387 lt!1439395 lt!1438785))))

(assert (=> b!4043778 (= lt!1439395 (tail!6287 lt!1438785))))

(assert (=> b!4043778 (= lt!1439387 (head!8555 lt!1438785))))

(declare-fun lt!1439374 () Unit!62477)

(declare-fun lt!1439401 () Unit!62477)

(assert (=> b!4043778 (= lt!1439374 lt!1439401)))

(assert (=> b!4043778 (isPrefix!4011 (++!11326 Nil!43249 (Cons!43249 (head!8555 (getSuffix!2428 lt!1438785 Nil!43249)) Nil!43249)) lt!1438785)))

(assert (=> b!4043778 (= lt!1439401 (lemmaAddHeadSuffixToPrefixStillPrefix!638 Nil!43249 lt!1438785))))

(declare-fun lt!1439398 () Unit!62477)

(declare-fun lt!1439384 () Unit!62477)

(assert (=> b!4043778 (= lt!1439398 lt!1439384)))

(assert (=> b!4043778 (= lt!1439384 (lemmaAddHeadSuffixToPrefixStillPrefix!638 Nil!43249 lt!1438785))))

(declare-fun lt!1439392 () List!43373)

(assert (=> b!4043778 (= lt!1439392 (++!11326 Nil!43249 (Cons!43249 (head!8555 lt!1438785) Nil!43249)))))

(declare-fun lt!1439373 () Unit!62477)

(declare-fun e!2508953 () Unit!62477)

(assert (=> b!4043778 (= lt!1439373 e!2508953)))

(declare-fun c!698633 () Bool)

(assert (=> b!4043778 (= c!698633 (= (size!32333 Nil!43249) (size!32333 lt!1438785)))))

(declare-fun lt!1439381 () Unit!62477)

(declare-fun lt!1439386 () Unit!62477)

(assert (=> b!4043778 (= lt!1439381 lt!1439386)))

(assert (=> b!4043778 (<= (size!32333 Nil!43249) (size!32333 lt!1438785))))

(assert (=> b!4043778 (= lt!1439386 (lemmaIsPrefixThenSmallerEqSize!446 Nil!43249 lt!1438785))))

(declare-fun e!2508947 () tuple2!42334)

(declare-fun e!2508952 () tuple2!42334)

(assert (=> b!4043778 (= e!2508947 e!2508952)))

(declare-fun bm!287605 () Bool)

(declare-fun call!287616 () Bool)

(assert (=> bm!287605 (= call!287616 (isPrefix!4011 lt!1438785 lt!1438785))))

(declare-fun b!4043779 () Bool)

(declare-fun c!698638 () Bool)

(assert (=> b!4043779 (= c!698638 call!287609)))

(declare-fun lt!1439382 () Unit!62477)

(declare-fun lt!1439396 () Unit!62477)

(assert (=> b!4043779 (= lt!1439382 lt!1439396)))

(assert (=> b!4043779 (= lt!1438785 Nil!43249)))

(declare-fun call!287611 () Unit!62477)

(assert (=> b!4043779 (= lt!1439396 call!287611)))

(declare-fun lt!1439377 () Unit!62477)

(declare-fun lt!1439379 () Unit!62477)

(assert (=> b!4043779 (= lt!1439377 lt!1439379)))

(assert (=> b!4043779 call!287616))

(declare-fun call!287614 () Unit!62477)

(assert (=> b!4043779 (= lt!1439379 call!287614)))

(declare-fun e!2508948 () tuple2!42334)

(assert (=> b!4043779 (= e!2508947 e!2508948)))

(declare-fun bm!287606 () Bool)

(assert (=> bm!287606 (= call!287611 (lemmaIsPrefixSameLengthThenSameList!922 lt!1438785 Nil!43249 lt!1438785))))

(declare-fun b!4043780 () Bool)

(declare-fun e!2508951 () tuple2!42334)

(assert (=> b!4043780 (= e!2508951 e!2508947)))

(declare-fun c!698634 () Bool)

(assert (=> b!4043780 (= c!698634 (= (size!32333 Nil!43249) (size!32333 lt!1438785)))))

(declare-fun b!4043781 () Bool)

(declare-fun e!2508950 () tuple2!42334)

(assert (=> b!4043781 (= e!2508950 (tuple2!42335 Nil!43249 lt!1438785))))

(declare-fun b!4043782 () Bool)

(declare-fun e!2508954 () Bool)

(declare-fun lt!1439393 () tuple2!42334)

(assert (=> b!4043782 (= e!2508954 (>= (size!32333 (_1!24301 lt!1439393)) (size!32333 Nil!43249)))))

(declare-fun d!1199979 () Bool)

(declare-fun e!2508949 () Bool)

(assert (=> d!1199979 e!2508949))

(declare-fun res!1647071 () Bool)

(assert (=> d!1199979 (=> (not res!1647071) (not e!2508949))))

(assert (=> d!1199979 (= res!1647071 (= (++!11326 (_1!24301 lt!1439393) (_2!24301 lt!1439393)) lt!1438785))))

(assert (=> d!1199979 (= lt!1439393 e!2508951)))

(declare-fun c!698635 () Bool)

(assert (=> d!1199979 (= c!698635 (lostCause!1012 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun lt!1439397 () Unit!62477)

(declare-fun Unit!62496 () Unit!62477)

(assert (=> d!1199979 (= lt!1439397 Unit!62496)))

(assert (=> d!1199979 (= (getSuffix!2428 lt!1438785 Nil!43249) lt!1438785)))

(declare-fun lt!1439372 () Unit!62477)

(declare-fun lt!1439399 () Unit!62477)

(assert (=> d!1199979 (= lt!1439372 lt!1439399)))

(declare-fun lt!1439385 () List!43373)

(assert (=> d!1199979 (= lt!1438785 lt!1439385)))

(assert (=> d!1199979 (= lt!1439399 (lemmaSamePrefixThenSameSuffix!2172 Nil!43249 lt!1438785 Nil!43249 lt!1439385 lt!1438785))))

(assert (=> d!1199979 (= lt!1439385 (getSuffix!2428 lt!1438785 Nil!43249))))

(declare-fun lt!1439380 () Unit!62477)

(declare-fun lt!1439400 () Unit!62477)

(assert (=> d!1199979 (= lt!1439380 lt!1439400)))

(assert (=> d!1199979 (isPrefix!4011 Nil!43249 (++!11326 Nil!43249 lt!1438785))))

(assert (=> d!1199979 (= lt!1439400 (lemmaConcatTwoListThenFirstIsPrefix!2846 Nil!43249 lt!1438785))))

(assert (=> d!1199979 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1199979 (= (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)) lt!1439393)))

(declare-fun bm!287607 () Bool)

(assert (=> bm!287607 (= call!287614 (lemmaIsPrefixRefl!2578 lt!1438785 lt!1438785))))

(declare-fun b!4043783 () Bool)

(declare-fun Unit!62497 () Unit!62477)

(assert (=> b!4043783 (= e!2508953 Unit!62497)))

(declare-fun lt!1439378 () Unit!62477)

(assert (=> b!4043783 (= lt!1439378 call!287614)))

(assert (=> b!4043783 call!287616))

(declare-fun lt!1439389 () Unit!62477)

(assert (=> b!4043783 (= lt!1439389 lt!1439378)))

(declare-fun lt!1439394 () Unit!62477)

(assert (=> b!4043783 (= lt!1439394 call!287611)))

(assert (=> b!4043783 (= lt!1438785 Nil!43249)))

(declare-fun lt!1439383 () Unit!62477)

(assert (=> b!4043783 (= lt!1439383 lt!1439394)))

(assert (=> b!4043783 false))

(declare-fun b!4043784 () Bool)

(assert (=> b!4043784 (= e!2508952 e!2508950)))

(declare-fun lt!1439375 () tuple2!42334)

(declare-fun call!287612 () tuple2!42334)

(assert (=> b!4043784 (= lt!1439375 call!287612)))

(declare-fun c!698637 () Bool)

(assert (=> b!4043784 (= c!698637 (isEmpty!25817 (_1!24301 lt!1439375)))))

(declare-fun bm!287608 () Bool)

(declare-fun call!287613 () Regex!11829)

(declare-fun call!287615 () C!23844)

(assert (=> bm!287608 (= call!287613 (derivativeStep!3557 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) call!287615))))

(declare-fun b!4043785 () Bool)

(assert (=> b!4043785 (= e!2508948 (tuple2!42335 Nil!43249 Nil!43249))))

(declare-fun b!4043786 () Bool)

(assert (=> b!4043786 (= e!2508948 (tuple2!42335 Nil!43249 lt!1438785))))

(declare-fun b!4043787 () Bool)

(declare-fun Unit!62498 () Unit!62477)

(assert (=> b!4043787 (= e!2508953 Unit!62498)))

(declare-fun bm!287609 () Bool)

(assert (=> bm!287609 (= call!287615 (head!8555 lt!1438785))))

(declare-fun b!4043788 () Bool)

(assert (=> b!4043788 (= e!2508950 lt!1439375)))

(declare-fun b!4043789 () Bool)

(assert (=> b!4043789 (= e!2508949 e!2508954)))

(declare-fun res!1647072 () Bool)

(assert (=> b!4043789 (=> res!1647072 e!2508954)))

(assert (=> b!4043789 (= res!1647072 (isEmpty!25817 (_1!24301 lt!1439393)))))

(declare-fun b!4043790 () Bool)

(assert (=> b!4043790 (= e!2508952 call!287612)))

(declare-fun b!4043791 () Bool)

(assert (=> b!4043791 (= e!2508951 (tuple2!42335 Nil!43249 lt!1438785))))

(declare-fun bm!287610 () Bool)

(assert (=> bm!287610 (= call!287612 (findLongestMatchInner!1389 call!287613 lt!1439392 (+ (size!32333 Nil!43249) 1) call!287610 lt!1438785 (size!32333 lt!1438785)))))

(declare-fun bm!287611 () Bool)

(assert (=> bm!287611 (= call!287609 (nullable!4151 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(assert (= (and d!1199979 c!698635) b!4043791))

(assert (= (and d!1199979 (not c!698635)) b!4043780))

(assert (= (and b!4043780 c!698634) b!4043779))

(assert (= (and b!4043780 (not c!698634)) b!4043778))

(assert (= (and b!4043779 c!698638) b!4043785))

(assert (= (and b!4043779 (not c!698638)) b!4043786))

(assert (= (and b!4043778 c!698633) b!4043783))

(assert (= (and b!4043778 (not c!698633)) b!4043787))

(assert (= (and b!4043778 c!698636) b!4043784))

(assert (= (and b!4043778 (not c!698636)) b!4043790))

(assert (= (and b!4043784 c!698637) b!4043781))

(assert (= (and b!4043784 (not c!698637)) b!4043788))

(assert (= (or b!4043784 b!4043790) bm!287609))

(assert (= (or b!4043784 b!4043790) bm!287604))

(assert (= (or b!4043784 b!4043790) bm!287608))

(assert (= (or b!4043784 b!4043790) bm!287610))

(assert (= (or b!4043779 b!4043783) bm!287605))

(assert (= (or b!4043779 b!4043778) bm!287611))

(assert (= (or b!4043779 b!4043783) bm!287606))

(assert (= (or b!4043779 b!4043783) bm!287607))

(assert (= (and d!1199979 res!1647071) b!4043789))

(assert (= (and b!4043789 (not res!1647072)) b!4043782))

(assert (=> bm!287605 m!4639495))

(assert (=> bm!287607 m!4639497))

(assert (=> bm!287604 m!4639997))

(declare-fun m!4641199 () Bool)

(assert (=> b!4043789 m!4641199))

(declare-fun m!4641205 () Bool)

(assert (=> b!4043778 m!4641205))

(declare-fun m!4641207 () Bool)

(assert (=> b!4043778 m!4641207))

(declare-fun m!4641209 () Bool)

(assert (=> b!4043778 m!4641209))

(declare-fun m!4641211 () Bool)

(assert (=> b!4043778 m!4641211))

(assert (=> b!4043778 m!4641209))

(assert (=> b!4043778 m!4639885))

(declare-fun m!4641213 () Bool)

(assert (=> b!4043778 m!4641213))

(declare-fun m!4641215 () Bool)

(assert (=> b!4043778 m!4641215))

(assert (=> b!4043778 m!4639471))

(declare-fun m!4641217 () Bool)

(assert (=> b!4043778 m!4641217))

(declare-fun m!4641219 () Bool)

(assert (=> b!4043778 m!4641219))

(assert (=> b!4043778 m!4641217))

(assert (=> b!4043778 m!4641205))

(declare-fun m!4641221 () Bool)

(assert (=> b!4043778 m!4641221))

(declare-fun m!4641223 () Bool)

(assert (=> b!4043778 m!4641223))

(assert (=> b!4043778 m!4639997))

(assert (=> b!4043778 m!4639993))

(assert (=> bm!287609 m!4639993))

(assert (=> bm!287611 m!4640301))

(declare-fun m!4641225 () Bool)

(assert (=> b!4043784 m!4641225))

(declare-fun m!4641227 () Bool)

(assert (=> bm!287608 m!4641227))

(declare-fun m!4641229 () Bool)

(assert (=> bm!287606 m!4641229))

(assert (=> bm!287610 m!4639471))

(declare-fun m!4641231 () Bool)

(assert (=> bm!287610 m!4641231))

(declare-fun m!4641235 () Bool)

(assert (=> d!1199979 m!4641235))

(declare-fun m!4641237 () Bool)

(assert (=> d!1199979 m!4641237))

(declare-fun m!4641239 () Bool)

(assert (=> d!1199979 m!4641239))

(assert (=> d!1199979 m!4640299))

(declare-fun m!4641241 () Bool)

(assert (=> d!1199979 m!4641241))

(assert (=> d!1199979 m!4641235))

(assert (=> d!1199979 m!4641217))

(declare-fun m!4641243 () Bool)

(assert (=> d!1199979 m!4641243))

(declare-fun m!4641245 () Bool)

(assert (=> d!1199979 m!4641245))

(declare-fun m!4641247 () Bool)

(assert (=> b!4043782 m!4641247))

(assert (=> b!4043782 m!4639885))

(assert (=> b!4043163 d!1199979))

(assert (=> b!4043163 d!1199695))

(declare-fun b!4043829 () Bool)

(declare-fun e!2508976 () Bool)

(assert (=> b!4043829 (= e!2508976 true)))

(declare-fun d!1199993 () Bool)

(assert (=> d!1199993 e!2508976))

(assert (= d!1199993 b!4043829))

(declare-fun lambda!127441 () Int)

(declare-fun order!22667 () Int)

(declare-fun dynLambda!18377 (Int Int) Int)

(assert (=> b!4043829 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (dynLambda!18377 order!22667 lambda!127441))))

(declare-fun order!22669 () Int)

(declare-fun dynLambda!18378 (Int Int) Int)

(assert (=> b!4043829 (< (dynLambda!18378 order!22669 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (dynLambda!18377 order!22667 lambda!127441))))

(assert (=> d!1199993 (= (list!16106 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 (_1!24301 lt!1439048))))) (list!16106 (seqFromList!5141 (_1!24301 lt!1439048))))))

(declare-fun lt!1439409 () Unit!62477)

(declare-fun ForallOf!826 (Int BalanceConc!25864) Unit!62477)

(assert (=> d!1199993 (= lt!1439409 (ForallOf!826 lambda!127441 (seqFromList!5141 (_1!24301 lt!1439048))))))

(assert (=> d!1199993 (= (lemmaSemiInverse!1909 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 (_1!24301 lt!1439048))) lt!1439409)))

(declare-fun b_lambda!118137 () Bool)

(assert (=> (not b_lambda!118137) (not d!1199993)))

(declare-fun t!335320 () Bool)

(declare-fun tb!243175 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335320) tb!243175))

(declare-fun e!2508978 () Bool)

(declare-fun b!4043832 () Bool)

(declare-fun tp!1227230 () Bool)

(assert (=> b!4043832 (= e!2508978 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 (_1!24301 lt!1439048)))))) tp!1227230))))

(declare-fun result!294716 () Bool)

(assert (=> tb!243175 (= result!294716 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 (_1!24301 lt!1439048))))) e!2508978))))

(assert (= tb!243175 b!4043832))

(declare-fun m!4641295 () Bool)

(assert (=> b!4043832 m!4641295))

(declare-fun m!4641297 () Bool)

(assert (=> tb!243175 m!4641297))

(assert (=> d!1199993 t!335320))

(declare-fun b_and!310913 () Bool)

(assert (= b_and!310895 (and (=> t!335320 result!294716) b_and!310913)))

(declare-fun tb!243177 () Bool)

(declare-fun t!335322 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335322) tb!243177))

(declare-fun result!294718 () Bool)

(assert (= result!294718 result!294716))

(assert (=> d!1199993 t!335322))

(declare-fun b_and!310915 () Bool)

(assert (= b_and!310897 (and (=> t!335322 result!294718) b_and!310915)))

(declare-fun t!335324 () Bool)

(declare-fun tb!243179 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335324) tb!243179))

(declare-fun result!294720 () Bool)

(assert (= result!294720 result!294716))

(assert (=> d!1199993 t!335324))

(declare-fun b_and!310917 () Bool)

(assert (= b_and!310899 (and (=> t!335324 result!294720) b_and!310917)))

(declare-fun b_lambda!118139 () Bool)

(assert (=> (not b_lambda!118139) (not d!1199993)))

(assert (=> d!1199993 t!335308))

(declare-fun b_and!310919 () Bool)

(assert (= b_and!310901 (and (=> t!335308 result!294704) b_and!310919)))

(assert (=> d!1199993 t!335310))

(declare-fun b_and!310921 () Bool)

(assert (= b_and!310903 (and (=> t!335310 result!294706) b_and!310921)))

(assert (=> d!1199993 t!335312))

(declare-fun b_and!310923 () Bool)

(assert (= b_and!310905 (and (=> t!335312 result!294708) b_and!310923)))

(assert (=> d!1199993 m!4640317))

(assert (=> d!1199993 m!4641115))

(assert (=> d!1199993 m!4640317))

(declare-fun m!4641301 () Bool)

(assert (=> d!1199993 m!4641301))

(declare-fun m!4641303 () Bool)

(assert (=> d!1199993 m!4641303))

(declare-fun m!4641305 () Bool)

(assert (=> d!1199993 m!4641305))

(assert (=> d!1199993 m!4640317))

(declare-fun m!4641307 () Bool)

(assert (=> d!1199993 m!4641307))

(assert (=> d!1199993 m!4641115))

(assert (=> d!1199993 m!4641303))

(assert (=> b!4043163 d!1199993))

(declare-fun d!1200027 () Bool)

(declare-fun lt!1439416 () Int)

(assert (=> d!1200027 (= lt!1439416 (size!32333 (list!16106 (seqFromList!5141 (_1!24301 lt!1439048)))))))

(declare-fun size!32337 (Conc!13135) Int)

(assert (=> d!1200027 (= lt!1439416 (size!32337 (c!698370 (seqFromList!5141 (_1!24301 lt!1439048)))))))

(assert (=> d!1200027 (= (size!32336 (seqFromList!5141 (_1!24301 lt!1439048))) lt!1439416)))

(declare-fun bs!591093 () Bool)

(assert (= bs!591093 d!1200027))

(assert (=> bs!591093 m!4640317))

(assert (=> bs!591093 m!4641301))

(assert (=> bs!591093 m!4641301))

(declare-fun m!4641309 () Bool)

(assert (=> bs!591093 m!4641309))

(declare-fun m!4641311 () Bool)

(assert (=> bs!591093 m!4641311))

(assert (=> b!4043163 d!1200027))

(declare-fun d!1200029 () Bool)

(assert (=> d!1200029 (= (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))) ((_ is Nil!43249) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(assert (=> b!4043163 d!1200029))

(declare-fun b!4043835 () Bool)

(declare-fun res!1647092 () Bool)

(declare-fun e!2508986 () Bool)

(assert (=> b!4043835 (=> res!1647092 e!2508986)))

(assert (=> b!4043835 (= res!1647092 (not (isEmpty!25817 (tail!6287 (tail!6287 lt!1438798)))))))

(declare-fun d!1200031 () Bool)

(declare-fun e!2508983 () Bool)

(assert (=> d!1200031 e!2508983))

(declare-fun c!698652 () Bool)

(assert (=> d!1200031 (= c!698652 ((_ is EmptyExpr!11829) (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798))))))

(declare-fun lt!1439417 () Bool)

(declare-fun e!2508982 () Bool)

(assert (=> d!1200031 (= lt!1439417 e!2508982)))

(declare-fun c!698651 () Bool)

(assert (=> d!1200031 (= c!698651 (isEmpty!25817 (tail!6287 lt!1438798)))))

(assert (=> d!1200031 (validRegex!5351 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798)))))

(assert (=> d!1200031 (= (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798)) (tail!6287 lt!1438798)) lt!1439417)))

(declare-fun b!4043836 () Bool)

(assert (=> b!4043836 (= e!2508986 (not (= (head!8555 (tail!6287 lt!1438798)) (c!698371 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798))))))))

(declare-fun b!4043837 () Bool)

(declare-fun res!1647093 () Bool)

(declare-fun e!2508985 () Bool)

(assert (=> b!4043837 (=> res!1647093 e!2508985)))

(assert (=> b!4043837 (= res!1647093 (not ((_ is ElementMatch!11829) (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798)))))))

(declare-fun e!2508984 () Bool)

(assert (=> b!4043837 (= e!2508984 e!2508985)))

(declare-fun b!4043838 () Bool)

(assert (=> b!4043838 (= e!2508982 (nullable!4151 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798))))))

(declare-fun b!4043839 () Bool)

(declare-fun call!287618 () Bool)

(assert (=> b!4043839 (= e!2508983 (= lt!1439417 call!287618))))

(declare-fun b!4043840 () Bool)

(declare-fun e!2508980 () Bool)

(assert (=> b!4043840 (= e!2508980 (= (head!8555 (tail!6287 lt!1438798)) (c!698371 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798)))))))

(declare-fun b!4043841 () Bool)

(assert (=> b!4043841 (= e!2508983 e!2508984)))

(declare-fun c!698650 () Bool)

(assert (=> b!4043841 (= c!698650 ((_ is EmptyLang!11829) (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798))))))

(declare-fun b!4043842 () Bool)

(assert (=> b!4043842 (= e!2508982 (matchR!5782 (derivativeStep!3557 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798)) (head!8555 (tail!6287 lt!1438798))) (tail!6287 (tail!6287 lt!1438798))))))

(declare-fun b!4043843 () Bool)

(assert (=> b!4043843 (= e!2508984 (not lt!1439417))))

(declare-fun b!4043844 () Bool)

(declare-fun e!2508981 () Bool)

(assert (=> b!4043844 (= e!2508985 e!2508981)))

(declare-fun res!1647089 () Bool)

(assert (=> b!4043844 (=> (not res!1647089) (not e!2508981))))

(assert (=> b!4043844 (= res!1647089 (not lt!1439417))))

(declare-fun b!4043845 () Bool)

(assert (=> b!4043845 (= e!2508981 e!2508986)))

(declare-fun res!1647090 () Bool)

(assert (=> b!4043845 (=> res!1647090 e!2508986)))

(assert (=> b!4043845 (= res!1647090 call!287618)))

(declare-fun b!4043846 () Bool)

(declare-fun res!1647094 () Bool)

(assert (=> b!4043846 (=> (not res!1647094) (not e!2508980))))

(assert (=> b!4043846 (= res!1647094 (not call!287618))))

(declare-fun b!4043847 () Bool)

(declare-fun res!1647095 () Bool)

(assert (=> b!4043847 (=> res!1647095 e!2508985)))

(assert (=> b!4043847 (= res!1647095 e!2508980)))

(declare-fun res!1647091 () Bool)

(assert (=> b!4043847 (=> (not res!1647091) (not e!2508980))))

(assert (=> b!4043847 (= res!1647091 lt!1439417)))

(declare-fun b!4043848 () Bool)

(declare-fun res!1647096 () Bool)

(assert (=> b!4043848 (=> (not res!1647096) (not e!2508980))))

(assert (=> b!4043848 (= res!1647096 (isEmpty!25817 (tail!6287 (tail!6287 lt!1438798))))))

(declare-fun bm!287613 () Bool)

(assert (=> bm!287613 (= call!287618 (isEmpty!25817 (tail!6287 lt!1438798)))))

(assert (= (and d!1200031 c!698651) b!4043838))

(assert (= (and d!1200031 (not c!698651)) b!4043842))

(assert (= (and d!1200031 c!698652) b!4043839))

(assert (= (and d!1200031 (not c!698652)) b!4043841))

(assert (= (and b!4043841 c!698650) b!4043843))

(assert (= (and b!4043841 (not c!698650)) b!4043837))

(assert (= (and b!4043837 (not res!1647093)) b!4043847))

(assert (= (and b!4043847 res!1647091) b!4043846))

(assert (= (and b!4043846 res!1647094) b!4043848))

(assert (= (and b!4043848 res!1647096) b!4043840))

(assert (= (and b!4043847 (not res!1647095)) b!4043844))

(assert (= (and b!4043844 res!1647089) b!4043845))

(assert (= (and b!4043845 (not res!1647090)) b!4043835))

(assert (= (and b!4043835 (not res!1647092)) b!4043836))

(assert (= (or b!4043839 b!4043845 b!4043846) bm!287613))

(assert (=> b!4043848 m!4639565))

(declare-fun m!4641313 () Bool)

(assert (=> b!4043848 m!4641313))

(assert (=> b!4043848 m!4641313))

(declare-fun m!4641315 () Bool)

(assert (=> b!4043848 m!4641315))

(assert (=> b!4043836 m!4639565))

(declare-fun m!4641317 () Bool)

(assert (=> b!4043836 m!4641317))

(assert (=> b!4043840 m!4639565))

(assert (=> b!4043840 m!4641317))

(assert (=> b!4043838 m!4640145))

(declare-fun m!4641319 () Bool)

(assert (=> b!4043838 m!4641319))

(assert (=> b!4043842 m!4639565))

(assert (=> b!4043842 m!4641317))

(assert (=> b!4043842 m!4640145))

(assert (=> b!4043842 m!4641317))

(declare-fun m!4641321 () Bool)

(assert (=> b!4043842 m!4641321))

(assert (=> b!4043842 m!4639565))

(assert (=> b!4043842 m!4641313))

(assert (=> b!4043842 m!4641321))

(assert (=> b!4043842 m!4641313))

(declare-fun m!4641323 () Bool)

(assert (=> b!4043842 m!4641323))

(assert (=> b!4043835 m!4639565))

(assert (=> b!4043835 m!4641313))

(assert (=> b!4043835 m!4641313))

(assert (=> b!4043835 m!4641315))

(assert (=> bm!287613 m!4639565))

(assert (=> bm!287613 m!4640143))

(assert (=> d!1200031 m!4639565))

(assert (=> d!1200031 m!4640143))

(assert (=> d!1200031 m!4640145))

(declare-fun m!4641325 () Bool)

(assert (=> d!1200031 m!4641325))

(assert (=> b!4043086 d!1200031))

(declare-fun call!287628 () Regex!11829)

(declare-fun c!698663 () Bool)

(declare-fun bm!287622 () Bool)

(declare-fun c!698665 () Bool)

(assert (=> bm!287622 (= call!287628 (derivativeStep!3557 (ite c!698663 (regOne!24171 (regex!6924 (rule!9998 token!484))) (ite c!698665 (reg!12158 (regex!6924 (rule!9998 token!484))) (regOne!24170 (regex!6924 (rule!9998 token!484))))) (head!8555 lt!1438798)))))

(declare-fun b!4043869 () Bool)

(declare-fun e!2508997 () Regex!11829)

(assert (=> b!4043869 (= e!2508997 (ite (= (head!8555 lt!1438798) (c!698371 (regex!6924 (rule!9998 token!484)))) EmptyExpr!11829 EmptyLang!11829))))

(declare-fun b!4043870 () Bool)

(declare-fun e!2509001 () Regex!11829)

(assert (=> b!4043870 (= e!2509001 EmptyLang!11829)))

(declare-fun b!4043871 () Bool)

(declare-fun c!698664 () Bool)

(assert (=> b!4043871 (= c!698664 (nullable!4151 (regOne!24170 (regex!6924 (rule!9998 token!484)))))))

(declare-fun e!2509000 () Regex!11829)

(declare-fun e!2508998 () Regex!11829)

(assert (=> b!4043871 (= e!2509000 e!2508998)))

(declare-fun b!4043872 () Bool)

(declare-fun call!287629 () Regex!11829)

(assert (=> b!4043872 (= e!2508998 (Union!11829 (Concat!18984 call!287629 (regTwo!24170 (regex!6924 (rule!9998 token!484)))) EmptyLang!11829))))

(declare-fun bm!287624 () Bool)

(declare-fun call!287627 () Regex!11829)

(assert (=> bm!287624 (= call!287627 call!287628)))

(declare-fun b!4043873 () Bool)

(assert (=> b!4043873 (= e!2509000 (Concat!18984 call!287627 (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4043874 () Bool)

(assert (=> b!4043874 (= e!2509001 e!2508997)))

(declare-fun c!698666 () Bool)

(assert (=> b!4043874 (= c!698666 ((_ is ElementMatch!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4043875 () Bool)

(declare-fun call!287630 () Regex!11829)

(assert (=> b!4043875 (= e!2508998 (Union!11829 (Concat!18984 call!287629 (regTwo!24170 (regex!6924 (rule!9998 token!484)))) call!287630))))

(declare-fun d!1200033 () Bool)

(declare-fun lt!1439447 () Regex!11829)

(assert (=> d!1200033 (validRegex!5351 lt!1439447)))

(assert (=> d!1200033 (= lt!1439447 e!2509001)))

(declare-fun c!698667 () Bool)

(assert (=> d!1200033 (= c!698667 (or ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 token!484))) ((_ is EmptyLang!11829) (regex!6924 (rule!9998 token!484)))))))

(assert (=> d!1200033 (validRegex!5351 (regex!6924 (rule!9998 token!484)))))

(assert (=> d!1200033 (= (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 lt!1438798)) lt!1439447)))

(declare-fun bm!287623 () Bool)

(assert (=> bm!287623 (= call!287630 (derivativeStep!3557 (ite c!698663 (regTwo!24171 (regex!6924 (rule!9998 token!484))) (regTwo!24170 (regex!6924 (rule!9998 token!484)))) (head!8555 lt!1438798)))))

(declare-fun b!4043876 () Bool)

(assert (=> b!4043876 (= c!698663 ((_ is Union!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun e!2508999 () Regex!11829)

(assert (=> b!4043876 (= e!2508997 e!2508999)))

(declare-fun b!4043877 () Bool)

(assert (=> b!4043877 (= e!2508999 (Union!11829 call!287628 call!287630))))

(declare-fun b!4043878 () Bool)

(assert (=> b!4043878 (= e!2508999 e!2509000)))

(assert (=> b!4043878 (= c!698665 ((_ is Star!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun bm!287625 () Bool)

(assert (=> bm!287625 (= call!287629 call!287627)))

(assert (= (and d!1200033 c!698667) b!4043870))

(assert (= (and d!1200033 (not c!698667)) b!4043874))

(assert (= (and b!4043874 c!698666) b!4043869))

(assert (= (and b!4043874 (not c!698666)) b!4043876))

(assert (= (and b!4043876 c!698663) b!4043877))

(assert (= (and b!4043876 (not c!698663)) b!4043878))

(assert (= (and b!4043878 c!698665) b!4043873))

(assert (= (and b!4043878 (not c!698665)) b!4043871))

(assert (= (and b!4043871 c!698664) b!4043875))

(assert (= (and b!4043871 (not c!698664)) b!4043872))

(assert (= (or b!4043875 b!4043872) bm!287625))

(assert (= (or b!4043873 bm!287625) bm!287624))

(assert (= (or b!4043877 bm!287624) bm!287622))

(assert (= (or b!4043877 b!4043875) bm!287623))

(assert (=> bm!287622 m!4639555))

(declare-fun m!4641351 () Bool)

(assert (=> bm!287622 m!4641351))

(declare-fun m!4641353 () Bool)

(assert (=> b!4043871 m!4641353))

(declare-fun m!4641355 () Bool)

(assert (=> d!1200033 m!4641355))

(assert (=> d!1200033 m!4640049))

(assert (=> bm!287623 m!4639555))

(declare-fun m!4641357 () Bool)

(assert (=> bm!287623 m!4641357))

(assert (=> b!4043086 d!1200033))

(declare-fun d!1200041 () Bool)

(assert (=> d!1200041 (= (head!8555 lt!1438798) (h!48669 lt!1438798))))

(assert (=> b!4043086 d!1200041))

(assert (=> b!4043086 d!1199899))

(declare-fun d!1200043 () Bool)

(assert (=> d!1200043 (= (isEmpty!25816 lt!1439047) (not ((_ is Some!9337) lt!1439047)))))

(assert (=> d!1199619 d!1200043))

(declare-fun d!1200045 () Bool)

(assert (=> d!1200045 (= (isEmpty!25817 (_1!24301 lt!1439048)) ((_ is Nil!43249) (_1!24301 lt!1439048)))))

(assert (=> d!1199619 d!1200045))

(declare-fun d!1200047 () Bool)

(declare-fun lt!1439455 () tuple2!42334)

(assert (=> d!1200047 (= (++!11326 (_1!24301 lt!1439455) (_2!24301 lt!1439455)) lt!1438785)))

(assert (=> d!1200047 (= lt!1439455 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 0 lt!1438785 lt!1438785 (sizeTr!275 lt!1438785 0)))))

(declare-fun lt!1439454 () Unit!62477)

(declare-fun lt!1439450 () Unit!62477)

(assert (=> d!1200047 (= lt!1439454 lt!1439450)))

(declare-fun lt!1439451 () List!43373)

(declare-fun lt!1439456 () Int)

(assert (=> d!1200047 (= (sizeTr!275 lt!1439451 lt!1439456) (+ (size!32333 lt!1439451) lt!1439456))))

(assert (=> d!1200047 (= lt!1439450 (lemmaSizeTrEqualsSize!274 lt!1439451 lt!1439456))))

(assert (=> d!1200047 (= lt!1439456 0)))

(assert (=> d!1200047 (= lt!1439451 Nil!43249)))

(declare-fun lt!1439452 () Unit!62477)

(declare-fun lt!1439453 () Unit!62477)

(assert (=> d!1200047 (= lt!1439452 lt!1439453)))

(declare-fun lt!1439457 () Int)

(assert (=> d!1200047 (= (sizeTr!275 lt!1438785 lt!1439457) (+ (size!32333 lt!1438785) lt!1439457))))

(assert (=> d!1200047 (= lt!1439453 (lemmaSizeTrEqualsSize!274 lt!1438785 lt!1439457))))

(assert (=> d!1200047 (= lt!1439457 0)))

(assert (=> d!1200047 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1200047 (= (findLongestMatch!1302 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) lt!1438785) lt!1439455)))

(declare-fun bs!591097 () Bool)

(assert (= bs!591097 d!1200047))

(declare-fun m!4641359 () Bool)

(assert (=> bs!591097 m!4641359))

(declare-fun m!4641361 () Bool)

(assert (=> bs!591097 m!4641361))

(declare-fun m!4641363 () Bool)

(assert (=> bs!591097 m!4641363))

(declare-fun m!4641365 () Bool)

(assert (=> bs!591097 m!4641365))

(assert (=> bs!591097 m!4640299))

(declare-fun m!4641367 () Bool)

(assert (=> bs!591097 m!4641367))

(assert (=> bs!591097 m!4641363))

(declare-fun m!4641369 () Bool)

(assert (=> bs!591097 m!4641369))

(declare-fun m!4641371 () Bool)

(assert (=> bs!591097 m!4641371))

(assert (=> bs!591097 m!4639471))

(declare-fun m!4641373 () Bool)

(assert (=> bs!591097 m!4641373))

(assert (=> d!1199619 d!1200047))

(assert (=> d!1199619 d!1199617))

(declare-fun b!4043892 () Bool)

(declare-fun e!2509009 () List!43373)

(assert (=> b!4043892 (= e!2509009 Nil!43249)))

(declare-fun b!4043895 () Bool)

(declare-fun e!2509010 () List!43373)

(assert (=> b!4043895 (= e!2509010 (++!11326 (list!16107 (left!32575 (c!698370 (charsOf!4740 token!484)))) (list!16107 (right!32905 (c!698370 (charsOf!4740 token!484))))))))

(declare-fun b!4043894 () Bool)

(declare-fun list!16109 (IArray!26275) List!43373)

(assert (=> b!4043894 (= e!2509010 (list!16109 (xs!16441 (c!698370 (charsOf!4740 token!484)))))))

(declare-fun b!4043893 () Bool)

(assert (=> b!4043893 (= e!2509009 e!2509010)))

(declare-fun c!698674 () Bool)

(assert (=> b!4043893 (= c!698674 ((_ is Leaf!20304) (c!698370 (charsOf!4740 token!484))))))

(declare-fun d!1200049 () Bool)

(declare-fun c!698673 () Bool)

(assert (=> d!1200049 (= c!698673 ((_ is Empty!13135) (c!698370 (charsOf!4740 token!484))))))

(assert (=> d!1200049 (= (list!16107 (c!698370 (charsOf!4740 token!484))) e!2509009)))

(assert (= (and d!1200049 c!698673) b!4043892))

(assert (= (and d!1200049 (not c!698673)) b!4043893))

(assert (= (and b!4043893 c!698674) b!4043894))

(assert (= (and b!4043893 (not c!698674)) b!4043895))

(declare-fun m!4641375 () Bool)

(assert (=> b!4043895 m!4641375))

(declare-fun m!4641377 () Bool)

(assert (=> b!4043895 m!4641377))

(assert (=> b!4043895 m!4641375))

(assert (=> b!4043895 m!4641377))

(declare-fun m!4641379 () Bool)

(assert (=> b!4043895 m!4641379))

(declare-fun m!4641381 () Bool)

(assert (=> b!4043894 m!4641381))

(assert (=> d!1199383 d!1200049))

(declare-fun d!1200051 () Bool)

(declare-fun lt!1439459 () Int)

(assert (=> d!1200051 (>= lt!1439459 0)))

(declare-fun e!2509011 () Int)

(assert (=> d!1200051 (= lt!1439459 e!2509011)))

(declare-fun c!698675 () Bool)

(assert (=> d!1200051 (= c!698675 ((_ is Nil!43249) lt!1439056))))

(assert (=> d!1200051 (= (size!32333 lt!1439056) lt!1439459)))

(declare-fun b!4043896 () Bool)

(assert (=> b!4043896 (= e!2509011 0)))

(declare-fun b!4043897 () Bool)

(assert (=> b!4043897 (= e!2509011 (+ 1 (size!32333 (t!335212 lt!1439056))))))

(assert (= (and d!1200051 c!698675) b!4043896))

(assert (= (and d!1200051 (not c!698675)) b!4043897))

(declare-fun m!4641383 () Bool)

(assert (=> b!4043897 m!4641383))

(assert (=> b!4043182 d!1200051))

(assert (=> b!4043182 d!1199549))

(declare-fun d!1200053 () Bool)

(declare-fun lt!1439460 () Int)

(assert (=> d!1200053 (>= lt!1439460 0)))

(declare-fun e!2509013 () Int)

(assert (=> d!1200053 (= lt!1439460 e!2509013)))

(declare-fun c!698676 () Bool)

(assert (=> d!1200053 (= c!698676 ((_ is Nil!43249) lt!1438799))))

(assert (=> d!1200053 (= (size!32333 lt!1438799) lt!1439460)))

(declare-fun b!4043899 () Bool)

(assert (=> b!4043899 (= e!2509013 0)))

(declare-fun b!4043900 () Bool)

(assert (=> b!4043900 (= e!2509013 (+ 1 (size!32333 (t!335212 lt!1438799))))))

(assert (= (and d!1200053 c!698676) b!4043899))

(assert (= (and d!1200053 (not c!698676)) b!4043900))

(declare-fun m!4641385 () Bool)

(assert (=> b!4043900 m!4641385))

(assert (=> b!4043182 d!1200053))

(assert (=> b!4042648 d!1199719))

(declare-fun d!1200055 () Bool)

(assert (=> d!1200055 (= (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867))))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867))))))))

(declare-fun b_lambda!118143 () Bool)

(assert (=> (not b_lambda!118143) (not d!1200055)))

(declare-fun t!335333 () Bool)

(declare-fun tb!243187 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335333) tb!243187))

(declare-fun result!294728 () Bool)

(assert (=> tb!243187 (= result!294728 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867)))))))))

(declare-fun m!4641393 () Bool)

(assert (=> tb!243187 m!4641393))

(assert (=> d!1200055 t!335333))

(declare-fun b_and!310933 () Bool)

(assert (= b_and!310919 (and (=> t!335333 result!294728) b_and!310933)))

(declare-fun tb!243193 () Bool)

(declare-fun t!335339 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335339) tb!243193))

(declare-fun result!294734 () Bool)

(assert (= result!294734 result!294728))

(assert (=> d!1200055 t!335339))

(declare-fun b_and!310937 () Bool)

(assert (= b_and!310921 (and (=> t!335339 result!294734) b_and!310937)))

(declare-fun tb!243197 () Bool)

(declare-fun t!335343 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335343) tb!243197))

(declare-fun result!294738 () Bool)

(assert (= result!294738 result!294728))

(assert (=> d!1200055 t!335343))

(declare-fun b_and!310941 () Bool)

(assert (= b_and!310923 (and (=> t!335343 result!294738) b_and!310941)))

(assert (=> d!1200055 m!4639465))

(declare-fun m!4641395 () Bool)

(assert (=> d!1200055 m!4641395))

(assert (=> b!4042648 d!1200055))

(declare-fun d!1200057 () Bool)

(assert (=> d!1200057 (= (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867)))) (fromListB!2346 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438867)))))))

(declare-fun bs!591099 () Bool)

(assert (= bs!591099 d!1200057))

(declare-fun m!4641405 () Bool)

(assert (=> bs!591099 m!4641405))

(assert (=> b!4042648 d!1200057))

(assert (=> b!4043179 d!1199337))

(assert (=> b!4042574 d!1199733))

(declare-fun d!1200059 () Bool)

(declare-fun e!2509018 () Bool)

(assert (=> d!1200059 e!2509018))

(declare-fun res!1647099 () Bool)

(assert (=> d!1200059 (=> (not res!1647099) (not e!2509018))))

(declare-fun lt!1439463 () BalanceConc!25864)

(assert (=> d!1200059 (= res!1647099 (= (list!16106 lt!1439463) lt!1438798))))

(declare-fun fromList!863 (List!43373) Conc!13135)

(assert (=> d!1200059 (= lt!1439463 (BalanceConc!25865 (fromList!863 lt!1438798)))))

(assert (=> d!1200059 (= (fromListB!2346 lt!1438798) lt!1439463)))

(declare-fun b!4043903 () Bool)

(declare-fun isBalanced!3683 (Conc!13135) Bool)

(assert (=> b!4043903 (= e!2509018 (isBalanced!3683 (fromList!863 lt!1438798)))))

(assert (= (and d!1200059 res!1647099) b!4043903))

(declare-fun m!4641407 () Bool)

(assert (=> d!1200059 m!4641407))

(declare-fun m!4641409 () Bool)

(assert (=> d!1200059 m!4641409))

(assert (=> b!4043903 m!4641409))

(assert (=> b!4043903 m!4641409))

(declare-fun m!4641411 () Bool)

(assert (=> b!4043903 m!4641411))

(assert (=> d!1199501 d!1200059))

(declare-fun b!4043904 () Bool)

(declare-fun e!2509019 () Bool)

(declare-fun e!2509020 () Bool)

(assert (=> b!4043904 (= e!2509019 e!2509020)))

(declare-fun res!1647101 () Bool)

(assert (=> b!4043904 (=> (not res!1647101) (not e!2509020))))

(assert (=> b!4043904 (= res!1647101 (not ((_ is Nil!43249) (tail!6287 lt!1438774))))))

(declare-fun b!4043905 () Bool)

(declare-fun res!1647102 () Bool)

(assert (=> b!4043905 (=> (not res!1647102) (not e!2509020))))

(assert (=> b!4043905 (= res!1647102 (= (head!8555 (tail!6287 lt!1438798)) (head!8555 (tail!6287 lt!1438774))))))

(declare-fun d!1200065 () Bool)

(declare-fun e!2509021 () Bool)

(assert (=> d!1200065 e!2509021))

(declare-fun res!1647100 () Bool)

(assert (=> d!1200065 (=> res!1647100 e!2509021)))

(declare-fun lt!1439464 () Bool)

(assert (=> d!1200065 (= res!1647100 (not lt!1439464))))

(assert (=> d!1200065 (= lt!1439464 e!2509019)))

(declare-fun res!1647103 () Bool)

(assert (=> d!1200065 (=> res!1647103 e!2509019)))

(assert (=> d!1200065 (= res!1647103 ((_ is Nil!43249) (tail!6287 lt!1438798)))))

(assert (=> d!1200065 (= (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438774)) lt!1439464)))

(declare-fun b!4043906 () Bool)

(assert (=> b!4043906 (= e!2509020 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438798)) (tail!6287 (tail!6287 lt!1438774))))))

(declare-fun b!4043907 () Bool)

(assert (=> b!4043907 (= e!2509021 (>= (size!32333 (tail!6287 lt!1438774)) (size!32333 (tail!6287 lt!1438798))))))

(assert (= (and d!1200065 (not res!1647103)) b!4043904))

(assert (= (and b!4043904 res!1647101) b!4043905))

(assert (= (and b!4043905 res!1647102) b!4043906))

(assert (= (and d!1200065 (not res!1647100)) b!4043907))

(assert (=> b!4043905 m!4639565))

(assert (=> b!4043905 m!4641317))

(assert (=> b!4043905 m!4639963))

(declare-fun m!4641413 () Bool)

(assert (=> b!4043905 m!4641413))

(assert (=> b!4043906 m!4639565))

(assert (=> b!4043906 m!4641313))

(assert (=> b!4043906 m!4639963))

(declare-fun m!4641415 () Bool)

(assert (=> b!4043906 m!4641415))

(assert (=> b!4043906 m!4641313))

(assert (=> b!4043906 m!4641415))

(declare-fun m!4641417 () Bool)

(assert (=> b!4043906 m!4641417))

(assert (=> b!4043907 m!4639963))

(declare-fun m!4641419 () Bool)

(assert (=> b!4043907 m!4641419))

(assert (=> b!4043907 m!4639565))

(declare-fun m!4641421 () Bool)

(assert (=> b!4043907 m!4641421))

(assert (=> b!4042923 d!1200065))

(assert (=> b!4042923 d!1199899))

(declare-fun d!1200067 () Bool)

(assert (=> d!1200067 (= (tail!6287 lt!1438774) (t!335212 lt!1438774))))

(assert (=> b!4042923 d!1200067))

(assert (=> d!1199585 d!1199583))

(declare-fun d!1200069 () Bool)

(assert (=> d!1200069 (isPrefix!4011 lt!1438798 prefix!494)))

(assert (=> d!1200069 true))

(declare-fun _$69!295 () Unit!62477)

(assert (=> d!1200069 (= (choose!24512 prefix!494 lt!1438798 lt!1438775) _$69!295)))

(declare-fun bs!591100 () Bool)

(assert (= bs!591100 d!1200069))

(assert (=> bs!591100 m!4639279))

(assert (=> d!1199585 d!1200069))

(assert (=> d!1199585 d!1199561))

(assert (=> d!1199545 d!1199579))

(declare-fun e!2509022 () Bool)

(declare-fun lt!1439465 () List!43373)

(declare-fun b!4043911 () Bool)

(assert (=> b!4043911 (= e!2509022 (or (not (= (++!11326 lt!1438769 suffix!1299) Nil!43249)) (= lt!1439465 lt!1438798)))))

(declare-fun b!4043909 () Bool)

(declare-fun e!2509023 () List!43373)

(assert (=> b!4043909 (= e!2509023 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) (++!11326 lt!1438769 suffix!1299))))))

(declare-fun b!4043908 () Bool)

(assert (=> b!4043908 (= e!2509023 (++!11326 lt!1438769 suffix!1299))))

(declare-fun b!4043910 () Bool)

(declare-fun res!1647105 () Bool)

(assert (=> b!4043910 (=> (not res!1647105) (not e!2509022))))

(assert (=> b!4043910 (= res!1647105 (= (size!32333 lt!1439465) (+ (size!32333 lt!1438798) (size!32333 (++!11326 lt!1438769 suffix!1299)))))))

(declare-fun d!1200071 () Bool)

(assert (=> d!1200071 e!2509022))

(declare-fun res!1647104 () Bool)

(assert (=> d!1200071 (=> (not res!1647104) (not e!2509022))))

(assert (=> d!1200071 (= res!1647104 (= (content!6581 lt!1439465) ((_ map or) (content!6581 lt!1438798) (content!6581 (++!11326 lt!1438769 suffix!1299)))))))

(assert (=> d!1200071 (= lt!1439465 e!2509023)))

(declare-fun c!698678 () Bool)

(assert (=> d!1200071 (= c!698678 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1200071 (= (++!11326 lt!1438798 (++!11326 lt!1438769 suffix!1299)) lt!1439465)))

(assert (= (and d!1200071 c!698678) b!4043908))

(assert (= (and d!1200071 (not c!698678)) b!4043909))

(assert (= (and d!1200071 res!1647104) b!4043910))

(assert (= (and b!4043910 res!1647105) b!4043911))

(assert (=> b!4043909 m!4639287))

(declare-fun m!4641423 () Bool)

(assert (=> b!4043909 m!4641423))

(declare-fun m!4641425 () Bool)

(assert (=> b!4043910 m!4641425))

(assert (=> b!4043910 m!4639203))

(assert (=> b!4043910 m!4639287))

(declare-fun m!4641427 () Bool)

(assert (=> b!4043910 m!4641427))

(declare-fun m!4641429 () Bool)

(assert (=> d!1200071 m!4641429))

(assert (=> d!1200071 m!4639353))

(assert (=> d!1200071 m!4639287))

(declare-fun m!4641431 () Bool)

(assert (=> d!1200071 m!4641431))

(assert (=> d!1199545 d!1200071))

(declare-fun b!4043915 () Bool)

(declare-fun lt!1439466 () List!43373)

(declare-fun e!2509024 () Bool)

(assert (=> b!4043915 (= e!2509024 (or (not (= suffix!1299 Nil!43249)) (= lt!1439466 (++!11326 lt!1438798 lt!1438769))))))

(declare-fun e!2509025 () List!43373)

(declare-fun b!4043913 () Bool)

(assert (=> b!4043913 (= e!2509025 (Cons!43249 (h!48669 (++!11326 lt!1438798 lt!1438769)) (++!11326 (t!335212 (++!11326 lt!1438798 lt!1438769)) suffix!1299)))))

(declare-fun b!4043912 () Bool)

(assert (=> b!4043912 (= e!2509025 suffix!1299)))

(declare-fun b!4043914 () Bool)

(declare-fun res!1647107 () Bool)

(assert (=> b!4043914 (=> (not res!1647107) (not e!2509024))))

(assert (=> b!4043914 (= res!1647107 (= (size!32333 lt!1439466) (+ (size!32333 (++!11326 lt!1438798 lt!1438769)) (size!32333 suffix!1299))))))

(declare-fun d!1200073 () Bool)

(assert (=> d!1200073 e!2509024))

(declare-fun res!1647106 () Bool)

(assert (=> d!1200073 (=> (not res!1647106) (not e!2509024))))

(assert (=> d!1200073 (= res!1647106 (= (content!6581 lt!1439466) ((_ map or) (content!6581 (++!11326 lt!1438798 lt!1438769)) (content!6581 suffix!1299))))))

(assert (=> d!1200073 (= lt!1439466 e!2509025)))

(declare-fun c!698679 () Bool)

(assert (=> d!1200073 (= c!698679 ((_ is Nil!43249) (++!11326 lt!1438798 lt!1438769)))))

(assert (=> d!1200073 (= (++!11326 (++!11326 lt!1438798 lt!1438769) suffix!1299) lt!1439466)))

(assert (= (and d!1200073 c!698679) b!4043912))

(assert (= (and d!1200073 (not c!698679)) b!4043913))

(assert (= (and d!1200073 res!1647106) b!4043914))

(assert (= (and b!4043914 res!1647107) b!4043915))

(declare-fun m!4641433 () Bool)

(assert (=> b!4043913 m!4641433))

(declare-fun m!4641435 () Bool)

(assert (=> b!4043914 m!4641435))

(assert (=> b!4043914 m!4639275))

(declare-fun m!4641437 () Bool)

(assert (=> b!4043914 m!4641437))

(assert (=> b!4043914 m!4639241))

(declare-fun m!4641439 () Bool)

(assert (=> d!1200073 m!4641439))

(assert (=> d!1200073 m!4639275))

(declare-fun m!4641441 () Bool)

(assert (=> d!1200073 m!4641441))

(assert (=> d!1200073 m!4640095))

(assert (=> d!1199545 d!1200073))

(declare-fun d!1200075 () Bool)

(assert (=> d!1200075 (= (++!11326 (++!11326 lt!1438798 lt!1438769) suffix!1299) (++!11326 lt!1438798 (++!11326 lt!1438769 suffix!1299)))))

(assert (=> d!1200075 true))

(declare-fun _$52!2320 () Unit!62477)

(assert (=> d!1200075 (= (choose!24508 lt!1438798 lt!1438769 suffix!1299) _$52!2320)))

(declare-fun bs!591101 () Bool)

(assert (= bs!591101 d!1200075))

(assert (=> bs!591101 m!4639275))

(assert (=> bs!591101 m!4639275))

(assert (=> bs!591101 m!4640131))

(assert (=> bs!591101 m!4639287))

(assert (=> bs!591101 m!4639287))

(assert (=> bs!591101 m!4640129))

(assert (=> d!1199545 d!1200075))

(assert (=> d!1199545 d!1199543))

(declare-fun b!4043921 () Bool)

(declare-fun e!2509028 () Bool)

(declare-fun lt!1439469 () List!43373)

(assert (=> b!4043921 (= e!2509028 (or (not (= (_2!24299 (get!14192 lt!1438965)) Nil!43249)) (= lt!1439469 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965)))))))))

(declare-fun b!4043919 () Bool)

(declare-fun e!2509029 () List!43373)

(assert (=> b!4043919 (= e!2509029 (Cons!43249 (h!48669 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))) (++!11326 (t!335212 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))) (_2!24299 (get!14192 lt!1438965)))))))

(declare-fun b!4043918 () Bool)

(assert (=> b!4043918 (= e!2509029 (_2!24299 (get!14192 lt!1438965)))))

(declare-fun b!4043920 () Bool)

(declare-fun res!1647111 () Bool)

(assert (=> b!4043920 (=> (not res!1647111) (not e!2509028))))

(assert (=> b!4043920 (= res!1647111 (= (size!32333 lt!1439469) (+ (size!32333 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))) (size!32333 (_2!24299 (get!14192 lt!1438965))))))))

(declare-fun d!1200077 () Bool)

(assert (=> d!1200077 e!2509028))

(declare-fun res!1647110 () Bool)

(assert (=> d!1200077 (=> (not res!1647110) (not e!2509028))))

(assert (=> d!1200077 (= res!1647110 (= (content!6581 lt!1439469) ((_ map or) (content!6581 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))) (content!6581 (_2!24299 (get!14192 lt!1438965))))))))

(assert (=> d!1200077 (= lt!1439469 e!2509029)))

(declare-fun c!698680 () Bool)

(assert (=> d!1200077 (= c!698680 ((_ is Nil!43249) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))))))

(assert (=> d!1200077 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965)))) (_2!24299 (get!14192 lt!1438965))) lt!1439469)))

(assert (= (and d!1200077 c!698680) b!4043918))

(assert (= (and d!1200077 (not c!698680)) b!4043919))

(assert (= (and d!1200077 res!1647110) b!4043920))

(assert (= (and b!4043920 res!1647111) b!4043921))

(declare-fun m!4641443 () Bool)

(assert (=> b!4043919 m!4641443))

(declare-fun m!4641445 () Bool)

(assert (=> b!4043920 m!4641445))

(assert (=> b!4043920 m!4639903))

(declare-fun m!4641447 () Bool)

(assert (=> b!4043920 m!4641447))

(assert (=> b!4043920 m!4639931))

(declare-fun m!4641449 () Bool)

(assert (=> d!1200077 m!4641449))

(assert (=> d!1200077 m!4639903))

(declare-fun m!4641451 () Bool)

(assert (=> d!1200077 m!4641451))

(declare-fun m!4641453 () Bool)

(assert (=> d!1200077 m!4641453))

(assert (=> b!4042891 d!1200077))

(declare-fun d!1200079 () Bool)

(assert (=> d!1200079 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965)))) (list!16107 (c!698370 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))))))

(declare-fun bs!591102 () Bool)

(assert (= bs!591102 d!1200079))

(declare-fun m!4641455 () Bool)

(assert (=> bs!591102 m!4641455))

(assert (=> b!4042891 d!1200079))

(declare-fun d!1200081 () Bool)

(declare-fun lt!1439470 () BalanceConc!25864)

(assert (=> d!1200081 (= (list!16106 lt!1439470) (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965))))))

(assert (=> d!1200081 (= lt!1439470 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965))))) (value!217968 (_1!24299 (get!14192 lt!1438965)))))))

(assert (=> d!1200081 (= (charsOf!4740 (_1!24299 (get!14192 lt!1438965))) lt!1439470)))

(declare-fun b_lambda!118147 () Bool)

(assert (=> (not b_lambda!118147) (not d!1200081)))

(declare-fun t!335345 () Bool)

(declare-fun tb!243199 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335345) tb!243199))

(declare-fun b!4043922 () Bool)

(declare-fun e!2509030 () Bool)

(declare-fun tp!1227232 () Bool)

(assert (=> b!4043922 (= e!2509030 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965))))) (value!217968 (_1!24299 (get!14192 lt!1438965)))))) tp!1227232))))

(declare-fun result!294740 () Bool)

(assert (=> tb!243199 (= result!294740 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965))))) (value!217968 (_1!24299 (get!14192 lt!1438965))))) e!2509030))))

(assert (= tb!243199 b!4043922))

(declare-fun m!4641457 () Bool)

(assert (=> b!4043922 m!4641457))

(declare-fun m!4641459 () Bool)

(assert (=> tb!243199 m!4641459))

(assert (=> d!1200081 t!335345))

(declare-fun b_and!310943 () Bool)

(assert (= b_and!310913 (and (=> t!335345 result!294740) b_and!310943)))

(declare-fun tb!243201 () Bool)

(declare-fun t!335347 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335347) tb!243201))

(declare-fun result!294742 () Bool)

(assert (= result!294742 result!294740))

(assert (=> d!1200081 t!335347))

(declare-fun b_and!310945 () Bool)

(assert (= b_and!310915 (and (=> t!335347 result!294742) b_and!310945)))

(declare-fun t!335349 () Bool)

(declare-fun tb!243203 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335349) tb!243203))

(declare-fun result!294744 () Bool)

(assert (= result!294744 result!294740))

(assert (=> d!1200081 t!335349))

(declare-fun b_and!310947 () Bool)

(assert (= b_and!310917 (and (=> t!335349 result!294744) b_and!310947)))

(declare-fun m!4641461 () Bool)

(assert (=> d!1200081 m!4641461))

(declare-fun m!4641463 () Bool)

(assert (=> d!1200081 m!4641463))

(assert (=> b!4042891 d!1200081))

(assert (=> b!4042891 d!1199677))

(declare-fun d!1200083 () Bool)

(declare-fun lt!1439472 () Int)

(assert (=> d!1200083 (>= lt!1439472 0)))

(declare-fun e!2509032 () Int)

(assert (=> d!1200083 (= lt!1439472 e!2509032)))

(declare-fun c!698681 () Bool)

(assert (=> d!1200083 (= c!698681 ((_ is Nil!43249) (_2!24299 (get!14192 lt!1439047))))))

(assert (=> d!1200083 (= (size!32333 (_2!24299 (get!14192 lt!1439047))) lt!1439472)))

(declare-fun b!4043924 () Bool)

(assert (=> b!4043924 (= e!2509032 0)))

(declare-fun b!4043925 () Bool)

(assert (=> b!4043925 (= e!2509032 (+ 1 (size!32333 (t!335212 (_2!24299 (get!14192 lt!1439047))))))))

(assert (= (and d!1200083 c!698681) b!4043924))

(assert (= (and d!1200083 (not c!698681)) b!4043925))

(declare-fun m!4641465 () Bool)

(assert (=> b!4043925 m!4641465))

(assert (=> b!4043167 d!1200083))

(assert (=> b!4043167 d!1199671))

(assert (=> b!4043167 d!1199961))

(declare-fun bs!591104 () Bool)

(declare-fun d!1200085 () Bool)

(assert (= bs!591104 (and d!1200085 d!1199807)))

(declare-fun lambda!127447 () Int)

(assert (=> bs!591104 (= lambda!127447 lambda!127425)))

(assert (=> d!1200085 true))

(declare-fun lt!1439476 () Bool)

(assert (=> d!1200085 (= lt!1439476 (rulesValidInductive!2526 thiss!21717 rules!2999))))

(assert (=> d!1200085 (= lt!1439476 (forall!8375 rules!2999 lambda!127447))))

(assert (=> d!1200085 (= (rulesValid!2694 thiss!21717 rules!2999) lt!1439476)))

(declare-fun bs!591105 () Bool)

(assert (= bs!591105 d!1200085))

(assert (=> bs!591105 m!4639499))

(declare-fun m!4641477 () Bool)

(assert (=> bs!591105 m!4641477))

(assert (=> d!1199597 d!1200085))

(declare-fun d!1200095 () Bool)

(declare-fun lt!1439477 () Int)

(assert (=> d!1200095 (>= lt!1439477 0)))

(declare-fun e!2509035 () Int)

(assert (=> d!1200095 (= lt!1439477 e!2509035)))

(declare-fun c!698683 () Bool)

(assert (=> d!1200095 (= c!698683 ((_ is Nil!43249) (_2!24299 (get!14192 lt!1439006))))))

(assert (=> d!1200095 (= (size!32333 (_2!24299 (get!14192 lt!1439006))) lt!1439477)))

(declare-fun b!4043930 () Bool)

(assert (=> b!4043930 (= e!2509035 0)))

(declare-fun b!4043931 () Bool)

(assert (=> b!4043931 (= e!2509035 (+ 1 (size!32333 (t!335212 (_2!24299 (get!14192 lt!1439006))))))))

(assert (= (and d!1200095 c!698683) b!4043930))

(assert (= (and d!1200095 (not c!698683)) b!4043931))

(declare-fun m!4641479 () Bool)

(assert (=> b!4043931 m!4641479))

(assert (=> b!4042987 d!1200095))

(assert (=> b!4042987 d!1199831))

(assert (=> b!4042987 d!1199697))

(assert (=> b!4042932 d!1199961))

(assert (=> b!4042932 d!1199601))

(declare-fun d!1200097 () Bool)

(declare-fun lt!1439478 () Int)

(assert (=> d!1200097 (>= lt!1439478 0)))

(declare-fun e!2509036 () Int)

(assert (=> d!1200097 (= lt!1439478 e!2509036)))

(declare-fun c!698684 () Bool)

(assert (=> d!1200097 (= c!698684 ((_ is Nil!43249) lt!1439007))))

(assert (=> d!1200097 (= (size!32333 lt!1439007) lt!1439478)))

(declare-fun b!4043932 () Bool)

(assert (=> b!4043932 (= e!2509036 0)))

(declare-fun b!4043933 () Bool)

(assert (=> b!4043933 (= e!2509036 (+ 1 (size!32333 (t!335212 lt!1439007))))))

(assert (= (and d!1200097 c!698684) b!4043932))

(assert (= (and d!1200097 (not c!698684)) b!4043933))

(declare-fun m!4641481 () Bool)

(assert (=> b!4043933 m!4641481))

(assert (=> b!4043018 d!1200097))

(assert (=> b!4043018 d!1199381))

(assert (=> b!4043018 d!1199547))

(declare-fun b!4043934 () Bool)

(declare-fun e!2509040 () Bool)

(declare-fun e!2509043 () Bool)

(assert (=> b!4043934 (= e!2509040 e!2509043)))

(declare-fun c!698686 () Bool)

(assert (=> b!4043934 (= c!698686 ((_ is Union!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun b!4043935 () Bool)

(declare-fun res!1647119 () Bool)

(declare-fun e!2509042 () Bool)

(assert (=> b!4043935 (=> (not res!1647119) (not e!2509042))))

(declare-fun call!287632 () Bool)

(assert (=> b!4043935 (= res!1647119 call!287632)))

(assert (=> b!4043935 (= e!2509043 e!2509042)))

(declare-fun bm!287626 () Bool)

(declare-fun call!287631 () Bool)

(declare-fun c!698685 () Bool)

(assert (=> bm!287626 (= call!287631 (validRegex!5351 (ite c!698685 (reg!12158 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (ite c!698686 (regOne!24171 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (regOne!24170 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))))

(declare-fun b!4043936 () Bool)

(declare-fun e!2509038 () Bool)

(assert (=> b!4043936 (= e!2509040 e!2509038)))

(declare-fun res!1647116 () Bool)

(assert (=> b!4043936 (= res!1647116 (not (nullable!4151 (reg!12158 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))))

(assert (=> b!4043936 (=> (not res!1647116) (not e!2509038))))

(declare-fun b!4043938 () Bool)

(declare-fun e!2509039 () Bool)

(declare-fun call!287633 () Bool)

(assert (=> b!4043938 (= e!2509039 call!287633)))

(declare-fun b!4043939 () Bool)

(assert (=> b!4043939 (= e!2509038 call!287631)))

(declare-fun bm!287627 () Bool)

(assert (=> bm!287627 (= call!287632 call!287631)))

(declare-fun b!4043940 () Bool)

(declare-fun e!2509041 () Bool)

(assert (=> b!4043940 (= e!2509041 e!2509039)))

(declare-fun res!1647115 () Bool)

(assert (=> b!4043940 (=> (not res!1647115) (not e!2509039))))

(assert (=> b!4043940 (= res!1647115 call!287632)))

(declare-fun b!4043941 () Bool)

(declare-fun res!1647117 () Bool)

(assert (=> b!4043941 (=> res!1647117 e!2509041)))

(assert (=> b!4043941 (= res!1647117 (not ((_ is Concat!18984) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(assert (=> b!4043941 (= e!2509043 e!2509041)))

(declare-fun d!1200099 () Bool)

(declare-fun res!1647118 () Bool)

(declare-fun e!2509037 () Bool)

(assert (=> d!1200099 (=> res!1647118 e!2509037)))

(assert (=> d!1200099 (= res!1647118 ((_ is ElementMatch!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(assert (=> d!1200099 (= (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) e!2509037)))

(declare-fun b!4043937 () Bool)

(assert (=> b!4043937 (= e!2509042 call!287633)))

(declare-fun b!4043942 () Bool)

(assert (=> b!4043942 (= e!2509037 e!2509040)))

(assert (=> b!4043942 (= c!698685 ((_ is Star!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun bm!287628 () Bool)

(assert (=> bm!287628 (= call!287633 (validRegex!5351 (ite c!698686 (regTwo!24171 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (regTwo!24170 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))))

(assert (= (and d!1200099 (not res!1647118)) b!4043942))

(assert (= (and b!4043942 c!698685) b!4043936))

(assert (= (and b!4043942 (not c!698685)) b!4043934))

(assert (= (and b!4043936 res!1647116) b!4043939))

(assert (= (and b!4043934 c!698686) b!4043935))

(assert (= (and b!4043934 (not c!698686)) b!4043941))

(assert (= (and b!4043935 res!1647119) b!4043937))

(assert (= (and b!4043941 (not res!1647117)) b!4043940))

(assert (= (and b!4043940 res!1647115) b!4043938))

(assert (= (or b!4043937 b!4043938) bm!287628))

(assert (= (or b!4043935 b!4043940) bm!287627))

(assert (= (or b!4043939 bm!287627) bm!287626))

(declare-fun m!4641483 () Bool)

(assert (=> bm!287626 m!4641483))

(declare-fun m!4641485 () Bool)

(assert (=> b!4043936 m!4641485))

(declare-fun m!4641487 () Bool)

(assert (=> bm!287628 m!4641487))

(assert (=> d!1199617 d!1200099))

(declare-fun d!1200101 () Bool)

(declare-fun lt!1439479 () List!43373)

(assert (=> d!1200101 (= (++!11326 (t!335212 lt!1438798) lt!1439479) (tail!6287 lt!1438775))))

(declare-fun e!2509048 () List!43373)

(assert (=> d!1200101 (= lt!1439479 e!2509048)))

(declare-fun c!698687 () Bool)

(assert (=> d!1200101 (= c!698687 ((_ is Cons!43249) (t!335212 lt!1438798)))))

(assert (=> d!1200101 (>= (size!32333 (tail!6287 lt!1438775)) (size!32333 (t!335212 lt!1438798)))))

(assert (=> d!1200101 (= (getSuffix!2428 (tail!6287 lt!1438775) (t!335212 lt!1438798)) lt!1439479)))

(declare-fun b!4043947 () Bool)

(assert (=> b!4043947 (= e!2509048 (getSuffix!2428 (tail!6287 (tail!6287 lt!1438775)) (t!335212 (t!335212 lt!1438798))))))

(declare-fun b!4043948 () Bool)

(assert (=> b!4043948 (= e!2509048 (tail!6287 lt!1438775))))

(assert (= (and d!1200101 c!698687) b!4043947))

(assert (= (and d!1200101 (not c!698687)) b!4043948))

(declare-fun m!4641489 () Bool)

(assert (=> d!1200101 m!4641489))

(assert (=> d!1200101 m!4639361))

(assert (=> d!1200101 m!4640561))

(assert (=> d!1200101 m!4639587))

(assert (=> b!4043947 m!4639361))

(assert (=> b!4043947 m!4640557))

(assert (=> b!4043947 m!4640557))

(declare-fun m!4641491 () Bool)

(assert (=> b!4043947 m!4641491))

(assert (=> b!4042547 d!1200101))

(assert (=> b!4042547 d!1199709))

(declare-fun b!4043952 () Bool)

(declare-fun lt!1439480 () List!43373)

(declare-fun e!2509049 () Bool)

(assert (=> b!4043952 (= e!2509049 (or (not (= lt!1438778 Nil!43249)) (= lt!1439480 (t!335212 lt!1438798))))))

(declare-fun b!4043950 () Bool)

(declare-fun e!2509050 () List!43373)

(assert (=> b!4043950 (= e!2509050 (Cons!43249 (h!48669 (t!335212 lt!1438798)) (++!11326 (t!335212 (t!335212 lt!1438798)) lt!1438778)))))

(declare-fun b!4043949 () Bool)

(assert (=> b!4043949 (= e!2509050 lt!1438778)))

(declare-fun b!4043951 () Bool)

(declare-fun res!1647125 () Bool)

(assert (=> b!4043951 (=> (not res!1647125) (not e!2509049))))

(assert (=> b!4043951 (= res!1647125 (= (size!32333 lt!1439480) (+ (size!32333 (t!335212 lt!1438798)) (size!32333 lt!1438778))))))

(declare-fun d!1200103 () Bool)

(assert (=> d!1200103 e!2509049))

(declare-fun res!1647124 () Bool)

(assert (=> d!1200103 (=> (not res!1647124) (not e!2509049))))

(assert (=> d!1200103 (= res!1647124 (= (content!6581 lt!1439480) ((_ map or) (content!6581 (t!335212 lt!1438798)) (content!6581 lt!1438778))))))

(assert (=> d!1200103 (= lt!1439480 e!2509050)))

(declare-fun c!698688 () Bool)

(assert (=> d!1200103 (= c!698688 ((_ is Nil!43249) (t!335212 lt!1438798)))))

(assert (=> d!1200103 (= (++!11326 (t!335212 lt!1438798) lt!1438778) lt!1439480)))

(assert (= (and d!1200103 c!698688) b!4043949))

(assert (= (and d!1200103 (not c!698688)) b!4043950))

(assert (= (and d!1200103 res!1647124) b!4043951))

(assert (= (and b!4043951 res!1647125) b!4043952))

(declare-fun m!4641493 () Bool)

(assert (=> b!4043950 m!4641493))

(declare-fun m!4641495 () Bool)

(assert (=> b!4043951 m!4641495))

(assert (=> b!4043951 m!4639587))

(assert (=> b!4043951 m!4640101))

(declare-fun m!4641497 () Bool)

(assert (=> d!1200103 m!4641497))

(assert (=> d!1200103 m!4640471))

(assert (=> d!1200103 m!4640105))

(assert (=> b!4043021 d!1200103))

(declare-fun bs!591111 () Bool)

(declare-fun d!1200105 () Bool)

(assert (= bs!591111 (and d!1200105 d!1199993)))

(declare-fun lambda!127451 () Int)

(assert (=> bs!591111 (= (and (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (= lambda!127451 lambda!127441))))

(assert (=> d!1200105 true))

(assert (=> d!1200105 (< (dynLambda!18378 order!22669 (toChars!9327 (transformation!6924 (h!48671 rules!2999)))) (dynLambda!18377 order!22667 lambda!127451))))

(assert (=> d!1200105 true))

(assert (=> d!1200105 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (h!48671 rules!2999)))) (dynLambda!18377 order!22667 lambda!127451))))

(declare-fun Forall!1493 (Int) Bool)

(assert (=> d!1200105 (= (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (h!48671 rules!2999)))) (Forall!1493 lambda!127451))))

(declare-fun bs!591113 () Bool)

(assert (= bs!591113 d!1200105))

(declare-fun m!4641533 () Bool)

(assert (=> bs!591113 m!4641533))

(assert (=> d!1199393 d!1200105))

(assert (=> b!4043096 d!1199961))

(assert (=> b!4043096 d!1199379))

(assert (=> b!4042991 d!1199831))

(declare-fun d!1200127 () Bool)

(assert (=> d!1200127 (= (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006))))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006))))))))

(declare-fun b_lambda!118151 () Bool)

(assert (=> (not b_lambda!118151) (not d!1200127)))

(declare-fun tb!243205 () Bool)

(declare-fun t!335351 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335351) tb!243205))

(declare-fun result!294746 () Bool)

(assert (=> tb!243205 (= result!294746 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006)))))))))

(declare-fun m!4641545 () Bool)

(assert (=> tb!243205 m!4641545))

(assert (=> d!1200127 t!335351))

(declare-fun b_and!310955 () Bool)

(assert (= b_and!310933 (and (=> t!335351 result!294746) b_and!310955)))

(declare-fun tb!243207 () Bool)

(declare-fun t!335353 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335353) tb!243207))

(declare-fun result!294748 () Bool)

(assert (= result!294748 result!294746))

(assert (=> d!1200127 t!335353))

(declare-fun b_and!310957 () Bool)

(assert (= b_and!310937 (and (=> t!335353 result!294748) b_and!310957)))

(declare-fun t!335355 () Bool)

(declare-fun tb!243209 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335355) tb!243209))

(declare-fun result!294750 () Bool)

(assert (= result!294750 result!294746))

(assert (=> d!1200127 t!335355))

(declare-fun b_and!310959 () Bool)

(assert (= b_and!310941 (and (=> t!335355 result!294750) b_and!310959)))

(assert (=> d!1200127 m!4640063))

(declare-fun m!4641547 () Bool)

(assert (=> d!1200127 m!4641547))

(assert (=> b!4042991 d!1200127))

(declare-fun d!1200131 () Bool)

(assert (=> d!1200131 (= (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006)))) (fromListB!2346 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439006)))))))

(declare-fun bs!591116 () Bool)

(assert (= bs!591116 d!1200131))

(declare-fun m!4641549 () Bool)

(assert (=> bs!591116 m!4641549))

(assert (=> b!4042991 d!1200131))

(declare-fun d!1200133 () Bool)

(declare-fun charsToBigInt!0 (List!43374 Int) Int)

(assert (=> d!1200133 (= (inv!15 (value!217968 token!484)) (= (charsToBigInt!0 (text!50527 (value!217968 token!484)) 0) (value!217963 (value!217968 token!484))))))

(declare-fun bs!591118 () Bool)

(assert (= bs!591118 d!1200133))

(declare-fun m!4641563 () Bool)

(assert (=> bs!591118 m!4641563))

(assert (=> b!4043050 d!1200133))

(assert (=> d!1199607 d!1199337))

(declare-fun e!2509065 () Bool)

(declare-fun b!4043980 () Bool)

(declare-fun lt!1439486 () List!43373)

(assert (=> b!4043980 (= e!2509065 (or (not (= lt!1439057 Nil!43249)) (= lt!1439486 newSuffix!27)))))

(declare-fun b!4043978 () Bool)

(declare-fun e!2509066 () List!43373)

(assert (=> b!4043978 (= e!2509066 (Cons!43249 (h!48669 newSuffix!27) (++!11326 (t!335212 newSuffix!27) lt!1439057)))))

(declare-fun b!4043977 () Bool)

(assert (=> b!4043977 (= e!2509066 lt!1439057)))

(declare-fun b!4043979 () Bool)

(declare-fun res!1647141 () Bool)

(assert (=> b!4043979 (=> (not res!1647141) (not e!2509065))))

(assert (=> b!4043979 (= res!1647141 (= (size!32333 lt!1439486) (+ (size!32333 newSuffix!27) (size!32333 lt!1439057))))))

(declare-fun d!1200139 () Bool)

(assert (=> d!1200139 e!2509065))

(declare-fun res!1647140 () Bool)

(assert (=> d!1200139 (=> (not res!1647140) (not e!2509065))))

(assert (=> d!1200139 (= res!1647140 (= (content!6581 lt!1439486) ((_ map or) (content!6581 newSuffix!27) (content!6581 lt!1439057))))))

(assert (=> d!1200139 (= lt!1439486 e!2509066)))

(declare-fun c!698692 () Bool)

(assert (=> d!1200139 (= c!698692 ((_ is Nil!43249) newSuffix!27))))

(assert (=> d!1200139 (= (++!11326 newSuffix!27 lt!1439057) lt!1439486)))

(assert (= (and d!1200139 c!698692) b!4043977))

(assert (= (and d!1200139 (not c!698692)) b!4043978))

(assert (= (and d!1200139 res!1647140) b!4043979))

(assert (= (and b!4043979 res!1647141) b!4043980))

(declare-fun m!4641565 () Bool)

(assert (=> b!4043978 m!4641565))

(declare-fun m!4641567 () Bool)

(assert (=> b!4043979 m!4641567))

(assert (=> b!4043979 m!4639243))

(declare-fun m!4641569 () Bool)

(assert (=> b!4043979 m!4641569))

(declare-fun m!4641571 () Bool)

(assert (=> d!1200139 m!4641571))

(assert (=> d!1200139 m!4640243))

(declare-fun m!4641573 () Bool)

(assert (=> d!1200139 m!4641573))

(assert (=> d!1199639 d!1200139))

(assert (=> d!1199639 d!1199547))

(assert (=> d!1199639 d!1199549))

(declare-fun b!4043985 () Bool)

(declare-fun e!2509069 () Bool)

(declare-fun e!2509070 () Bool)

(assert (=> b!4043985 (= e!2509069 e!2509070)))

(declare-fun res!1647145 () Bool)

(assert (=> b!4043985 (=> (not res!1647145) (not e!2509070))))

(assert (=> b!4043985 (= res!1647145 (not ((_ is Nil!43249) (tail!6287 lt!1438775))))))

(declare-fun b!4043986 () Bool)

(declare-fun res!1647146 () Bool)

(assert (=> b!4043986 (=> (not res!1647146) (not e!2509070))))

(assert (=> b!4043986 (= res!1647146 (= (head!8555 (tail!6287 lt!1438798)) (head!8555 (tail!6287 lt!1438775))))))

(declare-fun d!1200143 () Bool)

(declare-fun e!2509071 () Bool)

(assert (=> d!1200143 e!2509071))

(declare-fun res!1647144 () Bool)

(assert (=> d!1200143 (=> res!1647144 e!2509071)))

(declare-fun lt!1439488 () Bool)

(assert (=> d!1200143 (= res!1647144 (not lt!1439488))))

(assert (=> d!1200143 (= lt!1439488 e!2509069)))

(declare-fun res!1647147 () Bool)

(assert (=> d!1200143 (=> res!1647147 e!2509069)))

(assert (=> d!1200143 (= res!1647147 ((_ is Nil!43249) (tail!6287 lt!1438798)))))

(assert (=> d!1200143 (= (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438775)) lt!1439488)))

(declare-fun b!4043987 () Bool)

(assert (=> b!4043987 (= e!2509070 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438798)) (tail!6287 (tail!6287 lt!1438775))))))

(declare-fun b!4043988 () Bool)

(assert (=> b!4043988 (= e!2509071 (>= (size!32333 (tail!6287 lt!1438775)) (size!32333 (tail!6287 lt!1438798))))))

(assert (= (and d!1200143 (not res!1647147)) b!4043985))

(assert (= (and b!4043985 res!1647145) b!4043986))

(assert (= (and b!4043986 res!1647146) b!4043987))

(assert (= (and d!1200143 (not res!1647144)) b!4043988))

(assert (=> b!4043986 m!4639565))

(assert (=> b!4043986 m!4641317))

(assert (=> b!4043986 m!4639361))

(assert (=> b!4043986 m!4640555))

(assert (=> b!4043987 m!4639565))

(assert (=> b!4043987 m!4641313))

(assert (=> b!4043987 m!4639361))

(assert (=> b!4043987 m!4640557))

(assert (=> b!4043987 m!4641313))

(assert (=> b!4043987 m!4640557))

(declare-fun m!4641587 () Bool)

(assert (=> b!4043987 m!4641587))

(assert (=> b!4043988 m!4639361))

(assert (=> b!4043988 m!4640561))

(assert (=> b!4043988 m!4639565))

(assert (=> b!4043988 m!4641421))

(assert (=> b!4043103 d!1200143))

(assert (=> b!4043103 d!1199899))

(assert (=> b!4043103 d!1199709))

(declare-fun d!1200149 () Bool)

(assert (=> d!1200149 (= (nullable!4151 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (nullableFct!1167 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun bs!591120 () Bool)

(assert (= bs!591120 d!1200149))

(declare-fun m!4641591 () Bool)

(assert (=> bs!591120 m!4641591))

(assert (=> b!4043158 d!1200149))

(declare-fun b!4043995 () Bool)

(declare-fun res!1647150 () Bool)

(declare-fun e!2509077 () Bool)

(assert (=> b!4043995 (=> res!1647150 e!2509077)))

(assert (=> b!4043995 (= res!1647150 (not ((_ is IntegerValue!21464) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798)))))))

(declare-fun e!2509076 () Bool)

(assert (=> b!4043995 (= e!2509076 e!2509077)))

(declare-fun b!4043996 () Bool)

(assert (=> b!4043996 (= e!2509076 (inv!17 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798))))))

(declare-fun b!4043997 () Bool)

(declare-fun e!2509078 () Bool)

(assert (=> b!4043997 (= e!2509078 (inv!16 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798))))))

(declare-fun b!4043998 () Bool)

(assert (=> b!4043998 (= e!2509078 e!2509076)))

(declare-fun c!698696 () Bool)

(assert (=> b!4043998 (= c!698696 ((_ is IntegerValue!21463) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798))))))

(declare-fun d!1200151 () Bool)

(declare-fun c!698697 () Bool)

(assert (=> d!1200151 (= c!698697 ((_ is IntegerValue!21462) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798))))))

(assert (=> d!1200151 (= (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798))) e!2509078)))

(declare-fun b!4043999 () Bool)

(assert (=> b!4043999 (= e!2509077 (inv!15 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 lt!1438798))))))

(assert (= (and d!1200151 c!698697) b!4043997))

(assert (= (and d!1200151 (not c!698697)) b!4043998))

(assert (= (and b!4043998 c!698696) b!4043996))

(assert (= (and b!4043998 (not c!698696)) b!4043995))

(assert (= (and b!4043995 (not res!1647150)) b!4043999))

(declare-fun m!4641601 () Bool)

(assert (=> b!4043996 m!4641601))

(declare-fun m!4641603 () Bool)

(assert (=> b!4043997 m!4641603))

(declare-fun m!4641605 () Bool)

(assert (=> b!4043999 m!4641605))

(assert (=> tb!243093 d!1200151))

(declare-fun d!1200157 () Bool)

(assert (=> d!1200157 (= suffixResult!105 lt!1438762)))

(assert (=> d!1200157 true))

(declare-fun _$63!1120 () Unit!62477)

(assert (=> d!1200157 (= (choose!24503 lt!1438798 suffixResult!105 lt!1438798 lt!1438762 lt!1438775) _$63!1120)))

(assert (=> d!1199353 d!1200157))

(assert (=> d!1199353 d!1199565))

(declare-fun b!4044000 () Bool)

(declare-fun e!2509080 () Bool)

(declare-fun e!2509081 () Bool)

(assert (=> b!4044000 (= e!2509080 e!2509081)))

(declare-fun res!1647152 () Bool)

(assert (=> b!4044000 (=> (not res!1647152) (not e!2509081))))

(assert (=> b!4044000 (= res!1647152 (not ((_ is Nil!43249) (tail!6287 suffix!1299))))))

(declare-fun b!4044001 () Bool)

(declare-fun res!1647153 () Bool)

(assert (=> b!4044001 (=> (not res!1647153) (not e!2509081))))

(assert (=> b!4044001 (= res!1647153 (= (head!8555 (tail!6287 newSuffix!27)) (head!8555 (tail!6287 suffix!1299))))))

(declare-fun d!1200161 () Bool)

(declare-fun e!2509082 () Bool)

(assert (=> d!1200161 e!2509082))

(declare-fun res!1647151 () Bool)

(assert (=> d!1200161 (=> res!1647151 e!2509082)))

(declare-fun lt!1439490 () Bool)

(assert (=> d!1200161 (= res!1647151 (not lt!1439490))))

(assert (=> d!1200161 (= lt!1439490 e!2509080)))

(declare-fun res!1647154 () Bool)

(assert (=> d!1200161 (=> res!1647154 e!2509080)))

(assert (=> d!1200161 (= res!1647154 ((_ is Nil!43249) (tail!6287 newSuffix!27)))))

(assert (=> d!1200161 (= (isPrefix!4011 (tail!6287 newSuffix!27) (tail!6287 suffix!1299)) lt!1439490)))

(declare-fun b!4044002 () Bool)

(assert (=> b!4044002 (= e!2509081 (isPrefix!4011 (tail!6287 (tail!6287 newSuffix!27)) (tail!6287 (tail!6287 suffix!1299))))))

(declare-fun b!4044003 () Bool)

(assert (=> b!4044003 (= e!2509082 (>= (size!32333 (tail!6287 suffix!1299)) (size!32333 (tail!6287 newSuffix!27))))))

(assert (= (and d!1200161 (not res!1647154)) b!4044000))

(assert (= (and b!4044000 res!1647152) b!4044001))

(assert (= (and b!4044001 res!1647153) b!4044002))

(assert (= (and d!1200161 (not res!1647151)) b!4044003))

(assert (=> b!4044001 m!4640189))

(declare-fun m!4641611 () Bool)

(assert (=> b!4044001 m!4641611))

(assert (=> b!4044001 m!4640191))

(declare-fun m!4641613 () Bool)

(assert (=> b!4044001 m!4641613))

(assert (=> b!4044002 m!4640189))

(declare-fun m!4641615 () Bool)

(assert (=> b!4044002 m!4641615))

(assert (=> b!4044002 m!4640191))

(declare-fun m!4641617 () Bool)

(assert (=> b!4044002 m!4641617))

(assert (=> b!4044002 m!4641615))

(assert (=> b!4044002 m!4641617))

(declare-fun m!4641619 () Bool)

(assert (=> b!4044002 m!4641619))

(assert (=> b!4044003 m!4640191))

(declare-fun m!4641621 () Bool)

(assert (=> b!4044003 m!4641621))

(assert (=> b!4044003 m!4640189))

(declare-fun m!4641623 () Bool)

(assert (=> b!4044003 m!4641623))

(assert (=> b!4043111 d!1200161))

(declare-fun d!1200165 () Bool)

(assert (=> d!1200165 (= (tail!6287 newSuffix!27) (t!335212 newSuffix!27))))

(assert (=> b!4043111 d!1200165))

(declare-fun d!1200167 () Bool)

(assert (=> d!1200167 (= (tail!6287 suffix!1299) (t!335212 suffix!1299))))

(assert (=> b!4043111 d!1200167))

(declare-fun bs!591122 () Bool)

(declare-fun d!1200169 () Bool)

(assert (= bs!591122 (and d!1200169 d!1199993)))

(declare-fun lambda!127453 () Int)

(assert (=> bs!591122 (= (and (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (= lambda!127453 lambda!127441))))

(declare-fun bs!591123 () Bool)

(assert (= bs!591123 (and d!1200169 d!1200105)))

(assert (=> bs!591123 (= (and (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (h!48671 rules!2999)))) (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (h!48671 rules!2999))))) (= lambda!127453 lambda!127451))))

(assert (=> d!1200169 true))

(assert (=> d!1200169 (< (dynLambda!18378 order!22669 (toChars!9327 (transformation!6924 (rule!9998 token!484)))) (dynLambda!18377 order!22667 lambda!127453))))

(assert (=> d!1200169 true))

(assert (=> d!1200169 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (rule!9998 token!484)))) (dynLambda!18377 order!22667 lambda!127453))))

(assert (=> d!1200169 (= (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) (Forall!1493 lambda!127453))))

(declare-fun bs!591124 () Bool)

(assert (= bs!591124 d!1200169))

(declare-fun m!4641629 () Bool)

(assert (=> bs!591124 m!4641629))

(assert (=> d!1199577 d!1200169))

(declare-fun b!4044009 () Bool)

(declare-fun e!2509085 () Bool)

(declare-fun lt!1439493 () List!43373)

(assert (=> b!4044009 (= e!2509085 (or (not (= (_2!24299 (v!39739 lt!1438779)) Nil!43249)) (= lt!1439493 (t!335212 lt!1438792))))))

(declare-fun b!4044007 () Bool)

(declare-fun e!2509086 () List!43373)

(assert (=> b!4044007 (= e!2509086 (Cons!43249 (h!48669 (t!335212 lt!1438792)) (++!11326 (t!335212 (t!335212 lt!1438792)) (_2!24299 (v!39739 lt!1438779)))))))

(declare-fun b!4044006 () Bool)

(assert (=> b!4044006 (= e!2509086 (_2!24299 (v!39739 lt!1438779)))))

(declare-fun b!4044008 () Bool)

(declare-fun res!1647157 () Bool)

(assert (=> b!4044008 (=> (not res!1647157) (not e!2509085))))

(assert (=> b!4044008 (= res!1647157 (= (size!32333 lt!1439493) (+ (size!32333 (t!335212 lt!1438792)) (size!32333 (_2!24299 (v!39739 lt!1438779))))))))

(declare-fun d!1200175 () Bool)

(assert (=> d!1200175 e!2509085))

(declare-fun res!1647156 () Bool)

(assert (=> d!1200175 (=> (not res!1647156) (not e!2509085))))

(assert (=> d!1200175 (= res!1647156 (= (content!6581 lt!1439493) ((_ map or) (content!6581 (t!335212 lt!1438792)) (content!6581 (_2!24299 (v!39739 lt!1438779))))))))

(assert (=> d!1200175 (= lt!1439493 e!2509086)))

(declare-fun c!698698 () Bool)

(assert (=> d!1200175 (= c!698698 ((_ is Nil!43249) (t!335212 lt!1438792)))))

(assert (=> d!1200175 (= (++!11326 (t!335212 lt!1438792) (_2!24299 (v!39739 lt!1438779))) lt!1439493)))

(assert (= (and d!1200175 c!698698) b!4044006))

(assert (= (and d!1200175 (not c!698698)) b!4044007))

(assert (= (and d!1200175 res!1647156) b!4044008))

(assert (= (and b!4044008 res!1647157) b!4044009))

(declare-fun m!4641631 () Bool)

(assert (=> b!4044007 m!4641631))

(declare-fun m!4641633 () Bool)

(assert (=> b!4044008 m!4641633))

(assert (=> b!4044008 m!4640261))

(assert (=> b!4044008 m!4640271))

(declare-fun m!4641635 () Bool)

(assert (=> d!1200175 m!4641635))

(assert (=> d!1200175 m!4640827))

(assert (=> d!1200175 m!4640277))

(assert (=> b!4043146 d!1200175))

(declare-fun b!4044010 () Bool)

(declare-fun e!2509087 () Bool)

(declare-fun e!2509088 () Bool)

(assert (=> b!4044010 (= e!2509087 e!2509088)))

(declare-fun res!1647159 () Bool)

(assert (=> b!4044010 (=> (not res!1647159) (not e!2509088))))

(assert (=> b!4044010 (= res!1647159 (not ((_ is Nil!43249) (++!11326 lt!1438798 lt!1438778))))))

(declare-fun b!4044011 () Bool)

(declare-fun res!1647160 () Bool)

(assert (=> b!4044011 (=> (not res!1647160) (not e!2509088))))

(assert (=> b!4044011 (= res!1647160 (= (head!8555 lt!1438798) (head!8555 (++!11326 lt!1438798 lt!1438778))))))

(declare-fun d!1200177 () Bool)

(declare-fun e!2509089 () Bool)

(assert (=> d!1200177 e!2509089))

(declare-fun res!1647158 () Bool)

(assert (=> d!1200177 (=> res!1647158 e!2509089)))

(declare-fun lt!1439494 () Bool)

(assert (=> d!1200177 (= res!1647158 (not lt!1439494))))

(assert (=> d!1200177 (= lt!1439494 e!2509087)))

(declare-fun res!1647161 () Bool)

(assert (=> d!1200177 (=> res!1647161 e!2509087)))

(assert (=> d!1200177 (= res!1647161 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1200177 (= (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 lt!1438778)) lt!1439494)))

(declare-fun b!4044012 () Bool)

(assert (=> b!4044012 (= e!2509088 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 (++!11326 lt!1438798 lt!1438778))))))

(declare-fun b!4044013 () Bool)

(assert (=> b!4044013 (= e!2509089 (>= (size!32333 (++!11326 lt!1438798 lt!1438778)) (size!32333 lt!1438798)))))

(assert (= (and d!1200177 (not res!1647161)) b!4044010))

(assert (= (and b!4044010 res!1647159) b!4044011))

(assert (= (and b!4044011 res!1647160) b!4044012))

(assert (= (and d!1200177 (not res!1647158)) b!4044013))

(assert (=> b!4044011 m!4639555))

(assert (=> b!4044011 m!4639283))

(declare-fun m!4641641 () Bool)

(assert (=> b!4044011 m!4641641))

(assert (=> b!4044012 m!4639565))

(assert (=> b!4044012 m!4639283))

(declare-fun m!4641643 () Bool)

(assert (=> b!4044012 m!4641643))

(assert (=> b!4044012 m!4639565))

(assert (=> b!4044012 m!4641643))

(declare-fun m!4641645 () Bool)

(assert (=> b!4044012 m!4641645))

(assert (=> b!4044013 m!4639283))

(declare-fun m!4641647 () Bool)

(assert (=> b!4044013 m!4641647))

(assert (=> b!4044013 m!4639203))

(assert (=> d!1199499 d!1200177))

(assert (=> d!1199499 d!1199539))

(declare-fun d!1200179 () Bool)

(assert (=> d!1200179 (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 lt!1438778))))

(assert (=> d!1200179 true))

(declare-fun _$46!1781 () Unit!62477)

(assert (=> d!1200179 (= (choose!24505 lt!1438798 lt!1438778) _$46!1781)))

(declare-fun bs!591128 () Bool)

(assert (= bs!591128 d!1200179))

(assert (=> bs!591128 m!4639283))

(assert (=> bs!591128 m!4639283))

(assert (=> bs!591128 m!4639969))

(assert (=> d!1199499 d!1200179))

(declare-fun d!1200181 () Bool)

(declare-fun lt!1439495 () List!43373)

(assert (=> d!1200181 (= (++!11326 (t!335212 newSuffix!27) lt!1439495) (tail!6287 suffix!1299))))

(declare-fun e!2509091 () List!43373)

(assert (=> d!1200181 (= lt!1439495 e!2509091)))

(declare-fun c!698699 () Bool)

(assert (=> d!1200181 (= c!698699 ((_ is Cons!43249) (t!335212 newSuffix!27)))))

(assert (=> d!1200181 (>= (size!32333 (tail!6287 suffix!1299)) (size!32333 (t!335212 newSuffix!27)))))

(assert (=> d!1200181 (= (getSuffix!2428 (tail!6287 suffix!1299) (t!335212 newSuffix!27)) lt!1439495)))

(declare-fun b!4044015 () Bool)

(assert (=> b!4044015 (= e!2509091 (getSuffix!2428 (tail!6287 (tail!6287 suffix!1299)) (t!335212 (t!335212 newSuffix!27))))))

(declare-fun b!4044016 () Bool)

(assert (=> b!4044016 (= e!2509091 (tail!6287 suffix!1299))))

(assert (= (and d!1200181 c!698699) b!4044015))

(assert (= (and d!1200181 (not c!698699)) b!4044016))

(declare-fun m!4641657 () Bool)

(assert (=> d!1200181 m!4641657))

(assert (=> d!1200181 m!4640191))

(assert (=> d!1200181 m!4641621))

(assert (=> d!1200181 m!4640135))

(assert (=> b!4044015 m!4640191))

(assert (=> b!4044015 m!4641617))

(assert (=> b!4044015 m!4641617))

(declare-fun m!4641659 () Bool)

(assert (=> b!4044015 m!4641659))

(assert (=> b!4043184 d!1200181))

(assert (=> b!4043184 d!1200167))

(declare-fun b!4044017 () Bool)

(declare-fun e!2509093 () Bool)

(declare-fun lt!1439497 () Option!9338)

(assert (=> b!4044017 (= e!2509093 (= (size!32334 (_1!24299 (get!14192 lt!1439497))) (size!32333 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439497))))))))

(declare-fun b!4044018 () Bool)

(declare-fun res!1647164 () Bool)

(assert (=> b!4044018 (=> (not res!1647164) (not e!2509093))))

(assert (=> b!4044018 (= res!1647164 (= (value!217968 (_1!24299 (get!14192 lt!1439497))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439497)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439497)))))))))

(declare-fun b!4044019 () Bool)

(declare-fun res!1647165 () Bool)

(assert (=> b!4044019 (=> (not res!1647165) (not e!2509093))))

(assert (=> b!4044019 (= res!1647165 (= (rule!9998 (_1!24299 (get!14192 lt!1439497))) (h!48671 rules!2999)))))

(declare-fun b!4044020 () Bool)

(declare-fun e!2509095 () Option!9338)

(declare-fun lt!1439498 () tuple2!42334)

(assert (=> b!4044020 (= e!2509095 (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (h!48671 rules!2999)) (seqFromList!5141 (_1!24301 lt!1439498))) (h!48671 rules!2999) (size!32336 (seqFromList!5141 (_1!24301 lt!1439498))) (_1!24301 lt!1439498)) (_2!24301 lt!1439498))))))

(declare-fun lt!1439501 () Unit!62477)

(assert (=> b!4044020 (= lt!1439501 (longestMatchIsAcceptedByMatchOrIsEmpty!1362 (regex!6924 (h!48671 rules!2999)) lt!1438785))))

(declare-fun res!1647168 () Bool)

(assert (=> b!4044020 (= res!1647168 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (h!48671 rules!2999)) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(declare-fun e!2509094 () Bool)

(assert (=> b!4044020 (=> res!1647168 e!2509094)))

(assert (=> b!4044020 e!2509094))

(declare-fun lt!1439499 () Unit!62477)

(assert (=> b!4044020 (= lt!1439499 lt!1439501)))

(declare-fun lt!1439500 () Unit!62477)

(assert (=> b!4044020 (= lt!1439500 (lemmaSemiInverse!1909 (transformation!6924 (h!48671 rules!2999)) (seqFromList!5141 (_1!24301 lt!1439498))))))

(declare-fun b!4044021 () Bool)

(assert (=> b!4044021 (= e!2509095 None!9337)))

(declare-fun b!4044022 () Bool)

(assert (=> b!4044022 (= e!2509094 (matchR!5782 (regex!6924 (h!48671 rules!2999)) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (h!48671 rules!2999)) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(declare-fun b!4044023 () Bool)

(declare-fun e!2509092 () Bool)

(assert (=> b!4044023 (= e!2509092 e!2509093)))

(declare-fun res!1647162 () Bool)

(assert (=> b!4044023 (=> (not res!1647162) (not e!2509093))))

(assert (=> b!4044023 (= res!1647162 (matchR!5782 (regex!6924 (h!48671 rules!2999)) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439497))))))))

(declare-fun b!4044024 () Bool)

(declare-fun res!1647163 () Bool)

(assert (=> b!4044024 (=> (not res!1647163) (not e!2509093))))

(assert (=> b!4044024 (= res!1647163 (< (size!32333 (_2!24299 (get!14192 lt!1439497))) (size!32333 lt!1438785)))))

(declare-fun d!1200185 () Bool)

(assert (=> d!1200185 e!2509092))

(declare-fun res!1647166 () Bool)

(assert (=> d!1200185 (=> res!1647166 e!2509092)))

(assert (=> d!1200185 (= res!1647166 (isEmpty!25816 lt!1439497))))

(assert (=> d!1200185 (= lt!1439497 e!2509095)))

(declare-fun c!698700 () Bool)

(assert (=> d!1200185 (= c!698700 (isEmpty!25817 (_1!24301 lt!1439498)))))

(assert (=> d!1200185 (= lt!1439498 (findLongestMatch!1302 (regex!6924 (h!48671 rules!2999)) lt!1438785))))

(assert (=> d!1200185 (ruleValid!2854 thiss!21717 (h!48671 rules!2999))))

(assert (=> d!1200185 (= (maxPrefixOneRule!2823 thiss!21717 (h!48671 rules!2999) lt!1438785) lt!1439497)))

(declare-fun b!4044025 () Bool)

(declare-fun res!1647167 () Bool)

(assert (=> b!4044025 (=> (not res!1647167) (not e!2509093))))

(assert (=> b!4044025 (= res!1647167 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439497)))) (_2!24299 (get!14192 lt!1439497))) lt!1438785))))

(assert (= (and d!1200185 c!698700) b!4044021))

(assert (= (and d!1200185 (not c!698700)) b!4044020))

(assert (= (and b!4044020 (not res!1647168)) b!4044022))

(assert (= (and d!1200185 (not res!1647166)) b!4044023))

(assert (= (and b!4044023 res!1647162) b!4044025))

(assert (= (and b!4044025 res!1647167) b!4044024))

(assert (= (and b!4044024 res!1647163) b!4044019))

(assert (= (and b!4044019 res!1647165) b!4044018))

(assert (= (and b!4044018 res!1647164) b!4044017))

(declare-fun m!4641679 () Bool)

(assert (=> b!4044017 m!4641679))

(declare-fun m!4641681 () Bool)

(assert (=> b!4044017 m!4641681))

(assert (=> b!4044022 m!4639885))

(assert (=> b!4044022 m!4639471))

(assert (=> b!4044022 m!4639885))

(assert (=> b!4044022 m!4639471))

(declare-fun m!4641683 () Bool)

(assert (=> b!4044022 m!4641683))

(declare-fun m!4641685 () Bool)

(assert (=> b!4044022 m!4641685))

(assert (=> b!4044023 m!4641679))

(declare-fun m!4641687 () Bool)

(assert (=> b!4044023 m!4641687))

(assert (=> b!4044023 m!4641687))

(declare-fun m!4641689 () Bool)

(assert (=> b!4044023 m!4641689))

(assert (=> b!4044023 m!4641689))

(declare-fun m!4641693 () Bool)

(assert (=> b!4044023 m!4641693))

(declare-fun m!4641695 () Bool)

(assert (=> b!4044020 m!4641695))

(declare-fun m!4641697 () Bool)

(assert (=> b!4044020 m!4641697))

(assert (=> b!4044020 m!4641695))

(declare-fun m!4641699 () Bool)

(assert (=> b!4044020 m!4641699))

(assert (=> b!4044020 m!4639885))

(assert (=> b!4044020 m!4639471))

(assert (=> b!4044020 m!4641683))

(assert (=> b!4044020 m!4641695))

(declare-fun m!4641701 () Bool)

(assert (=> b!4044020 m!4641701))

(assert (=> b!4044020 m!4639885))

(assert (=> b!4044020 m!4639471))

(assert (=> b!4044020 m!4641695))

(declare-fun m!4641703 () Bool)

(assert (=> b!4044020 m!4641703))

(declare-fun m!4641705 () Bool)

(assert (=> b!4044020 m!4641705))

(declare-fun m!4641707 () Bool)

(assert (=> d!1200185 m!4641707))

(declare-fun m!4641709 () Bool)

(assert (=> d!1200185 m!4641709))

(declare-fun m!4641711 () Bool)

(assert (=> d!1200185 m!4641711))

(assert (=> d!1200185 m!4640811))

(assert (=> b!4044025 m!4641679))

(assert (=> b!4044025 m!4641687))

(assert (=> b!4044025 m!4641687))

(assert (=> b!4044025 m!4641689))

(assert (=> b!4044025 m!4641689))

(declare-fun m!4641713 () Bool)

(assert (=> b!4044025 m!4641713))

(assert (=> b!4044024 m!4641679))

(declare-fun m!4641715 () Bool)

(assert (=> b!4044024 m!4641715))

(assert (=> b!4044024 m!4639471))

(assert (=> b!4044018 m!4641679))

(declare-fun m!4641717 () Bool)

(assert (=> b!4044018 m!4641717))

(assert (=> b!4044018 m!4641717))

(declare-fun m!4641719 () Bool)

(assert (=> b!4044018 m!4641719))

(assert (=> b!4044019 m!4641679))

(assert (=> bm!287512 d!1200185))

(declare-fun d!1200203 () Bool)

(declare-fun e!2509100 () Bool)

(assert (=> d!1200203 e!2509100))

(declare-fun res!1647169 () Bool)

(assert (=> d!1200203 (=> (not res!1647169) (not e!2509100))))

(declare-fun lt!1439506 () BalanceConc!25864)

(assert (=> d!1200203 (= res!1647169 (= (list!16106 lt!1439506) lt!1438792))))

(assert (=> d!1200203 (= lt!1439506 (BalanceConc!25865 (fromList!863 lt!1438792)))))

(assert (=> d!1200203 (= (fromListB!2346 lt!1438792) lt!1439506)))

(declare-fun b!4044034 () Bool)

(assert (=> b!4044034 (= e!2509100 (isBalanced!3683 (fromList!863 lt!1438792)))))

(assert (= (and d!1200203 res!1647169) b!4044034))

(declare-fun m!4641721 () Bool)

(assert (=> d!1200203 m!4641721))

(declare-fun m!4641723 () Bool)

(assert (=> d!1200203 m!4641723))

(assert (=> b!4044034 m!4641723))

(assert (=> b!4044034 m!4641723))

(declare-fun m!4641725 () Bool)

(assert (=> b!4044034 m!4641725))

(assert (=> d!1199631 d!1200203))

(assert (=> b!4042883 d!1199677))

(declare-fun d!1200205 () Bool)

(declare-fun lt!1439507 () Int)

(assert (=> d!1200205 (>= lt!1439507 0)))

(declare-fun e!2509101 () Int)

(assert (=> d!1200205 (= lt!1439507 e!2509101)))

(declare-fun c!698705 () Bool)

(assert (=> d!1200205 (= c!698705 ((_ is Nil!43249) (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965)))))))

(assert (=> d!1200205 (= (size!32333 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965)))) lt!1439507)))

(declare-fun b!4044035 () Bool)

(assert (=> b!4044035 (= e!2509101 0)))

(declare-fun b!4044036 () Bool)

(assert (=> b!4044036 (= e!2509101 (+ 1 (size!32333 (t!335212 (originalCharacters!7524 (_1!24299 (get!14192 lt!1438965)))))))))

(assert (= (and d!1200205 c!698705) b!4044035))

(assert (= (and d!1200205 (not c!698705)) b!4044036))

(declare-fun m!4641727 () Bool)

(assert (=> b!4044036 m!4641727))

(assert (=> b!4042883 d!1200205))

(declare-fun d!1200207 () Bool)

(declare-fun lt!1439508 () Int)

(assert (=> d!1200207 (>= lt!1439508 0)))

(declare-fun e!2509102 () Int)

(assert (=> d!1200207 (= lt!1439508 e!2509102)))

(declare-fun c!698706 () Bool)

(assert (=> d!1200207 (= c!698706 ((_ is Nil!43249) lt!1438767))))

(assert (=> d!1200207 (= (size!32333 lt!1438767) lt!1439508)))

(declare-fun b!4044037 () Bool)

(assert (=> b!4044037 (= e!2509102 0)))

(declare-fun b!4044038 () Bool)

(assert (=> b!4044038 (= e!2509102 (+ 1 (size!32333 (t!335212 lt!1438767))))))

(assert (= (and d!1200207 c!698706) b!4044037))

(assert (= (and d!1200207 (not c!698706)) b!4044038))

(declare-fun m!4641729 () Bool)

(assert (=> b!4044038 m!4641729))

(assert (=> b!4043108 d!1200207))

(assert (=> b!4043108 d!1199379))

(declare-fun d!1200209 () Bool)

(assert (=> d!1200209 (= (inv!57802 (tag!7784 (h!48671 (t!335214 rules!2999)))) (= (mod (str.len (value!217967 (tag!7784 (h!48671 (t!335214 rules!2999))))) 2) 0))))

(assert (=> b!4043203 d!1200209))

(declare-fun d!1200211 () Bool)

(declare-fun res!1647170 () Bool)

(declare-fun e!2509103 () Bool)

(assert (=> d!1200211 (=> (not res!1647170) (not e!2509103))))

(assert (=> d!1200211 (= res!1647170 (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999))))))))

(assert (=> d!1200211 (= (inv!57806 (transformation!6924 (h!48671 (t!335214 rules!2999)))) e!2509103)))

(declare-fun b!4044039 () Bool)

(assert (=> b!4044039 (= e!2509103 (equivClasses!2858 (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999))))))))

(assert (= (and d!1200211 res!1647170) b!4044039))

(declare-fun m!4641733 () Bool)

(assert (=> d!1200211 m!4641733))

(declare-fun m!4641735 () Bool)

(assert (=> b!4044039 m!4641735))

(assert (=> b!4043203 d!1200211))

(assert (=> b!4043082 d!1199661))

(declare-fun b!4044040 () Bool)

(declare-fun e!2509104 () Bool)

(declare-fun e!2509105 () Bool)

(assert (=> b!4044040 (= e!2509104 e!2509105)))

(declare-fun res!1647172 () Bool)

(assert (=> b!4044040 (=> (not res!1647172) (not e!2509105))))

(assert (=> b!4044040 (= res!1647172 (not ((_ is Nil!43249) (tail!6287 lt!1438794))))))

(declare-fun b!4044041 () Bool)

(declare-fun res!1647173 () Bool)

(assert (=> b!4044041 (=> (not res!1647173) (not e!2509105))))

(assert (=> b!4044041 (= res!1647173 (= (head!8555 (tail!6287 lt!1438798)) (head!8555 (tail!6287 lt!1438794))))))

(declare-fun d!1200215 () Bool)

(declare-fun e!2509106 () Bool)

(assert (=> d!1200215 e!2509106))

(declare-fun res!1647171 () Bool)

(assert (=> d!1200215 (=> res!1647171 e!2509106)))

(declare-fun lt!1439509 () Bool)

(assert (=> d!1200215 (= res!1647171 (not lt!1439509))))

(assert (=> d!1200215 (= lt!1439509 e!2509104)))

(declare-fun res!1647174 () Bool)

(assert (=> d!1200215 (=> res!1647174 e!2509104)))

(assert (=> d!1200215 (= res!1647174 ((_ is Nil!43249) (tail!6287 lt!1438798)))))

(assert (=> d!1200215 (= (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438794)) lt!1439509)))

(declare-fun b!4044042 () Bool)

(assert (=> b!4044042 (= e!2509105 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438798)) (tail!6287 (tail!6287 lt!1438794))))))

(declare-fun b!4044043 () Bool)

(assert (=> b!4044043 (= e!2509106 (>= (size!32333 (tail!6287 lt!1438794)) (size!32333 (tail!6287 lt!1438798))))))

(assert (= (and d!1200215 (not res!1647174)) b!4044040))

(assert (= (and b!4044040 res!1647172) b!4044041))

(assert (= (and b!4044041 res!1647173) b!4044042))

(assert (= (and d!1200215 (not res!1647171)) b!4044043))

(assert (=> b!4044041 m!4639565))

(assert (=> b!4044041 m!4641317))

(assert (=> b!4044041 m!4639571))

(declare-fun m!4641737 () Bool)

(assert (=> b!4044041 m!4641737))

(assert (=> b!4044042 m!4639565))

(assert (=> b!4044042 m!4641313))

(assert (=> b!4044042 m!4639571))

(declare-fun m!4641741 () Bool)

(assert (=> b!4044042 m!4641741))

(assert (=> b!4044042 m!4641313))

(assert (=> b!4044042 m!4641741))

(declare-fun m!4641743 () Bool)

(assert (=> b!4044042 m!4641743))

(assert (=> b!4044043 m!4639571))

(declare-fun m!4641745 () Bool)

(assert (=> b!4044043 m!4641745))

(assert (=> b!4044043 m!4639565))

(assert (=> b!4044043 m!4641421))

(assert (=> b!4042676 d!1200215))

(assert (=> b!4042676 d!1199899))

(declare-fun d!1200217 () Bool)

(assert (=> d!1200217 (= (tail!6287 lt!1438794) (t!335212 lt!1438794))))

(assert (=> b!4042676 d!1200217))

(declare-fun d!1200219 () Bool)

(declare-fun lt!1439510 () Int)

(assert (=> d!1200219 (>= lt!1439510 0)))

(declare-fun e!2509108 () Int)

(assert (=> d!1200219 (= lt!1439510 e!2509108)))

(declare-fun c!698707 () Bool)

(assert (=> d!1200219 (= c!698707 ((_ is Nil!43249) lt!1439039))))

(assert (=> d!1200219 (= (size!32333 lt!1439039) lt!1439510)))

(declare-fun b!4044044 () Bool)

(assert (=> b!4044044 (= e!2509108 0)))

(declare-fun b!4044045 () Bool)

(assert (=> b!4044045 (= e!2509108 (+ 1 (size!32333 (t!335212 lt!1439039))))))

(assert (= (and d!1200219 c!698707) b!4044044))

(assert (= (and d!1200219 (not c!698707)) b!4044045))

(declare-fun m!4641747 () Bool)

(assert (=> b!4044045 m!4641747))

(assert (=> b!4043134 d!1200219))

(assert (=> b!4043134 d!1199381))

(assert (=> b!4043134 d!1199549))

(assert (=> b!4043162 d!1199671))

(declare-fun d!1200221 () Bool)

(declare-fun c!698708 () Bool)

(assert (=> d!1200221 (= c!698708 ((_ is Node!13135) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun e!2509109 () Bool)

(assert (=> d!1200221 (= (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))) e!2509109)))

(declare-fun b!4044046 () Bool)

(assert (=> b!4044046 (= e!2509109 (inv!57811 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun b!4044047 () Bool)

(declare-fun e!2509110 () Bool)

(assert (=> b!4044047 (= e!2509109 e!2509110)))

(declare-fun res!1647175 () Bool)

(assert (=> b!4044047 (= res!1647175 (not ((_ is Leaf!20304) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))))))))

(assert (=> b!4044047 (=> res!1647175 e!2509110)))

(declare-fun b!4044048 () Bool)

(assert (=> b!4044048 (= e!2509110 (inv!57812 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))))))

(assert (= (and d!1200221 c!698708) b!4044046))

(assert (= (and d!1200221 (not c!698708)) b!4044047))

(assert (= (and b!4044047 (not res!1647175)) b!4044048))

(declare-fun m!4641753 () Bool)

(assert (=> b!4044046 m!4641753))

(declare-fun m!4641755 () Bool)

(assert (=> b!4044048 m!4641755))

(assert (=> b!4043169 d!1200221))

(declare-fun b!4044054 () Bool)

(declare-fun e!2509112 () Bool)

(declare-fun lt!1439512 () List!43373)

(assert (=> b!4044054 (= e!2509112 (or (not (= lt!1438799 Nil!43249)) (= lt!1439512 (t!335212 newSuffix!27))))))

(declare-fun b!4044052 () Bool)

(declare-fun e!2509113 () List!43373)

(assert (=> b!4044052 (= e!2509113 (Cons!43249 (h!48669 (t!335212 newSuffix!27)) (++!11326 (t!335212 (t!335212 newSuffix!27)) lt!1438799)))))

(declare-fun b!4044051 () Bool)

(assert (=> b!4044051 (= e!2509113 lt!1438799)))

(declare-fun b!4044053 () Bool)

(declare-fun res!1647177 () Bool)

(assert (=> b!4044053 (=> (not res!1647177) (not e!2509112))))

(assert (=> b!4044053 (= res!1647177 (= (size!32333 lt!1439512) (+ (size!32333 (t!335212 newSuffix!27)) (size!32333 lt!1438799))))))

(declare-fun d!1200227 () Bool)

(assert (=> d!1200227 e!2509112))

(declare-fun res!1647176 () Bool)

(assert (=> d!1200227 (=> (not res!1647176) (not e!2509112))))

(assert (=> d!1200227 (= res!1647176 (= (content!6581 lt!1439512) ((_ map or) (content!6581 (t!335212 newSuffix!27)) (content!6581 lt!1438799))))))

(assert (=> d!1200227 (= lt!1439512 e!2509113)))

(declare-fun c!698710 () Bool)

(assert (=> d!1200227 (= c!698710 ((_ is Nil!43249) (t!335212 newSuffix!27)))))

(assert (=> d!1200227 (= (++!11326 (t!335212 newSuffix!27) lt!1438799) lt!1439512)))

(assert (= (and d!1200227 c!698710) b!4044051))

(assert (= (and d!1200227 (not c!698710)) b!4044052))

(assert (= (and d!1200227 res!1647176) b!4044053))

(assert (= (and b!4044053 res!1647177) b!4044054))

(declare-fun m!4641759 () Bool)

(assert (=> b!4044052 m!4641759))

(declare-fun m!4641761 () Bool)

(assert (=> b!4044053 m!4641761))

(assert (=> b!4044053 m!4640135))

(assert (=> b!4044053 m!4640223))

(declare-fun m!4641763 () Bool)

(assert (=> d!1200227 m!4641763))

(declare-fun m!4641765 () Bool)

(assert (=> d!1200227 m!4641765))

(assert (=> d!1200227 m!4640229))

(assert (=> b!4043181 d!1200227))

(declare-fun d!1200231 () Bool)

(assert (=> d!1200231 (= (isEmpty!25816 lt!1438867) (not ((_ is Some!9337) lt!1438867)))))

(assert (=> d!1199343 d!1200231))

(declare-fun b!4044059 () Bool)

(declare-fun e!2509116 () Bool)

(declare-fun e!2509117 () Bool)

(assert (=> b!4044059 (= e!2509116 e!2509117)))

(declare-fun res!1647181 () Bool)

(assert (=> b!4044059 (=> (not res!1647181) (not e!2509117))))

(assert (=> b!4044059 (= res!1647181 (not ((_ is Nil!43249) lt!1438785)))))

(declare-fun b!4044060 () Bool)

(declare-fun res!1647182 () Bool)

(assert (=> b!4044060 (=> (not res!1647182) (not e!2509117))))

(assert (=> b!4044060 (= res!1647182 (= (head!8555 lt!1438785) (head!8555 lt!1438785)))))

(declare-fun d!1200233 () Bool)

(declare-fun e!2509118 () Bool)

(assert (=> d!1200233 e!2509118))

(declare-fun res!1647180 () Bool)

(assert (=> d!1200233 (=> res!1647180 e!2509118)))

(declare-fun lt!1439514 () Bool)

(assert (=> d!1200233 (= res!1647180 (not lt!1439514))))

(assert (=> d!1200233 (= lt!1439514 e!2509116)))

(declare-fun res!1647183 () Bool)

(assert (=> d!1200233 (=> res!1647183 e!2509116)))

(assert (=> d!1200233 (= res!1647183 ((_ is Nil!43249) lt!1438785))))

(assert (=> d!1200233 (= (isPrefix!4011 lt!1438785 lt!1438785) lt!1439514)))

(declare-fun b!4044061 () Bool)

(assert (=> b!4044061 (= e!2509117 (isPrefix!4011 (tail!6287 lt!1438785) (tail!6287 lt!1438785)))))

(declare-fun b!4044062 () Bool)

(assert (=> b!4044062 (= e!2509118 (>= (size!32333 lt!1438785) (size!32333 lt!1438785)))))

(assert (= (and d!1200233 (not res!1647183)) b!4044059))

(assert (= (and b!4044059 res!1647181) b!4044060))

(assert (= (and b!4044060 res!1647182) b!4044061))

(assert (= (and d!1200233 (not res!1647180)) b!4044062))

(assert (=> b!4044060 m!4639993))

(assert (=> b!4044060 m!4639993))

(assert (=> b!4044061 m!4639997))

(assert (=> b!4044061 m!4639997))

(assert (=> b!4044061 m!4639997))

(assert (=> b!4044061 m!4639997))

(declare-fun m!4641777 () Bool)

(assert (=> b!4044061 m!4641777))

(assert (=> b!4044062 m!4639471))

(assert (=> b!4044062 m!4639471))

(assert (=> d!1199343 d!1200233))

(declare-fun d!1200237 () Bool)

(assert (=> d!1200237 (isPrefix!4011 lt!1438785 lt!1438785)))

(declare-fun lt!1439515 () Unit!62477)

(assert (=> d!1200237 (= lt!1439515 (choose!24502 lt!1438785 lt!1438785))))

(assert (=> d!1200237 (= (lemmaIsPrefixRefl!2578 lt!1438785 lt!1438785) lt!1439515)))

(declare-fun bs!591134 () Bool)

(assert (= bs!591134 d!1200237))

(assert (=> bs!591134 m!4639495))

(declare-fun m!4641779 () Bool)

(assert (=> bs!591134 m!4641779))

(assert (=> d!1199343 d!1200237))

(assert (=> d!1199343 d!1199807))

(declare-fun bs!591135 () Bool)

(declare-fun d!1200241 () Bool)

(assert (= bs!591135 (and d!1200241 d!1199993)))

(declare-fun lambda!127455 () Int)

(assert (=> bs!591135 (= lambda!127455 lambda!127441)))

(declare-fun bs!591136 () Bool)

(assert (= bs!591136 (and d!1200241 d!1200105)))

(assert (=> bs!591136 (= (and (= (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toChars!9327 (transformation!6924 (h!48671 rules!2999)))) (= (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (h!48671 rules!2999))))) (= lambda!127455 lambda!127451))))

(declare-fun bs!591137 () Bool)

(assert (= bs!591137 (and d!1200241 d!1200169)))

(assert (=> bs!591137 (= (and (= (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) (= (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) (= lambda!127455 lambda!127453))))

(assert (=> d!1200241 true))

(assert (=> d!1200241 (< (dynLambda!18378 order!22669 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (dynLambda!18377 order!22667 lambda!127455))))

(assert (=> d!1200241 true))

(assert (=> d!1200241 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (dynLambda!18377 order!22667 lambda!127455))))

(assert (=> d!1200241 (= (semiInverseModEq!2959 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (Forall!1493 lambda!127455))))

(declare-fun bs!591138 () Bool)

(assert (= bs!591138 d!1200241))

(declare-fun m!4641801 () Bool)

(assert (=> bs!591138 m!4641801))

(assert (=> d!1199615 d!1200241))

(assert (=> b!4042922 d!1200041))

(declare-fun d!1200247 () Bool)

(assert (=> d!1200247 (= (head!8555 lt!1438774) (h!48669 lt!1438774))))

(assert (=> b!4042922 d!1200247))

(declare-fun d!1200249 () Bool)

(declare-fun lt!1439519 () Int)

(assert (=> d!1200249 (= lt!1439519 (size!32333 (list!16106 (seqFromList!5141 (_1!24301 lt!1438966)))))))

(assert (=> d!1200249 (= lt!1439519 (size!32337 (c!698370 (seqFromList!5141 (_1!24301 lt!1438966)))))))

(assert (=> d!1200249 (= (size!32336 (seqFromList!5141 (_1!24301 lt!1438966))) lt!1439519)))

(declare-fun bs!591139 () Bool)

(assert (= bs!591139 d!1200249))

(assert (=> bs!591139 m!4639907))

(declare-fun m!4641807 () Bool)

(assert (=> bs!591139 m!4641807))

(assert (=> bs!591139 m!4641807))

(declare-fun m!4641811 () Bool)

(assert (=> bs!591139 m!4641811))

(declare-fun m!4641813 () Bool)

(assert (=> bs!591139 m!4641813))

(assert (=> b!4042886 d!1200249))

(declare-fun bs!591141 () Bool)

(declare-fun d!1200251 () Bool)

(assert (= bs!591141 (and d!1200251 d!1199993)))

(declare-fun lambda!127456 () Int)

(assert (=> bs!591141 (= (and (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (= lambda!127456 lambda!127441))))

(declare-fun bs!591142 () Bool)

(assert (= bs!591142 (and d!1200251 d!1200105)))

(assert (=> bs!591142 (= (and (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (h!48671 rules!2999)))) (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (h!48671 rules!2999))))) (= lambda!127456 lambda!127451))))

(declare-fun bs!591143 () Bool)

(assert (= bs!591143 (and d!1200251 d!1200169)))

(assert (=> bs!591143 (= lambda!127456 lambda!127453)))

(declare-fun bs!591144 () Bool)

(assert (= bs!591144 (and d!1200251 d!1200241)))

(assert (=> bs!591144 (= (and (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (= lambda!127456 lambda!127455))))

(declare-fun b!4044077 () Bool)

(declare-fun e!2509127 () Bool)

(assert (=> b!4044077 (= e!2509127 true)))

(assert (=> d!1200251 e!2509127))

(assert (= d!1200251 b!4044077))

(assert (=> b!4044077 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (rule!9998 token!484)))) (dynLambda!18377 order!22667 lambda!127456))))

(assert (=> b!4044077 (< (dynLambda!18378 order!22669 (toChars!9327 (transformation!6924 (rule!9998 token!484)))) (dynLambda!18377 order!22667 lambda!127456))))

(assert (=> d!1200251 (= (list!16106 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 (_1!24301 lt!1438966))))) (list!16106 (seqFromList!5141 (_1!24301 lt!1438966))))))

(declare-fun lt!1439520 () Unit!62477)

(assert (=> d!1200251 (= lt!1439520 (ForallOf!826 lambda!127456 (seqFromList!5141 (_1!24301 lt!1438966))))))

(assert (=> d!1200251 (= (lemmaSemiInverse!1909 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 (_1!24301 lt!1438966))) lt!1439520)))

(declare-fun b_lambda!118161 () Bool)

(assert (=> (not b_lambda!118161) (not d!1200251)))

(declare-fun t!335375 () Bool)

(declare-fun tb!243229 () Bool)

(assert (=> (and b!4042499 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335375) tb!243229))

(declare-fun tp!1227234 () Bool)

(declare-fun e!2509128 () Bool)

(declare-fun b!4044078 () Bool)

(assert (=> b!4044078 (= e!2509128 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 (_1!24301 lt!1438966)))))) tp!1227234))))

(declare-fun result!294770 () Bool)

(assert (=> tb!243229 (= result!294770 (and (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 (_1!24301 lt!1438966))))) e!2509128))))

(assert (= tb!243229 b!4044078))

(declare-fun m!4641819 () Bool)

(assert (=> b!4044078 m!4641819))

(declare-fun m!4641821 () Bool)

(assert (=> tb!243229 m!4641821))

(assert (=> d!1200251 t!335375))

(declare-fun b_and!310985 () Bool)

(assert (= b_and!310943 (and (=> t!335375 result!294770) b_and!310985)))

(declare-fun t!335379 () Bool)

(declare-fun tb!243233 () Bool)

(assert (=> (and b!4042502 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335379) tb!243233))

(declare-fun result!294774 () Bool)

(assert (= result!294774 result!294770))

(assert (=> d!1200251 t!335379))

(declare-fun b_and!310987 () Bool)

(assert (= b_and!310945 (and (=> t!335379 result!294774) b_and!310987)))

(declare-fun t!335381 () Bool)

(declare-fun tb!243235 () Bool)

(assert (=> (and b!4043204 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335381) tb!243235))

(declare-fun result!294776 () Bool)

(assert (= result!294776 result!294770))

(assert (=> d!1200251 t!335381))

(declare-fun b_and!310989 () Bool)

(assert (= b_and!310947 (and (=> t!335381 result!294776) b_and!310989)))

(declare-fun b_lambda!118165 () Bool)

(assert (=> (not b_lambda!118165) (not d!1200251)))

(declare-fun tb!243239 () Bool)

(declare-fun t!335385 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335385) tb!243239))

(declare-fun result!294780 () Bool)

(assert (=> tb!243239 (= result!294780 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 (_1!24301 lt!1438966)))))))

(declare-fun m!4641825 () Bool)

(assert (=> tb!243239 m!4641825))

(assert (=> d!1200251 t!335385))

(declare-fun b_and!310995 () Bool)

(assert (= b_and!310955 (and (=> t!335385 result!294780) b_and!310995)))

(declare-fun t!335389 () Bool)

(declare-fun tb!243243 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335389) tb!243243))

(declare-fun result!294784 () Bool)

(assert (= result!294784 result!294780))

(assert (=> d!1200251 t!335389))

(declare-fun b_and!310999 () Bool)

(assert (= b_and!310957 (and (=> t!335389 result!294784) b_and!310999)))

(declare-fun tb!243245 () Bool)

(declare-fun t!335391 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335391) tb!243245))

(declare-fun result!294786 () Bool)

(assert (= result!294786 result!294780))

(assert (=> d!1200251 t!335391))

(declare-fun b_and!311001 () Bool)

(assert (= b_and!310959 (and (=> t!335391 result!294786) b_and!311001)))

(assert (=> d!1200251 m!4639907))

(declare-fun m!4641831 () Bool)

(assert (=> d!1200251 m!4641831))

(assert (=> d!1200251 m!4639907))

(assert (=> d!1200251 m!4641807))

(declare-fun m!4641833 () Bool)

(assert (=> d!1200251 m!4641833))

(declare-fun m!4641835 () Bool)

(assert (=> d!1200251 m!4641835))

(assert (=> d!1200251 m!4639907))

(declare-fun m!4641837 () Bool)

(assert (=> d!1200251 m!4641837))

(assert (=> d!1200251 m!4641831))

(assert (=> d!1200251 m!4641833))

(assert (=> b!4042886 d!1200251))

(assert (=> b!4042886 d!1199693))

(declare-fun d!1200271 () Bool)

(declare-fun e!2509132 () Bool)

(assert (=> d!1200271 e!2509132))

(declare-fun res!1647192 () Bool)

(assert (=> d!1200271 (=> res!1647192 e!2509132)))

(assert (=> d!1200271 (= res!1647192 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(declare-fun lt!1439523 () Unit!62477)

(assert (=> d!1200271 (= lt!1439523 (choose!24515 (regex!6924 (rule!9998 token!484)) lt!1438775))))

(assert (=> d!1200271 (validRegex!5351 (regex!6924 (rule!9998 token!484)))))

(assert (=> d!1200271 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1362 (regex!6924 (rule!9998 token!484)) lt!1438775) lt!1439523)))

(declare-fun b!4044081 () Bool)

(assert (=> b!4044081 (= e!2509132 (matchR!5782 (regex!6924 (rule!9998 token!484)) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(assert (= (and d!1200271 (not res!1647192)) b!4044081))

(assert (=> d!1200271 m!4639359))

(assert (=> d!1200271 m!4640049))

(assert (=> d!1200271 m!4639885))

(assert (=> d!1200271 m!4639359))

(assert (=> d!1200271 m!4639887))

(assert (=> d!1200271 m!4639885))

(declare-fun m!4641841 () Bool)

(assert (=> d!1200271 m!4641841))

(assert (=> d!1200271 m!4639917))

(assert (=> b!4044081 m!4639885))

(assert (=> b!4044081 m!4639359))

(assert (=> b!4044081 m!4639885))

(assert (=> b!4044081 m!4639359))

(assert (=> b!4044081 m!4639887))

(assert (=> b!4044081 m!4639889))

(assert (=> b!4042886 d!1200271))

(assert (=> b!4042886 d!1199695))

(assert (=> b!4042886 d!1199697))

(declare-fun d!1200273 () Bool)

(assert (=> d!1200273 (= (apply!10113 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 (_1!24301 lt!1438966))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 token!484))) (seqFromList!5141 (_1!24301 lt!1438966))))))

(declare-fun b_lambda!118167 () Bool)

(assert (=> (not b_lambda!118167) (not d!1200273)))

(assert (=> d!1200273 t!335385))

(declare-fun b_and!311003 () Bool)

(assert (= b_and!310995 (and (=> t!335385 result!294780) b_and!311003)))

(assert (=> d!1200273 t!335389))

(declare-fun b_and!311005 () Bool)

(assert (= b_and!310999 (and (=> t!335389 result!294784) b_and!311005)))

(assert (=> d!1200273 t!335391))

(declare-fun b_and!311007 () Bool)

(assert (= b_and!311001 (and (=> t!335391 result!294786) b_and!311007)))

(assert (=> d!1200273 m!4639907))

(assert (=> d!1200273 m!4641831))

(assert (=> b!4042886 d!1200273))

(declare-fun d!1200279 () Bool)

(assert (=> d!1200279 (= (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))) ((_ is Nil!43249) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 token!484)) Nil!43249 (size!32333 Nil!43249) lt!1438775 lt!1438775 (size!32333 lt!1438775)))))))

(assert (=> b!4042886 d!1200279))

(declare-fun d!1200281 () Bool)

(assert (=> d!1200281 (= (seqFromList!5141 (_1!24301 lt!1438966)) (fromListB!2346 (_1!24301 lt!1438966)))))

(declare-fun bs!591147 () Bool)

(assert (= bs!591147 d!1200281))

(declare-fun m!4641851 () Bool)

(assert (=> bs!591147 m!4641851))

(assert (=> b!4042886 d!1200281))

(declare-fun d!1200285 () Bool)

(assert (=> d!1200285 (= (list!16106 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))) (list!16107 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))))))

(declare-fun bs!591148 () Bool)

(assert (= bs!591148 d!1200285))

(declare-fun m!4641853 () Bool)

(assert (=> bs!591148 m!4641853))

(assert (=> b!4043178 d!1200285))

(declare-fun d!1200287 () Bool)

(declare-fun lt!1439524 () Int)

(assert (=> d!1200287 (>= lt!1439524 0)))

(declare-fun e!2509135 () Int)

(assert (=> d!1200287 (= lt!1439524 e!2509135)))

(declare-fun c!698718 () Bool)

(assert (=> d!1200287 (= c!698718 ((_ is Nil!43249) (_2!24299 (get!14192 lt!1438965))))))

(assert (=> d!1200287 (= (size!32333 (_2!24299 (get!14192 lt!1438965))) lt!1439524)))

(declare-fun b!4044086 () Bool)

(assert (=> b!4044086 (= e!2509135 0)))

(declare-fun b!4044087 () Bool)

(assert (=> b!4044087 (= e!2509135 (+ 1 (size!32333 (t!335212 (_2!24299 (get!14192 lt!1438965))))))))

(assert (= (and d!1200287 c!698718) b!4044086))

(assert (= (and d!1200287 (not c!698718)) b!4044087))

(declare-fun m!4641855 () Bool)

(assert (=> b!4044087 m!4641855))

(assert (=> b!4042890 d!1200287))

(assert (=> b!4042890 d!1199677))

(assert (=> b!4042890 d!1199697))

(declare-fun d!1200289 () Bool)

(declare-fun lt!1439525 () Int)

(assert (=> d!1200289 (>= lt!1439525 0)))

(declare-fun e!2509136 () Int)

(assert (=> d!1200289 (= lt!1439525 e!2509136)))

(declare-fun c!698719 () Bool)

(assert (=> d!1200289 (= c!698719 ((_ is Nil!43249) lt!1439037))))

(assert (=> d!1200289 (= (size!32333 lt!1439037) lt!1439525)))

(declare-fun b!4044088 () Bool)

(assert (=> b!4044088 (= e!2509136 0)))

(declare-fun b!4044089 () Bool)

(assert (=> b!4044089 (= e!2509136 (+ 1 (size!32333 (t!335212 lt!1439037))))))

(assert (= (and d!1200289 c!698719) b!4044088))

(assert (= (and d!1200289 (not c!698719)) b!4044089))

(declare-fun m!4641857 () Bool)

(assert (=> b!4044089 m!4641857))

(assert (=> b!4043130 d!1200289))

(assert (=> b!4043130 d!1199961))

(assert (=> b!4043130 d!1200053))

(declare-fun b!4044090 () Bool)

(declare-fun res!1647196 () Bool)

(declare-fun e!2509143 () Bool)

(assert (=> b!4044090 (=> res!1647196 e!2509143)))

(assert (=> b!4044090 (= res!1647196 (not (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))))))))

(declare-fun d!1200291 () Bool)

(declare-fun e!2509140 () Bool)

(assert (=> d!1200291 e!2509140))

(declare-fun c!698722 () Bool)

(assert (=> d!1200291 (= c!698722 ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun lt!1439526 () Bool)

(declare-fun e!2509139 () Bool)

(assert (=> d!1200291 (= lt!1439526 e!2509139)))

(declare-fun c!698721 () Bool)

(assert (=> d!1200291 (= c!698721 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))))))

(assert (=> d!1200291 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1200291 (= (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))) lt!1439526)))

(declare-fun b!4044091 () Bool)

(assert (=> b!4044091 (= e!2509143 (not (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))))

(declare-fun b!4044092 () Bool)

(declare-fun res!1647197 () Bool)

(declare-fun e!2509142 () Bool)

(assert (=> b!4044092 (=> res!1647197 e!2509142)))

(assert (=> b!4044092 (= res!1647197 (not ((_ is ElementMatch!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun e!2509141 () Bool)

(assert (=> b!4044092 (= e!2509141 e!2509142)))

(declare-fun b!4044093 () Bool)

(assert (=> b!4044093 (= e!2509139 (nullable!4151 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun b!4044094 () Bool)

(declare-fun call!287634 () Bool)

(assert (=> b!4044094 (= e!2509140 (= lt!1439526 call!287634))))

(declare-fun b!4044095 () Bool)

(declare-fun e!2509137 () Bool)

(assert (=> b!4044095 (= e!2509137 (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun b!4044096 () Bool)

(assert (=> b!4044096 (= e!2509140 e!2509141)))

(declare-fun c!698720 () Bool)

(assert (=> b!4044096 (= c!698720 ((_ is EmptyLang!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun b!4044097 () Bool)

(assert (=> b!4044097 (= e!2509139 (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047)))))) (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047)))))))))

(declare-fun b!4044098 () Bool)

(assert (=> b!4044098 (= e!2509141 (not lt!1439526))))

(declare-fun b!4044099 () Bool)

(declare-fun e!2509138 () Bool)

(assert (=> b!4044099 (= e!2509142 e!2509138)))

(declare-fun res!1647193 () Bool)

(assert (=> b!4044099 (=> (not res!1647193) (not e!2509138))))

(assert (=> b!4044099 (= res!1647193 (not lt!1439526))))

(declare-fun b!4044100 () Bool)

(assert (=> b!4044100 (= e!2509138 e!2509143)))

(declare-fun res!1647194 () Bool)

(assert (=> b!4044100 (=> res!1647194 e!2509143)))

(assert (=> b!4044100 (= res!1647194 call!287634)))

(declare-fun b!4044101 () Bool)

(declare-fun res!1647198 () Bool)

(assert (=> b!4044101 (=> (not res!1647198) (not e!2509137))))

(assert (=> b!4044101 (= res!1647198 (not call!287634))))

(declare-fun b!4044102 () Bool)

(declare-fun res!1647199 () Bool)

(assert (=> b!4044102 (=> res!1647199 e!2509142)))

(assert (=> b!4044102 (= res!1647199 e!2509137)))

(declare-fun res!1647195 () Bool)

(assert (=> b!4044102 (=> (not res!1647195) (not e!2509137))))

(assert (=> b!4044102 (= res!1647195 lt!1439526)))

(declare-fun b!4044103 () Bool)

(declare-fun res!1647200 () Bool)

(assert (=> b!4044103 (=> (not res!1647200) (not e!2509137))))

(assert (=> b!4044103 (= res!1647200 (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047)))))))))

(declare-fun bm!287629 () Bool)

(assert (=> bm!287629 (= call!287634 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439047))))))))

(assert (= (and d!1200291 c!698721) b!4044093))

(assert (= (and d!1200291 (not c!698721)) b!4044097))

(assert (= (and d!1200291 c!698722) b!4044094))

(assert (= (and d!1200291 (not c!698722)) b!4044096))

(assert (= (and b!4044096 c!698720) b!4044098))

(assert (= (and b!4044096 (not c!698720)) b!4044092))

(assert (= (and b!4044092 (not res!1647197)) b!4044102))

(assert (= (and b!4044102 res!1647195) b!4044101))

(assert (= (and b!4044101 res!1647198) b!4044103))

(assert (= (and b!4044103 res!1647200) b!4044095))

(assert (= (and b!4044102 (not res!1647199)) b!4044099))

(assert (= (and b!4044099 res!1647193) b!4044100))

(assert (= (and b!4044100 (not res!1647194)) b!4044090))

(assert (= (and b!4044090 (not res!1647196)) b!4044091))

(assert (= (or b!4044094 b!4044100 b!4044101) bm!287629))

(assert (=> b!4044103 m!4640313))

(declare-fun m!4641865 () Bool)

(assert (=> b!4044103 m!4641865))

(assert (=> b!4044103 m!4641865))

(declare-fun m!4641867 () Bool)

(assert (=> b!4044103 m!4641867))

(assert (=> b!4044091 m!4640313))

(declare-fun m!4641869 () Bool)

(assert (=> b!4044091 m!4641869))

(assert (=> b!4044095 m!4640313))

(assert (=> b!4044095 m!4641869))

(assert (=> b!4044093 m!4640301))

(assert (=> b!4044097 m!4640313))

(assert (=> b!4044097 m!4641869))

(assert (=> b!4044097 m!4641869))

(declare-fun m!4641873 () Bool)

(assert (=> b!4044097 m!4641873))

(assert (=> b!4044097 m!4640313))

(assert (=> b!4044097 m!4641865))

(assert (=> b!4044097 m!4641873))

(assert (=> b!4044097 m!4641865))

(declare-fun m!4641877 () Bool)

(assert (=> b!4044097 m!4641877))

(assert (=> b!4044090 m!4640313))

(assert (=> b!4044090 m!4641865))

(assert (=> b!4044090 m!4641865))

(assert (=> b!4044090 m!4641867))

(assert (=> bm!287629 m!4640313))

(declare-fun m!4641879 () Bool)

(assert (=> bm!287629 m!4641879))

(assert (=> d!1200291 m!4640313))

(assert (=> d!1200291 m!4641879))

(assert (=> d!1200291 m!4640299))

(assert (=> b!4043166 d!1200291))

(assert (=> b!4043166 d!1199791))

(assert (=> b!4043166 d!1199793))

(assert (=> b!4043166 d!1199671))

(declare-fun d!1200303 () Bool)

(declare-fun c!698726 () Bool)

(assert (=> d!1200303 (= c!698726 ((_ is Nil!43249) lt!1439010))))

(declare-fun e!2509150 () (InoxSet C!23844))

(assert (=> d!1200303 (= (content!6581 lt!1439010) e!2509150)))

(declare-fun b!4044114 () Bool)

(assert (=> b!4044114 (= e!2509150 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044115 () Bool)

(assert (=> b!4044115 (= e!2509150 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439010) true) (content!6581 (t!335212 lt!1439010))))))

(assert (= (and d!1200303 c!698726) b!4044114))

(assert (= (and d!1200303 (not c!698726)) b!4044115))

(declare-fun m!4641881 () Bool)

(assert (=> b!4044115 m!4641881))

(declare-fun m!4641883 () Bool)

(assert (=> b!4044115 m!4641883))

(assert (=> d!1199543 d!1200303))

(assert (=> d!1199543 d!1199687))

(assert (=> d!1199543 d!1199951))

(declare-fun d!1200305 () Bool)

(declare-fun c!698727 () Bool)

(assert (=> d!1200305 (= c!698727 ((_ is Nil!43249) lt!1438812))))

(declare-fun e!2509151 () (InoxSet C!23844))

(assert (=> d!1200305 (= (content!6581 lt!1438812) e!2509151)))

(declare-fun b!4044116 () Bool)

(assert (=> b!4044116 (= e!2509151 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044117 () Bool)

(assert (=> b!4044117 (= e!2509151 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438812) true) (content!6581 (t!335212 lt!1438812))))))

(assert (= (and d!1200305 c!698727) b!4044116))

(assert (= (and d!1200305 (not c!698727)) b!4044117))

(declare-fun m!4641885 () Bool)

(assert (=> b!4044117 m!4641885))

(declare-fun m!4641887 () Bool)

(assert (=> b!4044117 m!4641887))

(assert (=> d!1199321 d!1200305))

(assert (=> d!1199321 d!1199685))

(declare-fun d!1200307 () Bool)

(declare-fun c!698728 () Bool)

(assert (=> d!1200307 (= c!698728 ((_ is Nil!43249) lt!1438762))))

(declare-fun e!2509152 () (InoxSet C!23844))

(assert (=> d!1200307 (= (content!6581 lt!1438762) e!2509152)))

(declare-fun b!4044118 () Bool)

(assert (=> b!4044118 (= e!2509152 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044119 () Bool)

(assert (=> b!4044119 (= e!2509152 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438762) true) (content!6581 (t!335212 lt!1438762))))))

(assert (= (and d!1200307 c!698728) b!4044118))

(assert (= (and d!1200307 (not c!698728)) b!4044119))

(declare-fun m!4641889 () Bool)

(assert (=> b!4044119 m!4641889))

(declare-fun m!4641891 () Bool)

(assert (=> b!4044119 m!4641891))

(assert (=> d!1199321 d!1200307))

(assert (=> b!4042651 d!1199715))

(assert (=> b!4042651 d!1199717))

(assert (=> b!4042651 d!1199719))

(declare-fun bs!591151 () Bool)

(declare-fun d!1200309 () Bool)

(assert (= bs!591151 (and d!1200309 d!1199941)))

(declare-fun lambda!127457 () Int)

(assert (=> bs!591151 (= (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (h!48671 rules!2999)))) (= lambda!127457 lambda!127434))))

(assert (=> d!1200309 true))

(assert (=> d!1200309 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (rule!9998 token!484)))) (dynLambda!18376 order!22665 lambda!127457))))

(assert (=> d!1200309 (= (equivClasses!2858 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) (Forall2!1093 lambda!127457))))

(declare-fun bs!591153 () Bool)

(assert (= bs!591153 d!1200309))

(declare-fun m!4641897 () Bool)

(assert (=> bs!591153 m!4641897))

(assert (=> b!4042953 d!1200309))

(assert (=> d!1199599 d!1199619))

(assert (=> d!1199599 d!1199601))

(assert (=> d!1199599 d!1199573))

(assert (=> d!1199599 d!1199631))

(declare-fun d!1200317 () Bool)

(assert (=> d!1200317 (= (maxPrefixOneRule!2823 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) lt!1438785) (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (seqFromList!5141 lt!1438792)) (rule!9998 (_1!24299 (v!39739 lt!1438779))) (size!32333 lt!1438792) lt!1438792) (_2!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1200317 true))

(declare-fun _$59!701 () Unit!62477)

(assert (=> d!1200317 (= (choose!24506 thiss!21717 rules!2999 lt!1438792 lt!1438785 (_2!24299 (v!39739 lt!1438779)) (rule!9998 (_1!24299 (v!39739 lt!1438779)))) _$59!701)))

(declare-fun bs!591158 () Bool)

(assert (= bs!591158 d!1200317))

(assert (=> bs!591158 m!4639337))

(assert (=> bs!591158 m!4639317))

(assert (=> bs!591158 m!4639317))

(assert (=> bs!591158 m!4639319))

(assert (=> bs!591158 m!4639331))

(assert (=> d!1199599 d!1200317))

(assert (=> d!1199599 d!1199603))

(declare-fun b!4044191 () Bool)

(declare-fun res!1647238 () Bool)

(declare-fun e!2509194 () Bool)

(assert (=> b!4044191 (=> res!1647238 e!2509194)))

(assert (=> b!4044191 (= res!1647238 (not ((_ is IntegerValue!21464) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792)))))))

(declare-fun e!2509193 () Bool)

(assert (=> b!4044191 (= e!2509193 e!2509194)))

(declare-fun b!4044192 () Bool)

(assert (=> b!4044192 (= e!2509193 (inv!17 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792))))))

(declare-fun b!4044193 () Bool)

(declare-fun e!2509195 () Bool)

(assert (=> b!4044193 (= e!2509195 (inv!16 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792))))))

(declare-fun b!4044194 () Bool)

(assert (=> b!4044194 (= e!2509195 e!2509193)))

(declare-fun c!698748 () Bool)

(assert (=> b!4044194 (= c!698748 ((_ is IntegerValue!21463) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792))))))

(declare-fun d!1200367 () Bool)

(declare-fun c!698749 () Bool)

(assert (=> d!1200367 (= c!698749 ((_ is IntegerValue!21462) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792))))))

(assert (=> d!1200367 (= (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792))) e!2509195)))

(declare-fun b!4044195 () Bool)

(assert (=> b!4044195 (= e!2509194 (inv!15 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (seqFromList!5141 lt!1438792))))))

(assert (= (and d!1200367 c!698749) b!4044193))

(assert (= (and d!1200367 (not c!698749)) b!4044194))

(assert (= (and b!4044194 c!698748) b!4044192))

(assert (= (and b!4044194 (not c!698748)) b!4044191))

(assert (= (and b!4044191 (not res!1647238)) b!4044195))

(declare-fun m!4641999 () Bool)

(assert (=> b!4044192 m!4641999))

(declare-fun m!4642001 () Bool)

(assert (=> b!4044193 m!4642001))

(declare-fun m!4642003 () Bool)

(assert (=> b!4044195 m!4642003))

(assert (=> tb!243105 d!1200367))

(declare-fun b!4044205 () Bool)

(declare-fun e!2509200 () Option!9338)

(declare-fun lt!1439549 () Option!9338)

(declare-fun lt!1439552 () Option!9338)

(assert (=> b!4044205 (= e!2509200 (ite (and ((_ is None!9337) lt!1439549) ((_ is None!9337) lt!1439552)) None!9337 (ite ((_ is None!9337) lt!1439552) lt!1439549 (ite ((_ is None!9337) lt!1439549) lt!1439552 (ite (>= (size!32334 (_1!24299 (v!39739 lt!1439549))) (size!32334 (_1!24299 (v!39739 lt!1439552)))) lt!1439549 lt!1439552)))))))

(declare-fun call!287638 () Option!9338)

(assert (=> b!4044205 (= lt!1439549 call!287638)))

(assert (=> b!4044205 (= lt!1439552 (maxPrefix!3811 thiss!21717 (t!335214 (t!335214 rules!2999)) lt!1438775))))

(declare-fun b!4044206 () Bool)

(declare-fun res!1647252 () Bool)

(declare-fun e!2509201 () Bool)

(assert (=> b!4044206 (=> (not res!1647252) (not e!2509201))))

(declare-fun lt!1439553 () Option!9338)

(assert (=> b!4044206 (= res!1647252 (< (size!32333 (_2!24299 (get!14192 lt!1439553))) (size!32333 lt!1438775)))))

(declare-fun bm!287633 () Bool)

(assert (=> bm!287633 (= call!287638 (maxPrefixOneRule!2823 thiss!21717 (h!48671 (t!335214 rules!2999)) lt!1438775))))

(declare-fun b!4044207 () Bool)

(declare-fun res!1647250 () Bool)

(assert (=> b!4044207 (=> (not res!1647250) (not e!2509201))))

(assert (=> b!4044207 (= res!1647250 (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439553)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439553))))))))

(declare-fun b!4044208 () Bool)

(declare-fun e!2509199 () Bool)

(assert (=> b!4044208 (= e!2509199 e!2509201)))

(declare-fun res!1647249 () Bool)

(assert (=> b!4044208 (=> (not res!1647249) (not e!2509201))))

(assert (=> b!4044208 (= res!1647249 (isDefined!7105 lt!1439553))))

(declare-fun d!1200373 () Bool)

(assert (=> d!1200373 e!2509199))

(declare-fun res!1647246 () Bool)

(assert (=> d!1200373 (=> res!1647246 e!2509199)))

(assert (=> d!1200373 (= res!1647246 (isEmpty!25816 lt!1439553))))

(assert (=> d!1200373 (= lt!1439553 e!2509200)))

(declare-fun c!698751 () Bool)

(assert (=> d!1200373 (= c!698751 (and ((_ is Cons!43251) (t!335214 rules!2999)) ((_ is Nil!43251) (t!335214 (t!335214 rules!2999)))))))

(declare-fun lt!1439550 () Unit!62477)

(declare-fun lt!1439551 () Unit!62477)

(assert (=> d!1200373 (= lt!1439550 lt!1439551)))

(assert (=> d!1200373 (isPrefix!4011 lt!1438775 lt!1438775)))

(assert (=> d!1200373 (= lt!1439551 (lemmaIsPrefixRefl!2578 lt!1438775 lt!1438775))))

(assert (=> d!1200373 (rulesValidInductive!2526 thiss!21717 (t!335214 rules!2999))))

(assert (=> d!1200373 (= (maxPrefix!3811 thiss!21717 (t!335214 rules!2999) lt!1438775) lt!1439553)))

(declare-fun b!4044209 () Bool)

(assert (=> b!4044209 (= e!2509200 call!287638)))

(declare-fun b!4044210 () Bool)

(declare-fun res!1647251 () Bool)

(assert (=> b!4044210 (=> (not res!1647251) (not e!2509201))))

(assert (=> b!4044210 (= res!1647251 (= (value!217968 (_1!24299 (get!14192 lt!1439553))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439553)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439553)))))))))

(declare-fun b!4044211 () Bool)

(declare-fun res!1647247 () Bool)

(assert (=> b!4044211 (=> (not res!1647247) (not e!2509201))))

(assert (=> b!4044211 (= res!1647247 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439553)))) (_2!24299 (get!14192 lt!1439553))) lt!1438775))))

(declare-fun b!4044212 () Bool)

(assert (=> b!4044212 (= e!2509201 (contains!8595 (t!335214 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1439553)))))))

(declare-fun b!4044213 () Bool)

(declare-fun res!1647248 () Bool)

(assert (=> b!4044213 (=> (not res!1647248) (not e!2509201))))

(assert (=> b!4044213 (= res!1647248 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439553)))) (originalCharacters!7524 (_1!24299 (get!14192 lt!1439553)))))))

(assert (= (and d!1200373 c!698751) b!4044209))

(assert (= (and d!1200373 (not c!698751)) b!4044205))

(assert (= (or b!4044209 b!4044205) bm!287633))

(assert (= (and d!1200373 (not res!1647246)) b!4044208))

(assert (= (and b!4044208 res!1647249) b!4044213))

(assert (= (and b!4044213 res!1647248) b!4044206))

(assert (= (and b!4044206 res!1647252) b!4044211))

(assert (= (and b!4044211 res!1647247) b!4044210))

(assert (= (and b!4044210 res!1647251) b!4044207))

(assert (= (and b!4044207 res!1647250) b!4044212))

(declare-fun m!4642015 () Bool)

(assert (=> b!4044210 m!4642015))

(declare-fun m!4642017 () Bool)

(assert (=> b!4044210 m!4642017))

(assert (=> b!4044210 m!4642017))

(declare-fun m!4642019 () Bool)

(assert (=> b!4044210 m!4642019))

(assert (=> b!4044206 m!4642015))

(declare-fun m!4642021 () Bool)

(assert (=> b!4044206 m!4642021))

(assert (=> b!4044206 m!4639359))

(declare-fun m!4642025 () Bool)

(assert (=> b!4044205 m!4642025))

(assert (=> b!4044207 m!4642015))

(declare-fun m!4642027 () Bool)

(assert (=> b!4044207 m!4642027))

(assert (=> b!4044207 m!4642027))

(declare-fun m!4642035 () Bool)

(assert (=> b!4044207 m!4642035))

(assert (=> b!4044207 m!4642035))

(declare-fun m!4642041 () Bool)

(assert (=> b!4044207 m!4642041))

(assert (=> b!4044211 m!4642015))

(assert (=> b!4044211 m!4642027))

(assert (=> b!4044211 m!4642027))

(assert (=> b!4044211 m!4642035))

(assert (=> b!4044211 m!4642035))

(declare-fun m!4642047 () Bool)

(assert (=> b!4044211 m!4642047))

(assert (=> b!4044212 m!4642015))

(declare-fun m!4642049 () Bool)

(assert (=> b!4044212 m!4642049))

(declare-fun m!4642051 () Bool)

(assert (=> bm!287633 m!4642051))

(declare-fun m!4642053 () Bool)

(assert (=> b!4044208 m!4642053))

(assert (=> b!4044213 m!4642015))

(assert (=> b!4044213 m!4642027))

(assert (=> b!4044213 m!4642027))

(assert (=> b!4044213 m!4642035))

(declare-fun m!4642055 () Bool)

(assert (=> d!1200373 m!4642055))

(assert (=> d!1200373 m!4639259))

(assert (=> d!1200373 m!4639261))

(assert (=> d!1200373 m!4640855))

(assert (=> b!4042986 d!1200373))

(declare-fun d!1200377 () Bool)

(assert (=> d!1200377 (= (isEmpty!25817 (originalCharacters!7524 token!484)) ((_ is Nil!43249) (originalCharacters!7524 token!484)))))

(assert (=> d!1199635 d!1200377))

(assert (=> bm!287523 d!1199921))

(assert (=> b!4043094 d!1200041))

(declare-fun d!1200379 () Bool)

(assert (=> d!1200379 (= (head!8555 lt!1438785) (h!48669 lt!1438785))))

(assert (=> b!4043094 d!1200379))

(assert (=> b!4042930 d!1199869))

(assert (=> b!4042930 d!1200379))

(declare-fun d!1200383 () Bool)

(declare-fun c!698754 () Bool)

(assert (=> d!1200383 (= c!698754 ((_ is Nil!43249) lt!1439040))))

(declare-fun e!2509205 () (InoxSet C!23844))

(assert (=> d!1200383 (= (content!6581 lt!1439040) e!2509205)))

(declare-fun b!4044220 () Bool)

(assert (=> b!4044220 (= e!2509205 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044221 () Bool)

(assert (=> b!4044221 (= e!2509205 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439040) true) (content!6581 (t!335212 lt!1439040))))))

(assert (= (and d!1200383 c!698754) b!4044220))

(assert (= (and d!1200383 (not c!698754)) b!4044221))

(declare-fun m!4642067 () Bool)

(assert (=> b!4044221 m!4642067))

(declare-fun m!4642069 () Bool)

(assert (=> b!4044221 m!4642069))

(assert (=> d!1199595 d!1200383))

(assert (=> d!1199595 d!1199685))

(declare-fun d!1200387 () Bool)

(declare-fun c!698756 () Bool)

(assert (=> d!1200387 (= c!698756 ((_ is Nil!43249) newSuffixResult!27))))

(declare-fun e!2509207 () (InoxSet C!23844))

(assert (=> d!1200387 (= (content!6581 newSuffixResult!27) e!2509207)))

(declare-fun b!4044224 () Bool)

(assert (=> b!4044224 (= e!2509207 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044225 () Bool)

(assert (=> b!4044225 (= e!2509207 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 newSuffixResult!27) true) (content!6581 (t!335212 newSuffixResult!27))))))

(assert (= (and d!1200387 c!698756) b!4044224))

(assert (= (and d!1200387 (not c!698756)) b!4044225))

(declare-fun m!4642073 () Bool)

(assert (=> b!4044225 m!4642073))

(declare-fun m!4642075 () Bool)

(assert (=> b!4044225 m!4642075))

(assert (=> d!1199595 d!1200387))

(assert (=> b!4043100 d!1199697))

(assert (=> b!4043100 d!1199381))

(declare-fun lt!1439557 () List!43373)

(declare-fun e!2509209 () Bool)

(declare-fun b!4044231 () Bool)

(assert (=> b!4044231 (= e!2509209 (or (not (= suffix!1299 Nil!43249)) (= lt!1439557 (t!335212 prefix!494))))))

(declare-fun b!4044229 () Bool)

(declare-fun e!2509210 () List!43373)

(assert (=> b!4044229 (= e!2509210 (Cons!43249 (h!48669 (t!335212 prefix!494)) (++!11326 (t!335212 (t!335212 prefix!494)) suffix!1299)))))

(declare-fun b!4044228 () Bool)

(assert (=> b!4044228 (= e!2509210 suffix!1299)))

(declare-fun b!4044230 () Bool)

(declare-fun res!1647256 () Bool)

(assert (=> b!4044230 (=> (not res!1647256) (not e!2509209))))

(assert (=> b!4044230 (= res!1647256 (= (size!32333 lt!1439557) (+ (size!32333 (t!335212 prefix!494)) (size!32333 suffix!1299))))))

(declare-fun d!1200391 () Bool)

(assert (=> d!1200391 e!2509209))

(declare-fun res!1647255 () Bool)

(assert (=> d!1200391 (=> (not res!1647255) (not e!2509209))))

(assert (=> d!1200391 (= res!1647255 (= (content!6581 lt!1439557) ((_ map or) (content!6581 (t!335212 prefix!494)) (content!6581 suffix!1299))))))

(assert (=> d!1200391 (= lt!1439557 e!2509210)))

(declare-fun c!698758 () Bool)

(assert (=> d!1200391 (= c!698758 ((_ is Nil!43249) (t!335212 prefix!494)))))

(assert (=> d!1200391 (= (++!11326 (t!335212 prefix!494) suffix!1299) lt!1439557)))

(assert (= (and d!1200391 c!698758) b!4044228))

(assert (= (and d!1200391 (not c!698758)) b!4044229))

(assert (= (and d!1200391 res!1647255) b!4044230))

(assert (= (and b!4044230 res!1647256) b!4044231))

(declare-fun m!4642079 () Bool)

(assert (=> b!4044229 m!4642079))

(declare-fun m!4642081 () Bool)

(assert (=> b!4044230 m!4642081))

(assert (=> b!4044230 m!4639589))

(assert (=> b!4044230 m!4639241))

(declare-fun m!4642083 () Bool)

(assert (=> d!1200391 m!4642083))

(assert (=> d!1200391 m!4640569))

(assert (=> d!1200391 m!4640095))

(assert (=> b!4043017 d!1200391))

(declare-fun d!1200395 () Bool)

(declare-fun c!698759 () Bool)

(assert (=> d!1200395 (= c!698759 ((_ is Nil!43249) lt!1439039))))

(declare-fun e!2509211 () (InoxSet C!23844))

(assert (=> d!1200395 (= (content!6581 lt!1439039) e!2509211)))

(declare-fun b!4044232 () Bool)

(assert (=> b!4044232 (= e!2509211 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044233 () Bool)

(assert (=> b!4044233 (= e!2509211 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439039) true) (content!6581 (t!335212 lt!1439039))))))

(assert (= (and d!1200395 c!698759) b!4044232))

(assert (= (and d!1200395 (not c!698759)) b!4044233))

(declare-fun m!4642085 () Bool)

(assert (=> b!4044233 m!4642085))

(declare-fun m!4642087 () Bool)

(assert (=> b!4044233 m!4642087))

(assert (=> d!1199593 d!1200395))

(assert (=> d!1199593 d!1199893))

(declare-fun d!1200397 () Bool)

(declare-fun c!698760 () Bool)

(assert (=> d!1200397 (= c!698760 ((_ is Nil!43249) newSuffix!27))))

(declare-fun e!2509212 () (InoxSet C!23844))

(assert (=> d!1200397 (= (content!6581 newSuffix!27) e!2509212)))

(declare-fun b!4044234 () Bool)

(assert (=> b!4044234 (= e!2509212 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044235 () Bool)

(assert (=> b!4044235 (= e!2509212 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 newSuffix!27) true) (content!6581 (t!335212 newSuffix!27))))))

(assert (= (and d!1200397 c!698760) b!4044234))

(assert (= (and d!1200397 (not c!698760)) b!4044235))

(declare-fun m!4642089 () Bool)

(assert (=> b!4044235 m!4642089))

(assert (=> b!4044235 m!4641765))

(assert (=> d!1199593 d!1200397))

(declare-fun b!4044236 () Bool)

(declare-fun e!2509213 () Bool)

(declare-fun e!2509214 () Bool)

(assert (=> b!4044236 (= e!2509213 e!2509214)))

(declare-fun res!1647258 () Bool)

(assert (=> b!4044236 (=> (not res!1647258) (not e!2509214))))

(assert (=> b!4044236 (= res!1647258 (not ((_ is Nil!43249) (tail!6287 lt!1438785))))))

(declare-fun b!4044237 () Bool)

(declare-fun res!1647259 () Bool)

(assert (=> b!4044237 (=> (not res!1647259) (not e!2509214))))

(assert (=> b!4044237 (= res!1647259 (= (head!8555 (tail!6287 lt!1438798)) (head!8555 (tail!6287 lt!1438785))))))

(declare-fun d!1200399 () Bool)

(declare-fun e!2509215 () Bool)

(assert (=> d!1200399 e!2509215))

(declare-fun res!1647257 () Bool)

(assert (=> d!1200399 (=> res!1647257 e!2509215)))

(declare-fun lt!1439558 () Bool)

(assert (=> d!1200399 (= res!1647257 (not lt!1439558))))

(assert (=> d!1200399 (= lt!1439558 e!2509213)))

(declare-fun res!1647260 () Bool)

(assert (=> d!1200399 (=> res!1647260 e!2509213)))

(assert (=> d!1200399 (= res!1647260 ((_ is Nil!43249) (tail!6287 lt!1438798)))))

(assert (=> d!1200399 (= (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438785)) lt!1439558)))

(declare-fun b!4044238 () Bool)

(assert (=> b!4044238 (= e!2509214 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438798)) (tail!6287 (tail!6287 lt!1438785))))))

(declare-fun b!4044239 () Bool)

(assert (=> b!4044239 (= e!2509215 (>= (size!32333 (tail!6287 lt!1438785)) (size!32333 (tail!6287 lt!1438798))))))

(assert (= (and d!1200399 (not res!1647260)) b!4044236))

(assert (= (and b!4044236 res!1647258) b!4044237))

(assert (= (and b!4044237 res!1647259) b!4044238))

(assert (= (and d!1200399 (not res!1647257)) b!4044239))

(assert (=> b!4044237 m!4639565))

(assert (=> b!4044237 m!4641317))

(assert (=> b!4044237 m!4639997))

(declare-fun m!4642093 () Bool)

(assert (=> b!4044237 m!4642093))

(assert (=> b!4044238 m!4639565))

(assert (=> b!4044238 m!4641313))

(assert (=> b!4044238 m!4639997))

(declare-fun m!4642095 () Bool)

(assert (=> b!4044238 m!4642095))

(assert (=> b!4044238 m!4641313))

(assert (=> b!4044238 m!4642095))

(declare-fun m!4642097 () Bool)

(assert (=> b!4044238 m!4642097))

(assert (=> b!4044239 m!4639997))

(declare-fun m!4642099 () Bool)

(assert (=> b!4044239 m!4642099))

(assert (=> b!4044239 m!4639565))

(assert (=> b!4044239 m!4641421))

(assert (=> b!4043095 d!1200399))

(assert (=> b!4043095 d!1199899))

(declare-fun d!1200405 () Bool)

(assert (=> d!1200405 (= (tail!6287 lt!1438785) (t!335212 lt!1438785))))

(assert (=> b!4043095 d!1200405))

(declare-fun d!1200407 () Bool)

(assert (=> d!1200407 (= (list!16106 lt!1439052) (list!16107 (c!698370 lt!1439052)))))

(declare-fun bs!591164 () Bool)

(assert (= bs!591164 d!1200407))

(declare-fun m!4642103 () Bool)

(assert (=> bs!591164 m!4642103))

(assert (=> d!1199621 d!1200407))

(declare-fun b!4044246 () Bool)

(declare-fun e!2509220 () Bool)

(declare-fun e!2509221 () Bool)

(assert (=> b!4044246 (= e!2509220 e!2509221)))

(declare-fun res!1647266 () Bool)

(assert (=> b!4044246 (=> (not res!1647266) (not e!2509221))))

(assert (=> b!4044246 (= res!1647266 (not ((_ is Nil!43249) (tail!6287 lt!1438785))))))

(declare-fun b!4044247 () Bool)

(declare-fun res!1647267 () Bool)

(assert (=> b!4044247 (=> (not res!1647267) (not e!2509221))))

(assert (=> b!4044247 (= res!1647267 (= (head!8555 (tail!6287 lt!1438792)) (head!8555 (tail!6287 lt!1438785))))))

(declare-fun d!1200411 () Bool)

(declare-fun e!2509222 () Bool)

(assert (=> d!1200411 e!2509222))

(declare-fun res!1647265 () Bool)

(assert (=> d!1200411 (=> res!1647265 e!2509222)))

(declare-fun lt!1439561 () Bool)

(assert (=> d!1200411 (= res!1647265 (not lt!1439561))))

(assert (=> d!1200411 (= lt!1439561 e!2509220)))

(declare-fun res!1647268 () Bool)

(assert (=> d!1200411 (=> res!1647268 e!2509220)))

(assert (=> d!1200411 (= res!1647268 ((_ is Nil!43249) (tail!6287 lt!1438792)))))

(assert (=> d!1200411 (= (isPrefix!4011 (tail!6287 lt!1438792) (tail!6287 lt!1438785)) lt!1439561)))

(declare-fun b!4044248 () Bool)

(assert (=> b!4044248 (= e!2509221 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438792)) (tail!6287 (tail!6287 lt!1438785))))))

(declare-fun b!4044249 () Bool)

(assert (=> b!4044249 (= e!2509222 (>= (size!32333 (tail!6287 lt!1438785)) (size!32333 (tail!6287 lt!1438792))))))

(assert (= (and d!1200411 (not res!1647268)) b!4044246))

(assert (= (and b!4044246 res!1647266) b!4044247))

(assert (= (and b!4044247 res!1647267) b!4044248))

(assert (= (and d!1200411 (not res!1647265)) b!4044249))

(assert (=> b!4044247 m!4639995))

(assert (=> b!4044247 m!4640541))

(assert (=> b!4044247 m!4639997))

(assert (=> b!4044247 m!4642093))

(assert (=> b!4044248 m!4639995))

(assert (=> b!4044248 m!4640545))

(assert (=> b!4044248 m!4639997))

(assert (=> b!4044248 m!4642095))

(assert (=> b!4044248 m!4640545))

(assert (=> b!4044248 m!4642095))

(declare-fun m!4642107 () Bool)

(assert (=> b!4044248 m!4642107))

(assert (=> b!4044249 m!4639997))

(assert (=> b!4044249 m!4642099))

(assert (=> b!4044249 m!4639995))

(assert (=> b!4044249 m!4640553))

(assert (=> b!4042931 d!1200411))

(assert (=> b!4042931 d!1199703))

(assert (=> b!4042931 d!1200405))

(declare-fun b!4044250 () Bool)

(declare-fun e!2509223 () Bool)

(declare-fun e!2509224 () Bool)

(assert (=> b!4044250 (= e!2509223 e!2509224)))

(declare-fun res!1647270 () Bool)

(assert (=> b!4044250 (=> (not res!1647270) (not e!2509224))))

(assert (=> b!4044250 (= res!1647270 (not ((_ is Nil!43249) (++!11326 prefix!494 suffix!1299))))))

(declare-fun b!4044251 () Bool)

(declare-fun res!1647271 () Bool)

(assert (=> b!4044251 (=> (not res!1647271) (not e!2509224))))

(assert (=> b!4044251 (= res!1647271 (= (head!8555 lt!1438798) (head!8555 (++!11326 prefix!494 suffix!1299))))))

(declare-fun d!1200417 () Bool)

(declare-fun e!2509225 () Bool)

(assert (=> d!1200417 e!2509225))

(declare-fun res!1647269 () Bool)

(assert (=> d!1200417 (=> res!1647269 e!2509225)))

(declare-fun lt!1439563 () Bool)

(assert (=> d!1200417 (= res!1647269 (not lt!1439563))))

(assert (=> d!1200417 (= lt!1439563 e!2509223)))

(declare-fun res!1647272 () Bool)

(assert (=> d!1200417 (=> res!1647272 e!2509223)))

(assert (=> d!1200417 (= res!1647272 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1200417 (= (isPrefix!4011 lt!1438798 (++!11326 prefix!494 suffix!1299)) lt!1439563)))

(declare-fun b!4044252 () Bool)

(assert (=> b!4044252 (= e!2509224 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 (++!11326 prefix!494 suffix!1299))))))

(declare-fun b!4044253 () Bool)

(assert (=> b!4044253 (= e!2509225 (>= (size!32333 (++!11326 prefix!494 suffix!1299)) (size!32333 lt!1438798)))))

(assert (= (and d!1200417 (not res!1647272)) b!4044250))

(assert (= (and b!4044250 res!1647270) b!4044251))

(assert (= (and b!4044251 res!1647271) b!4044252))

(assert (= (and d!1200417 (not res!1647269)) b!4044253))

(assert (=> b!4044251 m!4639555))

(assert (=> b!4044251 m!4639341))

(assert (=> b!4044251 m!4641039))

(assert (=> b!4044252 m!4639565))

(assert (=> b!4044252 m!4639341))

(assert (=> b!4044252 m!4641041))

(assert (=> b!4044252 m!4639565))

(assert (=> b!4044252 m!4641041))

(declare-fun m!4642113 () Bool)

(assert (=> b!4044252 m!4642113))

(assert (=> b!4044253 m!4639341))

(assert (=> b!4044253 m!4641045))

(assert (=> b!4044253 m!4639203))

(assert (=> d!1199559 d!1200417))

(assert (=> d!1199559 d!1199537))

(declare-fun d!1200423 () Bool)

(assert (=> d!1200423 (isPrefix!4011 lt!1438798 (++!11326 prefix!494 suffix!1299))))

(assert (=> d!1200423 true))

(declare-fun _$58!598 () Unit!62477)

(assert (=> d!1200423 (= (choose!24511 lt!1438798 prefix!494 suffix!1299) _$58!598)))

(declare-fun bs!591166 () Bool)

(assert (= bs!591166 d!1200423))

(assert (=> bs!591166 m!4639341))

(assert (=> bs!591166 m!4639341))

(assert (=> bs!591166 m!4640157))

(assert (=> d!1199559 d!1200423))

(assert (=> d!1199559 d!1199583))

(assert (=> d!1199333 d!1199325))

(declare-fun d!1200425 () Bool)

(assert (=> d!1200425 (isPrefix!4011 lt!1438775 lt!1438775)))

(assert (=> d!1200425 true))

(declare-fun _$45!1997 () Unit!62477)

(assert (=> d!1200425 (= (choose!24502 lt!1438775 lt!1438775) _$45!1997)))

(declare-fun bs!591167 () Bool)

(assert (= bs!591167 d!1200425))

(assert (=> bs!591167 m!4639259))

(assert (=> d!1199333 d!1200425))

(assert (=> b!4043102 d!1200041))

(assert (=> b!4043102 d!1199733))

(declare-fun d!1200429 () Bool)

(declare-fun lt!1439566 () Int)

(assert (=> d!1200429 (>= lt!1439566 0)))

(declare-fun e!2509229 () Int)

(assert (=> d!1200429 (= lt!1439566 e!2509229)))

(declare-fun c!698764 () Bool)

(assert (=> d!1200429 (= c!698764 ((_ is Nil!43249) (originalCharacters!7524 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1200429 (= (size!32333 (originalCharacters!7524 (_1!24299 (v!39739 lt!1438779)))) lt!1439566)))

(declare-fun b!4044260 () Bool)

(assert (=> b!4044260 (= e!2509229 0)))

(declare-fun b!4044261 () Bool)

(assert (=> b!4044261 (= e!2509229 (+ 1 (size!32333 (t!335212 (originalCharacters!7524 (_1!24299 (v!39739 lt!1438779)))))))))

(assert (= (and d!1200429 c!698764) b!4044260))

(assert (= (and d!1200429 (not c!698764)) b!4044261))

(declare-fun m!4642121 () Bool)

(assert (=> b!4044261 m!4642121))

(assert (=> d!1199629 d!1200429))

(declare-fun d!1200431 () Bool)

(declare-fun lt!1439567 () Int)

(assert (=> d!1200431 (>= lt!1439567 0)))

(declare-fun e!2509232 () Int)

(assert (=> d!1200431 (= lt!1439567 e!2509232)))

(declare-fun c!698767 () Bool)

(assert (=> d!1200431 (= c!698767 ((_ is Nil!43249) (t!335212 (originalCharacters!7524 token!484))))))

(assert (=> d!1200431 (= (size!32333 (t!335212 (originalCharacters!7524 token!484))) lt!1439567)))

(declare-fun b!4044266 () Bool)

(assert (=> b!4044266 (= e!2509232 0)))

(declare-fun b!4044267 () Bool)

(assert (=> b!4044267 (= e!2509232 (+ 1 (size!32333 (t!335212 (t!335212 (originalCharacters!7524 token!484))))))))

(assert (= (and d!1200431 c!698767) b!4044266))

(assert (= (and d!1200431 (not c!698767)) b!4044267))

(declare-fun m!4642123 () Bool)

(assert (=> b!4044267 m!4642123))

(assert (=> b!4042597 d!1200431))

(assert (=> d!1199397 d!1199379))

(assert (=> d!1199397 d!1199573))

(assert (=> d!1199397 d!1199399))

(assert (=> d!1199397 d!1199483))

(assert (=> d!1199397 d!1199501))

(declare-fun d!1200433 () Bool)

(assert (=> d!1200433 (= (maxPrefixOneRule!2823 thiss!21717 (rule!9998 token!484) lt!1438775) (Some!9337 (tuple2!42331 (Token!12987 (apply!10113 (transformation!6924 (rule!9998 token!484)) (seqFromList!5141 lt!1438798)) (rule!9998 token!484) (size!32333 lt!1438798) lt!1438798) suffixResult!105)))))

(assert (=> d!1200433 true))

(declare-fun _$59!702 () Unit!62477)

(assert (=> d!1200433 (= (choose!24506 thiss!21717 rules!2999 lt!1438798 lt!1438775 suffixResult!105 (rule!9998 token!484)) _$59!702)))

(declare-fun bs!591168 () Bool)

(assert (= bs!591168 d!1200433))

(assert (=> bs!591168 m!4639219))

(assert (=> bs!591168 m!4639217))

(assert (=> bs!591168 m!4639217))

(assert (=> bs!591168 m!4639227))

(assert (=> bs!591168 m!4639203))

(assert (=> d!1199397 d!1200433))

(declare-fun d!1200435 () Bool)

(declare-fun lt!1439568 () Int)

(assert (=> d!1200435 (>= lt!1439568 0)))

(declare-fun e!2509235 () Int)

(assert (=> d!1200435 (= lt!1439568 e!2509235)))

(declare-fun c!698770 () Bool)

(assert (=> d!1200435 (= c!698770 ((_ is Nil!43249) lt!1439010))))

(assert (=> d!1200435 (= (size!32333 lt!1439010) lt!1439568)))

(declare-fun b!4044272 () Bool)

(assert (=> b!4044272 (= e!2509235 0)))

(declare-fun b!4044273 () Bool)

(assert (=> b!4044273 (= e!2509235 (+ 1 (size!32333 (t!335212 lt!1439010))))))

(assert (= (and d!1200435 c!698770) b!4044272))

(assert (= (and d!1200435 (not c!698770)) b!4044273))

(declare-fun m!4642125 () Bool)

(assert (=> b!4044273 m!4642125))

(assert (=> b!4043030 d!1200435))

(assert (=> b!4043030 d!1199857))

(assert (=> b!4043030 d!1199547))

(declare-fun d!1200437 () Bool)

(declare-fun lt!1439569 () Int)

(assert (=> d!1200437 (>= lt!1439569 0)))

(declare-fun e!2509236 () Int)

(assert (=> d!1200437 (= lt!1439569 e!2509236)))

(declare-fun c!698771 () Bool)

(assert (=> d!1200437 (= c!698771 ((_ is Nil!43249) (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1200437 (= (size!32333 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))) lt!1439569)))

(declare-fun b!4044274 () Bool)

(assert (=> b!4044274 (= e!2509236 0)))

(declare-fun b!4044275 () Bool)

(assert (=> b!4044275 (= e!2509236 (+ 1 (size!32333 (t!335212 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))))))))

(assert (= (and d!1200437 c!698771) b!4044274))

(assert (= (and d!1200437 (not c!698771)) b!4044275))

(declare-fun m!4642127 () Bool)

(assert (=> b!4044275 m!4642127))

(assert (=> b!4043152 d!1200437))

(assert (=> b!4043152 d!1199601))

(declare-fun d!1200439 () Bool)

(declare-fun c!698772 () Bool)

(assert (=> d!1200439 (= c!698772 ((_ is Nil!43249) lt!1439056))))

(declare-fun e!2509237 () (InoxSet C!23844))

(assert (=> d!1200439 (= (content!6581 lt!1439056) e!2509237)))

(declare-fun b!4044276 () Bool)

(assert (=> b!4044276 (= e!2509237 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044277 () Bool)

(assert (=> b!4044277 (= e!2509237 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439056) true) (content!6581 (t!335212 lt!1439056))))))

(assert (= (and d!1200439 c!698772) b!4044276))

(assert (= (and d!1200439 (not c!698772)) b!4044277))

(declare-fun m!4642129 () Bool)

(assert (=> b!4044277 m!4642129))

(declare-fun m!4642131 () Bool)

(assert (=> b!4044277 m!4642131))

(assert (=> d!1199637 d!1200439))

(assert (=> d!1199637 d!1200397))

(declare-fun d!1200441 () Bool)

(declare-fun c!698773 () Bool)

(assert (=> d!1200441 (= c!698773 ((_ is Nil!43249) lt!1438799))))

(declare-fun e!2509238 () (InoxSet C!23844))

(assert (=> d!1200441 (= (content!6581 lt!1438799) e!2509238)))

(declare-fun b!4044278 () Bool)

(assert (=> b!4044278 (= e!2509238 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044279 () Bool)

(assert (=> b!4044279 (= e!2509238 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438799) true) (content!6581 (t!335212 lt!1438799))))))

(assert (= (and d!1200441 c!698773) b!4044278))

(assert (= (and d!1200441 (not c!698773)) b!4044279))

(declare-fun m!4642133 () Bool)

(assert (=> b!4044279 m!4642133))

(declare-fun m!4642135 () Bool)

(assert (=> b!4044279 m!4642135))

(assert (=> d!1199637 d!1200441))

(declare-fun b!4044284 () Bool)

(declare-fun e!2509241 () Bool)

(declare-fun e!2509242 () Bool)

(assert (=> b!4044284 (= e!2509241 e!2509242)))

(declare-fun res!1647276 () Bool)

(assert (=> b!4044284 (=> (not res!1647276) (not e!2509242))))

(assert (=> b!4044284 (= res!1647276 (not ((_ is Nil!43249) (tail!6287 lt!1438767))))))

(declare-fun b!4044285 () Bool)

(declare-fun res!1647277 () Bool)

(assert (=> b!4044285 (=> (not res!1647277) (not e!2509242))))

(assert (=> b!4044285 (= res!1647277 (= (head!8555 (tail!6287 lt!1438798)) (head!8555 (tail!6287 lt!1438767))))))

(declare-fun d!1200443 () Bool)

(declare-fun e!2509243 () Bool)

(assert (=> d!1200443 e!2509243))

(declare-fun res!1647275 () Bool)

(assert (=> d!1200443 (=> res!1647275 e!2509243)))

(declare-fun lt!1439570 () Bool)

(assert (=> d!1200443 (= res!1647275 (not lt!1439570))))

(assert (=> d!1200443 (= lt!1439570 e!2509241)))

(declare-fun res!1647278 () Bool)

(assert (=> d!1200443 (=> res!1647278 e!2509241)))

(assert (=> d!1200443 (= res!1647278 ((_ is Nil!43249) (tail!6287 lt!1438798)))))

(assert (=> d!1200443 (= (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 lt!1438767)) lt!1439570)))

(declare-fun b!4044286 () Bool)

(assert (=> b!4044286 (= e!2509242 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438798)) (tail!6287 (tail!6287 lt!1438767))))))

(declare-fun b!4044287 () Bool)

(assert (=> b!4044287 (= e!2509243 (>= (size!32333 (tail!6287 lt!1438767)) (size!32333 (tail!6287 lt!1438798))))))

(assert (= (and d!1200443 (not res!1647278)) b!4044284))

(assert (= (and b!4044284 res!1647276) b!4044285))

(assert (= (and b!4044285 res!1647277) b!4044286))

(assert (= (and d!1200443 (not res!1647275)) b!4044287))

(assert (=> b!4044285 m!4639565))

(assert (=> b!4044285 m!4641317))

(assert (=> b!4044285 m!4640179))

(declare-fun m!4642145 () Bool)

(assert (=> b!4044285 m!4642145))

(assert (=> b!4044286 m!4639565))

(assert (=> b!4044286 m!4641313))

(assert (=> b!4044286 m!4640179))

(declare-fun m!4642147 () Bool)

(assert (=> b!4044286 m!4642147))

(assert (=> b!4044286 m!4641313))

(assert (=> b!4044286 m!4642147))

(declare-fun m!4642149 () Bool)

(assert (=> b!4044286 m!4642149))

(assert (=> b!4044287 m!4640179))

(declare-fun m!4642151 () Bool)

(assert (=> b!4044287 m!4642151))

(assert (=> b!4044287 m!4639565))

(assert (=> b!4044287 m!4641421))

(assert (=> b!4043107 d!1200443))

(assert (=> b!4043107 d!1199899))

(declare-fun d!1200447 () Bool)

(assert (=> d!1200447 (= (tail!6287 lt!1438767) (t!335212 lt!1438767))))

(assert (=> b!4043107 d!1200447))

(assert (=> b!4042994 d!1199833))

(assert (=> b!4042994 d!1199835))

(assert (=> b!4042994 d!1199831))

(declare-fun d!1200451 () Bool)

(assert (=> d!1200451 (= (head!8555 newSuffix!27) (h!48669 newSuffix!27))))

(assert (=> b!4043110 d!1200451))

(declare-fun d!1200453 () Bool)

(assert (=> d!1200453 (= (head!8555 suffix!1299) (h!48669 suffix!1299))))

(assert (=> b!4043110 d!1200453))

(declare-fun lt!1439572 () List!43373)

(declare-fun e!2509246 () Bool)

(declare-fun b!4044295 () Bool)

(assert (=> b!4044295 (= e!2509246 (or (not (= newSuffix!27 Nil!43249)) (= lt!1439572 (t!335212 prefix!494))))))

(declare-fun b!4044293 () Bool)

(declare-fun e!2509247 () List!43373)

(assert (=> b!4044293 (= e!2509247 (Cons!43249 (h!48669 (t!335212 prefix!494)) (++!11326 (t!335212 (t!335212 prefix!494)) newSuffix!27)))))

(declare-fun b!4044292 () Bool)

(assert (=> b!4044292 (= e!2509247 newSuffix!27)))

(declare-fun b!4044294 () Bool)

(declare-fun res!1647280 () Bool)

(assert (=> b!4044294 (=> (not res!1647280) (not e!2509246))))

(assert (=> b!4044294 (= res!1647280 (= (size!32333 lt!1439572) (+ (size!32333 (t!335212 prefix!494)) (size!32333 newSuffix!27))))))

(declare-fun d!1200455 () Bool)

(assert (=> d!1200455 e!2509246))

(declare-fun res!1647279 () Bool)

(assert (=> d!1200455 (=> (not res!1647279) (not e!2509246))))

(assert (=> d!1200455 (= res!1647279 (= (content!6581 lt!1439572) ((_ map or) (content!6581 (t!335212 prefix!494)) (content!6581 newSuffix!27))))))

(assert (=> d!1200455 (= lt!1439572 e!2509247)))

(declare-fun c!698777 () Bool)

(assert (=> d!1200455 (= c!698777 ((_ is Nil!43249) (t!335212 prefix!494)))))

(assert (=> d!1200455 (= (++!11326 (t!335212 prefix!494) newSuffix!27) lt!1439572)))

(assert (= (and d!1200455 c!698777) b!4044292))

(assert (= (and d!1200455 (not c!698777)) b!4044293))

(assert (= (and d!1200455 res!1647279) b!4044294))

(assert (= (and b!4044294 res!1647280) b!4044295))

(declare-fun m!4642161 () Bool)

(assert (=> b!4044293 m!4642161))

(declare-fun m!4642163 () Bool)

(assert (=> b!4044294 m!4642163))

(assert (=> b!4044294 m!4639589))

(assert (=> b!4044294 m!4639243))

(declare-fun m!4642167 () Bool)

(assert (=> d!1200455 m!4642167))

(assert (=> d!1200455 m!4640569))

(assert (=> d!1200455 m!4640243))

(assert (=> b!4043133 d!1200455))

(declare-fun d!1200463 () Bool)

(declare-fun lt!1439574 () Int)

(assert (=> d!1200463 (>= lt!1439574 0)))

(declare-fun e!2509251 () Int)

(assert (=> d!1200463 (= lt!1439574 e!2509251)))

(declare-fun c!698781 () Bool)

(assert (=> d!1200463 (= c!698781 ((_ is Nil!43249) lt!1439040))))

(assert (=> d!1200463 (= (size!32333 lt!1439040) lt!1439574)))

(declare-fun b!4044299 () Bool)

(assert (=> b!4044299 (= e!2509251 0)))

(declare-fun b!4044301 () Bool)

(assert (=> b!4044301 (= e!2509251 (+ 1 (size!32333 (t!335212 lt!1439040))))))

(assert (= (and d!1200463 c!698781) b!4044299))

(assert (= (and d!1200463 (not c!698781)) b!4044301))

(declare-fun m!4642171 () Bool)

(assert (=> b!4044301 m!4642171))

(assert (=> b!4043138 d!1200463))

(assert (=> b!4043138 d!1199379))

(declare-fun d!1200465 () Bool)

(declare-fun lt!1439575 () Int)

(assert (=> d!1200465 (>= lt!1439575 0)))

(declare-fun e!2509252 () Int)

(assert (=> d!1200465 (= lt!1439575 e!2509252)))

(declare-fun c!698782 () Bool)

(assert (=> d!1200465 (= c!698782 ((_ is Nil!43249) newSuffixResult!27))))

(assert (=> d!1200465 (= (size!32333 newSuffixResult!27) lt!1439575)))

(declare-fun b!4044304 () Bool)

(assert (=> b!4044304 (= e!2509252 0)))

(declare-fun b!4044305 () Bool)

(assert (=> b!4044305 (= e!2509252 (+ 1 (size!32333 (t!335212 newSuffixResult!27))))))

(assert (= (and d!1200465 c!698782) b!4044304))

(assert (= (and d!1200465 (not c!698782)) b!4044305))

(declare-fun m!4642177 () Bool)

(assert (=> b!4044305 m!4642177))

(assert (=> b!4043138 d!1200465))

(declare-fun d!1200467 () Bool)

(declare-fun lt!1439576 () Int)

(assert (=> d!1200467 (>= lt!1439576 0)))

(declare-fun e!2509253 () Int)

(assert (=> d!1200467 (= lt!1439576 e!2509253)))

(declare-fun c!698783 () Bool)

(assert (=> d!1200467 (= c!698783 ((_ is Nil!43249) (_2!24299 (get!14192 lt!1438867))))))

(assert (=> d!1200467 (= (size!32333 (_2!24299 (get!14192 lt!1438867))) lt!1439576)))

(declare-fun b!4044306 () Bool)

(assert (=> b!4044306 (= e!2509253 0)))

(declare-fun b!4044307 () Bool)

(assert (=> b!4044307 (= e!2509253 (+ 1 (size!32333 (t!335212 (_2!24299 (get!14192 lt!1438867))))))))

(assert (= (and d!1200467 c!698783) b!4044306))

(assert (= (and d!1200467 (not c!698783)) b!4044307))

(declare-fun m!4642185 () Bool)

(assert (=> b!4044307 m!4642185))

(assert (=> b!4042644 d!1200467))

(assert (=> b!4042644 d!1199719))

(assert (=> b!4042644 d!1199961))

(assert (=> b!4043113 d!1200309))

(assert (=> b!4042675 d!1200041))

(declare-fun d!1200471 () Bool)

(assert (=> d!1200471 (= (head!8555 lt!1438794) (h!48669 lt!1438794))))

(assert (=> b!4042675 d!1200471))

(declare-fun b!4044312 () Bool)

(declare-fun e!2509256 () Bool)

(declare-fun e!2509257 () Bool)

(assert (=> b!4044312 (= e!2509256 e!2509257)))

(declare-fun res!1647284 () Bool)

(assert (=> b!4044312 (=> (not res!1647284) (not e!2509257))))

(assert (=> b!4044312 (= res!1647284 (not ((_ is Nil!43249) (tail!6287 prefix!494))))))

(declare-fun b!4044313 () Bool)

(declare-fun res!1647285 () Bool)

(assert (=> b!4044313 (=> (not res!1647285) (not e!2509257))))

(assert (=> b!4044313 (= res!1647285 (= (head!8555 (tail!6287 lt!1438798)) (head!8555 (tail!6287 prefix!494))))))

(declare-fun d!1200475 () Bool)

(declare-fun e!2509258 () Bool)

(assert (=> d!1200475 e!2509258))

(declare-fun res!1647283 () Bool)

(assert (=> d!1200475 (=> res!1647283 e!2509258)))

(declare-fun lt!1439579 () Bool)

(assert (=> d!1200475 (= res!1647283 (not lt!1439579))))

(assert (=> d!1200475 (= lt!1439579 e!2509256)))

(declare-fun res!1647286 () Bool)

(assert (=> d!1200475 (=> res!1647286 e!2509256)))

(assert (=> d!1200475 (= res!1647286 ((_ is Nil!43249) (tail!6287 lt!1438798)))))

(assert (=> d!1200475 (= (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 prefix!494)) lt!1439579)))

(declare-fun b!4044314 () Bool)

(assert (=> b!4044314 (= e!2509257 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438798)) (tail!6287 (tail!6287 prefix!494))))))

(declare-fun b!4044315 () Bool)

(assert (=> b!4044315 (= e!2509258 (>= (size!32333 (tail!6287 prefix!494)) (size!32333 (tail!6287 lt!1438798))))))

(assert (= (and d!1200475 (not res!1647286)) b!4044312))

(assert (= (and b!4044312 res!1647284) b!4044313))

(assert (= (and b!4044313 res!1647285) b!4044314))

(assert (= (and d!1200475 (not res!1647283)) b!4044315))

(assert (=> b!4044313 m!4639565))

(assert (=> b!4044313 m!4641317))

(assert (=> b!4044313 m!4640163))

(declare-fun m!4642191 () Bool)

(assert (=> b!4044313 m!4642191))

(assert (=> b!4044314 m!4639565))

(assert (=> b!4044314 m!4641313))

(assert (=> b!4044314 m!4640163))

(declare-fun m!4642193 () Bool)

(assert (=> b!4044314 m!4642193))

(assert (=> b!4044314 m!4641313))

(assert (=> b!4044314 m!4642193))

(declare-fun m!4642195 () Bool)

(assert (=> b!4044314 m!4642195))

(assert (=> b!4044315 m!4640163))

(declare-fun m!4642197 () Bool)

(assert (=> b!4044315 m!4642197))

(assert (=> b!4044315 m!4639565))

(assert (=> b!4044315 m!4641421))

(assert (=> b!4043122 d!1200475))

(assert (=> b!4043122 d!1199899))

(declare-fun d!1200483 () Bool)

(assert (=> d!1200483 (= (tail!6287 prefix!494) (t!335212 prefix!494))))

(assert (=> b!4043122 d!1200483))

(assert (=> b!4042885 d!1199677))

(assert (=> d!1199623 d!1199617))

(declare-fun d!1200485 () Bool)

(assert (=> d!1200485 (ruleValid!2854 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))

(assert (=> d!1200485 true))

(declare-fun _$65!1516 () Unit!62477)

(assert (=> d!1200485 (= (choose!24507 thiss!21717 (rule!9998 (_1!24299 (v!39739 lt!1438779))) rules!2999) _$65!1516)))

(declare-fun bs!591171 () Bool)

(assert (= bs!591171 d!1200485))

(assert (=> bs!591171 m!4639309))

(assert (=> d!1199623 d!1200485))

(declare-fun d!1200487 () Bool)

(declare-fun lt!1439588 () Bool)

(assert (=> d!1200487 (= lt!1439588 (select (content!6583 rules!2999) (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(declare-fun e!2509260 () Bool)

(assert (=> d!1200487 (= lt!1439588 e!2509260)))

(declare-fun res!1647287 () Bool)

(assert (=> d!1200487 (=> (not res!1647287) (not e!2509260))))

(assert (=> d!1200487 (= res!1647287 ((_ is Cons!43251) rules!2999))))

(assert (=> d!1200487 (= (contains!8595 rules!2999 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) lt!1439588)))

(declare-fun b!4044316 () Bool)

(declare-fun e!2509259 () Bool)

(assert (=> b!4044316 (= e!2509260 e!2509259)))

(declare-fun res!1647288 () Bool)

(assert (=> b!4044316 (=> res!1647288 e!2509259)))

(assert (=> b!4044316 (= res!1647288 (= (h!48671 rules!2999) (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(declare-fun b!4044317 () Bool)

(assert (=> b!4044317 (= e!2509259 (contains!8595 (t!335214 rules!2999) (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (= (and d!1200487 res!1647287) b!4044316))

(assert (= (and b!4044316 (not res!1647288)) b!4044317))

(assert (=> d!1200487 m!4640973))

(declare-fun m!4642215 () Bool)

(assert (=> d!1200487 m!4642215))

(declare-fun m!4642217 () Bool)

(assert (=> b!4044317 m!4642217))

(assert (=> d!1199623 d!1200487))

(declare-fun d!1200491 () Bool)

(declare-fun lt!1439590 () List!43373)

(assert (=> d!1200491 (= (++!11326 (t!335212 lt!1438798) lt!1439590) (tail!6287 prefix!494))))

(declare-fun e!2509262 () List!43373)

(assert (=> d!1200491 (= lt!1439590 e!2509262)))

(declare-fun c!698787 () Bool)

(assert (=> d!1200491 (= c!698787 ((_ is Cons!43249) (t!335212 lt!1438798)))))

(assert (=> d!1200491 (>= (size!32333 (tail!6287 prefix!494)) (size!32333 (t!335212 lt!1438798)))))

(assert (=> d!1200491 (= (getSuffix!2428 (tail!6287 prefix!494) (t!335212 lt!1438798)) lt!1439590)))

(declare-fun b!4044320 () Bool)

(assert (=> b!4044320 (= e!2509262 (getSuffix!2428 (tail!6287 (tail!6287 prefix!494)) (t!335212 (t!335212 lt!1438798))))))

(declare-fun b!4044321 () Bool)

(assert (=> b!4044321 (= e!2509262 (tail!6287 prefix!494))))

(assert (= (and d!1200491 c!698787) b!4044320))

(assert (= (and d!1200491 (not c!698787)) b!4044321))

(declare-fun m!4642221 () Bool)

(assert (=> d!1200491 m!4642221))

(assert (=> d!1200491 m!4640163))

(assert (=> d!1200491 m!4642197))

(assert (=> d!1200491 m!4639587))

(assert (=> b!4044320 m!4640163))

(assert (=> b!4044320 m!4642193))

(assert (=> b!4044320 m!4642193))

(declare-fun m!4642225 () Bool)

(assert (=> b!4044320 m!4642225))

(assert (=> b!4043118 d!1200491))

(assert (=> b!4043118 d!1200483))

(assert (=> b!4043161 d!1199671))

(declare-fun d!1200497 () Bool)

(assert (=> d!1200497 (= (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047))))) (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047))))))))

(declare-fun b_lambda!118169 () Bool)

(assert (=> (not b_lambda!118169) (not d!1200497)))

(declare-fun tb!243247 () Bool)

(declare-fun t!335394 () Bool)

(assert (=> (and b!4042499 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335394) tb!243247))

(declare-fun result!294788 () Bool)

(assert (=> tb!243247 (= result!294788 (inv!21 (dynLambda!18370 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047))))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047)))))))))

(declare-fun m!4642235 () Bool)

(assert (=> tb!243247 m!4642235))

(assert (=> d!1200497 t!335394))

(declare-fun b_and!311009 () Bool)

(assert (= b_and!311003 (and (=> t!335394 result!294788) b_and!311009)))

(declare-fun tb!243249 () Bool)

(declare-fun t!335396 () Bool)

(assert (=> (and b!4042502 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335396) tb!243249))

(declare-fun result!294790 () Bool)

(assert (= result!294790 result!294788))

(assert (=> d!1200497 t!335396))

(declare-fun b_and!311011 () Bool)

(assert (= b_and!311005 (and (=> t!335396 result!294790) b_and!311011)))

(declare-fun t!335398 () Bool)

(declare-fun tb!243251 () Bool)

(assert (=> (and b!4043204 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335398) tb!243251))

(declare-fun result!294792 () Bool)

(assert (= result!294792 result!294788))

(assert (=> d!1200497 t!335398))

(declare-fun b_and!311013 () Bool)

(assert (= b_and!311007 (and (=> t!335398 result!294792) b_and!311013)))

(assert (=> d!1200497 m!4640339))

(declare-fun m!4642237 () Bool)

(assert (=> d!1200497 m!4642237))

(assert (=> b!4043161 d!1200497))

(declare-fun d!1200503 () Bool)

(assert (=> d!1200503 (= (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047)))) (fromListB!2346 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439047)))))))

(declare-fun bs!591173 () Bool)

(assert (= bs!591173 d!1200503))

(declare-fun m!4642241 () Bool)

(assert (=> bs!591173 m!4642241))

(assert (=> b!4043161 d!1200503))

(declare-fun d!1200505 () Bool)

(assert (=> d!1200505 (= (isDefined!7105 lt!1438867) (not (isEmpty!25816 lt!1438867)))))

(declare-fun bs!591174 () Bool)

(assert (= bs!591174 d!1200505))

(assert (=> bs!591174 m!4639493))

(assert (=> b!4042646 d!1200505))

(assert (=> b!4043084 d!1200041))

(declare-fun d!1200511 () Bool)

(declare-fun lt!1439595 () Int)

(assert (=> d!1200511 (>= lt!1439595 0)))

(declare-fun e!2509274 () Int)

(assert (=> d!1200511 (= lt!1439595 e!2509274)))

(declare-fun c!698789 () Bool)

(assert (=> d!1200511 (= c!698789 ((_ is Nil!43249) (++!11326 lt!1438792 newSuffixResult!27)))))

(assert (=> d!1200511 (= (size!32333 (++!11326 lt!1438792 newSuffixResult!27)) lt!1439595)))

(declare-fun b!4044336 () Bool)

(assert (=> b!4044336 (= e!2509274 0)))

(declare-fun b!4044337 () Bool)

(assert (=> b!4044337 (= e!2509274 (+ 1 (size!32333 (t!335212 (++!11326 lt!1438792 newSuffixResult!27)))))))

(assert (= (and d!1200511 c!698789) b!4044336))

(assert (= (and d!1200511 (not c!698789)) b!4044337))

(declare-fun m!4642251 () Bool)

(assert (=> b!4044337 m!4642251))

(assert (=> b!4043173 d!1200511))

(assert (=> b!4043173 d!1199601))

(declare-fun d!1200515 () Bool)

(declare-fun lt!1439596 () Bool)

(assert (=> d!1200515 (= lt!1439596 (select (content!6583 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1438867)))))))

(declare-fun e!2509278 () Bool)

(assert (=> d!1200515 (= lt!1439596 e!2509278)))

(declare-fun res!1647301 () Bool)

(assert (=> d!1200515 (=> (not res!1647301) (not e!2509278))))

(assert (=> d!1200515 (= res!1647301 ((_ is Cons!43251) rules!2999))))

(assert (=> d!1200515 (= (contains!8595 rules!2999 (rule!9998 (_1!24299 (get!14192 lt!1438867)))) lt!1439596)))

(declare-fun b!4044342 () Bool)

(declare-fun e!2509277 () Bool)

(assert (=> b!4044342 (= e!2509278 e!2509277)))

(declare-fun res!1647302 () Bool)

(assert (=> b!4044342 (=> res!1647302 e!2509277)))

(assert (=> b!4044342 (= res!1647302 (= (h!48671 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1438867)))))))

(declare-fun b!4044343 () Bool)

(assert (=> b!4044343 (= e!2509277 (contains!8595 (t!335214 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1438867)))))))

(assert (= (and d!1200515 res!1647301) b!4044342))

(assert (= (and b!4044342 (not res!1647302)) b!4044343))

(assert (=> d!1200515 m!4640973))

(declare-fun m!4642261 () Bool)

(assert (=> d!1200515 m!4642261))

(declare-fun m!4642263 () Bool)

(assert (=> b!4044343 m!4642263))

(assert (=> b!4042650 d!1200515))

(assert (=> b!4042650 d!1199719))

(declare-fun d!1200519 () Bool)

(declare-fun lt!1439597 () Int)

(assert (=> d!1200519 (>= lt!1439597 0)))

(declare-fun e!2509281 () Int)

(assert (=> d!1200519 (= lt!1439597 e!2509281)))

(declare-fun c!698792 () Bool)

(assert (=> d!1200519 (= c!698792 ((_ is Nil!43249) (t!335212 lt!1438798)))))

(assert (=> d!1200519 (= (size!32333 (t!335212 lt!1438798)) lt!1439597)))

(declare-fun b!4044344 () Bool)

(assert (=> b!4044344 (= e!2509281 0)))

(declare-fun b!4044345 () Bool)

(assert (=> b!4044345 (= e!2509281 (+ 1 (size!32333 (t!335212 (t!335212 lt!1438798)))))))

(assert (= (and d!1200519 c!698792) b!4044344))

(assert (= (and d!1200519 (not c!698792)) b!4044345))

(declare-fun m!4642265 () Bool)

(assert (=> b!4044345 m!4642265))

(assert (=> b!4042683 d!1200519))

(declare-fun d!1200521 () Bool)

(declare-fun c!698794 () Bool)

(assert (=> d!1200521 (= c!698794 ((_ is Nil!43249) lt!1439009))))

(declare-fun e!2509282 () (InoxSet C!23844))

(assert (=> d!1200521 (= (content!6581 lt!1439009) e!2509282)))

(declare-fun b!4044350 () Bool)

(assert (=> b!4044350 (= e!2509282 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044351 () Bool)

(assert (=> b!4044351 (= e!2509282 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439009) true) (content!6581 (t!335212 lt!1439009))))))

(assert (= (and d!1200521 c!698794) b!4044350))

(assert (= (and d!1200521 (not c!698794)) b!4044351))

(declare-fun m!4642269 () Bool)

(assert (=> b!4044351 m!4642269))

(declare-fun m!4642275 () Bool)

(assert (=> b!4044351 m!4642275))

(assert (=> d!1199541 d!1200521))

(declare-fun d!1200523 () Bool)

(declare-fun c!698795 () Bool)

(assert (=> d!1200523 (= c!698795 ((_ is Nil!43249) lt!1438787))))

(declare-fun e!2509283 () (InoxSet C!23844))

(assert (=> d!1200523 (= (content!6581 lt!1438787) e!2509283)))

(declare-fun b!4044352 () Bool)

(assert (=> b!4044352 (= e!2509283 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044353 () Bool)

(assert (=> b!4044353 (= e!2509283 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438787) true) (content!6581 (t!335212 lt!1438787))))))

(assert (= (and d!1200523 c!698795) b!4044352))

(assert (= (and d!1200523 (not c!698795)) b!4044353))

(declare-fun m!4642277 () Bool)

(assert (=> b!4044353 m!4642277))

(assert (=> b!4044353 m!4640943))

(assert (=> d!1199541 d!1200523))

(assert (=> d!1199541 d!1199951))

(assert (=> d!1199527 d!1199923))

(declare-fun bs!591176 () Bool)

(declare-fun d!1200527 () Bool)

(assert (= bs!591176 (and d!1200527 d!1199941)))

(declare-fun lambda!127459 () Int)

(assert (=> bs!591176 (= (= (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (h!48671 rules!2999)))) (= lambda!127459 lambda!127434))))

(declare-fun bs!591177 () Bool)

(assert (= bs!591177 (and d!1200527 d!1200309)))

(assert (=> bs!591177 (= (= (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) (= lambda!127459 lambda!127457))))

(assert (=> d!1200527 true))

(assert (=> d!1200527 (< (dynLambda!18375 order!22663 (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (dynLambda!18376 order!22665 lambda!127459))))

(assert (=> d!1200527 (= (equivClasses!2858 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) (Forall2!1093 lambda!127459))))

(declare-fun bs!591178 () Bool)

(assert (= bs!591178 d!1200527))

(declare-fun m!4642293 () Bool)

(assert (=> bs!591178 m!4642293))

(assert (=> b!4043157 d!1200527))

(declare-fun d!1200535 () Bool)

(declare-fun c!698798 () Bool)

(assert (=> d!1200535 (= c!698798 ((_ is Nil!43249) lt!1439046))))

(declare-fun e!2509289 () (InoxSet C!23844))

(assert (=> d!1200535 (= (content!6581 lt!1439046) e!2509289)))

(declare-fun b!4044362 () Bool)

(assert (=> b!4044362 (= e!2509289 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044363 () Bool)

(assert (=> b!4044363 (= e!2509289 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439046) true) (content!6581 (t!335212 lt!1439046))))))

(assert (= (and d!1200535 c!698798) b!4044362))

(assert (= (and d!1200535 (not c!698798)) b!4044363))

(declare-fun m!4642299 () Bool)

(assert (=> b!4044363 m!4642299))

(declare-fun m!4642301 () Bool)

(assert (=> b!4044363 m!4642301))

(assert (=> d!1199613 d!1200535))

(assert (=> d!1199613 d!1199799))

(assert (=> d!1199613 d!1200387))

(declare-fun d!1200539 () Bool)

(declare-fun lt!1439605 () Int)

(assert (=> d!1200539 (>= lt!1439605 0)))

(declare-fun e!2509294 () Int)

(assert (=> d!1200539 (= lt!1439605 e!2509294)))

(declare-fun c!698800 () Bool)

(assert (=> d!1200539 (= c!698800 ((_ is Nil!43249) lt!1439036))))

(assert (=> d!1200539 (= (size!32333 lt!1439036) lt!1439605)))

(declare-fun b!4044373 () Bool)

(assert (=> b!4044373 (= e!2509294 0)))

(declare-fun b!4044374 () Bool)

(assert (=> b!4044374 (= e!2509294 (+ 1 (size!32333 (t!335212 lt!1439036))))))

(assert (= (and d!1200539 c!698800) b!4044373))

(assert (= (and d!1200539 (not c!698800)) b!4044374))

(declare-fun m!4642303 () Bool)

(assert (=> b!4044374 m!4642303))

(assert (=> b!4043126 d!1200539))

(assert (=> b!4043126 d!1199381))

(declare-fun d!1200541 () Bool)

(declare-fun lt!1439606 () Int)

(assert (=> d!1200541 (>= lt!1439606 0)))

(declare-fun e!2509295 () Int)

(assert (=> d!1200541 (= lt!1439606 e!2509295)))

(declare-fun c!698801 () Bool)

(assert (=> d!1200541 (= c!698801 ((_ is Nil!43249) lt!1438791))))

(assert (=> d!1200541 (= (size!32333 lt!1438791) lt!1439606)))

(declare-fun b!4044375 () Bool)

(assert (=> b!4044375 (= e!2509295 0)))

(declare-fun b!4044376 () Bool)

(assert (=> b!4044376 (= e!2509295 (+ 1 (size!32333 (t!335212 lt!1438791))))))

(assert (= (and d!1200541 c!698801) b!4044375))

(assert (= (and d!1200541 (not c!698801)) b!4044376))

(declare-fun m!4642305 () Bool)

(assert (=> b!4044376 m!4642305))

(assert (=> b!4043126 d!1200541))

(declare-fun b!4044377 () Bool)

(declare-fun res!1647319 () Bool)

(declare-fun e!2509302 () Bool)

(assert (=> b!4044377 (=> res!1647319 e!2509302)))

(assert (=> b!4044377 (= res!1647319 (not (isEmpty!25817 (tail!6287 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))))

(declare-fun d!1200543 () Bool)

(declare-fun e!2509299 () Bool)

(assert (=> d!1200543 e!2509299))

(declare-fun c!698804 () Bool)

(assert (=> d!1200543 (= c!698804 ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun lt!1439607 () Bool)

(declare-fun e!2509298 () Bool)

(assert (=> d!1200543 (= lt!1439607 e!2509298)))

(declare-fun c!698803 () Bool)

(assert (=> d!1200543 (= c!698803 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(assert (=> d!1200543 (validRegex!5351 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))

(assert (=> d!1200543 (= (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))) lt!1439607)))

(declare-fun b!4044378 () Bool)

(assert (=> b!4044378 (= e!2509302 (not (= (head!8555 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))))

(declare-fun b!4044379 () Bool)

(declare-fun res!1647320 () Bool)

(declare-fun e!2509301 () Bool)

(assert (=> b!4044379 (=> res!1647320 e!2509301)))

(assert (=> b!4044379 (= res!1647320 (not ((_ is ElementMatch!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun e!2509300 () Bool)

(assert (=> b!4044379 (= e!2509300 e!2509301)))

(declare-fun b!4044380 () Bool)

(assert (=> b!4044380 (= e!2509298 (nullable!4151 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun b!4044381 () Bool)

(declare-fun call!287639 () Bool)

(assert (=> b!4044381 (= e!2509299 (= lt!1439607 call!287639))))

(declare-fun b!4044382 () Bool)

(declare-fun e!2509296 () Bool)

(assert (=> b!4044382 (= e!2509296 (= (head!8555 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))) (c!698371 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun b!4044383 () Bool)

(assert (=> b!4044383 (= e!2509299 e!2509300)))

(declare-fun c!698802 () Bool)

(assert (=> b!4044383 (= c!698802 ((_ is EmptyLang!11829) (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun b!4044384 () Bool)

(assert (=> b!4044384 (= e!2509298 (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) (head!8555 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785))))) (tail!6287 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785))))))))

(declare-fun b!4044385 () Bool)

(assert (=> b!4044385 (= e!2509300 (not lt!1439607))))

(declare-fun b!4044386 () Bool)

(declare-fun e!2509297 () Bool)

(assert (=> b!4044386 (= e!2509301 e!2509297)))

(declare-fun res!1647316 () Bool)

(assert (=> b!4044386 (=> (not res!1647316) (not e!2509297))))

(assert (=> b!4044386 (= res!1647316 (not lt!1439607))))

(declare-fun b!4044387 () Bool)

(assert (=> b!4044387 (= e!2509297 e!2509302)))

(declare-fun res!1647317 () Bool)

(assert (=> b!4044387 (=> res!1647317 e!2509302)))

(assert (=> b!4044387 (= res!1647317 call!287639)))

(declare-fun b!4044388 () Bool)

(declare-fun res!1647321 () Bool)

(assert (=> b!4044388 (=> (not res!1647321) (not e!2509296))))

(assert (=> b!4044388 (= res!1647321 (not call!287639))))

(declare-fun b!4044389 () Bool)

(declare-fun res!1647322 () Bool)

(assert (=> b!4044389 (=> res!1647322 e!2509301)))

(assert (=> b!4044389 (= res!1647322 e!2509296)))

(declare-fun res!1647318 () Bool)

(assert (=> b!4044389 (=> (not res!1647318) (not e!2509296))))

(assert (=> b!4044389 (= res!1647318 lt!1439607)))

(declare-fun b!4044390 () Bool)

(declare-fun res!1647323 () Bool)

(assert (=> b!4044390 (=> (not res!1647323) (not e!2509296))))

(assert (=> b!4044390 (= res!1647323 (isEmpty!25817 (tail!6287 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785))))))))

(declare-fun bm!287634 () Bool)

(assert (=> bm!287634 (= call!287639 (isEmpty!25817 (_1!24301 (findLongestMatchInner!1389 (regex!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))) Nil!43249 (size!32333 Nil!43249) lt!1438785 lt!1438785 (size!32333 lt!1438785)))))))

(assert (= (and d!1200543 c!698803) b!4044380))

(assert (= (and d!1200543 (not c!698803)) b!4044384))

(assert (= (and d!1200543 c!698804) b!4044381))

(assert (= (and d!1200543 (not c!698804)) b!4044383))

(assert (= (and b!4044383 c!698802) b!4044385))

(assert (= (and b!4044383 (not c!698802)) b!4044379))

(assert (= (and b!4044379 (not res!1647320)) b!4044389))

(assert (= (and b!4044389 res!1647318) b!4044388))

(assert (= (and b!4044388 res!1647321) b!4044390))

(assert (= (and b!4044390 res!1647323) b!4044382))

(assert (= (and b!4044389 (not res!1647322)) b!4044386))

(assert (= (and b!4044386 res!1647316) b!4044387))

(assert (= (and b!4044387 (not res!1647317)) b!4044377))

(assert (= (and b!4044377 (not res!1647319)) b!4044378))

(assert (= (or b!4044381 b!4044387 b!4044388) bm!287634))

(declare-fun m!4642307 () Bool)

(assert (=> b!4044390 m!4642307))

(assert (=> b!4044390 m!4642307))

(declare-fun m!4642309 () Bool)

(assert (=> b!4044390 m!4642309))

(declare-fun m!4642313 () Bool)

(assert (=> b!4044378 m!4642313))

(assert (=> b!4044382 m!4642313))

(assert (=> b!4044380 m!4640301))

(assert (=> b!4044384 m!4642313))

(assert (=> b!4044384 m!4642313))

(declare-fun m!4642319 () Bool)

(assert (=> b!4044384 m!4642319))

(assert (=> b!4044384 m!4642307))

(assert (=> b!4044384 m!4642319))

(assert (=> b!4044384 m!4642307))

(declare-fun m!4642325 () Bool)

(assert (=> b!4044384 m!4642325))

(assert (=> b!4044377 m!4642307))

(assert (=> b!4044377 m!4642307))

(assert (=> b!4044377 m!4642309))

(assert (=> bm!287634 m!4640327))

(assert (=> d!1200543 m!4640327))

(assert (=> d!1200543 m!4640299))

(assert (=> b!4043165 d!1200543))

(assert (=> b!4043165 d!1199979))

(assert (=> b!4043165 d!1199695))

(assert (=> b!4043165 d!1199961))

(declare-fun lt!1439608 () List!43373)

(declare-fun e!2509303 () Bool)

(declare-fun b!4044394 () Bool)

(assert (=> b!4044394 (= e!2509303 (or (not (= lt!1438799 Nil!43249)) (= lt!1439608 (t!335212 lt!1438785))))))

(declare-fun b!4044392 () Bool)

(declare-fun e!2509304 () List!43373)

(assert (=> b!4044392 (= e!2509304 (Cons!43249 (h!48669 (t!335212 lt!1438785)) (++!11326 (t!335212 (t!335212 lt!1438785)) lt!1438799)))))

(declare-fun b!4044391 () Bool)

(assert (=> b!4044391 (= e!2509304 lt!1438799)))

(declare-fun b!4044393 () Bool)

(declare-fun res!1647325 () Bool)

(assert (=> b!4044393 (=> (not res!1647325) (not e!2509303))))

(assert (=> b!4044393 (= res!1647325 (= (size!32333 lt!1439608) (+ (size!32333 (t!335212 lt!1438785)) (size!32333 lt!1438799))))))

(declare-fun d!1200545 () Bool)

(assert (=> d!1200545 e!2509303))

(declare-fun res!1647324 () Bool)

(assert (=> d!1200545 (=> (not res!1647324) (not e!2509303))))

(assert (=> d!1200545 (= res!1647324 (= (content!6581 lt!1439608) ((_ map or) (content!6581 (t!335212 lt!1438785)) (content!6581 lt!1438799))))))

(assert (=> d!1200545 (= lt!1439608 e!2509304)))

(declare-fun c!698805 () Bool)

(assert (=> d!1200545 (= c!698805 ((_ is Nil!43249) (t!335212 lt!1438785)))))

(assert (=> d!1200545 (= (++!11326 (t!335212 lt!1438785) lt!1438799) lt!1439608)))

(assert (= (and d!1200545 c!698805) b!4044391))

(assert (= (and d!1200545 (not c!698805)) b!4044392))

(assert (= (and d!1200545 res!1647324) b!4044393))

(assert (= (and b!4044393 res!1647325) b!4044394))

(declare-fun m!4642349 () Bool)

(assert (=> b!4044392 m!4642349))

(declare-fun m!4642353 () Bool)

(assert (=> b!4044393 m!4642353))

(assert (=> b!4044393 m!4641117))

(assert (=> b!4044393 m!4640223))

(declare-fun m!4642357 () Bool)

(assert (=> d!1200545 m!4642357))

(declare-fun m!4642359 () Bool)

(assert (=> d!1200545 m!4642359))

(assert (=> d!1200545 m!4640229))

(assert (=> b!4043129 d!1200545))

(assert (=> b!4042576 d!1199697))

(declare-fun b!4044395 () Bool)

(declare-fun res!1647329 () Bool)

(declare-fun e!2509311 () Bool)

(assert (=> b!4044395 (=> res!1647329 e!2509311)))

(assert (=> b!4044395 (= res!1647329 (not (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))))))))

(declare-fun d!1200547 () Bool)

(declare-fun e!2509308 () Bool)

(assert (=> d!1200547 e!2509308))

(declare-fun c!698808 () Bool)

(assert (=> d!1200547 (= c!698808 ((_ is EmptyExpr!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun lt!1439609 () Bool)

(declare-fun e!2509307 () Bool)

(assert (=> d!1200547 (= lt!1439609 e!2509307)))

(declare-fun c!698807 () Bool)

(assert (=> d!1200547 (= c!698807 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))))))

(assert (=> d!1200547 (validRegex!5351 (regex!6924 (rule!9998 token!484)))))

(assert (=> d!1200547 (= (matchR!5782 (regex!6924 (rule!9998 token!484)) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))) lt!1439609)))

(declare-fun b!4044396 () Bool)

(assert (=> b!4044396 (= e!2509311 (not (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))) (c!698371 (regex!6924 (rule!9998 token!484))))))))

(declare-fun b!4044397 () Bool)

(declare-fun res!1647330 () Bool)

(declare-fun e!2509310 () Bool)

(assert (=> b!4044397 (=> res!1647330 e!2509310)))

(assert (=> b!4044397 (= res!1647330 (not ((_ is ElementMatch!11829) (regex!6924 (rule!9998 token!484)))))))

(declare-fun e!2509309 () Bool)

(assert (=> b!4044397 (= e!2509309 e!2509310)))

(declare-fun b!4044398 () Bool)

(assert (=> b!4044398 (= e!2509307 (nullable!4151 (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4044399 () Bool)

(declare-fun call!287640 () Bool)

(assert (=> b!4044399 (= e!2509308 (= lt!1439609 call!287640))))

(declare-fun b!4044400 () Bool)

(declare-fun e!2509305 () Bool)

(assert (=> b!4044400 (= e!2509305 (= (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))) (c!698371 (regex!6924 (rule!9998 token!484)))))))

(declare-fun b!4044401 () Bool)

(assert (=> b!4044401 (= e!2509308 e!2509309)))

(declare-fun c!698806 () Bool)

(assert (=> b!4044401 (= c!698806 ((_ is EmptyLang!11829) (regex!6924 (rule!9998 token!484))))))

(declare-fun b!4044402 () Bool)

(assert (=> b!4044402 (= e!2509307 (matchR!5782 (derivativeStep!3557 (regex!6924 (rule!9998 token!484)) (head!8555 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965)))))) (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965)))))))))

(declare-fun b!4044403 () Bool)

(assert (=> b!4044403 (= e!2509309 (not lt!1439609))))

(declare-fun b!4044404 () Bool)

(declare-fun e!2509306 () Bool)

(assert (=> b!4044404 (= e!2509310 e!2509306)))

(declare-fun res!1647326 () Bool)

(assert (=> b!4044404 (=> (not res!1647326) (not e!2509306))))

(assert (=> b!4044404 (= res!1647326 (not lt!1439609))))

(declare-fun b!4044405 () Bool)

(assert (=> b!4044405 (= e!2509306 e!2509311)))

(declare-fun res!1647327 () Bool)

(assert (=> b!4044405 (=> res!1647327 e!2509311)))

(assert (=> b!4044405 (= res!1647327 call!287640)))

(declare-fun b!4044406 () Bool)

(declare-fun res!1647331 () Bool)

(assert (=> b!4044406 (=> (not res!1647331) (not e!2509305))))

(assert (=> b!4044406 (= res!1647331 (not call!287640))))

(declare-fun b!4044407 () Bool)

(declare-fun res!1647332 () Bool)

(assert (=> b!4044407 (=> res!1647332 e!2509310)))

(assert (=> b!4044407 (= res!1647332 e!2509305)))

(declare-fun res!1647328 () Bool)

(assert (=> b!4044407 (=> (not res!1647328) (not e!2509305))))

(assert (=> b!4044407 (= res!1647328 lt!1439609)))

(declare-fun b!4044408 () Bool)

(declare-fun res!1647333 () Bool)

(assert (=> b!4044408 (=> (not res!1647333) (not e!2509305))))

(assert (=> b!4044408 (= res!1647333 (isEmpty!25817 (tail!6287 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965)))))))))

(declare-fun bm!287635 () Bool)

(assert (=> bm!287635 (= call!287640 (isEmpty!25817 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1438965))))))))

(assert (= (and d!1200547 c!698807) b!4044398))

(assert (= (and d!1200547 (not c!698807)) b!4044402))

(assert (= (and d!1200547 c!698808) b!4044399))

(assert (= (and d!1200547 (not c!698808)) b!4044401))

(assert (= (and b!4044401 c!698806) b!4044403))

(assert (= (and b!4044401 (not c!698806)) b!4044397))

(assert (= (and b!4044397 (not res!1647330)) b!4044407))

(assert (= (and b!4044407 res!1647328) b!4044406))

(assert (= (and b!4044406 res!1647331) b!4044408))

(assert (= (and b!4044408 res!1647333) b!4044400))

(assert (= (and b!4044407 (not res!1647332)) b!4044404))

(assert (= (and b!4044404 res!1647326) b!4044405))

(assert (= (and b!4044405 (not res!1647327)) b!4044395))

(assert (= (and b!4044395 (not res!1647329)) b!4044396))

(assert (= (or b!4044399 b!4044405 b!4044406) bm!287635))

(assert (=> b!4044408 m!4639903))

(declare-fun m!4642367 () Bool)

(assert (=> b!4044408 m!4642367))

(assert (=> b!4044408 m!4642367))

(declare-fun m!4642369 () Bool)

(assert (=> b!4044408 m!4642369))

(assert (=> b!4044396 m!4639903))

(declare-fun m!4642371 () Bool)

(assert (=> b!4044396 m!4642371))

(assert (=> b!4044400 m!4639903))

(assert (=> b!4044400 m!4642371))

(assert (=> b!4044398 m!4640051))

(assert (=> b!4044402 m!4639903))

(assert (=> b!4044402 m!4642371))

(assert (=> b!4044402 m!4642371))

(declare-fun m!4642373 () Bool)

(assert (=> b!4044402 m!4642373))

(assert (=> b!4044402 m!4639903))

(assert (=> b!4044402 m!4642367))

(assert (=> b!4044402 m!4642373))

(assert (=> b!4044402 m!4642367))

(declare-fun m!4642375 () Bool)

(assert (=> b!4044402 m!4642375))

(assert (=> b!4044395 m!4639903))

(assert (=> b!4044395 m!4642367))

(assert (=> b!4044395 m!4642367))

(assert (=> b!4044395 m!4642369))

(assert (=> bm!287635 m!4639903))

(declare-fun m!4642377 () Bool)

(assert (=> bm!287635 m!4642377))

(assert (=> d!1200547 m!4639903))

(assert (=> d!1200547 m!4642377))

(assert (=> d!1200547 m!4640049))

(assert (=> b!4042889 d!1200547))

(assert (=> b!4042889 d!1200079))

(assert (=> b!4042889 d!1200081))

(assert (=> b!4042889 d!1199677))

(declare-fun b!4044420 () Bool)

(declare-fun e!2509317 () Bool)

(declare-fun e!2509318 () Bool)

(assert (=> b!4044420 (= e!2509317 e!2509318)))

(declare-fun res!1647342 () Bool)

(assert (=> b!4044420 (=> (not res!1647342) (not e!2509318))))

(assert (=> b!4044420 (= res!1647342 (not ((_ is Nil!43249) (tail!6287 lt!1438775))))))

(declare-fun b!4044421 () Bool)

(declare-fun res!1647343 () Bool)

(assert (=> b!4044421 (=> (not res!1647343) (not e!2509318))))

(assert (=> b!4044421 (= res!1647343 (= (head!8555 (tail!6287 prefix!494)) (head!8555 (tail!6287 lt!1438775))))))

(declare-fun d!1200553 () Bool)

(declare-fun e!2509319 () Bool)

(assert (=> d!1200553 e!2509319))

(declare-fun res!1647341 () Bool)

(assert (=> d!1200553 (=> res!1647341 e!2509319)))

(declare-fun lt!1439616 () Bool)

(assert (=> d!1200553 (= res!1647341 (not lt!1439616))))

(assert (=> d!1200553 (= lt!1439616 e!2509317)))

(declare-fun res!1647344 () Bool)

(assert (=> d!1200553 (=> res!1647344 e!2509317)))

(assert (=> d!1200553 (= res!1647344 ((_ is Nil!43249) (tail!6287 prefix!494)))))

(assert (=> d!1200553 (= (isPrefix!4011 (tail!6287 prefix!494) (tail!6287 lt!1438775)) lt!1439616)))

(declare-fun b!4044422 () Bool)

(assert (=> b!4044422 (= e!2509318 (isPrefix!4011 (tail!6287 (tail!6287 prefix!494)) (tail!6287 (tail!6287 lt!1438775))))))

(declare-fun b!4044423 () Bool)

(assert (=> b!4044423 (= e!2509319 (>= (size!32333 (tail!6287 lt!1438775)) (size!32333 (tail!6287 prefix!494))))))

(assert (= (and d!1200553 (not res!1647344)) b!4044420))

(assert (= (and b!4044420 res!1647342) b!4044421))

(assert (= (and b!4044421 res!1647343) b!4044422))

(assert (= (and d!1200553 (not res!1647341)) b!4044423))

(assert (=> b!4044421 m!4640163))

(assert (=> b!4044421 m!4642191))

(assert (=> b!4044421 m!4639361))

(assert (=> b!4044421 m!4640555))

(assert (=> b!4044422 m!4640163))

(assert (=> b!4044422 m!4642193))

(assert (=> b!4044422 m!4639361))

(assert (=> b!4044422 m!4640557))

(assert (=> b!4044422 m!4642193))

(assert (=> b!4044422 m!4640557))

(declare-fun m!4642383 () Bool)

(assert (=> b!4044422 m!4642383))

(assert (=> b!4044423 m!4639361))

(assert (=> b!4044423 m!4640561))

(assert (=> b!4044423 m!4640163))

(assert (=> b!4044423 m!4642197))

(assert (=> b!4043099 d!1200553))

(assert (=> b!4043099 d!1200483))

(assert (=> b!4043099 d!1199709))

(declare-fun b!4044424 () Bool)

(declare-fun e!2509320 () List!43373)

(assert (=> b!4044424 (= e!2509320 Nil!43249)))

(declare-fun b!4044427 () Bool)

(declare-fun e!2509321 () List!43373)

(assert (=> b!4044427 (= e!2509321 (++!11326 (list!16107 (left!32575 (c!698370 (charsOf!4740 (_1!24299 (v!39739 lt!1438779)))))) (list!16107 (right!32905 (c!698370 (charsOf!4740 (_1!24299 (v!39739 lt!1438779))))))))))

(declare-fun b!4044426 () Bool)

(assert (=> b!4044426 (= e!2509321 (list!16109 (xs!16441 (c!698370 (charsOf!4740 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun b!4044425 () Bool)

(assert (=> b!4044425 (= e!2509320 e!2509321)))

(declare-fun c!698812 () Bool)

(assert (=> b!4044425 (= c!698812 ((_ is Leaf!20304) (c!698370 (charsOf!4740 (_1!24299 (v!39739 lt!1438779))))))))

(declare-fun d!1200555 () Bool)

(declare-fun c!698811 () Bool)

(assert (=> d!1200555 (= c!698811 ((_ is Empty!13135) (c!698370 (charsOf!4740 (_1!24299 (v!39739 lt!1438779))))))))

(assert (=> d!1200555 (= (list!16107 (c!698370 (charsOf!4740 (_1!24299 (v!39739 lt!1438779))))) e!2509320)))

(assert (= (and d!1200555 c!698811) b!4044424))

(assert (= (and d!1200555 (not c!698811)) b!4044425))

(assert (= (and b!4044425 c!698812) b!4044426))

(assert (= (and b!4044425 (not c!698812)) b!4044427))

(declare-fun m!4642395 () Bool)

(assert (=> b!4044427 m!4642395))

(declare-fun m!4642397 () Bool)

(assert (=> b!4044427 m!4642397))

(assert (=> b!4044427 m!4642395))

(assert (=> b!4044427 m!4642397))

(declare-fun m!4642401 () Bool)

(assert (=> b!4044427 m!4642401))

(declare-fun m!4642403 () Bool)

(assert (=> b!4044426 m!4642403))

(assert (=> d!1199625 d!1200555))

(declare-fun d!1200557 () Bool)

(declare-fun c!698813 () Bool)

(assert (=> d!1200557 (= c!698813 ((_ is Nil!43249) lt!1438989))))

(declare-fun e!2509322 () (InoxSet C!23844))

(assert (=> d!1200557 (= (content!6581 lt!1438989) e!2509322)))

(declare-fun b!4044428 () Bool)

(assert (=> b!4044428 (= e!2509322 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044429 () Bool)

(assert (=> b!4044429 (= e!2509322 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438989) true) (content!6581 (t!335212 lt!1438989))))))

(assert (= (and d!1200557 c!698813) b!4044428))

(assert (= (and d!1200557 (not c!698813)) b!4044429))

(declare-fun m!4642415 () Bool)

(assert (=> b!4044429 m!4642415))

(declare-fun m!4642419 () Bool)

(assert (=> b!4044429 m!4642419))

(assert (=> d!1199511 d!1200557))

(assert (=> d!1199511 d!1199685))

(declare-fun d!1200559 () Bool)

(declare-fun c!698814 () Bool)

(assert (=> d!1200559 (= c!698814 ((_ is Nil!43249) suffixResult!105))))

(declare-fun e!2509323 () (InoxSet C!23844))

(assert (=> d!1200559 (= (content!6581 suffixResult!105) e!2509323)))

(declare-fun b!4044430 () Bool)

(assert (=> b!4044430 (= e!2509323 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044431 () Bool)

(assert (=> b!4044431 (= e!2509323 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 suffixResult!105) true) (content!6581 (t!335212 suffixResult!105))))))

(assert (= (and d!1200559 c!698814) b!4044430))

(assert (= (and d!1200559 (not c!698814)) b!4044431))

(declare-fun m!4642429 () Bool)

(assert (=> b!4044431 m!4642429))

(declare-fun m!4642431 () Bool)

(assert (=> b!4044431 m!4642431))

(assert (=> d!1199511 d!1200559))

(declare-fun d!1200561 () Bool)

(assert (=> d!1200561 (= lt!1438778 suffixResult!105)))

(assert (=> d!1200561 true))

(declare-fun _$63!1125 () Unit!62477)

(assert (=> d!1200561 (= (choose!24503 lt!1438798 lt!1438778 lt!1438798 suffixResult!105 lt!1438775) _$63!1125)))

(assert (=> d!1199395 d!1200561))

(assert (=> d!1199395 d!1199565))

(assert (=> b!4043092 d!1199897))

(assert (=> b!4043092 d!1199899))

(assert (=> d!1199515 d!1200169))

(declare-fun d!1200565 () Bool)

(assert (=> d!1200565 (= (isDefined!7105 lt!1439006) (not (isEmpty!25816 lt!1439006)))))

(declare-fun bs!591179 () Bool)

(assert (= bs!591179 d!1200565))

(assert (=> bs!591179 m!4640085))

(assert (=> b!4042989 d!1200565))

(declare-fun d!1200567 () Bool)

(declare-fun charsToInt!0 (List!43374) (_ BitVec 32))

(assert (=> d!1200567 (= (inv!16 (value!217968 token!484)) (= (charsToInt!0 (text!50525 (value!217968 token!484))) (value!217959 (value!217968 token!484))))))

(declare-fun bs!591181 () Bool)

(assert (= bs!591181 d!1200567))

(declare-fun m!4642445 () Bool)

(assert (=> bs!591181 m!4642445))

(assert (=> b!4043048 d!1200567))

(declare-fun d!1200575 () Bool)

(declare-fun lt!1439618 () Int)

(assert (=> d!1200575 (>= lt!1439618 0)))

(declare-fun e!2509327 () Int)

(assert (=> d!1200575 (= lt!1439618 e!2509327)))

(declare-fun c!698817 () Bool)

(assert (=> d!1200575 (= c!698817 ((_ is Nil!43249) lt!1439009))))

(assert (=> d!1200575 (= (size!32333 lt!1439009) lt!1439618)))

(declare-fun b!4044436 () Bool)

(assert (=> b!4044436 (= e!2509327 0)))

(declare-fun b!4044437 () Bool)

(assert (=> b!4044437 (= e!2509327 (+ 1 (size!32333 (t!335212 lt!1439009))))))

(assert (= (and d!1200575 c!698817) b!4044436))

(assert (= (and d!1200575 (not c!698817)) b!4044437))

(declare-fun m!4642449 () Bool)

(assert (=> b!4044437 m!4642449))

(assert (=> b!4043026 d!1200575))

(declare-fun d!1200577 () Bool)

(declare-fun lt!1439619 () Int)

(assert (=> d!1200577 (>= lt!1439619 0)))

(declare-fun e!2509328 () Int)

(assert (=> d!1200577 (= lt!1439619 e!2509328)))

(declare-fun c!698818 () Bool)

(assert (=> d!1200577 (= c!698818 ((_ is Nil!43249) lt!1438787))))

(assert (=> d!1200577 (= (size!32333 lt!1438787) lt!1439619)))

(declare-fun b!4044438 () Bool)

(assert (=> b!4044438 (= e!2509328 0)))

(declare-fun b!4044439 () Bool)

(assert (=> b!4044439 (= e!2509328 (+ 1 (size!32333 (t!335212 lt!1438787))))))

(assert (= (and d!1200577 c!698818) b!4044438))

(assert (= (and d!1200577 (not c!698818)) b!4044439))

(assert (=> b!4044439 m!4640939))

(assert (=> b!4043026 d!1200577))

(assert (=> b!4043026 d!1199547))

(declare-fun b!4044443 () Bool)

(declare-fun e!2509329 () Bool)

(declare-fun lt!1439620 () List!43373)

(assert (=> b!4044443 (= e!2509329 (or (not (= suffix!1299 Nil!43249)) (= lt!1439620 (t!335212 lt!1438769))))))

(declare-fun b!4044441 () Bool)

(declare-fun e!2509330 () List!43373)

(assert (=> b!4044441 (= e!2509330 (Cons!43249 (h!48669 (t!335212 lt!1438769)) (++!11326 (t!335212 (t!335212 lt!1438769)) suffix!1299)))))

(declare-fun b!4044440 () Bool)

(assert (=> b!4044440 (= e!2509330 suffix!1299)))

(declare-fun b!4044442 () Bool)

(declare-fun res!1647346 () Bool)

(assert (=> b!4044442 (=> (not res!1647346) (not e!2509329))))

(assert (=> b!4044442 (= res!1647346 (= (size!32333 lt!1439620) (+ (size!32333 (t!335212 lt!1438769)) (size!32333 suffix!1299))))))

(declare-fun d!1200579 () Bool)

(assert (=> d!1200579 e!2509329))

(declare-fun res!1647345 () Bool)

(assert (=> d!1200579 (=> (not res!1647345) (not e!2509329))))

(assert (=> d!1200579 (= res!1647345 (= (content!6581 lt!1439620) ((_ map or) (content!6581 (t!335212 lt!1438769)) (content!6581 suffix!1299))))))

(assert (=> d!1200579 (= lt!1439620 e!2509330)))

(declare-fun c!698819 () Bool)

(assert (=> d!1200579 (= c!698819 ((_ is Nil!43249) (t!335212 lt!1438769)))))

(assert (=> d!1200579 (= (++!11326 (t!335212 lt!1438769) suffix!1299) lt!1439620)))

(assert (= (and d!1200579 c!698819) b!4044440))

(assert (= (and d!1200579 (not c!698819)) b!4044441))

(assert (= (and d!1200579 res!1647345) b!4044442))

(assert (= (and b!4044442 res!1647346) b!4044443))

(declare-fun m!4642455 () Bool)

(assert (=> b!4044441 m!4642455))

(declare-fun m!4642457 () Bool)

(assert (=> b!4044442 m!4642457))

(assert (=> b!4044442 m!4640933))

(assert (=> b!4044442 m!4639241))

(declare-fun m!4642459 () Bool)

(assert (=> d!1200579 m!4642459))

(assert (=> d!1200579 m!4640475))

(assert (=> d!1200579 m!4640095))

(assert (=> b!4043029 d!1200579))

(declare-fun d!1200585 () Bool)

(declare-fun lt!1439622 () Int)

(assert (=> d!1200585 (>= lt!1439622 0)))

(declare-fun e!2509338 () Int)

(assert (=> d!1200585 (= lt!1439622 e!2509338)))

(declare-fun c!698823 () Bool)

(assert (=> d!1200585 (= c!698823 ((_ is Nil!43249) lt!1439046))))

(assert (=> d!1200585 (= (size!32333 lt!1439046) lt!1439622)))

(declare-fun b!4044458 () Bool)

(assert (=> b!4044458 (= e!2509338 0)))

(declare-fun b!4044459 () Bool)

(assert (=> b!4044459 (= e!2509338 (+ 1 (size!32333 (t!335212 lt!1439046))))))

(assert (= (and d!1200585 c!698823) b!4044458))

(assert (= (and d!1200585 (not c!698823)) b!4044459))

(declare-fun m!4642461 () Bool)

(assert (=> b!4044459 m!4642461))

(assert (=> b!4043155 d!1200585))

(assert (=> b!4043155 d!1199601))

(assert (=> b!4043155 d!1200465))

(declare-fun b!4044460 () Bool)

(declare-fun e!2509339 () Bool)

(declare-fun e!2509340 () Bool)

(assert (=> b!4044460 (= e!2509339 e!2509340)))

(declare-fun res!1647356 () Bool)

(assert (=> b!4044460 (=> (not res!1647356) (not e!2509340))))

(assert (=> b!4044460 (= res!1647356 (not ((_ is Nil!43249) (tail!6287 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))))))))

(declare-fun b!4044461 () Bool)

(declare-fun res!1647357 () Bool)

(assert (=> b!4044461 (=> (not res!1647357) (not e!2509340))))

(assert (=> b!4044461 (= res!1647357 (= (head!8555 (tail!6287 lt!1438792)) (head!8555 (tail!6287 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))))))))

(declare-fun d!1200587 () Bool)

(declare-fun e!2509341 () Bool)

(assert (=> d!1200587 e!2509341))

(declare-fun res!1647355 () Bool)

(assert (=> d!1200587 (=> res!1647355 e!2509341)))

(declare-fun lt!1439623 () Bool)

(assert (=> d!1200587 (= res!1647355 (not lt!1439623))))

(assert (=> d!1200587 (= lt!1439623 e!2509339)))

(declare-fun res!1647358 () Bool)

(assert (=> d!1200587 (=> res!1647358 e!2509339)))

(assert (=> d!1200587 (= res!1647358 ((_ is Nil!43249) (tail!6287 lt!1438792)))))

(assert (=> d!1200587 (= (isPrefix!4011 (tail!6287 lt!1438792) (tail!6287 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))) lt!1439623)))

(declare-fun b!4044462 () Bool)

(assert (=> b!4044462 (= e!2509340 (isPrefix!4011 (tail!6287 (tail!6287 lt!1438792)) (tail!6287 (tail!6287 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))))))))

(declare-fun b!4044463 () Bool)

(assert (=> b!4044463 (= e!2509341 (>= (size!32333 (tail!6287 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))) (size!32333 (tail!6287 lt!1438792))))))

(assert (= (and d!1200587 (not res!1647358)) b!4044460))

(assert (= (and b!4044460 res!1647356) b!4044461))

(assert (= (and b!4044461 res!1647357) b!4044462))

(assert (= (and d!1200587 (not res!1647355)) b!4044463))

(assert (=> b!4044461 m!4639995))

(assert (=> b!4044461 m!4640541))

(assert (=> b!4044461 m!4640283))

(declare-fun m!4642463 () Bool)

(assert (=> b!4044461 m!4642463))

(assert (=> b!4044462 m!4639995))

(assert (=> b!4044462 m!4640545))

(assert (=> b!4044462 m!4640283))

(declare-fun m!4642465 () Bool)

(assert (=> b!4044462 m!4642465))

(assert (=> b!4044462 m!4640545))

(assert (=> b!4044462 m!4642465))

(declare-fun m!4642467 () Bool)

(assert (=> b!4044462 m!4642467))

(assert (=> b!4044463 m!4640283))

(declare-fun m!4642471 () Bool)

(assert (=> b!4044463 m!4642471))

(assert (=> b!4044463 m!4639995))

(assert (=> b!4044463 m!4640553))

(assert (=> b!4043151 d!1200587))

(assert (=> b!4043151 d!1199703))

(declare-fun d!1200589 () Bool)

(assert (=> d!1200589 (= (tail!6287 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))) (t!335212 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779)))))))

(assert (=> b!4043151 d!1200589))

(declare-fun d!1200591 () Bool)

(assert (=> d!1200591 (= (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))) (isBalanced!3683 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))))))

(declare-fun bs!591183 () Bool)

(assert (= bs!591183 d!1200591))

(declare-fun m!4642481 () Bool)

(assert (=> bs!591183 m!4642481))

(assert (=> tb!243081 d!1200591))

(declare-fun d!1200595 () Bool)

(declare-fun lt!1439624 () Int)

(assert (=> d!1200595 (>= lt!1439624 0)))

(declare-fun e!2509342 () Int)

(assert (=> d!1200595 (= lt!1439624 e!2509342)))

(declare-fun c!698824 () Bool)

(assert (=> d!1200595 (= c!698824 ((_ is Nil!43249) lt!1438989))))

(assert (=> d!1200595 (= (size!32333 lt!1438989) lt!1439624)))

(declare-fun b!4044464 () Bool)

(assert (=> b!4044464 (= e!2509342 0)))

(declare-fun b!4044465 () Bool)

(assert (=> b!4044465 (= e!2509342 (+ 1 (size!32333 (t!335212 lt!1438989))))))

(assert (= (and d!1200595 c!698824) b!4044464))

(assert (= (and d!1200595 (not c!698824)) b!4044465))

(declare-fun m!4642483 () Bool)

(assert (=> b!4044465 m!4642483))

(assert (=> b!4042941 d!1200595))

(assert (=> b!4042941 d!1199379))

(declare-fun d!1200597 () Bool)

(declare-fun lt!1439625 () Int)

(assert (=> d!1200597 (>= lt!1439625 0)))

(declare-fun e!2509343 () Int)

(assert (=> d!1200597 (= lt!1439625 e!2509343)))

(declare-fun c!698825 () Bool)

(assert (=> d!1200597 (= c!698825 ((_ is Nil!43249) suffixResult!105))))

(assert (=> d!1200597 (= (size!32333 suffixResult!105) lt!1439625)))

(declare-fun b!4044466 () Bool)

(assert (=> b!4044466 (= e!2509343 0)))

(declare-fun b!4044467 () Bool)

(assert (=> b!4044467 (= e!2509343 (+ 1 (size!32333 (t!335212 suffixResult!105))))))

(assert (= (and d!1200597 c!698825) b!4044466))

(assert (= (and d!1200597 (not c!698825)) b!4044467))

(declare-fun m!4642485 () Bool)

(assert (=> b!4044467 m!4642485))

(assert (=> b!4042941 d!1200597))

(assert (=> b!4043106 d!1200041))

(declare-fun d!1200599 () Bool)

(assert (=> d!1200599 (= (head!8555 lt!1438767) (h!48669 lt!1438767))))

(assert (=> b!4043106 d!1200599))

(declare-fun d!1200601 () Bool)

(declare-fun lt!1439626 () Bool)

(assert (=> d!1200601 (= lt!1439626 (select (content!6583 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1439006)))))))

(declare-fun e!2509345 () Bool)

(assert (=> d!1200601 (= lt!1439626 e!2509345)))

(declare-fun res!1647359 () Bool)

(assert (=> d!1200601 (=> (not res!1647359) (not e!2509345))))

(assert (=> d!1200601 (= res!1647359 ((_ is Cons!43251) rules!2999))))

(assert (=> d!1200601 (= (contains!8595 rules!2999 (rule!9998 (_1!24299 (get!14192 lt!1439006)))) lt!1439626)))

(declare-fun b!4044468 () Bool)

(declare-fun e!2509344 () Bool)

(assert (=> b!4044468 (= e!2509345 e!2509344)))

(declare-fun res!1647360 () Bool)

(assert (=> b!4044468 (=> res!1647360 e!2509344)))

(assert (=> b!4044468 (= res!1647360 (= (h!48671 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1439006)))))))

(declare-fun b!4044469 () Bool)

(assert (=> b!4044469 (= e!2509344 (contains!8595 (t!335214 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1439006)))))))

(assert (= (and d!1200601 res!1647359) b!4044468))

(assert (= (and b!4044468 (not res!1647360)) b!4044469))

(assert (=> d!1200601 m!4640973))

(declare-fun m!4642487 () Bool)

(assert (=> d!1200601 m!4642487))

(declare-fun m!4642489 () Bool)

(assert (=> b!4044469 m!4642489))

(assert (=> b!4042993 d!1200601))

(assert (=> b!4042993 d!1199831))

(declare-fun d!1200603 () Bool)

(declare-fun lt!1439627 () Int)

(assert (=> d!1200603 (>= lt!1439627 0)))

(declare-fun e!2509346 () Int)

(assert (=> d!1200603 (= lt!1439627 e!2509346)))

(declare-fun c!698826 () Bool)

(assert (=> d!1200603 (= c!698826 ((_ is Nil!43249) lt!1438812))))

(assert (=> d!1200603 (= (size!32333 lt!1438812) lt!1439627)))

(declare-fun b!4044470 () Bool)

(assert (=> b!4044470 (= e!2509346 0)))

(declare-fun b!4044471 () Bool)

(assert (=> b!4044471 (= e!2509346 (+ 1 (size!32333 (t!335212 lt!1438812))))))

(assert (= (and d!1200603 c!698826) b!4044470))

(assert (= (and d!1200603 (not c!698826)) b!4044471))

(declare-fun m!4642491 () Bool)

(assert (=> b!4044471 m!4642491))

(assert (=> b!4042541 d!1200603))

(assert (=> b!4042541 d!1199379))

(declare-fun d!1200605 () Bool)

(declare-fun lt!1439628 () Int)

(assert (=> d!1200605 (>= lt!1439628 0)))

(declare-fun e!2509347 () Int)

(assert (=> d!1200605 (= lt!1439628 e!2509347)))

(declare-fun c!698827 () Bool)

(assert (=> d!1200605 (= c!698827 ((_ is Nil!43249) lt!1438762))))

(assert (=> d!1200605 (= (size!32333 lt!1438762) lt!1439628)))

(declare-fun b!4044472 () Bool)

(assert (=> b!4044472 (= e!2509347 0)))

(declare-fun b!4044473 () Bool)

(assert (=> b!4044473 (= e!2509347 (+ 1 (size!32333 (t!335212 lt!1438762))))))

(assert (= (and d!1200605 c!698827) b!4044472))

(assert (= (and d!1200605 (not c!698827)) b!4044473))

(declare-fun m!4642493 () Bool)

(assert (=> b!4044473 m!4642493))

(assert (=> b!4042541 d!1200605))

(declare-fun b!4044474 () Bool)

(declare-fun e!2509349 () Option!9338)

(declare-fun lt!1439629 () Option!9338)

(declare-fun lt!1439632 () Option!9338)

(assert (=> b!4044474 (= e!2509349 (ite (and ((_ is None!9337) lt!1439629) ((_ is None!9337) lt!1439632)) None!9337 (ite ((_ is None!9337) lt!1439632) lt!1439629 (ite ((_ is None!9337) lt!1439629) lt!1439632 (ite (>= (size!32334 (_1!24299 (v!39739 lt!1439629))) (size!32334 (_1!24299 (v!39739 lt!1439632)))) lt!1439629 lt!1439632)))))))

(declare-fun call!287642 () Option!9338)

(assert (=> b!4044474 (= lt!1439629 call!287642)))

(assert (=> b!4044474 (= lt!1439632 (maxPrefix!3811 thiss!21717 (t!335214 (t!335214 rules!2999)) lt!1438785))))

(declare-fun b!4044475 () Bool)

(declare-fun res!1647367 () Bool)

(declare-fun e!2509350 () Bool)

(assert (=> b!4044475 (=> (not res!1647367) (not e!2509350))))

(declare-fun lt!1439633 () Option!9338)

(assert (=> b!4044475 (= res!1647367 (< (size!32333 (_2!24299 (get!14192 lt!1439633))) (size!32333 lt!1438785)))))

(declare-fun bm!287637 () Bool)

(assert (=> bm!287637 (= call!287642 (maxPrefixOneRule!2823 thiss!21717 (h!48671 (t!335214 rules!2999)) lt!1438785))))

(declare-fun b!4044476 () Bool)

(declare-fun res!1647365 () Bool)

(assert (=> b!4044476 (=> (not res!1647365) (not e!2509350))))

(assert (=> b!4044476 (= res!1647365 (matchR!5782 (regex!6924 (rule!9998 (_1!24299 (get!14192 lt!1439633)))) (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439633))))))))

(declare-fun b!4044477 () Bool)

(declare-fun e!2509348 () Bool)

(assert (=> b!4044477 (= e!2509348 e!2509350)))

(declare-fun res!1647364 () Bool)

(assert (=> b!4044477 (=> (not res!1647364) (not e!2509350))))

(assert (=> b!4044477 (= res!1647364 (isDefined!7105 lt!1439633))))

(declare-fun d!1200607 () Bool)

(assert (=> d!1200607 e!2509348))

(declare-fun res!1647361 () Bool)

(assert (=> d!1200607 (=> res!1647361 e!2509348)))

(assert (=> d!1200607 (= res!1647361 (isEmpty!25816 lt!1439633))))

(assert (=> d!1200607 (= lt!1439633 e!2509349)))

(declare-fun c!698828 () Bool)

(assert (=> d!1200607 (= c!698828 (and ((_ is Cons!43251) (t!335214 rules!2999)) ((_ is Nil!43251) (t!335214 (t!335214 rules!2999)))))))

(declare-fun lt!1439630 () Unit!62477)

(declare-fun lt!1439631 () Unit!62477)

(assert (=> d!1200607 (= lt!1439630 lt!1439631)))

(assert (=> d!1200607 (isPrefix!4011 lt!1438785 lt!1438785)))

(assert (=> d!1200607 (= lt!1439631 (lemmaIsPrefixRefl!2578 lt!1438785 lt!1438785))))

(assert (=> d!1200607 (rulesValidInductive!2526 thiss!21717 (t!335214 rules!2999))))

(assert (=> d!1200607 (= (maxPrefix!3811 thiss!21717 (t!335214 rules!2999) lt!1438785) lt!1439633)))

(declare-fun b!4044478 () Bool)

(assert (=> b!4044478 (= e!2509349 call!287642)))

(declare-fun b!4044479 () Bool)

(declare-fun res!1647366 () Bool)

(assert (=> b!4044479 (=> (not res!1647366) (not e!2509350))))

(assert (=> b!4044479 (= res!1647366 (= (value!217968 (_1!24299 (get!14192 lt!1439633))) (apply!10113 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439633)))) (seqFromList!5141 (originalCharacters!7524 (_1!24299 (get!14192 lt!1439633)))))))))

(declare-fun b!4044480 () Bool)

(declare-fun res!1647362 () Bool)

(assert (=> b!4044480 (=> (not res!1647362) (not e!2509350))))

(assert (=> b!4044480 (= res!1647362 (= (++!11326 (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439633)))) (_2!24299 (get!14192 lt!1439633))) lt!1438785))))

(declare-fun b!4044481 () Bool)

(assert (=> b!4044481 (= e!2509350 (contains!8595 (t!335214 rules!2999) (rule!9998 (_1!24299 (get!14192 lt!1439633)))))))

(declare-fun b!4044482 () Bool)

(declare-fun res!1647363 () Bool)

(assert (=> b!4044482 (=> (not res!1647363) (not e!2509350))))

(assert (=> b!4044482 (= res!1647363 (= (list!16106 (charsOf!4740 (_1!24299 (get!14192 lt!1439633)))) (originalCharacters!7524 (_1!24299 (get!14192 lt!1439633)))))))

(assert (= (and d!1200607 c!698828) b!4044478))

(assert (= (and d!1200607 (not c!698828)) b!4044474))

(assert (= (or b!4044478 b!4044474) bm!287637))

(assert (= (and d!1200607 (not res!1647361)) b!4044477))

(assert (= (and b!4044477 res!1647364) b!4044482))

(assert (= (and b!4044482 res!1647363) b!4044475))

(assert (= (and b!4044475 res!1647367) b!4044480))

(assert (= (and b!4044480 res!1647362) b!4044479))

(assert (= (and b!4044479 res!1647366) b!4044476))

(assert (= (and b!4044476 res!1647365) b!4044481))

(declare-fun m!4642495 () Bool)

(assert (=> b!4044479 m!4642495))

(declare-fun m!4642497 () Bool)

(assert (=> b!4044479 m!4642497))

(assert (=> b!4044479 m!4642497))

(declare-fun m!4642499 () Bool)

(assert (=> b!4044479 m!4642499))

(assert (=> b!4044475 m!4642495))

(declare-fun m!4642501 () Bool)

(assert (=> b!4044475 m!4642501))

(assert (=> b!4044475 m!4639471))

(declare-fun m!4642503 () Bool)

(assert (=> b!4044474 m!4642503))

(assert (=> b!4044476 m!4642495))

(declare-fun m!4642505 () Bool)

(assert (=> b!4044476 m!4642505))

(assert (=> b!4044476 m!4642505))

(declare-fun m!4642507 () Bool)

(assert (=> b!4044476 m!4642507))

(assert (=> b!4044476 m!4642507))

(declare-fun m!4642509 () Bool)

(assert (=> b!4044476 m!4642509))

(assert (=> b!4044480 m!4642495))

(assert (=> b!4044480 m!4642505))

(assert (=> b!4044480 m!4642505))

(assert (=> b!4044480 m!4642507))

(assert (=> b!4044480 m!4642507))

(declare-fun m!4642511 () Bool)

(assert (=> b!4044480 m!4642511))

(assert (=> b!4044481 m!4642495))

(declare-fun m!4642513 () Bool)

(assert (=> b!4044481 m!4642513))

(declare-fun m!4642515 () Bool)

(assert (=> bm!287637 m!4642515))

(declare-fun m!4642517 () Bool)

(assert (=> b!4044477 m!4642517))

(assert (=> b!4044482 m!4642495))

(assert (=> b!4044482 m!4642505))

(assert (=> b!4044482 m!4642505))

(assert (=> b!4044482 m!4642507))

(declare-fun m!4642519 () Bool)

(assert (=> d!1200607 m!4642519))

(assert (=> d!1200607 m!4639495))

(assert (=> d!1200607 m!4639497))

(assert (=> d!1200607 m!4640855))

(assert (=> b!4042643 d!1200607))

(declare-fun e!2509361 () Bool)

(declare-fun lt!1439636 () List!43373)

(declare-fun b!4044506 () Bool)

(assert (=> b!4044506 (= e!2509361 (or (not (= newSuffixResult!27 Nil!43249)) (= lt!1439636 (t!335212 lt!1438798))))))

(declare-fun b!4044504 () Bool)

(declare-fun e!2509362 () List!43373)

(assert (=> b!4044504 (= e!2509362 (Cons!43249 (h!48669 (t!335212 lt!1438798)) (++!11326 (t!335212 (t!335212 lt!1438798)) newSuffixResult!27)))))

(declare-fun b!4044503 () Bool)

(assert (=> b!4044503 (= e!2509362 newSuffixResult!27)))

(declare-fun b!4044505 () Bool)

(declare-fun res!1647369 () Bool)

(assert (=> b!4044505 (=> (not res!1647369) (not e!2509361))))

(assert (=> b!4044505 (= res!1647369 (= (size!32333 lt!1439636) (+ (size!32333 (t!335212 lt!1438798)) (size!32333 newSuffixResult!27))))))

(declare-fun d!1200609 () Bool)

(assert (=> d!1200609 e!2509361))

(declare-fun res!1647368 () Bool)

(assert (=> d!1200609 (=> (not res!1647368) (not e!2509361))))

(assert (=> d!1200609 (= res!1647368 (= (content!6581 lt!1439636) ((_ map or) (content!6581 (t!335212 lt!1438798)) (content!6581 newSuffixResult!27))))))

(assert (=> d!1200609 (= lt!1439636 e!2509362)))

(declare-fun c!698839 () Bool)

(assert (=> d!1200609 (= c!698839 ((_ is Nil!43249) (t!335212 lt!1438798)))))

(assert (=> d!1200609 (= (++!11326 (t!335212 lt!1438798) newSuffixResult!27) lt!1439636)))

(assert (= (and d!1200609 c!698839) b!4044503))

(assert (= (and d!1200609 (not c!698839)) b!4044504))

(assert (= (and d!1200609 res!1647368) b!4044505))

(assert (= (and b!4044505 res!1647369) b!4044506))

(declare-fun m!4642521 () Bool)

(assert (=> b!4044504 m!4642521))

(declare-fun m!4642523 () Bool)

(assert (=> b!4044505 m!4642523))

(assert (=> b!4044505 m!4639587))

(assert (=> b!4044505 m!4640249))

(declare-fun m!4642525 () Bool)

(assert (=> d!1200609 m!4642525))

(assert (=> d!1200609 m!4640471))

(assert (=> d!1200609 m!4640253))

(assert (=> b!4043137 d!1200609))

(declare-fun b!4044507 () Bool)

(declare-fun e!2509363 () Bool)

(declare-fun e!2509364 () Bool)

(assert (=> b!4044507 (= e!2509363 e!2509364)))

(declare-fun res!1647371 () Bool)

(assert (=> b!4044507 (=> (not res!1647371) (not e!2509364))))

(assert (=> b!4044507 (= res!1647371 (not ((_ is Nil!43249) (++!11326 lt!1438798 suffixResult!105))))))

(declare-fun b!4044508 () Bool)

(declare-fun res!1647372 () Bool)

(assert (=> b!4044508 (=> (not res!1647372) (not e!2509364))))

(assert (=> b!4044508 (= res!1647372 (= (head!8555 lt!1438798) (head!8555 (++!11326 lt!1438798 suffixResult!105))))))

(declare-fun d!1200611 () Bool)

(declare-fun e!2509365 () Bool)

(assert (=> d!1200611 e!2509365))

(declare-fun res!1647370 () Bool)

(assert (=> d!1200611 (=> res!1647370 e!2509365)))

(declare-fun lt!1439637 () Bool)

(assert (=> d!1200611 (= res!1647370 (not lt!1439637))))

(assert (=> d!1200611 (= lt!1439637 e!2509363)))

(declare-fun res!1647373 () Bool)

(assert (=> d!1200611 (=> res!1647373 e!2509363)))

(assert (=> d!1200611 (= res!1647373 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1200611 (= (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 suffixResult!105)) lt!1439637)))

(declare-fun b!4044509 () Bool)

(assert (=> b!4044509 (= e!2509364 (isPrefix!4011 (tail!6287 lt!1438798) (tail!6287 (++!11326 lt!1438798 suffixResult!105))))))

(declare-fun b!4044510 () Bool)

(assert (=> b!4044510 (= e!2509365 (>= (size!32333 (++!11326 lt!1438798 suffixResult!105)) (size!32333 lt!1438798)))))

(assert (= (and d!1200611 (not res!1647373)) b!4044507))

(assert (= (and b!4044507 res!1647371) b!4044508))

(assert (= (and b!4044508 res!1647372) b!4044509))

(assert (= (and d!1200611 (not res!1647370)) b!4044510))

(assert (=> b!4044508 m!4639555))

(assert (=> b!4044508 m!4639185))

(declare-fun m!4642527 () Bool)

(assert (=> b!4044508 m!4642527))

(assert (=> b!4044509 m!4639565))

(assert (=> b!4044509 m!4639185))

(declare-fun m!4642529 () Bool)

(assert (=> b!4044509 m!4642529))

(assert (=> b!4044509 m!4639565))

(assert (=> b!4044509 m!4642529))

(declare-fun m!4642531 () Bool)

(assert (=> b!4044509 m!4642531))

(assert (=> b!4044510 m!4639185))

(declare-fun m!4642533 () Bool)

(assert (=> b!4044510 m!4642533))

(assert (=> b!4044510 m!4639203))

(assert (=> d!1199563 d!1200611))

(assert (=> d!1199563 d!1199511))

(declare-fun d!1200613 () Bool)

(assert (=> d!1200613 (isPrefix!4011 lt!1438798 (++!11326 lt!1438798 suffixResult!105))))

(assert (=> d!1200613 true))

(declare-fun _$46!1785 () Unit!62477)

(assert (=> d!1200613 (= (choose!24505 lt!1438798 suffixResult!105) _$46!1785)))

(declare-fun bs!591184 () Bool)

(assert (= bs!591184 d!1200613))

(assert (=> bs!591184 m!4639185))

(assert (=> bs!591184 m!4639185))

(assert (=> bs!591184 m!4640167))

(assert (=> d!1199563 d!1200613))

(declare-fun d!1200615 () Bool)

(assert (=> d!1200615 (= (inv!57810 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))) (isBalanced!3683 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))))))

(declare-fun bs!591185 () Bool)

(assert (= bs!591185 d!1200615))

(declare-fun m!4642535 () Bool)

(assert (=> bs!591185 m!4642535))

(assert (=> tb!243109 d!1200615))

(declare-fun b!4044514 () Bool)

(declare-fun lt!1439638 () List!43373)

(declare-fun e!2509366 () Bool)

(assert (=> b!4044514 (= e!2509366 (or (not (= lt!1439031 Nil!43249)) (= lt!1439638 lt!1438798)))))

(declare-fun b!4044512 () Bool)

(declare-fun e!2509367 () List!43373)

(assert (=> b!4044512 (= e!2509367 (Cons!43249 (h!48669 lt!1438798) (++!11326 (t!335212 lt!1438798) lt!1439031)))))

(declare-fun b!4044511 () Bool)

(assert (=> b!4044511 (= e!2509367 lt!1439031)))

(declare-fun b!4044513 () Bool)

(declare-fun res!1647375 () Bool)

(assert (=> b!4044513 (=> (not res!1647375) (not e!2509366))))

(assert (=> b!4044513 (= res!1647375 (= (size!32333 lt!1439638) (+ (size!32333 lt!1438798) (size!32333 lt!1439031))))))

(declare-fun d!1200617 () Bool)

(assert (=> d!1200617 e!2509366))

(declare-fun res!1647374 () Bool)

(assert (=> d!1200617 (=> (not res!1647374) (not e!2509366))))

(assert (=> d!1200617 (= res!1647374 (= (content!6581 lt!1439638) ((_ map or) (content!6581 lt!1438798) (content!6581 lt!1439031))))))

(assert (=> d!1200617 (= lt!1439638 e!2509367)))

(declare-fun c!698840 () Bool)

(assert (=> d!1200617 (= c!698840 ((_ is Nil!43249) lt!1438798))))

(assert (=> d!1200617 (= (++!11326 lt!1438798 lt!1439031) lt!1439638)))

(assert (= (and d!1200617 c!698840) b!4044511))

(assert (= (and d!1200617 (not c!698840)) b!4044512))

(assert (= (and d!1200617 res!1647374) b!4044513))

(assert (= (and b!4044513 res!1647375) b!4044514))

(declare-fun m!4642537 () Bool)

(assert (=> b!4044512 m!4642537))

(declare-fun m!4642539 () Bool)

(assert (=> b!4044513 m!4642539))

(assert (=> b!4044513 m!4639203))

(declare-fun m!4642541 () Bool)

(assert (=> b!4044513 m!4642541))

(declare-fun m!4642543 () Bool)

(assert (=> d!1200617 m!4642543))

(assert (=> d!1200617 m!4639353))

(declare-fun m!4642545 () Bool)

(assert (=> d!1200617 m!4642545))

(assert (=> d!1199581 d!1200617))

(assert (=> d!1199581 d!1199381))

(assert (=> d!1199581 d!1199379))

(assert (=> b!4043121 d!1200041))

(assert (=> b!4043121 d!1199731))

(declare-fun d!1200619 () Bool)

(declare-fun c!698841 () Bool)

(assert (=> d!1200619 (= c!698841 ((_ is Nil!43249) lt!1439037))))

(declare-fun e!2509368 () (InoxSet C!23844))

(assert (=> d!1200619 (= (content!6581 lt!1439037) e!2509368)))

(declare-fun b!4044515 () Bool)

(assert (=> b!4044515 (= e!2509368 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044516 () Bool)

(assert (=> b!4044516 (= e!2509368 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1439037) true) (content!6581 (t!335212 lt!1439037))))))

(assert (= (and d!1200619 c!698841) b!4044515))

(assert (= (and d!1200619 (not c!698841)) b!4044516))

(declare-fun m!4642547 () Bool)

(assert (=> b!4044516 m!4642547))

(declare-fun m!4642549 () Bool)

(assert (=> b!4044516 m!4642549))

(assert (=> d!1199589 d!1200619))

(declare-fun d!1200621 () Bool)

(declare-fun c!698842 () Bool)

(assert (=> d!1200621 (= c!698842 ((_ is Nil!43249) lt!1438785))))

(declare-fun e!2509369 () (InoxSet C!23844))

(assert (=> d!1200621 (= (content!6581 lt!1438785) e!2509369)))

(declare-fun b!4044517 () Bool)

(assert (=> b!4044517 (= e!2509369 ((as const (Array C!23844 Bool)) false))))

(declare-fun b!4044518 () Bool)

(assert (=> b!4044518 (= e!2509369 ((_ map or) (store ((as const (Array C!23844 Bool)) false) (h!48669 lt!1438785) true) (content!6581 (t!335212 lt!1438785))))))

(assert (= (and d!1200621 c!698842) b!4044517))

(assert (= (and d!1200621 (not c!698842)) b!4044518))

(declare-fun m!4642551 () Bool)

(assert (=> b!4044518 m!4642551))

(assert (=> b!4044518 m!4642359))

(assert (=> d!1199589 d!1200621))

(assert (=> d!1199589 d!1200441))

(assert (=> b!4043080 d!1200041))

(assert (=> d!1199609 d!1199611))

(assert (=> d!1199609 d!1199605))

(declare-fun d!1200623 () Bool)

(assert (=> d!1200623 (isPrefix!4011 lt!1438792 (++!11326 lt!1438792 (_2!24299 (v!39739 lt!1438779))))))

(assert (=> d!1200623 true))

(declare-fun _$46!1786 () Unit!62477)

(assert (=> d!1200623 (= (choose!24505 lt!1438792 (_2!24299 (v!39739 lt!1438779))) _$46!1786)))

(declare-fun bs!591186 () Bool)

(assert (= bs!591186 d!1200623))

(assert (=> bs!591186 m!4639325))

(assert (=> bs!591186 m!4639325))

(assert (=> bs!591186 m!4639329))

(assert (=> d!1199609 d!1200623))

(declare-fun d!1200625 () Bool)

(assert (=> d!1200625 (= (list!16106 lt!1438893) (list!16107 (c!698370 lt!1438893)))))

(declare-fun bs!591187 () Bool)

(assert (= bs!591187 d!1200625))

(declare-fun m!4642553 () Bool)

(assert (=> bs!591187 m!4642553))

(assert (=> d!1199385 d!1200625))

(declare-fun b!4044519 () Bool)

(declare-fun e!2509370 () Bool)

(declare-fun tp!1227235 () Bool)

(assert (=> b!4044519 (= e!2509370 (and tp_is_empty!20629 tp!1227235))))

(assert (=> b!4043205 (= tp!1227201 e!2509370)))

(assert (= (and b!4043205 ((_ is Cons!43249) (t!335212 (t!335212 suffix!1299)))) b!4044519))

(declare-fun b!4044520 () Bool)

(declare-fun e!2509371 () Bool)

(declare-fun tp!1227236 () Bool)

(assert (=> b!4044520 (= e!2509371 (and tp_is_empty!20629 tp!1227236))))

(assert (=> b!4043192 (= tp!1227187 e!2509371)))

(assert (= (and b!4043192 ((_ is Cons!43249) (t!335212 (t!335212 newSuffixResult!27)))) b!4044520))

(declare-fun tp!1227243 () Bool)

(declare-fun e!2509381 () Bool)

(declare-fun tp!1227245 () Bool)

(declare-fun b!4044539 () Bool)

(assert (=> b!4044539 (= e!2509381 (and (inv!57809 (left!32575 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))))) tp!1227243 (inv!57809 (right!32905 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))))) tp!1227245))))

(declare-fun b!4044541 () Bool)

(declare-fun e!2509382 () Bool)

(declare-fun tp!1227244 () Bool)

(assert (=> b!4044541 (= e!2509382 tp!1227244)))

(declare-fun b!4044540 () Bool)

(declare-fun inv!57815 (IArray!26275) Bool)

(assert (=> b!4044540 (= e!2509381 (and (inv!57815 (xs!16441 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))))) e!2509382))))

(assert (=> b!4043169 (= tp!1227182 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779)))))) e!2509381))))

(assert (= (and b!4043169 ((_ is Node!13135) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))))) b!4044539))

(assert (= b!4044540 b!4044541))

(assert (= (and b!4043169 ((_ is Leaf!20304) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))) (value!217968 (_1!24299 (v!39739 lt!1438779))))))) b!4044540))

(declare-fun m!4642555 () Bool)

(assert (=> b!4044539 m!4642555))

(declare-fun m!4642557 () Bool)

(assert (=> b!4044539 m!4642557))

(declare-fun m!4642559 () Bool)

(assert (=> b!4044540 m!4642559))

(assert (=> b!4043169 m!4640343))

(declare-fun e!2509383 () Bool)

(assert (=> b!4043217 (= tp!1227215 e!2509383)))

(declare-fun b!4044542 () Bool)

(assert (=> b!4044542 (= e!2509383 tp_is_empty!20629)))

(declare-fun b!4044544 () Bool)

(declare-fun tp!1227246 () Bool)

(assert (=> b!4044544 (= e!2509383 tp!1227246)))

(declare-fun b!4044543 () Bool)

(declare-fun tp!1227249 () Bool)

(declare-fun tp!1227250 () Bool)

(assert (=> b!4044543 (= e!2509383 (and tp!1227249 tp!1227250))))

(declare-fun b!4044545 () Bool)

(declare-fun tp!1227247 () Bool)

(declare-fun tp!1227248 () Bool)

(assert (=> b!4044545 (= e!2509383 (and tp!1227247 tp!1227248))))

(assert (= (and b!4043217 ((_ is ElementMatch!11829) (regOne!24170 (regex!6924 (rule!9998 token!484))))) b!4044542))

(assert (= (and b!4043217 ((_ is Concat!18984) (regOne!24170 (regex!6924 (rule!9998 token!484))))) b!4044543))

(assert (= (and b!4043217 ((_ is Star!11829) (regOne!24170 (regex!6924 (rule!9998 token!484))))) b!4044544))

(assert (= (and b!4043217 ((_ is Union!11829) (regOne!24170 (regex!6924 (rule!9998 token!484))))) b!4044545))

(declare-fun e!2509384 () Bool)

(assert (=> b!4043217 (= tp!1227216 e!2509384)))

(declare-fun b!4044546 () Bool)

(assert (=> b!4044546 (= e!2509384 tp_is_empty!20629)))

(declare-fun b!4044548 () Bool)

(declare-fun tp!1227251 () Bool)

(assert (=> b!4044548 (= e!2509384 tp!1227251)))

(declare-fun b!4044547 () Bool)

(declare-fun tp!1227254 () Bool)

(declare-fun tp!1227255 () Bool)

(assert (=> b!4044547 (= e!2509384 (and tp!1227254 tp!1227255))))

(declare-fun b!4044549 () Bool)

(declare-fun tp!1227252 () Bool)

(declare-fun tp!1227253 () Bool)

(assert (=> b!4044549 (= e!2509384 (and tp!1227252 tp!1227253))))

(assert (= (and b!4043217 ((_ is ElementMatch!11829) (regTwo!24170 (regex!6924 (rule!9998 token!484))))) b!4044546))

(assert (= (and b!4043217 ((_ is Concat!18984) (regTwo!24170 (regex!6924 (rule!9998 token!484))))) b!4044547))

(assert (= (and b!4043217 ((_ is Star!11829) (regTwo!24170 (regex!6924 (rule!9998 token!484))))) b!4044548))

(assert (= (and b!4043217 ((_ is Union!11829) (regTwo!24170 (regex!6924 (rule!9998 token!484))))) b!4044549))

(declare-fun e!2509385 () Bool)

(assert (=> b!4043221 (= tp!1227220 e!2509385)))

(declare-fun b!4044550 () Bool)

(assert (=> b!4044550 (= e!2509385 tp_is_empty!20629)))

(declare-fun b!4044552 () Bool)

(declare-fun tp!1227256 () Bool)

(assert (=> b!4044552 (= e!2509385 tp!1227256)))

(declare-fun b!4044551 () Bool)

(declare-fun tp!1227259 () Bool)

(declare-fun tp!1227260 () Bool)

(assert (=> b!4044551 (= e!2509385 (and tp!1227259 tp!1227260))))

(declare-fun b!4044553 () Bool)

(declare-fun tp!1227257 () Bool)

(declare-fun tp!1227258 () Bool)

(assert (=> b!4044553 (= e!2509385 (and tp!1227257 tp!1227258))))

(assert (= (and b!4043221 ((_ is ElementMatch!11829) (regOne!24170 (regex!6924 (h!48671 rules!2999))))) b!4044550))

(assert (= (and b!4043221 ((_ is Concat!18984) (regOne!24170 (regex!6924 (h!48671 rules!2999))))) b!4044551))

(assert (= (and b!4043221 ((_ is Star!11829) (regOne!24170 (regex!6924 (h!48671 rules!2999))))) b!4044552))

(assert (= (and b!4043221 ((_ is Union!11829) (regOne!24170 (regex!6924 (h!48671 rules!2999))))) b!4044553))

(declare-fun e!2509388 () Bool)

(assert (=> b!4043221 (= tp!1227221 e!2509388)))

(declare-fun b!4044558 () Bool)

(assert (=> b!4044558 (= e!2509388 tp_is_empty!20629)))

(declare-fun b!4044560 () Bool)

(declare-fun tp!1227261 () Bool)

(assert (=> b!4044560 (= e!2509388 tp!1227261)))

(declare-fun b!4044559 () Bool)

(declare-fun tp!1227264 () Bool)

(declare-fun tp!1227265 () Bool)

(assert (=> b!4044559 (= e!2509388 (and tp!1227264 tp!1227265))))

(declare-fun b!4044561 () Bool)

(declare-fun tp!1227262 () Bool)

(declare-fun tp!1227263 () Bool)

(assert (=> b!4044561 (= e!2509388 (and tp!1227262 tp!1227263))))

(assert (= (and b!4043221 ((_ is ElementMatch!11829) (regTwo!24170 (regex!6924 (h!48671 rules!2999))))) b!4044558))

(assert (= (and b!4043221 ((_ is Concat!18984) (regTwo!24170 (regex!6924 (h!48671 rules!2999))))) b!4044559))

(assert (= (and b!4043221 ((_ is Star!11829) (regTwo!24170 (regex!6924 (h!48671 rules!2999))))) b!4044560))

(assert (= (and b!4043221 ((_ is Union!11829) (regTwo!24170 (regex!6924 (h!48671 rules!2999))))) b!4044561))

(declare-fun e!2509389 () Bool)

(assert (=> b!4043218 (= tp!1227212 e!2509389)))

(declare-fun b!4044562 () Bool)

(assert (=> b!4044562 (= e!2509389 tp_is_empty!20629)))

(declare-fun b!4044564 () Bool)

(declare-fun tp!1227266 () Bool)

(assert (=> b!4044564 (= e!2509389 tp!1227266)))

(declare-fun b!4044563 () Bool)

(declare-fun tp!1227269 () Bool)

(declare-fun tp!1227270 () Bool)

(assert (=> b!4044563 (= e!2509389 (and tp!1227269 tp!1227270))))

(declare-fun b!4044565 () Bool)

(declare-fun tp!1227267 () Bool)

(declare-fun tp!1227268 () Bool)

(assert (=> b!4044565 (= e!2509389 (and tp!1227267 tp!1227268))))

(assert (= (and b!4043218 ((_ is ElementMatch!11829) (reg!12158 (regex!6924 (rule!9998 token!484))))) b!4044562))

(assert (= (and b!4043218 ((_ is Concat!18984) (reg!12158 (regex!6924 (rule!9998 token!484))))) b!4044563))

(assert (= (and b!4043218 ((_ is Star!11829) (reg!12158 (regex!6924 (rule!9998 token!484))))) b!4044564))

(assert (= (and b!4043218 ((_ is Union!11829) (reg!12158 (regex!6924 (rule!9998 token!484))))) b!4044565))

(declare-fun e!2509390 () Bool)

(assert (=> b!4043223 (= tp!1227218 e!2509390)))

(declare-fun b!4044566 () Bool)

(assert (=> b!4044566 (= e!2509390 tp_is_empty!20629)))

(declare-fun b!4044568 () Bool)

(declare-fun tp!1227271 () Bool)

(assert (=> b!4044568 (= e!2509390 tp!1227271)))

(declare-fun b!4044567 () Bool)

(declare-fun tp!1227274 () Bool)

(declare-fun tp!1227275 () Bool)

(assert (=> b!4044567 (= e!2509390 (and tp!1227274 tp!1227275))))

(declare-fun b!4044569 () Bool)

(declare-fun tp!1227272 () Bool)

(declare-fun tp!1227273 () Bool)

(assert (=> b!4044569 (= e!2509390 (and tp!1227272 tp!1227273))))

(assert (= (and b!4043223 ((_ is ElementMatch!11829) (regOne!24171 (regex!6924 (h!48671 rules!2999))))) b!4044566))

(assert (= (and b!4043223 ((_ is Concat!18984) (regOne!24171 (regex!6924 (h!48671 rules!2999))))) b!4044567))

(assert (= (and b!4043223 ((_ is Star!11829) (regOne!24171 (regex!6924 (h!48671 rules!2999))))) b!4044568))

(assert (= (and b!4043223 ((_ is Union!11829) (regOne!24171 (regex!6924 (h!48671 rules!2999))))) b!4044569))

(declare-fun e!2509398 () Bool)

(assert (=> b!4043223 (= tp!1227219 e!2509398)))

(declare-fun b!4044576 () Bool)

(assert (=> b!4044576 (= e!2509398 tp_is_empty!20629)))

(declare-fun b!4044580 () Bool)

(declare-fun tp!1227276 () Bool)

(assert (=> b!4044580 (= e!2509398 tp!1227276)))

(declare-fun b!4044578 () Bool)

(declare-fun tp!1227279 () Bool)

(declare-fun tp!1227280 () Bool)

(assert (=> b!4044578 (= e!2509398 (and tp!1227279 tp!1227280))))

(declare-fun b!4044582 () Bool)

(declare-fun tp!1227277 () Bool)

(declare-fun tp!1227278 () Bool)

(assert (=> b!4044582 (= e!2509398 (and tp!1227277 tp!1227278))))

(assert (= (and b!4043223 ((_ is ElementMatch!11829) (regTwo!24171 (regex!6924 (h!48671 rules!2999))))) b!4044576))

(assert (= (and b!4043223 ((_ is Concat!18984) (regTwo!24171 (regex!6924 (h!48671 rules!2999))))) b!4044578))

(assert (= (and b!4043223 ((_ is Star!11829) (regTwo!24171 (regex!6924 (h!48671 rules!2999))))) b!4044580))

(assert (= (and b!4043223 ((_ is Union!11829) (regTwo!24171 (regex!6924 (h!48671 rules!2999))))) b!4044582))

(declare-fun b!4044583 () Bool)

(declare-fun e!2509399 () Bool)

(declare-fun tp!1227281 () Bool)

(assert (=> b!4044583 (= e!2509399 (and tp_is_empty!20629 tp!1227281))))

(assert (=> b!4043193 (= tp!1227188 e!2509399)))

(assert (= (and b!4043193 ((_ is Cons!43249) (t!335212 (t!335212 prefix!494)))) b!4044583))

(declare-fun e!2509400 () Bool)

(assert (=> b!4043222 (= tp!1227217 e!2509400)))

(declare-fun b!4044584 () Bool)

(assert (=> b!4044584 (= e!2509400 tp_is_empty!20629)))

(declare-fun b!4044586 () Bool)

(declare-fun tp!1227282 () Bool)

(assert (=> b!4044586 (= e!2509400 tp!1227282)))

(declare-fun b!4044585 () Bool)

(declare-fun tp!1227285 () Bool)

(declare-fun tp!1227286 () Bool)

(assert (=> b!4044585 (= e!2509400 (and tp!1227285 tp!1227286))))

(declare-fun b!4044587 () Bool)

(declare-fun tp!1227283 () Bool)

(declare-fun tp!1227284 () Bool)

(assert (=> b!4044587 (= e!2509400 (and tp!1227283 tp!1227284))))

(assert (= (and b!4043222 ((_ is ElementMatch!11829) (reg!12158 (regex!6924 (h!48671 rules!2999))))) b!4044584))

(assert (= (and b!4043222 ((_ is Concat!18984) (reg!12158 (regex!6924 (h!48671 rules!2999))))) b!4044585))

(assert (= (and b!4043222 ((_ is Star!11829) (reg!12158 (regex!6924 (h!48671 rules!2999))))) b!4044586))

(assert (= (and b!4043222 ((_ is Union!11829) (reg!12158 (regex!6924 (h!48671 rules!2999))))) b!4044587))

(declare-fun e!2509401 () Bool)

(declare-fun tp!1227287 () Bool)

(declare-fun tp!1227289 () Bool)

(declare-fun b!4044588 () Bool)

(assert (=> b!4044588 (= e!2509401 (and (inv!57809 (left!32575 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))))) tp!1227287 (inv!57809 (right!32905 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))))) tp!1227289))))

(declare-fun b!4044590 () Bool)

(declare-fun e!2509402 () Bool)

(declare-fun tp!1227288 () Bool)

(assert (=> b!4044590 (= e!2509402 tp!1227288)))

(declare-fun b!4044589 () Bool)

(assert (=> b!4044589 (= e!2509401 (and (inv!57815 (xs!16441 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))))) e!2509402))))

(assert (=> b!4042716 (= tp!1227140 (and (inv!57809 (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484)))) e!2509401))))

(assert (= (and b!4042716 ((_ is Node!13135) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))))) b!4044588))

(assert (= b!4044589 b!4044590))

(assert (= (and b!4042716 ((_ is Leaf!20304) (c!698370 (dynLambda!18369 (toChars!9327 (transformation!6924 (rule!9998 token!484))) (value!217968 token!484))))) b!4044589))

(declare-fun m!4642579 () Bool)

(assert (=> b!4044588 m!4642579))

(declare-fun m!4642583 () Bool)

(assert (=> b!4044588 m!4642583))

(declare-fun m!4642585 () Bool)

(assert (=> b!4044589 m!4642585))

(assert (=> b!4042716 m!4639609))

(declare-fun b!4044591 () Bool)

(declare-fun e!2509403 () Bool)

(declare-fun tp!1227290 () Bool)

(assert (=> b!4044591 (= e!2509403 (and tp_is_empty!20629 tp!1227290))))

(assert (=> b!4043190 (= tp!1227185 e!2509403)))

(assert (= (and b!4043190 ((_ is Cons!43249) (t!335212 (t!335212 newSuffix!27)))) b!4044591))

(declare-fun e!2509405 () Bool)

(assert (=> b!4043219 (= tp!1227213 e!2509405)))

(declare-fun b!4044594 () Bool)

(assert (=> b!4044594 (= e!2509405 tp_is_empty!20629)))

(declare-fun b!4044596 () Bool)

(declare-fun tp!1227291 () Bool)

(assert (=> b!4044596 (= e!2509405 tp!1227291)))

(declare-fun b!4044595 () Bool)

(declare-fun tp!1227294 () Bool)

(declare-fun tp!1227295 () Bool)

(assert (=> b!4044595 (= e!2509405 (and tp!1227294 tp!1227295))))

(declare-fun b!4044597 () Bool)

(declare-fun tp!1227292 () Bool)

(declare-fun tp!1227293 () Bool)

(assert (=> b!4044597 (= e!2509405 (and tp!1227292 tp!1227293))))

(assert (= (and b!4043219 ((_ is ElementMatch!11829) (regOne!24171 (regex!6924 (rule!9998 token!484))))) b!4044594))

(assert (= (and b!4043219 ((_ is Concat!18984) (regOne!24171 (regex!6924 (rule!9998 token!484))))) b!4044595))

(assert (= (and b!4043219 ((_ is Star!11829) (regOne!24171 (regex!6924 (rule!9998 token!484))))) b!4044596))

(assert (= (and b!4043219 ((_ is Union!11829) (regOne!24171 (regex!6924 (rule!9998 token!484))))) b!4044597))

(declare-fun e!2509406 () Bool)

(assert (=> b!4043219 (= tp!1227214 e!2509406)))

(declare-fun b!4044598 () Bool)

(assert (=> b!4044598 (= e!2509406 tp_is_empty!20629)))

(declare-fun b!4044600 () Bool)

(declare-fun tp!1227296 () Bool)

(assert (=> b!4044600 (= e!2509406 tp!1227296)))

(declare-fun b!4044599 () Bool)

(declare-fun tp!1227299 () Bool)

(declare-fun tp!1227300 () Bool)

(assert (=> b!4044599 (= e!2509406 (and tp!1227299 tp!1227300))))

(declare-fun b!4044601 () Bool)

(declare-fun tp!1227297 () Bool)

(declare-fun tp!1227298 () Bool)

(assert (=> b!4044601 (= e!2509406 (and tp!1227297 tp!1227298))))

(assert (= (and b!4043219 ((_ is ElementMatch!11829) (regTwo!24171 (regex!6924 (rule!9998 token!484))))) b!4044598))

(assert (= (and b!4043219 ((_ is Concat!18984) (regTwo!24171 (regex!6924 (rule!9998 token!484))))) b!4044599))

(assert (= (and b!4043219 ((_ is Star!11829) (regTwo!24171 (regex!6924 (rule!9998 token!484))))) b!4044600))

(assert (= (and b!4043219 ((_ is Union!11829) (regTwo!24171 (regex!6924 (rule!9998 token!484))))) b!4044601))

(declare-fun b!4044604 () Bool)

(declare-fun e!2509408 () Bool)

(declare-fun tp!1227301 () Bool)

(assert (=> b!4044604 (= e!2509408 (and tp_is_empty!20629 tp!1227301))))

(assert (=> b!4043191 (= tp!1227186 e!2509408)))

(assert (= (and b!4043191 ((_ is Cons!43249) (t!335212 (t!335212 suffixResult!105)))) b!4044604))

(declare-fun b!4044607 () Bool)

(declare-fun b_free!112569 () Bool)

(declare-fun b_next!113273 () Bool)

(assert (=> b!4044607 (= b_free!112569 (not b_next!113273))))

(declare-fun tb!243259 () Bool)

(declare-fun t!335406 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335406) tb!243259))

(declare-fun result!294802 () Bool)

(assert (= result!294802 result!294704))

(assert (=> d!1199993 t!335406))

(assert (=> d!1199955 t!335406))

(declare-fun t!335408 () Bool)

(declare-fun tb!243261 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335408) tb!243261))

(declare-fun result!294804 () Bool)

(assert (= result!294804 result!294746))

(assert (=> d!1200127 t!335408))

(declare-fun tb!243263 () Bool)

(declare-fun t!335410 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335410) tb!243263))

(declare-fun result!294806 () Bool)

(assert (= result!294806 result!294728))

(assert (=> d!1200055 t!335410))

(declare-fun tb!243265 () Bool)

(declare-fun t!335412 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335412) tb!243265))

(declare-fun result!294808 () Bool)

(assert (= result!294808 result!294780))

(assert (=> d!1200273 t!335412))

(declare-fun t!335414 () Bool)

(declare-fun tb!243267 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335414) tb!243267))

(declare-fun result!294810 () Bool)

(assert (= result!294810 result!294640))

(assert (=> d!1199603 t!335414))

(declare-fun tb!243269 () Bool)

(declare-fun t!335416 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335416) tb!243269))

(declare-fun result!294812 () Bool)

(assert (= result!294812 result!294788))

(assert (=> d!1200497 t!335416))

(assert (=> d!1200251 t!335412))

(declare-fun tb!243271 () Bool)

(declare-fun t!335418 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 token!484)))) t!335418) tb!243271))

(declare-fun result!294814 () Bool)

(assert (= result!294814 result!294620))

(assert (=> d!1199483 t!335418))

(declare-fun tb!243273 () Bool)

(declare-fun t!335420 () Bool)

(assert (=> (and b!4044607 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335420) tb!243273))

(declare-fun result!294816 () Bool)

(assert (= result!294816 result!294668))

(assert (=> d!1199679 t!335420))

(declare-fun tp!1227305 () Bool)

(declare-fun b_and!311021 () Bool)

(assert (=> b!4044607 (= tp!1227305 (and (=> t!335416 result!294812) (=> t!335418 result!294814) (=> t!335414 result!294810) (=> t!335406 result!294802) (=> t!335420 result!294816) (=> t!335408 result!294804) (=> t!335412 result!294808) (=> t!335410 result!294806) b_and!311021))))

(declare-fun b_free!112571 () Bool)

(declare-fun b_next!113275 () Bool)

(assert (=> b!4044607 (= b_free!112571 (not b_next!113275))))

(declare-fun tb!243275 () Bool)

(declare-fun t!335422 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439006)))))) t!335422) tb!243275))

(declare-fun result!294818 () Bool)

(assert (= result!294818 result!294698))

(assert (=> d!1199835 t!335422))

(declare-fun t!335424 () Bool)

(declare-fun tb!243277 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335424) tb!243277))

(declare-fun result!294820 () Bool)

(assert (= result!294820 result!294716))

(assert (=> d!1199993 t!335424))

(declare-fun t!335426 () Bool)

(declare-fun tb!243279 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335426) tb!243279))

(declare-fun result!294822 () Bool)

(assert (= result!294822 result!294770))

(assert (=> d!1200251 t!335426))

(declare-fun tb!243281 () Bool)

(declare-fun t!335428 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 token!484)))) t!335428) tb!243281))

(declare-fun result!294824 () Bool)

(assert (= result!294824 result!294606))

(assert (=> b!4043178 t!335428))

(declare-fun tb!243283 () Bool)

(declare-fun t!335430 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438965)))))) t!335430) tb!243283))

(declare-fun result!294826 () Bool)

(assert (= result!294826 result!294740))

(assert (=> d!1200081 t!335430))

(declare-fun t!335432 () Bool)

(declare-fun tb!243285 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1439047)))))) t!335432) tb!243285))

(declare-fun result!294828 () Bool)

(assert (= result!294828 result!294686))

(assert (=> d!1199793 t!335432))

(declare-fun t!335434 () Bool)

(declare-fun tb!243287 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (get!14192 lt!1438867)))))) t!335434) tb!243287))

(declare-fun result!294830 () Bool)

(assert (= result!294830 result!294674))

(assert (=> d!1199717 t!335434))

(declare-fun tb!243289 () Bool)

(declare-fun t!335436 () Bool)

(assert (=> (and b!4044607 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779)))))) t!335436) tb!243289))

(declare-fun result!294832 () Bool)

(assert (= result!294832 result!294644))

(assert (=> d!1199621 t!335436))

(assert (=> d!1199385 t!335428))

(declare-fun b_and!311023 () Bool)

(declare-fun tp!1227304 () Bool)

(assert (=> b!4044607 (= tp!1227304 (and (=> t!335422 result!294818) (=> t!335434 result!294830) (=> t!335424 result!294820) (=> t!335436 result!294832) (=> t!335426 result!294822) (=> t!335428 result!294824) (=> t!335432 result!294828) (=> t!335430 result!294826) b_and!311023))))

(declare-fun e!2509409 () Bool)

(assert (=> b!4044607 (= e!2509409 (and tp!1227305 tp!1227304))))

(declare-fun b!4044606 () Bool)

(declare-fun e!2509411 () Bool)

(declare-fun tp!1227303 () Bool)

(assert (=> b!4044606 (= e!2509411 (and tp!1227303 (inv!57802 (tag!7784 (h!48671 (t!335214 (t!335214 rules!2999))))) (inv!57806 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) e!2509409))))

(declare-fun b!4044605 () Bool)

(declare-fun e!2509412 () Bool)

(declare-fun tp!1227302 () Bool)

(assert (=> b!4044605 (= e!2509412 (and e!2509411 tp!1227302))))

(assert (=> b!4043202 (= tp!1227197 e!2509412)))

(assert (= b!4044606 b!4044607))

(assert (= b!4044605 b!4044606))

(assert (= (and b!4043202 ((_ is Cons!43251) (t!335214 (t!335214 rules!2999)))) b!4044605))

(declare-fun m!4642617 () Bool)

(assert (=> b!4044606 m!4642617))

(declare-fun m!4642619 () Bool)

(assert (=> b!4044606 m!4642619))

(declare-fun b!4044622 () Bool)

(declare-fun e!2509421 () Bool)

(declare-fun tp!1227306 () Bool)

(assert (=> b!4044622 (= e!2509421 (and tp_is_empty!20629 tp!1227306))))

(assert (=> b!4043224 (= tp!1227222 e!2509421)))

(assert (= (and b!4043224 ((_ is Cons!43249) (t!335212 (originalCharacters!7524 token!484)))) b!4044622))

(declare-fun e!2509422 () Bool)

(assert (=> b!4043203 (= tp!1227198 e!2509422)))

(declare-fun b!4044623 () Bool)

(assert (=> b!4044623 (= e!2509422 tp_is_empty!20629)))

(declare-fun b!4044625 () Bool)

(declare-fun tp!1227307 () Bool)

(assert (=> b!4044625 (= e!2509422 tp!1227307)))

(declare-fun b!4044624 () Bool)

(declare-fun tp!1227310 () Bool)

(declare-fun tp!1227311 () Bool)

(assert (=> b!4044624 (= e!2509422 (and tp!1227310 tp!1227311))))

(declare-fun b!4044626 () Bool)

(declare-fun tp!1227308 () Bool)

(declare-fun tp!1227309 () Bool)

(assert (=> b!4044626 (= e!2509422 (and tp!1227308 tp!1227309))))

(assert (= (and b!4043203 ((_ is ElementMatch!11829) (regex!6924 (h!48671 (t!335214 rules!2999))))) b!4044623))

(assert (= (and b!4043203 ((_ is Concat!18984) (regex!6924 (h!48671 (t!335214 rules!2999))))) b!4044624))

(assert (= (and b!4043203 ((_ is Star!11829) (regex!6924 (h!48671 (t!335214 rules!2999))))) b!4044625))

(assert (= (and b!4043203 ((_ is Union!11829) (regex!6924 (h!48671 (t!335214 rules!2999))))) b!4044626))

(declare-fun b_lambda!118175 () Bool)

(assert (= b_lambda!118109 (or (and b!4042499 b_free!112555 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (and b!4042502 b_free!112559 (= (toChars!9327 (transformation!6924 (rule!9998 token!484))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (and b!4043204 b_free!112567 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (and b!4044607 b_free!112571 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) b_lambda!118175)))

(declare-fun b_lambda!118177 () Bool)

(assert (= b_lambda!118167 (or (and b!4042499 b_free!112553 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) (and b!4042502 b_free!112557) (and b!4043204 b_free!112565 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) (and b!4044607 b_free!112569 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) b_lambda!118177)))

(declare-fun b_lambda!118179 () Bool)

(assert (= b_lambda!118107 (or (and b!4042499 b_free!112553 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (and b!4042502 b_free!112557 (= (toValue!9468 (transformation!6924 (rule!9998 token!484))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (and b!4043204 b_free!112565 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) (and b!4044607 b_free!112569 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 (_1!24299 (v!39739 lt!1438779))))))) b_lambda!118179)))

(declare-fun b_lambda!118181 () Bool)

(assert (= b_lambda!118161 (or (and b!4042499 b_free!112555 (= (toChars!9327 (transformation!6924 (h!48671 rules!2999))) (toChars!9327 (transformation!6924 (rule!9998 token!484))))) (and b!4042502 b_free!112559) (and b!4043204 b_free!112567 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toChars!9327 (transformation!6924 (rule!9998 token!484))))) (and b!4044607 b_free!112571 (= (toChars!9327 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toChars!9327 (transformation!6924 (rule!9998 token!484))))) b_lambda!118181)))

(declare-fun b_lambda!118183 () Bool)

(assert (= b_lambda!118165 (or (and b!4042499 b_free!112553 (= (toValue!9468 (transformation!6924 (h!48671 rules!2999))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) (and b!4042502 b_free!112557) (and b!4043204 b_free!112565 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 rules!2999)))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) (and b!4044607 b_free!112569 (= (toValue!9468 (transformation!6924 (h!48671 (t!335214 (t!335214 rules!2999))))) (toValue!9468 (transformation!6924 (rule!9998 token!484))))) b_lambda!118183)))

(check-sat (not b!4044604) (not b!4044471) (not b_lambda!118177) (not b_lambda!118127) (not b!4043169) (not d!1199835) (not b!4043936) (not b!4044286) (not b!4044043) (not b_lambda!118117) (not d!1199993) (not b_lambda!118175) (not b!4044512) (not b!4043838) (not d!1200139) (not b!4044343) (not b!4043359) (not b_next!113261) (not b!4043392) (not b!4043919) (not b!4044221) (not b!4043648) (not d!1199883) (not d!1200169) (not b!4044267) (not b!4044559) (not d!1199715) (not b!4043271) (not bm!287633) (not b!4043365) (not b!4044060) (not d!1200613) (not b!4043910) (not b!4043379) b_and!311013 (not b!4043601) (not d!1199875) (not d!1200203) (not b_next!113269) (not b!4043468) (not b!4043556) (not bm!287605) (not b!4044015) (not b!4044583) (not b!4043329) (not d!1199661) (not b!4044239) (not b!4044273) (not b!4044553) (not b!4043486) (not d!1200185) (not b!4043263) (not d!1199717) (not b!4044011) (not bm!287591) (not d!1200487) (not b!4044539) (not d!1200317) (not b!4044400) (not b!4043276) (not b!4043548) (not b!4044459) (not bm!287549) (not d!1199909) (not b!4043390) (not b!4043373) (not b!4044017) (not b_lambda!118121) (not d!1199979) (not b!4044580) (not b!4043482) (not b!4044596) (not b!4044041) (not b!4043279) (not d!1200547) (not d!1200133) (not b!4044275) (not b!4043383) (not d!1200079) (not b!4044279) (not b!4044301) (not b!4044441) (not d!1199851) (not b_lambda!118183) (not b!4044560) (not d!1200033) (not d!1200179) (not b!4043999) (not b!4043609) (not d!1199833) (not d!1200485) (not d!1200565) (not d!1200391) (not b!4044087) (not b!4043384) (not b!4044481) (not b!4044045) (not b!4044467) (not d!1199667) (not b!4044351) (not b!4044462) (not d!1200455) (not b!4044479) (not b!4043273) (not d!1200059) (not b!4044565) (not b!4044601) (not b!4044549) (not b!4044540) (not b!4043895) (not d!1199669) (not b!4044230) (not b!4043473) (not b!4044012) (not b!4044345) (not b!4044551) (not b!4043597) b_and!311023 (not tb!243239) (not b!4044520) b_and!310985 (not b!4043534) (not d!1200175) (not b!4044396) (not b!4043558) (not b!4043475) (not b!4044314) (not b!4043322) (not b!4044205) (not b!4044624) (not b!4043840) (not b_next!113257) (not d!1199867) (not b!4043613) (not b!4043599) (not d!1200625) (not b!4044252) (not b!4044599) (not b!4044207) (not b!4044048) (not b!4044061) (not b!4043364) (not b!4044097) (not bm!287626) (not b!4043518) (not b!4043647) (not b!4044193) (not b!4043643) (not b_lambda!118151) (not d!1200101) (not d!1200623) (not b!4043514) (not b!4044606) (not b!4043778) (not b_lambda!118169) b_and!311009 (not b!4043504) (not b!4044626) (not b!4044552) (not d!1199889) (not b!4044544) (not b!4043598) (not b!4044395) (not d!1200181) (not b!4044038) (not b!4043546) (not d!1200291) (not b!4044519) (not b!4043386) (not b!4043489) (not b!4043564) (not b!4043789) (not b!4044548) (not d!1200149) (not b!4044117) (not b!4043931) (not b!4043687) (not d!1200503) (not b!4044042) (not b!4043925) (not b!4044482) (not b!4044039) (not b!4043281) (not b!4044233) (not tb!243163) (not b!4044510) (not b_lambda!118147) (not b_lambda!118137) (not b!4043324) (not d!1200081) (not d!1199691) (not b!4043933) (not b!4043541) (not b!4043357) (not b!4044008) (not b!4043367) (not b!4043610) (not b!4044294) (not b!4044437) (not b!4044541) (not b!4043988) (not b!4044062) (not b!4043553) b_and!311021 (not b!4044518) (not b!4044543) (not b!4043607) (not b!4044238) (not b!4044567) (not b!4044504) (not b!4043388) (not b!4043907) (not b!4043784) (not d!1199847) (not b!4044025) (not b!4044235) (not b!4043469) (not b!4043996) (not b!4043723) (not b!4044429) (not b!4043503) (not b!4044022) (not d!1199861) (not d!1199919) (not bm!287604) (not b!4043403) (not b!4044605) (not d!1199807) (not bm!287584) (not b!4044353) (not b!4044315) (not b!4044382) (not d!1199675) (not b!4044589) (not b!4043777) (not b!4044019) (not d!1200103) (not d!1199791) (not b!4043997) (not b!4043645) (not b!4044442) (not b!4043549) (not b!4043565) (not bm!287609) (not b!4044307) (not d!1199803) (not d!1200241) (not b!4044206) (not b!4043629) (not b!4044034) (not b!4044590) (not b!4043906) (not d!1200607) (not d!1199713) (not b!4044463) (not b!4044586) (not b_lambda!118131) (not b!4043479) (not b!4044287) (not d!1199789) (not d!1199665) (not d!1200591) (not bm!287608) (not b!4044036) (not b!4043631) (not b!4043259) (not d!1199727) (not bm!287548) (not b!4043649) b_and!310987 (not b!4043731) (not b!4043617) b_and!311011 (not d!1200491) (not b!4043540) (not bm!287634) (not bm!287607) (not d!1199693) (not tb!243205) (not b!4043474) (not b_lambda!118179) (not b_lambda!118115) (not b!4044477) (not bm!287547) (not d!1200515) (not d!1200545) (not b!4043836) (not b_next!113271) (not b!4043283) (not b!4044569) (not d!1200027) (not b!4043393) (not bm!287623) (not b!4044020) (not tb!243199) (not b!4043909) (not b!4044002) (not b!4043871) (not b!4044622) (not b!4044211) (not b!4044212) (not d!1200281) (not b!4043260) (not d!1200543) (not d!1200423) (not b!4044390) (not d!1200615) (not b!4044426) (not d!1200131) (not b!4043922) (not b!4043524) (not b!4044091) tp_is_empty!20629 (not b!4043269) (not b!4044320) (not b!4043472) (not b!4044023) (not d!1200105) (not b!4044392) (not tb!243145) (not b!4044465) (not d!1200425) (not b!4044007) (not b!4044591) (not d!1199793) (not bm!287525) (not b!4043401) (not b!4044195) (not tb!243157) (not d!1200057) (not b!4043484) (not d!1200227) (not b!4044001) (not b_lambda!118113) (not b!4044374) (not b!4043544) (not bm!287545) (not b!4043897) (not b!4044474) (not bm!287629) (not b!4044293) (not b!4043842) (not b!4044393) (not b!4044480) (not b!4044208) (not d!1199859) (not d!1200069) (not b!4043641) (not b!4043552) (not b!4042716) (not b!4043512) (not b!4044046) (not b!4044277) (not b!4043978) (not b!4044229) (not d!1200271) (not bm!287637) (not b!4043832) (not b!4044588) (not b!4044475) (not b!4044461) (not b!4043371) (not b!4044377) (not d!1200031) (not tb!243175) (not b!4043372) (not b!4044052) (not b!4043511) (not d!1199795) (not b!4044253) (not b!4044561) (not b!4043782) (not b!4043480) (not d!1200285) (not b!4044545) (not b!4044595) (not b!4044476) (not b!4044422) (not d!1200433) (not d!1200249) (not b!4044423) (not b!4043277) (not bm!287543) (not d!1200527) (not b!4043256) (not b!4043368) (not b!4044469) (not tb!243247) (not b!4044090) (not b!4044237) (not b!4043380) (not bm!287593) (not b_lambda!118139) (not b!4044547) (not d!1200609) (not b!4044431) (not b!4044249) (not b!4044225) (not b!4044003) (not d!1199873) (not d!1200047) (not b!4044380) (not b!4044018) (not b!4044024) (not b!4043951) (not bm!287544) (not b!4044317) (not b!4044081) b_and!310989 (not b!4043628) (not d!1200617) (not d!1200579) (not b!4043633) (not b!4043725) (not b!4043255) (not b!4044093) (not d!1200601) (not b!4044582) (not b!4043894) (not b!4044078) (not b!4044585) (not bm!287574) (not d!1199821) (not d!1200237) (not tb!243229) (not b!4044427) (not b!4044095) (not b!4044408) (not bm!287610) (not b!4043471) (not b!4044376) (not b!4044213) (not b!4044505) (not d!1199977) (not d!1199941) (not bm!287613) (not bm!287546) (not d!1200073) (not b!4044103) (not b!4044513) (not d!1199885) (not b!4043625) (not b!4044305) (not d!1199711) (not d!1200505) (not b_next!113259) (not b!4044192) (not b!4044313) (not b!4043275) (not b!4044439) (not b!4043478) (not b!4043369) (not bm!287622) (not b!4044509) (not b!4044378) (not bm!287542) (not d!1200085) (not bm!287628) (not b!4043635) (not b!4044210) (not d!1200211) (not b!4044600) (not b!4044516) (not b_lambda!118181) (not b!4043289) (not b!4044363) (not b!4043394) (not tb!243127) (not b!4043419) (not b!4043615) (not b!4044625) (not b!4043947) (not d!1200071) (not b!4043986) (not b_next!113275) (not b!4044587) (not b!4043987) (not b!4044089) (not b!4044563) (not bm!287606) (not d!1200309) (not b!4043488) (not b!4044421) (not d!1200373) (not b!4043602) (not b!4043905) (not b!4043477) (not b!4044398) (not b_next!113273) (not b!4043848) (not b!4043920) (not d!1199963) (not b!4043950) (not b!4044473) (not b!4043900) (not b!4044053) (not b!4044247) (not b!4043621) (not d!1200251) (not d!1199681) (not b_next!113263) (not b!4043914) (not b!4044261) (not b!4044251) (not b_lambda!118133) (not b!4044337) (not b!4044508) (not b!4044248) (not d!1200407) (not b!4043913) (not b!4044564) (not b!4044115) (not b!4043721) (not b_lambda!118123) (not d!1200567) (not d!1200075) (not b!4044384) (not b!4044119) (not b!4043903) (not b!4043318) (not b!4044285) (not bm!287611) (not b!4044597) (not b!4043516) (not b!4044013) (not b!4044578) (not b!4043835) (not b_lambda!118143) (not d!1199741) (not bm!287635) (not d!1200077) (not b!4043595) (not tb!243187) (not tb!243133) (not b!4044402) (not b!4043979) (not b!4044568))
(check-sat (not b_next!113261) (not b_next!113257) b_and!311009 b_and!311021 (not b_next!113271) b_and!310989 (not b_next!113259) (not b_next!113275) b_and!311013 (not b_next!113269) b_and!311023 b_and!310985 b_and!310987 b_and!311011 (not b_next!113273) (not b_next!113263))
