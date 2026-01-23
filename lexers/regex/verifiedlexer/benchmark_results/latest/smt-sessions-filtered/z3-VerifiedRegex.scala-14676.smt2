; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757404 () Bool)

(assert start!757404)

(declare-fun b!8044409 () Bool)

(declare-fun b_free!136159 () Bool)

(declare-fun b_next!136949 () Bool)

(assert (=> b!8044409 (= b_free!136159 (not b_next!136949))))

(declare-fun tp!2410819 () Bool)

(declare-fun b_and!354595 () Bool)

(assert (=> b!8044409 (= tp!2410819 b_and!354595)))

(declare-fun b_free!136161 () Bool)

(declare-fun b_next!136951 () Bool)

(assert (=> b!8044409 (= b_free!136161 (not b_next!136951))))

(declare-fun tp!2410825 () Bool)

(declare-fun b_and!354597 () Bool)

(assert (=> b!8044409 (= tp!2410825 b_and!354597)))

(declare-fun b!8044408 () Bool)

(declare-fun b_free!136163 () Bool)

(declare-fun b_next!136953 () Bool)

(assert (=> b!8044408 (= b_free!136163 (not b_next!136953))))

(declare-fun tp!2410824 () Bool)

(declare-fun b_and!354599 () Bool)

(assert (=> b!8044408 (= tp!2410824 b_and!354599)))

(declare-fun b_free!136165 () Bool)

(declare-fun b_next!136955 () Bool)

(assert (=> b!8044408 (= b_free!136165 (not b_next!136955))))

(declare-fun tp!2410822 () Bool)

(declare-fun b_and!354601 () Bool)

(assert (=> b!8044408 (= tp!2410822 b_and!354601)))

(declare-fun b!8044421 () Bool)

(declare-fun b_free!136167 () Bool)

(declare-fun b_next!136957 () Bool)

(assert (=> b!8044421 (= b_free!136167 (not b_next!136957))))

(declare-fun tp!2410816 () Bool)

(declare-fun b_and!354603 () Bool)

(assert (=> b!8044421 (= tp!2410816 b_and!354603)))

(declare-fun b_free!136169 () Bool)

(declare-fun b_next!136959 () Bool)

(assert (=> b!8044421 (= b_free!136169 (not b_next!136959))))

(declare-fun tp!2410818 () Bool)

(declare-fun b_and!354605 () Bool)

(assert (=> b!8044421 (= tp!2410818 b_and!354605)))

(declare-fun e!4738876 () Bool)

(assert (=> b!8044408 (= e!4738876 (and tp!2410824 tp!2410822))))

(declare-fun e!4738880 () Bool)

(assert (=> b!8044409 (= e!4738880 (and tp!2410819 tp!2410825))))

(declare-fun res!3179927 () Bool)

(declare-fun e!4738877 () Bool)

(assert (=> start!757404 (=> (not res!3179927) (not e!4738877))))

(declare-datatypes ((LexerInterface!8324 0))(
  ( (LexerInterfaceExt!8321 (__x!35389 Int)) (Lexer!8322) )
))
(declare-fun thiss!27104 () LexerInterface!8324)

(get-info :version)

(assert (=> start!757404 (= res!3179927 ((_ is Lexer!8322) thiss!27104))))

(assert (=> start!757404 e!4738877))

(declare-fun e!4738881 () Bool)

(assert (=> start!757404 e!4738881))

(declare-fun tp_is_empty!54605 () Bool)

(assert (=> start!757404 tp_is_empty!54605))

(assert (=> start!757404 true))

(declare-fun e!4738879 () Bool)

(assert (=> start!757404 e!4738879))

(declare-fun e!4738878 () Bool)

(assert (=> start!757404 e!4738878))

(declare-fun b!8044410 () Bool)

(declare-fun res!3179929 () Bool)

(assert (=> b!8044410 (=> (not res!3179929) (not e!4738877))))

