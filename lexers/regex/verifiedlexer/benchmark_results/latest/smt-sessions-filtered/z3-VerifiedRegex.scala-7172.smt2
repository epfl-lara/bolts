; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381496 () Bool)

(assert start!381496)

(declare-fun b!4045614 () Bool)

(declare-fun b_free!112633 () Bool)

(declare-fun b_next!113337 () Bool)

(assert (=> b!4045614 (= b_free!112633 (not b_next!113337))))

(declare-fun tp!1227697 () Bool)

(declare-fun b_and!311091 () Bool)

(assert (=> b!4045614 (= tp!1227697 b_and!311091)))

(declare-fun b_free!112635 () Bool)

(declare-fun b_next!113339 () Bool)

(assert (=> b!4045614 (= b_free!112635 (not b_next!113339))))

(declare-fun tp!1227696 () Bool)

(declare-fun b_and!311093 () Bool)

(assert (=> b!4045614 (= tp!1227696 b_and!311093)))

(declare-fun b!4045615 () Bool)

(declare-fun b_free!112637 () Bool)

(declare-fun b_next!113341 () Bool)

(assert (=> b!4045615 (= b_free!112637 (not b_next!113341))))

(declare-fun tp!1227693 () Bool)

(declare-fun b_and!311095 () Bool)

(assert (=> b!4045615 (= tp!1227693 b_and!311095)))

(declare-fun b_free!112639 () Bool)

(declare-fun b_next!113343 () Bool)

(assert (=> b!4045615 (= b_free!112639 (not b_next!113343))))

(declare-fun tp!1227699 () Bool)

(declare-fun b_and!311097 () Bool)

(assert (=> b!4045615 (= tp!1227699 b_and!311097)))

(declare-fun b!4045598 () Bool)

(declare-fun res!1648042 () Bool)

(declare-fun e!2510231 () Bool)

(assert (=> b!4045598 (=> res!1648042 e!2510231)))

(declare-datatypes ((C!23860 0))(
  ( (C!23861 (val!14024 Int)) )
))
(declare-datatypes ((List!43399 0))(
  ( (Nil!43275) (Cons!43275 (h!48695 C!23860) (t!335496 List!43399)) )
))
(declare-fun lt!1440984 () List!43399)

(declare-fun lt!1440987 () List!43399)

(declare-fun isPrefix!4019 (List!43399 List!43399) Bool)

(assert (=> b!4045598 (= res!1648042 (not (isPrefix!4019 lt!1440984 lt!1440987)))))

(declare-fun b!4045599 () Bool)

(declare-fun res!1648059 () Bool)

(declare-fun e!2510228 () Bool)

(assert (=> b!4045599 (=> (not res!1648059) (not e!2510228))))

(declare-datatypes ((IArray!26291 0))(
  ( (IArray!26292 (innerList!13203 List!43399)) )
))
(declare-datatypes ((Conc!13143 0))(
  ( (Node!13143 (left!32591 Conc!13143) (right!32921 Conc!13143) (csize!26516 Int) (cheight!13354 Int)) (Leaf!20316 (xs!16449 IArray!26291) (csize!26517 Int)) (Empty!13143) )
))
(declare-datatypes ((BalanceConc!25880 0))(
  ( (BalanceConc!25881 (c!698884 Conc!13143)) )
))
(declare-datatypes ((List!43400 0))(
  ( (Nil!43276) (Cons!43276 (h!48696 (_ BitVec 16)) (t!335497 List!43400)) )
))
(declare-datatypes ((TokenValue!7162 0))(
  ( (FloatLiteralValue!14324 (text!50579 List!43400)) (TokenValueExt!7161 (__x!26541 Int)) (Broken!35810 (value!218170 List!43400)) (Object!7285) (End!7162) (Def!7162) (Underscore!7162) (Match!7162) (Else!7162) (Error!7162) (Case!7162) (If!7162) (Extends!7162) (Abstract!7162) (Class!7162) (Val!7162) (DelimiterValue!14324 (del!7222 List!43400)) (KeywordValue!7168 (value!218171 List!43400)) (CommentValue!14324 (value!218172 List!43400)) (WhitespaceValue!14324 (value!218173 List!43400)) (IndentationValue!7162 (value!218174 List!43400)) (String!49527) (Int32!7162) (Broken!35811 (value!218175 List!43400)) (Boolean!7163) (Unit!62520) (OperatorValue!7165 (op!7222 List!43400)) (IdentifierValue!14324 (value!218176 List!43400)) (IdentifierValue!14325 (value!218177 List!43400)) (WhitespaceValue!14325 (value!218178 List!43400)) (True!14324) (False!14324) (Broken!35812 (value!218179 List!43400)) (Broken!35813 (value!218180 List!43400)) (True!14325) (RightBrace!7162) (RightBracket!7162) (Colon!7162) (Null!7162) (Comma!7162) (LeftBracket!7162) (False!14325) (LeftBrace!7162) (ImaginaryLiteralValue!7162 (text!50580 List!43400)) (StringLiteralValue!21486 (value!218181 List!43400)) (EOFValue!7162 (value!218182 List!43400)) (IdentValue!7162 (value!218183 List!43400)) (DelimiterValue!14325 (value!218184 List!43400)) (DedentValue!7162 (value!218185 List!43400)) (NewLineValue!7162 (value!218186 List!43400)) (IntegerValue!21486 (value!218187 (_ BitVec 32)) (text!50581 List!43400)) (IntegerValue!21487 (value!218188 Int) (text!50582 List!43400)) (Times!7162) (Or!7162) (Equal!7162) (Minus!7162) (Broken!35814 (value!218189 List!43400)) (And!7162) (Div!7162) (LessEqual!7162) (Mod!7162) (Concat!18999) (Not!7162) (Plus!7162) (SpaceValue!7162 (value!218190 List!43400)) (IntegerValue!21488 (value!218191 Int) (text!50583 List!43400)) (StringLiteralValue!21487 (text!50584 List!43400)) (FloatLiteralValue!14325 (text!50585 List!43400)) (BytesLiteralValue!7162 (value!218192 List!43400)) (CommentValue!14325 (value!218193 List!43400)) (StringLiteralValue!21488 (value!218194 List!43400)) (ErrorTokenValue!7162 (msg!7223 List!43400)) )
))
(declare-datatypes ((Regex!11837 0))(
  ( (ElementMatch!11837 (c!698885 C!23860)) (Concat!19000 (regOne!24186 Regex!11837) (regTwo!24186 Regex!11837)) (EmptyExpr!11837) (Star!11837 (reg!12166 Regex!11837)) (EmptyLang!11837) (Union!11837 (regOne!24187 Regex!11837) (regTwo!24187 Regex!11837)) )
))
(declare-datatypes ((String!49528 0))(
  ( (String!49529 (value!218195 String)) )
))
(declare-datatypes ((TokenValueInjection!13752 0))(
  ( (TokenValueInjection!13753 (toValue!9480 Int) (toChars!9339 Int)) )
))
(declare-datatypes ((Rule!13664 0))(
  ( (Rule!13665 (regex!6932 Regex!11837) (tag!7792 String!49528) (isSeparator!6932 Bool) (transformation!6932 TokenValueInjection!13752)) )
))
(declare-datatypes ((List!43401 0))(
  ( (Nil!43277) (Cons!43277 (h!48697 Rule!13664) (t!335498 List!43401)) )
))
(declare-fun rules!2999 () List!43401)

