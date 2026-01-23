; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345642 () Bool)

(assert start!345642)

(declare-fun b!3682567 () Bool)

(declare-fun b_free!97589 () Bool)

(declare-fun b_next!98293 () Bool)

(assert (=> b!3682567 (= b_free!97589 (not b_next!98293))))

(declare-fun tp!1119261 () Bool)

(declare-fun b_and!275239 () Bool)

(assert (=> b!3682567 (= tp!1119261 b_and!275239)))

(declare-fun b_free!97591 () Bool)

(declare-fun b_next!98295 () Bool)

(assert (=> b!3682567 (= b_free!97591 (not b_next!98295))))

(declare-fun tp!1119262 () Bool)

(declare-fun b_and!275241 () Bool)

(assert (=> b!3682567 (= tp!1119262 b_and!275241)))

(declare-fun b!3682565 () Bool)

(declare-fun res!1496245 () Bool)

(declare-fun e!2280339 () Bool)

(assert (=> b!3682565 (=> (not res!1496245) (not e!2280339))))

(declare-datatypes ((List!38976 0))(
  ( (Nil!38852) (Cons!38852 (h!44272 (_ BitVec 16)) (t!300871 List!38976)) )
))
(declare-datatypes ((TokenValue!6084 0))(
  ( (FloatLiteralValue!12168 (text!43033 List!38976)) (TokenValueExt!6083 (__x!24385 Int)) (Broken!30420 (value!187273 List!38976)) (Object!6207) (End!6084) (Def!6084) (Underscore!6084) (Match!6084) (Else!6084) (Error!6084) (Case!6084) (If!6084) (Extends!6084) (Abstract!6084) (Class!6084) (Val!6084) (DelimiterValue!12168 (del!6144 List!38976)) (KeywordValue!6090 (value!187274 List!38976)) (CommentValue!12168 (value!187275 List!38976)) (WhitespaceValue!12168 (value!187276 List!38976)) (IndentationValue!6084 (value!187277 List!38976)) (String!43753) (Int32!6084) (Broken!30421 (value!187278 List!38976)) (Boolean!6085) (Unit!56955) (OperatorValue!6087 (op!6144 List!38976)) (IdentifierValue!12168 (value!187279 List!38976)) (IdentifierValue!12169 (value!187280 List!38976)) (WhitespaceValue!12169 (value!187281 List!38976)) (True!12168) (False!12168) (Broken!30422 (value!187282 List!38976)) (Broken!30423 (value!187283 List!38976)) (True!12169) (RightBrace!6084) (RightBracket!6084) (Colon!6084) (Null!6084) (Comma!6084) (LeftBracket!6084) (False!12169) (LeftBrace!6084) (ImaginaryLiteralValue!6084 (text!43034 List!38976)) (StringLiteralValue!18252 (value!187284 List!38976)) (EOFValue!6084 (value!187285 List!38976)) (IdentValue!6084 (value!187286 List!38976)) (DelimiterValue!12169 (value!187287 List!38976)) (DedentValue!6084 (value!187288 List!38976)) (NewLineValue!6084 (value!187289 List!38976)) (IntegerValue!18252 (value!187290 (_ BitVec 32)) (text!43035 List!38976)) (IntegerValue!18253 (value!187291 Int) (text!43036 List!38976)) (Times!6084) (Or!6084) (Equal!6084) (Minus!6084) (Broken!30424 (value!187292 List!38976)) (And!6084) (Div!6084) (LessEqual!6084) (Mod!6084) (Concat!16697) (Not!6084) (Plus!6084) (SpaceValue!6084 (value!187293 List!38976)) (IntegerValue!18254 (value!187294 Int) (text!43037 List!38976)) (StringLiteralValue!18253 (text!43038 List!38976)) (FloatLiteralValue!12169 (text!43039 List!38976)) (BytesLiteralValue!6084 (value!187295 List!38976)) (CommentValue!12169 (value!187296 List!38976)) (StringLiteralValue!18254 (value!187297 List!38976)) (ErrorTokenValue!6084 (msg!6145 List!38976)) )
))
(declare-datatypes ((C!21412 0))(
  ( (C!21413 (val!12754 Int)) )
))
(declare-datatypes ((List!38977 0))(
  ( (Nil!38853) (Cons!38853 (h!44273 C!21412) (t!300872 List!38977)) )
))
(declare-datatypes ((IArray!23801 0))(
  ( (IArray!23802 (innerList!11958 List!38977)) )
))
(declare-datatypes ((Regex!10613 0))(
  ( (ElementMatch!10613 (c!637043 C!21412)) (Concat!16698 (regOne!21738 Regex!10613) (regTwo!21738 Regex!10613)) (EmptyExpr!10613) (Star!10613 (reg!10942 Regex!10613)) (EmptyLang!10613) (Union!10613 (regOne!21739 Regex!10613) (regTwo!21739 Regex!10613)) )
))
(declare-datatypes ((Conc!11898 0))(
  ( (Node!11898 (left!30315 Conc!11898) (right!30645 Conc!11898) (csize!24026 Int) (cheight!12109 Int)) (Leaf!18436 (xs!15100 IArray!23801) (csize!24027 Int)) (Empty!11898) )
))
(declare-datatypes ((BalanceConc!23410 0))(
  ( (BalanceConc!23411 (c!637044 Conc!11898)) )
))
(declare-datatypes ((String!43754 0))(
  ( (String!43755 (value!187298 String)) )
))
(declare-datatypes ((TokenValueInjection!11596 0))(
  ( (TokenValueInjection!11597 (toValue!8150 Int) (toChars!8009 Int)) )
))
(declare-datatypes ((Rule!11508 0))(
  ( (Rule!11509 (regex!5854 Regex!10613) (tag!6660 String!43754) (isSeparator!5854 Bool) (transformation!5854 TokenValueInjection!11596)) )
))
(declare-datatypes ((List!38978 0))(
  ( (Nil!38854) (Cons!38854 (h!44274 Rule!11508) (t!300873 List!38978)) )
))
(declare-fun rules!3568 () List!38978)

(declare-fun isEmpty!23078 (List!38978) Bool)

(assert (=> b!3682565 (= res!1496245 (not (isEmpty!23078 rules!3568)))))

(declare-fun b!3682566 () Bool)

(declare-fun e!2280340 () Bool)

(declare-fun e!2280336 () Bool)

(declare-fun tp!1119259 () Bool)

(assert (=> b!3682566 (= e!2280340 (and e!2280336 tp!1119259))))

(declare-fun e!2280335 () Bool)

(assert (=> b!3682567 (= e!2280335 (and tp!1119261 tp!1119262))))

(declare-fun res!1496243 () Bool)

(assert (=> start!345642 (=> (not res!1496243) (not e!2280339))))

(declare-datatypes ((LexerInterface!5443 0))(
  ( (LexerInterfaceExt!5440 (__x!24386 Int)) (Lexer!5441) )
))
(declare-fun thiss!25197 () LexerInterface!5443)

(get-info :version)

(assert (=> start!345642 (= res!1496243 ((_ is Lexer!5441) thiss!25197))))

(assert (=> start!345642 e!2280339))

(assert (=> start!345642 true))

(assert (=> start!345642 e!2280340))

(declare-fun e!2280338 () Bool)

(assert (=> start!345642 e!2280338))

(declare-fun b!3682568 () Bool)

(declare-fun res!1496246 () Bool)

(assert (=> b!3682568 (=> (not res!1496246) (not e!2280339))))

(declare-fun rulesInvariant!4840 (LexerInterface!5443 List!38978) Bool)

(assert (=> b!3682568 (= res!1496246 (rulesInvariant!4840 thiss!25197 rules!3568))))

(declare-fun b!3682569 () Bool)

(declare-fun e!2280334 () Bool)

(assert (=> b!3682569 (= e!2280339 e!2280334)))

(declare-fun res!1496244 () Bool)

(assert (=> b!3682569 (=> (not res!1496244) (not e!2280334))))

(declare-datatypes ((Token!11074 0))(
  ( (Token!11075 (value!187299 TokenValue!6084) (rule!8694 Rule!11508) (size!29703 Int) (originalCharacters!6568 List!38977)) )
))
(declare-datatypes ((List!38979 0))(
  ( (Nil!38855) (Cons!38855 (h!44275 Token!11074) (t!300874 List!38979)) )
))
(declare-datatypes ((IArray!23803 0))(
  ( (IArray!23804 (innerList!11959 List!38979)) )
))
(declare-datatypes ((Conc!11899 0))(
  ( (Node!11899 (left!30316 Conc!11899) (right!30646 Conc!11899) (csize!24028 Int) (cheight!12110 Int)) (Leaf!18437 (xs!15101 IArray!23803) (csize!24029 Int)) (Empty!11899) )
))
(declare-datatypes ((BalanceConc!23412 0))(
  ( (BalanceConc!23413 (c!637045 Conc!11899)) )
))
(declare-datatypes ((tuple2!38716 0))(
  ( (tuple2!38717 (_1!22492 BalanceConc!23412) (_2!22492 BalanceConc!23410)) )
))
(declare-fun lt!1288022 () tuple2!38716)

(declare-fun isEmpty!23079 (BalanceConc!23412) Bool)

(assert (=> b!3682569 (= res!1496244 (not (isEmpty!23079 (_1!22492 lt!1288022))))))

(declare-fun input!3129 () List!38977)

(declare-fun lex!2584 (LexerInterface!5443 List!38978 BalanceConc!23410) tuple2!38716)

(declare-fun seqFromList!4403 (List!38977) BalanceConc!23410)

(assert (=> b!3682569 (= lt!1288022 (lex!2584 thiss!25197 rules!3568 (seqFromList!4403 input!3129)))))

(declare-fun b!3682570 () Bool)

(declare-fun list!14442 (BalanceConc!23412) List!38979)

