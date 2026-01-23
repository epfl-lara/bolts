; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118638 () Bool)

(assert start!118638)

(declare-fun b!1333006 () Bool)

(declare-fun b_free!32291 () Bool)

(declare-fun b_next!32995 () Bool)

(assert (=> b!1333006 (= b_free!32291 (not b_next!32995))))

(declare-fun tp!385548 () Bool)

(declare-fun b_and!89055 () Bool)

(assert (=> b!1333006 (= tp!385548 b_and!89055)))

(declare-fun b_free!32293 () Bool)

(declare-fun b_next!32997 () Bool)

(assert (=> b!1333006 (= b_free!32293 (not b_next!32997))))

(declare-fun tp!385556 () Bool)

(declare-fun b_and!89057 () Bool)

(assert (=> b!1333006 (= tp!385556 b_and!89057)))

(declare-fun b!1332991 () Bool)

(declare-fun b_free!32295 () Bool)

(declare-fun b_next!32999 () Bool)

(assert (=> b!1332991 (= b_free!32295 (not b_next!32999))))

(declare-fun tp!385546 () Bool)

(declare-fun b_and!89059 () Bool)

(assert (=> b!1332991 (= tp!385546 b_and!89059)))

(declare-fun b_free!32297 () Bool)

(declare-fun b_next!33001 () Bool)

(assert (=> b!1332991 (= b_free!32297 (not b_next!33001))))

(declare-fun tp!385547 () Bool)

(declare-fun b_and!89061 () Bool)

(assert (=> b!1332991 (= tp!385547 b_and!89061)))

(declare-fun b!1333015 () Bool)

(declare-fun b_free!32299 () Bool)

(declare-fun b_next!33003 () Bool)

(assert (=> b!1333015 (= b_free!32299 (not b_next!33003))))

(declare-fun tp!385549 () Bool)

(declare-fun b_and!89063 () Bool)

(assert (=> b!1333015 (= tp!385549 b_and!89063)))

(declare-fun b_free!32301 () Bool)

(declare-fun b_next!33005 () Bool)

(assert (=> b!1333015 (= b_free!32301 (not b_next!33005))))

(declare-fun tp!385552 () Bool)

(declare-fun b_and!89065 () Bool)

(assert (=> b!1333015 (= tp!385552 b_and!89065)))

(declare-fun b!1333029 () Bool)

(assert (=> b!1333029 true))

(assert (=> b!1333029 true))

(declare-fun b!1333027 () Bool)

(assert (=> b!1333027 true))

(declare-fun b!1332999 () Bool)

(assert (=> b!1332999 true))

(declare-fun bs!331804 () Bool)

(declare-fun b!1333030 () Bool)

(assert (= bs!331804 (and b!1333030 b!1332999)))

(declare-fun lambda!55673 () Int)

(declare-fun lambda!55672 () Int)

(assert (=> bs!331804 (not (= lambda!55673 lambda!55672))))

(assert (=> b!1333030 true))

(declare-fun b!1332984 () Bool)

(declare-fun e!853907 () Bool)

(declare-fun e!853908 () Bool)

(assert (=> b!1332984 (= e!853907 e!853908)))

(declare-fun res!600918 () Bool)

(assert (=> b!1332984 (=> res!600918 e!853908)))

(declare-datatypes ((C!7616 0))(
  ( (C!7617 (val!4368 Int)) )
))
(declare-datatypes ((List!13630 0))(
  ( (Nil!13564) (Cons!13564 (h!18965 C!7616) (t!119075 List!13630)) )
))
(declare-fun lt!441234 () List!13630)

(declare-fun lt!441241 () C!7616)

(declare-fun contains!2463 (List!13630 C!7616) Bool)

(assert (=> b!1332984 (= res!600918 (not (contains!2463 lt!441234 lt!441241)))))

(declare-datatypes ((IArray!8941 0))(
  ( (IArray!8942 (innerList!4528 List!13630)) )
))
(declare-datatypes ((Conc!4468 0))(
  ( (Node!4468 (left!11648 Conc!4468) (right!11978 Conc!4468) (csize!9166 Int) (cheight!4679 Int)) (Leaf!6839 (xs!7183 IArray!8941) (csize!9167 Int)) (Empty!4468) )
))
(declare-datatypes ((BalanceConc!8876 0))(
  ( (BalanceConc!8877 (c!218414 Conc!4468)) )
))
(declare-fun lt!441240 () BalanceConc!8876)

(declare-fun apply!3159 (BalanceConc!8876 Int) C!7616)

(assert (=> b!1332984 (= lt!441241 (apply!3159 lt!441240 0))))

(declare-fun tp!385551 () Bool)

(declare-fun e!853892 () Bool)

(declare-fun b!1332985 () Bool)

(declare-fun e!853899 () Bool)

