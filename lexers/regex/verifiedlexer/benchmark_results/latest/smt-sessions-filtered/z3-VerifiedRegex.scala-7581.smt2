; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400158 () Bool)

(assert start!400158)

(declare-fun b!4192276 () Bool)

(declare-fun b_free!122103 () Bool)

(declare-fun b_next!122807 () Bool)

(assert (=> b!4192276 (= b_free!122103 (not b_next!122807))))

(declare-fun tp!1280947 () Bool)

(declare-fun b_and!328529 () Bool)

(assert (=> b!4192276 (= tp!1280947 b_and!328529)))

(declare-fun b_free!122105 () Bool)

(declare-fun b_next!122809 () Bool)

(assert (=> b!4192276 (= b_free!122105 (not b_next!122809))))

(declare-fun tp!1280949 () Bool)

(declare-fun b_and!328531 () Bool)

(assert (=> b!4192276 (= tp!1280949 b_and!328531)))

(declare-fun b!4192294 () Bool)

(declare-fun b_free!122107 () Bool)

(declare-fun b_next!122811 () Bool)

(assert (=> b!4192294 (= b_free!122107 (not b_next!122811))))

(declare-fun tp!1280946 () Bool)

(declare-fun b_and!328533 () Bool)

(assert (=> b!4192294 (= tp!1280946 b_and!328533)))

(declare-fun b_free!122109 () Bool)

(declare-fun b_next!122813 () Bool)

(assert (=> b!4192294 (= b_free!122109 (not b_next!122813))))

(declare-fun tp!1280954 () Bool)

(declare-fun b_and!328535 () Bool)

(assert (=> b!4192294 (= tp!1280954 b_and!328535)))

(declare-fun b!4192272 () Bool)

(declare-fun b_free!122111 () Bool)

(declare-fun b_next!122815 () Bool)

(assert (=> b!4192272 (= b_free!122111 (not b_next!122815))))

(declare-fun tp!1280943 () Bool)

(declare-fun b_and!328537 () Bool)

(assert (=> b!4192272 (= tp!1280943 b_and!328537)))

(declare-fun b_free!122113 () Bool)

(declare-fun b_next!122817 () Bool)

(assert (=> b!4192272 (= b_free!122113 (not b_next!122817))))

(declare-fun tp!1280945 () Bool)

(declare-fun b_and!328539 () Bool)

(assert (=> b!4192272 (= tp!1280945 b_and!328539)))

(declare-fun b!4192271 () Bool)

(declare-fun res!1720687 () Bool)

(declare-fun e!2602415 () Bool)

(assert (=> b!4192271 (=> (not res!1720687) (not e!2602415))))

(declare-datatypes ((List!46171 0))(
  ( (Nil!46047) (Cons!46047 (h!51467 (_ BitVec 16)) (t!346054 List!46171)) )
))
(declare-datatypes ((TokenValue!7908 0))(
  ( (FloatLiteralValue!15816 (text!55801 List!46171)) (TokenValueExt!7907 (__x!28037 Int)) (Broken!39540 (value!239329 List!46171)) (Object!8031) (End!7908) (Def!7908) (Underscore!7908) (Match!7908) (Else!7908) (Error!7908) (Case!7908) (If!7908) (Extends!7908) (Abstract!7908) (Class!7908) (Val!7908) (DelimiterValue!15816 (del!7968 List!46171)) (KeywordValue!7914 (value!239330 List!46171)) (CommentValue!15816 (value!239331 List!46171)) (WhitespaceValue!15816 (value!239332 List!46171)) (IndentationValue!7908 (value!239333 List!46171)) (String!53405) (Int32!7908) (Broken!39541 (value!239334 List!46171)) (Boolean!7909) (Unit!65124) (OperatorValue!7911 (op!7968 List!46171)) (IdentifierValue!15816 (value!239335 List!46171)) (IdentifierValue!15817 (value!239336 List!46171)) (WhitespaceValue!15817 (value!239337 List!46171)) (True!15816) (False!15816) (Broken!39542 (value!239338 List!46171)) (Broken!39543 (value!239339 List!46171)) (True!15817) (RightBrace!7908) (RightBracket!7908) (Colon!7908) (Null!7908) (Comma!7908) (LeftBracket!7908) (False!15817) (LeftBrace!7908) (ImaginaryLiteralValue!7908 (text!55802 List!46171)) (StringLiteralValue!23724 (value!239340 List!46171)) (EOFValue!7908 (value!239341 List!46171)) (IdentValue!7908 (value!239342 List!46171)) (DelimiterValue!15817 (value!239343 List!46171)) (DedentValue!7908 (value!239344 List!46171)) (NewLineValue!7908 (value!239345 List!46171)) (IntegerValue!23724 (value!239346 (_ BitVec 32)) (text!55803 List!46171)) (IntegerValue!23725 (value!239347 Int) (text!55804 List!46171)) (Times!7908) (Or!7908) (Equal!7908) (Minus!7908) (Broken!39544 (value!239348 List!46171)) (And!7908) (Div!7908) (LessEqual!7908) (Mod!7908) (Concat!20491) (Not!7908) (Plus!7908) (SpaceValue!7908 (value!239349 List!46171)) (IntegerValue!23726 (value!239350 Int) (text!55805 List!46171)) (StringLiteralValue!23725 (text!55806 List!46171)) (FloatLiteralValue!15817 (text!55807 List!46171)) (BytesLiteralValue!7908 (value!239351 List!46171)) (CommentValue!15817 (value!239352 List!46171)) (StringLiteralValue!23726 (value!239353 List!46171)) (ErrorTokenValue!7908 (msg!7969 List!46171)) )
))
(declare-datatypes ((C!25356 0))(
  ( (C!25357 (val!14840 Int)) )
))
(declare-datatypes ((List!46172 0))(
  ( (Nil!46048) (Cons!46048 (h!51468 C!25356) (t!346055 List!46172)) )
))
(declare-datatypes ((IArray!27783 0))(
  ( (IArray!27784 (innerList!13949 List!46172)) )
))
(declare-datatypes ((Conc!13889 0))(
  ( (Node!13889 (left!34302 Conc!13889) (right!34632 Conc!13889) (csize!28008 Int) (cheight!14100 Int)) (Leaf!21471 (xs!17195 IArray!27783) (csize!28009 Int)) (Empty!13889) )
))
(declare-datatypes ((BalanceConc!27372 0))(
  ( (BalanceConc!27373 (c!715228 Conc!13889)) )
))
(declare-datatypes ((Regex!12583 0))(
  ( (ElementMatch!12583 (c!715229 C!25356)) (Concat!20492 (regOne!25678 Regex!12583) (regTwo!25678 Regex!12583)) (EmptyExpr!12583) (Star!12583 (reg!12912 Regex!12583)) (EmptyLang!12583) (Union!12583 (regOne!25679 Regex!12583) (regTwo!25679 Regex!12583)) )
))
(declare-datatypes ((String!53406 0))(
  ( (String!53407 (value!239354 String)) )
))
(declare-datatypes ((TokenValueInjection!15244 0))(
  ( (TokenValueInjection!15245 (toValue!10374 Int) (toChars!10233 Int)) )
))
(declare-datatypes ((Rule!15156 0))(
  ( (Rule!15157 (regex!7678 Regex!12583) (tag!8542 String!53406) (isSeparator!7678 Bool) (transformation!7678 TokenValueInjection!15244)) )
))
(declare-fun r!4142 () Rule!15156)

(declare-fun p!2959 () List!46172)

(declare-fun matchR!6322 (Regex!12583 List!46172) Bool)

(assert (=> b!4192271 (= res!1720687 (matchR!6322 (regex!7678 r!4142) p!2959))))

(declare-fun e!2602412 () Bool)

(assert (=> b!4192272 (= e!2602412 (and tp!1280943 tp!1280945))))

(declare-fun b!4192273 () Bool)

(declare-fun res!1720686 () Bool)

(assert (=> b!4192273 (=> (not res!1720686) (not e!2602415))))

(declare-datatypes ((LexerInterface!7271 0))(
  ( (LexerInterfaceExt!7268 (__x!28038 Int)) (Lexer!7269) )
))
(declare-fun thiss!25986 () LexerInterface!7271)

(declare-fun ruleValid!3396 (LexerInterface!7271 Rule!15156) Bool)

(assert (=> b!4192273 (= res!1720686 (ruleValid!3396 thiss!25986 r!4142))))

(declare-fun b!4192274 () Bool)

(declare-fun res!1720683 () Bool)

(assert (=> b!4192274 (=> (not res!1720683) (not e!2602415))))

(declare-datatypes ((List!46173 0))(
  ( (Nil!46049) (Cons!46049 (h!51469 Rule!15156) (t!346056 List!46173)) )
))
(declare-fun rules!3843 () List!46173)

(declare-fun rBis!167 () Rule!15156)

(declare-fun contains!9487 (List!46173 Rule!15156) Bool)

(assert (=> b!4192274 (= res!1720683 (contains!9487 rules!3843 rBis!167))))

(declare-fun b!4192275 () Bool)

(declare-fun e!2602414 () Bool)

(declare-fun tp_is_empty!22129 () Bool)

(declare-fun tp!1280950 () Bool)

(assert (=> b!4192275 (= e!2602414 (and tp_is_empty!22129 tp!1280950))))

(declare-fun e!2602407 () Bool)

(assert (=> b!4192276 (= e!2602407 (and tp!1280947 tp!1280949))))

(declare-fun b!4192277 () Bool)

(declare-fun e!2602411 () Bool)

(declare-fun tp!1280948 () Bool)

(declare-fun e!2602418 () Bool)

(declare-fun inv!60595 (String!53406) Bool)

(declare-fun inv!60597 (TokenValueInjection!15244) Bool)

(assert (=> b!4192277 (= e!2602418 (and tp!1280948 (inv!60595 (tag!8542 (h!51469 rules!3843))) (inv!60597 (transformation!7678 (h!51469 rules!3843))) e!2602411))))

(declare-fun b!4192278 () Bool)

(declare-fun e!2602423 () Bool)

(declare-fun lt!1493188 () List!46172)

(declare-fun input!3342 () List!46172)

(declare-fun isPrefix!4535 (List!46172 List!46172) Bool)

(assert (=> b!4192278 (= e!2602423 (isPrefix!4535 lt!1493188 input!3342))))

(declare-fun b!4192279 () Bool)

(declare-fun e!2602422 () Bool)

(assert (=> b!4192279 (= e!2602415 (not e!2602422))))

(declare-fun res!1720695 () Bool)

(assert (=> b!4192279 (=> res!1720695 e!2602422)))

(declare-datatypes ((Token!14070 0))(
  ( (Token!14071 (value!239355 TokenValue!7908) (rule!10764 Rule!15156) (size!33835 Int) (originalCharacters!8066 List!46172)) )
))
(declare-datatypes ((tuple2!43842 0))(
  ( (tuple2!43843 (_1!25055 Token!14070) (_2!25055 List!46172)) )
))
(declare-datatypes ((Option!9872 0))(
  ( (None!9871) (Some!9871 (v!40705 tuple2!43842)) )
))
(declare-fun lt!1493190 () Option!9872)

(declare-fun maxPrefixOneRule!3280 (LexerInterface!7271 Rule!15156 List!46172) Option!9872)

(assert (=> b!4192279 (= res!1720695 (not (= (maxPrefixOneRule!3280 thiss!25986 r!4142 input!3342) lt!1493190)))))

(declare-fun lt!1493184 () TokenValue!7908)

(declare-fun lt!1493180 () Int)

(declare-fun getSuffix!2828 (List!46172 List!46172) List!46172)

(assert (=> b!4192279 (= lt!1493190 (Some!9871 (tuple2!43843 (Token!14071 lt!1493184 r!4142 lt!1493180 p!2959) (getSuffix!2828 input!3342 p!2959))))))

(declare-fun size!33836 (List!46172) Int)

(assert (=> b!4192279 (= lt!1493180 (size!33836 p!2959))))

(declare-fun lt!1493183 () BalanceConc!27372)

(declare-fun apply!10643 (TokenValueInjection!15244 BalanceConc!27372) TokenValue!7908)

(assert (=> b!4192279 (= lt!1493184 (apply!10643 (transformation!7678 r!4142) lt!1493183))))

(assert (=> b!4192279 (isPrefix!4535 input!3342 input!3342)))

(declare-datatypes ((Unit!65125 0))(
  ( (Unit!65126) )
))
(declare-fun lt!1493187 () Unit!65125)

(declare-fun lemmaIsPrefixRefl!2964 (List!46172 List!46172) Unit!65125)

(assert (=> b!4192279 (= lt!1493187 (lemmaIsPrefixRefl!2964 input!3342 input!3342))))

(declare-fun lt!1493181 () Unit!65125)

(declare-fun lemmaSemiInverse!2444 (TokenValueInjection!15244 BalanceConc!27372) Unit!65125)

(assert (=> b!4192279 (= lt!1493181 (lemmaSemiInverse!2444 (transformation!7678 r!4142) lt!1493183))))

(declare-fun seqFromList!5703 (List!46172) BalanceConc!27372)

(assert (=> b!4192279 (= lt!1493183 (seqFromList!5703 p!2959))))

(declare-fun b!4192280 () Bool)

(declare-fun res!1720696 () Bool)

(assert (=> b!4192280 (=> (not res!1720696) (not e!2602415))))

(assert (=> b!4192280 (= res!1720696 (isPrefix!4535 p!2959 input!3342))))

(declare-fun b!4192281 () Bool)

(declare-fun res!1720694 () Bool)

(assert (=> b!4192281 (=> (not res!1720694) (not e!2602415))))

(declare-fun validRegex!5700 (Regex!12583) Bool)

(assert (=> b!4192281 (= res!1720694 (validRegex!5700 (regex!7678 r!4142)))))

(declare-fun b!4192282 () Bool)

(declare-fun res!1720684 () Bool)

(assert (=> b!4192282 (=> res!1720684 e!2602423)))

(declare-fun lt!1493189 () Int)

(assert (=> b!4192282 (= res!1720684 (not (= lt!1493189 (size!33836 lt!1493188))))))

(declare-fun b!4192284 () Bool)

(declare-fun res!1720681 () Bool)

(assert (=> b!4192284 (=> res!1720681 e!2602423)))

(declare-fun lt!1493192 () BalanceConc!27372)

(declare-fun size!33837 (BalanceConc!27372) Int)

(assert (=> b!4192284 (= res!1720681 (< (size!33837 lt!1493192) lt!1493189))))

(declare-fun b!4192285 () Bool)

(declare-fun e!2602413 () Bool)

(declare-fun tp!1280942 () Bool)

(assert (=> b!4192285 (= e!2602413 (and e!2602418 tp!1280942))))

(declare-fun b!4192286 () Bool)

(declare-fun e!2602408 () Bool)

(declare-fun tp!1280951 () Bool)

(assert (=> b!4192286 (= e!2602408 (and tp_is_empty!22129 tp!1280951))))

(declare-fun b!4192287 () Bool)

(declare-fun e!2602421 () Bool)

(assert (=> b!4192287 (= e!2602422 e!2602421)))

(declare-fun res!1720698 () Bool)

(assert (=> b!4192287 (=> res!1720698 e!2602421)))

(assert (=> b!4192287 (= res!1720698 (<= lt!1493189 lt!1493180))))

(declare-fun pBis!107 () List!46172)

(assert (=> b!4192287 (= lt!1493189 (size!33836 pBis!107))))

(declare-fun b!4192288 () Bool)

(declare-fun res!1720697 () Bool)

(assert (=> b!4192288 (=> res!1720697 e!2602421)))

(assert (=> b!4192288 (= res!1720697 (not (ruleValid!3396 thiss!25986 rBis!167)))))

(declare-fun b!4192289 () Bool)

(declare-fun tp!1280944 () Bool)

(declare-fun e!2602420 () Bool)

(assert (=> b!4192289 (= e!2602420 (and tp!1280944 (inv!60595 (tag!8542 rBis!167)) (inv!60597 (transformation!7678 rBis!167)) e!2602412))))

(declare-fun b!4192290 () Bool)

(declare-fun res!1720693 () Bool)

(assert (=> b!4192290 (=> (not res!1720693) (not e!2602415))))

(declare-fun isEmpty!27264 (List!46173) Bool)

(assert (=> b!4192290 (= res!1720693 (not (isEmpty!27264 rules!3843)))))

