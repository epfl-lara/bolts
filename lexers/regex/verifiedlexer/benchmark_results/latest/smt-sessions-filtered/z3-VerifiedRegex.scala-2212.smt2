; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108446 () Bool)

(assert start!108446)

(declare-fun b!1214657 () Bool)

(declare-fun b_free!29113 () Bool)

(declare-fun b_next!29817 () Bool)

(assert (=> b!1214657 (= b_free!29113 (not b_next!29817))))

(declare-fun tp!344602 () Bool)

(declare-fun b_and!82417 () Bool)

(assert (=> b!1214657 (= tp!344602 b_and!82417)))

(declare-fun b_free!29115 () Bool)

(declare-fun b_next!29819 () Bool)

(assert (=> b!1214657 (= b_free!29115 (not b_next!29819))))

(declare-fun tp!344596 () Bool)

(declare-fun b_and!82419 () Bool)

(assert (=> b!1214657 (= tp!344596 b_and!82419)))

(declare-fun b!1214655 () Bool)

(declare-fun b_free!29117 () Bool)

(declare-fun b_next!29821 () Bool)

(assert (=> b!1214655 (= b_free!29117 (not b_next!29821))))

(declare-fun tp!344603 () Bool)

(declare-fun b_and!82421 () Bool)

(assert (=> b!1214655 (= tp!344603 b_and!82421)))

(declare-fun b_free!29119 () Bool)

(declare-fun b_next!29823 () Bool)

(assert (=> b!1214655 (= b_free!29119 (not b_next!29823))))

(declare-fun tp!344601 () Bool)

(declare-fun b_and!82423 () Bool)

(assert (=> b!1214655 (= tp!344601 b_and!82423)))

(declare-fun b!1214653 () Bool)

(declare-fun e!779553 () Bool)

(declare-datatypes ((LexerInterface!1824 0))(
  ( (LexerInterfaceExt!1821 (__x!8109 Int)) (Lexer!1822) )
))
(declare-fun thiss!20528 () LexerInterface!1824)

(declare-datatypes ((List!12434 0))(
  ( (Nil!12376) (Cons!12376 (h!17777 (_ BitVec 16)) (t!113004 List!12434)) )
))
(declare-datatypes ((TokenValue!2197 0))(
  ( (FloatLiteralValue!4394 (text!15824 List!12434)) (TokenValueExt!2196 (__x!8110 Int)) (Broken!10985 (value!69247 List!12434)) (Object!2254) (End!2197) (Def!2197) (Underscore!2197) (Match!2197) (Else!2197) (Error!2197) (Case!2197) (If!2197) (Extends!2197) (Abstract!2197) (Class!2197) (Val!2197) (DelimiterValue!4394 (del!2257 List!12434)) (KeywordValue!2203 (value!69248 List!12434)) (CommentValue!4394 (value!69249 List!12434)) (WhitespaceValue!4394 (value!69250 List!12434)) (IndentationValue!2197 (value!69251 List!12434)) (String!15116) (Int32!2197) (Broken!10986 (value!69252 List!12434)) (Boolean!2198) (Unit!18673) (OperatorValue!2200 (op!2257 List!12434)) (IdentifierValue!4394 (value!69253 List!12434)) (IdentifierValue!4395 (value!69254 List!12434)) (WhitespaceValue!4395 (value!69255 List!12434)) (True!4394) (False!4394) (Broken!10987 (value!69256 List!12434)) (Broken!10988 (value!69257 List!12434)) (True!4395) (RightBrace!2197) (RightBracket!2197) (Colon!2197) (Null!2197) (Comma!2197) (LeftBracket!2197) (False!4395) (LeftBrace!2197) (ImaginaryLiteralValue!2197 (text!15825 List!12434)) (StringLiteralValue!6591 (value!69258 List!12434)) (EOFValue!2197 (value!69259 List!12434)) (IdentValue!2197 (value!69260 List!12434)) (DelimiterValue!4395 (value!69261 List!12434)) (DedentValue!2197 (value!69262 List!12434)) (NewLineValue!2197 (value!69263 List!12434)) (IntegerValue!6591 (value!69264 (_ BitVec 32)) (text!15826 List!12434)) (IntegerValue!6592 (value!69265 Int) (text!15827 List!12434)) (Times!2197) (Or!2197) (Equal!2197) (Minus!2197) (Broken!10989 (value!69266 List!12434)) (And!2197) (Div!2197) (LessEqual!2197) (Mod!2197) (Concat!5596) (Not!2197) (Plus!2197) (SpaceValue!2197 (value!69267 List!12434)) (IntegerValue!6593 (value!69268 Int) (text!15828 List!12434)) (StringLiteralValue!6592 (text!15829 List!12434)) (FloatLiteralValue!4395 (text!15830 List!12434)) (BytesLiteralValue!2197 (value!69269 List!12434)) (CommentValue!4395 (value!69270 List!12434)) (StringLiteralValue!6593 (value!69271 List!12434)) (ErrorTokenValue!2197 (msg!2258 List!12434)) )
))
(declare-datatypes ((C!7116 0))(
  ( (C!7117 (val!4088 Int)) )
))
(declare-datatypes ((List!12435 0))(
  ( (Nil!12377) (Cons!12377 (h!17778 C!7116) (t!113005 List!12435)) )
))
(declare-datatypes ((IArray!8117 0))(
  ( (IArray!8118 (innerList!4116 List!12435)) )
))
(declare-datatypes ((Conc!4056 0))(
  ( (Node!4056 (left!10704 Conc!4056) (right!11034 Conc!4056) (csize!8342 Int) (cheight!4267 Int)) (Leaf!6269 (xs!6767 IArray!8117) (csize!8343 Int)) (Empty!4056) )
))
(declare-datatypes ((Regex!3399 0))(
  ( (ElementMatch!3399 (c!203252 C!7116)) (Concat!5597 (regOne!7310 Regex!3399) (regTwo!7310 Regex!3399)) (EmptyExpr!3399) (Star!3399 (reg!3728 Regex!3399)) (EmptyLang!3399) (Union!3399 (regOne!7311 Regex!3399) (regTwo!7311 Regex!3399)) )
))
(declare-datatypes ((String!15117 0))(
  ( (String!15118 (value!69272 String)) )
))
(declare-datatypes ((BalanceConc!8044 0))(
  ( (BalanceConc!8045 (c!203253 Conc!4056)) )
))
(declare-datatypes ((TokenValueInjection!4090 0))(
  ( (TokenValueInjection!4091 (toValue!3254 Int) (toChars!3113 Int)) )
))
(declare-datatypes ((Rule!4058 0))(
  ( (Rule!4059 (regex!2129 Regex!3399) (tag!2391 String!15117) (isSeparator!2129 Bool) (transformation!2129 TokenValueInjection!4090)) )
))
(declare-datatypes ((List!12436 0))(
  ( (Nil!12378) (Cons!12378 (h!17779 Rule!4058) (t!113006 List!12436)) )
))
(declare-fun rules!2728 () List!12436)

(declare-fun input!2346 () List!12435)

(declare-datatypes ((Token!3920 0))(
  ( (Token!3921 (value!69273 TokenValue!2197) (rule!3552 Rule!4058) (size!9797 Int) (originalCharacters!2683 List!12435)) )
))
(declare-datatypes ((tuple2!12246 0))(
  ( (tuple2!12247 (_1!6970 Token!3920) (_2!6970 List!12435)) )
))
(declare-datatypes ((Option!2491 0))(
  ( (None!2490) (Some!2490 (v!20619 tuple2!12246)) )
))
(declare-fun isDefined!2129 (Option!2491) Bool)

(declare-fun maxPrefix!946 (LexerInterface!1824 List!12436 List!12435) Option!2491)

(assert (=> b!1214653 (= e!779553 (not (isDefined!2129 (maxPrefix!946 thiss!20528 rules!2728 input!2346))))))

(declare-fun b!1214654 () Bool)

(declare-fun e!779554 () Bool)

(declare-fun e!779557 () Bool)

(declare-fun tp!344598 () Bool)

(assert (=> b!1214654 (= e!779554 (and e!779557 tp!344598))))

(declare-fun b!1214656 () Bool)

(declare-fun res!546255 () Bool)

(assert (=> b!1214656 (=> (not res!546255) (not e!779553))))

(declare-datatypes ((List!12437 0))(
  ( (Nil!12379) (Cons!12379 (h!17780 Token!3920) (t!113007 List!12437)) )
))
(declare-fun tokens!556 () List!12437)

(declare-datatypes ((tuple2!12248 0))(
  ( (tuple2!12249 (_1!6971 List!12437) (_2!6971 List!12435)) )
))
(declare-fun lexList!454 (LexerInterface!1824 List!12436 List!12435) tuple2!12248)

(assert (=> b!1214656 (= res!546255 (= (_1!6971 (lexList!454 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun e!779564 () Bool)

(assert (=> b!1214657 (= e!779564 (and tp!344602 tp!344596))))

(declare-fun tp!344595 () Bool)

(declare-fun e!779558 () Bool)

(declare-fun b!1214658 () Bool)

(declare-fun e!779555 () Bool)

(declare-fun inv!16562 (Token!3920) Bool)

(assert (=> b!1214658 (= e!779555 (and (inv!16562 (h!17780 tokens!556)) e!779558 tp!344595))))

(declare-fun b!1214659 () Bool)

(declare-fun res!546256 () Bool)

(assert (=> b!1214659 (=> (not res!546256) (not e!779553))))

(get-info :version)

(assert (=> b!1214659 (= res!546256 (not ((_ is Nil!12379) tokens!556)))))

(declare-fun b!1214660 () Bool)

(declare-fun res!546258 () Bool)

(assert (=> b!1214660 (=> (not res!546258) (not e!779553))))

(declare-fun rulesInvariant!1698 (LexerInterface!1824 List!12436) Bool)

(assert (=> b!1214660 (= res!546258 (rulesInvariant!1698 thiss!20528 rules!2728))))

(declare-fun tp!344594 () Bool)

(declare-fun b!1214661 () Bool)

(declare-fun e!779563 () Bool)

(declare-fun inv!16559 (String!15117) Bool)

(declare-fun inv!16563 (TokenValueInjection!4090) Bool)

(assert (=> b!1214661 (= e!779563 (and tp!344594 (inv!16559 (tag!2391 (rule!3552 (h!17780 tokens!556)))) (inv!16563 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) e!779564))))

(declare-fun b!1214662 () Bool)

(declare-fun tp!344597 () Bool)

(declare-fun inv!21 (TokenValue!2197) Bool)

(assert (=> b!1214662 (= e!779558 (and (inv!21 (value!69273 (h!17780 tokens!556))) e!779563 tp!344597))))

(declare-fun b!1214663 () Bool)

(declare-fun tp!344600 () Bool)

(declare-fun e!779559 () Bool)

(assert (=> b!1214663 (= e!779557 (and tp!344600 (inv!16559 (tag!2391 (h!17779 rules!2728))) (inv!16563 (transformation!2129 (h!17779 rules!2728))) e!779559))))

(assert (=> b!1214655 (= e!779559 (and tp!344603 tp!344601))))

(declare-fun res!546254 () Bool)

(assert (=> start!108446 (=> (not res!546254) (not e!779553))))

(assert (=> start!108446 (= res!546254 ((_ is Lexer!1822) thiss!20528))))

(assert (=> start!108446 e!779553))

(assert (=> start!108446 true))

(assert (=> start!108446 e!779554))

(declare-fun e!779556 () Bool)

(assert (=> start!108446 e!779556))

(assert (=> start!108446 e!779555))

(declare-fun b!1214664 () Bool)

(declare-fun tp_is_empty!6319 () Bool)

(declare-fun tp!344599 () Bool)

(assert (=> b!1214664 (= e!779556 (and tp_is_empty!6319 tp!344599))))

(declare-fun b!1214665 () Bool)

(declare-fun res!546257 () Bool)

(assert (=> b!1214665 (=> (not res!546257) (not e!779553))))

(declare-fun isEmpty!7357 (List!12436) Bool)

(assert (=> b!1214665 (= res!546257 (not (isEmpty!7357 rules!2728)))))

(assert (= (and start!108446 res!546254) b!1214665))

(assert (= (and b!1214665 res!546257) b!1214660))

(assert (= (and b!1214660 res!546258) b!1214656))

(assert (= (and b!1214656 res!546255) b!1214659))

(assert (= (and b!1214659 res!546256) b!1214653))

(assert (= b!1214663 b!1214655))

(assert (= b!1214654 b!1214663))

(assert (= (and start!108446 ((_ is Cons!12378) rules!2728)) b!1214654))

(assert (= (and start!108446 ((_ is Cons!12377) input!2346)) b!1214664))

(assert (= b!1214661 b!1214657))

(assert (= b!1214662 b!1214661))

(assert (= b!1214658 b!1214662))

(assert (= (and start!108446 ((_ is Cons!12379) tokens!556)) b!1214658))

(declare-fun m!1389421 () Bool)

(assert (=> b!1214653 m!1389421))

(assert (=> b!1214653 m!1389421))

(declare-fun m!1389423 () Bool)

(assert (=> b!1214653 m!1389423))

(declare-fun m!1389425 () Bool)

(assert (=> b!1214660 m!1389425))

(declare-fun m!1389427 () Bool)

(assert (=> b!1214662 m!1389427))

(declare-fun m!1389429 () Bool)

(assert (=> b!1214658 m!1389429))

(declare-fun m!1389431 () Bool)

(assert (=> b!1214656 m!1389431))

(declare-fun m!1389433 () Bool)

(assert (=> b!1214661 m!1389433))

(declare-fun m!1389435 () Bool)

(assert (=> b!1214661 m!1389435))

(declare-fun m!1389437 () Bool)

(assert (=> b!1214665 m!1389437))

(declare-fun m!1389439 () Bool)

(assert (=> b!1214663 m!1389439))

(declare-fun m!1389441 () Bool)

(assert (=> b!1214663 m!1389441))

(check-sat (not b_next!29823) (not b!1214664) (not b_next!29817) (not b!1214665) (not b!1214662) (not b!1214654) tp_is_empty!6319 (not b!1214658) b_and!82419 (not b!1214656) b_and!82417 (not b_next!29819) b_and!82421 (not b!1214661) (not b!1214663) (not b!1214653) b_and!82423 (not b_next!29821) (not b!1214660))
(check-sat (not b_next!29823) (not b_next!29817) b_and!82423 (not b_next!29821) b_and!82419 b_and!82417 (not b_next!29819) b_and!82421)
(get-model)

(declare-fun d!347067 () Bool)

(assert (=> d!347067 (= (isEmpty!7357 rules!2728) ((_ is Nil!12378) rules!2728))))

(assert (=> b!1214665 d!347067))

(declare-fun d!347069 () Bool)

(assert (=> d!347069 (= (inv!16559 (tag!2391 (h!17779 rules!2728))) (= (mod (str.len (value!69272 (tag!2391 (h!17779 rules!2728)))) 2) 0))))

(assert (=> b!1214663 d!347069))

(declare-fun d!347071 () Bool)

(declare-fun res!546265 () Bool)

(declare-fun e!779567 () Bool)

(assert (=> d!347071 (=> (not res!546265) (not e!779567))))

(declare-fun semiInverseModEq!772 (Int Int) Bool)

(assert (=> d!347071 (= res!546265 (semiInverseModEq!772 (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toValue!3254 (transformation!2129 (h!17779 rules!2728)))))))

(assert (=> d!347071 (= (inv!16563 (transformation!2129 (h!17779 rules!2728))) e!779567)))

(declare-fun b!1214668 () Bool)

(declare-fun equivClasses!739 (Int Int) Bool)

(assert (=> b!1214668 (= e!779567 (equivClasses!739 (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toValue!3254 (transformation!2129 (h!17779 rules!2728)))))))

(assert (= (and d!347071 res!546265) b!1214668))

(declare-fun m!1389443 () Bool)

(assert (=> d!347071 m!1389443))

(declare-fun m!1389445 () Bool)

(assert (=> b!1214668 m!1389445))

(assert (=> b!1214663 d!347071))

(declare-fun d!347077 () Bool)

(declare-fun res!546273 () Bool)

(declare-fun e!779573 () Bool)

(assert (=> d!347077 (=> (not res!546273) (not e!779573))))

(declare-fun isEmpty!7361 (List!12435) Bool)

(assert (=> d!347077 (= res!546273 (not (isEmpty!7361 (originalCharacters!2683 (h!17780 tokens!556)))))))

(assert (=> d!347077 (= (inv!16562 (h!17780 tokens!556)) e!779573)))

(declare-fun b!1214676 () Bool)

(declare-fun res!546274 () Bool)

(assert (=> b!1214676 (=> (not res!546274) (not e!779573))))

(declare-fun list!4567 (BalanceConc!8044) List!12435)

(declare-fun dynLambda!5406 (Int TokenValue!2197) BalanceConc!8044)

(assert (=> b!1214676 (= res!546274 (= (originalCharacters!2683 (h!17780 tokens!556)) (list!4567 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))))))

(declare-fun b!1214677 () Bool)

(declare-fun size!9800 (List!12435) Int)

(assert (=> b!1214677 (= e!779573 (= (size!9797 (h!17780 tokens!556)) (size!9800 (originalCharacters!2683 (h!17780 tokens!556)))))))

(assert (= (and d!347077 res!546273) b!1214676))

(assert (= (and b!1214676 res!546274) b!1214677))

(declare-fun b_lambda!35815 () Bool)

(assert (=> (not b_lambda!35815) (not b!1214676)))

(declare-fun t!113009 () Bool)

(declare-fun tb!66657 () Bool)

(assert (=> (and b!1214657 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) t!113009) tb!66657))

(declare-fun b!1214682 () Bool)

(declare-fun e!779576 () Bool)

(declare-fun tp!344606 () Bool)

(declare-fun inv!16566 (Conc!4056) Bool)

(assert (=> b!1214682 (= e!779576 (and (inv!16566 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))) tp!344606))))

(declare-fun result!80628 () Bool)

(declare-fun inv!16567 (BalanceConc!8044) Bool)

(assert (=> tb!66657 (= result!80628 (and (inv!16567 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))) e!779576))))

(assert (= tb!66657 b!1214682))

(declare-fun m!1389451 () Bool)

(assert (=> b!1214682 m!1389451))

(declare-fun m!1389453 () Bool)

(assert (=> tb!66657 m!1389453))