(assert (=> b!3682570 (= e!2280334 (= (list!14442 (_1!22492 lt!1288022)) Nil!38855))))

(declare-fun b!3682571 () Bool)

(declare-fun tp_is_empty!18309 () Bool)

(declare-fun tp!1119260 () Bool)

(assert (=> b!3682571 (= e!2280338 (and tp_is_empty!18309 tp!1119260))))

(declare-fun tp!1119258 () Bool)

(declare-fun b!3682572 () Bool)

(declare-fun inv!52346 (String!43754) Bool)

(declare-fun inv!52348 (TokenValueInjection!11596) Bool)

(assert (=> b!3682572 (= e!2280336 (and tp!1119258 (inv!52346 (tag!6660 (h!44274 rules!3568))) (inv!52348 (transformation!5854 (h!44274 rules!3568))) e!2280335))))

(assert (= (and start!345642 res!1496243) b!3682565))

(assert (= (and b!3682565 res!1496245) b!3682568))

(assert (= (and b!3682568 res!1496246) b!3682569))

(assert (= (and b!3682569 res!1496244) b!3682570))

(assert (= b!3682572 b!3682567))

(assert (= b!3682566 b!3682572))

(assert (= (and start!345642 ((_ is Cons!38854) rules!3568)) b!3682566))

(assert (= (and start!345642 ((_ is Cons!38853) input!3129)) b!3682571))

(declare-fun m!4193577 () Bool)

(assert (=> b!3682568 m!4193577))

(declare-fun m!4193579 () Bool)

(assert (=> b!3682569 m!4193579))

(declare-fun m!4193581 () Bool)

(assert (=> b!3682569 m!4193581))

(assert (=> b!3682569 m!4193581))

(declare-fun m!4193583 () Bool)

(assert (=> b!3682569 m!4193583))

(declare-fun m!4193585 () Bool)

(assert (=> b!3682565 m!4193585))

(declare-fun m!4193587 () Bool)

(assert (=> b!3682570 m!4193587))

(declare-fun m!4193589 () Bool)

(assert (=> b!3682572 m!4193589))

(declare-fun m!4193591 () Bool)

(assert (=> b!3682572 m!4193591))

(check-sat (not b!3682565) b_and!275241 (not b!3682571) b_and!275239 (not b!3682568) (not b!3682570) (not b_next!98295) (not b_next!98293) (not b!3682569) tp_is_empty!18309 (not b!3682572) (not b!3682566))
(check-sat b_and!275239 b_and!275241 (not b_next!98295) (not b_next!98293))
(get-model)

(declare-fun d!1080964 () Bool)

(declare-fun res!1496249 () Bool)

(declare-fun e!2280343 () Bool)

(assert (=> d!1080964 (=> (not res!1496249) (not e!2280343))))

(declare-fun rulesValid!2255 (LexerInterface!5443 List!38978) Bool)

(assert (=> d!1080964 (= res!1496249 (rulesValid!2255 thiss!25197 rules!3568))))

(assert (=> d!1080964 (= (rulesInvariant!4840 thiss!25197 rules!3568) e!2280343)))

(declare-fun b!3682575 () Bool)

(declare-datatypes ((List!38980 0))(
  ( (Nil!38856) (Cons!38856 (h!44276 String!43754) (t!300875 List!38980)) )
))
(declare-fun noDuplicateTag!2251 (LexerInterface!5443 List!38978 List!38980) Bool)

(assert (=> b!3682575 (= e!2280343 (noDuplicateTag!2251 thiss!25197 rules!3568 Nil!38856))))

(assert (= (and d!1080964 res!1496249) b!3682575))

(declare-fun m!4193595 () Bool)

(assert (=> d!1080964 m!4193595))

(declare-fun m!4193597 () Bool)

(assert (=> b!3682575 m!4193597))

(assert (=> b!3682568 d!1080964))

(declare-fun d!1080970 () Bool)

(assert (=> d!1080970 (= (inv!52346 (tag!6660 (h!44274 rules!3568))) (= (mod (str.len (value!187298 (tag!6660 (h!44274 rules!3568)))) 2) 0))))

(assert (=> b!3682572 d!1080970))

(declare-fun d!1080972 () Bool)

(declare-fun res!1496252 () Bool)

(declare-fun e!2280346 () Bool)

(assert (=> d!1080972 (=> (not res!1496252) (not e!2280346))))

(declare-fun semiInverseModEq!2498 (Int Int) Bool)

(assert (=> d!1080972 (= res!1496252 (semiInverseModEq!2498 (toChars!8009 (transformation!5854 (h!44274 rules!3568))) (toValue!8150 (transformation!5854 (h!44274 rules!3568)))))))

(assert (=> d!1080972 (= (inv!52348 (transformation!5854 (h!44274 rules!3568))) e!2280346)))

(declare-fun b!3682578 () Bool)

(declare-fun equivClasses!2397 (Int Int) Bool)

(assert (=> b!3682578 (= e!2280346 (equivClasses!2397 (toChars!8009 (transformation!5854 (h!44274 rules!3568))) (toValue!8150 (transformation!5854 (h!44274 rules!3568)))))))

(assert (= (and d!1080972 res!1496252) b!3682578))

(declare-fun m!4193603 () Bool)

(assert (=> d!1080972 m!4193603))

(declare-fun m!4193605 () Bool)

(assert (=> b!3682578 m!4193605))

(assert (=> b!3682572 d!1080972))

(declare-fun d!1080976 () Bool)

(assert (=> d!1080976 (= (isEmpty!23078 rules!3568) ((_ is Nil!38854) rules!3568))))

(assert (=> b!3682565 d!1080976))

(declare-fun d!1080978 () Bool)

(declare-fun list!14443 (Conc!11899) List!38979)

(assert (=> d!1080978 (= (list!14442 (_1!22492 lt!1288022)) (list!14443 (c!637045 (_1!22492 lt!1288022))))))

(declare-fun bs!573672 () Bool)

(assert (= bs!573672 d!1080978))

(declare-fun m!4193607 () Bool)

(assert (=> bs!573672 m!4193607))

(assert (=> b!3682570 d!1080978))

(declare-fun d!1080980 () Bool)

(declare-fun lt!1288028 () Bool)

(declare-fun isEmpty!23080 (List!38979) Bool)

(assert (=> d!1080980 (= lt!1288028 (isEmpty!23080 (list!14442 (_1!22492 lt!1288022))))))

(declare-fun isEmpty!23081 (Conc!11899) Bool)

(assert (=> d!1080980 (= lt!1288028 (isEmpty!23081 (c!637045 (_1!22492 lt!1288022))))))

(assert (=> d!1080980 (= (isEmpty!23079 (_1!22492 lt!1288022)) lt!1288028)))

(declare-fun bs!573673 () Bool)

(assert (= bs!573673 d!1080980))

(assert (=> bs!573673 m!4193587))

(assert (=> bs!573673 m!4193587))

(declare-fun m!4193609 () Bool)

(assert (=> bs!573673 m!4193609))

(declare-fun m!4193611 () Bool)

(assert (=> bs!573673 m!4193611))

(assert (=> b!3682569 d!1080980))

(declare-fun b!3682589 () Bool)

(declare-fun e!2280354 () Bool)

(declare-fun e!2280355 () Bool)

(assert (=> b!3682589 (= e!2280354 e!2280355)))

(declare-fun res!1496259 () Bool)

(declare-fun lt!1288031 () tuple2!38716)

(declare-fun size!29704 (BalanceConc!23410) Int)

(assert (=> b!3682589 (= res!1496259 (< (size!29704 (_2!22492 lt!1288031)) (size!29704 (seqFromList!4403 input!3129))))))

(assert (=> b!3682589 (=> (not res!1496259) (not e!2280355))))

(declare-fun b!3682590 () Bool)

(assert (=> b!3682590 (= e!2280354 (= (_2!22492 lt!1288031) (seqFromList!4403 input!3129)))))

(declare-fun b!3682591 () Bool)

(assert (=> b!3682591 (= e!2280355 (not (isEmpty!23079 (_1!22492 lt!1288031))))))

(declare-fun d!1080982 () Bool)

(declare-fun e!2280353 () Bool)

(assert (=> d!1080982 e!2280353))

(declare-fun res!1496260 () Bool)

(assert (=> d!1080982 (=> (not res!1496260) (not e!2280353))))

(assert (=> d!1080982 (= res!1496260 e!2280354)))

(declare-fun c!637048 () Bool)

(declare-fun size!29705 (BalanceConc!23412) Int)

(assert (=> d!1080982 (= c!637048 (> (size!29705 (_1!22492 lt!1288031)) 0))))

(declare-fun lexTailRecV2!1123 (LexerInterface!5443 List!38978 BalanceConc!23410 BalanceConc!23410 BalanceConc!23410 BalanceConc!23412) tuple2!38716)

(assert (=> d!1080982 (= lt!1288031 (lexTailRecV2!1123 thiss!25197 rules!3568 (seqFromList!4403 input!3129) (BalanceConc!23411 Empty!11898) (seqFromList!4403 input!3129) (BalanceConc!23413 Empty!11899)))))

(assert (=> d!1080982 (= (lex!2584 thiss!25197 rules!3568 (seqFromList!4403 input!3129)) lt!1288031)))

(declare-fun b!3682592 () Bool)

(declare-fun list!14444 (BalanceConc!23410) List!38977)

(declare-datatypes ((tuple2!38718 0))(
  ( (tuple2!38719 (_1!22493 List!38979) (_2!22493 List!38977)) )
))
(declare-fun lexList!1517 (LexerInterface!5443 List!38978 List!38977) tuple2!38718)

(assert (=> b!3682592 (= e!2280353 (= (list!14444 (_2!22492 lt!1288031)) (_2!22493 (lexList!1517 thiss!25197 rules!3568 (list!14444 (seqFromList!4403 input!3129))))))))

