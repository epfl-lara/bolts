; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266124 () Bool)

(assert start!266124)

(declare-fun b!2745356 () Bool)

(declare-fun b_free!77293 () Bool)

(declare-fun b_next!77997 () Bool)

(assert (=> b!2745356 (= b_free!77293 (not b_next!77997))))

(declare-fun tp!864413 () Bool)

(declare-fun b_and!202013 () Bool)

(assert (=> b!2745356 (= tp!864413 b_and!202013)))

(declare-fun b!2745354 () Bool)

(declare-fun b_free!77295 () Bool)

(declare-fun b_next!77999 () Bool)

(assert (=> b!2745354 (= b_free!77295 (not b_next!77999))))

(declare-fun tp!864409 () Bool)

(declare-fun b_and!202015 () Bool)

(assert (=> b!2745354 (= tp!864409 b_and!202015)))

(declare-fun b!2745360 () Bool)

(declare-fun b_free!77297 () Bool)

(declare-fun b_next!78001 () Bool)

(assert (=> b!2745360 (= b_free!77297 (not b_next!78001))))

(declare-fun tp!864411 () Bool)

(declare-fun b_and!202017 () Bool)

(assert (=> b!2745360 (= tp!864411 b_and!202017)))

(declare-fun b!2745369 () Bool)

(declare-fun b_free!77299 () Bool)

(declare-fun b_next!78003 () Bool)

(assert (=> b!2745369 (= b_free!77299 (not b_next!78003))))

(declare-fun tp!864402 () Bool)

(declare-fun b_and!202019 () Bool)

(assert (=> b!2745369 (= tp!864402 b_and!202019)))

(declare-fun b!2745358 () Bool)

(declare-fun b_free!77301 () Bool)

(declare-fun b_next!78005 () Bool)

(assert (=> b!2745358 (= b_free!77301 (not b_next!78005))))

(declare-fun tp!864416 () Bool)

(declare-fun b_and!202021 () Bool)

(assert (=> b!2745358 (= tp!864416 b_and!202021)))

(declare-fun b_free!77303 () Bool)

(declare-fun b_next!78007 () Bool)

(assert (=> b!2745358 (= b_free!77303 (not b_next!78007))))

(declare-fun tp!864410 () Bool)

(declare-fun b_and!202023 () Bool)

(assert (=> b!2745358 (= tp!864410 b_and!202023)))

(declare-fun b!2745352 () Bool)

(declare-fun res!1152167 () Bool)

(declare-fun e!1729444 () Bool)

(assert (=> b!2745352 (=> (not res!1152167) (not e!1729444))))

