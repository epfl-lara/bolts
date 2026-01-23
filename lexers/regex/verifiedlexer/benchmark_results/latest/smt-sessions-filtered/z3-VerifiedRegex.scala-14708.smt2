; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757918 () Bool)

(assert start!757918)

(declare-fun b!8048180 () Bool)

(declare-fun b_free!136651 () Bool)

(declare-fun b_next!137441 () Bool)

(assert (=> b!8048180 (= b_free!136651 (not b_next!137441))))

(declare-fun tp!2413241 () Bool)

(declare-fun b_and!355087 () Bool)

(assert (=> b!8048180 (= tp!2413241 b_and!355087)))

(declare-fun b_free!136653 () Bool)

(declare-fun b_next!137443 () Bool)

(assert (=> b!8048180 (= b_free!136653 (not b_next!137443))))

(declare-fun tp!2413245 () Bool)

(declare-fun b_and!355089 () Bool)

(assert (=> b!8048180 (= tp!2413245 b_and!355089)))

(declare-fun b!8048177 () Bool)

(declare-fun e!4742060 () Bool)

(declare-datatypes ((List!75586 0))(
  ( (Nil!75460) (Cons!75460 (h!81908 (_ BitVec 16)) (t!391358 List!75586)) )
))
(declare-datatypes ((TokenValue!9116 0))(
  ( (FloatLiteralValue!18232 (text!64257 List!75586)) (TokenValueExt!9115 (__x!35511 Int)) (Broken!45580 (value!293661 List!75586)) (Object!9241) (End!9116) (Def!9116) (Underscore!9116) (Match!9116) (Else!9116) (Error!9116) (Case!9116) (If!9116) (Extends!9116) (Abstract!9116) (Class!9116) (Val!9116) (DelimiterValue!18232 (del!9176 List!75586)) (KeywordValue!9122 (value!293662 List!75586)) (CommentValue!18232 (value!293663 List!75586)) (WhitespaceValue!18232 (value!293664 List!75586)) (IndentationValue!9116 (value!293665 List!75586)) (String!85361) (Int32!9116) (Broken!45581 (value!293666 List!75586)) (Boolean!9117) (Unit!171179) (OperatorValue!9119 (op!9176 List!75586)) (IdentifierValue!18232 (value!293667 List!75586)) (IdentifierValue!18233 (value!293668 List!75586)) (WhitespaceValue!18233 (value!293669 List!75586)) (True!18232) (False!18232) (Broken!45582 (value!293670 List!75586)) (Broken!45583 (value!293671 List!75586)) (True!18233) (RightBrace!9116) (RightBracket!9116) (Colon!9116) (Null!9116) (Comma!9116) (LeftBracket!9116) (False!18233) (LeftBrace!9116) (ImaginaryLiteralValue!9116 (text!64258 List!75586)) (StringLiteralValue!27348 (value!293672 List!75586)) (EOFValue!9116 (value!293673 List!75586)) (IdentValue!9116 (value!293674 List!75586)) (DelimiterValue!18233 (value!293675 List!75586)) (DedentValue!9116 (value!293676 List!75586)) (NewLineValue!9116 (value!293677 List!75586)) (IntegerValue!27348 (value!293678 (_ BitVec 32)) (text!64259 List!75586)) (IntegerValue!27349 (value!293679 Int) (text!64260 List!75586)) (Times!9116) (Or!9116) (Equal!9116) (Minus!9116) (Broken!45584 (value!293680 List!75586)) (And!9116) (Div!9116) (LessEqual!9116) (Mod!9116) (Concat!30983) (Not!9116) (Plus!9116) (SpaceValue!9116 (value!293681 List!75586)) (IntegerValue!27350 (value!293682 Int) (text!64261 List!75586)) (StringLiteralValue!27349 (text!64262 List!75586)) (FloatLiteralValue!18233 (text!64263 List!75586)) (BytesLiteralValue!9116 (value!293683 List!75586)) (CommentValue!18233 (value!293684 List!75586)) (StringLiteralValue!27350 (value!293685 List!75586)) (ErrorTokenValue!9116 (msg!9177 List!75586)) )
))
(declare-datatypes ((C!44072 0))(
  ( (C!44073 (val!32812 Int)) )
))
(declare-datatypes ((List!75587 0))(
  ( (Nil!75461) (Cons!75461 (h!81909 C!44072) (t!391359 List!75587)) )
))
(declare-datatypes ((IArray!32189 0))(
  ( (IArray!32190 (innerList!16152 List!75587)) )
))
(declare-datatypes ((Conc!16064 0))(
  ( (Node!16064 (left!57452 Conc!16064) (right!57782 Conc!16064) (csize!32358 Int) (cheight!16275 Int)) (Leaf!30773 (xs!19462 IArray!32189) (csize!32359 Int)) (Empty!16064) )
))
(declare-datatypes ((BalanceConc!31084 0))(
  ( (BalanceConc!31085 (c!1475533 Conc!16064)) )
))
(declare-datatypes ((Regex!21867 0))(
  ( (ElementMatch!21867 (c!1475534 C!44072)) (Concat!30984 (regOne!44246 Regex!21867) (regTwo!44246 Regex!21867)) (EmptyExpr!21867) (Star!21867 (reg!22196 Regex!21867)) (EmptyLang!21867) (Union!21867 (regOne!44247 Regex!21867) (regTwo!44247 Regex!21867)) )
))
(declare-datatypes ((TokenValueInjection!17540 0))(
  ( (TokenValueInjection!17541 (toValue!11879 Int) (toChars!11738 Int)) )
))
(declare-datatypes ((String!85362 0))(
  ( (String!85363 (value!293686 String)) )
))
(declare-datatypes ((Rule!17392 0))(
  ( (Rule!17393 (regex!8796 Regex!21867) (tag!9660 String!85362) (isSeparator!8796 Bool) (transformation!8796 TokenValueInjection!17540)) )
))
(declare-datatypes ((List!75588 0))(
  ( (Nil!75462) (Cons!75462 (h!81910 Rule!17392) (t!391360 List!75588)) )
))
(declare-fun rules!1024 () List!75588)