(declare-datatypes ((C!43948 0))(
  ( (C!43949 (val!32750 Int)) )
))
(declare-datatypes ((List!75354 0))(
  ( (Nil!75228) (Cons!75228 (h!81676 C!43948) (t!391124 List!75354)) )
))
(declare-datatypes ((IArray!32065 0))(
  ( (IArray!32066 (innerList!16090 List!75354)) )
))
(declare-datatypes ((Conc!16002 0))(
  ( (Node!16002 (left!57326 Conc!16002) (right!57656 Conc!16002) (csize!32234 Int) (cheight!16213 Int)) (Leaf!30679 (xs!19400 IArray!32065) (csize!32235 Int)) (Empty!16002) )
))
(declare-datatypes ((List!75355 0))(
  ( (Nil!75229) (Cons!75229 (h!81677 (_ BitVec 16)) (t!391125 List!75355)) )
))
(declare-datatypes ((Regex!21805 0))(
  ( (ElementMatch!21805 (c!1475343 C!43948)) (Concat!30859 (regOne!44122 Regex!21805) (regTwo!44122 Regex!21805)) (EmptyExpr!21805) (Star!21805 (reg!22134 Regex!21805)) (EmptyLang!21805) (Union!21805 (regOne!44123 Regex!21805) (regTwo!44123 Regex!21805)) )
))
(declare-datatypes ((String!85043 0))(
  ( (String!85044 (value!291951 String)) )
))
(declare-datatypes ((TokenValue!9054 0))(
  ( (FloatLiteralValue!18108 (text!63823 List!75355)) (TokenValueExt!9053 (__x!35390 Int)) (Broken!45270 (value!291952 List!75355)) (Object!9179) (End!9054) (Def!9054) (Underscore!9054) (Match!9054) (Else!9054) (Error!9054) (Case!9054) (If!9054) (Extends!9054) (Abstract!9054) (Class!9054) (Val!9054) (DelimiterValue!18108 (del!9114 List!75355)) (KeywordValue!9060 (value!291953 List!75355)) (CommentValue!18108 (value!291954 List!75355)) (WhitespaceValue!18108 (value!291955 List!75355)) (IndentationValue!9054 (value!291956 List!75355)) (String!85045) (Int32!9054) (Broken!45271 (value!291957 List!75355)) (Boolean!9055) (Unit!171097) (OperatorValue!9057 (op!9114 List!75355)) (IdentifierValue!18108 (value!291958 List!75355)) (IdentifierValue!18109 (value!291959 List!75355)) (WhitespaceValue!18109 (value!291960 List!75355)) (True!18108) (False!18108) (Broken!45272 (value!291961 List!75355)) (Broken!45273 (value!291962 List!75355)) (True!18109) (RightBrace!9054) (RightBracket!9054) (Colon!9054) (Null!9054) (Comma!9054) (LeftBracket!9054) (False!18109) (LeftBrace!9054) (ImaginaryLiteralValue!9054 (text!63824 List!75355)) (StringLiteralValue!27162 (value!291963 List!75355)) (EOFValue!9054 (value!291964 List!75355)) (IdentValue!9054 (value!291965 List!75355)) (DelimiterValue!18109 (value!291966 List!75355)) (DedentValue!9054 (value!291967 List!75355)) (NewLineValue!9054 (value!291968 List!75355)) (IntegerValue!27162 (value!291969 (_ BitVec 32)) (text!63825 List!75355)) (IntegerValue!27163 (value!291970 Int) (text!63826 List!75355)) (Times!9054) (Or!9054) (Equal!9054) (Minus!9054) (Broken!45274 (value!291971 List!75355)) (And!9054) (Div!9054) (LessEqual!9054) (Mod!9054) (Concat!30860) (Not!9054) (Plus!9054) (SpaceValue!9054 (value!291972 List!75355)) (IntegerValue!27164 (value!291973 Int) (text!63827 List!75355)) (StringLiteralValue!27163 (text!63828 List!75355)) (FloatLiteralValue!18109 (text!63829 List!75355)) (BytesLiteralValue!9054 (value!291974 List!75355)) (CommentValue!18109 (value!291975 List!75355)) (StringLiteralValue!27164 (value!291976 List!75355)) (ErrorTokenValue!9054 (msg!9115 List!75355)) )
))
(declare-datatypes ((BalanceConc!30960 0))(
  ( (BalanceConc!30961 (c!1475344 Conc!16002)) )
))
(declare-datatypes ((TokenValueInjection!17416 0))(
  ( (TokenValueInjection!17417 (toValue!11809 Int) (toChars!11668 Int)) )
))
(declare-datatypes ((Rule!17268 0))(
  ( (Rule!17269 (regex!8734 Regex!21805) (tag!9598 String!85043) (isSeparator!8734 Bool) (transformation!8734 TokenValueInjection!17416)) )
))
(declare-datatypes ((List!75356 0))(
  ( (Nil!75230) (Cons!75230 (h!81678 Rule!17268) (t!391126 List!75356)) )
))
(declare-fun rules!4166 () List!75356)

(declare-fun rSep!153 () Rule!17268)

(declare-fun contains!21053 (List!75356 Rule!17268) Bool)

(assert (=> b!8044410 (= res!3179929 (contains!21053 rules!4166 rSep!153))))

(declare-fun b!8044411 () Bool)

(declare-fun res!3179928 () Bool)

(assert (=> b!8044411 (=> (not res!3179928) (not e!4738877))))

(declare-fun rulesInvariant!6792 (LexerInterface!8324 List!75356) Bool)

(assert (=> b!8044411 (= res!3179928 (rulesInvariant!6792 thiss!27104 rules!4166))))

(declare-fun b!8044412 () Bool)

(declare-fun e!4738871 () Bool)

(declare-fun tp!2410821 () Bool)

(declare-fun inv!97002 (String!85043) Bool)

(declare-fun inv!97004 (TokenValueInjection!17416) Bool)

(assert (=> b!8044412 (= e!4738871 (and tp!2410821 (inv!97002 (tag!9598 (h!81678 rules!4166))) (inv!97004 (transformation!8734 (h!81678 rules!4166))) e!4738880))))

(declare-fun b!8044413 () Bool)

(declare-fun res!3179932 () Bool)

(assert (=> b!8044413 (=> (not res!3179932) (not e!4738877))))

(declare-fun rNSep!153 () Rule!17268)

(declare-fun ruleDisjointCharsFromAllFromOtherType!1008 (Rule!17268 List!75356) Bool)

(assert (=> b!8044413 (= res!3179932 (ruleDisjointCharsFromAllFromOtherType!1008 rNSep!153 rules!4166))))

(declare-fun b!8044414 () Bool)

(declare-fun tp!2410820 () Bool)

(assert (=> b!8044414 (= e!4738878 (and tp!2410820 (inv!97002 (tag!9598 rSep!153)) (inv!97004 (transformation!8734 rSep!153)) e!4738876))))

(declare-fun b!8044415 () Bool)

(declare-fun e!4738875 () Bool)

(declare-fun tp!2410823 () Bool)

(assert (=> b!8044415 (= e!4738879 (and tp!2410823 (inv!97002 (tag!9598 rNSep!153)) (inv!97004 (transformation!8734 rNSep!153)) e!4738875))))

(declare-fun b!8044416 () Bool)

(declare-fun res!3179926 () Bool)

(assert (=> b!8044416 (=> (not res!3179926) (not e!4738877))))

