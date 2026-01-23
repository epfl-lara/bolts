; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411548 () Bool)

(assert start!411548)

(declare-fun b!4283225 () Bool)

(declare-fun b_free!126779 () Bool)

(declare-fun b_next!127483 () Bool)

(assert (=> b!4283225 (= b_free!126779 (not b_next!127483))))

(declare-fun tp!1310198 () Bool)

(declare-fun b_and!337981 () Bool)

(assert (=> b!4283225 (= tp!1310198 b_and!337981)))

(declare-fun b!4283222 () Bool)

(declare-fun b_free!126781 () Bool)

(declare-fun b_next!127485 () Bool)

(assert (=> b!4283222 (= b_free!126781 (not b_next!127485))))

(declare-fun tp!1310190 () Bool)

(declare-fun b_and!337983 () Bool)

(assert (=> b!4283222 (= tp!1310190 b_and!337983)))

(declare-fun b_free!126783 () Bool)

(declare-fun b_next!127487 () Bool)

(assert (=> b!4283222 (= b_free!126783 (not b_next!127487))))

(declare-fun tp!1310192 () Bool)

(declare-fun b_and!337985 () Bool)

(assert (=> b!4283222 (= tp!1310192 b_and!337985)))

(declare-fun b!4283213 () Bool)

(declare-fun b_free!126785 () Bool)

(declare-fun b_next!127489 () Bool)

(assert (=> b!4283213 (= b_free!126785 (not b_next!127489))))

(declare-fun tp!1310213 () Bool)

(declare-fun b_and!337987 () Bool)

(assert (=> b!4283213 (= tp!1310213 b_and!337987)))

(declare-fun b!4283212 () Bool)

(declare-fun b_free!126787 () Bool)

(declare-fun b_next!127491 () Bool)

(assert (=> b!4283212 (= b_free!126787 (not b_next!127491))))

(declare-fun tp!1310210 () Bool)

(declare-fun b_and!337989 () Bool)

(assert (=> b!4283212 (= tp!1310210 b_and!337989)))

(declare-fun b!4283219 () Bool)

(declare-fun b_free!126789 () Bool)

(declare-fun b_next!127493 () Bool)

(assert (=> b!4283219 (= b_free!126789 (not b_next!127493))))

(declare-fun tp!1310197 () Bool)

(declare-fun b_and!337991 () Bool)

(assert (=> b!4283219 (= tp!1310197 b_and!337991)))

(declare-fun b!4283210 () Bool)

(declare-fun b_free!126791 () Bool)

(declare-fun b_next!127495 () Bool)

(assert (=> b!4283210 (= b_free!126791 (not b_next!127495))))

(declare-fun tp!1310193 () Bool)

(declare-fun b_and!337993 () Bool)

(assert (=> b!4283210 (= tp!1310193 b_and!337993)))

(declare-fun b!4283199 () Bool)

(declare-fun b_free!126793 () Bool)

(declare-fun b_next!127497 () Bool)

(assert (=> b!4283199 (= b_free!126793 (not b_next!127497))))

(declare-fun tp!1310209 () Bool)

(declare-fun b_and!337995 () Bool)

(assert (=> b!4283199 (= tp!1310209 b_and!337995)))

(declare-fun b!4283193 () Bool)

(declare-fun e!2659179 () Bool)

(declare-fun tp!1310191 () Bool)

(declare-fun mapRes!19290 () Bool)

(assert (=> b!4283193 (= e!2659179 (and tp!1310191 mapRes!19290))))

(declare-fun condMapEmpty!19291 () Bool)

