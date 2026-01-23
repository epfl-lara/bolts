; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62356 () Bool)

(assert start!62356)

(declare-fun b!636683 () Bool)

(declare-fun b_free!18689 () Bool)

(declare-fun b_next!18713 () Bool)

(assert (=> b!636683 (= b_free!18689 (not b_next!18713))))

(declare-fun tp!198246 () Bool)

(declare-fun b_and!62483 () Bool)

(assert (=> b!636683 (= tp!198246 b_and!62483)))

(declare-fun b!636687 () Bool)

(declare-fun b_free!18691 () Bool)

(declare-fun b_next!18715 () Bool)

(assert (=> b!636687 (= b_free!18691 (not b_next!18715))))

(declare-fun tp!198250 () Bool)

(declare-fun b_and!62485 () Bool)

(assert (=> b!636687 (= tp!198250 b_and!62485)))

(declare-fun b!636692 () Bool)

(declare-fun b_free!18693 () Bool)

(declare-fun b_next!18717 () Bool)

(assert (=> b!636692 (= b_free!18693 (not b_next!18717))))

(declare-fun tp!198253 () Bool)

(declare-fun b_and!62487 () Bool)

(assert (=> b!636692 (= tp!198253 b_and!62487)))

(declare-fun b!636669 () Bool)

(declare-fun b_free!18695 () Bool)

(declare-fun b_next!18719 () Bool)

(assert (=> b!636669 (= b_free!18695 (not b_next!18719))))

(declare-fun tp!198243 () Bool)

(declare-fun b_and!62489 () Bool)

(assert (=> b!636669 (= tp!198243 b_and!62489)))

(declare-fun b!636664 () Bool)

(declare-datatypes ((List!6793 0))(
  ( (Nil!6779) (Cons!6779 (h!12180 (_ BitVec 16)) (t!84329 List!6793)) )
))
(declare-datatypes ((TokenValue!1402 0))(
  ( (FloatLiteralValue!2804 (text!10259 List!6793)) (TokenValueExt!1401 (__x!4812 Int)) (Broken!7010 (value!44113 List!6793)) (Object!1415) (End!1402) (Def!1402) (Underscore!1402) (Match!1402) (Else!1402) (Error!1402) (Case!1402) (If!1402) (Extends!1402) (Abstract!1402) (Class!1402) (Val!1402) (DelimiterValue!2804 (del!1462 List!6793)) (KeywordValue!1408 (value!44114 List!6793)) (CommentValue!2804 (value!44115 List!6793)) (WhitespaceValue!2804 (value!44116 List!6793)) (IndentationValue!1402 (value!44117 List!6793)) (String!8747) (Int32!1402) (Broken!7011 (value!44118 List!6793)) (Boolean!1403) (Unit!11817) (OperatorValue!1405 (op!1462 List!6793)) (IdentifierValue!2804 (value!44119 List!6793)) (IdentifierValue!2805 (value!44120 List!6793)) (WhitespaceValue!2805 (value!44121 List!6793)) (True!2804) (False!2804) (Broken!7012 (value!44122 List!6793)) (Broken!7013 (value!44123 List!6793)) (True!2805) (RightBrace!1402) (RightBracket!1402) (Colon!1402) (Null!1402) (Comma!1402) (LeftBracket!1402) (False!2805) (LeftBrace!1402) (ImaginaryLiteralValue!1402 (text!10260 List!6793)) (StringLiteralValue!4206 (value!44124 List!6793)) (EOFValue!1402 (value!44125 List!6793)) (IdentValue!1402 (value!44126 List!6793)) (DelimiterValue!2805 (value!44127 List!6793)) (DedentValue!1402 (value!44128 List!6793)) (NewLineValue!1402 (value!44129 List!6793)) (IntegerValue!4206 (value!44130 (_ BitVec 32)) (text!10261 List!6793)) (IntegerValue!4207 (value!44131 Int) (text!10262 List!6793)) (Times!1402) (Or!1402) (Equal!1402) (Minus!1402) (Broken!7014 (value!44132 List!6793)) (And!1402) (Div!1402) (LessEqual!1402) (Mod!1402) (Concat!3105) (Not!1402) (Plus!1402) (SpaceValue!1402 (value!44133 List!6793)) (IntegerValue!4208 (value!44134 Int) (text!10263 List!6793)) (StringLiteralValue!4207 (text!10264 List!6793)) (FloatLiteralValue!2805 (text!10265 List!6793)) (BytesLiteralValue!1402 (value!44135 List!6793)) (CommentValue!2805 (value!44136 List!6793)) (StringLiteralValue!4208 (value!44137 List!6793)) (ErrorTokenValue!1402 (msg!1463 List!6793)) )
))
(declare-datatypes ((Regex!1703 0))(
  ( (ElementMatch!1703 (c!116623 (_ BitVec 16))) (Concat!3106 (regOne!3918 Regex!1703) (regTwo!3918 Regex!1703)) (EmptyExpr!1703) (Star!1703 (reg!2032 Regex!1703)) (EmptyLang!1703) (Union!1703 (regOne!3919 Regex!1703) (regTwo!3919 Regex!1703)) )
))
(declare-datatypes ((String!8748 0))(
  ( (String!8749 (value!44138 String)) )
))
(declare-datatypes ((IArray!4553 0))(
  ( (IArray!4554 (innerList!2334 List!6793)) )
))
(declare-datatypes ((Conc!2276 0))(
  ( (Node!2276 (left!5411 Conc!2276) (right!5741 Conc!2276) (csize!4782 Int) (cheight!2487 Int)) (Leaf!3476 (xs!4917 IArray!4553) (csize!4783 Int)) (Empty!2276) )
))
(declare-datatypes ((BalanceConc!4564 0))(
  ( (BalanceConc!4565 (c!116624 Conc!2276)) )
))
(declare-datatypes ((TokenValueInjection!2556 0))(
  ( (TokenValueInjection!2557 (toValue!2309 Int) (toChars!2168 Int)) )
))
(declare-datatypes ((Rule!2536 0))(
  ( (Rule!2537 (regex!1368 Regex!1703) (tag!1630 String!8748) (isSeparator!1368 Bool) (transformation!1368 TokenValueInjection!2556)) )
))
(declare-datatypes ((Token!2458 0))(
  ( (Token!2459 (value!44139 TokenValue!1402) (rule!2163 Rule!2536) (size!5327 Int) (originalCharacters!1400 List!6793)) )
))
(declare-datatypes ((List!6794 0))(
  ( (Nil!6780) (Cons!6780 (h!12181 Token!2458) (t!84330 List!6794)) )
))
(declare-datatypes ((IArray!4555 0))(
  ( (IArray!4556 (innerList!2335 List!6794)) )
))
(declare-datatypes ((Conc!2277 0))(
  ( (Node!2277 (left!5412 Conc!2277) (right!5742 Conc!2277) (csize!4784 Int) (cheight!2488 Int)) (Leaf!3477 (xs!4918 IArray!4555) (csize!4785 Int)) (Empty!2277) )
))
(declare-datatypes ((List!6795 0))(
  ( (Nil!6781) (Cons!6781 (h!12182 Rule!2536) (t!84331 List!6795)) )
))
(declare-datatypes ((BalanceConc!4566 0))(
  ( (BalanceConc!4567 (c!116625 Conc!2277)) )
))
(declare-datatypes ((PrintableTokens!116 0))(
  ( (PrintableTokens!117 (rules!8189 List!6795) (tokens!1195 BalanceConc!4566)) )
))
(declare-datatypes ((Option!1651 0))(
  ( (None!1650) (Some!1650 (v!16866 PrintableTokens!116)) )
))
(declare-fun e!387793 () Option!1651)

