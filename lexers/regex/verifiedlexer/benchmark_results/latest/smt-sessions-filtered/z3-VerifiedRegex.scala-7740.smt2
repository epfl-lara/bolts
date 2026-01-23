; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406726 () Bool)

(assert start!406726)

(declare-fun b!4248397 () Bool)

(declare-fun b_free!126211 () Bool)

(declare-fun b_next!126915 () Bool)

(assert (=> b!4248397 (= b_free!126211 (not b_next!126915))))

(declare-fun tp!1303383 () Bool)

(declare-fun b_and!336677 () Bool)

(assert (=> b!4248397 (= tp!1303383 b_and!336677)))

(declare-fun b_free!126213 () Bool)

(declare-fun b_next!126917 () Bool)

(assert (=> b!4248397 (= b_free!126213 (not b_next!126917))))

(declare-fun tp!1303379 () Bool)

(declare-fun b_and!336679 () Bool)

(assert (=> b!4248397 (= tp!1303379 b_and!336679)))

(declare-fun b!4248399 () Bool)

(declare-fun b_free!126215 () Bool)

(declare-fun b_next!126919 () Bool)

(assert (=> b!4248399 (= b_free!126215 (not b_next!126919))))

(declare-fun tp!1303385 () Bool)

(declare-fun b_and!336681 () Bool)

(assert (=> b!4248399 (= tp!1303385 b_and!336681)))

(declare-fun b_free!126217 () Bool)

(declare-fun b_next!126921 () Bool)

(assert (=> b!4248399 (= b_free!126217 (not b_next!126921))))

(declare-fun tp!1303378 () Bool)

(declare-fun b_and!336683 () Bool)

(assert (=> b!4248399 (= tp!1303378 b_and!336683)))

(declare-fun b!4248383 () Bool)

(declare-fun e!2638678 () Bool)

(declare-fun e!2638692 () Bool)

(declare-fun tp!1303382 () Bool)

(assert (=> b!4248383 (= e!2638678 (and e!2638692 tp!1303382))))

(declare-fun b!4248384 () Bool)

(declare-fun res!1746547 () Bool)

(declare-fun e!2638684 () Bool)

(assert (=> b!4248384 (=> (not res!1746547) (not e!2638684))))

(declare-datatypes ((List!47179 0))(
  ( (Nil!47055) (Cons!47055 (h!52475 (_ BitVec 16)) (t!352014 List!47179)) )
))
(declare-datatypes ((TokenValue!8194 0))(
  ( (FloatLiteralValue!16388 (text!57803 List!47179)) (TokenValueExt!8193 (__x!28611 Int)) (Broken!40970 (value!247484 List!47179)) (Object!8317) (End!8194) (Def!8194) (Underscore!8194) (Match!8194) (Else!8194) (Error!8194) (Case!8194) (If!8194) (Extends!8194) (Abstract!8194) (Class!8194) (Val!8194) (DelimiterValue!16388 (del!8254 List!47179)) (KeywordValue!8200 (value!247485 List!47179)) (CommentValue!16388 (value!247486 List!47179)) (WhitespaceValue!16388 (value!247487 List!47179)) (IndentationValue!8194 (value!247488 List!47179)) (String!54899) (Int32!8194) (Broken!40971 (value!247489 List!47179)) (Boolean!8195) (Unit!66048) (OperatorValue!8197 (op!8254 List!47179)) (IdentifierValue!16388 (value!247490 List!47179)) (IdentifierValue!16389 (value!247491 List!47179)) (WhitespaceValue!16389 (value!247492 List!47179)) (True!16388) (False!16388) (Broken!40972 (value!247493 List!47179)) (Broken!40973 (value!247494 List!47179)) (True!16389) (RightBrace!8194) (RightBracket!8194) (Colon!8194) (Null!8194) (Comma!8194) (LeftBracket!8194) (False!16389) (LeftBrace!8194) (ImaginaryLiteralValue!8194 (text!57804 List!47179)) (StringLiteralValue!24582 (value!247495 List!47179)) (EOFValue!8194 (value!247496 List!47179)) (IdentValue!8194 (value!247497 List!47179)) (DelimiterValue!16389 (value!247498 List!47179)) (DedentValue!8194 (value!247499 List!47179)) (NewLineValue!8194 (value!247500 List!47179)) (IntegerValue!24582 (value!247501 (_ BitVec 32)) (text!57805 List!47179)) (IntegerValue!24583 (value!247502 Int) (text!57806 List!47179)) (Times!8194) (Or!8194) (Equal!8194) (Minus!8194) (Broken!40974 (value!247503 List!47179)) (And!8194) (Div!8194) (LessEqual!8194) (Mod!8194) (Concat!21063) (Not!8194) (Plus!8194) (SpaceValue!8194 (value!247504 List!47179)) (IntegerValue!24584 (value!247505 Int) (text!57807 List!47179)) (StringLiteralValue!24583 (text!57808 List!47179)) (FloatLiteralValue!16389 (text!57809 List!47179)) (BytesLiteralValue!8194 (value!247506 List!47179)) (CommentValue!16389 (value!247507 List!47179)) (StringLiteralValue!24584 (value!247508 List!47179)) (ErrorTokenValue!8194 (msg!8255 List!47179)) )
))
(declare-datatypes ((C!25936 0))(
  ( (C!25937 (val!15158 Int)) )
))
(declare-datatypes ((List!47180 0))(
  ( (Nil!47056) (Cons!47056 (h!52476 C!25936) (t!352015 List!47180)) )
))
(declare-datatypes ((IArray!28355 0))(
  ( (IArray!28356 (innerList!14235 List!47180)) )
))
(declare-datatypes ((Conc!14175 0))(
  ( (Node!14175 (left!34915 Conc!14175) (right!35245 Conc!14175) (csize!28580 Int) (cheight!14386 Int)) (Leaf!21916 (xs!17481 IArray!28355) (csize!28581 Int)) (Empty!14175) )
))
(declare-datatypes ((BalanceConc!27944 0))(
  ( (BalanceConc!27945 (c!721494 Conc!14175)) )
))
(declare-datatypes ((TokenValueInjection!15816 0))(
  ( (TokenValueInjection!15817 (toValue!10732 Int) (toChars!10591 Int)) )
))
(declare-datatypes ((String!54900 0))(
  ( (String!54901 (value!247509 String)) )
))
(declare-datatypes ((Regex!12869 0))(
  ( (ElementMatch!12869 (c!721495 C!25936)) (Concat!21064 (regOne!26250 Regex!12869) (regTwo!26250 Regex!12869)) (EmptyExpr!12869) (Star!12869 (reg!13198 Regex!12869)) (EmptyLang!12869) (Union!12869 (regOne!26251 Regex!12869) (regTwo!26251 Regex!12869)) )
))
(declare-datatypes ((Rule!15728 0))(
  ( (Rule!15729 (regex!7964 Regex!12869) (tag!8828 String!54900) (isSeparator!7964 Bool) (transformation!7964 TokenValueInjection!15816)) )
))
(declare-datatypes ((List!47181 0))(
  ( (Nil!47057) (Cons!47057 (h!52477 Rule!15728) (t!352016 List!47181)) )
))
(declare-fun rules!2971 () List!47181)

(declare-fun isEmpty!27836 (List!47181) Bool)

(assert (=> b!4248384 (= res!1746547 (not (isEmpty!27836 rules!2971)))))

(declare-fun b!4248385 () Bool)

(declare-fun e!2638681 () Bool)

(declare-datatypes ((Token!14554 0))(
  ( (Token!14555 (value!247510 TokenValue!8194) (rule!11096 Rule!15728) (size!34452 Int) (originalCharacters!8308 List!47180)) )
))
(declare-datatypes ((tuple2!44618 0))(
  ( (tuple2!44619 (_1!25443 Token!14554) (_2!25443 List!47180)) )
))
(declare-datatypes ((Option!10098 0))(
  ( (None!10097) (Some!10097 (v!41053 tuple2!44618)) )
))
(declare-fun lt!1508052 () Option!10098)

(declare-fun shorterInput!62 () List!47180)

(declare-fun ++!11975 (List!47180 List!47180) List!47180)

(declare-fun list!16952 (BalanceConc!27944) List!47180)

(declare-fun charsOf!5306 (Token!14554) BalanceConc!27944)

(assert (=> b!4248385 (= e!2638681 (not (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))) (_2!25443 (v!41053 lt!1508052))) shorterInput!62)))))

(declare-fun tp!1303380 () Bool)

(declare-fun b!4248386 () Bool)

(declare-fun e!2638690 () Bool)

(declare-fun inv!61820 (String!54900) Bool)

(declare-fun inv!61823 (TokenValueInjection!15816) Bool)

(assert (=> b!4248386 (= e!2638692 (and tp!1303380 (inv!61820 (tag!8828 (h!52477 rules!2971))) (inv!61823 (transformation!7964 (h!52477 rules!2971))) e!2638690))))

(declare-fun b!4248387 () Bool)

(declare-fun tp!1303376 () Bool)

(declare-datatypes ((List!47182 0))(
  ( (Nil!47058) (Cons!47058 (h!52478 Token!14554) (t!352017 List!47182)) )
))
(declare-fun tokens!592 () List!47182)

(declare-fun e!2638680 () Bool)

(declare-fun e!2638689 () Bool)

(assert (=> b!4248387 (= e!2638689 (and tp!1303376 (inv!61820 (tag!8828 (rule!11096 (h!52478 tokens!592)))) (inv!61823 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) e!2638680))))

(declare-fun tp!1303377 () Bool)

(declare-fun b!4248388 () Bool)

(declare-fun e!2638685 () Bool)

(declare-fun e!2638682 () Bool)

(declare-fun inv!61824 (Token!14554) Bool)

(assert (=> b!4248388 (= e!2638682 (and (inv!61824 (h!52478 tokens!592)) e!2638685 tp!1303377))))

(declare-fun b!4248389 () Bool)

(declare-fun res!1746545 () Bool)

(assert (=> b!4248389 (=> (not res!1746545) (not e!2638684))))

(declare-datatypes ((LexerInterface!7559 0))(
  ( (LexerInterfaceExt!7556 (__x!28612 Int)) (Lexer!7557) )
))
(declare-fun thiss!21641 () LexerInterface!7559)

(declare-fun rulesInvariant!6670 (LexerInterface!7559 List!47181) Bool)

(assert (=> b!4248389 (= res!1746545 (rulesInvariant!6670 thiss!21641 rules!2971))))

(declare-fun b!4248390 () Bool)

(declare-fun res!1746552 () Bool)

(assert (=> b!4248390 (=> (not res!1746552) (not e!2638684))))

(declare-fun longerInput!62 () List!47180)

(declare-fun size!34453 (List!47180) Int)

(assert (=> b!4248390 (= res!1746552 (> (size!34453 longerInput!62) (size!34453 shorterInput!62)))))

(declare-fun tp!1303386 () Bool)

(declare-fun b!4248391 () Bool)

(declare-fun inv!21 (TokenValue!8194) Bool)

(assert (=> b!4248391 (= e!2638685 (and (inv!21 (value!247510 (h!52478 tokens!592))) e!2638689 tp!1303386))))

(declare-fun b!4248392 () Bool)

(declare-fun res!1746548 () Bool)

(assert (=> b!4248392 (=> (not res!1746548) (not e!2638681))))

(declare-fun lt!1508051 () Option!10098)

(assert (=> b!4248392 (= res!1746548 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))) (_2!25443 (v!41053 lt!1508051))) longerInput!62))))

(declare-fun res!1746550 () Bool)

(assert (=> start!406726 (=> (not res!1746550) (not e!2638684))))

(get-info :version)

(assert (=> start!406726 (= res!1746550 ((_ is Lexer!7557) thiss!21641))))

(assert (=> start!406726 e!2638684))

(assert (=> start!406726 true))

(declare-fun e!2638688 () Bool)

(assert (=> start!406726 e!2638688))

(declare-fun e!2638687 () Bool)

(assert (=> start!406726 e!2638687))

(assert (=> start!406726 e!2638682))

(assert (=> start!406726 e!2638678))

(declare-fun e!2638683 () Bool)

(assert (=> start!406726 e!2638683))

(declare-fun b!4248393 () Bool)

(declare-fun res!1746549 () Bool)

(assert (=> b!4248393 (=> (not res!1746549) (not e!2638684))))

(declare-fun suffix!1284 () List!47180)

(declare-datatypes ((tuple2!44620 0))(
  ( (tuple2!44621 (_1!25444 List!47182) (_2!25444 List!47180)) )
))
(declare-fun lexList!2065 (LexerInterface!7559 List!47181 List!47180) tuple2!44620)

(assert (=> b!4248393 (= res!1746549 (= (lexList!2065 thiss!21641 rules!2971 longerInput!62) (tuple2!44621 tokens!592 suffix!1284)))))

(declare-fun b!4248394 () Bool)

(declare-fun tp_is_empty!22729 () Bool)

(declare-fun tp!1303375 () Bool)

(assert (=> b!4248394 (= e!2638683 (and tp_is_empty!22729 tp!1303375))))

(declare-fun b!4248395 () Bool)

(assert (=> b!4248395 (= e!2638684 e!2638681)))

(declare-fun res!1746551 () Bool)

(assert (=> b!4248395 (=> (not res!1746551) (not e!2638681))))

(assert (=> b!4248395 (= res!1746551 (and ((_ is Some!10097) lt!1508051) ((_ is Some!10097) lt!1508052)))))

(declare-fun maxPrefix!4515 (LexerInterface!7559 List!47181 List!47180) Option!10098)

(assert (=> b!4248395 (= lt!1508052 (maxPrefix!4515 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4248395 (= lt!1508051 (maxPrefix!4515 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4248396 () Bool)

(declare-fun res!1746546 () Bool)

(assert (=> b!4248396 (=> (not res!1746546) (not e!2638684))))

(declare-fun isEmpty!27837 (List!47180) Bool)

(assert (=> b!4248396 (= res!1746546 (not (isEmpty!27837 longerInput!62)))))

(assert (=> b!4248397 (= e!2638690 (and tp!1303383 tp!1303379))))

(declare-fun b!4248398 () Bool)

(declare-fun tp!1303384 () Bool)

(assert (=> b!4248398 (= e!2638687 (and tp_is_empty!22729 tp!1303384))))

(assert (=> b!4248399 (= e!2638680 (and tp!1303385 tp!1303378))))

(declare-fun b!4248400 () Bool)

(declare-fun tp!1303381 () Bool)

(assert (=> b!4248400 (= e!2638688 (and tp_is_empty!22729 tp!1303381))))

(assert (= (and start!406726 res!1746550) b!4248384))

(assert (= (and b!4248384 res!1746547) b!4248389))

(assert (= (and b!4248389 res!1746545) b!4248396))

(assert (= (and b!4248396 res!1746546) b!4248390))

(assert (= (and b!4248390 res!1746552) b!4248393))

(assert (= (and b!4248393 res!1746549) b!4248395))

(assert (= (and b!4248395 res!1746551) b!4248392))

(assert (= (and b!4248392 res!1746548) b!4248385))

(assert (= (and start!406726 ((_ is Cons!47056) suffix!1284)) b!4248400))

(assert (= (and start!406726 ((_ is Cons!47056) longerInput!62)) b!4248398))

(assert (= b!4248387 b!4248399))

(assert (= b!4248391 b!4248387))

(assert (= b!4248388 b!4248391))

(assert (= (and start!406726 ((_ is Cons!47058) tokens!592)) b!4248388))

(assert (= b!4248386 b!4248397))

(assert (= b!4248383 b!4248386))

(assert (= (and start!406726 ((_ is Cons!47057) rules!2971)) b!4248383))

(assert (= (and start!406726 ((_ is Cons!47056) shorterInput!62)) b!4248394))

(declare-fun m!4833215 () Bool)

(assert (=> b!4248387 m!4833215))

(declare-fun m!4833217 () Bool)

(assert (=> b!4248387 m!4833217))

(declare-fun m!4833219 () Bool)

(assert (=> b!4248389 m!4833219))

(declare-fun m!4833221 () Bool)

(assert (=> b!4248395 m!4833221))

(declare-fun m!4833223 () Bool)

(assert (=> b!4248395 m!4833223))

(declare-fun m!4833225 () Bool)

(assert (=> b!4248384 m!4833225))

(declare-fun m!4833227 () Bool)

(assert (=> b!4248386 m!4833227))

(declare-fun m!4833229 () Bool)

(assert (=> b!4248386 m!4833229))

(declare-fun m!4833231 () Bool)

(assert (=> b!4248393 m!4833231))

(declare-fun m!4833233 () Bool)

(assert (=> b!4248391 m!4833233))

(declare-fun m!4833235 () Bool)

(assert (=> b!4248396 m!4833235))

(declare-fun m!4833237 () Bool)

(assert (=> b!4248388 m!4833237))

(declare-fun m!4833239 () Bool)

(assert (=> b!4248385 m!4833239))

(assert (=> b!4248385 m!4833239))

(declare-fun m!4833241 () Bool)

(assert (=> b!4248385 m!4833241))

(assert (=> b!4248385 m!4833241))

(declare-fun m!4833243 () Bool)

(assert (=> b!4248385 m!4833243))

(declare-fun m!4833245 () Bool)

(assert (=> b!4248392 m!4833245))

(assert (=> b!4248392 m!4833245))

(declare-fun m!4833247 () Bool)

(assert (=> b!4248392 m!4833247))

(assert (=> b!4248392 m!4833247))

(declare-fun m!4833249 () Bool)

(assert (=> b!4248392 m!4833249))

(declare-fun m!4833251 () Bool)

(assert (=> b!4248390 m!4833251))

(declare-fun m!4833253 () Bool)

(assert (=> b!4248390 m!4833253))

(check-sat (not b!4248383) (not b!4248388) (not b_next!126919) (not b_next!126921) (not b!4248389) (not b!4248395) (not b!4248400) (not b!4248386) (not b!4248387) b_and!336681 (not b!4248385) (not b!4248394) (not b_next!126917) b_and!336677 (not b!4248396) (not b!4248398) (not b!4248384) (not b_next!126915) (not b!4248392) b_and!336679 (not b!4248390) b_and!336683 tp_is_empty!22729 (not b!4248391) (not b!4248393))
(check-sat (not b_next!126919) (not b_next!126921) (not b_next!126917) b_and!336677 (not b_next!126915) b_and!336679 b_and!336683 b_and!336681)
(get-model)

(declare-fun d!1249393 () Bool)

(declare-fun res!1746567 () Bool)

(declare-fun e!2638697 () Bool)

(assert (=> d!1249393 (=> (not res!1746567) (not e!2638697))))

(assert (=> d!1249393 (= res!1746567 (not (isEmpty!27837 (originalCharacters!8308 (h!52478 tokens!592)))))))

(assert (=> d!1249393 (= (inv!61824 (h!52478 tokens!592)) e!2638697)))

(declare-fun b!4248409 () Bool)

(declare-fun res!1746568 () Bool)

(assert (=> b!4248409 (=> (not res!1746568) (not e!2638697))))

(declare-fun dynLambda!20162 (Int TokenValue!8194) BalanceConc!27944)

(assert (=> b!4248409 (= res!1746568 (= (originalCharacters!8308 (h!52478 tokens!592)) (list!16952 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))))))

(declare-fun b!4248410 () Bool)

(assert (=> b!4248410 (= e!2638697 (= (size!34452 (h!52478 tokens!592)) (size!34453 (originalCharacters!8308 (h!52478 tokens!592)))))))

(assert (= (and d!1249393 res!1746567) b!4248409))

(assert (= (and b!4248409 res!1746568) b!4248410))

(declare-fun b_lambda!125131 () Bool)

(assert (=> (not b_lambda!125131) (not b!4248409)))

(declare-fun tb!256019 () Bool)

(declare-fun t!352019 () Bool)

(assert (=> (and b!4248397 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) t!352019) tb!256019))

(declare-fun b!4248417 () Bool)

(declare-fun e!2638701 () Bool)

(declare-fun tp!1303389 () Bool)

(declare-fun inv!61827 (Conc!14175) Bool)

(assert (=> b!4248417 (= e!2638701 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))) tp!1303389))))

(declare-fun result!312212 () Bool)

(declare-fun inv!61828 (BalanceConc!27944) Bool)

(assert (=> tb!256019 (= result!312212 (and (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))) e!2638701))))

(assert (= tb!256019 b!4248417))

(declare-fun m!4833255 () Bool)

(assert (=> b!4248417 m!4833255))

(declare-fun m!4833257 () Bool)

(assert (=> tb!256019 m!4833257))

(assert (=> b!4248409 t!352019))

(declare-fun b_and!336685 () Bool)

(assert (= b_and!336679 (and (=> t!352019 result!312212) b_and!336685)))

(declare-fun t!352023 () Bool)

(declare-fun tb!256023 () Bool)

(assert (=> (and b!4248399 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) t!352023) tb!256023))

(declare-fun result!312220 () Bool)

(assert (= result!312220 result!312212))

(assert (=> b!4248409 t!352023))

(declare-fun b_and!336687 () Bool)

(assert (= b_and!336683 (and (=> t!352023 result!312220) b_and!336687)))

(declare-fun m!4833259 () Bool)

(assert (=> d!1249393 m!4833259))

(declare-fun m!4833261 () Bool)

(assert (=> b!4248409 m!4833261))

(assert (=> b!4248409 m!4833261))

(declare-fun m!4833263 () Bool)

(assert (=> b!4248409 m!4833263))

(declare-fun m!4833265 () Bool)

(assert (=> b!4248410 m!4833265))

(assert (=> b!4248388 d!1249393))

(declare-fun d!1249397 () Bool)

(assert (=> d!1249397 (= (inv!61820 (tag!8828 (rule!11096 (h!52478 tokens!592)))) (= (mod (str.len (value!247509 (tag!8828 (rule!11096 (h!52478 tokens!592))))) 2) 0))))

(assert (=> b!4248387 d!1249397))

(declare-fun d!1249399 () Bool)

(declare-fun res!1746577 () Bool)

(declare-fun e!2638711 () Bool)

(assert (=> d!1249399 (=> (not res!1746577) (not e!2638711))))

(declare-fun semiInverseModEq!3471 (Int Int) Bool)

(assert (=> d!1249399 (= res!1746577 (semiInverseModEq!3471 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592))))))))

(assert (=> d!1249399 (= (inv!61823 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) e!2638711)))

(declare-fun b!4248433 () Bool)

(declare-fun equivClasses!3370 (Int Int) Bool)

(assert (=> b!4248433 (= e!2638711 (equivClasses!3370 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592))))))))

(assert (= (and d!1249399 res!1746577) b!4248433))

(declare-fun m!4833279 () Bool)

(assert (=> d!1249399 m!4833279))

(declare-fun m!4833281 () Bool)

(assert (=> b!4248433 m!4833281))

(assert (=> b!4248387 d!1249399))

(declare-fun d!1249403 () Bool)

(assert (=> d!1249403 (= (isEmpty!27837 longerInput!62) ((_ is Nil!47056) longerInput!62))))

(assert (=> b!4248396 d!1249403))

(declare-fun b!4248449 () Bool)

(declare-fun res!1746585 () Bool)

(declare-fun e!2638720 () Bool)

(assert (=> b!4248449 (=> (not res!1746585) (not e!2638720))))

(declare-fun lt!1508061 () List!47180)

(assert (=> b!4248449 (= res!1746585 (= (size!34453 lt!1508061) (+ (size!34453 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) (size!34453 (_2!25443 (v!41053 lt!1508052))))))))

(declare-fun d!1249405 () Bool)

(assert (=> d!1249405 e!2638720))

(declare-fun res!1746584 () Bool)

(assert (=> d!1249405 (=> (not res!1746584) (not e!2638720))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7396 (List!47180) (InoxSet C!25936))

(assert (=> d!1249405 (= res!1746584 (= (content!7396 lt!1508061) ((_ map or) (content!7396 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) (content!7396 (_2!25443 (v!41053 lt!1508052))))))))

(declare-fun e!2638719 () List!47180)

(assert (=> d!1249405 (= lt!1508061 e!2638719)))

(declare-fun c!721501 () Bool)

(assert (=> d!1249405 (= c!721501 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))

(assert (=> d!1249405 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))) (_2!25443 (v!41053 lt!1508052))) lt!1508061)))

(declare-fun b!4248450 () Bool)

(assert (=> b!4248450 (= e!2638720 (or (not (= (_2!25443 (v!41053 lt!1508052)) Nil!47056)) (= lt!1508061 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))))))

(declare-fun b!4248448 () Bool)

(assert (=> b!4248448 (= e!2638719 (Cons!47056 (h!52476 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) (++!11975 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) (_2!25443 (v!41053 lt!1508052)))))))

(declare-fun b!4248447 () Bool)

(assert (=> b!4248447 (= e!2638719 (_2!25443 (v!41053 lt!1508052)))))

(assert (= (and d!1249405 c!721501) b!4248447))

(assert (= (and d!1249405 (not c!721501)) b!4248448))

(assert (= (and d!1249405 res!1746584) b!4248449))

(assert (= (and b!4248449 res!1746585) b!4248450))

(declare-fun m!4833307 () Bool)

(assert (=> b!4248449 m!4833307))

(assert (=> b!4248449 m!4833241))

(declare-fun m!4833309 () Bool)

(assert (=> b!4248449 m!4833309))

(declare-fun m!4833311 () Bool)

(assert (=> b!4248449 m!4833311))

(declare-fun m!4833313 () Bool)

(assert (=> d!1249405 m!4833313))

(assert (=> d!1249405 m!4833241))

(declare-fun m!4833315 () Bool)

(assert (=> d!1249405 m!4833315))

(declare-fun m!4833317 () Bool)

(assert (=> d!1249405 m!4833317))

(declare-fun m!4833319 () Bool)

(assert (=> b!4248448 m!4833319))

(assert (=> b!4248385 d!1249405))

(declare-fun d!1249415 () Bool)

(declare-fun list!16954 (Conc!14175) List!47180)

(assert (=> d!1249415 (= (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))) (list!16954 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))

(declare-fun bs!598575 () Bool)

(assert (= bs!598575 d!1249415))

(declare-fun m!4833321 () Bool)

(assert (=> bs!598575 m!4833321))

(assert (=> b!4248385 d!1249415))

(declare-fun d!1249417 () Bool)

(declare-fun lt!1508066 () BalanceConc!27944)

(assert (=> d!1249417 (= (list!16952 lt!1508066) (originalCharacters!8308 (_1!25443 (v!41053 lt!1508052))))))

(assert (=> d!1249417 (= lt!1508066 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))))

(assert (=> d!1249417 (= (charsOf!5306 (_1!25443 (v!41053 lt!1508052))) lt!1508066)))

(declare-fun b_lambda!125139 () Bool)

(assert (=> (not b_lambda!125139) (not d!1249417)))

(declare-fun tb!256035 () Bool)

(declare-fun t!352035 () Bool)

(assert (=> (and b!4248397 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052)))))) t!352035) tb!256035))

(declare-fun b!4248459 () Bool)

(declare-fun e!2638727 () Bool)

(declare-fun tp!1303395 () Bool)

(assert (=> b!4248459 (= e!2638727 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))) tp!1303395))))

(declare-fun result!312232 () Bool)

(assert (=> tb!256035 (= result!312232 (and (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))) e!2638727))))

(assert (= tb!256035 b!4248459))

(declare-fun m!4833351 () Bool)

(assert (=> b!4248459 m!4833351))

(declare-fun m!4833353 () Bool)

(assert (=> tb!256035 m!4833353))

(assert (=> d!1249417 t!352035))

(declare-fun b_and!336701 () Bool)

(assert (= b_and!336685 (and (=> t!352035 result!312232) b_and!336701)))

(declare-fun tb!256037 () Bool)

(declare-fun t!352037 () Bool)

(assert (=> (and b!4248399 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052)))))) t!352037) tb!256037))

(declare-fun result!312234 () Bool)

(assert (= result!312234 result!312232))

(assert (=> d!1249417 t!352037))

(declare-fun b_and!336703 () Bool)

(assert (= b_and!336687 (and (=> t!352037 result!312234) b_and!336703)))

(declare-fun m!4833355 () Bool)

(assert (=> d!1249417 m!4833355))

(declare-fun m!4833357 () Bool)

(assert (=> d!1249417 m!4833357))

(assert (=> b!4248385 d!1249417))

(declare-fun d!1249427 () Bool)

(assert (=> d!1249427 (= (inv!61820 (tag!8828 (h!52477 rules!2971))) (= (mod (str.len (value!247509 (tag!8828 (h!52477 rules!2971)))) 2) 0))))

(assert (=> b!4248386 d!1249427))

(declare-fun d!1249429 () Bool)

(declare-fun res!1746591 () Bool)

(declare-fun e!2638730 () Bool)

(assert (=> d!1249429 (=> (not res!1746591) (not e!2638730))))

(assert (=> d!1249429 (= res!1746591 (semiInverseModEq!3471 (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toValue!10732 (transformation!7964 (h!52477 rules!2971)))))))

(assert (=> d!1249429 (= (inv!61823 (transformation!7964 (h!52477 rules!2971))) e!2638730)))

(declare-fun b!4248466 () Bool)

(assert (=> b!4248466 (= e!2638730 (equivClasses!3370 (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toValue!10732 (transformation!7964 (h!52477 rules!2971)))))))

(assert (= (and d!1249429 res!1746591) b!4248466))

(declare-fun m!4833359 () Bool)

(assert (=> d!1249429 m!4833359))

(declare-fun m!4833361 () Bool)

(assert (=> b!4248466 m!4833361))

(assert (=> b!4248386 d!1249429))

(declare-fun d!1249431 () Bool)

(assert (=> d!1249431 (= (isEmpty!27836 rules!2971) ((_ is Nil!47057) rules!2971))))

(assert (=> b!4248384 d!1249431))

(declare-fun b!4248542 () Bool)

(declare-fun e!2638764 () Bool)

(declare-fun lt!1508103 () Option!10098)

(declare-fun contains!9753 (List!47181 Rule!15728) Bool)

(declare-fun get!15282 (Option!10098) tuple2!44618)

(assert (=> b!4248542 (= e!2638764 (contains!9753 rules!2971 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))))

(declare-fun b!4248543 () Bool)

(declare-fun e!2638765 () Option!10098)

(declare-fun lt!1508102 () Option!10098)

(declare-fun lt!1508101 () Option!10098)

(assert (=> b!4248543 (= e!2638765 (ite (and ((_ is None!10097) lt!1508102) ((_ is None!10097) lt!1508101)) None!10097 (ite ((_ is None!10097) lt!1508101) lt!1508102 (ite ((_ is None!10097) lt!1508102) lt!1508101 (ite (>= (size!34452 (_1!25443 (v!41053 lt!1508102))) (size!34452 (_1!25443 (v!41053 lt!1508101)))) lt!1508102 lt!1508101)))))))

(declare-fun call!293939 () Option!10098)

(assert (=> b!4248543 (= lt!1508102 call!293939)))

(assert (=> b!4248543 (= lt!1508101 (maxPrefix!4515 thiss!21641 (t!352016 rules!2971) shorterInput!62))))

