; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522770 () Bool)

(assert start!522770)

(declare-fun b!4958972 () Bool)

(declare-fun b_free!132447 () Bool)

(declare-fun b_next!133237 () Bool)

(assert (=> b!4958972 (= b_free!132447 (not b_next!133237))))

(declare-fun tp!1390832 () Bool)

(declare-fun b_and!347299 () Bool)

(assert (=> b!4958972 (= tp!1390832 b_and!347299)))

(declare-fun b_free!132449 () Bool)

(declare-fun b_next!133239 () Bool)

(assert (=> b!4958972 (= b_free!132449 (not b_next!133239))))

(declare-fun tp!1390831 () Bool)

(declare-fun b_and!347301 () Bool)

(assert (=> b!4958972 (= tp!1390831 b_and!347301)))

(declare-fun b!4958963 () Bool)

(declare-fun e!3099222 () Bool)

(declare-fun e!3099232 () Bool)

(assert (=> b!4958963 (= e!3099222 e!3099232)))

(declare-fun res!2116282 () Bool)

(assert (=> b!4958963 (=> res!2116282 e!3099232)))

(declare-datatypes ((List!57436 0))(
  ( (Nil!57312) (Cons!57312 (h!63760 (_ BitVec 16)) (t!368002 List!57436)) )
))
(declare-datatypes ((TokenValue!8660 0))(
  ( (FloatLiteralValue!17320 (text!61065 List!57436)) (TokenValueExt!8659 (__x!34613 Int)) (Broken!43300 (value!267391 List!57436)) (Object!8783) (End!8660) (Def!8660) (Underscore!8660) (Match!8660) (Else!8660) (Error!8660) (Case!8660) (If!8660) (Extends!8660) (Abstract!8660) (Class!8660) (Val!8660) (DelimiterValue!17320 (del!8720 List!57436)) (KeywordValue!8666 (value!267392 List!57436)) (CommentValue!17320 (value!267393 List!57436)) (WhitespaceValue!17320 (value!267394 List!57436)) (IndentationValue!8660 (value!267395 List!57436)) (String!65173) (Int32!8660) (Broken!43301 (value!267396 List!57436)) (Boolean!8661) (Unit!148206) (OperatorValue!8663 (op!8720 List!57436)) (IdentifierValue!17320 (value!267397 List!57436)) (IdentifierValue!17321 (value!267398 List!57436)) (WhitespaceValue!17321 (value!267399 List!57436)) (True!17320) (False!17320) (Broken!43302 (value!267400 List!57436)) (Broken!43303 (value!267401 List!57436)) (True!17321) (RightBrace!8660) (RightBracket!8660) (Colon!8660) (Null!8660) (Comma!8660) (LeftBracket!8660) (False!17321) (LeftBrace!8660) (ImaginaryLiteralValue!8660 (text!61066 List!57436)) (StringLiteralValue!25980 (value!267402 List!57436)) (EOFValue!8660 (value!267403 List!57436)) (IdentValue!8660 (value!267404 List!57436)) (DelimiterValue!17321 (value!267405 List!57436)) (DedentValue!8660 (value!267406 List!57436)) (NewLineValue!8660 (value!267407 List!57436)) (IntegerValue!25980 (value!267408 (_ BitVec 32)) (text!61067 List!57436)) (IntegerValue!25981 (value!267409 Int) (text!61068 List!57436)) (Times!8660) (Or!8660) (Equal!8660) (Minus!8660) (Broken!43304 (value!267410 List!57436)) (And!8660) (Div!8660) (LessEqual!8660) (Mod!8660) (Concat!22243) (Not!8660) (Plus!8660) (SpaceValue!8660 (value!267411 List!57436)) (IntegerValue!25982 (value!267412 Int) (text!61069 List!57436)) (StringLiteralValue!25981 (text!61070 List!57436)) (FloatLiteralValue!17321 (text!61071 List!57436)) (BytesLiteralValue!8660 (value!267413 List!57436)) (CommentValue!17321 (value!267414 List!57436)) (StringLiteralValue!25982 (value!267415 List!57436)) (ErrorTokenValue!8660 (msg!8721 List!57436)) )
))
(declare-datatypes ((C!27416 0))(
  ( (C!27417 (val!23074 Int)) )
))
(declare-datatypes ((Regex!13583 0))(
  ( (ElementMatch!13583 (c!846385 C!27416)) (Concat!22244 (regOne!27678 Regex!13583) (regTwo!27678 Regex!13583)) (EmptyExpr!13583) (Star!13583 (reg!13912 Regex!13583)) (EmptyLang!13583) (Union!13583 (regOne!27679 Regex!13583) (regTwo!27679 Regex!13583)) )
))
(declare-datatypes ((String!65174 0))(
  ( (String!65175 (value!267416 String)) )
))
(declare-datatypes ((List!57437 0))(
  ( (Nil!57313) (Cons!57313 (h!63761 C!27416) (t!368003 List!57437)) )
))
(declare-datatypes ((IArray!30265 0))(
  ( (IArray!30266 (innerList!15190 List!57437)) )
))
(declare-datatypes ((Conc!15102 0))(
  ( (Node!15102 (left!41795 Conc!15102) (right!42125 Conc!15102) (csize!30434 Int) (cheight!15313 Int)) (Leaf!25102 (xs!18428 IArray!30265) (csize!30435 Int)) (Empty!15102) )
))
(declare-datatypes ((BalanceConc!29634 0))(
  ( (BalanceConc!29635 (c!846386 Conc!15102)) )
))
(declare-datatypes ((TokenValueInjection!16628 0))(
  ( (TokenValueInjection!16629 (toValue!11301 Int) (toChars!11160 Int)) )
))
(declare-datatypes ((Rule!16500 0))(
  ( (Rule!16501 (regex!8350 Regex!13583) (tag!9214 String!65174) (isSeparator!8350 Bool) (transformation!8350 TokenValueInjection!16628)) )
))
(declare-datatypes ((Token!15200 0))(
  ( (Token!15201 (value!267417 TokenValue!8660) (rule!11574 Rule!16500) (size!37988 Int) (originalCharacters!8631 List!57437)) )
))
(declare-datatypes ((tuple2!61948 0))(
  ( (tuple2!61949 (_1!34277 Token!15200) (_2!34277 BalanceConc!29634)) )
))
(declare-datatypes ((Option!14369 0))(
  ( (None!14368) (Some!14368 (v!50353 tuple2!61948)) )
))
(declare-fun lt!2047153 () Option!14369)