(declare-fun b!3682593 () Bool)

(declare-fun res!1496261 () Bool)

(assert (=> b!3682593 (=> (not res!1496261) (not e!2280353))))

(assert (=> b!3682593 (= res!1496261 (= (list!14442 (_1!22492 lt!1288031)) (_1!22493 (lexList!1517 thiss!25197 rules!3568 (list!14444 (seqFromList!4403 input!3129))))))))

(assert (= (and d!1080982 c!637048) b!3682589))

(assert (= (and d!1080982 (not c!637048)) b!3682590))

(assert (= (and b!3682589 res!1496259) b!3682591))

(assert (= (and d!1080982 res!1496260) b!3682593))

(assert (= (and b!3682593 res!1496261) b!3682592))

(declare-fun m!4193613 () Bool)

(assert (=> b!3682591 m!4193613))

(declare-fun m!4193615 () Bool)

(assert (=> d!1080982 m!4193615))

(assert (=> d!1080982 m!4193581))

(assert (=> d!1080982 m!4193581))

(declare-fun m!4193617 () Bool)

(assert (=> d!1080982 m!4193617))

(declare-fun m!4193619 () Bool)

(assert (=> b!3682589 m!4193619))

(assert (=> b!3682589 m!4193581))

(declare-fun m!4193621 () Bool)

(assert (=> b!3682589 m!4193621))

(declare-fun m!4193623 () Bool)

(assert (=> b!3682593 m!4193623))

(assert (=> b!3682593 m!4193581))

(declare-fun m!4193625 () Bool)

(assert (=> b!3682593 m!4193625))

(assert (=> b!3682593 m!4193625))

(declare-fun m!4193627 () Bool)

(assert (=> b!3682593 m!4193627))

(declare-fun m!4193629 () Bool)

(assert (=> b!3682592 m!4193629))

(assert (=> b!3682592 m!4193581))

(assert (=> b!3682592 m!4193625))

(assert (=> b!3682592 m!4193625))

(assert (=> b!3682592 m!4193627))

(assert (=> b!3682569 d!1080982))

(declare-fun d!1080984 () Bool)

(declare-fun fromListB!2034 (List!38977) BalanceConc!23410)

(assert (=> d!1080984 (= (seqFromList!4403 input!3129) (fromListB!2034 input!3129))))

(declare-fun bs!573674 () Bool)

(assert (= bs!573674 d!1080984))

(declare-fun m!4193631 () Bool)

(assert (=> bs!573674 m!4193631))

(assert (=> b!3682569 d!1080984))

(declare-fun b!3682607 () Bool)

(declare-fun e!2280358 () Bool)

(declare-fun tp!1119276 () Bool)

(declare-fun tp!1119277 () Bool)

(assert (=> b!3682607 (= e!2280358 (and tp!1119276 tp!1119277))))

(declare-fun b!3682605 () Bool)

(declare-fun tp!1119273 () Bool)

(declare-fun tp!1119274 () Bool)

(assert (=> b!3682605 (= e!2280358 (and tp!1119273 tp!1119274))))

(declare-fun b!3682606 () Bool)

(declare-fun tp!1119275 () Bool)

(assert (=> b!3682606 (= e!2280358 tp!1119275)))

(declare-fun b!3682604 () Bool)

(assert (=> b!3682604 (= e!2280358 tp_is_empty!18309)))

(assert (=> b!3682572 (= tp!1119258 e!2280358)))

(assert (= (and b!3682572 ((_ is ElementMatch!10613) (regex!5854 (h!44274 rules!3568)))) b!3682604))

(assert (= (and b!3682572 ((_ is Concat!16698) (regex!5854 (h!44274 rules!3568)))) b!3682605))

(assert (= (and b!3682572 ((_ is Star!10613) (regex!5854 (h!44274 rules!3568)))) b!3682606))

(assert (= (and b!3682572 ((_ is Union!10613) (regex!5854 (h!44274 rules!3568)))) b!3682607))

(declare-fun b!3682618 () Bool)

(declare-fun b_free!97593 () Bool)

(declare-fun b_next!98297 () Bool)

(assert (=> b!3682618 (= b_free!97593 (not b_next!98297))))

(declare-fun tp!1119287 () Bool)

(declare-fun b_and!275243 () Bool)

(assert (=> b!3682618 (= tp!1119287 b_and!275243)))

(declare-fun b_free!97595 () Bool)

(declare-fun b_next!98299 () Bool)

(assert (=> b!3682618 (= b_free!97595 (not b_next!98299))))

(declare-fun tp!1119286 () Bool)

(declare-fun b_and!275245 () Bool)

(assert (=> b!3682618 (= tp!1119286 b_and!275245)))

(declare-fun e!2280369 () Bool)

(assert (=> b!3682618 (= e!2280369 (and tp!1119287 tp!1119286))))

(declare-fun tp!1119289 () Bool)

(declare-fun e!2280368 () Bool)

(declare-fun b!3682617 () Bool)

(assert (=> b!3682617 (= e!2280368 (and tp!1119289 (inv!52346 (tag!6660 (h!44274 (t!300873 rules!3568)))) (inv!52348 (transformation!5854 (h!44274 (t!300873 rules!3568)))) e!2280369))))

(declare-fun b!3682616 () Bool)

(declare-fun e!2280370 () Bool)

(declare-fun tp!1119288 () Bool)

(assert (=> b!3682616 (= e!2280370 (and e!2280368 tp!1119288))))

(assert (=> b!3682566 (= tp!1119259 e!2280370)))

(assert (= b!3682617 b!3682618))

(assert (= b!3682616 b!3682617))

(assert (= (and b!3682566 ((_ is Cons!38854) (t!300873 rules!3568))) b!3682616))

(declare-fun m!4193633 () Bool)

(assert (=> b!3682617 m!4193633))

(declare-fun m!4193635 () Bool)

(assert (=> b!3682617 m!4193635))

(declare-fun b!3682623 () Bool)

(declare-fun e!2280373 () Bool)

(declare-fun tp!1119292 () Bool)

(assert (=> b!3682623 (= e!2280373 (and tp_is_empty!18309 tp!1119292))))

(assert (=> b!3682571 (= tp!1119260 e!2280373)))

(assert (= (and b!3682571 ((_ is Cons!38853) (t!300872 input!3129))) b!3682623))

(check-sat (not b!3682617) (not d!1080980) b_and!275239 (not b!3682589) (not b_next!98295) (not b!3682616) (not b!3682591) b_and!275245 (not d!1080984) (not d!1080964) (not b!3682605) (not d!1080982) (not b!3682606) (not b_next!98299) b_and!275241 (not b!3682623) (not b_next!98297) (not b_next!98293) (not b!3682575) (not b!3682593) tp_is_empty!18309 (not d!1080978) (not b!3682578) (not d!1080972) (not b!3682607) (not b!3682592) b_and!275243)
(check-sat (not b_next!98297) b_and!275239 (not b_next!98295) (not b_next!98293) b_and!275245 b_and!275243 (not b_next!98299) b_and!275241)
(get-model)

(declare-fun d!1080996 () Bool)

(declare-fun lt!1288037 () Int)

(declare-fun size!29708 (List!38979) Int)

(assert (=> d!1080996 (= lt!1288037 (size!29708 (list!14442 (_1!22492 lt!1288031))))))

(declare-fun size!29709 (Conc!11899) Int)

(assert (=> d!1080996 (= lt!1288037 (size!29709 (c!637045 (_1!22492 lt!1288031))))))

(assert (=> d!1080996 (= (size!29705 (_1!22492 lt!1288031)) lt!1288037)))

(declare-fun bs!573676 () Bool)

(assert (= bs!573676 d!1080996))

(assert (=> bs!573676 m!4193623))

(assert (=> bs!573676 m!4193623))

(declare-fun m!4193669 () Bool)

(assert (=> bs!573676 m!4193669))

(declare-fun m!4193671 () Bool)

(assert (=> bs!573676 m!4193671))

(assert (=> d!1080982 d!1080996))

(declare-fun b!3682689 () Bool)

(declare-fun lt!1288132 () tuple2!38716)

(declare-datatypes ((tuple2!38722 0))(
  ( (tuple2!38723 (_1!22495 Token!11074) (_2!22495 BalanceConc!23410)) )
))
(declare-datatypes ((Option!8330 0))(
  ( (None!8329) (Some!8329 (v!38273 tuple2!38722)) )
))
(declare-fun lt!1288124 () Option!8330)

(declare-fun lexRec!774 (LexerInterface!5443 List!38978 BalanceConc!23410) tuple2!38716)

(assert (=> b!3682689 (= lt!1288132 (lexRec!774 thiss!25197 rules!3568 (_2!22495 (v!38273 lt!1288124))))))

(declare-fun e!2280416 () tuple2!38716)

(declare-fun prepend!1300 (BalanceConc!23412 Token!11074) BalanceConc!23412)

(assert (=> b!3682689 (= e!2280416 (tuple2!38717 (prepend!1300 (_1!22492 lt!1288132) (_1!22495 (v!38273 lt!1288124))) (_2!22492 lt!1288132)))))

(declare-fun lt!1288119 () tuple2!38716)

(declare-fun b!3682690 () Bool)

(declare-fun lt!1288108 () Option!8330)

(assert (=> b!3682690 (= lt!1288119 (lexRec!774 thiss!25197 rules!3568 (_2!22495 (v!38273 lt!1288108))))))

(declare-fun e!2280415 () tuple2!38716)

(assert (=> b!3682690 (= e!2280415 (tuple2!38717 (prepend!1300 (_1!22492 lt!1288119) (_1!22495 (v!38273 lt!1288108))) (_2!22492 lt!1288119)))))

(declare-fun d!1080998 () Bool)

(declare-fun e!2280417 () Bool)

