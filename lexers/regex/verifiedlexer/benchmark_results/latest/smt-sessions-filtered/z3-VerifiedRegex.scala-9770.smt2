; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511108 () Bool)

(assert start!511108)

(declare-fun b!4884345 () Bool)

(declare-fun b_free!131131 () Bool)

(declare-fun b_next!131921 () Bool)

(assert (=> b!4884345 (= b_free!131131 (not b_next!131921))))

(declare-fun tp!1374483 () Bool)

(declare-fun b_and!343963 () Bool)

(assert (=> b!4884345 (= tp!1374483 b_and!343963)))

(declare-fun b_free!131133 () Bool)

(declare-fun b_next!131923 () Bool)

(assert (=> b!4884345 (= b_free!131133 (not b_next!131923))))

(declare-fun tp!1374479 () Bool)

(declare-fun b_and!343965 () Bool)

(assert (=> b!4884345 (= tp!1374479 b_and!343965)))

(declare-fun b!4884339 () Bool)

(declare-fun e!3052944 () Bool)

(declare-fun e!3052947 () Bool)

(assert (=> b!4884339 (= e!3052944 e!3052947)))

(declare-fun res!2085335 () Bool)

(assert (=> b!4884339 (=> res!2085335 e!3052947)))

(declare-fun e!3052953 () Bool)

(assert (=> b!4884339 (= res!2085335 e!3052953)))

(declare-fun res!2085331 () Bool)

(assert (=> b!4884339 (=> (not res!2085331) (not e!3052953))))

(declare-fun lt!2001054 () Bool)

(assert (=> b!4884339 (= res!2085331 (not lt!2001054))))

(declare-fun lt!2001049 () Bool)

(assert (=> b!4884339 (= lt!2001054 (not lt!2001049))))

(declare-fun e!3052954 () Bool)

(declare-fun e!3052943 () Bool)

(declare-fun tp!1374480 () Bool)

(declare-fun b!4884340 () Bool)

(declare-datatypes ((C!26564 0))(
  ( (C!26565 (val!22616 Int)) )
))
(declare-datatypes ((List!56329 0))(
  ( (Nil!56205) (Cons!56205 (h!62653 C!26564) (t!364975 List!56329)) )
))
(declare-datatypes ((Regex!13183 0))(
  ( (ElementMatch!13183 (c!830535 C!26564)) (Concat!21601 (regOne!26878 Regex!13183) (regTwo!26878 Regex!13183)) (EmptyExpr!13183) (Star!13183 (reg!13512 Regex!13183)) (EmptyLang!13183) (Union!13183 (regOne!26879 Regex!13183) (regTwo!26879 Regex!13183)) )
))
(declare-datatypes ((String!63531 0))(
  ( (String!63532 (value!260204 String)) )
))
(declare-datatypes ((List!56330 0))(
  ( (Nil!56206) (Cons!56206 (h!62654 (_ BitVec 16)) (t!364976 List!56330)) )
))
(declare-datatypes ((TokenValue!8418 0))(
  ( (FloatLiteralValue!16836 (text!59371 List!56330)) (TokenValueExt!8417 (__x!34129 Int)) (Broken!42090 (value!260205 List!56330)) (Object!8541) (End!8418) (Def!8418) (Underscore!8418) (Match!8418) (Else!8418) (Error!8418) (Case!8418) (If!8418) (Extends!8418) (Abstract!8418) (Class!8418) (Val!8418) (DelimiterValue!16836 (del!8478 List!56330)) (KeywordValue!8424 (value!260206 List!56330)) (CommentValue!16836 (value!260207 List!56330)) (WhitespaceValue!16836 (value!260208 List!56330)) (IndentationValue!8418 (value!260209 List!56330)) (String!63533) (Int32!8418) (Broken!42091 (value!260210 List!56330)) (Boolean!8419) (Unit!146195) (OperatorValue!8421 (op!8478 List!56330)) (IdentifierValue!16836 (value!260211 List!56330)) (IdentifierValue!16837 (value!260212 List!56330)) (WhitespaceValue!16837 (value!260213 List!56330)) (True!16836) (False!16836) (Broken!42092 (value!260214 List!56330)) (Broken!42093 (value!260215 List!56330)) (True!16837) (RightBrace!8418) (RightBracket!8418) (Colon!8418) (Null!8418) (Comma!8418) (LeftBracket!8418) (False!16837) (LeftBrace!8418) (ImaginaryLiteralValue!8418 (text!59372 List!56330)) (StringLiteralValue!25254 (value!260216 List!56330)) (EOFValue!8418 (value!260217 List!56330)) (IdentValue!8418 (value!260218 List!56330)) (DelimiterValue!16837 (value!260219 List!56330)) (DedentValue!8418 (value!260220 List!56330)) (NewLineValue!8418 (value!260221 List!56330)) (IntegerValue!25254 (value!260222 (_ BitVec 32)) (text!59373 List!56330)) (IntegerValue!25255 (value!260223 Int) (text!59374 List!56330)) (Times!8418) (Or!8418) (Equal!8418) (Minus!8418) (Broken!42094 (value!260224 List!56330)) (And!8418) (Div!8418) (LessEqual!8418) (Mod!8418) (Concat!21602) (Not!8418) (Plus!8418) (SpaceValue!8418 (value!260225 List!56330)) (IntegerValue!25256 (value!260226 Int) (text!59375 List!56330)) (StringLiteralValue!25255 (text!59376 List!56330)) (FloatLiteralValue!16837 (text!59377 List!56330)) (BytesLiteralValue!8418 (value!260227 List!56330)) (CommentValue!16837 (value!260228 List!56330)) (StringLiteralValue!25256 (value!260229 List!56330)) (ErrorTokenValue!8418 (msg!8479 List!56330)) )
))
(declare-datatypes ((IArray!29413 0))(
  ( (IArray!29414 (innerList!14764 List!56329)) )
))
(declare-datatypes ((Conc!14676 0))(
  ( (Node!14676 (left!40828 Conc!14676) (right!41158 Conc!14676) (csize!29582 Int) (cheight!14887 Int)) (Leaf!24447 (xs!17992 IArray!29413) (csize!29583 Int)) (Empty!14676) )
))
(declare-datatypes ((BalanceConc!28782 0))(
  ( (BalanceConc!28783 (c!830536 Conc!14676)) )
))
(declare-datatypes ((TokenValueInjection!16144 0))(
  ( (TokenValueInjection!16145 (toValue!10995 Int) (toChars!10854 Int)) )
))
(declare-datatypes ((Rule!16016 0))(
  ( (Rule!16017 (regex!8108 Regex!13183) (tag!8972 String!63531) (isSeparator!8108 Bool) (transformation!8108 TokenValueInjection!16144)) )
))
(declare-datatypes ((List!56331 0))(
  ( (Nil!56207) (Cons!56207 (h!62655 Rule!16016) (t!364977 List!56331)) )
))
(declare-fun rulesArg!165 () List!56331)

