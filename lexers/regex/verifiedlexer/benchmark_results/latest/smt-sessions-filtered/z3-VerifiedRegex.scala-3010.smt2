; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179950 () Bool)

(assert start!179950)

(declare-fun b!1818301 () Bool)

(declare-fun b_free!50335 () Bool)

(declare-fun b_next!51039 () Bool)

(assert (=> b!1818301 (= b_free!50335 (not b_next!51039))))

(declare-fun tp!513837 () Bool)

(declare-fun b_and!140877 () Bool)

(assert (=> b!1818301 (= tp!513837 b_and!140877)))

(declare-fun b_free!50337 () Bool)

(declare-fun b_next!51041 () Bool)

(assert (=> b!1818301 (= b_free!50337 (not b_next!51041))))

(declare-fun tp!513834 () Bool)

(declare-fun b_and!140879 () Bool)

(assert (=> b!1818301 (= tp!513834 b_and!140879)))

(declare-fun b!1818308 () Bool)

(declare-fun b_free!50339 () Bool)

(declare-fun b_next!51043 () Bool)

(assert (=> b!1818308 (= b_free!50339 (not b_next!51043))))

(declare-fun tp!513840 () Bool)

(declare-fun b_and!140881 () Bool)

(assert (=> b!1818308 (= tp!513840 b_and!140881)))

(declare-fun b_free!50341 () Bool)

(declare-fun b_next!51045 () Bool)

(assert (=> b!1818308 (= b_free!50341 (not b_next!51045))))

(declare-fun tp!513842 () Bool)

(declare-fun b_and!140883 () Bool)

(assert (=> b!1818308 (= tp!513842 b_and!140883)))

(declare-fun b!1818305 () Bool)

(declare-fun b_free!50343 () Bool)

(declare-fun b_next!51047 () Bool)

(assert (=> b!1818305 (= b_free!50343 (not b_next!51047))))

(declare-fun tp!513844 () Bool)

(declare-fun b_and!140885 () Bool)

(assert (=> b!1818305 (= tp!513844 b_and!140885)))

(declare-fun b_free!50345 () Bool)

(declare-fun b_next!51049 () Bool)

(assert (=> b!1818305 (= b_free!50345 (not b_next!51049))))

(declare-fun tp!513838 () Bool)

(declare-fun b_and!140887 () Bool)

(assert (=> b!1818305 (= tp!513838 b_and!140887)))

(declare-fun b!1818292 () Bool)

(declare-fun e!1161850 () Bool)

(declare-fun tp_is_empty!8053 () Bool)

(declare-fun tp!513841 () Bool)

(assert (=> b!1818292 (= e!1161850 (and tp_is_empty!8053 tp!513841))))

(declare-fun b!1818293 () Bool)

(declare-fun res!817587 () Bool)

(declare-fun e!1161847 () Bool)

(assert (=> b!1818293 (=> (not res!817587) (not e!1161847))))

(declare-datatypes ((List!19955 0))(
  ( (Nil!19885) (Cons!19885 (h!25286 (_ BitVec 16)) (t!169704 List!19955)) )
))
(declare-datatypes ((TokenValue!3671 0))(
  ( (FloatLiteralValue!7342 (text!26142 List!19955)) (TokenValueExt!3670 (__x!12644 Int)) (Broken!18355 (value!111699 List!19955)) (Object!3740) (End!3671) (Def!3671) (Underscore!3671) (Match!3671) (Else!3671) (Error!3671) (Case!3671) (If!3671) (Extends!3671) (Abstract!3671) (Class!3671) (Val!3671) (DelimiterValue!7342 (del!3731 List!19955)) (KeywordValue!3677 (value!111700 List!19955)) (CommentValue!7342 (value!111701 List!19955)) (WhitespaceValue!7342 (value!111702 List!19955)) (IndentationValue!3671 (value!111703 List!19955)) (String!22686) (Int32!3671) (Broken!18356 (value!111704 List!19955)) (Boolean!3672) (Unit!34568) (OperatorValue!3674 (op!3731 List!19955)) (IdentifierValue!7342 (value!111705 List!19955)) (IdentifierValue!7343 (value!111706 List!19955)) (WhitespaceValue!7343 (value!111707 List!19955)) (True!7342) (False!7342) (Broken!18357 (value!111708 List!19955)) (Broken!18358 (value!111709 List!19955)) (True!7343) (RightBrace!3671) (RightBracket!3671) (Colon!3671) (Null!3671) (Comma!3671) (LeftBracket!3671) (False!7343) (LeftBrace!3671) (ImaginaryLiteralValue!3671 (text!26143 List!19955)) (StringLiteralValue!11013 (value!111710 List!19955)) (EOFValue!3671 (value!111711 List!19955)) (IdentValue!3671 (value!111712 List!19955)) (DelimiterValue!7343 (value!111713 List!19955)) (DedentValue!3671 (value!111714 List!19955)) (NewLineValue!3671 (value!111715 List!19955)) (IntegerValue!11013 (value!111716 (_ BitVec 32)) (text!26144 List!19955)) (IntegerValue!11014 (value!111717 Int) (text!26145 List!19955)) (Times!3671) (Or!3671) (Equal!3671) (Minus!3671) (Broken!18359 (value!111718 List!19955)) (And!3671) (Div!3671) (LessEqual!3671) (Mod!3671) (Concat!8580) (Not!3671) (Plus!3671) (SpaceValue!3671 (value!111719 List!19955)) (IntegerValue!11015 (value!111720 Int) (text!26146 List!19955)) (StringLiteralValue!11014 (text!26147 List!19955)) (FloatLiteralValue!7343 (text!26148 List!19955)) (BytesLiteralValue!3671 (value!111721 List!19955)) (CommentValue!7343 (value!111722 List!19955)) (StringLiteralValue!11015 (value!111723 List!19955)) (ErrorTokenValue!3671 (msg!3732 List!19955)) )
))
(declare-datatypes ((C!9992 0))(
  ( (C!9993 (val!5592 Int)) )
))
(declare-datatypes ((List!19956 0))(
  ( (Nil!19886) (Cons!19886 (h!25287 C!9992) (t!169705 List!19956)) )
))
(declare-datatypes ((IArray!13231 0))(
  ( (IArray!13232 (innerList!6673 List!19956)) )
))
(declare-datatypes ((Conc!6613 0))(
  ( (Node!6613 (left!15941 Conc!6613) (right!16271 Conc!6613) (csize!13456 Int) (cheight!6824 Int)) (Leaf!9624 (xs!9489 IArray!13231) (csize!13457 Int)) (Empty!6613) )
))
(declare-datatypes ((BalanceConc!13170 0))(
  ( (BalanceConc!13171 (c!296818 Conc!6613)) )
))
(declare-datatypes ((TokenValueInjection!7002 0))(
  ( (TokenValueInjection!7003 (toValue!5116 Int) (toChars!4975 Int)) )
))
(declare-datatypes ((String!22687 0))(
  ( (String!22688 (value!111724 String)) )
))
(declare-datatypes ((Regex!4909 0))(
  ( (ElementMatch!4909 (c!296819 C!9992)) (Concat!8581 (regOne!10330 Regex!4909) (regTwo!10330 Regex!4909)) (EmptyExpr!4909) (Star!4909 (reg!5238 Regex!4909)) (EmptyLang!4909) (Union!4909 (regOne!10331 Regex!4909) (regTwo!10331 Regex!4909)) )
))
(declare-datatypes ((Rule!6962 0))(
  ( (Rule!6963 (regex!3581 Regex!4909) (tag!3995 String!22687) (isSeparator!3581 Bool) (transformation!3581 TokenValueInjection!7002)) )
))
(declare-datatypes ((Token!6716 0))(
  ( (Token!6717 (value!111725 TokenValue!3671) (rule!5693 Rule!6962) (size!15785 Int) (originalCharacters!4389 List!19956)) )
))
(declare-fun token!556 () Token!6716)

(declare-fun rule!559 () Rule!6962)

(assert (=> b!1818293 (= res!817587 (= (rule!5693 token!556) rule!559))))

(declare-fun b!1818294 () Bool)

(declare-fun res!817584 () Bool)

(declare-fun e!1161845 () Bool)

(assert (=> b!1818294 (=> (not res!817584) (not e!1161845))))

(declare-datatypes ((List!19957 0))(
  ( (Nil!19887) (Cons!19887 (h!25288 Rule!6962) (t!169706 List!19957)) )
))
(declare-fun rules!4538 () List!19957)

(declare-fun contains!3617 (List!19957 Rule!6962) Bool)

(assert (=> b!1818294 (= res!817584 (contains!3617 rules!4538 rule!559))))

(declare-fun b!1818295 () Bool)

(declare-fun e!1161849 () Bool)

(declare-fun e!1161846 () Bool)

(assert (=> b!1818295 (= e!1161849 (not e!1161846))))

(declare-fun res!817586 () Bool)

(assert (=> b!1818295 (=> res!817586 e!1161846)))

(declare-fun lt!706494 () List!19956)

(declare-fun matchR!2374 (Regex!4909 List!19956) Bool)

(assert (=> b!1818295 (= res!817586 (not (matchR!2374 (regex!3581 rule!559) lt!706494)))))

(declare-datatypes ((LexerInterface!3210 0))(
  ( (LexerInterfaceExt!3207 (__x!12645 Int)) (Lexer!3208) )
))
(declare-fun thiss!28068 () LexerInterface!3210)

(declare-fun ruleValid!1073 (LexerInterface!3210 Rule!6962) Bool)

(assert (=> b!1818295 (ruleValid!1073 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34569 0))(
  ( (Unit!34570) )
))
(declare-fun lt!706491 () Unit!34569)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!594 (LexerInterface!3210 Rule!6962 List!19957) Unit!34569)

(assert (=> b!1818295 (= lt!706491 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!594 thiss!28068 rule!559 rules!4538))))

(declare-fun e!1161858 () Bool)

(declare-fun e!1161844 () Bool)

(declare-fun b!1818296 () Bool)

(declare-fun tp!513832 () Bool)

(declare-fun inv!25918 (String!22687) Bool)

(declare-fun inv!25921 (TokenValueInjection!7002) Bool)

(assert (=> b!1818296 (= e!1161858 (and tp!513832 (inv!25918 (tag!3995 (rule!5693 token!556))) (inv!25921 (transformation!3581 (rule!5693 token!556))) e!1161844))))

(declare-fun b!1818297 () Bool)

(declare-fun res!817591 () Bool)

(assert (=> b!1818297 (=> (not res!817591) (not e!1161845))))

(declare-fun isEmpty!12575 (List!19957) Bool)

(assert (=> b!1818297 (= res!817591 (not (isEmpty!12575 rules!4538)))))

(declare-fun b!1818298 () Bool)

(declare-fun res!817589 () Bool)

(assert (=> b!1818298 (=> (not res!817589) (not e!1161845))))

(declare-fun rulesInvariant!2879 (LexerInterface!3210 List!19957) Bool)

(assert (=> b!1818298 (= res!817589 (rulesInvariant!2879 thiss!28068 rules!4538))))

(declare-fun e!1161860 () Bool)

(declare-fun tp!513833 () Bool)

(declare-fun b!1818299 () Bool)

(declare-fun inv!21 (TokenValue!3671) Bool)