(declare-fun bm!293934 () Bool)

(declare-fun maxPrefixOneRule!3468 (LexerInterface!7559 Rule!15728 List!47180) Option!10098)

(assert (=> bm!293934 (= call!293939 (maxPrefixOneRule!3468 thiss!21641 (h!52477 rules!2971) shorterInput!62))))

(declare-fun b!4248544 () Bool)

(assert (=> b!4248544 (= e!2638765 call!293939)))

(declare-fun d!1249433 () Bool)

(declare-fun e!2638766 () Bool)

(assert (=> d!1249433 e!2638766))

(declare-fun res!1746644 () Bool)

(assert (=> d!1249433 (=> res!1746644 e!2638766)))

(declare-fun isEmpty!27840 (Option!10098) Bool)

(assert (=> d!1249433 (= res!1746644 (isEmpty!27840 lt!1508103))))

(assert (=> d!1249433 (= lt!1508103 e!2638765)))

(declare-fun c!721519 () Bool)

(assert (=> d!1249433 (= c!721519 (and ((_ is Cons!47057) rules!2971) ((_ is Nil!47057) (t!352016 rules!2971))))))

(declare-datatypes ((Unit!66051 0))(
  ( (Unit!66052) )
))
(declare-fun lt!1508104 () Unit!66051)

(declare-fun lt!1508105 () Unit!66051)

(assert (=> d!1249433 (= lt!1508104 lt!1508105)))

(declare-fun isPrefix!4743 (List!47180 List!47180) Bool)

(assert (=> d!1249433 (isPrefix!4743 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3140 (List!47180 List!47180) Unit!66051)

(assert (=> d!1249433 (= lt!1508105 (lemmaIsPrefixRefl!3140 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!2994 (LexerInterface!7559 List!47181) Bool)

(assert (=> d!1249433 (rulesValidInductive!2994 thiss!21641 rules!2971)))

(assert (=> d!1249433 (= (maxPrefix!4515 thiss!21641 rules!2971 shorterInput!62) lt!1508103)))

(declare-fun b!4248545 () Bool)

(declare-fun res!1746642 () Bool)

(assert (=> b!4248545 (=> (not res!1746642) (not e!2638764))))

(assert (=> b!4248545 (= res!1746642 (< (size!34453 (_2!25443 (get!15282 lt!1508103))) (size!34453 shorterInput!62)))))

(declare-fun b!4248546 () Bool)

(assert (=> b!4248546 (= e!2638766 e!2638764)))

(declare-fun res!1746641 () Bool)

(assert (=> b!4248546 (=> (not res!1746641) (not e!2638764))))

(declare-fun isDefined!7458 (Option!10098) Bool)

(assert (=> b!4248546 (= res!1746641 (isDefined!7458 lt!1508103))))

(declare-fun b!4248547 () Bool)

(declare-fun res!1746647 () Bool)

(assert (=> b!4248547 (=> (not res!1746647) (not e!2638764))))

(assert (=> b!4248547 (= res!1746647 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))) (_2!25443 (get!15282 lt!1508103))) shorterInput!62))))

(declare-fun b!4248548 () Bool)

(declare-fun res!1746646 () Bool)

(assert (=> b!4248548 (=> (not res!1746646) (not e!2638764))))

(declare-fun matchR!6465 (Regex!12869 List!47180) Bool)

(assert (=> b!4248548 (= res!1746646 (matchR!6465 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))))))

(declare-fun b!4248549 () Bool)

(declare-fun res!1746645 () Bool)

(assert (=> b!4248549 (=> (not res!1746645) (not e!2638764))))

(assert (=> b!4248549 (= res!1746645 (= (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))) (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103)))))))

(declare-fun b!4248550 () Bool)

(declare-fun res!1746643 () Bool)

(assert (=> b!4248550 (=> (not res!1746643) (not e!2638764))))

(declare-fun apply!10770 (TokenValueInjection!15816 BalanceConc!27944) TokenValue!8194)

(declare-fun seqFromList!5830 (List!47180) BalanceConc!27944)

(assert (=> b!4248550 (= res!1746643 (= (value!247510 (_1!25443 (get!15282 lt!1508103))) (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103)))))))))

(assert (= (and d!1249433 c!721519) b!4248544))

(assert (= (and d!1249433 (not c!721519)) b!4248543))

(assert (= (or b!4248544 b!4248543) bm!293934))

(assert (= (and d!1249433 (not res!1746644)) b!4248546))

(assert (= (and b!4248546 res!1746641) b!4248549))

(assert (= (and b!4248549 res!1746645) b!4248545))

(assert (= (and b!4248545 res!1746642) b!4248547))

(assert (= (and b!4248547 res!1746647) b!4248550))

(assert (= (and b!4248550 res!1746643) b!4248548))

(assert (= (and b!4248548 res!1746646) b!4248542))

(declare-fun m!4833443 () Bool)

(assert (=> bm!293934 m!4833443))

(declare-fun m!4833445 () Bool)

(assert (=> b!4248543 m!4833445))

(declare-fun m!4833447 () Bool)

(assert (=> b!4248545 m!4833447))

(declare-fun m!4833449 () Bool)

(assert (=> b!4248545 m!4833449))

(assert (=> b!4248545 m!4833253))

(declare-fun m!4833451 () Bool)

(assert (=> d!1249433 m!4833451))

(declare-fun m!4833453 () Bool)

(assert (=> d!1249433 m!4833453))

(declare-fun m!4833455 () Bool)

(assert (=> d!1249433 m!4833455))

(declare-fun m!4833457 () Bool)

(assert (=> d!1249433 m!4833457))

(assert (=> b!4248550 m!4833447))

(declare-fun m!4833459 () Bool)

(assert (=> b!4248550 m!4833459))

(assert (=> b!4248550 m!4833459))

(declare-fun m!4833461 () Bool)

(assert (=> b!4248550 m!4833461))

(assert (=> b!4248542 m!4833447))

(declare-fun m!4833463 () Bool)

(assert (=> b!4248542 m!4833463))

(declare-fun m!4833465 () Bool)

(assert (=> b!4248546 m!4833465))

(assert (=> b!4248549 m!4833447))

(declare-fun m!4833467 () Bool)

(assert (=> b!4248549 m!4833467))

(assert (=> b!4248549 m!4833467))

(declare-fun m!4833469 () Bool)

(assert (=> b!4248549 m!4833469))

(assert (=> b!4248547 m!4833447))

(assert (=> b!4248547 m!4833467))

(assert (=> b!4248547 m!4833467))

(assert (=> b!4248547 m!4833469))

(assert (=> b!4248547 m!4833469))

(declare-fun m!4833471 () Bool)

(assert (=> b!4248547 m!4833471))

(assert (=> b!4248548 m!4833447))

(assert (=> b!4248548 m!4833467))

(assert (=> b!4248548 m!4833467))

(assert (=> b!4248548 m!4833469))

(assert (=> b!4248548 m!4833469))

(declare-fun m!4833473 () Bool)

(assert (=> b!4248548 m!4833473))

(assert (=> b!4248395 d!1249433))

(declare-fun b!4248566 () Bool)

(declare-fun e!2638776 () Bool)

(declare-fun lt!1508117 () Option!10098)

(assert (=> b!4248566 (= e!2638776 (contains!9753 rules!2971 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))))

(declare-fun b!4248567 () Bool)

(declare-fun e!2638777 () Option!10098)

(declare-fun lt!1508116 () Option!10098)

(declare-fun lt!1508115 () Option!10098)

(assert (=> b!4248567 (= e!2638777 (ite (and ((_ is None!10097) lt!1508116) ((_ is None!10097) lt!1508115)) None!10097 (ite ((_ is None!10097) lt!1508115) lt!1508116 (ite ((_ is None!10097) lt!1508116) lt!1508115 (ite (>= (size!34452 (_1!25443 (v!41053 lt!1508116))) (size!34452 (_1!25443 (v!41053 lt!1508115)))) lt!1508116 lt!1508115)))))))

(declare-fun call!293940 () Option!10098)

(assert (=> b!4248567 (= lt!1508116 call!293940)))

(assert (=> b!4248567 (= lt!1508115 (maxPrefix!4515 thiss!21641 (t!352016 rules!2971) longerInput!62))))

(declare-fun bm!293935 () Bool)

(assert (=> bm!293935 (= call!293940 (maxPrefixOneRule!3468 thiss!21641 (h!52477 rules!2971) longerInput!62))))

(declare-fun b!4248568 () Bool)

(assert (=> b!4248568 (= e!2638777 call!293940)))

(declare-fun d!1249455 () Bool)

(declare-fun e!2638778 () Bool)

(assert (=> d!1249455 e!2638778))

(declare-fun res!1746654 () Bool)

(assert (=> d!1249455 (=> res!1746654 e!2638778)))

(assert (=> d!1249455 (= res!1746654 (isEmpty!27840 lt!1508117))))

(assert (=> d!1249455 (= lt!1508117 e!2638777)))

(declare-fun c!721526 () Bool)

(assert (=> d!1249455 (= c!721526 (and ((_ is Cons!47057) rules!2971) ((_ is Nil!47057) (t!352016 rules!2971))))))

(declare-fun lt!1508118 () Unit!66051)

(declare-fun lt!1508119 () Unit!66051)

(assert (=> d!1249455 (= lt!1508118 lt!1508119)))

(assert (=> d!1249455 (isPrefix!4743 longerInput!62 longerInput!62)))

(assert (=> d!1249455 (= lt!1508119 (lemmaIsPrefixRefl!3140 longerInput!62 longerInput!62))))

(assert (=> d!1249455 (rulesValidInductive!2994 thiss!21641 rules!2971)))

(assert (=> d!1249455 (= (maxPrefix!4515 thiss!21641 rules!2971 longerInput!62) lt!1508117)))

(declare-fun b!4248569 () Bool)

(declare-fun res!1746652 () Bool)

(assert (=> b!4248569 (=> (not res!1746652) (not e!2638776))))

(assert (=> b!4248569 (= res!1746652 (< (size!34453 (_2!25443 (get!15282 lt!1508117))) (size!34453 longerInput!62)))))

(declare-fun b!4248570 () Bool)

(assert (=> b!4248570 (= e!2638778 e!2638776)))

(declare-fun res!1746651 () Bool)

(assert (=> b!4248570 (=> (not res!1746651) (not e!2638776))))

(assert (=> b!4248570 (= res!1746651 (isDefined!7458 lt!1508117))))

(declare-fun b!4248571 () Bool)

(declare-fun res!1746657 () Bool)

(assert (=> b!4248571 (=> (not res!1746657) (not e!2638776))))

(assert (=> b!4248571 (= res!1746657 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))) (_2!25443 (get!15282 lt!1508117))) longerInput!62))))

(declare-fun b!4248572 () Bool)

(declare-fun res!1746656 () Bool)

(assert (=> b!4248572 (=> (not res!1746656) (not e!2638776))))

(assert (=> b!4248572 (= res!1746656 (matchR!6465 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun b!4248573 () Bool)

(declare-fun res!1746655 () Bool)

(assert (=> b!4248573 (=> (not res!1746655) (not e!2638776))))

(assert (=> b!4248573 (= res!1746655 (= (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))) (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117)))))))

(declare-fun b!4248574 () Bool)

(declare-fun res!1746653 () Bool)

(assert (=> b!4248574 (=> (not res!1746653) (not e!2638776))))

(assert (=> b!4248574 (= res!1746653 (= (value!247510 (_1!25443 (get!15282 lt!1508117))) (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117)))))))))

(assert (= (and d!1249455 c!721526) b!4248568))

(assert (= (and d!1249455 (not c!721526)) b!4248567))

(assert (= (or b!4248568 b!4248567) bm!293935))

(assert (= (and d!1249455 (not res!1746654)) b!4248570))

(assert (= (and b!4248570 res!1746651) b!4248573))

(assert (= (and b!4248573 res!1746655) b!4248569))

(assert (= (and b!4248569 res!1746652) b!4248571))

(assert (= (and b!4248571 res!1746657) b!4248574))

(assert (= (and b!4248574 res!1746653) b!4248572))

(assert (= (and b!4248572 res!1746656) b!4248566))

(declare-fun m!4833483 () Bool)

(assert (=> bm!293935 m!4833483))

(declare-fun m!4833485 () Bool)

(assert (=> b!4248567 m!4833485))

(declare-fun m!4833487 () Bool)

(assert (=> b!4248569 m!4833487))

(declare-fun m!4833489 () Bool)

(assert (=> b!4248569 m!4833489))

(assert (=> b!4248569 m!4833251))

(declare-fun m!4833491 () Bool)

(assert (=> d!1249455 m!4833491))

(declare-fun m!4833493 () Bool)

(assert (=> d!1249455 m!4833493))

(declare-fun m!4833495 () Bool)

(assert (=> d!1249455 m!4833495))

(assert (=> d!1249455 m!4833457))

(assert (=> b!4248574 m!4833487))

(declare-fun m!4833497 () Bool)

(assert (=> b!4248574 m!4833497))

(assert (=> b!4248574 m!4833497))

(declare-fun m!4833499 () Bool)

(assert (=> b!4248574 m!4833499))

(assert (=> b!4248566 m!4833487))

(declare-fun m!4833501 () Bool)

(assert (=> b!4248566 m!4833501))

(declare-fun m!4833503 () Bool)

(assert (=> b!4248570 m!4833503))

(assert (=> b!4248573 m!4833487))

(declare-fun m!4833505 () Bool)

(assert (=> b!4248573 m!4833505))

(assert (=> b!4248573 m!4833505))

(declare-fun m!4833507 () Bool)

(assert (=> b!4248573 m!4833507))

(assert (=> b!4248571 m!4833487))

(assert (=> b!4248571 m!4833505))

(assert (=> b!4248571 m!4833505))

(assert (=> b!4248571 m!4833507))

(assert (=> b!4248571 m!4833507))

(declare-fun m!4833509 () Bool)

(assert (=> b!4248571 m!4833509))

(assert (=> b!4248572 m!4833487))

(assert (=> b!4248572 m!4833505))

(assert (=> b!4248572 m!4833505))

(assert (=> b!4248572 m!4833507))

(assert (=> b!4248572 m!4833507))

(declare-fun m!4833511 () Bool)

(assert (=> b!4248572 m!4833511))

(assert (=> b!4248395 d!1249455))

(declare-fun b!4248636 () Bool)

(declare-fun e!2638826 () Bool)

(declare-fun lt!1508127 () tuple2!44620)

(assert (=> b!4248636 (= e!2638826 (= (_2!25444 lt!1508127) longerInput!62))))

(declare-fun b!4248637 () Bool)

(declare-fun e!2638825 () Bool)

(assert (=> b!4248637 (= e!2638826 e!2638825)))

(declare-fun res!1746660 () Bool)

(assert (=> b!4248637 (= res!1746660 (< (size!34453 (_2!25444 lt!1508127)) (size!34453 longerInput!62)))))

(assert (=> b!4248637 (=> (not res!1746660) (not e!2638825))))

(declare-fun b!4248638 () Bool)

(declare-fun e!2638827 () tuple2!44620)

(assert (=> b!4248638 (= e!2638827 (tuple2!44621 Nil!47058 longerInput!62))))

(declare-fun b!4248639 () Bool)

(declare-fun isEmpty!27841 (List!47182) Bool)

(assert (=> b!4248639 (= e!2638825 (not (isEmpty!27841 (_1!25444 lt!1508127))))))

(declare-fun b!4248640 () Bool)

(declare-fun lt!1508126 () Option!10098)

(declare-fun lt!1508128 () tuple2!44620)

(assert (=> b!4248640 (= e!2638827 (tuple2!44621 (Cons!47058 (_1!25443 (v!41053 lt!1508126)) (_1!25444 lt!1508128)) (_2!25444 lt!1508128)))))

(assert (=> b!4248640 (= lt!1508128 (lexList!2065 thiss!21641 rules!2971 (_2!25443 (v!41053 lt!1508126))))))

(declare-fun d!1249457 () Bool)

(assert (=> d!1249457 e!2638826))

(declare-fun c!721531 () Bool)

(declare-fun size!34455 (List!47182) Int)

(assert (=> d!1249457 (= c!721531 (> (size!34455 (_1!25444 lt!1508127)) 0))))

(assert (=> d!1249457 (= lt!1508127 e!2638827)))

(declare-fun c!721532 () Bool)

(assert (=> d!1249457 (= c!721532 ((_ is Some!10097) lt!1508126))))

(assert (=> d!1249457 (= lt!1508126 (maxPrefix!4515 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1249457 (= (lexList!2065 thiss!21641 rules!2971 longerInput!62) lt!1508127)))

(assert (= (and d!1249457 c!721532) b!4248640))

(assert (= (and d!1249457 (not c!721532)) b!4248638))

(assert (= (and d!1249457 c!721531) b!4248637))

(assert (= (and d!1249457 (not c!721531)) b!4248636))

(assert (= (and b!4248637 res!1746660) b!4248639))

(declare-fun m!4833525 () Bool)

(assert (=> b!4248637 m!4833525))

(assert (=> b!4248637 m!4833251))

(declare-fun m!4833527 () Bool)

(assert (=> b!4248639 m!4833527))

(declare-fun m!4833529 () Bool)

(assert (=> b!4248640 m!4833529))

(declare-fun m!4833531 () Bool)

(assert (=> d!1249457 m!4833531))

(assert (=> d!1249457 m!4833223))

(assert (=> b!4248393 d!1249457))

(declare-fun b!4248643 () Bool)

(declare-fun res!1746662 () Bool)

(declare-fun e!2638829 () Bool)

(assert (=> b!4248643 (=> (not res!1746662) (not e!2638829))))

(declare-fun lt!1508129 () List!47180)

(assert (=> b!4248643 (= res!1746662 (= (size!34453 lt!1508129) (+ (size!34453 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) (size!34453 (_2!25443 (v!41053 lt!1508051))))))))

(declare-fun d!1249459 () Bool)

(assert (=> d!1249459 e!2638829))

(declare-fun res!1746661 () Bool)

(assert (=> d!1249459 (=> (not res!1746661) (not e!2638829))))

(assert (=> d!1249459 (= res!1746661 (= (content!7396 lt!1508129) ((_ map or) (content!7396 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) (content!7396 (_2!25443 (v!41053 lt!1508051))))))))

(declare-fun e!2638828 () List!47180)

(assert (=> d!1249459 (= lt!1508129 e!2638828)))

(declare-fun c!721533 () Bool)

(assert (=> d!1249459 (= c!721533 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))

(assert (=> d!1249459 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))) (_2!25443 (v!41053 lt!1508051))) lt!1508129)))

(declare-fun b!4248644 () Bool)

(assert (=> b!4248644 (= e!2638829 (or (not (= (_2!25443 (v!41053 lt!1508051)) Nil!47056)) (= lt!1508129 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))))))

(declare-fun b!4248642 () Bool)

(assert (=> b!4248642 (= e!2638828 (Cons!47056 (h!52476 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) (++!11975 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) (_2!25443 (v!41053 lt!1508051)))))))

(declare-fun b!4248641 () Bool)

(assert (=> b!4248641 (= e!2638828 (_2!25443 (v!41053 lt!1508051)))))

(assert (= (and d!1249459 c!721533) b!4248641))

(assert (= (and d!1249459 (not c!721533)) b!4248642))

(assert (= (and d!1249459 res!1746661) b!4248643))

(assert (= (and b!4248643 res!1746662) b!4248644))

(declare-fun m!4833533 () Bool)

(assert (=> b!4248643 m!4833533))

(assert (=> b!4248643 m!4833247))

(declare-fun m!4833535 () Bool)

(assert (=> b!4248643 m!4833535))

(declare-fun m!4833537 () Bool)

(assert (=> b!4248643 m!4833537))

(declare-fun m!4833539 () Bool)

(assert (=> d!1249459 m!4833539))

(assert (=> d!1249459 m!4833247))

(declare-fun m!4833541 () Bool)

(assert (=> d!1249459 m!4833541))

(declare-fun m!4833543 () Bool)

(assert (=> d!1249459 m!4833543))

(declare-fun m!4833545 () Bool)

(assert (=> b!4248642 m!4833545))

(assert (=> b!4248392 d!1249459))

(declare-fun d!1249461 () Bool)

(assert (=> d!1249461 (= (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))) (list!16954 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))

(declare-fun bs!598577 () Bool)

(assert (= bs!598577 d!1249461))

(declare-fun m!4833547 () Bool)

(assert (=> bs!598577 m!4833547))

(assert (=> b!4248392 d!1249461))

(declare-fun d!1249463 () Bool)

(declare-fun lt!1508130 () BalanceConc!27944)

(assert (=> d!1249463 (= (list!16952 lt!1508130) (originalCharacters!8308 (_1!25443 (v!41053 lt!1508051))))))

(assert (=> d!1249463 (= lt!1508130 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))))

(assert (=> d!1249463 (= (charsOf!5306 (_1!25443 (v!41053 lt!1508051))) lt!1508130)))

(declare-fun b_lambda!125143 () Bool)

(assert (=> (not b_lambda!125143) (not d!1249463)))

(declare-fun tb!256051 () Bool)

(declare-fun t!352051 () Bool)

(assert (=> (and b!4248397 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051)))))) t!352051) tb!256051))

(declare-fun b!4248645 () Bool)

(declare-fun e!2638830 () Bool)

(declare-fun tp!1303449 () Bool)

(assert (=> b!4248645 (= e!2638830 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))) tp!1303449))))

(declare-fun result!312256 () Bool)

(assert (=> tb!256051 (= result!312256 (and (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))) e!2638830))))

(assert (= tb!256051 b!4248645))

(declare-fun m!4833549 () Bool)

(assert (=> b!4248645 m!4833549))

(declare-fun m!4833551 () Bool)

(assert (=> tb!256051 m!4833551))

(assert (=> d!1249463 t!352051))

(declare-fun b_and!336713 () Bool)

(assert (= b_and!336701 (and (=> t!352051 result!312256) b_and!336713)))

(declare-fun t!352053 () Bool)

(declare-fun tb!256053 () Bool)

(assert (=> (and b!4248399 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051)))))) t!352053) tb!256053))

(declare-fun result!312258 () Bool)

(assert (= result!312258 result!312256))

(assert (=> d!1249463 t!352053))

(declare-fun b_and!336715 () Bool)

(assert (= b_and!336703 (and (=> t!352053 result!312258) b_and!336715)))

(declare-fun m!4833553 () Bool)

(assert (=> d!1249463 m!4833553))

(declare-fun m!4833555 () Bool)

(assert (=> d!1249463 m!4833555))

(assert (=> b!4248392 d!1249463))

(declare-fun d!1249465 () Bool)

(declare-fun c!721538 () Bool)

(assert (=> d!1249465 (= c!721538 ((_ is IntegerValue!24582) (value!247510 (h!52478 tokens!592))))))

(declare-fun e!2638839 () Bool)

(assert (=> d!1249465 (= (inv!21 (value!247510 (h!52478 tokens!592))) e!2638839)))

(declare-fun b!4248656 () Bool)

(declare-fun inv!16 (TokenValue!8194) Bool)

(assert (=> b!4248656 (= e!2638839 (inv!16 (value!247510 (h!52478 tokens!592))))))

(declare-fun b!4248657 () Bool)

(declare-fun e!2638837 () Bool)

(declare-fun inv!15 (TokenValue!8194) Bool)

(assert (=> b!4248657 (= e!2638837 (inv!15 (value!247510 (h!52478 tokens!592))))))

(declare-fun b!4248658 () Bool)

(declare-fun e!2638838 () Bool)

(assert (=> b!4248658 (= e!2638839 e!2638838)))

(declare-fun c!721539 () Bool)

(assert (=> b!4248658 (= c!721539 ((_ is IntegerValue!24583) (value!247510 (h!52478 tokens!592))))))

(declare-fun b!4248659 () Bool)

(declare-fun res!1746665 () Bool)

(assert (=> b!4248659 (=> res!1746665 e!2638837)))

(assert (=> b!4248659 (= res!1746665 (not ((_ is IntegerValue!24584) (value!247510 (h!52478 tokens!592)))))))

(assert (=> b!4248659 (= e!2638838 e!2638837)))

(declare-fun b!4248660 () Bool)

(declare-fun inv!17 (TokenValue!8194) Bool)

(assert (=> b!4248660 (= e!2638838 (inv!17 (value!247510 (h!52478 tokens!592))))))

(assert (= (and d!1249465 c!721538) b!4248656))

(assert (= (and d!1249465 (not c!721538)) b!4248658))

(assert (= (and b!4248658 c!721539) b!4248660))

(assert (= (and b!4248658 (not c!721539)) b!4248659))

(assert (= (and b!4248659 (not res!1746665)) b!4248657))

(declare-fun m!4833557 () Bool)

(assert (=> b!4248656 m!4833557))

(declare-fun m!4833559 () Bool)

(assert (=> b!4248657 m!4833559))

(declare-fun m!4833561 () Bool)

(assert (=> b!4248660 m!4833561))

(assert (=> b!4248391 d!1249465))

(declare-fun d!1249467 () Bool)

(declare-fun res!1746668 () Bool)

(declare-fun e!2638842 () Bool)

(assert (=> d!1249467 (=> (not res!1746668) (not e!2638842))))

(declare-fun rulesValid!3093 (LexerInterface!7559 List!47181) Bool)

(assert (=> d!1249467 (= res!1746668 (rulesValid!3093 thiss!21641 rules!2971))))

(assert (=> d!1249467 (= (rulesInvariant!6670 thiss!21641 rules!2971) e!2638842)))

(declare-fun b!4248663 () Bool)

(declare-datatypes ((List!47184 0))(
  ( (Nil!47060) (Cons!47060 (h!52480 String!54900) (t!352067 List!47184)) )
))
(declare-fun noDuplicateTag!3254 (LexerInterface!7559 List!47181 List!47184) Bool)

(assert (=> b!4248663 (= e!2638842 (noDuplicateTag!3254 thiss!21641 rules!2971 Nil!47060))))

(assert (= (and d!1249467 res!1746668) b!4248663))

(declare-fun m!4833563 () Bool)

(assert (=> d!1249467 m!4833563))

(declare-fun m!4833565 () Bool)

(assert (=> b!4248663 m!4833565))

(assert (=> b!4248389 d!1249467))

(declare-fun d!1249469 () Bool)

(declare-fun lt!1508133 () Int)

(assert (=> d!1249469 (>= lt!1508133 0)))

(declare-fun e!2638845 () Int)

(assert (=> d!1249469 (= lt!1508133 e!2638845)))

(declare-fun c!721542 () Bool)

(assert (=> d!1249469 (= c!721542 ((_ is Nil!47056) longerInput!62))))

(assert (=> d!1249469 (= (size!34453 longerInput!62) lt!1508133)))

(declare-fun b!4248668 () Bool)

(assert (=> b!4248668 (= e!2638845 0)))

(declare-fun b!4248669 () Bool)

(assert (=> b!4248669 (= e!2638845 (+ 1 (size!34453 (t!352015 longerInput!62))))))

(assert (= (and d!1249469 c!721542) b!4248668))

(assert (= (and d!1249469 (not c!721542)) b!4248669))

(declare-fun m!4833567 () Bool)

(assert (=> b!4248669 m!4833567))

(assert (=> b!4248390 d!1249469))

(declare-fun d!1249471 () Bool)

(declare-fun lt!1508134 () Int)

(assert (=> d!1249471 (>= lt!1508134 0)))

(declare-fun e!2638846 () Int)

(assert (=> d!1249471 (= lt!1508134 e!2638846)))

(declare-fun c!721543 () Bool)

(assert (=> d!1249471 (= c!721543 ((_ is Nil!47056) shorterInput!62))))

(assert (=> d!1249471 (= (size!34453 shorterInput!62) lt!1508134)))

(declare-fun b!4248670 () Bool)

(assert (=> b!4248670 (= e!2638846 0)))

(declare-fun b!4248671 () Bool)

(assert (=> b!4248671 (= e!2638846 (+ 1 (size!34453 (t!352015 shorterInput!62))))))

(assert (= (and d!1249471 c!721543) b!4248670))

(assert (= (and d!1249471 (not c!721543)) b!4248671))

(declare-fun m!4833569 () Bool)

(assert (=> b!4248671 m!4833569))

(assert (=> b!4248390 d!1249471))

(declare-fun b!4248685 () Bool)

(declare-fun b_free!126227 () Bool)

(declare-fun b_next!126931 () Bool)

(assert (=> b!4248685 (= b_free!126227 (not b_next!126931))))

(declare-fun tp!1303463 () Bool)

(declare-fun b_and!336717 () Bool)

(assert (=> b!4248685 (= tp!1303463 b_and!336717)))

(declare-fun b_free!126229 () Bool)

(declare-fun b_next!126933 () Bool)

(assert (=> b!4248685 (= b_free!126229 (not b_next!126933))))

(declare-fun t!352055 () Bool)

(declare-fun tb!256055 () Bool)

(assert (=> (and b!4248685 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) t!352055) tb!256055))

(declare-fun result!312262 () Bool)

(assert (= result!312262 result!312212))

(assert (=> b!4248409 t!352055))

(declare-fun tb!256057 () Bool)

(declare-fun t!352057 () Bool)

(assert (=> (and b!4248685 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052)))))) t!352057) tb!256057))

(declare-fun result!312264 () Bool)

(assert (= result!312264 result!312232))

(assert (=> d!1249417 t!352057))

(declare-fun t!352059 () Bool)

(declare-fun tb!256059 () Bool)

(assert (=> (and b!4248685 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051)))))) t!352059) tb!256059))

(declare-fun result!312266 () Bool)

(assert (= result!312266 result!312256))

(assert (=> d!1249463 t!352059))

(declare-fun b_and!336719 () Bool)

(declare-fun tp!1303462 () Bool)

(assert (=> b!4248685 (= tp!1303462 (and (=> t!352055 result!312262) (=> t!352057 result!312264) (=> t!352059 result!312266) b_and!336719))))

(declare-fun b!4248684 () Bool)

(declare-fun e!2638864 () Bool)

(declare-fun e!2638859 () Bool)

(declare-fun tp!1303460 () Bool)

(assert (=> b!4248684 (= e!2638859 (and tp!1303460 (inv!61820 (tag!8828 (rule!11096 (h!52478 (t!352017 tokens!592))))) (inv!61823 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) e!2638864))))

(declare-fun e!2638863 () Bool)

(assert (=> b!4248388 (= tp!1303377 e!2638863)))

(declare-fun tp!1303461 () Bool)

(declare-fun e!2638862 () Bool)

(declare-fun b!4248683 () Bool)

(assert (=> b!4248683 (= e!2638862 (and (inv!21 (value!247510 (h!52478 (t!352017 tokens!592)))) e!2638859 tp!1303461))))

(assert (=> b!4248685 (= e!2638864 (and tp!1303463 tp!1303462))))

(declare-fun tp!1303464 () Bool)

(declare-fun b!4248682 () Bool)

(assert (=> b!4248682 (= e!2638863 (and (inv!61824 (h!52478 (t!352017 tokens!592))) e!2638862 tp!1303464))))

