; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392746 () Bool)

(assert start!392746)

(declare-fun b!4135468 () Bool)

(declare-fun b_free!117531 () Bool)

(declare-fun b_next!118235 () Bool)

(assert (=> b!4135468 (= b_free!117531 (not b_next!118235))))

(declare-fun tp!1260597 () Bool)

(declare-fun b_and!320825 () Bool)

(assert (=> b!4135468 (= tp!1260597 b_and!320825)))

(declare-fun b_free!117533 () Bool)

(declare-fun b_next!118237 () Bool)

(assert (=> b!4135468 (= b_free!117533 (not b_next!118237))))

(declare-fun tp!1260604 () Bool)

(declare-fun b_and!320827 () Bool)

(assert (=> b!4135468 (= tp!1260604 b_and!320827)))

(declare-fun b!4135462 () Bool)

(declare-fun b_free!117535 () Bool)

(declare-fun b_next!118239 () Bool)

(assert (=> b!4135462 (= b_free!117535 (not b_next!118239))))

(declare-fun tp!1260600 () Bool)

(declare-fun b_and!320829 () Bool)

(assert (=> b!4135462 (= tp!1260600 b_and!320829)))

(declare-fun b_free!117537 () Bool)

(declare-fun b_next!118241 () Bool)

(assert (=> b!4135462 (= b_free!117537 (not b_next!118241))))

(declare-fun tp!1260602 () Bool)

(declare-fun b_and!320831 () Bool)

(assert (=> b!4135462 (= tp!1260602 b_and!320831)))

(declare-fun b!4135460 () Bool)

(declare-fun b_free!117539 () Bool)

(declare-fun b_next!118243 () Bool)

(assert (=> b!4135460 (= b_free!117539 (not b_next!118243))))

(declare-fun tp!1260605 () Bool)

(declare-fun b_and!320833 () Bool)

(assert (=> b!4135460 (= tp!1260605 b_and!320833)))

(declare-fun b_free!117541 () Bool)

(declare-fun b_next!118245 () Bool)

(assert (=> b!4135460 (= b_free!117541 (not b_next!118245))))

(declare-fun tp!1260603 () Bool)

(declare-fun b_and!320835 () Bool)

(assert (=> b!4135460 (= tp!1260603 b_and!320835)))

(declare-fun b!4135446 () Bool)

(declare-fun e!2565905 () Bool)

(declare-fun tp_is_empty!21429 () Bool)

(declare-fun tp!1260606 () Bool)

(assert (=> b!4135446 (= e!2565905 (and tp_is_empty!21429 tp!1260606))))

(declare-fun b!4135447 () Bool)

(declare-fun res!1691038 () Bool)

(declare-fun e!2565898 () Bool)

(assert (=> b!4135447 (=> (not res!1691038) (not e!2565898))))

(declare-datatypes ((C!24692 0))(
  ( (C!24693 (val!14456 Int)) )
))
(declare-datatypes ((List!44936 0))(
  ( (Nil!44812) (Cons!44812 (h!50232 C!24692) (t!341925 List!44936)) )
))
(declare-fun p!2912 () List!44936)

(declare-fun input!3238 () List!44936)

(declare-fun isPrefix!4283 (List!44936 List!44936) Bool)

(assert (=> b!4135447 (= res!1691038 (isPrefix!4283 p!2912 input!3238))))

(declare-fun b!4135448 () Bool)

(declare-fun e!2565902 () Bool)

(declare-fun tp!1260601 () Bool)

(assert (=> b!4135448 (= e!2565902 (and tp_is_empty!21429 tp!1260601))))

(declare-fun b!4135449 () Bool)

(declare-fun res!1691043 () Bool)

(assert (=> b!4135449 (=> (not res!1691043) (not e!2565898))))

(declare-fun isEmpty!26697 (List!44936) Bool)

(assert (=> b!4135449 (= res!1691043 (not (isEmpty!26697 p!2912)))))

(declare-fun b!4135450 () Bool)

(declare-fun res!1691042 () Bool)

(declare-fun e!2565903 () Bool)

(assert (=> b!4135450 (=> (not res!1691042) (not e!2565903))))

(declare-datatypes ((LexerInterface!6937 0))(
  ( (LexerInterfaceExt!6934 (__x!27373 Int)) (Lexer!6935) )
))
(declare-fun thiss!25645 () LexerInterface!6937)

(declare-datatypes ((List!44937 0))(
  ( (Nil!44813) (Cons!44813 (h!50233 (_ BitVec 16)) (t!341926 List!44937)) )
))
(declare-datatypes ((TokenValue!7578 0))(
  ( (FloatLiteralValue!15156 (text!53491 List!44937)) (TokenValueExt!7577 (__x!27374 Int)) (Broken!37890 (value!229946 List!44937)) (Object!7701) (End!7578) (Def!7578) (Underscore!7578) (Match!7578) (Else!7578) (Error!7578) (Case!7578) (If!7578) (Extends!7578) (Abstract!7578) (Class!7578) (Val!7578) (DelimiterValue!15156 (del!7638 List!44937)) (KeywordValue!7584 (value!229947 List!44937)) (CommentValue!15156 (value!229948 List!44937)) (WhitespaceValue!15156 (value!229949 List!44937)) (IndentationValue!7578 (value!229950 List!44937)) (String!51639) (Int32!7578) (Broken!37891 (value!229951 List!44937)) (Boolean!7579) (Unit!64126) (OperatorValue!7581 (op!7638 List!44937)) (IdentifierValue!15156 (value!229952 List!44937)) (IdentifierValue!15157 (value!229953 List!44937)) (WhitespaceValue!15157 (value!229954 List!44937)) (True!15156) (False!15156) (Broken!37892 (value!229955 List!44937)) (Broken!37893 (value!229956 List!44937)) (True!15157) (RightBrace!7578) (RightBracket!7578) (Colon!7578) (Null!7578) (Comma!7578) (LeftBracket!7578) (False!15157) (LeftBrace!7578) (ImaginaryLiteralValue!7578 (text!53492 List!44937)) (StringLiteralValue!22734 (value!229957 List!44937)) (EOFValue!7578 (value!229958 List!44937)) (IdentValue!7578 (value!229959 List!44937)) (DelimiterValue!15157 (value!229960 List!44937)) (DedentValue!7578 (value!229961 List!44937)) (NewLineValue!7578 (value!229962 List!44937)) (IntegerValue!22734 (value!229963 (_ BitVec 32)) (text!53493 List!44937)) (IntegerValue!22735 (value!229964 Int) (text!53494 List!44937)) (Times!7578) (Or!7578) (Equal!7578) (Minus!7578) (Broken!37894 (value!229965 List!44937)) (And!7578) (Div!7578) (LessEqual!7578) (Mod!7578) (Concat!19831) (Not!7578) (Plus!7578) (SpaceValue!7578 (value!229966 List!44937)) (IntegerValue!22736 (value!229967 Int) (text!53495 List!44937)) (StringLiteralValue!22735 (text!53496 List!44937)) (FloatLiteralValue!15157 (text!53497 List!44937)) (BytesLiteralValue!7578 (value!229968 List!44937)) (CommentValue!15157 (value!229969 List!44937)) (StringLiteralValue!22736 (value!229970 List!44937)) (ErrorTokenValue!7578 (msg!7639 List!44937)) )
))
(declare-datatypes ((IArray!27123 0))(
  ( (IArray!27124 (innerList!13619 List!44936)) )
))
(declare-datatypes ((Conc!13559 0))(
  ( (Node!13559 (left!33559 Conc!13559) (right!33889 Conc!13559) (csize!27348 Int) (cheight!13770 Int)) (Leaf!20948 (xs!16865 IArray!27123) (csize!27349 Int)) (Empty!13559) )
))
(declare-datatypes ((BalanceConc!26712 0))(
  ( (BalanceConc!26713 (c!709276 Conc!13559)) )
))
(declare-datatypes ((String!51640 0))(
  ( (String!51641 (value!229971 String)) )
))
(declare-datatypes ((Regex!12253 0))(
  ( (ElementMatch!12253 (c!709277 C!24692)) (Concat!19832 (regOne!25018 Regex!12253) (regTwo!25018 Regex!12253)) (EmptyExpr!12253) (Star!12253 (reg!12582 Regex!12253)) (EmptyLang!12253) (Union!12253 (regOne!25019 Regex!12253) (regTwo!25019 Regex!12253)) )
))
(declare-datatypes ((TokenValueInjection!14584 0))(
  ( (TokenValueInjection!14585 (toValue!10012 Int) (toChars!9871 Int)) )
))
(declare-datatypes ((Rule!14496 0))(
  ( (Rule!14497 (regex!7348 Regex!12253) (tag!8208 String!51640) (isSeparator!7348 Bool) (transformation!7348 TokenValueInjection!14584)) )
))
(declare-fun r!4008 () Rule!14496)

(declare-fun ruleValid!3154 (LexerInterface!6937 Rule!14496) Bool)

(assert (=> b!4135450 (= res!1691042 (ruleValid!3154 thiss!25645 r!4008))))

(declare-fun b!4135451 () Bool)

(declare-fun res!1691037 () Bool)

(assert (=> b!4135451 (=> (not res!1691037) (not e!2565898))))

(declare-datatypes ((List!44938 0))(
  ( (Nil!44814) (Cons!44814 (h!50234 Rule!14496) (t!341927 List!44938)) )
))
(declare-fun rules!3756 () List!44938)

(declare-fun rulesInvariant!6234 (LexerInterface!6937 List!44938) Bool)

(assert (=> b!4135451 (= res!1691037 (rulesInvariant!6234 thiss!25645 rules!3756))))

(declare-fun e!2565897 () Bool)

(declare-fun tp!1260598 () Bool)

(declare-fun b!4135452 () Bool)

(declare-fun e!2565910 () Bool)

(declare-fun inv!59417 (String!51640) Bool)

(declare-fun inv!59419 (TokenValueInjection!14584) Bool)

(assert (=> b!4135452 (= e!2565910 (and tp!1260598 (inv!59417 (tag!8208 r!4008)) (inv!59419 (transformation!7348 r!4008)) e!2565897))))

(declare-fun b!4135453 () Bool)

(declare-fun res!1691035 () Bool)

(assert (=> b!4135453 (=> (not res!1691035) (not e!2565903))))

(declare-fun rBis!149 () Rule!14496)

(declare-fun getIndex!694 (List!44938 Rule!14496) Int)

(assert (=> b!4135453 (= res!1691035 (< (getIndex!694 rules!3756 rBis!149) (getIndex!694 rules!3756 r!4008)))))

(declare-fun lt!1474428 () List!44936)

(declare-fun e!2565899 () Bool)

(declare-fun b!4135454 () Bool)

(declare-fun ++!11592 (List!44936 List!44936) List!44936)

(assert (=> b!4135454 (= e!2565899 (= (++!11592 p!2912 lt!1474428) input!3238))))

(declare-fun lt!1474421 () List!44936)

(declare-fun lt!1474427 () BalanceConc!26712)

(declare-fun getSuffix!2610 (List!44936 List!44936) List!44936)

(declare-fun list!16407 (BalanceConc!26712) List!44936)

(assert (=> b!4135454 (= lt!1474421 (getSuffix!2610 input!3238 (list!16407 lt!1474427)))))

(declare-fun b!4135455 () Bool)

(declare-fun res!1691036 () Bool)

(assert (=> b!4135455 (=> (not res!1691036) (not e!2565898))))

(declare-fun isEmpty!26698 (List!44938) Bool)

(assert (=> b!4135455 (= res!1691036 (not (isEmpty!26698 rules!3756)))))

(declare-fun b!4135456 () Bool)

(declare-fun e!2565904 () Bool)

(declare-fun e!2565901 () Bool)

(assert (=> b!4135456 (= e!2565904 e!2565901)))

(declare-fun res!1691040 () Bool)

(assert (=> b!4135456 (=> res!1691040 e!2565901)))

(declare-datatypes ((Token!13626 0))(
  ( (Token!13627 (value!229972 TokenValue!7578) (rule!10444 Rule!14496) (size!33170 Int) (originalCharacters!7844 List!44936)) )
))
(declare-datatypes ((tuple2!43210 0))(
  ( (tuple2!43211 (_1!24739 Token!13626) (_2!24739 List!44936)) )
))
(declare-datatypes ((Option!9654 0))(
  ( (None!9653) (Some!9653 (v!40277 tuple2!43210)) )
))
(declare-fun lt!1474430 () Option!9654)

(declare-fun isEmpty!26699 (Option!9654) Bool)

(assert (=> b!4135456 (= res!1691040 (isEmpty!26699 lt!1474430))))

(declare-fun maxPrefixOneRule!3066 (LexerInterface!6937 Rule!14496 List!44936) Option!9654)

(assert (=> b!4135456 (= lt!1474430 (maxPrefixOneRule!3066 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4135456 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!64127 0))(
  ( (Unit!64128) )
))
(declare-fun lt!1474420 () Unit!64127)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!46 (LexerInterface!6937 List!44938 Rule!14496 Rule!14496) Unit!64127)