(declare-fun b!4192291 () Bool)

(declare-fun res!1720685 () Bool)

(assert (=> b!4192291 (=> (not res!1720685) (not e!2602415))))

(declare-fun rulesInvariant!6484 (LexerInterface!7271 List!46173) Bool)

(assert (=> b!4192291 (= res!1720685 (rulesInvariant!6484 thiss!25986 rules!3843))))

(declare-fun b!4192292 () Bool)

(declare-fun e!2602409 () Bool)

(assert (=> b!4192292 (= e!2602409 e!2602423)))

(declare-fun res!1720692 () Bool)

(assert (=> b!4192292 (=> res!1720692 e!2602423)))

(assert (=> b!4192292 (= res!1720692 (= lt!1493188 pBis!107))))

(declare-fun lt!1493185 () tuple2!43842)

(declare-fun ++!11750 (List!46172 List!46172) List!46172)

(assert (=> b!4192292 (isPrefix!4535 lt!1493188 (++!11750 lt!1493188 (_2!25055 lt!1493185)))))

(declare-fun lt!1493186 () Unit!65125)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3032 (List!46172 List!46172) Unit!65125)

(assert (=> b!4192292 (= lt!1493186 (lemmaConcatTwoListThenFirstIsPrefix!3032 lt!1493188 (_2!25055 lt!1493185)))))

(declare-fun list!16640 (BalanceConc!27372) List!46172)

(assert (=> b!4192292 (= lt!1493188 (list!16640 lt!1493192))))

(declare-fun charsOf!5113 (Token!14070) BalanceConc!27372)

(assert (=> b!4192292 (= lt!1493192 (charsOf!5113 (_1!25055 lt!1493185)))))

(declare-fun lt!1493191 () Option!9872)

(declare-fun get!14976 (Option!9872) tuple2!43842)

(assert (=> b!4192292 (= lt!1493185 (get!14976 lt!1493191))))

(declare-fun b!4192293 () Bool)

(declare-fun res!1720691 () Bool)

(assert (=> b!4192293 (=> (not res!1720691) (not e!2602415))))

(assert (=> b!4192293 (= res!1720691 (contains!9487 rules!3843 r!4142))))

(assert (=> b!4192294 (= e!2602411 (and tp!1280946 tp!1280954))))

(declare-fun tp!1280953 () Bool)

(declare-fun e!2602410 () Bool)

(declare-fun b!4192295 () Bool)

(assert (=> b!4192295 (= e!2602410 (and tp!1280953 (inv!60595 (tag!8542 r!4142)) (inv!60597 (transformation!7678 r!4142)) e!2602407))))

(declare-fun b!4192296 () Bool)

(declare-fun res!1720682 () Bool)

(assert (=> b!4192296 (=> (not res!1720682) (not e!2602415))))

(assert (=> b!4192296 (= res!1720682 (isPrefix!4535 pBis!107 input!3342))))

(declare-fun b!4192283 () Bool)

(declare-fun res!1720688 () Bool)

(assert (=> b!4192283 (=> res!1720688 e!2602421)))

(declare-fun maxPrefix!4319 (LexerInterface!7271 List!46173 List!46172) Option!9872)

(assert (=> b!4192283 (= res!1720688 (not (= (maxPrefix!4319 thiss!25986 rules!3843 input!3342) lt!1493190)))))

(declare-fun res!1720689 () Bool)

(assert (=> start!400158 (=> (not res!1720689) (not e!2602415))))

(get-info :version)

(assert (=> start!400158 (= res!1720689 ((_ is Lexer!7269) thiss!25986))))

(assert (=> start!400158 e!2602415))

(assert (=> start!400158 true))

(assert (=> start!400158 e!2602420))

(assert (=> start!400158 e!2602410))

(assert (=> start!400158 e!2602413))

(assert (=> start!400158 e!2602408))

(declare-fun e!2602419 () Bool)

(assert (=> start!400158 e!2602419))

(assert (=> start!400158 e!2602414))

(declare-fun b!4192297 () Bool)

(assert (=> b!4192297 (= e!2602421 e!2602409)))

(declare-fun res!1720690 () Bool)

(assert (=> b!4192297 (=> res!1720690 e!2602409)))

(declare-fun isEmpty!27265 (Option!9872) Bool)

(assert (=> b!4192297 (= res!1720690 (isEmpty!27265 lt!1493191))))

