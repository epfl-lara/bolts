; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757234 () Bool)

(assert start!757234)

(declare-fun b!8042797 () Bool)

(declare-fun b_free!135899 () Bool)

(declare-fun b_next!136689 () Bool)

(assert (=> b!8042797 (= b_free!135899 (not b_next!136689))))

(declare-fun tp!2409954 () Bool)

(declare-fun b_and!354335 () Bool)

(assert (=> b!8042797 (= tp!2409954 b_and!354335)))

(declare-fun b_free!135901 () Bool)

(declare-fun b_next!136691 () Bool)

(assert (=> b!8042797 (= b_free!135901 (not b_next!136691))))

(declare-fun tp!2409959 () Bool)

(declare-fun b_and!354337 () Bool)

(assert (=> b!8042797 (= tp!2409959 b_and!354337)))

(declare-fun b!8042801 () Bool)

(declare-fun b_free!135903 () Bool)

(declare-fun b_next!136693 () Bool)

(assert (=> b!8042801 (= b_free!135903 (not b_next!136693))))

(declare-fun tp!2409951 () Bool)

(declare-fun b_and!354339 () Bool)

(assert (=> b!8042801 (= tp!2409951 b_and!354339)))

(declare-fun b_free!135905 () Bool)

(declare-fun b_next!136695 () Bool)

(assert (=> b!8042801 (= b_free!135905 (not b_next!136695))))

(declare-fun tp!2409955 () Bool)

(declare-fun b_and!354341 () Bool)

(assert (=> b!8042801 (= tp!2409955 b_and!354341)))

(declare-fun b!8042795 () Bool)

(declare-fun b_free!135907 () Bool)

(declare-fun b_next!136697 () Bool)

(assert (=> b!8042795 (= b_free!135907 (not b_next!136697))))

(declare-fun tp!2409958 () Bool)

(declare-fun b_and!354343 () Bool)

(assert (=> b!8042795 (= tp!2409958 b_and!354343)))

(declare-fun b_free!135909 () Bool)

(declare-fun b_next!136699 () Bool)

(assert (=> b!8042795 (= b_free!135909 (not b_next!136699))))

(declare-fun tp!2409950 () Bool)

(declare-fun b_and!354345 () Bool)

(assert (=> b!8042795 (= tp!2409950 b_and!354345)))

(declare-fun b!8042809 () Bool)

(declare-fun e!4737707 () Bool)

(assert (=> b!8042809 (= e!4737707 true)))

(declare-fun b!8042808 () Bool)

(declare-fun e!4737706 () Bool)

(assert (=> b!8042808 (= e!4737706 e!4737707)))

(declare-fun b!8042799 () Bool)

(assert (=> b!8042799 e!4737706))

(assert (= b!8042808 b!8042809))

(assert (= b!8042799 b!8042808))

(declare-fun lambda!472682 () Int)

(declare-fun order!30019 () Int)

(declare-datatypes ((C!43910 0))(
  ( (C!43911 (val!32731 Int)) )
))
(declare-datatypes ((List!75289 0))(
  ( (Nil!75163) (Cons!75163 (h!81611 C!43910) (t!391059 List!75289)) )
))
(declare-datatypes ((IArray!32027 0))(
  ( (IArray!32028 (innerList!16071 List!75289)) )
))
(declare-datatypes ((Conc!15983 0))(
  ( (Node!15983 (left!57296 Conc!15983) (right!57626 Conc!15983) (csize!32196 Int) (cheight!16194 Int)) (Leaf!30651 (xs!19381 IArray!32027) (csize!32197 Int)) (Empty!15983) )
))
(declare-datatypes ((String!84950 0))(
  ( (String!84951 (value!291430 String)) )
))
(declare-datatypes ((List!75290 0))(
  ( (Nil!75164) (Cons!75164 (h!81612 (_ BitVec 16)) (t!391060 List!75290)) )
))
(declare-datatypes ((Regex!21786 0))(
  ( (ElementMatch!21786 (c!1475165 C!43910)) (Concat!30821 (regOne!44084 Regex!21786) (regTwo!44084 Regex!21786)) (EmptyExpr!21786) (Star!21786 (reg!22115 Regex!21786)) (EmptyLang!21786) (Union!21786 (regOne!44085 Regex!21786) (regTwo!44085 Regex!21786)) )
))
(declare-datatypes ((TokenValue!9035 0))(
  ( (FloatLiteralValue!18070 (text!63690 List!75290)) (TokenValueExt!9034 (__x!35351 Int)) (Broken!45175 (value!291431 List!75290)) (Object!9160) (End!9035) (Def!9035) (Underscore!9035) (Match!9035) (Else!9035) (Error!9035) (Case!9035) (If!9035) (Extends!9035) (Abstract!9035) (Class!9035) (Val!9035) (DelimiterValue!18070 (del!9095 List!75290)) (KeywordValue!9041 (value!291432 List!75290)) (CommentValue!18070 (value!291433 List!75290)) (WhitespaceValue!18070 (value!291434 List!75290)) (IndentationValue!9035 (value!291435 List!75290)) (String!84952) (Int32!9035) (Broken!45176 (value!291436 List!75290)) (Boolean!9036) (Unit!171050) (OperatorValue!9038 (op!9095 List!75290)) (IdentifierValue!18070 (value!291437 List!75290)) (IdentifierValue!18071 (value!291438 List!75290)) (WhitespaceValue!18071 (value!291439 List!75290)) (True!18070) (False!18070) (Broken!45177 (value!291440 List!75290)) (Broken!45178 (value!291441 List!75290)) (True!18071) (RightBrace!9035) (RightBracket!9035) (Colon!9035) (Null!9035) (Comma!9035) (LeftBracket!9035) (False!18071) (LeftBrace!9035) (ImaginaryLiteralValue!9035 (text!63691 List!75290)) (StringLiteralValue!27105 (value!291442 List!75290)) (EOFValue!9035 (value!291443 List!75290)) (IdentValue!9035 (value!291444 List!75290)) (DelimiterValue!18071 (value!291445 List!75290)) (DedentValue!9035 (value!291446 List!75290)) (NewLineValue!9035 (value!291447 List!75290)) (IntegerValue!27105 (value!291448 (_ BitVec 32)) (text!63692 List!75290)) (IntegerValue!27106 (value!291449 Int) (text!63693 List!75290)) (Times!9035) (Or!9035) (Equal!9035) (Minus!9035) (Broken!45179 (value!291450 List!75290)) (And!9035) (Div!9035) (LessEqual!9035) (Mod!9035) (Concat!30822) (Not!9035) (Plus!9035) (SpaceValue!9035 (value!291451 List!75290)) (IntegerValue!27107 (value!291452 Int) (text!63694 List!75290)) (StringLiteralValue!27106 (text!63695 List!75290)) (FloatLiteralValue!18071 (text!63696 List!75290)) (BytesLiteralValue!9035 (value!291453 List!75290)) (CommentValue!18071 (value!291454 List!75290)) (StringLiteralValue!27107 (value!291455 List!75290)) (ErrorTokenValue!9035 (msg!9096 List!75290)) )
))
(declare-datatypes ((BalanceConc!30922 0))(
  ( (BalanceConc!30923 (c!1475166 Conc!15983)) )
))
(declare-datatypes ((TokenValueInjection!17378 0))(
  ( (TokenValueInjection!17379 (toValue!11790 Int) (toChars!11649 Int)) )
))
(declare-datatypes ((Rule!17230 0))(
  ( (Rule!17231 (regex!8715 Regex!21786) (tag!9579 String!84950) (isSeparator!8715 Bool) (transformation!8715 TokenValueInjection!17378)) )
))
(declare-fun rNSep!153 () Rule!17230)