(assert (=> b!8044416 (= res!3179926 (and (not (isSeparator!8734 rNSep!153)) (isSeparator!8734 rSep!153)))))

(declare-fun b!8044417 () Bool)

(declare-fun tp!2410817 () Bool)

(assert (=> b!8044417 (= e!4738881 (and e!4738871 tp!2410817))))

(declare-fun b!8044418 () Bool)

(declare-fun res!3179931 () Bool)

(assert (=> b!8044418 (=> (not res!3179931) (not e!4738877))))

(declare-fun c!6885 () C!43948)

(declare-fun contains!21054 (List!75354 C!43948) Bool)

(declare-fun usedCharacters!1312 (Regex!21805) List!75354)

(assert (=> b!8044418 (= res!3179931 (contains!21054 (usedCharacters!1312 (regex!8734 rSep!153)) c!6885))))

(declare-fun b!8044419 () Bool)

(assert (=> b!8044419 (= e!4738877 (contains!21054 (usedCharacters!1312 (regex!8734 rNSep!153)) c!6885))))

(declare-fun b!8044420 () Bool)

(declare-fun res!3179930 () Bool)

(assert (=> b!8044420 (=> (not res!3179930) (not e!4738877))))

(assert (=> b!8044420 (= res!3179930 (and (or (not ((_ is Cons!75230) rules!4166)) (not (= (h!81678 rules!4166) rSep!153))) (not ((_ is Cons!75230) rules!4166))))))

(assert (=> b!8044421 (= e!4738875 (and tp!2410816 tp!2410818))))

(assert (= (and start!757404 res!3179927) b!8044411))

(assert (= (and b!8044411 res!3179928) b!8044410))

(assert (= (and b!8044410 res!3179929) b!8044418))

(assert (= (and b!8044418 res!3179931) b!8044416))

(assert (= (and b!8044416 res!3179926) b!8044413))

(assert (= (and b!8044413 res!3179932) b!8044420))

(assert (= (and b!8044420 res!3179930) b!8044419))

(assert (= b!8044412 b!8044409))

(assert (= b!8044417 b!8044412))

(assert (= (and start!757404 ((_ is Cons!75230) rules!4166)) b!8044417))

(assert (= b!8044415 b!8044421))

(assert (= start!757404 b!8044415))

(assert (= b!8044414 b!8044408))

(assert (= start!757404 b!8044414))

(declare-fun m!8397388 () Bool)

(assert (=> b!8044413 m!8397388))

(declare-fun m!8397390 () Bool)

(assert (=> b!8044418 m!8397390))

(assert (=> b!8044418 m!8397390))

(declare-fun m!8397392 () Bool)

(assert (=> b!8044418 m!8397392))

(declare-fun m!8397394 () Bool)

(assert (=> b!8044410 m!8397394))

(declare-fun m!8397396 () Bool)

(assert (=> b!8044414 m!8397396))

(declare-fun m!8397398 () Bool)

(assert (=> b!8044414 m!8397398))

(declare-fun m!8397400 () Bool)

(assert (=> b!8044411 m!8397400))

(declare-fun m!8397402 () Bool)

(assert (=> b!8044415 m!8397402))

(declare-fun m!8397404 () Bool)

(assert (=> b!8044415 m!8397404))

(declare-fun m!8397406 () Bool)

(assert (=> b!8044412 m!8397406))

(declare-fun m!8397408 () Bool)

(assert (=> b!8044412 m!8397408))

(declare-fun m!8397410 () Bool)

(assert (=> b!8044419 m!8397410))

(assert (=> b!8044419 m!8397410))

(declare-fun m!8397412 () Bool)

(assert (=> b!8044419 m!8397412))

(check-sat (not b_next!136949) (not b!8044413) (not b!8044412) tp_is_empty!54605 b_and!354597 (not b_next!136959) b_and!354603 b_and!354605 (not b!8044414) (not b_next!136953) (not b_next!136957) b_and!354601 (not b!8044410) (not b!8044418) (not b!8044419) (not b_next!136951) b_and!354595 b_and!354599 (not b_next!136955) (not b!8044415) (not b!8044411) (not b!8044417))
(check-sat (not b_next!136949) (not b_next!136955) b_and!354597 (not b_next!136959) b_and!354603 b_and!354605 (not b_next!136953) (not b_next!136957) b_and!354601 (not b_next!136951) b_and!354595 b_and!354599)
(get-model)

(declare-fun d!2396193 () Bool)

(declare-fun lt!2722553 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16066 (List!75354) (InoxSet C!43948))

(assert (=> d!2396193 (= lt!2722553 (select (content!16066 (usedCharacters!1312 (regex!8734 rSep!153))) c!6885))))

(declare-fun e!4738887 () Bool)

(assert (=> d!2396193 (= lt!2722553 e!4738887)))

(declare-fun res!3179945 () Bool)

(assert (=> d!2396193 (=> (not res!3179945) (not e!4738887))))

(assert (=> d!2396193 (= res!3179945 ((_ is Cons!75228) (usedCharacters!1312 (regex!8734 rSep!153))))))

(assert (=> d!2396193 (= (contains!21054 (usedCharacters!1312 (regex!8734 rSep!153)) c!6885) lt!2722553)))

(declare-fun b!8044426 () Bool)

(declare-fun e!4738886 () Bool)

(assert (=> b!8044426 (= e!4738887 e!4738886)))

(declare-fun res!3179944 () Bool)

(assert (=> b!8044426 (=> res!3179944 e!4738886)))

(assert (=> b!8044426 (= res!3179944 (= (h!81676 (usedCharacters!1312 (regex!8734 rSep!153))) c!6885))))

(declare-fun b!8044427 () Bool)

(assert (=> b!8044427 (= e!4738886 (contains!21054 (t!391124 (usedCharacters!1312 (regex!8734 rSep!153))) c!6885))))