(assert (= b!4248684 b!4248685))

(assert (= b!4248683 b!4248684))

(assert (= b!4248682 b!4248683))

(assert (= (and b!4248388 ((_ is Cons!47058) (t!352017 tokens!592))) b!4248682))

(declare-fun m!4833571 () Bool)

(assert (=> b!4248684 m!4833571))

(declare-fun m!4833573 () Bool)

(assert (=> b!4248684 m!4833573))

(declare-fun m!4833575 () Bool)

(assert (=> b!4248683 m!4833575))

(declare-fun m!4833577 () Bool)

(assert (=> b!4248682 m!4833577))

(declare-fun b!4248690 () Bool)

(declare-fun e!2638867 () Bool)

(declare-fun tp!1303467 () Bool)

(assert (=> b!4248690 (= e!2638867 (and tp_is_empty!22729 tp!1303467))))

(assert (=> b!4248394 (= tp!1303375 e!2638867)))

(assert (= (and b!4248394 ((_ is Cons!47056) (t!352015 shorterInput!62))) b!4248690))

(declare-fun b!4248701 () Bool)

(declare-fun b_free!126231 () Bool)

(declare-fun b_next!126935 () Bool)

(assert (=> b!4248701 (= b_free!126231 (not b_next!126935))))

(declare-fun tp!1303479 () Bool)

(declare-fun b_and!336721 () Bool)

(assert (=> b!4248701 (= tp!1303479 b_and!336721)))

(declare-fun b_free!126233 () Bool)

(declare-fun b_next!126937 () Bool)

(assert (=> b!4248701 (= b_free!126233 (not b_next!126937))))

(declare-fun tb!256061 () Bool)

(declare-fun t!352061 () Bool)

(assert (=> (and b!4248701 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) t!352061) tb!256061))

(declare-fun result!312272 () Bool)

(assert (= result!312272 result!312212))

(assert (=> b!4248409 t!352061))

(declare-fun tb!256063 () Bool)

(declare-fun t!352063 () Bool)

(assert (=> (and b!4248701 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052)))))) t!352063) tb!256063))

(declare-fun result!312274 () Bool)

(assert (= result!312274 result!312232))

(assert (=> d!1249417 t!352063))

(declare-fun t!352065 () Bool)

(declare-fun tb!256065 () Bool)

(assert (=> (and b!4248701 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051)))))) t!352065) tb!256065))

(declare-fun result!312276 () Bool)

(assert (= result!312276 result!312256))

(assert (=> d!1249463 t!352065))

(declare-fun tp!1303476 () Bool)

(declare-fun b_and!336723 () Bool)

(assert (=> b!4248701 (= tp!1303476 (and (=> t!352061 result!312272) (=> t!352063 result!312274) (=> t!352065 result!312276) b_and!336723))))

(declare-fun e!2638878 () Bool)

(assert (=> b!4248701 (= e!2638878 (and tp!1303479 tp!1303476))))

(declare-fun tp!1303477 () Bool)

(declare-fun b!4248700 () Bool)

(declare-fun e!2638879 () Bool)

(assert (=> b!4248700 (= e!2638879 (and tp!1303477 (inv!61820 (tag!8828 (h!52477 (t!352016 rules!2971)))) (inv!61823 (transformation!7964 (h!52477 (t!352016 rules!2971)))) e!2638878))))

(declare-fun b!4248699 () Bool)

(declare-fun e!2638877 () Bool)

(declare-fun tp!1303478 () Bool)

(assert (=> b!4248699 (= e!2638877 (and e!2638879 tp!1303478))))

(assert (=> b!4248383 (= tp!1303382 e!2638877)))

(assert (= b!4248700 b!4248701))

(assert (= b!4248699 b!4248700))

(assert (= (and b!4248383 ((_ is Cons!47057) (t!352016 rules!2971))) b!4248699))

(declare-fun m!4833579 () Bool)

(assert (=> b!4248700 m!4833579))

(declare-fun m!4833581 () Bool)

(assert (=> b!4248700 m!4833581))

(declare-fun b!4248702 () Bool)

(declare-fun e!2638880 () Bool)

(declare-fun tp!1303480 () Bool)

(assert (=> b!4248702 (= e!2638880 (and tp_is_empty!22729 tp!1303480))))

(assert (=> b!4248398 (= tp!1303384 e!2638880)))

(assert (= (and b!4248398 ((_ is Cons!47056) (t!352015 longerInput!62))) b!4248702))

(declare-fun e!2638883 () Bool)

(assert (=> b!4248387 (= tp!1303376 e!2638883)))

(declare-fun b!4248714 () Bool)

(declare-fun tp!1303495 () Bool)

(declare-fun tp!1303494 () Bool)

(assert (=> b!4248714 (= e!2638883 (and tp!1303495 tp!1303494))))

(declare-fun b!4248715 () Bool)

(declare-fun tp!1303491 () Bool)

(assert (=> b!4248715 (= e!2638883 tp!1303491)))

(declare-fun b!4248713 () Bool)

(assert (=> b!4248713 (= e!2638883 tp_is_empty!22729)))

(declare-fun b!4248716 () Bool)

(declare-fun tp!1303493 () Bool)

(declare-fun tp!1303492 () Bool)

(assert (=> b!4248716 (= e!2638883 (and tp!1303493 tp!1303492))))

(assert (= (and b!4248387 ((_ is ElementMatch!12869) (regex!7964 (rule!11096 (h!52478 tokens!592))))) b!4248713))

(assert (= (and b!4248387 ((_ is Concat!21064) (regex!7964 (rule!11096 (h!52478 tokens!592))))) b!4248714))

(assert (= (and b!4248387 ((_ is Star!12869) (regex!7964 (rule!11096 (h!52478 tokens!592))))) b!4248715))

(assert (= (and b!4248387 ((_ is Union!12869) (regex!7964 (rule!11096 (h!52478 tokens!592))))) b!4248716))

(declare-fun e!2638884 () Bool)

(assert (=> b!4248386 (= tp!1303380 e!2638884)))

(declare-fun b!4248718 () Bool)

(declare-fun tp!1303500 () Bool)

(declare-fun tp!1303499 () Bool)

(assert (=> b!4248718 (= e!2638884 (and tp!1303500 tp!1303499))))

(declare-fun b!4248719 () Bool)

(declare-fun tp!1303496 () Bool)

(assert (=> b!4248719 (= e!2638884 tp!1303496)))

(declare-fun b!4248717 () Bool)

(assert (=> b!4248717 (= e!2638884 tp_is_empty!22729)))

(declare-fun b!4248720 () Bool)

(declare-fun tp!1303498 () Bool)

(declare-fun tp!1303497 () Bool)

(assert (=> b!4248720 (= e!2638884 (and tp!1303498 tp!1303497))))

(assert (= (and b!4248386 ((_ is ElementMatch!12869) (regex!7964 (h!52477 rules!2971)))) b!4248717))

(assert (= (and b!4248386 ((_ is Concat!21064) (regex!7964 (h!52477 rules!2971)))) b!4248718))

(assert (= (and b!4248386 ((_ is Star!12869) (regex!7964 (h!52477 rules!2971)))) b!4248719))

(assert (= (and b!4248386 ((_ is Union!12869) (regex!7964 (h!52477 rules!2971)))) b!4248720))

(declare-fun b!4248721 () Bool)

(declare-fun e!2638885 () Bool)

(declare-fun tp!1303501 () Bool)

(assert (=> b!4248721 (= e!2638885 (and tp_is_empty!22729 tp!1303501))))

(assert (=> b!4248391 (= tp!1303386 e!2638885)))

(assert (= (and b!4248391 ((_ is Cons!47056) (originalCharacters!8308 (h!52478 tokens!592)))) b!4248721))

(declare-fun b!4248722 () Bool)

(declare-fun e!2638886 () Bool)

(declare-fun tp!1303502 () Bool)

(assert (=> b!4248722 (= e!2638886 (and tp_is_empty!22729 tp!1303502))))

(assert (=> b!4248400 (= tp!1303381 e!2638886)))

(assert (= (and b!4248400 ((_ is Cons!47056) (t!352015 suffix!1284))) b!4248722))

(declare-fun b_lambda!125145 () Bool)

(assert (= b_lambda!125131 (or (and b!4248397 b_free!126213 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))))) (and b!4248399 b_free!126217) (and b!4248685 b_free!126229 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))))) (and b!4248701 b_free!126233 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))))) b_lambda!125145)))

(check-sat (not b!4248657) (not b!4248433) (not b!4248671) (not b!4248574) (not d!1249463) (not b!4248684) (not b_next!126935) (not b!4248571) (not b!4248702) (not b!4248572) (not b!4248548) (not d!1249455) b_and!336721 (not b!4248547) (not b!4248569) (not b!4248682) b_and!336719 (not b!4248550) (not b!4248637) (not d!1249433) (not b_next!126919) (not b!4248639) (not b!4248683) (not bm!293935) (not b_next!126933) (not b!4248715) (not b_next!126921) (not d!1249467) (not b!4248642) (not b_lambda!125143) (not tb!256035) (not b_next!126917) (not b!4248699) (not b!4248549) b_and!336677 (not b!4248700) (not tb!256019) (not b!4248566) (not b!4248410) (not bm!293934) (not b!4248459) (not b!4248722) (not d!1249415) (not d!1249457) b_and!336717 (not b_next!126937) (not d!1249417) (not b!4248543) (not tb!256051) (not d!1249429) (not b_next!126915) (not b_lambda!125139) (not b!4248720) (not b!4248417) (not b!4248409) (not b!4248545) (not b!4248690) (not b!4248573) (not b!4248645) b_and!336723 (not b!4248567) (not b!4248546) (not b_next!126931) b_and!336713 (not d!1249461) (not d!1249399) (not b!4248660) (not d!1249459) (not b!4248718) (not b!4248449) (not b!4248663) b_and!336715 (not b!4248719) (not b!4248643) (not b!4248570) (not d!1249393) b_and!336681 (not b!4248448) (not b!4248640) (not b!4248714) (not b!4248669) (not b!4248716) (not b!4248656) (not b_lambda!125145) (not b!4248542) tp_is_empty!22729 (not d!1249405) (not b!4248721) (not b!4248466))
(check-sat (not b_next!126935) b_and!336721 b_and!336719 (not b_next!126919) (not b_next!126933) (not b_next!126921) (not b_next!126917) b_and!336677 (not b_next!126915) b_and!336723 b_and!336715 b_and!336681 b_and!336717 (not b_next!126937) (not b_next!126931) b_and!336713)
(get-model)

(declare-fun d!1249495 () Bool)

(declare-fun lt!1508142 () Int)

(assert (=> d!1249495 (>= lt!1508142 0)))

(declare-fun e!2638898 () Int)

(assert (=> d!1249495 (= lt!1508142 e!2638898)))

(declare-fun c!721552 () Bool)

(assert (=> d!1249495 (= c!721552 ((_ is Nil!47056) (t!352015 longerInput!62)))))

(assert (=> d!1249495 (= (size!34453 (t!352015 longerInput!62)) lt!1508142)))

(declare-fun b!4248743 () Bool)

(assert (=> b!4248743 (= e!2638898 0)))

(declare-fun b!4248744 () Bool)

(assert (=> b!4248744 (= e!2638898 (+ 1 (size!34453 (t!352015 (t!352015 longerInput!62)))))))

(assert (= (and d!1249495 c!721552) b!4248743))

(assert (= (and d!1249495 (not c!721552)) b!4248744))

(declare-fun m!4833619 () Bool)

(assert (=> b!4248744 m!4833619))

(assert (=> b!4248669 d!1249495))

(declare-fun d!1249497 () Bool)

(declare-fun lt!1508143 () Int)

(assert (=> d!1249497 (>= lt!1508143 0)))

(declare-fun e!2638899 () Int)

(assert (=> d!1249497 (= lt!1508143 e!2638899)))

(declare-fun c!721553 () Bool)

(assert (=> d!1249497 (= c!721553 ((_ is Nil!47056) lt!1508061))))

(assert (=> d!1249497 (= (size!34453 lt!1508061) lt!1508143)))

(declare-fun b!4248745 () Bool)

(assert (=> b!4248745 (= e!2638899 0)))

(declare-fun b!4248746 () Bool)

(assert (=> b!4248746 (= e!2638899 (+ 1 (size!34453 (t!352015 lt!1508061))))))

(assert (= (and d!1249497 c!721553) b!4248745))

(assert (= (and d!1249497 (not c!721553)) b!4248746))

(declare-fun m!4833621 () Bool)

(assert (=> b!4248746 m!4833621))

(assert (=> b!4248449 d!1249497))

(declare-fun d!1249499 () Bool)

(declare-fun lt!1508144 () Int)

(assert (=> d!1249499 (>= lt!1508144 0)))

(declare-fun e!2638900 () Int)

(assert (=> d!1249499 (= lt!1508144 e!2638900)))

(declare-fun c!721554 () Bool)

(assert (=> d!1249499 (= c!721554 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))

(assert (=> d!1249499 (= (size!34453 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) lt!1508144)))

(declare-fun b!4248747 () Bool)

(assert (=> b!4248747 (= e!2638900 0)))

(declare-fun b!4248748 () Bool)

(assert (=> b!4248748 (= e!2638900 (+ 1 (size!34453 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))))

(assert (= (and d!1249499 c!721554) b!4248747))

(assert (= (and d!1249499 (not c!721554)) b!4248748))

(declare-fun m!4833623 () Bool)

(assert (=> b!4248748 m!4833623))

(assert (=> b!4248449 d!1249499))

(declare-fun d!1249501 () Bool)

(declare-fun lt!1508145 () Int)

(assert (=> d!1249501 (>= lt!1508145 0)))

(declare-fun e!2638901 () Int)

(assert (=> d!1249501 (= lt!1508145 e!2638901)))

(declare-fun c!721555 () Bool)

(assert (=> d!1249501 (= c!721555 ((_ is Nil!47056) (_2!25443 (v!41053 lt!1508052))))))

(assert (=> d!1249501 (= (size!34453 (_2!25443 (v!41053 lt!1508052))) lt!1508145)))

(declare-fun b!4248749 () Bool)

(assert (=> b!4248749 (= e!2638901 0)))

(declare-fun b!4248750 () Bool)

(assert (=> b!4248750 (= e!2638901 (+ 1 (size!34453 (t!352015 (_2!25443 (v!41053 lt!1508052))))))))

(assert (= (and d!1249501 c!721555) b!4248749))

(assert (= (and d!1249501 (not c!721555)) b!4248750))

(declare-fun m!4833625 () Bool)

(assert (=> b!4248750 m!4833625))

(assert (=> b!4248449 d!1249501))

(declare-fun d!1249503 () Bool)

(declare-fun c!721558 () Bool)

(assert (=> d!1249503 (= c!721558 ((_ is Nil!47056) lt!1508061))))

(declare-fun e!2638904 () (InoxSet C!25936))

(assert (=> d!1249503 (= (content!7396 lt!1508061) e!2638904)))

(declare-fun b!4248755 () Bool)

(assert (=> b!4248755 (= e!2638904 ((as const (Array C!25936 Bool)) false))))

(declare-fun b!4248756 () Bool)

(assert (=> b!4248756 (= e!2638904 ((_ map or) (store ((as const (Array C!25936 Bool)) false) (h!52476 lt!1508061) true) (content!7396 (t!352015 lt!1508061))))))

(assert (= (and d!1249503 c!721558) b!4248755))

(assert (= (and d!1249503 (not c!721558)) b!4248756))

(declare-fun m!4833627 () Bool)

(assert (=> b!4248756 m!4833627))

(declare-fun m!4833629 () Bool)

(assert (=> b!4248756 m!4833629))

(assert (=> d!1249405 d!1249503))

(declare-fun d!1249505 () Bool)

(declare-fun c!721559 () Bool)

(assert (=> d!1249505 (= c!721559 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))

(declare-fun e!2638905 () (InoxSet C!25936))

(assert (=> d!1249505 (= (content!7396 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) e!2638905)))

(declare-fun b!4248757 () Bool)

(assert (=> b!4248757 (= e!2638905 ((as const (Array C!25936 Bool)) false))))

(declare-fun b!4248758 () Bool)

(assert (=> b!4248758 (= e!2638905 ((_ map or) (store ((as const (Array C!25936 Bool)) false) (h!52476 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) true) (content!7396 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))))

(assert (= (and d!1249505 c!721559) b!4248757))

(assert (= (and d!1249505 (not c!721559)) b!4248758))

(declare-fun m!4833631 () Bool)

(assert (=> b!4248758 m!4833631))

(declare-fun m!4833633 () Bool)

(assert (=> b!4248758 m!4833633))

(assert (=> d!1249405 d!1249505))

(declare-fun d!1249507 () Bool)

(declare-fun c!721560 () Bool)

(assert (=> d!1249507 (= c!721560 ((_ is Nil!47056) (_2!25443 (v!41053 lt!1508052))))))

(declare-fun e!2638906 () (InoxSet C!25936))

(assert (=> d!1249507 (= (content!7396 (_2!25443 (v!41053 lt!1508052))) e!2638906)))

(declare-fun b!4248759 () Bool)

(assert (=> b!4248759 (= e!2638906 ((as const (Array C!25936 Bool)) false))))

(declare-fun b!4248760 () Bool)

(assert (=> b!4248760 (= e!2638906 ((_ map or) (store ((as const (Array C!25936 Bool)) false) (h!52476 (_2!25443 (v!41053 lt!1508052))) true) (content!7396 (t!352015 (_2!25443 (v!41053 lt!1508052))))))))

(assert (= (and d!1249507 c!721560) b!4248759))

(assert (= (and d!1249507 (not c!721560)) b!4248760))

(declare-fun m!4833635 () Bool)

(assert (=> b!4248760 m!4833635))

(declare-fun m!4833637 () Bool)

(assert (=> b!4248760 m!4833637))

(assert (=> d!1249405 d!1249507))

(declare-fun b!4248761 () Bool)

(declare-fun e!2638907 () Bool)

(declare-fun lt!1508148 () Option!10098)

(assert (=> b!4248761 (= e!2638907 (contains!9753 (t!352016 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508148)))))))

(declare-fun b!4248762 () Bool)

(declare-fun e!2638908 () Option!10098)

(declare-fun lt!1508147 () Option!10098)

(declare-fun lt!1508146 () Option!10098)

(assert (=> b!4248762 (= e!2638908 (ite (and ((_ is None!10097) lt!1508147) ((_ is None!10097) lt!1508146)) None!10097 (ite ((_ is None!10097) lt!1508146) lt!1508147 (ite ((_ is None!10097) lt!1508147) lt!1508146 (ite (>= (size!34452 (_1!25443 (v!41053 lt!1508147))) (size!34452 (_1!25443 (v!41053 lt!1508146)))) lt!1508147 lt!1508146)))))))

(declare-fun call!293941 () Option!10098)

(assert (=> b!4248762 (= lt!1508147 call!293941)))

(assert (=> b!4248762 (= lt!1508146 (maxPrefix!4515 thiss!21641 (t!352016 (t!352016 rules!2971)) shorterInput!62))))

(declare-fun bm!293936 () Bool)

(assert (=> bm!293936 (= call!293941 (maxPrefixOneRule!3468 thiss!21641 (h!52477 (t!352016 rules!2971)) shorterInput!62))))

(declare-fun b!4248763 () Bool)

(assert (=> b!4248763 (= e!2638908 call!293941)))

(declare-fun d!1249509 () Bool)

(declare-fun e!2638909 () Bool)

(assert (=> d!1249509 e!2638909))

(declare-fun res!1746685 () Bool)

(assert (=> d!1249509 (=> res!1746685 e!2638909)))

(assert (=> d!1249509 (= res!1746685 (isEmpty!27840 lt!1508148))))

(assert (=> d!1249509 (= lt!1508148 e!2638908)))

(declare-fun c!721561 () Bool)

(assert (=> d!1249509 (= c!721561 (and ((_ is Cons!47057) (t!352016 rules!2971)) ((_ is Nil!47057) (t!352016 (t!352016 rules!2971)))))))

(declare-fun lt!1508149 () Unit!66051)

(declare-fun lt!1508150 () Unit!66051)

(assert (=> d!1249509 (= lt!1508149 lt!1508150)))

(assert (=> d!1249509 (isPrefix!4743 shorterInput!62 shorterInput!62)))

(assert (=> d!1249509 (= lt!1508150 (lemmaIsPrefixRefl!3140 shorterInput!62 shorterInput!62))))

(assert (=> d!1249509 (rulesValidInductive!2994 thiss!21641 (t!352016 rules!2971))))

(assert (=> d!1249509 (= (maxPrefix!4515 thiss!21641 (t!352016 rules!2971) shorterInput!62) lt!1508148)))

(declare-fun b!4248764 () Bool)

(declare-fun res!1746683 () Bool)

(assert (=> b!4248764 (=> (not res!1746683) (not e!2638907))))

(assert (=> b!4248764 (= res!1746683 (< (size!34453 (_2!25443 (get!15282 lt!1508148))) (size!34453 shorterInput!62)))))

(declare-fun b!4248765 () Bool)

(assert (=> b!4248765 (= e!2638909 e!2638907)))

(declare-fun res!1746682 () Bool)

(assert (=> b!4248765 (=> (not res!1746682) (not e!2638907))))

(assert (=> b!4248765 (= res!1746682 (isDefined!7458 lt!1508148))))

(declare-fun b!4248766 () Bool)

(declare-fun res!1746688 () Bool)

(assert (=> b!4248766 (=> (not res!1746688) (not e!2638907))))

(assert (=> b!4248766 (= res!1746688 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508148)))) (_2!25443 (get!15282 lt!1508148))) shorterInput!62))))

(declare-fun b!4248767 () Bool)

(declare-fun res!1746687 () Bool)

(assert (=> b!4248767 (=> (not res!1746687) (not e!2638907))))

(assert (=> b!4248767 (= res!1746687 (matchR!6465 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508148)))) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508148))))))))

(declare-fun b!4248768 () Bool)

(declare-fun res!1746686 () Bool)

(assert (=> b!4248768 (=> (not res!1746686) (not e!2638907))))

(assert (=> b!4248768 (= res!1746686 (= (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508148)))) (originalCharacters!8308 (_1!25443 (get!15282 lt!1508148)))))))

(declare-fun b!4248769 () Bool)

(declare-fun res!1746684 () Bool)

(assert (=> b!4248769 (=> (not res!1746684) (not e!2638907))))

(assert (=> b!4248769 (= res!1746684 (= (value!247510 (_1!25443 (get!15282 lt!1508148))) (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508148)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508148)))))))))

(assert (= (and d!1249509 c!721561) b!4248763))

(assert (= (and d!1249509 (not c!721561)) b!4248762))

(assert (= (or b!4248763 b!4248762) bm!293936))

(assert (= (and d!1249509 (not res!1746685)) b!4248765))

(assert (= (and b!4248765 res!1746682) b!4248768))

(assert (= (and b!4248768 res!1746686) b!4248764))

(assert (= (and b!4248764 res!1746683) b!4248766))

(assert (= (and b!4248766 res!1746688) b!4248769))

(assert (= (and b!4248769 res!1746684) b!4248767))

(assert (= (and b!4248767 res!1746687) b!4248761))

(declare-fun m!4833639 () Bool)

(assert (=> bm!293936 m!4833639))

(declare-fun m!4833641 () Bool)

(assert (=> b!4248762 m!4833641))

(declare-fun m!4833643 () Bool)

(assert (=> b!4248764 m!4833643))

(declare-fun m!4833645 () Bool)

(assert (=> b!4248764 m!4833645))

(assert (=> b!4248764 m!4833253))

(declare-fun m!4833647 () Bool)

(assert (=> d!1249509 m!4833647))

(assert (=> d!1249509 m!4833453))

(assert (=> d!1249509 m!4833455))

(declare-fun m!4833649 () Bool)

(assert (=> d!1249509 m!4833649))

(assert (=> b!4248769 m!4833643))

(declare-fun m!4833651 () Bool)

(assert (=> b!4248769 m!4833651))

(assert (=> b!4248769 m!4833651))

(declare-fun m!4833653 () Bool)

(assert (=> b!4248769 m!4833653))

(assert (=> b!4248761 m!4833643))

(declare-fun m!4833655 () Bool)

(assert (=> b!4248761 m!4833655))

(declare-fun m!4833657 () Bool)

(assert (=> b!4248765 m!4833657))

(assert (=> b!4248768 m!4833643))

(declare-fun m!4833659 () Bool)

(assert (=> b!4248768 m!4833659))

(assert (=> b!4248768 m!4833659))

(declare-fun m!4833661 () Bool)

(assert (=> b!4248768 m!4833661))

(assert (=> b!4248766 m!4833643))

(assert (=> b!4248766 m!4833659))

(assert (=> b!4248766 m!4833659))

(assert (=> b!4248766 m!4833661))

(assert (=> b!4248766 m!4833661))

(declare-fun m!4833663 () Bool)

(assert (=> b!4248766 m!4833663))

(assert (=> b!4248767 m!4833643))

(assert (=> b!4248767 m!4833659))

(assert (=> b!4248767 m!4833659))

(assert (=> b!4248767 m!4833661))

(assert (=> b!4248767 m!4833661))

(declare-fun m!4833665 () Bool)

(assert (=> b!4248767 m!4833665))

(assert (=> b!4248543 d!1249509))

(declare-fun d!1249511 () Bool)

(declare-fun lt!1508153 () Int)

(assert (=> d!1249511 (>= lt!1508153 0)))

(declare-fun e!2638912 () Int)

(assert (=> d!1249511 (= lt!1508153 e!2638912)))

(declare-fun c!721564 () Bool)

(assert (=> d!1249511 (= c!721564 ((_ is Nil!47058) (_1!25444 lt!1508127)))))

(assert (=> d!1249511 (= (size!34455 (_1!25444 lt!1508127)) lt!1508153)))

(declare-fun b!4248774 () Bool)

(assert (=> b!4248774 (= e!2638912 0)))

(declare-fun b!4248775 () Bool)

(assert (=> b!4248775 (= e!2638912 (+ 1 (size!34455 (t!352017 (_1!25444 lt!1508127)))))))

(assert (= (and d!1249511 c!721564) b!4248774))

(assert (= (and d!1249511 (not c!721564)) b!4248775))

(declare-fun m!4833667 () Bool)

(assert (=> b!4248775 m!4833667))

(assert (=> d!1249457 d!1249511))

(assert (=> d!1249457 d!1249455))

(declare-fun d!1249513 () Bool)

(assert (=> d!1249513 (= (inv!61820 (tag!8828 (rule!11096 (h!52478 (t!352017 tokens!592))))) (= (mod (str.len (value!247509 (tag!8828 (rule!11096 (h!52478 (t!352017 tokens!592)))))) 2) 0))))

(assert (=> b!4248684 d!1249513))

(declare-fun d!1249515 () Bool)

(declare-fun res!1746689 () Bool)

(declare-fun e!2638913 () Bool)

(assert (=> d!1249515 (=> (not res!1746689) (not e!2638913))))

(assert (=> d!1249515 (= res!1746689 (semiInverseModEq!3471 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toValue!10732 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))))))

(assert (=> d!1249515 (= (inv!61823 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) e!2638913)))

(declare-fun b!4248776 () Bool)

(assert (=> b!4248776 (= e!2638913 (equivClasses!3370 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toValue!10732 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))))))

(assert (= (and d!1249515 res!1746689) b!4248776))

(declare-fun m!4833669 () Bool)

(assert (=> d!1249515 m!4833669))

(declare-fun m!4833671 () Bool)

(assert (=> b!4248776 m!4833671))

(assert (=> b!4248684 d!1249515))

(declare-fun b!4248788 () Bool)

(declare-fun e!2638919 () List!47180)

(assert (=> b!4248788 (= e!2638919 (++!11975 (list!16954 (left!34915 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))) (list!16954 (right!35245 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))))

(declare-fun b!4248787 () Bool)

(declare-fun list!16956 (IArray!28355) List!47180)

(assert (=> b!4248787 (= e!2638919 (list!16956 (xs!17481 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))))))

(declare-fun b!4248786 () Bool)

(declare-fun e!2638918 () List!47180)

(assert (=> b!4248786 (= e!2638918 e!2638919)))

(declare-fun c!721570 () Bool)