(declare-fun order!30021 () Int)

(declare-fun dynLambda!30236 (Int Int) Int)

(declare-fun dynLambda!30237 (Int Int) Int)

(assert (=> b!8042809 (< (dynLambda!30236 order!30019 (toValue!11790 (transformation!8715 rNSep!153))) (dynLambda!30237 order!30021 lambda!472682))))

(declare-fun order!30023 () Int)

(declare-fun dynLambda!30238 (Int Int) Int)

(assert (=> b!8042809 (< (dynLambda!30238 order!30023 (toChars!11649 (transformation!8715 rNSep!153))) (dynLambda!30237 order!30021 lambda!472682))))

(declare-fun b!8042788 () Bool)

(declare-fun e!4737693 () Bool)

(declare-fun e!4737700 () Bool)

(declare-fun tp!2409952 () Bool)

(assert (=> b!8042788 (= e!4737693 (and e!4737700 tp!2409952))))

(declare-fun b!8042789 () Bool)

(declare-fun res!3179231 () Bool)

(declare-fun e!4737701 () Bool)

(assert (=> b!8042789 (=> (not res!3179231) (not e!4737701))))

(declare-datatypes ((List!75291 0))(
  ( (Nil!75165) (Cons!75165 (h!81613 Rule!17230) (t!391061 List!75291)) )
))
(declare-fun rules!4166 () List!75291)

(declare-fun rSep!153 () Rule!17230)

(assert (=> b!8042789 (= res!3179231 (and (is-Cons!75165 rules!4166) (= (h!81613 rules!4166) rSep!153)))))

(declare-fun b!8042790 () Bool)

(declare-fun res!3179230 () Bool)

(declare-fun e!4737696 () Bool)

(assert (=> b!8042790 (=> (not res!3179230) (not e!4737696))))

(declare-datatypes ((LexerInterface!8305 0))(
  ( (LexerInterfaceExt!8302 (__x!35352 Int)) (Lexer!8303) )
))
(declare-fun thiss!27104 () LexerInterface!8305)

(declare-fun rulesInvariant!6773 (LexerInterface!8305 List!75291) Bool)

(assert (=> b!8042790 (= res!3179230 (rulesInvariant!6773 thiss!27104 rules!4166))))

(declare-fun b!8042791 () Bool)

(declare-fun res!3179233 () Bool)