(assert (=> b!4135456 (= lt!1474420 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!46 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9028 (List!44938 Rule!14496) Bool)

(declare-fun tail!6505 (List!44938) List!44938)

(assert (=> b!4135456 (contains!9028 (tail!6505 rules!3756) r!4008)))

(declare-fun lt!1474426 () Unit!64127)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!52 (List!44938 Rule!14496 Rule!14496) Unit!64127)

(assert (=> b!4135456 (= lt!1474426 (lemmaGetIndexBiggerAndHeadEqThenTailContains!52 rules!3756 rBis!149 r!4008))))

(declare-fun e!2565907 () Bool)

(declare-fun e!2565896 () Bool)

(declare-fun b!4135457 () Bool)

(declare-fun tp!1260599 () Bool)

(assert (=> b!4135457 (= e!2565896 (and tp!1260599 (inv!59417 (tag!8208 rBis!149)) (inv!59419 (transformation!7348 rBis!149)) e!2565907))))

(declare-fun res!1691045 () Bool)

(assert (=> start!392746 (=> (not res!1691045) (not e!2565898))))

(get-info :version)

(assert (=> start!392746 (= res!1691045 ((_ is Lexer!6935) thiss!25645))))

(assert (=> start!392746 e!2565898))

(declare-fun e!2565911 () Bool)

(assert (=> start!392746 e!2565911))

(assert (=> start!392746 e!2565905))

(assert (=> start!392746 true))

(assert (=> start!392746 e!2565910))

(assert (=> start!392746 e!2565902))

(assert (=> start!392746 e!2565896))

(declare-fun b!4135458 () Bool)

(declare-fun res!1691048 () Bool)

(assert (=> b!4135458 (=> (not res!1691048) (not e!2565898))))

(assert (=> b!4135458 (= res!1691048 (contains!9028 rules!3756 r!4008))))

(declare-fun b!4135459 () Bool)

(declare-fun e!2565908 () Bool)

(declare-fun tp!1260608 () Bool)

(assert (=> b!4135459 (= e!2565911 (and e!2565908 tp!1260608))))

(declare-fun e!2565909 () Bool)

(assert (=> b!4135460 (= e!2565909 (and tp!1260605 tp!1260603))))

(declare-fun b!4135461 () Bool)

(assert (=> b!4135461 (= e!2565898 e!2565903)))

(declare-fun res!1691047 () Bool)

(assert (=> b!4135461 (=> (not res!1691047) (not e!2565903))))

(declare-fun lt!1474419 () TokenValue!7578)

(declare-fun lt!1474422 () Int)

(declare-fun maxPrefix!4127 (LexerInterface!6937 List!44938 List!44936) Option!9654)

(assert (=> b!4135461 (= res!1691047 (= (maxPrefix!4127 thiss!25645 rules!3756 input!3238) (Some!9653 (tuple2!43211 (Token!13627 lt!1474419 r!4008 lt!1474422 p!2912) lt!1474428))))))

(assert (=> b!4135461 (= lt!1474428 (getSuffix!2610 input!3238 p!2912))))

(declare-fun size!33171 (List!44936) Int)

(assert (=> b!4135461 (= lt!1474422 (size!33171 p!2912))))

(declare-fun lt!1474425 () BalanceConc!26712)

(declare-fun apply!10421 (TokenValueInjection!14584 BalanceConc!26712) TokenValue!7578)

(assert (=> b!4135461 (= lt!1474419 (apply!10421 (transformation!7348 r!4008) lt!1474425))))

(declare-fun lt!1474423 () Unit!64127)

(declare-fun lemmaSemiInverse!2206 (TokenValueInjection!14584 BalanceConc!26712) Unit!64127)

(assert (=> b!4135461 (= lt!1474423 (lemmaSemiInverse!2206 (transformation!7348 r!4008) lt!1474425))))

(declare-fun seqFromList!5465 (List!44936) BalanceConc!26712)

(assert (=> b!4135461 (= lt!1474425 (seqFromList!5465 p!2912))))

(assert (=> b!4135462 (= e!2565897 (and tp!1260600 tp!1260602))))

(declare-fun b!4135463 () Bool)

(assert (=> b!4135463 (= e!2565903 (not e!2565904))))

(declare-fun res!1691039 () Bool)

(assert (=> b!4135463 (=> res!1691039 e!2565904)))

(assert (=> b!4135463 (= res!1691039 (or (not ((_ is Cons!44814) rules!3756)) (not (= (h!50234 rules!3756) rBis!149))))))

(declare-fun lt!1474424 () Unit!64127)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2194 (LexerInterface!6937 Rule!14496 List!44938) Unit!64127)

(assert (=> b!4135463 (= lt!1474424 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2194 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4135463 (ruleValid!3154 thiss!25645 rBis!149)))

(declare-fun lt!1474429 () Unit!64127)

(assert (=> b!4135463 (= lt!1474429 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2194 thiss!25645 rBis!149 rules!3756))))

(declare-fun tp!1260607 () Bool)

(declare-fun b!4135464 () Bool)

(assert (=> b!4135464 (= e!2565908 (and tp!1260607 (inv!59417 (tag!8208 (h!50234 rules!3756))) (inv!59419 (transformation!7348 (h!50234 rules!3756))) e!2565909))))

(declare-fun b!4135465 () Bool)

(declare-fun res!1691046 () Bool)

(assert (=> b!4135465 (=> (not res!1691046) (not e!2565898))))

(assert (=> b!4135465 (= res!1691046 (contains!9028 rules!3756 rBis!149))))

(declare-fun b!4135466 () Bool)

(declare-fun res!1691044 () Bool)

(assert (=> b!4135466 (=> (not res!1691044) (not e!2565903))))

(declare-fun matchR!6082 (Regex!12253 List!44936) Bool)

(assert (=> b!4135466 (= res!1691044 (matchR!6082 (regex!7348 r!4008) p!2912))))

(declare-fun b!4135467 () Bool)

(assert (=> b!4135467 (= e!2565901 e!2565899)))

(declare-fun res!1691041 () Bool)

(assert (=> b!4135467 (=> res!1691041 e!2565899)))

(declare-fun size!33172 (BalanceConc!26712) Int)

(assert (=> b!4135467 (= res!1691041 (<= (size!33172 lt!1474427) lt!1474422))))

(declare-fun charsOf!4947 (Token!13626) BalanceConc!26712)

(declare-fun get!14617 (Option!9654) tuple2!43210)

(assert (=> b!4135467 (= lt!1474427 (charsOf!4947 (_1!24739 (get!14617 lt!1474430))))))

(assert (=> b!4135468 (= e!2565907 (and tp!1260597 tp!1260604))))

(assert (= (and start!392746 res!1691045) b!4135447))

(assert (= (and b!4135447 res!1691038) b!4135455))

(assert (= (and b!4135455 res!1691036) b!4135451))

(assert (= (and b!4135451 res!1691037) b!4135458))

(assert (= (and b!4135458 res!1691048) b!4135465))

(assert (= (and b!4135465 res!1691046) b!4135449))

(assert (= (and b!4135449 res!1691043) b!4135461))

(assert (= (and b!4135461 res!1691047) b!4135466))

(assert (= (and b!4135466 res!1691044) b!4135453))

(assert (= (and b!4135453 res!1691035) b!4135450))

(assert (= (and b!4135450 res!1691042) b!4135463))

(assert (= (and b!4135463 (not res!1691039)) b!4135456))

(assert (= (and b!4135456 (not res!1691040)) b!4135467))

(assert (= (and b!4135467 (not res!1691041)) b!4135454))

(assert (= b!4135464 b!4135460))

(assert (= b!4135459 b!4135464))

(assert (= (and start!392746 ((_ is Cons!44814) rules!3756)) b!4135459))

(assert (= (and start!392746 ((_ is Cons!44812) p!2912)) b!4135446))

(assert (= b!4135452 b!4135462))

(assert (= start!392746 b!4135452))

(assert (= (and start!392746 ((_ is Cons!44812) input!3238)) b!4135448))

(assert (= b!4135457 b!4135468))

(assert (= start!392746 b!4135457))

(declare-fun m!4732095 () Bool)

(assert (=> b!4135456 m!4732095))

(declare-fun m!4732097 () Bool)

(assert (=> b!4135456 m!4732097))

(declare-fun m!4732099 () Bool)

(assert (=> b!4135456 m!4732099))

(declare-fun m!4732101 () Bool)

(assert (=> b!4135456 m!4732101))

(declare-fun m!4732103 () Bool)

(assert (=> b!4135456 m!4732103))

(assert (=> b!4135456 m!4732097))

(declare-fun m!4732105 () Bool)

(assert (=> b!4135456 m!4732105))

(declare-fun m!4732107 () Bool)

(assert (=> b!4135455 m!4732107))

(declare-fun m!4732109 () Bool)

(assert (=> b!4135457 m!4732109))

(declare-fun m!4732111 () Bool)

(assert (=> b!4135457 m!4732111))

(declare-fun m!4732113 () Bool)

(assert (=> b!4135454 m!4732113))

(declare-fun m!4732115 () Bool)

(assert (=> b!4135454 m!4732115))

(assert (=> b!4135454 m!4732115))

(declare-fun m!4732117 () Bool)

(assert (=> b!4135454 m!4732117))

(declare-fun m!4732119 () Bool)

(assert (=> b!4135447 m!4732119))

(declare-fun m!4732121 () Bool)

(assert (=> b!4135451 m!4732121))

(declare-fun m!4732123 () Bool)

(assert (=> b!4135461 m!4732123))

(declare-fun m!4732125 () Bool)

(assert (=> b!4135461 m!4732125))

(declare-fun m!4732127 () Bool)

(assert (=> b!4135461 m!4732127))

(declare-fun m!4732129 () Bool)

(assert (=> b!4135461 m!4732129))

(declare-fun m!4732131 () Bool)

(assert (=> b!4135461 m!4732131))

(declare-fun m!4732133 () Bool)

(assert (=> b!4135461 m!4732133))

(declare-fun m!4732135 () Bool)

(assert (=> b!4135450 m!4732135))

(declare-fun m!4732137 () Bool)

(assert (=> b!4135453 m!4732137))

(declare-fun m!4732139 () Bool)

(assert (=> b!4135453 m!4732139))

(declare-fun m!4732141 () Bool)

(assert (=> b!4135463 m!4732141))

(declare-fun m!4732143 () Bool)

(assert (=> b!4135463 m!4732143))

(declare-fun m!4732145 () Bool)

(assert (=> b!4135463 m!4732145))

(declare-fun m!4732147 () Bool)

(assert (=> b!4135452 m!4732147))

(declare-fun m!4732149 () Bool)

(assert (=> b!4135452 m!4732149))

(declare-fun m!4732151 () Bool)

(assert (=> b!4135465 m!4732151))

(declare-fun m!4732153 () Bool)

(assert (=> b!4135467 m!4732153))

(declare-fun m!4732155 () Bool)

(assert (=> b!4135467 m!4732155))

(declare-fun m!4732157 () Bool)

(assert (=> b!4135467 m!4732157))

(declare-fun m!4732159 () Bool)

(assert (=> b!4135449 m!4732159))

(declare-fun m!4732161 () Bool)

(assert (=> b!4135466 m!4732161))

(declare-fun m!4732163 () Bool)

(assert (=> b!4135464 m!4732163))

(declare-fun m!4732165 () Bool)

(assert (=> b!4135464 m!4732165))

(declare-fun m!4732167 () Bool)

(assert (=> b!4135458 m!4732167))

(check-sat (not b!4135467) (not b!4135458) (not b!4135461) b_and!320835 (not b!4135447) (not b!4135452) (not b!4135453) (not b!4135464) b_and!320829 b_and!320825 (not b!4135456) b_and!320833 (not b!4135465) (not b!4135451) (not b!4135449) tp_is_empty!21429 (not b_next!118235) (not b!4135457) (not b_next!118239) (not b_next!118237) (not b!4135455) b_and!320831 (not b!4135466) (not b!4135448) (not b!4135459) (not b_next!118241) (not b!4135463) (not b!4135454) (not b!4135446) (not b_next!118245) (not b!4135450) b_and!320827 (not b_next!118243))
(check-sat b_and!320833 b_and!320835 (not b_next!118235) b_and!320831 (not b_next!118241) b_and!320829 b_and!320825 (not b_next!118245) (not b_next!118239) (not b_next!118237) b_and!320827 (not b_next!118243))
(get-model)

(declare-fun d!1224771 () Bool)

(assert (=> d!1224771 (= (isEmpty!26697 p!2912) ((_ is Nil!44812) p!2912))))

(assert (=> b!4135449 d!1224771))

(declare-fun d!1224773 () Bool)

(declare-fun res!1691093 () Bool)

(declare-fun e!2565945 () Bool)

(assert (=> d!1224773 (=> (not res!1691093) (not e!2565945))))

(declare-fun validRegex!5517 (Regex!12253) Bool)

(assert (=> d!1224773 (= res!1691093 (validRegex!5517 (regex!7348 r!4008)))))

(assert (=> d!1224773 (= (ruleValid!3154 thiss!25645 r!4008) e!2565945)))

(declare-fun b!4135518 () Bool)

(declare-fun res!1691094 () Bool)

(assert (=> b!4135518 (=> (not res!1691094) (not e!2565945))))

(declare-fun nullable!4309 (Regex!12253) Bool)

(assert (=> b!4135518 (= res!1691094 (not (nullable!4309 (regex!7348 r!4008))))))

(declare-fun b!4135519 () Bool)

(assert (=> b!4135519 (= e!2565945 (not (= (tag!8208 r!4008) (String!51641 ""))))))

(assert (= (and d!1224773 res!1691093) b!4135518))

(assert (= (and b!4135518 res!1691094) b!4135519))