(assert (= (and d!2396193 res!3179945) b!8044426))

(assert (= (and b!8044426 (not res!3179944)) b!8044427))

(assert (=> d!2396193 m!8397390))

(declare-fun m!8397414 () Bool)

(assert (=> d!2396193 m!8397414))

(declare-fun m!8397416 () Bool)

(assert (=> d!2396193 m!8397416))

(declare-fun m!8397418 () Bool)

(assert (=> b!8044427 m!8397418))

(assert (=> b!8044418 d!2396193))

(declare-fun b!8044447 () Bool)

(declare-fun e!4738899 () List!75354)

(declare-fun call!746679 () List!75354)

(assert (=> b!8044447 (= e!4738899 call!746679)))

(declare-fun b!8044448 () Bool)

(declare-fun e!4738900 () List!75354)

(declare-fun e!4738902 () List!75354)

(assert (=> b!8044448 (= e!4738900 e!4738902)))

(declare-fun c!1475354 () Bool)

(assert (=> b!8044448 (= c!1475354 ((_ is ElementMatch!21805) (regex!8734 rSep!153)))))

(declare-fun b!8044449 () Bool)

(declare-fun e!4738901 () List!75354)

(assert (=> b!8044449 (= e!4738901 e!4738899)))

(declare-fun c!1475356 () Bool)

(assert (=> b!8044449 (= c!1475356 ((_ is Union!21805) (regex!8734 rSep!153)))))

(declare-fun b!8044450 () Bool)

(assert (=> b!8044450 (= e!4738899 call!746679)))

(declare-fun d!2396197 () Bool)

(declare-fun c!1475355 () Bool)

(assert (=> d!2396197 (= c!1475355 (or ((_ is EmptyExpr!21805) (regex!8734 rSep!153)) ((_ is EmptyLang!21805) (regex!8734 rSep!153))))))

(assert (=> d!2396197 (= (usedCharacters!1312 (regex!8734 rSep!153)) e!4738900)))

(declare-fun b!8044451 () Bool)

(declare-fun c!1475353 () Bool)

(assert (=> b!8044451 (= c!1475353 ((_ is Star!21805) (regex!8734 rSep!153)))))

(assert (=> b!8044451 (= e!4738902 e!4738901)))

(declare-fun bm!746674 () Bool)

(declare-fun call!746681 () List!75354)

(declare-fun call!746680 () List!75354)

(declare-fun ++!18638 (List!75354 List!75354) List!75354)

(assert (=> bm!746674 (= call!746679 (++!18638 (ite c!1475356 call!746681 call!746680) (ite c!1475356 call!746680 call!746681)))))

(declare-fun b!8044452 () Bool)

(declare-fun call!746682 () List!75354)

(assert (=> b!8044452 (= e!4738901 call!746682)))

(declare-fun bm!746675 () Bool)

(assert (=> bm!746675 (= call!746682 (usedCharacters!1312 (ite c!1475353 (reg!22134 (regex!8734 rSep!153)) (ite c!1475356 (regTwo!44123 (regex!8734 rSep!153)) (regOne!44122 (regex!8734 rSep!153))))))))

(declare-fun b!8044453 () Bool)

(assert (=> b!8044453 (= e!4738900 Nil!75228)))

(declare-fun bm!746676 () Bool)

(assert (=> bm!746676 (= call!746681 (usedCharacters!1312 (ite c!1475356 (regOne!44123 (regex!8734 rSep!153)) (regTwo!44122 (regex!8734 rSep!153)))))))

(declare-fun b!8044454 () Bool)

(assert (=> b!8044454 (= e!4738902 (Cons!75228 (c!1475343 (regex!8734 rSep!153)) Nil!75228))))

(declare-fun bm!746677 () Bool)

(assert (=> bm!746677 (= call!746680 call!746682)))

(assert (= (and d!2396197 c!1475355) b!8044453))

(assert (= (and d!2396197 (not c!1475355)) b!8044448))

(assert (= (and b!8044448 c!1475354) b!8044454))

(assert (= (and b!8044448 (not c!1475354)) b!8044451))

(assert (= (and b!8044451 c!1475353) b!8044452))

(assert (= (and b!8044451 (not c!1475353)) b!8044449))

(assert (= (and b!8044449 c!1475356) b!8044447))

(assert (= (and b!8044449 (not c!1475356)) b!8044450))

(assert (= (or b!8044447 b!8044450) bm!746676))

(assert (= (or b!8044447 b!8044450) bm!746677))

(assert (= (or b!8044447 b!8044450) bm!746674))

(assert (= (or b!8044452 bm!746677) bm!746675))

(declare-fun m!8397424 () Bool)

(assert (=> bm!746674 m!8397424))

(declare-fun m!8397426 () Bool)

(assert (=> bm!746675 m!8397426))

(declare-fun m!8397428 () Bool)

(assert (=> bm!746676 m!8397428))

(assert (=> b!8044418 d!2396197))

(declare-fun bm!746680 () Bool)

(declare-fun call!746685 () Bool)

(assert (=> bm!746680 (= call!746685 (ruleDisjointCharsFromAllFromOtherType!1008 rNSep!153 (t!391126 rules!4166)))))

(declare-fun b!8044469 () Bool)

(declare-fun e!4738916 () Bool)

(declare-fun e!4738915 () Bool)

(assert (=> b!8044469 (= e!4738916 e!4738915)))

(declare-fun res!3179960 () Bool)

(declare-fun rulesUseDisjointChars!402 (Rule!17268 Rule!17268) Bool)

(assert (=> b!8044469 (= res!3179960 (rulesUseDisjointChars!402 rNSep!153 (h!81678 rules!4166)))))

