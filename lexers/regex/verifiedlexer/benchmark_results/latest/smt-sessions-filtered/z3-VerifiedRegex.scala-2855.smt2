; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166398 () Bool)

(assert start!166398)

(declare-fun b!1705355 () Bool)

(declare-fun b_free!45963 () Bool)

(declare-fun b_next!46667 () Bool)

(assert (=> b!1705355 (= b_free!45963 (not b_next!46667))))

(declare-fun tp!486864 () Bool)

(declare-fun b_and!123153 () Bool)

(assert (=> b!1705355 (= tp!486864 b_and!123153)))

(declare-fun b_free!45965 () Bool)

(declare-fun b_next!46669 () Bool)

(assert (=> b!1705355 (= b_free!45965 (not b_next!46669))))

(declare-fun tp!486860 () Bool)

(declare-fun b_and!123155 () Bool)

(assert (=> b!1705355 (= tp!486860 b_and!123155)))

(declare-fun b!1705352 () Bool)

(declare-fun b_free!45967 () Bool)

(declare-fun b_next!46671 () Bool)

(assert (=> b!1705352 (= b_free!45967 (not b_next!46671))))

(declare-fun tp!486866 () Bool)

(declare-fun b_and!123157 () Bool)

(assert (=> b!1705352 (= tp!486866 b_and!123157)))

(declare-fun b_free!45969 () Bool)

(declare-fun b_next!46673 () Bool)

(assert (=> b!1705352 (= b_free!45969 (not b_next!46673))))

(declare-fun tp!486863 () Bool)

(declare-fun b_and!123159 () Bool)

(assert (=> b!1705352 (= tp!486863 b_and!123159)))

(declare-fun b!1705354 () Bool)

(declare-fun b_free!45971 () Bool)

(declare-fun b_next!46675 () Bool)

(assert (=> b!1705354 (= b_free!45971 (not b_next!46675))))

(declare-fun tp!486870 () Bool)

(declare-fun b_and!123161 () Bool)

(assert (=> b!1705354 (= tp!486870 b_and!123161)))

(declare-fun b_free!45973 () Bool)

(declare-fun b_next!46677 () Bool)

(assert (=> b!1705354 (= b_free!45973 (not b_next!46677))))

(declare-fun tp!486862 () Bool)

(declare-fun b_and!123163 () Bool)

(assert (=> b!1705354 (= tp!486862 b_and!123163)))

(declare-fun res!764391 () Bool)

(declare-fun e!1090663 () Bool)

(assert (=> start!166398 (=> (not res!764391) (not e!1090663))))

(declare-datatypes ((LexerInterface!2900 0))(
  ( (LexerInterfaceExt!2897 (__x!12024 Int)) (Lexer!2898) )
))
(declare-fun thiss!24550 () LexerInterface!2900)

(get-info :version)

(assert (=> start!166398 (= res!764391 ((_ is Lexer!2898) thiss!24550))))

(assert (=> start!166398 e!1090663))

(assert (=> start!166398 true))

(declare-fun e!1090664 () Bool)

(assert (=> start!166398 e!1090664))

(declare-fun e!1090660 () Bool)

(assert (=> start!166398 e!1090660))

(declare-datatypes ((List!18636 0))(
  ( (Nil!18566) (Cons!18566 (h!23967 (_ BitVec 16)) (t!157921 List!18636)) )
))
(declare-datatypes ((TokenValue!3361 0))(
  ( (FloatLiteralValue!6722 (text!23972 List!18636)) (TokenValueExt!3360 (__x!12025 Int)) (Broken!16805 (value!102870 List!18636)) (Object!3430) (End!3361) (Def!3361) (Underscore!3361) (Match!3361) (Else!3361) (Error!3361) (Case!3361) (If!3361) (Extends!3361) (Abstract!3361) (Class!3361) (Val!3361) (DelimiterValue!6722 (del!3421 List!18636)) (KeywordValue!3367 (value!102871 List!18636)) (CommentValue!6722 (value!102872 List!18636)) (WhitespaceValue!6722 (value!102873 List!18636)) (IndentationValue!3361 (value!102874 List!18636)) (String!21136) (Int32!3361) (Broken!16806 (value!102875 List!18636)) (Boolean!3362) (Unit!32422) (OperatorValue!3364 (op!3421 List!18636)) (IdentifierValue!6722 (value!102876 List!18636)) (IdentifierValue!6723 (value!102877 List!18636)) (WhitespaceValue!6723 (value!102878 List!18636)) (True!6722) (False!6722) (Broken!16807 (value!102879 List!18636)) (Broken!16808 (value!102880 List!18636)) (True!6723) (RightBrace!3361) (RightBracket!3361) (Colon!3361) (Null!3361) (Comma!3361) (LeftBracket!3361) (False!6723) (LeftBrace!3361) (ImaginaryLiteralValue!3361 (text!23973 List!18636)) (StringLiteralValue!10083 (value!102881 List!18636)) (EOFValue!3361 (value!102882 List!18636)) (IdentValue!3361 (value!102883 List!18636)) (DelimiterValue!6723 (value!102884 List!18636)) (DedentValue!3361 (value!102885 List!18636)) (NewLineValue!3361 (value!102886 List!18636)) (IntegerValue!10083 (value!102887 (_ BitVec 32)) (text!23974 List!18636)) (IntegerValue!10084 (value!102888 Int) (text!23975 List!18636)) (Times!3361) (Or!3361) (Equal!3361) (Minus!3361) (Broken!16809 (value!102889 List!18636)) (And!3361) (Div!3361) (LessEqual!3361) (Mod!3361) (Concat!7960) (Not!3361) (Plus!3361) (SpaceValue!3361 (value!102890 List!18636)) (IntegerValue!10085 (value!102891 Int) (text!23976 List!18636)) (StringLiteralValue!10084 (text!23977 List!18636)) (FloatLiteralValue!6723 (text!23978 List!18636)) (BytesLiteralValue!3361 (value!102892 List!18636)) (CommentValue!6723 (value!102893 List!18636)) (StringLiteralValue!10085 (value!102894 List!18636)) (ErrorTokenValue!3361 (msg!3422 List!18636)) )
))
(declare-datatypes ((C!9372 0))(
  ( (C!9373 (val!5282 Int)) )
))
(declare-datatypes ((List!18637 0))(
  ( (Nil!18567) (Cons!18567 (h!23968 C!9372) (t!157922 List!18637)) )
))
(declare-datatypes ((Regex!4599 0))(
  ( (ElementMatch!4599 (c!279618 C!9372)) (Concat!7961 (regOne!9710 Regex!4599) (regTwo!9710 Regex!4599)) (EmptyExpr!4599) (Star!4599 (reg!4928 Regex!4599)) (EmptyLang!4599) (Union!4599 (regOne!9711 Regex!4599) (regTwo!9711 Regex!4599)) )
))
(declare-datatypes ((String!21137 0))(
  ( (String!21138 (value!102895 String)) )
))
(declare-datatypes ((IArray!12367 0))(
  ( (IArray!12368 (innerList!6241 List!18637)) )
))
(declare-datatypes ((Conc!6181 0))(
  ( (Node!6181 (left!14826 Conc!6181) (right!15156 Conc!6181) (csize!12592 Int) (cheight!6392 Int)) (Leaf!9037 (xs!9057 IArray!12367) (csize!12593 Int)) (Empty!6181) )
))
(declare-datatypes ((BalanceConc!12306 0))(
  ( (BalanceConc!12307 (c!279619 Conc!6181)) )
))
(declare-datatypes ((TokenValueInjection!6382 0))(
  ( (TokenValueInjection!6383 (toValue!4766 Int) (toChars!4625 Int)) )
))
(declare-datatypes ((Rule!6342 0))(
  ( (Rule!6343 (regex!3271 Regex!4599) (tag!3567 String!21137) (isSeparator!3271 Bool) (transformation!3271 TokenValueInjection!6382)) )
))
(declare-datatypes ((Token!6108 0))(
  ( (Token!6109 (value!102896 TokenValue!3361) (rule!5203 Rule!6342) (size!14794 Int) (originalCharacters!4085 List!18637)) )
))
(declare-fun token!523 () Token!6108)