(declare-fun m!4732195 () Bool)

(assert (=> d!1224773 m!4732195))

(declare-fun m!4732197 () Bool)

(assert (=> b!4135518 m!4732197))

(assert (=> b!4135450 d!1224773))

(declare-fun d!1224775 () Bool)

(declare-fun lt!1474444 () List!44936)

(assert (=> d!1224775 (= (++!11592 p!2912 lt!1474444) input!3238)))

(declare-fun e!2565957 () List!44936)

(assert (=> d!1224775 (= lt!1474444 e!2565957)))

(declare-fun c!709289 () Bool)

(assert (=> d!1224775 (= c!709289 ((_ is Cons!44812) p!2912))))

(assert (=> d!1224775 (>= (size!33171 input!3238) (size!33171 p!2912))))

(assert (=> d!1224775 (= (getSuffix!2610 input!3238 p!2912) lt!1474444)))

(declare-fun b!4135542 () Bool)

(declare-fun tail!6507 (List!44936) List!44936)

(assert (=> b!4135542 (= e!2565957 (getSuffix!2610 (tail!6507 input!3238) (t!341925 p!2912)))))

(declare-fun b!4135543 () Bool)

(assert (=> b!4135543 (= e!2565957 input!3238)))

(assert (= (and d!1224775 c!709289) b!4135542))

(assert (= (and d!1224775 (not c!709289)) b!4135543))

(declare-fun m!4732217 () Bool)

(assert (=> d!1224775 m!4732217))

(declare-fun m!4732219 () Bool)

(assert (=> d!1224775 m!4732219))

(assert (=> d!1224775 m!4732123))

(declare-fun m!4732221 () Bool)

(assert (=> b!4135542 m!4732221))

(assert (=> b!4135542 m!4732221))

(declare-fun m!4732223 () Bool)

(assert (=> b!4135542 m!4732223))

(assert (=> b!4135461 d!1224775))

(declare-fun b!4135637 () Bool)

(declare-fun e!2566007 () Option!9654)

(declare-fun lt!1474492 () Option!9654)

(declare-fun lt!1474496 () Option!9654)

(assert (=> b!4135637 (= e!2566007 (ite (and ((_ is None!9653) lt!1474492) ((_ is None!9653) lt!1474496)) None!9653 (ite ((_ is None!9653) lt!1474496) lt!1474492 (ite ((_ is None!9653) lt!1474492) lt!1474496 (ite (>= (size!33170 (_1!24739 (v!40277 lt!1474492))) (size!33170 (_1!24739 (v!40277 lt!1474496)))) lt!1474492 lt!1474496)))))))

(declare-fun call!290422 () Option!9654)

(assert (=> b!4135637 (= lt!1474492 call!290422)))

(assert (=> b!4135637 (= lt!1474496 (maxPrefix!4127 thiss!25645 (t!341927 rules!3756) input!3238))))

(declare-fun b!4135638 () Bool)

(declare-fun res!1691169 () Bool)

(declare-fun e!2566008 () Bool)

(assert (=> b!4135638 (=> (not res!1691169) (not e!2566008))))

(declare-fun lt!1474494 () Option!9654)

(assert (=> b!4135638 (= res!1691169 (= (list!16407 (charsOf!4947 (_1!24739 (get!14617 lt!1474494)))) (originalCharacters!7844 (_1!24739 (get!14617 lt!1474494)))))))

(declare-fun d!1224783 () Bool)

(declare-fun e!2566009 () Bool)

(assert (=> d!1224783 e!2566009))

(declare-fun res!1691170 () Bool)

(assert (=> d!1224783 (=> res!1691170 e!2566009)))

(assert (=> d!1224783 (= res!1691170 (isEmpty!26699 lt!1474494))))

(assert (=> d!1224783 (= lt!1474494 e!2566007)))

(declare-fun c!709305 () Bool)

(assert (=> d!1224783 (= c!709305 (and ((_ is Cons!44814) rules!3756) ((_ is Nil!44814) (t!341927 rules!3756))))))

(declare-fun lt!1474495 () Unit!64127)

(declare-fun lt!1474493 () Unit!64127)

(assert (=> d!1224783 (= lt!1474495 lt!1474493)))

(assert (=> d!1224783 (isPrefix!4283 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2769 (List!44936 List!44936) Unit!64127)

(assert (=> d!1224783 (= lt!1474493 (lemmaIsPrefixRefl!2769 input!3238 input!3238))))

(declare-fun rulesValidInductive!2723 (LexerInterface!6937 List!44938) Bool)

(assert (=> d!1224783 (rulesValidInductive!2723 thiss!25645 rules!3756)))

(assert (=> d!1224783 (= (maxPrefix!4127 thiss!25645 rules!3756 input!3238) lt!1474494)))

(declare-fun b!4135639 () Bool)

(assert (=> b!4135639 (= e!2566008 (contains!9028 rules!3756 (rule!10444 (_1!24739 (get!14617 lt!1474494)))))))

(declare-fun b!4135640 () Bool)

(assert (=> b!4135640 (= e!2566007 call!290422)))

(declare-fun b!4135641 () Bool)

(assert (=> b!4135641 (= e!2566009 e!2566008)))

(declare-fun res!1691166 () Bool)

(assert (=> b!4135641 (=> (not res!1691166) (not e!2566008))))

(declare-fun isDefined!7263 (Option!9654) Bool)

(assert (=> b!4135641 (= res!1691166 (isDefined!7263 lt!1474494))))

(declare-fun b!4135642 () Bool)

(declare-fun res!1691167 () Bool)

(assert (=> b!4135642 (=> (not res!1691167) (not e!2566008))))

(assert (=> b!4135642 (= res!1691167 (matchR!6082 (regex!7348 (rule!10444 (_1!24739 (get!14617 lt!1474494)))) (list!16407 (charsOf!4947 (_1!24739 (get!14617 lt!1474494))))))))

(declare-fun bm!290417 () Bool)

(assert (=> bm!290417 (= call!290422 (maxPrefixOneRule!3066 thiss!25645 (h!50234 rules!3756) input!3238))))

(declare-fun b!4135643 () Bool)

(declare-fun res!1691168 () Bool)

(assert (=> b!4135643 (=> (not res!1691168) (not e!2566008))))

(assert (=> b!4135643 (= res!1691168 (= (++!11592 (list!16407 (charsOf!4947 (_1!24739 (get!14617 lt!1474494)))) (_2!24739 (get!14617 lt!1474494))) input!3238))))

(declare-fun b!4135644 () Bool)

(declare-fun res!1691171 () Bool)

(assert (=> b!4135644 (=> (not res!1691171) (not e!2566008))))

(assert (=> b!4135644 (= res!1691171 (= (value!229972 (_1!24739 (get!14617 lt!1474494))) (apply!10421 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474494)))) (seqFromList!5465 (originalCharacters!7844 (_1!24739 (get!14617 lt!1474494)))))))))

(declare-fun b!4135645 () Bool)

(declare-fun res!1691165 () Bool)

(assert (=> b!4135645 (=> (not res!1691165) (not e!2566008))))

(assert (=> b!4135645 (= res!1691165 (< (size!33171 (_2!24739 (get!14617 lt!1474494))) (size!33171 input!3238)))))

(assert (= (and d!1224783 c!709305) b!4135640))

(assert (= (and d!1224783 (not c!709305)) b!4135637))

(assert (= (or b!4135640 b!4135637) bm!290417))

(assert (= (and d!1224783 (not res!1691170)) b!4135641))

(assert (= (and b!4135641 res!1691166) b!4135638))

(assert (= (and b!4135638 res!1691169) b!4135645))

(assert (= (and b!4135645 res!1691165) b!4135643))

(assert (= (and b!4135643 res!1691168) b!4135644))

(assert (= (and b!4135644 res!1691171) b!4135642))

(assert (= (and b!4135642 res!1691167) b!4135639))

(declare-fun m!4732313 () Bool)

(assert (=> d!1224783 m!4732313))

(declare-fun m!4732315 () Bool)

(assert (=> d!1224783 m!4732315))

(declare-fun m!4732317 () Bool)

(assert (=> d!1224783 m!4732317))

(declare-fun m!4732319 () Bool)

(assert (=> d!1224783 m!4732319))

(declare-fun m!4732321 () Bool)

(assert (=> b!4135639 m!4732321))

(declare-fun m!4732325 () Bool)

(assert (=> b!4135639 m!4732325))

(assert (=> b!4135638 m!4732321))

(declare-fun m!4732329 () Bool)

(assert (=> b!4135638 m!4732329))

(assert (=> b!4135638 m!4732329))

(declare-fun m!4732331 () Bool)

(assert (=> b!4135638 m!4732331))

(assert (=> b!4135645 m!4732321))

(declare-fun m!4732333 () Bool)

(assert (=> b!4135645 m!4732333))

(assert (=> b!4135645 m!4732219))

(declare-fun m!4732335 () Bool)

(assert (=> b!4135637 m!4732335))

(assert (=> b!4135644 m!4732321))

(declare-fun m!4732337 () Bool)

(assert (=> b!4135644 m!4732337))

(assert (=> b!4135644 m!4732337))

(declare-fun m!4732341 () Bool)

(assert (=> b!4135644 m!4732341))

(declare-fun m!4732343 () Bool)

(assert (=> b!4135641 m!4732343))

(declare-fun m!4732345 () Bool)

(assert (=> bm!290417 m!4732345))

(assert (=> b!4135642 m!4732321))

(assert (=> b!4135642 m!4732329))

(assert (=> b!4135642 m!4732329))

(assert (=> b!4135642 m!4732331))

(assert (=> b!4135642 m!4732331))

(declare-fun m!4732347 () Bool)

(assert (=> b!4135642 m!4732347))

(assert (=> b!4135643 m!4732321))

(assert (=> b!4135643 m!4732329))

(assert (=> b!4135643 m!4732329))

(assert (=> b!4135643 m!4732331))

(assert (=> b!4135643 m!4732331))

(declare-fun m!4732349 () Bool)

(assert (=> b!4135643 m!4732349))

(assert (=> b!4135461 d!1224783))

(declare-fun d!1224817 () Bool)

(declare-fun dynLambda!19240 (Int BalanceConc!26712) TokenValue!7578)

(assert (=> d!1224817 (= (apply!10421 (transformation!7348 r!4008) lt!1474425) (dynLambda!19240 (toValue!10012 (transformation!7348 r!4008)) lt!1474425))))

(declare-fun b_lambda!121519 () Bool)

(assert (=> (not b_lambda!121519) (not d!1224817)))

(declare-fun tb!248223 () Bool)

(declare-fun t!341941 () Bool)

(assert (=> (and b!4135468 (= (toValue!10012 (transformation!7348 rBis!149)) (toValue!10012 (transformation!7348 r!4008))) t!341941) tb!248223))

(declare-fun result!301764 () Bool)

(declare-fun inv!21 (TokenValue!7578) Bool)

(assert (=> tb!248223 (= result!301764 (inv!21 (dynLambda!19240 (toValue!10012 (transformation!7348 r!4008)) lt!1474425)))))

(declare-fun m!4732359 () Bool)

(assert (=> tb!248223 m!4732359))

(assert (=> d!1224817 t!341941))

(declare-fun b_and!320849 () Bool)

(assert (= b_and!320825 (and (=> t!341941 result!301764) b_and!320849)))

(declare-fun t!341943 () Bool)

(declare-fun tb!248225 () Bool)

(assert (=> (and b!4135462 (= (toValue!10012 (transformation!7348 r!4008)) (toValue!10012 (transformation!7348 r!4008))) t!341943) tb!248225))

(declare-fun result!301768 () Bool)

(assert (= result!301768 result!301764))

(assert (=> d!1224817 t!341943))

(declare-fun b_and!320851 () Bool)

(assert (= b_and!320829 (and (=> t!341943 result!301768) b_and!320851)))

(declare-fun t!341945 () Bool)

(declare-fun tb!248227 () Bool)

(assert (=> (and b!4135460 (= (toValue!10012 (transformation!7348 (h!50234 rules!3756))) (toValue!10012 (transformation!7348 r!4008))) t!341945) tb!248227))

(declare-fun result!301770 () Bool)

(assert (= result!301770 result!301764))

(assert (=> d!1224817 t!341945))

(declare-fun b_and!320853 () Bool)

(assert (= b_and!320833 (and (=> t!341945 result!301770) b_and!320853)))

(declare-fun m!4732361 () Bool)

(assert (=> d!1224817 m!4732361))

(assert (=> b!4135461 d!1224817))

(declare-fun b!4135699 () Bool)

(declare-fun e!2566036 () Bool)

(assert (=> b!4135699 (= e!2566036 true)))

(declare-fun d!1224823 () Bool)

(assert (=> d!1224823 e!2566036))

(assert (= d!1224823 b!4135699))

(declare-fun order!23677 () Int)

(declare-fun order!23675 () Int)

(declare-fun lambda!128906 () Int)

(declare-fun dynLambda!19241 (Int Int) Int)

(declare-fun dynLambda!19242 (Int Int) Int)

(assert (=> b!4135699 (< (dynLambda!19241 order!23675 (toValue!10012 (transformation!7348 r!4008))) (dynLambda!19242 order!23677 lambda!128906))))

(declare-fun order!23679 () Int)

(declare-fun dynLambda!19243 (Int Int) Int)

