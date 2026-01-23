; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757568 () Bool)

(assert start!757568)

(declare-fun b!8045800 () Bool)

(declare-fun b_free!136379 () Bool)

(declare-fun b_next!137169 () Bool)

(assert (=> b!8045800 (= b_free!136379 (not b_next!137169))))

(declare-fun tp!2411729 () Bool)

(declare-fun b_and!354815 () Bool)

(assert (=> b!8045800 (= tp!2411729 b_and!354815)))

(declare-fun b_free!136381 () Bool)

(declare-fun b_next!137171 () Bool)

(assert (=> b!8045800 (= b_free!136381 (not b_next!137171))))

(declare-fun tp!2411730 () Bool)

(declare-fun b_and!354817 () Bool)

(assert (=> b!8045800 (= tp!2411730 b_and!354817)))

(declare-fun b!8045804 () Bool)

(declare-fun b_free!136383 () Bool)

(declare-fun b_next!137173 () Bool)

(assert (=> b!8045804 (= b_free!136383 (not b_next!137173))))

(declare-fun tp!2411733 () Bool)

(declare-fun b_and!354819 () Bool)

(assert (=> b!8045804 (= tp!2411733 b_and!354819)))

(declare-fun b_free!136385 () Bool)

(declare-fun b_next!137175 () Bool)

(assert (=> b!8045804 (= b_free!136385 (not b_next!137175))))

(declare-fun tp!2411735 () Bool)

(declare-fun b_and!354821 () Bool)

(assert (=> b!8045804 (= tp!2411735 b_and!354821)))

(declare-fun b!8045799 () Bool)

(declare-fun res!3180518 () Bool)

(declare-fun e!4739976 () Bool)

(assert (=> b!8045799 (=> (not res!3180518) (not e!4739976))))

(declare-datatypes ((LexerInterface!8346 0))(
  ( (LexerInterfaceExt!8343 (__x!35433 Int)) (Lexer!8344) )
))
(declare-fun thiss!26855 () LexerInterface!8346)

(declare-datatypes ((C!43992 0))(
  ( (C!43993 (val!32772 Int)) )
))
(declare-datatypes ((String!85153 0))(
  ( (String!85154 (value!292556 String)) )
))
(declare-datatypes ((List!75440 0))(
  ( (Nil!75314) (Cons!75314 (h!81762 C!43992) (t!391210 List!75440)) )
))
(declare-datatypes ((IArray!32109 0))(
  ( (IArray!32110 (innerList!16112 List!75440)) )
))
(declare-datatypes ((Conc!16024 0))(
  ( (Node!16024 (left!57375 Conc!16024) (right!57705 Conc!16024) (csize!32278 Int) (cheight!16235 Int)) (Leaf!30712 (xs!19422 IArray!32109) (csize!32279 Int)) (Empty!16024) )
))
(declare-datatypes ((List!75441 0))(
  ( (Nil!75315) (Cons!75315 (h!81763 (_ BitVec 16)) (t!391211 List!75441)) )
))
(declare-datatypes ((TokenValue!9076 0))(
  ( (FloatLiteralValue!18152 (text!63977 List!75441)) (TokenValueExt!9075 (__x!35434 Int)) (Broken!45380 (value!292557 List!75441)) (Object!9201) (End!9076) (Def!9076) (Underscore!9076) (Match!9076) (Else!9076) (Error!9076) (Case!9076) (If!9076) (Extends!9076) (Abstract!9076) (Class!9076) (Val!9076) (DelimiterValue!18152 (del!9136 List!75441)) (KeywordValue!9082 (value!292558 List!75441)) (CommentValue!18152 (value!292559 List!75441)) (WhitespaceValue!18152 (value!292560 List!75441)) (IndentationValue!9076 (value!292561 List!75441)) (String!85155) (Int32!9076) (Broken!45381 (value!292562 List!75441)) (Boolean!9077) (Unit!171125) (OperatorValue!9079 (op!9136 List!75441)) (IdentifierValue!18152 (value!292563 List!75441)) (IdentifierValue!18153 (value!292564 List!75441)) (WhitespaceValue!18153 (value!292565 List!75441)) (True!18152) (False!18152) (Broken!45382 (value!292566 List!75441)) (Broken!45383 (value!292567 List!75441)) (True!18153) (RightBrace!9076) (RightBracket!9076) (Colon!9076) (Null!9076) (Comma!9076) (LeftBracket!9076) (False!18153) (LeftBrace!9076) (ImaginaryLiteralValue!9076 (text!63978 List!75441)) (StringLiteralValue!27228 (value!292568 List!75441)) (EOFValue!9076 (value!292569 List!75441)) (IdentValue!9076 (value!292570 List!75441)) (DelimiterValue!18153 (value!292571 List!75441)) (DedentValue!9076 (value!292572 List!75441)) (NewLineValue!9076 (value!292573 List!75441)) (IntegerValue!27228 (value!292574 (_ BitVec 32)) (text!63979 List!75441)) (IntegerValue!27229 (value!292575 Int) (text!63980 List!75441)) (Times!9076) (Or!9076) (Equal!9076) (Minus!9076) (Broken!45384 (value!292576 List!75441)) (And!9076) (Div!9076) (LessEqual!9076) (Mod!9076) (Concat!30903) (Not!9076) (Plus!9076) (SpaceValue!9076 (value!292577 List!75441)) (IntegerValue!27230 (value!292578 Int) (text!63981 List!75441)) (StringLiteralValue!27229 (text!63982 List!75441)) (FloatLiteralValue!18153 (text!63983 List!75441)) (BytesLiteralValue!9076 (value!292579 List!75441)) (CommentValue!18153 (value!292580 List!75441)) (StringLiteralValue!27230 (value!292581 List!75441)) (ErrorTokenValue!9076 (msg!9137 List!75441)) )
))
(declare-datatypes ((BalanceConc!31004 0))(
  ( (BalanceConc!31005 (c!1475425 Conc!16024)) )
))
(declare-datatypes ((TokenValueInjection!17460 0))(
  ( (TokenValueInjection!17461 (toValue!11835 Int) (toChars!11694 Int)) )
))
(declare-datatypes ((Regex!21827 0))(
  ( (ElementMatch!21827 (c!1475426 C!43992)) (Concat!30904 (regOne!44166 Regex!21827) (regTwo!44166 Regex!21827)) (EmptyExpr!21827) (Star!21827 (reg!22156 Regex!21827)) (EmptyLang!21827) (Union!21827 (regOne!44167 Regex!21827) (regTwo!44167 Regex!21827)) )
))
(declare-datatypes ((Rule!17312 0))(
  ( (Rule!17313 (regex!8756 Regex!21827) (tag!9620 String!85153) (isSeparator!8756 Bool) (transformation!8756 TokenValueInjection!17460)) )
))
(declare-datatypes ((List!75442 0))(
  ( (Nil!75316) (Cons!75316 (h!81764 Rule!17312) (t!391212 List!75442)) )
))
(declare-fun rules!4030 () List!75442)

(declare-fun rulesValidInductive!3475 (LexerInterface!8346 List!75442) Bool)

(assert (=> b!8045799 (= res!3180518 (rulesValidInductive!3475 thiss!26855 rules!4030))))

(declare-fun e!4739977 () Bool)

(assert (=> b!8045800 (= e!4739977 (and tp!2411729 tp!2411730))))

(declare-fun b!8045801 () Bool)

(declare-fun tp!2411732 () Bool)

(declare-fun e!4739981 () Bool)

(declare-fun inv!97057 (String!85153) Bool)

(declare-fun inv!97059 (TokenValueInjection!17460) Bool)

(assert (=> b!8045801 (= e!4739981 (and tp!2411732 (inv!97057 (tag!9620 (h!81764 rules!4030))) (inv!97059 (transformation!8756 (h!81764 rules!4030))) e!4739977))))

(declare-fun b!8045803 () Bool)

(declare-fun res!3180516 () Bool)

(assert (=> b!8045803 (=> (not res!3180516) (not e!4739976))))

(declare-fun lt!2722724 () List!75442)

(assert (=> b!8045803 (= res!3180516 (rulesValidInductive!3475 thiss!26855 lt!2722724))))

(declare-fun e!4739982 () Bool)

(assert (=> b!8045804 (= e!4739982 (and tp!2411733 tp!2411735))))

(declare-fun b!8045805 () Bool)

(declare-fun e!4739984 () Bool)

(declare-fun rulesInvariant!6814 (LexerInterface!8346 List!75442) Bool)

(assert (=> b!8045805 (= e!4739984 (not (rulesInvariant!6814 thiss!26855 rules!4030)))))

(declare-datatypes ((List!75443 0))(
  ( (Nil!75317) (Cons!75317 (h!81765 String!85153) (t!391213 List!75443)) )
))
(declare-fun noDuplicateTag!3334 (LexerInterface!8346 List!75442 List!75443) Bool)

(assert (=> b!8045805 (noDuplicateTag!3334 thiss!26855 rules!4030 Nil!75317)))

(declare-fun lt!2722725 () List!75443)

(declare-datatypes ((Unit!171126 0))(
  ( (Unit!171127) )
))
(declare-fun lt!2722726 () Unit!171126)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!50 (LexerInterface!8346 List!75443 List!75443 List!75442) Unit!171126)

(assert (=> b!8045805 (= lt!2722726 (lemmaNoDupTagThenAlsoWithSubListAcc!50 thiss!26855 lt!2722725 Nil!75317 rules!4030))))

(declare-fun b!8045806 () Bool)

(declare-fun e!4739980 () Bool)

(declare-fun tp!2411731 () Bool)

(assert (=> b!8045806 (= e!4739980 (and e!4739981 tp!2411731))))

(declare-fun b!8045807 () Bool)

(declare-fun res!3180519 () Bool)

(assert (=> b!8045807 (=> (not res!3180519) (not e!4739976))))

(assert (=> b!8045807 (= res!3180519 (noDuplicateTag!3334 thiss!26855 lt!2722724 Nil!75317))))

(declare-fun b!8045802 () Bool)

(assert (=> b!8045802 (= e!4739976 e!4739984)))

(declare-fun res!3180520 () Bool)

(assert (=> b!8045802 (=> (not res!3180520) (not e!4739984))))

(assert (=> b!8045802 (= res!3180520 (noDuplicateTag!3334 thiss!26855 rules!4030 lt!2722725))))

(declare-fun r!4387 () Rule!17312)

(assert (=> b!8045802 (= lt!2722725 (Cons!75317 (tag!9620 r!4387) Nil!75317))))

(declare-fun res!3180521 () Bool)

(declare-fun e!4739978 () Bool)

(assert (=> start!757568 (=> (not res!3180521) (not e!4739978))))

(get-info :version)

(assert (=> start!757568 (= res!3180521 ((_ is Lexer!8344) thiss!26855))))

(assert (=> start!757568 e!4739978))

(assert (=> start!757568 true))

(declare-fun e!4739983 () Bool)

(assert (=> start!757568 e!4739983))

(assert (=> start!757568 e!4739980))

(declare-fun b!8045808 () Bool)

(declare-fun tp!2411734 () Bool)