(assert (=> d!1080998 e!2280417))

(declare-fun res!1496283 () Bool)

(assert (=> d!1080998 (=> (not res!1496283) (not e!2280417))))

(declare-fun lt!1288138 () tuple2!38716)

(assert (=> d!1080998 (= res!1496283 (= (list!14442 (_1!22492 lt!1288138)) (list!14442 (_1!22492 (lexRec!774 thiss!25197 rules!3568 (seqFromList!4403 input!3129))))))))

(declare-fun e!2280418 () tuple2!38716)

(assert (=> d!1080998 (= lt!1288138 e!2280418)))

(declare-fun c!637059 () Bool)

(declare-fun lt!1288128 () Option!8330)

(assert (=> d!1080998 (= c!637059 ((_ is Some!8329) lt!1288128))))

(declare-fun maxPrefixZipperSequenceV2!561 (LexerInterface!5443 List!38978 BalanceConc!23410 BalanceConc!23410) Option!8330)

(assert (=> d!1080998 (= lt!1288128 (maxPrefixZipperSequenceV2!561 thiss!25197 rules!3568 (seqFromList!4403 input!3129) (seqFromList!4403 input!3129)))))

(declare-datatypes ((Unit!56956 0))(
  ( (Unit!56957) )
))
(declare-fun lt!1288113 () Unit!56956)

(declare-fun lt!1288133 () Unit!56956)

(assert (=> d!1080998 (= lt!1288113 lt!1288133)))

(declare-fun lt!1288136 () List!38977)

(declare-fun lt!1288125 () List!38977)

(declare-fun isSuffix!936 (List!38977 List!38977) Bool)

(declare-fun ++!9667 (List!38977 List!38977) List!38977)