(declare-datatypes ((List!13631 0))(
  ( (Nil!13565) (Cons!13565 (h!18966 (_ BitVec 16)) (t!119076 List!13631)) )
))
(declare-datatypes ((TokenValue!2439 0))(
  ( (FloatLiteralValue!4878 (text!17518 List!13631)) (TokenValueExt!2438 (__x!8707 Int)) (Broken!12195 (value!76553 List!13631)) (Object!2504) (End!2439) (Def!2439) (Underscore!2439) (Match!2439) (Else!2439) (Error!2439) (Case!2439) (If!2439) (Extends!2439) (Abstract!2439) (Class!2439) (Val!2439) (DelimiterValue!4878 (del!2499 List!13631)) (KeywordValue!2445 (value!76554 List!13631)) (CommentValue!4878 (value!76555 List!13631)) (WhitespaceValue!4878 (value!76556 List!13631)) (IndentationValue!2439 (value!76557 List!13631)) (String!16430) (Int32!2439) (Broken!12196 (value!76558 List!13631)) (Boolean!2440) (Unit!19694) (OperatorValue!2442 (op!2499 List!13631)) (IdentifierValue!4878 (value!76559 List!13631)) (IdentifierValue!4879 (value!76560 List!13631)) (WhitespaceValue!4879 (value!76561 List!13631)) (True!4878) (False!4878) (Broken!12197 (value!76562 List!13631)) (Broken!12198 (value!76563 List!13631)) (True!4879) (RightBrace!2439) (RightBracket!2439) (Colon!2439) (Null!2439) (Comma!2439) (LeftBracket!2439) (False!4879) (LeftBrace!2439) (ImaginaryLiteralValue!2439 (text!17519 List!13631)) (StringLiteralValue!7317 (value!76564 List!13631)) (EOFValue!2439 (value!76565 List!13631)) (IdentValue!2439 (value!76566 List!13631)) (DelimiterValue!4879 (value!76567 List!13631)) (DedentValue!2439 (value!76568 List!13631)) (NewLineValue!2439 (value!76569 List!13631)) (IntegerValue!7317 (value!76570 (_ BitVec 32)) (text!17520 List!13631)) (IntegerValue!7318 (value!76571 Int) (text!17521 List!13631)) (Times!2439) (Or!2439) (Equal!2439) (Minus!2439) (Broken!12199 (value!76572 List!13631)) (And!2439) (Div!2439) (LessEqual!2439) (Mod!2439) (Concat!6102) (Not!2439) (Plus!2439) (SpaceValue!2439 (value!76573 List!13631)) (IntegerValue!7319 (value!76574 Int) (text!17522 List!13631)) (StringLiteralValue!7318 (text!17523 List!13631)) (FloatLiteralValue!4879 (text!17524 List!13631)) (BytesLiteralValue!2439 (value!76575 List!13631)) (CommentValue!4879 (value!76576 List!13631)) (StringLiteralValue!7319 (value!76577 List!13631)) (ErrorTokenValue!2439 (msg!2500 List!13631)) )
))
(declare-datatypes ((String!16431 0))(
  ( (String!16432 (value!76578 String)) )
))
(declare-datatypes ((Regex!3663 0))(
  ( (ElementMatch!3663 (c!218415 C!7616)) (Concat!6103 (regOne!7838 Regex!3663) (regTwo!7838 Regex!3663)) (EmptyExpr!3663) (Star!3663 (reg!3992 Regex!3663)) (EmptyLang!3663) (Union!3663 (regOne!7839 Regex!3663) (regTwo!7839 Regex!3663)) )
))
(declare-datatypes ((TokenValueInjection!4538 0))(
  ( (TokenValueInjection!4539 (toValue!3580 Int) (toChars!3439 Int)) )
))
(declare-datatypes ((Rule!4498 0))(
  ( (Rule!4499 (regex!2349 Regex!3663) (tag!2611 String!16431) (isSeparator!2349 Bool) (transformation!2349 TokenValueInjection!4538)) )
))
(declare-datatypes ((Token!4360 0))(
  ( (Token!4361 (value!76579 TokenValue!2439) (rule!4094 Rule!4498) (size!11052 Int) (originalCharacters!3211 List!13630)) )
))
(declare-fun t2!34 () Token!4360)

(declare-fun inv!21 (TokenValue!2439) Bool)

(assert (=> b!1332985 (= e!853899 (and (inv!21 (value!76579 t2!34)) e!853892 tp!385551))))

(declare-fun b!1332986 () Bool)

(declare-fun res!600912 () Bool)

(declare-fun e!853903 () Bool)

(assert (=> b!1332986 (=> res!600912 e!853903)))

(declare-datatypes ((List!13632 0))(
  ( (Nil!13566) (Cons!13566 (h!18967 Rule!4498) (t!119077 List!13632)) )
))
(declare-fun rules!2550 () List!13632)

(declare-fun t1!34 () Token!4360)

(declare-fun contains!2464 (List!13632 Rule!4498) Bool)

(assert (=> b!1332986 (= res!600912 (not (contains!2464 rules!2550 (rule!4094 t1!34))))))

(declare-fun b!1332987 () Bool)

(declare-datatypes ((Unit!19695 0))(
  ( (Unit!19696) )
))
(declare-fun e!853916 () Unit!19695)

(declare-fun Unit!19697 () Unit!19695)

(assert (=> b!1332987 (= e!853916 Unit!19697)))

(declare-fun b!1332988 () Bool)

(declare-fun e!853918 () Unit!19695)

(declare-fun Unit!19698 () Unit!19695)

(assert (=> b!1332988 (= e!853918 Unit!19698)))

(declare-fun lt!441238 () Unit!19695)

(declare-fun lt!441264 () List!13630)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!160 (Regex!3663 List!13630 C!7616) Unit!19695)

(declare-fun head!2355 (List!13630) C!7616)

(assert (=> b!1332988 (= lt!441238 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!160 (regex!2349 (rule!4094 t1!34)) lt!441264 (head!2355 lt!441264)))))

(assert (=> b!1332988 false))

(declare-fun b!1332989 () Bool)

(declare-fun res!600910 () Bool)

(declare-fun e!853915 () Bool)

(assert (=> b!1332989 (=> res!600910 e!853915)))

(assert (=> b!1332989 (= res!600910 (not (contains!2464 rules!2550 (rule!4094 t2!34))))))

(declare-fun b!1332990 () Bool)

(declare-fun e!853917 () Bool)

(declare-fun e!853905 () Bool)

(assert (=> b!1332990 (= e!853917 e!853905)))

(declare-fun res!600896 () Bool)

(assert (=> b!1332990 (=> (not res!600896) (not e!853905))))

(declare-fun lt!441251 () Int)

(assert (=> b!1332990 (= res!600896 (> lt!441251 0))))

(declare-fun lt!441255 () BalanceConc!8876)