(declare-fun inv!72311 (String!63531) Bool)

(declare-fun inv!72315 (TokenValueInjection!16144) Bool)

(assert (=> b!4884340 (= e!3052943 (and tp!1374480 (inv!72311 (tag!8972 (h!62655 rulesArg!165))) (inv!72315 (transformation!8108 (h!62655 rulesArg!165))) e!3052954))))

(declare-fun b!4884341 () Bool)

(declare-fun res!2085337 () Bool)

(declare-fun e!3052946 () Bool)

(assert (=> b!4884341 (=> (not res!2085337) (not e!3052946))))

(declare-datatypes ((LexerInterface!7700 0))(
  ( (LexerInterfaceExt!7697 (__x!34130 Int)) (Lexer!7698) )
))
(declare-fun thiss!14805 () LexerInterface!7700)

(declare-fun rulesValidInductive!3087 (LexerInterface!7700 List!56331) Bool)

(assert (=> b!4884341 (= res!2085337 (rulesValidInductive!3087 thiss!14805 rulesArg!165))))

(declare-fun b!4884342 () Bool)

(declare-fun res!2085332 () Bool)

(assert (=> b!4884342 (=> (not res!2085332) (not e!3052946))))

(declare-fun isEmpty!30115 (List!56331) Bool)

(assert (=> b!4884342 (= res!2085332 (not (isEmpty!30115 rulesArg!165)))))

(declare-fun res!2085329 () Bool)

(assert (=> start!511108 (=> (not res!2085329) (not e!3052946))))

(get-info :version)

(assert (=> start!511108 (= res!2085329 ((_ is Lexer!7698) thiss!14805))))

(assert (=> start!511108 e!3052946))

(assert (=> start!511108 true))

(declare-fun e!3052945 () Bool)

(assert (=> start!511108 e!3052945))

(declare-fun input!1236 () BalanceConc!28782)

(declare-fun e!3052950 () Bool)

(declare-fun inv!72316 (BalanceConc!28782) Bool)

(assert (=> start!511108 (and (inv!72316 input!1236) e!3052950)))

(declare-fun b!4884343 () Bool)

(declare-fun e!3052951 () Bool)

(assert (=> b!4884343 (= e!3052951 e!3052944)))

(declare-fun res!2085336 () Bool)

