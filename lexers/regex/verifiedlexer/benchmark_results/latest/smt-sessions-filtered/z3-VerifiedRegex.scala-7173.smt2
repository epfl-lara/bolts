; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381500 () Bool)

(assert start!381500)

(declare-fun b!4045849 () Bool)

(declare-fun b_free!112649 () Bool)

(declare-fun b_next!113353 () Bool)

(assert (=> b!4045849 (= b_free!112649 (not b_next!113353))))

(declare-fun tp!1227766 () Bool)

(declare-fun b_and!311107 () Bool)

(assert (=> b!4045849 (= tp!1227766 b_and!311107)))

(declare-fun b_free!112651 () Bool)

(declare-fun b_next!113355 () Bool)

(assert (=> b!4045849 (= b_free!112651 (not b_next!113355))))

(declare-fun tp!1227773 () Bool)

(declare-fun b_and!311109 () Bool)

(assert (=> b!4045849 (= tp!1227773 b_and!311109)))

(declare-fun b!4045850 () Bool)

(declare-fun b_free!112653 () Bool)

(declare-fun b_next!113357 () Bool)

(assert (=> b!4045850 (= b_free!112653 (not b_next!113357))))

(declare-fun tp!1227772 () Bool)

(declare-fun b_and!311111 () Bool)

(assert (=> b!4045850 (= tp!1227772 b_and!311111)))

(declare-fun b_free!112655 () Bool)

(declare-fun b_next!113359 () Bool)

(assert (=> b!4045850 (= b_free!112655 (not b_next!113359))))

(declare-fun tp!1227776 () Bool)

(declare-fun b_and!311113 () Bool)

(assert (=> b!4045850 (= tp!1227776 b_and!311113)))

(declare-fun b!4045844 () Bool)

(declare-fun e!2510437 () Bool)

(declare-fun tp_is_empty!20649 () Bool)

(declare-fun tp!1227775 () Bool)

(assert (=> b!4045844 (= e!2510437 (and tp_is_empty!20649 tp!1227775))))

(declare-fun b!4045845 () Bool)

(declare-fun e!2510429 () Bool)

(declare-fun tp!1227770 () Bool)

(declare-datatypes ((C!23864 0))(
  ( (C!23865 (val!14026 Int)) )
))
(declare-datatypes ((List!43405 0))(
  ( (Nil!43281) (Cons!43281 (h!48701 C!23864) (t!335502 List!43405)) )
))
(declare-datatypes ((IArray!26295 0))(
  ( (IArray!26296 (innerList!13205 List!43405)) )
))
(declare-datatypes ((Conc!13145 0))(
  ( (Node!13145 (left!32594 Conc!13145) (right!32924 Conc!13145) (csize!26520 Int) (cheight!13356 Int)) (Leaf!20319 (xs!16451 IArray!26295) (csize!26521 Int)) (Empty!13145) )
))
(declare-datatypes ((BalanceConc!25884 0))(
  ( (BalanceConc!25885 (c!698890 Conc!13145)) )
))
(declare-datatypes ((List!43406 0))(
  ( (Nil!43282) (Cons!43282 (h!48702 (_ BitVec 16)) (t!335503 List!43406)) )
))
(declare-datatypes ((TokenValue!7164 0))(
  ( (FloatLiteralValue!14328 (text!50593 List!43406)) (TokenValueExt!7163 (__x!26545 Int)) (Broken!35820 (value!218227 List!43406)) (Object!7287) (End!7164) (Def!7164) (Underscore!7164) (Match!7164) (Else!7164) (Error!7164) (Case!7164) (If!7164) (Extends!7164) (Abstract!7164) (Class!7164) (Val!7164) (DelimiterValue!14328 (del!7224 List!43406)) (KeywordValue!7170 (value!218228 List!43406)) (CommentValue!14328 (value!218229 List!43406)) (WhitespaceValue!14328 (value!218230 List!43406)) (IndentationValue!7164 (value!218231 List!43406)) (String!49537) (Int32!7164) (Broken!35821 (value!218232 List!43406)) (Boolean!7165) (Unit!62526) (OperatorValue!7167 (op!7224 List!43406)) (IdentifierValue!14328 (value!218233 List!43406)) (IdentifierValue!14329 (value!218234 List!43406)) (WhitespaceValue!14329 (value!218235 List!43406)) (True!14328) (False!14328) (Broken!35822 (value!218236 List!43406)) (Broken!35823 (value!218237 List!43406)) (True!14329) (RightBrace!7164) (RightBracket!7164) (Colon!7164) (Null!7164) (Comma!7164) (LeftBracket!7164) (False!14329) (LeftBrace!7164) (ImaginaryLiteralValue!7164 (text!50594 List!43406)) (StringLiteralValue!21492 (value!218238 List!43406)) (EOFValue!7164 (value!218239 List!43406)) (IdentValue!7164 (value!218240 List!43406)) (DelimiterValue!14329 (value!218241 List!43406)) (DedentValue!7164 (value!218242 List!43406)) (NewLineValue!7164 (value!218243 List!43406)) (IntegerValue!21492 (value!218244 (_ BitVec 32)) (text!50595 List!43406)) (IntegerValue!21493 (value!218245 Int) (text!50596 List!43406)) (Times!7164) (Or!7164) (Equal!7164) (Minus!7164) (Broken!35824 (value!218246 List!43406)) (And!7164) (Div!7164) (LessEqual!7164) (Mod!7164) (Concat!19003) (Not!7164) (Plus!7164) (SpaceValue!7164 (value!218247 List!43406)) (IntegerValue!21494 (value!218248 Int) (text!50597 List!43406)) (StringLiteralValue!21493 (text!50598 List!43406)) (FloatLiteralValue!14329 (text!50599 List!43406)) (BytesLiteralValue!7164 (value!218249 List!43406)) (CommentValue!14329 (value!218250 List!43406)) (StringLiteralValue!21494 (value!218251 List!43406)) (ErrorTokenValue!7164 (msg!7225 List!43406)) )
))
(declare-datatypes ((Regex!11839 0))(
  ( (ElementMatch!11839 (c!698891 C!23864)) (Concat!19004 (regOne!24190 Regex!11839) (regTwo!24190 Regex!11839)) (EmptyExpr!11839) (Star!11839 (reg!12168 Regex!11839)) (EmptyLang!11839) (Union!11839 (regOne!24191 Regex!11839) (regTwo!24191 Regex!11839)) )
))
(declare-datatypes ((String!49538 0))(
  ( (String!49539 (value!218252 String)) )
))
(declare-datatypes ((TokenValueInjection!13756 0))(
  ( (TokenValueInjection!13757 (toValue!9482 Int) (toChars!9341 Int)) )
))
(declare-datatypes ((Rule!13668 0))(
  ( (Rule!13669 (regex!6934 Regex!11839) (tag!7794 String!49538) (isSeparator!6934 Bool) (transformation!6934 TokenValueInjection!13756)) )
))
(declare-datatypes ((List!43407 0))(
  ( (Nil!43283) (Cons!43283 (h!48703 Rule!13668) (t!335504 List!43407)) )
))
(declare-fun rules!2999 () List!43407)

(declare-fun e!2510438 () Bool)

(declare-fun inv!57847 (String!49538) Bool)

(declare-fun inv!57850 (TokenValueInjection!13756) Bool)

(assert (=> b!4045845 (= e!2510429 (and tp!1227770 (inv!57847 (tag!7794 (h!48703 rules!2999))) (inv!57850 (transformation!6934 (h!48703 rules!2999))) e!2510438))))

(declare-fun b!4045846 () Bool)

(declare-fun res!1648218 () Bool)

(declare-fun e!2510430 () Bool)

(assert (=> b!4045846 (=> res!1648218 e!2510430)))

(declare-fun lt!1441277 () List!43405)

(declare-fun lt!1441294 () List!43405)

(assert (=> b!4045846 (= res!1648218 (not (= lt!1441277 lt!1441294)))))

(declare-fun b!4045847 () Bool)

(declare-fun e!2510448 () Bool)

(declare-fun e!2510439 () Bool)

(assert (=> b!4045847 (= e!2510448 e!2510439)))

(declare-fun res!1648211 () Bool)

(assert (=> b!4045847 (=> res!1648211 e!2510439)))

(declare-fun lt!1441323 () List!43405)

(declare-fun lt!1441304 () List!43405)

(assert (=> b!4045847 (= res!1648211 (not (= lt!1441323 lt!1441304)))))

(declare-fun prefix!494 () List!43405)

(declare-fun lt!1441311 () List!43405)

(declare-fun ++!11336 (List!43405 List!43405) List!43405)

(assert (=> b!4045847 (= lt!1441323 (++!11336 prefix!494 lt!1441311))))

(declare-fun lt!1441303 () List!43405)

(assert (=> b!4045847 (= lt!1441323 (++!11336 lt!1441294 lt!1441303))))

(declare-fun newSuffix!27 () List!43405)

(declare-datatypes ((Unit!62527 0))(
  ( (Unit!62528) )
))
(declare-fun lt!1441320 () Unit!62527)

(declare-fun lemmaConcatAssociativity!2638 (List!43405 List!43405 List!43405) Unit!62527)

(assert (=> b!4045847 (= lt!1441320 (lemmaConcatAssociativity!2638 prefix!494 newSuffix!27 lt!1441303))))

(declare-fun b!4045848 () Bool)

(declare-fun res!1648215 () Bool)

(declare-fun e!2510442 () Bool)

(assert (=> b!4045848 (=> res!1648215 e!2510442)))

(declare-datatypes ((Token!13006 0))(
  ( (Token!13007 (value!218253 TokenValue!7164) (rule!10010 Rule!13668) (size!32357 Int) (originalCharacters!7534 List!43405)) )
))
(declare-datatypes ((tuple2!42354 0))(
  ( (tuple2!42355 (_1!24311 Token!13006) (_2!24311 List!43405)) )
))
(declare-datatypes ((Option!9348 0))(
  ( (None!9347) (Some!9347 (v!39751 tuple2!42354)) )
))
(declare-fun lt!1441302 () Option!9348)

(declare-fun lt!1441313 () Token!13006)

(declare-fun lt!1441319 () List!43405)

(assert (=> b!4045848 (= res!1648215 (not (= lt!1441302 (Some!9347 (tuple2!42355 lt!1441313 lt!1441319)))))))

(declare-fun e!2510445 () Bool)

(assert (=> b!4045849 (= e!2510445 (and tp!1227766 tp!1227773))))

(assert (=> b!4045850 (= e!2510438 (and tp!1227772 tp!1227776))))

(declare-fun b!4045851 () Bool)

(declare-fun token!484 () Token!13006)

(declare-fun lt!1441296 () List!43405)

(declare-fun lt!1441327 () Int)

(declare-fun e!2510447 () Bool)

(assert (=> b!4045851 (= e!2510447 (and (= (size!32357 token!484) lt!1441327) (= (originalCharacters!7534 token!484) lt!1441296)))))

(declare-fun b!4045852 () Bool)

(declare-fun res!1648224 () Bool)

(assert (=> b!4045852 (=> res!1648224 e!2510442)))

(declare-fun lt!1441314 () List!43405)

(declare-fun isPrefix!4021 (List!43405 List!43405) Bool)

(assert (=> b!4045852 (= res!1648224 (not (isPrefix!4021 lt!1441314 lt!1441294)))))

(declare-fun b!4045853 () Bool)

(declare-fun e!2510435 () Bool)

(declare-fun e!2510427 () Bool)

(assert (=> b!4045853 (= e!2510435 (not e!2510427))))

(declare-fun res!1648223 () Bool)

(assert (=> b!4045853 (=> res!1648223 e!2510427)))

(declare-fun lt!1441315 () List!43405)

(assert (=> b!4045853 (= res!1648223 (not (= lt!1441315 lt!1441304)))))

(declare-fun suffixResult!105 () List!43405)

(assert (=> b!4045853 (= lt!1441315 (++!11336 lt!1441296 suffixResult!105))))

(declare-fun lt!1441305 () Unit!62527)

(declare-fun lemmaInv!1143 (TokenValueInjection!13756) Unit!62527)

(assert (=> b!4045853 (= lt!1441305 (lemmaInv!1143 (transformation!6934 (rule!10010 token!484))))))

(declare-datatypes ((LexerInterface!6523 0))(
  ( (LexerInterfaceExt!6520 (__x!26546 Int)) (Lexer!6521) )
))
(declare-fun thiss!21717 () LexerInterface!6523)

(declare-fun ruleValid!2864 (LexerInterface!6523 Rule!13668) Bool)

(assert (=> b!4045853 (ruleValid!2864 thiss!21717 (rule!10010 token!484))))

(declare-fun lt!1441285 () Unit!62527)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1934 (LexerInterface!6523 Rule!13668 List!43407) Unit!62527)

(assert (=> b!4045853 (= lt!1441285 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1934 thiss!21717 (rule!10010 token!484) rules!2999))))

(declare-fun b!4045854 () Bool)

(declare-fun e!2510419 () Bool)

(declare-fun e!2510432 () Bool)

(assert (=> b!4045854 (= e!2510419 e!2510432)))

(declare-fun res!1648213 () Bool)

(assert (=> b!4045854 (=> res!1648213 e!2510432)))

(declare-fun matchR!5792 (Regex!11839 List!43405) Bool)

(assert (=> b!4045854 (= res!1648213 (not (matchR!5792 (regex!6934 (rule!10010 token!484)) lt!1441296)))))

(assert (=> b!4045854 (isPrefix!4021 lt!1441296 lt!1441294)))

(declare-fun lt!1441312 () Unit!62527)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!814 (List!43405 List!43405 List!43405) Unit!62527)

(assert (=> b!4045854 (= lt!1441312 (lemmaPrefixStaysPrefixWhenAddingToSuffix!814 lt!1441296 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!43405)

(declare-fun lt!1441292 () Unit!62527)

(assert (=> b!4045854 (= lt!1441292 (lemmaPrefixStaysPrefixWhenAddingToSuffix!814 lt!1441296 prefix!494 suffix!1299))))

(declare-fun b!4045855 () Bool)

(declare-fun e!2510425 () Bool)

(declare-fun tp!1227777 () Bool)

(assert (=> b!4045855 (= e!2510425 (and e!2510429 tp!1227777))))

(declare-fun b!4045856 () Bool)

(declare-fun e!2510424 () Bool)

(declare-fun e!2510426 () Bool)

(assert (=> b!4045856 (= e!2510424 e!2510426)))

(declare-fun res!1648237 () Bool)

(assert (=> b!4045856 (=> res!1648237 e!2510426)))

(declare-fun lt!1441297 () List!43405)

(assert (=> b!4045856 (= res!1648237 (not (= lt!1441297 prefix!494)))))

(declare-fun lt!1441324 () List!43405)

(assert (=> b!4045856 (= lt!1441297 (++!11336 lt!1441296 lt!1441324))))

(declare-fun getSuffix!2438 (List!43405 List!43405) List!43405)

(assert (=> b!4045856 (= lt!1441324 (getSuffix!2438 prefix!494 lt!1441296))))

(assert (=> b!4045856 (isPrefix!4021 lt!1441296 prefix!494)))

(declare-fun lt!1441331 () Unit!62527)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!585 (List!43405 List!43405 List!43405) Unit!62527)

(assert (=> b!4045856 (= lt!1441331 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!585 prefix!494 lt!1441296 lt!1441304))))

(declare-fun b!4045857 () Bool)

(declare-fun res!1648226 () Bool)

(declare-fun e!2510446 () Bool)

(assert (=> b!4045857 (=> (not res!1648226) (not e!2510446))))

(declare-fun isEmpty!25827 (List!43407) Bool)

(assert (=> b!4045857 (= res!1648226 (not (isEmpty!25827 rules!2999)))))

(declare-fun b!4045858 () Bool)

(declare-fun e!2510440 () Bool)

(assert (=> b!4045858 (= e!2510432 e!2510440)))

(declare-fun res!1648227 () Bool)

(assert (=> b!4045858 (=> res!1648227 e!2510440)))

(declare-fun lt!1441287 () List!43405)

(assert (=> b!4045858 (= res!1648227 (not (= lt!1441287 lt!1441304)))))

(assert (=> b!4045858 (= lt!1441287 (++!11336 lt!1441296 lt!1441319))))

(assert (=> b!4045858 (= lt!1441319 (getSuffix!2438 lt!1441304 lt!1441296))))

(assert (=> b!4045858 e!2510447))

(declare-fun res!1648210 () Bool)

(assert (=> b!4045858 (=> (not res!1648210) (not e!2510447))))

(assert (=> b!4045858 (= res!1648210 (isPrefix!4021 lt!1441304 lt!1441304))))

(declare-fun lt!1441332 () Unit!62527)

(declare-fun lemmaIsPrefixRefl!2588 (List!43405 List!43405) Unit!62527)

(assert (=> b!4045858 (= lt!1441332 (lemmaIsPrefixRefl!2588 lt!1441304 lt!1441304))))

(declare-fun b!4045859 () Bool)

(declare-fun res!1648216 () Bool)

(assert (=> b!4045859 (=> res!1648216 e!2510442)))

(declare-fun contains!8604 (List!43407 Rule!13668) Bool)

(assert (=> b!4045859 (= res!1648216 (not (contains!8604 rules!2999 (rule!10010 token!484))))))

(declare-fun b!4045860 () Bool)

(declare-fun res!1648234 () Bool)

(assert (=> b!4045860 (=> (not res!1648234) (not e!2510447))))

(declare-fun lt!1441318 () TokenValue!7164)

(assert (=> b!4045860 (= res!1648234 (= (value!218253 token!484) lt!1441318))))

(declare-fun b!4045861 () Bool)

(declare-fun e!2510428 () Bool)

(assert (=> b!4045861 (= e!2510426 e!2510428)))

(declare-fun res!1648239 () Bool)

(assert (=> b!4045861 (=> res!1648239 e!2510428)))

(declare-fun lt!1441298 () List!43405)

(declare-fun lt!1441301 () List!43405)

(assert (=> b!4045861 (= res!1648239 (or (not (= lt!1441304 lt!1441298)) (not (= lt!1441304 lt!1441301))))))

(assert (=> b!4045861 (= lt!1441298 lt!1441301)))

(declare-fun lt!1441278 () List!43405)

(assert (=> b!4045861 (= lt!1441301 (++!11336 lt!1441296 lt!1441278))))

(assert (=> b!4045861 (= lt!1441298 (++!11336 lt!1441297 suffix!1299))))

(assert (=> b!4045861 (= lt!1441278 (++!11336 lt!1441324 suffix!1299))))

(declare-fun lt!1441307 () Unit!62527)

(assert (=> b!4045861 (= lt!1441307 (lemmaConcatAssociativity!2638 lt!1441296 lt!1441324 suffix!1299))))

(declare-fun b!4045862 () Bool)

(declare-fun e!2510422 () Bool)

(declare-fun e!2510434 () Bool)

(assert (=> b!4045862 (= e!2510422 e!2510434)))

(declare-fun res!1648220 () Bool)

(assert (=> b!4045862 (=> res!1648220 e!2510434)))

(declare-fun lt!1441279 () Option!9348)

(declare-fun lt!1441282 () Option!9348)

(assert (=> b!4045862 (= res!1648220 (not (= lt!1441279 (Some!9347 (v!39751 lt!1441282)))))))

(declare-fun newSuffixResult!27 () List!43405)

(assert (=> b!4045862 (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 newSuffixResult!27))))

(declare-fun lt!1441306 () Unit!62527)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2856 (List!43405 List!43405) Unit!62527)

(assert (=> b!4045862 (= lt!1441306 (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441314 newSuffixResult!27))))

(assert (=> b!4045862 (isPrefix!4021 lt!1441314 lt!1441277)))

(assert (=> b!4045862 (= lt!1441277 (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))

(declare-fun lt!1441310 () Unit!62527)

(assert (=> b!4045862 (= lt!1441310 (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))

(declare-fun lt!1441330 () TokenValue!7164)

(declare-fun lt!1441300 () Int)

(assert (=> b!4045862 (= lt!1441279 (Some!9347 (tuple2!42355 (Token!13007 lt!1441330 (rule!10010 (_1!24311 (v!39751 lt!1441282))) lt!1441300 lt!1441314) (_2!24311 (v!39751 lt!1441282)))))))

(declare-fun maxPrefixOneRule!2833 (LexerInterface!6523 Rule!13668 List!43405) Option!9348)

(assert (=> b!4045862 (= lt!1441279 (maxPrefixOneRule!2833 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) lt!1441294))))

(declare-fun size!32358 (List!43405) Int)

(assert (=> b!4045862 (= lt!1441300 (size!32358 lt!1441314))))

(declare-fun apply!10123 (TokenValueInjection!13756 BalanceConc!25884) TokenValue!7164)

(declare-fun seqFromList!5151 (List!43405) BalanceConc!25884)

(assert (=> b!4045862 (= lt!1441330 (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 lt!1441314)))))

(declare-fun lt!1441284 () Unit!62527)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1639 (LexerInterface!6523 List!43407 List!43405 List!43405 List!43405 Rule!13668) Unit!62527)

(assert (=> b!4045862 (= lt!1441284 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1639 thiss!21717 rules!2999 lt!1441314 lt!1441294 (_2!24311 (v!39751 lt!1441282)) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun list!16120 (BalanceConc!25884) List!43405)

(declare-fun charsOf!4750 (Token!13006) BalanceConc!25884)

(assert (=> b!4045862 (= lt!1441314 (list!16120 (charsOf!4750 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun lt!1441291 () Unit!62527)

(assert (=> b!4045862 (= lt!1441291 (lemmaInv!1143 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(assert (=> b!4045862 (ruleValid!2864 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))

(declare-fun lt!1441322 () Unit!62527)

(assert (=> b!4045862 (= lt!1441322 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1934 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) rules!2999))))

(declare-fun lt!1441326 () Unit!62527)

(declare-fun lemmaCharactersSize!1453 (Token!13006) Unit!62527)

(assert (=> b!4045862 (= lt!1441326 (lemmaCharactersSize!1453 token!484))))

(declare-fun lt!1441280 () Unit!62527)

(assert (=> b!4045862 (= lt!1441280 (lemmaCharactersSize!1453 (_1!24311 (v!39751 lt!1441282))))))

(declare-fun b!4045863 () Bool)

(assert (=> b!4045863 (= e!2510427 e!2510424)))

(declare-fun res!1648230 () Bool)

(assert (=> b!4045863 (=> res!1648230 e!2510424)))

(assert (=> b!4045863 (= res!1648230 (not (isPrefix!4021 lt!1441296 lt!1441304)))))

(assert (=> b!4045863 (isPrefix!4021 prefix!494 lt!1441304)))

(declare-fun lt!1441288 () Unit!62527)

(assert (=> b!4045863 (= lt!1441288 (lemmaConcatTwoListThenFirstIsPrefix!2856 prefix!494 suffix!1299))))

(assert (=> b!4045863 (isPrefix!4021 lt!1441296 lt!1441315)))

(declare-fun lt!1441293 () Unit!62527)

(assert (=> b!4045863 (= lt!1441293 (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441296 suffixResult!105))))

(declare-fun tp!1227774 () Bool)

(declare-fun e!2510421 () Bool)

(declare-fun b!4045864 () Bool)

(assert (=> b!4045864 (= e!2510421 (and tp!1227774 (inv!57847 (tag!7794 (rule!10010 token!484))) (inv!57850 (transformation!6934 (rule!10010 token!484))) e!2510445))))

(declare-fun b!4045865 () Bool)

(declare-fun res!1648236 () Bool)

(assert (=> b!4045865 (=> (not res!1648236) (not e!2510447))))

(assert (=> b!4045865 (= res!1648236 (= (size!32357 token!484) (size!32358 (originalCharacters!7534 token!484))))))

(declare-fun b!4045866 () Bool)

(declare-fun e!2510433 () Bool)

(declare-fun tp!1227769 () Bool)

(assert (=> b!4045866 (= e!2510433 (and tp_is_empty!20649 tp!1227769))))

(declare-fun b!4045867 () Bool)

(declare-fun e!2510431 () Bool)

(assert (=> b!4045867 (= e!2510431 e!2510442)))

(declare-fun res!1648238 () Bool)

(assert (=> b!4045867 (=> res!1648238 e!2510442)))

(assert (=> b!4045867 (= res!1648238 (<= lt!1441300 lt!1441327))))

(declare-fun lt!1441283 () List!43405)

(assert (=> b!4045867 (= (_2!24311 (v!39751 lt!1441282)) lt!1441283)))

(declare-fun lt!1441289 () Unit!62527)

(declare-fun lemmaSamePrefixThenSameSuffix!2182 (List!43405 List!43405 List!43405 List!43405 List!43405) Unit!62527)

(assert (=> b!4045867 (= lt!1441289 (lemmaSamePrefixThenSameSuffix!2182 lt!1441314 (_2!24311 (v!39751 lt!1441282)) lt!1441314 lt!1441283 lt!1441294))))

(declare-fun lt!1441333 () List!43405)

(assert (=> b!4045867 (isPrefix!4021 lt!1441314 lt!1441333)))

(declare-fun lt!1441317 () Unit!62527)

(assert (=> b!4045867 (= lt!1441317 (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441314 lt!1441283))))

(declare-fun b!4045868 () Bool)

(declare-fun e!2510441 () Bool)

(assert (=> b!4045868 (= e!2510446 e!2510441)))

(declare-fun res!1648221 () Bool)

(assert (=> b!4045868 (=> (not res!1648221) (not e!2510441))))

(declare-fun lt!1441309 () Int)

(assert (=> b!4045868 (= res!1648221 (>= lt!1441309 lt!1441327))))

(assert (=> b!4045868 (= lt!1441327 (size!32358 lt!1441296))))

(assert (=> b!4045868 (= lt!1441309 (size!32358 prefix!494))))

(assert (=> b!4045868 (= lt!1441296 (list!16120 (charsOf!4750 token!484)))))

(declare-fun res!1648235 () Bool)

(assert (=> start!381500 (=> (not res!1648235) (not e!2510446))))

(get-info :version)

(assert (=> start!381500 (= res!1648235 ((_ is Lexer!6521) thiss!21717))))

(assert (=> start!381500 e!2510446))

(declare-fun e!2510450 () Bool)

(assert (=> start!381500 e!2510450))

(declare-fun e!2510444 () Bool)

(declare-fun inv!57851 (Token!13006) Bool)

(assert (=> start!381500 (and (inv!57851 token!484) e!2510444)))

(declare-fun e!2510443 () Bool)

(assert (=> start!381500 e!2510443))

(assert (=> start!381500 e!2510437))

(declare-fun e!2510420 () Bool)

(assert (=> start!381500 e!2510420))

(assert (=> start!381500 true))

(assert (=> start!381500 e!2510425))

(assert (=> start!381500 e!2510433))

(declare-fun b!4045869 () Bool)

(declare-fun e!2510423 () Bool)

(assert (=> b!4045869 (= e!2510441 e!2510423)))

(declare-fun res!1648231 () Bool)

(assert (=> b!4045869 (=> (not res!1648231) (not e!2510423))))

(declare-fun lt!1441328 () List!43405)

(assert (=> b!4045869 (= res!1648231 (= lt!1441328 lt!1441294))))

(assert (=> b!4045869 (= lt!1441294 (++!11336 prefix!494 newSuffix!27))))

(assert (=> b!4045869 (= lt!1441328 (++!11336 lt!1441296 newSuffixResult!27))))

(declare-fun b!4045870 () Bool)

(assert (=> b!4045870 (= e!2510430 e!2510431)))

(declare-fun res!1648229 () Bool)

(assert (=> b!4045870 (=> res!1648229 e!2510431)))

(assert (=> b!4045870 (= res!1648229 (not (= lt!1441333 lt!1441294)))))

(assert (=> b!4045870 (= lt!1441333 (++!11336 lt!1441314 lt!1441283))))

(assert (=> b!4045870 (= lt!1441283 (getSuffix!2438 lt!1441294 lt!1441314))))

(declare-fun b!4045871 () Bool)

(assert (=> b!4045871 (= e!2510434 e!2510448)))

(declare-fun res!1648228 () Bool)

(assert (=> b!4045871 (=> res!1648228 e!2510448)))

(assert (=> b!4045871 (= res!1648228 (not (= lt!1441311 suffix!1299)))))

(assert (=> b!4045871 (= lt!1441311 (++!11336 newSuffix!27 lt!1441303))))

(assert (=> b!4045871 (= lt!1441303 (getSuffix!2438 suffix!1299 newSuffix!27))))

(declare-fun b!4045872 () Bool)

(assert (=> b!4045872 (= e!2510439 e!2510430)))

(declare-fun res!1648214 () Bool)

(assert (=> b!4045872 (=> res!1648214 e!2510430)))

(assert (=> b!4045872 (= res!1648214 (not (isPrefix!4021 lt!1441314 lt!1441304)))))

(assert (=> b!4045872 (isPrefix!4021 lt!1441314 lt!1441323)))

(declare-fun lt!1441329 () Unit!62527)

(assert (=> b!4045872 (= lt!1441329 (lemmaPrefixStaysPrefixWhenAddingToSuffix!814 lt!1441314 lt!1441294 lt!1441303))))

(declare-fun b!4045873 () Bool)

(declare-fun res!1648232 () Bool)

(assert (=> b!4045873 (=> (not res!1648232) (not e!2510446))))

(declare-fun rulesInvariant!5866 (LexerInterface!6523 List!43407) Bool)

(assert (=> b!4045873 (= res!1648232 (rulesInvariant!5866 thiss!21717 rules!2999))))

(declare-fun b!4045874 () Bool)

(declare-fun tp!1227767 () Bool)

(assert (=> b!4045874 (= e!2510450 (and tp_is_empty!20649 tp!1227767))))

(declare-fun b!4045875 () Bool)

(assert (=> b!4045875 (= e!2510442 false)))

(assert (=> b!4045875 (not (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441314))))

(declare-fun lt!1441286 () Unit!62527)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!460 (LexerInterface!6523 List!43407 Rule!13668 List!43405 List!43405 List!43405 Rule!13668) Unit!62527)

(assert (=> b!4045875 (= lt!1441286 (lemmaMaxPrefixOutputsMaxPrefix!460 thiss!21717 rules!2999 (rule!10010 token!484) lt!1441296 lt!1441304 lt!1441314 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun b!4045876 () Bool)

(declare-fun tp!1227768 () Bool)

(assert (=> b!4045876 (= e!2510443 (and tp_is_empty!20649 tp!1227768))))

(declare-fun b!4045877 () Bool)

(declare-fun res!1648212 () Bool)

(assert (=> b!4045877 (=> res!1648212 e!2510442)))

(assert (=> b!4045877 (= res!1648212 (not (contains!8604 rules!2999 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4045878 () Bool)

(declare-fun tp!1227771 () Bool)

(declare-fun inv!21 (TokenValue!7164) Bool)

(assert (=> b!4045878 (= e!2510444 (and (inv!21 (value!218253 token!484)) e!2510421 tp!1227771))))

(declare-fun b!4045879 () Bool)

(assert (=> b!4045879 (= e!2510423 e!2510435)))

(declare-fun res!1648217 () Bool)

(assert (=> b!4045879 (=> (not res!1648217) (not e!2510435))))

(declare-fun lt!1441321 () Option!9348)

(assert (=> b!4045879 (= res!1648217 (= lt!1441302 lt!1441321))))

(declare-fun lt!1441290 () tuple2!42354)

(assert (=> b!4045879 (= lt!1441321 (Some!9347 lt!1441290))))

(declare-fun maxPrefix!3821 (LexerInterface!6523 List!43407 List!43405) Option!9348)

(assert (=> b!4045879 (= lt!1441302 (maxPrefix!3821 thiss!21717 rules!2999 lt!1441304))))

(assert (=> b!4045879 (= lt!1441290 (tuple2!42355 token!484 suffixResult!105))))

(assert (=> b!4045879 (= lt!1441304 (++!11336 prefix!494 suffix!1299))))

(declare-fun b!4045880 () Bool)

(assert (=> b!4045880 (= e!2510428 e!2510419)))

(declare-fun res!1648233 () Bool)

(assert (=> b!4045880 (=> res!1648233 e!2510419)))

(declare-fun lt!1441299 () Option!9348)

(assert (=> b!4045880 (= res!1648233 (not (= lt!1441299 lt!1441321)))))

(assert (=> b!4045880 (= lt!1441299 (Some!9347 (tuple2!42355 lt!1441313 suffixResult!105)))))

(assert (=> b!4045880 (= lt!1441299 (maxPrefixOneRule!2833 thiss!21717 (rule!10010 token!484) lt!1441304))))

(assert (=> b!4045880 (= lt!1441313 (Token!13007 lt!1441318 (rule!10010 token!484) lt!1441327 lt!1441296))))

(assert (=> b!4045880 (= lt!1441318 (apply!10123 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 lt!1441296)))))

(declare-fun lt!1441316 () Unit!62527)

(assert (=> b!4045880 (= lt!1441316 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1639 thiss!21717 rules!2999 lt!1441296 lt!1441304 suffixResult!105 (rule!10010 token!484)))))

(assert (=> b!4045880 (= lt!1441278 suffixResult!105)))

(declare-fun lt!1441281 () Unit!62527)

(assert (=> b!4045880 (= lt!1441281 (lemmaSamePrefixThenSameSuffix!2182 lt!1441296 lt!1441278 lt!1441296 suffixResult!105 lt!1441304))))

(assert (=> b!4045880 (isPrefix!4021 lt!1441296 lt!1441301)))

(declare-fun lt!1441325 () Unit!62527)

(assert (=> b!4045880 (= lt!1441325 (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441296 lt!1441278))))

(declare-fun b!4045881 () Bool)

(declare-fun res!1648225 () Bool)

(assert (=> b!4045881 (=> (not res!1648225) (not e!2510446))))

(assert (=> b!4045881 (= res!1648225 (>= (size!32358 suffix!1299) (size!32358 newSuffix!27)))))

(declare-fun b!4045882 () Bool)

(declare-fun tp!1227778 () Bool)

(assert (=> b!4045882 (= e!2510420 (and tp_is_empty!20649 tp!1227778))))

(declare-fun b!4045883 () Bool)

(assert (=> b!4045883 (= e!2510440 e!2510422)))

(declare-fun res!1648219 () Bool)

(assert (=> b!4045883 (=> res!1648219 e!2510422)))

(assert (=> b!4045883 (= res!1648219 (not ((_ is Some!9347) lt!1441282)))))

(assert (=> b!4045883 (= lt!1441282 (maxPrefix!3821 thiss!21717 rules!2999 lt!1441294))))

(assert (=> b!4045883 (and (= suffixResult!105 lt!1441319) (= lt!1441290 (tuple2!42355 lt!1441313 lt!1441319)))))

(declare-fun lt!1441308 () Unit!62527)

(assert (=> b!4045883 (= lt!1441308 (lemmaSamePrefixThenSameSuffix!2182 lt!1441296 suffixResult!105 lt!1441296 lt!1441319 lt!1441304))))

(assert (=> b!4045883 (isPrefix!4021 lt!1441296 lt!1441287)))

(declare-fun lt!1441295 () Unit!62527)

(assert (=> b!4045883 (= lt!1441295 (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441296 lt!1441319))))

(declare-fun b!4045884 () Bool)

(declare-fun res!1648222 () Bool)

(assert (=> b!4045884 (=> (not res!1648222) (not e!2510446))))

(assert (=> b!4045884 (= res!1648222 (isPrefix!4021 newSuffix!27 suffix!1299))))

(assert (= (and start!381500 res!1648235) b!4045857))

(assert (= (and b!4045857 res!1648226) b!4045873))

(assert (= (and b!4045873 res!1648232) b!4045881))

(assert (= (and b!4045881 res!1648225) b!4045884))

(assert (= (and b!4045884 res!1648222) b!4045868))

(assert (= (and b!4045868 res!1648221) b!4045869))

(assert (= (and b!4045869 res!1648231) b!4045879))

(assert (= (and b!4045879 res!1648217) b!4045853))

(assert (= (and b!4045853 (not res!1648223)) b!4045863))

(assert (= (and b!4045863 (not res!1648230)) b!4045856))

(assert (= (and b!4045856 (not res!1648237)) b!4045861))

(assert (= (and b!4045861 (not res!1648239)) b!4045880))

(assert (= (and b!4045880 (not res!1648233)) b!4045854))

(assert (= (and b!4045854 (not res!1648213)) b!4045858))

(assert (= (and b!4045858 res!1648210) b!4045860))

(assert (= (and b!4045860 res!1648234) b!4045865))

(assert (= (and b!4045865 res!1648236) b!4045851))

(assert (= (and b!4045858 (not res!1648227)) b!4045883))

(assert (= (and b!4045883 (not res!1648219)) b!4045862))

(assert (= (and b!4045862 (not res!1648220)) b!4045871))

(assert (= (and b!4045871 (not res!1648228)) b!4045847))

(assert (= (and b!4045847 (not res!1648211)) b!4045872))

(assert (= (and b!4045872 (not res!1648214)) b!4045846))

(assert (= (and b!4045846 (not res!1648218)) b!4045870))

(assert (= (and b!4045870 (not res!1648229)) b!4045867))

(assert (= (and b!4045867 (not res!1648238)) b!4045852))

(assert (= (and b!4045852 (not res!1648224)) b!4045859))

(assert (= (and b!4045859 (not res!1648216)) b!4045877))

(assert (= (and b!4045877 (not res!1648212)) b!4045848))

(assert (= (and b!4045848 (not res!1648215)) b!4045875))

(assert (= (and start!381500 ((_ is Cons!43281) prefix!494)) b!4045874))

(assert (= b!4045864 b!4045849))

(assert (= b!4045878 b!4045864))

(assert (= start!381500 b!4045878))

(assert (= (and start!381500 ((_ is Cons!43281) suffixResult!105)) b!4045876))

(assert (= (and start!381500 ((_ is Cons!43281) suffix!1299)) b!4045844))

(assert (= (and start!381500 ((_ is Cons!43281) newSuffix!27)) b!4045882))

(assert (= b!4045845 b!4045850))

(assert (= b!4045855 b!4045845))

(assert (= (and start!381500 ((_ is Cons!43283) rules!2999)) b!4045855))

(assert (= (and start!381500 ((_ is Cons!43281) newSuffixResult!27)) b!4045866))

(declare-fun m!4644313 () Bool)

(assert (=> b!4045871 m!4644313))

(declare-fun m!4644315 () Bool)

(assert (=> b!4045871 m!4644315))

(declare-fun m!4644317 () Bool)

(assert (=> b!4045880 m!4644317))

(declare-fun m!4644319 () Bool)

(assert (=> b!4045880 m!4644319))

(declare-fun m!4644321 () Bool)

(assert (=> b!4045880 m!4644321))

(declare-fun m!4644323 () Bool)

(assert (=> b!4045880 m!4644323))

(assert (=> b!4045880 m!4644319))

(declare-fun m!4644325 () Bool)

(assert (=> b!4045880 m!4644325))

(declare-fun m!4644327 () Bool)

(assert (=> b!4045880 m!4644327))

(declare-fun m!4644329 () Bool)

(assert (=> b!4045880 m!4644329))

(declare-fun m!4644331 () Bool)

(assert (=> b!4045856 m!4644331))

(declare-fun m!4644333 () Bool)

(assert (=> b!4045856 m!4644333))

(declare-fun m!4644335 () Bool)

(assert (=> b!4045856 m!4644335))

(declare-fun m!4644337 () Bool)

(assert (=> b!4045856 m!4644337))

(declare-fun m!4644339 () Bool)

(assert (=> b!4045857 m!4644339))

(declare-fun m!4644341 () Bool)

(assert (=> b!4045875 m!4644341))

(declare-fun m!4644343 () Bool)

(assert (=> b!4045875 m!4644343))

(declare-fun m!4644345 () Bool)

(assert (=> b!4045872 m!4644345))

(declare-fun m!4644347 () Bool)

(assert (=> b!4045872 m!4644347))

(declare-fun m!4644349 () Bool)

(assert (=> b!4045872 m!4644349))

(declare-fun m!4644351 () Bool)

(assert (=> b!4045881 m!4644351))

(declare-fun m!4644353 () Bool)

(assert (=> b!4045881 m!4644353))

(declare-fun m!4644355 () Bool)

(assert (=> b!4045869 m!4644355))

(declare-fun m!4644357 () Bool)

(assert (=> b!4045869 m!4644357))

(declare-fun m!4644359 () Bool)

(assert (=> b!4045863 m!4644359))

(declare-fun m!4644361 () Bool)

(assert (=> b!4045863 m!4644361))

(declare-fun m!4644363 () Bool)

(assert (=> b!4045863 m!4644363))

(declare-fun m!4644365 () Bool)

(assert (=> b!4045863 m!4644365))

(declare-fun m!4644367 () Bool)

(assert (=> b!4045863 m!4644367))

(declare-fun m!4644369 () Bool)

(assert (=> b!4045868 m!4644369))

(declare-fun m!4644371 () Bool)

(assert (=> b!4045868 m!4644371))

(declare-fun m!4644373 () Bool)

(assert (=> b!4045868 m!4644373))

(assert (=> b!4045868 m!4644373))

(declare-fun m!4644375 () Bool)

(assert (=> b!4045868 m!4644375))

(declare-fun m!4644377 () Bool)

(assert (=> b!4045879 m!4644377))

(declare-fun m!4644379 () Bool)

(assert (=> b!4045879 m!4644379))

(declare-fun m!4644381 () Bool)

(assert (=> b!4045865 m!4644381))

(declare-fun m!4644383 () Bool)

(assert (=> b!4045862 m!4644383))

(declare-fun m!4644385 () Bool)

(assert (=> b!4045862 m!4644385))

(declare-fun m!4644387 () Bool)

(assert (=> b!4045862 m!4644387))

(declare-fun m!4644389 () Bool)

(assert (=> b!4045862 m!4644389))

(declare-fun m!4644391 () Bool)

(assert (=> b!4045862 m!4644391))

(declare-fun m!4644393 () Bool)

(assert (=> b!4045862 m!4644393))

(declare-fun m!4644395 () Bool)

(assert (=> b!4045862 m!4644395))

(declare-fun m!4644397 () Bool)

(assert (=> b!4045862 m!4644397))

(assert (=> b!4045862 m!4644387))

(declare-fun m!4644399 () Bool)

(assert (=> b!4045862 m!4644399))

(declare-fun m!4644401 () Bool)

(assert (=> b!4045862 m!4644401))

(assert (=> b!4045862 m!4644389))

(declare-fun m!4644403 () Bool)

(assert (=> b!4045862 m!4644403))

(declare-fun m!4644405 () Bool)

(assert (=> b!4045862 m!4644405))

(declare-fun m!4644407 () Bool)

(assert (=> b!4045862 m!4644407))

(declare-fun m!4644409 () Bool)

(assert (=> b!4045862 m!4644409))

(assert (=> b!4045862 m!4644407))

(declare-fun m!4644411 () Bool)

(assert (=> b!4045862 m!4644411))

(declare-fun m!4644413 () Bool)

(assert (=> b!4045862 m!4644413))

(declare-fun m!4644415 () Bool)

(assert (=> b!4045862 m!4644415))

(declare-fun m!4644417 () Bool)

(assert (=> b!4045862 m!4644417))

(declare-fun m!4644419 () Bool)

(assert (=> b!4045864 m!4644419))

(declare-fun m!4644421 () Bool)

(assert (=> b!4045864 m!4644421))

(declare-fun m!4644423 () Bool)

(assert (=> b!4045858 m!4644423))

(declare-fun m!4644425 () Bool)

(assert (=> b!4045858 m!4644425))

(declare-fun m!4644427 () Bool)

(assert (=> b!4045858 m!4644427))

(declare-fun m!4644429 () Bool)

(assert (=> b!4045858 m!4644429))

(declare-fun m!4644431 () Bool)

(assert (=> start!381500 m!4644431))

(declare-fun m!4644433 () Bool)

(assert (=> b!4045852 m!4644433))

(declare-fun m!4644435 () Bool)

(assert (=> b!4045847 m!4644435))

(declare-fun m!4644437 () Bool)

(assert (=> b!4045847 m!4644437))

(declare-fun m!4644439 () Bool)

(assert (=> b!4045847 m!4644439))

(declare-fun m!4644441 () Bool)

(assert (=> b!4045878 m!4644441))

(declare-fun m!4644443 () Bool)

(assert (=> b!4045845 m!4644443))

(declare-fun m!4644445 () Bool)

(assert (=> b!4045845 m!4644445))

(declare-fun m!4644447 () Bool)

(assert (=> b!4045873 m!4644447))

(declare-fun m!4644449 () Bool)

(assert (=> b!4045867 m!4644449))

(declare-fun m!4644451 () Bool)

(assert (=> b!4045867 m!4644451))

(declare-fun m!4644453 () Bool)

(assert (=> b!4045867 m!4644453))

(declare-fun m!4644455 () Bool)

(assert (=> b!4045883 m!4644455))

(declare-fun m!4644457 () Bool)

(assert (=> b!4045883 m!4644457))

(declare-fun m!4644459 () Bool)

(assert (=> b!4045883 m!4644459))

(declare-fun m!4644461 () Bool)

(assert (=> b!4045883 m!4644461))

(declare-fun m!4644463 () Bool)

(assert (=> b!4045884 m!4644463))

(declare-fun m!4644465 () Bool)

(assert (=> b!4045870 m!4644465))

(declare-fun m!4644467 () Bool)

(assert (=> b!4045870 m!4644467))

(declare-fun m!4644469 () Bool)

(assert (=> b!4045877 m!4644469))

(declare-fun m!4644471 () Bool)

(assert (=> b!4045854 m!4644471))

(declare-fun m!4644473 () Bool)

(assert (=> b!4045854 m!4644473))

(declare-fun m!4644475 () Bool)

(assert (=> b!4045854 m!4644475))

(declare-fun m!4644477 () Bool)

(assert (=> b!4045854 m!4644477))

(declare-fun m!4644479 () Bool)

(assert (=> b!4045853 m!4644479))

(declare-fun m!4644481 () Bool)

(assert (=> b!4045853 m!4644481))

(declare-fun m!4644483 () Bool)

(assert (=> b!4045853 m!4644483))

(declare-fun m!4644485 () Bool)

(assert (=> b!4045853 m!4644485))

(declare-fun m!4644487 () Bool)

(assert (=> b!4045861 m!4644487))

(declare-fun m!4644489 () Bool)

(assert (=> b!4045861 m!4644489))

(declare-fun m!4644491 () Bool)

(assert (=> b!4045861 m!4644491))

(declare-fun m!4644493 () Bool)

(assert (=> b!4045861 m!4644493))

(declare-fun m!4644495 () Bool)

(assert (=> b!4045859 m!4644495))

(check-sat (not b!4045881) (not b!4045865) (not b!4045878) (not b!4045855) (not start!381500) b_and!311111 (not b!4045867) b_and!311109 (not b!4045872) (not b!4045861) (not b!4045845) (not b!4045873) (not b!4045864) tp_is_empty!20649 (not b!4045844) (not b!4045871) b_and!311113 (not b_next!113359) (not b!4045868) (not b!4045863) (not b!4045858) (not b!4045859) (not b!4045847) (not b!4045884) (not b!4045862) (not b!4045877) (not b!4045854) (not b!4045870) (not b!4045874) (not b!4045853) (not b_next!113357) (not b!4045879) (not b!4045857) (not b!4045876) (not b!4045883) (not b!4045852) (not b_next!113353) (not b!4045880) (not b!4045882) (not b!4045869) (not b!4045856) (not b_next!113355) b_and!311107 (not b!4045875) (not b!4045866))
(check-sat b_and!311113 (not b_next!113359) (not b_next!113357) (not b_next!113353) b_and!311111 b_and!311109 (not b_next!113355) b_and!311107)
(get-model)

(declare-fun b!4046053 () Bool)

(declare-fun e!2510553 () Bool)

(declare-fun tail!6289 (List!43405) List!43405)

(assert (=> b!4046053 (= e!2510553 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 (++!11336 lt!1441314 newSuffixResult!27))))))

(declare-fun d!1200740 () Bool)

(declare-fun e!2510552 () Bool)

(assert (=> d!1200740 e!2510552))

(declare-fun res!1648341 () Bool)

(assert (=> d!1200740 (=> res!1648341 e!2510552)))

(declare-fun lt!1441382 () Bool)

(assert (=> d!1200740 (= res!1648341 (not lt!1441382))))

(declare-fun e!2510551 () Bool)

(assert (=> d!1200740 (= lt!1441382 e!2510551)))

(declare-fun res!1648343 () Bool)

(assert (=> d!1200740 (=> res!1648343 e!2510551)))

(assert (=> d!1200740 (= res!1648343 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200740 (= (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 newSuffixResult!27)) lt!1441382)))

(declare-fun b!4046051 () Bool)

(assert (=> b!4046051 (= e!2510551 e!2510553)))

(declare-fun res!1648342 () Bool)

(assert (=> b!4046051 (=> (not res!1648342) (not e!2510553))))

(assert (=> b!4046051 (= res!1648342 (not ((_ is Nil!43281) (++!11336 lt!1441314 newSuffixResult!27))))))

(declare-fun b!4046052 () Bool)

(declare-fun res!1648344 () Bool)

(assert (=> b!4046052 (=> (not res!1648344) (not e!2510553))))

(declare-fun head!8557 (List!43405) C!23864)

(assert (=> b!4046052 (= res!1648344 (= (head!8557 lt!1441314) (head!8557 (++!11336 lt!1441314 newSuffixResult!27))))))

(declare-fun b!4046054 () Bool)

(assert (=> b!4046054 (= e!2510552 (>= (size!32358 (++!11336 lt!1441314 newSuffixResult!27)) (size!32358 lt!1441314)))))

(assert (= (and d!1200740 (not res!1648343)) b!4046051))

(assert (= (and b!4046051 res!1648342) b!4046052))

(assert (= (and b!4046052 res!1648344) b!4046053))

(assert (= (and d!1200740 (not res!1648341)) b!4046054))

(declare-fun m!4644691 () Bool)

(assert (=> b!4046053 m!4644691))

(assert (=> b!4046053 m!4644389))

(declare-fun m!4644693 () Bool)

(assert (=> b!4046053 m!4644693))

(assert (=> b!4046053 m!4644691))

(assert (=> b!4046053 m!4644693))

(declare-fun m!4644695 () Bool)

(assert (=> b!4046053 m!4644695))

(declare-fun m!4644697 () Bool)

(assert (=> b!4046052 m!4644697))

(assert (=> b!4046052 m!4644389))

(declare-fun m!4644699 () Bool)

(assert (=> b!4046052 m!4644699))

(assert (=> b!4046054 m!4644389))

(declare-fun m!4644701 () Bool)

(assert (=> b!4046054 m!4644701))

(assert (=> b!4046054 m!4644397))

(assert (=> b!4045862 d!1200740))

(declare-fun d!1200742 () Bool)

(assert (=> d!1200742 (ruleValid!2864 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))

(declare-fun lt!1441385 () Unit!62527)

(declare-fun choose!24522 (LexerInterface!6523 Rule!13668 List!43407) Unit!62527)

(assert (=> d!1200742 (= lt!1441385 (choose!24522 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) rules!2999))))

(assert (=> d!1200742 (contains!8604 rules!2999 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))

(assert (=> d!1200742 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1934 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) rules!2999) lt!1441385)))

(declare-fun bs!591207 () Bool)

(assert (= bs!591207 d!1200742))

(assert (=> bs!591207 m!4644401))

(declare-fun m!4644703 () Bool)

(assert (=> bs!591207 m!4644703))

(assert (=> bs!591207 m!4644469))

(assert (=> b!4045862 d!1200742))

(declare-fun d!1200744 () Bool)

(assert (=> d!1200744 (= (size!32357 (_1!24311 (v!39751 lt!1441282))) (size!32358 (originalCharacters!7534 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun Unit!62529 () Unit!62527)

(assert (=> d!1200744 (= (lemmaCharactersSize!1453 (_1!24311 (v!39751 lt!1441282))) Unit!62529)))

(declare-fun bs!591208 () Bool)

(assert (= bs!591208 d!1200744))

(declare-fun m!4644705 () Bool)

(assert (=> bs!591208 m!4644705))

(assert (=> b!4045862 d!1200744))

(declare-fun d!1200746 () Bool)

(assert (=> d!1200746 (= (size!32357 token!484) (size!32358 (originalCharacters!7534 token!484)))))

(declare-fun Unit!62530 () Unit!62527)

(assert (=> d!1200746 (= (lemmaCharactersSize!1453 token!484) Unit!62530)))

(declare-fun bs!591209 () Bool)

(assert (= bs!591209 d!1200746))

(assert (=> bs!591209 m!4644381))

(assert (=> b!4045862 d!1200746))

(declare-fun d!1200748 () Bool)

(declare-fun fromListB!2347 (List!43405) BalanceConc!25884)

(assert (=> d!1200748 (= (seqFromList!5151 lt!1441314) (fromListB!2347 lt!1441314))))

(declare-fun bs!591210 () Bool)

(assert (= bs!591210 d!1200748))

(declare-fun m!4644707 () Bool)

(assert (=> bs!591210 m!4644707))

(assert (=> b!4045862 d!1200748))

(declare-fun d!1200750 () Bool)

(declare-fun dynLambda!18380 (Int BalanceConc!25884) TokenValue!7164)

(assert (=> d!1200750 (= (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 lt!1441314)) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314)))))

(declare-fun b_lambda!118197 () Bool)

(assert (=> (not b_lambda!118197) (not d!1200750)))

(declare-fun t!335510 () Bool)

(declare-fun tb!243333 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335510) tb!243333))

(declare-fun result!294880 () Bool)

(assert (=> tb!243333 (= result!294880 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314))))))

(declare-fun m!4644717 () Bool)

(assert (=> tb!243333 m!4644717))

(assert (=> d!1200750 t!335510))

(declare-fun b_and!311119 () Bool)

(assert (= b_and!311107 (and (=> t!335510 result!294880) b_and!311119)))

(declare-fun tb!243335 () Bool)

(declare-fun t!335512 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335512) tb!243335))

(declare-fun result!294884 () Bool)

(assert (= result!294884 result!294880))

(assert (=> d!1200750 t!335512))

(declare-fun b_and!311121 () Bool)

(assert (= b_and!311111 (and (=> t!335512 result!294884) b_and!311121)))

(assert (=> d!1200750 m!4644407))

(declare-fun m!4644739 () Bool)

(assert (=> d!1200750 m!4644739))

(assert (=> b!4045862 d!1200750))

(declare-fun b!4046145 () Bool)

(declare-fun e!2510604 () List!43405)

(assert (=> b!4046145 (= e!2510604 (Cons!43281 (h!48701 lt!1441314) (++!11336 (t!335502 lt!1441314) newSuffixResult!27)))))

(declare-fun b!4046146 () Bool)

(declare-fun res!1648411 () Bool)

(declare-fun e!2510603 () Bool)

(assert (=> b!4046146 (=> (not res!1648411) (not e!2510603))))

(declare-fun lt!1441425 () List!43405)

(assert (=> b!4046146 (= res!1648411 (= (size!32358 lt!1441425) (+ (size!32358 lt!1441314) (size!32358 newSuffixResult!27))))))

(declare-fun b!4046147 () Bool)

(assert (=> b!4046147 (= e!2510603 (or (not (= newSuffixResult!27 Nil!43281)) (= lt!1441425 lt!1441314)))))

(declare-fun b!4046144 () Bool)

(assert (=> b!4046144 (= e!2510604 newSuffixResult!27)))

(declare-fun d!1200752 () Bool)

(assert (=> d!1200752 e!2510603))

(declare-fun res!1648410 () Bool)

(assert (=> d!1200752 (=> (not res!1648410) (not e!2510603))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6586 (List!43405) (InoxSet C!23864))

(assert (=> d!1200752 (= res!1648410 (= (content!6586 lt!1441425) ((_ map or) (content!6586 lt!1441314) (content!6586 newSuffixResult!27))))))

(assert (=> d!1200752 (= lt!1441425 e!2510604)))

(declare-fun c!698937 () Bool)

(assert (=> d!1200752 (= c!698937 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200752 (= (++!11336 lt!1441314 newSuffixResult!27) lt!1441425)))

(assert (= (and d!1200752 c!698937) b!4046144))

(assert (= (and d!1200752 (not c!698937)) b!4046145))

(assert (= (and d!1200752 res!1648410) b!4046146))

(assert (= (and b!4046146 res!1648411) b!4046147))

(declare-fun m!4644851 () Bool)

(assert (=> b!4046145 m!4644851))

(declare-fun m!4644853 () Bool)

(assert (=> b!4046146 m!4644853))

(assert (=> b!4046146 m!4644397))

(declare-fun m!4644855 () Bool)

(assert (=> b!4046146 m!4644855))

(declare-fun m!4644857 () Bool)

(assert (=> d!1200752 m!4644857))

(declare-fun m!4644859 () Bool)

(assert (=> d!1200752 m!4644859))

(declare-fun m!4644861 () Bool)

(assert (=> d!1200752 m!4644861))

(assert (=> b!4045862 d!1200752))

(declare-fun d!1200792 () Bool)

(assert (=> d!1200792 (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 newSuffixResult!27))))

(declare-fun lt!1441431 () Unit!62527)

(declare-fun choose!24523 (List!43405 List!43405) Unit!62527)

(assert (=> d!1200792 (= lt!1441431 (choose!24523 lt!1441314 newSuffixResult!27))))

(assert (=> d!1200792 (= (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441314 newSuffixResult!27) lt!1441431)))

(declare-fun bs!591219 () Bool)

(assert (= bs!591219 d!1200792))

(assert (=> bs!591219 m!4644389))

(assert (=> bs!591219 m!4644389))

(assert (=> bs!591219 m!4644403))

(declare-fun m!4644865 () Bool)

(assert (=> bs!591219 m!4644865))

(assert (=> b!4045862 d!1200792))

(declare-fun d!1200796 () Bool)

(declare-fun lt!1441435 () BalanceConc!25884)

(assert (=> d!1200796 (= (list!16120 lt!1441435) (originalCharacters!7534 (_1!24311 (v!39751 lt!1441282))))))

(declare-fun dynLambda!18381 (Int TokenValue!7164) BalanceConc!25884)

(assert (=> d!1200796 (= lt!1441435 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1200796 (= (charsOf!4750 (_1!24311 (v!39751 lt!1441282))) lt!1441435)))

(declare-fun b_lambda!118203 () Bool)

(assert (=> (not b_lambda!118203) (not d!1200796)))

(declare-fun t!335518 () Bool)

(declare-fun tb!243341 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335518) tb!243341))

(declare-fun b!4046164 () Bool)

(declare-fun e!2510616 () Bool)

(declare-fun tp!1227784 () Bool)

(declare-fun inv!57854 (Conc!13145) Bool)

(assert (=> b!4046164 (= e!2510616 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))) tp!1227784))))

(declare-fun result!294892 () Bool)

(declare-fun inv!57855 (BalanceConc!25884) Bool)

(assert (=> tb!243341 (= result!294892 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))) e!2510616))))

(assert (= tb!243341 b!4046164))

(declare-fun m!4644883 () Bool)

(assert (=> b!4046164 m!4644883))

(declare-fun m!4644885 () Bool)

(assert (=> tb!243341 m!4644885))

(assert (=> d!1200796 t!335518))

(declare-fun b_and!311131 () Bool)

(assert (= b_and!311109 (and (=> t!335518 result!294892) b_and!311131)))

(declare-fun tb!243343 () Bool)

(declare-fun t!335520 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335520) tb!243343))

(declare-fun result!294896 () Bool)

(assert (= result!294896 result!294892))

(assert (=> d!1200796 t!335520))

(declare-fun b_and!311133 () Bool)

(assert (= b_and!311113 (and (=> t!335520 result!294896) b_and!311133)))

(declare-fun m!4644887 () Bool)

(assert (=> d!1200796 m!4644887))

(declare-fun m!4644889 () Bool)

(assert (=> d!1200796 m!4644889))

(assert (=> b!4045862 d!1200796))

(declare-fun b!4046280 () Bool)

(declare-fun e!2510678 () Bool)

(declare-fun lt!1441500 () Option!9348)

(declare-fun get!14199 (Option!9348) tuple2!42354)

(assert (=> b!4046280 (= e!2510678 (= (size!32357 (_1!24311 (get!14199 lt!1441500))) (size!32358 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500))))))))

(declare-fun d!1200804 () Bool)

(declare-fun e!2510680 () Bool)

(assert (=> d!1200804 e!2510680))

(declare-fun res!1648509 () Bool)

(assert (=> d!1200804 (=> res!1648509 e!2510680)))

(declare-fun isEmpty!25830 (Option!9348) Bool)

(assert (=> d!1200804 (= res!1648509 (isEmpty!25830 lt!1441500))))

(declare-fun e!2510677 () Option!9348)

(assert (=> d!1200804 (= lt!1441500 e!2510677)))

(declare-fun c!698953 () Bool)

(declare-datatypes ((tuple2!42356 0))(
  ( (tuple2!42357 (_1!24312 List!43405) (_2!24312 List!43405)) )
))
(declare-fun lt!1441501 () tuple2!42356)

(declare-fun isEmpty!25831 (List!43405) Bool)

(assert (=> d!1200804 (= c!698953 (isEmpty!25831 (_1!24312 lt!1441501)))))

(declare-fun findLongestMatch!1303 (Regex!11839 List!43405) tuple2!42356)

(assert (=> d!1200804 (= lt!1441501 (findLongestMatch!1303 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441294))))

(assert (=> d!1200804 (ruleValid!2864 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))

(assert (=> d!1200804 (= (maxPrefixOneRule!2833 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) lt!1441294) lt!1441500)))

(declare-fun b!4046281 () Bool)

(assert (=> b!4046281 (= e!2510677 None!9347)))

(declare-fun b!4046282 () Bool)

(declare-fun res!1648510 () Bool)

(assert (=> b!4046282 (=> (not res!1648510) (not e!2510678))))

(assert (=> b!4046282 (= res!1648510 (< (size!32358 (_2!24311 (get!14199 lt!1441500))) (size!32358 lt!1441294)))))

(declare-fun b!4046283 () Bool)

(declare-fun res!1648507 () Bool)

(assert (=> b!4046283 (=> (not res!1648507) (not e!2510678))))

(assert (=> b!4046283 (= res!1648507 (= (value!218253 (_1!24311 (get!14199 lt!1441500))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500)))))))))

(declare-fun b!4046284 () Bool)

(declare-fun e!2510679 () Bool)

(declare-fun findLongestMatchInner!1390 (Regex!11839 List!43405 Int List!43405 List!43405 Int) tuple2!42356)

(assert (=> b!4046284 (= e!2510679 (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(declare-fun b!4046285 () Bool)

(declare-fun size!32359 (BalanceConc!25884) Int)

(assert (=> b!4046285 (= e!2510677 (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 (_1!24312 lt!1441501))) (rule!10010 (_1!24311 (v!39751 lt!1441282))) (size!32359 (seqFromList!5151 (_1!24312 lt!1441501))) (_1!24312 lt!1441501)) (_2!24312 lt!1441501))))))

(declare-fun lt!1441502 () Unit!62527)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1363 (Regex!11839 List!43405) Unit!62527)

(assert (=> b!4046285 (= lt!1441502 (longestMatchIsAcceptedByMatchOrIsEmpty!1363 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441294))))

(declare-fun res!1648511 () Bool)

(assert (=> b!4046285 (= res!1648511 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(assert (=> b!4046285 (=> res!1648511 e!2510679)))

(assert (=> b!4046285 e!2510679))

(declare-fun lt!1441498 () Unit!62527)

(assert (=> b!4046285 (= lt!1441498 lt!1441502)))

(declare-fun lt!1441499 () Unit!62527)

(declare-fun lemmaSemiInverse!1912 (TokenValueInjection!13756 BalanceConc!25884) Unit!62527)

(assert (=> b!4046285 (= lt!1441499 (lemmaSemiInverse!1912 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 (_1!24312 lt!1441501))))))

(declare-fun b!4046286 () Bool)

(declare-fun res!1648512 () Bool)

(assert (=> b!4046286 (=> (not res!1648512) (not e!2510678))))

(assert (=> b!4046286 (= res!1648512 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500)))) (_2!24311 (get!14199 lt!1441500))) lt!1441294))))

(declare-fun b!4046287 () Bool)

(assert (=> b!4046287 (= e!2510680 e!2510678)))

(declare-fun res!1648506 () Bool)

(assert (=> b!4046287 (=> (not res!1648506) (not e!2510678))))

(assert (=> b!4046287 (= res!1648506 (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))))))

(declare-fun b!4046288 () Bool)

(declare-fun res!1648508 () Bool)

(assert (=> b!4046288 (=> (not res!1648508) (not e!2510678))))

(assert (=> b!4046288 (= res!1648508 (= (rule!10010 (_1!24311 (get!14199 lt!1441500))) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (= (and d!1200804 c!698953) b!4046281))

(assert (= (and d!1200804 (not c!698953)) b!4046285))

(assert (= (and b!4046285 (not res!1648511)) b!4046284))

(assert (= (and d!1200804 (not res!1648509)) b!4046287))

(assert (= (and b!4046287 res!1648506) b!4046286))

(assert (= (and b!4046286 res!1648512) b!4046282))

(assert (= (and b!4046282 res!1648510) b!4046288))

(assert (= (and b!4046288 res!1648508) b!4046283))

(assert (= (and b!4046283 res!1648507) b!4046280))

(declare-fun m!4645119 () Bool)

(assert (=> b!4046284 m!4645119))

(declare-fun m!4645121 () Bool)

(assert (=> b!4046284 m!4645121))

(assert (=> b!4046284 m!4645119))

(assert (=> b!4046284 m!4645121))

(declare-fun m!4645123 () Bool)

(assert (=> b!4046284 m!4645123))

(declare-fun m!4645125 () Bool)

(assert (=> b!4046284 m!4645125))

(declare-fun m!4645127 () Bool)

(assert (=> b!4046286 m!4645127))

(declare-fun m!4645129 () Bool)

(assert (=> b!4046286 m!4645129))

(assert (=> b!4046286 m!4645129))

(declare-fun m!4645131 () Bool)

(assert (=> b!4046286 m!4645131))

(assert (=> b!4046286 m!4645131))

(declare-fun m!4645133 () Bool)

(assert (=> b!4046286 m!4645133))

(declare-fun m!4645135 () Bool)

(assert (=> d!1200804 m!4645135))

(declare-fun m!4645137 () Bool)

(assert (=> d!1200804 m!4645137))

(declare-fun m!4645139 () Bool)

(assert (=> d!1200804 m!4645139))

(assert (=> d!1200804 m!4644401))

(assert (=> b!4046288 m!4645127))

(assert (=> b!4046280 m!4645127))

(declare-fun m!4645141 () Bool)

(assert (=> b!4046280 m!4645141))

(assert (=> b!4046285 m!4645121))

(assert (=> b!4046285 m!4645119))

(assert (=> b!4046285 m!4645121))

(assert (=> b!4046285 m!4645123))

(declare-fun m!4645143 () Bool)

(assert (=> b!4046285 m!4645143))

(declare-fun m!4645145 () Bool)

(assert (=> b!4046285 m!4645145))

(assert (=> b!4046285 m!4645143))

(assert (=> b!4046285 m!4645119))

(assert (=> b!4046285 m!4645143))

(declare-fun m!4645147 () Bool)

(assert (=> b!4046285 m!4645147))

(assert (=> b!4046285 m!4645143))

(declare-fun m!4645149 () Bool)

(assert (=> b!4046285 m!4645149))

(declare-fun m!4645151 () Bool)

(assert (=> b!4046285 m!4645151))

(declare-fun m!4645153 () Bool)

(assert (=> b!4046285 m!4645153))

(assert (=> b!4046283 m!4645127))

(declare-fun m!4645155 () Bool)

(assert (=> b!4046283 m!4645155))

(assert (=> b!4046283 m!4645155))

(declare-fun m!4645157 () Bool)

(assert (=> b!4046283 m!4645157))

(assert (=> b!4046282 m!4645127))

(declare-fun m!4645159 () Bool)

(assert (=> b!4046282 m!4645159))

(assert (=> b!4046282 m!4645121))

(assert (=> b!4046287 m!4645127))

(assert (=> b!4046287 m!4645129))

(assert (=> b!4046287 m!4645129))

(assert (=> b!4046287 m!4645131))

(assert (=> b!4046287 m!4645131))

(declare-fun m!4645161 () Bool)

(assert (=> b!4046287 m!4645161))

(assert (=> b!4045862 d!1200804))

(declare-fun b!4046309 () Bool)

(declare-fun e!2510699 () List!43405)

(assert (=> b!4046309 (= e!2510699 (Cons!43281 (h!48701 lt!1441314) (++!11336 (t!335502 lt!1441314) (_2!24311 (v!39751 lt!1441282)))))))

(declare-fun b!4046310 () Bool)

(declare-fun res!1648514 () Bool)

(declare-fun e!2510698 () Bool)

(assert (=> b!4046310 (=> (not res!1648514) (not e!2510698))))

(declare-fun lt!1441504 () List!43405)

(assert (=> b!4046310 (= res!1648514 (= (size!32358 lt!1441504) (+ (size!32358 lt!1441314) (size!32358 (_2!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4046311 () Bool)

(assert (=> b!4046311 (= e!2510698 (or (not (= (_2!24311 (v!39751 lt!1441282)) Nil!43281)) (= lt!1441504 lt!1441314)))))

(declare-fun b!4046308 () Bool)

(assert (=> b!4046308 (= e!2510699 (_2!24311 (v!39751 lt!1441282)))))

(declare-fun d!1200878 () Bool)

(assert (=> d!1200878 e!2510698))

(declare-fun res!1648513 () Bool)

(assert (=> d!1200878 (=> (not res!1648513) (not e!2510698))))

(assert (=> d!1200878 (= res!1648513 (= (content!6586 lt!1441504) ((_ map or) (content!6586 lt!1441314) (content!6586 (_2!24311 (v!39751 lt!1441282))))))))

(assert (=> d!1200878 (= lt!1441504 e!2510699)))

(declare-fun c!698955 () Bool)

(assert (=> d!1200878 (= c!698955 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200878 (= (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282))) lt!1441504)))

(assert (= (and d!1200878 c!698955) b!4046308))

(assert (= (and d!1200878 (not c!698955)) b!4046309))

(assert (= (and d!1200878 res!1648513) b!4046310))

(assert (= (and b!4046310 res!1648514) b!4046311))

(declare-fun m!4645167 () Bool)

(assert (=> b!4046309 m!4645167))

(declare-fun m!4645169 () Bool)

(assert (=> b!4046310 m!4645169))

(assert (=> b!4046310 m!4644397))

(declare-fun m!4645171 () Bool)

(assert (=> b!4046310 m!4645171))

(declare-fun m!4645173 () Bool)

(assert (=> d!1200878 m!4645173))

(assert (=> d!1200878 m!4644859))

(declare-fun m!4645175 () Bool)

(assert (=> d!1200878 m!4645175))

(assert (=> b!4045862 d!1200878))

(declare-fun d!1200880 () Bool)

(assert (=> d!1200880 (= (maxPrefixOneRule!2833 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) lt!1441294) (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 lt!1441314)) (rule!10010 (_1!24311 (v!39751 lt!1441282))) (size!32358 lt!1441314) lt!1441314) (_2!24311 (v!39751 lt!1441282)))))))

(declare-fun lt!1441507 () Unit!62527)

(declare-fun choose!24524 (LexerInterface!6523 List!43407 List!43405 List!43405 List!43405 Rule!13668) Unit!62527)

(assert (=> d!1200880 (= lt!1441507 (choose!24524 thiss!21717 rules!2999 lt!1441314 lt!1441294 (_2!24311 (v!39751 lt!1441282)) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1200880 (not (isEmpty!25827 rules!2999))))

(assert (=> d!1200880 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1639 thiss!21717 rules!2999 lt!1441314 lt!1441294 (_2!24311 (v!39751 lt!1441282)) (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441507)))

(declare-fun bs!591234 () Bool)

(assert (= bs!591234 d!1200880))

(assert (=> bs!591234 m!4644339))

(assert (=> bs!591234 m!4644407))

(assert (=> bs!591234 m!4644409))

(assert (=> bs!591234 m!4644407))

(assert (=> bs!591234 m!4644383))

(assert (=> bs!591234 m!4644397))

(declare-fun m!4645177 () Bool)

(assert (=> bs!591234 m!4645177))

(assert (=> b!4045862 d!1200880))

(declare-fun b!4046336 () Bool)

(declare-fun e!2510710 () Bool)

(assert (=> b!4046336 (= e!2510710 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441277)))))

(declare-fun d!1200882 () Bool)

(declare-fun e!2510709 () Bool)

(assert (=> d!1200882 e!2510709))

(declare-fun res!1648515 () Bool)

(assert (=> d!1200882 (=> res!1648515 e!2510709)))

(declare-fun lt!1441508 () Bool)

(assert (=> d!1200882 (= res!1648515 (not lt!1441508))))

(declare-fun e!2510708 () Bool)

(assert (=> d!1200882 (= lt!1441508 e!2510708)))

(declare-fun res!1648517 () Bool)

(assert (=> d!1200882 (=> res!1648517 e!2510708)))

(assert (=> d!1200882 (= res!1648517 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200882 (= (isPrefix!4021 lt!1441314 lt!1441277) lt!1441508)))

(declare-fun b!4046334 () Bool)

(assert (=> b!4046334 (= e!2510708 e!2510710)))

(declare-fun res!1648516 () Bool)

(assert (=> b!4046334 (=> (not res!1648516) (not e!2510710))))

(assert (=> b!4046334 (= res!1648516 (not ((_ is Nil!43281) lt!1441277)))))

(declare-fun b!4046335 () Bool)

(declare-fun res!1648518 () Bool)

(assert (=> b!4046335 (=> (not res!1648518) (not e!2510710))))

(assert (=> b!4046335 (= res!1648518 (= (head!8557 lt!1441314) (head!8557 lt!1441277)))))

(declare-fun b!4046337 () Bool)

(assert (=> b!4046337 (= e!2510709 (>= (size!32358 lt!1441277) (size!32358 lt!1441314)))))

(assert (= (and d!1200882 (not res!1648517)) b!4046334))

(assert (= (and b!4046334 res!1648516) b!4046335))

(assert (= (and b!4046335 res!1648518) b!4046336))

(assert (= (and d!1200882 (not res!1648515)) b!4046337))

(assert (=> b!4046336 m!4644691))

(declare-fun m!4645179 () Bool)

(assert (=> b!4046336 m!4645179))

(assert (=> b!4046336 m!4644691))

(assert (=> b!4046336 m!4645179))

(declare-fun m!4645181 () Bool)

(assert (=> b!4046336 m!4645181))

(assert (=> b!4046335 m!4644697))

(declare-fun m!4645183 () Bool)

(assert (=> b!4046335 m!4645183))

(declare-fun m!4645185 () Bool)

(assert (=> b!4046337 m!4645185))

(assert (=> b!4046337 m!4644397))

(assert (=> b!4045862 d!1200882))

(declare-fun d!1200884 () Bool)

(assert (=> d!1200884 (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))

(declare-fun lt!1441509 () Unit!62527)

(assert (=> d!1200884 (= lt!1441509 (choose!24523 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))

(assert (=> d!1200884 (= (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441314 (_2!24311 (v!39751 lt!1441282))) lt!1441509)))

(declare-fun bs!591235 () Bool)

(assert (= bs!591235 d!1200884))

(assert (=> bs!591235 m!4644393))

(assert (=> bs!591235 m!4644393))

(declare-fun m!4645187 () Bool)

(assert (=> bs!591235 m!4645187))

(declare-fun m!4645189 () Bool)

(assert (=> bs!591235 m!4645189))

(assert (=> b!4045862 d!1200884))

(declare-fun d!1200886 () Bool)

(declare-fun lt!1441512 () Int)

(assert (=> d!1200886 (>= lt!1441512 0)))

(declare-fun e!2510713 () Int)

(assert (=> d!1200886 (= lt!1441512 e!2510713)))

(declare-fun c!698958 () Bool)

(assert (=> d!1200886 (= c!698958 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200886 (= (size!32358 lt!1441314) lt!1441512)))

(declare-fun b!4046342 () Bool)

(assert (=> b!4046342 (= e!2510713 0)))

(declare-fun b!4046343 () Bool)

(assert (=> b!4046343 (= e!2510713 (+ 1 (size!32358 (t!335502 lt!1441314))))))

(assert (= (and d!1200886 c!698958) b!4046342))

(assert (= (and d!1200886 (not c!698958)) b!4046343))

(declare-fun m!4645191 () Bool)

(assert (=> b!4046343 m!4645191))

(assert (=> b!4045862 d!1200886))

(declare-fun d!1200888 () Bool)

(declare-fun list!16122 (Conc!13145) List!43405)

(assert (=> d!1200888 (= (list!16120 (charsOf!4750 (_1!24311 (v!39751 lt!1441282)))) (list!16122 (c!698890 (charsOf!4750 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun bs!591236 () Bool)

(assert (= bs!591236 d!1200888))

(declare-fun m!4645193 () Bool)

(assert (=> bs!591236 m!4645193))

(assert (=> b!4045862 d!1200888))

(declare-fun d!1200890 () Bool)

(declare-fun e!2510716 () Bool)

(assert (=> d!1200890 e!2510716))

(declare-fun res!1648521 () Bool)

(assert (=> d!1200890 (=> (not res!1648521) (not e!2510716))))

(declare-fun semiInverseModEq!2962 (Int Int) Bool)

(assert (=> d!1200890 (= res!1648521 (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun Unit!62531 () Unit!62527)

(assert (=> d!1200890 (= (lemmaInv!1143 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) Unit!62531)))

(declare-fun b!4046346 () Bool)

(declare-fun equivClasses!2861 (Int Int) Bool)

(assert (=> b!4046346 (= e!2510716 (equivClasses!2861 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (= (and d!1200890 res!1648521) b!4046346))

(declare-fun m!4645195 () Bool)

(assert (=> d!1200890 m!4645195))

(declare-fun m!4645197 () Bool)

(assert (=> b!4046346 m!4645197))

(assert (=> b!4045862 d!1200890))

(declare-fun d!1200892 () Bool)

(declare-fun res!1648526 () Bool)

(declare-fun e!2510719 () Bool)

(assert (=> d!1200892 (=> (not res!1648526) (not e!2510719))))

(declare-fun validRegex!5354 (Regex!11839) Bool)

(assert (=> d!1200892 (= res!1648526 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(assert (=> d!1200892 (= (ruleValid!2864 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) e!2510719)))

(declare-fun b!4046351 () Bool)

(declare-fun res!1648527 () Bool)

(assert (=> b!4046351 (=> (not res!1648527) (not e!2510719))))

(declare-fun nullable!4154 (Regex!11839) Bool)

(assert (=> b!4046351 (= res!1648527 (not (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun b!4046352 () Bool)

(assert (=> b!4046352 (= e!2510719 (not (= (tag!7794 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (String!49539 ""))))))

(assert (= (and d!1200892 res!1648526) b!4046351))

(assert (= (and b!4046351 res!1648527) b!4046352))

(declare-fun m!4645199 () Bool)

(assert (=> d!1200892 m!4645199))

(declare-fun m!4645201 () Bool)

(assert (=> b!4046351 m!4645201))

(assert (=> b!4045862 d!1200892))

(declare-fun b!4046371 () Bool)

(declare-fun res!1648543 () Bool)

(declare-fun e!2510727 () Bool)

(assert (=> b!4046371 (=> (not res!1648543) (not e!2510727))))

(declare-fun lt!1441523 () Option!9348)

(assert (=> b!4046371 (= res!1648543 (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))))))

(declare-fun b!4046372 () Bool)

(declare-fun e!2510728 () Option!9348)

(declare-fun lt!1441527 () Option!9348)

(declare-fun lt!1441525 () Option!9348)

(assert (=> b!4046372 (= e!2510728 (ite (and ((_ is None!9347) lt!1441527) ((_ is None!9347) lt!1441525)) None!9347 (ite ((_ is None!9347) lt!1441525) lt!1441527 (ite ((_ is None!9347) lt!1441527) lt!1441525 (ite (>= (size!32357 (_1!24311 (v!39751 lt!1441527))) (size!32357 (_1!24311 (v!39751 lt!1441525)))) lt!1441527 lt!1441525)))))))

(declare-fun call!287669 () Option!9348)

(assert (=> b!4046372 (= lt!1441527 call!287669)))

(assert (=> b!4046372 (= lt!1441525 (maxPrefix!3821 thiss!21717 (t!335504 rules!2999) lt!1441294))))

(declare-fun b!4046373 () Bool)

(assert (=> b!4046373 (= e!2510728 call!287669)))

(declare-fun bm!287664 () Bool)

(assert (=> bm!287664 (= call!287669 (maxPrefixOneRule!2833 thiss!21717 (h!48703 rules!2999) lt!1441294))))

(declare-fun b!4046374 () Bool)

(assert (=> b!4046374 (= e!2510727 (contains!8604 rules!2999 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))))

(declare-fun d!1200894 () Bool)

(declare-fun e!2510726 () Bool)

(assert (=> d!1200894 e!2510726))

(declare-fun res!1648544 () Bool)

(assert (=> d!1200894 (=> res!1648544 e!2510726)))

(assert (=> d!1200894 (= res!1648544 (isEmpty!25830 lt!1441523))))

(assert (=> d!1200894 (= lt!1441523 e!2510728)))

(declare-fun c!698961 () Bool)

(assert (=> d!1200894 (= c!698961 (and ((_ is Cons!43283) rules!2999) ((_ is Nil!43283) (t!335504 rules!2999))))))

(declare-fun lt!1441526 () Unit!62527)

(declare-fun lt!1441524 () Unit!62527)

(assert (=> d!1200894 (= lt!1441526 lt!1441524)))

(assert (=> d!1200894 (isPrefix!4021 lt!1441294 lt!1441294)))

(assert (=> d!1200894 (= lt!1441524 (lemmaIsPrefixRefl!2588 lt!1441294 lt!1441294))))

(declare-fun rulesValidInductive!2529 (LexerInterface!6523 List!43407) Bool)

(assert (=> d!1200894 (rulesValidInductive!2529 thiss!21717 rules!2999)))

(assert (=> d!1200894 (= (maxPrefix!3821 thiss!21717 rules!2999 lt!1441294) lt!1441523)))

(declare-fun b!4046375 () Bool)

(declare-fun res!1648548 () Bool)

(assert (=> b!4046375 (=> (not res!1648548) (not e!2510727))))

(assert (=> b!4046375 (= res!1648548 (< (size!32358 (_2!24311 (get!14199 lt!1441523))) (size!32358 lt!1441294)))))

(declare-fun b!4046376 () Bool)

(declare-fun res!1648542 () Bool)

(assert (=> b!4046376 (=> (not res!1648542) (not e!2510727))))

(assert (=> b!4046376 (= res!1648542 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))) (_2!24311 (get!14199 lt!1441523))) lt!1441294))))

(declare-fun b!4046377 () Bool)

(declare-fun res!1648547 () Bool)

(assert (=> b!4046377 (=> (not res!1648547) (not e!2510727))))

(assert (=> b!4046377 (= res!1648547 (= (value!218253 (_1!24311 (get!14199 lt!1441523))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523)))))))))

(declare-fun b!4046378 () Bool)

(assert (=> b!4046378 (= e!2510726 e!2510727)))

(declare-fun res!1648546 () Bool)

(assert (=> b!4046378 (=> (not res!1648546) (not e!2510727))))

(declare-fun isDefined!7108 (Option!9348) Bool)

(assert (=> b!4046378 (= res!1648546 (isDefined!7108 lt!1441523))))

(declare-fun b!4046379 () Bool)

(declare-fun res!1648545 () Bool)

(assert (=> b!4046379 (=> (not res!1648545) (not e!2510727))))

(assert (=> b!4046379 (= res!1648545 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523)))))))

(assert (= (and d!1200894 c!698961) b!4046373))

(assert (= (and d!1200894 (not c!698961)) b!4046372))

(assert (= (or b!4046373 b!4046372) bm!287664))

(assert (= (and d!1200894 (not res!1648544)) b!4046378))

(assert (= (and b!4046378 res!1648546) b!4046379))

(assert (= (and b!4046379 res!1648545) b!4046375))

(assert (= (and b!4046375 res!1648548) b!4046376))

(assert (= (and b!4046376 res!1648542) b!4046377))

(assert (= (and b!4046377 res!1648547) b!4046371))

(assert (= (and b!4046371 res!1648543) b!4046374))

(declare-fun m!4645203 () Bool)

(assert (=> b!4046379 m!4645203))

(declare-fun m!4645205 () Bool)

(assert (=> b!4046379 m!4645205))

(assert (=> b!4046379 m!4645205))

(declare-fun m!4645207 () Bool)

(assert (=> b!4046379 m!4645207))

(declare-fun m!4645209 () Bool)

(assert (=> b!4046378 m!4645209))

(assert (=> b!4046375 m!4645203))

(declare-fun m!4645211 () Bool)

(assert (=> b!4046375 m!4645211))

(assert (=> b!4046375 m!4645121))

(declare-fun m!4645213 () Bool)

(assert (=> b!4046372 m!4645213))

(declare-fun m!4645215 () Bool)

(assert (=> bm!287664 m!4645215))

(assert (=> b!4046376 m!4645203))

(assert (=> b!4046376 m!4645205))

(assert (=> b!4046376 m!4645205))

(assert (=> b!4046376 m!4645207))

(assert (=> b!4046376 m!4645207))

(declare-fun m!4645217 () Bool)

(assert (=> b!4046376 m!4645217))

(assert (=> b!4046377 m!4645203))

(declare-fun m!4645219 () Bool)

(assert (=> b!4046377 m!4645219))

(assert (=> b!4046377 m!4645219))

(declare-fun m!4645221 () Bool)

(assert (=> b!4046377 m!4645221))

(assert (=> b!4046374 m!4645203))

(declare-fun m!4645223 () Bool)

(assert (=> b!4046374 m!4645223))

(declare-fun m!4645225 () Bool)

(assert (=> d!1200894 m!4645225))

(declare-fun m!4645227 () Bool)

(assert (=> d!1200894 m!4645227))

(declare-fun m!4645229 () Bool)

(assert (=> d!1200894 m!4645229))

(declare-fun m!4645231 () Bool)

(assert (=> d!1200894 m!4645231))

(assert (=> b!4046371 m!4645203))

(assert (=> b!4046371 m!4645205))

(assert (=> b!4046371 m!4645205))

(assert (=> b!4046371 m!4645207))

(assert (=> b!4046371 m!4645207))

(declare-fun m!4645233 () Bool)

(assert (=> b!4046371 m!4645233))

(assert (=> b!4045883 d!1200894))

(declare-fun d!1200896 () Bool)

(assert (=> d!1200896 (= suffixResult!105 lt!1441319)))

(declare-fun lt!1441530 () Unit!62527)

(declare-fun choose!24526 (List!43405 List!43405 List!43405 List!43405 List!43405) Unit!62527)

(assert (=> d!1200896 (= lt!1441530 (choose!24526 lt!1441296 suffixResult!105 lt!1441296 lt!1441319 lt!1441304))))

(assert (=> d!1200896 (isPrefix!4021 lt!1441296 lt!1441304)))

(assert (=> d!1200896 (= (lemmaSamePrefixThenSameSuffix!2182 lt!1441296 suffixResult!105 lt!1441296 lt!1441319 lt!1441304) lt!1441530)))

(declare-fun bs!591237 () Bool)

(assert (= bs!591237 d!1200896))

(declare-fun m!4645235 () Bool)

(assert (=> bs!591237 m!4645235))

(assert (=> bs!591237 m!4644359))

(assert (=> b!4045883 d!1200896))

(declare-fun b!4046382 () Bool)

(declare-fun e!2510731 () Bool)

(assert (=> b!4046382 (= e!2510731 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441287)))))

(declare-fun d!1200898 () Bool)

(declare-fun e!2510730 () Bool)

(assert (=> d!1200898 e!2510730))

(declare-fun res!1648549 () Bool)

(assert (=> d!1200898 (=> res!1648549 e!2510730)))

(declare-fun lt!1441531 () Bool)

(assert (=> d!1200898 (= res!1648549 (not lt!1441531))))

(declare-fun e!2510729 () Bool)

(assert (=> d!1200898 (= lt!1441531 e!2510729)))

(declare-fun res!1648551 () Bool)

(assert (=> d!1200898 (=> res!1648551 e!2510729)))

(assert (=> d!1200898 (= res!1648551 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200898 (= (isPrefix!4021 lt!1441296 lt!1441287) lt!1441531)))

(declare-fun b!4046380 () Bool)

(assert (=> b!4046380 (= e!2510729 e!2510731)))

(declare-fun res!1648550 () Bool)

(assert (=> b!4046380 (=> (not res!1648550) (not e!2510731))))

(assert (=> b!4046380 (= res!1648550 (not ((_ is Nil!43281) lt!1441287)))))

(declare-fun b!4046381 () Bool)

(declare-fun res!1648552 () Bool)

(assert (=> b!4046381 (=> (not res!1648552) (not e!2510731))))

(assert (=> b!4046381 (= res!1648552 (= (head!8557 lt!1441296) (head!8557 lt!1441287)))))

(declare-fun b!4046383 () Bool)

(assert (=> b!4046383 (= e!2510730 (>= (size!32358 lt!1441287) (size!32358 lt!1441296)))))

(assert (= (and d!1200898 (not res!1648551)) b!4046380))

(assert (= (and b!4046380 res!1648550) b!4046381))

(assert (= (and b!4046381 res!1648552) b!4046382))

(assert (= (and d!1200898 (not res!1648549)) b!4046383))

(declare-fun m!4645237 () Bool)

(assert (=> b!4046382 m!4645237))

(declare-fun m!4645239 () Bool)

(assert (=> b!4046382 m!4645239))

(assert (=> b!4046382 m!4645237))

(assert (=> b!4046382 m!4645239))

(declare-fun m!4645241 () Bool)

(assert (=> b!4046382 m!4645241))

(declare-fun m!4645243 () Bool)

(assert (=> b!4046381 m!4645243))

(declare-fun m!4645245 () Bool)

(assert (=> b!4046381 m!4645245))

(declare-fun m!4645247 () Bool)

(assert (=> b!4046383 m!4645247))

(assert (=> b!4046383 m!4644369))

(assert (=> b!4045883 d!1200898))

(declare-fun d!1200900 () Bool)

(assert (=> d!1200900 (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 lt!1441319))))

(declare-fun lt!1441532 () Unit!62527)

(assert (=> d!1200900 (= lt!1441532 (choose!24523 lt!1441296 lt!1441319))))

(assert (=> d!1200900 (= (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441296 lt!1441319) lt!1441532)))

(declare-fun bs!591238 () Bool)

(assert (= bs!591238 d!1200900))

(assert (=> bs!591238 m!4644423))

(assert (=> bs!591238 m!4644423))

(declare-fun m!4645249 () Bool)

(assert (=> bs!591238 m!4645249))

(declare-fun m!4645251 () Bool)

(assert (=> bs!591238 m!4645251))

(assert (=> b!4045883 d!1200900))

(declare-fun b!4046385 () Bool)

(declare-fun e!2510733 () List!43405)

(assert (=> b!4046385 (= e!2510733 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) lt!1441278)))))

(declare-fun b!4046386 () Bool)

(declare-fun res!1648554 () Bool)

(declare-fun e!2510732 () Bool)

(assert (=> b!4046386 (=> (not res!1648554) (not e!2510732))))

(declare-fun lt!1441533 () List!43405)

(assert (=> b!4046386 (= res!1648554 (= (size!32358 lt!1441533) (+ (size!32358 lt!1441296) (size!32358 lt!1441278))))))

(declare-fun b!4046387 () Bool)

(assert (=> b!4046387 (= e!2510732 (or (not (= lt!1441278 Nil!43281)) (= lt!1441533 lt!1441296)))))

(declare-fun b!4046384 () Bool)

(assert (=> b!4046384 (= e!2510733 lt!1441278)))

(declare-fun d!1200902 () Bool)

(assert (=> d!1200902 e!2510732))

(declare-fun res!1648553 () Bool)

(assert (=> d!1200902 (=> (not res!1648553) (not e!2510732))))

(assert (=> d!1200902 (= res!1648553 (= (content!6586 lt!1441533) ((_ map or) (content!6586 lt!1441296) (content!6586 lt!1441278))))))

(assert (=> d!1200902 (= lt!1441533 e!2510733)))

(declare-fun c!698962 () Bool)

(assert (=> d!1200902 (= c!698962 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200902 (= (++!11336 lt!1441296 lt!1441278) lt!1441533)))

(assert (= (and d!1200902 c!698962) b!4046384))

(assert (= (and d!1200902 (not c!698962)) b!4046385))

(assert (= (and d!1200902 res!1648553) b!4046386))

(assert (= (and b!4046386 res!1648554) b!4046387))

(declare-fun m!4645253 () Bool)

(assert (=> b!4046385 m!4645253))

(declare-fun m!4645255 () Bool)

(assert (=> b!4046386 m!4645255))

(assert (=> b!4046386 m!4644369))

(declare-fun m!4645257 () Bool)

(assert (=> b!4046386 m!4645257))

(declare-fun m!4645259 () Bool)

(assert (=> d!1200902 m!4645259))

(declare-fun m!4645261 () Bool)

(assert (=> d!1200902 m!4645261))

(declare-fun m!4645263 () Bool)

(assert (=> d!1200902 m!4645263))

(assert (=> b!4045861 d!1200902))

(declare-fun b!4046389 () Bool)

(declare-fun e!2510735 () List!43405)

(assert (=> b!4046389 (= e!2510735 (Cons!43281 (h!48701 lt!1441297) (++!11336 (t!335502 lt!1441297) suffix!1299)))))

(declare-fun b!4046390 () Bool)

(declare-fun res!1648556 () Bool)

(declare-fun e!2510734 () Bool)

(assert (=> b!4046390 (=> (not res!1648556) (not e!2510734))))

(declare-fun lt!1441534 () List!43405)

(assert (=> b!4046390 (= res!1648556 (= (size!32358 lt!1441534) (+ (size!32358 lt!1441297) (size!32358 suffix!1299))))))

(declare-fun b!4046391 () Bool)

(assert (=> b!4046391 (= e!2510734 (or (not (= suffix!1299 Nil!43281)) (= lt!1441534 lt!1441297)))))

(declare-fun b!4046388 () Bool)

(assert (=> b!4046388 (= e!2510735 suffix!1299)))

(declare-fun d!1200904 () Bool)

(assert (=> d!1200904 e!2510734))

(declare-fun res!1648555 () Bool)

(assert (=> d!1200904 (=> (not res!1648555) (not e!2510734))))

(assert (=> d!1200904 (= res!1648555 (= (content!6586 lt!1441534) ((_ map or) (content!6586 lt!1441297) (content!6586 suffix!1299))))))

(assert (=> d!1200904 (= lt!1441534 e!2510735)))

(declare-fun c!698963 () Bool)

(assert (=> d!1200904 (= c!698963 ((_ is Nil!43281) lt!1441297))))

(assert (=> d!1200904 (= (++!11336 lt!1441297 suffix!1299) lt!1441534)))

(assert (= (and d!1200904 c!698963) b!4046388))

(assert (= (and d!1200904 (not c!698963)) b!4046389))

(assert (= (and d!1200904 res!1648555) b!4046390))

(assert (= (and b!4046390 res!1648556) b!4046391))

(declare-fun m!4645265 () Bool)

(assert (=> b!4046389 m!4645265))

(declare-fun m!4645267 () Bool)

(assert (=> b!4046390 m!4645267))

(declare-fun m!4645269 () Bool)

(assert (=> b!4046390 m!4645269))

(assert (=> b!4046390 m!4644351))

(declare-fun m!4645271 () Bool)

(assert (=> d!1200904 m!4645271))

(declare-fun m!4645273 () Bool)

(assert (=> d!1200904 m!4645273))

(declare-fun m!4645275 () Bool)

(assert (=> d!1200904 m!4645275))

(assert (=> b!4045861 d!1200904))

(declare-fun b!4046393 () Bool)

(declare-fun e!2510737 () List!43405)

(assert (=> b!4046393 (= e!2510737 (Cons!43281 (h!48701 lt!1441324) (++!11336 (t!335502 lt!1441324) suffix!1299)))))

(declare-fun b!4046394 () Bool)

(declare-fun res!1648558 () Bool)

(declare-fun e!2510736 () Bool)

(assert (=> b!4046394 (=> (not res!1648558) (not e!2510736))))

(declare-fun lt!1441535 () List!43405)

(assert (=> b!4046394 (= res!1648558 (= (size!32358 lt!1441535) (+ (size!32358 lt!1441324) (size!32358 suffix!1299))))))

(declare-fun b!4046395 () Bool)

(assert (=> b!4046395 (= e!2510736 (or (not (= suffix!1299 Nil!43281)) (= lt!1441535 lt!1441324)))))

(declare-fun b!4046392 () Bool)

(assert (=> b!4046392 (= e!2510737 suffix!1299)))

(declare-fun d!1200906 () Bool)

(assert (=> d!1200906 e!2510736))

(declare-fun res!1648557 () Bool)

(assert (=> d!1200906 (=> (not res!1648557) (not e!2510736))))

(assert (=> d!1200906 (= res!1648557 (= (content!6586 lt!1441535) ((_ map or) (content!6586 lt!1441324) (content!6586 suffix!1299))))))

(assert (=> d!1200906 (= lt!1441535 e!2510737)))

(declare-fun c!698964 () Bool)

(assert (=> d!1200906 (= c!698964 ((_ is Nil!43281) lt!1441324))))

(assert (=> d!1200906 (= (++!11336 lt!1441324 suffix!1299) lt!1441535)))

(assert (= (and d!1200906 c!698964) b!4046392))

(assert (= (and d!1200906 (not c!698964)) b!4046393))

(assert (= (and d!1200906 res!1648557) b!4046394))

(assert (= (and b!4046394 res!1648558) b!4046395))

(declare-fun m!4645277 () Bool)

(assert (=> b!4046393 m!4645277))

(declare-fun m!4645279 () Bool)

(assert (=> b!4046394 m!4645279))

(declare-fun m!4645281 () Bool)

(assert (=> b!4046394 m!4645281))

(assert (=> b!4046394 m!4644351))

(declare-fun m!4645283 () Bool)

(assert (=> d!1200906 m!4645283))

(declare-fun m!4645285 () Bool)

(assert (=> d!1200906 m!4645285))

(assert (=> d!1200906 m!4645275))

(assert (=> b!4045861 d!1200906))

(declare-fun d!1200908 () Bool)

(assert (=> d!1200908 (= (++!11336 (++!11336 lt!1441296 lt!1441324) suffix!1299) (++!11336 lt!1441296 (++!11336 lt!1441324 suffix!1299)))))

(declare-fun lt!1441538 () Unit!62527)

(declare-fun choose!24528 (List!43405 List!43405 List!43405) Unit!62527)

(assert (=> d!1200908 (= lt!1441538 (choose!24528 lt!1441296 lt!1441324 suffix!1299))))

(assert (=> d!1200908 (= (lemmaConcatAssociativity!2638 lt!1441296 lt!1441324 suffix!1299) lt!1441538)))

(declare-fun bs!591239 () Bool)

(assert (= bs!591239 d!1200908))

(assert (=> bs!591239 m!4644331))

(declare-fun m!4645287 () Bool)

(assert (=> bs!591239 m!4645287))

(assert (=> bs!591239 m!4644491))

(declare-fun m!4645289 () Bool)

(assert (=> bs!591239 m!4645289))

(assert (=> bs!591239 m!4644331))

(assert (=> bs!591239 m!4644491))

(declare-fun m!4645291 () Bool)

(assert (=> bs!591239 m!4645291))

(assert (=> b!4045861 d!1200908))

(declare-fun d!1200910 () Bool)

(declare-fun lt!1441539 () Int)

(assert (=> d!1200910 (>= lt!1441539 0)))

(declare-fun e!2510738 () Int)

(assert (=> d!1200910 (= lt!1441539 e!2510738)))

(declare-fun c!698965 () Bool)

(assert (=> d!1200910 (= c!698965 ((_ is Nil!43281) suffix!1299))))

(assert (=> d!1200910 (= (size!32358 suffix!1299) lt!1441539)))

(declare-fun b!4046396 () Bool)

(assert (=> b!4046396 (= e!2510738 0)))

(declare-fun b!4046397 () Bool)

(assert (=> b!4046397 (= e!2510738 (+ 1 (size!32358 (t!335502 suffix!1299))))))

(assert (= (and d!1200910 c!698965) b!4046396))

(assert (= (and d!1200910 (not c!698965)) b!4046397))

(declare-fun m!4645293 () Bool)

(assert (=> b!4046397 m!4645293))

(assert (=> b!4045881 d!1200910))

(declare-fun d!1200912 () Bool)

(declare-fun lt!1441540 () Int)

(assert (=> d!1200912 (>= lt!1441540 0)))

(declare-fun e!2510739 () Int)

(assert (=> d!1200912 (= lt!1441540 e!2510739)))

(declare-fun c!698966 () Bool)

(assert (=> d!1200912 (= c!698966 ((_ is Nil!43281) newSuffix!27))))

(assert (=> d!1200912 (= (size!32358 newSuffix!27) lt!1441540)))

(declare-fun b!4046398 () Bool)

(assert (=> b!4046398 (= e!2510739 0)))

(declare-fun b!4046399 () Bool)

(assert (=> b!4046399 (= e!2510739 (+ 1 (size!32358 (t!335502 newSuffix!27))))))

(assert (= (and d!1200912 c!698966) b!4046398))

(assert (= (and d!1200912 (not c!698966)) b!4046399))

(declare-fun m!4645295 () Bool)

(assert (=> b!4046399 m!4645295))

(assert (=> b!4045881 d!1200912))

(declare-fun d!1200914 () Bool)

(declare-fun lt!1441543 () Bool)

(declare-fun content!6587 (List!43407) (InoxSet Rule!13668))

(assert (=> d!1200914 (= lt!1441543 (select (content!6587 rules!2999) (rule!10010 token!484)))))

(declare-fun e!2510745 () Bool)

(assert (=> d!1200914 (= lt!1441543 e!2510745)))

(declare-fun res!1648563 () Bool)

(assert (=> d!1200914 (=> (not res!1648563) (not e!2510745))))

(assert (=> d!1200914 (= res!1648563 ((_ is Cons!43283) rules!2999))))

(assert (=> d!1200914 (= (contains!8604 rules!2999 (rule!10010 token!484)) lt!1441543)))

(declare-fun b!4046404 () Bool)

(declare-fun e!2510744 () Bool)

(assert (=> b!4046404 (= e!2510745 e!2510744)))

(declare-fun res!1648564 () Bool)

(assert (=> b!4046404 (=> res!1648564 e!2510744)))

(assert (=> b!4046404 (= res!1648564 (= (h!48703 rules!2999) (rule!10010 token!484)))))

(declare-fun b!4046405 () Bool)

(assert (=> b!4046405 (= e!2510744 (contains!8604 (t!335504 rules!2999) (rule!10010 token!484)))))

(assert (= (and d!1200914 res!1648563) b!4046404))

(assert (= (and b!4046404 (not res!1648564)) b!4046405))

(declare-fun m!4645297 () Bool)

(assert (=> d!1200914 m!4645297))

(declare-fun m!4645299 () Bool)

(assert (=> d!1200914 m!4645299))

(declare-fun m!4645301 () Bool)

(assert (=> b!4046405 m!4645301))

(assert (=> b!4045859 d!1200914))

(declare-fun b!4046408 () Bool)

(declare-fun e!2510748 () Bool)

(assert (=> b!4046408 (= e!2510748 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441301)))))

(declare-fun d!1200916 () Bool)

(declare-fun e!2510747 () Bool)

(assert (=> d!1200916 e!2510747))

(declare-fun res!1648565 () Bool)

(assert (=> d!1200916 (=> res!1648565 e!2510747)))

(declare-fun lt!1441544 () Bool)

(assert (=> d!1200916 (= res!1648565 (not lt!1441544))))

(declare-fun e!2510746 () Bool)

(assert (=> d!1200916 (= lt!1441544 e!2510746)))

(declare-fun res!1648567 () Bool)

(assert (=> d!1200916 (=> res!1648567 e!2510746)))

(assert (=> d!1200916 (= res!1648567 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200916 (= (isPrefix!4021 lt!1441296 lt!1441301) lt!1441544)))

(declare-fun b!4046406 () Bool)

(assert (=> b!4046406 (= e!2510746 e!2510748)))

(declare-fun res!1648566 () Bool)

(assert (=> b!4046406 (=> (not res!1648566) (not e!2510748))))

(assert (=> b!4046406 (= res!1648566 (not ((_ is Nil!43281) lt!1441301)))))

(declare-fun b!4046407 () Bool)

(declare-fun res!1648568 () Bool)

(assert (=> b!4046407 (=> (not res!1648568) (not e!2510748))))

(assert (=> b!4046407 (= res!1648568 (= (head!8557 lt!1441296) (head!8557 lt!1441301)))))

(declare-fun b!4046409 () Bool)

(assert (=> b!4046409 (= e!2510747 (>= (size!32358 lt!1441301) (size!32358 lt!1441296)))))

(assert (= (and d!1200916 (not res!1648567)) b!4046406))

(assert (= (and b!4046406 res!1648566) b!4046407))

(assert (= (and b!4046407 res!1648568) b!4046408))

(assert (= (and d!1200916 (not res!1648565)) b!4046409))

(assert (=> b!4046408 m!4645237))

(declare-fun m!4645303 () Bool)

(assert (=> b!4046408 m!4645303))

(assert (=> b!4046408 m!4645237))

(assert (=> b!4046408 m!4645303))

(declare-fun m!4645305 () Bool)

(assert (=> b!4046408 m!4645305))

(assert (=> b!4046407 m!4645243))

(declare-fun m!4645307 () Bool)

(assert (=> b!4046407 m!4645307))

(declare-fun m!4645309 () Bool)

(assert (=> b!4046409 m!4645309))

(assert (=> b!4046409 m!4644369))

(assert (=> b!4045880 d!1200916))

(declare-fun d!1200918 () Bool)

(assert (=> d!1200918 (= lt!1441278 suffixResult!105)))

(declare-fun lt!1441545 () Unit!62527)

(assert (=> d!1200918 (= lt!1441545 (choose!24526 lt!1441296 lt!1441278 lt!1441296 suffixResult!105 lt!1441304))))

(assert (=> d!1200918 (isPrefix!4021 lt!1441296 lt!1441304)))

(assert (=> d!1200918 (= (lemmaSamePrefixThenSameSuffix!2182 lt!1441296 lt!1441278 lt!1441296 suffixResult!105 lt!1441304) lt!1441545)))

(declare-fun bs!591240 () Bool)

(assert (= bs!591240 d!1200918))

(declare-fun m!4645311 () Bool)

(assert (=> bs!591240 m!4645311))

(assert (=> bs!591240 m!4644359))

(assert (=> b!4045880 d!1200918))

(declare-fun d!1200920 () Bool)

(assert (=> d!1200920 (= (apply!10123 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 lt!1441296)) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296)))))

(declare-fun b_lambda!118215 () Bool)

(assert (=> (not b_lambda!118215) (not d!1200920)))

(declare-fun t!335539 () Bool)

(declare-fun tb!243361 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335539) tb!243361))

(declare-fun result!294920 () Bool)

(assert (=> tb!243361 (= result!294920 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296))))))

(declare-fun m!4645313 () Bool)

(assert (=> tb!243361 m!4645313))

(assert (=> d!1200920 t!335539))

(declare-fun b_and!311147 () Bool)

(assert (= b_and!311119 (and (=> t!335539 result!294920) b_and!311147)))

(declare-fun t!335541 () Bool)

(declare-fun tb!243363 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335541) tb!243363))

(declare-fun result!294922 () Bool)

(assert (= result!294922 result!294920))

(assert (=> d!1200920 t!335541))

(declare-fun b_and!311149 () Bool)

(assert (= b_and!311121 (and (=> t!335541 result!294922) b_and!311149)))

(assert (=> d!1200920 m!4644319))

(declare-fun m!4645315 () Bool)

(assert (=> d!1200920 m!4645315))

(assert (=> b!4045880 d!1200920))

(declare-fun d!1200922 () Bool)

(assert (=> d!1200922 (= (maxPrefixOneRule!2833 thiss!21717 (rule!10010 token!484) lt!1441304) (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 lt!1441296)) (rule!10010 token!484) (size!32358 lt!1441296) lt!1441296) suffixResult!105)))))

(declare-fun lt!1441546 () Unit!62527)

(assert (=> d!1200922 (= lt!1441546 (choose!24524 thiss!21717 rules!2999 lt!1441296 lt!1441304 suffixResult!105 (rule!10010 token!484)))))

(assert (=> d!1200922 (not (isEmpty!25827 rules!2999))))

(assert (=> d!1200922 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1639 thiss!21717 rules!2999 lt!1441296 lt!1441304 suffixResult!105 (rule!10010 token!484)) lt!1441546)))

(declare-fun bs!591241 () Bool)

(assert (= bs!591241 d!1200922))

(assert (=> bs!591241 m!4644339))

(assert (=> bs!591241 m!4644319))

(assert (=> bs!591241 m!4644325))

(assert (=> bs!591241 m!4644319))

(assert (=> bs!591241 m!4644321))

(assert (=> bs!591241 m!4644369))

(declare-fun m!4645317 () Bool)

(assert (=> bs!591241 m!4645317))

(assert (=> b!4045880 d!1200922))

(declare-fun d!1200924 () Bool)

(assert (=> d!1200924 (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 lt!1441278))))

(declare-fun lt!1441547 () Unit!62527)

(assert (=> d!1200924 (= lt!1441547 (choose!24523 lt!1441296 lt!1441278))))

(assert (=> d!1200924 (= (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441296 lt!1441278) lt!1441547)))

(declare-fun bs!591242 () Bool)

(assert (= bs!591242 d!1200924))

(assert (=> bs!591242 m!4644487))

(assert (=> bs!591242 m!4644487))

(declare-fun m!4645319 () Bool)

(assert (=> bs!591242 m!4645319))

(declare-fun m!4645321 () Bool)

(assert (=> bs!591242 m!4645321))

(assert (=> b!4045880 d!1200924))

(declare-fun b!4046410 () Bool)

(declare-fun e!2510751 () Bool)

(declare-fun lt!1441550 () Option!9348)

(assert (=> b!4046410 (= e!2510751 (= (size!32357 (_1!24311 (get!14199 lt!1441550))) (size!32358 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550))))))))

(declare-fun d!1200926 () Bool)

(declare-fun e!2510753 () Bool)

(assert (=> d!1200926 e!2510753))

(declare-fun res!1648572 () Bool)

(assert (=> d!1200926 (=> res!1648572 e!2510753)))

(assert (=> d!1200926 (= res!1648572 (isEmpty!25830 lt!1441550))))

(declare-fun e!2510750 () Option!9348)

(assert (=> d!1200926 (= lt!1441550 e!2510750)))

(declare-fun c!698967 () Bool)

(declare-fun lt!1441551 () tuple2!42356)

(assert (=> d!1200926 (= c!698967 (isEmpty!25831 (_1!24312 lt!1441551)))))

(assert (=> d!1200926 (= lt!1441551 (findLongestMatch!1303 (regex!6934 (rule!10010 token!484)) lt!1441304))))

(assert (=> d!1200926 (ruleValid!2864 thiss!21717 (rule!10010 token!484))))

(assert (=> d!1200926 (= (maxPrefixOneRule!2833 thiss!21717 (rule!10010 token!484) lt!1441304) lt!1441550)))

(declare-fun b!4046411 () Bool)

(assert (=> b!4046411 (= e!2510750 None!9347)))

(declare-fun b!4046412 () Bool)

(declare-fun res!1648573 () Bool)

(assert (=> b!4046412 (=> (not res!1648573) (not e!2510751))))

(assert (=> b!4046412 (= res!1648573 (< (size!32358 (_2!24311 (get!14199 lt!1441550))) (size!32358 lt!1441304)))))

(declare-fun b!4046413 () Bool)

(declare-fun res!1648570 () Bool)

(assert (=> b!4046413 (=> (not res!1648570) (not e!2510751))))

(assert (=> b!4046413 (= res!1648570 (= (value!218253 (_1!24311 (get!14199 lt!1441550))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550)))))))))

(declare-fun b!4046414 () Bool)

(declare-fun e!2510752 () Bool)

(assert (=> b!4046414 (= e!2510752 (matchR!5792 (regex!6934 (rule!10010 token!484)) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(declare-fun b!4046415 () Bool)

(assert (=> b!4046415 (= e!2510750 (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 (_1!24312 lt!1441551))) (rule!10010 token!484) (size!32359 (seqFromList!5151 (_1!24312 lt!1441551))) (_1!24312 lt!1441551)) (_2!24312 lt!1441551))))))

(declare-fun lt!1441552 () Unit!62527)

(assert (=> b!4046415 (= lt!1441552 (longestMatchIsAcceptedByMatchOrIsEmpty!1363 (regex!6934 (rule!10010 token!484)) lt!1441304))))

(declare-fun res!1648574 () Bool)

(assert (=> b!4046415 (= res!1648574 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(assert (=> b!4046415 (=> res!1648574 e!2510752)))

(assert (=> b!4046415 e!2510752))

(declare-fun lt!1441548 () Unit!62527)

(assert (=> b!4046415 (= lt!1441548 lt!1441552)))

(declare-fun lt!1441549 () Unit!62527)

(assert (=> b!4046415 (= lt!1441549 (lemmaSemiInverse!1912 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 (_1!24312 lt!1441551))))))

(declare-fun b!4046416 () Bool)

(declare-fun res!1648575 () Bool)

(assert (=> b!4046416 (=> (not res!1648575) (not e!2510751))))

(assert (=> b!4046416 (= res!1648575 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550)))) (_2!24311 (get!14199 lt!1441550))) lt!1441304))))

(declare-fun b!4046417 () Bool)

(assert (=> b!4046417 (= e!2510753 e!2510751)))

(declare-fun res!1648569 () Bool)

(assert (=> b!4046417 (=> (not res!1648569) (not e!2510751))))

(assert (=> b!4046417 (= res!1648569 (matchR!5792 (regex!6934 (rule!10010 token!484)) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))))))

(declare-fun b!4046418 () Bool)

(declare-fun res!1648571 () Bool)

(assert (=> b!4046418 (=> (not res!1648571) (not e!2510751))))

(assert (=> b!4046418 (= res!1648571 (= (rule!10010 (_1!24311 (get!14199 lt!1441550))) (rule!10010 token!484)))))

(assert (= (and d!1200926 c!698967) b!4046411))

(assert (= (and d!1200926 (not c!698967)) b!4046415))

(assert (= (and b!4046415 (not res!1648574)) b!4046414))

(assert (= (and d!1200926 (not res!1648572)) b!4046417))

(assert (= (and b!4046417 res!1648569) b!4046416))

(assert (= (and b!4046416 res!1648575) b!4046412))

(assert (= (and b!4046412 res!1648573) b!4046418))

(assert (= (and b!4046418 res!1648571) b!4046413))

(assert (= (and b!4046413 res!1648570) b!4046410))

(assert (=> b!4046414 m!4645119))

(declare-fun m!4645323 () Bool)

(assert (=> b!4046414 m!4645323))

(assert (=> b!4046414 m!4645119))

(assert (=> b!4046414 m!4645323))

(declare-fun m!4645325 () Bool)

(assert (=> b!4046414 m!4645325))

(declare-fun m!4645327 () Bool)

(assert (=> b!4046414 m!4645327))

(declare-fun m!4645329 () Bool)

(assert (=> b!4046416 m!4645329))

(declare-fun m!4645331 () Bool)

(assert (=> b!4046416 m!4645331))

(assert (=> b!4046416 m!4645331))

(declare-fun m!4645333 () Bool)

(assert (=> b!4046416 m!4645333))

(assert (=> b!4046416 m!4645333))

(declare-fun m!4645335 () Bool)

(assert (=> b!4046416 m!4645335))

(declare-fun m!4645337 () Bool)

(assert (=> d!1200926 m!4645337))

(declare-fun m!4645339 () Bool)

(assert (=> d!1200926 m!4645339))

(declare-fun m!4645341 () Bool)

(assert (=> d!1200926 m!4645341))

(assert (=> d!1200926 m!4644483))

(assert (=> b!4046418 m!4645329))

(assert (=> b!4046410 m!4645329))

(declare-fun m!4645343 () Bool)

(assert (=> b!4046410 m!4645343))

(assert (=> b!4046415 m!4645323))

(assert (=> b!4046415 m!4645119))

(assert (=> b!4046415 m!4645323))

(assert (=> b!4046415 m!4645325))

(declare-fun m!4645345 () Bool)

(assert (=> b!4046415 m!4645345))

(declare-fun m!4645347 () Bool)

(assert (=> b!4046415 m!4645347))

(assert (=> b!4046415 m!4645345))

(assert (=> b!4046415 m!4645119))

(assert (=> b!4046415 m!4645345))

(declare-fun m!4645349 () Bool)

(assert (=> b!4046415 m!4645349))

(assert (=> b!4046415 m!4645345))

(declare-fun m!4645351 () Bool)

(assert (=> b!4046415 m!4645351))

(declare-fun m!4645353 () Bool)

(assert (=> b!4046415 m!4645353))

(declare-fun m!4645355 () Bool)

(assert (=> b!4046415 m!4645355))

(assert (=> b!4046413 m!4645329))

(declare-fun m!4645357 () Bool)

(assert (=> b!4046413 m!4645357))

(assert (=> b!4046413 m!4645357))

(declare-fun m!4645359 () Bool)

(assert (=> b!4046413 m!4645359))

(assert (=> b!4046412 m!4645329))

(declare-fun m!4645361 () Bool)

(assert (=> b!4046412 m!4645361))

(assert (=> b!4046412 m!4645323))

(assert (=> b!4046417 m!4645329))

(assert (=> b!4046417 m!4645331))

(assert (=> b!4046417 m!4645331))

(assert (=> b!4046417 m!4645333))

(assert (=> b!4046417 m!4645333))

(declare-fun m!4645363 () Bool)

(assert (=> b!4046417 m!4645363))

(assert (=> b!4045880 d!1200926))

(declare-fun d!1200928 () Bool)

(assert (=> d!1200928 (= (seqFromList!5151 lt!1441296) (fromListB!2347 lt!1441296))))

(declare-fun bs!591243 () Bool)

(assert (= bs!591243 d!1200928))

(declare-fun m!4645365 () Bool)

(assert (=> bs!591243 m!4645365))

(assert (=> b!4045880 d!1200928))

(declare-fun b!4046420 () Bool)

(declare-fun e!2510755 () List!43405)

(assert (=> b!4046420 (= e!2510755 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) lt!1441319)))))

(declare-fun b!4046421 () Bool)

(declare-fun res!1648577 () Bool)

(declare-fun e!2510754 () Bool)

(assert (=> b!4046421 (=> (not res!1648577) (not e!2510754))))

(declare-fun lt!1441553 () List!43405)

(assert (=> b!4046421 (= res!1648577 (= (size!32358 lt!1441553) (+ (size!32358 lt!1441296) (size!32358 lt!1441319))))))

(declare-fun b!4046422 () Bool)

(assert (=> b!4046422 (= e!2510754 (or (not (= lt!1441319 Nil!43281)) (= lt!1441553 lt!1441296)))))

(declare-fun b!4046419 () Bool)

(assert (=> b!4046419 (= e!2510755 lt!1441319)))

(declare-fun d!1200930 () Bool)

(assert (=> d!1200930 e!2510754))

(declare-fun res!1648576 () Bool)

(assert (=> d!1200930 (=> (not res!1648576) (not e!2510754))))

(assert (=> d!1200930 (= res!1648576 (= (content!6586 lt!1441553) ((_ map or) (content!6586 lt!1441296) (content!6586 lt!1441319))))))

(assert (=> d!1200930 (= lt!1441553 e!2510755)))

(declare-fun c!698968 () Bool)

(assert (=> d!1200930 (= c!698968 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200930 (= (++!11336 lt!1441296 lt!1441319) lt!1441553)))

(assert (= (and d!1200930 c!698968) b!4046419))

(assert (= (and d!1200930 (not c!698968)) b!4046420))

(assert (= (and d!1200930 res!1648576) b!4046421))

(assert (= (and b!4046421 res!1648577) b!4046422))

(declare-fun m!4645367 () Bool)

(assert (=> b!4046420 m!4645367))

(declare-fun m!4645369 () Bool)

(assert (=> b!4046421 m!4645369))

(assert (=> b!4046421 m!4644369))

(declare-fun m!4645371 () Bool)

(assert (=> b!4046421 m!4645371))

(declare-fun m!4645373 () Bool)

(assert (=> d!1200930 m!4645373))

(assert (=> d!1200930 m!4645261))

(declare-fun m!4645375 () Bool)

(assert (=> d!1200930 m!4645375))

(assert (=> b!4045858 d!1200930))

(declare-fun d!1200932 () Bool)

(declare-fun lt!1441556 () List!43405)

(assert (=> d!1200932 (= (++!11336 lt!1441296 lt!1441556) lt!1441304)))

(declare-fun e!2510758 () List!43405)

(assert (=> d!1200932 (= lt!1441556 e!2510758)))

(declare-fun c!698971 () Bool)

(assert (=> d!1200932 (= c!698971 ((_ is Cons!43281) lt!1441296))))

(assert (=> d!1200932 (>= (size!32358 lt!1441304) (size!32358 lt!1441296))))

(assert (=> d!1200932 (= (getSuffix!2438 lt!1441304 lt!1441296) lt!1441556)))

(declare-fun b!4046427 () Bool)

(assert (=> b!4046427 (= e!2510758 (getSuffix!2438 (tail!6289 lt!1441304) (t!335502 lt!1441296)))))

(declare-fun b!4046428 () Bool)

(assert (=> b!4046428 (= e!2510758 lt!1441304)))

(assert (= (and d!1200932 c!698971) b!4046427))

(assert (= (and d!1200932 (not c!698971)) b!4046428))

(declare-fun m!4645377 () Bool)

(assert (=> d!1200932 m!4645377))

(assert (=> d!1200932 m!4645323))

(assert (=> d!1200932 m!4644369))

(declare-fun m!4645379 () Bool)

(assert (=> b!4046427 m!4645379))

(assert (=> b!4046427 m!4645379))

(declare-fun m!4645381 () Bool)

(assert (=> b!4046427 m!4645381))

(assert (=> b!4045858 d!1200932))

(declare-fun b!4046431 () Bool)

(declare-fun e!2510761 () Bool)

(assert (=> b!4046431 (= e!2510761 (isPrefix!4021 (tail!6289 lt!1441304) (tail!6289 lt!1441304)))))

(declare-fun d!1200934 () Bool)

(declare-fun e!2510760 () Bool)

(assert (=> d!1200934 e!2510760))

(declare-fun res!1648578 () Bool)

(assert (=> d!1200934 (=> res!1648578 e!2510760)))

(declare-fun lt!1441557 () Bool)

(assert (=> d!1200934 (= res!1648578 (not lt!1441557))))

(declare-fun e!2510759 () Bool)

(assert (=> d!1200934 (= lt!1441557 e!2510759)))

(declare-fun res!1648580 () Bool)

(assert (=> d!1200934 (=> res!1648580 e!2510759)))

(assert (=> d!1200934 (= res!1648580 ((_ is Nil!43281) lt!1441304))))

(assert (=> d!1200934 (= (isPrefix!4021 lt!1441304 lt!1441304) lt!1441557)))

(declare-fun b!4046429 () Bool)

(assert (=> b!4046429 (= e!2510759 e!2510761)))

(declare-fun res!1648579 () Bool)

(assert (=> b!4046429 (=> (not res!1648579) (not e!2510761))))

(assert (=> b!4046429 (= res!1648579 (not ((_ is Nil!43281) lt!1441304)))))

(declare-fun b!4046430 () Bool)

(declare-fun res!1648581 () Bool)

(assert (=> b!4046430 (=> (not res!1648581) (not e!2510761))))

(assert (=> b!4046430 (= res!1648581 (= (head!8557 lt!1441304) (head!8557 lt!1441304)))))

(declare-fun b!4046432 () Bool)

(assert (=> b!4046432 (= e!2510760 (>= (size!32358 lt!1441304) (size!32358 lt!1441304)))))

(assert (= (and d!1200934 (not res!1648580)) b!4046429))

(assert (= (and b!4046429 res!1648579) b!4046430))

(assert (= (and b!4046430 res!1648581) b!4046431))

(assert (= (and d!1200934 (not res!1648578)) b!4046432))

(assert (=> b!4046431 m!4645379))

(assert (=> b!4046431 m!4645379))

(assert (=> b!4046431 m!4645379))

(assert (=> b!4046431 m!4645379))

(declare-fun m!4645383 () Bool)

(assert (=> b!4046431 m!4645383))

(declare-fun m!4645385 () Bool)

(assert (=> b!4046430 m!4645385))

(assert (=> b!4046430 m!4645385))

(assert (=> b!4046432 m!4645323))

(assert (=> b!4046432 m!4645323))

(assert (=> b!4045858 d!1200934))

(declare-fun d!1200936 () Bool)

(assert (=> d!1200936 (isPrefix!4021 lt!1441304 lt!1441304)))

(declare-fun lt!1441560 () Unit!62527)

(declare-fun choose!24531 (List!43405 List!43405) Unit!62527)

(assert (=> d!1200936 (= lt!1441560 (choose!24531 lt!1441304 lt!1441304))))

(assert (=> d!1200936 (= (lemmaIsPrefixRefl!2588 lt!1441304 lt!1441304) lt!1441560)))

(declare-fun bs!591244 () Bool)

(assert (= bs!591244 d!1200936))

(assert (=> bs!591244 m!4644427))

(declare-fun m!4645387 () Bool)

(assert (=> bs!591244 m!4645387))

(assert (=> b!4045858 d!1200936))

(declare-fun b!4046433 () Bool)

(declare-fun res!1648583 () Bool)

(declare-fun e!2510763 () Bool)

(assert (=> b!4046433 (=> (not res!1648583) (not e!2510763))))

(declare-fun lt!1441561 () Option!9348)

(assert (=> b!4046433 (= res!1648583 (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))))))

(declare-fun b!4046434 () Bool)

(declare-fun e!2510764 () Option!9348)

(declare-fun lt!1441565 () Option!9348)

(declare-fun lt!1441563 () Option!9348)

(assert (=> b!4046434 (= e!2510764 (ite (and ((_ is None!9347) lt!1441565) ((_ is None!9347) lt!1441563)) None!9347 (ite ((_ is None!9347) lt!1441563) lt!1441565 (ite ((_ is None!9347) lt!1441565) lt!1441563 (ite (>= (size!32357 (_1!24311 (v!39751 lt!1441565))) (size!32357 (_1!24311 (v!39751 lt!1441563)))) lt!1441565 lt!1441563)))))))

(declare-fun call!287670 () Option!9348)

(assert (=> b!4046434 (= lt!1441565 call!287670)))

(assert (=> b!4046434 (= lt!1441563 (maxPrefix!3821 thiss!21717 (t!335504 rules!2999) lt!1441304))))

(declare-fun b!4046435 () Bool)

(assert (=> b!4046435 (= e!2510764 call!287670)))

(declare-fun bm!287665 () Bool)

(assert (=> bm!287665 (= call!287670 (maxPrefixOneRule!2833 thiss!21717 (h!48703 rules!2999) lt!1441304))))

(declare-fun b!4046436 () Bool)

(assert (=> b!4046436 (= e!2510763 (contains!8604 rules!2999 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))))

(declare-fun d!1200938 () Bool)

(declare-fun e!2510762 () Bool)

(assert (=> d!1200938 e!2510762))

(declare-fun res!1648584 () Bool)

(assert (=> d!1200938 (=> res!1648584 e!2510762)))

(assert (=> d!1200938 (= res!1648584 (isEmpty!25830 lt!1441561))))

(assert (=> d!1200938 (= lt!1441561 e!2510764)))

(declare-fun c!698972 () Bool)

(assert (=> d!1200938 (= c!698972 (and ((_ is Cons!43283) rules!2999) ((_ is Nil!43283) (t!335504 rules!2999))))))

(declare-fun lt!1441564 () Unit!62527)

(declare-fun lt!1441562 () Unit!62527)

(assert (=> d!1200938 (= lt!1441564 lt!1441562)))

(assert (=> d!1200938 (isPrefix!4021 lt!1441304 lt!1441304)))

(assert (=> d!1200938 (= lt!1441562 (lemmaIsPrefixRefl!2588 lt!1441304 lt!1441304))))

(assert (=> d!1200938 (rulesValidInductive!2529 thiss!21717 rules!2999)))

(assert (=> d!1200938 (= (maxPrefix!3821 thiss!21717 rules!2999 lt!1441304) lt!1441561)))

(declare-fun b!4046437 () Bool)

(declare-fun res!1648588 () Bool)

(assert (=> b!4046437 (=> (not res!1648588) (not e!2510763))))

(assert (=> b!4046437 (= res!1648588 (< (size!32358 (_2!24311 (get!14199 lt!1441561))) (size!32358 lt!1441304)))))

(declare-fun b!4046438 () Bool)

(declare-fun res!1648582 () Bool)

(assert (=> b!4046438 (=> (not res!1648582) (not e!2510763))))

(assert (=> b!4046438 (= res!1648582 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))) (_2!24311 (get!14199 lt!1441561))) lt!1441304))))

(declare-fun b!4046439 () Bool)

(declare-fun res!1648587 () Bool)

(assert (=> b!4046439 (=> (not res!1648587) (not e!2510763))))

(assert (=> b!4046439 (= res!1648587 (= (value!218253 (_1!24311 (get!14199 lt!1441561))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561)))))))))

(declare-fun b!4046440 () Bool)

(assert (=> b!4046440 (= e!2510762 e!2510763)))

(declare-fun res!1648586 () Bool)

(assert (=> b!4046440 (=> (not res!1648586) (not e!2510763))))

(assert (=> b!4046440 (= res!1648586 (isDefined!7108 lt!1441561))))

(declare-fun b!4046441 () Bool)

(declare-fun res!1648585 () Bool)

(assert (=> b!4046441 (=> (not res!1648585) (not e!2510763))))

(assert (=> b!4046441 (= res!1648585 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561)))))))

(assert (= (and d!1200938 c!698972) b!4046435))

(assert (= (and d!1200938 (not c!698972)) b!4046434))

(assert (= (or b!4046435 b!4046434) bm!287665))

(assert (= (and d!1200938 (not res!1648584)) b!4046440))

(assert (= (and b!4046440 res!1648586) b!4046441))

(assert (= (and b!4046441 res!1648585) b!4046437))

(assert (= (and b!4046437 res!1648588) b!4046438))

(assert (= (and b!4046438 res!1648582) b!4046439))

(assert (= (and b!4046439 res!1648587) b!4046433))

(assert (= (and b!4046433 res!1648583) b!4046436))

(declare-fun m!4645389 () Bool)

(assert (=> b!4046441 m!4645389))

(declare-fun m!4645391 () Bool)

(assert (=> b!4046441 m!4645391))

(assert (=> b!4046441 m!4645391))

(declare-fun m!4645393 () Bool)

(assert (=> b!4046441 m!4645393))

(declare-fun m!4645395 () Bool)

(assert (=> b!4046440 m!4645395))

(assert (=> b!4046437 m!4645389))

(declare-fun m!4645397 () Bool)

(assert (=> b!4046437 m!4645397))

(assert (=> b!4046437 m!4645323))

(declare-fun m!4645399 () Bool)

(assert (=> b!4046434 m!4645399))

(declare-fun m!4645401 () Bool)

(assert (=> bm!287665 m!4645401))

(assert (=> b!4046438 m!4645389))

(assert (=> b!4046438 m!4645391))

(assert (=> b!4046438 m!4645391))

(assert (=> b!4046438 m!4645393))

(assert (=> b!4046438 m!4645393))

(declare-fun m!4645403 () Bool)

(assert (=> b!4046438 m!4645403))

(assert (=> b!4046439 m!4645389))

(declare-fun m!4645405 () Bool)

(assert (=> b!4046439 m!4645405))

(assert (=> b!4046439 m!4645405))

(declare-fun m!4645407 () Bool)

(assert (=> b!4046439 m!4645407))

(assert (=> b!4046436 m!4645389))

(declare-fun m!4645409 () Bool)

(assert (=> b!4046436 m!4645409))

(declare-fun m!4645411 () Bool)

(assert (=> d!1200938 m!4645411))

(assert (=> d!1200938 m!4644427))

(assert (=> d!1200938 m!4644429))

(assert (=> d!1200938 m!4645231))

(assert (=> b!4046433 m!4645389))

(assert (=> b!4046433 m!4645391))

(assert (=> b!4046433 m!4645391))

(assert (=> b!4046433 m!4645393))

(assert (=> b!4046433 m!4645393))

(declare-fun m!4645413 () Bool)

(assert (=> b!4046433 m!4645413))

(assert (=> b!4045879 d!1200938))

(declare-fun b!4046443 () Bool)

(declare-fun e!2510766 () List!43405)

(assert (=> b!4046443 (= e!2510766 (Cons!43281 (h!48701 prefix!494) (++!11336 (t!335502 prefix!494) suffix!1299)))))

(declare-fun b!4046444 () Bool)

(declare-fun res!1648590 () Bool)

(declare-fun e!2510765 () Bool)

(assert (=> b!4046444 (=> (not res!1648590) (not e!2510765))))

(declare-fun lt!1441566 () List!43405)

(assert (=> b!4046444 (= res!1648590 (= (size!32358 lt!1441566) (+ (size!32358 prefix!494) (size!32358 suffix!1299))))))

(declare-fun b!4046445 () Bool)

(assert (=> b!4046445 (= e!2510765 (or (not (= suffix!1299 Nil!43281)) (= lt!1441566 prefix!494)))))

(declare-fun b!4046442 () Bool)

(assert (=> b!4046442 (= e!2510766 suffix!1299)))

(declare-fun d!1200940 () Bool)

(assert (=> d!1200940 e!2510765))

(declare-fun res!1648589 () Bool)

(assert (=> d!1200940 (=> (not res!1648589) (not e!2510765))))

(assert (=> d!1200940 (= res!1648589 (= (content!6586 lt!1441566) ((_ map or) (content!6586 prefix!494) (content!6586 suffix!1299))))))

(assert (=> d!1200940 (= lt!1441566 e!2510766)))

(declare-fun c!698973 () Bool)

(assert (=> d!1200940 (= c!698973 ((_ is Nil!43281) prefix!494))))

(assert (=> d!1200940 (= (++!11336 prefix!494 suffix!1299) lt!1441566)))

(assert (= (and d!1200940 c!698973) b!4046442))

(assert (= (and d!1200940 (not c!698973)) b!4046443))

(assert (= (and d!1200940 res!1648589) b!4046444))

(assert (= (and b!4046444 res!1648590) b!4046445))

(declare-fun m!4645415 () Bool)

(assert (=> b!4046443 m!4645415))

(declare-fun m!4645417 () Bool)

(assert (=> b!4046444 m!4645417))

(assert (=> b!4046444 m!4644371))

(assert (=> b!4046444 m!4644351))

(declare-fun m!4645419 () Bool)

(assert (=> d!1200940 m!4645419))

(declare-fun m!4645421 () Bool)

(assert (=> d!1200940 m!4645421))

(assert (=> d!1200940 m!4645275))

(assert (=> b!4045879 d!1200940))

(declare-fun d!1200942 () Bool)

(assert (=> d!1200942 (= (isEmpty!25827 rules!2999) ((_ is Nil!43283) rules!2999))))

(assert (=> b!4045857 d!1200942))

(declare-fun d!1200944 () Bool)

(assert (=> d!1200944 (= (_2!24311 (v!39751 lt!1441282)) lt!1441283)))

(declare-fun lt!1441567 () Unit!62527)

(assert (=> d!1200944 (= lt!1441567 (choose!24526 lt!1441314 (_2!24311 (v!39751 lt!1441282)) lt!1441314 lt!1441283 lt!1441294))))

(assert (=> d!1200944 (isPrefix!4021 lt!1441314 lt!1441294)))

(assert (=> d!1200944 (= (lemmaSamePrefixThenSameSuffix!2182 lt!1441314 (_2!24311 (v!39751 lt!1441282)) lt!1441314 lt!1441283 lt!1441294) lt!1441567)))

(declare-fun bs!591245 () Bool)

(assert (= bs!591245 d!1200944))

(declare-fun m!4645423 () Bool)

(assert (=> bs!591245 m!4645423))

(assert (=> bs!591245 m!4644433))

(assert (=> b!4045867 d!1200944))

(declare-fun b!4046448 () Bool)

(declare-fun e!2510769 () Bool)

(assert (=> b!4046448 (= e!2510769 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441333)))))

(declare-fun d!1200946 () Bool)

(declare-fun e!2510768 () Bool)

(assert (=> d!1200946 e!2510768))

(declare-fun res!1648591 () Bool)

(assert (=> d!1200946 (=> res!1648591 e!2510768)))

(declare-fun lt!1441568 () Bool)

(assert (=> d!1200946 (= res!1648591 (not lt!1441568))))

(declare-fun e!2510767 () Bool)

(assert (=> d!1200946 (= lt!1441568 e!2510767)))

(declare-fun res!1648593 () Bool)

(assert (=> d!1200946 (=> res!1648593 e!2510767)))

(assert (=> d!1200946 (= res!1648593 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200946 (= (isPrefix!4021 lt!1441314 lt!1441333) lt!1441568)))

(declare-fun b!4046446 () Bool)

(assert (=> b!4046446 (= e!2510767 e!2510769)))

(declare-fun res!1648592 () Bool)

(assert (=> b!4046446 (=> (not res!1648592) (not e!2510769))))

(assert (=> b!4046446 (= res!1648592 (not ((_ is Nil!43281) lt!1441333)))))

(declare-fun b!4046447 () Bool)

(declare-fun res!1648594 () Bool)

(assert (=> b!4046447 (=> (not res!1648594) (not e!2510769))))

(assert (=> b!4046447 (= res!1648594 (= (head!8557 lt!1441314) (head!8557 lt!1441333)))))

(declare-fun b!4046449 () Bool)

(assert (=> b!4046449 (= e!2510768 (>= (size!32358 lt!1441333) (size!32358 lt!1441314)))))

(assert (= (and d!1200946 (not res!1648593)) b!4046446))

(assert (= (and b!4046446 res!1648592) b!4046447))

(assert (= (and b!4046447 res!1648594) b!4046448))

(assert (= (and d!1200946 (not res!1648591)) b!4046449))

(assert (=> b!4046448 m!4644691))

(declare-fun m!4645425 () Bool)

(assert (=> b!4046448 m!4645425))

(assert (=> b!4046448 m!4644691))

(assert (=> b!4046448 m!4645425))

(declare-fun m!4645427 () Bool)

(assert (=> b!4046448 m!4645427))

(assert (=> b!4046447 m!4644697))

(declare-fun m!4645429 () Bool)

(assert (=> b!4046447 m!4645429))

(declare-fun m!4645431 () Bool)

(assert (=> b!4046449 m!4645431))

(assert (=> b!4046449 m!4644397))

(assert (=> b!4045867 d!1200946))

(declare-fun d!1200948 () Bool)

(assert (=> d!1200948 (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 lt!1441283))))

(declare-fun lt!1441569 () Unit!62527)

(assert (=> d!1200948 (= lt!1441569 (choose!24523 lt!1441314 lt!1441283))))

(assert (=> d!1200948 (= (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441314 lt!1441283) lt!1441569)))

(declare-fun bs!591246 () Bool)

(assert (= bs!591246 d!1200948))

(assert (=> bs!591246 m!4644465))

(assert (=> bs!591246 m!4644465))

(declare-fun m!4645433 () Bool)

(assert (=> bs!591246 m!4645433))

(declare-fun m!4645435 () Bool)

(assert (=> bs!591246 m!4645435))

(assert (=> b!4045867 d!1200948))

(declare-fun d!1200950 () Bool)

(assert (=> d!1200950 (= (inv!57847 (tag!7794 (h!48703 rules!2999))) (= (mod (str.len (value!218252 (tag!7794 (h!48703 rules!2999)))) 2) 0))))

(assert (=> b!4045845 d!1200950))

(declare-fun d!1200952 () Bool)

(declare-fun res!1648597 () Bool)

(declare-fun e!2510772 () Bool)

(assert (=> d!1200952 (=> (not res!1648597) (not e!2510772))))

(assert (=> d!1200952 (= res!1648597 (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (h!48703 rules!2999)))))))

(assert (=> d!1200952 (= (inv!57850 (transformation!6934 (h!48703 rules!2999))) e!2510772)))

(declare-fun b!4046452 () Bool)

(assert (=> b!4046452 (= e!2510772 (equivClasses!2861 (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (h!48703 rules!2999)))))))

(assert (= (and d!1200952 res!1648597) b!4046452))

(declare-fun m!4645437 () Bool)

(assert (=> d!1200952 m!4645437))

(declare-fun m!4645439 () Bool)

(assert (=> b!4046452 m!4645439))

(assert (=> b!4045845 d!1200952))

(declare-fun d!1200954 () Bool)

(declare-fun lt!1441570 () Int)

(assert (=> d!1200954 (>= lt!1441570 0)))

(declare-fun e!2510773 () Int)

(assert (=> d!1200954 (= lt!1441570 e!2510773)))

(declare-fun c!698974 () Bool)

(assert (=> d!1200954 (= c!698974 ((_ is Nil!43281) (originalCharacters!7534 token!484)))))

(assert (=> d!1200954 (= (size!32358 (originalCharacters!7534 token!484)) lt!1441570)))

(declare-fun b!4046453 () Bool)

(assert (=> b!4046453 (= e!2510773 0)))

(declare-fun b!4046454 () Bool)

(assert (=> b!4046454 (= e!2510773 (+ 1 (size!32358 (t!335502 (originalCharacters!7534 token!484)))))))

(assert (= (and d!1200954 c!698974) b!4046453))

(assert (= (and d!1200954 (not c!698974)) b!4046454))

(declare-fun m!4645441 () Bool)

(assert (=> b!4046454 m!4645441))

(assert (=> b!4045865 d!1200954))

(declare-fun d!1200956 () Bool)

(assert (=> d!1200956 (= (inv!57847 (tag!7794 (rule!10010 token!484))) (= (mod (str.len (value!218252 (tag!7794 (rule!10010 token!484)))) 2) 0))))

(assert (=> b!4045864 d!1200956))

(declare-fun d!1200958 () Bool)

(declare-fun res!1648598 () Bool)

(declare-fun e!2510774 () Bool)

(assert (=> d!1200958 (=> (not res!1648598) (not e!2510774))))

(assert (=> d!1200958 (= res!1648598 (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))))))

(assert (=> d!1200958 (= (inv!57850 (transformation!6934 (rule!10010 token!484))) e!2510774)))

(declare-fun b!4046455 () Bool)

(assert (=> b!4046455 (= e!2510774 (equivClasses!2861 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))))))

(assert (= (and d!1200958 res!1648598) b!4046455))

(declare-fun m!4645443 () Bool)

(assert (=> d!1200958 m!4645443))

(declare-fun m!4645445 () Bool)

(assert (=> b!4046455 m!4645445))

(assert (=> b!4045864 d!1200958))

(declare-fun b!4046458 () Bool)

(declare-fun e!2510777 () Bool)

(assert (=> b!4046458 (= e!2510777 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441315)))))

(declare-fun d!1200960 () Bool)

(declare-fun e!2510776 () Bool)

(assert (=> d!1200960 e!2510776))

(declare-fun res!1648599 () Bool)

(assert (=> d!1200960 (=> res!1648599 e!2510776)))

(declare-fun lt!1441571 () Bool)

(assert (=> d!1200960 (= res!1648599 (not lt!1441571))))

(declare-fun e!2510775 () Bool)

(assert (=> d!1200960 (= lt!1441571 e!2510775)))

(declare-fun res!1648601 () Bool)

(assert (=> d!1200960 (=> res!1648601 e!2510775)))

(assert (=> d!1200960 (= res!1648601 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200960 (= (isPrefix!4021 lt!1441296 lt!1441315) lt!1441571)))

(declare-fun b!4046456 () Bool)

(assert (=> b!4046456 (= e!2510775 e!2510777)))

(declare-fun res!1648600 () Bool)

(assert (=> b!4046456 (=> (not res!1648600) (not e!2510777))))

(assert (=> b!4046456 (= res!1648600 (not ((_ is Nil!43281) lt!1441315)))))

(declare-fun b!4046457 () Bool)

(declare-fun res!1648602 () Bool)

(assert (=> b!4046457 (=> (not res!1648602) (not e!2510777))))

(assert (=> b!4046457 (= res!1648602 (= (head!8557 lt!1441296) (head!8557 lt!1441315)))))

(declare-fun b!4046459 () Bool)

(assert (=> b!4046459 (= e!2510776 (>= (size!32358 lt!1441315) (size!32358 lt!1441296)))))

(assert (= (and d!1200960 (not res!1648601)) b!4046456))

(assert (= (and b!4046456 res!1648600) b!4046457))

(assert (= (and b!4046457 res!1648602) b!4046458))

(assert (= (and d!1200960 (not res!1648599)) b!4046459))

(assert (=> b!4046458 m!4645237))

(declare-fun m!4645447 () Bool)

(assert (=> b!4046458 m!4645447))

(assert (=> b!4046458 m!4645237))

(assert (=> b!4046458 m!4645447))

(declare-fun m!4645449 () Bool)

(assert (=> b!4046458 m!4645449))

(assert (=> b!4046457 m!4645243))

(declare-fun m!4645451 () Bool)

(assert (=> b!4046457 m!4645451))

(declare-fun m!4645453 () Bool)

(assert (=> b!4046459 m!4645453))

(assert (=> b!4046459 m!4644369))

(assert (=> b!4045863 d!1200960))

(declare-fun d!1200962 () Bool)

(assert (=> d!1200962 (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 suffixResult!105))))

(declare-fun lt!1441572 () Unit!62527)

(assert (=> d!1200962 (= lt!1441572 (choose!24523 lt!1441296 suffixResult!105))))

(assert (=> d!1200962 (= (lemmaConcatTwoListThenFirstIsPrefix!2856 lt!1441296 suffixResult!105) lt!1441572)))

(declare-fun bs!591247 () Bool)

(assert (= bs!591247 d!1200962))

(assert (=> bs!591247 m!4644479))

(assert (=> bs!591247 m!4644479))

(declare-fun m!4645455 () Bool)

(assert (=> bs!591247 m!4645455))

(declare-fun m!4645457 () Bool)

(assert (=> bs!591247 m!4645457))

(assert (=> b!4045863 d!1200962))

(declare-fun d!1200964 () Bool)

(assert (=> d!1200964 (isPrefix!4021 prefix!494 (++!11336 prefix!494 suffix!1299))))

(declare-fun lt!1441573 () Unit!62527)

(assert (=> d!1200964 (= lt!1441573 (choose!24523 prefix!494 suffix!1299))))

(assert (=> d!1200964 (= (lemmaConcatTwoListThenFirstIsPrefix!2856 prefix!494 suffix!1299) lt!1441573)))

(declare-fun bs!591248 () Bool)

(assert (= bs!591248 d!1200964))

(assert (=> bs!591248 m!4644379))

(assert (=> bs!591248 m!4644379))

(declare-fun m!4645459 () Bool)

(assert (=> bs!591248 m!4645459))

(declare-fun m!4645461 () Bool)

(assert (=> bs!591248 m!4645461))

(assert (=> b!4045863 d!1200964))

(declare-fun b!4046462 () Bool)

(declare-fun e!2510780 () Bool)

(assert (=> b!4046462 (= e!2510780 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441304)))))

(declare-fun d!1200966 () Bool)

(declare-fun e!2510779 () Bool)

(assert (=> d!1200966 e!2510779))

(declare-fun res!1648603 () Bool)

(assert (=> d!1200966 (=> res!1648603 e!2510779)))

(declare-fun lt!1441574 () Bool)

(assert (=> d!1200966 (= res!1648603 (not lt!1441574))))

(declare-fun e!2510778 () Bool)

(assert (=> d!1200966 (= lt!1441574 e!2510778)))

(declare-fun res!1648605 () Bool)

(assert (=> d!1200966 (=> res!1648605 e!2510778)))

(assert (=> d!1200966 (= res!1648605 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200966 (= (isPrefix!4021 lt!1441296 lt!1441304) lt!1441574)))

(declare-fun b!4046460 () Bool)

(assert (=> b!4046460 (= e!2510778 e!2510780)))

(declare-fun res!1648604 () Bool)

(assert (=> b!4046460 (=> (not res!1648604) (not e!2510780))))

(assert (=> b!4046460 (= res!1648604 (not ((_ is Nil!43281) lt!1441304)))))

(declare-fun b!4046461 () Bool)

(declare-fun res!1648606 () Bool)

(assert (=> b!4046461 (=> (not res!1648606) (not e!2510780))))

(assert (=> b!4046461 (= res!1648606 (= (head!8557 lt!1441296) (head!8557 lt!1441304)))))

(declare-fun b!4046463 () Bool)

(assert (=> b!4046463 (= e!2510779 (>= (size!32358 lt!1441304) (size!32358 lt!1441296)))))

(assert (= (and d!1200966 (not res!1648605)) b!4046460))

(assert (= (and b!4046460 res!1648604) b!4046461))

(assert (= (and b!4046461 res!1648606) b!4046462))

(assert (= (and d!1200966 (not res!1648603)) b!4046463))

(assert (=> b!4046462 m!4645237))

(assert (=> b!4046462 m!4645379))

(assert (=> b!4046462 m!4645237))

(assert (=> b!4046462 m!4645379))

(declare-fun m!4645463 () Bool)

(assert (=> b!4046462 m!4645463))

(assert (=> b!4046461 m!4645243))

(assert (=> b!4046461 m!4645385))

(assert (=> b!4046463 m!4645323))

(assert (=> b!4046463 m!4644369))

(assert (=> b!4045863 d!1200966))

(declare-fun b!4046466 () Bool)

(declare-fun e!2510783 () Bool)

(assert (=> b!4046466 (= e!2510783 (isPrefix!4021 (tail!6289 prefix!494) (tail!6289 lt!1441304)))))

(declare-fun d!1200968 () Bool)

(declare-fun e!2510782 () Bool)

(assert (=> d!1200968 e!2510782))

(declare-fun res!1648607 () Bool)

(assert (=> d!1200968 (=> res!1648607 e!2510782)))

(declare-fun lt!1441575 () Bool)

(assert (=> d!1200968 (= res!1648607 (not lt!1441575))))

(declare-fun e!2510781 () Bool)

(assert (=> d!1200968 (= lt!1441575 e!2510781)))

(declare-fun res!1648609 () Bool)

(assert (=> d!1200968 (=> res!1648609 e!2510781)))

(assert (=> d!1200968 (= res!1648609 ((_ is Nil!43281) prefix!494))))

(assert (=> d!1200968 (= (isPrefix!4021 prefix!494 lt!1441304) lt!1441575)))

(declare-fun b!4046464 () Bool)

(assert (=> b!4046464 (= e!2510781 e!2510783)))

(declare-fun res!1648608 () Bool)

(assert (=> b!4046464 (=> (not res!1648608) (not e!2510783))))

(assert (=> b!4046464 (= res!1648608 (not ((_ is Nil!43281) lt!1441304)))))

(declare-fun b!4046465 () Bool)

(declare-fun res!1648610 () Bool)

(assert (=> b!4046465 (=> (not res!1648610) (not e!2510783))))

(assert (=> b!4046465 (= res!1648610 (= (head!8557 prefix!494) (head!8557 lt!1441304)))))

(declare-fun b!4046467 () Bool)

(assert (=> b!4046467 (= e!2510782 (>= (size!32358 lt!1441304) (size!32358 prefix!494)))))

(assert (= (and d!1200968 (not res!1648609)) b!4046464))

(assert (= (and b!4046464 res!1648608) b!4046465))

(assert (= (and b!4046465 res!1648610) b!4046466))

(assert (= (and d!1200968 (not res!1648607)) b!4046467))

(declare-fun m!4645465 () Bool)

(assert (=> b!4046466 m!4645465))

(assert (=> b!4046466 m!4645379))

(assert (=> b!4046466 m!4645465))

(assert (=> b!4046466 m!4645379))

(declare-fun m!4645467 () Bool)

(assert (=> b!4046466 m!4645467))

(declare-fun m!4645469 () Bool)

(assert (=> b!4046465 m!4645469))

(assert (=> b!4046465 m!4645385))

(assert (=> b!4046467 m!4645323))

(assert (=> b!4046467 m!4644371))

(assert (=> b!4045863 d!1200968))

(declare-fun b!4046470 () Bool)

(declare-fun e!2510786 () Bool)

(assert (=> b!4046470 (= e!2510786 (isPrefix!4021 (tail!6289 newSuffix!27) (tail!6289 suffix!1299)))))

(declare-fun d!1200970 () Bool)

(declare-fun e!2510785 () Bool)

(assert (=> d!1200970 e!2510785))

(declare-fun res!1648611 () Bool)

(assert (=> d!1200970 (=> res!1648611 e!2510785)))

(declare-fun lt!1441576 () Bool)

(assert (=> d!1200970 (= res!1648611 (not lt!1441576))))

(declare-fun e!2510784 () Bool)

(assert (=> d!1200970 (= lt!1441576 e!2510784)))

(declare-fun res!1648613 () Bool)

(assert (=> d!1200970 (=> res!1648613 e!2510784)))

(assert (=> d!1200970 (= res!1648613 ((_ is Nil!43281) newSuffix!27))))

(assert (=> d!1200970 (= (isPrefix!4021 newSuffix!27 suffix!1299) lt!1441576)))

(declare-fun b!4046468 () Bool)

(assert (=> b!4046468 (= e!2510784 e!2510786)))

(declare-fun res!1648612 () Bool)

(assert (=> b!4046468 (=> (not res!1648612) (not e!2510786))))

(assert (=> b!4046468 (= res!1648612 (not ((_ is Nil!43281) suffix!1299)))))

(declare-fun b!4046469 () Bool)

(declare-fun res!1648614 () Bool)

(assert (=> b!4046469 (=> (not res!1648614) (not e!2510786))))

(assert (=> b!4046469 (= res!1648614 (= (head!8557 newSuffix!27) (head!8557 suffix!1299)))))

(declare-fun b!4046471 () Bool)

(assert (=> b!4046471 (= e!2510785 (>= (size!32358 suffix!1299) (size!32358 newSuffix!27)))))

(assert (= (and d!1200970 (not res!1648613)) b!4046468))

(assert (= (and b!4046468 res!1648612) b!4046469))

(assert (= (and b!4046469 res!1648614) b!4046470))

(assert (= (and d!1200970 (not res!1648611)) b!4046471))

(declare-fun m!4645471 () Bool)

(assert (=> b!4046470 m!4645471))

(declare-fun m!4645473 () Bool)

(assert (=> b!4046470 m!4645473))

(assert (=> b!4046470 m!4645471))

(assert (=> b!4046470 m!4645473))

(declare-fun m!4645475 () Bool)

(assert (=> b!4046470 m!4645475))

(declare-fun m!4645477 () Bool)

(assert (=> b!4046469 m!4645477))

(declare-fun m!4645479 () Bool)

(assert (=> b!4046469 m!4645479))

(assert (=> b!4046471 m!4644351))

(assert (=> b!4046471 m!4644353))

(assert (=> b!4045884 d!1200970))

(declare-fun b!4046474 () Bool)

(declare-fun e!2510789 () Bool)

(assert (=> b!4046474 (= e!2510789 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441304)))))

(declare-fun d!1200972 () Bool)

(declare-fun e!2510788 () Bool)

(assert (=> d!1200972 e!2510788))

(declare-fun res!1648615 () Bool)

(assert (=> d!1200972 (=> res!1648615 e!2510788)))

(declare-fun lt!1441577 () Bool)

(assert (=> d!1200972 (= res!1648615 (not lt!1441577))))

(declare-fun e!2510787 () Bool)

(assert (=> d!1200972 (= lt!1441577 e!2510787)))

(declare-fun res!1648617 () Bool)

(assert (=> d!1200972 (=> res!1648617 e!2510787)))

(assert (=> d!1200972 (= res!1648617 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200972 (= (isPrefix!4021 lt!1441314 lt!1441304) lt!1441577)))

(declare-fun b!4046472 () Bool)

(assert (=> b!4046472 (= e!2510787 e!2510789)))

(declare-fun res!1648616 () Bool)

(assert (=> b!4046472 (=> (not res!1648616) (not e!2510789))))

(assert (=> b!4046472 (= res!1648616 (not ((_ is Nil!43281) lt!1441304)))))

(declare-fun b!4046473 () Bool)

(declare-fun res!1648618 () Bool)

(assert (=> b!4046473 (=> (not res!1648618) (not e!2510789))))

(assert (=> b!4046473 (= res!1648618 (= (head!8557 lt!1441314) (head!8557 lt!1441304)))))

(declare-fun b!4046475 () Bool)

(assert (=> b!4046475 (= e!2510788 (>= (size!32358 lt!1441304) (size!32358 lt!1441314)))))

(assert (= (and d!1200972 (not res!1648617)) b!4046472))

(assert (= (and b!4046472 res!1648616) b!4046473))

(assert (= (and b!4046473 res!1648618) b!4046474))

(assert (= (and d!1200972 (not res!1648615)) b!4046475))

(assert (=> b!4046474 m!4644691))

(assert (=> b!4046474 m!4645379))

(assert (=> b!4046474 m!4644691))

(assert (=> b!4046474 m!4645379))

(declare-fun m!4645481 () Bool)

(assert (=> b!4046474 m!4645481))

(assert (=> b!4046473 m!4644697))

(assert (=> b!4046473 m!4645385))

(assert (=> b!4046475 m!4645323))

(assert (=> b!4046475 m!4644397))

(assert (=> b!4045872 d!1200972))

(declare-fun b!4046478 () Bool)

(declare-fun e!2510792 () Bool)

(assert (=> b!4046478 (= e!2510792 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441323)))))

(declare-fun d!1200974 () Bool)

(declare-fun e!2510791 () Bool)

(assert (=> d!1200974 e!2510791))

(declare-fun res!1648619 () Bool)

(assert (=> d!1200974 (=> res!1648619 e!2510791)))

(declare-fun lt!1441578 () Bool)

(assert (=> d!1200974 (= res!1648619 (not lt!1441578))))

(declare-fun e!2510790 () Bool)

(assert (=> d!1200974 (= lt!1441578 e!2510790)))

(declare-fun res!1648621 () Bool)

(assert (=> d!1200974 (=> res!1648621 e!2510790)))

(assert (=> d!1200974 (= res!1648621 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200974 (= (isPrefix!4021 lt!1441314 lt!1441323) lt!1441578)))

(declare-fun b!4046476 () Bool)

(assert (=> b!4046476 (= e!2510790 e!2510792)))

(declare-fun res!1648620 () Bool)

(assert (=> b!4046476 (=> (not res!1648620) (not e!2510792))))

(assert (=> b!4046476 (= res!1648620 (not ((_ is Nil!43281) lt!1441323)))))

(declare-fun b!4046477 () Bool)

(declare-fun res!1648622 () Bool)

(assert (=> b!4046477 (=> (not res!1648622) (not e!2510792))))

(assert (=> b!4046477 (= res!1648622 (= (head!8557 lt!1441314) (head!8557 lt!1441323)))))

(declare-fun b!4046479 () Bool)

(assert (=> b!4046479 (= e!2510791 (>= (size!32358 lt!1441323) (size!32358 lt!1441314)))))

(assert (= (and d!1200974 (not res!1648621)) b!4046476))

(assert (= (and b!4046476 res!1648620) b!4046477))

(assert (= (and b!4046477 res!1648622) b!4046478))

(assert (= (and d!1200974 (not res!1648619)) b!4046479))

(assert (=> b!4046478 m!4644691))

(declare-fun m!4645483 () Bool)

(assert (=> b!4046478 m!4645483))

(assert (=> b!4046478 m!4644691))

(assert (=> b!4046478 m!4645483))

(declare-fun m!4645485 () Bool)

(assert (=> b!4046478 m!4645485))

(assert (=> b!4046477 m!4644697))

(declare-fun m!4645487 () Bool)

(assert (=> b!4046477 m!4645487))

(declare-fun m!4645489 () Bool)

(assert (=> b!4046479 m!4645489))

(assert (=> b!4046479 m!4644397))

(assert (=> b!4045872 d!1200974))

(declare-fun d!1200976 () Bool)

(assert (=> d!1200976 (isPrefix!4021 lt!1441314 (++!11336 lt!1441294 lt!1441303))))

(declare-fun lt!1441581 () Unit!62527)

(declare-fun choose!24532 (List!43405 List!43405 List!43405) Unit!62527)

(assert (=> d!1200976 (= lt!1441581 (choose!24532 lt!1441314 lt!1441294 lt!1441303))))

(assert (=> d!1200976 (isPrefix!4021 lt!1441314 lt!1441294)))

(assert (=> d!1200976 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!814 lt!1441314 lt!1441294 lt!1441303) lt!1441581)))

(declare-fun bs!591249 () Bool)

(assert (= bs!591249 d!1200976))

(assert (=> bs!591249 m!4644437))

(assert (=> bs!591249 m!4644437))

(declare-fun m!4645491 () Bool)

(assert (=> bs!591249 m!4645491))

(declare-fun m!4645493 () Bool)

(assert (=> bs!591249 m!4645493))

(assert (=> bs!591249 m!4644433))

(assert (=> b!4045872 d!1200976))

(declare-fun b!4046481 () Bool)

(declare-fun e!2510794 () List!43405)

(assert (=> b!4046481 (= e!2510794 (Cons!43281 (h!48701 newSuffix!27) (++!11336 (t!335502 newSuffix!27) lt!1441303)))))

(declare-fun b!4046482 () Bool)

(declare-fun res!1648624 () Bool)

(declare-fun e!2510793 () Bool)

(assert (=> b!4046482 (=> (not res!1648624) (not e!2510793))))

(declare-fun lt!1441582 () List!43405)

(assert (=> b!4046482 (= res!1648624 (= (size!32358 lt!1441582) (+ (size!32358 newSuffix!27) (size!32358 lt!1441303))))))

(declare-fun b!4046483 () Bool)

(assert (=> b!4046483 (= e!2510793 (or (not (= lt!1441303 Nil!43281)) (= lt!1441582 newSuffix!27)))))

(declare-fun b!4046480 () Bool)

(assert (=> b!4046480 (= e!2510794 lt!1441303)))

(declare-fun d!1200978 () Bool)

(assert (=> d!1200978 e!2510793))

(declare-fun res!1648623 () Bool)

(assert (=> d!1200978 (=> (not res!1648623) (not e!2510793))))

(assert (=> d!1200978 (= res!1648623 (= (content!6586 lt!1441582) ((_ map or) (content!6586 newSuffix!27) (content!6586 lt!1441303))))))

(assert (=> d!1200978 (= lt!1441582 e!2510794)))

(declare-fun c!698975 () Bool)

(assert (=> d!1200978 (= c!698975 ((_ is Nil!43281) newSuffix!27))))

(assert (=> d!1200978 (= (++!11336 newSuffix!27 lt!1441303) lt!1441582)))

(assert (= (and d!1200978 c!698975) b!4046480))

(assert (= (and d!1200978 (not c!698975)) b!4046481))

(assert (= (and d!1200978 res!1648623) b!4046482))

(assert (= (and b!4046482 res!1648624) b!4046483))

(declare-fun m!4645495 () Bool)

(assert (=> b!4046481 m!4645495))

(declare-fun m!4645497 () Bool)

(assert (=> b!4046482 m!4645497))

(assert (=> b!4046482 m!4644353))

(declare-fun m!4645499 () Bool)

(assert (=> b!4046482 m!4645499))

(declare-fun m!4645501 () Bool)

(assert (=> d!1200978 m!4645501))

(declare-fun m!4645503 () Bool)

(assert (=> d!1200978 m!4645503))

(declare-fun m!4645505 () Bool)

(assert (=> d!1200978 m!4645505))

(assert (=> b!4045871 d!1200978))

(declare-fun d!1200980 () Bool)

(declare-fun lt!1441583 () List!43405)

(assert (=> d!1200980 (= (++!11336 newSuffix!27 lt!1441583) suffix!1299)))

(declare-fun e!2510795 () List!43405)

(assert (=> d!1200980 (= lt!1441583 e!2510795)))

(declare-fun c!698976 () Bool)

(assert (=> d!1200980 (= c!698976 ((_ is Cons!43281) newSuffix!27))))

(assert (=> d!1200980 (>= (size!32358 suffix!1299) (size!32358 newSuffix!27))))

(assert (=> d!1200980 (= (getSuffix!2438 suffix!1299 newSuffix!27) lt!1441583)))

(declare-fun b!4046484 () Bool)

(assert (=> b!4046484 (= e!2510795 (getSuffix!2438 (tail!6289 suffix!1299) (t!335502 newSuffix!27)))))

(declare-fun b!4046485 () Bool)

(assert (=> b!4046485 (= e!2510795 suffix!1299)))

(assert (= (and d!1200980 c!698976) b!4046484))

(assert (= (and d!1200980 (not c!698976)) b!4046485))

(declare-fun m!4645507 () Bool)

(assert (=> d!1200980 m!4645507))

(assert (=> d!1200980 m!4644351))

(assert (=> d!1200980 m!4644353))

(assert (=> b!4046484 m!4645473))

(assert (=> b!4046484 m!4645473))

(declare-fun m!4645509 () Bool)

(assert (=> b!4046484 m!4645509))

(assert (=> b!4045871 d!1200980))

(declare-fun b!4046487 () Bool)

(declare-fun e!2510797 () List!43405)

(assert (=> b!4046487 (= e!2510797 (Cons!43281 (h!48701 lt!1441314) (++!11336 (t!335502 lt!1441314) lt!1441283)))))

(declare-fun b!4046488 () Bool)

(declare-fun res!1648626 () Bool)

(declare-fun e!2510796 () Bool)

(assert (=> b!4046488 (=> (not res!1648626) (not e!2510796))))

(declare-fun lt!1441584 () List!43405)

(assert (=> b!4046488 (= res!1648626 (= (size!32358 lt!1441584) (+ (size!32358 lt!1441314) (size!32358 lt!1441283))))))

(declare-fun b!4046489 () Bool)

(assert (=> b!4046489 (= e!2510796 (or (not (= lt!1441283 Nil!43281)) (= lt!1441584 lt!1441314)))))

(declare-fun b!4046486 () Bool)

(assert (=> b!4046486 (= e!2510797 lt!1441283)))

(declare-fun d!1200982 () Bool)

(assert (=> d!1200982 e!2510796))

(declare-fun res!1648625 () Bool)

(assert (=> d!1200982 (=> (not res!1648625) (not e!2510796))))

(assert (=> d!1200982 (= res!1648625 (= (content!6586 lt!1441584) ((_ map or) (content!6586 lt!1441314) (content!6586 lt!1441283))))))

(assert (=> d!1200982 (= lt!1441584 e!2510797)))

(declare-fun c!698977 () Bool)

(assert (=> d!1200982 (= c!698977 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1200982 (= (++!11336 lt!1441314 lt!1441283) lt!1441584)))

(assert (= (and d!1200982 c!698977) b!4046486))

(assert (= (and d!1200982 (not c!698977)) b!4046487))

(assert (= (and d!1200982 res!1648625) b!4046488))

(assert (= (and b!4046488 res!1648626) b!4046489))

(declare-fun m!4645511 () Bool)

(assert (=> b!4046487 m!4645511))

(declare-fun m!4645513 () Bool)

(assert (=> b!4046488 m!4645513))

(assert (=> b!4046488 m!4644397))

(declare-fun m!4645515 () Bool)

(assert (=> b!4046488 m!4645515))

(declare-fun m!4645517 () Bool)

(assert (=> d!1200982 m!4645517))

(assert (=> d!1200982 m!4644859))

(declare-fun m!4645519 () Bool)

(assert (=> d!1200982 m!4645519))

(assert (=> b!4045870 d!1200982))

(declare-fun d!1200984 () Bool)

(declare-fun lt!1441585 () List!43405)

(assert (=> d!1200984 (= (++!11336 lt!1441314 lt!1441585) lt!1441294)))

(declare-fun e!2510798 () List!43405)

(assert (=> d!1200984 (= lt!1441585 e!2510798)))

(declare-fun c!698978 () Bool)

(assert (=> d!1200984 (= c!698978 ((_ is Cons!43281) lt!1441314))))

(assert (=> d!1200984 (>= (size!32358 lt!1441294) (size!32358 lt!1441314))))

(assert (=> d!1200984 (= (getSuffix!2438 lt!1441294 lt!1441314) lt!1441585)))

(declare-fun b!4046490 () Bool)

(assert (=> b!4046490 (= e!2510798 (getSuffix!2438 (tail!6289 lt!1441294) (t!335502 lt!1441314)))))

(declare-fun b!4046491 () Bool)

(assert (=> b!4046491 (= e!2510798 lt!1441294)))

(assert (= (and d!1200984 c!698978) b!4046490))

(assert (= (and d!1200984 (not c!698978)) b!4046491))

(declare-fun m!4645521 () Bool)

(assert (=> d!1200984 m!4645521))

(assert (=> d!1200984 m!4645121))

(assert (=> d!1200984 m!4644397))

(declare-fun m!4645523 () Bool)

(assert (=> b!4046490 m!4645523))

(assert (=> b!4046490 m!4645523))

(declare-fun m!4645525 () Bool)

(assert (=> b!4046490 m!4645525))

(assert (=> b!4045870 d!1200984))

(declare-fun b!4046493 () Bool)

(declare-fun e!2510800 () List!43405)

(assert (=> b!4046493 (= e!2510800 (Cons!43281 (h!48701 prefix!494) (++!11336 (t!335502 prefix!494) newSuffix!27)))))

(declare-fun b!4046494 () Bool)

(declare-fun res!1648628 () Bool)

(declare-fun e!2510799 () Bool)

(assert (=> b!4046494 (=> (not res!1648628) (not e!2510799))))

(declare-fun lt!1441586 () List!43405)

(assert (=> b!4046494 (= res!1648628 (= (size!32358 lt!1441586) (+ (size!32358 prefix!494) (size!32358 newSuffix!27))))))

(declare-fun b!4046495 () Bool)

(assert (=> b!4046495 (= e!2510799 (or (not (= newSuffix!27 Nil!43281)) (= lt!1441586 prefix!494)))))

(declare-fun b!4046492 () Bool)

(assert (=> b!4046492 (= e!2510800 newSuffix!27)))

(declare-fun d!1200986 () Bool)

(assert (=> d!1200986 e!2510799))

(declare-fun res!1648627 () Bool)

(assert (=> d!1200986 (=> (not res!1648627) (not e!2510799))))

(assert (=> d!1200986 (= res!1648627 (= (content!6586 lt!1441586) ((_ map or) (content!6586 prefix!494) (content!6586 newSuffix!27))))))

(assert (=> d!1200986 (= lt!1441586 e!2510800)))

(declare-fun c!698979 () Bool)

(assert (=> d!1200986 (= c!698979 ((_ is Nil!43281) prefix!494))))

(assert (=> d!1200986 (= (++!11336 prefix!494 newSuffix!27) lt!1441586)))

(assert (= (and d!1200986 c!698979) b!4046492))

(assert (= (and d!1200986 (not c!698979)) b!4046493))

(assert (= (and d!1200986 res!1648627) b!4046494))

(assert (= (and b!4046494 res!1648628) b!4046495))

(declare-fun m!4645527 () Bool)

(assert (=> b!4046493 m!4645527))

(declare-fun m!4645529 () Bool)

(assert (=> b!4046494 m!4645529))

(assert (=> b!4046494 m!4644371))

(assert (=> b!4046494 m!4644353))

(declare-fun m!4645531 () Bool)

(assert (=> d!1200986 m!4645531))

(assert (=> d!1200986 m!4645421))

(assert (=> d!1200986 m!4645503))

(assert (=> b!4045869 d!1200986))

(declare-fun b!4046497 () Bool)

(declare-fun e!2510802 () List!43405)

(assert (=> b!4046497 (= e!2510802 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) newSuffixResult!27)))))

(declare-fun b!4046498 () Bool)

(declare-fun res!1648630 () Bool)

(declare-fun e!2510801 () Bool)

(assert (=> b!4046498 (=> (not res!1648630) (not e!2510801))))

(declare-fun lt!1441587 () List!43405)

(assert (=> b!4046498 (= res!1648630 (= (size!32358 lt!1441587) (+ (size!32358 lt!1441296) (size!32358 newSuffixResult!27))))))

(declare-fun b!4046499 () Bool)

(assert (=> b!4046499 (= e!2510801 (or (not (= newSuffixResult!27 Nil!43281)) (= lt!1441587 lt!1441296)))))

(declare-fun b!4046496 () Bool)

(assert (=> b!4046496 (= e!2510802 newSuffixResult!27)))

(declare-fun d!1200988 () Bool)

(assert (=> d!1200988 e!2510801))

(declare-fun res!1648629 () Bool)

(assert (=> d!1200988 (=> (not res!1648629) (not e!2510801))))

(assert (=> d!1200988 (= res!1648629 (= (content!6586 lt!1441587) ((_ map or) (content!6586 lt!1441296) (content!6586 newSuffixResult!27))))))

(assert (=> d!1200988 (= lt!1441587 e!2510802)))

(declare-fun c!698980 () Bool)

(assert (=> d!1200988 (= c!698980 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200988 (= (++!11336 lt!1441296 newSuffixResult!27) lt!1441587)))

(assert (= (and d!1200988 c!698980) b!4046496))

(assert (= (and d!1200988 (not c!698980)) b!4046497))

(assert (= (and d!1200988 res!1648629) b!4046498))

(assert (= (and b!4046498 res!1648630) b!4046499))

(declare-fun m!4645533 () Bool)

(assert (=> b!4046497 m!4645533))

(declare-fun m!4645535 () Bool)

(assert (=> b!4046498 m!4645535))

(assert (=> b!4046498 m!4644369))

(assert (=> b!4046498 m!4644855))

(declare-fun m!4645537 () Bool)

(assert (=> d!1200988 m!4645537))

(assert (=> d!1200988 m!4645261))

(assert (=> d!1200988 m!4644861))

(assert (=> b!4045869 d!1200988))

(declare-fun b!4046501 () Bool)

(declare-fun e!2510804 () List!43405)

(assert (=> b!4046501 (= e!2510804 (Cons!43281 (h!48701 prefix!494) (++!11336 (t!335502 prefix!494) lt!1441311)))))

(declare-fun b!4046502 () Bool)

(declare-fun res!1648632 () Bool)

(declare-fun e!2510803 () Bool)

(assert (=> b!4046502 (=> (not res!1648632) (not e!2510803))))

(declare-fun lt!1441588 () List!43405)

(assert (=> b!4046502 (= res!1648632 (= (size!32358 lt!1441588) (+ (size!32358 prefix!494) (size!32358 lt!1441311))))))

(declare-fun b!4046503 () Bool)

(assert (=> b!4046503 (= e!2510803 (or (not (= lt!1441311 Nil!43281)) (= lt!1441588 prefix!494)))))

(declare-fun b!4046500 () Bool)

(assert (=> b!4046500 (= e!2510804 lt!1441311)))

(declare-fun d!1200990 () Bool)

(assert (=> d!1200990 e!2510803))

(declare-fun res!1648631 () Bool)

(assert (=> d!1200990 (=> (not res!1648631) (not e!2510803))))

(assert (=> d!1200990 (= res!1648631 (= (content!6586 lt!1441588) ((_ map or) (content!6586 prefix!494) (content!6586 lt!1441311))))))

(assert (=> d!1200990 (= lt!1441588 e!2510804)))

(declare-fun c!698981 () Bool)

(assert (=> d!1200990 (= c!698981 ((_ is Nil!43281) prefix!494))))

(assert (=> d!1200990 (= (++!11336 prefix!494 lt!1441311) lt!1441588)))

(assert (= (and d!1200990 c!698981) b!4046500))

(assert (= (and d!1200990 (not c!698981)) b!4046501))

(assert (= (and d!1200990 res!1648631) b!4046502))

(assert (= (and b!4046502 res!1648632) b!4046503))

(declare-fun m!4645539 () Bool)

(assert (=> b!4046501 m!4645539))

(declare-fun m!4645541 () Bool)

(assert (=> b!4046502 m!4645541))

(assert (=> b!4046502 m!4644371))

(declare-fun m!4645543 () Bool)

(assert (=> b!4046502 m!4645543))

(declare-fun m!4645545 () Bool)

(assert (=> d!1200990 m!4645545))

(assert (=> d!1200990 m!4645421))

(declare-fun m!4645547 () Bool)

(assert (=> d!1200990 m!4645547))

(assert (=> b!4045847 d!1200990))

(declare-fun b!4046505 () Bool)

(declare-fun e!2510806 () List!43405)

(assert (=> b!4046505 (= e!2510806 (Cons!43281 (h!48701 lt!1441294) (++!11336 (t!335502 lt!1441294) lt!1441303)))))

(declare-fun b!4046506 () Bool)

(declare-fun res!1648634 () Bool)

(declare-fun e!2510805 () Bool)

(assert (=> b!4046506 (=> (not res!1648634) (not e!2510805))))

(declare-fun lt!1441589 () List!43405)

(assert (=> b!4046506 (= res!1648634 (= (size!32358 lt!1441589) (+ (size!32358 lt!1441294) (size!32358 lt!1441303))))))

(declare-fun b!4046507 () Bool)

(assert (=> b!4046507 (= e!2510805 (or (not (= lt!1441303 Nil!43281)) (= lt!1441589 lt!1441294)))))

(declare-fun b!4046504 () Bool)

(assert (=> b!4046504 (= e!2510806 lt!1441303)))

(declare-fun d!1200992 () Bool)

(assert (=> d!1200992 e!2510805))

(declare-fun res!1648633 () Bool)

(assert (=> d!1200992 (=> (not res!1648633) (not e!2510805))))

(assert (=> d!1200992 (= res!1648633 (= (content!6586 lt!1441589) ((_ map or) (content!6586 lt!1441294) (content!6586 lt!1441303))))))

(assert (=> d!1200992 (= lt!1441589 e!2510806)))

(declare-fun c!698982 () Bool)

(assert (=> d!1200992 (= c!698982 ((_ is Nil!43281) lt!1441294))))

(assert (=> d!1200992 (= (++!11336 lt!1441294 lt!1441303) lt!1441589)))

(assert (= (and d!1200992 c!698982) b!4046504))

(assert (= (and d!1200992 (not c!698982)) b!4046505))

(assert (= (and d!1200992 res!1648633) b!4046506))

(assert (= (and b!4046506 res!1648634) b!4046507))

(declare-fun m!4645549 () Bool)

(assert (=> b!4046505 m!4645549))

(declare-fun m!4645551 () Bool)

(assert (=> b!4046506 m!4645551))

(assert (=> b!4046506 m!4645121))

(assert (=> b!4046506 m!4645499))

(declare-fun m!4645553 () Bool)

(assert (=> d!1200992 m!4645553))

(declare-fun m!4645555 () Bool)

(assert (=> d!1200992 m!4645555))

(assert (=> d!1200992 m!4645505))

(assert (=> b!4045847 d!1200992))

(declare-fun d!1200994 () Bool)

(assert (=> d!1200994 (= (++!11336 (++!11336 prefix!494 newSuffix!27) lt!1441303) (++!11336 prefix!494 (++!11336 newSuffix!27 lt!1441303)))))

(declare-fun lt!1441590 () Unit!62527)

(assert (=> d!1200994 (= lt!1441590 (choose!24528 prefix!494 newSuffix!27 lt!1441303))))

(assert (=> d!1200994 (= (lemmaConcatAssociativity!2638 prefix!494 newSuffix!27 lt!1441303) lt!1441590)))

(declare-fun bs!591250 () Bool)

(assert (= bs!591250 d!1200994))

(assert (=> bs!591250 m!4644355))

(declare-fun m!4645557 () Bool)

(assert (=> bs!591250 m!4645557))

(assert (=> bs!591250 m!4644313))

(declare-fun m!4645559 () Bool)

(assert (=> bs!591250 m!4645559))

(assert (=> bs!591250 m!4644355))

(assert (=> bs!591250 m!4644313))

(declare-fun m!4645561 () Bool)

(assert (=> bs!591250 m!4645561))

(assert (=> b!4045847 d!1200994))

(declare-fun d!1200996 () Bool)

(declare-fun lt!1441591 () Int)

(assert (=> d!1200996 (>= lt!1441591 0)))

(declare-fun e!2510807 () Int)

(assert (=> d!1200996 (= lt!1441591 e!2510807)))

(declare-fun c!698983 () Bool)

(assert (=> d!1200996 (= c!698983 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1200996 (= (size!32358 lt!1441296) lt!1441591)))

(declare-fun b!4046508 () Bool)

(assert (=> b!4046508 (= e!2510807 0)))

(declare-fun b!4046509 () Bool)

(assert (=> b!4046509 (= e!2510807 (+ 1 (size!32358 (t!335502 lt!1441296))))))

(assert (= (and d!1200996 c!698983) b!4046508))

(assert (= (and d!1200996 (not c!698983)) b!4046509))

(declare-fun m!4645563 () Bool)

(assert (=> b!4046509 m!4645563))

(assert (=> b!4045868 d!1200996))

(declare-fun d!1200998 () Bool)

(declare-fun lt!1441592 () Int)

(assert (=> d!1200998 (>= lt!1441592 0)))

(declare-fun e!2510808 () Int)

(assert (=> d!1200998 (= lt!1441592 e!2510808)))

(declare-fun c!698984 () Bool)

(assert (=> d!1200998 (= c!698984 ((_ is Nil!43281) prefix!494))))

(assert (=> d!1200998 (= (size!32358 prefix!494) lt!1441592)))

(declare-fun b!4046510 () Bool)

(assert (=> b!4046510 (= e!2510808 0)))

(declare-fun b!4046511 () Bool)

(assert (=> b!4046511 (= e!2510808 (+ 1 (size!32358 (t!335502 prefix!494))))))

(assert (= (and d!1200998 c!698984) b!4046510))

(assert (= (and d!1200998 (not c!698984)) b!4046511))

(declare-fun m!4645565 () Bool)

(assert (=> b!4046511 m!4645565))

(assert (=> b!4045868 d!1200998))

(declare-fun d!1201000 () Bool)

(assert (=> d!1201000 (= (list!16120 (charsOf!4750 token!484)) (list!16122 (c!698890 (charsOf!4750 token!484))))))

(declare-fun bs!591251 () Bool)

(assert (= bs!591251 d!1201000))

(declare-fun m!4645567 () Bool)

(assert (=> bs!591251 m!4645567))

(assert (=> b!4045868 d!1201000))

(declare-fun d!1201002 () Bool)

(declare-fun lt!1441593 () BalanceConc!25884)

(assert (=> d!1201002 (= (list!16120 lt!1441593) (originalCharacters!7534 token!484))))

(assert (=> d!1201002 (= lt!1441593 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))))

(assert (=> d!1201002 (= (charsOf!4750 token!484) lt!1441593)))

(declare-fun b_lambda!118217 () Bool)

(assert (=> (not b_lambda!118217) (not d!1201002)))

(declare-fun t!335543 () Bool)

(declare-fun tb!243365 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335543) tb!243365))

(declare-fun b!4046512 () Bool)

(declare-fun e!2510809 () Bool)

(declare-fun tp!1227826 () Bool)

(assert (=> b!4046512 (= e!2510809 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))) tp!1227826))))

(declare-fun result!294924 () Bool)

(assert (=> tb!243365 (= result!294924 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))) e!2510809))))

(assert (= tb!243365 b!4046512))

(declare-fun m!4645569 () Bool)

(assert (=> b!4046512 m!4645569))

(declare-fun m!4645571 () Bool)

(assert (=> tb!243365 m!4645571))

(assert (=> d!1201002 t!335543))

(declare-fun b_and!311151 () Bool)

(assert (= b_and!311131 (and (=> t!335543 result!294924) b_and!311151)))

(declare-fun t!335545 () Bool)

(declare-fun tb!243367 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335545) tb!243367))

(declare-fun result!294926 () Bool)

(assert (= result!294926 result!294924))

(assert (=> d!1201002 t!335545))

(declare-fun b_and!311153 () Bool)

(assert (= b_and!311133 (and (=> t!335545 result!294926) b_and!311153)))

(declare-fun m!4645573 () Bool)

(assert (=> d!1201002 m!4645573))

(declare-fun m!4645575 () Bool)

(assert (=> d!1201002 m!4645575))

(assert (=> b!4045868 d!1201002))

(declare-fun b!4046523 () Bool)

(declare-fun e!2510816 () Bool)

(declare-fun inv!15 (TokenValue!7164) Bool)

(assert (=> b!4046523 (= e!2510816 (inv!15 (value!218253 token!484)))))

(declare-fun b!4046524 () Bool)

(declare-fun e!2510817 () Bool)

(declare-fun inv!16 (TokenValue!7164) Bool)

(assert (=> b!4046524 (= e!2510817 (inv!16 (value!218253 token!484)))))

(declare-fun b!4046525 () Bool)

(declare-fun e!2510818 () Bool)

(assert (=> b!4046525 (= e!2510817 e!2510818)))

(declare-fun c!698990 () Bool)

(assert (=> b!4046525 (= c!698990 ((_ is IntegerValue!21493) (value!218253 token!484)))))

(declare-fun b!4046526 () Bool)

(declare-fun inv!17 (TokenValue!7164) Bool)

(assert (=> b!4046526 (= e!2510818 (inv!17 (value!218253 token!484)))))

(declare-fun b!4046527 () Bool)

(declare-fun res!1648637 () Bool)

(assert (=> b!4046527 (=> res!1648637 e!2510816)))

(assert (=> b!4046527 (= res!1648637 (not ((_ is IntegerValue!21494) (value!218253 token!484))))))

(assert (=> b!4046527 (= e!2510818 e!2510816)))

(declare-fun d!1201004 () Bool)

(declare-fun c!698989 () Bool)

(assert (=> d!1201004 (= c!698989 ((_ is IntegerValue!21492) (value!218253 token!484)))))

(assert (=> d!1201004 (= (inv!21 (value!218253 token!484)) e!2510817)))

(assert (= (and d!1201004 c!698989) b!4046524))

(assert (= (and d!1201004 (not c!698989)) b!4046525))

(assert (= (and b!4046525 c!698990) b!4046526))

(assert (= (and b!4046525 (not c!698990)) b!4046527))

(assert (= (and b!4046527 (not res!1648637)) b!4046523))

(declare-fun m!4645577 () Bool)

(assert (=> b!4046523 m!4645577))

(declare-fun m!4645579 () Bool)

(assert (=> b!4046524 m!4645579))

(declare-fun m!4645581 () Bool)

(assert (=> b!4046526 m!4645581))

(assert (=> b!4045878 d!1201004))

(declare-fun b!4046529 () Bool)

(declare-fun e!2510820 () List!43405)

(assert (=> b!4046529 (= e!2510820 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) lt!1441324)))))

(declare-fun b!4046530 () Bool)

(declare-fun res!1648639 () Bool)

(declare-fun e!2510819 () Bool)

(assert (=> b!4046530 (=> (not res!1648639) (not e!2510819))))

(declare-fun lt!1441594 () List!43405)

(assert (=> b!4046530 (= res!1648639 (= (size!32358 lt!1441594) (+ (size!32358 lt!1441296) (size!32358 lt!1441324))))))

(declare-fun b!4046531 () Bool)

(assert (=> b!4046531 (= e!2510819 (or (not (= lt!1441324 Nil!43281)) (= lt!1441594 lt!1441296)))))

(declare-fun b!4046528 () Bool)

(assert (=> b!4046528 (= e!2510820 lt!1441324)))

(declare-fun d!1201006 () Bool)

(assert (=> d!1201006 e!2510819))

(declare-fun res!1648638 () Bool)

(assert (=> d!1201006 (=> (not res!1648638) (not e!2510819))))

(assert (=> d!1201006 (= res!1648638 (= (content!6586 lt!1441594) ((_ map or) (content!6586 lt!1441296) (content!6586 lt!1441324))))))

(assert (=> d!1201006 (= lt!1441594 e!2510820)))

(declare-fun c!698991 () Bool)

(assert (=> d!1201006 (= c!698991 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201006 (= (++!11336 lt!1441296 lt!1441324) lt!1441594)))

(assert (= (and d!1201006 c!698991) b!4046528))

(assert (= (and d!1201006 (not c!698991)) b!4046529))

(assert (= (and d!1201006 res!1648638) b!4046530))

(assert (= (and b!4046530 res!1648639) b!4046531))

(declare-fun m!4645583 () Bool)

(assert (=> b!4046529 m!4645583))

(declare-fun m!4645585 () Bool)

(assert (=> b!4046530 m!4645585))

(assert (=> b!4046530 m!4644369))

(assert (=> b!4046530 m!4645281))

(declare-fun m!4645587 () Bool)

(assert (=> d!1201006 m!4645587))

(assert (=> d!1201006 m!4645261))

(assert (=> d!1201006 m!4645285))

(assert (=> b!4045856 d!1201006))

(declare-fun d!1201008 () Bool)

(declare-fun lt!1441595 () List!43405)

(assert (=> d!1201008 (= (++!11336 lt!1441296 lt!1441595) prefix!494)))

(declare-fun e!2510821 () List!43405)

(assert (=> d!1201008 (= lt!1441595 e!2510821)))

(declare-fun c!698992 () Bool)

(assert (=> d!1201008 (= c!698992 ((_ is Cons!43281) lt!1441296))))

(assert (=> d!1201008 (>= (size!32358 prefix!494) (size!32358 lt!1441296))))

(assert (=> d!1201008 (= (getSuffix!2438 prefix!494 lt!1441296) lt!1441595)))

(declare-fun b!4046532 () Bool)

(assert (=> b!4046532 (= e!2510821 (getSuffix!2438 (tail!6289 prefix!494) (t!335502 lt!1441296)))))

(declare-fun b!4046533 () Bool)

(assert (=> b!4046533 (= e!2510821 prefix!494)))

(assert (= (and d!1201008 c!698992) b!4046532))

(assert (= (and d!1201008 (not c!698992)) b!4046533))

(declare-fun m!4645589 () Bool)

(assert (=> d!1201008 m!4645589))

(assert (=> d!1201008 m!4644371))

(assert (=> d!1201008 m!4644369))

(assert (=> b!4046532 m!4645465))

(assert (=> b!4046532 m!4645465))

(declare-fun m!4645591 () Bool)

(assert (=> b!4046532 m!4645591))

(assert (=> b!4045856 d!1201008))

(declare-fun b!4046536 () Bool)

(declare-fun e!2510824 () Bool)

(assert (=> b!4046536 (= e!2510824 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 prefix!494)))))

(declare-fun d!1201010 () Bool)

(declare-fun e!2510823 () Bool)

(assert (=> d!1201010 e!2510823))

(declare-fun res!1648640 () Bool)

(assert (=> d!1201010 (=> res!1648640 e!2510823)))

(declare-fun lt!1441596 () Bool)

(assert (=> d!1201010 (= res!1648640 (not lt!1441596))))

(declare-fun e!2510822 () Bool)

(assert (=> d!1201010 (= lt!1441596 e!2510822)))

(declare-fun res!1648642 () Bool)

(assert (=> d!1201010 (=> res!1648642 e!2510822)))

(assert (=> d!1201010 (= res!1648642 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201010 (= (isPrefix!4021 lt!1441296 prefix!494) lt!1441596)))

(declare-fun b!4046534 () Bool)

(assert (=> b!4046534 (= e!2510822 e!2510824)))

(declare-fun res!1648641 () Bool)

(assert (=> b!4046534 (=> (not res!1648641) (not e!2510824))))

(assert (=> b!4046534 (= res!1648641 (not ((_ is Nil!43281) prefix!494)))))

(declare-fun b!4046535 () Bool)

(declare-fun res!1648643 () Bool)

(assert (=> b!4046535 (=> (not res!1648643) (not e!2510824))))

(assert (=> b!4046535 (= res!1648643 (= (head!8557 lt!1441296) (head!8557 prefix!494)))))

(declare-fun b!4046537 () Bool)

(assert (=> b!4046537 (= e!2510823 (>= (size!32358 prefix!494) (size!32358 lt!1441296)))))

(assert (= (and d!1201010 (not res!1648642)) b!4046534))

(assert (= (and b!4046534 res!1648641) b!4046535))

(assert (= (and b!4046535 res!1648643) b!4046536))

(assert (= (and d!1201010 (not res!1648640)) b!4046537))

(assert (=> b!4046536 m!4645237))

(assert (=> b!4046536 m!4645465))

(assert (=> b!4046536 m!4645237))

(assert (=> b!4046536 m!4645465))

(declare-fun m!4645593 () Bool)

(assert (=> b!4046536 m!4645593))

(assert (=> b!4046535 m!4645243))

(assert (=> b!4046535 m!4645469))

(assert (=> b!4046537 m!4644371))

(assert (=> b!4046537 m!4644369))

(assert (=> b!4045856 d!1201010))

(declare-fun d!1201012 () Bool)

(assert (=> d!1201012 (isPrefix!4021 lt!1441296 prefix!494)))

(declare-fun lt!1441599 () Unit!62527)

(declare-fun choose!24533 (List!43405 List!43405 List!43405) Unit!62527)

(assert (=> d!1201012 (= lt!1441599 (choose!24533 prefix!494 lt!1441296 lt!1441304))))

(assert (=> d!1201012 (isPrefix!4021 prefix!494 lt!1441304)))

(assert (=> d!1201012 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!585 prefix!494 lt!1441296 lt!1441304) lt!1441599)))

(declare-fun bs!591252 () Bool)

(assert (= bs!591252 d!1201012))

(assert (=> bs!591252 m!4644335))

(declare-fun m!4645595 () Bool)

(assert (=> bs!591252 m!4645595))

(assert (=> bs!591252 m!4644361))

(assert (=> b!4045856 d!1201012))

(declare-fun d!1201014 () Bool)

(declare-fun lt!1441600 () Bool)

(assert (=> d!1201014 (= lt!1441600 (select (content!6587 rules!2999) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun e!2510826 () Bool)

(assert (=> d!1201014 (= lt!1441600 e!2510826)))

(declare-fun res!1648644 () Bool)

(assert (=> d!1201014 (=> (not res!1648644) (not e!2510826))))

(assert (=> d!1201014 (= res!1648644 ((_ is Cons!43283) rules!2999))))

(assert (=> d!1201014 (= (contains!8604 rules!2999 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441600)))

(declare-fun b!4046538 () Bool)

(declare-fun e!2510825 () Bool)

(assert (=> b!4046538 (= e!2510826 e!2510825)))

(declare-fun res!1648645 () Bool)

(assert (=> b!4046538 (=> res!1648645 e!2510825)))

(assert (=> b!4046538 (= res!1648645 (= (h!48703 rules!2999) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun b!4046539 () Bool)

(assert (=> b!4046539 (= e!2510825 (contains!8604 (t!335504 rules!2999) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (= (and d!1201014 res!1648644) b!4046538))

(assert (= (and b!4046538 (not res!1648645)) b!4046539))

(assert (=> d!1201014 m!4645297))

(declare-fun m!4645597 () Bool)

(assert (=> d!1201014 m!4645597))

(declare-fun m!4645599 () Bool)

(assert (=> b!4046539 m!4645599))

(assert (=> b!4045877 d!1201014))

(declare-fun d!1201016 () Bool)

(declare-fun res!1648650 () Bool)

(declare-fun e!2510829 () Bool)

(assert (=> d!1201016 (=> (not res!1648650) (not e!2510829))))

(assert (=> d!1201016 (= res!1648650 (not (isEmpty!25831 (originalCharacters!7534 token!484))))))

(assert (=> d!1201016 (= (inv!57851 token!484) e!2510829)))

(declare-fun b!4046544 () Bool)

(declare-fun res!1648651 () Bool)

(assert (=> b!4046544 (=> (not res!1648651) (not e!2510829))))

(assert (=> b!4046544 (= res!1648651 (= (originalCharacters!7534 token!484) (list!16120 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))))))

(declare-fun b!4046545 () Bool)

(assert (=> b!4046545 (= e!2510829 (= (size!32357 token!484) (size!32358 (originalCharacters!7534 token!484))))))

(assert (= (and d!1201016 res!1648650) b!4046544))

(assert (= (and b!4046544 res!1648651) b!4046545))

(declare-fun b_lambda!118219 () Bool)

(assert (=> (not b_lambda!118219) (not b!4046544)))

(assert (=> b!4046544 t!335543))

(declare-fun b_and!311155 () Bool)

(assert (= b_and!311151 (and (=> t!335543 result!294924) b_and!311155)))

(assert (=> b!4046544 t!335545))

(declare-fun b_and!311157 () Bool)

(assert (= b_and!311153 (and (=> t!335545 result!294926) b_and!311157)))

(declare-fun m!4645601 () Bool)

(assert (=> d!1201016 m!4645601))

(assert (=> b!4046544 m!4645575))

(assert (=> b!4046544 m!4645575))

(declare-fun m!4645603 () Bool)

(assert (=> b!4046544 m!4645603))

(assert (=> b!4046545 m!4644381))

(assert (=> start!381500 d!1201016))

(declare-fun b!4046574 () Bool)

(declare-fun e!2510849 () Bool)

(declare-fun e!2510845 () Bool)

(assert (=> b!4046574 (= e!2510849 e!2510845)))

(declare-fun c!699000 () Bool)

(assert (=> b!4046574 (= c!699000 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun bm!287668 () Bool)

(declare-fun call!287673 () Bool)

(assert (=> bm!287668 (= call!287673 (isEmpty!25831 lt!1441296))))

(declare-fun b!4046575 () Bool)

(declare-fun e!2510847 () Bool)

(assert (=> b!4046575 (= e!2510847 (= (head!8557 lt!1441296) (c!698891 (regex!6934 (rule!10010 token!484)))))))

(declare-fun b!4046576 () Bool)

(declare-fun e!2510844 () Bool)

(assert (=> b!4046576 (= e!2510844 (nullable!4154 (regex!6934 (rule!10010 token!484))))))

(declare-fun b!4046577 () Bool)

(declare-fun e!2510850 () Bool)

(assert (=> b!4046577 (= e!2510850 (not (= (head!8557 lt!1441296) (c!698891 (regex!6934 (rule!10010 token!484))))))))

(declare-fun b!4046578 () Bool)

(declare-fun res!1648671 () Bool)

(declare-fun e!2510846 () Bool)

(assert (=> b!4046578 (=> res!1648671 e!2510846)))

(assert (=> b!4046578 (= res!1648671 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 token!484)))))))

(assert (=> b!4046578 (= e!2510845 e!2510846)))

(declare-fun b!4046579 () Bool)

(declare-fun e!2510848 () Bool)

(assert (=> b!4046579 (= e!2510848 e!2510850)))

(declare-fun res!1648673 () Bool)

(assert (=> b!4046579 (=> res!1648673 e!2510850)))

(assert (=> b!4046579 (= res!1648673 call!287673)))

(declare-fun b!4046580 () Bool)

(declare-fun res!1648672 () Bool)

(assert (=> b!4046580 (=> (not res!1648672) (not e!2510847))))

(assert (=> b!4046580 (= res!1648672 (not call!287673))))

(declare-fun b!4046581 () Bool)

(declare-fun res!1648675 () Bool)

(assert (=> b!4046581 (=> res!1648675 e!2510850)))

(assert (=> b!4046581 (= res!1648675 (not (isEmpty!25831 (tail!6289 lt!1441296))))))

(declare-fun d!1201018 () Bool)

(assert (=> d!1201018 e!2510849))

(declare-fun c!698999 () Bool)

(assert (=> d!1201018 (= c!698999 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun lt!1441603 () Bool)

(assert (=> d!1201018 (= lt!1441603 e!2510844)))

(declare-fun c!699001 () Bool)

(assert (=> d!1201018 (= c!699001 (isEmpty!25831 lt!1441296))))

(assert (=> d!1201018 (validRegex!5354 (regex!6934 (rule!10010 token!484)))))

(assert (=> d!1201018 (= (matchR!5792 (regex!6934 (rule!10010 token!484)) lt!1441296) lt!1441603)))

(declare-fun b!4046582 () Bool)

(assert (=> b!4046582 (= e!2510845 (not lt!1441603))))

(declare-fun b!4046583 () Bool)

(declare-fun res!1648669 () Bool)

(assert (=> b!4046583 (=> res!1648669 e!2510846)))

(assert (=> b!4046583 (= res!1648669 e!2510847)))

(declare-fun res!1648674 () Bool)

(assert (=> b!4046583 (=> (not res!1648674) (not e!2510847))))

(assert (=> b!4046583 (= res!1648674 lt!1441603)))

(declare-fun b!4046584 () Bool)

(declare-fun res!1648668 () Bool)

(assert (=> b!4046584 (=> (not res!1648668) (not e!2510847))))

(assert (=> b!4046584 (= res!1648668 (isEmpty!25831 (tail!6289 lt!1441296)))))

(declare-fun b!4046585 () Bool)

(assert (=> b!4046585 (= e!2510849 (= lt!1441603 call!287673))))

(declare-fun b!4046586 () Bool)

(assert (=> b!4046586 (= e!2510846 e!2510848)))

(declare-fun res!1648670 () Bool)

(assert (=> b!4046586 (=> (not res!1648670) (not e!2510848))))

(assert (=> b!4046586 (= res!1648670 (not lt!1441603))))

(declare-fun b!4046587 () Bool)

(declare-fun derivativeStep!3559 (Regex!11839 C!23864) Regex!11839)

(assert (=> b!4046587 (= e!2510844 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296)) (tail!6289 lt!1441296)))))

(assert (= (and d!1201018 c!699001) b!4046576))

(assert (= (and d!1201018 (not c!699001)) b!4046587))

(assert (= (and d!1201018 c!698999) b!4046585))

(assert (= (and d!1201018 (not c!698999)) b!4046574))

(assert (= (and b!4046574 c!699000) b!4046582))

(assert (= (and b!4046574 (not c!699000)) b!4046578))

(assert (= (and b!4046578 (not res!1648671)) b!4046583))

(assert (= (and b!4046583 res!1648674) b!4046580))

(assert (= (and b!4046580 res!1648672) b!4046584))

(assert (= (and b!4046584 res!1648668) b!4046575))

(assert (= (and b!4046583 (not res!1648669)) b!4046586))

(assert (= (and b!4046586 res!1648670) b!4046579))

(assert (= (and b!4046579 (not res!1648673)) b!4046581))

(assert (= (and b!4046581 (not res!1648675)) b!4046577))

(assert (= (or b!4046585 b!4046579 b!4046580) bm!287668))

(declare-fun m!4645605 () Bool)

(assert (=> b!4046576 m!4645605))

(assert (=> b!4046577 m!4645243))

(declare-fun m!4645607 () Bool)

(assert (=> d!1201018 m!4645607))

(declare-fun m!4645609 () Bool)

(assert (=> d!1201018 m!4645609))

(assert (=> b!4046581 m!4645237))

(assert (=> b!4046581 m!4645237))

(declare-fun m!4645611 () Bool)

(assert (=> b!4046581 m!4645611))

(assert (=> b!4046587 m!4645243))

(assert (=> b!4046587 m!4645243))

(declare-fun m!4645613 () Bool)

(assert (=> b!4046587 m!4645613))

(assert (=> b!4046587 m!4645237))

(assert (=> b!4046587 m!4645613))

(assert (=> b!4046587 m!4645237))

(declare-fun m!4645615 () Bool)

(assert (=> b!4046587 m!4645615))

(assert (=> b!4046575 m!4645243))

(assert (=> bm!287668 m!4645607))

(assert (=> b!4046584 m!4645237))

(assert (=> b!4046584 m!4645237))

(assert (=> b!4046584 m!4645611))

(assert (=> b!4045854 d!1201018))

(declare-fun b!4046590 () Bool)

(declare-fun e!2510853 () Bool)

(assert (=> b!4046590 (= e!2510853 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441294)))))

(declare-fun d!1201020 () Bool)

(declare-fun e!2510852 () Bool)

(assert (=> d!1201020 e!2510852))

(declare-fun res!1648676 () Bool)

(assert (=> d!1201020 (=> res!1648676 e!2510852)))

(declare-fun lt!1441604 () Bool)

(assert (=> d!1201020 (= res!1648676 (not lt!1441604))))

(declare-fun e!2510851 () Bool)

(assert (=> d!1201020 (= lt!1441604 e!2510851)))

(declare-fun res!1648678 () Bool)

(assert (=> d!1201020 (=> res!1648678 e!2510851)))

(assert (=> d!1201020 (= res!1648678 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201020 (= (isPrefix!4021 lt!1441296 lt!1441294) lt!1441604)))

(declare-fun b!4046588 () Bool)

(assert (=> b!4046588 (= e!2510851 e!2510853)))

(declare-fun res!1648677 () Bool)

(assert (=> b!4046588 (=> (not res!1648677) (not e!2510853))))

(assert (=> b!4046588 (= res!1648677 (not ((_ is Nil!43281) lt!1441294)))))

(declare-fun b!4046589 () Bool)

(declare-fun res!1648679 () Bool)

(assert (=> b!4046589 (=> (not res!1648679) (not e!2510853))))

(assert (=> b!4046589 (= res!1648679 (= (head!8557 lt!1441296) (head!8557 lt!1441294)))))

(declare-fun b!4046591 () Bool)

(assert (=> b!4046591 (= e!2510852 (>= (size!32358 lt!1441294) (size!32358 lt!1441296)))))

(assert (= (and d!1201020 (not res!1648678)) b!4046588))

(assert (= (and b!4046588 res!1648677) b!4046589))

(assert (= (and b!4046589 res!1648679) b!4046590))

(assert (= (and d!1201020 (not res!1648676)) b!4046591))

(assert (=> b!4046590 m!4645237))

(assert (=> b!4046590 m!4645523))

(assert (=> b!4046590 m!4645237))

(assert (=> b!4046590 m!4645523))

(declare-fun m!4645617 () Bool)

(assert (=> b!4046590 m!4645617))

(assert (=> b!4046589 m!4645243))

(declare-fun m!4645619 () Bool)

(assert (=> b!4046589 m!4645619))

(assert (=> b!4046591 m!4645121))

(assert (=> b!4046591 m!4644369))

(assert (=> b!4045854 d!1201020))

(declare-fun d!1201022 () Bool)

(assert (=> d!1201022 (isPrefix!4021 lt!1441296 (++!11336 prefix!494 newSuffix!27))))

(declare-fun lt!1441605 () Unit!62527)

(assert (=> d!1201022 (= lt!1441605 (choose!24532 lt!1441296 prefix!494 newSuffix!27))))

(assert (=> d!1201022 (isPrefix!4021 lt!1441296 prefix!494)))

(assert (=> d!1201022 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!814 lt!1441296 prefix!494 newSuffix!27) lt!1441605)))

(declare-fun bs!591253 () Bool)

(assert (= bs!591253 d!1201022))

(assert (=> bs!591253 m!4644355))

(assert (=> bs!591253 m!4644355))

(declare-fun m!4645621 () Bool)

(assert (=> bs!591253 m!4645621))

(declare-fun m!4645623 () Bool)

(assert (=> bs!591253 m!4645623))

(assert (=> bs!591253 m!4644335))

(assert (=> b!4045854 d!1201022))

(declare-fun d!1201024 () Bool)

(assert (=> d!1201024 (isPrefix!4021 lt!1441296 (++!11336 prefix!494 suffix!1299))))

(declare-fun lt!1441606 () Unit!62527)

(assert (=> d!1201024 (= lt!1441606 (choose!24532 lt!1441296 prefix!494 suffix!1299))))

(assert (=> d!1201024 (isPrefix!4021 lt!1441296 prefix!494)))

(assert (=> d!1201024 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!814 lt!1441296 prefix!494 suffix!1299) lt!1441606)))

(declare-fun bs!591254 () Bool)

(assert (= bs!591254 d!1201024))

(assert (=> bs!591254 m!4644379))

(assert (=> bs!591254 m!4644379))

(declare-fun m!4645625 () Bool)

(assert (=> bs!591254 m!4645625))

(declare-fun m!4645627 () Bool)

(assert (=> bs!591254 m!4645627))

(assert (=> bs!591254 m!4644335))

(assert (=> b!4045854 d!1201024))

(declare-fun b!4046592 () Bool)

(declare-fun e!2510859 () Bool)

(declare-fun e!2510855 () Bool)

(assert (=> b!4046592 (= e!2510859 e!2510855)))

(declare-fun c!699003 () Bool)

(assert (=> b!4046592 (= c!699003 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun bm!287669 () Bool)

(declare-fun call!287674 () Bool)

(assert (=> bm!287669 (= call!287674 (isEmpty!25831 lt!1441314))))

(declare-fun b!4046593 () Bool)

(declare-fun e!2510857 () Bool)

(assert (=> b!4046593 (= e!2510857 (= (head!8557 lt!1441314) (c!698891 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun b!4046594 () Bool)

(declare-fun e!2510854 () Bool)

(assert (=> b!4046594 (= e!2510854 (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4046595 () Bool)

(declare-fun e!2510860 () Bool)

(assert (=> b!4046595 (= e!2510860 (not (= (head!8557 lt!1441314) (c!698891 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))))

(declare-fun b!4046596 () Bool)

(declare-fun res!1648683 () Bool)

(declare-fun e!2510856 () Bool)

(assert (=> b!4046596 (=> res!1648683 e!2510856)))

(assert (=> b!4046596 (= res!1648683 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (=> b!4046596 (= e!2510855 e!2510856)))

(declare-fun b!4046597 () Bool)

(declare-fun e!2510858 () Bool)

(assert (=> b!4046597 (= e!2510858 e!2510860)))

(declare-fun res!1648685 () Bool)

(assert (=> b!4046597 (=> res!1648685 e!2510860)))

(assert (=> b!4046597 (= res!1648685 call!287674)))

(declare-fun b!4046598 () Bool)

(declare-fun res!1648684 () Bool)

(assert (=> b!4046598 (=> (not res!1648684) (not e!2510857))))

(assert (=> b!4046598 (= res!1648684 (not call!287674))))

(declare-fun b!4046599 () Bool)

(declare-fun res!1648687 () Bool)

(assert (=> b!4046599 (=> res!1648687 e!2510860)))

(assert (=> b!4046599 (= res!1648687 (not (isEmpty!25831 (tail!6289 lt!1441314))))))

(declare-fun d!1201026 () Bool)

(assert (=> d!1201026 e!2510859))

(declare-fun c!699002 () Bool)

(assert (=> d!1201026 (= c!699002 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun lt!1441607 () Bool)

(assert (=> d!1201026 (= lt!1441607 e!2510854)))

(declare-fun c!699004 () Bool)

(assert (=> d!1201026 (= c!699004 (isEmpty!25831 lt!1441314))))

(assert (=> d!1201026 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1201026 (= (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441314) lt!1441607)))

(declare-fun b!4046600 () Bool)

(assert (=> b!4046600 (= e!2510855 (not lt!1441607))))

(declare-fun b!4046601 () Bool)

(declare-fun res!1648681 () Bool)

(assert (=> b!4046601 (=> res!1648681 e!2510856)))

(assert (=> b!4046601 (= res!1648681 e!2510857)))

(declare-fun res!1648686 () Bool)

(assert (=> b!4046601 (=> (not res!1648686) (not e!2510857))))

(assert (=> b!4046601 (= res!1648686 lt!1441607)))

(declare-fun b!4046602 () Bool)

(declare-fun res!1648680 () Bool)

(assert (=> b!4046602 (=> (not res!1648680) (not e!2510857))))

(assert (=> b!4046602 (= res!1648680 (isEmpty!25831 (tail!6289 lt!1441314)))))

(declare-fun b!4046603 () Bool)

(assert (=> b!4046603 (= e!2510859 (= lt!1441607 call!287674))))

(declare-fun b!4046604 () Bool)

(assert (=> b!4046604 (= e!2510856 e!2510858)))

(declare-fun res!1648682 () Bool)

(assert (=> b!4046604 (=> (not res!1648682) (not e!2510858))))

(assert (=> b!4046604 (= res!1648682 (not lt!1441607))))

(declare-fun b!4046605 () Bool)

(assert (=> b!4046605 (= e!2510854 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314)) (tail!6289 lt!1441314)))))

(assert (= (and d!1201026 c!699004) b!4046594))

(assert (= (and d!1201026 (not c!699004)) b!4046605))

(assert (= (and d!1201026 c!699002) b!4046603))

(assert (= (and d!1201026 (not c!699002)) b!4046592))

(assert (= (and b!4046592 c!699003) b!4046600))

(assert (= (and b!4046592 (not c!699003)) b!4046596))

(assert (= (and b!4046596 (not res!1648683)) b!4046601))

(assert (= (and b!4046601 res!1648686) b!4046598))

(assert (= (and b!4046598 res!1648684) b!4046602))

(assert (= (and b!4046602 res!1648680) b!4046593))

(assert (= (and b!4046601 (not res!1648681)) b!4046604))

(assert (= (and b!4046604 res!1648682) b!4046597))

(assert (= (and b!4046597 (not res!1648685)) b!4046599))

(assert (= (and b!4046599 (not res!1648687)) b!4046595))

(assert (= (or b!4046603 b!4046597 b!4046598) bm!287669))

(assert (=> b!4046594 m!4645201))

(assert (=> b!4046595 m!4644697))

(declare-fun m!4645629 () Bool)

(assert (=> d!1201026 m!4645629))

(assert (=> d!1201026 m!4645199))

(assert (=> b!4046599 m!4644691))

(assert (=> b!4046599 m!4644691))

(declare-fun m!4645631 () Bool)

(assert (=> b!4046599 m!4645631))

(assert (=> b!4046605 m!4644697))

(assert (=> b!4046605 m!4644697))

(declare-fun m!4645633 () Bool)

(assert (=> b!4046605 m!4645633))

(assert (=> b!4046605 m!4644691))

(assert (=> b!4046605 m!4645633))

(assert (=> b!4046605 m!4644691))

(declare-fun m!4645635 () Bool)

(assert (=> b!4046605 m!4645635))

(assert (=> b!4046593 m!4644697))

(assert (=> bm!287669 m!4645629))

(assert (=> b!4046602 m!4644691))

(assert (=> b!4046602 m!4644691))

(assert (=> b!4046602 m!4645631))

(assert (=> b!4045875 d!1201026))

(declare-fun d!1201028 () Bool)

(assert (=> d!1201028 (not (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441314))))

(declare-fun lt!1441610 () Unit!62527)

(declare-fun choose!24534 (LexerInterface!6523 List!43407 Rule!13668 List!43405 List!43405 List!43405 Rule!13668) Unit!62527)

(assert (=> d!1201028 (= lt!1441610 (choose!24534 thiss!21717 rules!2999 (rule!10010 token!484) lt!1441296 lt!1441304 lt!1441314 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1201028 (isPrefix!4021 lt!1441296 lt!1441304)))

(assert (=> d!1201028 (= (lemmaMaxPrefixOutputsMaxPrefix!460 thiss!21717 rules!2999 (rule!10010 token!484) lt!1441296 lt!1441304 lt!1441314 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441610)))

(declare-fun bs!591255 () Bool)

(assert (= bs!591255 d!1201028))

(assert (=> bs!591255 m!4644341))

(declare-fun m!4645637 () Bool)

(assert (=> bs!591255 m!4645637))

(assert (=> bs!591255 m!4644359))

(assert (=> b!4045875 d!1201028))

(declare-fun b!4046607 () Bool)

(declare-fun e!2510862 () List!43405)

(assert (=> b!4046607 (= e!2510862 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) suffixResult!105)))))

(declare-fun b!4046608 () Bool)

(declare-fun res!1648689 () Bool)

(declare-fun e!2510861 () Bool)

(assert (=> b!4046608 (=> (not res!1648689) (not e!2510861))))

(declare-fun lt!1441611 () List!43405)

(assert (=> b!4046608 (= res!1648689 (= (size!32358 lt!1441611) (+ (size!32358 lt!1441296) (size!32358 suffixResult!105))))))

(declare-fun b!4046609 () Bool)

(assert (=> b!4046609 (= e!2510861 (or (not (= suffixResult!105 Nil!43281)) (= lt!1441611 lt!1441296)))))

(declare-fun b!4046606 () Bool)

(assert (=> b!4046606 (= e!2510862 suffixResult!105)))

(declare-fun d!1201030 () Bool)

(assert (=> d!1201030 e!2510861))

(declare-fun res!1648688 () Bool)

(assert (=> d!1201030 (=> (not res!1648688) (not e!2510861))))

(assert (=> d!1201030 (= res!1648688 (= (content!6586 lt!1441611) ((_ map or) (content!6586 lt!1441296) (content!6586 suffixResult!105))))))

(assert (=> d!1201030 (= lt!1441611 e!2510862)))

(declare-fun c!699005 () Bool)

(assert (=> d!1201030 (= c!699005 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201030 (= (++!11336 lt!1441296 suffixResult!105) lt!1441611)))

(assert (= (and d!1201030 c!699005) b!4046606))

(assert (= (and d!1201030 (not c!699005)) b!4046607))

(assert (= (and d!1201030 res!1648688) b!4046608))

(assert (= (and b!4046608 res!1648689) b!4046609))

(declare-fun m!4645639 () Bool)

(assert (=> b!4046607 m!4645639))

(declare-fun m!4645641 () Bool)

(assert (=> b!4046608 m!4645641))

(assert (=> b!4046608 m!4644369))

(declare-fun m!4645643 () Bool)

(assert (=> b!4046608 m!4645643))

(declare-fun m!4645645 () Bool)

(assert (=> d!1201030 m!4645645))

(assert (=> d!1201030 m!4645261))

(declare-fun m!4645647 () Bool)

(assert (=> d!1201030 m!4645647))

(assert (=> b!4045853 d!1201030))

(declare-fun d!1201032 () Bool)

(declare-fun e!2510863 () Bool)

(assert (=> d!1201032 e!2510863))

(declare-fun res!1648690 () Bool)

(assert (=> d!1201032 (=> (not res!1648690) (not e!2510863))))

(assert (=> d!1201032 (= res!1648690 (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))))))

(declare-fun Unit!62536 () Unit!62527)

(assert (=> d!1201032 (= (lemmaInv!1143 (transformation!6934 (rule!10010 token!484))) Unit!62536)))

(declare-fun b!4046610 () Bool)

(assert (=> b!4046610 (= e!2510863 (equivClasses!2861 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))))))

(assert (= (and d!1201032 res!1648690) b!4046610))

(assert (=> d!1201032 m!4645443))

(assert (=> b!4046610 m!4645445))

(assert (=> b!4045853 d!1201032))

(declare-fun d!1201034 () Bool)

(declare-fun res!1648691 () Bool)

(declare-fun e!2510864 () Bool)

(assert (=> d!1201034 (=> (not res!1648691) (not e!2510864))))

(assert (=> d!1201034 (= res!1648691 (validRegex!5354 (regex!6934 (rule!10010 token!484))))))

(assert (=> d!1201034 (= (ruleValid!2864 thiss!21717 (rule!10010 token!484)) e!2510864)))

(declare-fun b!4046611 () Bool)

(declare-fun res!1648692 () Bool)

(assert (=> b!4046611 (=> (not res!1648692) (not e!2510864))))

(assert (=> b!4046611 (= res!1648692 (not (nullable!4154 (regex!6934 (rule!10010 token!484)))))))

(declare-fun b!4046612 () Bool)

(assert (=> b!4046612 (= e!2510864 (not (= (tag!7794 (rule!10010 token!484)) (String!49539 ""))))))

(assert (= (and d!1201034 res!1648691) b!4046611))

(assert (= (and b!4046611 res!1648692) b!4046612))

(assert (=> d!1201034 m!4645609))

(assert (=> b!4046611 m!4645605))

(assert (=> b!4045853 d!1201034))

(declare-fun d!1201036 () Bool)

(assert (=> d!1201036 (ruleValid!2864 thiss!21717 (rule!10010 token!484))))

(declare-fun lt!1441612 () Unit!62527)

(assert (=> d!1201036 (= lt!1441612 (choose!24522 thiss!21717 (rule!10010 token!484) rules!2999))))

(assert (=> d!1201036 (contains!8604 rules!2999 (rule!10010 token!484))))

(assert (=> d!1201036 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1934 thiss!21717 (rule!10010 token!484) rules!2999) lt!1441612)))

(declare-fun bs!591256 () Bool)

(assert (= bs!591256 d!1201036))

(assert (=> bs!591256 m!4644483))

(declare-fun m!4645649 () Bool)

(assert (=> bs!591256 m!4645649))

(assert (=> bs!591256 m!4644495))

(assert (=> b!4045853 d!1201036))

(declare-fun b!4046615 () Bool)

(declare-fun e!2510867 () Bool)

(assert (=> b!4046615 (= e!2510867 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441294)))))

(declare-fun d!1201038 () Bool)

(declare-fun e!2510866 () Bool)

(assert (=> d!1201038 e!2510866))

(declare-fun res!1648693 () Bool)

(assert (=> d!1201038 (=> res!1648693 e!2510866)))

(declare-fun lt!1441613 () Bool)

(assert (=> d!1201038 (= res!1648693 (not lt!1441613))))

(declare-fun e!2510865 () Bool)

(assert (=> d!1201038 (= lt!1441613 e!2510865)))

(declare-fun res!1648695 () Bool)

(assert (=> d!1201038 (=> res!1648695 e!2510865)))

(assert (=> d!1201038 (= res!1648695 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1201038 (= (isPrefix!4021 lt!1441314 lt!1441294) lt!1441613)))

(declare-fun b!4046613 () Bool)

(assert (=> b!4046613 (= e!2510865 e!2510867)))

(declare-fun res!1648694 () Bool)

(assert (=> b!4046613 (=> (not res!1648694) (not e!2510867))))

(assert (=> b!4046613 (= res!1648694 (not ((_ is Nil!43281) lt!1441294)))))

(declare-fun b!4046614 () Bool)

(declare-fun res!1648696 () Bool)

(assert (=> b!4046614 (=> (not res!1648696) (not e!2510867))))

(assert (=> b!4046614 (= res!1648696 (= (head!8557 lt!1441314) (head!8557 lt!1441294)))))

(declare-fun b!4046616 () Bool)

(assert (=> b!4046616 (= e!2510866 (>= (size!32358 lt!1441294) (size!32358 lt!1441314)))))

(assert (= (and d!1201038 (not res!1648695)) b!4046613))

(assert (= (and b!4046613 res!1648694) b!4046614))

(assert (= (and b!4046614 res!1648696) b!4046615))

(assert (= (and d!1201038 (not res!1648693)) b!4046616))

(assert (=> b!4046615 m!4644691))

(assert (=> b!4046615 m!4645523))

(assert (=> b!4046615 m!4644691))

(assert (=> b!4046615 m!4645523))

(declare-fun m!4645651 () Bool)

(assert (=> b!4046615 m!4645651))

(assert (=> b!4046614 m!4644697))

(assert (=> b!4046614 m!4645619))

(assert (=> b!4046616 m!4645121))

(assert (=> b!4046616 m!4644397))

(assert (=> b!4045852 d!1201038))

(declare-fun d!1201040 () Bool)

(declare-fun res!1648699 () Bool)

(declare-fun e!2510870 () Bool)

(assert (=> d!1201040 (=> (not res!1648699) (not e!2510870))))

(declare-fun rulesValid!2696 (LexerInterface!6523 List!43407) Bool)

(assert (=> d!1201040 (= res!1648699 (rulesValid!2696 thiss!21717 rules!2999))))

(assert (=> d!1201040 (= (rulesInvariant!5866 thiss!21717 rules!2999) e!2510870)))

(declare-fun b!4046619 () Bool)

(declare-datatypes ((List!43409 0))(
  ( (Nil!43285) (Cons!43285 (h!48705 String!49538) (t!335554 List!43409)) )
))
(declare-fun noDuplicateTag!2697 (LexerInterface!6523 List!43407 List!43409) Bool)

(assert (=> b!4046619 (= e!2510870 (noDuplicateTag!2697 thiss!21717 rules!2999 Nil!43285))))

(assert (= (and d!1201040 res!1648699) b!4046619))

(declare-fun m!4645653 () Bool)

(assert (=> d!1201040 m!4645653))

(declare-fun m!4645655 () Bool)

(assert (=> b!4046619 m!4645655))

(assert (=> b!4045873 d!1201040))

(declare-fun b!4046624 () Bool)

(declare-fun e!2510873 () Bool)

(declare-fun tp!1227829 () Bool)

(assert (=> b!4046624 (= e!2510873 (and tp_is_empty!20649 tp!1227829))))

(assert (=> b!4045878 (= tp!1227771 e!2510873)))

(assert (= (and b!4045878 ((_ is Cons!43281) (originalCharacters!7534 token!484))) b!4046624))

(declare-fun e!2510876 () Bool)

(assert (=> b!4045845 (= tp!1227770 e!2510876)))

(declare-fun b!4046636 () Bool)

(declare-fun tp!1227841 () Bool)

(declare-fun tp!1227843 () Bool)

(assert (=> b!4046636 (= e!2510876 (and tp!1227841 tp!1227843))))

(declare-fun b!4046637 () Bool)

(declare-fun tp!1227840 () Bool)

(assert (=> b!4046637 (= e!2510876 tp!1227840)))

(declare-fun b!4046638 () Bool)

(declare-fun tp!1227844 () Bool)

(declare-fun tp!1227842 () Bool)

(assert (=> b!4046638 (= e!2510876 (and tp!1227844 tp!1227842))))

(declare-fun b!4046635 () Bool)

(assert (=> b!4046635 (= e!2510876 tp_is_empty!20649)))

(assert (= (and b!4045845 ((_ is ElementMatch!11839) (regex!6934 (h!48703 rules!2999)))) b!4046635))

(assert (= (and b!4045845 ((_ is Concat!19004) (regex!6934 (h!48703 rules!2999)))) b!4046636))

(assert (= (and b!4045845 ((_ is Star!11839) (regex!6934 (h!48703 rules!2999)))) b!4046637))

(assert (= (and b!4045845 ((_ is Union!11839) (regex!6934 (h!48703 rules!2999)))) b!4046638))

(declare-fun b!4046639 () Bool)

(declare-fun e!2510877 () Bool)

(declare-fun tp!1227845 () Bool)

(assert (=> b!4046639 (= e!2510877 (and tp_is_empty!20649 tp!1227845))))

(assert (=> b!4045882 (= tp!1227778 e!2510877)))

(assert (= (and b!4045882 ((_ is Cons!43281) (t!335502 newSuffix!27))) b!4046639))

(declare-fun b!4046640 () Bool)

(declare-fun e!2510878 () Bool)

(declare-fun tp!1227846 () Bool)

(assert (=> b!4046640 (= e!2510878 (and tp_is_empty!20649 tp!1227846))))

(assert (=> b!4045866 (= tp!1227769 e!2510878)))

(assert (= (and b!4045866 ((_ is Cons!43281) (t!335502 newSuffixResult!27))) b!4046640))

(declare-fun b!4046651 () Bool)

(declare-fun b_free!112661 () Bool)

(declare-fun b_next!113365 () Bool)

(assert (=> b!4046651 (= b_free!112661 (not b_next!113365))))

(declare-fun tb!243369 () Bool)

(declare-fun t!335547 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335547) tb!243369))

(declare-fun result!294934 () Bool)

(assert (= result!294934 result!294880))

(assert (=> d!1200750 t!335547))

(declare-fun tb!243371 () Bool)

(declare-fun t!335549 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335549) tb!243371))

(declare-fun result!294936 () Bool)

(assert (= result!294936 result!294920))

(assert (=> d!1200920 t!335549))

(declare-fun b_and!311159 () Bool)

(declare-fun tp!1227857 () Bool)

(assert (=> b!4046651 (= tp!1227857 (and (=> t!335547 result!294934) (=> t!335549 result!294936) b_and!311159))))

(declare-fun b_free!112663 () Bool)

(declare-fun b_next!113367 () Bool)

(assert (=> b!4046651 (= b_free!112663 (not b_next!113367))))

(declare-fun tb!243373 () Bool)

(declare-fun t!335551 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335551) tb!243373))

(declare-fun result!294938 () Bool)

(assert (= result!294938 result!294892))

(assert (=> d!1200796 t!335551))

(declare-fun tb!243375 () Bool)

(declare-fun t!335553 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335553) tb!243375))

(declare-fun result!294940 () Bool)

(assert (= result!294940 result!294924))

(assert (=> d!1201002 t!335553))

(assert (=> b!4046544 t!335553))

(declare-fun b_and!311161 () Bool)

(declare-fun tp!1227858 () Bool)

(assert (=> b!4046651 (= tp!1227858 (and (=> t!335551 result!294938) (=> t!335553 result!294940) b_and!311161))))

(declare-fun e!2510887 () Bool)

(assert (=> b!4046651 (= e!2510887 (and tp!1227857 tp!1227858))))

(declare-fun b!4046650 () Bool)

(declare-fun tp!1227855 () Bool)

(declare-fun e!2510890 () Bool)

(assert (=> b!4046650 (= e!2510890 (and tp!1227855 (inv!57847 (tag!7794 (h!48703 (t!335504 rules!2999)))) (inv!57850 (transformation!6934 (h!48703 (t!335504 rules!2999)))) e!2510887))))

(declare-fun b!4046649 () Bool)

(declare-fun e!2510888 () Bool)

(declare-fun tp!1227856 () Bool)

(assert (=> b!4046649 (= e!2510888 (and e!2510890 tp!1227856))))

(assert (=> b!4045855 (= tp!1227777 e!2510888)))

(assert (= b!4046650 b!4046651))

(assert (= b!4046649 b!4046650))

(assert (= (and b!4045855 ((_ is Cons!43283) (t!335504 rules!2999))) b!4046649))

(declare-fun m!4645657 () Bool)

(assert (=> b!4046650 m!4645657))

(declare-fun m!4645659 () Bool)

(assert (=> b!4046650 m!4645659))

(declare-fun b!4046652 () Bool)

(declare-fun e!2510891 () Bool)

(declare-fun tp!1227859 () Bool)

(assert (=> b!4046652 (= e!2510891 (and tp_is_empty!20649 tp!1227859))))

(assert (=> b!4045844 (= tp!1227775 e!2510891)))

(assert (= (and b!4045844 ((_ is Cons!43281) (t!335502 suffix!1299))) b!4046652))

(declare-fun b!4046653 () Bool)

(declare-fun e!2510892 () Bool)

(declare-fun tp!1227860 () Bool)

(assert (=> b!4046653 (= e!2510892 (and tp_is_empty!20649 tp!1227860))))

(assert (=> b!4045876 (= tp!1227768 e!2510892)))

(assert (= (and b!4045876 ((_ is Cons!43281) (t!335502 suffixResult!105))) b!4046653))

(declare-fun e!2510893 () Bool)

(assert (=> b!4045864 (= tp!1227774 e!2510893)))

(declare-fun b!4046655 () Bool)

(declare-fun tp!1227862 () Bool)

(declare-fun tp!1227864 () Bool)

(assert (=> b!4046655 (= e!2510893 (and tp!1227862 tp!1227864))))

(declare-fun b!4046656 () Bool)

(declare-fun tp!1227861 () Bool)

(assert (=> b!4046656 (= e!2510893 tp!1227861)))

(declare-fun b!4046657 () Bool)

(declare-fun tp!1227865 () Bool)

(declare-fun tp!1227863 () Bool)

(assert (=> b!4046657 (= e!2510893 (and tp!1227865 tp!1227863))))

(declare-fun b!4046654 () Bool)

(assert (=> b!4046654 (= e!2510893 tp_is_empty!20649)))

(assert (= (and b!4045864 ((_ is ElementMatch!11839) (regex!6934 (rule!10010 token!484)))) b!4046654))

(assert (= (and b!4045864 ((_ is Concat!19004) (regex!6934 (rule!10010 token!484)))) b!4046655))

(assert (= (and b!4045864 ((_ is Star!11839) (regex!6934 (rule!10010 token!484)))) b!4046656))

(assert (= (and b!4045864 ((_ is Union!11839) (regex!6934 (rule!10010 token!484)))) b!4046657))

(declare-fun b!4046658 () Bool)

(declare-fun e!2510894 () Bool)

(declare-fun tp!1227866 () Bool)

(assert (=> b!4046658 (= e!2510894 (and tp_is_empty!20649 tp!1227866))))

(assert (=> b!4045874 (= tp!1227767 e!2510894)))

(assert (= (and b!4045874 ((_ is Cons!43281) (t!335502 prefix!494))) b!4046658))

(declare-fun b_lambda!118221 () Bool)

(assert (= b_lambda!118215 (or (and b!4045849 b_free!112649) (and b!4045850 b_free!112653 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (and b!4046651 b_free!112661 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) b_lambda!118221)))

(declare-fun b_lambda!118223 () Bool)

(assert (= b_lambda!118219 (or (and b!4045849 b_free!112651) (and b!4045850 b_free!112655 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 token!484))))) (and b!4046651 b_free!112663 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 token!484))))) b_lambda!118223)))

(declare-fun b_lambda!118225 () Bool)

(assert (= b_lambda!118217 (or (and b!4045849 b_free!112651) (and b!4045850 b_free!112655 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 token!484))))) (and b!4046651 b_free!112663 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 token!484))))) b_lambda!118225)))

(check-sat (not d!1200890) (not b!4046310) (not b!4046593) (not d!1201024) (not tb!243361) (not b!4046535) (not b!4046530) (not b!4046427) (not d!1200742) (not b!4046505) (not d!1200928) (not d!1200878) (not b!4046288) (not b!4046652) (not d!1200902) (not b!4046346) (not b!4046434) (not b!4046537) b_and!311155 (not d!1200940) (not b!4046385) (not b!4046616) (not b!4046493) (not b!4046374) b_and!311159 (not b_next!113365) (not d!1200884) (not d!1200930) (not b!4046416) (not b!4046624) (not d!1200980) (not b!4046490) (not b!4046397) (not b!4046386) (not b!4046379) (not b!4046502) (not d!1201018) (not b!4046052) (not b!4046469) (not d!1201014) (not d!1201016) (not b!4046335) (not d!1200888) (not b!4046471) (not b!4046417) (not b_lambda!118221) (not d!1200984) (not d!1200922) (not d!1200952) (not b!4046457) (not b!4046545) (not b!4046637) (not b!4046511) (not b!4046389) (not b!4046473) (not b!4046146) (not b!4046375) (not b!4046639) (not d!1200938) (not b!4046437) (not b!4046382) (not b!4046343) (not b!4046657) (not b!4046309) (not b_lambda!118223) (not b!4046497) (not b!4046655) (not b!4046372) b_and!311147 (not d!1201032) (not b!4046595) (not b!4046337) (not b!4046640) (not d!1201028) (not b!4046474) tp_is_empty!20649 (not d!1201040) (not b!4046498) (not b!4046581) (not b!4046594) (not b!4046405) (not d!1200914) (not b!4046449) (not d!1201002) (not d!1200896) (not b!4046430) (not d!1200908) (not b!4046459) (not b!4046376) (not b!4046607) (not b!4046455) (not d!1200744) (not b!4046145) (not b!4046524) (not d!1201006) (not b_lambda!118203) (not d!1200792) (not b!4046653) (not b!4046544) (not b!4046377) (not b!4046448) (not b!4046589) (not b!4046523) (not d!1200918) (not b_next!113359) (not b!4046484) (not b!4046407) b_and!311149 (not b!4046452) (not b!4046649) (not b!4046650) (not b!4046412) (not b!4046371) (not d!1200986) (not d!1200804) (not d!1200900) (not b!4046433) (not b!4046509) b_and!311157 (not b!4046590) (not d!1200926) (not d!1201022) (not d!1200748) (not b!4046287) (not b!4046591) (not d!1200992) (not b!4046587) (not d!1200988) (not d!1200906) (not b!4046467) (not b!4046611) (not b!4046440) (not b!4046466) (not b!4046441) (not b!4046436) (not d!1201026) (not b!4046394) (not tb!243365) (not d!1200962) (not b!4046438) (not b!4046462) (not d!1200894) (not b!4046393) (not b!4046458) b_and!311161 (not d!1200880) (not b!4046487) (not b!4046283) (not b!4046614) (not b!4046526) (not b!4046463) (not d!1200746) (not b!4046619) (not b!4046053) (not b_lambda!118197) (not b!4046615) (not b_next!113357) (not b!4046610) (not b!4046443) (not b!4046280) (not d!1200892) (not b!4046478) (not b!4046454) (not b!4046636) (not d!1200932) (not b!4046501) (not bm!287665) (not b!4046599) (not b!4046381) (not d!1200964) (not b!4046378) (not b!4046656) (not b!4046413) (not b!4046421) (not b!4046399) (not tb!243341) (not d!1201036) (not b!4046414) (not b_next!113353) (not b!4046602) (not b!4046532) (not b!4046506) (not b!4046418) (not b!4046447) (not b!4046475) (not b!4046432) (not b!4046383) (not b!4046461) (not d!1201012) (not d!1201008) (not d!1201000) (not d!1200924) (not d!1201030) (not d!1200752) (not b!4046481) (not b!4046479) (not d!1200944) (not b!4046410) (not b!4046608) (not b!4046282) (not b_lambda!118225) (not b!4046284) (not d!1200936) (not b!4046470) (not b!4046431) (not b!4046444) (not b!4046576) (not d!1200796) (not b!4046465) (not b!4046477) (not b!4046577) (not d!1200982) (not b!4046605) (not bm!287668) (not b!4046439) (not b!4046512) (not b!4046658) (not b!4046164) (not d!1200948) (not b!4046536) (not b!4046390) (not b!4046408) (not b!4046539) (not b!4046420) (not d!1200990) (not b!4046494) (not b!4046351) (not b!4046575) (not bm!287664) (not d!1200976) (not b!4046482) (not b!4046285) (not b!4046488) (not d!1200904) (not b!4046054) (not b_next!113355) (not d!1200958) (not d!1200994) (not b!4046336) (not d!1201034) (not tb!243333) (not bm!287669) (not b_next!113367) (not b!4046415) (not b!4046529) (not d!1200978) (not b!4046409) (not b!4046638) (not b!4046286) (not b!4046584))
(check-sat b_and!311155 b_and!311147 b_and!311157 b_and!311161 (not b_next!113357) (not b_next!113353) b_and!311159 (not b_next!113365) (not b_next!113359) b_and!311149 (not b_next!113355) (not b_next!113367))
(get-model)

(assert (=> d!1201036 d!1201034))

(declare-fun d!1201144 () Bool)

(assert (=> d!1201144 (ruleValid!2864 thiss!21717 (rule!10010 token!484))))

(assert (=> d!1201144 true))

(declare-fun _$65!1519 () Unit!62527)

(assert (=> d!1201144 (= (choose!24522 thiss!21717 (rule!10010 token!484) rules!2999) _$65!1519)))

(declare-fun bs!591267 () Bool)

(assert (= bs!591267 d!1201144))

(assert (=> bs!591267 m!4644483))

(assert (=> d!1201036 d!1201144))

(assert (=> d!1201036 d!1200914))

(declare-fun d!1201146 () Bool)

(declare-fun isBalanced!3685 (Conc!13145) Bool)

(assert (=> d!1201146 (= (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))) (isBalanced!3685 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))))))

(declare-fun bs!591268 () Bool)

(assert (= bs!591268 d!1201146))

(declare-fun m!4645813 () Bool)

(assert (=> bs!591268 m!4645813))

(assert (=> tb!243365 d!1201146))

(declare-fun d!1201148 () Bool)

(declare-fun lt!1441637 () Int)

(assert (=> d!1201148 (>= lt!1441637 0)))

(declare-fun e!2510952 () Int)

(assert (=> d!1201148 (= lt!1441637 e!2510952)))

(declare-fun c!699040 () Bool)

(assert (=> d!1201148 (= c!699040 ((_ is Nil!43281) lt!1441611))))

(assert (=> d!1201148 (= (size!32358 lt!1441611) lt!1441637)))

(declare-fun b!4046764 () Bool)

(assert (=> b!4046764 (= e!2510952 0)))

(declare-fun b!4046765 () Bool)

(assert (=> b!4046765 (= e!2510952 (+ 1 (size!32358 (t!335502 lt!1441611))))))

(assert (= (and d!1201148 c!699040) b!4046764))

(assert (= (and d!1201148 (not c!699040)) b!4046765))

(declare-fun m!4645815 () Bool)

(assert (=> b!4046765 m!4645815))

(assert (=> b!4046608 d!1201148))

(assert (=> b!4046608 d!1200996))

(declare-fun d!1201150 () Bool)

(declare-fun lt!1441638 () Int)

(assert (=> d!1201150 (>= lt!1441638 0)))

(declare-fun e!2510953 () Int)

(assert (=> d!1201150 (= lt!1441638 e!2510953)))

(declare-fun c!699041 () Bool)

(assert (=> d!1201150 (= c!699041 ((_ is Nil!43281) suffixResult!105))))

(assert (=> d!1201150 (= (size!32358 suffixResult!105) lt!1441638)))

(declare-fun b!4046766 () Bool)

(assert (=> b!4046766 (= e!2510953 0)))

(declare-fun b!4046767 () Bool)

(assert (=> b!4046767 (= e!2510953 (+ 1 (size!32358 (t!335502 suffixResult!105))))))

(assert (= (and d!1201150 c!699041) b!4046766))

(assert (= (and d!1201150 (not c!699041)) b!4046767))

(declare-fun m!4645817 () Bool)

(assert (=> b!4046767 m!4645817))

(assert (=> b!4046608 d!1201150))

(declare-fun b!4046768 () Bool)

(declare-fun e!2510959 () Bool)

(declare-fun e!2510955 () Bool)

(assert (=> b!4046768 (= e!2510959 e!2510955)))

(declare-fun c!699043 () Bool)

(assert (=> b!4046768 (= c!699043 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun bm!287679 () Bool)

(declare-fun call!287684 () Bool)

(assert (=> bm!287679 (= call!287684 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(declare-fun b!4046769 () Bool)

(declare-fun e!2510957 () Bool)

(assert (=> b!4046769 (= e!2510957 (= (head!8557 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun b!4046770 () Bool)

(declare-fun e!2510954 () Bool)

(assert (=> b!4046770 (= e!2510954 (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4046771 () Bool)

(declare-fun e!2510960 () Bool)

(assert (=> b!4046771 (= e!2510960 (not (= (head!8557 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))))

(declare-fun b!4046772 () Bool)

(declare-fun res!1648734 () Bool)

(declare-fun e!2510956 () Bool)

(assert (=> b!4046772 (=> res!1648734 e!2510956)))

(assert (=> b!4046772 (= res!1648734 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (=> b!4046772 (= e!2510955 e!2510956)))

(declare-fun b!4046773 () Bool)

(declare-fun e!2510958 () Bool)

(assert (=> b!4046773 (= e!2510958 e!2510960)))

(declare-fun res!1648736 () Bool)

(assert (=> b!4046773 (=> res!1648736 e!2510960)))

(assert (=> b!4046773 (= res!1648736 call!287684)))

(declare-fun b!4046774 () Bool)

(declare-fun res!1648735 () Bool)

(assert (=> b!4046774 (=> (not res!1648735) (not e!2510957))))

(assert (=> b!4046774 (= res!1648735 (not call!287684))))

(declare-fun b!4046775 () Bool)

(declare-fun res!1648738 () Bool)

(assert (=> b!4046775 (=> res!1648738 e!2510960)))

(assert (=> b!4046775 (= res!1648738 (not (isEmpty!25831 (tail!6289 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))))

(declare-fun d!1201152 () Bool)

(assert (=> d!1201152 e!2510959))

(declare-fun c!699042 () Bool)

(assert (=> d!1201152 (= c!699042 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun lt!1441639 () Bool)

(assert (=> d!1201152 (= lt!1441639 e!2510954)))

(declare-fun c!699044 () Bool)

(assert (=> d!1201152 (= c!699044 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(assert (=> d!1201152 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1201152 (= (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))) lt!1441639)))

(declare-fun b!4046776 () Bool)

(assert (=> b!4046776 (= e!2510955 (not lt!1441639))))

(declare-fun b!4046777 () Bool)

(declare-fun res!1648732 () Bool)

(assert (=> b!4046777 (=> res!1648732 e!2510956)))

(assert (=> b!4046777 (= res!1648732 e!2510957)))

(declare-fun res!1648737 () Bool)

(assert (=> b!4046777 (=> (not res!1648737) (not e!2510957))))

(assert (=> b!4046777 (= res!1648737 lt!1441639)))

(declare-fun b!4046778 () Bool)

(declare-fun res!1648731 () Bool)

(assert (=> b!4046778 (=> (not res!1648731) (not e!2510957))))

(assert (=> b!4046778 (= res!1648731 (isEmpty!25831 (tail!6289 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294))))))))

(declare-fun b!4046779 () Bool)

(assert (=> b!4046779 (= e!2510959 (= lt!1441639 call!287684))))

(declare-fun b!4046780 () Bool)

(assert (=> b!4046780 (= e!2510956 e!2510958)))

(declare-fun res!1648733 () Bool)

(assert (=> b!4046780 (=> (not res!1648733) (not e!2510958))))

(assert (=> b!4046780 (= res!1648733 (not lt!1441639))))

(declare-fun b!4046781 () Bool)

(assert (=> b!4046781 (= e!2510954 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294))))) (tail!6289 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294))))))))

(assert (= (and d!1201152 c!699044) b!4046770))

(assert (= (and d!1201152 (not c!699044)) b!4046781))

(assert (= (and d!1201152 c!699042) b!4046779))

(assert (= (and d!1201152 (not c!699042)) b!4046768))

(assert (= (and b!4046768 c!699043) b!4046776))

(assert (= (and b!4046768 (not c!699043)) b!4046772))

(assert (= (and b!4046772 (not res!1648734)) b!4046777))

(assert (= (and b!4046777 res!1648737) b!4046774))

(assert (= (and b!4046774 res!1648735) b!4046778))

(assert (= (and b!4046778 res!1648731) b!4046769))

(assert (= (and b!4046777 (not res!1648732)) b!4046780))

(assert (= (and b!4046780 res!1648733) b!4046773))

(assert (= (and b!4046773 (not res!1648736)) b!4046775))

(assert (= (and b!4046775 (not res!1648738)) b!4046771))

(assert (= (or b!4046779 b!4046773 b!4046774) bm!287679))

(assert (=> b!4046770 m!4645201))

(declare-fun m!4645819 () Bool)

(assert (=> b!4046771 m!4645819))

(assert (=> d!1201152 m!4645153))

(assert (=> d!1201152 m!4645199))

(declare-fun m!4645821 () Bool)

(assert (=> b!4046775 m!4645821))

(assert (=> b!4046775 m!4645821))

(declare-fun m!4645823 () Bool)

(assert (=> b!4046775 m!4645823))

(assert (=> b!4046781 m!4645819))

(assert (=> b!4046781 m!4645819))

(declare-fun m!4645825 () Bool)

(assert (=> b!4046781 m!4645825))

(assert (=> b!4046781 m!4645821))

(assert (=> b!4046781 m!4645825))

(assert (=> b!4046781 m!4645821))

(declare-fun m!4645827 () Bool)

(assert (=> b!4046781 m!4645827))

(assert (=> b!4046769 m!4645819))

(assert (=> bm!287679 m!4645153))

(assert (=> b!4046778 m!4645821))

(assert (=> b!4046778 m!4645821))

(assert (=> b!4046778 m!4645823))

(assert (=> b!4046284 d!1201152))

(declare-fun b!4046922 () Bool)

(declare-fun c!699083 () Bool)

(declare-fun call!287712 () Bool)

(assert (=> b!4046922 (= c!699083 call!287712)))

(declare-fun lt!1441747 () Unit!62527)

(declare-fun lt!1441768 () Unit!62527)

(assert (=> b!4046922 (= lt!1441747 lt!1441768)))

(assert (=> b!4046922 (= lt!1441294 Nil!43281)))

(declare-fun call!287713 () Unit!62527)

(assert (=> b!4046922 (= lt!1441768 call!287713)))

(declare-fun lt!1441746 () Unit!62527)

(declare-fun lt!1441752 () Unit!62527)

(assert (=> b!4046922 (= lt!1441746 lt!1441752)))

(declare-fun call!287715 () Bool)

(assert (=> b!4046922 call!287715))

(declare-fun call!287710 () Unit!62527)

(assert (=> b!4046922 (= lt!1441752 call!287710)))

(declare-fun e!2511042 () tuple2!42356)

(declare-fun e!2511049 () tuple2!42356)

(assert (=> b!4046922 (= e!2511042 e!2511049)))

(declare-fun call!287714 () Regex!11839)

(declare-fun call!287711 () List!43405)

(declare-fun call!287708 () tuple2!42356)

(declare-fun bm!287703 () Bool)

(declare-fun lt!1441750 () List!43405)

(assert (=> bm!287703 (= call!287708 (findLongestMatchInner!1390 call!287714 lt!1441750 (+ (size!32358 Nil!43281) 1) call!287711 lt!1441294 (size!32358 lt!1441294)))))

(declare-fun b!4046924 () Bool)

(assert (=> b!4046924 (= e!2511049 (tuple2!42357 Nil!43281 lt!1441294))))

(declare-fun b!4046925 () Bool)

(declare-fun e!2511047 () tuple2!42356)

(assert (=> b!4046925 (= e!2511047 (tuple2!42357 Nil!43281 lt!1441294))))

(declare-fun bm!287704 () Bool)

(assert (=> bm!287704 (= call!287711 (tail!6289 lt!1441294))))

(declare-fun b!4046926 () Bool)

(declare-fun e!2511044 () Unit!62527)

(declare-fun Unit!62539 () Unit!62527)

(assert (=> b!4046926 (= e!2511044 Unit!62539)))

(declare-fun bm!287705 () Bool)

(declare-fun call!287709 () C!23864)

(assert (=> bm!287705 (= call!287714 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) call!287709))))

(declare-fun b!4046927 () Bool)

(declare-fun Unit!62541 () Unit!62527)

(assert (=> b!4046927 (= e!2511044 Unit!62541)))

(declare-fun lt!1441761 () Unit!62527)

(assert (=> b!4046927 (= lt!1441761 call!287710)))

(assert (=> b!4046927 call!287715))

(declare-fun lt!1441745 () Unit!62527)

(assert (=> b!4046927 (= lt!1441745 lt!1441761)))

(declare-fun lt!1441765 () Unit!62527)

(assert (=> b!4046927 (= lt!1441765 call!287713)))

(assert (=> b!4046927 (= lt!1441294 Nil!43281)))

(declare-fun lt!1441767 () Unit!62527)

(assert (=> b!4046927 (= lt!1441767 lt!1441765)))

(assert (=> b!4046927 false))

(declare-fun b!4046928 () Bool)

(declare-fun e!2511048 () tuple2!42356)

(declare-fun lt!1441749 () tuple2!42356)

(assert (=> b!4046928 (= e!2511048 lt!1441749)))

(declare-fun b!4046923 () Bool)

(declare-fun e!2511046 () Bool)

(declare-fun e!2511043 () Bool)

(assert (=> b!4046923 (= e!2511046 e!2511043)))

(declare-fun res!1648802 () Bool)

(assert (=> b!4046923 (=> res!1648802 e!2511043)))

(declare-fun lt!1441751 () tuple2!42356)

(assert (=> b!4046923 (= res!1648802 (isEmpty!25831 (_1!24312 lt!1441751)))))

(declare-fun d!1201154 () Bool)

(assert (=> d!1201154 e!2511046))

(declare-fun res!1648801 () Bool)

(assert (=> d!1201154 (=> (not res!1648801) (not e!2511046))))

(assert (=> d!1201154 (= res!1648801 (= (++!11336 (_1!24312 lt!1441751) (_2!24312 lt!1441751)) lt!1441294))))

(assert (=> d!1201154 (= lt!1441751 e!2511047)))

(declare-fun c!699084 () Bool)

(declare-fun lostCause!1015 (Regex!11839) Bool)

(assert (=> d!1201154 (= c!699084 (lostCause!1015 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun lt!1441769 () Unit!62527)

(declare-fun Unit!62542 () Unit!62527)

(assert (=> d!1201154 (= lt!1441769 Unit!62542)))

(assert (=> d!1201154 (= (getSuffix!2438 lt!1441294 Nil!43281) lt!1441294)))

(declare-fun lt!1441755 () Unit!62527)

(declare-fun lt!1441762 () Unit!62527)

(assert (=> d!1201154 (= lt!1441755 lt!1441762)))

(declare-fun lt!1441763 () List!43405)

(assert (=> d!1201154 (= lt!1441294 lt!1441763)))

(assert (=> d!1201154 (= lt!1441762 (lemmaSamePrefixThenSameSuffix!2182 Nil!43281 lt!1441294 Nil!43281 lt!1441763 lt!1441294))))

(assert (=> d!1201154 (= lt!1441763 (getSuffix!2438 lt!1441294 Nil!43281))))

(declare-fun lt!1441754 () Unit!62527)

(declare-fun lt!1441753 () Unit!62527)

(assert (=> d!1201154 (= lt!1441754 lt!1441753)))

(assert (=> d!1201154 (isPrefix!4021 Nil!43281 (++!11336 Nil!43281 lt!1441294))))

(assert (=> d!1201154 (= lt!1441753 (lemmaConcatTwoListThenFirstIsPrefix!2856 Nil!43281 lt!1441294))))

(assert (=> d!1201154 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1201154 (= (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)) lt!1441751)))

(declare-fun b!4046929 () Bool)

(assert (=> b!4046929 (= e!2511049 (tuple2!42357 Nil!43281 Nil!43281))))

(declare-fun b!4046930 () Bool)

(assert (=> b!4046930 (= e!2511048 (tuple2!42357 Nil!43281 lt!1441294))))

(declare-fun bm!287706 () Bool)

(assert (=> bm!287706 (= call!287709 (head!8557 lt!1441294))))

(declare-fun b!4046931 () Bool)

(assert (=> b!4046931 (= e!2511047 e!2511042)))

(declare-fun c!699088 () Bool)

(assert (=> b!4046931 (= c!699088 (= (size!32358 Nil!43281) (size!32358 lt!1441294)))))

(declare-fun bm!287707 () Bool)

(assert (=> bm!287707 (= call!287712 (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4046932 () Bool)

(declare-fun c!699087 () Bool)

(assert (=> b!4046932 (= c!699087 call!287712)))

(declare-fun lt!1441766 () Unit!62527)

(declare-fun lt!1441771 () Unit!62527)

(assert (=> b!4046932 (= lt!1441766 lt!1441771)))

(declare-fun lt!1441760 () C!23864)

(declare-fun lt!1441758 () List!43405)

(assert (=> b!4046932 (= (++!11336 (++!11336 Nil!43281 (Cons!43281 lt!1441760 Nil!43281)) lt!1441758) lt!1441294)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1259 (List!43405 C!23864 List!43405 List!43405) Unit!62527)

(assert (=> b!4046932 (= lt!1441771 (lemmaMoveElementToOtherListKeepsConcatEq!1259 Nil!43281 lt!1441760 lt!1441758 lt!1441294))))

(assert (=> b!4046932 (= lt!1441758 (tail!6289 lt!1441294))))

(assert (=> b!4046932 (= lt!1441760 (head!8557 lt!1441294))))

(declare-fun lt!1441759 () Unit!62527)

(declare-fun lt!1441756 () Unit!62527)

(assert (=> b!4046932 (= lt!1441759 lt!1441756)))

(assert (=> b!4046932 (isPrefix!4021 (++!11336 Nil!43281 (Cons!43281 (head!8557 (getSuffix!2438 lt!1441294 Nil!43281)) Nil!43281)) lt!1441294)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!641 (List!43405 List!43405) Unit!62527)

(assert (=> b!4046932 (= lt!1441756 (lemmaAddHeadSuffixToPrefixStillPrefix!641 Nil!43281 lt!1441294))))

(declare-fun lt!1441748 () Unit!62527)

(declare-fun lt!1441770 () Unit!62527)

(assert (=> b!4046932 (= lt!1441748 lt!1441770)))

(assert (=> b!4046932 (= lt!1441770 (lemmaAddHeadSuffixToPrefixStillPrefix!641 Nil!43281 lt!1441294))))

(assert (=> b!4046932 (= lt!1441750 (++!11336 Nil!43281 (Cons!43281 (head!8557 lt!1441294) Nil!43281)))))

(declare-fun lt!1441757 () Unit!62527)

(assert (=> b!4046932 (= lt!1441757 e!2511044)))

(declare-fun c!699086 () Bool)

(assert (=> b!4046932 (= c!699086 (= (size!32358 Nil!43281) (size!32358 lt!1441294)))))

(declare-fun lt!1441764 () Unit!62527)

(declare-fun lt!1441744 () Unit!62527)

(assert (=> b!4046932 (= lt!1441764 lt!1441744)))

(assert (=> b!4046932 (<= (size!32358 Nil!43281) (size!32358 lt!1441294))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!449 (List!43405 List!43405) Unit!62527)

(assert (=> b!4046932 (= lt!1441744 (lemmaIsPrefixThenSmallerEqSize!449 Nil!43281 lt!1441294))))

(declare-fun e!2511045 () tuple2!42356)

(assert (=> b!4046932 (= e!2511042 e!2511045)))

(declare-fun bm!287708 () Bool)

(assert (=> bm!287708 (= call!287710 (lemmaIsPrefixRefl!2588 lt!1441294 lt!1441294))))

(declare-fun b!4046933 () Bool)

(assert (=> b!4046933 (= e!2511045 e!2511048)))

(assert (=> b!4046933 (= lt!1441749 call!287708)))

(declare-fun c!699085 () Bool)

(assert (=> b!4046933 (= c!699085 (isEmpty!25831 (_1!24312 lt!1441749)))))

(declare-fun bm!287709 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!925 (List!43405 List!43405 List!43405) Unit!62527)

(assert (=> bm!287709 (= call!287713 (lemmaIsPrefixSameLengthThenSameList!925 lt!1441294 Nil!43281 lt!1441294))))

(declare-fun b!4046934 () Bool)

(assert (=> b!4046934 (= e!2511045 call!287708)))

(declare-fun bm!287710 () Bool)

(assert (=> bm!287710 (= call!287715 (isPrefix!4021 lt!1441294 lt!1441294))))

(declare-fun b!4046935 () Bool)

(assert (=> b!4046935 (= e!2511043 (>= (size!32358 (_1!24312 lt!1441751)) (size!32358 Nil!43281)))))

(assert (= (and d!1201154 c!699084) b!4046925))

(assert (= (and d!1201154 (not c!699084)) b!4046931))

(assert (= (and b!4046931 c!699088) b!4046922))

(assert (= (and b!4046931 (not c!699088)) b!4046932))

(assert (= (and b!4046922 c!699083) b!4046929))

(assert (= (and b!4046922 (not c!699083)) b!4046924))

(assert (= (and b!4046932 c!699086) b!4046927))

(assert (= (and b!4046932 (not c!699086)) b!4046926))

(assert (= (and b!4046932 c!699087) b!4046933))

(assert (= (and b!4046932 (not c!699087)) b!4046934))

(assert (= (and b!4046933 c!699085) b!4046930))

(assert (= (and b!4046933 (not c!699085)) b!4046928))

(assert (= (or b!4046933 b!4046934) bm!287706))

(assert (= (or b!4046933 b!4046934) bm!287704))

(assert (= (or b!4046933 b!4046934) bm!287705))

(assert (= (or b!4046933 b!4046934) bm!287703))

(assert (= (or b!4046922 b!4046927) bm!287710))

(assert (= (or b!4046922 b!4046932) bm!287707))

(assert (= (or b!4046922 b!4046927) bm!287709))

(assert (= (or b!4046922 b!4046927) bm!287708))

(assert (= (and d!1201154 res!1648801) b!4046923))

(assert (= (and b!4046923 (not res!1648802)) b!4046935))

(assert (=> bm!287703 m!4645121))

(declare-fun m!4646005 () Bool)

(assert (=> bm!287703 m!4646005))

(declare-fun m!4646007 () Bool)

(assert (=> bm!287709 m!4646007))

(assert (=> bm!287707 m!4645201))

(assert (=> bm!287706 m!4645619))

(assert (=> bm!287704 m!4645523))

(declare-fun m!4646009 () Bool)

(assert (=> b!4046933 m!4646009))

(assert (=> d!1201154 m!4645199))

(declare-fun m!4646011 () Bool)

(assert (=> d!1201154 m!4646011))

(declare-fun m!4646013 () Bool)

(assert (=> d!1201154 m!4646013))

(declare-fun m!4646015 () Bool)

(assert (=> d!1201154 m!4646015))

(declare-fun m!4646017 () Bool)

(assert (=> d!1201154 m!4646017))

(declare-fun m!4646019 () Bool)

(assert (=> d!1201154 m!4646019))

(declare-fun m!4646021 () Bool)

(assert (=> d!1201154 m!4646021))

(declare-fun m!4646023 () Bool)

(assert (=> d!1201154 m!4646023))

(assert (=> d!1201154 m!4646017))

(assert (=> bm!287710 m!4645227))

(declare-fun m!4646025 () Bool)

(assert (=> b!4046923 m!4646025))

(declare-fun m!4646027 () Bool)

(assert (=> b!4046932 m!4646027))

(declare-fun m!4646029 () Bool)

(assert (=> b!4046932 m!4646029))

(assert (=> b!4046932 m!4645523))

(assert (=> b!4046932 m!4645121))

(assert (=> b!4046932 m!4646023))

(declare-fun m!4646031 () Bool)

(assert (=> b!4046932 m!4646031))

(assert (=> b!4046932 m!4645119))

(declare-fun m!4646033 () Bool)

(assert (=> b!4046932 m!4646033))

(assert (=> b!4046932 m!4645619))

(declare-fun m!4646035 () Bool)

(assert (=> b!4046932 m!4646035))

(declare-fun m!4646037 () Bool)

(assert (=> b!4046932 m!4646037))

(assert (=> b!4046932 m!4646027))

(assert (=> b!4046932 m!4646035))

(declare-fun m!4646039 () Bool)

(assert (=> b!4046932 m!4646039))

(declare-fun m!4646041 () Bool)

(assert (=> b!4046932 m!4646041))

(declare-fun m!4646043 () Bool)

(assert (=> b!4046932 m!4646043))

(assert (=> b!4046932 m!4646023))

(assert (=> bm!287708 m!4645229))

(declare-fun m!4646045 () Bool)

(assert (=> bm!287705 m!4646045))

(declare-fun m!4646047 () Bool)

(assert (=> b!4046935 m!4646047))

(assert (=> b!4046935 m!4645119))

(assert (=> b!4046284 d!1201154))

(declare-fun d!1201234 () Bool)

(declare-fun lt!1441772 () Int)

(assert (=> d!1201234 (>= lt!1441772 0)))

(declare-fun e!2511050 () Int)

(assert (=> d!1201234 (= lt!1441772 e!2511050)))

(declare-fun c!699089 () Bool)

(assert (=> d!1201234 (= c!699089 ((_ is Nil!43281) Nil!43281))))

(assert (=> d!1201234 (= (size!32358 Nil!43281) lt!1441772)))

(declare-fun b!4046936 () Bool)

(assert (=> b!4046936 (= e!2511050 0)))

(declare-fun b!4046937 () Bool)

(assert (=> b!4046937 (= e!2511050 (+ 1 (size!32358 (t!335502 Nil!43281))))))

(assert (= (and d!1201234 c!699089) b!4046936))

(assert (= (and d!1201234 (not c!699089)) b!4046937))

(declare-fun m!4646049 () Bool)

(assert (=> b!4046937 m!4646049))

(assert (=> b!4046284 d!1201234))

(declare-fun d!1201236 () Bool)

(declare-fun lt!1441773 () Int)

(assert (=> d!1201236 (>= lt!1441773 0)))

(declare-fun e!2511051 () Int)

(assert (=> d!1201236 (= lt!1441773 e!2511051)))

(declare-fun c!699090 () Bool)

(assert (=> d!1201236 (= c!699090 ((_ is Nil!43281) lt!1441294))))

(assert (=> d!1201236 (= (size!32358 lt!1441294) lt!1441773)))

(declare-fun b!4046938 () Bool)

(assert (=> b!4046938 (= e!2511051 0)))

(declare-fun b!4046939 () Bool)

(assert (=> b!4046939 (= e!2511051 (+ 1 (size!32358 (t!335502 lt!1441294))))))

(assert (= (and d!1201236 c!699090) b!4046938))

(assert (= (and d!1201236 (not c!699090)) b!4046939))

(declare-fun m!4646051 () Bool)

(assert (=> b!4046939 m!4646051))

(assert (=> b!4046284 d!1201236))

(declare-fun b!4046942 () Bool)

(declare-fun e!2511054 () Bool)

(assert (=> b!4046942 (= e!2511054 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441314)) (tail!6289 (tail!6289 lt!1441294))))))

(declare-fun d!1201238 () Bool)

(declare-fun e!2511053 () Bool)

(assert (=> d!1201238 e!2511053))

(declare-fun res!1648803 () Bool)

(assert (=> d!1201238 (=> res!1648803 e!2511053)))

(declare-fun lt!1441774 () Bool)

(assert (=> d!1201238 (= res!1648803 (not lt!1441774))))

(declare-fun e!2511052 () Bool)

(assert (=> d!1201238 (= lt!1441774 e!2511052)))

(declare-fun res!1648805 () Bool)

(assert (=> d!1201238 (=> res!1648805 e!2511052)))

(assert (=> d!1201238 (= res!1648805 ((_ is Nil!43281) (tail!6289 lt!1441314)))))

(assert (=> d!1201238 (= (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441294)) lt!1441774)))

(declare-fun b!4046940 () Bool)

(assert (=> b!4046940 (= e!2511052 e!2511054)))

(declare-fun res!1648804 () Bool)

(assert (=> b!4046940 (=> (not res!1648804) (not e!2511054))))

(assert (=> b!4046940 (= res!1648804 (not ((_ is Nil!43281) (tail!6289 lt!1441294))))))

(declare-fun b!4046941 () Bool)

(declare-fun res!1648806 () Bool)

(assert (=> b!4046941 (=> (not res!1648806) (not e!2511054))))

(assert (=> b!4046941 (= res!1648806 (= (head!8557 (tail!6289 lt!1441314)) (head!8557 (tail!6289 lt!1441294))))))

(declare-fun b!4046943 () Bool)

(assert (=> b!4046943 (= e!2511053 (>= (size!32358 (tail!6289 lt!1441294)) (size!32358 (tail!6289 lt!1441314))))))

(assert (= (and d!1201238 (not res!1648805)) b!4046940))

(assert (= (and b!4046940 res!1648804) b!4046941))

(assert (= (and b!4046941 res!1648806) b!4046942))

(assert (= (and d!1201238 (not res!1648803)) b!4046943))

(assert (=> b!4046942 m!4644691))

(declare-fun m!4646053 () Bool)

(assert (=> b!4046942 m!4646053))

(assert (=> b!4046942 m!4645523))

(declare-fun m!4646055 () Bool)

(assert (=> b!4046942 m!4646055))

(assert (=> b!4046942 m!4646053))

(assert (=> b!4046942 m!4646055))

(declare-fun m!4646057 () Bool)

(assert (=> b!4046942 m!4646057))

(assert (=> b!4046941 m!4644691))

(declare-fun m!4646059 () Bool)

(assert (=> b!4046941 m!4646059))

(assert (=> b!4046941 m!4645523))

(declare-fun m!4646061 () Bool)

(assert (=> b!4046941 m!4646061))

(assert (=> b!4046943 m!4645523))

(declare-fun m!4646063 () Bool)

(assert (=> b!4046943 m!4646063))

(assert (=> b!4046943 m!4644691))

(declare-fun m!4646065 () Bool)

(assert (=> b!4046943 m!4646065))

(assert (=> b!4046615 d!1201238))

(declare-fun d!1201240 () Bool)

(assert (=> d!1201240 (= (tail!6289 lt!1441314) (t!335502 lt!1441314))))

(assert (=> b!4046615 d!1201240))

(declare-fun d!1201242 () Bool)

(assert (=> d!1201242 (= (tail!6289 lt!1441294) (t!335502 lt!1441294))))

(assert (=> b!4046615 d!1201242))

(declare-fun d!1201244 () Bool)

(assert (=> d!1201244 (= (isEmpty!25830 lt!1441500) (not ((_ is Some!9347) lt!1441500)))))

(assert (=> d!1200804 d!1201244))

(declare-fun d!1201246 () Bool)

(assert (=> d!1201246 (= (isEmpty!25831 (_1!24312 lt!1441501)) ((_ is Nil!43281) (_1!24312 lt!1441501)))))

(assert (=> d!1200804 d!1201246))

(declare-fun d!1201248 () Bool)

(declare-fun lt!1441793 () tuple2!42356)

(assert (=> d!1201248 (= (++!11336 (_1!24312 lt!1441793) (_2!24312 lt!1441793)) lt!1441294)))

(declare-fun sizeTr!278 (List!43405 Int) Int)

(assert (=> d!1201248 (= lt!1441793 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 0 lt!1441294 lt!1441294 (sizeTr!278 lt!1441294 0)))))

(declare-fun lt!1441795 () Unit!62527)

(declare-fun lt!1441792 () Unit!62527)

(assert (=> d!1201248 (= lt!1441795 lt!1441792)))

(declare-fun lt!1441798 () List!43405)

(declare-fun lt!1441791 () Int)

(assert (=> d!1201248 (= (sizeTr!278 lt!1441798 lt!1441791) (+ (size!32358 lt!1441798) lt!1441791))))

(declare-fun lemmaSizeTrEqualsSize!277 (List!43405 Int) Unit!62527)

(assert (=> d!1201248 (= lt!1441792 (lemmaSizeTrEqualsSize!277 lt!1441798 lt!1441791))))

(assert (=> d!1201248 (= lt!1441791 0)))

(assert (=> d!1201248 (= lt!1441798 Nil!43281)))

(declare-fun lt!1441796 () Unit!62527)

(declare-fun lt!1441797 () Unit!62527)

(assert (=> d!1201248 (= lt!1441796 lt!1441797)))

(declare-fun lt!1441794 () Int)

(assert (=> d!1201248 (= (sizeTr!278 lt!1441294 lt!1441794) (+ (size!32358 lt!1441294) lt!1441794))))

(assert (=> d!1201248 (= lt!1441797 (lemmaSizeTrEqualsSize!277 lt!1441294 lt!1441794))))

(assert (=> d!1201248 (= lt!1441794 0)))

(assert (=> d!1201248 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1201248 (= (findLongestMatch!1303 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441294) lt!1441793)))

(declare-fun bs!591275 () Bool)

(assert (= bs!591275 d!1201248))

(declare-fun m!4646067 () Bool)

(assert (=> bs!591275 m!4646067))

(declare-fun m!4646069 () Bool)

(assert (=> bs!591275 m!4646069))

(declare-fun m!4646071 () Bool)

(assert (=> bs!591275 m!4646071))

(declare-fun m!4646073 () Bool)

(assert (=> bs!591275 m!4646073))

(assert (=> bs!591275 m!4645199))

(assert (=> bs!591275 m!4646069))

(declare-fun m!4646075 () Bool)

(assert (=> bs!591275 m!4646075))

(declare-fun m!4646077 () Bool)

(assert (=> bs!591275 m!4646077))

(declare-fun m!4646079 () Bool)

(assert (=> bs!591275 m!4646079))

(assert (=> bs!591275 m!4645121))

(declare-fun m!4646081 () Bool)

(assert (=> bs!591275 m!4646081))

(assert (=> d!1200804 d!1201248))

(assert (=> d!1200804 d!1200892))

(declare-fun d!1201250 () Bool)

(assert (=> d!1201250 (= (isEmpty!25831 (tail!6289 lt!1441314)) ((_ is Nil!43281) (tail!6289 lt!1441314)))))

(assert (=> b!4046599 d!1201250))

(assert (=> b!4046599 d!1201240))

(declare-fun d!1201252 () Bool)

(declare-fun lt!1441799 () Int)

(assert (=> d!1201252 (>= lt!1441799 0)))

(declare-fun e!2511055 () Int)

(assert (=> d!1201252 (= lt!1441799 e!2511055)))

(declare-fun c!699091 () Bool)

(assert (=> d!1201252 (= c!699091 ((_ is Nil!43281) lt!1441586))))

(assert (=> d!1201252 (= (size!32358 lt!1441586) lt!1441799)))

(declare-fun b!4046944 () Bool)

(assert (=> b!4046944 (= e!2511055 0)))

(declare-fun b!4046945 () Bool)

(assert (=> b!4046945 (= e!2511055 (+ 1 (size!32358 (t!335502 lt!1441586))))))

(assert (= (and d!1201252 c!699091) b!4046944))

(assert (= (and d!1201252 (not c!699091)) b!4046945))

(declare-fun m!4646083 () Bool)

(assert (=> b!4046945 m!4646083))

(assert (=> b!4046494 d!1201252))

(assert (=> b!4046494 d!1200998))

(assert (=> b!4046494 d!1200912))

(declare-fun d!1201254 () Bool)

(declare-fun lt!1441800 () Bool)

(assert (=> d!1201254 (= lt!1441800 (select (content!6587 (t!335504 rules!2999)) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun e!2511057 () Bool)

(assert (=> d!1201254 (= lt!1441800 e!2511057)))

(declare-fun res!1648807 () Bool)

(assert (=> d!1201254 (=> (not res!1648807) (not e!2511057))))

(assert (=> d!1201254 (= res!1648807 ((_ is Cons!43283) (t!335504 rules!2999)))))

(assert (=> d!1201254 (= (contains!8604 (t!335504 rules!2999) (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441800)))

(declare-fun b!4046946 () Bool)

(declare-fun e!2511056 () Bool)

(assert (=> b!4046946 (= e!2511057 e!2511056)))

(declare-fun res!1648808 () Bool)

(assert (=> b!4046946 (=> res!1648808 e!2511056)))

(assert (=> b!4046946 (= res!1648808 (= (h!48703 (t!335504 rules!2999)) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(declare-fun b!4046947 () Bool)

(assert (=> b!4046947 (= e!2511056 (contains!8604 (t!335504 (t!335504 rules!2999)) (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (= (and d!1201254 res!1648807) b!4046946))

(assert (= (and b!4046946 (not res!1648808)) b!4046947))

(declare-fun m!4646085 () Bool)

(assert (=> d!1201254 m!4646085))

(declare-fun m!4646087 () Bool)

(assert (=> d!1201254 m!4646087))

(declare-fun m!4646089 () Bool)

(assert (=> b!4046947 m!4646089))

(assert (=> b!4046539 d!1201254))

(declare-fun b!4046950 () Bool)

(declare-fun e!2511060 () Bool)

(assert (=> b!4046950 (= e!2511060 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441296)) (tail!6289 (tail!6289 prefix!494))))))

(declare-fun d!1201256 () Bool)

(declare-fun e!2511059 () Bool)

(assert (=> d!1201256 e!2511059))

(declare-fun res!1648809 () Bool)

(assert (=> d!1201256 (=> res!1648809 e!2511059)))

(declare-fun lt!1441801 () Bool)

(assert (=> d!1201256 (= res!1648809 (not lt!1441801))))

(declare-fun e!2511058 () Bool)

(assert (=> d!1201256 (= lt!1441801 e!2511058)))

(declare-fun res!1648811 () Bool)

(assert (=> d!1201256 (=> res!1648811 e!2511058)))

(assert (=> d!1201256 (= res!1648811 ((_ is Nil!43281) (tail!6289 lt!1441296)))))

(assert (=> d!1201256 (= (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 prefix!494)) lt!1441801)))

(declare-fun b!4046948 () Bool)

(assert (=> b!4046948 (= e!2511058 e!2511060)))

(declare-fun res!1648810 () Bool)

(assert (=> b!4046948 (=> (not res!1648810) (not e!2511060))))

(assert (=> b!4046948 (= res!1648810 (not ((_ is Nil!43281) (tail!6289 prefix!494))))))

(declare-fun b!4046949 () Bool)

(declare-fun res!1648812 () Bool)

(assert (=> b!4046949 (=> (not res!1648812) (not e!2511060))))

(assert (=> b!4046949 (= res!1648812 (= (head!8557 (tail!6289 lt!1441296)) (head!8557 (tail!6289 prefix!494))))))

(declare-fun b!4046951 () Bool)

(assert (=> b!4046951 (= e!2511059 (>= (size!32358 (tail!6289 prefix!494)) (size!32358 (tail!6289 lt!1441296))))))

(assert (= (and d!1201256 (not res!1648811)) b!4046948))

(assert (= (and b!4046948 res!1648810) b!4046949))

(assert (= (and b!4046949 res!1648812) b!4046950))

(assert (= (and d!1201256 (not res!1648809)) b!4046951))

(assert (=> b!4046950 m!4645237))

(declare-fun m!4646091 () Bool)

(assert (=> b!4046950 m!4646091))

(assert (=> b!4046950 m!4645465))

(declare-fun m!4646093 () Bool)

(assert (=> b!4046950 m!4646093))

(assert (=> b!4046950 m!4646091))

(assert (=> b!4046950 m!4646093))

(declare-fun m!4646095 () Bool)

(assert (=> b!4046950 m!4646095))

(assert (=> b!4046949 m!4645237))

(declare-fun m!4646097 () Bool)

(assert (=> b!4046949 m!4646097))

(assert (=> b!4046949 m!4645465))

(declare-fun m!4646099 () Bool)

(assert (=> b!4046949 m!4646099))

(assert (=> b!4046951 m!4645465))

(declare-fun m!4646101 () Bool)

(assert (=> b!4046951 m!4646101))

(assert (=> b!4046951 m!4645237))

(declare-fun m!4646103 () Bool)

(assert (=> b!4046951 m!4646103))

(assert (=> b!4046536 d!1201256))

(declare-fun d!1201258 () Bool)

(assert (=> d!1201258 (= (tail!6289 lt!1441296) (t!335502 lt!1441296))))

(assert (=> b!4046536 d!1201258))

(declare-fun d!1201260 () Bool)

(assert (=> d!1201260 (= (tail!6289 prefix!494) (t!335502 prefix!494))))

(assert (=> b!4046536 d!1201260))

(declare-fun d!1201262 () Bool)

(declare-fun lt!1441802 () Int)

(assert (=> d!1201262 (>= lt!1441802 0)))

(declare-fun e!2511061 () Int)

(assert (=> d!1201262 (= lt!1441802 e!2511061)))

(declare-fun c!699092 () Bool)

(assert (=> d!1201262 (= c!699092 ((_ is Nil!43281) (_2!24311 (get!14199 lt!1441523))))))

(assert (=> d!1201262 (= (size!32358 (_2!24311 (get!14199 lt!1441523))) lt!1441802)))

(declare-fun b!4046952 () Bool)

(assert (=> b!4046952 (= e!2511061 0)))

(declare-fun b!4046953 () Bool)

(assert (=> b!4046953 (= e!2511061 (+ 1 (size!32358 (t!335502 (_2!24311 (get!14199 lt!1441523))))))))

(assert (= (and d!1201262 c!699092) b!4046952))

(assert (= (and d!1201262 (not c!699092)) b!4046953))

(declare-fun m!4646105 () Bool)

(assert (=> b!4046953 m!4646105))

(assert (=> b!4046375 d!1201262))

(declare-fun d!1201264 () Bool)

(assert (=> d!1201264 (= (get!14199 lt!1441523) (v!39751 lt!1441523))))

(assert (=> b!4046375 d!1201264))

(assert (=> b!4046375 d!1201236))

(declare-fun d!1201266 () Bool)

(declare-fun c!699095 () Bool)

(assert (=> d!1201266 (= c!699095 ((_ is Nil!43281) lt!1441611))))

(declare-fun e!2511064 () (InoxSet C!23864))

(assert (=> d!1201266 (= (content!6586 lt!1441611) e!2511064)))

(declare-fun b!4046958 () Bool)

(assert (=> b!4046958 (= e!2511064 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4046959 () Bool)

(assert (=> b!4046959 (= e!2511064 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441611) true) (content!6586 (t!335502 lt!1441611))))))

(assert (= (and d!1201266 c!699095) b!4046958))

(assert (= (and d!1201266 (not c!699095)) b!4046959))

(declare-fun m!4646107 () Bool)

(assert (=> b!4046959 m!4646107))

(declare-fun m!4646109 () Bool)

(assert (=> b!4046959 m!4646109))

(assert (=> d!1201030 d!1201266))

(declare-fun d!1201268 () Bool)

(declare-fun c!699096 () Bool)

(assert (=> d!1201268 (= c!699096 ((_ is Nil!43281) lt!1441296))))

(declare-fun e!2511065 () (InoxSet C!23864))

(assert (=> d!1201268 (= (content!6586 lt!1441296) e!2511065)))

(declare-fun b!4046960 () Bool)

(assert (=> b!4046960 (= e!2511065 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4046961 () Bool)

(assert (=> b!4046961 (= e!2511065 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441296) true) (content!6586 (t!335502 lt!1441296))))))

(assert (= (and d!1201268 c!699096) b!4046960))

(assert (= (and d!1201268 (not c!699096)) b!4046961))

(declare-fun m!4646111 () Bool)

(assert (=> b!4046961 m!4646111))

(declare-fun m!4646113 () Bool)

(assert (=> b!4046961 m!4646113))

(assert (=> d!1201030 d!1201268))

(declare-fun d!1201270 () Bool)

(declare-fun c!699097 () Bool)

(assert (=> d!1201270 (= c!699097 ((_ is Nil!43281) suffixResult!105))))

(declare-fun e!2511066 () (InoxSet C!23864))

(assert (=> d!1201270 (= (content!6586 suffixResult!105) e!2511066)))

(declare-fun b!4046962 () Bool)

(assert (=> b!4046962 (= e!2511066 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4046963 () Bool)

(assert (=> b!4046963 (= e!2511066 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 suffixResult!105) true) (content!6586 (t!335502 suffixResult!105))))))

(assert (= (and d!1201270 c!699097) b!4046962))

(assert (= (and d!1201270 (not c!699097)) b!4046963))

(declare-fun m!4646115 () Bool)

(assert (=> b!4046963 m!4646115))

(declare-fun m!4646117 () Bool)

(assert (=> b!4046963 m!4646117))

(assert (=> d!1201030 d!1201270))

(declare-fun b!4046965 () Bool)

(declare-fun e!2511068 () List!43405)

(assert (=> b!4046965 (= e!2511068 (Cons!43281 (h!48701 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))) (++!11336 (t!335502 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))) (_2!24311 (get!14199 lt!1441550)))))))

(declare-fun b!4046966 () Bool)

(declare-fun res!1648814 () Bool)

(declare-fun e!2511067 () Bool)

(assert (=> b!4046966 (=> (not res!1648814) (not e!2511067))))

(declare-fun lt!1441803 () List!43405)

(assert (=> b!4046966 (= res!1648814 (= (size!32358 lt!1441803) (+ (size!32358 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))) (size!32358 (_2!24311 (get!14199 lt!1441550))))))))

(declare-fun b!4046967 () Bool)

(assert (=> b!4046967 (= e!2511067 (or (not (= (_2!24311 (get!14199 lt!1441550)) Nil!43281)) (= lt!1441803 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550)))))))))

(declare-fun b!4046964 () Bool)

(assert (=> b!4046964 (= e!2511068 (_2!24311 (get!14199 lt!1441550)))))

(declare-fun d!1201272 () Bool)

(assert (=> d!1201272 e!2511067))

(declare-fun res!1648813 () Bool)

(assert (=> d!1201272 (=> (not res!1648813) (not e!2511067))))

(assert (=> d!1201272 (= res!1648813 (= (content!6586 lt!1441803) ((_ map or) (content!6586 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))) (content!6586 (_2!24311 (get!14199 lt!1441550))))))))

(assert (=> d!1201272 (= lt!1441803 e!2511068)))

(declare-fun c!699098 () Bool)

(assert (=> d!1201272 (= c!699098 ((_ is Nil!43281) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))))))

(assert (=> d!1201272 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550)))) (_2!24311 (get!14199 lt!1441550))) lt!1441803)))

(assert (= (and d!1201272 c!699098) b!4046964))

(assert (= (and d!1201272 (not c!699098)) b!4046965))

(assert (= (and d!1201272 res!1648813) b!4046966))

(assert (= (and b!4046966 res!1648814) b!4046967))

(declare-fun m!4646119 () Bool)

(assert (=> b!4046965 m!4646119))

(declare-fun m!4646121 () Bool)

(assert (=> b!4046966 m!4646121))

(assert (=> b!4046966 m!4645333))

(declare-fun m!4646123 () Bool)

(assert (=> b!4046966 m!4646123))

(assert (=> b!4046966 m!4645361))

(declare-fun m!4646125 () Bool)

(assert (=> d!1201272 m!4646125))

(assert (=> d!1201272 m!4645333))

(declare-fun m!4646127 () Bool)

(assert (=> d!1201272 m!4646127))

(declare-fun m!4646129 () Bool)

(assert (=> d!1201272 m!4646129))

(assert (=> b!4046416 d!1201272))

(declare-fun d!1201274 () Bool)

(assert (=> d!1201274 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550)))) (list!16122 (c!698890 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))))))

(declare-fun bs!591276 () Bool)

(assert (= bs!591276 d!1201274))

(declare-fun m!4646131 () Bool)

(assert (=> bs!591276 m!4646131))

(assert (=> b!4046416 d!1201274))

(declare-fun d!1201276 () Bool)

(declare-fun lt!1441804 () BalanceConc!25884)

(assert (=> d!1201276 (= (list!16120 lt!1441804) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550))))))

(assert (=> d!1201276 (= lt!1441804 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550))))) (value!218253 (_1!24311 (get!14199 lt!1441550)))))))

(assert (=> d!1201276 (= (charsOf!4750 (_1!24311 (get!14199 lt!1441550))) lt!1441804)))

(declare-fun b_lambda!118237 () Bool)

(assert (=> (not b_lambda!118237) (not d!1201276)))

(declare-fun tb!243407 () Bool)

(declare-fun t!335586 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335586) tb!243407))

(declare-fun b!4046968 () Bool)

(declare-fun e!2511069 () Bool)

(declare-fun tp!1227869 () Bool)

(assert (=> b!4046968 (= e!2511069 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550))))) (value!218253 (_1!24311 (get!14199 lt!1441550)))))) tp!1227869))))

(declare-fun result!294972 () Bool)

(assert (=> tb!243407 (= result!294972 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550))))) (value!218253 (_1!24311 (get!14199 lt!1441550))))) e!2511069))))

(assert (= tb!243407 b!4046968))

(declare-fun m!4646133 () Bool)

(assert (=> b!4046968 m!4646133))

(declare-fun m!4646135 () Bool)

(assert (=> tb!243407 m!4646135))

(assert (=> d!1201276 t!335586))

(declare-fun b_and!311193 () Bool)

(assert (= b_and!311155 (and (=> t!335586 result!294972) b_and!311193)))

(declare-fun t!335588 () Bool)

(declare-fun tb!243409 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335588) tb!243409))

(declare-fun result!294974 () Bool)

(assert (= result!294974 result!294972))

(assert (=> d!1201276 t!335588))

(declare-fun b_and!311195 () Bool)

(assert (= b_and!311157 (and (=> t!335588 result!294974) b_and!311195)))

(declare-fun t!335590 () Bool)

(declare-fun tb!243411 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335590) tb!243411))

(declare-fun result!294976 () Bool)

(assert (= result!294976 result!294972))

(assert (=> d!1201276 t!335590))

(declare-fun b_and!311197 () Bool)

(assert (= b_and!311161 (and (=> t!335590 result!294976) b_and!311197)))

(declare-fun m!4646137 () Bool)

(assert (=> d!1201276 m!4646137))

(declare-fun m!4646139 () Bool)

(assert (=> d!1201276 m!4646139))

(assert (=> b!4046416 d!1201276))

(declare-fun d!1201278 () Bool)

(assert (=> d!1201278 (= (get!14199 lt!1441550) (v!39751 lt!1441550))))

(assert (=> b!4046416 d!1201278))

(declare-fun d!1201280 () Bool)

(declare-fun c!699099 () Bool)

(assert (=> d!1201280 (= c!699099 ((_ is Nil!43281) lt!1441586))))

(declare-fun e!2511070 () (InoxSet C!23864))

(assert (=> d!1201280 (= (content!6586 lt!1441586) e!2511070)))

(declare-fun b!4046969 () Bool)

(assert (=> b!4046969 (= e!2511070 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4046970 () Bool)

(assert (=> b!4046970 (= e!2511070 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441586) true) (content!6586 (t!335502 lt!1441586))))))

(assert (= (and d!1201280 c!699099) b!4046969))

(assert (= (and d!1201280 (not c!699099)) b!4046970))

(declare-fun m!4646141 () Bool)

(assert (=> b!4046970 m!4646141))

(declare-fun m!4646143 () Bool)

(assert (=> b!4046970 m!4646143))

(assert (=> d!1200986 d!1201280))

(declare-fun d!1201282 () Bool)

(declare-fun c!699100 () Bool)

(assert (=> d!1201282 (= c!699100 ((_ is Nil!43281) prefix!494))))

(declare-fun e!2511071 () (InoxSet C!23864))

(assert (=> d!1201282 (= (content!6586 prefix!494) e!2511071)))

(declare-fun b!4046971 () Bool)

(assert (=> b!4046971 (= e!2511071 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4046972 () Bool)

(assert (=> b!4046972 (= e!2511071 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 prefix!494) true) (content!6586 (t!335502 prefix!494))))))

(assert (= (and d!1201282 c!699100) b!4046971))

(assert (= (and d!1201282 (not c!699100)) b!4046972))

(declare-fun m!4646145 () Bool)

(assert (=> b!4046972 m!4646145))

(declare-fun m!4646147 () Bool)

(assert (=> b!4046972 m!4646147))

(assert (=> d!1200986 d!1201282))

(declare-fun d!1201284 () Bool)

(declare-fun c!699101 () Bool)

(assert (=> d!1201284 (= c!699101 ((_ is Nil!43281) newSuffix!27))))

(declare-fun e!2511072 () (InoxSet C!23864))

(assert (=> d!1201284 (= (content!6586 newSuffix!27) e!2511072)))

(declare-fun b!4046973 () Bool)

(assert (=> b!4046973 (= e!2511072 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4046974 () Bool)

(assert (=> b!4046974 (= e!2511072 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 newSuffix!27) true) (content!6586 (t!335502 newSuffix!27))))))

(assert (= (and d!1201284 c!699101) b!4046973))

(assert (= (and d!1201284 (not c!699101)) b!4046974))

(declare-fun m!4646149 () Bool)

(assert (=> b!4046974 m!4646149))

(declare-fun m!4646151 () Bool)

(assert (=> b!4046974 m!4646151))

(assert (=> d!1200986 d!1201284))

(declare-fun d!1201286 () Bool)

(declare-fun lt!1441805 () List!43405)

(assert (=> d!1201286 (= (++!11336 (t!335502 newSuffix!27) lt!1441805) (tail!6289 suffix!1299))))

(declare-fun e!2511073 () List!43405)

(assert (=> d!1201286 (= lt!1441805 e!2511073)))

(declare-fun c!699102 () Bool)

(assert (=> d!1201286 (= c!699102 ((_ is Cons!43281) (t!335502 newSuffix!27)))))

(assert (=> d!1201286 (>= (size!32358 (tail!6289 suffix!1299)) (size!32358 (t!335502 newSuffix!27)))))

(assert (=> d!1201286 (= (getSuffix!2438 (tail!6289 suffix!1299) (t!335502 newSuffix!27)) lt!1441805)))

(declare-fun b!4046975 () Bool)

(assert (=> b!4046975 (= e!2511073 (getSuffix!2438 (tail!6289 (tail!6289 suffix!1299)) (t!335502 (t!335502 newSuffix!27))))))

(declare-fun b!4046976 () Bool)

(assert (=> b!4046976 (= e!2511073 (tail!6289 suffix!1299))))

(assert (= (and d!1201286 c!699102) b!4046975))

(assert (= (and d!1201286 (not c!699102)) b!4046976))

(declare-fun m!4646153 () Bool)

(assert (=> d!1201286 m!4646153))

(assert (=> d!1201286 m!4645473))

(declare-fun m!4646155 () Bool)

(assert (=> d!1201286 m!4646155))

(assert (=> d!1201286 m!4645295))

(assert (=> b!4046975 m!4645473))

(declare-fun m!4646157 () Bool)

(assert (=> b!4046975 m!4646157))

(assert (=> b!4046975 m!4646157))

(declare-fun m!4646159 () Bool)

(assert (=> b!4046975 m!4646159))

(assert (=> b!4046484 d!1201286))

(declare-fun d!1201288 () Bool)

(assert (=> d!1201288 (= (tail!6289 suffix!1299) (t!335502 suffix!1299))))

(assert (=> b!4046484 d!1201288))

(assert (=> b!4046591 d!1201236))

(assert (=> b!4046591 d!1200996))

(declare-fun d!1201290 () Bool)

(declare-fun e!2511076 () Bool)

(assert (=> d!1201290 e!2511076))

(declare-fun res!1648817 () Bool)

(assert (=> d!1201290 (=> (not res!1648817) (not e!2511076))))

(declare-fun lt!1441808 () BalanceConc!25884)

(assert (=> d!1201290 (= res!1648817 (= (list!16120 lt!1441808) lt!1441314))))

(declare-fun fromList!865 (List!43405) Conc!13145)

(assert (=> d!1201290 (= lt!1441808 (BalanceConc!25885 (fromList!865 lt!1441314)))))

(assert (=> d!1201290 (= (fromListB!2347 lt!1441314) lt!1441808)))

(declare-fun b!4046979 () Bool)

(assert (=> b!4046979 (= e!2511076 (isBalanced!3685 (fromList!865 lt!1441314)))))

(assert (= (and d!1201290 res!1648817) b!4046979))

(declare-fun m!4646161 () Bool)

(assert (=> d!1201290 m!4646161))

(declare-fun m!4646163 () Bool)

(assert (=> d!1201290 m!4646163))

(assert (=> b!4046979 m!4646163))

(assert (=> b!4046979 m!4646163))

(declare-fun m!4646165 () Bool)

(assert (=> b!4046979 m!4646165))

(assert (=> d!1200748 d!1201290))

(declare-fun d!1201292 () Bool)

(declare-fun lt!1441809 () List!43405)

(assert (=> d!1201292 (= (++!11336 (t!335502 lt!1441296) lt!1441809) (tail!6289 lt!1441304))))

(declare-fun e!2511077 () List!43405)

(assert (=> d!1201292 (= lt!1441809 e!2511077)))

(declare-fun c!699104 () Bool)

(assert (=> d!1201292 (= c!699104 ((_ is Cons!43281) (t!335502 lt!1441296)))))

(assert (=> d!1201292 (>= (size!32358 (tail!6289 lt!1441304)) (size!32358 (t!335502 lt!1441296)))))

(assert (=> d!1201292 (= (getSuffix!2438 (tail!6289 lt!1441304) (t!335502 lt!1441296)) lt!1441809)))

(declare-fun b!4046980 () Bool)

(assert (=> b!4046980 (= e!2511077 (getSuffix!2438 (tail!6289 (tail!6289 lt!1441304)) (t!335502 (t!335502 lt!1441296))))))

(declare-fun b!4046981 () Bool)

(assert (=> b!4046981 (= e!2511077 (tail!6289 lt!1441304))))

(assert (= (and d!1201292 c!699104) b!4046980))

(assert (= (and d!1201292 (not c!699104)) b!4046981))

(declare-fun m!4646167 () Bool)

(assert (=> d!1201292 m!4646167))

(assert (=> d!1201292 m!4645379))

(declare-fun m!4646169 () Bool)

(assert (=> d!1201292 m!4646169))

(assert (=> d!1201292 m!4645563))

(assert (=> b!4046980 m!4645379))

(declare-fun m!4646171 () Bool)

(assert (=> b!4046980 m!4646171))

(assert (=> b!4046980 m!4646171))

(declare-fun m!4646173 () Bool)

(assert (=> b!4046980 m!4646173))

(assert (=> b!4046427 d!1201292))

(declare-fun d!1201294 () Bool)

(assert (=> d!1201294 (= (tail!6289 lt!1441304) (t!335502 lt!1441304))))

(assert (=> b!4046427 d!1201294))

(declare-fun d!1201296 () Bool)

(declare-fun lt!1441810 () Int)

(assert (=> d!1201296 (>= lt!1441810 0)))

(declare-fun e!2511078 () Int)

(assert (=> d!1201296 (= lt!1441810 e!2511078)))

(declare-fun c!699105 () Bool)

(assert (=> d!1201296 (= c!699105 ((_ is Nil!43281) (originalCharacters!7534 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1201296 (= (size!32358 (originalCharacters!7534 (_1!24311 (v!39751 lt!1441282)))) lt!1441810)))

(declare-fun b!4046982 () Bool)

(assert (=> b!4046982 (= e!2511078 0)))

(declare-fun b!4046983 () Bool)

(assert (=> b!4046983 (= e!2511078 (+ 1 (size!32358 (t!335502 (originalCharacters!7534 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (= (and d!1201296 c!699105) b!4046982))

(assert (= (and d!1201296 (not c!699105)) b!4046983))

(declare-fun m!4646175 () Bool)

(assert (=> b!4046983 m!4646175))

(assert (=> d!1200744 d!1201296))

(declare-fun d!1201298 () Bool)

(assert (=> d!1201298 true))

(declare-fun lambda!127482 () Int)

(declare-fun order!22681 () Int)

(declare-fun order!22679 () Int)

(declare-fun dynLambda!18387 (Int Int) Int)

(declare-fun dynLambda!18388 (Int Int) Int)

(assert (=> d!1201298 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (rule!10010 token!484)))) (dynLambda!18388 order!22681 lambda!127482))))

(declare-fun Forall2!1095 (Int) Bool)

(assert (=> d!1201298 (= (equivClasses!2861 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) (Forall2!1095 lambda!127482))))

(declare-fun bs!591328 () Bool)

(assert (= bs!591328 d!1201298))

(declare-fun m!4647105 () Bool)

(assert (=> bs!591328 m!4647105))

(assert (=> b!4046455 d!1201298))

(declare-fun d!1201690 () Bool)

(declare-fun charsToInt!0 (List!43406) (_ BitVec 32))

(assert (=> d!1201690 (= (inv!16 (value!218253 token!484)) (= (charsToInt!0 (text!50595 (value!218253 token!484))) (value!218244 (value!218253 token!484))))))

(declare-fun bs!591329 () Bool)

(assert (= bs!591329 d!1201690))

(declare-fun m!4647107 () Bool)

(assert (=> bs!591329 m!4647107))

(assert (=> b!4046524 d!1201690))

(declare-fun d!1201692 () Bool)

(declare-fun lt!1442051 () Bool)

(assert (=> d!1201692 (= lt!1442051 (select (content!6587 (t!335504 rules!2999)) (rule!10010 token!484)))))

(declare-fun e!2511425 () Bool)

(assert (=> d!1201692 (= lt!1442051 e!2511425)))

(declare-fun res!1649042 () Bool)

(assert (=> d!1201692 (=> (not res!1649042) (not e!2511425))))

(assert (=> d!1201692 (= res!1649042 ((_ is Cons!43283) (t!335504 rules!2999)))))

(assert (=> d!1201692 (= (contains!8604 (t!335504 rules!2999) (rule!10010 token!484)) lt!1442051)))

(declare-fun b!4047591 () Bool)

(declare-fun e!2511424 () Bool)

(assert (=> b!4047591 (= e!2511425 e!2511424)))

(declare-fun res!1649043 () Bool)

(assert (=> b!4047591 (=> res!1649043 e!2511424)))

(assert (=> b!4047591 (= res!1649043 (= (h!48703 (t!335504 rules!2999)) (rule!10010 token!484)))))

(declare-fun b!4047592 () Bool)

(assert (=> b!4047592 (= e!2511424 (contains!8604 (t!335504 (t!335504 rules!2999)) (rule!10010 token!484)))))

(assert (= (and d!1201692 res!1649042) b!4047591))

(assert (= (and b!4047591 (not res!1649043)) b!4047592))

(assert (=> d!1201692 m!4646085))

(declare-fun m!4647109 () Bool)

(assert (=> d!1201692 m!4647109))

(declare-fun m!4647111 () Bool)

(assert (=> b!4047592 m!4647111))

(assert (=> b!4046405 d!1201692))

(declare-fun d!1201694 () Bool)

(assert (=> d!1201694 (= (head!8557 lt!1441314) (h!48701 lt!1441314))))

(assert (=> b!4046614 d!1201694))

(declare-fun d!1201696 () Bool)

(assert (=> d!1201696 (= (head!8557 lt!1441294) (h!48701 lt!1441294))))

(assert (=> b!4046614 d!1201696))

(assert (=> b!4046610 d!1201298))

(declare-fun d!1201698 () Bool)

(declare-fun lt!1442052 () Int)

(assert (=> d!1201698 (>= lt!1442052 0)))

(declare-fun e!2511426 () Int)

(assert (=> d!1201698 (= lt!1442052 e!2511426)))

(declare-fun c!699259 () Bool)

(assert (=> d!1201698 (= c!699259 ((_ is Nil!43281) lt!1441589))))

(assert (=> d!1201698 (= (size!32358 lt!1441589) lt!1442052)))

(declare-fun b!4047593 () Bool)

(assert (=> b!4047593 (= e!2511426 0)))

(declare-fun b!4047594 () Bool)

(assert (=> b!4047594 (= e!2511426 (+ 1 (size!32358 (t!335502 lt!1441589))))))

(assert (= (and d!1201698 c!699259) b!4047593))

(assert (= (and d!1201698 (not c!699259)) b!4047594))

(declare-fun m!4647113 () Bool)

(assert (=> b!4047594 m!4647113))

(assert (=> b!4046506 d!1201698))

(assert (=> b!4046506 d!1201236))

(declare-fun d!1201700 () Bool)

(declare-fun lt!1442053 () Int)

(assert (=> d!1201700 (>= lt!1442053 0)))

(declare-fun e!2511427 () Int)

(assert (=> d!1201700 (= lt!1442053 e!2511427)))

(declare-fun c!699260 () Bool)

(assert (=> d!1201700 (= c!699260 ((_ is Nil!43281) lt!1441303))))

(assert (=> d!1201700 (= (size!32358 lt!1441303) lt!1442053)))

(declare-fun b!4047595 () Bool)

(assert (=> b!4047595 (= e!2511427 0)))

(declare-fun b!4047596 () Bool)

(assert (=> b!4047596 (= e!2511427 (+ 1 (size!32358 (t!335502 lt!1441303))))))

(assert (= (and d!1201700 c!699260) b!4047595))

(assert (= (and d!1201700 (not c!699260)) b!4047596))

(declare-fun m!4647115 () Bool)

(assert (=> b!4047596 m!4647115))

(assert (=> b!4046506 d!1201700))

(declare-fun b!4047599 () Bool)

(declare-fun e!2511430 () Bool)

(assert (=> b!4047599 (= e!2511430 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441296)) (tail!6289 (tail!6289 lt!1441315))))))

(declare-fun d!1201702 () Bool)

(declare-fun e!2511429 () Bool)

(assert (=> d!1201702 e!2511429))

(declare-fun res!1649044 () Bool)

(assert (=> d!1201702 (=> res!1649044 e!2511429)))

(declare-fun lt!1442054 () Bool)

(assert (=> d!1201702 (= res!1649044 (not lt!1442054))))

(declare-fun e!2511428 () Bool)

(assert (=> d!1201702 (= lt!1442054 e!2511428)))

(declare-fun res!1649046 () Bool)

(assert (=> d!1201702 (=> res!1649046 e!2511428)))

(assert (=> d!1201702 (= res!1649046 ((_ is Nil!43281) (tail!6289 lt!1441296)))))

(assert (=> d!1201702 (= (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441315)) lt!1442054)))

(declare-fun b!4047597 () Bool)

(assert (=> b!4047597 (= e!2511428 e!2511430)))

(declare-fun res!1649045 () Bool)

(assert (=> b!4047597 (=> (not res!1649045) (not e!2511430))))

(assert (=> b!4047597 (= res!1649045 (not ((_ is Nil!43281) (tail!6289 lt!1441315))))))

(declare-fun b!4047598 () Bool)

(declare-fun res!1649047 () Bool)

(assert (=> b!4047598 (=> (not res!1649047) (not e!2511430))))

(assert (=> b!4047598 (= res!1649047 (= (head!8557 (tail!6289 lt!1441296)) (head!8557 (tail!6289 lt!1441315))))))

(declare-fun b!4047600 () Bool)

(assert (=> b!4047600 (= e!2511429 (>= (size!32358 (tail!6289 lt!1441315)) (size!32358 (tail!6289 lt!1441296))))))

(assert (= (and d!1201702 (not res!1649046)) b!4047597))

(assert (= (and b!4047597 res!1649045) b!4047598))

(assert (= (and b!4047598 res!1649047) b!4047599))

(assert (= (and d!1201702 (not res!1649044)) b!4047600))

(assert (=> b!4047599 m!4645237))

(assert (=> b!4047599 m!4646091))

(assert (=> b!4047599 m!4645447))

(declare-fun m!4647117 () Bool)

(assert (=> b!4047599 m!4647117))

(assert (=> b!4047599 m!4646091))

(assert (=> b!4047599 m!4647117))

(declare-fun m!4647119 () Bool)

(assert (=> b!4047599 m!4647119))

(assert (=> b!4047598 m!4645237))

(assert (=> b!4047598 m!4646097))

(assert (=> b!4047598 m!4645447))

(declare-fun m!4647121 () Bool)

(assert (=> b!4047598 m!4647121))

(assert (=> b!4047600 m!4645447))

(declare-fun m!4647123 () Bool)

(assert (=> b!4047600 m!4647123))

(assert (=> b!4047600 m!4645237))

(assert (=> b!4047600 m!4646103))

(assert (=> b!4046458 d!1201702))

(assert (=> b!4046458 d!1201258))

(declare-fun d!1201704 () Bool)

(assert (=> d!1201704 (= (tail!6289 lt!1441315) (t!335502 lt!1441315))))

(assert (=> b!4046458 d!1201704))

(assert (=> d!1201028 d!1201026))

(declare-fun d!1201706 () Bool)

(assert (=> d!1201706 (not (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441314))))

(assert (=> d!1201706 true))

(declare-fun _$57!123 () Unit!62527)

(assert (=> d!1201706 (= (choose!24534 thiss!21717 rules!2999 (rule!10010 token!484) lt!1441296 lt!1441304 lt!1441314 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) _$57!123)))

(declare-fun bs!591330 () Bool)

(assert (= bs!591330 d!1201706))

(assert (=> bs!591330 m!4644341))

(assert (=> d!1201028 d!1201706))

(assert (=> d!1201028 d!1200966))

(declare-fun d!1201708 () Bool)

(declare-fun lt!1442055 () List!43405)

(assert (=> d!1201708 (= (++!11336 (t!335502 lt!1441314) lt!1442055) (tail!6289 lt!1441294))))

(declare-fun e!2511431 () List!43405)

(assert (=> d!1201708 (= lt!1442055 e!2511431)))

(declare-fun c!699261 () Bool)

(assert (=> d!1201708 (= c!699261 ((_ is Cons!43281) (t!335502 lt!1441314)))))

(assert (=> d!1201708 (>= (size!32358 (tail!6289 lt!1441294)) (size!32358 (t!335502 lt!1441314)))))

(assert (=> d!1201708 (= (getSuffix!2438 (tail!6289 lt!1441294) (t!335502 lt!1441314)) lt!1442055)))

(declare-fun b!4047601 () Bool)

(assert (=> b!4047601 (= e!2511431 (getSuffix!2438 (tail!6289 (tail!6289 lt!1441294)) (t!335502 (t!335502 lt!1441314))))))

(declare-fun b!4047602 () Bool)

(assert (=> b!4047602 (= e!2511431 (tail!6289 lt!1441294))))

(assert (= (and d!1201708 c!699261) b!4047601))

(assert (= (and d!1201708 (not c!699261)) b!4047602))

(declare-fun m!4647125 () Bool)

(assert (=> d!1201708 m!4647125))

(assert (=> d!1201708 m!4645523))

(assert (=> d!1201708 m!4646063))

(assert (=> d!1201708 m!4645191))

(assert (=> b!4047601 m!4645523))

(assert (=> b!4047601 m!4646055))

(assert (=> b!4047601 m!4646055))

(declare-fun m!4647127 () Bool)

(assert (=> b!4047601 m!4647127))

(assert (=> b!4046490 d!1201708))

(assert (=> b!4046490 d!1201242))

(declare-fun d!1201710 () Bool)

(assert (=> d!1201710 (= (head!8557 lt!1441296) (h!48701 lt!1441296))))

(assert (=> b!4046535 d!1201710))

(declare-fun d!1201712 () Bool)

(assert (=> d!1201712 (= (head!8557 prefix!494) (h!48701 prefix!494))))

(assert (=> b!4046535 d!1201712))

(declare-fun b!4047604 () Bool)

(declare-fun e!2511433 () List!43405)

(assert (=> b!4047604 (= e!2511433 (Cons!43281 (h!48701 (t!335502 lt!1441296)) (++!11336 (t!335502 (t!335502 lt!1441296)) suffixResult!105)))))

(declare-fun b!4047605 () Bool)

(declare-fun res!1649049 () Bool)

(declare-fun e!2511432 () Bool)

(assert (=> b!4047605 (=> (not res!1649049) (not e!2511432))))

(declare-fun lt!1442056 () List!43405)

(assert (=> b!4047605 (= res!1649049 (= (size!32358 lt!1442056) (+ (size!32358 (t!335502 lt!1441296)) (size!32358 suffixResult!105))))))

(declare-fun b!4047606 () Bool)

(assert (=> b!4047606 (= e!2511432 (or (not (= suffixResult!105 Nil!43281)) (= lt!1442056 (t!335502 lt!1441296))))))

(declare-fun b!4047603 () Bool)

(assert (=> b!4047603 (= e!2511433 suffixResult!105)))

(declare-fun d!1201714 () Bool)

(assert (=> d!1201714 e!2511432))

(declare-fun res!1649048 () Bool)

(assert (=> d!1201714 (=> (not res!1649048) (not e!2511432))))

(assert (=> d!1201714 (= res!1649048 (= (content!6586 lt!1442056) ((_ map or) (content!6586 (t!335502 lt!1441296)) (content!6586 suffixResult!105))))))

(assert (=> d!1201714 (= lt!1442056 e!2511433)))

(declare-fun c!699262 () Bool)

(assert (=> d!1201714 (= c!699262 ((_ is Nil!43281) (t!335502 lt!1441296)))))

(assert (=> d!1201714 (= (++!11336 (t!335502 lt!1441296) suffixResult!105) lt!1442056)))

(assert (= (and d!1201714 c!699262) b!4047603))

(assert (= (and d!1201714 (not c!699262)) b!4047604))

(assert (= (and d!1201714 res!1649048) b!4047605))

(assert (= (and b!4047605 res!1649049) b!4047606))

(declare-fun m!4647129 () Bool)

(assert (=> b!4047604 m!4647129))

(declare-fun m!4647131 () Bool)

(assert (=> b!4047605 m!4647131))

(assert (=> b!4047605 m!4645563))

(assert (=> b!4047605 m!4645643))

(declare-fun m!4647133 () Bool)

(assert (=> d!1201714 m!4647133))

(assert (=> d!1201714 m!4646113))

(assert (=> d!1201714 m!4645647))

(assert (=> b!4046607 d!1201714))

(declare-fun d!1201716 () Bool)

(assert (=> d!1201716 (= (get!14199 lt!1441500) (v!39751 lt!1441500))))

(assert (=> b!4046283 d!1201716))

(declare-fun d!1201718 () Bool)

(assert (=> d!1201718 (= (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500))))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500))))))))

(declare-fun b_lambda!118267 () Bool)

(assert (=> (not b_lambda!118267) (not d!1201718)))

(declare-fun tb!243487 () Bool)

(declare-fun t!335667 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335667) tb!243487))

(declare-fun result!295054 () Bool)

(assert (=> tb!243487 (= result!295054 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500)))))))))

(declare-fun m!4647135 () Bool)

(assert (=> tb!243487 m!4647135))

(assert (=> d!1201718 t!335667))

(declare-fun b_and!311257 () Bool)

(assert (= b_and!311147 (and (=> t!335667 result!295054) b_and!311257)))

(declare-fun tb!243489 () Bool)

(declare-fun t!335669 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335669) tb!243489))

(declare-fun result!295056 () Bool)

(assert (= result!295056 result!295054))

(assert (=> d!1201718 t!335669))

(declare-fun b_and!311259 () Bool)

(assert (= b_and!311149 (and (=> t!335669 result!295056) b_and!311259)))

(declare-fun t!335671 () Bool)

(declare-fun tb!243491 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335671) tb!243491))

(declare-fun result!295058 () Bool)

(assert (= result!295058 result!295054))

(assert (=> d!1201718 t!335671))

(declare-fun b_and!311261 () Bool)

(assert (= b_and!311159 (and (=> t!335671 result!295058) b_and!311261)))

(assert (=> d!1201718 m!4645155))

(declare-fun m!4647137 () Bool)

(assert (=> d!1201718 m!4647137))

(assert (=> b!4046283 d!1201718))

(declare-fun d!1201720 () Bool)

(assert (=> d!1201720 (= (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500)))) (fromListB!2347 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500)))))))

(declare-fun bs!591331 () Bool)

(assert (= bs!591331 d!1201720))

(declare-fun m!4647139 () Bool)

(assert (=> bs!591331 m!4647139))

(assert (=> b!4046283 d!1201720))

(declare-fun b!4047608 () Bool)

(declare-fun e!2511436 () List!43405)

(assert (=> b!4047608 (= e!2511436 (Cons!43281 (h!48701 (t!335502 prefix!494)) (++!11336 (t!335502 (t!335502 prefix!494)) newSuffix!27)))))

(declare-fun b!4047609 () Bool)

(declare-fun res!1649051 () Bool)

(declare-fun e!2511435 () Bool)

(assert (=> b!4047609 (=> (not res!1649051) (not e!2511435))))

(declare-fun lt!1442057 () List!43405)

(assert (=> b!4047609 (= res!1649051 (= (size!32358 lt!1442057) (+ (size!32358 (t!335502 prefix!494)) (size!32358 newSuffix!27))))))

(declare-fun b!4047610 () Bool)

(assert (=> b!4047610 (= e!2511435 (or (not (= newSuffix!27 Nil!43281)) (= lt!1442057 (t!335502 prefix!494))))))

(declare-fun b!4047607 () Bool)

(assert (=> b!4047607 (= e!2511436 newSuffix!27)))

(declare-fun d!1201722 () Bool)

(assert (=> d!1201722 e!2511435))

(declare-fun res!1649050 () Bool)

(assert (=> d!1201722 (=> (not res!1649050) (not e!2511435))))

(assert (=> d!1201722 (= res!1649050 (= (content!6586 lt!1442057) ((_ map or) (content!6586 (t!335502 prefix!494)) (content!6586 newSuffix!27))))))

(assert (=> d!1201722 (= lt!1442057 e!2511436)))

(declare-fun c!699263 () Bool)

(assert (=> d!1201722 (= c!699263 ((_ is Nil!43281) (t!335502 prefix!494)))))

(assert (=> d!1201722 (= (++!11336 (t!335502 prefix!494) newSuffix!27) lt!1442057)))

(assert (= (and d!1201722 c!699263) b!4047607))

(assert (= (and d!1201722 (not c!699263)) b!4047608))

(assert (= (and d!1201722 res!1649050) b!4047609))

(assert (= (and b!4047609 res!1649051) b!4047610))

(declare-fun m!4647141 () Bool)

(assert (=> b!4047608 m!4647141))

(declare-fun m!4647143 () Bool)

(assert (=> b!4047609 m!4647143))

(assert (=> b!4047609 m!4645565))

(assert (=> b!4047609 m!4644353))

(declare-fun m!4647145 () Bool)

(assert (=> d!1201722 m!4647145))

(assert (=> d!1201722 m!4646147))

(assert (=> d!1201722 m!4645503))

(assert (=> b!4046493 d!1201722))

(declare-fun d!1201724 () Bool)

(declare-fun lt!1442058 () List!43405)

(assert (=> d!1201724 (= (++!11336 (t!335502 lt!1441296) lt!1442058) (tail!6289 prefix!494))))

(declare-fun e!2511437 () List!43405)

(assert (=> d!1201724 (= lt!1442058 e!2511437)))

(declare-fun c!699264 () Bool)

(assert (=> d!1201724 (= c!699264 ((_ is Cons!43281) (t!335502 lt!1441296)))))

(assert (=> d!1201724 (>= (size!32358 (tail!6289 prefix!494)) (size!32358 (t!335502 lt!1441296)))))

(assert (=> d!1201724 (= (getSuffix!2438 (tail!6289 prefix!494) (t!335502 lt!1441296)) lt!1442058)))

(declare-fun b!4047611 () Bool)

(assert (=> b!4047611 (= e!2511437 (getSuffix!2438 (tail!6289 (tail!6289 prefix!494)) (t!335502 (t!335502 lt!1441296))))))

(declare-fun b!4047612 () Bool)

(assert (=> b!4047612 (= e!2511437 (tail!6289 prefix!494))))

(assert (= (and d!1201724 c!699264) b!4047611))

(assert (= (and d!1201724 (not c!699264)) b!4047612))

(declare-fun m!4647147 () Bool)

(assert (=> d!1201724 m!4647147))

(assert (=> d!1201724 m!4645465))

(assert (=> d!1201724 m!4646101))

(assert (=> d!1201724 m!4645563))

(assert (=> b!4047611 m!4645465))

(assert (=> b!4047611 m!4646093))

(assert (=> b!4047611 m!4646093))

(declare-fun m!4647149 () Bool)

(assert (=> b!4047611 m!4647149))

(assert (=> b!4046532 d!1201724))

(assert (=> b!4046532 d!1201260))

(declare-fun d!1201726 () Bool)

(declare-fun lt!1442059 () Int)

(assert (=> d!1201726 (>= lt!1442059 0)))

(declare-fun e!2511438 () Int)

(assert (=> d!1201726 (= lt!1442059 e!2511438)))

(declare-fun c!699265 () Bool)

(assert (=> d!1201726 (= c!699265 ((_ is Nil!43281) lt!1441287))))

(assert (=> d!1201726 (= (size!32358 lt!1441287) lt!1442059)))

(declare-fun b!4047613 () Bool)

(assert (=> b!4047613 (= e!2511438 0)))

(declare-fun b!4047614 () Bool)

(assert (=> b!4047614 (= e!2511438 (+ 1 (size!32358 (t!335502 lt!1441287))))))

(assert (= (and d!1201726 c!699265) b!4047613))

(assert (= (and d!1201726 (not c!699265)) b!4047614))

(declare-fun m!4647151 () Bool)

(assert (=> b!4047614 m!4647151))

(assert (=> b!4046383 d!1201726))

(assert (=> b!4046383 d!1200996))

(declare-fun b!4047615 () Bool)

(declare-fun e!2511444 () Bool)

(declare-fun e!2511440 () Bool)

(assert (=> b!4047615 (= e!2511444 e!2511440)))

(declare-fun c!699267 () Bool)

(assert (=> b!4047615 (= c!699267 ((_ is EmptyLang!11839) (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296))))))

(declare-fun bm!287765 () Bool)

(declare-fun call!287770 () Bool)

(assert (=> bm!287765 (= call!287770 (isEmpty!25831 (tail!6289 lt!1441296)))))

(declare-fun b!4047616 () Bool)

(declare-fun e!2511442 () Bool)

(assert (=> b!4047616 (= e!2511442 (= (head!8557 (tail!6289 lt!1441296)) (c!698891 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296)))))))

(declare-fun b!4047617 () Bool)

(declare-fun e!2511439 () Bool)

(assert (=> b!4047617 (= e!2511439 (nullable!4154 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296))))))

(declare-fun b!4047618 () Bool)

(declare-fun e!2511445 () Bool)

(assert (=> b!4047618 (= e!2511445 (not (= (head!8557 (tail!6289 lt!1441296)) (c!698891 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296))))))))

(declare-fun b!4047619 () Bool)

(declare-fun res!1649055 () Bool)

(declare-fun e!2511441 () Bool)

(assert (=> b!4047619 (=> res!1649055 e!2511441)))

(assert (=> b!4047619 (= res!1649055 (not ((_ is ElementMatch!11839) (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296)))))))

(assert (=> b!4047619 (= e!2511440 e!2511441)))

(declare-fun b!4047620 () Bool)

(declare-fun e!2511443 () Bool)

(assert (=> b!4047620 (= e!2511443 e!2511445)))

(declare-fun res!1649057 () Bool)

(assert (=> b!4047620 (=> res!1649057 e!2511445)))

(assert (=> b!4047620 (= res!1649057 call!287770)))

(declare-fun b!4047621 () Bool)

(declare-fun res!1649056 () Bool)

(assert (=> b!4047621 (=> (not res!1649056) (not e!2511442))))

(assert (=> b!4047621 (= res!1649056 (not call!287770))))

(declare-fun b!4047622 () Bool)

(declare-fun res!1649059 () Bool)

(assert (=> b!4047622 (=> res!1649059 e!2511445)))

(assert (=> b!4047622 (= res!1649059 (not (isEmpty!25831 (tail!6289 (tail!6289 lt!1441296)))))))

(declare-fun d!1201728 () Bool)

(assert (=> d!1201728 e!2511444))

(declare-fun c!699266 () Bool)

(assert (=> d!1201728 (= c!699266 ((_ is EmptyExpr!11839) (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296))))))

(declare-fun lt!1442060 () Bool)

(assert (=> d!1201728 (= lt!1442060 e!2511439)))

(declare-fun c!699268 () Bool)

(assert (=> d!1201728 (= c!699268 (isEmpty!25831 (tail!6289 lt!1441296)))))

(assert (=> d!1201728 (validRegex!5354 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296)))))

(assert (=> d!1201728 (= (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296)) (tail!6289 lt!1441296)) lt!1442060)))

(declare-fun b!4047623 () Bool)

(assert (=> b!4047623 (= e!2511440 (not lt!1442060))))

(declare-fun b!4047624 () Bool)

(declare-fun res!1649053 () Bool)

(assert (=> b!4047624 (=> res!1649053 e!2511441)))

(assert (=> b!4047624 (= res!1649053 e!2511442)))

(declare-fun res!1649058 () Bool)

(assert (=> b!4047624 (=> (not res!1649058) (not e!2511442))))

(assert (=> b!4047624 (= res!1649058 lt!1442060)))

(declare-fun b!4047625 () Bool)

(declare-fun res!1649052 () Bool)

(assert (=> b!4047625 (=> (not res!1649052) (not e!2511442))))

(assert (=> b!4047625 (= res!1649052 (isEmpty!25831 (tail!6289 (tail!6289 lt!1441296))))))

(declare-fun b!4047626 () Bool)

(assert (=> b!4047626 (= e!2511444 (= lt!1442060 call!287770))))

(declare-fun b!4047627 () Bool)

(assert (=> b!4047627 (= e!2511441 e!2511443)))

(declare-fun res!1649054 () Bool)

(assert (=> b!4047627 (=> (not res!1649054) (not e!2511443))))

(assert (=> b!4047627 (= res!1649054 (not lt!1442060))))

(declare-fun b!4047628 () Bool)

(assert (=> b!4047628 (= e!2511439 (matchR!5792 (derivativeStep!3559 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296)) (head!8557 (tail!6289 lt!1441296))) (tail!6289 (tail!6289 lt!1441296))))))

(assert (= (and d!1201728 c!699268) b!4047617))

(assert (= (and d!1201728 (not c!699268)) b!4047628))

(assert (= (and d!1201728 c!699266) b!4047626))

(assert (= (and d!1201728 (not c!699266)) b!4047615))

(assert (= (and b!4047615 c!699267) b!4047623))

(assert (= (and b!4047615 (not c!699267)) b!4047619))

(assert (= (and b!4047619 (not res!1649055)) b!4047624))

(assert (= (and b!4047624 res!1649058) b!4047621))

(assert (= (and b!4047621 res!1649056) b!4047625))

(assert (= (and b!4047625 res!1649052) b!4047616))

(assert (= (and b!4047624 (not res!1649053)) b!4047627))

(assert (= (and b!4047627 res!1649054) b!4047620))

(assert (= (and b!4047620 (not res!1649057)) b!4047622))

(assert (= (and b!4047622 (not res!1649059)) b!4047618))

(assert (= (or b!4047626 b!4047620 b!4047621) bm!287765))

(assert (=> b!4047617 m!4645613))

(declare-fun m!4647153 () Bool)

(assert (=> b!4047617 m!4647153))

(assert (=> b!4047618 m!4645237))

(assert (=> b!4047618 m!4646097))

(assert (=> d!1201728 m!4645237))

(assert (=> d!1201728 m!4645611))

(assert (=> d!1201728 m!4645613))

(declare-fun m!4647155 () Bool)

(assert (=> d!1201728 m!4647155))

(assert (=> b!4047622 m!4645237))

(assert (=> b!4047622 m!4646091))

(assert (=> b!4047622 m!4646091))

(declare-fun m!4647157 () Bool)

(assert (=> b!4047622 m!4647157))

(assert (=> b!4047628 m!4645237))

(assert (=> b!4047628 m!4646097))

(assert (=> b!4047628 m!4645613))

(assert (=> b!4047628 m!4646097))

(declare-fun m!4647159 () Bool)

(assert (=> b!4047628 m!4647159))

(assert (=> b!4047628 m!4645237))

(assert (=> b!4047628 m!4646091))

(assert (=> b!4047628 m!4647159))

(assert (=> b!4047628 m!4646091))

(declare-fun m!4647161 () Bool)

(assert (=> b!4047628 m!4647161))

(assert (=> b!4047616 m!4645237))

(assert (=> b!4047616 m!4646097))

(assert (=> bm!287765 m!4645237))

(assert (=> bm!287765 m!4645611))

(assert (=> b!4047625 m!4645237))

(assert (=> b!4047625 m!4646091))

(assert (=> b!4047625 m!4646091))

(assert (=> b!4047625 m!4647157))

(assert (=> b!4046587 d!1201728))

(declare-fun call!287779 () Regex!11839)

(declare-fun c!699279 () Bool)

(declare-fun c!699282 () Bool)

(declare-fun bm!287774 () Bool)

(assert (=> bm!287774 (= call!287779 (derivativeStep!3559 (ite c!699282 (regOne!24191 (regex!6934 (rule!10010 token!484))) (ite c!699279 (reg!12168 (regex!6934 (rule!10010 token!484))) (regOne!24190 (regex!6934 (rule!10010 token!484))))) (head!8557 lt!1441296)))))

(declare-fun b!4047649 () Bool)

(declare-fun e!2511459 () Regex!11839)

(declare-fun e!2511460 () Regex!11839)

(assert (=> b!4047649 (= e!2511459 e!2511460)))

(assert (=> b!4047649 (= c!699279 ((_ is Star!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun b!4047651 () Bool)

(assert (=> b!4047651 (= c!699282 ((_ is Union!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun e!2511456 () Regex!11839)

(assert (=> b!4047651 (= e!2511456 e!2511459)))

(declare-fun bm!287775 () Bool)

(declare-fun call!287780 () Regex!11839)

(declare-fun call!287781 () Regex!11839)

(assert (=> bm!287775 (= call!287780 call!287781)))

(declare-fun b!4047652 () Bool)

(declare-fun e!2511457 () Regex!11839)

(assert (=> b!4047652 (= e!2511457 EmptyLang!11839)))

(declare-fun bm!287776 () Bool)

(declare-fun call!287782 () Regex!11839)

(assert (=> bm!287776 (= call!287782 (derivativeStep!3559 (ite c!699282 (regTwo!24191 (regex!6934 (rule!10010 token!484))) (regTwo!24190 (regex!6934 (rule!10010 token!484)))) (head!8557 lt!1441296)))))

(declare-fun b!4047653 () Bool)

(declare-fun e!2511458 () Regex!11839)

(assert (=> b!4047653 (= e!2511458 (Union!11839 (Concat!19004 call!287780 (regTwo!24190 (regex!6934 (rule!10010 token!484)))) EmptyLang!11839))))

(declare-fun b!4047654 () Bool)

(assert (=> b!4047654 (= e!2511456 (ite (= (head!8557 lt!1441296) (c!698891 (regex!6934 (rule!10010 token!484)))) EmptyExpr!11839 EmptyLang!11839))))

(declare-fun b!4047655 () Bool)

(declare-fun c!699280 () Bool)

(assert (=> b!4047655 (= c!699280 (nullable!4154 (regOne!24190 (regex!6934 (rule!10010 token!484)))))))

(assert (=> b!4047655 (= e!2511460 e!2511458)))

(declare-fun b!4047650 () Bool)

(assert (=> b!4047650 (= e!2511458 (Union!11839 (Concat!19004 call!287780 (regTwo!24190 (regex!6934 (rule!10010 token!484)))) call!287782))))

(declare-fun d!1201730 () Bool)

(declare-fun lt!1442063 () Regex!11839)

(assert (=> d!1201730 (validRegex!5354 lt!1442063)))

(assert (=> d!1201730 (= lt!1442063 e!2511457)))

(declare-fun c!699281 () Bool)

(assert (=> d!1201730 (= c!699281 (or ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 token!484))) ((_ is EmptyLang!11839) (regex!6934 (rule!10010 token!484)))))))

(assert (=> d!1201730 (validRegex!5354 (regex!6934 (rule!10010 token!484)))))

(assert (=> d!1201730 (= (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 lt!1441296)) lt!1442063)))

(declare-fun b!4047656 () Bool)

(assert (=> b!4047656 (= e!2511457 e!2511456)))

(declare-fun c!699283 () Bool)

(assert (=> b!4047656 (= c!699283 ((_ is ElementMatch!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun bm!287777 () Bool)

(assert (=> bm!287777 (= call!287781 call!287779)))

(declare-fun b!4047657 () Bool)

(assert (=> b!4047657 (= e!2511460 (Concat!19004 call!287781 (regex!6934 (rule!10010 token!484))))))

(declare-fun b!4047658 () Bool)

(assert (=> b!4047658 (= e!2511459 (Union!11839 call!287779 call!287782))))

(assert (= (and d!1201730 c!699281) b!4047652))

(assert (= (and d!1201730 (not c!699281)) b!4047656))

(assert (= (and b!4047656 c!699283) b!4047654))

(assert (= (and b!4047656 (not c!699283)) b!4047651))

(assert (= (and b!4047651 c!699282) b!4047658))

(assert (= (and b!4047651 (not c!699282)) b!4047649))

(assert (= (and b!4047649 c!699279) b!4047657))

(assert (= (and b!4047649 (not c!699279)) b!4047655))

(assert (= (and b!4047655 c!699280) b!4047650))

(assert (= (and b!4047655 (not c!699280)) b!4047653))

(assert (= (or b!4047650 b!4047653) bm!287775))

(assert (= (or b!4047657 bm!287775) bm!287777))

(assert (= (or b!4047658 bm!287777) bm!287774))

(assert (= (or b!4047658 b!4047650) bm!287776))

(assert (=> bm!287774 m!4645243))

(declare-fun m!4647163 () Bool)

(assert (=> bm!287774 m!4647163))

(assert (=> bm!287776 m!4645243))

(declare-fun m!4647165 () Bool)

(assert (=> bm!287776 m!4647165))

(declare-fun m!4647167 () Bool)

(assert (=> b!4047655 m!4647167))

(declare-fun m!4647169 () Bool)

(assert (=> d!1201730 m!4647169))

(assert (=> d!1201730 m!4645609))

(assert (=> b!4046587 d!1201730))

(assert (=> b!4046587 d!1201710))

(assert (=> b!4046587 d!1201258))

(declare-fun d!1201732 () Bool)

(declare-fun lt!1442064 () Int)

(assert (=> d!1201732 (>= lt!1442064 0)))

(declare-fun e!2511461 () Int)

(assert (=> d!1201732 (= lt!1442064 e!2511461)))

(declare-fun c!699284 () Bool)

(assert (=> d!1201732 (= c!699284 ((_ is Nil!43281) lt!1441584))))

(assert (=> d!1201732 (= (size!32358 lt!1441584) lt!1442064)))

(declare-fun b!4047659 () Bool)

(assert (=> b!4047659 (= e!2511461 0)))

(declare-fun b!4047660 () Bool)

(assert (=> b!4047660 (= e!2511461 (+ 1 (size!32358 (t!335502 lt!1441584))))))

(assert (= (and d!1201732 c!699284) b!4047659))

(assert (= (and d!1201732 (not c!699284)) b!4047660))

(declare-fun m!4647171 () Bool)

(assert (=> b!4047660 m!4647171))

(assert (=> b!4046488 d!1201732))

(assert (=> b!4046488 d!1200886))

(declare-fun d!1201734 () Bool)

(declare-fun lt!1442065 () Int)

(assert (=> d!1201734 (>= lt!1442065 0)))

(declare-fun e!2511462 () Int)

(assert (=> d!1201734 (= lt!1442065 e!2511462)))

(declare-fun c!699285 () Bool)

(assert (=> d!1201734 (= c!699285 ((_ is Nil!43281) lt!1441283))))

(assert (=> d!1201734 (= (size!32358 lt!1441283) lt!1442065)))

(declare-fun b!4047661 () Bool)

(assert (=> b!4047661 (= e!2511462 0)))

(declare-fun b!4047662 () Bool)

(assert (=> b!4047662 (= e!2511462 (+ 1 (size!32358 (t!335502 lt!1441283))))))

(assert (= (and d!1201734 c!699285) b!4047661))

(assert (= (and d!1201734 (not c!699285)) b!4047662))

(declare-fun m!4647173 () Bool)

(assert (=> b!4047662 m!4647173))

(assert (=> b!4046488 d!1201734))

(declare-fun d!1201736 () Bool)

(declare-fun c!699286 () Bool)

(assert (=> d!1201736 (= c!699286 ((_ is Nil!43281) lt!1441589))))

(declare-fun e!2511463 () (InoxSet C!23864))

(assert (=> d!1201736 (= (content!6586 lt!1441589) e!2511463)))

(declare-fun b!4047663 () Bool)

(assert (=> b!4047663 (= e!2511463 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047664 () Bool)

(assert (=> b!4047664 (= e!2511463 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441589) true) (content!6586 (t!335502 lt!1441589))))))

(assert (= (and d!1201736 c!699286) b!4047663))

(assert (= (and d!1201736 (not c!699286)) b!4047664))

(declare-fun m!4647175 () Bool)

(assert (=> b!4047664 m!4647175))

(declare-fun m!4647177 () Bool)

(assert (=> b!4047664 m!4647177))

(assert (=> d!1200992 d!1201736))

(declare-fun d!1201738 () Bool)

(declare-fun c!699287 () Bool)

(assert (=> d!1201738 (= c!699287 ((_ is Nil!43281) lt!1441294))))

(declare-fun e!2511464 () (InoxSet C!23864))

(assert (=> d!1201738 (= (content!6586 lt!1441294) e!2511464)))

(declare-fun b!4047665 () Bool)

(assert (=> b!4047665 (= e!2511464 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047666 () Bool)

(assert (=> b!4047666 (= e!2511464 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441294) true) (content!6586 (t!335502 lt!1441294))))))

(assert (= (and d!1201738 c!699287) b!4047665))

(assert (= (and d!1201738 (not c!699287)) b!4047666))

(declare-fun m!4647179 () Bool)

(assert (=> b!4047666 m!4647179))

(declare-fun m!4647181 () Bool)

(assert (=> b!4047666 m!4647181))

(assert (=> d!1200992 d!1201738))

(declare-fun d!1201740 () Bool)

(declare-fun c!699288 () Bool)

(assert (=> d!1201740 (= c!699288 ((_ is Nil!43281) lt!1441303))))

(declare-fun e!2511465 () (InoxSet C!23864))

(assert (=> d!1201740 (= (content!6586 lt!1441303) e!2511465)))

(declare-fun b!4047667 () Bool)

(assert (=> b!4047667 (= e!2511465 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047668 () Bool)

(assert (=> b!4047668 (= e!2511465 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441303) true) (content!6586 (t!335502 lt!1441303))))))

(assert (= (and d!1201740 c!699288) b!4047667))

(assert (= (and d!1201740 (not c!699288)) b!4047668))

(declare-fun m!4647183 () Bool)

(assert (=> b!4047668 m!4647183))

(declare-fun m!4647185 () Bool)

(assert (=> b!4047668 m!4647185))

(assert (=> d!1200992 d!1201740))

(declare-fun d!1201742 () Bool)

(declare-fun lt!1442066 () Bool)

(assert (=> d!1201742 (= lt!1442066 (select (content!6587 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1441523)))))))

(declare-fun e!2511467 () Bool)

(assert (=> d!1201742 (= lt!1442066 e!2511467)))

(declare-fun res!1649060 () Bool)

(assert (=> d!1201742 (=> (not res!1649060) (not e!2511467))))

(assert (=> d!1201742 (= res!1649060 ((_ is Cons!43283) rules!2999))))

(assert (=> d!1201742 (= (contains!8604 rules!2999 (rule!10010 (_1!24311 (get!14199 lt!1441523)))) lt!1442066)))

(declare-fun b!4047669 () Bool)

(declare-fun e!2511466 () Bool)

(assert (=> b!4047669 (= e!2511467 e!2511466)))

(declare-fun res!1649061 () Bool)

(assert (=> b!4047669 (=> res!1649061 e!2511466)))

(assert (=> b!4047669 (= res!1649061 (= (h!48703 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1441523)))))))

(declare-fun b!4047670 () Bool)

(assert (=> b!4047670 (= e!2511466 (contains!8604 (t!335504 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1441523)))))))

(assert (= (and d!1201742 res!1649060) b!4047669))

(assert (= (and b!4047669 (not res!1649061)) b!4047670))

(assert (=> d!1201742 m!4645297))

(declare-fun m!4647187 () Bool)

(assert (=> d!1201742 m!4647187))

(declare-fun m!4647189 () Bool)

(assert (=> b!4047670 m!4647189))

(assert (=> b!4046374 d!1201742))

(assert (=> b!4046374 d!1201264))

(assert (=> b!4046471 d!1200910))

(assert (=> b!4046471 d!1200912))

(declare-fun b!4047672 () Bool)

(declare-fun e!2511469 () List!43405)

(assert (=> b!4047672 (= e!2511469 (Cons!43281 (h!48701 (++!11336 lt!1441296 lt!1441324)) (++!11336 (t!335502 (++!11336 lt!1441296 lt!1441324)) suffix!1299)))))

(declare-fun b!4047673 () Bool)

(declare-fun res!1649063 () Bool)

(declare-fun e!2511468 () Bool)

(assert (=> b!4047673 (=> (not res!1649063) (not e!2511468))))

(declare-fun lt!1442067 () List!43405)

(assert (=> b!4047673 (= res!1649063 (= (size!32358 lt!1442067) (+ (size!32358 (++!11336 lt!1441296 lt!1441324)) (size!32358 suffix!1299))))))

(declare-fun b!4047674 () Bool)

(assert (=> b!4047674 (= e!2511468 (or (not (= suffix!1299 Nil!43281)) (= lt!1442067 (++!11336 lt!1441296 lt!1441324))))))

(declare-fun b!4047671 () Bool)

(assert (=> b!4047671 (= e!2511469 suffix!1299)))

(declare-fun d!1201744 () Bool)

(assert (=> d!1201744 e!2511468))

(declare-fun res!1649062 () Bool)

(assert (=> d!1201744 (=> (not res!1649062) (not e!2511468))))

(assert (=> d!1201744 (= res!1649062 (= (content!6586 lt!1442067) ((_ map or) (content!6586 (++!11336 lt!1441296 lt!1441324)) (content!6586 suffix!1299))))))

(assert (=> d!1201744 (= lt!1442067 e!2511469)))

(declare-fun c!699289 () Bool)

(assert (=> d!1201744 (= c!699289 ((_ is Nil!43281) (++!11336 lt!1441296 lt!1441324)))))

(assert (=> d!1201744 (= (++!11336 (++!11336 lt!1441296 lt!1441324) suffix!1299) lt!1442067)))

(assert (= (and d!1201744 c!699289) b!4047671))

(assert (= (and d!1201744 (not c!699289)) b!4047672))

(assert (= (and d!1201744 res!1649062) b!4047673))

(assert (= (and b!4047673 res!1649063) b!4047674))

(declare-fun m!4647191 () Bool)

(assert (=> b!4047672 m!4647191))

(declare-fun m!4647193 () Bool)

(assert (=> b!4047673 m!4647193))

(assert (=> b!4047673 m!4644331))

(declare-fun m!4647195 () Bool)

(assert (=> b!4047673 m!4647195))

(assert (=> b!4047673 m!4644351))

(declare-fun m!4647197 () Bool)

(assert (=> d!1201744 m!4647197))

(assert (=> d!1201744 m!4644331))

(declare-fun m!4647199 () Bool)

(assert (=> d!1201744 m!4647199))

(assert (=> d!1201744 m!4645275))

(assert (=> d!1200908 d!1201744))

(assert (=> d!1200908 d!1200906))

(declare-fun d!1201746 () Bool)

(assert (=> d!1201746 (= (++!11336 (++!11336 lt!1441296 lt!1441324) suffix!1299) (++!11336 lt!1441296 (++!11336 lt!1441324 suffix!1299)))))

(assert (=> d!1201746 true))

(declare-fun _$52!2331 () Unit!62527)

(assert (=> d!1201746 (= (choose!24528 lt!1441296 lt!1441324 suffix!1299) _$52!2331)))

(declare-fun bs!591332 () Bool)

(assert (= bs!591332 d!1201746))

(assert (=> bs!591332 m!4644331))

(assert (=> bs!591332 m!4644331))

(assert (=> bs!591332 m!4645287))

(assert (=> bs!591332 m!4644491))

(assert (=> bs!591332 m!4644491))

(assert (=> bs!591332 m!4645289))

(assert (=> d!1200908 d!1201746))

(assert (=> d!1200908 d!1201006))

(declare-fun e!2511471 () List!43405)

(declare-fun b!4047676 () Bool)

(assert (=> b!4047676 (= e!2511471 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) (++!11336 lt!1441324 suffix!1299))))))

(declare-fun b!4047677 () Bool)

(declare-fun res!1649065 () Bool)

(declare-fun e!2511470 () Bool)

(assert (=> b!4047677 (=> (not res!1649065) (not e!2511470))))

(declare-fun lt!1442068 () List!43405)

(assert (=> b!4047677 (= res!1649065 (= (size!32358 lt!1442068) (+ (size!32358 lt!1441296) (size!32358 (++!11336 lt!1441324 suffix!1299)))))))

(declare-fun b!4047678 () Bool)

(assert (=> b!4047678 (= e!2511470 (or (not (= (++!11336 lt!1441324 suffix!1299) Nil!43281)) (= lt!1442068 lt!1441296)))))

(declare-fun b!4047675 () Bool)

(assert (=> b!4047675 (= e!2511471 (++!11336 lt!1441324 suffix!1299))))

(declare-fun d!1201748 () Bool)

(assert (=> d!1201748 e!2511470))

(declare-fun res!1649064 () Bool)

(assert (=> d!1201748 (=> (not res!1649064) (not e!2511470))))

(assert (=> d!1201748 (= res!1649064 (= (content!6586 lt!1442068) ((_ map or) (content!6586 lt!1441296) (content!6586 (++!11336 lt!1441324 suffix!1299)))))))

(assert (=> d!1201748 (= lt!1442068 e!2511471)))

(declare-fun c!699290 () Bool)

(assert (=> d!1201748 (= c!699290 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201748 (= (++!11336 lt!1441296 (++!11336 lt!1441324 suffix!1299)) lt!1442068)))

(assert (= (and d!1201748 c!699290) b!4047675))

(assert (= (and d!1201748 (not c!699290)) b!4047676))

(assert (= (and d!1201748 res!1649064) b!4047677))

(assert (= (and b!4047677 res!1649065) b!4047678))

(assert (=> b!4047676 m!4644491))

(declare-fun m!4647201 () Bool)

(assert (=> b!4047676 m!4647201))

(declare-fun m!4647203 () Bool)

(assert (=> b!4047677 m!4647203))

(assert (=> b!4047677 m!4644369))

(assert (=> b!4047677 m!4644491))

(declare-fun m!4647205 () Bool)

(assert (=> b!4047677 m!4647205))

(declare-fun m!4647207 () Bool)

(assert (=> d!1201748 m!4647207))

(assert (=> d!1201748 m!4645261))

(assert (=> d!1201748 m!4644491))

(declare-fun m!4647209 () Bool)

(assert (=> d!1201748 m!4647209))

(assert (=> d!1200908 d!1201748))

(declare-fun b!4047680 () Bool)

(declare-fun e!2511473 () List!43405)

(assert (=> b!4047680 (= e!2511473 (Cons!43281 (h!48701 (t!335502 lt!1441294)) (++!11336 (t!335502 (t!335502 lt!1441294)) lt!1441303)))))

(declare-fun b!4047681 () Bool)

(declare-fun res!1649067 () Bool)

(declare-fun e!2511472 () Bool)

(assert (=> b!4047681 (=> (not res!1649067) (not e!2511472))))

(declare-fun lt!1442069 () List!43405)

(assert (=> b!4047681 (= res!1649067 (= (size!32358 lt!1442069) (+ (size!32358 (t!335502 lt!1441294)) (size!32358 lt!1441303))))))

(declare-fun b!4047682 () Bool)

(assert (=> b!4047682 (= e!2511472 (or (not (= lt!1441303 Nil!43281)) (= lt!1442069 (t!335502 lt!1441294))))))

(declare-fun b!4047679 () Bool)

(assert (=> b!4047679 (= e!2511473 lt!1441303)))

(declare-fun d!1201750 () Bool)

(assert (=> d!1201750 e!2511472))

(declare-fun res!1649066 () Bool)

(assert (=> d!1201750 (=> (not res!1649066) (not e!2511472))))

(assert (=> d!1201750 (= res!1649066 (= (content!6586 lt!1442069) ((_ map or) (content!6586 (t!335502 lt!1441294)) (content!6586 lt!1441303))))))

(assert (=> d!1201750 (= lt!1442069 e!2511473)))

(declare-fun c!699291 () Bool)

(assert (=> d!1201750 (= c!699291 ((_ is Nil!43281) (t!335502 lt!1441294)))))

(assert (=> d!1201750 (= (++!11336 (t!335502 lt!1441294) lt!1441303) lt!1442069)))

(assert (= (and d!1201750 c!699291) b!4047679))

(assert (= (and d!1201750 (not c!699291)) b!4047680))

(assert (= (and d!1201750 res!1649066) b!4047681))

(assert (= (and b!4047681 res!1649067) b!4047682))

(declare-fun m!4647211 () Bool)

(assert (=> b!4047680 m!4647211))

(declare-fun m!4647213 () Bool)

(assert (=> b!4047681 m!4647213))

(assert (=> b!4047681 m!4646051))

(assert (=> b!4047681 m!4645499))

(declare-fun m!4647215 () Bool)

(assert (=> d!1201750 m!4647215))

(assert (=> d!1201750 m!4647181))

(assert (=> d!1201750 m!4645505))

(assert (=> b!4046505 d!1201750))

(declare-fun b!4047685 () Bool)

(declare-fun e!2511476 () Bool)

(assert (=> b!4047685 (= e!2511476 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441296)) (tail!6289 (tail!6289 lt!1441294))))))

(declare-fun d!1201752 () Bool)

(declare-fun e!2511475 () Bool)

(assert (=> d!1201752 e!2511475))

(declare-fun res!1649068 () Bool)

(assert (=> d!1201752 (=> res!1649068 e!2511475)))

(declare-fun lt!1442070 () Bool)

(assert (=> d!1201752 (= res!1649068 (not lt!1442070))))

(declare-fun e!2511474 () Bool)

(assert (=> d!1201752 (= lt!1442070 e!2511474)))

(declare-fun res!1649070 () Bool)

(assert (=> d!1201752 (=> res!1649070 e!2511474)))

(assert (=> d!1201752 (= res!1649070 ((_ is Nil!43281) (tail!6289 lt!1441296)))))

(assert (=> d!1201752 (= (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441294)) lt!1442070)))

(declare-fun b!4047683 () Bool)

(assert (=> b!4047683 (= e!2511474 e!2511476)))

(declare-fun res!1649069 () Bool)

(assert (=> b!4047683 (=> (not res!1649069) (not e!2511476))))

(assert (=> b!4047683 (= res!1649069 (not ((_ is Nil!43281) (tail!6289 lt!1441294))))))

(declare-fun b!4047684 () Bool)

(declare-fun res!1649071 () Bool)

(assert (=> b!4047684 (=> (not res!1649071) (not e!2511476))))

(assert (=> b!4047684 (= res!1649071 (= (head!8557 (tail!6289 lt!1441296)) (head!8557 (tail!6289 lt!1441294))))))

(declare-fun b!4047686 () Bool)

(assert (=> b!4047686 (= e!2511475 (>= (size!32358 (tail!6289 lt!1441294)) (size!32358 (tail!6289 lt!1441296))))))

(assert (= (and d!1201752 (not res!1649070)) b!4047683))

(assert (= (and b!4047683 res!1649069) b!4047684))

(assert (= (and b!4047684 res!1649071) b!4047685))

(assert (= (and d!1201752 (not res!1649068)) b!4047686))

(assert (=> b!4047685 m!4645237))

(assert (=> b!4047685 m!4646091))

(assert (=> b!4047685 m!4645523))

(assert (=> b!4047685 m!4646055))

(assert (=> b!4047685 m!4646091))

(assert (=> b!4047685 m!4646055))

(declare-fun m!4647217 () Bool)

(assert (=> b!4047685 m!4647217))

(assert (=> b!4047684 m!4645237))

(assert (=> b!4047684 m!4646097))

(assert (=> b!4047684 m!4645523))

(assert (=> b!4047684 m!4646061))

(assert (=> b!4047686 m!4645523))

(assert (=> b!4047686 m!4646063))

(assert (=> b!4047686 m!4645237))

(assert (=> b!4047686 m!4646103))

(assert (=> b!4046590 d!1201752))

(assert (=> b!4046590 d!1201258))

(assert (=> b!4046590 d!1201242))

(assert (=> b!4046457 d!1201710))

(declare-fun d!1201754 () Bool)

(assert (=> d!1201754 (= (head!8557 lt!1441315) (h!48701 lt!1441315))))

(assert (=> b!4046457 d!1201754))

(declare-fun e!2511479 () Bool)

(declare-fun b!4047689 () Bool)

(assert (=> b!4047689 (= e!2511479 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 (++!11336 lt!1441294 lt!1441303))))))

(declare-fun d!1201756 () Bool)

(declare-fun e!2511478 () Bool)

(assert (=> d!1201756 e!2511478))

(declare-fun res!1649072 () Bool)

(assert (=> d!1201756 (=> res!1649072 e!2511478)))

(declare-fun lt!1442071 () Bool)

(assert (=> d!1201756 (= res!1649072 (not lt!1442071))))

(declare-fun e!2511477 () Bool)

(assert (=> d!1201756 (= lt!1442071 e!2511477)))

(declare-fun res!1649074 () Bool)

(assert (=> d!1201756 (=> res!1649074 e!2511477)))

(assert (=> d!1201756 (= res!1649074 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1201756 (= (isPrefix!4021 lt!1441314 (++!11336 lt!1441294 lt!1441303)) lt!1442071)))

(declare-fun b!4047687 () Bool)

(assert (=> b!4047687 (= e!2511477 e!2511479)))

(declare-fun res!1649073 () Bool)

(assert (=> b!4047687 (=> (not res!1649073) (not e!2511479))))

(assert (=> b!4047687 (= res!1649073 (not ((_ is Nil!43281) (++!11336 lt!1441294 lt!1441303))))))

(declare-fun b!4047688 () Bool)

(declare-fun res!1649075 () Bool)

(assert (=> b!4047688 (=> (not res!1649075) (not e!2511479))))

(assert (=> b!4047688 (= res!1649075 (= (head!8557 lt!1441314) (head!8557 (++!11336 lt!1441294 lt!1441303))))))

(declare-fun b!4047690 () Bool)

(assert (=> b!4047690 (= e!2511478 (>= (size!32358 (++!11336 lt!1441294 lt!1441303)) (size!32358 lt!1441314)))))

(assert (= (and d!1201756 (not res!1649074)) b!4047687))

(assert (= (and b!4047687 res!1649073) b!4047688))

(assert (= (and b!4047688 res!1649075) b!4047689))

(assert (= (and d!1201756 (not res!1649072)) b!4047690))

(assert (=> b!4047689 m!4644691))

(assert (=> b!4047689 m!4644437))

(declare-fun m!4647219 () Bool)

(assert (=> b!4047689 m!4647219))

(assert (=> b!4047689 m!4644691))

(assert (=> b!4047689 m!4647219))

(declare-fun m!4647221 () Bool)

(assert (=> b!4047689 m!4647221))

(assert (=> b!4047688 m!4644697))

(assert (=> b!4047688 m!4644437))

(declare-fun m!4647223 () Bool)

(assert (=> b!4047688 m!4647223))

(assert (=> b!4047690 m!4644437))

(declare-fun m!4647225 () Bool)

(assert (=> b!4047690 m!4647225))

(assert (=> b!4047690 m!4644397))

(assert (=> d!1200976 d!1201756))

(assert (=> d!1200976 d!1200992))

(declare-fun d!1201758 () Bool)

(assert (=> d!1201758 (isPrefix!4021 lt!1441314 (++!11336 lt!1441294 lt!1441303))))

(assert (=> d!1201758 true))

(declare-fun _$58!606 () Unit!62527)

(assert (=> d!1201758 (= (choose!24532 lt!1441314 lt!1441294 lt!1441303) _$58!606)))

(declare-fun bs!591333 () Bool)

(assert (= bs!591333 d!1201758))

(assert (=> bs!591333 m!4644437))

(assert (=> bs!591333 m!4644437))

(assert (=> bs!591333 m!4645491))

(assert (=> d!1200976 d!1201758))

(assert (=> d!1200976 d!1201038))

(declare-fun b!4047691 () Bool)

(declare-fun res!1649077 () Bool)

(declare-fun e!2511481 () Bool)

(assert (=> b!4047691 (=> (not res!1649077) (not e!2511481))))

(declare-fun lt!1442072 () Option!9348)

(assert (=> b!4047691 (= res!1649077 (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1442072)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442072))))))))

(declare-fun b!4047692 () Bool)

(declare-fun e!2511482 () Option!9348)

(declare-fun lt!1442076 () Option!9348)

(declare-fun lt!1442074 () Option!9348)

(assert (=> b!4047692 (= e!2511482 (ite (and ((_ is None!9347) lt!1442076) ((_ is None!9347) lt!1442074)) None!9347 (ite ((_ is None!9347) lt!1442074) lt!1442076 (ite ((_ is None!9347) lt!1442076) lt!1442074 (ite (>= (size!32357 (_1!24311 (v!39751 lt!1442076))) (size!32357 (_1!24311 (v!39751 lt!1442074)))) lt!1442076 lt!1442074)))))))

(declare-fun call!287783 () Option!9348)

(assert (=> b!4047692 (= lt!1442076 call!287783)))

(assert (=> b!4047692 (= lt!1442074 (maxPrefix!3821 thiss!21717 (t!335504 (t!335504 rules!2999)) lt!1441304))))

(declare-fun b!4047693 () Bool)

(assert (=> b!4047693 (= e!2511482 call!287783)))

(declare-fun bm!287778 () Bool)

(assert (=> bm!287778 (= call!287783 (maxPrefixOneRule!2833 thiss!21717 (h!48703 (t!335504 rules!2999)) lt!1441304))))

(declare-fun b!4047694 () Bool)

(assert (=> b!4047694 (= e!2511481 (contains!8604 (t!335504 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1442072)))))))

(declare-fun d!1201760 () Bool)

(declare-fun e!2511480 () Bool)

(assert (=> d!1201760 e!2511480))

(declare-fun res!1649078 () Bool)

(assert (=> d!1201760 (=> res!1649078 e!2511480)))

(assert (=> d!1201760 (= res!1649078 (isEmpty!25830 lt!1442072))))

(assert (=> d!1201760 (= lt!1442072 e!2511482)))

(declare-fun c!699292 () Bool)

(assert (=> d!1201760 (= c!699292 (and ((_ is Cons!43283) (t!335504 rules!2999)) ((_ is Nil!43283) (t!335504 (t!335504 rules!2999)))))))

(declare-fun lt!1442075 () Unit!62527)

(declare-fun lt!1442073 () Unit!62527)

(assert (=> d!1201760 (= lt!1442075 lt!1442073)))

(assert (=> d!1201760 (isPrefix!4021 lt!1441304 lt!1441304)))

(assert (=> d!1201760 (= lt!1442073 (lemmaIsPrefixRefl!2588 lt!1441304 lt!1441304))))

(assert (=> d!1201760 (rulesValidInductive!2529 thiss!21717 (t!335504 rules!2999))))

(assert (=> d!1201760 (= (maxPrefix!3821 thiss!21717 (t!335504 rules!2999) lt!1441304) lt!1442072)))

(declare-fun b!4047695 () Bool)

(declare-fun res!1649082 () Bool)

(assert (=> b!4047695 (=> (not res!1649082) (not e!2511481))))

(assert (=> b!4047695 (= res!1649082 (< (size!32358 (_2!24311 (get!14199 lt!1442072))) (size!32358 lt!1441304)))))

(declare-fun b!4047696 () Bool)

(declare-fun res!1649076 () Bool)

(assert (=> b!4047696 (=> (not res!1649076) (not e!2511481))))

(assert (=> b!4047696 (= res!1649076 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442072)))) (_2!24311 (get!14199 lt!1442072))) lt!1441304))))

(declare-fun b!4047697 () Bool)

(declare-fun res!1649081 () Bool)

(assert (=> b!4047697 (=> (not res!1649081) (not e!2511481))))

(assert (=> b!4047697 (= res!1649081 (= (value!218253 (_1!24311 (get!14199 lt!1442072))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1442072)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1442072)))))))))

(declare-fun b!4047698 () Bool)

(assert (=> b!4047698 (= e!2511480 e!2511481)))

(declare-fun res!1649080 () Bool)

(assert (=> b!4047698 (=> (not res!1649080) (not e!2511481))))

(assert (=> b!4047698 (= res!1649080 (isDefined!7108 lt!1442072))))

(declare-fun b!4047699 () Bool)

(declare-fun res!1649079 () Bool)

(assert (=> b!4047699 (=> (not res!1649079) (not e!2511481))))

(assert (=> b!4047699 (= res!1649079 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442072)))) (originalCharacters!7534 (_1!24311 (get!14199 lt!1442072)))))))

(assert (= (and d!1201760 c!699292) b!4047693))

(assert (= (and d!1201760 (not c!699292)) b!4047692))

(assert (= (or b!4047693 b!4047692) bm!287778))

(assert (= (and d!1201760 (not res!1649078)) b!4047698))

(assert (= (and b!4047698 res!1649080) b!4047699))

(assert (= (and b!4047699 res!1649079) b!4047695))

(assert (= (and b!4047695 res!1649082) b!4047696))

(assert (= (and b!4047696 res!1649076) b!4047697))

(assert (= (and b!4047697 res!1649081) b!4047691))

(assert (= (and b!4047691 res!1649077) b!4047694))

(declare-fun m!4647227 () Bool)

(assert (=> b!4047699 m!4647227))

(declare-fun m!4647229 () Bool)

(assert (=> b!4047699 m!4647229))

(assert (=> b!4047699 m!4647229))

(declare-fun m!4647231 () Bool)

(assert (=> b!4047699 m!4647231))

(declare-fun m!4647233 () Bool)

(assert (=> b!4047698 m!4647233))

(assert (=> b!4047695 m!4647227))

(declare-fun m!4647235 () Bool)

(assert (=> b!4047695 m!4647235))

(assert (=> b!4047695 m!4645323))

(declare-fun m!4647237 () Bool)

(assert (=> b!4047692 m!4647237))

(declare-fun m!4647239 () Bool)

(assert (=> bm!287778 m!4647239))

(assert (=> b!4047696 m!4647227))

(assert (=> b!4047696 m!4647229))

(assert (=> b!4047696 m!4647229))

(assert (=> b!4047696 m!4647231))

(assert (=> b!4047696 m!4647231))

(declare-fun m!4647241 () Bool)

(assert (=> b!4047696 m!4647241))

(assert (=> b!4047697 m!4647227))

(declare-fun m!4647243 () Bool)

(assert (=> b!4047697 m!4647243))

(assert (=> b!4047697 m!4647243))

(declare-fun m!4647245 () Bool)

(assert (=> b!4047697 m!4647245))

(assert (=> b!4047694 m!4647227))

(declare-fun m!4647247 () Bool)

(assert (=> b!4047694 m!4647247))

(declare-fun m!4647249 () Bool)

(assert (=> d!1201760 m!4647249))

(assert (=> d!1201760 m!4644427))

(assert (=> d!1201760 m!4644429))

(declare-fun m!4647251 () Bool)

(assert (=> d!1201760 m!4647251))

(assert (=> b!4047691 m!4647227))

(assert (=> b!4047691 m!4647229))

(assert (=> b!4047691 m!4647229))

(assert (=> b!4047691 m!4647231))

(assert (=> b!4047691 m!4647231))

(declare-fun m!4647253 () Bool)

(assert (=> b!4047691 m!4647253))

(assert (=> b!4046434 d!1201760))

(declare-fun d!1201762 () Bool)

(declare-fun c!699295 () Bool)

(assert (=> d!1201762 (= c!699295 ((_ is Nil!43283) rules!2999))))

(declare-fun e!2511485 () (InoxSet Rule!13668))

(assert (=> d!1201762 (= (content!6587 rules!2999) e!2511485)))

(declare-fun b!4047704 () Bool)

(assert (=> b!4047704 (= e!2511485 ((as const (Array Rule!13668 Bool)) false))))

(declare-fun b!4047705 () Bool)

(assert (=> b!4047705 (= e!2511485 ((_ map or) (store ((as const (Array Rule!13668 Bool)) false) (h!48703 rules!2999) true) (content!6587 (t!335504 rules!2999))))))

(assert (= (and d!1201762 c!699295) b!4047704))

(assert (= (and d!1201762 (not c!699295)) b!4047705))

(declare-fun m!4647255 () Bool)

(assert (=> b!4047705 m!4647255))

(assert (=> b!4047705 m!4646085))

(assert (=> d!1200914 d!1201762))

(declare-fun d!1201764 () Bool)

(declare-fun lt!1442077 () Int)

(assert (=> d!1201764 (>= lt!1442077 0)))

(declare-fun e!2511486 () Int)

(assert (=> d!1201764 (= lt!1442077 e!2511486)))

(declare-fun c!699296 () Bool)

(assert (=> d!1201764 (= c!699296 ((_ is Nil!43281) (t!335502 (originalCharacters!7534 token!484))))))

(assert (=> d!1201764 (= (size!32358 (t!335502 (originalCharacters!7534 token!484))) lt!1442077)))

(declare-fun b!4047706 () Bool)

(assert (=> b!4047706 (= e!2511486 0)))

(declare-fun b!4047707 () Bool)

(assert (=> b!4047707 (= e!2511486 (+ 1 (size!32358 (t!335502 (t!335502 (originalCharacters!7534 token!484))))))))

(assert (= (and d!1201764 c!699296) b!4047706))

(assert (= (and d!1201764 (not c!699296)) b!4047707))

(declare-fun m!4647257 () Bool)

(assert (=> b!4047707 m!4647257))

(assert (=> b!4046454 d!1201764))

(declare-fun d!1201766 () Bool)

(assert (=> d!1201766 (= (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))) ((_ is Nil!43281) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(assert (=> b!4046415 d!1201766))

(declare-fun d!1201768 () Bool)

(assert (=> d!1201768 (= (seqFromList!5151 (_1!24312 lt!1441551)) (fromListB!2347 (_1!24312 lt!1441551)))))

(declare-fun bs!591334 () Bool)

(assert (= bs!591334 d!1201768))

(declare-fun m!4647259 () Bool)

(assert (=> bs!591334 m!4647259))

(assert (=> b!4046415 d!1201768))

(declare-fun d!1201770 () Bool)

(declare-fun lt!1442080 () Int)

(assert (=> d!1201770 (= lt!1442080 (size!32358 (list!16120 (seqFromList!5151 (_1!24312 lt!1441551)))))))

(declare-fun size!32362 (Conc!13145) Int)

(assert (=> d!1201770 (= lt!1442080 (size!32362 (c!698890 (seqFromList!5151 (_1!24312 lt!1441551)))))))

(assert (=> d!1201770 (= (size!32359 (seqFromList!5151 (_1!24312 lt!1441551))) lt!1442080)))

(declare-fun bs!591335 () Bool)

(assert (= bs!591335 d!1201770))

(assert (=> bs!591335 m!4645345))

(declare-fun m!4647261 () Bool)

(assert (=> bs!591335 m!4647261))

(assert (=> bs!591335 m!4647261))

(declare-fun m!4647263 () Bool)

(assert (=> bs!591335 m!4647263))

(declare-fun m!4647265 () Bool)

(assert (=> bs!591335 m!4647265))

(assert (=> b!4046415 d!1201770))

(declare-fun d!1201772 () Bool)

(declare-fun e!2511489 () Bool)

(assert (=> d!1201772 e!2511489))

(declare-fun res!1649085 () Bool)

(assert (=> d!1201772 (=> res!1649085 e!2511489)))

(assert (=> d!1201772 (= res!1649085 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(declare-fun lt!1442083 () Unit!62527)

(declare-fun choose!24536 (Regex!11839 List!43405) Unit!62527)

(assert (=> d!1201772 (= lt!1442083 (choose!24536 (regex!6934 (rule!10010 token!484)) lt!1441304))))

(assert (=> d!1201772 (validRegex!5354 (regex!6934 (rule!10010 token!484)))))

(assert (=> d!1201772 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1363 (regex!6934 (rule!10010 token!484)) lt!1441304) lt!1442083)))

(declare-fun b!4047710 () Bool)

(assert (=> b!4047710 (= e!2511489 (matchR!5792 (regex!6934 (rule!10010 token!484)) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(assert (= (and d!1201772 (not res!1649085)) b!4047710))

(assert (=> d!1201772 m!4645119))

(assert (=> d!1201772 m!4645323))

(assert (=> d!1201772 m!4645325))

(assert (=> d!1201772 m!4645609))

(assert (=> d!1201772 m!4645323))

(assert (=> d!1201772 m!4645119))

(declare-fun m!4647267 () Bool)

(assert (=> d!1201772 m!4647267))

(assert (=> d!1201772 m!4645355))

(assert (=> b!4047710 m!4645119))

(assert (=> b!4047710 m!4645323))

(assert (=> b!4047710 m!4645119))

(assert (=> b!4047710 m!4645323))

(assert (=> b!4047710 m!4645325))

(assert (=> b!4047710 m!4645327))

(assert (=> b!4046415 d!1201772))

(declare-fun b!4047715 () Bool)

(declare-fun e!2511492 () Bool)

(assert (=> b!4047715 (= e!2511492 true)))

(declare-fun d!1201774 () Bool)

(assert (=> d!1201774 e!2511492))

(assert (= d!1201774 b!4047715))

(declare-fun order!22683 () Int)

(declare-fun lambda!127485 () Int)

(declare-fun dynLambda!18389 (Int Int) Int)

(assert (=> b!4047715 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (rule!10010 token!484)))) (dynLambda!18389 order!22683 lambda!127485))))

(declare-fun order!22685 () Int)

(declare-fun dynLambda!18390 (Int Int) Int)

(assert (=> b!4047715 (< (dynLambda!18390 order!22685 (toChars!9341 (transformation!6934 (rule!10010 token!484)))) (dynLambda!18389 order!22683 lambda!127485))))

(assert (=> d!1201774 (= (list!16120 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 (_1!24312 lt!1441551))))) (list!16120 (seqFromList!5151 (_1!24312 lt!1441551))))))

(declare-fun lt!1442086 () Unit!62527)

(declare-fun ForallOf!829 (Int BalanceConc!25884) Unit!62527)

(assert (=> d!1201774 (= lt!1442086 (ForallOf!829 lambda!127485 (seqFromList!5151 (_1!24312 lt!1441551))))))

(assert (=> d!1201774 (= (lemmaSemiInverse!1912 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 (_1!24312 lt!1441551))) lt!1442086)))

(declare-fun b_lambda!118269 () Bool)

(assert (=> (not b_lambda!118269) (not d!1201774)))

(declare-fun t!335673 () Bool)

(declare-fun tb!243493 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335673) tb!243493))

(declare-fun b!4047716 () Bool)

(declare-fun e!2511493 () Bool)

(declare-fun tp!1227951 () Bool)

(assert (=> b!4047716 (= e!2511493 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 (_1!24312 lt!1441551)))))) tp!1227951))))

(declare-fun result!295060 () Bool)

(assert (=> tb!243493 (= result!295060 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 (_1!24312 lt!1441551))))) e!2511493))))

(assert (= tb!243493 b!4047716))

(declare-fun m!4647269 () Bool)

(assert (=> b!4047716 m!4647269))

(declare-fun m!4647271 () Bool)

(assert (=> tb!243493 m!4647271))

(assert (=> d!1201774 t!335673))

(declare-fun b_and!311263 () Bool)

(assert (= b_and!311193 (and (=> t!335673 result!295060) b_and!311263)))

(declare-fun tb!243495 () Bool)

(declare-fun t!335675 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335675) tb!243495))

(declare-fun result!295062 () Bool)

(assert (= result!295062 result!295060))

(assert (=> d!1201774 t!335675))

(declare-fun b_and!311265 () Bool)

(assert (= b_and!311195 (and (=> t!335675 result!295062) b_and!311265)))

(declare-fun t!335677 () Bool)

(declare-fun tb!243497 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335677) tb!243497))

(declare-fun result!295064 () Bool)

(assert (= result!295064 result!295060))

(assert (=> d!1201774 t!335677))

(declare-fun b_and!311267 () Bool)

(assert (= b_and!311197 (and (=> t!335677 result!295064) b_and!311267)))

(declare-fun b_lambda!118271 () Bool)

(assert (=> (not b_lambda!118271) (not d!1201774)))

(declare-fun t!335679 () Bool)

(declare-fun tb!243499 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335679) tb!243499))

(declare-fun result!295066 () Bool)

(assert (=> tb!243499 (= result!295066 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 (_1!24312 lt!1441551)))))))

(declare-fun m!4647273 () Bool)

(assert (=> tb!243499 m!4647273))

(assert (=> d!1201774 t!335679))

(declare-fun b_and!311269 () Bool)

(assert (= b_and!311257 (and (=> t!335679 result!295066) b_and!311269)))

(declare-fun t!335681 () Bool)

(declare-fun tb!243501 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335681) tb!243501))

(declare-fun result!295068 () Bool)

(assert (= result!295068 result!295066))

(assert (=> d!1201774 t!335681))

(declare-fun b_and!311271 () Bool)

(assert (= b_and!311259 (and (=> t!335681 result!295068) b_and!311271)))

(declare-fun t!335683 () Bool)

(declare-fun tb!243503 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335683) tb!243503))

(declare-fun result!295070 () Bool)

(assert (= result!295070 result!295066))

(assert (=> d!1201774 t!335683))

(declare-fun b_and!311273 () Bool)

(assert (= b_and!311261 (and (=> t!335683 result!295070) b_and!311273)))

(assert (=> d!1201774 m!4645345))

(assert (=> d!1201774 m!4647261))

(declare-fun m!4647275 () Bool)

(assert (=> d!1201774 m!4647275))

(declare-fun m!4647277 () Bool)

(assert (=> d!1201774 m!4647277))

(assert (=> d!1201774 m!4645345))

(declare-fun m!4647279 () Bool)

(assert (=> d!1201774 m!4647279))

(declare-fun m!4647281 () Bool)

(assert (=> d!1201774 m!4647281))

(assert (=> d!1201774 m!4647275))

(assert (=> d!1201774 m!4645345))

(assert (=> d!1201774 m!4647281))

(assert (=> b!4046415 d!1201774))

(declare-fun d!1201776 () Bool)

(declare-fun lt!1442087 () Int)

(assert (=> d!1201776 (>= lt!1442087 0)))

(declare-fun e!2511495 () Int)

(assert (=> d!1201776 (= lt!1442087 e!2511495)))

(declare-fun c!699298 () Bool)

(assert (=> d!1201776 (= c!699298 ((_ is Nil!43281) lt!1441304))))

(assert (=> d!1201776 (= (size!32358 lt!1441304) lt!1442087)))

(declare-fun b!4047717 () Bool)

(assert (=> b!4047717 (= e!2511495 0)))

(declare-fun b!4047718 () Bool)

(assert (=> b!4047718 (= e!2511495 (+ 1 (size!32358 (t!335502 lt!1441304))))))

(assert (= (and d!1201776 c!699298) b!4047717))

(assert (= (and d!1201776 (not c!699298)) b!4047718))

(declare-fun m!4647283 () Bool)

(assert (=> b!4047718 m!4647283))

(assert (=> b!4046415 d!1201776))

(declare-fun b!4047719 () Bool)

(declare-fun c!699299 () Bool)

(declare-fun call!287788 () Bool)

(assert (=> b!4047719 (= c!699299 call!287788)))

(declare-fun lt!1442091 () Unit!62527)

(declare-fun lt!1442112 () Unit!62527)

(assert (=> b!4047719 (= lt!1442091 lt!1442112)))

(assert (=> b!4047719 (= lt!1441304 Nil!43281)))

(declare-fun call!287789 () Unit!62527)

(assert (=> b!4047719 (= lt!1442112 call!287789)))

(declare-fun lt!1442090 () Unit!62527)

(declare-fun lt!1442096 () Unit!62527)

(assert (=> b!4047719 (= lt!1442090 lt!1442096)))

(declare-fun call!287791 () Bool)

(assert (=> b!4047719 call!287791))

(declare-fun call!287786 () Unit!62527)

(assert (=> b!4047719 (= lt!1442096 call!287786)))

(declare-fun e!2511496 () tuple2!42356)

(declare-fun e!2511503 () tuple2!42356)

(assert (=> b!4047719 (= e!2511496 e!2511503)))

(declare-fun call!287787 () List!43405)

(declare-fun call!287790 () Regex!11839)

(declare-fun call!287784 () tuple2!42356)

(declare-fun bm!287779 () Bool)

(declare-fun lt!1442094 () List!43405)

(assert (=> bm!287779 (= call!287784 (findLongestMatchInner!1390 call!287790 lt!1442094 (+ (size!32358 Nil!43281) 1) call!287787 lt!1441304 (size!32358 lt!1441304)))))

(declare-fun b!4047721 () Bool)

(assert (=> b!4047721 (= e!2511503 (tuple2!42357 Nil!43281 lt!1441304))))

(declare-fun b!4047722 () Bool)

(declare-fun e!2511501 () tuple2!42356)

(assert (=> b!4047722 (= e!2511501 (tuple2!42357 Nil!43281 lt!1441304))))

(declare-fun bm!287780 () Bool)

(assert (=> bm!287780 (= call!287787 (tail!6289 lt!1441304))))

(declare-fun b!4047723 () Bool)

(declare-fun e!2511498 () Unit!62527)

(declare-fun Unit!62546 () Unit!62527)

(assert (=> b!4047723 (= e!2511498 Unit!62546)))

(declare-fun bm!287781 () Bool)

(declare-fun call!287785 () C!23864)

(assert (=> bm!287781 (= call!287790 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) call!287785))))

(declare-fun b!4047724 () Bool)

(declare-fun Unit!62547 () Unit!62527)

(assert (=> b!4047724 (= e!2511498 Unit!62547)))

(declare-fun lt!1442105 () Unit!62527)

(assert (=> b!4047724 (= lt!1442105 call!287786)))

(assert (=> b!4047724 call!287791))

(declare-fun lt!1442089 () Unit!62527)

(assert (=> b!4047724 (= lt!1442089 lt!1442105)))

(declare-fun lt!1442109 () Unit!62527)

(assert (=> b!4047724 (= lt!1442109 call!287789)))

(assert (=> b!4047724 (= lt!1441304 Nil!43281)))

(declare-fun lt!1442111 () Unit!62527)

(assert (=> b!4047724 (= lt!1442111 lt!1442109)))

(assert (=> b!4047724 false))

(declare-fun b!4047725 () Bool)

(declare-fun e!2511502 () tuple2!42356)

(declare-fun lt!1442093 () tuple2!42356)

(assert (=> b!4047725 (= e!2511502 lt!1442093)))

(declare-fun b!4047720 () Bool)

(declare-fun e!2511500 () Bool)

(declare-fun e!2511497 () Bool)

(assert (=> b!4047720 (= e!2511500 e!2511497)))

(declare-fun res!1649087 () Bool)

(assert (=> b!4047720 (=> res!1649087 e!2511497)))

(declare-fun lt!1442095 () tuple2!42356)

(assert (=> b!4047720 (= res!1649087 (isEmpty!25831 (_1!24312 lt!1442095)))))

(declare-fun d!1201778 () Bool)

(assert (=> d!1201778 e!2511500))

(declare-fun res!1649086 () Bool)

(assert (=> d!1201778 (=> (not res!1649086) (not e!2511500))))

(assert (=> d!1201778 (= res!1649086 (= (++!11336 (_1!24312 lt!1442095) (_2!24312 lt!1442095)) lt!1441304))))

(assert (=> d!1201778 (= lt!1442095 e!2511501)))

(declare-fun c!699300 () Bool)

(assert (=> d!1201778 (= c!699300 (lostCause!1015 (regex!6934 (rule!10010 token!484))))))

(declare-fun lt!1442113 () Unit!62527)

(declare-fun Unit!62548 () Unit!62527)

(assert (=> d!1201778 (= lt!1442113 Unit!62548)))

(assert (=> d!1201778 (= (getSuffix!2438 lt!1441304 Nil!43281) lt!1441304)))

(declare-fun lt!1442099 () Unit!62527)

(declare-fun lt!1442106 () Unit!62527)

(assert (=> d!1201778 (= lt!1442099 lt!1442106)))

(declare-fun lt!1442107 () List!43405)

(assert (=> d!1201778 (= lt!1441304 lt!1442107)))

(assert (=> d!1201778 (= lt!1442106 (lemmaSamePrefixThenSameSuffix!2182 Nil!43281 lt!1441304 Nil!43281 lt!1442107 lt!1441304))))

(assert (=> d!1201778 (= lt!1442107 (getSuffix!2438 lt!1441304 Nil!43281))))

(declare-fun lt!1442098 () Unit!62527)

(declare-fun lt!1442097 () Unit!62527)

(assert (=> d!1201778 (= lt!1442098 lt!1442097)))

(assert (=> d!1201778 (isPrefix!4021 Nil!43281 (++!11336 Nil!43281 lt!1441304))))

(assert (=> d!1201778 (= lt!1442097 (lemmaConcatTwoListThenFirstIsPrefix!2856 Nil!43281 lt!1441304))))

(assert (=> d!1201778 (validRegex!5354 (regex!6934 (rule!10010 token!484)))))

(assert (=> d!1201778 (= (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)) lt!1442095)))

(declare-fun b!4047726 () Bool)

(assert (=> b!4047726 (= e!2511503 (tuple2!42357 Nil!43281 Nil!43281))))

(declare-fun b!4047727 () Bool)

(assert (=> b!4047727 (= e!2511502 (tuple2!42357 Nil!43281 lt!1441304))))

(declare-fun bm!287782 () Bool)

(assert (=> bm!287782 (= call!287785 (head!8557 lt!1441304))))

(declare-fun b!4047728 () Bool)

(assert (=> b!4047728 (= e!2511501 e!2511496)))

(declare-fun c!699304 () Bool)

(assert (=> b!4047728 (= c!699304 (= (size!32358 Nil!43281) (size!32358 lt!1441304)))))

(declare-fun bm!287783 () Bool)

(assert (=> bm!287783 (= call!287788 (nullable!4154 (regex!6934 (rule!10010 token!484))))))

(declare-fun b!4047729 () Bool)

(declare-fun c!699303 () Bool)

(assert (=> b!4047729 (= c!699303 call!287788)))

(declare-fun lt!1442110 () Unit!62527)

(declare-fun lt!1442115 () Unit!62527)

(assert (=> b!4047729 (= lt!1442110 lt!1442115)))

(declare-fun lt!1442104 () C!23864)

(declare-fun lt!1442102 () List!43405)

(assert (=> b!4047729 (= (++!11336 (++!11336 Nil!43281 (Cons!43281 lt!1442104 Nil!43281)) lt!1442102) lt!1441304)))

(assert (=> b!4047729 (= lt!1442115 (lemmaMoveElementToOtherListKeepsConcatEq!1259 Nil!43281 lt!1442104 lt!1442102 lt!1441304))))

(assert (=> b!4047729 (= lt!1442102 (tail!6289 lt!1441304))))

(assert (=> b!4047729 (= lt!1442104 (head!8557 lt!1441304))))

(declare-fun lt!1442103 () Unit!62527)

(declare-fun lt!1442100 () Unit!62527)

(assert (=> b!4047729 (= lt!1442103 lt!1442100)))

(assert (=> b!4047729 (isPrefix!4021 (++!11336 Nil!43281 (Cons!43281 (head!8557 (getSuffix!2438 lt!1441304 Nil!43281)) Nil!43281)) lt!1441304)))

(assert (=> b!4047729 (= lt!1442100 (lemmaAddHeadSuffixToPrefixStillPrefix!641 Nil!43281 lt!1441304))))

(declare-fun lt!1442092 () Unit!62527)

(declare-fun lt!1442114 () Unit!62527)

(assert (=> b!4047729 (= lt!1442092 lt!1442114)))

(assert (=> b!4047729 (= lt!1442114 (lemmaAddHeadSuffixToPrefixStillPrefix!641 Nil!43281 lt!1441304))))

(assert (=> b!4047729 (= lt!1442094 (++!11336 Nil!43281 (Cons!43281 (head!8557 lt!1441304) Nil!43281)))))

(declare-fun lt!1442101 () Unit!62527)

(assert (=> b!4047729 (= lt!1442101 e!2511498)))

(declare-fun c!699302 () Bool)

(assert (=> b!4047729 (= c!699302 (= (size!32358 Nil!43281) (size!32358 lt!1441304)))))

(declare-fun lt!1442108 () Unit!62527)

(declare-fun lt!1442088 () Unit!62527)

(assert (=> b!4047729 (= lt!1442108 lt!1442088)))

(assert (=> b!4047729 (<= (size!32358 Nil!43281) (size!32358 lt!1441304))))

(assert (=> b!4047729 (= lt!1442088 (lemmaIsPrefixThenSmallerEqSize!449 Nil!43281 lt!1441304))))

(declare-fun e!2511499 () tuple2!42356)

(assert (=> b!4047729 (= e!2511496 e!2511499)))

(declare-fun bm!287784 () Bool)

(assert (=> bm!287784 (= call!287786 (lemmaIsPrefixRefl!2588 lt!1441304 lt!1441304))))

(declare-fun b!4047730 () Bool)

(assert (=> b!4047730 (= e!2511499 e!2511502)))

(assert (=> b!4047730 (= lt!1442093 call!287784)))

(declare-fun c!699301 () Bool)

(assert (=> b!4047730 (= c!699301 (isEmpty!25831 (_1!24312 lt!1442093)))))

(declare-fun bm!287785 () Bool)

(assert (=> bm!287785 (= call!287789 (lemmaIsPrefixSameLengthThenSameList!925 lt!1441304 Nil!43281 lt!1441304))))

(declare-fun b!4047731 () Bool)

(assert (=> b!4047731 (= e!2511499 call!287784)))

(declare-fun bm!287786 () Bool)

(assert (=> bm!287786 (= call!287791 (isPrefix!4021 lt!1441304 lt!1441304))))

(declare-fun b!4047732 () Bool)

(assert (=> b!4047732 (= e!2511497 (>= (size!32358 (_1!24312 lt!1442095)) (size!32358 Nil!43281)))))

(assert (= (and d!1201778 c!699300) b!4047722))

(assert (= (and d!1201778 (not c!699300)) b!4047728))

(assert (= (and b!4047728 c!699304) b!4047719))

(assert (= (and b!4047728 (not c!699304)) b!4047729))

(assert (= (and b!4047719 c!699299) b!4047726))

(assert (= (and b!4047719 (not c!699299)) b!4047721))

(assert (= (and b!4047729 c!699302) b!4047724))

(assert (= (and b!4047729 (not c!699302)) b!4047723))

(assert (= (and b!4047729 c!699303) b!4047730))

(assert (= (and b!4047729 (not c!699303)) b!4047731))

(assert (= (and b!4047730 c!699301) b!4047727))

(assert (= (and b!4047730 (not c!699301)) b!4047725))

(assert (= (or b!4047730 b!4047731) bm!287782))

(assert (= (or b!4047730 b!4047731) bm!287780))

(assert (= (or b!4047730 b!4047731) bm!287781))

(assert (= (or b!4047730 b!4047731) bm!287779))

(assert (= (or b!4047719 b!4047724) bm!287786))

(assert (= (or b!4047719 b!4047729) bm!287783))

(assert (= (or b!4047719 b!4047724) bm!287785))

(assert (= (or b!4047719 b!4047724) bm!287784))

(assert (= (and d!1201778 res!1649086) b!4047720))

(assert (= (and b!4047720 (not res!1649087)) b!4047732))

(assert (=> bm!287779 m!4645323))

(declare-fun m!4647285 () Bool)

(assert (=> bm!287779 m!4647285))

(declare-fun m!4647287 () Bool)

(assert (=> bm!287785 m!4647287))

(assert (=> bm!287783 m!4645605))

(assert (=> bm!287782 m!4645385))

(assert (=> bm!287780 m!4645379))

(declare-fun m!4647289 () Bool)

(assert (=> b!4047730 m!4647289))

(assert (=> d!1201778 m!4645609))

(declare-fun m!4647291 () Bool)

(assert (=> d!1201778 m!4647291))

(declare-fun m!4647293 () Bool)

(assert (=> d!1201778 m!4647293))

(declare-fun m!4647295 () Bool)

(assert (=> d!1201778 m!4647295))

(declare-fun m!4647297 () Bool)

(assert (=> d!1201778 m!4647297))

(declare-fun m!4647299 () Bool)

(assert (=> d!1201778 m!4647299))

(declare-fun m!4647301 () Bool)

(assert (=> d!1201778 m!4647301))

(declare-fun m!4647303 () Bool)

(assert (=> d!1201778 m!4647303))

(assert (=> d!1201778 m!4647297))

(assert (=> bm!287786 m!4644427))

(declare-fun m!4647305 () Bool)

(assert (=> b!4047720 m!4647305))

(declare-fun m!4647307 () Bool)

(assert (=> b!4047729 m!4647307))

(declare-fun m!4647309 () Bool)

(assert (=> b!4047729 m!4647309))

(assert (=> b!4047729 m!4645379))

(assert (=> b!4047729 m!4645323))

(assert (=> b!4047729 m!4647303))

(declare-fun m!4647311 () Bool)

(assert (=> b!4047729 m!4647311))

(assert (=> b!4047729 m!4645119))

(declare-fun m!4647313 () Bool)

(assert (=> b!4047729 m!4647313))

(assert (=> b!4047729 m!4645385))

(declare-fun m!4647315 () Bool)

(assert (=> b!4047729 m!4647315))

(declare-fun m!4647317 () Bool)

(assert (=> b!4047729 m!4647317))

(assert (=> b!4047729 m!4647307))

(assert (=> b!4047729 m!4647315))

(declare-fun m!4647319 () Bool)

(assert (=> b!4047729 m!4647319))

(declare-fun m!4647321 () Bool)

(assert (=> b!4047729 m!4647321))

(declare-fun m!4647323 () Bool)

(assert (=> b!4047729 m!4647323))

(assert (=> b!4047729 m!4647303))

(assert (=> bm!287784 m!4644429))

(declare-fun m!4647325 () Bool)

(assert (=> bm!287781 m!4647325))

(declare-fun m!4647327 () Bool)

(assert (=> b!4047732 m!4647327))

(assert (=> b!4047732 m!4645119))

(assert (=> b!4046415 d!1201778))

(assert (=> b!4046415 d!1201234))

(declare-fun d!1201780 () Bool)

(assert (=> d!1201780 (= (apply!10123 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 (_1!24312 lt!1441551))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 (_1!24312 lt!1441551))))))

(declare-fun b_lambda!118273 () Bool)

(assert (=> (not b_lambda!118273) (not d!1201780)))

(assert (=> d!1201780 t!335679))

(declare-fun b_and!311275 () Bool)

(assert (= b_and!311269 (and (=> t!335679 result!295066) b_and!311275)))

(assert (=> d!1201780 t!335681))

(declare-fun b_and!311277 () Bool)

(assert (= b_and!311271 (and (=> t!335681 result!295068) b_and!311277)))

(assert (=> d!1201780 t!335683))

(declare-fun b_and!311279 () Bool)

(assert (= b_and!311273 (and (=> t!335683 result!295070) b_and!311279)))

(assert (=> d!1201780 m!4645345))

(assert (=> d!1201780 m!4647281))

(assert (=> b!4046415 d!1201780))

(declare-fun d!1201782 () Bool)

(declare-fun lt!1442116 () Int)

(assert (=> d!1201782 (>= lt!1442116 0)))

(declare-fun e!2511504 () Int)

(assert (=> d!1201782 (= lt!1442116 e!2511504)))

(declare-fun c!699305 () Bool)

(assert (=> d!1201782 (= c!699305 ((_ is Nil!43281) (t!335502 lt!1441314)))))

(assert (=> d!1201782 (= (size!32358 (t!335502 lt!1441314)) lt!1442116)))

(declare-fun b!4047733 () Bool)

(assert (=> b!4047733 (= e!2511504 0)))

(declare-fun b!4047734 () Bool)

(assert (=> b!4047734 (= e!2511504 (+ 1 (size!32358 (t!335502 (t!335502 lt!1441314)))))))

(assert (= (and d!1201782 c!699305) b!4047733))

(assert (= (and d!1201782 (not c!699305)) b!4047734))

(declare-fun m!4647329 () Bool)

(assert (=> b!4047734 m!4647329))

(assert (=> b!4046343 d!1201782))

(assert (=> b!4046545 d!1200954))

(declare-fun d!1201784 () Bool)

(declare-fun lt!1442117 () Int)

(assert (=> d!1201784 (>= lt!1442117 0)))

(declare-fun e!2511505 () Int)

(assert (=> d!1201784 (= lt!1442117 e!2511505)))

(declare-fun c!699306 () Bool)

(assert (=> d!1201784 (= c!699306 ((_ is Nil!43281) (_2!24311 (get!14199 lt!1441500))))))

(assert (=> d!1201784 (= (size!32358 (_2!24311 (get!14199 lt!1441500))) lt!1442117)))

(declare-fun b!4047735 () Bool)

(assert (=> b!4047735 (= e!2511505 0)))

(declare-fun b!4047736 () Bool)

(assert (=> b!4047736 (= e!2511505 (+ 1 (size!32358 (t!335502 (_2!24311 (get!14199 lt!1441500))))))))

(assert (= (and d!1201784 c!699306) b!4047735))

(assert (= (and d!1201784 (not c!699306)) b!4047736))

(declare-fun m!4647331 () Bool)

(assert (=> b!4047736 m!4647331))

(assert (=> b!4046282 d!1201784))

(assert (=> b!4046282 d!1201716))

(assert (=> b!4046282 d!1201236))

(declare-fun d!1201786 () Bool)

(declare-fun c!699307 () Bool)

(assert (=> d!1201786 (= c!699307 ((_ is Nil!43281) lt!1441584))))

(declare-fun e!2511506 () (InoxSet C!23864))

(assert (=> d!1201786 (= (content!6586 lt!1441584) e!2511506)))

(declare-fun b!4047737 () Bool)

(assert (=> b!4047737 (= e!2511506 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047738 () Bool)

(assert (=> b!4047738 (= e!2511506 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441584) true) (content!6586 (t!335502 lt!1441584))))))

(assert (= (and d!1201786 c!699307) b!4047737))

(assert (= (and d!1201786 (not c!699307)) b!4047738))

(declare-fun m!4647333 () Bool)

(assert (=> b!4047738 m!4647333))

(declare-fun m!4647335 () Bool)

(assert (=> b!4047738 m!4647335))

(assert (=> d!1200982 d!1201786))

(declare-fun d!1201788 () Bool)

(declare-fun c!699308 () Bool)

(assert (=> d!1201788 (= c!699308 ((_ is Nil!43281) lt!1441314))))

(declare-fun e!2511507 () (InoxSet C!23864))

(assert (=> d!1201788 (= (content!6586 lt!1441314) e!2511507)))

(declare-fun b!4047739 () Bool)

(assert (=> b!4047739 (= e!2511507 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047740 () Bool)

(assert (=> b!4047740 (= e!2511507 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441314) true) (content!6586 (t!335502 lt!1441314))))))

(assert (= (and d!1201788 c!699308) b!4047739))

(assert (= (and d!1201788 (not c!699308)) b!4047740))

(declare-fun m!4647337 () Bool)

(assert (=> b!4047740 m!4647337))

(declare-fun m!4647339 () Bool)

(assert (=> b!4047740 m!4647339))

(assert (=> d!1200982 d!1201788))

(declare-fun d!1201790 () Bool)

(declare-fun c!699309 () Bool)

(assert (=> d!1201790 (= c!699309 ((_ is Nil!43281) lt!1441283))))

(declare-fun e!2511508 () (InoxSet C!23864))

(assert (=> d!1201790 (= (content!6586 lt!1441283) e!2511508)))

(declare-fun b!4047741 () Bool)

(assert (=> b!4047741 (= e!2511508 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047742 () Bool)

(assert (=> b!4047742 (= e!2511508 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441283) true) (content!6586 (t!335502 lt!1441283))))))

(assert (= (and d!1201790 c!699309) b!4047741))

(assert (= (and d!1201790 (not c!699309)) b!4047742))

(declare-fun m!4647341 () Bool)

(assert (=> b!4047742 m!4647341))

(declare-fun m!4647343 () Bool)

(assert (=> b!4047742 m!4647343))

(assert (=> d!1200982 d!1201790))

(declare-fun d!1201792 () Bool)

(declare-fun charsToBigInt!0 (List!43406 Int) Int)

(assert (=> d!1201792 (= (inv!15 (value!218253 token!484)) (= (charsToBigInt!0 (text!50597 (value!218253 token!484)) 0) (value!218248 (value!218253 token!484))))))

(declare-fun bs!591336 () Bool)

(assert (= bs!591336 d!1201792))

(declare-fun m!4647345 () Bool)

(assert (=> bs!591336 m!4647345))

(assert (=> b!4046523 d!1201792))

(declare-fun d!1201794 () Bool)

(assert (=> d!1201794 (= (isEmpty!25831 lt!1441296) ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201018 d!1201794))

(declare-fun bm!287793 () Bool)

(declare-fun call!287799 () Bool)

(declare-fun call!287798 () Bool)

(assert (=> bm!287793 (= call!287799 call!287798)))

(declare-fun b!4047761 () Bool)

(declare-fun e!2511526 () Bool)

(declare-fun e!2511528 () Bool)

(assert (=> b!4047761 (= e!2511526 e!2511528)))

(declare-fun c!699315 () Bool)

(assert (=> b!4047761 (= c!699315 ((_ is Star!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun b!4047762 () Bool)

(declare-fun e!2511524 () Bool)

(declare-fun call!287800 () Bool)

(assert (=> b!4047762 (= e!2511524 call!287800)))

(declare-fun b!4047763 () Bool)

(declare-fun e!2511529 () Bool)

(assert (=> b!4047763 (= e!2511529 call!287798)))

(declare-fun b!4047764 () Bool)

(declare-fun res!1649102 () Bool)

(declare-fun e!2511523 () Bool)

(assert (=> b!4047764 (=> res!1649102 e!2511523)))

(assert (=> b!4047764 (= res!1649102 (not ((_ is Concat!19004) (regex!6934 (rule!10010 token!484)))))))

(declare-fun e!2511527 () Bool)

(assert (=> b!4047764 (= e!2511527 e!2511523)))

(declare-fun b!4047765 () Bool)

(declare-fun e!2511525 () Bool)

(assert (=> b!4047765 (= e!2511525 call!287800)))

(declare-fun b!4047766 () Bool)

(assert (=> b!4047766 (= e!2511528 e!2511529)))

(declare-fun res!1649100 () Bool)

(assert (=> b!4047766 (= res!1649100 (not (nullable!4154 (reg!12168 (regex!6934 (rule!10010 token!484))))))))

(assert (=> b!4047766 (=> (not res!1649100) (not e!2511529))))

(declare-fun bm!287794 () Bool)

(declare-fun c!699314 () Bool)

(assert (=> bm!287794 (= call!287798 (validRegex!5354 (ite c!699315 (reg!12168 (regex!6934 (rule!10010 token!484))) (ite c!699314 (regOne!24191 (regex!6934 (rule!10010 token!484))) (regOne!24190 (regex!6934 (rule!10010 token!484)))))))))

(declare-fun b!4047767 () Bool)

(assert (=> b!4047767 (= e!2511523 e!2511524)))

(declare-fun res!1649098 () Bool)

(assert (=> b!4047767 (=> (not res!1649098) (not e!2511524))))

(assert (=> b!4047767 (= res!1649098 call!287799)))

(declare-fun b!4047768 () Bool)

(assert (=> b!4047768 (= e!2511528 e!2511527)))

(assert (=> b!4047768 (= c!699314 ((_ is Union!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun bm!287795 () Bool)

(assert (=> bm!287795 (= call!287800 (validRegex!5354 (ite c!699314 (regTwo!24191 (regex!6934 (rule!10010 token!484))) (regTwo!24190 (regex!6934 (rule!10010 token!484))))))))

(declare-fun d!1201796 () Bool)

(declare-fun res!1649099 () Bool)

(assert (=> d!1201796 (=> res!1649099 e!2511526)))

(assert (=> d!1201796 (= res!1649099 ((_ is ElementMatch!11839) (regex!6934 (rule!10010 token!484))))))

(assert (=> d!1201796 (= (validRegex!5354 (regex!6934 (rule!10010 token!484))) e!2511526)))

(declare-fun b!4047769 () Bool)

(declare-fun res!1649101 () Bool)

(assert (=> b!4047769 (=> (not res!1649101) (not e!2511525))))

(assert (=> b!4047769 (= res!1649101 call!287799)))

(assert (=> b!4047769 (= e!2511527 e!2511525)))

(assert (= (and d!1201796 (not res!1649099)) b!4047761))

(assert (= (and b!4047761 c!699315) b!4047766))

(assert (= (and b!4047761 (not c!699315)) b!4047768))

(assert (= (and b!4047766 res!1649100) b!4047763))

(assert (= (and b!4047768 c!699314) b!4047769))

(assert (= (and b!4047768 (not c!699314)) b!4047764))

(assert (= (and b!4047769 res!1649101) b!4047765))

(assert (= (and b!4047764 (not res!1649102)) b!4047767))

(assert (= (and b!4047767 res!1649098) b!4047762))

(assert (= (or b!4047765 b!4047762) bm!287795))

(assert (= (or b!4047769 b!4047767) bm!287793))

(assert (= (or b!4047763 bm!287793) bm!287794))

(declare-fun m!4647347 () Bool)

(assert (=> b!4047766 m!4647347))

(declare-fun m!4647349 () Bool)

(assert (=> bm!287794 m!4647349))

(declare-fun m!4647351 () Bool)

(assert (=> bm!287795 m!4647351))

(assert (=> d!1201018 d!1201796))

(declare-fun d!1201798 () Bool)

(declare-fun lt!1442118 () Int)

(assert (=> d!1201798 (>= lt!1442118 0)))

(declare-fun e!2511530 () Int)

(assert (=> d!1201798 (= lt!1442118 e!2511530)))

(declare-fun c!699316 () Bool)

(assert (=> d!1201798 (= c!699316 ((_ is Nil!43281) (t!335502 suffix!1299)))))

(assert (=> d!1201798 (= (size!32358 (t!335502 suffix!1299)) lt!1442118)))

(declare-fun b!4047770 () Bool)

(assert (=> b!4047770 (= e!2511530 0)))

(declare-fun b!4047771 () Bool)

(assert (=> b!4047771 (= e!2511530 (+ 1 (size!32358 (t!335502 (t!335502 suffix!1299)))))))

(assert (= (and d!1201798 c!699316) b!4047770))

(assert (= (and d!1201798 (not c!699316)) b!4047771))

(declare-fun m!4647353 () Bool)

(assert (=> b!4047771 m!4647353))

(assert (=> b!4046397 d!1201798))

(declare-fun bs!591337 () Bool)

(declare-fun d!1201800 () Bool)

(assert (= bs!591337 (and d!1201800 d!1201774)))

(declare-fun lambda!127488 () Int)

(assert (=> bs!591337 (= (and (= (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) (= (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (= lambda!127488 lambda!127485))))

(assert (=> d!1201800 true))

(assert (=> d!1201800 (< (dynLambda!18390 order!22685 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (dynLambda!18389 order!22683 lambda!127488))))

(assert (=> d!1201800 true))

(assert (=> d!1201800 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (dynLambda!18389 order!22683 lambda!127488))))

(declare-fun Forall!1495 (Int) Bool)

(assert (=> d!1201800 (= (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (Forall!1495 lambda!127488))))

(declare-fun bs!591338 () Bool)

(assert (= bs!591338 d!1201800))

(declare-fun m!4647355 () Bool)

(assert (=> bs!591338 m!4647355))

(assert (=> d!1200890 d!1201800))

(declare-fun d!1201802 () Bool)

(declare-fun lt!1442119 () Int)

(assert (=> d!1201802 (>= lt!1442119 0)))

(declare-fun e!2511531 () Int)

(assert (=> d!1201802 (= lt!1442119 e!2511531)))

(declare-fun c!699317 () Bool)

(assert (=> d!1201802 (= c!699317 ((_ is Nil!43281) lt!1441535))))

(assert (=> d!1201802 (= (size!32358 lt!1441535) lt!1442119)))

(declare-fun b!4047776 () Bool)

(assert (=> b!4047776 (= e!2511531 0)))

(declare-fun b!4047777 () Bool)

(assert (=> b!4047777 (= e!2511531 (+ 1 (size!32358 (t!335502 lt!1441535))))))

(assert (= (and d!1201802 c!699317) b!4047776))

(assert (= (and d!1201802 (not c!699317)) b!4047777))

(declare-fun m!4647357 () Bool)

(assert (=> b!4047777 m!4647357))

(assert (=> b!4046394 d!1201802))

(declare-fun d!1201804 () Bool)

(declare-fun lt!1442120 () Int)

(assert (=> d!1201804 (>= lt!1442120 0)))

(declare-fun e!2511532 () Int)

(assert (=> d!1201804 (= lt!1442120 e!2511532)))

(declare-fun c!699318 () Bool)

(assert (=> d!1201804 (= c!699318 ((_ is Nil!43281) lt!1441324))))

(assert (=> d!1201804 (= (size!32358 lt!1441324) lt!1442120)))

(declare-fun b!4047778 () Bool)

(assert (=> b!4047778 (= e!2511532 0)))

(declare-fun b!4047779 () Bool)

(assert (=> b!4047779 (= e!2511532 (+ 1 (size!32358 (t!335502 lt!1441324))))))

(assert (= (and d!1201804 c!699318) b!4047778))

(assert (= (and d!1201804 (not c!699318)) b!4047779))

(declare-fun m!4647359 () Bool)

(assert (=> b!4047779 m!4647359))

(assert (=> b!4046394 d!1201804))

(assert (=> b!4046394 d!1200910))

(declare-fun d!1201806 () Bool)

(declare-fun c!699319 () Bool)

(assert (=> d!1201806 (= c!699319 ((_ is Nil!43281) lt!1441594))))

(declare-fun e!2511533 () (InoxSet C!23864))

(assert (=> d!1201806 (= (content!6586 lt!1441594) e!2511533)))

(declare-fun b!4047780 () Bool)

(assert (=> b!4047780 (= e!2511533 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047781 () Bool)

(assert (=> b!4047781 (= e!2511533 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441594) true) (content!6586 (t!335502 lt!1441594))))))

(assert (= (and d!1201806 c!699319) b!4047780))

(assert (= (and d!1201806 (not c!699319)) b!4047781))

(declare-fun m!4647361 () Bool)

(assert (=> b!4047781 m!4647361))

(declare-fun m!4647363 () Bool)

(assert (=> b!4047781 m!4647363))

(assert (=> d!1201006 d!1201806))

(assert (=> d!1201006 d!1201268))

(declare-fun d!1201808 () Bool)

(declare-fun c!699320 () Bool)

(assert (=> d!1201808 (= c!699320 ((_ is Nil!43281) lt!1441324))))

(declare-fun e!2511534 () (InoxSet C!23864))

(assert (=> d!1201808 (= (content!6586 lt!1441324) e!2511534)))

(declare-fun b!4047782 () Bool)

(assert (=> b!4047782 (= e!2511534 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047783 () Bool)

(assert (=> b!4047783 (= e!2511534 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441324) true) (content!6586 (t!335502 lt!1441324))))))

(assert (= (and d!1201808 c!699320) b!4047782))

(assert (= (and d!1201808 (not c!699320)) b!4047783))

(declare-fun m!4647365 () Bool)

(assert (=> b!4047783 m!4647365))

(declare-fun m!4647367 () Bool)

(assert (=> b!4047783 m!4647367))

(assert (=> d!1201006 d!1201808))

(declare-fun d!1201810 () Bool)

(declare-fun lt!1442121 () Int)

(assert (=> d!1201810 (>= lt!1442121 0)))

(declare-fun e!2511535 () Int)

(assert (=> d!1201810 (= lt!1442121 e!2511535)))

(declare-fun c!699321 () Bool)

(assert (=> d!1201810 (= c!699321 ((_ is Nil!43281) lt!1441553))))

(assert (=> d!1201810 (= (size!32358 lt!1441553) lt!1442121)))

(declare-fun b!4047784 () Bool)

(assert (=> b!4047784 (= e!2511535 0)))

(declare-fun b!4047785 () Bool)

(assert (=> b!4047785 (= e!2511535 (+ 1 (size!32358 (t!335502 lt!1441553))))))

(assert (= (and d!1201810 c!699321) b!4047784))

(assert (= (and d!1201810 (not c!699321)) b!4047785))

(declare-fun m!4647369 () Bool)

(assert (=> b!4047785 m!4647369))

(assert (=> b!4046421 d!1201810))

(assert (=> b!4046421 d!1200996))

(declare-fun d!1201812 () Bool)

(declare-fun lt!1442122 () Int)

(assert (=> d!1201812 (>= lt!1442122 0)))

(declare-fun e!2511536 () Int)

(assert (=> d!1201812 (= lt!1442122 e!2511536)))

(declare-fun c!699322 () Bool)

(assert (=> d!1201812 (= c!699322 ((_ is Nil!43281) lt!1441319))))

(assert (=> d!1201812 (= (size!32358 lt!1441319) lt!1442122)))

(declare-fun b!4047786 () Bool)

(assert (=> b!4047786 (= e!2511536 0)))

(declare-fun b!4047787 () Bool)

(assert (=> b!4047787 (= e!2511536 (+ 1 (size!32358 (t!335502 lt!1441319))))))

(assert (= (and d!1201812 c!699322) b!4047786))

(assert (= (and d!1201812 (not c!699322)) b!4047787))

(declare-fun m!4647371 () Bool)

(assert (=> b!4047787 m!4647371))

(assert (=> b!4046421 d!1201812))

(assert (=> b!4046377 d!1201264))

(declare-fun d!1201814 () Bool)

(assert (=> d!1201814 (= (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523))))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523))))))))

(declare-fun b_lambda!118275 () Bool)

(assert (=> (not b_lambda!118275) (not d!1201814)))

(declare-fun tb!243505 () Bool)

(declare-fun t!335685 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335685) tb!243505))

(declare-fun result!295072 () Bool)

(assert (=> tb!243505 (= result!295072 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523)))))))))

(declare-fun m!4647373 () Bool)

(assert (=> tb!243505 m!4647373))

(assert (=> d!1201814 t!335685))

(declare-fun b_and!311281 () Bool)

(assert (= b_and!311275 (and (=> t!335685 result!295072) b_and!311281)))

(declare-fun t!335687 () Bool)

(declare-fun tb!243507 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335687) tb!243507))

(declare-fun result!295074 () Bool)

(assert (= result!295074 result!295072))

(assert (=> d!1201814 t!335687))

(declare-fun b_and!311283 () Bool)

(assert (= b_and!311277 (and (=> t!335687 result!295074) b_and!311283)))

(declare-fun tb!243509 () Bool)

(declare-fun t!335689 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335689) tb!243509))

(declare-fun result!295076 () Bool)

(assert (= result!295076 result!295072))

(assert (=> d!1201814 t!335689))

(declare-fun b_and!311285 () Bool)

(assert (= b_and!311279 (and (=> t!335689 result!295076) b_and!311285)))

(assert (=> d!1201814 m!4645219))

(declare-fun m!4647375 () Bool)

(assert (=> d!1201814 m!4647375))

(assert (=> b!4046377 d!1201814))

(declare-fun d!1201816 () Bool)

(assert (=> d!1201816 (= (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523)))) (fromListB!2347 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523)))))))

(declare-fun bs!591339 () Bool)

(assert (= bs!591339 d!1201816))

(declare-fun m!4647377 () Bool)

(assert (=> bs!591339 m!4647377))

(assert (=> b!4046377 d!1201816))

(declare-fun d!1201818 () Bool)

(declare-fun c!699323 () Bool)

(assert (=> d!1201818 (= c!699323 ((_ is Nil!43281) lt!1441566))))

(declare-fun e!2511538 () (InoxSet C!23864))

(assert (=> d!1201818 (= (content!6586 lt!1441566) e!2511538)))

(declare-fun b!4047788 () Bool)

(assert (=> b!4047788 (= e!2511538 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047789 () Bool)

(assert (=> b!4047789 (= e!2511538 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441566) true) (content!6586 (t!335502 lt!1441566))))))

(assert (= (and d!1201818 c!699323) b!4047788))

(assert (= (and d!1201818 (not c!699323)) b!4047789))

(declare-fun m!4647379 () Bool)

(assert (=> b!4047789 m!4647379))

(declare-fun m!4647381 () Bool)

(assert (=> b!4047789 m!4647381))

(assert (=> d!1200940 d!1201818))

(assert (=> d!1200940 d!1201282))

(declare-fun d!1201820 () Bool)

(declare-fun c!699324 () Bool)

(assert (=> d!1201820 (= c!699324 ((_ is Nil!43281) suffix!1299))))

(declare-fun e!2511539 () (InoxSet C!23864))

(assert (=> d!1201820 (= (content!6586 suffix!1299) e!2511539)))

(declare-fun b!4047790 () Bool)

(assert (=> b!4047790 (= e!2511539 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047791 () Bool)

(assert (=> b!4047791 (= e!2511539 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 suffix!1299) true) (content!6586 (t!335502 suffix!1299))))))

(assert (= (and d!1201820 c!699324) b!4047790))

(assert (= (and d!1201820 (not c!699324)) b!4047791))

(declare-fun m!4647383 () Bool)

(assert (=> b!4047791 m!4647383))

(declare-fun m!4647385 () Bool)

(assert (=> b!4047791 m!4647385))

(assert (=> d!1200940 d!1201820))

(declare-fun d!1201822 () Bool)

(declare-fun c!699325 () Bool)

(assert (=> d!1201822 (= c!699325 ((_ is Nil!43281) lt!1441588))))

(declare-fun e!2511540 () (InoxSet C!23864))

(assert (=> d!1201822 (= (content!6586 lt!1441588) e!2511540)))

(declare-fun b!4047792 () Bool)

(assert (=> b!4047792 (= e!2511540 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047793 () Bool)

(assert (=> b!4047793 (= e!2511540 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441588) true) (content!6586 (t!335502 lt!1441588))))))

(assert (= (and d!1201822 c!699325) b!4047792))

(assert (= (and d!1201822 (not c!699325)) b!4047793))

(declare-fun m!4647387 () Bool)

(assert (=> b!4047793 m!4647387))

(declare-fun m!4647389 () Bool)

(assert (=> b!4047793 m!4647389))

(assert (=> d!1200990 d!1201822))

(assert (=> d!1200990 d!1201282))

(declare-fun d!1201824 () Bool)

(declare-fun c!699326 () Bool)

(assert (=> d!1201824 (= c!699326 ((_ is Nil!43281) lt!1441311))))

(declare-fun e!2511541 () (InoxSet C!23864))

(assert (=> d!1201824 (= (content!6586 lt!1441311) e!2511541)))

(declare-fun b!4047794 () Bool)

(assert (=> b!4047794 (= e!2511541 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047795 () Bool)

(assert (=> b!4047795 (= e!2511541 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441311) true) (content!6586 (t!335502 lt!1441311))))))

(assert (= (and d!1201824 c!699326) b!4047794))

(assert (= (and d!1201824 (not c!699326)) b!4047795))

(declare-fun m!4647391 () Bool)

(assert (=> b!4047795 m!4647391))

(declare-fun m!4647393 () Bool)

(assert (=> b!4047795 m!4647393))

(assert (=> d!1200990 d!1201824))

(assert (=> b!4046410 d!1201278))

(declare-fun d!1201826 () Bool)

(declare-fun lt!1442123 () Int)

(assert (=> d!1201826 (>= lt!1442123 0)))

(declare-fun e!2511542 () Int)

(assert (=> d!1201826 (= lt!1442123 e!2511542)))

(declare-fun c!699327 () Bool)

(assert (=> d!1201826 (= c!699327 ((_ is Nil!43281) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550)))))))

(assert (=> d!1201826 (= (size!32358 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550)))) lt!1442123)))

(declare-fun b!4047796 () Bool)

(assert (=> b!4047796 (= e!2511542 0)))

(declare-fun b!4047797 () Bool)

(assert (=> b!4047797 (= e!2511542 (+ 1 (size!32358 (t!335502 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550)))))))))

(assert (= (and d!1201826 c!699327) b!4047796))

(assert (= (and d!1201826 (not c!699327)) b!4047797))

(declare-fun m!4647395 () Bool)

(assert (=> b!4047797 m!4647395))

(assert (=> b!4046410 d!1201826))

(declare-fun b!4047800 () Bool)

(declare-fun e!2511545 () Bool)

(assert (=> b!4047800 (= e!2511545 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441314)) (tail!6289 (tail!6289 lt!1441333))))))

(declare-fun d!1201828 () Bool)

(declare-fun e!2511544 () Bool)

(assert (=> d!1201828 e!2511544))

(declare-fun res!1649103 () Bool)

(assert (=> d!1201828 (=> res!1649103 e!2511544)))

(declare-fun lt!1442124 () Bool)

(assert (=> d!1201828 (= res!1649103 (not lt!1442124))))

(declare-fun e!2511543 () Bool)

(assert (=> d!1201828 (= lt!1442124 e!2511543)))

(declare-fun res!1649105 () Bool)

(assert (=> d!1201828 (=> res!1649105 e!2511543)))

(assert (=> d!1201828 (= res!1649105 ((_ is Nil!43281) (tail!6289 lt!1441314)))))

(assert (=> d!1201828 (= (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441333)) lt!1442124)))

(declare-fun b!4047798 () Bool)

(assert (=> b!4047798 (= e!2511543 e!2511545)))

(declare-fun res!1649104 () Bool)

(assert (=> b!4047798 (=> (not res!1649104) (not e!2511545))))

(assert (=> b!4047798 (= res!1649104 (not ((_ is Nil!43281) (tail!6289 lt!1441333))))))

(declare-fun b!4047799 () Bool)

(declare-fun res!1649106 () Bool)

(assert (=> b!4047799 (=> (not res!1649106) (not e!2511545))))

(assert (=> b!4047799 (= res!1649106 (= (head!8557 (tail!6289 lt!1441314)) (head!8557 (tail!6289 lt!1441333))))))

(declare-fun b!4047801 () Bool)

(assert (=> b!4047801 (= e!2511544 (>= (size!32358 (tail!6289 lt!1441333)) (size!32358 (tail!6289 lt!1441314))))))

(assert (= (and d!1201828 (not res!1649105)) b!4047798))

(assert (= (and b!4047798 res!1649104) b!4047799))

(assert (= (and b!4047799 res!1649106) b!4047800))

(assert (= (and d!1201828 (not res!1649103)) b!4047801))

(assert (=> b!4047800 m!4644691))

(assert (=> b!4047800 m!4646053))

(assert (=> b!4047800 m!4645425))

(declare-fun m!4647397 () Bool)

(assert (=> b!4047800 m!4647397))

(assert (=> b!4047800 m!4646053))

(assert (=> b!4047800 m!4647397))

(declare-fun m!4647399 () Bool)

(assert (=> b!4047800 m!4647399))

(assert (=> b!4047799 m!4644691))

(assert (=> b!4047799 m!4646059))

(assert (=> b!4047799 m!4645425))

(declare-fun m!4647401 () Bool)

(assert (=> b!4047799 m!4647401))

(assert (=> b!4047801 m!4645425))

(declare-fun m!4647403 () Bool)

(assert (=> b!4047801 m!4647403))

(assert (=> b!4047801 m!4644691))

(assert (=> b!4047801 m!4646065))

(assert (=> b!4046448 d!1201828))

(assert (=> b!4046448 d!1201240))

(declare-fun d!1201830 () Bool)

(assert (=> d!1201830 (= (tail!6289 lt!1441333) (t!335502 lt!1441333))))

(assert (=> b!4046448 d!1201830))

(assert (=> b!4046465 d!1201712))

(declare-fun d!1201832 () Bool)

(assert (=> d!1201832 (= (head!8557 lt!1441304) (h!48701 lt!1441304))))

(assert (=> b!4046465 d!1201832))

(assert (=> d!1200994 d!1200986))

(declare-fun d!1201834 () Bool)

(assert (=> d!1201834 (= (++!11336 (++!11336 prefix!494 newSuffix!27) lt!1441303) (++!11336 prefix!494 (++!11336 newSuffix!27 lt!1441303)))))

(assert (=> d!1201834 true))

(declare-fun _$52!2332 () Unit!62527)

(assert (=> d!1201834 (= (choose!24528 prefix!494 newSuffix!27 lt!1441303) _$52!2332)))

(declare-fun bs!591340 () Bool)

(assert (= bs!591340 d!1201834))

(assert (=> bs!591340 m!4644355))

(assert (=> bs!591340 m!4644355))

(assert (=> bs!591340 m!4645557))

(assert (=> bs!591340 m!4644313))

(assert (=> bs!591340 m!4644313))

(assert (=> bs!591340 m!4645559))

(assert (=> d!1200994 d!1201834))

(assert (=> d!1200994 d!1200978))

(declare-fun e!2511547 () List!43405)

(declare-fun b!4047803 () Bool)

(assert (=> b!4047803 (= e!2511547 (Cons!43281 (h!48701 prefix!494) (++!11336 (t!335502 prefix!494) (++!11336 newSuffix!27 lt!1441303))))))

(declare-fun b!4047804 () Bool)

(declare-fun res!1649108 () Bool)

(declare-fun e!2511546 () Bool)

(assert (=> b!4047804 (=> (not res!1649108) (not e!2511546))))

(declare-fun lt!1442125 () List!43405)

(assert (=> b!4047804 (= res!1649108 (= (size!32358 lt!1442125) (+ (size!32358 prefix!494) (size!32358 (++!11336 newSuffix!27 lt!1441303)))))))

(declare-fun b!4047805 () Bool)

(assert (=> b!4047805 (= e!2511546 (or (not (= (++!11336 newSuffix!27 lt!1441303) Nil!43281)) (= lt!1442125 prefix!494)))))

(declare-fun b!4047802 () Bool)

(assert (=> b!4047802 (= e!2511547 (++!11336 newSuffix!27 lt!1441303))))

(declare-fun d!1201836 () Bool)

(assert (=> d!1201836 e!2511546))

(declare-fun res!1649107 () Bool)

(assert (=> d!1201836 (=> (not res!1649107) (not e!2511546))))

(assert (=> d!1201836 (= res!1649107 (= (content!6586 lt!1442125) ((_ map or) (content!6586 prefix!494) (content!6586 (++!11336 newSuffix!27 lt!1441303)))))))

(assert (=> d!1201836 (= lt!1442125 e!2511547)))

(declare-fun c!699328 () Bool)

(assert (=> d!1201836 (= c!699328 ((_ is Nil!43281) prefix!494))))

(assert (=> d!1201836 (= (++!11336 prefix!494 (++!11336 newSuffix!27 lt!1441303)) lt!1442125)))

(assert (= (and d!1201836 c!699328) b!4047802))

(assert (= (and d!1201836 (not c!699328)) b!4047803))

(assert (= (and d!1201836 res!1649107) b!4047804))

(assert (= (and b!4047804 res!1649108) b!4047805))

(assert (=> b!4047803 m!4644313))

(declare-fun m!4647405 () Bool)

(assert (=> b!4047803 m!4647405))

(declare-fun m!4647407 () Bool)

(assert (=> b!4047804 m!4647407))

(assert (=> b!4047804 m!4644371))

(assert (=> b!4047804 m!4644313))

(declare-fun m!4647409 () Bool)

(assert (=> b!4047804 m!4647409))

(declare-fun m!4647411 () Bool)

(assert (=> d!1201836 m!4647411))

(assert (=> d!1201836 m!4645421))

(assert (=> d!1201836 m!4644313))

(declare-fun m!4647413 () Bool)

(assert (=> d!1201836 m!4647413))

(assert (=> d!1200994 d!1201836))

(declare-fun e!2511549 () List!43405)

(declare-fun b!4047807 () Bool)

(assert (=> b!4047807 (= e!2511549 (Cons!43281 (h!48701 (++!11336 prefix!494 newSuffix!27)) (++!11336 (t!335502 (++!11336 prefix!494 newSuffix!27)) lt!1441303)))))

(declare-fun b!4047808 () Bool)

(declare-fun res!1649110 () Bool)

(declare-fun e!2511548 () Bool)

(assert (=> b!4047808 (=> (not res!1649110) (not e!2511548))))

(declare-fun lt!1442126 () List!43405)

(assert (=> b!4047808 (= res!1649110 (= (size!32358 lt!1442126) (+ (size!32358 (++!11336 prefix!494 newSuffix!27)) (size!32358 lt!1441303))))))

(declare-fun b!4047809 () Bool)

(assert (=> b!4047809 (= e!2511548 (or (not (= lt!1441303 Nil!43281)) (= lt!1442126 (++!11336 prefix!494 newSuffix!27))))))

(declare-fun b!4047806 () Bool)

(assert (=> b!4047806 (= e!2511549 lt!1441303)))

(declare-fun d!1201838 () Bool)

(assert (=> d!1201838 e!2511548))

(declare-fun res!1649109 () Bool)

(assert (=> d!1201838 (=> (not res!1649109) (not e!2511548))))

(assert (=> d!1201838 (= res!1649109 (= (content!6586 lt!1442126) ((_ map or) (content!6586 (++!11336 prefix!494 newSuffix!27)) (content!6586 lt!1441303))))))

(assert (=> d!1201838 (= lt!1442126 e!2511549)))

(declare-fun c!699329 () Bool)

(assert (=> d!1201838 (= c!699329 ((_ is Nil!43281) (++!11336 prefix!494 newSuffix!27)))))

(assert (=> d!1201838 (= (++!11336 (++!11336 prefix!494 newSuffix!27) lt!1441303) lt!1442126)))

(assert (= (and d!1201838 c!699329) b!4047806))

(assert (= (and d!1201838 (not c!699329)) b!4047807))

(assert (= (and d!1201838 res!1649109) b!4047808))

(assert (= (and b!4047808 res!1649110) b!4047809))

(declare-fun m!4647415 () Bool)

(assert (=> b!4047807 m!4647415))

(declare-fun m!4647417 () Bool)

(assert (=> b!4047808 m!4647417))

(assert (=> b!4047808 m!4644355))

(declare-fun m!4647419 () Bool)

(assert (=> b!4047808 m!4647419))

(assert (=> b!4047808 m!4645499))

(declare-fun m!4647421 () Bool)

(assert (=> d!1201838 m!4647421))

(assert (=> d!1201838 m!4644355))

(declare-fun m!4647423 () Bool)

(assert (=> d!1201838 m!4647423))

(assert (=> d!1201838 m!4645505))

(assert (=> d!1200994 d!1201838))

(declare-fun b!4047812 () Bool)

(declare-fun e!2511552 () Bool)

(assert (=> b!4047812 (= e!2511552 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 (++!11336 lt!1441296 suffixResult!105))))))

(declare-fun d!1201840 () Bool)

(declare-fun e!2511551 () Bool)

(assert (=> d!1201840 e!2511551))

(declare-fun res!1649111 () Bool)

(assert (=> d!1201840 (=> res!1649111 e!2511551)))

(declare-fun lt!1442127 () Bool)

(assert (=> d!1201840 (= res!1649111 (not lt!1442127))))

(declare-fun e!2511550 () Bool)

(assert (=> d!1201840 (= lt!1442127 e!2511550)))

(declare-fun res!1649113 () Bool)

(assert (=> d!1201840 (=> res!1649113 e!2511550)))

(assert (=> d!1201840 (= res!1649113 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201840 (= (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 suffixResult!105)) lt!1442127)))

(declare-fun b!4047810 () Bool)

(assert (=> b!4047810 (= e!2511550 e!2511552)))

(declare-fun res!1649112 () Bool)

(assert (=> b!4047810 (=> (not res!1649112) (not e!2511552))))

(assert (=> b!4047810 (= res!1649112 (not ((_ is Nil!43281) (++!11336 lt!1441296 suffixResult!105))))))

(declare-fun b!4047811 () Bool)

(declare-fun res!1649114 () Bool)

(assert (=> b!4047811 (=> (not res!1649114) (not e!2511552))))

(assert (=> b!4047811 (= res!1649114 (= (head!8557 lt!1441296) (head!8557 (++!11336 lt!1441296 suffixResult!105))))))

(declare-fun b!4047813 () Bool)

(assert (=> b!4047813 (= e!2511551 (>= (size!32358 (++!11336 lt!1441296 suffixResult!105)) (size!32358 lt!1441296)))))

(assert (= (and d!1201840 (not res!1649113)) b!4047810))

(assert (= (and b!4047810 res!1649112) b!4047811))

(assert (= (and b!4047811 res!1649114) b!4047812))

(assert (= (and d!1201840 (not res!1649111)) b!4047813))

(assert (=> b!4047812 m!4645237))

(assert (=> b!4047812 m!4644479))

(declare-fun m!4647425 () Bool)

(assert (=> b!4047812 m!4647425))

(assert (=> b!4047812 m!4645237))

(assert (=> b!4047812 m!4647425))

(declare-fun m!4647427 () Bool)

(assert (=> b!4047812 m!4647427))

(assert (=> b!4047811 m!4645243))

(assert (=> b!4047811 m!4644479))

(declare-fun m!4647429 () Bool)

(assert (=> b!4047811 m!4647429))

(assert (=> b!4047813 m!4644479))

(declare-fun m!4647431 () Bool)

(assert (=> b!4047813 m!4647431))

(assert (=> b!4047813 m!4644369))

(assert (=> d!1200962 d!1201840))

(assert (=> d!1200962 d!1201030))

(declare-fun d!1201842 () Bool)

(assert (=> d!1201842 (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 suffixResult!105))))

(assert (=> d!1201842 true))

(declare-fun _$46!1799 () Unit!62527)

(assert (=> d!1201842 (= (choose!24523 lt!1441296 suffixResult!105) _$46!1799)))

(declare-fun bs!591341 () Bool)

(assert (= bs!591341 d!1201842))

(assert (=> bs!591341 m!4644479))

(assert (=> bs!591341 m!4644479))

(assert (=> bs!591341 m!4645455))

(assert (=> d!1200962 d!1201842))

(declare-fun b!4047815 () Bool)

(declare-fun e!2511554 () List!43405)

(assert (=> b!4047815 (= e!2511554 (Cons!43281 (h!48701 (t!335502 prefix!494)) (++!11336 (t!335502 (t!335502 prefix!494)) lt!1441311)))))

(declare-fun b!4047816 () Bool)

(declare-fun res!1649116 () Bool)

(declare-fun e!2511553 () Bool)

(assert (=> b!4047816 (=> (not res!1649116) (not e!2511553))))

(declare-fun lt!1442128 () List!43405)

(assert (=> b!4047816 (= res!1649116 (= (size!32358 lt!1442128) (+ (size!32358 (t!335502 prefix!494)) (size!32358 lt!1441311))))))

(declare-fun b!4047817 () Bool)

(assert (=> b!4047817 (= e!2511553 (or (not (= lt!1441311 Nil!43281)) (= lt!1442128 (t!335502 prefix!494))))))

(declare-fun b!4047814 () Bool)

(assert (=> b!4047814 (= e!2511554 lt!1441311)))

(declare-fun d!1201844 () Bool)

(assert (=> d!1201844 e!2511553))

(declare-fun res!1649115 () Bool)

(assert (=> d!1201844 (=> (not res!1649115) (not e!2511553))))

(assert (=> d!1201844 (= res!1649115 (= (content!6586 lt!1442128) ((_ map or) (content!6586 (t!335502 prefix!494)) (content!6586 lt!1441311))))))

(assert (=> d!1201844 (= lt!1442128 e!2511554)))

(declare-fun c!699330 () Bool)

(assert (=> d!1201844 (= c!699330 ((_ is Nil!43281) (t!335502 prefix!494)))))

(assert (=> d!1201844 (= (++!11336 (t!335502 prefix!494) lt!1441311) lt!1442128)))

(assert (= (and d!1201844 c!699330) b!4047814))

(assert (= (and d!1201844 (not c!699330)) b!4047815))

(assert (= (and d!1201844 res!1649115) b!4047816))

(assert (= (and b!4047816 res!1649116) b!4047817))

(declare-fun m!4647433 () Bool)

(assert (=> b!4047815 m!4647433))

(declare-fun m!4647435 () Bool)

(assert (=> b!4047816 m!4647435))

(assert (=> b!4047816 m!4645565))

(assert (=> b!4047816 m!4645543))

(declare-fun m!4647437 () Bool)

(assert (=> d!1201844 m!4647437))

(assert (=> d!1201844 m!4646147))

(assert (=> d!1201844 m!4645547))

(assert (=> b!4046501 d!1201844))

(assert (=> b!4046418 d!1201278))

(declare-fun d!1201846 () Bool)

(declare-fun c!699331 () Bool)

(assert (=> d!1201846 (= c!699331 ((_ is Nil!43281) lt!1441535))))

(declare-fun e!2511555 () (InoxSet C!23864))

(assert (=> d!1201846 (= (content!6586 lt!1441535) e!2511555)))

(declare-fun b!4047818 () Bool)

(assert (=> b!4047818 (= e!2511555 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047819 () Bool)

(assert (=> b!4047819 (= e!2511555 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441535) true) (content!6586 (t!335502 lt!1441535))))))

(assert (= (and d!1201846 c!699331) b!4047818))

(assert (= (and d!1201846 (not c!699331)) b!4047819))

(declare-fun m!4647439 () Bool)

(assert (=> b!4047819 m!4647439))

(declare-fun m!4647441 () Bool)

(assert (=> b!4047819 m!4647441))

(assert (=> d!1200906 d!1201846))

(assert (=> d!1200906 d!1201808))

(assert (=> d!1200906 d!1201820))

(declare-fun b!4047822 () Bool)

(declare-fun e!2511558 () Bool)

(assert (=> b!4047822 (= e!2511558 (isPrefix!4021 (tail!6289 prefix!494) (tail!6289 (++!11336 prefix!494 suffix!1299))))))

(declare-fun d!1201848 () Bool)

(declare-fun e!2511557 () Bool)

(assert (=> d!1201848 e!2511557))

(declare-fun res!1649117 () Bool)

(assert (=> d!1201848 (=> res!1649117 e!2511557)))

(declare-fun lt!1442129 () Bool)

(assert (=> d!1201848 (= res!1649117 (not lt!1442129))))

(declare-fun e!2511556 () Bool)

(assert (=> d!1201848 (= lt!1442129 e!2511556)))

(declare-fun res!1649119 () Bool)

(assert (=> d!1201848 (=> res!1649119 e!2511556)))

(assert (=> d!1201848 (= res!1649119 ((_ is Nil!43281) prefix!494))))

(assert (=> d!1201848 (= (isPrefix!4021 prefix!494 (++!11336 prefix!494 suffix!1299)) lt!1442129)))

(declare-fun b!4047820 () Bool)

(assert (=> b!4047820 (= e!2511556 e!2511558)))

(declare-fun res!1649118 () Bool)

(assert (=> b!4047820 (=> (not res!1649118) (not e!2511558))))

(assert (=> b!4047820 (= res!1649118 (not ((_ is Nil!43281) (++!11336 prefix!494 suffix!1299))))))

(declare-fun b!4047821 () Bool)

(declare-fun res!1649120 () Bool)

(assert (=> b!4047821 (=> (not res!1649120) (not e!2511558))))

(assert (=> b!4047821 (= res!1649120 (= (head!8557 prefix!494) (head!8557 (++!11336 prefix!494 suffix!1299))))))

(declare-fun b!4047823 () Bool)

(assert (=> b!4047823 (= e!2511557 (>= (size!32358 (++!11336 prefix!494 suffix!1299)) (size!32358 prefix!494)))))

(assert (= (and d!1201848 (not res!1649119)) b!4047820))

(assert (= (and b!4047820 res!1649118) b!4047821))

(assert (= (and b!4047821 res!1649120) b!4047822))

(assert (= (and d!1201848 (not res!1649117)) b!4047823))

(assert (=> b!4047822 m!4645465))

(assert (=> b!4047822 m!4644379))

(declare-fun m!4647443 () Bool)

(assert (=> b!4047822 m!4647443))

(assert (=> b!4047822 m!4645465))

(assert (=> b!4047822 m!4647443))

(declare-fun m!4647445 () Bool)

(assert (=> b!4047822 m!4647445))

(assert (=> b!4047821 m!4645469))

(assert (=> b!4047821 m!4644379))

(declare-fun m!4647447 () Bool)

(assert (=> b!4047821 m!4647447))

(assert (=> b!4047823 m!4644379))

(declare-fun m!4647449 () Bool)

(assert (=> b!4047823 m!4647449))

(assert (=> b!4047823 m!4644371))

(assert (=> d!1200964 d!1201848))

(assert (=> d!1200964 d!1200940))

(declare-fun d!1201850 () Bool)

(assert (=> d!1201850 (isPrefix!4021 prefix!494 (++!11336 prefix!494 suffix!1299))))

(assert (=> d!1201850 true))

(declare-fun _$46!1800 () Unit!62527)

(assert (=> d!1201850 (= (choose!24523 prefix!494 suffix!1299) _$46!1800)))

(declare-fun bs!591342 () Bool)

(assert (= bs!591342 d!1201850))

(assert (=> bs!591342 m!4644379))

(assert (=> bs!591342 m!4644379))

(assert (=> bs!591342 m!4645459))

(assert (=> d!1200964 d!1201850))

(declare-fun d!1201852 () Bool)

(assert (=> d!1201852 (= (_2!24311 (v!39751 lt!1441282)) lt!1441283)))

(assert (=> d!1201852 true))

(declare-fun _$63!1133 () Unit!62527)

(assert (=> d!1201852 (= (choose!24526 lt!1441314 (_2!24311 (v!39751 lt!1441282)) lt!1441314 lt!1441283 lt!1441294) _$63!1133)))

(assert (=> d!1200944 d!1201852))

(assert (=> d!1200944 d!1201038))

(declare-fun d!1201854 () Bool)

(declare-fun lt!1442130 () Int)

(assert (=> d!1201854 (>= lt!1442130 0)))

(declare-fun e!2511559 () Int)

(assert (=> d!1201854 (= lt!1442130 e!2511559)))

(declare-fun c!699332 () Bool)

(assert (=> d!1201854 (= c!699332 ((_ is Nil!43281) lt!1441504))))

(assert (=> d!1201854 (= (size!32358 lt!1441504) lt!1442130)))

(declare-fun b!4047824 () Bool)

(assert (=> b!4047824 (= e!2511559 0)))

(declare-fun b!4047825 () Bool)

(assert (=> b!4047825 (= e!2511559 (+ 1 (size!32358 (t!335502 lt!1441504))))))

(assert (= (and d!1201854 c!699332) b!4047824))

(assert (= (and d!1201854 (not c!699332)) b!4047825))

(declare-fun m!4647451 () Bool)

(assert (=> b!4047825 m!4647451))

(assert (=> b!4046310 d!1201854))

(assert (=> b!4046310 d!1200886))

(declare-fun d!1201856 () Bool)

(declare-fun lt!1442131 () Int)

(assert (=> d!1201856 (>= lt!1442131 0)))

(declare-fun e!2511560 () Int)

(assert (=> d!1201856 (= lt!1442131 e!2511560)))

(declare-fun c!699333 () Bool)

(assert (=> d!1201856 (= c!699333 ((_ is Nil!43281) (_2!24311 (v!39751 lt!1441282))))))

(assert (=> d!1201856 (= (size!32358 (_2!24311 (v!39751 lt!1441282))) lt!1442131)))

(declare-fun b!4047826 () Bool)

(assert (=> b!4047826 (= e!2511560 0)))

(declare-fun b!4047827 () Bool)

(assert (=> b!4047827 (= e!2511560 (+ 1 (size!32358 (t!335502 (_2!24311 (v!39751 lt!1441282))))))))

(assert (= (and d!1201856 c!699333) b!4047826))

(assert (= (and d!1201856 (not c!699333)) b!4047827))

(declare-fun m!4647453 () Bool)

(assert (=> b!4047827 m!4647453))

(assert (=> b!4046310 d!1201856))

(declare-fun b!4047828 () Bool)

(declare-fun e!2511561 () Bool)

(assert (=> b!4047828 (= e!2511561 (inv!15 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296))))))

(declare-fun b!4047829 () Bool)

(declare-fun e!2511562 () Bool)

(assert (=> b!4047829 (= e!2511562 (inv!16 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296))))))

(declare-fun b!4047830 () Bool)

(declare-fun e!2511563 () Bool)

(assert (=> b!4047830 (= e!2511562 e!2511563)))

(declare-fun c!699335 () Bool)

(assert (=> b!4047830 (= c!699335 ((_ is IntegerValue!21493) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296))))))

(declare-fun b!4047831 () Bool)

(assert (=> b!4047831 (= e!2511563 (inv!17 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296))))))

(declare-fun b!4047832 () Bool)

(declare-fun res!1649121 () Bool)

(assert (=> b!4047832 (=> res!1649121 e!2511561)))

(assert (=> b!4047832 (= res!1649121 (not ((_ is IntegerValue!21494) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296)))))))

(assert (=> b!4047832 (= e!2511563 e!2511561)))

(declare-fun d!1201858 () Bool)

(declare-fun c!699334 () Bool)

(assert (=> d!1201858 (= c!699334 ((_ is IntegerValue!21492) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296))))))

(assert (=> d!1201858 (= (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 token!484))) (seqFromList!5151 lt!1441296))) e!2511562)))

(assert (= (and d!1201858 c!699334) b!4047829))

(assert (= (and d!1201858 (not c!699334)) b!4047830))

(assert (= (and b!4047830 c!699335) b!4047831))

(assert (= (and b!4047830 (not c!699335)) b!4047832))

(assert (= (and b!4047832 (not res!1649121)) b!4047828))

(declare-fun m!4647455 () Bool)

(assert (=> b!4047828 m!4647455))

(declare-fun m!4647457 () Bool)

(assert (=> b!4047829 m!4647457))

(declare-fun m!4647459 () Bool)

(assert (=> b!4047831 m!4647459))

(assert (=> tb!243361 d!1201858))

(assert (=> d!1201034 d!1201796))

(declare-fun d!1201860 () Bool)

(declare-fun lt!1442132 () Int)

(assert (=> d!1201860 (>= lt!1442132 0)))

(declare-fun e!2511564 () Int)

(assert (=> d!1201860 (= lt!1442132 e!2511564)))

(declare-fun c!699336 () Bool)

(assert (=> d!1201860 (= c!699336 ((_ is Nil!43281) lt!1441587))))

(assert (=> d!1201860 (= (size!32358 lt!1441587) lt!1442132)))

(declare-fun b!4047833 () Bool)

(assert (=> b!4047833 (= e!2511564 0)))

(declare-fun b!4047834 () Bool)

(assert (=> b!4047834 (= e!2511564 (+ 1 (size!32358 (t!335502 lt!1441587))))))

(assert (= (and d!1201860 c!699336) b!4047833))

(assert (= (and d!1201860 (not c!699336)) b!4047834))

(declare-fun m!4647461 () Bool)

(assert (=> b!4047834 m!4647461))

(assert (=> b!4046498 d!1201860))

(assert (=> b!4046498 d!1200996))

(declare-fun d!1201862 () Bool)

(declare-fun lt!1442133 () Int)

(assert (=> d!1201862 (>= lt!1442133 0)))

(declare-fun e!2511565 () Int)

(assert (=> d!1201862 (= lt!1442133 e!2511565)))

(declare-fun c!699337 () Bool)

(assert (=> d!1201862 (= c!699337 ((_ is Nil!43281) newSuffixResult!27))))

(assert (=> d!1201862 (= (size!32358 newSuffixResult!27) lt!1442133)))

(declare-fun b!4047835 () Bool)

(assert (=> b!4047835 (= e!2511565 0)))

(declare-fun b!4047836 () Bool)

(assert (=> b!4047836 (= e!2511565 (+ 1 (size!32358 (t!335502 newSuffixResult!27))))))

(assert (= (and d!1201862 c!699337) b!4047835))

(assert (= (and d!1201862 (not c!699337)) b!4047836))

(declare-fun m!4647463 () Bool)

(assert (=> b!4047836 m!4647463))

(assert (=> b!4046498 d!1201862))

(declare-fun d!1201864 () Bool)

(declare-fun charsToBigInt!1 (List!43406) Int)

(assert (=> d!1201864 (= (inv!17 (value!218253 token!484)) (= (charsToBigInt!1 (text!50596 (value!218253 token!484))) (value!218245 (value!218253 token!484))))))

(declare-fun bs!591343 () Bool)

(assert (= bs!591343 d!1201864))

(declare-fun m!4647465 () Bool)

(assert (=> bs!591343 m!4647465))

(assert (=> b!4046526 d!1201864))

(declare-fun d!1201866 () Bool)

(assert (=> d!1201866 (= (list!16120 lt!1441593) (list!16122 (c!698890 lt!1441593)))))

(declare-fun bs!591344 () Bool)

(assert (= bs!591344 d!1201866))

(declare-fun m!4647467 () Bool)

(assert (=> bs!591344 m!4647467))

(assert (=> d!1201002 d!1201866))

(assert (=> b!4046430 d!1201832))

(declare-fun b!4047838 () Bool)

(declare-fun e!2511567 () List!43405)

(assert (=> b!4047838 (= e!2511567 (Cons!43281 (h!48701 (t!335502 lt!1441296)) (++!11336 (t!335502 (t!335502 lt!1441296)) lt!1441324)))))

(declare-fun b!4047839 () Bool)

(declare-fun res!1649123 () Bool)

(declare-fun e!2511566 () Bool)

(assert (=> b!4047839 (=> (not res!1649123) (not e!2511566))))

(declare-fun lt!1442134 () List!43405)

(assert (=> b!4047839 (= res!1649123 (= (size!32358 lt!1442134) (+ (size!32358 (t!335502 lt!1441296)) (size!32358 lt!1441324))))))

(declare-fun b!4047840 () Bool)

(assert (=> b!4047840 (= e!2511566 (or (not (= lt!1441324 Nil!43281)) (= lt!1442134 (t!335502 lt!1441296))))))

(declare-fun b!4047837 () Bool)

(assert (=> b!4047837 (= e!2511567 lt!1441324)))

(declare-fun d!1201868 () Bool)

(assert (=> d!1201868 e!2511566))

(declare-fun res!1649122 () Bool)

(assert (=> d!1201868 (=> (not res!1649122) (not e!2511566))))

(assert (=> d!1201868 (= res!1649122 (= (content!6586 lt!1442134) ((_ map or) (content!6586 (t!335502 lt!1441296)) (content!6586 lt!1441324))))))

(assert (=> d!1201868 (= lt!1442134 e!2511567)))

(declare-fun c!699338 () Bool)

(assert (=> d!1201868 (= c!699338 ((_ is Nil!43281) (t!335502 lt!1441296)))))

(assert (=> d!1201868 (= (++!11336 (t!335502 lt!1441296) lt!1441324) lt!1442134)))

(assert (= (and d!1201868 c!699338) b!4047837))

(assert (= (and d!1201868 (not c!699338)) b!4047838))

(assert (= (and d!1201868 res!1649122) b!4047839))

(assert (= (and b!4047839 res!1649123) b!4047840))

(declare-fun m!4647469 () Bool)

(assert (=> b!4047838 m!4647469))

(declare-fun m!4647471 () Bool)

(assert (=> b!4047839 m!4647471))

(assert (=> b!4047839 m!4645563))

(assert (=> b!4047839 m!4645281))

(declare-fun m!4647473 () Bool)

(assert (=> d!1201868 m!4647473))

(assert (=> d!1201868 m!4646113))

(assert (=> d!1201868 m!4645285))

(assert (=> b!4046529 d!1201868))

(declare-fun d!1201870 () Bool)

(assert (=> d!1201870 (= (isEmpty!25831 lt!1441314) ((_ is Nil!43281) lt!1441314))))

(assert (=> bm!287669 d!1201870))

(declare-fun d!1201872 () Bool)

(declare-fun res!1649128 () Bool)

(declare-fun e!2511572 () Bool)

(assert (=> d!1201872 (=> res!1649128 e!2511572)))

(assert (=> d!1201872 (= res!1649128 ((_ is Nil!43283) rules!2999))))

(assert (=> d!1201872 (= (noDuplicateTag!2697 thiss!21717 rules!2999 Nil!43285) e!2511572)))

(declare-fun b!4047845 () Bool)

(declare-fun e!2511573 () Bool)

(assert (=> b!4047845 (= e!2511572 e!2511573)))

(declare-fun res!1649129 () Bool)

(assert (=> b!4047845 (=> (not res!1649129) (not e!2511573))))

(declare-fun contains!8605 (List!43409 String!49538) Bool)

(assert (=> b!4047845 (= res!1649129 (not (contains!8605 Nil!43285 (tag!7794 (h!48703 rules!2999)))))))

(declare-fun b!4047846 () Bool)

(assert (=> b!4047846 (= e!2511573 (noDuplicateTag!2697 thiss!21717 (t!335504 rules!2999) (Cons!43285 (tag!7794 (h!48703 rules!2999)) Nil!43285)))))

(assert (= (and d!1201872 (not res!1649128)) b!4047845))

(assert (= (and b!4047845 res!1649129) b!4047846))

(declare-fun m!4647475 () Bool)

(assert (=> b!4047845 m!4647475))

(declare-fun m!4647477 () Bool)

(assert (=> b!4047846 m!4647477))

(assert (=> b!4046619 d!1201872))

(declare-fun b!4047848 () Bool)

(declare-fun e!2511575 () List!43405)

(assert (=> b!4047848 (= e!2511575 (Cons!43281 (h!48701 (t!335502 prefix!494)) (++!11336 (t!335502 (t!335502 prefix!494)) suffix!1299)))))

(declare-fun b!4047849 () Bool)

(declare-fun res!1649131 () Bool)

(declare-fun e!2511574 () Bool)

(assert (=> b!4047849 (=> (not res!1649131) (not e!2511574))))

(declare-fun lt!1442135 () List!43405)

(assert (=> b!4047849 (= res!1649131 (= (size!32358 lt!1442135) (+ (size!32358 (t!335502 prefix!494)) (size!32358 suffix!1299))))))

(declare-fun b!4047850 () Bool)

(assert (=> b!4047850 (= e!2511574 (or (not (= suffix!1299 Nil!43281)) (= lt!1442135 (t!335502 prefix!494))))))

(declare-fun b!4047847 () Bool)

(assert (=> b!4047847 (= e!2511575 suffix!1299)))

(declare-fun d!1201874 () Bool)

(assert (=> d!1201874 e!2511574))

(declare-fun res!1649130 () Bool)

(assert (=> d!1201874 (=> (not res!1649130) (not e!2511574))))

(assert (=> d!1201874 (= res!1649130 (= (content!6586 lt!1442135) ((_ map or) (content!6586 (t!335502 prefix!494)) (content!6586 suffix!1299))))))

(assert (=> d!1201874 (= lt!1442135 e!2511575)))

(declare-fun c!699339 () Bool)

(assert (=> d!1201874 (= c!699339 ((_ is Nil!43281) (t!335502 prefix!494)))))

(assert (=> d!1201874 (= (++!11336 (t!335502 prefix!494) suffix!1299) lt!1442135)))

(assert (= (and d!1201874 c!699339) b!4047847))

(assert (= (and d!1201874 (not c!699339)) b!4047848))

(assert (= (and d!1201874 res!1649130) b!4047849))

(assert (= (and b!4047849 res!1649131) b!4047850))

(declare-fun m!4647479 () Bool)

(assert (=> b!4047848 m!4647479))

(declare-fun m!4647481 () Bool)

(assert (=> b!4047849 m!4647481))

(assert (=> b!4047849 m!4645565))

(assert (=> b!4047849 m!4644351))

(declare-fun m!4647483 () Bool)

(assert (=> d!1201874 m!4647483))

(assert (=> d!1201874 m!4646147))

(assert (=> d!1201874 m!4645275))

(assert (=> b!4046443 d!1201874))

(declare-fun b!4047853 () Bool)

(declare-fun e!2511578 () Bool)

(assert (=> b!4047853 (= e!2511578 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441296)) (tail!6289 (tail!6289 lt!1441301))))))

(declare-fun d!1201876 () Bool)

(declare-fun e!2511577 () Bool)

(assert (=> d!1201876 e!2511577))

(declare-fun res!1649132 () Bool)

(assert (=> d!1201876 (=> res!1649132 e!2511577)))

(declare-fun lt!1442136 () Bool)

(assert (=> d!1201876 (= res!1649132 (not lt!1442136))))

(declare-fun e!2511576 () Bool)

(assert (=> d!1201876 (= lt!1442136 e!2511576)))

(declare-fun res!1649134 () Bool)

(assert (=> d!1201876 (=> res!1649134 e!2511576)))

(assert (=> d!1201876 (= res!1649134 ((_ is Nil!43281) (tail!6289 lt!1441296)))))

(assert (=> d!1201876 (= (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441301)) lt!1442136)))

(declare-fun b!4047851 () Bool)

(assert (=> b!4047851 (= e!2511576 e!2511578)))

(declare-fun res!1649133 () Bool)

(assert (=> b!4047851 (=> (not res!1649133) (not e!2511578))))

(assert (=> b!4047851 (= res!1649133 (not ((_ is Nil!43281) (tail!6289 lt!1441301))))))

(declare-fun b!4047852 () Bool)

(declare-fun res!1649135 () Bool)

(assert (=> b!4047852 (=> (not res!1649135) (not e!2511578))))

(assert (=> b!4047852 (= res!1649135 (= (head!8557 (tail!6289 lt!1441296)) (head!8557 (tail!6289 lt!1441301))))))

(declare-fun b!4047854 () Bool)

(assert (=> b!4047854 (= e!2511577 (>= (size!32358 (tail!6289 lt!1441301)) (size!32358 (tail!6289 lt!1441296))))))

(assert (= (and d!1201876 (not res!1649134)) b!4047851))

(assert (= (and b!4047851 res!1649133) b!4047852))

(assert (= (and b!4047852 res!1649135) b!4047853))

(assert (= (and d!1201876 (not res!1649132)) b!4047854))

(assert (=> b!4047853 m!4645237))

(assert (=> b!4047853 m!4646091))

(assert (=> b!4047853 m!4645303))

(declare-fun m!4647485 () Bool)

(assert (=> b!4047853 m!4647485))

(assert (=> b!4047853 m!4646091))

(assert (=> b!4047853 m!4647485))

(declare-fun m!4647487 () Bool)

(assert (=> b!4047853 m!4647487))

(assert (=> b!4047852 m!4645237))

(assert (=> b!4047852 m!4646097))

(assert (=> b!4047852 m!4645303))

(declare-fun m!4647489 () Bool)

(assert (=> b!4047852 m!4647489))

(assert (=> b!4047854 m!4645303))

(declare-fun m!4647491 () Bool)

(assert (=> b!4047854 m!4647491))

(assert (=> b!4047854 m!4645237))

(assert (=> b!4047854 m!4646103))

(assert (=> b!4046408 d!1201876))

(assert (=> b!4046408 d!1201258))

(declare-fun d!1201878 () Bool)

(assert (=> d!1201878 (= (tail!6289 lt!1441301) (t!335502 lt!1441301))))

(assert (=> b!4046408 d!1201878))

(declare-fun d!1201880 () Bool)

(declare-fun lt!1442137 () Bool)

(assert (=> d!1201880 (= lt!1442137 (select (content!6587 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1441561)))))))

(declare-fun e!2511580 () Bool)

(assert (=> d!1201880 (= lt!1442137 e!2511580)))

(declare-fun res!1649136 () Bool)

(assert (=> d!1201880 (=> (not res!1649136) (not e!2511580))))

(assert (=> d!1201880 (= res!1649136 ((_ is Cons!43283) rules!2999))))

(assert (=> d!1201880 (= (contains!8604 rules!2999 (rule!10010 (_1!24311 (get!14199 lt!1441561)))) lt!1442137)))

(declare-fun b!4047855 () Bool)

(declare-fun e!2511579 () Bool)

(assert (=> b!4047855 (= e!2511580 e!2511579)))

(declare-fun res!1649137 () Bool)

(assert (=> b!4047855 (=> res!1649137 e!2511579)))

(assert (=> b!4047855 (= res!1649137 (= (h!48703 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1441561)))))))

(declare-fun b!4047856 () Bool)

(assert (=> b!4047856 (= e!2511579 (contains!8604 (t!335504 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1441561)))))))

(assert (= (and d!1201880 res!1649136) b!4047855))

(assert (= (and b!4047855 (not res!1649137)) b!4047856))

(assert (=> d!1201880 m!4645297))

(declare-fun m!4647493 () Bool)

(assert (=> d!1201880 m!4647493))

(declare-fun m!4647495 () Bool)

(assert (=> b!4047856 m!4647495))

(assert (=> b!4046436 d!1201880))

(declare-fun d!1201882 () Bool)

(assert (=> d!1201882 (= (get!14199 lt!1441561) (v!39751 lt!1441561))))

(assert (=> b!4046436 d!1201882))

(assert (=> d!1200792 d!1200740))

(assert (=> d!1200792 d!1200752))

(declare-fun d!1201884 () Bool)

(assert (=> d!1201884 (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 newSuffixResult!27))))

(assert (=> d!1201884 true))

(declare-fun _$46!1801 () Unit!62527)

(assert (=> d!1201884 (= (choose!24523 lt!1441314 newSuffixResult!27) _$46!1801)))

(declare-fun bs!591345 () Bool)

(assert (= bs!591345 d!1201884))

(assert (=> bs!591345 m!4644389))

(assert (=> bs!591345 m!4644389))

(assert (=> bs!591345 m!4644403))

(assert (=> d!1200792 d!1201884))

(declare-fun d!1201886 () Bool)

(declare-fun c!699340 () Bool)

(assert (=> d!1201886 (= c!699340 ((_ is Nil!43281) lt!1441504))))

(declare-fun e!2511581 () (InoxSet C!23864))

(assert (=> d!1201886 (= (content!6586 lt!1441504) e!2511581)))

(declare-fun b!4047857 () Bool)

(assert (=> b!4047857 (= e!2511581 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047858 () Bool)

(assert (=> b!4047858 (= e!2511581 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441504) true) (content!6586 (t!335502 lt!1441504))))))

(assert (= (and d!1201886 c!699340) b!4047857))

(assert (= (and d!1201886 (not c!699340)) b!4047858))

(declare-fun m!4647497 () Bool)

(assert (=> b!4047858 m!4647497))

(declare-fun m!4647499 () Bool)

(assert (=> b!4047858 m!4647499))

(assert (=> d!1200878 d!1201886))

(assert (=> d!1200878 d!1201788))

(declare-fun d!1201888 () Bool)

(declare-fun c!699341 () Bool)

(assert (=> d!1201888 (= c!699341 ((_ is Nil!43281) (_2!24311 (v!39751 lt!1441282))))))

(declare-fun e!2511582 () (InoxSet C!23864))

(assert (=> d!1201888 (= (content!6586 (_2!24311 (v!39751 lt!1441282))) e!2511582)))

(declare-fun b!4047859 () Bool)

(assert (=> b!4047859 (= e!2511582 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047860 () Bool)

(assert (=> b!4047860 (= e!2511582 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 (_2!24311 (v!39751 lt!1441282))) true) (content!6586 (t!335502 (_2!24311 (v!39751 lt!1441282))))))))

(assert (= (and d!1201888 c!699341) b!4047859))

(assert (= (and d!1201888 (not c!699341)) b!4047860))

(declare-fun m!4647501 () Bool)

(assert (=> b!4047860 m!4647501))

(declare-fun m!4647503 () Bool)

(assert (=> b!4047860 m!4647503))

(assert (=> d!1200878 d!1201888))

(assert (=> d!1200936 d!1200934))

(declare-fun d!1201890 () Bool)

(assert (=> d!1201890 (isPrefix!4021 lt!1441304 lt!1441304)))

(assert (=> d!1201890 true))

(declare-fun _$45!2003 () Unit!62527)

(assert (=> d!1201890 (= (choose!24531 lt!1441304 lt!1441304) _$45!2003)))

(declare-fun bs!591346 () Bool)

(assert (= bs!591346 d!1201890))

(assert (=> bs!591346 m!4644427))

(assert (=> d!1200936 d!1201890))

(declare-fun d!1201892 () Bool)

(assert (=> d!1201892 (= (list!16120 lt!1441435) (list!16122 (c!698890 lt!1441435)))))

(declare-fun bs!591347 () Bool)

(assert (= bs!591347 d!1201892))

(declare-fun m!4647505 () Bool)

(assert (=> bs!591347 m!4647505))

(assert (=> d!1200796 d!1201892))

(declare-fun b!4047863 () Bool)

(declare-fun e!2511585 () Bool)

(assert (=> b!4047863 (= e!2511585 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 (++!11336 lt!1441296 lt!1441278))))))

(declare-fun d!1201894 () Bool)

(declare-fun e!2511584 () Bool)

(assert (=> d!1201894 e!2511584))

(declare-fun res!1649138 () Bool)

(assert (=> d!1201894 (=> res!1649138 e!2511584)))

(declare-fun lt!1442138 () Bool)

(assert (=> d!1201894 (= res!1649138 (not lt!1442138))))

(declare-fun e!2511583 () Bool)

(assert (=> d!1201894 (= lt!1442138 e!2511583)))

(declare-fun res!1649140 () Bool)

(assert (=> d!1201894 (=> res!1649140 e!2511583)))

(assert (=> d!1201894 (= res!1649140 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201894 (= (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 lt!1441278)) lt!1442138)))

(declare-fun b!4047861 () Bool)

(assert (=> b!4047861 (= e!2511583 e!2511585)))

(declare-fun res!1649139 () Bool)

(assert (=> b!4047861 (=> (not res!1649139) (not e!2511585))))

(assert (=> b!4047861 (= res!1649139 (not ((_ is Nil!43281) (++!11336 lt!1441296 lt!1441278))))))

(declare-fun b!4047862 () Bool)

(declare-fun res!1649141 () Bool)

(assert (=> b!4047862 (=> (not res!1649141) (not e!2511585))))

(assert (=> b!4047862 (= res!1649141 (= (head!8557 lt!1441296) (head!8557 (++!11336 lt!1441296 lt!1441278))))))

(declare-fun b!4047864 () Bool)

(assert (=> b!4047864 (= e!2511584 (>= (size!32358 (++!11336 lt!1441296 lt!1441278)) (size!32358 lt!1441296)))))

(assert (= (and d!1201894 (not res!1649140)) b!4047861))

(assert (= (and b!4047861 res!1649139) b!4047862))

(assert (= (and b!4047862 res!1649141) b!4047863))

(assert (= (and d!1201894 (not res!1649138)) b!4047864))

(assert (=> b!4047863 m!4645237))

(assert (=> b!4047863 m!4644487))

(declare-fun m!4647507 () Bool)

(assert (=> b!4047863 m!4647507))

(assert (=> b!4047863 m!4645237))

(assert (=> b!4047863 m!4647507))

(declare-fun m!4647509 () Bool)

(assert (=> b!4047863 m!4647509))

(assert (=> b!4047862 m!4645243))

(assert (=> b!4047862 m!4644487))

(declare-fun m!4647511 () Bool)

(assert (=> b!4047862 m!4647511))

(assert (=> b!4047864 m!4644487))

(declare-fun m!4647513 () Bool)

(assert (=> b!4047864 m!4647513))

(assert (=> b!4047864 m!4644369))

(assert (=> d!1200924 d!1201894))

(assert (=> d!1200924 d!1200902))

(declare-fun d!1201896 () Bool)

(assert (=> d!1201896 (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 lt!1441278))))

(assert (=> d!1201896 true))

(declare-fun _$46!1802 () Unit!62527)

(assert (=> d!1201896 (= (choose!24523 lt!1441296 lt!1441278) _$46!1802)))

(declare-fun bs!591348 () Bool)

(assert (= bs!591348 d!1201896))

(assert (=> bs!591348 m!4644487))

(assert (=> bs!591348 m!4644487))

(assert (=> bs!591348 m!4645319))

(assert (=> d!1200924 d!1201896))

(declare-fun d!1201898 () Bool)

(assert (=> d!1201898 (= (isEmpty!25831 (tail!6289 lt!1441296)) ((_ is Nil!43281) (tail!6289 lt!1441296)))))

(assert (=> b!4046581 d!1201898))

(assert (=> b!4046581 d!1201258))

(declare-fun d!1201900 () Bool)

(declare-fun c!699342 () Bool)

(assert (=> d!1201900 (= c!699342 ((_ is Nil!43281) lt!1441553))))

(declare-fun e!2511586 () (InoxSet C!23864))

(assert (=> d!1201900 (= (content!6586 lt!1441553) e!2511586)))

(declare-fun b!4047865 () Bool)

(assert (=> b!4047865 (= e!2511586 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047866 () Bool)

(assert (=> b!4047866 (= e!2511586 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441553) true) (content!6586 (t!335502 lt!1441553))))))

(assert (= (and d!1201900 c!699342) b!4047865))

(assert (= (and d!1201900 (not c!699342)) b!4047866))

(declare-fun m!4647515 () Bool)

(assert (=> b!4047866 m!4647515))

(declare-fun m!4647517 () Bool)

(assert (=> b!4047866 m!4647517))

(assert (=> d!1200930 d!1201900))

(assert (=> d!1200930 d!1201268))

(declare-fun d!1201902 () Bool)

(declare-fun c!699343 () Bool)

(assert (=> d!1201902 (= c!699343 ((_ is Nil!43281) lt!1441319))))

(declare-fun e!2511587 () (InoxSet C!23864))

(assert (=> d!1201902 (= (content!6586 lt!1441319) e!2511587)))

(declare-fun b!4047867 () Bool)

(assert (=> b!4047867 (= e!2511587 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047868 () Bool)

(assert (=> b!4047868 (= e!2511587 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441319) true) (content!6586 (t!335502 lt!1441319))))))

(assert (= (and d!1201902 c!699343) b!4047867))

(assert (= (and d!1201902 (not c!699343)) b!4047868))

(declare-fun m!4647519 () Bool)

(assert (=> b!4047868 m!4647519))

(declare-fun m!4647521 () Bool)

(assert (=> b!4047868 m!4647521))

(assert (=> d!1200930 d!1201902))

(declare-fun d!1201904 () Bool)

(declare-fun lt!1442139 () Int)

(assert (=> d!1201904 (= lt!1442139 (size!32358 (list!16120 (seqFromList!5151 (_1!24312 lt!1441501)))))))

(assert (=> d!1201904 (= lt!1442139 (size!32362 (c!698890 (seqFromList!5151 (_1!24312 lt!1441501)))))))

(assert (=> d!1201904 (= (size!32359 (seqFromList!5151 (_1!24312 lt!1441501))) lt!1442139)))

(declare-fun bs!591349 () Bool)

(assert (= bs!591349 d!1201904))

(assert (=> bs!591349 m!4645143))

(declare-fun m!4647523 () Bool)

(assert (=> bs!591349 m!4647523))

(assert (=> bs!591349 m!4647523))

(declare-fun m!4647525 () Bool)

(assert (=> bs!591349 m!4647525))

(declare-fun m!4647527 () Bool)

(assert (=> bs!591349 m!4647527))

(assert (=> b!4046285 d!1201904))

(declare-fun bs!591350 () Bool)

(declare-fun d!1201906 () Bool)

(assert (= bs!591350 (and d!1201906 d!1201774)))

(declare-fun lambda!127489 () Int)

(assert (=> bs!591350 (= (and (= (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) (= (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (= lambda!127489 lambda!127485))))

(declare-fun bs!591351 () Bool)

(assert (= bs!591351 (and d!1201906 d!1201800)))

(assert (=> bs!591351 (= lambda!127489 lambda!127488)))

(declare-fun b!4047869 () Bool)

(declare-fun e!2511588 () Bool)

(assert (=> b!4047869 (= e!2511588 true)))

(assert (=> d!1201906 e!2511588))

(assert (= d!1201906 b!4047869))

(assert (=> b!4047869 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (dynLambda!18389 order!22683 lambda!127489))))

(assert (=> b!4047869 (< (dynLambda!18390 order!22685 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (dynLambda!18389 order!22683 lambda!127489))))

(assert (=> d!1201906 (= (list!16120 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 (_1!24312 lt!1441501))))) (list!16120 (seqFromList!5151 (_1!24312 lt!1441501))))))

(declare-fun lt!1442140 () Unit!62527)

(assert (=> d!1201906 (= lt!1442140 (ForallOf!829 lambda!127489 (seqFromList!5151 (_1!24312 lt!1441501))))))

(assert (=> d!1201906 (= (lemmaSemiInverse!1912 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 (_1!24312 lt!1441501))) lt!1442140)))

(declare-fun b_lambda!118277 () Bool)

(assert (=> (not b_lambda!118277) (not d!1201906)))

(declare-fun t!335691 () Bool)

(declare-fun tb!243511 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335691) tb!243511))

(declare-fun b!4047870 () Bool)

(declare-fun tp!1227952 () Bool)

(declare-fun e!2511589 () Bool)

(assert (=> b!4047870 (= e!2511589 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 (_1!24312 lt!1441501)))))) tp!1227952))))

(declare-fun result!295078 () Bool)

(assert (=> tb!243511 (= result!295078 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 (_1!24312 lt!1441501))))) e!2511589))))

(assert (= tb!243511 b!4047870))

(declare-fun m!4647529 () Bool)

(assert (=> b!4047870 m!4647529))

(declare-fun m!4647531 () Bool)

(assert (=> tb!243511 m!4647531))

(assert (=> d!1201906 t!335691))

(declare-fun b_and!311287 () Bool)

(assert (= b_and!311263 (and (=> t!335691 result!295078) b_and!311287)))

(declare-fun t!335693 () Bool)

(declare-fun tb!243513 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335693) tb!243513))

(declare-fun result!295080 () Bool)

(assert (= result!295080 result!295078))

(assert (=> d!1201906 t!335693))

(declare-fun b_and!311289 () Bool)

(assert (= b_and!311265 (and (=> t!335693 result!295080) b_and!311289)))

(declare-fun t!335695 () Bool)

(declare-fun tb!243515 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335695) tb!243515))

(declare-fun result!295082 () Bool)

(assert (= result!295082 result!295078))

(assert (=> d!1201906 t!335695))

(declare-fun b_and!311291 () Bool)

(assert (= b_and!311267 (and (=> t!335695 result!295082) b_and!311291)))

(declare-fun b_lambda!118279 () Bool)

(assert (=> (not b_lambda!118279) (not d!1201906)))

(declare-fun t!335697 () Bool)

(declare-fun tb!243517 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335697) tb!243517))

(declare-fun result!295084 () Bool)

(assert (=> tb!243517 (= result!295084 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 (_1!24312 lt!1441501)))))))

(declare-fun m!4647533 () Bool)

(assert (=> tb!243517 m!4647533))

(assert (=> d!1201906 t!335697))

(declare-fun b_and!311293 () Bool)

(assert (= b_and!311281 (and (=> t!335697 result!295084) b_and!311293)))

(declare-fun tb!243519 () Bool)

(declare-fun t!335699 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335699) tb!243519))

(declare-fun result!295086 () Bool)

(assert (= result!295086 result!295084))

(assert (=> d!1201906 t!335699))

(declare-fun b_and!311295 () Bool)

(assert (= b_and!311283 (and (=> t!335699 result!295086) b_and!311295)))

(declare-fun t!335701 () Bool)

(declare-fun tb!243521 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335701) tb!243521))

(declare-fun result!295088 () Bool)

(assert (= result!295088 result!295084))

(assert (=> d!1201906 t!335701))

(declare-fun b_and!311297 () Bool)

(assert (= b_and!311285 (and (=> t!335701 result!295088) b_and!311297)))

(assert (=> d!1201906 m!4645143))

(assert (=> d!1201906 m!4647523))

(declare-fun m!4647535 () Bool)

(assert (=> d!1201906 m!4647535))

(declare-fun m!4647537 () Bool)

(assert (=> d!1201906 m!4647537))

(assert (=> d!1201906 m!4645143))

(declare-fun m!4647539 () Bool)

(assert (=> d!1201906 m!4647539))

(declare-fun m!4647541 () Bool)

(assert (=> d!1201906 m!4647541))

(assert (=> d!1201906 m!4647535))

(assert (=> d!1201906 m!4645143))

(assert (=> d!1201906 m!4647541))

(assert (=> b!4046285 d!1201906))

(declare-fun d!1201908 () Bool)

(assert (=> d!1201908 (= (seqFromList!5151 (_1!24312 lt!1441501)) (fromListB!2347 (_1!24312 lt!1441501)))))

(declare-fun bs!591352 () Bool)

(assert (= bs!591352 d!1201908))

(declare-fun m!4647543 () Bool)

(assert (=> bs!591352 m!4647543))

(assert (=> b!4046285 d!1201908))

(declare-fun d!1201910 () Bool)

(declare-fun e!2511591 () Bool)

(assert (=> d!1201910 e!2511591))

(declare-fun res!1649142 () Bool)

(assert (=> d!1201910 (=> res!1649142 e!2511591)))

(assert (=> d!1201910 (= res!1649142 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(declare-fun lt!1442141 () Unit!62527)

(assert (=> d!1201910 (= lt!1442141 (choose!24536 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441294))))

(assert (=> d!1201910 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1201910 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1363 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) lt!1441294) lt!1442141)))

(declare-fun b!4047871 () Bool)

(assert (=> b!4047871 (= e!2511591 (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(assert (= (and d!1201910 (not res!1649142)) b!4047871))

(assert (=> d!1201910 m!4645119))

(assert (=> d!1201910 m!4645121))

(assert (=> d!1201910 m!4645123))

(assert (=> d!1201910 m!4645199))

(assert (=> d!1201910 m!4645121))

(assert (=> d!1201910 m!4645119))

(declare-fun m!4647545 () Bool)

(assert (=> d!1201910 m!4647545))

(assert (=> d!1201910 m!4645153))

(assert (=> b!4047871 m!4645119))

(assert (=> b!4047871 m!4645121))

(assert (=> b!4047871 m!4645119))

(assert (=> b!4047871 m!4645121))

(assert (=> b!4047871 m!4645123))

(assert (=> b!4047871 m!4645125))

(assert (=> b!4046285 d!1201910))

(assert (=> b!4046285 d!1201154))

(assert (=> b!4046285 d!1201234))

(declare-fun d!1201912 () Bool)

(assert (=> d!1201912 (= (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 (_1!24312 lt!1441501))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 (_1!24312 lt!1441501))))))

(declare-fun b_lambda!118281 () Bool)

(assert (=> (not b_lambda!118281) (not d!1201912)))

(assert (=> d!1201912 t!335697))

(declare-fun b_and!311299 () Bool)

(assert (= b_and!311293 (and (=> t!335697 result!295084) b_and!311299)))

(assert (=> d!1201912 t!335699))

(declare-fun b_and!311301 () Bool)

(assert (= b_and!311295 (and (=> t!335699 result!295086) b_and!311301)))

(assert (=> d!1201912 t!335701))

(declare-fun b_and!311303 () Bool)

(assert (= b_and!311297 (and (=> t!335701 result!295088) b_and!311303)))

(assert (=> d!1201912 m!4645143))

(assert (=> d!1201912 m!4647541))

(assert (=> b!4046285 d!1201912))

(declare-fun d!1201914 () Bool)

(assert (=> d!1201914 (= (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))) ((_ is Nil!43281) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(assert (=> b!4046285 d!1201914))

(assert (=> b!4046285 d!1201236))

(assert (=> d!1201014 d!1201762))

(declare-fun b!4047873 () Bool)

(declare-fun e!2511593 () List!43405)

(assert (=> b!4047873 (= e!2511593 (Cons!43281 (h!48701 (t!335502 lt!1441324)) (++!11336 (t!335502 (t!335502 lt!1441324)) suffix!1299)))))

(declare-fun b!4047874 () Bool)

(declare-fun res!1649144 () Bool)

(declare-fun e!2511592 () Bool)

(assert (=> b!4047874 (=> (not res!1649144) (not e!2511592))))

(declare-fun lt!1442142 () List!43405)

(assert (=> b!4047874 (= res!1649144 (= (size!32358 lt!1442142) (+ (size!32358 (t!335502 lt!1441324)) (size!32358 suffix!1299))))))

(declare-fun b!4047875 () Bool)

(assert (=> b!4047875 (= e!2511592 (or (not (= suffix!1299 Nil!43281)) (= lt!1442142 (t!335502 lt!1441324))))))

(declare-fun b!4047872 () Bool)

(assert (=> b!4047872 (= e!2511593 suffix!1299)))

(declare-fun d!1201916 () Bool)

(assert (=> d!1201916 e!2511592))

(declare-fun res!1649143 () Bool)

(assert (=> d!1201916 (=> (not res!1649143) (not e!2511592))))

(assert (=> d!1201916 (= res!1649143 (= (content!6586 lt!1442142) ((_ map or) (content!6586 (t!335502 lt!1441324)) (content!6586 suffix!1299))))))

(assert (=> d!1201916 (= lt!1442142 e!2511593)))

(declare-fun c!699344 () Bool)

(assert (=> d!1201916 (= c!699344 ((_ is Nil!43281) (t!335502 lt!1441324)))))

(assert (=> d!1201916 (= (++!11336 (t!335502 lt!1441324) suffix!1299) lt!1442142)))

(assert (= (and d!1201916 c!699344) b!4047872))

(assert (= (and d!1201916 (not c!699344)) b!4047873))

(assert (= (and d!1201916 res!1649143) b!4047874))

(assert (= (and b!4047874 res!1649144) b!4047875))

(declare-fun m!4647547 () Bool)

(assert (=> b!4047873 m!4647547))

(declare-fun m!4647549 () Bool)

(assert (=> b!4047874 m!4647549))

(assert (=> b!4047874 m!4647359))

(assert (=> b!4047874 m!4644351))

(declare-fun m!4647551 () Bool)

(assert (=> d!1201916 m!4647551))

(assert (=> d!1201916 m!4647367))

(assert (=> d!1201916 m!4645275))

(assert (=> b!4046393 d!1201916))

(assert (=> b!4046616 d!1201236))

(assert (=> b!4046616 d!1200886))

(declare-fun b!4047877 () Bool)

(declare-fun e!2511595 () List!43405)

(assert (=> b!4047877 (= e!2511595 (Cons!43281 (h!48701 (t!335502 lt!1441296)) (++!11336 (t!335502 (t!335502 lt!1441296)) lt!1441319)))))

(declare-fun b!4047878 () Bool)

(declare-fun res!1649146 () Bool)

(declare-fun e!2511594 () Bool)

(assert (=> b!4047878 (=> (not res!1649146) (not e!2511594))))

(declare-fun lt!1442143 () List!43405)

(assert (=> b!4047878 (= res!1649146 (= (size!32358 lt!1442143) (+ (size!32358 (t!335502 lt!1441296)) (size!32358 lt!1441319))))))

(declare-fun b!4047879 () Bool)

(assert (=> b!4047879 (= e!2511594 (or (not (= lt!1441319 Nil!43281)) (= lt!1442143 (t!335502 lt!1441296))))))

(declare-fun b!4047876 () Bool)

(assert (=> b!4047876 (= e!2511595 lt!1441319)))

(declare-fun d!1201918 () Bool)

(assert (=> d!1201918 e!2511594))

(declare-fun res!1649145 () Bool)

(assert (=> d!1201918 (=> (not res!1649145) (not e!2511594))))

(assert (=> d!1201918 (= res!1649145 (= (content!6586 lt!1442143) ((_ map or) (content!6586 (t!335502 lt!1441296)) (content!6586 lt!1441319))))))

(assert (=> d!1201918 (= lt!1442143 e!2511595)))

(declare-fun c!699345 () Bool)

(assert (=> d!1201918 (= c!699345 ((_ is Nil!43281) (t!335502 lt!1441296)))))

(assert (=> d!1201918 (= (++!11336 (t!335502 lt!1441296) lt!1441319) lt!1442143)))

(assert (= (and d!1201918 c!699345) b!4047876))

(assert (= (and d!1201918 (not c!699345)) b!4047877))

(assert (= (and d!1201918 res!1649145) b!4047878))

(assert (= (and b!4047878 res!1649146) b!4047879))

(declare-fun m!4647553 () Bool)

(assert (=> b!4047877 m!4647553))

(declare-fun m!4647555 () Bool)

(assert (=> b!4047878 m!4647555))

(assert (=> b!4047878 m!4645563))

(assert (=> b!4047878 m!4645371))

(declare-fun m!4647557 () Bool)

(assert (=> d!1201918 m!4647557))

(assert (=> d!1201918 m!4646113))

(assert (=> d!1201918 m!4645375))

(assert (=> b!4046420 d!1201918))

(declare-fun d!1201920 () Bool)

(declare-fun c!699346 () Bool)

(assert (=> d!1201920 (= c!699346 ((_ is Nil!43281) lt!1441587))))

(declare-fun e!2511596 () (InoxSet C!23864))

(assert (=> d!1201920 (= (content!6586 lt!1441587) e!2511596)))

(declare-fun b!4047880 () Bool)

(assert (=> b!4047880 (= e!2511596 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047881 () Bool)

(assert (=> b!4047881 (= e!2511596 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441587) true) (content!6586 (t!335502 lt!1441587))))))

(assert (= (and d!1201920 c!699346) b!4047880))

(assert (= (and d!1201920 (not c!699346)) b!4047881))

(declare-fun m!4647559 () Bool)

(assert (=> b!4047881 m!4647559))

(declare-fun m!4647561 () Bool)

(assert (=> b!4047881 m!4647561))

(assert (=> d!1200988 d!1201920))

(assert (=> d!1200988 d!1201268))

(declare-fun d!1201922 () Bool)

(declare-fun c!699347 () Bool)

(assert (=> d!1201922 (= c!699347 ((_ is Nil!43281) newSuffixResult!27))))

(declare-fun e!2511597 () (InoxSet C!23864))

(assert (=> d!1201922 (= (content!6586 newSuffixResult!27) e!2511597)))

(declare-fun b!4047882 () Bool)

(assert (=> b!4047882 (= e!2511597 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047883 () Bool)

(assert (=> b!4047883 (= e!2511597 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 newSuffixResult!27) true) (content!6586 (t!335502 newSuffixResult!27))))))

(assert (= (and d!1201922 c!699347) b!4047882))

(assert (= (and d!1201922 (not c!699347)) b!4047883))

(declare-fun m!4647563 () Bool)

(assert (=> b!4047883 m!4647563))

(declare-fun m!4647565 () Bool)

(assert (=> b!4047883 m!4647565))

(assert (=> d!1200988 d!1201922))

(declare-fun bs!591353 () Bool)

(declare-fun d!1201924 () Bool)

(assert (= bs!591353 (and d!1201924 d!1201774)))

(declare-fun lambda!127490 () Int)

(assert (=> bs!591353 (= (and (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (= lambda!127490 lambda!127485))))

(declare-fun bs!591354 () Bool)

(assert (= bs!591354 (and d!1201924 d!1201800)))

(assert (=> bs!591354 (= (and (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (= lambda!127490 lambda!127488))))

(declare-fun bs!591355 () Bool)

(assert (= bs!591355 (and d!1201924 d!1201906)))

(assert (=> bs!591355 (= (and (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (= lambda!127490 lambda!127489))))

(assert (=> d!1201924 true))

(assert (=> d!1201924 (< (dynLambda!18390 order!22685 (toChars!9341 (transformation!6934 (h!48703 rules!2999)))) (dynLambda!18389 order!22683 lambda!127490))))

(assert (=> d!1201924 true))

(assert (=> d!1201924 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (h!48703 rules!2999)))) (dynLambda!18389 order!22683 lambda!127490))))

(assert (=> d!1201924 (= (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (h!48703 rules!2999)))) (Forall!1495 lambda!127490))))

(declare-fun bs!591356 () Bool)

(assert (= bs!591356 d!1201924))

(declare-fun m!4647567 () Bool)

(assert (=> bs!591356 m!4647567))

(assert (=> d!1200952 d!1201924))

(declare-fun d!1201926 () Bool)

(declare-fun lt!1442144 () Int)

(assert (=> d!1201926 (>= lt!1442144 0)))

(declare-fun e!2511598 () Int)

(assert (=> d!1201926 (= lt!1442144 e!2511598)))

(declare-fun c!699348 () Bool)

(assert (=> d!1201926 (= c!699348 ((_ is Nil!43281) (t!335502 prefix!494)))))

(assert (=> d!1201926 (= (size!32358 (t!335502 prefix!494)) lt!1442144)))

(declare-fun b!4047884 () Bool)

(assert (=> b!4047884 (= e!2511598 0)))

(declare-fun b!4047885 () Bool)

(assert (=> b!4047885 (= e!2511598 (+ 1 (size!32358 (t!335502 (t!335502 prefix!494)))))))

(assert (= (and d!1201926 c!699348) b!4047884))

(assert (= (and d!1201926 (not c!699348)) b!4047885))

(declare-fun m!4647569 () Bool)

(assert (=> b!4047885 m!4647569))

(assert (=> b!4046511 d!1201926))

(assert (=> b!4046447 d!1201694))

(declare-fun d!1201928 () Bool)

(assert (=> d!1201928 (= (head!8557 lt!1441333) (h!48701 lt!1441333))))

(assert (=> b!4046447 d!1201928))

(declare-fun b!4047887 () Bool)

(declare-fun e!2511600 () List!43405)

(assert (=> b!4047887 (= e!2511600 (Cons!43281 (h!48701 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))) (++!11336 (t!335502 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))) (_2!24311 (get!14199 lt!1441523)))))))

(declare-fun b!4047888 () Bool)

(declare-fun res!1649148 () Bool)

(declare-fun e!2511599 () Bool)

(assert (=> b!4047888 (=> (not res!1649148) (not e!2511599))))

(declare-fun lt!1442145 () List!43405)

(assert (=> b!4047888 (= res!1649148 (= (size!32358 lt!1442145) (+ (size!32358 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))) (size!32358 (_2!24311 (get!14199 lt!1441523))))))))

(declare-fun b!4047889 () Bool)

(assert (=> b!4047889 (= e!2511599 (or (not (= (_2!24311 (get!14199 lt!1441523)) Nil!43281)) (= lt!1442145 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))))))))

(declare-fun b!4047886 () Bool)

(assert (=> b!4047886 (= e!2511600 (_2!24311 (get!14199 lt!1441523)))))

(declare-fun d!1201930 () Bool)

(assert (=> d!1201930 e!2511599))

(declare-fun res!1649147 () Bool)

(assert (=> d!1201930 (=> (not res!1649147) (not e!2511599))))

(assert (=> d!1201930 (= res!1649147 (= (content!6586 lt!1442145) ((_ map or) (content!6586 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))) (content!6586 (_2!24311 (get!14199 lt!1441523))))))))

(assert (=> d!1201930 (= lt!1442145 e!2511600)))

(declare-fun c!699349 () Bool)

(assert (=> d!1201930 (= c!699349 ((_ is Nil!43281) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))))))

(assert (=> d!1201930 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))) (_2!24311 (get!14199 lt!1441523))) lt!1442145)))

(assert (= (and d!1201930 c!699349) b!4047886))

(assert (= (and d!1201930 (not c!699349)) b!4047887))

(assert (= (and d!1201930 res!1649147) b!4047888))

(assert (= (and b!4047888 res!1649148) b!4047889))

(declare-fun m!4647571 () Bool)

(assert (=> b!4047887 m!4647571))

(declare-fun m!4647573 () Bool)

(assert (=> b!4047888 m!4647573))

(assert (=> b!4047888 m!4645207))

(declare-fun m!4647575 () Bool)

(assert (=> b!4047888 m!4647575))

(assert (=> b!4047888 m!4645211))

(declare-fun m!4647577 () Bool)

(assert (=> d!1201930 m!4647577))

(assert (=> d!1201930 m!4645207))

(declare-fun m!4647579 () Bool)

(assert (=> d!1201930 m!4647579))

(declare-fun m!4647581 () Bool)

(assert (=> d!1201930 m!4647581))

(assert (=> b!4046376 d!1201930))

(declare-fun d!1201932 () Bool)

(assert (=> d!1201932 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))) (list!16122 (c!698890 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))))))

(declare-fun bs!591357 () Bool)

(assert (= bs!591357 d!1201932))

(declare-fun m!4647583 () Bool)

(assert (=> bs!591357 m!4647583))

(assert (=> b!4046376 d!1201932))

(declare-fun d!1201934 () Bool)

(declare-fun lt!1442146 () BalanceConc!25884)

(assert (=> d!1201934 (= (list!16120 lt!1442146) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441523))))))

(assert (=> d!1201934 (= lt!1442146 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))) (value!218253 (_1!24311 (get!14199 lt!1441523)))))))

(assert (=> d!1201934 (= (charsOf!4750 (_1!24311 (get!14199 lt!1441523))) lt!1442146)))

(declare-fun b_lambda!118283 () Bool)

(assert (=> (not b_lambda!118283) (not d!1201934)))

(declare-fun t!335703 () Bool)

(declare-fun tb!243523 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335703) tb!243523))

(declare-fun b!4047890 () Bool)

(declare-fun e!2511601 () Bool)

(declare-fun tp!1227953 () Bool)

(assert (=> b!4047890 (= e!2511601 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))) (value!218253 (_1!24311 (get!14199 lt!1441523)))))) tp!1227953))))

(declare-fun result!295090 () Bool)

(assert (=> tb!243523 (= result!295090 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))) (value!218253 (_1!24311 (get!14199 lt!1441523))))) e!2511601))))

(assert (= tb!243523 b!4047890))

(declare-fun m!4647585 () Bool)

(assert (=> b!4047890 m!4647585))

(declare-fun m!4647587 () Bool)

(assert (=> tb!243523 m!4647587))

(assert (=> d!1201934 t!335703))

(declare-fun b_and!311305 () Bool)

(assert (= b_and!311287 (and (=> t!335703 result!295090) b_and!311305)))

(declare-fun t!335705 () Bool)

(declare-fun tb!243525 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335705) tb!243525))

(declare-fun result!295092 () Bool)

(assert (= result!295092 result!295090))

(assert (=> d!1201934 t!335705))

(declare-fun b_and!311307 () Bool)

(assert (= b_and!311289 (and (=> t!335705 result!295092) b_and!311307)))

(declare-fun t!335707 () Bool)

(declare-fun tb!243527 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335707) tb!243527))

(declare-fun result!295094 () Bool)

(assert (= result!295094 result!295090))

(assert (=> d!1201934 t!335707))

(declare-fun b_and!311309 () Bool)

(assert (= b_and!311291 (and (=> t!335707 result!295094) b_and!311309)))

(declare-fun m!4647589 () Bool)

(assert (=> d!1201934 m!4647589))

(declare-fun m!4647591 () Bool)

(assert (=> d!1201934 m!4647591))

(assert (=> b!4046376 d!1201934))

(assert (=> b!4046376 d!1201264))

(assert (=> b!4046537 d!1200998))

(assert (=> b!4046537 d!1200996))

(assert (=> b!4046407 d!1201710))

(declare-fun d!1201936 () Bool)

(assert (=> d!1201936 (= (head!8557 lt!1441301) (h!48701 lt!1441301))))

(assert (=> b!4046407 d!1201936))

(declare-fun b!4047891 () Bool)

(declare-fun e!2511607 () Bool)

(declare-fun e!2511603 () Bool)

(assert (=> b!4047891 (= e!2511607 e!2511603)))

(declare-fun c!699351 () Bool)

(assert (=> b!4047891 (= c!699351 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun bm!287796 () Bool)

(declare-fun call!287801 () Bool)

(assert (=> bm!287796 (= call!287801 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))))))

(declare-fun b!4047892 () Bool)

(declare-fun e!2511605 () Bool)

(assert (=> b!4047892 (= e!2511605 (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))) (c!698891 (regex!6934 (rule!10010 token!484)))))))

(declare-fun b!4047893 () Bool)

(declare-fun e!2511602 () Bool)

(assert (=> b!4047893 (= e!2511602 (nullable!4154 (regex!6934 (rule!10010 token!484))))))

(declare-fun b!4047894 () Bool)

(declare-fun e!2511608 () Bool)

(assert (=> b!4047894 (= e!2511608 (not (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))) (c!698891 (regex!6934 (rule!10010 token!484))))))))

(declare-fun b!4047895 () Bool)

(declare-fun res!1649152 () Bool)

(declare-fun e!2511604 () Bool)

(assert (=> b!4047895 (=> res!1649152 e!2511604)))

(assert (=> b!4047895 (= res!1649152 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 token!484)))))))

(assert (=> b!4047895 (= e!2511603 e!2511604)))

(declare-fun b!4047896 () Bool)

(declare-fun e!2511606 () Bool)

(assert (=> b!4047896 (= e!2511606 e!2511608)))

(declare-fun res!1649154 () Bool)

(assert (=> b!4047896 (=> res!1649154 e!2511608)))

(assert (=> b!4047896 (= res!1649154 call!287801)))

(declare-fun b!4047897 () Bool)

(declare-fun res!1649153 () Bool)

(assert (=> b!4047897 (=> (not res!1649153) (not e!2511605))))

(assert (=> b!4047897 (= res!1649153 (not call!287801))))

(declare-fun b!4047898 () Bool)

(declare-fun res!1649156 () Bool)

(assert (=> b!4047898 (=> res!1649156 e!2511608)))

(assert (=> b!4047898 (= res!1649156 (not (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))))))))

(declare-fun d!1201938 () Bool)

(assert (=> d!1201938 e!2511607))

(declare-fun c!699350 () Bool)

(assert (=> d!1201938 (= c!699350 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun lt!1442147 () Bool)

(assert (=> d!1201938 (= lt!1442147 e!2511602)))

(declare-fun c!699352 () Bool)

(assert (=> d!1201938 (= c!699352 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))))))

(assert (=> d!1201938 (validRegex!5354 (regex!6934 (rule!10010 token!484)))))

(assert (=> d!1201938 (= (matchR!5792 (regex!6934 (rule!10010 token!484)) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550))))) lt!1442147)))

(declare-fun b!4047899 () Bool)

(assert (=> b!4047899 (= e!2511603 (not lt!1442147))))

(declare-fun b!4047900 () Bool)

(declare-fun res!1649150 () Bool)

(assert (=> b!4047900 (=> res!1649150 e!2511604)))

(assert (=> b!4047900 (= res!1649150 e!2511605)))

(declare-fun res!1649155 () Bool)

(assert (=> b!4047900 (=> (not res!1649155) (not e!2511605))))

(assert (=> b!4047900 (= res!1649155 lt!1442147)))

(declare-fun b!4047901 () Bool)

(declare-fun res!1649149 () Bool)

(assert (=> b!4047901 (=> (not res!1649149) (not e!2511605))))

(assert (=> b!4047901 (= res!1649149 (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550)))))))))

(declare-fun b!4047902 () Bool)

(assert (=> b!4047902 (= e!2511607 (= lt!1442147 call!287801))))

(declare-fun b!4047903 () Bool)

(assert (=> b!4047903 (= e!2511604 e!2511606)))

(declare-fun res!1649151 () Bool)

(assert (=> b!4047903 (=> (not res!1649151) (not e!2511606))))

(assert (=> b!4047903 (= res!1649151 (not lt!1442147))))

(declare-fun b!4047904 () Bool)

(assert (=> b!4047904 (= e!2511602 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550)))))) (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441550)))))))))

(assert (= (and d!1201938 c!699352) b!4047893))

(assert (= (and d!1201938 (not c!699352)) b!4047904))

(assert (= (and d!1201938 c!699350) b!4047902))

(assert (= (and d!1201938 (not c!699350)) b!4047891))

(assert (= (and b!4047891 c!699351) b!4047899))

(assert (= (and b!4047891 (not c!699351)) b!4047895))

(assert (= (and b!4047895 (not res!1649152)) b!4047900))

(assert (= (and b!4047900 res!1649155) b!4047897))

(assert (= (and b!4047897 res!1649153) b!4047901))

(assert (= (and b!4047901 res!1649149) b!4047892))

(assert (= (and b!4047900 (not res!1649150)) b!4047903))

(assert (= (and b!4047903 res!1649151) b!4047896))

(assert (= (and b!4047896 (not res!1649154)) b!4047898))

(assert (= (and b!4047898 (not res!1649156)) b!4047894))

(assert (= (or b!4047902 b!4047896 b!4047897) bm!287796))

(assert (=> b!4047893 m!4645605))

(assert (=> b!4047894 m!4645333))

(declare-fun m!4647593 () Bool)

(assert (=> b!4047894 m!4647593))

(assert (=> d!1201938 m!4645333))

(declare-fun m!4647595 () Bool)

(assert (=> d!1201938 m!4647595))

(assert (=> d!1201938 m!4645609))

(assert (=> b!4047898 m!4645333))

(declare-fun m!4647597 () Bool)

(assert (=> b!4047898 m!4647597))

(assert (=> b!4047898 m!4647597))

(declare-fun m!4647599 () Bool)

(assert (=> b!4047898 m!4647599))

(assert (=> b!4047904 m!4645333))

(assert (=> b!4047904 m!4647593))

(assert (=> b!4047904 m!4647593))

(declare-fun m!4647601 () Bool)

(assert (=> b!4047904 m!4647601))

(assert (=> b!4047904 m!4645333))

(assert (=> b!4047904 m!4647597))

(assert (=> b!4047904 m!4647601))

(assert (=> b!4047904 m!4647597))

(declare-fun m!4647603 () Bool)

(assert (=> b!4047904 m!4647603))

(assert (=> b!4047892 m!4645333))

(assert (=> b!4047892 m!4647593))

(assert (=> bm!287796 m!4645333))

(assert (=> bm!287796 m!4647595))

(assert (=> b!4047901 m!4645333))

(assert (=> b!4047901 m!4647597))

(assert (=> b!4047901 m!4647597))

(assert (=> b!4047901 m!4647599))

(assert (=> b!4046417 d!1201938))

(assert (=> b!4046417 d!1201274))

(assert (=> b!4046417 d!1201276))

(assert (=> b!4046417 d!1201278))

(declare-fun d!1201940 () Bool)

(assert (=> d!1201940 (= (inv!57847 (tag!7794 (h!48703 (t!335504 rules!2999)))) (= (mod (str.len (value!218252 (tag!7794 (h!48703 (t!335504 rules!2999))))) 2) 0))))

(assert (=> b!4046650 d!1201940))

(declare-fun d!1201942 () Bool)

(declare-fun res!1649157 () Bool)

(declare-fun e!2511609 () Bool)

(assert (=> d!1201942 (=> (not res!1649157) (not e!2511609))))

(assert (=> d!1201942 (= res!1649157 (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999))))))))

(assert (=> d!1201942 (= (inv!57850 (transformation!6934 (h!48703 (t!335504 rules!2999)))) e!2511609)))

(declare-fun b!4047905 () Bool)

(assert (=> b!4047905 (= e!2511609 (equivClasses!2861 (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999))))))))

(assert (= (and d!1201942 res!1649157) b!4047905))

(declare-fun m!4647605 () Bool)

(assert (=> d!1201942 m!4647605))

(declare-fun m!4647607 () Bool)

(assert (=> b!4047905 m!4647607))

(assert (=> b!4046650 d!1201942))

(declare-fun b!4047907 () Bool)

(declare-fun e!2511611 () List!43405)

(assert (=> b!4047907 (= e!2511611 (Cons!43281 (h!48701 (t!335502 lt!1441314)) (++!11336 (t!335502 (t!335502 lt!1441314)) (_2!24311 (v!39751 lt!1441282)))))))

(declare-fun b!4047908 () Bool)

(declare-fun res!1649159 () Bool)

(declare-fun e!2511610 () Bool)

(assert (=> b!4047908 (=> (not res!1649159) (not e!2511610))))

(declare-fun lt!1442148 () List!43405)

(assert (=> b!4047908 (= res!1649159 (= (size!32358 lt!1442148) (+ (size!32358 (t!335502 lt!1441314)) (size!32358 (_2!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4047909 () Bool)

(assert (=> b!4047909 (= e!2511610 (or (not (= (_2!24311 (v!39751 lt!1441282)) Nil!43281)) (= lt!1442148 (t!335502 lt!1441314))))))

(declare-fun b!4047906 () Bool)

(assert (=> b!4047906 (= e!2511611 (_2!24311 (v!39751 lt!1441282)))))

(declare-fun d!1201944 () Bool)

(assert (=> d!1201944 e!2511610))

(declare-fun res!1649158 () Bool)

(assert (=> d!1201944 (=> (not res!1649158) (not e!2511610))))

(assert (=> d!1201944 (= res!1649158 (= (content!6586 lt!1442148) ((_ map or) (content!6586 (t!335502 lt!1441314)) (content!6586 (_2!24311 (v!39751 lt!1441282))))))))

(assert (=> d!1201944 (= lt!1442148 e!2511611)))

(declare-fun c!699353 () Bool)

(assert (=> d!1201944 (= c!699353 ((_ is Nil!43281) (t!335502 lt!1441314)))))

(assert (=> d!1201944 (= (++!11336 (t!335502 lt!1441314) (_2!24311 (v!39751 lt!1441282))) lt!1442148)))

(assert (= (and d!1201944 c!699353) b!4047906))

(assert (= (and d!1201944 (not c!699353)) b!4047907))

(assert (= (and d!1201944 res!1649158) b!4047908))

(assert (= (and b!4047908 res!1649159) b!4047909))

(declare-fun m!4647609 () Bool)

(assert (=> b!4047907 m!4647609))

(declare-fun m!4647611 () Bool)

(assert (=> b!4047908 m!4647611))

(assert (=> b!4047908 m!4645191))

(assert (=> b!4047908 m!4645171))

(declare-fun m!4647613 () Bool)

(assert (=> d!1201944 m!4647613))

(assert (=> d!1201944 m!4647339))

(assert (=> d!1201944 m!4645175))

(assert (=> b!4046309 d!1201944))

(declare-fun d!1201946 () Bool)

(assert (=> d!1201946 (= (isEmpty!25830 lt!1441550) (not ((_ is Some!9347) lt!1441550)))))

(assert (=> d!1200926 d!1201946))

(declare-fun d!1201948 () Bool)

(assert (=> d!1201948 (= (isEmpty!25831 (_1!24312 lt!1441551)) ((_ is Nil!43281) (_1!24312 lt!1441551)))))

(assert (=> d!1200926 d!1201948))

(declare-fun d!1201950 () Bool)

(declare-fun lt!1442151 () tuple2!42356)

(assert (=> d!1201950 (= (++!11336 (_1!24312 lt!1442151) (_2!24312 lt!1442151)) lt!1441304)))

(assert (=> d!1201950 (= lt!1442151 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 0 lt!1441304 lt!1441304 (sizeTr!278 lt!1441304 0)))))

(declare-fun lt!1442153 () Unit!62527)

(declare-fun lt!1442150 () Unit!62527)

(assert (=> d!1201950 (= lt!1442153 lt!1442150)))

(declare-fun lt!1442156 () List!43405)

(declare-fun lt!1442149 () Int)

(assert (=> d!1201950 (= (sizeTr!278 lt!1442156 lt!1442149) (+ (size!32358 lt!1442156) lt!1442149))))

(assert (=> d!1201950 (= lt!1442150 (lemmaSizeTrEqualsSize!277 lt!1442156 lt!1442149))))

(assert (=> d!1201950 (= lt!1442149 0)))

(assert (=> d!1201950 (= lt!1442156 Nil!43281)))

(declare-fun lt!1442154 () Unit!62527)

(declare-fun lt!1442155 () Unit!62527)

(assert (=> d!1201950 (= lt!1442154 lt!1442155)))

(declare-fun lt!1442152 () Int)

(assert (=> d!1201950 (= (sizeTr!278 lt!1441304 lt!1442152) (+ (size!32358 lt!1441304) lt!1442152))))

(assert (=> d!1201950 (= lt!1442155 (lemmaSizeTrEqualsSize!277 lt!1441304 lt!1442152))))

(assert (=> d!1201950 (= lt!1442152 0)))

(assert (=> d!1201950 (validRegex!5354 (regex!6934 (rule!10010 token!484)))))

(assert (=> d!1201950 (= (findLongestMatch!1303 (regex!6934 (rule!10010 token!484)) lt!1441304) lt!1442151)))

(declare-fun bs!591358 () Bool)

(assert (= bs!591358 d!1201950))

(declare-fun m!4647615 () Bool)

(assert (=> bs!591358 m!4647615))

(declare-fun m!4647617 () Bool)

(assert (=> bs!591358 m!4647617))

(declare-fun m!4647619 () Bool)

(assert (=> bs!591358 m!4647619))

(declare-fun m!4647621 () Bool)

(assert (=> bs!591358 m!4647621))

(assert (=> bs!591358 m!4645609))

(assert (=> bs!591358 m!4647617))

(declare-fun m!4647623 () Bool)

(assert (=> bs!591358 m!4647623))

(declare-fun m!4647625 () Bool)

(assert (=> bs!591358 m!4647625))

(declare-fun m!4647627 () Bool)

(assert (=> bs!591358 m!4647627))

(assert (=> bs!591358 m!4645323))

(declare-fun m!4647629 () Bool)

(assert (=> bs!591358 m!4647629))

(assert (=> d!1200926 d!1201950))

(assert (=> d!1200926 d!1201034))

(declare-fun d!1201952 () Bool)

(declare-fun lt!1442157 () Int)

(assert (=> d!1201952 (>= lt!1442157 0)))

(declare-fun e!2511612 () Int)

(assert (=> d!1201952 (= lt!1442157 e!2511612)))

(declare-fun c!699354 () Bool)

(assert (=> d!1201952 (= c!699354 ((_ is Nil!43281) (t!335502 lt!1441296)))))

(assert (=> d!1201952 (= (size!32358 (t!335502 lt!1441296)) lt!1442157)))

(declare-fun b!4047910 () Bool)

(assert (=> b!4047910 (= e!2511612 0)))

(declare-fun b!4047911 () Bool)

(assert (=> b!4047911 (= e!2511612 (+ 1 (size!32358 (t!335502 (t!335502 lt!1441296)))))))

(assert (= (and d!1201952 c!699354) b!4047910))

(assert (= (and d!1201952 (not c!699354)) b!4047911))

(declare-fun m!4647631 () Bool)

(assert (=> b!4047911 m!4647631))

(assert (=> b!4046509 d!1201952))

(declare-fun d!1201954 () Bool)

(declare-fun lt!1442158 () Int)

(assert (=> d!1201954 (>= lt!1442158 0)))

(declare-fun e!2511613 () Int)

(assert (=> d!1201954 (= lt!1442158 e!2511613)))

(declare-fun c!699355 () Bool)

(assert (=> d!1201954 (= c!699355 ((_ is Nil!43281) lt!1441315))))

(assert (=> d!1201954 (= (size!32358 lt!1441315) lt!1442158)))

(declare-fun b!4047912 () Bool)

(assert (=> b!4047912 (= e!2511613 0)))

(declare-fun b!4047913 () Bool)

(assert (=> b!4047913 (= e!2511613 (+ 1 (size!32358 (t!335502 lt!1441315))))))

(assert (= (and d!1201954 c!699355) b!4047912))

(assert (= (and d!1201954 (not c!699355)) b!4047913))

(declare-fun m!4647633 () Bool)

(assert (=> b!4047913 m!4647633))

(assert (=> b!4046459 d!1201954))

(assert (=> b!4046459 d!1200996))

(declare-fun b!4047915 () Bool)

(declare-fun e!2511615 () List!43405)

(assert (=> b!4047915 (= e!2511615 (Cons!43281 (h!48701 (t!335502 lt!1441296)) (++!11336 (t!335502 (t!335502 lt!1441296)) newSuffixResult!27)))))

(declare-fun b!4047916 () Bool)

(declare-fun res!1649161 () Bool)

(declare-fun e!2511614 () Bool)

(assert (=> b!4047916 (=> (not res!1649161) (not e!2511614))))

(declare-fun lt!1442159 () List!43405)

(assert (=> b!4047916 (= res!1649161 (= (size!32358 lt!1442159) (+ (size!32358 (t!335502 lt!1441296)) (size!32358 newSuffixResult!27))))))

(declare-fun b!4047917 () Bool)

(assert (=> b!4047917 (= e!2511614 (or (not (= newSuffixResult!27 Nil!43281)) (= lt!1442159 (t!335502 lt!1441296))))))

(declare-fun b!4047914 () Bool)

(assert (=> b!4047914 (= e!2511615 newSuffixResult!27)))

(declare-fun d!1201956 () Bool)

(assert (=> d!1201956 e!2511614))

(declare-fun res!1649160 () Bool)

(assert (=> d!1201956 (=> (not res!1649160) (not e!2511614))))

(assert (=> d!1201956 (= res!1649160 (= (content!6586 lt!1442159) ((_ map or) (content!6586 (t!335502 lt!1441296)) (content!6586 newSuffixResult!27))))))

(assert (=> d!1201956 (= lt!1442159 e!2511615)))

(declare-fun c!699356 () Bool)

(assert (=> d!1201956 (= c!699356 ((_ is Nil!43281) (t!335502 lt!1441296)))))

(assert (=> d!1201956 (= (++!11336 (t!335502 lt!1441296) newSuffixResult!27) lt!1442159)))

(assert (= (and d!1201956 c!699356) b!4047914))

(assert (= (and d!1201956 (not c!699356)) b!4047915))

(assert (= (and d!1201956 res!1649160) b!4047916))

(assert (= (and b!4047916 res!1649161) b!4047917))

(declare-fun m!4647635 () Bool)

(assert (=> b!4047915 m!4647635))

(declare-fun m!4647637 () Bool)

(assert (=> b!4047916 m!4647637))

(assert (=> b!4047916 m!4645563))

(assert (=> b!4047916 m!4644855))

(declare-fun m!4647639 () Bool)

(assert (=> d!1201956 m!4647639))

(assert (=> d!1201956 m!4646113))

(assert (=> d!1201956 m!4644861))

(assert (=> b!4046497 d!1201956))

(declare-fun b!4047918 () Bool)

(declare-fun e!2511617 () Bool)

(declare-fun lt!1442162 () Option!9348)

(assert (=> b!4047918 (= e!2511617 (= (size!32357 (_1!24311 (get!14199 lt!1442162))) (size!32358 (originalCharacters!7534 (_1!24311 (get!14199 lt!1442162))))))))

(declare-fun d!1201958 () Bool)

(declare-fun e!2511619 () Bool)

(assert (=> d!1201958 e!2511619))

(declare-fun res!1649165 () Bool)

(assert (=> d!1201958 (=> res!1649165 e!2511619)))

(assert (=> d!1201958 (= res!1649165 (isEmpty!25830 lt!1442162))))

(declare-fun e!2511616 () Option!9348)

(assert (=> d!1201958 (= lt!1442162 e!2511616)))

(declare-fun c!699357 () Bool)

(declare-fun lt!1442163 () tuple2!42356)

(assert (=> d!1201958 (= c!699357 (isEmpty!25831 (_1!24312 lt!1442163)))))

(assert (=> d!1201958 (= lt!1442163 (findLongestMatch!1303 (regex!6934 (h!48703 rules!2999)) lt!1441304))))

(assert (=> d!1201958 (ruleValid!2864 thiss!21717 (h!48703 rules!2999))))

(assert (=> d!1201958 (= (maxPrefixOneRule!2833 thiss!21717 (h!48703 rules!2999) lt!1441304) lt!1442162)))

(declare-fun b!4047919 () Bool)

(assert (=> b!4047919 (= e!2511616 None!9347)))

(declare-fun b!4047920 () Bool)

(declare-fun res!1649166 () Bool)

(assert (=> b!4047920 (=> (not res!1649166) (not e!2511617))))

(assert (=> b!4047920 (= res!1649166 (< (size!32358 (_2!24311 (get!14199 lt!1442162))) (size!32358 lt!1441304)))))

(declare-fun b!4047921 () Bool)

(declare-fun res!1649163 () Bool)

(assert (=> b!4047921 (=> (not res!1649163) (not e!2511617))))

(assert (=> b!4047921 (= res!1649163 (= (value!218253 (_1!24311 (get!14199 lt!1442162))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1442162)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1442162)))))))))

(declare-fun b!4047922 () Bool)

(declare-fun e!2511618 () Bool)

(assert (=> b!4047922 (= e!2511618 (matchR!5792 (regex!6934 (h!48703 rules!2999)) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (h!48703 rules!2999)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(declare-fun b!4047923 () Bool)

(assert (=> b!4047923 (= e!2511616 (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (h!48703 rules!2999)) (seqFromList!5151 (_1!24312 lt!1442163))) (h!48703 rules!2999) (size!32359 (seqFromList!5151 (_1!24312 lt!1442163))) (_1!24312 lt!1442163)) (_2!24312 lt!1442163))))))

(declare-fun lt!1442164 () Unit!62527)

(assert (=> b!4047923 (= lt!1442164 (longestMatchIsAcceptedByMatchOrIsEmpty!1363 (regex!6934 (h!48703 rules!2999)) lt!1441304))))

(declare-fun res!1649167 () Bool)

(assert (=> b!4047923 (= res!1649167 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (h!48703 rules!2999)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(assert (=> b!4047923 (=> res!1649167 e!2511618)))

(assert (=> b!4047923 e!2511618))

(declare-fun lt!1442160 () Unit!62527)

(assert (=> b!4047923 (= lt!1442160 lt!1442164)))

(declare-fun lt!1442161 () Unit!62527)

(assert (=> b!4047923 (= lt!1442161 (lemmaSemiInverse!1912 (transformation!6934 (h!48703 rules!2999)) (seqFromList!5151 (_1!24312 lt!1442163))))))

(declare-fun b!4047924 () Bool)

(declare-fun res!1649168 () Bool)

(assert (=> b!4047924 (=> (not res!1649168) (not e!2511617))))

(assert (=> b!4047924 (= res!1649168 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442162)))) (_2!24311 (get!14199 lt!1442162))) lt!1441304))))

(declare-fun b!4047925 () Bool)

(assert (=> b!4047925 (= e!2511619 e!2511617)))

(declare-fun res!1649162 () Bool)

(assert (=> b!4047925 (=> (not res!1649162) (not e!2511617))))

(assert (=> b!4047925 (= res!1649162 (matchR!5792 (regex!6934 (h!48703 rules!2999)) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442162))))))))

(declare-fun b!4047926 () Bool)

(declare-fun res!1649164 () Bool)

(assert (=> b!4047926 (=> (not res!1649164) (not e!2511617))))

(assert (=> b!4047926 (= res!1649164 (= (rule!10010 (_1!24311 (get!14199 lt!1442162))) (h!48703 rules!2999)))))

(assert (= (and d!1201958 c!699357) b!4047919))

(assert (= (and d!1201958 (not c!699357)) b!4047923))

(assert (= (and b!4047923 (not res!1649167)) b!4047922))

(assert (= (and d!1201958 (not res!1649165)) b!4047925))

(assert (= (and b!4047925 res!1649162) b!4047924))

(assert (= (and b!4047924 res!1649168) b!4047920))

(assert (= (and b!4047920 res!1649166) b!4047926))

(assert (= (and b!4047926 res!1649164) b!4047921))

(assert (= (and b!4047921 res!1649163) b!4047918))

(assert (=> b!4047922 m!4645119))

(assert (=> b!4047922 m!4645323))

(assert (=> b!4047922 m!4645119))

(assert (=> b!4047922 m!4645323))

(declare-fun m!4647641 () Bool)

(assert (=> b!4047922 m!4647641))

(declare-fun m!4647643 () Bool)

(assert (=> b!4047922 m!4647643))

(declare-fun m!4647645 () Bool)

(assert (=> b!4047924 m!4647645))

(declare-fun m!4647647 () Bool)

(assert (=> b!4047924 m!4647647))

(assert (=> b!4047924 m!4647647))

(declare-fun m!4647649 () Bool)

(assert (=> b!4047924 m!4647649))

(assert (=> b!4047924 m!4647649))

(declare-fun m!4647651 () Bool)

(assert (=> b!4047924 m!4647651))

(declare-fun m!4647653 () Bool)

(assert (=> d!1201958 m!4647653))

(declare-fun m!4647655 () Bool)

(assert (=> d!1201958 m!4647655))

(declare-fun m!4647657 () Bool)

(assert (=> d!1201958 m!4647657))

(declare-fun m!4647659 () Bool)

(assert (=> d!1201958 m!4647659))

(assert (=> b!4047926 m!4647645))

(assert (=> b!4047918 m!4647645))

(declare-fun m!4647661 () Bool)

(assert (=> b!4047918 m!4647661))

(assert (=> b!4047923 m!4645323))

(assert (=> b!4047923 m!4645119))

(assert (=> b!4047923 m!4645323))

(assert (=> b!4047923 m!4647641))

(declare-fun m!4647663 () Bool)

(assert (=> b!4047923 m!4647663))

(declare-fun m!4647665 () Bool)

(assert (=> b!4047923 m!4647665))

(assert (=> b!4047923 m!4647663))

(assert (=> b!4047923 m!4645119))

(assert (=> b!4047923 m!4647663))

(declare-fun m!4647667 () Bool)

(assert (=> b!4047923 m!4647667))

(assert (=> b!4047923 m!4647663))

(declare-fun m!4647669 () Bool)

(assert (=> b!4047923 m!4647669))

(declare-fun m!4647671 () Bool)

(assert (=> b!4047923 m!4647671))

(declare-fun m!4647673 () Bool)

(assert (=> b!4047923 m!4647673))

(assert (=> b!4047921 m!4647645))

(declare-fun m!4647675 () Bool)

(assert (=> b!4047921 m!4647675))

(assert (=> b!4047921 m!4647675))

(declare-fun m!4647677 () Bool)

(assert (=> b!4047921 m!4647677))

(assert (=> b!4047920 m!4647645))

(declare-fun m!4647679 () Bool)

(assert (=> b!4047920 m!4647679))

(assert (=> b!4047920 m!4645323))

(assert (=> b!4047925 m!4647645))

(assert (=> b!4047925 m!4647647))

(assert (=> b!4047925 m!4647647))

(assert (=> b!4047925 m!4647649))

(assert (=> b!4047925 m!4647649))

(declare-fun m!4647681 () Bool)

(assert (=> b!4047925 m!4647681))

(assert (=> bm!287665 d!1201958))

(declare-fun b!4047929 () Bool)

(declare-fun e!2511622 () Bool)

(assert (=> b!4047929 (= e!2511622 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441314)) (tail!6289 (tail!6289 lt!1441323))))))

(declare-fun d!1201960 () Bool)

(declare-fun e!2511621 () Bool)

(assert (=> d!1201960 e!2511621))

(declare-fun res!1649169 () Bool)

(assert (=> d!1201960 (=> res!1649169 e!2511621)))

(declare-fun lt!1442165 () Bool)

(assert (=> d!1201960 (= res!1649169 (not lt!1442165))))

(declare-fun e!2511620 () Bool)

(assert (=> d!1201960 (= lt!1442165 e!2511620)))

(declare-fun res!1649171 () Bool)

(assert (=> d!1201960 (=> res!1649171 e!2511620)))

(assert (=> d!1201960 (= res!1649171 ((_ is Nil!43281) (tail!6289 lt!1441314)))))

(assert (=> d!1201960 (= (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441323)) lt!1442165)))

(declare-fun b!4047927 () Bool)

(assert (=> b!4047927 (= e!2511620 e!2511622)))

(declare-fun res!1649170 () Bool)

(assert (=> b!4047927 (=> (not res!1649170) (not e!2511622))))

(assert (=> b!4047927 (= res!1649170 (not ((_ is Nil!43281) (tail!6289 lt!1441323))))))

(declare-fun b!4047928 () Bool)

(declare-fun res!1649172 () Bool)

(assert (=> b!4047928 (=> (not res!1649172) (not e!2511622))))

(assert (=> b!4047928 (= res!1649172 (= (head!8557 (tail!6289 lt!1441314)) (head!8557 (tail!6289 lt!1441323))))))

(declare-fun b!4047930 () Bool)

(assert (=> b!4047930 (= e!2511621 (>= (size!32358 (tail!6289 lt!1441323)) (size!32358 (tail!6289 lt!1441314))))))

(assert (= (and d!1201960 (not res!1649171)) b!4047927))

(assert (= (and b!4047927 res!1649170) b!4047928))

(assert (= (and b!4047928 res!1649172) b!4047929))

(assert (= (and d!1201960 (not res!1649169)) b!4047930))

(assert (=> b!4047929 m!4644691))

(assert (=> b!4047929 m!4646053))

(assert (=> b!4047929 m!4645483))

(declare-fun m!4647683 () Bool)

(assert (=> b!4047929 m!4647683))

(assert (=> b!4047929 m!4646053))

(assert (=> b!4047929 m!4647683))

(declare-fun m!4647685 () Bool)

(assert (=> b!4047929 m!4647685))

(assert (=> b!4047928 m!4644691))

(assert (=> b!4047928 m!4646059))

(assert (=> b!4047928 m!4645483))

(declare-fun m!4647687 () Bool)

(assert (=> b!4047928 m!4647687))

(assert (=> b!4047930 m!4645483))

(declare-fun m!4647689 () Bool)

(assert (=> b!4047930 m!4647689))

(assert (=> b!4047930 m!4644691))

(assert (=> b!4047930 m!4646065))

(assert (=> b!4046478 d!1201960))

(assert (=> b!4046478 d!1201240))

(declare-fun d!1201962 () Bool)

(assert (=> d!1201962 (= (tail!6289 lt!1441323) (t!335502 lt!1441323))))

(assert (=> b!4046478 d!1201962))

(declare-fun d!1201964 () Bool)

(assert (=> d!1201964 (= suffixResult!105 lt!1441319)))

(assert (=> d!1201964 true))

(declare-fun _$63!1134 () Unit!62527)

(assert (=> d!1201964 (= (choose!24526 lt!1441296 suffixResult!105 lt!1441296 lt!1441319 lt!1441304) _$63!1134)))

(assert (=> d!1200896 d!1201964))

(assert (=> d!1200896 d!1200966))

(declare-fun b!4047931 () Bool)

(declare-fun res!1649174 () Bool)

(declare-fun e!2511624 () Bool)

(assert (=> b!4047931 (=> (not res!1649174) (not e!2511624))))

(declare-fun lt!1442166 () Option!9348)

(assert (=> b!4047931 (= res!1649174 (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1442166)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442166))))))))

(declare-fun b!4047932 () Bool)

(declare-fun e!2511625 () Option!9348)

(declare-fun lt!1442170 () Option!9348)

(declare-fun lt!1442168 () Option!9348)

(assert (=> b!4047932 (= e!2511625 (ite (and ((_ is None!9347) lt!1442170) ((_ is None!9347) lt!1442168)) None!9347 (ite ((_ is None!9347) lt!1442168) lt!1442170 (ite ((_ is None!9347) lt!1442170) lt!1442168 (ite (>= (size!32357 (_1!24311 (v!39751 lt!1442170))) (size!32357 (_1!24311 (v!39751 lt!1442168)))) lt!1442170 lt!1442168)))))))

(declare-fun call!287802 () Option!9348)

(assert (=> b!4047932 (= lt!1442170 call!287802)))

(assert (=> b!4047932 (= lt!1442168 (maxPrefix!3821 thiss!21717 (t!335504 (t!335504 rules!2999)) lt!1441294))))

(declare-fun b!4047933 () Bool)

(assert (=> b!4047933 (= e!2511625 call!287802)))

(declare-fun bm!287797 () Bool)

(assert (=> bm!287797 (= call!287802 (maxPrefixOneRule!2833 thiss!21717 (h!48703 (t!335504 rules!2999)) lt!1441294))))

(declare-fun b!4047934 () Bool)

(assert (=> b!4047934 (= e!2511624 (contains!8604 (t!335504 rules!2999) (rule!10010 (_1!24311 (get!14199 lt!1442166)))))))

(declare-fun d!1201966 () Bool)

(declare-fun e!2511623 () Bool)

(assert (=> d!1201966 e!2511623))

(declare-fun res!1649175 () Bool)

(assert (=> d!1201966 (=> res!1649175 e!2511623)))

(assert (=> d!1201966 (= res!1649175 (isEmpty!25830 lt!1442166))))

(assert (=> d!1201966 (= lt!1442166 e!2511625)))

(declare-fun c!699358 () Bool)

(assert (=> d!1201966 (= c!699358 (and ((_ is Cons!43283) (t!335504 rules!2999)) ((_ is Nil!43283) (t!335504 (t!335504 rules!2999)))))))

(declare-fun lt!1442169 () Unit!62527)

(declare-fun lt!1442167 () Unit!62527)

(assert (=> d!1201966 (= lt!1442169 lt!1442167)))

(assert (=> d!1201966 (isPrefix!4021 lt!1441294 lt!1441294)))

(assert (=> d!1201966 (= lt!1442167 (lemmaIsPrefixRefl!2588 lt!1441294 lt!1441294))))

(assert (=> d!1201966 (rulesValidInductive!2529 thiss!21717 (t!335504 rules!2999))))

(assert (=> d!1201966 (= (maxPrefix!3821 thiss!21717 (t!335504 rules!2999) lt!1441294) lt!1442166)))

(declare-fun b!4047935 () Bool)

(declare-fun res!1649179 () Bool)

(assert (=> b!4047935 (=> (not res!1649179) (not e!2511624))))

(assert (=> b!4047935 (= res!1649179 (< (size!32358 (_2!24311 (get!14199 lt!1442166))) (size!32358 lt!1441294)))))

(declare-fun b!4047936 () Bool)

(declare-fun res!1649173 () Bool)

(assert (=> b!4047936 (=> (not res!1649173) (not e!2511624))))

(assert (=> b!4047936 (= res!1649173 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442166)))) (_2!24311 (get!14199 lt!1442166))) lt!1441294))))

(declare-fun b!4047937 () Bool)

(declare-fun res!1649178 () Bool)

(assert (=> b!4047937 (=> (not res!1649178) (not e!2511624))))

(assert (=> b!4047937 (= res!1649178 (= (value!218253 (_1!24311 (get!14199 lt!1442166))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1442166)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1442166)))))))))

(declare-fun b!4047938 () Bool)

(assert (=> b!4047938 (= e!2511623 e!2511624)))

(declare-fun res!1649177 () Bool)

(assert (=> b!4047938 (=> (not res!1649177) (not e!2511624))))

(assert (=> b!4047938 (= res!1649177 (isDefined!7108 lt!1442166))))

(declare-fun b!4047939 () Bool)

(declare-fun res!1649176 () Bool)

(assert (=> b!4047939 (=> (not res!1649176) (not e!2511624))))

(assert (=> b!4047939 (= res!1649176 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442166)))) (originalCharacters!7534 (_1!24311 (get!14199 lt!1442166)))))))

(assert (= (and d!1201966 c!699358) b!4047933))

(assert (= (and d!1201966 (not c!699358)) b!4047932))

(assert (= (or b!4047933 b!4047932) bm!287797))

(assert (= (and d!1201966 (not res!1649175)) b!4047938))

(assert (= (and b!4047938 res!1649177) b!4047939))

(assert (= (and b!4047939 res!1649176) b!4047935))

(assert (= (and b!4047935 res!1649179) b!4047936))

(assert (= (and b!4047936 res!1649173) b!4047937))

(assert (= (and b!4047937 res!1649178) b!4047931))

(assert (= (and b!4047931 res!1649174) b!4047934))

(declare-fun m!4647691 () Bool)

(assert (=> b!4047939 m!4647691))

(declare-fun m!4647693 () Bool)

(assert (=> b!4047939 m!4647693))

(assert (=> b!4047939 m!4647693))

(declare-fun m!4647695 () Bool)

(assert (=> b!4047939 m!4647695))

(declare-fun m!4647697 () Bool)

(assert (=> b!4047938 m!4647697))

(assert (=> b!4047935 m!4647691))

(declare-fun m!4647699 () Bool)

(assert (=> b!4047935 m!4647699))

(assert (=> b!4047935 m!4645121))

(declare-fun m!4647701 () Bool)

(assert (=> b!4047932 m!4647701))

(declare-fun m!4647703 () Bool)

(assert (=> bm!287797 m!4647703))

(assert (=> b!4047936 m!4647691))

(assert (=> b!4047936 m!4647693))

(assert (=> b!4047936 m!4647693))

(assert (=> b!4047936 m!4647695))

(assert (=> b!4047936 m!4647695))

(declare-fun m!4647705 () Bool)

(assert (=> b!4047936 m!4647705))

(assert (=> b!4047937 m!4647691))

(declare-fun m!4647707 () Bool)

(assert (=> b!4047937 m!4647707))

(assert (=> b!4047937 m!4647707))

(declare-fun m!4647709 () Bool)

(assert (=> b!4047937 m!4647709))

(assert (=> b!4047934 m!4647691))

(declare-fun m!4647711 () Bool)

(assert (=> b!4047934 m!4647711))

(declare-fun m!4647713 () Bool)

(assert (=> d!1201966 m!4647713))

(assert (=> d!1201966 m!4645227))

(assert (=> d!1201966 m!4645229))

(assert (=> d!1201966 m!4647251))

(assert (=> b!4047931 m!4647691))

(assert (=> b!4047931 m!4647693))

(assert (=> b!4047931 m!4647693))

(assert (=> b!4047931 m!4647695))

(assert (=> b!4047931 m!4647695))

(declare-fun m!4647715 () Bool)

(assert (=> b!4047931 m!4647715))

(assert (=> b!4046372 d!1201966))

(declare-fun b!4047942 () Bool)

(declare-fun e!2511628 () Bool)

(assert (=> b!4047942 (= e!2511628 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 (++!11336 lt!1441296 lt!1441319))))))

(declare-fun d!1201968 () Bool)

(declare-fun e!2511627 () Bool)

(assert (=> d!1201968 e!2511627))

(declare-fun res!1649180 () Bool)

(assert (=> d!1201968 (=> res!1649180 e!2511627)))

(declare-fun lt!1442171 () Bool)

(assert (=> d!1201968 (= res!1649180 (not lt!1442171))))

(declare-fun e!2511626 () Bool)

(assert (=> d!1201968 (= lt!1442171 e!2511626)))

(declare-fun res!1649182 () Bool)

(assert (=> d!1201968 (=> res!1649182 e!2511626)))

(assert (=> d!1201968 (= res!1649182 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1201968 (= (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 lt!1441319)) lt!1442171)))

(declare-fun b!4047940 () Bool)

(assert (=> b!4047940 (= e!2511626 e!2511628)))

(declare-fun res!1649181 () Bool)

(assert (=> b!4047940 (=> (not res!1649181) (not e!2511628))))

(assert (=> b!4047940 (= res!1649181 (not ((_ is Nil!43281) (++!11336 lt!1441296 lt!1441319))))))

(declare-fun b!4047941 () Bool)

(declare-fun res!1649183 () Bool)

(assert (=> b!4047941 (=> (not res!1649183) (not e!2511628))))

(assert (=> b!4047941 (= res!1649183 (= (head!8557 lt!1441296) (head!8557 (++!11336 lt!1441296 lt!1441319))))))

(declare-fun b!4047943 () Bool)

(assert (=> b!4047943 (= e!2511627 (>= (size!32358 (++!11336 lt!1441296 lt!1441319)) (size!32358 lt!1441296)))))

(assert (= (and d!1201968 (not res!1649182)) b!4047940))

(assert (= (and b!4047940 res!1649181) b!4047941))

(assert (= (and b!4047941 res!1649183) b!4047942))

(assert (= (and d!1201968 (not res!1649180)) b!4047943))

(assert (=> b!4047942 m!4645237))

(assert (=> b!4047942 m!4644423))

(declare-fun m!4647717 () Bool)

(assert (=> b!4047942 m!4647717))

(assert (=> b!4047942 m!4645237))

(assert (=> b!4047942 m!4647717))

(declare-fun m!4647719 () Bool)

(assert (=> b!4047942 m!4647719))

(assert (=> b!4047941 m!4645243))

(assert (=> b!4047941 m!4644423))

(declare-fun m!4647721 () Bool)

(assert (=> b!4047941 m!4647721))

(assert (=> b!4047943 m!4644423))

(declare-fun m!4647723 () Bool)

(assert (=> b!4047943 m!4647723))

(assert (=> b!4047943 m!4644369))

(assert (=> d!1200900 d!1201968))

(assert (=> d!1200900 d!1200930))

(declare-fun d!1201970 () Bool)

(assert (=> d!1201970 (isPrefix!4021 lt!1441296 (++!11336 lt!1441296 lt!1441319))))

(assert (=> d!1201970 true))

(declare-fun _$46!1803 () Unit!62527)

(assert (=> d!1201970 (= (choose!24523 lt!1441296 lt!1441319) _$46!1803)))

(declare-fun bs!591359 () Bool)

(assert (= bs!591359 d!1201970))

(assert (=> bs!591359 m!4644423))

(assert (=> bs!591359 m!4644423))

(assert (=> bs!591359 m!4645249))

(assert (=> d!1200900 d!1201970))

(declare-fun bs!591360 () Bool)

(declare-fun d!1201972 () Bool)

(assert (= bs!591360 (and d!1201972 d!1201298)))

(declare-fun lambda!127491 () Int)

(assert (=> bs!591360 (= (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) (= lambda!127491 lambda!127482))))

(assert (=> d!1201972 true))

(assert (=> d!1201972 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (h!48703 rules!2999)))) (dynLambda!18388 order!22681 lambda!127491))))

(assert (=> d!1201972 (= (equivClasses!2861 (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (h!48703 rules!2999)))) (Forall2!1095 lambda!127491))))

(declare-fun bs!591361 () Bool)

(assert (= bs!591361 d!1201972))

(declare-fun m!4647725 () Bool)

(assert (=> bs!591361 m!4647725))

(assert (=> b!4046452 d!1201972))

(declare-fun d!1201974 () Bool)

(declare-fun lt!1442172 () Int)

(assert (=> d!1201974 (>= lt!1442172 0)))

(declare-fun e!2511629 () Int)

(assert (=> d!1201974 (= lt!1442172 e!2511629)))

(declare-fun c!699359 () Bool)

(assert (=> d!1201974 (= c!699359 ((_ is Nil!43281) (_2!24311 (get!14199 lt!1441550))))))

(assert (=> d!1201974 (= (size!32358 (_2!24311 (get!14199 lt!1441550))) lt!1442172)))

(declare-fun b!4047944 () Bool)

(assert (=> b!4047944 (= e!2511629 0)))

(declare-fun b!4047945 () Bool)

(assert (=> b!4047945 (= e!2511629 (+ 1 (size!32358 (t!335502 (_2!24311 (get!14199 lt!1441550))))))))

(assert (= (and d!1201974 c!699359) b!4047944))

(assert (= (and d!1201974 (not c!699359)) b!4047945))

(declare-fun m!4647727 () Bool)

(assert (=> b!4047945 m!4647727))

(assert (=> b!4046412 d!1201974))

(assert (=> b!4046412 d!1201278))

(assert (=> b!4046412 d!1201776))

(declare-fun b!4047947 () Bool)

(declare-fun e!2511631 () List!43405)

(assert (=> b!4047947 (= e!2511631 (Cons!43281 (h!48701 newSuffix!27) (++!11336 (t!335502 newSuffix!27) lt!1441583)))))

(declare-fun b!4047948 () Bool)

(declare-fun res!1649185 () Bool)

(declare-fun e!2511630 () Bool)

(assert (=> b!4047948 (=> (not res!1649185) (not e!2511630))))

(declare-fun lt!1442173 () List!43405)

(assert (=> b!4047948 (= res!1649185 (= (size!32358 lt!1442173) (+ (size!32358 newSuffix!27) (size!32358 lt!1441583))))))

(declare-fun b!4047949 () Bool)

(assert (=> b!4047949 (= e!2511630 (or (not (= lt!1441583 Nil!43281)) (= lt!1442173 newSuffix!27)))))

(declare-fun b!4047946 () Bool)

(assert (=> b!4047946 (= e!2511631 lt!1441583)))

(declare-fun d!1201976 () Bool)

(assert (=> d!1201976 e!2511630))

(declare-fun res!1649184 () Bool)

(assert (=> d!1201976 (=> (not res!1649184) (not e!2511630))))

(assert (=> d!1201976 (= res!1649184 (= (content!6586 lt!1442173) ((_ map or) (content!6586 newSuffix!27) (content!6586 lt!1441583))))))

(assert (=> d!1201976 (= lt!1442173 e!2511631)))

(declare-fun c!699360 () Bool)

(assert (=> d!1201976 (= c!699360 ((_ is Nil!43281) newSuffix!27))))

(assert (=> d!1201976 (= (++!11336 newSuffix!27 lt!1441583) lt!1442173)))

(assert (= (and d!1201976 c!699360) b!4047946))

(assert (= (and d!1201976 (not c!699360)) b!4047947))

(assert (= (and d!1201976 res!1649184) b!4047948))

(assert (= (and b!4047948 res!1649185) b!4047949))

(declare-fun m!4647729 () Bool)

(assert (=> b!4047947 m!4647729))

(declare-fun m!4647731 () Bool)

(assert (=> b!4047948 m!4647731))

(assert (=> b!4047948 m!4644353))

(declare-fun m!4647733 () Bool)

(assert (=> b!4047948 m!4647733))

(declare-fun m!4647735 () Bool)

(assert (=> d!1201976 m!4647735))

(assert (=> d!1201976 m!4645503))

(declare-fun m!4647737 () Bool)

(assert (=> d!1201976 m!4647737))

(assert (=> d!1200980 d!1201976))

(assert (=> d!1200980 d!1200910))

(assert (=> d!1200980 d!1200912))

(assert (=> b!4046379 d!1201932))

(assert (=> b!4046379 d!1201934))

(assert (=> b!4046379 d!1201264))

(declare-fun d!1201978 () Bool)

(declare-fun c!699361 () Bool)

(assert (=> d!1201978 (= c!699361 ((_ is Nil!43281) lt!1441533))))

(declare-fun e!2511632 () (InoxSet C!23864))

(assert (=> d!1201978 (= (content!6586 lt!1441533) e!2511632)))

(declare-fun b!4047950 () Bool)

(assert (=> b!4047950 (= e!2511632 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047951 () Bool)

(assert (=> b!4047951 (= e!2511632 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441533) true) (content!6586 (t!335502 lt!1441533))))))

(assert (= (and d!1201978 c!699361) b!4047950))

(assert (= (and d!1201978 (not c!699361)) b!4047951))

(declare-fun m!4647739 () Bool)

(assert (=> b!4047951 m!4647739))

(declare-fun m!4647741 () Bool)

(assert (=> b!4047951 m!4647741))

(assert (=> d!1200902 d!1201978))

(assert (=> d!1200902 d!1201268))

(declare-fun d!1201980 () Bool)

(declare-fun c!699362 () Bool)

(assert (=> d!1201980 (= c!699362 ((_ is Nil!43281) lt!1441278))))

(declare-fun e!2511633 () (InoxSet C!23864))

(assert (=> d!1201980 (= (content!6586 lt!1441278) e!2511633)))

(declare-fun b!4047952 () Bool)

(assert (=> b!4047952 (= e!2511633 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4047953 () Bool)

(assert (=> b!4047953 (= e!2511633 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441278) true) (content!6586 (t!335502 lt!1441278))))))

(assert (= (and d!1201980 c!699362) b!4047952))

(assert (= (and d!1201980 (not c!699362)) b!4047953))

(declare-fun m!4647743 () Bool)

(assert (=> b!4047953 m!4647743))

(declare-fun m!4647745 () Bool)

(assert (=> b!4047953 m!4647745))

(assert (=> d!1200902 d!1201980))

(assert (=> b!4046473 d!1201694))

(assert (=> b!4046473 d!1201832))

(assert (=> b!4046467 d!1201776))

(assert (=> b!4046467 d!1200998))

(declare-fun b!4047955 () Bool)

(declare-fun e!2511635 () List!43405)

(assert (=> b!4047955 (= e!2511635 (Cons!43281 (h!48701 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))) (++!11336 (t!335502 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))) (_2!24311 (get!14199 lt!1441500)))))))

(declare-fun b!4047956 () Bool)

(declare-fun res!1649187 () Bool)

(declare-fun e!2511634 () Bool)

(assert (=> b!4047956 (=> (not res!1649187) (not e!2511634))))

(declare-fun lt!1442174 () List!43405)

(assert (=> b!4047956 (= res!1649187 (= (size!32358 lt!1442174) (+ (size!32358 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))) (size!32358 (_2!24311 (get!14199 lt!1441500))))))))

(declare-fun b!4047957 () Bool)

(assert (=> b!4047957 (= e!2511634 (or (not (= (_2!24311 (get!14199 lt!1441500)) Nil!43281)) (= lt!1442174 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500)))))))))

(declare-fun b!4047954 () Bool)

(assert (=> b!4047954 (= e!2511635 (_2!24311 (get!14199 lt!1441500)))))

(declare-fun d!1201982 () Bool)

(assert (=> d!1201982 e!2511634))

(declare-fun res!1649186 () Bool)

(assert (=> d!1201982 (=> (not res!1649186) (not e!2511634))))

(assert (=> d!1201982 (= res!1649186 (= (content!6586 lt!1442174) ((_ map or) (content!6586 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))) (content!6586 (_2!24311 (get!14199 lt!1441500))))))))

(assert (=> d!1201982 (= lt!1442174 e!2511635)))

(declare-fun c!699363 () Bool)

(assert (=> d!1201982 (= c!699363 ((_ is Nil!43281) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))))))

(assert (=> d!1201982 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500)))) (_2!24311 (get!14199 lt!1441500))) lt!1442174)))

(assert (= (and d!1201982 c!699363) b!4047954))

(assert (= (and d!1201982 (not c!699363)) b!4047955))

(assert (= (and d!1201982 res!1649186) b!4047956))

(assert (= (and b!4047956 res!1649187) b!4047957))

(declare-fun m!4647747 () Bool)

(assert (=> b!4047955 m!4647747))

(declare-fun m!4647749 () Bool)

(assert (=> b!4047956 m!4647749))

(assert (=> b!4047956 m!4645131))

(declare-fun m!4647751 () Bool)

(assert (=> b!4047956 m!4647751))

(assert (=> b!4047956 m!4645159))

(declare-fun m!4647753 () Bool)

(assert (=> d!1201982 m!4647753))

(assert (=> d!1201982 m!4645131))

(declare-fun m!4647755 () Bool)

(assert (=> d!1201982 m!4647755))

(declare-fun m!4647757 () Bool)

(assert (=> d!1201982 m!4647757))

(assert (=> b!4046286 d!1201982))

(declare-fun d!1201984 () Bool)

(assert (=> d!1201984 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500)))) (list!16122 (c!698890 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))))))

(declare-fun bs!591362 () Bool)

(assert (= bs!591362 d!1201984))

(declare-fun m!4647759 () Bool)

(assert (=> bs!591362 m!4647759))

(assert (=> b!4046286 d!1201984))

(declare-fun d!1201986 () Bool)

(declare-fun lt!1442175 () BalanceConc!25884)

(assert (=> d!1201986 (= (list!16120 lt!1442175) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500))))))

(assert (=> d!1201986 (= lt!1442175 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500))))) (value!218253 (_1!24311 (get!14199 lt!1441500)))))))

(assert (=> d!1201986 (= (charsOf!4750 (_1!24311 (get!14199 lt!1441500))) lt!1442175)))

(declare-fun b_lambda!118285 () Bool)

(assert (=> (not b_lambda!118285) (not d!1201986)))

(declare-fun tb!243529 () Bool)

(declare-fun t!335709 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335709) tb!243529))

(declare-fun b!4047958 () Bool)

(declare-fun e!2511636 () Bool)

(declare-fun tp!1227954 () Bool)

(assert (=> b!4047958 (= e!2511636 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500))))) (value!218253 (_1!24311 (get!14199 lt!1441500)))))) tp!1227954))))

(declare-fun result!295096 () Bool)

(assert (=> tb!243529 (= result!295096 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500))))) (value!218253 (_1!24311 (get!14199 lt!1441500))))) e!2511636))))

(assert (= tb!243529 b!4047958))

(declare-fun m!4647761 () Bool)

(assert (=> b!4047958 m!4647761))

(declare-fun m!4647763 () Bool)

(assert (=> tb!243529 m!4647763))

(assert (=> d!1201986 t!335709))

(declare-fun b_and!311311 () Bool)

(assert (= b_and!311305 (and (=> t!335709 result!295096) b_and!311311)))

(declare-fun t!335711 () Bool)

(declare-fun tb!243531 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335711) tb!243531))

(declare-fun result!295098 () Bool)

(assert (= result!295098 result!295096))

(assert (=> d!1201986 t!335711))

(declare-fun b_and!311313 () Bool)

(assert (= b_and!311307 (and (=> t!335711 result!295098) b_and!311313)))

(declare-fun t!335713 () Bool)

(declare-fun tb!243533 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335713) tb!243533))

(declare-fun result!295100 () Bool)

(assert (= result!295100 result!295096))

(assert (=> d!1201986 t!335713))

(declare-fun b_and!311315 () Bool)

(assert (= b_and!311309 (and (=> t!335713 result!295100) b_and!311315)))

(declare-fun m!4647765 () Bool)

(assert (=> d!1201986 m!4647765))

(declare-fun m!4647767 () Bool)

(assert (=> d!1201986 m!4647767))

(assert (=> b!4046286 d!1201986))

(assert (=> b!4046286 d!1201716))

(assert (=> b!4046584 d!1201898))

(assert (=> b!4046584 d!1201258))

(assert (=> b!4046052 d!1201694))

(declare-fun d!1201988 () Bool)

(assert (=> d!1201988 (= (head!8557 (++!11336 lt!1441314 newSuffixResult!27)) (h!48701 (++!11336 lt!1441314 newSuffixResult!27)))))

(assert (=> b!4046052 d!1201988))

(declare-fun b!4047961 () Bool)

(declare-fun e!2511639 () Bool)

(assert (=> b!4047961 (= e!2511639 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441296)) (tail!6289 (tail!6289 lt!1441304))))))

(declare-fun d!1201990 () Bool)

(declare-fun e!2511638 () Bool)

(assert (=> d!1201990 e!2511638))

(declare-fun res!1649188 () Bool)

(assert (=> d!1201990 (=> res!1649188 e!2511638)))

(declare-fun lt!1442176 () Bool)

(assert (=> d!1201990 (= res!1649188 (not lt!1442176))))

(declare-fun e!2511637 () Bool)

(assert (=> d!1201990 (= lt!1442176 e!2511637)))

(declare-fun res!1649190 () Bool)

(assert (=> d!1201990 (=> res!1649190 e!2511637)))

(assert (=> d!1201990 (= res!1649190 ((_ is Nil!43281) (tail!6289 lt!1441296)))))

(assert (=> d!1201990 (= (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441304)) lt!1442176)))

(declare-fun b!4047959 () Bool)

(assert (=> b!4047959 (= e!2511637 e!2511639)))

(declare-fun res!1649189 () Bool)

(assert (=> b!4047959 (=> (not res!1649189) (not e!2511639))))

(assert (=> b!4047959 (= res!1649189 (not ((_ is Nil!43281) (tail!6289 lt!1441304))))))

(declare-fun b!4047960 () Bool)

(declare-fun res!1649191 () Bool)

(assert (=> b!4047960 (=> (not res!1649191) (not e!2511639))))

(assert (=> b!4047960 (= res!1649191 (= (head!8557 (tail!6289 lt!1441296)) (head!8557 (tail!6289 lt!1441304))))))

(declare-fun b!4047962 () Bool)

(assert (=> b!4047962 (= e!2511638 (>= (size!32358 (tail!6289 lt!1441304)) (size!32358 (tail!6289 lt!1441296))))))

(assert (= (and d!1201990 (not res!1649190)) b!4047959))

(assert (= (and b!4047959 res!1649189) b!4047960))

(assert (= (and b!4047960 res!1649191) b!4047961))

(assert (= (and d!1201990 (not res!1649188)) b!4047962))

(assert (=> b!4047961 m!4645237))

(assert (=> b!4047961 m!4646091))

(assert (=> b!4047961 m!4645379))

(assert (=> b!4047961 m!4646171))

(assert (=> b!4047961 m!4646091))

(assert (=> b!4047961 m!4646171))

(declare-fun m!4647769 () Bool)

(assert (=> b!4047961 m!4647769))

(assert (=> b!4047960 m!4645237))

(assert (=> b!4047960 m!4646097))

(assert (=> b!4047960 m!4645379))

(declare-fun m!4647771 () Bool)

(assert (=> b!4047960 m!4647771))

(assert (=> b!4047962 m!4645379))

(assert (=> b!4047962 m!4646169))

(assert (=> b!4047962 m!4645237))

(assert (=> b!4047962 m!4646103))

(assert (=> b!4046462 d!1201990))

(assert (=> b!4046462 d!1201258))

(assert (=> b!4046462 d!1201294))

(declare-fun bm!287798 () Bool)

(declare-fun call!287804 () Bool)

(declare-fun call!287803 () Bool)

(assert (=> bm!287798 (= call!287804 call!287803)))

(declare-fun b!4047963 () Bool)

(declare-fun e!2511643 () Bool)

(declare-fun e!2511645 () Bool)

(assert (=> b!4047963 (= e!2511643 e!2511645)))

(declare-fun c!699365 () Bool)

(assert (=> b!4047963 (= c!699365 ((_ is Star!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4047964 () Bool)

(declare-fun e!2511641 () Bool)

(declare-fun call!287805 () Bool)

(assert (=> b!4047964 (= e!2511641 call!287805)))

(declare-fun b!4047965 () Bool)

(declare-fun e!2511646 () Bool)

(assert (=> b!4047965 (= e!2511646 call!287803)))

(declare-fun b!4047966 () Bool)

(declare-fun res!1649196 () Bool)

(declare-fun e!2511640 () Bool)

(assert (=> b!4047966 (=> res!1649196 e!2511640)))

(assert (=> b!4047966 (= res!1649196 (not ((_ is Concat!19004) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun e!2511644 () Bool)

(assert (=> b!4047966 (= e!2511644 e!2511640)))

(declare-fun b!4047967 () Bool)

(declare-fun e!2511642 () Bool)

(assert (=> b!4047967 (= e!2511642 call!287805)))

(declare-fun b!4047968 () Bool)

(assert (=> b!4047968 (= e!2511645 e!2511646)))

(declare-fun res!1649194 () Bool)

(assert (=> b!4047968 (= res!1649194 (not (nullable!4154 (reg!12168 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))))

(assert (=> b!4047968 (=> (not res!1649194) (not e!2511646))))

(declare-fun bm!287799 () Bool)

(declare-fun c!699364 () Bool)

(assert (=> bm!287799 (= call!287803 (validRegex!5354 (ite c!699365 (reg!12168 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (ite c!699364 (regOne!24191 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (regOne!24190 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))))

(declare-fun b!4047969 () Bool)

(assert (=> b!4047969 (= e!2511640 e!2511641)))

(declare-fun res!1649192 () Bool)

(assert (=> b!4047969 (=> (not res!1649192) (not e!2511641))))

(assert (=> b!4047969 (= res!1649192 call!287804)))

(declare-fun b!4047970 () Bool)

(assert (=> b!4047970 (= e!2511645 e!2511644)))

(assert (=> b!4047970 (= c!699364 ((_ is Union!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun bm!287800 () Bool)

(assert (=> bm!287800 (= call!287805 (validRegex!5354 (ite c!699364 (regTwo!24191 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (regTwo!24190 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))))

(declare-fun d!1201992 () Bool)

(declare-fun res!1649193 () Bool)

(assert (=> d!1201992 (=> res!1649193 e!2511643)))

(assert (=> d!1201992 (= res!1649193 ((_ is ElementMatch!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(assert (=> d!1201992 (= (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) e!2511643)))

(declare-fun b!4047971 () Bool)

(declare-fun res!1649195 () Bool)

(assert (=> b!4047971 (=> (not res!1649195) (not e!2511642))))

(assert (=> b!4047971 (= res!1649195 call!287804)))

(assert (=> b!4047971 (= e!2511644 e!2511642)))

(assert (= (and d!1201992 (not res!1649193)) b!4047963))

(assert (= (and b!4047963 c!699365) b!4047968))

(assert (= (and b!4047963 (not c!699365)) b!4047970))

(assert (= (and b!4047968 res!1649194) b!4047965))

(assert (= (and b!4047970 c!699364) b!4047971))

(assert (= (and b!4047970 (not c!699364)) b!4047966))

(assert (= (and b!4047971 res!1649195) b!4047967))

(assert (= (and b!4047966 (not res!1649196)) b!4047969))

(assert (= (and b!4047969 res!1649192) b!4047964))

(assert (= (or b!4047967 b!4047964) bm!287800))

(assert (= (or b!4047971 b!4047969) bm!287798))

(assert (= (or b!4047965 bm!287798) bm!287799))

(declare-fun m!4647773 () Bool)

(assert (=> b!4047968 m!4647773))

(declare-fun m!4647775 () Bool)

(assert (=> bm!287799 m!4647775))

(declare-fun m!4647777 () Bool)

(assert (=> bm!287800 m!4647777))

(assert (=> d!1200892 d!1201992))

(assert (=> b!4046575 d!1201710))

(declare-fun d!1201994 () Bool)

(declare-fun lt!1442177 () Int)

(assert (=> d!1201994 (>= lt!1442177 0)))

(declare-fun e!2511647 () Int)

(assert (=> d!1201994 (= lt!1442177 e!2511647)))

(declare-fun c!699366 () Bool)

(assert (=> d!1201994 (= c!699366 ((_ is Nil!43281) lt!1441534))))

(assert (=> d!1201994 (= (size!32358 lt!1441534) lt!1442177)))

(declare-fun b!4047972 () Bool)

(assert (=> b!4047972 (= e!2511647 0)))

(declare-fun b!4047973 () Bool)

(assert (=> b!4047973 (= e!2511647 (+ 1 (size!32358 (t!335502 lt!1441534))))))

(assert (= (and d!1201994 c!699366) b!4047972))

(assert (= (and d!1201994 (not c!699366)) b!4047973))

(declare-fun m!4647779 () Bool)

(assert (=> b!4047973 m!4647779))

(assert (=> b!4046390 d!1201994))

(declare-fun d!1201996 () Bool)

(declare-fun lt!1442178 () Int)

(assert (=> d!1201996 (>= lt!1442178 0)))

(declare-fun e!2511648 () Int)

(assert (=> d!1201996 (= lt!1442178 e!2511648)))

(declare-fun c!699367 () Bool)

(assert (=> d!1201996 (= c!699367 ((_ is Nil!43281) lt!1441297))))

(assert (=> d!1201996 (= (size!32358 lt!1441297) lt!1442178)))

(declare-fun b!4047974 () Bool)

(assert (=> b!4047974 (= e!2511648 0)))

(declare-fun b!4047975 () Bool)

(assert (=> b!4047975 (= e!2511648 (+ 1 (size!32358 (t!335502 lt!1441297))))))

(assert (= (and d!1201996 c!699367) b!4047974))

(assert (= (and d!1201996 (not c!699367)) b!4047975))

(declare-fun m!4647781 () Bool)

(assert (=> b!4047975 m!4647781))

(assert (=> b!4046390 d!1201996))

(assert (=> b!4046390 d!1200910))

(declare-fun b!4047977 () Bool)

(declare-fun e!2511650 () List!43405)

(assert (=> b!4047977 (= e!2511650 (Cons!43281 (h!48701 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))) (++!11336 (t!335502 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))) (_2!24311 (get!14199 lt!1441561)))))))

(declare-fun b!4047978 () Bool)

(declare-fun res!1649198 () Bool)

(declare-fun e!2511649 () Bool)

(assert (=> b!4047978 (=> (not res!1649198) (not e!2511649))))

(declare-fun lt!1442179 () List!43405)

(assert (=> b!4047978 (= res!1649198 (= (size!32358 lt!1442179) (+ (size!32358 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))) (size!32358 (_2!24311 (get!14199 lt!1441561))))))))

(declare-fun b!4047979 () Bool)

(assert (=> b!4047979 (= e!2511649 (or (not (= (_2!24311 (get!14199 lt!1441561)) Nil!43281)) (= lt!1442179 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))))))))

(declare-fun b!4047976 () Bool)

(assert (=> b!4047976 (= e!2511650 (_2!24311 (get!14199 lt!1441561)))))

(declare-fun d!1201998 () Bool)

(assert (=> d!1201998 e!2511649))

(declare-fun res!1649197 () Bool)

(assert (=> d!1201998 (=> (not res!1649197) (not e!2511649))))

(assert (=> d!1201998 (= res!1649197 (= (content!6586 lt!1442179) ((_ map or) (content!6586 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))) (content!6586 (_2!24311 (get!14199 lt!1441561))))))))

(assert (=> d!1201998 (= lt!1442179 e!2511650)))

(declare-fun c!699368 () Bool)

(assert (=> d!1201998 (= c!699368 ((_ is Nil!43281) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))))))

(assert (=> d!1201998 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))) (_2!24311 (get!14199 lt!1441561))) lt!1442179)))

(assert (= (and d!1201998 c!699368) b!4047976))

(assert (= (and d!1201998 (not c!699368)) b!4047977))

(assert (= (and d!1201998 res!1649197) b!4047978))

(assert (= (and b!4047978 res!1649198) b!4047979))

(declare-fun m!4647783 () Bool)

(assert (=> b!4047977 m!4647783))

(declare-fun m!4647785 () Bool)

(assert (=> b!4047978 m!4647785))

(assert (=> b!4047978 m!4645393))

(declare-fun m!4647787 () Bool)

(assert (=> b!4047978 m!4647787))

(assert (=> b!4047978 m!4645397))

(declare-fun m!4647789 () Bool)

(assert (=> d!1201998 m!4647789))

(assert (=> d!1201998 m!4645393))

(declare-fun m!4647791 () Bool)

(assert (=> d!1201998 m!4647791))

(declare-fun m!4647793 () Bool)

(assert (=> d!1201998 m!4647793))

(assert (=> b!4046438 d!1201998))

(declare-fun d!1202000 () Bool)

(assert (=> d!1202000 (= (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))) (list!16122 (c!698890 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))))))

(declare-fun bs!591363 () Bool)

(assert (= bs!591363 d!1202000))

(declare-fun m!4647795 () Bool)

(assert (=> bs!591363 m!4647795))

(assert (=> b!4046438 d!1202000))

(declare-fun d!1202002 () Bool)

(declare-fun lt!1442180 () BalanceConc!25884)

(assert (=> d!1202002 (= (list!16120 lt!1442180) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561))))))

(assert (=> d!1202002 (= lt!1442180 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))) (value!218253 (_1!24311 (get!14199 lt!1441561)))))))

(assert (=> d!1202002 (= (charsOf!4750 (_1!24311 (get!14199 lt!1441561))) lt!1442180)))

(declare-fun b_lambda!118287 () Bool)

(assert (=> (not b_lambda!118287) (not d!1202002)))

(declare-fun tb!243535 () Bool)

(declare-fun t!335715 () Bool)

(assert (=> (and b!4045849 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335715) tb!243535))

(declare-fun b!4047980 () Bool)

(declare-fun e!2511651 () Bool)

(declare-fun tp!1227955 () Bool)

(assert (=> b!4047980 (= e!2511651 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))) (value!218253 (_1!24311 (get!14199 lt!1441561)))))) tp!1227955))))

(declare-fun result!295102 () Bool)

(assert (=> tb!243535 (= result!295102 (and (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))) (value!218253 (_1!24311 (get!14199 lt!1441561))))) e!2511651))))

(assert (= tb!243535 b!4047980))

(declare-fun m!4647797 () Bool)

(assert (=> b!4047980 m!4647797))

(declare-fun m!4647799 () Bool)

(assert (=> tb!243535 m!4647799))

(assert (=> d!1202002 t!335715))

(declare-fun b_and!311317 () Bool)

(assert (= b_and!311311 (and (=> t!335715 result!295102) b_and!311317)))

(declare-fun t!335717 () Bool)

(declare-fun tb!243537 () Bool)

(assert (=> (and b!4045850 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335717) tb!243537))

(declare-fun result!295104 () Bool)

(assert (= result!295104 result!295102))

(assert (=> d!1202002 t!335717))

(declare-fun b_and!311319 () Bool)

(assert (= b_and!311313 (and (=> t!335717 result!295104) b_and!311319)))

(declare-fun tb!243539 () Bool)

(declare-fun t!335719 () Bool)

(assert (=> (and b!4046651 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335719) tb!243539))

(declare-fun result!295106 () Bool)

(assert (= result!295106 result!295102))

(assert (=> d!1202002 t!335719))

(declare-fun b_and!311321 () Bool)

(assert (= b_and!311315 (and (=> t!335719 result!295106) b_and!311321)))

(declare-fun m!4647801 () Bool)

(assert (=> d!1202002 m!4647801))

(declare-fun m!4647803 () Bool)

(assert (=> d!1202002 m!4647803))

(assert (=> b!4046438 d!1202002))

(assert (=> b!4046438 d!1201882))

(assert (=> b!4046432 d!1201776))

(declare-fun b!4047983 () Bool)

(declare-fun e!2511654 () Bool)

(assert (=> b!4047983 (= e!2511654 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441314)) (tail!6289 (tail!6289 lt!1441277))))))

(declare-fun d!1202004 () Bool)

(declare-fun e!2511653 () Bool)

(assert (=> d!1202004 e!2511653))

(declare-fun res!1649199 () Bool)

(assert (=> d!1202004 (=> res!1649199 e!2511653)))

(declare-fun lt!1442181 () Bool)

(assert (=> d!1202004 (= res!1649199 (not lt!1442181))))

(declare-fun e!2511652 () Bool)

(assert (=> d!1202004 (= lt!1442181 e!2511652)))

(declare-fun res!1649201 () Bool)

(assert (=> d!1202004 (=> res!1649201 e!2511652)))

(assert (=> d!1202004 (= res!1649201 ((_ is Nil!43281) (tail!6289 lt!1441314)))))

(assert (=> d!1202004 (= (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441277)) lt!1442181)))

(declare-fun b!4047981 () Bool)

(assert (=> b!4047981 (= e!2511652 e!2511654)))

(declare-fun res!1649200 () Bool)

(assert (=> b!4047981 (=> (not res!1649200) (not e!2511654))))

(assert (=> b!4047981 (= res!1649200 (not ((_ is Nil!43281) (tail!6289 lt!1441277))))))

(declare-fun b!4047982 () Bool)

(declare-fun res!1649202 () Bool)

(assert (=> b!4047982 (=> (not res!1649202) (not e!2511654))))

(assert (=> b!4047982 (= res!1649202 (= (head!8557 (tail!6289 lt!1441314)) (head!8557 (tail!6289 lt!1441277))))))

(declare-fun b!4047984 () Bool)

(assert (=> b!4047984 (= e!2511653 (>= (size!32358 (tail!6289 lt!1441277)) (size!32358 (tail!6289 lt!1441314))))))

(assert (= (and d!1202004 (not res!1649201)) b!4047981))

(assert (= (and b!4047981 res!1649200) b!4047982))

(assert (= (and b!4047982 res!1649202) b!4047983))

(assert (= (and d!1202004 (not res!1649199)) b!4047984))

(assert (=> b!4047983 m!4644691))

(assert (=> b!4047983 m!4646053))

(assert (=> b!4047983 m!4645179))

(declare-fun m!4647805 () Bool)

(assert (=> b!4047983 m!4647805))

(assert (=> b!4047983 m!4646053))

(assert (=> b!4047983 m!4647805))

(declare-fun m!4647807 () Bool)

(assert (=> b!4047983 m!4647807))

(assert (=> b!4047982 m!4644691))

(assert (=> b!4047982 m!4646059))

(assert (=> b!4047982 m!4645179))

(declare-fun m!4647809 () Bool)

(assert (=> b!4047982 m!4647809))

(assert (=> b!4047984 m!4645179))

(declare-fun m!4647811 () Bool)

(assert (=> b!4047984 m!4647811))

(assert (=> b!4047984 m!4644691))

(assert (=> b!4047984 m!4646065))

(assert (=> b!4046336 d!1202004))

(assert (=> b!4046336 d!1201240))

(declare-fun d!1202006 () Bool)

(assert (=> d!1202006 (= (tail!6289 lt!1441277) (t!335502 lt!1441277))))

(assert (=> b!4046336 d!1202006))

(declare-fun d!1202008 () Bool)

(assert (=> d!1202008 (= (maxPrefixOneRule!2833 thiss!21717 (rule!10010 token!484) lt!1441304) (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (rule!10010 token!484)) (seqFromList!5151 lt!1441296)) (rule!10010 token!484) (size!32358 lt!1441296) lt!1441296) suffixResult!105)))))

(assert (=> d!1202008 true))

(declare-fun _$59!710 () Unit!62527)

(assert (=> d!1202008 (= (choose!24524 thiss!21717 rules!2999 lt!1441296 lt!1441304 suffixResult!105 (rule!10010 token!484)) _$59!710)))

(declare-fun bs!591364 () Bool)

(assert (= bs!591364 d!1202008))

(assert (=> bs!591364 m!4644321))

(assert (=> bs!591364 m!4644319))

(assert (=> bs!591364 m!4644319))

(assert (=> bs!591364 m!4644325))

(assert (=> bs!591364 m!4644369))

(assert (=> d!1200922 d!1202008))

(assert (=> d!1200922 d!1200996))

(assert (=> d!1200922 d!1200926))

(assert (=> d!1200922 d!1200928))

(assert (=> d!1200922 d!1200942))

(assert (=> d!1200922 d!1200920))

(declare-fun d!1202010 () Bool)

(declare-fun nullableFct!1170 (Regex!11839) Bool)

(assert (=> d!1202010 (= (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (nullableFct!1170 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun bs!591365 () Bool)

(assert (= bs!591365 d!1202010))

(declare-fun m!4647813 () Bool)

(assert (=> bs!591365 m!4647813))

(assert (=> b!4046594 d!1202010))

(declare-fun b!4047986 () Bool)

(declare-fun e!2511656 () List!43405)

(assert (=> b!4047986 (= e!2511656 (Cons!43281 (h!48701 (t!335502 lt!1441296)) (++!11336 (t!335502 (t!335502 lt!1441296)) lt!1441278)))))

(declare-fun b!4047987 () Bool)

(declare-fun res!1649204 () Bool)

(declare-fun e!2511655 () Bool)

(assert (=> b!4047987 (=> (not res!1649204) (not e!2511655))))

(declare-fun lt!1442182 () List!43405)

(assert (=> b!4047987 (= res!1649204 (= (size!32358 lt!1442182) (+ (size!32358 (t!335502 lt!1441296)) (size!32358 lt!1441278))))))

(declare-fun b!4047988 () Bool)

(assert (=> b!4047988 (= e!2511655 (or (not (= lt!1441278 Nil!43281)) (= lt!1442182 (t!335502 lt!1441296))))))

(declare-fun b!4047985 () Bool)

(assert (=> b!4047985 (= e!2511656 lt!1441278)))

(declare-fun d!1202012 () Bool)

(assert (=> d!1202012 e!2511655))

(declare-fun res!1649203 () Bool)

(assert (=> d!1202012 (=> (not res!1649203) (not e!2511655))))

(assert (=> d!1202012 (= res!1649203 (= (content!6586 lt!1442182) ((_ map or) (content!6586 (t!335502 lt!1441296)) (content!6586 lt!1441278))))))

(assert (=> d!1202012 (= lt!1442182 e!2511656)))

(declare-fun c!699369 () Bool)

(assert (=> d!1202012 (= c!699369 ((_ is Nil!43281) (t!335502 lt!1441296)))))

(assert (=> d!1202012 (= (++!11336 (t!335502 lt!1441296) lt!1441278) lt!1442182)))

(assert (= (and d!1202012 c!699369) b!4047985))

(assert (= (and d!1202012 (not c!699369)) b!4047986))

(assert (= (and d!1202012 res!1649203) b!4047987))

(assert (= (and b!4047987 res!1649204) b!4047988))

(declare-fun m!4647815 () Bool)

(assert (=> b!4047986 m!4647815))

(declare-fun m!4647817 () Bool)

(assert (=> b!4047987 m!4647817))

(assert (=> b!4047987 m!4645563))

(assert (=> b!4047987 m!4645257))

(declare-fun m!4647819 () Bool)

(assert (=> d!1202012 m!4647819))

(assert (=> d!1202012 m!4646113))

(assert (=> d!1202012 m!4645263))

(assert (=> b!4046385 d!1202012))

(declare-fun d!1202014 () Bool)

(assert (=> d!1202014 (= (isEmpty!25830 lt!1441523) (not ((_ is Some!9347) lt!1441523)))))

(assert (=> d!1200894 d!1202014))

(declare-fun b!4047991 () Bool)

(declare-fun e!2511659 () Bool)

(assert (=> b!4047991 (= e!2511659 (isPrefix!4021 (tail!6289 lt!1441294) (tail!6289 lt!1441294)))))

(declare-fun d!1202016 () Bool)

(declare-fun e!2511658 () Bool)

(assert (=> d!1202016 e!2511658))

(declare-fun res!1649205 () Bool)

(assert (=> d!1202016 (=> res!1649205 e!2511658)))

(declare-fun lt!1442183 () Bool)

(assert (=> d!1202016 (= res!1649205 (not lt!1442183))))

(declare-fun e!2511657 () Bool)

(assert (=> d!1202016 (= lt!1442183 e!2511657)))

(declare-fun res!1649207 () Bool)

(assert (=> d!1202016 (=> res!1649207 e!2511657)))

(assert (=> d!1202016 (= res!1649207 ((_ is Nil!43281) lt!1441294))))

(assert (=> d!1202016 (= (isPrefix!4021 lt!1441294 lt!1441294) lt!1442183)))

(declare-fun b!4047989 () Bool)

(assert (=> b!4047989 (= e!2511657 e!2511659)))

(declare-fun res!1649206 () Bool)

(assert (=> b!4047989 (=> (not res!1649206) (not e!2511659))))

(assert (=> b!4047989 (= res!1649206 (not ((_ is Nil!43281) lt!1441294)))))

(declare-fun b!4047990 () Bool)

(declare-fun res!1649208 () Bool)

(assert (=> b!4047990 (=> (not res!1649208) (not e!2511659))))

(assert (=> b!4047990 (= res!1649208 (= (head!8557 lt!1441294) (head!8557 lt!1441294)))))

(declare-fun b!4047992 () Bool)

(assert (=> b!4047992 (= e!2511658 (>= (size!32358 lt!1441294) (size!32358 lt!1441294)))))

(assert (= (and d!1202016 (not res!1649207)) b!4047989))

(assert (= (and b!4047989 res!1649206) b!4047990))

(assert (= (and b!4047990 res!1649208) b!4047991))

(assert (= (and d!1202016 (not res!1649205)) b!4047992))

(assert (=> b!4047991 m!4645523))

(assert (=> b!4047991 m!4645523))

(assert (=> b!4047991 m!4645523))

(assert (=> b!4047991 m!4645523))

(declare-fun m!4647821 () Bool)

(assert (=> b!4047991 m!4647821))

(assert (=> b!4047990 m!4645619))

(assert (=> b!4047990 m!4645619))

(assert (=> b!4047992 m!4645121))

(assert (=> b!4047992 m!4645121))

(assert (=> d!1200894 d!1202016))

(declare-fun d!1202018 () Bool)

(assert (=> d!1202018 (isPrefix!4021 lt!1441294 lt!1441294)))

(declare-fun lt!1442184 () Unit!62527)

(assert (=> d!1202018 (= lt!1442184 (choose!24531 lt!1441294 lt!1441294))))

(assert (=> d!1202018 (= (lemmaIsPrefixRefl!2588 lt!1441294 lt!1441294) lt!1442184)))

(declare-fun bs!591366 () Bool)

(assert (= bs!591366 d!1202018))

(assert (=> bs!591366 m!4645227))

(declare-fun m!4647823 () Bool)

(assert (=> bs!591366 m!4647823))

(assert (=> d!1200894 d!1202018))

(declare-fun d!1202020 () Bool)

(assert (=> d!1202020 true))

(declare-fun lt!1442187 () Bool)

(declare-fun lambda!127494 () Int)

(declare-fun forall!8378 (List!43407 Int) Bool)

(assert (=> d!1202020 (= lt!1442187 (forall!8378 rules!2999 lambda!127494))))

(declare-fun e!2511664 () Bool)

(assert (=> d!1202020 (= lt!1442187 e!2511664)))

(declare-fun res!1649214 () Bool)

(assert (=> d!1202020 (=> res!1649214 e!2511664)))

(assert (=> d!1202020 (= res!1649214 (not ((_ is Cons!43283) rules!2999)))))

(assert (=> d!1202020 (= (rulesValidInductive!2529 thiss!21717 rules!2999) lt!1442187)))

(declare-fun b!4047997 () Bool)

(declare-fun e!2511665 () Bool)

(assert (=> b!4047997 (= e!2511664 e!2511665)))

(declare-fun res!1649213 () Bool)

(assert (=> b!4047997 (=> (not res!1649213) (not e!2511665))))

(assert (=> b!4047997 (= res!1649213 (ruleValid!2864 thiss!21717 (h!48703 rules!2999)))))

(declare-fun b!4047998 () Bool)

(assert (=> b!4047998 (= e!2511665 (rulesValidInductive!2529 thiss!21717 (t!335504 rules!2999)))))

(assert (= (and d!1202020 (not res!1649214)) b!4047997))

(assert (= (and b!4047997 res!1649213) b!4047998))

(declare-fun m!4647825 () Bool)

(assert (=> d!1202020 m!4647825))

(assert (=> b!4047997 m!4647659))

(assert (=> b!4047998 m!4647251))

(assert (=> d!1200894 d!1202020))

(declare-fun b!4048002 () Bool)

(declare-fun e!2511667 () List!43405)

(assert (=> b!4048002 (= e!2511667 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) lt!1441595)))))

(declare-fun b!4048003 () Bool)

(declare-fun res!1649216 () Bool)

(declare-fun e!2511666 () Bool)

(assert (=> b!4048003 (=> (not res!1649216) (not e!2511666))))

(declare-fun lt!1442188 () List!43405)

(assert (=> b!4048003 (= res!1649216 (= (size!32358 lt!1442188) (+ (size!32358 lt!1441296) (size!32358 lt!1441595))))))

(declare-fun b!4048004 () Bool)

(assert (=> b!4048004 (= e!2511666 (or (not (= lt!1441595 Nil!43281)) (= lt!1442188 lt!1441296)))))

(declare-fun b!4048001 () Bool)

(assert (=> b!4048001 (= e!2511667 lt!1441595)))

(declare-fun d!1202022 () Bool)

(assert (=> d!1202022 e!2511666))

(declare-fun res!1649215 () Bool)

(assert (=> d!1202022 (=> (not res!1649215) (not e!2511666))))

(assert (=> d!1202022 (= res!1649215 (= (content!6586 lt!1442188) ((_ map or) (content!6586 lt!1441296) (content!6586 lt!1441595))))))

(assert (=> d!1202022 (= lt!1442188 e!2511667)))

(declare-fun c!699370 () Bool)

(assert (=> d!1202022 (= c!699370 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1202022 (= (++!11336 lt!1441296 lt!1441595) lt!1442188)))

(assert (= (and d!1202022 c!699370) b!4048001))

(assert (= (and d!1202022 (not c!699370)) b!4048002))

(assert (= (and d!1202022 res!1649215) b!4048003))

(assert (= (and b!4048003 res!1649216) b!4048004))

(declare-fun m!4647827 () Bool)

(assert (=> b!4048002 m!4647827))

(declare-fun m!4647829 () Bool)

(assert (=> b!4048003 m!4647829))

(assert (=> b!4048003 m!4644369))

(declare-fun m!4647831 () Bool)

(assert (=> b!4048003 m!4647831))

(declare-fun m!4647833 () Bool)

(assert (=> d!1202022 m!4647833))

(assert (=> d!1202022 m!4645261))

(declare-fun m!4647835 () Bool)

(assert (=> d!1202022 m!4647835))

(assert (=> d!1201008 d!1202022))

(assert (=> d!1201008 d!1200998))

(assert (=> d!1201008 d!1200996))

(assert (=> b!4046602 d!1201250))

(assert (=> b!4046602 d!1201240))

(declare-fun b!4048005 () Bool)

(declare-fun e!2511673 () Bool)

(declare-fun e!2511669 () Bool)

(assert (=> b!4048005 (= e!2511673 e!2511669)))

(declare-fun c!699372 () Bool)

(assert (=> b!4048005 (= c!699372 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))))))

(declare-fun bm!287801 () Bool)

(declare-fun call!287806 () Bool)

(assert (=> bm!287801 (= call!287806 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))))))

(declare-fun b!4048006 () Bool)

(declare-fun e!2511671 () Bool)

(assert (=> b!4048006 (= e!2511671 (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))))))

(declare-fun b!4048007 () Bool)

(declare-fun e!2511668 () Bool)

(assert (=> b!4048007 (= e!2511668 (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))))))

(declare-fun b!4048008 () Bool)

(declare-fun e!2511674 () Bool)

(assert (=> b!4048008 (= e!2511674 (not (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))))))))

(declare-fun b!4048009 () Bool)

(declare-fun res!1649220 () Bool)

(declare-fun e!2511670 () Bool)

(assert (=> b!4048009 (=> res!1649220 e!2511670)))

(assert (=> b!4048009 (= res!1649220 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))))))

(assert (=> b!4048009 (= e!2511669 e!2511670)))

(declare-fun b!4048010 () Bool)

(declare-fun e!2511672 () Bool)

(assert (=> b!4048010 (= e!2511672 e!2511674)))

(declare-fun res!1649222 () Bool)

(assert (=> b!4048010 (=> res!1649222 e!2511674)))

(assert (=> b!4048010 (= res!1649222 call!287806)))

(declare-fun b!4048011 () Bool)

(declare-fun res!1649221 () Bool)

(assert (=> b!4048011 (=> (not res!1649221) (not e!2511671))))

(assert (=> b!4048011 (= res!1649221 (not call!287806))))

(declare-fun b!4048012 () Bool)

(declare-fun res!1649224 () Bool)

(assert (=> b!4048012 (=> res!1649224 e!2511674)))

(assert (=> b!4048012 (= res!1649224 (not (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))))))))

(declare-fun d!1202024 () Bool)

(assert (=> d!1202024 e!2511673))

(declare-fun c!699371 () Bool)

(assert (=> d!1202024 (= c!699371 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523))))))))

(declare-fun lt!1442189 () Bool)

(assert (=> d!1202024 (= lt!1442189 e!2511668)))

(declare-fun c!699373 () Bool)

(assert (=> d!1202024 (= c!699373 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))))))

(assert (=> d!1202024 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))))

(assert (=> d!1202024 (= (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523))))) lt!1442189)))

(declare-fun b!4048013 () Bool)

(assert (=> b!4048013 (= e!2511669 (not lt!1442189))))

(declare-fun b!4048014 () Bool)

(declare-fun res!1649218 () Bool)

(assert (=> b!4048014 (=> res!1649218 e!2511670)))

(assert (=> b!4048014 (= res!1649218 e!2511671)))

(declare-fun res!1649223 () Bool)

(assert (=> b!4048014 (=> (not res!1649223) (not e!2511671))))

(assert (=> b!4048014 (= res!1649223 lt!1442189)))

(declare-fun b!4048015 () Bool)

(declare-fun res!1649217 () Bool)

(assert (=> b!4048015 (=> (not res!1649217) (not e!2511671))))

(assert (=> b!4048015 (= res!1649217 (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))))))))

(declare-fun b!4048016 () Bool)

(assert (=> b!4048016 (= e!2511673 (= lt!1442189 call!287806))))

(declare-fun b!4048017 () Bool)

(assert (=> b!4048017 (= e!2511670 e!2511672)))

(declare-fun res!1649219 () Bool)

(assert (=> b!4048017 (=> (not res!1649219) (not e!2511672))))

(assert (=> b!4048017 (= res!1649219 (not lt!1442189))))

(declare-fun b!4048018 () Bool)

(assert (=> b!4048018 (= e!2511668 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))) (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))))) (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441523)))))))))

(assert (= (and d!1202024 c!699373) b!4048007))

(assert (= (and d!1202024 (not c!699373)) b!4048018))

(assert (= (and d!1202024 c!699371) b!4048016))

(assert (= (and d!1202024 (not c!699371)) b!4048005))

(assert (= (and b!4048005 c!699372) b!4048013))

(assert (= (and b!4048005 (not c!699372)) b!4048009))

(assert (= (and b!4048009 (not res!1649220)) b!4048014))

(assert (= (and b!4048014 res!1649223) b!4048011))

(assert (= (and b!4048011 res!1649221) b!4048015))

(assert (= (and b!4048015 res!1649217) b!4048006))

(assert (= (and b!4048014 (not res!1649218)) b!4048017))

(assert (= (and b!4048017 res!1649219) b!4048010))

(assert (= (and b!4048010 (not res!1649222)) b!4048012))

(assert (= (and b!4048012 (not res!1649224)) b!4048008))

(assert (= (or b!4048016 b!4048010 b!4048011) bm!287801))

(declare-fun m!4647837 () Bool)

(assert (=> b!4048007 m!4647837))

(assert (=> b!4048008 m!4645207))

(declare-fun m!4647839 () Bool)

(assert (=> b!4048008 m!4647839))

(assert (=> d!1202024 m!4645207))

(declare-fun m!4647841 () Bool)

(assert (=> d!1202024 m!4647841))

(declare-fun m!4647843 () Bool)

(assert (=> d!1202024 m!4647843))

(assert (=> b!4048012 m!4645207))

(declare-fun m!4647845 () Bool)

(assert (=> b!4048012 m!4647845))

(assert (=> b!4048012 m!4647845))

(declare-fun m!4647847 () Bool)

(assert (=> b!4048012 m!4647847))

(assert (=> b!4048018 m!4645207))

(assert (=> b!4048018 m!4647839))

(assert (=> b!4048018 m!4647839))

(declare-fun m!4647849 () Bool)

(assert (=> b!4048018 m!4647849))

(assert (=> b!4048018 m!4645207))

(assert (=> b!4048018 m!4647845))

(assert (=> b!4048018 m!4647849))

(assert (=> b!4048018 m!4647845))

(declare-fun m!4647851 () Bool)

(assert (=> b!4048018 m!4647851))

(assert (=> b!4048006 m!4645207))

(assert (=> b!4048006 m!4647839))

(assert (=> bm!287801 m!4645207))

(assert (=> bm!287801 m!4647841))

(assert (=> b!4048015 m!4645207))

(assert (=> b!4048015 m!4647845))

(assert (=> b!4048015 m!4647845))

(assert (=> b!4048015 m!4647847))

(assert (=> b!4046371 d!1202024))

(assert (=> b!4046371 d!1201264))

(assert (=> b!4046371 d!1201932))

(assert (=> b!4046371 d!1201934))

(assert (=> b!4046477 d!1201694))

(declare-fun d!1202026 () Bool)

(assert (=> d!1202026 (= (head!8557 lt!1441323) (h!48701 lt!1441323))))

(assert (=> b!4046477 d!1202026))

(declare-fun b!4048020 () Bool)

(declare-fun e!2511676 () List!43405)

(assert (=> b!4048020 (= e!2511676 (Cons!43281 (h!48701 lt!1441314) (++!11336 (t!335502 lt!1441314) lt!1441585)))))

(declare-fun b!4048021 () Bool)

(declare-fun res!1649226 () Bool)

(declare-fun e!2511675 () Bool)

(assert (=> b!4048021 (=> (not res!1649226) (not e!2511675))))

(declare-fun lt!1442190 () List!43405)

(assert (=> b!4048021 (= res!1649226 (= (size!32358 lt!1442190) (+ (size!32358 lt!1441314) (size!32358 lt!1441585))))))

(declare-fun b!4048022 () Bool)

(assert (=> b!4048022 (= e!2511675 (or (not (= lt!1441585 Nil!43281)) (= lt!1442190 lt!1441314)))))

(declare-fun b!4048019 () Bool)

(assert (=> b!4048019 (= e!2511676 lt!1441585)))

(declare-fun d!1202028 () Bool)

(assert (=> d!1202028 e!2511675))

(declare-fun res!1649225 () Bool)

(assert (=> d!1202028 (=> (not res!1649225) (not e!2511675))))

(assert (=> d!1202028 (= res!1649225 (= (content!6586 lt!1442190) ((_ map or) (content!6586 lt!1441314) (content!6586 lt!1441585))))))

(assert (=> d!1202028 (= lt!1442190 e!2511676)))

(declare-fun c!699374 () Bool)

(assert (=> d!1202028 (= c!699374 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1202028 (= (++!11336 lt!1441314 lt!1441585) lt!1442190)))

(assert (= (and d!1202028 c!699374) b!4048019))

(assert (= (and d!1202028 (not c!699374)) b!4048020))

(assert (= (and d!1202028 res!1649225) b!4048021))

(assert (= (and b!4048021 res!1649226) b!4048022))

(declare-fun m!4647853 () Bool)

(assert (=> b!4048020 m!4647853))

(declare-fun m!4647855 () Bool)

(assert (=> b!4048021 m!4647855))

(assert (=> b!4048021 m!4644397))

(declare-fun m!4647857 () Bool)

(assert (=> b!4048021 m!4647857))

(declare-fun m!4647859 () Bool)

(assert (=> d!1202028 m!4647859))

(assert (=> d!1202028 m!4644859))

(declare-fun m!4647861 () Bool)

(assert (=> d!1202028 m!4647861))

(assert (=> d!1200984 d!1202028))

(assert (=> d!1200984 d!1201236))

(assert (=> d!1200984 d!1200886))

(declare-fun d!1202030 () Bool)

(declare-fun c!699375 () Bool)

(assert (=> d!1202030 (= c!699375 ((_ is Nil!43281) lt!1441425))))

(declare-fun e!2511677 () (InoxSet C!23864))

(assert (=> d!1202030 (= (content!6586 lt!1441425) e!2511677)))

(declare-fun b!4048023 () Bool)

(assert (=> b!4048023 (= e!2511677 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4048024 () Bool)

(assert (=> b!4048024 (= e!2511677 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441425) true) (content!6586 (t!335502 lt!1441425))))))

(assert (= (and d!1202030 c!699375) b!4048023))

(assert (= (and d!1202030 (not c!699375)) b!4048024))

(declare-fun m!4647863 () Bool)

(assert (=> b!4048024 m!4647863))

(declare-fun m!4647865 () Bool)

(assert (=> b!4048024 m!4647865))

(assert (=> d!1200752 d!1202030))

(assert (=> d!1200752 d!1201788))

(assert (=> d!1200752 d!1201922))

(declare-fun d!1202032 () Bool)

(assert (=> d!1202032 (= (isDefined!7108 lt!1441523) (not (isEmpty!25830 lt!1441523)))))

(declare-fun bs!591367 () Bool)

(assert (= bs!591367 d!1202032))

(assert (=> bs!591367 m!4645225))

(assert (=> b!4046378 d!1202032))

(declare-fun d!1202034 () Bool)

(declare-fun lt!1442191 () Int)

(assert (=> d!1202034 (>= lt!1442191 0)))

(declare-fun e!2511678 () Int)

(assert (=> d!1202034 (= lt!1442191 e!2511678)))

(declare-fun c!699376 () Bool)

(assert (=> d!1202034 (= c!699376 ((_ is Nil!43281) (t!335502 newSuffix!27)))))

(assert (=> d!1202034 (= (size!32358 (t!335502 newSuffix!27)) lt!1442191)))

(declare-fun b!4048025 () Bool)

(assert (=> b!4048025 (= e!2511678 0)))

(declare-fun b!4048026 () Bool)

(assert (=> b!4048026 (= e!2511678 (+ 1 (size!32358 (t!335502 (t!335502 newSuffix!27)))))))

(assert (= (and d!1202034 c!699376) b!4048025))

(assert (= (and d!1202034 (not c!699376)) b!4048026))

(declare-fun m!4647867 () Bool)

(assert (=> b!4048026 m!4647867))

(assert (=> b!4046399 d!1202034))

(declare-fun d!1202036 () Bool)

(declare-fun lt!1442192 () Int)

(assert (=> d!1202036 (>= lt!1442192 0)))

(declare-fun e!2511679 () Int)

(assert (=> d!1202036 (= lt!1442192 e!2511679)))

(declare-fun c!699377 () Bool)

(assert (=> d!1202036 (= c!699377 ((_ is Nil!43281) lt!1441333))))

(assert (=> d!1202036 (= (size!32358 lt!1441333) lt!1442192)))

(declare-fun b!4048027 () Bool)

(assert (=> b!4048027 (= e!2511679 0)))

(declare-fun b!4048028 () Bool)

(assert (=> b!4048028 (= e!2511679 (+ 1 (size!32358 (t!335502 lt!1441333))))))

(assert (= (and d!1202036 c!699377) b!4048027))

(assert (= (and d!1202036 (not c!699377)) b!4048028))

(declare-fun m!4647869 () Bool)

(assert (=> b!4048028 m!4647869))

(assert (=> b!4046449 d!1202036))

(assert (=> b!4046449 d!1200886))

(assert (=> d!1200742 d!1200892))

(declare-fun d!1202038 () Bool)

(assert (=> d!1202038 (ruleValid!2864 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))

(assert (=> d!1202038 true))

(declare-fun _$65!1524 () Unit!62527)

(assert (=> d!1202038 (= (choose!24522 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) rules!2999) _$65!1524)))

(declare-fun bs!591368 () Bool)

(assert (= bs!591368 d!1202038))

(assert (=> bs!591368 m!4644401))

(assert (=> d!1200742 d!1202038))

(assert (=> d!1200742 d!1201014))

(declare-fun b!4048031 () Bool)

(declare-fun e!2511682 () Bool)

(assert (=> b!4048031 (= e!2511682 (isPrefix!4021 (tail!6289 (tail!6289 prefix!494)) (tail!6289 (tail!6289 lt!1441304))))))

(declare-fun d!1202040 () Bool)

(declare-fun e!2511681 () Bool)

(assert (=> d!1202040 e!2511681))

(declare-fun res!1649227 () Bool)

(assert (=> d!1202040 (=> res!1649227 e!2511681)))

(declare-fun lt!1442193 () Bool)

(assert (=> d!1202040 (= res!1649227 (not lt!1442193))))

(declare-fun e!2511680 () Bool)

(assert (=> d!1202040 (= lt!1442193 e!2511680)))

(declare-fun res!1649229 () Bool)

(assert (=> d!1202040 (=> res!1649229 e!2511680)))

(assert (=> d!1202040 (= res!1649229 ((_ is Nil!43281) (tail!6289 prefix!494)))))

(assert (=> d!1202040 (= (isPrefix!4021 (tail!6289 prefix!494) (tail!6289 lt!1441304)) lt!1442193)))

(declare-fun b!4048029 () Bool)

(assert (=> b!4048029 (= e!2511680 e!2511682)))

(declare-fun res!1649228 () Bool)

(assert (=> b!4048029 (=> (not res!1649228) (not e!2511682))))

(assert (=> b!4048029 (= res!1649228 (not ((_ is Nil!43281) (tail!6289 lt!1441304))))))

(declare-fun b!4048030 () Bool)

(declare-fun res!1649230 () Bool)

(assert (=> b!4048030 (=> (not res!1649230) (not e!2511682))))

(assert (=> b!4048030 (= res!1649230 (= (head!8557 (tail!6289 prefix!494)) (head!8557 (tail!6289 lt!1441304))))))

(declare-fun b!4048032 () Bool)

(assert (=> b!4048032 (= e!2511681 (>= (size!32358 (tail!6289 lt!1441304)) (size!32358 (tail!6289 prefix!494))))))

(assert (= (and d!1202040 (not res!1649229)) b!4048029))

(assert (= (and b!4048029 res!1649228) b!4048030))

(assert (= (and b!4048030 res!1649230) b!4048031))

(assert (= (and d!1202040 (not res!1649227)) b!4048032))

(assert (=> b!4048031 m!4645465))

(assert (=> b!4048031 m!4646093))

(assert (=> b!4048031 m!4645379))

(assert (=> b!4048031 m!4646171))

(assert (=> b!4048031 m!4646093))

(assert (=> b!4048031 m!4646171))

(declare-fun m!4647871 () Bool)

(assert (=> b!4048031 m!4647871))

(assert (=> b!4048030 m!4645465))

(assert (=> b!4048030 m!4646099))

(assert (=> b!4048030 m!4645379))

(assert (=> b!4048030 m!4647771))

(assert (=> b!4048032 m!4645379))

(assert (=> b!4048032 m!4646169))

(assert (=> b!4048032 m!4645465))

(assert (=> b!4048032 m!4646101))

(assert (=> b!4046466 d!1202040))

(assert (=> b!4046466 d!1201260))

(assert (=> b!4046466 d!1201294))

(declare-fun b!4048044 () Bool)

(declare-fun e!2511688 () List!43405)

(assert (=> b!4048044 (= e!2511688 (++!11336 (list!16122 (left!32594 (c!698890 (charsOf!4750 (_1!24311 (v!39751 lt!1441282)))))) (list!16122 (right!32924 (c!698890 (charsOf!4750 (_1!24311 (v!39751 lt!1441282))))))))))

(declare-fun d!1202042 () Bool)

(declare-fun c!699382 () Bool)

(assert (=> d!1202042 (= c!699382 ((_ is Empty!13145) (c!698890 (charsOf!4750 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun e!2511687 () List!43405)

(assert (=> d!1202042 (= (list!16122 (c!698890 (charsOf!4750 (_1!24311 (v!39751 lt!1441282))))) e!2511687)))

(declare-fun b!4048041 () Bool)

(assert (=> b!4048041 (= e!2511687 Nil!43281)))

(declare-fun b!4048043 () Bool)

(declare-fun list!16124 (IArray!26295) List!43405)

(assert (=> b!4048043 (= e!2511688 (list!16124 (xs!16451 (c!698890 (charsOf!4750 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun b!4048042 () Bool)

(assert (=> b!4048042 (= e!2511687 e!2511688)))

(declare-fun c!699383 () Bool)

(assert (=> b!4048042 (= c!699383 ((_ is Leaf!20319) (c!698890 (charsOf!4750 (_1!24311 (v!39751 lt!1441282))))))))

(assert (= (and d!1202042 c!699382) b!4048041))

(assert (= (and d!1202042 (not c!699382)) b!4048042))

(assert (= (and b!4048042 c!699383) b!4048043))

(assert (= (and b!4048042 (not c!699383)) b!4048044))

(declare-fun m!4647873 () Bool)

(assert (=> b!4048044 m!4647873))

(declare-fun m!4647875 () Bool)

(assert (=> b!4048044 m!4647875))

(assert (=> b!4048044 m!4647873))

(assert (=> b!4048044 m!4647875))

(declare-fun m!4647877 () Bool)

(assert (=> b!4048044 m!4647877))

(declare-fun m!4647879 () Bool)

(assert (=> b!4048043 m!4647879))

(assert (=> d!1200888 d!1202042))

(declare-fun d!1202044 () Bool)

(declare-fun lt!1442194 () Int)

(assert (=> d!1202044 (>= lt!1442194 0)))

(declare-fun e!2511689 () Int)

(assert (=> d!1202044 (= lt!1442194 e!2511689)))

(declare-fun c!699384 () Bool)

(assert (=> d!1202044 (= c!699384 ((_ is Nil!43281) lt!1441588))))

(assert (=> d!1202044 (= (size!32358 lt!1441588) lt!1442194)))

(declare-fun b!4048045 () Bool)

(assert (=> b!4048045 (= e!2511689 0)))

(declare-fun b!4048046 () Bool)

(assert (=> b!4048046 (= e!2511689 (+ 1 (size!32358 (t!335502 lt!1441588))))))

(assert (= (and d!1202044 c!699384) b!4048045))

(assert (= (and d!1202044 (not c!699384)) b!4048046))

(declare-fun m!4647881 () Bool)

(assert (=> b!4048046 m!4647881))

(assert (=> b!4046502 d!1202044))

(assert (=> b!4046502 d!1200998))

(declare-fun d!1202046 () Bool)

(declare-fun lt!1442195 () Int)

(assert (=> d!1202046 (>= lt!1442195 0)))

(declare-fun e!2511690 () Int)

(assert (=> d!1202046 (= lt!1442195 e!2511690)))

(declare-fun c!699385 () Bool)

(assert (=> d!1202046 (= c!699385 ((_ is Nil!43281) lt!1441311))))

(assert (=> d!1202046 (= (size!32358 lt!1441311) lt!1442195)))

(declare-fun b!4048047 () Bool)

(assert (=> b!4048047 (= e!2511690 0)))

(declare-fun b!4048048 () Bool)

(assert (=> b!4048048 (= e!2511690 (+ 1 (size!32358 (t!335502 lt!1441311))))))

(assert (= (and d!1202046 c!699385) b!4048047))

(assert (= (and d!1202046 (not c!699385)) b!4048048))

(declare-fun m!4647883 () Bool)

(assert (=> b!4048048 m!4647883))

(assert (=> b!4046502 d!1202046))

(assert (=> d!1200880 d!1200942))

(declare-fun d!1202048 () Bool)

(assert (=> d!1202048 (= (maxPrefixOneRule!2833 thiss!21717 (rule!10010 (_1!24311 (v!39751 lt!1441282))) lt!1441294) (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (seqFromList!5151 lt!1441314)) (rule!10010 (_1!24311 (v!39751 lt!1441282))) (size!32358 lt!1441314) lt!1441314) (_2!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1202048 true))

(declare-fun _$59!711 () Unit!62527)

(assert (=> d!1202048 (= (choose!24524 thiss!21717 rules!2999 lt!1441314 lt!1441294 (_2!24311 (v!39751 lt!1441282)) (rule!10010 (_1!24311 (v!39751 lt!1441282)))) _$59!711)))

(declare-fun bs!591369 () Bool)

(assert (= bs!591369 d!1202048))

(assert (=> bs!591369 m!4644383))

(assert (=> bs!591369 m!4644407))

(assert (=> bs!591369 m!4644407))

(assert (=> bs!591369 m!4644409))

(assert (=> bs!591369 m!4644397))

(assert (=> d!1200880 d!1202048))

(assert (=> d!1200880 d!1200748))

(assert (=> d!1200880 d!1200750))

(assert (=> d!1200880 d!1200886))

(assert (=> d!1200880 d!1200804))

(assert (=> b!4046461 d!1201710))

(assert (=> b!4046461 d!1201832))

(declare-fun d!1202050 () Bool)

(declare-fun c!699386 () Bool)

(assert (=> d!1202050 (= c!699386 ((_ is Nil!43281) lt!1441534))))

(declare-fun e!2511691 () (InoxSet C!23864))

(assert (=> d!1202050 (= (content!6586 lt!1441534) e!2511691)))

(declare-fun b!4048049 () Bool)

(assert (=> b!4048049 (= e!2511691 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4048050 () Bool)

(assert (=> b!4048050 (= e!2511691 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441534) true) (content!6586 (t!335502 lt!1441534))))))

(assert (= (and d!1202050 c!699386) b!4048049))

(assert (= (and d!1202050 (not c!699386)) b!4048050))

(declare-fun m!4647885 () Bool)

(assert (=> b!4048050 m!4647885))

(declare-fun m!4647887 () Bool)

(assert (=> b!4048050 m!4647887))

(assert (=> d!1200904 d!1202050))

(declare-fun d!1202052 () Bool)

(declare-fun c!699387 () Bool)

(assert (=> d!1202052 (= c!699387 ((_ is Nil!43281) lt!1441297))))

(declare-fun e!2511692 () (InoxSet C!23864))

(assert (=> d!1202052 (= (content!6586 lt!1441297) e!2511692)))

(declare-fun b!4048051 () Bool)

(assert (=> b!4048051 (= e!2511692 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4048052 () Bool)

(assert (=> b!4048052 (= e!2511692 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441297) true) (content!6586 (t!335502 lt!1441297))))))

(assert (= (and d!1202052 c!699387) b!4048051))

(assert (= (and d!1202052 (not c!699387)) b!4048052))

(declare-fun m!4647889 () Bool)

(assert (=> b!4048052 m!4647889))

(declare-fun m!4647891 () Bool)

(assert (=> b!4048052 m!4647891))

(assert (=> d!1200904 d!1202052))

(assert (=> d!1200904 d!1201820))

(declare-fun b!4048055 () Bool)

(declare-fun e!2511695 () Bool)

(assert (=> b!4048055 (= e!2511695 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441304)) (tail!6289 (tail!6289 lt!1441304))))))

(declare-fun d!1202054 () Bool)

(declare-fun e!2511694 () Bool)

(assert (=> d!1202054 e!2511694))

(declare-fun res!1649231 () Bool)

(assert (=> d!1202054 (=> res!1649231 e!2511694)))

(declare-fun lt!1442196 () Bool)

(assert (=> d!1202054 (= res!1649231 (not lt!1442196))))

(declare-fun e!2511693 () Bool)

(assert (=> d!1202054 (= lt!1442196 e!2511693)))

(declare-fun res!1649233 () Bool)

(assert (=> d!1202054 (=> res!1649233 e!2511693)))

(assert (=> d!1202054 (= res!1649233 ((_ is Nil!43281) (tail!6289 lt!1441304)))))

(assert (=> d!1202054 (= (isPrefix!4021 (tail!6289 lt!1441304) (tail!6289 lt!1441304)) lt!1442196)))

(declare-fun b!4048053 () Bool)

(assert (=> b!4048053 (= e!2511693 e!2511695)))

(declare-fun res!1649232 () Bool)

(assert (=> b!4048053 (=> (not res!1649232) (not e!2511695))))

(assert (=> b!4048053 (= res!1649232 (not ((_ is Nil!43281) (tail!6289 lt!1441304))))))

(declare-fun b!4048054 () Bool)

(declare-fun res!1649234 () Bool)

(assert (=> b!4048054 (=> (not res!1649234) (not e!2511695))))

(assert (=> b!4048054 (= res!1649234 (= (head!8557 (tail!6289 lt!1441304)) (head!8557 (tail!6289 lt!1441304))))))

(declare-fun b!4048056 () Bool)

(assert (=> b!4048056 (= e!2511694 (>= (size!32358 (tail!6289 lt!1441304)) (size!32358 (tail!6289 lt!1441304))))))

(assert (= (and d!1202054 (not res!1649233)) b!4048053))

(assert (= (and b!4048053 res!1649232) b!4048054))

(assert (= (and b!4048054 res!1649234) b!4048055))

(assert (= (and d!1202054 (not res!1649231)) b!4048056))

(assert (=> b!4048055 m!4645379))

(assert (=> b!4048055 m!4646171))

(assert (=> b!4048055 m!4645379))

(assert (=> b!4048055 m!4646171))

(assert (=> b!4048055 m!4646171))

(assert (=> b!4048055 m!4646171))

(declare-fun m!4647893 () Bool)

(assert (=> b!4048055 m!4647893))

(assert (=> b!4048054 m!4645379))

(assert (=> b!4048054 m!4647771))

(assert (=> b!4048054 m!4645379))

(assert (=> b!4048054 m!4647771))

(assert (=> b!4048056 m!4645379))

(assert (=> b!4048056 m!4646169))

(assert (=> b!4048056 m!4645379))

(assert (=> b!4048056 m!4646169))

(assert (=> b!4046431 d!1202054))

(assert (=> b!4046431 d!1201294))

(declare-fun b!4048058 () Bool)

(declare-fun e!2511697 () List!43405)

(assert (=> b!4048058 (= e!2511697 (Cons!43281 (h!48701 (t!335502 lt!1441297)) (++!11336 (t!335502 (t!335502 lt!1441297)) suffix!1299)))))

(declare-fun b!4048059 () Bool)

(declare-fun res!1649236 () Bool)

(declare-fun e!2511696 () Bool)

(assert (=> b!4048059 (=> (not res!1649236) (not e!2511696))))

(declare-fun lt!1442197 () List!43405)

(assert (=> b!4048059 (= res!1649236 (= (size!32358 lt!1442197) (+ (size!32358 (t!335502 lt!1441297)) (size!32358 suffix!1299))))))

(declare-fun b!4048060 () Bool)

(assert (=> b!4048060 (= e!2511696 (or (not (= suffix!1299 Nil!43281)) (= lt!1442197 (t!335502 lt!1441297))))))

(declare-fun b!4048057 () Bool)

(assert (=> b!4048057 (= e!2511697 suffix!1299)))

(declare-fun d!1202056 () Bool)

(assert (=> d!1202056 e!2511696))

(declare-fun res!1649235 () Bool)

(assert (=> d!1202056 (=> (not res!1649235) (not e!2511696))))

(assert (=> d!1202056 (= res!1649235 (= (content!6586 lt!1442197) ((_ map or) (content!6586 (t!335502 lt!1441297)) (content!6586 suffix!1299))))))

(assert (=> d!1202056 (= lt!1442197 e!2511697)))

(declare-fun c!699388 () Bool)

(assert (=> d!1202056 (= c!699388 ((_ is Nil!43281) (t!335502 lt!1441297)))))

(assert (=> d!1202056 (= (++!11336 (t!335502 lt!1441297) suffix!1299) lt!1442197)))

(assert (= (and d!1202056 c!699388) b!4048057))

(assert (= (and d!1202056 (not c!699388)) b!4048058))

(assert (= (and d!1202056 res!1649235) b!4048059))

(assert (= (and b!4048059 res!1649236) b!4048060))

(declare-fun m!4647895 () Bool)

(assert (=> b!4048058 m!4647895))

(declare-fun m!4647897 () Bool)

(assert (=> b!4048059 m!4647897))

(assert (=> b!4048059 m!4647781))

(assert (=> b!4048059 m!4644351))

(declare-fun m!4647899 () Bool)

(assert (=> d!1202056 m!4647899))

(assert (=> d!1202056 m!4647891))

(assert (=> d!1202056 m!4645275))

(assert (=> b!4046389 d!1202056))

(declare-fun d!1202058 () Bool)

(declare-fun lt!1442198 () Int)

(assert (=> d!1202058 (>= lt!1442198 0)))

(declare-fun e!2511698 () Int)

(assert (=> d!1202058 (= lt!1442198 e!2511698)))

(declare-fun c!699389 () Bool)

(assert (=> d!1202058 (= c!699389 ((_ is Nil!43281) lt!1441566))))

(assert (=> d!1202058 (= (size!32358 lt!1441566) lt!1442198)))

(declare-fun b!4048061 () Bool)

(assert (=> b!4048061 (= e!2511698 0)))

(declare-fun b!4048062 () Bool)

(assert (=> b!4048062 (= e!2511698 (+ 1 (size!32358 (t!335502 lt!1441566))))))

(assert (= (and d!1202058 c!699389) b!4048061))

(assert (= (and d!1202058 (not c!699389)) b!4048062))

(declare-fun m!4647901 () Bool)

(assert (=> b!4048062 m!4647901))

(assert (=> b!4046444 d!1202058))

(assert (=> b!4046444 d!1200998))

(assert (=> b!4046444 d!1200910))

(assert (=> b!4046593 d!1201694))

(declare-fun d!1202060 () Bool)

(declare-fun lt!1442199 () Int)

(assert (=> d!1202060 (>= lt!1442199 0)))

(declare-fun e!2511699 () Int)

(assert (=> d!1202060 (= lt!1442199 e!2511699)))

(declare-fun c!699390 () Bool)

(assert (=> d!1202060 (= c!699390 ((_ is Nil!43281) lt!1441301))))

(assert (=> d!1202060 (= (size!32358 lt!1441301) lt!1442199)))

(declare-fun b!4048063 () Bool)

(assert (=> b!4048063 (= e!2511699 0)))

(declare-fun b!4048064 () Bool)

(assert (=> b!4048064 (= e!2511699 (+ 1 (size!32358 (t!335502 lt!1441301))))))

(assert (= (and d!1202060 c!699390) b!4048063))

(assert (= (and d!1202060 (not c!699390)) b!4048064))

(declare-fun m!4647903 () Bool)

(assert (=> b!4048064 m!4647903))

(assert (=> b!4046409 d!1202060))

(assert (=> b!4046409 d!1200996))

(declare-fun d!1202062 () Bool)

(declare-fun lt!1442200 () Int)

(assert (=> d!1202062 (>= lt!1442200 0)))

(declare-fun e!2511700 () Int)

(assert (=> d!1202062 (= lt!1442200 e!2511700)))

(declare-fun c!699391 () Bool)

(assert (=> d!1202062 (= c!699391 ((_ is Nil!43281) (_2!24311 (get!14199 lt!1441561))))))

(assert (=> d!1202062 (= (size!32358 (_2!24311 (get!14199 lt!1441561))) lt!1442200)))

(declare-fun b!4048065 () Bool)

(assert (=> b!4048065 (= e!2511700 0)))

(declare-fun b!4048066 () Bool)

(assert (=> b!4048066 (= e!2511700 (+ 1 (size!32358 (t!335502 (_2!24311 (get!14199 lt!1441561))))))))

(assert (= (and d!1202062 c!699391) b!4048065))

(assert (= (and d!1202062 (not c!699391)) b!4048066))

(declare-fun m!4647905 () Bool)

(assert (=> b!4048066 m!4647905))

(assert (=> b!4046437 d!1202062))

(assert (=> b!4046437 d!1201882))

(assert (=> b!4046437 d!1201776))

(assert (=> b!4046335 d!1201694))

(declare-fun d!1202064 () Bool)

(assert (=> d!1202064 (= (head!8557 lt!1441277) (h!48701 lt!1441277))))

(assert (=> b!4046335 d!1202064))

(assert (=> bm!287668 d!1201794))

(declare-fun d!1202066 () Bool)

(declare-fun lt!1442201 () Int)

(assert (=> d!1202066 (>= lt!1442201 0)))

(declare-fun e!2511701 () Int)

(assert (=> d!1202066 (= lt!1442201 e!2511701)))

(declare-fun c!699392 () Bool)

(assert (=> d!1202066 (= c!699392 ((_ is Nil!43281) lt!1441594))))

(assert (=> d!1202066 (= (size!32358 lt!1441594) lt!1442201)))

(declare-fun b!4048067 () Bool)

(assert (=> b!4048067 (= e!2511701 0)))

(declare-fun b!4048068 () Bool)

(assert (=> b!4048068 (= e!2511701 (+ 1 (size!32358 (t!335502 lt!1441594))))))

(assert (= (and d!1202066 c!699392) b!4048067))

(assert (= (and d!1202066 (not c!699392)) b!4048068))

(declare-fun m!4647907 () Bool)

(assert (=> b!4048068 m!4647907))

(assert (=> b!4046530 d!1202066))

(assert (=> b!4046530 d!1200996))

(assert (=> b!4046530 d!1201804))

(declare-fun b!4048069 () Bool)

(declare-fun e!2511703 () Bool)

(declare-fun lt!1442204 () Option!9348)

(assert (=> b!4048069 (= e!2511703 (= (size!32357 (_1!24311 (get!14199 lt!1442204))) (size!32358 (originalCharacters!7534 (_1!24311 (get!14199 lt!1442204))))))))

(declare-fun d!1202068 () Bool)

(declare-fun e!2511705 () Bool)

(assert (=> d!1202068 e!2511705))

(declare-fun res!1649240 () Bool)

(assert (=> d!1202068 (=> res!1649240 e!2511705)))

(assert (=> d!1202068 (= res!1649240 (isEmpty!25830 lt!1442204))))

(declare-fun e!2511702 () Option!9348)

(assert (=> d!1202068 (= lt!1442204 e!2511702)))

(declare-fun c!699393 () Bool)

(declare-fun lt!1442205 () tuple2!42356)

(assert (=> d!1202068 (= c!699393 (isEmpty!25831 (_1!24312 lt!1442205)))))

(assert (=> d!1202068 (= lt!1442205 (findLongestMatch!1303 (regex!6934 (h!48703 rules!2999)) lt!1441294))))

(assert (=> d!1202068 (ruleValid!2864 thiss!21717 (h!48703 rules!2999))))

(assert (=> d!1202068 (= (maxPrefixOneRule!2833 thiss!21717 (h!48703 rules!2999) lt!1441294) lt!1442204)))

(declare-fun b!4048070 () Bool)

(assert (=> b!4048070 (= e!2511702 None!9347)))

(declare-fun b!4048071 () Bool)

(declare-fun res!1649241 () Bool)

(assert (=> b!4048071 (=> (not res!1649241) (not e!2511703))))

(assert (=> b!4048071 (= res!1649241 (< (size!32358 (_2!24311 (get!14199 lt!1442204))) (size!32358 lt!1441294)))))

(declare-fun b!4048072 () Bool)

(declare-fun res!1649238 () Bool)

(assert (=> b!4048072 (=> (not res!1649238) (not e!2511703))))

(assert (=> b!4048072 (= res!1649238 (= (value!218253 (_1!24311 (get!14199 lt!1442204))) (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1442204)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1442204)))))))))

(declare-fun b!4048073 () Bool)

(declare-fun e!2511704 () Bool)

(assert (=> b!4048073 (= e!2511704 (matchR!5792 (regex!6934 (h!48703 rules!2999)) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (h!48703 rules!2999)) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(declare-fun b!4048074 () Bool)

(assert (=> b!4048074 (= e!2511702 (Some!9347 (tuple2!42355 (Token!13007 (apply!10123 (transformation!6934 (h!48703 rules!2999)) (seqFromList!5151 (_1!24312 lt!1442205))) (h!48703 rules!2999) (size!32359 (seqFromList!5151 (_1!24312 lt!1442205))) (_1!24312 lt!1442205)) (_2!24312 lt!1442205))))))

(declare-fun lt!1442206 () Unit!62527)

(assert (=> b!4048074 (= lt!1442206 (longestMatchIsAcceptedByMatchOrIsEmpty!1363 (regex!6934 (h!48703 rules!2999)) lt!1441294))))

(declare-fun res!1649242 () Bool)

(assert (=> b!4048074 (= res!1649242 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (h!48703 rules!2999)) Nil!43281 (size!32358 Nil!43281) lt!1441294 lt!1441294 (size!32358 lt!1441294)))))))

(assert (=> b!4048074 (=> res!1649242 e!2511704)))

(assert (=> b!4048074 e!2511704))

(declare-fun lt!1442202 () Unit!62527)

(assert (=> b!4048074 (= lt!1442202 lt!1442206)))

(declare-fun lt!1442203 () Unit!62527)

(assert (=> b!4048074 (= lt!1442203 (lemmaSemiInverse!1912 (transformation!6934 (h!48703 rules!2999)) (seqFromList!5151 (_1!24312 lt!1442205))))))

(declare-fun b!4048075 () Bool)

(declare-fun res!1649243 () Bool)

(assert (=> b!4048075 (=> (not res!1649243) (not e!2511703))))

(assert (=> b!4048075 (= res!1649243 (= (++!11336 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442204)))) (_2!24311 (get!14199 lt!1442204))) lt!1441294))))

(declare-fun b!4048076 () Bool)

(assert (=> b!4048076 (= e!2511705 e!2511703)))

(declare-fun res!1649237 () Bool)

(assert (=> b!4048076 (=> (not res!1649237) (not e!2511703))))

(assert (=> b!4048076 (= res!1649237 (matchR!5792 (regex!6934 (h!48703 rules!2999)) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1442204))))))))

(declare-fun b!4048077 () Bool)

(declare-fun res!1649239 () Bool)

(assert (=> b!4048077 (=> (not res!1649239) (not e!2511703))))

(assert (=> b!4048077 (= res!1649239 (= (rule!10010 (_1!24311 (get!14199 lt!1442204))) (h!48703 rules!2999)))))

(assert (= (and d!1202068 c!699393) b!4048070))

(assert (= (and d!1202068 (not c!699393)) b!4048074))

(assert (= (and b!4048074 (not res!1649242)) b!4048073))

(assert (= (and d!1202068 (not res!1649240)) b!4048076))

(assert (= (and b!4048076 res!1649237) b!4048075))

(assert (= (and b!4048075 res!1649243) b!4048071))

(assert (= (and b!4048071 res!1649241) b!4048077))

(assert (= (and b!4048077 res!1649239) b!4048072))

(assert (= (and b!4048072 res!1649238) b!4048069))

(assert (=> b!4048073 m!4645119))

(assert (=> b!4048073 m!4645121))

(assert (=> b!4048073 m!4645119))

(assert (=> b!4048073 m!4645121))

(declare-fun m!4647909 () Bool)

(assert (=> b!4048073 m!4647909))

(declare-fun m!4647911 () Bool)

(assert (=> b!4048073 m!4647911))

(declare-fun m!4647913 () Bool)

(assert (=> b!4048075 m!4647913))

(declare-fun m!4647915 () Bool)

(assert (=> b!4048075 m!4647915))

(assert (=> b!4048075 m!4647915))

(declare-fun m!4647917 () Bool)

(assert (=> b!4048075 m!4647917))

(assert (=> b!4048075 m!4647917))

(declare-fun m!4647919 () Bool)

(assert (=> b!4048075 m!4647919))

(declare-fun m!4647921 () Bool)

(assert (=> d!1202068 m!4647921))

(declare-fun m!4647923 () Bool)

(assert (=> d!1202068 m!4647923))

(declare-fun m!4647925 () Bool)

(assert (=> d!1202068 m!4647925))

(assert (=> d!1202068 m!4647659))

(assert (=> b!4048077 m!4647913))

(assert (=> b!4048069 m!4647913))

(declare-fun m!4647927 () Bool)

(assert (=> b!4048069 m!4647927))

(assert (=> b!4048074 m!4645121))

(assert (=> b!4048074 m!4645119))

(assert (=> b!4048074 m!4645121))

(assert (=> b!4048074 m!4647909))

(declare-fun m!4647929 () Bool)

(assert (=> b!4048074 m!4647929))

(declare-fun m!4647931 () Bool)

(assert (=> b!4048074 m!4647931))

(assert (=> b!4048074 m!4647929))

(assert (=> b!4048074 m!4645119))

(assert (=> b!4048074 m!4647929))

(declare-fun m!4647933 () Bool)

(assert (=> b!4048074 m!4647933))

(assert (=> b!4048074 m!4647929))

(declare-fun m!4647935 () Bool)

(assert (=> b!4048074 m!4647935))

(declare-fun m!4647937 () Bool)

(assert (=> b!4048074 m!4647937))

(declare-fun m!4647939 () Bool)

(assert (=> b!4048074 m!4647939))

(assert (=> b!4048072 m!4647913))

(declare-fun m!4647941 () Bool)

(assert (=> b!4048072 m!4647941))

(assert (=> b!4048072 m!4647941))

(declare-fun m!4647943 () Bool)

(assert (=> b!4048072 m!4647943))

(assert (=> b!4048071 m!4647913))

(declare-fun m!4647945 () Bool)

(assert (=> b!4048071 m!4647945))

(assert (=> b!4048071 m!4645121))

(assert (=> b!4048076 m!4647913))

(assert (=> b!4048076 m!4647915))

(assert (=> b!4048076 m!4647915))

(assert (=> b!4048076 m!4647917))

(assert (=> b!4048076 m!4647917))

(declare-fun m!4647947 () Bool)

(assert (=> b!4048076 m!4647947))

(assert (=> bm!287664 d!1202068))

(declare-fun b!4048079 () Bool)

(declare-fun e!2511707 () List!43405)

(assert (=> b!4048079 (= e!2511707 (Cons!43281 (h!48701 lt!1441296) (++!11336 (t!335502 lt!1441296) lt!1441556)))))

(declare-fun b!4048080 () Bool)

(declare-fun res!1649245 () Bool)

(declare-fun e!2511706 () Bool)

(assert (=> b!4048080 (=> (not res!1649245) (not e!2511706))))

(declare-fun lt!1442207 () List!43405)

(assert (=> b!4048080 (= res!1649245 (= (size!32358 lt!1442207) (+ (size!32358 lt!1441296) (size!32358 lt!1441556))))))

(declare-fun b!4048081 () Bool)

(assert (=> b!4048081 (= e!2511706 (or (not (= lt!1441556 Nil!43281)) (= lt!1442207 lt!1441296)))))

(declare-fun b!4048078 () Bool)

(assert (=> b!4048078 (= e!2511707 lt!1441556)))

(declare-fun d!1202070 () Bool)

(assert (=> d!1202070 e!2511706))

(declare-fun res!1649244 () Bool)

(assert (=> d!1202070 (=> (not res!1649244) (not e!2511706))))

(assert (=> d!1202070 (= res!1649244 (= (content!6586 lt!1442207) ((_ map or) (content!6586 lt!1441296) (content!6586 lt!1441556))))))

(assert (=> d!1202070 (= lt!1442207 e!2511707)))

(declare-fun c!699394 () Bool)

(assert (=> d!1202070 (= c!699394 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1202070 (= (++!11336 lt!1441296 lt!1441556) lt!1442207)))

(assert (= (and d!1202070 c!699394) b!4048078))

(assert (= (and d!1202070 (not c!699394)) b!4048079))

(assert (= (and d!1202070 res!1649244) b!4048080))

(assert (= (and b!4048080 res!1649245) b!4048081))

(declare-fun m!4647949 () Bool)

(assert (=> b!4048079 m!4647949))

(declare-fun m!4647951 () Bool)

(assert (=> b!4048080 m!4647951))

(assert (=> b!4048080 m!4644369))

(declare-fun m!4647953 () Bool)

(assert (=> b!4048080 m!4647953))

(declare-fun m!4647955 () Bool)

(assert (=> d!1202070 m!4647955))

(assert (=> d!1202070 m!4645261))

(declare-fun m!4647957 () Bool)

(assert (=> d!1202070 m!4647957))

(assert (=> d!1200932 d!1202070))

(assert (=> d!1200932 d!1201776))

(assert (=> d!1200932 d!1200996))

(assert (=> b!4046441 d!1202000))

(assert (=> b!4046441 d!1202002))

(assert (=> b!4046441 d!1201882))

(assert (=> b!4046475 d!1201776))

(assert (=> b!4046475 d!1200886))

(declare-fun b!4048084 () Bool)

(declare-fun e!2511710 () Bool)

(assert (=> b!4048084 (= e!2511710 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))))

(declare-fun d!1202072 () Bool)

(declare-fun e!2511709 () Bool)

(assert (=> d!1202072 e!2511709))

(declare-fun res!1649246 () Bool)

(assert (=> d!1202072 (=> res!1649246 e!2511709)))

(declare-fun lt!1442208 () Bool)

(assert (=> d!1202072 (= res!1649246 (not lt!1442208))))

(declare-fun e!2511708 () Bool)

(assert (=> d!1202072 (= lt!1442208 e!2511708)))

(declare-fun res!1649248 () Bool)

(assert (=> d!1202072 (=> res!1649248 e!2511708)))

(assert (=> d!1202072 (= res!1649248 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1202072 (= (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282)))) lt!1442208)))

(declare-fun b!4048082 () Bool)

(assert (=> b!4048082 (= e!2511708 e!2511710)))

(declare-fun res!1649247 () Bool)

(assert (=> b!4048082 (=> (not res!1649247) (not e!2511710))))

(assert (=> b!4048082 (= res!1649247 (not ((_ is Nil!43281) (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4048083 () Bool)

(declare-fun res!1649249 () Bool)

(assert (=> b!4048083 (=> (not res!1649249) (not e!2511710))))

(assert (=> b!4048083 (= res!1649249 (= (head!8557 lt!1441314) (head!8557 (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4048085 () Bool)

(assert (=> b!4048085 (= e!2511709 (>= (size!32358 (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282)))) (size!32358 lt!1441314)))))

(assert (= (and d!1202072 (not res!1649248)) b!4048082))

(assert (= (and b!4048082 res!1649247) b!4048083))

(assert (= (and b!4048083 res!1649249) b!4048084))

(assert (= (and d!1202072 (not res!1649246)) b!4048085))

(assert (=> b!4048084 m!4644691))

(assert (=> b!4048084 m!4644393))

(declare-fun m!4647959 () Bool)

(assert (=> b!4048084 m!4647959))

(assert (=> b!4048084 m!4644691))

(assert (=> b!4048084 m!4647959))

(declare-fun m!4647961 () Bool)

(assert (=> b!4048084 m!4647961))

(assert (=> b!4048083 m!4644697))

(assert (=> b!4048083 m!4644393))

(declare-fun m!4647963 () Bool)

(assert (=> b!4048083 m!4647963))

(assert (=> b!4048085 m!4644393))

(declare-fun m!4647965 () Bool)

(assert (=> b!4048085 m!4647965))

(assert (=> b!4048085 m!4644397))

(assert (=> d!1200884 d!1202072))

(assert (=> d!1200884 d!1200878))

(declare-fun d!1202074 () Bool)

(assert (=> d!1202074 (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 (_2!24311 (v!39751 lt!1441282))))))

(assert (=> d!1202074 true))

(declare-fun _$46!1804 () Unit!62527)

(assert (=> d!1202074 (= (choose!24523 lt!1441314 (_2!24311 (v!39751 lt!1441282))) _$46!1804)))

(declare-fun bs!591370 () Bool)

(assert (= bs!591370 d!1202074))

(assert (=> bs!591370 m!4644393))

(assert (=> bs!591370 m!4644393))

(assert (=> bs!591370 m!4645187))

(assert (=> d!1200884 d!1202074))

(declare-fun b!4048088 () Bool)

(declare-fun e!2511713 () Bool)

(assert (=> b!4048088 (= e!2511713 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441296)) (tail!6289 (tail!6289 lt!1441287))))))

(declare-fun d!1202076 () Bool)

(declare-fun e!2511712 () Bool)

(assert (=> d!1202076 e!2511712))

(declare-fun res!1649250 () Bool)

(assert (=> d!1202076 (=> res!1649250 e!2511712)))

(declare-fun lt!1442209 () Bool)

(assert (=> d!1202076 (= res!1649250 (not lt!1442209))))

(declare-fun e!2511711 () Bool)

(assert (=> d!1202076 (= lt!1442209 e!2511711)))

(declare-fun res!1649252 () Bool)

(assert (=> d!1202076 (=> res!1649252 e!2511711)))

(assert (=> d!1202076 (= res!1649252 ((_ is Nil!43281) (tail!6289 lt!1441296)))))

(assert (=> d!1202076 (= (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 lt!1441287)) lt!1442209)))

(declare-fun b!4048086 () Bool)

(assert (=> b!4048086 (= e!2511711 e!2511713)))

(declare-fun res!1649251 () Bool)

(assert (=> b!4048086 (=> (not res!1649251) (not e!2511713))))

(assert (=> b!4048086 (= res!1649251 (not ((_ is Nil!43281) (tail!6289 lt!1441287))))))

(declare-fun b!4048087 () Bool)

(declare-fun res!1649253 () Bool)

(assert (=> b!4048087 (=> (not res!1649253) (not e!2511713))))

(assert (=> b!4048087 (= res!1649253 (= (head!8557 (tail!6289 lt!1441296)) (head!8557 (tail!6289 lt!1441287))))))

(declare-fun b!4048089 () Bool)

(assert (=> b!4048089 (= e!2511712 (>= (size!32358 (tail!6289 lt!1441287)) (size!32358 (tail!6289 lt!1441296))))))

(assert (= (and d!1202076 (not res!1649252)) b!4048086))

(assert (= (and b!4048086 res!1649251) b!4048087))

(assert (= (and b!4048087 res!1649253) b!4048088))

(assert (= (and d!1202076 (not res!1649250)) b!4048089))

(assert (=> b!4048088 m!4645237))

(assert (=> b!4048088 m!4646091))

(assert (=> b!4048088 m!4645239))

(declare-fun m!4647967 () Bool)

(assert (=> b!4048088 m!4647967))

(assert (=> b!4048088 m!4646091))

(assert (=> b!4048088 m!4647967))

(declare-fun m!4647969 () Bool)

(assert (=> b!4048088 m!4647969))

(assert (=> b!4048087 m!4645237))

(assert (=> b!4048087 m!4646097))

(assert (=> b!4048087 m!4645239))

(declare-fun m!4647971 () Bool)

(assert (=> b!4048087 m!4647971))

(assert (=> b!4048089 m!4645239))

(declare-fun m!4647973 () Bool)

(assert (=> b!4048089 m!4647973))

(assert (=> b!4048089 m!4645237))

(assert (=> b!4048089 m!4646103))

(assert (=> b!4046382 d!1202076))

(assert (=> b!4046382 d!1201258))

(declare-fun d!1202078 () Bool)

(assert (=> d!1202078 (= (tail!6289 lt!1441287) (t!335502 lt!1441287))))

(assert (=> b!4046382 d!1202078))

(assert (=> b!4046288 d!1201716))

(declare-fun b!4048091 () Bool)

(declare-fun e!2511715 () List!43405)

(assert (=> b!4048091 (= e!2511715 (Cons!43281 (h!48701 (t!335502 lt!1441314)) (++!11336 (t!335502 (t!335502 lt!1441314)) lt!1441283)))))

(declare-fun b!4048092 () Bool)

(declare-fun res!1649255 () Bool)

(declare-fun e!2511714 () Bool)

(assert (=> b!4048092 (=> (not res!1649255) (not e!2511714))))

(declare-fun lt!1442210 () List!43405)

(assert (=> b!4048092 (= res!1649255 (= (size!32358 lt!1442210) (+ (size!32358 (t!335502 lt!1441314)) (size!32358 lt!1441283))))))

(declare-fun b!4048093 () Bool)

(assert (=> b!4048093 (= e!2511714 (or (not (= lt!1441283 Nil!43281)) (= lt!1442210 (t!335502 lt!1441314))))))

(declare-fun b!4048090 () Bool)

(assert (=> b!4048090 (= e!2511715 lt!1441283)))

(declare-fun d!1202080 () Bool)

(assert (=> d!1202080 e!2511714))

(declare-fun res!1649254 () Bool)

(assert (=> d!1202080 (=> (not res!1649254) (not e!2511714))))

(assert (=> d!1202080 (= res!1649254 (= (content!6586 lt!1442210) ((_ map or) (content!6586 (t!335502 lt!1441314)) (content!6586 lt!1441283))))))

(assert (=> d!1202080 (= lt!1442210 e!2511715)))

(declare-fun c!699395 () Bool)

(assert (=> d!1202080 (= c!699395 ((_ is Nil!43281) (t!335502 lt!1441314)))))

(assert (=> d!1202080 (= (++!11336 (t!335502 lt!1441314) lt!1441283) lt!1442210)))

(assert (= (and d!1202080 c!699395) b!4048090))

(assert (= (and d!1202080 (not c!699395)) b!4048091))

(assert (= (and d!1202080 res!1649254) b!4048092))

(assert (= (and b!4048092 res!1649255) b!4048093))

(declare-fun m!4647975 () Bool)

(assert (=> b!4048091 m!4647975))

(declare-fun m!4647977 () Bool)

(assert (=> b!4048092 m!4647977))

(assert (=> b!4048092 m!4645191))

(assert (=> b!4048092 m!4645515))

(declare-fun m!4647979 () Bool)

(assert (=> d!1202080 m!4647979))

(assert (=> d!1202080 m!4647339))

(assert (=> d!1202080 m!4645519))

(assert (=> b!4046487 d!1202080))

(declare-fun b!4048096 () Bool)

(declare-fun e!2511718 () Bool)

(assert (=> b!4048096 (= e!2511718 (isPrefix!4021 (tail!6289 (tail!6289 newSuffix!27)) (tail!6289 (tail!6289 suffix!1299))))))

(declare-fun d!1202082 () Bool)

(declare-fun e!2511717 () Bool)

(assert (=> d!1202082 e!2511717))

(declare-fun res!1649256 () Bool)

(assert (=> d!1202082 (=> res!1649256 e!2511717)))

(declare-fun lt!1442211 () Bool)

(assert (=> d!1202082 (= res!1649256 (not lt!1442211))))

(declare-fun e!2511716 () Bool)

(assert (=> d!1202082 (= lt!1442211 e!2511716)))

(declare-fun res!1649258 () Bool)

(assert (=> d!1202082 (=> res!1649258 e!2511716)))

(assert (=> d!1202082 (= res!1649258 ((_ is Nil!43281) (tail!6289 newSuffix!27)))))

(assert (=> d!1202082 (= (isPrefix!4021 (tail!6289 newSuffix!27) (tail!6289 suffix!1299)) lt!1442211)))

(declare-fun b!4048094 () Bool)

(assert (=> b!4048094 (= e!2511716 e!2511718)))

(declare-fun res!1649257 () Bool)

(assert (=> b!4048094 (=> (not res!1649257) (not e!2511718))))

(assert (=> b!4048094 (= res!1649257 (not ((_ is Nil!43281) (tail!6289 suffix!1299))))))

(declare-fun b!4048095 () Bool)

(declare-fun res!1649259 () Bool)

(assert (=> b!4048095 (=> (not res!1649259) (not e!2511718))))

(assert (=> b!4048095 (= res!1649259 (= (head!8557 (tail!6289 newSuffix!27)) (head!8557 (tail!6289 suffix!1299))))))

(declare-fun b!4048097 () Bool)

(assert (=> b!4048097 (= e!2511717 (>= (size!32358 (tail!6289 suffix!1299)) (size!32358 (tail!6289 newSuffix!27))))))

(assert (= (and d!1202082 (not res!1649258)) b!4048094))

(assert (= (and b!4048094 res!1649257) b!4048095))

(assert (= (and b!4048095 res!1649259) b!4048096))

(assert (= (and d!1202082 (not res!1649256)) b!4048097))

(assert (=> b!4048096 m!4645471))

(declare-fun m!4647981 () Bool)

(assert (=> b!4048096 m!4647981))

(assert (=> b!4048096 m!4645473))

(assert (=> b!4048096 m!4646157))

(assert (=> b!4048096 m!4647981))

(assert (=> b!4048096 m!4646157))

(declare-fun m!4647983 () Bool)

(assert (=> b!4048096 m!4647983))

(assert (=> b!4048095 m!4645471))

(declare-fun m!4647985 () Bool)

(assert (=> b!4048095 m!4647985))

(assert (=> b!4048095 m!4645473))

(declare-fun m!4647987 () Bool)

(assert (=> b!4048095 m!4647987))

(assert (=> b!4048097 m!4645473))

(assert (=> b!4048097 m!4646155))

(assert (=> b!4048097 m!4645471))

(declare-fun m!4647989 () Bool)

(assert (=> b!4048097 m!4647989))

(assert (=> b!4046470 d!1202082))

(declare-fun d!1202084 () Bool)

(assert (=> d!1202084 (= (tail!6289 newSuffix!27) (t!335502 newSuffix!27))))

(assert (=> b!4046470 d!1202084))

(assert (=> b!4046470 d!1201288))

(declare-fun b!4048098 () Bool)

(declare-fun e!2511724 () Bool)

(declare-fun e!2511720 () Bool)

(assert (=> b!4048098 (= e!2511724 e!2511720)))

(declare-fun c!699397 () Bool)

(assert (=> b!4048098 (= c!699397 ((_ is EmptyLang!11839) (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314))))))

(declare-fun bm!287802 () Bool)

(declare-fun call!287807 () Bool)

(assert (=> bm!287802 (= call!287807 (isEmpty!25831 (tail!6289 lt!1441314)))))

(declare-fun b!4048099 () Bool)

(declare-fun e!2511722 () Bool)

(assert (=> b!4048099 (= e!2511722 (= (head!8557 (tail!6289 lt!1441314)) (c!698891 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314)))))))

(declare-fun b!4048100 () Bool)

(declare-fun e!2511719 () Bool)

(assert (=> b!4048100 (= e!2511719 (nullable!4154 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314))))))

(declare-fun b!4048101 () Bool)

(declare-fun e!2511725 () Bool)

(assert (=> b!4048101 (= e!2511725 (not (= (head!8557 (tail!6289 lt!1441314)) (c!698891 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314))))))))

(declare-fun b!4048102 () Bool)

(declare-fun res!1649263 () Bool)

(declare-fun e!2511721 () Bool)

(assert (=> b!4048102 (=> res!1649263 e!2511721)))

(assert (=> b!4048102 (= res!1649263 (not ((_ is ElementMatch!11839) (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314)))))))

(assert (=> b!4048102 (= e!2511720 e!2511721)))

(declare-fun b!4048103 () Bool)

(declare-fun e!2511723 () Bool)

(assert (=> b!4048103 (= e!2511723 e!2511725)))

(declare-fun res!1649265 () Bool)

(assert (=> b!4048103 (=> res!1649265 e!2511725)))

(assert (=> b!4048103 (= res!1649265 call!287807)))

(declare-fun b!4048104 () Bool)

(declare-fun res!1649264 () Bool)

(assert (=> b!4048104 (=> (not res!1649264) (not e!2511722))))

(assert (=> b!4048104 (= res!1649264 (not call!287807))))

(declare-fun b!4048105 () Bool)

(declare-fun res!1649267 () Bool)

(assert (=> b!4048105 (=> res!1649267 e!2511725)))

(assert (=> b!4048105 (= res!1649267 (not (isEmpty!25831 (tail!6289 (tail!6289 lt!1441314)))))))

(declare-fun d!1202086 () Bool)

(assert (=> d!1202086 e!2511724))

(declare-fun c!699396 () Bool)

(assert (=> d!1202086 (= c!699396 ((_ is EmptyExpr!11839) (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314))))))

(declare-fun lt!1442212 () Bool)

(assert (=> d!1202086 (= lt!1442212 e!2511719)))

(declare-fun c!699398 () Bool)

(assert (=> d!1202086 (= c!699398 (isEmpty!25831 (tail!6289 lt!1441314)))))

(assert (=> d!1202086 (validRegex!5354 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314)))))

(assert (=> d!1202086 (= (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314)) (tail!6289 lt!1441314)) lt!1442212)))

(declare-fun b!4048106 () Bool)

(assert (=> b!4048106 (= e!2511720 (not lt!1442212))))

(declare-fun b!4048107 () Bool)

(declare-fun res!1649261 () Bool)

(assert (=> b!4048107 (=> res!1649261 e!2511721)))

(assert (=> b!4048107 (= res!1649261 e!2511722)))

(declare-fun res!1649266 () Bool)

(assert (=> b!4048107 (=> (not res!1649266) (not e!2511722))))

(assert (=> b!4048107 (= res!1649266 lt!1442212)))

(declare-fun b!4048108 () Bool)

(declare-fun res!1649260 () Bool)

(assert (=> b!4048108 (=> (not res!1649260) (not e!2511722))))

(assert (=> b!4048108 (= res!1649260 (isEmpty!25831 (tail!6289 (tail!6289 lt!1441314))))))

(declare-fun b!4048109 () Bool)

(assert (=> b!4048109 (= e!2511724 (= lt!1442212 call!287807))))

(declare-fun b!4048110 () Bool)

(assert (=> b!4048110 (= e!2511721 e!2511723)))

(declare-fun res!1649262 () Bool)

(assert (=> b!4048110 (=> (not res!1649262) (not e!2511723))))

(assert (=> b!4048110 (= res!1649262 (not lt!1442212))))

(declare-fun b!4048111 () Bool)

(assert (=> b!4048111 (= e!2511719 (matchR!5792 (derivativeStep!3559 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314)) (head!8557 (tail!6289 lt!1441314))) (tail!6289 (tail!6289 lt!1441314))))))

(assert (= (and d!1202086 c!699398) b!4048100))

(assert (= (and d!1202086 (not c!699398)) b!4048111))

(assert (= (and d!1202086 c!699396) b!4048109))

(assert (= (and d!1202086 (not c!699396)) b!4048098))

(assert (= (and b!4048098 c!699397) b!4048106))

(assert (= (and b!4048098 (not c!699397)) b!4048102))

(assert (= (and b!4048102 (not res!1649263)) b!4048107))

(assert (= (and b!4048107 res!1649266) b!4048104))

(assert (= (and b!4048104 res!1649264) b!4048108))

(assert (= (and b!4048108 res!1649260) b!4048099))

(assert (= (and b!4048107 (not res!1649261)) b!4048110))

(assert (= (and b!4048110 res!1649262) b!4048103))

(assert (= (and b!4048103 (not res!1649265)) b!4048105))

(assert (= (and b!4048105 (not res!1649267)) b!4048101))

(assert (= (or b!4048109 b!4048103 b!4048104) bm!287802))

(assert (=> b!4048100 m!4645633))

(declare-fun m!4647991 () Bool)

(assert (=> b!4048100 m!4647991))

(assert (=> b!4048101 m!4644691))

(assert (=> b!4048101 m!4646059))

(assert (=> d!1202086 m!4644691))

(assert (=> d!1202086 m!4645631))

(assert (=> d!1202086 m!4645633))

(declare-fun m!4647993 () Bool)

(assert (=> d!1202086 m!4647993))

(assert (=> b!4048105 m!4644691))

(assert (=> b!4048105 m!4646053))

(assert (=> b!4048105 m!4646053))

(declare-fun m!4647995 () Bool)

(assert (=> b!4048105 m!4647995))

(assert (=> b!4048111 m!4644691))

(assert (=> b!4048111 m!4646059))

(assert (=> b!4048111 m!4645633))

(assert (=> b!4048111 m!4646059))

(declare-fun m!4647997 () Bool)

(assert (=> b!4048111 m!4647997))

(assert (=> b!4048111 m!4644691))

(assert (=> b!4048111 m!4646053))

(assert (=> b!4048111 m!4647997))

(assert (=> b!4048111 m!4646053))

(declare-fun m!4647999 () Bool)

(assert (=> b!4048111 m!4647999))

(assert (=> b!4048099 m!4644691))

(assert (=> b!4048099 m!4646059))

(assert (=> bm!287802 m!4644691))

(assert (=> bm!287802 m!4645631))

(assert (=> b!4048108 m!4644691))

(assert (=> b!4048108 m!4646053))

(assert (=> b!4048108 m!4646053))

(assert (=> b!4048108 m!4647995))

(assert (=> b!4046605 d!1202086))

(declare-fun call!287808 () Regex!11839)

(declare-fun c!699402 () Bool)

(declare-fun bm!287803 () Bool)

(declare-fun c!699399 () Bool)

(assert (=> bm!287803 (= call!287808 (derivativeStep!3559 (ite c!699402 (regOne!24191 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (ite c!699399 (reg!12168 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (regOne!24190 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (head!8557 lt!1441314)))))

(declare-fun b!4048112 () Bool)

(declare-fun e!2511729 () Regex!11839)

(declare-fun e!2511730 () Regex!11839)

(assert (=> b!4048112 (= e!2511729 e!2511730)))

(assert (=> b!4048112 (= c!699399 ((_ is Star!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4048114 () Bool)

(assert (=> b!4048114 (= c!699402 ((_ is Union!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun e!2511726 () Regex!11839)

(assert (=> b!4048114 (= e!2511726 e!2511729)))

(declare-fun bm!287804 () Bool)

(declare-fun call!287809 () Regex!11839)

(declare-fun call!287810 () Regex!11839)

(assert (=> bm!287804 (= call!287809 call!287810)))

(declare-fun b!4048115 () Bool)

(declare-fun e!2511727 () Regex!11839)

(assert (=> b!4048115 (= e!2511727 EmptyLang!11839)))

(declare-fun bm!287805 () Bool)

(declare-fun call!287811 () Regex!11839)

(assert (=> bm!287805 (= call!287811 (derivativeStep!3559 (ite c!699402 (regTwo!24191 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (regTwo!24190 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (head!8557 lt!1441314)))))

(declare-fun b!4048116 () Bool)

(declare-fun e!2511728 () Regex!11839)

(assert (=> b!4048116 (= e!2511728 (Union!11839 (Concat!19004 call!287809 (regTwo!24190 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) EmptyLang!11839))))

(declare-fun b!4048117 () Bool)

(assert (=> b!4048117 (= e!2511726 (ite (= (head!8557 lt!1441314) (c!698891 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) EmptyExpr!11839 EmptyLang!11839))))

(declare-fun b!4048118 () Bool)

(declare-fun c!699400 () Bool)

(assert (=> b!4048118 (= c!699400 (nullable!4154 (regOne!24190 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (=> b!4048118 (= e!2511730 e!2511728)))

(declare-fun b!4048113 () Bool)

(assert (=> b!4048113 (= e!2511728 (Union!11839 (Concat!19004 call!287809 (regTwo!24190 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) call!287811))))

(declare-fun d!1202088 () Bool)

(declare-fun lt!1442213 () Regex!11839)

(assert (=> d!1202088 (validRegex!5354 lt!1442213)))

(assert (=> d!1202088 (= lt!1442213 e!2511727)))

(declare-fun c!699401 () Bool)

(assert (=> d!1202088 (= c!699401 (or ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) ((_ is EmptyLang!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (=> d!1202088 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1202088 (= (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 lt!1441314)) lt!1442213)))

(declare-fun b!4048119 () Bool)

(assert (=> b!4048119 (= e!2511727 e!2511726)))

(declare-fun c!699403 () Bool)

(assert (=> b!4048119 (= c!699403 ((_ is ElementMatch!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun bm!287806 () Bool)

(assert (=> bm!287806 (= call!287810 call!287808)))

(declare-fun b!4048120 () Bool)

(assert (=> b!4048120 (= e!2511730 (Concat!19004 call!287810 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4048121 () Bool)

(assert (=> b!4048121 (= e!2511729 (Union!11839 call!287808 call!287811))))

(assert (= (and d!1202088 c!699401) b!4048115))

(assert (= (and d!1202088 (not c!699401)) b!4048119))

(assert (= (and b!4048119 c!699403) b!4048117))

(assert (= (and b!4048119 (not c!699403)) b!4048114))

(assert (= (and b!4048114 c!699402) b!4048121))

(assert (= (and b!4048114 (not c!699402)) b!4048112))

(assert (= (and b!4048112 c!699399) b!4048120))

(assert (= (and b!4048112 (not c!699399)) b!4048118))

(assert (= (and b!4048118 c!699400) b!4048113))

(assert (= (and b!4048118 (not c!699400)) b!4048116))

(assert (= (or b!4048113 b!4048116) bm!287804))

(assert (= (or b!4048120 bm!287804) bm!287806))

(assert (= (or b!4048121 bm!287806) bm!287803))

(assert (= (or b!4048121 b!4048113) bm!287805))

(assert (=> bm!287803 m!4644697))

(declare-fun m!4648001 () Bool)

(assert (=> bm!287803 m!4648001))

(assert (=> bm!287805 m!4644697))

(declare-fun m!4648003 () Bool)

(assert (=> bm!287805 m!4648003))

(declare-fun m!4648005 () Bool)

(assert (=> b!4048118 m!4648005))

(declare-fun m!4648007 () Bool)

(assert (=> d!1202088 m!4648007))

(assert (=> d!1202088 m!4645199))

(assert (=> b!4046605 d!1202088))

(assert (=> b!4046605 d!1201694))

(assert (=> b!4046605 d!1201240))

(declare-fun d!1202090 () Bool)

(declare-fun lt!1442214 () Int)

(assert (=> d!1202090 (>= lt!1442214 0)))

(declare-fun e!2511731 () Int)

(assert (=> d!1202090 (= lt!1442214 e!2511731)))

(declare-fun c!699404 () Bool)

(assert (=> d!1202090 (= c!699404 ((_ is Nil!43281) (++!11336 lt!1441314 newSuffixResult!27)))))

(assert (=> d!1202090 (= (size!32358 (++!11336 lt!1441314 newSuffixResult!27)) lt!1442214)))

(declare-fun b!4048122 () Bool)

(assert (=> b!4048122 (= e!2511731 0)))

(declare-fun b!4048123 () Bool)

(assert (=> b!4048123 (= e!2511731 (+ 1 (size!32358 (t!335502 (++!11336 lt!1441314 newSuffixResult!27)))))))

(assert (= (and d!1202090 c!699404) b!4048122))

(assert (= (and d!1202090 (not c!699404)) b!4048123))

(declare-fun m!4648009 () Bool)

(assert (=> b!4048123 m!4648009))

(assert (=> b!4046054 d!1202090))

(assert (=> b!4046054 d!1200886))

(declare-fun d!1202092 () Bool)

(assert (=> d!1202092 (= (isEmpty!25831 (originalCharacters!7534 token!484)) ((_ is Nil!43281) (originalCharacters!7534 token!484)))))

(assert (=> d!1201016 d!1202092))

(declare-fun bs!591371 () Bool)

(declare-fun d!1202094 () Bool)

(assert (= bs!591371 (and d!1202094 d!1201298)))

(declare-fun lambda!127495 () Int)

(assert (=> bs!591371 (= (= (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) (= lambda!127495 lambda!127482))))

(declare-fun bs!591372 () Bool)

(assert (= bs!591372 (and d!1202094 d!1201972)))

(assert (=> bs!591372 (= (= (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (h!48703 rules!2999)))) (= lambda!127495 lambda!127491))))

(assert (=> d!1202094 true))

(assert (=> d!1202094 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (dynLambda!18388 order!22681 lambda!127495))))

(assert (=> d!1202094 (= (equivClasses!2861 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (Forall2!1095 lambda!127495))))

(declare-fun bs!591373 () Bool)

(assert (= bs!591373 d!1202094))

(declare-fun m!4648011 () Bool)

(assert (=> bs!591373 m!4648011))

(assert (=> b!4046346 d!1202094))

(declare-fun d!1202096 () Bool)

(assert (=> d!1202096 (= (list!16120 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))) (list!16122 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))))))

(declare-fun bs!591374 () Bool)

(assert (= bs!591374 d!1202096))

(declare-fun m!4648013 () Bool)

(assert (=> bs!591374 m!4648013))

(assert (=> b!4046544 d!1202096))

(declare-fun b!4048124 () Bool)

(declare-fun e!2511737 () Bool)

(declare-fun e!2511733 () Bool)

(assert (=> b!4048124 (= e!2511737 e!2511733)))

(declare-fun c!699406 () Bool)

(assert (=> b!4048124 (= c!699406 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))))))

(declare-fun bm!287807 () Bool)

(declare-fun call!287812 () Bool)

(assert (=> bm!287807 (= call!287812 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))))))

(declare-fun b!4048125 () Bool)

(declare-fun e!2511735 () Bool)

(assert (=> b!4048125 (= e!2511735 (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))))))

(declare-fun b!4048126 () Bool)

(declare-fun e!2511732 () Bool)

(assert (=> b!4048126 (= e!2511732 (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))))))

(declare-fun b!4048127 () Bool)

(declare-fun e!2511738 () Bool)

(assert (=> b!4048127 (= e!2511738 (not (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))))))))

(declare-fun b!4048128 () Bool)

(declare-fun res!1649271 () Bool)

(declare-fun e!2511734 () Bool)

(assert (=> b!4048128 (=> res!1649271 e!2511734)))

(assert (=> b!4048128 (= res!1649271 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))))))

(assert (=> b!4048128 (= e!2511733 e!2511734)))

(declare-fun b!4048129 () Bool)

(declare-fun e!2511736 () Bool)

(assert (=> b!4048129 (= e!2511736 e!2511738)))

(declare-fun res!1649273 () Bool)

(assert (=> b!4048129 (=> res!1649273 e!2511738)))

(assert (=> b!4048129 (= res!1649273 call!287812)))

(declare-fun b!4048130 () Bool)

(declare-fun res!1649272 () Bool)

(assert (=> b!4048130 (=> (not res!1649272) (not e!2511735))))

(assert (=> b!4048130 (= res!1649272 (not call!287812))))

(declare-fun b!4048131 () Bool)

(declare-fun res!1649275 () Bool)

(assert (=> b!4048131 (=> res!1649275 e!2511738)))

(assert (=> b!4048131 (= res!1649275 (not (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))))))))

(declare-fun d!1202098 () Bool)

(assert (=> d!1202098 e!2511737))

(declare-fun c!699405 () Bool)

(assert (=> d!1202098 (= c!699405 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))))))

(declare-fun lt!1442215 () Bool)

(assert (=> d!1202098 (= lt!1442215 e!2511732)))

(declare-fun c!699407 () Bool)

(assert (=> d!1202098 (= c!699407 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))))))

(assert (=> d!1202098 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))))

(assert (=> d!1202098 (= (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561))))) lt!1442215)))

(declare-fun b!4048132 () Bool)

(assert (=> b!4048132 (= e!2511733 (not lt!1442215))))

(declare-fun b!4048133 () Bool)

(declare-fun res!1649269 () Bool)

(assert (=> b!4048133 (=> res!1649269 e!2511734)))

(assert (=> b!4048133 (= res!1649269 e!2511735)))

(declare-fun res!1649274 () Bool)

(assert (=> b!4048133 (=> (not res!1649274) (not e!2511735))))

(assert (=> b!4048133 (= res!1649274 lt!1442215)))

(declare-fun b!4048134 () Bool)

(declare-fun res!1649268 () Bool)

(assert (=> b!4048134 (=> (not res!1649268) (not e!2511735))))

(assert (=> b!4048134 (= res!1649268 (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))))))))

(declare-fun b!4048135 () Bool)

(assert (=> b!4048135 (= e!2511737 (= lt!1442215 call!287812))))

(declare-fun b!4048136 () Bool)

(assert (=> b!4048136 (= e!2511734 e!2511736)))

(declare-fun res!1649270 () Bool)

(assert (=> b!4048136 (=> (not res!1649270) (not e!2511736))))

(assert (=> b!4048136 (= res!1649270 (not lt!1442215))))

(declare-fun b!4048137 () Bool)

(assert (=> b!4048137 (= e!2511732 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))) (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))))) (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441561)))))))))

(assert (= (and d!1202098 c!699407) b!4048126))

(assert (= (and d!1202098 (not c!699407)) b!4048137))

(assert (= (and d!1202098 c!699405) b!4048135))

(assert (= (and d!1202098 (not c!699405)) b!4048124))

(assert (= (and b!4048124 c!699406) b!4048132))

(assert (= (and b!4048124 (not c!699406)) b!4048128))

(assert (= (and b!4048128 (not res!1649271)) b!4048133))

(assert (= (and b!4048133 res!1649274) b!4048130))

(assert (= (and b!4048130 res!1649272) b!4048134))

(assert (= (and b!4048134 res!1649268) b!4048125))

(assert (= (and b!4048133 (not res!1649269)) b!4048136))

(assert (= (and b!4048136 res!1649270) b!4048129))

(assert (= (and b!4048129 (not res!1649273)) b!4048131))

(assert (= (and b!4048131 (not res!1649275)) b!4048127))

(assert (= (or b!4048135 b!4048129 b!4048130) bm!287807))

(declare-fun m!4648015 () Bool)

(assert (=> b!4048126 m!4648015))

(assert (=> b!4048127 m!4645393))

(declare-fun m!4648017 () Bool)

(assert (=> b!4048127 m!4648017))

(assert (=> d!1202098 m!4645393))

(declare-fun m!4648019 () Bool)

(assert (=> d!1202098 m!4648019))

(declare-fun m!4648021 () Bool)

(assert (=> d!1202098 m!4648021))

(assert (=> b!4048131 m!4645393))

(declare-fun m!4648023 () Bool)

(assert (=> b!4048131 m!4648023))

(assert (=> b!4048131 m!4648023))

(declare-fun m!4648025 () Bool)

(assert (=> b!4048131 m!4648025))

(assert (=> b!4048137 m!4645393))

(assert (=> b!4048137 m!4648017))

(assert (=> b!4048137 m!4648017))

(declare-fun m!4648027 () Bool)

(assert (=> b!4048137 m!4648027))

(assert (=> b!4048137 m!4645393))

(assert (=> b!4048137 m!4648023))

(assert (=> b!4048137 m!4648027))

(assert (=> b!4048137 m!4648023))

(declare-fun m!4648029 () Bool)

(assert (=> b!4048137 m!4648029))

(assert (=> b!4048125 m!4645393))

(assert (=> b!4048125 m!4648017))

(assert (=> bm!287807 m!4645393))

(assert (=> bm!287807 m!4648019))

(assert (=> b!4048134 m!4645393))

(assert (=> b!4048134 m!4648023))

(assert (=> b!4048134 m!4648023))

(assert (=> b!4048134 m!4648025))

(assert (=> b!4046433 d!1202098))

(assert (=> b!4046433 d!1201882))

(assert (=> b!4046433 d!1202000))

(assert (=> b!4046433 d!1202002))

(assert (=> b!4046589 d!1201710))

(assert (=> b!4046589 d!1201696))

(declare-fun b!4048138 () Bool)

(declare-fun e!2511744 () Bool)

(declare-fun e!2511740 () Bool)

(assert (=> b!4048138 (= e!2511744 e!2511740)))

(declare-fun c!699409 () Bool)

(assert (=> b!4048138 (= c!699409 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun bm!287808 () Bool)

(declare-fun call!287813 () Bool)

(assert (=> bm!287808 (= call!287813 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(declare-fun b!4048139 () Bool)

(declare-fun e!2511742 () Bool)

(assert (=> b!4048139 (= e!2511742 (= (head!8557 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))) (c!698891 (regex!6934 (rule!10010 token!484)))))))

(declare-fun b!4048140 () Bool)

(declare-fun e!2511739 () Bool)

(assert (=> b!4048140 (= e!2511739 (nullable!4154 (regex!6934 (rule!10010 token!484))))))

(declare-fun b!4048141 () Bool)

(declare-fun e!2511745 () Bool)

(assert (=> b!4048141 (= e!2511745 (not (= (head!8557 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))) (c!698891 (regex!6934 (rule!10010 token!484))))))))

(declare-fun b!4048142 () Bool)

(declare-fun res!1649279 () Bool)

(declare-fun e!2511741 () Bool)

(assert (=> b!4048142 (=> res!1649279 e!2511741)))

(assert (=> b!4048142 (= res!1649279 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 token!484)))))))

(assert (=> b!4048142 (= e!2511740 e!2511741)))

(declare-fun b!4048143 () Bool)

(declare-fun e!2511743 () Bool)

(assert (=> b!4048143 (= e!2511743 e!2511745)))

(declare-fun res!1649281 () Bool)

(assert (=> b!4048143 (=> res!1649281 e!2511745)))

(assert (=> b!4048143 (= res!1649281 call!287813)))

(declare-fun b!4048144 () Bool)

(declare-fun res!1649280 () Bool)

(assert (=> b!4048144 (=> (not res!1649280) (not e!2511742))))

(assert (=> b!4048144 (= res!1649280 (not call!287813))))

(declare-fun b!4048145 () Bool)

(declare-fun res!1649283 () Bool)

(assert (=> b!4048145 (=> res!1649283 e!2511745)))

(assert (=> b!4048145 (= res!1649283 (not (isEmpty!25831 (tail!6289 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))))

(declare-fun d!1202100 () Bool)

(assert (=> d!1202100 e!2511744))

(declare-fun c!699408 () Bool)

(assert (=> d!1202100 (= c!699408 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 token!484))))))

(declare-fun lt!1442216 () Bool)

(assert (=> d!1202100 (= lt!1442216 e!2511739)))

(declare-fun c!699410 () Bool)

(assert (=> d!1202100 (= c!699410 (isEmpty!25831 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))))))

(assert (=> d!1202100 (validRegex!5354 (regex!6934 (rule!10010 token!484)))))

(assert (=> d!1202100 (= (matchR!5792 (regex!6934 (rule!10010 token!484)) (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304)))) lt!1442216)))

(declare-fun b!4048146 () Bool)

(assert (=> b!4048146 (= e!2511740 (not lt!1442216))))

(declare-fun b!4048147 () Bool)

(declare-fun res!1649277 () Bool)

(assert (=> b!4048147 (=> res!1649277 e!2511741)))

(assert (=> b!4048147 (= res!1649277 e!2511742)))

(declare-fun res!1649282 () Bool)

(assert (=> b!4048147 (=> (not res!1649282) (not e!2511742))))

(assert (=> b!4048147 (= res!1649282 lt!1442216)))

(declare-fun b!4048148 () Bool)

(declare-fun res!1649276 () Bool)

(assert (=> b!4048148 (=> (not res!1649276) (not e!2511742))))

(assert (=> b!4048148 (= res!1649276 (isEmpty!25831 (tail!6289 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304))))))))

(declare-fun b!4048149 () Bool)

(assert (=> b!4048149 (= e!2511744 (= lt!1442216 call!287813))))

(declare-fun b!4048150 () Bool)

(assert (=> b!4048150 (= e!2511741 e!2511743)))

(declare-fun res!1649278 () Bool)

(assert (=> b!4048150 (=> (not res!1649278) (not e!2511743))))

(assert (=> b!4048150 (= res!1649278 (not lt!1442216))))

(declare-fun b!4048151 () Bool)

(assert (=> b!4048151 (= e!2511739 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 token!484)) (head!8557 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304))))) (tail!6289 (_1!24312 (findLongestMatchInner!1390 (regex!6934 (rule!10010 token!484)) Nil!43281 (size!32358 Nil!43281) lt!1441304 lt!1441304 (size!32358 lt!1441304))))))))

(assert (= (and d!1202100 c!699410) b!4048140))

(assert (= (and d!1202100 (not c!699410)) b!4048151))

(assert (= (and d!1202100 c!699408) b!4048149))

(assert (= (and d!1202100 (not c!699408)) b!4048138))

(assert (= (and b!4048138 c!699409) b!4048146))

(assert (= (and b!4048138 (not c!699409)) b!4048142))

(assert (= (and b!4048142 (not res!1649279)) b!4048147))

(assert (= (and b!4048147 res!1649282) b!4048144))

(assert (= (and b!4048144 res!1649280) b!4048148))

(assert (= (and b!4048148 res!1649276) b!4048139))

(assert (= (and b!4048147 (not res!1649277)) b!4048150))

(assert (= (and b!4048150 res!1649278) b!4048143))

(assert (= (and b!4048143 (not res!1649281)) b!4048145))

(assert (= (and b!4048145 (not res!1649283)) b!4048141))

(assert (= (or b!4048149 b!4048143 b!4048144) bm!287808))

(assert (=> b!4048140 m!4645605))

(declare-fun m!4648031 () Bool)

(assert (=> b!4048141 m!4648031))

(assert (=> d!1202100 m!4645355))

(assert (=> d!1202100 m!4645609))

(declare-fun m!4648033 () Bool)

(assert (=> b!4048145 m!4648033))

(assert (=> b!4048145 m!4648033))

(declare-fun m!4648035 () Bool)

(assert (=> b!4048145 m!4648035))

(assert (=> b!4048151 m!4648031))

(assert (=> b!4048151 m!4648031))

(declare-fun m!4648037 () Bool)

(assert (=> b!4048151 m!4648037))

(assert (=> b!4048151 m!4648033))

(assert (=> b!4048151 m!4648037))

(assert (=> b!4048151 m!4648033))

(declare-fun m!4648039 () Bool)

(assert (=> b!4048151 m!4648039))

(assert (=> b!4048139 m!4648031))

(assert (=> bm!287808 m!4645355))

(assert (=> b!4048148 m!4648033))

(assert (=> b!4048148 m!4648033))

(assert (=> b!4048148 m!4648035))

(assert (=> b!4046414 d!1202100))

(assert (=> b!4046414 d!1201778))

(assert (=> b!4046414 d!1201234))

(assert (=> b!4046414 d!1201776))

(declare-fun d!1202102 () Bool)

(assert (=> d!1202102 (= (isDefined!7108 lt!1441561) (not (isEmpty!25830 lt!1441561)))))

(declare-fun bs!591375 () Bool)

(assert (= bs!591375 d!1202102))

(assert (=> bs!591375 m!4645411))

(assert (=> b!4046440 d!1202102))

(declare-fun e!2511748 () Bool)

(declare-fun b!4048154 () Bool)

(assert (=> b!4048154 (= e!2511748 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 (++!11336 prefix!494 newSuffix!27))))))

(declare-fun d!1202104 () Bool)

(declare-fun e!2511747 () Bool)

(assert (=> d!1202104 e!2511747))

(declare-fun res!1649284 () Bool)

(assert (=> d!1202104 (=> res!1649284 e!2511747)))

(declare-fun lt!1442217 () Bool)

(assert (=> d!1202104 (= res!1649284 (not lt!1442217))))

(declare-fun e!2511746 () Bool)

(assert (=> d!1202104 (= lt!1442217 e!2511746)))

(declare-fun res!1649286 () Bool)

(assert (=> d!1202104 (=> res!1649286 e!2511746)))

(assert (=> d!1202104 (= res!1649286 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1202104 (= (isPrefix!4021 lt!1441296 (++!11336 prefix!494 newSuffix!27)) lt!1442217)))

(declare-fun b!4048152 () Bool)

(assert (=> b!4048152 (= e!2511746 e!2511748)))

(declare-fun res!1649285 () Bool)

(assert (=> b!4048152 (=> (not res!1649285) (not e!2511748))))

(assert (=> b!4048152 (= res!1649285 (not ((_ is Nil!43281) (++!11336 prefix!494 newSuffix!27))))))

(declare-fun b!4048153 () Bool)

(declare-fun res!1649287 () Bool)

(assert (=> b!4048153 (=> (not res!1649287) (not e!2511748))))

(assert (=> b!4048153 (= res!1649287 (= (head!8557 lt!1441296) (head!8557 (++!11336 prefix!494 newSuffix!27))))))

(declare-fun b!4048155 () Bool)

(assert (=> b!4048155 (= e!2511747 (>= (size!32358 (++!11336 prefix!494 newSuffix!27)) (size!32358 lt!1441296)))))

(assert (= (and d!1202104 (not res!1649286)) b!4048152))

(assert (= (and b!4048152 res!1649285) b!4048153))

(assert (= (and b!4048153 res!1649287) b!4048154))

(assert (= (and d!1202104 (not res!1649284)) b!4048155))

(assert (=> b!4048154 m!4645237))

(assert (=> b!4048154 m!4644355))

(declare-fun m!4648041 () Bool)

(assert (=> b!4048154 m!4648041))

(assert (=> b!4048154 m!4645237))

(assert (=> b!4048154 m!4648041))

(declare-fun m!4648043 () Bool)

(assert (=> b!4048154 m!4648043))

(assert (=> b!4048153 m!4645243))

(assert (=> b!4048153 m!4644355))

(declare-fun m!4648045 () Bool)

(assert (=> b!4048153 m!4648045))

(assert (=> b!4048155 m!4644355))

(assert (=> b!4048155 m!4647419))

(assert (=> b!4048155 m!4644369))

(assert (=> d!1201022 d!1202104))

(assert (=> d!1201022 d!1200986))

(declare-fun d!1202106 () Bool)

(assert (=> d!1202106 (isPrefix!4021 lt!1441296 (++!11336 prefix!494 newSuffix!27))))

(assert (=> d!1202106 true))

(declare-fun _$58!607 () Unit!62527)

(assert (=> d!1202106 (= (choose!24532 lt!1441296 prefix!494 newSuffix!27) _$58!607)))

(declare-fun bs!591376 () Bool)

(assert (= bs!591376 d!1202106))

(assert (=> bs!591376 m!4644355))

(assert (=> bs!591376 m!4644355))

(assert (=> bs!591376 m!4645621))

(assert (=> d!1201022 d!1202106))

(assert (=> d!1201022 d!1201010))

(declare-fun d!1202108 () Bool)

(declare-fun lt!1442218 () Int)

(assert (=> d!1202108 (>= lt!1442218 0)))

(declare-fun e!2511749 () Int)

(assert (=> d!1202108 (= lt!1442218 e!2511749)))

(declare-fun c!699411 () Bool)

(assert (=> d!1202108 (= c!699411 ((_ is Nil!43281) lt!1441425))))

(assert (=> d!1202108 (= (size!32358 lt!1441425) lt!1442218)))

(declare-fun b!4048156 () Bool)

(assert (=> b!4048156 (= e!2511749 0)))

(declare-fun b!4048157 () Bool)

(assert (=> b!4048157 (= e!2511749 (+ 1 (size!32358 (t!335502 lt!1441425))))))

(assert (= (and d!1202108 c!699411) b!4048156))

(assert (= (and d!1202108 (not c!699411)) b!4048157))

(declare-fun m!4648047 () Bool)

(assert (=> b!4048157 m!4648047))

(assert (=> b!4046146 d!1202108))

(assert (=> b!4046146 d!1200886))

(assert (=> b!4046146 d!1201862))

(declare-fun d!1202110 () Bool)

(declare-fun lt!1442219 () Int)

(assert (=> d!1202110 (>= lt!1442219 0)))

(declare-fun e!2511750 () Int)

(assert (=> d!1202110 (= lt!1442219 e!2511750)))

(declare-fun c!699412 () Bool)

(assert (=> d!1202110 (= c!699412 ((_ is Nil!43281) lt!1441582))))

(assert (=> d!1202110 (= (size!32358 lt!1441582) lt!1442219)))

(declare-fun b!4048158 () Bool)

(assert (=> b!4048158 (= e!2511750 0)))

(declare-fun b!4048159 () Bool)

(assert (=> b!4048159 (= e!2511750 (+ 1 (size!32358 (t!335502 lt!1441582))))))

(assert (= (and d!1202110 c!699412) b!4048158))

(assert (= (and d!1202110 (not c!699412)) b!4048159))

(declare-fun m!4648049 () Bool)

(assert (=> b!4048159 m!4648049))

(assert (=> b!4046482 d!1202110))

(assert (=> b!4046482 d!1200912))

(assert (=> b!4046482 d!1201700))

(declare-fun d!1202112 () Bool)

(assert (=> d!1202112 (= (head!8557 newSuffix!27) (h!48701 newSuffix!27))))

(assert (=> b!4046469 d!1202112))

(declare-fun d!1202114 () Bool)

(assert (=> d!1202114 (= (head!8557 suffix!1299) (h!48701 suffix!1299))))

(assert (=> b!4046469 d!1202114))

(declare-fun d!1202116 () Bool)

(declare-fun lt!1442220 () Int)

(assert (=> d!1202116 (>= lt!1442220 0)))

(declare-fun e!2511751 () Int)

(assert (=> d!1202116 (= lt!1442220 e!2511751)))

(declare-fun c!699413 () Bool)

(assert (=> d!1202116 (= c!699413 ((_ is Nil!43281) lt!1441323))))

(assert (=> d!1202116 (= (size!32358 lt!1441323) lt!1442220)))

(declare-fun b!4048160 () Bool)

(assert (=> b!4048160 (= e!2511751 0)))

(declare-fun b!4048161 () Bool)

(assert (=> b!4048161 (= e!2511751 (+ 1 (size!32358 (t!335502 lt!1441323))))))

(assert (= (and d!1202116 c!699413) b!4048160))

(assert (= (and d!1202116 (not c!699413)) b!4048161))

(declare-fun m!4648051 () Bool)

(assert (=> b!4048161 m!4648051))

(assert (=> b!4046479 d!1202116))

(assert (=> b!4046479 d!1200886))

(declare-fun d!1202118 () Bool)

(declare-fun c!699416 () Bool)

(assert (=> d!1202118 (= c!699416 ((_ is Node!13145) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun e!2511756 () Bool)

(assert (=> d!1202118 (= (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))) e!2511756)))

(declare-fun b!4048168 () Bool)

(declare-fun inv!57859 (Conc!13145) Bool)

(assert (=> b!4048168 (= e!2511756 (inv!57859 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun b!4048169 () Bool)

(declare-fun e!2511757 () Bool)

(assert (=> b!4048169 (= e!2511756 e!2511757)))

(declare-fun res!1649290 () Bool)

(assert (=> b!4048169 (= res!1649290 (not ((_ is Leaf!20319) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))))))))

(assert (=> b!4048169 (=> res!1649290 e!2511757)))

(declare-fun b!4048170 () Bool)

(declare-fun inv!57860 (Conc!13145) Bool)

(assert (=> b!4048170 (= e!2511757 (inv!57860 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (= (and d!1202118 c!699416) b!4048168))

(assert (= (and d!1202118 (not c!699416)) b!4048169))

(assert (= (and b!4048169 (not res!1649290)) b!4048170))

(declare-fun m!4648053 () Bool)

(assert (=> b!4048168 m!4648053))

(declare-fun m!4648055 () Bool)

(assert (=> b!4048170 m!4648055))

(assert (=> b!4046164 d!1202118))

(assert (=> b!4046577 d!1201710))

(declare-fun d!1202120 () Bool)

(assert (=> d!1202120 (= (nullable!4154 (regex!6934 (rule!10010 token!484))) (nullableFct!1170 (regex!6934 (rule!10010 token!484))))))

(declare-fun bs!591377 () Bool)

(assert (= bs!591377 d!1202120))

(declare-fun m!4648057 () Bool)

(assert (=> bs!591377 m!4648057))

(assert (=> b!4046611 d!1202120))

(declare-fun d!1202122 () Bool)

(declare-fun c!699417 () Bool)

(assert (=> d!1202122 (= c!699417 ((_ is Node!13145) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))))))

(declare-fun e!2511758 () Bool)

(assert (=> d!1202122 (= (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))) e!2511758)))

(declare-fun b!4048171 () Bool)

(assert (=> b!4048171 (= e!2511758 (inv!57859 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))))))

(declare-fun b!4048172 () Bool)

(declare-fun e!2511759 () Bool)

(assert (=> b!4048172 (= e!2511758 e!2511759)))

(declare-fun res!1649291 () Bool)

(assert (=> b!4048172 (= res!1649291 (not ((_ is Leaf!20319) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))))))))

(assert (=> b!4048172 (=> res!1649291 e!2511759)))

(declare-fun b!4048173 () Bool)

(assert (=> b!4048173 (= e!2511759 (inv!57860 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))))))

(assert (= (and d!1202122 c!699417) b!4048171))

(assert (= (and d!1202122 (not c!699417)) b!4048172))

(assert (= (and b!4048172 (not res!1649291)) b!4048173))

(declare-fun m!4648059 () Bool)

(assert (=> b!4048171 m!4648059))

(declare-fun m!4648061 () Bool)

(assert (=> b!4048173 m!4648061))

(assert (=> b!4046512 d!1202122))

(assert (=> b!4046413 d!1201278))

(declare-fun d!1202124 () Bool)

(assert (=> d!1202124 (= (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550))))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550))))))))

(declare-fun b_lambda!118289 () Bool)

(assert (=> (not b_lambda!118289) (not d!1202124)))

(declare-fun tb!243541 () Bool)

(declare-fun t!335722 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335722) tb!243541))

(declare-fun result!295108 () Bool)

(assert (=> tb!243541 (= result!295108 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550)))))))))

(declare-fun m!4648063 () Bool)

(assert (=> tb!243541 m!4648063))

(assert (=> d!1202124 t!335722))

(declare-fun b_and!311323 () Bool)

(assert (= b_and!311299 (and (=> t!335722 result!295108) b_and!311323)))

(declare-fun t!335724 () Bool)

(declare-fun tb!243543 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335724) tb!243543))

(declare-fun result!295110 () Bool)

(assert (= result!295110 result!295108))

(assert (=> d!1202124 t!335724))

(declare-fun b_and!311325 () Bool)

(assert (= b_and!311301 (and (=> t!335724 result!295110) b_and!311325)))

(declare-fun tb!243545 () Bool)

(declare-fun t!335726 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335726) tb!243545))

(declare-fun result!295112 () Bool)

(assert (= result!295112 result!295108))

(assert (=> d!1202124 t!335726))

(declare-fun b_and!311327 () Bool)

(assert (= b_and!311303 (and (=> t!335726 result!295112) b_and!311327)))

(assert (=> d!1202124 m!4645357))

(declare-fun m!4648065 () Bool)

(assert (=> d!1202124 m!4648065))

(assert (=> b!4046413 d!1202124))

(declare-fun d!1202126 () Bool)

(assert (=> d!1202126 (= (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550)))) (fromListB!2347 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441550)))))))

(declare-fun bs!591378 () Bool)

(assert (= bs!591378 d!1202126))

(declare-fun m!4648067 () Bool)

(assert (=> bs!591378 m!4648067))

(assert (=> b!4046413 d!1202126))

(assert (=> d!1200746 d!1200954))

(declare-fun b!4048176 () Bool)

(declare-fun e!2511763 () Bool)

(assert (=> b!4048176 (= e!2511763 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441314)) (tail!6289 (tail!6289 lt!1441304))))))

(declare-fun d!1202128 () Bool)

(declare-fun e!2511762 () Bool)

(assert (=> d!1202128 e!2511762))

(declare-fun res!1649292 () Bool)

(assert (=> d!1202128 (=> res!1649292 e!2511762)))

(declare-fun lt!1442221 () Bool)

(assert (=> d!1202128 (= res!1649292 (not lt!1442221))))

(declare-fun e!2511761 () Bool)

(assert (=> d!1202128 (= lt!1442221 e!2511761)))

(declare-fun res!1649294 () Bool)

(assert (=> d!1202128 (=> res!1649294 e!2511761)))

(assert (=> d!1202128 (= res!1649294 ((_ is Nil!43281) (tail!6289 lt!1441314)))))

(assert (=> d!1202128 (= (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 lt!1441304)) lt!1442221)))

(declare-fun b!4048174 () Bool)

(assert (=> b!4048174 (= e!2511761 e!2511763)))

(declare-fun res!1649293 () Bool)

(assert (=> b!4048174 (=> (not res!1649293) (not e!2511763))))

(assert (=> b!4048174 (= res!1649293 (not ((_ is Nil!43281) (tail!6289 lt!1441304))))))

(declare-fun b!4048175 () Bool)

(declare-fun res!1649295 () Bool)

(assert (=> b!4048175 (=> (not res!1649295) (not e!2511763))))

(assert (=> b!4048175 (= res!1649295 (= (head!8557 (tail!6289 lt!1441314)) (head!8557 (tail!6289 lt!1441304))))))

(declare-fun b!4048177 () Bool)

(assert (=> b!4048177 (= e!2511762 (>= (size!32358 (tail!6289 lt!1441304)) (size!32358 (tail!6289 lt!1441314))))))

(assert (= (and d!1202128 (not res!1649294)) b!4048174))

(assert (= (and b!4048174 res!1649293) b!4048175))

(assert (= (and b!4048175 res!1649295) b!4048176))

(assert (= (and d!1202128 (not res!1649292)) b!4048177))

(assert (=> b!4048176 m!4644691))

(assert (=> b!4048176 m!4646053))

(assert (=> b!4048176 m!4645379))

(assert (=> b!4048176 m!4646171))

(assert (=> b!4048176 m!4646053))

(assert (=> b!4048176 m!4646171))

(declare-fun m!4648069 () Bool)

(assert (=> b!4048176 m!4648069))

(assert (=> b!4048175 m!4644691))

(assert (=> b!4048175 m!4646059))

(assert (=> b!4048175 m!4645379))

(assert (=> b!4048175 m!4647771))

(assert (=> b!4048177 m!4645379))

(assert (=> b!4048177 m!4646169))

(assert (=> b!4048177 m!4644691))

(assert (=> b!4048177 m!4646065))

(assert (=> b!4046474 d!1202128))

(assert (=> b!4046474 d!1201240))

(assert (=> b!4046474 d!1201294))

(declare-fun b!4048178 () Bool)

(declare-fun e!2511764 () Bool)

(assert (=> b!4048178 (= e!2511764 (inv!15 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314))))))

(declare-fun b!4048179 () Bool)

(declare-fun e!2511765 () Bool)

(assert (=> b!4048179 (= e!2511765 (inv!16 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314))))))

(declare-fun b!4048180 () Bool)

(declare-fun e!2511766 () Bool)

(assert (=> b!4048180 (= e!2511765 e!2511766)))

(declare-fun c!699419 () Bool)

(assert (=> b!4048180 (= c!699419 ((_ is IntegerValue!21493) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314))))))

(declare-fun b!4048181 () Bool)

(assert (=> b!4048181 (= e!2511766 (inv!17 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314))))))

(declare-fun b!4048182 () Bool)

(declare-fun res!1649296 () Bool)

(assert (=> b!4048182 (=> res!1649296 e!2511764)))

(assert (=> b!4048182 (= res!1649296 (not ((_ is IntegerValue!21494) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314)))))))

(assert (=> b!4048182 (= e!2511766 e!2511764)))

(declare-fun d!1202130 () Bool)

(declare-fun c!699418 () Bool)

(assert (=> d!1202130 (= c!699418 ((_ is IntegerValue!21492) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314))))))

(assert (=> d!1202130 (= (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (seqFromList!5151 lt!1441314))) e!2511765)))

(assert (= (and d!1202130 c!699418) b!4048179))

(assert (= (and d!1202130 (not c!699418)) b!4048180))

(assert (= (and b!4048180 c!699419) b!4048181))

(assert (= (and b!4048180 (not c!699419)) b!4048182))

(assert (= (and b!4048182 (not res!1649296)) b!4048178))

(declare-fun m!4648071 () Bool)

(assert (=> b!4048178 m!4648071))

(declare-fun m!4648073 () Bool)

(assert (=> b!4048179 m!4648073))

(declare-fun m!4648075 () Bool)

(assert (=> b!4048181 m!4648075))

(assert (=> tb!243333 d!1202130))

(declare-fun d!1202132 () Bool)

(assert (=> d!1202132 (= (inv!57855 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))) (isBalanced!3685 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun bs!591379 () Bool)

(assert (= bs!591379 d!1202132))

(declare-fun m!4648077 () Bool)

(assert (=> bs!591379 m!4648077))

(assert (=> tb!243341 d!1202132))

(declare-fun d!1202134 () Bool)

(assert (=> d!1202134 (= lt!1441278 suffixResult!105)))

(assert (=> d!1202134 true))

(declare-fun _$63!1135 () Unit!62527)

(assert (=> d!1202134 (= (choose!24526 lt!1441296 lt!1441278 lt!1441296 suffixResult!105 lt!1441304) _$63!1135)))

(assert (=> d!1200918 d!1202134))

(assert (=> d!1200918 d!1200966))

(declare-fun d!1202136 () Bool)

(declare-fun c!699420 () Bool)

(assert (=> d!1202136 (= c!699420 ((_ is Nil!43281) lt!1441582))))

(declare-fun e!2511767 () (InoxSet C!23864))

(assert (=> d!1202136 (= (content!6586 lt!1441582) e!2511767)))

(declare-fun b!4048183 () Bool)

(assert (=> b!4048183 (= e!2511767 ((as const (Array C!23864 Bool)) false))))

(declare-fun b!4048184 () Bool)

(assert (=> b!4048184 (= e!2511767 ((_ map or) (store ((as const (Array C!23864 Bool)) false) (h!48701 lt!1441582) true) (content!6586 (t!335502 lt!1441582))))))

(assert (= (and d!1202136 c!699420) b!4048183))

(assert (= (and d!1202136 (not c!699420)) b!4048184))

(declare-fun m!4648079 () Bool)

(assert (=> b!4048184 m!4648079))

(declare-fun m!4648081 () Bool)

(assert (=> b!4048184 m!4648081))

(assert (=> d!1200978 d!1202136))

(assert (=> d!1200978 d!1201284))

(assert (=> d!1200978 d!1201740))

(declare-fun bs!591380 () Bool)

(declare-fun d!1202138 () Bool)

(assert (= bs!591380 (and d!1202138 d!1202020)))

(declare-fun lambda!127498 () Int)

(assert (=> bs!591380 (= lambda!127498 lambda!127494)))

(assert (=> d!1202138 true))

(declare-fun lt!1442224 () Bool)

(assert (=> d!1202138 (= lt!1442224 (rulesValidInductive!2529 thiss!21717 rules!2999))))

(assert (=> d!1202138 (= lt!1442224 (forall!8378 rules!2999 lambda!127498))))

(assert (=> d!1202138 (= (rulesValid!2696 thiss!21717 rules!2999) lt!1442224)))

(declare-fun bs!591381 () Bool)

(assert (= bs!591381 d!1202138))

(assert (=> bs!591381 m!4645231))

(declare-fun m!4648083 () Bool)

(assert (=> bs!591381 m!4648083))

(assert (=> d!1201040 d!1202138))

(declare-fun e!2511770 () Bool)

(declare-fun b!4048187 () Bool)

(assert (=> b!4048187 (= e!2511770 (isPrefix!4021 (tail!6289 lt!1441296) (tail!6289 (++!11336 prefix!494 suffix!1299))))))

(declare-fun d!1202140 () Bool)

(declare-fun e!2511769 () Bool)

(assert (=> d!1202140 e!2511769))

(declare-fun res!1649297 () Bool)

(assert (=> d!1202140 (=> res!1649297 e!2511769)))

(declare-fun lt!1442225 () Bool)

(assert (=> d!1202140 (= res!1649297 (not lt!1442225))))

(declare-fun e!2511768 () Bool)

(assert (=> d!1202140 (= lt!1442225 e!2511768)))

(declare-fun res!1649299 () Bool)

(assert (=> d!1202140 (=> res!1649299 e!2511768)))

(assert (=> d!1202140 (= res!1649299 ((_ is Nil!43281) lt!1441296))))

(assert (=> d!1202140 (= (isPrefix!4021 lt!1441296 (++!11336 prefix!494 suffix!1299)) lt!1442225)))

(declare-fun b!4048185 () Bool)

(assert (=> b!4048185 (= e!2511768 e!2511770)))

(declare-fun res!1649298 () Bool)

(assert (=> b!4048185 (=> (not res!1649298) (not e!2511770))))

(assert (=> b!4048185 (= res!1649298 (not ((_ is Nil!43281) (++!11336 prefix!494 suffix!1299))))))

(declare-fun b!4048186 () Bool)

(declare-fun res!1649300 () Bool)

(assert (=> b!4048186 (=> (not res!1649300) (not e!2511770))))

(assert (=> b!4048186 (= res!1649300 (= (head!8557 lt!1441296) (head!8557 (++!11336 prefix!494 suffix!1299))))))

(declare-fun b!4048188 () Bool)

(assert (=> b!4048188 (= e!2511769 (>= (size!32358 (++!11336 prefix!494 suffix!1299)) (size!32358 lt!1441296)))))

(assert (= (and d!1202140 (not res!1649299)) b!4048185))

(assert (= (and b!4048185 res!1649298) b!4048186))

(assert (= (and b!4048186 res!1649300) b!4048187))

(assert (= (and d!1202140 (not res!1649297)) b!4048188))

(assert (=> b!4048187 m!4645237))

(assert (=> b!4048187 m!4644379))

(assert (=> b!4048187 m!4647443))

(assert (=> b!4048187 m!4645237))

(assert (=> b!4048187 m!4647443))

(declare-fun m!4648085 () Bool)

(assert (=> b!4048187 m!4648085))

(assert (=> b!4048186 m!4645243))

(assert (=> b!4048186 m!4644379))

(assert (=> b!4048186 m!4647447))

(assert (=> b!4048188 m!4644379))

(assert (=> b!4048188 m!4647449))

(assert (=> b!4048188 m!4644369))

(assert (=> d!1201024 d!1202140))

(assert (=> d!1201024 d!1200940))

(declare-fun d!1202142 () Bool)

(assert (=> d!1202142 (isPrefix!4021 lt!1441296 (++!11336 prefix!494 suffix!1299))))

(assert (=> d!1202142 true))

(declare-fun _$58!608 () Unit!62527)

(assert (=> d!1202142 (= (choose!24532 lt!1441296 prefix!494 suffix!1299) _$58!608)))

(declare-fun bs!591382 () Bool)

(assert (= bs!591382 d!1202142))

(assert (=> bs!591382 m!4644379))

(assert (=> bs!591382 m!4644379))

(assert (=> bs!591382 m!4645625))

(assert (=> d!1201024 d!1202142))

(assert (=> d!1201024 d!1201010))

(declare-fun b!4048189 () Bool)

(declare-fun e!2511776 () Bool)

(declare-fun e!2511772 () Bool)

(assert (=> b!4048189 (= e!2511776 e!2511772)))

(declare-fun c!699422 () Bool)

(assert (=> b!4048189 (= c!699422 ((_ is EmptyLang!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun bm!287809 () Bool)

(declare-fun call!287814 () Bool)

(assert (=> bm!287809 (= call!287814 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))))))

(declare-fun b!4048190 () Bool)

(declare-fun e!2511774 () Bool)

(assert (=> b!4048190 (= e!2511774 (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(declare-fun b!4048191 () Bool)

(declare-fun e!2511771 () Bool)

(assert (=> b!4048191 (= e!2511771 (nullable!4154 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun b!4048192 () Bool)

(declare-fun e!2511777 () Bool)

(assert (=> b!4048192 (= e!2511777 (not (= (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))) (c!698891 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))))

(declare-fun b!4048193 () Bool)

(declare-fun res!1649304 () Bool)

(declare-fun e!2511773 () Bool)

(assert (=> b!4048193 (=> res!1649304 e!2511773)))

(assert (=> b!4048193 (= res!1649304 (not ((_ is ElementMatch!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))))

(assert (=> b!4048193 (= e!2511772 e!2511773)))

(declare-fun b!4048194 () Bool)

(declare-fun e!2511775 () Bool)

(assert (=> b!4048194 (= e!2511775 e!2511777)))

(declare-fun res!1649306 () Bool)

(assert (=> b!4048194 (=> res!1649306 e!2511777)))

(assert (=> b!4048194 (= res!1649306 call!287814)))

(declare-fun b!4048195 () Bool)

(declare-fun res!1649305 () Bool)

(assert (=> b!4048195 (=> (not res!1649305) (not e!2511774))))

(assert (=> b!4048195 (= res!1649305 (not call!287814))))

(declare-fun b!4048196 () Bool)

(declare-fun res!1649308 () Bool)

(assert (=> b!4048196 (=> res!1649308 e!2511777)))

(assert (=> b!4048196 (= res!1649308 (not (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))))))))

(declare-fun d!1202144 () Bool)

(assert (=> d!1202144 e!2511776))

(declare-fun c!699421 () Bool)

(assert (=> d!1202144 (= c!699421 ((_ is EmptyExpr!11839) (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))))

(declare-fun lt!1442226 () Bool)

(assert (=> d!1202144 (= lt!1442226 e!2511771)))

(declare-fun c!699423 () Bool)

(assert (=> d!1202144 (= c!699423 (isEmpty!25831 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))))))

(assert (=> d!1202144 (validRegex!5354 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))))

(assert (=> d!1202144 (= (matchR!5792 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500))))) lt!1442226)))

(declare-fun b!4048197 () Bool)

(assert (=> b!4048197 (= e!2511772 (not lt!1442226))))

(declare-fun b!4048198 () Bool)

(declare-fun res!1649302 () Bool)

(assert (=> b!4048198 (=> res!1649302 e!2511773)))

(assert (=> b!4048198 (= res!1649302 e!2511774)))

(declare-fun res!1649307 () Bool)

(assert (=> b!4048198 (=> (not res!1649307) (not e!2511774))))

(assert (=> b!4048198 (= res!1649307 lt!1442226)))

(declare-fun b!4048199 () Bool)

(declare-fun res!1649301 () Bool)

(assert (=> b!4048199 (=> (not res!1649301) (not e!2511774))))

(assert (=> b!4048199 (= res!1649301 (isEmpty!25831 (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500)))))))))

(declare-fun b!4048200 () Bool)

(assert (=> b!4048200 (= e!2511776 (= lt!1442226 call!287814))))

(declare-fun b!4048201 () Bool)

(assert (=> b!4048201 (= e!2511773 e!2511775)))

(declare-fun res!1649303 () Bool)

(assert (=> b!4048201 (=> (not res!1649303) (not e!2511775))))

(assert (=> b!4048201 (= res!1649303 (not lt!1442226))))

(declare-fun b!4048202 () Bool)

(assert (=> b!4048202 (= e!2511771 (matchR!5792 (derivativeStep!3559 (regex!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))) (head!8557 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500)))))) (tail!6289 (list!16120 (charsOf!4750 (_1!24311 (get!14199 lt!1441500)))))))))

(assert (= (and d!1202144 c!699423) b!4048191))

(assert (= (and d!1202144 (not c!699423)) b!4048202))

(assert (= (and d!1202144 c!699421) b!4048200))

(assert (= (and d!1202144 (not c!699421)) b!4048189))

(assert (= (and b!4048189 c!699422) b!4048197))

(assert (= (and b!4048189 (not c!699422)) b!4048193))

(assert (= (and b!4048193 (not res!1649304)) b!4048198))

(assert (= (and b!4048198 res!1649307) b!4048195))

(assert (= (and b!4048195 res!1649305) b!4048199))

(assert (= (and b!4048199 res!1649301) b!4048190))

(assert (= (and b!4048198 (not res!1649302)) b!4048201))

(assert (= (and b!4048201 res!1649303) b!4048194))

(assert (= (and b!4048194 (not res!1649306)) b!4048196))

(assert (= (and b!4048196 (not res!1649308)) b!4048192))

(assert (= (or b!4048200 b!4048194 b!4048195) bm!287809))

(assert (=> b!4048191 m!4645201))

(assert (=> b!4048192 m!4645131))

(declare-fun m!4648087 () Bool)

(assert (=> b!4048192 m!4648087))

(assert (=> d!1202144 m!4645131))

(declare-fun m!4648089 () Bool)

(assert (=> d!1202144 m!4648089))

(assert (=> d!1202144 m!4645199))

(assert (=> b!4048196 m!4645131))

(declare-fun m!4648091 () Bool)

(assert (=> b!4048196 m!4648091))

(assert (=> b!4048196 m!4648091))

(declare-fun m!4648093 () Bool)

(assert (=> b!4048196 m!4648093))

(assert (=> b!4048202 m!4645131))

(assert (=> b!4048202 m!4648087))

(assert (=> b!4048202 m!4648087))

(declare-fun m!4648095 () Bool)

(assert (=> b!4048202 m!4648095))

(assert (=> b!4048202 m!4645131))

(assert (=> b!4048202 m!4648091))

(assert (=> b!4048202 m!4648095))

(assert (=> b!4048202 m!4648091))

(declare-fun m!4648097 () Bool)

(assert (=> b!4048202 m!4648097))

(assert (=> b!4048190 m!4645131))

(assert (=> b!4048190 m!4648087))

(assert (=> bm!287809 m!4645131))

(assert (=> bm!287809 m!4648089))

(assert (=> b!4048199 m!4645131))

(assert (=> b!4048199 m!4648091))

(assert (=> b!4048199 m!4648091))

(assert (=> b!4048199 m!4648093))

(assert (=> b!4046287 d!1202144))

(assert (=> b!4046287 d!1201984))

(assert (=> b!4046287 d!1201986))

(assert (=> b!4046287 d!1201716))

(assert (=> b!4046381 d!1201710))

(declare-fun d!1202146 () Bool)

(assert (=> d!1202146 (= (head!8557 lt!1441287) (h!48701 lt!1441287))))

(assert (=> b!4046381 d!1202146))

(declare-fun bs!591383 () Bool)

(declare-fun d!1202148 () Bool)

(assert (= bs!591383 (and d!1202148 d!1201774)))

(declare-fun lambda!127499 () Int)

(assert (=> bs!591383 (= lambda!127499 lambda!127485)))

(declare-fun bs!591384 () Bool)

(assert (= bs!591384 (and d!1202148 d!1201800)))

(assert (=> bs!591384 (= (and (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (= lambda!127499 lambda!127488))))

(declare-fun bs!591385 () Bool)

(assert (= bs!591385 (and d!1202148 d!1201906)))

(assert (=> bs!591385 (= (and (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (= lambda!127499 lambda!127489))))

(declare-fun bs!591386 () Bool)

(assert (= bs!591386 (and d!1202148 d!1201924)))

(assert (=> bs!591386 (= (and (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (h!48703 rules!2999)))) (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (h!48703 rules!2999))))) (= lambda!127499 lambda!127490))))

(assert (=> d!1202148 true))

(assert (=> d!1202148 (< (dynLambda!18390 order!22685 (toChars!9341 (transformation!6934 (rule!10010 token!484)))) (dynLambda!18389 order!22683 lambda!127499))))

(assert (=> d!1202148 true))

(assert (=> d!1202148 (< (dynLambda!18387 order!22679 (toValue!9482 (transformation!6934 (rule!10010 token!484)))) (dynLambda!18389 order!22683 lambda!127499))))

(assert (=> d!1202148 (= (semiInverseModEq!2962 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) (Forall!1495 lambda!127499))))

(declare-fun bs!591387 () Bool)

(assert (= bs!591387 d!1202148))

(declare-fun m!4648099 () Bool)

(assert (=> bs!591387 m!4648099))

(assert (=> d!1201032 d!1202148))

(declare-fun b!4048204 () Bool)

(declare-fun e!2511779 () List!43405)

(assert (=> b!4048204 (= e!2511779 (Cons!43281 (h!48701 (t!335502 newSuffix!27)) (++!11336 (t!335502 (t!335502 newSuffix!27)) lt!1441303)))))

(declare-fun b!4048205 () Bool)

(declare-fun res!1649310 () Bool)

(declare-fun e!2511778 () Bool)

(assert (=> b!4048205 (=> (not res!1649310) (not e!2511778))))

(declare-fun lt!1442227 () List!43405)

(assert (=> b!4048205 (= res!1649310 (= (size!32358 lt!1442227) (+ (size!32358 (t!335502 newSuffix!27)) (size!32358 lt!1441303))))))

(declare-fun b!4048206 () Bool)

(assert (=> b!4048206 (= e!2511778 (or (not (= lt!1441303 Nil!43281)) (= lt!1442227 (t!335502 newSuffix!27))))))

(declare-fun b!4048203 () Bool)

(assert (=> b!4048203 (= e!2511779 lt!1441303)))

(declare-fun d!1202150 () Bool)

(assert (=> d!1202150 e!2511778))

(declare-fun res!1649309 () Bool)

(assert (=> d!1202150 (=> (not res!1649309) (not e!2511778))))

(assert (=> d!1202150 (= res!1649309 (= (content!6586 lt!1442227) ((_ map or) (content!6586 (t!335502 newSuffix!27)) (content!6586 lt!1441303))))))

(assert (=> d!1202150 (= lt!1442227 e!2511779)))

(declare-fun c!699424 () Bool)

(assert (=> d!1202150 (= c!699424 ((_ is Nil!43281) (t!335502 newSuffix!27)))))

(assert (=> d!1202150 (= (++!11336 (t!335502 newSuffix!27) lt!1441303) lt!1442227)))

(assert (= (and d!1202150 c!699424) b!4048203))

(assert (= (and d!1202150 (not c!699424)) b!4048204))

(assert (= (and d!1202150 res!1649309) b!4048205))

(assert (= (and b!4048205 res!1649310) b!4048206))

(declare-fun m!4648101 () Bool)

(assert (=> b!4048204 m!4648101))

(declare-fun m!4648103 () Bool)

(assert (=> b!4048205 m!4648103))

(assert (=> b!4048205 m!4645295))

(assert (=> b!4048205 m!4645499))

(declare-fun m!4648105 () Bool)

(assert (=> d!1202150 m!4648105))

(assert (=> d!1202150 m!4646151))

(assert (=> d!1202150 m!4645505))

(assert (=> b!4046481 d!1202150))

(assert (=> d!1201026 d!1201870))

(assert (=> d!1201026 d!1201992))

(declare-fun b!4048209 () Bool)

(declare-fun e!2511782 () Bool)

(assert (=> b!4048209 (= e!2511782 (isPrefix!4021 (tail!6289 (tail!6289 lt!1441314)) (tail!6289 (tail!6289 (++!11336 lt!1441314 newSuffixResult!27)))))))

(declare-fun d!1202152 () Bool)

(declare-fun e!2511781 () Bool)

(assert (=> d!1202152 e!2511781))

(declare-fun res!1649311 () Bool)

(assert (=> d!1202152 (=> res!1649311 e!2511781)))

(declare-fun lt!1442228 () Bool)

(assert (=> d!1202152 (= res!1649311 (not lt!1442228))))

(declare-fun e!2511780 () Bool)

(assert (=> d!1202152 (= lt!1442228 e!2511780)))

(declare-fun res!1649313 () Bool)

(assert (=> d!1202152 (=> res!1649313 e!2511780)))

(assert (=> d!1202152 (= res!1649313 ((_ is Nil!43281) (tail!6289 lt!1441314)))))

(assert (=> d!1202152 (= (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 (++!11336 lt!1441314 newSuffixResult!27))) lt!1442228)))

(declare-fun b!4048207 () Bool)

(assert (=> b!4048207 (= e!2511780 e!2511782)))

(declare-fun res!1649312 () Bool)

(assert (=> b!4048207 (=> (not res!1649312) (not e!2511782))))

(assert (=> b!4048207 (= res!1649312 (not ((_ is Nil!43281) (tail!6289 (++!11336 lt!1441314 newSuffixResult!27)))))))

(declare-fun b!4048208 () Bool)

(declare-fun res!1649314 () Bool)

(assert (=> b!4048208 (=> (not res!1649314) (not e!2511782))))

(assert (=> b!4048208 (= res!1649314 (= (head!8557 (tail!6289 lt!1441314)) (head!8557 (tail!6289 (++!11336 lt!1441314 newSuffixResult!27)))))))

(declare-fun b!4048210 () Bool)

(assert (=> b!4048210 (= e!2511781 (>= (size!32358 (tail!6289 (++!11336 lt!1441314 newSuffixResult!27))) (size!32358 (tail!6289 lt!1441314))))))

(assert (= (and d!1202152 (not res!1649313)) b!4048207))

(assert (= (and b!4048207 res!1649312) b!4048208))

(assert (= (and b!4048208 res!1649314) b!4048209))

(assert (= (and d!1202152 (not res!1649311)) b!4048210))

(assert (=> b!4048209 m!4644691))

(assert (=> b!4048209 m!4646053))

(assert (=> b!4048209 m!4644693))

(declare-fun m!4648107 () Bool)

(assert (=> b!4048209 m!4648107))

(assert (=> b!4048209 m!4646053))

(assert (=> b!4048209 m!4648107))

(declare-fun m!4648109 () Bool)

(assert (=> b!4048209 m!4648109))

(assert (=> b!4048208 m!4644691))

(assert (=> b!4048208 m!4646059))

(assert (=> b!4048208 m!4644693))

(declare-fun m!4648111 () Bool)

(assert (=> b!4048208 m!4648111))

(assert (=> b!4048210 m!4644693))

(declare-fun m!4648113 () Bool)

(assert (=> b!4048210 m!4648113))

(assert (=> b!4048210 m!4644691))

(assert (=> b!4048210 m!4646065))

(assert (=> b!4046053 d!1202152))

(assert (=> b!4046053 d!1201240))

(declare-fun d!1202154 () Bool)

(assert (=> d!1202154 (= (tail!6289 (++!11336 lt!1441314 newSuffixResult!27)) (t!335502 (++!11336 lt!1441314 newSuffixResult!27)))))

(assert (=> b!4046053 d!1202154))

(declare-fun b!4048214 () Bool)

(declare-fun e!2511784 () List!43405)

(assert (=> b!4048214 (= e!2511784 (++!11336 (list!16122 (left!32594 (c!698890 (charsOf!4750 token!484)))) (list!16122 (right!32924 (c!698890 (charsOf!4750 token!484))))))))

(declare-fun d!1202156 () Bool)

(declare-fun c!699425 () Bool)

(assert (=> d!1202156 (= c!699425 ((_ is Empty!13145) (c!698890 (charsOf!4750 token!484))))))

(declare-fun e!2511783 () List!43405)

(assert (=> d!1202156 (= (list!16122 (c!698890 (charsOf!4750 token!484))) e!2511783)))

(declare-fun b!4048211 () Bool)

(assert (=> b!4048211 (= e!2511783 Nil!43281)))

(declare-fun b!4048213 () Bool)

(assert (=> b!4048213 (= e!2511784 (list!16124 (xs!16451 (c!698890 (charsOf!4750 token!484)))))))

(declare-fun b!4048212 () Bool)

(assert (=> b!4048212 (= e!2511783 e!2511784)))

(declare-fun c!699426 () Bool)

(assert (=> b!4048212 (= c!699426 ((_ is Leaf!20319) (c!698890 (charsOf!4750 token!484))))))

(assert (= (and d!1202156 c!699425) b!4048211))

(assert (= (and d!1202156 (not c!699425)) b!4048212))

(assert (= (and b!4048212 c!699426) b!4048213))

(assert (= (and b!4048212 (not c!699426)) b!4048214))

(declare-fun m!4648115 () Bool)

(assert (=> b!4048214 m!4648115))

(declare-fun m!4648117 () Bool)

(assert (=> b!4048214 m!4648117))

(assert (=> b!4048214 m!4648115))

(assert (=> b!4048214 m!4648117))

(declare-fun m!4648119 () Bool)

(assert (=> b!4048214 m!4648119))

(declare-fun m!4648121 () Bool)

(assert (=> b!4048213 m!4648121))

(assert (=> d!1201000 d!1202156))

(assert (=> b!4046463 d!1201776))

(assert (=> b!4046463 d!1200996))

(assert (=> d!1201012 d!1201010))

(declare-fun d!1202158 () Bool)

(assert (=> d!1202158 (isPrefix!4021 lt!1441296 prefix!494)))

(assert (=> d!1202158 true))

(declare-fun _$69!304 () Unit!62527)

(assert (=> d!1202158 (= (choose!24533 prefix!494 lt!1441296 lt!1441304) _$69!304)))

(declare-fun bs!591388 () Bool)

(assert (= bs!591388 d!1202158))

(assert (=> bs!591388 m!4644335))

(assert (=> d!1201012 d!1202158))

(assert (=> d!1201012 d!1200968))

(assert (=> b!4046439 d!1201882))

(declare-fun d!1202160 () Bool)

(assert (=> d!1202160 (= (apply!10123 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561))))) (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561))))))))

(declare-fun b_lambda!118291 () Bool)

(assert (=> (not b_lambda!118291) (not d!1202160)))

(declare-fun tb!243547 () Bool)

(declare-fun t!335728 () Bool)

(assert (=> (and b!4045849 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335728) tb!243547))

(declare-fun result!295114 () Bool)

(assert (=> tb!243547 (= result!295114 (inv!21 (dynLambda!18380 (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561))))) (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561)))))))))

(declare-fun m!4648123 () Bool)

(assert (=> tb!243547 m!4648123))

(assert (=> d!1202160 t!335728))

(declare-fun b_and!311329 () Bool)

(assert (= b_and!311323 (and (=> t!335728 result!295114) b_and!311329)))

(declare-fun t!335730 () Bool)

(declare-fun tb!243549 () Bool)

(assert (=> (and b!4045850 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335730) tb!243549))

(declare-fun result!295116 () Bool)

(assert (= result!295116 result!295114))

(assert (=> d!1202160 t!335730))

(declare-fun b_and!311331 () Bool)

(assert (= b_and!311325 (and (=> t!335730 result!295116) b_and!311331)))

(declare-fun tb!243551 () Bool)

(declare-fun t!335732 () Bool)

(assert (=> (and b!4046651 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335732) tb!243551))

(declare-fun result!295118 () Bool)

(assert (= result!295118 result!295114))

(assert (=> d!1202160 t!335732))

(declare-fun b_and!311333 () Bool)

(assert (= b_and!311327 (and (=> t!335732 result!295118) b_and!311333)))

(assert (=> d!1202160 m!4645405))

(declare-fun m!4648125 () Bool)

(assert (=> d!1202160 m!4648125))

(assert (=> b!4046439 d!1202160))

(declare-fun d!1202162 () Bool)

(assert (=> d!1202162 (= (seqFromList!5151 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561)))) (fromListB!2347 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441561)))))))

(declare-fun bs!591389 () Bool)

(assert (= bs!591389 d!1202162))

(declare-fun m!4648127 () Bool)

(assert (=> bs!591389 m!4648127))

(assert (=> b!4046439 d!1202162))

(assert (=> b!4046595 d!1201694))

(declare-fun b!4048217 () Bool)

(declare-fun e!2511788 () Bool)

(assert (=> b!4048217 (= e!2511788 (isPrefix!4021 (tail!6289 lt!1441314) (tail!6289 (++!11336 lt!1441314 lt!1441283))))))

(declare-fun d!1202164 () Bool)

(declare-fun e!2511787 () Bool)

(assert (=> d!1202164 e!2511787))

(declare-fun res!1649315 () Bool)

(assert (=> d!1202164 (=> res!1649315 e!2511787)))

(declare-fun lt!1442229 () Bool)

(assert (=> d!1202164 (= res!1649315 (not lt!1442229))))

(declare-fun e!2511786 () Bool)

(assert (=> d!1202164 (= lt!1442229 e!2511786)))

(declare-fun res!1649317 () Bool)

(assert (=> d!1202164 (=> res!1649317 e!2511786)))

(assert (=> d!1202164 (= res!1649317 ((_ is Nil!43281) lt!1441314))))

(assert (=> d!1202164 (= (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 lt!1441283)) lt!1442229)))

(declare-fun b!4048215 () Bool)

(assert (=> b!4048215 (= e!2511786 e!2511788)))

(declare-fun res!1649316 () Bool)

(assert (=> b!4048215 (=> (not res!1649316) (not e!2511788))))

(assert (=> b!4048215 (= res!1649316 (not ((_ is Nil!43281) (++!11336 lt!1441314 lt!1441283))))))

(declare-fun b!4048216 () Bool)

(declare-fun res!1649318 () Bool)

(assert (=> b!4048216 (=> (not res!1649318) (not e!2511788))))

(assert (=> b!4048216 (= res!1649318 (= (head!8557 lt!1441314) (head!8557 (++!11336 lt!1441314 lt!1441283))))))

(declare-fun b!4048218 () Bool)

(assert (=> b!4048218 (= e!2511787 (>= (size!32358 (++!11336 lt!1441314 lt!1441283)) (size!32358 lt!1441314)))))

(assert (= (and d!1202164 (not res!1649317)) b!4048215))

(assert (= (and b!4048215 res!1649316) b!4048216))

(assert (= (and b!4048216 res!1649318) b!4048217))

(assert (= (and d!1202164 (not res!1649315)) b!4048218))

(assert (=> b!4048217 m!4644691))

(assert (=> b!4048217 m!4644465))

(declare-fun m!4648129 () Bool)

(assert (=> b!4048217 m!4648129))

(assert (=> b!4048217 m!4644691))

(assert (=> b!4048217 m!4648129))

(declare-fun m!4648131 () Bool)

(assert (=> b!4048217 m!4648131))

(assert (=> b!4048216 m!4644697))

(assert (=> b!4048216 m!4644465))

(declare-fun m!4648133 () Bool)

(assert (=> b!4048216 m!4648133))

(assert (=> b!4048218 m!4644465))

(declare-fun m!4648135 () Bool)

(assert (=> b!4048218 m!4648135))

(assert (=> b!4048218 m!4644397))

(assert (=> d!1200948 d!1202164))

(assert (=> d!1200948 d!1200982))

(declare-fun d!1202166 () Bool)

(assert (=> d!1202166 (isPrefix!4021 lt!1441314 (++!11336 lt!1441314 lt!1441283))))

(assert (=> d!1202166 true))

(declare-fun _$46!1805 () Unit!62527)

(assert (=> d!1202166 (= (choose!24523 lt!1441314 lt!1441283) _$46!1805)))

(declare-fun bs!591390 () Bool)

(assert (= bs!591390 d!1202166))

(assert (=> bs!591390 m!4644465))

(assert (=> bs!591390 m!4644465))

(assert (=> bs!591390 m!4645433))

(assert (=> d!1200948 d!1202166))

(assert (=> b!4046280 d!1201716))

(declare-fun d!1202168 () Bool)

(declare-fun lt!1442230 () Int)

(assert (=> d!1202168 (>= lt!1442230 0)))

(declare-fun e!2511789 () Int)

(assert (=> d!1202168 (= lt!1442230 e!2511789)))

(declare-fun c!699427 () Bool)

(assert (=> d!1202168 (= c!699427 ((_ is Nil!43281) (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500)))))))

(assert (=> d!1202168 (= (size!32358 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500)))) lt!1442230)))

(declare-fun b!4048219 () Bool)

(assert (=> b!4048219 (= e!2511789 0)))

(declare-fun b!4048220 () Bool)

(assert (=> b!4048220 (= e!2511789 (+ 1 (size!32358 (t!335502 (originalCharacters!7534 (_1!24311 (get!14199 lt!1441500)))))))))

(assert (= (and d!1202168 c!699427) b!4048219))

(assert (= (and d!1202168 (not c!699427)) b!4048220))

(declare-fun m!4648137 () Bool)

(assert (=> b!4048220 m!4648137))

(assert (=> b!4046280 d!1202168))

(assert (=> b!4046576 d!1202120))

(declare-fun d!1202170 () Bool)

(declare-fun e!2511790 () Bool)

(assert (=> d!1202170 e!2511790))

(declare-fun res!1649319 () Bool)

(assert (=> d!1202170 (=> (not res!1649319) (not e!2511790))))

(declare-fun lt!1442231 () BalanceConc!25884)

(assert (=> d!1202170 (= res!1649319 (= (list!16120 lt!1442231) lt!1441296))))

(assert (=> d!1202170 (= lt!1442231 (BalanceConc!25885 (fromList!865 lt!1441296)))))

(assert (=> d!1202170 (= (fromListB!2347 lt!1441296) lt!1442231)))

(declare-fun b!4048221 () Bool)

(assert (=> b!4048221 (= e!2511790 (isBalanced!3685 (fromList!865 lt!1441296)))))

(assert (= (and d!1202170 res!1649319) b!4048221))

(declare-fun m!4648139 () Bool)

(assert (=> d!1202170 m!4648139))

(declare-fun m!4648141 () Bool)

(assert (=> d!1202170 m!4648141))

(assert (=> b!4048221 m!4648141))

(assert (=> b!4048221 m!4648141))

(declare-fun m!4648143 () Bool)

(assert (=> b!4048221 m!4648143))

(assert (=> d!1200928 d!1202170))

(declare-fun b!4048223 () Bool)

(declare-fun e!2511792 () List!43405)

(assert (=> b!4048223 (= e!2511792 (Cons!43281 (h!48701 (t!335502 lt!1441314)) (++!11336 (t!335502 (t!335502 lt!1441314)) newSuffixResult!27)))))

(declare-fun b!4048224 () Bool)

(declare-fun res!1649321 () Bool)

(declare-fun e!2511791 () Bool)

(assert (=> b!4048224 (=> (not res!1649321) (not e!2511791))))

(declare-fun lt!1442232 () List!43405)

(assert (=> b!4048224 (= res!1649321 (= (size!32358 lt!1442232) (+ (size!32358 (t!335502 lt!1441314)) (size!32358 newSuffixResult!27))))))

(declare-fun b!4048225 () Bool)

(assert (=> b!4048225 (= e!2511791 (or (not (= newSuffixResult!27 Nil!43281)) (= lt!1442232 (t!335502 lt!1441314))))))

(declare-fun b!4048222 () Bool)

(assert (=> b!4048222 (= e!2511792 newSuffixResult!27)))

(declare-fun d!1202172 () Bool)

(assert (=> d!1202172 e!2511791))

(declare-fun res!1649320 () Bool)

(assert (=> d!1202172 (=> (not res!1649320) (not e!2511791))))

(assert (=> d!1202172 (= res!1649320 (= (content!6586 lt!1442232) ((_ map or) (content!6586 (t!335502 lt!1441314)) (content!6586 newSuffixResult!27))))))

(assert (=> d!1202172 (= lt!1442232 e!2511792)))

(declare-fun c!699428 () Bool)

(assert (=> d!1202172 (= c!699428 ((_ is Nil!43281) (t!335502 lt!1441314)))))

(assert (=> d!1202172 (= (++!11336 (t!335502 lt!1441314) newSuffixResult!27) lt!1442232)))

(assert (= (and d!1202172 c!699428) b!4048222))

(assert (= (and d!1202172 (not c!699428)) b!4048223))

(assert (= (and d!1202172 res!1649320) b!4048224))

(assert (= (and b!4048224 res!1649321) b!4048225))

(declare-fun m!4648145 () Bool)

(assert (=> b!4048223 m!4648145))

(declare-fun m!4648147 () Bool)

(assert (=> b!4048224 m!4648147))

(assert (=> b!4048224 m!4645191))

(assert (=> b!4048224 m!4644855))

(declare-fun m!4648149 () Bool)

(assert (=> d!1202172 m!4648149))

(assert (=> d!1202172 m!4647339))

(assert (=> d!1202172 m!4644861))

(assert (=> b!4046145 d!1202172))

(declare-fun d!1202174 () Bool)

(declare-fun lt!1442233 () Int)

(assert (=> d!1202174 (>= lt!1442233 0)))

(declare-fun e!2511793 () Int)

(assert (=> d!1202174 (= lt!1442233 e!2511793)))

(declare-fun c!699429 () Bool)

(assert (=> d!1202174 (= c!699429 ((_ is Nil!43281) lt!1441277))))

(assert (=> d!1202174 (= (size!32358 lt!1441277) lt!1442233)))

(declare-fun b!4048226 () Bool)

(assert (=> b!4048226 (= e!2511793 0)))

(declare-fun b!4048227 () Bool)

(assert (=> b!4048227 (= e!2511793 (+ 1 (size!32358 (t!335502 lt!1441277))))))

(assert (= (and d!1202174 c!699429) b!4048226))

(assert (= (and d!1202174 (not c!699429)) b!4048227))

(declare-fun m!4648151 () Bool)

(assert (=> b!4048227 m!4648151))

(assert (=> b!4046337 d!1202174))

(assert (=> b!4046337 d!1200886))

(declare-fun d!1202176 () Bool)

(declare-fun lt!1442234 () Int)

(assert (=> d!1202176 (>= lt!1442234 0)))

(declare-fun e!2511794 () Int)

(assert (=> d!1202176 (= lt!1442234 e!2511794)))

(declare-fun c!699430 () Bool)

(assert (=> d!1202176 (= c!699430 ((_ is Nil!43281) lt!1441533))))

(assert (=> d!1202176 (= (size!32358 lt!1441533) lt!1442234)))

(declare-fun b!4048228 () Bool)

(assert (=> b!4048228 (= e!2511794 0)))

(declare-fun b!4048229 () Bool)

(assert (=> b!4048229 (= e!2511794 (+ 1 (size!32358 (t!335502 lt!1441533))))))

(assert (= (and d!1202176 c!699430) b!4048228))

(assert (= (and d!1202176 (not c!699430)) b!4048229))

(declare-fun m!4648153 () Bool)

(assert (=> b!4048229 m!4648153))

(assert (=> b!4046386 d!1202176))

(assert (=> b!4046386 d!1200996))

(declare-fun d!1202178 () Bool)

(declare-fun lt!1442235 () Int)

(assert (=> d!1202178 (>= lt!1442235 0)))

(declare-fun e!2511795 () Int)

(assert (=> d!1202178 (= lt!1442235 e!2511795)))

(declare-fun c!699431 () Bool)

(assert (=> d!1202178 (= c!699431 ((_ is Nil!43281) lt!1441278))))

(assert (=> d!1202178 (= (size!32358 lt!1441278) lt!1442235)))

(declare-fun b!4048230 () Bool)

(assert (=> b!4048230 (= e!2511795 0)))

(declare-fun b!4048231 () Bool)

(assert (=> b!4048231 (= e!2511795 (+ 1 (size!32358 (t!335502 lt!1441278))))))

(assert (= (and d!1202178 c!699431) b!4048230))

(assert (= (and d!1202178 (not c!699431)) b!4048231))

(declare-fun m!4648155 () Bool)

(assert (=> b!4048231 m!4648155))

(assert (=> b!4046386 d!1202178))

(assert (=> d!1200958 d!1202148))

(declare-fun d!1202180 () Bool)

(assert (=> d!1202180 (= (isEmpty!25830 lt!1441561) (not ((_ is Some!9347) lt!1441561)))))

(assert (=> d!1200938 d!1202180))

(assert (=> d!1200938 d!1200934))

(assert (=> d!1200938 d!1200936))

(assert (=> d!1200938 d!1202020))

(assert (=> b!4046351 d!1202010))

(declare-fun e!2511796 () Bool)

(assert (=> b!4046656 (= tp!1227861 e!2511796)))

(declare-fun b!4048233 () Bool)

(declare-fun tp!1227957 () Bool)

(declare-fun tp!1227959 () Bool)

(assert (=> b!4048233 (= e!2511796 (and tp!1227957 tp!1227959))))

(declare-fun b!4048234 () Bool)

(declare-fun tp!1227956 () Bool)

(assert (=> b!4048234 (= e!2511796 tp!1227956)))

(declare-fun b!4048235 () Bool)

(declare-fun tp!1227960 () Bool)

(declare-fun tp!1227958 () Bool)

(assert (=> b!4048235 (= e!2511796 (and tp!1227960 tp!1227958))))

(declare-fun b!4048232 () Bool)

(assert (=> b!4048232 (= e!2511796 tp_is_empty!20649)))

(assert (= (and b!4046656 ((_ is ElementMatch!11839) (reg!12168 (regex!6934 (rule!10010 token!484))))) b!4048232))

(assert (= (and b!4046656 ((_ is Concat!19004) (reg!12168 (regex!6934 (rule!10010 token!484))))) b!4048233))

(assert (= (and b!4046656 ((_ is Star!11839) (reg!12168 (regex!6934 (rule!10010 token!484))))) b!4048234))

(assert (= (and b!4046656 ((_ is Union!11839) (reg!12168 (regex!6934 (rule!10010 token!484))))) b!4048235))

(declare-fun b!4048236 () Bool)

(declare-fun e!2511797 () Bool)

(declare-fun tp!1227961 () Bool)

(assert (=> b!4048236 (= e!2511797 (and tp_is_empty!20649 tp!1227961))))

(assert (=> b!4046639 (= tp!1227845 e!2511797)))

(assert (= (and b!4046639 ((_ is Cons!43281) (t!335502 (t!335502 newSuffix!27)))) b!4048236))

(declare-fun e!2511798 () Bool)

(assert (=> b!4046655 (= tp!1227862 e!2511798)))

(declare-fun b!4048238 () Bool)

(declare-fun tp!1227963 () Bool)

(declare-fun tp!1227965 () Bool)

(assert (=> b!4048238 (= e!2511798 (and tp!1227963 tp!1227965))))

(declare-fun b!4048239 () Bool)

(declare-fun tp!1227962 () Bool)

(assert (=> b!4048239 (= e!2511798 tp!1227962)))

(declare-fun b!4048240 () Bool)

(declare-fun tp!1227966 () Bool)

(declare-fun tp!1227964 () Bool)

(assert (=> b!4048240 (= e!2511798 (and tp!1227966 tp!1227964))))

(declare-fun b!4048237 () Bool)

(assert (=> b!4048237 (= e!2511798 tp_is_empty!20649)))

(assert (= (and b!4046655 ((_ is ElementMatch!11839) (regOne!24190 (regex!6934 (rule!10010 token!484))))) b!4048237))

(assert (= (and b!4046655 ((_ is Concat!19004) (regOne!24190 (regex!6934 (rule!10010 token!484))))) b!4048238))

(assert (= (and b!4046655 ((_ is Star!11839) (regOne!24190 (regex!6934 (rule!10010 token!484))))) b!4048239))

(assert (= (and b!4046655 ((_ is Union!11839) (regOne!24190 (regex!6934 (rule!10010 token!484))))) b!4048240))

(declare-fun e!2511799 () Bool)

(assert (=> b!4046655 (= tp!1227864 e!2511799)))

(declare-fun b!4048242 () Bool)

(declare-fun tp!1227968 () Bool)

(declare-fun tp!1227970 () Bool)

(assert (=> b!4048242 (= e!2511799 (and tp!1227968 tp!1227970))))

(declare-fun b!4048243 () Bool)

(declare-fun tp!1227967 () Bool)

(assert (=> b!4048243 (= e!2511799 tp!1227967)))

(declare-fun b!4048244 () Bool)

(declare-fun tp!1227971 () Bool)

(declare-fun tp!1227969 () Bool)

(assert (=> b!4048244 (= e!2511799 (and tp!1227971 tp!1227969))))

(declare-fun b!4048241 () Bool)

(assert (=> b!4048241 (= e!2511799 tp_is_empty!20649)))

(assert (= (and b!4046655 ((_ is ElementMatch!11839) (regTwo!24190 (regex!6934 (rule!10010 token!484))))) b!4048241))

(assert (= (and b!4046655 ((_ is Concat!19004) (regTwo!24190 (regex!6934 (rule!10010 token!484))))) b!4048242))

(assert (= (and b!4046655 ((_ is Star!11839) (regTwo!24190 (regex!6934 (rule!10010 token!484))))) b!4048243))

(assert (= (and b!4046655 ((_ is Union!11839) (regTwo!24190 (regex!6934 (rule!10010 token!484))))) b!4048244))

(declare-fun e!2511800 () Bool)

(assert (=> b!4046657 (= tp!1227865 e!2511800)))

(declare-fun b!4048246 () Bool)

(declare-fun tp!1227973 () Bool)

(declare-fun tp!1227975 () Bool)

(assert (=> b!4048246 (= e!2511800 (and tp!1227973 tp!1227975))))

(declare-fun b!4048247 () Bool)

(declare-fun tp!1227972 () Bool)

(assert (=> b!4048247 (= e!2511800 tp!1227972)))

(declare-fun b!4048248 () Bool)

(declare-fun tp!1227976 () Bool)

(declare-fun tp!1227974 () Bool)

(assert (=> b!4048248 (= e!2511800 (and tp!1227976 tp!1227974))))

(declare-fun b!4048245 () Bool)

(assert (=> b!4048245 (= e!2511800 tp_is_empty!20649)))

(assert (= (and b!4046657 ((_ is ElementMatch!11839) (regOne!24191 (regex!6934 (rule!10010 token!484))))) b!4048245))

(assert (= (and b!4046657 ((_ is Concat!19004) (regOne!24191 (regex!6934 (rule!10010 token!484))))) b!4048246))

(assert (= (and b!4046657 ((_ is Star!11839) (regOne!24191 (regex!6934 (rule!10010 token!484))))) b!4048247))

(assert (= (and b!4046657 ((_ is Union!11839) (regOne!24191 (regex!6934 (rule!10010 token!484))))) b!4048248))

(declare-fun e!2511801 () Bool)

(assert (=> b!4046657 (= tp!1227863 e!2511801)))

(declare-fun b!4048250 () Bool)

(declare-fun tp!1227978 () Bool)

(declare-fun tp!1227980 () Bool)

(assert (=> b!4048250 (= e!2511801 (and tp!1227978 tp!1227980))))

(declare-fun b!4048251 () Bool)

(declare-fun tp!1227977 () Bool)

(assert (=> b!4048251 (= e!2511801 tp!1227977)))

(declare-fun b!4048252 () Bool)

(declare-fun tp!1227981 () Bool)

(declare-fun tp!1227979 () Bool)

(assert (=> b!4048252 (= e!2511801 (and tp!1227981 tp!1227979))))

(declare-fun b!4048249 () Bool)

(assert (=> b!4048249 (= e!2511801 tp_is_empty!20649)))

(assert (= (and b!4046657 ((_ is ElementMatch!11839) (regTwo!24191 (regex!6934 (rule!10010 token!484))))) b!4048249))

(assert (= (and b!4046657 ((_ is Concat!19004) (regTwo!24191 (regex!6934 (rule!10010 token!484))))) b!4048250))

(assert (= (and b!4046657 ((_ is Star!11839) (regTwo!24191 (regex!6934 (rule!10010 token!484))))) b!4048251))

(assert (= (and b!4046657 ((_ is Union!11839) (regTwo!24191 (regex!6934 (rule!10010 token!484))))) b!4048252))

(declare-fun e!2511802 () Bool)

(assert (=> b!4046650 (= tp!1227855 e!2511802)))

(declare-fun b!4048254 () Bool)

(declare-fun tp!1227983 () Bool)

(declare-fun tp!1227985 () Bool)

(assert (=> b!4048254 (= e!2511802 (and tp!1227983 tp!1227985))))

(declare-fun b!4048255 () Bool)

(declare-fun tp!1227982 () Bool)

(assert (=> b!4048255 (= e!2511802 tp!1227982)))

(declare-fun b!4048256 () Bool)

(declare-fun tp!1227986 () Bool)

(declare-fun tp!1227984 () Bool)

(assert (=> b!4048256 (= e!2511802 (and tp!1227986 tp!1227984))))

(declare-fun b!4048253 () Bool)

(assert (=> b!4048253 (= e!2511802 tp_is_empty!20649)))

(assert (= (and b!4046650 ((_ is ElementMatch!11839) (regex!6934 (h!48703 (t!335504 rules!2999))))) b!4048253))

(assert (= (and b!4046650 ((_ is Concat!19004) (regex!6934 (h!48703 (t!335504 rules!2999))))) b!4048254))

(assert (= (and b!4046650 ((_ is Star!11839) (regex!6934 (h!48703 (t!335504 rules!2999))))) b!4048255))

(assert (= (and b!4046650 ((_ is Union!11839) (regex!6934 (h!48703 (t!335504 rules!2999))))) b!4048256))

(declare-fun e!2511808 () Bool)

(declare-fun tp!1227994 () Bool)

(declare-fun b!4048265 () Bool)

(declare-fun tp!1227993 () Bool)

(assert (=> b!4048265 (= e!2511808 (and (inv!57854 (left!32594 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))))) tp!1227994 (inv!57854 (right!32924 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))))) tp!1227993))))

(declare-fun b!4048267 () Bool)

(declare-fun e!2511807 () Bool)

(declare-fun tp!1227995 () Bool)

(assert (=> b!4048267 (= e!2511807 tp!1227995)))

(declare-fun b!4048266 () Bool)

(declare-fun inv!57861 (IArray!26295) Bool)

(assert (=> b!4048266 (= e!2511808 (and (inv!57861 (xs!16451 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))))) e!2511807))))

(assert (=> b!4046164 (= tp!1227784 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282)))))) e!2511808))))

(assert (= (and b!4046164 ((_ is Node!13145) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))))) b!4048265))

(assert (= b!4048266 b!4048267))

(assert (= (and b!4046164 ((_ is Leaf!20319) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))) (value!218253 (_1!24311 (v!39751 lt!1441282))))))) b!4048266))

(declare-fun m!4648157 () Bool)

(assert (=> b!4048265 m!4648157))

(declare-fun m!4648159 () Bool)

(assert (=> b!4048265 m!4648159))

(declare-fun m!4648161 () Bool)

(assert (=> b!4048266 m!4648161))

(assert (=> b!4046164 m!4644883))

(declare-fun b!4048270 () Bool)

(declare-fun b_free!112669 () Bool)

(declare-fun b_next!113373 () Bool)

(assert (=> b!4048270 (= b_free!112669 (not b_next!113373))))

(declare-fun tb!243553 () Bool)

(declare-fun t!335734 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335734) tb!243553))

(declare-fun result!295122 () Bool)

(assert (= result!295122 result!295066))

(assert (=> d!1201780 t!335734))

(declare-fun tb!243555 () Bool)

(declare-fun t!335736 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335736) tb!243555))

(declare-fun result!295124 () Bool)

(assert (= result!295124 result!295054))

(assert (=> d!1201718 t!335736))

(declare-fun tb!243557 () Bool)

(declare-fun t!335738 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335738) tb!243557))

(declare-fun result!295126 () Bool)

(assert (= result!295126 result!294880))

(assert (=> d!1200750 t!335738))

(declare-fun t!335740 () Bool)

(declare-fun tb!243559 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335740) tb!243559))

(declare-fun result!295128 () Bool)

(assert (= result!295128 result!295072))

(assert (=> d!1201814 t!335740))

(declare-fun t!335742 () Bool)

(declare-fun tb!243561 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335742) tb!243561))

(declare-fun result!295130 () Bool)

(assert (= result!295130 result!295108))

(assert (=> d!1202124 t!335742))

(declare-fun tb!243563 () Bool)

(declare-fun t!335744 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335744) tb!243563))

(declare-fun result!295132 () Bool)

(assert (= result!295132 result!295084))

(assert (=> d!1201912 t!335744))

(declare-fun t!335746 () Bool)

(declare-fun tb!243565 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 token!484)))) t!335746) tb!243565))

(declare-fun result!295134 () Bool)

(assert (= result!295134 result!294920))

(assert (=> d!1200920 t!335746))

(assert (=> d!1201774 t!335734))

(declare-fun t!335748 () Bool)

(declare-fun tb!243567 () Bool)

(assert (=> (and b!4048270 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335748) tb!243567))

(declare-fun result!295136 () Bool)

(assert (= result!295136 result!295114))

(assert (=> d!1202160 t!335748))

(assert (=> d!1201906 t!335744))

(declare-fun tp!1227998 () Bool)

(declare-fun b_and!311335 () Bool)

(assert (=> b!4048270 (= tp!1227998 (and (=> t!335744 result!295132) (=> t!335742 result!295130) (=> t!335736 result!295124) (=> t!335746 result!295134) (=> t!335734 result!295122) (=> t!335738 result!295126) (=> t!335740 result!295128) (=> t!335748 result!295136) b_and!311335))))

(declare-fun b_free!112671 () Bool)

(declare-fun b_next!113375 () Bool)

(assert (=> b!4048270 (= b_free!112671 (not b_next!113375))))

(declare-fun t!335750 () Bool)

(declare-fun tb!243569 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441500)))))) t!335750) tb!243569))

(declare-fun result!295138 () Bool)

(assert (= result!295138 result!295096))

(assert (=> d!1201986 t!335750))

(declare-fun tb!243571 () Bool)

(declare-fun t!335752 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335752) tb!243571))

(declare-fun result!295140 () Bool)

(assert (= result!295140 result!294924))

(assert (=> d!1201002 t!335752))

(declare-fun t!335754 () Bool)

(declare-fun tb!243573 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335754) tb!243573))

(declare-fun result!295142 () Bool)

(assert (= result!295142 result!294892))

(assert (=> d!1200796 t!335754))

(declare-fun tb!243575 () Bool)

(declare-fun t!335756 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441561)))))) t!335756) tb!243575))

(declare-fun result!295144 () Bool)

(assert (= result!295144 result!295102))

(assert (=> d!1202002 t!335756))

(declare-fun t!335758 () Bool)

(declare-fun tb!243577 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441550)))))) t!335758) tb!243577))

(declare-fun result!295146 () Bool)

(assert (= result!295146 result!294972))

(assert (=> d!1201276 t!335758))

(assert (=> b!4046544 t!335752))

(declare-fun tb!243579 () Bool)

(declare-fun t!335760 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (get!14199 lt!1441523)))))) t!335760) tb!243579))

(declare-fun result!295148 () Bool)

(assert (= result!295148 result!295090))

(assert (=> d!1201934 t!335760))

(declare-fun t!335762 () Bool)

(declare-fun tb!243581 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282)))))) t!335762) tb!243581))

(declare-fun result!295150 () Bool)

(assert (= result!295150 result!295078))

(assert (=> d!1201906 t!335762))

(declare-fun t!335764 () Bool)

(declare-fun tb!243583 () Bool)

(assert (=> (and b!4048270 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 token!484)))) t!335764) tb!243583))

(declare-fun result!295152 () Bool)

(assert (= result!295152 result!295060))

(assert (=> d!1201774 t!335764))

(declare-fun tp!1227999 () Bool)

(declare-fun b_and!311337 () Bool)

(assert (=> b!4048270 (= tp!1227999 (and (=> t!335752 result!295140) (=> t!335750 result!295138) (=> t!335754 result!295142) (=> t!335756 result!295144) (=> t!335764 result!295152) (=> t!335762 result!295150) (=> t!335760 result!295148) (=> t!335758 result!295146) b_and!311337))))

(declare-fun e!2511809 () Bool)

(assert (=> b!4048270 (= e!2511809 (and tp!1227998 tp!1227999))))

(declare-fun tp!1227996 () Bool)

(declare-fun e!2511812 () Bool)

(declare-fun b!4048269 () Bool)

(assert (=> b!4048269 (= e!2511812 (and tp!1227996 (inv!57847 (tag!7794 (h!48703 (t!335504 (t!335504 rules!2999))))) (inv!57850 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) e!2511809))))

(declare-fun b!4048268 () Bool)

(declare-fun e!2511810 () Bool)

(declare-fun tp!1227997 () Bool)

(assert (=> b!4048268 (= e!2511810 (and e!2511812 tp!1227997))))

(assert (=> b!4046649 (= tp!1227856 e!2511810)))

(assert (= b!4048269 b!4048270))

(assert (= b!4048268 b!4048269))

(assert (= (and b!4046649 ((_ is Cons!43283) (t!335504 (t!335504 rules!2999)))) b!4048268))

(declare-fun m!4648163 () Bool)

(assert (=> b!4048269 m!4648163))

(declare-fun m!4648165 () Bool)

(assert (=> b!4048269 m!4648165))

(declare-fun b!4048271 () Bool)

(declare-fun e!2511813 () Bool)

(declare-fun tp!1228000 () Bool)

(assert (=> b!4048271 (= e!2511813 (and tp_is_empty!20649 tp!1228000))))

(assert (=> b!4046652 (= tp!1227859 e!2511813)))

(assert (= (and b!4046652 ((_ is Cons!43281) (t!335502 (t!335502 suffix!1299)))) b!4048271))

(declare-fun e!2511814 () Bool)

(assert (=> b!4046636 (= tp!1227841 e!2511814)))

(declare-fun b!4048273 () Bool)

(declare-fun tp!1228002 () Bool)

(declare-fun tp!1228004 () Bool)

(assert (=> b!4048273 (= e!2511814 (and tp!1228002 tp!1228004))))

(declare-fun b!4048274 () Bool)

(declare-fun tp!1228001 () Bool)

(assert (=> b!4048274 (= e!2511814 tp!1228001)))

(declare-fun b!4048275 () Bool)

(declare-fun tp!1228005 () Bool)

(declare-fun tp!1228003 () Bool)

(assert (=> b!4048275 (= e!2511814 (and tp!1228005 tp!1228003))))

(declare-fun b!4048272 () Bool)

(assert (=> b!4048272 (= e!2511814 tp_is_empty!20649)))

(assert (= (and b!4046636 ((_ is ElementMatch!11839) (regOne!24190 (regex!6934 (h!48703 rules!2999))))) b!4048272))

(assert (= (and b!4046636 ((_ is Concat!19004) (regOne!24190 (regex!6934 (h!48703 rules!2999))))) b!4048273))

(assert (= (and b!4046636 ((_ is Star!11839) (regOne!24190 (regex!6934 (h!48703 rules!2999))))) b!4048274))

(assert (= (and b!4046636 ((_ is Union!11839) (regOne!24190 (regex!6934 (h!48703 rules!2999))))) b!4048275))

(declare-fun e!2511815 () Bool)

(assert (=> b!4046636 (= tp!1227843 e!2511815)))

(declare-fun b!4048277 () Bool)

(declare-fun tp!1228007 () Bool)

(declare-fun tp!1228009 () Bool)

(assert (=> b!4048277 (= e!2511815 (and tp!1228007 tp!1228009))))

(declare-fun b!4048278 () Bool)

(declare-fun tp!1228006 () Bool)

(assert (=> b!4048278 (= e!2511815 tp!1228006)))

(declare-fun b!4048279 () Bool)

(declare-fun tp!1228010 () Bool)

(declare-fun tp!1228008 () Bool)

(assert (=> b!4048279 (= e!2511815 (and tp!1228010 tp!1228008))))

(declare-fun b!4048276 () Bool)

(assert (=> b!4048276 (= e!2511815 tp_is_empty!20649)))

(assert (= (and b!4046636 ((_ is ElementMatch!11839) (regTwo!24190 (regex!6934 (h!48703 rules!2999))))) b!4048276))

(assert (= (and b!4046636 ((_ is Concat!19004) (regTwo!24190 (regex!6934 (h!48703 rules!2999))))) b!4048277))

(assert (= (and b!4046636 ((_ is Star!11839) (regTwo!24190 (regex!6934 (h!48703 rules!2999))))) b!4048278))

(assert (= (and b!4046636 ((_ is Union!11839) (regTwo!24190 (regex!6934 (h!48703 rules!2999))))) b!4048279))

(declare-fun b!4048280 () Bool)

(declare-fun tp!1228012 () Bool)

(declare-fun e!2511817 () Bool)

(declare-fun tp!1228011 () Bool)

(assert (=> b!4048280 (= e!2511817 (and (inv!57854 (left!32594 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))))) tp!1228012 (inv!57854 (right!32924 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))))) tp!1228011))))

(declare-fun b!4048282 () Bool)

(declare-fun e!2511816 () Bool)

(declare-fun tp!1228013 () Bool)

(assert (=> b!4048282 (= e!2511816 tp!1228013)))

(declare-fun b!4048281 () Bool)

(assert (=> b!4048281 (= e!2511817 (and (inv!57861 (xs!16451 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))))) e!2511816))))

(assert (=> b!4046512 (= tp!1227826 (and (inv!57854 (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484)))) e!2511817))))

(assert (= (and b!4046512 ((_ is Node!13145) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))))) b!4048280))

(assert (= b!4048281 b!4048282))

(assert (= (and b!4046512 ((_ is Leaf!20319) (c!698890 (dynLambda!18381 (toChars!9341 (transformation!6934 (rule!10010 token!484))) (value!218253 token!484))))) b!4048281))

(declare-fun m!4648167 () Bool)

(assert (=> b!4048280 m!4648167))

(declare-fun m!4648169 () Bool)

(assert (=> b!4048280 m!4648169))

(declare-fun m!4648171 () Bool)

(assert (=> b!4048281 m!4648171))

(assert (=> b!4046512 m!4645569))

(declare-fun e!2511818 () Bool)

(assert (=> b!4046638 (= tp!1227844 e!2511818)))

(declare-fun b!4048284 () Bool)

(declare-fun tp!1228015 () Bool)

(declare-fun tp!1228017 () Bool)

(assert (=> b!4048284 (= e!2511818 (and tp!1228015 tp!1228017))))

(declare-fun b!4048285 () Bool)

(declare-fun tp!1228014 () Bool)

(assert (=> b!4048285 (= e!2511818 tp!1228014)))

(declare-fun b!4048286 () Bool)

(declare-fun tp!1228018 () Bool)

(declare-fun tp!1228016 () Bool)

(assert (=> b!4048286 (= e!2511818 (and tp!1228018 tp!1228016))))

(declare-fun b!4048283 () Bool)

(assert (=> b!4048283 (= e!2511818 tp_is_empty!20649)))

(assert (= (and b!4046638 ((_ is ElementMatch!11839) (regOne!24191 (regex!6934 (h!48703 rules!2999))))) b!4048283))

(assert (= (and b!4046638 ((_ is Concat!19004) (regOne!24191 (regex!6934 (h!48703 rules!2999))))) b!4048284))

(assert (= (and b!4046638 ((_ is Star!11839) (regOne!24191 (regex!6934 (h!48703 rules!2999))))) b!4048285))

(assert (= (and b!4046638 ((_ is Union!11839) (regOne!24191 (regex!6934 (h!48703 rules!2999))))) b!4048286))

(declare-fun e!2511819 () Bool)

(assert (=> b!4046638 (= tp!1227842 e!2511819)))

(declare-fun b!4048288 () Bool)

(declare-fun tp!1228020 () Bool)

(declare-fun tp!1228022 () Bool)

(assert (=> b!4048288 (= e!2511819 (and tp!1228020 tp!1228022))))

(declare-fun b!4048289 () Bool)

(declare-fun tp!1228019 () Bool)

(assert (=> b!4048289 (= e!2511819 tp!1228019)))

(declare-fun b!4048290 () Bool)

(declare-fun tp!1228023 () Bool)

(declare-fun tp!1228021 () Bool)

(assert (=> b!4048290 (= e!2511819 (and tp!1228023 tp!1228021))))

(declare-fun b!4048287 () Bool)

(assert (=> b!4048287 (= e!2511819 tp_is_empty!20649)))

(assert (= (and b!4046638 ((_ is ElementMatch!11839) (regTwo!24191 (regex!6934 (h!48703 rules!2999))))) b!4048287))

(assert (= (and b!4046638 ((_ is Concat!19004) (regTwo!24191 (regex!6934 (h!48703 rules!2999))))) b!4048288))

(assert (= (and b!4046638 ((_ is Star!11839) (regTwo!24191 (regex!6934 (h!48703 rules!2999))))) b!4048289))

(assert (= (and b!4046638 ((_ is Union!11839) (regTwo!24191 (regex!6934 (h!48703 rules!2999))))) b!4048290))

(declare-fun e!2511820 () Bool)

(assert (=> b!4046637 (= tp!1227840 e!2511820)))

(declare-fun b!4048292 () Bool)

(declare-fun tp!1228025 () Bool)

(declare-fun tp!1228027 () Bool)

(assert (=> b!4048292 (= e!2511820 (and tp!1228025 tp!1228027))))

(declare-fun b!4048293 () Bool)

(declare-fun tp!1228024 () Bool)

(assert (=> b!4048293 (= e!2511820 tp!1228024)))

(declare-fun b!4048294 () Bool)

(declare-fun tp!1228028 () Bool)

(declare-fun tp!1228026 () Bool)

(assert (=> b!4048294 (= e!2511820 (and tp!1228028 tp!1228026))))

(declare-fun b!4048291 () Bool)

(assert (=> b!4048291 (= e!2511820 tp_is_empty!20649)))

(assert (= (and b!4046637 ((_ is ElementMatch!11839) (reg!12168 (regex!6934 (h!48703 rules!2999))))) b!4048291))

(assert (= (and b!4046637 ((_ is Concat!19004) (reg!12168 (regex!6934 (h!48703 rules!2999))))) b!4048292))

(assert (= (and b!4046637 ((_ is Star!11839) (reg!12168 (regex!6934 (h!48703 rules!2999))))) b!4048293))

(assert (= (and b!4046637 ((_ is Union!11839) (reg!12168 (regex!6934 (h!48703 rules!2999))))) b!4048294))

(declare-fun b!4048295 () Bool)

(declare-fun e!2511821 () Bool)

(declare-fun tp!1228029 () Bool)

(assert (=> b!4048295 (= e!2511821 (and tp_is_empty!20649 tp!1228029))))

(assert (=> b!4046640 (= tp!1227846 e!2511821)))

(assert (= (and b!4046640 ((_ is Cons!43281) (t!335502 (t!335502 newSuffixResult!27)))) b!4048295))

(declare-fun b!4048296 () Bool)

(declare-fun e!2511822 () Bool)

(declare-fun tp!1228030 () Bool)

(assert (=> b!4048296 (= e!2511822 (and tp_is_empty!20649 tp!1228030))))

(assert (=> b!4046624 (= tp!1227829 e!2511822)))

(assert (= (and b!4046624 ((_ is Cons!43281) (t!335502 (originalCharacters!7534 token!484)))) b!4048296))

(declare-fun b!4048297 () Bool)

(declare-fun e!2511823 () Bool)

(declare-fun tp!1228031 () Bool)

(assert (=> b!4048297 (= e!2511823 (and tp_is_empty!20649 tp!1228031))))

(assert (=> b!4046653 (= tp!1227860 e!2511823)))

(assert (= (and b!4046653 ((_ is Cons!43281) (t!335502 (t!335502 suffixResult!105)))) b!4048297))

(declare-fun b!4048298 () Bool)

(declare-fun e!2511824 () Bool)

(declare-fun tp!1228032 () Bool)

(assert (=> b!4048298 (= e!2511824 (and tp_is_empty!20649 tp!1228032))))

(assert (=> b!4046658 (= tp!1227866 e!2511824)))

(assert (= (and b!4046658 ((_ is Cons!43281) (t!335502 (t!335502 prefix!494)))) b!4048298))

(declare-fun b_lambda!118293 () Bool)

(assert (= b_lambda!118203 (or (and b!4045849 b_free!112651 (= (toChars!9341 (transformation!6934 (rule!10010 token!484))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (and b!4045850 b_free!112655 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (and b!4046651 b_free!112663 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (and b!4048270 b_free!112671 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) b_lambda!118293)))

(declare-fun b_lambda!118295 () Bool)

(assert (= b_lambda!118271 (or (and b!4045849 b_free!112649) (and b!4045850 b_free!112653 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (and b!4046651 b_free!112661 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (and b!4048270 b_free!112669 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) b_lambda!118295)))

(declare-fun b_lambda!118297 () Bool)

(assert (= b_lambda!118273 (or (and b!4045849 b_free!112649) (and b!4045850 b_free!112653 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (and b!4046651 b_free!112661 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) (and b!4048270 b_free!112669 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 token!484))))) b_lambda!118297)))

(declare-fun b_lambda!118299 () Bool)

(assert (= b_lambda!118269 (or (and b!4045849 b_free!112651) (and b!4045850 b_free!112655 (= (toChars!9341 (transformation!6934 (h!48703 rules!2999))) (toChars!9341 (transformation!6934 (rule!10010 token!484))))) (and b!4046651 b_free!112663 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toChars!9341 (transformation!6934 (rule!10010 token!484))))) (and b!4048270 b_free!112671 (= (toChars!9341 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toChars!9341 (transformation!6934 (rule!10010 token!484))))) b_lambda!118299)))

(declare-fun b_lambda!118301 () Bool)

(assert (= b_lambda!118197 (or (and b!4045849 b_free!112649 (= (toValue!9482 (transformation!6934 (rule!10010 token!484))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (and b!4045850 b_free!112653 (= (toValue!9482 (transformation!6934 (h!48703 rules!2999))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (and b!4046651 b_free!112661 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 rules!2999)))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) (and b!4048270 b_free!112669 (= (toValue!9482 (transformation!6934 (h!48703 (t!335504 (t!335504 rules!2999))))) (toValue!9482 (transformation!6934 (rule!10010 (_1!24311 (v!39751 lt!1441282))))))) b_lambda!118301)))

(check-sat (not b!4047958) (not d!1201918) (not b!4047953) (not b!4047831) (not b!4048192) (not d!1202094) (not b!4047791) (not b!4047789) (not b!4048137) (not b!4048251) (not b!4048266) (not b!4048006) (not d!1201850) (not b!4047892) (not d!1202172) (not d!1201768) (not b!4048145) (not b!4048024) (not b!4046975) (not b!4048097) (not bm!287805) b_and!311329 (not b!4047941) (not b!4048288) (not bm!287780) (not b!4048021) (not b!4048282) (not b!4047707) (not b!4047916) (not b!4048204) (not d!1202000) (not tb!243541) (not b!4048267) (not b!4047795) (not b!4047793) (not b!4048074) (not b!4047599) (not b!4046966) (not d!1201742) (not d!1201970) (not b!4048018) (not d!1201930) (not d!1201272) (not b!4048050) (not b!4047873) (not b!4047962) (not bm!287779) (not b_next!113365) (not b!4047838) (not bm!287707) (not b!4047616) (not b!4047614) (not d!1202158) (not d!1202102) (not b!4048141) (not b!4048168) (not bm!287781) (not d!1202088) (not b!4046781) (not b!4047681) (not b!4048173) (not d!1202086) (not bm!287796) (not b!4047890) (not b!4048190) (not b!4048240) (not d!1202048) (not b!4047781) (not tb!243523) (not bm!287776) (not b!4048176) (not bm!287679) (not b!4047813) (not d!1201274) (not b!4047601) (not b!4047881) (not b!4048275) b_and!311317 (not d!1201720) (not d!1201248) (not b!4048030) (not b_lambda!118221) b_and!311337 (not b!4048052) (not b!4047926) (not b!4048202) (not b!4048088) (not b!4048187) (not d!1201254) (not d!1202010) (not b!4048071) (not b!4047888) (not b!4047862) (not b!4047898) (not d!1201904) (not b!4048079) (not b!4048055) (not b!4047992) (not b!4048196) (not tb!243499) (not b!4048171) (not b!4048234) (not b!4047845) (not b!4046941) (not b!4048199) (not d!1201746) (not d!1201816) (not b!4047689) (not d!1201774) (not b!4048296) (not b!4047931) (not b!4048179) (not b!4047664) (not b!4047893) (not b!4047660) (not b_lambda!118237) (not d!1201834) (not b!4047836) (not b!4048278) (not b!4047705) (not d!1201938) (not b!4048066) (not b!4048127) (not b!4048151) (not b!4047673) (not b!4048139) (not b!4047787) (not b!4047677) (not b!4047822) (not d!1201730) (not d!1201950) (not b!4048210) (not b!4048075) (not b_lambda!118223) (not b_lambda!118283) (not b!4047998) (not b!4048295) (not b!4046983) (not b!4048140) (not bm!287704) (not tb!243407) (not b!4047829) (not b!4047740) tp_is_empty!20649 (not b!4047699) (not d!1201722) (not d!1201864) (not b!4047907) (not b!4047662) b_and!311333 (not b!4048089) (not b!4048284) (not b!4048059) (not b!4047858) (not d!1201972) (not b_lambda!118275) (not b!4046935) (not b!4048054) b_and!311319 (not b!4047887) (not b!4047825) (not b!4046980) (not b!4048289) (not b!4047685) (not b!4048076) b_and!311321 (not b!4047871) (not b!4048298) (not b!4047800) (not b!4047932) (not b!4047968) (not b!4048008) (not b!4048072) (not b_lambda!118281) (not b!4047930) (not d!1201706) (not b!4047828) (not b!4047929) (not d!1201772) (not b!4047816) (not b!4047860) (not bm!287774) (not bm!287809) (not b!4048181) (not b!4046965) (not b!4048233) (not b!4047598) (not b!4047870) (not b!4046942) (not b!4047864) (not b!4048274) (not d!1202070) (not b!4048208) (not b!4048083) (not b!4048238) (not b!4048268) (not bm!287795) (not b!4047923) (not b!4048154) (not b!4047609) (not b!4047742) (not b!4048218) (not b!4047984) (not b!4046770) (not b!4048294) (not b!4046937) (not b!4048032) (not bm!287708) (not b!4047801) (not b!4048220) (not d!1202138) (not b!4047808) (not b!4047799) (not b!4047877) (not d!1202150) (not d!1202038) (not d!1202068) (not b!4048148) (not b!4048235) (not b!4047854) (not b!4047905) (not b!4047986) (not bm!287797) (not bm!287710) (not b!4048277) (not d!1201692) (not b!4048297) (not d!1202032) (not b!4048293) (not b!4047819) (not d!1201748) (not b!4046775) (not d!1201908) (not b!4048170) (not b_next!113359) (not b!4048191) (not b!4048095) (not b!4048073) (not bm!287799) (not b!4048091) (not b!4047983) (not d!1201844) (not b!4048285) (not d!1201966) (not b!4048003) (not b!4048155) (not b!4048217) (not b!4048118) (not d!1201916) (not b!4047928) (not d!1202098) (not b!4047716) (not d!1202132) (not d!1201984) (not b!4047956) (not d!1201836) (not d!1202148) (not d!1201146) (not b!4048239) (not b!4047978) (not d!1201714) (not d!1201708) (not b!4048068) (not d!1202056) (not b!4046974) (not b!4048031) (not b!4047921) (not d!1201770) (not b!4047622) (not b!4048252) (not b!4047785) (not b!4046963) (not b!4048134) (not bm!287705) (not b!4047955) (not d!1202002) (not b!4048096) (not b!4048153) (not b!4047849) (not d!1202022) (not b!4047690) (not b!4047696) (not b!4047885) (not b!4047736) (not b!4046769) (not b!4048255) (not d!1201956) (not b!4047668) (not d!1201744) (not b!4047961) (not b!4048058) (not b!4047686) (not b_lambda!118297) (not b!4048043) (not b!4048184) (not b!4048064) (not b!4047676) (not b!4048216) (not b!4046767) (not b!4047720) (not b!4047839) (not b!4048087) (not b!4047698) (not d!1202096) (not b!4048026) (not b!4048265) (not b!4047812) (not b!4048224) (not b!4047734) (not b!4047680) (not b!4048020) (not b!4048221) (not d!1202008) (not b!4047925) (not b!4047655) (not b!4047904) (not bm!287785) (not b!4047866) (not tb!243505) (not b!4046968) (not b!4047991) (not b!4046959) (not b!4046970) (not d!1201880) (not b_lambda!118287) (not d!1201896) (not d!1201778) (not b!4048188) (not b!4047868) (not b!4047766) (not b_lambda!118279) (not d!1201910) (not b!4047592) (not b!4048046) (not b!4047815) (not b!4047811) (not b!4047938) (not b!4047803) (not b!4048028) (not b!4046947) (not b_next!113357) b_and!311331 (not b_lambda!118291) (not b!4047911) (not bm!287803) (not b!4048248) (not b!4047980) (not b!4048125) (not bm!287703) (not b!4048178) (not tb!243487) (not d!1201958) (not b!4047973) (not b!4048247) (not tb!243511) (not b!4047846) (not b!4048205) (not b!4048271) (not b!4047666) (not b!4048085) (not b!4046923) (not b!4048223) (not b!4046953) (not d!1201286) (not d!1202018) (not bm!287808) (not d!1201884) (not d!1202080) b_and!311335 (not b!4048062) (not b!4047618) (not d!1202162) (not d!1201986) (not b!4047804) (not d!1201298) (not d!1201890) (not b!4047692) (not d!1201842) (not b!4046771) (not b!4048131) (not b!4048227) (not b!4047960) (not b!4047672) (not b!4047942) (not d!1201892) (not bm!287801) (not b!4048157) (not d!1202170) (not d!1201724) (not b!4047943) (not b_next!113353) (not b_lambda!118277) (not tb!243529) (not b!4047625) (not b!4047688) (not b!4046943) (not b!4048080) (not b!4047834) (not b!4047908) (not b!4048242) (not b!4047948) (not d!1202100) (not b!4047951) (not d!1201750) (not b!4047710) (not b_next!113375) (not b!4047694) (not d!1201792) (not b!4048111) (not d!1202028) (not b!4048123) (not b!4047901) (not b!4046778) (not b!4047856) (not b_lambda!118299) (not b!4047684) (not b!4047935) (not b!4048077) (not b!4048273) (not bm!287783) (not b!4048254) (not b!4047797) (not b!4048292) (not d!1201866) (not b!4047934) (not b!4048281) (not b!4047853) (not b!4047783) (not b!4048099) (not b!4047922) (not d!1201728) (not b!4048229) (not d!1201998) (not d!1201154) (not b!4047997) (not d!1201276) (not d!1201924) (not d!1202144) (not b!4046939) (not b!4048015) (not b!4047823) (not b!4047605) (not b!4046765) (not b!4047936) (not b!4048177) (not tb!243493) (not bm!287800) (not b!4046961) (not b_lambda!118293) (not b!4048256) (not b!4047608) (not b_lambda!118301) (not b!4048213) (not d!1201942) (not b_next!113373) (not b_lambda!118225) (not b!4048161) (not b!4048250) (not b!4048069) (not d!1201976) (not b!4047883) (not d!1201982) (not b!4047771) (not b!4048290) (not b!4047738) (not b!4048159) (not d!1201868) (not b!4047915) (not d!1201290) (not b!4047604) (not b!4048186) (not bm!287709) (not b!4048007) (not b!4048236) (not b!4047670) (not b!4046932) (not d!1201292) (not b!4047729) (not d!1201906) (not tb!243547) (not b!4047924) (not d!1201760) (not b!4047939) (not b!4048246) (not b!4047918) (not d!1201800) (not b!4046512) (not d!1202142) (not d!1201838) (not bm!287706) (not b!4047596) (not b!4047827) (not b_lambda!118267) (not b!4046164) (not b!4047779) (not d!1201874) (not d!1202166) (not b_lambda!118289) (not b!4048279) (not b!4048108) (not b!4047821) (not b!4047732) (not d!1202020) (not b!4047945) (not b!4047990) (not bm!287807) (not b!4047975) (not bm!287765) (not b!4048048) (not b!4047611) (not d!1201144) (not b!4048286) (not b!4046979) (not b!4047730) (not b!4048084) (not b!4047982) (not d!1201932) (not bm!287794) (not b!4047691) (not b!4047594) (not d!1201934) (not b!4047894) (not b!4047947) (not d!1202126) (not b!4047937) (not d!1202012) (not b!4048012) (not b!4048101) (not d!1202024) (not tb!243517) (not b!4047697) (not b!4048100) (not b!4047987) (not b!4047913) (not b!4046933) (not b!4048243) (not d!1201152) (not d!1202074) (not b!4047920) (not b_next!113355) (not b!4048002) (not b!4047852) (not d!1201758) (not tb!243535) (not b!4048105) (not b!4047718) (not d!1201690) (not b!4046950) (not b!4047863) (not b_next!113367) (not b!4047695) (not b!4047848) (not b!4047600) (not b!4047617) (not b!4048056) (not b!4047874) (not b!4048175) (not bm!287802) (not b!4047628) (not d!1202106) (not bm!287782) (not d!1202120) (not b!4047807) (not b!4047777) (not b!4048269) (not b!4048244) (not b!4046972) (not bm!287778) (not bm!287784) (not b!4046945) (not b_lambda!118295) (not b!4048126) (not b!4048209) (not b!4048092) (not d!1201944) (not b!4048231) (not b!4048214) (not b!4048280) (not b!4048044) (not b!4047977) (not b!4047878) (not bm!287786) (not b!4046949) (not b!4046951) (not b_lambda!118285))
(check-sat b_and!311329 (not b_next!113365) b_and!311321 (not b_next!113359) b_and!311335 (not b_next!113353) (not b_next!113375) (not b_next!113373) b_and!311317 b_and!311337 b_and!311333 b_and!311319 (not b_next!113357) b_and!311331 (not b_next!113355) (not b_next!113367))
