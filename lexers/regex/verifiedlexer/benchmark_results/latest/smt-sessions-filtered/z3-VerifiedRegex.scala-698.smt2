; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28182 () Bool)

(assert start!28182)

(declare-fun b!263256 () Bool)

(declare-fun b_free!9777 () Bool)

(declare-fun b_next!9777 () Bool)

(assert (=> b!263256 (= b_free!9777 (not b_next!9777))))

(declare-fun tp!100942 () Bool)

(declare-fun b_and!20541 () Bool)

(assert (=> b!263256 (= tp!100942 b_and!20541)))

(declare-fun b_free!9779 () Bool)

(declare-fun b_next!9779 () Bool)

(assert (=> b!263256 (= b_free!9779 (not b_next!9779))))

(declare-fun tp!100944 () Bool)

(declare-fun b_and!20543 () Bool)

(assert (=> b!263256 (= tp!100944 b_and!20543)))

(declare-fun b!263265 () Bool)

(declare-fun b_free!9781 () Bool)

(declare-fun b_next!9781 () Bool)

(assert (=> b!263265 (= b_free!9781 (not b_next!9781))))

(declare-fun tp!100935 () Bool)

(declare-fun b_and!20545 () Bool)

(assert (=> b!263265 (= tp!100935 b_and!20545)))

(declare-fun b_free!9783 () Bool)

(declare-fun b_next!9783 () Bool)

(assert (=> b!263265 (= b_free!9783 (not b_next!9783))))

(declare-fun tp!100934 () Bool)

(declare-fun b_and!20547 () Bool)

(assert (=> b!263265 (= tp!100934 b_and!20547)))

(declare-fun b!263259 () Bool)

(declare-fun b_free!9785 () Bool)

(declare-fun b_next!9785 () Bool)

(assert (=> b!263259 (= b_free!9785 (not b_next!9785))))

(declare-fun tp!100937 () Bool)

(declare-fun b_and!20549 () Bool)

(assert (=> b!263259 (= tp!100937 b_and!20549)))

(declare-fun b_free!9787 () Bool)

(declare-fun b_next!9787 () Bool)

(assert (=> b!263259 (= b_free!9787 (not b_next!9787))))

(declare-fun tp!100938 () Bool)

(declare-fun b_and!20551 () Bool)

(assert (=> b!263259 (= tp!100938 b_and!20551)))

(declare-fun tp!100940 () Bool)

(declare-datatypes ((List!3779 0))(
  ( (Nil!3769) (Cons!3769 (h!9166 (_ BitVec 16)) (t!37295 List!3779)) )
))
(declare-datatypes ((TokenValue!741 0))(
  ( (FloatLiteralValue!1482 (text!5632 List!3779)) (TokenValueExt!740 (__x!2969 Int)) (Broken!3705 (value!24781 List!3779)) (Object!750) (End!741) (Def!741) (Underscore!741) (Match!741) (Else!741) (Error!741) (Case!741) (If!741) (Extends!741) (Abstract!741) (Class!741) (Val!741) (DelimiterValue!1482 (del!801 List!3779)) (KeywordValue!747 (value!24782 List!3779)) (CommentValue!1482 (value!24783 List!3779)) (WhitespaceValue!1482 (value!24784 List!3779)) (IndentationValue!741 (value!24785 List!3779)) (String!4784) (Int32!741) (Broken!3706 (value!24786 List!3779)) (Boolean!742) (Unit!4715) (OperatorValue!744 (op!801 List!3779)) (IdentifierValue!1482 (value!24787 List!3779)) (IdentifierValue!1483 (value!24788 List!3779)) (WhitespaceValue!1483 (value!24789 List!3779)) (True!1482) (False!1482) (Broken!3707 (value!24790 List!3779)) (Broken!3708 (value!24791 List!3779)) (True!1483) (RightBrace!741) (RightBracket!741) (Colon!741) (Null!741) (Comma!741) (LeftBracket!741) (False!1483) (LeftBrace!741) (ImaginaryLiteralValue!741 (text!5633 List!3779)) (StringLiteralValue!2223 (value!24792 List!3779)) (EOFValue!741 (value!24793 List!3779)) (IdentValue!741 (value!24794 List!3779)) (DelimiterValue!1483 (value!24795 List!3779)) (DedentValue!741 (value!24796 List!3779)) (NewLineValue!741 (value!24797 List!3779)) (IntegerValue!2223 (value!24798 (_ BitVec 32)) (text!5634 List!3779)) (IntegerValue!2224 (value!24799 Int) (text!5635 List!3779)) (Times!741) (Or!741) (Equal!741) (Minus!741) (Broken!3709 (value!24800 List!3779)) (And!741) (Div!741) (LessEqual!741) (Mod!741) (Concat!1684) (Not!741) (Plus!741) (SpaceValue!741 (value!24801 List!3779)) (IntegerValue!2225 (value!24802 Int) (text!5636 List!3779)) (StringLiteralValue!2224 (text!5637 List!3779)) (FloatLiteralValue!1483 (text!5638 List!3779)) (BytesLiteralValue!741 (value!24803 List!3779)) (CommentValue!1483 (value!24804 List!3779)) (StringLiteralValue!2225 (value!24805 List!3779)) (ErrorTokenValue!741 (msg!802 List!3779)) )
))
(declare-datatypes ((C!2808 0))(
  ( (C!2809 (val!1290 Int)) )
))
(declare-datatypes ((List!3780 0))(
  ( (Nil!3770) (Cons!3770 (h!9167 C!2808) (t!37296 List!3780)) )
))
(declare-datatypes ((IArray!2521 0))(
  ( (IArray!2522 (innerList!1318 List!3780)) )
))
(declare-datatypes ((Conc!1260 0))(
  ( (Node!1260 (left!3098 Conc!1260) (right!3428 Conc!1260) (csize!2750 Int) (cheight!1471 Int)) (Leaf!1959 (xs!3859 IArray!2521) (csize!2751 Int)) (Empty!1260) )
))
(declare-datatypes ((BalanceConc!2528 0))(
  ( (BalanceConc!2529 (c!49796 Conc!1260)) )
))
(declare-datatypes ((TokenValueInjection!1254 0))(
  ( (TokenValueInjection!1255 (toValue!1446 Int) (toChars!1305 Int)) )
))
(declare-datatypes ((String!4785 0))(
  ( (String!4786 (value!24806 String)) )
))
(declare-datatypes ((Regex!943 0))(
  ( (ElementMatch!943 (c!49797 C!2808)) (Concat!1685 (regOne!2398 Regex!943) (regTwo!2398 Regex!943)) (EmptyExpr!943) (Star!943 (reg!1272 Regex!943)) (EmptyLang!943) (Union!943 (regOne!2399 Regex!943) (regTwo!2399 Regex!943)) )
))
(declare-datatypes ((Rule!1238 0))(
  ( (Rule!1239 (regex!719 Regex!943) (tag!929 String!4785) (isSeparator!719 Bool) (transformation!719 TokenValueInjection!1254)) )
))
(declare-datatypes ((Token!1182 0))(
  ( (Token!1183 (value!24807 TokenValue!741) (rule!1304 Rule!1238) (size!2999 Int) (originalCharacters!762 List!3780)) )
))
(declare-fun separatorToken!170 () Token!1182)

(declare-fun e!163445 () Bool)

(declare-fun b!263246 () Bool)

(declare-fun e!163434 () Bool)

(declare-fun inv!21 (TokenValue!741) Bool)

(assert (=> b!263246 (= e!163434 (and (inv!21 (value!24807 separatorToken!170)) e!163445 tp!100940))))

(declare-fun b!263247 () Bool)

(declare-fun res!120947 () Bool)

(declare-fun e!163446 () Bool)

(assert (=> b!263247 (=> (not res!120947) (not e!163446))))

(declare-datatypes ((List!3781 0))(
  ( (Nil!3771) (Cons!3771 (h!9168 Token!1182) (t!37297 List!3781)) )
))
(declare-fun tokens!465 () List!3781)

(get-info :version)

(assert (=> b!263247 (= res!120947 ((_ is Cons!3771) tokens!465))))

(declare-fun b!263248 () Bool)

(declare-fun res!120949 () Bool)

(assert (=> b!263248 (=> (not res!120949) (not e!163446))))

(declare-datatypes ((List!3782 0))(
  ( (Nil!3772) (Cons!3772 (h!9169 Rule!1238) (t!37298 List!3782)) )
))
(declare-fun rules!1920 () List!3782)

(declare-datatypes ((LexerInterface!605 0))(
  ( (LexerInterfaceExt!602 (__x!2970 Int)) (Lexer!603) )
))
(declare-fun thiss!17480 () LexerInterface!605)

(declare-fun rulesProduceIndividualToken!354 (LexerInterface!605 List!3782 Token!1182) Bool)