(assert (=> b!4884343 (=> res!2085336 e!3052944)))

(declare-datatypes ((Token!14784 0))(
  ( (Token!14785 (value!260230 TokenValue!8418) (rule!11272 Rule!16016) (size!37030 Int) (originalCharacters!8423 List!56329)) )
))
(declare-datatypes ((tuple2!60132 0))(
  ( (tuple2!60133 (_1!33369 Token!14784) (_2!33369 List!56329)) )
))
(declare-datatypes ((Option!13899 0))(
  ( (None!13898) (Some!13898 (v!49848 tuple2!60132)) )
))
(declare-fun lt!2001057 () Option!13899)

(declare-fun isDefined!10926 (Option!13899) Bool)

(assert (=> b!4884343 (= res!2085336 (not (= lt!2001049 (isDefined!10926 lt!2001057))))))

(declare-datatypes ((tuple2!60134 0))(
  ( (tuple2!60135 (_1!33370 Token!14784) (_2!33370 BalanceConc!28782)) )
))
(declare-datatypes ((Option!13900 0))(
  ( (None!13899) (Some!13899 (v!49849 tuple2!60134)) )
))
(declare-fun lt!2001052 () Option!13900)

(declare-fun isDefined!10927 (Option!13900) Bool)

(assert (=> b!4884343 (= lt!2001049 (isDefined!10927 lt!2001052))))

(declare-fun lt!2001050 () List!56329)

(declare-fun maxPrefixZipper!611 (LexerInterface!7700 List!56331 List!56329) Option!13899)

(assert (=> b!4884343 (= lt!2001057 (maxPrefixZipper!611 thiss!14805 rulesArg!165 lt!2001050))))

(declare-fun b!4884344 () Bool)

(declare-fun tp!1374482 () Bool)

(declare-fun inv!72317 (Conc!14676) Bool)

(assert (=> b!4884344 (= e!3052950 (and (inv!72317 (c!830536 input!1236)) tp!1374482))))

(assert (=> b!4884345 (= e!3052954 (and tp!1374483 tp!1374479))))

(declare-fun b!4884346 () Bool)

(declare-fun e!3052952 () Bool)

(assert (=> b!4884346 (= e!3052946 (not e!3052952))))

(declare-fun res!2085330 () Bool)

(assert (=> b!4884346 (=> res!2085330 e!3052952)))

(assert (=> b!4884346 (= res!2085330 (or (and ((_ is Cons!56207) rulesArg!165) ((_ is Nil!56207) (t!364977 rulesArg!165))) (not ((_ is Cons!56207) rulesArg!165))))))

(declare-fun isPrefix!4830 (List!56329 List!56329) Bool)

(assert (=> b!4884346 (isPrefix!4830 lt!2001050 lt!2001050)))

(declare-datatypes ((Unit!146196 0))(
  ( (Unit!146197) )
))
(declare-fun lt!2001053 () Unit!146196)

(declare-fun lemmaIsPrefixRefl!3227 (List!56329 List!56329) Unit!146196)

(assert (=> b!4884346 (= lt!2001053 (lemmaIsPrefixRefl!3227 lt!2001050 lt!2001050))))

(declare-fun list!17635 (BalanceConc!28782) List!56329)

(assert (=> b!4884346 (= lt!2001050 (list!17635 input!1236))))

(declare-fun b!4884347 () Bool)

(declare-fun res!2085333 () Bool)

(assert (=> b!4884347 (=> res!2085333 e!3052947)))

(assert (=> b!4884347 (= res!2085333 lt!2001054)))

(declare-fun b!4884348 () Bool)

(assert (=> b!4884348 (= e!3052952 e!3052951)))

(declare-fun res!2085334 () Bool)

(assert (=> b!4884348 (=> res!2085334 e!3052951)))

(declare-fun lt!2001058 () Option!13900)

(assert (=> b!4884348 (= res!2085334 (or (and ((_ is None!13899) lt!2001052) ((_ is None!13899) lt!2001058)) (not ((_ is None!13899) lt!2001058))))))

(declare-fun maxPrefixZipperSequence!1269 (LexerInterface!7700 List!56331 BalanceConc!28782) Option!13900)