(declare-fun e!1090656 () Bool)

(declare-fun inv!23954 (Token!6108) Bool)

(assert (=> start!166398 (and (inv!23954 token!523) e!1090656)))

(declare-fun b!1705344 () Bool)

(declare-fun rule!422 () Rule!6342)

(declare-fun tp!486865 () Bool)

(declare-fun e!1090654 () Bool)

(declare-fun inv!23951 (String!21137) Bool)

(declare-fun inv!23955 (TokenValueInjection!6382) Bool)

(assert (=> b!1705344 (= e!1090660 (and tp!486865 (inv!23951 (tag!3567 rule!422)) (inv!23955 (transformation!3271 rule!422)) e!1090654))))

(declare-fun e!1090653 () Bool)

(declare-fun tp!486867 () Bool)

(declare-fun b!1705345 () Bool)

(declare-fun inv!21 (TokenValue!3361) Bool)

(assert (=> b!1705345 (= e!1090656 (and (inv!21 (value!102896 token!523)) e!1090653 tp!486867))))

(declare-fun b!1705346 () Bool)

(declare-datatypes ((List!18638 0))(
  ( (Nil!18568) (Cons!18568 (h!23969 Rule!6342) (t!157923 List!18638)) )
))
(declare-fun rules!3447 () List!18638)

(declare-fun rulesValidInductive!1064 (LexerInterface!2900 List!18638) Bool)

(assert (=> b!1705346 (= e!1090663 (not (rulesValidInductive!1064 thiss!24550 rules!3447)))))

(declare-fun b!1705347 () Bool)

(declare-fun res!764393 () Bool)

(assert (=> b!1705347 (=> (not res!764393) (not e!1090663))))

(declare-fun rulesInvariant!2569 (LexerInterface!2900 List!18638) Bool)

(assert (=> b!1705347 (= res!764393 (rulesInvariant!2569 thiss!24550 rules!3447))))

(declare-fun b!1705348 () Bool)

(declare-fun res!764390 () Bool)

(assert (=> b!1705348 (=> (not res!764390) (not e!1090663))))

(declare-fun isEmpty!11655 (List!18638) Bool)

(assert (=> b!1705348 (= res!764390 (not (isEmpty!11655 rules!3447)))))

(declare-fun b!1705349 () Bool)

(declare-fun e!1090652 () Bool)

(declare-fun tp!486868 () Bool)

(assert (=> b!1705349 (= e!1090664 (and e!1090652 tp!486868))))

(declare-fun b!1705350 () Bool)

(declare-fun res!764389 () Bool)

(assert (=> b!1705350 (=> (not res!764389) (not e!1090663))))

(declare-fun contains!3287 (List!18638 Rule!6342) Bool)

(assert (=> b!1705350 (= res!764389 (contains!3287 rules!3447 rule!422))))

(declare-fun b!1705351 () Bool)

(declare-fun res!764392 () Bool)

(assert (=> b!1705351 (=> (not res!764392) (not e!1090663))))

(declare-datatypes ((tuple2!18322 0))(
  ( (tuple2!18323 (_1!10563 Token!6108) (_2!10563 List!18637)) )
))
(declare-datatypes ((Option!3595 0))(
  ( (None!3594) (Some!3594 (v!24965 tuple2!18322)) )
))
(declare-fun isDefined!2940 (Option!3595) Bool)

(declare-fun maxPrefix!1454 (LexerInterface!2900 List!18638 List!18637) Option!3595)

(declare-fun list!7485 (BalanceConc!12306) List!18637)

(declare-fun charsOf!1920 (Token!6108) BalanceConc!12306)

(assert (=> b!1705351 (= res!764392 (isDefined!2940 (maxPrefix!1454 thiss!24550 rules!3447 (list!7485 (charsOf!1920 token!523)))))))

(assert (=> b!1705352 (= e!1090654 (and tp!486866 tp!486863))))

(declare-fun tp!486861 () Bool)

(declare-fun b!1705353 () Bool)

(declare-fun e!1090661 () Bool)

(assert (=> b!1705353 (= e!1090652 (and tp!486861 (inv!23951 (tag!3567 (h!23969 rules!3447))) (inv!23955 (transformation!3271 (h!23969 rules!3447))) e!1090661))))

(declare-fun e!1090659 () Bool)

(assert (=> b!1705354 (= e!1090659 (and tp!486870 tp!486862))))

(assert (=> b!1705355 (= e!1090661 (and tp!486864 tp!486860))))

(declare-fun tp!486869 () Bool)

(declare-fun b!1705356 () Bool)

(assert (=> b!1705356 (= e!1090653 (and tp!486869 (inv!23951 (tag!3567 (rule!5203 token!523))) (inv!23955 (transformation!3271 (rule!5203 token!523))) e!1090659))))

(assert (= (and start!166398 res!764391) b!1705348))

(assert (= (and b!1705348 res!764390) b!1705347))

(assert (= (and b!1705347 res!764393) b!1705350))

(assert (= (and b!1705350 res!764389) b!1705351))

(assert (= (and b!1705351 res!764392) b!1705346))

(assert (= b!1705353 b!1705355))

(assert (= b!1705349 b!1705353))

(assert (= (and start!166398 ((_ is Cons!18568) rules!3447)) b!1705349))

(assert (= b!1705344 b!1705352))

(assert (= start!166398 b!1705344))