(assert (=> b!263248 (= res!120949 (rulesProduceIndividualToken!354 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!163438 () Bool)

(declare-fun b!263249 () Bool)

(declare-fun tp!100945 () Bool)

(declare-fun e!163444 () Bool)

(declare-fun inv!4659 (Token!1182) Bool)

(assert (=> b!263249 (= e!163438 (and (inv!4659 (h!9168 tokens!465)) e!163444 tp!100945))))

(declare-fun b!263250 () Bool)

(declare-fun e!163452 () Bool)

(declare-fun e!163440 () Bool)

(assert (=> b!263250 (= e!163452 (not e!163440))))

(declare-fun res!120952 () Bool)

(assert (=> b!263250 (=> res!120952 e!163440)))

(declare-fun lt!107493 () List!3780)

(declare-fun list!1523 (BalanceConc!2528) List!3780)

(declare-datatypes ((IArray!2523 0))(
  ( (IArray!2524 (innerList!1319 List!3781)) )
))
(declare-datatypes ((Conc!1261 0))(
  ( (Node!1261 (left!3099 Conc!1261) (right!3429 Conc!1261) (csize!2752 Int) (cheight!1472 Int)) (Leaf!1960 (xs!3860 IArray!2523) (csize!2753 Int)) (Empty!1261) )
))
(declare-datatypes ((BalanceConc!2530 0))(
  ( (BalanceConc!2531 (c!49798 Conc!1261)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!280 (LexerInterface!605 List!3782 BalanceConc!2530 Token!1182 Int) BalanceConc!2528)

(declare-fun seqFromList!805 (List!3781) BalanceConc!2530)

(assert (=> b!263250 (= res!120952 (not (= lt!107493 (list!1523 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 (seqFromList!805 (t!37297 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!107492 () List!3780)

(declare-fun lt!107495 () List!3780)

(assert (=> b!263250 (= lt!107492 lt!107495)))

(declare-fun lt!107496 () List!3780)

(declare-fun lt!107494 () List!3780)

(declare-fun ++!972 (List!3780 List!3780) List!3780)

(assert (=> b!263250 (= lt!107495 (++!972 lt!107496 lt!107494))))

(declare-fun lt!107499 () List!3780)

(assert (=> b!263250 (= lt!107492 (++!972 (++!972 lt!107496 lt!107499) lt!107493))))

(declare-datatypes ((Unit!4716 0))(
  ( (Unit!4717) )
))
(declare-fun lt!107498 () Unit!4716)

(declare-fun lemmaConcatAssociativity!416 (List!3780 List!3780 List!3780) Unit!4716)

(assert (=> b!263250 (= lt!107498 (lemmaConcatAssociativity!416 lt!107496 lt!107499 lt!107493))))

(declare-fun charsOf!364 (Token!1182) BalanceConc!2528)

(assert (=> b!263250 (= lt!107496 (list!1523 (charsOf!364 (h!9168 tokens!465))))))

(assert (=> b!263250 (= lt!107494 (++!972 lt!107499 lt!107493))))

(declare-fun printWithSeparatorTokenWhenNeededList!288 (LexerInterface!605 List!3782 List!3781 Token!1182) List!3780)

(assert (=> b!263250 (= lt!107493 (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 (t!37297 tokens!465) separatorToken!170))))

(assert (=> b!263250 (= lt!107499 (list!1523 (charsOf!364 separatorToken!170)))))

(declare-fun b!263251 () Bool)

(assert (=> b!263251 (= e!163446 e!163452)))

(declare-fun res!120943 () Bool)

(assert (=> b!263251 (=> (not res!120943) (not e!163452))))

(declare-fun lt!107500 () List!3780)

(declare-fun lt!107491 () List!3780)

(assert (=> b!263251 (= res!120943 (= lt!107500 lt!107491))))

(declare-fun lt!107497 () BalanceConc!2530)

(assert (=> b!263251 (= lt!107491 (list!1523 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 lt!107497 separatorToken!170 0)))))

(assert (=> b!263251 (= lt!107500 (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!263252 () Bool)

(declare-fun res!120951 () Bool)

(assert (=> b!263252 (=> (not res!120951) (not e!163446))))

(declare-fun lambda!8822 () Int)

(declare-fun forall!931 (List!3781 Int) Bool)

(assert (=> b!263252 (= res!120951 (forall!931 tokens!465 lambda!8822))))

(declare-fun b!263254 () Bool)

(assert (=> b!263254 (= e!163440 (= lt!107500 (++!972 lt!107496 lt!107493)))))

(declare-fun b!263255 () Bool)

(declare-fun res!120941 () Bool)

(assert (=> b!263255 (=> res!120941 e!163440)))

(assert (=> b!263255 (= res!120941 (= lt!107500 lt!107495))))

(declare-fun e!163449 () Bool)

(assert (=> b!263256 (= e!163449 (and tp!100942 tp!100944))))

(declare-fun b!263257 () Bool)

(declare-fun res!120945 () Bool)

(declare-fun e!163441 () Bool)

(assert (=> b!263257 (=> (not res!120945) (not e!163441))))

(declare-fun isEmpty!2370 (List!3782) Bool)

(assert (=> b!263257 (= res!120945 (not (isEmpty!2370 rules!1920)))))

(declare-fun b!263258 () Bool)

(declare-fun res!120948 () Bool)

(assert (=> b!263258 (=> (not res!120948) (not e!163452))))

(declare-fun seqFromList!806 (List!3780) BalanceConc!2528)

(assert (=> b!263258 (= res!120948 (= (list!1523 (seqFromList!806 lt!107500)) lt!107491))))

(declare-fun e!163439 () Bool)

(assert (=> b!263259 (= e!163439 (and tp!100937 tp!100938))))

(declare-fun e!163447 () Bool)

(declare-fun b!263260 () Bool)

(declare-fun tp!100941 () Bool)

(assert (=> b!263260 (= e!163444 (and (inv!21 (value!24807 (h!9168 tokens!465))) e!163447 tp!100941))))

(declare-fun b!263261 () Bool)

(declare-fun e!163437 () Bool)

(declare-fun tp!100936 () Bool)

(declare-fun inv!4656 (String!4785) Bool)

(declare-fun inv!4660 (TokenValueInjection!1254) Bool)

(assert (=> b!263261 (= e!163437 (and tp!100936 (inv!4656 (tag!929 (h!9169 rules!1920))) (inv!4660 (transformation!719 (h!9169 rules!1920))) e!163439))))

(declare-fun res!120946 () Bool)

(assert (=> start!28182 (=> (not res!120946) (not e!163441))))

(assert (=> start!28182 (= res!120946 ((_ is Lexer!603) thiss!17480))))

(assert (=> start!28182 e!163441))

(assert (=> start!28182 true))

(declare-fun e!163451 () Bool)

(assert (=> start!28182 e!163451))

(assert (=> start!28182 (and (inv!4659 separatorToken!170) e!163434)))

(assert (=> start!28182 e!163438))

(declare-fun b!263253 () Bool)

(declare-fun tp!100939 () Bool)

(assert (=> b!263253 (= e!163451 (and e!163437 tp!100939))))

(declare-fun b!263262 () Bool)

(declare-fun res!120940 () Bool)

(assert (=> b!263262 (=> (not res!120940) (not e!163446))))

(assert (=> b!263262 (= res!120940 (isSeparator!719 (rule!1304 separatorToken!170)))))

(declare-fun b!263263 () Bool)

(assert (=> b!263263 (= e!163441 e!163446)))

(declare-fun res!120944 () Bool)

(assert (=> b!263263 (=> (not res!120944) (not e!163446))))

(declare-fun rulesProduceEachTokenIndividually!397 (LexerInterface!605 List!3782 BalanceConc!2530) Bool)

(assert (=> b!263263 (= res!120944 (rulesProduceEachTokenIndividually!397 thiss!17480 rules!1920 lt!107497))))

(assert (=> b!263263 (= lt!107497 (seqFromList!805 tokens!465))))

(declare-fun b!263264 () Bool)

(declare-fun e!163436 () Bool)

(declare-fun tp!100943 () Bool)

(assert (=> b!263264 (= e!163445 (and tp!100943 (inv!4656 (tag!929 (rule!1304 separatorToken!170))) (inv!4660 (transformation!719 (rule!1304 separatorToken!170))) e!163436))))

(assert (=> b!263265 (= e!163436 (and tp!100935 tp!100934))))

(declare-fun b!263266 () Bool)

(declare-fun res!120942 () Bool)

(assert (=> b!263266 (=> (not res!120942) (not e!163446))))

(declare-fun sepAndNonSepRulesDisjointChars!308 (List!3782 List!3782) Bool)

(assert (=> b!263266 (= res!120942 (sepAndNonSepRulesDisjointChars!308 rules!1920 rules!1920))))

(declare-fun b!263267 () Bool)

(declare-fun res!120950 () Bool)

(assert (=> b!263267 (=> (not res!120950) (not e!163441))))

(declare-fun rulesInvariant!571 (LexerInterface!605 List!3782) Bool)

(assert (=> b!263267 (= res!120950 (rulesInvariant!571 thiss!17480 rules!1920))))

(declare-fun tp!100933 () Bool)

(declare-fun b!263268 () Bool)

(assert (=> b!263268 (= e!163447 (and tp!100933 (inv!4656 (tag!929 (rule!1304 (h!9168 tokens!465)))) (inv!4660 (transformation!719 (rule!1304 (h!9168 tokens!465)))) e!163449))))

(assert (= (and start!28182 res!120946) b!263257))

(assert (= (and b!263257 res!120945) b!263267))

(assert (= (and b!263267 res!120950) b!263263))

(assert (= (and b!263263 res!120944) b!263248))

(assert (= (and b!263248 res!120949) b!263262))

(assert (= (and b!263262 res!120940) b!263252))

(assert (= (and b!263252 res!120951) b!263266))

(assert (= (and b!263266 res!120942) b!263247))

(assert (= (and b!263247 res!120947) b!263251))

(assert (= (and b!263251 res!120943) b!263258))

(assert (= (and b!263258 res!120948) b!263250))

(assert (= (and b!263250 (not res!120952)) b!263255))

(assert (= (and b!263255 (not res!120941)) b!263254))

(assert (= b!263261 b!263259))

(assert (= b!263253 b!263261))

(assert (= (and start!28182 ((_ is Cons!3772) rules!1920)) b!263253))

(assert (= b!263264 b!263265))

(assert (= b!263246 b!263264))

(assert (= start!28182 b!263246))

(assert (= b!263268 b!263256))

(assert (= b!263260 b!263268))

(assert (= b!263249 b!263260))

(assert (= (and start!28182 ((_ is Cons!3771) tokens!465)) b!263249))

(declare-fun m!328279 () Bool)

(assert (=> b!263266 m!328279))

(declare-fun m!328281 () Bool)

(assert (=> b!263261 m!328281))

(declare-fun m!328283 () Bool)

(assert (=> b!263261 m!328283))

(declare-fun m!328285 () Bool)

(assert (=> b!263258 m!328285))

(assert (=> b!263258 m!328285))

(declare-fun m!328287 () Bool)

(assert (=> b!263258 m!328287))

(declare-fun m!328289 () Bool)

(assert (=> b!263267 m!328289))

(declare-fun m!328291 () Bool)

(assert (=> b!263260 m!328291))

(declare-fun m!328293 () Bool)

(assert (=> b!263248 m!328293))

(declare-fun m!328295 () Bool)

(assert (=> b!263268 m!328295))

(declare-fun m!328297 () Bool)

(assert (=> b!263268 m!328297))

(declare-fun m!328299 () Bool)

(assert (=> b!263264 m!328299))

(declare-fun m!328301 () Bool)

(assert (=> b!263264 m!328301))

(declare-fun m!328303 () Bool)

(assert (=> b!263250 m!328303))

(declare-fun m!328305 () Bool)

(assert (=> b!263250 m!328305))

(assert (=> b!263250 m!328305))

(declare-fun m!328307 () Bool)

(assert (=> b!263250 m!328307))

(declare-fun m!328309 () Bool)

(assert (=> b!263250 m!328309))

(declare-fun m!328311 () Bool)

(assert (=> b!263250 m!328311))

(declare-fun m!328313 () Bool)

(assert (=> b!263250 m!328313))

(declare-fun m!328315 () Bool)

(assert (=> b!263250 m!328315))

(assert (=> b!263250 m!328311))

(declare-fun m!328317 () Bool)

(assert (=> b!263250 m!328317))

(declare-fun m!328319 () Bool)

(assert (=> b!263250 m!328319))

(assert (=> b!263250 m!328303))

(declare-fun m!328321 () Bool)

(assert (=> b!263250 m!328321))

(declare-fun m!328323 () Bool)

(assert (=> b!263250 m!328323))

(assert (=> b!263250 m!328323))

(declare-fun m!328325 () Bool)

(assert (=> b!263250 m!328325))

(assert (=> b!263250 m!328321))

(declare-fun m!328327 () Bool)

(assert (=> b!263250 m!328327))

(declare-fun m!328329 () Bool)

(assert (=> b!263252 m!328329))

(declare-fun m!328331 () Bool)

(assert (=> b!263249 m!328331))

(declare-fun m!328333 () Bool)

(assert (=> b!263263 m!328333))

(declare-fun m!328335 () Bool)

(assert (=> b!263263 m!328335))

(declare-fun m!328337 () Bool)

(assert (=> start!28182 m!328337))

(declare-fun m!328339 () Bool)

(assert (=> b!263251 m!328339))

(assert (=> b!263251 m!328339))

(declare-fun m!328341 () Bool)

(assert (=> b!263251 m!328341))

(declare-fun m!328343 () Bool)

(assert (=> b!263251 m!328343))

(declare-fun m!328345 () Bool)

(assert (=> b!263257 m!328345))

(declare-fun m!328347 () Bool)

(assert (=> b!263254 m!328347))

(declare-fun m!328349 () Bool)

(assert (=> b!263246 m!328349))

(check-sat (not b!263266) (not b_next!9777) b_and!20545 (not b!263257) (not b!263264) b_and!20547 (not b_next!9785) (not b!263260) (not b!263261) b_and!20543 (not b_next!9787) (not b!263248) b_and!20551 (not b_next!9779) (not b_next!9781) (not b!263253) b_and!20541 (not b!263268) (not b!263249) (not b!263258) (not b!263254) (not start!28182) (not b!263251) (not b_next!9783) (not b!263252) (not b!263250) (not b!263246) b_and!20549 (not b!263267) (not b!263263))
(check-sat b_and!20551 b_and!20541 (not b_next!9777) b_and!20545 (not b_next!9783) b_and!20547 (not b_next!9785) b_and!20549 b_and!20543 (not b_next!9787) (not b_next!9779) (not b_next!9781))
(get-model)

(declare-fun b!263300 () Bool)

(declare-fun e!163470 () List!3780)

(assert (=> b!263300 (= e!163470 (Cons!3770 (h!9167 lt!107496) (++!972 (t!37296 lt!107496) lt!107493)))))

(declare-fun b!263301 () Bool)

(declare-fun res!120974 () Bool)

(declare-fun e!163469 () Bool)

(assert (=> b!263301 (=> (not res!120974) (not e!163469))))

(declare-fun lt!107514 () List!3780)

(declare-fun size!3002 (List!3780) Int)

(assert (=> b!263301 (= res!120974 (= (size!3002 lt!107514) (+ (size!3002 lt!107496) (size!3002 lt!107493))))))

(declare-fun d!75691 () Bool)

(assert (=> d!75691 e!163469))

(declare-fun res!120973 () Bool)

(assert (=> d!75691 (=> (not res!120973) (not e!163469))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!535 (List!3780) (InoxSet C!2808))

(assert (=> d!75691 (= res!120973 (= (content!535 lt!107514) ((_ map or) (content!535 lt!107496) (content!535 lt!107493))))))

(assert (=> d!75691 (= lt!107514 e!163470)))

(declare-fun c!49805 () Bool)

(assert (=> d!75691 (= c!49805 ((_ is Nil!3770) lt!107496))))

(assert (=> d!75691 (= (++!972 lt!107496 lt!107493) lt!107514)))

(declare-fun b!263299 () Bool)

(assert (=> b!263299 (= e!163470 lt!107493)))

(declare-fun b!263302 () Bool)

(assert (=> b!263302 (= e!163469 (or (not (= lt!107493 Nil!3770)) (= lt!107514 lt!107496)))))

(assert (= (and d!75691 c!49805) b!263299))

(assert (= (and d!75691 (not c!49805)) b!263300))

(assert (= (and d!75691 res!120973) b!263301))

(assert (= (and b!263301 res!120974) b!263302))

(declare-fun m!328407 () Bool)

(assert (=> b!263300 m!328407))

(declare-fun m!328409 () Bool)

(assert (=> b!263301 m!328409))

(declare-fun m!328411 () Bool)

(assert (=> b!263301 m!328411))

(declare-fun m!328413 () Bool)

(assert (=> b!263301 m!328413))

(declare-fun m!328415 () Bool)

(assert (=> d!75691 m!328415))

(declare-fun m!328417 () Bool)

(assert (=> d!75691 m!328417))

(declare-fun m!328419 () Bool)

(assert (=> d!75691 m!328419))

(assert (=> b!263254 d!75691))

(declare-fun d!75693 () Bool)

(assert (=> d!75693 (= (inv!4656 (tag!929 (rule!1304 separatorToken!170))) (= (mod (str.len (value!24806 (tag!929 (rule!1304 separatorToken!170)))) 2) 0))))

(assert (=> b!263264 d!75693))

(declare-fun d!75695 () Bool)

(declare-fun res!120977 () Bool)

(declare-fun e!163473 () Bool)

(assert (=> d!75695 (=> (not res!120977) (not e!163473))))

(declare-fun semiInverseModEq!249 (Int Int) Bool)

(assert (=> d!75695 (= res!120977 (semiInverseModEq!249 (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (toValue!1446 (transformation!719 (rule!1304 separatorToken!170)))))))

(assert (=> d!75695 (= (inv!4660 (transformation!719 (rule!1304 separatorToken!170))) e!163473)))

(declare-fun b!263305 () Bool)

(declare-fun equivClasses!232 (Int Int) Bool)

(assert (=> b!263305 (= e!163473 (equivClasses!232 (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (toValue!1446 (transformation!719 (rule!1304 separatorToken!170)))))))

(assert (= (and d!75695 res!120977) b!263305))

(declare-fun m!328421 () Bool)

(assert (=> d!75695 m!328421))

(declare-fun m!328423 () Bool)

(assert (=> b!263305 m!328423))

(assert (=> b!263264 d!75695))

(declare-fun d!75697 () Bool)

(declare-fun res!120982 () Bool)

(declare-fun e!163478 () Bool)

(assert (=> d!75697 (=> res!120982 e!163478)))

(assert (=> d!75697 (= res!120982 ((_ is Nil!3771) tokens!465))))

(assert (=> d!75697 (= (forall!931 tokens!465 lambda!8822) e!163478)))

(declare-fun b!263310 () Bool)

(declare-fun e!163479 () Bool)

(assert (=> b!263310 (= e!163478 e!163479)))

(declare-fun res!120983 () Bool)

(assert (=> b!263310 (=> (not res!120983) (not e!163479))))

(declare-fun dynLambda!1907 (Int Token!1182) Bool)

(assert (=> b!263310 (= res!120983 (dynLambda!1907 lambda!8822 (h!9168 tokens!465)))))

(declare-fun b!263311 () Bool)

(assert (=> b!263311 (= e!163479 (forall!931 (t!37297 tokens!465) lambda!8822))))

(assert (= (and d!75697 (not res!120982)) b!263310))

(assert (= (and b!263310 res!120983) b!263311))

(declare-fun b_lambda!8147 () Bool)

(assert (=> (not b_lambda!8147) (not b!263310)))

(declare-fun m!328425 () Bool)

(assert (=> b!263310 m!328425))

(declare-fun m!328427 () Bool)

(assert (=> b!263311 m!328427))

(assert (=> b!263252 d!75697))

(declare-fun bs!28795 () Bool)

(declare-fun d!75699 () Bool)

(assert (= bs!28795 (and d!75699 b!263252)))

(declare-fun lambda!8830 () Int)

(assert (=> bs!28795 (not (= lambda!8830 lambda!8822))))

(declare-fun b!263376 () Bool)

(declare-fun e!163519 () Bool)

(assert (=> b!263376 (= e!163519 true)))

(declare-fun b!263375 () Bool)

(declare-fun e!163518 () Bool)

(assert (=> b!263375 (= e!163518 e!163519)))

(declare-fun b!263374 () Bool)

(declare-fun e!163517 () Bool)

(assert (=> b!263374 (= e!163517 e!163518)))

(assert (=> d!75699 e!163517))

(assert (= b!263375 b!263376))

(assert (= b!263374 b!263375))

(assert (= (and d!75699 ((_ is Cons!3772) rules!1920)) b!263374))

(declare-fun order!2871 () Int)

(declare-fun order!2869 () Int)

(declare-fun dynLambda!1908 (Int Int) Int)

(declare-fun dynLambda!1909 (Int Int) Int)

(assert (=> b!263376 (< (dynLambda!1908 order!2869 (toValue!1446 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8830))))

(declare-fun order!2873 () Int)

(declare-fun dynLambda!1910 (Int Int) Int)

(assert (=> b!263376 (< (dynLambda!1910 order!2873 (toChars!1305 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8830))))

(assert (=> d!75699 true))

(declare-fun e!163510 () Bool)

(assert (=> d!75699 e!163510))

(declare-fun res!120990 () Bool)

(assert (=> d!75699 (=> (not res!120990) (not e!163510))))

(declare-fun lt!107537 () Bool)

(declare-fun list!1526 (BalanceConc!2530) List!3781)

(assert (=> d!75699 (= res!120990 (= lt!107537 (forall!931 (list!1526 lt!107497) lambda!8830)))))

(declare-fun forall!932 (BalanceConc!2530 Int) Bool)

(assert (=> d!75699 (= lt!107537 (forall!932 lt!107497 lambda!8830))))

(assert (=> d!75699 (not (isEmpty!2370 rules!1920))))

(assert (=> d!75699 (= (rulesProduceEachTokenIndividually!397 thiss!17480 rules!1920 lt!107497) lt!107537)))

(declare-fun b!263365 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!218 (LexerInterface!605 List!3782 List!3781) Bool)

(assert (=> b!263365 (= e!163510 (= lt!107537 (rulesProduceEachTokenIndividuallyList!218 thiss!17480 rules!1920 (list!1526 lt!107497))))))

(assert (= (and d!75699 res!120990) b!263365))

(declare-fun m!328473 () Bool)

(assert (=> d!75699 m!328473))

(assert (=> d!75699 m!328473))

(declare-fun m!328475 () Bool)

(assert (=> d!75699 m!328475))

(declare-fun m!328477 () Bool)

(assert (=> d!75699 m!328477))

(assert (=> d!75699 m!328345))

(assert (=> b!263365 m!328473))

(assert (=> b!263365 m!328473))

(declare-fun m!328479 () Bool)

(assert (=> b!263365 m!328479))

(assert (=> b!263263 d!75699))

(declare-fun d!75707 () Bool)

(declare-fun fromListB!300 (List!3781) BalanceConc!2530)

(assert (=> d!75707 (= (seqFromList!805 tokens!465) (fromListB!300 tokens!465))))

(declare-fun bs!28796 () Bool)

(assert (= bs!28796 d!75707))

(declare-fun m!328481 () Bool)

(assert (=> bs!28796 m!328481))

(assert (=> b!263263 d!75707))

(declare-fun d!75709 () Bool)

(declare-fun list!1527 (Conc!1260) List!3780)

(assert (=> d!75709 (= (list!1523 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 lt!107497 separatorToken!170 0)) (list!1527 (c!49796 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 lt!107497 separatorToken!170 0))))))

(declare-fun bs!28797 () Bool)

(assert (= bs!28797 d!75709))

(declare-fun m!328483 () Bool)

(assert (=> bs!28797 m!328483))

(assert (=> b!263251 d!75709))

(declare-fun bs!28821 () Bool)

(declare-fun d!75711 () Bool)

(assert (= bs!28821 (and d!75711 b!263252)))

(declare-fun lambda!8844 () Int)

(assert (=> bs!28821 (= lambda!8844 lambda!8822)))

(declare-fun bs!28822 () Bool)

(assert (= bs!28822 (and d!75711 d!75699)))

(assert (=> bs!28822 (not (= lambda!8844 lambda!8830))))

(declare-fun bs!28823 () Bool)

(declare-fun b!263513 () Bool)

(assert (= bs!28823 (and b!263513 b!263252)))

(declare-fun lambda!8845 () Int)

(assert (=> bs!28823 (not (= lambda!8845 lambda!8822))))

(declare-fun bs!28824 () Bool)

(assert (= bs!28824 (and b!263513 d!75699)))

(assert (=> bs!28824 (= lambda!8845 lambda!8830)))

(declare-fun bs!28825 () Bool)

(assert (= bs!28825 (and b!263513 d!75711)))

(assert (=> bs!28825 (not (= lambda!8845 lambda!8844))))

(declare-fun b!263529 () Bool)

(declare-fun e!163621 () Bool)

(assert (=> b!263529 (= e!163621 true)))

(declare-fun b!263528 () Bool)

(declare-fun e!163620 () Bool)

(assert (=> b!263528 (= e!163620 e!163621)))

(declare-fun b!263527 () Bool)

(declare-fun e!163619 () Bool)

(assert (=> b!263527 (= e!163619 e!163620)))

(assert (=> b!263513 e!163619))

(assert (= b!263528 b!263529))

(assert (= b!263527 b!263528))

(assert (= (and b!263513 ((_ is Cons!3772) rules!1920)) b!263527))

(assert (=> b!263529 (< (dynLambda!1908 order!2869 (toValue!1446 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8845))))

(assert (=> b!263529 (< (dynLambda!1910 order!2873 (toChars!1305 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8845))))

(assert (=> b!263513 true))

(declare-fun bm!14170 () Bool)

(declare-fun c!49861 () Bool)

(declare-fun c!49864 () Bool)

(assert (=> bm!14170 (= c!49861 c!49864)))

(declare-fun lt!107631 () BalanceConc!2528)

(declare-fun call!14179 () BalanceConc!2528)

(declare-fun call!14178 () BalanceConc!2528)

(declare-fun e!163610 () BalanceConc!2528)

(declare-fun ++!974 (BalanceConc!2528 BalanceConc!2528) BalanceConc!2528)

(assert (=> bm!14170 (= call!14178 (++!974 e!163610 (ite c!49864 lt!107631 call!14179)))))

(declare-fun b!263511 () Bool)

(declare-fun e!163611 () BalanceConc!2528)

(assert (=> b!263511 (= e!163611 (++!974 call!14178 lt!107631))))

(declare-fun b!263512 () Bool)

(declare-fun e!163612 () BalanceConc!2528)

(assert (=> b!263512 (= e!163612 call!14178)))

(declare-fun e!163608 () BalanceConc!2528)

(assert (=> b!263513 (= e!163608 e!163612)))

(declare-fun lt!107630 () List!3781)

(assert (=> b!263513 (= lt!107630 (list!1526 lt!107497))))

(declare-fun lt!107632 () Unit!4716)

(declare-fun lemmaDropApply!194 (List!3781 Int) Unit!4716)

(assert (=> b!263513 (= lt!107632 (lemmaDropApply!194 lt!107630 0))))

(declare-fun head!878 (List!3781) Token!1182)

(declare-fun drop!207 (List!3781 Int) List!3781)

(declare-fun apply!741 (List!3781 Int) Token!1182)

(assert (=> b!263513 (= (head!878 (drop!207 lt!107630 0)) (apply!741 lt!107630 0))))

(declare-fun lt!107636 () Unit!4716)

(assert (=> b!263513 (= lt!107636 lt!107632)))

(declare-fun lt!107640 () List!3781)

(assert (=> b!263513 (= lt!107640 (list!1526 lt!107497))))

(declare-fun lt!107639 () Unit!4716)

(declare-fun lemmaDropTail!186 (List!3781 Int) Unit!4716)

(assert (=> b!263513 (= lt!107639 (lemmaDropTail!186 lt!107640 0))))

(declare-fun tail!468 (List!3781) List!3781)

(assert (=> b!263513 (= (tail!468 (drop!207 lt!107640 0)) (drop!207 lt!107640 (+ 0 1)))))

(declare-fun lt!107641 () Unit!4716)

(assert (=> b!263513 (= lt!107641 lt!107639)))

(declare-fun lt!107638 () Unit!4716)

(declare-fun forallContained!276 (List!3781 Int Token!1182) Unit!4716)

(declare-fun apply!742 (BalanceConc!2530 Int) Token!1182)

(assert (=> b!263513 (= lt!107638 (forallContained!276 (list!1526 lt!107497) lambda!8845 (apply!742 lt!107497 0)))))

(assert (=> b!263513 (= lt!107631 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 lt!107497 separatorToken!170 (+ 0 1)))))

(declare-datatypes ((tuple2!4220 0))(
  ( (tuple2!4221 (_1!2326 Token!1182) (_2!2326 BalanceConc!2528)) )
))
(declare-datatypes ((Option!788 0))(
  ( (None!787) (Some!787 (v!14632 tuple2!4220)) )
))
(declare-fun lt!107633 () Option!788)

(declare-fun maxPrefixZipperSequence!288 (LexerInterface!605 List!3782 BalanceConc!2528) Option!788)

(assert (=> b!263513 (= lt!107633 (maxPrefixZipperSequence!288 thiss!17480 rules!1920 (++!974 (charsOf!364 (apply!742 lt!107497 0)) lt!107631)))))

(declare-fun res!121039 () Bool)

(assert (=> b!263513 (= res!121039 ((_ is Some!787) lt!107633))))

(declare-fun e!163609 () Bool)

(assert (=> b!263513 (=> (not res!121039) (not e!163609))))

(assert (=> b!263513 (= c!49864 e!163609)))

(declare-fun b!263514 () Bool)

(declare-fun call!14176 () Token!1182)

(assert (=> b!263514 (= e!163610 (charsOf!364 call!14176))))

(declare-fun b!263515 () Bool)

(declare-fun e!163614 () Bool)

(declare-fun size!3003 (BalanceConc!2530) Int)

(assert (=> b!263515 (= e!163614 (<= 0 (size!3003 lt!107497)))))

(declare-fun b!263516 () Bool)

(declare-fun e!163613 () Bool)

(declare-fun call!14175 () Token!1182)

(assert (=> b!263516 (= e!163613 (not (= (_1!2326 (v!14632 lt!107633)) call!14175)))))

(declare-fun b!263517 () Bool)

(assert (=> b!263517 (= e!163611 (BalanceConc!2529 Empty!1260))))

(declare-fun print!330 (LexerInterface!605 BalanceConc!2530) BalanceConc!2528)

(declare-fun singletonSeq!265 (Token!1182) BalanceConc!2530)

(declare-fun printTailRec!293 (LexerInterface!605 BalanceConc!2530 Int BalanceConc!2528) BalanceConc!2528)

(assert (=> b!263517 (= (print!330 thiss!17480 (singletonSeq!265 call!14176)) (printTailRec!293 thiss!17480 (singletonSeq!265 call!14176) 0 (BalanceConc!2529 Empty!1260)))))

(declare-fun lt!107642 () Unit!4716)

(declare-fun Unit!4726 () Unit!4716)

(assert (=> b!263517 (= lt!107642 Unit!4726)))

(declare-fun lt!107629 () Unit!4716)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!102 (LexerInterface!605 List!3782 List!3780 List!3780) Unit!4716)

(assert (=> b!263517 (= lt!107629 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!102 thiss!17480 rules!1920 (list!1523 call!14179) (list!1523 lt!107631)))))

(assert (=> b!263517 false))

(declare-fun lt!107635 () Unit!4716)

(declare-fun Unit!4727 () Unit!4716)

(assert (=> b!263517 (= lt!107635 Unit!4727)))

(declare-fun b!263518 () Bool)

(assert (=> b!263518 (= e!163609 (= (_1!2326 (v!14632 lt!107633)) (apply!742 lt!107497 0)))))

(declare-fun call!14177 () BalanceConc!2528)

(declare-fun bm!14171 () Bool)

(declare-fun c!49862 () Bool)

(assert (=> bm!14171 (= call!14177 (charsOf!364 (ite c!49864 call!14175 (ite c!49862 separatorToken!170 call!14176))))))

(declare-fun b!263519 () Bool)

(assert (=> b!263519 (= e!163610 call!14177)))

(declare-fun b!263520 () Bool)

(assert (=> b!263520 (= e!163608 (BalanceConc!2529 Empty!1260))))

(declare-fun bm!14172 () Bool)

(assert (=> bm!14172 (= call!14176 call!14175)))

(declare-fun b!263510 () Bool)

(assert (=> b!263510 (= c!49862 e!163613)))

(declare-fun res!121037 () Bool)

(assert (=> b!263510 (=> (not res!121037) (not e!163613))))

(assert (=> b!263510 (= res!121037 ((_ is Some!787) lt!107633))))

(assert (=> b!263510 (= e!163612 e!163611)))

(declare-fun lt!107637 () BalanceConc!2528)

(declare-fun dropList!154 (BalanceConc!2530 Int) List!3781)

(assert (=> d!75711 (= (list!1523 lt!107637) (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 (dropList!154 lt!107497 0) separatorToken!170))))

(assert (=> d!75711 (= lt!107637 e!163608)))

(declare-fun c!49863 () Bool)

(assert (=> d!75711 (= c!49863 (>= 0 (size!3003 lt!107497)))))

(declare-fun lt!107634 () Unit!4716)

(declare-fun lemmaContentSubsetPreservesForall!98 (List!3781 List!3781 Int) Unit!4716)

(assert (=> d!75711 (= lt!107634 (lemmaContentSubsetPreservesForall!98 (list!1526 lt!107497) (dropList!154 lt!107497 0) lambda!8844))))

(assert (=> d!75711 e!163614))

(declare-fun res!121038 () Bool)

(assert (=> d!75711 (=> (not res!121038) (not e!163614))))

(assert (=> d!75711 (= res!121038 (>= 0 0))))

(assert (=> d!75711 (= (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 lt!107497 separatorToken!170 0) lt!107637)))

(declare-fun bm!14173 () Bool)

(assert (=> bm!14173 (= call!14179 call!14177)))

(declare-fun bm!14174 () Bool)

(assert (=> bm!14174 (= call!14175 (apply!742 lt!107497 0))))

(assert (= (and d!75711 res!121038) b!263515))

(assert (= (and d!75711 c!49863) b!263520))

(assert (= (and d!75711 (not c!49863)) b!263513))

(assert (= (and b!263513 res!121039) b!263518))

(assert (= (and b!263513 c!49864) b!263512))

(assert (= (and b!263513 (not c!49864)) b!263510))

(assert (= (and b!263510 res!121037) b!263516))

(assert (= (and b!263510 c!49862) b!263511))

(assert (= (and b!263510 (not c!49862)) b!263517))

(assert (= (or b!263511 b!263517) bm!14172))

(assert (= (or b!263511 b!263517) bm!14173))

(assert (= (or b!263512 bm!14172 b!263516) bm!14174))

(assert (= (or b!263512 bm!14173) bm!14171))

(assert (= (or b!263512 b!263511) bm!14170))

(assert (= (and bm!14170 c!49861) b!263519))

(assert (= (and bm!14170 (not c!49861)) b!263514))

(declare-fun m!328683 () Bool)

(assert (=> b!263517 m!328683))

(declare-fun m!328685 () Bool)

(assert (=> b!263517 m!328685))

(declare-fun m!328687 () Bool)

(assert (=> b!263517 m!328687))

(declare-fun m!328689 () Bool)

(assert (=> b!263517 m!328689))

(assert (=> b!263517 m!328689))

(declare-fun m!328691 () Bool)

(assert (=> b!263517 m!328691))

(assert (=> b!263517 m!328685))

(assert (=> b!263517 m!328689))

(declare-fun m!328693 () Bool)

(assert (=> b!263517 m!328693))

(assert (=> b!263517 m!328683))

(declare-fun m!328695 () Bool)

(assert (=> bm!14171 m!328695))

(declare-fun m!328697 () Bool)

(assert (=> bm!14174 m!328697))

(declare-fun m!328699 () Bool)

(assert (=> b!263513 m!328699))

(declare-fun m!328701 () Bool)

(assert (=> b!263513 m!328701))

(declare-fun m!328703 () Bool)

(assert (=> b!263513 m!328703))

(assert (=> b!263513 m!328697))

(declare-fun m!328705 () Bool)

(assert (=> b!263513 m!328705))

(declare-fun m!328707 () Bool)

(assert (=> b!263513 m!328707))

(assert (=> b!263513 m!328473))

(assert (=> b!263513 m!328697))

(declare-fun m!328709 () Bool)

(assert (=> b!263513 m!328709))

(declare-fun m!328711 () Bool)

(assert (=> b!263513 m!328711))

(declare-fun m!328713 () Bool)

(assert (=> b!263513 m!328713))

(declare-fun m!328715 () Bool)

(assert (=> b!263513 m!328715))

(assert (=> b!263513 m!328713))

(declare-fun m!328717 () Bool)

(assert (=> b!263513 m!328717))

(assert (=> b!263513 m!328707))

(declare-fun m!328719 () Bool)

(assert (=> b!263513 m!328719))

(assert (=> b!263513 m!328699))

(assert (=> b!263513 m!328473))

(declare-fun m!328721 () Bool)

(assert (=> b!263513 m!328721))

(assert (=> b!263513 m!328697))

(assert (=> b!263513 m!328705))

(declare-fun m!328723 () Bool)

(assert (=> b!263513 m!328723))

(declare-fun m!328725 () Bool)

(assert (=> b!263515 m!328725))

(assert (=> b!263518 m!328697))

(declare-fun m!328727 () Bool)

(assert (=> bm!14170 m!328727))

(declare-fun m!328729 () Bool)

(assert (=> b!263511 m!328729))

(assert (=> d!75711 m!328725))

(declare-fun m!328731 () Bool)

(assert (=> d!75711 m!328731))

(assert (=> d!75711 m!328731))

(declare-fun m!328733 () Bool)

(assert (=> d!75711 m!328733))

(declare-fun m!328737 () Bool)

(assert (=> d!75711 m!328737))

(assert (=> d!75711 m!328473))

(assert (=> d!75711 m!328473))

(assert (=> d!75711 m!328731))

(declare-fun m!328743 () Bool)

(assert (=> d!75711 m!328743))

(declare-fun m!328747 () Bool)

(assert (=> b!263514 m!328747))

(assert (=> b!263251 d!75711))

(declare-fun bs!28835 () Bool)

(declare-fun b!263615 () Bool)

(assert (= bs!28835 (and b!263615 b!263252)))

(declare-fun lambda!8853 () Int)

(assert (=> bs!28835 (not (= lambda!8853 lambda!8822))))

(declare-fun bs!28836 () Bool)

(assert (= bs!28836 (and b!263615 d!75699)))

(assert (=> bs!28836 (= lambda!8853 lambda!8830)))

(declare-fun bs!28837 () Bool)

(assert (= bs!28837 (and b!263615 d!75711)))

(assert (=> bs!28837 (not (= lambda!8853 lambda!8844))))

(declare-fun bs!28838 () Bool)

(assert (= bs!28838 (and b!263615 b!263513)))

(assert (=> bs!28838 (= lambda!8853 lambda!8845)))

(declare-fun b!263624 () Bool)

(declare-fun e!163689 () Bool)

(assert (=> b!263624 (= e!163689 true)))

(declare-fun b!263623 () Bool)

(declare-fun e!163688 () Bool)

(assert (=> b!263623 (= e!163688 e!163689)))

(declare-fun b!263622 () Bool)

(declare-fun e!163687 () Bool)

(assert (=> b!263622 (= e!163687 e!163688)))

(assert (=> b!263615 e!163687))

(assert (= b!263623 b!263624))

(assert (= b!263622 b!263623))

(assert (= (and b!263615 ((_ is Cons!3772) rules!1920)) b!263622))

(assert (=> b!263624 (< (dynLambda!1908 order!2869 (toValue!1446 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8853))))

(assert (=> b!263624 (< (dynLambda!1910 order!2873 (toChars!1305 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8853))))

(assert (=> b!263615 true))

(declare-fun b!263614 () Bool)

(declare-fun e!163686 () BalanceConc!2528)

(assert (=> b!263614 (= e!163686 (charsOf!364 separatorToken!170))))

(declare-fun e!163684 () List!3780)

(declare-fun e!163685 () List!3780)

(assert (=> b!263615 (= e!163684 e!163685)))

(declare-fun lt!107667 () Unit!4716)

(assert (=> b!263615 (= lt!107667 (forallContained!276 tokens!465 lambda!8853 (h!9168 tokens!465)))))

(declare-fun lt!107668 () List!3780)

(assert (=> b!263615 (= lt!107668 (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 (t!37297 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!4222 0))(
  ( (tuple2!4223 (_1!2327 Token!1182) (_2!2327 List!3780)) )
))
(declare-datatypes ((Option!789 0))(
  ( (None!788) (Some!788 (v!14633 tuple2!4222)) )
))
(declare-fun lt!107665 () Option!789)

(declare-fun maxPrefix!325 (LexerInterface!605 List!3782 List!3780) Option!789)

(assert (=> b!263615 (= lt!107665 (maxPrefix!325 thiss!17480 rules!1920 (++!972 (list!1523 (charsOf!364 (h!9168 tokens!465))) lt!107668)))))

(declare-fun c!49875 () Bool)

(assert (=> b!263615 (= c!49875 (and ((_ is Some!788) lt!107665) (= (_1!2327 (v!14633 lt!107665)) (h!9168 tokens!465))))))

(declare-fun b!263616 () Bool)

(assert (=> b!263616 (= e!163684 Nil!3770)))

(declare-fun b!263617 () Bool)

(declare-fun e!163683 () List!3780)

(assert (=> b!263617 (= e!163683 Nil!3770)))

(assert (=> b!263617 (= (print!330 thiss!17480 (singletonSeq!265 (h!9168 tokens!465))) (printTailRec!293 thiss!17480 (singletonSeq!265 (h!9168 tokens!465)) 0 (BalanceConc!2529 Empty!1260)))))

(declare-fun lt!107664 () Unit!4716)

(declare-fun Unit!4728 () Unit!4716)

(assert (=> b!263617 (= lt!107664 Unit!4728)))

(declare-fun call!14193 () List!3780)

(declare-fun lt!107669 () Unit!4716)

(assert (=> b!263617 (= lt!107669 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!102 thiss!17480 rules!1920 call!14193 lt!107668))))

(assert (=> b!263617 false))

(declare-fun lt!107666 () Unit!4716)

(declare-fun Unit!4729 () Unit!4716)

(assert (=> b!263617 (= lt!107666 Unit!4729)))

(declare-fun bm!14185 () Bool)

(declare-fun call!14194 () BalanceConc!2528)

(assert (=> bm!14185 (= call!14194 (charsOf!364 (h!9168 tokens!465)))))

(declare-fun bm!14186 () Bool)

(assert (=> bm!14186 (= call!14193 (list!1523 e!163686))))

(declare-fun c!49876 () Bool)

(declare-fun c!49873 () Bool)

(assert (=> bm!14186 (= c!49876 c!49873)))

(declare-fun b!263618 () Bool)

(declare-fun call!14191 () List!3780)

(assert (=> b!263618 (= e!163685 call!14191)))

(declare-fun call!14192 () List!3780)

(declare-fun bm!14187 () Bool)

(assert (=> bm!14187 (= call!14191 (++!972 call!14192 (ite c!49875 lt!107668 call!14193)))))

(declare-fun call!14190 () BalanceConc!2528)

(declare-fun bm!14188 () Bool)

(assert (=> bm!14188 (= call!14192 (list!1523 (ite c!49875 call!14194 call!14190)))))

(declare-fun d!75753 () Bool)

(declare-fun c!49874 () Bool)

(assert (=> d!75753 (= c!49874 ((_ is Cons!3771) tokens!465))))

(assert (=> d!75753 (= (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!163684)))

(declare-fun b!263619 () Bool)

(assert (=> b!263619 (= c!49873 (and ((_ is Some!788) lt!107665) (not (= (_1!2327 (v!14633 lt!107665)) (h!9168 tokens!465)))))))

(assert (=> b!263619 (= e!163685 e!163683)))

(declare-fun b!263620 () Bool)

(assert (=> b!263620 (= e!163683 (++!972 call!14191 lt!107668))))

(declare-fun bm!14189 () Bool)

(assert (=> bm!14189 (= call!14190 call!14194)))

(declare-fun b!263621 () Bool)

(assert (=> b!263621 (= e!163686 call!14190)))

(assert (= (and d!75753 c!49874) b!263615))

(assert (= (and d!75753 (not c!49874)) b!263616))

(assert (= (and b!263615 c!49875) b!263618))

(assert (= (and b!263615 (not c!49875)) b!263619))

(assert (= (and b!263619 c!49873) b!263620))

(assert (= (and b!263619 (not c!49873)) b!263617))

(assert (= (or b!263620 b!263617) bm!14189))

(assert (= (or b!263620 b!263617) bm!14186))

(assert (= (and bm!14186 c!49876) b!263614))

(assert (= (and bm!14186 (not c!49876)) b!263621))

(assert (= (or b!263618 bm!14189) bm!14185))

(assert (= (or b!263618 b!263620) bm!14188))

(assert (= (or b!263618 b!263620) bm!14187))

(declare-fun m!328783 () Bool)

(assert (=> bm!14187 m!328783))

(declare-fun m!328785 () Bool)

(assert (=> b!263615 m!328785))

(assert (=> b!263615 m!328323))

(assert (=> b!263615 m!328325))

(declare-fun m!328787 () Bool)

(assert (=> b!263615 m!328787))

(declare-fun m!328789 () Bool)

(assert (=> b!263615 m!328789))

(assert (=> b!263615 m!328325))

(assert (=> b!263615 m!328787))

(assert (=> b!263615 m!328323))

(assert (=> b!263615 m!328309))

(assert (=> b!263614 m!328311))

(declare-fun m!328791 () Bool)

(assert (=> b!263620 m!328791))

(assert (=> bm!14185 m!328323))

(declare-fun m!328793 () Bool)

(assert (=> bm!14188 m!328793))

(declare-fun m!328795 () Bool)

(assert (=> bm!14186 m!328795))

(declare-fun m!328797 () Bool)

(assert (=> b!263617 m!328797))

(assert (=> b!263617 m!328797))

(declare-fun m!328799 () Bool)

(assert (=> b!263617 m!328799))

(assert (=> b!263617 m!328797))

(declare-fun m!328801 () Bool)

(assert (=> b!263617 m!328801))

(declare-fun m!328803 () Bool)

(assert (=> b!263617 m!328803))

(assert (=> b!263251 d!75753))

(declare-fun d!75763 () Bool)

(assert (=> d!75763 (= (seqFromList!805 (t!37297 tokens!465)) (fromListB!300 (t!37297 tokens!465)))))

(declare-fun bs!28839 () Bool)

(assert (= bs!28839 d!75763))

(declare-fun m!328805 () Bool)

(assert (=> bs!28839 m!328805))

(assert (=> b!263250 d!75763))

(declare-fun d!75765 () Bool)

(assert (=> d!75765 (= (++!972 (++!972 lt!107496 lt!107499) lt!107493) (++!972 lt!107496 (++!972 lt!107499 lt!107493)))))

(declare-fun lt!107672 () Unit!4716)

(declare-fun choose!2420 (List!3780 List!3780 List!3780) Unit!4716)

(assert (=> d!75765 (= lt!107672 (choose!2420 lt!107496 lt!107499 lt!107493))))

(assert (=> d!75765 (= (lemmaConcatAssociativity!416 lt!107496 lt!107499 lt!107493) lt!107672)))

(declare-fun bs!28840 () Bool)

(assert (= bs!28840 d!75765))

(assert (=> bs!28840 m!328317))

(assert (=> bs!28840 m!328317))

(declare-fun m!328807 () Bool)

(assert (=> bs!28840 m!328807))

(assert (=> bs!28840 m!328305))

(assert (=> bs!28840 m!328305))

(assert (=> bs!28840 m!328307))

(declare-fun m!328809 () Bool)

(assert (=> bs!28840 m!328809))

(assert (=> b!263250 d!75765))

(declare-fun d!75767 () Bool)

(assert (=> d!75767 (= (list!1523 (charsOf!364 separatorToken!170)) (list!1527 (c!49796 (charsOf!364 separatorToken!170))))))

(declare-fun bs!28841 () Bool)

(assert (= bs!28841 d!75767))

(declare-fun m!328811 () Bool)

(assert (=> bs!28841 m!328811))

(assert (=> b!263250 d!75767))

(declare-fun d!75769 () Bool)

(assert (=> d!75769 (= (list!1523 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 (seqFromList!805 (t!37297 tokens!465)) separatorToken!170 0)) (list!1527 (c!49796 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 (seqFromList!805 (t!37297 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!28842 () Bool)

(assert (= bs!28842 d!75769))

(declare-fun m!328813 () Bool)

(assert (=> bs!28842 m!328813))

(assert (=> b!263250 d!75769))

(declare-fun b!263626 () Bool)

(declare-fun e!163691 () List!3780)

(assert (=> b!263626 (= e!163691 (Cons!3770 (h!9167 lt!107496) (++!972 (t!37296 lt!107496) lt!107494)))))

(declare-fun b!263627 () Bool)

(declare-fun res!121059 () Bool)

(declare-fun e!163690 () Bool)

(assert (=> b!263627 (=> (not res!121059) (not e!163690))))

(declare-fun lt!107673 () List!3780)

(assert (=> b!263627 (= res!121059 (= (size!3002 lt!107673) (+ (size!3002 lt!107496) (size!3002 lt!107494))))))

(declare-fun d!75771 () Bool)

(assert (=> d!75771 e!163690))

(declare-fun res!121058 () Bool)

(assert (=> d!75771 (=> (not res!121058) (not e!163690))))

(assert (=> d!75771 (= res!121058 (= (content!535 lt!107673) ((_ map or) (content!535 lt!107496) (content!535 lt!107494))))))

(assert (=> d!75771 (= lt!107673 e!163691)))

(declare-fun c!49877 () Bool)

(assert (=> d!75771 (= c!49877 ((_ is Nil!3770) lt!107496))))

(assert (=> d!75771 (= (++!972 lt!107496 lt!107494) lt!107673)))

(declare-fun b!263625 () Bool)

(assert (=> b!263625 (= e!163691 lt!107494)))

(declare-fun b!263628 () Bool)

(assert (=> b!263628 (= e!163690 (or (not (= lt!107494 Nil!3770)) (= lt!107673 lt!107496)))))

(assert (= (and d!75771 c!49877) b!263625))

(assert (= (and d!75771 (not c!49877)) b!263626))

(assert (= (and d!75771 res!121058) b!263627))

(assert (= (and b!263627 res!121059) b!263628))

(declare-fun m!328815 () Bool)

(assert (=> b!263626 m!328815))

(declare-fun m!328817 () Bool)

(assert (=> b!263627 m!328817))

(assert (=> b!263627 m!328411))

(declare-fun m!328819 () Bool)

(assert (=> b!263627 m!328819))

(declare-fun m!328821 () Bool)

(assert (=> d!75771 m!328821))

(assert (=> d!75771 m!328417))

(declare-fun m!328823 () Bool)

(assert (=> d!75771 m!328823))

(assert (=> b!263250 d!75771))

(declare-fun bs!28843 () Bool)

(declare-fun b!263630 () Bool)

(assert (= bs!28843 (and b!263630 d!75711)))

(declare-fun lambda!8854 () Int)

(assert (=> bs!28843 (not (= lambda!8854 lambda!8844))))

(declare-fun bs!28844 () Bool)

(assert (= bs!28844 (and b!263630 b!263252)))

(assert (=> bs!28844 (not (= lambda!8854 lambda!8822))))

(declare-fun bs!28845 () Bool)

(assert (= bs!28845 (and b!263630 d!75699)))

(assert (=> bs!28845 (= lambda!8854 lambda!8830)))

(declare-fun bs!28846 () Bool)

(assert (= bs!28846 (and b!263630 b!263513)))

(assert (=> bs!28846 (= lambda!8854 lambda!8845)))

(declare-fun bs!28847 () Bool)

(assert (= bs!28847 (and b!263630 b!263615)))

(assert (=> bs!28847 (= lambda!8854 lambda!8853)))

(declare-fun b!263639 () Bool)

(declare-fun e!163698 () Bool)

(assert (=> b!263639 (= e!163698 true)))

(declare-fun b!263638 () Bool)

(declare-fun e!163697 () Bool)

(assert (=> b!263638 (= e!163697 e!163698)))

(declare-fun b!263637 () Bool)

(declare-fun e!163696 () Bool)

(assert (=> b!263637 (= e!163696 e!163697)))

(assert (=> b!263630 e!163696))

(assert (= b!263638 b!263639))

(assert (= b!263637 b!263638))

(assert (= (and b!263630 ((_ is Cons!3772) rules!1920)) b!263637))

(assert (=> b!263639 (< (dynLambda!1908 order!2869 (toValue!1446 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8854))))

(assert (=> b!263639 (< (dynLambda!1910 order!2873 (toChars!1305 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8854))))

(assert (=> b!263630 true))

(declare-fun b!263629 () Bool)

(declare-fun e!163695 () BalanceConc!2528)

(assert (=> b!263629 (= e!163695 (charsOf!364 separatorToken!170))))

(declare-fun e!163693 () List!3780)

(declare-fun e!163694 () List!3780)

(assert (=> b!263630 (= e!163693 e!163694)))

(declare-fun lt!107677 () Unit!4716)

(assert (=> b!263630 (= lt!107677 (forallContained!276 (t!37297 tokens!465) lambda!8854 (h!9168 (t!37297 tokens!465))))))

(declare-fun lt!107678 () List!3780)

(assert (=> b!263630 (= lt!107678 (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 (t!37297 (t!37297 tokens!465)) separatorToken!170))))

(declare-fun lt!107675 () Option!789)

(assert (=> b!263630 (= lt!107675 (maxPrefix!325 thiss!17480 rules!1920 (++!972 (list!1523 (charsOf!364 (h!9168 (t!37297 tokens!465)))) lt!107678)))))

(declare-fun c!49880 () Bool)

(assert (=> b!263630 (= c!49880 (and ((_ is Some!788) lt!107675) (= (_1!2327 (v!14633 lt!107675)) (h!9168 (t!37297 tokens!465)))))))

(declare-fun b!263631 () Bool)

(assert (=> b!263631 (= e!163693 Nil!3770)))

(declare-fun b!263632 () Bool)

(declare-fun e!163692 () List!3780)

(assert (=> b!263632 (= e!163692 Nil!3770)))

(assert (=> b!263632 (= (print!330 thiss!17480 (singletonSeq!265 (h!9168 (t!37297 tokens!465)))) (printTailRec!293 thiss!17480 (singletonSeq!265 (h!9168 (t!37297 tokens!465))) 0 (BalanceConc!2529 Empty!1260)))))

(declare-fun lt!107674 () Unit!4716)

(declare-fun Unit!4730 () Unit!4716)

(assert (=> b!263632 (= lt!107674 Unit!4730)))

(declare-fun call!14198 () List!3780)

(declare-fun lt!107679 () Unit!4716)

(assert (=> b!263632 (= lt!107679 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!102 thiss!17480 rules!1920 call!14198 lt!107678))))

(assert (=> b!263632 false))

(declare-fun lt!107676 () Unit!4716)

(declare-fun Unit!4731 () Unit!4716)

(assert (=> b!263632 (= lt!107676 Unit!4731)))

(declare-fun bm!14190 () Bool)

(declare-fun call!14199 () BalanceConc!2528)

(assert (=> bm!14190 (= call!14199 (charsOf!364 (h!9168 (t!37297 tokens!465))))))

(declare-fun bm!14191 () Bool)

(assert (=> bm!14191 (= call!14198 (list!1523 e!163695))))

(declare-fun c!49881 () Bool)

(declare-fun c!49878 () Bool)

(assert (=> bm!14191 (= c!49881 c!49878)))

(declare-fun b!263633 () Bool)

(declare-fun call!14196 () List!3780)

(assert (=> b!263633 (= e!163694 call!14196)))

(declare-fun call!14197 () List!3780)

(declare-fun bm!14192 () Bool)

(assert (=> bm!14192 (= call!14196 (++!972 call!14197 (ite c!49880 lt!107678 call!14198)))))

(declare-fun bm!14193 () Bool)

(declare-fun call!14195 () BalanceConc!2528)

(assert (=> bm!14193 (= call!14197 (list!1523 (ite c!49880 call!14199 call!14195)))))

(declare-fun d!75773 () Bool)

(declare-fun c!49879 () Bool)

(assert (=> d!75773 (= c!49879 ((_ is Cons!3771) (t!37297 tokens!465)))))

(assert (=> d!75773 (= (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 (t!37297 tokens!465) separatorToken!170) e!163693)))

(declare-fun b!263634 () Bool)

(assert (=> b!263634 (= c!49878 (and ((_ is Some!788) lt!107675) (not (= (_1!2327 (v!14633 lt!107675)) (h!9168 (t!37297 tokens!465))))))))

(assert (=> b!263634 (= e!163694 e!163692)))

(declare-fun b!263635 () Bool)

(assert (=> b!263635 (= e!163692 (++!972 call!14196 lt!107678))))

(declare-fun bm!14194 () Bool)

(assert (=> bm!14194 (= call!14195 call!14199)))

(declare-fun b!263636 () Bool)

(assert (=> b!263636 (= e!163695 call!14195)))

(assert (= (and d!75773 c!49879) b!263630))

(assert (= (and d!75773 (not c!49879)) b!263631))

(assert (= (and b!263630 c!49880) b!263633))

(assert (= (and b!263630 (not c!49880)) b!263634))

(assert (= (and b!263634 c!49878) b!263635))

(assert (= (and b!263634 (not c!49878)) b!263632))

(assert (= (or b!263635 b!263632) bm!14194))

(assert (= (or b!263635 b!263632) bm!14191))

(assert (= (and bm!14191 c!49881) b!263629))

(assert (= (and bm!14191 (not c!49881)) b!263636))

(assert (= (or b!263633 bm!14194) bm!14190))

(assert (= (or b!263633 b!263635) bm!14193))

(assert (= (or b!263633 b!263635) bm!14192))

(declare-fun m!328825 () Bool)

(assert (=> bm!14192 m!328825))

(declare-fun m!328827 () Bool)

(assert (=> b!263630 m!328827))

(declare-fun m!328829 () Bool)

(assert (=> b!263630 m!328829))

(declare-fun m!328831 () Bool)

(assert (=> b!263630 m!328831))

(declare-fun m!328833 () Bool)

(assert (=> b!263630 m!328833))

(declare-fun m!328835 () Bool)

(assert (=> b!263630 m!328835))

(assert (=> b!263630 m!328831))

(assert (=> b!263630 m!328833))

(assert (=> b!263630 m!328829))

(declare-fun m!328837 () Bool)

(assert (=> b!263630 m!328837))

(assert (=> b!263629 m!328311))

(declare-fun m!328839 () Bool)

(assert (=> b!263635 m!328839))

(assert (=> bm!14190 m!328829))

(declare-fun m!328841 () Bool)

(assert (=> bm!14193 m!328841))

(declare-fun m!328843 () Bool)

(assert (=> bm!14191 m!328843))

(declare-fun m!328845 () Bool)

(assert (=> b!263632 m!328845))

(assert (=> b!263632 m!328845))

(declare-fun m!328847 () Bool)

(assert (=> b!263632 m!328847))

(assert (=> b!263632 m!328845))

(declare-fun m!328849 () Bool)

(assert (=> b!263632 m!328849))

(declare-fun m!328851 () Bool)

(assert (=> b!263632 m!328851))

(assert (=> b!263250 d!75773))

(declare-fun bs!28848 () Bool)

(declare-fun d!75775 () Bool)

(assert (= bs!28848 (and d!75775 d!75711)))

(declare-fun lambda!8855 () Int)

(assert (=> bs!28848 (= lambda!8855 lambda!8844)))

(declare-fun bs!28849 () Bool)

(assert (= bs!28849 (and d!75775 b!263630)))

(assert (=> bs!28849 (not (= lambda!8855 lambda!8854))))

(declare-fun bs!28850 () Bool)

(assert (= bs!28850 (and d!75775 b!263252)))

(assert (=> bs!28850 (= lambda!8855 lambda!8822)))

(declare-fun bs!28851 () Bool)

(assert (= bs!28851 (and d!75775 d!75699)))

(assert (=> bs!28851 (not (= lambda!8855 lambda!8830))))

(declare-fun bs!28852 () Bool)

(assert (= bs!28852 (and d!75775 b!263513)))

(assert (=> bs!28852 (not (= lambda!8855 lambda!8845))))

(declare-fun bs!28853 () Bool)

(assert (= bs!28853 (and d!75775 b!263615)))

(assert (=> bs!28853 (not (= lambda!8855 lambda!8853))))

(declare-fun bs!28854 () Bool)

(declare-fun b!263643 () Bool)

(assert (= bs!28854 (and b!263643 d!75775)))

(declare-fun lambda!8856 () Int)

(assert (=> bs!28854 (not (= lambda!8856 lambda!8855))))

(declare-fun bs!28855 () Bool)

(assert (= bs!28855 (and b!263643 d!75711)))

(assert (=> bs!28855 (not (= lambda!8856 lambda!8844))))

(declare-fun bs!28856 () Bool)

(assert (= bs!28856 (and b!263643 b!263630)))

(assert (=> bs!28856 (= lambda!8856 lambda!8854)))

(declare-fun bs!28857 () Bool)

(assert (= bs!28857 (and b!263643 b!263252)))

(assert (=> bs!28857 (not (= lambda!8856 lambda!8822))))

(declare-fun bs!28858 () Bool)

(assert (= bs!28858 (and b!263643 d!75699)))

(assert (=> bs!28858 (= lambda!8856 lambda!8830)))

(declare-fun bs!28859 () Bool)

(assert (= bs!28859 (and b!263643 b!263513)))

(assert (=> bs!28859 (= lambda!8856 lambda!8845)))

(declare-fun bs!28860 () Bool)

(assert (= bs!28860 (and b!263643 b!263615)))

(assert (=> bs!28860 (= lambda!8856 lambda!8853)))

(declare-fun b!263653 () Bool)

(declare-fun e!163708 () Bool)

(assert (=> b!263653 (= e!163708 true)))

(declare-fun b!263652 () Bool)

(declare-fun e!163707 () Bool)

(assert (=> b!263652 (= e!163707 e!163708)))

(declare-fun b!263651 () Bool)

(declare-fun e!163706 () Bool)

(assert (=> b!263651 (= e!163706 e!163707)))

(assert (=> b!263643 e!163706))

(assert (= b!263652 b!263653))

(assert (= b!263651 b!263652))

(assert (= (and b!263643 ((_ is Cons!3772) rules!1920)) b!263651))

(assert (=> b!263653 (< (dynLambda!1908 order!2869 (toValue!1446 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8856))))

(assert (=> b!263653 (< (dynLambda!1910 order!2873 (toChars!1305 (transformation!719 (h!9169 rules!1920)))) (dynLambda!1909 order!2871 lambda!8856))))

(assert (=> b!263643 true))

(declare-fun bm!14195 () Bool)

(declare-fun c!49882 () Bool)

(declare-fun c!49885 () Bool)

(assert (=> bm!14195 (= c!49882 c!49885)))

(declare-fun e!163701 () BalanceConc!2528)

(declare-fun lt!107682 () BalanceConc!2528)

(declare-fun call!14203 () BalanceConc!2528)

(declare-fun call!14204 () BalanceConc!2528)

(assert (=> bm!14195 (= call!14203 (++!974 e!163701 (ite c!49885 lt!107682 call!14204)))))

(declare-fun b!263641 () Bool)

(declare-fun e!163702 () BalanceConc!2528)

(assert (=> b!263641 (= e!163702 (++!974 call!14203 lt!107682))))

(declare-fun b!263642 () Bool)

(declare-fun e!163703 () BalanceConc!2528)

(assert (=> b!263642 (= e!163703 call!14203)))

(declare-fun e!163699 () BalanceConc!2528)

(assert (=> b!263643 (= e!163699 e!163703)))

(declare-fun lt!107681 () List!3781)

(assert (=> b!263643 (= lt!107681 (list!1526 (seqFromList!805 (t!37297 tokens!465))))))

(declare-fun lt!107683 () Unit!4716)

(assert (=> b!263643 (= lt!107683 (lemmaDropApply!194 lt!107681 0))))

(assert (=> b!263643 (= (head!878 (drop!207 lt!107681 0)) (apply!741 lt!107681 0))))

(declare-fun lt!107687 () Unit!4716)

(assert (=> b!263643 (= lt!107687 lt!107683)))

(declare-fun lt!107691 () List!3781)

(assert (=> b!263643 (= lt!107691 (list!1526 (seqFromList!805 (t!37297 tokens!465))))))

(declare-fun lt!107690 () Unit!4716)

(assert (=> b!263643 (= lt!107690 (lemmaDropTail!186 lt!107691 0))))

(assert (=> b!263643 (= (tail!468 (drop!207 lt!107691 0)) (drop!207 lt!107691 (+ 0 1)))))

(declare-fun lt!107692 () Unit!4716)

(assert (=> b!263643 (= lt!107692 lt!107690)))

(declare-fun lt!107689 () Unit!4716)

(assert (=> b!263643 (= lt!107689 (forallContained!276 (list!1526 (seqFromList!805 (t!37297 tokens!465))) lambda!8856 (apply!742 (seqFromList!805 (t!37297 tokens!465)) 0)))))

(assert (=> b!263643 (= lt!107682 (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 (seqFromList!805 (t!37297 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!107684 () Option!788)

(assert (=> b!263643 (= lt!107684 (maxPrefixZipperSequence!288 thiss!17480 rules!1920 (++!974 (charsOf!364 (apply!742 (seqFromList!805 (t!37297 tokens!465)) 0)) lt!107682)))))

(declare-fun res!121062 () Bool)

(assert (=> b!263643 (= res!121062 ((_ is Some!787) lt!107684))))

(declare-fun e!163700 () Bool)

(assert (=> b!263643 (=> (not res!121062) (not e!163700))))

(assert (=> b!263643 (= c!49885 e!163700)))

(declare-fun b!263644 () Bool)

(declare-fun call!14201 () Token!1182)

(assert (=> b!263644 (= e!163701 (charsOf!364 call!14201))))

(declare-fun b!263645 () Bool)

(declare-fun e!163705 () Bool)

(assert (=> b!263645 (= e!163705 (<= 0 (size!3003 (seqFromList!805 (t!37297 tokens!465)))))))

(declare-fun b!263646 () Bool)

(declare-fun e!163704 () Bool)

(declare-fun call!14200 () Token!1182)

(assert (=> b!263646 (= e!163704 (not (= (_1!2326 (v!14632 lt!107684)) call!14200)))))

(declare-fun b!263647 () Bool)

(assert (=> b!263647 (= e!163702 (BalanceConc!2529 Empty!1260))))

(assert (=> b!263647 (= (print!330 thiss!17480 (singletonSeq!265 call!14201)) (printTailRec!293 thiss!17480 (singletonSeq!265 call!14201) 0 (BalanceConc!2529 Empty!1260)))))

(declare-fun lt!107693 () Unit!4716)

(declare-fun Unit!4732 () Unit!4716)

(assert (=> b!263647 (= lt!107693 Unit!4732)))

(declare-fun lt!107680 () Unit!4716)

(assert (=> b!263647 (= lt!107680 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!102 thiss!17480 rules!1920 (list!1523 call!14204) (list!1523 lt!107682)))))

(assert (=> b!263647 false))

(declare-fun lt!107686 () Unit!4716)

(declare-fun Unit!4733 () Unit!4716)

(assert (=> b!263647 (= lt!107686 Unit!4733)))

(declare-fun b!263648 () Bool)

(assert (=> b!263648 (= e!163700 (= (_1!2326 (v!14632 lt!107684)) (apply!742 (seqFromList!805 (t!37297 tokens!465)) 0)))))

(declare-fun c!49883 () Bool)

(declare-fun bm!14196 () Bool)

(declare-fun call!14202 () BalanceConc!2528)

(assert (=> bm!14196 (= call!14202 (charsOf!364 (ite c!49885 call!14200 (ite c!49883 separatorToken!170 call!14201))))))

(declare-fun b!263649 () Bool)

(assert (=> b!263649 (= e!163701 call!14202)))

(declare-fun b!263650 () Bool)

(assert (=> b!263650 (= e!163699 (BalanceConc!2529 Empty!1260))))

(declare-fun bm!14197 () Bool)

(assert (=> bm!14197 (= call!14201 call!14200)))

(declare-fun b!263640 () Bool)

(assert (=> b!263640 (= c!49883 e!163704)))

(declare-fun res!121060 () Bool)

(assert (=> b!263640 (=> (not res!121060) (not e!163704))))

(assert (=> b!263640 (= res!121060 ((_ is Some!787) lt!107684))))

(assert (=> b!263640 (= e!163703 e!163702)))

(declare-fun lt!107688 () BalanceConc!2528)

(assert (=> d!75775 (= (list!1523 lt!107688) (printWithSeparatorTokenWhenNeededList!288 thiss!17480 rules!1920 (dropList!154 (seqFromList!805 (t!37297 tokens!465)) 0) separatorToken!170))))

(assert (=> d!75775 (= lt!107688 e!163699)))

(declare-fun c!49884 () Bool)

(assert (=> d!75775 (= c!49884 (>= 0 (size!3003 (seqFromList!805 (t!37297 tokens!465)))))))

(declare-fun lt!107685 () Unit!4716)

(assert (=> d!75775 (= lt!107685 (lemmaContentSubsetPreservesForall!98 (list!1526 (seqFromList!805 (t!37297 tokens!465))) (dropList!154 (seqFromList!805 (t!37297 tokens!465)) 0) lambda!8855))))

(assert (=> d!75775 e!163705))

(declare-fun res!121061 () Bool)

(assert (=> d!75775 (=> (not res!121061) (not e!163705))))

(assert (=> d!75775 (= res!121061 (>= 0 0))))

(assert (=> d!75775 (= (printWithSeparatorTokenWhenNeededRec!280 thiss!17480 rules!1920 (seqFromList!805 (t!37297 tokens!465)) separatorToken!170 0) lt!107688)))

(declare-fun bm!14198 () Bool)

(assert (=> bm!14198 (= call!14204 call!14202)))

(declare-fun bm!14199 () Bool)

(assert (=> bm!14199 (= call!14200 (apply!742 (seqFromList!805 (t!37297 tokens!465)) 0))))

(assert (= (and d!75775 res!121061) b!263645))

(assert (= (and d!75775 c!49884) b!263650))

(assert (= (and d!75775 (not c!49884)) b!263643))

(assert (= (and b!263643 res!121062) b!263648))

(assert (= (and b!263643 c!49885) b!263642))

(assert (= (and b!263643 (not c!49885)) b!263640))

(assert (= (and b!263640 res!121060) b!263646))

(assert (= (and b!263640 c!49883) b!263641))

(assert (= (and b!263640 (not c!49883)) b!263647))

(assert (= (or b!263641 b!263647) bm!14197))

(assert (= (or b!263641 b!263647) bm!14198))

(assert (= (or b!263642 bm!14197 b!263646) bm!14199))

(assert (= (or b!263642 bm!14198) bm!14196))

(assert (= (or b!263642 b!263641) bm!14195))

(assert (= (and bm!14195 c!49882) b!263649))

(assert (= (and bm!14195 (not c!49882)) b!263644))

(declare-fun m!328853 () Bool)

(assert (=> b!263647 m!328853))

(declare-fun m!328855 () Bool)

(assert (=> b!263647 m!328855))

(declare-fun m!328857 () Bool)

(assert (=> b!263647 m!328857))

(declare-fun m!328859 () Bool)

(assert (=> b!263647 m!328859))

(assert (=> b!263647 m!328859))

(declare-fun m!328861 () Bool)

(assert (=> b!263647 m!328861))

(assert (=> b!263647 m!328855))

(assert (=> b!263647 m!328859))

(declare-fun m!328863 () Bool)

(assert (=> b!263647 m!328863))

(assert (=> b!263647 m!328853))

(declare-fun m!328865 () Bool)

(assert (=> bm!14196 m!328865))

(assert (=> bm!14199 m!328303))

(declare-fun m!328867 () Bool)

(assert (=> bm!14199 m!328867))

(declare-fun m!328869 () Bool)

(assert (=> b!263643 m!328869))

(declare-fun m!328871 () Bool)

(assert (=> b!263643 m!328871))

(declare-fun m!328873 () Bool)

(assert (=> b!263643 m!328873))

(assert (=> b!263643 m!328303))

(assert (=> b!263643 m!328867))

(declare-fun m!328875 () Bool)

(assert (=> b!263643 m!328875))

(declare-fun m!328877 () Bool)

(assert (=> b!263643 m!328877))

(declare-fun m!328879 () Bool)

(assert (=> b!263643 m!328879))

(assert (=> b!263643 m!328867))

(declare-fun m!328881 () Bool)

(assert (=> b!263643 m!328881))

(declare-fun m!328883 () Bool)

(assert (=> b!263643 m!328883))

(declare-fun m!328885 () Bool)

(assert (=> b!263643 m!328885))

(declare-fun m!328887 () Bool)

(assert (=> b!263643 m!328887))

(assert (=> b!263643 m!328885))

(declare-fun m!328889 () Bool)

(assert (=> b!263643 m!328889))

(assert (=> b!263643 m!328877))

(declare-fun m!328891 () Bool)

(assert (=> b!263643 m!328891))

(assert (=> b!263643 m!328869))

(assert (=> b!263643 m!328303))

(assert (=> b!263643 m!328879))

(declare-fun m!328893 () Bool)

(assert (=> b!263643 m!328893))

(assert (=> b!263643 m!328867))

(assert (=> b!263643 m!328875))

(assert (=> b!263643 m!328303))

(declare-fun m!328895 () Bool)

(assert (=> b!263643 m!328895))

(assert (=> b!263645 m!328303))

(declare-fun m!328897 () Bool)

(assert (=> b!263645 m!328897))

(assert (=> b!263648 m!328303))

(assert (=> b!263648 m!328867))

(declare-fun m!328899 () Bool)

(assert (=> bm!14195 m!328899))

(declare-fun m!328901 () Bool)

(assert (=> b!263641 m!328901))

(assert (=> d!75775 m!328303))

(assert (=> d!75775 m!328897))

(assert (=> d!75775 m!328303))

(declare-fun m!328903 () Bool)

(assert (=> d!75775 m!328903))

(assert (=> d!75775 m!328903))

(declare-fun m!328905 () Bool)

(assert (=> d!75775 m!328905))

(declare-fun m!328907 () Bool)

(assert (=> d!75775 m!328907))

(assert (=> d!75775 m!328303))

(assert (=> d!75775 m!328879))

(assert (=> d!75775 m!328879))

(assert (=> d!75775 m!328903))

(declare-fun m!328909 () Bool)

(assert (=> d!75775 m!328909))

(declare-fun m!328911 () Bool)

(assert (=> b!263644 m!328911))

(assert (=> b!263250 d!75775))

(declare-fun d!75777 () Bool)

(declare-fun lt!107696 () BalanceConc!2528)

(assert (=> d!75777 (= (list!1523 lt!107696) (originalCharacters!762 separatorToken!170))))

(declare-fun dynLambda!1911 (Int TokenValue!741) BalanceConc!2528)

(assert (=> d!75777 (= lt!107696 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (value!24807 separatorToken!170)))))

(assert (=> d!75777 (= (charsOf!364 separatorToken!170) lt!107696)))

(declare-fun b_lambda!8165 () Bool)

(assert (=> (not b_lambda!8165) (not d!75777)))

(declare-fun tb!14409 () Bool)

(declare-fun t!37341 () Bool)

(assert (=> (and b!263256 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170)))) t!37341) tb!14409))

(declare-fun b!263658 () Bool)

(declare-fun e!163711 () Bool)

(declare-fun tp!101008 () Bool)

(declare-fun inv!4663 (Conc!1260) Bool)

(assert (=> b!263658 (= e!163711 (and (inv!4663 (c!49796 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (value!24807 separatorToken!170)))) tp!101008))))

(declare-fun result!17914 () Bool)

(declare-fun inv!4664 (BalanceConc!2528) Bool)

(assert (=> tb!14409 (= result!17914 (and (inv!4664 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (value!24807 separatorToken!170))) e!163711))))

(assert (= tb!14409 b!263658))

(declare-fun m!328913 () Bool)

(assert (=> b!263658 m!328913))

(declare-fun m!328915 () Bool)

(assert (=> tb!14409 m!328915))

(assert (=> d!75777 t!37341))

(declare-fun b_and!20585 () Bool)

(assert (= b_and!20543 (and (=> t!37341 result!17914) b_and!20585)))

(declare-fun t!37343 () Bool)

(declare-fun tb!14411 () Bool)

(assert (=> (and b!263265 (= (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170)))) t!37343) tb!14411))

(declare-fun result!17918 () Bool)

(assert (= result!17918 result!17914))

(assert (=> d!75777 t!37343))

(declare-fun b_and!20587 () Bool)

(assert (= b_and!20547 (and (=> t!37343 result!17918) b_and!20587)))

(declare-fun tb!14413 () Bool)

(declare-fun t!37345 () Bool)

(assert (=> (and b!263259 (= (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170)))) t!37345) tb!14413))

(declare-fun result!17920 () Bool)

(assert (= result!17920 result!17914))

(assert (=> d!75777 t!37345))

(declare-fun b_and!20589 () Bool)

(assert (= b_and!20551 (and (=> t!37345 result!17920) b_and!20589)))

(declare-fun m!328917 () Bool)

(assert (=> d!75777 m!328917))

(declare-fun m!328919 () Bool)

(assert (=> d!75777 m!328919))

(assert (=> b!263250 d!75777))

(declare-fun d!75779 () Bool)

(assert (=> d!75779 (= (list!1523 (charsOf!364 (h!9168 tokens!465))) (list!1527 (c!49796 (charsOf!364 (h!9168 tokens!465)))))))

(declare-fun bs!28861 () Bool)

(assert (= bs!28861 d!75779))

(declare-fun m!328921 () Bool)

(assert (=> bs!28861 m!328921))

(assert (=> b!263250 d!75779))

(declare-fun d!75781 () Bool)

(declare-fun lt!107697 () BalanceConc!2528)

(assert (=> d!75781 (= (list!1523 lt!107697) (originalCharacters!762 (h!9168 tokens!465)))))

(assert (=> d!75781 (= lt!107697 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (value!24807 (h!9168 tokens!465))))))

(assert (=> d!75781 (= (charsOf!364 (h!9168 tokens!465)) lt!107697)))

(declare-fun b_lambda!8167 () Bool)

(assert (=> (not b_lambda!8167) (not d!75781)))

(declare-fun t!37347 () Bool)

(declare-fun tb!14415 () Bool)

(assert (=> (and b!263256 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465))))) t!37347) tb!14415))

(declare-fun b!263659 () Bool)

(declare-fun e!163712 () Bool)

(declare-fun tp!101009 () Bool)

(assert (=> b!263659 (= e!163712 (and (inv!4663 (c!49796 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (value!24807 (h!9168 tokens!465))))) tp!101009))))

(declare-fun result!17922 () Bool)

(assert (=> tb!14415 (= result!17922 (and (inv!4664 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (value!24807 (h!9168 tokens!465)))) e!163712))))

(assert (= tb!14415 b!263659))

(declare-fun m!328923 () Bool)

(assert (=> b!263659 m!328923))

(declare-fun m!328925 () Bool)

(assert (=> tb!14415 m!328925))

(assert (=> d!75781 t!37347))

(declare-fun b_and!20591 () Bool)

(assert (= b_and!20585 (and (=> t!37347 result!17922) b_and!20591)))

(declare-fun tb!14417 () Bool)

(declare-fun t!37349 () Bool)

(assert (=> (and b!263265 (= (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465))))) t!37349) tb!14417))

(declare-fun result!17924 () Bool)

(assert (= result!17924 result!17922))

(assert (=> d!75781 t!37349))

(declare-fun b_and!20593 () Bool)

(assert (= b_and!20587 (and (=> t!37349 result!17924) b_and!20593)))

(declare-fun t!37351 () Bool)

(declare-fun tb!14419 () Bool)

(assert (=> (and b!263259 (= (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465))))) t!37351) tb!14419))

(declare-fun result!17926 () Bool)

(assert (= result!17926 result!17922))

(assert (=> d!75781 t!37351))

(declare-fun b_and!20595 () Bool)

(assert (= b_and!20589 (and (=> t!37351 result!17926) b_and!20595)))

(declare-fun m!328927 () Bool)

(assert (=> d!75781 m!328927))

(declare-fun m!328929 () Bool)

(assert (=> d!75781 m!328929))

(assert (=> b!263250 d!75781))

(declare-fun e!163714 () List!3780)

(declare-fun b!263661 () Bool)

(assert (=> b!263661 (= e!163714 (Cons!3770 (h!9167 (++!972 lt!107496 lt!107499)) (++!972 (t!37296 (++!972 lt!107496 lt!107499)) lt!107493)))))

(declare-fun b!263662 () Bool)

(declare-fun res!121064 () Bool)

(declare-fun e!163713 () Bool)

(assert (=> b!263662 (=> (not res!121064) (not e!163713))))

(declare-fun lt!107698 () List!3780)

(assert (=> b!263662 (= res!121064 (= (size!3002 lt!107698) (+ (size!3002 (++!972 lt!107496 lt!107499)) (size!3002 lt!107493))))))

(declare-fun d!75783 () Bool)

(assert (=> d!75783 e!163713))

(declare-fun res!121063 () Bool)

(assert (=> d!75783 (=> (not res!121063) (not e!163713))))

(assert (=> d!75783 (= res!121063 (= (content!535 lt!107698) ((_ map or) (content!535 (++!972 lt!107496 lt!107499)) (content!535 lt!107493))))))

(assert (=> d!75783 (= lt!107698 e!163714)))

(declare-fun c!49886 () Bool)

(assert (=> d!75783 (= c!49886 ((_ is Nil!3770) (++!972 lt!107496 lt!107499)))))

(assert (=> d!75783 (= (++!972 (++!972 lt!107496 lt!107499) lt!107493) lt!107698)))

(declare-fun b!263660 () Bool)

(assert (=> b!263660 (= e!163714 lt!107493)))

(declare-fun b!263663 () Bool)

(assert (=> b!263663 (= e!163713 (or (not (= lt!107493 Nil!3770)) (= lt!107698 (++!972 lt!107496 lt!107499))))))

(assert (= (and d!75783 c!49886) b!263660))

(assert (= (and d!75783 (not c!49886)) b!263661))

(assert (= (and d!75783 res!121063) b!263662))

(assert (= (and b!263662 res!121064) b!263663))

(declare-fun m!328931 () Bool)

(assert (=> b!263661 m!328931))

(declare-fun m!328933 () Bool)

(assert (=> b!263662 m!328933))

(assert (=> b!263662 m!328305))

(declare-fun m!328935 () Bool)

(assert (=> b!263662 m!328935))

(assert (=> b!263662 m!328413))

(declare-fun m!328937 () Bool)

(assert (=> d!75783 m!328937))

(assert (=> d!75783 m!328305))

(declare-fun m!328939 () Bool)

(assert (=> d!75783 m!328939))

(assert (=> d!75783 m!328419))

(assert (=> b!263250 d!75783))

(declare-fun b!263665 () Bool)

(declare-fun e!163716 () List!3780)

(assert (=> b!263665 (= e!163716 (Cons!3770 (h!9167 lt!107499) (++!972 (t!37296 lt!107499) lt!107493)))))

(declare-fun b!263666 () Bool)

(declare-fun res!121066 () Bool)

(declare-fun e!163715 () Bool)

(assert (=> b!263666 (=> (not res!121066) (not e!163715))))

(declare-fun lt!107699 () List!3780)

(assert (=> b!263666 (= res!121066 (= (size!3002 lt!107699) (+ (size!3002 lt!107499) (size!3002 lt!107493))))))

(declare-fun d!75785 () Bool)

(assert (=> d!75785 e!163715))

(declare-fun res!121065 () Bool)

(assert (=> d!75785 (=> (not res!121065) (not e!163715))))

(assert (=> d!75785 (= res!121065 (= (content!535 lt!107699) ((_ map or) (content!535 lt!107499) (content!535 lt!107493))))))

(assert (=> d!75785 (= lt!107699 e!163716)))

(declare-fun c!49887 () Bool)

(assert (=> d!75785 (= c!49887 ((_ is Nil!3770) lt!107499))))

(assert (=> d!75785 (= (++!972 lt!107499 lt!107493) lt!107699)))

(declare-fun b!263664 () Bool)

(assert (=> b!263664 (= e!163716 lt!107493)))

(declare-fun b!263667 () Bool)

(assert (=> b!263667 (= e!163715 (or (not (= lt!107493 Nil!3770)) (= lt!107699 lt!107499)))))

(assert (= (and d!75785 c!49887) b!263664))

(assert (= (and d!75785 (not c!49887)) b!263665))

(assert (= (and d!75785 res!121065) b!263666))

(assert (= (and b!263666 res!121066) b!263667))

(declare-fun m!328941 () Bool)

(assert (=> b!263665 m!328941))

(declare-fun m!328943 () Bool)

(assert (=> b!263666 m!328943))

(declare-fun m!328945 () Bool)

(assert (=> b!263666 m!328945))

(assert (=> b!263666 m!328413))

(declare-fun m!328947 () Bool)

(assert (=> d!75785 m!328947))

(declare-fun m!328949 () Bool)

(assert (=> d!75785 m!328949))

(assert (=> d!75785 m!328419))

(assert (=> b!263250 d!75785))

(declare-fun b!263669 () Bool)

(declare-fun e!163718 () List!3780)

(assert (=> b!263669 (= e!163718 (Cons!3770 (h!9167 lt!107496) (++!972 (t!37296 lt!107496) lt!107499)))))

(declare-fun b!263670 () Bool)

(declare-fun res!121068 () Bool)

(declare-fun e!163717 () Bool)

(assert (=> b!263670 (=> (not res!121068) (not e!163717))))

(declare-fun lt!107700 () List!3780)

(assert (=> b!263670 (= res!121068 (= (size!3002 lt!107700) (+ (size!3002 lt!107496) (size!3002 lt!107499))))))

(declare-fun d!75787 () Bool)

(assert (=> d!75787 e!163717))

(declare-fun res!121067 () Bool)

(assert (=> d!75787 (=> (not res!121067) (not e!163717))))

(assert (=> d!75787 (= res!121067 (= (content!535 lt!107700) ((_ map or) (content!535 lt!107496) (content!535 lt!107499))))))

(assert (=> d!75787 (= lt!107700 e!163718)))

(declare-fun c!49888 () Bool)

(assert (=> d!75787 (= c!49888 ((_ is Nil!3770) lt!107496))))

(assert (=> d!75787 (= (++!972 lt!107496 lt!107499) lt!107700)))

(declare-fun b!263668 () Bool)

(assert (=> b!263668 (= e!163718 lt!107499)))

(declare-fun b!263671 () Bool)

(assert (=> b!263671 (= e!163717 (or (not (= lt!107499 Nil!3770)) (= lt!107700 lt!107496)))))

(assert (= (and d!75787 c!49888) b!263668))

(assert (= (and d!75787 (not c!49888)) b!263669))

(assert (= (and d!75787 res!121067) b!263670))

(assert (= (and b!263670 res!121068) b!263671))

(declare-fun m!328951 () Bool)

(assert (=> b!263669 m!328951))

(declare-fun m!328953 () Bool)

(assert (=> b!263670 m!328953))

(assert (=> b!263670 m!328411))

(assert (=> b!263670 m!328945))

(declare-fun m!328955 () Bool)

(assert (=> d!75787 m!328955))

(assert (=> d!75787 m!328417))

(assert (=> d!75787 m!328949))

(assert (=> b!263250 d!75787))

(declare-fun d!75789 () Bool)

(assert (=> d!75789 (= (inv!4656 (tag!929 (h!9169 rules!1920))) (= (mod (str.len (value!24806 (tag!929 (h!9169 rules!1920)))) 2) 0))))

(assert (=> b!263261 d!75789))

(declare-fun d!75791 () Bool)

(declare-fun res!121069 () Bool)

(declare-fun e!163719 () Bool)

(assert (=> d!75791 (=> (not res!121069) (not e!163719))))

(assert (=> d!75791 (= res!121069 (semiInverseModEq!249 (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toValue!1446 (transformation!719 (h!9169 rules!1920)))))))

(assert (=> d!75791 (= (inv!4660 (transformation!719 (h!9169 rules!1920))) e!163719)))

(declare-fun b!263672 () Bool)

(assert (=> b!263672 (= e!163719 (equivClasses!232 (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toValue!1446 (transformation!719 (h!9169 rules!1920)))))))

(assert (= (and d!75791 res!121069) b!263672))

(declare-fun m!328957 () Bool)

(assert (=> d!75791 m!328957))

(declare-fun m!328959 () Bool)

(assert (=> b!263672 m!328959))

(assert (=> b!263261 d!75791))

(declare-fun b!263683 () Bool)

(declare-fun e!163726 () Bool)

(declare-fun e!163728 () Bool)

(assert (=> b!263683 (= e!163726 e!163728)))

(declare-fun c!49894 () Bool)

(assert (=> b!263683 (= c!49894 ((_ is IntegerValue!2224) (value!24807 (h!9168 tokens!465))))))

(declare-fun d!75793 () Bool)

(declare-fun c!49893 () Bool)

(assert (=> d!75793 (= c!49893 ((_ is IntegerValue!2223) (value!24807 (h!9168 tokens!465))))))

(assert (=> d!75793 (= (inv!21 (value!24807 (h!9168 tokens!465))) e!163726)))

(declare-fun b!263684 () Bool)

(declare-fun res!121072 () Bool)

(declare-fun e!163727 () Bool)

(assert (=> b!263684 (=> res!121072 e!163727)))

(assert (=> b!263684 (= res!121072 (not ((_ is IntegerValue!2225) (value!24807 (h!9168 tokens!465)))))))

(assert (=> b!263684 (= e!163728 e!163727)))

(declare-fun b!263685 () Bool)

(declare-fun inv!15 (TokenValue!741) Bool)

(assert (=> b!263685 (= e!163727 (inv!15 (value!24807 (h!9168 tokens!465))))))

(declare-fun b!263686 () Bool)

(declare-fun inv!17 (TokenValue!741) Bool)

(assert (=> b!263686 (= e!163728 (inv!17 (value!24807 (h!9168 tokens!465))))))

(declare-fun b!263687 () Bool)

(declare-fun inv!16 (TokenValue!741) Bool)

(assert (=> b!263687 (= e!163726 (inv!16 (value!24807 (h!9168 tokens!465))))))

(assert (= (and d!75793 c!49893) b!263687))

(assert (= (and d!75793 (not c!49893)) b!263683))

(assert (= (and b!263683 c!49894) b!263686))

(assert (= (and b!263683 (not c!49894)) b!263684))

(assert (= (and b!263684 (not res!121072)) b!263685))

(declare-fun m!328961 () Bool)

(assert (=> b!263685 m!328961))

(declare-fun m!328963 () Bool)

(assert (=> b!263686 m!328963))

(declare-fun m!328965 () Bool)

(assert (=> b!263687 m!328965))

(assert (=> b!263260 d!75793))

(declare-fun d!75795 () Bool)

(declare-fun res!121077 () Bool)

(declare-fun e!163731 () Bool)

(assert (=> d!75795 (=> (not res!121077) (not e!163731))))

(declare-fun isEmpty!2373 (List!3780) Bool)

(assert (=> d!75795 (= res!121077 (not (isEmpty!2373 (originalCharacters!762 (h!9168 tokens!465)))))))

(assert (=> d!75795 (= (inv!4659 (h!9168 tokens!465)) e!163731)))

(declare-fun b!263692 () Bool)

(declare-fun res!121078 () Bool)

(assert (=> b!263692 (=> (not res!121078) (not e!163731))))

(assert (=> b!263692 (= res!121078 (= (originalCharacters!762 (h!9168 tokens!465)) (list!1523 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (value!24807 (h!9168 tokens!465))))))))

(declare-fun b!263693 () Bool)

(assert (=> b!263693 (= e!163731 (= (size!2999 (h!9168 tokens!465)) (size!3002 (originalCharacters!762 (h!9168 tokens!465)))))))

(assert (= (and d!75795 res!121077) b!263692))

(assert (= (and b!263692 res!121078) b!263693))

(declare-fun b_lambda!8169 () Bool)

(assert (=> (not b_lambda!8169) (not b!263692)))

(assert (=> b!263692 t!37347))

(declare-fun b_and!20597 () Bool)

(assert (= b_and!20591 (and (=> t!37347 result!17922) b_and!20597)))

(assert (=> b!263692 t!37349))

(declare-fun b_and!20599 () Bool)

(assert (= b_and!20593 (and (=> t!37349 result!17924) b_and!20599)))

(assert (=> b!263692 t!37351))

(declare-fun b_and!20601 () Bool)

(assert (= b_and!20595 (and (=> t!37351 result!17926) b_and!20601)))

(declare-fun m!328967 () Bool)

(assert (=> d!75795 m!328967))

(assert (=> b!263692 m!328929))

(assert (=> b!263692 m!328929))

(declare-fun m!328969 () Bool)

(assert (=> b!263692 m!328969))

(declare-fun m!328971 () Bool)

(assert (=> b!263693 m!328971))

(assert (=> b!263249 d!75795))

(declare-fun d!75797 () Bool)

(declare-fun res!121079 () Bool)

(declare-fun e!163732 () Bool)

(assert (=> d!75797 (=> (not res!121079) (not e!163732))))

(assert (=> d!75797 (= res!121079 (not (isEmpty!2373 (originalCharacters!762 separatorToken!170))))))

(assert (=> d!75797 (= (inv!4659 separatorToken!170) e!163732)))

(declare-fun b!263694 () Bool)

(declare-fun res!121080 () Bool)

(assert (=> b!263694 (=> (not res!121080) (not e!163732))))

(assert (=> b!263694 (= res!121080 (= (originalCharacters!762 separatorToken!170) (list!1523 (dynLambda!1911 (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (value!24807 separatorToken!170)))))))

(declare-fun b!263695 () Bool)

(assert (=> b!263695 (= e!163732 (= (size!2999 separatorToken!170) (size!3002 (originalCharacters!762 separatorToken!170))))))

(assert (= (and d!75797 res!121079) b!263694))

(assert (= (and b!263694 res!121080) b!263695))

(declare-fun b_lambda!8171 () Bool)

(assert (=> (not b_lambda!8171) (not b!263694)))

(assert (=> b!263694 t!37341))

(declare-fun b_and!20603 () Bool)

(assert (= b_and!20597 (and (=> t!37341 result!17914) b_and!20603)))

(assert (=> b!263694 t!37343))

(declare-fun b_and!20605 () Bool)

(assert (= b_and!20599 (and (=> t!37343 result!17918) b_and!20605)))

(assert (=> b!263694 t!37345))

(declare-fun b_and!20607 () Bool)

(assert (= b_and!20601 (and (=> t!37345 result!17920) b_and!20607)))

(declare-fun m!328973 () Bool)

(assert (=> d!75797 m!328973))

(assert (=> b!263694 m!328919))

(assert (=> b!263694 m!328919))

(declare-fun m!328975 () Bool)

(assert (=> b!263694 m!328975))

(declare-fun m!328977 () Bool)

(assert (=> b!263695 m!328977))

(assert (=> start!28182 d!75797))

(declare-fun d!75799 () Bool)

(declare-fun lt!107706 () Bool)

(declare-fun e!163738 () Bool)

(assert (=> d!75799 (= lt!107706 e!163738)))

(declare-fun res!121088 () Bool)

(assert (=> d!75799 (=> (not res!121088) (not e!163738))))

(declare-datatypes ((tuple2!4226 0))(
  ( (tuple2!4227 (_1!2329 BalanceConc!2530) (_2!2329 BalanceConc!2528)) )
))
(declare-fun lex!399 (LexerInterface!605 List!3782 BalanceConc!2528) tuple2!4226)

(assert (=> d!75799 (= res!121088 (= (list!1526 (_1!2329 (lex!399 thiss!17480 rules!1920 (print!330 thiss!17480 (singletonSeq!265 separatorToken!170))))) (list!1526 (singletonSeq!265 separatorToken!170))))))

(declare-fun e!163737 () Bool)

(assert (=> d!75799 (= lt!107706 e!163737)))

(declare-fun res!121087 () Bool)

(assert (=> d!75799 (=> (not res!121087) (not e!163737))))

(declare-fun lt!107705 () tuple2!4226)

(assert (=> d!75799 (= res!121087 (= (size!3003 (_1!2329 lt!107705)) 1))))

(assert (=> d!75799 (= lt!107705 (lex!399 thiss!17480 rules!1920 (print!330 thiss!17480 (singletonSeq!265 separatorToken!170))))))

(assert (=> d!75799 (not (isEmpty!2370 rules!1920))))

(assert (=> d!75799 (= (rulesProduceIndividualToken!354 thiss!17480 rules!1920 separatorToken!170) lt!107706)))

(declare-fun b!263702 () Bool)

(declare-fun res!121089 () Bool)

(assert (=> b!263702 (=> (not res!121089) (not e!163737))))

(assert (=> b!263702 (= res!121089 (= (apply!742 (_1!2329 lt!107705) 0) separatorToken!170))))

(declare-fun b!263703 () Bool)

(declare-fun isEmpty!2374 (BalanceConc!2528) Bool)

(assert (=> b!263703 (= e!163737 (isEmpty!2374 (_2!2329 lt!107705)))))

(declare-fun b!263704 () Bool)

(assert (=> b!263704 (= e!163738 (isEmpty!2374 (_2!2329 (lex!399 thiss!17480 rules!1920 (print!330 thiss!17480 (singletonSeq!265 separatorToken!170))))))))

(assert (= (and d!75799 res!121087) b!263702))

(assert (= (and b!263702 res!121089) b!263703))

(assert (= (and d!75799 res!121088) b!263704))

(declare-fun m!328979 () Bool)

(assert (=> d!75799 m!328979))

(declare-fun m!328981 () Bool)

(assert (=> d!75799 m!328981))

(declare-fun m!328983 () Bool)

(assert (=> d!75799 m!328983))

(assert (=> d!75799 m!328983))

(declare-fun m!328985 () Bool)

(assert (=> d!75799 m!328985))

(assert (=> d!75799 m!328345))

(assert (=> d!75799 m!328983))

(declare-fun m!328987 () Bool)

(assert (=> d!75799 m!328987))

(assert (=> d!75799 m!328985))

(declare-fun m!328989 () Bool)

(assert (=> d!75799 m!328989))

(declare-fun m!328991 () Bool)

(assert (=> b!263702 m!328991))

(declare-fun m!328993 () Bool)

(assert (=> b!263703 m!328993))

(assert (=> b!263704 m!328983))

(assert (=> b!263704 m!328983))

(assert (=> b!263704 m!328985))

(assert (=> b!263704 m!328985))

(assert (=> b!263704 m!328989))

(declare-fun m!328995 () Bool)

(assert (=> b!263704 m!328995))

(assert (=> b!263248 d!75799))

(declare-fun d!75801 () Bool)

(assert (=> d!75801 (= (list!1523 (seqFromList!806 lt!107500)) (list!1527 (c!49796 (seqFromList!806 lt!107500))))))

(declare-fun bs!28862 () Bool)

(assert (= bs!28862 d!75801))

(declare-fun m!328997 () Bool)

(assert (=> bs!28862 m!328997))

(assert (=> b!263258 d!75801))

(declare-fun d!75803 () Bool)

(declare-fun fromListB!301 (List!3780) BalanceConc!2528)

(assert (=> d!75803 (= (seqFromList!806 lt!107500) (fromListB!301 lt!107500))))

(declare-fun bs!28863 () Bool)

(assert (= bs!28863 d!75803))

(declare-fun m!328999 () Bool)

(assert (=> bs!28863 m!328999))

(assert (=> b!263258 d!75803))

(declare-fun d!75805 () Bool)

(assert (=> d!75805 (= (inv!4656 (tag!929 (rule!1304 (h!9168 tokens!465)))) (= (mod (str.len (value!24806 (tag!929 (rule!1304 (h!9168 tokens!465))))) 2) 0))))

(assert (=> b!263268 d!75805))

(declare-fun d!75807 () Bool)

(declare-fun res!121090 () Bool)

(declare-fun e!163739 () Bool)

(assert (=> d!75807 (=> (not res!121090) (not e!163739))))

(assert (=> d!75807 (= res!121090 (semiInverseModEq!249 (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (toValue!1446 (transformation!719 (rule!1304 (h!9168 tokens!465))))))))

(assert (=> d!75807 (= (inv!4660 (transformation!719 (rule!1304 (h!9168 tokens!465)))) e!163739)))

(declare-fun b!263705 () Bool)

(assert (=> b!263705 (= e!163739 (equivClasses!232 (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (toValue!1446 (transformation!719 (rule!1304 (h!9168 tokens!465))))))))

(assert (= (and d!75807 res!121090) b!263705))

(declare-fun m!329001 () Bool)

(assert (=> d!75807 m!329001))

(declare-fun m!329003 () Bool)

(assert (=> b!263705 m!329003))

(assert (=> b!263268 d!75807))

(declare-fun b!263706 () Bool)

(declare-fun e!163740 () Bool)

(declare-fun e!163742 () Bool)

(assert (=> b!263706 (= e!163740 e!163742)))

(declare-fun c!49896 () Bool)

(assert (=> b!263706 (= c!49896 ((_ is IntegerValue!2224) (value!24807 separatorToken!170)))))

(declare-fun d!75809 () Bool)

(declare-fun c!49895 () Bool)

(assert (=> d!75809 (= c!49895 ((_ is IntegerValue!2223) (value!24807 separatorToken!170)))))

(assert (=> d!75809 (= (inv!21 (value!24807 separatorToken!170)) e!163740)))

(declare-fun b!263707 () Bool)

(declare-fun res!121091 () Bool)

(declare-fun e!163741 () Bool)

(assert (=> b!263707 (=> res!121091 e!163741)))

(assert (=> b!263707 (= res!121091 (not ((_ is IntegerValue!2225) (value!24807 separatorToken!170))))))

(assert (=> b!263707 (= e!163742 e!163741)))

(declare-fun b!263708 () Bool)

(assert (=> b!263708 (= e!163741 (inv!15 (value!24807 separatorToken!170)))))

(declare-fun b!263709 () Bool)

(assert (=> b!263709 (= e!163742 (inv!17 (value!24807 separatorToken!170)))))

(declare-fun b!263710 () Bool)

(assert (=> b!263710 (= e!163740 (inv!16 (value!24807 separatorToken!170)))))

(assert (= (and d!75809 c!49895) b!263710))

(assert (= (and d!75809 (not c!49895)) b!263706))

(assert (= (and b!263706 c!49896) b!263709))

(assert (= (and b!263706 (not c!49896)) b!263707))

(assert (= (and b!263707 (not res!121091)) b!263708))

(declare-fun m!329005 () Bool)

(assert (=> b!263708 m!329005))

(declare-fun m!329007 () Bool)

(assert (=> b!263709 m!329007))

(declare-fun m!329009 () Bool)

(assert (=> b!263710 m!329009))

(assert (=> b!263246 d!75809))

(declare-fun d!75811 () Bool)

(assert (=> d!75811 (= (isEmpty!2370 rules!1920) ((_ is Nil!3772) rules!1920))))

(assert (=> b!263257 d!75811))

(declare-fun d!75813 () Bool)

(declare-fun res!121094 () Bool)

(declare-fun e!163745 () Bool)

(assert (=> d!75813 (=> (not res!121094) (not e!163745))))

(declare-fun rulesValid!215 (LexerInterface!605 List!3782) Bool)

(assert (=> d!75813 (= res!121094 (rulesValid!215 thiss!17480 rules!1920))))

(assert (=> d!75813 (= (rulesInvariant!571 thiss!17480 rules!1920) e!163745)))

(declare-fun b!263713 () Bool)

(declare-datatypes ((List!3784 0))(
  ( (Nil!3774) (Cons!3774 (h!9171 String!4785) (t!37362 List!3784)) )
))
(declare-fun noDuplicateTag!215 (LexerInterface!605 List!3782 List!3784) Bool)

(assert (=> b!263713 (= e!163745 (noDuplicateTag!215 thiss!17480 rules!1920 Nil!3774))))

(assert (= (and d!75813 res!121094) b!263713))

(declare-fun m!329011 () Bool)

(assert (=> d!75813 m!329011))

(declare-fun m!329013 () Bool)

(assert (=> b!263713 m!329013))

(assert (=> b!263267 d!75813))

(declare-fun d!75815 () Bool)

(declare-fun res!121099 () Bool)

(declare-fun e!163750 () Bool)

(assert (=> d!75815 (=> res!121099 e!163750)))

(assert (=> d!75815 (= res!121099 (not ((_ is Cons!3772) rules!1920)))))

(assert (=> d!75815 (= (sepAndNonSepRulesDisjointChars!308 rules!1920 rules!1920) e!163750)))

(declare-fun b!263718 () Bool)

(declare-fun e!163751 () Bool)

(assert (=> b!263718 (= e!163750 e!163751)))

(declare-fun res!121100 () Bool)

(assert (=> b!263718 (=> (not res!121100) (not e!163751))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!108 (Rule!1238 List!3782) Bool)

(assert (=> b!263718 (= res!121100 (ruleDisjointCharsFromAllFromOtherType!108 (h!9169 rules!1920) rules!1920))))

(declare-fun b!263719 () Bool)

(assert (=> b!263719 (= e!163751 (sepAndNonSepRulesDisjointChars!308 rules!1920 (t!37298 rules!1920)))))

(assert (= (and d!75815 (not res!121099)) b!263718))

(assert (= (and b!263718 res!121100) b!263719))

(declare-fun m!329015 () Bool)

(assert (=> b!263718 m!329015))

(declare-fun m!329017 () Bool)

(assert (=> b!263719 m!329017))

(assert (=> b!263266 d!75815))

(declare-fun b!263733 () Bool)

(declare-fun e!163754 () Bool)

(declare-fun tp!101023 () Bool)

(declare-fun tp!101022 () Bool)

(assert (=> b!263733 (= e!163754 (and tp!101023 tp!101022))))

(assert (=> b!263264 (= tp!100943 e!163754)))

(declare-fun b!263732 () Bool)

(declare-fun tp!101024 () Bool)

(assert (=> b!263732 (= e!163754 tp!101024)))

(declare-fun b!263731 () Bool)

(declare-fun tp!101021 () Bool)

(declare-fun tp!101020 () Bool)

(assert (=> b!263731 (= e!163754 (and tp!101021 tp!101020))))

(declare-fun b!263730 () Bool)

(declare-fun tp_is_empty!1795 () Bool)

(assert (=> b!263730 (= e!163754 tp_is_empty!1795)))

(assert (= (and b!263264 ((_ is ElementMatch!943) (regex!719 (rule!1304 separatorToken!170)))) b!263730))

(assert (= (and b!263264 ((_ is Concat!1685) (regex!719 (rule!1304 separatorToken!170)))) b!263731))

(assert (= (and b!263264 ((_ is Star!943) (regex!719 (rule!1304 separatorToken!170)))) b!263732))

(assert (= (and b!263264 ((_ is Union!943) (regex!719 (rule!1304 separatorToken!170)))) b!263733))

(declare-fun b!263744 () Bool)

(declare-fun b_free!9797 () Bool)

(declare-fun b_next!9797 () Bool)

(assert (=> b!263744 (= b_free!9797 (not b_next!9797))))

(declare-fun tp!101036 () Bool)

(declare-fun b_and!20609 () Bool)

(assert (=> b!263744 (= tp!101036 b_and!20609)))

(declare-fun b_free!9799 () Bool)

(declare-fun b_next!9799 () Bool)

(assert (=> b!263744 (= b_free!9799 (not b_next!9799))))

(declare-fun t!37354 () Bool)

(declare-fun tb!14421 () Bool)

(assert (=> (and b!263744 (= (toChars!1305 (transformation!719 (h!9169 (t!37298 rules!1920)))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170)))) t!37354) tb!14421))

(declare-fun result!17932 () Bool)

(assert (= result!17932 result!17914))

(assert (=> d!75777 t!37354))

(declare-fun t!37356 () Bool)

(declare-fun tb!14423 () Bool)

(assert (=> (and b!263744 (= (toChars!1305 (transformation!719 (h!9169 (t!37298 rules!1920)))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465))))) t!37356) tb!14423))

(declare-fun result!17934 () Bool)

(assert (= result!17934 result!17922))

(assert (=> d!75781 t!37356))

(assert (=> b!263692 t!37356))

(assert (=> b!263694 t!37354))

(declare-fun b_and!20611 () Bool)

(declare-fun tp!101034 () Bool)

(assert (=> b!263744 (= tp!101034 (and (=> t!37354 result!17932) (=> t!37356 result!17934) b_and!20611))))

(declare-fun e!163765 () Bool)

(assert (=> b!263744 (= e!163765 (and tp!101036 tp!101034))))

(declare-fun tp!101035 () Bool)

(declare-fun b!263743 () Bool)

(declare-fun e!163763 () Bool)

(assert (=> b!263743 (= e!163763 (and tp!101035 (inv!4656 (tag!929 (h!9169 (t!37298 rules!1920)))) (inv!4660 (transformation!719 (h!9169 (t!37298 rules!1920)))) e!163765))))

(declare-fun b!263742 () Bool)

(declare-fun e!163764 () Bool)

(declare-fun tp!101033 () Bool)

(assert (=> b!263742 (= e!163764 (and e!163763 tp!101033))))

(assert (=> b!263253 (= tp!100939 e!163764)))

(assert (= b!263743 b!263744))

(assert (= b!263742 b!263743))

(assert (= (and b!263253 ((_ is Cons!3772) (t!37298 rules!1920))) b!263742))

(declare-fun m!329019 () Bool)

(assert (=> b!263743 m!329019))

(declare-fun m!329021 () Bool)

(assert (=> b!263743 m!329021))

(declare-fun b!263748 () Bool)

(declare-fun e!163767 () Bool)

(declare-fun tp!101040 () Bool)

(declare-fun tp!101039 () Bool)

(assert (=> b!263748 (= e!163767 (and tp!101040 tp!101039))))

(assert (=> b!263261 (= tp!100936 e!163767)))

(declare-fun b!263747 () Bool)

(declare-fun tp!101041 () Bool)

(assert (=> b!263747 (= e!163767 tp!101041)))

(declare-fun b!263746 () Bool)

(declare-fun tp!101038 () Bool)

(declare-fun tp!101037 () Bool)

(assert (=> b!263746 (= e!163767 (and tp!101038 tp!101037))))

(declare-fun b!263745 () Bool)

(assert (=> b!263745 (= e!163767 tp_is_empty!1795)))

(assert (= (and b!263261 ((_ is ElementMatch!943) (regex!719 (h!9169 rules!1920)))) b!263745))

(assert (= (and b!263261 ((_ is Concat!1685) (regex!719 (h!9169 rules!1920)))) b!263746))

(assert (= (and b!263261 ((_ is Star!943) (regex!719 (h!9169 rules!1920)))) b!263747))

(assert (= (and b!263261 ((_ is Union!943) (regex!719 (h!9169 rules!1920)))) b!263748))

(declare-fun b!263753 () Bool)

(declare-fun e!163770 () Bool)

(declare-fun tp!101044 () Bool)

(assert (=> b!263753 (= e!163770 (and tp_is_empty!1795 tp!101044))))

(assert (=> b!263260 (= tp!100941 e!163770)))

(assert (= (and b!263260 ((_ is Cons!3770) (originalCharacters!762 (h!9168 tokens!465)))) b!263753))

(declare-fun b!263767 () Bool)

(declare-fun b_free!9801 () Bool)

(declare-fun b_next!9801 () Bool)

(assert (=> b!263767 (= b_free!9801 (not b_next!9801))))

(declare-fun tp!101059 () Bool)

(declare-fun b_and!20613 () Bool)

(assert (=> b!263767 (= tp!101059 b_and!20613)))

(declare-fun b_free!9803 () Bool)

(declare-fun b_next!9803 () Bool)

(assert (=> b!263767 (= b_free!9803 (not b_next!9803))))

(declare-fun t!37358 () Bool)

(declare-fun tb!14425 () Bool)

(assert (=> (and b!263767 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 (t!37297 tokens!465))))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170)))) t!37358) tb!14425))