(declare-fun isEmpty!25825 (List!43401) Bool)

(assert (=> b!4045599 (= res!1648059 (not (isEmpty!25825 rules!2999)))))

(declare-fun b!4045601 () Bool)

(declare-fun res!1648047 () Bool)

(declare-fun e!2510219 () Bool)

(assert (=> b!4045601 (=> (not res!1648047) (not e!2510219))))

(declare-datatypes ((Token!13002 0))(
  ( (Token!13003 (value!218196 TokenValue!7162) (rule!10008 Rule!13664) (size!32353 Int) (originalCharacters!7532 List!43399)) )
))
(declare-fun token!484 () Token!13002)

(declare-fun size!32354 (List!43399) Int)

(assert (=> b!4045601 (= res!1648047 (= (size!32353 token!484) (size!32354 (originalCharacters!7532 token!484))))))

(declare-fun b!4045602 () Bool)

(declare-fun e!2510252 () Bool)

(declare-fun e!2510229 () Bool)

(assert (=> b!4045602 (= e!2510252 e!2510229)))

(declare-fun res!1648030 () Bool)

(assert (=> b!4045602 (=> (not res!1648030) (not e!2510229))))

(declare-fun lt!1440948 () List!43399)

(assert (=> b!4045602 (= res!1648030 (= lt!1440948 lt!1440987))))

(declare-fun prefix!494 () List!43399)

(declare-fun newSuffix!27 () List!43399)

(declare-fun ++!11334 (List!43399 List!43399) List!43399)

(assert (=> b!4045602 (= lt!1440987 (++!11334 prefix!494 newSuffix!27))))

(declare-fun lt!1440935 () List!43399)

(declare-fun newSuffixResult!27 () List!43399)

(assert (=> b!4045602 (= lt!1440948 (++!11334 lt!1440935 newSuffixResult!27))))

(declare-fun b!4045603 () Bool)

(declare-fun e!2510226 () Bool)

(declare-fun e!2510235 () Bool)

(assert (=> b!4045603 (= e!2510226 e!2510235)))

(declare-fun res!1648057 () Bool)

(assert (=> b!4045603 (=> res!1648057 e!2510235)))

(declare-fun lt!1440961 () List!43399)

(assert (=> b!4045603 (= res!1648057 (not (isPrefix!4019 lt!1440935 lt!1440961)))))

(assert (=> b!4045603 (isPrefix!4019 prefix!494 lt!1440961)))

(declare-datatypes ((Unit!62521 0))(
  ( (Unit!62522) )
))
(declare-fun lt!1440937 () Unit!62521)

(declare-fun suffix!1299 () List!43399)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2854 (List!43399 List!43399) Unit!62521)

(assert (=> b!4045603 (= lt!1440937 (lemmaConcatTwoListThenFirstIsPrefix!2854 prefix!494 suffix!1299))))

(declare-fun lt!1440976 () List!43399)

(assert (=> b!4045603 (isPrefix!4019 lt!1440935 lt!1440976)))

(declare-fun lt!1440957 () Unit!62521)

(declare-fun suffixResult!105 () List!43399)

(assert (=> b!4045603 (= lt!1440957 (lemmaConcatTwoListThenFirstIsPrefix!2854 lt!1440935 suffixResult!105))))

(declare-fun b!4045604 () Bool)

(declare-fun e!2510249 () Bool)

(assert (=> b!4045604 (= e!2510231 e!2510249)))

(declare-fun res!1648046 () Bool)

(assert (=> b!4045604 (=> res!1648046 e!2510249)))

(declare-datatypes ((tuple2!42350 0))(
  ( (tuple2!42351 (_1!24309 Token!13002) (_2!24309 List!43399)) )
))
(declare-datatypes ((Option!9346 0))(
  ( (None!9345) (Some!9345 (v!39749 tuple2!42350)) )
))
(declare-fun lt!1440938 () Option!9346)

(declare-fun lt!1440963 () Option!9346)

(assert (=> b!4045604 (= res!1648046 (not (= lt!1440938 lt!1440963)))))

(declare-fun lt!1440956 () Token!13002)

(declare-fun lt!1440979 () List!43399)

(assert (=> b!4045604 (= lt!1440963 (Some!9345 (tuple2!42351 lt!1440956 lt!1440979)))))

(declare-fun b!4045605 () Bool)

(declare-fun e!2510241 () Bool)

(declare-fun e!2510250 () Bool)

(assert (=> b!4045605 (= e!2510241 e!2510250)))

(declare-fun res!1648055 () Bool)

(assert (=> b!4045605 (=> res!1648055 e!2510250)))

(declare-fun lt!1440949 () List!43399)

(assert (=> b!4045605 (= res!1648055 (not (= lt!1440949 lt!1440987)))))

(declare-fun lt!1440964 () List!43399)

(assert (=> b!4045605 (= lt!1440949 (++!11334 lt!1440984 lt!1440964))))

(declare-fun getSuffix!2436 (List!43399 List!43399) List!43399)

(assert (=> b!4045605 (= lt!1440964 (getSuffix!2436 lt!1440987 lt!1440984))))

(declare-fun b!4045606 () Bool)

(declare-fun res!1648040 () Bool)

(assert (=> b!4045606 (=> res!1648040 e!2510241)))

(declare-fun lt!1440954 () List!43399)