(assert (=> b!4248786 (= c!721570 ((_ is Leaf!21916) (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))

(declare-fun d!1249517 () Bool)

(declare-fun c!721569 () Bool)

(assert (=> d!1249517 (= c!721569 ((_ is Empty!14175) (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))

(assert (=> d!1249517 (= (list!16954 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) e!2638918)))

(declare-fun b!4248785 () Bool)

(assert (=> b!4248785 (= e!2638918 Nil!47056)))

(assert (= (and d!1249517 c!721569) b!4248785))

(assert (= (and d!1249517 (not c!721569)) b!4248786))

(assert (= (and b!4248786 c!721570) b!4248787))

(assert (= (and b!4248786 (not c!721570)) b!4248788))

(declare-fun m!4833673 () Bool)

(assert (=> b!4248788 m!4833673))

(declare-fun m!4833675 () Bool)

(assert (=> b!4248788 m!4833675))

(assert (=> b!4248788 m!4833673))

(assert (=> b!4248788 m!4833675))

(declare-fun m!4833677 () Bool)

(assert (=> b!4248788 m!4833677))

(declare-fun m!4833679 () Bool)

(assert (=> b!4248787 m!4833679))

(assert (=> d!1249415 d!1249517))

(declare-fun d!1249519 () Bool)

(declare-fun lt!1508154 () Int)

(assert (=> d!1249519 (>= lt!1508154 0)))

(declare-fun e!2638920 () Int)

(assert (=> d!1249519 (= lt!1508154 e!2638920)))

(declare-fun c!721571 () Bool)

(assert (=> d!1249519 (= c!721571 ((_ is Nil!47056) (originalCharacters!8308 (h!52478 tokens!592))))))

(assert (=> d!1249519 (= (size!34453 (originalCharacters!8308 (h!52478 tokens!592))) lt!1508154)))

(declare-fun b!4248789 () Bool)

(assert (=> b!4248789 (= e!2638920 0)))

(declare-fun b!4248790 () Bool)

(assert (=> b!4248790 (= e!2638920 (+ 1 (size!34453 (t!352015 (originalCharacters!8308 (h!52478 tokens!592))))))))

(assert (= (and d!1249519 c!721571) b!4248789))

(assert (= (and d!1249519 (not c!721571)) b!4248790))

(declare-fun m!4833681 () Bool)

(assert (=> b!4248790 m!4833681))

(assert (=> b!4248410 d!1249519))

(declare-fun d!1249521 () Bool)

(assert (=> d!1249521 (= (get!15282 lt!1508117) (v!41053 lt!1508117))))

(assert (=> b!4248574 d!1249521))

(declare-fun d!1249523 () Bool)

(declare-fun dynLambda!20166 (Int BalanceConc!27944) TokenValue!8194)

(assert (=> d!1249523 (= (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117))))) (dynLambda!20166 (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun b_lambda!125149 () Bool)

(assert (=> (not b_lambda!125149) (not d!1249523)))

(declare-fun tb!256075 () Bool)

(declare-fun t!352078 () Bool)

(assert (=> (and b!4248397 (= (toValue!10732 (transformation!7964 (h!52477 rules!2971))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352078) tb!256075))

(declare-fun result!312288 () Bool)

(assert (=> tb!256075 (= result!312288 (inv!21 (dynLambda!20166 (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117)))))))))

(declare-fun m!4833683 () Bool)

(assert (=> tb!256075 m!4833683))

(assert (=> d!1249523 t!352078))

(declare-fun b_and!336733 () Bool)

(assert (= b_and!336677 (and (=> t!352078 result!312288) b_and!336733)))

(declare-fun t!352080 () Bool)

(declare-fun tb!256077 () Bool)

(assert (=> (and b!4248399 (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352080) tb!256077))

(declare-fun result!312292 () Bool)

(assert (= result!312292 result!312288))

(assert (=> d!1249523 t!352080))

(declare-fun b_and!336735 () Bool)

(assert (= b_and!336681 (and (=> t!352080 result!312292) b_and!336735)))

(declare-fun tb!256079 () Bool)

(declare-fun t!352082 () Bool)

(assert (=> (and b!4248685 (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352082) tb!256079))

(declare-fun result!312294 () Bool)

(assert (= result!312294 result!312288))

(assert (=> d!1249523 t!352082))

(declare-fun b_and!336737 () Bool)

(assert (= b_and!336717 (and (=> t!352082 result!312294) b_and!336737)))

(declare-fun t!352084 () Bool)

(declare-fun tb!256081 () Bool)

(assert (=> (and b!4248701 (= (toValue!10732 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352084) tb!256081))

(declare-fun result!312296 () Bool)

(assert (= result!312296 result!312288))

(assert (=> d!1249523 t!352084))

(declare-fun b_and!336739 () Bool)

(assert (= b_and!336721 (and (=> t!352084 result!312296) b_and!336739)))

(assert (=> d!1249523 m!4833497))

(declare-fun m!4833685 () Bool)

(assert (=> d!1249523 m!4833685))

(assert (=> b!4248574 d!1249523))

(declare-fun d!1249525 () Bool)

(declare-fun fromListB!2654 (List!47180) BalanceConc!27944)

(assert (=> d!1249525 (= (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117)))) (fromListB!2654 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117)))))))

(declare-fun bs!598581 () Bool)

(assert (= bs!598581 d!1249525))

(declare-fun m!4833687 () Bool)

(assert (=> bs!598581 m!4833687))

(assert (=> b!4248574 d!1249525))

(declare-fun d!1249527 () Bool)

(declare-fun res!1746690 () Bool)

(declare-fun e!2638924 () Bool)

(assert (=> d!1249527 (=> (not res!1746690) (not e!2638924))))

(assert (=> d!1249527 (= res!1746690 (not (isEmpty!27837 (originalCharacters!8308 (h!52478 (t!352017 tokens!592))))))))

(assert (=> d!1249527 (= (inv!61824 (h!52478 (t!352017 tokens!592))) e!2638924)))

(declare-fun b!4248793 () Bool)

(declare-fun res!1746691 () Bool)

(assert (=> b!4248793 (=> (not res!1746691) (not e!2638924))))

(assert (=> b!4248793 (= res!1746691 (= (originalCharacters!8308 (h!52478 (t!352017 tokens!592))) (list!16952 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (value!247510 (h!52478 (t!352017 tokens!592)))))))))

(declare-fun b!4248794 () Bool)

(assert (=> b!4248794 (= e!2638924 (= (size!34452 (h!52478 (t!352017 tokens!592))) (size!34453 (originalCharacters!8308 (h!52478 (t!352017 tokens!592))))))))

(assert (= (and d!1249527 res!1746690) b!4248793))

(assert (= (and b!4248793 res!1746691) b!4248794))

(declare-fun b_lambda!125151 () Bool)

(assert (=> (not b_lambda!125151) (not b!4248793)))

(declare-fun tb!256083 () Bool)

(declare-fun t!352086 () Bool)

(assert (=> (and b!4248397 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) t!352086) tb!256083))

(declare-fun b!4248795 () Bool)

(declare-fun e!2638925 () Bool)

(declare-fun tp!1303504 () Bool)

(assert (=> b!4248795 (= e!2638925 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (value!247510 (h!52478 (t!352017 tokens!592)))))) tp!1303504))))

(declare-fun result!312298 () Bool)

(assert (=> tb!256083 (= result!312298 (and (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (value!247510 (h!52478 (t!352017 tokens!592))))) e!2638925))))

(assert (= tb!256083 b!4248795))

(declare-fun m!4833689 () Bool)

(assert (=> b!4248795 m!4833689))

(declare-fun m!4833691 () Bool)

(assert (=> tb!256083 m!4833691))

(assert (=> b!4248793 t!352086))

(declare-fun b_and!336741 () Bool)

(assert (= b_and!336713 (and (=> t!352086 result!312298) b_and!336741)))

(declare-fun t!352088 () Bool)

(declare-fun tb!256085 () Bool)

(assert (=> (and b!4248399 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) t!352088) tb!256085))

(declare-fun result!312300 () Bool)

(assert (= result!312300 result!312298))

(assert (=> b!4248793 t!352088))

(declare-fun b_and!336743 () Bool)

(assert (= b_and!336715 (and (=> t!352088 result!312300) b_and!336743)))

(declare-fun t!352090 () Bool)

(declare-fun tb!256087 () Bool)

(assert (=> (and b!4248685 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) t!352090) tb!256087))

(declare-fun result!312302 () Bool)

(assert (= result!312302 result!312298))

(assert (=> b!4248793 t!352090))

(declare-fun b_and!336745 () Bool)

(assert (= b_and!336719 (and (=> t!352090 result!312302) b_and!336745)))

(declare-fun t!352092 () Bool)

(declare-fun tb!256089 () Bool)

(assert (=> (and b!4248701 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) t!352092) tb!256089))

(declare-fun result!312304 () Bool)

(assert (= result!312304 result!312298))

(assert (=> b!4248793 t!352092))

(declare-fun b_and!336747 () Bool)

(assert (= b_and!336723 (and (=> t!352092 result!312304) b_and!336747)))

(declare-fun m!4833693 () Bool)

(assert (=> d!1249527 m!4833693))

(declare-fun m!4833695 () Bool)

(assert (=> b!4248793 m!4833695))

(assert (=> b!4248793 m!4833695))

(declare-fun m!4833697 () Bool)

(assert (=> b!4248793 m!4833697))

(declare-fun m!4833699 () Bool)

(assert (=> b!4248794 m!4833699))

(assert (=> b!4248682 d!1249527))

(declare-fun d!1249529 () Bool)

(declare-fun charsToBigInt!0 (List!47179 Int) Int)

(assert (=> d!1249529 (= (inv!15 (value!247510 (h!52478 tokens!592))) (= (charsToBigInt!0 (text!57807 (value!247510 (h!52478 tokens!592))) 0) (value!247505 (value!247510 (h!52478 tokens!592)))))))

(declare-fun bs!598582 () Bool)

(assert (= bs!598582 d!1249529))

(declare-fun m!4833701 () Bool)

(assert (=> bs!598582 m!4833701))

(assert (=> b!4248657 d!1249529))

(declare-fun b!4248796 () Bool)

(declare-fun e!2638927 () Bool)

(declare-fun lt!1508156 () tuple2!44620)

(assert (=> b!4248796 (= e!2638927 (= (_2!25444 lt!1508156) (_2!25443 (v!41053 lt!1508126))))))

(declare-fun b!4248797 () Bool)

(declare-fun e!2638926 () Bool)

(assert (=> b!4248797 (= e!2638927 e!2638926)))

(declare-fun res!1746692 () Bool)

(assert (=> b!4248797 (= res!1746692 (< (size!34453 (_2!25444 lt!1508156)) (size!34453 (_2!25443 (v!41053 lt!1508126)))))))

(assert (=> b!4248797 (=> (not res!1746692) (not e!2638926))))

(declare-fun b!4248798 () Bool)

(declare-fun e!2638928 () tuple2!44620)

(assert (=> b!4248798 (= e!2638928 (tuple2!44621 Nil!47058 (_2!25443 (v!41053 lt!1508126))))))

(declare-fun b!4248799 () Bool)

(assert (=> b!4248799 (= e!2638926 (not (isEmpty!27841 (_1!25444 lt!1508156))))))

(declare-fun b!4248800 () Bool)

(declare-fun lt!1508155 () Option!10098)

(declare-fun lt!1508157 () tuple2!44620)

(assert (=> b!4248800 (= e!2638928 (tuple2!44621 (Cons!47058 (_1!25443 (v!41053 lt!1508155)) (_1!25444 lt!1508157)) (_2!25444 lt!1508157)))))

(assert (=> b!4248800 (= lt!1508157 (lexList!2065 thiss!21641 rules!2971 (_2!25443 (v!41053 lt!1508155))))))

(declare-fun d!1249531 () Bool)

(assert (=> d!1249531 e!2638927))

(declare-fun c!721572 () Bool)

(assert (=> d!1249531 (= c!721572 (> (size!34455 (_1!25444 lt!1508156)) 0))))

(assert (=> d!1249531 (= lt!1508156 e!2638928)))

(declare-fun c!721573 () Bool)

(assert (=> d!1249531 (= c!721573 ((_ is Some!10097) lt!1508155))))

(assert (=> d!1249531 (= lt!1508155 (maxPrefix!4515 thiss!21641 rules!2971 (_2!25443 (v!41053 lt!1508126))))))

(assert (=> d!1249531 (= (lexList!2065 thiss!21641 rules!2971 (_2!25443 (v!41053 lt!1508126))) lt!1508156)))

(assert (= (and d!1249531 c!721573) b!4248800))

(assert (= (and d!1249531 (not c!721573)) b!4248798))

(assert (= (and d!1249531 c!721572) b!4248797))

(assert (= (and d!1249531 (not c!721572)) b!4248796))

(assert (= (and b!4248797 res!1746692) b!4248799))

(declare-fun m!4833703 () Bool)

(assert (=> b!4248797 m!4833703))

(declare-fun m!4833705 () Bool)

(assert (=> b!4248797 m!4833705))

(declare-fun m!4833707 () Bool)

(assert (=> b!4248799 m!4833707))

(declare-fun m!4833709 () Bool)

(assert (=> b!4248800 m!4833709))

(declare-fun m!4833711 () Bool)

(assert (=> d!1249531 m!4833711))

(declare-fun m!4833713 () Bool)

(assert (=> d!1249531 m!4833713))

(assert (=> b!4248640 d!1249531))

(declare-fun d!1249533 () Bool)

(assert (=> d!1249533 (= (list!16952 lt!1508066) (list!16954 (c!721494 lt!1508066)))))

(declare-fun bs!598583 () Bool)

(assert (= bs!598583 d!1249533))

(declare-fun m!4833715 () Bool)

(assert (=> bs!598583 m!4833715))

(assert (=> d!1249417 d!1249533))

(declare-fun b!4248803 () Bool)

(declare-fun res!1746694 () Bool)

(declare-fun e!2638930 () Bool)

(assert (=> b!4248803 (=> (not res!1746694) (not e!2638930))))

(declare-fun lt!1508158 () List!47180)

(assert (=> b!4248803 (= res!1746694 (= (size!34453 lt!1508158) (+ (size!34453 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))) (size!34453 (_2!25443 (v!41053 lt!1508051))))))))

(declare-fun d!1249535 () Bool)

(assert (=> d!1249535 e!2638930))

(declare-fun res!1746693 () Bool)

(assert (=> d!1249535 (=> (not res!1746693) (not e!2638930))))

(assert (=> d!1249535 (= res!1746693 (= (content!7396 lt!1508158) ((_ map or) (content!7396 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))) (content!7396 (_2!25443 (v!41053 lt!1508051))))))))

(declare-fun e!2638929 () List!47180)

(assert (=> d!1249535 (= lt!1508158 e!2638929)))

(declare-fun c!721574 () Bool)

(assert (=> d!1249535 (= c!721574 ((_ is Nil!47056) (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))))))

(assert (=> d!1249535 (= (++!11975 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) (_2!25443 (v!41053 lt!1508051))) lt!1508158)))

(declare-fun b!4248804 () Bool)

(assert (=> b!4248804 (= e!2638930 (or (not (= (_2!25443 (v!41053 lt!1508051)) Nil!47056)) (= lt!1508158 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))))

(declare-fun b!4248802 () Bool)

(assert (=> b!4248802 (= e!2638929 (Cons!47056 (h!52476 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))) (++!11975 (t!352015 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))) (_2!25443 (v!41053 lt!1508051)))))))

(declare-fun b!4248801 () Bool)

(assert (=> b!4248801 (= e!2638929 (_2!25443 (v!41053 lt!1508051)))))

(assert (= (and d!1249535 c!721574) b!4248801))

(assert (= (and d!1249535 (not c!721574)) b!4248802))

(assert (= (and d!1249535 res!1746693) b!4248803))

(assert (= (and b!4248803 res!1746694) b!4248804))

(declare-fun m!4833717 () Bool)

(assert (=> b!4248803 m!4833717))

(declare-fun m!4833719 () Bool)

(assert (=> b!4248803 m!4833719))

(assert (=> b!4248803 m!4833537))

(declare-fun m!4833721 () Bool)

(assert (=> d!1249535 m!4833721))

(declare-fun m!4833723 () Bool)

(assert (=> d!1249535 m!4833723))

(assert (=> d!1249535 m!4833543))

(declare-fun m!4833725 () Bool)

(assert (=> b!4248802 m!4833725))

(assert (=> b!4248642 d!1249535))

(declare-fun b!4248834 () Bool)

(declare-fun e!2638950 () Bool)

(declare-fun head!8993 (List!47180) C!25936)

(assert (=> b!4248834 (= e!2638950 (not (= (head!8993 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))) (c!721495 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))))))))

(declare-fun bm!293939 () Bool)

(declare-fun call!293944 () Bool)

(assert (=> bm!293939 (= call!293944 (isEmpty!27837 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun b!4248835 () Bool)

(declare-fun e!2638946 () Bool)

(declare-fun e!2638948 () Bool)

(assert (=> b!4248835 (= e!2638946 e!2638948)))

(declare-fun c!721583 () Bool)

(assert (=> b!4248835 (= c!721583 ((_ is EmptyLang!12869) (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun b!4248836 () Bool)

(declare-fun res!1746714 () Bool)

(declare-fun e!2638947 () Bool)

(assert (=> b!4248836 (=> res!1746714 e!2638947)))

(declare-fun e!2638951 () Bool)

(assert (=> b!4248836 (= res!1746714 e!2638951)))

(declare-fun res!1746712 () Bool)

(assert (=> b!4248836 (=> (not res!1746712) (not e!2638951))))

(declare-fun lt!1508161 () Bool)

(assert (=> b!4248836 (= res!1746712 lt!1508161)))

(declare-fun b!4248837 () Bool)

(assert (=> b!4248837 (= e!2638948 (not lt!1508161))))

(declare-fun b!4248838 () Bool)

(declare-fun res!1746711 () Bool)

(assert (=> b!4248838 (=> res!1746711 e!2638947)))

(assert (=> b!4248838 (= res!1746711 (not ((_ is ElementMatch!12869) (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))))))

(assert (=> b!4248838 (= e!2638948 e!2638947)))

(declare-fun d!1249537 () Bool)

(assert (=> d!1249537 e!2638946))

(declare-fun c!721581 () Bool)

(assert (=> d!1249537 (= c!721581 ((_ is EmptyExpr!12869) (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun e!2638945 () Bool)

(assert (=> d!1249537 (= lt!1508161 e!2638945)))

(declare-fun c!721582 () Bool)

(assert (=> d!1249537 (= c!721582 (isEmpty!27837 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun validRegex!5832 (Regex!12869) Bool)

(assert (=> d!1249537 (validRegex!5832 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))))

(assert (=> d!1249537 (= (matchR!6465 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))) lt!1508161)))

(declare-fun b!4248833 () Bool)

(declare-fun derivativeStep!3855 (Regex!12869 C!25936) Regex!12869)

(declare-fun tail!6852 (List!47180) List!47180)

(assert (=> b!4248833 (= e!2638945 (matchR!6465 (derivativeStep!3855 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))) (head!8993 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))))) (tail!6852 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))))))))

(declare-fun b!4248839 () Bool)

(assert (=> b!4248839 (= e!2638946 (= lt!1508161 call!293944))))

(declare-fun b!4248840 () Bool)

(declare-fun res!1746718 () Bool)

(assert (=> b!4248840 (=> (not res!1746718) (not e!2638951))))

(assert (=> b!4248840 (= res!1746718 (not call!293944))))

(declare-fun b!4248841 () Bool)

(declare-fun e!2638949 () Bool)

(assert (=> b!4248841 (= e!2638947 e!2638949)))

(declare-fun res!1746715 () Bool)

(assert (=> b!4248841 (=> (not res!1746715) (not e!2638949))))

(assert (=> b!4248841 (= res!1746715 (not lt!1508161))))

(declare-fun b!4248842 () Bool)

(assert (=> b!4248842 (= e!2638949 e!2638950)))

(declare-fun res!1746717 () Bool)

(assert (=> b!4248842 (=> res!1746717 e!2638950)))

(assert (=> b!4248842 (= res!1746717 call!293944)))

(declare-fun b!4248843 () Bool)

(declare-fun nullable!4525 (Regex!12869) Bool)

(assert (=> b!4248843 (= e!2638945 (nullable!4525 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun b!4248844 () Bool)

(declare-fun res!1746713 () Bool)

(assert (=> b!4248844 (=> (not res!1746713) (not e!2638951))))

(assert (=> b!4248844 (= res!1746713 (isEmpty!27837 (tail!6852 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))))))))

(declare-fun b!4248845 () Bool)

(declare-fun res!1746716 () Bool)

(assert (=> b!4248845 (=> res!1746716 e!2638950)))

(assert (=> b!4248845 (= res!1746716 (not (isEmpty!27837 (tail!6852 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))))))))

(declare-fun b!4248846 () Bool)

(assert (=> b!4248846 (= e!2638951 (= (head!8993 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))) (c!721495 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))))))

(assert (= (and d!1249537 c!721582) b!4248843))

(assert (= (and d!1249537 (not c!721582)) b!4248833))

(assert (= (and d!1249537 c!721581) b!4248839))

(assert (= (and d!1249537 (not c!721581)) b!4248835))

(assert (= (and b!4248835 c!721583) b!4248837))

(assert (= (and b!4248835 (not c!721583)) b!4248838))

(assert (= (and b!4248838 (not res!1746711)) b!4248836))

(assert (= (and b!4248836 res!1746712) b!4248840))

(assert (= (and b!4248840 res!1746718) b!4248844))

(assert (= (and b!4248844 res!1746713) b!4248846))

(assert (= (and b!4248836 (not res!1746714)) b!4248841))

(assert (= (and b!4248841 res!1746715) b!4248842))

(assert (= (and b!4248842 (not res!1746717)) b!4248845))

(assert (= (and b!4248845 (not res!1746716)) b!4248834))

(assert (= (or b!4248839 b!4248840 b!4248842) bm!293939))

(assert (=> b!4248846 m!4833507))

(declare-fun m!4833727 () Bool)

(assert (=> b!4248846 m!4833727))

(assert (=> d!1249537 m!4833507))

(declare-fun m!4833729 () Bool)

(assert (=> d!1249537 m!4833729))

(declare-fun m!4833731 () Bool)

(assert (=> d!1249537 m!4833731))

(assert (=> b!4248845 m!4833507))

(declare-fun m!4833733 () Bool)

(assert (=> b!4248845 m!4833733))

(assert (=> b!4248845 m!4833733))

(declare-fun m!4833735 () Bool)

(assert (=> b!4248845 m!4833735))

(assert (=> b!4248833 m!4833507))

(assert (=> b!4248833 m!4833727))

(assert (=> b!4248833 m!4833727))

(declare-fun m!4833737 () Bool)

(assert (=> b!4248833 m!4833737))

(assert (=> b!4248833 m!4833507))

(assert (=> b!4248833 m!4833733))

(assert (=> b!4248833 m!4833737))

(assert (=> b!4248833 m!4833733))

(declare-fun m!4833739 () Bool)

(assert (=> b!4248833 m!4833739))

(declare-fun m!4833741 () Bool)

(assert (=> b!4248843 m!4833741))

(assert (=> b!4248844 m!4833507))

(assert (=> b!4248844 m!4833733))

(assert (=> b!4248844 m!4833733))

(assert (=> b!4248844 m!4833735))

(assert (=> bm!293939 m!4833507))

(assert (=> bm!293939 m!4833729))

(assert (=> b!4248834 m!4833507))

(assert (=> b!4248834 m!4833727))

(assert (=> b!4248572 d!1249537))

(assert (=> b!4248572 d!1249521))

(declare-fun d!1249539 () Bool)

(assert (=> d!1249539 (= (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))) (list!16954 (c!721494 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))))))

(declare-fun bs!598584 () Bool)

(assert (= bs!598584 d!1249539))

(declare-fun m!4833743 () Bool)

(assert (=> bs!598584 m!4833743))

(assert (=> b!4248572 d!1249539))

(declare-fun d!1249541 () Bool)

(declare-fun lt!1508162 () BalanceConc!27944)

(assert (=> d!1249541 (= (list!16952 lt!1508162) (originalCharacters!8308 (_1!25443 (get!15282 lt!1508117))))))

(assert (=> d!1249541 (= lt!1508162 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))) (value!247510 (_1!25443 (get!15282 lt!1508117)))))))

(assert (=> d!1249541 (= (charsOf!5306 (_1!25443 (get!15282 lt!1508117))) lt!1508162)))

(declare-fun b_lambda!125153 () Bool)

(assert (=> (not b_lambda!125153) (not d!1249541)))

(declare-fun tb!256091 () Bool)

(declare-fun t!352094 () Bool)

(assert (=> (and b!4248397 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352094) tb!256091))

(declare-fun b!4248847 () Bool)

(declare-fun e!2638952 () Bool)

(declare-fun tp!1303505 () Bool)

(assert (=> b!4248847 (= e!2638952 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))) (value!247510 (_1!25443 (get!15282 lt!1508117)))))) tp!1303505))))

(declare-fun result!312306 () Bool)

(assert (=> tb!256091 (= result!312306 (and (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117))))) (value!247510 (_1!25443 (get!15282 lt!1508117))))) e!2638952))))

(assert (= tb!256091 b!4248847))

(declare-fun m!4833745 () Bool)

(assert (=> b!4248847 m!4833745))

(declare-fun m!4833747 () Bool)

(assert (=> tb!256091 m!4833747))

(assert (=> d!1249541 t!352094))

(declare-fun b_and!336749 () Bool)

(assert (= b_and!336741 (and (=> t!352094 result!312306) b_and!336749)))

(declare-fun tb!256093 () Bool)

(declare-fun t!352096 () Bool)

(assert (=> (and b!4248399 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352096) tb!256093))

(declare-fun result!312308 () Bool)

(assert (= result!312308 result!312306))

(assert (=> d!1249541 t!352096))

(declare-fun b_and!336751 () Bool)

(assert (= b_and!336743 (and (=> t!352096 result!312308) b_and!336751)))

(declare-fun tb!256095 () Bool)

(declare-fun t!352098 () Bool)

(assert (=> (and b!4248685 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352098) tb!256095))

(declare-fun result!312310 () Bool)

(assert (= result!312310 result!312306))

(assert (=> d!1249541 t!352098))

(declare-fun b_and!336753 () Bool)

(assert (= b_and!336745 (and (=> t!352098 result!312310) b_and!336753)))

(declare-fun t!352100 () Bool)

(declare-fun tb!256097 () Bool)

(assert (=> (and b!4248701 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352100) tb!256097))

(declare-fun result!312312 () Bool)

(assert (= result!312312 result!312306))

(assert (=> d!1249541 t!352100))

(declare-fun b_and!336755 () Bool)

(assert (= b_and!336747 (and (=> t!352100 result!312312) b_and!336755)))

(declare-fun m!4833749 () Bool)

(assert (=> d!1249541 m!4833749))

(declare-fun m!4833751 () Bool)

(assert (=> d!1249541 m!4833751))

(assert (=> b!4248572 d!1249541))

(declare-fun d!1249543 () Bool)

(assert (=> d!1249543 (= (isDefined!7458 lt!1508117) (not (isEmpty!27840 lt!1508117)))))

(declare-fun bs!598585 () Bool)

(assert (= bs!598585 d!1249543))

(assert (=> bs!598585 m!4833491))

(assert (=> b!4248570 d!1249543))

(declare-fun d!1249545 () Bool)

(assert (=> d!1249545 (= (list!16952 lt!1508130) (list!16954 (c!721494 lt!1508130)))))

(declare-fun bs!598586 () Bool)

(assert (= bs!598586 d!1249545))

(declare-fun m!4833753 () Bool)

(assert (=> bs!598586 m!4833753))

(assert (=> d!1249463 d!1249545))

(declare-fun d!1249547 () Bool)

(declare-fun isBalanced!3766 (Conc!14175) Bool)

(assert (=> d!1249547 (= (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))) (isBalanced!3766 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))))))

(declare-fun bs!598587 () Bool)

(assert (= bs!598587 d!1249547))

(declare-fun m!4833755 () Bool)

(assert (=> bs!598587 m!4833755))

(assert (=> tb!256035 d!1249547))

(declare-fun b!4248848 () Bool)

(declare-fun e!2638953 () Bool)

(declare-fun lt!1508165 () Option!10098)

(assert (=> b!4248848 (= e!2638953 (contains!9753 (t!352016 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508165)))))))

(declare-fun b!4248849 () Bool)

(declare-fun e!2638954 () Option!10098)

(declare-fun lt!1508164 () Option!10098)

(declare-fun lt!1508163 () Option!10098)

(assert (=> b!4248849 (= e!2638954 (ite (and ((_ is None!10097) lt!1508164) ((_ is None!10097) lt!1508163)) None!10097 (ite ((_ is None!10097) lt!1508163) lt!1508164 (ite ((_ is None!10097) lt!1508164) lt!1508163 (ite (>= (size!34452 (_1!25443 (v!41053 lt!1508164))) (size!34452 (_1!25443 (v!41053 lt!1508163)))) lt!1508164 lt!1508163)))))))

(declare-fun call!293945 () Option!10098)

(assert (=> b!4248849 (= lt!1508164 call!293945)))

(assert (=> b!4248849 (= lt!1508163 (maxPrefix!4515 thiss!21641 (t!352016 (t!352016 rules!2971)) longerInput!62))))

(declare-fun bm!293940 () Bool)

(assert (=> bm!293940 (= call!293945 (maxPrefixOneRule!3468 thiss!21641 (h!52477 (t!352016 rules!2971)) longerInput!62))))

(declare-fun b!4248850 () Bool)

(assert (=> b!4248850 (= e!2638954 call!293945)))

(declare-fun d!1249549 () Bool)

(declare-fun e!2638955 () Bool)

(assert (=> d!1249549 e!2638955))

(declare-fun res!1746722 () Bool)

(assert (=> d!1249549 (=> res!1746722 e!2638955)))

(assert (=> d!1249549 (= res!1746722 (isEmpty!27840 lt!1508165))))

(assert (=> d!1249549 (= lt!1508165 e!2638954)))

(declare-fun c!721584 () Bool)

(assert (=> d!1249549 (= c!721584 (and ((_ is Cons!47057) (t!352016 rules!2971)) ((_ is Nil!47057) (t!352016 (t!352016 rules!2971)))))))

(declare-fun lt!1508166 () Unit!66051)

(declare-fun lt!1508167 () Unit!66051)

(assert (=> d!1249549 (= lt!1508166 lt!1508167)))

(assert (=> d!1249549 (isPrefix!4743 longerInput!62 longerInput!62)))

(assert (=> d!1249549 (= lt!1508167 (lemmaIsPrefixRefl!3140 longerInput!62 longerInput!62))))

(assert (=> d!1249549 (rulesValidInductive!2994 thiss!21641 (t!352016 rules!2971))))

(assert (=> d!1249549 (= (maxPrefix!4515 thiss!21641 (t!352016 rules!2971) longerInput!62) lt!1508165)))

(declare-fun b!4248851 () Bool)

(declare-fun res!1746720 () Bool)

(assert (=> b!4248851 (=> (not res!1746720) (not e!2638953))))

(assert (=> b!4248851 (= res!1746720 (< (size!34453 (_2!25443 (get!15282 lt!1508165))) (size!34453 longerInput!62)))))

(declare-fun b!4248852 () Bool)

(assert (=> b!4248852 (= e!2638955 e!2638953)))

(declare-fun res!1746719 () Bool)

(assert (=> b!4248852 (=> (not res!1746719) (not e!2638953))))

(assert (=> b!4248852 (= res!1746719 (isDefined!7458 lt!1508165))))

(declare-fun b!4248853 () Bool)

(declare-fun res!1746725 () Bool)

(assert (=> b!4248853 (=> (not res!1746725) (not e!2638953))))

(assert (=> b!4248853 (= res!1746725 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508165)))) (_2!25443 (get!15282 lt!1508165))) longerInput!62))))

(declare-fun b!4248854 () Bool)

(declare-fun res!1746724 () Bool)

(assert (=> b!4248854 (=> (not res!1746724) (not e!2638953))))

(assert (=> b!4248854 (= res!1746724 (matchR!6465 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508165)))) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508165))))))))

(declare-fun b!4248855 () Bool)

(declare-fun res!1746723 () Bool)

(assert (=> b!4248855 (=> (not res!1746723) (not e!2638953))))

(assert (=> b!4248855 (= res!1746723 (= (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508165)))) (originalCharacters!8308 (_1!25443 (get!15282 lt!1508165)))))))

(declare-fun b!4248856 () Bool)

(declare-fun res!1746721 () Bool)

(assert (=> b!4248856 (=> (not res!1746721) (not e!2638953))))

(assert (=> b!4248856 (= res!1746721 (= (value!247510 (_1!25443 (get!15282 lt!1508165))) (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508165)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508165)))))))))

(assert (= (and d!1249549 c!721584) b!4248850))

(assert (= (and d!1249549 (not c!721584)) b!4248849))

(assert (= (or b!4248850 b!4248849) bm!293940))

(assert (= (and d!1249549 (not res!1746722)) b!4248852))

(assert (= (and b!4248852 res!1746719) b!4248855))

(assert (= (and b!4248855 res!1746723) b!4248851))

(assert (= (and b!4248851 res!1746720) b!4248853))

(assert (= (and b!4248853 res!1746725) b!4248856))

(assert (= (and b!4248856 res!1746721) b!4248854))

(assert (= (and b!4248854 res!1746724) b!4248848))

(declare-fun m!4833757 () Bool)

(assert (=> bm!293940 m!4833757))

(declare-fun m!4833759 () Bool)

(assert (=> b!4248849 m!4833759))

(declare-fun m!4833761 () Bool)