(assert (=> b!8045808 (= e!4739983 (and tp!2411734 (inv!97057 (tag!9620 r!4387)) (inv!97059 (transformation!8756 r!4387)) e!4739982))))

(declare-fun b!8045809 () Bool)

(assert (=> b!8045809 (= e!4739978 e!4739976)))

(declare-fun res!3180517 () Bool)

(assert (=> b!8045809 (=> (not res!3180517) (not e!4739976))))

(assert (=> b!8045809 (= res!3180517 (rulesInvariant!6814 thiss!26855 lt!2722724))))

(assert (=> b!8045809 (= lt!2722724 (Cons!75316 r!4387 rules!4030))))

(assert (= (and start!757568 res!3180521) b!8045809))

(assert (= (and b!8045809 res!3180517) b!8045803))

(assert (= (and b!8045803 res!3180516) b!8045807))

(assert (= (and b!8045807 res!3180519) b!8045799))

(assert (= (and b!8045799 res!3180518) b!8045802))

(assert (= (and b!8045802 res!3180520) b!8045805))

(assert (= b!8045808 b!8045804))

(assert (= start!757568 b!8045808))

(assert (= b!8045801 b!8045800))

(assert (= b!8045806 b!8045801))

(assert (= (and start!757568 ((_ is Cons!75316) rules!4030)) b!8045806))

(declare-fun m!8398150 () Bool)

(assert (=> b!8045801 m!8398150))

(declare-fun m!8398152 () Bool)

(assert (=> b!8045801 m!8398152))

(declare-fun m!8398154 () Bool)

(assert (=> b!8045799 m!8398154))

(declare-fun m!8398156 () Bool)

(assert (=> b!8045802 m!8398156))

(declare-fun m!8398158 () Bool)

(assert (=> b!8045809 m!8398158))

(declare-fun m!8398160 () Bool)

(assert (=> b!8045805 m!8398160))

(declare-fun m!8398162 () Bool)

(assert (=> b!8045805 m!8398162))

(declare-fun m!8398164 () Bool)

(assert (=> b!8045805 m!8398164))

(declare-fun m!8398166 () Bool)

(assert (=> b!8045807 m!8398166))

(declare-fun m!8398168 () Bool)

(assert (=> b!8045803 m!8398168))

(declare-fun m!8398170 () Bool)

(assert (=> b!8045808 m!8398170))

(declare-fun m!8398172 () Bool)

(assert (=> b!8045808 m!8398172))

(check-sat b_and!354817 (not b!8045806) (not b_next!137171) (not b_next!137169) b_and!354819 (not b_next!137175) (not b_next!137173) (not b!8045799) (not b!8045802) b_and!354821 (not b!8045808) (not b!8045807) (not b!8045801) b_and!354815 (not b!8045805) (not b!8045809) (not b!8045803))
(check-sat b_and!354817 b_and!354821 (not b_next!137171) (not b_next!137169) b_and!354815 b_and!354819 (not b_next!137175) (not b_next!137173))
(get-model)

(declare-fun d!2396410 () Bool)

(assert (=> d!2396410 (= (inv!97057 (tag!9620 (h!81764 rules!4030))) (= (mod (str.len (value!292556 (tag!9620 (h!81764 rules!4030)))) 2) 0))))

(assert (=> b!8045801 d!2396410))

(declare-fun d!2396412 () Bool)

(declare-fun res!3180528 () Bool)

(declare-fun e!4739988 () Bool)

(assert (=> d!2396412 (=> (not res!3180528) (not e!4739988))))

(declare-fun semiInverseModEq!3886 (Int Int) Bool)

(assert (=> d!2396412 (= res!3180528 (semiInverseModEq!3886 (toChars!11694 (transformation!8756 (h!81764 rules!4030))) (toValue!11835 (transformation!8756 (h!81764 rules!4030)))))))

(assert (=> d!2396412 (= (inv!97059 (transformation!8756 (h!81764 rules!4030))) e!4739988)))

(declare-fun b!8045812 () Bool)

(declare-fun equivClasses!3701 (Int Int) Bool)

(assert (=> b!8045812 (= e!4739988 (equivClasses!3701 (toChars!11694 (transformation!8756 (h!81764 rules!4030))) (toValue!11835 (transformation!8756 (h!81764 rules!4030)))))))

(assert (= (and d!2396412 res!3180528) b!8045812))

(declare-fun m!8398174 () Bool)

(assert (=> d!2396412 m!8398174))

(declare-fun m!8398176 () Bool)

(assert (=> b!8045812 m!8398176))

(assert (=> b!8045801 d!2396412))

(declare-fun d!2396414 () Bool)

(declare-fun res!3180531 () Bool)

(declare-fun e!4739991 () Bool)

(assert (=> d!2396414 (=> (not res!3180531) (not e!4739991))))

(declare-fun rulesValid!3160 (LexerInterface!8346 List!75442) Bool)

(assert (=> d!2396414 (= res!3180531 (rulesValid!3160 thiss!26855 rules!4030))))

(assert (=> d!2396414 (= (rulesInvariant!6814 thiss!26855 rules!4030) e!4739991)))

(declare-fun b!8045815 () Bool)

(assert (=> b!8045815 (= e!4739991 (noDuplicateTag!3334 thiss!26855 rules!4030 Nil!75317))))

(assert (= (and d!2396414 res!3180531) b!8045815))

(declare-fun m!8398178 () Bool)

(assert (=> d!2396414 m!8398178))

(assert (=> b!8045815 m!8398162))

(assert (=> b!8045805 d!2396414))

(declare-fun d!2396418 () Bool)

(declare-fun res!3180540 () Bool)

(declare-fun e!4740000 () Bool)

(assert (=> d!2396418 (=> res!3180540 e!4740000)))

(assert (=> d!2396418 (= res!3180540 ((_ is Nil!75316) rules!4030))))

(assert (=> d!2396418 (= (noDuplicateTag!3334 thiss!26855 rules!4030 Nil!75317) e!4740000)))

(declare-fun b!8045824 () Bool)

(declare-fun e!4740001 () Bool)

(assert (=> b!8045824 (= e!4740000 e!4740001)))

(declare-fun res!3180541 () Bool)

(assert (=> b!8045824 (=> (not res!3180541) (not e!4740001))))

(declare-fun contains!21062 (List!75443 String!85153) Bool)

(assert (=> b!8045824 (= res!3180541 (not (contains!21062 Nil!75317 (tag!9620 (h!81764 rules!4030)))))))

(declare-fun b!8045825 () Bool)

(assert (=> b!8045825 (= e!4740001 (noDuplicateTag!3334 thiss!26855 (t!391212 rules!4030) (Cons!75317 (tag!9620 (h!81764 rules!4030)) Nil!75317)))))

(assert (= (and d!2396418 (not res!3180540)) b!8045824))

(assert (= (and b!8045824 res!3180541) b!8045825))

(declare-fun m!8398180 () Bool)

(assert (=> b!8045824 m!8398180))

(declare-fun m!8398182 () Bool)

(assert (=> b!8045825 m!8398182))

(assert (=> b!8045805 d!2396418))

(declare-fun d!2396420 () Bool)

(assert (=> d!2396420 (noDuplicateTag!3334 thiss!26855 rules!4030 Nil!75317)))

(declare-fun lt!2722729 () Unit!171126)

(declare-fun choose!60484 (LexerInterface!8346 List!75443 List!75443 List!75442) Unit!171126)

(assert (=> d!2396420 (= lt!2722729 (choose!60484 thiss!26855 lt!2722725 Nil!75317 rules!4030))))

(declare-fun subseq!906 (List!75443 List!75443) Bool)

(assert (=> d!2396420 (subseq!906 Nil!75317 lt!2722725)))

(assert (=> d!2396420 (= (lemmaNoDupTagThenAlsoWithSubListAcc!50 thiss!26855 lt!2722725 Nil!75317 rules!4030) lt!2722729)))

(declare-fun bs!1971689 () Bool)

(assert (= bs!1971689 d!2396420))

(assert (=> bs!1971689 m!8398162))

(declare-fun m!8398188 () Bool)

(assert (=> bs!1971689 m!8398188))

(declare-fun m!8398190 () Bool)

(assert (=> bs!1971689 m!8398190))

(assert (=> b!8045805 d!2396420))

(declare-fun d!2396426 () Bool)

(assert (=> d!2396426 true))

(declare-fun lt!2722736 () Bool)

(declare-fun lambda!472744 () Int)

(declare-fun forall!18472 (List!75442 Int) Bool)

(assert (=> d!2396426 (= lt!2722736 (forall!18472 rules!4030 lambda!472744))))

(declare-fun e!4740029 () Bool)

(assert (=> d!2396426 (= lt!2722736 e!4740029)))

(declare-fun res!3180569 () Bool)

(assert (=> d!2396426 (=> res!3180569 e!4740029)))

(assert (=> d!2396426 (= res!3180569 (not ((_ is Cons!75316) rules!4030)))))

(assert (=> d!2396426 (= (rulesValidInductive!3475 thiss!26855 rules!4030) lt!2722736)))

(declare-fun b!8045854 () Bool)

(declare-fun e!4740028 () Bool)

(assert (=> b!8045854 (= e!4740029 e!4740028)))

(declare-fun res!3180568 () Bool)

(assert (=> b!8045854 (=> (not res!3180568) (not e!4740028))))

(declare-fun ruleValid!3996 (LexerInterface!8346 Rule!17312) Bool)

(assert (=> b!8045854 (= res!3180568 (ruleValid!3996 thiss!26855 (h!81764 rules!4030)))))

(declare-fun b!8045855 () Bool)

(assert (=> b!8045855 (= e!4740028 (rulesValidInductive!3475 thiss!26855 (t!391212 rules!4030)))))

(assert (= (and d!2396426 (not res!3180569)) b!8045854))

(assert (= (and b!8045854 res!3180568) b!8045855))

(declare-fun m!8398224 () Bool)

(assert (=> d!2396426 m!8398224))

(declare-fun m!8398226 () Bool)

(assert (=> b!8045854 m!8398226))

(declare-fun m!8398228 () Bool)

(assert (=> b!8045855 m!8398228))

(assert (=> b!8045799 d!2396426))

(declare-fun d!2396446 () Bool)

(declare-fun res!3180570 () Bool)

(declare-fun e!4740030 () Bool)

(assert (=> d!2396446 (=> (not res!3180570) (not e!4740030))))

(assert (=> d!2396446 (= res!3180570 (rulesValid!3160 thiss!26855 lt!2722724))))

(assert (=> d!2396446 (= (rulesInvariant!6814 thiss!26855 lt!2722724) e!4740030)))

(declare-fun b!8045858 () Bool)

(assert (=> b!8045858 (= e!4740030 (noDuplicateTag!3334 thiss!26855 lt!2722724 Nil!75317))))

(assert (= (and d!2396446 res!3180570) b!8045858))

(declare-fun m!8398230 () Bool)

(assert (=> d!2396446 m!8398230))

(assert (=> b!8045858 m!8398166))

(assert (=> b!8045809 d!2396446))

(declare-fun bs!1971691 () Bool)

(declare-fun d!2396448 () Bool)

(assert (= bs!1971691 (and d!2396448 d!2396426)))

(declare-fun lambda!472745 () Int)