(assert (=> b!4045606 (= res!1648040 (not (= lt!1440954 lt!1440987)))))

(declare-fun b!4045607 () Bool)

(declare-fun e!2510225 () Bool)

(declare-fun tp_is_empty!20645 () Bool)

(declare-fun tp!1227690 () Bool)

(assert (=> b!4045607 (= e!2510225 (and tp_is_empty!20645 tp!1227690))))

(declare-fun b!4045608 () Bool)

(declare-fun res!1648035 () Bool)

(assert (=> b!4045608 (=> (not res!1648035) (not e!2510219))))

(declare-fun lt!1440959 () TokenValue!7162)

(assert (=> b!4045608 (= res!1648035 (= (value!218196 token!484) lt!1440959))))

(declare-fun b!4045609 () Bool)

(declare-fun e!2510238 () Bool)

(declare-fun e!2510234 () Bool)

(assert (=> b!4045609 (= e!2510238 e!2510234)))

(declare-fun res!1648056 () Bool)

(assert (=> b!4045609 (=> res!1648056 e!2510234)))

(declare-fun matchR!5790 (Regex!11837 List!43399) Bool)

(assert (=> b!4045609 (= res!1648056 (not (matchR!5790 (regex!6932 (rule!10008 token!484)) lt!1440935)))))

(assert (=> b!4045609 (isPrefix!4019 lt!1440935 lt!1440987)))

(declare-fun lt!1440953 () Unit!62521)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!812 (List!43399 List!43399 List!43399) Unit!62521)

(assert (=> b!4045609 (= lt!1440953 (lemmaPrefixStaysPrefixWhenAddingToSuffix!812 lt!1440935 prefix!494 newSuffix!27))))

(declare-fun lt!1440958 () Unit!62521)

(assert (=> b!4045609 (= lt!1440958 (lemmaPrefixStaysPrefixWhenAddingToSuffix!812 lt!1440935 prefix!494 suffix!1299))))

(declare-fun b!4045610 () Bool)

(declare-fun e!2510224 () Bool)

(assert (=> b!4045610 (= e!2510235 e!2510224)))

(declare-fun res!1648044 () Bool)

(assert (=> b!4045610 (=> res!1648044 e!2510224)))

(declare-fun lt!1440966 () List!43399)

(assert (=> b!4045610 (= res!1648044 (not (= lt!1440966 prefix!494)))))

(declare-fun lt!1440936 () List!43399)

(assert (=> b!4045610 (= lt!1440966 (++!11334 lt!1440935 lt!1440936))))

(assert (=> b!4045610 (= lt!1440936 (getSuffix!2436 prefix!494 lt!1440935))))

(assert (=> b!4045610 (isPrefix!4019 lt!1440935 prefix!494)))

(declare-fun lt!1440982 () Unit!62521)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!583 (List!43399 List!43399 List!43399) Unit!62521)

(assert (=> b!4045610 (= lt!1440982 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!583 prefix!494 lt!1440935 lt!1440961))))

(declare-fun b!4045611 () Bool)

(declare-fun e!2510244 () Bool)

(assert (=> b!4045611 (= e!2510244 e!2510241)))

(declare-fun res!1648037 () Bool)

(assert (=> b!4045611 (=> res!1648037 e!2510241)))

(assert (=> b!4045611 (= res!1648037 (not (isPrefix!4019 lt!1440984 lt!1440961)))))

(declare-fun lt!1440933 () List!43399)

(assert (=> b!4045611 (isPrefix!4019 lt!1440984 lt!1440933)))

(declare-fun lt!1440952 () Unit!62521)

(declare-fun lt!1440960 () List!43399)

(assert (=> b!4045611 (= lt!1440952 (lemmaPrefixStaysPrefixWhenAddingToSuffix!812 lt!1440984 lt!1440987 lt!1440960))))

(declare-fun b!4045612 () Bool)

(declare-fun e!2510233 () Bool)

(declare-fun e!2510237 () Bool)

(assert (=> b!4045612 (= e!2510233 e!2510237)))

(declare-fun res!1648045 () Bool)

(assert (=> b!4045612 (=> res!1648045 e!2510237)))

(declare-fun lt!1440939 () Option!9346)

(declare-fun lt!1440944 () Option!9346)

(assert (=> b!4045612 (= res!1648045 (not (= lt!1440939 (Some!9345 (v!39749 lt!1440944)))))))

(assert (=> b!4045612 (isPrefix!4019 lt!1440984 (++!11334 lt!1440984 newSuffixResult!27))))

(declare-fun lt!1440974 () Unit!62521)

(assert (=> b!4045612 (= lt!1440974 (lemmaConcatTwoListThenFirstIsPrefix!2854 lt!1440984 newSuffixResult!27))))

(assert (=> b!4045612 (isPrefix!4019 lt!1440984 lt!1440954)))

(assert (=> b!4045612 (= lt!1440954 (++!11334 lt!1440984 (_2!24309 (v!39749 lt!1440944))))))

(declare-fun lt!1440965 () Unit!62521)

(assert (=> b!4045612 (= lt!1440965 (lemmaConcatTwoListThenFirstIsPrefix!2854 lt!1440984 (_2!24309 (v!39749 lt!1440944))))))

(declare-fun lt!1440967 () Int)

(declare-fun lt!1440991 () TokenValue!7162)

(assert (=> b!4045612 (= lt!1440939 (Some!9345 (tuple2!42351 (Token!13003 lt!1440991 (rule!10008 (_1!24309 (v!39749 lt!1440944))) lt!1440967 lt!1440984) (_2!24309 (v!39749 lt!1440944)))))))

(declare-datatypes ((LexerInterface!6521 0))(
  ( (LexerInterfaceExt!6518 (__x!26542 Int)) (Lexer!6519) )
))
(declare-fun thiss!21717 () LexerInterface!6521)

(declare-fun maxPrefixOneRule!2831 (LexerInterface!6521 Rule!13664 List!43399) Option!9346)

(assert (=> b!4045612 (= lt!1440939 (maxPrefixOneRule!2831 thiss!21717 (rule!10008 (_1!24309 (v!39749 lt!1440944))) lt!1440987))))

(assert (=> b!4045612 (= lt!1440967 (size!32354 lt!1440984))))

(declare-fun apply!10121 (TokenValueInjection!13752 BalanceConc!25880) TokenValue!7162)

