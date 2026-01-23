; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351466 () Bool)

(assert start!351466)

(declare-fun b!3743928 () Bool)

(declare-fun b_free!99397 () Bool)

(declare-fun b_next!100101 () Bool)

(assert (=> b!3743928 (= b_free!99397 (not b_next!100101))))

(declare-fun tp!1141467 () Bool)

(declare-fun b_and!277631 () Bool)

(assert (=> b!3743928 (= tp!1141467 b_and!277631)))

(declare-fun b_free!99399 () Bool)

(declare-fun b_next!100103 () Bool)

(assert (=> b!3743928 (= b_free!99399 (not b_next!100103))))

(declare-fun tp!1141465 () Bool)

(declare-fun b_and!277633 () Bool)

(assert (=> b!3743928 (= tp!1141465 b_and!277633)))

(declare-fun b!3743924 () Bool)

(declare-fun b_free!99401 () Bool)

(declare-fun b_next!100105 () Bool)

(assert (=> b!3743924 (= b_free!99401 (not b_next!100105))))

(declare-fun tp!1141468 () Bool)

(declare-fun b_and!277635 () Bool)

(assert (=> b!3743924 (= tp!1141468 b_and!277635)))

(declare-fun b_free!99403 () Bool)

(declare-fun b_next!100107 () Bool)

(assert (=> b!3743924 (= b_free!99403 (not b_next!100107))))

(declare-fun tp!1141464 () Bool)

(declare-fun b_and!277637 () Bool)

(assert (=> b!3743924 (= tp!1141464 b_and!277637)))

(declare-fun b!3743918 () Bool)

(declare-fun b_free!99405 () Bool)

(declare-fun b_next!100109 () Bool)

(assert (=> b!3743918 (= b_free!99405 (not b_next!100109))))

(declare-fun tp!1141474 () Bool)

(declare-fun b_and!277639 () Bool)

(assert (=> b!3743918 (= tp!1141474 b_and!277639)))

(declare-fun b_free!99407 () Bool)

(declare-fun b_next!100111 () Bool)

(assert (=> b!3743918 (= b_free!99407 (not b_next!100111))))

(declare-fun tp!1141473 () Bool)

(declare-fun b_and!277641 () Bool)

(assert (=> b!3743918 (= tp!1141473 b_and!277641)))

(declare-fun b!3743927 () Bool)

(declare-fun b_free!99409 () Bool)

(declare-fun b_next!100113 () Bool)

(assert (=> b!3743927 (= b_free!99409 (not b_next!100113))))

(declare-fun tp!1141466 () Bool)

(declare-fun b_and!277643 () Bool)

(assert (=> b!3743927 (= tp!1141466 b_and!277643)))

(declare-fun b_free!99411 () Bool)

(declare-fun b_next!100115 () Bool)

(assert (=> b!3743927 (= b_free!99411 (not b_next!100115))))

(declare-fun tp!1141471 () Bool)

(declare-fun b_and!277645 () Bool)

(assert (=> b!3743927 (= tp!1141471 b_and!277645)))

(declare-fun e!2314888 () Bool)

(assert (=> b!3743918 (= e!2314888 (and tp!1141474 tp!1141473))))

(declare-fun b!3743919 () Bool)

(declare-fun res!1517569 () Bool)

(declare-fun e!2314891 () Bool)

(assert (=> b!3743919 (=> (not res!1517569) (not e!2314891))))

(declare-datatypes ((List!39870 0))(
  ( (Nil!39746) (Cons!39746 (h!45166 (_ BitVec 16)) (t!302553 List!39870)) )
))
(declare-datatypes ((TokenValue!6284 0))(
  ( (FloatLiteralValue!12568 (text!44433 List!39870)) (TokenValueExt!6283 (__x!24785 Int)) (Broken!31420 (value!193117 List!39870)) (Object!6407) (End!6284) (Def!6284) (Underscore!6284) (Match!6284) (Else!6284) (Error!6284) (Case!6284) (If!6284) (Extends!6284) (Abstract!6284) (Class!6284) (Val!6284) (DelimiterValue!12568 (del!6344 List!39870)) (KeywordValue!6290 (value!193118 List!39870)) (CommentValue!12568 (value!193119 List!39870)) (WhitespaceValue!12568 (value!193120 List!39870)) (IndentationValue!6284 (value!193121 List!39870)) (String!45045) (Int32!6284) (Broken!31421 (value!193122 List!39870)) (Boolean!6285) (Unit!57623) (OperatorValue!6287 (op!6344 List!39870)) (IdentifierValue!12568 (value!193123 List!39870)) (IdentifierValue!12569 (value!193124 List!39870)) (WhitespaceValue!12569 (value!193125 List!39870)) (True!12568) (False!12568) (Broken!31422 (value!193126 List!39870)) (Broken!31423 (value!193127 List!39870)) (True!12569) (RightBrace!6284) (RightBracket!6284) (Colon!6284) (Null!6284) (Comma!6284) (LeftBracket!6284) (False!12569) (LeftBrace!6284) (ImaginaryLiteralValue!6284 (text!44434 List!39870)) (StringLiteralValue!18852 (value!193128 List!39870)) (EOFValue!6284 (value!193129 List!39870)) (IdentValue!6284 (value!193130 List!39870)) (DelimiterValue!12569 (value!193131 List!39870)) (DedentValue!6284 (value!193132 List!39870)) (NewLineValue!6284 (value!193133 List!39870)) (IntegerValue!18852 (value!193134 (_ BitVec 32)) (text!44435 List!39870)) (IntegerValue!18853 (value!193135 Int) (text!44436 List!39870)) (Times!6284) (Or!6284) (Equal!6284) (Minus!6284) (Broken!31424 (value!193136 List!39870)) (And!6284) (Div!6284) (LessEqual!6284) (Mod!6284) (Concat!17243) (Not!6284) (Plus!6284) (SpaceValue!6284 (value!193137 List!39870)) (IntegerValue!18854 (value!193138 Int) (text!44437 List!39870)) (StringLiteralValue!18853 (text!44438 List!39870)) (FloatLiteralValue!12569 (text!44439 List!39870)) (BytesLiteralValue!6284 (value!193139 List!39870)) (CommentValue!12569 (value!193140 List!39870)) (StringLiteralValue!18854 (value!193141 List!39870)) (ErrorTokenValue!6284 (msg!6345 List!39870)) )
))
(declare-datatypes ((C!22104 0))(
  ( (C!22105 (val!13100 Int)) )
))
(declare-datatypes ((List!39871 0))(
  ( (Nil!39747) (Cons!39747 (h!45167 C!22104) (t!302554 List!39871)) )
))
(declare-datatypes ((IArray!24307 0))(
  ( (IArray!24308 (innerList!12211 List!39871)) )
))
(declare-datatypes ((Conc!12151 0))(
  ( (Node!12151 (left!30809 Conc!12151) (right!31139 Conc!12151) (csize!24532 Int) (cheight!12362 Int)) (Leaf!18862 (xs!15353 IArray!24307) (csize!24533 Int)) (Empty!12151) )
))
(declare-datatypes ((Regex!10959 0))(
  ( (ElementMatch!10959 (c!648558 C!22104)) (Concat!17244 (regOne!22430 Regex!10959) (regTwo!22430 Regex!10959)) (EmptyExpr!10959) (Star!10959 (reg!11288 Regex!10959)) (EmptyLang!10959) (Union!10959 (regOne!22431 Regex!10959) (regTwo!22431 Regex!10959)) )
))
(declare-datatypes ((String!45046 0))(
  ( (String!45047 (value!193142 String)) )
))
(declare-datatypes ((BalanceConc!23916 0))(
  ( (BalanceConc!23917 (c!648559 Conc!12151)) )
))
(declare-datatypes ((TokenValueInjection!11996 0))(
  ( (TokenValueInjection!11997 (toValue!8398 Int) (toChars!8257 Int)) )
))
(declare-datatypes ((Rule!11908 0))(
  ( (Rule!11909 (regex!6054 Regex!10959) (tag!6914 String!45046) (isSeparator!6054 Bool) (transformation!6054 TokenValueInjection!11996)) )
))
(declare-datatypes ((List!39872 0))(
  ( (Nil!39748) (Cons!39748 (h!45168 Rule!11908) (t!302555 List!39872)) )
))
(declare-fun rulesRec!198 () List!39872)