(declare-fun size!11053 (BalanceConc!8876) Int)

(assert (=> b!1332990 (= lt!441251 (size!11053 lt!441255))))

(declare-fun charsOf!1321 (Token!4360) BalanceConc!8876)

(assert (=> b!1332990 (= lt!441255 (charsOf!1321 t2!34))))

(declare-fun e!853911 () Bool)

(assert (=> b!1332991 (= e!853911 (and tp!385546 tp!385547))))

(declare-fun b!1332992 () Bool)

(declare-fun res!600894 () Bool)

(assert (=> b!1332992 (=> res!600894 e!853915)))

(declare-fun lt!441244 () Rule!4498)

(assert (=> b!1332992 (= res!600894 (not (contains!2464 rules!2550 lt!441244)))))

(declare-fun b!1332993 () Bool)

(declare-fun res!600903 () Bool)

(assert (=> b!1332993 (=> res!600903 e!853903)))

(declare-datatypes ((List!13633 0))(
  ( (Nil!13567) (Cons!13567 (h!18968 Token!4360) (t!119078 List!13633)) )
))
(declare-datatypes ((IArray!8943 0))(
  ( (IArray!8944 (innerList!4529 List!13633)) )
))
(declare-datatypes ((Conc!4469 0))(
  ( (Node!4469 (left!11649 Conc!4469) (right!11979 Conc!4469) (csize!9168 Int) (cheight!4680 Int)) (Leaf!6840 (xs!7184 IArray!8943) (csize!9169 Int)) (Empty!4469) )
))
(declare-datatypes ((BalanceConc!8878 0))(
  ( (BalanceConc!8879 (c!218416 Conc!4469)) )
))
(declare-datatypes ((tuple2!13214 0))(
  ( (tuple2!13215 (_1!7493 BalanceConc!8878) (_2!7493 BalanceConc!8876)) )
))
(declare-fun lt!441245 () tuple2!13214)

(declare-fun isEmpty!8094 (BalanceConc!8876) Bool)

(assert (=> b!1332993 (= res!600903 (not (isEmpty!8094 (_2!7493 lt!441245))))))

(declare-fun b!1332994 () Bool)

(declare-fun e!853906 () Bool)

(declare-fun e!853900 () Bool)

(declare-fun tp!385554 () Bool)

(assert (=> b!1332994 (= e!853900 (and (inv!21 (value!76579 t1!34)) e!853906 tp!385554))))

(declare-fun e!853912 () Bool)

(declare-fun b!1332995 () Bool)

(declare-fun e!853897 () Bool)

(declare-fun tp!385555 () Bool)

(declare-fun inv!17903 (String!16431) Bool)

(declare-fun inv!17906 (TokenValueInjection!4538) Bool)

(assert (=> b!1332995 (= e!853912 (and tp!385555 (inv!17903 (tag!2611 (h!18967 rules!2550))) (inv!17906 (transformation!2349 (h!18967 rules!2550))) e!853897))))

(declare-fun b!1332996 () Bool)

(declare-fun e!853893 () Bool)

(declare-fun e!853919 () Bool)

(assert (=> b!1332996 (= e!853893 e!853919)))

(declare-fun res!600915 () Bool)

(assert (=> b!1332996 (=> res!600915 e!853919)))

(declare-fun lt!441252 () Regex!3663)

(declare-fun lambda!55670 () Int)

(declare-datatypes ((List!13634 0))(
  ( (Nil!13568) (Cons!13568 (h!18969 Regex!3663) (t!119079 List!13634)) )
))
(declare-fun contains!2465 (List!13634 Regex!3663) Bool)

(declare-fun map!2990 (List!13632 Int) List!13634)

(assert (=> b!1332996 (= res!600915 (not (contains!2465 (map!2990 rules!2550 lambda!55670) lt!441252)))))

(declare-fun lambda!55671 () Int)

(declare-fun getWitness!292 (List!13634 Int) Regex!3663)

(assert (=> b!1332996 (= lt!441252 (getWitness!292 (map!2990 rules!2550 lambda!55670) lambda!55671))))

(declare-fun b!1332997 () Bool)

(declare-fun res!600889 () Bool)

(assert (=> b!1332997 (=> (not res!600889) (not e!853917))))

(declare-fun isEmpty!8095 (List!13632) Bool)

(assert (=> b!1332997 (= res!600889 (not (isEmpty!8095 rules!2550)))))

(declare-fun b!1332998 () Bool)

(declare-fun res!600919 () Bool)

(assert (=> b!1332998 (=> (not res!600919) (not e!853905))))

(declare-fun sepAndNonSepRulesDisjointChars!722 (List!13632 List!13632) Bool)

(assert (=> b!1332998 (= res!600919 (sepAndNonSepRulesDisjointChars!722 rules!2550 rules!2550))))

(declare-fun e!853894 () Bool)

(assert (=> b!1332999 (= e!853919 e!853894)))

(declare-fun res!600921 () Bool)

(assert (=> b!1332999 (=> res!600921 e!853894)))

(declare-fun exists!400 (List!13632 Int) Bool)

(assert (=> b!1332999 (= res!600921 (not (exists!400 rules!2550 lambda!55672)))))

(assert (=> b!1332999 (exists!400 rules!2550 lambda!55672)))

(declare-fun lt!441259 () Unit!19695)

(declare-fun lemmaMapContains!92 (List!13632 Int Regex!3663) Unit!19695)

(assert (=> b!1332999 (= lt!441259 (lemmaMapContains!92 rules!2550 lambda!55670 lt!441252))))

(declare-fun b!1333000 () Bool)

(declare-fun res!600902 () Bool)

(declare-fun e!853890 () Bool)

(assert (=> b!1333000 (=> res!600902 e!853890)))

(declare-fun lt!441262 () List!13630)

(declare-fun matchR!1665 (Regex!3663 List!13630) Bool)

