; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64782 () Bool)

(assert start!64782)

(declare-fun b!662289 () Bool)

(declare-fun b_free!19165 () Bool)

(declare-fun b_next!19229 () Bool)

(assert (=> b!662289 (= b_free!19165 (not b_next!19229))))

(declare-fun tp!202219 () Bool)

(declare-fun b_and!62959 () Bool)

(assert (=> b!662289 (= tp!202219 b_and!62959)))

(declare-fun b!662288 () Bool)

(declare-fun b_free!19167 () Bool)

(declare-fun b_next!19231 () Bool)

(assert (=> b!662288 (= b_free!19167 (not b_next!19231))))

(declare-fun tp!202222 () Bool)

(declare-fun b_and!62961 () Bool)

(assert (=> b!662288 (= tp!202222 b_and!62961)))

(declare-fun b!662291 () Bool)

(declare-fun b_free!19169 () Bool)

(declare-fun b_next!19233 () Bool)

(assert (=> b!662291 (= b_free!19169 (not b_next!19233))))

(declare-fun tp!202216 () Bool)

(declare-fun b_and!62963 () Bool)

(assert (=> b!662291 (= tp!202216 b_and!62963)))

(declare-fun b!662276 () Bool)

(declare-fun b_free!19171 () Bool)

(declare-fun b_next!19235 () Bool)

(assert (=> b!662276 (= b_free!19171 (not b_next!19235))))

(declare-fun tp!202226 () Bool)

(declare-fun b_and!62965 () Bool)

(assert (=> b!662276 (= tp!202226 b_and!62965)))

(declare-fun mapIsEmpty!2776 () Bool)

(declare-fun mapRes!2776 () Bool)

(assert (=> mapIsEmpty!2776 mapRes!2776))

(declare-fun mapNonEmpty!2776 () Bool)

(declare-fun mapRes!2777 () Bool)

(declare-fun tp!202220 () Bool)

(declare-fun tp!202228 () Bool)

(assert (=> mapNonEmpty!2776 (= mapRes!2777 (and tp!202220 tp!202228))))

(declare-datatypes ((Regex!1805 0))(
  ( (ElementMatch!1805 (c!119114 (_ BitVec 16))) (Concat!3308 (regOne!4122 Regex!1805) (regTwo!4122 Regex!1805)) (EmptyExpr!1805) (Star!1805 (reg!2134 Regex!1805)) (EmptyLang!1805) (Union!1805 (regOne!4123 Regex!1805) (regTwo!4123 Regex!1805)) )
))
(declare-datatypes ((List!7266 0))(
  ( (Nil!7252) (Cons!7252 (h!12653 Regex!1805) (t!86499 List!7266)) )
))
(declare-datatypes ((Context!434 0))(
  ( (Context!435 (exprs!717 List!7266)) )
))
(declare-datatypes ((tuple2!7594 0))(
  ( (tuple2!7595 (_1!4173 Context!434) (_2!4173 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7596 0))(
  ( (tuple2!7597 (_1!4174 tuple2!7594) (_2!4174 (InoxSet Context!434))) )
))
(declare-datatypes ((List!7267 0))(
  ( (Nil!7253) (Cons!7253 (h!12654 tuple2!7596) (t!86500 List!7267)) )
))
(declare-fun mapRest!2776 () (Array (_ BitVec 32) List!7267))

(declare-fun mapKey!2777 () (_ BitVec 32))

(declare-datatypes ((Hashable!672 0))(
  ( (HashableExt!671 (__x!5115 Int)) )
))
(declare-datatypes ((array!2655 0))(
  ( (array!2656 (arr!1203 (Array (_ BitVec 32) List!7267)) (size!5718 (_ BitVec 32))) )
))
(declare-datatypes ((array!2657 0))(
  ( (array!2658 (arr!1204 (Array (_ BitVec 32) (_ BitVec 64))) (size!5719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1400 0))(
  ( (LongMapFixedSize!1401 (defaultEntry!1056 Int) (mask!2482 (_ BitVec 32)) (extraKeys!947 (_ BitVec 32)) (zeroValue!957 List!7267) (minValue!957 List!7267) (_size!1509 (_ BitVec 32)) (_keys!994 array!2657) (_values!979 array!2655) (_vacant!761 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2741 0))(
  ( (Cell!2742 (v!17385 LongMapFixedSize!1400)) )
))
(declare-datatypes ((MutLongMap!700 0))(
  ( (LongMap!700 (underlying!1583 Cell!2741)) (MutLongMapExt!699 (__x!5116 Int)) )
))
(declare-datatypes ((Cell!2743 0))(
  ( (Cell!2744 (v!17386 MutLongMap!700)) )
))
(declare-datatypes ((MutableMap!672 0))(
  ( (MutableMapExt!671 (__x!5117 Int)) (HashMap!672 (underlying!1584 Cell!2743) (hashF!2580 Hashable!672) (_size!1510 (_ BitVec 32)) (defaultValue!823 Int)) )
))
(declare-datatypes ((CacheUp!332 0))(
  ( (CacheUp!333 (cache!1059 MutableMap!672)) )
))
(declare-fun cacheUp!335 () CacheUp!332)

(declare-fun mapValue!2776 () List!7267)

(assert (=> mapNonEmpty!2776 (= (arr!1203 (_values!979 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) (store mapRest!2776 mapKey!2777 mapValue!2776))))

(declare-fun b!662275 () Bool)

(declare-fun e!409838 () Bool)

(declare-fun e!409831 () Bool)

(assert (=> b!662275 (= e!409838 e!409831)))

(declare-fun tp!202218 () Bool)

(declare-datatypes ((tuple3!650 0))(
  ( (tuple3!651 (_1!4175 Regex!1805) (_2!4175 Context!434) (_3!376 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7598 0))(
  ( (tuple2!7599 (_1!4176 tuple3!650) (_2!4176 (InoxSet Context!434))) )
))
(declare-datatypes ((List!7268 0))(
  ( (Nil!7254) (Cons!7254 (h!12655 tuple2!7598) (t!86501 List!7268)) )
))
(declare-datatypes ((array!2659 0))(
  ( (array!2660 (arr!1205 (Array (_ BitVec 32) List!7268)) (size!5720 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1402 0))(
  ( (LongMapFixedSize!1403 (defaultEntry!1057 Int) (mask!2483 (_ BitVec 32)) (extraKeys!948 (_ BitVec 32)) (zeroValue!958 List!7268) (minValue!958 List!7268) (_size!1511 (_ BitVec 32)) (_keys!995 array!2657) (_values!980 array!2659) (_vacant!762 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2745 0))(
  ( (Cell!2746 (v!17387 LongMapFixedSize!1402)) )
))
(declare-datatypes ((MutLongMap!701 0))(
  ( (LongMap!701 (underlying!1585 Cell!2745)) (MutLongMapExt!700 (__x!5118 Int)) )
))
(declare-datatypes ((Cell!2747 0))(
  ( (Cell!2748 (v!17388 MutLongMap!701)) )
))
(declare-datatypes ((Hashable!673 0))(
  ( (HashableExt!672 (__x!5119 Int)) )
))
(declare-datatypes ((MutableMap!673 0))(
  ( (MutableMapExt!672 (__x!5120 Int)) (HashMap!673 (underlying!1586 Cell!2747) (hashF!2581 Hashable!673) (_size!1512 (_ BitVec 32)) (defaultValue!824 Int)) )
))
(declare-datatypes ((CacheDown!334 0))(
  ( (CacheDown!335 (cache!1060 MutableMap!673)) )
))
(declare-fun cacheDown!348 () CacheDown!334)

(declare-fun e!409840 () Bool)

(declare-fun e!409836 () Bool)

(declare-fun tp!202217 () Bool)

(declare-fun array_inv!878 (array!2657) Bool)

(declare-fun array_inv!879 (array!2659) Bool)

(assert (=> b!662276 (= e!409840 (and tp!202226 tp!202217 tp!202218 (array_inv!878 (_keys!995 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) (array_inv!879 (_values!980 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) e!409836))))

(declare-fun b!662277 () Bool)

(declare-fun e!409829 () Bool)

(declare-fun e!409833 () Bool)

(assert (=> b!662277 (= e!409829 e!409833)))

(declare-fun b!662278 () Bool)

(declare-fun e!409844 () Bool)

(declare-fun e!409842 () Bool)

(assert (=> b!662278 (= e!409844 e!409842)))

(declare-fun b!662279 () Bool)

(declare-fun e!409843 () Bool)

(declare-fun lt!282193 () MutLongMap!701)

(get-info :version)

(assert (=> b!662279 (= e!409843 (and e!409838 ((_ is LongMap!701) lt!282193)))))

(assert (=> b!662279 (= lt!282193 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))

(declare-fun b!662280 () Bool)

(declare-fun tp!202224 () Bool)

(assert (=> b!662280 (= e!409836 (and tp!202224 mapRes!2776))))

(declare-fun condMapEmpty!2776 () Bool)

(declare-fun mapDefault!2777 () List!7268)

(assert (=> b!662280 (= condMapEmpty!2776 (= (arr!1205 (_values!980 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) ((as const (Array (_ BitVec 32) List!7268)) mapDefault!2777)))))

(declare-fun b!662281 () Bool)

(declare-fun e!409837 () Bool)

(declare-fun e!409841 () Bool)

(assert (=> b!662281 (= e!409837 e!409841)))

(declare-fun res!293740 () Bool)

(assert (=> b!662281 (=> (not res!293740) (not e!409841))))

(declare-datatypes ((List!7269 0))(
  ( (Nil!7255) (Cons!7255 (h!12656 (_ BitVec 16)) (t!86502 List!7269)) )
))
(declare-datatypes ((TokenValue!1503 0))(
  ( (FloatLiteralValue!3006 (text!10966 List!7269)) (TokenValueExt!1502 (__x!5121 Int)) (Broken!7515 (value!46993 List!7269)) (Object!1516) (End!1503) (Def!1503) (Underscore!1503) (Match!1503) (Else!1503) (Error!1503) (Case!1503) (If!1503) (Extends!1503) (Abstract!1503) (Class!1503) (Val!1503) (DelimiterValue!3006 (del!1563 List!7269)) (KeywordValue!1509 (value!46994 List!7269)) (CommentValue!3006 (value!46995 List!7269)) (WhitespaceValue!3006 (value!46996 List!7269)) (IndentationValue!1503 (value!46997 List!7269)) (String!9254) (Int32!1503) (Broken!7516 (value!46998 List!7269)) (Boolean!1504) (Unit!12517) (OperatorValue!1506 (op!1563 List!7269)) (IdentifierValue!3006 (value!46999 List!7269)) (IdentifierValue!3007 (value!47000 List!7269)) (WhitespaceValue!3007 (value!47001 List!7269)) (True!3006) (False!3006) (Broken!7517 (value!47002 List!7269)) (Broken!7518 (value!47003 List!7269)) (True!3007) (RightBrace!1503) (RightBracket!1503) (Colon!1503) (Null!1503) (Comma!1503) (LeftBracket!1503) (False!3007) (LeftBrace!1503) (ImaginaryLiteralValue!1503 (text!10967 List!7269)) (StringLiteralValue!4509 (value!47004 List!7269)) (EOFValue!1503 (value!47005 List!7269)) (IdentValue!1503 (value!47006 List!7269)) (DelimiterValue!3007 (value!47007 List!7269)) (DedentValue!1503 (value!47008 List!7269)) (NewLineValue!1503 (value!47009 List!7269)) (IntegerValue!4509 (value!47010 (_ BitVec 32)) (text!10968 List!7269)) (IntegerValue!4510 (value!47011 Int) (text!10969 List!7269)) (Times!1503) (Or!1503) (Equal!1503) (Minus!1503) (Broken!7519 (value!47012 List!7269)) (And!1503) (Div!1503) (LessEqual!1503) (Mod!1503) (Concat!3309) (Not!1503) (Plus!1503) (SpaceValue!1503 (value!47013 List!7269)) (IntegerValue!4511 (value!47014 Int) (text!10970 List!7269)) (StringLiteralValue!4510 (text!10971 List!7269)) (FloatLiteralValue!3007 (text!10972 List!7269)) (BytesLiteralValue!1503 (value!47015 List!7269)) (CommentValue!3007 (value!47016 List!7269)) (StringLiteralValue!4511 (value!47017 List!7269)) (ErrorTokenValue!1503 (msg!1564 List!7269)) )
))
(declare-datatypes ((String!9255 0))(
  ( (String!9256 (value!47018 String)) )
))
(declare-datatypes ((IArray!5159 0))(
  ( (IArray!5160 (innerList!2637 List!7269)) )
))
(declare-datatypes ((Conc!2579 0))(
  ( (Node!2579 (left!5867 Conc!2579) (right!6197 Conc!2579) (csize!5388 Int) (cheight!2790 Int)) (Leaf!3830 (xs!5228 IArray!5159) (csize!5389 Int)) (Empty!2579) )
))
(declare-datatypes ((BalanceConc!5170 0))(
  ( (BalanceConc!5171 (c!119115 Conc!2579)) )
))
(declare-datatypes ((TokenValueInjection!2758 0))(
  ( (TokenValueInjection!2759 (toValue!2410 Int) (toChars!2269 Int)) )
))
(declare-datatypes ((Rule!2738 0))(
  ( (Rule!2739 (regex!1469 Regex!1805) (tag!1731 String!9255) (isSeparator!1469 Bool) (transformation!1469 TokenValueInjection!2758)) )
))
(declare-datatypes ((List!7270 0))(
  ( (Nil!7256) (Cons!7256 (h!12657 Rule!2738) (t!86503 List!7270)) )
))
(declare-fun lt!282194 () List!7270)

(declare-datatypes ((Token!2660 0))(
  ( (Token!2661 (value!47019 TokenValue!1503) (rule!2264 Rule!2738) (size!5721 Int) (originalCharacters!1501 List!7269)) )
))
(declare-datatypes ((List!7271 0))(
  ( (Nil!7257) (Cons!7257 (h!12658 Token!2660) (t!86504 List!7271)) )
))
(declare-datatypes ((IArray!5161 0))(
  ( (IArray!5162 (innerList!2638 List!7271)) )
))
(declare-datatypes ((Conc!2580 0))(
  ( (Node!2580 (left!5868 Conc!2580) (right!6198 Conc!2580) (csize!5390 Int) (cheight!2791 Int)) (Leaf!3831 (xs!5229 IArray!5161) (csize!5391 Int)) (Empty!2580) )
))
(declare-datatypes ((BalanceConc!5172 0))(
  ( (BalanceConc!5173 (c!119116 Conc!2580)) )
))
(declare-fun lt!282195 () BalanceConc!5172)

(declare-datatypes ((tuple3!652 0))(
  ( (tuple3!653 (_1!4177 Bool) (_2!4177 CacheUp!332) (_3!377 CacheDown!334)) )
))
(declare-datatypes ((LexerInterface!1285 0))(
  ( (LexerInterfaceExt!1282 (__x!5122 Int)) (Lexer!1283) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!15 (LexerInterface!1285 List!7270 BalanceConc!5172 CacheUp!332 CacheDown!334) tuple3!652)

(assert (=> b!662281 (= res!293740 (_1!4177 (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 lt!282195 cacheUp!335 cacheDown!348)))))

(declare-fun singletonSeq!456 (Token!2660) BalanceConc!5172)

(declare-fun apply!1740 (TokenValueInjection!2758 BalanceConc!5170) TokenValue!1503)

(declare-datatypes ((KeywordValueInjection!62 0))(
  ( (KeywordValueInjection!63) )
))
(declare-fun injection!9 (KeywordValueInjection!62) TokenValueInjection!2758)

(declare-fun singletonSeq!457 ((_ BitVec 16)) BalanceConc!5170)

(declare-datatypes ((JsonLexer!244 0))(
  ( (JsonLexer!245) )
))
(declare-fun lBracketRule!0 (JsonLexer!244) Rule!2738)

(assert (=> b!662281 (= lt!282195 (singletonSeq!456 (Token!2661 (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (lBracketRule!0 JsonLexer!245) 1 (Cons!7255 #x005B Nil!7255))))))

(declare-fun b!662282 () Bool)

(assert (=> b!662282 (= e!409831 e!409840)))

(declare-fun b!662283 () Bool)

(declare-fun e!409839 () Bool)

(declare-fun tp!202215 () Bool)

(assert (=> b!662283 (= e!409839 (and tp!202215 mapRes!2777))))

(declare-fun condMapEmpty!2777 () Bool)

(declare-fun mapDefault!2776 () List!7267)

(assert (=> b!662283 (= condMapEmpty!2777 (= (arr!1203 (_values!979 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) ((as const (Array (_ BitVec 32) List!7267)) mapDefault!2776)))))

(declare-fun b!662284 () Bool)

(declare-fun e!409832 () Bool)

(declare-fun e!409827 () Bool)

(declare-fun lt!282192 () MutLongMap!700)

(assert (=> b!662284 (= e!409832 (and e!409827 ((_ is LongMap!700) lt!282192)))))

(assert (=> b!662284 (= lt!282192 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))

(declare-fun b!662285 () Bool)

(declare-fun e!409835 () Bool)

(assert (=> b!662285 (= e!409827 e!409835)))

(declare-fun res!293741 () Bool)

(assert (=> start!64782 (=> (not res!293741) (not e!409837))))

(declare-fun isEmpty!4807 (List!7270) Bool)

(assert (=> start!64782 (= res!293741 (not (isEmpty!4807 lt!282194)))))

(declare-fun rules!109 (JsonLexer!244) List!7270)

(assert (=> start!64782 (= lt!282194 (rules!109 JsonLexer!245))))

(assert (=> start!64782 e!409837))

(declare-fun inv!9320 (CacheUp!332) Bool)

(assert (=> start!64782 (and (inv!9320 cacheUp!335) e!409844)))

(declare-fun inv!9321 (CacheDown!334) Bool)

(assert (=> start!64782 (and (inv!9321 cacheDown!348) e!409829)))

(declare-fun mapNonEmpty!2777 () Bool)

(declare-fun tp!202225 () Bool)

(declare-fun tp!202221 () Bool)

(assert (=> mapNonEmpty!2777 (= mapRes!2776 (and tp!202225 tp!202221))))

(declare-fun mapRest!2777 () (Array (_ BitVec 32) List!7268))

(declare-fun mapValue!2777 () List!7268)

(declare-fun mapKey!2776 () (_ BitVec 32))

(assert (=> mapNonEmpty!2777 (= (arr!1205 (_values!980 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) (store mapRest!2777 mapKey!2776 mapValue!2777))))

(declare-fun b!662286 () Bool)

(declare-fun res!293742 () Bool)

(assert (=> b!662286 (=> (not res!293742) (not e!409837))))

(declare-fun rulesInvariant!1220 (LexerInterface!1285 List!7270) Bool)

(assert (=> b!662286 (= res!293742 (rulesInvariant!1220 Lexer!1283 lt!282194))))

(declare-fun b!662287 () Bool)

(declare-fun e!409828 () Bool)

(assert (=> b!662287 (= e!409835 e!409828)))

(assert (=> b!662288 (= e!409842 (and e!409832 tp!202222))))

(declare-fun tp!202223 () Bool)

(declare-fun tp!202227 () Bool)

(declare-fun array_inv!880 (array!2655) Bool)

(assert (=> b!662289 (= e!409828 (and tp!202219 tp!202223 tp!202227 (array_inv!878 (_keys!994 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) (array_inv!880 (_values!979 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) e!409839))))

(declare-fun b!662290 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!350 (LexerInterface!1285 List!7270 List!7271) Bool)

(declare-fun list!3058 (BalanceConc!5172) List!7271)

(assert (=> b!662290 (= e!409841 (not (rulesProduceEachTokenIndividuallyList!350 Lexer!1283 lt!282194 (list!3058 lt!282195))))))

(declare-fun mapIsEmpty!2777 () Bool)

(assert (=> mapIsEmpty!2777 mapRes!2777))

(assert (=> b!662291 (= e!409833 (and e!409843 tp!202216))))

(assert (= (and start!64782 res!293741) b!662286))

(assert (= (and b!662286 res!293742) b!662281))

(assert (= (and b!662281 res!293740) b!662290))

(assert (= (and b!662283 condMapEmpty!2777) mapIsEmpty!2777))

(assert (= (and b!662283 (not condMapEmpty!2777)) mapNonEmpty!2776))

(assert (= b!662289 b!662283))

(assert (= b!662287 b!662289))

(assert (= b!662285 b!662287))

(assert (= (and b!662284 ((_ is LongMap!700) (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))) b!662285))

(assert (= b!662288 b!662284))

(assert (= (and b!662278 ((_ is HashMap!672) (cache!1059 cacheUp!335))) b!662288))

(assert (= start!64782 b!662278))

(assert (= (and b!662280 condMapEmpty!2776) mapIsEmpty!2776))

(assert (= (and b!662280 (not condMapEmpty!2776)) mapNonEmpty!2777))

(assert (= b!662276 b!662280))

(assert (= b!662282 b!662276))

(assert (= b!662275 b!662282))

(assert (= (and b!662279 ((_ is LongMap!701) (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))) b!662275))

(assert (= b!662291 b!662279))

(assert (= (and b!662277 ((_ is HashMap!673) (cache!1060 cacheDown!348))) b!662291))

(assert (= start!64782 b!662277))

(declare-fun m!928419 () Bool)

(assert (=> mapNonEmpty!2776 m!928419))

(declare-fun m!928421 () Bool)

(assert (=> b!662286 m!928421))

(declare-fun m!928423 () Bool)

(assert (=> mapNonEmpty!2777 m!928423))

(declare-fun m!928425 () Bool)

(assert (=> b!662289 m!928425))

(declare-fun m!928427 () Bool)

(assert (=> b!662289 m!928427))

(declare-fun m!928429 () Bool)

(assert (=> b!662281 m!928429))

(declare-fun m!928431 () Bool)

(assert (=> b!662281 m!928431))

(declare-fun m!928433 () Bool)

(assert (=> b!662281 m!928433))

(assert (=> b!662281 m!928429))

(declare-fun m!928435 () Bool)

(assert (=> b!662281 m!928435))

(declare-fun m!928437 () Bool)

(assert (=> b!662281 m!928437))

(assert (=> b!662281 m!928435))

(declare-fun m!928439 () Bool)

(assert (=> b!662281 m!928439))

(declare-fun m!928441 () Bool)

(assert (=> start!64782 m!928441))

(declare-fun m!928443 () Bool)

(assert (=> start!64782 m!928443))

(declare-fun m!928445 () Bool)

(assert (=> start!64782 m!928445))

(declare-fun m!928447 () Bool)

(assert (=> start!64782 m!928447))

(declare-fun m!928449 () Bool)

(assert (=> b!662290 m!928449))

(assert (=> b!662290 m!928449))

(declare-fun m!928451 () Bool)

(assert (=> b!662290 m!928451))

(declare-fun m!928453 () Bool)

(assert (=> b!662276 m!928453))

(declare-fun m!928455 () Bool)

(assert (=> b!662276 m!928455))

(check-sat (not mapNonEmpty!2777) (not b!662286) (not b!662289) b_and!62961 (not b!662281) (not b!662276) (not b!662290) (not mapNonEmpty!2776) b_and!62965 (not b_next!19231) b_and!62963 (not b!662280) (not start!64782) (not b!662283) b_and!62959 (not b_next!19233) (not b_next!19229) (not b_next!19235))
(check-sat b_and!62961 b_and!62965 (not b_next!19231) b_and!62963 b_and!62959 (not b_next!19233) (not b_next!19229) (not b_next!19235))
(get-model)

(declare-fun d!226269 () Bool)

(assert (=> d!226269 (= (array_inv!878 (_keys!994 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) (bvsge (size!5719 (_keys!994 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!662289 d!226269))

(declare-fun d!226271 () Bool)

(assert (=> d!226271 (= (array_inv!880 (_values!979 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) (bvsge (size!5718 (_values!979 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!662289 d!226271))

(declare-fun b!662308 () Bool)

(declare-fun e!409859 () Bool)

(assert (=> b!662308 (= e!409859 true)))

(declare-fun b!662307 () Bool)

(declare-fun e!409858 () Bool)

(assert (=> b!662307 (= e!409858 e!409859)))

(declare-fun b!662306 () Bool)

(declare-fun e!409857 () Bool)

(assert (=> b!662306 (= e!409857 e!409858)))

(declare-fun d!226273 () Bool)

(assert (=> d!226273 e!409857))

(assert (= b!662307 b!662308))

(assert (= b!662306 b!662307))

(assert (= (and d!226273 ((_ is Cons!7256) lt!282194)) b!662306))

(declare-fun lambda!20542 () Int)

(declare-fun order!5261 () Int)

(declare-fun order!5259 () Int)

(declare-fun dynLambda!3820 (Int Int) Int)

(declare-fun dynLambda!3821 (Int Int) Int)

(assert (=> b!662308 (< (dynLambda!3820 order!5259 (toValue!2410 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20542))))

(declare-fun order!5263 () Int)

(declare-fun dynLambda!3822 (Int Int) Int)

(assert (=> b!662308 (< (dynLambda!3822 order!5263 (toChars!2269 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20542))))

(assert (=> d!226273 true))

(declare-fun lt!282198 () Bool)

(declare-fun forall!1915 (List!7271 Int) Bool)

(assert (=> d!226273 (= lt!282198 (forall!1915 (list!3058 lt!282195) lambda!20542))))

(declare-fun e!409849 () Bool)

(assert (=> d!226273 (= lt!282198 e!409849)))

(declare-fun res!293747 () Bool)

(assert (=> d!226273 (=> res!293747 e!409849)))

(assert (=> d!226273 (= res!293747 (not ((_ is Cons!7257) (list!3058 lt!282195))))))

(assert (=> d!226273 (not (isEmpty!4807 lt!282194))))

(assert (=> d!226273 (= (rulesProduceEachTokenIndividuallyList!350 Lexer!1283 lt!282194 (list!3058 lt!282195)) lt!282198)))

(declare-fun b!662296 () Bool)

(declare-fun e!409850 () Bool)

(assert (=> b!662296 (= e!409849 e!409850)))

(declare-fun res!293748 () Bool)

(assert (=> b!662296 (=> (not res!293748) (not e!409850))))

(declare-fun rulesProduceIndividualToken!529 (LexerInterface!1285 List!7270 Token!2660) Bool)

(assert (=> b!662296 (= res!293748 (rulesProduceIndividualToken!529 Lexer!1283 lt!282194 (h!12658 (list!3058 lt!282195))))))

(declare-fun b!662297 () Bool)

(assert (=> b!662297 (= e!409850 (rulesProduceEachTokenIndividuallyList!350 Lexer!1283 lt!282194 (t!86504 (list!3058 lt!282195))))))

(assert (= (and d!226273 (not res!293747)) b!662296))

(assert (= (and b!662296 res!293748) b!662297))

(assert (=> d!226273 m!928449))

(declare-fun m!928457 () Bool)

(assert (=> d!226273 m!928457))

(assert (=> d!226273 m!928441))

(declare-fun m!928459 () Bool)

(assert (=> b!662296 m!928459))

(declare-fun m!928461 () Bool)

(assert (=> b!662297 m!928461))

(assert (=> b!662290 d!226273))

(declare-fun d!226275 () Bool)

(declare-fun list!3059 (Conc!2580) List!7271)

(assert (=> d!226275 (= (list!3058 lt!282195) (list!3059 (c!119116 lt!282195)))))

(declare-fun bs!94522 () Bool)

(assert (= bs!94522 d!226275))

(declare-fun m!928463 () Bool)

(assert (=> bs!94522 m!928463))

(assert (=> b!662290 d!226275))

(declare-fun d!226277 () Bool)

(assert (=> d!226277 (= (isEmpty!4807 lt!282194) ((_ is Nil!7256) lt!282194))))

(assert (=> start!64782 d!226277))

(declare-fun d!226279 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!244) Rule!2738)

(declare-fun integerLiteralRule!0 (JsonLexer!244) Rule!2738)

(declare-fun floatLiteralRule!0 (JsonLexer!244) Rule!2738)

(declare-fun trueRule!0 (JsonLexer!244) Rule!2738)

(declare-fun falseRule!0 (JsonLexer!244) Rule!2738)

(declare-fun nullRule!0 (JsonLexer!244) Rule!2738)

(declare-fun jsonstringRule!0 (JsonLexer!244) Rule!2738)

(declare-fun lBraceRule!0 (JsonLexer!244) Rule!2738)

(declare-fun rBraceRule!0 (JsonLexer!244) Rule!2738)

(declare-fun rBracketRule!0 (JsonLexer!244) Rule!2738)

(declare-fun colonRule!0 (JsonLexer!244) Rule!2738)

(declare-fun commaRule!0 (JsonLexer!244) Rule!2738)

(declare-fun eofRule!0 (JsonLexer!244) Rule!2738)

(assert (=> d!226279 (= (rules!109 JsonLexer!245) (Cons!7256 (whitespaceRule!0 JsonLexer!245) (Cons!7256 (integerLiteralRule!0 JsonLexer!245) (Cons!7256 (floatLiteralRule!0 JsonLexer!245) (Cons!7256 (trueRule!0 JsonLexer!245) (Cons!7256 (falseRule!0 JsonLexer!245) (Cons!7256 (nullRule!0 JsonLexer!245) (Cons!7256 (jsonstringRule!0 JsonLexer!245) (Cons!7256 (lBraceRule!0 JsonLexer!245) (Cons!7256 (rBraceRule!0 JsonLexer!245) (Cons!7256 (lBracketRule!0 JsonLexer!245) (Cons!7256 (rBracketRule!0 JsonLexer!245) (Cons!7256 (colonRule!0 JsonLexer!245) (Cons!7256 (commaRule!0 JsonLexer!245) (Cons!7256 (eofRule!0 JsonLexer!245) Nil!7256)))))))))))))))))

(declare-fun bs!94523 () Bool)

(assert (= bs!94523 d!226279))

(declare-fun m!928465 () Bool)

(assert (=> bs!94523 m!928465))

(assert (=> bs!94523 m!928431))

(declare-fun m!928467 () Bool)

(assert (=> bs!94523 m!928467))

(declare-fun m!928469 () Bool)

(assert (=> bs!94523 m!928469))

(declare-fun m!928471 () Bool)

(assert (=> bs!94523 m!928471))

(declare-fun m!928473 () Bool)

(assert (=> bs!94523 m!928473))

(declare-fun m!928475 () Bool)

(assert (=> bs!94523 m!928475))

(declare-fun m!928477 () Bool)

(assert (=> bs!94523 m!928477))

(declare-fun m!928479 () Bool)

(assert (=> bs!94523 m!928479))

(declare-fun m!928481 () Bool)

(assert (=> bs!94523 m!928481))

(declare-fun m!928483 () Bool)

(assert (=> bs!94523 m!928483))

(declare-fun m!928485 () Bool)

(assert (=> bs!94523 m!928485))

(declare-fun m!928487 () Bool)

(assert (=> bs!94523 m!928487))

(declare-fun m!928489 () Bool)

(assert (=> bs!94523 m!928489))

(assert (=> start!64782 d!226279))

(declare-fun d!226281 () Bool)

(declare-fun res!293751 () Bool)

(declare-fun e!409862 () Bool)

(assert (=> d!226281 (=> (not res!293751) (not e!409862))))

(assert (=> d!226281 (= res!293751 ((_ is HashMap!672) (cache!1059 cacheUp!335)))))

(assert (=> d!226281 (= (inv!9320 cacheUp!335) e!409862)))

(declare-fun b!662313 () Bool)

(declare-fun validCacheMapUp!51 (MutableMap!672) Bool)

(assert (=> b!662313 (= e!409862 (validCacheMapUp!51 (cache!1059 cacheUp!335)))))

(assert (= (and d!226281 res!293751) b!662313))

(declare-fun m!928491 () Bool)

(assert (=> b!662313 m!928491))

(assert (=> start!64782 d!226281))

(declare-fun d!226283 () Bool)

(declare-fun res!293754 () Bool)

(declare-fun e!409865 () Bool)

(assert (=> d!226283 (=> (not res!293754) (not e!409865))))

(assert (=> d!226283 (= res!293754 ((_ is HashMap!673) (cache!1060 cacheDown!348)))))

(assert (=> d!226283 (= (inv!9321 cacheDown!348) e!409865)))

(declare-fun b!662316 () Bool)

(declare-fun validCacheMapDown!51 (MutableMap!673) Bool)

(assert (=> b!662316 (= e!409865 (validCacheMapDown!51 (cache!1060 cacheDown!348)))))

(assert (= (and d!226283 res!293754) b!662316))

(declare-fun m!928493 () Bool)

(assert (=> b!662316 m!928493))

(assert (=> start!64782 d!226283))

(declare-fun d!226285 () Bool)

(assert (=> d!226285 true))

(assert (=> d!226285 true))

(assert (=> d!226285 true))

(assert (=> d!226285 true))

(declare-fun b!662339 () Bool)

(declare-fun e!409880 () Bool)

(declare-fun x!145816 () BalanceConc!5170)

(declare-fun tp!202235 () Bool)

(declare-fun inv!9322 (Conc!2579) Bool)

(assert (=> b!662339 (= e!409880 (and (inv!9322 (c!119115 x!145816)) tp!202235))))

(declare-fun inst!340 () Bool)

(declare-fun inv!9323 (BalanceConc!5170) Bool)

(declare-fun list!3060 (BalanceConc!5170) List!7269)

(declare-fun toCharacters!4 (KeywordValueInjection!62 TokenValue!1503) BalanceConc!5170)

(declare-fun toValue!11 (KeywordValueInjection!62 BalanceConc!5170) TokenValue!1503)

(assert (=> d!226285 (= inst!340 (=> (and (inv!9323 x!145816) e!409880) (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 x!145816))))))

(assert (= d!226285 b!662339))

(declare-fun m!928495 () Bool)

(assert (=> b!662339 m!928495))

(declare-fun m!928497 () Bool)

(assert (=> d!226285 m!928497))

(declare-fun m!928499 () Bool)

(assert (=> d!226285 m!928499))

(declare-fun m!928501 () Bool)

(assert (=> d!226285 m!928501))

(declare-fun m!928503 () Bool)

(assert (=> d!226285 m!928503))

(declare-fun m!928505 () Bool)

(assert (=> d!226285 m!928505))

(assert (=> d!226285 m!928497))

(assert (=> d!226285 m!928503))

(declare-fun res!293763 () Bool)

(declare-fun e!409883 () Bool)

(assert (=> d!226285 (=> res!293763 e!409883)))

(declare-fun x!145817 () BalanceConc!5170)

(declare-fun x!145818 () BalanceConc!5170)

(assert (=> d!226285 (= res!293763 (not (= (list!3060 x!145817) (list!3060 x!145818))))))

(declare-fun inst!341 () Bool)

(declare-fun e!409881 () Bool)

(declare-fun e!409882 () Bool)

(assert (=> d!226285 (= inst!341 (=> (and (inv!9323 x!145817) e!409882 (inv!9323 x!145818) e!409881) e!409883))))

(declare-fun b!662340 () Bool)

(assert (=> b!662340 (= e!409883 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 x!145818)))))

(declare-fun b!662341 () Bool)

(declare-fun tp!202237 () Bool)

(assert (=> b!662341 (= e!409882 (and (inv!9322 (c!119115 x!145817)) tp!202237))))

(declare-fun b!662342 () Bool)

(declare-fun tp!202236 () Bool)

(assert (=> b!662342 (= e!409881 (and (inv!9322 (c!119115 x!145818)) tp!202236))))

(assert (= (and d!226285 (not res!293763)) b!662340))

(assert (= d!226285 b!662341))

(assert (= d!226285 b!662342))

(declare-fun m!928507 () Bool)

(assert (=> d!226285 m!928507))

(declare-fun m!928509 () Bool)

(assert (=> d!226285 m!928509))

(declare-fun m!928511 () Bool)

(assert (=> d!226285 m!928511))

(declare-fun m!928513 () Bool)

(assert (=> d!226285 m!928513))

(declare-fun m!928515 () Bool)

(assert (=> b!662340 m!928515))

(declare-fun m!928517 () Bool)

(assert (=> b!662340 m!928517))

(declare-fun m!928519 () Bool)

(assert (=> b!662341 m!928519))

(declare-fun m!928521 () Bool)

(assert (=> b!662342 m!928521))

(declare-fun bs!94524 () Bool)

(declare-fun neg-inst!341 () Bool)

(declare-fun s!44763 () Bool)

(assert (= bs!94524 (and neg-inst!341 s!44763)))

(assert (=> bs!94524 (=> true (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 x!145816)))))

(assert (=> m!928497 m!928503))

(assert (=> m!928497 m!928505))

(assert (=> m!928497 m!928499))

(assert (=> m!928497 s!44763))

(assert (=> m!928499 s!44763))

(declare-fun bs!94525 () Bool)

(assert (= bs!94525 (and neg-inst!341 d!226285)))

(assert (=> bs!94525 (= true inst!340)))

(declare-fun bs!94526 () Bool)

(declare-fun neg-inst!340 () Bool)

(declare-fun s!44765 () Bool)

(assert (= bs!94526 (and neg-inst!340 s!44765)))

(declare-fun res!293764 () Bool)

(declare-fun e!409884 () Bool)

(assert (=> bs!94526 (=> res!293764 e!409884)))

(assert (=> bs!94526 (= res!293764 (not (= (list!3060 x!145816) (list!3060 x!145816))))))

(assert (=> bs!94526 (=> true e!409884)))

(declare-fun b!662343 () Bool)

(assert (=> b!662343 (= e!409884 (= (toValue!11 KeywordValueInjection!63 x!145816) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (= (and bs!94526 (not res!293764)) b!662343))

(assert (=> m!928497 m!928499))

(assert (=> m!928497 m!928499))

(assert (=> m!928497 s!44765))

(assert (=> m!928497 s!44765))

(declare-fun bs!94527 () Bool)

(declare-fun s!44767 () Bool)

(assert (= bs!94527 (and neg-inst!340 s!44767)))

(declare-fun res!293765 () Bool)

(declare-fun e!409885 () Bool)

(assert (=> bs!94527 (=> res!293765 e!409885)))

(assert (=> bs!94527 (= res!293765 (not (= (list!3060 x!145816) (list!3060 x!145817))))))

(assert (=> bs!94527 (=> true e!409885)))

(declare-fun b!662344 () Bool)

(assert (=> b!662344 (= e!409885 (= (toValue!11 KeywordValueInjection!63 x!145816) (toValue!11 KeywordValueInjection!63 x!145817)))))

(assert (= (and bs!94527 (not res!293765)) b!662344))

(declare-fun bs!94528 () Bool)

(assert (= bs!94528 (and m!928515 m!928497)))

(assert (=> bs!94528 m!928499))

(assert (=> bs!94528 m!928507))

(assert (=> bs!94528 s!44767))

(declare-fun bs!94529 () Bool)

(declare-fun s!44769 () Bool)

(assert (= bs!94529 (and neg-inst!340 s!44769)))

(declare-fun res!293766 () Bool)

(declare-fun e!409886 () Bool)

(assert (=> bs!94529 (=> res!293766 e!409886)))

(assert (=> bs!94529 (= res!293766 (not (= (list!3060 x!145817) (list!3060 x!145817))))))

(assert (=> bs!94529 (=> true e!409886)))

(declare-fun b!662345 () Bool)

(assert (=> b!662345 (= e!409886 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 x!145817)))))

(assert (= (and bs!94529 (not res!293766)) b!662345))

(assert (=> m!928515 m!928507))

(assert (=> m!928515 m!928507))

(assert (=> m!928515 s!44769))

(declare-fun bs!94530 () Bool)

(declare-fun s!44771 () Bool)

(assert (= bs!94530 (and neg-inst!340 s!44771)))

(declare-fun res!293767 () Bool)

(declare-fun e!409887 () Bool)

(assert (=> bs!94530 (=> res!293767 e!409887)))

(assert (=> bs!94530 (= res!293767 (not (= (list!3060 x!145817) (list!3060 x!145816))))))

(assert (=> bs!94530 (=> true e!409887)))

(declare-fun b!662346 () Bool)

(assert (=> b!662346 (= e!409887 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (= (and bs!94530 (not res!293767)) b!662346))

(assert (=> bs!94528 m!928507))

(assert (=> bs!94528 m!928499))

(assert (=> bs!94528 s!44771))

(assert (=> m!928515 s!44769))

(declare-fun bs!94531 () Bool)

(declare-fun s!44773 () Bool)

(assert (= bs!94531 (and neg-inst!340 s!44773)))

(declare-fun res!293768 () Bool)

(declare-fun e!409888 () Bool)

(assert (=> bs!94531 (=> res!293768 e!409888)))

(assert (=> bs!94531 (= res!293768 (not (= (list!3060 x!145817) (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> bs!94531 (=> true e!409888)))

(declare-fun b!662347 () Bool)

(assert (=> b!662347 (= e!409888 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (= (and bs!94531 (not res!293768)) b!662347))

(declare-fun bs!94532 () Bool)

(assert (= bs!94532 (and m!928505 m!928515)))

(assert (=> bs!94532 m!928507))

(assert (=> bs!94532 m!928505))

(assert (=> bs!94532 s!44773))

(declare-fun bs!94533 () Bool)

(declare-fun s!44775 () Bool)

(assert (= bs!94533 (and neg-inst!340 s!44775)))

(declare-fun res!293769 () Bool)

(declare-fun e!409889 () Bool)

(assert (=> bs!94533 (=> res!293769 e!409889)))

(assert (=> bs!94533 (= res!293769 (not (= (list!3060 x!145816) (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> bs!94533 (=> true e!409889)))

(declare-fun b!662348 () Bool)

(assert (=> b!662348 (= e!409889 (= (toValue!11 KeywordValueInjection!63 x!145816) (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (= (and bs!94533 (not res!293769)) b!662348))

(declare-fun bs!94534 () Bool)

(assert (= bs!94534 (and m!928505 m!928497)))

(assert (=> bs!94534 m!928499))

(assert (=> bs!94534 m!928505))

(assert (=> bs!94534 s!44775))

(declare-fun bs!94535 () Bool)

(declare-fun s!44777 () Bool)

(assert (= bs!94535 (and neg-inst!340 s!44777)))

(declare-fun res!293770 () Bool)

(declare-fun e!409890 () Bool)

(assert (=> bs!94535 (=> res!293770 e!409890)))

(assert (=> bs!94535 (= res!293770 (not (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> bs!94535 (=> true e!409890)))

(declare-fun b!662349 () Bool)

(assert (=> b!662349 (= e!409890 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (= (and bs!94535 (not res!293770)) b!662349))

(assert (=> m!928505 s!44777))

(declare-fun bs!94536 () Bool)

(declare-fun s!44779 () Bool)

(assert (= bs!94536 (and neg-inst!340 s!44779)))

(declare-fun res!293771 () Bool)

(declare-fun e!409891 () Bool)

(assert (=> bs!94536 (=> res!293771 e!409891)))

(assert (=> bs!94536 (= res!293771 (not (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 x!145817))))))

(assert (=> bs!94536 (=> true e!409891)))

(declare-fun b!662350 () Bool)

(assert (=> b!662350 (= e!409891 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (toValue!11 KeywordValueInjection!63 x!145817)))))

(assert (= (and bs!94536 (not res!293771)) b!662350))

(assert (=> bs!94532 m!928505))

(assert (=> bs!94532 m!928507))

(assert (=> bs!94532 s!44779))

(declare-fun bs!94537 () Bool)

(declare-fun s!44781 () Bool)

(assert (= bs!94537 (and neg-inst!340 s!44781)))

(declare-fun res!293772 () Bool)

(declare-fun e!409892 () Bool)

(assert (=> bs!94537 (=> res!293772 e!409892)))

(assert (=> bs!94537 (= res!293772 (not (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 x!145816))))))

(assert (=> bs!94537 (=> true e!409892)))

(declare-fun b!662351 () Bool)

(assert (=> b!662351 (= e!409892 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (= (and bs!94537 (not res!293772)) b!662351))

(assert (=> bs!94534 m!928505))

(assert (=> bs!94534 m!928499))

(assert (=> bs!94534 s!44781))

(assert (=> m!928505 s!44777))

(declare-fun bs!94538 () Bool)

(declare-fun s!44783 () Bool)

(assert (= bs!94538 (and neg-inst!340 s!44783)))

(declare-fun res!293773 () Bool)

(declare-fun e!409893 () Bool)

(assert (=> bs!94538 (=> res!293773 e!409893)))

(assert (=> bs!94538 (= res!293773 (not (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 x!145818))))))

(assert (=> bs!94538 (=> true e!409893)))

(declare-fun b!662352 () Bool)

(assert (=> b!662352 (= e!409893 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (toValue!11 KeywordValueInjection!63 x!145818)))))

(assert (= (and bs!94538 (not res!293773)) b!662352))

(declare-fun bs!94539 () Bool)

(assert (= bs!94539 (and m!928509 m!928505)))

(assert (=> bs!94539 m!928505))

(assert (=> bs!94539 m!928509))

(assert (=> bs!94539 s!44783))

(declare-fun bs!94540 () Bool)

(declare-fun s!44785 () Bool)

(assert (= bs!94540 (and neg-inst!340 s!44785)))

(declare-fun res!293774 () Bool)

(declare-fun e!409894 () Bool)

(assert (=> bs!94540 (=> res!293774 e!409894)))

(assert (=> bs!94540 (= res!293774 (not (= (list!3060 x!145817) (list!3060 x!145818))))))

(assert (=> bs!94540 (=> true e!409894)))

(declare-fun b!662353 () Bool)

(assert (=> b!662353 (= e!409894 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 x!145818)))))

(assert (= (and bs!94540 (not res!293774)) b!662353))

(declare-fun bs!94541 () Bool)

(assert (= bs!94541 (and m!928509 m!928515)))

(assert (=> bs!94541 m!928507))

(assert (=> bs!94541 m!928509))

(assert (=> bs!94541 s!44785))

(declare-fun bs!94542 () Bool)

(declare-fun s!44787 () Bool)

(assert (= bs!94542 (and neg-inst!340 s!44787)))

(declare-fun res!293775 () Bool)

(declare-fun e!409895 () Bool)

(assert (=> bs!94542 (=> res!293775 e!409895)))

(assert (=> bs!94542 (= res!293775 (not (= (list!3060 x!145816) (list!3060 x!145818))))))

(assert (=> bs!94542 (=> true e!409895)))

(declare-fun b!662354 () Bool)

(assert (=> b!662354 (= e!409895 (= (toValue!11 KeywordValueInjection!63 x!145816) (toValue!11 KeywordValueInjection!63 x!145818)))))

(assert (= (and bs!94542 (not res!293775)) b!662354))

(declare-fun bs!94543 () Bool)

(assert (= bs!94543 (and m!928509 m!928497)))

(assert (=> bs!94543 m!928499))

(assert (=> bs!94543 m!928509))

(assert (=> bs!94543 s!44787))

(declare-fun bs!94544 () Bool)

(declare-fun s!44789 () Bool)

(assert (= bs!94544 (and neg-inst!340 s!44789)))

(declare-fun res!293776 () Bool)

(declare-fun e!409896 () Bool)

(assert (=> bs!94544 (=> res!293776 e!409896)))

(assert (=> bs!94544 (= res!293776 (not (= (list!3060 x!145818) (list!3060 x!145818))))))

(assert (=> bs!94544 (=> true e!409896)))

(declare-fun b!662355 () Bool)

(assert (=> b!662355 (= e!409896 (= (toValue!11 KeywordValueInjection!63 x!145818) (toValue!11 KeywordValueInjection!63 x!145818)))))

(assert (= (and bs!94544 (not res!293776)) b!662355))

(assert (=> m!928509 s!44789))

(declare-fun bs!94545 () Bool)

(declare-fun s!44791 () Bool)

(assert (= bs!94545 (and neg-inst!340 s!44791)))

(declare-fun res!293777 () Bool)

(declare-fun e!409897 () Bool)

(assert (=> bs!94545 (=> res!293777 e!409897)))

(assert (=> bs!94545 (= res!293777 (not (= (list!3060 x!145818) (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> bs!94545 (=> true e!409897)))

(declare-fun b!662356 () Bool)

(assert (=> b!662356 (= e!409897 (= (toValue!11 KeywordValueInjection!63 x!145818) (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (= (and bs!94545 (not res!293777)) b!662356))

(assert (=> bs!94539 m!928509))

(assert (=> bs!94539 m!928505))

(assert (=> bs!94539 s!44791))

(declare-fun bs!94546 () Bool)

(declare-fun s!44793 () Bool)

(assert (= bs!94546 (and neg-inst!340 s!44793)))

(declare-fun res!293778 () Bool)

(declare-fun e!409898 () Bool)

(assert (=> bs!94546 (=> res!293778 e!409898)))

(assert (=> bs!94546 (= res!293778 (not (= (list!3060 x!145818) (list!3060 x!145817))))))

(assert (=> bs!94546 (=> true e!409898)))

(declare-fun b!662357 () Bool)

(assert (=> b!662357 (= e!409898 (= (toValue!11 KeywordValueInjection!63 x!145818) (toValue!11 KeywordValueInjection!63 x!145817)))))

(assert (= (and bs!94546 (not res!293778)) b!662357))

(assert (=> bs!94541 m!928509))

(assert (=> bs!94541 m!928507))

(assert (=> bs!94541 s!44793))

(declare-fun bs!94547 () Bool)

(declare-fun s!44795 () Bool)

(assert (= bs!94547 (and neg-inst!340 s!44795)))

(declare-fun res!293779 () Bool)

(declare-fun e!409899 () Bool)

(assert (=> bs!94547 (=> res!293779 e!409899)))

(assert (=> bs!94547 (= res!293779 (not (= (list!3060 x!145818) (list!3060 x!145816))))))

(assert (=> bs!94547 (=> true e!409899)))

(declare-fun b!662358 () Bool)

(assert (=> b!662358 (= e!409899 (= (toValue!11 KeywordValueInjection!63 x!145818) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (= (and bs!94547 (not res!293779)) b!662358))

(assert (=> bs!94543 m!928509))

(assert (=> bs!94543 m!928499))

(assert (=> bs!94543 s!44795))

(assert (=> m!928509 s!44789))

(assert (=> m!928507 s!44769))

(declare-fun bs!94548 () Bool)

(assert (= bs!94548 (and m!928507 m!928509)))

(assert (=> bs!94548 s!44793))

(declare-fun bs!94549 () Bool)

(assert (= bs!94549 (and m!928507 m!928505)))

(assert (=> bs!94549 s!44779))

(declare-fun bs!94550 () Bool)

(assert (= bs!94550 (and m!928507 m!928497)))

(assert (=> bs!94550 s!44767))

(declare-fun bs!94551 () Bool)

(assert (= bs!94551 (and m!928507 m!928515)))

(assert (=> bs!94551 s!44769))

(assert (=> m!928507 s!44769))

(assert (=> bs!94549 s!44773))

(assert (=> bs!94548 s!44785))

(assert (=> bs!94551 s!44769))

(assert (=> bs!94550 s!44771))

(declare-fun bs!94552 () Bool)

(assert (= bs!94552 (and m!928499 m!928515 m!928507)))

(assert (=> bs!94552 s!44771))

(declare-fun bs!94553 () Bool)

(assert (= bs!94553 (and m!928499 m!928497)))

(assert (=> bs!94553 s!44765))

(declare-fun bs!94554 () Bool)

(assert (= bs!94554 (and m!928499 m!928505)))

(assert (=> bs!94554 s!44781))

(assert (=> m!928499 s!44765))

(declare-fun bs!94555 () Bool)

(assert (= bs!94555 (and m!928499 m!928509)))

(assert (=> bs!94555 s!44795))

(assert (=> bs!94555 s!44787))

(assert (=> bs!94554 s!44775))

(assert (=> bs!94552 s!44767))

(assert (=> bs!94553 s!44765))

(assert (=> m!928499 s!44765))

(assert (=> m!928517 s!44789))

(declare-fun bs!94556 () Bool)

(assert (= bs!94556 (and m!928517 m!928505)))

(assert (=> bs!94556 s!44783))

(declare-fun bs!94557 () Bool)

(assert (= bs!94557 (and m!928517 m!928515 m!928507)))

(assert (=> bs!94557 s!44785))

(declare-fun bs!94558 () Bool)

(assert (= bs!94558 (and m!928517 m!928497 m!928499)))

(assert (=> bs!94558 s!44787))

(declare-fun bs!94559 () Bool)

(assert (= bs!94559 (and m!928517 m!928509)))

(assert (=> bs!94559 s!44789))

(assert (=> bs!94556 s!44791))

(assert (=> m!928517 s!44789))

(assert (=> bs!94559 s!44789))

(assert (=> bs!94557 s!44793))

(assert (=> bs!94558 s!44795))

(declare-fun bs!94560 () Bool)

(assert (= bs!94560 (and neg-inst!340 d!226285)))

(assert (=> bs!94560 (= true inst!341)))

(declare-datatypes ((Unit!12518 0))(
  ( (Unit!12519) )
))
(declare-fun lt!282210 () Unit!12518)

(declare-fun Unit!12520 () Unit!12518)

(assert (=> d!226285 (= lt!282210 Unit!12520)))

(declare-fun lambda!20564 () Int)

(declare-fun lambda!20565 () Int)

(declare-fun lambda!20566 () Int)

(declare-fun equivClasses!530 (Int Int) Bool)

(declare-fun Forall2!258 (Int) Bool)

(assert (=> d!226285 (= (equivClasses!530 lambda!20564 lambda!20565) (Forall2!258 lambda!20566))))

(declare-fun lt!282208 () Unit!12518)

(declare-fun Unit!12521 () Unit!12518)

(assert (=> d!226285 (= lt!282208 Unit!12521)))

(assert (=> d!226285 (= (Forall2!258 lambda!20566) inst!341)))

(declare-fun lt!282209 () Unit!12518)

(declare-fun Unit!12522 () Unit!12518)

(assert (=> d!226285 (= lt!282209 Unit!12522)))

(declare-fun lambda!20563 () Int)

(declare-fun semiInverseModEq!551 (Int Int) Bool)

(declare-fun Forall!336 (Int) Bool)

(assert (=> d!226285 (= (semiInverseModEq!551 lambda!20564 lambda!20565) (Forall!336 lambda!20563))))

(declare-fun lt!282207 () Unit!12518)

(declare-fun Unit!12523 () Unit!12518)

(assert (=> d!226285 (= lt!282207 Unit!12523)))

(assert (=> d!226285 (= (Forall!336 lambda!20563) inst!340)))

(assert (=> d!226285 (= (injection!9 KeywordValueInjection!63) (TokenValueInjection!2759 lambda!20565 lambda!20564))))

(assert (= neg-inst!341 inst!340))

(assert (= neg-inst!340 inst!341))

(declare-fun m!928523 () Bool)

(assert (=> d!226285 m!928523))

(declare-fun m!928525 () Bool)

(assert (=> d!226285 m!928525))

(declare-fun m!928527 () Bool)

(assert (=> d!226285 m!928527))

(assert (=> d!226285 m!928525))

(assert (=> d!226285 m!928527))

(declare-fun m!928529 () Bool)

(assert (=> d!226285 m!928529))

(assert (=> b!662281 d!226285))

(declare-fun d!226287 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226287 (= (lBracketRule!0 JsonLexer!245) (Rule!2739 (lBracketRe!0 JsonLexer!245) (String!9256 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94561 () Bool)

(assert (= bs!94561 d!226287))

(declare-fun m!928531 () Bool)

(assert (=> bs!94561 m!928531))

(assert (=> bs!94561 m!928429))

(assert (=> b!662281 d!226287))

(declare-fun d!226289 () Bool)

(declare-fun dynLambda!3823 (Int BalanceConc!5170) TokenValue!1503)

(assert (=> d!226289 (= (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (dynLambda!3823 (toValue!2410 (injection!9 KeywordValueInjection!63)) (singletonSeq!457 #x005B)))))

(declare-fun b_lambda!25777 () Bool)

(assert (=> (not b_lambda!25777) (not d!226289)))

(declare-fun bs!94562 () Bool)

(assert (= bs!94562 d!226289))

(assert (=> bs!94562 m!928435))

(declare-fun m!928533 () Bool)

(assert (=> bs!94562 m!928533))

(assert (=> b!662281 d!226289))

(declare-fun bs!94563 () Bool)

(declare-fun d!226291 () Bool)

(assert (= bs!94563 (and d!226291 d!226273)))

(declare-fun lambda!20569 () Int)

(assert (=> bs!94563 (= lambda!20569 lambda!20542)))

(declare-fun b!662367 () Bool)

(declare-fun e!409905 () Bool)

(assert (=> b!662367 (= e!409905 true)))

(declare-fun b!662366 () Bool)

(declare-fun e!409904 () Bool)

(assert (=> b!662366 (= e!409904 e!409905)))

(declare-fun b!662365 () Bool)

(declare-fun e!409903 () Bool)

(assert (=> b!662365 (= e!409903 e!409904)))

(assert (=> d!226291 e!409903))

(assert (= b!662366 b!662367))

(assert (= b!662365 b!662366))

(assert (= (and d!226291 ((_ is Cons!7256) lt!282194)) b!662365))

(assert (=> b!662367 (< (dynLambda!3820 order!5259 (toValue!2410 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20569))))

(assert (=> b!662367 (< (dynLambda!3822 order!5263 (toChars!2269 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20569))))

(assert (=> d!226291 true))

(declare-fun lt!282217 () tuple3!652)

(declare-fun forall!1916 (BalanceConc!5172 Int) Bool)

(assert (=> d!226291 (= (_1!4177 lt!282217) (forall!1916 lt!282195 lambda!20569))))

(declare-fun e!409902 () tuple3!652)

(assert (=> d!226291 (= lt!282217 e!409902)))

(declare-fun c!119126 () Bool)

(declare-fun isEmpty!4808 (BalanceConc!5172) Bool)

(assert (=> d!226291 (= c!119126 (isEmpty!4808 lt!282195))))

(assert (=> d!226291 (not (isEmpty!4807 lt!282194))))

(assert (=> d!226291 (= (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 lt!282195 cacheUp!335 cacheDown!348) lt!282217)))

(declare-fun b!662363 () Bool)

(assert (=> b!662363 (= e!409902 (tuple3!653 true cacheUp!335 cacheDown!348))))

(declare-fun b!662364 () Bool)

(declare-fun lt!282218 () tuple3!652)

(declare-fun lt!282219 () tuple3!652)

(assert (=> b!662364 (= e!409902 (tuple3!653 (and (_1!4177 lt!282218) (_1!4177 lt!282219)) (_2!4177 lt!282219) (_3!377 lt!282219)))))

(declare-fun rulesProduceIndividualTokenMem!7 (LexerInterface!1285 List!7270 Token!2660 CacheUp!332 CacheDown!334) tuple3!652)

(declare-fun head!1380 (BalanceConc!5172) Token!2660)

(assert (=> b!662364 (= lt!282218 (rulesProduceIndividualTokenMem!7 Lexer!1283 lt!282194 (head!1380 lt!282195) cacheUp!335 cacheDown!348))))

(declare-fun tail!938 (BalanceConc!5172) BalanceConc!5172)

(assert (=> b!662364 (= lt!282219 (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 (tail!938 lt!282195) (_2!4177 lt!282218) (_3!377 lt!282218)))))

(assert (= (and d!226291 c!119126) b!662363))

(assert (= (and d!226291 (not c!119126)) b!662364))

(declare-fun m!928535 () Bool)

(assert (=> d!226291 m!928535))

(declare-fun m!928537 () Bool)

(assert (=> d!226291 m!928537))

(assert (=> d!226291 m!928441))

(declare-fun m!928539 () Bool)

(assert (=> b!662364 m!928539))

(assert (=> b!662364 m!928539))

(declare-fun m!928541 () Bool)

(assert (=> b!662364 m!928541))

(declare-fun m!928543 () Bool)

(assert (=> b!662364 m!928543))

(assert (=> b!662364 m!928543))

(declare-fun m!928545 () Bool)

(assert (=> b!662364 m!928545))

(assert (=> b!662281 d!226291))

(declare-fun d!226293 () Bool)

(declare-fun e!409908 () Bool)

(assert (=> d!226293 e!409908))

(declare-fun res!293782 () Bool)

(assert (=> d!226293 (=> (not res!293782) (not e!409908))))

(declare-fun lt!282222 () BalanceConc!5170)

(assert (=> d!226293 (= res!293782 (= (list!3060 lt!282222) (Cons!7255 #x005B Nil!7255)))))

(declare-fun singleton!217 ((_ BitVec 16)) BalanceConc!5170)

(assert (=> d!226293 (= lt!282222 (singleton!217 #x005B))))

(assert (=> d!226293 (= (singletonSeq!457 #x005B) lt!282222)))

(declare-fun b!662370 () Bool)

(declare-fun isBalanced!673 (Conc!2579) Bool)

(assert (=> b!662370 (= e!409908 (isBalanced!673 (c!119115 lt!282222)))))

(assert (= (and d!226293 res!293782) b!662370))

(declare-fun bs!94564 () Bool)

(declare-fun s!44797 () Bool)

(assert (= bs!94564 (and neg-inst!340 s!44797)))

(declare-fun res!293783 () Bool)

(declare-fun e!409909 () Bool)

(assert (=> bs!94564 (=> res!293783 e!409909)))

(assert (=> bs!94564 (= res!293783 (not (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 lt!282222))))))

(assert (=> bs!94564 (=> true e!409909)))

(declare-fun b!662371 () Bool)

(assert (=> b!662371 (= e!409909 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (toValue!11 KeywordValueInjection!63 lt!282222)))))

(assert (= (and bs!94564 (not res!293783)) b!662371))

(declare-fun bs!94565 () Bool)

(declare-fun m!928547 () Bool)

(assert (= bs!94565 (and m!928547 m!928505)))

(assert (=> bs!94565 m!928505))

(assert (=> bs!94565 m!928547))

(assert (=> bs!94565 s!44797))

(declare-fun bs!94566 () Bool)

(declare-fun s!44799 () Bool)

(assert (= bs!94566 (and neg-inst!340 s!44799)))

(declare-fun res!293784 () Bool)

(declare-fun e!409910 () Bool)

(assert (=> bs!94566 (=> res!293784 e!409910)))

(assert (=> bs!94566 (= res!293784 (not (= (list!3060 x!145817) (list!3060 lt!282222))))))

(assert (=> bs!94566 (=> true e!409910)))

(declare-fun b!662372 () Bool)

(assert (=> b!662372 (= e!409910 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 lt!282222)))))

(assert (= (and bs!94566 (not res!293784)) b!662372))

(declare-fun bs!94567 () Bool)

(assert (= bs!94567 (and m!928547 m!928515 m!928507)))

(assert (=> bs!94567 m!928507))

(assert (=> bs!94567 m!928547))

(assert (=> bs!94567 s!44799))

(declare-fun bs!94568 () Bool)

(declare-fun s!44801 () Bool)

(assert (= bs!94568 (and neg-inst!340 s!44801)))

(declare-fun res!293785 () Bool)

(declare-fun e!409911 () Bool)

(assert (=> bs!94568 (=> res!293785 e!409911)))

(assert (=> bs!94568 (= res!293785 (not (= (list!3060 lt!282222) (list!3060 lt!282222))))))

(assert (=> bs!94568 (=> true e!409911)))

(declare-fun b!662373 () Bool)

(assert (=> b!662373 (= e!409911 (= (toValue!11 KeywordValueInjection!63 lt!282222) (toValue!11 KeywordValueInjection!63 lt!282222)))))

(assert (= (and bs!94568 (not res!293785)) b!662373))

(assert (=> m!928547 s!44801))

(declare-fun bs!94569 () Bool)

(declare-fun s!44803 () Bool)

(assert (= bs!94569 (and neg-inst!340 s!44803)))

(declare-fun res!293786 () Bool)

(declare-fun e!409912 () Bool)

(assert (=> bs!94569 (=> res!293786 e!409912)))

(assert (=> bs!94569 (= res!293786 (not (= (list!3060 x!145816) (list!3060 lt!282222))))))

(assert (=> bs!94569 (=> true e!409912)))

(declare-fun b!662374 () Bool)

(assert (=> b!662374 (= e!409912 (= (toValue!11 KeywordValueInjection!63 x!145816) (toValue!11 KeywordValueInjection!63 lt!282222)))))

(assert (= (and bs!94569 (not res!293786)) b!662374))

(declare-fun bs!94570 () Bool)

(assert (= bs!94570 (and m!928547 m!928497 m!928499)))

(assert (=> bs!94570 m!928499))

(assert (=> bs!94570 m!928547))

(assert (=> bs!94570 s!44803))

(declare-fun bs!94571 () Bool)

(declare-fun s!44805 () Bool)

(assert (= bs!94571 (and neg-inst!340 s!44805)))

(declare-fun res!293787 () Bool)

(declare-fun e!409913 () Bool)

(assert (=> bs!94571 (=> res!293787 e!409913)))

(assert (=> bs!94571 (= res!293787 (not (= (list!3060 x!145818) (list!3060 lt!282222))))))

(assert (=> bs!94571 (=> true e!409913)))

(declare-fun b!662375 () Bool)

(assert (=> b!662375 (= e!409913 (= (toValue!11 KeywordValueInjection!63 x!145818) (toValue!11 KeywordValueInjection!63 lt!282222)))))

(assert (= (and bs!94571 (not res!293787)) b!662375))

(declare-fun bs!94572 () Bool)

(assert (= bs!94572 (and m!928547 m!928509 m!928517)))

(assert (=> bs!94572 m!928509))

(assert (=> bs!94572 m!928547))

(assert (=> bs!94572 s!44805))

(declare-fun bs!94573 () Bool)

(declare-fun s!44807 () Bool)

(assert (= bs!94573 (and neg-inst!340 s!44807)))

(declare-fun res!293788 () Bool)

(declare-fun e!409914 () Bool)

(assert (=> bs!94573 (=> res!293788 e!409914)))

(assert (=> bs!94573 (= res!293788 (not (= (list!3060 lt!282222) (list!3060 x!145818))))))

(assert (=> bs!94573 (=> true e!409914)))

(declare-fun b!662376 () Bool)

(assert (=> b!662376 (= e!409914 (= (toValue!11 KeywordValueInjection!63 lt!282222) (toValue!11 KeywordValueInjection!63 x!145818)))))

(assert (= (and bs!94573 (not res!293788)) b!662376))

(assert (=> bs!94572 m!928547))

(assert (=> bs!94572 m!928509))

(assert (=> bs!94572 s!44807))

(declare-fun bs!94574 () Bool)

(declare-fun s!44809 () Bool)

(assert (= bs!94574 (and neg-inst!340 s!44809)))

(declare-fun res!293789 () Bool)

(declare-fun e!409915 () Bool)

(assert (=> bs!94574 (=> res!293789 e!409915)))

(assert (=> bs!94574 (= res!293789 (not (= (list!3060 lt!282222) (list!3060 x!145817))))))

(assert (=> bs!94574 (=> true e!409915)))

(declare-fun b!662377 () Bool)

(assert (=> b!662377 (= e!409915 (= (toValue!11 KeywordValueInjection!63 lt!282222) (toValue!11 KeywordValueInjection!63 x!145817)))))

(assert (= (and bs!94574 (not res!293789)) b!662377))

(assert (=> bs!94567 m!928547))

(assert (=> bs!94567 m!928507))

(assert (=> bs!94567 s!44809))

(assert (=> m!928547 s!44801))

(declare-fun bs!94575 () Bool)

(declare-fun s!44811 () Bool)

(assert (= bs!94575 (and neg-inst!340 s!44811)))

(declare-fun res!293790 () Bool)

(declare-fun e!409916 () Bool)

(assert (=> bs!94575 (=> res!293790 e!409916)))

(assert (=> bs!94575 (= res!293790 (not (= (list!3060 lt!282222) (list!3060 x!145816))))))

(assert (=> bs!94575 (=> true e!409916)))

(declare-fun b!662378 () Bool)

(assert (=> b!662378 (= e!409916 (= (toValue!11 KeywordValueInjection!63 lt!282222) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (= (and bs!94575 (not res!293790)) b!662378))

(assert (=> bs!94570 m!928547))

(assert (=> bs!94570 m!928499))

(assert (=> bs!94570 s!44811))

(declare-fun bs!94576 () Bool)

(declare-fun s!44813 () Bool)

(assert (= bs!94576 (and neg-inst!340 s!44813)))

(declare-fun res!293791 () Bool)

(declare-fun e!409917 () Bool)

(assert (=> bs!94576 (=> res!293791 e!409917)))

(assert (=> bs!94576 (= res!293791 (not (= (list!3060 lt!282222) (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> bs!94576 (=> true e!409917)))

(declare-fun b!662379 () Bool)

(assert (=> b!662379 (= e!409917 (= (toValue!11 KeywordValueInjection!63 lt!282222) (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (= (and bs!94576 (not res!293791)) b!662379))

(assert (=> bs!94565 m!928547))

(assert (=> bs!94565 m!928505))

(assert (=> bs!94565 s!44813))

(assert (=> d!226293 m!928547))

(declare-fun m!928549 () Bool)

(assert (=> d!226293 m!928549))

(declare-fun m!928551 () Bool)

(assert (=> b!662370 m!928551))

(assert (=> b!662281 d!226293))

(declare-fun d!226295 () Bool)

(declare-fun e!409920 () Bool)

(assert (=> d!226295 e!409920))

(declare-fun res!293794 () Bool)

(assert (=> d!226295 (=> (not res!293794) (not e!409920))))

(declare-fun lt!282225 () BalanceConc!5172)

(assert (=> d!226295 (= res!293794 (= (list!3058 lt!282225) (Cons!7257 (Token!2661 (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (lBracketRule!0 JsonLexer!245) 1 (Cons!7255 #x005B Nil!7255)) Nil!7257)))))

(declare-fun singleton!218 (Token!2660) BalanceConc!5172)

(assert (=> d!226295 (= lt!282225 (singleton!218 (Token!2661 (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (lBracketRule!0 JsonLexer!245) 1 (Cons!7255 #x005B Nil!7255))))))

(assert (=> d!226295 (= (singletonSeq!456 (Token!2661 (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (lBracketRule!0 JsonLexer!245) 1 (Cons!7255 #x005B Nil!7255))) lt!282225)))

(declare-fun b!662382 () Bool)

(declare-fun isBalanced!674 (Conc!2580) Bool)

(assert (=> b!662382 (= e!409920 (isBalanced!674 (c!119116 lt!282225)))))

(assert (= (and d!226295 res!293794) b!662382))

(declare-fun m!928553 () Bool)

(assert (=> d!226295 m!928553))

(declare-fun m!928555 () Bool)

(assert (=> d!226295 m!928555))

(declare-fun m!928557 () Bool)

(assert (=> b!662382 m!928557))

(assert (=> b!662281 d!226295))

(declare-fun d!226297 () Bool)

(assert (=> d!226297 (= (array_inv!878 (_keys!995 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) (bvsge (size!5719 (_keys!995 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!662276 d!226297))

(declare-fun d!226299 () Bool)

(assert (=> d!226299 (= (array_inv!879 (_values!980 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) (bvsge (size!5720 (_values!980 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!662276 d!226299))

(declare-fun d!226301 () Bool)

(declare-fun res!293797 () Bool)

(declare-fun e!409923 () Bool)

(assert (=> d!226301 (=> (not res!293797) (not e!409923))))

(declare-fun rulesValid!516 (LexerInterface!1285 List!7270) Bool)

(assert (=> d!226301 (= res!293797 (rulesValid!516 Lexer!1283 lt!282194))))

(assert (=> d!226301 (= (rulesInvariant!1220 Lexer!1283 lt!282194) e!409923)))

(declare-fun b!662385 () Bool)

(declare-datatypes ((List!7272 0))(
  ( (Nil!7258) (Cons!7258 (h!12659 String!9255) (t!86523 List!7272)) )
))
(declare-fun noDuplicateTag!516 (LexerInterface!1285 List!7270 List!7272) Bool)

(assert (=> b!662385 (= e!409923 (noDuplicateTag!516 Lexer!1283 lt!282194 Nil!7258))))

(assert (= (and d!226301 res!293797) b!662385))

(declare-fun m!928559 () Bool)

(assert (=> d!226301 m!928559))

(declare-fun m!928561 () Bool)

(assert (=> b!662385 m!928561))

(assert (=> b!662286 d!226301))

(declare-fun condMapEmpty!2780 () Bool)

(declare-fun mapDefault!2780 () List!7267)

(assert (=> mapNonEmpty!2776 (= condMapEmpty!2780 (= mapRest!2776 ((as const (Array (_ BitVec 32) List!7267)) mapDefault!2780)))))

(declare-fun e!409938 () Bool)

(declare-fun mapRes!2780 () Bool)

(assert (=> mapNonEmpty!2776 (= tp!202220 (and e!409938 mapRes!2780))))

(declare-fun setNonEmpty!3175 () Bool)

(declare-fun setRes!3176 () Bool)

(declare-fun tp!202250 () Bool)

(declare-fun setElem!3175 () Context!434)

(declare-fun inv!9324 (Context!434) Bool)

(assert (=> setNonEmpty!3175 (= setRes!3176 (and tp!202250 (inv!9324 setElem!3175)))))

(declare-fun mapValue!2780 () List!7267)

(declare-fun setRest!3176 () (InoxSet Context!434))

(assert (=> setNonEmpty!3175 (= (_2!4174 (h!12654 mapValue!2780)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3175 true) setRest!3176))))

(declare-fun setNonEmpty!3176 () Bool)

(declare-fun setRes!3175 () Bool)

(declare-fun tp!202249 () Bool)

(declare-fun setElem!3176 () Context!434)

(assert (=> setNonEmpty!3176 (= setRes!3175 (and tp!202249 (inv!9324 setElem!3176)))))

(declare-fun setRest!3175 () (InoxSet Context!434))

(assert (=> setNonEmpty!3176 (= (_2!4174 (h!12654 mapDefault!2780)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3176 true) setRest!3175))))

(declare-fun mapNonEmpty!2780 () Bool)

(declare-fun tp!202252 () Bool)

(declare-fun e!409940 () Bool)

(assert (=> mapNonEmpty!2780 (= mapRes!2780 (and tp!202252 e!409940))))

(declare-fun mapRest!2780 () (Array (_ BitVec 32) List!7267))

(declare-fun mapKey!2780 () (_ BitVec 32))

(assert (=> mapNonEmpty!2780 (= mapRest!2776 (store mapRest!2780 mapKey!2780 mapValue!2780))))

(declare-fun setIsEmpty!3175 () Bool)

(assert (=> setIsEmpty!3175 setRes!3176))

(declare-fun tp!202251 () Bool)

(declare-fun b!662392 () Bool)

(assert (=> b!662392 (= e!409938 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 mapDefault!2780)))) setRes!3175 tp!202251))))

(declare-fun condSetEmpty!3176 () Bool)

(assert (=> b!662392 (= condSetEmpty!3176 (= (_2!4174 (h!12654 mapDefault!2780)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun mapIsEmpty!2780 () Bool)

(assert (=> mapIsEmpty!2780 mapRes!2780))

(declare-fun tp!202248 () Bool)

(declare-fun b!662393 () Bool)

(assert (=> b!662393 (= e!409940 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 mapValue!2780)))) setRes!3176 tp!202248))))

(declare-fun condSetEmpty!3175 () Bool)

(assert (=> b!662393 (= condSetEmpty!3175 (= (_2!4174 (h!12654 mapValue!2780)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3176 () Bool)

(assert (=> setIsEmpty!3176 setRes!3175))

(assert (= (and mapNonEmpty!2776 condMapEmpty!2780) mapIsEmpty!2780))

(assert (= (and mapNonEmpty!2776 (not condMapEmpty!2780)) mapNonEmpty!2780))

(assert (= (and b!662393 condSetEmpty!3175) setIsEmpty!3175))

(assert (= (and b!662393 (not condSetEmpty!3175)) setNonEmpty!3175))

(assert (= (and mapNonEmpty!2780 ((_ is Cons!7253) mapValue!2780)) b!662393))

(assert (= (and b!662392 condSetEmpty!3176) setIsEmpty!3176))

(assert (= (and b!662392 (not condSetEmpty!3176)) setNonEmpty!3176))

(assert (= (and mapNonEmpty!2776 ((_ is Cons!7253) mapDefault!2780)) b!662392))

(declare-fun m!928563 () Bool)

(assert (=> mapNonEmpty!2780 m!928563))

(declare-fun m!928565 () Bool)

(assert (=> setNonEmpty!3175 m!928565))

(declare-fun m!928567 () Bool)

(assert (=> setNonEmpty!3176 m!928567))

(declare-fun m!928569 () Bool)

(assert (=> b!662393 m!928569))

(declare-fun m!928571 () Bool)

(assert (=> b!662392 m!928571))

(declare-fun tp!202257 () Bool)

(declare-fun e!409950 () Bool)

(declare-fun b!662398 () Bool)

(declare-fun setRes!3179 () Bool)

(assert (=> b!662398 (= e!409950 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 mapValue!2776)))) setRes!3179 tp!202257))))

(declare-fun condSetEmpty!3179 () Bool)

(assert (=> b!662398 (= condSetEmpty!3179 (= (_2!4174 (h!12654 mapValue!2776)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3179 () Bool)

(assert (=> setIsEmpty!3179 setRes!3179))

(declare-fun setNonEmpty!3179 () Bool)

(declare-fun tp!202258 () Bool)

(declare-fun setElem!3179 () Context!434)

(assert (=> setNonEmpty!3179 (= setRes!3179 (and tp!202258 (inv!9324 setElem!3179)))))

(declare-fun setRest!3179 () (InoxSet Context!434))

(assert (=> setNonEmpty!3179 (= (_2!4174 (h!12654 mapValue!2776)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3179 true) setRest!3179))))

(assert (=> mapNonEmpty!2776 (= tp!202228 e!409950)))

(assert (= (and b!662398 condSetEmpty!3179) setIsEmpty!3179))

(assert (= (and b!662398 (not condSetEmpty!3179)) setNonEmpty!3179))

(assert (= (and mapNonEmpty!2776 ((_ is Cons!7253) mapValue!2776)) b!662398))

(declare-fun m!928573 () Bool)

(assert (=> b!662398 m!928573))

(declare-fun m!928575 () Bool)

(assert (=> setNonEmpty!3179 m!928575))

(declare-fun setIsEmpty!3184 () Bool)

(declare-fun setRes!3185 () Bool)

(assert (=> setIsEmpty!3184 setRes!3185))

(declare-fun e!409967 () Bool)

(declare-fun mapValue!2783 () List!7268)

(declare-fun tp!202270 () Bool)

(declare-fun b!662405 () Bool)

(assert (=> b!662405 (= e!409967 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 mapValue!2783)))) setRes!3185 tp!202270))))

(declare-fun condSetEmpty!3184 () Bool)

(assert (=> b!662405 (= condSetEmpty!3184 (= (_2!4176 (h!12655 mapValue!2783)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun e!409963 () Bool)

(declare-fun mapDefault!2783 () List!7268)

(declare-fun tp!202269 () Bool)

(declare-fun setRes!3184 () Bool)

(declare-fun b!662406 () Bool)

(assert (=> b!662406 (= e!409963 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 mapDefault!2783)))) setRes!3184 tp!202269))))

(declare-fun condSetEmpty!3185 () Bool)

(assert (=> b!662406 (= condSetEmpty!3185 (= (_2!4176 (h!12655 mapDefault!2783)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun mapNonEmpty!2783 () Bool)

(declare-fun mapRes!2783 () Bool)

(declare-fun tp!202273 () Bool)

(assert (=> mapNonEmpty!2783 (= mapRes!2783 (and tp!202273 e!409967))))

(declare-fun mapRest!2783 () (Array (_ BitVec 32) List!7268))

(declare-fun mapKey!2783 () (_ BitVec 32))

(assert (=> mapNonEmpty!2783 (= mapRest!2777 (store mapRest!2783 mapKey!2783 mapValue!2783))))

(declare-fun setNonEmpty!3184 () Bool)

(declare-fun tp!202272 () Bool)

(declare-fun setElem!3185 () Context!434)

(assert (=> setNonEmpty!3184 (= setRes!3184 (and tp!202272 (inv!9324 setElem!3185)))))

(declare-fun setRest!3185 () (InoxSet Context!434))

(assert (=> setNonEmpty!3184 (= (_2!4176 (h!12655 mapDefault!2783)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3185 true) setRest!3185))))

(declare-fun condMapEmpty!2783 () Bool)

(assert (=> mapNonEmpty!2777 (= condMapEmpty!2783 (= mapRest!2777 ((as const (Array (_ BitVec 32) List!7268)) mapDefault!2783)))))

(assert (=> mapNonEmpty!2777 (= tp!202225 (and e!409963 mapRes!2783))))

(declare-fun setIsEmpty!3185 () Bool)

(assert (=> setIsEmpty!3185 setRes!3184))

(declare-fun setNonEmpty!3185 () Bool)

(declare-fun tp!202271 () Bool)

(declare-fun setElem!3184 () Context!434)

(assert (=> setNonEmpty!3185 (= setRes!3185 (and tp!202271 (inv!9324 setElem!3184)))))

(declare-fun setRest!3184 () (InoxSet Context!434))

(assert (=> setNonEmpty!3185 (= (_2!4176 (h!12655 mapValue!2783)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3184 true) setRest!3184))))

(declare-fun mapIsEmpty!2783 () Bool)

(assert (=> mapIsEmpty!2783 mapRes!2783))

(assert (= (and mapNonEmpty!2777 condMapEmpty!2783) mapIsEmpty!2783))

(assert (= (and mapNonEmpty!2777 (not condMapEmpty!2783)) mapNonEmpty!2783))

(assert (= (and b!662405 condSetEmpty!3184) setIsEmpty!3184))

(assert (= (and b!662405 (not condSetEmpty!3184)) setNonEmpty!3185))

(assert (= (and mapNonEmpty!2783 ((_ is Cons!7254) mapValue!2783)) b!662405))

(assert (= (and b!662406 condSetEmpty!3185) setIsEmpty!3185))

(assert (= (and b!662406 (not condSetEmpty!3185)) setNonEmpty!3184))

(assert (= (and mapNonEmpty!2777 ((_ is Cons!7254) mapDefault!2783)) b!662406))

(declare-fun m!928577 () Bool)

(assert (=> b!662405 m!928577))

(declare-fun m!928579 () Bool)

(assert (=> setNonEmpty!3185 m!928579))

(declare-fun m!928581 () Bool)

(assert (=> setNonEmpty!3184 m!928581))

(declare-fun m!928583 () Bool)

(assert (=> mapNonEmpty!2783 m!928583))

(declare-fun m!928585 () Bool)

(assert (=> b!662406 m!928585))

(declare-fun tp!202279 () Bool)

(declare-fun e!409975 () Bool)

(declare-fun b!662411 () Bool)

(declare-fun setRes!3188 () Bool)

(assert (=> b!662411 (= e!409975 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 mapValue!2777)))) setRes!3188 tp!202279))))

(declare-fun condSetEmpty!3188 () Bool)

(assert (=> b!662411 (= condSetEmpty!3188 (= (_2!4176 (h!12655 mapValue!2777)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3188 () Bool)

(assert (=> setIsEmpty!3188 setRes!3188))

(declare-fun setNonEmpty!3188 () Bool)

(declare-fun tp!202278 () Bool)

(declare-fun setElem!3188 () Context!434)

(assert (=> setNonEmpty!3188 (= setRes!3188 (and tp!202278 (inv!9324 setElem!3188)))))

(declare-fun setRest!3188 () (InoxSet Context!434))

(assert (=> setNonEmpty!3188 (= (_2!4176 (h!12655 mapValue!2777)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3188 true) setRest!3188))))

(assert (=> mapNonEmpty!2777 (= tp!202221 e!409975)))

(assert (= (and b!662411 condSetEmpty!3188) setIsEmpty!3188))

(assert (= (and b!662411 (not condSetEmpty!3188)) setNonEmpty!3188))

(assert (= (and mapNonEmpty!2777 ((_ is Cons!7254) mapValue!2777)) b!662411))

(declare-fun m!928587 () Bool)

(assert (=> b!662411 m!928587))

(declare-fun m!928589 () Bool)

(assert (=> setNonEmpty!3188 m!928589))

(declare-fun setRes!3189 () Bool)

(declare-fun b!662412 () Bool)

(declare-fun e!409978 () Bool)

(declare-fun tp!202281 () Bool)

(assert (=> b!662412 (= e!409978 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))))) setRes!3189 tp!202281))))

(declare-fun condSetEmpty!3189 () Bool)

(assert (=> b!662412 (= condSetEmpty!3189 (= (_2!4176 (h!12655 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3189 () Bool)

(assert (=> setIsEmpty!3189 setRes!3189))

(declare-fun setNonEmpty!3189 () Bool)

(declare-fun tp!202280 () Bool)

(declare-fun setElem!3189 () Context!434)

(assert (=> setNonEmpty!3189 (= setRes!3189 (and tp!202280 (inv!9324 setElem!3189)))))

(declare-fun setRest!3189 () (InoxSet Context!434))

(assert (=> setNonEmpty!3189 (= (_2!4176 (h!12655 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3189 true) setRest!3189))))

(assert (=> b!662276 (= tp!202217 e!409978)))

(assert (= (and b!662412 condSetEmpty!3189) setIsEmpty!3189))

(assert (= (and b!662412 (not condSetEmpty!3189)) setNonEmpty!3189))

(assert (= (and b!662276 ((_ is Cons!7254) (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))) b!662412))

(declare-fun m!928591 () Bool)

(assert (=> b!662412 m!928591))

(declare-fun m!928593 () Bool)

(assert (=> setNonEmpty!3189 m!928593))

(declare-fun tp!202283 () Bool)

(declare-fun setRes!3190 () Bool)

(declare-fun b!662413 () Bool)

(declare-fun e!409981 () Bool)

(assert (=> b!662413 (= e!409981 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))))) setRes!3190 tp!202283))))

(declare-fun condSetEmpty!3190 () Bool)

(assert (=> b!662413 (= condSetEmpty!3190 (= (_2!4176 (h!12655 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3190 () Bool)

(assert (=> setIsEmpty!3190 setRes!3190))

(declare-fun setNonEmpty!3190 () Bool)

(declare-fun tp!202282 () Bool)

(declare-fun setElem!3190 () Context!434)

(assert (=> setNonEmpty!3190 (= setRes!3190 (and tp!202282 (inv!9324 setElem!3190)))))

(declare-fun setRest!3190 () (InoxSet Context!434))

(assert (=> setNonEmpty!3190 (= (_2!4176 (h!12655 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3190 true) setRest!3190))))

(assert (=> b!662276 (= tp!202218 e!409981)))

(assert (= (and b!662413 condSetEmpty!3190) setIsEmpty!3190))

(assert (= (and b!662413 (not condSetEmpty!3190)) setNonEmpty!3190))

(assert (= (and b!662276 ((_ is Cons!7254) (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))) b!662413))

(declare-fun m!928595 () Bool)

(assert (=> b!662413 m!928595))

(declare-fun m!928597 () Bool)

(assert (=> setNonEmpty!3190 m!928597))

(declare-fun setRes!3191 () Bool)

(declare-fun e!409986 () Bool)

(declare-fun b!662414 () Bool)

(declare-fun tp!202284 () Bool)

(assert (=> b!662414 (= e!409986 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))))) setRes!3191 tp!202284))))

(declare-fun condSetEmpty!3191 () Bool)

(assert (=> b!662414 (= condSetEmpty!3191 (= (_2!4174 (h!12654 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3191 () Bool)

(assert (=> setIsEmpty!3191 setRes!3191))

(declare-fun setNonEmpty!3191 () Bool)

(declare-fun tp!202285 () Bool)

(declare-fun setElem!3191 () Context!434)

(assert (=> setNonEmpty!3191 (= setRes!3191 (and tp!202285 (inv!9324 setElem!3191)))))

(declare-fun setRest!3191 () (InoxSet Context!434))

(assert (=> setNonEmpty!3191 (= (_2!4174 (h!12654 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3191 true) setRest!3191))))

(assert (=> b!662289 (= tp!202223 e!409986)))

(assert (= (and b!662414 condSetEmpty!3191) setIsEmpty!3191))

(assert (= (and b!662414 (not condSetEmpty!3191)) setNonEmpty!3191))

(assert (= (and b!662289 ((_ is Cons!7253) (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))) b!662414))

(declare-fun m!928599 () Bool)

(assert (=> b!662414 m!928599))

(declare-fun m!928601 () Bool)

(assert (=> setNonEmpty!3191 m!928601))

(declare-fun b!662415 () Bool)

(declare-fun setRes!3192 () Bool)

(declare-fun e!409989 () Bool)

(declare-fun tp!202286 () Bool)

(assert (=> b!662415 (= e!409989 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))))) setRes!3192 tp!202286))))

(declare-fun condSetEmpty!3192 () Bool)

(assert (=> b!662415 (= condSetEmpty!3192 (= (_2!4174 (h!12654 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3192 () Bool)

(assert (=> setIsEmpty!3192 setRes!3192))

(declare-fun setNonEmpty!3192 () Bool)

(declare-fun tp!202287 () Bool)

(declare-fun setElem!3192 () Context!434)

(assert (=> setNonEmpty!3192 (= setRes!3192 (and tp!202287 (inv!9324 setElem!3192)))))

(declare-fun setRest!3192 () (InoxSet Context!434))

(assert (=> setNonEmpty!3192 (= (_2!4174 (h!12654 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3192 true) setRest!3192))))

(assert (=> b!662289 (= tp!202227 e!409989)))

(assert (= (and b!662415 condSetEmpty!3192) setIsEmpty!3192))

(assert (= (and b!662415 (not condSetEmpty!3192)) setNonEmpty!3192))

(assert (= (and b!662289 ((_ is Cons!7253) (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))) b!662415))

(declare-fun m!928603 () Bool)

(assert (=> b!662415 m!928603))

(declare-fun m!928605 () Bool)

(assert (=> setNonEmpty!3192 m!928605))

(declare-fun b!662416 () Bool)

(declare-fun tp!202289 () Bool)

(declare-fun e!409990 () Bool)

(declare-fun setRes!3193 () Bool)

(assert (=> b!662416 (= e!409990 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 mapDefault!2777)))) setRes!3193 tp!202289))))

(declare-fun condSetEmpty!3193 () Bool)

(assert (=> b!662416 (= condSetEmpty!3193 (= (_2!4176 (h!12655 mapDefault!2777)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3193 () Bool)

(assert (=> setIsEmpty!3193 setRes!3193))

(declare-fun setNonEmpty!3193 () Bool)

(declare-fun tp!202288 () Bool)

(declare-fun setElem!3193 () Context!434)

(assert (=> setNonEmpty!3193 (= setRes!3193 (and tp!202288 (inv!9324 setElem!3193)))))

(declare-fun setRest!3193 () (InoxSet Context!434))

(assert (=> setNonEmpty!3193 (= (_2!4176 (h!12655 mapDefault!2777)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3193 true) setRest!3193))))

(assert (=> b!662280 (= tp!202224 e!409990)))

(assert (= (and b!662416 condSetEmpty!3193) setIsEmpty!3193))

(assert (= (and b!662416 (not condSetEmpty!3193)) setNonEmpty!3193))

(assert (= (and b!662280 ((_ is Cons!7254) mapDefault!2777)) b!662416))

(declare-fun m!928607 () Bool)

(assert (=> b!662416 m!928607))

(declare-fun m!928609 () Bool)

(assert (=> setNonEmpty!3193 m!928609))

(declare-fun b!662417 () Bool)

(declare-fun e!409995 () Bool)

(declare-fun setRes!3194 () Bool)

(declare-fun tp!202290 () Bool)

(assert (=> b!662417 (= e!409995 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 mapDefault!2776)))) setRes!3194 tp!202290))))

(declare-fun condSetEmpty!3194 () Bool)

(assert (=> b!662417 (= condSetEmpty!3194 (= (_2!4174 (h!12654 mapDefault!2776)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3194 () Bool)

(assert (=> setIsEmpty!3194 setRes!3194))

(declare-fun setNonEmpty!3194 () Bool)

(declare-fun tp!202291 () Bool)

(declare-fun setElem!3194 () Context!434)

(assert (=> setNonEmpty!3194 (= setRes!3194 (and tp!202291 (inv!9324 setElem!3194)))))

(declare-fun setRest!3194 () (InoxSet Context!434))

(assert (=> setNonEmpty!3194 (= (_2!4174 (h!12654 mapDefault!2776)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3194 true) setRest!3194))))

(assert (=> b!662283 (= tp!202215 e!409995)))

(assert (= (and b!662417 condSetEmpty!3194) setIsEmpty!3194))

(assert (= (and b!662417 (not condSetEmpty!3194)) setNonEmpty!3194))

(assert (= (and b!662283 ((_ is Cons!7253) mapDefault!2776)) b!662417))

(declare-fun m!928611 () Bool)

(assert (=> b!662417 m!928611))

(declare-fun m!928613 () Bool)

(assert (=> setNonEmpty!3194 m!928613))

(declare-fun b_lambda!25779 () Bool)

(assert (= b_lambda!25777 (or d!226285 b_lambda!25779)))

(declare-fun bs!94577 () Bool)

(declare-fun d!226303 () Bool)

(assert (= bs!94577 (and d!226303 d!226285)))

(assert (=> bs!94577 (= (dynLambda!3823 lambda!20565 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)))))

(assert (=> bs!94577 m!928435))

(declare-fun bs!94578 () Bool)

(declare-fun s!44815 () Bool)

(assert (= bs!94578 (and neg-inst!340 s!44815)))

(declare-fun res!293798 () Bool)

(declare-fun e!409996 () Bool)

(assert (=> bs!94578 (=> res!293798 e!409996)))

(assert (=> bs!94578 (= res!293798 (not (= (list!3060 x!145817) (list!3060 (singletonSeq!457 #x005B)))))))

(assert (=> bs!94578 (=> true e!409996)))

(declare-fun b!662418 () Bool)

(assert (=> b!662418 (= e!409996 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B))))))

(assert (= (and bs!94578 (not res!293798)) b!662418))

(declare-fun bs!94579 () Bool)

(declare-fun m!928615 () Bool)

(assert (= bs!94579 (and m!928615 m!928515 m!928507)))

(assert (=> bs!94579 m!928507))

(declare-fun bs!94580 () Bool)

(declare-fun m!928617 () Bool)

(assert (= bs!94580 (and m!928617 m!928515 m!928507)))

(assert (=> bs!94580 s!44815))

(declare-fun bs!94581 () Bool)

(declare-fun s!44817 () Bool)

(assert (= bs!94581 (and neg-inst!340 s!44817)))

(declare-fun res!293799 () Bool)

(declare-fun e!409997 () Bool)

(assert (=> bs!94581 (=> res!293799 e!409997)))

(assert (=> bs!94581 (= res!293799 (not (= (list!3060 (singletonSeq!457 #x005B)) (list!3060 (singletonSeq!457 #x005B)))))))

(assert (=> bs!94581 (=> true e!409997)))

(declare-fun b!662419 () Bool)

(assert (=> b!662419 (= e!409997 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B))))))

(assert (= (and bs!94581 (not res!293799)) b!662419))

(declare-fun bs!94582 () Bool)

(assert (= bs!94582 (and m!928617 m!928615)))

(assert (=> bs!94582 m!928617))

(assert (=> bs!94582 m!928617))

(assert (=> bs!94582 s!44817))

(declare-fun bs!94583 () Bool)

(declare-fun s!44819 () Bool)

(assert (= bs!94583 (and neg-inst!340 s!44819)))

(declare-fun res!293800 () Bool)

(declare-fun e!409998 () Bool)

(assert (=> bs!94583 (=> res!293800 e!409998)))

(assert (=> bs!94583 (= res!293800 (not (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 (singletonSeq!457 #x005B)))))))

(assert (=> bs!94583 (=> true e!409998)))

(declare-fun b!662420 () Bool)

(assert (=> b!662420 (= e!409998 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B))))))

(assert (= (and bs!94583 (not res!293800)) b!662420))

(declare-fun bs!94584 () Bool)

(assert (= bs!94584 (and m!928617 m!928505)))

(assert (=> bs!94584 m!928505))

(assert (=> bs!94584 m!928617))

(assert (=> bs!94584 s!44819))

(declare-fun bs!94585 () Bool)

(declare-fun s!44821 () Bool)

(assert (= bs!94585 (and neg-inst!340 s!44821)))

(declare-fun res!293801 () Bool)

(declare-fun e!409999 () Bool)

(assert (=> bs!94585 (=> res!293801 e!409999)))

(assert (=> bs!94585 (= res!293801 (not (= (list!3060 lt!282222) (list!3060 (singletonSeq!457 #x005B)))))))

(assert (=> bs!94585 (=> true e!409999)))

(declare-fun b!662421 () Bool)

(assert (=> b!662421 (= e!409999 (= (toValue!11 KeywordValueInjection!63 lt!282222) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B))))))

(assert (= (and bs!94585 (not res!293801)) b!662421))

(declare-fun bs!94586 () Bool)

(assert (= bs!94586 (and m!928617 m!928547)))

(assert (=> bs!94586 m!928547))

(assert (=> bs!94586 m!928617))

(assert (=> bs!94586 s!44821))

(declare-fun bs!94587 () Bool)

(declare-fun s!44823 () Bool)

(assert (= bs!94587 (and neg-inst!340 s!44823)))

(declare-fun res!293802 () Bool)

(declare-fun e!410000 () Bool)

(assert (=> bs!94587 (=> res!293802 e!410000)))

(assert (=> bs!94587 (= res!293802 (not (= (list!3060 x!145816) (list!3060 (singletonSeq!457 #x005B)))))))

(assert (=> bs!94587 (=> true e!410000)))

(declare-fun b!662422 () Bool)

(assert (=> b!662422 (= e!410000 (= (toValue!11 KeywordValueInjection!63 x!145816) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B))))))

(assert (= (and bs!94587 (not res!293802)) b!662422))

(declare-fun bs!94588 () Bool)

(assert (= bs!94588 (and m!928617 m!928497 m!928499)))

(assert (=> bs!94588 m!928499))

(assert (=> bs!94588 m!928617))

(assert (=> bs!94588 s!44823))

(assert (=> m!928617 s!44817))

(declare-fun bs!94589 () Bool)

(declare-fun s!44825 () Bool)

(assert (= bs!94589 (and neg-inst!340 s!44825)))

(declare-fun res!293803 () Bool)

(declare-fun e!410001 () Bool)

(assert (=> bs!94589 (=> res!293803 e!410001)))

(assert (=> bs!94589 (= res!293803 (not (= (list!3060 x!145818) (list!3060 (singletonSeq!457 #x005B)))))))

(assert (=> bs!94589 (=> true e!410001)))

(declare-fun b!662423 () Bool)

(assert (=> b!662423 (= e!410001 (= (toValue!11 KeywordValueInjection!63 x!145818) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B))))))

(assert (= (and bs!94589 (not res!293803)) b!662423))

(declare-fun bs!94590 () Bool)

(assert (= bs!94590 (and m!928617 m!928509 m!928517)))

(assert (=> bs!94590 m!928509))

(assert (=> bs!94590 m!928617))

(assert (=> bs!94590 s!44825))

(assert (=> bs!94582 s!44817))

(declare-fun bs!94591 () Bool)

(declare-fun s!44827 () Bool)

(assert (= bs!94591 (and neg-inst!340 s!44827)))

(declare-fun res!293804 () Bool)

(declare-fun e!410002 () Bool)

(assert (=> bs!94591 (=> res!293804 e!410002)))

(assert (=> bs!94591 (= res!293804 (not (= (list!3060 (singletonSeq!457 #x005B)) (list!3060 x!145817))))))

(assert (=> bs!94591 (=> true e!410002)))

(declare-fun b!662424 () Bool)

(assert (=> b!662424 (= e!410002 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 x!145817)))))

(assert (= (and bs!94591 (not res!293804)) b!662424))

(assert (=> bs!94580 m!928617))

(assert (=> bs!94580 m!928507))

(assert (=> bs!94580 s!44827))

(declare-fun bs!94592 () Bool)

(declare-fun s!44829 () Bool)

(assert (= bs!94592 (and neg-inst!340 s!44829)))

(declare-fun res!293805 () Bool)

(declare-fun e!410003 () Bool)

(assert (=> bs!94592 (=> res!293805 e!410003)))

(assert (=> bs!94592 (= res!293805 (not (= (list!3060 (singletonSeq!457 #x005B)) (list!3060 lt!282222))))))

(assert (=> bs!94592 (=> true e!410003)))

(declare-fun b!662425 () Bool)

(assert (=> b!662425 (= e!410003 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 lt!282222)))))

(assert (= (and bs!94592 (not res!293805)) b!662425))

(assert (=> bs!94586 m!928617))

(assert (=> bs!94586 m!928547))

(assert (=> bs!94586 s!44829))

(declare-fun bs!94593 () Bool)

(declare-fun s!44831 () Bool)

(assert (= bs!94593 (and neg-inst!340 s!44831)))

(declare-fun res!293806 () Bool)

(declare-fun e!410004 () Bool)

(assert (=> bs!94593 (=> res!293806 e!410004)))

(assert (=> bs!94593 (= res!293806 (not (= (list!3060 (singletonSeq!457 #x005B)) (list!3060 x!145818))))))

(assert (=> bs!94593 (=> true e!410004)))

(declare-fun b!662426 () Bool)

(assert (=> b!662426 (= e!410004 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 x!145818)))))

(assert (= (and bs!94593 (not res!293806)) b!662426))

(assert (=> bs!94590 m!928617))

(assert (=> bs!94590 m!928509))

(assert (=> bs!94590 s!44831))

(declare-fun bs!94594 () Bool)

(declare-fun s!44833 () Bool)

(assert (= bs!94594 (and neg-inst!340 s!44833)))

(declare-fun res!293807 () Bool)

(declare-fun e!410005 () Bool)

(assert (=> bs!94594 (=> res!293807 e!410005)))

(assert (=> bs!94594 (= res!293807 (not (= (list!3060 (singletonSeq!457 #x005B)) (list!3060 x!145816))))))

(assert (=> bs!94594 (=> true e!410005)))

(declare-fun b!662427 () Bool)

(assert (=> b!662427 (= e!410005 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (= (and bs!94594 (not res!293807)) b!662427))

(assert (=> bs!94588 m!928617))

(assert (=> bs!94588 m!928499))

(assert (=> bs!94588 s!44833))

(assert (=> m!928617 s!44817))

(declare-fun bs!94595 () Bool)

(declare-fun s!44835 () Bool)

(assert (= bs!94595 (and neg-inst!340 s!44835)))

(declare-fun res!293808 () Bool)

(declare-fun e!410006 () Bool)

(assert (=> bs!94595 (=> res!293808 e!410006)))

(assert (=> bs!94595 (= res!293808 (not (= (list!3060 (singletonSeq!457 #x005B)) (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> bs!94595 (=> true e!410006)))

(declare-fun b!662428 () Bool)

(assert (=> b!662428 (= e!410006 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (= (and bs!94595 (not res!293808)) b!662428))

(assert (=> bs!94584 m!928617))

(assert (=> bs!94584 m!928505))

(assert (=> bs!94584 s!44835))

(assert (=> bs!94579 m!928617))

(assert (=> bs!94579 s!44815))

(declare-fun bs!94596 () Bool)

(assert (= bs!94596 (and m!928615 m!928505)))

(assert (=> bs!94596 s!44819))

(declare-fun bs!94597 () Bool)

(assert (= bs!94597 (and m!928615 m!928497 m!928499)))

(assert (=> bs!94597 s!44823))

(declare-fun bs!94598 () Bool)

(assert (= bs!94598 m!928615))

(assert (=> bs!94598 s!44817))

(declare-fun bs!94599 () Bool)

(assert (= bs!94599 (and m!928615 m!928509 m!928517)))

(assert (=> bs!94599 s!44825))

(declare-fun bs!94600 () Bool)

(assert (= bs!94600 (and m!928615 m!928547)))

(assert (=> bs!94600 s!44821))

(assert (=> bs!94597 s!44833))

(assert (=> bs!94600 s!44829))

(assert (=> bs!94579 s!44827))

(assert (=> bs!94599 s!44831))

(assert (=> bs!94596 s!44835))

(assert (=> bs!94598 s!44817))

(assert (=> bs!94577 m!928615))

(assert (=> d!226289 d!226303))

(check-sat (not d!226285) (not bs!94578) (not bs!94581) (not b!662339) (not bs!94569) (not b!662344) (not b!662343) (not b!662316) (not b!662358) (not d!226293) (not b!662406) (not b!662353) (not b!662425) (not bs!94524) (not bs!94585) (not bs!94571) (not b!662427) (not b!662419) (not d!226279) (not b!662418) (not b!662423) (not bs!94589) (not bs!94573) (not bs!94529) (not bs!94595) (not b!662377) (not b!662417) (not b!662340) (not b!662421) (not b!662414) (not b!662378) (not bs!94533) (not b!662297) (not bs!94526) b_and!62961 (not bs!94536) (not b!662350) (not b!662382) (not bs!94587) (not bs!94593) (not b!662349) (not bs!94575) (not bs!94542) (not bs!94531) (not b!662296) (not b!662306) (not b!662412) (not d!226273) (not bs!94538) (not bs!94527) (not b!662313) (not b!662341) (not bs!94594) (not b!662364) (not setNonEmpty!3192) (not b!662398) (not b!662420) (not setNonEmpty!3188) (not bs!94568) (not b!662385) (not b!662372) (not bs!94544) (not bs!94537) (not b!662393) (not bs!94576) (not setNonEmpty!3184) (not bs!94546) (not b!662348) (not bs!94530) b_and!62965 (not bs!94592) (not mapNonEmpty!2780) (not bs!94545) (not b!662415) (not d!226301) (not b_next!19231) (not setNonEmpty!3193) (not b!662354) (not mapNonEmpty!2783) (not b!662346) (not bs!94564) (not bs!94566) (not b!662355) (not b!662426) (not b!662352) (not setNonEmpty!3185) (not d!226275) (not b_lambda!25779) (not b!662374) (not b!662351) (not bs!94547) (not b!662342) (not b!662424) (not d!226287) b_and!62959 (not b!662347) (not b!662379) (not b!662405) (not b_next!19233) (not b_next!19229) (not b!662365) (not b_next!19235) (not b!662416) (not b!662370) (not d!226295) (not d!226291) (not bs!94535) (not bs!94577) (not b!662356) (not bs!94591) b_and!62963 (not setNonEmpty!3179) (not bs!94583) (not setNonEmpty!3176) (not setNonEmpty!3189) (not b!662413) (not b!662345) (not setNonEmpty!3190) (not b!662371) (not b!662373) (not b!662392) (not b!662428) (not bs!94574) (not bs!94540) (not setNonEmpty!3194) (not b!662376) (not b!662411) (not setNonEmpty!3191) (not setNonEmpty!3175) (not b!662422) (not b!662375) (not b!662357))
(check-sat b_and!62961 b_and!62965 (not b_next!19231) b_and!62963 b_and!62959 (not b_next!19233) (not b_next!19229) (not b_next!19235))
(get-model)

(declare-fun d!226305 () Bool)

(declare-fun lt!282228 () List!7269)

(declare-fun efficientList!84 (BalanceConc!5170) List!7269)

(assert (=> d!226305 (= lt!282228 (efficientList!84 lt!282222))))

(assert (=> d!226305 (= (toValue!11 KeywordValueInjection!63 lt!282222) (ite (= lt!282228 (Cons!7255 #x006E (Cons!7255 #x0075 (Cons!7255 #x006C (Cons!7255 #x006C Nil!7255))))) Null!1503 (ite (= lt!282228 (Cons!7255 #x0074 (Cons!7255 #x0072 (Cons!7255 #x0075 (Cons!7255 #x0065 Nil!7255))))) True!3007 (ite (= lt!282228 (Cons!7255 #x0066 (Cons!7255 #x0061 (Cons!7255 #x006C (Cons!7255 #x0073 (Cons!7255 #x0065 Nil!7255)))))) False!3007 (ite (= lt!282228 (Cons!7255 #x003A Nil!7255)) Colon!1503 (ite (= lt!282228 (Cons!7255 #x002C Nil!7255)) Comma!1503 (ite (= lt!282228 (Cons!7255 #x007B Nil!7255)) LeftBrace!1503 (ite (= lt!282228 (Cons!7255 #x007D Nil!7255)) RightBrace!1503 (ite (= lt!282228 (Cons!7255 #x005B Nil!7255)) LeftBracket!1503 (ite (= lt!282228 (Cons!7255 #x005D Nil!7255)) RightBracket!1503 (Broken!7518 lt!282228)))))))))))))

(declare-fun bs!94601 () Bool)

(assert (= bs!94601 d!226305))

(declare-fun m!928619 () Bool)

(assert (=> bs!94601 m!928619))

(assert (=> b!662377 d!226305))

(declare-fun d!226307 () Bool)

(declare-fun lt!282229 () List!7269)

(assert (=> d!226307 (= lt!282229 (efficientList!84 x!145817))))

(assert (=> d!226307 (= (toValue!11 KeywordValueInjection!63 x!145817) (ite (= lt!282229 (Cons!7255 #x006E (Cons!7255 #x0075 (Cons!7255 #x006C (Cons!7255 #x006C Nil!7255))))) Null!1503 (ite (= lt!282229 (Cons!7255 #x0074 (Cons!7255 #x0072 (Cons!7255 #x0075 (Cons!7255 #x0065 Nil!7255))))) True!3007 (ite (= lt!282229 (Cons!7255 #x0066 (Cons!7255 #x0061 (Cons!7255 #x006C (Cons!7255 #x0073 (Cons!7255 #x0065 Nil!7255)))))) False!3007 (ite (= lt!282229 (Cons!7255 #x003A Nil!7255)) Colon!1503 (ite (= lt!282229 (Cons!7255 #x002C Nil!7255)) Comma!1503 (ite (= lt!282229 (Cons!7255 #x007B Nil!7255)) LeftBrace!1503 (ite (= lt!282229 (Cons!7255 #x007D Nil!7255)) RightBrace!1503 (ite (= lt!282229 (Cons!7255 #x005B Nil!7255)) LeftBracket!1503 (ite (= lt!282229 (Cons!7255 #x005D Nil!7255)) RightBracket!1503 (Broken!7518 lt!282229)))))))))))))

(declare-fun bs!94602 () Bool)

(assert (= bs!94602 d!226307))

(declare-fun m!928621 () Bool)

(assert (=> bs!94602 m!928621))

(assert (=> b!662377 d!226307))

(assert (=> b!662418 d!226307))

(declare-fun d!226309 () Bool)

(declare-fun lt!282230 () List!7269)

(assert (=> d!226309 (= lt!282230 (efficientList!84 (singletonSeq!457 #x005B)))))

(assert (=> d!226309 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (ite (= lt!282230 (Cons!7255 #x006E (Cons!7255 #x0075 (Cons!7255 #x006C (Cons!7255 #x006C Nil!7255))))) Null!1503 (ite (= lt!282230 (Cons!7255 #x0074 (Cons!7255 #x0072 (Cons!7255 #x0075 (Cons!7255 #x0065 Nil!7255))))) True!3007 (ite (= lt!282230 (Cons!7255 #x0066 (Cons!7255 #x0061 (Cons!7255 #x006C (Cons!7255 #x0073 (Cons!7255 #x0065 Nil!7255)))))) False!3007 (ite (= lt!282230 (Cons!7255 #x003A Nil!7255)) Colon!1503 (ite (= lt!282230 (Cons!7255 #x002C Nil!7255)) Comma!1503 (ite (= lt!282230 (Cons!7255 #x007B Nil!7255)) LeftBrace!1503 (ite (= lt!282230 (Cons!7255 #x007D Nil!7255)) RightBrace!1503 (ite (= lt!282230 (Cons!7255 #x005B Nil!7255)) LeftBracket!1503 (ite (= lt!282230 (Cons!7255 #x005D Nil!7255)) RightBracket!1503 (Broken!7518 lt!282230)))))))))))))

(declare-fun bs!94603 () Bool)

(assert (= bs!94603 d!226309))

(assert (=> bs!94603 m!928435))

(declare-fun m!928623 () Bool)

(assert (=> bs!94603 m!928623))

(assert (=> b!662418 d!226309))

(declare-fun d!226311 () Bool)

(declare-fun list!3061 (Conc!2579) List!7269)

(assert (=> d!226311 (= (list!3060 (singletonSeq!457 #x005B)) (list!3061 (c!119115 (singletonSeq!457 #x005B))))))

(declare-fun bs!94604 () Bool)

(assert (= bs!94604 d!226311))

(declare-fun m!928625 () Bool)

(assert (=> bs!94604 m!928625))

(assert (=> bs!94591 d!226311))

(declare-fun d!226313 () Bool)

(assert (=> d!226313 (= (list!3060 x!145817) (list!3061 (c!119115 x!145817)))))

(declare-fun bs!94605 () Bool)

(assert (= bs!94605 d!226313))

(declare-fun m!928627 () Bool)

(assert (=> bs!94605 m!928627))

(assert (=> bs!94591 d!226313))

(assert (=> b!662372 d!226307))

(assert (=> b!662372 d!226305))

(declare-fun d!226315 () Bool)

(assert (=> d!226315 (= (list!3060 lt!282222) (list!3061 (c!119115 lt!282222)))))

(declare-fun bs!94606 () Bool)

(assert (= bs!94606 d!226315))

(declare-fun m!928629 () Bool)

(assert (=> bs!94606 m!928629))

(assert (=> bs!94574 d!226315))

(assert (=> bs!94574 d!226313))

(assert (=> bs!94578 d!226313))

(assert (=> bs!94578 d!226311))

(assert (=> bs!94566 d!226313))

(assert (=> bs!94566 d!226315))

(assert (=> b!662424 d!226309))

(assert (=> b!662424 d!226307))

(declare-fun bs!94607 () Bool)

(assert (= bs!94607 (and m!928497 b!662343)))

(assert (=> bs!94607 m!928497))

(assert (=> bs!94607 m!928497))

(declare-fun bs!94608 () Bool)

(assert (= bs!94608 (and m!928515 m!928497 b!662344)))

(assert (=> bs!94608 m!928497))

(assert (=> bs!94608 m!928515))

(declare-fun bs!94609 () Bool)

(assert (= bs!94609 (and m!928515 b!662345)))

(assert (=> bs!94609 m!928515))

(assert (=> bs!94609 m!928515))

(declare-fun bs!94610 () Bool)

(assert (= bs!94610 (and m!928515 m!928497 b!662346)))

(assert (=> bs!94610 m!928515))

(assert (=> bs!94610 m!928497))

(declare-fun bs!94611 () Bool)

(assert (= bs!94611 (and m!928505 m!928515 b!662347)))

(assert (=> bs!94611 m!928515))

(declare-fun m!928631 () Bool)

(assert (=> bs!94611 m!928631))

(declare-fun bs!94612 () Bool)

(assert (= bs!94612 (and m!928505 m!928497 b!662348)))

(assert (=> bs!94612 m!928497))

(assert (=> bs!94612 m!928631))

(declare-fun bs!94613 () Bool)

(assert (= bs!94613 (and m!928505 b!662349)))

(assert (=> bs!94613 m!928631))

(assert (=> bs!94613 m!928631))

(declare-fun bs!94614 () Bool)

(assert (= bs!94614 (and m!928505 m!928515 b!662350)))

(assert (=> bs!94614 m!928631))

(assert (=> bs!94614 m!928515))

(declare-fun bs!94615 () Bool)

(assert (= bs!94615 (and m!928505 m!928497 b!662351)))

(assert (=> bs!94615 m!928631))

(assert (=> bs!94615 m!928497))

(declare-fun bs!94616 () Bool)

(assert (= bs!94616 (and m!928509 m!928505 b!662352)))

(assert (=> bs!94616 m!928631))

(assert (=> bs!94616 m!928517))

(declare-fun bs!94617 () Bool)

(assert (= bs!94617 (and m!928509 m!928515 b!662353)))

(assert (=> bs!94617 m!928515))

(assert (=> bs!94617 m!928517))

(declare-fun bs!94618 () Bool)

(assert (= bs!94618 (and m!928509 m!928497 b!662354)))

(assert (=> bs!94618 m!928497))

(assert (=> bs!94618 m!928517))

(declare-fun bs!94619 () Bool)

(assert (= bs!94619 (and m!928509 b!662355)))

(assert (=> bs!94619 m!928517))

(assert (=> bs!94619 m!928517))

(declare-fun bs!94620 () Bool)

(assert (= bs!94620 (and m!928509 m!928505 b!662356)))

(assert (=> bs!94620 m!928517))

(assert (=> bs!94620 m!928631))

(declare-fun bs!94621 () Bool)

(assert (= bs!94621 (and m!928509 m!928515 b!662357)))

(assert (=> bs!94621 m!928517))

(assert (=> bs!94621 m!928515))

(declare-fun bs!94622 () Bool)

(assert (= bs!94622 (and m!928509 m!928497 b!662358)))

(assert (=> bs!94622 m!928517))

(assert (=> bs!94622 m!928497))

(declare-fun bs!94623 () Bool)

(assert (= bs!94623 (and m!928547 m!928505 b!662371)))

(assert (=> bs!94623 m!928631))

(declare-fun m!928633 () Bool)

(assert (=> bs!94623 m!928633))

(declare-fun bs!94624 () Bool)

(assert (= bs!94624 (and m!928547 m!928515 m!928507 b!662372)))

(assert (=> bs!94624 m!928515))

(assert (=> bs!94624 m!928633))

(declare-fun bs!94625 () Bool)

(assert (= bs!94625 (and m!928547 b!662373)))

(assert (=> bs!94625 m!928633))

(assert (=> bs!94625 m!928633))

(declare-fun bs!94626 () Bool)

(assert (= bs!94626 (and m!928547 m!928497 m!928499 b!662374)))

(assert (=> bs!94626 m!928497))

(assert (=> bs!94626 m!928633))

(declare-fun bs!94627 () Bool)

(assert (= bs!94627 (and m!928547 m!928509 m!928517 b!662375)))

(assert (=> bs!94627 m!928517))

(assert (=> bs!94627 m!928633))

(declare-fun bs!94628 () Bool)

(assert (= bs!94628 (and m!928547 m!928509 m!928517 b!662376)))

(assert (=> bs!94628 m!928633))

(assert (=> bs!94628 m!928517))

(declare-fun bs!94629 () Bool)

(assert (= bs!94629 (and m!928547 m!928515 m!928507 b!662377)))

(assert (=> bs!94629 m!928633))

(assert (=> bs!94629 m!928515))

(declare-fun bs!94630 () Bool)

(assert (= bs!94630 (and m!928547 m!928497 m!928499 b!662378)))

(assert (=> bs!94630 m!928633))

(assert (=> bs!94630 m!928497))

(declare-fun bs!94631 () Bool)

(assert (= bs!94631 (and m!928547 m!928505 b!662379)))

(assert (=> bs!94631 m!928633))

(assert (=> bs!94631 m!928631))

(declare-fun bs!94632 () Bool)

(assert (= bs!94632 (and m!928617 m!928615 b!662419)))

(assert (=> bs!94632 m!928615))

(assert (=> bs!94632 m!928615))

(declare-fun bs!94633 () Bool)

(assert (= bs!94633 (and m!928617 m!928505 b!662420)))

(assert (=> bs!94633 m!928631))

(assert (=> bs!94633 m!928615))

(declare-fun bs!94634 () Bool)

(assert (= bs!94634 (and m!928617 m!928547 b!662421)))

(assert (=> bs!94634 m!928633))

(assert (=> bs!94634 m!928615))

(declare-fun bs!94635 () Bool)

(assert (= bs!94635 (and m!928617 m!928497 m!928499 b!662422)))

(assert (=> bs!94635 m!928497))

(assert (=> bs!94635 m!928615))

(declare-fun bs!94636 () Bool)

(assert (= bs!94636 (and m!928617 m!928509 m!928517 b!662423)))

(assert (=> bs!94636 m!928517))

(assert (=> bs!94636 m!928615))

(declare-fun bs!94637 () Bool)

(assert (= bs!94637 (and m!928617 m!928515 m!928507 b!662424)))

(assert (=> bs!94637 m!928615))

(assert (=> bs!94637 m!928515))

(declare-fun bs!94638 () Bool)

(assert (= bs!94638 (and m!928617 m!928547 b!662425)))

(assert (=> bs!94638 m!928615))

(assert (=> bs!94638 m!928633))

(declare-fun bs!94639 () Bool)

(assert (= bs!94639 (and m!928617 m!928509 m!928517 b!662426)))

(assert (=> bs!94639 m!928615))

(assert (=> bs!94639 m!928517))

(declare-fun bs!94640 () Bool)

(assert (= bs!94640 (and m!928617 m!928497 m!928499 b!662427)))

(assert (=> bs!94640 m!928615))

(assert (=> bs!94640 m!928497))

(declare-fun bs!94641 () Bool)

(assert (= bs!94641 (and m!928617 m!928505 b!662428)))

(assert (=> bs!94641 m!928615))

(assert (=> bs!94641 m!928631))

(declare-fun bs!94642 () Bool)

(assert (= bs!94642 (and m!928615 m!928515 m!928507 b!662418)))

(assert (=> bs!94642 m!928515))

(assert (=> bs!94642 m!928615))

(check-sat (not d!226285) (not bs!94581) (not b!662339) (not bs!94569) (not b!662344) (not b!662343) (not b!662316) (not b!662358) (not d!226293) (not b!662406) (not b!662353) (not b!662425) (not bs!94524) (not bs!94585) (not bs!94571) (not b!662427) (not b!662419) (not d!226279) (not b!662423) (not bs!94589) (not bs!94573) (not bs!94529) (not bs!94595) (not d!226315) (not d!226313) (not b!662417) (not b!662340) (not b!662421) (not b!662414) (not b!662378) (not bs!94533) (not b!662297) (not bs!94526) b_and!62961 (not bs!94536) (not b!662350) (not b!662382) (not bs!94587) (not bs!94593) (not b!662349) (not bs!94575) (not bs!94542) (not bs!94531) (not b!662296) (not b!662306) (not b!662412) (not d!226273) (not bs!94538) (not bs!94527) (not b!662313) (not b!662341) (not bs!94594) (not b!662364) (not setNonEmpty!3192) (not b!662398) (not b!662420) (not d!226309) (not setNonEmpty!3188) (not bs!94568) (not b!662385) (not bs!94544) (not bs!94537) (not b!662393) (not bs!94576) (not setNonEmpty!3184) (not bs!94546) (not b!662348) (not bs!94530) b_and!62965 (not bs!94592) (not mapNonEmpty!2780) (not bs!94545) (not b!662415) (not d!226301) (not b_next!19231) (not setNonEmpty!3193) (not b!662354) (not mapNonEmpty!2783) (not b!662346) (not bs!94564) (not b!662355) (not b!662426) (not b!662352) (not setNonEmpty!3185) (not d!226275) (not b_lambda!25779) (not b!662374) (not b!662351) (not bs!94547) (not b!662342) (not d!226311) (not d!226287) b_and!62959 (not b!662347) (not b!662379) (not b!662405) (not b_next!19233) (not b_next!19229) (not b!662365) (not b_next!19235) (not b!662416) (not b!662370) (not d!226295) b_and!62963 (not d!226291) (not bs!94535) (not bs!94577) (not b!662356) (not setNonEmpty!3179) (not d!226305) (not bs!94583) (not setNonEmpty!3176) (not setNonEmpty!3189) (not b!662413) (not b!662345) (not d!226307) (not setNonEmpty!3190) (not b!662371) (not b!662373) (not b!662392) (not b!662428) (not bs!94540) (not setNonEmpty!3194) (not b!662376) (not b!662411) (not setNonEmpty!3191) (not setNonEmpty!3175) (not b!662422) (not b!662375) (not b!662357))
(check-sat b_and!62961 b_and!62965 (not b_next!19231) b_and!62963 b_and!62959 (not b_next!19233) (not b_next!19229) (not b_next!19235))
(get-model)

(declare-fun d!226317 () Bool)

(declare-fun lt!282231 () List!7269)

(assert (=> d!226317 (= lt!282231 (efficientList!84 x!145818))))

(assert (=> d!226317 (= (toValue!11 KeywordValueInjection!63 x!145818) (ite (= lt!282231 (Cons!7255 #x006E (Cons!7255 #x0075 (Cons!7255 #x006C (Cons!7255 #x006C Nil!7255))))) Null!1503 (ite (= lt!282231 (Cons!7255 #x0074 (Cons!7255 #x0072 (Cons!7255 #x0075 (Cons!7255 #x0065 Nil!7255))))) True!3007 (ite (= lt!282231 (Cons!7255 #x0066 (Cons!7255 #x0061 (Cons!7255 #x006C (Cons!7255 #x0073 (Cons!7255 #x0065 Nil!7255)))))) False!3007 (ite (= lt!282231 (Cons!7255 #x003A Nil!7255)) Colon!1503 (ite (= lt!282231 (Cons!7255 #x002C Nil!7255)) Comma!1503 (ite (= lt!282231 (Cons!7255 #x007B Nil!7255)) LeftBrace!1503 (ite (= lt!282231 (Cons!7255 #x007D Nil!7255)) RightBrace!1503 (ite (= lt!282231 (Cons!7255 #x005B Nil!7255)) LeftBracket!1503 (ite (= lt!282231 (Cons!7255 #x005D Nil!7255)) RightBracket!1503 (Broken!7518 lt!282231)))))))))))))

(declare-fun bs!94643 () Bool)

(assert (= bs!94643 d!226317))

(declare-fun m!928635 () Bool)

(assert (=> bs!94643 m!928635))

(assert (=> b!662375 d!226317))

(assert (=> b!662375 d!226305))

(declare-fun d!226319 () Bool)

(declare-fun lt!282232 () List!7269)

(assert (=> d!226319 (= lt!282232 (efficientList!84 x!145816))))

(assert (=> d!226319 (= (toValue!11 KeywordValueInjection!63 x!145816) (ite (= lt!282232 (Cons!7255 #x006E (Cons!7255 #x0075 (Cons!7255 #x006C (Cons!7255 #x006C Nil!7255))))) Null!1503 (ite (= lt!282232 (Cons!7255 #x0074 (Cons!7255 #x0072 (Cons!7255 #x0075 (Cons!7255 #x0065 Nil!7255))))) True!3007 (ite (= lt!282232 (Cons!7255 #x0066 (Cons!7255 #x0061 (Cons!7255 #x006C (Cons!7255 #x0073 (Cons!7255 #x0065 Nil!7255)))))) False!3007 (ite (= lt!282232 (Cons!7255 #x003A Nil!7255)) Colon!1503 (ite (= lt!282232 (Cons!7255 #x002C Nil!7255)) Comma!1503 (ite (= lt!282232 (Cons!7255 #x007B Nil!7255)) LeftBrace!1503 (ite (= lt!282232 (Cons!7255 #x007D Nil!7255)) RightBrace!1503 (ite (= lt!282232 (Cons!7255 #x005B Nil!7255)) LeftBracket!1503 (ite (= lt!282232 (Cons!7255 #x005D Nil!7255)) RightBracket!1503 (Broken!7518 lt!282232)))))))))))))

(declare-fun bs!94644 () Bool)

(assert (= bs!94644 d!226319))

(declare-fun m!928637 () Bool)

(assert (=> bs!94644 m!928637))

(assert (=> b!662344 d!226319))

(assert (=> b!662344 d!226307))

(declare-fun d!226321 () Bool)

(assert (=> d!226321 (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3061 (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(declare-fun bs!94645 () Bool)

(assert (= bs!94645 d!226321))

(declare-fun m!928639 () Bool)

(assert (=> bs!94645 m!928639))

(assert (=> bs!94537 d!226321))

(declare-fun d!226323 () Bool)

(assert (=> d!226323 (= (list!3060 x!145816) (list!3061 (c!119115 x!145816)))))

(declare-fun bs!94646 () Bool)

(assert (= bs!94646 d!226323))

(declare-fun m!928641 () Bool)

(assert (=> bs!94646 m!928641))

(assert (=> bs!94537 d!226323))

(assert (=> b!662357 d!226317))

(assert (=> b!662357 d!226307))

(declare-fun b!662440 () Bool)

(declare-fun e!410012 () List!7269)

(declare-fun ++!1921 (List!7269 List!7269) List!7269)

(assert (=> b!662440 (= e!410012 (++!1921 (list!3061 (left!5867 (c!119115 lt!282222))) (list!3061 (right!6197 (c!119115 lt!282222)))))))

(declare-fun b!662437 () Bool)

(declare-fun e!410011 () List!7269)

(assert (=> b!662437 (= e!410011 Nil!7255)))

(declare-fun d!226325 () Bool)

(declare-fun c!119133 () Bool)

(assert (=> d!226325 (= c!119133 ((_ is Empty!2579) (c!119115 lt!282222)))))

(assert (=> d!226325 (= (list!3061 (c!119115 lt!282222)) e!410011)))

(declare-fun b!662438 () Bool)

(assert (=> b!662438 (= e!410011 e!410012)))

(declare-fun c!119134 () Bool)

(assert (=> b!662438 (= c!119134 ((_ is Leaf!3830) (c!119115 lt!282222)))))

(declare-fun b!662439 () Bool)

(declare-fun list!3062 (IArray!5159) List!7269)

(assert (=> b!662439 (= e!410012 (list!3062 (xs!5228 (c!119115 lt!282222))))))

(assert (= (and d!226325 c!119133) b!662437))

(assert (= (and d!226325 (not c!119133)) b!662438))

(assert (= (and b!662438 c!119134) b!662439))

(assert (= (and b!662438 (not c!119134)) b!662440))

(declare-fun m!928643 () Bool)

(assert (=> b!662440 m!928643))

(declare-fun m!928645 () Bool)

(assert (=> b!662440 m!928645))

(assert (=> b!662440 m!928643))

(assert (=> b!662440 m!928645))

(declare-fun m!928647 () Bool)

(assert (=> b!662440 m!928647))

(declare-fun m!928649 () Bool)

(assert (=> b!662439 m!928649))

(assert (=> d!226315 d!226325))

(assert (=> bs!94593 d!226311))

(declare-fun d!226327 () Bool)

(assert (=> d!226327 (= (list!3060 x!145818) (list!3061 (c!119115 x!145818)))))

(declare-fun bs!94647 () Bool)

(assert (= bs!94647 d!226327))

(declare-fun m!928651 () Bool)

(assert (=> bs!94647 m!928651))

(assert (=> bs!94593 d!226327))

(declare-fun d!226329 () Bool)

(declare-fun lt!282235 () List!7269)

(assert (=> d!226329 (= lt!282235 (list!3060 lt!282222))))

(declare-fun efficientList!85 (Conc!2579 List!7269) List!7269)

(declare-fun efficientList$default$2!28 (Conc!2579) List!7269)

(assert (=> d!226329 (= lt!282235 (efficientList!85 (c!119115 lt!282222) (efficientList$default$2!28 (c!119115 lt!282222))))))

(assert (=> d!226329 (= (efficientList!84 lt!282222) lt!282235)))

(declare-fun bs!94648 () Bool)

(assert (= bs!94648 d!226329))

(assert (=> bs!94648 m!928547))

(declare-fun m!928653 () Bool)

(assert (=> bs!94648 m!928653))

(assert (=> bs!94648 m!928653))

(declare-fun m!928655 () Bool)

(assert (=> bs!94648 m!928655))

(assert (=> d!226305 d!226329))

(assert (=> b!662346 d!226307))

(assert (=> b!662346 d!226319))

(assert (=> bs!94540 d!226313))

(assert (=> bs!94540 d!226327))

(declare-fun d!226331 () Bool)

(declare-fun lt!282236 () List!7269)

(assert (=> d!226331 (= lt!282236 (list!3060 x!145817))))

(assert (=> d!226331 (= lt!282236 (efficientList!85 (c!119115 x!145817) (efficientList$default$2!28 (c!119115 x!145817))))))

(assert (=> d!226331 (= (efficientList!84 x!145817) lt!282236)))

(declare-fun bs!94649 () Bool)

(assert (= bs!94649 d!226331))

(assert (=> bs!94649 m!928507))

(declare-fun m!928657 () Bool)

(assert (=> bs!94649 m!928657))

(assert (=> bs!94649 m!928657))

(declare-fun m!928659 () Bool)

(assert (=> bs!94649 m!928659))

(assert (=> d!226307 d!226331))

(assert (=> bs!94535 d!226321))

(declare-fun d!226333 () Bool)

(declare-fun lt!282237 () List!7269)

(assert (=> d!226333 (= lt!282237 (efficientList!84 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))

(assert (=> d!226333 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (ite (= lt!282237 (Cons!7255 #x006E (Cons!7255 #x0075 (Cons!7255 #x006C (Cons!7255 #x006C Nil!7255))))) Null!1503 (ite (= lt!282237 (Cons!7255 #x0074 (Cons!7255 #x0072 (Cons!7255 #x0075 (Cons!7255 #x0065 Nil!7255))))) True!3007 (ite (= lt!282237 (Cons!7255 #x0066 (Cons!7255 #x0061 (Cons!7255 #x006C (Cons!7255 #x0073 (Cons!7255 #x0065 Nil!7255)))))) False!3007 (ite (= lt!282237 (Cons!7255 #x003A Nil!7255)) Colon!1503 (ite (= lt!282237 (Cons!7255 #x002C Nil!7255)) Comma!1503 (ite (= lt!282237 (Cons!7255 #x007B Nil!7255)) LeftBrace!1503 (ite (= lt!282237 (Cons!7255 #x007D Nil!7255)) RightBrace!1503 (ite (= lt!282237 (Cons!7255 #x005B Nil!7255)) LeftBracket!1503 (ite (= lt!282237 (Cons!7255 #x005D Nil!7255)) RightBracket!1503 (Broken!7518 lt!282237)))))))))))))

(declare-fun bs!94650 () Bool)

(assert (= bs!94650 d!226333))

(assert (=> bs!94650 m!928503))

(declare-fun m!928661 () Bool)

(assert (=> bs!94650 m!928661))

(assert (=> b!662352 d!226333))

(assert (=> b!662352 d!226317))

(assert (=> b!662355 d!226317))

(assert (=> bs!94568 d!226315))

(assert (=> b!662348 d!226319))

(assert (=> b!662348 d!226333))

(assert (=> bs!94585 d!226315))

(assert (=> bs!94585 d!226311))

(assert (=> b!662427 d!226309))

(assert (=> b!662427 d!226319))

(assert (=> bs!94576 d!226315))

(assert (=> bs!94576 d!226321))

(assert (=> b!662423 d!226317))

(assert (=> b!662423 d!226309))

(assert (=> b!662420 d!226333))

(assert (=> b!662420 d!226309))

(assert (=> bs!94571 d!226327))

(assert (=> bs!94571 d!226315))

(assert (=> bs!94527 d!226323))

(assert (=> bs!94527 d!226313))

(assert (=> b!662350 d!226333))

(assert (=> b!662350 d!226307))

(assert (=> bs!94546 d!226327))

(assert (=> bs!94546 d!226313))

(assert (=> b!662374 d!226319))

(assert (=> b!662374 d!226305))

(assert (=> b!662425 d!226309))

(assert (=> b!662425 d!226305))

(assert (=> bs!94530 d!226313))

(assert (=> bs!94530 d!226323))

(assert (=> bs!94538 d!226321))

(assert (=> bs!94538 d!226327))

(assert (=> bs!94544 d!226327))

(assert (=> b!662358 d!226317))

(assert (=> b!662358 d!226319))

(assert (=> bs!94533 d!226323))

(assert (=> bs!94533 d!226321))

(assert (=> bs!94594 d!226311))

(assert (=> bs!94594 d!226323))

(assert (=> b!662354 d!226319))

(assert (=> b!662354 d!226317))

(assert (=> bs!94583 d!226321))

(assert (=> bs!94583 d!226311))

(assert (=> b!662378 d!226305))

(assert (=> b!662378 d!226319))

(assert (=> b!662347 d!226307))

(assert (=> b!662347 d!226333))

(declare-fun d!226335 () Bool)

(declare-fun lt!282238 () List!7269)

(assert (=> d!226335 (= lt!282238 (list!3060 (singletonSeq!457 #x005B)))))

(assert (=> d!226335 (= lt!282238 (efficientList!85 (c!119115 (singletonSeq!457 #x005B)) (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B)))))))

(assert (=> d!226335 (= (efficientList!84 (singletonSeq!457 #x005B)) lt!282238)))

(declare-fun bs!94651 () Bool)

(assert (= bs!94651 d!226335))

(assert (=> bs!94651 m!928435))

(assert (=> bs!94651 m!928617))

(declare-fun m!928663 () Bool)

(assert (=> bs!94651 m!928663))

(assert (=> bs!94651 m!928663))

(declare-fun m!928665 () Bool)

(assert (=> bs!94651 m!928665))

(assert (=> d!226309 d!226335))

(assert (=> bs!94589 d!226327))

(assert (=> bs!94589 d!226311))

(assert (=> b!662371 d!226333))

(assert (=> b!662371 d!226305))

(assert (=> b!662343 d!226319))

(assert (=> b!662419 d!226309))

(assert (=> bs!94536 d!226321))

(assert (=> bs!94536 d!226313))

(assert (=> b!662422 d!226319))

(assert (=> b!662422 d!226309))

(assert (=> b!662356 d!226317))

(assert (=> b!662356 d!226333))

(assert (=> bs!94569 d!226323))

(assert (=> bs!94569 d!226315))

(assert (=> bs!94592 d!226311))

(assert (=> bs!94592 d!226315))

(assert (=> b!662428 d!226309))

(assert (=> b!662428 d!226333))

(assert (=> b!662376 d!226305))

(assert (=> b!662376 d!226317))

(assert (=> b!662345 d!226307))

(assert (=> b!662351 d!226333))

(assert (=> b!662351 d!226319))

(assert (=> bs!94547 d!226327))

(assert (=> bs!94547 d!226323))

(assert (=> bs!94542 d!226323))

(assert (=> bs!94542 d!226327))

(assert (=> b!662426 d!226309))

(assert (=> b!662426 d!226317))

(assert (=> bs!94575 d!226315))

(assert (=> bs!94575 d!226323))

(assert (=> bs!94531 d!226313))

(assert (=> bs!94531 d!226321))

(assert (=> b!662353 d!226307))

(assert (=> b!662353 d!226317))

(assert (=> bs!94564 d!226321))

(assert (=> bs!94564 d!226315))

(assert (=> bs!94526 d!226323))

(assert (=> bs!94587 d!226323))

(assert (=> bs!94587 d!226311))

(assert (=> b!662349 d!226333))

(assert (=> bs!94581 d!226311))

(assert (=> bs!94545 d!226327))

(assert (=> bs!94545 d!226321))

(declare-fun b!662444 () Bool)

(declare-fun e!410014 () List!7269)

(assert (=> b!662444 (= e!410014 (++!1921 (list!3061 (left!5867 (c!119115 x!145817))) (list!3061 (right!6197 (c!119115 x!145817)))))))

(declare-fun b!662441 () Bool)

(declare-fun e!410013 () List!7269)

(assert (=> b!662441 (= e!410013 Nil!7255)))

(declare-fun d!226337 () Bool)

(declare-fun c!119135 () Bool)

(assert (=> d!226337 (= c!119135 ((_ is Empty!2579) (c!119115 x!145817)))))

(assert (=> d!226337 (= (list!3061 (c!119115 x!145817)) e!410013)))

(declare-fun b!662442 () Bool)

(assert (=> b!662442 (= e!410013 e!410014)))

(declare-fun c!119136 () Bool)

(assert (=> b!662442 (= c!119136 ((_ is Leaf!3830) (c!119115 x!145817)))))

(declare-fun b!662443 () Bool)

(assert (=> b!662443 (= e!410014 (list!3062 (xs!5228 (c!119115 x!145817))))))

(assert (= (and d!226337 c!119135) b!662441))

(assert (= (and d!226337 (not c!119135)) b!662442))

(assert (= (and b!662442 c!119136) b!662443))

(assert (= (and b!662442 (not c!119136)) b!662444))

(declare-fun m!928667 () Bool)

(assert (=> b!662444 m!928667))

(declare-fun m!928669 () Bool)

(assert (=> b!662444 m!928669))

(assert (=> b!662444 m!928667))

(assert (=> b!662444 m!928669))

(declare-fun m!928671 () Bool)

(assert (=> b!662444 m!928671))

(declare-fun m!928673 () Bool)

(assert (=> b!662443 m!928673))

(assert (=> d!226313 d!226337))

(assert (=> b!662373 d!226305))

(assert (=> b!662421 d!226305))

(assert (=> b!662421 d!226309))

(assert (=> bs!94595 d!226311))

(assert (=> bs!94595 d!226321))

(assert (=> bs!94573 d!226315))

(assert (=> bs!94573 d!226327))

(assert (=> bs!94529 d!226313))

(assert (=> b!662379 d!226305))

(assert (=> b!662379 d!226333))

(declare-fun b!662448 () Bool)

(declare-fun e!410016 () List!7269)

(assert (=> b!662448 (= e!410016 (++!1921 (list!3061 (left!5867 (c!119115 (singletonSeq!457 #x005B)))) (list!3061 (right!6197 (c!119115 (singletonSeq!457 #x005B))))))))

(declare-fun b!662445 () Bool)

(declare-fun e!410015 () List!7269)

(assert (=> b!662445 (= e!410015 Nil!7255)))

(declare-fun d!226339 () Bool)

(declare-fun c!119137 () Bool)

(assert (=> d!226339 (= c!119137 ((_ is Empty!2579) (c!119115 (singletonSeq!457 #x005B))))))

(assert (=> d!226339 (= (list!3061 (c!119115 (singletonSeq!457 #x005B))) e!410015)))

(declare-fun b!662446 () Bool)

(assert (=> b!662446 (= e!410015 e!410016)))

(declare-fun c!119138 () Bool)

(assert (=> b!662446 (= c!119138 ((_ is Leaf!3830) (c!119115 (singletonSeq!457 #x005B))))))

(declare-fun b!662447 () Bool)

(assert (=> b!662447 (= e!410016 (list!3062 (xs!5228 (c!119115 (singletonSeq!457 #x005B)))))))

(assert (= (and d!226339 c!119137) b!662445))

(assert (= (and d!226339 (not c!119137)) b!662446))

(assert (= (and b!662446 c!119138) b!662447))

(assert (= (and b!662446 (not c!119138)) b!662448))

(declare-fun m!928675 () Bool)

(assert (=> b!662448 m!928675))

(declare-fun m!928677 () Bool)

(assert (=> b!662448 m!928677))

(assert (=> b!662448 m!928675))

(assert (=> b!662448 m!928677))

(declare-fun m!928679 () Bool)

(assert (=> b!662448 m!928679))

(declare-fun m!928681 () Bool)

(assert (=> b!662447 m!928681))

(assert (=> d!226311 d!226339))

(check-sat (not bs!94524) (not d!226279) (not b!662440) (not b!662439) (not d!226285) (not d!226329) (not b!662342) (not setNonEmpty!3179) (not d!226331) (not b!662339) (not d!226317) (not b!662443) (not b!662447) (not b!662316) (not d!226293) (not b!662406) (not b!662417) (not b!662340) (not b!662444) (not b!662414) (not b!662297) (not d!226333) b_and!62961 (not d!226327) (not b!662382) (not b!662448) (not b!662296) (not b!662313) (not b!662306) (not b!662412) (not d!226273) (not b!662341) (not b!662364) (not setNonEmpty!3192) (not b!662398) (not d!226335) (not setNonEmpty!3188) (not b!662385) (not b!662393) (not setNonEmpty!3184) b_and!62965 (not mapNonEmpty!2780) (not b!662415) (not d!226301) (not b_next!19231) (not mapNonEmpty!2783) (not setNonEmpty!3193) (not setNonEmpty!3185) (not d!226275) (not b_lambda!25779) (not d!226287) b_and!62959 (not d!226321) (not b!662405) (not b_next!19233) (not b_next!19229) (not b!662365) (not b_next!19235) (not bs!94577) (not b!662416) (not b!662370) (not d!226295) b_and!62963 (not d!226291) (not setNonEmpty!3176) (not setNonEmpty!3189) (not b!662413) (not d!226319) (not setNonEmpty!3190) (not d!226323) (not b!662392) (not setNonEmpty!3194) (not b!662411) (not setNonEmpty!3191) (not setNonEmpty!3175))
(check-sat b_and!62961 b_and!62965 (not b_next!19231) b_and!62963 b_and!62959 (not b_next!19233) (not b_next!19229) (not b_next!19235))
(get-model)

(assert (=> d!226329 d!226315))

(declare-fun b!662461 () Bool)

(declare-fun e!410023 () List!7269)

(declare-fun efficientList!86 (IArray!5159) List!7269)

(assert (=> b!662461 (= e!410023 (efficientList!86 (xs!5228 (c!119115 lt!282222))))))

(declare-fun b!662462 () Bool)

(declare-fun e!410024 () List!7269)

(declare-fun call!43417 () List!7269)

(assert (=> b!662462 (= e!410024 call!43417)))

(declare-fun b!662463 () Bool)

(declare-fun lt!282253 () Unit!12518)

(declare-fun lt!282250 () Unit!12518)

(assert (=> b!662463 (= lt!282253 lt!282250)))

(declare-fun lt!282249 () List!7269)

(declare-fun lt!282252 () List!7269)

(assert (=> b!662463 (= (++!1921 (++!1921 lt!282252 lt!282249) (efficientList$default$2!28 (c!119115 lt!282222))) (++!1921 lt!282252 call!43417))))

(declare-fun lemmaConcatAssociativity!639 (List!7269 List!7269 List!7269) Unit!12518)

(assert (=> b!662463 (= lt!282250 (lemmaConcatAssociativity!639 lt!282252 lt!282249 (efficientList$default$2!28 (c!119115 lt!282222))))))

(assert (=> b!662463 (= lt!282249 (list!3061 (right!6197 (c!119115 lt!282222))))))

(assert (=> b!662463 (= lt!282252 (list!3061 (left!5867 (c!119115 lt!282222))))))

(assert (=> b!662463 (= e!410024 (efficientList!85 (left!5867 (c!119115 lt!282222)) (efficientList!85 (right!6197 (c!119115 lt!282222)) (efficientList$default$2!28 (c!119115 lt!282222)))))))

(declare-fun b!662464 () Bool)

(declare-fun e!410025 () List!7269)

(assert (=> b!662464 (= e!410025 e!410024)))

(declare-fun c!119146 () Bool)

(assert (=> b!662464 (= c!119146 ((_ is Leaf!3830) (c!119115 lt!282222)))))

(declare-fun b!662465 () Bool)

(assert (=> b!662465 (= e!410023 lt!282249)))

(declare-fun d!226341 () Bool)

(declare-fun lt!282251 () List!7269)

(assert (=> d!226341 (= lt!282251 (++!1921 (list!3061 (c!119115 lt!282222)) (efficientList$default$2!28 (c!119115 lt!282222))))))

(assert (=> d!226341 (= lt!282251 e!410025)))

(declare-fun c!119147 () Bool)

(assert (=> d!226341 (= c!119147 ((_ is Empty!2579) (c!119115 lt!282222)))))

(assert (=> d!226341 (= (efficientList!85 (c!119115 lt!282222) (efficientList$default$2!28 (c!119115 lt!282222))) lt!282251)))

(declare-fun b!662466 () Bool)

(assert (=> b!662466 (= e!410025 (efficientList$default$2!28 (c!119115 lt!282222)))))

(declare-fun bm!43412 () Bool)

(declare-fun c!119145 () Bool)

(assert (=> bm!43412 (= c!119145 c!119146)))

(assert (=> bm!43412 (= call!43417 (++!1921 e!410023 (efficientList$default$2!28 (c!119115 lt!282222))))))

(assert (= (and d!226341 c!119147) b!662466))

(assert (= (and d!226341 (not c!119147)) b!662464))

(assert (= (and b!662464 c!119146) b!662462))

(assert (= (and b!662464 (not c!119146)) b!662463))

(assert (= (or b!662462 b!662463) bm!43412))

(assert (= (and bm!43412 c!119145) b!662461))

(assert (= (and bm!43412 (not c!119145)) b!662465))

(declare-fun m!928683 () Bool)

(assert (=> b!662461 m!928683))

(assert (=> b!662463 m!928653))

(declare-fun m!928685 () Bool)

(assert (=> b!662463 m!928685))

(assert (=> b!662463 m!928645))

(declare-fun m!928687 () Bool)

(assert (=> b!662463 m!928687))

(assert (=> b!662463 m!928685))

(declare-fun m!928689 () Bool)

(assert (=> b!662463 m!928689))

(declare-fun m!928691 () Bool)

(assert (=> b!662463 m!928691))

(assert (=> b!662463 m!928691))

(assert (=> b!662463 m!928653))

(declare-fun m!928693 () Bool)

(assert (=> b!662463 m!928693))

(assert (=> b!662463 m!928653))

(declare-fun m!928695 () Bool)

(assert (=> b!662463 m!928695))

(assert (=> b!662463 m!928643))

(assert (=> d!226341 m!928629))

(assert (=> d!226341 m!928629))

(assert (=> d!226341 m!928653))

(declare-fun m!928697 () Bool)

(assert (=> d!226341 m!928697))

(assert (=> bm!43412 m!928653))

(declare-fun m!928699 () Bool)

(assert (=> bm!43412 m!928699))

(assert (=> d!226329 d!226341))

(declare-fun d!226343 () Bool)

(assert (=> d!226343 (= (efficientList$default$2!28 (c!119115 lt!282222)) Nil!7255)))

(assert (=> d!226329 d!226343))

(declare-fun d!226345 () Bool)

(declare-fun lt!282254 () List!7269)

(assert (=> d!226345 (= lt!282254 (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))

(assert (=> d!226345 (= lt!282254 (efficientList!85 (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (efficientList$default$2!28 (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> d!226345 (= (efficientList!84 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) lt!282254)))

(declare-fun bs!94652 () Bool)

(assert (= bs!94652 d!226345))

(assert (=> bs!94652 m!928503))

(assert (=> bs!94652 m!928505))

(declare-fun m!928701 () Bool)

(assert (=> bs!94652 m!928701))

(assert (=> bs!94652 m!928701))

(declare-fun m!928703 () Bool)

(assert (=> bs!94652 m!928703))

(assert (=> d!226333 d!226345))

(declare-fun d!226347 () Bool)

(declare-fun lambda!20572 () Int)

(declare-fun forall!1917 (List!7266 Int) Bool)

(assert (=> d!226347 (= (inv!9324 (_1!4173 (_1!4174 (h!12654 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))))) (forall!1917 (exprs!717 (_1!4173 (_1!4174 (h!12654 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))))) lambda!20572))))

(declare-fun bs!94653 () Bool)

(assert (= bs!94653 d!226347))

(declare-fun m!928705 () Bool)

(assert (=> bs!94653 m!928705))

(assert (=> b!662415 d!226347))

(declare-fun bs!94654 () Bool)

(declare-fun d!226349 () Bool)

(assert (= bs!94654 (and d!226349 d!226273)))

(declare-fun lambda!20573 () Int)

(assert (=> bs!94654 (= lambda!20573 lambda!20542)))

(declare-fun bs!94655 () Bool)

(assert (= bs!94655 (and d!226349 d!226291)))

(assert (=> bs!94655 (= lambda!20573 lambda!20569)))

(declare-fun b!662471 () Bool)

(declare-fun e!410030 () Bool)

(assert (=> b!662471 (= e!410030 true)))

(declare-fun b!662470 () Bool)

(declare-fun e!410029 () Bool)

(assert (=> b!662470 (= e!410029 e!410030)))

(declare-fun b!662469 () Bool)

(declare-fun e!410028 () Bool)

(assert (=> b!662469 (= e!410028 e!410029)))

(assert (=> d!226349 e!410028))

(assert (= b!662470 b!662471))

(assert (= b!662469 b!662470))

(assert (= (and d!226349 ((_ is Cons!7256) lt!282194)) b!662469))

(assert (=> b!662471 (< (dynLambda!3820 order!5259 (toValue!2410 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20573))))

(assert (=> b!662471 (< (dynLambda!3822 order!5263 (toChars!2269 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20573))))

(assert (=> d!226349 true))

(declare-fun lt!282255 () Bool)

(assert (=> d!226349 (= lt!282255 (forall!1915 (t!86504 (list!3058 lt!282195)) lambda!20573))))

(declare-fun e!410026 () Bool)

(assert (=> d!226349 (= lt!282255 e!410026)))

(declare-fun res!293851 () Bool)

(assert (=> d!226349 (=> res!293851 e!410026)))

(assert (=> d!226349 (= res!293851 (not ((_ is Cons!7257) (t!86504 (list!3058 lt!282195)))))))

(assert (=> d!226349 (not (isEmpty!4807 lt!282194))))

(assert (=> d!226349 (= (rulesProduceEachTokenIndividuallyList!350 Lexer!1283 lt!282194 (t!86504 (list!3058 lt!282195))) lt!282255)))

(declare-fun b!662467 () Bool)

(declare-fun e!410027 () Bool)

(assert (=> b!662467 (= e!410026 e!410027)))

(declare-fun res!293852 () Bool)

(assert (=> b!662467 (=> (not res!293852) (not e!410027))))

(assert (=> b!662467 (= res!293852 (rulesProduceIndividualToken!529 Lexer!1283 lt!282194 (h!12658 (t!86504 (list!3058 lt!282195)))))))

(declare-fun b!662468 () Bool)

(assert (=> b!662468 (= e!410027 (rulesProduceEachTokenIndividuallyList!350 Lexer!1283 lt!282194 (t!86504 (t!86504 (list!3058 lt!282195)))))))

(assert (= (and d!226349 (not res!293851)) b!662467))

(assert (= (and b!662467 res!293852) b!662468))

(declare-fun m!928707 () Bool)

(assert (=> d!226349 m!928707))

(assert (=> d!226349 m!928441))

(declare-fun m!928709 () Bool)

(assert (=> b!662467 m!928709))

(declare-fun m!928711 () Bool)

(assert (=> b!662468 m!928711))

(assert (=> b!662297 d!226349))

(declare-fun bs!94656 () Bool)

(declare-fun d!226351 () Bool)

(assert (= bs!94656 (and d!226351 d!226347)))

(declare-fun lambda!20574 () Int)

(assert (=> bs!94656 (= lambda!20574 lambda!20572)))

(assert (=> d!226351 (= (inv!9324 setElem!3176) (forall!1917 (exprs!717 setElem!3176) lambda!20574))))

(declare-fun bs!94657 () Bool)

(assert (= bs!94657 d!226351))

(declare-fun m!928713 () Bool)

(assert (=> bs!94657 m!928713))

(assert (=> setNonEmpty!3176 d!226351))

(declare-fun bs!94658 () Bool)

(declare-fun d!226353 () Bool)

(assert (= bs!94658 (and d!226353 d!226347)))

(declare-fun lambda!20575 () Int)

(assert (=> bs!94658 (= lambda!20575 lambda!20572)))

(declare-fun bs!94659 () Bool)

(assert (= bs!94659 (and d!226353 d!226351)))

(assert (=> bs!94659 (= lambda!20575 lambda!20574)))

(assert (=> d!226353 (= (inv!9324 setElem!3189) (forall!1917 (exprs!717 setElem!3189) lambda!20575))))

(declare-fun bs!94660 () Bool)

(assert (= bs!94660 d!226353))

(declare-fun m!928715 () Bool)

(assert (=> bs!94660 m!928715))

(assert (=> setNonEmpty!3189 d!226353))

(assert (=> d!226293 d!226315))

(declare-fun d!226355 () Bool)

(declare-fun e!410033 () Bool)

(assert (=> d!226355 e!410033))

(declare-fun res!293855 () Bool)

(assert (=> d!226355 (=> (not res!293855) (not e!410033))))

(declare-fun lt!282258 () BalanceConc!5170)

(assert (=> d!226355 (= res!293855 (= (list!3060 lt!282258) (Cons!7255 #x005B Nil!7255)))))

(declare-fun choose!4673 ((_ BitVec 16)) BalanceConc!5170)

(assert (=> d!226355 (= lt!282258 (choose!4673 #x005B))))

(assert (=> d!226355 (= (singleton!217 #x005B) lt!282258)))

(declare-fun b!662474 () Bool)

(assert (=> b!662474 (= e!410033 (isBalanced!673 (c!119115 lt!282258)))))

(assert (= (and d!226355 res!293855) b!662474))

(declare-fun bs!94661 () Bool)

(declare-fun s!44837 () Bool)

(assert (= bs!94661 (and neg-inst!340 s!44837)))

(declare-fun res!293856 () Bool)

(declare-fun e!410034 () Bool)

(assert (=> bs!94661 (=> res!293856 e!410034)))

(assert (=> bs!94661 (= res!293856 (not (= (list!3060 x!145816) (list!3060 lt!282258))))))

(assert (=> bs!94661 (=> true e!410034)))

(declare-fun b!662475 () Bool)

(assert (=> b!662475 (= e!410034 (= (toValue!11 KeywordValueInjection!63 x!145816) (toValue!11 KeywordValueInjection!63 lt!282258)))))

(assert (= (and bs!94661 (not res!293856)) b!662475))

(declare-fun bs!94662 () Bool)

(declare-fun m!928717 () Bool)

(assert (= bs!94662 (and m!928717 m!928497 m!928499)))

(assert (=> bs!94662 m!928499))

(assert (=> bs!94662 m!928717))

(assert (=> bs!94662 s!44837))

(declare-fun bs!94663 () Bool)

(declare-fun s!44839 () Bool)

(assert (= bs!94663 (and neg-inst!340 s!44839)))

(declare-fun res!293857 () Bool)

(declare-fun e!410035 () Bool)

(assert (=> bs!94663 (=> res!293857 e!410035)))

(assert (=> bs!94663 (= res!293857 (not (= (list!3060 x!145818) (list!3060 lt!282258))))))

(assert (=> bs!94663 (=> true e!410035)))

(declare-fun b!662476 () Bool)

(assert (=> b!662476 (= e!410035 (= (toValue!11 KeywordValueInjection!63 x!145818) (toValue!11 KeywordValueInjection!63 lt!282258)))))

(assert (= (and bs!94663 (not res!293857)) b!662476))

(declare-fun bs!94664 () Bool)

(assert (= bs!94664 (and m!928717 m!928509 m!928517)))

(assert (=> bs!94664 m!928509))

(assert (=> bs!94664 m!928717))

(assert (=> bs!94664 s!44839))

(declare-fun bs!94665 () Bool)

(declare-fun s!44841 () Bool)

(assert (= bs!94665 (and neg-inst!340 s!44841)))

(declare-fun res!293858 () Bool)

(declare-fun e!410036 () Bool)

(assert (=> bs!94665 (=> res!293858 e!410036)))

(assert (=> bs!94665 (= res!293858 (not (= (list!3060 x!145817) (list!3060 lt!282258))))))

(assert (=> bs!94665 (=> true e!410036)))

(declare-fun b!662477 () Bool)

(assert (=> b!662477 (= e!410036 (= (toValue!11 KeywordValueInjection!63 x!145817) (toValue!11 KeywordValueInjection!63 lt!282258)))))

(assert (= (and bs!94665 (not res!293858)) b!662477))

(declare-fun bs!94666 () Bool)

(assert (= bs!94666 (and m!928717 m!928515 m!928507)))

(assert (=> bs!94666 m!928507))

(assert (=> bs!94666 m!928717))

(assert (=> bs!94666 s!44841))

(declare-fun bs!94667 () Bool)

(declare-fun s!44843 () Bool)

(assert (= bs!94667 (and neg-inst!340 s!44843)))

(declare-fun res!293859 () Bool)

(declare-fun e!410037 () Bool)

(assert (=> bs!94667 (=> res!293859 e!410037)))

(assert (=> bs!94667 (= res!293859 (not (= (list!3060 (singletonSeq!457 #x005B)) (list!3060 lt!282258))))))

(assert (=> bs!94667 (=> true e!410037)))

(declare-fun b!662478 () Bool)

(assert (=> b!662478 (= e!410037 (= (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B)) (toValue!11 KeywordValueInjection!63 lt!282258)))))

(assert (= (and bs!94667 (not res!293859)) b!662478))

(declare-fun bs!94668 () Bool)

(assert (= bs!94668 (and m!928717 m!928615 m!928617)))

(assert (=> bs!94668 m!928617))

(assert (=> bs!94668 m!928717))

(assert (=> bs!94668 s!44843))

(declare-fun bs!94669 () Bool)

(declare-fun s!44845 () Bool)

(assert (= bs!94669 (and neg-inst!340 s!44845)))

(declare-fun res!293860 () Bool)

(declare-fun e!410038 () Bool)

(assert (=> bs!94669 (=> res!293860 e!410038)))

(assert (=> bs!94669 (= res!293860 (not (= (list!3060 lt!282222) (list!3060 lt!282258))))))

(assert (=> bs!94669 (=> true e!410038)))

(declare-fun b!662479 () Bool)

(assert (=> b!662479 (= e!410038 (= (toValue!11 KeywordValueInjection!63 lt!282222) (toValue!11 KeywordValueInjection!63 lt!282258)))))

(assert (= (and bs!94669 (not res!293860)) b!662479))

(declare-fun bs!94670 () Bool)

(assert (= bs!94670 (and m!928717 m!928547 m!928633)))

(assert (=> bs!94670 m!928547))

(assert (=> bs!94670 m!928717))

(assert (=> bs!94670 s!44845))

(declare-fun bs!94671 () Bool)

(declare-fun s!44847 () Bool)

(assert (= bs!94671 (and neg-inst!340 s!44847)))

(declare-fun res!293861 () Bool)

(declare-fun e!410039 () Bool)

(assert (=> bs!94671 (=> res!293861 e!410039)))

(assert (=> bs!94671 (= res!293861 (not (= (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (list!3060 lt!282258))))))

(assert (=> bs!94671 (=> true e!410039)))

(declare-fun b!662480 () Bool)

(assert (=> b!662480 (= e!410039 (= (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))) (toValue!11 KeywordValueInjection!63 lt!282258)))))

(assert (= (and bs!94671 (not res!293861)) b!662480))

(declare-fun bs!94672 () Bool)

(assert (= bs!94672 (and m!928717 m!928505 m!928631)))

(assert (=> bs!94672 m!928505))

(assert (=> bs!94672 m!928717))

(assert (=> bs!94672 s!44847))

(declare-fun bs!94673 () Bool)

(declare-fun s!44849 () Bool)

(assert (= bs!94673 (and neg-inst!340 s!44849)))

(declare-fun res!293862 () Bool)

(declare-fun e!410040 () Bool)

(assert (=> bs!94673 (=> res!293862 e!410040)))

(assert (=> bs!94673 (= res!293862 (not (= (list!3060 lt!282258) (list!3060 lt!282258))))))

(assert (=> bs!94673 (=> true e!410040)))

(declare-fun b!662481 () Bool)

(assert (=> b!662481 (= e!410040 (= (toValue!11 KeywordValueInjection!63 lt!282258) (toValue!11 KeywordValueInjection!63 lt!282258)))))

(assert (= (and bs!94673 (not res!293862)) b!662481))

(assert (=> m!928717 s!44849))

(declare-fun bs!94674 () Bool)

(declare-fun s!44851 () Bool)

(assert (= bs!94674 (and neg-inst!340 s!44851)))

(declare-fun res!293863 () Bool)

(declare-fun e!410041 () Bool)

(assert (=> bs!94674 (=> res!293863 e!410041)))

(assert (=> bs!94674 (= res!293863 (not (= (list!3060 lt!282258) (list!3060 x!145816))))))

(assert (=> bs!94674 (=> true e!410041)))

(declare-fun b!662482 () Bool)

(assert (=> b!662482 (= e!410041 (= (toValue!11 KeywordValueInjection!63 lt!282258) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (= (and bs!94674 (not res!293863)) b!662482))

(assert (=> bs!94662 m!928717))

(assert (=> bs!94662 m!928499))

(assert (=> bs!94662 s!44851))

(declare-fun bs!94675 () Bool)

(declare-fun s!44853 () Bool)

(assert (= bs!94675 (and neg-inst!340 s!44853)))

(declare-fun res!293864 () Bool)

(declare-fun e!410042 () Bool)

(assert (=> bs!94675 (=> res!293864 e!410042)))

(assert (=> bs!94675 (= res!293864 (not (= (list!3060 lt!282258) (list!3060 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (=> bs!94675 (=> true e!410042)))

(declare-fun b!662483 () Bool)

(assert (=> b!662483 (= e!410042 (= (toValue!11 KeywordValueInjection!63 lt!282258) (toValue!11 KeywordValueInjection!63 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (= (and bs!94675 (not res!293864)) b!662483))

(assert (=> bs!94672 m!928717))

(assert (=> bs!94672 m!928505))

(assert (=> bs!94672 s!44853))

(declare-fun bs!94676 () Bool)

(declare-fun s!44855 () Bool)

(assert (= bs!94676 (and neg-inst!340 s!44855)))

(declare-fun res!293865 () Bool)

(declare-fun e!410043 () Bool)

(assert (=> bs!94676 (=> res!293865 e!410043)))

(assert (=> bs!94676 (= res!293865 (not (= (list!3060 lt!282258) (list!3060 x!145817))))))

(assert (=> bs!94676 (=> true e!410043)))

(declare-fun b!662484 () Bool)

(assert (=> b!662484 (= e!410043 (= (toValue!11 KeywordValueInjection!63 lt!282258) (toValue!11 KeywordValueInjection!63 x!145817)))))

(assert (= (and bs!94676 (not res!293865)) b!662484))

(assert (=> bs!94666 m!928717))

(assert (=> bs!94666 m!928507))

(assert (=> bs!94666 s!44855))

(assert (=> m!928717 s!44849))

(declare-fun bs!94677 () Bool)

(declare-fun s!44857 () Bool)

(assert (= bs!94677 (and neg-inst!340 s!44857)))

(declare-fun res!293866 () Bool)

(declare-fun e!410044 () Bool)

(assert (=> bs!94677 (=> res!293866 e!410044)))

(assert (=> bs!94677 (= res!293866 (not (= (list!3060 lt!282258) (list!3060 (singletonSeq!457 #x005B)))))))

(assert (=> bs!94677 (=> true e!410044)))

(declare-fun b!662485 () Bool)

(assert (=> b!662485 (= e!410044 (= (toValue!11 KeywordValueInjection!63 lt!282258) (toValue!11 KeywordValueInjection!63 (singletonSeq!457 #x005B))))))

(assert (= (and bs!94677 (not res!293866)) b!662485))

(assert (=> bs!94668 m!928717))

(assert (=> bs!94668 m!928617))

(assert (=> bs!94668 s!44857))

(declare-fun bs!94678 () Bool)

(declare-fun s!44859 () Bool)

(assert (= bs!94678 (and neg-inst!340 s!44859)))

(declare-fun res!293867 () Bool)

(declare-fun e!410045 () Bool)

(assert (=> bs!94678 (=> res!293867 e!410045)))

(assert (=> bs!94678 (= res!293867 (not (= (list!3060 lt!282258) (list!3060 lt!282222))))))

(assert (=> bs!94678 (=> true e!410045)))

(declare-fun b!662486 () Bool)

(assert (=> b!662486 (= e!410045 (= (toValue!11 KeywordValueInjection!63 lt!282258) (toValue!11 KeywordValueInjection!63 lt!282222)))))

(assert (= (and bs!94678 (not res!293867)) b!662486))

(assert (=> bs!94670 m!928717))

(assert (=> bs!94670 m!928547))

(assert (=> bs!94670 s!44859))

(declare-fun bs!94679 () Bool)

(declare-fun s!44861 () Bool)

(assert (= bs!94679 (and neg-inst!340 s!44861)))

(declare-fun res!293868 () Bool)

(declare-fun e!410046 () Bool)

(assert (=> bs!94679 (=> res!293868 e!410046)))

(assert (=> bs!94679 (= res!293868 (not (= (list!3060 lt!282258) (list!3060 x!145818))))))

(assert (=> bs!94679 (=> true e!410046)))

(declare-fun b!662487 () Bool)

(assert (=> b!662487 (= e!410046 (= (toValue!11 KeywordValueInjection!63 lt!282258) (toValue!11 KeywordValueInjection!63 x!145818)))))

(assert (= (and bs!94679 (not res!293868)) b!662487))

(assert (=> bs!94664 m!928717))

(assert (=> bs!94664 m!928509))

(assert (=> bs!94664 s!44861))

(assert (=> d!226355 m!928717))

(declare-fun m!928719 () Bool)

(assert (=> d!226355 m!928719))

(declare-fun m!928721 () Bool)

(assert (=> b!662474 m!928721))

(assert (=> d!226293 d!226355))

(assert (=> d!226331 d!226313))

(declare-fun b!662488 () Bool)

(declare-fun e!410047 () List!7269)

(assert (=> b!662488 (= e!410047 (efficientList!86 (xs!5228 (c!119115 x!145817))))))

(declare-fun b!662489 () Bool)

(declare-fun e!410048 () List!7269)

(declare-fun call!43418 () List!7269)

(assert (=> b!662489 (= e!410048 call!43418)))

(declare-fun b!662490 () Bool)

(declare-fun lt!282263 () Unit!12518)

(declare-fun lt!282260 () Unit!12518)

(assert (=> b!662490 (= lt!282263 lt!282260)))

(declare-fun lt!282262 () List!7269)

(declare-fun lt!282259 () List!7269)

(assert (=> b!662490 (= (++!1921 (++!1921 lt!282262 lt!282259) (efficientList$default$2!28 (c!119115 x!145817))) (++!1921 lt!282262 call!43418))))

(assert (=> b!662490 (= lt!282260 (lemmaConcatAssociativity!639 lt!282262 lt!282259 (efficientList$default$2!28 (c!119115 x!145817))))))

(assert (=> b!662490 (= lt!282259 (list!3061 (right!6197 (c!119115 x!145817))))))

(assert (=> b!662490 (= lt!282262 (list!3061 (left!5867 (c!119115 x!145817))))))

(assert (=> b!662490 (= e!410048 (efficientList!85 (left!5867 (c!119115 x!145817)) (efficientList!85 (right!6197 (c!119115 x!145817)) (efficientList$default$2!28 (c!119115 x!145817)))))))

(declare-fun b!662491 () Bool)

(declare-fun e!410049 () List!7269)

(assert (=> b!662491 (= e!410049 e!410048)))

(declare-fun c!119149 () Bool)

(assert (=> b!662491 (= c!119149 ((_ is Leaf!3830) (c!119115 x!145817)))))

(declare-fun b!662492 () Bool)

(assert (=> b!662492 (= e!410047 lt!282259)))

(declare-fun d!226357 () Bool)

(declare-fun lt!282261 () List!7269)

(assert (=> d!226357 (= lt!282261 (++!1921 (list!3061 (c!119115 x!145817)) (efficientList$default$2!28 (c!119115 x!145817))))))

(assert (=> d!226357 (= lt!282261 e!410049)))

(declare-fun c!119150 () Bool)

(assert (=> d!226357 (= c!119150 ((_ is Empty!2579) (c!119115 x!145817)))))

(assert (=> d!226357 (= (efficientList!85 (c!119115 x!145817) (efficientList$default$2!28 (c!119115 x!145817))) lt!282261)))

(declare-fun b!662493 () Bool)

(assert (=> b!662493 (= e!410049 (efficientList$default$2!28 (c!119115 x!145817)))))

(declare-fun bm!43413 () Bool)

(declare-fun c!119148 () Bool)

(assert (=> bm!43413 (= c!119148 c!119149)))

(assert (=> bm!43413 (= call!43418 (++!1921 e!410047 (efficientList$default$2!28 (c!119115 x!145817))))))

(assert (= (and d!226357 c!119150) b!662493))

(assert (= (and d!226357 (not c!119150)) b!662491))

(assert (= (and b!662491 c!119149) b!662489))

(assert (= (and b!662491 (not c!119149)) b!662490))

(assert (= (or b!662489 b!662490) bm!43413))

(assert (= (and bm!43413 c!119148) b!662488))

(assert (= (and bm!43413 (not c!119148)) b!662492))

(declare-fun m!928723 () Bool)

(assert (=> b!662488 m!928723))

(assert (=> b!662490 m!928657))

(declare-fun m!928725 () Bool)

(assert (=> b!662490 m!928725))

(assert (=> b!662490 m!928669))

(declare-fun m!928727 () Bool)

(assert (=> b!662490 m!928727))

(assert (=> b!662490 m!928725))

(declare-fun m!928729 () Bool)

(assert (=> b!662490 m!928729))

(declare-fun m!928731 () Bool)

(assert (=> b!662490 m!928731))

(assert (=> b!662490 m!928731))

(assert (=> b!662490 m!928657))

(declare-fun m!928733 () Bool)

(assert (=> b!662490 m!928733))

(assert (=> b!662490 m!928657))

(declare-fun m!928735 () Bool)

(assert (=> b!662490 m!928735))

(assert (=> b!662490 m!928667))

(assert (=> d!226357 m!928627))

(assert (=> d!226357 m!928627))

(assert (=> d!226357 m!928657))

(declare-fun m!928737 () Bool)

(assert (=> d!226357 m!928737))

(assert (=> bm!43413 m!928657))

(declare-fun m!928739 () Bool)

(assert (=> bm!43413 m!928739))

(assert (=> d!226331 d!226357))

(declare-fun d!226359 () Bool)

(assert (=> d!226359 (= (efficientList$default$2!28 (c!119115 x!145817)) Nil!7255)))

(assert (=> d!226331 d!226359))

(declare-fun d!226361 () Bool)

(declare-fun c!119153 () Bool)

(assert (=> d!226361 (= c!119153 ((_ is Node!2579) (c!119115 x!145817)))))

(declare-fun e!410054 () Bool)

(assert (=> d!226361 (= (inv!9322 (c!119115 x!145817)) e!410054)))

(declare-fun b!662500 () Bool)

(declare-fun inv!9325 (Conc!2579) Bool)

(assert (=> b!662500 (= e!410054 (inv!9325 (c!119115 x!145817)))))

(declare-fun b!662501 () Bool)

(declare-fun e!410055 () Bool)

(assert (=> b!662501 (= e!410054 e!410055)))

(declare-fun res!293871 () Bool)

(assert (=> b!662501 (= res!293871 (not ((_ is Leaf!3830) (c!119115 x!145817))))))

(assert (=> b!662501 (=> res!293871 e!410055)))

(declare-fun b!662502 () Bool)

(declare-fun inv!9326 (Conc!2579) Bool)

(assert (=> b!662502 (= e!410055 (inv!9326 (c!119115 x!145817)))))

(assert (= (and d!226361 c!119153) b!662500))

(assert (= (and d!226361 (not c!119153)) b!662501))

(assert (= (and b!662501 (not res!293871)) b!662502))

(declare-fun m!928741 () Bool)

(assert (=> b!662500 m!928741))

(declare-fun m!928743 () Bool)

(assert (=> b!662502 m!928743))

(assert (=> b!662341 d!226361))

(declare-fun bs!94680 () Bool)

(declare-fun d!226363 () Bool)

(assert (= bs!94680 (and d!226363 d!226347)))

(declare-fun lambda!20576 () Int)

(assert (=> bs!94680 (= lambda!20576 lambda!20572)))

(declare-fun bs!94681 () Bool)

(assert (= bs!94681 (and d!226363 d!226351)))

(assert (=> bs!94681 (= lambda!20576 lambda!20574)))

(declare-fun bs!94682 () Bool)

(assert (= bs!94682 (and d!226363 d!226353)))

(assert (=> bs!94682 (= lambda!20576 lambda!20575)))

(assert (=> d!226363 (= (inv!9324 setElem!3194) (forall!1917 (exprs!717 setElem!3194) lambda!20576))))

(declare-fun bs!94683 () Bool)

(assert (= bs!94683 d!226363))

(declare-fun m!928745 () Bool)

(assert (=> bs!94683 m!928745))

(assert (=> setNonEmpty!3194 d!226363))

(declare-fun bs!94684 () Bool)

(declare-fun d!226365 () Bool)

(assert (= bs!94684 (and d!226365 d!226347)))

(declare-fun lambda!20577 () Int)

(assert (=> bs!94684 (= lambda!20577 lambda!20572)))

(declare-fun bs!94685 () Bool)

(assert (= bs!94685 (and d!226365 d!226351)))

(assert (=> bs!94685 (= lambda!20577 lambda!20574)))

(declare-fun bs!94686 () Bool)

(assert (= bs!94686 (and d!226365 d!226353)))

(assert (=> bs!94686 (= lambda!20577 lambda!20575)))

(declare-fun bs!94687 () Bool)

(assert (= bs!94687 (and d!226365 d!226363)))

(assert (=> bs!94687 (= lambda!20577 lambda!20576)))

(assert (=> d!226365 (= (inv!9324 setElem!3185) (forall!1917 (exprs!717 setElem!3185) lambda!20577))))

(declare-fun bs!94688 () Bool)

(assert (= bs!94688 d!226365))

(declare-fun m!928747 () Bool)

(assert (=> bs!94688 m!928747))

(assert (=> setNonEmpty!3184 d!226365))

(declare-fun d!226367 () Bool)

(declare-fun c!119158 () Bool)

(assert (=> d!226367 (= c!119158 ((_ is Empty!2580) (c!119116 lt!282195)))))

(declare-fun e!410060 () List!7271)

(assert (=> d!226367 (= (list!3059 (c!119116 lt!282195)) e!410060)))

(declare-fun b!662514 () Bool)

(declare-fun e!410061 () List!7271)

(declare-fun ++!1922 (List!7271 List!7271) List!7271)

(assert (=> b!662514 (= e!410061 (++!1922 (list!3059 (left!5868 (c!119116 lt!282195))) (list!3059 (right!6198 (c!119116 lt!282195)))))))

(declare-fun b!662513 () Bool)

(declare-fun list!3063 (IArray!5161) List!7271)

(assert (=> b!662513 (= e!410061 (list!3063 (xs!5229 (c!119116 lt!282195))))))

(declare-fun b!662512 () Bool)

(assert (=> b!662512 (= e!410060 e!410061)))

(declare-fun c!119159 () Bool)

(assert (=> b!662512 (= c!119159 ((_ is Leaf!3831) (c!119116 lt!282195)))))

(declare-fun b!662511 () Bool)

(assert (=> b!662511 (= e!410060 Nil!7257)))

(assert (= (and d!226367 c!119158) b!662511))

(assert (= (and d!226367 (not c!119158)) b!662512))

(assert (= (and b!662512 c!119159) b!662513))

(assert (= (and b!662512 (not c!119159)) b!662514))

(declare-fun m!928749 () Bool)

(assert (=> b!662514 m!928749))

(declare-fun m!928751 () Bool)

(assert (=> b!662514 m!928751))

(assert (=> b!662514 m!928749))

(assert (=> b!662514 m!928751))

(declare-fun m!928753 () Bool)

(assert (=> b!662514 m!928753))

(declare-fun m!928755 () Bool)

(assert (=> b!662513 m!928755))

(assert (=> d!226275 d!226367))

(declare-fun d!226369 () Bool)

(declare-fun lt!282264 () List!7269)

(assert (=> d!226369 (= lt!282264 (list!3060 x!145816))))

(assert (=> d!226369 (= lt!282264 (efficientList!85 (c!119115 x!145816) (efficientList$default$2!28 (c!119115 x!145816))))))

(assert (=> d!226369 (= (efficientList!84 x!145816) lt!282264)))

(declare-fun bs!94689 () Bool)

(assert (= bs!94689 d!226369))

(assert (=> bs!94689 m!928499))

(declare-fun m!928757 () Bool)

(assert (=> bs!94689 m!928757))

(assert (=> bs!94689 m!928757))

(declare-fun m!928759 () Bool)

(assert (=> bs!94689 m!928759))

(assert (=> d!226319 d!226369))

(declare-fun bs!94690 () Bool)

(declare-fun d!226371 () Bool)

(assert (= bs!94690 (and d!226371 d!226351)))

(declare-fun lambda!20578 () Int)

(assert (=> bs!94690 (= lambda!20578 lambda!20574)))

(declare-fun bs!94691 () Bool)

(assert (= bs!94691 (and d!226371 d!226347)))

(assert (=> bs!94691 (= lambda!20578 lambda!20572)))

(declare-fun bs!94692 () Bool)

(assert (= bs!94692 (and d!226371 d!226365)))

(assert (=> bs!94692 (= lambda!20578 lambda!20577)))

(declare-fun bs!94693 () Bool)

(assert (= bs!94693 (and d!226371 d!226363)))

(assert (=> bs!94693 (= lambda!20578 lambda!20576)))

(declare-fun bs!94694 () Bool)

(assert (= bs!94694 (and d!226371 d!226353)))

(assert (=> bs!94694 (= lambda!20578 lambda!20575)))

(assert (=> d!226371 (= (inv!9324 (_1!4173 (_1!4174 (h!12654 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))))) (forall!1917 (exprs!717 (_1!4173 (_1!4174 (h!12654 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335)))))))))) lambda!20578))))

(declare-fun bs!94695 () Bool)

(assert (= bs!94695 d!226371))

(declare-fun m!928761 () Bool)

(assert (=> bs!94695 m!928761))

(assert (=> b!662414 d!226371))

(declare-fun bs!94696 () Bool)

(declare-fun d!226373 () Bool)

(assert (= bs!94696 (and d!226373 d!226351)))

(declare-fun lambda!20579 () Int)

(assert (=> bs!94696 (= lambda!20579 lambda!20574)))

(declare-fun bs!94697 () Bool)

(assert (= bs!94697 (and d!226373 d!226371)))

(assert (=> bs!94697 (= lambda!20579 lambda!20578)))

(declare-fun bs!94698 () Bool)

(assert (= bs!94698 (and d!226373 d!226347)))

(assert (=> bs!94698 (= lambda!20579 lambda!20572)))

(declare-fun bs!94699 () Bool)

(assert (= bs!94699 (and d!226373 d!226365)))

(assert (=> bs!94699 (= lambda!20579 lambda!20577)))

(declare-fun bs!94700 () Bool)

(assert (= bs!94700 (and d!226373 d!226363)))

(assert (=> bs!94700 (= lambda!20579 lambda!20576)))

(declare-fun bs!94701 () Bool)

(assert (= bs!94701 (and d!226373 d!226353)))

(assert (=> bs!94701 (= lambda!20579 lambda!20575)))

(assert (=> d!226373 (= (inv!9324 setElem!3188) (forall!1917 (exprs!717 setElem!3188) lambda!20579))))

(declare-fun bs!94702 () Bool)

(assert (= bs!94702 d!226373))

(declare-fun m!928763 () Bool)

(assert (=> bs!94702 m!928763))

(assert (=> setNonEmpty!3188 d!226373))

(declare-fun d!226375 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!244) Regex!1805)

(declare-datatypes ((StringLiteralValueInjection!62 0))(
  ( (StringLiteralValueInjection!63) )
))
(declare-fun injection!8 (StringLiteralValueInjection!62) TokenValueInjection!2758)

(assert (=> d!226375 (= (jsonstringRule!0 JsonLexer!245) (Rule!2739 (jsonStringRe!0 JsonLexer!245) (String!9256 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!63)))))

(declare-fun bs!94703 () Bool)

(assert (= bs!94703 d!226375))

(declare-fun m!928765 () Bool)

(assert (=> bs!94703 m!928765))

(declare-fun m!928767 () Bool)

(assert (=> bs!94703 m!928767))

(assert (=> d!226279 d!226375))

(declare-fun d!226377 () Bool)

(declare-fun falseRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226377 (= (falseRule!0 JsonLexer!245) (Rule!2739 (falseRe!0 JsonLexer!245) (String!9256 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94704 () Bool)

(assert (= bs!94704 d!226377))

(declare-fun m!928769 () Bool)

(assert (=> bs!94704 m!928769))

(assert (=> bs!94704 m!928429))

(assert (=> d!226279 d!226377))

(assert (=> d!226279 d!226287))

(declare-fun d!226379 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226379 (= (rBracketRule!0 JsonLexer!245) (Rule!2739 (rBracketRe!0 JsonLexer!245) (String!9256 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94705 () Bool)

(assert (= bs!94705 d!226379))

(declare-fun m!928771 () Bool)

(assert (=> bs!94705 m!928771))

(assert (=> bs!94705 m!928429))

(assert (=> d!226279 d!226379))

(declare-fun d!226381 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226381 (= (lBraceRule!0 JsonLexer!245) (Rule!2739 (lBraceRe!0 JsonLexer!245) (String!9256 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94706 () Bool)

(assert (= bs!94706 d!226381))

(declare-fun m!928773 () Bool)

(assert (=> bs!94706 m!928773))

(assert (=> bs!94706 m!928429))

(assert (=> d!226279 d!226381))

(declare-fun d!226383 () Bool)

(declare-fun nullRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226383 (= (nullRule!0 JsonLexer!245) (Rule!2739 (nullRe!0 JsonLexer!245) (String!9256 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94707 () Bool)

(assert (= bs!94707 d!226383))

(declare-fun m!928775 () Bool)

(assert (=> bs!94707 m!928775))

(assert (=> bs!94707 m!928429))

(assert (=> d!226279 d!226383))

(declare-fun d!226385 () Bool)

(declare-fun commaRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226385 (= (commaRule!0 JsonLexer!245) (Rule!2739 (commaRe!0 JsonLexer!245) (String!9256 "ccoommmmaa") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94708 () Bool)

(assert (= bs!94708 d!226385))

(declare-fun m!928777 () Bool)

(assert (=> bs!94708 m!928777))

(assert (=> bs!94708 m!928429))

(assert (=> d!226279 d!226385))

(declare-fun d!226387 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226387 (= (rBraceRule!0 JsonLexer!245) (Rule!2739 (rBraceRe!0 JsonLexer!245) (String!9256 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94709 () Bool)

(assert (= bs!94709 d!226387))

(declare-fun m!928779 () Bool)

(assert (=> bs!94709 m!928779))

(assert (=> bs!94709 m!928429))

(assert (=> d!226279 d!226387))

(declare-fun d!226389 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!244) Regex!1805)

(declare-datatypes ((WhitespaceValueInjection!50 0))(
  ( (WhitespaceValueInjection!51) )
))
(declare-fun injection!7 (WhitespaceValueInjection!50) TokenValueInjection!2758)

(assert (=> d!226389 (= (whitespaceRule!0 JsonLexer!245) (Rule!2739 (wsCharRe!0 JsonLexer!245) (String!9256 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!51)))))

(declare-fun bs!94710 () Bool)

(assert (= bs!94710 d!226389))

(declare-fun m!928781 () Bool)

(assert (=> bs!94710 m!928781))

(declare-fun m!928783 () Bool)

(assert (=> bs!94710 m!928783))

(assert (=> d!226279 d!226389))

(declare-fun d!226391 () Bool)

(declare-fun eofRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226391 (= (eofRule!0 JsonLexer!245) (Rule!2739 (eofRe!0 JsonLexer!245) (String!9256 "eeooff") false (injection!7 WhitespaceValueInjection!51)))))

(declare-fun bs!94711 () Bool)

(assert (= bs!94711 d!226391))

(declare-fun m!928785 () Bool)

(assert (=> bs!94711 m!928785))

(assert (=> bs!94711 m!928783))

(assert (=> d!226279 d!226391))

(declare-fun d!226393 () Bool)

(declare-fun trueRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226393 (= (trueRule!0 JsonLexer!245) (Rule!2739 (trueRe!0 JsonLexer!245) (String!9256 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94712 () Bool)

(assert (= bs!94712 d!226393))

(declare-fun m!928787 () Bool)

(assert (=> bs!94712 m!928787))

(assert (=> bs!94712 m!928429))

(assert (=> d!226279 d!226393))

(declare-fun d!226395 () Bool)

(declare-fun colonRe!0 (JsonLexer!244) Regex!1805)

(assert (=> d!226395 (= (colonRule!0 JsonLexer!245) (Rule!2739 (colonRe!0 JsonLexer!245) (String!9256 "ccoolloonn") false (injection!9 KeywordValueInjection!63)))))

(declare-fun bs!94713 () Bool)

(assert (= bs!94713 d!226395))

(declare-fun m!928789 () Bool)

(assert (=> bs!94713 m!928789))

(assert (=> bs!94713 m!928429))

(assert (=> d!226279 d!226395))

(declare-fun d!226397 () Bool)

(declare-fun intRe!0 (JsonLexer!244) Regex!1805)

(declare-datatypes ((IntegerValueInjection!42 0))(
  ( (IntegerValueInjection!43) )
))
(declare-fun injection!5 (IntegerValueInjection!42) TokenValueInjection!2758)

(assert (=> d!226397 (= (integerLiteralRule!0 JsonLexer!245) (Rule!2739 (intRe!0 JsonLexer!245) (String!9256 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!43)))))

(declare-fun bs!94714 () Bool)

(assert (= bs!94714 d!226397))

(declare-fun m!928791 () Bool)

(assert (=> bs!94714 m!928791))

(declare-fun m!928793 () Bool)

(assert (=> bs!94714 m!928793))

(assert (=> d!226279 d!226397))

(declare-fun d!226399 () Bool)

(declare-fun floatRe!0 (JsonLexer!244) Regex!1805)

(declare-datatypes ((FloatLiteralValueInjection!38 0))(
  ( (FloatLiteralValueInjection!39) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!38) TokenValueInjection!2758)

(assert (=> d!226399 (= (floatLiteralRule!0 JsonLexer!245) (Rule!2739 (floatRe!0 JsonLexer!245) (String!9256 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!39)))))

(declare-fun bs!94715 () Bool)

(assert (= bs!94715 d!226399))

(declare-fun m!928795 () Bool)

(assert (=> bs!94715 m!928795))

(declare-fun m!928797 () Bool)

(assert (=> bs!94715 m!928797))

(assert (=> d!226279 d!226399))

(declare-fun bs!94716 () Bool)

(declare-fun d!226401 () Bool)

(assert (= bs!94716 (and d!226401 d!226351)))

(declare-fun lambda!20580 () Int)

(assert (=> bs!94716 (= lambda!20580 lambda!20574)))

(declare-fun bs!94717 () Bool)

(assert (= bs!94717 (and d!226401 d!226371)))

(assert (=> bs!94717 (= lambda!20580 lambda!20578)))

(declare-fun bs!94718 () Bool)

(assert (= bs!94718 (and d!226401 d!226347)))

(assert (=> bs!94718 (= lambda!20580 lambda!20572)))

(declare-fun bs!94719 () Bool)

(assert (= bs!94719 (and d!226401 d!226365)))

(assert (=> bs!94719 (= lambda!20580 lambda!20577)))

(declare-fun bs!94720 () Bool)

(assert (= bs!94720 (and d!226401 d!226363)))

(assert (=> bs!94720 (= lambda!20580 lambda!20576)))

(declare-fun bs!94721 () Bool)

(assert (= bs!94721 (and d!226401 d!226373)))

(assert (=> bs!94721 (= lambda!20580 lambda!20579)))

(declare-fun bs!94722 () Bool)

(assert (= bs!94722 (and d!226401 d!226353)))

(assert (=> bs!94722 (= lambda!20580 lambda!20575)))

(assert (=> d!226401 (= (inv!9324 (_1!4173 (_1!4174 (h!12654 mapValue!2780)))) (forall!1917 (exprs!717 (_1!4173 (_1!4174 (h!12654 mapValue!2780)))) lambda!20580))))

(declare-fun bs!94723 () Bool)

(assert (= bs!94723 d!226401))

(declare-fun m!928799 () Bool)

(assert (=> bs!94723 m!928799))

(assert (=> b!662393 d!226401))

(assert (=> bs!94577 d!226309))

(declare-fun bs!94724 () Bool)

(declare-fun d!226403 () Bool)

(assert (= bs!94724 (and d!226403 d!226351)))

(declare-fun lambda!20581 () Int)

(assert (=> bs!94724 (= lambda!20581 lambda!20574)))

(declare-fun bs!94725 () Bool)

(assert (= bs!94725 (and d!226403 d!226371)))

(assert (=> bs!94725 (= lambda!20581 lambda!20578)))

(declare-fun bs!94726 () Bool)

(assert (= bs!94726 (and d!226403 d!226347)))

(assert (=> bs!94726 (= lambda!20581 lambda!20572)))

(declare-fun bs!94727 () Bool)

(assert (= bs!94727 (and d!226403 d!226401)))

(assert (=> bs!94727 (= lambda!20581 lambda!20580)))

(declare-fun bs!94728 () Bool)

(assert (= bs!94728 (and d!226403 d!226365)))

(assert (=> bs!94728 (= lambda!20581 lambda!20577)))

(declare-fun bs!94729 () Bool)

(assert (= bs!94729 (and d!226403 d!226363)))

(assert (=> bs!94729 (= lambda!20581 lambda!20576)))

(declare-fun bs!94730 () Bool)

(assert (= bs!94730 (and d!226403 d!226373)))

(assert (=> bs!94730 (= lambda!20581 lambda!20579)))

(declare-fun bs!94731 () Bool)

(assert (= bs!94731 (and d!226403 d!226353)))

(assert (=> bs!94731 (= lambda!20581 lambda!20575)))

(assert (=> d!226403 (= (inv!9324 setElem!3193) (forall!1917 (exprs!717 setElem!3193) lambda!20581))))

(declare-fun bs!94732 () Bool)

(assert (= bs!94732 d!226403))

(declare-fun m!928801 () Bool)

(assert (=> bs!94732 m!928801))

(assert (=> setNonEmpty!3193 d!226403))

(declare-fun d!226405 () Bool)

(declare-fun lt!282267 () Bool)

(assert (=> d!226405 (= lt!282267 (forall!1915 (list!3058 lt!282195) lambda!20569))))

(declare-fun forall!1918 (Conc!2580 Int) Bool)

(assert (=> d!226405 (= lt!282267 (forall!1918 (c!119116 lt!282195) lambda!20569))))

(assert (=> d!226405 (= (forall!1916 lt!282195 lambda!20569) lt!282267)))

(declare-fun bs!94733 () Bool)

(assert (= bs!94733 d!226405))

(assert (=> bs!94733 m!928449))

(assert (=> bs!94733 m!928449))

(declare-fun m!928803 () Bool)

(assert (=> bs!94733 m!928803))

(declare-fun m!928805 () Bool)

(assert (=> bs!94733 m!928805))

(assert (=> d!226291 d!226405))

(declare-fun d!226407 () Bool)

(declare-fun lt!282270 () Bool)

(declare-fun isEmpty!4809 (List!7271) Bool)

(assert (=> d!226407 (= lt!282270 (isEmpty!4809 (list!3058 lt!282195)))))

(declare-fun isEmpty!4810 (Conc!2580) Bool)

(assert (=> d!226407 (= lt!282270 (isEmpty!4810 (c!119116 lt!282195)))))

(assert (=> d!226407 (= (isEmpty!4808 lt!282195) lt!282270)))

(declare-fun bs!94734 () Bool)

(assert (= bs!94734 d!226407))

(assert (=> bs!94734 m!928449))

(assert (=> bs!94734 m!928449))

(declare-fun m!928807 () Bool)

(assert (=> bs!94734 m!928807))

(declare-fun m!928809 () Bool)

(assert (=> bs!94734 m!928809))

(assert (=> d!226291 d!226407))

(assert (=> d!226291 d!226277))

(declare-fun d!226409 () Bool)

(declare-fun c!119160 () Bool)

(assert (=> d!226409 (= c!119160 ((_ is Node!2579) (c!119115 x!145818)))))

(declare-fun e!410062 () Bool)

(assert (=> d!226409 (= (inv!9322 (c!119115 x!145818)) e!410062)))

(declare-fun b!662515 () Bool)

(assert (=> b!662515 (= e!410062 (inv!9325 (c!119115 x!145818)))))

(declare-fun b!662516 () Bool)

(declare-fun e!410063 () Bool)

(assert (=> b!662516 (= e!410062 e!410063)))

(declare-fun res!293872 () Bool)

(assert (=> b!662516 (= res!293872 (not ((_ is Leaf!3830) (c!119115 x!145818))))))

(assert (=> b!662516 (=> res!293872 e!410063)))

(declare-fun b!662517 () Bool)

(assert (=> b!662517 (= e!410063 (inv!9326 (c!119115 x!145818)))))

(assert (= (and d!226409 c!119160) b!662515))

(assert (= (and d!226409 (not c!119160)) b!662516))

(assert (= (and b!662516 (not res!293872)) b!662517))

(declare-fun m!928811 () Bool)

(assert (=> b!662515 m!928811))

(declare-fun m!928813 () Bool)

(assert (=> b!662517 m!928813))

(assert (=> b!662342 d!226409))

(declare-fun d!226411 () Bool)

(assert (=> d!226411 (= (list!3058 lt!282225) (list!3059 (c!119116 lt!282225)))))

(declare-fun bs!94735 () Bool)

(assert (= bs!94735 d!226411))

(declare-fun m!928815 () Bool)

(assert (=> bs!94735 m!928815))

(assert (=> d!226295 d!226411))

(declare-fun d!226413 () Bool)

(declare-fun e!410066 () Bool)

(assert (=> d!226413 e!410066))

(declare-fun res!293875 () Bool)

(assert (=> d!226413 (=> (not res!293875) (not e!410066))))

(declare-fun lt!282273 () BalanceConc!5172)

(assert (=> d!226413 (= res!293875 (= (list!3058 lt!282273) (Cons!7257 (Token!2661 (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (lBracketRule!0 JsonLexer!245) 1 (Cons!7255 #x005B Nil!7255)) Nil!7257)))))

(declare-fun choose!4674 (Token!2660) BalanceConc!5172)

(assert (=> d!226413 (= lt!282273 (choose!4674 (Token!2661 (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (lBracketRule!0 JsonLexer!245) 1 (Cons!7255 #x005B Nil!7255))))))

(assert (=> d!226413 (= (singleton!218 (Token!2661 (apply!1740 (injection!9 KeywordValueInjection!63) (singletonSeq!457 #x005B)) (lBracketRule!0 JsonLexer!245) 1 (Cons!7255 #x005B Nil!7255))) lt!282273)))

(declare-fun b!662520 () Bool)

(assert (=> b!662520 (= e!410066 (isBalanced!674 (c!119116 lt!282273)))))

(assert (= (and d!226413 res!293875) b!662520))

(declare-fun m!928817 () Bool)

(assert (=> d!226413 m!928817))

(declare-fun m!928819 () Bool)

(assert (=> d!226413 m!928819))

(declare-fun m!928821 () Bool)

(assert (=> b!662520 m!928821))

(assert (=> d!226295 d!226413))

(declare-fun bs!94736 () Bool)

(declare-fun d!226415 () Bool)

(assert (= bs!94736 (and d!226415 d!226351)))

(declare-fun lambda!20582 () Int)

(assert (=> bs!94736 (= lambda!20582 lambda!20574)))

(declare-fun bs!94737 () Bool)

(assert (= bs!94737 (and d!226415 d!226371)))

(assert (=> bs!94737 (= lambda!20582 lambda!20578)))

(declare-fun bs!94738 () Bool)

(assert (= bs!94738 (and d!226415 d!226347)))

(assert (=> bs!94738 (= lambda!20582 lambda!20572)))

(declare-fun bs!94739 () Bool)

(assert (= bs!94739 (and d!226415 d!226401)))

(assert (=> bs!94739 (= lambda!20582 lambda!20580)))

(declare-fun bs!94740 () Bool)

(assert (= bs!94740 (and d!226415 d!226365)))

(assert (=> bs!94740 (= lambda!20582 lambda!20577)))

(declare-fun bs!94741 () Bool)

(assert (= bs!94741 (and d!226415 d!226403)))

(assert (=> bs!94741 (= lambda!20582 lambda!20581)))

(declare-fun bs!94742 () Bool)

(assert (= bs!94742 (and d!226415 d!226363)))

(assert (=> bs!94742 (= lambda!20582 lambda!20576)))

(declare-fun bs!94743 () Bool)

(assert (= bs!94743 (and d!226415 d!226373)))

(assert (=> bs!94743 (= lambda!20582 lambda!20579)))

(declare-fun bs!94744 () Bool)

(assert (= bs!94744 (and d!226415 d!226353)))

(assert (=> bs!94744 (= lambda!20582 lambda!20575)))

(assert (=> d!226415 (= (inv!9324 (_2!4175 (_1!4176 (h!12655 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))))) (forall!1917 (exprs!717 (_2!4175 (_1!4176 (h!12655 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))))) lambda!20582))))

(declare-fun bs!94745 () Bool)

(assert (= bs!94745 d!226415))

(declare-fun m!928823 () Bool)

(assert (=> bs!94745 m!928823))

(assert (=> b!662413 d!226415))

(declare-fun bs!94746 () Bool)

(declare-fun d!226417 () Bool)

(assert (= bs!94746 (and d!226417 d!226351)))

(declare-fun lambda!20583 () Int)

(assert (=> bs!94746 (= lambda!20583 lambda!20574)))

(declare-fun bs!94747 () Bool)

(assert (= bs!94747 (and d!226417 d!226415)))

(assert (=> bs!94747 (= lambda!20583 lambda!20582)))

(declare-fun bs!94748 () Bool)

(assert (= bs!94748 (and d!226417 d!226371)))

(assert (=> bs!94748 (= lambda!20583 lambda!20578)))

(declare-fun bs!94749 () Bool)

(assert (= bs!94749 (and d!226417 d!226347)))

(assert (=> bs!94749 (= lambda!20583 lambda!20572)))

(declare-fun bs!94750 () Bool)

(assert (= bs!94750 (and d!226417 d!226401)))

(assert (=> bs!94750 (= lambda!20583 lambda!20580)))

(declare-fun bs!94751 () Bool)

(assert (= bs!94751 (and d!226417 d!226365)))

(assert (=> bs!94751 (= lambda!20583 lambda!20577)))

(declare-fun bs!94752 () Bool)

(assert (= bs!94752 (and d!226417 d!226403)))

(assert (=> bs!94752 (= lambda!20583 lambda!20581)))

(declare-fun bs!94753 () Bool)

(assert (= bs!94753 (and d!226417 d!226363)))

(assert (=> bs!94753 (= lambda!20583 lambda!20576)))

(declare-fun bs!94754 () Bool)

(assert (= bs!94754 (and d!226417 d!226373)))

(assert (=> bs!94754 (= lambda!20583 lambda!20579)))

(declare-fun bs!94755 () Bool)

(assert (= bs!94755 (and d!226417 d!226353)))

(assert (=> bs!94755 (= lambda!20583 lambda!20575)))

(assert (=> d!226417 (= (inv!9324 (_1!4173 (_1!4174 (h!12654 mapValue!2776)))) (forall!1917 (exprs!717 (_1!4173 (_1!4174 (h!12654 mapValue!2776)))) lambda!20583))))

(declare-fun bs!94756 () Bool)

(assert (= bs!94756 d!226417))

(declare-fun m!928825 () Bool)

(assert (=> bs!94756 m!928825))

(assert (=> b!662398 d!226417))

(declare-fun d!226419 () Bool)

(assert (=> d!226419 true))

(declare-fun lt!282276 () Bool)

(declare-fun rulesValidInductive!511 (LexerInterface!1285 List!7270) Bool)

(assert (=> d!226419 (= lt!282276 (rulesValidInductive!511 Lexer!1283 lt!282194))))

(declare-fun lambda!20586 () Int)

(declare-fun forall!1919 (List!7270 Int) Bool)

(assert (=> d!226419 (= lt!282276 (forall!1919 lt!282194 lambda!20586))))

(assert (=> d!226419 (= (rulesValid!516 Lexer!1283 lt!282194) lt!282276)))

(declare-fun bs!94757 () Bool)

(assert (= bs!94757 d!226419))

(declare-fun m!928827 () Bool)

(assert (=> bs!94757 m!928827))

(declare-fun m!928829 () Bool)

(assert (=> bs!94757 m!928829))

(assert (=> d!226301 d!226419))

(assert (=> d!226335 d!226311))

(declare-fun b!662523 () Bool)

(declare-fun e!410067 () List!7269)

(assert (=> b!662523 (= e!410067 (efficientList!86 (xs!5228 (c!119115 (singletonSeq!457 #x005B)))))))

(declare-fun b!662524 () Bool)

(declare-fun e!410068 () List!7269)

(declare-fun call!43419 () List!7269)

(assert (=> b!662524 (= e!410068 call!43419)))

(declare-fun b!662525 () Bool)

(declare-fun lt!282281 () Unit!12518)

(declare-fun lt!282278 () Unit!12518)

(assert (=> b!662525 (= lt!282281 lt!282278)))

(declare-fun lt!282280 () List!7269)

(declare-fun lt!282277 () List!7269)

(assert (=> b!662525 (= (++!1921 (++!1921 lt!282280 lt!282277) (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B)))) (++!1921 lt!282280 call!43419))))

(assert (=> b!662525 (= lt!282278 (lemmaConcatAssociativity!639 lt!282280 lt!282277 (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B)))))))

(assert (=> b!662525 (= lt!282277 (list!3061 (right!6197 (c!119115 (singletonSeq!457 #x005B)))))))

(assert (=> b!662525 (= lt!282280 (list!3061 (left!5867 (c!119115 (singletonSeq!457 #x005B)))))))

(assert (=> b!662525 (= e!410068 (efficientList!85 (left!5867 (c!119115 (singletonSeq!457 #x005B))) (efficientList!85 (right!6197 (c!119115 (singletonSeq!457 #x005B))) (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B))))))))

(declare-fun b!662526 () Bool)

(declare-fun e!410069 () List!7269)

(assert (=> b!662526 (= e!410069 e!410068)))

(declare-fun c!119163 () Bool)

(assert (=> b!662526 (= c!119163 ((_ is Leaf!3830) (c!119115 (singletonSeq!457 #x005B))))))

(declare-fun b!662527 () Bool)

(assert (=> b!662527 (= e!410067 lt!282277)))

(declare-fun d!226421 () Bool)

(declare-fun lt!282279 () List!7269)

(assert (=> d!226421 (= lt!282279 (++!1921 (list!3061 (c!119115 (singletonSeq!457 #x005B))) (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B)))))))

(assert (=> d!226421 (= lt!282279 e!410069)))

(declare-fun c!119164 () Bool)

(assert (=> d!226421 (= c!119164 ((_ is Empty!2579) (c!119115 (singletonSeq!457 #x005B))))))

(assert (=> d!226421 (= (efficientList!85 (c!119115 (singletonSeq!457 #x005B)) (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B)))) lt!282279)))

(declare-fun b!662528 () Bool)

(assert (=> b!662528 (= e!410069 (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B))))))

(declare-fun bm!43414 () Bool)

(declare-fun c!119162 () Bool)

(assert (=> bm!43414 (= c!119162 c!119163)))

(assert (=> bm!43414 (= call!43419 (++!1921 e!410067 (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B)))))))

(assert (= (and d!226421 c!119164) b!662528))

(assert (= (and d!226421 (not c!119164)) b!662526))

(assert (= (and b!662526 c!119163) b!662524))

(assert (= (and b!662526 (not c!119163)) b!662525))

(assert (= (or b!662524 b!662525) bm!43414))

(assert (= (and bm!43414 c!119162) b!662523))

(assert (= (and bm!43414 (not c!119162)) b!662527))

(declare-fun m!928831 () Bool)

(assert (=> b!662523 m!928831))

(assert (=> b!662525 m!928663))

(declare-fun m!928833 () Bool)

(assert (=> b!662525 m!928833))

(assert (=> b!662525 m!928677))

(declare-fun m!928835 () Bool)

(assert (=> b!662525 m!928835))

(assert (=> b!662525 m!928833))

(declare-fun m!928837 () Bool)

(assert (=> b!662525 m!928837))

(declare-fun m!928839 () Bool)

(assert (=> b!662525 m!928839))

(assert (=> b!662525 m!928839))

(assert (=> b!662525 m!928663))

(declare-fun m!928841 () Bool)

(assert (=> b!662525 m!928841))

(assert (=> b!662525 m!928663))

(declare-fun m!928843 () Bool)

(assert (=> b!662525 m!928843))

(assert (=> b!662525 m!928675))

(assert (=> d!226421 m!928625))

(assert (=> d!226421 m!928625))

(assert (=> d!226421 m!928663))

(declare-fun m!928845 () Bool)

(assert (=> d!226421 m!928845))

(assert (=> bm!43414 m!928663))

(declare-fun m!928847 () Bool)

(assert (=> bm!43414 m!928847))

(assert (=> d!226335 d!226421))

(declare-fun d!226423 () Bool)

(assert (=> d!226423 (= (efficientList$default$2!28 (c!119115 (singletonSeq!457 #x005B))) Nil!7255)))

(assert (=> d!226335 d!226423))

(declare-fun bs!94758 () Bool)

(declare-fun d!226425 () Bool)

(assert (= bs!94758 (and d!226425 d!226351)))

(declare-fun lambda!20587 () Int)

(assert (=> bs!94758 (= lambda!20587 lambda!20574)))

(declare-fun bs!94759 () Bool)

(assert (= bs!94759 (and d!226425 d!226415)))

(assert (=> bs!94759 (= lambda!20587 lambda!20582)))

(declare-fun bs!94760 () Bool)

(assert (= bs!94760 (and d!226425 d!226371)))

(assert (=> bs!94760 (= lambda!20587 lambda!20578)))

(declare-fun bs!94761 () Bool)

(assert (= bs!94761 (and d!226425 d!226347)))

(assert (=> bs!94761 (= lambda!20587 lambda!20572)))

(declare-fun bs!94762 () Bool)

(assert (= bs!94762 (and d!226425 d!226401)))

(assert (=> bs!94762 (= lambda!20587 lambda!20580)))

(declare-fun bs!94763 () Bool)

(assert (= bs!94763 (and d!226425 d!226365)))

(assert (=> bs!94763 (= lambda!20587 lambda!20577)))

(declare-fun bs!94764 () Bool)

(assert (= bs!94764 (and d!226425 d!226403)))

(assert (=> bs!94764 (= lambda!20587 lambda!20581)))

(declare-fun bs!94765 () Bool)

(assert (= bs!94765 (and d!226425 d!226417)))

(assert (=> bs!94765 (= lambda!20587 lambda!20583)))

(declare-fun bs!94766 () Bool)

(assert (= bs!94766 (and d!226425 d!226363)))

(assert (=> bs!94766 (= lambda!20587 lambda!20576)))

(declare-fun bs!94767 () Bool)

(assert (= bs!94767 (and d!226425 d!226373)))

(assert (=> bs!94767 (= lambda!20587 lambda!20579)))

(declare-fun bs!94768 () Bool)

(assert (= bs!94768 (and d!226425 d!226353)))

(assert (=> bs!94768 (= lambda!20587 lambda!20575)))

(assert (=> d!226425 (= (inv!9324 (_2!4175 (_1!4176 (h!12655 mapValue!2783)))) (forall!1917 (exprs!717 (_2!4175 (_1!4176 (h!12655 mapValue!2783)))) lambda!20587))))

(declare-fun bs!94769 () Bool)

(assert (= bs!94769 d!226425))

(declare-fun m!928849 () Bool)

(assert (=> bs!94769 m!928849))

(assert (=> b!662405 d!226425))

(declare-fun d!226427 () Bool)

(declare-fun res!293880 () Bool)

(declare-fun e!410074 () Bool)

(assert (=> d!226427 (=> res!293880 e!410074)))

(assert (=> d!226427 (= res!293880 ((_ is Nil!7257) (list!3058 lt!282195)))))

(assert (=> d!226427 (= (forall!1915 (list!3058 lt!282195) lambda!20542) e!410074)))

(declare-fun b!662533 () Bool)

(declare-fun e!410075 () Bool)

(assert (=> b!662533 (= e!410074 e!410075)))

(declare-fun res!293881 () Bool)

(assert (=> b!662533 (=> (not res!293881) (not e!410075))))

(declare-fun dynLambda!3824 (Int Token!2660) Bool)

(assert (=> b!662533 (= res!293881 (dynLambda!3824 lambda!20542 (h!12658 (list!3058 lt!282195))))))

(declare-fun b!662534 () Bool)

(assert (=> b!662534 (= e!410075 (forall!1915 (t!86504 (list!3058 lt!282195)) lambda!20542))))

(assert (= (and d!226427 (not res!293880)) b!662533))

(assert (= (and b!662533 res!293881) b!662534))

(declare-fun b_lambda!25781 () Bool)

(assert (=> (not b_lambda!25781) (not b!662533)))

(declare-fun m!928851 () Bool)

(assert (=> b!662533 m!928851))

(declare-fun m!928853 () Bool)

(assert (=> b!662534 m!928853))

(assert (=> d!226273 d!226427))

(assert (=> d!226273 d!226277))

(declare-fun bs!94770 () Bool)

(declare-fun d!226429 () Bool)

(assert (= bs!94770 (and d!226429 d!226351)))

(declare-fun lambda!20588 () Int)

(assert (=> bs!94770 (= lambda!20588 lambda!20574)))

(declare-fun bs!94771 () Bool)

(assert (= bs!94771 (and d!226429 d!226415)))

(assert (=> bs!94771 (= lambda!20588 lambda!20582)))

(declare-fun bs!94772 () Bool)

(assert (= bs!94772 (and d!226429 d!226371)))

(assert (=> bs!94772 (= lambda!20588 lambda!20578)))

(declare-fun bs!94773 () Bool)

(assert (= bs!94773 (and d!226429 d!226347)))

(assert (=> bs!94773 (= lambda!20588 lambda!20572)))

(declare-fun bs!94774 () Bool)

(assert (= bs!94774 (and d!226429 d!226401)))

(assert (=> bs!94774 (= lambda!20588 lambda!20580)))

(declare-fun bs!94775 () Bool)

(assert (= bs!94775 (and d!226429 d!226365)))

(assert (=> bs!94775 (= lambda!20588 lambda!20577)))

(declare-fun bs!94776 () Bool)

(assert (= bs!94776 (and d!226429 d!226403)))

(assert (=> bs!94776 (= lambda!20588 lambda!20581)))

(declare-fun bs!94777 () Bool)

(assert (= bs!94777 (and d!226429 d!226417)))

(assert (=> bs!94777 (= lambda!20588 lambda!20583)))

(declare-fun bs!94778 () Bool)

(assert (= bs!94778 (and d!226429 d!226363)))

(assert (=> bs!94778 (= lambda!20588 lambda!20576)))

(declare-fun bs!94779 () Bool)

(assert (= bs!94779 (and d!226429 d!226373)))

(assert (=> bs!94779 (= lambda!20588 lambda!20579)))

(declare-fun bs!94780 () Bool)

(assert (= bs!94780 (and d!226429 d!226353)))

(assert (=> bs!94780 (= lambda!20588 lambda!20575)))

(declare-fun bs!94781 () Bool)

(assert (= bs!94781 (and d!226429 d!226425)))

(assert (=> bs!94781 (= lambda!20588 lambda!20587)))

(assert (=> d!226429 (= (inv!9324 setElem!3192) (forall!1917 (exprs!717 setElem!3192) lambda!20588))))

(declare-fun bs!94782 () Bool)

(assert (= bs!94782 d!226429))

(declare-fun m!928855 () Bool)

(assert (=> bs!94782 m!928855))

(assert (=> setNonEmpty!3192 d!226429))

(declare-fun b!662575 () Bool)

(declare-fun e!410101 () BalanceConc!5170)

(declare-fun falseStringConc!0 () BalanceConc!5170)

(assert (=> b!662575 (= e!410101 falseStringConc!0)))

(declare-fun b!662576 () Bool)

(declare-fun c!119191 () Bool)

(assert (=> b!662576 (= c!119191 ((_ is RightBrace!1503) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun e!410100 () BalanceConc!5170)

(declare-fun e!410096 () BalanceConc!5170)

(assert (=> b!662576 (= e!410100 e!410096)))

(declare-fun d!226431 () Bool)

(declare-fun c!119192 () Bool)

(assert (=> d!226431 (= c!119192 ((_ is Null!1503) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun e!410102 () BalanceConc!5170)

(assert (=> d!226431 (= (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)) e!410102)))

(declare-fun b!662577 () Bool)

(declare-fun e!410099 () BalanceConc!5170)

(declare-fun commaStringConc!0 () BalanceConc!5170)

(assert (=> b!662577 (= e!410099 commaStringConc!0)))

(declare-fun b!662578 () Bool)

(declare-fun e!410097 () BalanceConc!5170)

(declare-fun trueStringConc!0 () BalanceConc!5170)

(assert (=> b!662578 (= e!410097 trueStringConc!0)))

(declare-fun b!662579 () Bool)

(declare-fun rightBraceStringConc!0 () BalanceConc!5170)

(assert (=> b!662579 (= e!410096 rightBraceStringConc!0)))

(declare-fun b!662580 () Bool)

(declare-fun c!119187 () Bool)

(assert (=> b!662580 (= c!119187 ((_ is RightBracket!1503) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun e!410105 () BalanceConc!5170)

(declare-fun e!410104 () BalanceConc!5170)

(assert (=> b!662580 (= e!410105 e!410104)))

(declare-fun b!662581 () Bool)

(declare-fun leftBraceStringConc!0 () BalanceConc!5170)

(assert (=> b!662581 (= e!410100 leftBraceStringConc!0)))

(declare-fun b!662582 () Bool)

(declare-fun c!119194 () Bool)

(assert (=> b!662582 (= c!119194 ((_ is Comma!1503) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun e!410103 () BalanceConc!5170)

(assert (=> b!662582 (= e!410103 e!410099)))

(declare-fun b!662583 () Bool)

(assert (=> b!662583 (= e!410096 e!410105)))

(declare-fun c!119190 () Bool)

(assert (=> b!662583 (= c!119190 ((_ is LeftBracket!1503) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun b!662584 () Bool)

(declare-fun e!410098 () BalanceConc!5170)

(declare-fun seqFromList!1467 (List!7269) BalanceConc!5170)

(assert (=> b!662584 (= e!410098 (seqFromList!1467 (value!47003 (toValue!11 KeywordValueInjection!63 x!145816))))))

(declare-fun b!662585 () Bool)

(declare-fun nullStringConc!0 () BalanceConc!5170)

(assert (=> b!662585 (= e!410102 nullStringConc!0)))

(declare-fun b!662586 () Bool)

(assert (=> b!662586 (= e!410098 (BalanceConc!5171 Empty!2579))))

(declare-fun b!662587 () Bool)

(assert (=> b!662587 (= e!410099 e!410100)))

(declare-fun c!119188 () Bool)

(assert (=> b!662587 (= c!119188 ((_ is LeftBrace!1503) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun b!662588 () Bool)

(assert (=> b!662588 (= e!410104 e!410098)))

(declare-fun c!119189 () Bool)

(assert (=> b!662588 (= c!119189 ((_ is Broken!7518) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun b!662589 () Bool)

(assert (=> b!662589 (= e!410102 e!410097)))

(declare-fun c!119186 () Bool)

(assert (=> b!662589 (= c!119186 ((_ is True!3007) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun b!662590 () Bool)

(assert (=> b!662590 (= e!410101 e!410103)))

(declare-fun c!119195 () Bool)

(assert (=> b!662590 (= c!119195 ((_ is Colon!1503) (toValue!11 KeywordValueInjection!63 x!145816)))))

(declare-fun b!662591 () Bool)

(declare-fun colonStringConc!0 () BalanceConc!5170)

(assert (=> b!662591 (= e!410103 colonStringConc!0)))

(declare-fun b!662592 () Bool)

(declare-fun leftBracketStringConc!0 () BalanceConc!5170)

(assert (=> b!662592 (= e!410105 leftBracketStringConc!0)))

(declare-fun b!662593 () Bool)

(declare-fun rightBracketStringConc!0 () BalanceConc!5170)

(assert (=> b!662593 (= e!410104 rightBracketStringConc!0)))

(declare-fun b!662594 () Bool)

(declare-fun c!119193 () Bool)

(assert (=> b!662594 (= c!119193 ((_ is False!3007) (toValue!11 KeywordValueInjection!63 x!145816)))))

(assert (=> b!662594 (= e!410097 e!410101)))

(assert (= (and d!226431 c!119192) b!662585))

(assert (= (and d!226431 (not c!119192)) b!662589))

(assert (= (and b!662589 c!119186) b!662578))

(assert (= (and b!662589 (not c!119186)) b!662594))

(assert (= (and b!662594 c!119193) b!662575))

(assert (= (and b!662594 (not c!119193)) b!662590))

(assert (= (and b!662590 c!119195) b!662591))

(assert (= (and b!662590 (not c!119195)) b!662582))

(assert (= (and b!662582 c!119194) b!662577))

(assert (= (and b!662582 (not c!119194)) b!662587))

(assert (= (and b!662587 c!119188) b!662581))

(assert (= (and b!662587 (not c!119188)) b!662576))

(assert (= (and b!662576 c!119191) b!662579))

(assert (= (and b!662576 (not c!119191)) b!662583))

(assert (= (and b!662583 c!119190) b!662592))

(assert (= (and b!662583 (not c!119190)) b!662580))

(assert (= (and b!662580 c!119187) b!662593))

(assert (= (and b!662580 (not c!119187)) b!662588))

(assert (= (and b!662588 c!119189) b!662584))

(assert (= (and b!662588 (not c!119189)) b!662586))

(declare-fun m!928857 () Bool)

(assert (=> b!662584 m!928857))

(declare-fun m!928859 () Bool)

(assert (=> b!662581 m!928859))

(declare-fun m!928861 () Bool)

(assert (=> b!662592 m!928861))

(declare-fun m!928863 () Bool)

(assert (=> b!662585 m!928863))

(declare-fun m!928865 () Bool)

(assert (=> b!662591 m!928865))

(declare-fun m!928867 () Bool)

(assert (=> b!662577 m!928867))

(declare-fun m!928869 () Bool)

(assert (=> b!662593 m!928869))

(declare-fun m!928871 () Bool)

(assert (=> b!662578 m!928871))

(declare-fun m!928873 () Bool)

(assert (=> b!662579 m!928873))

(declare-fun m!928875 () Bool)

(assert (=> b!662575 m!928875))

(assert (=> d!226285 d!226431))

(assert (=> d!226285 d!226321))

(declare-fun d!226433 () Bool)

(declare-fun choose!4675 (Int) Bool)

(assert (=> d!226433 (= (Forall2!258 lambda!20566) (choose!4675 lambda!20566))))

(declare-fun bs!94783 () Bool)

(assert (= bs!94783 d!226433))

(declare-fun m!928877 () Bool)

(assert (=> bs!94783 m!928877))

(assert (=> d!226285 d!226433))

(declare-fun bs!94784 () Bool)

(declare-fun d!226435 () Bool)

(assert (= bs!94784 (and d!226435 d!226285)))

(declare-fun lambda!20591 () Int)

(assert (=> bs!94784 (not (= lambda!20591 lambda!20566))))

(assert (=> d!226435 true))

(declare-fun order!5265 () Int)

(declare-fun dynLambda!3825 (Int Int) Int)

(assert (=> d!226435 (< (dynLambda!3820 order!5259 lambda!20565) (dynLambda!3825 order!5265 lambda!20591))))

(assert (=> d!226435 (= (equivClasses!530 lambda!20564 lambda!20565) (Forall2!258 lambda!20591))))

(declare-fun bs!94785 () Bool)

(assert (= bs!94785 d!226435))

(declare-fun m!928879 () Bool)

(assert (=> bs!94785 m!928879))

(assert (=> d!226285 d!226435))

(declare-fun d!226437 () Bool)

(assert (=> d!226437 (= (inv!9323 x!145817) (isBalanced!673 (c!119115 x!145817)))))

(declare-fun bs!94786 () Bool)

(assert (= bs!94786 d!226437))

(declare-fun m!928881 () Bool)

(assert (=> bs!94786 m!928881))

(assert (=> d!226285 d!226437))

(declare-fun d!226439 () Bool)

(declare-fun choose!4676 (Int) Bool)

(assert (=> d!226439 (= (Forall!336 lambda!20563) (choose!4676 lambda!20563))))

(declare-fun bs!94787 () Bool)

(assert (= bs!94787 d!226439))

(declare-fun m!928883 () Bool)

(assert (=> bs!94787 m!928883))

(assert (=> d!226285 d!226439))

(assert (=> d!226285 d!226319))

(declare-fun bs!94788 () Bool)

(declare-fun d!226441 () Bool)

(assert (= bs!94788 (and d!226441 d!226285)))

(declare-fun lambda!20594 () Int)

(assert (=> bs!94788 (not (= lambda!20594 lambda!20563))))

(assert (=> d!226441 true))

(declare-fun order!5267 () Int)

(declare-fun dynLambda!3826 (Int Int) Int)

(assert (=> d!226441 (< (dynLambda!3822 order!5263 lambda!20564) (dynLambda!3826 order!5267 lambda!20594))))

(assert (=> d!226441 true))

(assert (=> d!226441 (< (dynLambda!3820 order!5259 lambda!20565) (dynLambda!3826 order!5267 lambda!20594))))

(assert (=> d!226441 (= (semiInverseModEq!551 lambda!20564 lambda!20565) (Forall!336 lambda!20594))))

(declare-fun bs!94789 () Bool)

(assert (= bs!94789 d!226441))

(declare-fun m!928885 () Bool)

(assert (=> bs!94789 m!928885))

(assert (=> d!226285 d!226441))

(assert (=> d!226285 d!226323))

(declare-fun d!226443 () Bool)

(assert (=> d!226443 (= (inv!9323 x!145816) (isBalanced!673 (c!119115 x!145816)))))

(declare-fun bs!94790 () Bool)

(assert (= bs!94790 d!226443))

(declare-fun m!928887 () Bool)

(assert (=> bs!94790 m!928887))

(assert (=> d!226285 d!226443))

(assert (=> d!226285 d!226313))

(declare-fun d!226445 () Bool)

(assert (=> d!226445 (= (inv!9323 x!145818) (isBalanced!673 (c!119115 x!145818)))))

(declare-fun bs!94791 () Bool)

(assert (= bs!94791 d!226445))

(declare-fun m!928889 () Bool)

(assert (=> bs!94791 m!928889))

(assert (=> d!226285 d!226445))

(assert (=> d!226285 d!226327))

(declare-fun d!226447 () Bool)

(declare-fun res!293888 () Bool)

(declare-fun e!410112 () Bool)

(assert (=> d!226447 (=> res!293888 e!410112)))

(assert (=> d!226447 (= res!293888 ((_ is Nil!7256) lt!282194))))

(assert (=> d!226447 (= (noDuplicateTag!516 Lexer!1283 lt!282194 Nil!7258) e!410112)))

(declare-fun b!662607 () Bool)

(declare-fun e!410113 () Bool)

(assert (=> b!662607 (= e!410112 e!410113)))

(declare-fun res!293889 () Bool)

(assert (=> b!662607 (=> (not res!293889) (not e!410113))))

(declare-fun contains!1557 (List!7272 String!9255) Bool)

(assert (=> b!662607 (= res!293889 (not (contains!1557 Nil!7258 (tag!1731 (h!12657 lt!282194)))))))

(declare-fun b!662608 () Bool)

(assert (=> b!662608 (= e!410113 (noDuplicateTag!516 Lexer!1283 (t!86503 lt!282194) (Cons!7258 (tag!1731 (h!12657 lt!282194)) Nil!7258)))))

(assert (= (and d!226447 (not res!293888)) b!662607))

(assert (= (and b!662607 res!293889) b!662608))

(declare-fun m!928891 () Bool)

(assert (=> b!662607 m!928891))

(declare-fun m!928893 () Bool)

(assert (=> b!662608 m!928893))

(assert (=> b!662385 d!226447))

(declare-fun d!226449 () Bool)

(declare-fun res!293896 () Bool)

(declare-fun e!410118 () Bool)

(assert (=> d!226449 (=> (not res!293896) (not e!410118))))

(declare-fun valid!597 (MutableMap!673) Bool)

(assert (=> d!226449 (= res!293896 (valid!597 (cache!1060 cacheDown!348)))))

(assert (=> d!226449 (= (validCacheMapDown!51 (cache!1060 cacheDown!348)) e!410118)))

(declare-fun b!662615 () Bool)

(declare-fun res!293897 () Bool)

(assert (=> b!662615 (=> (not res!293897) (not e!410118))))

(declare-fun invariantList!121 (List!7268) Bool)

(declare-datatypes ((ListMap!291 0))(
  ( (ListMap!292 (toList!483 List!7268)) )
))
(declare-fun map!1614 (MutableMap!673) ListMap!291)

(assert (=> b!662615 (= res!293897 (invariantList!121 (toList!483 (map!1614 (cache!1060 cacheDown!348)))))))

(declare-fun b!662616 () Bool)

(declare-fun lambda!20597 () Int)

(declare-fun forall!1920 (List!7268 Int) Bool)

(assert (=> b!662616 (= e!410118 (forall!1920 (toList!483 (map!1614 (cache!1060 cacheDown!348))) lambda!20597))))

(assert (= (and d!226449 res!293896) b!662615))

(assert (= (and b!662615 res!293897) b!662616))

(declare-fun m!928896 () Bool)

(assert (=> d!226449 m!928896))

(declare-fun m!928898 () Bool)

(assert (=> b!662615 m!928898))

(declare-fun m!928900 () Bool)

(assert (=> b!662615 m!928900))

(assert (=> b!662616 m!928898))

(declare-fun m!928902 () Bool)

(assert (=> b!662616 m!928902))

(assert (=> b!662316 d!226449))

(declare-fun bs!94792 () Bool)

(declare-fun d!226451 () Bool)

(assert (= bs!94792 (and d!226451 d!226351)))

(declare-fun lambda!20598 () Int)

(assert (=> bs!94792 (= lambda!20598 lambda!20574)))

(declare-fun bs!94793 () Bool)

(assert (= bs!94793 (and d!226451 d!226415)))

(assert (=> bs!94793 (= lambda!20598 lambda!20582)))

(declare-fun bs!94794 () Bool)

(assert (= bs!94794 (and d!226451 d!226371)))

(assert (=> bs!94794 (= lambda!20598 lambda!20578)))

(declare-fun bs!94795 () Bool)

(assert (= bs!94795 (and d!226451 d!226429)))

(assert (=> bs!94795 (= lambda!20598 lambda!20588)))

(declare-fun bs!94796 () Bool)

(assert (= bs!94796 (and d!226451 d!226347)))

(assert (=> bs!94796 (= lambda!20598 lambda!20572)))

(declare-fun bs!94797 () Bool)

(assert (= bs!94797 (and d!226451 d!226401)))

(assert (=> bs!94797 (= lambda!20598 lambda!20580)))

(declare-fun bs!94798 () Bool)

(assert (= bs!94798 (and d!226451 d!226365)))

(assert (=> bs!94798 (= lambda!20598 lambda!20577)))

(declare-fun bs!94799 () Bool)

(assert (= bs!94799 (and d!226451 d!226403)))

(assert (=> bs!94799 (= lambda!20598 lambda!20581)))

(declare-fun bs!94800 () Bool)

(assert (= bs!94800 (and d!226451 d!226417)))

(assert (=> bs!94800 (= lambda!20598 lambda!20583)))

(declare-fun bs!94801 () Bool)

(assert (= bs!94801 (and d!226451 d!226363)))

(assert (=> bs!94801 (= lambda!20598 lambda!20576)))

(declare-fun bs!94802 () Bool)

(assert (= bs!94802 (and d!226451 d!226373)))

(assert (=> bs!94802 (= lambda!20598 lambda!20579)))

(declare-fun bs!94803 () Bool)

(assert (= bs!94803 (and d!226451 d!226353)))

(assert (=> bs!94803 (= lambda!20598 lambda!20575)))

(declare-fun bs!94804 () Bool)

(assert (= bs!94804 (and d!226451 d!226425)))

(assert (=> bs!94804 (= lambda!20598 lambda!20587)))

(assert (=> d!226451 (= (inv!9324 (_2!4175 (_1!4176 (h!12655 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))))) (forall!1917 (exprs!717 (_2!4175 (_1!4176 (h!12655 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348)))))))))) lambda!20598))))

(declare-fun bs!94805 () Bool)

(assert (= bs!94805 d!226451))

(declare-fun m!928904 () Bool)

(assert (=> bs!94805 m!928904))

(assert (=> b!662412 d!226451))

(declare-fun b!662620 () Bool)

(declare-fun e!410120 () List!7269)

(assert (=> b!662620 (= e!410120 (++!1921 (list!3061 (left!5867 (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))) (list!3061 (right!6197 (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))))

(declare-fun b!662617 () Bool)

(declare-fun e!410119 () List!7269)

(assert (=> b!662617 (= e!410119 Nil!7255)))

(declare-fun d!226453 () Bool)

(declare-fun c!119196 () Bool)

(assert (=> d!226453 (= c!119196 ((_ is Empty!2579) (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(assert (=> d!226453 (= (list!3061 (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))) e!410119)))

(declare-fun b!662618 () Bool)

(assert (=> b!662618 (= e!410119 e!410120)))

(declare-fun c!119197 () Bool)

(assert (=> b!662618 (= c!119197 ((_ is Leaf!3830) (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816)))))))

(declare-fun b!662619 () Bool)

(assert (=> b!662619 (= e!410120 (list!3062 (xs!5228 (c!119115 (toCharacters!4 KeywordValueInjection!63 (toValue!11 KeywordValueInjection!63 x!145816))))))))

(assert (= (and d!226453 c!119196) b!662617))

(assert (= (and d!226453 (not c!119196)) b!662618))

(assert (= (and b!662618 c!119197) b!662619))

(assert (= (and b!662618 (not c!119197)) b!662620))

(declare-fun m!928906 () Bool)

(assert (=> b!662620 m!928906))

(declare-fun m!928908 () Bool)

(assert (=> b!662620 m!928908))

(assert (=> b!662620 m!928906))

(assert (=> b!662620 m!928908))

(declare-fun m!928910 () Bool)

(assert (=> b!662620 m!928910))

(declare-fun m!928912 () Bool)

(assert (=> b!662619 m!928912))

(assert (=> d!226321 d!226453))

(declare-fun bs!94806 () Bool)

(declare-fun d!226455 () Bool)

(assert (= bs!94806 (and d!226455 d!226351)))

(declare-fun lambda!20599 () Int)

(assert (=> bs!94806 (= lambda!20599 lambda!20574)))

(declare-fun bs!94807 () Bool)

(assert (= bs!94807 (and d!226455 d!226415)))

(assert (=> bs!94807 (= lambda!20599 lambda!20582)))

(declare-fun bs!94808 () Bool)

(assert (= bs!94808 (and d!226455 d!226371)))

(assert (=> bs!94808 (= lambda!20599 lambda!20578)))

(declare-fun bs!94809 () Bool)

(assert (= bs!94809 (and d!226455 d!226429)))

(assert (=> bs!94809 (= lambda!20599 lambda!20588)))

(declare-fun bs!94810 () Bool)

(assert (= bs!94810 (and d!226455 d!226347)))

(assert (=> bs!94810 (= lambda!20599 lambda!20572)))

(declare-fun bs!94811 () Bool)

(assert (= bs!94811 (and d!226455 d!226451)))

(assert (=> bs!94811 (= lambda!20599 lambda!20598)))

(declare-fun bs!94812 () Bool)

(assert (= bs!94812 (and d!226455 d!226401)))

(assert (=> bs!94812 (= lambda!20599 lambda!20580)))

(declare-fun bs!94813 () Bool)

(assert (= bs!94813 (and d!226455 d!226365)))

(assert (=> bs!94813 (= lambda!20599 lambda!20577)))

(declare-fun bs!94814 () Bool)

(assert (= bs!94814 (and d!226455 d!226403)))

(assert (=> bs!94814 (= lambda!20599 lambda!20581)))

(declare-fun bs!94815 () Bool)

(assert (= bs!94815 (and d!226455 d!226417)))

(assert (=> bs!94815 (= lambda!20599 lambda!20583)))

(declare-fun bs!94816 () Bool)

(assert (= bs!94816 (and d!226455 d!226363)))

(assert (=> bs!94816 (= lambda!20599 lambda!20576)))

(declare-fun bs!94817 () Bool)

(assert (= bs!94817 (and d!226455 d!226373)))

(assert (=> bs!94817 (= lambda!20599 lambda!20579)))

(declare-fun bs!94818 () Bool)

(assert (= bs!94818 (and d!226455 d!226353)))

(assert (=> bs!94818 (= lambda!20599 lambda!20575)))

(declare-fun bs!94819 () Bool)

(assert (= bs!94819 (and d!226455 d!226425)))

(assert (=> bs!94819 (= lambda!20599 lambda!20587)))

(assert (=> d!226455 (= (inv!9324 setElem!3184) (forall!1917 (exprs!717 setElem!3184) lambda!20599))))

(declare-fun bs!94820 () Bool)

(assert (= bs!94820 d!226455))

(declare-fun m!928914 () Bool)

(assert (=> bs!94820 m!928914))

(assert (=> setNonEmpty!3185 d!226455))

(declare-fun d!226457 () Bool)

(declare-fun c!119198 () Bool)

(assert (=> d!226457 (= c!119198 ((_ is Node!2579) (c!119115 x!145816)))))

(declare-fun e!410121 () Bool)

(assert (=> d!226457 (= (inv!9322 (c!119115 x!145816)) e!410121)))

(declare-fun b!662621 () Bool)

(assert (=> b!662621 (= e!410121 (inv!9325 (c!119115 x!145816)))))

(declare-fun b!662622 () Bool)

(declare-fun e!410122 () Bool)

(assert (=> b!662622 (= e!410121 e!410122)))

(declare-fun res!293898 () Bool)

(assert (=> b!662622 (= res!293898 (not ((_ is Leaf!3830) (c!119115 x!145816))))))

(assert (=> b!662622 (=> res!293898 e!410122)))

(declare-fun b!662623 () Bool)

(assert (=> b!662623 (= e!410122 (inv!9326 (c!119115 x!145816)))))

(assert (= (and d!226457 c!119198) b!662621))

(assert (= (and d!226457 (not c!119198)) b!662622))

(assert (= (and b!662622 (not res!293898)) b!662623))

(declare-fun m!928916 () Bool)

(assert (=> b!662621 m!928916))

(declare-fun m!928918 () Bool)

(assert (=> b!662623 m!928918))

(assert (=> b!662339 d!226457))

(declare-fun b!662636 () Bool)

(declare-fun res!293916 () Bool)

(declare-fun e!410127 () Bool)

(assert (=> b!662636 (=> (not res!293916) (not e!410127))))

(declare-fun height!307 (Conc!2579) Int)

(assert (=> b!662636 (= res!293916 (<= (- (height!307 (left!5867 (c!119115 lt!282222))) (height!307 (right!6197 (c!119115 lt!282222)))) 1))))

(declare-fun b!662637 () Bool)

(declare-fun res!293914 () Bool)

(assert (=> b!662637 (=> (not res!293914) (not e!410127))))

(assert (=> b!662637 (= res!293914 (isBalanced!673 (right!6197 (c!119115 lt!282222))))))

(declare-fun b!662638 () Bool)

(declare-fun isEmpty!4811 (Conc!2579) Bool)

(assert (=> b!662638 (= e!410127 (not (isEmpty!4811 (right!6197 (c!119115 lt!282222)))))))

(declare-fun b!662639 () Bool)

(declare-fun res!293911 () Bool)

(assert (=> b!662639 (=> (not res!293911) (not e!410127))))

(assert (=> b!662639 (= res!293911 (not (isEmpty!4811 (left!5867 (c!119115 lt!282222)))))))

(declare-fun d!226459 () Bool)

(declare-fun res!293915 () Bool)

(declare-fun e!410128 () Bool)

(assert (=> d!226459 (=> res!293915 e!410128)))

(assert (=> d!226459 (= res!293915 (not ((_ is Node!2579) (c!119115 lt!282222))))))

(assert (=> d!226459 (= (isBalanced!673 (c!119115 lt!282222)) e!410128)))

(declare-fun b!662640 () Bool)

(declare-fun res!293912 () Bool)

(assert (=> b!662640 (=> (not res!293912) (not e!410127))))

(assert (=> b!662640 (= res!293912 (isBalanced!673 (left!5867 (c!119115 lt!282222))))))

(declare-fun b!662641 () Bool)

(assert (=> b!662641 (= e!410128 e!410127)))

(declare-fun res!293913 () Bool)

(assert (=> b!662641 (=> (not res!293913) (not e!410127))))

(assert (=> b!662641 (= res!293913 (<= (- 1) (- (height!307 (left!5867 (c!119115 lt!282222))) (height!307 (right!6197 (c!119115 lt!282222))))))))

(assert (= (and d!226459 (not res!293915)) b!662641))

(assert (= (and b!662641 res!293913) b!662636))

(assert (= (and b!662636 res!293916) b!662640))

(assert (= (and b!662640 res!293912) b!662637))

(assert (= (and b!662637 res!293914) b!662639))

(assert (= (and b!662639 res!293911) b!662638))

(declare-fun m!928920 () Bool)

(assert (=> b!662641 m!928920))

(declare-fun m!928922 () Bool)

(assert (=> b!662641 m!928922))

(declare-fun m!928924 () Bool)

(assert (=> b!662637 m!928924))

(declare-fun m!928926 () Bool)

(assert (=> b!662638 m!928926))

(declare-fun m!928928 () Bool)

(assert (=> b!662639 m!928928))

(assert (=> b!662636 m!928920))

(assert (=> b!662636 m!928922))

(declare-fun m!928930 () Bool)

(assert (=> b!662640 m!928930))

(assert (=> b!662370 d!226459))

(declare-fun bs!94821 () Bool)

(declare-fun d!226461 () Bool)

(assert (= bs!94821 (and d!226461 d!226351)))

(declare-fun lambda!20600 () Int)

(assert (=> bs!94821 (= lambda!20600 lambda!20574)))

(declare-fun bs!94822 () Bool)

(assert (= bs!94822 (and d!226461 d!226415)))

(assert (=> bs!94822 (= lambda!20600 lambda!20582)))

(declare-fun bs!94823 () Bool)

(assert (= bs!94823 (and d!226461 d!226371)))

(assert (=> bs!94823 (= lambda!20600 lambda!20578)))

(declare-fun bs!94824 () Bool)

(assert (= bs!94824 (and d!226461 d!226429)))

(assert (=> bs!94824 (= lambda!20600 lambda!20588)))

(declare-fun bs!94825 () Bool)

(assert (= bs!94825 (and d!226461 d!226347)))

(assert (=> bs!94825 (= lambda!20600 lambda!20572)))

(declare-fun bs!94826 () Bool)

(assert (= bs!94826 (and d!226461 d!226451)))

(assert (=> bs!94826 (= lambda!20600 lambda!20598)))

(declare-fun bs!94827 () Bool)

(assert (= bs!94827 (and d!226461 d!226401)))

(assert (=> bs!94827 (= lambda!20600 lambda!20580)))

(declare-fun bs!94828 () Bool)

(assert (= bs!94828 (and d!226461 d!226365)))

(assert (=> bs!94828 (= lambda!20600 lambda!20577)))

(declare-fun bs!94829 () Bool)

(assert (= bs!94829 (and d!226461 d!226403)))

(assert (=> bs!94829 (= lambda!20600 lambda!20581)))

(declare-fun bs!94830 () Bool)

(assert (= bs!94830 (and d!226461 d!226455)))

(assert (=> bs!94830 (= lambda!20600 lambda!20599)))

(declare-fun bs!94831 () Bool)

(assert (= bs!94831 (and d!226461 d!226417)))

(assert (=> bs!94831 (= lambda!20600 lambda!20583)))

(declare-fun bs!94832 () Bool)

(assert (= bs!94832 (and d!226461 d!226363)))

(assert (=> bs!94832 (= lambda!20600 lambda!20576)))

(declare-fun bs!94833 () Bool)

(assert (= bs!94833 (and d!226461 d!226373)))

(assert (=> bs!94833 (= lambda!20600 lambda!20579)))

(declare-fun bs!94834 () Bool)

(assert (= bs!94834 (and d!226461 d!226353)))

(assert (=> bs!94834 (= lambda!20600 lambda!20575)))

(declare-fun bs!94835 () Bool)

(assert (= bs!94835 (and d!226461 d!226425)))

(assert (=> bs!94835 (= lambda!20600 lambda!20587)))

(assert (=> d!226461 (= (inv!9324 (_1!4173 (_1!4174 (h!12654 mapDefault!2776)))) (forall!1917 (exprs!717 (_1!4173 (_1!4174 (h!12654 mapDefault!2776)))) lambda!20600))))

(declare-fun bs!94836 () Bool)

(assert (= bs!94836 d!226461))

(declare-fun m!928932 () Bool)

(assert (=> bs!94836 m!928932))

(assert (=> b!662417 d!226461))

(declare-fun bs!94837 () Bool)

(declare-fun d!226463 () Bool)

(assert (= bs!94837 (and d!226463 d!226351)))

(declare-fun lambda!20601 () Int)

(assert (=> bs!94837 (= lambda!20601 lambda!20574)))

(declare-fun bs!94838 () Bool)

(assert (= bs!94838 (and d!226463 d!226415)))

(assert (=> bs!94838 (= lambda!20601 lambda!20582)))

(declare-fun bs!94839 () Bool)

(assert (= bs!94839 (and d!226463 d!226371)))

(assert (=> bs!94839 (= lambda!20601 lambda!20578)))

(declare-fun bs!94840 () Bool)

(assert (= bs!94840 (and d!226463 d!226429)))

(assert (=> bs!94840 (= lambda!20601 lambda!20588)))

(declare-fun bs!94841 () Bool)

(assert (= bs!94841 (and d!226463 d!226347)))

(assert (=> bs!94841 (= lambda!20601 lambda!20572)))

(declare-fun bs!94842 () Bool)

(assert (= bs!94842 (and d!226463 d!226401)))

(assert (=> bs!94842 (= lambda!20601 lambda!20580)))

(declare-fun bs!94843 () Bool)

(assert (= bs!94843 (and d!226463 d!226365)))

(assert (=> bs!94843 (= lambda!20601 lambda!20577)))

(declare-fun bs!94844 () Bool)

(assert (= bs!94844 (and d!226463 d!226403)))

(assert (=> bs!94844 (= lambda!20601 lambda!20581)))

(declare-fun bs!94845 () Bool)

(assert (= bs!94845 (and d!226463 d!226455)))

(assert (=> bs!94845 (= lambda!20601 lambda!20599)))

(declare-fun bs!94846 () Bool)

(assert (= bs!94846 (and d!226463 d!226417)))

(assert (=> bs!94846 (= lambda!20601 lambda!20583)))

(declare-fun bs!94847 () Bool)

(assert (= bs!94847 (and d!226463 d!226363)))

(assert (=> bs!94847 (= lambda!20601 lambda!20576)))

(declare-fun bs!94848 () Bool)

(assert (= bs!94848 (and d!226463 d!226373)))

(assert (=> bs!94848 (= lambda!20601 lambda!20579)))

(declare-fun bs!94849 () Bool)

(assert (= bs!94849 (and d!226463 d!226353)))

(assert (=> bs!94849 (= lambda!20601 lambda!20575)))

(declare-fun bs!94850 () Bool)

(assert (= bs!94850 (and d!226463 d!226425)))

(assert (=> bs!94850 (= lambda!20601 lambda!20587)))

(declare-fun bs!94851 () Bool)

(assert (= bs!94851 (and d!226463 d!226461)))

(assert (=> bs!94851 (= lambda!20601 lambda!20600)))

(declare-fun bs!94852 () Bool)

(assert (= bs!94852 (and d!226463 d!226451)))

(assert (=> bs!94852 (= lambda!20601 lambda!20598)))

(assert (=> d!226463 (= (inv!9324 (_2!4175 (_1!4176 (h!12655 mapDefault!2783)))) (forall!1917 (exprs!717 (_2!4175 (_1!4176 (h!12655 mapDefault!2783)))) lambda!20601))))

(declare-fun bs!94853 () Bool)

(assert (= bs!94853 d!226463))

(declare-fun m!928934 () Bool)

(assert (=> bs!94853 m!928934))

(assert (=> b!662406 d!226463))

(declare-fun bs!94854 () Bool)

(declare-fun d!226465 () Bool)

(assert (= bs!94854 (and d!226465 d!226351)))

(declare-fun lambda!20602 () Int)

(assert (=> bs!94854 (= lambda!20602 lambda!20574)))

(declare-fun bs!94855 () Bool)

(assert (= bs!94855 (and d!226465 d!226415)))

(assert (=> bs!94855 (= lambda!20602 lambda!20582)))

(declare-fun bs!94856 () Bool)

(assert (= bs!94856 (and d!226465 d!226371)))

(assert (=> bs!94856 (= lambda!20602 lambda!20578)))

(declare-fun bs!94857 () Bool)

(assert (= bs!94857 (and d!226465 d!226429)))

(assert (=> bs!94857 (= lambda!20602 lambda!20588)))

(declare-fun bs!94858 () Bool)

(assert (= bs!94858 (and d!226465 d!226463)))

(assert (=> bs!94858 (= lambda!20602 lambda!20601)))

(declare-fun bs!94859 () Bool)

(assert (= bs!94859 (and d!226465 d!226347)))

(assert (=> bs!94859 (= lambda!20602 lambda!20572)))

(declare-fun bs!94860 () Bool)

(assert (= bs!94860 (and d!226465 d!226401)))

(assert (=> bs!94860 (= lambda!20602 lambda!20580)))

(declare-fun bs!94861 () Bool)

(assert (= bs!94861 (and d!226465 d!226365)))

(assert (=> bs!94861 (= lambda!20602 lambda!20577)))

(declare-fun bs!94862 () Bool)

(assert (= bs!94862 (and d!226465 d!226403)))

(assert (=> bs!94862 (= lambda!20602 lambda!20581)))

(declare-fun bs!94863 () Bool)

(assert (= bs!94863 (and d!226465 d!226455)))

(assert (=> bs!94863 (= lambda!20602 lambda!20599)))

(declare-fun bs!94864 () Bool)

(assert (= bs!94864 (and d!226465 d!226417)))

(assert (=> bs!94864 (= lambda!20602 lambda!20583)))

(declare-fun bs!94865 () Bool)

(assert (= bs!94865 (and d!226465 d!226363)))

(assert (=> bs!94865 (= lambda!20602 lambda!20576)))

(declare-fun bs!94866 () Bool)

(assert (= bs!94866 (and d!226465 d!226373)))

(assert (=> bs!94866 (= lambda!20602 lambda!20579)))

(declare-fun bs!94867 () Bool)

(assert (= bs!94867 (and d!226465 d!226353)))

(assert (=> bs!94867 (= lambda!20602 lambda!20575)))

(declare-fun bs!94868 () Bool)

(assert (= bs!94868 (and d!226465 d!226425)))

(assert (=> bs!94868 (= lambda!20602 lambda!20587)))

(declare-fun bs!94869 () Bool)

(assert (= bs!94869 (and d!226465 d!226461)))

(assert (=> bs!94869 (= lambda!20602 lambda!20600)))

(declare-fun bs!94870 () Bool)

(assert (= bs!94870 (and d!226465 d!226451)))

(assert (=> bs!94870 (= lambda!20602 lambda!20598)))

(assert (=> d!226465 (= (inv!9324 setElem!3191) (forall!1917 (exprs!717 setElem!3191) lambda!20602))))

(declare-fun bs!94871 () Bool)

(assert (= bs!94871 d!226465))

(declare-fun m!928936 () Bool)

(assert (=> bs!94871 m!928936))

(assert (=> setNonEmpty!3191 d!226465))

(declare-fun d!226467 () Bool)

(declare-fun lt!282282 () List!7269)

(assert (=> d!226467 (= lt!282282 (list!3060 x!145818))))

(assert (=> d!226467 (= lt!282282 (efficientList!85 (c!119115 x!145818) (efficientList$default$2!28 (c!119115 x!145818))))))

(assert (=> d!226467 (= (efficientList!84 x!145818) lt!282282)))

(declare-fun bs!94872 () Bool)

(assert (= bs!94872 d!226467))

(assert (=> bs!94872 m!928509))

(declare-fun m!928938 () Bool)

(assert (=> bs!94872 m!928938))

(assert (=> bs!94872 m!928938))

(declare-fun m!928940 () Bool)

(assert (=> bs!94872 m!928940))

(assert (=> d!226317 d!226467))

(declare-fun d!226469 () Bool)

(declare-fun res!293921 () Bool)

(declare-fun e!410131 () Bool)

(assert (=> d!226469 (=> (not res!293921) (not e!410131))))

(declare-fun valid!598 (MutableMap!672) Bool)

(assert (=> d!226469 (= res!293921 (valid!598 (cache!1059 cacheUp!335)))))

(assert (=> d!226469 (= (validCacheMapUp!51 (cache!1059 cacheUp!335)) e!410131)))

(declare-fun b!662646 () Bool)

(declare-fun res!293922 () Bool)

(assert (=> b!662646 (=> (not res!293922) (not e!410131))))

(declare-fun invariantList!122 (List!7267) Bool)

(declare-datatypes ((ListMap!293 0))(
  ( (ListMap!294 (toList!484 List!7267)) )
))
(declare-fun map!1615 (MutableMap!672) ListMap!293)

(assert (=> b!662646 (= res!293922 (invariantList!122 (toList!484 (map!1615 (cache!1059 cacheUp!335)))))))

(declare-fun b!662647 () Bool)

(declare-fun lambda!20605 () Int)

(declare-fun forall!1921 (List!7267 Int) Bool)

(assert (=> b!662647 (= e!410131 (forall!1921 (toList!484 (map!1615 (cache!1059 cacheUp!335))) lambda!20605))))

(assert (= (and d!226469 res!293921) b!662646))

(assert (= (and b!662646 res!293922) b!662647))

(declare-fun m!928943 () Bool)

(assert (=> d!226469 m!928943))

(declare-fun m!928945 () Bool)

(assert (=> b!662646 m!928945))

(declare-fun m!928947 () Bool)

(assert (=> b!662646 m!928947))

(assert (=> b!662647 m!928945))

(declare-fun m!928949 () Bool)

(assert (=> b!662647 m!928949))

(assert (=> b!662313 d!226469))

(declare-fun bs!94873 () Bool)

(declare-fun d!226471 () Bool)

(assert (= bs!94873 (and d!226471 d!226351)))

(declare-fun lambda!20606 () Int)

(assert (=> bs!94873 (= lambda!20606 lambda!20574)))

(declare-fun bs!94874 () Bool)

(assert (= bs!94874 (and d!226471 d!226415)))

(assert (=> bs!94874 (= lambda!20606 lambda!20582)))

(declare-fun bs!94875 () Bool)

(assert (= bs!94875 (and d!226471 d!226371)))

(assert (=> bs!94875 (= lambda!20606 lambda!20578)))

(declare-fun bs!94876 () Bool)

(assert (= bs!94876 (and d!226471 d!226429)))

(assert (=> bs!94876 (= lambda!20606 lambda!20588)))

(declare-fun bs!94877 () Bool)

(assert (= bs!94877 (and d!226471 d!226465)))

(assert (=> bs!94877 (= lambda!20606 lambda!20602)))

(declare-fun bs!94878 () Bool)

(assert (= bs!94878 (and d!226471 d!226463)))

(assert (=> bs!94878 (= lambda!20606 lambda!20601)))

(declare-fun bs!94879 () Bool)

(assert (= bs!94879 (and d!226471 d!226347)))

(assert (=> bs!94879 (= lambda!20606 lambda!20572)))

(declare-fun bs!94880 () Bool)

(assert (= bs!94880 (and d!226471 d!226401)))

(assert (=> bs!94880 (= lambda!20606 lambda!20580)))

(declare-fun bs!94881 () Bool)

(assert (= bs!94881 (and d!226471 d!226365)))

(assert (=> bs!94881 (= lambda!20606 lambda!20577)))

(declare-fun bs!94882 () Bool)

(assert (= bs!94882 (and d!226471 d!226403)))

(assert (=> bs!94882 (= lambda!20606 lambda!20581)))

(declare-fun bs!94883 () Bool)

(assert (= bs!94883 (and d!226471 d!226455)))

(assert (=> bs!94883 (= lambda!20606 lambda!20599)))

(declare-fun bs!94884 () Bool)

(assert (= bs!94884 (and d!226471 d!226417)))

(assert (=> bs!94884 (= lambda!20606 lambda!20583)))

(declare-fun bs!94885 () Bool)

(assert (= bs!94885 (and d!226471 d!226363)))

(assert (=> bs!94885 (= lambda!20606 lambda!20576)))

(declare-fun bs!94886 () Bool)

(assert (= bs!94886 (and d!226471 d!226373)))

(assert (=> bs!94886 (= lambda!20606 lambda!20579)))

(declare-fun bs!94887 () Bool)

(assert (= bs!94887 (and d!226471 d!226353)))

(assert (=> bs!94887 (= lambda!20606 lambda!20575)))

(declare-fun bs!94888 () Bool)

(assert (= bs!94888 (and d!226471 d!226425)))

(assert (=> bs!94888 (= lambda!20606 lambda!20587)))

(declare-fun bs!94889 () Bool)

(assert (= bs!94889 (and d!226471 d!226461)))

(assert (=> bs!94889 (= lambda!20606 lambda!20600)))

(declare-fun bs!94890 () Bool)

(assert (= bs!94890 (and d!226471 d!226451)))

(assert (=> bs!94890 (= lambda!20606 lambda!20598)))

(assert (=> d!226471 (= (inv!9324 (_2!4175 (_1!4176 (h!12655 mapValue!2777)))) (forall!1917 (exprs!717 (_2!4175 (_1!4176 (h!12655 mapValue!2777)))) lambda!20606))))

(declare-fun bs!94891 () Bool)

(assert (= bs!94891 d!226471))

(declare-fun m!928951 () Bool)

(assert (=> bs!94891 m!928951))

(assert (=> b!662411 d!226471))

(declare-fun bs!94892 () Bool)

(declare-fun d!226473 () Bool)

(assert (= bs!94892 (and d!226473 d!226351)))

(declare-fun lambda!20607 () Int)

(assert (=> bs!94892 (= lambda!20607 lambda!20574)))

(declare-fun bs!94893 () Bool)

(assert (= bs!94893 (and d!226473 d!226415)))

(assert (=> bs!94893 (= lambda!20607 lambda!20582)))

(declare-fun bs!94894 () Bool)

(assert (= bs!94894 (and d!226473 d!226371)))

(assert (=> bs!94894 (= lambda!20607 lambda!20578)))

(declare-fun bs!94895 () Bool)

(assert (= bs!94895 (and d!226473 d!226429)))

(assert (=> bs!94895 (= lambda!20607 lambda!20588)))

(declare-fun bs!94896 () Bool)

(assert (= bs!94896 (and d!226473 d!226465)))

(assert (=> bs!94896 (= lambda!20607 lambda!20602)))

(declare-fun bs!94897 () Bool)

(assert (= bs!94897 (and d!226473 d!226463)))

(assert (=> bs!94897 (= lambda!20607 lambda!20601)))

(declare-fun bs!94898 () Bool)

(assert (= bs!94898 (and d!226473 d!226347)))

(assert (=> bs!94898 (= lambda!20607 lambda!20572)))

(declare-fun bs!94899 () Bool)

(assert (= bs!94899 (and d!226473 d!226401)))

(assert (=> bs!94899 (= lambda!20607 lambda!20580)))

(declare-fun bs!94900 () Bool)

(assert (= bs!94900 (and d!226473 d!226365)))

(assert (=> bs!94900 (= lambda!20607 lambda!20577)))

(declare-fun bs!94901 () Bool)

(assert (= bs!94901 (and d!226473 d!226403)))

(assert (=> bs!94901 (= lambda!20607 lambda!20581)))

(declare-fun bs!94902 () Bool)

(assert (= bs!94902 (and d!226473 d!226455)))

(assert (=> bs!94902 (= lambda!20607 lambda!20599)))

(declare-fun bs!94903 () Bool)

(assert (= bs!94903 (and d!226473 d!226417)))

(assert (=> bs!94903 (= lambda!20607 lambda!20583)))

(declare-fun bs!94904 () Bool)

(assert (= bs!94904 (and d!226473 d!226363)))

(assert (=> bs!94904 (= lambda!20607 lambda!20576)))

(declare-fun bs!94905 () Bool)

(assert (= bs!94905 (and d!226473 d!226373)))

(assert (=> bs!94905 (= lambda!20607 lambda!20579)))

(declare-fun bs!94906 () Bool)

(assert (= bs!94906 (and d!226473 d!226353)))

(assert (=> bs!94906 (= lambda!20607 lambda!20575)))

(declare-fun bs!94907 () Bool)

(assert (= bs!94907 (and d!226473 d!226461)))

(assert (=> bs!94907 (= lambda!20607 lambda!20600)))

(declare-fun bs!94908 () Bool)

(assert (= bs!94908 (and d!226473 d!226451)))

(assert (=> bs!94908 (= lambda!20607 lambda!20598)))

(declare-fun bs!94909 () Bool)

(assert (= bs!94909 (and d!226473 d!226471)))

(assert (=> bs!94909 (= lambda!20607 lambda!20606)))

(declare-fun bs!94910 () Bool)

(assert (= bs!94910 (and d!226473 d!226425)))

(assert (=> bs!94910 (= lambda!20607 lambda!20587)))

(assert (=> d!226473 (= (inv!9324 (_1!4173 (_1!4174 (h!12654 mapDefault!2780)))) (forall!1917 (exprs!717 (_1!4173 (_1!4174 (h!12654 mapDefault!2780)))) lambda!20607))))

(declare-fun bs!94911 () Bool)

(assert (= bs!94911 d!226473))

(declare-fun m!928953 () Bool)

(assert (=> bs!94911 m!928953))

(assert (=> b!662392 d!226473))

(declare-fun b!662651 () Bool)

(declare-fun e!410133 () List!7269)

(assert (=> b!662651 (= e!410133 (++!1921 (list!3061 (left!5867 (c!119115 x!145818))) (list!3061 (right!6197 (c!119115 x!145818)))))))

(declare-fun b!662648 () Bool)

(declare-fun e!410132 () List!7269)

(assert (=> b!662648 (= e!410132 Nil!7255)))

(declare-fun d!226475 () Bool)

(declare-fun c!119199 () Bool)

(assert (=> d!226475 (= c!119199 ((_ is Empty!2579) (c!119115 x!145818)))))

(assert (=> d!226475 (= (list!3061 (c!119115 x!145818)) e!410132)))

(declare-fun b!662649 () Bool)

(assert (=> b!662649 (= e!410132 e!410133)))

(declare-fun c!119200 () Bool)

(assert (=> b!662649 (= c!119200 ((_ is Leaf!3830) (c!119115 x!145818)))))

(declare-fun b!662650 () Bool)

(assert (=> b!662650 (= e!410133 (list!3062 (xs!5228 (c!119115 x!145818))))))

(assert (= (and d!226475 c!119199) b!662648))

(assert (= (and d!226475 (not c!119199)) b!662649))

(assert (= (and b!662649 c!119200) b!662650))

(assert (= (and b!662649 (not c!119200)) b!662651))

(declare-fun m!928955 () Bool)

(assert (=> b!662651 m!928955))

(declare-fun m!928957 () Bool)

(assert (=> b!662651 m!928957))

(assert (=> b!662651 m!928955))

(assert (=> b!662651 m!928957))

(declare-fun m!928959 () Bool)

(assert (=> b!662651 m!928959))

(declare-fun m!928961 () Bool)

(assert (=> b!662650 m!928961))

(assert (=> d!226327 d!226475))

(declare-fun b!662655 () Bool)

(declare-fun e!410135 () List!7269)

(assert (=> b!662655 (= e!410135 (++!1921 (list!3061 (left!5867 (c!119115 x!145816))) (list!3061 (right!6197 (c!119115 x!145816)))))))

(declare-fun b!662652 () Bool)

(declare-fun e!410134 () List!7269)

(assert (=> b!662652 (= e!410134 Nil!7255)))

(declare-fun d!226477 () Bool)

(declare-fun c!119201 () Bool)

(assert (=> d!226477 (= c!119201 ((_ is Empty!2579) (c!119115 x!145816)))))

(assert (=> d!226477 (= (list!3061 (c!119115 x!145816)) e!410134)))

(declare-fun b!662653 () Bool)

(assert (=> b!662653 (= e!410134 e!410135)))

(declare-fun c!119202 () Bool)

(assert (=> b!662653 (= c!119202 ((_ is Leaf!3830) (c!119115 x!145816)))))

(declare-fun b!662654 () Bool)

(assert (=> b!662654 (= e!410135 (list!3062 (xs!5228 (c!119115 x!145816))))))

(assert (= (and d!226477 c!119201) b!662652))

(assert (= (and d!226477 (not c!119201)) b!662653))

(assert (= (and b!662653 c!119202) b!662654))

(assert (= (and b!662653 (not c!119202)) b!662655))

(declare-fun m!928963 () Bool)

(assert (=> b!662655 m!928963))

(declare-fun m!928965 () Bool)

(assert (=> b!662655 m!928965))

(assert (=> b!662655 m!928963))

(assert (=> b!662655 m!928965))

(declare-fun m!928967 () Bool)

(assert (=> b!662655 m!928967))

(declare-fun m!928969 () Bool)

(assert (=> b!662654 m!928969))

(assert (=> d!226323 d!226477))

(declare-fun d!226479 () Bool)

(declare-fun lt!282288 () Bool)

(declare-fun e!410141 () Bool)

(assert (=> d!226479 (= lt!282288 e!410141)))

(declare-fun res!293929 () Bool)

(assert (=> d!226479 (=> (not res!293929) (not e!410141))))

(declare-datatypes ((tuple2!7600 0))(
  ( (tuple2!7601 (_1!4178 BalanceConc!5172) (_2!4178 BalanceConc!5170)) )
))
(declare-fun lex!585 (LexerInterface!1285 List!7270 BalanceConc!5170) tuple2!7600)

(declare-fun print!526 (LexerInterface!1285 BalanceConc!5172) BalanceConc!5170)

(assert (=> d!226479 (= res!293929 (= (list!3058 (_1!4178 (lex!585 Lexer!1283 lt!282194 (print!526 Lexer!1283 (singletonSeq!456 (h!12658 (list!3058 lt!282195))))))) (list!3058 (singletonSeq!456 (h!12658 (list!3058 lt!282195))))))))

(declare-fun e!410140 () Bool)

(assert (=> d!226479 (= lt!282288 e!410140)))

(declare-fun res!293930 () Bool)

(assert (=> d!226479 (=> (not res!293930) (not e!410140))))

(declare-fun lt!282287 () tuple2!7600)

(declare-fun size!5722 (BalanceConc!5172) Int)

(assert (=> d!226479 (= res!293930 (= (size!5722 (_1!4178 lt!282287)) 1))))

(assert (=> d!226479 (= lt!282287 (lex!585 Lexer!1283 lt!282194 (print!526 Lexer!1283 (singletonSeq!456 (h!12658 (list!3058 lt!282195))))))))

(assert (=> d!226479 (not (isEmpty!4807 lt!282194))))

(assert (=> d!226479 (= (rulesProduceIndividualToken!529 Lexer!1283 lt!282194 (h!12658 (list!3058 lt!282195))) lt!282288)))

(declare-fun b!662662 () Bool)

(declare-fun res!293931 () Bool)

(assert (=> b!662662 (=> (not res!293931) (not e!410140))))

(declare-fun apply!1741 (BalanceConc!5172 Int) Token!2660)

(assert (=> b!662662 (= res!293931 (= (apply!1741 (_1!4178 lt!282287) 0) (h!12658 (list!3058 lt!282195))))))

(declare-fun b!662663 () Bool)

(declare-fun isEmpty!4812 (BalanceConc!5170) Bool)

(assert (=> b!662663 (= e!410140 (isEmpty!4812 (_2!4178 lt!282287)))))

(declare-fun b!662664 () Bool)

(assert (=> b!662664 (= e!410141 (isEmpty!4812 (_2!4178 (lex!585 Lexer!1283 lt!282194 (print!526 Lexer!1283 (singletonSeq!456 (h!12658 (list!3058 lt!282195))))))))))

(assert (= (and d!226479 res!293930) b!662662))

(assert (= (and b!662662 res!293931) b!662663))

(assert (= (and d!226479 res!293929) b!662664))

(declare-fun m!928971 () Bool)

(assert (=> d!226479 m!928971))

(declare-fun m!928973 () Bool)

(assert (=> d!226479 m!928973))

(declare-fun m!928975 () Bool)

(assert (=> d!226479 m!928975))

(declare-fun m!928977 () Bool)

(assert (=> d!226479 m!928977))

(declare-fun m!928979 () Bool)

(assert (=> d!226479 m!928979))

(declare-fun m!928981 () Bool)

(assert (=> d!226479 m!928981))

(assert (=> d!226479 m!928441))

(assert (=> d!226479 m!928971))

(assert (=> d!226479 m!928971))

(assert (=> d!226479 m!928977))

(declare-fun m!928983 () Bool)

(assert (=> b!662662 m!928983))

(declare-fun m!928985 () Bool)

(assert (=> b!662663 m!928985))

(assert (=> b!662664 m!928971))

(assert (=> b!662664 m!928971))

(assert (=> b!662664 m!928977))

(assert (=> b!662664 m!928977))

(assert (=> b!662664 m!928979))

(declare-fun m!928987 () Bool)

(assert (=> b!662664 m!928987))

(assert (=> b!662296 d!226479))

(declare-fun d!226481 () Bool)

(declare-fun lt!282294 () tuple3!652)

(assert (=> d!226481 (= (_1!4177 lt!282294) (rulesProduceIndividualToken!529 Lexer!1283 lt!282194 (head!1380 lt!282195)))))

(declare-fun e!410146 () Bool)

(declare-datatypes ((tuple3!654 0))(
  ( (tuple3!655 (_1!4179 tuple2!7600) (_2!4179 CacheUp!332) (_3!378 CacheDown!334)) )
))
(declare-fun lt!282293 () tuple3!654)

(assert (=> d!226481 (= lt!282294 (tuple3!653 e!410146 (_2!4179 lt!282293) (_3!378 lt!282293)))))

(declare-fun res!293937 () Bool)

(assert (=> d!226481 (=> (not res!293937) (not e!410146))))

(declare-fun e!410147 () Bool)

(assert (=> d!226481 (= res!293937 e!410147)))

(declare-fun res!293936 () Bool)

(assert (=> d!226481 (=> (not res!293936) (not e!410147))))

(assert (=> d!226481 (= res!293936 (= (size!5722 (_1!4178 (_1!4179 lt!282293))) 1))))

(declare-fun lexV1Mem!1 (LexerInterface!1285 List!7270 BalanceConc!5170 CacheUp!332 CacheDown!334) tuple3!654)

(assert (=> d!226481 (= lt!282293 (lexV1Mem!1 Lexer!1283 lt!282194 (print!526 Lexer!1283 (singletonSeq!456 (head!1380 lt!282195))) cacheUp!335 cacheDown!348))))

(assert (=> d!226481 (not (isEmpty!4807 lt!282194))))

(assert (=> d!226481 (= (rulesProduceIndividualTokenMem!7 Lexer!1283 lt!282194 (head!1380 lt!282195) cacheUp!335 cacheDown!348) lt!282294)))

(declare-fun b!662669 () Bool)

(assert (=> b!662669 (= e!410147 (= (apply!1741 (_1!4178 (_1!4179 lt!282293)) 0) (head!1380 lt!282195)))))

(declare-fun b!662670 () Bool)

(assert (=> b!662670 (= e!410146 (isEmpty!4812 (_2!4178 (_1!4179 lt!282293))))))

(assert (= (and d!226481 res!293936) b!662669))

(assert (= (and d!226481 res!293937) b!662670))

(assert (=> d!226481 m!928539))

(declare-fun m!928989 () Bool)

(assert (=> d!226481 m!928989))

(assert (=> d!226481 m!928539))

(declare-fun m!928991 () Bool)

(assert (=> d!226481 m!928991))

(assert (=> d!226481 m!928991))

(declare-fun m!928993 () Bool)

(assert (=> d!226481 m!928993))

(assert (=> d!226481 m!928993))

(declare-fun m!928995 () Bool)

(assert (=> d!226481 m!928995))

(declare-fun m!928997 () Bool)

(assert (=> d!226481 m!928997))

(assert (=> d!226481 m!928441))

(declare-fun m!928999 () Bool)

(assert (=> b!662669 m!928999))

(declare-fun m!929001 () Bool)

(assert (=> b!662670 m!929001))

(assert (=> b!662364 d!226481))

(declare-fun d!226483 () Bool)

(declare-fun lt!282297 () Token!2660)

(declare-fun head!1381 (List!7271) Token!2660)

(assert (=> d!226483 (= lt!282297 (head!1381 (list!3058 lt!282195)))))

(declare-fun head!1382 (Conc!2580) Token!2660)

(assert (=> d!226483 (= lt!282297 (head!1382 (c!119116 lt!282195)))))

(assert (=> d!226483 (not (isEmpty!4808 lt!282195))))

(assert (=> d!226483 (= (head!1380 lt!282195) lt!282297)))

(declare-fun bs!94912 () Bool)

(assert (= bs!94912 d!226483))

(assert (=> bs!94912 m!928449))

(assert (=> bs!94912 m!928449))

(declare-fun m!929003 () Bool)

(assert (=> bs!94912 m!929003))

(declare-fun m!929005 () Bool)

(assert (=> bs!94912 m!929005))

(assert (=> bs!94912 m!928537))

(assert (=> b!662364 d!226483))

(declare-fun bs!94913 () Bool)

(declare-fun d!226485 () Bool)

(assert (= bs!94913 (and d!226485 d!226273)))

(declare-fun lambda!20608 () Int)

(assert (=> bs!94913 (= lambda!20608 lambda!20542)))

(declare-fun bs!94914 () Bool)

(assert (= bs!94914 (and d!226485 d!226291)))

(assert (=> bs!94914 (= lambda!20608 lambda!20569)))

(declare-fun bs!94915 () Bool)

(assert (= bs!94915 (and d!226485 d!226349)))

(assert (=> bs!94915 (= lambda!20608 lambda!20573)))

(declare-fun b!662675 () Bool)

(declare-fun e!410151 () Bool)

(assert (=> b!662675 (= e!410151 true)))

(declare-fun b!662674 () Bool)

(declare-fun e!410150 () Bool)

(assert (=> b!662674 (= e!410150 e!410151)))

(declare-fun b!662673 () Bool)

(declare-fun e!410149 () Bool)

(assert (=> b!662673 (= e!410149 e!410150)))

(assert (=> d!226485 e!410149))

(assert (= b!662674 b!662675))

(assert (= b!662673 b!662674))

(assert (= (and d!226485 ((_ is Cons!7256) lt!282194)) b!662673))

(assert (=> b!662675 (< (dynLambda!3820 order!5259 (toValue!2410 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20608))))

(assert (=> b!662675 (< (dynLambda!3822 order!5263 (toChars!2269 (transformation!1469 (h!12657 lt!282194)))) (dynLambda!3821 order!5261 lambda!20608))))

(assert (=> d!226485 true))

(declare-fun lt!282298 () tuple3!652)

(assert (=> d!226485 (= (_1!4177 lt!282298) (forall!1916 (tail!938 lt!282195) lambda!20608))))

(declare-fun e!410148 () tuple3!652)

(assert (=> d!226485 (= lt!282298 e!410148)))

(declare-fun c!119203 () Bool)

(assert (=> d!226485 (= c!119203 (isEmpty!4808 (tail!938 lt!282195)))))

(assert (=> d!226485 (not (isEmpty!4807 lt!282194))))

(assert (=> d!226485 (= (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 (tail!938 lt!282195) (_2!4177 lt!282218) (_3!377 lt!282218)) lt!282298)))

(declare-fun b!662671 () Bool)

(assert (=> b!662671 (= e!410148 (tuple3!653 true (_2!4177 lt!282218) (_3!377 lt!282218)))))

(declare-fun b!662672 () Bool)

(declare-fun lt!282299 () tuple3!652)

(declare-fun lt!282300 () tuple3!652)

(assert (=> b!662672 (= e!410148 (tuple3!653 (and (_1!4177 lt!282299) (_1!4177 lt!282300)) (_2!4177 lt!282300) (_3!377 lt!282300)))))

(assert (=> b!662672 (= lt!282299 (rulesProduceIndividualTokenMem!7 Lexer!1283 lt!282194 (head!1380 (tail!938 lt!282195)) (_2!4177 lt!282218) (_3!377 lt!282218)))))

(assert (=> b!662672 (= lt!282300 (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 (tail!938 (tail!938 lt!282195)) (_2!4177 lt!282299) (_3!377 lt!282299)))))

(assert (= (and d!226485 c!119203) b!662671))

(assert (= (and d!226485 (not c!119203)) b!662672))

(assert (=> d!226485 m!928543))

(declare-fun m!929007 () Bool)

(assert (=> d!226485 m!929007))

(assert (=> d!226485 m!928543))

(declare-fun m!929009 () Bool)

(assert (=> d!226485 m!929009))

(assert (=> d!226485 m!928441))

(assert (=> b!662672 m!928543))

(declare-fun m!929011 () Bool)

(assert (=> b!662672 m!929011))

(assert (=> b!662672 m!929011))

(declare-fun m!929013 () Bool)

(assert (=> b!662672 m!929013))

(assert (=> b!662672 m!928543))

(declare-fun m!929015 () Bool)

(assert (=> b!662672 m!929015))

(assert (=> b!662672 m!929015))

(declare-fun m!929017 () Bool)

(assert (=> b!662672 m!929017))

(assert (=> b!662364 d!226485))

(declare-fun d!226487 () Bool)

(declare-fun e!410154 () Bool)

(assert (=> d!226487 e!410154))

(declare-fun res!293940 () Bool)

(assert (=> d!226487 (=> (not res!293940) (not e!410154))))

(declare-fun tail!939 (Conc!2580) Conc!2580)

(assert (=> d!226487 (= res!293940 (isBalanced!674 (tail!939 (c!119116 lt!282195))))))

(declare-fun lt!282303 () BalanceConc!5172)

(assert (=> d!226487 (= lt!282303 (BalanceConc!5173 (tail!939 (c!119116 lt!282195))))))

(assert (=> d!226487 (not (isEmpty!4808 lt!282195))))

(assert (=> d!226487 (= (tail!938 lt!282195) lt!282303)))

(declare-fun b!662678 () Bool)

(declare-fun tail!940 (List!7271) List!7271)

(assert (=> b!662678 (= e!410154 (= (list!3058 lt!282303) (tail!940 (list!3058 lt!282195))))))

(assert (= (and d!226487 res!293940) b!662678))

(declare-fun m!929019 () Bool)

(assert (=> d!226487 m!929019))

(assert (=> d!226487 m!929019))

(declare-fun m!929021 () Bool)

(assert (=> d!226487 m!929021))

(assert (=> d!226487 m!928537))

(declare-fun m!929023 () Bool)

(assert (=> b!662678 m!929023))

(assert (=> b!662678 m!928449))

(assert (=> b!662678 m!928449))

(declare-fun m!929025 () Bool)

(assert (=> b!662678 m!929025))

(assert (=> b!662364 d!226487))

(declare-fun bs!94916 () Bool)

(declare-fun d!226489 () Bool)

(assert (= bs!94916 (and d!226489 d!226351)))

(declare-fun lambda!20609 () Int)

(assert (=> bs!94916 (= lambda!20609 lambda!20574)))

(declare-fun bs!94917 () Bool)

(assert (= bs!94917 (and d!226489 d!226415)))

(assert (=> bs!94917 (= lambda!20609 lambda!20582)))

(declare-fun bs!94918 () Bool)

(assert (= bs!94918 (and d!226489 d!226371)))

(assert (=> bs!94918 (= lambda!20609 lambda!20578)))

(declare-fun bs!94919 () Bool)

(assert (= bs!94919 (and d!226489 d!226465)))

(assert (=> bs!94919 (= lambda!20609 lambda!20602)))

(declare-fun bs!94920 () Bool)

(assert (= bs!94920 (and d!226489 d!226463)))

(assert (=> bs!94920 (= lambda!20609 lambda!20601)))

(declare-fun bs!94921 () Bool)

(assert (= bs!94921 (and d!226489 d!226347)))

(assert (=> bs!94921 (= lambda!20609 lambda!20572)))

(declare-fun bs!94922 () Bool)

(assert (= bs!94922 (and d!226489 d!226401)))

(assert (=> bs!94922 (= lambda!20609 lambda!20580)))

(declare-fun bs!94923 () Bool)

(assert (= bs!94923 (and d!226489 d!226365)))

(assert (=> bs!94923 (= lambda!20609 lambda!20577)))

(declare-fun bs!94924 () Bool)

(assert (= bs!94924 (and d!226489 d!226403)))

(assert (=> bs!94924 (= lambda!20609 lambda!20581)))

(declare-fun bs!94925 () Bool)

(assert (= bs!94925 (and d!226489 d!226455)))

(assert (=> bs!94925 (= lambda!20609 lambda!20599)))

(declare-fun bs!94926 () Bool)

(assert (= bs!94926 (and d!226489 d!226417)))

(assert (=> bs!94926 (= lambda!20609 lambda!20583)))

(declare-fun bs!94927 () Bool)

(assert (= bs!94927 (and d!226489 d!226363)))

(assert (=> bs!94927 (= lambda!20609 lambda!20576)))

(declare-fun bs!94928 () Bool)

(assert (= bs!94928 (and d!226489 d!226373)))

(assert (=> bs!94928 (= lambda!20609 lambda!20579)))

(declare-fun bs!94929 () Bool)

(assert (= bs!94929 (and d!226489 d!226353)))

(assert (=> bs!94929 (= lambda!20609 lambda!20575)))

(declare-fun bs!94930 () Bool)

(assert (= bs!94930 (and d!226489 d!226429)))

(assert (=> bs!94930 (= lambda!20609 lambda!20588)))

(declare-fun bs!94931 () Bool)

(assert (= bs!94931 (and d!226489 d!226473)))

(assert (=> bs!94931 (= lambda!20609 lambda!20607)))

(declare-fun bs!94932 () Bool)

(assert (= bs!94932 (and d!226489 d!226461)))

(assert (=> bs!94932 (= lambda!20609 lambda!20600)))

(declare-fun bs!94933 () Bool)

(assert (= bs!94933 (and d!226489 d!226451)))

(assert (=> bs!94933 (= lambda!20609 lambda!20598)))

(declare-fun bs!94934 () Bool)

(assert (= bs!94934 (and d!226489 d!226471)))

(assert (=> bs!94934 (= lambda!20609 lambda!20606)))

(declare-fun bs!94935 () Bool)

(assert (= bs!94935 (and d!226489 d!226425)))

(assert (=> bs!94935 (= lambda!20609 lambda!20587)))

(assert (=> d!226489 (= (inv!9324 setElem!3175) (forall!1917 (exprs!717 setElem!3175) lambda!20609))))

(declare-fun bs!94936 () Bool)

(assert (= bs!94936 d!226489))

(declare-fun m!929027 () Bool)

(assert (=> bs!94936 m!929027))

(assert (=> setNonEmpty!3175 d!226489))

(declare-fun bs!94937 () Bool)

(declare-fun d!226491 () Bool)

(assert (= bs!94937 (and d!226491 d!226351)))

(declare-fun lambda!20610 () Int)

(assert (=> bs!94937 (= lambda!20610 lambda!20574)))

(declare-fun bs!94938 () Bool)

(assert (= bs!94938 (and d!226491 d!226415)))

(assert (=> bs!94938 (= lambda!20610 lambda!20582)))

(declare-fun bs!94939 () Bool)

(assert (= bs!94939 (and d!226491 d!226489)))

(assert (=> bs!94939 (= lambda!20610 lambda!20609)))

(declare-fun bs!94940 () Bool)

(assert (= bs!94940 (and d!226491 d!226371)))

(assert (=> bs!94940 (= lambda!20610 lambda!20578)))

(declare-fun bs!94941 () Bool)

(assert (= bs!94941 (and d!226491 d!226465)))

(assert (=> bs!94941 (= lambda!20610 lambda!20602)))

(declare-fun bs!94942 () Bool)

(assert (= bs!94942 (and d!226491 d!226463)))

(assert (=> bs!94942 (= lambda!20610 lambda!20601)))

(declare-fun bs!94943 () Bool)

(assert (= bs!94943 (and d!226491 d!226347)))

(assert (=> bs!94943 (= lambda!20610 lambda!20572)))

(declare-fun bs!94944 () Bool)

(assert (= bs!94944 (and d!226491 d!226401)))

(assert (=> bs!94944 (= lambda!20610 lambda!20580)))

(declare-fun bs!94945 () Bool)

(assert (= bs!94945 (and d!226491 d!226365)))

(assert (=> bs!94945 (= lambda!20610 lambda!20577)))

(declare-fun bs!94946 () Bool)

(assert (= bs!94946 (and d!226491 d!226403)))

(assert (=> bs!94946 (= lambda!20610 lambda!20581)))

(declare-fun bs!94947 () Bool)

(assert (= bs!94947 (and d!226491 d!226455)))

(assert (=> bs!94947 (= lambda!20610 lambda!20599)))

(declare-fun bs!94948 () Bool)

(assert (= bs!94948 (and d!226491 d!226417)))

(assert (=> bs!94948 (= lambda!20610 lambda!20583)))

(declare-fun bs!94949 () Bool)

(assert (= bs!94949 (and d!226491 d!226363)))

(assert (=> bs!94949 (= lambda!20610 lambda!20576)))

(declare-fun bs!94950 () Bool)

(assert (= bs!94950 (and d!226491 d!226373)))

(assert (=> bs!94950 (= lambda!20610 lambda!20579)))

(declare-fun bs!94951 () Bool)

(assert (= bs!94951 (and d!226491 d!226353)))

(assert (=> bs!94951 (= lambda!20610 lambda!20575)))

(declare-fun bs!94952 () Bool)

(assert (= bs!94952 (and d!226491 d!226429)))

(assert (=> bs!94952 (= lambda!20610 lambda!20588)))

(declare-fun bs!94953 () Bool)

(assert (= bs!94953 (and d!226491 d!226473)))

(assert (=> bs!94953 (= lambda!20610 lambda!20607)))

(declare-fun bs!94954 () Bool)

(assert (= bs!94954 (and d!226491 d!226461)))

(assert (=> bs!94954 (= lambda!20610 lambda!20600)))

(declare-fun bs!94955 () Bool)

(assert (= bs!94955 (and d!226491 d!226451)))

(assert (=> bs!94955 (= lambda!20610 lambda!20598)))

(declare-fun bs!94956 () Bool)

(assert (= bs!94956 (and d!226491 d!226471)))

(assert (=> bs!94956 (= lambda!20610 lambda!20606)))

(declare-fun bs!94957 () Bool)

(assert (= bs!94957 (and d!226491 d!226425)))

(assert (=> bs!94957 (= lambda!20610 lambda!20587)))

(assert (=> d!226491 (= (inv!9324 (_2!4175 (_1!4176 (h!12655 mapDefault!2777)))) (forall!1917 (exprs!717 (_2!4175 (_1!4176 (h!12655 mapDefault!2777)))) lambda!20610))))

(declare-fun bs!94958 () Bool)

(assert (= bs!94958 d!226491))

(declare-fun m!929029 () Bool)

(assert (=> bs!94958 m!929029))

(assert (=> b!662416 d!226491))

(declare-fun b!662691 () Bool)

(declare-fun e!410160 () Bool)

(assert (=> b!662691 (= e!410160 (not (isEmpty!4810 (right!6198 (c!119116 lt!282225)))))))

(declare-fun b!662692 () Bool)

(declare-fun e!410159 () Bool)

(assert (=> b!662692 (= e!410159 e!410160)))

(declare-fun res!293956 () Bool)

(assert (=> b!662692 (=> (not res!293956) (not e!410160))))

(declare-fun height!308 (Conc!2580) Int)

(assert (=> b!662692 (= res!293956 (<= (- 1) (- (height!308 (left!5868 (c!119116 lt!282225))) (height!308 (right!6198 (c!119116 lt!282225))))))))

(declare-fun b!662693 () Bool)

(declare-fun res!293955 () Bool)

(assert (=> b!662693 (=> (not res!293955) (not e!410160))))

(assert (=> b!662693 (= res!293955 (not (isEmpty!4810 (left!5868 (c!119116 lt!282225)))))))

(declare-fun b!662694 () Bool)

(declare-fun res!293953 () Bool)

(assert (=> b!662694 (=> (not res!293953) (not e!410160))))

(assert (=> b!662694 (= res!293953 (isBalanced!674 (right!6198 (c!119116 lt!282225))))))

(declare-fun b!662695 () Bool)

(declare-fun res!293957 () Bool)

(assert (=> b!662695 (=> (not res!293957) (not e!410160))))

(assert (=> b!662695 (= res!293957 (isBalanced!674 (left!5868 (c!119116 lt!282225))))))

(declare-fun d!226493 () Bool)

(declare-fun res!293954 () Bool)

(assert (=> d!226493 (=> res!293954 e!410159)))

(assert (=> d!226493 (= res!293954 (not ((_ is Node!2580) (c!119116 lt!282225))))))

(assert (=> d!226493 (= (isBalanced!674 (c!119116 lt!282225)) e!410159)))

(declare-fun b!662696 () Bool)

(declare-fun res!293958 () Bool)

(assert (=> b!662696 (=> (not res!293958) (not e!410160))))

(assert (=> b!662696 (= res!293958 (<= (- (height!308 (left!5868 (c!119116 lt!282225))) (height!308 (right!6198 (c!119116 lt!282225)))) 1))))

(assert (= (and d!226493 (not res!293954)) b!662692))

(assert (= (and b!662692 res!293956) b!662696))

(assert (= (and b!662696 res!293958) b!662695))

(assert (= (and b!662695 res!293957) b!662694))

(assert (= (and b!662694 res!293953) b!662693))

(assert (= (and b!662693 res!293955) b!662691))

(declare-fun m!929031 () Bool)

(assert (=> b!662692 m!929031))

(declare-fun m!929033 () Bool)

(assert (=> b!662692 m!929033))

(assert (=> b!662696 m!929031))

(assert (=> b!662696 m!929033))

(declare-fun m!929035 () Bool)

(assert (=> b!662694 m!929035))

(declare-fun m!929037 () Bool)

(assert (=> b!662695 m!929037))

(declare-fun m!929039 () Bool)

(assert (=> b!662693 m!929039))

(declare-fun m!929041 () Bool)

(assert (=> b!662691 m!929041))

(assert (=> b!662382 d!226493))

(declare-fun bs!94959 () Bool)

(declare-fun d!226495 () Bool)

(assert (= bs!94959 (and d!226495 d!226351)))

(declare-fun lambda!20611 () Int)

(assert (=> bs!94959 (= lambda!20611 lambda!20574)))

(declare-fun bs!94960 () Bool)

(assert (= bs!94960 (and d!226495 d!226415)))

(assert (=> bs!94960 (= lambda!20611 lambda!20582)))

(declare-fun bs!94961 () Bool)

(assert (= bs!94961 (and d!226495 d!226489)))

(assert (=> bs!94961 (= lambda!20611 lambda!20609)))

(declare-fun bs!94962 () Bool)

(assert (= bs!94962 (and d!226495 d!226371)))

(assert (=> bs!94962 (= lambda!20611 lambda!20578)))

(declare-fun bs!94963 () Bool)

(assert (= bs!94963 (and d!226495 d!226465)))

(assert (=> bs!94963 (= lambda!20611 lambda!20602)))

(declare-fun bs!94964 () Bool)

(assert (= bs!94964 (and d!226495 d!226463)))

(assert (=> bs!94964 (= lambda!20611 lambda!20601)))

(declare-fun bs!94965 () Bool)

(assert (= bs!94965 (and d!226495 d!226347)))

(assert (=> bs!94965 (= lambda!20611 lambda!20572)))

(declare-fun bs!94966 () Bool)

(assert (= bs!94966 (and d!226495 d!226401)))

(assert (=> bs!94966 (= lambda!20611 lambda!20580)))

(declare-fun bs!94967 () Bool)

(assert (= bs!94967 (and d!226495 d!226365)))

(assert (=> bs!94967 (= lambda!20611 lambda!20577)))

(declare-fun bs!94968 () Bool)

(assert (= bs!94968 (and d!226495 d!226403)))

(assert (=> bs!94968 (= lambda!20611 lambda!20581)))

(declare-fun bs!94969 () Bool)

(assert (= bs!94969 (and d!226495 d!226455)))

(assert (=> bs!94969 (= lambda!20611 lambda!20599)))

(declare-fun bs!94970 () Bool)

(assert (= bs!94970 (and d!226495 d!226491)))

(assert (=> bs!94970 (= lambda!20611 lambda!20610)))

(declare-fun bs!94971 () Bool)

(assert (= bs!94971 (and d!226495 d!226417)))

(assert (=> bs!94971 (= lambda!20611 lambda!20583)))

(declare-fun bs!94972 () Bool)

(assert (= bs!94972 (and d!226495 d!226363)))

(assert (=> bs!94972 (= lambda!20611 lambda!20576)))

(declare-fun bs!94973 () Bool)

(assert (= bs!94973 (and d!226495 d!226373)))

(assert (=> bs!94973 (= lambda!20611 lambda!20579)))

(declare-fun bs!94974 () Bool)

(assert (= bs!94974 (and d!226495 d!226353)))

(assert (=> bs!94974 (= lambda!20611 lambda!20575)))

(declare-fun bs!94975 () Bool)

(assert (= bs!94975 (and d!226495 d!226429)))

(assert (=> bs!94975 (= lambda!20611 lambda!20588)))

(declare-fun bs!94976 () Bool)

(assert (= bs!94976 (and d!226495 d!226473)))

(assert (=> bs!94976 (= lambda!20611 lambda!20607)))

(declare-fun bs!94977 () Bool)

(assert (= bs!94977 (and d!226495 d!226461)))

(assert (=> bs!94977 (= lambda!20611 lambda!20600)))

(declare-fun bs!94978 () Bool)

(assert (= bs!94978 (and d!226495 d!226451)))

(assert (=> bs!94978 (= lambda!20611 lambda!20598)))

(declare-fun bs!94979 () Bool)

(assert (= bs!94979 (and d!226495 d!226471)))

(assert (=> bs!94979 (= lambda!20611 lambda!20606)))

(declare-fun bs!94980 () Bool)

(assert (= bs!94980 (and d!226495 d!226425)))

(assert (=> bs!94980 (= lambda!20611 lambda!20587)))

(assert (=> d!226495 (= (inv!9324 setElem!3190) (forall!1917 (exprs!717 setElem!3190) lambda!20611))))

(declare-fun bs!94981 () Bool)

(assert (= bs!94981 d!226495))

(declare-fun m!929043 () Bool)

(assert (=> bs!94981 m!929043))

(assert (=> setNonEmpty!3190 d!226495))

(assert (=> b!662340 d!226307))

(assert (=> b!662340 d!226317))

(declare-fun bs!94982 () Bool)

(declare-fun d!226497 () Bool)

(assert (= bs!94982 (and d!226497 d!226351)))

(declare-fun lambda!20612 () Int)

(assert (=> bs!94982 (= lambda!20612 lambda!20574)))

(declare-fun bs!94983 () Bool)

(assert (= bs!94983 (and d!226497 d!226415)))

(assert (=> bs!94983 (= lambda!20612 lambda!20582)))

(declare-fun bs!94984 () Bool)

(assert (= bs!94984 (and d!226497 d!226489)))

(assert (=> bs!94984 (= lambda!20612 lambda!20609)))

(declare-fun bs!94985 () Bool)

(assert (= bs!94985 (and d!226497 d!226371)))

(assert (=> bs!94985 (= lambda!20612 lambda!20578)))

(declare-fun bs!94986 () Bool)

(assert (= bs!94986 (and d!226497 d!226463)))

(assert (=> bs!94986 (= lambda!20612 lambda!20601)))

(declare-fun bs!94987 () Bool)

(assert (= bs!94987 (and d!226497 d!226347)))

(assert (=> bs!94987 (= lambda!20612 lambda!20572)))

(declare-fun bs!94988 () Bool)

(assert (= bs!94988 (and d!226497 d!226401)))

(assert (=> bs!94988 (= lambda!20612 lambda!20580)))

(declare-fun bs!94989 () Bool)

(assert (= bs!94989 (and d!226497 d!226365)))

(assert (=> bs!94989 (= lambda!20612 lambda!20577)))

(declare-fun bs!94990 () Bool)

(assert (= bs!94990 (and d!226497 d!226403)))

(assert (=> bs!94990 (= lambda!20612 lambda!20581)))

(declare-fun bs!94991 () Bool)

(assert (= bs!94991 (and d!226497 d!226455)))

(assert (=> bs!94991 (= lambda!20612 lambda!20599)))

(declare-fun bs!94992 () Bool)

(assert (= bs!94992 (and d!226497 d!226491)))

(assert (=> bs!94992 (= lambda!20612 lambda!20610)))

(declare-fun bs!94993 () Bool)

(assert (= bs!94993 (and d!226497 d!226417)))

(assert (=> bs!94993 (= lambda!20612 lambda!20583)))

(declare-fun bs!94994 () Bool)

(assert (= bs!94994 (and d!226497 d!226363)))

(assert (=> bs!94994 (= lambda!20612 lambda!20576)))

(declare-fun bs!94995 () Bool)

(assert (= bs!94995 (and d!226497 d!226373)))

(assert (=> bs!94995 (= lambda!20612 lambda!20579)))

(declare-fun bs!94996 () Bool)

(assert (= bs!94996 (and d!226497 d!226353)))

(assert (=> bs!94996 (= lambda!20612 lambda!20575)))

(declare-fun bs!94997 () Bool)

(assert (= bs!94997 (and d!226497 d!226429)))

(assert (=> bs!94997 (= lambda!20612 lambda!20588)))

(declare-fun bs!94998 () Bool)

(assert (= bs!94998 (and d!226497 d!226473)))

(assert (=> bs!94998 (= lambda!20612 lambda!20607)))

(declare-fun bs!94999 () Bool)

(assert (= bs!94999 (and d!226497 d!226495)))

(assert (=> bs!94999 (= lambda!20612 lambda!20611)))

(declare-fun bs!95000 () Bool)

(assert (= bs!95000 (and d!226497 d!226465)))

(assert (=> bs!95000 (= lambda!20612 lambda!20602)))

(declare-fun bs!95001 () Bool)

(assert (= bs!95001 (and d!226497 d!226461)))

(assert (=> bs!95001 (= lambda!20612 lambda!20600)))

(declare-fun bs!95002 () Bool)

(assert (= bs!95002 (and d!226497 d!226451)))

(assert (=> bs!95002 (= lambda!20612 lambda!20598)))

(declare-fun bs!95003 () Bool)

(assert (= bs!95003 (and d!226497 d!226471)))

(assert (=> bs!95003 (= lambda!20612 lambda!20606)))

(declare-fun bs!95004 () Bool)

(assert (= bs!95004 (and d!226497 d!226425)))

(assert (=> bs!95004 (= lambda!20612 lambda!20587)))

(assert (=> d!226497 (= (inv!9324 setElem!3179) (forall!1917 (exprs!717 setElem!3179) lambda!20612))))

(declare-fun bs!95005 () Bool)

(assert (= bs!95005 d!226497))

(declare-fun m!929045 () Bool)

(assert (=> bs!95005 m!929045))

(assert (=> setNonEmpty!3179 d!226497))

(assert (=> bs!94524 d!226321))

(assert (=> bs!94524 d!226431))

(assert (=> bs!94524 d!226319))

(assert (=> bs!94524 d!226323))

(declare-fun d!226499 () Bool)

(declare-fun choose!892 (JsonLexer!244) Regex!1805)

(assert (=> d!226499 (= (lBracketRe!0 JsonLexer!245) (choose!892 JsonLexer!245))))

(declare-fun bs!95006 () Bool)

(assert (= bs!95006 d!226499))

(declare-fun m!929047 () Bool)

(assert (=> bs!95006 m!929047))

(assert (=> d!226287 d!226499))

(assert (=> d!226287 d!226285))

(declare-fun condSetEmpty!3197 () Bool)

(assert (=> setNonEmpty!3192 (= condSetEmpty!3197 (= setRest!3192 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3197 () Bool)

(assert (=> setNonEmpty!3192 (= tp!202287 setRes!3197)))

(declare-fun setIsEmpty!3197 () Bool)

(assert (=> setIsEmpty!3197 setRes!3197))

(declare-fun setNonEmpty!3197 () Bool)

(declare-fun tp!202294 () Bool)

(declare-fun setElem!3197 () Context!434)

(assert (=> setNonEmpty!3197 (= setRes!3197 (and tp!202294 (inv!9324 setElem!3197)))))

(declare-fun setRest!3197 () (InoxSet Context!434))

(assert (=> setNonEmpty!3197 (= setRest!3192 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3197 true) setRest!3197))))

(assert (= (and setNonEmpty!3192 condSetEmpty!3197) setIsEmpty!3197))

(assert (= (and setNonEmpty!3192 (not condSetEmpty!3197)) setNonEmpty!3197))

(declare-fun m!929049 () Bool)

(assert (=> setNonEmpty!3197 m!929049))

(declare-fun condSetEmpty!3198 () Bool)

(assert (=> setNonEmpty!3188 (= condSetEmpty!3198 (= setRest!3188 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3198 () Bool)

(assert (=> setNonEmpty!3188 (= tp!202278 setRes!3198)))

(declare-fun setIsEmpty!3198 () Bool)

(assert (=> setIsEmpty!3198 setRes!3198))

(declare-fun setNonEmpty!3198 () Bool)

(declare-fun tp!202295 () Bool)

(declare-fun setElem!3198 () Context!434)

(assert (=> setNonEmpty!3198 (= setRes!3198 (and tp!202295 (inv!9324 setElem!3198)))))

(declare-fun setRest!3198 () (InoxSet Context!434))

(assert (=> setNonEmpty!3198 (= setRest!3188 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3198 true) setRest!3198))))

(assert (= (and setNonEmpty!3188 condSetEmpty!3198) setIsEmpty!3198))

(assert (= (and setNonEmpty!3188 (not condSetEmpty!3198)) setNonEmpty!3198))

(declare-fun m!929051 () Bool)

(assert (=> setNonEmpty!3198 m!929051))

(declare-fun tp!202296 () Bool)

(declare-fun setRes!3199 () Bool)

(declare-fun b!662699 () Bool)

(declare-fun e!410167 () Bool)

(assert (=> b!662699 (= e!410167 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (t!86500 mapValue!2780))))) setRes!3199 tp!202296))))

(declare-fun condSetEmpty!3199 () Bool)

(assert (=> b!662699 (= condSetEmpty!3199 (= (_2!4174 (h!12654 (t!86500 mapValue!2780))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3199 () Bool)

(assert (=> setIsEmpty!3199 setRes!3199))

(declare-fun setNonEmpty!3199 () Bool)

(declare-fun tp!202297 () Bool)

(declare-fun setElem!3199 () Context!434)

(assert (=> setNonEmpty!3199 (= setRes!3199 (and tp!202297 (inv!9324 setElem!3199)))))

(declare-fun setRest!3199 () (InoxSet Context!434))

(assert (=> setNonEmpty!3199 (= (_2!4174 (h!12654 (t!86500 mapValue!2780))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3199 true) setRest!3199))))

(assert (=> b!662393 (= tp!202248 e!410167)))

(assert (= (and b!662699 condSetEmpty!3199) setIsEmpty!3199))

(assert (= (and b!662699 (not condSetEmpty!3199)) setNonEmpty!3199))

(assert (= (and b!662393 ((_ is Cons!7253) (t!86500 mapValue!2780))) b!662699))

(declare-fun m!929053 () Bool)

(assert (=> b!662699 m!929053))

(declare-fun m!929055 () Bool)

(assert (=> setNonEmpty!3199 m!929055))

(declare-fun b!662702 () Bool)

(declare-fun e!410170 () Bool)

(assert (=> b!662702 (= e!410170 true)))

(declare-fun b!662701 () Bool)

(declare-fun e!410169 () Bool)

(assert (=> b!662701 (= e!410169 e!410170)))

(declare-fun b!662700 () Bool)

(declare-fun e!410168 () Bool)

(assert (=> b!662700 (= e!410168 e!410169)))

(assert (=> b!662365 e!410168))

(assert (= b!662701 b!662702))

(assert (= b!662700 b!662701))

(assert (= (and b!662365 ((_ is Cons!7256) (t!86503 lt!282194))) b!662700))

(assert (=> b!662702 (< (dynLambda!3820 order!5259 (toValue!2410 (transformation!1469 (h!12657 (t!86503 lt!282194))))) (dynLambda!3821 order!5261 lambda!20569))))

(assert (=> b!662702 (< (dynLambda!3822 order!5263 (toChars!2269 (transformation!1469 (h!12657 (t!86503 lt!282194))))) (dynLambda!3821 order!5261 lambda!20569))))

(declare-fun b!662703 () Bool)

(declare-fun tp!202298 () Bool)

(declare-fun setRes!3200 () Bool)

(declare-fun e!410173 () Bool)

(assert (=> b!662703 (= e!410173 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (t!86500 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))))) setRes!3200 tp!202298))))

(declare-fun condSetEmpty!3200 () Bool)

(assert (=> b!662703 (= condSetEmpty!3200 (= (_2!4174 (h!12654 (t!86500 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3200 () Bool)

(assert (=> setIsEmpty!3200 setRes!3200))

(declare-fun setNonEmpty!3200 () Bool)

(declare-fun tp!202299 () Bool)

(declare-fun setElem!3200 () Context!434)

(assert (=> setNonEmpty!3200 (= setRes!3200 (and tp!202299 (inv!9324 setElem!3200)))))

(declare-fun setRest!3200 () (InoxSet Context!434))

(assert (=> setNonEmpty!3200 (= (_2!4174 (h!12654 (t!86500 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3200 true) setRest!3200))))

(assert (=> b!662415 (= tp!202286 e!410173)))

(assert (= (and b!662703 condSetEmpty!3200) setIsEmpty!3200))

(assert (= (and b!662703 (not condSetEmpty!3200)) setNonEmpty!3200))

(assert (= (and b!662415 ((_ is Cons!7253) (t!86500 (minValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))) b!662703))

(declare-fun m!929057 () Bool)

(assert (=> b!662703 m!929057))

(declare-fun m!929059 () Bool)

(assert (=> setNonEmpty!3200 m!929059))

(declare-fun e!410174 () Bool)

(declare-fun tp!202301 () Bool)

(declare-fun b!662704 () Bool)

(declare-fun setRes!3201 () Bool)

(assert (=> b!662704 (= e!410174 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (t!86501 mapValue!2777))))) setRes!3201 tp!202301))))

(declare-fun condSetEmpty!3201 () Bool)

(assert (=> b!662704 (= condSetEmpty!3201 (= (_2!4176 (h!12655 (t!86501 mapValue!2777))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3201 () Bool)

(assert (=> setIsEmpty!3201 setRes!3201))

(declare-fun setNonEmpty!3201 () Bool)

(declare-fun tp!202300 () Bool)

(declare-fun setElem!3201 () Context!434)

(assert (=> setNonEmpty!3201 (= setRes!3201 (and tp!202300 (inv!9324 setElem!3201)))))

(declare-fun setRest!3201 () (InoxSet Context!434))

(assert (=> setNonEmpty!3201 (= (_2!4176 (h!12655 (t!86501 mapValue!2777))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3201 true) setRest!3201))))

(assert (=> b!662411 (= tp!202279 e!410174)))

(assert (= (and b!662704 condSetEmpty!3201) setIsEmpty!3201))

(assert (= (and b!662704 (not condSetEmpty!3201)) setNonEmpty!3201))

(assert (= (and b!662411 ((_ is Cons!7254) (t!86501 mapValue!2777))) b!662704))

(declare-fun m!929061 () Bool)

(assert (=> b!662704 m!929061))

(declare-fun m!929063 () Bool)

(assert (=> setNonEmpty!3201 m!929063))

(declare-fun tp!202302 () Bool)

(declare-fun b!662705 () Bool)

(declare-fun e!410179 () Bool)

(declare-fun setRes!3202 () Bool)

(assert (=> b!662705 (= e!410179 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (t!86500 mapDefault!2780))))) setRes!3202 tp!202302))))

(declare-fun condSetEmpty!3202 () Bool)

(assert (=> b!662705 (= condSetEmpty!3202 (= (_2!4174 (h!12654 (t!86500 mapDefault!2780))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3202 () Bool)

(assert (=> setIsEmpty!3202 setRes!3202))

(declare-fun setNonEmpty!3202 () Bool)

(declare-fun tp!202303 () Bool)

(declare-fun setElem!3202 () Context!434)

(assert (=> setNonEmpty!3202 (= setRes!3202 (and tp!202303 (inv!9324 setElem!3202)))))

(declare-fun setRest!3202 () (InoxSet Context!434))

(assert (=> setNonEmpty!3202 (= (_2!4174 (h!12654 (t!86500 mapDefault!2780))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3202 true) setRest!3202))))

(assert (=> b!662392 (= tp!202251 e!410179)))

(assert (= (and b!662705 condSetEmpty!3202) setIsEmpty!3202))

(assert (= (and b!662705 (not condSetEmpty!3202)) setNonEmpty!3202))

(assert (= (and b!662392 ((_ is Cons!7253) (t!86500 mapDefault!2780))) b!662705))

(declare-fun m!929065 () Bool)

(assert (=> b!662705 m!929065))

(declare-fun m!929067 () Bool)

(assert (=> setNonEmpty!3202 m!929067))

(declare-fun condMapEmpty!2784 () Bool)

(declare-fun mapDefault!2784 () List!7267)

(assert (=> mapNonEmpty!2780 (= condMapEmpty!2784 (= mapRest!2780 ((as const (Array (_ BitVec 32) List!7267)) mapDefault!2784)))))

(declare-fun e!410182 () Bool)

(declare-fun mapRes!2784 () Bool)

(assert (=> mapNonEmpty!2780 (= tp!202252 (and e!410182 mapRes!2784))))

(declare-fun setNonEmpty!3203 () Bool)

(declare-fun setRes!3204 () Bool)

(declare-fun tp!202306 () Bool)

(declare-fun setElem!3203 () Context!434)

(assert (=> setNonEmpty!3203 (= setRes!3204 (and tp!202306 (inv!9324 setElem!3203)))))

(declare-fun mapValue!2784 () List!7267)

(declare-fun setRest!3204 () (InoxSet Context!434))

(assert (=> setNonEmpty!3203 (= (_2!4174 (h!12654 mapValue!2784)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3203 true) setRest!3204))))

(declare-fun setNonEmpty!3204 () Bool)

(declare-fun setRes!3203 () Bool)

(declare-fun tp!202305 () Bool)

(declare-fun setElem!3204 () Context!434)

(assert (=> setNonEmpty!3204 (= setRes!3203 (and tp!202305 (inv!9324 setElem!3204)))))

(declare-fun setRest!3203 () (InoxSet Context!434))

(assert (=> setNonEmpty!3204 (= (_2!4174 (h!12654 mapDefault!2784)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3204 true) setRest!3203))))

(declare-fun mapNonEmpty!2784 () Bool)

(declare-fun tp!202308 () Bool)

(declare-fun e!410184 () Bool)

(assert (=> mapNonEmpty!2784 (= mapRes!2784 (and tp!202308 e!410184))))

(declare-fun mapRest!2784 () (Array (_ BitVec 32) List!7267))

(declare-fun mapKey!2784 () (_ BitVec 32))

(assert (=> mapNonEmpty!2784 (= mapRest!2780 (store mapRest!2784 mapKey!2784 mapValue!2784))))

(declare-fun setIsEmpty!3203 () Bool)

(assert (=> setIsEmpty!3203 setRes!3204))

(declare-fun b!662706 () Bool)

(declare-fun tp!202307 () Bool)

(assert (=> b!662706 (= e!410182 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 mapDefault!2784)))) setRes!3203 tp!202307))))

(declare-fun condSetEmpty!3204 () Bool)

(assert (=> b!662706 (= condSetEmpty!3204 (= (_2!4174 (h!12654 mapDefault!2784)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun mapIsEmpty!2784 () Bool)

(assert (=> mapIsEmpty!2784 mapRes!2784))

(declare-fun b!662707 () Bool)

(declare-fun tp!202304 () Bool)

(assert (=> b!662707 (= e!410184 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 mapValue!2784)))) setRes!3204 tp!202304))))

(declare-fun condSetEmpty!3203 () Bool)

(assert (=> b!662707 (= condSetEmpty!3203 (= (_2!4174 (h!12654 mapValue!2784)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3204 () Bool)

(assert (=> setIsEmpty!3204 setRes!3203))

(assert (= (and mapNonEmpty!2780 condMapEmpty!2784) mapIsEmpty!2784))

(assert (= (and mapNonEmpty!2780 (not condMapEmpty!2784)) mapNonEmpty!2784))

(assert (= (and b!662707 condSetEmpty!3203) setIsEmpty!3203))

(assert (= (and b!662707 (not condSetEmpty!3203)) setNonEmpty!3203))

(assert (= (and mapNonEmpty!2784 ((_ is Cons!7253) mapValue!2784)) b!662707))

(assert (= (and b!662706 condSetEmpty!3204) setIsEmpty!3204))

(assert (= (and b!662706 (not condSetEmpty!3204)) setNonEmpty!3204))

(assert (= (and mapNonEmpty!2780 ((_ is Cons!7253) mapDefault!2784)) b!662706))

(declare-fun m!929069 () Bool)

(assert (=> mapNonEmpty!2784 m!929069))

(declare-fun m!929071 () Bool)

(assert (=> setNonEmpty!3203 m!929071))

(declare-fun m!929073 () Bool)

(assert (=> setNonEmpty!3204 m!929073))

(declare-fun m!929075 () Bool)

(assert (=> b!662707 m!929075))

(declare-fun m!929077 () Bool)

(assert (=> b!662706 m!929077))

(declare-fun condSetEmpty!3205 () Bool)

(assert (=> setNonEmpty!3176 (= condSetEmpty!3205 (= setRest!3175 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3205 () Bool)

(assert (=> setNonEmpty!3176 (= tp!202249 setRes!3205)))

(declare-fun setIsEmpty!3205 () Bool)

(assert (=> setIsEmpty!3205 setRes!3205))

(declare-fun setNonEmpty!3205 () Bool)

(declare-fun tp!202309 () Bool)

(declare-fun setElem!3205 () Context!434)

(assert (=> setNonEmpty!3205 (= setRes!3205 (and tp!202309 (inv!9324 setElem!3205)))))

(declare-fun setRest!3205 () (InoxSet Context!434))

(assert (=> setNonEmpty!3205 (= setRest!3175 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3205 true) setRest!3205))))

(assert (= (and setNonEmpty!3176 condSetEmpty!3205) setIsEmpty!3205))

(assert (= (and setNonEmpty!3176 (not condSetEmpty!3205)) setNonEmpty!3205))

(declare-fun m!929079 () Bool)

(assert (=> setNonEmpty!3205 m!929079))

(declare-fun condSetEmpty!3206 () Bool)

(assert (=> setNonEmpty!3193 (= condSetEmpty!3206 (= setRest!3193 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3206 () Bool)

(assert (=> setNonEmpty!3193 (= tp!202288 setRes!3206)))

(declare-fun setIsEmpty!3206 () Bool)

(assert (=> setIsEmpty!3206 setRes!3206))

(declare-fun setNonEmpty!3206 () Bool)

(declare-fun tp!202310 () Bool)

(declare-fun setElem!3206 () Context!434)

(assert (=> setNonEmpty!3206 (= setRes!3206 (and tp!202310 (inv!9324 setElem!3206)))))

(declare-fun setRest!3206 () (InoxSet Context!434))

(assert (=> setNonEmpty!3206 (= setRest!3193 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3206 true) setRest!3206))))

(assert (= (and setNonEmpty!3193 condSetEmpty!3206) setIsEmpty!3206))

(assert (= (and setNonEmpty!3193 (not condSetEmpty!3206)) setNonEmpty!3206))

(declare-fun m!929081 () Bool)

(assert (=> setNonEmpty!3206 m!929081))

(declare-fun condSetEmpty!3207 () Bool)

(assert (=> setNonEmpty!3189 (= condSetEmpty!3207 (= setRest!3189 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3207 () Bool)

(assert (=> setNonEmpty!3189 (= tp!202280 setRes!3207)))

(declare-fun setIsEmpty!3207 () Bool)

(assert (=> setIsEmpty!3207 setRes!3207))

(declare-fun setNonEmpty!3207 () Bool)

(declare-fun tp!202311 () Bool)

(declare-fun setElem!3207 () Context!434)

(assert (=> setNonEmpty!3207 (= setRes!3207 (and tp!202311 (inv!9324 setElem!3207)))))

(declare-fun setRest!3207 () (InoxSet Context!434))

(assert (=> setNonEmpty!3207 (= setRest!3189 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3207 true) setRest!3207))))

(assert (= (and setNonEmpty!3189 condSetEmpty!3207) setIsEmpty!3207))

(assert (= (and setNonEmpty!3189 (not condSetEmpty!3207)) setNonEmpty!3207))

(declare-fun m!929083 () Bool)

(assert (=> setNonEmpty!3207 m!929083))

(declare-fun condSetEmpty!3208 () Bool)

(assert (=> setNonEmpty!3175 (= condSetEmpty!3208 (= setRest!3176 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3208 () Bool)

(assert (=> setNonEmpty!3175 (= tp!202250 setRes!3208)))

(declare-fun setIsEmpty!3208 () Bool)

(assert (=> setIsEmpty!3208 setRes!3208))

(declare-fun setNonEmpty!3208 () Bool)

(declare-fun tp!202312 () Bool)

(declare-fun setElem!3208 () Context!434)

(assert (=> setNonEmpty!3208 (= setRes!3208 (and tp!202312 (inv!9324 setElem!3208)))))

(declare-fun setRest!3208 () (InoxSet Context!434))

(assert (=> setNonEmpty!3208 (= setRest!3176 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3208 true) setRest!3208))))

(assert (= (and setNonEmpty!3175 condSetEmpty!3208) setIsEmpty!3208))

(assert (= (and setNonEmpty!3175 (not condSetEmpty!3208)) setNonEmpty!3208))

(declare-fun m!929085 () Bool)

(assert (=> setNonEmpty!3208 m!929085))

(declare-fun e!410190 () Bool)

(declare-fun b!662708 () Bool)

(declare-fun tp!202314 () Bool)

(declare-fun setRes!3209 () Bool)

(assert (=> b!662708 (= e!410190 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (t!86501 mapDefault!2777))))) setRes!3209 tp!202314))))

(declare-fun condSetEmpty!3209 () Bool)

(assert (=> b!662708 (= condSetEmpty!3209 (= (_2!4176 (h!12655 (t!86501 mapDefault!2777))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3209 () Bool)

(assert (=> setIsEmpty!3209 setRes!3209))

(declare-fun setNonEmpty!3209 () Bool)

(declare-fun tp!202313 () Bool)

(declare-fun setElem!3209 () Context!434)

(assert (=> setNonEmpty!3209 (= setRes!3209 (and tp!202313 (inv!9324 setElem!3209)))))

(declare-fun setRest!3209 () (InoxSet Context!434))

(assert (=> setNonEmpty!3209 (= (_2!4176 (h!12655 (t!86501 mapDefault!2777))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3209 true) setRest!3209))))

(assert (=> b!662416 (= tp!202289 e!410190)))

(assert (= (and b!662708 condSetEmpty!3209) setIsEmpty!3209))

(assert (= (and b!662708 (not condSetEmpty!3209)) setNonEmpty!3209))

(assert (= (and b!662416 ((_ is Cons!7254) (t!86501 mapDefault!2777))) b!662708))

(declare-fun m!929087 () Bool)

(assert (=> b!662708 m!929087))

(declare-fun m!929089 () Bool)

(assert (=> setNonEmpty!3209 m!929089))

(declare-fun e!410193 () Bool)

(declare-fun setRes!3210 () Bool)

(declare-fun b!662709 () Bool)

(declare-fun tp!202316 () Bool)

(assert (=> b!662709 (= e!410193 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (t!86501 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))))) setRes!3210 tp!202316))))

(declare-fun condSetEmpty!3210 () Bool)

(assert (=> b!662709 (= condSetEmpty!3210 (= (_2!4176 (h!12655 (t!86501 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3210 () Bool)

(assert (=> setIsEmpty!3210 setRes!3210))

(declare-fun setNonEmpty!3210 () Bool)

(declare-fun tp!202315 () Bool)

(declare-fun setElem!3210 () Context!434)

(assert (=> setNonEmpty!3210 (= setRes!3210 (and tp!202315 (inv!9324 setElem!3210)))))

(declare-fun setRest!3210 () (InoxSet Context!434))

(assert (=> setNonEmpty!3210 (= (_2!4176 (h!12655 (t!86501 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3210 true) setRest!3210))))

(assert (=> b!662412 (= tp!202281 e!410193)))

(assert (= (and b!662709 condSetEmpty!3210) setIsEmpty!3210))

(assert (= (and b!662709 (not condSetEmpty!3210)) setNonEmpty!3210))

(assert (= (and b!662412 ((_ is Cons!7254) (t!86501 (zeroValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))) b!662709))

(declare-fun m!929091 () Bool)

(assert (=> b!662709 m!929091))

(declare-fun m!929093 () Bool)

(assert (=> setNonEmpty!3210 m!929093))

(declare-fun b!662724 () Bool)

(declare-fun e!410208 () Bool)

(declare-fun e!410209 () Bool)

(assert (=> b!662724 (= e!410208 e!410209)))

(declare-fun b!662726 () Bool)

(declare-fun e!410210 () Bool)

(declare-fun e!410211 () Bool)

(assert (=> b!662726 (= e!410210 e!410211)))

(declare-fun b!662727 () Bool)

(declare-fun e!410213 () Bool)

(assert (=> b!662727 (= e!410213 e!410208)))

(declare-fun b!662728 () Bool)

(declare-fun lt!282309 () MutLongMap!700)

(assert (=> b!662728 (= e!410211 ((_ is LongMap!700) lt!282309))))

(assert (=> b!662728 (= lt!282309 (v!17386 (underlying!1584 (cache!1059 (_2!4177 (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 lt!282195 cacheUp!335 cacheDown!348))))))))

(declare-fun b!662729 () Bool)

(declare-fun lt!282308 () MutLongMap!701)

(assert (=> b!662729 (= e!410209 ((_ is LongMap!701) lt!282308))))

(assert (=> b!662729 (= lt!282308 (v!17388 (underlying!1586 (cache!1060 (_3!377 (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 lt!282195 cacheUp!335 cacheDown!348))))))))

(declare-fun b!662725 () Bool)

(declare-fun e!410212 () Bool)

(assert (=> b!662725 (= e!410212 e!410210)))

(assert (=> d!226291 (= true (and e!410212 e!410213))))

(assert (= b!662726 b!662728))

(assert (= (and b!662725 ((_ is HashMap!672) (cache!1059 (_2!4177 (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 lt!282195 cacheUp!335 cacheDown!348))))) b!662726))

(assert (= d!226291 b!662725))

(assert (= b!662724 b!662729))

(assert (= (and b!662727 ((_ is HashMap!673) (cache!1060 (_3!377 (rulesProduceEachTokenIndividuallyMem!15 Lexer!1283 lt!282194 lt!282195 cacheUp!335 cacheDown!348))))) b!662724))

(assert (= d!226291 b!662727))

(declare-fun b!662732 () Bool)

(declare-fun e!410216 () Bool)

(assert (=> b!662732 (= e!410216 true)))

(declare-fun b!662731 () Bool)

(declare-fun e!410215 () Bool)

(assert (=> b!662731 (= e!410215 e!410216)))

(declare-fun b!662730 () Bool)

(declare-fun e!410214 () Bool)

(assert (=> b!662730 (= e!410214 e!410215)))

(assert (=> b!662306 e!410214))

(assert (= b!662731 b!662732))

(assert (= b!662730 b!662731))

(assert (= (and b!662306 ((_ is Cons!7256) (t!86503 lt!282194))) b!662730))

(assert (=> b!662732 (< (dynLambda!3820 order!5259 (toValue!2410 (transformation!1469 (h!12657 (t!86503 lt!282194))))) (dynLambda!3821 order!5261 lambda!20542))))

(assert (=> b!662732 (< (dynLambda!3822 order!5263 (toChars!2269 (transformation!1469 (h!12657 (t!86503 lt!282194))))) (dynLambda!3821 order!5261 lambda!20542))))

(declare-fun e!410221 () Bool)

(declare-fun tp!202322 () Bool)

(declare-fun tp!202321 () Bool)

(declare-fun b!662739 () Bool)

(assert (=> b!662739 (= e!410221 (and (inv!9322 (left!5867 (c!119115 x!145818))) tp!202321 (inv!9322 (right!6197 (c!119115 x!145818))) tp!202322))))

(declare-fun b!662740 () Bool)

(declare-fun inv!9327 (IArray!5159) Bool)

(assert (=> b!662740 (= e!410221 (inv!9327 (xs!5228 (c!119115 x!145818))))))

(assert (=> b!662342 (= tp!202236 (and (inv!9322 (c!119115 x!145818)) e!410221))))

(assert (= (and b!662342 ((_ is Node!2579) (c!119115 x!145818))) b!662739))

(assert (= (and b!662342 ((_ is Leaf!3830) (c!119115 x!145818))) b!662740))

(declare-fun m!929095 () Bool)

(assert (=> b!662739 m!929095))

(declare-fun m!929097 () Bool)

(assert (=> b!662739 m!929097))

(declare-fun m!929099 () Bool)

(assert (=> b!662740 m!929099))

(assert (=> b!662342 m!928521))

(declare-fun condSetEmpty!3211 () Bool)

(assert (=> setNonEmpty!3185 (= condSetEmpty!3211 (= setRest!3184 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3211 () Bool)

(assert (=> setNonEmpty!3185 (= tp!202271 setRes!3211)))

(declare-fun setIsEmpty!3211 () Bool)

(assert (=> setIsEmpty!3211 setRes!3211))

(declare-fun setNonEmpty!3211 () Bool)

(declare-fun tp!202323 () Bool)

(declare-fun setElem!3211 () Context!434)

(assert (=> setNonEmpty!3211 (= setRes!3211 (and tp!202323 (inv!9324 setElem!3211)))))

(declare-fun setRest!3211 () (InoxSet Context!434))

(assert (=> setNonEmpty!3211 (= setRest!3184 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3211 true) setRest!3211))))

(assert (= (and setNonEmpty!3185 condSetEmpty!3211) setIsEmpty!3211))

(assert (= (and setNonEmpty!3185 (not condSetEmpty!3211)) setNonEmpty!3211))

(declare-fun m!929101 () Bool)

(assert (=> setNonEmpty!3211 m!929101))

(declare-fun e!410224 () Bool)

(declare-fun tp!202325 () Bool)

(declare-fun b!662741 () Bool)

(declare-fun tp!202324 () Bool)

(assert (=> b!662741 (= e!410224 (and (inv!9322 (left!5867 (c!119115 x!145817))) tp!202324 (inv!9322 (right!6197 (c!119115 x!145817))) tp!202325))))

(declare-fun b!662742 () Bool)

(assert (=> b!662742 (= e!410224 (inv!9327 (xs!5228 (c!119115 x!145817))))))

(assert (=> b!662341 (= tp!202237 (and (inv!9322 (c!119115 x!145817)) e!410224))))

(assert (= (and b!662341 ((_ is Node!2579) (c!119115 x!145817))) b!662741))

(assert (= (and b!662341 ((_ is Leaf!3830) (c!119115 x!145817))) b!662742))

(declare-fun m!929103 () Bool)

(assert (=> b!662741 m!929103))

(declare-fun m!929105 () Bool)

(assert (=> b!662741 m!929105))

(declare-fun m!929107 () Bool)

(assert (=> b!662742 m!929107))

(assert (=> b!662341 m!928519))

(declare-fun condSetEmpty!3212 () Bool)

(assert (=> setNonEmpty!3194 (= condSetEmpty!3212 (= setRest!3194 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3212 () Bool)

(assert (=> setNonEmpty!3194 (= tp!202291 setRes!3212)))

(declare-fun setIsEmpty!3212 () Bool)

(assert (=> setIsEmpty!3212 setRes!3212))

(declare-fun setNonEmpty!3212 () Bool)

(declare-fun tp!202326 () Bool)

(declare-fun setElem!3212 () Context!434)

(assert (=> setNonEmpty!3212 (= setRes!3212 (and tp!202326 (inv!9324 setElem!3212)))))

(declare-fun setRest!3212 () (InoxSet Context!434))

(assert (=> setNonEmpty!3212 (= setRest!3194 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3212 true) setRest!3212))))

(assert (= (and setNonEmpty!3194 condSetEmpty!3212) setIsEmpty!3212))

(assert (= (and setNonEmpty!3194 (not condSetEmpty!3212)) setNonEmpty!3212))

(declare-fun m!929109 () Bool)

(assert (=> setNonEmpty!3212 m!929109))

(declare-fun condSetEmpty!3213 () Bool)

(assert (=> setNonEmpty!3190 (= condSetEmpty!3213 (= setRest!3190 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3213 () Bool)

(assert (=> setNonEmpty!3190 (= tp!202282 setRes!3213)))

(declare-fun setIsEmpty!3213 () Bool)

(assert (=> setIsEmpty!3213 setRes!3213))

(declare-fun setNonEmpty!3213 () Bool)

(declare-fun tp!202327 () Bool)

(declare-fun setElem!3213 () Context!434)

(assert (=> setNonEmpty!3213 (= setRes!3213 (and tp!202327 (inv!9324 setElem!3213)))))

(declare-fun setRest!3213 () (InoxSet Context!434))

(assert (=> setNonEmpty!3213 (= setRest!3190 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3213 true) setRest!3213))))

(assert (= (and setNonEmpty!3190 condSetEmpty!3213) setIsEmpty!3213))

(assert (= (and setNonEmpty!3190 (not condSetEmpty!3213)) setNonEmpty!3213))

(declare-fun m!929111 () Bool)

(assert (=> setNonEmpty!3213 m!929111))

(declare-fun condSetEmpty!3214 () Bool)

(assert (=> setNonEmpty!3179 (= condSetEmpty!3214 (= setRest!3179 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3214 () Bool)

(assert (=> setNonEmpty!3179 (= tp!202258 setRes!3214)))

(declare-fun setIsEmpty!3214 () Bool)

(assert (=> setIsEmpty!3214 setRes!3214))

(declare-fun setNonEmpty!3214 () Bool)

(declare-fun tp!202328 () Bool)

(declare-fun setElem!3214 () Context!434)

(assert (=> setNonEmpty!3214 (= setRes!3214 (and tp!202328 (inv!9324 setElem!3214)))))

(declare-fun setRest!3214 () (InoxSet Context!434))

(assert (=> setNonEmpty!3214 (= setRest!3179 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3214 true) setRest!3214))))

(assert (= (and setNonEmpty!3179 condSetEmpty!3214) setIsEmpty!3214))

(assert (= (and setNonEmpty!3179 (not condSetEmpty!3214)) setNonEmpty!3214))

(declare-fun m!929113 () Bool)

(assert (=> setNonEmpty!3214 m!929113))

(declare-fun tp!202330 () Bool)

(declare-fun tp!202329 () Bool)

(declare-fun b!662743 () Bool)

(declare-fun e!410229 () Bool)

(assert (=> b!662743 (= e!410229 (and (inv!9322 (left!5867 (c!119115 x!145816))) tp!202329 (inv!9322 (right!6197 (c!119115 x!145816))) tp!202330))))

(declare-fun b!662744 () Bool)

(assert (=> b!662744 (= e!410229 (inv!9327 (xs!5228 (c!119115 x!145816))))))

(assert (=> b!662339 (= tp!202235 (and (inv!9322 (c!119115 x!145816)) e!410229))))

(assert (= (and b!662339 ((_ is Node!2579) (c!119115 x!145816))) b!662743))

(assert (= (and b!662339 ((_ is Leaf!3830) (c!119115 x!145816))) b!662744))

(declare-fun m!929115 () Bool)

(assert (=> b!662743 m!929115))

(declare-fun m!929117 () Bool)

(assert (=> b!662743 m!929117))

(declare-fun m!929119 () Bool)

(assert (=> b!662744 m!929119))

(assert (=> b!662339 m!928495))

(declare-fun condSetEmpty!3215 () Bool)

(assert (=> setNonEmpty!3184 (= condSetEmpty!3215 (= setRest!3185 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3215 () Bool)

(assert (=> setNonEmpty!3184 (= tp!202272 setRes!3215)))

(declare-fun setIsEmpty!3215 () Bool)

(assert (=> setIsEmpty!3215 setRes!3215))

(declare-fun setNonEmpty!3215 () Bool)

(declare-fun tp!202331 () Bool)

(declare-fun setElem!3215 () Context!434)

(assert (=> setNonEmpty!3215 (= setRes!3215 (and tp!202331 (inv!9324 setElem!3215)))))

(declare-fun setRest!3215 () (InoxSet Context!434))

(assert (=> setNonEmpty!3215 (= setRest!3185 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3215 true) setRest!3215))))

(assert (= (and setNonEmpty!3184 condSetEmpty!3215) setIsEmpty!3215))

(assert (= (and setNonEmpty!3184 (not condSetEmpty!3215)) setNonEmpty!3215))

(declare-fun m!929121 () Bool)

(assert (=> setNonEmpty!3215 m!929121))

(declare-fun e!410234 () Bool)

(declare-fun setRes!3216 () Bool)

(declare-fun b!662745 () Bool)

(declare-fun tp!202332 () Bool)

(assert (=> b!662745 (= e!410234 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (t!86500 mapDefault!2776))))) setRes!3216 tp!202332))))

(declare-fun condSetEmpty!3216 () Bool)

(assert (=> b!662745 (= condSetEmpty!3216 (= (_2!4174 (h!12654 (t!86500 mapDefault!2776))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3216 () Bool)

(assert (=> setIsEmpty!3216 setRes!3216))

(declare-fun setNonEmpty!3216 () Bool)

(declare-fun tp!202333 () Bool)

(declare-fun setElem!3216 () Context!434)

(assert (=> setNonEmpty!3216 (= setRes!3216 (and tp!202333 (inv!9324 setElem!3216)))))

(declare-fun setRest!3216 () (InoxSet Context!434))

(assert (=> setNonEmpty!3216 (= (_2!4174 (h!12654 (t!86500 mapDefault!2776))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3216 true) setRest!3216))))

(assert (=> b!662417 (= tp!202290 e!410234)))

(assert (= (and b!662745 condSetEmpty!3216) setIsEmpty!3216))

(assert (= (and b!662745 (not condSetEmpty!3216)) setNonEmpty!3216))

(assert (= (and b!662417 ((_ is Cons!7253) (t!86500 mapDefault!2776))) b!662745))

(declare-fun m!929123 () Bool)

(assert (=> b!662745 m!929123))

(declare-fun m!929125 () Bool)

(assert (=> setNonEmpty!3216 m!929125))

(declare-fun tp!202335 () Bool)

(declare-fun b!662746 () Bool)

(declare-fun e!410235 () Bool)

(declare-fun setRes!3217 () Bool)

(assert (=> b!662746 (= e!410235 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (t!86501 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))))) setRes!3217 tp!202335))))

(declare-fun condSetEmpty!3217 () Bool)

(assert (=> b!662746 (= condSetEmpty!3217 (= (_2!4176 (h!12655 (t!86501 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3217 () Bool)

(assert (=> setIsEmpty!3217 setRes!3217))

(declare-fun setNonEmpty!3217 () Bool)

(declare-fun tp!202334 () Bool)

(declare-fun setElem!3217 () Context!434)

(assert (=> setNonEmpty!3217 (= setRes!3217 (and tp!202334 (inv!9324 setElem!3217)))))

(declare-fun setRest!3217 () (InoxSet Context!434))

(assert (=> setNonEmpty!3217 (= (_2!4176 (h!12655 (t!86501 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3217 true) setRest!3217))))

(assert (=> b!662413 (= tp!202283 e!410235)))

(assert (= (and b!662746 condSetEmpty!3217) setIsEmpty!3217))

(assert (= (and b!662746 (not condSetEmpty!3217)) setNonEmpty!3217))

(assert (= (and b!662413 ((_ is Cons!7254) (t!86501 (minValue!958 (v!17387 (underlying!1585 (v!17388 (underlying!1586 (cache!1060 cacheDown!348))))))))) b!662746))

(declare-fun m!929127 () Bool)

(assert (=> b!662746 m!929127))

(declare-fun m!929129 () Bool)

(assert (=> setNonEmpty!3217 m!929129))

(declare-fun tp!202336 () Bool)

(declare-fun e!410240 () Bool)

(declare-fun b!662747 () Bool)

(declare-fun setRes!3218 () Bool)

(assert (=> b!662747 (= e!410240 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (t!86500 mapValue!2776))))) setRes!3218 tp!202336))))

(declare-fun condSetEmpty!3218 () Bool)

(assert (=> b!662747 (= condSetEmpty!3218 (= (_2!4174 (h!12654 (t!86500 mapValue!2776))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3218 () Bool)

(assert (=> setIsEmpty!3218 setRes!3218))

(declare-fun setNonEmpty!3218 () Bool)

(declare-fun tp!202337 () Bool)

(declare-fun setElem!3218 () Context!434)

(assert (=> setNonEmpty!3218 (= setRes!3218 (and tp!202337 (inv!9324 setElem!3218)))))

(declare-fun setRest!3218 () (InoxSet Context!434))

(assert (=> setNonEmpty!3218 (= (_2!4174 (h!12654 (t!86500 mapValue!2776))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3218 true) setRest!3218))))

(assert (=> b!662398 (= tp!202257 e!410240)))

(assert (= (and b!662747 condSetEmpty!3218) setIsEmpty!3218))

(assert (= (and b!662747 (not condSetEmpty!3218)) setNonEmpty!3218))

(assert (= (and b!662398 ((_ is Cons!7253) (t!86500 mapValue!2776))) b!662747))

(declare-fun m!929131 () Bool)

(assert (=> b!662747 m!929131))

(declare-fun m!929133 () Bool)

(assert (=> setNonEmpty!3218 m!929133))

(declare-fun setIsEmpty!3219 () Bool)

(declare-fun setRes!3220 () Bool)

(assert (=> setIsEmpty!3219 setRes!3220))

(declare-fun tp!202339 () Bool)

(declare-fun mapValue!2785 () List!7268)

(declare-fun e!410245 () Bool)

(declare-fun b!662748 () Bool)

(assert (=> b!662748 (= e!410245 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 mapValue!2785)))) setRes!3220 tp!202339))))

(declare-fun condSetEmpty!3219 () Bool)

(assert (=> b!662748 (= condSetEmpty!3219 (= (_2!4176 (h!12655 mapValue!2785)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun tp!202338 () Bool)

(declare-fun b!662749 () Bool)

(declare-fun mapDefault!2785 () List!7268)

(declare-fun e!410241 () Bool)

(declare-fun setRes!3219 () Bool)

(assert (=> b!662749 (= e!410241 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 mapDefault!2785)))) setRes!3219 tp!202338))))

(declare-fun condSetEmpty!3220 () Bool)

(assert (=> b!662749 (= condSetEmpty!3220 (= (_2!4176 (h!12655 mapDefault!2785)) ((as const (Array Context!434 Bool)) false)))))

(declare-fun mapNonEmpty!2785 () Bool)

(declare-fun mapRes!2785 () Bool)

(declare-fun tp!202342 () Bool)

(assert (=> mapNonEmpty!2785 (= mapRes!2785 (and tp!202342 e!410245))))

(declare-fun mapRest!2785 () (Array (_ BitVec 32) List!7268))

(declare-fun mapKey!2785 () (_ BitVec 32))

(assert (=> mapNonEmpty!2785 (= mapRest!2783 (store mapRest!2785 mapKey!2785 mapValue!2785))))

(declare-fun setNonEmpty!3219 () Bool)

(declare-fun tp!202341 () Bool)

(declare-fun setElem!3220 () Context!434)

(assert (=> setNonEmpty!3219 (= setRes!3219 (and tp!202341 (inv!9324 setElem!3220)))))

(declare-fun setRest!3220 () (InoxSet Context!434))

(assert (=> setNonEmpty!3219 (= (_2!4176 (h!12655 mapDefault!2785)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3220 true) setRest!3220))))

(declare-fun condMapEmpty!2785 () Bool)

(assert (=> mapNonEmpty!2783 (= condMapEmpty!2785 (= mapRest!2783 ((as const (Array (_ BitVec 32) List!7268)) mapDefault!2785)))))

(assert (=> mapNonEmpty!2783 (= tp!202273 (and e!410241 mapRes!2785))))

(declare-fun setIsEmpty!3220 () Bool)

(assert (=> setIsEmpty!3220 setRes!3219))

(declare-fun setNonEmpty!3220 () Bool)

(declare-fun tp!202340 () Bool)

(declare-fun setElem!3219 () Context!434)

(assert (=> setNonEmpty!3220 (= setRes!3220 (and tp!202340 (inv!9324 setElem!3219)))))

(declare-fun setRest!3219 () (InoxSet Context!434))

(assert (=> setNonEmpty!3220 (= (_2!4176 (h!12655 mapValue!2785)) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3219 true) setRest!3219))))

(declare-fun mapIsEmpty!2785 () Bool)

(assert (=> mapIsEmpty!2785 mapRes!2785))

(assert (= (and mapNonEmpty!2783 condMapEmpty!2785) mapIsEmpty!2785))

(assert (= (and mapNonEmpty!2783 (not condMapEmpty!2785)) mapNonEmpty!2785))

(assert (= (and b!662748 condSetEmpty!3219) setIsEmpty!3219))

(assert (= (and b!662748 (not condSetEmpty!3219)) setNonEmpty!3220))

(assert (= (and mapNonEmpty!2785 ((_ is Cons!7254) mapValue!2785)) b!662748))

(assert (= (and b!662749 condSetEmpty!3220) setIsEmpty!3220))

(assert (= (and b!662749 (not condSetEmpty!3220)) setNonEmpty!3219))

(assert (= (and mapNonEmpty!2783 ((_ is Cons!7254) mapDefault!2785)) b!662749))

(declare-fun m!929135 () Bool)

(assert (=> b!662748 m!929135))

(declare-fun m!929137 () Bool)

(assert (=> setNonEmpty!3220 m!929137))

(declare-fun m!929139 () Bool)

(assert (=> setNonEmpty!3219 m!929139))

(declare-fun m!929141 () Bool)

(assert (=> mapNonEmpty!2785 m!929141))

(declare-fun m!929143 () Bool)

(assert (=> b!662749 m!929143))

(declare-fun e!410247 () Bool)

(declare-fun setRes!3221 () Bool)

(declare-fun b!662750 () Bool)

(declare-fun tp!202344 () Bool)

(assert (=> b!662750 (= e!410247 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (t!86501 mapDefault!2783))))) setRes!3221 tp!202344))))

(declare-fun condSetEmpty!3221 () Bool)

(assert (=> b!662750 (= condSetEmpty!3221 (= (_2!4176 (h!12655 (t!86501 mapDefault!2783))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3221 () Bool)

(assert (=> setIsEmpty!3221 setRes!3221))

(declare-fun setNonEmpty!3221 () Bool)

(declare-fun tp!202343 () Bool)

(declare-fun setElem!3221 () Context!434)

(assert (=> setNonEmpty!3221 (= setRes!3221 (and tp!202343 (inv!9324 setElem!3221)))))

(declare-fun setRest!3221 () (InoxSet Context!434))

(assert (=> setNonEmpty!3221 (= (_2!4176 (h!12655 (t!86501 mapDefault!2783))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3221 true) setRest!3221))))

(assert (=> b!662406 (= tp!202269 e!410247)))

(assert (= (and b!662750 condSetEmpty!3221) setIsEmpty!3221))

(assert (= (and b!662750 (not condSetEmpty!3221)) setNonEmpty!3221))

(assert (= (and b!662406 ((_ is Cons!7254) (t!86501 mapDefault!2783))) b!662750))

(declare-fun m!929145 () Bool)

(assert (=> b!662750 m!929145))

(declare-fun m!929147 () Bool)

(assert (=> setNonEmpty!3221 m!929147))

(declare-fun b!662751 () Bool)

(declare-fun tp!202346 () Bool)

(declare-fun setRes!3222 () Bool)

(declare-fun e!410250 () Bool)

(assert (=> b!662751 (= e!410250 (and (inv!9324 (_2!4175 (_1!4176 (h!12655 (t!86501 mapValue!2783))))) setRes!3222 tp!202346))))

(declare-fun condSetEmpty!3222 () Bool)

(assert (=> b!662751 (= condSetEmpty!3222 (= (_2!4176 (h!12655 (t!86501 mapValue!2783))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3222 () Bool)

(assert (=> setIsEmpty!3222 setRes!3222))

(declare-fun setNonEmpty!3222 () Bool)

(declare-fun tp!202345 () Bool)

(declare-fun setElem!3222 () Context!434)

(assert (=> setNonEmpty!3222 (= setRes!3222 (and tp!202345 (inv!9324 setElem!3222)))))

(declare-fun setRest!3222 () (InoxSet Context!434))

(assert (=> setNonEmpty!3222 (= (_2!4176 (h!12655 (t!86501 mapValue!2783))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3222 true) setRest!3222))))

(assert (=> b!662405 (= tp!202270 e!410250)))

(assert (= (and b!662751 condSetEmpty!3222) setIsEmpty!3222))

(assert (= (and b!662751 (not condSetEmpty!3222)) setNonEmpty!3222))

(assert (= (and b!662405 ((_ is Cons!7254) (t!86501 mapValue!2783))) b!662751))

(declare-fun m!929149 () Bool)

(assert (=> b!662751 m!929149))

(declare-fun m!929151 () Bool)

(assert (=> setNonEmpty!3222 m!929151))

(declare-fun condSetEmpty!3223 () Bool)

(assert (=> setNonEmpty!3191 (= condSetEmpty!3223 (= setRest!3191 ((as const (Array Context!434 Bool)) false)))))

(declare-fun setRes!3223 () Bool)

(assert (=> setNonEmpty!3191 (= tp!202285 setRes!3223)))

(declare-fun setIsEmpty!3223 () Bool)

(assert (=> setIsEmpty!3223 setRes!3223))

(declare-fun setNonEmpty!3223 () Bool)

(declare-fun tp!202347 () Bool)

(declare-fun setElem!3223 () Context!434)

(assert (=> setNonEmpty!3223 (= setRes!3223 (and tp!202347 (inv!9324 setElem!3223)))))

(declare-fun setRest!3223 () (InoxSet Context!434))

(assert (=> setNonEmpty!3223 (= setRest!3191 ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3223 true) setRest!3223))))

(assert (= (and setNonEmpty!3191 condSetEmpty!3223) setIsEmpty!3223))

(assert (= (and setNonEmpty!3191 (not condSetEmpty!3223)) setNonEmpty!3223))

(declare-fun m!929153 () Bool)

(assert (=> setNonEmpty!3223 m!929153))

(declare-fun b!662752 () Bool)

(declare-fun setRes!3224 () Bool)

(declare-fun tp!202348 () Bool)

(declare-fun e!410256 () Bool)

(assert (=> b!662752 (= e!410256 (and (inv!9324 (_1!4173 (_1!4174 (h!12654 (t!86500 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))))) setRes!3224 tp!202348))))

(declare-fun condSetEmpty!3224 () Bool)

(assert (=> b!662752 (= condSetEmpty!3224 (= (_2!4174 (h!12654 (t!86500 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))) ((as const (Array Context!434 Bool)) false)))))

(declare-fun setIsEmpty!3224 () Bool)

(assert (=> setIsEmpty!3224 setRes!3224))

(declare-fun setNonEmpty!3224 () Bool)

(declare-fun tp!202349 () Bool)

(declare-fun setElem!3224 () Context!434)

(assert (=> setNonEmpty!3224 (= setRes!3224 (and tp!202349 (inv!9324 setElem!3224)))))

(declare-fun setRest!3224 () (InoxSet Context!434))

(assert (=> setNonEmpty!3224 (= (_2!4174 (h!12654 (t!86500 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))) ((_ map or) (store ((as const (Array Context!434 Bool)) false) setElem!3224 true) setRest!3224))))

(assert (=> b!662414 (= tp!202284 e!410256)))

(assert (= (and b!662752 condSetEmpty!3224) setIsEmpty!3224))

(assert (= (and b!662752 (not condSetEmpty!3224)) setNonEmpty!3224))

(assert (= (and b!662414 ((_ is Cons!7253) (t!86500 (zeroValue!957 (v!17385 (underlying!1583 (v!17386 (underlying!1584 (cache!1059 cacheUp!335))))))))) b!662752))

(declare-fun m!929155 () Bool)

(assert (=> b!662752 m!929155))

(declare-fun m!929157 () Bool)

(assert (=> setNonEmpty!3224 m!929157))

(declare-fun b_lambda!25783 () Bool)

(assert (= b_lambda!25781 (or d!226273 b_lambda!25783)))

(declare-fun bs!95007 () Bool)

(declare-fun d!226501 () Bool)

(assert (= bs!95007 (and d!226501 d!226273)))

(assert (=> bs!95007 (= (dynLambda!3824 lambda!20542 (h!12658 (list!3058 lt!282195))) (rulesProduceIndividualToken!529 Lexer!1283 lt!282194 (h!12658 (list!3058 lt!282195))))))

(assert (=> bs!95007 m!928459))

(assert (=> b!662533 d!226501))

(check-sat (not b!662592) (not setNonEmpty!3199) (not b!662669) (not d!226373) (not b!662647) (not b!662500) (not b!662339) (not d!226385) (not b!662443) (not setNonEmpty!3201) (not b!662623) (not setNonEmpty!3214) (not b!662740) (not b_lambda!25783) (not bm!43412) (not b!662447) (not d!226421) (not d!226375) (not b!662480) (not b!662706) (not b!662607) (not b!662515) (not b!662743) (not bs!94665) (not b!662744) (not bs!94675) (not setNonEmpty!3219) (not b!662748) (not b!662463) (not b!662745) (not d!226415) (not b!662707) (not b!662663) (not setNonEmpty!3206) (not bs!94677) (not b!662502) (not bm!43413) (not b!662709) (not b!662479) (not d!226393) (not b!662693) (not b!662487) (not b!662692) (not b!662751) (not b!662482) (not setNonEmpty!3208) (not b!662440) (not b!662651) (not b!662650) (not d!226443) (not d!226377) (not b!662636) (not b!662672) (not b!662703) (not b!662593) (not b!662484) (not b!662439) (not d!226371) (not d!226469) (not d!226405) (not d!226349) (not bs!95007) (not d!226441) (not d!226445) (not b!662641) (not b!662752) (not b!662655) (not d!226353) (not b!662662) (not b!662696) (not b!662483) (not d!226439) (not d!226461) (not d!226463) (not mapNonEmpty!2785) (not b!662488) (not d!226437) (not b!662517) (not d!226455) (not b!662694) (not b!662444) (not d!226401) (not d!226383) (not b!662730) (not b!662469) (not b!662699) (not setNonEmpty!3217) (not d!226465) (not b!662639) (not setNonEmpty!3207) (not b!662481) b_and!62961 (not setNonEmpty!3213) (not d!226403) (not b!662448) (not b!662742) (not b!662695) (not bs!94669) (not b!662620) (not b!662615) (not b!662581) (not b!662646) (not d!226347) (not bs!94679) (not d!226499) (not b!662700) (not b!662741) (not d!226449) (not b!662616) (not b!662673) (not b!662638) (not b!662486) (not b!662640) (not b!662490) (not b!662520) (not b!662534) (not b!662341) (not setNonEmpty!3220) (not setNonEmpty!3216) (not d!226413) (not b!662637) (not b!662750) (not d!226391) (not d!226399) (not d!226495) (not setNonEmpty!3210) (not d!226473) (not b!662579) (not d!226433) (not setNonEmpty!3223) (not d!226435) (not bs!94674) (not d!226479) (not setNonEmpty!3200) (not b!662525) (not b!662678) (not setNonEmpty!3203) (not setNonEmpty!3205) (not b!662608) (not d!226387) (not setNonEmpty!3211) (not setNonEmpty!3215) (not bs!94671) (not d!226363) (not b!662664) b_and!62965 (not b!662591) (not b!662475) (not b!662747) (not d!226397) (not bs!94678) (not b!662670) (not bs!94673) (not setNonEmpty!3202) (not bs!94661) (not d!226345) (not setNonEmpty!3209) (not setNonEmpty!3204) (not b!662575) (not b_next!19231) (not bm!43414) (not b!662485) (not setNonEmpty!3221) (not b!662577) (not setNonEmpty!3198) (not d!226429) (not d!226425) (not b!662513) (not bs!94676) (not b_lambda!25779) (not d!226411) (not b!662621) (not b!662578) (not d!226395) (not d!226355) (not setNonEmpty!3212) (not b!662585) (not d!226471) (not b!662342) (not b!662739) (not d!226419) b_and!62959 (not d!226417) (not setNonEmpty!3222) (not d!226491) (not b!662704) (not d!226389) (not b_next!19233) (not d!226489) (not b_next!19229) (not b!662584) (not setNonEmpty!3197) (not b_next!19235) (not d!226369) (not d!226357) (not b!662476) b_and!62963 (not d!226483) (not b!662749) (not d!226487) (not b!662746) (not d!226481) (not b!662705) (not b!662523) (not d!226379) (not setNonEmpty!3218) (not d!226365) (not b!662708) (not b!662691) (not b!662619) (not d!226467) (not b!662468) (not b!662467) (not b!662474) (not setNonEmpty!3224) (not b!662461) (not d!226341) (not b!662477) (not bs!94667) (not d!226381) (not d!226485) (not d!226451) (not d!226351) (not d!226407) (not b!662654) (not mapNonEmpty!2784) (not b!662478) (not b!662514) (not bs!94663) (not d!226497))
(check-sat b_and!62961 b_and!62965 (not b_next!19231) b_and!62963 b_and!62959 (not b_next!19233) (not b_next!19229) (not b_next!19235))