(declare-fun rNSep!159 () Rule!11908)

(get-info :version)

(assert (=> b!3743919 (= res!1517569 (and (or (not ((_ is Cons!39748) rulesRec!198)) (not (= (h!45168 rulesRec!198) rNSep!159))) ((_ is Cons!39748) rulesRec!198)))))

(declare-fun b!3743920 () Bool)

(declare-fun res!1517566 () Bool)

(assert (=> b!3743920 (=> (not res!1517566) (not e!2314891))))

(declare-fun rules!4189 () List!39872)

(declare-fun rSep!159 () Rule!11908)

(declare-fun contains!8065 (List!39872 Rule!11908) Bool)

(assert (=> b!3743920 (= res!1517566 (contains!8065 rules!4189 rSep!159))))

(declare-fun tp!1141475 () Bool)

(declare-fun b!3743921 () Bool)

(declare-fun e!2314890 () Bool)

(declare-fun e!2314884 () Bool)

(declare-fun inv!53292 (String!45046) Bool)

(declare-fun inv!53294 (TokenValueInjection!11996) Bool)

(assert (=> b!3743921 (= e!2314890 (and tp!1141475 (inv!53292 (tag!6914 rSep!159)) (inv!53294 (transformation!6054 rSep!159)) e!2314884))))

(declare-fun b!3743922 () Bool)

(declare-fun res!1517564 () Bool)

(assert (=> b!3743922 (=> (not res!1517564) (not e!2314891))))

(declare-fun sepAndNonSepRulesDisjointChars!2032 (List!39872 List!39872) Bool)

(assert (=> b!3743922 (= res!1517564 (sepAndNonSepRulesDisjointChars!2032 rules!4189 rulesRec!198))))

(declare-fun b!3743923 () Bool)

(declare-fun res!1517563 () Bool)

(assert (=> b!3743923 (=> (not res!1517563) (not e!2314891))))

(declare-fun c!6900 () C!22104)

(declare-fun contains!8066 (List!39871 C!22104) Bool)

(declare-fun usedCharacters!1222 (Regex!10959) List!39871)

(assert (=> b!3743923 (= res!1517563 (contains!8066 (usedCharacters!1222 (regex!6054 rNSep!159)) c!6900))))

(declare-fun e!2314886 () Bool)

(assert (=> b!3743924 (= e!2314886 (and tp!1141468 tp!1141464))))

(declare-fun res!1517567 () Bool)

(assert (=> start!351466 (=> (not res!1517567) (not e!2314891))))

(declare-datatypes ((LexerInterface!5643 0))(
  ( (LexerInterfaceExt!5640 (__x!24786 Int)) (Lexer!5641) )
))
(declare-fun thiss!27143 () LexerInterface!5643)

(assert (=> start!351466 (= res!1517567 ((_ is Lexer!5641) thiss!27143))))

(assert (=> start!351466 e!2314891))

(assert (=> start!351466 true))

(declare-fun e!2314885 () Bool)

(assert (=> start!351466 e!2314885))

(assert (=> start!351466 e!2314890))

(declare-fun e!2314887 () Bool)

(assert (=> start!351466 e!2314887))

(declare-fun tp_is_empty!18933 () Bool)

(assert (=> start!351466 tp_is_empty!18933))

(declare-fun e!2314878 () Bool)

(assert (=> start!351466 e!2314878))

(declare-fun b!3743925 () Bool)

(declare-fun e!2314881 () Bool)

(declare-fun tp!1141463 () Bool)

(assert (=> b!3743925 (= e!2314885 (and e!2314881 tp!1141463))))

(declare-fun b!3743926 () Bool)

(declare-fun res!1517570 () Bool)

(assert (=> b!3743926 (=> (not res!1517570) (not e!2314891))))

(assert (=> b!3743926 (= res!1517570 (contains!8065 rules!4189 rNSep!159))))

(assert (=> b!3743927 (= e!2314884 (and tp!1141466 tp!1141471))))

(declare-fun e!2314889 () Bool)

(assert (=> b!3743928 (= e!2314889 (and tp!1141467 tp!1141465))))

(declare-fun tp!1141470 () Bool)

(declare-fun b!3743929 () Bool)

(assert (=> b!3743929 (= e!2314878 (and tp!1141470 (inv!53292 (tag!6914 rNSep!159)) (inv!53294 (transformation!6054 rNSep!159)) e!2314888))))

(declare-fun b!3743930 () Bool)

(declare-fun res!1517562 () Bool)