(declare-fun ListPrimitiveSize!544 (List!75588) Int)

(assert (=> b!8048177 (= e!4742060 (>= (ListPrimitiveSize!544 (t!391360 rules!1024)) (ListPrimitiveSize!544 rules!1024)))))

(declare-fun res!3181506 () Bool)

(assert (=> start!757918 (=> (not res!3181506) (not e!4742060))))

(declare-datatypes ((LexerInterface!8384 0))(
  ( (LexerInterfaceExt!8381 (__x!35512 Int)) (Lexer!8382) )
))
(declare-fun thiss!10876 () LexerInterface!8384)

(get-info :version)

(assert (=> start!757918 (= res!3181506 (and ((_ is Lexer!8382) thiss!10876) (not ((_ is Nil!75462) rules!1024))))))

(assert (=> start!757918 e!4742060))

(assert (=> start!757918 true))

(declare-fun e!4742059 () Bool)

(assert (=> start!757918 e!4742059))

(declare-fun e!4742062 () Bool)

(assert (=> start!757918 e!4742062))

(declare-fun e!4742063 () Bool)

(declare-fun e!4742061 () Bool)

(declare-fun tp!2413242 () Bool)

(declare-fun b!8048178 () Bool)

(declare-fun inv!97160 (String!85362) Bool)

(declare-fun inv!97162 (TokenValueInjection!17540) Bool)

(assert (=> b!8048178 (= e!4742063 (and tp!2413242 (inv!97160 (tag!9660 (h!81910 rules!1024))) (inv!97162 (transformation!8796 (h!81910 rules!1024))) e!4742061))))

(declare-fun b!8048179 () Bool)

(declare-fun res!3181505 () Bool)

(assert (=> b!8048179 (=> (not res!3181505) (not e!4742060))))

(declare-datatypes ((List!75589 0))(
  ( (Nil!75463) (Cons!75463 (h!81911 String!85362) (t!391361 List!75589)) )
))
(declare-fun acc!325 () List!75589)

(declare-fun contains!21079 (List!75589 String!85362) Bool)