(declare-fun seqFromList!5149 (List!43399) BalanceConc!25880)

(assert (=> b!4045612 (= lt!1440991 (apply!10121 (transformation!6932 (rule!10008 (_1!24309 (v!39749 lt!1440944)))) (seqFromList!5149 lt!1440984)))))

(declare-fun lt!1440942 () Unit!62521)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1637 (LexerInterface!6521 List!43401 List!43399 List!43399 List!43399 Rule!13664) Unit!62521)

(assert (=> b!4045612 (= lt!1440942 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1637 thiss!21717 rules!2999 lt!1440984 lt!1440987 (_2!24309 (v!39749 lt!1440944)) (rule!10008 (_1!24309 (v!39749 lt!1440944)))))))

(declare-fun list!16118 (BalanceConc!25880) List!43399)

(declare-fun charsOf!4748 (Token!13002) BalanceConc!25880)

(assert (=> b!4045612 (= lt!1440984 (list!16118 (charsOf!4748 (_1!24309 (v!39749 lt!1440944)))))))

(declare-fun lt!1440969 () Unit!62521)

(declare-fun lemmaInv!1141 (TokenValueInjection!13752) Unit!62521)

(assert (=> b!4045612 (= lt!1440969 (lemmaInv!1141 (transformation!6932 (rule!10008 (_1!24309 (v!39749 lt!1440944))))))))

(declare-fun ruleValid!2862 (LexerInterface!6521 Rule!13664) Bool)

(assert (=> b!4045612 (ruleValid!2862 thiss!21717 (rule!10008 (_1!24309 (v!39749 lt!1440944))))))

(declare-fun lt!1440990 () Unit!62521)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1932 (LexerInterface!6521 Rule!13664 List!43401) Unit!62521)

(assert (=> b!4045612 (= lt!1440990 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1932 thiss!21717 (rule!10008 (_1!24309 (v!39749 lt!1440944))) rules!2999))))

(declare-fun lt!1440951 () Unit!62521)

(declare-fun lemmaCharactersSize!1451 (Token!13002) Unit!62521)

(assert (=> b!4045612 (= lt!1440951 (lemmaCharactersSize!1451 token!484))))

(declare-fun lt!1440980 () Unit!62521)

(assert (=> b!4045612 (= lt!1440980 (lemmaCharactersSize!1451 (_1!24309 (v!39749 lt!1440944))))))

(declare-fun b!4045613 () Bool)

(assert (=> b!4045613 (= e!2510228 e!2510252)))

(declare-fun res!1648031 () Bool)

(assert (=> b!4045613 (=> (not res!1648031) (not e!2510252))))

(declare-fun lt!1440945 () Int)

(declare-fun lt!1440968 () Int)

(assert (=> b!4045613 (= res!1648031 (>= lt!1440945 lt!1440968))))

(assert (=> b!4045613 (= lt!1440968 (size!32354 lt!1440935))))

(assert (=> b!4045613 (= lt!1440945 (size!32354 prefix!494))))

(assert (=> b!4045613 (= lt!1440935 (list!16118 (charsOf!4748 token!484)))))

(declare-fun e!2510232 () Bool)

(assert (=> b!4045614 (= e!2510232 (and tp!1227697 tp!1227696))))

(declare-fun e!2510236 () Bool)

(assert (=> b!4045615 (= e!2510236 (and tp!1227693 tp!1227699))))

(declare-fun b!4045616 () Bool)

(declare-fun e!2510243 () Bool)

(declare-fun tp!1227688 () Bool)

(assert (=> b!4045616 (= e!2510243 (and tp_is_empty!20645 tp!1227688))))

(declare-fun b!4045617 () Bool)

(declare-fun res!1648053 () Bool)

(assert (=> b!4045617 (=> (not res!1648053) (not e!2510228))))

(assert (=> b!4045617 (= res!1648053 (>= (size!32354 suffix!1299) (size!32354 newSuffix!27)))))

(declare-fun b!4045618 () Bool)

(declare-fun e!2510220 () Bool)

(declare-fun tp!1227692 () Bool)

(assert (=> b!4045618 (= e!2510220 (and tp_is_empty!20645 tp!1227692))))

(declare-fun b!4045600 () Bool)

(declare-fun e!2510221 () Bool)

(declare-fun tp!1227694 () Bool)

(declare-fun e!2510248 () Bool)

(declare-fun inv!21 (TokenValue!7162) Bool)

(assert (=> b!4045600 (= e!2510248 (and (inv!21 (value!218196 token!484)) e!2510221 tp!1227694))))

(declare-fun res!1648051 () Bool)

(assert (=> start!381496 (=> (not res!1648051) (not e!2510228))))

(get-info :version)

(assert (=> start!381496 (= res!1648051 ((_ is Lexer!6519) thiss!21717))))

(assert (=> start!381496 e!2510228))

(declare-fun e!2510245 () Bool)

(assert (=> start!381496 e!2510245))

(declare-fun inv!57843 (Token!13002) Bool)

(assert (=> start!381496 (and (inv!57843 token!484) e!2510248)))

(declare-fun e!2510247 () Bool)

(assert (=> start!381496 e!2510247))

(assert (=> start!381496 e!2510243))

(assert (=> start!381496 e!2510220))

(assert (=> start!381496 true))

(declare-fun e!2510240 () Bool)

(assert (=> start!381496 e!2510240))

(assert (=> start!381496 e!2510225))

(declare-fun b!4045619 () Bool)

(declare-fun res!1648049 () Bool)

(assert (=> b!4045619 (=> res!1648049 e!2510231)))

(declare-fun contains!8602 (List!43401 Rule!13664) Bool)

(assert (=> b!4045619 (= res!1648049 (not (contains!8602 rules!2999 (rule!10008 token!484))))))

(declare-fun b!4045620 () Bool)

(declare-fun e!2510251 () Bool)

(assert (=> b!4045620 (= e!2510229 e!2510251)))

(declare-fun res!1648038 () Bool)

(assert (=> b!4045620 (=> (not res!1648038) (not e!2510251))))

(declare-fun lt!1440946 () Option!9346)

(assert (=> b!4045620 (= res!1648038 (= lt!1440938 lt!1440946))))

(declare-fun lt!1440972 () tuple2!42350)

(assert (=> b!4045620 (= lt!1440946 (Some!9345 lt!1440972))))