(assert (=> bs!1971691 (= lambda!472745 lambda!472744)))

(assert (=> d!2396448 true))

(declare-fun lt!2722737 () Bool)

(assert (=> d!2396448 (= lt!2722737 (forall!18472 lt!2722724 lambda!472745))))

(declare-fun e!4740032 () Bool)

(assert (=> d!2396448 (= lt!2722737 e!4740032)))

(declare-fun res!3180572 () Bool)

(assert (=> d!2396448 (=> res!3180572 e!4740032)))

(assert (=> d!2396448 (= res!3180572 (not ((_ is Cons!75316) lt!2722724)))))

(assert (=> d!2396448 (= (rulesValidInductive!3475 thiss!26855 lt!2722724) lt!2722737)))

(declare-fun b!8045859 () Bool)

(declare-fun e!4740031 () Bool)

(assert (=> b!8045859 (= e!4740032 e!4740031)))

(declare-fun res!3180571 () Bool)

(assert (=> b!8045859 (=> (not res!3180571) (not e!4740031))))

(assert (=> b!8045859 (= res!3180571 (ruleValid!3996 thiss!26855 (h!81764 lt!2722724)))))

(declare-fun b!8045860 () Bool)

(assert (=> b!8045860 (= e!4740031 (rulesValidInductive!3475 thiss!26855 (t!391212 lt!2722724)))))

(assert (= (and d!2396448 (not res!3180572)) b!8045859))

(assert (= (and b!8045859 res!3180571) b!8045860))

(declare-fun m!8398232 () Bool)

(assert (=> d!2396448 m!8398232))

(declare-fun m!8398234 () Bool)

(assert (=> b!8045859 m!8398234))

(declare-fun m!8398236 () Bool)

(assert (=> b!8045860 m!8398236))

(assert (=> b!8045803 d!2396448))

(declare-fun d!2396450 () Bool)

(assert (=> d!2396450 (= (inv!97057 (tag!9620 r!4387)) (= (mod (str.len (value!292556 (tag!9620 r!4387))) 2) 0))))

(assert (=> b!8045808 d!2396450))

(declare-fun d!2396452 () Bool)

(declare-fun res!3180573 () Bool)

(declare-fun e!4740033 () Bool)

(assert (=> d!2396452 (=> (not res!3180573) (not e!4740033))))

(assert (=> d!2396452 (= res!3180573 (semiInverseModEq!3886 (toChars!11694 (transformation!8756 r!4387)) (toValue!11835 (transformation!8756 r!4387))))))

(assert (=> d!2396452 (= (inv!97059 (transformation!8756 r!4387)) e!4740033)))

(declare-fun b!8045861 () Bool)

(assert (=> b!8045861 (= e!4740033 (equivClasses!3701 (toChars!11694 (transformation!8756 r!4387)) (toValue!11835 (transformation!8756 r!4387))))))

(assert (= (and d!2396452 res!3180573) b!8045861))

(declare-fun m!8398238 () Bool)

(assert (=> d!2396452 m!8398238))

(declare-fun m!8398240 () Bool)

(assert (=> b!8045861 m!8398240))

(assert (=> b!8045808 d!2396452))

(declare-fun d!2396454 () Bool)

(declare-fun res!3180574 () Bool)

(declare-fun e!4740034 () Bool)

(assert (=> d!2396454 (=> res!3180574 e!4740034)))

(assert (=> d!2396454 (= res!3180574 ((_ is Nil!75316) rules!4030))))

(assert (=> d!2396454 (= (noDuplicateTag!3334 thiss!26855 rules!4030 lt!2722725) e!4740034)))

(declare-fun b!8045862 () Bool)

(declare-fun e!4740035 () Bool)

(assert (=> b!8045862 (= e!4740034 e!4740035)))

(declare-fun res!3180575 () Bool)

(assert (=> b!8045862 (=> (not res!3180575) (not e!4740035))))

(assert (=> b!8045862 (= res!3180575 (not (contains!21062 lt!2722725 (tag!9620 (h!81764 rules!4030)))))))

(declare-fun b!8045863 () Bool)

(assert (=> b!8045863 (= e!4740035 (noDuplicateTag!3334 thiss!26855 (t!391212 rules!4030) (Cons!75317 (tag!9620 (h!81764 rules!4030)) lt!2722725)))))

(assert (= (and d!2396454 (not res!3180574)) b!8045862))

(assert (= (and b!8045862 res!3180575) b!8045863))

(declare-fun m!8398242 () Bool)

(assert (=> b!8045862 m!8398242))

(declare-fun m!8398244 () Bool)

(assert (=> b!8045863 m!8398244))

(assert (=> b!8045802 d!2396454))

(declare-fun d!2396456 () Bool)

(declare-fun res!3180576 () Bool)

(declare-fun e!4740036 () Bool)

(assert (=> d!2396456 (=> res!3180576 e!4740036)))

(assert (=> d!2396456 (= res!3180576 ((_ is Nil!75316) lt!2722724))))

(assert (=> d!2396456 (= (noDuplicateTag!3334 thiss!26855 lt!2722724 Nil!75317) e!4740036)))

(declare-fun b!8045864 () Bool)

(declare-fun e!4740037 () Bool)

(assert (=> b!8045864 (= e!4740036 e!4740037)))

(declare-fun res!3180577 () Bool)

(assert (=> b!8045864 (=> (not res!3180577) (not e!4740037))))

(assert (=> b!8045864 (= res!3180577 (not (contains!21062 Nil!75317 (tag!9620 (h!81764 lt!2722724)))))))

(declare-fun b!8045865 () Bool)

(assert (=> b!8045865 (= e!4740037 (noDuplicateTag!3334 thiss!26855 (t!391212 lt!2722724) (Cons!75317 (tag!9620 (h!81764 lt!2722724)) Nil!75317)))))

(assert (= (and d!2396456 (not res!3180576)) b!8045864))

(assert (= (and b!8045864 res!3180577) b!8045865))

(declare-fun m!8398250 () Bool)

(assert (=> b!8045864 m!8398250))

(declare-fun m!8398252 () Bool)

(assert (=> b!8045865 m!8398252))

(assert (=> b!8045807 d!2396456))

(declare-fun e!4740043 () Bool)

(assert (=> b!8045801 (= tp!2411732 e!4740043)))

(declare-fun b!8045892 () Bool)

(declare-fun tp!2411763 () Bool)

(assert (=> b!8045892 (= e!4740043 tp!2411763)))

(declare-fun b!8045891 () Bool)

(declare-fun tp!2411761 () Bool)

(declare-fun tp!2411762 () Bool)

(assert (=> b!8045891 (= e!4740043 (and tp!2411761 tp!2411762))))

(declare-fun b!8045890 () Bool)

(declare-fun tp_is_empty!54625 () Bool)

(assert (=> b!8045890 (= e!4740043 tp_is_empty!54625)))

(declare-fun b!8045893 () Bool)

(declare-fun tp!2411764 () Bool)

(declare-fun tp!2411765 () Bool)

(assert (=> b!8045893 (= e!4740043 (and tp!2411764 tp!2411765))))

(assert (= (and b!8045801 ((_ is ElementMatch!21827) (regex!8756 (h!81764 rules!4030)))) b!8045890))

(assert (= (and b!8045801 ((_ is Concat!30904) (regex!8756 (h!81764 rules!4030)))) b!8045891))

(assert (= (and b!8045801 ((_ is Star!21827) (regex!8756 (h!81764 rules!4030)))) b!8045892))

(assert (= (and b!8045801 ((_ is Union!21827) (regex!8756 (h!81764 rules!4030)))) b!8045893))

(declare-fun b!8045919 () Bool)

(declare-fun b_free!136389 () Bool)

(declare-fun b_next!137179 () Bool)

(assert (=> b!8045919 (= b_free!136389 (not b_next!137179))))

(declare-fun tp!2411792 () Bool)

(declare-fun b_and!354827 () Bool)

(assert (=> b!8045919 (= tp!2411792 b_and!354827)))

(declare-fun b_free!136393 () Bool)

(declare-fun b_next!137183 () Bool)

(assert (=> b!8045919 (= b_free!136393 (not b_next!137183))))

(declare-fun tp!2411794 () Bool)

(declare-fun b_and!354829 () Bool)

(assert (=> b!8045919 (= tp!2411794 b_and!354829)))

(declare-fun e!4740067 () Bool)

(assert (=> b!8045919 (= e!4740067 (and tp!2411792 tp!2411794))))

(declare-fun tp!2411793 () Bool)

(declare-fun e!4740066 () Bool)

(declare-fun b!8045918 () Bool)

(assert (=> b!8045918 (= e!4740066 (and tp!2411793 (inv!97057 (tag!9620 (h!81764 (t!391212 rules!4030)))) (inv!97059 (transformation!8756 (h!81764 (t!391212 rules!4030)))) e!4740067))))

(declare-fun b!8045917 () Bool)

(declare-fun e!4740068 () Bool)

(declare-fun tp!2411791 () Bool)

(assert (=> b!8045917 (= e!4740068 (and e!4740066 tp!2411791))))

(assert (=> b!8045806 (= tp!2411731 e!4740068)))

(assert (= b!8045918 b!8045919))

(assert (= b!8045917 b!8045918))

(assert (= (and b!8045806 ((_ is Cons!75316) (t!391212 rules!4030))) b!8045917))

(declare-fun m!8398258 () Bool)

(assert (=> b!8045918 m!8398258))

(declare-fun m!8398260 () Bool)

(assert (=> b!8045918 m!8398260))

(declare-fun e!4740069 () Bool)

(assert (=> b!8045808 (= tp!2411734 e!4740069)))

(declare-fun b!8045922 () Bool)

(declare-fun tp!2411797 () Bool)

(assert (=> b!8045922 (= e!4740069 tp!2411797)))

(declare-fun b!8045921 () Bool)

(declare-fun tp!2411795 () Bool)

(declare-fun tp!2411796 () Bool)

(assert (=> b!8045921 (= e!4740069 (and tp!2411795 tp!2411796))))

(declare-fun b!8045920 () Bool)

(assert (=> b!8045920 (= e!4740069 tp_is_empty!54625)))

(declare-fun b!8045923 () Bool)

(declare-fun tp!2411798 () Bool)

(declare-fun tp!2411799 () Bool)

(assert (=> b!8045923 (= e!4740069 (and tp!2411798 tp!2411799))))

(assert (= (and b!8045808 ((_ is ElementMatch!21827) (regex!8756 r!4387))) b!8045920))

(assert (= (and b!8045808 ((_ is Concat!30904) (regex!8756 r!4387))) b!8045921))

(assert (= (and b!8045808 ((_ is Star!21827) (regex!8756 r!4387))) b!8045922))

(assert (= (and b!8045808 ((_ is Union!21827) (regex!8756 r!4387))) b!8045923))