(assert (=> b!4135699 (< (dynLambda!19243 order!23679 (toChars!9871 (transformation!7348 r!4008))) (dynLambda!19242 order!23677 lambda!128906))))

(declare-fun dynLambda!19244 (Int TokenValue!7578) BalanceConc!26712)

(assert (=> d!1224823 (= (list!16407 (dynLambda!19244 (toChars!9871 (transformation!7348 r!4008)) (dynLambda!19240 (toValue!10012 (transformation!7348 r!4008)) lt!1474425))) (list!16407 lt!1474425))))

(declare-fun lt!1474524 () Unit!64127)

(declare-fun ForallOf!955 (Int BalanceConc!26712) Unit!64127)

(assert (=> d!1224823 (= lt!1474524 (ForallOf!955 lambda!128906 lt!1474425))))

(assert (=> d!1224823 (= (lemmaSemiInverse!2206 (transformation!7348 r!4008) lt!1474425) lt!1474524)))

(declare-fun b_lambda!121521 () Bool)

(assert (=> (not b_lambda!121521) (not d!1224823)))

(declare-fun tb!248229 () Bool)

(declare-fun t!341947 () Bool)

(assert (=> (and b!4135468 (= (toChars!9871 (transformation!7348 rBis!149)) (toChars!9871 (transformation!7348 r!4008))) t!341947) tb!248229))

(declare-fun e!2566042 () Bool)

(declare-fun b!4135709 () Bool)

(declare-fun tp!1260614 () Bool)

(declare-fun inv!59422 (Conc!13559) Bool)

(assert (=> b!4135709 (= e!2566042 (and (inv!59422 (c!709276 (dynLambda!19244 (toChars!9871 (transformation!7348 r!4008)) (dynLambda!19240 (toValue!10012 (transformation!7348 r!4008)) lt!1474425)))) tp!1260614))))

(declare-fun result!301772 () Bool)

(declare-fun inv!59423 (BalanceConc!26712) Bool)

(assert (=> tb!248229 (= result!301772 (and (inv!59423 (dynLambda!19244 (toChars!9871 (transformation!7348 r!4008)) (dynLambda!19240 (toValue!10012 (transformation!7348 r!4008)) lt!1474425))) e!2566042))))

(assert (= tb!248229 b!4135709))

(declare-fun m!4732399 () Bool)

(assert (=> b!4135709 m!4732399))

(declare-fun m!4732401 () Bool)

(assert (=> tb!248229 m!4732401))

(assert (=> d!1224823 t!341947))

(declare-fun b_and!320855 () Bool)

(assert (= b_and!320827 (and (=> t!341947 result!301772) b_and!320855)))

(declare-fun t!341949 () Bool)

(declare-fun tb!248231 () Bool)

(assert (=> (and b!4135462 (= (toChars!9871 (transformation!7348 r!4008)) (toChars!9871 (transformation!7348 r!4008))) t!341949) tb!248231))

(declare-fun result!301776 () Bool)

(assert (= result!301776 result!301772))

(assert (=> d!1224823 t!341949))

(declare-fun b_and!320857 () Bool)

(assert (= b_and!320831 (and (=> t!341949 result!301776) b_and!320857)))

(declare-fun tb!248233 () Bool)

(declare-fun t!341951 () Bool)

(assert (=> (and b!4135460 (= (toChars!9871 (transformation!7348 (h!50234 rules!3756))) (toChars!9871 (transformation!7348 r!4008))) t!341951) tb!248233))

(declare-fun result!301778 () Bool)

(assert (= result!301778 result!301772))

(assert (=> d!1224823 t!341951))

(declare-fun b_and!320859 () Bool)

(assert (= b_and!320835 (and (=> t!341951 result!301778) b_and!320859)))

(declare-fun b_lambda!121525 () Bool)

(assert (=> (not b_lambda!121525) (not d!1224823)))

(assert (=> d!1224823 t!341941))

(declare-fun b_and!320861 () Bool)

(assert (= b_and!320849 (and (=> t!341941 result!301764) b_and!320861)))

(assert (=> d!1224823 t!341943))

(declare-fun b_and!320863 () Bool)

(assert (= b_and!320851 (and (=> t!341943 result!301768) b_and!320863)))

(assert (=> d!1224823 t!341945))

(declare-fun b_and!320865 () Bool)

(assert (= b_and!320853 (and (=> t!341945 result!301770) b_and!320865)))

(declare-fun m!4732403 () Bool)

(assert (=> d!1224823 m!4732403))

(assert (=> d!1224823 m!4732361))

(assert (=> d!1224823 m!4732361))

(declare-fun m!4732405 () Bool)

(assert (=> d!1224823 m!4732405))

(declare-fun m!4732407 () Bool)

(assert (=> d!1224823 m!4732407))

(assert (=> d!1224823 m!4732405))

(declare-fun m!4732411 () Bool)

(assert (=> d!1224823 m!4732411))

(assert (=> b!4135461 d!1224823))

(declare-fun d!1224831 () Bool)

(declare-fun fromListB!2505 (List!44936) BalanceConc!26712)

(assert (=> d!1224831 (= (seqFromList!5465 p!2912) (fromListB!2505 p!2912))))

(declare-fun bs!595116 () Bool)

(assert (= bs!595116 d!1224831))

(declare-fun m!4732427 () Bool)

(assert (=> bs!595116 m!4732427))

(assert (=> b!4135461 d!1224831))

(declare-fun d!1224837 () Bool)

(declare-fun lt!1474528 () Int)

(assert (=> d!1224837 (>= lt!1474528 0)))

(declare-fun e!2566061 () Int)

(assert (=> d!1224837 (= lt!1474528 e!2566061)))

(declare-fun c!709321 () Bool)

(assert (=> d!1224837 (= c!709321 ((_ is Nil!44812) p!2912))))

(assert (=> d!1224837 (= (size!33171 p!2912) lt!1474528)))

(declare-fun b!4135731 () Bool)

(assert (=> b!4135731 (= e!2566061 0)))

(declare-fun b!4135732 () Bool)

(assert (=> b!4135732 (= e!2566061 (+ 1 (size!33171 (t!341925 p!2912))))))

(assert (= (and d!1224837 c!709321) b!4135731))

(assert (= (and d!1224837 (not c!709321)) b!4135732))

(declare-fun m!4732433 () Bool)

(assert (=> b!4135732 m!4732433))

(assert (=> b!4135461 d!1224837))

(declare-fun d!1224839 () Bool)

(declare-fun res!1691198 () Bool)

(declare-fun e!2566071 () Bool)

(assert (=> d!1224839 (=> (not res!1691198) (not e!2566071))))

(declare-fun rulesValid!2887 (LexerInterface!6937 List!44938) Bool)

(assert (=> d!1224839 (= res!1691198 (rulesValid!2887 thiss!25645 rules!3756))))

(assert (=> d!1224839 (= (rulesInvariant!6234 thiss!25645 rules!3756) e!2566071)))

(declare-fun b!4135759 () Bool)

(declare-datatypes ((List!44940 0))(
  ( (Nil!44816) (Cons!44816 (h!50236 String!51640) (t!341977 List!44940)) )
))
(declare-fun noDuplicateTag!2970 (LexerInterface!6937 List!44938 List!44940) Bool)

(assert (=> b!4135759 (= e!2566071 (noDuplicateTag!2970 thiss!25645 rules!3756 Nil!44816))))

(assert (= (and d!1224839 res!1691198) b!4135759))

(declare-fun m!4732435 () Bool)

(assert (=> d!1224839 m!4732435))

(declare-fun m!4732437 () Bool)

(assert (=> b!4135759 m!4732437))

(assert (=> b!4135451 d!1224839))

(declare-fun d!1224841 () Bool)

(assert (=> d!1224841 (= (inv!59417 (tag!8208 r!4008)) (= (mod (str.len (value!229971 (tag!8208 r!4008))) 2) 0))))

(assert (=> b!4135452 d!1224841))

(declare-fun d!1224843 () Bool)

(declare-fun res!1691201 () Bool)

(declare-fun e!2566074 () Bool)

(assert (=> d!1224843 (=> (not res!1691201) (not e!2566074))))

(declare-fun semiInverseModEq!3173 (Int Int) Bool)

(assert (=> d!1224843 (= res!1691201 (semiInverseModEq!3173 (toChars!9871 (transformation!7348 r!4008)) (toValue!10012 (transformation!7348 r!4008))))))

(assert (=> d!1224843 (= (inv!59419 (transformation!7348 r!4008)) e!2566074)))

(declare-fun b!4135762 () Bool)

(declare-fun equivClasses!3072 (Int Int) Bool)

(assert (=> b!4135762 (= e!2566074 (equivClasses!3072 (toChars!9871 (transformation!7348 r!4008)) (toValue!10012 (transformation!7348 r!4008))))))

(assert (= (and d!1224843 res!1691201) b!4135762))

(declare-fun m!4732439 () Bool)

(assert (=> d!1224843 m!4732439))

(declare-fun m!4732441 () Bool)

(assert (=> b!4135762 m!4732441))

(assert (=> b!4135452 d!1224843))

(declare-fun d!1224845 () Bool)

(assert (=> d!1224845 (ruleValid!3154 thiss!25645 r!4008)))

(declare-fun lt!1474531 () Unit!64127)

(declare-fun choose!25276 (LexerInterface!6937 Rule!14496 List!44938) Unit!64127)

(assert (=> d!1224845 (= lt!1474531 (choose!25276 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1224845 (contains!9028 rules!3756 r!4008)))

(assert (=> d!1224845 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2194 thiss!25645 r!4008 rules!3756) lt!1474531)))

(declare-fun bs!595117 () Bool)

(assert (= bs!595117 d!1224845))

(assert (=> bs!595117 m!4732135))

(declare-fun m!4732443 () Bool)

(assert (=> bs!595117 m!4732443))

(assert (=> bs!595117 m!4732167))

(assert (=> b!4135463 d!1224845))

(declare-fun d!1224847 () Bool)

(declare-fun res!1691202 () Bool)

(declare-fun e!2566075 () Bool)

(assert (=> d!1224847 (=> (not res!1691202) (not e!2566075))))

(assert (=> d!1224847 (= res!1691202 (validRegex!5517 (regex!7348 rBis!149)))))

(assert (=> d!1224847 (= (ruleValid!3154 thiss!25645 rBis!149) e!2566075)))

(declare-fun b!4135763 () Bool)

(declare-fun res!1691203 () Bool)

(assert (=> b!4135763 (=> (not res!1691203) (not e!2566075))))

(assert (=> b!4135763 (= res!1691203 (not (nullable!4309 (regex!7348 rBis!149))))))

(declare-fun b!4135764 () Bool)

(assert (=> b!4135764 (= e!2566075 (not (= (tag!8208 rBis!149) (String!51641 ""))))))

(assert (= (and d!1224847 res!1691202) b!4135763))

(assert (= (and b!4135763 res!1691203) b!4135764))

(declare-fun m!4732445 () Bool)

(assert (=> d!1224847 m!4732445))

(declare-fun m!4732447 () Bool)

(assert (=> b!4135763 m!4732447))

(assert (=> b!4135463 d!1224847))

(declare-fun d!1224849 () Bool)

(assert (=> d!1224849 (ruleValid!3154 thiss!25645 rBis!149)))

(declare-fun lt!1474532 () Unit!64127)

(assert (=> d!1224849 (= lt!1474532 (choose!25276 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1224849 (contains!9028 rules!3756 rBis!149)))

(assert (=> d!1224849 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2194 thiss!25645 rBis!149 rules!3756) lt!1474532)))

(declare-fun bs!595118 () Bool)

(assert (= bs!595118 d!1224849))

(assert (=> bs!595118 m!4732143))

(declare-fun m!4732449 () Bool)

(assert (=> bs!595118 m!4732449))

(assert (=> bs!595118 m!4732151))

(assert (=> b!4135463 d!1224849))

(declare-fun d!1224851 () Bool)

(assert (=> d!1224851 (= (inv!59417 (tag!8208 (h!50234 rules!3756))) (= (mod (str.len (value!229971 (tag!8208 (h!50234 rules!3756)))) 2) 0))))

(assert (=> b!4135464 d!1224851))

(declare-fun d!1224853 () Bool)

(declare-fun res!1691204 () Bool)

(declare-fun e!2566076 () Bool)

(assert (=> d!1224853 (=> (not res!1691204) (not e!2566076))))

(assert (=> d!1224853 (= res!1691204 (semiInverseModEq!3173 (toChars!9871 (transformation!7348 (h!50234 rules!3756))) (toValue!10012 (transformation!7348 (h!50234 rules!3756)))))))

(assert (=> d!1224853 (= (inv!59419 (transformation!7348 (h!50234 rules!3756))) e!2566076)))

(declare-fun b!4135765 () Bool)

(assert (=> b!4135765 (= e!2566076 (equivClasses!3072 (toChars!9871 (transformation!7348 (h!50234 rules!3756))) (toValue!10012 (transformation!7348 (h!50234 rules!3756)))))))

(assert (= (and d!1224853 res!1691204) b!4135765))

(declare-fun m!4732451 () Bool)

(assert (=> d!1224853 m!4732451))

(declare-fun m!4732453 () Bool)

(assert (=> b!4135765 m!4732453))

(assert (=> b!4135464 d!1224853))

(declare-fun d!1224855 () Bool)

(declare-fun lt!1474535 () Int)

(assert (=> d!1224855 (>= lt!1474535 0)))