(declare-fun maxPrefix!3819 (LexerInterface!6521 List!43401 List!43399) Option!9346)

(assert (=> b!4045620 (= lt!1440938 (maxPrefix!3819 thiss!21717 rules!2999 lt!1440961))))

(assert (=> b!4045620 (= lt!1440972 (tuple2!42351 token!484 suffixResult!105))))

(assert (=> b!4045620 (= lt!1440961 (++!11334 prefix!494 suffix!1299))))

(declare-fun b!4045621 () Bool)

(declare-fun e!2510246 () Bool)

(assert (=> b!4045621 (= e!2510246 e!2510233)))

(declare-fun res!1648034 () Bool)

(assert (=> b!4045621 (=> res!1648034 e!2510233)))

(assert (=> b!4045621 (= res!1648034 (not ((_ is Some!9345) lt!1440944)))))

(assert (=> b!4045621 (= lt!1440944 (maxPrefix!3819 thiss!21717 rules!2999 lt!1440987))))

(assert (=> b!4045621 (and (= suffixResult!105 lt!1440979) (= lt!1440972 (tuple2!42351 lt!1440956 lt!1440979)))))

(declare-fun lt!1440962 () Unit!62521)

(declare-fun lemmaSamePrefixThenSameSuffix!2180 (List!43399 List!43399 List!43399 List!43399 List!43399) Unit!62521)

(assert (=> b!4045621 (= lt!1440962 (lemmaSamePrefixThenSameSuffix!2180 lt!1440935 suffixResult!105 lt!1440935 lt!1440979 lt!1440961))))

(declare-fun lt!1440981 () List!43399)

(assert (=> b!4045621 (isPrefix!4019 lt!1440935 lt!1440981)))

(declare-fun lt!1440947 () Unit!62521)

(assert (=> b!4045621 (= lt!1440947 (lemmaConcatTwoListThenFirstIsPrefix!2854 lt!1440935 lt!1440979))))

(declare-fun b!4045622 () Bool)

(assert (=> b!4045622 (= e!2510251 (not e!2510226))))

(declare-fun res!1648041 () Bool)

(assert (=> b!4045622 (=> res!1648041 e!2510226)))

(assert (=> b!4045622 (= res!1648041 (not (= lt!1440976 lt!1440961)))))

(assert (=> b!4045622 (= lt!1440976 (++!11334 lt!1440935 suffixResult!105))))

(declare-fun lt!1440978 () Unit!62521)

(assert (=> b!4045622 (= lt!1440978 (lemmaInv!1141 (transformation!6932 (rule!10008 token!484))))))

(assert (=> b!4045622 (ruleValid!2862 thiss!21717 (rule!10008 token!484))))

(declare-fun lt!1440941 () Unit!62521)

(assert (=> b!4045622 (= lt!1440941 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1932 thiss!21717 (rule!10008 token!484) rules!2999))))

(declare-fun b!4045623 () Bool)

(declare-fun res!1648048 () Bool)

(assert (=> b!4045623 (=> (not res!1648048) (not e!2510228))))

(assert (=> b!4045623 (= res!1648048 (isPrefix!4019 newSuffix!27 suffix!1299))))

(declare-fun b!4045624 () Bool)

(declare-fun e!2510227 () Bool)

(declare-fun tp!1227689 () Bool)

(assert (=> b!4045624 (= e!2510240 (and e!2510227 tp!1227689))))

(declare-fun b!4045625 () Bool)

(declare-fun tp!1227698 () Bool)

(assert (=> b!4045625 (= e!2510245 (and tp_is_empty!20645 tp!1227698))))

(declare-fun b!4045626 () Bool)

(declare-fun e!2510223 () Bool)

(assert (=> b!4045626 (= e!2510237 e!2510223)))

(declare-fun res!1648033 () Bool)

(assert (=> b!4045626 (=> res!1648033 e!2510223)))

(declare-fun lt!1440971 () List!43399)

(assert (=> b!4045626 (= res!1648033 (not (= lt!1440971 suffix!1299)))))

(assert (=> b!4045626 (= lt!1440971 (++!11334 newSuffix!27 lt!1440960))))

(assert (=> b!4045626 (= lt!1440960 (getSuffix!2436 suffix!1299 newSuffix!27))))

(declare-fun b!4045627 () Bool)

(declare-fun tp!1227700 () Bool)

(assert (=> b!4045627 (= e!2510247 (and tp_is_empty!20645 tp!1227700))))

(declare-fun b!4045628 () Bool)

(declare-fun e!2510242 () Bool)

(assert (=> b!4045628 (= e!2510224 e!2510242)))

(declare-fun res!1648043 () Bool)

(assert (=> b!4045628 (=> res!1648043 e!2510242)))

(declare-fun lt!1440983 () List!43399)

(declare-fun lt!1440943 () List!43399)

(assert (=> b!4045628 (= res!1648043 (or (not (= lt!1440961 lt!1440943)) (not (= lt!1440961 lt!1440983))))))

(assert (=> b!4045628 (= lt!1440943 lt!1440983)))

(declare-fun lt!1440977 () List!43399)

(assert (=> b!4045628 (= lt!1440983 (++!11334 lt!1440935 lt!1440977))))

(assert (=> b!4045628 (= lt!1440943 (++!11334 lt!1440966 suffix!1299))))

(assert (=> b!4045628 (= lt!1440977 (++!11334 lt!1440936 suffix!1299))))

(declare-fun lt!1440985 () Unit!62521)

(declare-fun lemmaConcatAssociativity!2636 (List!43399 List!43399 List!43399) Unit!62521)

(assert (=> b!4045628 (= lt!1440985 (lemmaConcatAssociativity!2636 lt!1440935 lt!1440936 suffix!1299))))

(declare-fun b!4045629 () Bool)

(assert (=> b!4045629 (= e!2510234 e!2510246)))

(declare-fun res!1648052 () Bool)

(assert (=> b!4045629 (=> res!1648052 e!2510246)))

(assert (=> b!4045629 (= res!1648052 (not (= lt!1440981 lt!1440961)))))

(assert (=> b!4045629 (= lt!1440981 (++!11334 lt!1440935 lt!1440979))))

(assert (=> b!4045629 (= lt!1440979 (getSuffix!2436 lt!1440961 lt!1440935))))

(assert (=> b!4045629 e!2510219))

(declare-fun res!1648032 () Bool)

