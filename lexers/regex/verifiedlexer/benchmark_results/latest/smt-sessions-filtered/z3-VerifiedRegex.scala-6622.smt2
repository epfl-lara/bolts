; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349402 () Bool)

(assert start!349402)

(declare-fun b!3705208 () Bool)

(declare-fun b_free!99045 () Bool)

(declare-fun b_next!99749 () Bool)

(assert (=> b!3705208 (= b_free!99045 (not b_next!99749))))

(declare-fun tp!1126920 () Bool)

(declare-fun b_and!277279 () Bool)

(assert (=> b!3705208 (= tp!1126920 b_and!277279)))

(declare-fun b_free!99047 () Bool)

(declare-fun b_next!99751 () Bool)

(assert (=> b!3705208 (= b_free!99047 (not b_next!99751))))

(declare-fun tp!1126923 () Bool)

(declare-fun b_and!277281 () Bool)

(assert (=> b!3705208 (= tp!1126923 b_and!277281)))

(declare-fun b!3705206 () Bool)

(declare-fun b_free!99049 () Bool)

(declare-fun b_next!99753 () Bool)

(assert (=> b!3705206 (= b_free!99049 (not b_next!99753))))

(declare-fun tp!1126921 () Bool)

(declare-fun b_and!277283 () Bool)

(assert (=> b!3705206 (= tp!1126921 b_and!277283)))

(declare-fun b_free!99051 () Bool)

(declare-fun b_next!99755 () Bool)

(assert (=> b!3705206 (= b_free!99051 (not b_next!99755))))

(declare-fun tp!1126922 () Bool)

(declare-fun b_and!277285 () Bool)

(assert (=> b!3705206 (= tp!1126922 b_and!277285)))

(declare-fun b!3705204 () Bool)

(declare-datatypes ((List!39622 0))(
  ( (Nil!39498) (Cons!39498 (h!44918 (_ BitVec 16)) (t!302305 List!39622)) )
))
(declare-datatypes ((TokenValue!6254 0))(
  ( (FloatLiteralValue!12508 (text!44223 List!39622)) (TokenValueExt!6253 (__x!24725 Int)) (Broken!31270 (value!192073 List!39622)) (Object!6377) (End!6254) (Def!6254) (Underscore!6254) (Match!6254) (Else!6254) (Error!6254) (Case!6254) (If!6254) (Extends!6254) (Abstract!6254) (Class!6254) (Val!6254) (DelimiterValue!12508 (del!6314 List!39622)) (KeywordValue!6260 (value!192074 List!39622)) (CommentValue!12508 (value!192075 List!39622)) (WhitespaceValue!12508 (value!192076 List!39622)) (IndentationValue!6254 (value!192077 List!39622)) (String!44603) (Int32!6254) (Broken!31271 (value!192078 List!39622)) (Boolean!6255) (Unit!57413) (OperatorValue!6257 (op!6314 List!39622)) (IdentifierValue!12508 (value!192079 List!39622)) (IdentifierValue!12509 (value!192080 List!39622)) (WhitespaceValue!12509 (value!192081 List!39622)) (True!12508) (False!12508) (Broken!31272 (value!192082 List!39622)) (Broken!31273 (value!192083 List!39622)) (True!12509) (RightBrace!6254) (RightBracket!6254) (Colon!6254) (Null!6254) (Comma!6254) (LeftBracket!6254) (False!12509) (LeftBrace!6254) (ImaginaryLiteralValue!6254 (text!44224 List!39622)) (StringLiteralValue!18762 (value!192084 List!39622)) (EOFValue!6254 (value!192085 List!39622)) (IdentValue!6254 (value!192086 List!39622)) (DelimiterValue!12509 (value!192087 List!39622)) (DedentValue!6254 (value!192088 List!39622)) (NewLineValue!6254 (value!192089 List!39622)) (IntegerValue!18762 (value!192090 (_ BitVec 32)) (text!44225 List!39622)) (IntegerValue!18763 (value!192091 Int) (text!44226 List!39622)) (Times!6254) (Or!6254) (Equal!6254) (Minus!6254) (Broken!31274 (value!192092 List!39622)) (And!6254) (Div!6254) (LessEqual!6254) (Mod!6254) (Concat!17037) (Not!6254) (Plus!6254) (SpaceValue!6254 (value!192093 List!39622)) (IntegerValue!18764 (value!192094 Int) (text!44227 List!39622)) (StringLiteralValue!18763 (text!44228 List!39622)) (FloatLiteralValue!12509 (text!44229 List!39622)) (BytesLiteralValue!6254 (value!192095 List!39622)) (CommentValue!12509 (value!192096 List!39622)) (StringLiteralValue!18764 (value!192097 List!39622)) (ErrorTokenValue!6254 (msg!6315 List!39622)) )
))
(declare-datatypes ((C!21752 0))(
  ( (C!21753 (val!12924 Int)) )
))
(declare-datatypes ((List!39623 0))(
  ( (Nil!39499) (Cons!39499 (h!44919 C!21752) (t!302306 List!39623)) )
))
(declare-datatypes ((IArray!24247 0))(
  ( (IArray!24248 (innerList!12181 List!39623)) )
))
(declare-datatypes ((Conc!12121 0))(
  ( (Node!12121 (left!30691 Conc!12121) (right!31021 Conc!12121) (csize!24472 Int) (cheight!12332 Int)) (Leaf!18744 (xs!15323 IArray!24247) (csize!24473 Int)) (Empty!12121) )
))
(declare-datatypes ((BalanceConc!23856 0))(
  ( (BalanceConc!23857 (c!639992 Conc!12121)) )
))
(declare-datatypes ((Regex!10783 0))(
  ( (ElementMatch!10783 (c!639993 C!21752)) (Concat!17038 (regOne!22078 Regex!10783) (regTwo!22078 Regex!10783)) (EmptyExpr!10783) (Star!10783 (reg!11112 Regex!10783)) (EmptyLang!10783) (Union!10783 (regOne!22079 Regex!10783) (regTwo!22079 Regex!10783)) )
))
(declare-datatypes ((String!44604 0))(
  ( (String!44605 (value!192098 String)) )
))
(declare-datatypes ((TokenValueInjection!11936 0))(
  ( (TokenValueInjection!11937 (toValue!8368 Int) (toChars!8227 Int)) )
))
(declare-datatypes ((Rule!11848 0))(
  ( (Rule!11849 (regex!6024 Regex!10783) (tag!6882 String!44604) (isSeparator!6024 Bool) (transformation!6024 TokenValueInjection!11936)) )
))
(declare-datatypes ((Option!8560 0))(
  ( (None!8559) (Some!8559 (v!38543 Rule!11848)) )
))
(declare-fun err!4177 () Option!8560)