(assert (=> b!1333000 (= res!600902 (not (matchR!1665 (regex!2349 (rule!4094 t2!34)) lt!441262)))))

(declare-fun b!1333001 () Bool)

(declare-fun Unit!19699 () Unit!19695)

(assert (=> b!1333001 (= e!853918 Unit!19699)))

(declare-fun b!1333002 () Bool)

(declare-fun res!600900 () Bool)

(assert (=> b!1333002 (=> (not res!600900) (not e!853917))))

(declare-datatypes ((LexerInterface!2044 0))(
  ( (LexerInterfaceExt!2041 (__x!8708 Int)) (Lexer!2042) )
))
(declare-fun thiss!19762 () LexerInterface!2044)

(declare-fun rulesInvariant!1914 (LexerInterface!2044 List!13632) Bool)

(assert (=> b!1333002 (= res!600900 (rulesInvariant!1914 thiss!19762 rules!2550))))

(declare-fun b!1333003 () Bool)

(declare-fun e!853914 () Bool)

(assert (=> b!1333003 (= e!853890 e!853914)))

(declare-fun res!600917 () Bool)

(assert (=> b!1333003 (=> res!600917 e!853914)))

(declare-fun lt!441253 () Bool)

(assert (=> b!1333003 (= res!600917 lt!441253)))

(declare-fun lt!441260 () Unit!19695)

(assert (=> b!1333003 (= lt!441260 e!853918)))

(declare-fun c!218413 () Bool)

(assert (=> b!1333003 (= c!218413 lt!441253)))

(declare-fun usedCharacters!214 (Regex!3663) List!13630)

(assert (=> b!1333003 (= lt!441253 (not (contains!2463 (usedCharacters!214 (regex!2349 (rule!4094 t1!34))) lt!441241)))))

(declare-fun b!1333004 () Bool)

(declare-fun res!600895 () Bool)

(assert (=> b!1333004 (=> (not res!600895) (not e!853917))))

(declare-fun rulesProduceIndividualToken!1013 (LexerInterface!2044 List!13632 Token!4360) Bool)