(assert (=> b!8044469 (=> (not res!3179960) (not e!4738915))))

(declare-fun d!2396201 () Bool)

(declare-fun c!1475359 () Bool)

(assert (=> d!2396201 (= c!1475359 (and ((_ is Cons!75230) rules!4166) (not (= (isSeparator!8734 (h!81678 rules!4166)) (isSeparator!8734 rNSep!153)))))))

(assert (=> d!2396201 (= (ruleDisjointCharsFromAllFromOtherType!1008 rNSep!153 rules!4166) e!4738916)))

(declare-fun b!8044470 () Bool)

(assert (=> b!8044470 (= e!4738915 call!746685)))

(declare-fun b!8044471 () Bool)

(declare-fun e!4738917 () Bool)

(assert (=> b!8044471 (= e!4738917 call!746685)))

(declare-fun b!8044472 () Bool)

(assert (=> b!8044472 (= e!4738916 e!4738917)))

(declare-fun res!3179959 () Bool)

(assert (=> b!8044472 (= res!3179959 (not ((_ is Cons!75230) rules!4166)))))

(assert (=> b!8044472 (=> res!3179959 e!4738917)))

(assert (= (and d!2396201 c!1475359) b!8044469))

(assert (= (and d!2396201 (not c!1475359)) b!8044472))

(assert (= (and b!8044469 res!3179960) b!8044470))

(assert (= (and b!8044472 (not res!3179959)) b!8044471))

(assert (= (or b!8044470 b!8044471) bm!746680))

(declare-fun m!8397436 () Bool)

(assert (=> bm!746680 m!8397436))

(declare-fun m!8397438 () Bool)

(assert (=> b!8044469 m!8397438))

(assert (=> b!8044413 d!2396201))

(declare-fun d!2396205 () Bool)

(assert (=> d!2396205 (= (inv!97002 (tag!9598 (h!81678 rules!4166))) (= (mod (str.len (value!291951 (tag!9598 (h!81678 rules!4166)))) 2) 0))))

(assert (=> b!8044412 d!2396205))

(declare-fun d!2396207 () Bool)

(declare-fun res!3179963 () Bool)

(declare-fun e!4738920 () Bool)

(assert (=> d!2396207 (=> (not res!3179963) (not e!4738920))))

(declare-fun semiInverseModEq!3878 (Int Int) Bool)

(assert (=> d!2396207 (= res!3179963 (semiInverseModEq!3878 (toChars!11668 (transformation!8734 (h!81678 rules!4166))) (toValue!11809 (transformation!8734 (h!81678 rules!4166)))))))

(assert (=> d!2396207 (= (inv!97004 (transformation!8734 (h!81678 rules!4166))) e!4738920)))

(declare-fun b!8044475 () Bool)

(declare-fun equivClasses!3693 (Int Int) Bool)

(assert (=> b!8044475 (= e!4738920 (equivClasses!3693 (toChars!11668 (transformation!8734 (h!81678 rules!4166))) (toValue!11809 (transformation!8734 (h!81678 rules!4166)))))))

(assert (= (and d!2396207 res!3179963) b!8044475))

(declare-fun m!8397440 () Bool)

(assert (=> d!2396207 m!8397440))

(declare-fun m!8397442 () Bool)

(assert (=> b!8044475 m!8397442))

(assert (=> b!8044412 d!2396207))

(declare-fun d!2396209 () Bool)

(assert (=> d!2396209 (= (inv!97002 (tag!9598 rSep!153)) (= (mod (str.len (value!291951 (tag!9598 rSep!153))) 2) 0))))

(assert (=> b!8044414 d!2396209))

(declare-fun d!2396211 () Bool)

(declare-fun res!3179964 () Bool)

(declare-fun e!4738923 () Bool)

(assert (=> d!2396211 (=> (not res!3179964) (not e!4738923))))

(assert (=> d!2396211 (= res!3179964 (semiInverseModEq!3878 (toChars!11668 (transformation!8734 rSep!153)) (toValue!11809 (transformation!8734 rSep!153))))))

(assert (=> d!2396211 (= (inv!97004 (transformation!8734 rSep!153)) e!4738923)))

(declare-fun b!8044480 () Bool)

(assert (=> b!8044480 (= e!4738923 (equivClasses!3693 (toChars!11668 (transformation!8734 rSep!153)) (toValue!11809 (transformation!8734 rSep!153))))))

(assert (= (and d!2396211 res!3179964) b!8044480))

(declare-fun m!8397444 () Bool)

(assert (=> d!2396211 m!8397444))

(declare-fun m!8397446 () Bool)

(assert (=> b!8044480 m!8397446))

(assert (=> b!8044414 d!2396211))

(declare-fun d!2396213 () Bool)

(declare-fun lt!2722557 () Bool)

(assert (=> d!2396213 (= lt!2722557 (select (content!16066 (usedCharacters!1312 (regex!8734 rNSep!153))) c!6885))))

(declare-fun e!4738927 () Bool)

(assert (=> d!2396213 (= lt!2722557 e!4738927)))

(declare-fun res!3179966 () Bool)

(assert (=> d!2396213 (=> (not res!3179966) (not e!4738927))))

(assert (=> d!2396213 (= res!3179966 ((_ is Cons!75228) (usedCharacters!1312 (regex!8734 rNSep!153))))))

(assert (=> d!2396213 (= (contains!21054 (usedCharacters!1312 (regex!8734 rNSep!153)) c!6885) lt!2722557)))

(declare-fun b!8044488 () Bool)

(declare-fun e!4738926 () Bool)

(assert (=> b!8044488 (= e!4738927 e!4738926)))

(declare-fun res!3179965 () Bool)