(check-sat (not d!2396448) (not b!8045892) (not b!8045860) b_and!354821 (not b!8045921) (not b!8045917) (not b_next!137183) (not b!8045865) (not d!2396420) (not b!8045825) (not d!2396452) (not b!8045815) (not d!2396414) (not b!8045812) (not b!8045918) (not b!8045859) b_and!354817 tp_is_empty!54625 (not d!2396412) (not d!2396426) (not b_next!137179) (not b!8045923) (not b!8045855) (not b!8045891) (not b!8045862) (not b_next!137171) (not b!8045824) (not b!8045922) (not b_next!137169) (not b!8045854) (not b!8045893) (not b!8045864) b_and!354815 (not b!8045863) b_and!354829 (not b!8045858) b_and!354819 (not d!2396446) (not b_next!137175) (not b!8045861) b_and!354827 (not b_next!137173))
(check-sat b_and!354817 (not b_next!137179) b_and!354821 (not b_next!137183) (not b_next!137171) (not b_next!137169) b_and!354815 b_and!354829 b_and!354819 (not b_next!137175) b_and!354827 (not b_next!137173))
(get-model)

(declare-fun d!2396460 () Bool)

(declare-fun res!3180584 () Bool)

(declare-fun e!4740072 () Bool)

(assert (=> d!2396460 (=> res!3180584 e!4740072)))

(assert (=> d!2396460 (= res!3180584 ((_ is Nil!75316) (t!391212 lt!2722724)))))

(assert (=> d!2396460 (= (noDuplicateTag!3334 thiss!26855 (t!391212 lt!2722724) (Cons!75317 (tag!9620 (h!81764 lt!2722724)) Nil!75317)) e!4740072)))

(declare-fun b!8045926 () Bool)

(declare-fun e!4740073 () Bool)

(assert (=> b!8045926 (= e!4740072 e!4740073)))

(declare-fun res!3180585 () Bool)

(assert (=> b!8045926 (=> (not res!3180585) (not e!4740073))))

(assert (=> b!8045926 (= res!3180585 (not (contains!21062 (Cons!75317 (tag!9620 (h!81764 lt!2722724)) Nil!75317) (tag!9620 (h!81764 (t!391212 lt!2722724))))))))

(declare-fun b!8045927 () Bool)

(assert (=> b!8045927 (= e!4740073 (noDuplicateTag!3334 thiss!26855 (t!391212 (t!391212 lt!2722724)) (Cons!75317 (tag!9620 (h!81764 (t!391212 lt!2722724))) (Cons!75317 (tag!9620 (h!81764 lt!2722724)) Nil!75317))))))

(assert (= (and d!2396460 (not res!3180584)) b!8045926))

(assert (= (and b!8045926 res!3180585) b!8045927))

(declare-fun m!8398268 () Bool)

(assert (=> b!8045926 m!8398268))

(declare-fun m!8398270 () Bool)

(assert (=> b!8045927 m!8398270))

(assert (=> b!8045865 d!2396460))

(declare-fun d!2396464 () Bool)

(declare-fun lt!2722744 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16071 (List!75443) (InoxSet String!85153))

(assert (=> d!2396464 (= lt!2722744 (select (content!16071 Nil!75317) (tag!9620 (h!81764 lt!2722724))))))

(declare-fun e!4740080 () Bool)

(assert (=> d!2396464 (= lt!2722744 e!4740080)))

(declare-fun res!3180593 () Bool)

(assert (=> d!2396464 (=> (not res!3180593) (not e!4740080))))

(assert (=> d!2396464 (= res!3180593 ((_ is Cons!75317) Nil!75317))))

(assert (=> d!2396464 (= (contains!21062 Nil!75317 (tag!9620 (h!81764 lt!2722724))) lt!2722744)))

(declare-fun b!8045934 () Bool)

(declare-fun e!4740081 () Bool)

(assert (=> b!8045934 (= e!4740080 e!4740081)))

(declare-fun res!3180592 () Bool)

(assert (=> b!8045934 (=> res!3180592 e!4740081)))

(assert (=> b!8045934 (= res!3180592 (= (h!81765 Nil!75317) (tag!9620 (h!81764 lt!2722724))))))

(declare-fun b!8045935 () Bool)

(assert (=> b!8045935 (= e!4740081 (contains!21062 (t!391213 Nil!75317) (tag!9620 (h!81764 lt!2722724))))))

(assert (= (and d!2396464 res!3180593) b!8045934))

(assert (= (and b!8045934 (not res!3180592)) b!8045935))

(declare-fun m!8398272 () Bool)

(assert (=> d!2396464 m!8398272))

(declare-fun m!8398274 () Bool)

(assert (=> d!2396464 m!8398274))

(declare-fun m!8398276 () Bool)

(assert (=> b!8045935 m!8398276))

(assert (=> b!8045864 d!2396464))

(declare-fun d!2396466 () Bool)

(assert (=> d!2396466 true))

(declare-fun lambda!472755 () Int)

(declare-fun order!30051 () Int)

(declare-fun order!30053 () Int)

(declare-fun dynLambda!30255 (Int Int) Int)

(declare-fun dynLambda!30256 (Int Int) Int)

(assert (=> d!2396466 (< (dynLambda!30255 order!30051 (toValue!11835 (transformation!8756 r!4387))) (dynLambda!30256 order!30053 lambda!472755))))

(declare-fun Forall2!1328 (Int) Bool)

(assert (=> d!2396466 (= (equivClasses!3701 (toChars!11694 (transformation!8756 r!4387)) (toValue!11835 (transformation!8756 r!4387))) (Forall2!1328 lambda!472755))))

(declare-fun bs!1971704 () Bool)

(assert (= bs!1971704 d!2396466))

(declare-fun m!8398282 () Bool)

(assert (=> bs!1971704 m!8398282))

(assert (=> b!8045861 d!2396466))

(assert (=> d!2396420 d!2396418))

(declare-fun d!2396472 () Bool)

(assert (=> d!2396472 (noDuplicateTag!3334 thiss!26855 rules!4030 Nil!75317)))

(assert (=> d!2396472 true))

(declare-fun _$69!440 () Unit!171126)

(assert (=> d!2396472 (= (choose!60484 thiss!26855 lt!2722725 Nil!75317 rules!4030) _$69!440)))

(declare-fun bs!1971706 () Bool)

(assert (= bs!1971706 d!2396472))

(assert (=> bs!1971706 m!8398162))

(assert (=> d!2396420 d!2396472))

(declare-fun b!8045956 () Bool)

(declare-fun e!4740092 () Bool)

(assert (=> b!8045956 (= e!4740092 (subseq!906 (t!391213 Nil!75317) (t!391213 lt!2722725)))))

(declare-fun d!2396476 () Bool)

(declare-fun res!3180604 () Bool)

(declare-fun e!4740094 () Bool)

(assert (=> d!2396476 (=> res!3180604 e!4740094)))

(assert (=> d!2396476 (= res!3180604 ((_ is Nil!75317) Nil!75317))))

(assert (=> d!2396476 (= (subseq!906 Nil!75317 lt!2722725) e!4740094)))

(declare-fun b!8045955 () Bool)

(declare-fun e!4740093 () Bool)

(declare-fun e!4740095 () Bool)

(assert (=> b!8045955 (= e!4740093 e!4740095)))

(declare-fun res!3180607 () Bool)

(assert (=> b!8045955 (=> res!3180607 e!4740095)))

(assert (=> b!8045955 (= res!3180607 e!4740092)))

(declare-fun res!3180605 () Bool)

(assert (=> b!8045955 (=> (not res!3180605) (not e!4740092))))

(assert (=> b!8045955 (= res!3180605 (= (h!81765 Nil!75317) (h!81765 lt!2722725)))))

(declare-fun b!8045957 () Bool)

(assert (=> b!8045957 (= e!4740095 (subseq!906 Nil!75317 (t!391213 lt!2722725)))))

(declare-fun b!8045954 () Bool)

(assert (=> b!8045954 (= e!4740094 e!4740093)))

(declare-fun res!3180606 () Bool)

(assert (=> b!8045954 (=> (not res!3180606) (not e!4740093))))

(assert (=> b!8045954 (= res!3180606 ((_ is Cons!75317) lt!2722725))))

(assert (= (and d!2396476 (not res!3180604)) b!8045954))

(assert (= (and b!8045954 res!3180606) b!8045955))

(assert (= (and b!8045955 res!3180605) b!8045956))

(assert (= (and b!8045955 (not res!3180607)) b!8045957))

(declare-fun m!8398288 () Bool)

(assert (=> b!8045956 m!8398288))

(declare-fun m!8398290 () Bool)

(assert (=> b!8045957 m!8398290))

(assert (=> d!2396420 d!2396476))

(declare-fun d!2396480 () Bool)

(declare-fun res!3180612 () Bool)

(declare-fun e!4740100 () Bool)

(assert (=> d!2396480 (=> res!3180612 e!4740100)))

(assert (=> d!2396480 (= res!3180612 ((_ is Nil!75316) lt!2722724))))

(assert (=> d!2396480 (= (forall!18472 lt!2722724 lambda!472745) e!4740100)))

(declare-fun b!8045962 () Bool)

(declare-fun e!4740101 () Bool)

(assert (=> b!8045962 (= e!4740100 e!4740101)))

(declare-fun res!3180613 () Bool)

(assert (=> b!8045962 (=> (not res!3180613) (not e!4740101))))

(declare-fun dynLambda!30259 (Int Rule!17312) Bool)

(assert (=> b!8045962 (= res!3180613 (dynLambda!30259 lambda!472745 (h!81764 lt!2722724)))))

(declare-fun b!8045963 () Bool)

(assert (=> b!8045963 (= e!4740101 (forall!18472 (t!391212 lt!2722724) lambda!472745))))

(assert (= (and d!2396480 (not res!3180612)) b!8045962))

(assert (= (and b!8045962 res!3180613) b!8045963))

(declare-fun b_lambda!290319 () Bool)

(assert (=> (not b_lambda!290319) (not b!8045962)))

(declare-fun m!8398292 () Bool)

(assert (=> b!8045962 m!8398292))

(declare-fun m!8398294 () Bool)

(assert (=> b!8045963 m!8398294))

(assert (=> d!2396448 d!2396480))

(declare-fun d!2396482 () Bool)

(declare-fun res!3180618 () Bool)

(declare-fun e!4740104 () Bool)

(assert (=> d!2396482 (=> res!3180618 e!4740104)))

(assert (=> d!2396482 (= res!3180618 ((_ is Nil!75316) (t!391212 rules!4030)))))

(assert (=> d!2396482 (= (noDuplicateTag!3334 thiss!26855 (t!391212 rules!4030) (Cons!75317 (tag!9620 (h!81764 rules!4030)) lt!2722725)) e!4740104)))

(declare-fun b!8045968 () Bool)

(declare-fun e!4740105 () Bool)

(assert (=> b!8045968 (= e!4740104 e!4740105)))

(declare-fun res!3180619 () Bool)

(assert (=> b!8045968 (=> (not res!3180619) (not e!4740105))))

(assert (=> b!8045968 (= res!3180619 (not (contains!21062 (Cons!75317 (tag!9620 (h!81764 rules!4030)) lt!2722725) (tag!9620 (h!81764 (t!391212 rules!4030))))))))

(declare-fun b!8045969 () Bool)

(assert (=> b!8045969 (= e!4740105 (noDuplicateTag!3334 thiss!26855 (t!391212 (t!391212 rules!4030)) (Cons!75317 (tag!9620 (h!81764 (t!391212 rules!4030))) (Cons!75317 (tag!9620 (h!81764 rules!4030)) lt!2722725))))))