(assert (=> b!3743930 (=> (not res!1517562) (not e!2314891))))

(assert (=> b!3743930 (= res!1517562 (and (not (isSeparator!6054 rNSep!159)) (isSeparator!6054 rSep!159)))))

(declare-fun b!3743931 () Bool)

(declare-fun res!1517565 () Bool)

(assert (=> b!3743931 (=> (not res!1517565) (not e!2314891))))

(declare-fun rulesInvariant!5040 (LexerInterface!5643 List!39872) Bool)

(assert (=> b!3743931 (= res!1517565 (rulesInvariant!5040 thiss!27143 rules!4189))))

(declare-fun e!2314892 () Bool)

(declare-fun b!3743932 () Bool)

(declare-fun tp!1141469 () Bool)

(assert (=> b!3743932 (= e!2314892 (and tp!1141469 (inv!53292 (tag!6914 (h!45168 rulesRec!198))) (inv!53294 (transformation!6054 (h!45168 rulesRec!198))) e!2314889))))

(declare-fun b!3743933 () Bool)

(declare-fun tp!1141472 () Bool)

(assert (=> b!3743933 (= e!2314887 (and e!2314892 tp!1141472))))

(declare-fun b!3743934 () Bool)

(declare-fun tp!1141476 () Bool)

(assert (=> b!3743934 (= e!2314881 (and tp!1141476 (inv!53292 (tag!6914 (h!45168 rules!4189))) (inv!53294 (transformation!6054 (h!45168 rules!4189))) e!2314886))))

(declare-fun b!3743935 () Bool)

(assert (=> b!3743935 (= e!2314891 (not (contains!8065 (t!302555 rulesRec!198) rNSep!159)))))

(declare-fun b!3743936 () Bool)

(declare-fun res!1517568 () Bool)

(assert (=> b!3743936 (=> (not res!1517568) (not e!2314891))))

(assert (=> b!3743936 (= res!1517568 (contains!8065 rulesRec!198 rNSep!159))))

(assert (= (and start!351466 res!1517567) b!3743931))

(assert (= (and b!3743931 res!1517565) b!3743920))

(assert (= (and b!3743920 res!1517566) b!3743936))

(assert (= (and b!3743936 res!1517568) b!3743926))

(assert (= (and b!3743926 res!1517570) b!3743930))

(assert (= (and b!3743930 res!1517562) b!3743923))

(assert (= (and b!3743923 res!1517563) b!3743922))

(assert (= (and b!3743922 res!1517564) b!3743919))

(assert (= (and b!3743919 res!1517569) b!3743935))

(assert (= b!3743934 b!3743924))

(assert (= b!3743925 b!3743934))

(assert (= (and start!351466 ((_ is Cons!39748) rules!4189)) b!3743925))

(assert (= b!3743921 b!3743927))

(assert (= start!351466 b!3743921))

(assert (= b!3743932 b!3743928))

(assert (= b!3743933 b!3743932))

(assert (= (and start!351466 ((_ is Cons!39748) rulesRec!198)) b!3743933))

(assert (= b!3743929 b!3743918))

(assert (= start!351466 b!3743929))

(declare-fun m!4237461 () Bool)

(assert (=> b!3743931 m!4237461))

(declare-fun m!4237463 () Bool)

(assert (=> b!3743923 m!4237463))

(assert (=> b!3743923 m!4237463))

(declare-fun m!4237465 () Bool)

(assert (=> b!3743923 m!4237465))

(declare-fun m!4237467 () Bool)

(assert (=> b!3743936 m!4237467))

(declare-fun m!4237469 () Bool)

(assert (=> b!3743922 m!4237469))

(declare-fun m!4237471 () Bool)

(assert (=> b!3743921 m!4237471))

(declare-fun m!4237473 () Bool)

(assert (=> b!3743921 m!4237473))

(declare-fun m!4237475 () Bool)

(assert (=> b!3743926 m!4237475))

(declare-fun m!4237477 () Bool)

(assert (=> b!3743935 m!4237477))

(declare-fun m!4237479 () Bool)

(assert (=> b!3743932 m!4237479))

(declare-fun m!4237481 () Bool)

(assert (=> b!3743932 m!4237481))

(declare-fun m!4237483 () Bool)

(assert (=> b!3743934 m!4237483))

(declare-fun m!4237485 () Bool)

(assert (=> b!3743934 m!4237485))

(declare-fun m!4237487 () Bool)

(assert (=> b!3743929 m!4237487))

(declare-fun m!4237489 () Bool)

(assert (=> b!3743929 m!4237489))

(declare-fun m!4237491 () Bool)

(assert (=> b!3743920 m!4237491))

(check-sat (not b!3743926) tp_is_empty!18933 (not b_next!100109) (not b!3743920) (not b!3743931) (not b_next!100115) (not b_next!100105) (not b_next!100107) (not b_next!100101) (not b_next!100111) (not b_next!100113) b_and!277643 (not b_next!100103) b_and!277635 (not b!3743921) b_and!277645 (not b!3743922) (not b!3743929) (not b!3743936) (not b!3743935) b_and!277637 (not b!3743932) (not b!3743923) (not b!3743934) b_and!277639 b_and!277631 b_and!277641 (not b!3743933) b_and!277633 (not b!3743925))
(check-sat b_and!277645 (not b_next!100109) (not b_next!100115) b_and!277637 (not b_next!100105) (not b_next!100107) (not b_next!100101) (not b_next!100111) (not b_next!100113) b_and!277643 (not b_next!100103) b_and!277635 b_and!277641 b_and!277633 b_and!277639 b_and!277631)
(get-model)

(declare-fun d!1092937 () Bool)

(assert (=> d!1092937 (= (inv!53292 (tag!6914 (h!45168 rules!4189))) (= (mod (str.len (value!193142 (tag!6914 (h!45168 rules!4189)))) 2) 0))))

(assert (=> b!3743934 d!1092937))

(declare-fun d!1092941 () Bool)

(declare-fun res!1517592 () Bool)

(declare-fun e!2314901 () Bool)

(assert (=> d!1092941 (=> (not res!1517592) (not e!2314901))))

(declare-fun semiInverseModEq!2589 (Int Int) Bool)

(assert (=> d!1092941 (= res!1517592 (semiInverseModEq!2589 (toChars!8257 (transformation!6054 (h!45168 rules!4189))) (toValue!8398 (transformation!6054 (h!45168 rules!4189)))))))