(assert (=> b!1818299 (= e!1161860 (and (inv!21 (value!111725 token!556)) e!1161858 tp!513833))))

(declare-fun e!1161856 () Bool)

(declare-fun tp!513836 () Bool)

(declare-fun e!1161859 () Bool)

(declare-fun b!1818300 () Bool)

(assert (=> b!1818300 (= e!1161856 (and tp!513836 (inv!25918 (tag!3995 rule!559)) (inv!25921 (transformation!3581 rule!559)) e!1161859))))

(declare-fun e!1161851 () Bool)

(assert (=> b!1818301 (= e!1161851 (and tp!513837 tp!513834))))

(declare-fun b!1818303 () Bool)

(assert (=> b!1818303 (= e!1161845 e!1161847)))

(declare-fun res!817585 () Bool)

(assert (=> b!1818303 (=> (not res!817585) (not e!1161847))))

(declare-datatypes ((tuple2!19430 0))(
  ( (tuple2!19431 (_1!11117 Token!6716) (_2!11117 List!19956)) )
))
(declare-datatypes ((Option!4161 0))(
  ( (None!4160) (Some!4160 (v!25691 tuple2!19430)) )
))
(declare-fun lt!706497 () Option!4161)

(declare-fun input!3612 () List!19956)

(declare-fun maxPrefix!1758 (LexerInterface!3210 List!19957 List!19956) Option!4161)

(assert (=> b!1818303 (= res!817585 (= (maxPrefix!1758 thiss!28068 rules!4538 input!3612) lt!706497))))

(declare-fun suffix!1667 () List!19956)

(assert (=> b!1818303 (= lt!706497 (Some!4160 (tuple2!19431 token!556 suffix!1667)))))

(declare-fun b!1818304 () Bool)

(declare-fun e!1161852 () Bool)

(assert (=> b!1818304 (= e!1161846 e!1161852)))

(declare-fun res!817592 () Bool)

(assert (=> b!1818304 (=> res!817592 e!1161852)))

(declare-fun lt!706492 () Option!4161)

(assert (=> b!1818304 (= res!817592 (not (= lt!706492 lt!706497)))))

(declare-fun lt!706496 () TokenValue!3671)

(declare-fun lt!706495 () Int)

(assert (=> b!1818304 (= lt!706492 (Some!4160 (tuple2!19431 (Token!6717 lt!706496 rule!559 lt!706495 lt!706494) suffix!1667)))))

(declare-fun maxPrefixOneRule!1123 (LexerInterface!3210 Rule!6962 List!19956) Option!4161)

(assert (=> b!1818304 (= lt!706492 (maxPrefixOneRule!1123 thiss!28068 rule!559 input!3612))))

(declare-fun size!15786 (List!19956) Int)

(assert (=> b!1818304 (= lt!706495 (size!15786 lt!706494))))

(declare-fun apply!5373 (TokenValueInjection!7002 BalanceConc!13170) TokenValue!3671)

(declare-fun seqFromList!2542 (List!19956) BalanceConc!13170)

(assert (=> b!1818304 (= lt!706496 (apply!5373 (transformation!3581 rule!559) (seqFromList!2542 lt!706494)))))

(declare-fun lt!706493 () Unit!34569)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!499 (LexerInterface!3210 List!19957 List!19956 List!19956 List!19956 Rule!6962) Unit!34569)

(assert (=> b!1818304 (= lt!706493 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!499 thiss!28068 rules!4538 lt!706494 input!3612 suffix!1667 rule!559))))

(assert (=> b!1818305 (= e!1161844 (and tp!513844 tp!513838))))

(declare-fun b!1818306 () Bool)

(declare-fun rulesValidInductive!1226 (LexerInterface!3210 List!19957) Bool)

(assert (=> b!1818306 (= e!1161852 (rulesValidInductive!1226 thiss!28068 rules!4538))))

(declare-fun lt!706498 () Unit!34569)

(declare-fun lemma!434 (List!19956 Rule!6962 List!19957 List!19956 LexerInterface!3210 Token!6716 List!19957) Unit!34569)