(assert (= (and d!2396482 (not res!3180618)) b!8045968))

(assert (= (and b!8045968 res!3180619) b!8045969))

(declare-fun m!8398296 () Bool)

(assert (=> b!8045968 m!8398296))

(declare-fun m!8398298 () Bool)

(assert (=> b!8045969 m!8398298))

(assert (=> b!8045863 d!2396482))

(declare-fun d!2396484 () Bool)

(declare-fun res!3180620 () Bool)

(declare-fun e!4740106 () Bool)

(assert (=> d!2396484 (=> res!3180620 e!4740106)))

(assert (=> d!2396484 (= res!3180620 ((_ is Nil!75316) (t!391212 rules!4030)))))

(assert (=> d!2396484 (= (noDuplicateTag!3334 thiss!26855 (t!391212 rules!4030) (Cons!75317 (tag!9620 (h!81764 rules!4030)) Nil!75317)) e!4740106)))

(declare-fun b!8045970 () Bool)

(declare-fun e!4740107 () Bool)

(assert (=> b!8045970 (= e!4740106 e!4740107)))

(declare-fun res!3180621 () Bool)

(assert (=> b!8045970 (=> (not res!3180621) (not e!4740107))))

(assert (=> b!8045970 (= res!3180621 (not (contains!21062 (Cons!75317 (tag!9620 (h!81764 rules!4030)) Nil!75317) (tag!9620 (h!81764 (t!391212 rules!4030))))))))

(declare-fun b!8045971 () Bool)

(assert (=> b!8045971 (= e!4740107 (noDuplicateTag!3334 thiss!26855 (t!391212 (t!391212 rules!4030)) (Cons!75317 (tag!9620 (h!81764 (t!391212 rules!4030))) (Cons!75317 (tag!9620 (h!81764 rules!4030)) Nil!75317))))))

(assert (= (and d!2396484 (not res!3180620)) b!8045970))

(assert (= (and b!8045970 res!3180621) b!8045971))

(declare-fun m!8398300 () Bool)

(assert (=> b!8045970 m!8398300))

(declare-fun m!8398304 () Bool)

(assert (=> b!8045971 m!8398304))

(assert (=> b!8045825 d!2396484))

(declare-fun d!2396486 () Bool)

(declare-fun lt!2722750 () Bool)

(assert (=> d!2396486 (= lt!2722750 (select (content!16071 Nil!75317) (tag!9620 (h!81764 rules!4030))))))

(declare-fun e!4740109 () Bool)

(assert (=> d!2396486 (= lt!2722750 e!4740109)))

(declare-fun res!3180626 () Bool)

(assert (=> d!2396486 (=> (not res!3180626) (not e!4740109))))

(assert (=> d!2396486 (= res!3180626 ((_ is Cons!75317) Nil!75317))))

(assert (=> d!2396486 (= (contains!21062 Nil!75317 (tag!9620 (h!81764 rules!4030))) lt!2722750)))

(declare-fun b!8045976 () Bool)

(declare-fun e!4740111 () Bool)

(assert (=> b!8045976 (= e!4740109 e!4740111)))

(declare-fun res!3180625 () Bool)

(assert (=> b!8045976 (=> res!3180625 e!4740111)))

(assert (=> b!8045976 (= res!3180625 (= (h!81765 Nil!75317) (tag!9620 (h!81764 rules!4030))))))

(declare-fun b!8045977 () Bool)

(assert (=> b!8045977 (= e!4740111 (contains!21062 (t!391213 Nil!75317) (tag!9620 (h!81764 rules!4030))))))

(assert (= (and d!2396486 res!3180626) b!8045976))

(assert (= (and b!8045976 (not res!3180625)) b!8045977))

(assert (=> d!2396486 m!8398272))

(declare-fun m!8398308 () Bool)

(assert (=> d!2396486 m!8398308))

(declare-fun m!8398310 () Bool)

(assert (=> b!8045977 m!8398310))

(assert (=> b!8045824 d!2396486))

(declare-fun bs!1971713 () Bool)

(declare-fun d!2396490 () Bool)

(assert (= bs!1971713 (and d!2396490 d!2396466)))

(declare-fun lambda!472761 () Int)

(assert (=> bs!1971713 (= (= (toValue!11835 (transformation!8756 (h!81764 rules!4030))) (toValue!11835 (transformation!8756 r!4387))) (= lambda!472761 lambda!472755))))

(assert (=> d!2396490 true))

(assert (=> d!2396490 (< (dynLambda!30255 order!30051 (toValue!11835 (transformation!8756 (h!81764 rules!4030)))) (dynLambda!30256 order!30053 lambda!472761))))

(assert (=> d!2396490 (= (equivClasses!3701 (toChars!11694 (transformation!8756 (h!81764 rules!4030))) (toValue!11835 (transformation!8756 (h!81764 rules!4030)))) (Forall2!1328 lambda!472761))))

(declare-fun bs!1971714 () Bool)

(assert (= bs!1971714 d!2396490))

(declare-fun m!8398318 () Bool)

(assert (=> bs!1971714 m!8398318))

(assert (=> b!8045812 d!2396490))

(assert (=> b!8045815 d!2396418))

(declare-fun d!2396494 () Bool)

(declare-fun lt!2722751 () Bool)

(assert (=> d!2396494 (= lt!2722751 (select (content!16071 lt!2722725) (tag!9620 (h!81764 rules!4030))))))

(declare-fun e!4740114 () Bool)

(assert (=> d!2396494 (= lt!2722751 e!4740114)))

(declare-fun res!3180631 () Bool)

(assert (=> d!2396494 (=> (not res!3180631) (not e!4740114))))

(assert (=> d!2396494 (= res!3180631 ((_ is Cons!75317) lt!2722725))))

(assert (=> d!2396494 (= (contains!21062 lt!2722725 (tag!9620 (h!81764 rules!4030))) lt!2722751)))

(declare-fun b!8045980 () Bool)

(declare-fun e!4740115 () Bool)

(assert (=> b!8045980 (= e!4740114 e!4740115)))

(declare-fun res!3180630 () Bool)

(assert (=> b!8045980 (=> res!3180630 e!4740115)))

(assert (=> b!8045980 (= res!3180630 (= (h!81765 lt!2722725) (tag!9620 (h!81764 rules!4030))))))

(declare-fun b!8045981 () Bool)

(assert (=> b!8045981 (= e!4740115 (contains!21062 (t!391213 lt!2722725) (tag!9620 (h!81764 rules!4030))))))

(assert (= (and d!2396494 res!3180631) b!8045980))

(assert (= (and b!8045980 (not res!3180630)) b!8045981))

(declare-fun m!8398324 () Bool)

(assert (=> d!2396494 m!8398324))

(declare-fun m!8398326 () Bool)

(assert (=> d!2396494 m!8398326))

(declare-fun m!8398328 () Bool)

(assert (=> b!8045981 m!8398328))

(assert (=> b!8045862 d!2396494))

(declare-fun d!2396498 () Bool)

(assert (=> d!2396498 true))

(declare-fun lambda!472765 () Int)

(declare-fun order!30059 () Int)

(declare-fun order!30061 () Int)

(declare-fun dynLambda!30261 (Int Int) Int)

(declare-fun dynLambda!30262 (Int Int) Int)

(assert (=> d!2396498 (< (dynLambda!30261 order!30059 (toChars!11694 (transformation!8756 r!4387))) (dynLambda!30262 order!30061 lambda!472765))))

(assert (=> d!2396498 true))

(assert (=> d!2396498 (< (dynLambda!30255 order!30051 (toValue!11835 (transformation!8756 r!4387))) (dynLambda!30262 order!30061 lambda!472765))))

(declare-fun Forall!1859 (Int) Bool)

(assert (=> d!2396498 (= (semiInverseModEq!3886 (toChars!11694 (transformation!8756 r!4387)) (toValue!11835 (transformation!8756 r!4387))) (Forall!1859 lambda!472765))))

(declare-fun bs!1971717 () Bool)

(assert (= bs!1971717 d!2396498))

(declare-fun m!8398340 () Bool)

(assert (=> bs!1971717 m!8398340))

(assert (=> d!2396452 d!2396498))

(assert (=> b!8045858 d!2396456))

(declare-fun bs!1971718 () Bool)

(declare-fun d!2396506 () Bool)

(assert (= bs!1971718 (and d!2396506 d!2396426)))

(declare-fun lambda!472766 () Int)

(assert (=> bs!1971718 (= lambda!472766 lambda!472744)))

(declare-fun bs!1971719 () Bool)

(assert (= bs!1971719 (and d!2396506 d!2396448)))

(assert (=> bs!1971719 (= lambda!472766 lambda!472745)))

(assert (=> d!2396506 true))

(declare-fun lt!2722752 () Bool)

(assert (=> d!2396506 (= lt!2722752 (forall!18472 (t!391212 lt!2722724) lambda!472766))))

(declare-fun e!4740125 () Bool)

(assert (=> d!2396506 (= lt!2722752 e!4740125)))

(declare-fun res!3180641 () Bool)

(assert (=> d!2396506 (=> res!3180641 e!4740125)))

(assert (=> d!2396506 (= res!3180641 (not ((_ is Cons!75316) (t!391212 lt!2722724))))))

(assert (=> d!2396506 (= (rulesValidInductive!3475 thiss!26855 (t!391212 lt!2722724)) lt!2722752)))

(declare-fun b!8045994 () Bool)

(declare-fun e!4740124 () Bool)

(assert (=> b!8045994 (= e!4740125 e!4740124)))

(declare-fun res!3180640 () Bool)

(assert (=> b!8045994 (=> (not res!3180640) (not e!4740124))))

(assert (=> b!8045994 (= res!3180640 (ruleValid!3996 thiss!26855 (h!81764 (t!391212 lt!2722724))))))

(declare-fun b!8045995 () Bool)

(assert (=> b!8045995 (= e!4740124 (rulesValidInductive!3475 thiss!26855 (t!391212 (t!391212 lt!2722724))))))

(assert (= (and d!2396506 (not res!3180641)) b!8045994))

(assert (= (and b!8045994 res!3180640) b!8045995))

(declare-fun m!8398342 () Bool)

(assert (=> d!2396506 m!8398342))

(declare-fun m!8398344 () Bool)

(assert (=> b!8045994 m!8398344))

(declare-fun m!8398346 () Bool)

(assert (=> b!8045995 m!8398346))

(assert (=> b!8045860 d!2396506))

(declare-fun bs!1971720 () Bool)

(declare-fun d!2396508 () Bool)

(assert (= bs!1971720 (and d!2396508 d!2396498)))

(declare-fun lambda!472767 () Int)

(assert (=> bs!1971720 (= (and (= (toChars!11694 (transformation!8756 (h!81764 rules!4030))) (toChars!11694 (transformation!8756 r!4387))) (= (toValue!11835 (transformation!8756 (h!81764 rules!4030))) (toValue!11835 (transformation!8756 r!4387)))) (= lambda!472767 lambda!472765))))

(assert (=> d!2396508 true))