(declare-datatypes ((Hashable!4179 0))(
  ( (HashableExt!4178 (__x!28791 Int)) )
))
(declare-datatypes ((array!15306 0))(
  ( (array!15307 (arr!6833 (Array (_ BitVec 32) (_ BitVec 64))) (size!34762 (_ BitVec 32))) )
))
(declare-datatypes ((C!26004 0))(
  ( (C!26005 (val!15328 Int)) )
))
(declare-datatypes ((Regex!12903 0))(
  ( (ElementMatch!12903 (c!730000 C!26004)) (Concat!21209 (regOne!26318 Regex!12903) (regTwo!26318 Regex!12903)) (EmptyExpr!12903) (Star!12903 (reg!13232 Regex!12903)) (EmptyLang!12903) (Union!12903 (regOne!26319 Regex!12903) (regTwo!26319 Regex!12903)) )
))
(declare-datatypes ((List!47557 0))(
  ( (Nil!47433) (Cons!47433 (h!52853 Regex!12903) (t!354146 List!47557)) )
))
(declare-datatypes ((Context!5586 0))(
  ( (Context!5587 (exprs!3293 List!47557)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44782 0))(
  ( (tuple2!44783 (_1!25529 (InoxSet Context!5586)) (_2!25529 Int)) )
))
(declare-datatypes ((tuple2!44784 0))(
  ( (tuple2!44785 (_1!25530 tuple2!44782) (_2!25530 Int)) )
))
(declare-datatypes ((List!47558 0))(
  ( (Nil!47434) (Cons!47434 (h!52854 tuple2!44784) (t!354147 List!47558)) )
))
(declare-datatypes ((array!15308 0))(
  ( (array!15309 (arr!6834 (Array (_ BitVec 32) List!47558)) (size!34763 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8526 0))(
  ( (LongMapFixedSize!8527 (defaultEntry!4648 Int) (mask!12684 (_ BitVec 32)) (extraKeys!4512 (_ BitVec 32)) (zeroValue!4522 List!47558) (minValue!4522 List!47558) (_size!8569 (_ BitVec 32)) (_keys!4563 array!15306) (_values!4544 array!15308) (_vacant!4324 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16861 0))(
  ( (Cell!16862 (v!41333 LongMapFixedSize!8526)) )
))
(declare-datatypes ((MutLongMap!4263 0))(
  ( (LongMap!4263 (underlying!8755 Cell!16861)) (MutLongMapExt!4262 (__x!28792 Int)) )
))
(declare-datatypes ((Cell!16863 0))(
  ( (Cell!16864 (v!41334 MutLongMap!4263)) )
))
(declare-datatypes ((MutableMap!4169 0))(
  ( (MutableMapExt!4168 (__x!28793 Int)) (HashMap!4169 (underlying!8756 Cell!16863) (hashF!6211 Hashable!4179) (_size!8570 (_ BitVec 32)) (defaultValue!4340 Int)) )
))
(declare-datatypes ((List!47559 0))(
  ( (Nil!47435) (Cons!47435 (h!52855 C!26004) (t!354148 List!47559)) )
))
(declare-datatypes ((IArray!28755 0))(
  ( (IArray!28756 (innerList!14435 List!47559)) )
))
(declare-datatypes ((Conc!14347 0))(
  ( (Node!14347 (left!35327 Conc!14347) (right!35657 Conc!14347) (csize!28924 Int) (cheight!14558 Int)) (Leaf!22200 (xs!17653 IArray!28755) (csize!28925 Int)) (Empty!14347) )
))
(declare-datatypes ((BalanceConc!28184 0))(
  ( (BalanceConc!28185 (c!730001 Conc!14347)) )
))
(declare-datatypes ((CacheFindLongestMatch!382 0))(
  ( (CacheFindLongestMatch!383 (cache!4309 MutableMap!4169) (totalInput!4289 BalanceConc!28184)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!382)

(declare-fun mapDefault!19292 () List!47558)

(assert (=> b!4283193 (= condMapEmpty!19291 (= (arr!6834 (_values!4544 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47558)) mapDefault!19292)))))

(declare-fun b!4283194 () Bool)

(declare-fun e!2659203 () Bool)

(declare-fun e!2659181 () Bool)

(declare-fun lt!1515442 () MutLongMap!4263)

(get-info :version)

(assert (=> b!4283194 (= e!2659203 (and e!2659181 ((_ is LongMap!4263) lt!1515442)))))

(assert (=> b!4283194 (= lt!1515442 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))

(declare-fun b!4283195 () Bool)

(declare-fun res!1757727 () Bool)

(declare-fun e!2659206 () Bool)

(assert (=> b!4283195 (=> (not res!1757727) (not e!2659206))))

(declare-fun totalInput!528 () BalanceConc!28184)

(assert (=> b!4283195 (= res!1757727 (= (totalInput!4289 cacheFindLongestMatch!156) totalInput!528))))

(declare-fun b!4283196 () Bool)

(declare-fun res!1757722 () Bool)

(assert (=> b!4283196 (=> (not res!1757722) (not e!2659206))))

(declare-fun valid!3311 (CacheFindLongestMatch!382) Bool)

(assert (=> b!4283196 (= res!1757722 (valid!3311 cacheFindLongestMatch!156))))

(declare-fun b!4283197 () Bool)

(declare-fun e!2659182 () Bool)

(declare-fun e!2659202 () Bool)

(declare-datatypes ((tuple3!5336 0))(
  ( (tuple3!5337 (_1!25531 Regex!12903) (_2!25531 Context!5586) (_3!3138 C!26004)) )
))
(declare-datatypes ((tuple2!44786 0))(
  ( (tuple2!44787 (_1!25532 tuple3!5336) (_2!25532 (InoxSet Context!5586))) )
))
(declare-datatypes ((List!47560 0))(
  ( (Nil!47436) (Cons!47436 (h!52856 tuple2!44786) (t!354149 List!47560)) )
))
(declare-datatypes ((array!15310 0))(
  ( (array!15311 (arr!6835 (Array (_ BitVec 32) List!47560)) (size!34764 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8528 0))(
  ( (LongMapFixedSize!8529 (defaultEntry!4649 Int) (mask!12685 (_ BitVec 32)) (extraKeys!4513 (_ BitVec 32)) (zeroValue!4523 List!47560) (minValue!4523 List!47560) (_size!8571 (_ BitVec 32)) (_keys!4564 array!15306) (_values!4545 array!15310) (_vacant!4325 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16865 0))(
  ( (Cell!16866 (v!41335 LongMapFixedSize!8528)) )
))
(declare-datatypes ((MutLongMap!4264 0))(
  ( (LongMap!4264 (underlying!8757 Cell!16865)) (MutLongMapExt!4263 (__x!28794 Int)) )
))
(declare-fun lt!1515444 () MutLongMap!4264)

(assert (=> b!4283197 (= e!2659182 (and e!2659202 ((_ is LongMap!4264) lt!1515444)))))

(declare-datatypes ((Hashable!4180 0))(
  ( (HashableExt!4179 (__x!28795 Int)) )
))
(declare-datatypes ((Cell!16867 0))(
  ( (Cell!16868 (v!41336 MutLongMap!4264)) )
))
(declare-datatypes ((MutableMap!4170 0))(
  ( (MutableMapExt!4169 (__x!28796 Int)) (HashMap!4170 (underlying!8758 Cell!16867) (hashF!6212 Hashable!4180) (_size!8572 (_ BitVec 32)) (defaultValue!4341 Int)) )
))
(declare-datatypes ((CacheDown!2844 0))(
  ( (CacheDown!2845 (cache!4310 MutableMap!4170)) )
))
(declare-fun cacheDown!738 () CacheDown!2844)

(assert (=> b!4283197 (= lt!1515444 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))

(declare-fun mapNonEmpty!19290 () Bool)

(declare-fun mapRes!19292 () Bool)

(declare-fun tp!1310214 () Bool)

(declare-fun tp!1310215 () Bool)

(assert (=> mapNonEmpty!19290 (= mapRes!19292 (and tp!1310214 tp!1310215))))

(declare-fun mapKey!19291 () (_ BitVec 32))

(declare-fun mapRest!19292 () (Array (_ BitVec 32) List!47560))

(declare-fun mapValue!19291 () List!47560)

(assert (=> mapNonEmpty!19290 (= (arr!6835 (_values!4545 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) (store mapRest!19292 mapKey!19291 mapValue!19291))))

(declare-fun b!4283198 () Bool)

(declare-fun e!2659193 () Bool)

(declare-fun tp!1310203 () Bool)

(declare-fun inv!62866 (Conc!14347) Bool)

(assert (=> b!4283198 (= e!2659193 (and (inv!62866 (c!730001 totalInput!528)) tp!1310203))))

(declare-fun e!2659196 () Bool)

(assert (=> b!4283199 (= e!2659196 (and e!2659182 tp!1310209))))

(declare-fun b!4283200 () Bool)

(declare-fun e!2659199 () Bool)

(declare-fun e!2659190 () Bool)

(assert (=> b!4283200 (= e!2659199 e!2659190)))

(declare-fun b!4283201 () Bool)

(declare-fun e!2659198 () Bool)

(declare-fun tp!1310189 () Bool)

(assert (=> b!4283201 (= e!2659198 (and tp!1310189 mapRes!19292))))

(declare-fun condMapEmpty!19292 () Bool)

(declare-fun mapDefault!19291 () List!47560)

(assert (=> b!4283201 (= condMapEmpty!19292 (= (arr!6835 (_values!4545 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47560)) mapDefault!19291)))))

(declare-fun b!4283202 () Bool)

(declare-fun res!1757728 () Bool)

(assert (=> b!4283202 (=> (not res!1757728) (not e!2659206))))

(declare-fun input!1632 () BalanceConc!28184)

(declare-fun isSuffix!1004 (List!47559 List!47559) Bool)

(declare-fun list!17314 (BalanceConc!28184) List!47559)

(assert (=> b!4283202 (= res!1757728 (isSuffix!1004 (list!17314 input!1632) (list!17314 totalInput!528)))))

(declare-fun b!4283203 () Bool)

(declare-fun e!2659195 () Bool)

(assert (=> b!4283203 (= e!2659195 e!2659199)))

(declare-fun b!4283204 () Bool)

(declare-datatypes ((List!47561 0))(
  ( (Nil!47437) (Cons!47437 (h!52857 (_ BitVec 16)) (t!354150 List!47561)) )
))
(declare-datatypes ((TokenValue!8306 0))(
  ( (FloatLiteralValue!16612 (text!58587 List!47561)) (TokenValueExt!8305 (__x!28797 Int)) (Broken!41530 (value!250681 List!47561)) (Object!8429) (End!8306) (Def!8306) (Underscore!8306) (Match!8306) (Else!8306) (Error!8306) (Case!8306) (If!8306) (Extends!8306) (Abstract!8306) (Class!8306) (Val!8306) (DelimiterValue!16612 (del!8366 List!47561)) (KeywordValue!8312 (value!250682 List!47561)) (CommentValue!16612 (value!250683 List!47561)) (WhitespaceValue!16612 (value!250684 List!47561)) (IndentationValue!8306 (value!250685 List!47561)) (String!55523) (Int32!8306) (Broken!41531 (value!250686 List!47561)) (Boolean!8307) (Unit!66362) (OperatorValue!8309 (op!8366 List!47561)) (IdentifierValue!16612 (value!250687 List!47561)) (IdentifierValue!16613 (value!250688 List!47561)) (WhitespaceValue!16613 (value!250689 List!47561)) (True!16612) (False!16612) (Broken!41532 (value!250690 List!47561)) (Broken!41533 (value!250691 List!47561)) (True!16613) (RightBrace!8306) (RightBracket!8306) (Colon!8306) (Null!8306) (Comma!8306) (LeftBracket!8306) (False!16613) (LeftBrace!8306) (ImaginaryLiteralValue!8306 (text!58588 List!47561)) (StringLiteralValue!24918 (value!250692 List!47561)) (EOFValue!8306 (value!250693 List!47561)) (IdentValue!8306 (value!250694 List!47561)) (DelimiterValue!16613 (value!250695 List!47561)) (DedentValue!8306 (value!250696 List!47561)) (NewLineValue!8306 (value!250697 List!47561)) (IntegerValue!24918 (value!250698 (_ BitVec 32)) (text!58589 List!47561)) (IntegerValue!24919 (value!250699 Int) (text!58590 List!47561)) (Times!8306) (Or!8306) (Equal!8306) (Minus!8306) (Broken!41534 (value!250700 List!47561)) (And!8306) (Div!8306) (LessEqual!8306) (Mod!8306) (Concat!21210) (Not!8306) (Plus!8306) (SpaceValue!8306 (value!250701 List!47561)) (IntegerValue!24920 (value!250702 Int) (text!58591 List!47561)) (StringLiteralValue!24919 (text!58592 List!47561)) (FloatLiteralValue!16613 (text!58593 List!47561)) (BytesLiteralValue!8306 (value!250703 List!47561)) (CommentValue!16613 (value!250704 List!47561)) (StringLiteralValue!24920 (value!250705 List!47561)) (ErrorTokenValue!8306 (msg!8367 List!47561)) )
))
(declare-datatypes ((String!55524 0))(
  ( (String!55525 (value!250706 String)) )
))
(declare-datatypes ((TokenValueInjection!15920 0))(
  ( (TokenValueInjection!15921 (toValue!10847 Int) (toChars!10706 Int)) )
))
(declare-datatypes ((Rule!15792 0))(
  ( (Rule!15793 (regex!7996 Regex!12903) (tag!8860 String!55524) (isSeparator!7996 Bool) (transformation!7996 TokenValueInjection!15920)) )
))
(declare-fun rule!232 () Rule!15792)

(declare-fun validRegex!5837 (Regex!12903) Bool)

(assert (=> b!4283204 (= e!2659206 (not (validRegex!5837 (regex!7996 rule!232))))))

(declare-datatypes ((tuple2!44788 0))(
  ( (tuple2!44789 (_1!25533 Context!5586) (_2!25533 C!26004)) )
))
(declare-datatypes ((tuple2!44790 0))(
  ( (tuple2!44791 (_1!25534 tuple2!44788) (_2!25534 (InoxSet Context!5586))) )
))
(declare-datatypes ((List!47562 0))(
  ( (Nil!47438) (Cons!47438 (h!52858 tuple2!44790) (t!354151 List!47562)) )
))
(declare-datatypes ((array!15312 0))(
  ( (array!15313 (arr!6836 (Array (_ BitVec 32) List!47562)) (size!34765 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!44792 0))(
  ( (tuple2!44793 (_1!25535 BalanceConc!28184) (_2!25535 BalanceConc!28184)) )
))
(declare-datatypes ((Hashable!4181 0))(
  ( (HashableExt!4180 (__x!28798 Int)) )
))
(declare-datatypes ((LongMapFixedSize!8530 0))(
  ( (LongMapFixedSize!8531 (defaultEntry!4650 Int) (mask!12686 (_ BitVec 32)) (extraKeys!4514 (_ BitVec 32)) (zeroValue!4524 List!47562) (minValue!4524 List!47562) (_size!8573 (_ BitVec 32)) (_keys!4565 array!15306) (_values!4546 array!15312) (_vacant!4326 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16869 0))(
  ( (Cell!16870 (v!41337 LongMapFixedSize!8530)) )
))
(declare-datatypes ((MutLongMap!4265 0))(
  ( (LongMap!4265 (underlying!8759 Cell!16869)) (MutLongMapExt!4264 (__x!28799 Int)) )
))
(declare-datatypes ((Cell!16871 0))(
  ( (Cell!16872 (v!41338 MutLongMap!4265)) )
))
(declare-datatypes ((MutableMap!4171 0))(
  ( (MutableMapExt!4170 (__x!28800 Int)) (HashMap!4171 (underlying!8760 Cell!16871) (hashF!6213 Hashable!4181) (_size!8574 (_ BitVec 32)) (defaultValue!4342 Int)) )
))
(declare-datatypes ((CacheUp!2720 0))(
  ( (CacheUp!2721 (cache!4311 MutableMap!4171)) )
))
(declare-datatypes ((tuple4!940 0))(
  ( (tuple4!941 (_1!25536 tuple2!44792) (_2!25536 CacheUp!2720) (_3!3139 CacheDown!2844) (_4!470 CacheFindLongestMatch!382)) )
))
(declare-fun lt!1515443 () tuple4!940)

(declare-fun cacheUp!725 () CacheUp!2720)

(declare-fun findLongestMatchWithZipperSequenceV2Mem!36 (Regex!12903 BalanceConc!28184 BalanceConc!28184 CacheUp!2720 CacheDown!2844 CacheFindLongestMatch!382) tuple4!940)

(assert (=> b!4283204 (= lt!1515443 (findLongestMatchWithZipperSequenceV2Mem!36 (regex!7996 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun b!4283205 () Bool)

(declare-fun e!2659205 () Bool)

(declare-fun e!2659184 () Bool)

(assert (=> b!4283205 (= e!2659205 e!2659184)))

(declare-fun b!4283206 () Bool)

(declare-fun res!1757724 () Bool)

(assert (=> b!4283206 (=> (not res!1757724) (not e!2659206))))

(declare-fun valid!3312 (CacheUp!2720) Bool)

(assert (=> b!4283206 (= res!1757724 (valid!3312 cacheUp!725))))

(declare-fun b!4283207 () Bool)

(declare-fun e!2659178 () Bool)

(declare-fun lt!1515441 () MutLongMap!4265)

(assert (=> b!4283207 (= e!2659178 (and e!2659195 ((_ is LongMap!4265) lt!1515441)))))

(assert (=> b!4283207 (= lt!1515441 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))

(declare-fun mapIsEmpty!19290 () Bool)

(declare-fun mapRes!19291 () Bool)

(assert (=> mapIsEmpty!19290 mapRes!19291))

(declare-fun res!1757726 () Bool)

(assert (=> start!411548 (=> (not res!1757726) (not e!2659206))))

(declare-datatypes ((LexerInterface!7591 0))(
  ( (LexerInterfaceExt!7588 (__x!28801 Int)) (Lexer!7589) )
))
(declare-fun thiss!16356 () LexerInterface!7591)

(assert (=> start!411548 (= res!1757726 ((_ is Lexer!7589) thiss!16356))))

(assert (=> start!411548 e!2659206))

(assert (=> start!411548 true))

(declare-fun e!2659180 () Bool)

(assert (=> start!411548 e!2659180))

(declare-fun e!2659189 () Bool)

(declare-fun inv!62867 (BalanceConc!28184) Bool)

(assert (=> start!411548 (and (inv!62867 input!1632) e!2659189)))

(declare-fun e!2659177 () Bool)

(declare-fun inv!62868 (CacheDown!2844) Bool)

(assert (=> start!411548 (and (inv!62868 cacheDown!738) e!2659177)))

(declare-fun e!2659191 () Bool)

(declare-fun inv!62869 (CacheFindLongestMatch!382) Bool)

(assert (=> start!411548 (and (inv!62869 cacheFindLongestMatch!156) e!2659191)))

(assert (=> start!411548 (and (inv!62867 totalInput!528) e!2659193)))

(declare-fun inv!62870 (CacheUp!2720) Bool)

(assert (=> start!411548 (and (inv!62870 cacheUp!725) e!2659205)))

(declare-fun mapNonEmpty!19291 () Bool)

(declare-fun tp!1310201 () Bool)

(declare-fun tp!1310206 () Bool)

(assert (=> mapNonEmpty!19291 (= mapRes!19291 (and tp!1310201 tp!1310206))))

(declare-fun mapRest!19290 () (Array (_ BitVec 32) List!47562))

(declare-fun mapKey!19290 () (_ BitVec 32))

(declare-fun mapValue!19292 () List!47562)

(assert (=> mapNonEmpty!19291 (= (arr!6836 (_values!4546 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) (store mapRest!19290 mapKey!19290 mapValue!19292))))

(declare-fun b!4283208 () Bool)

(declare-fun e!2659194 () Bool)

(declare-fun tp!1310195 () Bool)

(assert (=> b!4283208 (= e!2659194 (and tp!1310195 mapRes!19291))))

(declare-fun condMapEmpty!19290 () Bool)

(declare-fun mapDefault!19290 () List!47562)

(assert (=> b!4283208 (= condMapEmpty!19290 (= (arr!6836 (_values!4546 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47562)) mapDefault!19290)))))

(declare-fun b!4283209 () Bool)

(declare-fun e!2659192 () Bool)

(declare-fun tp!1310212 () Bool)

(declare-fun inv!62864 (String!55524) Bool)

(declare-fun inv!62871 (TokenValueInjection!15920) Bool)

(assert (=> b!4283209 (= e!2659180 (and tp!1310212 (inv!62864 (tag!8860 rule!232)) (inv!62871 (transformation!7996 rule!232)) e!2659192))))

(declare-fun tp!1310204 () Bool)

(declare-fun tp!1310200 () Bool)

(declare-fun e!2659183 () Bool)

(declare-fun array_inv!4892 (array!15306) Bool)

(declare-fun array_inv!4893 (array!15308) Bool)

(assert (=> b!4283210 (= e!2659183 (and tp!1310193 tp!1310204 tp!1310200 (array_inv!4892 (_keys!4563 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) (array_inv!4893 (_values!4544 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) e!2659179))))

(declare-fun b!4283211 () Bool)

(declare-fun tp!1310205 () Bool)

(assert (=> b!4283211 (= e!2659189 (and (inv!62866 (c!730001 input!1632)) tp!1310205))))

(declare-fun mapNonEmpty!19292 () Bool)

(declare-fun tp!1310208 () Bool)

(declare-fun tp!1310199 () Bool)

(assert (=> mapNonEmpty!19292 (= mapRes!19290 (and tp!1310208 tp!1310199))))

(declare-fun mapRest!19291 () (Array (_ BitVec 32) List!47558))

(declare-fun mapKey!19292 () (_ BitVec 32))

(declare-fun mapValue!19290 () List!47558)

(assert (=> mapNonEmpty!19292 (= (arr!6834 (_values!4544 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) (store mapRest!19291 mapKey!19292 mapValue!19290))))

(assert (=> b!4283212 (= e!2659184 (and e!2659178 tp!1310210))))

(declare-fun mapIsEmpty!19291 () Bool)

(assert (=> mapIsEmpty!19291 mapRes!19292))

(declare-fun e!2659188 () Bool)

(assert (=> b!4283213 (= e!2659188 (and e!2659203 tp!1310213))))

(declare-fun b!4283214 () Bool)

(declare-fun e!2659185 () Bool)

(declare-fun e!2659187 () Bool)

(assert (=> b!4283214 (= e!2659185 e!2659187)))

(declare-fun b!4283215 () Bool)

(assert (=> b!4283215 (= e!2659202 e!2659185)))

(declare-fun mapIsEmpty!19292 () Bool)

(assert (=> mapIsEmpty!19292 mapRes!19290))

(declare-fun b!4283216 () Bool)

(declare-fun e!2659204 () Bool)

(assert (=> b!4283216 (= e!2659204 e!2659183)))

(declare-fun b!4283217 () Bool)

(declare-fun e!2659197 () Bool)

(declare-fun tp!1310196 () Bool)

(assert (=> b!4283217 (= e!2659197 (and (inv!62866 (c!730001 (totalInput!4289 cacheFindLongestMatch!156))) tp!1310196))))

(declare-fun b!4283218 () Bool)

(assert (=> b!4283218 (= e!2659191 (and e!2659188 (inv!62867 (totalInput!4289 cacheFindLongestMatch!156)) e!2659197))))

(declare-fun tp!1310207 () Bool)

(declare-fun tp!1310194 () Bool)

(declare-fun array_inv!4894 (array!15312) Bool)

(assert (=> b!4283219 (= e!2659190 (and tp!1310197 tp!1310207 tp!1310194 (array_inv!4892 (_keys!4565 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) (array_inv!4894 (_values!4546 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) e!2659194))))

(declare-fun b!4283220 () Bool)

(declare-fun res!1757723 () Bool)

(assert (=> b!4283220 (=> (not res!1757723) (not e!2659206))))

(declare-fun ruleValid!3614 (LexerInterface!7591 Rule!15792) Bool)

(assert (=> b!4283220 (= res!1757723 (ruleValid!3614 thiss!16356 rule!232))))

(declare-fun b!4283221 () Bool)

(assert (=> b!4283221 (= e!2659181 e!2659204)))

(assert (=> b!4283222 (= e!2659192 (and tp!1310190 tp!1310192))))

(declare-fun b!4283223 () Bool)

(assert (=> b!4283223 (= e!2659177 e!2659196)))

(declare-fun b!4283224 () Bool)

(declare-fun res!1757725 () Bool)

(assert (=> b!4283224 (=> (not res!1757725) (not e!2659206))))

(declare-fun valid!3313 (CacheDown!2844) Bool)

(assert (=> b!4283224 (= res!1757725 (valid!3313 cacheDown!738))))

(declare-fun tp!1310202 () Bool)

(declare-fun tp!1310211 () Bool)

(declare-fun array_inv!4895 (array!15310) Bool)

(assert (=> b!4283225 (= e!2659187 (and tp!1310198 tp!1310211 tp!1310202 (array_inv!4892 (_keys!4564 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) (array_inv!4895 (_values!4545 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) e!2659198))))

(assert (= (and start!411548 res!1757726) b!4283220))

(assert (= (and b!4283220 res!1757723) b!4283206))

(assert (= (and b!4283206 res!1757724) b!4283224))

(assert (= (and b!4283224 res!1757725) b!4283196))

(assert (= (and b!4283196 res!1757722) b!4283202))

(assert (= (and b!4283202 res!1757728) b!4283195))

(assert (= (and b!4283195 res!1757727) b!4283204))

(assert (= b!4283209 b!4283222))

(assert (= start!411548 b!4283209))

(assert (= start!411548 b!4283211))

(assert (= (and b!4283201 condMapEmpty!19292) mapIsEmpty!19291))

(assert (= (and b!4283201 (not condMapEmpty!19292)) mapNonEmpty!19290))

(assert (= b!4283225 b!4283201))

(assert (= b!4283214 b!4283225))

(assert (= b!4283215 b!4283214))

(assert (= (and b!4283197 ((_ is LongMap!4264) (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))) b!4283215))

(assert (= b!4283199 b!4283197))

(assert (= (and b!4283223 ((_ is HashMap!4170) (cache!4310 cacheDown!738))) b!4283199))

(assert (= start!411548 b!4283223))

(assert (= (and b!4283193 condMapEmpty!19291) mapIsEmpty!19292))

(assert (= (and b!4283193 (not condMapEmpty!19291)) mapNonEmpty!19292))

(assert (= b!4283210 b!4283193))

(assert (= b!4283216 b!4283210))

(assert (= b!4283221 b!4283216))

(assert (= (and b!4283194 ((_ is LongMap!4263) (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))) b!4283221))

(assert (= b!4283213 b!4283194))

(assert (= (and b!4283218 ((_ is HashMap!4169) (cache!4309 cacheFindLongestMatch!156))) b!4283213))

(assert (= b!4283218 b!4283217))

(assert (= start!411548 b!4283218))

(assert (= start!411548 b!4283198))

(assert (= (and b!4283208 condMapEmpty!19290) mapIsEmpty!19290))

(assert (= (and b!4283208 (not condMapEmpty!19290)) mapNonEmpty!19291))

(assert (= b!4283219 b!4283208))

(assert (= b!4283200 b!4283219))

(assert (= b!4283203 b!4283200))

(assert (= (and b!4283207 ((_ is LongMap!4265) (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))) b!4283203))

(assert (= b!4283212 b!4283207))

(assert (= (and b!4283205 ((_ is HashMap!4171) (cache!4311 cacheUp!725))) b!4283212))

(assert (= start!411548 b!4283205))

(declare-fun m!4879851 () Bool)

(assert (=> mapNonEmpty!19291 m!4879851))

(declare-fun m!4879853 () Bool)

(assert (=> b!4283210 m!4879853))

(declare-fun m!4879855 () Bool)

(assert (=> b!4283210 m!4879855))

(declare-fun m!4879857 () Bool)

(assert (=> mapNonEmpty!19292 m!4879857))

(declare-fun m!4879859 () Bool)

(assert (=> b!4283202 m!4879859))

(declare-fun m!4879861 () Bool)

(assert (=> b!4283202 m!4879861))

(assert (=> b!4283202 m!4879859))

(assert (=> b!4283202 m!4879861))

(declare-fun m!4879863 () Bool)

(assert (=> b!4283202 m!4879863))

(declare-fun m!4879865 () Bool)

(assert (=> b!4283219 m!4879865))

(declare-fun m!4879867 () Bool)

(assert (=> b!4283219 m!4879867))

(declare-fun m!4879869 () Bool)

(assert (=> b!4283204 m!4879869))

(declare-fun m!4879871 () Bool)

(assert (=> b!4283204 m!4879871))

(declare-fun m!4879873 () Bool)

(assert (=> b!4283198 m!4879873))

(declare-fun m!4879875 () Bool)

(assert (=> start!411548 m!4879875))

(declare-fun m!4879877 () Bool)

(assert (=> start!411548 m!4879877))

(declare-fun m!4879879 () Bool)

(assert (=> start!411548 m!4879879))

(declare-fun m!4879881 () Bool)

(assert (=> start!411548 m!4879881))

(declare-fun m!4879883 () Bool)

(assert (=> start!411548 m!4879883))

(declare-fun m!4879885 () Bool)

(assert (=> b!4283224 m!4879885))

(declare-fun m!4879887 () Bool)

(assert (=> b!4283211 m!4879887))

(declare-fun m!4879889 () Bool)

(assert (=> b!4283196 m!4879889))

(declare-fun m!4879891 () Bool)

(assert (=> b!4283225 m!4879891))

(declare-fun m!4879893 () Bool)

(assert (=> b!4283225 m!4879893))

(declare-fun m!4879895 () Bool)

(assert (=> b!4283218 m!4879895))

(declare-fun m!4879897 () Bool)

(assert (=> b!4283220 m!4879897))

(declare-fun m!4879899 () Bool)

(assert (=> b!4283209 m!4879899))

(declare-fun m!4879901 () Bool)

(assert (=> b!4283209 m!4879901))

(declare-fun m!4879903 () Bool)

(assert (=> b!4283217 m!4879903))

(declare-fun m!4879905 () Bool)

(assert (=> mapNonEmpty!19290 m!4879905))

(declare-fun m!4879907 () Bool)

(assert (=> b!4283206 m!4879907))

(check-sat (not b!4283217) (not mapNonEmpty!19290) (not b!4283210) (not b_next!127485) (not b!4283201) b_and!337981 (not b!4283220) (not b!4283208) (not b_next!127487) b_and!337995 (not b!4283196) (not b!4283218) (not b_next!127495) (not b!4283202) (not b!4283224) (not b_next!127489) (not b_next!127483) (not b!4283198) b_and!337987 b_and!337989 (not b!4283225) (not b!4283211) b_and!337991 (not b!4283204) (not b_next!127497) (not b!4283209) b_and!337983 (not b_next!127493) (not mapNonEmpty!19291) (not b!4283206) (not b_next!127491) (not b!4283219) (not b!4283193) (not start!411548) b_and!337993 b_and!337985 (not mapNonEmpty!19292))
(check-sat (not b_next!127495) (not b_next!127489) (not b_next!127483) (not b_next!127485) b_and!337981 b_and!337991 (not b_next!127487) (not b_next!127493) (not b_next!127491) b_and!337995 b_and!337993 b_and!337985 b_and!337987 b_and!337989 (not b_next!127497) b_and!337983)
(get-model)

(declare-fun d!1264995 () Bool)

(declare-fun validCacheMapUp!410 (MutableMap!4171) Bool)

(assert (=> d!1264995 (= (valid!3312 cacheUp!725) (validCacheMapUp!410 (cache!4311 cacheUp!725)))))

(declare-fun bs!602779 () Bool)

(assert (= bs!602779 d!1264995))

(declare-fun m!4879909 () Bool)

(assert (=> bs!602779 m!4879909))

(assert (=> b!4283206 d!1264995))

(declare-fun d!1264997 () Bool)

(declare-fun validCacheMapFindLongestMatch!67 (MutableMap!4169 BalanceConc!28184) Bool)

(assert (=> d!1264997 (= (valid!3311 cacheFindLongestMatch!156) (validCacheMapFindLongestMatch!67 (cache!4309 cacheFindLongestMatch!156) (totalInput!4289 cacheFindLongestMatch!156)))))

(declare-fun bs!602780 () Bool)

(assert (= bs!602780 d!1264997))

(declare-fun m!4879911 () Bool)

(assert (=> bs!602780 m!4879911))

(assert (=> b!4283196 d!1264997))

(declare-fun d!1264999 () Bool)

(declare-fun validCacheMapDown!441 (MutableMap!4170) Bool)

(assert (=> d!1264999 (= (valid!3313 cacheDown!738) (validCacheMapDown!441 (cache!4310 cacheDown!738)))))

(declare-fun bs!602781 () Bool)

(assert (= bs!602781 d!1264999))

(declare-fun m!4879913 () Bool)

(assert (=> bs!602781 m!4879913))

(assert (=> b!4283224 d!1264999))

(declare-fun d!1265001 () Bool)

(declare-fun c!730004 () Bool)

(assert (=> d!1265001 (= c!730004 ((_ is Node!14347) (c!730001 totalInput!528)))))

(declare-fun e!2659212 () Bool)

(assert (=> d!1265001 (= (inv!62866 (c!730001 totalInput!528)) e!2659212)))

(declare-fun b!4283232 () Bool)

(declare-fun inv!62872 (Conc!14347) Bool)

(assert (=> b!4283232 (= e!2659212 (inv!62872 (c!730001 totalInput!528)))))

(declare-fun b!4283233 () Bool)

(declare-fun e!2659213 () Bool)

(assert (=> b!4283233 (= e!2659212 e!2659213)))

(declare-fun res!1757733 () Bool)

(assert (=> b!4283233 (= res!1757733 (not ((_ is Leaf!22200) (c!730001 totalInput!528))))))

(assert (=> b!4283233 (=> res!1757733 e!2659213)))

(declare-fun b!4283234 () Bool)

(declare-fun inv!62873 (Conc!14347) Bool)

(assert (=> b!4283234 (= e!2659213 (inv!62873 (c!730001 totalInput!528)))))

(assert (= (and d!1265001 c!730004) b!4283232))

(assert (= (and d!1265001 (not c!730004)) b!4283233))

(assert (= (and b!4283233 (not res!1757733)) b!4283234))

(declare-fun m!4879915 () Bool)

(assert (=> b!4283232 m!4879915))

(declare-fun m!4879917 () Bool)

(assert (=> b!4283234 m!4879917))

(assert (=> b!4283198 d!1265001))

(declare-fun d!1265003 () Bool)

(assert (=> d!1265003 (= (array_inv!4892 (_keys!4564 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) (bvsge (size!34762 (_keys!4564 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4283225 d!1265003))

(declare-fun d!1265005 () Bool)

(assert (=> d!1265005 (= (array_inv!4895 (_values!4545 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) (bvsge (size!34764 (_values!4545 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4283225 d!1265005))

(declare-fun d!1265007 () Bool)

(assert (=> d!1265007 (= (inv!62864 (tag!8860 rule!232)) (= (mod (str.len (value!250706 (tag!8860 rule!232))) 2) 0))))

(assert (=> b!4283209 d!1265007))

(declare-fun d!1265009 () Bool)

(declare-fun res!1757736 () Bool)

(declare-fun e!2659216 () Bool)

(assert (=> d!1265009 (=> (not res!1757736) (not e!2659216))))

(declare-fun semiInverseModEq!3532 (Int Int) Bool)

(assert (=> d!1265009 (= res!1757736 (semiInverseModEq!3532 (toChars!10706 (transformation!7996 rule!232)) (toValue!10847 (transformation!7996 rule!232))))))

(assert (=> d!1265009 (= (inv!62871 (transformation!7996 rule!232)) e!2659216)))

(declare-fun b!4283237 () Bool)

(declare-fun equivClasses!3411 (Int Int) Bool)

(assert (=> b!4283237 (= e!2659216 (equivClasses!3411 (toChars!10706 (transformation!7996 rule!232)) (toValue!10847 (transformation!7996 rule!232))))))

(assert (= (and d!1265009 res!1757736) b!4283237))

(declare-fun m!4879919 () Bool)

(assert (=> d!1265009 m!4879919))

(declare-fun m!4879921 () Bool)

(assert (=> b!4283237 m!4879921))

(assert (=> b!4283209 d!1265009))

(declare-fun d!1265011 () Bool)

(declare-fun c!730005 () Bool)

(assert (=> d!1265011 (= c!730005 ((_ is Node!14347) (c!730001 (totalInput!4289 cacheFindLongestMatch!156))))))

(declare-fun e!2659217 () Bool)

(assert (=> d!1265011 (= (inv!62866 (c!730001 (totalInput!4289 cacheFindLongestMatch!156))) e!2659217)))

(declare-fun b!4283238 () Bool)

(assert (=> b!4283238 (= e!2659217 (inv!62872 (c!730001 (totalInput!4289 cacheFindLongestMatch!156))))))

(declare-fun b!4283239 () Bool)

(declare-fun e!2659218 () Bool)

(assert (=> b!4283239 (= e!2659217 e!2659218)))

(declare-fun res!1757737 () Bool)

(assert (=> b!4283239 (= res!1757737 (not ((_ is Leaf!22200) (c!730001 (totalInput!4289 cacheFindLongestMatch!156)))))))

(assert (=> b!4283239 (=> res!1757737 e!2659218)))

(declare-fun b!4283240 () Bool)

(assert (=> b!4283240 (= e!2659218 (inv!62873 (c!730001 (totalInput!4289 cacheFindLongestMatch!156))))))

(assert (= (and d!1265011 c!730005) b!4283238))

(assert (= (and d!1265011 (not c!730005)) b!4283239))

(assert (= (and b!4283239 (not res!1757737)) b!4283240))

(declare-fun m!4879923 () Bool)

(assert (=> b!4283238 m!4879923))

(declare-fun m!4879925 () Bool)

(assert (=> b!4283240 m!4879925))

(assert (=> b!4283217 d!1265011))

(declare-fun d!1265013 () Bool)

(assert (=> d!1265013 (= (array_inv!4892 (_keys!4563 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) (bvsge (size!34762 (_keys!4563 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4283210 d!1265013))

(declare-fun d!1265015 () Bool)

(assert (=> d!1265015 (= (array_inv!4893 (_values!4544 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) (bvsge (size!34763 (_values!4544 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4283210 d!1265015))

(declare-fun d!1265017 () Bool)

(declare-fun e!2659221 () Bool)

(assert (=> d!1265017 e!2659221))

(declare-fun res!1757740 () Bool)

(assert (=> d!1265017 (=> res!1757740 e!2659221)))

(declare-fun lt!1515447 () Bool)

(assert (=> d!1265017 (= res!1757740 (not lt!1515447))))

(declare-fun drop!2183 (List!47559 Int) List!47559)

(declare-fun size!34766 (List!47559) Int)

(assert (=> d!1265017 (= lt!1515447 (= (list!17314 input!1632) (drop!2183 (list!17314 totalInput!528) (- (size!34766 (list!17314 totalInput!528)) (size!34766 (list!17314 input!1632))))))))

(assert (=> d!1265017 (= (isSuffix!1004 (list!17314 input!1632) (list!17314 totalInput!528)) lt!1515447)))

(declare-fun b!4283243 () Bool)

(assert (=> b!4283243 (= e!2659221 (>= (size!34766 (list!17314 totalInput!528)) (size!34766 (list!17314 input!1632))))))

(assert (= (and d!1265017 (not res!1757740)) b!4283243))

(assert (=> d!1265017 m!4879861))

(declare-fun m!4879927 () Bool)

(assert (=> d!1265017 m!4879927))

(assert (=> d!1265017 m!4879859))

(declare-fun m!4879929 () Bool)

(assert (=> d!1265017 m!4879929))

(assert (=> d!1265017 m!4879861))

(declare-fun m!4879931 () Bool)

(assert (=> d!1265017 m!4879931))

(assert (=> b!4283243 m!4879861))

(assert (=> b!4283243 m!4879927))

(assert (=> b!4283243 m!4879859))

(assert (=> b!4283243 m!4879929))

(assert (=> b!4283202 d!1265017))

(declare-fun d!1265019 () Bool)

(declare-fun list!17315 (Conc!14347) List!47559)

(assert (=> d!1265019 (= (list!17314 input!1632) (list!17315 (c!730001 input!1632)))))

(declare-fun bs!602782 () Bool)

(assert (= bs!602782 d!1265019))

(declare-fun m!4879933 () Bool)

(assert (=> bs!602782 m!4879933))

(assert (=> b!4283202 d!1265019))

(declare-fun d!1265021 () Bool)

(assert (=> d!1265021 (= (list!17314 totalInput!528) (list!17315 (c!730001 totalInput!528)))))

(declare-fun bs!602783 () Bool)

(assert (= bs!602783 d!1265021))

(declare-fun m!4879935 () Bool)

(assert (=> bs!602783 m!4879935))

(assert (=> b!4283202 d!1265021))

(declare-fun d!1265023 () Bool)

(declare-fun isBalanced!3874 (Conc!14347) Bool)

(assert (=> d!1265023 (= (inv!62867 (totalInput!4289 cacheFindLongestMatch!156)) (isBalanced!3874 (c!730001 (totalInput!4289 cacheFindLongestMatch!156))))))

(declare-fun bs!602784 () Bool)

(assert (= bs!602784 d!1265023))

(declare-fun m!4879937 () Bool)

(assert (=> bs!602784 m!4879937))

(assert (=> b!4283218 d!1265023))

(declare-fun d!1265025 () Bool)

(declare-fun c!730006 () Bool)

(assert (=> d!1265025 (= c!730006 ((_ is Node!14347) (c!730001 input!1632)))))

(declare-fun e!2659222 () Bool)

(assert (=> d!1265025 (= (inv!62866 (c!730001 input!1632)) e!2659222)))

(declare-fun b!4283244 () Bool)

(assert (=> b!4283244 (= e!2659222 (inv!62872 (c!730001 input!1632)))))

(declare-fun b!4283245 () Bool)

(declare-fun e!2659223 () Bool)

(assert (=> b!4283245 (= e!2659222 e!2659223)))

(declare-fun res!1757741 () Bool)

(assert (=> b!4283245 (= res!1757741 (not ((_ is Leaf!22200) (c!730001 input!1632))))))

(assert (=> b!4283245 (=> res!1757741 e!2659223)))

(declare-fun b!4283246 () Bool)

(assert (=> b!4283246 (= e!2659223 (inv!62873 (c!730001 input!1632)))))

(assert (= (and d!1265025 c!730006) b!4283244))

(assert (= (and d!1265025 (not c!730006)) b!4283245))

(assert (= (and b!4283245 (not res!1757741)) b!4283246))

(declare-fun m!4879939 () Bool)

(assert (=> b!4283244 m!4879939))

(declare-fun m!4879941 () Bool)

(assert (=> b!4283246 m!4879941))

(assert (=> b!4283211 d!1265025))

(declare-fun d!1265027 () Bool)

(assert (=> d!1265027 (= (array_inv!4892 (_keys!4565 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) (bvsge (size!34762 (_keys!4565 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4283219 d!1265027))

(declare-fun d!1265029 () Bool)

(assert (=> d!1265029 (= (array_inv!4894 (_values!4546 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) (bvsge (size!34765 (_values!4546 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4283219 d!1265029))

(declare-fun bm!294424 () Bool)

(declare-fun call!294431 () Bool)

(declare-fun c!730011 () Bool)

(assert (=> bm!294424 (= call!294431 (validRegex!5837 (ite c!730011 (regTwo!26319 (regex!7996 rule!232)) (regTwo!26318 (regex!7996 rule!232)))))))

(declare-fun b!4283265 () Bool)

(declare-fun e!2659239 () Bool)

(assert (=> b!4283265 (= e!2659239 call!294431)))

(declare-fun b!4283267 () Bool)

(declare-fun res!1757753 () Bool)

(declare-fun e!2659243 () Bool)

(assert (=> b!4283267 (=> res!1757753 e!2659243)))

(assert (=> b!4283267 (= res!1757753 (not ((_ is Concat!21209) (regex!7996 rule!232))))))

(declare-fun e!2659241 () Bool)

(assert (=> b!4283267 (= e!2659241 e!2659243)))

(declare-fun bm!294425 () Bool)

(declare-fun call!294429 () Bool)

(declare-fun call!294430 () Bool)

(assert (=> bm!294425 (= call!294429 call!294430)))

(declare-fun bm!294426 () Bool)

(declare-fun c!730012 () Bool)

(assert (=> bm!294426 (= call!294430 (validRegex!5837 (ite c!730012 (reg!13232 (regex!7996 rule!232)) (ite c!730011 (regOne!26319 (regex!7996 rule!232)) (regOne!26318 (regex!7996 rule!232))))))))

(declare-fun b!4283268 () Bool)

(declare-fun e!2659238 () Bool)

(declare-fun e!2659240 () Bool)

(assert (=> b!4283268 (= e!2659238 e!2659240)))

(declare-fun res!1757752 () Bool)

(declare-fun nullable!4529 (Regex!12903) Bool)

(assert (=> b!4283268 (= res!1757752 (not (nullable!4529 (reg!13232 (regex!7996 rule!232)))))))

(assert (=> b!4283268 (=> (not res!1757752) (not e!2659240))))

(declare-fun b!4283269 () Bool)

(assert (=> b!4283269 (= e!2659240 call!294430)))

(declare-fun b!4283270 () Bool)

(declare-fun res!1757756 () Bool)

(assert (=> b!4283270 (=> (not res!1757756) (not e!2659239))))

(assert (=> b!4283270 (= res!1757756 call!294429)))

(assert (=> b!4283270 (= e!2659241 e!2659239)))

(declare-fun b!4283271 () Bool)

(declare-fun e!2659242 () Bool)

(assert (=> b!4283271 (= e!2659242 e!2659238)))

(assert (=> b!4283271 (= c!730012 ((_ is Star!12903) (regex!7996 rule!232)))))

(declare-fun b!4283272 () Bool)

(assert (=> b!4283272 (= e!2659238 e!2659241)))

(assert (=> b!4283272 (= c!730011 ((_ is Union!12903) (regex!7996 rule!232)))))

(declare-fun b!4283273 () Bool)

(declare-fun e!2659244 () Bool)

(assert (=> b!4283273 (= e!2659243 e!2659244)))

(declare-fun res!1757755 () Bool)

(assert (=> b!4283273 (=> (not res!1757755) (not e!2659244))))

(assert (=> b!4283273 (= res!1757755 call!294429)))

(declare-fun b!4283266 () Bool)

(assert (=> b!4283266 (= e!2659244 call!294431)))

(declare-fun d!1265031 () Bool)

(declare-fun res!1757754 () Bool)

(assert (=> d!1265031 (=> res!1757754 e!2659242)))

(assert (=> d!1265031 (= res!1757754 ((_ is ElementMatch!12903) (regex!7996 rule!232)))))

(assert (=> d!1265031 (= (validRegex!5837 (regex!7996 rule!232)) e!2659242)))

(assert (= (and d!1265031 (not res!1757754)) b!4283271))

(assert (= (and b!4283271 c!730012) b!4283268))

(assert (= (and b!4283271 (not c!730012)) b!4283272))

(assert (= (and b!4283268 res!1757752) b!4283269))

(assert (= (and b!4283272 c!730011) b!4283270))

(assert (= (and b!4283272 (not c!730011)) b!4283267))

(assert (= (and b!4283270 res!1757756) b!4283265))

(assert (= (and b!4283267 (not res!1757753)) b!4283273))

(assert (= (and b!4283273 res!1757755) b!4283266))

(assert (= (or b!4283265 b!4283266) bm!294424))

(assert (= (or b!4283270 b!4283273) bm!294425))

(assert (= (or b!4283269 bm!294425) bm!294426))

(declare-fun m!4879943 () Bool)

(assert (=> bm!294424 m!4879943))

(declare-fun m!4879945 () Bool)

(assert (=> bm!294426 m!4879945))

(declare-fun m!4879947 () Bool)

(assert (=> b!4283268 m!4879947))

(assert (=> b!4283204 d!1265031))

(declare-fun b!4283283 () Bool)

(declare-fun res!1757766 () Bool)

(declare-fun e!2659247 () Bool)

(assert (=> b!4283283 (=> (not res!1757766) (not e!2659247))))

(declare-fun lt!1515450 () tuple4!940)

(assert (=> b!4283283 (= res!1757766 (valid!3312 (_2!25536 lt!1515450)))))

(declare-fun b!4283284 () Bool)

(declare-fun res!1757767 () Bool)

(assert (=> b!4283284 (=> (not res!1757767) (not e!2659247))))

(assert (=> b!4283284 (= res!1757767 (valid!3311 (_4!470 lt!1515450)))))

(declare-fun b!4283285 () Bool)

(assert (=> b!4283285 (= e!2659247 (= (totalInput!4289 (_4!470 lt!1515450)) totalInput!528))))

(declare-fun d!1265033 () Bool)

(assert (=> d!1265033 e!2659247))

(declare-fun res!1757765 () Bool)

(assert (=> d!1265033 (=> (not res!1757765) (not e!2659247))))

(declare-fun findLongestMatchWithZipperSequenceV2!115 (Regex!12903 BalanceConc!28184 BalanceConc!28184) tuple2!44792)

(assert (=> d!1265033 (= res!1757765 (= (_1!25536 lt!1515450) (findLongestMatchWithZipperSequenceV2!115 (regex!7996 rule!232) input!1632 totalInput!528)))))

(declare-fun choose!26127 (Regex!12903 BalanceConc!28184 BalanceConc!28184 CacheUp!2720 CacheDown!2844 CacheFindLongestMatch!382) tuple4!940)

(assert (=> d!1265033 (= lt!1515450 (choose!26127 (regex!7996 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(assert (=> d!1265033 (validRegex!5837 (regex!7996 rule!232))))

(assert (=> d!1265033 (= (findLongestMatchWithZipperSequenceV2Mem!36 (regex!7996 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156) lt!1515450)))

(declare-fun b!4283282 () Bool)

(declare-fun res!1757768 () Bool)

(assert (=> b!4283282 (=> (not res!1757768) (not e!2659247))))

(assert (=> b!4283282 (= res!1757768 (valid!3313 (_3!3139 lt!1515450)))))

(assert (= (and d!1265033 res!1757765) b!4283282))

(assert (= (and b!4283282 res!1757768) b!4283283))

(assert (= (and b!4283283 res!1757766) b!4283284))

(assert (= (and b!4283284 res!1757767) b!4283285))

(declare-fun m!4879949 () Bool)

(assert (=> b!4283283 m!4879949))

(declare-fun m!4879951 () Bool)

(assert (=> b!4283284 m!4879951))

(declare-fun m!4879953 () Bool)

(assert (=> d!1265033 m!4879953))

(declare-fun m!4879955 () Bool)

(assert (=> d!1265033 m!4879955))

(assert (=> d!1265033 m!4879869))

(declare-fun m!4879957 () Bool)

(assert (=> b!4283282 m!4879957))

(assert (=> b!4283204 d!1265033))

(declare-fun d!1265035 () Bool)

(declare-fun res!1757771 () Bool)

(declare-fun e!2659250 () Bool)

(assert (=> d!1265035 (=> (not res!1757771) (not e!2659250))))

(assert (=> d!1265035 (= res!1757771 ((_ is HashMap!4171) (cache!4311 cacheUp!725)))))

(assert (=> d!1265035 (= (inv!62870 cacheUp!725) e!2659250)))

(declare-fun b!4283288 () Bool)

(assert (=> b!4283288 (= e!2659250 (validCacheMapUp!410 (cache!4311 cacheUp!725)))))

(assert (= (and d!1265035 res!1757771) b!4283288))

(assert (=> b!4283288 m!4879909))

(assert (=> start!411548 d!1265035))

(declare-fun d!1265037 () Bool)

(declare-fun res!1757774 () Bool)

(declare-fun e!2659253 () Bool)

(assert (=> d!1265037 (=> (not res!1757774) (not e!2659253))))

(assert (=> d!1265037 (= res!1757774 ((_ is HashMap!4169) (cache!4309 cacheFindLongestMatch!156)))))

(assert (=> d!1265037 (= (inv!62869 cacheFindLongestMatch!156) e!2659253)))

(declare-fun b!4283291 () Bool)

(assert (=> b!4283291 (= e!2659253 (validCacheMapFindLongestMatch!67 (cache!4309 cacheFindLongestMatch!156) (totalInput!4289 cacheFindLongestMatch!156)))))

(assert (= (and d!1265037 res!1757774) b!4283291))

(assert (=> b!4283291 m!4879911))

(assert (=> start!411548 d!1265037))

(declare-fun d!1265039 () Bool)

(declare-fun res!1757777 () Bool)

(declare-fun e!2659256 () Bool)

(assert (=> d!1265039 (=> (not res!1757777) (not e!2659256))))

(assert (=> d!1265039 (= res!1757777 ((_ is HashMap!4170) (cache!4310 cacheDown!738)))))

(assert (=> d!1265039 (= (inv!62868 cacheDown!738) e!2659256)))

(declare-fun b!4283294 () Bool)

(assert (=> b!4283294 (= e!2659256 (validCacheMapDown!441 (cache!4310 cacheDown!738)))))

(assert (= (and d!1265039 res!1757777) b!4283294))

(assert (=> b!4283294 m!4879913))

(assert (=> start!411548 d!1265039))

(declare-fun d!1265041 () Bool)

(assert (=> d!1265041 (= (inv!62867 totalInput!528) (isBalanced!3874 (c!730001 totalInput!528)))))

(declare-fun bs!602785 () Bool)

(assert (= bs!602785 d!1265041))

(declare-fun m!4879959 () Bool)

(assert (=> bs!602785 m!4879959))

(assert (=> start!411548 d!1265041))

(declare-fun d!1265043 () Bool)

(assert (=> d!1265043 (= (inv!62867 input!1632) (isBalanced!3874 (c!730001 input!1632)))))

(declare-fun bs!602786 () Bool)

(assert (= bs!602786 d!1265043))

(declare-fun m!4879961 () Bool)

(assert (=> bs!602786 m!4879961))

(assert (=> start!411548 d!1265043))

(declare-fun d!1265045 () Bool)

(declare-fun res!1757782 () Bool)

(declare-fun e!2659259 () Bool)

(assert (=> d!1265045 (=> (not res!1757782) (not e!2659259))))

(assert (=> d!1265045 (= res!1757782 (validRegex!5837 (regex!7996 rule!232)))))

(assert (=> d!1265045 (= (ruleValid!3614 thiss!16356 rule!232) e!2659259)))

(declare-fun b!4283299 () Bool)

(declare-fun res!1757783 () Bool)

(assert (=> b!4283299 (=> (not res!1757783) (not e!2659259))))

(assert (=> b!4283299 (= res!1757783 (not (nullable!4529 (regex!7996 rule!232))))))

(declare-fun b!4283300 () Bool)

(assert (=> b!4283300 (= e!2659259 (not (= (tag!8860 rule!232) (String!55525 ""))))))

(assert (= (and d!1265045 res!1757782) b!4283299))

(assert (= (and b!4283299 res!1757783) b!4283300))

(assert (=> d!1265045 m!4879869))

(declare-fun m!4879963 () Bool)

(assert (=> b!4283299 m!4879963))

(assert (=> b!4283220 d!1265045))

(declare-fun setIsEmpty!26050 () Bool)

(declare-fun setRes!26051 () Bool)

(assert (=> setIsEmpty!26050 setRes!26051))

(declare-fun tp!1310241 () Bool)

(declare-fun e!2659274 () Bool)

(declare-fun tp!1310243 () Bool)

(declare-fun mapValue!19295 () List!47560)

(declare-fun tp_is_empty!23057 () Bool)

(declare-fun e!2659275 () Bool)

(declare-fun b!4283315 () Bool)

(declare-fun inv!62874 (Context!5586) Bool)

(assert (=> b!4283315 (= e!2659274 (and tp!1310241 (inv!62874 (_2!25531 (_1!25532 (h!52856 mapValue!19295)))) e!2659275 tp_is_empty!23057 setRes!26051 tp!1310243))))

(declare-fun condSetEmpty!26050 () Bool)

(assert (=> b!4283315 (= condSetEmpty!26050 (= (_2!25532 (h!52856 mapValue!19295)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283316 () Bool)

(declare-fun e!2659277 () Bool)

(declare-fun tp!1310246 () Bool)

(assert (=> b!4283316 (= e!2659277 tp!1310246)))

(declare-fun mapIsEmpty!19295 () Bool)

(declare-fun mapRes!19295 () Bool)

(assert (=> mapIsEmpty!19295 mapRes!19295))

(declare-fun tp!1310240 () Bool)

(declare-fun e!2659272 () Bool)

(declare-fun setRes!26050 () Bool)

(declare-fun setNonEmpty!26050 () Bool)

(declare-fun setElem!26051 () Context!5586)

(assert (=> setNonEmpty!26050 (= setRes!26050 (and tp!1310240 (inv!62874 setElem!26051) e!2659272))))

(declare-fun mapDefault!19295 () List!47560)

(declare-fun setRest!26050 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26050 (= (_2!25532 (h!52856 mapDefault!19295)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26051 true) setRest!26050))))

(declare-fun b!4283317 () Bool)

(declare-fun e!2659276 () Bool)

(declare-fun tp!1310242 () Bool)

(assert (=> b!4283317 (= e!2659276 tp!1310242)))

(declare-fun tp!1310244 () Bool)

(declare-fun b!4283318 () Bool)

(declare-fun tp!1310248 () Bool)

(declare-fun e!2659273 () Bool)

(assert (=> b!4283318 (= e!2659273 (and tp!1310244 (inv!62874 (_2!25531 (_1!25532 (h!52856 mapDefault!19295)))) e!2659276 tp_is_empty!23057 setRes!26050 tp!1310248))))

(declare-fun condSetEmpty!26051 () Bool)

(assert (=> b!4283318 (= condSetEmpty!26051 (= (_2!25532 (h!52856 mapDefault!19295)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283319 () Bool)

(declare-fun tp!1310247 () Bool)

(assert (=> b!4283319 (= e!2659275 tp!1310247)))

(declare-fun b!4283320 () Bool)

(declare-fun tp!1310239 () Bool)

(assert (=> b!4283320 (= e!2659272 tp!1310239)))

(declare-fun mapNonEmpty!19295 () Bool)

(declare-fun tp!1310238 () Bool)

(assert (=> mapNonEmpty!19295 (= mapRes!19295 (and tp!1310238 e!2659274))))

(declare-fun mapKey!19295 () (_ BitVec 32))

(declare-fun mapRest!19295 () (Array (_ BitVec 32) List!47560))

(assert (=> mapNonEmpty!19295 (= mapRest!19292 (store mapRest!19295 mapKey!19295 mapValue!19295))))

(declare-fun setNonEmpty!26051 () Bool)

(declare-fun setElem!26050 () Context!5586)

(declare-fun tp!1310245 () Bool)

(assert (=> setNonEmpty!26051 (= setRes!26051 (and tp!1310245 (inv!62874 setElem!26050) e!2659277))))

(declare-fun setRest!26051 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26051 (= (_2!25532 (h!52856 mapValue!19295)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26050 true) setRest!26051))))

(declare-fun condMapEmpty!19295 () Bool)

(assert (=> mapNonEmpty!19290 (= condMapEmpty!19295 (= mapRest!19292 ((as const (Array (_ BitVec 32) List!47560)) mapDefault!19295)))))

(assert (=> mapNonEmpty!19290 (= tp!1310214 (and e!2659273 mapRes!19295))))

(declare-fun setIsEmpty!26051 () Bool)

(assert (=> setIsEmpty!26051 setRes!26050))

(assert (= (and mapNonEmpty!19290 condMapEmpty!19295) mapIsEmpty!19295))

(assert (= (and mapNonEmpty!19290 (not condMapEmpty!19295)) mapNonEmpty!19295))

(assert (= b!4283315 b!4283319))

(assert (= (and b!4283315 condSetEmpty!26050) setIsEmpty!26050))

(assert (= (and b!4283315 (not condSetEmpty!26050)) setNonEmpty!26051))

(assert (= setNonEmpty!26051 b!4283316))

(assert (= (and mapNonEmpty!19295 ((_ is Cons!47436) mapValue!19295)) b!4283315))

(assert (= b!4283318 b!4283317))

(assert (= (and b!4283318 condSetEmpty!26051) setIsEmpty!26051))

(assert (= (and b!4283318 (not condSetEmpty!26051)) setNonEmpty!26050))

(assert (= setNonEmpty!26050 b!4283320))

(assert (= (and mapNonEmpty!19290 ((_ is Cons!47436) mapDefault!19295)) b!4283318))

(declare-fun m!4879965 () Bool)

(assert (=> setNonEmpty!26051 m!4879965))

(declare-fun m!4879967 () Bool)

(assert (=> mapNonEmpty!19295 m!4879967))

(declare-fun m!4879969 () Bool)

(assert (=> setNonEmpty!26050 m!4879969))

(declare-fun m!4879971 () Bool)

(assert (=> b!4283315 m!4879971))

(declare-fun m!4879973 () Bool)

(assert (=> b!4283318 m!4879973))

(declare-fun e!2659286 () Bool)

(declare-fun e!2659285 () Bool)

(declare-fun tp!1310262 () Bool)

(declare-fun setRes!26054 () Bool)

(declare-fun b!4283329 () Bool)

(declare-fun tp!1310260 () Bool)

(assert (=> b!4283329 (= e!2659286 (and tp!1310262 (inv!62874 (_2!25531 (_1!25532 (h!52856 mapValue!19291)))) e!2659285 tp_is_empty!23057 setRes!26054 tp!1310260))))

(declare-fun condSetEmpty!26054 () Bool)

(assert (=> b!4283329 (= condSetEmpty!26054 (= (_2!25532 (h!52856 mapValue!19291)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283330 () Bool)

(declare-fun e!2659284 () Bool)

(declare-fun tp!1310263 () Bool)

(assert (=> b!4283330 (= e!2659284 tp!1310263)))

(declare-fun setNonEmpty!26054 () Bool)

(declare-fun tp!1310261 () Bool)

(declare-fun setElem!26054 () Context!5586)

(assert (=> setNonEmpty!26054 (= setRes!26054 (and tp!1310261 (inv!62874 setElem!26054) e!2659284))))

(declare-fun setRest!26054 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26054 (= (_2!25532 (h!52856 mapValue!19291)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26054 true) setRest!26054))))

(assert (=> mapNonEmpty!19290 (= tp!1310215 e!2659286)))

(declare-fun setIsEmpty!26054 () Bool)

(assert (=> setIsEmpty!26054 setRes!26054))

(declare-fun b!4283331 () Bool)

(declare-fun tp!1310259 () Bool)

(assert (=> b!4283331 (= e!2659285 tp!1310259)))

(assert (= b!4283329 b!4283331))

(assert (= (and b!4283329 condSetEmpty!26054) setIsEmpty!26054))

(assert (= (and b!4283329 (not condSetEmpty!26054)) setNonEmpty!26054))

(assert (= setNonEmpty!26054 b!4283330))

(assert (= (and mapNonEmpty!19290 ((_ is Cons!47436) mapValue!19291)) b!4283329))

(declare-fun m!4879975 () Bool)

(assert (=> b!4283329 m!4879975))

(declare-fun m!4879977 () Bool)

(assert (=> setNonEmpty!26054 m!4879977))

(declare-fun tp!1310271 () Bool)

(declare-fun b!4283340 () Bool)

(declare-fun e!2659292 () Bool)

(declare-fun tp!1310270 () Bool)

(assert (=> b!4283340 (= e!2659292 (and (inv!62866 (left!35327 (c!730001 totalInput!528))) tp!1310270 (inv!62866 (right!35657 (c!730001 totalInput!528))) tp!1310271))))

(declare-fun b!4283342 () Bool)

(declare-fun e!2659291 () Bool)

(declare-fun tp!1310272 () Bool)

(assert (=> b!4283342 (= e!2659291 tp!1310272)))

(declare-fun b!4283341 () Bool)

(declare-fun inv!62875 (IArray!28755) Bool)

(assert (=> b!4283341 (= e!2659292 (and (inv!62875 (xs!17653 (c!730001 totalInput!528))) e!2659291))))

(assert (=> b!4283198 (= tp!1310203 (and (inv!62866 (c!730001 totalInput!528)) e!2659292))))

(assert (= (and b!4283198 ((_ is Node!14347) (c!730001 totalInput!528))) b!4283340))

(assert (= b!4283341 b!4283342))

(assert (= (and b!4283198 ((_ is Leaf!22200) (c!730001 totalInput!528))) b!4283341))

(declare-fun m!4879979 () Bool)

(assert (=> b!4283340 m!4879979))

(declare-fun m!4879981 () Bool)

(assert (=> b!4283340 m!4879981))

(declare-fun m!4879983 () Bool)

(assert (=> b!4283341 m!4879983))

(assert (=> b!4283198 m!4879873))

(declare-fun b!4283343 () Bool)

(declare-fun tp!1310274 () Bool)

(declare-fun setRes!26055 () Bool)

(declare-fun tp!1310276 () Bool)

(declare-fun e!2659295 () Bool)

(declare-fun e!2659294 () Bool)

(assert (=> b!4283343 (= e!2659295 (and tp!1310276 (inv!62874 (_2!25531 (_1!25532 (h!52856 (zeroValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))))) e!2659294 tp_is_empty!23057 setRes!26055 tp!1310274))))

(declare-fun condSetEmpty!26055 () Bool)

(assert (=> b!4283343 (= condSetEmpty!26055 (= (_2!25532 (h!52856 (zeroValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283344 () Bool)

(declare-fun e!2659293 () Bool)

(declare-fun tp!1310277 () Bool)

(assert (=> b!4283344 (= e!2659293 tp!1310277)))

(declare-fun tp!1310275 () Bool)

(declare-fun setNonEmpty!26055 () Bool)

(declare-fun setElem!26055 () Context!5586)

(assert (=> setNonEmpty!26055 (= setRes!26055 (and tp!1310275 (inv!62874 setElem!26055) e!2659293))))

(declare-fun setRest!26055 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26055 (= (_2!25532 (h!52856 (zeroValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26055 true) setRest!26055))))

(assert (=> b!4283225 (= tp!1310211 e!2659295)))

(declare-fun setIsEmpty!26055 () Bool)

(assert (=> setIsEmpty!26055 setRes!26055))

(declare-fun b!4283345 () Bool)

(declare-fun tp!1310273 () Bool)

(assert (=> b!4283345 (= e!2659294 tp!1310273)))

(assert (= b!4283343 b!4283345))

(assert (= (and b!4283343 condSetEmpty!26055) setIsEmpty!26055))

(assert (= (and b!4283343 (not condSetEmpty!26055)) setNonEmpty!26055))

(assert (= setNonEmpty!26055 b!4283344))

(assert (= (and b!4283225 ((_ is Cons!47436) (zeroValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))) b!4283343))

(declare-fun m!4879985 () Bool)

(assert (=> b!4283343 m!4879985))

(declare-fun m!4879987 () Bool)

(assert (=> setNonEmpty!26055 m!4879987))

(declare-fun b!4283346 () Bool)

(declare-fun e!2659297 () Bool)

(declare-fun tp!1310281 () Bool)

(declare-fun e!2659298 () Bool)

(declare-fun setRes!26056 () Bool)

(declare-fun tp!1310279 () Bool)

(assert (=> b!4283346 (= e!2659298 (and tp!1310281 (inv!62874 (_2!25531 (_1!25532 (h!52856 (minValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))))) e!2659297 tp_is_empty!23057 setRes!26056 tp!1310279))))

(declare-fun condSetEmpty!26056 () Bool)

(assert (=> b!4283346 (= condSetEmpty!26056 (= (_2!25532 (h!52856 (minValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283347 () Bool)

(declare-fun e!2659296 () Bool)

(declare-fun tp!1310282 () Bool)

(assert (=> b!4283347 (= e!2659296 tp!1310282)))

(declare-fun setElem!26056 () Context!5586)

(declare-fun tp!1310280 () Bool)

(declare-fun setNonEmpty!26056 () Bool)

(assert (=> setNonEmpty!26056 (= setRes!26056 (and tp!1310280 (inv!62874 setElem!26056) e!2659296))))

(declare-fun setRest!26056 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26056 (= (_2!25532 (h!52856 (minValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26056 true) setRest!26056))))

(assert (=> b!4283225 (= tp!1310202 e!2659298)))

(declare-fun setIsEmpty!26056 () Bool)

(assert (=> setIsEmpty!26056 setRes!26056))

(declare-fun b!4283348 () Bool)

(declare-fun tp!1310278 () Bool)

(assert (=> b!4283348 (= e!2659297 tp!1310278)))

(assert (= b!4283346 b!4283348))

(assert (= (and b!4283346 condSetEmpty!26056) setIsEmpty!26056))

(assert (= (and b!4283346 (not condSetEmpty!26056)) setNonEmpty!26056))

(assert (= setNonEmpty!26056 b!4283347))

(assert (= (and b!4283225 ((_ is Cons!47436) (minValue!4523 (v!41335 (underlying!8757 (v!41336 (underlying!8758 (cache!4310 cacheDown!738)))))))) b!4283346))

(declare-fun m!4879989 () Bool)

(assert (=> b!4283346 m!4879989))

(declare-fun m!4879991 () Bool)

(assert (=> setNonEmpty!26056 m!4879991))

(declare-fun setRes!26061 () Bool)

(declare-fun e!2659312 () Bool)

(declare-fun e!2659316 () Bool)

(declare-fun mapDefault!19298 () List!47562)

(declare-fun b!4283363 () Bool)

(declare-fun tp!1310303 () Bool)

(assert (=> b!4283363 (= e!2659316 (and (inv!62874 (_1!25533 (_1!25534 (h!52858 mapDefault!19298)))) e!2659312 tp_is_empty!23057 setRes!26061 tp!1310303))))

(declare-fun condSetEmpty!26062 () Bool)

(assert (=> b!4283363 (= condSetEmpty!26062 (= (_2!25534 (h!52858 mapDefault!19298)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283364 () Bool)

(declare-fun e!2659314 () Bool)

(declare-fun tp!1310308 () Bool)

(assert (=> b!4283364 (= e!2659314 tp!1310308)))

(declare-fun tp!1310301 () Bool)

(declare-fun setElem!26062 () Context!5586)

(declare-fun setNonEmpty!26061 () Bool)

(assert (=> setNonEmpty!26061 (= setRes!26061 (and tp!1310301 (inv!62874 setElem!26062) e!2659314))))

(declare-fun setRest!26062 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26061 (= (_2!25534 (h!52858 mapDefault!19298)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26062 true) setRest!26062))))

(declare-fun b!4283365 () Bool)

(declare-fun e!2659315 () Bool)

(declare-fun tp!1310309 () Bool)

(assert (=> b!4283365 (= e!2659315 tp!1310309)))

(declare-fun b!4283366 () Bool)

(declare-fun e!2659313 () Bool)

(declare-fun tp!1310306 () Bool)

(assert (=> b!4283366 (= e!2659313 tp!1310306)))

(declare-fun mapIsEmpty!19298 () Bool)

(declare-fun mapRes!19298 () Bool)

(assert (=> mapIsEmpty!19298 mapRes!19298))

(declare-fun setNonEmpty!26062 () Bool)

(declare-fun setElem!26061 () Context!5586)

(declare-fun setRes!26062 () Bool)

(declare-fun tp!1310302 () Bool)

(assert (=> setNonEmpty!26062 (= setRes!26062 (and tp!1310302 (inv!62874 setElem!26061) e!2659313))))

(declare-fun mapValue!19298 () List!47562)

(declare-fun setRest!26061 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26062 (= (_2!25534 (h!52858 mapValue!19298)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26061 true) setRest!26061))))

(declare-fun b!4283367 () Bool)

(declare-fun e!2659311 () Bool)

(declare-fun tp!1310305 () Bool)

(assert (=> b!4283367 (= e!2659311 (and (inv!62874 (_1!25533 (_1!25534 (h!52858 mapValue!19298)))) e!2659315 tp_is_empty!23057 setRes!26062 tp!1310305))))

(declare-fun condSetEmpty!26061 () Bool)

(assert (=> b!4283367 (= condSetEmpty!26061 (= (_2!25534 (h!52858 mapValue!19298)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun setIsEmpty!26061 () Bool)

(assert (=> setIsEmpty!26061 setRes!26062))

(declare-fun mapNonEmpty!19298 () Bool)

(declare-fun tp!1310307 () Bool)

(assert (=> mapNonEmpty!19298 (= mapRes!19298 (and tp!1310307 e!2659311))))

(declare-fun mapRest!19298 () (Array (_ BitVec 32) List!47562))

(declare-fun mapKey!19298 () (_ BitVec 32))

(assert (=> mapNonEmpty!19298 (= mapRest!19290 (store mapRest!19298 mapKey!19298 mapValue!19298))))

(declare-fun condMapEmpty!19298 () Bool)

(assert (=> mapNonEmpty!19291 (= condMapEmpty!19298 (= mapRest!19290 ((as const (Array (_ BitVec 32) List!47562)) mapDefault!19298)))))

(assert (=> mapNonEmpty!19291 (= tp!1310201 (and e!2659316 mapRes!19298))))

(declare-fun b!4283368 () Bool)

(declare-fun tp!1310304 () Bool)

(assert (=> b!4283368 (= e!2659312 tp!1310304)))

(declare-fun setIsEmpty!26062 () Bool)

(assert (=> setIsEmpty!26062 setRes!26061))

(assert (= (and mapNonEmpty!19291 condMapEmpty!19298) mapIsEmpty!19298))

(assert (= (and mapNonEmpty!19291 (not condMapEmpty!19298)) mapNonEmpty!19298))

(assert (= b!4283367 b!4283365))

(assert (= (and b!4283367 condSetEmpty!26061) setIsEmpty!26061))

(assert (= (and b!4283367 (not condSetEmpty!26061)) setNonEmpty!26062))

(assert (= setNonEmpty!26062 b!4283366))

(assert (= (and mapNonEmpty!19298 ((_ is Cons!47438) mapValue!19298)) b!4283367))

(assert (= b!4283363 b!4283368))

(assert (= (and b!4283363 condSetEmpty!26062) setIsEmpty!26062))

(assert (= (and b!4283363 (not condSetEmpty!26062)) setNonEmpty!26061))

(assert (= setNonEmpty!26061 b!4283364))

(assert (= (and mapNonEmpty!19291 ((_ is Cons!47438) mapDefault!19298)) b!4283363))

(declare-fun m!4879993 () Bool)

(assert (=> setNonEmpty!26062 m!4879993))

(declare-fun m!4879995 () Bool)

(assert (=> b!4283363 m!4879995))

(declare-fun m!4879997 () Bool)

(assert (=> mapNonEmpty!19298 m!4879997))

(declare-fun m!4879999 () Bool)

(assert (=> b!4283367 m!4879999))

(declare-fun m!4880001 () Bool)

(assert (=> setNonEmpty!26061 m!4880001))

(declare-fun e!2659325 () Bool)

(declare-fun e!2659324 () Bool)

(declare-fun tp!1310318 () Bool)

(declare-fun setRes!26065 () Bool)

(declare-fun b!4283377 () Bool)

(assert (=> b!4283377 (= e!2659324 (and (inv!62874 (_1!25533 (_1!25534 (h!52858 mapValue!19292)))) e!2659325 tp_is_empty!23057 setRes!26065 tp!1310318))))

(declare-fun condSetEmpty!26065 () Bool)

(assert (=> b!4283377 (= condSetEmpty!26065 (= (_2!25534 (h!52858 mapValue!19292)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283378 () Bool)

(declare-fun e!2659323 () Bool)

(declare-fun tp!1310320 () Bool)

(assert (=> b!4283378 (= e!2659323 tp!1310320)))

(declare-fun setIsEmpty!26065 () Bool)

(assert (=> setIsEmpty!26065 setRes!26065))

(declare-fun b!4283379 () Bool)

(declare-fun tp!1310319 () Bool)

(assert (=> b!4283379 (= e!2659325 tp!1310319)))

(assert (=> mapNonEmpty!19291 (= tp!1310206 e!2659324)))

(declare-fun setElem!26065 () Context!5586)

(declare-fun tp!1310321 () Bool)

(declare-fun setNonEmpty!26065 () Bool)

(assert (=> setNonEmpty!26065 (= setRes!26065 (and tp!1310321 (inv!62874 setElem!26065) e!2659323))))

(declare-fun setRest!26065 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26065 (= (_2!25534 (h!52858 mapValue!19292)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26065 true) setRest!26065))))

(assert (= b!4283377 b!4283379))

(assert (= (and b!4283377 condSetEmpty!26065) setIsEmpty!26065))

(assert (= (and b!4283377 (not condSetEmpty!26065)) setNonEmpty!26065))

(assert (= setNonEmpty!26065 b!4283378))

(assert (= (and mapNonEmpty!19291 ((_ is Cons!47438) mapValue!19292)) b!4283377))

(declare-fun m!4880003 () Bool)

(assert (=> b!4283377 m!4880003))

(declare-fun m!4880005 () Bool)

(assert (=> setNonEmpty!26065 m!4880005))

(declare-fun b!4283380 () Bool)

(declare-fun e!2659327 () Bool)

(declare-fun tp!1310322 () Bool)

(declare-fun e!2659328 () Bool)

(declare-fun setRes!26066 () Bool)

(assert (=> b!4283380 (= e!2659327 (and (inv!62874 (_1!25533 (_1!25534 (h!52858 mapDefault!19290)))) e!2659328 tp_is_empty!23057 setRes!26066 tp!1310322))))

(declare-fun condSetEmpty!26066 () Bool)

(assert (=> b!4283380 (= condSetEmpty!26066 (= (_2!25534 (h!52858 mapDefault!19290)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283381 () Bool)

(declare-fun e!2659326 () Bool)

(declare-fun tp!1310324 () Bool)

(assert (=> b!4283381 (= e!2659326 tp!1310324)))

(declare-fun setIsEmpty!26066 () Bool)

(assert (=> setIsEmpty!26066 setRes!26066))

(declare-fun b!4283382 () Bool)

(declare-fun tp!1310323 () Bool)

(assert (=> b!4283382 (= e!2659328 tp!1310323)))

(assert (=> b!4283208 (= tp!1310195 e!2659327)))

(declare-fun setElem!26066 () Context!5586)

(declare-fun setNonEmpty!26066 () Bool)

(declare-fun tp!1310325 () Bool)

(assert (=> setNonEmpty!26066 (= setRes!26066 (and tp!1310325 (inv!62874 setElem!26066) e!2659326))))

(declare-fun setRest!26066 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26066 (= (_2!25534 (h!52858 mapDefault!19290)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26066 true) setRest!26066))))

(assert (= b!4283380 b!4283382))

(assert (= (and b!4283380 condSetEmpty!26066) setIsEmpty!26066))

(assert (= (and b!4283380 (not condSetEmpty!26066)) setNonEmpty!26066))

(assert (= setNonEmpty!26066 b!4283381))

(assert (= (and b!4283208 ((_ is Cons!47438) mapDefault!19290)) b!4283380))

(declare-fun m!4880007 () Bool)

(assert (=> b!4283380 m!4880007))

(declare-fun m!4880009 () Bool)

(assert (=> setNonEmpty!26066 m!4880009))

(declare-fun b!4283396 () Bool)

(declare-fun e!2659331 () Bool)

(declare-fun tp!1310339 () Bool)

(declare-fun tp!1310336 () Bool)

(assert (=> b!4283396 (= e!2659331 (and tp!1310339 tp!1310336))))

(declare-fun b!4283393 () Bool)

(assert (=> b!4283393 (= e!2659331 tp_is_empty!23057)))

(assert (=> b!4283209 (= tp!1310212 e!2659331)))

(declare-fun b!4283394 () Bool)

(declare-fun tp!1310340 () Bool)

(declare-fun tp!1310337 () Bool)

(assert (=> b!4283394 (= e!2659331 (and tp!1310340 tp!1310337))))

(declare-fun b!4283395 () Bool)

(declare-fun tp!1310338 () Bool)

(assert (=> b!4283395 (= e!2659331 tp!1310338)))

(assert (= (and b!4283209 ((_ is ElementMatch!12903) (regex!7996 rule!232))) b!4283393))

(assert (= (and b!4283209 ((_ is Concat!21209) (regex!7996 rule!232))) b!4283394))

(assert (= (and b!4283209 ((_ is Star!12903) (regex!7996 rule!232))) b!4283395))

(assert (= (and b!4283209 ((_ is Union!12903) (regex!7996 rule!232))) b!4283396))

(declare-fun tp!1310341 () Bool)

(declare-fun tp!1310342 () Bool)

(declare-fun b!4283397 () Bool)

(declare-fun e!2659333 () Bool)

(assert (=> b!4283397 (= e!2659333 (and (inv!62866 (left!35327 (c!730001 (totalInput!4289 cacheFindLongestMatch!156)))) tp!1310341 (inv!62866 (right!35657 (c!730001 (totalInput!4289 cacheFindLongestMatch!156)))) tp!1310342))))

(declare-fun b!4283399 () Bool)

(declare-fun e!2659332 () Bool)

(declare-fun tp!1310343 () Bool)

(assert (=> b!4283399 (= e!2659332 tp!1310343)))

(declare-fun b!4283398 () Bool)

(assert (=> b!4283398 (= e!2659333 (and (inv!62875 (xs!17653 (c!730001 (totalInput!4289 cacheFindLongestMatch!156)))) e!2659332))))

(assert (=> b!4283217 (= tp!1310196 (and (inv!62866 (c!730001 (totalInput!4289 cacheFindLongestMatch!156))) e!2659333))))

(assert (= (and b!4283217 ((_ is Node!14347) (c!730001 (totalInput!4289 cacheFindLongestMatch!156)))) b!4283397))

(assert (= b!4283398 b!4283399))

(assert (= (and b!4283217 ((_ is Leaf!22200) (c!730001 (totalInput!4289 cacheFindLongestMatch!156)))) b!4283398))

(declare-fun m!4880011 () Bool)

(assert (=> b!4283397 m!4880011))

(declare-fun m!4880013 () Bool)

(assert (=> b!4283397 m!4880013))

(declare-fun m!4880015 () Bool)

(assert (=> b!4283398 m!4880015))

(assert (=> b!4283217 m!4879903))

(declare-fun b!4283407 () Bool)

(declare-fun e!2659339 () Bool)

(declare-fun tp!1310352 () Bool)

(assert (=> b!4283407 (= e!2659339 tp!1310352)))

(declare-fun e!2659338 () Bool)

(assert (=> b!4283210 (= tp!1310204 e!2659338)))

(declare-fun b!4283406 () Bool)

(declare-fun setRes!26069 () Bool)

(declare-fun tp!1310351 () Bool)

(assert (=> b!4283406 (= e!2659338 (and setRes!26069 tp!1310351))))

(declare-fun condSetEmpty!26069 () Bool)

(assert (=> b!4283406 (= condSetEmpty!26069 (= (_1!25529 (_1!25530 (h!52854 (zeroValue!4522 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun setIsEmpty!26069 () Bool)

(assert (=> setIsEmpty!26069 setRes!26069))

(declare-fun tp!1310350 () Bool)

(declare-fun setElem!26069 () Context!5586)

(declare-fun setNonEmpty!26069 () Bool)

(assert (=> setNonEmpty!26069 (= setRes!26069 (and tp!1310350 (inv!62874 setElem!26069) e!2659339))))

(declare-fun setRest!26069 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26069 (= (_1!25529 (_1!25530 (h!52854 (zeroValue!4522 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26069 true) setRest!26069))))

(assert (= (and b!4283406 condSetEmpty!26069) setIsEmpty!26069))

(assert (= (and b!4283406 (not condSetEmpty!26069)) setNonEmpty!26069))

(assert (= setNonEmpty!26069 b!4283407))

(assert (= (and b!4283210 ((_ is Cons!47434) (zeroValue!4522 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156)))))))) b!4283406))

(declare-fun m!4880017 () Bool)

(assert (=> setNonEmpty!26069 m!4880017))

(declare-fun b!4283409 () Bool)

(declare-fun e!2659341 () Bool)

(declare-fun tp!1310355 () Bool)

(assert (=> b!4283409 (= e!2659341 tp!1310355)))

(declare-fun e!2659340 () Bool)

(assert (=> b!4283210 (= tp!1310200 e!2659340)))

(declare-fun b!4283408 () Bool)

(declare-fun setRes!26070 () Bool)

(declare-fun tp!1310354 () Bool)

(assert (=> b!4283408 (= e!2659340 (and setRes!26070 tp!1310354))))

(declare-fun condSetEmpty!26070 () Bool)

(assert (=> b!4283408 (= condSetEmpty!26070 (= (_1!25529 (_1!25530 (h!52854 (minValue!4522 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun setIsEmpty!26070 () Bool)

(assert (=> setIsEmpty!26070 setRes!26070))

(declare-fun tp!1310353 () Bool)

(declare-fun setElem!26070 () Context!5586)

(declare-fun setNonEmpty!26070 () Bool)

(assert (=> setNonEmpty!26070 (= setRes!26070 (and tp!1310353 (inv!62874 setElem!26070) e!2659341))))

(declare-fun setRest!26070 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26070 (= (_1!25529 (_1!25530 (h!52854 (minValue!4522 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26070 true) setRest!26070))))

(assert (= (and b!4283408 condSetEmpty!26070) setIsEmpty!26070))

(assert (= (and b!4283408 (not condSetEmpty!26070)) setNonEmpty!26070))

(assert (= setNonEmpty!26070 b!4283409))

(assert (= (and b!4283210 ((_ is Cons!47434) (minValue!4522 (v!41333 (underlying!8755 (v!41334 (underlying!8756 (cache!4309 cacheFindLongestMatch!156)))))))) b!4283408))

(declare-fun m!4880019 () Bool)

(assert (=> setNonEmpty!26070 m!4880019))

(declare-fun e!2659344 () Bool)

(declare-fun setRes!26071 () Bool)

(declare-fun tp!1310357 () Bool)

(declare-fun b!4283410 () Bool)

(declare-fun e!2659343 () Bool)

(declare-fun tp!1310359 () Bool)

(assert (=> b!4283410 (= e!2659344 (and tp!1310359 (inv!62874 (_2!25531 (_1!25532 (h!52856 mapDefault!19291)))) e!2659343 tp_is_empty!23057 setRes!26071 tp!1310357))))

(declare-fun condSetEmpty!26071 () Bool)

(assert (=> b!4283410 (= condSetEmpty!26071 (= (_2!25532 (h!52856 mapDefault!19291)) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283411 () Bool)

(declare-fun e!2659342 () Bool)

(declare-fun tp!1310360 () Bool)

(assert (=> b!4283411 (= e!2659342 tp!1310360)))

(declare-fun setElem!26071 () Context!5586)

(declare-fun setNonEmpty!26071 () Bool)

(declare-fun tp!1310358 () Bool)

(assert (=> setNonEmpty!26071 (= setRes!26071 (and tp!1310358 (inv!62874 setElem!26071) e!2659342))))

(declare-fun setRest!26071 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26071 (= (_2!25532 (h!52856 mapDefault!19291)) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26071 true) setRest!26071))))

(assert (=> b!4283201 (= tp!1310189 e!2659344)))

(declare-fun setIsEmpty!26071 () Bool)

(assert (=> setIsEmpty!26071 setRes!26071))

(declare-fun b!4283412 () Bool)

(declare-fun tp!1310356 () Bool)

(assert (=> b!4283412 (= e!2659343 tp!1310356)))

(assert (= b!4283410 b!4283412))

(assert (= (and b!4283410 condSetEmpty!26071) setIsEmpty!26071))

(assert (= (and b!4283410 (not condSetEmpty!26071)) setNonEmpty!26071))

(assert (= setNonEmpty!26071 b!4283411))

(assert (= (and b!4283201 ((_ is Cons!47436) mapDefault!19291)) b!4283410))

(declare-fun m!4880021 () Bool)

(assert (=> b!4283410 m!4880021))

(declare-fun m!4880023 () Bool)

(assert (=> setNonEmpty!26071 m!4880023))

(declare-fun b!4283414 () Bool)

(declare-fun e!2659346 () Bool)

(declare-fun tp!1310363 () Bool)

(assert (=> b!4283414 (= e!2659346 tp!1310363)))

(declare-fun e!2659345 () Bool)

(assert (=> b!4283193 (= tp!1310191 e!2659345)))

(declare-fun b!4283413 () Bool)

(declare-fun setRes!26072 () Bool)

(declare-fun tp!1310362 () Bool)

(assert (=> b!4283413 (= e!2659345 (and setRes!26072 tp!1310362))))

(declare-fun condSetEmpty!26072 () Bool)

(assert (=> b!4283413 (= condSetEmpty!26072 (= (_1!25529 (_1!25530 (h!52854 mapDefault!19292))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun setIsEmpty!26072 () Bool)

(assert (=> setIsEmpty!26072 setRes!26072))

(declare-fun tp!1310361 () Bool)

(declare-fun setElem!26072 () Context!5586)

(declare-fun setNonEmpty!26072 () Bool)

(assert (=> setNonEmpty!26072 (= setRes!26072 (and tp!1310361 (inv!62874 setElem!26072) e!2659346))))

(declare-fun setRest!26072 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26072 (= (_1!25529 (_1!25530 (h!52854 mapDefault!19292))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26072 true) setRest!26072))))

(assert (= (and b!4283413 condSetEmpty!26072) setIsEmpty!26072))

(assert (= (and b!4283413 (not condSetEmpty!26072)) setNonEmpty!26072))

(assert (= setNonEmpty!26072 b!4283414))

(assert (= (and b!4283193 ((_ is Cons!47434) mapDefault!19292)) b!4283413))

(declare-fun m!4880025 () Bool)

(assert (=> setNonEmpty!26072 m!4880025))

(declare-fun b!4283415 () Bool)

(declare-fun e!2659348 () Bool)

(declare-fun tp!1310364 () Bool)

(declare-fun tp!1310365 () Bool)

(assert (=> b!4283415 (= e!2659348 (and (inv!62866 (left!35327 (c!730001 input!1632))) tp!1310364 (inv!62866 (right!35657 (c!730001 input!1632))) tp!1310365))))

(declare-fun b!4283417 () Bool)

(declare-fun e!2659347 () Bool)

(declare-fun tp!1310366 () Bool)

(assert (=> b!4283417 (= e!2659347 tp!1310366)))

(declare-fun b!4283416 () Bool)

(assert (=> b!4283416 (= e!2659348 (and (inv!62875 (xs!17653 (c!730001 input!1632))) e!2659347))))

(assert (=> b!4283211 (= tp!1310205 (and (inv!62866 (c!730001 input!1632)) e!2659348))))

(assert (= (and b!4283211 ((_ is Node!14347) (c!730001 input!1632))) b!4283415))

(assert (= b!4283416 b!4283417))

(assert (= (and b!4283211 ((_ is Leaf!22200) (c!730001 input!1632))) b!4283416))

(declare-fun m!4880027 () Bool)

(assert (=> b!4283415 m!4880027))

(declare-fun m!4880029 () Bool)

(assert (=> b!4283415 m!4880029))

(declare-fun m!4880031 () Bool)

(assert (=> b!4283416 m!4880031))

(assert (=> b!4283211 m!4879887))

(declare-fun setRes!26073 () Bool)

(declare-fun tp!1310367 () Bool)

(declare-fun b!4283418 () Bool)

(declare-fun e!2659350 () Bool)

(declare-fun e!2659351 () Bool)

(assert (=> b!4283418 (= e!2659350 (and (inv!62874 (_1!25533 (_1!25534 (h!52858 (zeroValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))))) e!2659351 tp_is_empty!23057 setRes!26073 tp!1310367))))

(declare-fun condSetEmpty!26073 () Bool)

(assert (=> b!4283418 (= condSetEmpty!26073 (= (_2!25534 (h!52858 (zeroValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283419 () Bool)

(declare-fun e!2659349 () Bool)

(declare-fun tp!1310369 () Bool)

(assert (=> b!4283419 (= e!2659349 tp!1310369)))

(declare-fun setIsEmpty!26073 () Bool)

(assert (=> setIsEmpty!26073 setRes!26073))

(declare-fun b!4283420 () Bool)

(declare-fun tp!1310368 () Bool)

(assert (=> b!4283420 (= e!2659351 tp!1310368)))

(assert (=> b!4283219 (= tp!1310207 e!2659350)))

(declare-fun setElem!26073 () Context!5586)

(declare-fun tp!1310370 () Bool)

(declare-fun setNonEmpty!26073 () Bool)

(assert (=> setNonEmpty!26073 (= setRes!26073 (and tp!1310370 (inv!62874 setElem!26073) e!2659349))))

(declare-fun setRest!26073 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26073 (= (_2!25534 (h!52858 (zeroValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26073 true) setRest!26073))))

(assert (= b!4283418 b!4283420))

(assert (= (and b!4283418 condSetEmpty!26073) setIsEmpty!26073))

(assert (= (and b!4283418 (not condSetEmpty!26073)) setNonEmpty!26073))

(assert (= setNonEmpty!26073 b!4283419))

(assert (= (and b!4283219 ((_ is Cons!47438) (zeroValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))) b!4283418))

(declare-fun m!4880033 () Bool)

(assert (=> b!4283418 m!4880033))

(declare-fun m!4880035 () Bool)

(assert (=> setNonEmpty!26073 m!4880035))

(declare-fun e!2659353 () Bool)

(declare-fun b!4283421 () Bool)

(declare-fun e!2659354 () Bool)

(declare-fun setRes!26074 () Bool)

(declare-fun tp!1310371 () Bool)

(assert (=> b!4283421 (= e!2659353 (and (inv!62874 (_1!25533 (_1!25534 (h!52858 (minValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))))) e!2659354 tp_is_empty!23057 setRes!26074 tp!1310371))))

(declare-fun condSetEmpty!26074 () Bool)

(assert (=> b!4283421 (= condSetEmpty!26074 (= (_2!25534 (h!52858 (minValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283422 () Bool)

(declare-fun e!2659352 () Bool)

(declare-fun tp!1310373 () Bool)

(assert (=> b!4283422 (= e!2659352 tp!1310373)))

(declare-fun setIsEmpty!26074 () Bool)

(assert (=> setIsEmpty!26074 setRes!26074))

(declare-fun b!4283423 () Bool)

(declare-fun tp!1310372 () Bool)

(assert (=> b!4283423 (= e!2659354 tp!1310372)))

(assert (=> b!4283219 (= tp!1310194 e!2659353)))

(declare-fun tp!1310374 () Bool)

(declare-fun setElem!26074 () Context!5586)

(declare-fun setNonEmpty!26074 () Bool)

(assert (=> setNonEmpty!26074 (= setRes!26074 (and tp!1310374 (inv!62874 setElem!26074) e!2659352))))

(declare-fun setRest!26074 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26074 (= (_2!25534 (h!52858 (minValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26074 true) setRest!26074))))

(assert (= b!4283421 b!4283423))

(assert (= (and b!4283421 condSetEmpty!26074) setIsEmpty!26074))

(assert (= (and b!4283421 (not condSetEmpty!26074)) setNonEmpty!26074))

(assert (= setNonEmpty!26074 b!4283422))

(assert (= (and b!4283219 ((_ is Cons!47438) (minValue!4524 (v!41337 (underlying!8759 (v!41338 (underlying!8760 (cache!4311 cacheUp!725)))))))) b!4283421))

(declare-fun m!4880037 () Bool)

(assert (=> b!4283421 m!4880037))

(declare-fun m!4880039 () Bool)

(assert (=> setNonEmpty!26074 m!4880039))

(declare-fun b!4283434 () Bool)

(declare-fun e!2659366 () Bool)

(declare-fun setRes!26080 () Bool)

(declare-fun tp!1310392 () Bool)

(assert (=> b!4283434 (= e!2659366 (and setRes!26080 tp!1310392))))

(declare-fun condSetEmpty!26080 () Bool)

(declare-fun mapValue!19301 () List!47558)

(assert (=> b!4283434 (= condSetEmpty!26080 (= (_1!25529 (_1!25530 (h!52854 mapValue!19301))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun setIsEmpty!26079 () Bool)

(declare-fun setRes!26079 () Bool)

(assert (=> setIsEmpty!26079 setRes!26079))

(declare-fun b!4283435 () Bool)

(declare-fun e!2659365 () Bool)

(declare-fun tp!1310390 () Bool)

(assert (=> b!4283435 (= e!2659365 tp!1310390)))

(declare-fun b!4283436 () Bool)

(declare-fun e!2659364 () Bool)

(declare-fun tp!1310391 () Bool)

(assert (=> b!4283436 (= e!2659364 (and setRes!26079 tp!1310391))))

(declare-fun condSetEmpty!26079 () Bool)

(declare-fun mapDefault!19301 () List!47558)

(assert (=> b!4283436 (= condSetEmpty!26079 (= (_1!25529 (_1!25530 (h!52854 mapDefault!19301))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun b!4283437 () Bool)

(declare-fun e!2659363 () Bool)

(declare-fun tp!1310389 () Bool)

(assert (=> b!4283437 (= e!2659363 tp!1310389)))

(declare-fun mapIsEmpty!19301 () Bool)

(declare-fun mapRes!19301 () Bool)

(assert (=> mapIsEmpty!19301 mapRes!19301))

(declare-fun setNonEmpty!26080 () Bool)

(declare-fun setElem!26080 () Context!5586)

(declare-fun tp!1310393 () Bool)

(assert (=> setNonEmpty!26080 (= setRes!26080 (and tp!1310393 (inv!62874 setElem!26080) e!2659363))))

(declare-fun setRest!26080 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26080 (= (_1!25529 (_1!25530 (h!52854 mapValue!19301))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26080 true) setRest!26080))))

(declare-fun setNonEmpty!26079 () Bool)

(declare-fun tp!1310395 () Bool)

(declare-fun setElem!26079 () Context!5586)

(assert (=> setNonEmpty!26079 (= setRes!26079 (and tp!1310395 (inv!62874 setElem!26079) e!2659365))))

(declare-fun setRest!26079 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26079 (= (_1!25529 (_1!25530 (h!52854 mapDefault!19301))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26079 true) setRest!26079))))

(declare-fun condMapEmpty!19301 () Bool)

(assert (=> mapNonEmpty!19292 (= condMapEmpty!19301 (= mapRest!19291 ((as const (Array (_ BitVec 32) List!47558)) mapDefault!19301)))))

(assert (=> mapNonEmpty!19292 (= tp!1310208 (and e!2659364 mapRes!19301))))

(declare-fun mapNonEmpty!19301 () Bool)

(declare-fun tp!1310394 () Bool)

(assert (=> mapNonEmpty!19301 (= mapRes!19301 (and tp!1310394 e!2659366))))

(declare-fun mapRest!19301 () (Array (_ BitVec 32) List!47558))

(declare-fun mapKey!19301 () (_ BitVec 32))

(assert (=> mapNonEmpty!19301 (= mapRest!19291 (store mapRest!19301 mapKey!19301 mapValue!19301))))

(declare-fun setIsEmpty!26080 () Bool)

(assert (=> setIsEmpty!26080 setRes!26080))

(assert (= (and mapNonEmpty!19292 condMapEmpty!19301) mapIsEmpty!19301))

(assert (= (and mapNonEmpty!19292 (not condMapEmpty!19301)) mapNonEmpty!19301))

(assert (= (and b!4283434 condSetEmpty!26080) setIsEmpty!26080))

(assert (= (and b!4283434 (not condSetEmpty!26080)) setNonEmpty!26080))

(assert (= setNonEmpty!26080 b!4283437))

(assert (= (and mapNonEmpty!19301 ((_ is Cons!47434) mapValue!19301)) b!4283434))

(assert (= (and b!4283436 condSetEmpty!26079) setIsEmpty!26079))

(assert (= (and b!4283436 (not condSetEmpty!26079)) setNonEmpty!26079))

(assert (= setNonEmpty!26079 b!4283435))

(assert (= (and mapNonEmpty!19292 ((_ is Cons!47434) mapDefault!19301)) b!4283436))

(declare-fun m!4880041 () Bool)

(assert (=> setNonEmpty!26080 m!4880041))

(declare-fun m!4880043 () Bool)

(assert (=> setNonEmpty!26079 m!4880043))

(declare-fun m!4880045 () Bool)

(assert (=> mapNonEmpty!19301 m!4880045))

(declare-fun b!4283439 () Bool)

(declare-fun e!2659368 () Bool)

(declare-fun tp!1310398 () Bool)

(assert (=> b!4283439 (= e!2659368 tp!1310398)))

(declare-fun e!2659367 () Bool)

(assert (=> mapNonEmpty!19292 (= tp!1310199 e!2659367)))

(declare-fun b!4283438 () Bool)

(declare-fun setRes!26081 () Bool)

(declare-fun tp!1310397 () Bool)

(assert (=> b!4283438 (= e!2659367 (and setRes!26081 tp!1310397))))

(declare-fun condSetEmpty!26081 () Bool)

(assert (=> b!4283438 (= condSetEmpty!26081 (= (_1!25529 (_1!25530 (h!52854 mapValue!19290))) ((as const (Array Context!5586 Bool)) false)))))

(declare-fun setIsEmpty!26081 () Bool)

(assert (=> setIsEmpty!26081 setRes!26081))

(declare-fun setElem!26081 () Context!5586)

(declare-fun setNonEmpty!26081 () Bool)

(declare-fun tp!1310396 () Bool)

(assert (=> setNonEmpty!26081 (= setRes!26081 (and tp!1310396 (inv!62874 setElem!26081) e!2659368))))

(declare-fun setRest!26081 () (InoxSet Context!5586))

(assert (=> setNonEmpty!26081 (= (_1!25529 (_1!25530 (h!52854 mapValue!19290))) ((_ map or) (store ((as const (Array Context!5586 Bool)) false) setElem!26081 true) setRest!26081))))

(assert (= (and b!4283438 condSetEmpty!26081) setIsEmpty!26081))

(assert (= (and b!4283438 (not condSetEmpty!26081)) setNonEmpty!26081))

(assert (= setNonEmpty!26081 b!4283439))

(assert (= (and mapNonEmpty!19292 ((_ is Cons!47434) mapValue!19290)) b!4283438))

(declare-fun m!4880047 () Bool)

(assert (=> setNonEmpty!26081 m!4880047))

(check-sat (not setNonEmpty!26081) (not d!1265021) (not d!1265043) (not b_next!127495) (not setNonEmpty!26056) (not b!4283378) (not b!4283365) (not b!4283340) (not b!4283284) (not b!4283283) (not b!4283435) (not b!4283397) (not b!4283217) (not b!4283348) (not b!4283422) (not b_next!127489) (not b!4283329) (not b_next!127483) (not d!1265009) (not b!4283198) (not b!4283341) (not d!1264997) (not b!4283344) (not b!4283411) (not setNonEmpty!26066) (not b!4283420) (not b!4283330) (not b!4283246) (not b!4283288) (not b!4283382) (not setNonEmpty!26074) (not b!4283366) (not setNonEmpty!26065) (not b!4283421) (not b!4283395) (not b_next!127485) (not b!4283417) (not b!4283416) (not b!4283419) (not d!1265017) (not b!4283232) (not setNonEmpty!26069) (not b!4283379) (not b!4283291) b_and!337987 (not setNonEmpty!26079) (not b!4283396) b_and!337989 (not b!4283316) (not d!1265019) (not b!4283439) (not b!4283399) (not b!4283238) (not b!4283211) (not b!4283408) (not b!4283398) (not setNonEmpty!26072) (not d!1265023) (not d!1265033) (not b!4283243) (not b!4283438) (not b!4283423) (not b!4283320) (not b!4283368) b_and!337981 (not b!4283342) b_and!337991 (not b!4283347) (not b!4283319) (not setNonEmpty!26054) (not b!4283294) (not b!4283410) (not bm!294426) (not b!4283407) (not d!1264995) (not b!4283343) (not b!4283315) (not b!4283318) (not b!4283412) (not b_next!127487) (not b!4283240) (not b!4283418) (not d!1265045) (not b!4283234) (not b!4283437) (not b_next!127497) (not setNonEmpty!26071) (not b!4283299) b_and!337983 (not b!4283346) (not bm!294424) (not b!4283413) (not setNonEmpty!26061) (not setNonEmpty!26070) (not b_next!127493) (not b!4283317) (not b!4283434) (not b!4283409) (not b!4283363) (not setNonEmpty!26051) (not b!4283331) (not b!4283364) (not setNonEmpty!26050) (not b!4283345) (not b_next!127491) tp_is_empty!23057 (not setNonEmpty!26062) (not b!4283381) (not b!4283367) b_and!337995 (not b!4283268) (not mapNonEmpty!19298) (not b!4283282) (not setNonEmpty!26080) (not b!4283415) (not b!4283436) (not setNonEmpty!26055) (not d!1265041) (not b!4283394) (not mapNonEmpty!19301) (not b!4283377) (not b!4283237) (not mapNonEmpty!19295) b_and!337993 (not b!4283414) (not b!4283406) (not d!1264999) (not setNonEmpty!26073) b_and!337985 (not b!4283380) (not b!4283244))
(check-sat (not b_next!127495) (not b_next!127489) (not b_next!127483) (not b_next!127485) b_and!337981 b_and!337991 (not b_next!127487) (not b_next!127493) (not b_next!127491) b_and!337995 b_and!337993 b_and!337985 b_and!337987 b_and!337989 (not b_next!127497) b_and!337983)