(assert (=> b!8048179 (= res!3181505 (not (contains!21079 acc!325 (tag!9660 (h!81910 rules!1024)))))))

(assert (=> b!8048180 (= e!4742061 (and tp!2413241 tp!2413245))))

(declare-fun b!8048181 () Bool)

(declare-fun tp!2413243 () Bool)

(assert (=> b!8048181 (= e!4742059 (and e!4742063 tp!2413243))))

(declare-fun b!8048182 () Bool)

(declare-fun tp!2413244 () Bool)

(assert (=> b!8048182 (= e!4742062 (and (inv!97160 (h!81911 acc!325)) tp!2413244))))

(assert (= (and start!757918 res!3181506) b!8048179))

(assert (= (and b!8048179 res!3181505) b!8048177))

(assert (= b!8048178 b!8048180))

(assert (= b!8048181 b!8048178))

(assert (= (and start!757918 ((_ is Cons!75462) rules!1024)) b!8048181))

(assert (= (and start!757918 ((_ is Cons!75463) acc!325)) b!8048182))

(declare-fun m!8399430 () Bool)

(assert (=> b!8048177 m!8399430))

(declare-fun m!8399432 () Bool)

(assert (=> b!8048177 m!8399432))

(declare-fun m!8399434 () Bool)

(assert (=> b!8048178 m!8399434))

(declare-fun m!8399436 () Bool)

(assert (=> b!8048178 m!8399436))

(declare-fun m!8399438 () Bool)

(assert (=> b!8048179 m!8399438))

(declare-fun m!8399440 () Bool)

(assert (=> b!8048182 m!8399440))

(check-sat (not b!8048182) (not b!8048179) b_and!355089 (not b!8048181) (not b_next!137441) b_and!355087 (not b_next!137443) (not b!8048178) (not b!8048177))
(check-sat b_and!355087 b_and!355089 (not b_next!137441) (not b_next!137443))
(get-model)

(declare-fun d!2396897 () Bool)

(declare-fun lt!2722927 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16074 (List!75589) (InoxSet String!85362))

(assert (=> d!2396897 (= lt!2722927 (select (content!16074 acc!325) (tag!9660 (h!81910 rules!1024))))))

(declare-fun e!4742071 () Bool)

(assert (=> d!2396897 (= lt!2722927 e!4742071)))

(declare-fun res!3181516 () Bool)

(assert (=> d!2396897 (=> (not res!3181516) (not e!4742071))))

(assert (=> d!2396897 (= res!3181516 ((_ is Cons!75463) acc!325))))

(assert (=> d!2396897 (= (contains!21079 acc!325 (tag!9660 (h!81910 rules!1024))) lt!2722927)))

(declare-fun b!8048191 () Bool)

(declare-fun e!4742072 () Bool)

(assert (=> b!8048191 (= e!4742071 e!4742072)))

(declare-fun res!3181515 () Bool)

(assert (=> b!8048191 (=> res!3181515 e!4742072)))

(assert (=> b!8048191 (= res!3181515 (= (h!81911 acc!325) (tag!9660 (h!81910 rules!1024))))))

(declare-fun b!8048192 () Bool)

(assert (=> b!8048192 (= e!4742072 (contains!21079 (t!391361 acc!325) (tag!9660 (h!81910 rules!1024))))))

(assert (= (and d!2396897 res!3181516) b!8048191))

(assert (= (and b!8048191 (not res!3181515)) b!8048192))

(declare-fun m!8399442 () Bool)

(assert (=> d!2396897 m!8399442))

(declare-fun m!8399446 () Bool)

(assert (=> d!2396897 m!8399446))

(declare-fun m!8399448 () Bool)

(assert (=> b!8048192 m!8399448))

(assert (=> b!8048179 d!2396897))

(declare-fun d!2396903 () Bool)

(assert (=> d!2396903 (= (inv!97160 (tag!9660 (h!81910 rules!1024))) (= (mod (str.len (value!293686 (tag!9660 (h!81910 rules!1024)))) 2) 0))))

(assert (=> b!8048178 d!2396903))

(declare-fun d!2396907 () Bool)

(declare-fun res!3181525 () Bool)

(declare-fun e!4742083 () Bool)