(declare-fun e!2566082 () Int)

(assert (=> d!1224855 (= lt!1474535 e!2566082)))

(declare-fun c!709326 () Bool)

(assert (=> d!1224855 (= c!709326 (and ((_ is Cons!44814) rules!3756) (= (h!50234 rules!3756) rBis!149)))))

(assert (=> d!1224855 (contains!9028 rules!3756 rBis!149)))

(assert (=> d!1224855 (= (getIndex!694 rules!3756 rBis!149) lt!1474535)))

(declare-fun b!4135775 () Bool)

(declare-fun e!2566083 () Int)

(assert (=> b!4135775 (= e!2566082 e!2566083)))

(declare-fun c!709327 () Bool)

(assert (=> b!4135775 (= c!709327 (and ((_ is Cons!44814) rules!3756) (not (= (h!50234 rules!3756) rBis!149))))))

(declare-fun b!4135777 () Bool)

(assert (=> b!4135777 (= e!2566083 (- 1))))

(declare-fun b!4135776 () Bool)

(assert (=> b!4135776 (= e!2566083 (+ 1 (getIndex!694 (t!341927 rules!3756) rBis!149)))))

(declare-fun b!4135774 () Bool)

(assert (=> b!4135774 (= e!2566082 0)))

(assert (= (and d!1224855 c!709326) b!4135774))

(assert (= (and d!1224855 (not c!709326)) b!4135775))

(assert (= (and b!4135775 c!709327) b!4135776))

(assert (= (and b!4135775 (not c!709327)) b!4135777))

(assert (=> d!1224855 m!4732151))

(declare-fun m!4732455 () Bool)

(assert (=> b!4135776 m!4732455))

(assert (=> b!4135453 d!1224855))

(declare-fun d!1224857 () Bool)

(declare-fun lt!1474536 () Int)

(assert (=> d!1224857 (>= lt!1474536 0)))

(declare-fun e!2566084 () Int)

(assert (=> d!1224857 (= lt!1474536 e!2566084)))

(declare-fun c!709328 () Bool)

(assert (=> d!1224857 (= c!709328 (and ((_ is Cons!44814) rules!3756) (= (h!50234 rules!3756) r!4008)))))

(assert (=> d!1224857 (contains!9028 rules!3756 r!4008)))

(assert (=> d!1224857 (= (getIndex!694 rules!3756 r!4008) lt!1474536)))

(declare-fun b!4135779 () Bool)

(declare-fun e!2566085 () Int)

(assert (=> b!4135779 (= e!2566084 e!2566085)))

(declare-fun c!709329 () Bool)

(assert (=> b!4135779 (= c!709329 (and ((_ is Cons!44814) rules!3756) (not (= (h!50234 rules!3756) r!4008))))))

(declare-fun b!4135781 () Bool)

(assert (=> b!4135781 (= e!2566085 (- 1))))

(declare-fun b!4135780 () Bool)

(assert (=> b!4135780 (= e!2566085 (+ 1 (getIndex!694 (t!341927 rules!3756) r!4008)))))

(declare-fun b!4135778 () Bool)

(assert (=> b!4135778 (= e!2566084 0)))

(assert (= (and d!1224857 c!709328) b!4135778))

(assert (= (and d!1224857 (not c!709328)) b!4135779))

(assert (= (and b!4135779 c!709329) b!4135780))

(assert (= (and b!4135779 (not c!709329)) b!4135781))

(assert (=> d!1224857 m!4732167))

(declare-fun m!4732457 () Bool)

(assert (=> b!4135780 m!4732457))

(assert (=> b!4135453 d!1224857))

(declare-fun d!1224859 () Bool)

(declare-fun e!2566091 () Bool)

(assert (=> d!1224859 e!2566091))

(declare-fun res!1691209 () Bool)

(assert (=> d!1224859 (=> (not res!1691209) (not e!2566091))))

(declare-fun lt!1474539 () List!44936)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6914 (List!44936) (InoxSet C!24692))

(assert (=> d!1224859 (= res!1691209 (= (content!6914 lt!1474539) ((_ map or) (content!6914 p!2912) (content!6914 lt!1474428))))))

(declare-fun e!2566090 () List!44936)

(assert (=> d!1224859 (= lt!1474539 e!2566090)))

(declare-fun c!709332 () Bool)

(assert (=> d!1224859 (= c!709332 ((_ is Nil!44812) p!2912))))

(assert (=> d!1224859 (= (++!11592 p!2912 lt!1474428) lt!1474539)))

(declare-fun b!4135792 () Bool)

(declare-fun res!1691210 () Bool)

(assert (=> b!4135792 (=> (not res!1691210) (not e!2566091))))

(assert (=> b!4135792 (= res!1691210 (= (size!33171 lt!1474539) (+ (size!33171 p!2912) (size!33171 lt!1474428))))))

(declare-fun b!4135793 () Bool)

(assert (=> b!4135793 (= e!2566091 (or (not (= lt!1474428 Nil!44812)) (= lt!1474539 p!2912)))))

(declare-fun b!4135791 () Bool)

(assert (=> b!4135791 (= e!2566090 (Cons!44812 (h!50232 p!2912) (++!11592 (t!341925 p!2912) lt!1474428)))))

(declare-fun b!4135790 () Bool)

(assert (=> b!4135790 (= e!2566090 lt!1474428)))

(assert (= (and d!1224859 c!709332) b!4135790))

(assert (= (and d!1224859 (not c!709332)) b!4135791))

(assert (= (and d!1224859 res!1691209) b!4135792))

(assert (= (and b!4135792 res!1691210) b!4135793))

(declare-fun m!4732459 () Bool)

(assert (=> d!1224859 m!4732459))

(declare-fun m!4732461 () Bool)

(assert (=> d!1224859 m!4732461))

(declare-fun m!4732463 () Bool)

(assert (=> d!1224859 m!4732463))

(declare-fun m!4732465 () Bool)

(assert (=> b!4135792 m!4732465))

(assert (=> b!4135792 m!4732123))

(declare-fun m!4732467 () Bool)

(assert (=> b!4135792 m!4732467))

(declare-fun m!4732469 () Bool)

(assert (=> b!4135791 m!4732469))

(assert (=> b!4135454 d!1224859))

(declare-fun d!1224861 () Bool)

(declare-fun lt!1474540 () List!44936)

(assert (=> d!1224861 (= (++!11592 (list!16407 lt!1474427) lt!1474540) input!3238)))

(declare-fun e!2566092 () List!44936)

(assert (=> d!1224861 (= lt!1474540 e!2566092)))

(declare-fun c!709333 () Bool)

(assert (=> d!1224861 (= c!709333 ((_ is Cons!44812) (list!16407 lt!1474427)))))

(assert (=> d!1224861 (>= (size!33171 input!3238) (size!33171 (list!16407 lt!1474427)))))

(assert (=> d!1224861 (= (getSuffix!2610 input!3238 (list!16407 lt!1474427)) lt!1474540)))

(declare-fun b!4135794 () Bool)

(assert (=> b!4135794 (= e!2566092 (getSuffix!2610 (tail!6507 input!3238) (t!341925 (list!16407 lt!1474427))))))

(declare-fun b!4135795 () Bool)

(assert (=> b!4135795 (= e!2566092 input!3238)))

(assert (= (and d!1224861 c!709333) b!4135794))

(assert (= (and d!1224861 (not c!709333)) b!4135795))

(assert (=> d!1224861 m!4732115))

(declare-fun m!4732471 () Bool)

(assert (=> d!1224861 m!4732471))

(assert (=> d!1224861 m!4732219))

(assert (=> d!1224861 m!4732115))

(declare-fun m!4732473 () Bool)

(assert (=> d!1224861 m!4732473))

(assert (=> b!4135794 m!4732221))

(assert (=> b!4135794 m!4732221))

(declare-fun m!4732475 () Bool)

(assert (=> b!4135794 m!4732475))

(assert (=> b!4135454 d!1224861))

(declare-fun d!1224863 () Bool)

(declare-fun list!16409 (Conc!13559) List!44936)

(assert (=> d!1224863 (= (list!16407 lt!1474427) (list!16409 (c!709276 lt!1474427)))))

(declare-fun bs!595119 () Bool)

(assert (= bs!595119 d!1224863))

(declare-fun m!4732477 () Bool)

(assert (=> bs!595119 m!4732477))

(assert (=> b!4135454 d!1224863))

(declare-fun d!1224865 () Bool)

(declare-fun lt!1474543 () Bool)

(declare-fun content!6915 (List!44938) (InoxSet Rule!14496))

(assert (=> d!1224865 (= lt!1474543 (select (content!6915 rules!3756) rBis!149))))

(declare-fun e!2566098 () Bool)

(assert (=> d!1224865 (= lt!1474543 e!2566098)))

(declare-fun res!1691215 () Bool)

(assert (=> d!1224865 (=> (not res!1691215) (not e!2566098))))

(assert (=> d!1224865 (= res!1691215 ((_ is Cons!44814) rules!3756))))

(assert (=> d!1224865 (= (contains!9028 rules!3756 rBis!149) lt!1474543)))

(declare-fun b!4135800 () Bool)

(declare-fun e!2566097 () Bool)

(assert (=> b!4135800 (= e!2566098 e!2566097)))

(declare-fun res!1691216 () Bool)

(assert (=> b!4135800 (=> res!1691216 e!2566097)))

(assert (=> b!4135800 (= res!1691216 (= (h!50234 rules!3756) rBis!149))))

(declare-fun b!4135801 () Bool)

(assert (=> b!4135801 (= e!2566097 (contains!9028 (t!341927 rules!3756) rBis!149))))

(assert (= (and d!1224865 res!1691215) b!4135800))

(assert (= (and b!4135800 (not res!1691216)) b!4135801))

(declare-fun m!4732479 () Bool)

(assert (=> d!1224865 m!4732479))

(declare-fun m!4732481 () Bool)

(assert (=> d!1224865 m!4732481))

(declare-fun m!4732483 () Bool)

(assert (=> b!4135801 m!4732483))

(assert (=> b!4135465 d!1224865))

(declare-fun b!4135830 () Bool)

(declare-fun res!1691234 () Bool)

(declare-fun e!2566113 () Bool)

(assert (=> b!4135830 (=> res!1691234 e!2566113)))

(assert (=> b!4135830 (= res!1691234 (not (isEmpty!26697 (tail!6507 p!2912))))))

(declare-fun b!4135831 () Bool)

(declare-fun e!2566115 () Bool)

(assert (=> b!4135831 (= e!2566115 e!2566113)))

(declare-fun res!1691237 () Bool)

(assert (=> b!4135831 (=> res!1691237 e!2566113)))

(declare-fun call!290428 () Bool)

(assert (=> b!4135831 (= res!1691237 call!290428)))

(declare-fun b!4135832 () Bool)

(declare-fun e!2566114 () Bool)

(declare-fun lt!1474546 () Bool)

(assert (=> b!4135832 (= e!2566114 (not lt!1474546))))

(declare-fun b!4135833 () Bool)

(declare-fun e!2566118 () Bool)

(assert (=> b!4135833 (= e!2566118 (nullable!4309 (regex!7348 r!4008)))))

(declare-fun b!4135834 () Bool)

(declare-fun e!2566116 () Bool)

(assert (=> b!4135834 (= e!2566116 e!2566114)))

(declare-fun c!709342 () Bool)

(assert (=> b!4135834 (= c!709342 ((_ is EmptyLang!12253) (regex!7348 r!4008)))))

(declare-fun b!4135835 () Bool)

(declare-fun derivativeStep!3704 (Regex!12253 C!24692) Regex!12253)

(declare-fun head!8722 (List!44936) C!24692)

(assert (=> b!4135835 (= e!2566118 (matchR!6082 (derivativeStep!3704 (regex!7348 r!4008) (head!8722 p!2912)) (tail!6507 p!2912)))))

(declare-fun b!4135836 () Bool)

(declare-fun res!1691239 () Bool)

(declare-fun e!2566119 () Bool)

(assert (=> b!4135836 (=> res!1691239 e!2566119)))

(declare-fun e!2566117 () Bool)

(assert (=> b!4135836 (= res!1691239 e!2566117)))

(declare-fun res!1691238 () Bool)

(assert (=> b!4135836 (=> (not res!1691238) (not e!2566117))))

(assert (=> b!4135836 (= res!1691238 lt!1474546)))

(declare-fun b!4135837 () Bool)

(assert (=> b!4135837 (= e!2566113 (not (= (head!8722 p!2912) (c!709277 (regex!7348 r!4008)))))))

(declare-fun d!1224867 () Bool)

(assert (=> d!1224867 e!2566116))

(declare-fun c!709340 () Bool)

(assert (=> d!1224867 (= c!709340 ((_ is EmptyExpr!12253) (regex!7348 r!4008)))))

(assert (=> d!1224867 (= lt!1474546 e!2566118)))

(declare-fun c!709341 () Bool)

(assert (=> d!1224867 (= c!709341 (isEmpty!26697 p!2912))))

(assert (=> d!1224867 (validRegex!5517 (regex!7348 r!4008))))

(assert (=> d!1224867 (= (matchR!6082 (regex!7348 r!4008) p!2912) lt!1474546)))

(declare-fun b!4135838 () Bool)

(declare-fun res!1691236 () Bool)

(assert (=> b!4135838 (=> (not res!1691236) (not e!2566117))))

(assert (=> b!4135838 (= res!1691236 (not call!290428))))