(assert (=> b!1214676 t!113009))

(declare-fun b_and!82425 () Bool)

(assert (= b_and!82419 (and (=> t!113009 result!80628) b_and!82425)))

(declare-fun t!113011 () Bool)

(declare-fun tb!66659 () Bool)

(assert (=> (and b!1214655 (= (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) t!113011) tb!66659))

(declare-fun result!80632 () Bool)

(assert (= result!80632 result!80628))

(assert (=> b!1214676 t!113011))

(declare-fun b_and!82427 () Bool)

(assert (= b_and!82423 (and (=> t!113011 result!80632) b_and!82427)))

(declare-fun m!1389455 () Bool)

(assert (=> d!347077 m!1389455))

(declare-fun m!1389457 () Bool)

(assert (=> b!1214676 m!1389457))

(assert (=> b!1214676 m!1389457))

(declare-fun m!1389459 () Bool)

(assert (=> b!1214676 m!1389459))

(declare-fun m!1389461 () Bool)

(assert (=> b!1214677 m!1389461))

(assert (=> b!1214658 d!347077))

(declare-fun d!347081 () Bool)

(declare-fun isEmpty!7362 (Option!2491) Bool)

(assert (=> d!347081 (= (isDefined!2129 (maxPrefix!946 thiss!20528 rules!2728 input!2346)) (not (isEmpty!7362 (maxPrefix!946 thiss!20528 rules!2728 input!2346))))))

(declare-fun bs!288755 () Bool)

(assert (= bs!288755 d!347081))

(assert (=> bs!288755 m!1389421))

(declare-fun m!1389467 () Bool)

(assert (=> bs!288755 m!1389467))

(assert (=> b!1214653 d!347081))

(declare-fun call!84538 () Option!2491)

(declare-fun bm!84533 () Bool)

(declare-fun maxPrefixOneRule!546 (LexerInterface!1824 Rule!4058 List!12435) Option!2491)

(assert (=> bm!84533 (= call!84538 (maxPrefixOneRule!546 thiss!20528 (h!17779 rules!2728) input!2346))))

(declare-fun b!1214731 () Bool)

(declare-fun e!779603 () Option!2491)

(declare-fun lt!415401 () Option!2491)

(declare-fun lt!415400 () Option!2491)

(assert (=> b!1214731 (= e!779603 (ite (and ((_ is None!2490) lt!415401) ((_ is None!2490) lt!415400)) None!2490 (ite ((_ is None!2490) lt!415400) lt!415401 (ite ((_ is None!2490) lt!415401) lt!415400 (ite (>= (size!9797 (_1!6970 (v!20619 lt!415401))) (size!9797 (_1!6970 (v!20619 lt!415400)))) lt!415401 lt!415400)))))))

(assert (=> b!1214731 (= lt!415401 call!84538)))

(assert (=> b!1214731 (= lt!415400 (maxPrefix!946 thiss!20528 (t!113006 rules!2728) input!2346))))

(declare-fun b!1214732 () Bool)

(declare-fun res!546306 () Bool)

(declare-fun e!779602 () Bool)

(assert (=> b!1214732 (=> (not res!546306) (not e!779602))))

(declare-fun lt!415397 () Option!2491)

(declare-fun charsOf!1135 (Token!3920) BalanceConc!8044)

(declare-fun get!4073 (Option!2491) tuple2!12246)

(assert (=> b!1214732 (= res!546306 (= (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))) (originalCharacters!2683 (_1!6970 (get!4073 lt!415397)))))))

(declare-fun b!1214733 () Bool)

(assert (=> b!1214733 (= e!779603 call!84538)))

(declare-fun b!1214734 () Bool)

(declare-fun res!546305 () Bool)

(assert (=> b!1214734 (=> (not res!546305) (not e!779602))))

(declare-fun apply!2645 (TokenValueInjection!4090 BalanceConc!8044) TokenValue!2197)

(declare-fun seqFromList!1548 (List!12435) BalanceConc!8044)

(assert (=> b!1214734 (= res!546305 (= (value!69273 (_1!6970 (get!4073 lt!415397))) (apply!2645 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))) (seqFromList!1548 (originalCharacters!2683 (_1!6970 (get!4073 lt!415397)))))))))

(declare-fun b!1214735 () Bool)

(declare-fun contains!2074 (List!12436 Rule!4058) Bool)

(assert (=> b!1214735 (= e!779602 (contains!2074 rules!2728 (rule!3552 (_1!6970 (get!4073 lt!415397)))))))

(declare-fun b!1214736 () Bool)

(declare-fun res!546308 () Bool)

(assert (=> b!1214736 (=> (not res!546308) (not e!779602))))

(declare-fun matchR!1521 (Regex!3399 List!12435) Bool)

(assert (=> b!1214736 (= res!546308 (matchR!1521 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))) (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun b!1214737 () Bool)

(declare-fun e!779604 () Bool)

(assert (=> b!1214737 (= e!779604 e!779602)))

(declare-fun res!546302 () Bool)

(assert (=> b!1214737 (=> (not res!546302) (not e!779602))))

(assert (=> b!1214737 (= res!546302 (isDefined!2129 lt!415397))))

(declare-fun b!1214738 () Bool)

(declare-fun res!546307 () Bool)

(assert (=> b!1214738 (=> (not res!546307) (not e!779602))))

(assert (=> b!1214738 (= res!546307 (< (size!9800 (_2!6970 (get!4073 lt!415397))) (size!9800 input!2346)))))

(declare-fun b!1214739 () Bool)

(declare-fun res!546304 () Bool)

(assert (=> b!1214739 (=> (not res!546304) (not e!779602))))

(declare-fun ++!3169 (List!12435 List!12435) List!12435)

(assert (=> b!1214739 (= res!546304 (= (++!3169 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))) (_2!6970 (get!4073 lt!415397))) input!2346))))

(declare-fun d!347085 () Bool)

(assert (=> d!347085 e!779604))

(declare-fun res!546303 () Bool)

(assert (=> d!347085 (=> res!546303 e!779604)))

(assert (=> d!347085 (= res!546303 (isEmpty!7362 lt!415397))))

(assert (=> d!347085 (= lt!415397 e!779603)))

(declare-fun c!203262 () Bool)

(assert (=> d!347085 (= c!203262 (and ((_ is Cons!12378) rules!2728) ((_ is Nil!12378) (t!113006 rules!2728))))))

(declare-datatypes ((Unit!18676 0))(
  ( (Unit!18677) )
))
(declare-fun lt!415399 () Unit!18676)

(declare-fun lt!415398 () Unit!18676)

(assert (=> d!347085 (= lt!415399 lt!415398)))

(declare-fun isPrefix!1027 (List!12435 List!12435) Bool)

(assert (=> d!347085 (isPrefix!1027 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!720 (List!12435 List!12435) Unit!18676)

(assert (=> d!347085 (= lt!415398 (lemmaIsPrefixRefl!720 input!2346 input!2346))))

(declare-fun rulesValidInductive!663 (LexerInterface!1824 List!12436) Bool)

(assert (=> d!347085 (rulesValidInductive!663 thiss!20528 rules!2728)))

(assert (=> d!347085 (= (maxPrefix!946 thiss!20528 rules!2728 input!2346) lt!415397)))

(assert (= (and d!347085 c!203262) b!1214733))

(assert (= (and d!347085 (not c!203262)) b!1214731))

(assert (= (or b!1214733 b!1214731) bm!84533))

(assert (= (and d!347085 (not res!546303)) b!1214737))

(assert (= (and b!1214737 res!546302) b!1214732))

(assert (= (and b!1214732 res!546306) b!1214738))

(assert (= (and b!1214738 res!546307) b!1214739))

(assert (= (and b!1214739 res!546304) b!1214734))

(assert (= (and b!1214734 res!546305) b!1214736))

(assert (= (and b!1214736 res!546308) b!1214735))

(declare-fun m!1389497 () Bool)

(assert (=> b!1214732 m!1389497))

(declare-fun m!1389499 () Bool)

(assert (=> b!1214732 m!1389499))

(assert (=> b!1214732 m!1389499))

(declare-fun m!1389501 () Bool)

(assert (=> b!1214732 m!1389501))

(assert (=> b!1214735 m!1389497))

(declare-fun m!1389503 () Bool)

(assert (=> b!1214735 m!1389503))

(declare-fun m!1389505 () Bool)

(assert (=> bm!84533 m!1389505))

(assert (=> b!1214739 m!1389497))

(assert (=> b!1214739 m!1389499))

(assert (=> b!1214739 m!1389499))

(assert (=> b!1214739 m!1389501))

(assert (=> b!1214739 m!1389501))

(declare-fun m!1389507 () Bool)

(assert (=> b!1214739 m!1389507))

(assert (=> b!1214738 m!1389497))

(declare-fun m!1389509 () Bool)

(assert (=> b!1214738 m!1389509))

(declare-fun m!1389511 () Bool)

(assert (=> b!1214738 m!1389511))

(assert (=> b!1214736 m!1389497))

(assert (=> b!1214736 m!1389499))

(assert (=> b!1214736 m!1389499))

(assert (=> b!1214736 m!1389501))

(assert (=> b!1214736 m!1389501))

(declare-fun m!1389513 () Bool)

(assert (=> b!1214736 m!1389513))

(declare-fun m!1389515 () Bool)

(assert (=> d!347085 m!1389515))

(declare-fun m!1389517 () Bool)

(assert (=> d!347085 m!1389517))

(declare-fun m!1389519 () Bool)

(assert (=> d!347085 m!1389519))

(declare-fun m!1389521 () Bool)

(assert (=> d!347085 m!1389521))

(declare-fun m!1389523 () Bool)

(assert (=> b!1214731 m!1389523))

(assert (=> b!1214734 m!1389497))

(declare-fun m!1389525 () Bool)

(assert (=> b!1214734 m!1389525))

(assert (=> b!1214734 m!1389525))

(declare-fun m!1389527 () Bool)

(assert (=> b!1214734 m!1389527))

(declare-fun m!1389529 () Bool)

(assert (=> b!1214737 m!1389529))

(assert (=> b!1214653 d!347085))

(declare-fun d!347097 () Bool)

(declare-fun e!779669 () Bool)

(assert (=> d!347097 e!779669))

(declare-fun c!203277 () Bool)

(declare-fun lt!415424 () tuple2!12248)

(declare-fun size!9801 (List!12437) Int)

(assert (=> d!347097 (= c!203277 (> (size!9801 (_1!6971 lt!415424)) 0))))

(declare-fun e!779668 () tuple2!12248)

(assert (=> d!347097 (= lt!415424 e!779668)))

(declare-fun c!203276 () Bool)

(declare-fun lt!415423 () Option!2491)

(assert (=> d!347097 (= c!203276 ((_ is Some!2490) lt!415423))))

(assert (=> d!347097 (= lt!415423 (maxPrefix!946 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347097 (= (lexList!454 thiss!20528 rules!2728 input!2346) lt!415424)))

(declare-fun b!1214841 () Bool)

(declare-fun e!779667 () Bool)

(assert (=> b!1214841 (= e!779669 e!779667)))

(declare-fun res!546335 () Bool)

(assert (=> b!1214841 (= res!546335 (< (size!9800 (_2!6971 lt!415424)) (size!9800 input!2346)))))

(assert (=> b!1214841 (=> (not res!546335) (not e!779667))))

(declare-fun b!1214842 () Bool)

(assert (=> b!1214842 (= e!779668 (tuple2!12249 Nil!12379 input!2346))))

(declare-fun b!1214843 () Bool)

(declare-fun isEmpty!7363 (List!12437) Bool)

(assert (=> b!1214843 (= e!779667 (not (isEmpty!7363 (_1!6971 lt!415424))))))

(declare-fun b!1214844 () Bool)

(declare-fun lt!415425 () tuple2!12248)

(assert (=> b!1214844 (= e!779668 (tuple2!12249 (Cons!12379 (_1!6970 (v!20619 lt!415423)) (_1!6971 lt!415425)) (_2!6971 lt!415425)))))

(assert (=> b!1214844 (= lt!415425 (lexList!454 thiss!20528 rules!2728 (_2!6970 (v!20619 lt!415423))))))

(declare-fun b!1214845 () Bool)

(assert (=> b!1214845 (= e!779669 (= (_2!6971 lt!415424) input!2346))))

(assert (= (and d!347097 c!203276) b!1214844))

(assert (= (and d!347097 (not c!203276)) b!1214842))

(assert (= (and d!347097 c!203277) b!1214841))

(assert (= (and d!347097 (not c!203277)) b!1214845))

(assert (= (and b!1214841 res!546335) b!1214843))

(declare-fun m!1389581 () Bool)

(assert (=> d!347097 m!1389581))

(assert (=> d!347097 m!1389421))

(declare-fun m!1389583 () Bool)

(assert (=> b!1214841 m!1389583))

(assert (=> b!1214841 m!1389511))

(declare-fun m!1389585 () Bool)

(assert (=> b!1214843 m!1389585))

(declare-fun m!1389587 () Bool)

(assert (=> b!1214844 m!1389587))

(assert (=> b!1214656 d!347097))

(declare-fun d!347103 () Bool)

(declare-fun c!203282 () Bool)

(assert (=> d!347103 (= c!203282 ((_ is IntegerValue!6591) (value!69273 (h!17780 tokens!556))))))

(declare-fun e!779677 () Bool)

(assert (=> d!347103 (= (inv!21 (value!69273 (h!17780 tokens!556))) e!779677)))

(declare-fun b!1214856 () Bool)

(declare-fun e!779676 () Bool)

(assert (=> b!1214856 (= e!779677 e!779676)))

(declare-fun c!203283 () Bool)

(assert (=> b!1214856 (= c!203283 ((_ is IntegerValue!6592) (value!69273 (h!17780 tokens!556))))))

(declare-fun b!1214857 () Bool)

(declare-fun e!779678 () Bool)

(declare-fun inv!15 (TokenValue!2197) Bool)

(assert (=> b!1214857 (= e!779678 (inv!15 (value!69273 (h!17780 tokens!556))))))

(declare-fun b!1214858 () Bool)

(declare-fun inv!17 (TokenValue!2197) Bool)

(assert (=> b!1214858 (= e!779676 (inv!17 (value!69273 (h!17780 tokens!556))))))

(declare-fun b!1214859 () Bool)

(declare-fun res!546338 () Bool)

(assert (=> b!1214859 (=> res!546338 e!779678)))

(assert (=> b!1214859 (= res!546338 (not ((_ is IntegerValue!6593) (value!69273 (h!17780 tokens!556)))))))

(assert (=> b!1214859 (= e!779676 e!779678)))

(declare-fun b!1214860 () Bool)

(declare-fun inv!16 (TokenValue!2197) Bool)

(assert (=> b!1214860 (= e!779677 (inv!16 (value!69273 (h!17780 tokens!556))))))

(assert (= (and d!347103 c!203282) b!1214860))

(assert (= (and d!347103 (not c!203282)) b!1214856))

(assert (= (and b!1214856 c!203283) b!1214858))

(assert (= (and b!1214856 (not c!203283)) b!1214859))

(assert (= (and b!1214859 (not res!546338)) b!1214857))

(declare-fun m!1389589 () Bool)

(assert (=> b!1214857 m!1389589))

(declare-fun m!1389591 () Bool)

(assert (=> b!1214858 m!1389591))

(declare-fun m!1389593 () Bool)

(assert (=> b!1214860 m!1389593))

(assert (=> b!1214662 d!347103))

(declare-fun d!347105 () Bool)

(declare-fun res!546341 () Bool)

(declare-fun e!779681 () Bool)

(assert (=> d!347105 (=> (not res!546341) (not e!779681))))

(declare-fun rulesValid!760 (LexerInterface!1824 List!12436) Bool)

(assert (=> d!347105 (= res!546341 (rulesValid!760 thiss!20528 rules!2728))))

(assert (=> d!347105 (= (rulesInvariant!1698 thiss!20528 rules!2728) e!779681)))

(declare-fun b!1214863 () Bool)

(declare-datatypes ((List!12439 0))(
  ( (Nil!12381) (Cons!12381 (h!17782 String!15117) (t!113025 List!12439)) )
))
(declare-fun noDuplicateTag!760 (LexerInterface!1824 List!12436 List!12439) Bool)

(assert (=> b!1214863 (= e!779681 (noDuplicateTag!760 thiss!20528 rules!2728 Nil!12381))))

(assert (= (and d!347105 res!546341) b!1214863))

(declare-fun m!1389595 () Bool)

(assert (=> d!347105 m!1389595))

(declare-fun m!1389597 () Bool)

(assert (=> b!1214863 m!1389597))

(assert (=> b!1214660 d!347105))

(declare-fun d!347107 () Bool)

(assert (=> d!347107 (= (inv!16559 (tag!2391 (rule!3552 (h!17780 tokens!556)))) (= (mod (str.len (value!69272 (tag!2391 (rule!3552 (h!17780 tokens!556))))) 2) 0))))

(assert (=> b!1214661 d!347107))

(declare-fun d!347109 () Bool)

(declare-fun res!546342 () Bool)

(declare-fun e!779682 () Bool)

(assert (=> d!347109 (=> (not res!546342) (not e!779682))))

(assert (=> d!347109 (= res!546342 (semiInverseModEq!772 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556))))))))

(assert (=> d!347109 (= (inv!16563 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) e!779682)))

(declare-fun b!1214864 () Bool)

(assert (=> b!1214864 (= e!779682 (equivClasses!739 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556))))))))

(assert (= (and d!347109 res!546342) b!1214864))

(declare-fun m!1389599 () Bool)

(assert (=> d!347109 m!1389599))

(declare-fun m!1389601 () Bool)

(assert (=> b!1214864 m!1389601))

(assert (=> b!1214661 d!347109))

(declare-fun b!1214869 () Bool)

(declare-fun e!779685 () Bool)

(declare-fun tp!344663 () Bool)

(assert (=> b!1214869 (= e!779685 (and tp_is_empty!6319 tp!344663))))

(assert (=> b!1214664 (= tp!344599 e!779685)))

(assert (= (and b!1214664 ((_ is Cons!12377) (t!113005 input!2346))) b!1214869))

(declare-fun b!1214880 () Bool)

(declare-fun b_free!29129 () Bool)

(declare-fun b_next!29833 () Bool)

(assert (=> b!1214880 (= b_free!29129 (not b_next!29833))))

(declare-fun tp!344674 () Bool)