(declare-fun result!17940 () Bool)

(assert (= result!17940 result!17914))

(assert (=> d!75777 t!37358))

(declare-fun t!37360 () Bool)

(declare-fun tb!14427 () Bool)

(assert (=> (and b!263767 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 (t!37297 tokens!465))))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465))))) t!37360) tb!14427))

(declare-fun result!17942 () Bool)

(assert (= result!17942 result!17922))

(assert (=> d!75781 t!37360))

(assert (=> b!263692 t!37360))

(assert (=> b!263694 t!37358))

(declare-fun tp!101055 () Bool)

(declare-fun b_and!20615 () Bool)

(assert (=> b!263767 (= tp!101055 (and (=> t!37358 result!17940) (=> t!37360 result!17942) b_and!20615))))

(declare-fun e!163784 () Bool)

(declare-fun tp!101056 () Bool)

(declare-fun b!263765 () Bool)

(declare-fun e!163786 () Bool)

(assert (=> b!263765 (= e!163784 (and (inv!21 (value!24807 (h!9168 (t!37297 tokens!465)))) e!163786 tp!101056))))

(declare-fun e!163787 () Bool)

(assert (=> b!263249 (= tp!100945 e!163787)))

(declare-fun e!163788 () Bool)

(assert (=> b!263767 (= e!163788 (and tp!101059 tp!101055))))