(assert (= b!1705356 b!1705354))

(assert (= b!1705345 b!1705356))

(assert (= start!166398 b!1705345))

(declare-fun m!2109257 () Bool)

(assert (=> b!1705344 m!2109257))

(declare-fun m!2109259 () Bool)

(assert (=> b!1705344 m!2109259))

(declare-fun m!2109261 () Bool)

(assert (=> b!1705345 m!2109261))

(declare-fun m!2109263 () Bool)

(assert (=> b!1705346 m!2109263))

(declare-fun m!2109265 () Bool)

(assert (=> start!166398 m!2109265))

(declare-fun m!2109267 () Bool)

(assert (=> b!1705348 m!2109267))

(declare-fun m!2109269 () Bool)

(assert (=> b!1705347 m!2109269))

(declare-fun m!2109271 () Bool)

(assert (=> b!1705356 m!2109271))

(declare-fun m!2109273 () Bool)

(assert (=> b!1705356 m!2109273))

(declare-fun m!2109275 () Bool)

(assert (=> b!1705350 m!2109275))

(declare-fun m!2109277 () Bool)

(assert (=> b!1705351 m!2109277))

(assert (=> b!1705351 m!2109277))

(declare-fun m!2109279 () Bool)

(assert (=> b!1705351 m!2109279))

(assert (=> b!1705351 m!2109279))

(declare-fun m!2109281 () Bool)

(assert (=> b!1705351 m!2109281))

(assert (=> b!1705351 m!2109281))

(declare-fun m!2109283 () Bool)

(assert (=> b!1705351 m!2109283))

(declare-fun m!2109285 () Bool)

(assert (=> b!1705353 m!2109285))

(declare-fun m!2109287 () Bool)

(assert (=> b!1705353 m!2109287))

(check-sat (not b!1705349) (not b_next!46669) b_and!123157 b_and!123153 (not b!1705344) b_and!123155 (not b_next!46667) (not b!1705351) (not b_next!46677) (not b!1705347) b_and!123159 b_and!123163 b_and!123161 (not b!1705348) (not b!1705353) (not b!1705345) (not start!166398) (not b_next!46671) (not b_next!46673) (not b_next!46675) (not b!1705346) (not b!1705356) (not b!1705350))
(check-sat b_and!123161 (not b_next!46669) b_and!123157 b_and!123153 b_and!123155 (not b_next!46667) (not b_next!46677) b_and!123159 b_and!123163 (not b_next!46671) (not b_next!46673) (not b_next!46675))
(get-model)

(declare-fun b!1705367 () Bool)

(declare-fun e!1090671 () Bool)

(declare-fun e!1090672 () Bool)

(assert (=> b!1705367 (= e!1090671 e!1090672)))

(declare-fun c!279624 () Bool)

(assert (=> b!1705367 (= c!279624 ((_ is IntegerValue!10084) (value!102896 token!523)))))

(declare-fun b!1705369 () Bool)

(declare-fun inv!17 (TokenValue!3361) Bool)

(assert (=> b!1705369 (= e!1090672 (inv!17 (value!102896 token!523)))))

(declare-fun b!1705370 () Bool)

(declare-fun e!1090673 () Bool)

(declare-fun inv!15 (TokenValue!3361) Bool)

(assert (=> b!1705370 (= e!1090673 (inv!15 (value!102896 token!523)))))

(declare-fun b!1705371 () Bool)

(declare-fun inv!16 (TokenValue!3361) Bool)

(assert (=> b!1705371 (= e!1090671 (inv!16 (value!102896 token!523)))))

(declare-fun d!523634 () Bool)

(declare-fun c!279625 () Bool)

(assert (=> d!523634 (= c!279625 ((_ is IntegerValue!10083) (value!102896 token!523)))))

(assert (=> d!523634 (= (inv!21 (value!102896 token!523)) e!1090671)))

(declare-fun b!1705368 () Bool)

(declare-fun res!764404 () Bool)

(assert (=> b!1705368 (=> res!764404 e!1090673)))

(assert (=> b!1705368 (= res!764404 (not ((_ is IntegerValue!10085) (value!102896 token!523))))))

(assert (=> b!1705368 (= e!1090672 e!1090673)))

(assert (= (and d!523634 c!279625) b!1705371))

(assert (= (and d!523634 (not c!279625)) b!1705367))

(assert (= (and b!1705367 c!279624) b!1705369))

(assert (= (and b!1705367 (not c!279624)) b!1705368))

(assert (= (and b!1705368 (not res!764404)) b!1705370))

(declare-fun m!2109289 () Bool)

(assert (=> b!1705369 m!2109289))

(declare-fun m!2109291 () Bool)

(assert (=> b!1705370 m!2109291))

(declare-fun m!2109293 () Bool)

(assert (=> b!1705371 m!2109293))

(assert (=> b!1705345 d!523634))

(declare-fun d!523638 () Bool)

(declare-fun lt!652257 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2635 (List!18638) (InoxSet Rule!6342))

(assert (=> d!523638 (= lt!652257 (select (content!2635 rules!3447) rule!422))))

(declare-fun e!1090682 () Bool)

(assert (=> d!523638 (= lt!652257 e!1090682)))

(declare-fun res!764414 () Bool)

(assert (=> d!523638 (=> (not res!764414) (not e!1090682))))

(assert (=> d!523638 (= res!764414 ((_ is Cons!18568) rules!3447))))

(assert (=> d!523638 (= (contains!3287 rules!3447 rule!422) lt!652257)))

(declare-fun b!1705380 () Bool)

(declare-fun e!1090683 () Bool)

(assert (=> b!1705380 (= e!1090682 e!1090683)))

(declare-fun res!764413 () Bool)

(assert (=> b!1705380 (=> res!764413 e!1090683)))

(assert (=> b!1705380 (= res!764413 (= (h!23969 rules!3447) rule!422))))

(declare-fun b!1705381 () Bool)

(assert (=> b!1705381 (= e!1090683 (contains!3287 (t!157923 rules!3447) rule!422))))

(assert (= (and d!523638 res!764414) b!1705380))

(assert (= (and b!1705380 (not res!764413)) b!1705381))

(declare-fun m!2109295 () Bool)

(assert (=> d!523638 m!2109295))

(declare-fun m!2109297 () Bool)

(assert (=> d!523638 m!2109297))

(declare-fun m!2109299 () Bool)

(assert (=> b!1705381 m!2109299))

(assert (=> b!1705350 d!523638))

(declare-fun d!523640 () Bool)

(declare-fun isEmpty!11658 (Option!3595) Bool)

(assert (=> d!523640 (= (isDefined!2940 (maxPrefix!1454 thiss!24550 rules!3447 (list!7485 (charsOf!1920 token!523)))) (not (isEmpty!11658 (maxPrefix!1454 thiss!24550 rules!3447 (list!7485 (charsOf!1920 token!523))))))))