(assert (=> b!636664 (= e!387793 None!1650)))

(declare-fun b!636665 () Bool)

(declare-fun e!387812 () Bool)

(declare-fun e!387811 () Bool)

(assert (=> b!636665 (= e!387812 e!387811)))

(declare-fun mapIsEmpty!2544 () Bool)

(declare-fun mapRes!2545 () Bool)

(assert (=> mapIsEmpty!2544 mapRes!2545))

(declare-fun b!636666 () Bool)

(declare-fun res!276499 () Bool)

(declare-fun e!387804 () Bool)

(assert (=> b!636666 (=> (not res!276499) (not e!387804))))

(declare-datatypes ((List!6796 0))(
  ( (Nil!6782) (Cons!6782 (h!12183 Regex!1703) (t!84332 List!6796)) )
))
(declare-datatypes ((Context!378 0))(
  ( (Context!379 (exprs!689 List!6796)) )
))
(declare-datatypes ((tuple2!7346 0))(
  ( (tuple2!7347 (_1!3981 Context!378) (_2!3981 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7348 0))(
  ( (tuple2!7349 (_1!3982 tuple2!7346) (_2!3982 (InoxSet Context!378))) )
))
(declare-datatypes ((List!6797 0))(
  ( (Nil!6783) (Cons!6783 (h!12184 tuple2!7348) (t!84333 List!6797)) )
))
(declare-datatypes ((Hashable!617 0))(
  ( (HashableExt!616 (__x!4813 Int)) )
))
(declare-datatypes ((array!2462 0))(
  ( (array!2463 (arr!1120 (Array (_ BitVec 32) List!6797)) (size!5328 (_ BitVec 32))) )
))
(declare-datatypes ((array!2464 0))(
  ( (array!2465 (arr!1121 (Array (_ BitVec 32) (_ BitVec 64))) (size!5329 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1290 0))(
  ( (LongMapFixedSize!1291 (defaultEntry!1001 Int) (mask!2376 (_ BitVec 32)) (extraKeys!892 (_ BitVec 32)) (zeroValue!902 List!6797) (minValue!902 List!6797) (_size!1399 (_ BitVec 32)) (_keys!939 array!2464) (_values!924 array!2462) (_vacant!706 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2521 0))(
  ( (Cell!2522 (v!16867 LongMapFixedSize!1290)) )
))
(declare-datatypes ((MutLongMap!645 0))(
  ( (LongMap!645 (underlying!1473 Cell!2521)) (MutLongMapExt!644 (__x!4814 Int)) )
))
(declare-datatypes ((Cell!2523 0))(
  ( (Cell!2524 (v!16868 MutLongMap!645)) )
))
(declare-datatypes ((MutableMap!617 0))(
  ( (MutableMapExt!616 (__x!4815 Int)) (HashMap!617 (underlying!1474 Cell!2523) (hashF!2525 Hashable!617) (_size!1400 (_ BitVec 32)) (defaultValue!768 Int)) )
))
(declare-datatypes ((CacheUp!278 0))(
  ( (CacheUp!279 (cache!1004 MutableMap!617)) )
))
(declare-datatypes ((tuple3!514 0))(
  ( (tuple3!515 (_1!3983 Regex!1703) (_2!3983 Context!378) (_3!308 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7350 0))(
  ( (tuple2!7351 (_1!3984 tuple3!514) (_2!3984 (InoxSet Context!378))) )
))
(declare-datatypes ((List!6798 0))(
  ( (Nil!6784) (Cons!6784 (h!12185 tuple2!7350) (t!84334 List!6798)) )
))
(declare-datatypes ((array!2466 0))(
  ( (array!2467 (arr!1122 (Array (_ BitVec 32) List!6798)) (size!5330 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1292 0))(
  ( (LongMapFixedSize!1293 (defaultEntry!1002 Int) (mask!2377 (_ BitVec 32)) (extraKeys!893 (_ BitVec 32)) (zeroValue!903 List!6798) (minValue!903 List!6798) (_size!1401 (_ BitVec 32)) (_keys!940 array!2464) (_values!925 array!2466) (_vacant!707 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2525 0))(
  ( (Cell!2526 (v!16869 LongMapFixedSize!1292)) )
))
(declare-datatypes ((MutLongMap!646 0))(
  ( (LongMap!646 (underlying!1475 Cell!2525)) (MutLongMapExt!645 (__x!4816 Int)) )
))
(declare-datatypes ((Cell!2527 0))(
  ( (Cell!2528 (v!16870 MutLongMap!646)) )
))
(declare-datatypes ((Hashable!618 0))(
  ( (HashableExt!617 (__x!4817 Int)) )
))
(declare-datatypes ((MutableMap!618 0))(
  ( (MutableMapExt!617 (__x!4818 Int)) (HashMap!618 (underlying!1476 Cell!2527) (hashF!2526 Hashable!618) (_size!1402 (_ BitVec 32)) (defaultValue!769 Int)) )
))
(declare-datatypes ((CacheDown!278 0))(
  ( (CacheDown!279 (cache!1005 MutableMap!618)) )
))
(declare-datatypes ((tuple3!516 0))(
  ( (tuple3!517 (_1!3985 Option!1651) (_2!3985 CacheUp!278) (_3!309 CacheDown!278)) )
))
(declare-fun lt!272463 () tuple3!516)

(get-info :version)

(assert (=> b!636666 (= res!276499 ((_ is Some!1650) (_1!3985 lt!272463)))))

(declare-fun lt!272461 () Option!1651)

(declare-fun createRightBracketSeparator!0 (CacheUp!278 CacheDown!278) tuple3!516)

(assert (=> b!636666 (= lt!272461 (_1!3985 (createRightBracketSeparator!0 (_2!3985 lt!272463) (_3!309 lt!272463))))))

(declare-fun lt!272443 () Option!1651)

(declare-fun lt!272442 () tuple3!516)

(assert (=> b!636666 (= lt!272443 (_1!3985 lt!272442))))

(declare-fun tp!198252 () Bool)

(declare-fun e!387799 () Bool)

(declare-fun b!636667 () Bool)

(declare-fun e!387806 () Bool)

(declare-fun printableTokens!2 () PrintableTokens!116)

(declare-fun inv!8625 (BalanceConc!4566) Bool)

(assert (=> b!636667 (= e!387799 (and tp!198252 (inv!8625 (tokens!1195 printableTokens!2)) e!387806))))

(declare-fun mapNonEmpty!2544 () Bool)

(declare-fun mapRes!2544 () Bool)

(declare-fun tp!198240 () Bool)

(declare-fun tp!198247 () Bool)

(assert (=> mapNonEmpty!2544 (= mapRes!2544 (and tp!198240 tp!198247))))

(declare-fun cacheDown!364 () CacheDown!278)

(declare-fun mapKey!2544 () (_ BitVec 32))

(declare-fun mapValue!2544 () List!6798)

(declare-fun mapRest!2544 () (Array (_ BitVec 32) List!6798))

(assert (=> mapNonEmpty!2544 (= (arr!1122 (_values!925 (v!16869 (underlying!1475 (v!16870 (underlying!1476 (cache!1005 cacheDown!364))))))) (store mapRest!2544 mapKey!2544 mapValue!2544))))

(declare-fun b!636668 () Bool)

(declare-fun e!387796 () Option!1651)

(declare-fun e!387797 () Option!1651)

(assert (=> b!636668 (= e!387796 e!387797)))

(declare-fun lt!272447 () Option!1651)

(assert (=> b!636668 (= lt!272447 (_1!3985 lt!272463))))

(declare-fun lt!272444 () Option!1651)

(assert (=> b!636668 (= lt!272444 (_1!3985 (createRightBracketSeparator!0 (_2!3985 lt!272463) (_3!309 lt!272463))))))

(declare-fun lt!272464 () List!6795)

(declare-datatypes ((tuple2!7352 0))(
  ( (tuple2!7353 (_1!3986 Int) (_2!3986 PrintableTokens!116)) )
))
(declare-datatypes ((List!6799 0))(
  ( (Nil!6785) (Cons!6785 (h!12186 tuple2!7352) (t!84335 List!6799)) )
))
(declare-datatypes ((IArray!4557 0))(
  ( (IArray!4558 (innerList!2336 List!6799)) )
))
(declare-datatypes ((Conc!2278 0))(
  ( (Node!2278 (left!5413 Conc!2278) (right!5743 Conc!2278) (csize!4786 Int) (cheight!2489 Int)) (Leaf!3478 (xs!4919 IArray!4557) (csize!4787 Int)) (Empty!2278) )
))
(declare-datatypes ((BalanceConc!4568 0))(
  ( (BalanceConc!4569 (c!116626 Conc!2278)) )
))
(declare-fun lt!272454 () BalanceConc!4568)

(declare-fun lt!272451 () Option!1651)

(declare-fun lambda!18187 () Int)

(declare-datatypes ((List!6800 0))(
  ( (Nil!6786) (Cons!6786 (h!12187 PrintableTokens!116) (t!84336 List!6800)) )
))
(declare-datatypes ((IArray!4559 0))(
  ( (IArray!4560 (innerList!2337 List!6800)) )
))
(declare-datatypes ((Conc!2279 0))(
  ( (Node!2279 (left!5414 Conc!2279) (right!5744 Conc!2279) (csize!4788 Int) (cheight!2490 Int)) (Leaf!3479 (xs!4920 IArray!4559) (csize!4789 Int)) (Empty!2279) )
))
(declare-datatypes ((BalanceConc!4570 0))(
  ( (BalanceConc!4571 (c!116627 Conc!2279)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4570 PrintableTokens!116 PrintableTokens!116) Option!1651)

(declare-fun map!1461 (BalanceConc!4568 Int) BalanceConc!4570)

(declare-fun emptyPrintableTokens!10 (List!6795) PrintableTokens!116)

(assert (=> b!636668 (= lt!272451 (recombineSlicesWithSep!0 (map!1461 lt!272454 lambda!18187) (v!16866 (_1!3985 lt!272442)) (emptyPrintableTokens!10 lt!272464)))))

(declare-fun c!116621 () Bool)

(assert (=> b!636668 (= c!116621 ((_ is Some!1650) lt!272451))))

(declare-fun tp!198249 () Bool)

(declare-fun cacheUp!351 () CacheUp!278)

(declare-fun e!387802 () Bool)

(declare-fun tp!198241 () Bool)

(declare-fun e!387803 () Bool)

(declare-fun array_inv!816 (array!2464) Bool)

(declare-fun array_inv!817 (array!2462) Bool)

(assert (=> b!636669 (= e!387802 (and tp!198243 tp!198249 tp!198241 (array_inv!816 (_keys!939 (v!16867 (underlying!1473 (v!16868 (underlying!1474 (cache!1004 cacheUp!351))))))) (array_inv!817 (_values!924 (v!16867 (underlying!1473 (v!16868 (underlying!1474 (cache!1004 cacheUp!351))))))) e!387803))))

(declare-fun b!636670 () Bool)

(declare-fun e!387809 () Bool)

(assert (=> b!636670 (= e!387809 true)))

(declare-fun lt!272453 () BalanceConc!4564)

(declare-fun lt!272446 () Option!1651)

(declare-fun print!498 (PrintableTokens!116) BalanceConc!4564)

(declare-fun get!2473 (Option!1651) PrintableTokens!116)

(assert (=> b!636670 (= lt!272453 (print!498 (get!2473 lt!272446)))))

(declare-fun mapIsEmpty!2545 () Bool)

(assert (=> mapIsEmpty!2545 mapRes!2544))

(declare-fun b!636671 () Bool)

(declare-fun res!276501 () Bool)

(declare-fun e!387814 () Bool)

(assert (=> b!636671 (=> (not res!276501) (not e!387814))))

(declare-datatypes ((LexerInterface!1248 0))(
  ( (LexerInterfaceExt!1245 (__x!4819 Int)) (Lexer!1246) )
))
(declare-fun rulesInvariant!1183 (LexerInterface!1248 List!6795) Bool)

(assert (=> b!636671 (= res!276501 (rulesInvariant!1183 Lexer!1246 lt!272464))))

(declare-fun b!636672 () Bool)

(declare-fun e!387815 () Bool)

(declare-fun e!387808 () Bool)

(assert (=> b!636672 (= e!387815 e!387808)))

(declare-fun b!636673 () Bool)

(declare-fun e!387798 () Bool)

(declare-fun e!387810 () Bool)

(declare-fun lt!272450 () MutLongMap!646)

(assert (=> b!636673 (= e!387798 (and e!387810 ((_ is LongMap!646) lt!272450)))))

(assert (=> b!636673 (= lt!272450 (v!16870 (underlying!1476 (cache!1005 cacheDown!364))))))

(declare-fun mapNonEmpty!2545 () Bool)

(declare-fun tp!198244 () Bool)

(declare-fun tp!198248 () Bool)

(assert (=> mapNonEmpty!2545 (= mapRes!2545 (and tp!198244 tp!198248))))

(declare-fun mapValue!2545 () List!6797)

(declare-fun mapKey!2545 () (_ BitVec 32))

(declare-fun mapRest!2545 () (Array (_ BitVec 32) List!6797))

(assert (=> mapNonEmpty!2545 (= (arr!1120 (_values!924 (v!16867 (underlying!1473 (v!16868 (underlying!1474 (cache!1004 cacheUp!351))))))) (store mapRest!2545 mapKey!2545 mapValue!2545))))

(declare-fun b!636674 () Bool)

(assert (=> b!636674 (= e!387808 e!387802)))

(declare-fun b!636675 () Bool)

(declare-fun e!387813 () Bool)

(declare-fun e!387805 () Bool)

(assert (=> b!636675 (= e!387813 e!387805)))

(declare-fun b!636676 () Bool)

(declare-fun e!387794 () Bool)

(assert (=> b!636676 (= e!387794 e!387814)))

(declare-fun res!276502 () Bool)

(assert (=> b!636676 (=> (not res!276502) (not e!387814))))

(declare-fun isEmpty!4668 (List!6795) Bool)

(assert (=> b!636676 (= res!276502 (not (isEmpty!4668 lt!272464)))))

(declare-datatypes ((JsonLexer!178 0))(
  ( (JsonLexer!179) )
))
(declare-fun rules!109 (JsonLexer!178) List!6795)

(assert (=> b!636676 (= lt!272464 (rules!109 JsonLexer!179))))

(declare-fun b!636677 () Bool)

(declare-fun res!276500 () Bool)

(assert (=> b!636677 (=> (not res!276500) (not e!387814))))

(declare-fun usesJsonRules!0 (PrintableTokens!116) Bool)

(assert (=> b!636677 (= res!276500 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!636678 () Bool)

(assert (=> b!636678 (= e!387797 None!1650)))

(declare-fun res!276498 () Bool)

(assert (=> start!62356 (=> (not res!276498) (not e!387794))))

(declare-fun lt!272455 () Int)

(assert (=> start!62356 (= res!276498 (> lt!272455 0))))

(declare-fun size!5331 (PrintableTokens!116) Int)

(assert (=> start!62356 (= lt!272455 (size!5331 printableTokens!2))))

(assert (=> start!62356 e!387794))

(declare-fun inv!8626 (PrintableTokens!116) Bool)

(assert (=> start!62356 (and (inv!8626 printableTokens!2) e!387799)))

(declare-fun inv!8627 (CacheDown!278) Bool)

(assert (=> start!62356 (and (inv!8627 cacheDown!364) e!387812)))

(declare-fun e!387795 () Bool)

(declare-fun inv!8628 (CacheUp!278) Bool)

(assert (=> start!62356 (and (inv!8628 cacheUp!351) e!387795)))

(declare-fun b!636679 () Bool)

(declare-fun e!387800 () Bool)

(declare-fun tp!198242 () Bool)

(assert (=> b!636679 (= e!387800 (and tp!198242 mapRes!2544))))

(declare-fun condMapEmpty!2544 () Bool)

(declare-fun mapDefault!2545 () List!6798)

(assert (=> b!636679 (= condMapEmpty!2544 (= (arr!1122 (_values!925 (v!16869 (underlying!1475 (v!16870 (underlying!1476 (cache!1005 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6798)) mapDefault!2545)))))

(declare-fun b!636680 () Bool)

(declare-fun tp!198245 () Bool)

(assert (=> b!636680 (= e!387803 (and tp!198245 mapRes!2545))))

(declare-fun condMapEmpty!2545 () Bool)

(declare-fun mapDefault!2544 () List!6797)

(assert (=> b!636680 (= condMapEmpty!2545 (= (arr!1120 (_values!924 (v!16867 (underlying!1473 (v!16868 (underlying!1474 (cache!1004 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6797)) mapDefault!2544)))))

(declare-fun b!636681 () Bool)

(declare-fun lt!272466 () Option!1651)

(assert (=> b!636681 (= e!387793 lt!272466)))

(declare-fun lt!272441 () BalanceConc!4564)

(assert (=> b!636681 (= lt!272441 (print!498 (v!16866 lt!272466)))))

(declare-fun b!636682 () Bool)

(assert (=> b!636682 (= e!387796 None!1650)))

(declare-fun e!387816 () Bool)

(declare-fun e!387792 () Bool)

(assert (=> b!636683 (= e!387816 (and e!387792 tp!198246))))

(declare-fun b!636684 () Bool)

(assert (=> b!636684 (= e!387804 ((_ is Some!1650) (_1!3985 (createRightBracketSeparator!0 (_2!3985 lt!272463) (_3!309 lt!272463)))))))

(declare-fun lt!272471 () Option!1651)

(assert (=> b!636684 (= lt!272471 (_1!3985 lt!272463))))

(declare-fun lt!272452 () Option!1651)

(assert (=> b!636684 (= lt!272452 (_1!3985 lt!272442))))

(declare-fun b!636685 () Bool)

(declare-fun c!116622 () Bool)

(assert (=> b!636685 (= c!116622 ((_ is Some!1650) lt!272466))))

(declare-fun encloseInSep!0 (PrintableTokens!116 PrintableTokens!116 PrintableTokens!116) Option!1651)

(assert (=> b!636685 (= lt!272466 (encloseInSep!0 (v!16866 lt!272451) (v!16866 (_1!3985 lt!272463)) (v!16866 (_1!3985 (createRightBracketSeparator!0 (_2!3985 lt!272463) (_3!309 lt!272463))))))))

(declare-fun lt!272460 () Option!1651)

(assert (=> b!636685 (= lt!272460 (_1!3985 lt!272463))))

(declare-fun lt!272449 () Option!1651)

(assert (=> b!636685 (= lt!272449 (_1!3985 lt!272442))))

(declare-fun lt!272448 () Option!1651)

(assert (=> b!636685 (= lt!272448 (_1!3985 (createRightBracketSeparator!0 (_2!3985 lt!272463) (_3!309 lt!272463))))))

(declare-fun lt!272458 () Option!1651)

(assert (=> b!636685 (= lt!272458 (_1!3985 lt!272442))))

(assert (=> b!636685 (= e!387797 e!387793)))

(declare-fun b!636686 () Bool)

(assert (=> b!636686 (= e!387795 e!387816)))

(assert (=> b!636687 (= e!387811 (and e!387798 tp!198250))))

(declare-fun b!636688 () Bool)

(assert (=> b!636688 (= e!387814 (not e!387809))))

(declare-fun res!276503 () Bool)

(assert (=> b!636688 (=> res!276503 e!387809)))

(declare-fun isEmpty!4669 (Option!1651) Bool)

(assert (=> b!636688 (= res!276503 (isEmpty!4669 lt!272446))))

(assert (=> b!636688 (= lt!272446 e!387796)))

(declare-fun c!116620 () Bool)

(assert (=> b!636688 (= c!116620 e!387804)))

(declare-fun res!276504 () Bool)

(assert (=> b!636688 (=> (not res!276504) (not e!387804))))

(assert (=> b!636688 (= res!276504 ((_ is Some!1650) (_1!3985 lt!272442)))))

(declare-fun lt!272457 () Option!1651)

(assert (=> b!636688 (= lt!272457 (_1!3985 (createRightBracketSeparator!0 (_2!3985 lt!272463) (_3!309 lt!272463))))))

(declare-fun lt!272468 () Option!1651)

(assert (=> b!636688 (= lt!272468 (_1!3985 lt!272463))))

(declare-datatypes ((tuple3!518 0))(
  ( (tuple3!519 (_1!3987 Option!1651) (_2!3987 Option!1651) (_3!310 Option!1651)) )
))
(declare-fun lt!272467 () tuple3!518)

(assert (=> b!636688 (= lt!272467 (tuple3!519 (_1!3985 lt!272442) (_1!3985 lt!272463) (_1!3985 (createRightBracketSeparator!0 (_2!3985 lt!272463) (_3!309 lt!272463)))))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!278 CacheDown!278) tuple3!516)

(assert (=> b!636688 (= lt!272463 (createLeftBracketSeparator!0 (_2!3985 lt!272442) (_3!309 lt!272442)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!278 CacheDown!278) tuple3!516)

(assert (=> b!636688 (= lt!272442 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!18188 () Int)

(declare-fun forall!1715 (BalanceConc!4570 Int) Bool)

(assert (=> b!636688 (forall!1715 (map!1461 lt!272454 lambda!18187) lambda!18188)))

(declare-fun lt!272462 () List!6799)

(declare-datatypes ((Unit!11818 0))(
  ( (Unit!11819) )
))
(declare-fun lt!272469 () Unit!11818)

(declare-fun mapPred!39 (List!6799 Int Int) Unit!11818)

(assert (=> b!636688 (= lt!272469 (mapPred!39 lt!272462 lambda!18187 lambda!18188))))

(declare-fun lt!272465 () Unit!11818)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6799) Unit!11818)

(assert (=> b!636688 (= lt!272465 (lemmaRemoveIdsPreservesRules!0 lt!272462))))

(declare-fun list!2869 (BalanceConc!4568) List!6799)

(assert (=> b!636688 (= lt!272462 (list!2869 lt!272454))))

(declare-fun lt!272456 () BalanceConc!4570)

(declare-fun lambda!18185 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4568) BalanceConc!4568)

(declare-fun map!1462 (BalanceConc!4570 Int) BalanceConc!4568)

(assert (=> b!636688 (= lt!272454 (sortObjectsByID!0 (map!1462 lt!272456 lambda!18185)))))

(declare-fun lambda!18186 () Int)

(declare-fun lt!272445 () Unit!11818)

(declare-fun lt!272440 () List!6800)

(declare-fun mapPred!40 (List!6800 Int Int) Unit!11818)

(assert (=> b!636688 (= lt!272445 (mapPred!40 lt!272440 lambda!18185 lambda!18186))))

(declare-fun lt!272459 () Unit!11818)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6800) Unit!11818)

(assert (=> b!636688 (= lt!272459 (lemmaAddIdsPreservesRules!0 lt!272440))))

(declare-fun list!2870 (BalanceConc!4570) List!6800)

(assert (=> b!636688 (= lt!272440 (list!2870 lt!272456))))

(declare-datatypes ((List!6801 0))(
  ( (Nil!6787) (Cons!6787 (h!12188 Int) (t!84337 List!6801)) )
))
(declare-datatypes ((IArray!4561 0))(
  ( (IArray!4562 (innerList!2338 List!6801)) )
))
(declare-datatypes ((Conc!2280 0))(
  ( (Node!2280 (left!5415 Conc!2280) (right!5745 Conc!2280) (csize!4790 Int) (cheight!2491 Int)) (Leaf!3480 (xs!4921 IArray!4561) (csize!4791 Int)) (Empty!2280) )
))
(declare-datatypes ((BalanceConc!4572 0))(
  ( (BalanceConc!4573 (c!116628 Conc!2280)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!116 Int BalanceConc!4572 BalanceConc!4570) BalanceConc!4570)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4566 Int Int BalanceConc!4572) BalanceConc!4572)

(assert (=> b!636688 (= lt!272456 (slicesMulti!0 printableTokens!2 lt!272455 (indicesOfOpenBraces!0 (tokens!1195 printableTokens!2) lt!272455 0 (BalanceConc!4573 Empty!2280)) (BalanceConc!4571 Empty!2279)))))

(declare-fun b!636689 () Bool)

(assert (=> b!636689 (= e!387810 e!387813)))

(declare-fun b!636690 () Bool)

(declare-fun lt!272470 () MutLongMap!645)

(assert (=> b!636690 (= e!387792 (and e!387815 ((_ is LongMap!645) lt!272470)))))

(assert (=> b!636690 (= lt!272470 (v!16868 (underlying!1474 (cache!1004 cacheUp!351))))))

(declare-fun b!636691 () Bool)

(declare-fun tp!198238 () Bool)

(declare-fun inv!8629 (Conc!2277) Bool)

(assert (=> b!636691 (= e!387806 (and (inv!8629 (c!116625 (tokens!1195 printableTokens!2))) tp!198238))))

(declare-fun tp!198239 () Bool)

(declare-fun tp!198251 () Bool)

(declare-fun array_inv!818 (array!2466) Bool)

(assert (=> b!636692 (= e!387805 (and tp!198253 tp!198239 tp!198251 (array_inv!816 (_keys!940 (v!16869 (underlying!1475 (v!16870 (underlying!1476 (cache!1005 cacheDown!364))))))) (array_inv!818 (_values!925 (v!16869 (underlying!1475 (v!16870 (underlying!1476 (cache!1005 cacheDown!364))))))) e!387800))))

(assert (= (and start!62356 res!276498) b!636676))

(assert (= (and b!636676 res!276502) b!636671))

(assert (= (and b!636671 res!276501) b!636677))

(assert (= (and b!636677 res!276500) b!636688))

(assert (= (and b!636688 res!276504) b!636666))

(assert (= (and b!636666 res!276499) b!636684))

(assert (= (and b!636688 c!116620) b!636668))

(assert (= (and b!636688 (not c!116620)) b!636682))

(assert (= (and b!636668 c!116621) b!636685))

(assert (= (and b!636668 (not c!116621)) b!636678))

(assert (= (and b!636685 c!116622) b!636681))

(assert (= (and b!636685 (not c!116622)) b!636664))

(assert (= (and b!636688 (not res!276503)) b!636670))

(assert (= b!636667 b!636691))

(assert (= start!62356 b!636667))

(assert (= (and b!636679 condMapEmpty!2544) mapIsEmpty!2545))

(assert (= (and b!636679 (not condMapEmpty!2544)) mapNonEmpty!2544))

(assert (= b!636692 b!636679))

(assert (= b!636675 b!636692))

(assert (= b!636689 b!636675))

(assert (= (and b!636673 ((_ is LongMap!646) (v!16870 (underlying!1476 (cache!1005 cacheDown!364))))) b!636689))

(assert (= b!636687 b!636673))

(assert (= (and b!636665 ((_ is HashMap!618) (cache!1005 cacheDown!364))) b!636687))

(assert (= start!62356 b!636665))

(assert (= (and b!636680 condMapEmpty!2545) mapIsEmpty!2544))

(assert (= (and b!636680 (not condMapEmpty!2545)) mapNonEmpty!2545))

(assert (= b!636669 b!636680))

(assert (= b!636674 b!636669))

(assert (= b!636672 b!636674))

(assert (= (and b!636690 ((_ is LongMap!645) (v!16868 (underlying!1474 (cache!1004 cacheUp!351))))) b!636672))

(assert (= b!636683 b!636690))

(assert (= (and b!636686 ((_ is HashMap!617) (cache!1004 cacheUp!351))) b!636683))

(assert (= start!62356 b!636686))

(declare-fun m!907497 () Bool)

(assert (=> b!636681 m!907497))

(declare-fun m!907499 () Bool)

(assert (=> b!636670 m!907499))

(assert (=> b!636670 m!907499))

(declare-fun m!907501 () Bool)

(assert (=> b!636670 m!907501))

(declare-fun m!907503 () Bool)

(assert (=> mapNonEmpty!2545 m!907503))

(declare-fun m!907505 () Bool)

(assert (=> b!636671 m!907505))

(declare-fun m!907507 () Bool)

(assert (=> b!636684 m!907507))

(assert (=> b!636685 m!907507))

(declare-fun m!907509 () Bool)

(assert (=> b!636685 m!907509))

(declare-fun m!907511 () Bool)

(assert (=> b!636692 m!907511))

(declare-fun m!907513 () Bool)

(assert (=> b!636692 m!907513))

(declare-fun m!907515 () Bool)

(assert (=> b!636676 m!907515))

(declare-fun m!907517 () Bool)

(assert (=> b!636676 m!907517))

(assert (=> b!636668 m!907507))

(declare-fun m!907519 () Bool)

(assert (=> b!636668 m!907519))

(declare-fun m!907521 () Bool)

(assert (=> b!636668 m!907521))

(assert (=> b!636668 m!907519))

(assert (=> b!636668 m!907521))

(declare-fun m!907523 () Bool)

(assert (=> b!636668 m!907523))

(declare-fun m!907525 () Bool)

(assert (=> b!636667 m!907525))

(declare-fun m!907527 () Bool)

(assert (=> b!636669 m!907527))

(declare-fun m!907529 () Bool)

(assert (=> b!636669 m!907529))

(assert (=> b!636666 m!907507))

(declare-fun m!907531 () Bool)

(assert (=> mapNonEmpty!2544 m!907531))

(declare-fun m!907533 () Bool)

(assert (=> b!636688 m!907533))

(assert (=> b!636688 m!907519))

(declare-fun m!907535 () Bool)

(assert (=> b!636688 m!907535))

(declare-fun m!907537 () Bool)

(assert (=> b!636688 m!907537))

(declare-fun m!907539 () Bool)

(assert (=> b!636688 m!907539))

(assert (=> b!636688 m!907519))

(declare-fun m!907541 () Bool)

(assert (=> b!636688 m!907541))

(declare-fun m!907543 () Bool)

(assert (=> b!636688 m!907543))

(declare-fun m!907545 () Bool)

(assert (=> b!636688 m!907545))

(declare-fun m!907547 () Bool)

(assert (=> b!636688 m!907547))

(declare-fun m!907549 () Bool)

(assert (=> b!636688 m!907549))

(assert (=> b!636688 m!907537))

(assert (=> b!636688 m!907549))

(declare-fun m!907551 () Bool)

(assert (=> b!636688 m!907551))

(declare-fun m!907553 () Bool)

(assert (=> b!636688 m!907553))

(assert (=> b!636688 m!907507))

(declare-fun m!907555 () Bool)

(assert (=> b!636688 m!907555))

(declare-fun m!907557 () Bool)

(assert (=> b!636688 m!907557))

(declare-fun m!907559 () Bool)

(assert (=> b!636688 m!907559))

(declare-fun m!907561 () Bool)

(assert (=> b!636677 m!907561))

(declare-fun m!907563 () Bool)

(assert (=> start!62356 m!907563))

(declare-fun m!907565 () Bool)

(assert (=> start!62356 m!907565))

(declare-fun m!907567 () Bool)

(assert (=> start!62356 m!907567))

(declare-fun m!907569 () Bool)

(assert (=> start!62356 m!907569))

(declare-fun m!907571 () Bool)

(assert (=> b!636691 m!907571))

(check-sat (not mapNonEmpty!2544) (not b_next!18719) (not b!636679) (not b!636668) (not b!636667) (not mapNonEmpty!2545) (not start!62356) b_and!62489 (not b!636666) b_and!62485 (not b_next!18717) (not b!636670) (not b!636691) (not b_next!18715) (not b!636684) b_and!62487 (not b!636681) (not b!636676) (not b!636688) b_and!62483 (not b!636669) (not b!636680) (not b_next!18713) (not b!636692) (not b!636677) (not b!636685) (not b!636671))
(check-sat (not b_next!18719) b_and!62483 (not b_next!18713) b_and!62489 b_and!62485 (not b_next!18717) (not b_next!18715) b_and!62487)