(assert (=> b!4884348 (= lt!2001058 (maxPrefixZipperSequence!1269 thiss!14805 (t!364977 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!634 (LexerInterface!7700 Rule!16016 BalanceConc!28782) Option!13900)

(assert (=> b!4884348 (= lt!2001052 (maxPrefixOneRuleZipperSequence!634 thiss!14805 (h!62655 rulesArg!165) input!1236))))

(declare-fun b!4884349 () Bool)

(declare-fun e!3052948 () Bool)

(assert (=> b!4884349 (= e!3052953 e!3052948)))

(declare-fun res!2085328 () Bool)

(assert (=> b!4884349 (=> res!2085328 e!3052948)))

(declare-fun lt!2001055 () tuple2!60134)

(declare-fun lt!2001051 () tuple2!60132)

(assert (=> b!4884349 (= res!2085328 (not (= (_1!33370 lt!2001055) (_1!33369 lt!2001051))))))

(declare-fun get!19349 (Option!13899) tuple2!60132)

(assert (=> b!4884349 (= lt!2001051 (get!19349 lt!2001057))))

(declare-fun get!19350 (Option!13900) tuple2!60134)

(assert (=> b!4884349 (= lt!2001055 (get!19350 lt!2001052))))

(declare-fun b!4884350 () Bool)

(assert (=> b!4884350 (= e!3052947 true)))

(declare-fun lt!2001056 () Option!13899)

(declare-fun maxPrefix!4573 (LexerInterface!7700 List!56331 List!56329) Option!13899)

(assert (=> b!4884350 (= lt!2001056 (maxPrefix!4573 thiss!14805 rulesArg!165 lt!2001050))))

(declare-fun b!4884351 () Bool)

(assert (=> b!4884351 (= e!3052948 (not (= (list!17635 (_2!33370 lt!2001055)) (_2!33369 lt!2001051))))))

(declare-fun b!4884352 () Bool)

(declare-fun tp!1374481 () Bool)

(assert (=> b!4884352 (= e!3052945 (and e!3052943 tp!1374481))))

(assert (= (and start!511108 res!2085329) b!4884341))

(assert (= (and b!4884341 res!2085337) b!4884342))

(assert (= (and b!4884342 res!2085332) b!4884346))

(assert (= (and b!4884346 (not res!2085330)) b!4884348))

(assert (= (and b!4884348 (not res!2085334)) b!4884343))

(assert (= (and b!4884343 (not res!2085336)) b!4884339))

(assert (= (and b!4884339 res!2085331) b!4884349))

(assert (= (and b!4884349 (not res!2085328)) b!4884351))

(assert (= (and b!4884339 (not res!2085335)) b!4884347))

(assert (= (and b!4884347 (not res!2085333)) b!4884350))

(assert (= b!4884340 b!4884345))

(assert (= b!4884352 b!4884340))

(assert (= (and start!511108 ((_ is Cons!56207) rulesArg!165)) b!4884352))

(assert (= start!511108 b!4884344))

(declare-fun m!5888256 () Bool)

(assert (=> b!4884344 m!5888256))

(declare-fun m!5888258 () Bool)

(assert (=> b!4884348 m!5888258))

(declare-fun m!5888260 () Bool)

(assert (=> b!4884348 m!5888260))

(declare-fun m!5888262 () Bool)

(assert (=> b!4884346 m!5888262))

(declare-fun m!5888264 () Bool)

(assert (=> b!4884346 m!5888264))

(declare-fun m!5888266 () Bool)

(assert (=> b!4884346 m!5888266))

(declare-fun m!5888268 () Bool)

(assert (=> b!4884343 m!5888268))

(declare-fun m!5888270 () Bool)

(assert (=> b!4884343 m!5888270))

(declare-fun m!5888272 () Bool)

(assert (=> b!4884343 m!5888272))

(declare-fun m!5888274 () Bool)

(assert (=> b!4884349 m!5888274))

(declare-fun m!5888276 () Bool)

(assert (=> b!4884349 m!5888276))

(declare-fun m!5888278 () Bool)

(assert (=> b!4884351 m!5888278))

(declare-fun m!5888280 () Bool)

(assert (=> b!4884340 m!5888280))

(declare-fun m!5888282 () Bool)

(assert (=> b!4884340 m!5888282))

(declare-fun m!5888284 () Bool)

(assert (=> b!4884350 m!5888284))

(declare-fun m!5888286 () Bool)

(assert (=> start!511108 m!5888286))

(declare-fun m!5888288 () Bool)

(assert (=> b!4884342 m!5888288))

(declare-fun m!5888290 () Bool)

(assert (=> b!4884341 m!5888290))

(check-sat b_and!343965 (not b_next!131921) (not b!4884340) (not b!4884348) (not b!4884341) (not b!4884352) (not b!4884350) (not b!4884344) (not start!511108) (not b!4884342) b_and!343963 (not b_next!131923) (not b!4884351) (not b!4884349) (not b!4884346) (not b!4884343))
(check-sat b_and!343965 b_and!343963 (not b_next!131921) (not b_next!131923))