(assert (=> b!4192297 (= lt!1493191 (maxPrefixOneRule!3280 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1493182 () Unit!65125)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2402 (LexerInterface!7271 Rule!15156 List!46173) Unit!65125)

(assert (=> b!4192297 (= lt!1493182 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2402 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4192297 (<= lt!1493189 (size!33836 input!3342))))

(declare-fun lt!1493179 () Unit!65125)

(declare-fun lemmaIsPrefixThenSmallerEqSize!565 (List!46172 List!46172) Unit!65125)

(assert (=> b!4192297 (= lt!1493179 (lemmaIsPrefixThenSmallerEqSize!565 pBis!107 input!3342))))

(declare-fun b!4192298 () Bool)

(declare-fun tp!1280952 () Bool)

(assert (=> b!4192298 (= e!2602419 (and tp_is_empty!22129 tp!1280952))))

(assert (= (and start!400158 res!1720689) b!4192280))

(assert (= (and b!4192280 res!1720696) b!4192296))

(assert (= (and b!4192296 res!1720682) b!4192290))

(assert (= (and b!4192290 res!1720693) b!4192291))

(assert (= (and b!4192291 res!1720685) b!4192293))

(assert (= (and b!4192293 res!1720691) b!4192274))

(assert (= (and b!4192274 res!1720683) b!4192281))

(assert (= (and b!4192281 res!1720694) b!4192271))

(assert (= (and b!4192271 res!1720687) b!4192273))

(assert (= (and b!4192273 res!1720686) b!4192279))

(assert (= (and b!4192279 (not res!1720695)) b!4192287))

(assert (= (and b!4192287 (not res!1720698)) b!4192288))

(assert (= (and b!4192288 (not res!1720697)) b!4192283))

(assert (= (and b!4192283 (not res!1720688)) b!4192297))

(assert (= (and b!4192297 (not res!1720690)) b!4192292))

(assert (= (and b!4192292 (not res!1720692)) b!4192284))

(assert (= (and b!4192284 (not res!1720681)) b!4192282))

(assert (= (and b!4192282 (not res!1720684)) b!4192278))

(assert (= b!4192289 b!4192272))

(assert (= start!400158 b!4192289))

(assert (= b!4192295 b!4192276))

(assert (= start!400158 b!4192295))

(assert (= b!4192277 b!4192294))

(assert (= b!4192285 b!4192277))

(assert (= (and start!400158 ((_ is Cons!46049) rules!3843)) b!4192285))

(assert (= (and start!400158 ((_ is Cons!46048) input!3342)) b!4192286))

(assert (= (and start!400158 ((_ is Cons!46048) pBis!107)) b!4192298))

(assert (= (and start!400158 ((_ is Cons!46048) p!2959)) b!4192275))

(declare-fun m!4780939 () Bool)

(assert (=> b!4192273 m!4780939))

(declare-fun m!4780941 () Bool)

(assert (=> b!4192280 m!4780941))

(declare-fun m!4780943 () Bool)

(assert (=> b!4192287 m!4780943))

(declare-fun m!4780945 () Bool)

(assert (=> b!4192274 m!4780945))

(declare-fun m!4780947 () Bool)

(assert (=> b!4192289 m!4780947))

(declare-fun m!4780949 () Bool)

(assert (=> b!4192289 m!4780949))

(declare-fun m!4780951 () Bool)

(assert (=> b!4192290 m!4780951))

(declare-fun m!4780953 () Bool)

(assert (=> b!4192282 m!4780953))

(declare-fun m!4780955 () Bool)

(assert (=> b!4192279 m!4780955))

(declare-fun m!4780957 () Bool)

(assert (=> b!4192279 m!4780957))

(declare-fun m!4780959 () Bool)

(assert (=> b!4192279 m!4780959))

(declare-fun m!4780961 () Bool)

(assert (=> b!4192279 m!4780961))

(declare-fun m!4780963 () Bool)

(assert (=> b!4192279 m!4780963))

(declare-fun m!4780965 () Bool)

(assert (=> b!4192279 m!4780965))

(declare-fun m!4780967 () Bool)

(assert (=> b!4192279 m!4780967))

(declare-fun m!4780969 () Bool)

(assert (=> b!4192279 m!4780969))

(declare-fun m!4780971 () Bool)

(assert (=> b!4192283 m!4780971))

(declare-fun m!4780973 () Bool)

(assert (=> b!4192288 m!4780973))

(declare-fun m!4780975 () Bool)

(assert (=> b!4192271 m!4780975))

(declare-fun m!4780977 () Bool)

(assert (=> b!4192278 m!4780977))

(declare-fun m!4780979 () Bool)

(assert (=> b!4192291 m!4780979))

(declare-fun m!4780981 () Bool)

(assert (=> b!4192281 m!4780981))

(declare-fun m!4780983 () Bool)

(assert (=> b!4192295 m!4780983))

(declare-fun m!4780985 () Bool)

(assert (=> b!4192295 m!4780985))

(declare-fun m!4780987 () Bool)

(assert (=> b!4192296 m!4780987))

(declare-fun m!4780989 () Bool)

(assert (=> b!4192284 m!4780989))

(declare-fun m!4780991 () Bool)

(assert (=> b!4192277 m!4780991))

(declare-fun m!4780993 () Bool)

(assert (=> b!4192277 m!4780993))

(declare-fun m!4780995 () Bool)

(assert (=> b!4192292 m!4780995))

(declare-fun m!4780997 () Bool)

(assert (=> b!4192292 m!4780997))

(declare-fun m!4780999 () Bool)

(assert (=> b!4192292 m!4780999))

(declare-fun m!4781001 () Bool)

(assert (=> b!4192292 m!4781001))

(declare-fun m!4781003 () Bool)

(assert (=> b!4192292 m!4781003))

(assert (=> b!4192292 m!4780997))

(declare-fun m!4781005 () Bool)

(assert (=> b!4192292 m!4781005))

(declare-fun m!4781007 () Bool)

(assert (=> b!4192297 m!4781007))

(declare-fun m!4781009 () Bool)

(assert (=> b!4192297 m!4781009))

(declare-fun m!4781011 () Bool)

(assert (=> b!4192297 m!4781011))

(declare-fun m!4781013 () Bool)

(assert (=> b!4192297 m!4781013))

(declare-fun m!4781015 () Bool)

(assert (=> b!4192297 m!4781015))

(declare-fun m!4781017 () Bool)

(assert (=> b!4192293 m!4781017))

(check-sat (not b!4192289) (not b!4192293) (not b_next!122813) b_and!328535 (not b!4192297) b_and!328533 (not b!4192280) (not b!4192288) b_and!328539 (not b!4192283) (not b_next!122811) (not b!4192292) (not b!4192281) (not b!4192277) b_and!328537 (not b!4192274) (not b!4192282) (not b!4192290) (not b!4192286) b_and!328531 (not b!4192275) (not b!4192273) (not b_next!122815) (not b!4192295) (not b!4192291) (not b!4192296) (not b!4192287) (not b!4192298) (not b!4192271) (not b!4192284) (not b_next!122807) (not b!4192279) (not b!4192285) (not b!4192278) b_and!328529 (not b_next!122817) (not b_next!122809) tp_is_empty!22129)
(check-sat (not b_next!122811) b_and!328537 (not b_next!122813) b_and!328535 b_and!328531 b_and!328533 (not b_next!122815) (not b_next!122807) b_and!328539 (not b_next!122809) b_and!328529 (not b_next!122817))
(get-model)

(declare-fun d!1236440 () Bool)

(declare-fun lt!1493215 () Int)

(assert (=> d!1236440 (>= lt!1493215 0)))

(declare-fun e!2602487 () Int)

(assert (=> d!1236440 (= lt!1493215 e!2602487)))

(declare-fun c!715244 () Bool)

(assert (=> d!1236440 (= c!715244 ((_ is Nil!46048) lt!1493188))))

(assert (=> d!1236440 (= (size!33836 lt!1493188) lt!1493215)))

(declare-fun b!4192388 () Bool)

(assert (=> b!4192388 (= e!2602487 0)))

(declare-fun b!4192389 () Bool)

(assert (=> b!4192389 (= e!2602487 (+ 1 (size!33836 (t!346055 lt!1493188))))))

(assert (= (and d!1236440 c!715244) b!4192388))

(assert (= (and d!1236440 (not c!715244)) b!4192389))

(declare-fun m!4781087 () Bool)

(assert (=> b!4192389 m!4781087))

(assert (=> b!4192282 d!1236440))

(declare-fun d!1236442 () Bool)

(declare-fun lt!1493218 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7177 (List!46173) (InoxSet Rule!15156))

(assert (=> d!1236442 (= lt!1493218 (select (content!7177 rules!3843) r!4142))))

(declare-fun e!2602492 () Bool)

(assert (=> d!1236442 (= lt!1493218 e!2602492)))

(declare-fun res!1720769 () Bool)

(assert (=> d!1236442 (=> (not res!1720769) (not e!2602492))))

(assert (=> d!1236442 (= res!1720769 ((_ is Cons!46049) rules!3843))))

(assert (=> d!1236442 (= (contains!9487 rules!3843 r!4142) lt!1493218)))

(declare-fun b!4192394 () Bool)

(declare-fun e!2602493 () Bool)

(assert (=> b!4192394 (= e!2602492 e!2602493)))

(declare-fun res!1720770 () Bool)

(assert (=> b!4192394 (=> res!1720770 e!2602493)))

(assert (=> b!4192394 (= res!1720770 (= (h!51469 rules!3843) r!4142))))

(declare-fun b!4192395 () Bool)

(assert (=> b!4192395 (= e!2602493 (contains!9487 (t!346056 rules!3843) r!4142))))

(assert (= (and d!1236442 res!1720769) b!4192394))

(assert (= (and b!4192394 (not res!1720770)) b!4192395))

(declare-fun m!4781089 () Bool)

(assert (=> d!1236442 m!4781089))

(declare-fun m!4781091 () Bool)

(assert (=> d!1236442 m!4781091))

(declare-fun m!4781093 () Bool)

(assert (=> b!4192395 m!4781093))

(assert (=> b!4192293 d!1236442))

(declare-fun d!1236444 () Bool)

(declare-fun list!16642 (Conc!13889) List!46172)

(assert (=> d!1236444 (= (list!16640 lt!1493192) (list!16642 (c!715228 lt!1493192)))))

(declare-fun bs!596650 () Bool)

(assert (= bs!596650 d!1236444))

(declare-fun m!4781095 () Bool)

(assert (=> bs!596650 m!4781095))

(assert (=> b!4192292 d!1236444))

(declare-fun lt!1493239 () List!46172)

(declare-fun b!4192442 () Bool)

(declare-fun e!2602512 () Bool)

(assert (=> b!4192442 (= e!2602512 (or (not (= (_2!25055 lt!1493185) Nil!46048)) (= lt!1493239 lt!1493188)))))

(declare-fun b!4192439 () Bool)

(declare-fun e!2602513 () List!46172)

(assert (=> b!4192439 (= e!2602513 (_2!25055 lt!1493185))))

(declare-fun b!4192441 () Bool)

(declare-fun res!1720796 () Bool)

(assert (=> b!4192441 (=> (not res!1720796) (not e!2602512))))

(assert (=> b!4192441 (= res!1720796 (= (size!33836 lt!1493239) (+ (size!33836 lt!1493188) (size!33836 (_2!25055 lt!1493185)))))))

(declare-fun d!1236446 () Bool)

(assert (=> d!1236446 e!2602512))

(declare-fun res!1720797 () Bool)

(assert (=> d!1236446 (=> (not res!1720797) (not e!2602512))))

(declare-fun content!7178 (List!46172) (InoxSet C!25356))

(assert (=> d!1236446 (= res!1720797 (= (content!7178 lt!1493239) ((_ map or) (content!7178 lt!1493188) (content!7178 (_2!25055 lt!1493185)))))))

(assert (=> d!1236446 (= lt!1493239 e!2602513)))

(declare-fun c!715253 () Bool)

(assert (=> d!1236446 (= c!715253 ((_ is Nil!46048) lt!1493188))))

(assert (=> d!1236446 (= (++!11750 lt!1493188 (_2!25055 lt!1493185)) lt!1493239)))

(declare-fun b!4192440 () Bool)

(assert (=> b!4192440 (= e!2602513 (Cons!46048 (h!51468 lt!1493188) (++!11750 (t!346055 lt!1493188) (_2!25055 lt!1493185))))))

(assert (= (and d!1236446 c!715253) b!4192439))

(assert (= (and d!1236446 (not c!715253)) b!4192440))

(assert (= (and d!1236446 res!1720797) b!4192441))

(assert (= (and b!4192441 res!1720796) b!4192442))

(declare-fun m!4781133 () Bool)

(assert (=> b!4192441 m!4781133))

(assert (=> b!4192441 m!4780953))

(declare-fun m!4781137 () Bool)

(assert (=> b!4192441 m!4781137))

(declare-fun m!4781139 () Bool)

(assert (=> d!1236446 m!4781139))

(declare-fun m!4781141 () Bool)

(assert (=> d!1236446 m!4781141))

(declare-fun m!4781143 () Bool)

(assert (=> d!1236446 m!4781143))

(declare-fun m!4781145 () Bool)

(assert (=> b!4192440 m!4781145))

(assert (=> b!4192292 d!1236446))

(declare-fun d!1236456 () Bool)

(declare-fun lt!1493246 () BalanceConc!27372)

(assert (=> d!1236456 (= (list!16640 lt!1493246) (originalCharacters!8066 (_1!25055 lt!1493185)))))

(declare-fun dynLambda!19825 (Int TokenValue!7908) BalanceConc!27372)

(assert (=> d!1236456 (= lt!1493246 (dynLambda!19825 (toChars!10233 (transformation!7678 (rule!10764 (_1!25055 lt!1493185)))) (value!239355 (_1!25055 lt!1493185))))))

(assert (=> d!1236456 (= (charsOf!5113 (_1!25055 lt!1493185)) lt!1493246)))

(declare-fun b_lambda!123299 () Bool)

(assert (=> (not b_lambda!123299) (not d!1236456)))

(declare-fun t!346070 () Bool)

(declare-fun tb!251111 () Bool)

(assert (=> (and b!4192276 (= (toChars!10233 (transformation!7678 r!4142)) (toChars!10233 (transformation!7678 (rule!10764 (_1!25055 lt!1493185))))) t!346070) tb!251111))

(declare-fun b!4192451 () Bool)

(declare-fun e!2602520 () Bool)

(declare-fun tp!1280960 () Bool)

(declare-fun inv!60600 (Conc!13889) Bool)

(assert (=> b!4192451 (= e!2602520 (and (inv!60600 (c!715228 (dynLambda!19825 (toChars!10233 (transformation!7678 (rule!10764 (_1!25055 lt!1493185)))) (value!239355 (_1!25055 lt!1493185))))) tp!1280960))))

(declare-fun result!306060 () Bool)

(declare-fun inv!60601 (BalanceConc!27372) Bool)

(assert (=> tb!251111 (= result!306060 (and (inv!60601 (dynLambda!19825 (toChars!10233 (transformation!7678 (rule!10764 (_1!25055 lt!1493185)))) (value!239355 (_1!25055 lt!1493185)))) e!2602520))))

(assert (= tb!251111 b!4192451))

(declare-fun m!4781149 () Bool)

(assert (=> b!4192451 m!4781149))

(declare-fun m!4781151 () Bool)

(assert (=> tb!251111 m!4781151))

(assert (=> d!1236456 t!346070))

(declare-fun b_and!328553 () Bool)

(assert (= b_and!328531 (and (=> t!346070 result!306060) b_and!328553)))

(declare-fun tb!251113 () Bool)

(declare-fun t!346072 () Bool)

(assert (=> (and b!4192294 (= (toChars!10233 (transformation!7678 (h!51469 rules!3843))) (toChars!10233 (transformation!7678 (rule!10764 (_1!25055 lt!1493185))))) t!346072) tb!251113))

(declare-fun result!306064 () Bool)

(assert (= result!306064 result!306060))

(assert (=> d!1236456 t!346072))

(declare-fun b_and!328555 () Bool)

(assert (= b_and!328535 (and (=> t!346072 result!306064) b_and!328555)))

(declare-fun tb!251115 () Bool)

(declare-fun t!346074 () Bool)

(assert (=> (and b!4192272 (= (toChars!10233 (transformation!7678 rBis!167)) (toChars!10233 (transformation!7678 (rule!10764 (_1!25055 lt!1493185))))) t!346074) tb!251115))

(declare-fun result!306066 () Bool)

(assert (= result!306066 result!306060))

(assert (=> d!1236456 t!346074))

(declare-fun b_and!328557 () Bool)

(assert (= b_and!328539 (and (=> t!346074 result!306066) b_and!328557)))

(declare-fun m!4781153 () Bool)

(assert (=> d!1236456 m!4781153))

(declare-fun m!4781155 () Bool)

(assert (=> d!1236456 m!4781155))

(assert (=> b!4192292 d!1236456))

(declare-fun b!4192463 () Bool)

(declare-fun e!2602528 () Bool)

(assert (=> b!4192463 (= e!2602528 (>= (size!33836 (++!11750 lt!1493188 (_2!25055 lt!1493185))) (size!33836 lt!1493188)))))

(declare-fun b!4192460 () Bool)

(declare-fun e!2602527 () Bool)

(declare-fun e!2602529 () Bool)

(assert (=> b!4192460 (= e!2602527 e!2602529)))

(declare-fun res!1720811 () Bool)

(assert (=> b!4192460 (=> (not res!1720811) (not e!2602529))))

(assert (=> b!4192460 (= res!1720811 (not ((_ is Nil!46048) (++!11750 lt!1493188 (_2!25055 lt!1493185)))))))

(declare-fun b!4192462 () Bool)

(declare-fun tail!6745 (List!46172) List!46172)

(assert (=> b!4192462 (= e!2602529 (isPrefix!4535 (tail!6745 lt!1493188) (tail!6745 (++!11750 lt!1493188 (_2!25055 lt!1493185)))))))

(declare-fun d!1236460 () Bool)

(assert (=> d!1236460 e!2602528))

(declare-fun res!1720810 () Bool)

(assert (=> d!1236460 (=> res!1720810 e!2602528)))

(declare-fun lt!1493249 () Bool)

(assert (=> d!1236460 (= res!1720810 (not lt!1493249))))

(assert (=> d!1236460 (= lt!1493249 e!2602527)))

(declare-fun res!1720813 () Bool)

(assert (=> d!1236460 (=> res!1720813 e!2602527)))

(assert (=> d!1236460 (= res!1720813 ((_ is Nil!46048) lt!1493188))))

(assert (=> d!1236460 (= (isPrefix!4535 lt!1493188 (++!11750 lt!1493188 (_2!25055 lt!1493185))) lt!1493249)))

(declare-fun b!4192461 () Bool)

(declare-fun res!1720812 () Bool)

(assert (=> b!4192461 (=> (not res!1720812) (not e!2602529))))

(declare-fun head!8898 (List!46172) C!25356)

(assert (=> b!4192461 (= res!1720812 (= (head!8898 lt!1493188) (head!8898 (++!11750 lt!1493188 (_2!25055 lt!1493185)))))))

(assert (= (and d!1236460 (not res!1720813)) b!4192460))

(assert (= (and b!4192460 res!1720811) b!4192461))

(assert (= (and b!4192461 res!1720812) b!4192462))

(assert (= (and d!1236460 (not res!1720810)) b!4192463))

(assert (=> b!4192463 m!4780997))

(declare-fun m!4781157 () Bool)

(assert (=> b!4192463 m!4781157))

(assert (=> b!4192463 m!4780953))

(declare-fun m!4781159 () Bool)

(assert (=> b!4192462 m!4781159))

(assert (=> b!4192462 m!4780997))

(declare-fun m!4781161 () Bool)

(assert (=> b!4192462 m!4781161))

(assert (=> b!4192462 m!4781159))

(assert (=> b!4192462 m!4781161))

(declare-fun m!4781163 () Bool)

(assert (=> b!4192462 m!4781163))

(declare-fun m!4781165 () Bool)

(assert (=> b!4192461 m!4781165))

(assert (=> b!4192461 m!4780997))

(declare-fun m!4781167 () Bool)

(assert (=> b!4192461 m!4781167))

(assert (=> b!4192292 d!1236460))

(declare-fun d!1236462 () Bool)

(assert (=> d!1236462 (isPrefix!4535 lt!1493188 (++!11750 lt!1493188 (_2!25055 lt!1493185)))))

(declare-fun lt!1493252 () Unit!65125)

(declare-fun choose!25688 (List!46172 List!46172) Unit!65125)

(assert (=> d!1236462 (= lt!1493252 (choose!25688 lt!1493188 (_2!25055 lt!1493185)))))

(assert (=> d!1236462 (= (lemmaConcatTwoListThenFirstIsPrefix!3032 lt!1493188 (_2!25055 lt!1493185)) lt!1493252)))

(declare-fun bs!596652 () Bool)

(assert (= bs!596652 d!1236462))

(assert (=> bs!596652 m!4780997))

(assert (=> bs!596652 m!4780997))

(assert (=> bs!596652 m!4780999))

(declare-fun m!4781169 () Bool)

(assert (=> bs!596652 m!4781169))

(assert (=> b!4192292 d!1236462))

(declare-fun d!1236464 () Bool)

(assert (=> d!1236464 (= (get!14976 lt!1493191) (v!40705 lt!1493191))))

(assert (=> b!4192292 d!1236464))

(declare-fun d!1236466 () Bool)

(declare-fun e!2602562 () Bool)

(assert (=> d!1236466 e!2602562))

(declare-fun c!715266 () Bool)

(assert (=> d!1236466 (= c!715266 ((_ is EmptyExpr!12583) (regex!7678 r!4142)))))

(declare-fun lt!1493271 () Bool)

(declare-fun e!2602561 () Bool)

(assert (=> d!1236466 (= lt!1493271 e!2602561)))

(declare-fun c!715265 () Bool)

(declare-fun isEmpty!27267 (List!46172) Bool)

(assert (=> d!1236466 (= c!715265 (isEmpty!27267 p!2959))))

(assert (=> d!1236466 (validRegex!5700 (regex!7678 r!4142))))

(assert (=> d!1236466 (= (matchR!6322 (regex!7678 r!4142) p!2959) lt!1493271)))

(declare-fun b!4192521 () Bool)

(declare-fun e!2602558 () Bool)

(assert (=> b!4192521 (= e!2602558 (not lt!1493271))))

(declare-fun b!4192522 () Bool)

(declare-fun e!2602557 () Bool)

(declare-fun e!2602560 () Bool)

(assert (=> b!4192522 (= e!2602557 e!2602560)))

(declare-fun res!1720857 () Bool)

(assert (=> b!4192522 (=> res!1720857 e!2602560)))

(declare-fun call!292223 () Bool)

(assert (=> b!4192522 (= res!1720857 call!292223)))

(declare-fun b!4192523 () Bool)

(declare-fun res!1720855 () Bool)

(declare-fun e!2602563 () Bool)

(assert (=> b!4192523 (=> (not res!1720855) (not e!2602563))))

(assert (=> b!4192523 (= res!1720855 (isEmpty!27267 (tail!6745 p!2959)))))

(declare-fun b!4192524 () Bool)

(assert (=> b!4192524 (= e!2602563 (= (head!8898 p!2959) (c!715229 (regex!7678 r!4142))))))

(declare-fun b!4192525 () Bool)

(assert (=> b!4192525 (= e!2602560 (not (= (head!8898 p!2959) (c!715229 (regex!7678 r!4142)))))))

(declare-fun b!4192526 () Bool)

(declare-fun res!1720858 () Bool)

(assert (=> b!4192526 (=> (not res!1720858) (not e!2602563))))

(assert (=> b!4192526 (= res!1720858 (not call!292223))))

(declare-fun b!4192527 () Bool)

(declare-fun res!1720851 () Bool)

(declare-fun e!2602559 () Bool)

(assert (=> b!4192527 (=> res!1720851 e!2602559)))

(assert (=> b!4192527 (= res!1720851 (not ((_ is ElementMatch!12583) (regex!7678 r!4142))))))

(assert (=> b!4192527 (= e!2602558 e!2602559)))

(declare-fun b!4192528 () Bool)

(declare-fun nullable!4421 (Regex!12583) Bool)

(assert (=> b!4192528 (= e!2602561 (nullable!4421 (regex!7678 r!4142)))))

(declare-fun b!4192529 () Bool)

(assert (=> b!4192529 (= e!2602562 e!2602558)))

(declare-fun c!715264 () Bool)

(assert (=> b!4192529 (= c!715264 ((_ is EmptyLang!12583) (regex!7678 r!4142)))))

(declare-fun b!4192530 () Bool)

(assert (=> b!4192530 (= e!2602559 e!2602557)))

(declare-fun res!1720856 () Bool)

(assert (=> b!4192530 (=> (not res!1720856) (not e!2602557))))

(assert (=> b!4192530 (= res!1720856 (not lt!1493271))))

(declare-fun b!4192531 () Bool)

(assert (=> b!4192531 (= e!2602562 (= lt!1493271 call!292223))))

(declare-fun b!4192532 () Bool)

(declare-fun derivativeStep!3811 (Regex!12583 C!25356) Regex!12583)

(assert (=> b!4192532 (= e!2602561 (matchR!6322 (derivativeStep!3811 (regex!7678 r!4142) (head!8898 p!2959)) (tail!6745 p!2959)))))

(declare-fun b!4192533 () Bool)

(declare-fun res!1720852 () Bool)

(assert (=> b!4192533 (=> res!1720852 e!2602560)))

(assert (=> b!4192533 (= res!1720852 (not (isEmpty!27267 (tail!6745 p!2959))))))

(declare-fun bm!292218 () Bool)

(assert (=> bm!292218 (= call!292223 (isEmpty!27267 p!2959))))

(declare-fun b!4192534 () Bool)

(declare-fun res!1720853 () Bool)

(assert (=> b!4192534 (=> res!1720853 e!2602559)))

(assert (=> b!4192534 (= res!1720853 e!2602563)))

(declare-fun res!1720854 () Bool)

(assert (=> b!4192534 (=> (not res!1720854) (not e!2602563))))

(assert (=> b!4192534 (= res!1720854 lt!1493271)))

(assert (= (and d!1236466 c!715265) b!4192528))

(assert (= (and d!1236466 (not c!715265)) b!4192532))

(assert (= (and d!1236466 c!715266) b!4192531))

(assert (= (and d!1236466 (not c!715266)) b!4192529))

(assert (= (and b!4192529 c!715264) b!4192521))

(assert (= (and b!4192529 (not c!715264)) b!4192527))

(assert (= (and b!4192527 (not res!1720851)) b!4192534))

(assert (= (and b!4192534 res!1720854) b!4192526))

(assert (= (and b!4192526 res!1720858) b!4192523))

(assert (= (and b!4192523 res!1720855) b!4192524))

(assert (= (and b!4192534 (not res!1720853)) b!4192530))

(assert (= (and b!4192530 res!1720856) b!4192522))

(assert (= (and b!4192522 (not res!1720857)) b!4192533))

(assert (= (and b!4192533 (not res!1720852)) b!4192525))

(assert (= (or b!4192531 b!4192522 b!4192526) bm!292218))

(declare-fun m!4781215 () Bool)

(assert (=> b!4192523 m!4781215))

(assert (=> b!4192523 m!4781215))

(declare-fun m!4781217 () Bool)

(assert (=> b!4192523 m!4781217))

(declare-fun m!4781219 () Bool)

(assert (=> bm!292218 m!4781219))

(declare-fun m!4781221 () Bool)

(assert (=> b!4192528 m!4781221))

(declare-fun m!4781223 () Bool)

(assert (=> b!4192532 m!4781223))

(assert (=> b!4192532 m!4781223))

(declare-fun m!4781225 () Bool)

(assert (=> b!4192532 m!4781225))

(assert (=> b!4192532 m!4781215))

(assert (=> b!4192532 m!4781225))

(assert (=> b!4192532 m!4781215))

(declare-fun m!4781227 () Bool)

(assert (=> b!4192532 m!4781227))

(assert (=> b!4192525 m!4781223))

(assert (=> b!4192524 m!4781223))

(assert (=> d!1236466 m!4781219))

(assert (=> d!1236466 m!4780981))

(assert (=> b!4192533 m!4781215))

(assert (=> b!4192533 m!4781215))

(assert (=> b!4192533 m!4781217))

(assert (=> b!4192271 d!1236466))

(declare-fun d!1236472 () Bool)

(declare-fun res!1720863 () Bool)

(declare-fun e!2602566 () Bool)

(assert (=> d!1236472 (=> (not res!1720863) (not e!2602566))))

(assert (=> d!1236472 (= res!1720863 (validRegex!5700 (regex!7678 r!4142)))))

(assert (=> d!1236472 (= (ruleValid!3396 thiss!25986 r!4142) e!2602566)))

(declare-fun b!4192539 () Bool)

(declare-fun res!1720864 () Bool)

(assert (=> b!4192539 (=> (not res!1720864) (not e!2602566))))

(assert (=> b!4192539 (= res!1720864 (not (nullable!4421 (regex!7678 r!4142))))))

(declare-fun b!4192540 () Bool)

(assert (=> b!4192540 (= e!2602566 (not (= (tag!8542 r!4142) (String!53407 ""))))))

(assert (= (and d!1236472 res!1720863) b!4192539))

(assert (= (and b!4192539 res!1720864) b!4192540))

(assert (=> d!1236472 m!4780981))

(assert (=> b!4192539 m!4781221))

(assert (=> b!4192273 d!1236472))

(declare-fun b!4192559 () Bool)

(declare-fun res!1720879 () Bool)

(declare-fun e!2602575 () Bool)

(assert (=> b!4192559 (=> (not res!1720879) (not e!2602575))))

(declare-fun lt!1493287 () Option!9872)

(assert (=> b!4192559 (= res!1720879 (= (++!11750 (list!16640 (charsOf!5113 (_1!25055 (get!14976 lt!1493287)))) (_2!25055 (get!14976 lt!1493287))) input!3342))))

(declare-fun b!4192560 () Bool)

(declare-fun res!1720881 () Bool)

(assert (=> b!4192560 (=> (not res!1720881) (not e!2602575))))

(assert (=> b!4192560 (= res!1720881 (< (size!33836 (_2!25055 (get!14976 lt!1493287))) (size!33836 input!3342)))))

(declare-fun b!4192561 () Bool)

(assert (=> b!4192561 (= e!2602575 (contains!9487 rules!3843 (rule!10764 (_1!25055 (get!14976 lt!1493287)))))))

(declare-fun call!292226 () Option!9872)

(declare-fun bm!292221 () Bool)

(assert (=> bm!292221 (= call!292226 (maxPrefixOneRule!3280 thiss!25986 (h!51469 rules!3843) input!3342))))

(declare-fun b!4192562 () Bool)

(declare-fun res!1720883 () Bool)

(assert (=> b!4192562 (=> (not res!1720883) (not e!2602575))))

(assert (=> b!4192562 (= res!1720883 (= (list!16640 (charsOf!5113 (_1!25055 (get!14976 lt!1493287)))) (originalCharacters!8066 (_1!25055 (get!14976 lt!1493287)))))))

(declare-fun b!4192563 () Bool)

(declare-fun res!1720882 () Bool)

(assert (=> b!4192563 (=> (not res!1720882) (not e!2602575))))

(assert (=> b!4192563 (= res!1720882 (= (value!239355 (_1!25055 (get!14976 lt!1493287))) (apply!10643 (transformation!7678 (rule!10764 (_1!25055 (get!14976 lt!1493287)))) (seqFromList!5703 (originalCharacters!8066 (_1!25055 (get!14976 lt!1493287)))))))))

(declare-fun b!4192564 () Bool)

(declare-fun e!2602574 () Bool)

(assert (=> b!4192564 (= e!2602574 e!2602575)))

(declare-fun res!1720885 () Bool)

(assert (=> b!4192564 (=> (not res!1720885) (not e!2602575))))

(declare-fun isDefined!7352 (Option!9872) Bool)

(assert (=> b!4192564 (= res!1720885 (isDefined!7352 lt!1493287))))

(declare-fun b!4192565 () Bool)

(declare-fun res!1720880 () Bool)

(assert (=> b!4192565 (=> (not res!1720880) (not e!2602575))))

(assert (=> b!4192565 (= res!1720880 (matchR!6322 (regex!7678 (rule!10764 (_1!25055 (get!14976 lt!1493287)))) (list!16640 (charsOf!5113 (_1!25055 (get!14976 lt!1493287))))))))

(declare-fun d!1236474 () Bool)

(assert (=> d!1236474 e!2602574))

(declare-fun res!1720884 () Bool)

(assert (=> d!1236474 (=> res!1720884 e!2602574)))

(assert (=> d!1236474 (= res!1720884 (isEmpty!27265 lt!1493287))))

(declare-fun e!2602573 () Option!9872)

(assert (=> d!1236474 (= lt!1493287 e!2602573)))

(declare-fun c!715270 () Bool)

(assert (=> d!1236474 (= c!715270 (and ((_ is Cons!46049) rules!3843) ((_ is Nil!46049) (t!346056 rules!3843))))))

(declare-fun lt!1493284 () Unit!65125)

(declare-fun lt!1493286 () Unit!65125)

(assert (=> d!1236474 (= lt!1493284 lt!1493286)))

(assert (=> d!1236474 (isPrefix!4535 input!3342 input!3342)))

(assert (=> d!1236474 (= lt!1493286 (lemmaIsPrefixRefl!2964 input!3342 input!3342))))

(declare-fun rulesValidInductive!2836 (LexerInterface!7271 List!46173) Bool)

(assert (=> d!1236474 (rulesValidInductive!2836 thiss!25986 rules!3843)))

(assert (=> d!1236474 (= (maxPrefix!4319 thiss!25986 rules!3843 input!3342) lt!1493287)))

(declare-fun b!4192566 () Bool)

(declare-fun lt!1493288 () Option!9872)

(declare-fun lt!1493285 () Option!9872)

(assert (=> b!4192566 (= e!2602573 (ite (and ((_ is None!9871) lt!1493288) ((_ is None!9871) lt!1493285)) None!9871 (ite ((_ is None!9871) lt!1493285) lt!1493288 (ite ((_ is None!9871) lt!1493288) lt!1493285 (ite (>= (size!33835 (_1!25055 (v!40705 lt!1493288))) (size!33835 (_1!25055 (v!40705 lt!1493285)))) lt!1493288 lt!1493285)))))))

(assert (=> b!4192566 (= lt!1493288 call!292226)))

(assert (=> b!4192566 (= lt!1493285 (maxPrefix!4319 thiss!25986 (t!346056 rules!3843) input!3342))))

(declare-fun b!4192567 () Bool)

(assert (=> b!4192567 (= e!2602573 call!292226)))

(assert (= (and d!1236474 c!715270) b!4192567))

(assert (= (and d!1236474 (not c!715270)) b!4192566))

(assert (= (or b!4192567 b!4192566) bm!292221))

(assert (= (and d!1236474 (not res!1720884)) b!4192564))

(assert (= (and b!4192564 res!1720885) b!4192562))

(assert (= (and b!4192562 res!1720883) b!4192560))

(assert (= (and b!4192560 res!1720881) b!4192559))

(assert (= (and b!4192559 res!1720879) b!4192563))

(assert (= (and b!4192563 res!1720882) b!4192565))

(assert (= (and b!4192565 res!1720880) b!4192561))

(declare-fun m!4781229 () Bool)

(assert (=> b!4192563 m!4781229))

(declare-fun m!4781231 () Bool)

(assert (=> b!4192563 m!4781231))

(assert (=> b!4192563 m!4781231))

(declare-fun m!4781233 () Bool)

(assert (=> b!4192563 m!4781233))

(assert (=> b!4192559 m!4781229))

(declare-fun m!4781235 () Bool)

(assert (=> b!4192559 m!4781235))

(assert (=> b!4192559 m!4781235))

(declare-fun m!4781237 () Bool)

(assert (=> b!4192559 m!4781237))

(assert (=> b!4192559 m!4781237))

(declare-fun m!4781239 () Bool)

(assert (=> b!4192559 m!4781239))

(assert (=> b!4192561 m!4781229))

(declare-fun m!4781241 () Bool)

(assert (=> b!4192561 m!4781241))

(declare-fun m!4781243 () Bool)

(assert (=> b!4192566 m!4781243))

(declare-fun m!4781245 () Bool)

(assert (=> b!4192564 m!4781245))

(declare-fun m!4781247 () Bool)

(assert (=> d!1236474 m!4781247))

(assert (=> d!1236474 m!4780959))

(assert (=> d!1236474 m!4780963))

(declare-fun m!4781249 () Bool)

(assert (=> d!1236474 m!4781249))

(declare-fun m!4781251 () Bool)

(assert (=> bm!292221 m!4781251))

(assert (=> b!4192565 m!4781229))

(assert (=> b!4192565 m!4781235))

(assert (=> b!4192565 m!4781235))

(assert (=> b!4192565 m!4781237))

(assert (=> b!4192565 m!4781237))

(declare-fun m!4781253 () Bool)

(assert (=> b!4192565 m!4781253))

(assert (=> b!4192562 m!4781229))

(assert (=> b!4192562 m!4781235))

(assert (=> b!4192562 m!4781235))

(assert (=> b!4192562 m!4781237))

(assert (=> b!4192560 m!4781229))

(declare-fun m!4781255 () Bool)

(assert (=> b!4192560 m!4781255))

(assert (=> b!4192560 m!4781011))

(assert (=> b!4192283 d!1236474))

(declare-fun d!1236476 () Bool)

(declare-fun lt!1493289 () Bool)

(assert (=> d!1236476 (= lt!1493289 (select (content!7177 rules!3843) rBis!167))))

(declare-fun e!2602576 () Bool)

(assert (=> d!1236476 (= lt!1493289 e!2602576)))

(declare-fun res!1720886 () Bool)

(assert (=> d!1236476 (=> (not res!1720886) (not e!2602576))))

(assert (=> d!1236476 (= res!1720886 ((_ is Cons!46049) rules!3843))))

(assert (=> d!1236476 (= (contains!9487 rules!3843 rBis!167) lt!1493289)))

(declare-fun b!4192568 () Bool)

(declare-fun e!2602577 () Bool)

(assert (=> b!4192568 (= e!2602576 e!2602577)))

(declare-fun res!1720887 () Bool)

(assert (=> b!4192568 (=> res!1720887 e!2602577)))

(assert (=> b!4192568 (= res!1720887 (= (h!51469 rules!3843) rBis!167))))

(declare-fun b!4192569 () Bool)

(assert (=> b!4192569 (= e!2602577 (contains!9487 (t!346056 rules!3843) rBis!167))))

(assert (= (and d!1236476 res!1720886) b!4192568))

(assert (= (and b!4192568 (not res!1720887)) b!4192569))

(assert (=> d!1236476 m!4781089))

(declare-fun m!4781257 () Bool)

(assert (=> d!1236476 m!4781257))

(declare-fun m!4781259 () Bool)

(assert (=> b!4192569 m!4781259))

(assert (=> b!4192274 d!1236476))

(declare-fun d!1236478 () Bool)

(declare-fun lt!1493292 () Int)

(assert (=> d!1236478 (= lt!1493292 (size!33836 (list!16640 lt!1493192)))))

(declare-fun size!33839 (Conc!13889) Int)

(assert (=> d!1236478 (= lt!1493292 (size!33839 (c!715228 lt!1493192)))))

(assert (=> d!1236478 (= (size!33837 lt!1493192) lt!1493292)))

(declare-fun bs!596653 () Bool)

(assert (= bs!596653 d!1236478))

(assert (=> bs!596653 m!4781001))

(assert (=> bs!596653 m!4781001))

(declare-fun m!4781261 () Bool)

(assert (=> bs!596653 m!4781261))

(declare-fun m!4781263 () Bool)

(assert (=> bs!596653 m!4781263))

(assert (=> b!4192284 d!1236478))

(declare-fun d!1236480 () Bool)

(assert (=> d!1236480 (= (inv!60595 (tag!8542 r!4142)) (= (mod (str.len (value!239354 (tag!8542 r!4142))) 2) 0))))

(assert (=> b!4192295 d!1236480))

(declare-fun d!1236482 () Bool)

(declare-fun res!1720890 () Bool)

(declare-fun e!2602580 () Bool)

(assert (=> d!1236482 (=> (not res!1720890) (not e!2602580))))

(declare-fun semiInverseModEq!3330 (Int Int) Bool)

(assert (=> d!1236482 (= res!1720890 (semiInverseModEq!3330 (toChars!10233 (transformation!7678 r!4142)) (toValue!10374 (transformation!7678 r!4142))))))

(assert (=> d!1236482 (= (inv!60597 (transformation!7678 r!4142)) e!2602580)))

(declare-fun b!4192572 () Bool)

(declare-fun equivClasses!3229 (Int Int) Bool)

(assert (=> b!4192572 (= e!2602580 (equivClasses!3229 (toChars!10233 (transformation!7678 r!4142)) (toValue!10374 (transformation!7678 r!4142))))))

(assert (= (and d!1236482 res!1720890) b!4192572))

(declare-fun m!4781265 () Bool)

(assert (=> d!1236482 m!4781265))

(declare-fun m!4781267 () Bool)

(assert (=> b!4192572 m!4781267))

(assert (=> b!4192295 d!1236482))

(declare-fun d!1236484 () Bool)

(assert (=> d!1236484 (= (isEmpty!27265 lt!1493191) (not ((_ is Some!9871) lt!1493191)))))

(assert (=> b!4192297 d!1236484))

(declare-fun d!1236486 () Bool)

(assert (=> d!1236486 (ruleValid!3396 thiss!25986 rBis!167)))

(declare-fun lt!1493295 () Unit!65125)

(declare-fun choose!25689 (LexerInterface!7271 Rule!15156 List!46173) Unit!65125)

(assert (=> d!1236486 (= lt!1493295 (choose!25689 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1236486 (contains!9487 rules!3843 rBis!167)))

(assert (=> d!1236486 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2402 thiss!25986 rBis!167 rules!3843) lt!1493295)))

(declare-fun bs!596654 () Bool)

(assert (= bs!596654 d!1236486))

(assert (=> bs!596654 m!4780973))

(declare-fun m!4781269 () Bool)

(assert (=> bs!596654 m!4781269))

(assert (=> bs!596654 m!4780945))

(assert (=> b!4192297 d!1236486))

(declare-fun b!4192591 () Bool)

(declare-fun res!1720908 () Bool)

(declare-fun e!2602591 () Bool)

(assert (=> b!4192591 (=> (not res!1720908) (not e!2602591))))

(declare-fun lt!1493307 () Option!9872)

(assert (=> b!4192591 (= res!1720908 (= (rule!10764 (_1!25055 (get!14976 lt!1493307))) rBis!167))))

(declare-fun b!4192592 () Bool)

(declare-fun e!2602592 () Bool)

(declare-datatypes ((tuple2!43846 0))(
  ( (tuple2!43847 (_1!25057 List!46172) (_2!25057 List!46172)) )
))
(declare-fun findLongestMatchInner!1611 (Regex!12583 List!46172 Int List!46172 List!46172 Int) tuple2!43846)

(assert (=> b!4192592 (= e!2602592 (matchR!6322 (regex!7678 rBis!167) (_1!25057 (findLongestMatchInner!1611 (regex!7678 rBis!167) Nil!46048 (size!33836 Nil!46048) input!3342 input!3342 (size!33836 input!3342)))))))

(declare-fun b!4192593 () Bool)

(declare-fun res!1720910 () Bool)

(assert (=> b!4192593 (=> (not res!1720910) (not e!2602591))))

(assert (=> b!4192593 (= res!1720910 (= (++!11750 (list!16640 (charsOf!5113 (_1!25055 (get!14976 lt!1493307)))) (_2!25055 (get!14976 lt!1493307))) input!3342))))

(declare-fun b!4192594 () Bool)

(declare-fun e!2602590 () Option!9872)

(declare-fun lt!1493310 () tuple2!43846)

(assert (=> b!4192594 (= e!2602590 (Some!9871 (tuple2!43843 (Token!14071 (apply!10643 (transformation!7678 rBis!167) (seqFromList!5703 (_1!25057 lt!1493310))) rBis!167 (size!33837 (seqFromList!5703 (_1!25057 lt!1493310))) (_1!25057 lt!1493310)) (_2!25057 lt!1493310))))))

(declare-fun lt!1493309 () Unit!65125)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1584 (Regex!12583 List!46172) Unit!65125)

(assert (=> b!4192594 (= lt!1493309 (longestMatchIsAcceptedByMatchOrIsEmpty!1584 (regex!7678 rBis!167) input!3342))))

(declare-fun res!1720906 () Bool)

(assert (=> b!4192594 (= res!1720906 (isEmpty!27267 (_1!25057 (findLongestMatchInner!1611 (regex!7678 rBis!167) Nil!46048 (size!33836 Nil!46048) input!3342 input!3342 (size!33836 input!3342)))))))

(assert (=> b!4192594 (=> res!1720906 e!2602592)))

(assert (=> b!4192594 e!2602592))

(declare-fun lt!1493308 () Unit!65125)

(assert (=> b!4192594 (= lt!1493308 lt!1493309)))

(declare-fun lt!1493306 () Unit!65125)

(assert (=> b!4192594 (= lt!1493306 (lemmaSemiInverse!2444 (transformation!7678 rBis!167) (seqFromList!5703 (_1!25057 lt!1493310))))))

(declare-fun b!4192595 () Bool)

(assert (=> b!4192595 (= e!2602591 (= (size!33835 (_1!25055 (get!14976 lt!1493307))) (size!33836 (originalCharacters!8066 (_1!25055 (get!14976 lt!1493307))))))))

(declare-fun b!4192596 () Bool)

(declare-fun res!1720909 () Bool)

(assert (=> b!4192596 (=> (not res!1720909) (not e!2602591))))

(assert (=> b!4192596 (= res!1720909 (= (value!239355 (_1!25055 (get!14976 lt!1493307))) (apply!10643 (transformation!7678 (rule!10764 (_1!25055 (get!14976 lt!1493307)))) (seqFromList!5703 (originalCharacters!8066 (_1!25055 (get!14976 lt!1493307)))))))))

(declare-fun d!1236488 () Bool)

(declare-fun e!2602589 () Bool)

(assert (=> d!1236488 e!2602589))

(declare-fun res!1720911 () Bool)

(assert (=> d!1236488 (=> res!1720911 e!2602589)))

(assert (=> d!1236488 (= res!1720911 (isEmpty!27265 lt!1493307))))

(assert (=> d!1236488 (= lt!1493307 e!2602590)))

(declare-fun c!715273 () Bool)

(assert (=> d!1236488 (= c!715273 (isEmpty!27267 (_1!25057 lt!1493310)))))

(declare-fun findLongestMatch!1524 (Regex!12583 List!46172) tuple2!43846)

(assert (=> d!1236488 (= lt!1493310 (findLongestMatch!1524 (regex!7678 rBis!167) input!3342))))

(assert (=> d!1236488 (ruleValid!3396 thiss!25986 rBis!167)))

(assert (=> d!1236488 (= (maxPrefixOneRule!3280 thiss!25986 rBis!167 input!3342) lt!1493307)))

(declare-fun b!4192597 () Bool)

(declare-fun res!1720905 () Bool)

(assert (=> b!4192597 (=> (not res!1720905) (not e!2602591))))

(assert (=> b!4192597 (= res!1720905 (< (size!33836 (_2!25055 (get!14976 lt!1493307))) (size!33836 input!3342)))))

(declare-fun b!4192598 () Bool)

(assert (=> b!4192598 (= e!2602590 None!9871)))

(declare-fun b!4192599 () Bool)

(assert (=> b!4192599 (= e!2602589 e!2602591)))

(declare-fun res!1720907 () Bool)

(assert (=> b!4192599 (=> (not res!1720907) (not e!2602591))))

(assert (=> b!4192599 (= res!1720907 (matchR!6322 (regex!7678 rBis!167) (list!16640 (charsOf!5113 (_1!25055 (get!14976 lt!1493307))))))))

(assert (= (and d!1236488 c!715273) b!4192598))

(assert (= (and d!1236488 (not c!715273)) b!4192594))

(assert (= (and b!4192594 (not res!1720906)) b!4192592))

(assert (= (and d!1236488 (not res!1720911)) b!4192599))

(assert (= (and b!4192599 res!1720907) b!4192593))

(assert (= (and b!4192593 res!1720910) b!4192597))

(assert (= (and b!4192597 res!1720905) b!4192591))

(assert (= (and b!4192591 res!1720908) b!4192596))

(assert (= (and b!4192596 res!1720909) b!4192595))

(declare-fun m!4781271 () Bool)

(assert (=> b!4192596 m!4781271))

(declare-fun m!4781273 () Bool)

(assert (=> b!4192596 m!4781273))

(assert (=> b!4192596 m!4781273))

(declare-fun m!4781275 () Bool)

(assert (=> b!4192596 m!4781275))

(assert (=> b!4192595 m!4781271))

(declare-fun m!4781277 () Bool)

(assert (=> b!4192595 m!4781277))

(assert (=> b!4192597 m!4781271))

(declare-fun m!4781279 () Bool)

(assert (=> b!4192597 m!4781279))

(assert (=> b!4192597 m!4781011))

(declare-fun m!4781281 () Bool)

(assert (=> d!1236488 m!4781281))

(declare-fun m!4781283 () Bool)

(assert (=> d!1236488 m!4781283))

(declare-fun m!4781285 () Bool)

(assert (=> d!1236488 m!4781285))

(assert (=> d!1236488 m!4780973))

(assert (=> b!4192593 m!4781271))

(declare-fun m!4781287 () Bool)

(assert (=> b!4192593 m!4781287))

(assert (=> b!4192593 m!4781287))

(declare-fun m!4781289 () Bool)

(assert (=> b!4192593 m!4781289))

(assert (=> b!4192593 m!4781289))

(declare-fun m!4781291 () Bool)

(assert (=> b!4192593 m!4781291))

(declare-fun m!4781293 () Bool)

(assert (=> b!4192594 m!4781293))

(declare-fun m!4781295 () Bool)

(assert (=> b!4192594 m!4781295))

(assert (=> b!4192594 m!4781293))

(declare-fun m!4781297 () Bool)

(assert (=> b!4192594 m!4781297))

(assert (=> b!4192594 m!4781293))

(assert (=> b!4192594 m!4781011))

(declare-fun m!4781299 () Bool)

(assert (=> b!4192594 m!4781299))

(declare-fun m!4781301 () Bool)

(assert (=> b!4192594 m!4781301))

(declare-fun m!4781303 () Bool)

(assert (=> b!4192594 m!4781303))

(assert (=> b!4192594 m!4781011))

(declare-fun m!4781305 () Bool)

(assert (=> b!4192594 m!4781305))

(assert (=> b!4192594 m!4781293))

(declare-fun m!4781307 () Bool)

(assert (=> b!4192594 m!4781307))

(assert (=> b!4192594 m!4781303))

(assert (=> b!4192599 m!4781271))

(assert (=> b!4192599 m!4781287))

(assert (=> b!4192599 m!4781287))

(assert (=> b!4192599 m!4781289))

(assert (=> b!4192599 m!4781289))

(declare-fun m!4781309 () Bool)

(assert (=> b!4192599 m!4781309))

(assert (=> b!4192591 m!4781271))

(assert (=> b!4192592 m!4781303))

(assert (=> b!4192592 m!4781011))

(assert (=> b!4192592 m!4781303))

(assert (=> b!4192592 m!4781011))

(assert (=> b!4192592 m!4781305))

(declare-fun m!4781311 () Bool)

(assert (=> b!4192592 m!4781311))

(assert (=> b!4192297 d!1236488))

(declare-fun d!1236490 () Bool)

(assert (=> d!1236490 (<= (size!33836 pBis!107) (size!33836 input!3342))))

(declare-fun lt!1493313 () Unit!65125)

(declare-fun choose!25690 (List!46172 List!46172) Unit!65125)

(assert (=> d!1236490 (= lt!1493313 (choose!25690 pBis!107 input!3342))))

(assert (=> d!1236490 (isPrefix!4535 pBis!107 input!3342)))

(assert (=> d!1236490 (= (lemmaIsPrefixThenSmallerEqSize!565 pBis!107 input!3342) lt!1493313)))

(declare-fun bs!596655 () Bool)

(assert (= bs!596655 d!1236490))

(assert (=> bs!596655 m!4780943))

(assert (=> bs!596655 m!4781011))

(declare-fun m!4781313 () Bool)

(assert (=> bs!596655 m!4781313))

(assert (=> bs!596655 m!4780987))

(assert (=> b!4192297 d!1236490))

(declare-fun d!1236492 () Bool)

(declare-fun lt!1493314 () Int)

(assert (=> d!1236492 (>= lt!1493314 0)))

(declare-fun e!2602593 () Int)

(assert (=> d!1236492 (= lt!1493314 e!2602593)))

(declare-fun c!715274 () Bool)

(assert (=> d!1236492 (= c!715274 ((_ is Nil!46048) input!3342))))

(assert (=> d!1236492 (= (size!33836 input!3342) lt!1493314)))

(declare-fun b!4192600 () Bool)

(assert (=> b!4192600 (= e!2602593 0)))

(declare-fun b!4192601 () Bool)

(assert (=> b!4192601 (= e!2602593 (+ 1 (size!33836 (t!346055 input!3342))))))

(assert (= (and d!1236492 c!715274) b!4192600))

(assert (= (and d!1236492 (not c!715274)) b!4192601))

(declare-fun m!4781315 () Bool)

(assert (=> b!4192601 m!4781315))

(assert (=> b!4192297 d!1236492))

(declare-fun b!4192605 () Bool)

(declare-fun e!2602595 () Bool)

(assert (=> b!4192605 (= e!2602595 (>= (size!33836 input!3342) (size!33836 pBis!107)))))

(declare-fun b!4192602 () Bool)

(declare-fun e!2602594 () Bool)

(declare-fun e!2602596 () Bool)

(assert (=> b!4192602 (= e!2602594 e!2602596)))

(declare-fun res!1720913 () Bool)

(assert (=> b!4192602 (=> (not res!1720913) (not e!2602596))))

(assert (=> b!4192602 (= res!1720913 (not ((_ is Nil!46048) input!3342)))))

(declare-fun b!4192604 () Bool)

(assert (=> b!4192604 (= e!2602596 (isPrefix!4535 (tail!6745 pBis!107) (tail!6745 input!3342)))))

(declare-fun d!1236494 () Bool)

(assert (=> d!1236494 e!2602595))

(declare-fun res!1720912 () Bool)

(assert (=> d!1236494 (=> res!1720912 e!2602595)))

(declare-fun lt!1493315 () Bool)

(assert (=> d!1236494 (= res!1720912 (not lt!1493315))))

(assert (=> d!1236494 (= lt!1493315 e!2602594)))

(declare-fun res!1720915 () Bool)

(assert (=> d!1236494 (=> res!1720915 e!2602594)))

(assert (=> d!1236494 (= res!1720915 ((_ is Nil!46048) pBis!107))))

(assert (=> d!1236494 (= (isPrefix!4535 pBis!107 input!3342) lt!1493315)))

(declare-fun b!4192603 () Bool)

(declare-fun res!1720914 () Bool)

(assert (=> b!4192603 (=> (not res!1720914) (not e!2602596))))

(assert (=> b!4192603 (= res!1720914 (= (head!8898 pBis!107) (head!8898 input!3342)))))

(assert (= (and d!1236494 (not res!1720915)) b!4192602))

(assert (= (and b!4192602 res!1720913) b!4192603))

(assert (= (and b!4192603 res!1720914) b!4192604))

(assert (= (and d!1236494 (not res!1720912)) b!4192605))

(assert (=> b!4192605 m!4781011))

(assert (=> b!4192605 m!4780943))

(declare-fun m!4781317 () Bool)

(assert (=> b!4192604 m!4781317))

(declare-fun m!4781319 () Bool)

(assert (=> b!4192604 m!4781319))

(assert (=> b!4192604 m!4781317))

(assert (=> b!4192604 m!4781319))

(declare-fun m!4781321 () Bool)

(assert (=> b!4192604 m!4781321))

(declare-fun m!4781323 () Bool)

(assert (=> b!4192603 m!4781323))

(declare-fun m!4781325 () Bool)

(assert (=> b!4192603 m!4781325))

(assert (=> b!4192296 d!1236494))

(declare-fun d!1236496 () Bool)

(assert (=> d!1236496 (= (inv!60595 (tag!8542 (h!51469 rules!3843))) (= (mod (str.len (value!239354 (tag!8542 (h!51469 rules!3843)))) 2) 0))))

(assert (=> b!4192277 d!1236496))

(declare-fun d!1236498 () Bool)

(declare-fun res!1720916 () Bool)

(declare-fun e!2602597 () Bool)

(assert (=> d!1236498 (=> (not res!1720916) (not e!2602597))))

(assert (=> d!1236498 (= res!1720916 (semiInverseModEq!3330 (toChars!10233 (transformation!7678 (h!51469 rules!3843))) (toValue!10374 (transformation!7678 (h!51469 rules!3843)))))))

(assert (=> d!1236498 (= (inv!60597 (transformation!7678 (h!51469 rules!3843))) e!2602597)))

(declare-fun b!4192606 () Bool)

(assert (=> b!4192606 (= e!2602597 (equivClasses!3229 (toChars!10233 (transformation!7678 (h!51469 rules!3843))) (toValue!10374 (transformation!7678 (h!51469 rules!3843)))))))

(assert (= (and d!1236498 res!1720916) b!4192606))

(declare-fun m!4781327 () Bool)

(assert (=> d!1236498 m!4781327))

(declare-fun m!4781329 () Bool)

(assert (=> b!4192606 m!4781329))

(assert (=> b!4192277 d!1236498))

(declare-fun d!1236500 () Bool)

(declare-fun lt!1493316 () Int)

(assert (=> d!1236500 (>= lt!1493316 0)))

(declare-fun e!2602598 () Int)

(assert (=> d!1236500 (= lt!1493316 e!2602598)))

(declare-fun c!715275 () Bool)

(assert (=> d!1236500 (= c!715275 ((_ is Nil!46048) pBis!107))))

(assert (=> d!1236500 (= (size!33836 pBis!107) lt!1493316)))

(declare-fun b!4192607 () Bool)

(assert (=> b!4192607 (= e!2602598 0)))

(declare-fun b!4192608 () Bool)

(assert (=> b!4192608 (= e!2602598 (+ 1 (size!33836 (t!346055 pBis!107))))))

(assert (= (and d!1236500 c!715275) b!4192607))

(assert (= (and d!1236500 (not c!715275)) b!4192608))

(declare-fun m!4781331 () Bool)

(assert (=> b!4192608 m!4781331))

(assert (=> b!4192287 d!1236500))

(declare-fun b!4192612 () Bool)

(declare-fun e!2602600 () Bool)

(assert (=> b!4192612 (= e!2602600 (>= (size!33836 input!3342) (size!33836 lt!1493188)))))

(declare-fun b!4192609 () Bool)

(declare-fun e!2602599 () Bool)

(declare-fun e!2602601 () Bool)

(assert (=> b!4192609 (= e!2602599 e!2602601)))

(declare-fun res!1720918 () Bool)

(assert (=> b!4192609 (=> (not res!1720918) (not e!2602601))))

(assert (=> b!4192609 (= res!1720918 (not ((_ is Nil!46048) input!3342)))))

(declare-fun b!4192611 () Bool)

(assert (=> b!4192611 (= e!2602601 (isPrefix!4535 (tail!6745 lt!1493188) (tail!6745 input!3342)))))

(declare-fun d!1236502 () Bool)

(assert (=> d!1236502 e!2602600))

(declare-fun res!1720917 () Bool)

(assert (=> d!1236502 (=> res!1720917 e!2602600)))

(declare-fun lt!1493317 () Bool)

(assert (=> d!1236502 (= res!1720917 (not lt!1493317))))

(assert (=> d!1236502 (= lt!1493317 e!2602599)))

(declare-fun res!1720920 () Bool)

(assert (=> d!1236502 (=> res!1720920 e!2602599)))

(assert (=> d!1236502 (= res!1720920 ((_ is Nil!46048) lt!1493188))))

(assert (=> d!1236502 (= (isPrefix!4535 lt!1493188 input!3342) lt!1493317)))

(declare-fun b!4192610 () Bool)

(declare-fun res!1720919 () Bool)

(assert (=> b!4192610 (=> (not res!1720919) (not e!2602601))))

(assert (=> b!4192610 (= res!1720919 (= (head!8898 lt!1493188) (head!8898 input!3342)))))

(assert (= (and d!1236502 (not res!1720920)) b!4192609))

(assert (= (and b!4192609 res!1720918) b!4192610))

(assert (= (and b!4192610 res!1720919) b!4192611))

(assert (= (and d!1236502 (not res!1720917)) b!4192612))

(assert (=> b!4192612 m!4781011))

(assert (=> b!4192612 m!4780953))

(assert (=> b!4192611 m!4781159))

(assert (=> b!4192611 m!4781319))

(assert (=> b!4192611 m!4781159))

(assert (=> b!4192611 m!4781319))

(declare-fun m!4781333 () Bool)

(assert (=> b!4192611 m!4781333))

(assert (=> b!4192610 m!4781165))

(assert (=> b!4192610 m!4781325))

(assert (=> b!4192278 d!1236502))

(declare-fun d!1236504 () Bool)

(assert (=> d!1236504 (= (inv!60595 (tag!8542 rBis!167)) (= (mod (str.len (value!239354 (tag!8542 rBis!167))) 2) 0))))

(assert (=> b!4192289 d!1236504))

(declare-fun d!1236506 () Bool)

(declare-fun res!1720921 () Bool)

(declare-fun e!2602602 () Bool)

(assert (=> d!1236506 (=> (not res!1720921) (not e!2602602))))

(assert (=> d!1236506 (= res!1720921 (semiInverseModEq!3330 (toChars!10233 (transformation!7678 rBis!167)) (toValue!10374 (transformation!7678 rBis!167))))))

(assert (=> d!1236506 (= (inv!60597 (transformation!7678 rBis!167)) e!2602602)))

(declare-fun b!4192613 () Bool)

(assert (=> b!4192613 (= e!2602602 (equivClasses!3229 (toChars!10233 (transformation!7678 rBis!167)) (toValue!10374 (transformation!7678 rBis!167))))))

(assert (= (and d!1236506 res!1720921) b!4192613))

(declare-fun m!4781335 () Bool)

(assert (=> d!1236506 m!4781335))

(declare-fun m!4781337 () Bool)

(assert (=> b!4192613 m!4781337))

(assert (=> b!4192289 d!1236506))

(declare-fun d!1236508 () Bool)

(declare-fun res!1720922 () Bool)

(declare-fun e!2602603 () Bool)

(assert (=> d!1236508 (=> (not res!1720922) (not e!2602603))))

(assert (=> d!1236508 (= res!1720922 (validRegex!5700 (regex!7678 rBis!167)))))

(assert (=> d!1236508 (= (ruleValid!3396 thiss!25986 rBis!167) e!2602603)))

(declare-fun b!4192614 () Bool)

(declare-fun res!1720923 () Bool)

(assert (=> b!4192614 (=> (not res!1720923) (not e!2602603))))

(assert (=> b!4192614 (= res!1720923 (not (nullable!4421 (regex!7678 rBis!167))))))

(declare-fun b!4192615 () Bool)

(assert (=> b!4192615 (= e!2602603 (not (= (tag!8542 rBis!167) (String!53407 ""))))))

(assert (= (and d!1236508 res!1720922) b!4192614))

(assert (= (and b!4192614 res!1720923) b!4192615))

(declare-fun m!4781339 () Bool)

(assert (=> d!1236508 m!4781339))

(declare-fun m!4781341 () Bool)

(assert (=> b!4192614 m!4781341))

(assert (=> b!4192288 d!1236508))

(declare-fun d!1236510 () Bool)

(assert (=> d!1236510 (= (isEmpty!27264 rules!3843) ((_ is Nil!46049) rules!3843))))

(assert (=> b!4192290 d!1236510))

(declare-fun d!1236512 () Bool)

(declare-fun lt!1493320 () List!46172)

(assert (=> d!1236512 (= (++!11750 p!2959 lt!1493320) input!3342)))

(declare-fun e!2602606 () List!46172)

(assert (=> d!1236512 (= lt!1493320 e!2602606)))

(declare-fun c!715278 () Bool)

(assert (=> d!1236512 (= c!715278 ((_ is Cons!46048) p!2959))))

(assert (=> d!1236512 (>= (size!33836 input!3342) (size!33836 p!2959))))

(assert (=> d!1236512 (= (getSuffix!2828 input!3342 p!2959) lt!1493320)))

(declare-fun b!4192620 () Bool)

(assert (=> b!4192620 (= e!2602606 (getSuffix!2828 (tail!6745 input!3342) (t!346055 p!2959)))))

(declare-fun b!4192621 () Bool)

(assert (=> b!4192621 (= e!2602606 input!3342)))

(assert (= (and d!1236512 c!715278) b!4192620))

(assert (= (and d!1236512 (not c!715278)) b!4192621))

(declare-fun m!4781343 () Bool)

(assert (=> d!1236512 m!4781343))

(assert (=> d!1236512 m!4781011))

(assert (=> d!1236512 m!4780965))

(assert (=> b!4192620 m!4781319))

(assert (=> b!4192620 m!4781319))

(declare-fun m!4781345 () Bool)

(assert (=> b!4192620 m!4781345))

(assert (=> b!4192279 d!1236512))

(declare-fun b!4192625 () Bool)

(declare-fun e!2602608 () Bool)

(assert (=> b!4192625 (= e!2602608 (>= (size!33836 input!3342) (size!33836 input!3342)))))

(declare-fun b!4192622 () Bool)

(declare-fun e!2602607 () Bool)

(declare-fun e!2602609 () Bool)

(assert (=> b!4192622 (= e!2602607 e!2602609)))

(declare-fun res!1720925 () Bool)

(assert (=> b!4192622 (=> (not res!1720925) (not e!2602609))))

(assert (=> b!4192622 (= res!1720925 (not ((_ is Nil!46048) input!3342)))))

(declare-fun b!4192624 () Bool)

(assert (=> b!4192624 (= e!2602609 (isPrefix!4535 (tail!6745 input!3342) (tail!6745 input!3342)))))

(declare-fun d!1236514 () Bool)

(assert (=> d!1236514 e!2602608))

(declare-fun res!1720924 () Bool)

(assert (=> d!1236514 (=> res!1720924 e!2602608)))

(declare-fun lt!1493321 () Bool)

(assert (=> d!1236514 (= res!1720924 (not lt!1493321))))

(assert (=> d!1236514 (= lt!1493321 e!2602607)))

(declare-fun res!1720927 () Bool)

(assert (=> d!1236514 (=> res!1720927 e!2602607)))

(assert (=> d!1236514 (= res!1720927 ((_ is Nil!46048) input!3342))))

(assert (=> d!1236514 (= (isPrefix!4535 input!3342 input!3342) lt!1493321)))

(declare-fun b!4192623 () Bool)

(declare-fun res!1720926 () Bool)

(assert (=> b!4192623 (=> (not res!1720926) (not e!2602609))))

(assert (=> b!4192623 (= res!1720926 (= (head!8898 input!3342) (head!8898 input!3342)))))

(assert (= (and d!1236514 (not res!1720927)) b!4192622))

(assert (= (and b!4192622 res!1720925) b!4192623))

(assert (= (and b!4192623 res!1720926) b!4192624))

(assert (= (and d!1236514 (not res!1720924)) b!4192625))

(assert (=> b!4192625 m!4781011))

(assert (=> b!4192625 m!4781011))

(assert (=> b!4192624 m!4781319))

(assert (=> b!4192624 m!4781319))

(assert (=> b!4192624 m!4781319))

(assert (=> b!4192624 m!4781319))

(declare-fun m!4781347 () Bool)

(assert (=> b!4192624 m!4781347))

(assert (=> b!4192623 m!4781325))

(assert (=> b!4192623 m!4781325))

(assert (=> b!4192279 d!1236514))

(declare-fun d!1236516 () Bool)

(declare-fun fromListB!2613 (List!46172) BalanceConc!27372)

(assert (=> d!1236516 (= (seqFromList!5703 p!2959) (fromListB!2613 p!2959))))

(declare-fun bs!596656 () Bool)

(assert (= bs!596656 d!1236516))

(declare-fun m!4781349 () Bool)

(assert (=> bs!596656 m!4781349))

(assert (=> b!4192279 d!1236516))

(declare-fun d!1236518 () Bool)

(assert (=> d!1236518 (isPrefix!4535 input!3342 input!3342)))

(declare-fun lt!1493324 () Unit!65125)

(declare-fun choose!25691 (List!46172 List!46172) Unit!65125)

(assert (=> d!1236518 (= lt!1493324 (choose!25691 input!3342 input!3342))))

(assert (=> d!1236518 (= (lemmaIsPrefixRefl!2964 input!3342 input!3342) lt!1493324)))

(declare-fun bs!596657 () Bool)

(assert (= bs!596657 d!1236518))

(assert (=> bs!596657 m!4780959))

(declare-fun m!4781351 () Bool)

(assert (=> bs!596657 m!4781351))

(assert (=> b!4192279 d!1236518))

(declare-fun d!1236520 () Bool)

(declare-fun dynLambda!19826 (Int BalanceConc!27372) TokenValue!7908)

(assert (=> d!1236520 (= (apply!10643 (transformation!7678 r!4142) lt!1493183) (dynLambda!19826 (toValue!10374 (transformation!7678 r!4142)) lt!1493183))))

(declare-fun b_lambda!123301 () Bool)

(assert (=> (not b_lambda!123301) (not d!1236520)))

(declare-fun t!346076 () Bool)

(declare-fun tb!251117 () Bool)

(assert (=> (and b!4192276 (= (toValue!10374 (transformation!7678 r!4142)) (toValue!10374 (transformation!7678 r!4142))) t!346076) tb!251117))

(declare-fun result!306068 () Bool)

(declare-fun inv!21 (TokenValue!7908) Bool)

(assert (=> tb!251117 (= result!306068 (inv!21 (dynLambda!19826 (toValue!10374 (transformation!7678 r!4142)) lt!1493183)))))

(declare-fun m!4781353 () Bool)

(assert (=> tb!251117 m!4781353))

(assert (=> d!1236520 t!346076))

(declare-fun b_and!328559 () Bool)

(assert (= b_and!328529 (and (=> t!346076 result!306068) b_and!328559)))

(declare-fun tb!251119 () Bool)

(declare-fun t!346078 () Bool)

(assert (=> (and b!4192294 (= (toValue!10374 (transformation!7678 (h!51469 rules!3843))) (toValue!10374 (transformation!7678 r!4142))) t!346078) tb!251119))

(declare-fun result!306072 () Bool)

(assert (= result!306072 result!306068))

(assert (=> d!1236520 t!346078))

(declare-fun b_and!328561 () Bool)

(assert (= b_and!328533 (and (=> t!346078 result!306072) b_and!328561)))

(declare-fun tb!251121 () Bool)

(declare-fun t!346080 () Bool)

(assert (=> (and b!4192272 (= (toValue!10374 (transformation!7678 rBis!167)) (toValue!10374 (transformation!7678 r!4142))) t!346080) tb!251121))

(declare-fun result!306074 () Bool)

(assert (= result!306074 result!306068))

(assert (=> d!1236520 t!346080))

(declare-fun b_and!328563 () Bool)

(assert (= b_and!328537 (and (=> t!346080 result!306074) b_and!328563)))

(declare-fun m!4781355 () Bool)

(assert (=> d!1236520 m!4781355))

(assert (=> b!4192279 d!1236520))

(declare-fun b!4192746 () Bool)

(declare-fun e!2602679 () Bool)

(assert (=> b!4192746 (= e!2602679 true)))

(declare-fun d!1236522 () Bool)

(assert (=> d!1236522 e!2602679))

(assert (= d!1236522 b!4192746))

(declare-fun order!24375 () Int)

(declare-fun lambda!129493 () Int)

(declare-fun order!24373 () Int)

(declare-fun dynLambda!19827 (Int Int) Int)

(declare-fun dynLambda!19828 (Int Int) Int)

(assert (=> b!4192746 (< (dynLambda!19827 order!24373 (toValue!10374 (transformation!7678 r!4142))) (dynLambda!19828 order!24375 lambda!129493))))

(declare-fun order!24377 () Int)

(declare-fun dynLambda!19829 (Int Int) Int)

(assert (=> b!4192746 (< (dynLambda!19829 order!24377 (toChars!10233 (transformation!7678 r!4142))) (dynLambda!19828 order!24375 lambda!129493))))

(assert (=> d!1236522 (= (list!16640 (dynLambda!19825 (toChars!10233 (transformation!7678 r!4142)) (dynLambda!19826 (toValue!10374 (transformation!7678 r!4142)) lt!1493183))) (list!16640 lt!1493183))))

(declare-fun lt!1493349 () Unit!65125)

(declare-fun ForallOf!1064 (Int BalanceConc!27372) Unit!65125)

(assert (=> d!1236522 (= lt!1493349 (ForallOf!1064 lambda!129493 lt!1493183))))

(assert (=> d!1236522 (= (lemmaSemiInverse!2444 (transformation!7678 r!4142) lt!1493183) lt!1493349)))

(declare-fun b_lambda!123313 () Bool)

(assert (=> (not b_lambda!123313) (not d!1236522)))

(declare-fun t!346095 () Bool)

(declare-fun tb!251135 () Bool)

(assert (=> (and b!4192276 (= (toChars!10233 (transformation!7678 r!4142)) (toChars!10233 (transformation!7678 r!4142))) t!346095) tb!251135))

(declare-fun b!4192747 () Bool)

(declare-fun e!2602680 () Bool)

(declare-fun tp!1281004 () Bool)

(assert (=> b!4192747 (= e!2602680 (and (inv!60600 (c!715228 (dynLambda!19825 (toChars!10233 (transformation!7678 r!4142)) (dynLambda!19826 (toValue!10374 (transformation!7678 r!4142)) lt!1493183)))) tp!1281004))))

(declare-fun result!306094 () Bool)

(assert (=> tb!251135 (= result!306094 (and (inv!60601 (dynLambda!19825 (toChars!10233 (transformation!7678 r!4142)) (dynLambda!19826 (toValue!10374 (transformation!7678 r!4142)) lt!1493183))) e!2602680))))

(assert (= tb!251135 b!4192747))

(declare-fun m!4781461 () Bool)

(assert (=> b!4192747 m!4781461))

(declare-fun m!4781463 () Bool)

(assert (=> tb!251135 m!4781463))

(assert (=> d!1236522 t!346095))

(declare-fun b_and!328581 () Bool)

(assert (= b_and!328553 (and (=> t!346095 result!306094) b_and!328581)))

(declare-fun tb!251137 () Bool)

(declare-fun t!346097 () Bool)

(assert (=> (and b!4192294 (= (toChars!10233 (transformation!7678 (h!51469 rules!3843))) (toChars!10233 (transformation!7678 r!4142))) t!346097) tb!251137))

(declare-fun result!306096 () Bool)

(assert (= result!306096 result!306094))

(assert (=> d!1236522 t!346097))

(declare-fun b_and!328583 () Bool)

(assert (= b_and!328555 (and (=> t!346097 result!306096) b_and!328583)))

(declare-fun tb!251139 () Bool)

(declare-fun t!346099 () Bool)

(assert (=> (and b!4192272 (= (toChars!10233 (transformation!7678 rBis!167)) (toChars!10233 (transformation!7678 r!4142))) t!346099) tb!251139))

(declare-fun result!306098 () Bool)

(assert (= result!306098 result!306094))

(assert (=> d!1236522 t!346099))

(declare-fun b_and!328585 () Bool)

(assert (= b_and!328557 (and (=> t!346099 result!306098) b_and!328585)))

(declare-fun b_lambda!123315 () Bool)

(assert (=> (not b_lambda!123315) (not d!1236522)))

(assert (=> d!1236522 t!346076))

(declare-fun b_and!328587 () Bool)

(assert (= b_and!328559 (and (=> t!346076 result!306068) b_and!328587)))

(assert (=> d!1236522 t!346078))

(declare-fun b_and!328589 () Bool)

(assert (= b_and!328561 (and (=> t!346078 result!306072) b_and!328589)))

(assert (=> d!1236522 t!346080))

(declare-fun b_and!328591 () Bool)

(assert (= b_and!328563 (and (=> t!346080 result!306074) b_and!328591)))

(declare-fun m!4781465 () Bool)

(assert (=> d!1236522 m!4781465))

(declare-fun m!4781467 () Bool)

(assert (=> d!1236522 m!4781467))

(declare-fun m!4781469 () Bool)

(assert (=> d!1236522 m!4781469))

(assert (=> d!1236522 m!4781355))

(assert (=> d!1236522 m!4781355))

(assert (=> d!1236522 m!4781467))

(declare-fun m!4781471 () Bool)

(assert (=> d!1236522 m!4781471))

(assert (=> b!4192279 d!1236522))

(declare-fun b!4192748 () Bool)

(declare-fun res!1720975 () Bool)

(declare-fun e!2602683 () Bool)

(assert (=> b!4192748 (=> (not res!1720975) (not e!2602683))))

(declare-fun lt!1493351 () Option!9872)

(assert (=> b!4192748 (= res!1720975 (= (rule!10764 (_1!25055 (get!14976 lt!1493351))) r!4142))))

(declare-fun b!4192749 () Bool)

(declare-fun e!2602684 () Bool)

(assert (=> b!4192749 (= e!2602684 (matchR!6322 (regex!7678 r!4142) (_1!25057 (findLongestMatchInner!1611 (regex!7678 r!4142) Nil!46048 (size!33836 Nil!46048) input!3342 input!3342 (size!33836 input!3342)))))))

(declare-fun b!4192750 () Bool)

(declare-fun res!1720977 () Bool)

(assert (=> b!4192750 (=> (not res!1720977) (not e!2602683))))

(assert (=> b!4192750 (= res!1720977 (= (++!11750 (list!16640 (charsOf!5113 (_1!25055 (get!14976 lt!1493351)))) (_2!25055 (get!14976 lt!1493351))) input!3342))))

(declare-fun b!4192751 () Bool)

(declare-fun e!2602682 () Option!9872)

(declare-fun lt!1493354 () tuple2!43846)

(assert (=> b!4192751 (= e!2602682 (Some!9871 (tuple2!43843 (Token!14071 (apply!10643 (transformation!7678 r!4142) (seqFromList!5703 (_1!25057 lt!1493354))) r!4142 (size!33837 (seqFromList!5703 (_1!25057 lt!1493354))) (_1!25057 lt!1493354)) (_2!25057 lt!1493354))))))

(declare-fun lt!1493353 () Unit!65125)

(assert (=> b!4192751 (= lt!1493353 (longestMatchIsAcceptedByMatchOrIsEmpty!1584 (regex!7678 r!4142) input!3342))))

(declare-fun res!1720973 () Bool)

(assert (=> b!4192751 (= res!1720973 (isEmpty!27267 (_1!25057 (findLongestMatchInner!1611 (regex!7678 r!4142) Nil!46048 (size!33836 Nil!46048) input!3342 input!3342 (size!33836 input!3342)))))))

(assert (=> b!4192751 (=> res!1720973 e!2602684)))

(assert (=> b!4192751 e!2602684))

(declare-fun lt!1493352 () Unit!65125)

(assert (=> b!4192751 (= lt!1493352 lt!1493353)))

(declare-fun lt!1493350 () Unit!65125)

(assert (=> b!4192751 (= lt!1493350 (lemmaSemiInverse!2444 (transformation!7678 r!4142) (seqFromList!5703 (_1!25057 lt!1493354))))))

(declare-fun b!4192752 () Bool)

(assert (=> b!4192752 (= e!2602683 (= (size!33835 (_1!25055 (get!14976 lt!1493351))) (size!33836 (originalCharacters!8066 (_1!25055 (get!14976 lt!1493351))))))))

(declare-fun b!4192753 () Bool)

(declare-fun res!1720976 () Bool)

(assert (=> b!4192753 (=> (not res!1720976) (not e!2602683))))

(assert (=> b!4192753 (= res!1720976 (= (value!239355 (_1!25055 (get!14976 lt!1493351))) (apply!10643 (transformation!7678 (rule!10764 (_1!25055 (get!14976 lt!1493351)))) (seqFromList!5703 (originalCharacters!8066 (_1!25055 (get!14976 lt!1493351)))))))))

(declare-fun d!1236560 () Bool)

(declare-fun e!2602681 () Bool)

(assert (=> d!1236560 e!2602681))

(declare-fun res!1720978 () Bool)

(assert (=> d!1236560 (=> res!1720978 e!2602681)))

(assert (=> d!1236560 (= res!1720978 (isEmpty!27265 lt!1493351))))

(assert (=> d!1236560 (= lt!1493351 e!2602682)))

(declare-fun c!715292 () Bool)

(assert (=> d!1236560 (= c!715292 (isEmpty!27267 (_1!25057 lt!1493354)))))

(assert (=> d!1236560 (= lt!1493354 (findLongestMatch!1524 (regex!7678 r!4142) input!3342))))

(assert (=> d!1236560 (ruleValid!3396 thiss!25986 r!4142)))

(assert (=> d!1236560 (= (maxPrefixOneRule!3280 thiss!25986 r!4142 input!3342) lt!1493351)))

(declare-fun b!4192754 () Bool)

(declare-fun res!1720972 () Bool)

(assert (=> b!4192754 (=> (not res!1720972) (not e!2602683))))

(assert (=> b!4192754 (= res!1720972 (< (size!33836 (_2!25055 (get!14976 lt!1493351))) (size!33836 input!3342)))))

(declare-fun b!4192755 () Bool)

(assert (=> b!4192755 (= e!2602682 None!9871)))

(declare-fun b!4192756 () Bool)

(assert (=> b!4192756 (= e!2602681 e!2602683)))

(declare-fun res!1720974 () Bool)

(assert (=> b!4192756 (=> (not res!1720974) (not e!2602683))))

(assert (=> b!4192756 (= res!1720974 (matchR!6322 (regex!7678 r!4142) (list!16640 (charsOf!5113 (_1!25055 (get!14976 lt!1493351))))))))

(assert (= (and d!1236560 c!715292) b!4192755))

(assert (= (and d!1236560 (not c!715292)) b!4192751))

(assert (= (and b!4192751 (not res!1720973)) b!4192749))

(assert (= (and d!1236560 (not res!1720978)) b!4192756))

(assert (= (and b!4192756 res!1720974) b!4192750))

(assert (= (and b!4192750 res!1720977) b!4192754))

(assert (= (and b!4192754 res!1720972) b!4192748))

(assert (= (and b!4192748 res!1720975) b!4192753))

(assert (= (and b!4192753 res!1720976) b!4192752))

(declare-fun m!4781473 () Bool)

(assert (=> b!4192753 m!4781473))

(declare-fun m!4781475 () Bool)

(assert (=> b!4192753 m!4781475))

(assert (=> b!4192753 m!4781475))

(declare-fun m!4781477 () Bool)

(assert (=> b!4192753 m!4781477))

(assert (=> b!4192752 m!4781473))

(declare-fun m!4781479 () Bool)

(assert (=> b!4192752 m!4781479))

(assert (=> b!4192754 m!4781473))

(declare-fun m!4781481 () Bool)

(assert (=> b!4192754 m!4781481))

(assert (=> b!4192754 m!4781011))

(declare-fun m!4781483 () Bool)

(assert (=> d!1236560 m!4781483))

(declare-fun m!4781485 () Bool)

(assert (=> d!1236560 m!4781485))

(declare-fun m!4781487 () Bool)

(assert (=> d!1236560 m!4781487))

(assert (=> d!1236560 m!4780939))

(assert (=> b!4192750 m!4781473))

(declare-fun m!4781489 () Bool)

(assert (=> b!4192750 m!4781489))

(assert (=> b!4192750 m!4781489))

(declare-fun m!4781491 () Bool)

(assert (=> b!4192750 m!4781491))

(assert (=> b!4192750 m!4781491))

(declare-fun m!4781493 () Bool)

(assert (=> b!4192750 m!4781493))

(declare-fun m!4781495 () Bool)

(assert (=> b!4192751 m!4781495))

(declare-fun m!4781497 () Bool)

(assert (=> b!4192751 m!4781497))

(assert (=> b!4192751 m!4781495))

(declare-fun m!4781499 () Bool)

(assert (=> b!4192751 m!4781499))

(assert (=> b!4192751 m!4781495))

(assert (=> b!4192751 m!4781011))

(declare-fun m!4781501 () Bool)

(assert (=> b!4192751 m!4781501))

(declare-fun m!4781503 () Bool)

(assert (=> b!4192751 m!4781503))

(assert (=> b!4192751 m!4781303))

(assert (=> b!4192751 m!4781011))

(declare-fun m!4781505 () Bool)

(assert (=> b!4192751 m!4781505))

(assert (=> b!4192751 m!4781495))

(declare-fun m!4781507 () Bool)

(assert (=> b!4192751 m!4781507))

(assert (=> b!4192751 m!4781303))

(assert (=> b!4192756 m!4781473))

(assert (=> b!4192756 m!4781489))

(assert (=> b!4192756 m!4781489))

(assert (=> b!4192756 m!4781491))

(assert (=> b!4192756 m!4781491))

(declare-fun m!4781509 () Bool)

(assert (=> b!4192756 m!4781509))

(assert (=> b!4192748 m!4781473))

(assert (=> b!4192749 m!4781303))

(assert (=> b!4192749 m!4781011))

(assert (=> b!4192749 m!4781303))

(assert (=> b!4192749 m!4781011))

(assert (=> b!4192749 m!4781505))

(declare-fun m!4781511 () Bool)

(assert (=> b!4192749 m!4781511))

(assert (=> b!4192279 d!1236560))

(declare-fun d!1236562 () Bool)

(declare-fun lt!1493355 () Int)

(assert (=> d!1236562 (>= lt!1493355 0)))

(declare-fun e!2602685 () Int)

(assert (=> d!1236562 (= lt!1493355 e!2602685)))

(declare-fun c!715293 () Bool)

(assert (=> d!1236562 (= c!715293 ((_ is Nil!46048) p!2959))))

(assert (=> d!1236562 (= (size!33836 p!2959) lt!1493355)))

(declare-fun b!4192757 () Bool)

(assert (=> b!4192757 (= e!2602685 0)))

(declare-fun b!4192758 () Bool)

(assert (=> b!4192758 (= e!2602685 (+ 1 (size!33836 (t!346055 p!2959))))))

(assert (= (and d!1236562 c!715293) b!4192757))

(assert (= (and d!1236562 (not c!715293)) b!4192758))

(declare-fun m!4781513 () Bool)

(assert (=> b!4192758 m!4781513))

(assert (=> b!4192279 d!1236562))

(declare-fun call!292236 () Bool)

(declare-fun bm!292231 () Bool)

(declare-fun c!715299 () Bool)

(declare-fun c!715298 () Bool)

(assert (=> bm!292231 (= call!292236 (validRegex!5700 (ite c!715299 (reg!12912 (regex!7678 r!4142)) (ite c!715298 (regTwo!25679 (regex!7678 r!4142)) (regTwo!25678 (regex!7678 r!4142))))))))

(declare-fun b!4192777 () Bool)

(declare-fun e!2602705 () Bool)

(declare-fun e!2602702 () Bool)

(assert (=> b!4192777 (= e!2602705 e!2602702)))

(assert (=> b!4192777 (= c!715298 ((_ is Union!12583) (regex!7678 r!4142)))))

(declare-fun b!4192778 () Bool)

(declare-fun res!1720990 () Bool)

(declare-fun e!2602704 () Bool)

(assert (=> b!4192778 (=> (not res!1720990) (not e!2602704))))

(declare-fun call!292238 () Bool)

(assert (=> b!4192778 (= res!1720990 call!292238)))

(assert (=> b!4192778 (= e!2602702 e!2602704)))

(declare-fun d!1236564 () Bool)

(declare-fun res!1720989 () Bool)

(declare-fun e!2602703 () Bool)

(assert (=> d!1236564 (=> res!1720989 e!2602703)))

(assert (=> d!1236564 (= res!1720989 ((_ is ElementMatch!12583) (regex!7678 r!4142)))))

(assert (=> d!1236564 (= (validRegex!5700 (regex!7678 r!4142)) e!2602703)))

(declare-fun b!4192779 () Bool)

(declare-fun res!1720993 () Bool)

(declare-fun e!2602700 () Bool)

(assert (=> b!4192779 (=> res!1720993 e!2602700)))

(assert (=> b!4192779 (= res!1720993 (not ((_ is Concat!20492) (regex!7678 r!4142))))))

(assert (=> b!4192779 (= e!2602702 e!2602700)))

(declare-fun bm!292232 () Bool)

(declare-fun call!292237 () Bool)

(assert (=> bm!292232 (= call!292237 call!292236)))

(declare-fun b!4192780 () Bool)

(declare-fun e!2602706 () Bool)

(assert (=> b!4192780 (= e!2602705 e!2602706)))

(declare-fun res!1720992 () Bool)

(assert (=> b!4192780 (= res!1720992 (not (nullable!4421 (reg!12912 (regex!7678 r!4142)))))))

(assert (=> b!4192780 (=> (not res!1720992) (not e!2602706))))

(declare-fun b!4192781 () Bool)

(assert (=> b!4192781 (= e!2602703 e!2602705)))

(assert (=> b!4192781 (= c!715299 ((_ is Star!12583) (regex!7678 r!4142)))))

(declare-fun b!4192782 () Bool)

(assert (=> b!4192782 (= e!2602706 call!292236)))

(declare-fun b!4192783 () Bool)

(declare-fun e!2602701 () Bool)

(assert (=> b!4192783 (= e!2602700 e!2602701)))

(declare-fun res!1720991 () Bool)

(assert (=> b!4192783 (=> (not res!1720991) (not e!2602701))))

(assert (=> b!4192783 (= res!1720991 call!292238)))

(declare-fun b!4192784 () Bool)

(assert (=> b!4192784 (= e!2602704 call!292237)))

(declare-fun b!4192785 () Bool)

(assert (=> b!4192785 (= e!2602701 call!292237)))

(declare-fun bm!292233 () Bool)

(assert (=> bm!292233 (= call!292238 (validRegex!5700 (ite c!715298 (regOne!25679 (regex!7678 r!4142)) (regOne!25678 (regex!7678 r!4142)))))))

(assert (= (and d!1236564 (not res!1720989)) b!4192781))

(assert (= (and b!4192781 c!715299) b!4192780))

(assert (= (and b!4192781 (not c!715299)) b!4192777))

(assert (= (and b!4192780 res!1720992) b!4192782))

(assert (= (and b!4192777 c!715298) b!4192778))

(assert (= (and b!4192777 (not c!715298)) b!4192779))

(assert (= (and b!4192778 res!1720990) b!4192784))

(assert (= (and b!4192779 (not res!1720993)) b!4192783))

(assert (= (and b!4192783 res!1720991) b!4192785))

(assert (= (or b!4192784 b!4192785) bm!292232))

(assert (= (or b!4192778 b!4192783) bm!292233))

(assert (= (or b!4192782 bm!292232) bm!292231))

(declare-fun m!4781515 () Bool)

(assert (=> bm!292231 m!4781515))

(declare-fun m!4781517 () Bool)

(assert (=> b!4192780 m!4781517))

(declare-fun m!4781519 () Bool)

(assert (=> bm!292233 m!4781519))

(assert (=> b!4192281 d!1236564))

(declare-fun b!4192789 () Bool)

(declare-fun e!2602708 () Bool)

(assert (=> b!4192789 (= e!2602708 (>= (size!33836 input!3342) (size!33836 p!2959)))))

(declare-fun b!4192786 () Bool)

(declare-fun e!2602707 () Bool)

(declare-fun e!2602709 () Bool)

(assert (=> b!4192786 (= e!2602707 e!2602709)))

(declare-fun res!1720995 () Bool)

(assert (=> b!4192786 (=> (not res!1720995) (not e!2602709))))

(assert (=> b!4192786 (= res!1720995 (not ((_ is Nil!46048) input!3342)))))

(declare-fun b!4192788 () Bool)

(assert (=> b!4192788 (= e!2602709 (isPrefix!4535 (tail!6745 p!2959) (tail!6745 input!3342)))))

(declare-fun d!1236566 () Bool)

(assert (=> d!1236566 e!2602708))

(declare-fun res!1720994 () Bool)

(assert (=> d!1236566 (=> res!1720994 e!2602708)))

(declare-fun lt!1493356 () Bool)

(assert (=> d!1236566 (= res!1720994 (not lt!1493356))))

(assert (=> d!1236566 (= lt!1493356 e!2602707)))

(declare-fun res!1720997 () Bool)

(assert (=> d!1236566 (=> res!1720997 e!2602707)))

(assert (=> d!1236566 (= res!1720997 ((_ is Nil!46048) p!2959))))

(assert (=> d!1236566 (= (isPrefix!4535 p!2959 input!3342) lt!1493356)))

(declare-fun b!4192787 () Bool)

(declare-fun res!1720996 () Bool)

(assert (=> b!4192787 (=> (not res!1720996) (not e!2602709))))

(assert (=> b!4192787 (= res!1720996 (= (head!8898 p!2959) (head!8898 input!3342)))))

(assert (= (and d!1236566 (not res!1720997)) b!4192786))

(assert (= (and b!4192786 res!1720995) b!4192787))

(assert (= (and b!4192787 res!1720996) b!4192788))

(assert (= (and d!1236566 (not res!1720994)) b!4192789))

(assert (=> b!4192789 m!4781011))

(assert (=> b!4192789 m!4780965))

(assert (=> b!4192788 m!4781215))

(assert (=> b!4192788 m!4781319))

(assert (=> b!4192788 m!4781215))

(assert (=> b!4192788 m!4781319))

(declare-fun m!4781521 () Bool)

(assert (=> b!4192788 m!4781521))

(assert (=> b!4192787 m!4781223))

(assert (=> b!4192787 m!4781325))

(assert (=> b!4192280 d!1236566))

(declare-fun d!1236568 () Bool)

(declare-fun res!1721000 () Bool)

(declare-fun e!2602712 () Bool)

(assert (=> d!1236568 (=> (not res!1721000) (not e!2602712))))

(declare-fun rulesValid!2998 (LexerInterface!7271 List!46173) Bool)

(assert (=> d!1236568 (= res!1721000 (rulesValid!2998 thiss!25986 rules!3843))))

(assert (=> d!1236568 (= (rulesInvariant!6484 thiss!25986 rules!3843) e!2602712)))

(declare-fun b!4192792 () Bool)

(declare-datatypes ((List!46175 0))(
  ( (Nil!46051) (Cons!46051 (h!51471 String!53406) (t!346106 List!46175)) )
))
(declare-fun noDuplicateTag!3159 (LexerInterface!7271 List!46173 List!46175) Bool)

(assert (=> b!4192792 (= e!2602712 (noDuplicateTag!3159 thiss!25986 rules!3843 Nil!46051))))

(assert (= (and d!1236568 res!1721000) b!4192792))

(declare-fun m!4781523 () Bool)

(assert (=> d!1236568 m!4781523))

(declare-fun m!4781525 () Bool)

(assert (=> b!4192792 m!4781525))

(assert (=> b!4192291 d!1236568))

(declare-fun b!4192797 () Bool)

(declare-fun e!2602715 () Bool)

(declare-fun tp!1281007 () Bool)

(assert (=> b!4192797 (= e!2602715 (and tp_is_empty!22129 tp!1281007))))

(assert (=> b!4192298 (= tp!1280952 e!2602715)))

(assert (= (and b!4192298 ((_ is Cons!46048) (t!346055 pBis!107))) b!4192797))

(declare-fun b!4192810 () Bool)

(declare-fun e!2602718 () Bool)

(declare-fun tp!1281019 () Bool)

(assert (=> b!4192810 (= e!2602718 tp!1281019)))

(declare-fun b!4192809 () Bool)

(declare-fun tp!1281018 () Bool)

(declare-fun tp!1281020 () Bool)

(assert (=> b!4192809 (= e!2602718 (and tp!1281018 tp!1281020))))

(declare-fun b!4192811 () Bool)

(declare-fun tp!1281021 () Bool)

(declare-fun tp!1281022 () Bool)

(assert (=> b!4192811 (= e!2602718 (and tp!1281021 tp!1281022))))

(declare-fun b!4192808 () Bool)

(assert (=> b!4192808 (= e!2602718 tp_is_empty!22129)))

(assert (=> b!4192277 (= tp!1280948 e!2602718)))

(assert (= (and b!4192277 ((_ is ElementMatch!12583) (regex!7678 (h!51469 rules!3843)))) b!4192808))

(assert (= (and b!4192277 ((_ is Concat!20492) (regex!7678 (h!51469 rules!3843)))) b!4192809))

(assert (= (and b!4192277 ((_ is Star!12583) (regex!7678 (h!51469 rules!3843)))) b!4192810))

(assert (= (and b!4192277 ((_ is Union!12583) (regex!7678 (h!51469 rules!3843)))) b!4192811))

(declare-fun b!4192814 () Bool)

(declare-fun e!2602719 () Bool)

(declare-fun tp!1281024 () Bool)

(assert (=> b!4192814 (= e!2602719 tp!1281024)))

(declare-fun b!4192813 () Bool)

(declare-fun tp!1281023 () Bool)

(declare-fun tp!1281025 () Bool)

(assert (=> b!4192813 (= e!2602719 (and tp!1281023 tp!1281025))))

(declare-fun b!4192815 () Bool)

(declare-fun tp!1281026 () Bool)

(declare-fun tp!1281027 () Bool)

(assert (=> b!4192815 (= e!2602719 (and tp!1281026 tp!1281027))))

(declare-fun b!4192812 () Bool)

(assert (=> b!4192812 (= e!2602719 tp_is_empty!22129)))

(assert (=> b!4192289 (= tp!1280944 e!2602719)))

(assert (= (and b!4192289 ((_ is ElementMatch!12583) (regex!7678 rBis!167))) b!4192812))

(assert (= (and b!4192289 ((_ is Concat!20492) (regex!7678 rBis!167))) b!4192813))

(assert (= (and b!4192289 ((_ is Star!12583) (regex!7678 rBis!167))) b!4192814))

(assert (= (and b!4192289 ((_ is Union!12583) (regex!7678 rBis!167))) b!4192815))

(declare-fun b!4192826 () Bool)

(declare-fun b_free!122119 () Bool)

(declare-fun b_next!122823 () Bool)

(assert (=> b!4192826 (= b_free!122119 (not b_next!122823))))

(declare-fun tb!251141 () Bool)

(declare-fun t!346101 () Bool)

(assert (=> (and b!4192826 (= (toValue!10374 (transformation!7678 (h!51469 (t!346056 rules!3843)))) (toValue!10374 (transformation!7678 r!4142))) t!346101) tb!251141))

(declare-fun result!306106 () Bool)

(assert (= result!306106 result!306068))

(assert (=> d!1236520 t!346101))

(assert (=> d!1236522 t!346101))

(declare-fun b_and!328593 () Bool)

(declare-fun tp!1281036 () Bool)

(assert (=> b!4192826 (= tp!1281036 (and (=> t!346101 result!306106) b_and!328593))))

(declare-fun b_free!122121 () Bool)

(declare-fun b_next!122825 () Bool)

(assert (=> b!4192826 (= b_free!122121 (not b_next!122825))))

(declare-fun tb!251143 () Bool)

(declare-fun t!346103 () Bool)

(assert (=> (and b!4192826 (= (toChars!10233 (transformation!7678 (h!51469 (t!346056 rules!3843)))) (toChars!10233 (transformation!7678 (rule!10764 (_1!25055 lt!1493185))))) t!346103) tb!251143))

(declare-fun result!306108 () Bool)

(assert (= result!306108 result!306060))

(assert (=> d!1236456 t!346103))

(declare-fun tb!251145 () Bool)

(declare-fun t!346105 () Bool)

(assert (=> (and b!4192826 (= (toChars!10233 (transformation!7678 (h!51469 (t!346056 rules!3843)))) (toChars!10233 (transformation!7678 r!4142))) t!346105) tb!251145))

(declare-fun result!306110 () Bool)

(assert (= result!306110 result!306094))

(assert (=> d!1236522 t!346105))

(declare-fun tp!1281037 () Bool)

(declare-fun b_and!328595 () Bool)

(assert (=> b!4192826 (= tp!1281037 (and (=> t!346103 result!306108) (=> t!346105 result!306110) b_and!328595))))

(declare-fun e!2602728 () Bool)

(assert (=> b!4192826 (= e!2602728 (and tp!1281036 tp!1281037))))

(declare-fun tp!1281039 () Bool)

(declare-fun b!4192825 () Bool)

(declare-fun e!2602730 () Bool)

(assert (=> b!4192825 (= e!2602730 (and tp!1281039 (inv!60595 (tag!8542 (h!51469 (t!346056 rules!3843)))) (inv!60597 (transformation!7678 (h!51469 (t!346056 rules!3843)))) e!2602728))))

(declare-fun b!4192824 () Bool)

(declare-fun e!2602729 () Bool)

(declare-fun tp!1281038 () Bool)

(assert (=> b!4192824 (= e!2602729 (and e!2602730 tp!1281038))))

(assert (=> b!4192285 (= tp!1280942 e!2602729)))

(assert (= b!4192825 b!4192826))

(assert (= b!4192824 b!4192825))

(assert (= (and b!4192285 ((_ is Cons!46049) (t!346056 rules!3843))) b!4192824))

(declare-fun m!4781527 () Bool)

(assert (=> b!4192825 m!4781527))

(declare-fun m!4781529 () Bool)

(assert (=> b!4192825 m!4781529))

(declare-fun b!4192829 () Bool)

(declare-fun e!2602732 () Bool)

(declare-fun tp!1281041 () Bool)

(assert (=> b!4192829 (= e!2602732 tp!1281041)))

(declare-fun b!4192828 () Bool)

(declare-fun tp!1281040 () Bool)

(declare-fun tp!1281042 () Bool)

(assert (=> b!4192828 (= e!2602732 (and tp!1281040 tp!1281042))))

(declare-fun b!4192830 () Bool)

(declare-fun tp!1281043 () Bool)

(declare-fun tp!1281044 () Bool)

(assert (=> b!4192830 (= e!2602732 (and tp!1281043 tp!1281044))))

(declare-fun b!4192827 () Bool)

(assert (=> b!4192827 (= e!2602732 tp_is_empty!22129)))

(assert (=> b!4192295 (= tp!1280953 e!2602732)))

(assert (= (and b!4192295 ((_ is ElementMatch!12583) (regex!7678 r!4142))) b!4192827))

(assert (= (and b!4192295 ((_ is Concat!20492) (regex!7678 r!4142))) b!4192828))

(assert (= (and b!4192295 ((_ is Star!12583) (regex!7678 r!4142))) b!4192829))

(assert (= (and b!4192295 ((_ is Union!12583) (regex!7678 r!4142))) b!4192830))

(declare-fun b!4192831 () Bool)

(declare-fun e!2602733 () Bool)

(declare-fun tp!1281045 () Bool)

(assert (=> b!4192831 (= e!2602733 (and tp_is_empty!22129 tp!1281045))))

(assert (=> b!4192286 (= tp!1280951 e!2602733)))

(assert (= (and b!4192286 ((_ is Cons!46048) (t!346055 input!3342))) b!4192831))

(declare-fun b!4192832 () Bool)

(declare-fun e!2602734 () Bool)

(declare-fun tp!1281046 () Bool)

(assert (=> b!4192832 (= e!2602734 (and tp_is_empty!22129 tp!1281046))))

(assert (=> b!4192275 (= tp!1280950 e!2602734)))

(assert (= (and b!4192275 ((_ is Cons!46048) (t!346055 p!2959))) b!4192832))

(declare-fun b_lambda!123317 () Bool)

(assert (= b_lambda!123301 (or (and b!4192276 b_free!122103) (and b!4192294 b_free!122107 (= (toValue!10374 (transformation!7678 (h!51469 rules!3843))) (toValue!10374 (transformation!7678 r!4142)))) (and b!4192272 b_free!122111 (= (toValue!10374 (transformation!7678 rBis!167)) (toValue!10374 (transformation!7678 r!4142)))) (and b!4192826 b_free!122119 (= (toValue!10374 (transformation!7678 (h!51469 (t!346056 rules!3843)))) (toValue!10374 (transformation!7678 r!4142)))) b_lambda!123317)))

(declare-fun b_lambda!123319 () Bool)

(assert (= b_lambda!123315 (or (and b!4192276 b_free!122103) (and b!4192294 b_free!122107 (= (toValue!10374 (transformation!7678 (h!51469 rules!3843))) (toValue!10374 (transformation!7678 r!4142)))) (and b!4192272 b_free!122111 (= (toValue!10374 (transformation!7678 rBis!167)) (toValue!10374 (transformation!7678 r!4142)))) (and b!4192826 b_free!122119 (= (toValue!10374 (transformation!7678 (h!51469 (t!346056 rules!3843)))) (toValue!10374 (transformation!7678 r!4142)))) b_lambda!123319)))

(declare-fun b_lambda!123321 () Bool)

(assert (= b_lambda!123313 (or (and b!4192276 b_free!122105) (and b!4192294 b_free!122109 (= (toChars!10233 (transformation!7678 (h!51469 rules!3843))) (toChars!10233 (transformation!7678 r!4142)))) (and b!4192272 b_free!122113 (= (toChars!10233 (transformation!7678 rBis!167)) (toChars!10233 (transformation!7678 r!4142)))) (and b!4192826 b_free!122121 (= (toChars!10233 (transformation!7678 (h!51469 (t!346056 rules!3843)))) (toChars!10233 (transformation!7678 r!4142)))) b_lambda!123321)))

(check-sat (not b!4192604) (not b!4192462) (not b!4192832) (not b!4192533) (not b!4192624) (not b!4192810) (not b_next!122825) (not b!4192811) (not d!1236506) (not b!4192831) (not b_next!122811) (not b!4192813) (not b!4192610) (not d!1236498) (not d!1236446) (not b!4192752) (not d!1236518) (not b!4192614) (not b!4192789) (not b!4192560) (not b!4192749) (not b!4192756) (not b!4192825) (not bm!292231) (not d!1236490) (not b!4192753) (not b!4192625) (not b!4192525) (not d!1236522) (not b!4192593) (not bm!292233) (not b!4192597) (not d!1236486) (not b!4192787) (not d!1236482) b_and!328589 (not b!4192824) (not b!4192754) (not b!4192612) (not d!1236512) (not b!4192539) (not d!1236516) (not b!4192814) (not b!4192809) b_and!328593 (not d!1236568) (not b_lambda!123319) (not b!4192523) (not b!4192606) (not b!4192605) (not b_next!122813) (not d!1236488) (not d!1236476) (not tb!251117) (not b!4192797) (not b!4192395) (not b_next!122823) (not b!4192592) (not b_lambda!123321) (not b!4192561) (not b!4192528) b_and!328581 (not d!1236478) (not b!4192748) (not b!4192780) (not b!4192591) (not b!4192441) (not b!4192829) (not d!1236508) b_and!328587 (not b!4192569) (not b!4192792) (not b!4192751) (not b!4192601) b_and!328583 (not b_next!122815) (not b!4192828) (not b!4192815) b_and!328595 b_and!328585 (not b!4192599) (not b!4192440) (not b!4192564) (not tb!251135) (not b!4192595) (not d!1236456) (not b!4192461) (not b!4192623) (not b_lambda!123317) (not b!4192608) (not d!1236442) (not b!4192389) (not d!1236466) (not b_next!122807) (not d!1236472) (not bm!292218) (not d!1236560) (not b!4192559) (not b!4192563) (not d!1236474) (not tb!251111) (not b!4192613) (not b!4192747) (not b_lambda!123299) (not b!4192463) (not b!4192611) (not b!4192566) (not b!4192596) (not b!4192620) (not b!4192524) b_and!328591 (not d!1236462) (not b!4192532) (not b!4192750) (not b!4192562) (not b_next!122817) (not b!4192572) (not b!4192565) (not b!4192788) (not d!1236444) (not b!4192594) (not b!4192451) (not b!4192603) (not bm!292221) (not b_next!122809) (not b!4192830) (not b!4192758) tp_is_empty!22129)
(check-sat (not b_next!122825) (not b_next!122811) b_and!328589 b_and!328593 (not b_next!122813) (not b_next!122823) b_and!328581 b_and!328587 b_and!328583 (not b_next!122815) (not b_next!122807) b_and!328591 (not b_next!122817) (not b_next!122809) b_and!328595 b_and!328585)
