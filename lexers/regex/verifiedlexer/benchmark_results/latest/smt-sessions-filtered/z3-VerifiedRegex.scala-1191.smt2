; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61970 () Bool)

(assert start!61970)

(declare-fun b!632780 () Bool)

(declare-fun b_free!18541 () Bool)

(declare-fun b_next!18557 () Bool)

(assert (=> b!632780 (= b_free!18541 (not b_next!18557))))

(declare-fun tp!197183 () Bool)

(declare-fun b_and!62335 () Bool)

(assert (=> b!632780 (= tp!197183 b_and!62335)))

(declare-fun b!632773 () Bool)

(declare-fun b_free!18543 () Bool)

(declare-fun b_next!18559 () Bool)

(assert (=> b!632773 (= b_free!18543 (not b_next!18559))))

(declare-fun tp!197179 () Bool)

(declare-fun b_and!62337 () Bool)

(assert (=> b!632773 (= tp!197179 b_and!62337)))

(declare-fun b!632765 () Bool)

(declare-fun b_free!18545 () Bool)

(declare-fun b_next!18561 () Bool)

(assert (=> b!632765 (= b_free!18545 (not b_next!18561))))

(declare-fun tp!197177 () Bool)

(declare-fun b_and!62339 () Bool)

(assert (=> b!632765 (= tp!197177 b_and!62339)))

(declare-fun b!632764 () Bool)

(declare-fun b_free!18547 () Bool)

(declare-fun b_next!18563 () Bool)

(assert (=> b!632764 (= b_free!18547 (not b_next!18563))))

(declare-fun tp!197182 () Bool)

(declare-fun b_and!62341 () Bool)

(assert (=> b!632764 (= tp!197182 b_and!62341)))

(declare-fun b!632763 () Bool)

(declare-fun res!274394 () Bool)

(declare-fun e!384330 () Bool)

(assert (=> b!632763 (=> (not res!274394) (not e!384330))))