(assert (=> b!4248851 m!4833761))

(declare-fun m!4833763 () Bool)

(assert (=> b!4248851 m!4833763))

(assert (=> b!4248851 m!4833251))

(declare-fun m!4833765 () Bool)

(assert (=> d!1249549 m!4833765))

(assert (=> d!1249549 m!4833493))

(assert (=> d!1249549 m!4833495))

(assert (=> d!1249549 m!4833649))

(assert (=> b!4248856 m!4833761))

(declare-fun m!4833767 () Bool)

(assert (=> b!4248856 m!4833767))

(assert (=> b!4248856 m!4833767))

(declare-fun m!4833769 () Bool)

(assert (=> b!4248856 m!4833769))

(assert (=> b!4248848 m!4833761))

(declare-fun m!4833771 () Bool)

(assert (=> b!4248848 m!4833771))

(declare-fun m!4833773 () Bool)

(assert (=> b!4248852 m!4833773))

(assert (=> b!4248855 m!4833761))

(declare-fun m!4833775 () Bool)

(assert (=> b!4248855 m!4833775))

(assert (=> b!4248855 m!4833775))

(declare-fun m!4833777 () Bool)

(assert (=> b!4248855 m!4833777))

(assert (=> b!4248853 m!4833761))

(assert (=> b!4248853 m!4833775))

(assert (=> b!4248853 m!4833775))

(assert (=> b!4248853 m!4833777))

(assert (=> b!4248853 m!4833777))

(declare-fun m!4833779 () Bool)

(assert (=> b!4248853 m!4833779))

(assert (=> b!4248854 m!4833761))

(assert (=> b!4248854 m!4833775))

(assert (=> b!4248854 m!4833775))

(assert (=> b!4248854 m!4833777))

(assert (=> b!4248854 m!4833777))

(declare-fun m!4833781 () Bool)

(assert (=> b!4248854 m!4833781))

(assert (=> b!4248567 d!1249549))

(declare-fun d!1249551 () Bool)

(assert (=> d!1249551 (= (isEmpty!27837 (originalCharacters!8308 (h!52478 tokens!592))) ((_ is Nil!47056) (originalCharacters!8308 (h!52478 tokens!592))))))

(assert (=> d!1249393 d!1249551))

(declare-fun d!1249553 () Bool)

(declare-fun lt!1508168 () Int)

(assert (=> d!1249553 (>= lt!1508168 0)))

(declare-fun e!2638956 () Int)

(assert (=> d!1249553 (= lt!1508168 e!2638956)))

(declare-fun c!721585 () Bool)

(assert (=> d!1249553 (= c!721585 ((_ is Nil!47056) (t!352015 shorterInput!62)))))

(assert (=> d!1249553 (= (size!34453 (t!352015 shorterInput!62)) lt!1508168)))

(declare-fun b!4248857 () Bool)

(assert (=> b!4248857 (= e!2638956 0)))

(declare-fun b!4248858 () Bool)

(assert (=> b!4248858 (= e!2638956 (+ 1 (size!34453 (t!352015 (t!352015 shorterInput!62)))))))

(assert (= (and d!1249553 c!721585) b!4248857))

(assert (= (and d!1249553 (not c!721585)) b!4248858))

(declare-fun m!4833783 () Bool)

(assert (=> b!4248858 m!4833783))

(assert (=> b!4248671 d!1249553))

(declare-fun d!1249555 () Bool)

(assert (=> d!1249555 true))

(declare-fun lambda!130250 () Int)

(declare-fun order!24747 () Int)

(declare-fun order!24749 () Int)

(declare-fun dynLambda!20169 (Int Int) Int)

(declare-fun dynLambda!20170 (Int Int) Int)

(assert (=> d!1249555 (< (dynLambda!20169 order!24747 (toChars!10591 (transformation!7964 (h!52477 rules!2971)))) (dynLambda!20170 order!24749 lambda!130250))))

(assert (=> d!1249555 true))

(declare-fun order!24751 () Int)

(declare-fun dynLambda!20171 (Int Int) Int)

(assert (=> d!1249555 (< (dynLambda!20171 order!24751 (toValue!10732 (transformation!7964 (h!52477 rules!2971)))) (dynLambda!20170 order!24749 lambda!130250))))

(declare-fun Forall!1604 (Int) Bool)

(assert (=> d!1249555 (= (semiInverseModEq!3471 (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toValue!10732 (transformation!7964 (h!52477 rules!2971)))) (Forall!1604 lambda!130250))))

(declare-fun bs!598610 () Bool)

(assert (= bs!598610 d!1249555))

(declare-fun m!4834193 () Bool)

(assert (=> bs!598610 m!4834193))

(assert (=> d!1249429 d!1249555))

(declare-fun d!1249693 () Bool)

(assert (=> d!1249693 true))

(declare-fun lt!1508240 () Bool)

(assert (=> d!1249693 (= lt!1508240 (rulesValidInductive!2994 thiss!21641 rules!2971))))

(declare-fun lambda!130253 () Int)

(declare-fun forall!8544 (List!47181 Int) Bool)

(assert (=> d!1249693 (= lt!1508240 (forall!8544 rules!2971 lambda!130253))))

(assert (=> d!1249693 (= (rulesValid!3093 thiss!21641 rules!2971) lt!1508240)))

(declare-fun bs!598611 () Bool)

(assert (= bs!598611 d!1249693))

(assert (=> bs!598611 m!4833457))

(declare-fun m!4834195 () Bool)

(assert (=> bs!598611 m!4834195))

(assert (=> d!1249467 d!1249693))

(declare-fun d!1249695 () Bool)

(declare-fun c!721642 () Bool)

(assert (=> d!1249695 (= c!721642 ((_ is Node!14175) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))))))

(declare-fun e!2639136 () Bool)

(assert (=> d!1249695 (= (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))) e!2639136)))

(declare-fun b!4249196 () Bool)

(declare-fun inv!61829 (Conc!14175) Bool)

(assert (=> b!4249196 (= e!2639136 (inv!61829 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))))))

(declare-fun b!4249197 () Bool)

(declare-fun e!2639137 () Bool)

(assert (=> b!4249197 (= e!2639136 e!2639137)))

(declare-fun res!1746856 () Bool)

(assert (=> b!4249197 (= res!1746856 (not ((_ is Leaf!21916) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))))))))

(assert (=> b!4249197 (=> res!1746856 e!2639137)))

(declare-fun b!4249198 () Bool)

(declare-fun inv!61830 (Conc!14175) Bool)

(assert (=> b!4249198 (= e!2639137 (inv!61830 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))))))

(assert (= (and d!1249695 c!721642) b!4249196))

(assert (= (and d!1249695 (not c!721642)) b!4249197))

(assert (= (and b!4249197 (not res!1746856)) b!4249198))

(declare-fun m!4834197 () Bool)

(assert (=> b!4249196 m!4834197))

(declare-fun m!4834199 () Bool)

(assert (=> b!4249198 m!4834199))

(assert (=> b!4248417 d!1249695))

(declare-fun d!1249697 () Bool)

(assert (=> d!1249697 (= (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))) (list!16954 (c!721494 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))))))

(declare-fun bs!598612 () Bool)

(assert (= bs!598612 d!1249697))

(declare-fun m!4834201 () Bool)

(assert (=> bs!598612 m!4834201))

(assert (=> b!4248549 d!1249697))

(declare-fun d!1249699 () Bool)

(declare-fun lt!1508241 () BalanceConc!27944)

(assert (=> d!1249699 (= (list!16952 lt!1508241) (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103))))))

(assert (=> d!1249699 (= lt!1508241 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))) (value!247510 (_1!25443 (get!15282 lt!1508103)))))))

(assert (=> d!1249699 (= (charsOf!5306 (_1!25443 (get!15282 lt!1508103))) lt!1508241)))

(declare-fun b_lambda!125169 () Bool)

(assert (=> (not b_lambda!125169) (not d!1249699)))

(declare-fun tb!256163 () Bool)

(declare-fun t!352167 () Bool)

(assert (=> (and b!4248397 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352167) tb!256163))

(declare-fun b!4249199 () Bool)

(declare-fun e!2639138 () Bool)

(declare-fun tp!1303597 () Bool)

(assert (=> b!4249199 (= e!2639138 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))) (value!247510 (_1!25443 (get!15282 lt!1508103)))))) tp!1303597))))

(declare-fun result!312382 () Bool)

(assert (=> tb!256163 (= result!312382 (and (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))) (value!247510 (_1!25443 (get!15282 lt!1508103))))) e!2639138))))

(assert (= tb!256163 b!4249199))

(declare-fun m!4834203 () Bool)

(assert (=> b!4249199 m!4834203))

(declare-fun m!4834205 () Bool)

(assert (=> tb!256163 m!4834205))

(assert (=> d!1249699 t!352167))

(declare-fun b_and!336797 () Bool)

(assert (= b_and!336749 (and (=> t!352167 result!312382) b_and!336797)))

(declare-fun tb!256165 () Bool)

(declare-fun t!352169 () Bool)

(assert (=> (and b!4248399 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352169) tb!256165))

(declare-fun result!312384 () Bool)

(assert (= result!312384 result!312382))

(assert (=> d!1249699 t!352169))

(declare-fun b_and!336799 () Bool)

(assert (= b_and!336751 (and (=> t!352169 result!312384) b_and!336799)))

(declare-fun tb!256167 () Bool)

(declare-fun t!352171 () Bool)

(assert (=> (and b!4248685 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352171) tb!256167))

(declare-fun result!312386 () Bool)

(assert (= result!312386 result!312382))

(assert (=> d!1249699 t!352171))

(declare-fun b_and!336801 () Bool)

(assert (= b_and!336753 (and (=> t!352171 result!312386) b_and!336801)))

(declare-fun tb!256169 () Bool)

(declare-fun t!352173 () Bool)

(assert (=> (and b!4248701 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352173) tb!256169))

(declare-fun result!312388 () Bool)

(assert (= result!312388 result!312382))

(assert (=> d!1249699 t!352173))

(declare-fun b_and!336803 () Bool)

(assert (= b_and!336755 (and (=> t!352173 result!312388) b_and!336803)))

(declare-fun m!4834207 () Bool)

(assert (=> d!1249699 m!4834207))

(declare-fun m!4834209 () Bool)

(assert (=> d!1249699 m!4834209))

(assert (=> b!4248549 d!1249699))

(declare-fun d!1249701 () Bool)

(assert (=> d!1249701 (= (get!15282 lt!1508103) (v!41053 lt!1508103))))

(assert (=> b!4248549 d!1249701))

(declare-fun d!1249703 () Bool)

(declare-fun c!721643 () Bool)

(assert (=> d!1249703 (= c!721643 ((_ is Nil!47056) lt!1508129))))

(declare-fun e!2639139 () (InoxSet C!25936))

(assert (=> d!1249703 (= (content!7396 lt!1508129) e!2639139)))

(declare-fun b!4249200 () Bool)

(assert (=> b!4249200 (= e!2639139 ((as const (Array C!25936 Bool)) false))))

(declare-fun b!4249201 () Bool)

(assert (=> b!4249201 (= e!2639139 ((_ map or) (store ((as const (Array C!25936 Bool)) false) (h!52476 lt!1508129) true) (content!7396 (t!352015 lt!1508129))))))

(assert (= (and d!1249703 c!721643) b!4249200))

(assert (= (and d!1249703 (not c!721643)) b!4249201))

(declare-fun m!4834211 () Bool)

(assert (=> b!4249201 m!4834211))

(declare-fun m!4834213 () Bool)

(assert (=> b!4249201 m!4834213))

(assert (=> d!1249459 d!1249703))

(declare-fun d!1249705 () Bool)

(declare-fun c!721644 () Bool)

(assert (=> d!1249705 (= c!721644 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))

(declare-fun e!2639140 () (InoxSet C!25936))

(assert (=> d!1249705 (= (content!7396 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) e!2639140)))

(declare-fun b!4249202 () Bool)

(assert (=> b!4249202 (= e!2639140 ((as const (Array C!25936 Bool)) false))))

(declare-fun b!4249203 () Bool)

(assert (=> b!4249203 (= e!2639140 ((_ map or) (store ((as const (Array C!25936 Bool)) false) (h!52476 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) true) (content!7396 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))))

(assert (= (and d!1249705 c!721644) b!4249202))

(assert (= (and d!1249705 (not c!721644)) b!4249203))

(declare-fun m!4834215 () Bool)

(assert (=> b!4249203 m!4834215))

(assert (=> b!4249203 m!4833723))

(assert (=> d!1249459 d!1249705))

(declare-fun d!1249707 () Bool)

(declare-fun c!721645 () Bool)

(assert (=> d!1249707 (= c!721645 ((_ is Nil!47056) (_2!25443 (v!41053 lt!1508051))))))

(declare-fun e!2639141 () (InoxSet C!25936))

(assert (=> d!1249707 (= (content!7396 (_2!25443 (v!41053 lt!1508051))) e!2639141)))

(declare-fun b!4249204 () Bool)

(assert (=> b!4249204 (= e!2639141 ((as const (Array C!25936 Bool)) false))))

(declare-fun b!4249205 () Bool)

(assert (=> b!4249205 (= e!2639141 ((_ map or) (store ((as const (Array C!25936 Bool)) false) (h!52476 (_2!25443 (v!41053 lt!1508051))) true) (content!7396 (t!352015 (_2!25443 (v!41053 lt!1508051))))))))

(assert (= (and d!1249707 c!721645) b!4249204))

(assert (= (and d!1249707 (not c!721645)) b!4249205))

(declare-fun m!4834217 () Bool)

(assert (=> b!4249205 m!4834217))

(declare-fun m!4834219 () Bool)

(assert (=> b!4249205 m!4834219))

(assert (=> d!1249459 d!1249707))

(declare-fun d!1249709 () Bool)

(assert (=> d!1249709 (= (isEmpty!27840 lt!1508117) (not ((_ is Some!10097) lt!1508117)))))

(assert (=> d!1249455 d!1249709))

(declare-fun b!4249216 () Bool)

(declare-fun e!2639149 () Bool)

(assert (=> b!4249216 (= e!2639149 (isPrefix!4743 (tail!6852 longerInput!62) (tail!6852 longerInput!62)))))

(declare-fun b!4249217 () Bool)

(declare-fun e!2639150 () Bool)

(assert (=> b!4249217 (= e!2639150 (>= (size!34453 longerInput!62) (size!34453 longerInput!62)))))

(declare-fun b!4249215 () Bool)

(declare-fun res!1746866 () Bool)

(assert (=> b!4249215 (=> (not res!1746866) (not e!2639149))))

(assert (=> b!4249215 (= res!1746866 (= (head!8993 longerInput!62) (head!8993 longerInput!62)))))

(declare-fun b!4249214 () Bool)

(declare-fun e!2639148 () Bool)

(assert (=> b!4249214 (= e!2639148 e!2639149)))

(declare-fun res!1746865 () Bool)

(assert (=> b!4249214 (=> (not res!1746865) (not e!2639149))))

(assert (=> b!4249214 (= res!1746865 (not ((_ is Nil!47056) longerInput!62)))))

(declare-fun d!1249711 () Bool)

(assert (=> d!1249711 e!2639150))

(declare-fun res!1746867 () Bool)

(assert (=> d!1249711 (=> res!1746867 e!2639150)))

(declare-fun lt!1508244 () Bool)

(assert (=> d!1249711 (= res!1746867 (not lt!1508244))))

(assert (=> d!1249711 (= lt!1508244 e!2639148)))

(declare-fun res!1746868 () Bool)

(assert (=> d!1249711 (=> res!1746868 e!2639148)))

(assert (=> d!1249711 (= res!1746868 ((_ is Nil!47056) longerInput!62))))

(assert (=> d!1249711 (= (isPrefix!4743 longerInput!62 longerInput!62) lt!1508244)))

(assert (= (and d!1249711 (not res!1746868)) b!4249214))

(assert (= (and b!4249214 res!1746865) b!4249215))

(assert (= (and b!4249215 res!1746866) b!4249216))

(assert (= (and d!1249711 (not res!1746867)) b!4249217))

(declare-fun m!4834221 () Bool)

(assert (=> b!4249216 m!4834221))

(assert (=> b!4249216 m!4834221))

(assert (=> b!4249216 m!4834221))

(assert (=> b!4249216 m!4834221))

(declare-fun m!4834223 () Bool)

(assert (=> b!4249216 m!4834223))

(assert (=> b!4249217 m!4833251))

(assert (=> b!4249217 m!4833251))

(declare-fun m!4834225 () Bool)

(assert (=> b!4249215 m!4834225))

(assert (=> b!4249215 m!4834225))

(assert (=> d!1249455 d!1249711))

(declare-fun d!1249713 () Bool)

(assert (=> d!1249713 (isPrefix!4743 longerInput!62 longerInput!62)))

(declare-fun lt!1508247 () Unit!66051)

(declare-fun choose!25956 (List!47180 List!47180) Unit!66051)

(assert (=> d!1249713 (= lt!1508247 (choose!25956 longerInput!62 longerInput!62))))

(assert (=> d!1249713 (= (lemmaIsPrefixRefl!3140 longerInput!62 longerInput!62) lt!1508247)))

(declare-fun bs!598613 () Bool)

(assert (= bs!598613 d!1249713))

(assert (=> bs!598613 m!4833493))

(declare-fun m!4834227 () Bool)

(assert (=> bs!598613 m!4834227))

(assert (=> d!1249455 d!1249713))

(declare-fun bs!598614 () Bool)

(declare-fun d!1249715 () Bool)

(assert (= bs!598614 (and d!1249715 d!1249693)))

(declare-fun lambda!130256 () Int)

(assert (=> bs!598614 (= lambda!130256 lambda!130253)))

(assert (=> d!1249715 true))

(declare-fun lt!1508250 () Bool)

(assert (=> d!1249715 (= lt!1508250 (forall!8544 rules!2971 lambda!130256))))

(declare-fun e!2639156 () Bool)

(assert (=> d!1249715 (= lt!1508250 e!2639156)))

(declare-fun res!1746873 () Bool)

(assert (=> d!1249715 (=> res!1746873 e!2639156)))

(assert (=> d!1249715 (= res!1746873 (not ((_ is Cons!47057) rules!2971)))))

(assert (=> d!1249715 (= (rulesValidInductive!2994 thiss!21641 rules!2971) lt!1508250)))

(declare-fun b!4249222 () Bool)

(declare-fun e!2639155 () Bool)

(assert (=> b!4249222 (= e!2639156 e!2639155)))

(declare-fun res!1746874 () Bool)

(assert (=> b!4249222 (=> (not res!1746874) (not e!2639155))))

(declare-fun ruleValid!3608 (LexerInterface!7559 Rule!15728) Bool)

(assert (=> b!4249222 (= res!1746874 (ruleValid!3608 thiss!21641 (h!52477 rules!2971)))))

(declare-fun b!4249223 () Bool)

(assert (=> b!4249223 (= e!2639155 (rulesValidInductive!2994 thiss!21641 (t!352016 rules!2971)))))

(assert (= (and d!1249715 (not res!1746873)) b!4249222))

(assert (= (and b!4249222 res!1746874) b!4249223))

(declare-fun m!4834229 () Bool)

(assert (=> d!1249715 m!4834229))

(declare-fun m!4834231 () Bool)

(assert (=> b!4249222 m!4834231))

(assert (=> b!4249223 m!4833649))

(assert (=> d!1249455 d!1249715))

(declare-fun b!4249226 () Bool)

(declare-fun res!1746876 () Bool)

(declare-fun e!2639158 () Bool)

(assert (=> b!4249226 (=> (not res!1746876) (not e!2639158))))

(declare-fun lt!1508251 () List!47180)

(assert (=> b!4249226 (= res!1746876 (= (size!34453 lt!1508251) (+ (size!34453 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))) (size!34453 (_2!25443 (get!15282 lt!1508103))))))))

(declare-fun d!1249717 () Bool)

(assert (=> d!1249717 e!2639158))

(declare-fun res!1746875 () Bool)

(assert (=> d!1249717 (=> (not res!1746875) (not e!2639158))))

(assert (=> d!1249717 (= res!1746875 (= (content!7396 lt!1508251) ((_ map or) (content!7396 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))) (content!7396 (_2!25443 (get!15282 lt!1508103))))))))

(declare-fun e!2639157 () List!47180)

(assert (=> d!1249717 (= lt!1508251 e!2639157)))

(declare-fun c!721646 () Bool)

(assert (=> d!1249717 (= c!721646 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))))))

(assert (=> d!1249717 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))) (_2!25443 (get!15282 lt!1508103))) lt!1508251)))

(declare-fun b!4249227 () Bool)

(assert (=> b!4249227 (= e!2639158 (or (not (= (_2!25443 (get!15282 lt!1508103)) Nil!47056)) (= lt!1508251 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))))))))

(declare-fun b!4249225 () Bool)

(assert (=> b!4249225 (= e!2639157 (Cons!47056 (h!52476 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))) (++!11975 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))) (_2!25443 (get!15282 lt!1508103)))))))

(declare-fun b!4249224 () Bool)

(assert (=> b!4249224 (= e!2639157 (_2!25443 (get!15282 lt!1508103)))))

(assert (= (and d!1249717 c!721646) b!4249224))

(assert (= (and d!1249717 (not c!721646)) b!4249225))

(assert (= (and d!1249717 res!1746875) b!4249226))

(assert (= (and b!4249226 res!1746876) b!4249227))

(declare-fun m!4834233 () Bool)

(assert (=> b!4249226 m!4834233))

(assert (=> b!4249226 m!4833469))

(declare-fun m!4834235 () Bool)

(assert (=> b!4249226 m!4834235))

(assert (=> b!4249226 m!4833449))

(declare-fun m!4834237 () Bool)

(assert (=> d!1249717 m!4834237))

(assert (=> d!1249717 m!4833469))

(declare-fun m!4834239 () Bool)

(assert (=> d!1249717 m!4834239))

(declare-fun m!4834241 () Bool)

(assert (=> d!1249717 m!4834241))

(declare-fun m!4834243 () Bool)

(assert (=> b!4249225 m!4834243))

(assert (=> b!4248547 d!1249717))

(assert (=> b!4248547 d!1249697))

(assert (=> b!4248547 d!1249699))

(assert (=> b!4248547 d!1249701))

(declare-fun d!1249719 () Bool)

(declare-fun lt!1508252 () Int)

(assert (=> d!1249719 (>= lt!1508252 0)))

(declare-fun e!2639159 () Int)

(assert (=> d!1249719 (= lt!1508252 e!2639159)))

(declare-fun c!721647 () Bool)

(assert (=> d!1249719 (= c!721647 ((_ is Nil!47056) (_2!25443 (get!15282 lt!1508103))))))

(assert (=> d!1249719 (= (size!34453 (_2!25443 (get!15282 lt!1508103))) lt!1508252)))

(declare-fun b!4249228 () Bool)

(assert (=> b!4249228 (= e!2639159 0)))

(declare-fun b!4249229 () Bool)

(assert (=> b!4249229 (= e!2639159 (+ 1 (size!34453 (t!352015 (_2!25443 (get!15282 lt!1508103))))))))

(assert (= (and d!1249719 c!721647) b!4249228))

(assert (= (and d!1249719 (not c!721647)) b!4249229))

(declare-fun m!4834245 () Bool)

(assert (=> b!4249229 m!4834245))

(assert (=> b!4248545 d!1249719))

(assert (=> b!4248545 d!1249701))

(assert (=> b!4248545 d!1249471))

(declare-fun b!4249232 () Bool)

(declare-fun res!1746878 () Bool)

(declare-fun e!2639161 () Bool)

(assert (=> b!4249232 (=> (not res!1746878) (not e!2639161))))

(declare-fun lt!1508253 () List!47180)

(assert (=> b!4249232 (= res!1746878 (= (size!34453 lt!1508253) (+ (size!34453 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))) (size!34453 (_2!25443 (v!41053 lt!1508052))))))))

(declare-fun d!1249721 () Bool)

(assert (=> d!1249721 e!2639161))

(declare-fun res!1746877 () Bool)

(assert (=> d!1249721 (=> (not res!1746877) (not e!2639161))))

(assert (=> d!1249721 (= res!1746877 (= (content!7396 lt!1508253) ((_ map or) (content!7396 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))) (content!7396 (_2!25443 (v!41053 lt!1508052))))))))

(declare-fun e!2639160 () List!47180)

(assert (=> d!1249721 (= lt!1508253 e!2639160)))

(declare-fun c!721648 () Bool)

(assert (=> d!1249721 (= c!721648 ((_ is Nil!47056) (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))))))

(assert (=> d!1249721 (= (++!11975 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))) (_2!25443 (v!41053 lt!1508052))) lt!1508253)))

(declare-fun b!4249233 () Bool)

(assert (=> b!4249233 (= e!2639161 (or (not (= (_2!25443 (v!41053 lt!1508052)) Nil!47056)) (= lt!1508253 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052))))))))))

(declare-fun b!4249231 () Bool)

(assert (=> b!4249231 (= e!2639160 (Cons!47056 (h!52476 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))) (++!11975 (t!352015 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508052)))))) (_2!25443 (v!41053 lt!1508052)))))))

(declare-fun b!4249230 () Bool)

(assert (=> b!4249230 (= e!2639160 (_2!25443 (v!41053 lt!1508052)))))

(assert (= (and d!1249721 c!721648) b!4249230))

(assert (= (and d!1249721 (not c!721648)) b!4249231))

(assert (= (and d!1249721 res!1746877) b!4249232))

(assert (= (and b!4249232 res!1746878) b!4249233))

(declare-fun m!4834247 () Bool)

(assert (=> b!4249232 m!4834247))

(assert (=> b!4249232 m!4833623))

(assert (=> b!4249232 m!4833311))

(declare-fun m!4834249 () Bool)

(assert (=> d!1249721 m!4834249))

(assert (=> d!1249721 m!4833633))

(assert (=> d!1249721 m!4833317))

(declare-fun m!4834251 () Bool)

(assert (=> b!4249231 m!4834251))

(assert (=> b!4248448 d!1249721))

(declare-fun b!4249252 () Bool)

(declare-fun res!1746899 () Bool)

(declare-fun e!2639173 () Bool)

(assert (=> b!4249252 (=> (not res!1746899) (not e!2639173))))

(declare-fun lt!1508266 () Option!10098)

(assert (=> b!4249252 (= res!1746899 (= (rule!11096 (_1!25443 (get!15282 lt!1508266))) (h!52477 rules!2971)))))

(declare-fun b!4249253 () Bool)

(declare-fun e!2639172 () Bool)

(declare-datatypes ((tuple2!44624 0))(
  ( (tuple2!44625 (_1!25446 List!47180) (_2!25446 List!47180)) )
))
(declare-fun findLongestMatchInner!1710 (Regex!12869 List!47180 Int List!47180 List!47180 Int) tuple2!44624)

(assert (=> b!4249253 (= e!2639172 (matchR!6465 (regex!7964 (h!52477 rules!2971)) (_1!25446 (findLongestMatchInner!1710 (regex!7964 (h!52477 rules!2971)) Nil!47056 (size!34453 Nil!47056) shorterInput!62 shorterInput!62 (size!34453 shorterInput!62)))))))

(declare-fun d!1249723 () Bool)

(declare-fun e!2639170 () Bool)

(assert (=> d!1249723 e!2639170))

(declare-fun res!1746898 () Bool)

(assert (=> d!1249723 (=> res!1746898 e!2639170)))

(assert (=> d!1249723 (= res!1746898 (isEmpty!27840 lt!1508266))))

(declare-fun e!2639171 () Option!10098)

(assert (=> d!1249723 (= lt!1508266 e!2639171)))

(declare-fun c!721651 () Bool)

(declare-fun lt!1508267 () tuple2!44624)

(assert (=> d!1249723 (= c!721651 (isEmpty!27837 (_1!25446 lt!1508267)))))

(declare-fun findLongestMatch!1613 (Regex!12869 List!47180) tuple2!44624)

(assert (=> d!1249723 (= lt!1508267 (findLongestMatch!1613 (regex!7964 (h!52477 rules!2971)) shorterInput!62))))

(assert (=> d!1249723 (ruleValid!3608 thiss!21641 (h!52477 rules!2971))))

(assert (=> d!1249723 (= (maxPrefixOneRule!3468 thiss!21641 (h!52477 rules!2971) shorterInput!62) lt!1508266)))

(declare-fun b!4249254 () Bool)

(assert (=> b!4249254 (= e!2639170 e!2639173)))

(declare-fun res!1746894 () Bool)

(assert (=> b!4249254 (=> (not res!1746894) (not e!2639173))))

(assert (=> b!4249254 (= res!1746894 (matchR!6465 (regex!7964 (h!52477 rules!2971)) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508266))))))))

(declare-fun b!4249255 () Bool)

(assert (=> b!4249255 (= e!2639173 (= (size!34452 (_1!25443 (get!15282 lt!1508266))) (size!34453 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508266))))))))

(declare-fun b!4249256 () Bool)

(declare-fun res!1746897 () Bool)

(assert (=> b!4249256 (=> (not res!1746897) (not e!2639173))))

(assert (=> b!4249256 (= res!1746897 (< (size!34453 (_2!25443 (get!15282 lt!1508266))) (size!34453 shorterInput!62)))))

(declare-fun b!4249257 () Bool)

(assert (=> b!4249257 (= e!2639171 None!10097)))

(declare-fun b!4249258 () Bool)

(declare-fun res!1746893 () Bool)

(assert (=> b!4249258 (=> (not res!1746893) (not e!2639173))))

(assert (=> b!4249258 (= res!1746893 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508266)))) (_2!25443 (get!15282 lt!1508266))) shorterInput!62))))

(declare-fun b!4249259 () Bool)

(declare-fun size!34457 (BalanceConc!27944) Int)

(assert (=> b!4249259 (= e!2639171 (Some!10097 (tuple2!44619 (Token!14555 (apply!10770 (transformation!7964 (h!52477 rules!2971)) (seqFromList!5830 (_1!25446 lt!1508267))) (h!52477 rules!2971) (size!34457 (seqFromList!5830 (_1!25446 lt!1508267))) (_1!25446 lt!1508267)) (_2!25446 lt!1508267))))))

(declare-fun lt!1508265 () Unit!66051)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1673 (Regex!12869 List!47180) Unit!66051)

(assert (=> b!4249259 (= lt!1508265 (longestMatchIsAcceptedByMatchOrIsEmpty!1673 (regex!7964 (h!52477 rules!2971)) shorterInput!62))))

(declare-fun res!1746895 () Bool)

(assert (=> b!4249259 (= res!1746895 (isEmpty!27837 (_1!25446 (findLongestMatchInner!1710 (regex!7964 (h!52477 rules!2971)) Nil!47056 (size!34453 Nil!47056) shorterInput!62 shorterInput!62 (size!34453 shorterInput!62)))))))

(assert (=> b!4249259 (=> res!1746895 e!2639172)))

(assert (=> b!4249259 e!2639172))

(declare-fun lt!1508264 () Unit!66051)

(assert (=> b!4249259 (= lt!1508264 lt!1508265)))