(assert (=> b!8042791 (=> (not res!3179233) (not e!4737701))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!989 (Rule!17230 List!75291) Bool)

(assert (=> b!8042791 (= res!3179233 (ruleDisjointCharsFromAllFromOtherType!989 rNSep!153 rules!4166))))

(declare-fun tp!2409953 () Bool)

(declare-fun b!8042792 () Bool)

(declare-fun e!4737691 () Bool)

(declare-fun e!4737698 () Bool)

(declare-fun inv!96955 (String!84950) Bool)

(declare-fun inv!96958 (TokenValueInjection!17378) Bool)

(assert (=> b!8042792 (= e!4737691 (and tp!2409953 (inv!96955 (tag!9579 rSep!153)) (inv!96958 (transformation!8715 rSep!153)) e!4737698))))

(declare-fun b!8042793 () Bool)

(assert (=> b!8042793 (= e!4737696 e!4737701)))

(declare-fun res!3179234 () Bool)

(assert (=> b!8042793 (=> (not res!3179234) (not e!4737701))))

(declare-fun lt!2722401 () List!75289)

(declare-fun c!6885 () C!43910)

(declare-fun contains!21015 (List!75289 C!43910) Bool)

(assert (=> b!8042793 (= res!3179234 (contains!21015 lt!2722401 c!6885))))

(declare-fun usedCharacters!1293 (Regex!21786) List!75289)

(assert (=> b!8042793 (= lt!2722401 (usedCharacters!1293 (regex!8715 rSep!153)))))

(declare-fun b!8042794 () Bool)

(declare-fun res!3179229 () Bool)

(assert (=> b!8042794 (=> (not res!3179229) (not e!4737696))))

(declare-fun contains!21016 (List!75291 Rule!17230) Bool)

(assert (=> b!8042794 (= res!3179229 (contains!21016 rules!4166 rSep!153))))

(declare-fun e!4737694 () Bool)

(assert (=> b!8042795 (= e!4737694 (and tp!2409958 tp!2409950))))

(assert (=> b!8042797 (= e!4737698 (and tp!2409954 tp!2409959))))

(declare-fun b!8042798 () Bool)

(declare-fun tp!2409957 () Bool)

(declare-fun e!4737690 () Bool)

(assert (=> b!8042798 (= e!4737690 (and tp!2409957 (inv!96955 (tag!9579 rNSep!153)) (inv!96958 (transformation!8715 rNSep!153)) e!4737694))))

(assert (=> b!8042799 (= e!4737701 (contains!21015 (usedCharacters!1293 (regex!8715 rNSep!153)) c!6885))))

(declare-datatypes ((Unit!171051 0))(
  ( (Unit!171052) )
))
(declare-fun lt!2722402 () Unit!171051)

(declare-fun forallContained!4634 (List!75289 Int C!43910) Unit!171051)

(assert (=> b!8042799 (= lt!2722402 (forallContained!4634 lt!2722401 lambda!472682 c!6885))))

(declare-fun b!8042800 () Bool)

(declare-fun res!3179228 () Bool)

(assert (=> b!8042800 (=> (not res!3179228) (not e!4737701))))

(assert (=> b!8042800 (= res!3179228 (and (not (isSeparator!8715 rNSep!153)) (isSeparator!8715 rSep!153)))))

(declare-fun e!4737692 () Bool)

(assert (=> b!8042801 (= e!4737692 (and tp!2409951 tp!2409955))))

(declare-fun b!8042796 () Bool)

(declare-fun tp!2409956 () Bool)

(assert (=> b!8042796 (= e!4737700 (and tp!2409956 (inv!96955 (tag!9579 (h!81613 rules!4166))) (inv!96958 (transformation!8715 (h!81613 rules!4166))) e!4737692))))

(declare-fun res!3179232 () Bool)

(assert (=> start!757234 (=> (not res!3179232) (not e!4737696))))

(assert (=> start!757234 (= res!3179232 (is-Lexer!8303 thiss!27104))))

(assert (=> start!757234 e!4737696))

(assert (=> start!757234 e!4737693))

(declare-fun tp_is_empty!54567 () Bool)

(assert (=> start!757234 tp_is_empty!54567))

(assert (=> start!757234 true))

(assert (=> start!757234 e!4737690))

(assert (=> start!757234 e!4737691))

(assert (= (and start!757234 res!3179232) b!8042790))

(assert (= (and b!8042790 res!3179230) b!8042794))

(assert (= (and b!8042794 res!3179229) b!8042793))

(assert (= (and b!8042793 res!3179234) b!8042800))

(assert (= (and b!8042800 res!3179228) b!8042791))

(assert (= (and b!8042791 res!3179233) b!8042789))

(assert (= (and b!8042789 res!3179231) b!8042799))

(assert (= b!8042796 b!8042801))

(assert (= b!8042788 b!8042796))

(assert (= (and start!757234 (is-Cons!75165 rules!4166)) b!8042788))

(assert (= b!8042798 b!8042795))

(assert (= start!757234 b!8042798))

(assert (= b!8042792 b!8042797))

(assert (= start!757234 b!8042792))

(declare-fun m!8396398 () Bool)

(assert (=> b!8042799 m!8396398))

(assert (=> b!8042799 m!8396398))

(declare-fun m!8396400 () Bool)

(assert (=> b!8042799 m!8396400))

(declare-fun m!8396402 () Bool)

(assert (=> b!8042799 m!8396402))

(declare-fun m!8396404 () Bool)

(assert (=> b!8042794 m!8396404))

(declare-fun m!8396406 () Bool)

(assert (=> b!8042790 m!8396406))

(declare-fun m!8396408 () Bool)

(assert (=> b!8042798 m!8396408))

(declare-fun m!8396410 () Bool)

(assert (=> b!8042798 m!8396410))

(declare-fun m!8396412 () Bool)

(assert (=> b!8042791 m!8396412))

(declare-fun m!8396414 () Bool)

(assert (=> b!8042793 m!8396414))

(declare-fun m!8396416 () Bool)

(assert (=> b!8042793 m!8396416))

(declare-fun m!8396418 () Bool)

(assert (=> b!8042792 m!8396418))

(declare-fun m!8396420 () Bool)

(assert (=> b!8042792 m!8396420))

(declare-fun m!8396422 () Bool)

(assert (=> b!8042796 m!8396422))

(declare-fun m!8396424 () Bool)

(assert (=> b!8042796 m!8396424))

(push 1)

(assert b_and!354343)

(assert (not b!8042799))

(assert (not b!8042793))

(assert b_and!354339)

(assert b_and!354335)

(assert (not b_next!136691))

(assert (not b!8042792))

(assert (not b_next!136697))

(assert (not b!8042794))

(assert b_and!354337)

(assert (not b_next!136699))

(assert (not b!8042790))

(assert tp_is_empty!54567)

(assert b_and!354345)

(assert (not b!8042798))

(assert (not b_next!136693))

(assert (not b!8042796))

(assert (not b_next!136695))

(assert (not b!8042791))

(assert b_and!354341)

(assert (not b_next!136689))

(assert (not b!8042788))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354343)

(assert b_and!354339)

(assert b_and!354335)

(assert (not b_next!136691))

(assert (not b_next!136697))

(assert b_and!354345)

(assert (not b_next!136693))

(assert b_and!354337)

(assert (not b_next!136699))

(assert (not b_next!136689))

(assert (not b_next!136695))

(assert b_and!354341)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2395938 () Bool)

(assert (=> d!2395938 (= (inv!96955 (tag!9579 rNSep!153)) (= (mod (str.len (value!291430 (tag!9579 rNSep!153))) 2) 0))))

(assert (=> b!8042798 d!2395938))

(declare-fun d!2395940 () Bool)

(declare-fun res!3179261 () Bool)

(declare-fun e!4737752 () Bool)

(assert (=> d!2395940 (=> (not res!3179261) (not e!4737752))))

(declare-fun semiInverseModEq!3870 (Int Int) Bool)

(assert (=> d!2395940 (= res!3179261 (semiInverseModEq!3870 (toChars!11649 (transformation!8715 rNSep!153)) (toValue!11790 (transformation!8715 rNSep!153))))))

(assert (=> d!2395940 (= (inv!96958 (transformation!8715 rNSep!153)) e!4737752)))

(declare-fun b!8042862 () Bool)

(declare-fun equivClasses!3685 (Int Int) Bool)

(assert (=> b!8042862 (= e!4737752 (equivClasses!3685 (toChars!11649 (transformation!8715 rNSep!153)) (toValue!11790 (transformation!8715 rNSep!153))))))

(assert (= (and d!2395940 res!3179261) b!8042862))

(declare-fun m!8396454 () Bool)