(declare-fun tp!101057 () Bool)

(declare-fun b!263766 () Bool)

(assert (=> b!263766 (= e!163786 (and tp!101057 (inv!4656 (tag!929 (rule!1304 (h!9168 (t!37297 tokens!465))))) (inv!4660 (transformation!719 (rule!1304 (h!9168 (t!37297 tokens!465))))) e!163788))))

(declare-fun tp!101058 () Bool)

(declare-fun b!263764 () Bool)

(assert (=> b!263764 (= e!163787 (and (inv!4659 (h!9168 (t!37297 tokens!465))) e!163784 tp!101058))))

(assert (= b!263766 b!263767))

(assert (= b!263765 b!263766))

(assert (= b!263764 b!263765))

(assert (= (and b!263249 ((_ is Cons!3771) (t!37297 tokens!465))) b!263764))

(declare-fun m!329023 () Bool)

(assert (=> b!263765 m!329023))

(declare-fun m!329025 () Bool)

(assert (=> b!263766 m!329025))

(declare-fun m!329027 () Bool)

(assert (=> b!263766 m!329027))

(declare-fun m!329029 () Bool)

(assert (=> b!263764 m!329029))

(declare-fun b!263771 () Bool)

(declare-fun e!163789 () Bool)

(declare-fun tp!101063 () Bool)