(assert (=> d!2396508 (< (dynLambda!30261 order!30059 (toChars!11694 (transformation!8756 (h!81764 rules!4030)))) (dynLambda!30262 order!30061 lambda!472767))))

(assert (=> d!2396508 true))

(assert (=> d!2396508 (< (dynLambda!30255 order!30051 (toValue!11835 (transformation!8756 (h!81764 rules!4030)))) (dynLambda!30262 order!30061 lambda!472767))))

(assert (=> d!2396508 (= (semiInverseModEq!3886 (toChars!11694 (transformation!8756 (h!81764 rules!4030))) (toValue!11835 (transformation!8756 (h!81764 rules!4030)))) (Forall!1859 lambda!472767))))

(declare-fun bs!1971721 () Bool)

(assert (= bs!1971721 d!2396508))

(declare-fun m!8398348 () Bool)

(assert (=> bs!1971721 m!8398348))

(assert (=> d!2396412 d!2396508))

(declare-fun d!2396510 () Bool)

(declare-fun res!3180644 () Bool)

(declare-fun e!4740128 () Bool)

(assert (=> d!2396510 (=> res!3180644 e!4740128)))

(assert (=> d!2396510 (= res!3180644 ((_ is Nil!75316) rules!4030))))

(assert (=> d!2396510 (= (forall!18472 rules!4030 lambda!472744) e!4740128)))

(declare-fun b!8045998 () Bool)

(declare-fun e!4740129 () Bool)

(assert (=> b!8045998 (= e!4740128 e!4740129)))

(declare-fun res!3180645 () Bool)

(assert (=> b!8045998 (=> (not res!3180645) (not e!4740129))))

(assert (=> b!8045998 (= res!3180645 (dynLambda!30259 lambda!472744 (h!81764 rules!4030)))))

(declare-fun b!8045999 () Bool)

(assert (=> b!8045999 (= e!4740129 (forall!18472 (t!391212 rules!4030) lambda!472744))))

(assert (= (and d!2396510 (not res!3180644)) b!8045998))

(assert (= (and b!8045998 res!3180645) b!8045999))

(declare-fun b_lambda!290323 () Bool)

(assert (=> (not b_lambda!290323) (not b!8045998)))

(declare-fun m!8398350 () Bool)

(assert (=> b!8045998 m!8398350))

(declare-fun m!8398352 () Bool)

(assert (=> b!8045999 m!8398352))

(assert (=> d!2396426 d!2396510))

(declare-fun d!2396512 () Bool)

(declare-fun res!3180654 () Bool)

(declare-fun e!4740136 () Bool)

(assert (=> d!2396512 (=> (not res!3180654) (not e!4740136))))

(declare-fun validRegex!12053 (Regex!21827) Bool)

(assert (=> d!2396512 (= res!3180654 (validRegex!12053 (regex!8756 (h!81764 lt!2722724))))))

(assert (=> d!2396512 (= (ruleValid!3996 thiss!26855 (h!81764 lt!2722724)) e!4740136)))

(declare-fun b!8046008 () Bool)

(declare-fun res!3180655 () Bool)

(assert (=> b!8046008 (=> (not res!3180655) (not e!4740136))))

(declare-fun nullable!9782 (Regex!21827) Bool)

(assert (=> b!8046008 (= res!3180655 (not (nullable!9782 (regex!8756 (h!81764 lt!2722724)))))))

(declare-fun b!8046009 () Bool)

(assert (=> b!8046009 (= e!4740136 (not (= (tag!9620 (h!81764 lt!2722724)) (String!85154 ""))))))

(assert (= (and d!2396512 res!3180654) b!8046008))

(assert (= (and b!8046008 res!3180655) b!8046009))

(declare-fun m!8398360 () Bool)

(assert (=> d!2396512 m!8398360))

(declare-fun m!8398362 () Bool)

(assert (=> b!8046008 m!8398362))

(assert (=> b!8045859 d!2396512))

(declare-fun bs!1971724 () Bool)

(declare-fun d!2396518 () Bool)

(assert (= bs!1971724 (and d!2396518 d!2396426)))

(declare-fun lambda!472771 () Int)

(assert (=> bs!1971724 (= lambda!472771 lambda!472744)))

(declare-fun bs!1971725 () Bool)

(assert (= bs!1971725 (and d!2396518 d!2396448)))

(assert (=> bs!1971725 (= lambda!472771 lambda!472745)))

(declare-fun bs!1971727 () Bool)

(assert (= bs!1971727 (and d!2396518 d!2396506)))

(assert (=> bs!1971727 (= lambda!472771 lambda!472766)))

(assert (=> d!2396518 true))

(declare-fun lt!2722758 () Bool)

(assert (=> d!2396518 (= lt!2722758 (rulesValidInductive!3475 thiss!26855 rules!4030))))

(assert (=> d!2396518 (= lt!2722758 (forall!18472 rules!4030 lambda!472771))))

(assert (=> d!2396518 (= (rulesValid!3160 thiss!26855 rules!4030) lt!2722758)))

(declare-fun bs!1971728 () Bool)

(assert (= bs!1971728 d!2396518))

(assert (=> bs!1971728 m!8398154))

(declare-fun m!8398370 () Bool)

(assert (=> bs!1971728 m!8398370))

(assert (=> d!2396414 d!2396518))

(declare-fun bs!1971729 () Bool)

(declare-fun d!2396524 () Bool)

(assert (= bs!1971729 (and d!2396524 d!2396426)))

(declare-fun lambda!472772 () Int)

(assert (=> bs!1971729 (= lambda!472772 lambda!472744)))

(declare-fun bs!1971730 () Bool)

(assert (= bs!1971730 (and d!2396524 d!2396448)))

(assert (=> bs!1971730 (= lambda!472772 lambda!472745)))

(declare-fun bs!1971731 () Bool)

(assert (= bs!1971731 (and d!2396524 d!2396506)))

(assert (=> bs!1971731 (= lambda!472772 lambda!472766)))

(declare-fun bs!1971732 () Bool)

(assert (= bs!1971732 (and d!2396524 d!2396518)))

(assert (=> bs!1971732 (= lambda!472772 lambda!472771)))

(assert (=> d!2396524 true))

(declare-fun lt!2722759 () Bool)

(assert (=> d!2396524 (= lt!2722759 (forall!18472 (t!391212 rules!4030) lambda!472772))))

(declare-fun e!4740152 () Bool)

(assert (=> d!2396524 (= lt!2722759 e!4740152)))

(declare-fun res!3180671 () Bool)

(assert (=> d!2396524 (=> res!3180671 e!4740152)))

(assert (=> d!2396524 (= res!3180671 (not ((_ is Cons!75316) (t!391212 rules!4030))))))

(assert (=> d!2396524 (= (rulesValidInductive!3475 thiss!26855 (t!391212 rules!4030)) lt!2722759)))

(declare-fun b!8046024 () Bool)

(declare-fun e!4740151 () Bool)

(assert (=> b!8046024 (= e!4740152 e!4740151)))

(declare-fun res!3180670 () Bool)

(assert (=> b!8046024 (=> (not res!3180670) (not e!4740151))))

(assert (=> b!8046024 (= res!3180670 (ruleValid!3996 thiss!26855 (h!81764 (t!391212 rules!4030))))))

(declare-fun b!8046025 () Bool)

(assert (=> b!8046025 (= e!4740151 (rulesValidInductive!3475 thiss!26855 (t!391212 (t!391212 rules!4030))))))

(assert (= (and d!2396524 (not res!3180671)) b!8046024))

(assert (= (and b!8046024 res!3180670) b!8046025))

(declare-fun m!8398380 () Bool)

(assert (=> d!2396524 m!8398380))

(declare-fun m!8398382 () Bool)

(assert (=> b!8046024 m!8398382))

(declare-fun m!8398386 () Bool)

(assert (=> b!8046025 m!8398386))

(assert (=> b!8045855 d!2396524))

(declare-fun bs!1971733 () Bool)

(declare-fun d!2396530 () Bool)

(assert (= bs!1971733 (and d!2396530 d!2396506)))

(declare-fun lambda!472773 () Int)

(assert (=> bs!1971733 (= lambda!472773 lambda!472766)))

(declare-fun bs!1971734 () Bool)

(assert (= bs!1971734 (and d!2396530 d!2396426)))

(assert (=> bs!1971734 (= lambda!472773 lambda!472744)))

(declare-fun bs!1971735 () Bool)

(assert (= bs!1971735 (and d!2396530 d!2396524)))

(assert (=> bs!1971735 (= lambda!472773 lambda!472772)))

(declare-fun bs!1971736 () Bool)

(assert (= bs!1971736 (and d!2396530 d!2396518)))

(assert (=> bs!1971736 (= lambda!472773 lambda!472771)))

(declare-fun bs!1971737 () Bool)

(assert (= bs!1971737 (and d!2396530 d!2396448)))

(assert (=> bs!1971737 (= lambda!472773 lambda!472745)))

(assert (=> d!2396530 true))

(declare-fun lt!2722760 () Bool)

(assert (=> d!2396530 (= lt!2722760 (rulesValidInductive!3475 thiss!26855 lt!2722724))))

(assert (=> d!2396530 (= lt!2722760 (forall!18472 lt!2722724 lambda!472773))))

(assert (=> d!2396530 (= (rulesValid!3160 thiss!26855 lt!2722724) lt!2722760)))

(declare-fun bs!1971738 () Bool)

(assert (= bs!1971738 d!2396530))

(assert (=> bs!1971738 m!8398168))

(declare-fun m!8398400 () Bool)

(assert (=> bs!1971738 m!8398400))

(assert (=> d!2396446 d!2396530))

(declare-fun d!2396538 () Bool)

(declare-fun res!3180680 () Bool)

(declare-fun e!4740161 () Bool)

(assert (=> d!2396538 (=> (not res!3180680) (not e!4740161))))

(assert (=> d!2396538 (= res!3180680 (validRegex!12053 (regex!8756 (h!81764 rules!4030))))))

(assert (=> d!2396538 (= (ruleValid!3996 thiss!26855 (h!81764 rules!4030)) e!4740161)))

(declare-fun b!8046034 () Bool)

(declare-fun res!3180681 () Bool)

(assert (=> b!8046034 (=> (not res!3180681) (not e!4740161))))

(assert (=> b!8046034 (= res!3180681 (not (nullable!9782 (regex!8756 (h!81764 rules!4030)))))))

(declare-fun b!8046035 () Bool)

(assert (=> b!8046035 (= e!4740161 (not (= (tag!9620 (h!81764 rules!4030)) (String!85154 ""))))))

(assert (= (and d!2396538 res!3180680) b!8046034))

(assert (= (and b!8046034 res!3180681) b!8046035))

(declare-fun m!8398404 () Bool)

(assert (=> d!2396538 m!8398404))

(declare-fun m!8398408 () Bool)

(assert (=> b!8046034 m!8398408))

(assert (=> b!8045854 d!2396538))

(declare-fun d!2396542 () Bool)

(assert (=> d!2396542 (= (inv!97057 (tag!9620 (h!81764 (t!391212 rules!4030)))) (= (mod (str.len (value!292556 (tag!9620 (h!81764 (t!391212 rules!4030))))) 2) 0))))

(assert (=> b!8045918 d!2396542))