(declare-fun e!2295183 () Bool)

(declare-fun tp!1126924 () Bool)

(declare-fun e!2295181 () Bool)

(declare-fun inv!52998 (String!44604) Bool)

(declare-fun inv!53000 (TokenValueInjection!11936) Bool)

(assert (=> b!3705204 (= e!2295181 (and tp!1126924 (inv!52998 (tag!6882 (v!38543 err!4177))) (inv!53000 (transformation!6024 (v!38543 err!4177))) e!2295183))))

(declare-fun e!2295177 () Bool)

(declare-fun tp!1126926 () Bool)

(declare-fun b!3705205 () Bool)

(declare-datatypes ((List!39624 0))(
  ( (Nil!39500) (Cons!39500 (h!44920 Rule!11848) (t!302307 List!39624)) )
))
(declare-fun rules!2525 () List!39624)

(declare-fun e!2295174 () Bool)

(assert (=> b!3705205 (= e!2295177 (and tp!1126926 (inv!52998 (tag!6882 (h!44920 rules!2525))) (inv!53000 (transformation!6024 (h!44920 rules!2525))) e!2295174))))

(assert (=> b!3705206 (= e!2295174 (and tp!1126921 tp!1126922))))

(declare-fun b!3705207 () Bool)

(declare-fun res!1507328 () Bool)

(declare-fun e!2295180 () Bool)

(assert (=> b!3705207 (=> (not res!1507328) (not e!2295180))))

(declare-fun lt!1296284 () Option!8560)

(declare-fun contains!7884 (List!39624 Rule!11848) Bool)

(declare-fun get!13152 (Option!8560) Rule!11848)

(assert (=> b!3705207 (= res!1507328 (contains!7884 rules!2525 (get!13152 lt!1296284)))))

(assert (=> b!3705208 (= e!2295183 (and tp!1126920 tp!1126923))))

(declare-fun b!3705209 () Bool)

(declare-fun e!2295184 () Bool)

(assert (=> b!3705209 (= e!2295184 e!2295181)))

(declare-fun b!3705210 () Bool)

(declare-fun isDefined!6745 (Option!8560) Bool)

(assert (=> b!3705210 (= e!2295180 (not (isDefined!6745 lt!1296284)))))

(declare-fun b!3705211 () Bool)

(declare-fun res!1507326 () Bool)