(assert (=> d!1092941 (= (inv!53294 (transformation!6054 (h!45168 rules!4189))) e!2314901)))

(declare-fun b!3743945 () Bool)

(declare-fun equivClasses!2488 (Int Int) Bool)

(assert (=> b!3743945 (= e!2314901 (equivClasses!2488 (toChars!8257 (transformation!6054 (h!45168 rules!4189))) (toValue!8398 (transformation!6054 (h!45168 rules!4189)))))))

(assert (= (and d!1092941 res!1517592) b!3743945))

(declare-fun m!4237499 () Bool)

(assert (=> d!1092941 m!4237499))

(declare-fun m!4237501 () Bool)

(assert (=> b!3743945 m!4237501))

(assert (=> b!3743934 d!1092941))

(declare-fun d!1092945 () Bool)

(declare-fun lt!1299338 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5812 (List!39872) (InoxSet Rule!11908))

(assert (=> d!1092945 (= lt!1299338 (select (content!5812 (t!302555 rulesRec!198)) rNSep!159))))

(declare-fun e!2314909 () Bool)

(assert (=> d!1092945 (= lt!1299338 e!2314909)))

(declare-fun res!1517601 () Bool)

(assert (=> d!1092945 (=> (not res!1517601) (not e!2314909))))

(assert (=> d!1092945 (= res!1517601 ((_ is Cons!39748) (t!302555 rulesRec!198)))))

(assert (=> d!1092945 (= (contains!8065 (t!302555 rulesRec!198) rNSep!159) lt!1299338)))

(declare-fun b!3743953 () Bool)

(declare-fun e!2314910 () Bool)

(assert (=> b!3743953 (= e!2314909 e!2314910)))

(declare-fun res!1517600 () Bool)

(assert (=> b!3743953 (=> res!1517600 e!2314910)))

(assert (=> b!3743953 (= res!1517600 (= (h!45168 (t!302555 rulesRec!198)) rNSep!159))))

(declare-fun b!3743954 () Bool)

(assert (=> b!3743954 (= e!2314910 (contains!8065 (t!302555 (t!302555 rulesRec!198)) rNSep!159))))

(assert (= (and d!1092945 res!1517601) b!3743953))

(assert (= (and b!3743953 (not res!1517600)) b!3743954))

(declare-fun m!4237507 () Bool)

(assert (=> d!1092945 m!4237507))

(declare-fun m!4237509 () Bool)

(assert (=> d!1092945 m!4237509))

(declare-fun m!4237511 () Bool)

(assert (=> b!3743954 m!4237511))

(assert (=> b!3743935 d!1092945))

(declare-fun d!1092951 () Bool)

(declare-fun lt!1299339 () Bool)

(assert (=> d!1092951 (= lt!1299339 (select (content!5812 rulesRec!198) rNSep!159))))

(declare-fun e!2314911 () Bool)

(assert (=> d!1092951 (= lt!1299339 e!2314911)))

(declare-fun res!1517603 () Bool)

(assert (=> d!1092951 (=> (not res!1517603) (not e!2314911))))

(assert (=> d!1092951 (= res!1517603 ((_ is Cons!39748) rulesRec!198))))

(assert (=> d!1092951 (= (contains!8065 rulesRec!198 rNSep!159) lt!1299339)))

(declare-fun b!3743955 () Bool)

(declare-fun e!2314912 () Bool)

(assert (=> b!3743955 (= e!2314911 e!2314912)))

(declare-fun res!1517602 () Bool)

(assert (=> b!3743955 (=> res!1517602 e!2314912)))

(assert (=> b!3743955 (= res!1517602 (= (h!45168 rulesRec!198) rNSep!159))))

(declare-fun b!3743956 () Bool)

(assert (=> b!3743956 (= e!2314912 (contains!8065 (t!302555 rulesRec!198) rNSep!159))))

(assert (= (and d!1092951 res!1517603) b!3743955))

(assert (= (and b!3743955 (not res!1517602)) b!3743956))

(declare-fun m!4237513 () Bool)

(assert (=> d!1092951 m!4237513))

(declare-fun m!4237515 () Bool)

(assert (=> d!1092951 m!4237515))

(assert (=> b!3743956 m!4237477))

(assert (=> b!3743936 d!1092951))

(declare-fun d!1092953 () Bool)

(assert (=> d!1092953 (= (inv!53292 (tag!6914 rSep!159)) (= (mod (str.len (value!193142 (tag!6914 rSep!159))) 2) 0))))

(assert (=> b!3743921 d!1092953))

(declare-fun d!1092955 () Bool)

(declare-fun res!1517604 () Bool)

(declare-fun e!2314913 () Bool)

(assert (=> d!1092955 (=> (not res!1517604) (not e!2314913))))

(assert (=> d!1092955 (= res!1517604 (semiInverseModEq!2589 (toChars!8257 (transformation!6054 rSep!159)) (toValue!8398 (transformation!6054 rSep!159))))))

(assert (=> d!1092955 (= (inv!53294 (transformation!6054 rSep!159)) e!2314913)))

(declare-fun b!3743957 () Bool)

(assert (=> b!3743957 (= e!2314913 (equivClasses!2488 (toChars!8257 (transformation!6054 rSep!159)) (toValue!8398 (transformation!6054 rSep!159))))))

(assert (= (and d!1092955 res!1517604) b!3743957))

(declare-fun m!4237517 () Bool)

(assert (=> d!1092955 m!4237517))

(declare-fun m!4237519 () Bool)

(assert (=> b!3743957 m!4237519))

(assert (=> b!3743921 d!1092955))

(declare-fun d!1092957 () Bool)

(assert (=> d!1092957 (= (inv!53292 (tag!6914 (h!45168 rulesRec!198))) (= (mod (str.len (value!193142 (tag!6914 (h!45168 rulesRec!198)))) 2) 0))))

(assert (=> b!3743932 d!1092957))

(declare-fun d!1092959 () Bool)

(declare-fun res!1517607 () Bool)

(declare-fun e!2314916 () Bool)

(assert (=> d!1092959 (=> (not res!1517607) (not e!2314916))))

(assert (=> d!1092959 (= res!1517607 (semiInverseModEq!2589 (toChars!8257 (transformation!6054 (h!45168 rulesRec!198))) (toValue!8398 (transformation!6054 (h!45168 rulesRec!198)))))))

(assert (=> d!1092959 (= (inv!53294 (transformation!6054 (h!45168 rulesRec!198))) e!2314916)))