(declare-fun tp!101062 () Bool)

(assert (=> b!263771 (= e!163789 (and tp!101063 tp!101062))))

(assert (=> b!263268 (= tp!100933 e!163789)))

(declare-fun b!263770 () Bool)

(declare-fun tp!101064 () Bool)

(assert (=> b!263770 (= e!163789 tp!101064)))

(declare-fun b!263769 () Bool)

(declare-fun tp!101061 () Bool)

(declare-fun tp!101060 () Bool)

(assert (=> b!263769 (= e!163789 (and tp!101061 tp!101060))))

(declare-fun b!263768 () Bool)

(assert (=> b!263768 (= e!163789 tp_is_empty!1795)))

(assert (= (and b!263268 ((_ is ElementMatch!943) (regex!719 (rule!1304 (h!9168 tokens!465))))) b!263768))

(assert (= (and b!263268 ((_ is Concat!1685) (regex!719 (rule!1304 (h!9168 tokens!465))))) b!263769))

(assert (= (and b!263268 ((_ is Star!943) (regex!719 (rule!1304 (h!9168 tokens!465))))) b!263770))

(assert (= (and b!263268 ((_ is Union!943) (regex!719 (rule!1304 (h!9168 tokens!465))))) b!263771))

(declare-fun b!263772 () Bool)