(declare-fun bs!401544 () Bool)

(assert (= bs!401544 d!523640))

(assert (=> bs!401544 m!2109281))

(declare-fun m!2109301 () Bool)

(assert (=> bs!401544 m!2109301))

(assert (=> b!1705351 d!523640))

(declare-fun b!1705400 () Bool)

(declare-fun res!764430 () Bool)

(declare-fun e!1090691 () Bool)

(assert (=> b!1705400 (=> (not res!764430) (not e!1090691))))

(declare-fun lt!652268 () Option!3595)

(declare-fun matchR!2080 (Regex!4599 List!18637) Bool)

(declare-fun get!5452 (Option!3595) tuple2!18322)

(assert (=> b!1705400 (= res!764430 (matchR!2080 (regex!3271 (rule!5203 (_1!10563 (get!5452 lt!652268)))) (list!7485 (charsOf!1920 (_1!10563 (get!5452 lt!652268))))))))

(declare-fun b!1705401 () Bool)

(declare-fun res!764435 () Bool)

(assert (=> b!1705401 (=> (not res!764435) (not e!1090691))))

(declare-fun ++!5101 (List!18637 List!18637) List!18637)

(assert (=> b!1705401 (= res!764435 (= (++!5101 (list!7485 (charsOf!1920 (_1!10563 (get!5452 lt!652268)))) (_2!10563 (get!5452 lt!652268))) (list!7485 (charsOf!1920 token!523))))))

(declare-fun b!1705402 () Bool)

(declare-fun res!764429 () Bool)

(assert (=> b!1705402 (=> (not res!764429) (not e!1090691))))

(declare-fun size!14796 (List!18637) Int)

(assert (=> b!1705402 (= res!764429 (< (size!14796 (_2!10563 (get!5452 lt!652268))) (size!14796 (list!7485 (charsOf!1920 token!523)))))))

(declare-fun b!1705403 () Bool)

(declare-fun e!1090690 () Option!3595)

(declare-fun lt!652270 () Option!3595)

(declare-fun lt!652269 () Option!3595)

(assert (=> b!1705403 (= e!1090690 (ite (and ((_ is None!3594) lt!652270) ((_ is None!3594) lt!652269)) None!3594 (ite ((_ is None!3594) lt!652269) lt!652270 (ite ((_ is None!3594) lt!652270) lt!652269 (ite (>= (size!14794 (_1!10563 (v!24965 lt!652270))) (size!14794 (_1!10563 (v!24965 lt!652269)))) lt!652270 lt!652269)))))))

(declare-fun call!109237 () Option!3595)

(assert (=> b!1705403 (= lt!652270 call!109237)))

(assert (=> b!1705403 (= lt!652269 (maxPrefix!1454 thiss!24550 (t!157923 rules!3447) (list!7485 (charsOf!1920 token!523))))))

(declare-fun b!1705404 () Bool)

(declare-fun res!764432 () Bool)

(assert (=> b!1705404 (=> (not res!764432) (not e!1090691))))

(declare-fun apply!5097 (TokenValueInjection!6382 BalanceConc!12306) TokenValue!3361)

(declare-fun seqFromList!2262 (List!18637) BalanceConc!12306)

(assert (=> b!1705404 (= res!764432 (= (value!102896 (_1!10563 (get!5452 lt!652268))) (apply!5097 (transformation!3271 (rule!5203 (_1!10563 (get!5452 lt!652268)))) (seqFromList!2262 (originalCharacters!4085 (_1!10563 (get!5452 lt!652268)))))))))

(declare-fun b!1705405 () Bool)

(assert (=> b!1705405 (= e!1090690 call!109237)))

(declare-fun b!1705406 () Bool)

(assert (=> b!1705406 (= e!1090691 (contains!3287 rules!3447 (rule!5203 (_1!10563 (get!5452 lt!652268)))))))

(declare-fun b!1705407 () Bool)

(declare-fun e!1090692 () Bool)

(assert (=> b!1705407 (= e!1090692 e!1090691)))

(declare-fun res!764434 () Bool)

(assert (=> b!1705407 (=> (not res!764434) (not e!1090691))))

(assert (=> b!1705407 (= res!764434 (isDefined!2940 lt!652268))))

(declare-fun d!523642 () Bool)

(assert (=> d!523642 e!1090692))

(declare-fun res!764431 () Bool)

(assert (=> d!523642 (=> res!764431 e!1090692)))

(assert (=> d!523642 (= res!764431 (isEmpty!11658 lt!652268))))

(assert (=> d!523642 (= lt!652268 e!1090690)))

(declare-fun c!279628 () Bool)

(assert (=> d!523642 (= c!279628 (and ((_ is Cons!18568) rules!3447) ((_ is Nil!18568) (t!157923 rules!3447))))))

(declare-datatypes ((Unit!32425 0))(
  ( (Unit!32426) )
))
(declare-fun lt!652272 () Unit!32425)

(declare-fun lt!652271 () Unit!32425)

(assert (=> d!523642 (= lt!652272 lt!652271)))

(declare-fun isPrefix!1521 (List!18637 List!18637) Bool)

(assert (=> d!523642 (isPrefix!1521 (list!7485 (charsOf!1920 token!523)) (list!7485 (charsOf!1920 token!523)))))

(declare-fun lemmaIsPrefixRefl!1038 (List!18637 List!18637) Unit!32425)

(assert (=> d!523642 (= lt!652271 (lemmaIsPrefixRefl!1038 (list!7485 (charsOf!1920 token!523)) (list!7485 (charsOf!1920 token!523))))))

(assert (=> d!523642 (rulesValidInductive!1064 thiss!24550 rules!3447)))

(assert (=> d!523642 (= (maxPrefix!1454 thiss!24550 rules!3447 (list!7485 (charsOf!1920 token!523))) lt!652268)))

(declare-fun b!1705408 () Bool)

(declare-fun res!764433 () Bool)

(assert (=> b!1705408 (=> (not res!764433) (not e!1090691))))

(assert (=> b!1705408 (= res!764433 (= (list!7485 (charsOf!1920 (_1!10563 (get!5452 lt!652268)))) (originalCharacters!4085 (_1!10563 (get!5452 lt!652268)))))))

(declare-fun bm!109232 () Bool)

(declare-fun maxPrefixOneRule!853 (LexerInterface!2900 Rule!6342 List!18637) Option!3595)

(assert (=> bm!109232 (= call!109237 (maxPrefixOneRule!853 thiss!24550 (h!23969 rules!3447) (list!7485 (charsOf!1920 token!523))))))

(assert (= (and d!523642 c!279628) b!1705405))