(assert (=> d!2395940 m!8396454))

(declare-fun m!8396456 () Bool)

(assert (=> b!8042862 m!8396456))

(assert (=> b!8042798 d!2395940))

(declare-fun d!2395942 () Bool)

(declare-fun lt!2722411 () Bool)

(declare-fun content!16052 (List!75289) (Set C!43910))

(assert (=> d!2395942 (= lt!2722411 (set.member c!6885 (content!16052 lt!2722401)))))

(declare-fun e!4737757 () Bool)

(assert (=> d!2395942 (= lt!2722411 e!4737757)))

(declare-fun res!3179266 () Bool)

(assert (=> d!2395942 (=> (not res!3179266) (not e!4737757))))

(assert (=> d!2395942 (= res!3179266 (is-Cons!75163 lt!2722401))))

(assert (=> d!2395942 (= (contains!21015 lt!2722401 c!6885) lt!2722411)))

(declare-fun b!8042867 () Bool)

(declare-fun e!4737758 () Bool)

(assert (=> b!8042867 (= e!4737757 e!4737758)))

(declare-fun res!3179267 () Bool)

(assert (=> b!8042867 (=> res!3179267 e!4737758)))

(assert (=> b!8042867 (= res!3179267 (= (h!81611 lt!2722401) c!6885))))

(declare-fun b!8042868 () Bool)

(assert (=> b!8042868 (= e!4737758 (contains!21015 (t!391059 lt!2722401) c!6885))))

(assert (= (and d!2395942 res!3179266) b!8042867))

(assert (= (and b!8042867 (not res!3179267)) b!8042868))

(declare-fun m!8396458 () Bool)

(assert (=> d!2395942 m!8396458))

(declare-fun m!8396460 () Bool)

(assert (=> d!2395942 m!8396460))

(declare-fun m!8396462 () Bool)

(assert (=> b!8042868 m!8396462))

(assert (=> b!8042793 d!2395942))

(declare-fun d!2395944 () Bool)

(declare-fun c!1475179 () Bool)

(assert (=> d!2395944 (= c!1475179 (or (is-EmptyExpr!21786 (regex!8715 rSep!153)) (is-EmptyLang!21786 (regex!8715 rSep!153))))))

(declare-fun e!4737769 () List!75289)

(assert (=> d!2395944 (= (usedCharacters!1293 (regex!8715 rSep!153)) e!4737769)))

(declare-fun b!8042885 () Bool)

(declare-fun e!4737767 () List!75289)

(declare-fun e!4737770 () List!75289)

(assert (=> b!8042885 (= e!4737767 e!4737770)))

(declare-fun c!1475180 () Bool)

(assert (=> b!8042885 (= c!1475180 (is-Union!21786 (regex!8715 rSep!153)))))

(declare-fun bm!746542 () Bool)

(declare-fun call!746547 () List!75289)

(declare-fun call!746548 () List!75289)

(assert (=> bm!746542 (= call!746547 call!746548)))

(declare-fun c!1475177 () Bool)

(declare-fun bm!746543 () Bool)

(assert (=> bm!746543 (= call!746548 (usedCharacters!1293 (ite c!1475177 (reg!22115 (regex!8715 rSep!153)) (ite c!1475180 (regOne!44085 (regex!8715 rSep!153)) (regTwo!44084 (regex!8715 rSep!153))))))))

(declare-fun bm!746544 () Bool)

(declare-fun call!746550 () List!75289)

(assert (=> bm!746544 (= call!746550 (usedCharacters!1293 (ite c!1475180 (regTwo!44085 (regex!8715 rSep!153)) (regOne!44084 (regex!8715 rSep!153)))))))

(declare-fun b!8042886 () Bool)

(assert (=> b!8042886 (= e!4737767 call!746548)))

(declare-fun b!8042887 () Bool)

(declare-fun call!746549 () List!75289)

(assert (=> b!8042887 (= e!4737770 call!746549)))

(declare-fun b!8042888 () Bool)

(assert (=> b!8042888 (= c!1475177 (is-Star!21786 (regex!8715 rSep!153)))))

(declare-fun e!4737768 () List!75289)

(assert (=> b!8042888 (= e!4737768 e!4737767)))

(declare-fun b!8042889 () Bool)

(assert (=> b!8042889 (= e!4737769 Nil!75163)))

(declare-fun b!8042890 () Bool)

(assert (=> b!8042890 (= e!4737769 e!4737768)))

(declare-fun c!1475178 () Bool)

(assert (=> b!8042890 (= c!1475178 (is-ElementMatch!21786 (regex!8715 rSep!153)))))

(declare-fun bm!746545 () Bool)

(declare-fun ++!18631 (List!75289 List!75289) List!75289)

(assert (=> bm!746545 (= call!746549 (++!18631 (ite c!1475180 call!746547 call!746550) (ite c!1475180 call!746550 call!746547)))))

(declare-fun b!8042891 () Bool)

(assert (=> b!8042891 (= e!4737768 (Cons!75163 (c!1475165 (regex!8715 rSep!153)) Nil!75163))))

(declare-fun b!8042892 () Bool)

(assert (=> b!8042892 (= e!4737770 call!746549)))

(assert (= (and d!2395944 c!1475179) b!8042889))

(assert (= (and d!2395944 (not c!1475179)) b!8042890))

(assert (= (and b!8042890 c!1475178) b!8042891))

(assert (= (and b!8042890 (not c!1475178)) b!8042888))

(assert (= (and b!8042888 c!1475177) b!8042886))

(assert (= (and b!8042888 (not c!1475177)) b!8042885))

(assert (= (and b!8042885 c!1475180) b!8042887))

(assert (= (and b!8042885 (not c!1475180)) b!8042892))

(assert (= (or b!8042887 b!8042892) bm!746542))

(assert (= (or b!8042887 b!8042892) bm!746544))

(assert (= (or b!8042887 b!8042892) bm!746545))

(assert (= (or b!8042886 bm!746542) bm!746543))

(declare-fun m!8396464 () Bool)

(assert (=> bm!746543 m!8396464))

(declare-fun m!8396466 () Bool)

(assert (=> bm!746544 m!8396466))

(declare-fun m!8396468 () Bool)

(assert (=> bm!746545 m!8396468))

(assert (=> b!8042793 d!2395944))