(declare-fun e!163790 () Bool)

(declare-fun tp!101065 () Bool)

(assert (=> b!263772 (= e!163790 (and tp_is_empty!1795 tp!101065))))

(assert (=> b!263246 (= tp!100940 e!163790)))

(assert (= (and b!263246 ((_ is Cons!3770) (originalCharacters!762 separatorToken!170))) b!263772))

(declare-fun b_lambda!8173 () Bool)

(assert (= b_lambda!8165 (or (and b!263259 b_free!9787 (= (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) (and b!263265 b_free!9783) (and b!263767 b_free!9803 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 (t!37297 tokens!465))))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) (and b!263744 b_free!9799 (= (toChars!1305 (transformation!719 (h!9169 (t!37298 rules!1920)))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) (and b!263256 b_free!9779 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) b_lambda!8173)))

(declare-fun b_lambda!8175 () Bool)

(assert (= b_lambda!8171 (or (and b!263259 b_free!9787 (= (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) (and b!263265 b_free!9783) (and b!263767 b_free!9803 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 (t!37297 tokens!465))))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) (and b!263744 b_free!9799 (= (toChars!1305 (transformation!719 (h!9169 (t!37298 rules!1920)))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) (and b!263256 b_free!9779 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))) (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))))) b_lambda!8175)))