(assert (= (and d!523642 (not c!279628)) b!1705403))

(assert (= (or b!1705405 b!1705403) bm!109232))

(assert (= (and d!523642 (not res!764431)) b!1705407))

(assert (= (and b!1705407 res!764434) b!1705408))

(assert (= (and b!1705408 res!764433) b!1705402))

(assert (= (and b!1705402 res!764429) b!1705401))

(assert (= (and b!1705401 res!764435) b!1705404))

(assert (= (and b!1705404 res!764432) b!1705400))

(assert (= (and b!1705400 res!764430) b!1705406))

(declare-fun m!2109303 () Bool)

(assert (=> b!1705406 m!2109303))

(declare-fun m!2109305 () Bool)

(assert (=> b!1705406 m!2109305))

(assert (=> b!1705402 m!2109303))

(declare-fun m!2109307 () Bool)

(assert (=> b!1705402 m!2109307))

(assert (=> b!1705402 m!2109279))

(declare-fun m!2109309 () Bool)

(assert (=> b!1705402 m!2109309))

(declare-fun m!2109311 () Bool)

(assert (=> d!523642 m!2109311))

(assert (=> d!523642 m!2109279))

(assert (=> d!523642 m!2109279))

(declare-fun m!2109313 () Bool)

(assert (=> d!523642 m!2109313))

(assert (=> d!523642 m!2109279))

(assert (=> d!523642 m!2109279))

(declare-fun m!2109315 () Bool)

(assert (=> d!523642 m!2109315))

(assert (=> d!523642 m!2109263))

(assert (=> b!1705404 m!2109303))

(declare-fun m!2109317 () Bool)

(assert (=> b!1705404 m!2109317))

(assert (=> b!1705404 m!2109317))

(declare-fun m!2109319 () Bool)

(assert (=> b!1705404 m!2109319))

(declare-fun m!2109321 () Bool)

(assert (=> b!1705407 m!2109321))

(assert (=> b!1705403 m!2109279))

(declare-fun m!2109323 () Bool)

(assert (=> b!1705403 m!2109323))

(assert (=> b!1705401 m!2109303))

(declare-fun m!2109325 () Bool)

(assert (=> b!1705401 m!2109325))

(assert (=> b!1705401 m!2109325))

(declare-fun m!2109327 () Bool)

(assert (=> b!1705401 m!2109327))

(assert (=> b!1705401 m!2109327))

(declare-fun m!2109329 () Bool)

(assert (=> b!1705401 m!2109329))

(assert (=> b!1705408 m!2109303))

(assert (=> b!1705408 m!2109325))

(assert (=> b!1705408 m!2109325))

(assert (=> b!1705408 m!2109327))

(assert (=> b!1705400 m!2109303))

(assert (=> b!1705400 m!2109325))

(assert (=> b!1705400 m!2109325))

(assert (=> b!1705400 m!2109327))

(assert (=> b!1705400 m!2109327))

(declare-fun m!2109331 () Bool)

(assert (=> b!1705400 m!2109331))

(assert (=> bm!109232 m!2109279))

(declare-fun m!2109333 () Bool)

(assert (=> bm!109232 m!2109333))

(assert (=> b!1705351 d!523642))

(declare-fun d!523644 () Bool)

(declare-fun list!7487 (Conc!6181) List!18637)

(assert (=> d!523644 (= (list!7485 (charsOf!1920 token!523)) (list!7487 (c!279619 (charsOf!1920 token!523))))))

(declare-fun bs!401545 () Bool)

(assert (= bs!401545 d!523644))

(declare-fun m!2109335 () Bool)

(assert (=> bs!401545 m!2109335))

(assert (=> b!1705351 d!523644))

(declare-fun d!523646 () Bool)

(declare-fun lt!652275 () BalanceConc!12306)

(assert (=> d!523646 (= (list!7485 lt!652275) (originalCharacters!4085 token!523))))

(declare-fun dynLambda!8459 (Int TokenValue!3361) BalanceConc!12306)

(assert (=> d!523646 (= lt!652275 (dynLambda!8459 (toChars!4625 (transformation!3271 (rule!5203 token!523))) (value!102896 token!523)))))

(assert (=> d!523646 (= (charsOf!1920 token!523) lt!652275)))

(declare-fun b_lambda!53821 () Bool)

(assert (=> (not b_lambda!53821) (not d!523646)))

(declare-fun tb!100731 () Bool)

(declare-fun t!157925 () Bool)

(assert (=> (and b!1705355 (= (toChars!4625 (transformation!3271 (h!23969 rules!3447))) (toChars!4625 (transformation!3271 (rule!5203 token!523)))) t!157925) tb!100731))

(declare-fun b!1705413 () Bool)

(declare-fun e!1090695 () Bool)

(declare-fun tp!486873 () Bool)

(declare-fun inv!23958 (Conc!6181) Bool)

(assert (=> b!1705413 (= e!1090695 (and (inv!23958 (c!279619 (dynLambda!8459 (toChars!4625 (transformation!3271 (rule!5203 token!523))) (value!102896 token!523)))) tp!486873))))

(declare-fun result!120938 () Bool)

(declare-fun inv!23959 (BalanceConc!12306) Bool)

(assert (=> tb!100731 (= result!120938 (and (inv!23959 (dynLambda!8459 (toChars!4625 (transformation!3271 (rule!5203 token!523))) (value!102896 token!523))) e!1090695))))

(assert (= tb!100731 b!1705413))

(declare-fun m!2109337 () Bool)

(assert (=> b!1705413 m!2109337))

(declare-fun m!2109339 () Bool)

(assert (=> tb!100731 m!2109339))

(assert (=> d!523646 t!157925))

(declare-fun b_and!123165 () Bool)

(assert (= b_and!123155 (and (=> t!157925 result!120938) b_and!123165)))

(declare-fun tb!100733 () Bool)

(declare-fun t!157927 () Bool)

(assert (=> (and b!1705352 (= (toChars!4625 (transformation!3271 rule!422)) (toChars!4625 (transformation!3271 (rule!5203 token!523)))) t!157927) tb!100733))

(declare-fun result!120942 () Bool)

(assert (= result!120942 result!120938))

(assert (=> d!523646 t!157927))

(declare-fun b_and!123167 () Bool)

(assert (= b_and!123159 (and (=> t!157927 result!120942) b_and!123167)))

(declare-fun t!157929 () Bool)

(declare-fun tb!100735 () Bool)

(assert (=> (and b!1705354 (= (toChars!4625 (transformation!3271 (rule!5203 token!523))) (toChars!4625 (transformation!3271 (rule!5203 token!523)))) t!157929) tb!100735))

(declare-fun result!120944 () Bool)

(assert (= result!120944 result!120938))

(assert (=> d!523646 t!157929))

(declare-fun b_and!123169 () Bool)