(assert (=> b!1818306 (= lt!706498 (lemma!434 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1818307 () Bool)

(declare-fun e!1161861 () Bool)

(declare-fun tp!513839 () Bool)

(assert (=> b!1818307 (= e!1161861 (and tp_is_empty!8053 tp!513839))))

(assert (=> b!1818308 (= e!1161859 (and tp!513840 tp!513842))))

(declare-fun b!1818309 () Bool)

(assert (=> b!1818309 (= e!1161847 e!1161849)))

(declare-fun res!817588 () Bool)

(assert (=> b!1818309 (=> (not res!817588) (not e!1161849))))

(declare-fun ++!5405 (List!19956 List!19956) List!19956)

(assert (=> b!1818309 (= res!817588 (= input!3612 (++!5405 lt!706494 suffix!1667)))))

(declare-fun list!8089 (BalanceConc!13170) List!19956)

(declare-fun charsOf!2224 (Token!6716) BalanceConc!13170)

(assert (=> b!1818309 (= lt!706494 (list!8089 (charsOf!2224 token!556)))))

(declare-fun b!1818310 () Bool)

(declare-fun e!1161862 () Bool)

(declare-fun e!1161855 () Bool)

(declare-fun tp!513843 () Bool)

(assert (=> b!1818310 (= e!1161862 (and e!1161855 tp!513843))))

(declare-fun res!817590 () Bool)

(assert (=> start!179950 (=> (not res!817590) (not e!1161845))))

(get-info :version)

(assert (=> start!179950 (= res!817590 ((_ is Lexer!3208) thiss!28068))))

(assert (=> start!179950 e!1161845))

(assert (=> start!179950 e!1161861))

(assert (=> start!179950 true))

(assert (=> start!179950 e!1161862))

(declare-fun inv!25922 (Token!6716) Bool)

(assert (=> start!179950 (and (inv!25922 token!556) e!1161860)))

(assert (=> start!179950 e!1161856))

(assert (=> start!179950 e!1161850))

(declare-fun tp!513835 () Bool)

(declare-fun b!1818302 () Bool)

(assert (=> b!1818302 (= e!1161855 (and tp!513835 (inv!25918 (tag!3995 (h!25288 rules!4538))) (inv!25921 (transformation!3581 (h!25288 rules!4538))) e!1161851))))

(assert (= (and start!179950 res!817590) b!1818297))

(assert (= (and b!1818297 res!817591) b!1818298))

(assert (= (and b!1818298 res!817589) b!1818294))

(assert (= (and b!1818294 res!817584) b!1818303))

(assert (= (and b!1818303 res!817585) b!1818293))

(assert (= (and b!1818293 res!817587) b!1818309))

(assert (= (and b!1818309 res!817588) b!1818295))

(assert (= (and b!1818295 (not res!817586)) b!1818304))

(assert (= (and b!1818304 (not res!817592)) b!1818306))

(assert (= (and start!179950 ((_ is Cons!19886) suffix!1667)) b!1818307))

(assert (= b!1818302 b!1818301))

(assert (= b!1818310 b!1818302))

(assert (= (and start!179950 ((_ is Cons!19887) rules!4538)) b!1818310))

(assert (= b!1818296 b!1818305))

(assert (= b!1818299 b!1818296))

(assert (= start!179950 b!1818299))

(assert (= b!1818300 b!1818308))

(assert (= start!179950 b!1818300))

(assert (= (and start!179950 ((_ is Cons!19886) input!3612)) b!1818292))

(declare-fun m!2247455 () Bool)

(assert (=> b!1818296 m!2247455))

(declare-fun m!2247457 () Bool)

(assert (=> b!1818296 m!2247457))

(declare-fun m!2247459 () Bool)

(assert (=> b!1818306 m!2247459))

(declare-fun m!2247461 () Bool)

(assert (=> b!1818306 m!2247461))

(declare-fun m!2247463 () Bool)

(assert (=> b!1818295 m!2247463))

(declare-fun m!2247465 () Bool)

(assert (=> b!1818295 m!2247465))

(declare-fun m!2247467 () Bool)

(assert (=> b!1818295 m!2247467))

(declare-fun m!2247469 () Bool)

(assert (=> start!179950 m!2247469))

(declare-fun m!2247471 () Bool)

(assert (=> b!1818294 m!2247471))

(declare-fun m!2247473 () Bool)

(assert (=> b!1818304 m!2247473))

(declare-fun m!2247475 () Bool)

(assert (=> b!1818304 m!2247475))

(declare-fun m!2247477 () Bool)

(assert (=> b!1818304 m!2247477))

(declare-fun m!2247479 () Bool)

(assert (=> b!1818304 m!2247479))

(assert (=> b!1818304 m!2247473))

(declare-fun m!2247481 () Bool)

(assert (=> b!1818304 m!2247481))

(declare-fun m!2247483 () Bool)

(assert (=> b!1818297 m!2247483))

(declare-fun m!2247485 () Bool)

(assert (=> b!1818300 m!2247485))

(declare-fun m!2247487 () Bool)

(assert (=> b!1818300 m!2247487))

(declare-fun m!2247489 () Bool)

(assert (=> b!1818303 m!2247489))

(declare-fun m!2247491 () Bool)

(assert (=> b!1818299 m!2247491))

(declare-fun m!2247493 () Bool)

(assert (=> b!1818302 m!2247493))

(declare-fun m!2247495 () Bool)

(assert (=> b!1818302 m!2247495))

(declare-fun m!2247497 () Bool)

(assert (=> b!1818309 m!2247497))

(declare-fun m!2247499 () Bool)

(assert (=> b!1818309 m!2247499))

(assert (=> b!1818309 m!2247499))

(declare-fun m!2247501 () Bool)

(assert (=> b!1818309 m!2247501))

(declare-fun m!2247503 () Bool)

(assert (=> b!1818298 m!2247503))

(check-sat (not b_next!51041) (not b_next!51045) (not b_next!51047) (not b!1818295) (not b!1818309) b_and!140877 (not b!1818294) (not b!1818298) (not b!1818302) b_and!140881 (not b!1818299) b_and!140885 (not b!1818310) (not b_next!51039) b_and!140879 (not b!1818300) (not b!1818292) b_and!140887 tp_is_empty!8053 (not b!1818297) b_and!140883 (not b_next!51043) (not b!1818303) (not start!179950) (not b!1818296) (not b!1818304) (not b!1818307) (not b_next!51049) (not b!1818306))
(check-sat (not b_next!51041) (not b_next!51045) (not b_next!51047) b_and!140887 b_and!140883 (not b_next!51043) b_and!140877 b_and!140881 b_and!140885 (not b_next!51049) (not b_next!51039) b_and!140879)
(get-model)

(declare-fun d!557315 () Bool)

(assert (=> d!557315 (= (inv!25918 (tag!3995 (h!25288 rules!4538))) (= (mod (str.len (value!111724 (tag!3995 (h!25288 rules!4538)))) 2) 0))))

(assert (=> b!1818302 d!557315))

(declare-fun d!557317 () Bool)

(declare-fun res!817599 () Bool)

(declare-fun e!1161865 () Bool)

(assert (=> d!557317 (=> (not res!817599) (not e!1161865))))

(declare-fun semiInverseModEq!1432 (Int Int) Bool)

(assert (=> d!557317 (= res!817599 (semiInverseModEq!1432 (toChars!4975 (transformation!3581 (h!25288 rules!4538))) (toValue!5116 (transformation!3581 (h!25288 rules!4538)))))))

(assert (=> d!557317 (= (inv!25921 (transformation!3581 (h!25288 rules!4538))) e!1161865)))

(declare-fun b!1818313 () Bool)

(declare-fun equivClasses!1373 (Int Int) Bool)

(assert (=> b!1818313 (= e!1161865 (equivClasses!1373 (toChars!4975 (transformation!3581 (h!25288 rules!4538))) (toValue!5116 (transformation!3581 (h!25288 rules!4538)))))))

(assert (= (and d!557317 res!817599) b!1818313))

(declare-fun m!2247505 () Bool)

(assert (=> d!557317 m!2247505))

(declare-fun m!2247507 () Bool)

(assert (=> b!1818313 m!2247507))

(assert (=> b!1818302 d!557317))

(declare-fun b!1818350 () Bool)

(declare-fun e!1161880 () Option!4161)

(declare-fun call!114261 () Option!4161)

(assert (=> b!1818350 (= e!1161880 call!114261)))

(declare-fun b!1818351 () Bool)

(declare-fun res!817633 () Bool)

(declare-fun e!1161882 () Bool)

(assert (=> b!1818351 (=> (not res!817633) (not e!1161882))))

(declare-fun lt!706525 () Option!4161)

(declare-fun get!6159 (Option!4161) tuple2!19430)

(assert (=> b!1818351 (= res!817633 (= (value!111725 (_1!11117 (get!6159 lt!706525))) (apply!5373 (transformation!3581 (rule!5693 (_1!11117 (get!6159 lt!706525)))) (seqFromList!2542 (originalCharacters!4389 (_1!11117 (get!6159 lt!706525)))))))))

(declare-fun b!1818352 () Bool)

(declare-fun e!1161881 () Bool)

(assert (=> b!1818352 (= e!1161881 e!1161882)))

(declare-fun res!817629 () Bool)

(assert (=> b!1818352 (=> (not res!817629) (not e!1161882))))

(declare-fun isDefined!3493 (Option!4161) Bool)

(assert (=> b!1818352 (= res!817629 (isDefined!3493 lt!706525))))

(declare-fun d!557319 () Bool)

(assert (=> d!557319 e!1161881))

(declare-fun res!817632 () Bool)

(assert (=> d!557319 (=> res!817632 e!1161881)))

(declare-fun isEmpty!12578 (Option!4161) Bool)

(assert (=> d!557319 (= res!817632 (isEmpty!12578 lt!706525))))

(assert (=> d!557319 (= lt!706525 e!1161880)))

(declare-fun c!296824 () Bool)

(assert (=> d!557319 (= c!296824 (and ((_ is Cons!19887) rules!4538) ((_ is Nil!19887) (t!169706 rules!4538))))))

(declare-fun lt!706522 () Unit!34569)

(declare-fun lt!706524 () Unit!34569)

(assert (=> d!557319 (= lt!706522 lt!706524)))

(declare-fun isPrefix!1806 (List!19956 List!19956) Bool)

(assert (=> d!557319 (isPrefix!1806 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1183 (List!19956 List!19956) Unit!34569)

(assert (=> d!557319 (= lt!706524 (lemmaIsPrefixRefl!1183 input!3612 input!3612))))

(assert (=> d!557319 (rulesValidInductive!1226 thiss!28068 rules!4538)))

(assert (=> d!557319 (= (maxPrefix!1758 thiss!28068 rules!4538 input!3612) lt!706525)))

(declare-fun bm!114256 () Bool)

(assert (=> bm!114256 (= call!114261 (maxPrefixOneRule!1123 thiss!28068 (h!25288 rules!4538) input!3612))))

(declare-fun b!1818353 () Bool)

(declare-fun res!817631 () Bool)

(assert (=> b!1818353 (=> (not res!817631) (not e!1161882))))

(assert (=> b!1818353 (= res!817631 (matchR!2374 (regex!3581 (rule!5693 (_1!11117 (get!6159 lt!706525)))) (list!8089 (charsOf!2224 (_1!11117 (get!6159 lt!706525))))))))

(declare-fun b!1818354 () Bool)

(assert (=> b!1818354 (= e!1161882 (contains!3617 rules!4538 (rule!5693 (_1!11117 (get!6159 lt!706525)))))))

(declare-fun b!1818355 () Bool)

(declare-fun lt!706526 () Option!4161)

(declare-fun lt!706523 () Option!4161)

(assert (=> b!1818355 (= e!1161880 (ite (and ((_ is None!4160) lt!706526) ((_ is None!4160) lt!706523)) None!4160 (ite ((_ is None!4160) lt!706523) lt!706526 (ite ((_ is None!4160) lt!706526) lt!706523 (ite (>= (size!15785 (_1!11117 (v!25691 lt!706526))) (size!15785 (_1!11117 (v!25691 lt!706523)))) lt!706526 lt!706523)))))))

(assert (=> b!1818355 (= lt!706526 call!114261)))

(assert (=> b!1818355 (= lt!706523 (maxPrefix!1758 thiss!28068 (t!169706 rules!4538) input!3612))))

(declare-fun b!1818356 () Bool)

(declare-fun res!817634 () Bool)

(assert (=> b!1818356 (=> (not res!817634) (not e!1161882))))

(assert (=> b!1818356 (= res!817634 (< (size!15786 (_2!11117 (get!6159 lt!706525))) (size!15786 input!3612)))))

(declare-fun b!1818357 () Bool)

(declare-fun res!817630 () Bool)

(assert (=> b!1818357 (=> (not res!817630) (not e!1161882))))

(assert (=> b!1818357 (= res!817630 (= (++!5405 (list!8089 (charsOf!2224 (_1!11117 (get!6159 lt!706525)))) (_2!11117 (get!6159 lt!706525))) input!3612))))

(declare-fun b!1818358 () Bool)

(declare-fun res!817628 () Bool)

(assert (=> b!1818358 (=> (not res!817628) (not e!1161882))))

(assert (=> b!1818358 (= res!817628 (= (list!8089 (charsOf!2224 (_1!11117 (get!6159 lt!706525)))) (originalCharacters!4389 (_1!11117 (get!6159 lt!706525)))))))

(assert (= (and d!557319 c!296824) b!1818350))

(assert (= (and d!557319 (not c!296824)) b!1818355))

(assert (= (or b!1818350 b!1818355) bm!114256))

(assert (= (and d!557319 (not res!817632)) b!1818352))

(assert (= (and b!1818352 res!817629) b!1818358))

(assert (= (and b!1818358 res!817628) b!1818356))

(assert (= (and b!1818356 res!817634) b!1818357))

(assert (= (and b!1818357 res!817630) b!1818351))

(assert (= (and b!1818351 res!817633) b!1818353))

(assert (= (and b!1818353 res!817631) b!1818354))

(declare-fun m!2247535 () Bool)

(assert (=> b!1818355 m!2247535))

(declare-fun m!2247539 () Bool)

(assert (=> b!1818354 m!2247539))

(declare-fun m!2247545 () Bool)

(assert (=> b!1818354 m!2247545))

(assert (=> b!1818351 m!2247539))

(declare-fun m!2247551 () Bool)

(assert (=> b!1818351 m!2247551))

(assert (=> b!1818351 m!2247551))

(declare-fun m!2247559 () Bool)

(assert (=> b!1818351 m!2247559))

(assert (=> b!1818356 m!2247539))

(declare-fun m!2247563 () Bool)

(assert (=> b!1818356 m!2247563))

(declare-fun m!2247565 () Bool)

(assert (=> b!1818356 m!2247565))

(declare-fun m!2247569 () Bool)

(assert (=> bm!114256 m!2247569))

(assert (=> b!1818358 m!2247539))

(declare-fun m!2247571 () Bool)

(assert (=> b!1818358 m!2247571))

(assert (=> b!1818358 m!2247571))

(declare-fun m!2247575 () Bool)

(assert (=> b!1818358 m!2247575))

(assert (=> b!1818353 m!2247539))

(assert (=> b!1818353 m!2247571))

(assert (=> b!1818353 m!2247571))

(assert (=> b!1818353 m!2247575))

(assert (=> b!1818353 m!2247575))

(declare-fun m!2247577 () Bool)

(assert (=> b!1818353 m!2247577))

(declare-fun m!2247579 () Bool)

(assert (=> b!1818352 m!2247579))

(declare-fun m!2247581 () Bool)

(assert (=> d!557319 m!2247581))

(declare-fun m!2247583 () Bool)

(assert (=> d!557319 m!2247583))

(declare-fun m!2247585 () Bool)

(assert (=> d!557319 m!2247585))

(assert (=> d!557319 m!2247459))

(assert (=> b!1818357 m!2247539))

(assert (=> b!1818357 m!2247571))

(assert (=> b!1818357 m!2247571))

(assert (=> b!1818357 m!2247575))

(assert (=> b!1818357 m!2247575))

(declare-fun m!2247587 () Bool)

(assert (=> b!1818357 m!2247587))

(assert (=> b!1818303 d!557319))

(declare-fun d!557327 () Bool)

(declare-fun lt!706539 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2912 (List!19957) (InoxSet Rule!6962))

(assert (=> d!557327 (= lt!706539 (select (content!2912 rules!4538) rule!559))))

(declare-fun e!1161901 () Bool)

(assert (=> d!557327 (= lt!706539 e!1161901)))

(declare-fun res!817650 () Bool)

(assert (=> d!557327 (=> (not res!817650) (not e!1161901))))

(assert (=> d!557327 (= res!817650 ((_ is Cons!19887) rules!4538))))

(assert (=> d!557327 (= (contains!3617 rules!4538 rule!559) lt!706539)))

(declare-fun b!1818384 () Bool)

(declare-fun e!1161902 () Bool)

(assert (=> b!1818384 (= e!1161901 e!1161902)))

(declare-fun res!817651 () Bool)

(assert (=> b!1818384 (=> res!817651 e!1161902)))

(assert (=> b!1818384 (= res!817651 (= (h!25288 rules!4538) rule!559))))

(declare-fun b!1818385 () Bool)

(assert (=> b!1818385 (= e!1161902 (contains!3617 (t!169706 rules!4538) rule!559))))

(assert (= (and d!557327 res!817650) b!1818384))

(assert (= (and b!1818384 (not res!817651)) b!1818385))

(declare-fun m!2247595 () Bool)

(assert (=> d!557327 m!2247595))

(declare-fun m!2247597 () Bool)

(assert (=> d!557327 m!2247597))

(declare-fun m!2247599 () Bool)

(assert (=> b!1818385 m!2247599))

(assert (=> b!1818294 d!557327))

(declare-fun d!557333 () Bool)

(declare-fun res!817662 () Bool)

(declare-fun e!1161911 () Bool)

(assert (=> d!557333 (=> (not res!817662) (not e!1161911))))

(declare-fun isEmpty!12579 (List!19956) Bool)

(assert (=> d!557333 (= res!817662 (not (isEmpty!12579 (originalCharacters!4389 token!556))))))

(assert (=> d!557333 (= (inv!25922 token!556) e!1161911)))

(declare-fun b!1818396 () Bool)

(declare-fun res!817663 () Bool)

(assert (=> b!1818396 (=> (not res!817663) (not e!1161911))))

(declare-fun dynLambda!9904 (Int TokenValue!3671) BalanceConc!13170)

(assert (=> b!1818396 (= res!817663 (= (originalCharacters!4389 token!556) (list!8089 (dynLambda!9904 (toChars!4975 (transformation!3581 (rule!5693 token!556))) (value!111725 token!556)))))))

(declare-fun b!1818397 () Bool)

(assert (=> b!1818397 (= e!1161911 (= (size!15785 token!556) (size!15786 (originalCharacters!4389 token!556))))))

(assert (= (and d!557333 res!817662) b!1818396))

(assert (= (and b!1818396 res!817663) b!1818397))

(declare-fun b_lambda!60003 () Bool)

(assert (=> (not b_lambda!60003) (not b!1818396)))

(declare-fun t!169714 () Bool)

(declare-fun tb!111147 () Bool)

(assert (=> (and b!1818301 (= (toChars!4975 (transformation!3581 (h!25288 rules!4538))) (toChars!4975 (transformation!3581 (rule!5693 token!556)))) t!169714) tb!111147))

(declare-fun b!1818402 () Bool)

(declare-fun e!1161914 () Bool)

(declare-fun tp!513847 () Bool)

(declare-fun inv!25925 (Conc!6613) Bool)

(assert (=> b!1818402 (= e!1161914 (and (inv!25925 (c!296818 (dynLambda!9904 (toChars!4975 (transformation!3581 (rule!5693 token!556))) (value!111725 token!556)))) tp!513847))))

(declare-fun result!133524 () Bool)

(declare-fun inv!25926 (BalanceConc!13170) Bool)

(assert (=> tb!111147 (= result!133524 (and (inv!25926 (dynLambda!9904 (toChars!4975 (transformation!3581 (rule!5693 token!556))) (value!111725 token!556))) e!1161914))))

(assert (= tb!111147 b!1818402))

(declare-fun m!2247607 () Bool)

(assert (=> b!1818402 m!2247607))

(declare-fun m!2247609 () Bool)

(assert (=> tb!111147 m!2247609))

(assert (=> b!1818396 t!169714))

(declare-fun b_and!140895 () Bool)

(assert (= b_and!140879 (and (=> t!169714 result!133524) b_and!140895)))

(declare-fun tb!111149 () Bool)

(declare-fun t!169716 () Bool)

(assert (=> (and b!1818308 (= (toChars!4975 (transformation!3581 rule!559)) (toChars!4975 (transformation!3581 (rule!5693 token!556)))) t!169716) tb!111149))

(declare-fun result!133528 () Bool)

(assert (= result!133528 result!133524))

(assert (=> b!1818396 t!169716))

(declare-fun b_and!140897 () Bool)

(assert (= b_and!140883 (and (=> t!169716 result!133528) b_and!140897)))

(declare-fun t!169718 () Bool)

(declare-fun tb!111151 () Bool)

(assert (=> (and b!1818305 (= (toChars!4975 (transformation!3581 (rule!5693 token!556))) (toChars!4975 (transformation!3581 (rule!5693 token!556)))) t!169718) tb!111151))

(declare-fun result!133530 () Bool)

(assert (= result!133530 result!133524))

(assert (=> b!1818396 t!169718))

(declare-fun b_and!140899 () Bool)

(assert (= b_and!140887 (and (=> t!169718 result!133530) b_and!140899)))

(declare-fun m!2247611 () Bool)

(assert (=> d!557333 m!2247611))

(declare-fun m!2247613 () Bool)

(assert (=> b!1818396 m!2247613))

(assert (=> b!1818396 m!2247613))

(declare-fun m!2247615 () Bool)

(assert (=> b!1818396 m!2247615))

(declare-fun m!2247617 () Bool)

(assert (=> b!1818397 m!2247617))

(assert (=> start!179950 d!557333))

(declare-fun b!1818431 () Bool)

(declare-fun res!817687 () Bool)

(declare-fun e!1161934 () Bool)

(assert (=> b!1818431 (=> res!817687 e!1161934)))

(declare-fun tail!2691 (List!19956) List!19956)

(assert (=> b!1818431 (= res!817687 (not (isEmpty!12579 (tail!2691 lt!706494))))))

(declare-fun d!557337 () Bool)

(declare-fun e!1161929 () Bool)

(assert (=> d!557337 e!1161929))

(declare-fun c!296836 () Bool)

(assert (=> d!557337 (= c!296836 ((_ is EmptyExpr!4909) (regex!3581 rule!559)))))

(declare-fun lt!706545 () Bool)

(declare-fun e!1161931 () Bool)

(assert (=> d!557337 (= lt!706545 e!1161931)))

(declare-fun c!296835 () Bool)

(assert (=> d!557337 (= c!296835 (isEmpty!12579 lt!706494))))

(declare-fun validRegex!1991 (Regex!4909) Bool)

(assert (=> d!557337 (validRegex!1991 (regex!3581 rule!559))))

(assert (=> d!557337 (= (matchR!2374 (regex!3581 rule!559) lt!706494) lt!706545)))

(declare-fun b!1818432 () Bool)

(declare-fun e!1161933 () Bool)

(assert (=> b!1818432 (= e!1161933 e!1161934)))

(declare-fun res!817683 () Bool)

(assert (=> b!1818432 (=> res!817683 e!1161934)))

(declare-fun call!114264 () Bool)

(assert (=> b!1818432 (= res!817683 call!114264)))

(declare-fun b!1818433 () Bool)

(declare-fun res!817684 () Bool)

(declare-fun e!1161930 () Bool)

(assert (=> b!1818433 (=> res!817684 e!1161930)))

(assert (=> b!1818433 (= res!817684 (not ((_ is ElementMatch!4909) (regex!3581 rule!559))))))

(declare-fun e!1161935 () Bool)

(assert (=> b!1818433 (= e!1161935 e!1161930)))

(declare-fun b!1818434 () Bool)

(assert (=> b!1818434 (= e!1161929 e!1161935)))

(declare-fun c!296837 () Bool)

(assert (=> b!1818434 (= c!296837 ((_ is EmptyLang!4909) (regex!3581 rule!559)))))

(declare-fun b!1818435 () Bool)

(declare-fun res!817681 () Bool)

(declare-fun e!1161932 () Bool)

(assert (=> b!1818435 (=> (not res!817681) (not e!1161932))))

(assert (=> b!1818435 (= res!817681 (not call!114264))))

(declare-fun b!1818436 () Bool)

(declare-fun nullable!1517 (Regex!4909) Bool)

(assert (=> b!1818436 (= e!1161931 (nullable!1517 (regex!3581 rule!559)))))

(declare-fun b!1818437 () Bool)

(declare-fun res!817680 () Bool)

(assert (=> b!1818437 (=> (not res!817680) (not e!1161932))))

(assert (=> b!1818437 (= res!817680 (isEmpty!12579 (tail!2691 lt!706494)))))

(declare-fun b!1818438 () Bool)

(assert (=> b!1818438 (= e!1161935 (not lt!706545))))

(declare-fun b!1818439 () Bool)

(declare-fun head!4232 (List!19956) C!9992)

(assert (=> b!1818439 (= e!1161934 (not (= (head!4232 lt!706494) (c!296819 (regex!3581 rule!559)))))))

(declare-fun b!1818440 () Bool)

(declare-fun res!817686 () Bool)

(assert (=> b!1818440 (=> res!817686 e!1161930)))

(assert (=> b!1818440 (= res!817686 e!1161932)))

(declare-fun res!817682 () Bool)

(assert (=> b!1818440 (=> (not res!817682) (not e!1161932))))

(assert (=> b!1818440 (= res!817682 lt!706545)))

(declare-fun bm!114259 () Bool)

(assert (=> bm!114259 (= call!114264 (isEmpty!12579 lt!706494))))

(declare-fun b!1818441 () Bool)

(assert (=> b!1818441 (= e!1161929 (= lt!706545 call!114264))))

(declare-fun b!1818442 () Bool)

(assert (=> b!1818442 (= e!1161932 (= (head!4232 lt!706494) (c!296819 (regex!3581 rule!559))))))

(declare-fun b!1818443 () Bool)

(declare-fun derivativeStep!1282 (Regex!4909 C!9992) Regex!4909)

(assert (=> b!1818443 (= e!1161931 (matchR!2374 (derivativeStep!1282 (regex!3581 rule!559) (head!4232 lt!706494)) (tail!2691 lt!706494)))))

(declare-fun b!1818444 () Bool)

(assert (=> b!1818444 (= e!1161930 e!1161933)))

(declare-fun res!817685 () Bool)

(assert (=> b!1818444 (=> (not res!817685) (not e!1161933))))

(assert (=> b!1818444 (= res!817685 (not lt!706545))))

(assert (= (and d!557337 c!296835) b!1818436))

(assert (= (and d!557337 (not c!296835)) b!1818443))

(assert (= (and d!557337 c!296836) b!1818441))

(assert (= (and d!557337 (not c!296836)) b!1818434))

(assert (= (and b!1818434 c!296837) b!1818438))

(assert (= (and b!1818434 (not c!296837)) b!1818433))

(assert (= (and b!1818433 (not res!817684)) b!1818440))

(assert (= (and b!1818440 res!817682) b!1818435))

(assert (= (and b!1818435 res!817681) b!1818437))

(assert (= (and b!1818437 res!817680) b!1818442))

(assert (= (and b!1818440 (not res!817686)) b!1818444))

(assert (= (and b!1818444 res!817685) b!1818432))

(assert (= (and b!1818432 (not res!817683)) b!1818431))

(assert (= (and b!1818431 (not res!817687)) b!1818439))

(assert (= (or b!1818441 b!1818432 b!1818435) bm!114259))

(declare-fun m!2247619 () Bool)

(assert (=> b!1818437 m!2247619))

(assert (=> b!1818437 m!2247619))

(declare-fun m!2247621 () Bool)

(assert (=> b!1818437 m!2247621))

(declare-fun m!2247623 () Bool)

(assert (=> b!1818439 m!2247623))

(declare-fun m!2247625 () Bool)

(assert (=> d!557337 m!2247625))

(declare-fun m!2247627 () Bool)

(assert (=> d!557337 m!2247627))

(declare-fun m!2247629 () Bool)

(assert (=> b!1818436 m!2247629))

(assert (=> b!1818443 m!2247623))

(assert (=> b!1818443 m!2247623))

(declare-fun m!2247631 () Bool)

(assert (=> b!1818443 m!2247631))

(assert (=> b!1818443 m!2247619))

(assert (=> b!1818443 m!2247631))

(assert (=> b!1818443 m!2247619))

(declare-fun m!2247633 () Bool)

(assert (=> b!1818443 m!2247633))

(assert (=> b!1818431 m!2247619))

(assert (=> b!1818431 m!2247619))

(assert (=> b!1818431 m!2247621))

(assert (=> bm!114259 m!2247625))

(assert (=> b!1818442 m!2247623))

(assert (=> b!1818295 d!557337))

(declare-fun d!557339 () Bool)

(declare-fun res!817692 () Bool)

(declare-fun e!1161938 () Bool)

(assert (=> d!557339 (=> (not res!817692) (not e!1161938))))

(assert (=> d!557339 (= res!817692 (validRegex!1991 (regex!3581 rule!559)))))

(assert (=> d!557339 (= (ruleValid!1073 thiss!28068 rule!559) e!1161938)))

(declare-fun b!1818449 () Bool)

(declare-fun res!817693 () Bool)

(assert (=> b!1818449 (=> (not res!817693) (not e!1161938))))

(assert (=> b!1818449 (= res!817693 (not (nullable!1517 (regex!3581 rule!559))))))

(declare-fun b!1818450 () Bool)

(assert (=> b!1818450 (= e!1161938 (not (= (tag!3995 rule!559) (String!22688 ""))))))

(assert (= (and d!557339 res!817692) b!1818449))

(assert (= (and b!1818449 res!817693) b!1818450))

(assert (=> d!557339 m!2247627))

(assert (=> b!1818449 m!2247629))

(assert (=> b!1818295 d!557339))

(declare-fun d!557341 () Bool)

(assert (=> d!557341 (ruleValid!1073 thiss!28068 rule!559)))

(declare-fun lt!706548 () Unit!34569)

(declare-fun choose!11462 (LexerInterface!3210 Rule!6962 List!19957) Unit!34569)

(assert (=> d!557341 (= lt!706548 (choose!11462 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557341 (contains!3617 rules!4538 rule!559)))

(assert (=> d!557341 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!594 thiss!28068 rule!559 rules!4538) lt!706548)))

(declare-fun bs!407254 () Bool)

(assert (= bs!407254 d!557341))

(assert (=> bs!407254 m!2247465))

(declare-fun m!2247635 () Bool)

(assert (=> bs!407254 m!2247635))

(assert (=> bs!407254 m!2247471))

(assert (=> b!1818295 d!557341))

(declare-fun b!1818469 () Bool)

(declare-fun e!1161948 () Bool)

(declare-fun lt!706559 () Option!4161)

(assert (=> b!1818469 (= e!1161948 (= (size!15785 (_1!11117 (get!6159 lt!706559))) (size!15786 (originalCharacters!4389 (_1!11117 (get!6159 lt!706559))))))))

(declare-fun b!1818470 () Bool)

(declare-fun e!1161949 () Option!4161)

(assert (=> b!1818470 (= e!1161949 None!4160)))

(declare-fun d!557343 () Bool)

(declare-fun e!1161950 () Bool)

(assert (=> d!557343 e!1161950))

(declare-fun res!817708 () Bool)

(assert (=> d!557343 (=> res!817708 e!1161950)))

(assert (=> d!557343 (= res!817708 (isEmpty!12578 lt!706559))))

(assert (=> d!557343 (= lt!706559 e!1161949)))

(declare-fun c!296840 () Bool)

(declare-datatypes ((tuple2!19434 0))(
  ( (tuple2!19435 (_1!11119 List!19956) (_2!11119 List!19956)) )
))
(declare-fun lt!706561 () tuple2!19434)

(assert (=> d!557343 (= c!296840 (isEmpty!12579 (_1!11119 lt!706561)))))

(declare-fun findLongestMatch!418 (Regex!4909 List!19956) tuple2!19434)

(assert (=> d!557343 (= lt!706561 (findLongestMatch!418 (regex!3581 rule!559) input!3612))))

(assert (=> d!557343 (ruleValid!1073 thiss!28068 rule!559)))

(assert (=> d!557343 (= (maxPrefixOneRule!1123 thiss!28068 rule!559 input!3612) lt!706559)))

(declare-fun b!1818471 () Bool)

(declare-fun size!15788 (BalanceConc!13170) Int)

(assert (=> b!1818471 (= e!1161949 (Some!4160 (tuple2!19431 (Token!6717 (apply!5373 (transformation!3581 rule!559) (seqFromList!2542 (_1!11119 lt!706561))) rule!559 (size!15788 (seqFromList!2542 (_1!11119 lt!706561))) (_1!11119 lt!706561)) (_2!11119 lt!706561))))))

(declare-fun lt!706560 () Unit!34569)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!475 (Regex!4909 List!19956) Unit!34569)

(assert (=> b!1818471 (= lt!706560 (longestMatchIsAcceptedByMatchOrIsEmpty!475 (regex!3581 rule!559) input!3612))))

(declare-fun res!817712 () Bool)

(declare-fun findLongestMatchInner!491 (Regex!4909 List!19956 Int List!19956 List!19956 Int) tuple2!19434)

(assert (=> b!1818471 (= res!817712 (isEmpty!12579 (_1!11119 (findLongestMatchInner!491 (regex!3581 rule!559) Nil!19886 (size!15786 Nil!19886) input!3612 input!3612 (size!15786 input!3612)))))))

(declare-fun e!1161947 () Bool)

(assert (=> b!1818471 (=> res!817712 e!1161947)))

(assert (=> b!1818471 e!1161947))

(declare-fun lt!706562 () Unit!34569)

(assert (=> b!1818471 (= lt!706562 lt!706560)))

(declare-fun lt!706563 () Unit!34569)

(declare-fun lemmaSemiInverse!705 (TokenValueInjection!7002 BalanceConc!13170) Unit!34569)

(assert (=> b!1818471 (= lt!706563 (lemmaSemiInverse!705 (transformation!3581 rule!559) (seqFromList!2542 (_1!11119 lt!706561))))))

(declare-fun b!1818472 () Bool)

(declare-fun res!817714 () Bool)

(assert (=> b!1818472 (=> (not res!817714) (not e!1161948))))

(assert (=> b!1818472 (= res!817714 (< (size!15786 (_2!11117 (get!6159 lt!706559))) (size!15786 input!3612)))))

(declare-fun b!1818473 () Bool)

(declare-fun res!817710 () Bool)

(assert (=> b!1818473 (=> (not res!817710) (not e!1161948))))

(assert (=> b!1818473 (= res!817710 (= (rule!5693 (_1!11117 (get!6159 lt!706559))) rule!559))))

(declare-fun b!1818474 () Bool)

(declare-fun res!817709 () Bool)

(assert (=> b!1818474 (=> (not res!817709) (not e!1161948))))

(assert (=> b!1818474 (= res!817709 (= (value!111725 (_1!11117 (get!6159 lt!706559))) (apply!5373 (transformation!3581 (rule!5693 (_1!11117 (get!6159 lt!706559)))) (seqFromList!2542 (originalCharacters!4389 (_1!11117 (get!6159 lt!706559)))))))))

(declare-fun b!1818475 () Bool)

(assert (=> b!1818475 (= e!1161947 (matchR!2374 (regex!3581 rule!559) (_1!11119 (findLongestMatchInner!491 (regex!3581 rule!559) Nil!19886 (size!15786 Nil!19886) input!3612 input!3612 (size!15786 input!3612)))))))

(declare-fun b!1818476 () Bool)

(declare-fun res!817711 () Bool)

(assert (=> b!1818476 (=> (not res!817711) (not e!1161948))))

(assert (=> b!1818476 (= res!817711 (= (++!5405 (list!8089 (charsOf!2224 (_1!11117 (get!6159 lt!706559)))) (_2!11117 (get!6159 lt!706559))) input!3612))))

(declare-fun b!1818477 () Bool)

(assert (=> b!1818477 (= e!1161950 e!1161948)))

(declare-fun res!817713 () Bool)

(assert (=> b!1818477 (=> (not res!817713) (not e!1161948))))

(assert (=> b!1818477 (= res!817713 (matchR!2374 (regex!3581 rule!559) (list!8089 (charsOf!2224 (_1!11117 (get!6159 lt!706559))))))))

(assert (= (and d!557343 c!296840) b!1818470))

(assert (= (and d!557343 (not c!296840)) b!1818471))

(assert (= (and b!1818471 (not res!817712)) b!1818475))

(assert (= (and d!557343 (not res!817708)) b!1818477))

(assert (= (and b!1818477 res!817713) b!1818476))

(assert (= (and b!1818476 res!817711) b!1818472))

(assert (= (and b!1818472 res!817714) b!1818473))

(assert (= (and b!1818473 res!817710) b!1818474))

(assert (= (and b!1818474 res!817709) b!1818469))

(declare-fun m!2247637 () Bool)

(assert (=> d!557343 m!2247637))

(declare-fun m!2247639 () Bool)

(assert (=> d!557343 m!2247639))

(declare-fun m!2247641 () Bool)

(assert (=> d!557343 m!2247641))

(assert (=> d!557343 m!2247465))

(declare-fun m!2247643 () Bool)

(assert (=> b!1818475 m!2247643))

(assert (=> b!1818475 m!2247565))

(assert (=> b!1818475 m!2247643))

(assert (=> b!1818475 m!2247565))

(declare-fun m!2247645 () Bool)

(assert (=> b!1818475 m!2247645))

(declare-fun m!2247647 () Bool)

(assert (=> b!1818475 m!2247647))

(declare-fun m!2247649 () Bool)

(assert (=> b!1818471 m!2247649))

(assert (=> b!1818471 m!2247649))

(declare-fun m!2247651 () Bool)

(assert (=> b!1818471 m!2247651))

(declare-fun m!2247653 () Bool)

(assert (=> b!1818471 m!2247653))

(assert (=> b!1818471 m!2247643))

(assert (=> b!1818471 m!2247643))

(assert (=> b!1818471 m!2247565))

(assert (=> b!1818471 m!2247645))

(assert (=> b!1818471 m!2247649))

(declare-fun m!2247655 () Bool)

(assert (=> b!1818471 m!2247655))

(assert (=> b!1818471 m!2247565))

(declare-fun m!2247657 () Bool)

(assert (=> b!1818471 m!2247657))

(assert (=> b!1818471 m!2247649))

(declare-fun m!2247659 () Bool)

(assert (=> b!1818471 m!2247659))

(declare-fun m!2247661 () Bool)

(assert (=> b!1818477 m!2247661))

(declare-fun m!2247663 () Bool)

(assert (=> b!1818477 m!2247663))

(assert (=> b!1818477 m!2247663))

(declare-fun m!2247665 () Bool)

(assert (=> b!1818477 m!2247665))

(assert (=> b!1818477 m!2247665))

(declare-fun m!2247667 () Bool)

(assert (=> b!1818477 m!2247667))

(assert (=> b!1818474 m!2247661))

(declare-fun m!2247669 () Bool)

(assert (=> b!1818474 m!2247669))

(assert (=> b!1818474 m!2247669))

(declare-fun m!2247671 () Bool)

(assert (=> b!1818474 m!2247671))

(assert (=> b!1818473 m!2247661))

(assert (=> b!1818476 m!2247661))

(assert (=> b!1818476 m!2247663))

(assert (=> b!1818476 m!2247663))

(assert (=> b!1818476 m!2247665))

(assert (=> b!1818476 m!2247665))

(declare-fun m!2247673 () Bool)

(assert (=> b!1818476 m!2247673))

(assert (=> b!1818472 m!2247661))

(declare-fun m!2247675 () Bool)

(assert (=> b!1818472 m!2247675))

(assert (=> b!1818472 m!2247565))

(assert (=> b!1818469 m!2247661))

(declare-fun m!2247677 () Bool)

(assert (=> b!1818469 m!2247677))

(assert (=> b!1818304 d!557343))

(declare-fun d!557345 () Bool)

(declare-fun lt!706566 () Int)

(assert (=> d!557345 (>= lt!706566 0)))

(declare-fun e!1161953 () Int)

(assert (=> d!557345 (= lt!706566 e!1161953)))

(declare-fun c!296843 () Bool)

(assert (=> d!557345 (= c!296843 ((_ is Nil!19886) lt!706494))))

(assert (=> d!557345 (= (size!15786 lt!706494) lt!706566)))

(declare-fun b!1818482 () Bool)

(assert (=> b!1818482 (= e!1161953 0)))

(declare-fun b!1818483 () Bool)

(assert (=> b!1818483 (= e!1161953 (+ 1 (size!15786 (t!169705 lt!706494))))))

(assert (= (and d!557345 c!296843) b!1818482))

(assert (= (and d!557345 (not c!296843)) b!1818483))

(declare-fun m!2247679 () Bool)

(assert (=> b!1818483 m!2247679))

(assert (=> b!1818304 d!557345))

(declare-fun d!557347 () Bool)

(declare-fun fromListB!1162 (List!19956) BalanceConc!13170)

(assert (=> d!557347 (= (seqFromList!2542 lt!706494) (fromListB!1162 lt!706494))))

(declare-fun bs!407255 () Bool)

(assert (= bs!407255 d!557347))

(declare-fun m!2247681 () Bool)

(assert (=> bs!407255 m!2247681))

(assert (=> b!1818304 d!557347))

(declare-fun d!557349 () Bool)

(declare-fun dynLambda!9905 (Int BalanceConc!13170) TokenValue!3671)

(assert (=> d!557349 (= (apply!5373 (transformation!3581 rule!559) (seqFromList!2542 lt!706494)) (dynLambda!9905 (toValue!5116 (transformation!3581 rule!559)) (seqFromList!2542 lt!706494)))))

(declare-fun b_lambda!60005 () Bool)

(assert (=> (not b_lambda!60005) (not d!557349)))

(declare-fun t!169720 () Bool)

(declare-fun tb!111153 () Bool)

(assert (=> (and b!1818301 (= (toValue!5116 (transformation!3581 (h!25288 rules!4538))) (toValue!5116 (transformation!3581 rule!559))) t!169720) tb!111153))

(declare-fun result!133532 () Bool)

(assert (=> tb!111153 (= result!133532 (inv!21 (dynLambda!9905 (toValue!5116 (transformation!3581 rule!559)) (seqFromList!2542 lt!706494))))))

(declare-fun m!2247683 () Bool)

(assert (=> tb!111153 m!2247683))

(assert (=> d!557349 t!169720))

(declare-fun b_and!140901 () Bool)

(assert (= b_and!140877 (and (=> t!169720 result!133532) b_and!140901)))

(declare-fun t!169722 () Bool)

(declare-fun tb!111155 () Bool)

(assert (=> (and b!1818308 (= (toValue!5116 (transformation!3581 rule!559)) (toValue!5116 (transformation!3581 rule!559))) t!169722) tb!111155))

(declare-fun result!133536 () Bool)

(assert (= result!133536 result!133532))

(assert (=> d!557349 t!169722))

(declare-fun b_and!140903 () Bool)

(assert (= b_and!140881 (and (=> t!169722 result!133536) b_and!140903)))

(declare-fun tb!111157 () Bool)

(declare-fun t!169724 () Bool)

(assert (=> (and b!1818305 (= (toValue!5116 (transformation!3581 (rule!5693 token!556))) (toValue!5116 (transformation!3581 rule!559))) t!169724) tb!111157))

(declare-fun result!133538 () Bool)

(assert (= result!133538 result!133532))

(assert (=> d!557349 t!169724))

(declare-fun b_and!140905 () Bool)

(assert (= b_and!140885 (and (=> t!169724 result!133538) b_and!140905)))

(assert (=> d!557349 m!2247473))

(declare-fun m!2247685 () Bool)

(assert (=> d!557349 m!2247685))

(assert (=> b!1818304 d!557349))

(declare-fun d!557351 () Bool)

(assert (=> d!557351 (= (maxPrefixOneRule!1123 thiss!28068 rule!559 input!3612) (Some!4160 (tuple2!19431 (Token!6717 (apply!5373 (transformation!3581 rule!559) (seqFromList!2542 lt!706494)) rule!559 (size!15786 lt!706494) lt!706494) suffix!1667)))))

(declare-fun lt!706569 () Unit!34569)

(declare-fun choose!11463 (LexerInterface!3210 List!19957 List!19956 List!19956 List!19956 Rule!6962) Unit!34569)

(assert (=> d!557351 (= lt!706569 (choose!11463 thiss!28068 rules!4538 lt!706494 input!3612 suffix!1667 rule!559))))

(assert (=> d!557351 (not (isEmpty!12575 rules!4538))))

(assert (=> d!557351 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!499 thiss!28068 rules!4538 lt!706494 input!3612 suffix!1667 rule!559) lt!706569)))

(declare-fun bs!407256 () Bool)

(assert (= bs!407256 d!557351))

(assert (=> bs!407256 m!2247483))

(assert (=> bs!407256 m!2247473))

(assert (=> bs!407256 m!2247473))

(assert (=> bs!407256 m!2247481))

(assert (=> bs!407256 m!2247475))

(assert (=> bs!407256 m!2247479))

(declare-fun m!2247687 () Bool)

(assert (=> bs!407256 m!2247687))

(assert (=> b!1818304 d!557351))

(declare-fun d!557353 () Bool)

(assert (=> d!557353 (= (isEmpty!12575 rules!4538) ((_ is Nil!19887) rules!4538))))

(assert (=> b!1818297 d!557353))

(declare-fun d!557355 () Bool)

(assert (=> d!557355 true))

(declare-fun lt!706615 () Bool)

(declare-fun lambda!71120 () Int)

(declare-fun forall!4292 (List!19957 Int) Bool)

(assert (=> d!557355 (= lt!706615 (forall!4292 rules!4538 lambda!71120))))

(declare-fun e!1162051 () Bool)

(assert (=> d!557355 (= lt!706615 e!1162051)))

(declare-fun res!817796 () Bool)

(assert (=> d!557355 (=> res!817796 e!1162051)))

(assert (=> d!557355 (= res!817796 (not ((_ is Cons!19887) rules!4538)))))

(assert (=> d!557355 (= (rulesValidInductive!1226 thiss!28068 rules!4538) lt!706615)))

(declare-fun b!1818661 () Bool)

(declare-fun e!1162050 () Bool)

(assert (=> b!1818661 (= e!1162051 e!1162050)))

(declare-fun res!817795 () Bool)

(assert (=> b!1818661 (=> (not res!817795) (not e!1162050))))

(assert (=> b!1818661 (= res!817795 (ruleValid!1073 thiss!28068 (h!25288 rules!4538)))))

(declare-fun b!1818662 () Bool)

(assert (=> b!1818662 (= e!1162050 (rulesValidInductive!1226 thiss!28068 (t!169706 rules!4538)))))

(assert (= (and d!557355 (not res!817796)) b!1818661))

(assert (= (and b!1818661 res!817795) b!1818662))

(declare-fun m!2247811 () Bool)

(assert (=> d!557355 m!2247811))

(declare-fun m!2247813 () Bool)

(assert (=> b!1818661 m!2247813))

(declare-fun m!2247815 () Bool)

(assert (=> b!1818662 m!2247815))

(assert (=> b!1818306 d!557355))

(declare-fun d!557393 () Bool)

(declare-fun lambda!71125 () Int)

(declare-fun lambda!71126 () Int)

(declare-datatypes ((List!19960 0))(
  ( (Nil!19890) (Cons!19890 (h!25291 Regex!4909) (t!169741 List!19960)) )
))
(declare-fun forall!4293 (List!19960 Int) Bool)

(declare-fun map!4102 (List!19957 Int) List!19960)

(assert (=> d!557393 (forall!4293 (map!4102 rules!4538 lambda!71125) lambda!71126)))

(declare-fun lt!706629 () Unit!34569)

(declare-fun e!1162054 () Unit!34569)

(assert (=> d!557393 (= lt!706629 e!1162054)))

(declare-fun c!296870 () Bool)

(assert (=> d!557393 (= c!296870 ((_ is Nil!19887) rules!4538))))

(declare-fun rulesValid!1357 (LexerInterface!3210 List!19957) Bool)

(assert (=> d!557393 (rulesValid!1357 thiss!28068 rules!4538)))

(declare-fun lt!706626 () Unit!34569)

(declare-fun lt!706630 () Unit!34569)

(assert (=> d!557393 (= lt!706626 lt!706630)))

(declare-fun lt!706628 () List!19956)

(assert (=> d!557393 (= (maxPrefixOneRule!1123 thiss!28068 rule!559 input!3612) (Some!4160 (tuple2!19431 (Token!6717 (apply!5373 (transformation!3581 rule!559) (seqFromList!2542 lt!706628)) rule!559 (size!15786 lt!706628) lt!706628) suffix!1667)))))

(assert (=> d!557393 (= lt!706630 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!499 thiss!28068 rules!4538 lt!706628 input!3612 suffix!1667 rule!559))))

(assert (=> d!557393 (= lt!706628 (list!8089 (charsOf!2224 token!556)))))

(assert (=> d!557393 (= (lemma!434 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!706629)))

(declare-fun b!1818669 () Bool)

(declare-fun Unit!34573 () Unit!34569)

(assert (=> b!1818669 (= e!1162054 Unit!34573)))

(declare-fun b!1818670 () Bool)

(declare-fun Unit!34574 () Unit!34569)

(assert (=> b!1818670 (= e!1162054 Unit!34574)))

(declare-fun lt!706627 () Unit!34569)

(assert (=> b!1818670 (= lt!706627 (lemma!434 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169706 rules!4538)))))

(assert (= (and d!557393 c!296870) b!1818669))

(assert (= (and d!557393 (not c!296870)) b!1818670))

(declare-fun m!2247817 () Bool)

(assert (=> d!557393 m!2247817))

(declare-fun m!2247819 () Bool)

(assert (=> d!557393 m!2247819))

(assert (=> d!557393 m!2247499))

(assert (=> d!557393 m!2247501))

(assert (=> d!557393 m!2247475))

(assert (=> d!557393 m!2247819))

(declare-fun m!2247821 () Bool)

(assert (=> d!557393 m!2247821))

(declare-fun m!2247823 () Bool)

(assert (=> d!557393 m!2247823))

(declare-fun m!2247825 () Bool)

(assert (=> d!557393 m!2247825))

(declare-fun m!2247827 () Bool)

(assert (=> d!557393 m!2247827))

(assert (=> d!557393 m!2247823))

(declare-fun m!2247829 () Bool)

(assert (=> d!557393 m!2247829))

(assert (=> d!557393 m!2247499))

(declare-fun m!2247831 () Bool)

(assert (=> b!1818670 m!2247831))

(assert (=> b!1818306 d!557393))

(declare-fun d!557395 () Bool)

(assert (=> d!557395 (= (inv!25918 (tag!3995 (rule!5693 token!556))) (= (mod (str.len (value!111724 (tag!3995 (rule!5693 token!556)))) 2) 0))))

(assert (=> b!1818296 d!557395))

(declare-fun d!557397 () Bool)

(declare-fun res!817797 () Bool)

(declare-fun e!1162055 () Bool)

(assert (=> d!557397 (=> (not res!817797) (not e!1162055))))

(assert (=> d!557397 (= res!817797 (semiInverseModEq!1432 (toChars!4975 (transformation!3581 (rule!5693 token!556))) (toValue!5116 (transformation!3581 (rule!5693 token!556)))))))

(assert (=> d!557397 (= (inv!25921 (transformation!3581 (rule!5693 token!556))) e!1162055)))

(declare-fun b!1818671 () Bool)

(assert (=> b!1818671 (= e!1162055 (equivClasses!1373 (toChars!4975 (transformation!3581 (rule!5693 token!556))) (toValue!5116 (transformation!3581 (rule!5693 token!556)))))))

(assert (= (and d!557397 res!817797) b!1818671))

(declare-fun m!2247833 () Bool)

(assert (=> d!557397 m!2247833))

(declare-fun m!2247835 () Bool)

(assert (=> b!1818671 m!2247835))

(assert (=> b!1818296 d!557397))

(declare-fun d!557399 () Bool)

(assert (=> d!557399 (= (inv!25918 (tag!3995 rule!559)) (= (mod (str.len (value!111724 (tag!3995 rule!559))) 2) 0))))

(assert (=> b!1818300 d!557399))

(declare-fun d!557401 () Bool)

(declare-fun res!817798 () Bool)

(declare-fun e!1162056 () Bool)

(assert (=> d!557401 (=> (not res!817798) (not e!1162056))))

(assert (=> d!557401 (= res!817798 (semiInverseModEq!1432 (toChars!4975 (transformation!3581 rule!559)) (toValue!5116 (transformation!3581 rule!559))))))

(assert (=> d!557401 (= (inv!25921 (transformation!3581 rule!559)) e!1162056)))

(declare-fun b!1818672 () Bool)

(assert (=> b!1818672 (= e!1162056 (equivClasses!1373 (toChars!4975 (transformation!3581 rule!559)) (toValue!5116 (transformation!3581 rule!559))))))

(assert (= (and d!557401 res!817798) b!1818672))

(declare-fun m!2247837 () Bool)

(assert (=> d!557401 m!2247837))

(declare-fun m!2247839 () Bool)

(assert (=> b!1818672 m!2247839))

(assert (=> b!1818300 d!557401))

(declare-fun b!1818682 () Bool)

(declare-fun e!1162061 () List!19956)

(assert (=> b!1818682 (= e!1162061 (Cons!19886 (h!25287 lt!706494) (++!5405 (t!169705 lt!706494) suffix!1667)))))

(declare-fun e!1162062 () Bool)

(declare-fun lt!706633 () List!19956)

(declare-fun b!1818684 () Bool)

(assert (=> b!1818684 (= e!1162062 (or (not (= suffix!1667 Nil!19886)) (= lt!706633 lt!706494)))))

(declare-fun b!1818681 () Bool)

(assert (=> b!1818681 (= e!1162061 suffix!1667)))

(declare-fun d!557403 () Bool)

(assert (=> d!557403 e!1162062))

(declare-fun res!817803 () Bool)

(assert (=> d!557403 (=> (not res!817803) (not e!1162062))))

(declare-fun content!2913 (List!19956) (InoxSet C!9992))

(assert (=> d!557403 (= res!817803 (= (content!2913 lt!706633) ((_ map or) (content!2913 lt!706494) (content!2913 suffix!1667))))))

(assert (=> d!557403 (= lt!706633 e!1162061)))

(declare-fun c!296873 () Bool)

(assert (=> d!557403 (= c!296873 ((_ is Nil!19886) lt!706494))))

(assert (=> d!557403 (= (++!5405 lt!706494 suffix!1667) lt!706633)))

(declare-fun b!1818683 () Bool)

(declare-fun res!817804 () Bool)

(assert (=> b!1818683 (=> (not res!817804) (not e!1162062))))

(assert (=> b!1818683 (= res!817804 (= (size!15786 lt!706633) (+ (size!15786 lt!706494) (size!15786 suffix!1667))))))

(assert (= (and d!557403 c!296873) b!1818681))

(assert (= (and d!557403 (not c!296873)) b!1818682))

(assert (= (and d!557403 res!817803) b!1818683))

(assert (= (and b!1818683 res!817804) b!1818684))

(declare-fun m!2247841 () Bool)

(assert (=> b!1818682 m!2247841))

(declare-fun m!2247843 () Bool)

(assert (=> d!557403 m!2247843))

(declare-fun m!2247845 () Bool)

(assert (=> d!557403 m!2247845))

(declare-fun m!2247847 () Bool)

(assert (=> d!557403 m!2247847))

(declare-fun m!2247849 () Bool)

(assert (=> b!1818683 m!2247849))

(assert (=> b!1818683 m!2247479))

(declare-fun m!2247851 () Bool)

(assert (=> b!1818683 m!2247851))

(assert (=> b!1818309 d!557403))

(declare-fun d!557405 () Bool)

(declare-fun list!8091 (Conc!6613) List!19956)

(assert (=> d!557405 (= (list!8089 (charsOf!2224 token!556)) (list!8091 (c!296818 (charsOf!2224 token!556))))))

(declare-fun bs!407259 () Bool)

(assert (= bs!407259 d!557405))

(declare-fun m!2247853 () Bool)

(assert (=> bs!407259 m!2247853))

(assert (=> b!1818309 d!557405))

(declare-fun d!557407 () Bool)

(declare-fun lt!706636 () BalanceConc!13170)

(assert (=> d!557407 (= (list!8089 lt!706636) (originalCharacters!4389 token!556))))

(assert (=> d!557407 (= lt!706636 (dynLambda!9904 (toChars!4975 (transformation!3581 (rule!5693 token!556))) (value!111725 token!556)))))

(assert (=> d!557407 (= (charsOf!2224 token!556) lt!706636)))

(declare-fun b_lambda!60017 () Bool)

(assert (=> (not b_lambda!60017) (not d!557407)))

(assert (=> d!557407 t!169714))

(declare-fun b_and!140923 () Bool)

(assert (= b_and!140895 (and (=> t!169714 result!133524) b_and!140923)))

(assert (=> d!557407 t!169716))

(declare-fun b_and!140925 () Bool)

(assert (= b_and!140897 (and (=> t!169716 result!133528) b_and!140925)))

(assert (=> d!557407 t!169718))

(declare-fun b_and!140927 () Bool)

(assert (= b_and!140899 (and (=> t!169718 result!133530) b_and!140927)))

(declare-fun m!2247855 () Bool)

(assert (=> d!557407 m!2247855))

(assert (=> d!557407 m!2247613))

(assert (=> b!1818309 d!557407))

(declare-fun d!557409 () Bool)

(declare-fun res!817807 () Bool)

(declare-fun e!1162065 () Bool)

(assert (=> d!557409 (=> (not res!817807) (not e!1162065))))

(assert (=> d!557409 (= res!817807 (rulesValid!1357 thiss!28068 rules!4538))))

(assert (=> d!557409 (= (rulesInvariant!2879 thiss!28068 rules!4538) e!1162065)))

(declare-fun b!1818687 () Bool)

(declare-datatypes ((List!19961 0))(
  ( (Nil!19891) (Cons!19891 (h!25292 String!22687) (t!169742 List!19961)) )
))
(declare-fun noDuplicateTag!1357 (LexerInterface!3210 List!19957 List!19961) Bool)

(assert (=> b!1818687 (= e!1162065 (noDuplicateTag!1357 thiss!28068 rules!4538 Nil!19891))))

(assert (= (and d!557409 res!817807) b!1818687))

(assert (=> d!557409 m!2247817))

(declare-fun m!2247857 () Bool)

(assert (=> b!1818687 m!2247857))

(assert (=> b!1818298 d!557409))

(declare-fun b!1818698 () Bool)

(declare-fun e!1162073 () Bool)

(declare-fun e!1162072 () Bool)

(assert (=> b!1818698 (= e!1162073 e!1162072)))

(declare-fun c!296878 () Bool)

(assert (=> b!1818698 (= c!296878 ((_ is IntegerValue!11014) (value!111725 token!556)))))

(declare-fun b!1818700 () Bool)

(declare-fun inv!16 (TokenValue!3671) Bool)

(assert (=> b!1818700 (= e!1162073 (inv!16 (value!111725 token!556)))))

(declare-fun b!1818701 () Bool)

(declare-fun inv!17 (TokenValue!3671) Bool)

(assert (=> b!1818701 (= e!1162072 (inv!17 (value!111725 token!556)))))

(declare-fun b!1818702 () Bool)

(declare-fun res!817810 () Bool)

(declare-fun e!1162074 () Bool)

(assert (=> b!1818702 (=> res!817810 e!1162074)))

(assert (=> b!1818702 (= res!817810 (not ((_ is IntegerValue!11015) (value!111725 token!556))))))

(assert (=> b!1818702 (= e!1162072 e!1162074)))

(declare-fun b!1818699 () Bool)

(declare-fun inv!15 (TokenValue!3671) Bool)

(assert (=> b!1818699 (= e!1162074 (inv!15 (value!111725 token!556)))))

(declare-fun d!557411 () Bool)

(declare-fun c!296879 () Bool)

(assert (=> d!557411 (= c!296879 ((_ is IntegerValue!11013) (value!111725 token!556)))))

(assert (=> d!557411 (= (inv!21 (value!111725 token!556)) e!1162073)))

(assert (= (and d!557411 c!296879) b!1818700))

(assert (= (and d!557411 (not c!296879)) b!1818698))

(assert (= (and b!1818698 c!296878) b!1818701))

(assert (= (and b!1818698 (not c!296878)) b!1818702))

(assert (= (and b!1818702 (not res!817810)) b!1818699))

(declare-fun m!2247859 () Bool)

(assert (=> b!1818700 m!2247859))

(declare-fun m!2247861 () Bool)

(assert (=> b!1818701 m!2247861))

(declare-fun m!2247863 () Bool)

(assert (=> b!1818699 m!2247863))

(assert (=> b!1818299 d!557411))

(declare-fun b!1818714 () Bool)

(declare-fun e!1162077 () Bool)

(declare-fun tp!513903 () Bool)

(declare-fun tp!513907 () Bool)

(assert (=> b!1818714 (= e!1162077 (and tp!513903 tp!513907))))

(declare-fun b!1818715 () Bool)

(declare-fun tp!513905 () Bool)

(assert (=> b!1818715 (= e!1162077 tp!513905)))

(assert (=> b!1818302 (= tp!513835 e!1162077)))

(declare-fun b!1818716 () Bool)

(declare-fun tp!513904 () Bool)

(declare-fun tp!513906 () Bool)

(assert (=> b!1818716 (= e!1162077 (and tp!513904 tp!513906))))

(declare-fun b!1818713 () Bool)

(assert (=> b!1818713 (= e!1162077 tp_is_empty!8053)))

(assert (= (and b!1818302 ((_ is ElementMatch!4909) (regex!3581 (h!25288 rules!4538)))) b!1818713))

(assert (= (and b!1818302 ((_ is Concat!8581) (regex!3581 (h!25288 rules!4538)))) b!1818714))

(assert (= (and b!1818302 ((_ is Star!4909) (regex!3581 (h!25288 rules!4538)))) b!1818715))

(assert (= (and b!1818302 ((_ is Union!4909) (regex!3581 (h!25288 rules!4538)))) b!1818716))

(declare-fun b!1818721 () Bool)

(declare-fun e!1162080 () Bool)

(declare-fun tp!513910 () Bool)

(assert (=> b!1818721 (= e!1162080 (and tp_is_empty!8053 tp!513910))))

(assert (=> b!1818292 (= tp!513841 e!1162080)))

(assert (= (and b!1818292 ((_ is Cons!19886) (t!169705 input!3612))) b!1818721))

(declare-fun b!1818722 () Bool)

(declare-fun e!1162081 () Bool)

(declare-fun tp!513911 () Bool)

(assert (=> b!1818722 (= e!1162081 (and tp_is_empty!8053 tp!513911))))

(assert (=> b!1818307 (= tp!513839 e!1162081)))

(assert (= (and b!1818307 ((_ is Cons!19886) (t!169705 suffix!1667))) b!1818722))

(declare-fun b!1818724 () Bool)

(declare-fun e!1162082 () Bool)

(declare-fun tp!513912 () Bool)

(declare-fun tp!513916 () Bool)

(assert (=> b!1818724 (= e!1162082 (and tp!513912 tp!513916))))

(declare-fun b!1818725 () Bool)

(declare-fun tp!513914 () Bool)

(assert (=> b!1818725 (= e!1162082 tp!513914)))

(assert (=> b!1818296 (= tp!513832 e!1162082)))

(declare-fun b!1818726 () Bool)

(declare-fun tp!513913 () Bool)

(declare-fun tp!513915 () Bool)

(assert (=> b!1818726 (= e!1162082 (and tp!513913 tp!513915))))

(declare-fun b!1818723 () Bool)

(assert (=> b!1818723 (= e!1162082 tp_is_empty!8053)))

(assert (= (and b!1818296 ((_ is ElementMatch!4909) (regex!3581 (rule!5693 token!556)))) b!1818723))

(assert (= (and b!1818296 ((_ is Concat!8581) (regex!3581 (rule!5693 token!556)))) b!1818724))

(assert (= (and b!1818296 ((_ is Star!4909) (regex!3581 (rule!5693 token!556)))) b!1818725))

(assert (= (and b!1818296 ((_ is Union!4909) (regex!3581 (rule!5693 token!556)))) b!1818726))

(declare-fun b!1818737 () Bool)

(declare-fun b_free!50351 () Bool)

(declare-fun b_next!51055 () Bool)

(assert (=> b!1818737 (= b_free!50351 (not b_next!51055))))

(declare-fun t!169737 () Bool)

(declare-fun tb!111169 () Bool)

(assert (=> (and b!1818737 (= (toValue!5116 (transformation!3581 (h!25288 (t!169706 rules!4538)))) (toValue!5116 (transformation!3581 rule!559))) t!169737) tb!111169))

(declare-fun result!133564 () Bool)

(assert (= result!133564 result!133532))

(assert (=> d!557349 t!169737))

(declare-fun tp!513927 () Bool)

(declare-fun b_and!140929 () Bool)

(assert (=> b!1818737 (= tp!513927 (and (=> t!169737 result!133564) b_and!140929))))

(declare-fun b_free!50353 () Bool)

(declare-fun b_next!51057 () Bool)

(assert (=> b!1818737 (= b_free!50353 (not b_next!51057))))

(declare-fun tb!111171 () Bool)

(declare-fun t!169739 () Bool)

(assert (=> (and b!1818737 (= (toChars!4975 (transformation!3581 (h!25288 (t!169706 rules!4538)))) (toChars!4975 (transformation!3581 (rule!5693 token!556)))) t!169739) tb!111171))

(declare-fun result!133566 () Bool)

(assert (= result!133566 result!133524))

(assert (=> b!1818396 t!169739))

(assert (=> d!557407 t!169739))

(declare-fun b_and!140931 () Bool)

(declare-fun tp!513928 () Bool)

(assert (=> b!1818737 (= tp!513928 (and (=> t!169739 result!133566) b_and!140931))))

(declare-fun e!1162093 () Bool)

(assert (=> b!1818737 (= e!1162093 (and tp!513927 tp!513928))))

(declare-fun b!1818736 () Bool)

(declare-fun tp!513925 () Bool)

(declare-fun e!1162091 () Bool)

(assert (=> b!1818736 (= e!1162091 (and tp!513925 (inv!25918 (tag!3995 (h!25288 (t!169706 rules!4538)))) (inv!25921 (transformation!3581 (h!25288 (t!169706 rules!4538)))) e!1162093))))

(declare-fun b!1818735 () Bool)

(declare-fun e!1162092 () Bool)

(declare-fun tp!513926 () Bool)

(assert (=> b!1818735 (= e!1162092 (and e!1162091 tp!513926))))

(assert (=> b!1818310 (= tp!513843 e!1162092)))

(assert (= b!1818736 b!1818737))

(assert (= b!1818735 b!1818736))

(assert (= (and b!1818310 ((_ is Cons!19887) (t!169706 rules!4538))) b!1818735))

(declare-fun m!2247865 () Bool)

(assert (=> b!1818736 m!2247865))

(declare-fun m!2247867 () Bool)

(assert (=> b!1818736 m!2247867))

(declare-fun b!1818739 () Bool)

(declare-fun e!1162095 () Bool)

(declare-fun tp!513929 () Bool)

(declare-fun tp!513933 () Bool)

(assert (=> b!1818739 (= e!1162095 (and tp!513929 tp!513933))))

(declare-fun b!1818740 () Bool)

(declare-fun tp!513931 () Bool)

(assert (=> b!1818740 (= e!1162095 tp!513931)))

(assert (=> b!1818300 (= tp!513836 e!1162095)))

(declare-fun b!1818741 () Bool)

(declare-fun tp!513930 () Bool)

(declare-fun tp!513932 () Bool)

(assert (=> b!1818741 (= e!1162095 (and tp!513930 tp!513932))))

(declare-fun b!1818738 () Bool)

(assert (=> b!1818738 (= e!1162095 tp_is_empty!8053)))

(assert (= (and b!1818300 ((_ is ElementMatch!4909) (regex!3581 rule!559))) b!1818738))

(assert (= (and b!1818300 ((_ is Concat!8581) (regex!3581 rule!559))) b!1818739))

(assert (= (and b!1818300 ((_ is Star!4909) (regex!3581 rule!559))) b!1818740))

(assert (= (and b!1818300 ((_ is Union!4909) (regex!3581 rule!559))) b!1818741))

(declare-fun b!1818742 () Bool)

(declare-fun e!1162096 () Bool)

(declare-fun tp!513934 () Bool)

(assert (=> b!1818742 (= e!1162096 (and tp_is_empty!8053 tp!513934))))

(assert (=> b!1818299 (= tp!513833 e!1162096)))

(assert (= (and b!1818299 ((_ is Cons!19886) (originalCharacters!4389 token!556))) b!1818742))

(declare-fun b_lambda!60019 () Bool)

(assert (= b_lambda!60005 (or (and b!1818301 b_free!50335 (= (toValue!5116 (transformation!3581 (h!25288 rules!4538))) (toValue!5116 (transformation!3581 rule!559)))) (and b!1818308 b_free!50339) (and b!1818305 b_free!50343 (= (toValue!5116 (transformation!3581 (rule!5693 token!556))) (toValue!5116 (transformation!3581 rule!559)))) (and b!1818737 b_free!50351 (= (toValue!5116 (transformation!3581 (h!25288 (t!169706 rules!4538)))) (toValue!5116 (transformation!3581 rule!559)))) b_lambda!60019)))

(declare-fun b_lambda!60021 () Bool)

(assert (= b_lambda!60003 (or (and b!1818301 b_free!50337 (= (toChars!4975 (transformation!3581 (h!25288 rules!4538))) (toChars!4975 (transformation!3581 (rule!5693 token!556))))) (and b!1818308 b_free!50341 (= (toChars!4975 (transformation!3581 rule!559)) (toChars!4975 (transformation!3581 (rule!5693 token!556))))) (and b!1818305 b_free!50345) (and b!1818737 b_free!50353 (= (toChars!4975 (transformation!3581 (h!25288 (t!169706 rules!4538)))) (toChars!4975 (transformation!3581 (rule!5693 token!556))))) b_lambda!60021)))

(declare-fun b_lambda!60023 () Bool)

(assert (= b_lambda!60017 (or (and b!1818301 b_free!50337 (= (toChars!4975 (transformation!3581 (h!25288 rules!4538))) (toChars!4975 (transformation!3581 (rule!5693 token!556))))) (and b!1818308 b_free!50341 (= (toChars!4975 (transformation!3581 rule!559)) (toChars!4975 (transformation!3581 (rule!5693 token!556))))) (and b!1818305 b_free!50345) (and b!1818737 b_free!50353 (= (toChars!4975 (transformation!3581 (h!25288 (t!169706 rules!4538)))) (toChars!4975 (transformation!3581 (rule!5693 token!556))))) b_lambda!60023)))

(check-sat (not b_next!51045) (not b!1818739) (not d!557397) (not b_next!51049) (not b_lambda!60023) (not b!1818714) (not b!1818439) (not b_next!51041) (not b!1818721) (not b_next!51039) (not b!1818431) (not b_next!51047) (not d!557393) (not d!557407) b_and!140927 (not b!1818715) (not b!1818351) (not b!1818402) (not b!1818661) (not bm!114256) (not b!1818449) (not b!1818313) (not d!557327) (not b!1818742) (not b!1818687) (not b!1818483) (not b!1818662) (not b!1818682) (not b!1818740) (not d!557347) (not tb!111147) (not b!1818437) (not b!1818725) tp_is_empty!8053 (not b_next!51055) b_and!140931 (not b!1818475) (not b!1818436) (not d!557409) (not b!1818671) (not d!557319) (not b!1818473) (not b!1818443) (not bm!114259) (not d!557317) (not b!1818683) (not b_next!51043) (not b!1818358) (not b!1818724) (not d!557337) (not tb!111153) (not b!1818354) (not d!557403) (not b!1818397) (not b!1818741) (not b!1818357) (not d!557405) (not b_next!51057) b_and!140901 (not b!1818355) (not b!1818722) (not d!557351) (not d!557339) (not b!1818726) (not b!1818471) (not d!557333) (not b!1818670) b_and!140903 (not b!1818442) (not b!1818716) (not b!1818396) b_and!140923 b_and!140905 (not b!1818472) (not b_lambda!60019) b_and!140925 (not b!1818476) (not b!1818474) (not b!1818736) (not b!1818735) (not d!557343) b_and!140929 (not b!1818353) (not d!557355) (not b!1818385) (not b!1818701) (not d!557341) (not b!1818477) (not b!1818356) (not b!1818352) (not d!557401) (not b!1818700) (not b!1818672) (not b!1818469) (not b!1818699) (not b_lambda!60021))
(check-sat (not b_next!51041) (not b_next!51045) (not b_next!51039) (not b_next!51047) b_and!140927 (not b_next!51043) (not b_next!51057) b_and!140901 b_and!140903 b_and!140923 b_and!140905 b_and!140925 b_and!140929 (not b_next!51049) (not b_next!51055) b_and!140931)