(assert (=> b!8044488 (=> res!3179965 e!4738926)))

(assert (=> b!8044488 (= res!3179965 (= (h!81676 (usedCharacters!1312 (regex!8734 rNSep!153))) c!6885))))

(declare-fun b!8044490 () Bool)

(assert (=> b!8044490 (= e!4738926 (contains!21054 (t!391124 (usedCharacters!1312 (regex!8734 rNSep!153))) c!6885))))

(assert (= (and d!2396213 res!3179966) b!8044488))

(assert (= (and b!8044488 (not res!3179965)) b!8044490))

(assert (=> d!2396213 m!8397410))

(declare-fun m!8397448 () Bool)

(assert (=> d!2396213 m!8397448))

(declare-fun m!8397450 () Bool)

(assert (=> d!2396213 m!8397450))

(declare-fun m!8397452 () Bool)

(assert (=> b!8044490 m!8397452))

(assert (=> b!8044419 d!2396213))

(declare-fun b!8044495 () Bool)

(declare-fun e!4738932 () List!75354)

(declare-fun call!746686 () List!75354)

(assert (=> b!8044495 (= e!4738932 call!746686)))

(declare-fun b!8044496 () Bool)

(declare-fun e!4738933 () List!75354)

(declare-fun e!4738935 () List!75354)

(assert (=> b!8044496 (= e!4738933 e!4738935)))

(declare-fun c!1475369 () Bool)

(assert (=> b!8044496 (= c!1475369 ((_ is ElementMatch!21805) (regex!8734 rNSep!153)))))

(declare-fun b!8044497 () Bool)

(declare-fun e!4738934 () List!75354)

(assert (=> b!8044497 (= e!4738934 e!4738932)))

(declare-fun c!1475371 () Bool)

(assert (=> b!8044497 (= c!1475371 ((_ is Union!21805) (regex!8734 rNSep!153)))))

(declare-fun b!8044498 () Bool)

(assert (=> b!8044498 (= e!4738932 call!746686)))

(declare-fun d!2396215 () Bool)

(declare-fun c!1475370 () Bool)

(assert (=> d!2396215 (= c!1475370 (or ((_ is EmptyExpr!21805) (regex!8734 rNSep!153)) ((_ is EmptyLang!21805) (regex!8734 rNSep!153))))))

(assert (=> d!2396215 (= (usedCharacters!1312 (regex!8734 rNSep!153)) e!4738933)))

(declare-fun b!8044499 () Bool)

(declare-fun c!1475368 () Bool)

(assert (=> b!8044499 (= c!1475368 ((_ is Star!21805) (regex!8734 rNSep!153)))))

(assert (=> b!8044499 (= e!4738935 e!4738934)))

(declare-fun call!746688 () List!75354)

(declare-fun call!746687 () List!75354)

(declare-fun bm!746681 () Bool)

(assert (=> bm!746681 (= call!746686 (++!18638 (ite c!1475371 call!746688 call!746687) (ite c!1475371 call!746687 call!746688)))))

(declare-fun b!8044500 () Bool)

(declare-fun call!746689 () List!75354)

(assert (=> b!8044500 (= e!4738934 call!746689)))

(declare-fun bm!746682 () Bool)

(assert (=> bm!746682 (= call!746689 (usedCharacters!1312 (ite c!1475368 (reg!22134 (regex!8734 rNSep!153)) (ite c!1475371 (regTwo!44123 (regex!8734 rNSep!153)) (regOne!44122 (regex!8734 rNSep!153))))))))

(declare-fun b!8044501 () Bool)

(assert (=> b!8044501 (= e!4738933 Nil!75228)))

(declare-fun bm!746683 () Bool)

(assert (=> bm!746683 (= call!746688 (usedCharacters!1312 (ite c!1475371 (regOne!44123 (regex!8734 rNSep!153)) (regTwo!44122 (regex!8734 rNSep!153)))))))

(declare-fun b!8044502 () Bool)

(assert (=> b!8044502 (= e!4738935 (Cons!75228 (c!1475343 (regex!8734 rNSep!153)) Nil!75228))))

(declare-fun bm!746684 () Bool)

(assert (=> bm!746684 (= call!746687 call!746689)))

(assert (= (and d!2396215 c!1475370) b!8044501))

(assert (= (and d!2396215 (not c!1475370)) b!8044496))

(assert (= (and b!8044496 c!1475369) b!8044502))

(assert (= (and b!8044496 (not c!1475369)) b!8044499))

(assert (= (and b!8044499 c!1475368) b!8044500))

(assert (= (and b!8044499 (not c!1475368)) b!8044497))

(assert (= (and b!8044497 c!1475371) b!8044495))

(assert (= (and b!8044497 (not c!1475371)) b!8044498))

(assert (= (or b!8044495 b!8044498) bm!746683))

(assert (= (or b!8044495 b!8044498) bm!746684))

(assert (= (or b!8044495 b!8044498) bm!746681))

(assert (= (or b!8044500 bm!746684) bm!746682))

(declare-fun m!8397454 () Bool)

(assert (=> bm!746681 m!8397454))

(declare-fun m!8397456 () Bool)

(assert (=> bm!746682 m!8397456))

(declare-fun m!8397458 () Bool)

(assert (=> bm!746683 m!8397458))

(assert (=> b!8044419 d!2396215))

(declare-fun d!2396217 () Bool)

(declare-fun lt!2722560 () Bool)

(declare-fun content!16067 (List!75356) (InoxSet Rule!17268))

(assert (=> d!2396217 (= lt!2722560 (select (content!16067 rules!4166) rSep!153))))

(declare-fun e!4738941 () Bool)

(assert (=> d!2396217 (= lt!2722560 e!4738941)))