(assert (= b_and!123163 (and (=> t!157929 result!120944) b_and!123169)))

(declare-fun m!2109341 () Bool)

(assert (=> d!523646 m!2109341))

(declare-fun m!2109343 () Bool)

(assert (=> d!523646 m!2109343))

(assert (=> b!1705351 d!523646))

(declare-fun d!523648 () Bool)

(assert (=> d!523648 (= (inv!23951 (tag!3567 (rule!5203 token!523))) (= (mod (str.len (value!102895 (tag!3567 (rule!5203 token!523)))) 2) 0))))

(assert (=> b!1705356 d!523648))

(declare-fun d!523650 () Bool)

(declare-fun res!764438 () Bool)

(declare-fun e!1090698 () Bool)

(assert (=> d!523650 (=> (not res!764438) (not e!1090698))))

(declare-fun semiInverseModEq!1288 (Int Int) Bool)

(assert (=> d!523650 (= res!764438 (semiInverseModEq!1288 (toChars!4625 (transformation!3271 (rule!5203 token!523))) (toValue!4766 (transformation!3271 (rule!5203 token!523)))))))

(assert (=> d!523650 (= (inv!23955 (transformation!3271 (rule!5203 token!523))) e!1090698)))

(declare-fun b!1705416 () Bool)

(declare-fun equivClasses!1229 (Int Int) Bool)

(assert (=> b!1705416 (= e!1090698 (equivClasses!1229 (toChars!4625 (transformation!3271 (rule!5203 token!523))) (toValue!4766 (transformation!3271 (rule!5203 token!523)))))))

(assert (= (and d!523650 res!764438) b!1705416))

(declare-fun m!2109345 () Bool)

(assert (=> d!523650 m!2109345))

(declare-fun m!2109347 () Bool)

(assert (=> b!1705416 m!2109347))

(assert (=> b!1705356 d!523650))

(declare-fun d!523652 () Bool)

(declare-fun res!764443 () Bool)

(declare-fun e!1090701 () Bool)

(assert (=> d!523652 (=> (not res!764443) (not e!1090701))))

(declare-fun isEmpty!11659 (List!18637) Bool)

(assert (=> d!523652 (= res!764443 (not (isEmpty!11659 (originalCharacters!4085 token!523))))))

(assert (=> d!523652 (= (inv!23954 token!523) e!1090701)))

(declare-fun b!1705421 () Bool)

(declare-fun res!764444 () Bool)

(assert (=> b!1705421 (=> (not res!764444) (not e!1090701))))

(assert (=> b!1705421 (= res!764444 (= (originalCharacters!4085 token!523) (list!7485 (dynLambda!8459 (toChars!4625 (transformation!3271 (rule!5203 token!523))) (value!102896 token!523)))))))

(declare-fun b!1705422 () Bool)

(assert (=> b!1705422 (= e!1090701 (= (size!14794 token!523) (size!14796 (originalCharacters!4085 token!523))))))

(assert (= (and d!523652 res!764443) b!1705421))

(assert (= (and b!1705421 res!764444) b!1705422))

(declare-fun b_lambda!53823 () Bool)

(assert (=> (not b_lambda!53823) (not b!1705421)))

(assert (=> b!1705421 t!157925))

(declare-fun b_and!123171 () Bool)

(assert (= b_and!123165 (and (=> t!157925 result!120938) b_and!123171)))

(assert (=> b!1705421 t!157927))

(declare-fun b_and!123173 () Bool)

(assert (= b_and!123167 (and (=> t!157927 result!120942) b_and!123173)))

(assert (=> b!1705421 t!157929))

(declare-fun b_and!123175 () Bool)

(assert (= b_and!123169 (and (=> t!157929 result!120944) b_and!123175)))

(declare-fun m!2109349 () Bool)

(assert (=> d!523652 m!2109349))

(assert (=> b!1705421 m!2109343))

(assert (=> b!1705421 m!2109343))

(declare-fun m!2109351 () Bool)

(assert (=> b!1705421 m!2109351))

(declare-fun m!2109353 () Bool)

(assert (=> b!1705422 m!2109353))

(assert (=> start!166398 d!523652))

(declare-fun d!523654 () Bool)

(assert (=> d!523654 true))

(declare-fun lt!652300 () Bool)

(declare-fun lambda!68704 () Int)

(declare-fun forall!4234 (List!18638 Int) Bool)

(assert (=> d!523654 (= lt!652300 (forall!4234 rules!3447 lambda!68704))))

(declare-fun e!1090766 () Bool)

(assert (=> d!523654 (= lt!652300 e!1090766)))

(declare-fun res!764495 () Bool)

(assert (=> d!523654 (=> res!764495 e!1090766)))

(assert (=> d!523654 (= res!764495 (not ((_ is Cons!18568) rules!3447)))))

(assert (=> d!523654 (= (rulesValidInductive!1064 thiss!24550 rules!3447) lt!652300)))

(declare-fun b!1705536 () Bool)

(declare-fun e!1090767 () Bool)

(assert (=> b!1705536 (= e!1090766 e!1090767)))

(declare-fun res!764496 () Bool)

(assert (=> b!1705536 (=> (not res!764496) (not e!1090767))))

(declare-fun ruleValid!777 (LexerInterface!2900 Rule!6342) Bool)

(assert (=> b!1705536 (= res!764496 (ruleValid!777 thiss!24550 (h!23969 rules!3447)))))

(declare-fun b!1705537 () Bool)

(assert (=> b!1705537 (= e!1090767 (rulesValidInductive!1064 thiss!24550 (t!157923 rules!3447)))))

(assert (= (and d!523654 (not res!764495)) b!1705536))

(assert (= (and b!1705536 res!764496) b!1705537))

(declare-fun m!2109443 () Bool)

(assert (=> d!523654 m!2109443))

(declare-fun m!2109445 () Bool)

(assert (=> b!1705536 m!2109445))

(declare-fun m!2109447 () Bool)

(assert (=> b!1705537 m!2109447))

(assert (=> b!1705346 d!523654))

(declare-fun d!523686 () Bool)

(declare-fun res!764499 () Bool)

(declare-fun e!1090770 () Bool)

(assert (=> d!523686 (=> (not res!764499) (not e!1090770))))

(declare-fun rulesValid!1216 (LexerInterface!2900 List!18638) Bool)

(assert (=> d!523686 (= res!764499 (rulesValid!1216 thiss!24550 rules!3447))))

(assert (=> d!523686 (= (rulesInvariant!2569 thiss!24550 rules!3447) e!1090770)))

(declare-fun b!1705542 () Bool)

(declare-datatypes ((List!18640 0))(
  ( (Nil!18570) (Cons!18570 (h!23971 String!21137) (t!157941 List!18640)) )
))
(declare-fun noDuplicateTag!1216 (LexerInterface!2900 List!18638 List!18640) Bool)