(declare-datatypes ((List!6671 0))(
  ( (Nil!6657) (Cons!6657 (h!12058 (_ BitVec 16)) (t!83642 List!6671)) )
))
(declare-datatypes ((TokenValue!1387 0))(
  ( (FloatLiteralValue!2774 (text!10154 List!6671)) (TokenValueExt!1386 (__x!4699 Int)) (Broken!6935 (value!43685 List!6671)) (Object!1400) (End!1387) (Def!1387) (Underscore!1387) (Match!1387) (Else!1387) (Error!1387) (Case!1387) (If!1387) (Extends!1387) (Abstract!1387) (Class!1387) (Val!1387) (DelimiterValue!2774 (del!1447 List!6671)) (KeywordValue!1393 (value!43686 List!6671)) (CommentValue!2774 (value!43687 List!6671)) (WhitespaceValue!2774 (value!43688 List!6671)) (IndentationValue!1387 (value!43689 List!6671)) (String!8670) (Int32!1387) (Broken!6936 (value!43690 List!6671)) (Boolean!1388) (Unit!11703) (OperatorValue!1390 (op!1447 List!6671)) (IdentifierValue!2774 (value!43691 List!6671)) (IdentifierValue!2775 (value!43692 List!6671)) (WhitespaceValue!2775 (value!43693 List!6671)) (True!2774) (False!2774) (Broken!6937 (value!43694 List!6671)) (Broken!6938 (value!43695 List!6671)) (True!2775) (RightBrace!1387) (RightBracket!1387) (Colon!1387) (Null!1387) (Comma!1387) (LeftBracket!1387) (False!2775) (LeftBrace!1387) (ImaginaryLiteralValue!1387 (text!10155 List!6671)) (StringLiteralValue!4161 (value!43696 List!6671)) (EOFValue!1387 (value!43697 List!6671)) (IdentValue!1387 (value!43698 List!6671)) (DelimiterValue!2775 (value!43699 List!6671)) (DedentValue!1387 (value!43700 List!6671)) (NewLineValue!1387 (value!43701 List!6671)) (IntegerValue!4161 (value!43702 (_ BitVec 32)) (text!10156 List!6671)) (IntegerValue!4162 (value!43703 Int) (text!10157 List!6671)) (Times!1387) (Or!1387) (Equal!1387) (Minus!1387) (Broken!6939 (value!43704 List!6671)) (And!1387) (Div!1387) (LessEqual!1387) (Mod!1387) (Concat!3074) (Not!1387) (Plus!1387) (SpaceValue!1387 (value!43705 List!6671)) (IntegerValue!4163 (value!43706 Int) (text!10158 List!6671)) (StringLiteralValue!4162 (text!10159 List!6671)) (FloatLiteralValue!2775 (text!10160 List!6671)) (BytesLiteralValue!1387 (value!43707 List!6671)) (CommentValue!2775 (value!43708 List!6671)) (StringLiteralValue!4163 (value!43709 List!6671)) (ErrorTokenValue!1387 (msg!1448 List!6671)) )
))
(declare-datatypes ((Regex!1687 0))(
  ( (ElementMatch!1687 (c!116185 (_ BitVec 16))) (Concat!3075 (regOne!3886 Regex!1687) (regTwo!3886 Regex!1687)) (EmptyExpr!1687) (Star!1687 (reg!2016 Regex!1687)) (EmptyLang!1687) (Union!1687 (regOne!3887 Regex!1687) (regTwo!3887 Regex!1687)) )
))
(declare-datatypes ((String!8671 0))(
  ( (String!8672 (value!43710 String)) )
))
(declare-datatypes ((IArray!4435 0))(
  ( (IArray!4436 (innerList!2275 List!6671)) )
))
(declare-datatypes ((Conc!2217 0))(
  ( (Node!2217 (left!5338 Conc!2217) (right!5668 Conc!2217) (csize!4664 Int) (cheight!2428 Int)) (Leaf!3409 (xs!4858 IArray!4435) (csize!4665 Int)) (Empty!2217) )
))
(declare-datatypes ((BalanceConc!4446 0))(
  ( (BalanceConc!4447 (c!116186 Conc!2217)) )
))
(declare-datatypes ((TokenValueInjection!2526 0))(
  ( (TokenValueInjection!2527 (toValue!2294 Int) (toChars!2153 Int)) )
))
(declare-datatypes ((Rule!2506 0))(
  ( (Rule!2507 (regex!1353 Regex!1687) (tag!1615 String!8671) (isSeparator!1353 Bool) (transformation!1353 TokenValueInjection!2526)) )
))
(declare-datatypes ((Token!2430 0))(
  ( (Token!2431 (value!43711 TokenValue!1387) (rule!2149 Rule!2506) (size!5232 Int) (originalCharacters!1386 List!6671)) )
))
(declare-datatypes ((List!6672 0))(
  ( (Nil!6658) (Cons!6658 (h!12059 Token!2430) (t!83643 List!6672)) )
))
(declare-datatypes ((IArray!4437 0))(
  ( (IArray!4438 (innerList!2276 List!6672)) )
))
(declare-datatypes ((Conc!2218 0))(
  ( (Node!2218 (left!5339 Conc!2218) (right!5669 Conc!2218) (csize!4666 Int) (cheight!2429 Int)) (Leaf!3410 (xs!4859 IArray!4437) (csize!4667 Int)) (Empty!2218) )
))
(declare-datatypes ((List!6673 0))(
  ( (Nil!6659) (Cons!6659 (h!12060 Rule!2506) (t!83644 List!6673)) )
))
(declare-datatypes ((BalanceConc!4448 0))(
  ( (BalanceConc!4449 (c!116187 Conc!2218)) )
))
(declare-datatypes ((PrintableTokens!88 0))(
  ( (PrintableTokens!89 (rules!8163 List!6673) (tokens!1176 BalanceConc!4448)) )
))
(declare-fun printableTokens!2 () PrintableTokens!88)

(declare-fun usesJsonRules!0 (PrintableTokens!88) Bool)

(assert (=> b!632763 (= res!274394 (usesJsonRules!0 printableTokens!2))))

(declare-fun mapIsEmpty!2428 () Bool)

(declare-fun mapRes!2428 () Bool)

(assert (=> mapIsEmpty!2428 mapRes!2428))

(declare-fun tp!197174 () Bool)

(declare-fun tp!197184 () Bool)

(declare-fun e!384318 () Bool)