(declare-fun res!3179971 () Bool)

(assert (=> d!2396217 (=> (not res!3179971) (not e!4738941))))

(assert (=> d!2396217 (= res!3179971 ((_ is Cons!75230) rules!4166))))

(assert (=> d!2396217 (= (contains!21053 rules!4166 rSep!153) lt!2722560)))

(declare-fun b!8044507 () Bool)

(declare-fun e!4738940 () Bool)

(assert (=> b!8044507 (= e!4738941 e!4738940)))

(declare-fun res!3179972 () Bool)

(assert (=> b!8044507 (=> res!3179972 e!4738940)))

(assert (=> b!8044507 (= res!3179972 (= (h!81678 rules!4166) rSep!153))))

(declare-fun b!8044508 () Bool)

(assert (=> b!8044508 (= e!4738940 (contains!21053 (t!391126 rules!4166) rSep!153))))

(assert (= (and d!2396217 res!3179971) b!8044507))

(assert (= (and b!8044507 (not res!3179972)) b!8044508))

(declare-fun m!8397460 () Bool)

(assert (=> d!2396217 m!8397460))

(declare-fun m!8397462 () Bool)

(assert (=> d!2396217 m!8397462))

(declare-fun m!8397464 () Bool)

(assert (=> b!8044508 m!8397464))

(assert (=> b!8044410 d!2396217))

(declare-fun d!2396219 () Bool)

(assert (=> d!2396219 (= (inv!97002 (tag!9598 rNSep!153)) (= (mod (str.len (value!291951 (tag!9598 rNSep!153))) 2) 0))))

(assert (=> b!8044415 d!2396219))

(declare-fun d!2396221 () Bool)

(declare-fun res!3179973 () Bool)

(declare-fun e!4738942 () Bool)

(assert (=> d!2396221 (=> (not res!3179973) (not e!4738942))))

(assert (=> d!2396221 (= res!3179973 (semiInverseModEq!3878 (toChars!11668 (transformation!8734 rNSep!153)) (toValue!11809 (transformation!8734 rNSep!153))))))

(assert (=> d!2396221 (= (inv!97004 (transformation!8734 rNSep!153)) e!4738942)))

(declare-fun b!8044509 () Bool)

(assert (=> b!8044509 (= e!4738942 (equivClasses!3693 (toChars!11668 (transformation!8734 rNSep!153)) (toValue!11809 (transformation!8734 rNSep!153))))))

(assert (= (and d!2396221 res!3179973) b!8044509))

(declare-fun m!8397466 () Bool)

(assert (=> d!2396221 m!8397466))

(declare-fun m!8397468 () Bool)

(assert (=> b!8044509 m!8397468))

(assert (=> b!8044415 d!2396221))

(declare-fun d!2396223 () Bool)

(declare-fun res!3179976 () Bool)

(declare-fun e!4738945 () Bool)

(assert (=> d!2396223 (=> (not res!3179976) (not e!4738945))))

(declare-fun rulesValid!3153 (LexerInterface!8324 List!75356) Bool)

(assert (=> d!2396223 (= res!3179976 (rulesValid!3153 thiss!27104 rules!4166))))

(assert (=> d!2396223 (= (rulesInvariant!6792 thiss!27104 rules!4166) e!4738945)))

(declare-fun b!8044512 () Bool)

(declare-datatypes ((List!75357 0))(
  ( (Nil!75231) (Cons!75231 (h!81679 String!85043) (t!391127 List!75357)) )
))
(declare-fun noDuplicateTag!3314 (LexerInterface!8324 List!75356 List!75357) Bool)

(assert (=> b!8044512 (= e!4738945 (noDuplicateTag!3314 thiss!27104 rules!4166 Nil!75231))))

(assert (= (and d!2396223 res!3179976) b!8044512))

(declare-fun m!8397470 () Bool)

(assert (=> d!2396223 m!8397470))

(declare-fun m!8397472 () Bool)

(assert (=> b!8044512 m!8397472))

(assert (=> b!8044411 d!2396223))

(declare-fun b!8044523 () Bool)

(declare-fun e!4738948 () Bool)

(assert (=> b!8044523 (= e!4738948 tp_is_empty!54605)))

(declare-fun b!8044526 () Bool)

(declare-fun tp!2410840 () Bool)

(declare-fun tp!2410836 () Bool)

(assert (=> b!8044526 (= e!4738948 (and tp!2410840 tp!2410836))))

(declare-fun b!8044524 () Bool)

(declare-fun tp!2410838 () Bool)

(declare-fun tp!2410837 () Bool)

(assert (=> b!8044524 (= e!4738948 (and tp!2410838 tp!2410837))))

(declare-fun b!8044525 () Bool)

(declare-fun tp!2410839 () Bool)

(assert (=> b!8044525 (= e!4738948 tp!2410839)))

(assert (=> b!8044412 (= tp!2410821 e!4738948)))

(assert (= (and b!8044412 ((_ is ElementMatch!21805) (regex!8734 (h!81678 rules!4166)))) b!8044523))

(assert (= (and b!8044412 ((_ is Concat!30859) (regex!8734 (h!81678 rules!4166)))) b!8044524))

(assert (= (and b!8044412 ((_ is Star!21805) (regex!8734 (h!81678 rules!4166)))) b!8044525))

(assert (= (and b!8044412 ((_ is Union!21805) (regex!8734 (h!81678 rules!4166)))) b!8044526))

(declare-fun b!8044527 () Bool)

(declare-fun e!4738949 () Bool)

(assert (=> b!8044527 (= e!4738949 tp_is_empty!54605)))

(declare-fun b!8044530 () Bool)

(declare-fun tp!2410845 () Bool)

(declare-fun tp!2410841 () Bool)