(declare-fun b_and!82441 () Bool)

(assert (=> b!1214880 (= tp!344674 b_and!82441)))

(declare-fun b_free!29131 () Bool)

(declare-fun b_next!29835 () Bool)

(assert (=> b!1214880 (= b_free!29131 (not b_next!29835))))

(declare-fun t!113022 () Bool)

(declare-fun tb!66669 () Bool)

(assert (=> (and b!1214880 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) t!113022) tb!66669))

(declare-fun result!80656 () Bool)

(assert (= result!80656 result!80628))

(assert (=> b!1214676 t!113022))

(declare-fun b_and!82443 () Bool)

(declare-fun tp!344673 () Bool)

(assert (=> b!1214880 (= tp!344673 (and (=> t!113022 result!80656) b_and!82443))))

(declare-fun e!779695 () Bool)

(assert (=> b!1214880 (= e!779695 (and tp!344674 tp!344673))))

(declare-fun b!1214879 () Bool)

(declare-fun tp!344672 () Bool)

(declare-fun e!779697 () Bool)

(assert (=> b!1214879 (= e!779697 (and tp!344672 (inv!16559 (tag!2391 (h!17779 (t!113006 rules!2728)))) (inv!16563 (transformation!2129 (h!17779 (t!113006 rules!2728)))) e!779695))))

(declare-fun b!1214878 () Bool)

(declare-fun e!779696 () Bool)

(declare-fun tp!344675 () Bool)

(assert (=> b!1214878 (= e!779696 (and e!779697 tp!344675))))

(assert (=> b!1214654 (= tp!344598 e!779696)))

(assert (= b!1214879 b!1214880))

(assert (= b!1214878 b!1214879))

(assert (= (and b!1214654 ((_ is Cons!12378) (t!113006 rules!2728))) b!1214878))

(declare-fun m!1389603 () Bool)

(assert (=> b!1214879 m!1389603))

(declare-fun m!1389605 () Bool)

(assert (=> b!1214879 m!1389605))

(declare-fun b!1214892 () Bool)

(declare-fun e!779700 () Bool)

(declare-fun tp!344687 () Bool)

(declare-fun tp!344690 () Bool)

(assert (=> b!1214892 (= e!779700 (and tp!344687 tp!344690))))

(assert (=> b!1214663 (= tp!344600 e!779700)))

(declare-fun b!1214893 () Bool)

(declare-fun tp!344686 () Bool)

(assert (=> b!1214893 (= e!779700 tp!344686)))

(declare-fun b!1214894 () Bool)

(declare-fun tp!344688 () Bool)

(declare-fun tp!344689 () Bool)

(assert (=> b!1214894 (= e!779700 (and tp!344688 tp!344689))))

(declare-fun b!1214891 () Bool)

(assert (=> b!1214891 (= e!779700 tp_is_empty!6319)))

(assert (= (and b!1214663 ((_ is ElementMatch!3399) (regex!2129 (h!17779 rules!2728)))) b!1214891))

(assert (= (and b!1214663 ((_ is Concat!5597) (regex!2129 (h!17779 rules!2728)))) b!1214892))

(assert (= (and b!1214663 ((_ is Star!3399) (regex!2129 (h!17779 rules!2728)))) b!1214893))

(assert (= (and b!1214663 ((_ is Union!3399) (regex!2129 (h!17779 rules!2728)))) b!1214894))

(declare-fun b!1214908 () Bool)

(declare-fun b_free!29133 () Bool)

(declare-fun b_next!29837 () Bool)

(assert (=> b!1214908 (= b_free!29133 (not b_next!29837))))

(declare-fun tp!344702 () Bool)

(declare-fun b_and!82445 () Bool)

(assert (=> b!1214908 (= tp!344702 b_and!82445)))

(declare-fun b_free!29135 () Bool)

(declare-fun b_next!29839 () Bool)

(assert (=> b!1214908 (= b_free!29135 (not b_next!29839))))

(declare-fun t!113024 () Bool)

(declare-fun tb!66671 () Bool)

(assert (=> (and b!1214908 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) t!113024) tb!66671))

(declare-fun result!80662 () Bool)

(assert (= result!80662 result!80628))

(assert (=> b!1214676 t!113024))

(declare-fun b_and!82447 () Bool)

(declare-fun tp!344703 () Bool)

(assert (=> b!1214908 (= tp!344703 (and (=> t!113024 result!80662) b_and!82447))))

(declare-fun e!779714 () Bool)

(assert (=> b!1214658 (= tp!344595 e!779714)))

(declare-fun tp!344705 () Bool)

(declare-fun b!1214907 () Bool)

(declare-fun e!779715 () Bool)

(declare-fun e!779717 () Bool)

(assert (=> b!1214907 (= e!779717 (and tp!344705 (inv!16559 (tag!2391 (rule!3552 (h!17780 (t!113007 tokens!556))))) (inv!16563 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) e!779715))))

(declare-fun e!779718 () Bool)

(declare-fun tp!344704 () Bool)

(declare-fun b!1214905 () Bool)

(assert (=> b!1214905 (= e!779714 (and (inv!16562 (h!17780 (t!113007 tokens!556))) e!779718 tp!344704))))

(assert (=> b!1214908 (= e!779715 (and tp!344702 tp!344703))))

(declare-fun tp!344701 () Bool)

(declare-fun b!1214906 () Bool)

(assert (=> b!1214906 (= e!779718 (and (inv!21 (value!69273 (h!17780 (t!113007 tokens!556)))) e!779717 tp!344701))))

(assert (= b!1214907 b!1214908))

(assert (= b!1214906 b!1214907))

(assert (= b!1214905 b!1214906))

(assert (= (and b!1214658 ((_ is Cons!12379) (t!113007 tokens!556))) b!1214905))

(declare-fun m!1389607 () Bool)

(assert (=> b!1214907 m!1389607))

(declare-fun m!1389609 () Bool)

(assert (=> b!1214907 m!1389609))

(declare-fun m!1389611 () Bool)

(assert (=> b!1214905 m!1389611))

(declare-fun m!1389613 () Bool)

(assert (=> b!1214906 m!1389613))

(declare-fun b!1214909 () Bool)

(declare-fun e!779719 () Bool)

(declare-fun tp!344706 () Bool)

(assert (=> b!1214909 (= e!779719 (and tp_is_empty!6319 tp!344706))))

(assert (=> b!1214662 (= tp!344597 e!779719)))

(assert (= (and b!1214662 ((_ is Cons!12377) (originalCharacters!2683 (h!17780 tokens!556)))) b!1214909))

(declare-fun b!1214911 () Bool)

(declare-fun e!779720 () Bool)

(declare-fun tp!344708 () Bool)

(declare-fun tp!344711 () Bool)

(assert (=> b!1214911 (= e!779720 (and tp!344708 tp!344711))))

(assert (=> b!1214661 (= tp!344594 e!779720)))

(declare-fun b!1214912 () Bool)

(declare-fun tp!344707 () Bool)

(assert (=> b!1214912 (= e!779720 tp!344707)))

(declare-fun b!1214913 () Bool)

(declare-fun tp!344709 () Bool)

(declare-fun tp!344710 () Bool)

(assert (=> b!1214913 (= e!779720 (and tp!344709 tp!344710))))

(declare-fun b!1214910 () Bool)

(assert (=> b!1214910 (= e!779720 tp_is_empty!6319)))

(assert (= (and b!1214661 ((_ is ElementMatch!3399) (regex!2129 (rule!3552 (h!17780 tokens!556))))) b!1214910))

(assert (= (and b!1214661 ((_ is Concat!5597) (regex!2129 (rule!3552 (h!17780 tokens!556))))) b!1214911))

(assert (= (and b!1214661 ((_ is Star!3399) (regex!2129 (rule!3552 (h!17780 tokens!556))))) b!1214912))

(assert (= (and b!1214661 ((_ is Union!3399) (regex!2129 (rule!3552 (h!17780 tokens!556))))) b!1214913))

(declare-fun b_lambda!35821 () Bool)

(assert (= b_lambda!35815 (or (and b!1214657 b_free!29115) (and b!1214655 b_free!29119 (= (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))))) (and b!1214880 b_free!29131 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))))) (and b!1214908 b_free!29135 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))))) b_lambda!35821)))

(check-sat b_and!82447 (not b!1214739) (not b!1214844) (not b!1214909) (not b!1214736) (not b_next!29835) (not b_next!29819) (not b_next!29839) b_and!82441 (not b!1214737) b_and!82417 (not d!347077) b_and!82421 (not b_next!29833) (not b_next!29823) (not tb!66657) (not b!1214738) (not b!1214860) (not b!1214682) (not b!1214893) (not b!1214864) (not b_next!29817) (not b!1214857) (not d!347081) (not b!1214913) (not b!1214863) (not b!1214734) (not b!1214735) (not b!1214905) (not d!347097) (not b!1214912) (not b!1214892) (not b!1214878) (not b_next!29821) (not d!347105) (not b!1214841) b_and!82445 (not d!347071) (not b!1214668) b_and!82427 (not b!1214731) (not b!1214843) (not d!347085) (not b!1214911) b_and!82443 tp_is_empty!6319 (not b!1214906) (not b!1214858) (not b!1214894) b_and!82425 (not b!1214676) (not b_next!29837) (not d!347109) (not b!1214732) (not b_lambda!35821) (not b!1214907) (not b!1214677) (not b!1214869) (not b!1214879) (not bm!84533))
(check-sat b_and!82447 (not b_next!29817) (not b_next!29821) b_and!82445 b_and!82427 b_and!82443 (not b_next!29835) b_and!82417 (not b_next!29819) (not b_next!29839) b_and!82421 b_and!82441 (not b_next!29833) (not b_next!29823) b_and!82425 (not b_next!29837))
(get-model)

(declare-fun d!347125 () Bool)

(assert (=> d!347125 (= (isDefined!2129 lt!415397) (not (isEmpty!7362 lt!415397)))))

(declare-fun bs!288760 () Bool)

(assert (= bs!288760 d!347125))

(assert (=> bs!288760 m!1389515))

(assert (=> b!1214737 d!347125))

(declare-fun d!347127 () Bool)

(assert (=> d!347127 (= (isEmpty!7363 (_1!6971 lt!415424)) ((_ is Nil!12379) (_1!6971 lt!415424)))))

(assert (=> b!1214843 d!347127))

(declare-fun d!347129 () Bool)

(declare-fun lt!415436 () Int)

(assert (=> d!347129 (>= lt!415436 0)))

(declare-fun e!779736 () Int)

(assert (=> d!347129 (= lt!415436 e!779736)))

(declare-fun c!203286 () Bool)

(assert (=> d!347129 (= c!203286 ((_ is Nil!12377) (_2!6970 (get!4073 lt!415397))))))

(assert (=> d!347129 (= (size!9800 (_2!6970 (get!4073 lt!415397))) lt!415436)))

(declare-fun b!1214934 () Bool)

(assert (=> b!1214934 (= e!779736 0)))

(declare-fun b!1214935 () Bool)

(assert (=> b!1214935 (= e!779736 (+ 1 (size!9800 (t!113005 (_2!6970 (get!4073 lt!415397))))))))

(assert (= (and d!347129 c!203286) b!1214934))

(assert (= (and d!347129 (not c!203286)) b!1214935))

(declare-fun m!1389627 () Bool)

(assert (=> b!1214935 m!1389627))

(assert (=> b!1214738 d!347129))

(declare-fun d!347131 () Bool)

(assert (=> d!347131 (= (get!4073 lt!415397) (v!20619 lt!415397))))

(assert (=> b!1214738 d!347131))

(declare-fun d!347133 () Bool)

(declare-fun lt!415437 () Int)

(assert (=> d!347133 (>= lt!415437 0)))

(declare-fun e!779737 () Int)

(assert (=> d!347133 (= lt!415437 e!779737)))

(declare-fun c!203287 () Bool)

(assert (=> d!347133 (= c!203287 ((_ is Nil!12377) input!2346))))

(assert (=> d!347133 (= (size!9800 input!2346) lt!415437)))

(declare-fun b!1214936 () Bool)

(assert (=> b!1214936 (= e!779737 0)))

(declare-fun b!1214937 () Bool)

(assert (=> b!1214937 (= e!779737 (+ 1 (size!9800 (t!113005 input!2346))))))

(assert (= (and d!347133 c!203287) b!1214936))

(assert (= (and d!347133 (not c!203287)) b!1214937))

(declare-fun m!1389629 () Bool)

(assert (=> b!1214937 m!1389629))

(assert (=> b!1214738 d!347133))

(declare-fun b!1214966 () Bool)

(declare-fun e!779756 () Bool)

(declare-fun head!2150 (List!12435) C!7116)

(assert (=> b!1214966 (= e!779756 (not (= (head!2150 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))) (c!203252 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))))))))

(declare-fun b!1214967 () Bool)

(declare-fun e!779755 () Bool)

(assert (=> b!1214967 (= e!779755 (= (head!2150 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))) (c!203252 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))))))

(declare-fun b!1214968 () Bool)

(declare-fun res!546387 () Bool)

(assert (=> b!1214968 (=> (not res!546387) (not e!779755))))

(declare-fun tail!1782 (List!12435) List!12435)

(assert (=> b!1214968 (= res!546387 (isEmpty!7361 (tail!1782 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))))))))

(declare-fun b!1214969 () Bool)

(declare-fun e!779753 () Bool)

(declare-fun e!779754 () Bool)

(assert (=> b!1214969 (= e!779753 e!779754)))

(declare-fun res!546385 () Bool)

(assert (=> b!1214969 (=> (not res!546385) (not e!779754))))

(declare-fun lt!415440 () Bool)

(assert (=> b!1214969 (= res!546385 (not lt!415440))))

(declare-fun b!1214970 () Bool)

(declare-fun res!546383 () Bool)

(assert (=> b!1214970 (=> res!546383 e!779753)))

(assert (=> b!1214970 (= res!546383 e!779755)))

(declare-fun res!546382 () Bool)

(assert (=> b!1214970 (=> (not res!546382) (not e!779755))))

(assert (=> b!1214970 (= res!546382 lt!415440)))

(declare-fun b!1214971 () Bool)

(declare-fun e!779758 () Bool)

(declare-fun e!779757 () Bool)

(assert (=> b!1214971 (= e!779758 e!779757)))

(declare-fun c!203294 () Bool)

(assert (=> b!1214971 (= c!203294 ((_ is EmptyLang!3399) (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun b!1214972 () Bool)

(assert (=> b!1214972 (= e!779754 e!779756)))

(declare-fun res!546388 () Bool)

(assert (=> b!1214972 (=> res!546388 e!779756)))

(declare-fun call!84544 () Bool)

(assert (=> b!1214972 (= res!546388 call!84544)))

(declare-fun d!347135 () Bool)

(assert (=> d!347135 e!779758))

(declare-fun c!203296 () Bool)

(assert (=> d!347135 (= c!203296 ((_ is EmptyExpr!3399) (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun e!779752 () Bool)

(assert (=> d!347135 (= lt!415440 e!779752)))

(declare-fun c!203295 () Bool)

(assert (=> d!347135 (= c!203295 (isEmpty!7361 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun validRegex!1450 (Regex!3399) Bool)

(assert (=> d!347135 (validRegex!1450 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))))

(assert (=> d!347135 (= (matchR!1521 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))) (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))) lt!415440)))

(declare-fun b!1214973 () Bool)

(assert (=> b!1214973 (= e!779758 (= lt!415440 call!84544))))

(declare-fun b!1214974 () Bool)

(declare-fun derivativeStep!846 (Regex!3399 C!7116) Regex!3399)

(assert (=> b!1214974 (= e!779752 (matchR!1521 (derivativeStep!846 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))) (head!2150 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))))) (tail!1782 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))))))))

(declare-fun b!1214975 () Bool)

(declare-fun res!546384 () Bool)

(assert (=> b!1214975 (=> res!546384 e!779753)))

(assert (=> b!1214975 (= res!546384 (not ((_ is ElementMatch!3399) (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))))))

(assert (=> b!1214975 (= e!779757 e!779753)))

(declare-fun b!1214976 () Bool)

(declare-fun nullable!1053 (Regex!3399) Bool)