(assert (=> b!1705542 (= e!1090770 (noDuplicateTag!1216 thiss!24550 rules!3447 Nil!18570))))

(assert (= (and d!523686 res!764499) b!1705542))

(declare-fun m!2109449 () Bool)

(assert (=> d!523686 m!2109449))

(declare-fun m!2109451 () Bool)

(assert (=> b!1705542 m!2109451))

(assert (=> b!1705347 d!523686))

(declare-fun d!523688 () Bool)

(assert (=> d!523688 (= (inv!23951 (tag!3567 (h!23969 rules!3447))) (= (mod (str.len (value!102895 (tag!3567 (h!23969 rules!3447)))) 2) 0))))

(assert (=> b!1705353 d!523688))

(declare-fun d!523690 () Bool)

(declare-fun res!764500 () Bool)

(declare-fun e!1090771 () Bool)

(assert (=> d!523690 (=> (not res!764500) (not e!1090771))))

(assert (=> d!523690 (= res!764500 (semiInverseModEq!1288 (toChars!4625 (transformation!3271 (h!23969 rules!3447))) (toValue!4766 (transformation!3271 (h!23969 rules!3447)))))))

(assert (=> d!523690 (= (inv!23955 (transformation!3271 (h!23969 rules!3447))) e!1090771)))

(declare-fun b!1705543 () Bool)

(assert (=> b!1705543 (= e!1090771 (equivClasses!1229 (toChars!4625 (transformation!3271 (h!23969 rules!3447))) (toValue!4766 (transformation!3271 (h!23969 rules!3447)))))))

(assert (= (and d!523690 res!764500) b!1705543))

(declare-fun m!2109453 () Bool)

(assert (=> d!523690 m!2109453))

(declare-fun m!2109455 () Bool)

(assert (=> b!1705543 m!2109455))

(assert (=> b!1705353 d!523690))

(declare-fun d!523692 () Bool)

(assert (=> d!523692 (= (isEmpty!11655 rules!3447) ((_ is Nil!18568) rules!3447))))

(assert (=> b!1705348 d!523692))

(declare-fun d!523694 () Bool)

(assert (=> d!523694 (= (inv!23951 (tag!3567 rule!422)) (= (mod (str.len (value!102895 (tag!3567 rule!422))) 2) 0))))

(assert (=> b!1705344 d!523694))

(declare-fun d!523696 () Bool)

(declare-fun res!764501 () Bool)

(declare-fun e!1090772 () Bool)

(assert (=> d!523696 (=> (not res!764501) (not e!1090772))))

(assert (=> d!523696 (= res!764501 (semiInverseModEq!1288 (toChars!4625 (transformation!3271 rule!422)) (toValue!4766 (transformation!3271 rule!422))))))

(assert (=> d!523696 (= (inv!23955 (transformation!3271 rule!422)) e!1090772)))

(declare-fun b!1705544 () Bool)

(assert (=> b!1705544 (= e!1090772 (equivClasses!1229 (toChars!4625 (transformation!3271 rule!422)) (toValue!4766 (transformation!3271 rule!422))))))

(assert (= (and d!523696 res!764501) b!1705544))

(declare-fun m!2109457 () Bool)

(assert (=> d!523696 m!2109457))

(declare-fun m!2109459 () Bool)

(assert (=> b!1705544 m!2109459))

(assert (=> b!1705344 d!523696))

(declare-fun b!1705549 () Bool)

(declare-fun e!1090775 () Bool)

(declare-fun tp_is_empty!7457 () Bool)

(declare-fun tp!486919 () Bool)

(assert (=> b!1705549 (= e!1090775 (and tp_is_empty!7457 tp!486919))))

(assert (=> b!1705345 (= tp!486867 e!1090775)))

(assert (= (and b!1705345 ((_ is Cons!18567) (originalCharacters!4085 token!523))) b!1705549))

(declare-fun b!1705563 () Bool)

(declare-fun e!1090778 () Bool)

(declare-fun tp!486930 () Bool)

(declare-fun tp!486932 () Bool)

(assert (=> b!1705563 (= e!1090778 (and tp!486930 tp!486932))))

(declare-fun b!1705560 () Bool)

(assert (=> b!1705560 (= e!1090778 tp_is_empty!7457)))

(declare-fun b!1705562 () Bool)

(declare-fun tp!486934 () Bool)

(assert (=> b!1705562 (= e!1090778 tp!486934)))

(declare-fun b!1705561 () Bool)

(declare-fun tp!486933 () Bool)

(declare-fun tp!486931 () Bool)

(assert (=> b!1705561 (= e!1090778 (and tp!486933 tp!486931))))

(assert (=> b!1705356 (= tp!486869 e!1090778)))

(assert (= (and b!1705356 ((_ is ElementMatch!4599) (regex!3271 (rule!5203 token!523)))) b!1705560))

(assert (= (and b!1705356 ((_ is Concat!7961) (regex!3271 (rule!5203 token!523)))) b!1705561))

(assert (= (and b!1705356 ((_ is Star!4599) (regex!3271 (rule!5203 token!523)))) b!1705562))

(assert (= (and b!1705356 ((_ is Union!4599) (regex!3271 (rule!5203 token!523)))) b!1705563))

(declare-fun b!1705567 () Bool)

(declare-fun e!1090779 () Bool)

(declare-fun tp!486935 () Bool)

(declare-fun tp!486937 () Bool)

(assert (=> b!1705567 (= e!1090779 (and tp!486935 tp!486937))))

(declare-fun b!1705564 () Bool)

(assert (=> b!1705564 (= e!1090779 tp_is_empty!7457)))

(declare-fun b!1705566 () Bool)

(declare-fun tp!486939 () Bool)

(assert (=> b!1705566 (= e!1090779 tp!486939)))

(declare-fun b!1705565 () Bool)

(declare-fun tp!486938 () Bool)

(declare-fun tp!486936 () Bool)

(assert (=> b!1705565 (= e!1090779 (and tp!486938 tp!486936))))

(assert (=> b!1705353 (= tp!486861 e!1090779)))

(assert (= (and b!1705353 ((_ is ElementMatch!4599) (regex!3271 (h!23969 rules!3447)))) b!1705564))

(assert (= (and b!1705353 ((_ is Concat!7961) (regex!3271 (h!23969 rules!3447)))) b!1705565))

(assert (= (and b!1705353 ((_ is Star!4599) (regex!3271 (h!23969 rules!3447)))) b!1705566))

(assert (= (and b!1705353 ((_ is Union!4599) (regex!3271 (h!23969 rules!3447)))) b!1705567))

(declare-fun b!1705578 () Bool)

(declare-fun b_free!45979 () Bool)