(declare-fun lt!1508268 () Unit!66051)

(declare-fun lemmaSemiInverse!2541 (TokenValueInjection!15816 BalanceConc!27944) Unit!66051)

(assert (=> b!4249259 (= lt!1508268 (lemmaSemiInverse!2541 (transformation!7964 (h!52477 rules!2971)) (seqFromList!5830 (_1!25446 lt!1508267))))))

(declare-fun b!4249260 () Bool)

(declare-fun res!1746896 () Bool)

(assert (=> b!4249260 (=> (not res!1746896) (not e!2639173))))

(assert (=> b!4249260 (= res!1746896 (= (value!247510 (_1!25443 (get!15282 lt!1508266))) (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508266)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508266)))))))))

(assert (= (and d!1249723 c!721651) b!4249257))

(assert (= (and d!1249723 (not c!721651)) b!4249259))

(assert (= (and b!4249259 (not res!1746895)) b!4249253))

(assert (= (and d!1249723 (not res!1746898)) b!4249254))

(assert (= (and b!4249254 res!1746894) b!4249258))

(assert (= (and b!4249258 res!1746893) b!4249256))

(assert (= (and b!4249256 res!1746897) b!4249252))

(assert (= (and b!4249252 res!1746899) b!4249260))

(assert (= (and b!4249260 res!1746896) b!4249255))

(declare-fun m!4834253 () Bool)

(assert (=> b!4249258 m!4834253))

(declare-fun m!4834255 () Bool)

(assert (=> b!4249258 m!4834255))

(assert (=> b!4249258 m!4834255))

(declare-fun m!4834257 () Bool)

(assert (=> b!4249258 m!4834257))

(assert (=> b!4249258 m!4834257))

(declare-fun m!4834259 () Bool)

(assert (=> b!4249258 m!4834259))

(assert (=> b!4249252 m!4834253))

(declare-fun m!4834261 () Bool)

(assert (=> d!1249723 m!4834261))

(declare-fun m!4834263 () Bool)

(assert (=> d!1249723 m!4834263))

(declare-fun m!4834265 () Bool)

(assert (=> d!1249723 m!4834265))

(assert (=> d!1249723 m!4834231))

(declare-fun m!4834267 () Bool)

(assert (=> b!4249259 m!4834267))

(declare-fun m!4834269 () Bool)

(assert (=> b!4249259 m!4834269))

(assert (=> b!4249259 m!4833253))

(declare-fun m!4834271 () Bool)

(assert (=> b!4249259 m!4834271))

(assert (=> b!4249259 m!4834267))

(declare-fun m!4834273 () Bool)

(assert (=> b!4249259 m!4834273))

(assert (=> b!4249259 m!4834267))

(declare-fun m!4834275 () Bool)

(assert (=> b!4249259 m!4834275))

(assert (=> b!4249259 m!4834269))

(declare-fun m!4834277 () Bool)

(assert (=> b!4249259 m!4834277))

(assert (=> b!4249259 m!4833253))

(assert (=> b!4249259 m!4834267))

(declare-fun m!4834279 () Bool)

(assert (=> b!4249259 m!4834279))

(declare-fun m!4834281 () Bool)

(assert (=> b!4249259 m!4834281))

(assert (=> b!4249256 m!4834253))

(declare-fun m!4834283 () Bool)

(assert (=> b!4249256 m!4834283))

(assert (=> b!4249256 m!4833253))

(assert (=> b!4249253 m!4834269))

(assert (=> b!4249253 m!4833253))

(assert (=> b!4249253 m!4834269))

(assert (=> b!4249253 m!4833253))

(assert (=> b!4249253 m!4834271))

(declare-fun m!4834285 () Bool)

(assert (=> b!4249253 m!4834285))

(assert (=> b!4249260 m!4834253))

(declare-fun m!4834287 () Bool)

(assert (=> b!4249260 m!4834287))

(assert (=> b!4249260 m!4834287))

(declare-fun m!4834289 () Bool)

(assert (=> b!4249260 m!4834289))

(assert (=> b!4249254 m!4834253))

(assert (=> b!4249254 m!4834255))

(assert (=> b!4249254 m!4834255))

(assert (=> b!4249254 m!4834257))

(assert (=> b!4249254 m!4834257))

(declare-fun m!4834291 () Bool)

(assert (=> b!4249254 m!4834291))

(assert (=> b!4249255 m!4834253))

(declare-fun m!4834293 () Bool)

(assert (=> b!4249255 m!4834293))

(assert (=> bm!293934 d!1249723))

(declare-fun d!1249725 () Bool)

(assert (=> d!1249725 (= (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))) (isBalanced!3766 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))))))

(declare-fun bs!598615 () Bool)

(assert (= bs!598615 d!1249725))

(declare-fun m!4834295 () Bool)

(assert (=> bs!598615 m!4834295))

(assert (=> tb!256051 d!1249725))

(declare-fun d!1249727 () Bool)

(declare-fun charsToBigInt!1 (List!47179) Int)

(assert (=> d!1249727 (= (inv!17 (value!247510 (h!52478 tokens!592))) (= (charsToBigInt!1 (text!57806 (value!247510 (h!52478 tokens!592)))) (value!247502 (value!247510 (h!52478 tokens!592)))))))

(declare-fun bs!598616 () Bool)

(assert (= bs!598616 d!1249727))

(declare-fun m!4834297 () Bool)

(assert (=> bs!598616 m!4834297))

(assert (=> b!4248660 d!1249727))

(declare-fun d!1249729 () Bool)

(declare-fun lt!1508271 () Bool)

(declare-fun content!7398 (List!47181) (InoxSet Rule!15728))

(assert (=> d!1249729 (= lt!1508271 (select (content!7398 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508103)))))))

(declare-fun e!2639178 () Bool)

(assert (=> d!1249729 (= lt!1508271 e!2639178)))

(declare-fun res!1746905 () Bool)

(assert (=> d!1249729 (=> (not res!1746905) (not e!2639178))))

(assert (=> d!1249729 (= res!1746905 ((_ is Cons!47057) rules!2971))))

(assert (=> d!1249729 (= (contains!9753 rules!2971 (rule!11096 (_1!25443 (get!15282 lt!1508103)))) lt!1508271)))

(declare-fun b!4249265 () Bool)

(declare-fun e!2639179 () Bool)

(assert (=> b!4249265 (= e!2639178 e!2639179)))

(declare-fun res!1746904 () Bool)

(assert (=> b!4249265 (=> res!1746904 e!2639179)))

(assert (=> b!4249265 (= res!1746904 (= (h!52477 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508103)))))))

(declare-fun b!4249266 () Bool)

(assert (=> b!4249266 (= e!2639179 (contains!9753 (t!352016 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508103)))))))

(assert (= (and d!1249729 res!1746905) b!4249265))

(assert (= (and b!4249265 (not res!1746904)) b!4249266))

(declare-fun m!4834299 () Bool)

(assert (=> d!1249729 m!4834299))

(declare-fun m!4834301 () Bool)

(assert (=> d!1249729 m!4834301))

(declare-fun m!4834303 () Bool)

(assert (=> b!4249266 m!4834303))

(assert (=> b!4248542 d!1249729))

(assert (=> b!4248542 d!1249701))

(declare-fun d!1249731 () Bool)

(declare-fun res!1746910 () Bool)

(declare-fun e!2639184 () Bool)

(assert (=> d!1249731 (=> res!1746910 e!2639184)))

(assert (=> d!1249731 (= res!1746910 ((_ is Nil!47057) rules!2971))))

(assert (=> d!1249731 (= (noDuplicateTag!3254 thiss!21641 rules!2971 Nil!47060) e!2639184)))

(declare-fun b!4249271 () Bool)

(declare-fun e!2639185 () Bool)

(assert (=> b!4249271 (= e!2639184 e!2639185)))

(declare-fun res!1746911 () Bool)

(assert (=> b!4249271 (=> (not res!1746911) (not e!2639185))))

(declare-fun contains!9755 (List!47184 String!54900) Bool)

(assert (=> b!4249271 (= res!1746911 (not (contains!9755 Nil!47060 (tag!8828 (h!52477 rules!2971)))))))

(declare-fun b!4249272 () Bool)

(assert (=> b!4249272 (= e!2639185 (noDuplicateTag!3254 thiss!21641 (t!352016 rules!2971) (Cons!47060 (tag!8828 (h!52477 rules!2971)) Nil!47060)))))

(assert (= (and d!1249731 (not res!1746910)) b!4249271))

(assert (= (and b!4249271 res!1746911) b!4249272))

(declare-fun m!4834305 () Bool)

(assert (=> b!4249271 m!4834305))

(declare-fun m!4834307 () Bool)

(assert (=> b!4249272 m!4834307))

(assert (=> b!4248663 d!1249731))

(declare-fun d!1249733 () Bool)

(declare-fun c!721652 () Bool)

(assert (=> d!1249733 (= c!721652 ((_ is Node!14175) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))))))

(declare-fun e!2639186 () Bool)

(assert (=> d!1249733 (= (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))) e!2639186)))

(declare-fun b!4249273 () Bool)

(assert (=> b!4249273 (= e!2639186 (inv!61829 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))))))

(declare-fun b!4249274 () Bool)

(declare-fun e!2639187 () Bool)

(assert (=> b!4249274 (= e!2639186 e!2639187)))

(declare-fun res!1746912 () Bool)

(assert (=> b!4249274 (= res!1746912 (not ((_ is Leaf!21916) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))))))))

(assert (=> b!4249274 (=> res!1746912 e!2639187)))

(declare-fun b!4249275 () Bool)

(assert (=> b!4249275 (= e!2639187 (inv!61830 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))))))

(assert (= (and d!1249733 c!721652) b!4249273))

(assert (= (and d!1249733 (not c!721652)) b!4249274))

(assert (= (and b!4249274 (not res!1746912)) b!4249275))

(declare-fun m!4834309 () Bool)

(assert (=> b!4249273 m!4834309))

(declare-fun m!4834311 () Bool)

(assert (=> b!4249275 m!4834311))

(assert (=> b!4248459 d!1249733))

(declare-fun d!1249735 () Bool)

(assert (=> d!1249735 (= (list!16952 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))) (list!16954 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))))))

(declare-fun bs!598617 () Bool)

(assert (= bs!598617 d!1249735))

(declare-fun m!4834313 () Bool)

(assert (=> bs!598617 m!4834313))

(assert (=> b!4248409 d!1249735))

(declare-fun d!1249737 () Bool)

(assert (=> d!1249737 true))

(declare-fun lambda!130259 () Int)

(declare-fun order!24753 () Int)

(declare-fun dynLambda!20172 (Int Int) Int)

(assert (=> d!1249737 (< (dynLambda!20171 order!24751 (toValue!10732 (transformation!7964 (h!52477 rules!2971)))) (dynLambda!20172 order!24753 lambda!130259))))

(declare-fun Forall2!1203 (Int) Bool)

(assert (=> d!1249737 (= (equivClasses!3370 (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toValue!10732 (transformation!7964 (h!52477 rules!2971)))) (Forall2!1203 lambda!130259))))

(declare-fun bs!598618 () Bool)

(assert (= bs!598618 d!1249737))

(declare-fun m!4834315 () Bool)

(assert (=> bs!598618 m!4834315))

(assert (=> b!4248466 d!1249737))

(assert (=> b!4248573 d!1249539))

(assert (=> b!4248573 d!1249541))

(assert (=> b!4248573 d!1249521))

(declare-fun d!1249739 () Bool)

(declare-fun c!721653 () Bool)

(assert (=> d!1249739 (= c!721653 ((_ is IntegerValue!24582) (value!247510 (h!52478 (t!352017 tokens!592)))))))

(declare-fun e!2639192 () Bool)

(assert (=> d!1249739 (= (inv!21 (value!247510 (h!52478 (t!352017 tokens!592)))) e!2639192)))

(declare-fun b!4249280 () Bool)

(assert (=> b!4249280 (= e!2639192 (inv!16 (value!247510 (h!52478 (t!352017 tokens!592)))))))

(declare-fun b!4249281 () Bool)

(declare-fun e!2639190 () Bool)

(assert (=> b!4249281 (= e!2639190 (inv!15 (value!247510 (h!52478 (t!352017 tokens!592)))))))

(declare-fun b!4249282 () Bool)

(declare-fun e!2639191 () Bool)

(assert (=> b!4249282 (= e!2639192 e!2639191)))

(declare-fun c!721654 () Bool)

(assert (=> b!4249282 (= c!721654 ((_ is IntegerValue!24583) (value!247510 (h!52478 (t!352017 tokens!592)))))))

(declare-fun b!4249283 () Bool)

(declare-fun res!1746915 () Bool)

(assert (=> b!4249283 (=> res!1746915 e!2639190)))

(assert (=> b!4249283 (= res!1746915 (not ((_ is IntegerValue!24584) (value!247510 (h!52478 (t!352017 tokens!592))))))))

(assert (=> b!4249283 (= e!2639191 e!2639190)))

(declare-fun b!4249284 () Bool)

(assert (=> b!4249284 (= e!2639191 (inv!17 (value!247510 (h!52478 (t!352017 tokens!592)))))))

(assert (= (and d!1249739 c!721653) b!4249280))

(assert (= (and d!1249739 (not c!721653)) b!4249282))

(assert (= (and b!4249282 c!721654) b!4249284))

(assert (= (and b!4249282 (not c!721654)) b!4249283))

(assert (= (and b!4249283 (not res!1746915)) b!4249281))

(declare-fun m!4834317 () Bool)

(assert (=> b!4249280 m!4834317))

(declare-fun m!4834319 () Bool)

(assert (=> b!4249281 m!4834319))

(declare-fun m!4834321 () Bool)

(assert (=> b!4249284 m!4834321))

(assert (=> b!4248683 d!1249739))

(declare-fun d!1249741 () Bool)

(assert (=> d!1249741 (= (isEmpty!27840 lt!1508103) (not ((_ is Some!10097) lt!1508103)))))

(assert (=> d!1249433 d!1249741))

(declare-fun b!4249287 () Bool)

(declare-fun e!2639194 () Bool)

(assert (=> b!4249287 (= e!2639194 (isPrefix!4743 (tail!6852 shorterInput!62) (tail!6852 shorterInput!62)))))

(declare-fun b!4249288 () Bool)

(declare-fun e!2639195 () Bool)

(assert (=> b!4249288 (= e!2639195 (>= (size!34453 shorterInput!62) (size!34453 shorterInput!62)))))

(declare-fun b!4249286 () Bool)

(declare-fun res!1746917 () Bool)

(assert (=> b!4249286 (=> (not res!1746917) (not e!2639194))))

(assert (=> b!4249286 (= res!1746917 (= (head!8993 shorterInput!62) (head!8993 shorterInput!62)))))

(declare-fun b!4249285 () Bool)

(declare-fun e!2639193 () Bool)

(assert (=> b!4249285 (= e!2639193 e!2639194)))

(declare-fun res!1746916 () Bool)

(assert (=> b!4249285 (=> (not res!1746916) (not e!2639194))))

(assert (=> b!4249285 (= res!1746916 (not ((_ is Nil!47056) shorterInput!62)))))

(declare-fun d!1249743 () Bool)

(assert (=> d!1249743 e!2639195))

(declare-fun res!1746918 () Bool)

(assert (=> d!1249743 (=> res!1746918 e!2639195)))

(declare-fun lt!1508272 () Bool)

(assert (=> d!1249743 (= res!1746918 (not lt!1508272))))

(assert (=> d!1249743 (= lt!1508272 e!2639193)))

(declare-fun res!1746919 () Bool)

(assert (=> d!1249743 (=> res!1746919 e!2639193)))

(assert (=> d!1249743 (= res!1746919 ((_ is Nil!47056) shorterInput!62))))

(assert (=> d!1249743 (= (isPrefix!4743 shorterInput!62 shorterInput!62) lt!1508272)))

(assert (= (and d!1249743 (not res!1746919)) b!4249285))

(assert (= (and b!4249285 res!1746916) b!4249286))

(assert (= (and b!4249286 res!1746917) b!4249287))

(assert (= (and d!1249743 (not res!1746918)) b!4249288))

(declare-fun m!4834323 () Bool)

(assert (=> b!4249287 m!4834323))

(assert (=> b!4249287 m!4834323))

(assert (=> b!4249287 m!4834323))

(assert (=> b!4249287 m!4834323))

(declare-fun m!4834325 () Bool)

(assert (=> b!4249287 m!4834325))

(assert (=> b!4249288 m!4833253))

(assert (=> b!4249288 m!4833253))

(declare-fun m!4834327 () Bool)

(assert (=> b!4249286 m!4834327))

(assert (=> b!4249286 m!4834327))

(assert (=> d!1249433 d!1249743))

(declare-fun d!1249745 () Bool)

(assert (=> d!1249745 (isPrefix!4743 shorterInput!62 shorterInput!62)))

(declare-fun lt!1508273 () Unit!66051)

(assert (=> d!1249745 (= lt!1508273 (choose!25956 shorterInput!62 shorterInput!62))))

(assert (=> d!1249745 (= (lemmaIsPrefixRefl!3140 shorterInput!62 shorterInput!62) lt!1508273)))

(declare-fun bs!598619 () Bool)

(assert (= bs!598619 d!1249745))

(assert (=> bs!598619 m!4833453))

(declare-fun m!4834329 () Bool)

(assert (=> bs!598619 m!4834329))

(assert (=> d!1249433 d!1249745))

(assert (=> d!1249433 d!1249715))

(declare-fun d!1249747 () Bool)

(declare-fun lt!1508274 () Int)

(assert (=> d!1249747 (>= lt!1508274 0)))

(declare-fun e!2639196 () Int)

(assert (=> d!1249747 (= lt!1508274 e!2639196)))

(declare-fun c!721655 () Bool)

(assert (=> d!1249747 (= c!721655 ((_ is Nil!47056) (_2!25444 lt!1508127)))))

(assert (=> d!1249747 (= (size!34453 (_2!25444 lt!1508127)) lt!1508274)))

(declare-fun b!4249289 () Bool)

(assert (=> b!4249289 (= e!2639196 0)))

(declare-fun b!4249290 () Bool)

(assert (=> b!4249290 (= e!2639196 (+ 1 (size!34453 (t!352015 (_2!25444 lt!1508127)))))))

(assert (= (and d!1249747 c!721655) b!4249289))

(assert (= (and d!1249747 (not c!721655)) b!4249290))

(declare-fun m!4834331 () Bool)

(assert (=> b!4249290 m!4834331))

(assert (=> b!4248637 d!1249747))

(assert (=> b!4248637 d!1249469))

(declare-fun d!1249749 () Bool)

(declare-fun charsToInt!0 (List!47179) (_ BitVec 32))

(assert (=> d!1249749 (= (inv!16 (value!247510 (h!52478 tokens!592))) (= (charsToInt!0 (text!57805 (value!247510 (h!52478 tokens!592)))) (value!247501 (value!247510 (h!52478 tokens!592)))))))

(declare-fun bs!598620 () Bool)

(assert (= bs!598620 d!1249749))

(declare-fun m!4834333 () Bool)

(assert (=> bs!598620 m!4834333))

(assert (=> b!4248656 d!1249749))

(declare-fun d!1249751 () Bool)

(assert (=> d!1249751 (= (isEmpty!27841 (_1!25444 lt!1508127)) ((_ is Nil!47058) (_1!25444 lt!1508127)))))

(assert (=> b!4248639 d!1249751))

(declare-fun d!1249753 () Bool)

(declare-fun lt!1508275 () Int)

(assert (=> d!1249753 (>= lt!1508275 0)))

(declare-fun e!2639197 () Int)

(assert (=> d!1249753 (= lt!1508275 e!2639197)))

(declare-fun c!721656 () Bool)

(assert (=> d!1249753 (= c!721656 ((_ is Nil!47056) lt!1508129))))

(assert (=> d!1249753 (= (size!34453 lt!1508129) lt!1508275)))

(declare-fun b!4249291 () Bool)

(assert (=> b!4249291 (= e!2639197 0)))

(declare-fun b!4249292 () Bool)

(assert (=> b!4249292 (= e!2639197 (+ 1 (size!34453 (t!352015 lt!1508129))))))

(assert (= (and d!1249753 c!721656) b!4249291))

(assert (= (and d!1249753 (not c!721656)) b!4249292))

(declare-fun m!4834335 () Bool)

(assert (=> b!4249292 m!4834335))

(assert (=> b!4248643 d!1249753))

(declare-fun d!1249755 () Bool)

(declare-fun lt!1508276 () Int)

(assert (=> d!1249755 (>= lt!1508276 0)))

(declare-fun e!2639198 () Int)

(assert (=> d!1249755 (= lt!1508276 e!2639198)))

(declare-fun c!721657 () Bool)

(assert (=> d!1249755 (= c!721657 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))

(assert (=> d!1249755 (= (size!34453 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) lt!1508276)))

(declare-fun b!4249293 () Bool)

(assert (=> b!4249293 (= e!2639198 0)))

(declare-fun b!4249294 () Bool)

(assert (=> b!4249294 (= e!2639198 (+ 1 (size!34453 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))))

(assert (= (and d!1249755 c!721657) b!4249293))

(assert (= (and d!1249755 (not c!721657)) b!4249294))

(assert (=> b!4249294 m!4833719))

(assert (=> b!4248643 d!1249755))

(declare-fun d!1249757 () Bool)

(declare-fun lt!1508277 () Int)

(assert (=> d!1249757 (>= lt!1508277 0)))

(declare-fun e!2639199 () Int)

(assert (=> d!1249757 (= lt!1508277 e!2639199)))

(declare-fun c!721658 () Bool)

(assert (=> d!1249757 (= c!721658 ((_ is Nil!47056) (_2!25443 (v!41053 lt!1508051))))))

(assert (=> d!1249757 (= (size!34453 (_2!25443 (v!41053 lt!1508051))) lt!1508277)))

(declare-fun b!4249295 () Bool)

(assert (=> b!4249295 (= e!2639199 0)))

(declare-fun b!4249296 () Bool)

(assert (=> b!4249296 (= e!2639199 (+ 1 (size!34453 (t!352015 (_2!25443 (v!41053 lt!1508051))))))))

(assert (= (and d!1249757 c!721658) b!4249295))

(assert (= (and d!1249757 (not c!721658)) b!4249296))

(declare-fun m!4834337 () Bool)

(assert (=> b!4249296 m!4834337))

(assert (=> b!4248643 d!1249757))

(declare-fun b!4249299 () Bool)

(declare-fun res!1746921 () Bool)

(declare-fun e!2639201 () Bool)

(assert (=> b!4249299 (=> (not res!1746921) (not e!2639201))))

(declare-fun lt!1508278 () List!47180)

(assert (=> b!4249299 (= res!1746921 (= (size!34453 lt!1508278) (+ (size!34453 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))) (size!34453 (_2!25443 (get!15282 lt!1508117))))))))

(declare-fun d!1249759 () Bool)

(assert (=> d!1249759 e!2639201))

(declare-fun res!1746920 () Bool)

(assert (=> d!1249759 (=> (not res!1746920) (not e!2639201))))

(assert (=> d!1249759 (= res!1746920 (= (content!7396 lt!1508278) ((_ map or) (content!7396 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))) (content!7396 (_2!25443 (get!15282 lt!1508117))))))))

(declare-fun e!2639200 () List!47180)

(assert (=> d!1249759 (= lt!1508278 e!2639200)))

(declare-fun c!721659 () Bool)

(assert (=> d!1249759 (= c!721659 ((_ is Nil!47056) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))))))

(assert (=> d!1249759 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))) (_2!25443 (get!15282 lt!1508117))) lt!1508278)))

(declare-fun b!4249300 () Bool)

(assert (=> b!4249300 (= e!2639201 (or (not (= (_2!25443 (get!15282 lt!1508117)) Nil!47056)) (= lt!1508278 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117)))))))))

(declare-fun b!4249298 () Bool)

(assert (=> b!4249298 (= e!2639200 (Cons!47056 (h!52476 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))) (++!11975 (t!352015 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508117))))) (_2!25443 (get!15282 lt!1508117)))))))

(declare-fun b!4249297 () Bool)

(assert (=> b!4249297 (= e!2639200 (_2!25443 (get!15282 lt!1508117)))))

(assert (= (and d!1249759 c!721659) b!4249297))

(assert (= (and d!1249759 (not c!721659)) b!4249298))

(assert (= (and d!1249759 res!1746920) b!4249299))

(assert (= (and b!4249299 res!1746921) b!4249300))

(declare-fun m!4834339 () Bool)

(assert (=> b!4249299 m!4834339))

(assert (=> b!4249299 m!4833507))

(declare-fun m!4834341 () Bool)

(assert (=> b!4249299 m!4834341))

(assert (=> b!4249299 m!4833489))

(declare-fun m!4834343 () Bool)

(assert (=> d!1249759 m!4834343))

(assert (=> d!1249759 m!4833507))

(declare-fun m!4834345 () Bool)

(assert (=> d!1249759 m!4834345))

(declare-fun m!4834347 () Bool)

(assert (=> d!1249759 m!4834347))

(declare-fun m!4834349 () Bool)

(assert (=> b!4249298 m!4834349))

(assert (=> b!4248571 d!1249759))

(assert (=> b!4248571 d!1249539))

(assert (=> b!4248571 d!1249541))

(assert (=> b!4248571 d!1249521))

(declare-fun d!1249761 () Bool)

(declare-fun lt!1508279 () Int)

(assert (=> d!1249761 (>= lt!1508279 0)))

(declare-fun e!2639202 () Int)

(assert (=> d!1249761 (= lt!1508279 e!2639202)))

(declare-fun c!721660 () Bool)

(assert (=> d!1249761 (= c!721660 ((_ is Nil!47056) (_2!25443 (get!15282 lt!1508117))))))

(assert (=> d!1249761 (= (size!34453 (_2!25443 (get!15282 lt!1508117))) lt!1508279)))

(declare-fun b!4249301 () Bool)

(assert (=> b!4249301 (= e!2639202 0)))

(declare-fun b!4249302 () Bool)

(assert (=> b!4249302 (= e!2639202 (+ 1 (size!34453 (t!352015 (_2!25443 (get!15282 lt!1508117))))))))

(assert (= (and d!1249761 c!721660) b!4249301))

(assert (= (and d!1249761 (not c!721660)) b!4249302))

(declare-fun m!4834351 () Bool)

(assert (=> b!4249302 m!4834351))

(assert (=> b!4248569 d!1249761))

(assert (=> b!4248569 d!1249521))

(assert (=> b!4248569 d!1249469))

(declare-fun b!4249306 () Bool)

(declare-fun e!2639204 () List!47180)

(assert (=> b!4249306 (= e!2639204 (++!11975 (list!16954 (left!34915 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))) (list!16954 (right!35245 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))))

(declare-fun b!4249305 () Bool)

(assert (=> b!4249305 (= e!2639204 (list!16956 (xs!17481 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508051)))))))))

(declare-fun b!4249304 () Bool)

(declare-fun e!2639203 () List!47180)

(assert (=> b!4249304 (= e!2639203 e!2639204)))

(declare-fun c!721662 () Bool)

(assert (=> b!4249304 (= c!721662 ((_ is Leaf!21916) (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))

(declare-fun d!1249763 () Bool)

(declare-fun c!721661 () Bool)

(assert (=> d!1249763 (= c!721661 ((_ is Empty!14175) (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))))))

(assert (=> d!1249763 (= (list!16954 (c!721494 (charsOf!5306 (_1!25443 (v!41053 lt!1508051))))) e!2639203)))

(declare-fun b!4249303 () Bool)

(assert (=> b!4249303 (= e!2639203 Nil!47056)))

(assert (= (and d!1249763 c!721661) b!4249303))

(assert (= (and d!1249763 (not c!721661)) b!4249304))

(assert (= (and b!4249304 c!721662) b!4249305))

(assert (= (and b!4249304 (not c!721662)) b!4249306))

(declare-fun m!4834353 () Bool)

(assert (=> b!4249306 m!4834353))

(declare-fun m!4834355 () Bool)

(assert (=> b!4249306 m!4834355))

(assert (=> b!4249306 m!4834353))

(assert (=> b!4249306 m!4834355))

(declare-fun m!4834357 () Bool)

(assert (=> b!4249306 m!4834357))

(declare-fun m!4834359 () Bool)

(assert (=> b!4249305 m!4834359))

(assert (=> d!1249461 d!1249763))

(declare-fun bs!598621 () Bool)

(declare-fun d!1249765 () Bool)

(assert (= bs!598621 (and d!1249765 d!1249555)))

(declare-fun lambda!130260 () Int)

(assert (=> bs!598621 (= (and (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (h!52477 rules!2971)))) (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (h!52477 rules!2971))))) (= lambda!130260 lambda!130250))))

(assert (=> d!1249765 true))

(assert (=> d!1249765 (< (dynLambda!20169 order!24747 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) (dynLambda!20170 order!24749 lambda!130260))))

(assert (=> d!1249765 true))

(assert (=> d!1249765 (< (dynLambda!20171 order!24751 (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) (dynLambda!20170 order!24749 lambda!130260))))

(assert (=> d!1249765 (= (semiInverseModEq!3471 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) (Forall!1604 lambda!130260))))

(declare-fun bs!598622 () Bool)

(assert (= bs!598622 d!1249765))

(declare-fun m!4834361 () Bool)

(assert (=> bs!598622 m!4834361))

(assert (=> d!1249399 d!1249765))

(declare-fun bs!598623 () Bool)

(declare-fun d!1249767 () Bool)

(assert (= bs!598623 (and d!1249767 d!1249737)))

(declare-fun lambda!130261 () Int)

(assert (=> bs!598623 (= (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (h!52477 rules!2971)))) (= lambda!130261 lambda!130259))))

(assert (=> d!1249767 true))