(assert (=> b!1214976 (= e!779752 (nullable!1053 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun bm!84539 () Bool)

(assert (=> bm!84539 (= call!84544 (isEmpty!7361 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun b!1214977 () Bool)

(declare-fun res!546389 () Bool)

(assert (=> b!1214977 (=> (not res!546389) (not e!779755))))

(assert (=> b!1214977 (= res!546389 (not call!84544))))

(declare-fun b!1214978 () Bool)

(assert (=> b!1214978 (= e!779757 (not lt!415440))))

(declare-fun b!1214979 () Bool)

(declare-fun res!546386 () Bool)

(assert (=> b!1214979 (=> res!546386 e!779756)))

(assert (=> b!1214979 (= res!546386 (not (isEmpty!7361 (tail!1782 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))))))))

(assert (= (and d!347135 c!203295) b!1214976))

(assert (= (and d!347135 (not c!203295)) b!1214974))

(assert (= (and d!347135 c!203296) b!1214973))

(assert (= (and d!347135 (not c!203296)) b!1214971))

(assert (= (and b!1214971 c!203294) b!1214978))

(assert (= (and b!1214971 (not c!203294)) b!1214975))

(assert (= (and b!1214975 (not res!546384)) b!1214970))

(assert (= (and b!1214970 res!546382) b!1214977))

(assert (= (and b!1214977 res!546389) b!1214968))

(assert (= (and b!1214968 res!546387) b!1214967))

(assert (= (and b!1214970 (not res!546383)) b!1214969))

(assert (= (and b!1214969 res!546385) b!1214972))

(assert (= (and b!1214972 (not res!546388)) b!1214979))

(assert (= (and b!1214979 (not res!546386)) b!1214966))

(assert (= (or b!1214973 b!1214972 b!1214977) bm!84539))

(assert (=> b!1214979 m!1389501))

(declare-fun m!1389631 () Bool)

(assert (=> b!1214979 m!1389631))

(assert (=> b!1214979 m!1389631))

(declare-fun m!1389633 () Bool)

(assert (=> b!1214979 m!1389633))

(assert (=> d!347135 m!1389501))

(declare-fun m!1389635 () Bool)

(assert (=> d!347135 m!1389635))

(declare-fun m!1389637 () Bool)

(assert (=> d!347135 m!1389637))

(assert (=> b!1214966 m!1389501))

(declare-fun m!1389639 () Bool)

(assert (=> b!1214966 m!1389639))

(assert (=> b!1214968 m!1389501))

(assert (=> b!1214968 m!1389631))

(assert (=> b!1214968 m!1389631))

(assert (=> b!1214968 m!1389633))

(declare-fun m!1389641 () Bool)

(assert (=> b!1214976 m!1389641))

(assert (=> bm!84539 m!1389501))

(assert (=> bm!84539 m!1389635))

(assert (=> b!1214974 m!1389501))

(assert (=> b!1214974 m!1389639))

(assert (=> b!1214974 m!1389639))

(declare-fun m!1389643 () Bool)

(assert (=> b!1214974 m!1389643))

(assert (=> b!1214974 m!1389501))

(assert (=> b!1214974 m!1389631))

(assert (=> b!1214974 m!1389643))

(assert (=> b!1214974 m!1389631))

(declare-fun m!1389645 () Bool)

(assert (=> b!1214974 m!1389645))

(assert (=> b!1214967 m!1389501))

(assert (=> b!1214967 m!1389639))

(assert (=> b!1214736 d!347135))

(assert (=> b!1214736 d!347131))

(declare-fun d!347137 () Bool)

(declare-fun list!4569 (Conc!4056) List!12435)

(assert (=> d!347137 (= (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))) (list!4569 (c!203253 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun bs!288761 () Bool)

(assert (= bs!288761 d!347137))

(declare-fun m!1389647 () Bool)

(assert (=> bs!288761 m!1389647))

(assert (=> b!1214736 d!347137))

(declare-fun d!347139 () Bool)

(declare-fun lt!415443 () BalanceConc!8044)

(assert (=> d!347139 (= (list!4567 lt!415443) (originalCharacters!2683 (_1!6970 (get!4073 lt!415397))))))

(assert (=> d!347139 (= lt!415443 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))) (value!69273 (_1!6970 (get!4073 lt!415397)))))))

(assert (=> d!347139 (= (charsOf!1135 (_1!6970 (get!4073 lt!415397))) lt!415443)))

(declare-fun b_lambda!35823 () Bool)

(assert (=> (not b_lambda!35823) (not d!347139)))

(declare-fun t!113027 () Bool)

(declare-fun tb!66673 () Bool)

(assert (=> (and b!1214657 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113027) tb!66673))

(declare-fun b!1214980 () Bool)

(declare-fun e!779759 () Bool)

(declare-fun tp!344712 () Bool)

(assert (=> b!1214980 (= e!779759 (and (inv!16566 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))) (value!69273 (_1!6970 (get!4073 lt!415397)))))) tp!344712))))

(declare-fun result!80664 () Bool)

(assert (=> tb!66673 (= result!80664 (and (inv!16567 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))) (value!69273 (_1!6970 (get!4073 lt!415397))))) e!779759))))

(assert (= tb!66673 b!1214980))

(declare-fun m!1389649 () Bool)

(assert (=> b!1214980 m!1389649))

(declare-fun m!1389651 () Bool)

(assert (=> tb!66673 m!1389651))

(assert (=> d!347139 t!113027))

(declare-fun b_and!82449 () Bool)

(assert (= b_and!82425 (and (=> t!113027 result!80664) b_and!82449)))

(declare-fun t!113029 () Bool)

(declare-fun tb!66675 () Bool)

(assert (=> (and b!1214655 (= (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113029) tb!66675))

(declare-fun result!80666 () Bool)

(assert (= result!80666 result!80664))

(assert (=> d!347139 t!113029))

(declare-fun b_and!82451 () Bool)

(assert (= b_and!82427 (and (=> t!113029 result!80666) b_and!82451)))

(declare-fun t!113031 () Bool)

(declare-fun tb!66677 () Bool)

(assert (=> (and b!1214880 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113031) tb!66677))

(declare-fun result!80668 () Bool)

(assert (= result!80668 result!80664))

(assert (=> d!347139 t!113031))

(declare-fun b_and!82453 () Bool)

(assert (= b_and!82443 (and (=> t!113031 result!80668) b_and!82453)))

(declare-fun t!113033 () Bool)

(declare-fun tb!66679 () Bool)

(assert (=> (and b!1214908 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113033) tb!66679))

(declare-fun result!80670 () Bool)

(assert (= result!80670 result!80664))

(assert (=> d!347139 t!113033))

(declare-fun b_and!82455 () Bool)

(assert (= b_and!82447 (and (=> t!113033 result!80670) b_and!82455)))

(declare-fun m!1389653 () Bool)

(assert (=> d!347139 m!1389653))

(declare-fun m!1389655 () Bool)

(assert (=> d!347139 m!1389655))

(assert (=> b!1214736 d!347139))

(declare-fun d!347141 () Bool)

(declare-fun e!779762 () Bool)

(assert (=> d!347141 e!779762))

(declare-fun c!203298 () Bool)

(declare-fun lt!415445 () tuple2!12248)

(assert (=> d!347141 (= c!203298 (> (size!9801 (_1!6971 lt!415445)) 0))))

(declare-fun e!779761 () tuple2!12248)

(assert (=> d!347141 (= lt!415445 e!779761)))

(declare-fun c!203297 () Bool)

(declare-fun lt!415444 () Option!2491)

(assert (=> d!347141 (= c!203297 ((_ is Some!2490) lt!415444))))

(assert (=> d!347141 (= lt!415444 (maxPrefix!946 thiss!20528 rules!2728 (_2!6970 (v!20619 lt!415423))))))

(assert (=> d!347141 (= (lexList!454 thiss!20528 rules!2728 (_2!6970 (v!20619 lt!415423))) lt!415445)))

(declare-fun b!1214981 () Bool)

(declare-fun e!779760 () Bool)

(assert (=> b!1214981 (= e!779762 e!779760)))

(declare-fun res!546390 () Bool)

(assert (=> b!1214981 (= res!546390 (< (size!9800 (_2!6971 lt!415445)) (size!9800 (_2!6970 (v!20619 lt!415423)))))))

(assert (=> b!1214981 (=> (not res!546390) (not e!779760))))

(declare-fun b!1214982 () Bool)

(assert (=> b!1214982 (= e!779761 (tuple2!12249 Nil!12379 (_2!6970 (v!20619 lt!415423))))))

(declare-fun b!1214983 () Bool)

(assert (=> b!1214983 (= e!779760 (not (isEmpty!7363 (_1!6971 lt!415445))))))

(declare-fun b!1214984 () Bool)

(declare-fun lt!415446 () tuple2!12248)

(assert (=> b!1214984 (= e!779761 (tuple2!12249 (Cons!12379 (_1!6970 (v!20619 lt!415444)) (_1!6971 lt!415446)) (_2!6971 lt!415446)))))

(assert (=> b!1214984 (= lt!415446 (lexList!454 thiss!20528 rules!2728 (_2!6970 (v!20619 lt!415444))))))

(declare-fun b!1214985 () Bool)

(assert (=> b!1214985 (= e!779762 (= (_2!6971 lt!415445) (_2!6970 (v!20619 lt!415423))))))

(assert (= (and d!347141 c!203297) b!1214984))

(assert (= (and d!347141 (not c!203297)) b!1214982))

(assert (= (and d!347141 c!203298) b!1214981))

(assert (= (and d!347141 (not c!203298)) b!1214985))

(assert (= (and b!1214981 res!546390) b!1214983))

(declare-fun m!1389657 () Bool)

(assert (=> d!347141 m!1389657))

(declare-fun m!1389659 () Bool)

(assert (=> d!347141 m!1389659))

(declare-fun m!1389661 () Bool)

(assert (=> b!1214981 m!1389661))

(declare-fun m!1389663 () Bool)

(assert (=> b!1214981 m!1389663))

(declare-fun m!1389665 () Bool)

(assert (=> b!1214983 m!1389665))

(declare-fun m!1389667 () Bool)

(assert (=> b!1214984 m!1389667))

(assert (=> b!1214844 d!347141))

(declare-fun d!347143 () Bool)

(declare-fun c!203301 () Bool)

(assert (=> d!347143 (= c!203301 ((_ is Node!4056) (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))))))

(declare-fun e!779767 () Bool)

(assert (=> d!347143 (= (inv!16566 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))) e!779767)))

(declare-fun b!1214992 () Bool)

(declare-fun inv!16568 (Conc!4056) Bool)

(assert (=> b!1214992 (= e!779767 (inv!16568 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))))))

(declare-fun b!1214993 () Bool)

(declare-fun e!779768 () Bool)

(assert (=> b!1214993 (= e!779767 e!779768)))

(declare-fun res!546393 () Bool)

(assert (=> b!1214993 (= res!546393 (not ((_ is Leaf!6269) (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))))))))

(assert (=> b!1214993 (=> res!546393 e!779768)))

(declare-fun b!1214994 () Bool)

(declare-fun inv!16569 (Conc!4056) Bool)

(assert (=> b!1214994 (= e!779768 (inv!16569 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))))))

(assert (= (and d!347143 c!203301) b!1214992))

(assert (= (and d!347143 (not c!203301)) b!1214993))

(assert (= (and b!1214993 (not res!546393)) b!1214994))

(declare-fun m!1389669 () Bool)

(assert (=> b!1214992 m!1389669))

(declare-fun m!1389671 () Bool)

(assert (=> b!1214994 m!1389671))

(assert (=> b!1214682 d!347143))

(declare-fun d!347145 () Bool)

(declare-fun isBalanced!1179 (Conc!4056) Bool)

(assert (=> d!347145 (= (inv!16567 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))) (isBalanced!1179 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))))))

(declare-fun bs!288762 () Bool)

(assert (= bs!288762 d!347145))

(declare-fun m!1389673 () Bool)

(assert (=> bs!288762 m!1389673))

(assert (=> tb!66657 d!347145))

(declare-fun d!347147 () Bool)

(assert (=> d!347147 true))

(declare-fun order!7539 () Int)

(declare-fun order!7541 () Int)

(declare-fun lambda!49124 () Int)

(declare-fun dynLambda!5410 (Int Int) Int)

(declare-fun dynLambda!5411 (Int Int) Int)

(assert (=> d!347147 (< (dynLambda!5410 order!7539 (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) (dynLambda!5411 order!7541 lambda!49124))))

(declare-fun Forall2!363 (Int) Bool)

(assert (=> d!347147 (= (equivClasses!739 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) (Forall2!363 lambda!49124))))

(declare-fun bs!288774 () Bool)

(assert (= bs!288774 d!347147))

(declare-fun m!1389809 () Bool)

(assert (=> bs!288774 m!1389809))

(assert (=> b!1214864 d!347147))

(declare-fun d!347209 () Bool)

(declare-fun res!546456 () Bool)

(declare-fun e!779840 () Bool)

(assert (=> d!347209 (=> (not res!546456) (not e!779840))))

(assert (=> d!347209 (= res!546456 (not (isEmpty!7361 (originalCharacters!2683 (h!17780 (t!113007 tokens!556))))))))

(assert (=> d!347209 (= (inv!16562 (h!17780 (t!113007 tokens!556))) e!779840)))

(declare-fun b!1215120 () Bool)

(declare-fun res!546457 () Bool)

(assert (=> b!1215120 (=> (not res!546457) (not e!779840))))

(assert (=> b!1215120 (= res!546457 (= (originalCharacters!2683 (h!17780 (t!113007 tokens!556))) (list!4567 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (value!69273 (h!17780 (t!113007 tokens!556)))))))))

(declare-fun b!1215121 () Bool)

(assert (=> b!1215121 (= e!779840 (= (size!9797 (h!17780 (t!113007 tokens!556))) (size!9800 (originalCharacters!2683 (h!17780 (t!113007 tokens!556))))))))

(assert (= (and d!347209 res!546456) b!1215120))

(assert (= (and b!1215120 res!546457) b!1215121))

(declare-fun b_lambda!35829 () Bool)

(assert (=> (not b_lambda!35829) (not b!1215120)))

(declare-fun t!113051 () Bool)

(declare-fun tb!66697 () Bool)

(assert (=> (and b!1214657 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) t!113051) tb!66697))

(declare-fun b!1215122 () Bool)

(declare-fun e!779841 () Bool)

(declare-fun tp!344714 () Bool)

(assert (=> b!1215122 (= e!779841 (and (inv!16566 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (value!69273 (h!17780 (t!113007 tokens!556)))))) tp!344714))))

(declare-fun result!80690 () Bool)

(assert (=> tb!66697 (= result!80690 (and (inv!16567 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (value!69273 (h!17780 (t!113007 tokens!556))))) e!779841))))

(assert (= tb!66697 b!1215122))

(declare-fun m!1389811 () Bool)

(assert (=> b!1215122 m!1389811))

(declare-fun m!1389813 () Bool)

(assert (=> tb!66697 m!1389813))

(assert (=> b!1215120 t!113051))

(declare-fun b_and!82473 () Bool)

(assert (= b_and!82449 (and (=> t!113051 result!80690) b_and!82473)))

(declare-fun tb!66699 () Bool)

(declare-fun t!113053 () Bool)

(assert (=> (and b!1214655 (= (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) t!113053) tb!66699))

(declare-fun result!80692 () Bool)

(assert (= result!80692 result!80690))

(assert (=> b!1215120 t!113053))

(declare-fun b_and!82475 () Bool)

(assert (= b_and!82451 (and (=> t!113053 result!80692) b_and!82475)))

(declare-fun t!113055 () Bool)

(declare-fun tb!66701 () Bool)

(assert (=> (and b!1214880 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) t!113055) tb!66701))

(declare-fun result!80694 () Bool)

(assert (= result!80694 result!80690))

(assert (=> b!1215120 t!113055))

(declare-fun b_and!82477 () Bool)

(assert (= b_and!82453 (and (=> t!113055 result!80694) b_and!82477)))

(declare-fun t!113057 () Bool)

(declare-fun tb!66703 () Bool)

(assert (=> (and b!1214908 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) t!113057) tb!66703))

(declare-fun result!80696 () Bool)

(assert (= result!80696 result!80690))

(assert (=> b!1215120 t!113057))

(declare-fun b_and!82479 () Bool)

(assert (= b_and!82455 (and (=> t!113057 result!80696) b_and!82479)))

(declare-fun m!1389815 () Bool)

(assert (=> d!347209 m!1389815))

(declare-fun m!1389817 () Bool)

(assert (=> b!1215120 m!1389817))

(assert (=> b!1215120 m!1389817))

(declare-fun m!1389819 () Bool)

(assert (=> b!1215120 m!1389819))

(declare-fun m!1389821 () Bool)

(assert (=> b!1215121 m!1389821))

(assert (=> b!1214905 d!347209))

(declare-fun b!1215133 () Bool)

(declare-fun res!546463 () Bool)

(declare-fun e!779847 () Bool)

(assert (=> b!1215133 (=> (not res!546463) (not e!779847))))

(declare-fun lt!415478 () List!12435)

(assert (=> b!1215133 (= res!546463 (= (size!9800 lt!415478) (+ (size!9800 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))) (size!9800 (_2!6970 (get!4073 lt!415397))))))))

(declare-fun b!1215131 () Bool)

(declare-fun e!779846 () List!12435)

(assert (=> b!1215131 (= e!779846 (_2!6970 (get!4073 lt!415397)))))

(declare-fun d!347211 () Bool)

(assert (=> d!347211 e!779847))

(declare-fun res!546462 () Bool)

(assert (=> d!347211 (=> (not res!546462) (not e!779847))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1761 (List!12435) (InoxSet C!7116))

(assert (=> d!347211 (= res!546462 (= (content!1761 lt!415478) ((_ map or) (content!1761 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))) (content!1761 (_2!6970 (get!4073 lt!415397))))))))

(assert (=> d!347211 (= lt!415478 e!779846)))

(declare-fun c!203329 () Bool)

(assert (=> d!347211 (= c!203329 ((_ is Nil!12377) (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))))))

(assert (=> d!347211 (= (++!3169 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))) (_2!6970 (get!4073 lt!415397))) lt!415478)))

(declare-fun b!1215134 () Bool)

(assert (=> b!1215134 (= e!779847 (or (not (= (_2!6970 (get!4073 lt!415397)) Nil!12377)) (= lt!415478 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397)))))))))

(declare-fun b!1215132 () Bool)

(assert (=> b!1215132 (= e!779846 (Cons!12377 (h!17778 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))) (++!3169 (t!113005 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415397))))) (_2!6970 (get!4073 lt!415397)))))))

(assert (= (and d!347211 c!203329) b!1215131))

(assert (= (and d!347211 (not c!203329)) b!1215132))

(assert (= (and d!347211 res!546462) b!1215133))

(assert (= (and b!1215133 res!546463) b!1215134))

(declare-fun m!1389823 () Bool)

(assert (=> b!1215133 m!1389823))

(assert (=> b!1215133 m!1389501))

(declare-fun m!1389825 () Bool)

(assert (=> b!1215133 m!1389825))

(assert (=> b!1215133 m!1389509))

(declare-fun m!1389827 () Bool)

(assert (=> d!347211 m!1389827))

(assert (=> d!347211 m!1389501))

(declare-fun m!1389829 () Bool)

(assert (=> d!347211 m!1389829))

(declare-fun m!1389831 () Bool)

(assert (=> d!347211 m!1389831))

(declare-fun m!1389833 () Bool)

(assert (=> b!1215132 m!1389833))

(assert (=> b!1214739 d!347211))

(assert (=> b!1214739 d!347137))

(assert (=> b!1214739 d!347139))

(assert (=> b!1214739 d!347131))

(assert (=> b!1214732 d!347137))

(assert (=> b!1214732 d!347139))

(assert (=> b!1214732 d!347131))

(declare-fun d!347213 () Bool)

(declare-fun lt!415481 () Int)

(assert (=> d!347213 (>= lt!415481 0)))

(declare-fun e!779850 () Int)

(assert (=> d!347213 (= lt!415481 e!779850)))

(declare-fun c!203332 () Bool)

(assert (=> d!347213 (= c!203332 ((_ is Nil!12379) (_1!6971 lt!415424)))))

(assert (=> d!347213 (= (size!9801 (_1!6971 lt!415424)) lt!415481)))

(declare-fun b!1215139 () Bool)

(assert (=> b!1215139 (= e!779850 0)))

(declare-fun b!1215140 () Bool)

(assert (=> b!1215140 (= e!779850 (+ 1 (size!9801 (t!113007 (_1!6971 lt!415424)))))))