(declare-fun bm!746548 () Bool)

(declare-fun call!746553 () Bool)

(assert (=> bm!746548 (= call!746553 (ruleDisjointCharsFromAllFromOtherType!989 rNSep!153 (t!391061 rules!4166)))))

(declare-fun b!8042901 () Bool)

(declare-fun e!4737777 () Bool)

(declare-fun e!4737778 () Bool)

(assert (=> b!8042901 (= e!4737777 e!4737778)))

(declare-fun res!3179277 () Bool)

(declare-fun rulesUseDisjointChars!394 (Rule!17230 Rule!17230) Bool)

(assert (=> b!8042901 (= res!3179277 (rulesUseDisjointChars!394 rNSep!153 (h!81613 rules!4166)))))

(assert (=> b!8042901 (=> (not res!3179277) (not e!4737778))))

(declare-fun b!8042902 () Bool)

(declare-fun e!4737779 () Bool)

(assert (=> b!8042902 (= e!4737777 e!4737779)))

(declare-fun res!3179276 () Bool)

(assert (=> b!8042902 (= res!3179276 (not (is-Cons!75165 rules!4166)))))

(assert (=> b!8042902 (=> res!3179276 e!4737779)))

(declare-fun d!2395946 () Bool)

(declare-fun c!1475183 () Bool)

(assert (=> d!2395946 (= c!1475183 (and (is-Cons!75165 rules!4166) (not (= (isSeparator!8715 (h!81613 rules!4166)) (isSeparator!8715 rNSep!153)))))))

(assert (=> d!2395946 (= (ruleDisjointCharsFromAllFromOtherType!989 rNSep!153 rules!4166) e!4737777)))

(declare-fun b!8042903 () Bool)

(assert (=> b!8042903 (= e!4737779 call!746553)))

(declare-fun b!8042904 () Bool)

(assert (=> b!8042904 (= e!4737778 call!746553)))

(assert (= (and d!2395946 c!1475183) b!8042901))

(assert (= (and d!2395946 (not c!1475183)) b!8042902))

(assert (= (and b!8042901 res!3179277) b!8042904))

(assert (= (and b!8042902 (not res!3179276)) b!8042903))

(assert (= (or b!8042904 b!8042903) bm!746548))

(declare-fun m!8396470 () Bool)

(assert (=> bm!746548 m!8396470))

(declare-fun m!8396472 () Bool)

(assert (=> b!8042901 m!8396472))

(assert (=> b!8042791 d!2395946))

(declare-fun d!2395948 () Bool)

(assert (=> d!2395948 (= (inv!96955 (tag!9579 rSep!153)) (= (mod (str.len (value!291430 (tag!9579 rSep!153))) 2) 0))))

(assert (=> b!8042792 d!2395948))

(declare-fun d!2395950 () Bool)

(declare-fun res!3179278 () Bool)

(declare-fun e!4737780 () Bool)

(assert (=> d!2395950 (=> (not res!3179278) (not e!4737780))))

(assert (=> d!2395950 (= res!3179278 (semiInverseModEq!3870 (toChars!11649 (transformation!8715 rSep!153)) (toValue!11790 (transformation!8715 rSep!153))))))

(assert (=> d!2395950 (= (inv!96958 (transformation!8715 rSep!153)) e!4737780)))

(declare-fun b!8042905 () Bool)

(assert (=> b!8042905 (= e!4737780 (equivClasses!3685 (toChars!11649 (transformation!8715 rSep!153)) (toValue!11790 (transformation!8715 rSep!153))))))

(assert (= (and d!2395950 res!3179278) b!8042905))

(declare-fun m!8396474 () Bool)

(assert (=> d!2395950 m!8396474))

(declare-fun m!8396476 () Bool)

(assert (=> b!8042905 m!8396476))

(assert (=> b!8042792 d!2395950))

(declare-fun d!2395952 () Bool)

(declare-fun res!3179281 () Bool)

(declare-fun e!4737783 () Bool)

(assert (=> d!2395952 (=> (not res!3179281) (not e!4737783))))

(declare-fun rulesValid!3145 (LexerInterface!8305 List!75291) Bool)

(assert (=> d!2395952 (= res!3179281 (rulesValid!3145 thiss!27104 rules!4166))))

(assert (=> d!2395952 (= (rulesInvariant!6773 thiss!27104 rules!4166) e!4737783)))

(declare-fun b!8042908 () Bool)

(declare-datatypes ((List!75295 0))(
  ( (Nil!75169) (Cons!75169 (h!81617 String!84950) (t!391065 List!75295)) )
))
(declare-fun noDuplicateTag!3306 (LexerInterface!8305 List!75291 List!75295) Bool)

(assert (=> b!8042908 (= e!4737783 (noDuplicateTag!3306 thiss!27104 rules!4166 Nil!75169))))

(assert (= (and d!2395952 res!3179281) b!8042908))

(declare-fun m!8396478 () Bool)

(assert (=> d!2395952 m!8396478))

(declare-fun m!8396480 () Bool)

(assert (=> b!8042908 m!8396480))

(assert (=> b!8042790 d!2395952))

(declare-fun d!2395954 () Bool)

(assert (=> d!2395954 (= (inv!96955 (tag!9579 (h!81613 rules!4166))) (= (mod (str.len (value!291430 (tag!9579 (h!81613 rules!4166)))) 2) 0))))

(assert (=> b!8042796 d!2395954))

(declare-fun d!2395956 () Bool)

(declare-fun res!3179282 () Bool)

(declare-fun e!4737784 () Bool)

(assert (=> d!2395956 (=> (not res!3179282) (not e!4737784))))

(assert (=> d!2395956 (= res!3179282 (semiInverseModEq!3870 (toChars!11649 (transformation!8715 (h!81613 rules!4166))) (toValue!11790 (transformation!8715 (h!81613 rules!4166)))))))

(assert (=> d!2395956 (= (inv!96958 (transformation!8715 (h!81613 rules!4166))) e!4737784)))

(declare-fun b!8042909 () Bool)

(assert (=> b!8042909 (= e!4737784 (equivClasses!3685 (toChars!11649 (transformation!8715 (h!81613 rules!4166))) (toValue!11790 (transformation!8715 (h!81613 rules!4166)))))))

(assert (= (and d!2395956 res!3179282) b!8042909))