(declare-fun b!4135839 () Bool)

(declare-fun res!1691233 () Bool)

(assert (=> b!4135839 (=> res!1691233 e!2566119)))

(assert (=> b!4135839 (= res!1691233 (not ((_ is ElementMatch!12253) (regex!7348 r!4008))))))

(assert (=> b!4135839 (= e!2566114 e!2566119)))

(declare-fun b!4135840 () Bool)

(assert (=> b!4135840 (= e!2566117 (= (head!8722 p!2912) (c!709277 (regex!7348 r!4008))))))

(declare-fun b!4135841 () Bool)

(assert (=> b!4135841 (= e!2566116 (= lt!1474546 call!290428))))

(declare-fun b!4135842 () Bool)

(assert (=> b!4135842 (= e!2566119 e!2566115)))

(declare-fun res!1691240 () Bool)

(assert (=> b!4135842 (=> (not res!1691240) (not e!2566115))))

(assert (=> b!4135842 (= res!1691240 (not lt!1474546))))

(declare-fun bm!290423 () Bool)

(assert (=> bm!290423 (= call!290428 (isEmpty!26697 p!2912))))

(declare-fun b!4135843 () Bool)

(declare-fun res!1691235 () Bool)

(assert (=> b!4135843 (=> (not res!1691235) (not e!2566117))))

(assert (=> b!4135843 (= res!1691235 (isEmpty!26697 (tail!6507 p!2912)))))

(assert (= (and d!1224867 c!709341) b!4135833))

(assert (= (and d!1224867 (not c!709341)) b!4135835))

(assert (= (and d!1224867 c!709340) b!4135841))

(assert (= (and d!1224867 (not c!709340)) b!4135834))

(assert (= (and b!4135834 c!709342) b!4135832))

(assert (= (and b!4135834 (not c!709342)) b!4135839))

(assert (= (and b!4135839 (not res!1691233)) b!4135836))

(assert (= (and b!4135836 res!1691238) b!4135838))

(assert (= (and b!4135838 res!1691236) b!4135843))

(assert (= (and b!4135843 res!1691235) b!4135840))

(assert (= (and b!4135836 (not res!1691239)) b!4135842))

(assert (= (and b!4135842 res!1691240) b!4135831))

(assert (= (and b!4135831 (not res!1691237)) b!4135830))

(assert (= (and b!4135830 (not res!1691234)) b!4135837))

(assert (= (or b!4135841 b!4135831 b!4135838) bm!290423))

(declare-fun m!4732485 () Bool)

(assert (=> b!4135830 m!4732485))

(assert (=> b!4135830 m!4732485))

(declare-fun m!4732487 () Bool)

(assert (=> b!4135830 m!4732487))

(assert (=> b!4135843 m!4732485))

(assert (=> b!4135843 m!4732485))

(assert (=> b!4135843 m!4732487))

(assert (=> bm!290423 m!4732159))

(declare-fun m!4732489 () Bool)

(assert (=> b!4135837 m!4732489))

(assert (=> b!4135833 m!4732197))

(assert (=> b!4135835 m!4732489))

(assert (=> b!4135835 m!4732489))

(declare-fun m!4732491 () Bool)

(assert (=> b!4135835 m!4732491))

(assert (=> b!4135835 m!4732485))

(assert (=> b!4135835 m!4732491))

(assert (=> b!4135835 m!4732485))

(declare-fun m!4732493 () Bool)

(assert (=> b!4135835 m!4732493))

(assert (=> d!1224867 m!4732159))

(assert (=> d!1224867 m!4732195))

(assert (=> b!4135840 m!4732489))

(assert (=> b!4135466 d!1224867))

(declare-fun d!1224869 () Bool)

(assert (=> d!1224869 (= (isEmpty!26698 rules!3756) ((_ is Nil!44814) rules!3756))))

(assert (=> b!4135455 d!1224869))

(declare-fun d!1224871 () Bool)

(declare-fun lt!1474547 () Bool)

(assert (=> d!1224871 (= lt!1474547 (select (content!6915 (tail!6505 rules!3756)) r!4008))))

(declare-fun e!2566121 () Bool)

(assert (=> d!1224871 (= lt!1474547 e!2566121)))

(declare-fun res!1691241 () Bool)

(assert (=> d!1224871 (=> (not res!1691241) (not e!2566121))))

(assert (=> d!1224871 (= res!1691241 ((_ is Cons!44814) (tail!6505 rules!3756)))))

(assert (=> d!1224871 (= (contains!9028 (tail!6505 rules!3756) r!4008) lt!1474547)))

(declare-fun b!4135844 () Bool)

(declare-fun e!2566120 () Bool)

(assert (=> b!4135844 (= e!2566121 e!2566120)))

(declare-fun res!1691242 () Bool)

(assert (=> b!4135844 (=> res!1691242 e!2566120)))

(assert (=> b!4135844 (= res!1691242 (= (h!50234 (tail!6505 rules!3756)) r!4008))))

(declare-fun b!4135845 () Bool)

(assert (=> b!4135845 (= e!2566120 (contains!9028 (t!341927 (tail!6505 rules!3756)) r!4008))))

(assert (= (and d!1224871 res!1691241) b!4135844))

(assert (= (and b!4135844 (not res!1691242)) b!4135845))

(assert (=> d!1224871 m!4732097))

(declare-fun m!4732495 () Bool)

(assert (=> d!1224871 m!4732495))

(declare-fun m!4732497 () Bool)

(assert (=> d!1224871 m!4732497))

(declare-fun m!4732499 () Bool)

(assert (=> b!4135845 m!4732499))

(assert (=> b!4135456 d!1224871))

(declare-fun d!1224873 () Bool)

(assert (=> d!1224873 (= (tail!6505 rules!3756) (t!341927 rules!3756))))

(assert (=> b!4135456 d!1224873))

(declare-fun d!1224875 () Bool)

(assert (=> d!1224875 (= (isEmpty!26699 lt!1474430) (not ((_ is Some!9653) lt!1474430)))))

(assert (=> b!4135456 d!1224875))

(declare-fun d!1224877 () Bool)

(assert (=> d!1224877 (contains!9028 (tail!6505 rules!3756) r!4008)))

(declare-fun lt!1474550 () Unit!64127)

(declare-fun choose!25277 (List!44938 Rule!14496 Rule!14496) Unit!64127)

(assert (=> d!1224877 (= lt!1474550 (choose!25277 rules!3756 rBis!149 r!4008))))

(declare-fun e!2566124 () Bool)

(assert (=> d!1224877 e!2566124))

(declare-fun res!1691245 () Bool)

(assert (=> d!1224877 (=> (not res!1691245) (not e!2566124))))

(assert (=> d!1224877 (= res!1691245 (contains!9028 rules!3756 rBis!149))))

(assert (=> d!1224877 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!52 rules!3756 rBis!149 r!4008) lt!1474550)))

(declare-fun b!4135848 () Bool)

(assert (=> b!4135848 (= e!2566124 (contains!9028 rules!3756 r!4008))))

(assert (= (and d!1224877 res!1691245) b!4135848))

(assert (=> d!1224877 m!4732097))

(assert (=> d!1224877 m!4732097))

(assert (=> d!1224877 m!4732105))

(declare-fun m!4732501 () Bool)

(assert (=> d!1224877 m!4732501))

(assert (=> d!1224877 m!4732151))

(assert (=> b!4135848 m!4732167))

(assert (=> b!4135456 d!1224877))

(declare-fun b!4135867 () Bool)

(declare-fun res!1691266 () Bool)

(declare-fun e!2566133 () Bool)

(assert (=> b!4135867 (=> (not res!1691266) (not e!2566133))))

(declare-fun lt!1474561 () Option!9654)

(assert (=> b!4135867 (= res!1691266 (= (value!229972 (_1!24739 (get!14617 lt!1474561))) (apply!10421 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474561)))) (seqFromList!5465 (originalCharacters!7844 (_1!24739 (get!14617 lt!1474561)))))))))

(declare-fun b!4135868 () Bool)

(declare-fun e!2566135 () Option!9654)

(declare-datatypes ((tuple2!43214 0))(
  ( (tuple2!43215 (_1!24741 List!44936) (_2!24741 List!44936)) )
))
(declare-fun lt!1474564 () tuple2!43214)

(assert (=> b!4135868 (= e!2566135 (Some!9653 (tuple2!43211 (Token!13627 (apply!10421 (transformation!7348 rBis!149) (seqFromList!5465 (_1!24741 lt!1474564))) rBis!149 (size!33172 (seqFromList!5465 (_1!24741 lt!1474564))) (_1!24741 lt!1474564)) (_2!24741 lt!1474564))))))

(declare-fun lt!1474563 () Unit!64127)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1486 (Regex!12253 List!44936) Unit!64127)

(assert (=> b!4135868 (= lt!1474563 (longestMatchIsAcceptedByMatchOrIsEmpty!1486 (regex!7348 rBis!149) input!3238))))

(declare-fun res!1691264 () Bool)

(declare-fun findLongestMatchInner!1513 (Regex!12253 List!44936 Int List!44936 List!44936 Int) tuple2!43214)

(assert (=> b!4135868 (= res!1691264 (isEmpty!26697 (_1!24741 (findLongestMatchInner!1513 (regex!7348 rBis!149) Nil!44812 (size!33171 Nil!44812) input!3238 input!3238 (size!33171 input!3238)))))))

(declare-fun e!2566134 () Bool)

(assert (=> b!4135868 (=> res!1691264 e!2566134)))

(assert (=> b!4135868 e!2566134))

(declare-fun lt!1474565 () Unit!64127)

(assert (=> b!4135868 (= lt!1474565 lt!1474563)))

(declare-fun lt!1474562 () Unit!64127)

(assert (=> b!4135868 (= lt!1474562 (lemmaSemiInverse!2206 (transformation!7348 rBis!149) (seqFromList!5465 (_1!24741 lt!1474564))))))

(declare-fun b!4135869 () Bool)

(declare-fun res!1691262 () Bool)

(assert (=> b!4135869 (=> (not res!1691262) (not e!2566133))))

(assert (=> b!4135869 (= res!1691262 (< (size!33171 (_2!24739 (get!14617 lt!1474561))) (size!33171 input!3238)))))

(declare-fun b!4135870 () Bool)

(assert (=> b!4135870 (= e!2566133 (= (size!33170 (_1!24739 (get!14617 lt!1474561))) (size!33171 (originalCharacters!7844 (_1!24739 (get!14617 lt!1474561))))))))

(declare-fun b!4135871 () Bool)

(declare-fun res!1691263 () Bool)

(assert (=> b!4135871 (=> (not res!1691263) (not e!2566133))))

(assert (=> b!4135871 (= res!1691263 (= (++!11592 (list!16407 (charsOf!4947 (_1!24739 (get!14617 lt!1474561)))) (_2!24739 (get!14617 lt!1474561))) input!3238))))

(declare-fun b!4135872 () Bool)

(declare-fun res!1691265 () Bool)

(assert (=> b!4135872 (=> (not res!1691265) (not e!2566133))))

(assert (=> b!4135872 (= res!1691265 (= (rule!10444 (_1!24739 (get!14617 lt!1474561))) rBis!149))))

(declare-fun b!4135873 () Bool)

(assert (=> b!4135873 (= e!2566135 None!9653)))

(declare-fun b!4135874 () Bool)

(assert (=> b!4135874 (= e!2566134 (matchR!6082 (regex!7348 rBis!149) (_1!24741 (findLongestMatchInner!1513 (regex!7348 rBis!149) Nil!44812 (size!33171 Nil!44812) input!3238 input!3238 (size!33171 input!3238)))))))

(declare-fun b!4135875 () Bool)

(declare-fun e!2566136 () Bool)

(assert (=> b!4135875 (= e!2566136 e!2566133)))

(declare-fun res!1691260 () Bool)

(assert (=> b!4135875 (=> (not res!1691260) (not e!2566133))))

(assert (=> b!4135875 (= res!1691260 (matchR!6082 (regex!7348 rBis!149) (list!16407 (charsOf!4947 (_1!24739 (get!14617 lt!1474561))))))))

(declare-fun d!1224879 () Bool)

(assert (=> d!1224879 e!2566136))

(declare-fun res!1691261 () Bool)

(assert (=> d!1224879 (=> res!1691261 e!2566136)))

(assert (=> d!1224879 (= res!1691261 (isEmpty!26699 lt!1474561))))

(assert (=> d!1224879 (= lt!1474561 e!2566135)))

(declare-fun c!709345 () Bool)

(assert (=> d!1224879 (= c!709345 (isEmpty!26697 (_1!24741 lt!1474564)))))

(declare-fun findLongestMatch!1426 (Regex!12253 List!44936) tuple2!43214)

(assert (=> d!1224879 (= lt!1474564 (findLongestMatch!1426 (regex!7348 rBis!149) input!3238))))

(assert (=> d!1224879 (ruleValid!3154 thiss!25645 rBis!149)))

(assert (=> d!1224879 (= (maxPrefixOneRule!3066 thiss!25645 rBis!149 input!3238) lt!1474561)))

(assert (= (and d!1224879 c!709345) b!4135873))

(assert (= (and d!1224879 (not c!709345)) b!4135868))

(assert (= (and b!4135868 (not res!1691264)) b!4135874))

(assert (= (and d!1224879 (not res!1691261)) b!4135875))

(assert (= (and b!4135875 res!1691260) b!4135871))