(assert (= (and d!347213 c!203332) b!1215139))

(assert (= (and d!347213 (not c!203332)) b!1215140))

(declare-fun m!1389835 () Bool)

(assert (=> b!1215140 m!1389835))

(assert (=> d!347097 d!347213))

(assert (=> d!347097 d!347085))

(declare-fun d!347215 () Bool)

(assert (=> d!347215 true))

(declare-fun lt!415484 () Bool)

(assert (=> d!347215 (= lt!415484 (rulesValidInductive!663 thiss!20528 rules!2728))))

(declare-fun lambda!49127 () Int)

(declare-fun forall!3175 (List!12436 Int) Bool)

(assert (=> d!347215 (= lt!415484 (forall!3175 rules!2728 lambda!49127))))

(assert (=> d!347215 (= (rulesValid!760 thiss!20528 rules!2728) lt!415484)))

(declare-fun bs!288775 () Bool)

(assert (= bs!288775 d!347215))

(assert (=> bs!288775 m!1389521))

(declare-fun m!1389837 () Bool)

(assert (=> bs!288775 m!1389837))

(assert (=> d!347105 d!347215))

(declare-fun call!84549 () Option!2491)

(declare-fun bm!84544 () Bool)

(assert (=> bm!84544 (= call!84549 (maxPrefixOneRule!546 thiss!20528 (h!17779 (t!113006 rules!2728)) input!2346))))

(declare-fun b!1215143 () Bool)

(declare-fun e!779852 () Option!2491)

(declare-fun lt!415489 () Option!2491)

(declare-fun lt!415488 () Option!2491)

(assert (=> b!1215143 (= e!779852 (ite (and ((_ is None!2490) lt!415489) ((_ is None!2490) lt!415488)) None!2490 (ite ((_ is None!2490) lt!415488) lt!415489 (ite ((_ is None!2490) lt!415489) lt!415488 (ite (>= (size!9797 (_1!6970 (v!20619 lt!415489))) (size!9797 (_1!6970 (v!20619 lt!415488)))) lt!415489 lt!415488)))))))

(assert (=> b!1215143 (= lt!415489 call!84549)))

(assert (=> b!1215143 (= lt!415488 (maxPrefix!946 thiss!20528 (t!113006 (t!113006 rules!2728)) input!2346))))

(declare-fun b!1215144 () Bool)

(declare-fun res!546468 () Bool)

(declare-fun e!779851 () Bool)

(assert (=> b!1215144 (=> (not res!546468) (not e!779851))))

(declare-fun lt!415485 () Option!2491)

(assert (=> b!1215144 (= res!546468 (= (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415485)))) (originalCharacters!2683 (_1!6970 (get!4073 lt!415485)))))))

(declare-fun b!1215145 () Bool)

(assert (=> b!1215145 (= e!779852 call!84549)))

(declare-fun b!1215146 () Bool)

(declare-fun res!546467 () Bool)

(assert (=> b!1215146 (=> (not res!546467) (not e!779851))))

(assert (=> b!1215146 (= res!546467 (= (value!69273 (_1!6970 (get!4073 lt!415485))) (apply!2645 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415485)))) (seqFromList!1548 (originalCharacters!2683 (_1!6970 (get!4073 lt!415485)))))))))

(declare-fun b!1215147 () Bool)

(assert (=> b!1215147 (= e!779851 (contains!2074 (t!113006 rules!2728) (rule!3552 (_1!6970 (get!4073 lt!415485)))))))

(declare-fun b!1215148 () Bool)

(declare-fun res!546470 () Bool)

(assert (=> b!1215148 (=> (not res!546470) (not e!779851))))

(assert (=> b!1215148 (= res!546470 (matchR!1521 (regex!2129 (rule!3552 (_1!6970 (get!4073 lt!415485)))) (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415485))))))))

(declare-fun b!1215149 () Bool)

(declare-fun e!779853 () Bool)

(assert (=> b!1215149 (= e!779853 e!779851)))

(declare-fun res!546464 () Bool)

(assert (=> b!1215149 (=> (not res!546464) (not e!779851))))

(assert (=> b!1215149 (= res!546464 (isDefined!2129 lt!415485))))

(declare-fun b!1215150 () Bool)

(declare-fun res!546469 () Bool)

(assert (=> b!1215150 (=> (not res!546469) (not e!779851))))

(assert (=> b!1215150 (= res!546469 (< (size!9800 (_2!6970 (get!4073 lt!415485))) (size!9800 input!2346)))))

(declare-fun b!1215151 () Bool)

(declare-fun res!546466 () Bool)

(assert (=> b!1215151 (=> (not res!546466) (not e!779851))))

(assert (=> b!1215151 (= res!546466 (= (++!3169 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415485)))) (_2!6970 (get!4073 lt!415485))) input!2346))))

(declare-fun d!347217 () Bool)

(assert (=> d!347217 e!779853))

(declare-fun res!546465 () Bool)

(assert (=> d!347217 (=> res!546465 e!779853)))

(assert (=> d!347217 (= res!546465 (isEmpty!7362 lt!415485))))

(assert (=> d!347217 (= lt!415485 e!779852)))

(declare-fun c!203333 () Bool)

(assert (=> d!347217 (= c!203333 (and ((_ is Cons!12378) (t!113006 rules!2728)) ((_ is Nil!12378) (t!113006 (t!113006 rules!2728)))))))

(declare-fun lt!415487 () Unit!18676)

(declare-fun lt!415486 () Unit!18676)

(assert (=> d!347217 (= lt!415487 lt!415486)))

(assert (=> d!347217 (isPrefix!1027 input!2346 input!2346)))

(assert (=> d!347217 (= lt!415486 (lemmaIsPrefixRefl!720 input!2346 input!2346))))

(assert (=> d!347217 (rulesValidInductive!663 thiss!20528 (t!113006 rules!2728))))

(assert (=> d!347217 (= (maxPrefix!946 thiss!20528 (t!113006 rules!2728) input!2346) lt!415485)))

(assert (= (and d!347217 c!203333) b!1215145))

(assert (= (and d!347217 (not c!203333)) b!1215143))

(assert (= (or b!1215145 b!1215143) bm!84544))

(assert (= (and d!347217 (not res!546465)) b!1215149))

(assert (= (and b!1215149 res!546464) b!1215144))

(assert (= (and b!1215144 res!546468) b!1215150))

(assert (= (and b!1215150 res!546469) b!1215151))

(assert (= (and b!1215151 res!546466) b!1215146))

(assert (= (and b!1215146 res!546467) b!1215148))

(assert (= (and b!1215148 res!546470) b!1215147))

(declare-fun m!1389839 () Bool)

(assert (=> b!1215144 m!1389839))

(declare-fun m!1389841 () Bool)

(assert (=> b!1215144 m!1389841))

(assert (=> b!1215144 m!1389841))

(declare-fun m!1389843 () Bool)

(assert (=> b!1215144 m!1389843))

(assert (=> b!1215147 m!1389839))

(declare-fun m!1389845 () Bool)

(assert (=> b!1215147 m!1389845))

(declare-fun m!1389847 () Bool)

(assert (=> bm!84544 m!1389847))

(assert (=> b!1215151 m!1389839))

(assert (=> b!1215151 m!1389841))

(assert (=> b!1215151 m!1389841))

(assert (=> b!1215151 m!1389843))

(assert (=> b!1215151 m!1389843))

(declare-fun m!1389849 () Bool)

(assert (=> b!1215151 m!1389849))

(assert (=> b!1215150 m!1389839))

(declare-fun m!1389851 () Bool)

(assert (=> b!1215150 m!1389851))

(assert (=> b!1215150 m!1389511))

(assert (=> b!1215148 m!1389839))

(assert (=> b!1215148 m!1389841))

(assert (=> b!1215148 m!1389841))

(assert (=> b!1215148 m!1389843))

(assert (=> b!1215148 m!1389843))

(declare-fun m!1389853 () Bool)

(assert (=> b!1215148 m!1389853))

(declare-fun m!1389855 () Bool)

(assert (=> d!347217 m!1389855))

(assert (=> d!347217 m!1389517))

(assert (=> d!347217 m!1389519))

(declare-fun m!1389857 () Bool)

(assert (=> d!347217 m!1389857))

(declare-fun m!1389859 () Bool)

(assert (=> b!1215143 m!1389859))

(assert (=> b!1215146 m!1389839))

(declare-fun m!1389861 () Bool)

(assert (=> b!1215146 m!1389861))

(assert (=> b!1215146 m!1389861))

(declare-fun m!1389863 () Bool)

(assert (=> b!1215146 m!1389863))

(declare-fun m!1389865 () Bool)

(assert (=> b!1215149 m!1389865))

(assert (=> b!1214731 d!347217))

(declare-fun d!347219 () Bool)

(declare-fun lt!415490 () Int)

(assert (=> d!347219 (>= lt!415490 0)))

(declare-fun e!779854 () Int)

(assert (=> d!347219 (= lt!415490 e!779854)))

(declare-fun c!203334 () Bool)

(assert (=> d!347219 (= c!203334 ((_ is Nil!12377) (originalCharacters!2683 (h!17780 tokens!556))))))

(assert (=> d!347219 (= (size!9800 (originalCharacters!2683 (h!17780 tokens!556))) lt!415490)))

(declare-fun b!1215152 () Bool)

(assert (=> b!1215152 (= e!779854 0)))

(declare-fun b!1215153 () Bool)

(assert (=> b!1215153 (= e!779854 (+ 1 (size!9800 (t!113005 (originalCharacters!2683 (h!17780 tokens!556))))))))

(assert (= (and d!347219 c!203334) b!1215152))

(assert (= (and d!347219 (not c!203334)) b!1215153))

(declare-fun m!1389867 () Bool)

(assert (=> b!1215153 m!1389867))

(assert (=> b!1214677 d!347219))

(declare-fun d!347221 () Bool)

(declare-fun lt!415493 () Bool)

(declare-fun content!1763 (List!12436) (InoxSet Rule!4058))

(assert (=> d!347221 (= lt!415493 (select (content!1763 rules!2728) (rule!3552 (_1!6970 (get!4073 lt!415397)))))))

(declare-fun e!779859 () Bool)

(assert (=> d!347221 (= lt!415493 e!779859)))

(declare-fun res!546476 () Bool)

(assert (=> d!347221 (=> (not res!546476) (not e!779859))))

(assert (=> d!347221 (= res!546476 ((_ is Cons!12378) rules!2728))))

(assert (=> d!347221 (= (contains!2074 rules!2728 (rule!3552 (_1!6970 (get!4073 lt!415397)))) lt!415493)))

(declare-fun b!1215158 () Bool)

(declare-fun e!779860 () Bool)

(assert (=> b!1215158 (= e!779859 e!779860)))

(declare-fun res!546475 () Bool)

(assert (=> b!1215158 (=> res!546475 e!779860)))

(assert (=> b!1215158 (= res!546475 (= (h!17779 rules!2728) (rule!3552 (_1!6970 (get!4073 lt!415397)))))))

(declare-fun b!1215159 () Bool)

(assert (=> b!1215159 (= e!779860 (contains!2074 (t!113006 rules!2728) (rule!3552 (_1!6970 (get!4073 lt!415397)))))))

(assert (= (and d!347221 res!546476) b!1215158))

(assert (= (and b!1215158 (not res!546475)) b!1215159))

(declare-fun m!1389869 () Bool)

(assert (=> d!347221 m!1389869))

(declare-fun m!1389871 () Bool)

(assert (=> d!347221 m!1389871))

(declare-fun m!1389873 () Bool)

(assert (=> b!1215159 m!1389873))

(assert (=> b!1214735 d!347221))

(assert (=> b!1214735 d!347131))

(declare-fun d!347223 () Bool)

(assert (=> d!347223 true))

(declare-fun order!7543 () Int)

(declare-fun lambda!49130 () Int)

(declare-fun order!7545 () Int)

(declare-fun dynLambda!5414 (Int Int) Int)

(declare-fun dynLambda!5415 (Int Int) Int)

(assert (=> d!347223 (< (dynLambda!5414 order!7543 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) (dynLambda!5415 order!7545 lambda!49130))))

(assert (=> d!347223 true))

(assert (=> d!347223 (< (dynLambda!5410 order!7539 (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) (dynLambda!5415 order!7545 lambda!49130))))

(declare-fun Forall!454 (Int) Bool)

(assert (=> d!347223 (= (semiInverseModEq!772 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) (Forall!454 lambda!49130))))

(declare-fun bs!288776 () Bool)

(assert (= bs!288776 d!347223))

(declare-fun m!1389875 () Bool)

(assert (=> bs!288776 m!1389875))

(assert (=> d!347109 d!347223))

(declare-fun bs!288777 () Bool)

(declare-fun d!347225 () Bool)

(assert (= bs!288777 (and d!347225 d!347147)))

(declare-fun lambda!49131 () Int)

(assert (=> bs!288777 (= (= (toValue!3254 (transformation!2129 (h!17779 rules!2728))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) (= lambda!49131 lambda!49124))))

(assert (=> d!347225 true))

(assert (=> d!347225 (< (dynLambda!5410 order!7539 (toValue!3254 (transformation!2129 (h!17779 rules!2728)))) (dynLambda!5411 order!7541 lambda!49131))))

(assert (=> d!347225 (= (equivClasses!739 (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toValue!3254 (transformation!2129 (h!17779 rules!2728)))) (Forall2!363 lambda!49131))))

(declare-fun bs!288778 () Bool)

(assert (= bs!288778 d!347225))

(declare-fun m!1389877 () Bool)

(assert (=> bs!288778 m!1389877))

(assert (=> b!1214668 d!347225))

(declare-fun d!347227 () Bool)

(assert (=> d!347227 (= (list!4567 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))) (list!4569 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))))))

(declare-fun bs!288779 () Bool)

(assert (= bs!288779 d!347227))

(declare-fun m!1389879 () Bool)

(assert (=> bs!288779 m!1389879))

(assert (=> b!1214676 d!347227))

(declare-fun d!347229 () Bool)

(declare-fun lt!415494 () Int)

(assert (=> d!347229 (>= lt!415494 0)))

(declare-fun e!779861 () Int)

(assert (=> d!347229 (= lt!415494 e!779861)))

(declare-fun c!203335 () Bool)

(assert (=> d!347229 (= c!203335 ((_ is Nil!12377) (_2!6971 lt!415424)))))

(assert (=> d!347229 (= (size!9800 (_2!6971 lt!415424)) lt!415494)))

(declare-fun b!1215164 () Bool)

(assert (=> b!1215164 (= e!779861 0)))

(declare-fun b!1215165 () Bool)

(assert (=> b!1215165 (= e!779861 (+ 1 (size!9800 (t!113005 (_2!6971 lt!415424)))))))

(assert (= (and d!347229 c!203335) b!1215164))

(assert (= (and d!347229 (not c!203335)) b!1215165))

(declare-fun m!1389881 () Bool)

(assert (=> b!1215165 m!1389881))

(assert (=> b!1214841 d!347229))

(assert (=> b!1214841 d!347133))

(assert (=> b!1214734 d!347131))

(declare-fun d!347231 () Bool)

(declare-fun dynLambda!5416 (Int BalanceConc!8044) TokenValue!2197)

(assert (=> d!347231 (= (apply!2645 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))) (seqFromList!1548 (originalCharacters!2683 (_1!6970 (get!4073 lt!415397))))) (dynLambda!5416 (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))) (seqFromList!1548 (originalCharacters!2683 (_1!6970 (get!4073 lt!415397))))))))

(declare-fun b_lambda!35831 () Bool)

(assert (=> (not b_lambda!35831) (not d!347231)))

(declare-fun tb!66705 () Bool)

(declare-fun t!113059 () Bool)

(assert (=> (and b!1214657 (= (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113059) tb!66705))

(declare-fun result!80698 () Bool)

(assert (=> tb!66705 (= result!80698 (inv!21 (dynLambda!5416 (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397))))) (seqFromList!1548 (originalCharacters!2683 (_1!6970 (get!4073 lt!415397)))))))))

(declare-fun m!1389883 () Bool)

(assert (=> tb!66705 m!1389883))

(assert (=> d!347231 t!113059))

(declare-fun b_and!82481 () Bool)

(assert (= b_and!82417 (and (=> t!113059 result!80698) b_and!82481)))

(declare-fun t!113061 () Bool)

(declare-fun tb!66707 () Bool)