(declare-fun b_lambda!8177 () Bool)

(assert (= b_lambda!8169 (or (and b!263744 b_free!9799 (= (toChars!1305 (transformation!719 (h!9169 (t!37298 rules!1920)))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263259 b_free!9787 (= (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263767 b_free!9803 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 (t!37297 tokens!465))))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263265 b_free!9783 (= (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263256 b_free!9779) b_lambda!8177)))

(declare-fun b_lambda!8179 () Bool)

(assert (= b_lambda!8147 (or b!263252 b_lambda!8179)))

(declare-fun bs!28864 () Bool)

(declare-fun d!75817 () Bool)

(assert (= bs!28864 (and d!75817 b!263252)))

(assert (=> bs!28864 (= (dynLambda!1907 lambda!8822 (h!9168 tokens!465)) (not (isSeparator!719 (rule!1304 (h!9168 tokens!465)))))))

(assert (=> b!263310 d!75817))

(declare-fun b_lambda!8181 () Bool)

(assert (= b_lambda!8167 (or (and b!263744 b_free!9799 (= (toChars!1305 (transformation!719 (h!9169 (t!37298 rules!1920)))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263259 b_free!9787 (= (toChars!1305 (transformation!719 (h!9169 rules!1920))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263767 b_free!9803 (= (toChars!1305 (transformation!719 (rule!1304 (h!9168 (t!37297 tokens!465))))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263265 b_free!9783 (= (toChars!1305 (transformation!719 (rule!1304 separatorToken!170))) (toChars!1305 (transformation!719 (rule!1304 (h!9168 tokens!465)))))) (and b!263256 b_free!9779) b_lambda!8181)))

(check-sat (not b!263764) (not d!75709) (not b!263301) (not b!263614) (not b!263753) (not b!263709) (not b!263511) (not b!263658) (not bm!14185) (not b_next!9787) (not b!263311) (not b!263518) (not b!263637) (not b!263629) b_and!20613 (not b!263704) (not b!263615) (not b!263765) (not b_lambda!8181) (not bm!14190) (not b_next!9799) b_and!20605 (not b!263693) (not b!263732) (not bm!14186) (not d!75707) (not b_next!9781) (not b!263661) (not d!75791) (not d!75777) (not b_next!9779) (not b!263626) (not b!263747) (not b!263733) (not b!263718) b_and!20611 (not b!263719) (not b!263665) b_and!20541 (not b!263731) (not b!263695) (not b!263517) (not b!263766) (not b_next!9777) (not d!75767) (not b!263770) (not bm!14193) (not bm!14171) (not b!263659) (not b!263746) (not b!263705) (not d!75763) (not b!263651) (not b!263769) (not b!263772) (not d!75813) (not d!75775) (not bm!14187) (not bm!14196) b_and!20545 (not b!263648) (not b!263743) b_and!20609 (not bm!14199) (not b_lambda!8173) (not b!263641) (not b!263617) (not tb!14415) (not bm!14188) (not d!75803) (not b!263686) (not b!263647) (not d!75699) (not b_lambda!8177) (not d!75771) (not b!263643) (not b!263742) (not d!75797) (not d!75783) (not b!263644) (not bm!14191) (not b!263672) (not b!263300) (not d!75807) (not b!263515) (not d!75691) (not b!263710) (not b_lambda!8179) (not b!263305) (not b!263669) (not b!263692) (not b_next!9783) (not b!263635) (not b!263666) (not b!263687) (not bm!14192) (not b!263630) (not b_next!9801) (not b!263627) (not b!263632) (not b_next!9785) (not b!263702) (not b!263374) b_and!20549 (not d!75787) (not d!75769) (not tb!14409) tp_is_empty!1795 (not b!263670) b_and!20615 (not d!75779) (not d!75781) (not d!75785) (not d!75799) (not b!263748) b_and!20603 (not d!75801) (not d!75795) b_and!20607 (not bm!14174) (not b!263708) (not b!263771) (not b!263694) (not b!263622) (not b!263685) (not b!263514) (not b_next!9803) (not d!75695) (not b!263527) (not d!75711) (not bm!14170) (not b!263513) (not b!263662) (not b!263703) (not b_lambda!8175) (not b!263365) (not b!263620) (not b_next!9797) (not bm!14195) (not d!75765) (not b!263713) (not b!263645))
(check-sat (not b_next!9787) b_and!20613 (not b_next!9777) b_and!20545 b_and!20609 (not b_next!9783) (not b_next!9801) (not b_next!9785) b_and!20549 b_and!20615 b_and!20603 (not b_next!9797) (not b_next!9799) b_and!20605 (not b_next!9779) (not b_next!9781) b_and!20611 b_and!20541 b_and!20607 (not b_next!9803))