(declare-fun d!2396544 () Bool)

(declare-fun res!3180683 () Bool)

(declare-fun e!4740164 () Bool)

(assert (=> d!2396544 (=> (not res!3180683) (not e!4740164))))

(assert (=> d!2396544 (= res!3180683 (semiInverseModEq!3886 (toChars!11694 (transformation!8756 (h!81764 (t!391212 rules!4030)))) (toValue!11835 (transformation!8756 (h!81764 (t!391212 rules!4030))))))))

(assert (=> d!2396544 (= (inv!97059 (transformation!8756 (h!81764 (t!391212 rules!4030)))) e!4740164)))

(declare-fun b!8046041 () Bool)

(assert (=> b!8046041 (= e!4740164 (equivClasses!3701 (toChars!11694 (transformation!8756 (h!81764 (t!391212 rules!4030)))) (toValue!11835 (transformation!8756 (h!81764 (t!391212 rules!4030))))))))

(assert (= (and d!2396544 res!3180683) b!8046041))

(declare-fun m!8398410 () Bool)

(assert (=> d!2396544 m!8398410))

(declare-fun m!8398412 () Bool)

(assert (=> b!8046041 m!8398412))

(assert (=> b!8045918 d!2396544))

(declare-fun b!8046048 () Bool)

(declare-fun b_free!136395 () Bool)

(declare-fun b_next!137185 () Bool)

(assert (=> b!8046048 (= b_free!136395 (not b_next!137185))))

(declare-fun tp!2411811 () Bool)

(declare-fun b_and!354831 () Bool)

(assert (=> b!8046048 (= tp!2411811 b_and!354831)))

(declare-fun b_free!136397 () Bool)

(declare-fun b_next!137187 () Bool)

(assert (=> b!8046048 (= b_free!136397 (not b_next!137187))))

(declare-fun tp!2411813 () Bool)

(declare-fun b_and!354833 () Bool)

(assert (=> b!8046048 (= tp!2411813 b_and!354833)))

(declare-fun e!4740168 () Bool)

(assert (=> b!8046048 (= e!4740168 (and tp!2411811 tp!2411813))))

(declare-fun e!4740167 () Bool)

(declare-fun b!8046047 () Bool)

(declare-fun tp!2411812 () Bool)

(assert (=> b!8046047 (= e!4740167 (and tp!2411812 (inv!97057 (tag!9620 (h!81764 (t!391212 (t!391212 rules!4030))))) (inv!97059 (transformation!8756 (h!81764 (t!391212 (t!391212 rules!4030))))) e!4740168))))

(declare-fun b!8046046 () Bool)

(declare-fun e!4740169 () Bool)

(declare-fun tp!2411810 () Bool)

(assert (=> b!8046046 (= e!4740169 (and e!4740167 tp!2411810))))

(assert (=> b!8045917 (= tp!2411791 e!4740169)))

(assert (= b!8046047 b!8046048))

(assert (= b!8046046 b!8046047))

(assert (= (and b!8045917 ((_ is Cons!75316) (t!391212 (t!391212 rules!4030)))) b!8046046))

(declare-fun m!8398414 () Bool)

(assert (=> b!8046047 m!8398414))

(declare-fun m!8398416 () Bool)

(assert (=> b!8046047 m!8398416))

(declare-fun e!4740174 () Bool)

(assert (=> b!8045922 (= tp!2411797 e!4740174)))

(declare-fun b!8046054 () Bool)

(declare-fun tp!2411820 () Bool)

(assert (=> b!8046054 (= e!4740174 tp!2411820)))

(declare-fun b!8046053 () Bool)

(declare-fun tp!2411818 () Bool)

(declare-fun tp!2411819 () Bool)

(assert (=> b!8046053 (= e!4740174 (and tp!2411818 tp!2411819))))

(declare-fun b!8046052 () Bool)

(assert (=> b!8046052 (= e!4740174 tp_is_empty!54625)))

(declare-fun b!8046055 () Bool)

(declare-fun tp!2411821 () Bool)

(declare-fun tp!2411822 () Bool)

(assert (=> b!8046055 (= e!4740174 (and tp!2411821 tp!2411822))))

(assert (= (and b!8045922 ((_ is ElementMatch!21827) (reg!22156 (regex!8756 r!4387)))) b!8046052))

(assert (= (and b!8045922 ((_ is Concat!30904) (reg!22156 (regex!8756 r!4387)))) b!8046053))

(assert (= (and b!8045922 ((_ is Star!21827) (reg!22156 (regex!8756 r!4387)))) b!8046054))

(assert (= (and b!8045922 ((_ is Union!21827) (reg!22156 (regex!8756 r!4387)))) b!8046055))

(declare-fun e!4740176 () Bool)

(assert (=> b!8045893 (= tp!2411764 e!4740176)))

(declare-fun b!8046062 () Bool)

(declare-fun tp!2411830 () Bool)

(assert (=> b!8046062 (= e!4740176 tp!2411830)))

(declare-fun b!8046061 () Bool)

(declare-fun tp!2411828 () Bool)

(declare-fun tp!2411829 () Bool)

(assert (=> b!8046061 (= e!4740176 (and tp!2411828 tp!2411829))))

(declare-fun b!8046060 () Bool)

(assert (=> b!8046060 (= e!4740176 tp_is_empty!54625)))

(declare-fun b!8046063 () Bool)

(declare-fun tp!2411831 () Bool)

(declare-fun tp!2411832 () Bool)

(assert (=> b!8046063 (= e!4740176 (and tp!2411831 tp!2411832))))

(assert (= (and b!8045893 ((_ is ElementMatch!21827) (regOne!44167 (regex!8756 (h!81764 rules!4030))))) b!8046060))

(assert (= (and b!8045893 ((_ is Concat!30904) (regOne!44167 (regex!8756 (h!81764 rules!4030))))) b!8046061))

(assert (= (and b!8045893 ((_ is Star!21827) (regOne!44167 (regex!8756 (h!81764 rules!4030))))) b!8046062))

(assert (= (and b!8045893 ((_ is Union!21827) (regOne!44167 (regex!8756 (h!81764 rules!4030))))) b!8046063))

(declare-fun e!4740178 () Bool)

(assert (=> b!8045893 (= tp!2411765 e!4740178)))

(declare-fun b!8046070 () Bool)

(declare-fun tp!2411840 () Bool)

(assert (=> b!8046070 (= e!4740178 tp!2411840)))

(declare-fun b!8046069 () Bool)

(declare-fun tp!2411838 () Bool)

(declare-fun tp!2411839 () Bool)

(assert (=> b!8046069 (= e!4740178 (and tp!2411838 tp!2411839))))

(declare-fun b!8046068 () Bool)

(assert (=> b!8046068 (= e!4740178 tp_is_empty!54625)))

(declare-fun b!8046071 () Bool)

(declare-fun tp!2411841 () Bool)

(declare-fun tp!2411842 () Bool)

(assert (=> b!8046071 (= e!4740178 (and tp!2411841 tp!2411842))))

(assert (= (and b!8045893 ((_ is ElementMatch!21827) (regTwo!44167 (regex!8756 (h!81764 rules!4030))))) b!8046068))

(assert (= (and b!8045893 ((_ is Concat!30904) (regTwo!44167 (regex!8756 (h!81764 rules!4030))))) b!8046069))

(assert (= (and b!8045893 ((_ is Star!21827) (regTwo!44167 (regex!8756 (h!81764 rules!4030))))) b!8046070))

(assert (= (and b!8045893 ((_ is Union!21827) (regTwo!44167 (regex!8756 (h!81764 rules!4030))))) b!8046071))

(declare-fun e!4740180 () Bool)

(assert (=> b!8045921 (= tp!2411795 e!4740180)))

(declare-fun b!8046078 () Bool)

(declare-fun tp!2411850 () Bool)

(assert (=> b!8046078 (= e!4740180 tp!2411850)))

(declare-fun b!8046077 () Bool)

(declare-fun tp!2411848 () Bool)

(declare-fun tp!2411849 () Bool)

(assert (=> b!8046077 (= e!4740180 (and tp!2411848 tp!2411849))))

(declare-fun b!8046076 () Bool)

(assert (=> b!8046076 (= e!4740180 tp_is_empty!54625)))

(declare-fun b!8046079 () Bool)

(declare-fun tp!2411851 () Bool)

(declare-fun tp!2411852 () Bool)

(assert (=> b!8046079 (= e!4740180 (and tp!2411851 tp!2411852))))

(assert (= (and b!8045921 ((_ is ElementMatch!21827) (regOne!44166 (regex!8756 r!4387)))) b!8046076))

(assert (= (and b!8045921 ((_ is Concat!30904) (regOne!44166 (regex!8756 r!4387)))) b!8046077))

(assert (= (and b!8045921 ((_ is Star!21827) (regOne!44166 (regex!8756 r!4387)))) b!8046078))

(assert (= (and b!8045921 ((_ is Union!21827) (regOne!44166 (regex!8756 r!4387)))) b!8046079))

(declare-fun e!4740182 () Bool)

(assert (=> b!8045921 (= tp!2411796 e!4740182)))

(declare-fun b!8046086 () Bool)

(declare-fun tp!2411860 () Bool)

(assert (=> b!8046086 (= e!4740182 tp!2411860)))

(declare-fun b!8046085 () Bool)

(declare-fun tp!2411858 () Bool)

(declare-fun tp!2411859 () Bool)

(assert (=> b!8046085 (= e!4740182 (and tp!2411858 tp!2411859))))

(declare-fun b!8046084 () Bool)

(assert (=> b!8046084 (= e!4740182 tp_is_empty!54625)))

(declare-fun b!8046087 () Bool)

(declare-fun tp!2411861 () Bool)

(declare-fun tp!2411862 () Bool)

(assert (=> b!8046087 (= e!4740182 (and tp!2411861 tp!2411862))))

(assert (= (and b!8045921 ((_ is ElementMatch!21827) (regTwo!44166 (regex!8756 r!4387)))) b!8046084))

(assert (= (and b!8045921 ((_ is Concat!30904) (regTwo!44166 (regex!8756 r!4387)))) b!8046085))

(assert (= (and b!8045921 ((_ is Star!21827) (regTwo!44166 (regex!8756 r!4387)))) b!8046086))

(assert (= (and b!8045921 ((_ is Union!21827) (regTwo!44166 (regex!8756 r!4387)))) b!8046087))

(declare-fun e!4740184 () Bool)

(assert (=> b!8045892 (= tp!2411763 e!4740184)))

(declare-fun b!8046094 () Bool)

(declare-fun tp!2411870 () Bool)

(assert (=> b!8046094 (= e!4740184 tp!2411870)))

(declare-fun b!8046093 () Bool)

(declare-fun tp!2411868 () Bool)

(declare-fun tp!2411869 () Bool)

(assert (=> b!8046093 (= e!4740184 (and tp!2411868 tp!2411869))))

(declare-fun b!8046092 () Bool)

(assert (=> b!8046092 (= e!4740184 tp_is_empty!54625)))

(declare-fun b!8046095 () Bool)

(declare-fun tp!2411871 () Bool)

(declare-fun tp!2411872 () Bool)

(assert (=> b!8046095 (= e!4740184 (and tp!2411871 tp!2411872))))