(assert (=> (and b!1214655 (= (toValue!3254 (transformation!2129 (h!17779 rules!2728))) (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113061) tb!66707))

(declare-fun result!80702 () Bool)

(assert (= result!80702 result!80698))

(assert (=> d!347231 t!113061))

(declare-fun b_and!82483 () Bool)

(assert (= b_and!82421 (and (=> t!113061 result!80702) b_and!82483)))

(declare-fun tb!66709 () Bool)

(declare-fun t!113063 () Bool)

(assert (=> (and b!1214880 (= (toValue!3254 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113063) tb!66709))

(declare-fun result!80704 () Bool)

(assert (= result!80704 result!80698))

(assert (=> d!347231 t!113063))

(declare-fun b_and!82485 () Bool)

(assert (= b_and!82441 (and (=> t!113063 result!80704) b_and!82485)))

(declare-fun tb!66711 () Bool)

(declare-fun t!113065 () Bool)

(assert (=> (and b!1214908 (= (toValue!3254 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113065) tb!66711))

(declare-fun result!80706 () Bool)

(assert (= result!80706 result!80698))

(assert (=> d!347231 t!113065))

(declare-fun b_and!82487 () Bool)

(assert (= b_and!82445 (and (=> t!113065 result!80706) b_and!82487)))

(assert (=> d!347231 m!1389525))

(declare-fun m!1389885 () Bool)

(assert (=> d!347231 m!1389885))

(assert (=> b!1214734 d!347231))

(declare-fun d!347233 () Bool)

(declare-fun fromListB!686 (List!12435) BalanceConc!8044)

(assert (=> d!347233 (= (seqFromList!1548 (originalCharacters!2683 (_1!6970 (get!4073 lt!415397)))) (fromListB!686 (originalCharacters!2683 (_1!6970 (get!4073 lt!415397)))))))

(declare-fun bs!288780 () Bool)

(assert (= bs!288780 d!347233))

(declare-fun m!1389887 () Bool)

(assert (=> bs!288780 m!1389887))

(assert (=> b!1214734 d!347233))

(declare-fun d!347235 () Bool)

(assert (=> d!347235 (= (inv!16559 (tag!2391 (h!17779 (t!113006 rules!2728)))) (= (mod (str.len (value!69272 (tag!2391 (h!17779 (t!113006 rules!2728))))) 2) 0))))

(assert (=> b!1214879 d!347235))

(declare-fun d!347237 () Bool)

(declare-fun res!546477 () Bool)

(declare-fun e!779865 () Bool)

(assert (=> d!347237 (=> (not res!546477) (not e!779865))))

(assert (=> d!347237 (= res!546477 (semiInverseModEq!772 (toChars!3113 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toValue!3254 (transformation!2129 (h!17779 (t!113006 rules!2728))))))))

(assert (=> d!347237 (= (inv!16563 (transformation!2129 (h!17779 (t!113006 rules!2728)))) e!779865)))

(declare-fun b!1215168 () Bool)

(assert (=> b!1215168 (= e!779865 (equivClasses!739 (toChars!3113 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toValue!3254 (transformation!2129 (h!17779 (t!113006 rules!2728))))))))

(assert (= (and d!347237 res!546477) b!1215168))

(declare-fun m!1389889 () Bool)

(assert (=> d!347237 m!1389889))

(declare-fun m!1389891 () Bool)

(assert (=> b!1215168 m!1389891))

(assert (=> b!1214879 d!347237))

(declare-fun bs!288781 () Bool)

(declare-fun d!347239 () Bool)

(assert (= bs!288781 (and d!347239 d!347223)))

(declare-fun lambda!49132 () Int)

(assert (=> bs!288781 (= (and (= (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) (= (toValue!3254 (transformation!2129 (h!17779 rules!2728))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 tokens!556)))))) (= lambda!49132 lambda!49130))))

(assert (=> d!347239 true))

(assert (=> d!347239 (< (dynLambda!5414 order!7543 (toChars!3113 (transformation!2129 (h!17779 rules!2728)))) (dynLambda!5415 order!7545 lambda!49132))))

(assert (=> d!347239 true))

(assert (=> d!347239 (< (dynLambda!5410 order!7539 (toValue!3254 (transformation!2129 (h!17779 rules!2728)))) (dynLambda!5415 order!7545 lambda!49132))))

(assert (=> d!347239 (= (semiInverseModEq!772 (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toValue!3254 (transformation!2129 (h!17779 rules!2728)))) (Forall!454 lambda!49132))))

(declare-fun bs!288782 () Bool)

(assert (= bs!288782 d!347239))

(declare-fun m!1389893 () Bool)

(assert (=> bs!288782 m!1389893))

(assert (=> d!347071 d!347239))

(declare-fun d!347241 () Bool)

(declare-fun res!546482 () Bool)

(declare-fun e!779870 () Bool)

(assert (=> d!347241 (=> res!546482 e!779870)))

(assert (=> d!347241 (= res!546482 ((_ is Nil!12378) rules!2728))))

(assert (=> d!347241 (= (noDuplicateTag!760 thiss!20528 rules!2728 Nil!12381) e!779870)))

(declare-fun b!1215173 () Bool)

(declare-fun e!779871 () Bool)

(assert (=> b!1215173 (= e!779870 e!779871)))

(declare-fun res!546483 () Bool)

(assert (=> b!1215173 (=> (not res!546483) (not e!779871))))

(declare-fun contains!2076 (List!12439 String!15117) Bool)

(assert (=> b!1215173 (= res!546483 (not (contains!2076 Nil!12381 (tag!2391 (h!17779 rules!2728)))))))

(declare-fun b!1215174 () Bool)

(assert (=> b!1215174 (= e!779871 (noDuplicateTag!760 thiss!20528 (t!113006 rules!2728) (Cons!12381 (tag!2391 (h!17779 rules!2728)) Nil!12381)))))

(assert (= (and d!347241 (not res!546482)) b!1215173))

(assert (= (and b!1215173 res!546483) b!1215174))

(declare-fun m!1389895 () Bool)

(assert (=> b!1215173 m!1389895))

(declare-fun m!1389897 () Bool)

(assert (=> b!1215174 m!1389897))

(assert (=> b!1214863 d!347241))

(declare-fun b!1215300 () Bool)

(declare-fun e!779929 () Option!2491)

(declare-datatypes ((tuple2!12252 0))(
  ( (tuple2!12253 (_1!6973 List!12435) (_2!6973 List!12435)) )
))
(declare-fun lt!415525 () tuple2!12252)

(declare-fun size!9803 (BalanceConc!8044) Int)

(assert (=> b!1215300 (= e!779929 (Some!2490 (tuple2!12247 (Token!3921 (apply!2645 (transformation!2129 (h!17779 rules!2728)) (seqFromList!1548 (_1!6973 lt!415525))) (h!17779 rules!2728) (size!9803 (seqFromList!1548 (_1!6973 lt!415525))) (_1!6973 lt!415525)) (_2!6973 lt!415525))))))

(declare-fun lt!415526 () Unit!18676)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!243 (Regex!3399 List!12435) Unit!18676)

(assert (=> b!1215300 (= lt!415526 (longestMatchIsAcceptedByMatchOrIsEmpty!243 (regex!2129 (h!17779 rules!2728)) input!2346))))

(declare-fun res!546523 () Bool)

(declare-fun findLongestMatchInner!259 (Regex!3399 List!12435 Int List!12435 List!12435 Int) tuple2!12252)

(assert (=> b!1215300 (= res!546523 (isEmpty!7361 (_1!6973 (findLongestMatchInner!259 (regex!2129 (h!17779 rules!2728)) Nil!12377 (size!9800 Nil!12377) input!2346 input!2346 (size!9800 input!2346)))))))

(declare-fun e!779931 () Bool)

(assert (=> b!1215300 (=> res!546523 e!779931)))

(assert (=> b!1215300 e!779931))

(declare-fun lt!415528 () Unit!18676)

(assert (=> b!1215300 (= lt!415528 lt!415526)))

(declare-fun lt!415524 () Unit!18676)

(declare-fun lemmaSemiInverse!313 (TokenValueInjection!4090 BalanceConc!8044) Unit!18676)

(assert (=> b!1215300 (= lt!415524 (lemmaSemiInverse!313 (transformation!2129 (h!17779 rules!2728)) (seqFromList!1548 (_1!6973 lt!415525))))))

(declare-fun b!1215301 () Bool)

(declare-fun e!779932 () Bool)

(declare-fun e!779930 () Bool)

(assert (=> b!1215301 (= e!779932 e!779930)))

(declare-fun res!546526 () Bool)

(assert (=> b!1215301 (=> (not res!546526) (not e!779930))))

(declare-fun lt!415527 () Option!2491)

(assert (=> b!1215301 (= res!546526 (matchR!1521 (regex!2129 (h!17779 rules!2728)) (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415527))))))))

(declare-fun b!1215303 () Bool)

(declare-fun res!546521 () Bool)

(assert (=> b!1215303 (=> (not res!546521) (not e!779930))))

(assert (=> b!1215303 (= res!546521 (< (size!9800 (_2!6970 (get!4073 lt!415527))) (size!9800 input!2346)))))

(declare-fun b!1215304 () Bool)

(declare-fun res!546525 () Bool)

(assert (=> b!1215304 (=> (not res!546525) (not e!779930))))

(assert (=> b!1215304 (= res!546525 (= (++!3169 (list!4567 (charsOf!1135 (_1!6970 (get!4073 lt!415527)))) (_2!6970 (get!4073 lt!415527))) input!2346))))

(declare-fun b!1215305 () Bool)

(declare-fun res!546522 () Bool)

(assert (=> b!1215305 (=> (not res!546522) (not e!779930))))

(assert (=> b!1215305 (= res!546522 (= (rule!3552 (_1!6970 (get!4073 lt!415527))) (h!17779 rules!2728)))))

(declare-fun b!1215306 () Bool)

(declare-fun res!546524 () Bool)

(assert (=> b!1215306 (=> (not res!546524) (not e!779930))))

(assert (=> b!1215306 (= res!546524 (= (value!69273 (_1!6970 (get!4073 lt!415527))) (apply!2645 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415527)))) (seqFromList!1548 (originalCharacters!2683 (_1!6970 (get!4073 lt!415527)))))))))

(declare-fun b!1215302 () Bool)

(assert (=> b!1215302 (= e!779929 None!2490)))

(declare-fun d!347243 () Bool)

(assert (=> d!347243 e!779932))

(declare-fun res!546527 () Bool)

(assert (=> d!347243 (=> res!546527 e!779932)))

(assert (=> d!347243 (= res!546527 (isEmpty!7362 lt!415527))))

(assert (=> d!347243 (= lt!415527 e!779929)))

(declare-fun c!203345 () Bool)

(assert (=> d!347243 (= c!203345 (isEmpty!7361 (_1!6973 lt!415525)))))

(declare-fun findLongestMatch!215 (Regex!3399 List!12435) tuple2!12252)

(assert (=> d!347243 (= lt!415525 (findLongestMatch!215 (regex!2129 (h!17779 rules!2728)) input!2346))))

(declare-fun ruleValid!529 (LexerInterface!1824 Rule!4058) Bool)

(assert (=> d!347243 (ruleValid!529 thiss!20528 (h!17779 rules!2728))))

(assert (=> d!347243 (= (maxPrefixOneRule!546 thiss!20528 (h!17779 rules!2728) input!2346) lt!415527)))

(declare-fun b!1215307 () Bool)

(assert (=> b!1215307 (= e!779931 (matchR!1521 (regex!2129 (h!17779 rules!2728)) (_1!6973 (findLongestMatchInner!259 (regex!2129 (h!17779 rules!2728)) Nil!12377 (size!9800 Nil!12377) input!2346 input!2346 (size!9800 input!2346)))))))

(declare-fun b!1215308 () Bool)

(assert (=> b!1215308 (= e!779930 (= (size!9797 (_1!6970 (get!4073 lt!415527))) (size!9800 (originalCharacters!2683 (_1!6970 (get!4073 lt!415527))))))))

(assert (= (and d!347243 c!203345) b!1215302))

(assert (= (and d!347243 (not c!203345)) b!1215300))

(assert (= (and b!1215300 (not res!546523)) b!1215307))

(assert (= (and d!347243 (not res!546527)) b!1215301))

(assert (= (and b!1215301 res!546526) b!1215304))

(assert (= (and b!1215304 res!546525) b!1215303))

(assert (= (and b!1215303 res!546521) b!1215305))

(assert (= (and b!1215305 res!546522) b!1215306))

(assert (= (and b!1215306 res!546524) b!1215308))

(declare-fun m!1389979 () Bool)

(assert (=> b!1215305 m!1389979))

(assert (=> b!1215308 m!1389979))

(declare-fun m!1389981 () Bool)

(assert (=> b!1215308 m!1389981))

(declare-fun m!1389983 () Bool)

(assert (=> b!1215307 m!1389983))

(assert (=> b!1215307 m!1389511))

(assert (=> b!1215307 m!1389983))

(assert (=> b!1215307 m!1389511))

(declare-fun m!1389985 () Bool)

(assert (=> b!1215307 m!1389985))

(declare-fun m!1389987 () Bool)

(assert (=> b!1215307 m!1389987))

(declare-fun m!1389989 () Bool)

(assert (=> d!347243 m!1389989))

(declare-fun m!1389991 () Bool)

(assert (=> d!347243 m!1389991))

(declare-fun m!1389993 () Bool)

(assert (=> d!347243 m!1389993))

(declare-fun m!1389995 () Bool)

(assert (=> d!347243 m!1389995))

(assert (=> b!1215304 m!1389979))

(declare-fun m!1389997 () Bool)

(assert (=> b!1215304 m!1389997))

(assert (=> b!1215304 m!1389997))

(declare-fun m!1389999 () Bool)

(assert (=> b!1215304 m!1389999))

(assert (=> b!1215304 m!1389999))

(declare-fun m!1390001 () Bool)

(assert (=> b!1215304 m!1390001))

(assert (=> b!1215306 m!1389979))

(declare-fun m!1390003 () Bool)

(assert (=> b!1215306 m!1390003))

(assert (=> b!1215306 m!1390003))

(declare-fun m!1390005 () Bool)

(assert (=> b!1215306 m!1390005))

(assert (=> b!1215303 m!1389979))

(declare-fun m!1390007 () Bool)

(assert (=> b!1215303 m!1390007))

(assert (=> b!1215303 m!1389511))

(declare-fun m!1390009 () Bool)

(assert (=> b!1215300 m!1390009))

(assert (=> b!1215300 m!1390009))

(declare-fun m!1390011 () Bool)

(assert (=> b!1215300 m!1390011))

(declare-fun m!1390013 () Bool)

(assert (=> b!1215300 m!1390013))

(assert (=> b!1215300 m!1389983))

(assert (=> b!1215300 m!1389511))

(assert (=> b!1215300 m!1389985))

(assert (=> b!1215300 m!1390009))

(declare-fun m!1390015 () Bool)

(assert (=> b!1215300 m!1390015))

(assert (=> b!1215300 m!1390009))

(declare-fun m!1390017 () Bool)

(assert (=> b!1215300 m!1390017))

(declare-fun m!1390019 () Bool)

(assert (=> b!1215300 m!1390019))

(assert (=> b!1215300 m!1389983))

(assert (=> b!1215300 m!1389511))

(assert (=> b!1215301 m!1389979))

(assert (=> b!1215301 m!1389997))

(assert (=> b!1215301 m!1389997))

(assert (=> b!1215301 m!1389999))

(assert (=> b!1215301 m!1389999))

(declare-fun m!1390021 () Bool)

(assert (=> b!1215301 m!1390021))

(assert (=> bm!84533 d!347243))

(declare-fun d!347255 () Bool)

(assert (=> d!347255 (= (isEmpty!7362 (maxPrefix!946 thiss!20528 rules!2728 input!2346)) (not ((_ is Some!2490) (maxPrefix!946 thiss!20528 rules!2728 input!2346))))))

(assert (=> d!347081 d!347255))

(declare-fun d!347257 () Bool)

(declare-fun charsToBigInt!1 (List!12434) Int)

(assert (=> d!347257 (= (inv!17 (value!69273 (h!17780 tokens!556))) (= (charsToBigInt!1 (text!15827 (value!69273 (h!17780 tokens!556)))) (value!69265 (value!69273 (h!17780 tokens!556)))))))

(declare-fun bs!288786 () Bool)

(assert (= bs!288786 d!347257))

(declare-fun m!1390023 () Bool)

(assert (=> bs!288786 m!1390023))

(assert (=> b!1214858 d!347257))

(declare-fun d!347259 () Bool)

(declare-fun c!203346 () Bool)

(assert (=> d!347259 (= c!203346 ((_ is IntegerValue!6591) (value!69273 (h!17780 (t!113007 tokens!556)))))))

(declare-fun e!779934 () Bool)

(assert (=> d!347259 (= (inv!21 (value!69273 (h!17780 (t!113007 tokens!556)))) e!779934)))

(declare-fun b!1215309 () Bool)

(declare-fun e!779933 () Bool)

(assert (=> b!1215309 (= e!779934 e!779933)))

(declare-fun c!203347 () Bool)

(assert (=> b!1215309 (= c!203347 ((_ is IntegerValue!6592) (value!69273 (h!17780 (t!113007 tokens!556)))))))

(declare-fun b!1215310 () Bool)

(declare-fun e!779935 () Bool)

(assert (=> b!1215310 (= e!779935 (inv!15 (value!69273 (h!17780 (t!113007 tokens!556)))))))

(declare-fun b!1215311 () Bool)

(assert (=> b!1215311 (= e!779933 (inv!17 (value!69273 (h!17780 (t!113007 tokens!556)))))))

(declare-fun b!1215312 () Bool)

(declare-fun res!546528 () Bool)

(assert (=> b!1215312 (=> res!546528 e!779935)))

(assert (=> b!1215312 (= res!546528 (not ((_ is IntegerValue!6593) (value!69273 (h!17780 (t!113007 tokens!556))))))))

(assert (=> b!1215312 (= e!779933 e!779935)))

(declare-fun b!1215313 () Bool)

(assert (=> b!1215313 (= e!779934 (inv!16 (value!69273 (h!17780 (t!113007 tokens!556)))))))

(assert (= (and d!347259 c!203346) b!1215313))

(assert (= (and d!347259 (not c!203346)) b!1215309))

(assert (= (and b!1215309 c!203347) b!1215311))

(assert (= (and b!1215309 (not c!203347)) b!1215312))

(assert (= (and b!1215312 (not res!546528)) b!1215310))

(declare-fun m!1390025 () Bool)

(assert (=> b!1215310 m!1390025))

(declare-fun m!1390027 () Bool)

(assert (=> b!1215311 m!1390027))

(declare-fun m!1390029 () Bool)

(assert (=> b!1215313 m!1390029))

(assert (=> b!1214906 d!347259))

(declare-fun d!347261 () Bool)

(declare-fun charsToBigInt!0 (List!12434 Int) Int)

(assert (=> d!347261 (= (inv!15 (value!69273 (h!17780 tokens!556))) (= (charsToBigInt!0 (text!15828 (value!69273 (h!17780 tokens!556))) 0) (value!69268 (value!69273 (h!17780 tokens!556)))))))

(declare-fun bs!288787 () Bool)

(assert (= bs!288787 d!347261))

(declare-fun m!1390031 () Bool)

(assert (=> bs!288787 m!1390031))

(assert (=> b!1214857 d!347261))

(declare-fun d!347263 () Bool)

(assert (=> d!347263 (= (isEmpty!7361 (originalCharacters!2683 (h!17780 tokens!556))) ((_ is Nil!12377) (originalCharacters!2683 (h!17780 tokens!556))))))

(assert (=> d!347077 d!347263))

(declare-fun d!347265 () Bool)

(assert (=> d!347265 (= (inv!16559 (tag!2391 (rule!3552 (h!17780 (t!113007 tokens!556))))) (= (mod (str.len (value!69272 (tag!2391 (rule!3552 (h!17780 (t!113007 tokens!556)))))) 2) 0))))

(assert (=> b!1214907 d!347265))

(declare-fun d!347267 () Bool)

(declare-fun res!546529 () Bool)

(declare-fun e!779936 () Bool)

(assert (=> d!347267 (=> (not res!546529) (not e!779936))))

(assert (=> d!347267 (= res!546529 (semiInverseModEq!772 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))))))