(assert (=> d!1080998 (isSuffix!936 lt!1288136 (++!9667 lt!1288125 lt!1288136))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!621 (List!38977 List!38977) Unit!56956)

(assert (=> d!1080998 (= lt!1288133 (lemmaConcatTwoListThenFSndIsSuffix!621 lt!1288125 lt!1288136))))

(assert (=> d!1080998 (= lt!1288136 (list!14444 (seqFromList!4403 input!3129)))))

(assert (=> d!1080998 (= lt!1288125 (list!14444 (BalanceConc!23411 Empty!11898)))))

(assert (=> d!1080998 (= (lexTailRecV2!1123 thiss!25197 rules!3568 (seqFromList!4403 input!3129) (BalanceConc!23411 Empty!11898) (seqFromList!4403 input!3129) (BalanceConc!23413 Empty!11899)) lt!1288138)))

(declare-fun b!3682691 () Bool)

(declare-fun lt!1288127 () BalanceConc!23410)

(declare-fun append!1004 (BalanceConc!23412 Token!11074) BalanceConc!23412)

(assert (=> b!3682691 (= e!2280418 (lexTailRecV2!1123 thiss!25197 rules!3568 (seqFromList!4403 input!3129) lt!1288127 (_2!22495 (v!38273 lt!1288128)) (append!1004 (BalanceConc!23413 Empty!11899) (_1!22495 (v!38273 lt!1288128)))))))

(declare-fun lt!1288109 () tuple2!38716)

(assert (=> b!3682691 (= lt!1288109 (lexRec!774 thiss!25197 rules!3568 (_2!22495 (v!38273 lt!1288128))))))

(declare-fun lt!1288130 () List!38977)

(assert (=> b!3682691 (= lt!1288130 (list!14444 (BalanceConc!23411 Empty!11898)))))

(declare-fun lt!1288120 () List!38977)

(declare-fun charsOf!3865 (Token!11074) BalanceConc!23410)

(assert (=> b!3682691 (= lt!1288120 (list!14444 (charsOf!3865 (_1!22495 (v!38273 lt!1288128)))))))

(declare-fun lt!1288117 () List!38977)

(assert (=> b!3682691 (= lt!1288117 (list!14444 (_2!22495 (v!38273 lt!1288128))))))

(declare-fun lt!1288135 () Unit!56956)

(declare-fun lemmaConcatAssociativity!2069 (List!38977 List!38977 List!38977) Unit!56956)

(assert (=> b!3682691 (= lt!1288135 (lemmaConcatAssociativity!2069 lt!1288130 lt!1288120 lt!1288117))))

(assert (=> b!3682691 (= (++!9667 (++!9667 lt!1288130 lt!1288120) lt!1288117) (++!9667 lt!1288130 (++!9667 lt!1288120 lt!1288117)))))

(declare-fun lt!1288126 () Unit!56956)

(assert (=> b!3682691 (= lt!1288126 lt!1288135)))

(declare-fun maxPrefixZipperSequence!1167 (LexerInterface!5443 List!38978 BalanceConc!23410) Option!8330)

(assert (=> b!3682691 (= lt!1288108 (maxPrefixZipperSequence!1167 thiss!25197 rules!3568 (seqFromList!4403 input!3129)))))

(declare-fun c!637060 () Bool)

(assert (=> b!3682691 (= c!637060 ((_ is Some!8329) lt!1288108))))

(assert (=> b!3682691 (= (lexRec!774 thiss!25197 rules!3568 (seqFromList!4403 input!3129)) e!2280415)))

(declare-fun lt!1288121 () Unit!56956)

(declare-fun Unit!56958 () Unit!56956)

(assert (=> b!3682691 (= lt!1288121 Unit!56958)))

(declare-fun lt!1288112 () List!38979)

(assert (=> b!3682691 (= lt!1288112 (list!14442 (BalanceConc!23413 Empty!11899)))))

(declare-fun lt!1288110 () List!38979)

(assert (=> b!3682691 (= lt!1288110 (Cons!38855 (_1!22495 (v!38273 lt!1288128)) Nil!38855))))

(declare-fun lt!1288122 () List!38979)

(assert (=> b!3682691 (= lt!1288122 (list!14442 (_1!22492 lt!1288109)))))

(declare-fun lt!1288114 () Unit!56956)

(declare-fun lemmaConcatAssociativity!2070 (List!38979 List!38979 List!38979) Unit!56956)

(assert (=> b!3682691 (= lt!1288114 (lemmaConcatAssociativity!2070 lt!1288112 lt!1288110 lt!1288122))))

(declare-fun ++!9668 (List!38979 List!38979) List!38979)

(assert (=> b!3682691 (= (++!9668 (++!9668 lt!1288112 lt!1288110) lt!1288122) (++!9668 lt!1288112 (++!9668 lt!1288110 lt!1288122)))))

(declare-fun lt!1288129 () Unit!56956)

(assert (=> b!3682691 (= lt!1288129 lt!1288114)))

(declare-fun lt!1288115 () List!38977)

(assert (=> b!3682691 (= lt!1288115 (++!9667 (list!14444 (BalanceConc!23411 Empty!11898)) (list!14444 (charsOf!3865 (_1!22495 (v!38273 lt!1288128))))))))

(declare-fun lt!1288123 () List!38977)

(assert (=> b!3682691 (= lt!1288123 (list!14444 (_2!22495 (v!38273 lt!1288128))))))

(declare-fun lt!1288131 () List!38979)

(assert (=> b!3682691 (= lt!1288131 (list!14442 (append!1004 (BalanceConc!23413 Empty!11899) (_1!22495 (v!38273 lt!1288128)))))))

(declare-fun lt!1288106 () Unit!56956)

(declare-fun lemmaLexThenLexPrefix!539 (LexerInterface!5443 List!38978 List!38977 List!38977 List!38979 List!38979 List!38977) Unit!56956)

(assert (=> b!3682691 (= lt!1288106 (lemmaLexThenLexPrefix!539 thiss!25197 rules!3568 lt!1288115 lt!1288123 lt!1288131 (list!14442 (_1!22492 lt!1288109)) (list!14444 (_2!22492 lt!1288109))))))

(assert (=> b!3682691 (= (lexList!1517 thiss!25197 rules!3568 lt!1288115) (tuple2!38719 lt!1288131 Nil!38853))))

(declare-fun lt!1288116 () Unit!56956)

(assert (=> b!3682691 (= lt!1288116 lt!1288106)))

(declare-fun lt!1288111 () BalanceConc!23410)

(declare-fun ++!9669 (BalanceConc!23410 BalanceConc!23410) BalanceConc!23410)

(assert (=> b!3682691 (= lt!1288111 (++!9669 (BalanceConc!23411 Empty!11898) (charsOf!3865 (_1!22495 (v!38273 lt!1288128)))))))

(assert (=> b!3682691 (= lt!1288124 (maxPrefixZipperSequence!1167 thiss!25197 rules!3568 lt!1288111))))

(declare-fun c!637058 () Bool)

(assert (=> b!3682691 (= c!637058 ((_ is Some!8329) lt!1288124))))

(assert (=> b!3682691 (= (lexRec!774 thiss!25197 rules!3568 (++!9669 (BalanceConc!23411 Empty!11898) (charsOf!3865 (_1!22495 (v!38273 lt!1288128))))) e!2280416)))

(declare-fun lt!1288134 () Unit!56956)

(declare-fun Unit!56959 () Unit!56956)

(assert (=> b!3682691 (= lt!1288134 Unit!56959)))

(assert (=> b!3682691 (= lt!1288127 (++!9669 (BalanceConc!23411 Empty!11898) (charsOf!3865 (_1!22495 (v!38273 lt!1288128)))))))

(declare-fun lt!1288139 () List!38977)

(assert (=> b!3682691 (= lt!1288139 (list!14444 lt!1288127))))

(declare-fun lt!1288118 () List!38977)

(assert (=> b!3682691 (= lt!1288118 (list!14444 (_2!22495 (v!38273 lt!1288128))))))

(declare-fun lt!1288137 () Unit!56956)

(assert (=> b!3682691 (= lt!1288137 (lemmaConcatTwoListThenFSndIsSuffix!621 lt!1288139 lt!1288118))))

(assert (=> b!3682691 (isSuffix!936 lt!1288118 (++!9667 lt!1288139 lt!1288118))))

(declare-fun lt!1288107 () Unit!56956)

(assert (=> b!3682691 (= lt!1288107 lt!1288137)))

(declare-fun b!3682692 () Bool)

(assert (=> b!3682692 (= e!2280417 (= (list!14444 (_2!22492 lt!1288138)) (list!14444 (_2!22492 (lexRec!774 thiss!25197 rules!3568 (seqFromList!4403 input!3129))))))))

(declare-fun b!3682693 () Bool)

(assert (=> b!3682693 (= e!2280418 (tuple2!38717 (BalanceConc!23413 Empty!11899) (seqFromList!4403 input!3129)))))

(declare-fun b!3682694 () Bool)

(assert (=> b!3682694 (= e!2280416 (tuple2!38717 (BalanceConc!23413 Empty!11899) lt!1288111))))

(declare-fun b!3682695 () Bool)

(assert (=> b!3682695 (= e!2280415 (tuple2!38717 (BalanceConc!23413 Empty!11899) (seqFromList!4403 input!3129)))))

(assert (= (and d!1080998 c!637059) b!3682691))

(assert (= (and d!1080998 (not c!637059)) b!3682693))

(assert (= (and b!3682691 c!637060) b!3682690))

(assert (= (and b!3682691 (not c!637060)) b!3682695))

(assert (= (and b!3682691 c!637058) b!3682689))

(assert (= (and b!3682691 (not c!637058)) b!3682694))

(assert (= (and d!1080998 res!1496283) b!3682692))

(assert (=> d!1080998 m!4193581))

(assert (=> d!1080998 m!4193625))

(declare-fun m!4193673 () Bool)

(assert (=> d!1080998 m!4193673))

(declare-fun m!4193675 () Bool)

(assert (=> d!1080998 m!4193675))

(declare-fun m!4193677 () Bool)

(assert (=> d!1080998 m!4193677))

(declare-fun m!4193679 () Bool)

(assert (=> d!1080998 m!4193679))

(assert (=> d!1080998 m!4193581))

(assert (=> d!1080998 m!4193581))

(declare-fun m!4193681 () Bool)

(assert (=> d!1080998 m!4193681))

(declare-fun m!4193683 () Bool)

(assert (=> d!1080998 m!4193683))

(assert (=> d!1080998 m!4193677))

(declare-fun m!4193685 () Bool)

(assert (=> d!1080998 m!4193685))

(assert (=> d!1080998 m!4193581))

(declare-fun m!4193687 () Bool)

(assert (=> d!1080998 m!4193687))

(declare-fun m!4193689 () Bool)

(assert (=> b!3682689 m!4193689))

(declare-fun m!4193691 () Bool)

(assert (=> b!3682689 m!4193691))

(declare-fun m!4193693 () Bool)

(assert (=> b!3682690 m!4193693))

(declare-fun m!4193695 () Bool)

(assert (=> b!3682690 m!4193695))

(declare-fun m!4193697 () Bool)

(assert (=> b!3682692 m!4193697))

(assert (=> b!3682692 m!4193581))

(assert (=> b!3682692 m!4193687))

(declare-fun m!4193699 () Bool)

(assert (=> b!3682692 m!4193699))

(assert (=> b!3682691 m!4193581))

(declare-fun m!4193701 () Bool)

(assert (=> b!3682691 m!4193701))

(declare-fun m!4193703 () Bool)

(assert (=> b!3682691 m!4193703))

(assert (=> b!3682691 m!4193675))

(declare-fun m!4193705 () Bool)

(assert (=> b!3682691 m!4193705))

(declare-fun m!4193707 () Bool)

(assert (=> b!3682691 m!4193707))

(declare-fun m!4193709 () Bool)

(assert (=> b!3682691 m!4193709))

(declare-fun m!4193711 () Bool)

(assert (=> b!3682691 m!4193711))

(declare-fun m!4193713 () Bool)

(assert (=> b!3682691 m!4193713))

(declare-fun m!4193715 () Bool)

(assert (=> b!3682691 m!4193715))

(declare-fun m!4193717 () Bool)

(assert (=> b!3682691 m!4193717))

(declare-fun m!4193719 () Bool)

(assert (=> b!3682691 m!4193719))

(declare-fun m!4193721 () Bool)

(assert (=> b!3682691 m!4193721))

(declare-fun m!4193723 () Bool)

(assert (=> b!3682691 m!4193723))

(assert (=> b!3682691 m!4193715))

(assert (=> b!3682691 m!4193709))

(assert (=> b!3682691 m!4193705))

(declare-fun m!4193725 () Bool)

(assert (=> b!3682691 m!4193725))

(declare-fun m!4193727 () Bool)

(assert (=> b!3682691 m!4193727))

(declare-fun m!4193729 () Bool)

(assert (=> b!3682691 m!4193729))

(declare-fun m!4193731 () Bool)

(assert (=> b!3682691 m!4193731))

(declare-fun m!4193733 () Bool)

(assert (=> b!3682691 m!4193733))

(declare-fun m!4193735 () Bool)

(assert (=> b!3682691 m!4193735))

(declare-fun m!4193737 () Bool)

(assert (=> b!3682691 m!4193737))

(declare-fun m!4193739 () Bool)

(assert (=> b!3682691 m!4193739))

(assert (=> b!3682691 m!4193675))

(declare-fun m!4193741 () Bool)

(assert (=> b!3682691 m!4193741))

(declare-fun m!4193743 () Bool)

(assert (=> b!3682691 m!4193743))

(assert (=> b!3682691 m!4193739))

(declare-fun m!4193745 () Bool)

(assert (=> b!3682691 m!4193745))

(assert (=> b!3682691 m!4193701))

(declare-fun m!4193747 () Bool)

(assert (=> b!3682691 m!4193747))

(declare-fun m!4193749 () Bool)

(assert (=> b!3682691 m!4193749))

(declare-fun m!4193751 () Bool)

(assert (=> b!3682691 m!4193751))

(declare-fun m!4193753 () Bool)

(assert (=> b!3682691 m!4193753))

(assert (=> b!3682691 m!4193741))

(assert (=> b!3682691 m!4193581))

(assert (=> b!3682691 m!4193687))

(assert (=> b!3682691 m!4193737))

(declare-fun m!4193755 () Bool)

(assert (=> b!3682691 m!4193755))

(assert (=> b!3682691 m!4193709))

(assert (=> b!3682691 m!4193731))

(declare-fun m!4193757 () Bool)

(assert (=> b!3682691 m!4193757))

(assert (=> b!3682691 m!4193581))

(declare-fun m!4193759 () Bool)

(assert (=> b!3682691 m!4193759))

(assert (=> b!3682691 m!4193713))

(assert (=> b!3682691 m!4193749))

(declare-fun m!4193761 () Bool)

(assert (=> b!3682691 m!4193761))

(assert (=> b!3682691 m!4193701))

(assert (=> b!3682691 m!4193719))

(assert (=> d!1080982 d!1080998))

(declare-fun d!1081002 () Bool)

(assert (=> d!1081002 true))

(declare-fun order!21549 () Int)

(declare-fun order!21547 () Int)

(declare-fun lambda!124786 () Int)

(declare-fun dynLambda!17038 (Int Int) Int)

(declare-fun dynLambda!17039 (Int Int) Int)

(assert (=> d!1081002 (< (dynLambda!17038 order!21547 (toValue!8150 (transformation!5854 (h!44274 rules!3568)))) (dynLambda!17039 order!21549 lambda!124786))))

(declare-fun Forall2!969 (Int) Bool)

(assert (=> d!1081002 (= (equivClasses!2397 (toChars!8009 (transformation!5854 (h!44274 rules!3568))) (toValue!8150 (transformation!5854 (h!44274 rules!3568)))) (Forall2!969 lambda!124786))))

(declare-fun bs!573687 () Bool)

(assert (= bs!573687 d!1081002))

(declare-fun m!4193817 () Bool)

(assert (=> bs!573687 m!4193817))

(assert (=> b!3682578 d!1081002))

(declare-fun d!1081036 () Bool)

(assert (=> d!1081036 (= (inv!52346 (tag!6660 (h!44274 (t!300873 rules!3568)))) (= (mod (str.len (value!187298 (tag!6660 (h!44274 (t!300873 rules!3568))))) 2) 0))))

(assert (=> b!3682617 d!1081036))

(declare-fun d!1081038 () Bool)

(declare-fun res!1496301 () Bool)

(declare-fun e!2280442 () Bool)

(assert (=> d!1081038 (=> (not res!1496301) (not e!2280442))))

(assert (=> d!1081038 (= res!1496301 (semiInverseModEq!2498 (toChars!8009 (transformation!5854 (h!44274 (t!300873 rules!3568)))) (toValue!8150 (transformation!5854 (h!44274 (t!300873 rules!3568))))))))

(assert (=> d!1081038 (= (inv!52348 (transformation!5854 (h!44274 (t!300873 rules!3568)))) e!2280442)))

(declare-fun b!3682733 () Bool)

(assert (=> b!3682733 (= e!2280442 (equivClasses!2397 (toChars!8009 (transformation!5854 (h!44274 (t!300873 rules!3568)))) (toValue!8150 (transformation!5854 (h!44274 (t!300873 rules!3568))))))))

(assert (= (and d!1081038 res!1496301) b!3682733))

(declare-fun m!4193819 () Bool)

(assert (=> d!1081038 m!4193819))

(declare-fun m!4193821 () Bool)

(assert (=> b!3682733 m!4193821))

(assert (=> b!3682617 d!1081038))

(declare-fun d!1081040 () Bool)

(assert (=> d!1081040 (= (isEmpty!23080 (list!14442 (_1!22492 lt!1288022))) ((_ is Nil!38855) (list!14442 (_1!22492 lt!1288022))))))

(assert (=> d!1080980 d!1081040))

(assert (=> d!1080980 d!1080978))

(declare-fun d!1081042 () Bool)

(declare-fun lt!1288165 () Bool)

(assert (=> d!1081042 (= lt!1288165 (isEmpty!23080 (list!14443 (c!637045 (_1!22492 lt!1288022)))))))

(assert (=> d!1081042 (= lt!1288165 (= (size!29709 (c!637045 (_1!22492 lt!1288022))) 0))))

(assert (=> d!1081042 (= (isEmpty!23081 (c!637045 (_1!22492 lt!1288022))) lt!1288165)))

(declare-fun bs!573688 () Bool)

(assert (= bs!573688 d!1081042))

(assert (=> bs!573688 m!4193607))

(assert (=> bs!573688 m!4193607))

(declare-fun m!4193823 () Bool)

(assert (=> bs!573688 m!4193823))

(declare-fun m!4193825 () Bool)

(assert (=> bs!573688 m!4193825))

(assert (=> d!1080980 d!1081042))

(declare-fun d!1081044 () Bool)

(declare-fun lt!1288168 () Int)

(declare-fun size!29710 (List!38977) Int)

(assert (=> d!1081044 (= lt!1288168 (size!29710 (list!14444 (_2!22492 lt!1288031))))))

(declare-fun size!29711 (Conc!11898) Int)

(assert (=> d!1081044 (= lt!1288168 (size!29711 (c!637044 (_2!22492 lt!1288031))))))

(assert (=> d!1081044 (= (size!29704 (_2!22492 lt!1288031)) lt!1288168)))

(declare-fun bs!573689 () Bool)

(assert (= bs!573689 d!1081044))

(assert (=> bs!573689 m!4193629))

(assert (=> bs!573689 m!4193629))

(declare-fun m!4193827 () Bool)

(assert (=> bs!573689 m!4193827))

(declare-fun m!4193829 () Bool)

(assert (=> bs!573689 m!4193829))

(assert (=> b!3682589 d!1081044))

(declare-fun d!1081046 () Bool)

(declare-fun lt!1288169 () Int)

(assert (=> d!1081046 (= lt!1288169 (size!29710 (list!14444 (seqFromList!4403 input!3129))))))

(assert (=> d!1081046 (= lt!1288169 (size!29711 (c!637044 (seqFromList!4403 input!3129))))))

(assert (=> d!1081046 (= (size!29704 (seqFromList!4403 input!3129)) lt!1288169)))

(declare-fun bs!573690 () Bool)

(assert (= bs!573690 d!1081046))

(assert (=> bs!573690 m!4193581))

(assert (=> bs!573690 m!4193625))

(assert (=> bs!573690 m!4193625))

(declare-fun m!4193831 () Bool)

(assert (=> bs!573690 m!4193831))

(declare-fun m!4193833 () Bool)

(assert (=> bs!573690 m!4193833))

(assert (=> b!3682589 d!1081046))

(declare-fun d!1081048 () Bool)

(declare-fun c!637072 () Bool)

(assert (=> d!1081048 (= c!637072 ((_ is Empty!11899) (c!637045 (_1!22492 lt!1288022))))))

(declare-fun e!2280447 () List!38979)

(assert (=> d!1081048 (= (list!14443 (c!637045 (_1!22492 lt!1288022))) e!2280447)))

(declare-fun b!3682744 () Bool)

(declare-fun e!2280448 () List!38979)

(declare-fun list!14447 (IArray!23803) List!38979)

(assert (=> b!3682744 (= e!2280448 (list!14447 (xs!15101 (c!637045 (_1!22492 lt!1288022)))))))

(declare-fun b!3682745 () Bool)

(assert (=> b!3682745 (= e!2280448 (++!9668 (list!14443 (left!30316 (c!637045 (_1!22492 lt!1288022)))) (list!14443 (right!30646 (c!637045 (_1!22492 lt!1288022))))))))

(declare-fun b!3682743 () Bool)

(assert (=> b!3682743 (= e!2280447 e!2280448)))

(declare-fun c!637073 () Bool)

(assert (=> b!3682743 (= c!637073 ((_ is Leaf!18437) (c!637045 (_1!22492 lt!1288022))))))

(declare-fun b!3682742 () Bool)

(assert (=> b!3682742 (= e!2280447 Nil!38855)))

(assert (= (and d!1081048 c!637072) b!3682742))

(assert (= (and d!1081048 (not c!637072)) b!3682743))

(assert (= (and b!3682743 c!637073) b!3682744))

(assert (= (and b!3682743 (not c!637073)) b!3682745))

(declare-fun m!4193835 () Bool)

(assert (=> b!3682744 m!4193835))

(declare-fun m!4193837 () Bool)

(assert (=> b!3682745 m!4193837))

(declare-fun m!4193839 () Bool)

(assert (=> b!3682745 m!4193839))

(assert (=> b!3682745 m!4193837))

(assert (=> b!3682745 m!4193839))

(declare-fun m!4193841 () Bool)

(assert (=> b!3682745 m!4193841))

(assert (=> d!1080978 d!1081048))

(declare-fun d!1081050 () Bool)

(assert (=> d!1081050 (= (list!14442 (_1!22492 lt!1288031)) (list!14443 (c!637045 (_1!22492 lt!1288031))))))

(declare-fun bs!573691 () Bool)

(assert (= bs!573691 d!1081050))

(declare-fun m!4193843 () Bool)

(assert (=> bs!573691 m!4193843))

(assert (=> b!3682593 d!1081050))

(declare-fun b!3682756 () Bool)

(declare-fun e!2280455 () tuple2!38718)

(assert (=> b!3682756 (= e!2280455 (tuple2!38719 Nil!38855 (list!14444 (seqFromList!4403 input!3129))))))

(declare-fun d!1081052 () Bool)

(declare-fun e!2280456 () Bool)

(assert (=> d!1081052 e!2280456))

(declare-fun c!637078 () Bool)

(declare-fun lt!1288178 () tuple2!38718)

(assert (=> d!1081052 (= c!637078 (> (size!29708 (_1!22493 lt!1288178)) 0))))

(assert (=> d!1081052 (= lt!1288178 e!2280455)))

(declare-fun c!637079 () Bool)

(declare-datatypes ((tuple2!38724 0))(
  ( (tuple2!38725 (_1!22496 Token!11074) (_2!22496 List!38977)) )
))
(declare-datatypes ((Option!8331 0))(
  ( (None!8330) (Some!8330 (v!38274 tuple2!38724)) )
))
(declare-fun lt!1288176 () Option!8331)

(assert (=> d!1081052 (= c!637079 ((_ is Some!8330) lt!1288176))))

(declare-fun maxPrefix!2974 (LexerInterface!5443 List!38978 List!38977) Option!8331)

(assert (=> d!1081052 (= lt!1288176 (maxPrefix!2974 thiss!25197 rules!3568 (list!14444 (seqFromList!4403 input!3129))))))

(assert (=> d!1081052 (= (lexList!1517 thiss!25197 rules!3568 (list!14444 (seqFromList!4403 input!3129))) lt!1288178)))

(declare-fun b!3682757 () Bool)

(assert (=> b!3682757 (= e!2280456 (= (_2!22493 lt!1288178) (list!14444 (seqFromList!4403 input!3129))))))

(declare-fun b!3682758 () Bool)

(declare-fun e!2280457 () Bool)

(assert (=> b!3682758 (= e!2280456 e!2280457)))

(declare-fun res!1496304 () Bool)

(assert (=> b!3682758 (= res!1496304 (< (size!29710 (_2!22493 lt!1288178)) (size!29710 (list!14444 (seqFromList!4403 input!3129)))))))

(assert (=> b!3682758 (=> (not res!1496304) (not e!2280457))))

(declare-fun b!3682759 () Bool)

(declare-fun lt!1288177 () tuple2!38718)

(assert (=> b!3682759 (= e!2280455 (tuple2!38719 (Cons!38855 (_1!22496 (v!38274 lt!1288176)) (_1!22493 lt!1288177)) (_2!22493 lt!1288177)))))

(assert (=> b!3682759 (= lt!1288177 (lexList!1517 thiss!25197 rules!3568 (_2!22496 (v!38274 lt!1288176))))))

(declare-fun b!3682760 () Bool)

(assert (=> b!3682760 (= e!2280457 (not (isEmpty!23080 (_1!22493 lt!1288178))))))

(assert (= (and d!1081052 c!637079) b!3682759))

(assert (= (and d!1081052 (not c!637079)) b!3682756))

(assert (= (and d!1081052 c!637078) b!3682758))

(assert (= (and d!1081052 (not c!637078)) b!3682757))

(assert (= (and b!3682758 res!1496304) b!3682760))

(declare-fun m!4193845 () Bool)

(assert (=> d!1081052 m!4193845))

(assert (=> d!1081052 m!4193625))

(declare-fun m!4193847 () Bool)

(assert (=> d!1081052 m!4193847))

(declare-fun m!4193849 () Bool)

(assert (=> b!3682758 m!4193849))

(assert (=> b!3682758 m!4193625))

(assert (=> b!3682758 m!4193831))

(declare-fun m!4193851 () Bool)

(assert (=> b!3682759 m!4193851))

(declare-fun m!4193853 () Bool)

(assert (=> b!3682760 m!4193853))

(assert (=> b!3682593 d!1081052))

(declare-fun d!1081054 () Bool)

(declare-fun list!14448 (Conc!11898) List!38977)

(assert (=> d!1081054 (= (list!14444 (seqFromList!4403 input!3129)) (list!14448 (c!637044 (seqFromList!4403 input!3129))))))

(declare-fun bs!573692 () Bool)

(assert (= bs!573692 d!1081054))

(declare-fun m!4193855 () Bool)

(assert (=> bs!573692 m!4193855))

(assert (=> b!3682593 d!1081054))

(declare-fun d!1081056 () Bool)

(assert (=> d!1081056 true))

(declare-fun lt!1288181 () Bool)

(declare-fun rulesValidInductive!2084 (LexerInterface!5443 List!38978) Bool)

(assert (=> d!1081056 (= lt!1288181 (rulesValidInductive!2084 thiss!25197 rules!3568))))

(declare-fun lambda!124789 () Int)

(declare-fun forall!8157 (List!38978 Int) Bool)

(assert (=> d!1081056 (= lt!1288181 (forall!8157 rules!3568 lambda!124789))))

(assert (=> d!1081056 (= (rulesValid!2255 thiss!25197 rules!3568) lt!1288181)))

(declare-fun bs!573693 () Bool)

(assert (= bs!573693 d!1081056))

(declare-fun m!4193857 () Bool)

(assert (=> bs!573693 m!4193857))

(declare-fun m!4193859 () Bool)

(assert (=> bs!573693 m!4193859))

(assert (=> d!1080964 d!1081056))

(declare-fun d!1081058 () Bool)

(assert (=> d!1081058 (= (list!14444 (_2!22492 lt!1288031)) (list!14448 (c!637044 (_2!22492 lt!1288031))))))

(declare-fun bs!573694 () Bool)

(assert (= bs!573694 d!1081058))

(declare-fun m!4193861 () Bool)

(assert (=> bs!573694 m!4193861))

(assert (=> b!3682592 d!1081058))

(assert (=> b!3682592 d!1081052))

(assert (=> b!3682592 d!1081054))

(declare-fun d!1081060 () Bool)

(declare-fun e!2280460 () Bool)

(assert (=> d!1081060 e!2280460))

(declare-fun res!1496307 () Bool)

(assert (=> d!1081060 (=> (not res!1496307) (not e!2280460))))

(declare-fun lt!1288184 () BalanceConc!23410)

(assert (=> d!1081060 (= res!1496307 (= (list!14444 lt!1288184) input!3129))))

(declare-fun fromList!800 (List!38977) Conc!11898)

(assert (=> d!1081060 (= lt!1288184 (BalanceConc!23411 (fromList!800 input!3129)))))

(assert (=> d!1081060 (= (fromListB!2034 input!3129) lt!1288184)))

(declare-fun b!3682765 () Bool)

(declare-fun isBalanced!3506 (Conc!11898) Bool)

(assert (=> b!3682765 (= e!2280460 (isBalanced!3506 (fromList!800 input!3129)))))

(assert (= (and d!1081060 res!1496307) b!3682765))

(declare-fun m!4193863 () Bool)

(assert (=> d!1081060 m!4193863))

(declare-fun m!4193865 () Bool)

(assert (=> d!1081060 m!4193865))

(assert (=> b!3682765 m!4193865))

(assert (=> b!3682765 m!4193865))

(declare-fun m!4193867 () Bool)

(assert (=> b!3682765 m!4193867))

(assert (=> d!1080984 d!1081060))

(declare-fun d!1081062 () Bool)

(declare-fun lt!1288185 () Bool)

(assert (=> d!1081062 (= lt!1288185 (isEmpty!23080 (list!14442 (_1!22492 lt!1288031))))))

(assert (=> d!1081062 (= lt!1288185 (isEmpty!23081 (c!637045 (_1!22492 lt!1288031))))))

(assert (=> d!1081062 (= (isEmpty!23079 (_1!22492 lt!1288031)) lt!1288185)))

(declare-fun bs!573695 () Bool)

(assert (= bs!573695 d!1081062))

(assert (=> bs!573695 m!4193623))

(assert (=> bs!573695 m!4193623))

(declare-fun m!4193869 () Bool)

(assert (=> bs!573695 m!4193869))

(declare-fun m!4193871 () Bool)

(assert (=> bs!573695 m!4193871))

(assert (=> b!3682591 d!1081062))

(declare-fun d!1081064 () Bool)

(assert (=> d!1081064 true))

(declare-fun lambda!124792 () Int)

(declare-fun order!21551 () Int)

(declare-fun order!21553 () Int)

(declare-fun dynLambda!17040 (Int Int) Int)

(declare-fun dynLambda!17041 (Int Int) Int)

(assert (=> d!1081064 (< (dynLambda!17040 order!21551 (toChars!8009 (transformation!5854 (h!44274 rules!3568)))) (dynLambda!17041 order!21553 lambda!124792))))

(assert (=> d!1081064 true))

(assert (=> d!1081064 (< (dynLambda!17038 order!21547 (toValue!8150 (transformation!5854 (h!44274 rules!3568)))) (dynLambda!17041 order!21553 lambda!124792))))

(declare-fun Forall!1372 (Int) Bool)

(assert (=> d!1081064 (= (semiInverseModEq!2498 (toChars!8009 (transformation!5854 (h!44274 rules!3568))) (toValue!8150 (transformation!5854 (h!44274 rules!3568)))) (Forall!1372 lambda!124792))))

(declare-fun bs!573696 () Bool)

(assert (= bs!573696 d!1081064))

(declare-fun m!4193873 () Bool)

(assert (=> bs!573696 m!4193873))

(assert (=> d!1080972 d!1081064))

(declare-fun d!1081066 () Bool)

(declare-fun res!1496312 () Bool)

(declare-fun e!2280465 () Bool)

(assert (=> d!1081066 (=> res!1496312 e!2280465)))

(assert (=> d!1081066 (= res!1496312 ((_ is Nil!38854) rules!3568))))

(assert (=> d!1081066 (= (noDuplicateTag!2251 thiss!25197 rules!3568 Nil!38856) e!2280465)))

(declare-fun b!3682774 () Bool)

(declare-fun e!2280466 () Bool)

(assert (=> b!3682774 (= e!2280465 e!2280466)))

(declare-fun res!1496313 () Bool)

(assert (=> b!3682774 (=> (not res!1496313) (not e!2280466))))

(declare-fun contains!7769 (List!38980 String!43754) Bool)

(assert (=> b!3682774 (= res!1496313 (not (contains!7769 Nil!38856 (tag!6660 (h!44274 rules!3568)))))))

(declare-fun b!3682775 () Bool)

(assert (=> b!3682775 (= e!2280466 (noDuplicateTag!2251 thiss!25197 (t!300873 rules!3568) (Cons!38856 (tag!6660 (h!44274 rules!3568)) Nil!38856)))))

(assert (= (and d!1081066 (not res!1496312)) b!3682774))

(assert (= (and b!3682774 res!1496313) b!3682775))

(declare-fun m!4193875 () Bool)

(assert (=> b!3682774 m!4193875))

(declare-fun m!4193877 () Bool)

(assert (=> b!3682775 m!4193877))

(assert (=> b!3682575 d!1081066))

(declare-fun b!3682776 () Bool)

(declare-fun e!2280467 () Bool)

(declare-fun tp!1119323 () Bool)

(assert (=> b!3682776 (= e!2280467 (and tp_is_empty!18309 tp!1119323))))

(assert (=> b!3682623 (= tp!1119292 e!2280467)))

(assert (= (and b!3682623 ((_ is Cons!38853) (t!300872 (t!300872 input!3129)))) b!3682776))

(declare-fun b!3682780 () Bool)

(declare-fun e!2280468 () Bool)

(declare-fun tp!1119327 () Bool)

(declare-fun tp!1119328 () Bool)

(assert (=> b!3682780 (= e!2280468 (and tp!1119327 tp!1119328))))

(declare-fun b!3682778 () Bool)

(declare-fun tp!1119324 () Bool)

(declare-fun tp!1119325 () Bool)

(assert (=> b!3682778 (= e!2280468 (and tp!1119324 tp!1119325))))

(declare-fun b!3682779 () Bool)

(declare-fun tp!1119326 () Bool)

(assert (=> b!3682779 (= e!2280468 tp!1119326)))

(declare-fun b!3682777 () Bool)

(assert (=> b!3682777 (= e!2280468 tp_is_empty!18309)))

(assert (=> b!3682617 (= tp!1119289 e!2280468)))

(assert (= (and b!3682617 ((_ is ElementMatch!10613) (regex!5854 (h!44274 (t!300873 rules!3568))))) b!3682777))

(assert (= (and b!3682617 ((_ is Concat!16698) (regex!5854 (h!44274 (t!300873 rules!3568))))) b!3682778))

(assert (= (and b!3682617 ((_ is Star!10613) (regex!5854 (h!44274 (t!300873 rules!3568))))) b!3682779))

(assert (= (and b!3682617 ((_ is Union!10613) (regex!5854 (h!44274 (t!300873 rules!3568))))) b!3682780))

(declare-fun b!3682784 () Bool)

(declare-fun e!2280469 () Bool)

(declare-fun tp!1119332 () Bool)

(declare-fun tp!1119333 () Bool)

(assert (=> b!3682784 (= e!2280469 (and tp!1119332 tp!1119333))))

(declare-fun b!3682782 () Bool)

(declare-fun tp!1119329 () Bool)

(declare-fun tp!1119330 () Bool)

(assert (=> b!3682782 (= e!2280469 (and tp!1119329 tp!1119330))))

(declare-fun b!3682783 () Bool)

(declare-fun tp!1119331 () Bool)

(assert (=> b!3682783 (= e!2280469 tp!1119331)))

(declare-fun b!3682781 () Bool)

(assert (=> b!3682781 (= e!2280469 tp_is_empty!18309)))

(assert (=> b!3682607 (= tp!1119276 e!2280469)))

(assert (= (and b!3682607 ((_ is ElementMatch!10613) (regOne!21739 (regex!5854 (h!44274 rules!3568))))) b!3682781))

(assert (= (and b!3682607 ((_ is Concat!16698) (regOne!21739 (regex!5854 (h!44274 rules!3568))))) b!3682782))

(assert (= (and b!3682607 ((_ is Star!10613) (regOne!21739 (regex!5854 (h!44274 rules!3568))))) b!3682783))

(assert (= (and b!3682607 ((_ is Union!10613) (regOne!21739 (regex!5854 (h!44274 rules!3568))))) b!3682784))

(declare-fun b!3682788 () Bool)

(declare-fun e!2280470 () Bool)

(declare-fun tp!1119337 () Bool)

(declare-fun tp!1119338 () Bool)

(assert (=> b!3682788 (= e!2280470 (and tp!1119337 tp!1119338))))

(declare-fun b!3682786 () Bool)

(declare-fun tp!1119334 () Bool)

(declare-fun tp!1119335 () Bool)

(assert (=> b!3682786 (= e!2280470 (and tp!1119334 tp!1119335))))

(declare-fun b!3682787 () Bool)

(declare-fun tp!1119336 () Bool)

(assert (=> b!3682787 (= e!2280470 tp!1119336)))

(declare-fun b!3682785 () Bool)

(assert (=> b!3682785 (= e!2280470 tp_is_empty!18309)))

(assert (=> b!3682607 (= tp!1119277 e!2280470)))

(assert (= (and b!3682607 ((_ is ElementMatch!10613) (regTwo!21739 (regex!5854 (h!44274 rules!3568))))) b!3682785))

(assert (= (and b!3682607 ((_ is Concat!16698) (regTwo!21739 (regex!5854 (h!44274 rules!3568))))) b!3682786))

(assert (= (and b!3682607 ((_ is Star!10613) (regTwo!21739 (regex!5854 (h!44274 rules!3568))))) b!3682787))

(assert (= (and b!3682607 ((_ is Union!10613) (regTwo!21739 (regex!5854 (h!44274 rules!3568))))) b!3682788))

(declare-fun b!3682791 () Bool)

(declare-fun b_free!97601 () Bool)

(declare-fun b_next!98305 () Bool)

(assert (=> b!3682791 (= b_free!97601 (not b_next!98305))))

(declare-fun tp!1119340 () Bool)

(declare-fun b_and!275251 () Bool)

(assert (=> b!3682791 (= tp!1119340 b_and!275251)))

(declare-fun b_free!97603 () Bool)

(declare-fun b_next!98307 () Bool)

(assert (=> b!3682791 (= b_free!97603 (not b_next!98307))))

(declare-fun tp!1119339 () Bool)

(declare-fun b_and!275253 () Bool)

(assert (=> b!3682791 (= tp!1119339 b_and!275253)))

(declare-fun e!2280473 () Bool)

(assert (=> b!3682791 (= e!2280473 (and tp!1119340 tp!1119339))))

(declare-fun b!3682790 () Bool)

(declare-fun tp!1119342 () Bool)

(declare-fun e!2280472 () Bool)

(assert (=> b!3682790 (= e!2280472 (and tp!1119342 (inv!52346 (tag!6660 (h!44274 (t!300873 (t!300873 rules!3568))))) (inv!52348 (transformation!5854 (h!44274 (t!300873 (t!300873 rules!3568))))) e!2280473))))

(declare-fun b!3682789 () Bool)

(declare-fun e!2280474 () Bool)

(declare-fun tp!1119341 () Bool)

(assert (=> b!3682789 (= e!2280474 (and e!2280472 tp!1119341))))

(assert (=> b!3682616 (= tp!1119288 e!2280474)))

(assert (= b!3682790 b!3682791))

(assert (= b!3682789 b!3682790))

(assert (= (and b!3682616 ((_ is Cons!38854) (t!300873 (t!300873 rules!3568)))) b!3682789))

(declare-fun m!4193879 () Bool)

(assert (=> b!3682790 m!4193879))

(declare-fun m!4193881 () Bool)

(assert (=> b!3682790 m!4193881))

(declare-fun b!3682795 () Bool)

(declare-fun e!2280475 () Bool)

(declare-fun tp!1119346 () Bool)

(declare-fun tp!1119347 () Bool)

(assert (=> b!3682795 (= e!2280475 (and tp!1119346 tp!1119347))))

(declare-fun b!3682793 () Bool)

(declare-fun tp!1119343 () Bool)

(declare-fun tp!1119344 () Bool)

(assert (=> b!3682793 (= e!2280475 (and tp!1119343 tp!1119344))))

(declare-fun b!3682794 () Bool)

(declare-fun tp!1119345 () Bool)

(assert (=> b!3682794 (= e!2280475 tp!1119345)))

(declare-fun b!3682792 () Bool)

(assert (=> b!3682792 (= e!2280475 tp_is_empty!18309)))

(assert (=> b!3682606 (= tp!1119275 e!2280475)))

(assert (= (and b!3682606 ((_ is ElementMatch!10613) (reg!10942 (regex!5854 (h!44274 rules!3568))))) b!3682792))

(assert (= (and b!3682606 ((_ is Concat!16698) (reg!10942 (regex!5854 (h!44274 rules!3568))))) b!3682793))

(assert (= (and b!3682606 ((_ is Star!10613) (reg!10942 (regex!5854 (h!44274 rules!3568))))) b!3682794))

(assert (= (and b!3682606 ((_ is Union!10613) (reg!10942 (regex!5854 (h!44274 rules!3568))))) b!3682795))

(declare-fun b!3682799 () Bool)

(declare-fun e!2280476 () Bool)

(declare-fun tp!1119351 () Bool)

(declare-fun tp!1119352 () Bool)

(assert (=> b!3682799 (= e!2280476 (and tp!1119351 tp!1119352))))

(declare-fun b!3682797 () Bool)

(declare-fun tp!1119348 () Bool)

(declare-fun tp!1119349 () Bool)

(assert (=> b!3682797 (= e!2280476 (and tp!1119348 tp!1119349))))

(declare-fun b!3682798 () Bool)

(declare-fun tp!1119350 () Bool)

(assert (=> b!3682798 (= e!2280476 tp!1119350)))

(declare-fun b!3682796 () Bool)

(assert (=> b!3682796 (= e!2280476 tp_is_empty!18309)))

(assert (=> b!3682605 (= tp!1119273 e!2280476)))

(assert (= (and b!3682605 ((_ is ElementMatch!10613) (regOne!21738 (regex!5854 (h!44274 rules!3568))))) b!3682796))

(assert (= (and b!3682605 ((_ is Concat!16698) (regOne!21738 (regex!5854 (h!44274 rules!3568))))) b!3682797))

(assert (= (and b!3682605 ((_ is Star!10613) (regOne!21738 (regex!5854 (h!44274 rules!3568))))) b!3682798))

(assert (= (and b!3682605 ((_ is Union!10613) (regOne!21738 (regex!5854 (h!44274 rules!3568))))) b!3682799))

(declare-fun b!3682803 () Bool)

(declare-fun e!2280477 () Bool)

(declare-fun tp!1119356 () Bool)

(declare-fun tp!1119357 () Bool)

(assert (=> b!3682803 (= e!2280477 (and tp!1119356 tp!1119357))))

(declare-fun b!3682801 () Bool)

(declare-fun tp!1119353 () Bool)

(declare-fun tp!1119354 () Bool)

(assert (=> b!3682801 (= e!2280477 (and tp!1119353 tp!1119354))))

(declare-fun b!3682802 () Bool)

(declare-fun tp!1119355 () Bool)

(assert (=> b!3682802 (= e!2280477 tp!1119355)))

(declare-fun b!3682800 () Bool)

(assert (=> b!3682800 (= e!2280477 tp_is_empty!18309)))

(assert (=> b!3682605 (= tp!1119274 e!2280477)))

(assert (= (and b!3682605 ((_ is ElementMatch!10613) (regTwo!21738 (regex!5854 (h!44274 rules!3568))))) b!3682800))

(assert (= (and b!3682605 ((_ is Concat!16698) (regTwo!21738 (regex!5854 (h!44274 rules!3568))))) b!3682801))

(assert (= (and b!3682605 ((_ is Star!10613) (regTwo!21738 (regex!5854 (h!44274 rules!3568))))) b!3682802))

(assert (= (and b!3682605 ((_ is Union!10613) (regTwo!21738 (regex!5854 (h!44274 rules!3568))))) b!3682803))

(check-sat (not b!3682789) (not d!1081064) (not b!3682776) (not d!1081050) (not d!1080998) tp_is_empty!18309 (not d!1081056) (not b!3682788) (not b!3682778) (not b_next!98305) b_and!275251 (not b!3682795) (not b_next!98299) b_and!275241 (not b_next!98297) (not d!1081052) (not b!3682797) (not b!3682691) (not d!1081046) (not b!3682787) (not d!1081062) (not b!3682801) (not d!1080996) (not b!3682759) (not b!3682733) (not b!3682793) (not d!1081060) (not b!3682690) (not d!1081054) (not b!3682689) (not b!3682784) b_and!275253 b_and!275239 (not b!3682802) (not b!3682765) (not d!1081042) (not b!3682783) (not d!1081002) (not b!3682786) (not b!3682692) (not b_next!98295) (not b!3682799) (not b_next!98293) (not b!3682798) (not d!1081058) (not b!3682775) (not d!1081044) (not b!3682790) (not b!3682782) (not b!3682803) b_and!275245 (not b!3682774) (not b!3682745) (not b!3682794) (not b!3682758) (not d!1081038) (not b_next!98307) b_and!275243 (not b!3682779) (not b!3682780) (not b!3682760) (not b!3682744))
(check-sat (not b_next!98297) (not b_next!98295) (not b_next!98293) b_and!275245 (not b_next!98307) b_and!275243 b_and!275251 (not b_next!98305) (not b_next!98299) b_and!275241 b_and!275253 b_and!275239)