(declare-fun b_next!46683 () Bool)

(assert (=> b!1705578 (= b_free!45979 (not b_next!46683))))

(declare-fun tp!486949 () Bool)

(declare-fun b_and!123193 () Bool)

(assert (=> b!1705578 (= tp!486949 b_and!123193)))

(declare-fun b_free!45981 () Bool)

(declare-fun b_next!46685 () Bool)

(assert (=> b!1705578 (= b_free!45981 (not b_next!46685))))

(declare-fun tb!100745 () Bool)

(declare-fun t!157939 () Bool)

(assert (=> (and b!1705578 (= (toChars!4625 (transformation!3271 (h!23969 (t!157923 rules!3447)))) (toChars!4625 (transformation!3271 (rule!5203 token!523)))) t!157939) tb!100745))

(declare-fun result!120968 () Bool)

(assert (= result!120968 result!120938))

(assert (=> d!523646 t!157939))

(assert (=> b!1705421 t!157939))

(declare-fun tp!486950 () Bool)

(declare-fun b_and!123195 () Bool)

(assert (=> b!1705578 (= tp!486950 (and (=> t!157939 result!120968) b_and!123195))))

(declare-fun e!1090790 () Bool)

(assert (=> b!1705578 (= e!1090790 (and tp!486949 tp!486950))))

(declare-fun b!1705577 () Bool)

(declare-fun e!1090789 () Bool)

(declare-fun tp!486948 () Bool)

(assert (=> b!1705577 (= e!1090789 (and tp!486948 (inv!23951 (tag!3567 (h!23969 (t!157923 rules!3447)))) (inv!23955 (transformation!3271 (h!23969 (t!157923 rules!3447)))) e!1090790))))

(declare-fun b!1705576 () Bool)

(declare-fun e!1090788 () Bool)

(declare-fun tp!486951 () Bool)

(assert (=> b!1705576 (= e!1090788 (and e!1090789 tp!486951))))

(assert (=> b!1705349 (= tp!486868 e!1090788)))

(assert (= b!1705577 b!1705578))

(assert (= b!1705576 b!1705577))

(assert (= (and b!1705349 ((_ is Cons!18568) (t!157923 rules!3447))) b!1705576))

(declare-fun m!2109461 () Bool)

(assert (=> b!1705577 m!2109461))

(declare-fun m!2109463 () Bool)

(assert (=> b!1705577 m!2109463))

(declare-fun b!1705582 () Bool)

(declare-fun e!1090792 () Bool)

(declare-fun tp!486952 () Bool)

(declare-fun tp!486954 () Bool)

(assert (=> b!1705582 (= e!1090792 (and tp!486952 tp!486954))))

(declare-fun b!1705579 () Bool)

(assert (=> b!1705579 (= e!1090792 tp_is_empty!7457)))

(declare-fun b!1705581 () Bool)

(declare-fun tp!486956 () Bool)

(assert (=> b!1705581 (= e!1090792 tp!486956)))

(declare-fun b!1705580 () Bool)

(declare-fun tp!486955 () Bool)

(declare-fun tp!486953 () Bool)

(assert (=> b!1705580 (= e!1090792 (and tp!486955 tp!486953))))

(assert (=> b!1705344 (= tp!486865 e!1090792)))

(assert (= (and b!1705344 ((_ is ElementMatch!4599) (regex!3271 rule!422))) b!1705579))

(assert (= (and b!1705344 ((_ is Concat!7961) (regex!3271 rule!422))) b!1705580))

(assert (= (and b!1705344 ((_ is Star!4599) (regex!3271 rule!422))) b!1705581))

(assert (= (and b!1705344 ((_ is Union!4599) (regex!3271 rule!422))) b!1705582))

(declare-fun b_lambda!53833 () Bool)

(assert (= b_lambda!53823 (or (and b!1705355 b_free!45965 (= (toChars!4625 (transformation!3271 (h!23969 rules!3447))) (toChars!4625 (transformation!3271 (rule!5203 token!523))))) (and b!1705352 b_free!45969 (= (toChars!4625 (transformation!3271 rule!422)) (toChars!4625 (transformation!3271 (rule!5203 token!523))))) (and b!1705354 b_free!45973) (and b!1705578 b_free!45981 (= (toChars!4625 (transformation!3271 (h!23969 (t!157923 rules!3447)))) (toChars!4625 (transformation!3271 (rule!5203 token!523))))) b_lambda!53833)))

(declare-fun b_lambda!53835 () Bool)

(assert (= b_lambda!53821 (or (and b!1705355 b_free!45965 (= (toChars!4625 (transformation!3271 (h!23969 rules!3447))) (toChars!4625 (transformation!3271 (rule!5203 token!523))))) (and b!1705352 b_free!45969 (= (toChars!4625 (transformation!3271 rule!422)) (toChars!4625 (transformation!3271 (rule!5203 token!523))))) (and b!1705354 b_free!45973) (and b!1705578 b_free!45981 (= (toChars!4625 (transformation!3271 (h!23969 (t!157923 rules!3447)))) (toChars!4625 (transformation!3271 (rule!5203 token!523))))) b_lambda!53835)))

(check-sat (not b!1705402) (not b!1705401) b_and!123157 (not b!1705542) b_and!123153 (not b!1705562) (not b_lambda!53833) (not d!523640) (not b!1705565) (not b!1705408) (not b!1705566) (not b!1705563) (not d!523654) b_and!123161 (not d!523642) (not b!1705567) (not b!1705543) (not b_next!46669) (not b!1705582) (not bm!109232) (not b_next!46685) (not b!1705536) b_and!123193 (not d!523644) b_and!123175 (not d!523696) (not d!523652) (not b_next!46667) (not b_next!46683) (not b!1705577) (not b_next!46671) (not b_next!46673) (not b_next!46675) (not b_next!46677) b_and!123171 (not b!1705403) (not b!1705400) (not b!1705404) (not b!1705407) (not b!1705576) b_and!123173 (not b!1705369) (not b!1705370) (not d!523686) (not b!1705549) (not b!1705381) tp_is_empty!7457 (not b!1705371) (not b_lambda!53835) (not b!1705413) (not d!523646) (not d!523638) b_and!123195 (not b!1705581) (not b!1705416) (not b!1705421) (not b!1705561) (not b!1705544) (not b!1705406) (not b!1705580) (not d!523650) (not tb!100731) (not d!523690) (not b!1705537) (not b!1705422))
(check-sat b_and!123161 (not b_next!46669) b_and!123157 b_and!123153 (not b_next!46685) b_and!123193 b_and!123175 b_and!123173 b_and!123195 (not b_next!46667) (not b_next!46683) (not b_next!46671) (not b_next!46673) (not b_next!46675) (not b_next!46677) b_and!123171)