(declare-fun b!3743960 () Bool)

(assert (=> b!3743960 (= e!2314916 (equivClasses!2488 (toChars!8257 (transformation!6054 (h!45168 rulesRec!198))) (toValue!8398 (transformation!6054 (h!45168 rulesRec!198)))))))

(assert (= (and d!1092959 res!1517607) b!3743960))

(declare-fun m!4237521 () Bool)

(assert (=> d!1092959 m!4237521))

(declare-fun m!4237523 () Bool)

(assert (=> b!3743960 m!4237523))

(assert (=> b!3743932 d!1092959))

(declare-fun d!1092961 () Bool)

(declare-fun res!1517620 () Bool)

(declare-fun e!2314929 () Bool)

(assert (=> d!1092961 (=> res!1517620 e!2314929)))

(assert (=> d!1092961 (= res!1517620 (not ((_ is Cons!39748) rulesRec!198)))))

(assert (=> d!1092961 (= (sepAndNonSepRulesDisjointChars!2032 rules!4189 rulesRec!198) e!2314929)))

(declare-fun b!3743973 () Bool)

(declare-fun e!2314930 () Bool)

(assert (=> b!3743973 (= e!2314929 e!2314930)))

(declare-fun res!1517621 () Bool)

(assert (=> b!3743973 (=> (not res!1517621) (not e!2314930))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!930 (Rule!11908 List!39872) Bool)

(assert (=> b!3743973 (= res!1517621 (ruleDisjointCharsFromAllFromOtherType!930 (h!45168 rulesRec!198) rules!4189))))

(declare-fun b!3743974 () Bool)

(assert (=> b!3743974 (= e!2314930 (sepAndNonSepRulesDisjointChars!2032 rules!4189 (t!302555 rulesRec!198)))))

(assert (= (and d!1092961 (not res!1517620)) b!3743973))

(assert (= (and b!3743973 res!1517621) b!3743974))

(declare-fun m!4237537 () Bool)

(assert (=> b!3743973 m!4237537))

(declare-fun m!4237539 () Bool)

(assert (=> b!3743974 m!4237539))

(assert (=> b!3743922 d!1092961))

(declare-fun d!1092971 () Bool)

(declare-fun lt!1299346 () Bool)

(declare-fun content!5814 (List!39871) (InoxSet C!22104))

(assert (=> d!1092971 (= lt!1299346 (select (content!5814 (usedCharacters!1222 (regex!6054 rNSep!159))) c!6900))))

(declare-fun e!2314946 () Bool)

(assert (=> d!1092971 (= lt!1299346 e!2314946)))

(declare-fun res!1517628 () Bool)

(assert (=> d!1092971 (=> (not res!1517628) (not e!2314946))))

(assert (=> d!1092971 (= res!1517628 ((_ is Cons!39747) (usedCharacters!1222 (regex!6054 rNSep!159))))))

(assert (=> d!1092971 (= (contains!8066 (usedCharacters!1222 (regex!6054 rNSep!159)) c!6900) lt!1299346)))

(declare-fun b!3743997 () Bool)

(declare-fun e!2314945 () Bool)

(assert (=> b!3743997 (= e!2314946 e!2314945)))

(declare-fun res!1517629 () Bool)

(assert (=> b!3743997 (=> res!1517629 e!2314945)))

(assert (=> b!3743997 (= res!1517629 (= (h!45167 (usedCharacters!1222 (regex!6054 rNSep!159))) c!6900))))

(declare-fun b!3743998 () Bool)

(assert (=> b!3743998 (= e!2314945 (contains!8066 (t!302554 (usedCharacters!1222 (regex!6054 rNSep!159))) c!6900))))

(assert (= (and d!1092971 res!1517628) b!3743997))

(assert (= (and b!3743997 (not res!1517629)) b!3743998))

(assert (=> d!1092971 m!4237463))

(declare-fun m!4237547 () Bool)

(assert (=> d!1092971 m!4237547))

(declare-fun m!4237549 () Bool)

(assert (=> d!1092971 m!4237549))

(declare-fun m!4237551 () Bool)

(assert (=> b!3743998 m!4237551))

(assert (=> b!3743923 d!1092971))

(declare-fun b!3744029 () Bool)

(declare-fun e!2314967 () List!39871)

(assert (=> b!3744029 (= e!2314967 (Cons!39747 (c!648558 (regex!6054 rNSep!159)) Nil!39747))))

(declare-fun bm!274910 () Bool)

(declare-fun call!274918 () List!39871)

(declare-fun c!648583 () Bool)

(assert (=> bm!274910 (= call!274918 (usedCharacters!1222 (ite c!648583 (regOne!22431 (regex!6054 rNSep!159)) (regOne!22430 (regex!6054 rNSep!159)))))))

(declare-fun bm!274911 () Bool)

(declare-fun call!274916 () List!39871)

(declare-fun call!274917 () List!39871)

(declare-fun ++!9875 (List!39871 List!39871) List!39871)

(assert (=> bm!274911 (= call!274916 (++!9875 call!274918 call!274917))))

(declare-fun b!3744030 () Bool)

(declare-fun e!2314968 () List!39871)

(declare-fun e!2314963 () List!39871)

(assert (=> b!3744030 (= e!2314968 e!2314963)))

(assert (=> b!3744030 (= c!648583 ((_ is Union!10959) (regex!6054 rNSep!159)))))

(declare-fun d!1092975 () Bool)

(declare-fun c!648581 () Bool)

(assert (=> d!1092975 (= c!648581 (or ((_ is EmptyExpr!10959) (regex!6054 rNSep!159)) ((_ is EmptyLang!10959) (regex!6054 rNSep!159))))))

(declare-fun e!2314966 () List!39871)

(assert (=> d!1092975 (= (usedCharacters!1222 (regex!6054 rNSep!159)) e!2314966)))

(declare-fun b!3744031 () Bool)

(declare-fun call!274915 () List!39871)

(assert (=> b!3744031 (= e!2314968 call!274915)))

(declare-fun b!3744032 () Bool)

(assert (=> b!3744032 (= e!2314963 call!274916)))

(declare-fun b!3744033 () Bool)

(assert (=> b!3744033 (= e!2314963 call!274916)))

(declare-fun c!648582 () Bool)

(declare-fun bm!274912 () Bool)

(assert (=> bm!274912 (= call!274915 (usedCharacters!1222 (ite c!648582 (reg!11288 (regex!6054 rNSep!159)) (ite c!648583 (regTwo!22431 (regex!6054 rNSep!159)) (regTwo!22430 (regex!6054 rNSep!159))))))))

(declare-fun bm!274913 () Bool)

(assert (=> bm!274913 (= call!274917 call!274915)))

(declare-fun b!3744034 () Bool)

(assert (=> b!3744034 (= e!2314966 e!2314967)))

(declare-fun c!648580 () Bool)

(assert (=> b!3744034 (= c!648580 ((_ is ElementMatch!10959) (regex!6054 rNSep!159)))))

(declare-fun b!3744035 () Bool)

(assert (=> b!3744035 (= e!2314966 Nil!39747)))

(declare-fun b!3744036 () Bool)

(assert (=> b!3744036 (= c!648582 ((_ is Star!10959) (regex!6054 rNSep!159)))))

(assert (=> b!3744036 (= e!2314967 e!2314968)))

(assert (= (and d!1092975 c!648581) b!3744035))

(assert (= (and d!1092975 (not c!648581)) b!3744034))

(assert (= (and b!3744034 c!648580) b!3744029))

(assert (= (and b!3744034 (not c!648580)) b!3744036))

(assert (= (and b!3744036 c!648582) b!3744031))

(assert (= (and b!3744036 (not c!648582)) b!3744030))

(assert (= (and b!3744030 c!648583) b!3744032))

(assert (= (and b!3744030 (not c!648583)) b!3744033))

(assert (= (or b!3744032 b!3744033) bm!274910))

(assert (= (or b!3744032 b!3744033) bm!274913))

(assert (= (or b!3744032 b!3744033) bm!274911))

(assert (= (or b!3744031 bm!274913) bm!274912))

(declare-fun m!4237567 () Bool)

(assert (=> bm!274910 m!4237567))

(declare-fun m!4237569 () Bool)

(assert (=> bm!274911 m!4237569))

(declare-fun m!4237571 () Bool)

(assert (=> bm!274912 m!4237571))

(assert (=> b!3743923 d!1092975))

(declare-fun d!1092985 () Bool)

(assert (=> d!1092985 (= (inv!53292 (tag!6914 rNSep!159)) (= (mod (str.len (value!193142 (tag!6914 rNSep!159))) 2) 0))))

(assert (=> b!3743929 d!1092985))

(declare-fun d!1092987 () Bool)

(declare-fun res!1517639 () Bool)

(declare-fun e!2314972 () Bool)

(assert (=> d!1092987 (=> (not res!1517639) (not e!2314972))))

(assert (=> d!1092987 (= res!1517639 (semiInverseModEq!2589 (toChars!8257 (transformation!6054 rNSep!159)) (toValue!8398 (transformation!6054 rNSep!159))))))

(assert (=> d!1092987 (= (inv!53294 (transformation!6054 rNSep!159)) e!2314972)))

(declare-fun b!3744040 () Bool)

(assert (=> b!3744040 (= e!2314972 (equivClasses!2488 (toChars!8257 (transformation!6054 rNSep!159)) (toValue!8398 (transformation!6054 rNSep!159))))))

(assert (= (and d!1092987 res!1517639) b!3744040))

(declare-fun m!4237577 () Bool)

(assert (=> d!1092987 m!4237577))

(declare-fun m!4237579 () Bool)

(assert (=> b!3744040 m!4237579))

(assert (=> b!3743929 d!1092987))

(declare-fun d!1092993 () Bool)

(declare-fun res!1517645 () Bool)

(declare-fun e!2314989 () Bool)

(assert (=> d!1092993 (=> (not res!1517645) (not e!2314989))))

(declare-fun rulesValid!2345 (LexerInterface!5643 List!39872) Bool)

(assert (=> d!1092993 (= res!1517645 (rulesValid!2345 thiss!27143 rules!4189))))

(assert (=> d!1092993 (= (rulesInvariant!5040 thiss!27143 rules!4189) e!2314989)))

(declare-fun b!3744068 () Bool)

(declare-datatypes ((List!39874 0))(
  ( (Nil!39750) (Cons!39750 (h!45170 String!45046) (t!302557 List!39874)) )
))
(declare-fun noDuplicateTag!2346 (LexerInterface!5643 List!39872 List!39874) Bool)

(assert (=> b!3744068 (= e!2314989 (noDuplicateTag!2346 thiss!27143 rules!4189 Nil!39750))))

(assert (= (and d!1092993 res!1517645) b!3744068))

(declare-fun m!4237591 () Bool)

(assert (=> d!1092993 m!4237591))

(declare-fun m!4237593 () Bool)

(assert (=> b!3744068 m!4237593))

(assert (=> b!3743931 d!1092993))

(declare-fun d!1092997 () Bool)

(declare-fun lt!1299349 () Bool)

(assert (=> d!1092997 (= lt!1299349 (select (content!5812 rules!4189) rSep!159))))

(declare-fun e!2314994 () Bool)

(assert (=> d!1092997 (= lt!1299349 e!2314994)))

(declare-fun res!1517647 () Bool)

(assert (=> d!1092997 (=> (not res!1517647) (not e!2314994))))

(assert (=> d!1092997 (= res!1517647 ((_ is Cons!39748) rules!4189))))

(assert (=> d!1092997 (= (contains!8065 rules!4189 rSep!159) lt!1299349)))

(declare-fun b!3744072 () Bool)

(declare-fun e!2314995 () Bool)

(assert (=> b!3744072 (= e!2314994 e!2314995)))

(declare-fun res!1517646 () Bool)

(assert (=> b!3744072 (=> res!1517646 e!2314995)))

(assert (=> b!3744072 (= res!1517646 (= (h!45168 rules!4189) rSep!159))))

(declare-fun b!3744073 () Bool)

(assert (=> b!3744073 (= e!2314995 (contains!8065 (t!302555 rules!4189) rSep!159))))

(assert (= (and d!1092997 res!1517647) b!3744072))

(assert (= (and b!3744072 (not res!1517646)) b!3744073))

(declare-fun m!4237597 () Bool)

(assert (=> d!1092997 m!4237597))

(declare-fun m!4237601 () Bool)

(assert (=> d!1092997 m!4237601))

(declare-fun m!4237603 () Bool)

(assert (=> b!3744073 m!4237603))

(assert (=> b!3743920 d!1092997))

(declare-fun d!1092999 () Bool)

(declare-fun lt!1299350 () Bool)

(assert (=> d!1092999 (= lt!1299350 (select (content!5812 rules!4189) rNSep!159))))

(declare-fun e!2314997 () Bool)

(assert (=> d!1092999 (= lt!1299350 e!2314997)))

(declare-fun res!1517649 () Bool)

(assert (=> d!1092999 (=> (not res!1517649) (not e!2314997))))

(assert (=> d!1092999 (= res!1517649 ((_ is Cons!39748) rules!4189))))

(assert (=> d!1092999 (= (contains!8065 rules!4189 rNSep!159) lt!1299350)))

(declare-fun b!3744078 () Bool)

(declare-fun e!2314998 () Bool)

(assert (=> b!3744078 (= e!2314997 e!2314998)))

(declare-fun res!1517648 () Bool)

(assert (=> b!3744078 (=> res!1517648 e!2314998)))

(assert (=> b!3744078 (= res!1517648 (= (h!45168 rules!4189) rNSep!159))))

(declare-fun b!3744079 () Bool)

(assert (=> b!3744079 (= e!2314998 (contains!8065 (t!302555 rules!4189) rNSep!159))))

(assert (= (and d!1092999 res!1517649) b!3744078))

(assert (= (and b!3744078 (not res!1517648)) b!3744079))

(assert (=> d!1092999 m!4237597))

(declare-fun m!4237605 () Bool)

(assert (=> d!1092999 m!4237605))

(declare-fun m!4237607 () Bool)

(assert (=> b!3744079 m!4237607))

(assert (=> b!3743926 d!1092999))

(declare-fun b!3744103 () Bool)

(declare-fun e!2315007 () Bool)

(declare-fun tp!1141536 () Bool)

(assert (=> b!3744103 (= e!2315007 tp!1141536)))

(declare-fun b!3744101 () Bool)

(assert (=> b!3744101 (= e!2315007 tp_is_empty!18933)))

(declare-fun b!3744102 () Bool)

(declare-fun tp!1141534 () Bool)

(declare-fun tp!1141537 () Bool)

(assert (=> b!3744102 (= e!2315007 (and tp!1141534 tp!1141537))))

(declare-fun b!3744104 () Bool)

(declare-fun tp!1141533 () Bool)

(declare-fun tp!1141535 () Bool)

(assert (=> b!3744104 (= e!2315007 (and tp!1141533 tp!1141535))))

(assert (=> b!3743929 (= tp!1141470 e!2315007)))

(assert (= (and b!3743929 ((_ is ElementMatch!10959) (regex!6054 rNSep!159))) b!3744101))

(assert (= (and b!3743929 ((_ is Concat!17244) (regex!6054 rNSep!159))) b!3744102))

(assert (= (and b!3743929 ((_ is Star!10959) (regex!6054 rNSep!159))) b!3744103))

(assert (= (and b!3743929 ((_ is Union!10959) (regex!6054 rNSep!159))) b!3744104))

(declare-fun b!3744107 () Bool)

(declare-fun e!2315008 () Bool)

(declare-fun tp!1141541 () Bool)

(assert (=> b!3744107 (= e!2315008 tp!1141541)))

(declare-fun b!3744105 () Bool)

(assert (=> b!3744105 (= e!2315008 tp_is_empty!18933)))

(declare-fun b!3744106 () Bool)

(declare-fun tp!1141539 () Bool)

(declare-fun tp!1141542 () Bool)

(assert (=> b!3744106 (= e!2315008 (and tp!1141539 tp!1141542))))

(declare-fun b!3744108 () Bool)

(declare-fun tp!1141538 () Bool)

(declare-fun tp!1141540 () Bool)

(assert (=> b!3744108 (= e!2315008 (and tp!1141538 tp!1141540))))

(assert (=> b!3743934 (= tp!1141476 e!2315008)))

(assert (= (and b!3743934 ((_ is ElementMatch!10959) (regex!6054 (h!45168 rules!4189)))) b!3744105))

(assert (= (and b!3743934 ((_ is Concat!17244) (regex!6054 (h!45168 rules!4189)))) b!3744106))

(assert (= (and b!3743934 ((_ is Star!10959) (regex!6054 (h!45168 rules!4189)))) b!3744107))

(assert (= (and b!3743934 ((_ is Union!10959) (regex!6054 (h!45168 rules!4189)))) b!3744108))

(declare-fun b!3744119 () Bool)

(declare-fun b_free!99421 () Bool)

(declare-fun b_next!100125 () Bool)

(assert (=> b!3744119 (= b_free!99421 (not b_next!100125))))

(declare-fun tp!1141552 () Bool)

(declare-fun b_and!277655 () Bool)

(assert (=> b!3744119 (= tp!1141552 b_and!277655)))

(declare-fun b_free!99423 () Bool)

(declare-fun b_next!100127 () Bool)

(assert (=> b!3744119 (= b_free!99423 (not b_next!100127))))

(declare-fun tp!1141554 () Bool)

(declare-fun b_and!277657 () Bool)

(assert (=> b!3744119 (= tp!1141554 b_and!277657)))

(declare-fun e!2315019 () Bool)

(assert (=> b!3744119 (= e!2315019 (and tp!1141552 tp!1141554))))

(declare-fun tp!1141553 () Bool)

(declare-fun b!3744118 () Bool)

(declare-fun e!2315017 () Bool)

(assert (=> b!3744118 (= e!2315017 (and tp!1141553 (inv!53292 (tag!6914 (h!45168 (t!302555 rules!4189)))) (inv!53294 (transformation!6054 (h!45168 (t!302555 rules!4189)))) e!2315019))))

(declare-fun b!3744117 () Bool)

(declare-fun e!2315020 () Bool)

(declare-fun tp!1141551 () Bool)

(assert (=> b!3744117 (= e!2315020 (and e!2315017 tp!1141551))))

(assert (=> b!3743925 (= tp!1141463 e!2315020)))

(assert (= b!3744118 b!3744119))

(assert (= b!3744117 b!3744118))

(assert (= (and b!3743925 ((_ is Cons!39748) (t!302555 rules!4189))) b!3744117))

(declare-fun m!4237613 () Bool)

(assert (=> b!3744118 m!4237613))

(declare-fun m!4237615 () Bool)

(assert (=> b!3744118 m!4237615))

(declare-fun b!3744122 () Bool)

(declare-fun e!2315021 () Bool)

(declare-fun tp!1141558 () Bool)

(assert (=> b!3744122 (= e!2315021 tp!1141558)))

(declare-fun b!3744120 () Bool)

(assert (=> b!3744120 (= e!2315021 tp_is_empty!18933)))

(declare-fun b!3744121 () Bool)

(declare-fun tp!1141556 () Bool)

(declare-fun tp!1141559 () Bool)

(assert (=> b!3744121 (= e!2315021 (and tp!1141556 tp!1141559))))

(declare-fun b!3744123 () Bool)

(declare-fun tp!1141555 () Bool)

(declare-fun tp!1141557 () Bool)

(assert (=> b!3744123 (= e!2315021 (and tp!1141555 tp!1141557))))

(assert (=> b!3743921 (= tp!1141475 e!2315021)))

(assert (= (and b!3743921 ((_ is ElementMatch!10959) (regex!6054 rSep!159))) b!3744120))

(assert (= (and b!3743921 ((_ is Concat!17244) (regex!6054 rSep!159))) b!3744121))

(assert (= (and b!3743921 ((_ is Star!10959) (regex!6054 rSep!159))) b!3744122))

(assert (= (and b!3743921 ((_ is Union!10959) (regex!6054 rSep!159))) b!3744123))

(declare-fun b!3744126 () Bool)

(declare-fun e!2315022 () Bool)

(declare-fun tp!1141563 () Bool)

(assert (=> b!3744126 (= e!2315022 tp!1141563)))

(declare-fun b!3744124 () Bool)

(assert (=> b!3744124 (= e!2315022 tp_is_empty!18933)))

(declare-fun b!3744125 () Bool)

(declare-fun tp!1141561 () Bool)

(declare-fun tp!1141564 () Bool)

(assert (=> b!3744125 (= e!2315022 (and tp!1141561 tp!1141564))))

(declare-fun b!3744127 () Bool)

(declare-fun tp!1141560 () Bool)

(declare-fun tp!1141562 () Bool)

(assert (=> b!3744127 (= e!2315022 (and tp!1141560 tp!1141562))))

(assert (=> b!3743932 (= tp!1141469 e!2315022)))

(assert (= (and b!3743932 ((_ is ElementMatch!10959) (regex!6054 (h!45168 rulesRec!198)))) b!3744124))

(assert (= (and b!3743932 ((_ is Concat!17244) (regex!6054 (h!45168 rulesRec!198)))) b!3744125))

(assert (= (and b!3743932 ((_ is Star!10959) (regex!6054 (h!45168 rulesRec!198)))) b!3744126))

(assert (= (and b!3743932 ((_ is Union!10959) (regex!6054 (h!45168 rulesRec!198)))) b!3744127))

(declare-fun b!3744130 () Bool)

(declare-fun b_free!99425 () Bool)

(declare-fun b_next!100129 () Bool)

(assert (=> b!3744130 (= b_free!99425 (not b_next!100129))))

(declare-fun tp!1141566 () Bool)

(declare-fun b_and!277659 () Bool)

(assert (=> b!3744130 (= tp!1141566 b_and!277659)))

(declare-fun b_free!99427 () Bool)

(declare-fun b_next!100131 () Bool)

(assert (=> b!3744130 (= b_free!99427 (not b_next!100131))))

(declare-fun tp!1141568 () Bool)

(declare-fun b_and!277661 () Bool)

(assert (=> b!3744130 (= tp!1141568 b_and!277661)))

(declare-fun e!2315025 () Bool)

(assert (=> b!3744130 (= e!2315025 (and tp!1141566 tp!1141568))))

(declare-fun tp!1141567 () Bool)

(declare-fun b!3744129 () Bool)

(declare-fun e!2315023 () Bool)

(assert (=> b!3744129 (= e!2315023 (and tp!1141567 (inv!53292 (tag!6914 (h!45168 (t!302555 rulesRec!198)))) (inv!53294 (transformation!6054 (h!45168 (t!302555 rulesRec!198)))) e!2315025))))

(declare-fun b!3744128 () Bool)

(declare-fun e!2315026 () Bool)

(declare-fun tp!1141565 () Bool)

(assert (=> b!3744128 (= e!2315026 (and e!2315023 tp!1141565))))

(assert (=> b!3743933 (= tp!1141472 e!2315026)))

(assert (= b!3744129 b!3744130))

(assert (= b!3744128 b!3744129))

(assert (= (and b!3743933 ((_ is Cons!39748) (t!302555 rulesRec!198))) b!3744128))

(declare-fun m!4237617 () Bool)

(assert (=> b!3744129 m!4237617))

(declare-fun m!4237619 () Bool)

(assert (=> b!3744129 m!4237619))

(check-sat b_and!277659 (not b!3743956) b_and!277637 (not b_next!100101) (not b!3744128) (not d!1092959) b_and!277633 (not b!3744079) (not b_next!100129) b_and!277645 (not b!3744127) tp_is_empty!18933 (not b_next!100109) (not d!1092971) (not b_next!100127) (not b!3743945) b_and!277655 (not b!3744118) (not b!3744106) (not b_next!100115) (not b!3744104) (not b!3744068) (not b!3743998) (not b_next!100105) (not b!3744102) (not b!3744073) (not b_next!100107) b_and!277661 (not bm!274912) (not b_next!100111) (not b!3744040) (not d!1092997) (not d!1092941) (not d!1092945) (not bm!274910) (not b!3744129) (not b_next!100113) (not b!3744126) b_and!277643 (not d!1092951) (not b!3744107) (not b!3743973) (not b_next!100103) (not d!1092999) (not b!3743957) b_and!277639 b_and!277631 (not b!3744117) (not b!3744125) (not b_next!100125) b_and!277635 (not b!3743954) (not b!3744121) (not d!1092993) (not d!1092955) (not d!1092987) (not b!3744123) (not b!3744122) b_and!277641 b_and!277657 (not b_next!100131) (not b!3744108) (not bm!274911) (not b!3744103) (not b!3743960) (not b!3743974))
(check-sat b_and!277659 b_and!277655 (not b_next!100115) b_and!277637 (not b_next!100105) (not b_next!100101) (not b_next!100111) (not b_next!100113) b_and!277643 (not b_next!100103) b_and!277633 (not b_next!100129) b_and!277645 (not b_next!100127) (not b_next!100109) (not b_next!100107) b_and!277661 b_and!277639 b_and!277631 (not b_next!100125) b_and!277635 b_and!277641 b_and!277657 (not b_next!100131))