(assert (= (and b!4135871 res!1691263) b!4135869))

(assert (= (and b!4135869 res!1691262) b!4135872))

(assert (= (and b!4135872 res!1691265) b!4135867))

(assert (= (and b!4135867 res!1691266) b!4135870))

(declare-fun m!4732503 () Bool)

(assert (=> b!4135869 m!4732503))

(declare-fun m!4732505 () Bool)

(assert (=> b!4135869 m!4732505))

(assert (=> b!4135869 m!4732219))

(assert (=> b!4135867 m!4732503))

(declare-fun m!4732507 () Bool)

(assert (=> b!4135867 m!4732507))

(assert (=> b!4135867 m!4732507))

(declare-fun m!4732509 () Bool)

(assert (=> b!4135867 m!4732509))

(assert (=> b!4135871 m!4732503))

(declare-fun m!4732511 () Bool)

(assert (=> b!4135871 m!4732511))

(assert (=> b!4135871 m!4732511))

(declare-fun m!4732513 () Bool)

(assert (=> b!4135871 m!4732513))

(assert (=> b!4135871 m!4732513))

(declare-fun m!4732515 () Bool)

(assert (=> b!4135871 m!4732515))

(assert (=> b!4135872 m!4732503))

(declare-fun m!4732517 () Bool)

(assert (=> b!4135868 m!4732517))

(declare-fun m!4732519 () Bool)

(assert (=> b!4135868 m!4732519))

(declare-fun m!4732521 () Bool)

(assert (=> b!4135868 m!4732521))

(assert (=> b!4135868 m!4732519))

(declare-fun m!4732523 () Bool)

(assert (=> b!4135868 m!4732523))

(assert (=> b!4135868 m!4732219))

(declare-fun m!4732525 () Bool)

(assert (=> b!4135868 m!4732525))

(declare-fun m!4732527 () Bool)

(assert (=> b!4135868 m!4732527))

(assert (=> b!4135868 m!4732219))

(assert (=> b!4135868 m!4732519))

(declare-fun m!4732529 () Bool)

(assert (=> b!4135868 m!4732529))

(assert (=> b!4135868 m!4732519))

(declare-fun m!4732531 () Bool)

(assert (=> b!4135868 m!4732531))

(assert (=> b!4135868 m!4732523))

(assert (=> b!4135874 m!4732523))

(assert (=> b!4135874 m!4732219))

(assert (=> b!4135874 m!4732523))

(assert (=> b!4135874 m!4732219))

(assert (=> b!4135874 m!4732525))

(declare-fun m!4732533 () Bool)

(assert (=> b!4135874 m!4732533))

(assert (=> b!4135875 m!4732503))

(assert (=> b!4135875 m!4732511))

(assert (=> b!4135875 m!4732511))

(assert (=> b!4135875 m!4732513))

(assert (=> b!4135875 m!4732513))

(declare-fun m!4732535 () Bool)

(assert (=> b!4135875 m!4732535))

(declare-fun m!4732537 () Bool)

(assert (=> d!1224879 m!4732537))

(declare-fun m!4732539 () Bool)

(assert (=> d!1224879 m!4732539))

(declare-fun m!4732541 () Bool)

(assert (=> d!1224879 m!4732541))

(assert (=> d!1224879 m!4732143))

(assert (=> b!4135870 m!4732503))

(declare-fun m!4732543 () Bool)

(assert (=> b!4135870 m!4732543))

(assert (=> b!4135456 d!1224879))

(declare-fun d!1224881 () Bool)

(assert (=> d!1224881 (not (= rBis!149 r!4008))))

(declare-fun lt!1474568 () Unit!64127)

(declare-fun choose!25278 (LexerInterface!6937 List!44938 Rule!14496 Rule!14496) Unit!64127)

(assert (=> d!1224881 (= lt!1474568 (choose!25278 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1224881 (contains!9028 rules!3756 rBis!149)))

(assert (=> d!1224881 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!46 thiss!25645 rules!3756 rBis!149 r!4008) lt!1474568)))

(declare-fun bs!595120 () Bool)

(assert (= bs!595120 d!1224881))

(declare-fun m!4732545 () Bool)

(assert (=> bs!595120 m!4732545))

(assert (=> bs!595120 m!4732151))

(assert (=> b!4135456 d!1224881))

(declare-fun d!1224883 () Bool)

(declare-fun lt!1474571 () Int)

(assert (=> d!1224883 (= lt!1474571 (size!33171 (list!16407 lt!1474427)))))

(declare-fun size!33174 (Conc!13559) Int)

(assert (=> d!1224883 (= lt!1474571 (size!33174 (c!709276 lt!1474427)))))

(assert (=> d!1224883 (= (size!33172 lt!1474427) lt!1474571)))

(declare-fun bs!595121 () Bool)

(assert (= bs!595121 d!1224883))

(assert (=> bs!595121 m!4732115))

(assert (=> bs!595121 m!4732115))

(assert (=> bs!595121 m!4732473))

(declare-fun m!4732547 () Bool)

(assert (=> bs!595121 m!4732547))

(assert (=> b!4135467 d!1224883))

(declare-fun d!1224885 () Bool)

(declare-fun lt!1474574 () BalanceConc!26712)

(assert (=> d!1224885 (= (list!16407 lt!1474574) (originalCharacters!7844 (_1!24739 (get!14617 lt!1474430))))))

(assert (=> d!1224885 (= lt!1474574 (dynLambda!19244 (toChars!9871 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474430))))) (value!229972 (_1!24739 (get!14617 lt!1474430)))))))

(assert (=> d!1224885 (= (charsOf!4947 (_1!24739 (get!14617 lt!1474430))) lt!1474574)))

(declare-fun b_lambda!121535 () Bool)

(assert (=> (not b_lambda!121535) (not d!1224885)))

(declare-fun t!341966 () Bool)

(declare-fun tb!248247 () Bool)

(assert (=> (and b!4135468 (= (toChars!9871 (transformation!7348 rBis!149)) (toChars!9871 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474430)))))) t!341966) tb!248247))

(declare-fun b!4135876 () Bool)

(declare-fun e!2566137 () Bool)

(declare-fun tp!1260657 () Bool)

(assert (=> b!4135876 (= e!2566137 (and (inv!59422 (c!709276 (dynLambda!19244 (toChars!9871 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474430))))) (value!229972 (_1!24739 (get!14617 lt!1474430)))))) tp!1260657))))

(declare-fun result!301798 () Bool)

(assert (=> tb!248247 (= result!301798 (and (inv!59423 (dynLambda!19244 (toChars!9871 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474430))))) (value!229972 (_1!24739 (get!14617 lt!1474430))))) e!2566137))))

(assert (= tb!248247 b!4135876))

(declare-fun m!4732549 () Bool)

(assert (=> b!4135876 m!4732549))

(declare-fun m!4732551 () Bool)

(assert (=> tb!248247 m!4732551))

(assert (=> d!1224885 t!341966))

(declare-fun b_and!320883 () Bool)

(assert (= b_and!320855 (and (=> t!341966 result!301798) b_and!320883)))

(declare-fun tb!248249 () Bool)

(declare-fun t!341968 () Bool)

(assert (=> (and b!4135462 (= (toChars!9871 (transformation!7348 r!4008)) (toChars!9871 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474430)))))) t!341968) tb!248249))

(declare-fun result!301800 () Bool)

(assert (= result!301800 result!301798))

(assert (=> d!1224885 t!341968))

(declare-fun b_and!320885 () Bool)

(assert (= b_and!320857 (and (=> t!341968 result!301800) b_and!320885)))

(declare-fun t!341970 () Bool)

(declare-fun tb!248251 () Bool)

(assert (=> (and b!4135460 (= (toChars!9871 (transformation!7348 (h!50234 rules!3756))) (toChars!9871 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474430)))))) t!341970) tb!248251))

(declare-fun result!301802 () Bool)

(assert (= result!301802 result!301798))

(assert (=> d!1224885 t!341970))

(declare-fun b_and!320887 () Bool)

(assert (= b_and!320859 (and (=> t!341970 result!301802) b_and!320887)))

(declare-fun m!4732553 () Bool)

(assert (=> d!1224885 m!4732553))

(declare-fun m!4732555 () Bool)

(assert (=> d!1224885 m!4732555))

(assert (=> b!4135467 d!1224885))

(declare-fun d!1224887 () Bool)

(assert (=> d!1224887 (= (get!14617 lt!1474430) (v!40277 lt!1474430))))

(assert (=> b!4135467 d!1224887))

(declare-fun d!1224889 () Bool)

(assert (=> d!1224889 (= (inv!59417 (tag!8208 rBis!149)) (= (mod (str.len (value!229971 (tag!8208 rBis!149))) 2) 0))))

(assert (=> b!4135457 d!1224889))

(declare-fun d!1224891 () Bool)

(declare-fun res!1691267 () Bool)

(declare-fun e!2566138 () Bool)

(assert (=> d!1224891 (=> (not res!1691267) (not e!2566138))))

(assert (=> d!1224891 (= res!1691267 (semiInverseModEq!3173 (toChars!9871 (transformation!7348 rBis!149)) (toValue!10012 (transformation!7348 rBis!149))))))

(assert (=> d!1224891 (= (inv!59419 (transformation!7348 rBis!149)) e!2566138)))

(declare-fun b!4135877 () Bool)

(assert (=> b!4135877 (= e!2566138 (equivClasses!3072 (toChars!9871 (transformation!7348 rBis!149)) (toValue!10012 (transformation!7348 rBis!149))))))

(assert (= (and d!1224891 res!1691267) b!4135877))

(declare-fun m!4732557 () Bool)

(assert (=> d!1224891 m!4732557))

(declare-fun m!4732559 () Bool)

(assert (=> b!4135877 m!4732559))

(assert (=> b!4135457 d!1224891))

(declare-fun d!1224893 () Bool)

(declare-fun lt!1474575 () Bool)

(assert (=> d!1224893 (= lt!1474575 (select (content!6915 rules!3756) r!4008))))

(declare-fun e!2566140 () Bool)

(assert (=> d!1224893 (= lt!1474575 e!2566140)))

(declare-fun res!1691268 () Bool)

(assert (=> d!1224893 (=> (not res!1691268) (not e!2566140))))

(assert (=> d!1224893 (= res!1691268 ((_ is Cons!44814) rules!3756))))

(assert (=> d!1224893 (= (contains!9028 rules!3756 r!4008) lt!1474575)))

(declare-fun b!4135878 () Bool)

(declare-fun e!2566139 () Bool)

(assert (=> b!4135878 (= e!2566140 e!2566139)))

(declare-fun res!1691269 () Bool)

(assert (=> b!4135878 (=> res!1691269 e!2566139)))

(assert (=> b!4135878 (= res!1691269 (= (h!50234 rules!3756) r!4008))))

(declare-fun b!4135879 () Bool)

(assert (=> b!4135879 (= e!2566139 (contains!9028 (t!341927 rules!3756) r!4008))))

(assert (= (and d!1224893 res!1691268) b!4135878))

(assert (= (and b!4135878 (not res!1691269)) b!4135879))

(assert (=> d!1224893 m!4732479))

(declare-fun m!4732561 () Bool)

(assert (=> d!1224893 m!4732561))

(declare-fun m!4732563 () Bool)

(assert (=> b!4135879 m!4732563))

(assert (=> b!4135458 d!1224893))

(declare-fun d!1224895 () Bool)

(declare-fun e!2566149 () Bool)

(assert (=> d!1224895 e!2566149))

(declare-fun res!1691279 () Bool)

(assert (=> d!1224895 (=> res!1691279 e!2566149)))

(declare-fun lt!1474578 () Bool)

(assert (=> d!1224895 (= res!1691279 (not lt!1474578))))

(declare-fun e!2566148 () Bool)

(assert (=> d!1224895 (= lt!1474578 e!2566148)))

(declare-fun res!1691281 () Bool)

(assert (=> d!1224895 (=> res!1691281 e!2566148)))

(assert (=> d!1224895 (= res!1691281 ((_ is Nil!44812) p!2912))))

(assert (=> d!1224895 (= (isPrefix!4283 p!2912 input!3238) lt!1474578)))

(declare-fun b!4135889 () Bool)

(declare-fun res!1691280 () Bool)

(declare-fun e!2566147 () Bool)

(assert (=> b!4135889 (=> (not res!1691280) (not e!2566147))))

(assert (=> b!4135889 (= res!1691280 (= (head!8722 p!2912) (head!8722 input!3238)))))

(declare-fun b!4135890 () Bool)

(assert (=> b!4135890 (= e!2566147 (isPrefix!4283 (tail!6507 p!2912) (tail!6507 input!3238)))))

(declare-fun b!4135888 () Bool)

(assert (=> b!4135888 (= e!2566148 e!2566147)))

(declare-fun res!1691278 () Bool)

(assert (=> b!4135888 (=> (not res!1691278) (not e!2566147))))

(assert (=> b!4135888 (= res!1691278 (not ((_ is Nil!44812) input!3238)))))

(declare-fun b!4135891 () Bool)

(assert (=> b!4135891 (= e!2566149 (>= (size!33171 input!3238) (size!33171 p!2912)))))

(assert (= (and d!1224895 (not res!1691281)) b!4135888))

(assert (= (and b!4135888 res!1691278) b!4135889))

(assert (= (and b!4135889 res!1691280) b!4135890))