(declare-datatypes ((List!31707 0))(
  ( (Nil!31607) (Cons!31607 (h!37027 (_ BitVec 16)) (t!227795 List!31707)) )
))
(declare-datatypes ((TokenValue!5064 0))(
  ( (FloatLiteralValue!10128 (text!35893 List!31707)) (TokenValueExt!5063 (__x!20425 Int)) (Broken!25320 (value!155572 List!31707)) (Object!5163) (End!5064) (Def!5064) (Underscore!5064) (Match!5064) (Else!5064) (Error!5064) (Case!5064) (If!5064) (Extends!5064) (Abstract!5064) (Class!5064) (Val!5064) (DelimiterValue!10128 (del!5124 List!31707)) (KeywordValue!5070 (value!155573 List!31707)) (CommentValue!10128 (value!155574 List!31707)) (WhitespaceValue!10128 (value!155575 List!31707)) (IndentationValue!5064 (value!155576 List!31707)) (String!35225) (Int32!5064) (Broken!25321 (value!155577 List!31707)) (Boolean!5065) (Unit!45522) (OperatorValue!5067 (op!5124 List!31707)) (IdentifierValue!10128 (value!155578 List!31707)) (IdentifierValue!10129 (value!155579 List!31707)) (WhitespaceValue!10129 (value!155580 List!31707)) (True!10128) (False!10128) (Broken!25322 (value!155581 List!31707)) (Broken!25323 (value!155582 List!31707)) (True!10129) (RightBrace!5064) (RightBracket!5064) (Colon!5064) (Null!5064) (Comma!5064) (LeftBracket!5064) (False!10129) (LeftBrace!5064) (ImaginaryLiteralValue!5064 (text!35894 List!31707)) (StringLiteralValue!15192 (value!155583 List!31707)) (EOFValue!5064 (value!155584 List!31707)) (IdentValue!5064 (value!155585 List!31707)) (DelimiterValue!10129 (value!155586 List!31707)) (DedentValue!5064 (value!155587 List!31707)) (NewLineValue!5064 (value!155588 List!31707)) (IntegerValue!15192 (value!155589 (_ BitVec 32)) (text!35895 List!31707)) (IntegerValue!15193 (value!155590 Int) (text!35896 List!31707)) (Times!5064) (Or!5064) (Equal!5064) (Minus!5064) (Broken!25324 (value!155591 List!31707)) (And!5064) (Div!5064) (LessEqual!5064) (Mod!5064) (Concat!13061) (Not!5064) (Plus!5064) (SpaceValue!5064 (value!155592 List!31707)) (IntegerValue!15194 (value!155593 Int) (text!35897 List!31707)) (StringLiteralValue!15193 (text!35898 List!31707)) (FloatLiteralValue!10129 (text!35899 List!31707)) (BytesLiteralValue!5064 (value!155594 List!31707)) (CommentValue!10129 (value!155595 List!31707)) (StringLiteralValue!15194 (value!155596 List!31707)) (ErrorTokenValue!5064 (msg!5125 List!31707)) )
))
(declare-datatypes ((C!16152 0))(
  ( (C!16153 (val!10010 Int)) )
))
(declare-datatypes ((List!31708 0))(
  ( (Nil!31608) (Cons!31608 (h!37028 C!16152) (t!227796 List!31708)) )
))
(declare-datatypes ((IArray!19775 0))(
  ( (IArray!19776 (innerList!9945 List!31708)) )
))
(declare-datatypes ((Conc!9885 0))(
  ( (Node!9885 (left!24231 Conc!9885) (right!24561 Conc!9885) (csize!20000 Int) (cheight!10096 Int)) (Leaf!15052 (xs!12992 IArray!19775) (csize!20001 Int)) (Empty!9885) )
))
(declare-datatypes ((BalanceConc!19384 0))(
  ( (BalanceConc!19385 (c!444826 Conc!9885)) )
))
(declare-datatypes ((array!12848 0))(
  ( (array!12849 (arr!5737 (Array (_ BitVec 32) (_ BitVec 64))) (size!24403 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!7997 0))(
  ( (ElementMatch!7997 (c!444827 C!16152)) (Concat!13062 (regOne!16506 Regex!7997) (regTwo!16506 Regex!7997)) (EmptyExpr!7997) (Star!7997 (reg!8326 Regex!7997)) (EmptyLang!7997) (Union!7997 (regOne!16507 Regex!7997) (regTwo!16507 Regex!7997)) )
))
(declare-datatypes ((List!31709 0))(
  ( (Nil!31609) (Cons!31609 (h!37029 Regex!7997) (t!227797 List!31709)) )
))
(declare-datatypes ((Context!4430 0))(
  ( (Context!4431 (exprs!2715 List!31709)) )
))
(declare-datatypes ((tuple2!31418 0))(
  ( (tuple2!31419 (_1!18384 Context!4430) (_2!18384 C!16152)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31420 0))(
  ( (tuple2!31421 (_1!18385 tuple2!31418) (_2!18385 (InoxSet Context!4430))) )
))
(declare-datatypes ((List!31710 0))(
  ( (Nil!31610) (Cons!31610 (h!37030 tuple2!31420) (t!227798 List!31710)) )
))
(declare-datatypes ((array!12850 0))(
  ( (array!12851 (arr!5738 (Array (_ BitVec 32) List!31710)) (size!24404 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7214 0))(
  ( (LongMapFixedSize!7215 (defaultEntry!3992 Int) (mask!9342 (_ BitVec 32)) (extraKeys!3856 (_ BitVec 32)) (zeroValue!3866 List!31710) (minValue!3866 List!31710) (_size!7257 (_ BitVec 32)) (_keys!3907 array!12848) (_values!3888 array!12850) (_vacant!3668 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14237 0))(
  ( (Cell!14238 (v!33241 LongMapFixedSize!7214)) )
))
(declare-datatypes ((MutLongMap!3607 0))(
  ( (LongMap!3607 (underlying!7417 Cell!14237)) (MutLongMapExt!3606 (__x!20426 Int)) )
))
(declare-datatypes ((Cell!14239 0))(
  ( (Cell!14240 (v!33242 MutLongMap!3607)) )
))
(declare-datatypes ((tuple3!4410 0))(
  ( (tuple3!4411 (_1!18386 Regex!7997) (_2!18386 Context!4430) (_3!2675 C!16152)) )
))
(declare-datatypes ((tuple2!31422 0))(
  ( (tuple2!31423 (_1!18387 tuple3!4410) (_2!18387 (InoxSet Context!4430))) )
))
(declare-datatypes ((List!31711 0))(
  ( (Nil!31611) (Cons!31611 (h!37031 tuple2!31422) (t!227799 List!31711)) )
))
(declare-datatypes ((Hashable!3523 0))(
  ( (HashableExt!3522 (__x!20427 Int)) )
))
(declare-datatypes ((array!12852 0))(
  ( (array!12853 (arr!5739 (Array (_ BitVec 32) List!31711)) (size!24405 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7216 0))(
  ( (LongMapFixedSize!7217 (defaultEntry!3993 Int) (mask!9343 (_ BitVec 32)) (extraKeys!3857 (_ BitVec 32)) (zeroValue!3867 List!31711) (minValue!3867 List!31711) (_size!7258 (_ BitVec 32)) (_keys!3908 array!12848) (_values!3889 array!12852) (_vacant!3669 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14241 0))(
  ( (Cell!14242 (v!33243 LongMapFixedSize!7216)) )
))
(declare-datatypes ((MutLongMap!3608 0))(
  ( (LongMap!3608 (underlying!7418 Cell!14241)) (MutLongMapExt!3607 (__x!20428 Int)) )
))
(declare-datatypes ((Cell!14243 0))(
  ( (Cell!14244 (v!33244 MutLongMap!3608)) )
))
(declare-datatypes ((Hashable!3524 0))(
  ( (HashableExt!3523 (__x!20429 Int)) )
))
(declare-datatypes ((MutableMap!3513 0))(
  ( (MutableMapExt!3512 (__x!20430 Int)) (HashMap!3513 (underlying!7419 Cell!14243) (hashF!5555 Hashable!3524) (_size!7259 (_ BitVec 32)) (defaultValue!3684 Int)) )
))
(declare-datatypes ((CacheDown!2338 0))(
  ( (CacheDown!2339 (cache!3656 MutableMap!3513)) )
))
(declare-datatypes ((String!35226 0))(
  ( (String!35227 (value!155597 String)) )
))
(declare-datatypes ((TokenValueInjection!9568 0))(
  ( (TokenValueInjection!9569 (toValue!6840 Int) (toChars!6699 Int)) )
))
(declare-datatypes ((Rule!9484 0))(
  ( (Rule!9485 (regex!4842 Regex!7997) (tag!5346 String!35226) (isSeparator!4842 Bool) (transformation!4842 TokenValueInjection!9568)) )
))
(declare-datatypes ((Token!9114 0))(
  ( (Token!9115 (value!155598 TokenValue!5064) (rule!7280 Rule!9484) (size!24406 Int) (originalCharacters!5588 List!31708)) )
))
(declare-datatypes ((MutableMap!3514 0))(
  ( (MutableMapExt!3513 (__x!20431 Int)) (HashMap!3514 (underlying!7420 Cell!14239) (hashF!5556 Hashable!3523) (_size!7260 (_ BitVec 32)) (defaultValue!3685 Int)) )
))
(declare-datatypes ((CacheUp!2220 0))(
  ( (CacheUp!2221 (cache!3657 MutableMap!3514)) )
))
(declare-datatypes ((tuple2!31424 0))(
  ( (tuple2!31425 (_1!18388 Token!9114) (_2!18388 BalanceConc!19384)) )
))
(declare-datatypes ((Option!6236 0))(
  ( (None!6235) (Some!6235 (v!33245 tuple2!31424)) )
))
(declare-datatypes ((tuple3!4412 0))(
  ( (tuple3!4413 (_1!18389 Option!6236) (_2!18389 CacheUp!2220) (_3!2676 CacheDown!2338)) )
))
(declare-fun lt!971531 () tuple3!4412)

(declare-fun valid!2797 (CacheUp!2220) Bool)

(assert (=> b!2745352 (= res!1152167 (valid!2797 (_2!18389 lt!971531)))))

(declare-fun b!2745353 () Bool)

(declare-fun e!1729453 () Bool)

(declare-fun e!1729432 () Bool)

(declare-fun lt!971532 () MutLongMap!3608)

(get-info :version)

(assert (=> b!2745353 (= e!1729453 (and e!1729432 ((_ is LongMap!3608) lt!971532)))))

(declare-fun cacheDown!646 () CacheDown!2338)

(assert (=> b!2745353 (= lt!971532 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))

(declare-fun e!1729451 () Bool)

(declare-fun tp!864408 () Bool)

(declare-fun e!1729433 () Bool)

(declare-fun tp!864400 () Bool)

(declare-fun array_inv!4099 (array!12848) Bool)

(declare-fun array_inv!4100 (array!12852) Bool)

(assert (=> b!2745354 (= e!1729433 (and tp!864409 tp!864408 tp!864400 (array_inv!4099 (_keys!3908 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) (array_inv!4100 (_values!3889 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) e!1729451))))

(declare-fun b!2745355 () Bool)

(declare-fun valid!2798 (CacheDown!2338) Bool)

(assert (=> b!2745355 (= e!1729444 (valid!2798 (_3!2676 lt!971531)))))

(declare-fun mapNonEmpty!16451 () Bool)

(declare-fun mapRes!16452 () Bool)

(declare-fun tp!864404 () Bool)

(declare-fun tp!864398 () Bool)

(assert (=> mapNonEmpty!16451 (= mapRes!16452 (and tp!864404 tp!864398))))

(declare-fun mapValue!16452 () List!31710)

(declare-fun cacheUp!633 () CacheUp!2220)

(declare-fun mapKey!16451 () (_ BitVec 32))

(declare-fun mapRest!16451 () (Array (_ BitVec 32) List!31710))

(assert (=> mapNonEmpty!16451 (= (arr!5738 (_values!3888 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) (store mapRest!16451 mapKey!16451 mapValue!16452))))

(declare-fun tp!864405 () Bool)

(declare-fun e!1729452 () Bool)

(declare-fun tp!864406 () Bool)

(declare-fun e!1729447 () Bool)

(declare-fun array_inv!4101 (array!12850) Bool)

(assert (=> b!2745356 (= e!1729452 (and tp!864413 tp!864405 tp!864406 (array_inv!4099 (_keys!3907 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) (array_inv!4101 (_values!3888 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) e!1729447))))

(declare-fun res!1152165 () Bool)

(declare-fun e!1729441 () Bool)

(assert (=> start!266124 (=> (not res!1152165) (not e!1729441))))

(declare-datatypes ((LexerInterface!4435 0))(
  ( (LexerInterfaceExt!4432 (__x!20432 Int)) (Lexer!4433) )
))
(declare-fun thiss!15207 () LexerInterface!4435)

(assert (=> start!266124 (= res!1152165 ((_ is Lexer!4433) thiss!15207))))

(assert (=> start!266124 e!1729441))

(declare-fun e!1729446 () Bool)

(declare-fun inv!42954 (CacheDown!2338) Bool)

(assert (=> start!266124 (and (inv!42954 cacheDown!646) e!1729446)))

(declare-fun input!1326 () BalanceConc!19384)

(declare-fun e!1729450 () Bool)

(declare-fun inv!42955 (BalanceConc!19384) Bool)

(assert (=> start!266124 (and (inv!42955 input!1326) e!1729450)))

(declare-fun e!1729436 () Bool)

(assert (=> start!266124 e!1729436))

(declare-fun e!1729442 () Bool)

(declare-fun inv!42956 (CacheUp!2220) Bool)

(assert (=> start!266124 (and (inv!42956 cacheUp!633) e!1729442)))

(assert (=> start!266124 true))

(declare-fun b!2745357 () Bool)

(declare-fun res!1152170 () Bool)

(assert (=> b!2745357 (=> (not res!1152170) (not e!1729441))))

(assert (=> b!2745357 (= res!1152170 (valid!2798 cacheDown!646))))

(declare-fun e!1729440 () Bool)

(assert (=> b!2745358 (= e!1729440 (and tp!864416 tp!864410))))

(declare-fun b!2745359 () Bool)

(declare-fun e!1729445 () Bool)

(assert (=> b!2745359 (= e!1729445 e!1729452)))

(declare-fun e!1729437 () Bool)

(assert (=> b!2745360 (= e!1729437 (and e!1729453 tp!864411))))

(declare-fun mapIsEmpty!16451 () Bool)

(declare-fun mapRes!16451 () Bool)

(assert (=> mapIsEmpty!16451 mapRes!16451))

(declare-fun b!2745361 () Bool)

(assert (=> b!2745361 (= e!1729446 e!1729437)))

(declare-fun b!2745362 () Bool)

(declare-fun tp!864412 () Bool)

(assert (=> b!2745362 (= e!1729451 (and tp!864412 mapRes!16451))))

(declare-fun condMapEmpty!16451 () Bool)

(declare-fun mapDefault!16452 () List!31711)

(assert (=> b!2745362 (= condMapEmpty!16451 (= (arr!5739 (_values!3889 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31711)) mapDefault!16452)))))

(declare-fun b!2745363 () Bool)

(declare-fun e!1729435 () Bool)

(assert (=> b!2745363 (= e!1729441 (not e!1729435))))

(declare-fun res!1152168 () Bool)

(assert (=> b!2745363 (=> res!1152168 e!1729435)))

(declare-datatypes ((List!31712 0))(
  ( (Nil!31612) (Cons!31612 (h!37032 Rule!9484) (t!227800 List!31712)) )
))
(declare-fun rulesArg!249 () List!31712)

(assert (=> b!2745363 (= res!1152168 (or (not ((_ is Cons!31612) rulesArg!249)) (not ((_ is Nil!31612) (t!227800 rulesArg!249)))))))

(declare-fun lt!971529 () List!31708)

(declare-fun isPrefix!2516 (List!31708 List!31708) Bool)

(assert (=> b!2745363 (isPrefix!2516 lt!971529 lt!971529)))

(declare-datatypes ((Unit!45523 0))(
  ( (Unit!45524) )
))
(declare-fun lt!971530 () Unit!45523)

(declare-fun lemmaIsPrefixRefl!1642 (List!31708 List!31708) Unit!45523)

(assert (=> b!2745363 (= lt!971530 (lemmaIsPrefixRefl!1642 lt!971529 lt!971529))))

(declare-fun list!11993 (BalanceConc!19384) List!31708)

(assert (=> b!2745363 (= lt!971529 (list!11993 input!1326))))

(declare-fun b!2745364 () Bool)

(declare-fun res!1152163 () Bool)

(assert (=> b!2745364 (=> (not res!1152163) (not e!1729441))))

(declare-fun isEmpty!18035 (List!31712) Bool)

(assert (=> b!2745364 (= res!1152163 (not (isEmpty!18035 rulesArg!249)))))

(declare-fun b!2745365 () Bool)

(declare-fun e!1729448 () Bool)

(assert (=> b!2745365 (= e!1729448 e!1729433)))

(declare-fun b!2745366 () Bool)

(declare-fun res!1152166 () Bool)

(assert (=> b!2745366 (=> (not res!1152166) (not e!1729441))))

(declare-fun rulesValidInductive!1705 (LexerInterface!4435 List!31712) Bool)

(assert (=> b!2745366 (= res!1152166 (rulesValidInductive!1705 thiss!15207 rulesArg!249))))

(declare-fun mapIsEmpty!16452 () Bool)

(assert (=> mapIsEmpty!16452 mapRes!16452))

(declare-fun b!2745367 () Bool)

(declare-fun res!1152164 () Bool)

(assert (=> b!2745367 (=> (not res!1152164) (not e!1729441))))

(assert (=> b!2745367 (= res!1152164 (valid!2797 cacheUp!633))))

(declare-fun b!2745368 () Bool)

(declare-fun e!1729438 () Bool)

(declare-fun tp!864415 () Bool)

(assert (=> b!2745368 (= e!1729436 (and e!1729438 tp!864415))))

(declare-fun e!1729443 () Bool)

(declare-fun e!1729439 () Bool)

(assert (=> b!2745369 (= e!1729443 (and e!1729439 tp!864402))))

(declare-fun mapNonEmpty!16452 () Bool)

(declare-fun tp!864399 () Bool)

(declare-fun tp!864401 () Bool)

(assert (=> mapNonEmpty!16452 (= mapRes!16451 (and tp!864399 tp!864401))))

(declare-fun mapRest!16452 () (Array (_ BitVec 32) List!31711))

(declare-fun mapKey!16452 () (_ BitVec 32))

(declare-fun mapValue!16451 () List!31711)

(assert (=> mapNonEmpty!16452 (= (arr!5739 (_values!3889 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) (store mapRest!16452 mapKey!16452 mapValue!16451))))

(declare-fun tp!864407 () Bool)

(declare-fun b!2745370 () Bool)

(declare-fun inv!42952 (String!35226) Bool)

(declare-fun inv!42957 (TokenValueInjection!9568) Bool)

(assert (=> b!2745370 (= e!1729438 (and tp!864407 (inv!42952 (tag!5346 (h!37032 rulesArg!249))) (inv!42957 (transformation!4842 (h!37032 rulesArg!249))) e!1729440))))

(declare-fun b!2745371 () Bool)

(declare-fun e!1729434 () Bool)

(declare-fun lt!971528 () MutLongMap!3607)

(assert (=> b!2745371 (= e!1729439 (and e!1729434 ((_ is LongMap!3607) lt!971528)))))

(assert (=> b!2745371 (= lt!971528 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))

(declare-fun b!2745372 () Bool)

(assert (=> b!2745372 (= e!1729442 e!1729443)))

(declare-fun b!2745373 () Bool)

(declare-fun tp!864414 () Bool)

(assert (=> b!2745373 (= e!1729447 (and tp!864414 mapRes!16452))))

(declare-fun condMapEmpty!16452 () Bool)

(declare-fun mapDefault!16451 () List!31710)

(assert (=> b!2745373 (= condMapEmpty!16452 (= (arr!5738 (_values!3888 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31710)) mapDefault!16451)))))

(declare-fun b!2745374 () Bool)

(declare-fun tp!864403 () Bool)

(declare-fun inv!42958 (Conc!9885) Bool)

(assert (=> b!2745374 (= e!1729450 (and (inv!42958 (c!444826 input!1326)) tp!864403))))

(declare-fun b!2745375 () Bool)

(assert (=> b!2745375 (= e!1729432 e!1729448)))

(declare-fun b!2745376 () Bool)

(assert (=> b!2745376 (= e!1729434 e!1729445)))

(declare-fun b!2745377 () Bool)

(assert (=> b!2745377 (= e!1729435 e!1729444)))

(declare-fun res!1152169 () Bool)

(assert (=> b!2745377 (=> (not res!1152169) (not e!1729444))))

(declare-fun maxPrefixZipperSequence!1061 (LexerInterface!4435 List!31712 BalanceConc!19384) Option!6236)

(assert (=> b!2745377 (= res!1152169 (= (_1!18389 lt!971531) (maxPrefixZipperSequence!1061 thiss!15207 rulesArg!249 input!1326)))))

(declare-fun maxPrefixOneRuleZipperSequenceMem!22 (LexerInterface!4435 Rule!9484 BalanceConc!19384 CacheUp!2220 CacheDown!2338) tuple3!4412)

(assert (=> b!2745377 (= lt!971531 (maxPrefixOneRuleZipperSequenceMem!22 thiss!15207 (h!37032 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(assert (= (and start!266124 res!1152165) b!2745366))

(assert (= (and b!2745366 res!1152166) b!2745364))

(assert (= (and b!2745364 res!1152163) b!2745367))

(assert (= (and b!2745367 res!1152164) b!2745357))

(assert (= (and b!2745357 res!1152170) b!2745363))

(assert (= (and b!2745363 (not res!1152168)) b!2745377))

(assert (= (and b!2745377 res!1152169) b!2745352))

(assert (= (and b!2745352 res!1152167) b!2745355))

(assert (= (and b!2745362 condMapEmpty!16451) mapIsEmpty!16451))

(assert (= (and b!2745362 (not condMapEmpty!16451)) mapNonEmpty!16452))

(assert (= b!2745354 b!2745362))

(assert (= b!2745365 b!2745354))

(assert (= b!2745375 b!2745365))

(assert (= (and b!2745353 ((_ is LongMap!3608) (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))) b!2745375))

(assert (= b!2745360 b!2745353))

(assert (= (and b!2745361 ((_ is HashMap!3513) (cache!3656 cacheDown!646))) b!2745360))

(assert (= start!266124 b!2745361))

(assert (= start!266124 b!2745374))

(assert (= b!2745370 b!2745358))

(assert (= b!2745368 b!2745370))

(assert (= (and start!266124 ((_ is Cons!31612) rulesArg!249)) b!2745368))

(assert (= (and b!2745373 condMapEmpty!16452) mapIsEmpty!16452))

(assert (= (and b!2745373 (not condMapEmpty!16452)) mapNonEmpty!16451))

(assert (= b!2745356 b!2745373))

(assert (= b!2745359 b!2745356))

(assert (= b!2745376 b!2745359))

(assert (= (and b!2745371 ((_ is LongMap!3607) (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))) b!2745376))

(assert (= b!2745369 b!2745371))

(assert (= (and b!2745372 ((_ is HashMap!3514) (cache!3657 cacheUp!633))) b!2745369))

(assert (= start!266124 b!2745372))

(declare-fun m!3162163 () Bool)

(assert (=> b!2745352 m!3162163))

(declare-fun m!3162165 () Bool)

(assert (=> b!2745366 m!3162165))

(declare-fun m!3162167 () Bool)

(assert (=> b!2745374 m!3162167))

(declare-fun m!3162169 () Bool)

(assert (=> b!2745354 m!3162169))

(declare-fun m!3162171 () Bool)

(assert (=> b!2745354 m!3162171))

(declare-fun m!3162173 () Bool)

(assert (=> mapNonEmpty!16451 m!3162173))

(declare-fun m!3162175 () Bool)

(assert (=> b!2745367 m!3162175))

(declare-fun m!3162177 () Bool)

(assert (=> b!2745370 m!3162177))

(declare-fun m!3162179 () Bool)

(assert (=> b!2745370 m!3162179))

(declare-fun m!3162181 () Bool)

(assert (=> b!2745364 m!3162181))

(declare-fun m!3162183 () Bool)

(assert (=> start!266124 m!3162183))

(declare-fun m!3162185 () Bool)

(assert (=> start!266124 m!3162185))

(declare-fun m!3162187 () Bool)

(assert (=> start!266124 m!3162187))

(declare-fun m!3162189 () Bool)

(assert (=> b!2745377 m!3162189))

(declare-fun m!3162191 () Bool)

(assert (=> b!2745377 m!3162191))

(declare-fun m!3162193 () Bool)

(assert (=> mapNonEmpty!16452 m!3162193))

(declare-fun m!3162195 () Bool)

(assert (=> b!2745355 m!3162195))

(declare-fun m!3162197 () Bool)

(assert (=> b!2745363 m!3162197))

(declare-fun m!3162199 () Bool)

(assert (=> b!2745363 m!3162199))

(declare-fun m!3162201 () Bool)

(assert (=> b!2745363 m!3162201))

(declare-fun m!3162203 () Bool)

(assert (=> b!2745357 m!3162203))

(declare-fun m!3162205 () Bool)

(assert (=> b!2745356 m!3162205))

(declare-fun m!3162207 () Bool)

(assert (=> b!2745356 m!3162207))

(check-sat (not mapNonEmpty!16452) b_and!202015 (not b!2745355) b_and!202013 b_and!202023 (not b!2745362) (not b_next!78003) (not b_next!78007) (not b!2745357) (not b!2745366) (not b!2745352) (not b!2745373) (not b_next!78001) (not mapNonEmpty!16451) (not b!2745363) b_and!202021 b_and!202017 (not b_next!77999) (not b!2745377) b_and!202019 (not b!2745370) (not start!266124) (not b_next!78005) (not b_next!77997) (not b!2745354) (not b!2745367) (not b!2745374) (not b!2745356) (not b!2745364) (not b!2745368))
(check-sat b_and!202015 (not b_next!78001) b_and!202013 b_and!202023 (not b_next!78003) (not b_next!78007) b_and!202021 b_and!202017 (not b_next!77999) b_and!202019 (not b_next!78005) (not b_next!77997))
(get-model)

(declare-fun d!795943 () Bool)

(declare-fun validCacheMapUp!337 (MutableMap!3514) Bool)

(assert (=> d!795943 (= (valid!2797 cacheUp!633) (validCacheMapUp!337 (cache!3657 cacheUp!633)))))

(declare-fun bs!490265 () Bool)

(assert (= bs!490265 d!795943))

(declare-fun m!3162209 () Bool)

(assert (=> bs!490265 m!3162209))

(assert (=> b!2745367 d!795943))

(declare-fun b!2745394 () Bool)

(declare-fun e!1729470 () Option!6236)

(declare-fun call!177415 () Option!6236)

(assert (=> b!2745394 (= e!1729470 call!177415)))

(declare-fun b!2745395 () Bool)

(declare-fun e!1729468 () Bool)

(declare-fun e!1729471 () Bool)

(assert (=> b!2745395 (= e!1729468 e!1729471)))

(declare-fun res!1152189 () Bool)

(assert (=> b!2745395 (=> (not res!1152189) (not e!1729471))))

(declare-fun lt!971548 () Option!6236)

(declare-fun get!9837 (Option!6236) tuple2!31424)

(declare-datatypes ((tuple2!31426 0))(
  ( (tuple2!31427 (_1!18390 Token!9114) (_2!18390 List!31708)) )
))
(declare-datatypes ((Option!6237 0))(
  ( (None!6236) (Some!6236 (v!33246 tuple2!31426)) )
))
(declare-fun get!9838 (Option!6237) tuple2!31426)

(declare-fun maxPrefix!2383 (LexerInterface!4435 List!31712 List!31708) Option!6237)

(assert (=> b!2745395 (= res!1152189 (= (_1!18388 (get!9837 lt!971548)) (_1!18390 (get!9838 (maxPrefix!2383 thiss!15207 rulesArg!249 (list!11993 input!1326))))))))

(declare-fun bm!177410 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!500 (LexerInterface!4435 Rule!9484 BalanceConc!19384) Option!6236)

(assert (=> bm!177410 (= call!177415 (maxPrefixOneRuleZipperSequence!500 thiss!15207 (h!37032 rulesArg!249) input!1326))))

(declare-fun b!2745396 () Bool)

(declare-fun e!1729469 () Bool)

(declare-fun e!1729472 () Bool)

(assert (=> b!2745396 (= e!1729469 e!1729472)))

(declare-fun res!1152187 () Bool)

(assert (=> b!2745396 (=> (not res!1152187) (not e!1729472))))

(declare-fun maxPrefixZipper!487 (LexerInterface!4435 List!31712 List!31708) Option!6237)

(assert (=> b!2745396 (= res!1152187 (= (_1!18388 (get!9837 lt!971548)) (_1!18390 (get!9838 (maxPrefixZipper!487 thiss!15207 rulesArg!249 (list!11993 input!1326))))))))

(declare-fun b!2745397 () Bool)

(assert (=> b!2745397 (= e!1729472 (= (list!11993 (_2!18388 (get!9837 lt!971548))) (_2!18390 (get!9838 (maxPrefixZipper!487 thiss!15207 rulesArg!249 (list!11993 input!1326))))))))

(declare-fun d!795945 () Bool)

(declare-fun e!1729467 () Bool)

(assert (=> d!795945 e!1729467))

(declare-fun res!1152190 () Bool)

(assert (=> d!795945 (=> (not res!1152190) (not e!1729467))))

(declare-fun isDefined!4927 (Option!6236) Bool)

(declare-fun isDefined!4928 (Option!6237) Bool)

(assert (=> d!795945 (= res!1152190 (= (isDefined!4927 lt!971548) (isDefined!4928 (maxPrefixZipper!487 thiss!15207 rulesArg!249 (list!11993 input!1326)))))))

(assert (=> d!795945 (= lt!971548 e!1729470)))

(declare-fun c!444831 () Bool)

(assert (=> d!795945 (= c!444831 (and ((_ is Cons!31612) rulesArg!249) ((_ is Nil!31612) (t!227800 rulesArg!249))))))

(declare-fun lt!971551 () Unit!45523)

(declare-fun lt!971553 () Unit!45523)

(assert (=> d!795945 (= lt!971551 lt!971553)))

(declare-fun lt!971547 () List!31708)

(declare-fun lt!971552 () List!31708)

(assert (=> d!795945 (isPrefix!2516 lt!971547 lt!971552)))

(assert (=> d!795945 (= lt!971553 (lemmaIsPrefixRefl!1642 lt!971547 lt!971552))))

(assert (=> d!795945 (= lt!971552 (list!11993 input!1326))))

(assert (=> d!795945 (= lt!971547 (list!11993 input!1326))))

(assert (=> d!795945 (rulesValidInductive!1705 thiss!15207 rulesArg!249)))

(assert (=> d!795945 (= (maxPrefixZipperSequence!1061 thiss!15207 rulesArg!249 input!1326) lt!971548)))

(declare-fun b!2745398 () Bool)

(assert (=> b!2745398 (= e!1729467 e!1729468)))

(declare-fun res!1152188 () Bool)

(assert (=> b!2745398 (=> res!1152188 e!1729468)))

(assert (=> b!2745398 (= res!1152188 (not (isDefined!4927 lt!971548)))))

(declare-fun b!2745399 () Bool)

(declare-fun res!1152186 () Bool)

(assert (=> b!2745399 (=> (not res!1152186) (not e!1729467))))

(assert (=> b!2745399 (= res!1152186 e!1729469)))

(declare-fun res!1152185 () Bool)

(assert (=> b!2745399 (=> res!1152185 e!1729469)))

(assert (=> b!2745399 (= res!1152185 (not (isDefined!4927 lt!971548)))))

(declare-fun b!2745400 () Bool)

(assert (=> b!2745400 (= e!1729471 (= (list!11993 (_2!18388 (get!9837 lt!971548))) (_2!18390 (get!9838 (maxPrefix!2383 thiss!15207 rulesArg!249 (list!11993 input!1326))))))))

(declare-fun b!2745401 () Bool)

(declare-fun lt!971550 () Option!6236)

(declare-fun lt!971549 () Option!6236)

(assert (=> b!2745401 (= e!1729470 (ite (and ((_ is None!6235) lt!971550) ((_ is None!6235) lt!971549)) None!6235 (ite ((_ is None!6235) lt!971549) lt!971550 (ite ((_ is None!6235) lt!971550) lt!971549 (ite (>= (size!24406 (_1!18388 (v!33245 lt!971550))) (size!24406 (_1!18388 (v!33245 lt!971549)))) lt!971550 lt!971549)))))))

(assert (=> b!2745401 (= lt!971550 call!177415)))

(assert (=> b!2745401 (= lt!971549 (maxPrefixZipperSequence!1061 thiss!15207 (t!227800 rulesArg!249) input!1326))))

(assert (= (and d!795945 c!444831) b!2745394))

(assert (= (and d!795945 (not c!444831)) b!2745401))

(assert (= (or b!2745394 b!2745401) bm!177410))

(assert (= (and d!795945 res!1152190) b!2745399))

(assert (= (and b!2745399 (not res!1152185)) b!2745396))

(assert (= (and b!2745396 res!1152187) b!2745397))

(assert (= (and b!2745399 res!1152186) b!2745398))

(assert (= (and b!2745398 (not res!1152188)) b!2745395))

(assert (= (and b!2745395 res!1152189) b!2745400))

(declare-fun m!3162211 () Bool)

(assert (=> b!2745400 m!3162211))

(assert (=> b!2745400 m!3162201))

(declare-fun m!3162213 () Bool)

(assert (=> b!2745400 m!3162213))

(declare-fun m!3162215 () Bool)

(assert (=> b!2745400 m!3162215))

(assert (=> b!2745400 m!3162201))

(assert (=> b!2745400 m!3162213))

(declare-fun m!3162217 () Bool)

(assert (=> b!2745400 m!3162217))

(declare-fun m!3162219 () Bool)

(assert (=> b!2745401 m!3162219))

(declare-fun m!3162221 () Bool)

(assert (=> b!2745398 m!3162221))

(assert (=> b!2745396 m!3162217))

(assert (=> b!2745396 m!3162201))

(assert (=> b!2745396 m!3162201))

(declare-fun m!3162223 () Bool)

(assert (=> b!2745396 m!3162223))

(assert (=> b!2745396 m!3162223))

(declare-fun m!3162225 () Bool)

(assert (=> b!2745396 m!3162225))

(assert (=> b!2745395 m!3162217))

(assert (=> b!2745395 m!3162201))

(assert (=> b!2745395 m!3162201))

(assert (=> b!2745395 m!3162213))

(assert (=> b!2745395 m!3162213))

(assert (=> b!2745395 m!3162215))

(assert (=> b!2745397 m!3162211))

(assert (=> b!2745397 m!3162201))

(assert (=> b!2745397 m!3162201))

(assert (=> b!2745397 m!3162223))

(assert (=> b!2745397 m!3162223))

(assert (=> b!2745397 m!3162225))

(assert (=> b!2745397 m!3162217))

(assert (=> d!795945 m!3162201))

(assert (=> d!795945 m!3162223))

(declare-fun m!3162227 () Bool)

(assert (=> d!795945 m!3162227))

(assert (=> d!795945 m!3162221))

(declare-fun m!3162229 () Bool)

(assert (=> d!795945 m!3162229))

(assert (=> d!795945 m!3162165))

(assert (=> d!795945 m!3162223))

(declare-fun m!3162231 () Bool)

(assert (=> d!795945 m!3162231))

(assert (=> d!795945 m!3162201))

(declare-fun m!3162233 () Bool)

(assert (=> bm!177410 m!3162233))

(assert (=> b!2745399 m!3162221))

(assert (=> b!2745377 d!795945))

(declare-fun b!2745412 () Bool)

(declare-fun res!1152199 () Bool)

(declare-fun e!1729480 () Bool)

(assert (=> b!2745412 (=> (not res!1152199) (not e!1729480))))

(declare-fun lt!971569 () tuple3!4412)

(assert (=> b!2745412 (= res!1152199 (valid!2797 (_2!18389 lt!971569)))))

(declare-fun b!2745413 () Bool)

(declare-fun e!1729479 () Option!6236)

(assert (=> b!2745413 (= e!1729479 None!6235)))

(declare-fun b!2745414 () Bool)

(declare-datatypes ((tuple2!31428 0))(
  ( (tuple2!31429 (_1!18391 BalanceConc!19384) (_2!18391 BalanceConc!19384)) )
))
(declare-datatypes ((tuple3!4414 0))(
  ( (tuple3!4415 (_1!18392 tuple2!31428) (_2!18392 CacheUp!2220) (_3!2677 CacheDown!2338)) )
))
(declare-fun lt!971567 () tuple3!4414)

(declare-fun apply!7426 (TokenValueInjection!9568 BalanceConc!19384) TokenValue!5064)

(declare-fun size!24407 (BalanceConc!19384) Int)

(assert (=> b!2745414 (= e!1729479 (Some!6235 (tuple2!31425 (Token!9115 (apply!7426 (transformation!4842 (h!37032 rulesArg!249)) (_1!18391 (_1!18392 lt!971567))) (h!37032 rulesArg!249) (size!24407 (_1!18391 (_1!18392 lt!971567))) (list!11993 (_1!18391 (_1!18392 lt!971567)))) (_2!18391 (_1!18392 lt!971567)))))))

(declare-fun lt!971571 () List!31708)

(assert (=> b!2745414 (= lt!971571 (list!11993 input!1326))))

(declare-fun lt!971566 () Unit!45523)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!774 (Regex!7997 List!31708) Unit!45523)

(assert (=> b!2745414 (= lt!971566 (longestMatchIsAcceptedByMatchOrIsEmpty!774 (regex!4842 (h!37032 rulesArg!249)) lt!971571))))

(declare-fun res!1152198 () Bool)

(declare-fun isEmpty!18036 (List!31708) Bool)

(declare-datatypes ((tuple2!31430 0))(
  ( (tuple2!31431 (_1!18393 List!31708) (_2!18393 List!31708)) )
))
(declare-fun findLongestMatchInner!801 (Regex!7997 List!31708 Int List!31708 List!31708 Int) tuple2!31430)

(declare-fun size!24408 (List!31708) Int)

(assert (=> b!2745414 (= res!1152198 (isEmpty!18036 (_1!18393 (findLongestMatchInner!801 (regex!4842 (h!37032 rulesArg!249)) Nil!31608 (size!24408 Nil!31608) lt!971571 lt!971571 (size!24408 lt!971571)))))))

(declare-fun e!1729481 () Bool)

(assert (=> b!2745414 (=> res!1152198 e!1729481)))

(assert (=> b!2745414 e!1729481))

(declare-fun lt!971570 () Unit!45523)

(assert (=> b!2745414 (= lt!971570 lt!971566)))

(declare-fun lt!971568 () Unit!45523)

(declare-fun lemmaSemiInverse!1141 (TokenValueInjection!9568 BalanceConc!19384) Unit!45523)

(assert (=> b!2745414 (= lt!971568 (lemmaSemiInverse!1141 (transformation!4842 (h!37032 rulesArg!249)) (_1!18391 (_1!18392 lt!971567))))))

(declare-fun b!2745415 () Bool)

(declare-fun matchR!3654 (Regex!7997 List!31708) Bool)

(assert (=> b!2745415 (= e!1729481 (matchR!3654 (regex!4842 (h!37032 rulesArg!249)) (_1!18393 (findLongestMatchInner!801 (regex!4842 (h!37032 rulesArg!249)) Nil!31608 (size!24408 Nil!31608) lt!971571 lt!971571 (size!24408 lt!971571)))))))

(declare-fun b!2745416 () Bool)

(assert (=> b!2745416 (= e!1729480 (valid!2798 (_3!2676 lt!971569)))))

(declare-fun d!795947 () Bool)

(assert (=> d!795947 e!1729480))

(declare-fun res!1152197 () Bool)

(assert (=> d!795947 (=> (not res!1152197) (not e!1729480))))

(assert (=> d!795947 (= res!1152197 (= (_1!18389 lt!971569) (maxPrefixOneRuleZipperSequence!500 thiss!15207 (h!37032 rulesArg!249) input!1326)))))

(assert (=> d!795947 (= lt!971569 (tuple3!4413 e!1729479 (_2!18392 lt!971567) (_3!2677 lt!971567)))))

(declare-fun c!444834 () Bool)

(declare-fun isEmpty!18037 (BalanceConc!19384) Bool)

(assert (=> d!795947 (= c!444834 (isEmpty!18037 (_1!18391 (_1!18392 lt!971567))))))

(declare-fun findLongestMatchWithZipperSequenceMem!8 (Regex!7997 BalanceConc!19384 CacheUp!2220 CacheDown!2338) tuple3!4414)

(assert (=> d!795947 (= lt!971567 (findLongestMatchWithZipperSequenceMem!8 (regex!4842 (h!37032 rulesArg!249)) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun ruleValid!1587 (LexerInterface!4435 Rule!9484) Bool)

(assert (=> d!795947 (ruleValid!1587 thiss!15207 (h!37032 rulesArg!249))))

(assert (=> d!795947 (= (maxPrefixOneRuleZipperSequenceMem!22 thiss!15207 (h!37032 rulesArg!249) input!1326 cacheUp!633 cacheDown!646) lt!971569)))

(assert (= (and d!795947 c!444834) b!2745413))

(assert (= (and d!795947 (not c!444834)) b!2745414))

(assert (= (and b!2745414 (not res!1152198)) b!2745415))

(assert (= (and d!795947 res!1152197) b!2745412))

(assert (= (and b!2745412 res!1152199) b!2745416))

(declare-fun m!3162235 () Bool)

(assert (=> b!2745414 m!3162235))

(declare-fun m!3162237 () Bool)

(assert (=> b!2745414 m!3162237))

(declare-fun m!3162239 () Bool)

(assert (=> b!2745414 m!3162239))

(declare-fun m!3162241 () Bool)

(assert (=> b!2745414 m!3162241))

(declare-fun m!3162243 () Bool)

(assert (=> b!2745414 m!3162243))

(declare-fun m!3162245 () Bool)

(assert (=> b!2745414 m!3162245))

(declare-fun m!3162247 () Bool)

(assert (=> b!2745414 m!3162247))

(assert (=> b!2745414 m!3162237))

(declare-fun m!3162249 () Bool)

(assert (=> b!2745414 m!3162249))

(assert (=> b!2745414 m!3162239))

(declare-fun m!3162251 () Bool)

(assert (=> b!2745414 m!3162251))

(assert (=> b!2745414 m!3162201))

(assert (=> d!795947 m!3162233))

(declare-fun m!3162253 () Bool)

(assert (=> d!795947 m!3162253))

(declare-fun m!3162255 () Bool)

(assert (=> d!795947 m!3162255))

(declare-fun m!3162257 () Bool)

(assert (=> d!795947 m!3162257))

(assert (=> b!2745415 m!3162237))

(assert (=> b!2745415 m!3162239))

(assert (=> b!2745415 m!3162237))

(assert (=> b!2745415 m!3162239))

(assert (=> b!2745415 m!3162241))

(declare-fun m!3162259 () Bool)

(assert (=> b!2745415 m!3162259))

(declare-fun m!3162261 () Bool)

(assert (=> b!2745412 m!3162261))

(declare-fun m!3162263 () Bool)

(assert (=> b!2745416 m!3162263))

(assert (=> b!2745377 d!795947))

(declare-fun d!795949 () Bool)

(declare-fun c!444837 () Bool)

(assert (=> d!795949 (= c!444837 ((_ is Node!9885) (c!444826 input!1326)))))

(declare-fun e!1729486 () Bool)

(assert (=> d!795949 (= (inv!42958 (c!444826 input!1326)) e!1729486)))

(declare-fun b!2745423 () Bool)

(declare-fun inv!42959 (Conc!9885) Bool)

(assert (=> b!2745423 (= e!1729486 (inv!42959 (c!444826 input!1326)))))

(declare-fun b!2745424 () Bool)

(declare-fun e!1729487 () Bool)

(assert (=> b!2745424 (= e!1729486 e!1729487)))

(declare-fun res!1152202 () Bool)

(assert (=> b!2745424 (= res!1152202 (not ((_ is Leaf!15052) (c!444826 input!1326))))))

(assert (=> b!2745424 (=> res!1152202 e!1729487)))

(declare-fun b!2745425 () Bool)

(declare-fun inv!42960 (Conc!9885) Bool)

(assert (=> b!2745425 (= e!1729487 (inv!42960 (c!444826 input!1326)))))

(assert (= (and d!795949 c!444837) b!2745423))

(assert (= (and d!795949 (not c!444837)) b!2745424))

(assert (= (and b!2745424 (not res!1152202)) b!2745425))

(declare-fun m!3162265 () Bool)

(assert (=> b!2745423 m!3162265))

(declare-fun m!3162267 () Bool)

(assert (=> b!2745425 m!3162267))

(assert (=> b!2745374 d!795949))

(declare-fun d!795951 () Bool)

(assert (=> d!795951 (= (array_inv!4099 (_keys!3907 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) (bvsge (size!24403 (_keys!3907 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745356 d!795951))

(declare-fun d!795953 () Bool)

(assert (=> d!795953 (= (array_inv!4101 (_values!3888 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) (bvsge (size!24404 (_values!3888 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745356 d!795953))

(declare-fun d!795955 () Bool)

(assert (=> d!795955 true))

(declare-fun lt!971574 () Bool)

(declare-fun lambda!100855 () Int)

(declare-fun forall!6579 (List!31712 Int) Bool)

(assert (=> d!795955 (= lt!971574 (forall!6579 rulesArg!249 lambda!100855))))

(declare-fun e!1729493 () Bool)

(assert (=> d!795955 (= lt!971574 e!1729493)))

(declare-fun res!1152207 () Bool)

(assert (=> d!795955 (=> res!1152207 e!1729493)))

(assert (=> d!795955 (= res!1152207 (not ((_ is Cons!31612) rulesArg!249)))))

(assert (=> d!795955 (= (rulesValidInductive!1705 thiss!15207 rulesArg!249) lt!971574)))

(declare-fun b!2745430 () Bool)

(declare-fun e!1729492 () Bool)

(assert (=> b!2745430 (= e!1729493 e!1729492)))

(declare-fun res!1152208 () Bool)

(assert (=> b!2745430 (=> (not res!1152208) (not e!1729492))))

(assert (=> b!2745430 (= res!1152208 (ruleValid!1587 thiss!15207 (h!37032 rulesArg!249)))))

(declare-fun b!2745431 () Bool)

(assert (=> b!2745431 (= e!1729492 (rulesValidInductive!1705 thiss!15207 (t!227800 rulesArg!249)))))

(assert (= (and d!795955 (not res!1152207)) b!2745430))

(assert (= (and b!2745430 res!1152208) b!2745431))

(declare-fun m!3162269 () Bool)

(assert (=> d!795955 m!3162269))

(assert (=> b!2745430 m!3162257))

(declare-fun m!3162271 () Bool)

(assert (=> b!2745431 m!3162271))

(assert (=> b!2745366 d!795955))

(declare-fun d!795957 () Bool)

(declare-fun validCacheMapDown!368 (MutableMap!3513) Bool)

(assert (=> d!795957 (= (valid!2798 cacheDown!646) (validCacheMapDown!368 (cache!3656 cacheDown!646)))))

(declare-fun bs!490266 () Bool)

(assert (= bs!490266 d!795957))

(declare-fun m!3162273 () Bool)

(assert (=> bs!490266 m!3162273))

(assert (=> b!2745357 d!795957))

(declare-fun d!795959 () Bool)

(declare-fun res!1152211 () Bool)

(declare-fun e!1729496 () Bool)

(assert (=> d!795959 (=> (not res!1152211) (not e!1729496))))

(assert (=> d!795959 (= res!1152211 ((_ is HashMap!3513) (cache!3656 cacheDown!646)))))

(assert (=> d!795959 (= (inv!42954 cacheDown!646) e!1729496)))

(declare-fun b!2745436 () Bool)

(assert (=> b!2745436 (= e!1729496 (validCacheMapDown!368 (cache!3656 cacheDown!646)))))

(assert (= (and d!795959 res!1152211) b!2745436))

(assert (=> b!2745436 m!3162273))

(assert (=> start!266124 d!795959))

(declare-fun d!795961 () Bool)

(declare-fun isBalanced!3011 (Conc!9885) Bool)

(assert (=> d!795961 (= (inv!42955 input!1326) (isBalanced!3011 (c!444826 input!1326)))))

(declare-fun bs!490267 () Bool)

(assert (= bs!490267 d!795961))

(declare-fun m!3162275 () Bool)

(assert (=> bs!490267 m!3162275))

(assert (=> start!266124 d!795961))

(declare-fun d!795963 () Bool)

(declare-fun res!1152214 () Bool)

(declare-fun e!1729499 () Bool)

(assert (=> d!795963 (=> (not res!1152214) (not e!1729499))))

(assert (=> d!795963 (= res!1152214 ((_ is HashMap!3514) (cache!3657 cacheUp!633)))))

(assert (=> d!795963 (= (inv!42956 cacheUp!633) e!1729499)))

(declare-fun b!2745439 () Bool)

(assert (=> b!2745439 (= e!1729499 (validCacheMapUp!337 (cache!3657 cacheUp!633)))))

(assert (= (and d!795963 res!1152214) b!2745439))

(assert (=> b!2745439 m!3162209))

(assert (=> start!266124 d!795963))

(declare-fun d!795965 () Bool)

(assert (=> d!795965 (= (array_inv!4099 (_keys!3908 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) (bvsge (size!24403 (_keys!3908 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745354 d!795965))

(declare-fun d!795967 () Bool)

(assert (=> d!795967 (= (array_inv!4100 (_values!3889 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) (bvsge (size!24405 (_values!3889 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745354 d!795967))

(declare-fun b!2745449 () Bool)

(declare-fun res!1152226 () Bool)

(declare-fun e!1729506 () Bool)

(assert (=> b!2745449 (=> (not res!1152226) (not e!1729506))))

(declare-fun head!6113 (List!31708) C!16152)

(assert (=> b!2745449 (= res!1152226 (= (head!6113 lt!971529) (head!6113 lt!971529)))))

(declare-fun d!795969 () Bool)

(declare-fun e!1729507 () Bool)

(assert (=> d!795969 e!1729507))

(declare-fun res!1152224 () Bool)

(assert (=> d!795969 (=> res!1152224 e!1729507)))

(declare-fun lt!971577 () Bool)

(assert (=> d!795969 (= res!1152224 (not lt!971577))))

(declare-fun e!1729508 () Bool)

(assert (=> d!795969 (= lt!971577 e!1729508)))

(declare-fun res!1152223 () Bool)

(assert (=> d!795969 (=> res!1152223 e!1729508)))

(assert (=> d!795969 (= res!1152223 ((_ is Nil!31608) lt!971529))))

(assert (=> d!795969 (= (isPrefix!2516 lt!971529 lt!971529) lt!971577)))

(declare-fun b!2745448 () Bool)

(assert (=> b!2745448 (= e!1729508 e!1729506)))

(declare-fun res!1152225 () Bool)

(assert (=> b!2745448 (=> (not res!1152225) (not e!1729506))))

(assert (=> b!2745448 (= res!1152225 (not ((_ is Nil!31608) lt!971529)))))

(declare-fun b!2745450 () Bool)

(declare-fun tail!4351 (List!31708) List!31708)

(assert (=> b!2745450 (= e!1729506 (isPrefix!2516 (tail!4351 lt!971529) (tail!4351 lt!971529)))))

(declare-fun b!2745451 () Bool)

(assert (=> b!2745451 (= e!1729507 (>= (size!24408 lt!971529) (size!24408 lt!971529)))))

(assert (= (and d!795969 (not res!1152223)) b!2745448))

(assert (= (and b!2745448 res!1152225) b!2745449))

(assert (= (and b!2745449 res!1152226) b!2745450))

(assert (= (and d!795969 (not res!1152224)) b!2745451))

(declare-fun m!3162277 () Bool)

(assert (=> b!2745449 m!3162277))

(assert (=> b!2745449 m!3162277))

(declare-fun m!3162279 () Bool)

(assert (=> b!2745450 m!3162279))

(assert (=> b!2745450 m!3162279))

(assert (=> b!2745450 m!3162279))

(assert (=> b!2745450 m!3162279))

(declare-fun m!3162281 () Bool)

(assert (=> b!2745450 m!3162281))

(declare-fun m!3162283 () Bool)

(assert (=> b!2745451 m!3162283))

(assert (=> b!2745451 m!3162283))

(assert (=> b!2745363 d!795969))

(declare-fun d!795971 () Bool)

(assert (=> d!795971 (isPrefix!2516 lt!971529 lt!971529)))

(declare-fun lt!971580 () Unit!45523)

(declare-fun choose!16066 (List!31708 List!31708) Unit!45523)

(assert (=> d!795971 (= lt!971580 (choose!16066 lt!971529 lt!971529))))

(assert (=> d!795971 (= (lemmaIsPrefixRefl!1642 lt!971529 lt!971529) lt!971580)))

(declare-fun bs!490268 () Bool)

(assert (= bs!490268 d!795971))

(assert (=> bs!490268 m!3162197))

(declare-fun m!3162285 () Bool)

(assert (=> bs!490268 m!3162285))

(assert (=> b!2745363 d!795971))

(declare-fun d!795973 () Bool)

(declare-fun list!11994 (Conc!9885) List!31708)

(assert (=> d!795973 (= (list!11993 input!1326) (list!11994 (c!444826 input!1326)))))

(declare-fun bs!490269 () Bool)

(assert (= bs!490269 d!795973))

(declare-fun m!3162287 () Bool)

(assert (=> bs!490269 m!3162287))

(assert (=> b!2745363 d!795973))

(declare-fun d!795975 () Bool)

(assert (=> d!795975 (= (valid!2798 (_3!2676 lt!971531)) (validCacheMapDown!368 (cache!3656 (_3!2676 lt!971531))))))

(declare-fun bs!490270 () Bool)

(assert (= bs!490270 d!795975))

(declare-fun m!3162289 () Bool)

(assert (=> bs!490270 m!3162289))

(assert (=> b!2745355 d!795975))

(declare-fun d!795977 () Bool)

(assert (=> d!795977 (= (isEmpty!18035 rulesArg!249) ((_ is Nil!31612) rulesArg!249))))

(assert (=> b!2745364 d!795977))

(declare-fun d!795979 () Bool)

(assert (=> d!795979 (= (valid!2797 (_2!18389 lt!971531)) (validCacheMapUp!337 (cache!3657 (_2!18389 lt!971531))))))

(declare-fun bs!490271 () Bool)

(assert (= bs!490271 d!795979))

(declare-fun m!3162291 () Bool)

(assert (=> bs!490271 m!3162291))

(assert (=> b!2745352 d!795979))

(declare-fun d!795981 () Bool)

(assert (=> d!795981 (= (inv!42952 (tag!5346 (h!37032 rulesArg!249))) (= (mod (str.len (value!155597 (tag!5346 (h!37032 rulesArg!249)))) 2) 0))))

(assert (=> b!2745370 d!795981))

(declare-fun d!795983 () Bool)

(declare-fun res!1152229 () Bool)

(declare-fun e!1729511 () Bool)

(assert (=> d!795983 (=> (not res!1152229) (not e!1729511))))

(declare-fun semiInverseModEq!1999 (Int Int) Bool)

(assert (=> d!795983 (= res!1152229 (semiInverseModEq!1999 (toChars!6699 (transformation!4842 (h!37032 rulesArg!249))) (toValue!6840 (transformation!4842 (h!37032 rulesArg!249)))))))

(assert (=> d!795983 (= (inv!42957 (transformation!4842 (h!37032 rulesArg!249))) e!1729511)))

(declare-fun b!2745454 () Bool)

(declare-fun equivClasses!1900 (Int Int) Bool)

(assert (=> b!2745454 (= e!1729511 (equivClasses!1900 (toChars!6699 (transformation!4842 (h!37032 rulesArg!249))) (toValue!6840 (transformation!4842 (h!37032 rulesArg!249)))))))

(assert (= (and d!795983 res!1152229) b!2745454))

(declare-fun m!3162293 () Bool)

(assert (=> d!795983 m!3162293))

(declare-fun m!3162295 () Bool)

(assert (=> b!2745454 m!3162295))

(assert (=> b!2745370 d!795983))

(declare-fun setIsEmpty!21621 () Bool)

(declare-fun setRes!21621 () Bool)

(assert (=> setIsEmpty!21621 setRes!21621))

(declare-fun e!1729520 () Bool)

(assert (=> b!2745362 (= tp!864412 e!1729520)))

(declare-fun b!2745463 () Bool)

(declare-fun e!1729518 () Bool)

(declare-fun tp!864431 () Bool)

(assert (=> b!2745463 (= e!1729518 tp!864431)))

(declare-fun tp!864430 () Bool)

(declare-fun setNonEmpty!21621 () Bool)

(declare-fun setElem!21621 () Context!4430)

(declare-fun inv!42961 (Context!4430) Bool)

(assert (=> setNonEmpty!21621 (= setRes!21621 (and tp!864430 (inv!42961 setElem!21621) e!1729518))))

(declare-fun setRest!21621 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21621 (= (_2!18387 (h!37031 mapDefault!16452)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21621 true) setRest!21621))))

(declare-fun b!2745464 () Bool)

(declare-fun tp!864429 () Bool)

(declare-fun e!1729519 () Bool)

(declare-fun tp!864427 () Bool)

(declare-fun tp_is_empty!13929 () Bool)

(assert (=> b!2745464 (= e!1729520 (and tp!864429 (inv!42961 (_2!18386 (_1!18387 (h!37031 mapDefault!16452)))) e!1729519 tp_is_empty!13929 setRes!21621 tp!864427))))

(declare-fun condSetEmpty!21621 () Bool)

(assert (=> b!2745464 (= condSetEmpty!21621 (= (_2!18387 (h!37031 mapDefault!16452)) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745465 () Bool)

(declare-fun tp!864428 () Bool)

(assert (=> b!2745465 (= e!1729519 tp!864428)))

(assert (= b!2745464 b!2745465))

(assert (= (and b!2745464 condSetEmpty!21621) setIsEmpty!21621))

(assert (= (and b!2745464 (not condSetEmpty!21621)) setNonEmpty!21621))

(assert (= setNonEmpty!21621 b!2745463))

(assert (= (and b!2745362 ((_ is Cons!31611) mapDefault!16452)) b!2745464))

(declare-fun m!3162297 () Bool)

(assert (=> setNonEmpty!21621 m!3162297))

(declare-fun m!3162299 () Bool)

(assert (=> b!2745464 m!3162299))

(declare-fun setIsEmpty!21622 () Bool)

(declare-fun setRes!21622 () Bool)

(assert (=> setIsEmpty!21622 setRes!21622))

(declare-fun e!1729523 () Bool)

(assert (=> b!2745354 (= tp!864408 e!1729523)))

(declare-fun b!2745466 () Bool)

(declare-fun e!1729521 () Bool)

(declare-fun tp!864436 () Bool)

(assert (=> b!2745466 (= e!1729521 tp!864436)))

(declare-fun setNonEmpty!21622 () Bool)

(declare-fun setElem!21622 () Context!4430)

(declare-fun tp!864435 () Bool)

(assert (=> setNonEmpty!21622 (= setRes!21622 (and tp!864435 (inv!42961 setElem!21622) e!1729521))))

(declare-fun setRest!21622 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21622 (= (_2!18387 (h!37031 (zeroValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21622 true) setRest!21622))))

(declare-fun e!1729522 () Bool)

(declare-fun b!2745467 () Bool)

(declare-fun tp!864434 () Bool)

(declare-fun tp!864432 () Bool)

(assert (=> b!2745467 (= e!1729523 (and tp!864434 (inv!42961 (_2!18386 (_1!18387 (h!37031 (zeroValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))))) e!1729522 tp_is_empty!13929 setRes!21622 tp!864432))))

(declare-fun condSetEmpty!21622 () Bool)

(assert (=> b!2745467 (= condSetEmpty!21622 (= (_2!18387 (h!37031 (zeroValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745468 () Bool)

(declare-fun tp!864433 () Bool)

(assert (=> b!2745468 (= e!1729522 tp!864433)))

(assert (= b!2745467 b!2745468))

(assert (= (and b!2745467 condSetEmpty!21622) setIsEmpty!21622))

(assert (= (and b!2745467 (not condSetEmpty!21622)) setNonEmpty!21622))

(assert (= setNonEmpty!21622 b!2745466))

(assert (= (and b!2745354 ((_ is Cons!31611) (zeroValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))) b!2745467))

(declare-fun m!3162301 () Bool)

(assert (=> setNonEmpty!21622 m!3162301))

(declare-fun m!3162303 () Bool)

(assert (=> b!2745467 m!3162303))

(declare-fun setIsEmpty!21623 () Bool)

(declare-fun setRes!21623 () Bool)

(assert (=> setIsEmpty!21623 setRes!21623))

(declare-fun e!1729526 () Bool)

(assert (=> b!2745354 (= tp!864400 e!1729526)))

(declare-fun b!2745469 () Bool)

(declare-fun e!1729524 () Bool)

(declare-fun tp!864441 () Bool)

(assert (=> b!2745469 (= e!1729524 tp!864441)))

(declare-fun setElem!21623 () Context!4430)

(declare-fun tp!864440 () Bool)

(declare-fun setNonEmpty!21623 () Bool)

(assert (=> setNonEmpty!21623 (= setRes!21623 (and tp!864440 (inv!42961 setElem!21623) e!1729524))))

(declare-fun setRest!21623 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21623 (= (_2!18387 (h!37031 (minValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21623 true) setRest!21623))))

(declare-fun b!2745470 () Bool)

(declare-fun e!1729525 () Bool)

(declare-fun tp!864439 () Bool)

(declare-fun tp!864437 () Bool)

(assert (=> b!2745470 (= e!1729526 (and tp!864439 (inv!42961 (_2!18386 (_1!18387 (h!37031 (minValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))))) e!1729525 tp_is_empty!13929 setRes!21623 tp!864437))))

(declare-fun condSetEmpty!21623 () Bool)

(assert (=> b!2745470 (= condSetEmpty!21623 (= (_2!18387 (h!37031 (minValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745471 () Bool)

(declare-fun tp!864438 () Bool)

(assert (=> b!2745471 (= e!1729525 tp!864438)))

(assert (= b!2745470 b!2745471))

(assert (= (and b!2745470 condSetEmpty!21623) setIsEmpty!21623))

(assert (= (and b!2745470 (not condSetEmpty!21623)) setNonEmpty!21623))

(assert (= setNonEmpty!21623 b!2745469))

(assert (= (and b!2745354 ((_ is Cons!31611) (minValue!3867 (v!33243 (underlying!7418 (v!33244 (underlying!7419 (cache!3656 cacheDown!646)))))))) b!2745470))

(declare-fun m!3162305 () Bool)

(assert (=> setNonEmpty!21623 m!3162305))

(declare-fun m!3162307 () Bool)

(assert (=> b!2745470 m!3162307))

(declare-fun b!2745482 () Bool)

(declare-fun b_free!77305 () Bool)

(declare-fun b_next!78009 () Bool)

(assert (=> b!2745482 (= b_free!77305 (not b_next!78009))))

(declare-fun tp!864451 () Bool)

(declare-fun b_and!202025 () Bool)

(assert (=> b!2745482 (= tp!864451 b_and!202025)))

(declare-fun b_free!77307 () Bool)

(declare-fun b_next!78011 () Bool)

(assert (=> b!2745482 (= b_free!77307 (not b_next!78011))))

(declare-fun tp!864453 () Bool)

(declare-fun b_and!202027 () Bool)

(assert (=> b!2745482 (= tp!864453 b_and!202027)))

(declare-fun e!1729536 () Bool)

(assert (=> b!2745482 (= e!1729536 (and tp!864451 tp!864453))))

(declare-fun tp!864450 () Bool)

(declare-fun b!2745481 () Bool)

(declare-fun e!1729537 () Bool)

(assert (=> b!2745481 (= e!1729537 (and tp!864450 (inv!42952 (tag!5346 (h!37032 (t!227800 rulesArg!249)))) (inv!42957 (transformation!4842 (h!37032 (t!227800 rulesArg!249)))) e!1729536))))

(declare-fun b!2745480 () Bool)

(declare-fun e!1729535 () Bool)

(declare-fun tp!864452 () Bool)

(assert (=> b!2745480 (= e!1729535 (and e!1729537 tp!864452))))

(assert (=> b!2745368 (= tp!864415 e!1729535)))

(assert (= b!2745481 b!2745482))

(assert (= b!2745480 b!2745481))

(assert (= (and b!2745368 ((_ is Cons!31612) (t!227800 rulesArg!249))) b!2745480))

(declare-fun m!3162309 () Bool)

(assert (=> b!2745481 m!3162309))

(declare-fun m!3162311 () Bool)

(assert (=> b!2745481 m!3162311))

(declare-fun tp!864463 () Bool)

(declare-fun e!1729547 () Bool)

(declare-fun e!1729545 () Bool)

(declare-fun setRes!21626 () Bool)

(declare-fun b!2745491 () Bool)

(assert (=> b!2745491 (= e!1729545 (and (inv!42961 (_1!18384 (_1!18385 (h!37030 mapDefault!16451)))) e!1729547 tp_is_empty!13929 setRes!21626 tp!864463))))

(declare-fun condSetEmpty!21626 () Bool)

(assert (=> b!2745491 (= condSetEmpty!21626 (= (_2!18385 (h!37030 mapDefault!16451)) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745492 () Bool)

(declare-fun tp!864465 () Bool)

(assert (=> b!2745492 (= e!1729547 tp!864465)))

(declare-fun b!2745493 () Bool)

(declare-fun e!1729546 () Bool)

(declare-fun tp!864462 () Bool)

(assert (=> b!2745493 (= e!1729546 tp!864462)))

(declare-fun setIsEmpty!21626 () Bool)

(assert (=> setIsEmpty!21626 setRes!21626))

(declare-fun tp!864464 () Bool)

(declare-fun setNonEmpty!21626 () Bool)

(declare-fun setElem!21626 () Context!4430)

(assert (=> setNonEmpty!21626 (= setRes!21626 (and tp!864464 (inv!42961 setElem!21626) e!1729546))))

(declare-fun setRest!21626 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21626 (= (_2!18385 (h!37030 mapDefault!16451)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21626 true) setRest!21626))))

(assert (=> b!2745373 (= tp!864414 e!1729545)))

(assert (= b!2745491 b!2745492))

(assert (= (and b!2745491 condSetEmpty!21626) setIsEmpty!21626))

(assert (= (and b!2745491 (not condSetEmpty!21626)) setNonEmpty!21626))

(assert (= setNonEmpty!21626 b!2745493))

(assert (= (and b!2745373 ((_ is Cons!31610) mapDefault!16451)) b!2745491))

(declare-fun m!3162313 () Bool)

(assert (=> b!2745491 m!3162313))

(declare-fun m!3162315 () Bool)

(assert (=> setNonEmpty!21626 m!3162315))

(declare-fun b!2745508 () Bool)

(declare-fun e!1729563 () Bool)

(declare-fun setRes!21631 () Bool)

(declare-fun e!1729562 () Bool)

(declare-fun mapDefault!16455 () List!31710)

(declare-fun tp!864487 () Bool)

(assert (=> b!2745508 (= e!1729563 (and (inv!42961 (_1!18384 (_1!18385 (h!37030 mapDefault!16455)))) e!1729562 tp_is_empty!13929 setRes!21631 tp!864487))))

(declare-fun condSetEmpty!21631 () Bool)

(assert (=> b!2745508 (= condSetEmpty!21631 (= (_2!18385 (h!37030 mapDefault!16455)) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun mapNonEmpty!16455 () Bool)

(declare-fun mapRes!16455 () Bool)

(declare-fun tp!864490 () Bool)

(declare-fun e!1729561 () Bool)

(assert (=> mapNonEmpty!16455 (= mapRes!16455 (and tp!864490 e!1729561))))

(declare-fun mapRest!16455 () (Array (_ BitVec 32) List!31710))

(declare-fun mapValue!16455 () List!31710)

(declare-fun mapKey!16455 () (_ BitVec 32))

(assert (=> mapNonEmpty!16455 (= mapRest!16451 (store mapRest!16455 mapKey!16455 mapValue!16455))))

(declare-fun setElem!21631 () Context!4430)

(declare-fun setRes!21632 () Bool)

(declare-fun setNonEmpty!21631 () Bool)

(declare-fun e!1729564 () Bool)

(declare-fun tp!864485 () Bool)

(assert (=> setNonEmpty!21631 (= setRes!21632 (and tp!864485 (inv!42961 setElem!21631) e!1729564))))

(declare-fun setRest!21631 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21631 (= (_2!18385 (h!37030 mapValue!16455)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21631 true) setRest!21631))))

(declare-fun setIsEmpty!21631 () Bool)

(assert (=> setIsEmpty!21631 setRes!21631))

(declare-fun b!2745509 () Bool)

(declare-fun tp!864484 () Bool)

(assert (=> b!2745509 (= e!1729564 tp!864484)))

(declare-fun e!1729565 () Bool)

(declare-fun tp!864486 () Bool)

(declare-fun b!2745510 () Bool)

(assert (=> b!2745510 (= e!1729561 (and (inv!42961 (_1!18384 (_1!18385 (h!37030 mapValue!16455)))) e!1729565 tp_is_empty!13929 setRes!21632 tp!864486))))

(declare-fun condSetEmpty!21632 () Bool)

(assert (=> b!2745510 (= condSetEmpty!21632 (= (_2!18385 (h!37030 mapValue!16455)) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745511 () Bool)

(declare-fun tp!864491 () Bool)

(assert (=> b!2745511 (= e!1729562 tp!864491)))

(declare-fun setNonEmpty!21632 () Bool)

(declare-fun e!1729560 () Bool)

(declare-fun tp!864489 () Bool)

(declare-fun setElem!21632 () Context!4430)

(assert (=> setNonEmpty!21632 (= setRes!21631 (and tp!864489 (inv!42961 setElem!21632) e!1729560))))

(declare-fun setRest!21632 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21632 (= (_2!18385 (h!37030 mapDefault!16455)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21632 true) setRest!21632))))

(declare-fun b!2745512 () Bool)

(declare-fun tp!864488 () Bool)

(assert (=> b!2745512 (= e!1729565 tp!864488)))

(declare-fun mapIsEmpty!16455 () Bool)

(assert (=> mapIsEmpty!16455 mapRes!16455))

(declare-fun condMapEmpty!16455 () Bool)

(assert (=> mapNonEmpty!16451 (= condMapEmpty!16455 (= mapRest!16451 ((as const (Array (_ BitVec 32) List!31710)) mapDefault!16455)))))

(assert (=> mapNonEmpty!16451 (= tp!864404 (and e!1729563 mapRes!16455))))

(declare-fun setIsEmpty!21632 () Bool)

(assert (=> setIsEmpty!21632 setRes!21632))

(declare-fun b!2745513 () Bool)

(declare-fun tp!864492 () Bool)

(assert (=> b!2745513 (= e!1729560 tp!864492)))

(assert (= (and mapNonEmpty!16451 condMapEmpty!16455) mapIsEmpty!16455))

(assert (= (and mapNonEmpty!16451 (not condMapEmpty!16455)) mapNonEmpty!16455))

(assert (= b!2745510 b!2745512))

(assert (= (and b!2745510 condSetEmpty!21632) setIsEmpty!21632))

(assert (= (and b!2745510 (not condSetEmpty!21632)) setNonEmpty!21631))

(assert (= setNonEmpty!21631 b!2745509))

(assert (= (and mapNonEmpty!16455 ((_ is Cons!31610) mapValue!16455)) b!2745510))

(assert (= b!2745508 b!2745511))

(assert (= (and b!2745508 condSetEmpty!21631) setIsEmpty!21631))

(assert (= (and b!2745508 (not condSetEmpty!21631)) setNonEmpty!21632))

(assert (= setNonEmpty!21632 b!2745513))

(assert (= (and mapNonEmpty!16451 ((_ is Cons!31610) mapDefault!16455)) b!2745508))

(declare-fun m!3162317 () Bool)

(assert (=> b!2745510 m!3162317))

(declare-fun m!3162319 () Bool)

(assert (=> setNonEmpty!21631 m!3162319))

(declare-fun m!3162321 () Bool)

(assert (=> b!2745508 m!3162321))

(declare-fun m!3162323 () Bool)

(assert (=> setNonEmpty!21632 m!3162323))

(declare-fun m!3162325 () Bool)

(assert (=> mapNonEmpty!16455 m!3162325))

(declare-fun e!1729568 () Bool)

(declare-fun tp!864494 () Bool)

(declare-fun b!2745514 () Bool)

(declare-fun e!1729566 () Bool)

(declare-fun setRes!21633 () Bool)

(assert (=> b!2745514 (= e!1729566 (and (inv!42961 (_1!18384 (_1!18385 (h!37030 mapValue!16452)))) e!1729568 tp_is_empty!13929 setRes!21633 tp!864494))))

(declare-fun condSetEmpty!21633 () Bool)

(assert (=> b!2745514 (= condSetEmpty!21633 (= (_2!18385 (h!37030 mapValue!16452)) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745515 () Bool)

(declare-fun tp!864496 () Bool)

(assert (=> b!2745515 (= e!1729568 tp!864496)))

(declare-fun b!2745516 () Bool)

(declare-fun e!1729567 () Bool)

(declare-fun tp!864493 () Bool)

(assert (=> b!2745516 (= e!1729567 tp!864493)))

(declare-fun setIsEmpty!21633 () Bool)

(assert (=> setIsEmpty!21633 setRes!21633))

(declare-fun tp!864495 () Bool)

(declare-fun setNonEmpty!21633 () Bool)

(declare-fun setElem!21633 () Context!4430)

(assert (=> setNonEmpty!21633 (= setRes!21633 (and tp!864495 (inv!42961 setElem!21633) e!1729567))))

(declare-fun setRest!21633 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21633 (= (_2!18385 (h!37030 mapValue!16452)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21633 true) setRest!21633))))

(assert (=> mapNonEmpty!16451 (= tp!864398 e!1729566)))

(assert (= b!2745514 b!2745515))

(assert (= (and b!2745514 condSetEmpty!21633) setIsEmpty!21633))

(assert (= (and b!2745514 (not condSetEmpty!21633)) setNonEmpty!21633))

(assert (= setNonEmpty!21633 b!2745516))

(assert (= (and mapNonEmpty!16451 ((_ is Cons!31610) mapValue!16452)) b!2745514))

(declare-fun m!3162327 () Bool)

(assert (=> b!2745514 m!3162327))

(declare-fun m!3162329 () Bool)

(assert (=> setNonEmpty!21633 m!3162329))

(declare-fun b!2745525 () Bool)

(declare-fun e!1729573 () Bool)

(declare-fun tp!864504 () Bool)

(declare-fun tp!864505 () Bool)

(assert (=> b!2745525 (= e!1729573 (and (inv!42958 (left!24231 (c!444826 input!1326))) tp!864505 (inv!42958 (right!24561 (c!444826 input!1326))) tp!864504))))

(declare-fun b!2745527 () Bool)

(declare-fun e!1729574 () Bool)

(declare-fun tp!864503 () Bool)

(assert (=> b!2745527 (= e!1729574 tp!864503)))

(declare-fun b!2745526 () Bool)

(declare-fun inv!42962 (IArray!19775) Bool)

(assert (=> b!2745526 (= e!1729573 (and (inv!42962 (xs!12992 (c!444826 input!1326))) e!1729574))))

(assert (=> b!2745374 (= tp!864403 (and (inv!42958 (c!444826 input!1326)) e!1729573))))

(assert (= (and b!2745374 ((_ is Node!9885) (c!444826 input!1326))) b!2745525))

(assert (= b!2745526 b!2745527))

(assert (= (and b!2745374 ((_ is Leaf!15052) (c!444826 input!1326))) b!2745526))

(declare-fun m!3162331 () Bool)

(assert (=> b!2745525 m!3162331))

(declare-fun m!3162333 () Bool)

(assert (=> b!2745525 m!3162333))

(declare-fun m!3162335 () Bool)

(assert (=> b!2745526 m!3162335))

(assert (=> b!2745374 m!3162167))

(declare-fun setRes!21634 () Bool)

(declare-fun e!1729577 () Bool)

(declare-fun tp!864507 () Bool)

(declare-fun e!1729575 () Bool)

(declare-fun b!2745528 () Bool)

(assert (=> b!2745528 (= e!1729575 (and (inv!42961 (_1!18384 (_1!18385 (h!37030 (zeroValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))))) e!1729577 tp_is_empty!13929 setRes!21634 tp!864507))))

(declare-fun condSetEmpty!21634 () Bool)

(assert (=> b!2745528 (= condSetEmpty!21634 (= (_2!18385 (h!37030 (zeroValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745529 () Bool)

(declare-fun tp!864509 () Bool)

(assert (=> b!2745529 (= e!1729577 tp!864509)))

(declare-fun b!2745530 () Bool)

(declare-fun e!1729576 () Bool)

(declare-fun tp!864506 () Bool)

(assert (=> b!2745530 (= e!1729576 tp!864506)))

(declare-fun setIsEmpty!21634 () Bool)

(assert (=> setIsEmpty!21634 setRes!21634))

(declare-fun setNonEmpty!21634 () Bool)

(declare-fun setElem!21634 () Context!4430)

(declare-fun tp!864508 () Bool)

(assert (=> setNonEmpty!21634 (= setRes!21634 (and tp!864508 (inv!42961 setElem!21634) e!1729576))))

(declare-fun setRest!21634 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21634 (= (_2!18385 (h!37030 (zeroValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21634 true) setRest!21634))))

(assert (=> b!2745356 (= tp!864405 e!1729575)))

(assert (= b!2745528 b!2745529))

(assert (= (and b!2745528 condSetEmpty!21634) setIsEmpty!21634))

(assert (= (and b!2745528 (not condSetEmpty!21634)) setNonEmpty!21634))

(assert (= setNonEmpty!21634 b!2745530))

(assert (= (and b!2745356 ((_ is Cons!31610) (zeroValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))) b!2745528))

(declare-fun m!3162337 () Bool)

(assert (=> b!2745528 m!3162337))

(declare-fun m!3162339 () Bool)

(assert (=> setNonEmpty!21634 m!3162339))

(declare-fun e!1729578 () Bool)

(declare-fun b!2745531 () Bool)

(declare-fun e!1729580 () Bool)

(declare-fun setRes!21635 () Bool)

(declare-fun tp!864511 () Bool)

(assert (=> b!2745531 (= e!1729578 (and (inv!42961 (_1!18384 (_1!18385 (h!37030 (minValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))))) e!1729580 tp_is_empty!13929 setRes!21635 tp!864511))))

(declare-fun condSetEmpty!21635 () Bool)

(assert (=> b!2745531 (= condSetEmpty!21635 (= (_2!18385 (h!37030 (minValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745532 () Bool)

(declare-fun tp!864513 () Bool)

(assert (=> b!2745532 (= e!1729580 tp!864513)))

(declare-fun b!2745533 () Bool)

(declare-fun e!1729579 () Bool)

(declare-fun tp!864510 () Bool)

(assert (=> b!2745533 (= e!1729579 tp!864510)))

(declare-fun setIsEmpty!21635 () Bool)

(assert (=> setIsEmpty!21635 setRes!21635))

(declare-fun tp!864512 () Bool)

(declare-fun setElem!21635 () Context!4430)

(declare-fun setNonEmpty!21635 () Bool)

(assert (=> setNonEmpty!21635 (= setRes!21635 (and tp!864512 (inv!42961 setElem!21635) e!1729579))))

(declare-fun setRest!21635 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21635 (= (_2!18385 (h!37030 (minValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21635 true) setRest!21635))))

(assert (=> b!2745356 (= tp!864406 e!1729578)))

(assert (= b!2745531 b!2745532))

(assert (= (and b!2745531 condSetEmpty!21635) setIsEmpty!21635))

(assert (= (and b!2745531 (not condSetEmpty!21635)) setNonEmpty!21635))

(assert (= setNonEmpty!21635 b!2745533))

(assert (= (and b!2745356 ((_ is Cons!31610) (minValue!3866 (v!33241 (underlying!7417 (v!33242 (underlying!7420 (cache!3657 cacheUp!633)))))))) b!2745531))

(declare-fun m!3162341 () Bool)

(assert (=> b!2745531 m!3162341))

(declare-fun m!3162343 () Bool)

(assert (=> setNonEmpty!21635 m!3162343))

(declare-fun b!2745548 () Bool)

(declare-fun e!1729596 () Bool)

(declare-fun tp!864546 () Bool)

(assert (=> b!2745548 (= e!1729596 tp!864546)))

(declare-fun setIsEmpty!21640 () Bool)

(declare-fun setRes!21640 () Bool)

(assert (=> setIsEmpty!21640 setRes!21640))

(declare-fun b!2745549 () Bool)

(declare-fun e!1729597 () Bool)

(declare-fun tp!864537 () Bool)

(assert (=> b!2745549 (= e!1729597 tp!864537)))

(declare-fun condMapEmpty!16458 () Bool)

(declare-fun mapDefault!16458 () List!31711)

(assert (=> mapNonEmpty!16452 (= condMapEmpty!16458 (= mapRest!16452 ((as const (Array (_ BitVec 32) List!31711)) mapDefault!16458)))))

(declare-fun e!1729594 () Bool)

(declare-fun mapRes!16458 () Bool)

(assert (=> mapNonEmpty!16452 (= tp!864399 (and e!1729594 mapRes!16458))))

(declare-fun tp!864538 () Bool)

(declare-fun setElem!21640 () Context!4430)

(declare-fun setNonEmpty!21640 () Bool)

(declare-fun e!1729598 () Bool)

(declare-fun setRes!21641 () Bool)

(assert (=> setNonEmpty!21640 (= setRes!21641 (and tp!864538 (inv!42961 setElem!21640) e!1729598))))

(declare-fun mapValue!16458 () List!31711)

(declare-fun setRest!21641 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21640 (= (_2!18387 (h!37031 mapValue!16458)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21640 true) setRest!21641))))

(declare-fun setIsEmpty!21641 () Bool)

(assert (=> setIsEmpty!21641 setRes!21641))

(declare-fun mapNonEmpty!16458 () Bool)

(declare-fun tp!864545 () Bool)

(declare-fun e!1729593 () Bool)

(assert (=> mapNonEmpty!16458 (= mapRes!16458 (and tp!864545 e!1729593))))

(declare-fun mapKey!16458 () (_ BitVec 32))

(declare-fun mapRest!16458 () (Array (_ BitVec 32) List!31711))

(assert (=> mapNonEmpty!16458 (= mapRest!16452 (store mapRest!16458 mapKey!16458 mapValue!16458))))

(declare-fun e!1729595 () Bool)

(declare-fun tp!864544 () Bool)

(declare-fun b!2745550 () Bool)

(declare-fun tp!864542 () Bool)

(assert (=> b!2745550 (= e!1729594 (and tp!864544 (inv!42961 (_2!18386 (_1!18387 (h!37031 mapDefault!16458)))) e!1729595 tp_is_empty!13929 setRes!21640 tp!864542))))

(declare-fun condSetEmpty!21641 () Bool)

(assert (=> b!2745550 (= condSetEmpty!21641 (= (_2!18387 (h!37031 mapDefault!16458)) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745551 () Bool)

(declare-fun tp!864541 () Bool)

(assert (=> b!2745551 (= e!1729598 tp!864541)))

(declare-fun setNonEmpty!21641 () Bool)

(declare-fun tp!864536 () Bool)

(declare-fun setElem!21641 () Context!4430)

(assert (=> setNonEmpty!21641 (= setRes!21640 (and tp!864536 (inv!42961 setElem!21641) e!1729597))))

(declare-fun setRest!21640 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21641 (= (_2!18387 (h!37031 mapDefault!16458)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21641 true) setRest!21640))))

(declare-fun b!2745552 () Bool)

(declare-fun tp!864539 () Bool)

(assert (=> b!2745552 (= e!1729595 tp!864539)))

(declare-fun mapIsEmpty!16458 () Bool)

(assert (=> mapIsEmpty!16458 mapRes!16458))

(declare-fun b!2745553 () Bool)

(declare-fun tp!864540 () Bool)

(declare-fun tp!864543 () Bool)

(assert (=> b!2745553 (= e!1729593 (and tp!864543 (inv!42961 (_2!18386 (_1!18387 (h!37031 mapValue!16458)))) e!1729596 tp_is_empty!13929 setRes!21641 tp!864540))))

(declare-fun condSetEmpty!21640 () Bool)

(assert (=> b!2745553 (= condSetEmpty!21640 (= (_2!18387 (h!37031 mapValue!16458)) ((as const (Array Context!4430 Bool)) false)))))

(assert (= (and mapNonEmpty!16452 condMapEmpty!16458) mapIsEmpty!16458))

(assert (= (and mapNonEmpty!16452 (not condMapEmpty!16458)) mapNonEmpty!16458))

(assert (= b!2745553 b!2745548))

(assert (= (and b!2745553 condSetEmpty!21640) setIsEmpty!21641))

(assert (= (and b!2745553 (not condSetEmpty!21640)) setNonEmpty!21640))

(assert (= setNonEmpty!21640 b!2745551))

(assert (= (and mapNonEmpty!16458 ((_ is Cons!31611) mapValue!16458)) b!2745553))

(assert (= b!2745550 b!2745552))

(assert (= (and b!2745550 condSetEmpty!21641) setIsEmpty!21640))

(assert (= (and b!2745550 (not condSetEmpty!21641)) setNonEmpty!21641))

(assert (= setNonEmpty!21641 b!2745549))

(assert (= (and mapNonEmpty!16452 ((_ is Cons!31611) mapDefault!16458)) b!2745550))

(declare-fun m!3162345 () Bool)

(assert (=> b!2745550 m!3162345))

(declare-fun m!3162347 () Bool)

(assert (=> setNonEmpty!21640 m!3162347))

(declare-fun m!3162349 () Bool)

(assert (=> mapNonEmpty!16458 m!3162349))

(declare-fun m!3162351 () Bool)

(assert (=> setNonEmpty!21641 m!3162351))

(declare-fun m!3162353 () Bool)

(assert (=> b!2745553 m!3162353))

(declare-fun setIsEmpty!21642 () Bool)

(declare-fun setRes!21642 () Bool)

(assert (=> setIsEmpty!21642 setRes!21642))

(declare-fun e!1729601 () Bool)

(assert (=> mapNonEmpty!16452 (= tp!864401 e!1729601)))

(declare-fun b!2745554 () Bool)

(declare-fun e!1729599 () Bool)

(declare-fun tp!864551 () Bool)

(assert (=> b!2745554 (= e!1729599 tp!864551)))

(declare-fun tp!864550 () Bool)

(declare-fun setNonEmpty!21642 () Bool)

(declare-fun setElem!21642 () Context!4430)

(assert (=> setNonEmpty!21642 (= setRes!21642 (and tp!864550 (inv!42961 setElem!21642) e!1729599))))

(declare-fun setRest!21642 () (InoxSet Context!4430))

(assert (=> setNonEmpty!21642 (= (_2!18387 (h!37031 mapValue!16451)) ((_ map or) (store ((as const (Array Context!4430 Bool)) false) setElem!21642 true) setRest!21642))))

(declare-fun tp!864549 () Bool)

(declare-fun e!1729600 () Bool)

(declare-fun tp!864547 () Bool)

(declare-fun b!2745555 () Bool)

(assert (=> b!2745555 (= e!1729601 (and tp!864549 (inv!42961 (_2!18386 (_1!18387 (h!37031 mapValue!16451)))) e!1729600 tp_is_empty!13929 setRes!21642 tp!864547))))

(declare-fun condSetEmpty!21642 () Bool)

(assert (=> b!2745555 (= condSetEmpty!21642 (= (_2!18387 (h!37031 mapValue!16451)) ((as const (Array Context!4430 Bool)) false)))))

(declare-fun b!2745556 () Bool)

(declare-fun tp!864548 () Bool)

(assert (=> b!2745556 (= e!1729600 tp!864548)))

(assert (= b!2745555 b!2745556))

(assert (= (and b!2745555 condSetEmpty!21642) setIsEmpty!21642))

(assert (= (and b!2745555 (not condSetEmpty!21642)) setNonEmpty!21642))

(assert (= setNonEmpty!21642 b!2745554))

(assert (= (and mapNonEmpty!16452 ((_ is Cons!31611) mapValue!16451)) b!2745555))

(declare-fun m!3162355 () Bool)

(assert (=> setNonEmpty!21642 m!3162355))

(declare-fun m!3162357 () Bool)

(assert (=> b!2745555 m!3162357))

(declare-fun b!2745568 () Bool)

(declare-fun e!1729604 () Bool)

(declare-fun tp!864566 () Bool)

(declare-fun tp!864564 () Bool)

(assert (=> b!2745568 (= e!1729604 (and tp!864566 tp!864564))))

(assert (=> b!2745370 (= tp!864407 e!1729604)))

(declare-fun b!2745569 () Bool)

(declare-fun tp!864563 () Bool)

(assert (=> b!2745569 (= e!1729604 tp!864563)))

(declare-fun b!2745567 () Bool)

(assert (=> b!2745567 (= e!1729604 tp_is_empty!13929)))

(declare-fun b!2745570 () Bool)

(declare-fun tp!864562 () Bool)

(declare-fun tp!864565 () Bool)

(assert (=> b!2745570 (= e!1729604 (and tp!864562 tp!864565))))

(assert (= (and b!2745370 ((_ is ElementMatch!7997) (regex!4842 (h!37032 rulesArg!249)))) b!2745567))

(assert (= (and b!2745370 ((_ is Concat!13062) (regex!4842 (h!37032 rulesArg!249)))) b!2745568))

(assert (= (and b!2745370 ((_ is Star!7997) (regex!4842 (h!37032 rulesArg!249)))) b!2745569))

(assert (= (and b!2745370 ((_ is Union!7997) (regex!4842 (h!37032 rulesArg!249)))) b!2745570))

(check-sat (not b!2745463) (not b!2745508) (not d!795955) (not b_next!78007) (not b!2745533) (not b!2745431) (not b!2745513) (not setNonEmpty!21642) (not b!2745491) (not b!2745552) (not b!2745554) (not b!2745528) (not b!2745526) (not b!2745415) (not b!2745423) (not b!2745515) (not b_next!78011) (not b!2745439) (not b!2745549) (not d!795973) (not b!2745532) (not b!2745511) (not b!2745509) (not b!2745550) b_and!202015 (not b!2745529) (not setNonEmpty!21623) (not setNonEmpty!21641) (not d!795945) (not setNonEmpty!21635) (not b!2745416) (not mapNonEmpty!16455) (not b!2745398) (not setNonEmpty!21640) (not b!2745492) (not mapNonEmpty!16458) (not b!2745516) (not b_next!78001) (not b!2745412) (not b!2745470) (not d!795957) b_and!202021 b_and!202017 (not d!795943) b_and!202013 b_and!202025 (not setNonEmpty!21622) (not setNonEmpty!21632) b_and!202023 (not d!795979) (not setNonEmpty!21621) (not b!2745569) (not b!2745451) (not b!2745450) (not b!2745570) (not b!2745464) (not b_next!78003) (not setNonEmpty!21634) (not b!2745468) (not setNonEmpty!21631) (not b!2745525) (not d!795961) (not b!2745396) (not b!2745548) (not b!2745395) (not b!2745555) (not b!2745493) (not b!2745425) (not b!2745466) (not b_next!78009) (not b!2745400) (not b!2745401) (not setNonEmpty!21626) (not b_next!77999) b_and!202019 (not b!2745436) (not b!2745551) (not b!2745481) (not b!2745553) (not b!2745531) (not b!2745454) (not b!2745397) (not d!795975) tp_is_empty!13929 (not b!2745414) (not d!795947) (not b_next!77997) (not b_next!78005) (not b!2745568) (not bm!177410) (not b!2745527) (not b!2745399) (not d!795971) b_and!202027 (not b!2745467) (not b!2745374) (not b!2745469) (not b!2745471) (not b!2745449) (not b!2745430) (not b!2745512) (not b!2745556) (not b!2745465) (not b!2745480) (not setNonEmpty!21633) (not d!795983) (not b!2745514) (not b!2745510) (not b!2745530))
(check-sat (not b_next!78011) b_and!202015 (not b_next!78001) b_and!202023 (not b_next!78003) (not b_next!78007) (not b_next!78009) b_and!202027 b_and!202021 b_and!202017 b_and!202013 b_and!202025 (not b_next!77999) b_and!202019 (not b_next!78005) (not b_next!77997))