(declare-fun m!8396482 () Bool)

(assert (=> d!2395956 m!8396482))

(declare-fun m!8396484 () Bool)

(assert (=> b!8042909 m!8396484))

(assert (=> b!8042796 d!2395956))

(declare-fun d!2395958 () Bool)

(declare-fun lt!2722414 () Bool)

(declare-fun content!16053 (List!75291) (Set Rule!17230))

(assert (=> d!2395958 (= lt!2722414 (set.member rSep!153 (content!16053 rules!4166)))))

(declare-fun e!4737790 () Bool)

(assert (=> d!2395958 (= lt!2722414 e!4737790)))

(declare-fun res!3179287 () Bool)

(assert (=> d!2395958 (=> (not res!3179287) (not e!4737790))))

(assert (=> d!2395958 (= res!3179287 (is-Cons!75165 rules!4166))))

(assert (=> d!2395958 (= (contains!21016 rules!4166 rSep!153) lt!2722414)))

(declare-fun b!8042914 () Bool)

(declare-fun e!4737789 () Bool)

(assert (=> b!8042914 (= e!4737790 e!4737789)))

(declare-fun res!3179288 () Bool)

(assert (=> b!8042914 (=> res!3179288 e!4737789)))

(assert (=> b!8042914 (= res!3179288 (= (h!81613 rules!4166) rSep!153))))

(declare-fun b!8042915 () Bool)

(assert (=> b!8042915 (= e!4737789 (contains!21016 (t!391061 rules!4166) rSep!153))))

(assert (= (and d!2395958 res!3179287) b!8042914))

(assert (= (and b!8042914 (not res!3179288)) b!8042915))

(declare-fun m!8396486 () Bool)

(assert (=> d!2395958 m!8396486))

(declare-fun m!8396488 () Bool)

(assert (=> d!2395958 m!8396488))

(declare-fun m!8396490 () Bool)

(assert (=> b!8042915 m!8396490))

(assert (=> b!8042794 d!2395958))

(declare-fun d!2395960 () Bool)

(declare-fun lt!2722415 () Bool)

(assert (=> d!2395960 (= lt!2722415 (set.member c!6885 (content!16052 (usedCharacters!1293 (regex!8715 rNSep!153)))))))

(declare-fun e!4737791 () Bool)

(assert (=> d!2395960 (= lt!2722415 e!4737791)))

(declare-fun res!3179289 () Bool)

(assert (=> d!2395960 (=> (not res!3179289) (not e!4737791))))

(assert (=> d!2395960 (= res!3179289 (is-Cons!75163 (usedCharacters!1293 (regex!8715 rNSep!153))))))

(assert (=> d!2395960 (= (contains!21015 (usedCharacters!1293 (regex!8715 rNSep!153)) c!6885) lt!2722415)))

(declare-fun b!8042916 () Bool)

(declare-fun e!4737792 () Bool)

(assert (=> b!8042916 (= e!4737791 e!4737792)))

(declare-fun res!3179290 () Bool)

(assert (=> b!8042916 (=> res!3179290 e!4737792)))

(assert (=> b!8042916 (= res!3179290 (= (h!81611 (usedCharacters!1293 (regex!8715 rNSep!153))) c!6885))))

(declare-fun b!8042917 () Bool)

(assert (=> b!8042917 (= e!4737792 (contains!21015 (t!391059 (usedCharacters!1293 (regex!8715 rNSep!153))) c!6885))))

(assert (= (and d!2395960 res!3179289) b!8042916))

(assert (= (and b!8042916 (not res!3179290)) b!8042917))

(assert (=> d!2395960 m!8396398))

(declare-fun m!8396492 () Bool)

(assert (=> d!2395960 m!8396492))

(declare-fun m!8396494 () Bool)

(assert (=> d!2395960 m!8396494))

(declare-fun m!8396496 () Bool)

(assert (=> b!8042917 m!8396496))

(assert (=> b!8042799 d!2395960))

(declare-fun d!2395962 () Bool)

(declare-fun c!1475186 () Bool)

(assert (=> d!2395962 (= c!1475186 (or (is-EmptyExpr!21786 (regex!8715 rNSep!153)) (is-EmptyLang!21786 (regex!8715 rNSep!153))))))

(declare-fun e!4737795 () List!75289)

(assert (=> d!2395962 (= (usedCharacters!1293 (regex!8715 rNSep!153)) e!4737795)))

(declare-fun b!8042918 () Bool)

(declare-fun e!4737793 () List!75289)

(declare-fun e!4737796 () List!75289)

(assert (=> b!8042918 (= e!4737793 e!4737796)))

(declare-fun c!1475187 () Bool)

(assert (=> b!8042918 (= c!1475187 (is-Union!21786 (regex!8715 rNSep!153)))))

(declare-fun bm!746549 () Bool)

(declare-fun call!746554 () List!75289)

(declare-fun call!746555 () List!75289)

(assert (=> bm!746549 (= call!746554 call!746555)))

(declare-fun bm!746550 () Bool)

(declare-fun c!1475184 () Bool)

(assert (=> bm!746550 (= call!746555 (usedCharacters!1293 (ite c!1475184 (reg!22115 (regex!8715 rNSep!153)) (ite c!1475187 (regOne!44085 (regex!8715 rNSep!153)) (regTwo!44084 (regex!8715 rNSep!153))))))))

(declare-fun bm!746551 () Bool)

(declare-fun call!746557 () List!75289)

(assert (=> bm!746551 (= call!746557 (usedCharacters!1293 (ite c!1475187 (regTwo!44085 (regex!8715 rNSep!153)) (regOne!44084 (regex!8715 rNSep!153)))))))

(declare-fun b!8042919 () Bool)

(assert (=> b!8042919 (= e!4737793 call!746555)))

(declare-fun b!8042920 () Bool)

(declare-fun call!746556 () List!75289)

(assert (=> b!8042920 (= e!4737796 call!746556)))

(declare-fun b!8042921 () Bool)

(assert (=> b!8042921 (= c!1475184 (is-Star!21786 (regex!8715 rNSep!153)))))

(declare-fun e!4737794 () List!75289)

(assert (=> b!8042921 (= e!4737794 e!4737793)))

(declare-fun b!8042922 () Bool)