(assert (= (and b!8045892 ((_ is ElementMatch!21827) (reg!22156 (regex!8756 (h!81764 rules!4030))))) b!8046092))

(assert (= (and b!8045892 ((_ is Concat!30904) (reg!22156 (regex!8756 (h!81764 rules!4030))))) b!8046093))

(assert (= (and b!8045892 ((_ is Star!21827) (reg!22156 (regex!8756 (h!81764 rules!4030))))) b!8046094))

(assert (= (and b!8045892 ((_ is Union!21827) (reg!22156 (regex!8756 (h!81764 rules!4030))))) b!8046095))

(declare-fun e!4740186 () Bool)

(assert (=> b!8045891 (= tp!2411761 e!4740186)))

(declare-fun b!8046102 () Bool)

(declare-fun tp!2411880 () Bool)

(assert (=> b!8046102 (= e!4740186 tp!2411880)))

(declare-fun b!8046101 () Bool)

(declare-fun tp!2411878 () Bool)

(declare-fun tp!2411879 () Bool)

(assert (=> b!8046101 (= e!4740186 (and tp!2411878 tp!2411879))))

(declare-fun b!8046100 () Bool)

(assert (=> b!8046100 (= e!4740186 tp_is_empty!54625)))

(declare-fun b!8046103 () Bool)

(declare-fun tp!2411881 () Bool)

(declare-fun tp!2411882 () Bool)

(assert (=> b!8046103 (= e!4740186 (and tp!2411881 tp!2411882))))

(assert (= (and b!8045891 ((_ is ElementMatch!21827) (regOne!44166 (regex!8756 (h!81764 rules!4030))))) b!8046100))

(assert (= (and b!8045891 ((_ is Concat!30904) (regOne!44166 (regex!8756 (h!81764 rules!4030))))) b!8046101))

(assert (= (and b!8045891 ((_ is Star!21827) (regOne!44166 (regex!8756 (h!81764 rules!4030))))) b!8046102))

(assert (= (and b!8045891 ((_ is Union!21827) (regOne!44166 (regex!8756 (h!81764 rules!4030))))) b!8046103))

(declare-fun e!4740188 () Bool)

(assert (=> b!8045891 (= tp!2411762 e!4740188)))

(declare-fun b!8046110 () Bool)

(declare-fun tp!2411890 () Bool)

(assert (=> b!8046110 (= e!4740188 tp!2411890)))

(declare-fun b!8046109 () Bool)

(declare-fun tp!2411888 () Bool)

(declare-fun tp!2411889 () Bool)

(assert (=> b!8046109 (= e!4740188 (and tp!2411888 tp!2411889))))

(declare-fun b!8046108 () Bool)

(assert (=> b!8046108 (= e!4740188 tp_is_empty!54625)))

(declare-fun b!8046111 () Bool)

(declare-fun tp!2411891 () Bool)

(declare-fun tp!2411892 () Bool)

(assert (=> b!8046111 (= e!4740188 (and tp!2411891 tp!2411892))))

(assert (= (and b!8045891 ((_ is ElementMatch!21827) (regTwo!44166 (regex!8756 (h!81764 rules!4030))))) b!8046108))

(assert (= (and b!8045891 ((_ is Concat!30904) (regTwo!44166 (regex!8756 (h!81764 rules!4030))))) b!8046109))

(assert (= (and b!8045891 ((_ is Star!21827) (regTwo!44166 (regex!8756 (h!81764 rules!4030))))) b!8046110))

(assert (= (and b!8045891 ((_ is Union!21827) (regTwo!44166 (regex!8756 (h!81764 rules!4030))))) b!8046111))

(declare-fun e!4740190 () Bool)

(assert (=> b!8045923 (= tp!2411798 e!4740190)))

(declare-fun b!8046118 () Bool)

(declare-fun tp!2411900 () Bool)

(assert (=> b!8046118 (= e!4740190 tp!2411900)))

(declare-fun b!8046117 () Bool)

(declare-fun tp!2411898 () Bool)

(declare-fun tp!2411899 () Bool)

(assert (=> b!8046117 (= e!4740190 (and tp!2411898 tp!2411899))))

(declare-fun b!8046116 () Bool)

(assert (=> b!8046116 (= e!4740190 tp_is_empty!54625)))

(declare-fun b!8046119 () Bool)

(declare-fun tp!2411901 () Bool)

(declare-fun tp!2411902 () Bool)

(assert (=> b!8046119 (= e!4740190 (and tp!2411901 tp!2411902))))

(assert (= (and b!8045923 ((_ is ElementMatch!21827) (regOne!44167 (regex!8756 r!4387)))) b!8046116))

(assert (= (and b!8045923 ((_ is Concat!30904) (regOne!44167 (regex!8756 r!4387)))) b!8046117))

(assert (= (and b!8045923 ((_ is Star!21827) (regOne!44167 (regex!8756 r!4387)))) b!8046118))

(assert (= (and b!8045923 ((_ is Union!21827) (regOne!44167 (regex!8756 r!4387)))) b!8046119))

(declare-fun e!4740192 () Bool)

(assert (=> b!8045923 (= tp!2411799 e!4740192)))

(declare-fun b!8046126 () Bool)

(declare-fun tp!2411910 () Bool)

(assert (=> b!8046126 (= e!4740192 tp!2411910)))

(declare-fun b!8046125 () Bool)

(declare-fun tp!2411908 () Bool)

(declare-fun tp!2411909 () Bool)

(assert (=> b!8046125 (= e!4740192 (and tp!2411908 tp!2411909))))

(declare-fun b!8046124 () Bool)

(assert (=> b!8046124 (= e!4740192 tp_is_empty!54625)))

(declare-fun b!8046127 () Bool)

(declare-fun tp!2411911 () Bool)

(declare-fun tp!2411912 () Bool)

(assert (=> b!8046127 (= e!4740192 (and tp!2411911 tp!2411912))))

(assert (= (and b!8045923 ((_ is ElementMatch!21827) (regTwo!44167 (regex!8756 r!4387)))) b!8046124))

(assert (= (and b!8045923 ((_ is Concat!30904) (regTwo!44167 (regex!8756 r!4387)))) b!8046125))

(assert (= (and b!8045923 ((_ is Star!21827) (regTwo!44167 (regex!8756 r!4387)))) b!8046126))

(assert (= (and b!8045923 ((_ is Union!21827) (regTwo!44167 (regex!8756 r!4387)))) b!8046127))

(declare-fun e!4740193 () Bool)

(assert (=> b!8045918 (= tp!2411793 e!4740193)))

(declare-fun b!8046130 () Bool)

(declare-fun tp!2411915 () Bool)

(assert (=> b!8046130 (= e!4740193 tp!2411915)))

(declare-fun b!8046129 () Bool)

(declare-fun tp!2411913 () Bool)

(declare-fun tp!2411914 () Bool)

(assert (=> b!8046129 (= e!4740193 (and tp!2411913 tp!2411914))))

(declare-fun b!8046128 () Bool)

(assert (=> b!8046128 (= e!4740193 tp_is_empty!54625)))

(declare-fun b!8046131 () Bool)

(declare-fun tp!2411916 () Bool)

(declare-fun tp!2411917 () Bool)

(assert (=> b!8046131 (= e!4740193 (and tp!2411916 tp!2411917))))

(assert (= (and b!8045918 ((_ is ElementMatch!21827) (regex!8756 (h!81764 (t!391212 rules!4030))))) b!8046128))

(assert (= (and b!8045918 ((_ is Concat!30904) (regex!8756 (h!81764 (t!391212 rules!4030))))) b!8046129))

(assert (= (and b!8045918 ((_ is Star!21827) (regex!8756 (h!81764 (t!391212 rules!4030))))) b!8046130))

(assert (= (and b!8045918 ((_ is Union!21827) (regex!8756 (h!81764 (t!391212 rules!4030))))) b!8046131))

(declare-fun b_lambda!290331 () Bool)

(assert (= b_lambda!290319 (or d!2396448 b_lambda!290331)))

(declare-fun bs!1971741 () Bool)

(declare-fun d!2396550 () Bool)

(assert (= bs!1971741 (and d!2396550 d!2396448)))

(assert (=> bs!1971741 (= (dynLambda!30259 lambda!472745 (h!81764 lt!2722724)) (ruleValid!3996 thiss!26855 (h!81764 lt!2722724)))))

(assert (=> bs!1971741 m!8398234))

(assert (=> b!8045962 d!2396550))

(declare-fun b_lambda!290333 () Bool)

(assert (= b_lambda!290323 (or d!2396426 b_lambda!290333)))

(declare-fun bs!1971742 () Bool)

(declare-fun d!2396552 () Bool)

(assert (= bs!1971742 (and d!2396552 d!2396426)))

(assert (=> bs!1971742 (= (dynLambda!30259 lambda!472744 (h!81764 rules!4030)) (ruleValid!3996 thiss!26855 (h!81764 rules!4030)))))

(assert (=> bs!1971742 m!8398226))

(assert (=> b!8045998 d!2396552))

(check-sat (not b!8046087) (not d!2396466) (not b!8046117) (not d!2396524) (not d!2396512) (not b!8046111) b_and!354831 (not b!8046062) (not b!8045935) (not b!8046086) (not b!8045981) (not b!8046053) (not d!2396538) (not b!8046093) (not b!8046119) (not d!2396472) (not b!8046024) (not d!2396464) (not b!8046126) b_and!354817 (not b_lambda!290331) (not b!8046131) (not b!8045999) tp_is_empty!54625 (not b_next!137179) (not b!8045995) (not b!8045968) (not d!2396544) (not bs!1971742) (not b!8046103) (not d!2396530) (not b!8045970) b_and!354821 (not b!8046118) (not d!2396486) (not b!8046125) (not b!8046109) (not b!8045971) (not b!8046034) (not b!8046102) (not b!8046095) (not b!8045994) (not bs!1971741) (not b!8045963) (not b!8046101) (not b!8046055) (not b_next!137185) (not b!8046025) (not b!8046079) (not d!2396506) (not d!2396508) (not b!8046061) (not b!8045957) (not d!2396494) (not b_next!137183) (not b_next!137187) (not b!8045956) (not b!8046078) (not b!8046085) (not b!8046047) (not b!8045926) (not b!8045927) (not b_next!137171) (not b!8046069) (not d!2396518) (not b!8046130) (not b_next!137169) (not b!8046063) (not b!8046046) b_and!354815 (not b!8046041) (not b!8046071) (not b_lambda!290333) (not b!8046094) (not d!2396498) b_and!354829 (not b!8046077) b_and!354819 (not b!8046008) (not b_next!137175) (not b!8046110) b_and!354833 (not b!8046129) (not b!8046054) (not d!2396490) b_and!354827 (not b_next!137173) (not b!8045969) (not b!8046070) (not b!8046127) (not b!8045977))
(check-sat b_and!354831 b_and!354817 (not b_next!137179) b_and!354821 (not b_next!137185) (not b_next!137183) (not b_next!137187) (not b_next!137171) (not b_next!137169) b_and!354815 b_and!354829 b_and!354819 (not b_next!137175) b_and!354833 b_and!354827 (not b_next!137173))