(assert (=> b!8044530 (= e!4738949 (and tp!2410845 tp!2410841))))

(declare-fun b!8044528 () Bool)

(declare-fun tp!2410843 () Bool)

(declare-fun tp!2410842 () Bool)

(assert (=> b!8044528 (= e!4738949 (and tp!2410843 tp!2410842))))

(declare-fun b!8044529 () Bool)

(declare-fun tp!2410844 () Bool)

(assert (=> b!8044529 (= e!4738949 tp!2410844)))

(assert (=> b!8044414 (= tp!2410820 e!4738949)))

(assert (= (and b!8044414 ((_ is ElementMatch!21805) (regex!8734 rSep!153))) b!8044527))

(assert (= (and b!8044414 ((_ is Concat!30859) (regex!8734 rSep!153))) b!8044528))

(assert (= (and b!8044414 ((_ is Star!21805) (regex!8734 rSep!153))) b!8044529))

(assert (= (and b!8044414 ((_ is Union!21805) (regex!8734 rSep!153))) b!8044530))

(declare-fun b!8044531 () Bool)

(declare-fun e!4738950 () Bool)

(assert (=> b!8044531 (= e!4738950 tp_is_empty!54605)))

(declare-fun b!8044534 () Bool)

(declare-fun tp!2410850 () Bool)

(declare-fun tp!2410846 () Bool)

(assert (=> b!8044534 (= e!4738950 (and tp!2410850 tp!2410846))))

(declare-fun b!8044532 () Bool)

(declare-fun tp!2410848 () Bool)

(declare-fun tp!2410847 () Bool)

(assert (=> b!8044532 (= e!4738950 (and tp!2410848 tp!2410847))))

(declare-fun b!8044533 () Bool)

(declare-fun tp!2410849 () Bool)

(assert (=> b!8044533 (= e!4738950 tp!2410849)))

(assert (=> b!8044415 (= tp!2410823 e!4738950)))

(assert (= (and b!8044415 ((_ is ElementMatch!21805) (regex!8734 rNSep!153))) b!8044531))

(assert (= (and b!8044415 ((_ is Concat!30859) (regex!8734 rNSep!153))) b!8044532))

(assert (= (and b!8044415 ((_ is Star!21805) (regex!8734 rNSep!153))) b!8044533))

(assert (= (and b!8044415 ((_ is Union!21805) (regex!8734 rNSep!153))) b!8044534))

(declare-fun b!8044553 () Bool)

(declare-fun b_free!136171 () Bool)

(declare-fun b_next!136961 () Bool)

(assert (=> b!8044553 (= b_free!136171 (not b_next!136961))))

(declare-fun tp!2410861 () Bool)

(declare-fun b_and!354607 () Bool)

(assert (=> b!8044553 (= tp!2410861 b_and!354607)))

(declare-fun b_free!136173 () Bool)

(declare-fun b_next!136963 () Bool)

(assert (=> b!8044553 (= b_free!136173 (not b_next!136963))))

(declare-fun tp!2410860 () Bool)

(declare-fun b_and!354609 () Bool)

(assert (=> b!8044553 (= tp!2410860 b_and!354609)))

(declare-fun e!4738963 () Bool)

(assert (=> b!8044553 (= e!4738963 (and tp!2410861 tp!2410860))))

(declare-fun e!4738964 () Bool)

(declare-fun b!8044552 () Bool)

(declare-fun tp!2410859 () Bool)

(assert (=> b!8044552 (= e!4738964 (and tp!2410859 (inv!97002 (tag!9598 (h!81678 (t!391126 rules!4166)))) (inv!97004 (transformation!8734 (h!81678 (t!391126 rules!4166)))) e!4738963))))

(declare-fun b!8044551 () Bool)

(declare-fun e!4738965 () Bool)

(declare-fun tp!2410862 () Bool)

(assert (=> b!8044551 (= e!4738965 (and e!4738964 tp!2410862))))

(assert (=> b!8044417 (= tp!2410817 e!4738965)))

(assert (= b!8044552 b!8044553))

(assert (= b!8044551 b!8044552))

(assert (= (and b!8044417 ((_ is Cons!75230) (t!391126 rules!4166))) b!8044551))

(declare-fun m!8397474 () Bool)

(assert (=> b!8044552 m!8397474))

(declare-fun m!8397476 () Bool)

(assert (=> b!8044552 m!8397476))

(check-sat (not d!2396223) (not b!8044528) (not bm!746675) (not b_next!136963) b_and!354597 (not b!8044534) (not d!2396213) b_and!354603 (not b!8044533) (not b_next!136953) b_and!354601 (not d!2396207) (not b_next!136949) (not bm!746683) (not b!8044480) b_and!354609 (not b!8044508) (not b_next!136951) b_and!354595 b_and!354599 (not bm!746680) (not b!8044512) (not b_next!136955) (not d!2396211) b_and!354607 (not b!8044530) (not d!2396217) (not b!8044526) tp_is_empty!54605 (not b!8044552) (not b_next!136959) (not b!8044532) (not d!2396193) (not bm!746682) (not b!8044427) (not b!8044490) b_and!354605 (not b_next!136961) (not b!8044509) (not b_next!136957) (not b!8044525) (not b!8044475) (not d!2396221) (not b!8044524) (not b!8044529) (not b!8044469) (not bm!746674) (not b!8044551) (not bm!746681) (not bm!746676))
(check-sat (not b_next!136949) b_and!354609 (not b_next!136963) b_and!354597 (not b_next!136959) b_and!354603 (not b_next!136953) (not b_next!136957) b_and!354601 (not b_next!136951) b_and!354595 b_and!354599 (not b_next!136955) b_and!354607 b_and!354605 (not b_next!136961))