(assert (=> b!1333004 (= res!600895 (rulesProduceIndividualToken!1013 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1333005 () Bool)

(declare-fun res!600907 () Bool)

(assert (=> b!1333005 (=> res!600907 e!853903)))

(declare-fun lt!441239 () List!13633)

(declare-fun lt!441243 () BalanceConc!8876)

(declare-datatypes ((tuple2!13216 0))(
  ( (tuple2!13217 (_1!7494 List!13633) (_2!7494 List!13630)) )
))
(declare-fun lexList!582 (LexerInterface!2044 List!13632 List!13630) tuple2!13216)

(declare-fun list!5150 (BalanceConc!8876) List!13630)

(assert (=> b!1333005 (= res!600907 (not (= (lexList!582 thiss!19762 rules!2550 (list!5150 lt!441243)) (tuple2!13217 lt!441239 Nil!13564))))))

(assert (=> b!1333006 (= e!853897 (and tp!385548 tp!385556))))

(declare-fun b!1333007 () Bool)

(declare-fun e!853901 () Bool)

(assert (=> b!1333007 (= e!853905 e!853901)))

(declare-fun res!600899 () Bool)

(assert (=> b!1333007 (=> (not res!600899) (not e!853901))))

(declare-fun lt!441237 () Regex!3663)

(declare-fun prefixMatch!176 (Regex!3663 List!13630) Bool)

(assert (=> b!1333007 (= res!600899 (prefixMatch!176 lt!441237 lt!441234))))

(declare-fun rulesRegex!234 (LexerInterface!2044 List!13632) Regex!3663)

(assert (=> b!1333007 (= lt!441237 (rulesRegex!234 thiss!19762 rules!2550))))

(declare-fun lt!441246 () C!7616)

(declare-fun ++!3466 (List!13630 List!13630) List!13630)

(assert (=> b!1333007 (= lt!441234 (++!3466 lt!441264 (Cons!13564 lt!441246 Nil!13564)))))

(assert (=> b!1333007 (= lt!441246 (apply!3159 lt!441255 0))))

(assert (=> b!1333007 (= lt!441264 (list!5150 lt!441240))))

(assert (=> b!1333007 (= lt!441240 (charsOf!1321 t1!34))))

(declare-fun e!853891 () Bool)

(declare-fun b!1333008 () Bool)

(assert (=> b!1333008 (= e!853891 (or (isSeparator!2349 lt!441244) (isSeparator!2349 (rule!4094 t1!34)) (< 0 lt!441251)))))

(assert (=> b!1333008 (= (regex!2349 lt!441244) lt!441252)))

(declare-fun tp!385553 () Bool)

(declare-fun b!1333009 () Bool)

(assert (=> b!1333009 (= e!853906 (and tp!385553 (inv!17903 (tag!2611 (rule!4094 t1!34))) (inv!17906 (transformation!2349 (rule!4094 t1!34))) e!853911))))

(declare-fun b!1333010 () Bool)

(declare-fun tp!385545 () Bool)

(declare-fun e!853896 () Bool)

(assert (=> b!1333010 (= e!853892 (and tp!385545 (inv!17903 (tag!2611 (rule!4094 t2!34))) (inv!17906 (transformation!2349 (rule!4094 t2!34))) e!853896))))

(declare-fun b!1333011 () Bool)

(declare-fun res!600888 () Bool)

(assert (=> b!1333011 (=> res!600888 e!853908)))

(declare-fun lt!441242 () List!13630)

(assert (=> b!1333011 (= res!600888 (not (matchR!1665 lt!441237 lt!441242)))))

(declare-fun b!1333012 () Bool)

(declare-fun res!600904 () Bool)

(declare-fun e!853895 () Bool)

(assert (=> b!1333012 (=> res!600904 e!853895)))

(declare-fun lt!441254 () List!13633)

(declare-fun lt!441247 () BalanceConc!8876)

(assert (=> b!1333012 (= res!600904 (not (= (lexList!582 thiss!19762 rules!2550 (list!5150 lt!441247)) (tuple2!13217 lt!441254 Nil!13564))))))

(declare-fun b!1333013 () Bool)

(declare-fun res!600916 () Bool)

(assert (=> b!1333013 (=> res!600916 e!853895)))

(declare-fun lt!441261 () tuple2!13214)

(assert (=> b!1333013 (= res!600916 (not (isEmpty!8094 (_2!7493 lt!441261))))))

(declare-fun b!1333014 () Bool)

(declare-fun res!600914 () Bool)

(assert (=> b!1333014 (=> res!600914 e!853908)))

(assert (=> b!1333014 (= res!600914 (not (contains!2463 lt!441242 lt!441241)))))

(assert (=> b!1333015 (= e!853896 (and tp!385549 tp!385552))))

(declare-fun b!1333016 () Bool)

(declare-fun e!853910 () Bool)

(assert (=> b!1333016 (= e!853910 e!853907)))

(declare-fun res!600901 () Bool)

(assert (=> b!1333016 (=> res!600901 e!853907)))

(declare-fun getSuffix!519 (List!13630 List!13630) List!13630)

(assert (=> b!1333016 (= res!600901 (not (= lt!441242 (++!3466 lt!441234 (getSuffix!519 lt!441242 lt!441234)))))))

(declare-fun lambda!55669 () Int)

(declare-fun pickWitness!126 (Int) List!13630)

(assert (=> b!1333016 (= lt!441242 (pickWitness!126 lambda!55669))))

(declare-fun res!600891 () Bool)

(assert (=> start!118638 (=> (not res!600891) (not e!853917))))

(get-info :version)

(assert (=> start!118638 (= res!600891 ((_ is Lexer!2042) thiss!19762))))

(assert (=> start!118638 e!853917))

(assert (=> start!118638 true))

(declare-fun e!853920 () Bool)

(assert (=> start!118638 e!853920))

(declare-fun inv!17907 (Token!4360) Bool)

(assert (=> start!118638 (and (inv!17907 t1!34) e!853900)))

(assert (=> start!118638 (and (inv!17907 t2!34) e!853899)))

(declare-fun b!1333017 () Bool)

(declare-fun res!600920 () Bool)

(assert (=> b!1333017 (=> (not res!600920) (not e!853917))))

(assert (=> b!1333017 (= res!600920 (rulesProduceIndividualToken!1013 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1333018 () Bool)

(declare-fun Unit!19700 () Unit!19695)

(assert (=> b!1333018 (= e!853916 Unit!19700)))

(declare-fun lt!441236 () Unit!19695)

(assert (=> b!1333018 (= lt!441236 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!160 (regex!2349 (rule!4094 t2!34)) lt!441262 (head!2355 lt!441262)))))

(assert (=> b!1333018 false))

(declare-fun b!1333019 () Bool)

(declare-fun res!600897 () Bool)

(assert (=> b!1333019 (=> (not res!600897) (not e!853905))))

(declare-fun separableTokensPredicate!327 (LexerInterface!2044 Token!4360 Token!4360 List!13632) Bool)

(assert (=> b!1333019 (= res!600897 (not (separableTokensPredicate!327 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1333020 () Bool)

(declare-fun res!600893 () Bool)

(assert (=> b!1333020 (=> (not res!600893) (not e!853917))))

(assert (=> b!1333020 (= res!600893 (not (= (isSeparator!2349 (rule!4094 t1!34)) (isSeparator!2349 (rule!4094 t2!34)))))))

(declare-fun b!1333021 () Bool)

(assert (=> b!1333021 (= e!853914 e!853891)))

(declare-fun res!600906 () Bool)

(assert (=> b!1333021 (=> res!600906 e!853891)))

(declare-fun lt!441258 () Bool)

(assert (=> b!1333021 (= res!600906 lt!441258)))

(declare-fun lt!441235 () Unit!19695)

(assert (=> b!1333021 (= lt!441235 e!853916)))

(declare-fun c!218412 () Bool)

(assert (=> b!1333021 (= c!218412 lt!441258)))

(assert (=> b!1333021 (= lt!441258 (not (contains!2463 (usedCharacters!214 (regex!2349 (rule!4094 t2!34))) lt!441246)))))

(declare-fun b!1333022 () Bool)

(declare-fun res!600887 () Bool)

(assert (=> b!1333022 (=> res!600887 e!853908)))

(assert (=> b!1333022 (= res!600887 (not (contains!2463 lt!441234 lt!441246)))))

(declare-fun b!1333023 () Bool)

(assert (=> b!1333023 (= e!853903 e!853895)))

(declare-fun res!600908 () Bool)

(assert (=> b!1333023 (=> res!600908 e!853895)))

(declare-fun list!5151 (BalanceConc!8878) List!13633)

(assert (=> b!1333023 (= res!600908 (not (= (list!5151 (_1!7493 lt!441261)) lt!441254)))))

(assert (=> b!1333023 (= lt!441254 (Cons!13567 t2!34 Nil!13567))))

(declare-fun lex!879 (LexerInterface!2044 List!13632 BalanceConc!8876) tuple2!13214)

(assert (=> b!1333023 (= lt!441261 (lex!879 thiss!19762 rules!2550 lt!441247))))

(declare-fun print!818 (LexerInterface!2044 BalanceConc!8878) BalanceConc!8876)

(declare-fun singletonSeq!948 (Token!4360) BalanceConc!8878)

(assert (=> b!1333023 (= lt!441247 (print!818 thiss!19762 (singletonSeq!948 t2!34)))))

(declare-fun b!1333024 () Bool)

(assert (=> b!1333024 (= e!853894 e!853903)))

(declare-fun res!600913 () Bool)

(assert (=> b!1333024 (=> res!600913 e!853903)))

(assert (=> b!1333024 (= res!600913 (not (= (list!5151 (_1!7493 lt!441245)) lt!441239)))))

(assert (=> b!1333024 (= lt!441239 (Cons!13567 t1!34 Nil!13567))))

(assert (=> b!1333024 (= lt!441245 (lex!879 thiss!19762 rules!2550 lt!441243))))

(assert (=> b!1333024 (= lt!441243 (print!818 thiss!19762 (singletonSeq!948 t1!34)))))

(declare-fun getWitness!293 (List!13632 Int) Rule!4498)

(assert (=> b!1333024 (= lt!441244 (getWitness!293 rules!2550 lambda!55672))))

(declare-fun b!1333025 () Bool)

(assert (=> b!1333025 (= e!853895 e!853915)))

(declare-fun res!600898 () Bool)

(assert (=> b!1333025 (=> res!600898 e!853915)))

(declare-datatypes ((tuple2!13218 0))(
  ( (tuple2!13219 (_1!7495 Token!4360) (_2!7495 List!13630)) )
))
(declare-datatypes ((Option!2620 0))(
  ( (None!2619) (Some!2619 (v!21256 tuple2!13218)) )
))
(declare-fun maxPrefix!1054 (LexerInterface!2044 List!13632 List!13630) Option!2620)

(assert (=> b!1333025 (= res!600898 (not (= (maxPrefix!1054 thiss!19762 rules!2550 lt!441262) (Some!2619 (tuple2!13219 t2!34 Nil!13564)))))))

(assert (=> b!1333025 (= lt!441262 (list!5150 lt!441255))))

(declare-fun b!1333026 () Bool)

(declare-fun res!600905 () Bool)

(assert (=> b!1333026 (=> res!600905 e!853903)))

(assert (=> b!1333026 (= res!600905 (not (= (maxPrefix!1054 thiss!19762 rules!2550 lt!441264) (Some!2619 (tuple2!13219 t1!34 Nil!13564)))))))

(assert (=> b!1333027 (= e!853908 e!853893)))

(declare-fun res!600890 () Bool)

(assert (=> b!1333027 (=> res!600890 e!853893)))

(declare-fun exists!401 (List!13634 Int) Bool)

(assert (=> b!1333027 (= res!600890 (not (exists!401 (map!2990 rules!2550 lambda!55670) lambda!55671)))))

(declare-fun lt!441257 () List!13634)

(assert (=> b!1333027 (exists!401 lt!441257 lambda!55671)))

(declare-fun lt!441249 () Unit!19695)

(declare-fun matchRGenUnionSpec!100 (Regex!3663 List!13634 List!13630) Unit!19695)

(assert (=> b!1333027 (= lt!441249 (matchRGenUnionSpec!100 lt!441237 lt!441257 lt!441242))))

(assert (=> b!1333027 (= lt!441257 (map!2990 rules!2550 lambda!55670))))

(declare-fun b!1333028 () Bool)

(declare-fun tp!385550 () Bool)

(assert (=> b!1333028 (= e!853920 (and e!853912 tp!385550))))

(assert (=> b!1333029 (= e!853901 (not e!853910))))

(declare-fun res!600909 () Bool)

(assert (=> b!1333029 (=> res!600909 e!853910)))

(declare-fun Exists!821 (Int) Bool)

(assert (=> b!1333029 (= res!600909 (not (Exists!821 lambda!55669)))))

(assert (=> b!1333029 (Exists!821 lambda!55669)))

(declare-fun lt!441248 () Unit!19695)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!139 (Regex!3663 List!13630) Unit!19695)

(assert (=> b!1333029 (= lt!441248 (lemmaPrefixMatchThenExistsStringThatMatches!139 lt!441237 lt!441234))))

(assert (=> b!1333030 (= e!853915 e!853890)))

(declare-fun res!600911 () Bool)

(assert (=> b!1333030 (=> res!600911 e!853890)))

(assert (=> b!1333030 (= res!600911 (not (matchR!1665 (regex!2349 (rule!4094 t1!34)) lt!441264)))))

(declare-fun lt!441250 () Unit!19695)

(declare-fun forallContained!600 (List!13632 Int Rule!4498) Unit!19695)

(assert (=> b!1333030 (= lt!441250 (forallContained!600 rules!2550 lambda!55673 (rule!4094 t2!34)))))

(declare-fun lt!441263 () Unit!19695)

(assert (=> b!1333030 (= lt!441263 (forallContained!600 rules!2550 lambda!55673 (rule!4094 t1!34)))))

(declare-fun lt!441256 () Unit!19695)

(assert (=> b!1333030 (= lt!441256 (forallContained!600 rules!2550 lambda!55673 lt!441244))))

(declare-fun b!1333031 () Bool)

(declare-fun res!600892 () Bool)

(assert (=> b!1333031 (=> res!600892 e!853908)))

(assert (=> b!1333031 (= res!600892 (not (contains!2463 lt!441242 lt!441246)))))

(assert (= (and start!118638 res!600891) b!1332997))

(assert (= (and b!1332997 res!600889) b!1333002))

(assert (= (and b!1333002 res!600900) b!1333004))

(assert (= (and b!1333004 res!600895) b!1333017))

(assert (= (and b!1333017 res!600920) b!1333020))

(assert (= (and b!1333020 res!600893) b!1332990))

(assert (= (and b!1332990 res!600896) b!1332998))

(assert (= (and b!1332998 res!600919) b!1333019))

(assert (= (and b!1333019 res!600897) b!1333007))

(assert (= (and b!1333007 res!600899) b!1333029))

(assert (= (and b!1333029 (not res!600909)) b!1333016))

(assert (= (and b!1333016 (not res!600901)) b!1332984))

(assert (= (and b!1332984 (not res!600918)) b!1333014))

(assert (= (and b!1333014 (not res!600914)) b!1333022))

(assert (= (and b!1333022 (not res!600887)) b!1333031))

(assert (= (and b!1333031 (not res!600892)) b!1333011))

(assert (= (and b!1333011 (not res!600888)) b!1333027))

(assert (= (and b!1333027 (not res!600890)) b!1332996))

(assert (= (and b!1332996 (not res!600915)) b!1332999))

(assert (= (and b!1332999 (not res!600921)) b!1333024))

(assert (= (and b!1333024 (not res!600913)) b!1332993))

(assert (= (and b!1332993 (not res!600903)) b!1333005))

(assert (= (and b!1333005 (not res!600907)) b!1333026))

(assert (= (and b!1333026 (not res!600905)) b!1332986))

(assert (= (and b!1332986 (not res!600912)) b!1333023))

(assert (= (and b!1333023 (not res!600908)) b!1333013))

(assert (= (and b!1333013 (not res!600916)) b!1333012))

(assert (= (and b!1333012 (not res!600904)) b!1333025))

(assert (= (and b!1333025 (not res!600898)) b!1332989))

(assert (= (and b!1332989 (not res!600910)) b!1332992))

(assert (= (and b!1332992 (not res!600894)) b!1333030))

(assert (= (and b!1333030 (not res!600911)) b!1333000))

(assert (= (and b!1333000 (not res!600902)) b!1333003))

(assert (= (and b!1333003 c!218413) b!1332988))

(assert (= (and b!1333003 (not c!218413)) b!1333001))

(assert (= (and b!1333003 (not res!600917)) b!1333021))

(assert (= (and b!1333021 c!218412) b!1333018))

(assert (= (and b!1333021 (not c!218412)) b!1332987))

(assert (= (and b!1333021 (not res!600906)) b!1333008))

(assert (= b!1332995 b!1333006))

(assert (= b!1333028 b!1332995))

(assert (= (and start!118638 ((_ is Cons!13566) rules!2550)) b!1333028))

(assert (= b!1333009 b!1332991))

(assert (= b!1332994 b!1333009))

(assert (= start!118638 b!1332994))

(assert (= b!1333010 b!1333015))

(assert (= b!1332985 b!1333010))

(assert (= start!118638 b!1332985))

(declare-fun m!1490365 () Bool)

(assert (=> b!1332992 m!1490365))

(declare-fun m!1490367 () Bool)

(assert (=> b!1332997 m!1490367))

(declare-fun m!1490369 () Bool)

(assert (=> b!1333013 m!1490369))

(declare-fun m!1490371 () Bool)

(assert (=> b!1333016 m!1490371))

(assert (=> b!1333016 m!1490371))

(declare-fun m!1490373 () Bool)

(assert (=> b!1333016 m!1490373))

(declare-fun m!1490375 () Bool)

(assert (=> b!1333016 m!1490375))

(declare-fun m!1490377 () Bool)

(assert (=> b!1333030 m!1490377))

(declare-fun m!1490379 () Bool)

(assert (=> b!1333030 m!1490379))

(declare-fun m!1490381 () Bool)

(assert (=> b!1333030 m!1490381))

(declare-fun m!1490383 () Bool)

(assert (=> b!1333030 m!1490383))

(declare-fun m!1490385 () Bool)

(assert (=> b!1332990 m!1490385))

(declare-fun m!1490387 () Bool)

(assert (=> b!1332990 m!1490387))

(declare-fun m!1490389 () Bool)

(assert (=> b!1333000 m!1490389))

(declare-fun m!1490391 () Bool)

(assert (=> b!1333031 m!1490391))

(declare-fun m!1490393 () Bool)

(assert (=> b!1333026 m!1490393))

(declare-fun m!1490395 () Bool)

(assert (=> b!1332994 m!1490395))

(declare-fun m!1490397 () Bool)

(assert (=> b!1333019 m!1490397))

(declare-fun m!1490399 () Bool)

(assert (=> b!1332999 m!1490399))

(assert (=> b!1332999 m!1490399))

(declare-fun m!1490401 () Bool)

(assert (=> b!1332999 m!1490401))

(declare-fun m!1490403 () Bool)

(assert (=> b!1333017 m!1490403))

(declare-fun m!1490405 () Bool)

(assert (=> b!1332986 m!1490405))

(declare-fun m!1490407 () Bool)

(assert (=> b!1332998 m!1490407))

(declare-fun m!1490409 () Bool)

(assert (=> b!1332988 m!1490409))

(assert (=> b!1332988 m!1490409))

(declare-fun m!1490411 () Bool)

(assert (=> b!1332988 m!1490411))

(declare-fun m!1490413 () Bool)

(assert (=> b!1332996 m!1490413))

(assert (=> b!1332996 m!1490413))

(declare-fun m!1490415 () Bool)

(assert (=> b!1332996 m!1490415))

(assert (=> b!1332996 m!1490413))

(assert (=> b!1332996 m!1490413))

(declare-fun m!1490417 () Bool)

(assert (=> b!1332996 m!1490417))

(declare-fun m!1490419 () Bool)

(assert (=> b!1333002 m!1490419))

(declare-fun m!1490421 () Bool)

(assert (=> b!1333010 m!1490421))

(declare-fun m!1490423 () Bool)

(assert (=> b!1333010 m!1490423))

(declare-fun m!1490425 () Bool)

(assert (=> b!1333003 m!1490425))

(assert (=> b!1333003 m!1490425))

(declare-fun m!1490427 () Bool)

(assert (=> b!1333003 m!1490427))

(declare-fun m!1490429 () Bool)

(assert (=> b!1332985 m!1490429))

(declare-fun m!1490431 () Bool)

(assert (=> b!1333007 m!1490431))

(declare-fun m!1490433 () Bool)

(assert (=> b!1333007 m!1490433))

(declare-fun m!1490435 () Bool)

(assert (=> b!1333007 m!1490435))

(declare-fun m!1490437 () Bool)

(assert (=> b!1333007 m!1490437))

(declare-fun m!1490439 () Bool)

(assert (=> b!1333007 m!1490439))

(declare-fun m!1490441 () Bool)

(assert (=> b!1333007 m!1490441))

(assert (=> b!1333027 m!1490413))

(declare-fun m!1490443 () Bool)

(assert (=> b!1333027 m!1490443))

(assert (=> b!1333027 m!1490413))

(declare-fun m!1490445 () Bool)

(assert (=> b!1333027 m!1490445))

(assert (=> b!1333027 m!1490413))

(declare-fun m!1490447 () Bool)

(assert (=> b!1333027 m!1490447))

(declare-fun m!1490449 () Bool)

(assert (=> b!1333014 m!1490449))

(declare-fun m!1490451 () Bool)

(assert (=> b!1332993 m!1490451))

(declare-fun m!1490453 () Bool)

(assert (=> b!1333011 m!1490453))

(declare-fun m!1490455 () Bool)

(assert (=> b!1332989 m!1490455))

(declare-fun m!1490457 () Bool)

(assert (=> start!118638 m!1490457))

(declare-fun m!1490459 () Bool)

(assert (=> start!118638 m!1490459))

(declare-fun m!1490461 () Bool)

(assert (=> b!1333023 m!1490461))

(declare-fun m!1490463 () Bool)

(assert (=> b!1333023 m!1490463))

(declare-fun m!1490465 () Bool)

(assert (=> b!1333023 m!1490465))

(assert (=> b!1333023 m!1490465))

(declare-fun m!1490467 () Bool)

(assert (=> b!1333023 m!1490467))

(declare-fun m!1490469 () Bool)

(assert (=> b!1332984 m!1490469))

(declare-fun m!1490471 () Bool)

(assert (=> b!1332984 m!1490471))

(declare-fun m!1490473 () Bool)

(assert (=> b!1333022 m!1490473))

(declare-fun m!1490475 () Bool)

(assert (=> b!1333025 m!1490475))

(declare-fun m!1490477 () Bool)

(assert (=> b!1333025 m!1490477))

(declare-fun m!1490479 () Bool)

(assert (=> b!1333021 m!1490479))

(assert (=> b!1333021 m!1490479))

(declare-fun m!1490481 () Bool)

(assert (=> b!1333021 m!1490481))

(declare-fun m!1490483 () Bool)

(assert (=> b!1333005 m!1490483))

(assert (=> b!1333005 m!1490483))

(declare-fun m!1490485 () Bool)

(assert (=> b!1333005 m!1490485))

(declare-fun m!1490487 () Bool)

(assert (=> b!1333029 m!1490487))

(assert (=> b!1333029 m!1490487))

(declare-fun m!1490489 () Bool)

(assert (=> b!1333029 m!1490489))

(declare-fun m!1490491 () Bool)

(assert (=> b!1332995 m!1490491))

(declare-fun m!1490493 () Bool)

(assert (=> b!1332995 m!1490493))

(declare-fun m!1490495 () Bool)

(assert (=> b!1333024 m!1490495))

(declare-fun m!1490497 () Bool)

(assert (=> b!1333024 m!1490497))

(declare-fun m!1490499 () Bool)

(assert (=> b!1333024 m!1490499))

(assert (=> b!1333024 m!1490497))

(declare-fun m!1490501 () Bool)

(assert (=> b!1333024 m!1490501))

(declare-fun m!1490503 () Bool)

(assert (=> b!1333024 m!1490503))

(declare-fun m!1490505 () Bool)

(assert (=> b!1333004 m!1490505))

(declare-fun m!1490507 () Bool)

(assert (=> b!1333012 m!1490507))

(assert (=> b!1333012 m!1490507))

(declare-fun m!1490509 () Bool)

(assert (=> b!1333012 m!1490509))

(declare-fun m!1490511 () Bool)

(assert (=> b!1333009 m!1490511))

(declare-fun m!1490513 () Bool)

(assert (=> b!1333009 m!1490513))

(declare-fun m!1490515 () Bool)

(assert (=> b!1333018 m!1490515))

(assert (=> b!1333018 m!1490515))

(declare-fun m!1490517 () Bool)

(assert (=> b!1333018 m!1490517))

(check-sat (not b!1333026) (not b!1333022) (not b!1333013) (not b_next!33001) (not b!1333031) (not b!1333019) b_and!89063 (not b!1333023) (not b!1332984) (not b!1333017) (not b!1333007) (not b!1332995) b_and!89061 (not b!1333024) (not b!1333012) (not b!1332986) (not b!1332996) (not b!1332990) (not b_next!32997) (not b!1333030) (not b!1333027) (not b!1333021) (not b!1333028) (not b!1333025) (not b!1333029) b_and!89055 (not b!1333014) (not start!118638) (not b!1332992) (not b!1333003) (not b!1332993) b_and!89057 (not b_next!32999) (not b!1332985) (not b!1333010) (not b_next!33005) (not b!1333009) (not b!1332998) (not b!1333011) (not b!1333018) (not b!1332997) (not b!1332989) (not b!1332988) (not b!1332999) (not b_next!33003) (not b!1333004) (not b!1333016) b_and!89065 (not b!1333000) b_and!89059 (not b!1332994) (not b_next!32995) (not b!1333002) (not b!1333005))
(check-sat b_and!89061 (not b_next!32997) b_and!89055 (not b_next!33001) (not b_next!33005) b_and!89063 (not b_next!33003) b_and!89065 b_and!89059 (not b_next!32995) b_and!89057 (not b_next!32999))