(assert (= (and d!1224895 (not res!1691279)) b!4135891))

(assert (=> b!4135889 m!4732489))

(declare-fun m!4732565 () Bool)

(assert (=> b!4135889 m!4732565))

(assert (=> b!4135890 m!4732485))

(assert (=> b!4135890 m!4732221))

(assert (=> b!4135890 m!4732485))

(assert (=> b!4135890 m!4732221))

(declare-fun m!4732567 () Bool)

(assert (=> b!4135890 m!4732567))

(assert (=> b!4135891 m!4732219))

(assert (=> b!4135891 m!4732123))

(assert (=> b!4135447 d!1224895))

(declare-fun b!4135896 () Bool)

(declare-fun e!2566152 () Bool)

(declare-fun tp!1260660 () Bool)

(assert (=> b!4135896 (= e!2566152 (and tp_is_empty!21429 tp!1260660))))

(assert (=> b!4135448 (= tp!1260601 e!2566152)))

(assert (= (and b!4135448 ((_ is Cons!44812) (t!341925 input!3238))) b!4135896))

(declare-fun b!4135910 () Bool)

(declare-fun e!2566155 () Bool)

(declare-fun tp!1260673 () Bool)

(declare-fun tp!1260674 () Bool)

(assert (=> b!4135910 (= e!2566155 (and tp!1260673 tp!1260674))))

(declare-fun b!4135908 () Bool)

(declare-fun tp!1260675 () Bool)

(declare-fun tp!1260672 () Bool)

(assert (=> b!4135908 (= e!2566155 (and tp!1260675 tp!1260672))))

(declare-fun b!4135909 () Bool)

(declare-fun tp!1260671 () Bool)

(assert (=> b!4135909 (= e!2566155 tp!1260671)))

(assert (=> b!4135464 (= tp!1260607 e!2566155)))

(declare-fun b!4135907 () Bool)

(assert (=> b!4135907 (= e!2566155 tp_is_empty!21429)))

(assert (= (and b!4135464 ((_ is ElementMatch!12253) (regex!7348 (h!50234 rules!3756)))) b!4135907))

(assert (= (and b!4135464 ((_ is Concat!19832) (regex!7348 (h!50234 rules!3756)))) b!4135908))

(assert (= (and b!4135464 ((_ is Star!12253) (regex!7348 (h!50234 rules!3756)))) b!4135909))

(assert (= (and b!4135464 ((_ is Union!12253) (regex!7348 (h!50234 rules!3756)))) b!4135910))

(declare-fun b!4135921 () Bool)

(declare-fun b_free!117547 () Bool)

(declare-fun b_next!118251 () Bool)

(assert (=> b!4135921 (= b_free!117547 (not b_next!118251))))

(declare-fun t!341972 () Bool)

(declare-fun tb!248253 () Bool)

(assert (=> (and b!4135921 (= (toValue!10012 (transformation!7348 (h!50234 (t!341927 rules!3756)))) (toValue!10012 (transformation!7348 r!4008))) t!341972) tb!248253))

(declare-fun result!301810 () Bool)

(assert (= result!301810 result!301764))

(assert (=> d!1224817 t!341972))

(assert (=> d!1224823 t!341972))

(declare-fun tp!1260687 () Bool)

(declare-fun b_and!320889 () Bool)

(assert (=> b!4135921 (= tp!1260687 (and (=> t!341972 result!301810) b_and!320889))))

(declare-fun b_free!117549 () Bool)

(declare-fun b_next!118253 () Bool)

(assert (=> b!4135921 (= b_free!117549 (not b_next!118253))))

(declare-fun t!341974 () Bool)

(declare-fun tb!248255 () Bool)

(assert (=> (and b!4135921 (= (toChars!9871 (transformation!7348 (h!50234 (t!341927 rules!3756)))) (toChars!9871 (transformation!7348 r!4008))) t!341974) tb!248255))

(declare-fun result!301812 () Bool)

(assert (= result!301812 result!301772))

(assert (=> d!1224823 t!341974))

(declare-fun tb!248257 () Bool)

(declare-fun t!341976 () Bool)

(assert (=> (and b!4135921 (= (toChars!9871 (transformation!7348 (h!50234 (t!341927 rules!3756)))) (toChars!9871 (transformation!7348 (rule!10444 (_1!24739 (get!14617 lt!1474430)))))) t!341976) tb!248257))

(declare-fun result!301814 () Bool)

(assert (= result!301814 result!301798))

(assert (=> d!1224885 t!341976))

(declare-fun tp!1260685 () Bool)

(declare-fun b_and!320891 () Bool)

(assert (=> b!4135921 (= tp!1260685 (and (=> t!341974 result!301812) (=> t!341976 result!301814) b_and!320891))))

(declare-fun e!2566166 () Bool)

(assert (=> b!4135921 (= e!2566166 (and tp!1260687 tp!1260685))))

(declare-fun tp!1260684 () Bool)

(declare-fun e!2566167 () Bool)

(declare-fun b!4135920 () Bool)

(assert (=> b!4135920 (= e!2566167 (and tp!1260684 (inv!59417 (tag!8208 (h!50234 (t!341927 rules!3756)))) (inv!59419 (transformation!7348 (h!50234 (t!341927 rules!3756)))) e!2566166))))

(declare-fun b!4135919 () Bool)

(declare-fun e!2566164 () Bool)

(declare-fun tp!1260686 () Bool)

(assert (=> b!4135919 (= e!2566164 (and e!2566167 tp!1260686))))

(assert (=> b!4135459 (= tp!1260608 e!2566164)))

(assert (= b!4135920 b!4135921))

(assert (= b!4135919 b!4135920))

(assert (= (and b!4135459 ((_ is Cons!44814) (t!341927 rules!3756))) b!4135919))

(declare-fun m!4732569 () Bool)

(assert (=> b!4135920 m!4732569))

(declare-fun m!4732571 () Bool)

(assert (=> b!4135920 m!4732571))

(declare-fun b!4135922 () Bool)

(declare-fun e!2566168 () Bool)

(declare-fun tp!1260688 () Bool)

(assert (=> b!4135922 (= e!2566168 (and tp_is_empty!21429 tp!1260688))))

(assert (=> b!4135446 (= tp!1260606 e!2566168)))

(assert (= (and b!4135446 ((_ is Cons!44812) (t!341925 p!2912))) b!4135922))

(declare-fun b!4135926 () Bool)

(declare-fun e!2566169 () Bool)

(declare-fun tp!1260691 () Bool)

(declare-fun tp!1260692 () Bool)

(assert (=> b!4135926 (= e!2566169 (and tp!1260691 tp!1260692))))

(declare-fun b!4135924 () Bool)

(declare-fun tp!1260693 () Bool)

(declare-fun tp!1260690 () Bool)

(assert (=> b!4135924 (= e!2566169 (and tp!1260693 tp!1260690))))

(declare-fun b!4135925 () Bool)

(declare-fun tp!1260689 () Bool)

(assert (=> b!4135925 (= e!2566169 tp!1260689)))

(assert (=> b!4135452 (= tp!1260598 e!2566169)))

(declare-fun b!4135923 () Bool)

(assert (=> b!4135923 (= e!2566169 tp_is_empty!21429)))

(assert (= (and b!4135452 ((_ is ElementMatch!12253) (regex!7348 r!4008))) b!4135923))

(assert (= (and b!4135452 ((_ is Concat!19832) (regex!7348 r!4008))) b!4135924))

(assert (= (and b!4135452 ((_ is Star!12253) (regex!7348 r!4008))) b!4135925))

(assert (= (and b!4135452 ((_ is Union!12253) (regex!7348 r!4008))) b!4135926))

(declare-fun b!4135930 () Bool)

(declare-fun e!2566170 () Bool)

(declare-fun tp!1260696 () Bool)

(declare-fun tp!1260697 () Bool)

(assert (=> b!4135930 (= e!2566170 (and tp!1260696 tp!1260697))))

(declare-fun b!4135928 () Bool)

(declare-fun tp!1260698 () Bool)

(declare-fun tp!1260695 () Bool)

(assert (=> b!4135928 (= e!2566170 (and tp!1260698 tp!1260695))))

(declare-fun b!4135929 () Bool)

(declare-fun tp!1260694 () Bool)

(assert (=> b!4135929 (= e!2566170 tp!1260694)))

(assert (=> b!4135457 (= tp!1260599 e!2566170)))

(declare-fun b!4135927 () Bool)

(assert (=> b!4135927 (= e!2566170 tp_is_empty!21429)))

(assert (= (and b!4135457 ((_ is ElementMatch!12253) (regex!7348 rBis!149))) b!4135927))

(assert (= (and b!4135457 ((_ is Concat!19832) (regex!7348 rBis!149))) b!4135928))

(assert (= (and b!4135457 ((_ is Star!12253) (regex!7348 rBis!149))) b!4135929))

(assert (= (and b!4135457 ((_ is Union!12253) (regex!7348 rBis!149))) b!4135930))

(declare-fun b_lambda!121537 () Bool)

(assert (= b_lambda!121525 (or (and b!4135468 b_free!117531 (= (toValue!10012 (transformation!7348 rBis!149)) (toValue!10012 (transformation!7348 r!4008)))) (and b!4135462 b_free!117535) (and b!4135460 b_free!117539 (= (toValue!10012 (transformation!7348 (h!50234 rules!3756))) (toValue!10012 (transformation!7348 r!4008)))) (and b!4135921 b_free!117547 (= (toValue!10012 (transformation!7348 (h!50234 (t!341927 rules!3756)))) (toValue!10012 (transformation!7348 r!4008)))) b_lambda!121537)))

(declare-fun b_lambda!121539 () Bool)

(assert (= b_lambda!121519 (or (and b!4135468 b_free!117531 (= (toValue!10012 (transformation!7348 rBis!149)) (toValue!10012 (transformation!7348 r!4008)))) (and b!4135462 b_free!117535) (and b!4135460 b_free!117539 (= (toValue!10012 (transformation!7348 (h!50234 rules!3756))) (toValue!10012 (transformation!7348 r!4008)))) (and b!4135921 b_free!117547 (= (toValue!10012 (transformation!7348 (h!50234 (t!341927 rules!3756)))) (toValue!10012 (transformation!7348 r!4008)))) b_lambda!121539)))

(declare-fun b_lambda!121541 () Bool)

(assert (= b_lambda!121521 (or (and b!4135468 b_free!117533 (= (toChars!9871 (transformation!7348 rBis!149)) (toChars!9871 (transformation!7348 r!4008)))) (and b!4135462 b_free!117537) (and b!4135460 b_free!117541 (= (toChars!9871 (transformation!7348 (h!50234 rules!3756))) (toChars!9871 (transformation!7348 r!4008)))) (and b!4135921 b_free!117549 (= (toChars!9871 (transformation!7348 (h!50234 (t!341927 rules!3756)))) (toChars!9871 (transformation!7348 r!4008)))) b_lambda!121541)))

(check-sat (not bm!290417) (not d!1224823) (not b!4135928) (not d!1224879) (not d!1224861) (not d!1224865) (not b!4135780) (not d!1224877) (not b!4135845) (not d!1224773) (not b!4135732) (not b!4135830) (not b!4135922) (not d!1224855) (not b!4135643) (not tb!248247) (not d!1224857) (not d!1224883) (not b!4135791) (not tb!248229) (not b!4135776) (not b!4135638) b_and!320865 (not b!4135872) (not d!1224847) (not b!4135801) (not b!4135868) (not b!4135877) (not b!4135919) (not b!4135869) (not d!1224775) tp_is_empty!21429 (not b!4135644) (not b_next!118235) (not b!4135641) (not b!4135926) (not b!4135870) (not d!1224893) (not b_next!118239) (not b!4135642) (not b_next!118237) (not d!1224885) (not d!1224845) (not b!4135835) (not b!4135874) (not d!1224863) (not d!1224831) (not b_next!118241) (not b!4135909) (not b!4135890) (not b!4135924) (not b!4135645) (not b!4135908) (not b!4135929) (not b!4135925) (not b_lambda!121539) (not b!4135637) (not d!1224859) (not b!4135930) (not d!1224881) b_and!320891 (not b!4135763) b_and!320883 (not b_next!118251) (not bm!290423) (not b!4135871) (not b!4135840) (not b!4135709) (not b!4135876) (not d!1224843) (not b!4135896) (not b!4135833) (not d!1224891) (not b!4135889) (not b_lambda!121537) (not tb!248223) (not b!4135765) (not b!4135639) (not b!4135762) (not b!4135542) (not d!1224867) (not b!4135794) (not b!4135891) (not b!4135843) (not b!4135867) (not d!1224783) (not b!4135792) (not b!4135875) (not b_lambda!121541) (not b!4135759) (not b!4135837) b_and!320887 (not b!4135920) (not d!1224849) (not d!1224871) (not d!1224853) (not b!4135848) (not b!4135879) (not b_next!118253) (not b_next!118245) (not b!4135910) b_and!320889 (not b!4135518) (not d!1224839) b_and!320885 b_and!320863 (not b_next!118243) (not b_lambda!121535) b_and!320861)
(check-sat b_and!320865 (not b_next!118235) (not b_next!118241) b_and!320887 b_and!320889 b_and!320861 (not b_next!118239) (not b_next!118237) b_and!320891 b_and!320883 (not b_next!118251) (not b_next!118253) (not b_next!118245) b_and!320885 b_and!320863 (not b_next!118243))