(assert (=> d!1249767 (< (dynLambda!20171 order!24751 (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) (dynLambda!20172 order!24753 lambda!130261))))

(assert (=> d!1249767 (= (equivClasses!3370 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) (Forall2!1203 lambda!130261))))

(declare-fun bs!598624 () Bool)

(assert (= bs!598624 d!1249767))

(declare-fun m!4834363 () Bool)

(assert (=> bs!598624 m!4834363))

(assert (=> b!4248433 d!1249767))

(declare-fun b!4249307 () Bool)

(declare-fun res!1746928 () Bool)

(declare-fun e!2639208 () Bool)

(assert (=> b!4249307 (=> (not res!1746928) (not e!2639208))))

(declare-fun lt!1508282 () Option!10098)

(assert (=> b!4249307 (= res!1746928 (= (rule!11096 (_1!25443 (get!15282 lt!1508282))) (h!52477 rules!2971)))))

(declare-fun b!4249308 () Bool)

(declare-fun e!2639207 () Bool)

(assert (=> b!4249308 (= e!2639207 (matchR!6465 (regex!7964 (h!52477 rules!2971)) (_1!25446 (findLongestMatchInner!1710 (regex!7964 (h!52477 rules!2971)) Nil!47056 (size!34453 Nil!47056) longerInput!62 longerInput!62 (size!34453 longerInput!62)))))))

(declare-fun d!1249769 () Bool)

(declare-fun e!2639205 () Bool)

(assert (=> d!1249769 e!2639205))

(declare-fun res!1746927 () Bool)

(assert (=> d!1249769 (=> res!1746927 e!2639205)))

(assert (=> d!1249769 (= res!1746927 (isEmpty!27840 lt!1508282))))

(declare-fun e!2639206 () Option!10098)

(assert (=> d!1249769 (= lt!1508282 e!2639206)))

(declare-fun c!721663 () Bool)

(declare-fun lt!1508283 () tuple2!44624)

(assert (=> d!1249769 (= c!721663 (isEmpty!27837 (_1!25446 lt!1508283)))))

(assert (=> d!1249769 (= lt!1508283 (findLongestMatch!1613 (regex!7964 (h!52477 rules!2971)) longerInput!62))))

(assert (=> d!1249769 (ruleValid!3608 thiss!21641 (h!52477 rules!2971))))

(assert (=> d!1249769 (= (maxPrefixOneRule!3468 thiss!21641 (h!52477 rules!2971) longerInput!62) lt!1508282)))

(declare-fun b!4249309 () Bool)

(assert (=> b!4249309 (= e!2639205 e!2639208)))

(declare-fun res!1746923 () Bool)

(assert (=> b!4249309 (=> (not res!1746923) (not e!2639208))))

(assert (=> b!4249309 (= res!1746923 (matchR!6465 (regex!7964 (h!52477 rules!2971)) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508282))))))))

(declare-fun b!4249310 () Bool)

(assert (=> b!4249310 (= e!2639208 (= (size!34452 (_1!25443 (get!15282 lt!1508282))) (size!34453 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508282))))))))

(declare-fun b!4249311 () Bool)

(declare-fun res!1746926 () Bool)

(assert (=> b!4249311 (=> (not res!1746926) (not e!2639208))))

(assert (=> b!4249311 (= res!1746926 (< (size!34453 (_2!25443 (get!15282 lt!1508282))) (size!34453 longerInput!62)))))

(declare-fun b!4249312 () Bool)

(assert (=> b!4249312 (= e!2639206 None!10097)))

(declare-fun b!4249313 () Bool)

(declare-fun res!1746922 () Bool)

(assert (=> b!4249313 (=> (not res!1746922) (not e!2639208))))

(assert (=> b!4249313 (= res!1746922 (= (++!11975 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508282)))) (_2!25443 (get!15282 lt!1508282))) longerInput!62))))

(declare-fun b!4249314 () Bool)

(assert (=> b!4249314 (= e!2639206 (Some!10097 (tuple2!44619 (Token!14555 (apply!10770 (transformation!7964 (h!52477 rules!2971)) (seqFromList!5830 (_1!25446 lt!1508283))) (h!52477 rules!2971) (size!34457 (seqFromList!5830 (_1!25446 lt!1508283))) (_1!25446 lt!1508283)) (_2!25446 lt!1508283))))))

(declare-fun lt!1508281 () Unit!66051)

(assert (=> b!4249314 (= lt!1508281 (longestMatchIsAcceptedByMatchOrIsEmpty!1673 (regex!7964 (h!52477 rules!2971)) longerInput!62))))

(declare-fun res!1746924 () Bool)

(assert (=> b!4249314 (= res!1746924 (isEmpty!27837 (_1!25446 (findLongestMatchInner!1710 (regex!7964 (h!52477 rules!2971)) Nil!47056 (size!34453 Nil!47056) longerInput!62 longerInput!62 (size!34453 longerInput!62)))))))

(assert (=> b!4249314 (=> res!1746924 e!2639207)))

(assert (=> b!4249314 e!2639207))

(declare-fun lt!1508280 () Unit!66051)

(assert (=> b!4249314 (= lt!1508280 lt!1508281)))

(declare-fun lt!1508284 () Unit!66051)

(assert (=> b!4249314 (= lt!1508284 (lemmaSemiInverse!2541 (transformation!7964 (h!52477 rules!2971)) (seqFromList!5830 (_1!25446 lt!1508283))))))

(declare-fun b!4249315 () Bool)

(declare-fun res!1746925 () Bool)

(assert (=> b!4249315 (=> (not res!1746925) (not e!2639208))))

(assert (=> b!4249315 (= res!1746925 (= (value!247510 (_1!25443 (get!15282 lt!1508282))) (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508282)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508282)))))))))

(assert (= (and d!1249769 c!721663) b!4249312))

(assert (= (and d!1249769 (not c!721663)) b!4249314))

(assert (= (and b!4249314 (not res!1746924)) b!4249308))

(assert (= (and d!1249769 (not res!1746927)) b!4249309))

(assert (= (and b!4249309 res!1746923) b!4249313))

(assert (= (and b!4249313 res!1746922) b!4249311))

(assert (= (and b!4249311 res!1746926) b!4249307))

(assert (= (and b!4249307 res!1746928) b!4249315))

(assert (= (and b!4249315 res!1746925) b!4249310))

(declare-fun m!4834365 () Bool)

(assert (=> b!4249313 m!4834365))

(declare-fun m!4834367 () Bool)

(assert (=> b!4249313 m!4834367))

(assert (=> b!4249313 m!4834367))

(declare-fun m!4834369 () Bool)

(assert (=> b!4249313 m!4834369))

(assert (=> b!4249313 m!4834369))

(declare-fun m!4834371 () Bool)

(assert (=> b!4249313 m!4834371))

(assert (=> b!4249307 m!4834365))

(declare-fun m!4834373 () Bool)

(assert (=> d!1249769 m!4834373))

(declare-fun m!4834375 () Bool)

(assert (=> d!1249769 m!4834375))

(declare-fun m!4834377 () Bool)

(assert (=> d!1249769 m!4834377))

(assert (=> d!1249769 m!4834231))

(declare-fun m!4834379 () Bool)

(assert (=> b!4249314 m!4834379))

(assert (=> b!4249314 m!4834269))

(assert (=> b!4249314 m!4833251))

(declare-fun m!4834381 () Bool)

(assert (=> b!4249314 m!4834381))

(assert (=> b!4249314 m!4834379))

(declare-fun m!4834383 () Bool)

(assert (=> b!4249314 m!4834383))

(assert (=> b!4249314 m!4834379))

(declare-fun m!4834385 () Bool)

(assert (=> b!4249314 m!4834385))

(assert (=> b!4249314 m!4834269))

(declare-fun m!4834387 () Bool)

(assert (=> b!4249314 m!4834387))

(assert (=> b!4249314 m!4833251))

(assert (=> b!4249314 m!4834379))

(declare-fun m!4834389 () Bool)

(assert (=> b!4249314 m!4834389))

(declare-fun m!4834391 () Bool)

(assert (=> b!4249314 m!4834391))

(assert (=> b!4249311 m!4834365))

(declare-fun m!4834393 () Bool)

(assert (=> b!4249311 m!4834393))

(assert (=> b!4249311 m!4833251))

(assert (=> b!4249308 m!4834269))

(assert (=> b!4249308 m!4833251))

(assert (=> b!4249308 m!4834269))

(assert (=> b!4249308 m!4833251))

(assert (=> b!4249308 m!4834381))

(declare-fun m!4834395 () Bool)

(assert (=> b!4249308 m!4834395))

(assert (=> b!4249315 m!4834365))

(declare-fun m!4834397 () Bool)

(assert (=> b!4249315 m!4834397))

(assert (=> b!4249315 m!4834397))

(declare-fun m!4834399 () Bool)

(assert (=> b!4249315 m!4834399))

(assert (=> b!4249309 m!4834365))

(assert (=> b!4249309 m!4834367))

(assert (=> b!4249309 m!4834367))

(assert (=> b!4249309 m!4834369))

(assert (=> b!4249309 m!4834369))

(declare-fun m!4834401 () Bool)

(assert (=> b!4249309 m!4834401))

(assert (=> b!4249310 m!4834365))

(declare-fun m!4834403 () Bool)

(assert (=> b!4249310 m!4834403))

(assert (=> bm!293935 d!1249769))

(assert (=> b!4248550 d!1249701))

(declare-fun d!1249771 () Bool)

(assert (=> d!1249771 (= (apply!10770 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103))))) (dynLambda!20166 (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103))))))))

(declare-fun b_lambda!125171 () Bool)

(assert (=> (not b_lambda!125171) (not d!1249771)))

(declare-fun tb!256171 () Bool)

(declare-fun t!352175 () Bool)

(assert (=> (and b!4248397 (= (toValue!10732 (transformation!7964 (h!52477 rules!2971))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352175) tb!256171))

(declare-fun result!312390 () Bool)

(assert (=> tb!256171 (= result!312390 (inv!21 (dynLambda!20166 (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))) (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103)))))))))

(declare-fun m!4834405 () Bool)

(assert (=> tb!256171 m!4834405))

(assert (=> d!1249771 t!352175))

(declare-fun b_and!336805 () Bool)

(assert (= b_and!336733 (and (=> t!352175 result!312390) b_and!336805)))

(declare-fun tb!256173 () Bool)

(declare-fun t!352177 () Bool)

(assert (=> (and b!4248399 (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352177) tb!256173))

(declare-fun result!312392 () Bool)

(assert (= result!312392 result!312390))

(assert (=> d!1249771 t!352177))

(declare-fun b_and!336807 () Bool)

(assert (= b_and!336735 (and (=> t!352177 result!312392) b_and!336807)))

(declare-fun tb!256175 () Bool)

(declare-fun t!352179 () Bool)

(assert (=> (and b!4248685 (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352179) tb!256175))

(declare-fun result!312394 () Bool)

(assert (= result!312394 result!312390))

(assert (=> d!1249771 t!352179))

(declare-fun b_and!336809 () Bool)

(assert (= b_and!336737 (and (=> t!352179 result!312394) b_and!336809)))

(declare-fun tb!256177 () Bool)

(declare-fun t!352181 () Bool)

(assert (=> (and b!4248701 (= (toValue!10732 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352181) tb!256177))

(declare-fun result!312396 () Bool)

(assert (= result!312396 result!312390))

(assert (=> d!1249771 t!352181))

(declare-fun b_and!336811 () Bool)

(assert (= b_and!336739 (and (=> t!352181 result!312396) b_and!336811)))

(assert (=> d!1249771 m!4833459))

(declare-fun m!4834407 () Bool)

(assert (=> d!1249771 m!4834407))

(assert (=> b!4248550 d!1249771))

(declare-fun d!1249773 () Bool)

(assert (=> d!1249773 (= (seqFromList!5830 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103)))) (fromListB!2654 (originalCharacters!8308 (_1!25443 (get!15282 lt!1508103)))))))

(declare-fun bs!598625 () Bool)

(assert (= bs!598625 d!1249773))

(declare-fun m!4834409 () Bool)

(assert (=> bs!598625 m!4834409))

(assert (=> b!4248550 d!1249773))

(declare-fun d!1249775 () Bool)

(declare-fun lt!1508285 () Bool)

(assert (=> d!1249775 (= lt!1508285 (select (content!7398 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508117)))))))

(declare-fun e!2639210 () Bool)

(assert (=> d!1249775 (= lt!1508285 e!2639210)))

(declare-fun res!1746930 () Bool)

(assert (=> d!1249775 (=> (not res!1746930) (not e!2639210))))

(assert (=> d!1249775 (= res!1746930 ((_ is Cons!47057) rules!2971))))

(assert (=> d!1249775 (= (contains!9753 rules!2971 (rule!11096 (_1!25443 (get!15282 lt!1508117)))) lt!1508285)))

(declare-fun b!4249316 () Bool)

(declare-fun e!2639211 () Bool)

(assert (=> b!4249316 (= e!2639210 e!2639211)))

(declare-fun res!1746929 () Bool)

(assert (=> b!4249316 (=> res!1746929 e!2639211)))

(assert (=> b!4249316 (= res!1746929 (= (h!52477 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508117)))))))

(declare-fun b!4249317 () Bool)

(assert (=> b!4249317 (= e!2639211 (contains!9753 (t!352016 rules!2971) (rule!11096 (_1!25443 (get!15282 lt!1508117)))))))

(assert (= (and d!1249775 res!1746930) b!4249316))

(assert (= (and b!4249316 (not res!1746929)) b!4249317))

(assert (=> d!1249775 m!4834299))

(declare-fun m!4834411 () Bool)

(assert (=> d!1249775 m!4834411))

(declare-fun m!4834413 () Bool)

(assert (=> b!4249317 m!4834413))

(assert (=> b!4248566 d!1249775))

(assert (=> b!4248566 d!1249521))

(declare-fun d!1249777 () Bool)

(declare-fun c!721664 () Bool)

(assert (=> d!1249777 (= c!721664 ((_ is Node!14175) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))))))

(declare-fun e!2639212 () Bool)

(assert (=> d!1249777 (= (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))) e!2639212)))

(declare-fun b!4249318 () Bool)

(assert (=> b!4249318 (= e!2639212 (inv!61829 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))))))

(declare-fun b!4249319 () Bool)

(declare-fun e!2639213 () Bool)

(assert (=> b!4249319 (= e!2639212 e!2639213)))

(declare-fun res!1746931 () Bool)

(assert (=> b!4249319 (= res!1746931 (not ((_ is Leaf!21916) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))))))))

(assert (=> b!4249319 (=> res!1746931 e!2639213)))

(declare-fun b!4249320 () Bool)

(assert (=> b!4249320 (= e!2639213 (inv!61830 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))))))

(assert (= (and d!1249777 c!721664) b!4249318))

(assert (= (and d!1249777 (not c!721664)) b!4249319))

(assert (= (and b!4249319 (not res!1746931)) b!4249320))

(declare-fun m!4834415 () Bool)

(assert (=> b!4249318 m!4834415))

(declare-fun m!4834417 () Bool)

(assert (=> b!4249320 m!4834417))

(assert (=> b!4248645 d!1249777))

(declare-fun b!4249322 () Bool)

(declare-fun e!2639219 () Bool)

(assert (=> b!4249322 (= e!2639219 (not (= (head!8993 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))) (c!721495 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))))))))

(declare-fun bm!293947 () Bool)

(declare-fun call!293952 () Bool)

(assert (=> bm!293947 (= call!293952 (isEmpty!27837 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))))))

(declare-fun b!4249323 () Bool)

(declare-fun e!2639215 () Bool)

(declare-fun e!2639217 () Bool)

(assert (=> b!4249323 (= e!2639215 e!2639217)))

(declare-fun c!721667 () Bool)

(assert (=> b!4249323 (= c!721667 ((_ is EmptyLang!12869) (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))))))

(declare-fun b!4249324 () Bool)

(declare-fun res!1746935 () Bool)

(declare-fun e!2639216 () Bool)

(assert (=> b!4249324 (=> res!1746935 e!2639216)))

(declare-fun e!2639220 () Bool)

(assert (=> b!4249324 (= res!1746935 e!2639220)))

(declare-fun res!1746933 () Bool)

(assert (=> b!4249324 (=> (not res!1746933) (not e!2639220))))

(declare-fun lt!1508286 () Bool)

(assert (=> b!4249324 (= res!1746933 lt!1508286)))

(declare-fun b!4249325 () Bool)

(assert (=> b!4249325 (= e!2639217 (not lt!1508286))))

(declare-fun b!4249326 () Bool)

(declare-fun res!1746932 () Bool)

(assert (=> b!4249326 (=> res!1746932 e!2639216)))

(assert (=> b!4249326 (= res!1746932 (not ((_ is ElementMatch!12869) (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))))))

(assert (=> b!4249326 (= e!2639217 e!2639216)))

(declare-fun d!1249779 () Bool)

(assert (=> d!1249779 e!2639215))

(declare-fun c!721665 () Bool)

(assert (=> d!1249779 (= c!721665 ((_ is EmptyExpr!12869) (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))))))

(declare-fun e!2639214 () Bool)

(assert (=> d!1249779 (= lt!1508286 e!2639214)))

(declare-fun c!721666 () Bool)

(assert (=> d!1249779 (= c!721666 (isEmpty!27837 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))))))

(assert (=> d!1249779 (validRegex!5832 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))))

(assert (=> d!1249779 (= (matchR!6465 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))) (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))) lt!1508286)))

(declare-fun b!4249321 () Bool)

(assert (=> b!4249321 (= e!2639214 (matchR!6465 (derivativeStep!3855 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))) (head!8993 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))))) (tail!6852 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))))))))

(declare-fun b!4249327 () Bool)

(assert (=> b!4249327 (= e!2639215 (= lt!1508286 call!293952))))

(declare-fun b!4249328 () Bool)

(declare-fun res!1746939 () Bool)

(assert (=> b!4249328 (=> (not res!1746939) (not e!2639220))))

(assert (=> b!4249328 (= res!1746939 (not call!293952))))

(declare-fun b!4249329 () Bool)

(declare-fun e!2639218 () Bool)

(assert (=> b!4249329 (= e!2639216 e!2639218)))

(declare-fun res!1746936 () Bool)

(assert (=> b!4249329 (=> (not res!1746936) (not e!2639218))))

(assert (=> b!4249329 (= res!1746936 (not lt!1508286))))

(declare-fun b!4249330 () Bool)

(assert (=> b!4249330 (= e!2639218 e!2639219)))

(declare-fun res!1746938 () Bool)

(assert (=> b!4249330 (=> res!1746938 e!2639219)))

(assert (=> b!4249330 (= res!1746938 call!293952)))

(declare-fun b!4249331 () Bool)

(assert (=> b!4249331 (= e!2639214 (nullable!4525 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103))))))))

(declare-fun b!4249332 () Bool)

(declare-fun res!1746934 () Bool)

(assert (=> b!4249332 (=> (not res!1746934) (not e!2639220))))

(assert (=> b!4249332 (= res!1746934 (isEmpty!27837 (tail!6852 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103)))))))))

(declare-fun b!4249333 () Bool)

(declare-fun res!1746937 () Bool)

(assert (=> b!4249333 (=> res!1746937 e!2639219)))

(assert (=> b!4249333 (= res!1746937 (not (isEmpty!27837 (tail!6852 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))))))))

(declare-fun b!4249334 () Bool)

(assert (=> b!4249334 (= e!2639220 (= (head!8993 (list!16952 (charsOf!5306 (_1!25443 (get!15282 lt!1508103))))) (c!721495 (regex!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))))))

(assert (= (and d!1249779 c!721666) b!4249331))

(assert (= (and d!1249779 (not c!721666)) b!4249321))

(assert (= (and d!1249779 c!721665) b!4249327))

(assert (= (and d!1249779 (not c!721665)) b!4249323))

(assert (= (and b!4249323 c!721667) b!4249325))

(assert (= (and b!4249323 (not c!721667)) b!4249326))

(assert (= (and b!4249326 (not res!1746932)) b!4249324))

(assert (= (and b!4249324 res!1746933) b!4249328))

(assert (= (and b!4249328 res!1746939) b!4249332))

(assert (= (and b!4249332 res!1746934) b!4249334))

(assert (= (and b!4249324 (not res!1746935)) b!4249329))

(assert (= (and b!4249329 res!1746936) b!4249330))

(assert (= (and b!4249330 (not res!1746938)) b!4249333))

(assert (= (and b!4249333 (not res!1746937)) b!4249322))

(assert (= (or b!4249327 b!4249328 b!4249330) bm!293947))

(assert (=> b!4249334 m!4833469))

(declare-fun m!4834419 () Bool)

(assert (=> b!4249334 m!4834419))

(assert (=> d!1249779 m!4833469))

(declare-fun m!4834421 () Bool)

(assert (=> d!1249779 m!4834421))

(declare-fun m!4834423 () Bool)

(assert (=> d!1249779 m!4834423))

(assert (=> b!4249333 m!4833469))

(declare-fun m!4834425 () Bool)

(assert (=> b!4249333 m!4834425))

(assert (=> b!4249333 m!4834425))

(declare-fun m!4834427 () Bool)

(assert (=> b!4249333 m!4834427))

(assert (=> b!4249321 m!4833469))

(assert (=> b!4249321 m!4834419))

(assert (=> b!4249321 m!4834419))

(declare-fun m!4834429 () Bool)

(assert (=> b!4249321 m!4834429))

(assert (=> b!4249321 m!4833469))

(assert (=> b!4249321 m!4834425))

(assert (=> b!4249321 m!4834429))

(assert (=> b!4249321 m!4834425))

(declare-fun m!4834431 () Bool)

(assert (=> b!4249321 m!4834431))

(declare-fun m!4834433 () Bool)

(assert (=> b!4249331 m!4834433))

(assert (=> b!4249332 m!4833469))

(assert (=> b!4249332 m!4834425))

(assert (=> b!4249332 m!4834425))

(assert (=> b!4249332 m!4834427))

(assert (=> bm!293947 m!4833469))

(assert (=> bm!293947 m!4834421))

(assert (=> b!4249322 m!4833469))

(assert (=> b!4249322 m!4834419))

(assert (=> b!4248548 d!1249779))

(assert (=> b!4248548 d!1249701))

(assert (=> b!4248548 d!1249697))

(assert (=> b!4248548 d!1249699))

(declare-fun d!1249781 () Bool)

(assert (=> d!1249781 (= (isDefined!7458 lt!1508103) (not (isEmpty!27840 lt!1508103)))))

(declare-fun bs!598626 () Bool)

(assert (= bs!598626 d!1249781))

(assert (=> bs!598626 m!4833451))

(assert (=> b!4248546 d!1249781))

(declare-fun d!1249783 () Bool)

(assert (=> d!1249783 (= (inv!61828 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))) (isBalanced!3766 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))))))

(declare-fun bs!598627 () Bool)

(assert (= bs!598627 d!1249783))

(declare-fun m!4834435 () Bool)

(assert (=> bs!598627 m!4834435))

(assert (=> tb!256019 d!1249783))

(declare-fun d!1249785 () Bool)

(assert (=> d!1249785 (= (inv!61820 (tag!8828 (h!52477 (t!352016 rules!2971)))) (= (mod (str.len (value!247509 (tag!8828 (h!52477 (t!352016 rules!2971))))) 2) 0))))

(assert (=> b!4248700 d!1249785))

(declare-fun d!1249787 () Bool)

(declare-fun res!1746940 () Bool)

(declare-fun e!2639221 () Bool)

(assert (=> d!1249787 (=> (not res!1746940) (not e!2639221))))

(assert (=> d!1249787 (= res!1746940 (semiInverseModEq!3471 (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toValue!10732 (transformation!7964 (h!52477 (t!352016 rules!2971))))))))

(assert (=> d!1249787 (= (inv!61823 (transformation!7964 (h!52477 (t!352016 rules!2971)))) e!2639221)))

(declare-fun b!4249335 () Bool)

(assert (=> b!4249335 (= e!2639221 (equivClasses!3370 (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toValue!10732 (transformation!7964 (h!52477 (t!352016 rules!2971))))))))

(assert (= (and d!1249787 res!1746940) b!4249335))

(declare-fun m!4834437 () Bool)

(assert (=> d!1249787 m!4834437))

(declare-fun m!4834439 () Bool)

(assert (=> b!4249335 m!4834439))

(assert (=> b!4248700 d!1249787))

(declare-fun b!4249336 () Bool)

(declare-fun e!2639222 () Bool)

(declare-fun tp!1303598 () Bool)

(assert (=> b!4249336 (= e!2639222 (and tp_is_empty!22729 tp!1303598))))

(assert (=> b!4248722 (= tp!1303502 e!2639222)))

(assert (= (and b!4248722 ((_ is Cons!47056) (t!352015 (t!352015 suffix!1284)))) b!4249336))

(declare-fun b!4249337 () Bool)

(declare-fun e!2639223 () Bool)

(declare-fun tp!1303599 () Bool)

(assert (=> b!4249337 (= e!2639223 (and tp_is_empty!22729 tp!1303599))))

(assert (=> b!4248690 (= tp!1303467 e!2639223)))

(assert (= (and b!4248690 ((_ is Cons!47056) (t!352015 (t!352015 shorterInput!62)))) b!4249337))

(declare-fun e!2639224 () Bool)

(assert (=> b!4248684 (= tp!1303460 e!2639224)))

(declare-fun b!4249339 () Bool)

(declare-fun tp!1303604 () Bool)

(declare-fun tp!1303603 () Bool)

(assert (=> b!4249339 (= e!2639224 (and tp!1303604 tp!1303603))))

(declare-fun b!4249340 () Bool)

(declare-fun tp!1303600 () Bool)

(assert (=> b!4249340 (= e!2639224 tp!1303600)))

(declare-fun b!4249338 () Bool)

(assert (=> b!4249338 (= e!2639224 tp_is_empty!22729)))

(declare-fun b!4249341 () Bool)

(declare-fun tp!1303602 () Bool)

(declare-fun tp!1303601 () Bool)

(assert (=> b!4249341 (= e!2639224 (and tp!1303602 tp!1303601))))

(assert (= (and b!4248684 ((_ is ElementMatch!12869) (regex!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) b!4249338))

(assert (= (and b!4248684 ((_ is Concat!21064) (regex!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) b!4249339))

(assert (= (and b!4248684 ((_ is Star!12869) (regex!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) b!4249340))

(assert (= (and b!4248684 ((_ is Union!12869) (regex!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) b!4249341))

(declare-fun tp!1303613 () Bool)

(declare-fun b!4249350 () Bool)

(declare-fun e!2639229 () Bool)

(declare-fun tp!1303612 () Bool)

(assert (=> b!4249350 (= e!2639229 (and (inv!61827 (left!34915 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))))) tp!1303613 (inv!61827 (right!35245 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))))) tp!1303612))))

(declare-fun b!4249352 () Bool)

(declare-fun e!2639230 () Bool)

(declare-fun tp!1303611 () Bool)

(assert (=> b!4249352 (= e!2639230 tp!1303611)))

(declare-fun b!4249351 () Bool)

(declare-fun inv!61834 (IArray!28355) Bool)

(assert (=> b!4249351 (= e!2639229 (and (inv!61834 (xs!17481 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))))) e!2639230))))

(assert (=> b!4248459 (= tp!1303395 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052)))))) e!2639229))))

(assert (= (and b!4248459 ((_ is Node!14175) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))))) b!4249350))

(assert (= b!4249351 b!4249352))

(assert (= (and b!4248459 ((_ is Leaf!21916) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))) (value!247510 (_1!25443 (v!41053 lt!1508052))))))) b!4249351))

(declare-fun m!4834441 () Bool)

(assert (=> b!4249350 m!4834441))

(declare-fun m!4834443 () Bool)

(assert (=> b!4249350 m!4834443))

(declare-fun m!4834445 () Bool)

(assert (=> b!4249351 m!4834445))

(assert (=> b!4248459 m!4833351))

(declare-fun b!4249353 () Bool)

(declare-fun e!2639231 () Bool)

(declare-fun tp!1303614 () Bool)

(assert (=> b!4249353 (= e!2639231 (and tp_is_empty!22729 tp!1303614))))

(assert (=> b!4248702 (= tp!1303480 e!2639231)))

(assert (= (and b!4248702 ((_ is Cons!47056) (t!352015 (t!352015 longerInput!62)))) b!4249353))

(declare-fun b!4249354 () Bool)

(declare-fun e!2639232 () Bool)

(declare-fun tp!1303615 () Bool)

(assert (=> b!4249354 (= e!2639232 (and tp_is_empty!22729 tp!1303615))))

(assert (=> b!4248721 (= tp!1303501 e!2639232)))

(assert (= (and b!4248721 ((_ is Cons!47056) (t!352015 (originalCharacters!8308 (h!52478 tokens!592))))) b!4249354))

(declare-fun b!4249355 () Bool)

(declare-fun tp!1303618 () Bool)

(declare-fun e!2639233 () Bool)

(declare-fun tp!1303617 () Bool)

(assert (=> b!4249355 (= e!2639233 (and (inv!61827 (left!34915 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))))) tp!1303618 (inv!61827 (right!35245 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))))) tp!1303617))))

(declare-fun b!4249357 () Bool)

(declare-fun e!2639234 () Bool)

(declare-fun tp!1303616 () Bool)

(assert (=> b!4249357 (= e!2639234 tp!1303616)))

(declare-fun b!4249356 () Bool)

(assert (=> b!4249356 (= e!2639233 (and (inv!61834 (xs!17481 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))))) e!2639234))))

(assert (=> b!4248645 (= tp!1303449 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051)))))) e!2639233))))

(assert (= (and b!4248645 ((_ is Node!14175) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))))) b!4249355))

(assert (= b!4249356 b!4249357))

(assert (= (and b!4248645 ((_ is Leaf!21916) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))) (value!247510 (_1!25443 (v!41053 lt!1508051))))))) b!4249356))

(declare-fun m!4834447 () Bool)

(assert (=> b!4249355 m!4834447))

(declare-fun m!4834449 () Bool)

(assert (=> b!4249355 m!4834449))

(declare-fun m!4834451 () Bool)

(assert (=> b!4249356 m!4834451))

(assert (=> b!4248645 m!4833549))

(declare-fun b!4249361 () Bool)

(declare-fun b_free!126243 () Bool)

(declare-fun b_next!126947 () Bool)

(assert (=> b!4249361 (= b_free!126243 (not b_next!126947))))

(declare-fun tb!256179 () Bool)

(declare-fun t!352183 () Bool)

(assert (=> (and b!4249361 (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352183) tb!256179))

(declare-fun result!312400 () Bool)

(assert (= result!312400 result!312288))

(assert (=> d!1249523 t!352183))

(declare-fun tb!256181 () Bool)

(declare-fun t!352185 () Bool)

(assert (=> (and b!4249361 (= (toValue!10732 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352185) tb!256181))

(declare-fun result!312402 () Bool)

(assert (= result!312402 result!312390))

(assert (=> d!1249771 t!352185))

(declare-fun b_and!336813 () Bool)

(declare-fun tp!1303622 () Bool)

(assert (=> b!4249361 (= tp!1303622 (and (=> t!352183 result!312400) (=> t!352185 result!312402) b_and!336813))))

(declare-fun b_free!126245 () Bool)

(declare-fun b_next!126949 () Bool)

(assert (=> b!4249361 (= b_free!126245 (not b_next!126949))))

(declare-fun t!352187 () Bool)

(declare-fun tb!256183 () Bool)

(assert (=> (and b!4249361 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352187) tb!256183))

(declare-fun result!312404 () Bool)

(assert (= result!312404 result!312382))

(assert (=> d!1249699 t!352187))

(declare-fun t!352189 () Bool)

(declare-fun tb!256185 () Bool)

(assert (=> (and b!4249361 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352189) tb!256185))

(declare-fun result!312406 () Bool)

(assert (= result!312406 result!312306))

(assert (=> d!1249541 t!352189))

(declare-fun tb!256187 () Bool)

(declare-fun t!352191 () Bool)

(assert (=> (and b!4249361 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052)))))) t!352191) tb!256187))

(declare-fun result!312408 () Bool)

(assert (= result!312408 result!312232))

(assert (=> d!1249417 t!352191))

(declare-fun t!352193 () Bool)

(declare-fun tb!256189 () Bool)