(declare-fun lt!2047150 () Option!14369)

(get-info :version)

(assert (=> b!4958963 (= res!2116282 (or (and ((_ is None!14368) lt!2047153) ((_ is None!14368) lt!2047150)) ((_ is None!14368) lt!2047150) ((_ is None!14368) lt!2047153) (< (size!37988 (_1!34277 (v!50353 lt!2047153))) (size!37988 (_1!34277 (v!50353 lt!2047150))))))))

(declare-fun input!1342 () BalanceConc!29634)

(declare-datatypes ((List!57438 0))(
  ( (Nil!57314) (Cons!57314 (h!63762 Rule!16500) (t!368004 List!57438)) )
))
(declare-fun rulesArg!259 () List!57438)

(declare-fun totalInput!464 () BalanceConc!29634)

(declare-datatypes ((LexerInterface!7942 0))(
  ( (LexerInterfaceExt!7939 (__x!34614 Int)) (Lexer!7940) )
))
(declare-fun thiss!15247 () LexerInterface!7942)

(declare-fun maxPrefixZipperSequenceV2!681 (LexerInterface!7942 List!57438 BalanceConc!29634 BalanceConc!29634) Option!14369)

(assert (=> b!4958963 (= lt!2047150 (maxPrefixZipperSequenceV2!681 thiss!15247 (t!368004 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!334 (LexerInterface!7942 Rule!16500 BalanceConc!29634 BalanceConc!29634) Option!14369)

(assert (=> b!4958963 (= lt!2047153 (maxPrefixOneRuleZipperSequenceV2!334 thiss!15247 (h!63762 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4958964 () Bool)

(declare-fun e!3099223 () Bool)

(declare-fun tp!1390835 () Bool)

(declare-fun inv!74811 (Conc!15102) Bool)

(assert (=> b!4958964 (= e!3099223 (and (inv!74811 (c!846386 input!1342)) tp!1390835))))

(declare-fun b!4958965 () Bool)

(declare-fun e!3099229 () Bool)

(declare-fun e!3099227 () Bool)

(declare-fun tp!1390834 () Bool)

(assert (=> b!4958965 (= e!3099229 (and e!3099227 tp!1390834))))

(declare-fun b!4958966 () Bool)

(declare-fun e!3099231 () Bool)

(assert (=> b!4958966 (= e!3099231 true)))

(declare-fun lt!2047151 () Bool)

(declare-fun e!3099224 () Bool)

(assert (=> b!4958966 (= lt!2047151 e!3099224)))

(declare-fun res!2116276 () Bool)

(assert (=> b!4958966 (=> res!2116276 e!3099224)))

(declare-fun lt!2047156 () Bool)

(assert (=> b!4958966 (= res!2116276 (not lt!2047156))))

(declare-fun b!4958967 () Bool)

(declare-fun e!3099230 () Bool)

(declare-fun e!3099221 () Bool)

(assert (=> b!4958967 (= e!3099230 e!3099221)))

(declare-fun res!2116277 () Bool)

(assert (=> b!4958967 (=> (not res!2116277) (not e!3099221))))

(declare-fun lt!2047158 () List!57437)

(declare-fun isSuffix!1149 (List!57437 List!57437) Bool)

(declare-fun list!18299 (BalanceConc!29634) List!57437)

(assert (=> b!4958967 (= res!2116277 (isSuffix!1149 lt!2047158 (list!18299 totalInput!464)))))

(assert (=> b!4958967 (= lt!2047158 (list!18299 input!1342))))

(declare-fun b!4958968 () Bool)

(declare-fun e!3099226 () Bool)

(assert (=> b!4958968 (= e!3099224 e!3099226)))

(declare-fun res!2116281 () Bool)

(assert (=> b!4958968 (=> (not res!2116281) (not e!3099226))))

(declare-fun lt!2047157 () tuple2!61948)

(declare-datatypes ((tuple2!61950 0))(
  ( (tuple2!61951 (_1!34278 Token!15200) (_2!34278 List!57437)) )
))
(declare-fun lt!2047152 () tuple2!61950)

(assert (=> b!4958968 (= res!2116281 (= (_1!34277 lt!2047157) (_1!34278 lt!2047152)))))

(declare-datatypes ((Option!14370 0))(
  ( (None!14369) (Some!14369 (v!50354 tuple2!61950)) )
))
(declare-fun lt!2047154 () Option!14370)

(declare-fun get!19852 (Option!14370) tuple2!61950)

(assert (=> b!4958968 (= lt!2047152 (get!19852 lt!2047154))))

(declare-fun get!19853 (Option!14369) tuple2!61948)

(assert (=> b!4958968 (= lt!2047157 (get!19853 lt!2047153))))

(declare-fun b!4958969 () Bool)

(declare-fun res!2116278 () Bool)

(assert (=> b!4958969 (=> (not res!2116278) (not e!3099230))))

(declare-fun isEmpty!30822 (List!57438) Bool)

(assert (=> b!4958969 (= res!2116278 (not (isEmpty!30822 rulesArg!259)))))

(declare-fun b!4958970 () Bool)

(declare-fun e!3099225 () Bool)

(declare-fun tp!1390833 () Bool)

(assert (=> b!4958970 (= e!3099225 (and (inv!74811 (c!846386 totalInput!464)) tp!1390833))))

(declare-fun b!4958971 () Bool)

(declare-fun tp!1390836 () Bool)

(declare-fun e!3099228 () Bool)

(declare-fun inv!74807 (String!65174) Bool)

(declare-fun inv!74812 (TokenValueInjection!16628) Bool)

(assert (=> b!4958971 (= e!3099227 (and tp!1390836 (inv!74807 (tag!9214 (h!63762 rulesArg!259))) (inv!74812 (transformation!8350 (h!63762 rulesArg!259))) e!3099228))))

(assert (=> b!4958972 (= e!3099228 (and tp!1390832 tp!1390831))))

(declare-fun b!4958973 () Bool)

(assert (=> b!4958973 (= e!3099232 e!3099231)))

(declare-fun res!2116283 () Bool)

(assert (=> b!4958973 (=> res!2116283 e!3099231)))

(declare-fun isDefined!11288 (Option!14370) Bool)

(assert (=> b!4958973 (= res!2116283 (not (= lt!2047156 (isDefined!11288 lt!2047154))))))

(declare-fun isDefined!11289 (Option!14369) Bool)

(assert (=> b!4958973 (= lt!2047156 (isDefined!11289 lt!2047153))))

(declare-fun maxPrefixZipper!747 (LexerInterface!7942 List!57438 List!57437) Option!14370)

(assert (=> b!4958973 (= lt!2047154 (maxPrefixZipper!747 thiss!15247 rulesArg!259 lt!2047158))))

(declare-fun res!2116280 () Bool)

(assert (=> start!522770 (=> (not res!2116280) (not e!3099230))))

(assert (=> start!522770 (= res!2116280 ((_ is Lexer!7940) thiss!15247))))

(assert (=> start!522770 e!3099230))

(assert (=> start!522770 true))

(assert (=> start!522770 e!3099229))

(declare-fun inv!74813 (BalanceConc!29634) Bool)

(assert (=> start!522770 (and (inv!74813 input!1342) e!3099223)))

(assert (=> start!522770 (and (inv!74813 totalInput!464) e!3099225)))

(declare-fun b!4958974 () Bool)

(declare-fun res!2116279 () Bool)

(assert (=> b!4958974 (=> (not res!2116279) (not e!3099230))))

(declare-fun rulesValidInductive!3253 (LexerInterface!7942 List!57438) Bool)

(assert (=> b!4958974 (= res!2116279 (rulesValidInductive!3253 thiss!15247 rulesArg!259))))

(declare-fun b!4958975 () Bool)

(assert (=> b!4958975 (= e!3099226 (= (list!18299 (_2!34277 lt!2047157)) (_2!34278 lt!2047152)))))

(declare-fun b!4958976 () Bool)

(assert (=> b!4958976 (= e!3099221 (not e!3099222))))

(declare-fun res!2116284 () Bool)

(assert (=> b!4958976 (=> res!2116284 e!3099222)))

(assert (=> b!4958976 (= res!2116284 (or (and ((_ is Cons!57314) rulesArg!259) ((_ is Nil!57314) (t!368004 rulesArg!259))) (not ((_ is Cons!57314) rulesArg!259))))))

(declare-fun isPrefix!5203 (List!57437 List!57437) Bool)

(assert (=> b!4958976 (isPrefix!5203 lt!2047158 lt!2047158)))

(declare-datatypes ((Unit!148207 0))(
  ( (Unit!148208) )
))
(declare-fun lt!2047155 () Unit!148207)

(declare-fun lemmaIsPrefixRefl!3527 (List!57437 List!57437) Unit!148207)

(assert (=> b!4958976 (= lt!2047155 (lemmaIsPrefixRefl!3527 lt!2047158 lt!2047158))))

(assert (= (and start!522770 res!2116280) b!4958974))

(assert (= (and b!4958974 res!2116279) b!4958969))

(assert (= (and b!4958969 res!2116278) b!4958967))

(assert (= (and b!4958967 res!2116277) b!4958976))

(assert (= (and b!4958976 (not res!2116284)) b!4958963))

(assert (= (and b!4958963 (not res!2116282)) b!4958973))

(assert (= (and b!4958973 (not res!2116283)) b!4958966))

(assert (= (and b!4958966 (not res!2116276)) b!4958968))

(assert (= (and b!4958968 res!2116281) b!4958975))

(assert (= b!4958971 b!4958972))

(assert (= b!4958965 b!4958971))

(assert (= (and start!522770 ((_ is Cons!57314) rulesArg!259)) b!4958965))

(assert (= start!522770 b!4958964))

(assert (= start!522770 b!4958970))

(declare-fun m!5983534 () Bool)

(assert (=> b!4958967 m!5983534))

(assert (=> b!4958967 m!5983534))

(declare-fun m!5983536 () Bool)

(assert (=> b!4958967 m!5983536))

(declare-fun m!5983538 () Bool)

(assert (=> b!4958967 m!5983538))

(declare-fun m!5983540 () Bool)

(assert (=> b!4958970 m!5983540))

(declare-fun m!5983542 () Bool)

(assert (=> b!4958971 m!5983542))

(declare-fun m!5983544 () Bool)

(assert (=> b!4958971 m!5983544))

(declare-fun m!5983546 () Bool)

(assert (=> b!4958974 m!5983546))

(declare-fun m!5983548 () Bool)

(assert (=> b!4958963 m!5983548))

(declare-fun m!5983550 () Bool)

(assert (=> b!4958963 m!5983550))

(declare-fun m!5983552 () Bool)

(assert (=> b!4958975 m!5983552))

(declare-fun m!5983554 () Bool)

(assert (=> b!4958969 m!5983554))

(declare-fun m!5983556 () Bool)

(assert (=> b!4958968 m!5983556))

(declare-fun m!5983558 () Bool)

(assert (=> b!4958968 m!5983558))

(declare-fun m!5983560 () Bool)

(assert (=> b!4958964 m!5983560))

(declare-fun m!5983562 () Bool)

(assert (=> start!522770 m!5983562))

(declare-fun m!5983564 () Bool)

(assert (=> start!522770 m!5983564))

(declare-fun m!5983566 () Bool)

(assert (=> b!4958976 m!5983566))

(declare-fun m!5983568 () Bool)

(assert (=> b!4958976 m!5983568))

(declare-fun m!5983570 () Bool)

(assert (=> b!4958973 m!5983570))

(declare-fun m!5983572 () Bool)

(assert (=> b!4958973 m!5983572))

(declare-fun m!5983574 () Bool)

(assert (=> b!4958973 m!5983574))

(check-sat (not b!4958968) (not start!522770) (not b!4958965) (not b!4958964) (not b!4958967) (not b_next!133237) (not b!4958973) (not b!4958969) b_and!347299 (not b!4958975) (not b!4958974) (not b_next!133239) (not b!4958976) (not b!4958963) (not b!4958970) (not b!4958971) b_and!347301)
(check-sat b_and!347299 b_and!347301 (not b_next!133237) (not b_next!133239))