(assert (=> b!4045629 (=> (not res!1648032) (not e!2510219))))

(assert (=> b!4045629 (= res!1648032 (isPrefix!4019 lt!1440961 lt!1440961))))

(declare-fun lt!1440988 () Unit!62521)

(declare-fun lemmaIsPrefixRefl!2586 (List!43399 List!43399) Unit!62521)

(assert (=> b!4045629 (= lt!1440988 (lemmaIsPrefixRefl!2586 lt!1440961 lt!1440961))))

(declare-fun b!4045630 () Bool)

(declare-fun res!1648039 () Bool)

(assert (=> b!4045630 (=> res!1648039 e!2510231)))

(assert (=> b!4045630 (= res!1648039 (not (contains!8602 rules!2999 (rule!10008 (_1!24309 (v!39749 lt!1440944))))))))

(declare-fun b!4045631 () Bool)

(declare-fun lt!1440934 () Option!9346)

(assert (=> b!4045631 (= e!2510249 (= lt!1440934 lt!1440963))))

(declare-fun lt!1440975 () Unit!62521)

(declare-fun lt!1440955 () BalanceConc!25880)

(declare-fun lemmaSemiInverse!1911 (TokenValueInjection!13752 BalanceConc!25880) Unit!62521)

(assert (=> b!4045631 (= lt!1440975 (lemmaSemiInverse!1911 (transformation!6932 (rule!10008 token!484)) lt!1440955))))

(declare-fun b!4045632 () Bool)

(declare-fun res!1648036 () Bool)

(assert (=> b!4045632 (=> (not res!1648036) (not e!2510228))))

(declare-fun rulesInvariant!5864 (LexerInterface!6521 List!43401) Bool)

(assert (=> b!4045632 (= res!1648036 (rulesInvariant!5864 thiss!21717 rules!2999))))

(declare-fun b!4045633 () Bool)

(assert (=> b!4045633 (= e!2510223 e!2510244)))

(declare-fun res!1648058 () Bool)

(assert (=> b!4045633 (=> res!1648058 e!2510244)))

(assert (=> b!4045633 (= res!1648058 (not (= lt!1440933 lt!1440961)))))

(assert (=> b!4045633 (= lt!1440933 (++!11334 prefix!494 lt!1440971))))

(assert (=> b!4045633 (= lt!1440933 (++!11334 lt!1440987 lt!1440960))))

(declare-fun lt!1440970 () Unit!62521)

(assert (=> b!4045633 (= lt!1440970 (lemmaConcatAssociativity!2636 prefix!494 newSuffix!27 lt!1440960))))

(declare-fun b!4045634 () Bool)

(assert (=> b!4045634 (= e!2510219 (and (= (size!32353 token!484) lt!1440968) (= (originalCharacters!7532 token!484) lt!1440935)))))

(declare-fun b!4045635 () Bool)

(assert (=> b!4045635 (= e!2510242 e!2510238)))

(declare-fun res!1648050 () Bool)

(assert (=> b!4045635 (=> res!1648050 e!2510238)))

(assert (=> b!4045635 (= res!1648050 (not (= lt!1440934 lt!1440946)))))

(assert (=> b!4045635 (= lt!1440934 (Some!9345 (tuple2!42351 lt!1440956 suffixResult!105)))))

(assert (=> b!4045635 (= lt!1440934 (maxPrefixOneRule!2831 thiss!21717 (rule!10008 token!484) lt!1440961))))

(assert (=> b!4045635 (= lt!1440956 (Token!13003 lt!1440959 (rule!10008 token!484) lt!1440968 lt!1440935))))

(assert (=> b!4045635 (= lt!1440959 (apply!10121 (transformation!6932 (rule!10008 token!484)) lt!1440955))))

(assert (=> b!4045635 (= lt!1440955 (seqFromList!5149 lt!1440935))))

(declare-fun lt!1440973 () Unit!62521)

(assert (=> b!4045635 (= lt!1440973 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1637 thiss!21717 rules!2999 lt!1440935 lt!1440961 suffixResult!105 (rule!10008 token!484)))))

(assert (=> b!4045635 (= lt!1440977 suffixResult!105)))

(declare-fun lt!1440940 () Unit!62521)

(assert (=> b!4045635 (= lt!1440940 (lemmaSamePrefixThenSameSuffix!2180 lt!1440935 lt!1440977 lt!1440935 suffixResult!105 lt!1440961))))

(assert (=> b!4045635 (isPrefix!4019 lt!1440935 lt!1440983)))

(declare-fun lt!1440986 () Unit!62521)

(assert (=> b!4045635 (= lt!1440986 (lemmaConcatTwoListThenFirstIsPrefix!2854 lt!1440935 lt!1440977))))

(declare-fun b!4045636 () Bool)

(assert (=> b!4045636 (= e!2510250 e!2510231)))

(declare-fun res!1648054 () Bool)

(assert (=> b!4045636 (=> res!1648054 e!2510231)))

(assert (=> b!4045636 (= res!1648054 (<= lt!1440967 lt!1440968))))

(assert (=> b!4045636 (= (_2!24309 (v!39749 lt!1440944)) lt!1440964)))

(declare-fun lt!1440989 () Unit!62521)

(assert (=> b!4045636 (= lt!1440989 (lemmaSamePrefixThenSameSuffix!2180 lt!1440984 (_2!24309 (v!39749 lt!1440944)) lt!1440984 lt!1440964 lt!1440987))))

(assert (=> b!4045636 (isPrefix!4019 lt!1440984 lt!1440949)))

(declare-fun lt!1440950 () Unit!62521)

(assert (=> b!4045636 (= lt!1440950 (lemmaConcatTwoListThenFirstIsPrefix!2854 lt!1440984 lt!1440964))))

(declare-fun b!4045637 () Bool)

(declare-fun tp!1227695 () Bool)

(declare-fun inv!57840 (String!49528) Bool)

(declare-fun inv!57844 (TokenValueInjection!13752) Bool)

(assert (=> b!4045637 (= e!2510227 (and tp!1227695 (inv!57840 (tag!7792 (h!48697 rules!2999))) (inv!57844 (transformation!6932 (h!48697 rules!2999))) e!2510232))))

(declare-fun b!4045638 () Bool)

(declare-fun tp!1227691 () Bool)