(assert (=> d!347267 (= (inv!16563 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) e!779936)))

(declare-fun b!1215314 () Bool)

(assert (=> b!1215314 (= e!779936 (equivClasses!739 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))) (toValue!3254 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))))))

(assert (= (and d!347267 res!546529) b!1215314))

(declare-fun m!1390033 () Bool)

(assert (=> d!347267 m!1390033))

(declare-fun m!1390035 () Bool)

(assert (=> b!1215314 m!1390035))

(assert (=> b!1214907 d!347267))

(declare-fun d!347269 () Bool)

(declare-fun charsToInt!0 (List!12434) (_ BitVec 32))

(assert (=> d!347269 (= (inv!16 (value!69273 (h!17780 tokens!556))) (= (charsToInt!0 (text!15826 (value!69273 (h!17780 tokens!556)))) (value!69264 (value!69273 (h!17780 tokens!556)))))))

(declare-fun bs!288788 () Bool)

(assert (= bs!288788 d!347269))

(declare-fun m!1390037 () Bool)

(assert (=> bs!288788 m!1390037))

(assert (=> b!1214860 d!347269))

(declare-fun d!347271 () Bool)

(assert (=> d!347271 (= (isEmpty!7362 lt!415397) (not ((_ is Some!2490) lt!415397)))))

(assert (=> d!347085 d!347271))

(declare-fun b!1215323 () Bool)

(declare-fun e!779943 () Bool)

(declare-fun e!779945 () Bool)

(assert (=> b!1215323 (= e!779943 e!779945)))

(declare-fun res!546538 () Bool)

(assert (=> b!1215323 (=> (not res!546538) (not e!779945))))

(assert (=> b!1215323 (= res!546538 (not ((_ is Nil!12377) input!2346)))))

(declare-fun b!1215324 () Bool)

(declare-fun res!546541 () Bool)

(assert (=> b!1215324 (=> (not res!546541) (not e!779945))))

(assert (=> b!1215324 (= res!546541 (= (head!2150 input!2346) (head!2150 input!2346)))))

(declare-fun d!347273 () Bool)

(declare-fun e!779944 () Bool)

(assert (=> d!347273 e!779944))

(declare-fun res!546540 () Bool)

(assert (=> d!347273 (=> res!546540 e!779944)))

(declare-fun lt!415531 () Bool)

(assert (=> d!347273 (= res!546540 (not lt!415531))))

(assert (=> d!347273 (= lt!415531 e!779943)))

(declare-fun res!546539 () Bool)

(assert (=> d!347273 (=> res!546539 e!779943)))

(assert (=> d!347273 (= res!546539 ((_ is Nil!12377) input!2346))))

(assert (=> d!347273 (= (isPrefix!1027 input!2346 input!2346) lt!415531)))

(declare-fun b!1215326 () Bool)

(assert (=> b!1215326 (= e!779944 (>= (size!9800 input!2346) (size!9800 input!2346)))))

(declare-fun b!1215325 () Bool)

(assert (=> b!1215325 (= e!779945 (isPrefix!1027 (tail!1782 input!2346) (tail!1782 input!2346)))))

(assert (= (and d!347273 (not res!546539)) b!1215323))

(assert (= (and b!1215323 res!546538) b!1215324))

(assert (= (and b!1215324 res!546541) b!1215325))

(assert (= (and d!347273 (not res!546540)) b!1215326))

(declare-fun m!1390039 () Bool)

(assert (=> b!1215324 m!1390039))

(assert (=> b!1215324 m!1390039))

(assert (=> b!1215326 m!1389511))

(assert (=> b!1215326 m!1389511))

(declare-fun m!1390041 () Bool)

(assert (=> b!1215325 m!1390041))

(assert (=> b!1215325 m!1390041))

(assert (=> b!1215325 m!1390041))

(assert (=> b!1215325 m!1390041))

(declare-fun m!1390043 () Bool)

(assert (=> b!1215325 m!1390043))

(assert (=> d!347085 d!347273))

(declare-fun d!347275 () Bool)

(assert (=> d!347275 (isPrefix!1027 input!2346 input!2346)))

(declare-fun lt!415534 () Unit!18676)

(declare-fun choose!7787 (List!12435 List!12435) Unit!18676)

(assert (=> d!347275 (= lt!415534 (choose!7787 input!2346 input!2346))))

(assert (=> d!347275 (= (lemmaIsPrefixRefl!720 input!2346 input!2346) lt!415534)))

(declare-fun bs!288789 () Bool)

(assert (= bs!288789 d!347275))

(assert (=> bs!288789 m!1389517))

(declare-fun m!1390045 () Bool)

(assert (=> bs!288789 m!1390045))

(assert (=> d!347085 d!347275))

(declare-fun bs!288790 () Bool)

(declare-fun d!347277 () Bool)

(assert (= bs!288790 (and d!347277 d!347215)))

(declare-fun lambda!49136 () Int)

(assert (=> bs!288790 (= lambda!49136 lambda!49127)))

(assert (=> d!347277 true))

(declare-fun lt!415537 () Bool)

(assert (=> d!347277 (= lt!415537 (forall!3175 rules!2728 lambda!49136))))

(declare-fun e!779951 () Bool)

(assert (=> d!347277 (= lt!415537 e!779951)))

(declare-fun res!546546 () Bool)

(assert (=> d!347277 (=> res!546546 e!779951)))

(assert (=> d!347277 (= res!546546 (not ((_ is Cons!12378) rules!2728)))))

(assert (=> d!347277 (= (rulesValidInductive!663 thiss!20528 rules!2728) lt!415537)))

(declare-fun b!1215331 () Bool)

(declare-fun e!779950 () Bool)

(assert (=> b!1215331 (= e!779951 e!779950)))

(declare-fun res!546547 () Bool)

(assert (=> b!1215331 (=> (not res!546547) (not e!779950))))

(assert (=> b!1215331 (= res!546547 (ruleValid!529 thiss!20528 (h!17779 rules!2728)))))

(declare-fun b!1215332 () Bool)

(assert (=> b!1215332 (= e!779950 (rulesValidInductive!663 thiss!20528 (t!113006 rules!2728)))))

(assert (= (and d!347277 (not res!546546)) b!1215331))

(assert (= (and b!1215331 res!546547) b!1215332))

(declare-fun m!1390047 () Bool)

(assert (=> d!347277 m!1390047))

(assert (=> b!1215331 m!1389995))

(assert (=> b!1215332 m!1389857))

(assert (=> d!347085 d!347277))

(declare-fun b!1215333 () Bool)

(declare-fun e!779952 () Bool)

(declare-fun tp!344797 () Bool)

(assert (=> b!1215333 (= e!779952 (and tp_is_empty!6319 tp!344797))))

(assert (=> b!1214869 (= tp!344663 e!779952)))

(assert (= (and b!1214869 ((_ is Cons!12377) (t!113005 (t!113005 input!2346)))) b!1215333))

(declare-fun b!1215335 () Bool)

(declare-fun e!779953 () Bool)

(declare-fun tp!344799 () Bool)

(declare-fun tp!344802 () Bool)

(assert (=> b!1215335 (= e!779953 (and tp!344799 tp!344802))))

(assert (=> b!1214911 (= tp!344708 e!779953)))

(declare-fun b!1215336 () Bool)

(declare-fun tp!344798 () Bool)

(assert (=> b!1215336 (= e!779953 tp!344798)))

(declare-fun b!1215337 () Bool)

(declare-fun tp!344800 () Bool)

(declare-fun tp!344801 () Bool)

(assert (=> b!1215337 (= e!779953 (and tp!344800 tp!344801))))

(declare-fun b!1215334 () Bool)

(assert (=> b!1215334 (= e!779953 tp_is_empty!6319)))