(assert (=> d!2396907 (=> (not res!3181525) (not e!4742083))))

(declare-fun semiInverseModEq!3910 (Int Int) Bool)

(assert (=> d!2396907 (= res!3181525 (semiInverseModEq!3910 (toChars!11738 (transformation!8796 (h!81910 rules!1024))) (toValue!11879 (transformation!8796 (h!81910 rules!1024)))))))

(assert (=> d!2396907 (= (inv!97162 (transformation!8796 (h!81910 rules!1024))) e!4742083)))

(declare-fun b!8048205 () Bool)

(declare-fun equivClasses!3723 (Int Int) Bool)

(assert (=> b!8048205 (= e!4742083 (equivClasses!3723 (toChars!11738 (transformation!8796 (h!81910 rules!1024))) (toValue!11879 (transformation!8796 (h!81910 rules!1024)))))))

(assert (= (and d!2396907 res!3181525) b!8048205))

(declare-fun m!8399456 () Bool)

(assert (=> d!2396907 m!8399456))

(declare-fun m!8399458 () Bool)

(assert (=> b!8048205 m!8399458))

(assert (=> b!8048178 d!2396907))

(declare-fun d!2396915 () Bool)

(assert (=> d!2396915 (= (inv!97160 (h!81911 acc!325)) (= (mod (str.len (value!293686 (h!81911 acc!325))) 2) 0))))

(assert (=> b!8048182 d!2396915))

(declare-fun d!2396917 () Bool)

(declare-fun lt!2722935 () Int)

(assert (=> d!2396917 (>= lt!2722935 0)))

(declare-fun e!4742086 () Int)

(assert (=> d!2396917 (= lt!2722935 e!4742086)))

(declare-fun c!1475541 () Bool)

(assert (=> d!2396917 (= c!1475541 ((_ is Nil!75462) (t!391360 rules!1024)))))

(assert (=> d!2396917 (= (ListPrimitiveSize!544 (t!391360 rules!1024)) lt!2722935)))

(declare-fun b!8048210 () Bool)

(assert (=> b!8048210 (= e!4742086 0)))

(declare-fun b!8048211 () Bool)

(assert (=> b!8048211 (= e!4742086 (+ 1 (ListPrimitiveSize!544 (t!391360 (t!391360 rules!1024)))))))

(assert (= (and d!2396917 c!1475541) b!8048210))

(assert (= (and d!2396917 (not c!1475541)) b!8048211))

(declare-fun m!8399460 () Bool)

(assert (=> b!8048211 m!8399460))

(assert (=> b!8048177 d!2396917))

(declare-fun d!2396919 () Bool)

(declare-fun lt!2722936 () Int)

(assert (=> d!2396919 (>= lt!2722936 0)))

(declare-fun e!4742089 () Int)

(assert (=> d!2396919 (= lt!2722936 e!4742089)))

(declare-fun c!1475542 () Bool)

(assert (=> d!2396919 (= c!1475542 ((_ is Nil!75462) rules!1024))))

(assert (=> d!2396919 (= (ListPrimitiveSize!544 rules!1024) lt!2722936)))

(declare-fun b!8048214 () Bool)

(assert (=> b!8048214 (= e!4742089 0)))

(declare-fun b!8048215 () Bool)

(assert (=> b!8048215 (= e!4742089 (+ 1 (ListPrimitiveSize!544 (t!391360 rules!1024))))))

(assert (= (and d!2396919 c!1475542) b!8048214))

(assert (= (and d!2396919 (not c!1475542)) b!8048215))

(assert (=> b!8048215 m!8399430))

(assert (=> b!8048177 d!2396919))

(declare-fun b!8048235 () Bool)

(declare-fun e!4742095 () Bool)

(declare-fun tp!2413257 () Bool)

(assert (=> b!8048235 (= e!4742095 tp!2413257)))

(declare-fun b!8048233 () Bool)

(declare-fun tp_is_empty!54675 () Bool)

(assert (=> b!8048233 (= e!4742095 tp_is_empty!54675)))

(assert (=> b!8048178 (= tp!2413242 e!4742095)))

(declare-fun b!8048234 () Bool)