(assert (=> b!8042922 (= e!4737795 Nil!75163)))

(declare-fun b!8042923 () Bool)

(assert (=> b!8042923 (= e!4737795 e!4737794)))

(declare-fun c!1475185 () Bool)

(assert (=> b!8042923 (= c!1475185 (is-ElementMatch!21786 (regex!8715 rNSep!153)))))

(declare-fun bm!746552 () Bool)

(assert (=> bm!746552 (= call!746556 (++!18631 (ite c!1475187 call!746554 call!746557) (ite c!1475187 call!746557 call!746554)))))

(declare-fun b!8042924 () Bool)

(assert (=> b!8042924 (= e!4737794 (Cons!75163 (c!1475165 (regex!8715 rNSep!153)) Nil!75163))))

(declare-fun b!8042925 () Bool)

(assert (=> b!8042925 (= e!4737796 call!746556)))

(assert (= (and d!2395962 c!1475186) b!8042922))

(assert (= (and d!2395962 (not c!1475186)) b!8042923))

(assert (= (and b!8042923 c!1475185) b!8042924))

(assert (= (and b!8042923 (not c!1475185)) b!8042921))

(assert (= (and b!8042921 c!1475184) b!8042919))

(assert (= (and b!8042921 (not c!1475184)) b!8042918))

(assert (= (and b!8042918 c!1475187) b!8042920))

(assert (= (and b!8042918 (not c!1475187)) b!8042925))

(assert (= (or b!8042920 b!8042925) bm!746549))

(assert (= (or b!8042920 b!8042925) bm!746551))

(assert (= (or b!8042920 b!8042925) bm!746552))

(assert (= (or b!8042919 bm!746549) bm!746550))

(declare-fun m!8396498 () Bool)

(assert (=> bm!746550 m!8396498))

(declare-fun m!8396500 () Bool)

(assert (=> bm!746551 m!8396500))

(declare-fun m!8396502 () Bool)

(assert (=> bm!746552 m!8396502))

(assert (=> b!8042799 d!2395962))

(declare-fun d!2395964 () Bool)

(declare-fun dynLambda!30242 (Int C!43910) Bool)

(assert (=> d!2395964 (dynLambda!30242 lambda!472682 c!6885)))

(declare-fun lt!2722418 () Unit!171051)

(declare-fun choose!60477 (List!75289 Int C!43910) Unit!171051)

(assert (=> d!2395964 (= lt!2722418 (choose!60477 lt!2722401 lambda!472682 c!6885))))

(declare-fun e!4737799 () Bool)

(assert (=> d!2395964 e!4737799))

(declare-fun res!3179293 () Bool)

(assert (=> d!2395964 (=> (not res!3179293) (not e!4737799))))

(declare-fun forall!18465 (List!75289 Int) Bool)

(assert (=> d!2395964 (= res!3179293 (forall!18465 lt!2722401 lambda!472682))))

(assert (=> d!2395964 (= (forallContained!4634 lt!2722401 lambda!472682 c!6885) lt!2722418)))

(declare-fun b!8042928 () Bool)

(assert (=> b!8042928 (= e!4737799 (contains!21015 lt!2722401 c!6885))))

(assert (= (and d!2395964 res!3179293) b!8042928))

(declare-fun b_lambda!290303 () Bool)

(assert (=> (not b_lambda!290303) (not d!2395964)))

(declare-fun m!8396504 () Bool)

(assert (=> d!2395964 m!8396504))

(declare-fun m!8396506 () Bool)

(assert (=> d!2395964 m!8396506))

(declare-fun m!8396508 () Bool)

(assert (=> d!2395964 m!8396508))

(assert (=> b!8042928 m!8396414))

(assert (=> b!8042799 d!2395964))

(declare-fun b!8042941 () Bool)

(declare-fun e!4737802 () Bool)

(declare-fun tp!2410002 () Bool)

(assert (=> b!8042941 (= e!4737802 tp!2410002)))

(declare-fun b!8042942 () Bool)

(declare-fun tp!2410001 () Bool)

(declare-fun tp!2410000 () Bool)

(assert (=> b!8042942 (= e!4737802 (and tp!2410001 tp!2410000))))

(declare-fun b!8042939 () Bool)

(assert (=> b!8042939 (= e!4737802 tp_is_empty!54567)))

(declare-fun b!8042940 () Bool)

(declare-fun tp!2410004 () Bool)

(declare-fun tp!2410003 () Bool)

(assert (=> b!8042940 (= e!4737802 (and tp!2410004 tp!2410003))))

(assert (=> b!8042798 (= tp!2409957 e!4737802)))

(assert (= (and b!8042798 (is-ElementMatch!21786 (regex!8715 rNSep!153))) b!8042939))

(assert (= (and b!8042798 (is-Concat!30821 (regex!8715 rNSep!153))) b!8042940))

(assert (= (and b!8042798 (is-Star!21786 (regex!8715 rNSep!153))) b!8042941))

(assert (= (and b!8042798 (is-Union!21786 (regex!8715 rNSep!153))) b!8042942))

(declare-fun b!8042953 () Bool)

(declare-fun b_free!135923 () Bool)

(declare-fun b_next!136713 () Bool)

(assert (=> b!8042953 (= b_free!135923 (not b_next!136713))))

(declare-fun tp!2410016 () Bool)

(declare-fun b_and!354359 () Bool)

(assert (=> b!8042953 (= tp!2410016 b_and!354359)))

(declare-fun b_free!135925 () Bool)

(declare-fun b_next!136715 () Bool)

(assert (=> b!8042953 (= b_free!135925 (not b_next!136715))))

(declare-fun tp!2410015 () Bool)

(declare-fun b_and!354361 () Bool)

(assert (=> b!8042953 (= tp!2410015 b_and!354361)))

(declare-fun e!4737811 () Bool)

(assert (=> b!8042953 (= e!4737811 (and tp!2410016 tp!2410015))))

(declare-fun e!4737813 () Bool)

(declare-fun tp!2410013 () Bool)

(declare-fun b!8042952 () Bool)

(assert (=> b!8042952 (= e!4737813 (and tp!2410013 (inv!96955 (tag!9579 (h!81613 (t!391061 rules!4166)))) (inv!96958 (transformation!8715 (h!81613 (t!391061 rules!4166)))) e!4737811))))