(assert (= (and b!1214911 ((_ is ElementMatch!3399) (regOne!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215334))

(assert (= (and b!1214911 ((_ is Concat!5597) (regOne!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215335))

(assert (= (and b!1214911 ((_ is Star!3399) (regOne!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215336))

(assert (= (and b!1214911 ((_ is Union!3399) (regOne!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215337))

(declare-fun b!1215339 () Bool)

(declare-fun e!779954 () Bool)

(declare-fun tp!344804 () Bool)

(declare-fun tp!344807 () Bool)

(assert (=> b!1215339 (= e!779954 (and tp!344804 tp!344807))))

(assert (=> b!1214911 (= tp!344711 e!779954)))

(declare-fun b!1215340 () Bool)

(declare-fun tp!344803 () Bool)

(assert (=> b!1215340 (= e!779954 tp!344803)))

(declare-fun b!1215341 () Bool)

(declare-fun tp!344805 () Bool)

(declare-fun tp!344806 () Bool)

(assert (=> b!1215341 (= e!779954 (and tp!344805 tp!344806))))

(declare-fun b!1215338 () Bool)

(assert (=> b!1215338 (= e!779954 tp_is_empty!6319)))

(assert (= (and b!1214911 ((_ is ElementMatch!3399) (regTwo!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215338))

(assert (= (and b!1214911 ((_ is Concat!5597) (regTwo!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215339))

(assert (= (and b!1214911 ((_ is Star!3399) (regTwo!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215340))

(assert (= (and b!1214911 ((_ is Union!3399) (regTwo!7310 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215341))

(declare-fun b!1215343 () Bool)

(declare-fun e!779955 () Bool)

(declare-fun tp!344809 () Bool)

(declare-fun tp!344812 () Bool)

(assert (=> b!1215343 (= e!779955 (and tp!344809 tp!344812))))

(assert (=> b!1214912 (= tp!344707 e!779955)))

(declare-fun b!1215344 () Bool)

(declare-fun tp!344808 () Bool)

(assert (=> b!1215344 (= e!779955 tp!344808)))

(declare-fun b!1215345 () Bool)

(declare-fun tp!344810 () Bool)

(declare-fun tp!344811 () Bool)

(assert (=> b!1215345 (= e!779955 (and tp!344810 tp!344811))))

(declare-fun b!1215342 () Bool)

(assert (=> b!1215342 (= e!779955 tp_is_empty!6319)))

(assert (= (and b!1214912 ((_ is ElementMatch!3399) (reg!3728 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215342))

(assert (= (and b!1214912 ((_ is Concat!5597) (reg!3728 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215343))

(assert (= (and b!1214912 ((_ is Star!3399) (reg!3728 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215344))

(assert (= (and b!1214912 ((_ is Union!3399) (reg!3728 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215345))

(declare-fun tp!344819 () Bool)

(declare-fun e!779960 () Bool)

(declare-fun tp!344820 () Bool)

(declare-fun b!1215354 () Bool)

(assert (=> b!1215354 (= e!779960 (and (inv!16566 (left!10704 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))))) tp!344820 (inv!16566 (right!11034 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))))) tp!344819))))

(declare-fun b!1215356 () Bool)

(declare-fun e!779961 () Bool)

(declare-fun tp!344821 () Bool)

(assert (=> b!1215356 (= e!779961 tp!344821)))

(declare-fun b!1215355 () Bool)

(declare-fun inv!16573 (IArray!8117) Bool)

(assert (=> b!1215355 (= e!779960 (and (inv!16573 (xs!6767 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))))) e!779961))))

(assert (=> b!1214682 (= tp!344606 (and (inv!16566 (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556))))) e!779960))))

(assert (= (and b!1214682 ((_ is Node!4056) (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))))) b!1215354))

(assert (= b!1215355 b!1215356))

(assert (= (and b!1214682 ((_ is Leaf!6269) (c!203253 (dynLambda!5406 (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (value!69273 (h!17780 tokens!556)))))) b!1215355))

(declare-fun m!1390049 () Bool)

(assert (=> b!1215354 m!1390049))

(declare-fun m!1390051 () Bool)

(assert (=> b!1215354 m!1390051))

(declare-fun m!1390053 () Bool)

(assert (=> b!1215355 m!1390053))

(assert (=> b!1214682 m!1389451))

(declare-fun b!1215360 () Bool)

(declare-fun b_free!29145 () Bool)

(declare-fun b_next!29849 () Bool)

(assert (=> b!1215360 (= b_free!29145 (not b_next!29849))))

(declare-fun t!113091 () Bool)

(declare-fun tb!66737 () Bool)

(assert (=> (and b!1215360 (= (toValue!3254 (transformation!2129 (rule!3552 (h!17780 (t!113007 (t!113007 tokens!556)))))) (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113091) tb!66737))

(declare-fun result!80736 () Bool)

(assert (= result!80736 result!80698))

(assert (=> d!347231 t!113091))

(declare-fun tp!344823 () Bool)

(declare-fun b_and!82505 () Bool)

(assert (=> b!1215360 (= tp!344823 (and (=> t!113091 result!80736) b_and!82505))))

(declare-fun b_free!29147 () Bool)

(declare-fun b_next!29851 () Bool)

(assert (=> b!1215360 (= b_free!29147 (not b_next!29851))))

(declare-fun t!113093 () Bool)

(declare-fun tb!66739 () Bool)

(assert (=> (and b!1215360 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 (t!113007 tokens!556)))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) t!113093) tb!66739))

(declare-fun result!80738 () Bool)

(assert (= result!80738 result!80628))

(assert (=> b!1214676 t!113093))

(declare-fun t!113095 () Bool)

(declare-fun tb!66741 () Bool)

(assert (=> (and b!1215360 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 (t!113007 tokens!556)))))) (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113095) tb!66741))

(declare-fun result!80740 () Bool)

(assert (= result!80740 result!80664))

(assert (=> d!347139 t!113095))

(declare-fun t!113097 () Bool)

(declare-fun tb!66743 () Bool)

(assert (=> (and b!1215360 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 (t!113007 tokens!556)))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) t!113097) tb!66743))

(declare-fun result!80742 () Bool)

(assert (= result!80742 result!80690))

(assert (=> b!1215120 t!113097))

(declare-fun tp!344824 () Bool)

(declare-fun b_and!82507 () Bool)

(assert (=> b!1215360 (= tp!344824 (and (=> t!113093 result!80738) (=> t!113095 result!80740) (=> t!113097 result!80742) b_and!82507))))

(declare-fun e!779963 () Bool)

(assert (=> b!1214905 (= tp!344704 e!779963)))

(declare-fun tp!344826 () Bool)

(declare-fun b!1215359 () Bool)

(declare-fun e!779964 () Bool)

(declare-fun e!779966 () Bool)

(assert (=> b!1215359 (= e!779966 (and tp!344826 (inv!16559 (tag!2391 (rule!3552 (h!17780 (t!113007 (t!113007 tokens!556)))))) (inv!16563 (transformation!2129 (rule!3552 (h!17780 (t!113007 (t!113007 tokens!556)))))) e!779964))))

(declare-fun e!779967 () Bool)

(declare-fun tp!344825 () Bool)

(declare-fun b!1215357 () Bool)

(assert (=> b!1215357 (= e!779963 (and (inv!16562 (h!17780 (t!113007 (t!113007 tokens!556)))) e!779967 tp!344825))))

(assert (=> b!1215360 (= e!779964 (and tp!344823 tp!344824))))

(declare-fun tp!344822 () Bool)

(declare-fun b!1215358 () Bool)

(assert (=> b!1215358 (= e!779967 (and (inv!21 (value!69273 (h!17780 (t!113007 (t!113007 tokens!556))))) e!779966 tp!344822))))

(assert (= b!1215359 b!1215360))

(assert (= b!1215358 b!1215359))

(assert (= b!1215357 b!1215358))

(assert (= (and b!1214905 ((_ is Cons!12379) (t!113007 (t!113007 tokens!556)))) b!1215357))

(declare-fun m!1390055 () Bool)

(assert (=> b!1215359 m!1390055))

(declare-fun m!1390057 () Bool)

(assert (=> b!1215359 m!1390057))

(declare-fun m!1390059 () Bool)

(assert (=> b!1215357 m!1390059))

(declare-fun m!1390061 () Bool)

(assert (=> b!1215358 m!1390061))

(declare-fun b!1215361 () Bool)

(declare-fun e!779968 () Bool)

(declare-fun tp!344827 () Bool)

(assert (=> b!1215361 (= e!779968 (and tp_is_empty!6319 tp!344827))))

(assert (=> b!1214909 (= tp!344706 e!779968)))

(assert (= (and b!1214909 ((_ is Cons!12377) (t!113005 (originalCharacters!2683 (h!17780 tokens!556))))) b!1215361))

(declare-fun b!1215363 () Bool)

(declare-fun e!779969 () Bool)

(declare-fun tp!344829 () Bool)

(declare-fun tp!344832 () Bool)

(assert (=> b!1215363 (= e!779969 (and tp!344829 tp!344832))))

(assert (=> b!1214913 (= tp!344709 e!779969)))

(declare-fun b!1215364 () Bool)

(declare-fun tp!344828 () Bool)

(assert (=> b!1215364 (= e!779969 tp!344828)))

(declare-fun b!1215365 () Bool)

(declare-fun tp!344830 () Bool)

(declare-fun tp!344831 () Bool)

(assert (=> b!1215365 (= e!779969 (and tp!344830 tp!344831))))

(declare-fun b!1215362 () Bool)

(assert (=> b!1215362 (= e!779969 tp_is_empty!6319)))

(assert (= (and b!1214913 ((_ is ElementMatch!3399) (regOne!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215362))

(assert (= (and b!1214913 ((_ is Concat!5597) (regOne!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215363))

(assert (= (and b!1214913 ((_ is Star!3399) (regOne!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215364))

(assert (= (and b!1214913 ((_ is Union!3399) (regOne!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215365))

(declare-fun b!1215367 () Bool)

(declare-fun e!779970 () Bool)

(declare-fun tp!344834 () Bool)

(declare-fun tp!344837 () Bool)

(assert (=> b!1215367 (= e!779970 (and tp!344834 tp!344837))))

(assert (=> b!1214913 (= tp!344710 e!779970)))

(declare-fun b!1215368 () Bool)

(declare-fun tp!344833 () Bool)

(assert (=> b!1215368 (= e!779970 tp!344833)))

(declare-fun b!1215369 () Bool)

(declare-fun tp!344835 () Bool)

(declare-fun tp!344836 () Bool)

(assert (=> b!1215369 (= e!779970 (and tp!344835 tp!344836))))

(declare-fun b!1215366 () Bool)

(assert (=> b!1215366 (= e!779970 tp_is_empty!6319)))

(assert (= (and b!1214913 ((_ is ElementMatch!3399) (regTwo!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215366))

(assert (= (and b!1214913 ((_ is Concat!5597) (regTwo!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215367))

(assert (= (and b!1214913 ((_ is Star!3399) (regTwo!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215368))

(assert (= (and b!1214913 ((_ is Union!3399) (regTwo!7311 (regex!2129 (rule!3552 (h!17780 tokens!556)))))) b!1215369))

(declare-fun b!1215370 () Bool)

(declare-fun e!779971 () Bool)

(declare-fun tp!344838 () Bool)

(assert (=> b!1215370 (= e!779971 (and tp_is_empty!6319 tp!344838))))

(assert (=> b!1214906 (= tp!344701 e!779971)))

(assert (= (and b!1214906 ((_ is Cons!12377) (originalCharacters!2683 (h!17780 (t!113007 tokens!556))))) b!1215370))

(declare-fun b!1215372 () Bool)

(declare-fun e!779972 () Bool)

(declare-fun tp!344840 () Bool)

(declare-fun tp!344843 () Bool)

(assert (=> b!1215372 (= e!779972 (and tp!344840 tp!344843))))

(assert (=> b!1214892 (= tp!344687 e!779972)))

(declare-fun b!1215373 () Bool)

(declare-fun tp!344839 () Bool)

(assert (=> b!1215373 (= e!779972 tp!344839)))

(declare-fun b!1215374 () Bool)

(declare-fun tp!344841 () Bool)

(declare-fun tp!344842 () Bool)

(assert (=> b!1215374 (= e!779972 (and tp!344841 tp!344842))))

(declare-fun b!1215371 () Bool)

(assert (=> b!1215371 (= e!779972 tp_is_empty!6319)))

(assert (= (and b!1214892 ((_ is ElementMatch!3399) (regOne!7310 (regex!2129 (h!17779 rules!2728))))) b!1215371))

(assert (= (and b!1214892 ((_ is Concat!5597) (regOne!7310 (regex!2129 (h!17779 rules!2728))))) b!1215372))

(assert (= (and b!1214892 ((_ is Star!3399) (regOne!7310 (regex!2129 (h!17779 rules!2728))))) b!1215373))

(assert (= (and b!1214892 ((_ is Union!3399) (regOne!7310 (regex!2129 (h!17779 rules!2728))))) b!1215374))

(declare-fun b!1215376 () Bool)

(declare-fun e!779973 () Bool)

(declare-fun tp!344845 () Bool)

(declare-fun tp!344848 () Bool)

(assert (=> b!1215376 (= e!779973 (and tp!344845 tp!344848))))

(assert (=> b!1214892 (= tp!344690 e!779973)))

(declare-fun b!1215377 () Bool)

(declare-fun tp!344844 () Bool)

(assert (=> b!1215377 (= e!779973 tp!344844)))

(declare-fun b!1215378 () Bool)

(declare-fun tp!344846 () Bool)

(declare-fun tp!344847 () Bool)

(assert (=> b!1215378 (= e!779973 (and tp!344846 tp!344847))))

(declare-fun b!1215375 () Bool)

(assert (=> b!1215375 (= e!779973 tp_is_empty!6319)))

(assert (= (and b!1214892 ((_ is ElementMatch!3399) (regTwo!7310 (regex!2129 (h!17779 rules!2728))))) b!1215375))

(assert (= (and b!1214892 ((_ is Concat!5597) (regTwo!7310 (regex!2129 (h!17779 rules!2728))))) b!1215376))

(assert (= (and b!1214892 ((_ is Star!3399) (regTwo!7310 (regex!2129 (h!17779 rules!2728))))) b!1215377))

(assert (= (and b!1214892 ((_ is Union!3399) (regTwo!7310 (regex!2129 (h!17779 rules!2728))))) b!1215378))

(declare-fun b!1215380 () Bool)

(declare-fun e!779974 () Bool)

(declare-fun tp!344850 () Bool)

(declare-fun tp!344853 () Bool)

(assert (=> b!1215380 (= e!779974 (and tp!344850 tp!344853))))

(assert (=> b!1214907 (= tp!344705 e!779974)))

(declare-fun b!1215381 () Bool)

(declare-fun tp!344849 () Bool)

(assert (=> b!1215381 (= e!779974 tp!344849)))

(declare-fun b!1215382 () Bool)

(declare-fun tp!344851 () Bool)

(declare-fun tp!344852 () Bool)

(assert (=> b!1215382 (= e!779974 (and tp!344851 tp!344852))))

(declare-fun b!1215379 () Bool)

(assert (=> b!1215379 (= e!779974 tp_is_empty!6319)))

(assert (= (and b!1214907 ((_ is ElementMatch!3399) (regex!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) b!1215379))

(assert (= (and b!1214907 ((_ is Concat!5597) (regex!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) b!1215380))

(assert (= (and b!1214907 ((_ is Star!3399) (regex!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) b!1215381))

(assert (= (and b!1214907 ((_ is Union!3399) (regex!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) b!1215382))

(declare-fun b!1215385 () Bool)

(declare-fun b_free!29149 () Bool)

(declare-fun b_next!29853 () Bool)

(assert (=> b!1215385 (= b_free!29149 (not b_next!29853))))

(declare-fun t!113099 () Bool)

(declare-fun tb!66745 () Bool)

(assert (=> (and b!1215385 (= (toValue!3254 (transformation!2129 (h!17779 (t!113006 (t!113006 rules!2728))))) (toValue!3254 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113099) tb!66745))

(declare-fun result!80744 () Bool)

(assert (= result!80744 result!80698))

(assert (=> d!347231 t!113099))

(declare-fun tp!344856 () Bool)

(declare-fun b_and!82509 () Bool)

(assert (=> b!1215385 (= tp!344856 (and (=> t!113099 result!80744) b_and!82509))))

(declare-fun b_free!29151 () Bool)

(declare-fun b_next!29855 () Bool)

(assert (=> b!1215385 (= b_free!29151 (not b_next!29855))))

(declare-fun tb!66747 () Bool)

(declare-fun t!113101 () Bool)

(assert (=> (and b!1215385 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 (t!113006 rules!2728))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556))))) t!113101) tb!66747))

(declare-fun result!80746 () Bool)

(assert (= result!80746 result!80628))

(assert (=> b!1214676 t!113101))

(declare-fun tb!66749 () Bool)

(declare-fun t!113103 () Bool)

(assert (=> (and b!1215385 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 (t!113006 rules!2728))))) (toChars!3113 (transformation!2129 (rule!3552 (_1!6970 (get!4073 lt!415397)))))) t!113103) tb!66749))

(declare-fun result!80748 () Bool)

(assert (= result!80748 result!80664))

(assert (=> d!347139 t!113103))

(declare-fun t!113105 () Bool)

(declare-fun tb!66751 () Bool)

(assert (=> (and b!1215385 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 (t!113006 rules!2728))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556)))))) t!113105) tb!66751))

(declare-fun result!80750 () Bool)

(assert (= result!80750 result!80690))

(assert (=> b!1215120 t!113105))

(declare-fun b_and!82511 () Bool)

(declare-fun tp!344855 () Bool)

(assert (=> b!1215385 (= tp!344855 (and (=> t!113101 result!80746) (=> t!113103 result!80748) (=> t!113105 result!80750) b_and!82511))))

(declare-fun e!779976 () Bool)

(assert (=> b!1215385 (= e!779976 (and tp!344856 tp!344855))))

(declare-fun tp!344854 () Bool)

(declare-fun e!779978 () Bool)

(declare-fun b!1215384 () Bool)

(assert (=> b!1215384 (= e!779978 (and tp!344854 (inv!16559 (tag!2391 (h!17779 (t!113006 (t!113006 rules!2728))))) (inv!16563 (transformation!2129 (h!17779 (t!113006 (t!113006 rules!2728))))) e!779976))))

(declare-fun b!1215383 () Bool)

(declare-fun e!779977 () Bool)

(declare-fun tp!344857 () Bool)

(assert (=> b!1215383 (= e!779977 (and e!779978 tp!344857))))

(assert (=> b!1214878 (= tp!344675 e!779977)))

(assert (= b!1215384 b!1215385))

(assert (= b!1215383 b!1215384))

(assert (= (and b!1214878 ((_ is Cons!12378) (t!113006 (t!113006 rules!2728)))) b!1215383))

(declare-fun m!1390063 () Bool)

(assert (=> b!1215384 m!1390063))

(declare-fun m!1390065 () Bool)

(assert (=> b!1215384 m!1390065))

(declare-fun b!1215387 () Bool)

(declare-fun e!779979 () Bool)

(declare-fun tp!344859 () Bool)

(declare-fun tp!344862 () Bool)

(assert (=> b!1215387 (= e!779979 (and tp!344859 tp!344862))))

(assert (=> b!1214893 (= tp!344686 e!779979)))

(declare-fun b!1215388 () Bool)

(declare-fun tp!344858 () Bool)

(assert (=> b!1215388 (= e!779979 tp!344858)))

(declare-fun b!1215389 () Bool)

(declare-fun tp!344860 () Bool)

(declare-fun tp!344861 () Bool)

(assert (=> b!1215389 (= e!779979 (and tp!344860 tp!344861))))

(declare-fun b!1215386 () Bool)

(assert (=> b!1215386 (= e!779979 tp_is_empty!6319)))

(assert (= (and b!1214893 ((_ is ElementMatch!3399) (reg!3728 (regex!2129 (h!17779 rules!2728))))) b!1215386))

(assert (= (and b!1214893 ((_ is Concat!5597) (reg!3728 (regex!2129 (h!17779 rules!2728))))) b!1215387))

(assert (= (and b!1214893 ((_ is Star!3399) (reg!3728 (regex!2129 (h!17779 rules!2728))))) b!1215388))

(assert (= (and b!1214893 ((_ is Union!3399) (reg!3728 (regex!2129 (h!17779 rules!2728))))) b!1215389))

(declare-fun b!1215391 () Bool)

(declare-fun e!779980 () Bool)

(declare-fun tp!344864 () Bool)

(declare-fun tp!344867 () Bool)

(assert (=> b!1215391 (= e!779980 (and tp!344864 tp!344867))))

(assert (=> b!1214879 (= tp!344672 e!779980)))

(declare-fun b!1215392 () Bool)

(declare-fun tp!344863 () Bool)

(assert (=> b!1215392 (= e!779980 tp!344863)))

(declare-fun b!1215393 () Bool)

(declare-fun tp!344865 () Bool)

(declare-fun tp!344866 () Bool)

(assert (=> b!1215393 (= e!779980 (and tp!344865 tp!344866))))

(declare-fun b!1215390 () Bool)

(assert (=> b!1215390 (= e!779980 tp_is_empty!6319)))

(assert (= (and b!1214879 ((_ is ElementMatch!3399) (regex!2129 (h!17779 (t!113006 rules!2728))))) b!1215390))

(assert (= (and b!1214879 ((_ is Concat!5597) (regex!2129 (h!17779 (t!113006 rules!2728))))) b!1215391))

(assert (= (and b!1214879 ((_ is Star!3399) (regex!2129 (h!17779 (t!113006 rules!2728))))) b!1215392))

(assert (= (and b!1214879 ((_ is Union!3399) (regex!2129 (h!17779 (t!113006 rules!2728))))) b!1215393))

(declare-fun b!1215395 () Bool)

(declare-fun e!779981 () Bool)

(declare-fun tp!344869 () Bool)

(declare-fun tp!344872 () Bool)

(assert (=> b!1215395 (= e!779981 (and tp!344869 tp!344872))))

(assert (=> b!1214894 (= tp!344688 e!779981)))

(declare-fun b!1215396 () Bool)

(declare-fun tp!344868 () Bool)

(assert (=> b!1215396 (= e!779981 tp!344868)))

(declare-fun b!1215397 () Bool)

(declare-fun tp!344870 () Bool)

(declare-fun tp!344871 () Bool)

(assert (=> b!1215397 (= e!779981 (and tp!344870 tp!344871))))

(declare-fun b!1215394 () Bool)

(assert (=> b!1215394 (= e!779981 tp_is_empty!6319)))

(assert (= (and b!1214894 ((_ is ElementMatch!3399) (regOne!7311 (regex!2129 (h!17779 rules!2728))))) b!1215394))

(assert (= (and b!1214894 ((_ is Concat!5597) (regOne!7311 (regex!2129 (h!17779 rules!2728))))) b!1215395))

(assert (= (and b!1214894 ((_ is Star!3399) (regOne!7311 (regex!2129 (h!17779 rules!2728))))) b!1215396))

(assert (= (and b!1214894 ((_ is Union!3399) (regOne!7311 (regex!2129 (h!17779 rules!2728))))) b!1215397))

(declare-fun b!1215399 () Bool)

(declare-fun e!779982 () Bool)

(declare-fun tp!344874 () Bool)

(declare-fun tp!344877 () Bool)

(assert (=> b!1215399 (= e!779982 (and tp!344874 tp!344877))))

(assert (=> b!1214894 (= tp!344689 e!779982)))

(declare-fun b!1215400 () Bool)

(declare-fun tp!344873 () Bool)

(assert (=> b!1215400 (= e!779982 tp!344873)))

(declare-fun b!1215401 () Bool)

(declare-fun tp!344875 () Bool)

(declare-fun tp!344876 () Bool)

(assert (=> b!1215401 (= e!779982 (and tp!344875 tp!344876))))

(declare-fun b!1215398 () Bool)

(assert (=> b!1215398 (= e!779982 tp_is_empty!6319)))

(assert (= (and b!1214894 ((_ is ElementMatch!3399) (regTwo!7311 (regex!2129 (h!17779 rules!2728))))) b!1215398))

(assert (= (and b!1214894 ((_ is Concat!5597) (regTwo!7311 (regex!2129 (h!17779 rules!2728))))) b!1215399))

(assert (= (and b!1214894 ((_ is Star!3399) (regTwo!7311 (regex!2129 (h!17779 rules!2728))))) b!1215400))

(assert (= (and b!1214894 ((_ is Union!3399) (regTwo!7311 (regex!2129 (h!17779 rules!2728))))) b!1215401))

(declare-fun b_lambda!35837 () Bool)

(assert (= b_lambda!35829 (or (and b!1215360 b_free!29147 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 (t!113007 tokens!556)))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))))) (and b!1214655 b_free!29119 (= (toChars!3113 (transformation!2129 (h!17779 rules!2728))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))))) (and b!1214657 b_free!29115 (= (toChars!3113 (transformation!2129 (rule!3552 (h!17780 tokens!556)))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))))) (and b!1214908 b_free!29135) (and b!1215385 b_free!29151 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 (t!113006 rules!2728))))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))))) (and b!1214880 b_free!29131 (= (toChars!3113 (transformation!2129 (h!17779 (t!113006 rules!2728)))) (toChars!3113 (transformation!2129 (rule!3552 (h!17780 (t!113007 tokens!556))))))) b_lambda!35837)))

(check-sat (not b!1215121) (not b!1214980) (not b_next!29819) (not b_next!29839) b_and!82481 (not d!347227) (not b!1215370) (not b!1215120) b_and!82473 (not b!1215148) (not b_next!29833) (not b_next!29823) (not d!347239) (not b!1215397) (not b!1214984) (not b!1215374) (not b!1215359) (not b!1215165) (not b!1215399) (not b!1215376) (not d!347137) (not b!1215333) (not b!1215369) (not b!1215355) (not b!1215304) (not b!1215395) (not b!1215332) (not b!1215301) (not b!1215373) (not d!347277) (not b!1214682) (not b!1215326) (not b!1214935) (not b!1214937) b_and!82477 b_and!82509 (not b!1214994) (not b!1214979) (not b!1215311) (not b_next!29817) (not b!1215143) (not b!1215380) (not b!1215384) (not d!347269) (not b!1215310) (not d!347275) b_and!82475 (not b!1215146) (not b!1215393) (not b!1215364) (not b!1214992) (not b!1215357) (not b!1215331) (not b!1215168) (not d!347139) (not b!1215324) (not b!1215306) (not b_lambda!35831) b_and!82479 (not b!1215132) (not b!1215314) (not d!347233) (not b!1215144) (not d!347125) (not b!1215313) (not d!347211) (not b!1215149) (not bm!84539) (not b!1215388) (not b!1215133) (not b!1215339) (not b!1215335) b_and!82487 (not b!1215343) (not b!1215151) (not b!1214983) (not b!1215387) (not b!1214968) (not b_next!29821) (not d!347243) (not b!1215389) (not b!1215368) (not b!1215341) (not b_next!29853) (not tb!66697) (not b!1215337) (not d!347223) (not b!1215382) (not b!1215372) (not d!347217) (not b!1215400) (not b!1215396) (not b_next!29855) (not b!1215305) (not d!347261) (not b!1215140) (not b!1215381) (not d!347135) (not b!1215336) (not b!1215147) (not d!347257) (not bm!84544) b_and!82483 (not b!1215307) (not b!1215173) (not b!1215363) (not b!1215344) (not b!1215300) (not b!1215354) (not b!1215174) (not b!1215377) (not b!1214976) (not b_lambda!35837) (not b!1215325) (not d!347141) (not b!1214974) (not b!1215383) (not d!347147) (not tb!66705) (not b!1215150) tp_is_empty!6319 (not b!1215401) b_and!82485 (not b!1215361) (not b!1215153) b_and!82511 (not d!347267) (not b!1215367) (not b!1214967) (not b_next!29837) (not d!347209) (not b_next!29851) (not b!1214966) (not b!1215356) (not b!1215378) b_and!82505 (not b_lambda!35821) (not b!1215392) (not b!1215358) (not b!1215122) (not b_lambda!35823) (not b!1215303) (not b!1215340) (not b!1215345) (not d!347221) (not b_next!29849) (not d!347145) b_and!82507 (not d!347215) (not b!1215365) (not tb!66673) (not b!1215159) (not d!347225) (not b!1215391) (not b_next!29835) (not d!347237) (not b!1214981) (not b!1215308))
(check-sat b_and!82473 (not b_next!29817) b_and!82475 b_and!82479 b_and!82487 (not b_next!29855) b_and!82483 b_and!82485 (not b_next!29851) b_and!82505 (not b_next!29849) b_and!82507 (not b_next!29835) (not b_next!29819) (not b_next!29839) b_and!82481 (not b_next!29833) (not b_next!29823) b_and!82509 b_and!82477 (not b_next!29821) (not b_next!29853) b_and!82511 (not b_next!29837))