(assert (=> b!4045638 (= e!2510221 (and tp!1227691 (inv!57840 (tag!7792 (rule!10008 token!484))) (inv!57844 (transformation!6932 (rule!10008 token!484))) e!2510236))))

(assert (= (and start!381496 res!1648051) b!4045599))

(assert (= (and b!4045599 res!1648059) b!4045632))

(assert (= (and b!4045632 res!1648036) b!4045617))

(assert (= (and b!4045617 res!1648053) b!4045623))

(assert (= (and b!4045623 res!1648048) b!4045613))

(assert (= (and b!4045613 res!1648031) b!4045602))

(assert (= (and b!4045602 res!1648030) b!4045620))

(assert (= (and b!4045620 res!1648038) b!4045622))

(assert (= (and b!4045622 (not res!1648041)) b!4045603))

(assert (= (and b!4045603 (not res!1648057)) b!4045610))

(assert (= (and b!4045610 (not res!1648044)) b!4045628))

(assert (= (and b!4045628 (not res!1648043)) b!4045635))

(assert (= (and b!4045635 (not res!1648050)) b!4045609))

(assert (= (and b!4045609 (not res!1648056)) b!4045629))

(assert (= (and b!4045629 res!1648032) b!4045608))

(assert (= (and b!4045608 res!1648035) b!4045601))

(assert (= (and b!4045601 res!1648047) b!4045634))

(assert (= (and b!4045629 (not res!1648052)) b!4045621))

(assert (= (and b!4045621 (not res!1648034)) b!4045612))

(assert (= (and b!4045612 (not res!1648045)) b!4045626))

(assert (= (and b!4045626 (not res!1648033)) b!4045633))

(assert (= (and b!4045633 (not res!1648058)) b!4045611))

(assert (= (and b!4045611 (not res!1648037)) b!4045606))

(assert (= (and b!4045606 (not res!1648040)) b!4045605))

(assert (= (and b!4045605 (not res!1648055)) b!4045636))

(assert (= (and b!4045636 (not res!1648054)) b!4045598))

(assert (= (and b!4045598 (not res!1648042)) b!4045619))

(assert (= (and b!4045619 (not res!1648049)) b!4045630))

(assert (= (and b!4045630 (not res!1648039)) b!4045604))

(assert (= (and b!4045604 (not res!1648046)) b!4045631))

(assert (= (and start!381496 ((_ is Cons!43275) prefix!494)) b!4045625))

(assert (= b!4045638 b!4045615))

(assert (= b!4045600 b!4045638))

(assert (= start!381496 b!4045600))

(assert (= (and start!381496 ((_ is Cons!43275) suffixResult!105)) b!4045627))

(assert (= (and start!381496 ((_ is Cons!43275) suffix!1299)) b!4045616))

(assert (= (and start!381496 ((_ is Cons!43275) newSuffix!27)) b!4045618))

(assert (= b!4045637 b!4045614))

(assert (= b!4045624 b!4045637))

(assert (= (and start!381496 ((_ is Cons!43277) rules!2999)) b!4045624))

(assert (= (and start!381496 ((_ is Cons!43275) newSuffixResult!27)) b!4045607))

(declare-fun m!4643947 () Bool)

(assert (=> start!381496 m!4643947))

(declare-fun m!4643949 () Bool)

(assert (=> b!4045626 m!4643949))

(declare-fun m!4643951 () Bool)

(assert (=> b!4045626 m!4643951))

(declare-fun m!4643953 () Bool)

(assert (=> b!4045601 m!4643953))

(declare-fun m!4643955 () Bool)

(assert (=> b!4045622 m!4643955))

(declare-fun m!4643957 () Bool)

(assert (=> b!4045622 m!4643957))

(declare-fun m!4643959 () Bool)

(assert (=> b!4045622 m!4643959))

(declare-fun m!4643961 () Bool)

(assert (=> b!4045622 m!4643961))

(declare-fun m!4643963 () Bool)

(assert (=> b!4045631 m!4643963))

(declare-fun m!4643965 () Bool)

(assert (=> b!4045600 m!4643965))

(declare-fun m!4643967 () Bool)

(assert (=> b!4045623 m!4643967))

(declare-fun m!4643969 () Bool)

(assert (=> b!4045612 m!4643969))

(declare-fun m!4643971 () Bool)

(assert (=> b!4045612 m!4643971))

(declare-fun m!4643973 () Bool)

(assert (=> b!4045612 m!4643973))

(declare-fun m!4643975 () Bool)

(assert (=> b!4045612 m!4643975))

(declare-fun m!4643977 () Bool)

(assert (=> b!4045612 m!4643977))

(declare-fun m!4643979 () Bool)

(assert (=> b!4045612 m!4643979))

(declare-fun m!4643981 () Bool)

(assert (=> b!4045612 m!4643981))

(declare-fun m!4643983 () Bool)

(assert (=> b!4045612 m!4643983))

(declare-fun m!4643985 () Bool)

(assert (=> b!4045612 m!4643985))

(declare-fun m!4643987 () Bool)

(assert (=> b!4045612 m!4643987))

(declare-fun m!4643989 () Bool)

(assert (=> b!4045612 m!4643989))

(declare-fun m!4643991 () Bool)

(assert (=> b!4045612 m!4643991))

(declare-fun m!4643993 () Bool)

(assert (=> b!4045612 m!4643993))

(assert (=> b!4045612 m!4643985))

(declare-fun m!4643995 () Bool)

(assert (=> b!4045612 m!4643995))

(assert (=> b!4045612 m!4643981))

(declare-fun m!4643997 () Bool)

(assert (=> b!4045612 m!4643997))

(declare-fun m!4643999 () Bool)

(assert (=> b!4045612 m!4643999))

(assert (=> b!4045612 m!4643991))

(declare-fun m!4644001 () Bool)

(assert (=> b!4045612 m!4644001))

(declare-fun m!4644003 () Bool)

(assert (=> b!4045612 m!4644003))

(declare-fun m!4644005 () Bool)

(assert (=> b!4045619 m!4644005))

(declare-fun m!4644007 () Bool)

(assert (=> b!4045598 m!4644007))

(declare-fun m!4644009 () Bool)

(assert (=> b!4045629 m!4644009))

(declare-fun m!4644011 () Bool)

(assert (=> b!4045629 m!4644011))

(declare-fun m!4644013 () Bool)

(assert (=> b!4045629 m!4644013))

(declare-fun m!4644015 () Bool)