(declare-fun b!8042951 () Bool)

(declare-fun e!4737812 () Bool)

(declare-fun tp!2410014 () Bool)

(assert (=> b!8042951 (= e!4737812 (and e!4737813 tp!2410014))))

(assert (=> b!8042788 (= tp!2409952 e!4737812)))

(assert (= b!8042952 b!8042953))

(assert (= b!8042951 b!8042952))

(assert (= (and b!8042788 (is-Cons!75165 (t!391061 rules!4166))) b!8042951))

(declare-fun m!8396510 () Bool)

(assert (=> b!8042952 m!8396510))

(declare-fun m!8396512 () Bool)

(assert (=> b!8042952 m!8396512))

(declare-fun b!8042956 () Bool)

(declare-fun e!4737815 () Bool)

(declare-fun tp!2410019 () Bool)

(assert (=> b!8042956 (= e!4737815 tp!2410019)))

(declare-fun b!8042957 () Bool)

(declare-fun tp!2410018 () Bool)

(declare-fun tp!2410017 () Bool)

(assert (=> b!8042957 (= e!4737815 (and tp!2410018 tp!2410017))))

(declare-fun b!8042954 () Bool)

(assert (=> b!8042954 (= e!4737815 tp_is_empty!54567)))

(declare-fun b!8042955 () Bool)

(declare-fun tp!2410021 () Bool)

(declare-fun tp!2410020 () Bool)

(assert (=> b!8042955 (= e!4737815 (and tp!2410021 tp!2410020))))

(assert (=> b!8042792 (= tp!2409953 e!4737815)))

(assert (= (and b!8042792 (is-ElementMatch!21786 (regex!8715 rSep!153))) b!8042954))

(assert (= (and b!8042792 (is-Concat!30821 (regex!8715 rSep!153))) b!8042955))

(assert (= (and b!8042792 (is-Star!21786 (regex!8715 rSep!153))) b!8042956))

(assert (= (and b!8042792 (is-Union!21786 (regex!8715 rSep!153))) b!8042957))

(declare-fun b!8042960 () Bool)

(declare-fun e!4737816 () Bool)

(declare-fun tp!2410024 () Bool)

(assert (=> b!8042960 (= e!4737816 tp!2410024)))

(declare-fun b!8042961 () Bool)

(declare-fun tp!2410023 () Bool)

(declare-fun tp!2410022 () Bool)

(assert (=> b!8042961 (= e!4737816 (and tp!2410023 tp!2410022))))

(declare-fun b!8042958 () Bool)

(assert (=> b!8042958 (= e!4737816 tp_is_empty!54567)))

(declare-fun b!8042959 () Bool)

(declare-fun tp!2410026 () Bool)

(declare-fun tp!2410025 () Bool)

(assert (=> b!8042959 (= e!4737816 (and tp!2410026 tp!2410025))))

(assert (=> b!8042796 (= tp!2409956 e!4737816)))

(assert (= (and b!8042796 (is-ElementMatch!21786 (regex!8715 (h!81613 rules!4166)))) b!8042958))

(assert (= (and b!8042796 (is-Concat!30821 (regex!8715 (h!81613 rules!4166)))) b!8042959))

(assert (= (and b!8042796 (is-Star!21786 (regex!8715 (h!81613 rules!4166)))) b!8042960))

(assert (= (and b!8042796 (is-Union!21786 (regex!8715 (h!81613 rules!4166)))) b!8042961))

(declare-fun b_lambda!290305 () Bool)

(assert (= b_lambda!290303 (or b!8042799 b_lambda!290305)))

(declare-fun bs!1971615 () Bool)

(declare-fun d!2395966 () Bool)

(assert (= bs!1971615 (and d!2395966 b!8042799)))

(assert (=> bs!1971615 (= (dynLambda!30242 lambda!472682 c!6885) (not (contains!21015 (usedCharacters!1293 (regex!8715 rNSep!153)) c!6885)))))

(assert (=> bs!1971615 m!8396398))

(assert (=> bs!1971615 m!8396398))

(assert (=> bs!1971615 m!8396400))

(assert (=> d!2395964 d!2395966))

(push 1)

(assert b_and!354343)

(assert (not bm!746550))

(assert (not d!2395952))

(assert (not bm!746545))

(assert (not bm!746543))

(assert (not b!8042909))

(assert b_and!354339)

(assert (not b_next!136713))

(assert (not bm!746548))

(assert (not bm!746544))

(assert b_and!354335)

(assert (not b!8042956))

(assert tp_is_empty!54567)

(assert (not d!2395950))

(assert (not b!8042940))

(assert (not b!8042955))

(assert (not b_next!136691))

(assert (not b!8042941))

(assert (not b!8042917))

(assert b_and!354359)

(assert (not b!8042960))

(assert (not bm!746551))

(assert (not b!8042908))

(assert (not b!8042868))

(assert b_and!354361)

(assert (not b_next!136715))

(assert (not d!2395956))

(assert (not d!2395964))

(assert (not b_next!136697))

(assert (not d!2395958))

(assert b_and!354345)

(assert (not b!8042959))

(assert (not b!8042942))

(assert (not b!8042957))

(assert (not b_next!136693))

(assert (not b!8042951))

(assert (not d!2395940))

(assert (not d!2395960))

(assert b_and!354337)

(assert (not b_next!136699))

(assert (not b!8042905))

(assert (not b!8042952))

(assert (not bs!1971615))

(assert (not b!8042915))

(assert (not b!8042862))

(assert (not b!8042961))

(assert (not b_next!136695))

(assert (not d!2395942))

(assert b_and!354341)

(assert (not bm!746552))

(assert (not b!8042901))

(assert (not b_next!136689))

(assert (not b!8042928))

(assert (not b_lambda!290305))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354343)

(assert b_and!354339)

(assert (not b_next!136691))

(assert b_and!354359)

(assert b_and!354361)

(assert (not b_next!136715))

(assert (not b_next!136697))

(assert b_and!354345)

(assert (not b_next!136693))

(assert b_and!354337)

(assert (not b_next!136699))

(assert (not b_next!136689))

(assert (not b_next!136713))

(assert b_and!354335)

(assert (not b_next!136695))

(assert b_and!354341)

(check-sat)

(pop 1)