(declare-fun tp!2413259 () Bool)

(declare-fun tp!2413260 () Bool)

(assert (=> b!8048234 (= e!4742095 (and tp!2413259 tp!2413260))))

(declare-fun b!8048236 () Bool)

(declare-fun tp!2413256 () Bool)

(declare-fun tp!2413258 () Bool)

(assert (=> b!8048236 (= e!4742095 (and tp!2413256 tp!2413258))))

(assert (= (and b!8048178 ((_ is ElementMatch!21867) (regex!8796 (h!81910 rules!1024)))) b!8048233))

(assert (= (and b!8048178 ((_ is Concat!30984) (regex!8796 (h!81910 rules!1024)))) b!8048234))

(assert (= (and b!8048178 ((_ is Star!21867) (regex!8796 (h!81910 rules!1024)))) b!8048235))

(assert (= (and b!8048178 ((_ is Union!21867) (regex!8796 (h!81910 rules!1024)))) b!8048236))

(declare-fun b!8048243 () Bool)

(declare-fun e!4742106 () Bool)

(declare-fun tp!2413271 () Bool)

(assert (=> b!8048243 (= e!4742106 (and (inv!97160 (h!81911 (t!391361 acc!325))) tp!2413271))))

(assert (=> b!8048182 (= tp!2413244 e!4742106)))

(assert (= (and b!8048182 ((_ is Cons!75463) (t!391361 acc!325))) b!8048243))

(declare-fun m!8399466 () Bool)

(assert (=> b!8048243 m!8399466))

(declare-fun b!8048268 () Bool)

(declare-fun b_free!136659 () Bool)

(declare-fun b_next!137449 () Bool)

(assert (=> b!8048268 (= b_free!136659 (not b_next!137449))))

(declare-fun tp!2413293 () Bool)

(declare-fun b_and!355095 () Bool)

(assert (=> b!8048268 (= tp!2413293 b_and!355095)))

(declare-fun b_free!136661 () Bool)

(declare-fun b_next!137451 () Bool)

(assert (=> b!8048268 (= b_free!136661 (not b_next!137451))))

(declare-fun tp!2413291 () Bool)

(declare-fun b_and!355097 () Bool)

(assert (=> b!8048268 (= tp!2413291 b_and!355097)))

(declare-fun e!4742129 () Bool)

(assert (=> b!8048268 (= e!4742129 (and tp!2413293 tp!2413291))))

(declare-fun e!4742131 () Bool)

(declare-fun b!8048267 () Bool)

(declare-fun tp!2413294 () Bool)

(assert (=> b!8048267 (= e!4742131 (and tp!2413294 (inv!97160 (tag!9660 (h!81910 (t!391360 rules!1024)))) (inv!97162 (transformation!8796 (h!81910 (t!391360 rules!1024)))) e!4742129))))

(declare-fun b!8048266 () Bool)

(declare-fun e!4742128 () Bool)

(declare-fun tp!2413292 () Bool)

(assert (=> b!8048266 (= e!4742128 (and e!4742131 tp!2413292))))

(assert (=> b!8048181 (= tp!2413243 e!4742128)))

(assert (= b!8048267 b!8048268))

(assert (= b!8048266 b!8048267))

(assert (= (and b!8048181 ((_ is Cons!75462) (t!391360 rules!1024))) b!8048266))

(declare-fun m!8399474 () Bool)

(assert (=> b!8048267 m!8399474))

(declare-fun m!8399476 () Bool)

(assert (=> b!8048267 m!8399476))

(check-sat (not d!2396897) b_and!355095 b_and!355089 (not b!8048267) (not b!8048205) (not b_next!137451) (not b!8048215) (not b!8048192) (not b!8048243) (not b!8048234) b_and!355097 (not b!8048236) b_and!355087 (not d!2396907) (not b_next!137443) (not b!8048266) (not b_next!137449) tp_is_empty!54675 (not b_next!137441) (not b!8048211) (not b!8048235))
(check-sat (not b_next!137449) b_and!355095 b_and!355089 (not b_next!137451) (not b_next!137441) b_and!355097 b_and!355087 (not b_next!137443))