(declare-datatypes ((List!6674 0))(
  ( (Nil!6660) (Cons!6660 (h!12061 Regex!1687) (t!83645 List!6674)) )
))
(declare-datatypes ((Context!346 0))(
  ( (Context!347 (exprs!673 List!6674)) )
))
(declare-datatypes ((tuple3!448 0))(
  ( (tuple3!449 (_1!3893 Regex!1687) (_2!3893 Context!346) (_3!275 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7236 0))(
  ( (tuple2!7237 (_1!3894 tuple3!448) (_2!3894 (InoxSet Context!346))) )
))
(declare-datatypes ((List!6675 0))(
  ( (Nil!6661) (Cons!6661 (h!12062 tuple2!7236) (t!83646 List!6675)) )
))
(declare-datatypes ((array!2363 0))(
  ( (array!2364 (arr!1075 (Array (_ BitVec 32) List!6675)) (size!5233 (_ BitVec 32))) )
))
(declare-datatypes ((array!2365 0))(
  ( (array!2366 (arr!1076 (Array (_ BitVec 32) (_ BitVec 64))) (size!5234 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1232 0))(
  ( (LongMapFixedSize!1233 (defaultEntry!972 Int) (mask!2339 (_ BitVec 32)) (extraKeys!863 (_ BitVec 32)) (zeroValue!873 List!6675) (minValue!873 List!6675) (_size!1341 (_ BitVec 32)) (_keys!910 array!2365) (_values!895 array!2363) (_vacant!677 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2405 0))(
  ( (Cell!2406 (v!16724 LongMapFixedSize!1232)) )
))
(declare-datatypes ((MutLongMap!616 0))(
  ( (LongMap!616 (underlying!1415 Cell!2405)) (MutLongMapExt!615 (__x!4700 Int)) )
))
(declare-datatypes ((Cell!2407 0))(
  ( (Cell!2408 (v!16725 MutLongMap!616)) )
))
(declare-datatypes ((Hashable!588 0))(
  ( (HashableExt!587 (__x!4701 Int)) )
))
(declare-datatypes ((MutableMap!588 0))(
  ( (MutableMapExt!587 (__x!4702 Int)) (HashMap!588 (underlying!1416 Cell!2407) (hashF!2496 Hashable!588) (_size!1342 (_ BitVec 32)) (defaultValue!739 Int)) )
))
(declare-datatypes ((CacheDown!248 0))(
  ( (CacheDown!249 (cache!975 MutableMap!588)) )
))
(declare-fun cacheDown!364 () CacheDown!248)

(declare-fun e!384320 () Bool)

(declare-fun array_inv!786 (array!2365) Bool)

(declare-fun array_inv!787 (array!2363) Bool)

(assert (=> b!632764 (= e!384318 (and tp!197182 tp!197184 tp!197174 (array_inv!786 (_keys!910 (v!16724 (underlying!1415 (v!16725 (underlying!1416 (cache!975 cacheDown!364))))))) (array_inv!787 (_values!895 (v!16724 (underlying!1415 (v!16725 (underlying!1416 (cache!975 cacheDown!364))))))) e!384320))))

(declare-fun e!384321 () Bool)

(declare-fun e!384331 () Bool)

(assert (=> b!632765 (= e!384321 (and e!384331 tp!197177))))

(declare-fun tp!197185 () Bool)

(declare-fun e!384323 () Bool)

(declare-fun b!632766 () Bool)

(declare-fun e!384334 () Bool)

(declare-fun inv!8539 (BalanceConc!4448) Bool)

(assert (=> b!632766 (= e!384334 (and tp!197185 (inv!8539 (tokens!1176 printableTokens!2)) e!384323))))

(declare-fun b!632767 () Bool)

(declare-fun res!274388 () Bool)

(declare-fun e!384317 () Bool)

(assert (=> b!632767 (=> res!274388 e!384317)))

(declare-datatypes ((tuple2!7238 0))(
  ( (tuple2!7239 (_1!3895 Context!346) (_2!3895 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7240 0))(
  ( (tuple2!7241 (_1!3896 tuple2!7238) (_2!3896 (InoxSet Context!346))) )
))
(declare-datatypes ((List!6676 0))(
  ( (Nil!6662) (Cons!6662 (h!12063 tuple2!7240) (t!83647 List!6676)) )
))
(declare-datatypes ((Hashable!589 0))(
  ( (HashableExt!588 (__x!4703 Int)) )
))
(declare-datatypes ((array!2367 0))(
  ( (array!2368 (arr!1077 (Array (_ BitVec 32) List!6676)) (size!5235 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1234 0))(
  ( (LongMapFixedSize!1235 (defaultEntry!973 Int) (mask!2340 (_ BitVec 32)) (extraKeys!864 (_ BitVec 32)) (zeroValue!874 List!6676) (minValue!874 List!6676) (_size!1343 (_ BitVec 32)) (_keys!911 array!2365) (_values!896 array!2367) (_vacant!678 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2409 0))(
  ( (Cell!2410 (v!16726 LongMapFixedSize!1234)) )
))
(declare-datatypes ((MutLongMap!617 0))(
  ( (LongMap!617 (underlying!1417 Cell!2409)) (MutLongMapExt!616 (__x!4704 Int)) )
))
(declare-datatypes ((Cell!2411 0))(
  ( (Cell!2412 (v!16727 MutLongMap!617)) )
))
(declare-datatypes ((MutableMap!589 0))(
  ( (MutableMapExt!588 (__x!4705 Int)) (HashMap!589 (underlying!1418 Cell!2411) (hashF!2497 Hashable!589) (_size!1344 (_ BitVec 32)) (defaultValue!740 Int)) )
))
(declare-datatypes ((CacheUp!250 0))(
  ( (CacheUp!251 (cache!976 MutableMap!589)) )
))
(declare-datatypes ((Option!1638 0))(
  ( (None!1637) (Some!1637 (v!16728 PrintableTokens!88)) )
))
(declare-datatypes ((tuple3!450 0))(
  ( (tuple3!451 (_1!3897 Option!1638) (_2!3897 CacheUp!250) (_3!276 CacheDown!248)) )
))
(declare-fun lt!270073 () tuple3!450)

(assert (=> b!632767 (= res!274388 (not (usesJsonRules!0 (v!16728 (_1!3897 lt!270073)))))))

(declare-fun b!632768 () Bool)

(declare-fun tp!197180 () Bool)

(declare-fun inv!8540 (Conc!2218) Bool)

(assert (=> b!632768 (= e!384323 (and (inv!8540 (c!116187 (tokens!1176 printableTokens!2))) tp!197180))))

(declare-fun b!632769 () Bool)

(declare-fun res!274392 () Bool)

(assert (=> b!632769 (=> res!274392 e!384317)))

(declare-fun lt!270071 () tuple3!450)

(assert (=> b!632769 (= res!274392 (not (usesJsonRules!0 (v!16728 (_1!3897 lt!270071)))))))

(declare-fun mapIsEmpty!2429 () Bool)

(declare-fun mapRes!2429 () Bool)

(assert (=> mapIsEmpty!2429 mapRes!2429))

(declare-fun b!632770 () Bool)

(declare-fun e!384322 () Bool)

(declare-fun e!384328 () Bool)

(assert (=> b!632770 (= e!384322 e!384328)))

(declare-fun res!274395 () Bool)

(declare-fun e!384327 () Bool)

(assert (=> start!61970 (=> (not res!274395) (not e!384327))))

(declare-fun lt!270072 () Int)

(assert (=> start!61970 (= res!274395 (> lt!270072 0))))

(declare-fun size!5236 (PrintableTokens!88) Int)

(assert (=> start!61970 (= lt!270072 (size!5236 printableTokens!2))))

(assert (=> start!61970 e!384327))

(declare-fun inv!8541 (PrintableTokens!88) Bool)

(assert (=> start!61970 (and (inv!8541 printableTokens!2) e!384334)))

(declare-fun e!384335 () Bool)

(declare-fun inv!8542 (CacheDown!248) Bool)

(assert (=> start!61970 (and (inv!8542 cacheDown!364) e!384335)))

(declare-fun cacheUp!351 () CacheUp!250)

(declare-fun e!384316 () Bool)

(declare-fun inv!8543 (CacheUp!250) Bool)

(assert (=> start!61970 (and (inv!8543 cacheUp!351) e!384316)))

(declare-fun b!632771 () Bool)

(declare-datatypes ((List!6677 0))(
  ( (Nil!6663) (Cons!6663 (h!12064 PrintableTokens!88) (t!83648 List!6677)) )
))
(declare-datatypes ((IArray!4439 0))(
  ( (IArray!4440 (innerList!2277 List!6677)) )
))
(declare-datatypes ((Conc!2219 0))(
  ( (Node!2219 (left!5340 Conc!2219) (right!5670 Conc!2219) (csize!4668 Int) (cheight!2430 Int)) (Leaf!3411 (xs!4860 IArray!4439) (csize!4669 Int)) (Empty!2219) )
))
(declare-datatypes ((BalanceConc!4450 0))(
  ( (BalanceConc!4451 (c!116188 Conc!2219)) )
))
(declare-fun lt!270077 () BalanceConc!4450)

(declare-fun lambda!17486 () Int)

(declare-fun forall!1680 (BalanceConc!4450 Int) Bool)

(assert (=> b!632771 (= e!384317 (forall!1680 lt!270077 lambda!17486))))

(declare-fun lt!270082 () PrintableTokens!88)

(declare-fun lt!270076 () List!6673)

(declare-fun emptyPrintableTokens!1 (List!6673) PrintableTokens!88)

(assert (=> b!632771 (= lt!270082 (emptyPrintableTokens!1 lt!270076))))

(declare-datatypes ((tuple2!7242 0))(
  ( (tuple2!7243 (_1!3898 Int) (_2!3898 PrintableTokens!88)) )
))
(declare-datatypes ((List!6678 0))(
  ( (Nil!6664) (Cons!6664 (h!12065 tuple2!7242) (t!83649 List!6678)) )
))
(declare-datatypes ((IArray!4441 0))(
  ( (IArray!4442 (innerList!2278 List!6678)) )
))
(declare-datatypes ((Conc!2220 0))(
  ( (Node!2220 (left!5341 Conc!2220) (right!5671 Conc!2220) (csize!4670 Int) (cheight!2431 Int)) (Leaf!3412 (xs!4861 IArray!4441) (csize!4671 Int)) (Empty!2220) )
))
(declare-datatypes ((BalanceConc!4452 0))(
  ( (BalanceConc!4453 (c!116189 Conc!2220)) )
))
(declare-fun lt!270081 () BalanceConc!4452)

(declare-fun lambda!17485 () Int)

(declare-fun map!1417 (BalanceConc!4452 Int) BalanceConc!4450)

(assert (=> b!632771 (= lt!270077 (map!1417 lt!270081 lambda!17485))))

(declare-fun b!632772 () Bool)

(declare-fun res!274390 () Bool)

(assert (=> b!632772 (=> res!274390 e!384317)))

(declare-fun lt!270074 () tuple3!450)

(assert (=> b!632772 (= res!274390 (not (usesJsonRules!0 (v!16728 (_1!3897 lt!270074)))))))

(declare-fun tp!197181 () Bool)

(declare-fun e!384336 () Bool)

(declare-fun tp!197175 () Bool)

(declare-fun e!384325 () Bool)

(declare-fun array_inv!788 (array!2367) Bool)

(assert (=> b!632773 (= e!384325 (and tp!197179 tp!197181 tp!197175 (array_inv!786 (_keys!911 (v!16726 (underlying!1417 (v!16727 (underlying!1418 (cache!976 cacheUp!351))))))) (array_inv!788 (_values!896 (v!16726 (underlying!1417 (v!16727 (underlying!1418 (cache!976 cacheUp!351))))))) e!384336))))

(declare-fun b!632774 () Bool)

(assert (=> b!632774 (= e!384328 e!384325)))

(declare-fun b!632775 () Bool)

(assert (=> b!632775 (= e!384327 e!384330)))

(declare-fun res!274389 () Bool)

(assert (=> b!632775 (=> (not res!274389) (not e!384330))))

(declare-fun isEmpty!4639 (List!6673) Bool)

(assert (=> b!632775 (= res!274389 (not (isEmpty!4639 lt!270076)))))

(declare-datatypes ((JsonLexer!158 0))(
  ( (JsonLexer!159) )
))
(declare-fun rules!109 (JsonLexer!158) List!6673)

(assert (=> b!632775 (= lt!270076 (rules!109 JsonLexer!159))))

(declare-fun mapNonEmpty!2428 () Bool)

(declare-fun tp!197173 () Bool)

(declare-fun tp!197178 () Bool)

(assert (=> mapNonEmpty!2428 (= mapRes!2429 (and tp!197173 tp!197178))))

(declare-fun mapValue!2428 () List!6676)

(declare-fun mapRest!2428 () (Array (_ BitVec 32) List!6676))

(declare-fun mapKey!2428 () (_ BitVec 32))

(assert (=> mapNonEmpty!2428 (= (arr!1077 (_values!896 (v!16726 (underlying!1417 (v!16727 (underlying!1418 (cache!976 cacheUp!351))))))) (store mapRest!2428 mapKey!2428 mapValue!2428))))

(declare-fun b!632776 () Bool)

(assert (=> b!632776 (= e!384335 e!384321)))

(declare-fun b!632777 () Bool)

(declare-fun tp!197172 () Bool)

(assert (=> b!632777 (= e!384336 (and tp!197172 mapRes!2429))))

(declare-fun condMapEmpty!2429 () Bool)

(declare-fun mapDefault!2429 () List!6676)

(assert (=> b!632777 (= condMapEmpty!2429 (= (arr!1077 (_values!896 (v!16726 (underlying!1417 (v!16727 (underlying!1418 (cache!976 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6676)) mapDefault!2429)))))

(declare-fun mapNonEmpty!2429 () Bool)

(declare-fun tp!197176 () Bool)

(declare-fun tp!197170 () Bool)

(assert (=> mapNonEmpty!2429 (= mapRes!2428 (and tp!197176 tp!197170))))

(declare-fun mapKey!2429 () (_ BitVec 32))

(declare-fun mapRest!2429 () (Array (_ BitVec 32) List!6675))

(declare-fun mapValue!2429 () List!6675)

(assert (=> mapNonEmpty!2429 (= (arr!1075 (_values!895 (v!16724 (underlying!1415 (v!16725 (underlying!1416 (cache!975 cacheDown!364))))))) (store mapRest!2429 mapKey!2429 mapValue!2429))))

(declare-fun b!632778 () Bool)

(assert (=> b!632778 (= e!384330 (not e!384317))))

(declare-fun res!274391 () Bool)

(assert (=> b!632778 (=> res!274391 e!384317)))

(get-info :version)

(assert (=> b!632778 (= res!274391 (or (not ((_ is Some!1637) (_1!3897 lt!270071))) (not ((_ is Some!1637) (_1!3897 lt!270074))) (not ((_ is Some!1637) (_1!3897 lt!270073)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!250 CacheDown!248) tuple3!450)

(assert (=> b!632778 (= lt!270073 (createRightBracketSeparator!0 (_2!3897 lt!270074) (_3!276 lt!270074)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!250 CacheDown!248) tuple3!450)

(assert (=> b!632778 (= lt!270074 (createLeftBracketSeparator!0 (_2!3897 lt!270071) (_3!276 lt!270071)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!250 CacheDown!248) tuple3!450)

(assert (=> b!632778 (= lt!270071 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(assert (=> b!632778 (forall!1680 (map!1417 lt!270081 lambda!17485) lambda!17486)))

(declare-datatypes ((Unit!11704 0))(
  ( (Unit!11705) )
))
(declare-fun lt!270075 () Unit!11704)

(declare-fun lt!270079 () List!6678)

(declare-fun mapPred!19 (List!6678 Int Int) Unit!11704)

(assert (=> b!632778 (= lt!270075 (mapPred!19 lt!270079 lambda!17485 lambda!17486))))

(declare-fun lt!270080 () Unit!11704)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6678) Unit!11704)

(assert (=> b!632778 (= lt!270080 (lemmaRemoveIdsPreservesRules!0 lt!270079))))

(declare-fun list!2831 (BalanceConc!4452) List!6678)

(assert (=> b!632778 (= lt!270079 (list!2831 lt!270081))))

(declare-fun lt!270068 () BalanceConc!4450)

(declare-fun lambda!17483 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4452) BalanceConc!4452)

(declare-fun map!1418 (BalanceConc!4450 Int) BalanceConc!4452)

(assert (=> b!632778 (= lt!270081 (sortObjectsByID!0 (map!1418 lt!270068 lambda!17483)))))

(declare-fun lt!270069 () Unit!11704)

(declare-fun lt!270070 () List!6677)

(declare-fun lambda!17484 () Int)

(declare-fun mapPred!20 (List!6677 Int Int) Unit!11704)

(assert (=> b!632778 (= lt!270069 (mapPred!20 lt!270070 lambda!17483 lambda!17484))))

(declare-fun lt!270078 () Unit!11704)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6677) Unit!11704)

(assert (=> b!632778 (= lt!270078 (lemmaAddIdsPreservesRules!0 lt!270070))))

(declare-fun list!2832 (BalanceConc!4450) List!6677)

(assert (=> b!632778 (= lt!270070 (list!2832 lt!270068))))

(declare-datatypes ((List!6679 0))(
  ( (Nil!6665) (Cons!6665 (h!12066 Int) (t!83650 List!6679)) )
))
(declare-datatypes ((IArray!4443 0))(
  ( (IArray!4444 (innerList!2279 List!6679)) )
))
(declare-datatypes ((Conc!2221 0))(
  ( (Node!2221 (left!5342 Conc!2221) (right!5672 Conc!2221) (csize!4672 Int) (cheight!2432 Int)) (Leaf!3413 (xs!4862 IArray!4443) (csize!4673 Int)) (Empty!2221) )
))
(declare-datatypes ((BalanceConc!4454 0))(
  ( (BalanceConc!4455 (c!116190 Conc!2221)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!88 Int BalanceConc!4454 BalanceConc!4450) BalanceConc!4450)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4448 Int Int BalanceConc!4454) BalanceConc!4454)

(assert (=> b!632778 (= lt!270068 (slicesMulti!0 printableTokens!2 lt!270072 (indicesOfOpenBraces!0 (tokens!1176 printableTokens!2) lt!270072 0 (BalanceConc!4455 Empty!2221)) (BalanceConc!4451 Empty!2219)))))

(declare-fun b!632779 () Bool)

(declare-fun e!384329 () Bool)

(declare-fun lt!270066 () MutLongMap!617)

(assert (=> b!632779 (= e!384329 (and e!384322 ((_ is LongMap!617) lt!270066)))))

(assert (=> b!632779 (= lt!270066 (v!16727 (underlying!1418 (cache!976 cacheUp!351))))))

(declare-fun e!384326 () Bool)

(assert (=> b!632780 (= e!384326 (and e!384329 tp!197183))))

(declare-fun b!632781 () Bool)

(declare-fun e!384324 () Bool)

(declare-fun e!384333 () Bool)

(assert (=> b!632781 (= e!384324 e!384333)))

(declare-fun b!632782 () Bool)

(declare-fun tp!197171 () Bool)

(assert (=> b!632782 (= e!384320 (and tp!197171 mapRes!2428))))

(declare-fun condMapEmpty!2428 () Bool)

(declare-fun mapDefault!2428 () List!6675)

(assert (=> b!632782 (= condMapEmpty!2428 (= (arr!1075 (_values!895 (v!16724 (underlying!1415 (v!16725 (underlying!1416 (cache!975 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6675)) mapDefault!2428)))))

(declare-fun b!632783 () Bool)

(declare-fun res!274393 () Bool)

(assert (=> b!632783 (=> (not res!274393) (not e!384330))))

(declare-datatypes ((LexerInterface!1237 0))(
  ( (LexerInterfaceExt!1234 (__x!4706 Int)) (Lexer!1235) )
))
(declare-fun rulesInvariant!1172 (LexerInterface!1237 List!6673) Bool)

(assert (=> b!632783 (= res!274393 (rulesInvariant!1172 Lexer!1235 lt!270076))))

(declare-fun b!632784 () Bool)

(assert (=> b!632784 (= e!384316 e!384326)))

(declare-fun b!632785 () Bool)

(assert (=> b!632785 (= e!384333 e!384318)))

(declare-fun b!632786 () Bool)

(declare-fun lt!270067 () MutLongMap!616)

(assert (=> b!632786 (= e!384331 (and e!384324 ((_ is LongMap!616) lt!270067)))))

(assert (=> b!632786 (= lt!270067 (v!16725 (underlying!1416 (cache!975 cacheDown!364))))))

(assert (= (and start!61970 res!274395) b!632775))

(assert (= (and b!632775 res!274389) b!632783))

(assert (= (and b!632783 res!274393) b!632763))

(assert (= (and b!632763 res!274394) b!632778))

(assert (= (and b!632778 (not res!274391)) b!632769))

(assert (= (and b!632769 (not res!274392)) b!632772))

(assert (= (and b!632772 (not res!274390)) b!632767))

(assert (= (and b!632767 (not res!274388)) b!632771))

(assert (= b!632766 b!632768))

(assert (= start!61970 b!632766))

(assert (= (and b!632782 condMapEmpty!2428) mapIsEmpty!2428))

(assert (= (and b!632782 (not condMapEmpty!2428)) mapNonEmpty!2429))

(assert (= b!632764 b!632782))

(assert (= b!632785 b!632764))

(assert (= b!632781 b!632785))

(assert (= (and b!632786 ((_ is LongMap!616) (v!16725 (underlying!1416 (cache!975 cacheDown!364))))) b!632781))

(assert (= b!632765 b!632786))

(assert (= (and b!632776 ((_ is HashMap!588) (cache!975 cacheDown!364))) b!632765))

(assert (= start!61970 b!632776))

(assert (= (and b!632777 condMapEmpty!2429) mapIsEmpty!2429))

(assert (= (and b!632777 (not condMapEmpty!2429)) mapNonEmpty!2428))

(assert (= b!632773 b!632777))

(assert (= b!632774 b!632773))

(assert (= b!632770 b!632774))

(assert (= (and b!632779 ((_ is LongMap!617) (v!16727 (underlying!1418 (cache!976 cacheUp!351))))) b!632770))

(assert (= b!632780 b!632779))

(assert (= (and b!632784 ((_ is HashMap!589) (cache!976 cacheUp!351))) b!632780))

(assert (= start!61970 b!632784))

(declare-fun m!903431 () Bool)

(assert (=> b!632763 m!903431))

(declare-fun m!903433 () Bool)

(assert (=> start!61970 m!903433))

(declare-fun m!903435 () Bool)

(assert (=> start!61970 m!903435))

(declare-fun m!903437 () Bool)

(assert (=> start!61970 m!903437))

(declare-fun m!903439 () Bool)

(assert (=> start!61970 m!903439))

(declare-fun m!903441 () Bool)

(assert (=> b!632764 m!903441))

(declare-fun m!903443 () Bool)

(assert (=> b!632764 m!903443))

(declare-fun m!903445 () Bool)

(assert (=> mapNonEmpty!2429 m!903445))

(declare-fun m!903447 () Bool)

(assert (=> b!632768 m!903447))

(declare-fun m!903449 () Bool)

(assert (=> b!632783 m!903449))

(declare-fun m!903451 () Bool)

(assert (=> b!632766 m!903451))

(declare-fun m!903453 () Bool)

(assert (=> b!632769 m!903453))

(declare-fun m!903455 () Bool)

(assert (=> b!632775 m!903455))

(declare-fun m!903457 () Bool)

(assert (=> b!632775 m!903457))

(declare-fun m!903459 () Bool)

(assert (=> b!632773 m!903459))

(declare-fun m!903461 () Bool)

(assert (=> b!632773 m!903461))

(declare-fun m!903463 () Bool)

(assert (=> b!632767 m!903463))

(declare-fun m!903465 () Bool)

(assert (=> b!632771 m!903465))

(declare-fun m!903467 () Bool)

(assert (=> b!632771 m!903467))

(declare-fun m!903469 () Bool)

(assert (=> b!632771 m!903469))

(declare-fun m!903471 () Bool)

(assert (=> b!632772 m!903471))

(declare-fun m!903473 () Bool)

(assert (=> mapNonEmpty!2428 m!903473))

(declare-fun m!903475 () Bool)

(assert (=> b!632778 m!903475))

(declare-fun m!903477 () Bool)

(assert (=> b!632778 m!903477))

(declare-fun m!903479 () Bool)

(assert (=> b!632778 m!903479))

(declare-fun m!903481 () Bool)

(assert (=> b!632778 m!903481))

(assert (=> b!632778 m!903469))

(declare-fun m!903483 () Bool)

(assert (=> b!632778 m!903483))

(assert (=> b!632778 m!903469))

(declare-fun m!903485 () Bool)

(assert (=> b!632778 m!903485))

(declare-fun m!903487 () Bool)

(assert (=> b!632778 m!903487))

(declare-fun m!903489 () Bool)

(assert (=> b!632778 m!903489))

(declare-fun m!903491 () Bool)

(assert (=> b!632778 m!903491))

(declare-fun m!903493 () Bool)

(assert (=> b!632778 m!903493))

(declare-fun m!903495 () Bool)

(assert (=> b!632778 m!903495))

(assert (=> b!632778 m!903475))

(declare-fun m!903497 () Bool)

(assert (=> b!632778 m!903497))

(declare-fun m!903499 () Bool)

(assert (=> b!632778 m!903499))

(assert (=> b!632778 m!903487))

(declare-fun m!903501 () Bool)

(assert (=> b!632778 m!903501))

(check-sat b_and!62337 (not start!61970) (not b!632767) (not mapNonEmpty!2429) (not b_next!18557) (not b_next!18559) (not b_next!18563) b_and!62335 (not b!632764) (not b!632783) (not b!632768) b_and!62341 (not mapNonEmpty!2428) (not b_next!18561) (not b!632771) b_and!62339 (not b!632769) (not b!632773) (not b!632766) (not b!632782) (not b!632763) (not b!632772) (not b!632778) (not b!632775) (not b!632777))
(check-sat b_and!62337 (not b_next!18557) (not b_next!18561) b_and!62339 (not b_next!18559) (not b_next!18563) b_and!62335 b_and!62341)