(declare-fun e!2295179 () Bool)

(assert (=> b!3705211 (=> (not res!1507326) (not e!2295179))))

(declare-fun tag!164 () String!44604)

(get-info :version)

(assert (=> b!3705211 (= res!1507326 (and (or (not ((_ is Cons!39500) rules!2525)) (not (= (tag!6882 (h!44920 rules!2525)) tag!164))) (or (not ((_ is Cons!39500) rules!2525)) (= (tag!6882 (h!44920 rules!2525)) tag!164)) (not ((_ is Nil!39500) rules!2525))))))

(declare-fun b!3705212 () Bool)

(declare-fun res!1507324 () Bool)

(assert (=> b!3705212 (=> (not res!1507324) (not e!2295179))))

(declare-datatypes ((LexerInterface!5613 0))(
  ( (LexerInterfaceExt!5610 (__x!24726 Int)) (Lexer!5611) )
))
(declare-fun thiss!19663 () LexerInterface!5613)

(declare-fun rulesInvariant!5010 (LexerInterface!5613 List!39624) Bool)

(assert (=> b!3705212 (= res!1507324 (rulesInvariant!5010 thiss!19663 rules!2525))))

(declare-fun b!3705213 () Bool)

(declare-fun e!2295175 () Bool)

(declare-fun tp!1126925 () Bool)

(assert (=> b!3705213 (= e!2295175 (and e!2295177 tp!1126925))))

(declare-fun b!3705214 () Bool)

(assert (=> b!3705214 (= e!2295179 e!2295180)))

(declare-fun res!1507325 () Bool)

(assert (=> b!3705214 (=> (not res!1507325) (not e!2295180))))

(declare-fun isEmpty!23482 (Option!8560) Bool)

(assert (=> b!3705214 (= res!1507325 (not (isEmpty!23482 lt!1296284)))))

(assert (=> b!3705214 (= lt!1296284 err!4177)))

(assert (=> b!3705214 true))

(assert (=> b!3705214 e!2295184))

(declare-fun res!1507327 () Bool)

(assert (=> start!349402 (=> (not res!1507327) (not e!2295179))))

(assert (=> start!349402 (= res!1507327 ((_ is Lexer!5611) thiss!19663))))

(assert (=> start!349402 e!2295179))

(assert (=> start!349402 true))

(assert (=> start!349402 e!2295175))

(assert (=> start!349402 (inv!52998 tag!164)))

(assert (= (and start!349402 res!1507327) b!3705212))

(assert (= (and b!3705212 res!1507324) b!3705211))

(assert (= (and b!3705211 res!1507326) b!3705214))

(assert (= b!3705204 b!3705208))

(assert (= b!3705209 b!3705204))

(assert (= (and b!3705214 ((_ is Some!8559) err!4177)) b!3705209))

(assert (= (and b!3705214 res!1507325) b!3705207))

(assert (= (and b!3705207 res!1507328) b!3705210))

(assert (= b!3705205 b!3705206))

(assert (= b!3705213 b!3705205))

(assert (= (and start!349402 ((_ is Cons!39500) rules!2525)) b!3705213))

(declare-fun m!4215637 () Bool)

(assert (=> b!3705205 m!4215637))

(declare-fun m!4215639 () Bool)

(assert (=> b!3705205 m!4215639))

(declare-fun m!4215641 () Bool)

(assert (=> b!3705214 m!4215641))

(declare-fun m!4215643 () Bool)

(assert (=> b!3705212 m!4215643))

(declare-fun m!4215645 () Bool)

(assert (=> start!349402 m!4215645))

(declare-fun m!4215647 () Bool)

(assert (=> b!3705210 m!4215647))

(declare-fun m!4215649 () Bool)

(assert (=> b!3705204 m!4215649))

(declare-fun m!4215651 () Bool)

(assert (=> b!3705204 m!4215651))

(declare-fun m!4215653 () Bool)

(assert (=> b!3705207 m!4215653))

(assert (=> b!3705207 m!4215653))

(declare-fun m!4215655 () Bool)

(assert (=> b!3705207 m!4215655))

(check-sat (not b!3705214) (not b!3705212) (not b_next!99749) (not b_next!99751) (not b_next!99753) (not b!3705204) (not start!349402) b_and!277281 (not b!3705210) b_and!277283 b_and!277279 (not b!3705207) b_and!277285 (not b!3705205) (not b!3705213) (not b_next!99755))
(check-sat (not b_next!99755) (not b_next!99749) (not b_next!99751) (not b_next!99753) b_and!277281 b_and!277283 b_and!277279 b_and!277285)