(assert (=> b!4045629 m!4644015))

(declare-fun m!4644017 () Bool)

(assert (=> b!4045603 m!4644017))

(declare-fun m!4644019 () Bool)

(assert (=> b!4045603 m!4644019))

(declare-fun m!4644021 () Bool)

(assert (=> b!4045603 m!4644021))

(declare-fun m!4644023 () Bool)

(assert (=> b!4045603 m!4644023))

(declare-fun m!4644025 () Bool)

(assert (=> b!4045603 m!4644025))

(declare-fun m!4644027 () Bool)

(assert (=> b!4045613 m!4644027))

(declare-fun m!4644029 () Bool)

(assert (=> b!4045613 m!4644029))

(declare-fun m!4644031 () Bool)

(assert (=> b!4045613 m!4644031))

(assert (=> b!4045613 m!4644031))

(declare-fun m!4644033 () Bool)

(assert (=> b!4045613 m!4644033))

(declare-fun m!4644035 () Bool)

(assert (=> b!4045605 m!4644035))

(declare-fun m!4644037 () Bool)

(assert (=> b!4045605 m!4644037))

(declare-fun m!4644039 () Bool)

(assert (=> b!4045621 m!4644039))

(declare-fun m!4644041 () Bool)

(assert (=> b!4045621 m!4644041))

(declare-fun m!4644043 () Bool)

(assert (=> b!4045621 m!4644043))

(declare-fun m!4644045 () Bool)

(assert (=> b!4045621 m!4644045))

(declare-fun m!4644047 () Bool)

(assert (=> b!4045633 m!4644047))

(declare-fun m!4644049 () Bool)

(assert (=> b!4045633 m!4644049))

(declare-fun m!4644051 () Bool)

(assert (=> b!4045633 m!4644051))

(declare-fun m!4644053 () Bool)

(assert (=> b!4045609 m!4644053))

(declare-fun m!4644055 () Bool)

(assert (=> b!4045609 m!4644055))

(declare-fun m!4644057 () Bool)

(assert (=> b!4045609 m!4644057))

(declare-fun m!4644059 () Bool)

(assert (=> b!4045609 m!4644059))

(declare-fun m!4644061 () Bool)

(assert (=> b!4045610 m!4644061))

(declare-fun m!4644063 () Bool)

(assert (=> b!4045610 m!4644063))

(declare-fun m!4644065 () Bool)

(assert (=> b!4045610 m!4644065))

(declare-fun m!4644067 () Bool)

(assert (=> b!4045610 m!4644067))

(declare-fun m!4644069 () Bool)

(assert (=> b!4045628 m!4644069))

(declare-fun m!4644071 () Bool)

(assert (=> b!4045628 m!4644071))

(declare-fun m!4644073 () Bool)

(assert (=> b!4045628 m!4644073))

(declare-fun m!4644075 () Bool)

(assert (=> b!4045628 m!4644075))

(declare-fun m!4644077 () Bool)

(assert (=> b!4045632 m!4644077))

(declare-fun m!4644079 () Bool)

(assert (=> b!4045635 m!4644079))

(declare-fun m!4644081 () Bool)

(assert (=> b!4045635 m!4644081))

(declare-fun m!4644083 () Bool)

(assert (=> b!4045635 m!4644083))

(declare-fun m!4644085 () Bool)

(assert (=> b!4045635 m!4644085))

(declare-fun m!4644087 () Bool)

(assert (=> b!4045635 m!4644087))

(declare-fun m!4644089 () Bool)

(assert (=> b!4045635 m!4644089))

(declare-fun m!4644091 () Bool)

(assert (=> b!4045635 m!4644091))

(declare-fun m!4644093 () Bool)

(assert (=> b!4045599 m!4644093))

(declare-fun m!4644095 () Bool)

(assert (=> b!4045636 m!4644095))

(declare-fun m!4644097 () Bool)

(assert (=> b!4045636 m!4644097))

(declare-fun m!4644099 () Bool)

(assert (=> b!4045636 m!4644099))

(declare-fun m!4644101 () Bool)

(assert (=> b!4045602 m!4644101))

(declare-fun m!4644103 () Bool)

(assert (=> b!4045602 m!4644103))

(declare-fun m!4644105 () Bool)

(assert (=> b!4045637 m!4644105))

(declare-fun m!4644107 () Bool)

(assert (=> b!4045637 m!4644107))

(declare-fun m!4644109 () Bool)

(assert (=> b!4045617 m!4644109))

(declare-fun m!4644111 () Bool)

(assert (=> b!4045617 m!4644111))

(declare-fun m!4644113 () Bool)

(assert (=> b!4045630 m!4644113))

(declare-fun m!4644115 () Bool)

(assert (=> b!4045611 m!4644115))

(declare-fun m!4644117 () Bool)

(assert (=> b!4045611 m!4644117))

(declare-fun m!4644119 () Bool)

(assert (=> b!4045611 m!4644119))

(declare-fun m!4644121 () Bool)

(assert (=> b!4045638 m!4644121))

(declare-fun m!4644123 () Bool)

(assert (=> b!4045638 m!4644123))

(declare-fun m!4644125 () Bool)

(assert (=> b!4045620 m!4644125))

(declare-fun m!4644127 () Bool)

(assert (=> b!4045620 m!4644127))

(check-sat (not b_next!113341) (not b_next!113343) (not b!4045635) (not b!4045636) (not b_next!113337) (not b!4045638) (not b!4045633) (not b!4045617) (not b!4045601) (not b_next!113339) (not b!4045605) tp_is_empty!20645 (not b!4045616) (not b!4045627) (not b!4045625) (not b!4045628) (not b!4045612) (not b!4045620) b_and!311095 (not b!4045610) (not b!4045621) b_and!311097 (not b!4045602) b_and!311091 (not b!4045599) (not b!4045613) (not b!4045624) (not b!4045611) (not start!381496) (not b!4045622) (not b!4045598) (not b!4045637) (not b!4045630) (not b!4045631) (not b!4045618) (not b!4045623) (not b!4045626) (not b!4045607) (not b!4045609) (not b!4045629) b_and!311093 (not b!4045632) (not b!4045603) (not b!4045600) (not b!4045619))
(check-sat (not b_next!113339) (not b_next!113341) (not b_next!113343) b_and!311095 (not b_next!113337) b_and!311093 b_and!311097 b_and!311091)