(assert (=> (and b!4249361 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) t!352193) tb!256189))

(declare-fun result!312410 () Bool)

(assert (= result!312410 result!312298))

(assert (=> b!4248793 t!352193))

(declare-fun t!352195 () Bool)

(declare-fun tb!256191 () Bool)

(assert (=> (and b!4249361 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051)))))) t!352195) tb!256191))

(declare-fun result!312412 () Bool)

(assert (= result!312412 result!312256))

(assert (=> d!1249463 t!352195))

(declare-fun t!352197 () Bool)

(declare-fun tb!256193 () Bool)

(assert (=> (and b!4249361 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) t!352197) tb!256193))

(declare-fun result!312414 () Bool)

(assert (= result!312414 result!312212))

(assert (=> b!4248409 t!352197))

(declare-fun b_and!336815 () Bool)

(declare-fun tp!1303621 () Bool)

(assert (=> b!4249361 (= tp!1303621 (and (=> t!352195 result!312412) (=> t!352187 result!312404) (=> t!352191 result!312408) (=> t!352189 result!312406) (=> t!352193 result!312410) (=> t!352197 result!312414) b_and!336815))))

(declare-fun e!2639235 () Bool)

(declare-fun e!2639240 () Bool)

(declare-fun b!4249360 () Bool)

(declare-fun tp!1303619 () Bool)

(assert (=> b!4249360 (= e!2639235 (and tp!1303619 (inv!61820 (tag!8828 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (inv!61823 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) e!2639240))))

(declare-fun e!2639239 () Bool)

(assert (=> b!4248682 (= tp!1303464 e!2639239)))

(declare-fun e!2639238 () Bool)

(declare-fun b!4249359 () Bool)

(declare-fun tp!1303620 () Bool)

(assert (=> b!4249359 (= e!2639238 (and (inv!21 (value!247510 (h!52478 (t!352017 (t!352017 tokens!592))))) e!2639235 tp!1303620))))

(assert (=> b!4249361 (= e!2639240 (and tp!1303622 tp!1303621))))

(declare-fun b!4249358 () Bool)

(declare-fun tp!1303623 () Bool)

(assert (=> b!4249358 (= e!2639239 (and (inv!61824 (h!52478 (t!352017 (t!352017 tokens!592)))) e!2639238 tp!1303623))))

(assert (= b!4249360 b!4249361))

(assert (= b!4249359 b!4249360))

(assert (= b!4249358 b!4249359))

(assert (= (and b!4248682 ((_ is Cons!47058) (t!352017 (t!352017 tokens!592)))) b!4249358))

(declare-fun m!4834453 () Bool)

(assert (=> b!4249360 m!4834453))

(declare-fun m!4834455 () Bool)

(assert (=> b!4249360 m!4834455))

(declare-fun m!4834457 () Bool)

(assert (=> b!4249359 m!4834457))

(declare-fun m!4834459 () Bool)

(assert (=> b!4249358 m!4834459))

(declare-fun b!4249362 () Bool)

(declare-fun e!2639241 () Bool)

(declare-fun tp!1303625 () Bool)

(declare-fun tp!1303626 () Bool)

(assert (=> b!4249362 (= e!2639241 (and (inv!61827 (left!34915 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))))) tp!1303626 (inv!61827 (right!35245 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))))) tp!1303625))))

(declare-fun b!4249364 () Bool)

(declare-fun e!2639242 () Bool)

(declare-fun tp!1303624 () Bool)

(assert (=> b!4249364 (= e!2639242 tp!1303624)))

(declare-fun b!4249363 () Bool)

(assert (=> b!4249363 (= e!2639241 (and (inv!61834 (xs!17481 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))))) e!2639242))))

(assert (=> b!4248417 (= tp!1303389 (and (inv!61827 (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592))))) e!2639241))))

(assert (= (and b!4248417 ((_ is Node!14175) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))))) b!4249362))

(assert (= b!4249363 b!4249364))

(assert (= (and b!4248417 ((_ is Leaf!21916) (c!721494 (dynLambda!20162 (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (value!247510 (h!52478 tokens!592)))))) b!4249363))

(declare-fun m!4834461 () Bool)

(assert (=> b!4249362 m!4834461))

(declare-fun m!4834463 () Bool)

(assert (=> b!4249362 m!4834463))

(declare-fun m!4834465 () Bool)

(assert (=> b!4249363 m!4834465))

(assert (=> b!4248417 m!4833255))

(declare-fun e!2639243 () Bool)

(assert (=> b!4248720 (= tp!1303498 e!2639243)))

(declare-fun b!4249366 () Bool)

(declare-fun tp!1303631 () Bool)

(declare-fun tp!1303630 () Bool)

(assert (=> b!4249366 (= e!2639243 (and tp!1303631 tp!1303630))))

(declare-fun b!4249367 () Bool)

(declare-fun tp!1303627 () Bool)

(assert (=> b!4249367 (= e!2639243 tp!1303627)))

(declare-fun b!4249365 () Bool)

(assert (=> b!4249365 (= e!2639243 tp_is_empty!22729)))

(declare-fun b!4249368 () Bool)

(declare-fun tp!1303629 () Bool)

(declare-fun tp!1303628 () Bool)

(assert (=> b!4249368 (= e!2639243 (and tp!1303629 tp!1303628))))

(assert (= (and b!4248720 ((_ is ElementMatch!12869) (regOne!26251 (regex!7964 (h!52477 rules!2971))))) b!4249365))

(assert (= (and b!4248720 ((_ is Concat!21064) (regOne!26251 (regex!7964 (h!52477 rules!2971))))) b!4249366))

(assert (= (and b!4248720 ((_ is Star!12869) (regOne!26251 (regex!7964 (h!52477 rules!2971))))) b!4249367))

(assert (= (and b!4248720 ((_ is Union!12869) (regOne!26251 (regex!7964 (h!52477 rules!2971))))) b!4249368))

(declare-fun e!2639244 () Bool)

(assert (=> b!4248720 (= tp!1303497 e!2639244)))

(declare-fun b!4249370 () Bool)

(declare-fun tp!1303636 () Bool)

(declare-fun tp!1303635 () Bool)

(assert (=> b!4249370 (= e!2639244 (and tp!1303636 tp!1303635))))

(declare-fun b!4249371 () Bool)

(declare-fun tp!1303632 () Bool)

(assert (=> b!4249371 (= e!2639244 tp!1303632)))

(declare-fun b!4249369 () Bool)

(assert (=> b!4249369 (= e!2639244 tp_is_empty!22729)))

(declare-fun b!4249372 () Bool)

(declare-fun tp!1303634 () Bool)

(declare-fun tp!1303633 () Bool)

(assert (=> b!4249372 (= e!2639244 (and tp!1303634 tp!1303633))))

(assert (= (and b!4248720 ((_ is ElementMatch!12869) (regTwo!26251 (regex!7964 (h!52477 rules!2971))))) b!4249369))

(assert (= (and b!4248720 ((_ is Concat!21064) (regTwo!26251 (regex!7964 (h!52477 rules!2971))))) b!4249370))

(assert (= (and b!4248720 ((_ is Star!12869) (regTwo!26251 (regex!7964 (h!52477 rules!2971))))) b!4249371))

(assert (= (and b!4248720 ((_ is Union!12869) (regTwo!26251 (regex!7964 (h!52477 rules!2971))))) b!4249372))

(declare-fun e!2639245 () Bool)

(assert (=> b!4248715 (= tp!1303491 e!2639245)))

(declare-fun b!4249374 () Bool)

(declare-fun tp!1303641 () Bool)

(declare-fun tp!1303640 () Bool)

(assert (=> b!4249374 (= e!2639245 (and tp!1303641 tp!1303640))))

(declare-fun b!4249375 () Bool)

(declare-fun tp!1303637 () Bool)

(assert (=> b!4249375 (= e!2639245 tp!1303637)))

(declare-fun b!4249373 () Bool)

(assert (=> b!4249373 (= e!2639245 tp_is_empty!22729)))

(declare-fun b!4249376 () Bool)

(declare-fun tp!1303639 () Bool)

(declare-fun tp!1303638 () Bool)

(assert (=> b!4249376 (= e!2639245 (and tp!1303639 tp!1303638))))

(assert (= (and b!4248715 ((_ is ElementMatch!12869) (reg!13198 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249373))

(assert (= (and b!4248715 ((_ is Concat!21064) (reg!13198 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249374))

(assert (= (and b!4248715 ((_ is Star!12869) (reg!13198 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249375))

(assert (= (and b!4248715 ((_ is Union!12869) (reg!13198 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249376))

(declare-fun b!4249377 () Bool)

(declare-fun e!2639246 () Bool)

(declare-fun tp!1303642 () Bool)

(assert (=> b!4249377 (= e!2639246 (and tp_is_empty!22729 tp!1303642))))

(assert (=> b!4248683 (= tp!1303461 e!2639246)))

(assert (= (and b!4248683 ((_ is Cons!47056) (originalCharacters!8308 (h!52478 (t!352017 tokens!592))))) b!4249377))

(declare-fun e!2639247 () Bool)

(assert (=> b!4248716 (= tp!1303493 e!2639247)))

(declare-fun b!4249379 () Bool)

(declare-fun tp!1303647 () Bool)

(declare-fun tp!1303646 () Bool)

(assert (=> b!4249379 (= e!2639247 (and tp!1303647 tp!1303646))))

(declare-fun b!4249380 () Bool)

(declare-fun tp!1303643 () Bool)

(assert (=> b!4249380 (= e!2639247 tp!1303643)))

(declare-fun b!4249378 () Bool)

(assert (=> b!4249378 (= e!2639247 tp_is_empty!22729)))

(declare-fun b!4249381 () Bool)

(declare-fun tp!1303645 () Bool)

(declare-fun tp!1303644 () Bool)

(assert (=> b!4249381 (= e!2639247 (and tp!1303645 tp!1303644))))

(assert (= (and b!4248716 ((_ is ElementMatch!12869) (regOne!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249378))

(assert (= (and b!4248716 ((_ is Concat!21064) (regOne!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249379))

(assert (= (and b!4248716 ((_ is Star!12869) (regOne!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249380))

(assert (= (and b!4248716 ((_ is Union!12869) (regOne!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249381))

(declare-fun e!2639248 () Bool)

(assert (=> b!4248716 (= tp!1303492 e!2639248)))

(declare-fun b!4249383 () Bool)

(declare-fun tp!1303652 () Bool)

(declare-fun tp!1303651 () Bool)

(assert (=> b!4249383 (= e!2639248 (and tp!1303652 tp!1303651))))

(declare-fun b!4249384 () Bool)

(declare-fun tp!1303648 () Bool)

(assert (=> b!4249384 (= e!2639248 tp!1303648)))

(declare-fun b!4249382 () Bool)

(assert (=> b!4249382 (= e!2639248 tp_is_empty!22729)))

(declare-fun b!4249385 () Bool)

(declare-fun tp!1303650 () Bool)

(declare-fun tp!1303649 () Bool)

(assert (=> b!4249385 (= e!2639248 (and tp!1303650 tp!1303649))))

(assert (= (and b!4248716 ((_ is ElementMatch!12869) (regTwo!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249382))

(assert (= (and b!4248716 ((_ is Concat!21064) (regTwo!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249383))

(assert (= (and b!4248716 ((_ is Star!12869) (regTwo!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249384))

(assert (= (and b!4248716 ((_ is Union!12869) (regTwo!26251 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249385))

(declare-fun b!4249388 () Bool)

(declare-fun b_free!126247 () Bool)

(declare-fun b_next!126951 () Bool)

(assert (=> b!4249388 (= b_free!126247 (not b_next!126951))))

(declare-fun tb!256195 () Bool)

(declare-fun t!352199 () Bool)

(assert (=> (and b!4249388 (= (toValue!10732 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352199) tb!256195))

(declare-fun result!312416 () Bool)

(assert (= result!312416 result!312288))

(assert (=> d!1249523 t!352199))

(declare-fun tb!256197 () Bool)

(declare-fun t!352201 () Bool)

(assert (=> (and b!4249388 (= (toValue!10732 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toValue!10732 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352201) tb!256197))

(declare-fun result!312418 () Bool)

(assert (= result!312418 result!312390))

(assert (=> d!1249771 t!352201))

(declare-fun tp!1303656 () Bool)

(declare-fun b_and!336817 () Bool)

(assert (=> b!4249388 (= tp!1303656 (and (=> t!352199 result!312416) (=> t!352201 result!312418) b_and!336817))))

(declare-fun b_free!126249 () Bool)

(declare-fun b_next!126953 () Bool)

(assert (=> b!4249388 (= b_free!126249 (not b_next!126953))))

(declare-fun tb!256199 () Bool)

(declare-fun t!352203 () Bool)

(assert (=> (and b!4249388 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508103)))))) t!352203) tb!256199))

(declare-fun result!312420 () Bool)

(assert (= result!312420 result!312382))

(assert (=> d!1249699 t!352203))

(declare-fun t!352205 () Bool)

(declare-fun tb!256201 () Bool)

(assert (=> (and b!4249388 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (get!15282 lt!1508117)))))) t!352205) tb!256201))

(declare-fun result!312422 () Bool)

(assert (= result!312422 result!312306))

(assert (=> d!1249541 t!352205))

(declare-fun t!352207 () Bool)

(declare-fun tb!256203 () Bool)

(assert (=> (and b!4249388 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052)))))) t!352207) tb!256203))

(declare-fun result!312424 () Bool)

(assert (= result!312424 result!312232))

(assert (=> d!1249417 t!352207))

(declare-fun t!352209 () Bool)

(declare-fun tb!256205 () Bool)

(assert (=> (and b!4249388 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592)))))) t!352209) tb!256205))

(declare-fun result!312426 () Bool)

(assert (= result!312426 result!312298))

(assert (=> b!4248793 t!352209))

(declare-fun t!352211 () Bool)

(declare-fun tb!256207 () Bool)

(assert (=> (and b!4249388 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051)))))) t!352211) tb!256207))

(declare-fun result!312428 () Bool)

(assert (= result!312428 result!312256))

(assert (=> d!1249463 t!352211))

(declare-fun t!352213 () Bool)

(declare-fun tb!256209 () Bool)

(assert (=> (and b!4249388 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592))))) t!352213) tb!256209))

(declare-fun result!312430 () Bool)

(assert (= result!312430 result!312212))

(assert (=> b!4248409 t!352213))

(declare-fun tp!1303653 () Bool)

(declare-fun b_and!336819 () Bool)

(assert (=> b!4249388 (= tp!1303653 (and (=> t!352213 result!312430) (=> t!352207 result!312424) (=> t!352203 result!312420) (=> t!352209 result!312426) (=> t!352211 result!312428) (=> t!352205 result!312422) b_and!336819))))

(declare-fun e!2639251 () Bool)

(assert (=> b!4249388 (= e!2639251 (and tp!1303656 tp!1303653))))

(declare-fun b!4249387 () Bool)

(declare-fun e!2639252 () Bool)

(declare-fun tp!1303654 () Bool)

(assert (=> b!4249387 (= e!2639252 (and tp!1303654 (inv!61820 (tag!8828 (h!52477 (t!352016 (t!352016 rules!2971))))) (inv!61823 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) e!2639251))))

(declare-fun b!4249386 () Bool)

(declare-fun e!2639250 () Bool)

(declare-fun tp!1303655 () Bool)

(assert (=> b!4249386 (= e!2639250 (and e!2639252 tp!1303655))))

(assert (=> b!4248699 (= tp!1303478 e!2639250)))

(assert (= b!4249387 b!4249388))

(assert (= b!4249386 b!4249387))

(assert (= (and b!4248699 ((_ is Cons!47057) (t!352016 (t!352016 rules!2971)))) b!4249386))

(declare-fun m!4834467 () Bool)

(assert (=> b!4249387 m!4834467))

(declare-fun m!4834469 () Bool)

(assert (=> b!4249387 m!4834469))

(declare-fun e!2639253 () Bool)

(assert (=> b!4248719 (= tp!1303496 e!2639253)))

(declare-fun b!4249390 () Bool)

(declare-fun tp!1303661 () Bool)

(declare-fun tp!1303660 () Bool)

(assert (=> b!4249390 (= e!2639253 (and tp!1303661 tp!1303660))))

(declare-fun b!4249391 () Bool)

(declare-fun tp!1303657 () Bool)

(assert (=> b!4249391 (= e!2639253 tp!1303657)))

(declare-fun b!4249389 () Bool)

(assert (=> b!4249389 (= e!2639253 tp_is_empty!22729)))

(declare-fun b!4249392 () Bool)

(declare-fun tp!1303659 () Bool)

(declare-fun tp!1303658 () Bool)

(assert (=> b!4249392 (= e!2639253 (and tp!1303659 tp!1303658))))

(assert (= (and b!4248719 ((_ is ElementMatch!12869) (reg!13198 (regex!7964 (h!52477 rules!2971))))) b!4249389))

(assert (= (and b!4248719 ((_ is Concat!21064) (reg!13198 (regex!7964 (h!52477 rules!2971))))) b!4249390))

(assert (= (and b!4248719 ((_ is Star!12869) (reg!13198 (regex!7964 (h!52477 rules!2971))))) b!4249391))

(assert (= (and b!4248719 ((_ is Union!12869) (reg!13198 (regex!7964 (h!52477 rules!2971))))) b!4249392))

(declare-fun e!2639254 () Bool)

(assert (=> b!4248714 (= tp!1303495 e!2639254)))

(declare-fun b!4249394 () Bool)

(declare-fun tp!1303666 () Bool)

(declare-fun tp!1303665 () Bool)

(assert (=> b!4249394 (= e!2639254 (and tp!1303666 tp!1303665))))

(declare-fun b!4249395 () Bool)

(declare-fun tp!1303662 () Bool)

(assert (=> b!4249395 (= e!2639254 tp!1303662)))

(declare-fun b!4249393 () Bool)

(assert (=> b!4249393 (= e!2639254 tp_is_empty!22729)))

(declare-fun b!4249396 () Bool)

(declare-fun tp!1303664 () Bool)

(declare-fun tp!1303663 () Bool)

(assert (=> b!4249396 (= e!2639254 (and tp!1303664 tp!1303663))))

(assert (= (and b!4248714 ((_ is ElementMatch!12869) (regOne!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249393))

(assert (= (and b!4248714 ((_ is Concat!21064) (regOne!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249394))

(assert (= (and b!4248714 ((_ is Star!12869) (regOne!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249395))

(assert (= (and b!4248714 ((_ is Union!12869) (regOne!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249396))

(declare-fun e!2639255 () Bool)

(assert (=> b!4248714 (= tp!1303494 e!2639255)))

(declare-fun b!4249398 () Bool)

(declare-fun tp!1303671 () Bool)

(declare-fun tp!1303670 () Bool)

(assert (=> b!4249398 (= e!2639255 (and tp!1303671 tp!1303670))))

(declare-fun b!4249399 () Bool)

(declare-fun tp!1303667 () Bool)

(assert (=> b!4249399 (= e!2639255 tp!1303667)))

(declare-fun b!4249397 () Bool)

(assert (=> b!4249397 (= e!2639255 tp_is_empty!22729)))

(declare-fun b!4249400 () Bool)

(declare-fun tp!1303669 () Bool)

(declare-fun tp!1303668 () Bool)

(assert (=> b!4249400 (= e!2639255 (and tp!1303669 tp!1303668))))

(assert (= (and b!4248714 ((_ is ElementMatch!12869) (regTwo!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249397))

(assert (= (and b!4248714 ((_ is Concat!21064) (regTwo!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249398))

(assert (= (and b!4248714 ((_ is Star!12869) (regTwo!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249399))

(assert (= (and b!4248714 ((_ is Union!12869) (regTwo!26250 (regex!7964 (rule!11096 (h!52478 tokens!592)))))) b!4249400))

(declare-fun e!2639256 () Bool)

(assert (=> b!4248700 (= tp!1303477 e!2639256)))

(declare-fun b!4249402 () Bool)

(declare-fun tp!1303676 () Bool)

(declare-fun tp!1303675 () Bool)

(assert (=> b!4249402 (= e!2639256 (and tp!1303676 tp!1303675))))

(declare-fun b!4249403 () Bool)

(declare-fun tp!1303672 () Bool)

(assert (=> b!4249403 (= e!2639256 tp!1303672)))

(declare-fun b!4249401 () Bool)

(assert (=> b!4249401 (= e!2639256 tp_is_empty!22729)))

(declare-fun b!4249404 () Bool)

(declare-fun tp!1303674 () Bool)

(declare-fun tp!1303673 () Bool)

(assert (=> b!4249404 (= e!2639256 (and tp!1303674 tp!1303673))))

(assert (= (and b!4248700 ((_ is ElementMatch!12869) (regex!7964 (h!52477 (t!352016 rules!2971))))) b!4249401))

(assert (= (and b!4248700 ((_ is Concat!21064) (regex!7964 (h!52477 (t!352016 rules!2971))))) b!4249402))

(assert (= (and b!4248700 ((_ is Star!12869) (regex!7964 (h!52477 (t!352016 rules!2971))))) b!4249403))

(assert (= (and b!4248700 ((_ is Union!12869) (regex!7964 (h!52477 (t!352016 rules!2971))))) b!4249404))

(declare-fun e!2639257 () Bool)

(assert (=> b!4248718 (= tp!1303500 e!2639257)))

(declare-fun b!4249406 () Bool)

(declare-fun tp!1303681 () Bool)

(declare-fun tp!1303680 () Bool)

(assert (=> b!4249406 (= e!2639257 (and tp!1303681 tp!1303680))))

(declare-fun b!4249407 () Bool)

(declare-fun tp!1303677 () Bool)

(assert (=> b!4249407 (= e!2639257 tp!1303677)))

(declare-fun b!4249405 () Bool)

(assert (=> b!4249405 (= e!2639257 tp_is_empty!22729)))

(declare-fun b!4249408 () Bool)

(declare-fun tp!1303679 () Bool)

(declare-fun tp!1303678 () Bool)

(assert (=> b!4249408 (= e!2639257 (and tp!1303679 tp!1303678))))

(assert (= (and b!4248718 ((_ is ElementMatch!12869) (regOne!26250 (regex!7964 (h!52477 rules!2971))))) b!4249405))

(assert (= (and b!4248718 ((_ is Concat!21064) (regOne!26250 (regex!7964 (h!52477 rules!2971))))) b!4249406))

(assert (= (and b!4248718 ((_ is Star!12869) (regOne!26250 (regex!7964 (h!52477 rules!2971))))) b!4249407))

(assert (= (and b!4248718 ((_ is Union!12869) (regOne!26250 (regex!7964 (h!52477 rules!2971))))) b!4249408))

(declare-fun e!2639258 () Bool)

(assert (=> b!4248718 (= tp!1303499 e!2639258)))

(declare-fun b!4249410 () Bool)

(declare-fun tp!1303686 () Bool)

(declare-fun tp!1303685 () Bool)

(assert (=> b!4249410 (= e!2639258 (and tp!1303686 tp!1303685))))

(declare-fun b!4249411 () Bool)

(declare-fun tp!1303682 () Bool)

(assert (=> b!4249411 (= e!2639258 tp!1303682)))

(declare-fun b!4249409 () Bool)

(assert (=> b!4249409 (= e!2639258 tp_is_empty!22729)))

(declare-fun b!4249412 () Bool)

(declare-fun tp!1303684 () Bool)

(declare-fun tp!1303683 () Bool)

(assert (=> b!4249412 (= e!2639258 (and tp!1303684 tp!1303683))))

(assert (= (and b!4248718 ((_ is ElementMatch!12869) (regTwo!26250 (regex!7964 (h!52477 rules!2971))))) b!4249409))

(assert (= (and b!4248718 ((_ is Concat!21064) (regTwo!26250 (regex!7964 (h!52477 rules!2971))))) b!4249410))

(assert (= (and b!4248718 ((_ is Star!12869) (regTwo!26250 (regex!7964 (h!52477 rules!2971))))) b!4249411))

(assert (= (and b!4248718 ((_ is Union!12869) (regTwo!26250 (regex!7964 (h!52477 rules!2971))))) b!4249412))

(declare-fun b_lambda!125173 () Bool)

(assert (= b_lambda!125151 (or (and b!4248399 b_free!126217 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))))) (and b!4248701 b_free!126233 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))))) (and b!4249388 b_free!126249 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))))) (and b!4248397 b_free!126213 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))))) (and b!4249361 b_free!126245 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))))) (and b!4248685 b_free!126229) b_lambda!125173)))

(declare-fun b_lambda!125175 () Bool)

(assert (= b_lambda!125139 (or (and b!4248397 b_free!126213 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))))) (and b!4249361 b_free!126245 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))))) (and b!4249388 b_free!126249 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))))) (and b!4248685 b_free!126229 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))))) (and b!4248399 b_free!126217 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))))) (and b!4248701 b_free!126233 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508052))))))) b_lambda!125175)))

(declare-fun b_lambda!125177 () Bool)

(assert (= b_lambda!125143 (or (and b!4249388 b_free!126249 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 (t!352016 rules!2971))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))))) (and b!4248701 b_free!126233 (= (toChars!10591 (transformation!7964 (h!52477 (t!352016 rules!2971)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))))) (and b!4248685 b_free!126229 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 tokens!592))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))))) (and b!4249361 b_free!126245 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 (t!352017 (t!352017 tokens!592)))))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))))) (and b!4248399 b_free!126217 (= (toChars!10591 (transformation!7964 (rule!11096 (h!52478 tokens!592)))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))))) (and b!4248397 b_free!126213 (= (toChars!10591 (transformation!7964 (h!52477 rules!2971))) (toChars!10591 (transformation!7964 (rule!11096 (_1!25443 (v!41053 lt!1508051))))))) b_lambda!125177)))

(check-sat (not b!4249290) (not b_next!126935) (not d!1249529) (not d!1249535) (not b!4248776) (not d!1249509) (not b!4249225) b_and!336813 (not b_lambda!125171) (not b!4249272) (not b!4249255) (not bm!293940) (not b!4249317) (not b!4248843) (not b!4249387) (not b!4249372) (not b!4249281) (not b!4248803) (not b!4248847) (not b!4249411) (not b!4249406) (not b_lambda!125153) (not b!4248762) (not d!1249717) (not b_next!126953) (not b_lambda!125169) (not b!4249294) (not b_lambda!125173) (not b!4249288) (not b!4249334) (not b!4248793) (not b_lambda!125149) (not b!4249298) (not b!4249332) (not d!1249737) (not d!1249531) (not d!1249759) (not d!1249545) (not b!4248760) (not b!4249215) (not b!4249254) (not b!4249223) (not b_lambda!125175) (not b!4249399) (not b!4249340) (not b!4249391) (not b!4248794) (not b_next!126919) (not d!1249539) (not b!4249313) (not b!4249366) (not d!1249767) (not bm!293947) (not b!4249364) (not b!4249305) (not b_next!126933) (not d!1249699) (not b!4249402) (not b_next!126921) (not b!4248845) (not b!4248856) (not b!4248766) (not b!4249266) (not b!4249299) (not b_next!126917) (not b!4248775) (not b!4249259) (not d!1249693) (not d!1249775) (not b!4248858) (not b!4249400) (not b!4249287) (not d!1249725) (not b!4249398) (not bm!293936) (not b!4248787) (not d!1249723) b_and!336803 (not d!1249543) (not b!4249335) b_and!336817 (not b!4248833) (not b!4248459) (not b!4248765) (not b!4248849) (not d!1249697) (not b!4249309) (not b!4249377) (not b!4248788) (not b!4248764) (not b!4249356) (not b!4249394) (not b!4249403) (not b!4249404) (not b!4249260) b_and!336799 (not b!4248746) (not tb!256171) b_and!336797 (not b!4249253) (not b!4249339) (not b!4249310) (not b_next!126937) (not b!4249386) (not b!4248758) (not b_next!126915) (not d!1249735) (not b!4248797) (not b!4248844) (not b!4248768) (not b!4249196) (not b!4249376) (not d!1249549) (not b!4249341) b_and!336815 (not d!1249541) (not d!1249773) (not b!4248417) (not b!4249412) (not b!4249252) (not b_next!126951) (not b!4248852) (not b!4249336) (not b!4249286) (not b!4249284) b_and!336805 (not d!1249555) (not b_next!126949) (not b!4249232) (not d!1249745) (not tb!256163) (not d!1249713) (not b!4249368) (not b!4249226) (not b!4249371) (not b!4249306) (not b!4249271) (not b!4248750) (not d!1249715) b_and!336801 b_and!336811 (not b!4249367) (not d!1249527) (not b_lambda!125177) (not b!4249222) (not b!4249273) (not b!4249381) (not bm!293939) (not b!4249337) (not d!1249727) (not b!4249380) (not b!4249256) (not b!4248645) (not b!4249280) (not d!1249525) (not d!1249515) (not b!4249307) (not b!4248769) (not b_next!126931) (not b!4248834) (not b!4249353) (not b!4249375) (not b!4249199) (not b!4248748) (not d!1249729) (not b!4249296) (not b!4249359) (not b!4248744) (not b!4248851) (not b!4249350) (not b!4248756) (not b!4249355) (not b!4248855) (not b!4249318) (not tb!256075) (not b!4249396) (not b!4249362) (not b!4249201) (not tb!256083) (not b!4248761) (not b!4249392) (not b!4248800) (not d!1249769) (not b!4249322) (not b!4249258) (not d!1249783) (not b!4248790) (not b!4248846) (not b!4249410) (not d!1249779) (not d!1249547) b_and!336819 (not b!4248848) (not b!4249360) (not b!4249320) (not b!4248853) (not b!4249308) b_and!336809 (not b!4249216) (not b!4249384) (not d!1249533) (not b!4249408) (not b!4249275) (not b!4249407) (not d!1249537) (not b!4249390) (not b!4249314) (not b!4249357) (not b!4249292) (not b!4249374) (not b!4249311) (not b!4249331) (not b!4249229) (not b!4249315) (not b!4248799) (not b!4248854) (not b_lambda!125145) (not b!4249231) (not b!4249383) (not b!4249363) (not b!4249358) (not b!4249370) (not b!4249379) b_and!336807 (not b!4249203) (not b!4249385) (not b!4249217) (not b!4249351) (not d!1249749) (not b!4249395) (not tb!256091) (not b!4249198) (not b!4248802) (not d!1249787) (not b!4249321) (not b!4249333) (not b!4249205) (not b!4249354) (not d!1249721) (not b!4249352) tp_is_empty!22729 (not b!4248767) (not b!4248795) (not d!1249781) (not b_next!126947) (not b!4249302) (not d!1249765))
(check-sat (not b_next!126935) b_and!336813 (not b_next!126953) (not b_next!126919) (not b_next!126933) (not b_next!126921) (not b_next!126917) b_and!336803 b_and!336817 (not b_next!126915) b_and!336815 (not b_next!126951) b_and!336801 b_and!336811 (not b_next!126931) b_and!336807 (not b_next!126947) (not b_next!126937) b_and!336799 b_and!336797 b_and!336805 (not b_next!126949) b_and!336819 b_and!336809)
