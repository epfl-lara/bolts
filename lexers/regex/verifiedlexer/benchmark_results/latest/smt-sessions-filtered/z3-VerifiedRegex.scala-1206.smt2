; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63338 () Bool)

(assert start!63338)

(declare-fun b!646457 () Bool)

(declare-fun b_free!18853 () Bool)

(declare-fun b_next!18909 () Bool)

(assert (=> b!646457 (= b_free!18853 (not b_next!18909))))

(declare-fun tp!199607 () Bool)

(declare-fun b_and!62647 () Bool)

(assert (=> b!646457 (= tp!199607 b_and!62647)))

(declare-fun b!646465 () Bool)

(declare-fun b_free!18855 () Bool)

(declare-fun b_next!18911 () Bool)

(assert (=> b!646465 (= b_free!18855 (not b_next!18911))))

(declare-fun tp!199608 () Bool)

(declare-fun b_and!62649 () Bool)

(assert (=> b!646465 (= tp!199608 b_and!62649)))

(declare-fun b!646448 () Bool)

(declare-fun b_free!18857 () Bool)

(declare-fun b_next!18913 () Bool)

(assert (=> b!646448 (= b_free!18857 (not b_next!18913))))

(declare-fun tp!199606 () Bool)

(declare-fun b_and!62651 () Bool)

(assert (=> b!646448 (= tp!199606 b_and!62651)))

(declare-fun b!646466 () Bool)

(declare-fun b_free!18859 () Bool)

(declare-fun b_next!18915 () Bool)

(assert (=> b!646466 (= b_free!18859 (not b_next!18915))))

(declare-fun tp!199611 () Bool)

(declare-fun b_and!62653 () Bool)

(assert (=> b!646466 (= tp!199611 b_and!62653)))

(declare-fun e!396678 () Bool)

(declare-fun tp!199613 () Bool)

(declare-fun b!646444 () Bool)

(declare-fun e!396668 () Bool)

(declare-datatypes ((List!6915 0))(
  ( (Nil!6901) (Cons!6901 (h!12302 (_ BitVec 16)) (t!85227 List!6915)) )
))
(declare-datatypes ((TokenValue!1416 0))(
  ( (FloatLiteralValue!2832 (text!10357 List!6915)) (TokenValueExt!1415 (__x!4920 Int)) (Broken!7080 (value!44512 List!6915)) (Object!1429) (End!1416) (Def!1416) (Underscore!1416) (Match!1416) (Else!1416) (Error!1416) (Case!1416) (If!1416) (Extends!1416) (Abstract!1416) (Class!1416) (Val!1416) (DelimiterValue!2832 (del!1476 List!6915)) (KeywordValue!1422 (value!44513 List!6915)) (CommentValue!2832 (value!44514 List!6915)) (WhitespaceValue!2832 (value!44515 List!6915)) (IndentationValue!1416 (value!44516 List!6915)) (String!8817) (Int32!1416) (Broken!7081 (value!44517 List!6915)) (Boolean!1417) (Unit!12075) (OperatorValue!1419 (op!1476 List!6915)) (IdentifierValue!2832 (value!44518 List!6915)) (IdentifierValue!2833 (value!44519 List!6915)) (WhitespaceValue!2833 (value!44520 List!6915)) (True!2832) (False!2832) (Broken!7082 (value!44521 List!6915)) (Broken!7083 (value!44522 List!6915)) (True!2833) (RightBrace!1416) (RightBracket!1416) (Colon!1416) (Null!1416) (Comma!1416) (LeftBracket!1416) (False!2833) (LeftBrace!1416) (ImaginaryLiteralValue!1416 (text!10358 List!6915)) (StringLiteralValue!4248 (value!44523 List!6915)) (EOFValue!1416 (value!44524 List!6915)) (IdentValue!1416 (value!44525 List!6915)) (DelimiterValue!2833 (value!44526 List!6915)) (DedentValue!1416 (value!44527 List!6915)) (NewLineValue!1416 (value!44528 List!6915)) (IntegerValue!4248 (value!44529 (_ BitVec 32)) (text!10359 List!6915)) (IntegerValue!4249 (value!44530 Int) (text!10360 List!6915)) (Times!1416) (Or!1416) (Equal!1416) (Minus!1416) (Broken!7084 (value!44531 List!6915)) (And!1416) (Div!1416) (LessEqual!1416) (Mod!1416) (Concat!3133) (Not!1416) (Plus!1416) (SpaceValue!1416 (value!44532 List!6915)) (IntegerValue!4250 (value!44533 Int) (text!10361 List!6915)) (StringLiteralValue!4249 (text!10362 List!6915)) (FloatLiteralValue!2833 (text!10363 List!6915)) (BytesLiteralValue!1416 (value!44534 List!6915)) (CommentValue!2833 (value!44535 List!6915)) (StringLiteralValue!4250 (value!44536 List!6915)) (ErrorTokenValue!1416 (msg!1477 List!6915)) )
))
(declare-datatypes ((Regex!1717 0))(
  ( (ElementMatch!1717 (c!117501 (_ BitVec 16))) (Concat!3134 (regOne!3946 Regex!1717) (regTwo!3946 Regex!1717)) (EmptyExpr!1717) (Star!1717 (reg!2046 Regex!1717)) (EmptyLang!1717) (Union!1717 (regOne!3947 Regex!1717) (regTwo!3947 Regex!1717)) )
))
(declare-datatypes ((String!8818 0))(
  ( (String!8819 (value!44537 String)) )
))
(declare-datatypes ((IArray!4675 0))(
  ( (IArray!4676 (innerList!2395 List!6915)) )
))
(declare-datatypes ((Conc!2337 0))(
  ( (Node!2337 (left!5489 Conc!2337) (right!5819 Conc!2337) (csize!4904 Int) (cheight!2548 Int)) (Leaf!3544 (xs!4978 IArray!4675) (csize!4905 Int)) (Empty!2337) )
))
(declare-datatypes ((BalanceConc!4686 0))(
  ( (BalanceConc!4687 (c!117502 Conc!2337)) )
))
(declare-datatypes ((TokenValueInjection!2584 0))(
  ( (TokenValueInjection!2585 (toValue!2323 Int) (toChars!2182 Int)) )
))
(declare-datatypes ((Rule!2564 0))(
  ( (Rule!2565 (regex!1382 Regex!1717) (tag!1644 String!8818) (isSeparator!1382 Bool) (transformation!1382 TokenValueInjection!2584)) )
))
(declare-datatypes ((Token!2486 0))(
  ( (Token!2487 (value!44538 TokenValue!1416) (rule!2177 Rule!2564) (size!5455 Int) (originalCharacters!1414 List!6915)) )
))
(declare-datatypes ((List!6916 0))(
  ( (Nil!6902) (Cons!6902 (h!12303 Token!2486) (t!85228 List!6916)) )
))
(declare-datatypes ((IArray!4677 0))(
  ( (IArray!4678 (innerList!2396 List!6916)) )
))
(declare-datatypes ((Conc!2338 0))(
  ( (Node!2338 (left!5490 Conc!2338) (right!5820 Conc!2338) (csize!4906 Int) (cheight!2549 Int)) (Leaf!3545 (xs!4979 IArray!4677) (csize!4907 Int)) (Empty!2338) )
))
(declare-datatypes ((List!6917 0))(
  ( (Nil!6903) (Cons!6903 (h!12304 Rule!2564) (t!85229 List!6917)) )
))
(declare-datatypes ((BalanceConc!4688 0))(
  ( (BalanceConc!4689 (c!117503 Conc!2338)) )
))
(declare-datatypes ((PrintableTokens!144 0))(
  ( (PrintableTokens!145 (rules!8228 List!6917) (tokens!1221 BalanceConc!4688)) )
))
(declare-fun printableTokens!2 () PrintableTokens!144)

(declare-fun inv!8735 (BalanceConc!4688) Bool)

(assert (=> b!646444 (= e!396678 (and tp!199613 (inv!8735 (tokens!1221 printableTokens!2)) e!396668))))

(declare-fun b!646445 () Bool)

(declare-fun res!283240 () Bool)

(declare-fun e!396680 () Bool)

(assert (=> b!646445 (=> res!283240 e!396680)))

(declare-datatypes ((List!6918 0))(
  ( (Nil!6904) (Cons!6904 (h!12305 Regex!1717) (t!85230 List!6918)) )
))
(declare-datatypes ((Context!406 0))(
  ( (Context!407 (exprs!703 List!6918)) )
))
(declare-datatypes ((tuple2!7466 0))(
  ( (tuple2!7467 (_1!4077 Context!406) (_2!4077 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7468 0))(
  ( (tuple2!7469 (_1!4078 tuple2!7466) (_2!4078 (InoxSet Context!406))) )
))
(declare-datatypes ((List!6919 0))(
  ( (Nil!6905) (Cons!6905 (h!12306 tuple2!7468) (t!85231 List!6919)) )
))
(declare-datatypes ((Hashable!645 0))(
  ( (HashableExt!644 (__x!4921 Int)) )
))
(declare-datatypes ((array!2561 0))(
  ( (array!2562 (arr!1162 (Array (_ BitVec 32) List!6919)) (size!5456 (_ BitVec 32))) )
))
(declare-datatypes ((array!2563 0))(
  ( (array!2564 (arr!1163 (Array (_ BitVec 32) (_ BitVec 64))) (size!5457 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1346 0))(
  ( (LongMapFixedSize!1347 (defaultEntry!1029 Int) (mask!2411 (_ BitVec 32)) (extraKeys!920 (_ BitVec 32)) (zeroValue!930 List!6919) (minValue!930 List!6919) (_size!1455 (_ BitVec 32)) (_keys!967 array!2563) (_values!952 array!2561) (_vacant!734 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2633 0))(
  ( (Cell!2634 (v!17103 LongMapFixedSize!1346)) )
))
(declare-datatypes ((MutLongMap!673 0))(
  ( (LongMap!673 (underlying!1529 Cell!2633)) (MutLongMapExt!672 (__x!4922 Int)) )
))
(declare-datatypes ((Cell!2635 0))(
  ( (Cell!2636 (v!17104 MutLongMap!673)) )
))
(declare-datatypes ((MutableMap!645 0))(
  ( (MutableMapExt!644 (__x!4923 Int)) (HashMap!645 (underlying!1530 Cell!2635) (hashF!2553 Hashable!645) (_size!1456 (_ BitVec 32)) (defaultValue!796 Int)) )
))
(declare-datatypes ((CacheUp!306 0))(
  ( (CacheUp!307 (cache!1032 MutableMap!645)) )
))
(declare-datatypes ((tuple3!586 0))(
  ( (tuple3!587 (_1!4079 Regex!1717) (_2!4079 Context!406) (_3!344 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7470 0))(
  ( (tuple2!7471 (_1!4080 tuple3!586) (_2!4080 (InoxSet Context!406))) )
))
(declare-datatypes ((List!6920 0))(
  ( (Nil!6906) (Cons!6906 (h!12307 tuple2!7470) (t!85232 List!6920)) )
))
(declare-datatypes ((array!2565 0))(
  ( (array!2566 (arr!1164 (Array (_ BitVec 32) List!6920)) (size!5458 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1348 0))(
  ( (LongMapFixedSize!1349 (defaultEntry!1030 Int) (mask!2412 (_ BitVec 32)) (extraKeys!921 (_ BitVec 32)) (zeroValue!931 List!6920) (minValue!931 List!6920) (_size!1457 (_ BitVec 32)) (_keys!968 array!2563) (_values!953 array!2565) (_vacant!735 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2637 0))(
  ( (Cell!2638 (v!17105 LongMapFixedSize!1348)) )
))
(declare-datatypes ((MutLongMap!674 0))(
  ( (LongMap!674 (underlying!1531 Cell!2637)) (MutLongMapExt!673 (__x!4924 Int)) )
))
(declare-datatypes ((Cell!2639 0))(
  ( (Cell!2640 (v!17106 MutLongMap!674)) )
))
(declare-datatypes ((Hashable!646 0))(
  ( (HashableExt!645 (__x!4925 Int)) )
))
(declare-datatypes ((MutableMap!646 0))(
  ( (MutableMapExt!645 (__x!4926 Int)) (HashMap!646 (underlying!1532 Cell!2639) (hashF!2554 Hashable!646) (_size!1458 (_ BitVec 32)) (defaultValue!797 Int)) )
))
(declare-datatypes ((CacheDown!306 0))(
  ( (CacheDown!307 (cache!1033 MutableMap!646)) )
))
(declare-datatypes ((Option!1666 0))(
  ( (None!1665) (Some!1665 (v!17107 PrintableTokens!144)) )
))
(declare-datatypes ((tuple3!588 0))(
  ( (tuple3!589 (_1!4081 Option!1666) (_2!4081 CacheUp!306) (_3!345 CacheDown!306)) )
))
(declare-fun lt!276802 () tuple3!588)

(declare-fun usesJsonRules!0 (PrintableTokens!144) Bool)

(assert (=> b!646445 (= res!283240 (not (usesJsonRules!0 (v!17107 (_1!4081 lt!276802)))))))

(declare-fun b!646446 () Bool)

(declare-fun e!396682 () Bool)

(declare-fun e!396675 () Bool)

(assert (=> b!646446 (= e!396682 e!396675)))

(declare-fun b!646447 () Bool)

(declare-fun e!396686 () Bool)

(declare-fun e!396671 () Bool)

(assert (=> b!646447 (= e!396686 e!396671)))

(declare-fun tp!199620 () Bool)

(declare-fun cacheDown!364 () CacheDown!306)

(declare-fun e!396677 () Bool)

(declare-fun e!396670 () Bool)

(declare-fun tp!199614 () Bool)

(declare-fun array_inv!848 (array!2563) Bool)

(declare-fun array_inv!849 (array!2565) Bool)

(assert (=> b!646448 (= e!396677 (and tp!199606 tp!199620 tp!199614 (array_inv!848 (_keys!968 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) (array_inv!849 (_values!953 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) e!396670))))

(declare-fun b!646449 () Bool)

(declare-fun e!396681 () Bool)

(declare-fun tp!199610 () Bool)

(declare-fun mapRes!2667 () Bool)

(assert (=> b!646449 (= e!396681 (and tp!199610 mapRes!2667))))

(declare-fun condMapEmpty!2666 () Bool)

(declare-fun cacheUp!351 () CacheUp!306)

(declare-fun mapDefault!2667 () List!6919)

(assert (=> b!646449 (= condMapEmpty!2666 (= (arr!1162 (_values!952 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6919)) mapDefault!2667)))))

(declare-fun b!646450 () Bool)

(declare-fun tp!199612 () Bool)

(declare-fun inv!8736 (Conc!2338) Bool)

(assert (=> b!646450 (= e!396668 (and (inv!8736 (c!117503 (tokens!1221 printableTokens!2))) tp!199612))))

(declare-fun b!646451 () Bool)

(declare-fun e!396672 () Bool)

(assert (=> b!646451 (= e!396680 e!396672)))

(declare-fun res!283244 () Bool)

(assert (=> b!646451 (=> res!283244 e!396672)))

(declare-fun lt!276801 () Option!1666)

(get-info :version)

(assert (=> b!646451 (= res!283244 (not ((_ is Some!1665) lt!276801)))))

(declare-fun lt!276794 () List!6917)

(declare-fun lambda!19363 () Int)

(declare-datatypes ((tuple2!7472 0))(
  ( (tuple2!7473 (_1!4082 Int) (_2!4082 PrintableTokens!144)) )
))
(declare-datatypes ((List!6921 0))(
  ( (Nil!6907) (Cons!6907 (h!12308 tuple2!7472) (t!85233 List!6921)) )
))
(declare-datatypes ((IArray!4679 0))(
  ( (IArray!4680 (innerList!2397 List!6921)) )
))
(declare-datatypes ((Conc!2339 0))(
  ( (Node!2339 (left!5491 Conc!2339) (right!5821 Conc!2339) (csize!4908 Int) (cheight!2550 Int)) (Leaf!3546 (xs!4980 IArray!4679) (csize!4909 Int)) (Empty!2339) )
))
(declare-datatypes ((BalanceConc!4690 0))(
  ( (BalanceConc!4691 (c!117504 Conc!2339)) )
))
(declare-fun lt!276797 () BalanceConc!4690)

(declare-fun lt!276799 () tuple3!588)

(declare-datatypes ((List!6922 0))(
  ( (Nil!6908) (Cons!6908 (h!12309 PrintableTokens!144) (t!85234 List!6922)) )
))
(declare-datatypes ((IArray!4681 0))(
  ( (IArray!4682 (innerList!2398 List!6922)) )
))
(declare-datatypes ((Conc!2340 0))(
  ( (Node!2340 (left!5492 Conc!2340) (right!5822 Conc!2340) (csize!4910 Int) (cheight!2551 Int)) (Leaf!3547 (xs!4981 IArray!4681) (csize!4911 Int)) (Empty!2340) )
))
(declare-datatypes ((BalanceConc!4692 0))(
  ( (BalanceConc!4693 (c!117505 Conc!2340)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4692 PrintableTokens!144 PrintableTokens!144) Option!1666)

(declare-fun map!1526 (BalanceConc!4690 Int) BalanceConc!4692)

(declare-fun emptyPrintableTokens!15 (List!6917) PrintableTokens!144)

(assert (=> b!646451 (= lt!276801 (recombineSlicesWithSep!0 (map!1526 lt!276797 lambda!19363) (v!17107 (_1!4081 lt!276799)) (emptyPrintableTokens!15 lt!276794)))))

(declare-fun b!646452 () Bool)

(declare-fun res!283237 () Bool)

(declare-fun e!396666 () Bool)

(assert (=> b!646452 (=> (not res!283237) (not e!396666))))

(declare-datatypes ((LexerInterface!1258 0))(
  ( (LexerInterfaceExt!1255 (__x!4927 Int)) (Lexer!1256) )
))
(declare-fun rulesInvariant!1193 (LexerInterface!1258 List!6917) Bool)

(assert (=> b!646452 (= res!283237 (rulesInvariant!1193 Lexer!1256 lt!276794))))

(declare-fun b!646453 () Bool)

(declare-fun e!396676 () Bool)

(declare-fun e!396667 () Bool)

(assert (=> b!646453 (= e!396676 e!396667)))

(declare-fun b!646454 () Bool)

(declare-fun e!396687 () Bool)

(assert (=> b!646454 (= e!396672 e!396687)))

(declare-fun res!283241 () Bool)

(assert (=> b!646454 (=> res!283241 e!396687)))

(declare-fun lt!276809 () Option!1666)

(assert (=> b!646454 (= res!283241 (not ((_ is Some!1665) lt!276809)))))

(declare-fun lt!276795 () tuple3!588)

(declare-fun encloseInSep!0 (PrintableTokens!144 PrintableTokens!144 PrintableTokens!144) Option!1666)

(assert (=> b!646454 (= lt!276809 (encloseInSep!0 (v!17107 lt!276801) (v!17107 (_1!4081 lt!276802)) (v!17107 (_1!4081 lt!276795))))))

(declare-fun b!646455 () Bool)

(declare-fun e!396669 () Bool)

(declare-fun e!396673 () Bool)

(assert (=> b!646455 (= e!396669 e!396673)))

(declare-fun b!646456 () Bool)

(declare-fun e!396688 () Bool)

(assert (=> b!646456 (= e!396688 e!396666)))

(declare-fun res!283236 () Bool)

(assert (=> b!646456 (=> (not res!283236) (not e!396666))))

(declare-fun isEmpty!4721 (List!6917) Bool)

(assert (=> b!646456 (= res!283236 (not (isEmpty!4721 lt!276794)))))

(declare-datatypes ((JsonLexer!202 0))(
  ( (JsonLexer!203) )
))
(declare-fun rules!109 (JsonLexer!202) List!6917)

(assert (=> b!646456 (= lt!276794 (rules!109 JsonLexer!203))))

(declare-fun e!396665 () Bool)

(assert (=> b!646457 (= e!396667 (and e!396665 tp!199607))))

(declare-fun b!646458 () Bool)

(declare-fun res!283238 () Bool)

(assert (=> b!646458 (=> (not res!283238) (not e!396666))))

(assert (=> b!646458 (= res!283238 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!646459 () Bool)

(declare-fun e!396683 () Bool)

(declare-fun lt!276803 () MutLongMap!674)

(assert (=> b!646459 (= e!396683 (and e!396669 ((_ is LongMap!674) lt!276803)))))

(assert (=> b!646459 (= lt!276803 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))

(declare-fun b!646460 () Bool)

(declare-fun e!396674 () Bool)

(assert (=> b!646460 (= e!396687 e!396674)))

(declare-fun res!283242 () Bool)

(assert (=> b!646460 (=> res!283242 e!396674)))

(assert (=> b!646460 (= res!283242 (not (usesJsonRules!0 (v!17107 lt!276809))))))

(declare-fun lt!276800 () BalanceConc!4686)

(declare-fun print!506 (PrintableTokens!144) BalanceConc!4686)

(assert (=> b!646460 (= lt!276800 (print!506 (v!17107 lt!276809)))))

(declare-fun b!646461 () Bool)

(declare-fun res!283243 () Bool)

(assert (=> b!646461 (=> res!283243 e!396680)))

(assert (=> b!646461 (= res!283243 (not (usesJsonRules!0 (v!17107 (_1!4081 lt!276795)))))))

(declare-fun mapIsEmpty!2666 () Bool)

(declare-fun mapRes!2666 () Bool)

(assert (=> mapIsEmpty!2666 mapRes!2666))

(declare-fun b!646462 () Bool)

(declare-fun res!283235 () Bool)

(assert (=> b!646462 (=> res!283235 e!396680)))

(assert (=> b!646462 (= res!283235 (not (usesJsonRules!0 (v!17107 (_1!4081 lt!276799)))))))

(declare-fun mapNonEmpty!2666 () Bool)

(declare-fun tp!199615 () Bool)

(declare-fun tp!199616 () Bool)

(assert (=> mapNonEmpty!2666 (= mapRes!2667 (and tp!199615 tp!199616))))

(declare-fun mapRest!2667 () (Array (_ BitVec 32) List!6919))

(declare-fun mapValue!2666 () List!6919)

(declare-fun mapKey!2667 () (_ BitVec 32))

(assert (=> mapNonEmpty!2666 (= (arr!1162 (_values!952 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) (store mapRest!2667 mapKey!2667 mapValue!2666))))

(declare-fun mapNonEmpty!2667 () Bool)

(declare-fun tp!199618 () Bool)

(declare-fun tp!199609 () Bool)

(assert (=> mapNonEmpty!2667 (= mapRes!2666 (and tp!199618 tp!199609))))

(declare-fun mapValue!2667 () List!6920)

(declare-fun mapRest!2666 () (Array (_ BitVec 32) List!6920))

(declare-fun mapKey!2666 () (_ BitVec 32))

(assert (=> mapNonEmpty!2667 (= (arr!1164 (_values!953 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) (store mapRest!2666 mapKey!2666 mapValue!2667))))

(declare-fun b!646463 () Bool)

(declare-fun tp!199619 () Bool)

(assert (=> b!646463 (= e!396670 (and tp!199619 mapRes!2666))))

(declare-fun condMapEmpty!2667 () Bool)

(declare-fun mapDefault!2666 () List!6920)

(assert (=> b!646463 (= condMapEmpty!2667 (= (arr!1164 (_values!953 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6920)) mapDefault!2666)))))

(declare-fun res!283234 () Bool)

(assert (=> start!63338 (=> (not res!283234) (not e!396688))))

(declare-fun lt!276796 () Int)

(assert (=> start!63338 (= res!283234 (> lt!276796 0))))

(declare-fun size!5459 (PrintableTokens!144) Int)

(assert (=> start!63338 (= lt!276796 (size!5459 printableTokens!2))))

(assert (=> start!63338 e!396688))

(declare-fun inv!8737 (PrintableTokens!144) Bool)

(assert (=> start!63338 (and (inv!8737 printableTokens!2) e!396678)))

(declare-fun inv!8738 (CacheDown!306) Bool)

(assert (=> start!63338 (and (inv!8738 cacheDown!364) e!396682)))

(declare-fun inv!8739 (CacheUp!306) Bool)

(assert (=> start!63338 (and (inv!8739 cacheUp!351) e!396676)))

(declare-fun b!646464 () Bool)

(assert (=> b!646464 (= e!396674 (= lt!276794 (rules!8228 (v!17107 lt!276809))))))

(declare-fun tp!199621 () Bool)

(declare-fun tp!199617 () Bool)

(declare-fun array_inv!850 (array!2561) Bool)

(assert (=> b!646465 (= e!396671 (and tp!199608 tp!199617 tp!199621 (array_inv!848 (_keys!967 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) (array_inv!850 (_values!952 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) e!396681))))

(assert (=> b!646466 (= e!396675 (and e!396683 tp!199611))))

(declare-fun mapIsEmpty!2667 () Bool)

(assert (=> mapIsEmpty!2667 mapRes!2667))

(declare-fun b!646467 () Bool)

(declare-fun e!396685 () Bool)

(declare-fun lt!276798 () MutLongMap!673)

(assert (=> b!646467 (= e!396665 (and e!396685 ((_ is LongMap!673) lt!276798)))))

(assert (=> b!646467 (= lt!276798 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))

(declare-fun b!646468 () Bool)

(assert (=> b!646468 (= e!396685 e!396686)))

(declare-fun b!646469 () Bool)

(assert (=> b!646469 (= e!396666 (not e!396680))))

(declare-fun res!283239 () Bool)

(assert (=> b!646469 (=> res!283239 e!396680)))

(assert (=> b!646469 (= res!283239 (or (not ((_ is Some!1665) (_1!4081 lt!276799))) (not ((_ is Some!1665) (_1!4081 lt!276802))) (not ((_ is Some!1665) (_1!4081 lt!276795)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!306 CacheDown!306) tuple3!588)

(assert (=> b!646469 (= lt!276795 (createRightBracketSeparator!0 (_2!4081 lt!276802) (_3!345 lt!276802)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!306 CacheDown!306) tuple3!588)

(assert (=> b!646469 (= lt!276802 (createLeftBracketSeparator!0 (_2!4081 lt!276799) (_3!345 lt!276799)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!306 CacheDown!306) tuple3!588)

(assert (=> b!646469 (= lt!276799 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!19364 () Int)

(declare-fun forall!1791 (BalanceConc!4692 Int) Bool)

(assert (=> b!646469 (forall!1791 (map!1526 lt!276797 lambda!19363) lambda!19364)))

(declare-fun lt!276807 () List!6921)

(declare-datatypes ((Unit!12076 0))(
  ( (Unit!12077) )
))
(declare-fun lt!276804 () Unit!12076)

(declare-fun mapPred!61 (List!6921 Int Int) Unit!12076)

(assert (=> b!646469 (= lt!276804 (mapPred!61 lt!276807 lambda!19363 lambda!19364))))

(declare-fun lt!276805 () Unit!12076)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6921) Unit!12076)

(assert (=> b!646469 (= lt!276805 (lemmaRemoveIdsPreservesRules!0 lt!276807))))

(declare-fun list!2937 (BalanceConc!4690) List!6921)

(assert (=> b!646469 (= lt!276807 (list!2937 lt!276797))))

(declare-fun lt!276810 () BalanceConc!4692)

(declare-fun lambda!19361 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4690) BalanceConc!4690)

(declare-fun map!1527 (BalanceConc!4692 Int) BalanceConc!4690)

(assert (=> b!646469 (= lt!276797 (sortObjectsByID!0 (map!1527 lt!276810 lambda!19361)))))

(declare-fun lt!276793 () List!6922)

(declare-fun lambda!19362 () Int)

(declare-fun lt!276808 () Unit!12076)

(declare-fun mapPred!62 (List!6922 Int Int) Unit!12076)

(assert (=> b!646469 (= lt!276808 (mapPred!62 lt!276793 lambda!19361 lambda!19362))))

(declare-fun lt!276806 () Unit!12076)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6922) Unit!12076)

(assert (=> b!646469 (= lt!276806 (lemmaAddIdsPreservesRules!0 lt!276793))))

(declare-fun list!2938 (BalanceConc!4692) List!6922)

(assert (=> b!646469 (= lt!276793 (list!2938 lt!276810))))

(declare-datatypes ((List!6923 0))(
  ( (Nil!6909) (Cons!6909 (h!12310 Int) (t!85235 List!6923)) )
))
(declare-datatypes ((IArray!4683 0))(
  ( (IArray!4684 (innerList!2399 List!6923)) )
))
(declare-datatypes ((Conc!2341 0))(
  ( (Node!2341 (left!5493 Conc!2341) (right!5823 Conc!2341) (csize!4912 Int) (cheight!2552 Int)) (Leaf!3548 (xs!4982 IArray!4683) (csize!4913 Int)) (Empty!2341) )
))
(declare-datatypes ((BalanceConc!4694 0))(
  ( (BalanceConc!4695 (c!117506 Conc!2341)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!144 Int BalanceConc!4694 BalanceConc!4692) BalanceConc!4692)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4688 Int Int BalanceConc!4694) BalanceConc!4694)

(assert (=> b!646469 (= lt!276810 (slicesMulti!0 printableTokens!2 lt!276796 (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 0 (BalanceConc!4695 Empty!2341)) (BalanceConc!4693 Empty!2340)))))

(declare-fun b!646470 () Bool)

(assert (=> b!646470 (= e!396673 e!396677)))

(assert (= (and start!63338 res!283234) b!646456))

(assert (= (and b!646456 res!283236) b!646452))

(assert (= (and b!646452 res!283237) b!646458))

(assert (= (and b!646458 res!283238) b!646469))

(assert (= (and b!646469 (not res!283239)) b!646462))

(assert (= (and b!646462 (not res!283235)) b!646445))

(assert (= (and b!646445 (not res!283240)) b!646461))

(assert (= (and b!646461 (not res!283243)) b!646451))

(assert (= (and b!646451 (not res!283244)) b!646454))

(assert (= (and b!646454 (not res!283241)) b!646460))

(assert (= (and b!646460 (not res!283242)) b!646464))

(assert (= b!646444 b!646450))

(assert (= start!63338 b!646444))

(assert (= (and b!646463 condMapEmpty!2667) mapIsEmpty!2666))

(assert (= (and b!646463 (not condMapEmpty!2667)) mapNonEmpty!2667))

(assert (= b!646448 b!646463))

(assert (= b!646470 b!646448))

(assert (= b!646455 b!646470))

(assert (= (and b!646459 ((_ is LongMap!674) (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))) b!646455))

(assert (= b!646466 b!646459))

(assert (= (and b!646446 ((_ is HashMap!646) (cache!1033 cacheDown!364))) b!646466))

(assert (= start!63338 b!646446))

(assert (= (and b!646449 condMapEmpty!2666) mapIsEmpty!2667))

(assert (= (and b!646449 (not condMapEmpty!2666)) mapNonEmpty!2666))

(assert (= b!646465 b!646449))

(assert (= b!646447 b!646465))

(assert (= b!646468 b!646447))

(assert (= (and b!646467 ((_ is LongMap!673) (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))) b!646468))

(assert (= b!646457 b!646467))

(assert (= (and b!646453 ((_ is HashMap!645) (cache!1032 cacheUp!351))) b!646457))

(assert (= start!63338 b!646453))

(declare-fun m!916729 () Bool)

(assert (=> b!646445 m!916729))

(declare-fun m!916731 () Bool)

(assert (=> b!646444 m!916731))

(declare-fun m!916733 () Bool)

(assert (=> b!646448 m!916733))

(declare-fun m!916735 () Bool)

(assert (=> b!646448 m!916735))

(declare-fun m!916737 () Bool)

(assert (=> start!63338 m!916737))

(declare-fun m!916739 () Bool)

(assert (=> start!63338 m!916739))

(declare-fun m!916741 () Bool)

(assert (=> start!63338 m!916741))

(declare-fun m!916743 () Bool)

(assert (=> start!63338 m!916743))

(declare-fun m!916745 () Bool)

(assert (=> b!646456 m!916745))

(declare-fun m!916747 () Bool)

(assert (=> b!646456 m!916747))

(declare-fun m!916749 () Bool)

(assert (=> b!646460 m!916749))

(declare-fun m!916751 () Bool)

(assert (=> b!646460 m!916751))

(declare-fun m!916753 () Bool)

(assert (=> b!646452 m!916753))

(declare-fun m!916755 () Bool)

(assert (=> b!646465 m!916755))

(declare-fun m!916757 () Bool)

(assert (=> b!646465 m!916757))

(declare-fun m!916759 () Bool)

(assert (=> b!646462 m!916759))

(declare-fun m!916761 () Bool)

(assert (=> mapNonEmpty!2666 m!916761))

(declare-fun m!916763 () Bool)

(assert (=> b!646469 m!916763))

(declare-fun m!916765 () Bool)

(assert (=> b!646469 m!916765))

(declare-fun m!916767 () Bool)

(assert (=> b!646469 m!916767))

(declare-fun m!916769 () Bool)

(assert (=> b!646469 m!916769))

(declare-fun m!916771 () Bool)

(assert (=> b!646469 m!916771))

(declare-fun m!916773 () Bool)

(assert (=> b!646469 m!916773))

(assert (=> b!646469 m!916769))

(declare-fun m!916775 () Bool)

(assert (=> b!646469 m!916775))

(declare-fun m!916777 () Bool)

(assert (=> b!646469 m!916777))

(declare-fun m!916779 () Bool)

(assert (=> b!646469 m!916779))

(declare-fun m!916781 () Bool)

(assert (=> b!646469 m!916781))

(declare-fun m!916783 () Bool)

(assert (=> b!646469 m!916783))

(assert (=> b!646469 m!916777))

(declare-fun m!916785 () Bool)

(assert (=> b!646469 m!916785))

(declare-fun m!916787 () Bool)

(assert (=> b!646469 m!916787))

(assert (=> b!646469 m!916763))

(declare-fun m!916789 () Bool)

(assert (=> b!646469 m!916789))

(declare-fun m!916791 () Bool)

(assert (=> b!646469 m!916791))

(declare-fun m!916793 () Bool)

(assert (=> mapNonEmpty!2667 m!916793))

(declare-fun m!916795 () Bool)

(assert (=> b!646461 m!916795))

(declare-fun m!916797 () Bool)

(assert (=> b!646458 m!916797))

(declare-fun m!916799 () Bool)

(assert (=> b!646454 m!916799))

(assert (=> b!646451 m!916769))

(declare-fun m!916801 () Bool)

(assert (=> b!646451 m!916801))

(assert (=> b!646451 m!916769))

(assert (=> b!646451 m!916801))

(declare-fun m!916803 () Bool)

(assert (=> b!646451 m!916803))

(declare-fun m!916805 () Bool)

(assert (=> b!646450 m!916805))

(check-sat b_and!62647 b_and!62649 (not b_next!18909) (not b!646452) (not b!646451) (not b!646454) (not b_next!18911) (not b!646458) (not b_next!18913) (not mapNonEmpty!2666) (not b!646463) (not b!646465) b_and!62653 (not b!646469) (not b!646460) b_and!62651 (not b!646449) (not b!646444) (not b!646461) (not b!646456) (not start!63338) (not b!646448) (not mapNonEmpty!2667) (not b!646450) (not b_next!18915) (not b!646462) (not b!646445))
(check-sat b_and!62647 b_and!62649 (not b_next!18909) (not b_next!18911) (not b_next!18915) (not b_next!18913) b_and!62653 b_and!62651)
(get-model)

(declare-fun d!224103 () Bool)

(declare-fun res!283251 () Bool)

(declare-fun e!396691 () Bool)

(assert (=> d!224103 (=> (not res!283251) (not e!396691))))

(declare-fun rulesValid!509 (LexerInterface!1258 List!6917) Bool)

(assert (=> d!224103 (= res!283251 (rulesValid!509 Lexer!1256 lt!276794))))

(assert (=> d!224103 (= (rulesInvariant!1193 Lexer!1256 lt!276794) e!396691)))

(declare-fun b!646473 () Bool)

(declare-datatypes ((List!6924 0))(
  ( (Nil!6910) (Cons!6910 (h!12311 String!8818) (t!85282 List!6924)) )
))
(declare-fun noDuplicateTag!509 (LexerInterface!1258 List!6917 List!6924) Bool)

(assert (=> b!646473 (= e!396691 (noDuplicateTag!509 Lexer!1256 lt!276794 Nil!6910))))

(assert (= (and d!224103 res!283251) b!646473))

(declare-fun m!916807 () Bool)

(assert (=> d!224103 m!916807))

(declare-fun m!916809 () Bool)

(assert (=> b!646473 m!916809))

(assert (=> b!646452 d!224103))

(declare-fun d!224105 () Bool)

(assert (=> d!224105 (= (usesJsonRules!0 (v!17107 (_1!4081 lt!276799))) (= (rules!8228 (v!17107 (_1!4081 lt!276799))) (rules!109 JsonLexer!203)))))

(declare-fun bs!84470 () Bool)

(assert (= bs!84470 d!224105))

(assert (=> bs!84470 m!916747))

(assert (=> b!646462 d!224105))

(declare-fun d!224107 () Bool)

(declare-fun list!2939 (Conc!2339) List!6921)

(assert (=> d!224107 (= (list!2937 lt!276797) (list!2939 (c!117504 lt!276797)))))

(declare-fun bs!84471 () Bool)

(assert (= bs!84471 d!224107))

(declare-fun m!916811 () Bool)

(assert (=> bs!84471 m!916811))

(assert (=> b!646469 d!224107))

(declare-fun bs!84472 () Bool)

(declare-fun d!224109 () Bool)

(assert (= bs!84472 (and d!224109 b!646469)))

(declare-fun lambda!19369 () Int)

(assert (=> bs!84472 (= lambda!19369 lambda!19362)))

(declare-fun lambda!19370 () Int)

(assert (=> bs!84472 (not (= lambda!19370 lambda!19362))))

(assert (=> d!224109 (not (= lambda!19370 lambda!19369))))

(declare-fun forall!1792 (List!6921 Int) Bool)

(assert (=> d!224109 (forall!1792 lt!276807 lambda!19370)))

(declare-fun lt!276815 () Unit!12076)

(declare-fun e!396694 () Unit!12076)

(assert (=> d!224109 (= lt!276815 e!396694)))

(declare-fun c!117509 () Bool)

(assert (=> d!224109 (= c!117509 ((_ is Nil!6907) lt!276807))))

(assert (=> d!224109 (forall!1792 lt!276807 lambda!19369)))

(assert (=> d!224109 (= (lemmaRemoveIdsPreservesRules!0 lt!276807) lt!276815)))

(declare-fun b!646478 () Bool)

(declare-fun Unit!12078 () Unit!12076)

(assert (=> b!646478 (= e!396694 Unit!12078)))

(declare-fun b!646479 () Bool)

(declare-fun Unit!12079 () Unit!12076)

(assert (=> b!646479 (= e!396694 Unit!12079)))

(declare-fun lt!276816 () Unit!12076)

(assert (=> b!646479 (= lt!276816 (lemmaRemoveIdsPreservesRules!0 (t!85233 lt!276807)))))

(assert (= (and d!224109 c!117509) b!646478))

(assert (= (and d!224109 (not c!117509)) b!646479))

(declare-fun m!916813 () Bool)

(assert (=> d!224109 m!916813))

(declare-fun m!916815 () Bool)

(assert (=> d!224109 m!916815))

(declare-fun m!916817 () Bool)

(assert (=> b!646479 m!916817))

(assert (=> b!646469 d!224109))

(declare-fun d!224111 () Bool)

(declare-fun e!396697 () Bool)

(assert (=> d!224111 e!396697))

(declare-fun res!283254 () Bool)

(assert (=> d!224111 (=> (not res!283254) (not e!396697))))

(declare-fun lt!276819 () BalanceConc!4690)

(declare-fun map!1528 (List!6922 Int) List!6921)

(assert (=> d!224111 (= res!283254 (= (list!2937 lt!276819) (map!1528 (list!2938 lt!276810) lambda!19361)))))

(declare-fun map!1529 (Conc!2340 Int) Conc!2339)

(assert (=> d!224111 (= lt!276819 (BalanceConc!4691 (map!1529 (c!117505 lt!276810) lambda!19361)))))

(assert (=> d!224111 (= (map!1527 lt!276810 lambda!19361) lt!276819)))

(declare-fun b!646482 () Bool)

(declare-fun isBalanced!622 (Conc!2339) Bool)

(assert (=> b!646482 (= e!396697 (isBalanced!622 (map!1529 (c!117505 lt!276810) lambda!19361)))))

(assert (= (and d!224111 res!283254) b!646482))

(declare-fun m!916819 () Bool)

(assert (=> d!224111 m!916819))

(assert (=> d!224111 m!916771))

(assert (=> d!224111 m!916771))

(declare-fun m!916821 () Bool)

(assert (=> d!224111 m!916821))

(declare-fun m!916823 () Bool)

(assert (=> d!224111 m!916823))

(assert (=> b!646482 m!916823))

(assert (=> b!646482 m!916823))

(declare-fun m!916825 () Bool)

(assert (=> b!646482 m!916825))

(assert (=> b!646469 d!224111))

(declare-fun bs!84473 () Bool)

(declare-fun d!224113 () Bool)

(assert (= bs!84473 (and d!224113 b!646469)))

(declare-fun lambda!19375 () Int)

(assert (=> bs!84473 (= lambda!19375 lambda!19364)))

(declare-fun lambda!19376 () Int)

(assert (=> bs!84473 (not (= lambda!19376 lambda!19364))))

(assert (=> d!224113 (not (= lambda!19376 lambda!19375))))

(declare-fun forall!1793 (List!6922 Int) Bool)

(assert (=> d!224113 (forall!1793 lt!276793 lambda!19376)))

(declare-fun lt!276824 () Unit!12076)

(declare-fun e!396700 () Unit!12076)

(assert (=> d!224113 (= lt!276824 e!396700)))

(declare-fun c!117513 () Bool)

(assert (=> d!224113 (= c!117513 ((_ is Nil!6908) lt!276793))))

(assert (=> d!224113 (forall!1793 lt!276793 lambda!19375)))

(assert (=> d!224113 (= (lemmaAddIdsPreservesRules!0 lt!276793) lt!276824)))

(declare-fun b!646487 () Bool)

(declare-fun Unit!12080 () Unit!12076)

(assert (=> b!646487 (= e!396700 Unit!12080)))

(declare-fun b!646488 () Bool)

(declare-fun Unit!12081 () Unit!12076)

(assert (=> b!646488 (= e!396700 Unit!12081)))

(declare-fun lt!276825 () Unit!12076)

(assert (=> b!646488 (= lt!276825 (lemmaAddIdsPreservesRules!0 (t!85234 lt!276793)))))

(assert (= (and d!224113 c!117513) b!646487))

(assert (= (and d!224113 (not c!117513)) b!646488))

(declare-fun m!916827 () Bool)

(assert (=> d!224113 m!916827))

(declare-fun m!916829 () Bool)

(assert (=> d!224113 m!916829))

(declare-fun m!916831 () Bool)

(assert (=> b!646488 m!916831))

(assert (=> b!646469 d!224113))

(declare-fun bs!84474 () Bool)

(declare-fun b!646515 () Bool)

(assert (= bs!84474 (and b!646515 b!646469)))

(declare-fun lambda!19423 () Int)

(assert (=> bs!84474 (not (= lambda!19423 lambda!19362))))

(declare-fun bs!84475 () Bool)

(assert (= bs!84475 (and b!646515 d!224109)))

(assert (=> bs!84475 (not (= lambda!19423 lambda!19369))))

(assert (=> bs!84475 (not (= lambda!19423 lambda!19370))))

(declare-fun b!646532 () Bool)

(declare-fun e!396727 () Bool)

(assert (=> b!646532 (= e!396727 true)))

(declare-fun b!646531 () Bool)

(declare-fun e!396726 () Bool)

(assert (=> b!646531 (= e!396726 e!396727)))

(assert (=> b!646515 e!396726))

(assert (= b!646531 b!646532))

(assert (= b!646515 b!646531))

(declare-fun lambda!19424 () Int)

(assert (=> bs!84474 (not (= lambda!19424 lambda!19362))))

(assert (=> bs!84475 (not (= lambda!19424 lambda!19369))))

(assert (=> bs!84475 (not (= lambda!19424 lambda!19370))))

(assert (=> b!646515 (not (= lambda!19424 lambda!19423))))

(declare-fun b!646534 () Bool)

(declare-fun e!396729 () Bool)

(assert (=> b!646534 (= e!396729 true)))

(declare-fun b!646533 () Bool)

(declare-fun e!396728 () Bool)

(assert (=> b!646533 (= e!396728 e!396729)))

(assert (=> b!646515 e!396728))

(assert (= b!646533 b!646534))

(assert (= b!646515 b!646533))

(declare-fun lambda!19425 () Int)

(assert (=> bs!84475 (not (= lambda!19425 lambda!19370))))

(assert (=> b!646515 (not (= lambda!19425 lambda!19423))))

(assert (=> bs!84475 (not (= lambda!19425 lambda!19369))))

(assert (=> bs!84474 (not (= lambda!19425 lambda!19362))))

(assert (=> b!646515 (not (= lambda!19425 lambda!19424))))

(declare-fun b!646536 () Bool)

(declare-fun e!396731 () Bool)

(assert (=> b!646536 (= e!396731 true)))

(declare-fun b!646535 () Bool)

(declare-fun e!396730 () Bool)

(assert (=> b!646535 (= e!396730 e!396731)))

(assert (=> b!646515 e!396730))

(assert (= b!646535 b!646536))

(assert (= b!646515 b!646535))

(declare-fun lambda!19426 () Int)

(assert (=> bs!84475 (not (= lambda!19426 lambda!19370))))

(assert (=> b!646515 (not (= lambda!19426 lambda!19423))))

(assert (=> bs!84475 (= lambda!19426 lambda!19369)))

(assert (=> b!646515 (not (= lambda!19426 lambda!19425))))

(assert (=> bs!84474 (= lambda!19426 lambda!19362)))

(assert (=> b!646515 (not (= lambda!19426 lambda!19424))))

(declare-fun bs!84476 () Bool)

(declare-fun d!224115 () Bool)

(assert (= bs!84476 (and d!224115 d!224109)))

(declare-fun lambda!19427 () Int)

(assert (=> bs!84476 (not (= lambda!19427 lambda!19370))))

(declare-fun bs!84477 () Bool)

(assert (= bs!84477 (and d!224115 b!646515)))

(assert (=> bs!84477 (not (= lambda!19427 lambda!19423))))

(assert (=> bs!84476 (= lambda!19427 lambda!19369)))

(assert (=> bs!84477 (= lambda!19427 lambda!19426)))

(assert (=> bs!84477 (not (= lambda!19427 lambda!19425))))

(declare-fun bs!84478 () Bool)

(assert (= bs!84478 (and d!224115 b!646469)))

(assert (=> bs!84478 (= lambda!19427 lambda!19362)))

(assert (=> bs!84477 (not (= lambda!19427 lambda!19424))))

(declare-fun b!646513 () Bool)

(declare-fun e!396719 () Bool)

(declare-fun lt!276920 () List!6921)

(declare-fun size!5462 (List!6921) Int)

(declare-fun filter!137 (List!6921 Int) List!6921)

(assert (=> b!646513 (= e!396719 (< (size!5462 (filter!137 lt!276920 lambda!19425)) (size!5462 lt!276920)))))

(declare-fun b!646514 () Bool)

(declare-fun e!396718 () Unit!12076)

(declare-fun Unit!12082 () Unit!12076)

(assert (=> b!646514 (= e!396718 Unit!12082)))

(declare-fun lt!276917 () BalanceConc!4690)

(declare-fun e!396717 () BalanceConc!4690)

(declare-fun lt!276905 () BalanceConc!4690)

(declare-fun lt!276914 () BalanceConc!4690)

(declare-fun ++!1856 (BalanceConc!4690 BalanceConc!4690) BalanceConc!4690)

(assert (=> b!646515 (= e!396717 (++!1856 (++!1856 (sortObjectsByID!0 lt!276917) lt!276914) (sortObjectsByID!0 lt!276905)))))

(declare-fun lt!276926 () tuple2!7472)

(declare-fun apply!1652 (BalanceConc!4690 Int) tuple2!7472)

(declare-fun size!5463 (BalanceConc!4690) Int)

(assert (=> b!646515 (= lt!276926 (apply!1652 (map!1527 lt!276810 lambda!19361) (ite (>= (size!5463 (map!1527 lt!276810 lambda!19361)) 0) (div (size!5463 (map!1527 lt!276810 lambda!19361)) 2) (- (div (- (size!5463 (map!1527 lt!276810 lambda!19361))) 2)))))))

(declare-fun filter!138 (BalanceConc!4690 Int) BalanceConc!4690)

(assert (=> b!646515 (= lt!276917 (filter!138 (map!1527 lt!276810 lambda!19361) lambda!19423))))

(assert (=> b!646515 (= lt!276914 (filter!138 (map!1527 lt!276810 lambda!19361) lambda!19424))))

(assert (=> b!646515 (= lt!276905 (filter!138 (map!1527 lt!276810 lambda!19361) lambda!19425))))

(declare-fun c!117527 () Bool)

(declare-fun contains!1543 (BalanceConc!4690 tuple2!7472) Bool)

(assert (=> b!646515 (= c!117527 (contains!1543 lt!276917 lt!276926))))

(declare-fun lt!276924 () Unit!12076)

(declare-fun e!396715 () Unit!12076)

(assert (=> b!646515 (= lt!276924 e!396715)))

(declare-fun c!117524 () Bool)

(declare-fun forall!1794 (BalanceConc!4690 Int) Bool)

(assert (=> b!646515 (= c!117524 (forall!1794 (map!1527 lt!276810 lambda!19361) lambda!19423))))

(declare-fun lt!276912 () Unit!12076)

(declare-fun e!396716 () Unit!12076)

(assert (=> b!646515 (= lt!276912 e!396716)))

(declare-fun lt!276918 () List!6921)

(assert (=> b!646515 (= lt!276918 (list!2937 (map!1527 lt!276810 lambda!19361)))))

(declare-fun lt!276902 () Unit!12076)

(declare-fun lemmaNotForallFilterShorter!13 (List!6921 Int) Unit!12076)

(assert (=> b!646515 (= lt!276902 (lemmaNotForallFilterShorter!13 lt!276918 lambda!19423))))

(declare-fun res!283259 () Bool)

(declare-fun isEmpty!4722 (List!6921) Bool)

(assert (=> b!646515 (= res!283259 (isEmpty!4722 lt!276918))))

(declare-fun e!396720 () Bool)

(assert (=> b!646515 (=> res!283259 e!396720)))

(assert (=> b!646515 e!396720))

(declare-fun lt!276908 () Unit!12076)

(assert (=> b!646515 (= lt!276908 lt!276902)))

(declare-fun c!117525 () Bool)

(assert (=> b!646515 (= c!117525 (contains!1543 lt!276905 lt!276926))))

(declare-fun lt!276906 () Unit!12076)

(declare-fun e!396721 () Unit!12076)

(assert (=> b!646515 (= lt!276906 e!396721)))

(declare-fun c!117526 () Bool)

(assert (=> b!646515 (= c!117526 (forall!1794 (map!1527 lt!276810 lambda!19361) lambda!19425))))

(declare-fun lt!276911 () Unit!12076)

(assert (=> b!646515 (= lt!276911 e!396718)))

(assert (=> b!646515 (= lt!276920 (list!2937 (map!1527 lt!276810 lambda!19361)))))

(declare-fun lt!276930 () Unit!12076)

(assert (=> b!646515 (= lt!276930 (lemmaNotForallFilterShorter!13 lt!276920 lambda!19425))))

(declare-fun res!283260 () Bool)

(assert (=> b!646515 (= res!283260 (isEmpty!4722 lt!276920))))

(assert (=> b!646515 (=> res!283260 e!396719)))

(assert (=> b!646515 e!396719))

(declare-fun lt!276929 () Unit!12076)

(assert (=> b!646515 (= lt!276929 lt!276930)))

(declare-fun lt!276931 () Unit!12076)

(declare-fun filterSubseq!13 (List!6921 Int) Unit!12076)

(assert (=> b!646515 (= lt!276931 (filterSubseq!13 (list!2937 (map!1527 lt!276810 lambda!19361)) lambda!19423))))

(declare-fun lt!276925 () Unit!12076)

(assert (=> b!646515 (= lt!276925 (filterSubseq!13 (list!2937 (map!1527 lt!276810 lambda!19361)) lambda!19424))))

(declare-fun lt!276921 () Unit!12076)

(assert (=> b!646515 (= lt!276921 (filterSubseq!13 (list!2937 (map!1527 lt!276810 lambda!19361)) lambda!19425))))

(declare-fun lt!276909 () List!6921)

(assert (=> b!646515 (= lt!276909 (list!2937 (filter!138 (map!1527 lt!276810 lambda!19361) lambda!19423)))))

(declare-fun lt!276915 () List!6921)

(assert (=> b!646515 (= lt!276915 (list!2937 (map!1527 lt!276810 lambda!19361)))))

(declare-fun lt!276933 () Unit!12076)

(declare-fun lemmaForallSubseq!22 (List!6921 List!6921 Int) Unit!12076)

(assert (=> b!646515 (= lt!276933 (lemmaForallSubseq!22 lt!276909 lt!276915 lambda!19426))))

(assert (=> b!646515 (forall!1792 lt!276909 lambda!19426)))

(declare-fun lt!276928 () Unit!12076)

(assert (=> b!646515 (= lt!276928 lt!276933)))

(declare-fun lt!276907 () List!6921)

(assert (=> b!646515 (= lt!276907 (list!2937 (filter!138 (map!1527 lt!276810 lambda!19361) lambda!19424)))))

(declare-fun lt!276932 () List!6921)

(assert (=> b!646515 (= lt!276932 (list!2937 (map!1527 lt!276810 lambda!19361)))))

(declare-fun lt!276903 () Unit!12076)

(assert (=> b!646515 (= lt!276903 (lemmaForallSubseq!22 lt!276907 lt!276932 lambda!19426))))

(assert (=> b!646515 (forall!1792 lt!276907 lambda!19426)))

(declare-fun lt!276916 () Unit!12076)

(assert (=> b!646515 (= lt!276916 lt!276903)))

(declare-fun lt!276923 () List!6921)

(assert (=> b!646515 (= lt!276923 (list!2937 (filter!138 (map!1527 lt!276810 lambda!19361) lambda!19425)))))

(declare-fun lt!276899 () List!6921)

(assert (=> b!646515 (= lt!276899 (list!2937 (map!1527 lt!276810 lambda!19361)))))

(declare-fun lt!276922 () Unit!12076)

(assert (=> b!646515 (= lt!276922 (lemmaForallSubseq!22 lt!276923 lt!276899 lambda!19426))))

(assert (=> b!646515 (forall!1792 lt!276923 lambda!19426)))

(declare-fun lt!276919 () Unit!12076)

(assert (=> b!646515 (= lt!276919 lt!276922)))

(declare-fun lt!276910 () Unit!12076)

(declare-fun lemmaConcatPreservesForall!51 (List!6921 List!6921 Int) Unit!12076)

(assert (=> b!646515 (= lt!276910 (lemmaConcatPreservesForall!51 (list!2937 (sortObjectsByID!0 lt!276917)) (list!2937 lt!276914) lambda!19426))))

(declare-fun lt!276913 () Unit!12076)

(declare-fun ++!1857 (List!6921 List!6921) List!6921)

(assert (=> b!646515 (= lt!276913 (lemmaConcatPreservesForall!51 (++!1857 (list!2937 (sortObjectsByID!0 lt!276917)) (list!2937 lt!276914)) (list!2937 (sortObjectsByID!0 lt!276905)) lambda!19426))))

(declare-fun b!646516 () Bool)

(assert (=> b!646516 true))

(declare-fun lt!276901 () Unit!12076)

(declare-fun forallContained!465 (List!6921 Int tuple2!7472) Unit!12076)

(assert (=> b!646516 (= lt!276901 (forallContained!465 (list!2937 lt!276905) lambda!19425 lt!276926))))

(declare-fun err!682 () Unit!12076)

(assert (=> b!646516 (= e!396721 err!682)))

(declare-fun b!646517 () Bool)

(declare-fun Unit!12083 () Unit!12076)

(assert (=> b!646517 (= e!396715 Unit!12083)))

(declare-fun lt!276904 () BalanceConc!4690)

(assert (=> d!224115 (forall!1794 lt!276904 lambda!19427)))

(assert (=> d!224115 (= lt!276904 e!396717)))

(declare-fun c!117528 () Bool)

(assert (=> d!224115 (= c!117528 (<= (size!5463 (map!1527 lt!276810 lambda!19361)) 1))))

(assert (=> d!224115 (= (sortObjectsByID!0 (map!1527 lt!276810 lambda!19361)) lt!276904)))

(declare-fun b!646518 () Bool)

(declare-fun Unit!12084 () Unit!12076)

(assert (=> b!646518 (= e!396721 Unit!12084)))

(declare-fun b!646519 () Bool)

(declare-fun Unit!12085 () Unit!12076)

(assert (=> b!646519 (= e!396716 Unit!12085)))

(declare-fun b!646520 () Bool)

(assert (=> b!646520 true))

(declare-fun lt!276927 () Unit!12076)

(assert (=> b!646520 (= lt!276927 (forallContained!465 (list!2937 (map!1527 lt!276810 lambda!19361)) lambda!19423 lt!276926))))

(declare-fun err!683 () Unit!12076)

(assert (=> b!646520 (= e!396716 err!683)))

(declare-fun b!646521 () Bool)

(assert (=> b!646521 (= e!396717 (map!1527 lt!276810 lambda!19361))))

(declare-fun b!646522 () Bool)

(assert (=> b!646522 (= e!396720 (< (size!5462 (filter!137 lt!276918 lambda!19423)) (size!5462 lt!276918)))))

(declare-fun b!646523 () Bool)

(assert (=> b!646523 true))

(declare-fun lt!276900 () Unit!12076)

(assert (=> b!646523 (= lt!276900 (forallContained!465 (list!2937 (map!1527 lt!276810 lambda!19361)) lambda!19425 lt!276926))))

(declare-fun err!685 () Unit!12076)

(assert (=> b!646523 (= e!396718 err!685)))

(declare-fun b!646524 () Bool)

(assert (=> b!646524 true))

(declare-fun lt!276898 () Unit!12076)

(assert (=> b!646524 (= lt!276898 (forallContained!465 (list!2937 lt!276917) lambda!19423 lt!276926))))

(declare-fun err!684 () Unit!12076)

(assert (=> b!646524 (= e!396715 err!684)))

(assert (= (and d!224115 c!117528) b!646521))

(assert (= (and d!224115 (not c!117528)) b!646515))

(assert (= (and b!646515 c!117527) b!646524))

(assert (= (and b!646515 (not c!117527)) b!646517))

(assert (= (and b!646515 c!117524) b!646520))

(assert (= (and b!646515 (not c!117524)) b!646519))

(assert (= (and b!646515 (not res!283259)) b!646522))

(assert (= (and b!646515 c!117525) b!646516))

(assert (= (and b!646515 (not c!117525)) b!646518))

(assert (= (and b!646515 c!117526) b!646523))

(assert (= (and b!646515 (not c!117526)) b!646514))

(assert (= (and b!646515 (not res!283260)) b!646513))

(declare-fun m!916833 () Bool)

(assert (=> b!646513 m!916833))

(assert (=> b!646513 m!916833))

(declare-fun m!916835 () Bool)

(assert (=> b!646513 m!916835))

(declare-fun m!916837 () Bool)

(assert (=> b!646513 m!916837))

(declare-fun m!916839 () Bool)

(assert (=> b!646516 m!916839))

(assert (=> b!646516 m!916839))

(declare-fun m!916841 () Bool)

(assert (=> b!646516 m!916841))

(declare-fun m!916843 () Bool)

(assert (=> d!224115 m!916843))

(assert (=> d!224115 m!916763))

(declare-fun m!916845 () Bool)

(assert (=> d!224115 m!916845))

(declare-fun m!916847 () Bool)

(assert (=> b!646515 m!916847))

(declare-fun m!916849 () Bool)

(assert (=> b!646515 m!916849))

(declare-fun m!916851 () Bool)

(assert (=> b!646515 m!916851))

(assert (=> b!646515 m!916763))

(declare-fun m!916853 () Bool)

(assert (=> b!646515 m!916853))

(declare-fun m!916855 () Bool)

(assert (=> b!646515 m!916855))

(declare-fun m!916857 () Bool)

(assert (=> b!646515 m!916857))

(declare-fun m!916859 () Bool)

(assert (=> b!646515 m!916859))

(declare-fun m!916861 () Bool)

(assert (=> b!646515 m!916861))

(declare-fun m!916863 () Bool)

(assert (=> b!646515 m!916863))

(declare-fun m!916865 () Bool)

(assert (=> b!646515 m!916865))

(declare-fun m!916867 () Bool)

(assert (=> b!646515 m!916867))

(declare-fun m!916869 () Bool)

(assert (=> b!646515 m!916869))

(assert (=> b!646515 m!916849))

(declare-fun m!916871 () Bool)

(assert (=> b!646515 m!916871))

(assert (=> b!646515 m!916859))

(assert (=> b!646515 m!916855))

(declare-fun m!916873 () Bool)

(assert (=> b!646515 m!916873))

(assert (=> b!646515 m!916763))

(assert (=> b!646515 m!916849))

(declare-fun m!916875 () Bool)

(assert (=> b!646515 m!916875))

(declare-fun m!916877 () Bool)

(assert (=> b!646515 m!916877))

(assert (=> b!646515 m!916849))

(declare-fun m!916879 () Bool)

(assert (=> b!646515 m!916879))

(declare-fun m!916881 () Bool)

(assert (=> b!646515 m!916881))

(assert (=> b!646515 m!916763))

(assert (=> b!646515 m!916867))

(declare-fun m!916883 () Bool)

(assert (=> b!646515 m!916883))

(assert (=> b!646515 m!916861))

(declare-fun m!916885 () Bool)

(assert (=> b!646515 m!916885))

(declare-fun m!916887 () Bool)

(assert (=> b!646515 m!916887))

(assert (=> b!646515 m!916763))

(declare-fun m!916889 () Bool)

(assert (=> b!646515 m!916889))

(declare-fun m!916891 () Bool)

(assert (=> b!646515 m!916891))

(assert (=> b!646515 m!916857))

(assert (=> b!646515 m!916883))

(assert (=> b!646515 m!916763))

(assert (=> b!646515 m!916875))

(assert (=> b!646515 m!916861))

(declare-fun m!916893 () Bool)

(assert (=> b!646515 m!916893))

(assert (=> b!646515 m!916763))

(assert (=> b!646515 m!916875))

(assert (=> b!646515 m!916763))

(declare-fun m!916895 () Bool)

(assert (=> b!646515 m!916895))

(assert (=> b!646515 m!916763))

(assert (=> b!646515 m!916867))

(declare-fun m!916897 () Bool)

(assert (=> b!646515 m!916897))

(assert (=> b!646515 m!916863))

(declare-fun m!916899 () Bool)

(assert (=> b!646515 m!916899))

(assert (=> b!646515 m!916889))

(declare-fun m!916901 () Bool)

(assert (=> b!646515 m!916901))

(declare-fun m!916903 () Bool)

(assert (=> b!646515 m!916903))

(assert (=> b!646515 m!916857))

(declare-fun m!916905 () Bool)

(assert (=> b!646515 m!916905))

(assert (=> b!646515 m!916763))

(assert (=> b!646515 m!916889))

(declare-fun m!916907 () Bool)

(assert (=> b!646515 m!916907))

(assert (=> b!646515 m!916763))

(assert (=> b!646515 m!916845))

(declare-fun m!916909 () Bool)

(assert (=> b!646515 m!916909))

(assert (=> b!646515 m!916763))

(declare-fun m!916911 () Bool)

(assert (=> b!646515 m!916911))

(assert (=> b!646515 m!916859))

(assert (=> b!646515 m!916855))

(assert (=> b!646515 m!916897))

(declare-fun m!916913 () Bool)

(assert (=> b!646515 m!916913))

(declare-fun m!916915 () Bool)

(assert (=> b!646515 m!916915))

(declare-fun m!916917 () Bool)

(assert (=> b!646524 m!916917))

(assert (=> b!646524 m!916917))

(declare-fun m!916919 () Bool)

(assert (=> b!646524 m!916919))

(assert (=> b!646520 m!916763))

(assert (=> b!646520 m!916849))

(assert (=> b!646520 m!916849))

(declare-fun m!916921 () Bool)

(assert (=> b!646520 m!916921))

(declare-fun m!916923 () Bool)

(assert (=> b!646522 m!916923))

(assert (=> b!646522 m!916923))

(declare-fun m!916925 () Bool)

(assert (=> b!646522 m!916925))

(declare-fun m!916927 () Bool)

(assert (=> b!646522 m!916927))

(assert (=> b!646523 m!916763))

(assert (=> b!646523 m!916849))

(assert (=> b!646523 m!916849))

(declare-fun m!916929 () Bool)

(assert (=> b!646523 m!916929))

(assert (=> b!646469 d!224115))

(declare-fun bs!84479 () Bool)

(declare-fun d!224117 () Bool)

(assert (= bs!84479 (and d!224117 d!224109)))

(declare-fun lambda!19430 () Int)

(assert (=> bs!84479 (not (= lambda!19430 lambda!19370))))

(declare-fun bs!84480 () Bool)

(assert (= bs!84480 (and d!224117 b!646515)))

(assert (=> bs!84480 (not (= lambda!19430 lambda!19423))))

(assert (=> bs!84479 (not (= lambda!19430 lambda!19369))))

(assert (=> bs!84480 (not (= lambda!19430 lambda!19426))))

(assert (=> bs!84480 (not (= lambda!19430 lambda!19425))))

(declare-fun bs!84481 () Bool)

(assert (= bs!84481 (and d!224117 b!646469)))

(assert (=> bs!84481 (not (= lambda!19430 lambda!19362))))

(declare-fun bs!84482 () Bool)

(assert (= bs!84482 (and d!224117 d!224115)))

(assert (=> bs!84482 (not (= lambda!19430 lambda!19427))))

(assert (=> bs!84480 (not (= lambda!19430 lambda!19424))))

(assert (=> d!224117 true))

(declare-fun order!5195 () Int)

(declare-fun order!5193 () Int)

(declare-fun dynLambda!3772 (Int Int) Int)

(declare-fun dynLambda!3773 (Int Int) Int)

(assert (=> d!224117 (< (dynLambda!3772 order!5193 lambda!19363) (dynLambda!3773 order!5195 lambda!19430))))

(assert (=> d!224117 true))

(declare-fun order!5197 () Int)

(declare-fun dynLambda!3774 (Int Int) Int)

(assert (=> d!224117 (< (dynLambda!3774 order!5197 lambda!19364) (dynLambda!3773 order!5195 lambda!19430))))

(declare-fun map!1530 (List!6921 Int) List!6922)

(assert (=> d!224117 (forall!1793 (map!1530 lt!276807 lambda!19363) lambda!19364)))

(declare-fun lt!276936 () Unit!12076)

(declare-fun choose!4650 (List!6921 Int Int) Unit!12076)

(assert (=> d!224117 (= lt!276936 (choose!4650 lt!276807 lambda!19363 lambda!19364))))

(assert (=> d!224117 (forall!1792 lt!276807 lambda!19430)))

(assert (=> d!224117 (= (mapPred!61 lt!276807 lambda!19363 lambda!19364) lt!276936)))

(declare-fun bs!84483 () Bool)

(assert (= bs!84483 d!224117))

(declare-fun m!916931 () Bool)

(assert (=> bs!84483 m!916931))

(assert (=> bs!84483 m!916931))

(declare-fun m!916933 () Bool)

(assert (=> bs!84483 m!916933))

(declare-fun m!916935 () Bool)

(assert (=> bs!84483 m!916935))

(declare-fun m!916937 () Bool)

(assert (=> bs!84483 m!916937))

(assert (=> b!646469 d!224117))

(declare-fun d!224119 () Bool)

(declare-fun lt!276939 () Bool)

(assert (=> d!224119 (= lt!276939 (forall!1793 (list!2938 (map!1526 lt!276797 lambda!19363)) lambda!19364))))

(declare-fun forall!1795 (Conc!2340 Int) Bool)

(assert (=> d!224119 (= lt!276939 (forall!1795 (c!117505 (map!1526 lt!276797 lambda!19363)) lambda!19364))))

(assert (=> d!224119 (= (forall!1791 (map!1526 lt!276797 lambda!19363) lambda!19364) lt!276939)))

(declare-fun bs!84484 () Bool)

(assert (= bs!84484 d!224119))

(assert (=> bs!84484 m!916769))

(declare-fun m!916939 () Bool)

(assert (=> bs!84484 m!916939))

(assert (=> bs!84484 m!916939))

(declare-fun m!916941 () Bool)

(assert (=> bs!84484 m!916941))

(declare-fun m!916943 () Bool)

(assert (=> bs!84484 m!916943))

(assert (=> b!646469 d!224119))

(declare-fun bs!84485 () Bool)

(declare-fun d!224121 () Bool)

(assert (= bs!84485 (and d!224121 b!646469)))

(declare-fun lambda!19433 () Int)

(assert (=> bs!84485 (not (= lambda!19433 lambda!19364))))

(declare-fun bs!84486 () Bool)

(assert (= bs!84486 (and d!224121 d!224113)))

(assert (=> bs!84486 (not (= lambda!19433 lambda!19375))))

(assert (=> bs!84486 (not (= lambda!19433 lambda!19376))))

(assert (=> d!224121 true))

(declare-fun order!5199 () Int)

(declare-fun dynLambda!3775 (Int Int) Int)

(assert (=> d!224121 (< (dynLambda!3775 order!5199 lambda!19361) (dynLambda!3774 order!5197 lambda!19433))))

(assert (=> d!224121 true))

(assert (=> d!224121 (< (dynLambda!3773 order!5195 lambda!19362) (dynLambda!3774 order!5197 lambda!19433))))

(assert (=> d!224121 (forall!1792 (map!1528 lt!276793 lambda!19361) lambda!19362)))

(declare-fun lt!276942 () Unit!12076)

(declare-fun choose!4651 (List!6922 Int Int) Unit!12076)

(assert (=> d!224121 (= lt!276942 (choose!4651 lt!276793 lambda!19361 lambda!19362))))

(assert (=> d!224121 (forall!1793 lt!276793 lambda!19433)))

(assert (=> d!224121 (= (mapPred!62 lt!276793 lambda!19361 lambda!19362) lt!276942)))

(declare-fun bs!84487 () Bool)

(assert (= bs!84487 d!224121))

(declare-fun m!916945 () Bool)

(assert (=> bs!84487 m!916945))

(assert (=> bs!84487 m!916945))

(declare-fun m!916947 () Bool)

(assert (=> bs!84487 m!916947))

(declare-fun m!916949 () Bool)

(assert (=> bs!84487 m!916949))

(declare-fun m!916951 () Bool)

(assert (=> bs!84487 m!916951))

(assert (=> b!646469 d!224121))

(declare-fun d!224123 () Bool)

(declare-fun e!396737 () Bool)

(assert (=> d!224123 e!396737))

(declare-fun res!283263 () Bool)

(assert (=> d!224123 (=> res!283263 e!396737)))

(declare-fun lt!276949 () tuple3!588)

(declare-fun isEmpty!4723 (Option!1666) Bool)

(assert (=> d!224123 (= res!283263 (isEmpty!4723 (_1!4081 lt!276949)))))

(declare-fun e!396736 () Option!1666)

(declare-datatypes ((tuple3!590 0))(
  ( (tuple3!591 (_1!4083 Bool) (_2!4083 CacheUp!306) (_3!346 CacheDown!306)) )
))
(declare-fun lt!276951 () tuple3!590)

(assert (=> d!224123 (= lt!276949 (tuple3!589 e!396736 (_2!4083 lt!276951) (_3!346 lt!276951)))))

(declare-fun c!117531 () Bool)

(assert (=> d!224123 (= c!117531 (not (_1!4083 lt!276951)))))

(declare-fun lt!276950 () BalanceConc!4688)

(declare-fun rulesProduceEachTokenIndividuallyMem!9 (LexerInterface!1258 List!6917 BalanceConc!4688 CacheUp!306 CacheDown!306) tuple3!590)

(assert (=> d!224123 (= lt!276951 (rulesProduceEachTokenIndividuallyMem!9 Lexer!1256 (rules!109 JsonLexer!203) lt!276950 (_2!4081 lt!276802) (_3!345 lt!276802)))))

(declare-fun singletonSeq!440 (Token!2486) BalanceConc!4688)

(declare-fun apply!1653 (TokenValueInjection!2584 BalanceConc!4686) TokenValue!1416)

(declare-datatypes ((KeywordValueInjection!46 0))(
  ( (KeywordValueInjection!47) )
))
(declare-fun injection!9 (KeywordValueInjection!46) TokenValueInjection!2584)

(declare-fun singletonSeq!441 ((_ BitVec 16)) BalanceConc!4686)

(declare-fun rBracketRule!0 (JsonLexer!202) Rule!2564)

(assert (=> d!224123 (= lt!276950 (singletonSeq!440 (Token!2487 (apply!1653 (injection!9 KeywordValueInjection!47) (singletonSeq!441 #x005D)) (rBracketRule!0 JsonLexer!203) 1 (Cons!6901 #x005D Nil!6901))))))

(assert (=> d!224123 (not (isEmpty!4721 (rules!109 JsonLexer!203)))))

(assert (=> d!224123 (= (createRightBracketSeparator!0 (_2!4081 lt!276802) (_3!345 lt!276802)) lt!276949)))

(declare-fun b!646551 () Bool)

(assert (=> b!646551 (= e!396736 None!1665)))

(declare-fun b!646552 () Bool)

(declare-fun printableTokensFromTokens!12 (List!6917 BalanceConc!4688) Option!1666)

(assert (=> b!646552 (= e!396736 (printableTokensFromTokens!12 (rules!109 JsonLexer!203) lt!276950))))

(declare-fun b!646553 () Bool)

(declare-fun get!2489 (Option!1666) PrintableTokens!144)

(assert (=> b!646553 (= e!396737 (usesJsonRules!0 (get!2489 (_1!4081 lt!276949))))))

(assert (= (and d!224123 c!117531) b!646551))

(assert (= (and d!224123 (not c!117531)) b!646552))

(assert (= (and d!224123 (not res!283263)) b!646553))

(declare-fun m!916953 () Bool)

(assert (=> d!224123 m!916953))

(declare-fun m!916955 () Bool)

(assert (=> d!224123 m!916955))

(assert (=> d!224123 m!916953))

(declare-fun m!916957 () Bool)

(assert (=> d!224123 m!916957))

(declare-fun m!916959 () Bool)

(assert (=> d!224123 m!916959))

(assert (=> d!224123 m!916957))

(declare-fun m!916961 () Bool)

(assert (=> d!224123 m!916961))

(assert (=> d!224123 m!916747))

(declare-fun m!916963 () Bool)

(assert (=> d!224123 m!916963))

(assert (=> d!224123 m!916747))

(declare-fun m!916965 () Bool)

(assert (=> d!224123 m!916965))

(declare-fun m!916967 () Bool)

(assert (=> d!224123 m!916967))

(assert (=> d!224123 m!916747))

(assert (=> b!646552 m!916747))

(assert (=> b!646552 m!916747))

(declare-fun m!916969 () Bool)

(assert (=> b!646552 m!916969))

(declare-fun m!916971 () Bool)

(assert (=> b!646553 m!916971))

(assert (=> b!646553 m!916971))

(declare-fun m!916973 () Bool)

(assert (=> b!646553 m!916973))

(assert (=> b!646469 d!224123))

(declare-fun d!224125 () Bool)

(declare-fun list!2940 (Conc!2340) List!6922)

(assert (=> d!224125 (= (list!2938 lt!276810) (list!2940 (c!117505 lt!276810)))))

(declare-fun bs!84488 () Bool)

(assert (= bs!84488 d!224125))

(declare-fun m!916975 () Bool)

(assert (=> bs!84488 m!916975))

(assert (=> b!646469 d!224125))

(declare-fun d!224127 () Bool)

(declare-fun e!396742 () Bool)

(assert (=> d!224127 e!396742))

(declare-fun res!283266 () Bool)

(assert (=> d!224127 (=> res!283266 e!396742)))

(declare-fun lt!276959 () tuple3!588)

(assert (=> d!224127 (= res!283266 (isEmpty!4723 (_1!4081 lt!276959)))))

(declare-fun e!396743 () Option!1666)

(declare-fun lt!276960 () tuple3!590)

(assert (=> d!224127 (= lt!276959 (tuple3!589 e!396743 (_2!4083 lt!276960) (_3!346 lt!276960)))))

(declare-fun c!117534 () Bool)

(assert (=> d!224127 (= c!117534 (not (_1!4083 lt!276960)))))

(declare-fun lt!276958 () BalanceConc!4688)

(assert (=> d!224127 (= lt!276960 (rulesProduceEachTokenIndividuallyMem!9 Lexer!1256 (rules!109 JsonLexer!203) lt!276958 cacheUp!351 cacheDown!364))))

(declare-fun ++!1858 (BalanceConc!4688 BalanceConc!4688) BalanceConc!4688)

(declare-fun commaRule!0 (JsonLexer!202) Rule!2564)

(declare-datatypes ((WhitespaceValueInjection!42 0))(
  ( (WhitespaceValueInjection!43) )
))
(declare-fun injection!7 (WhitespaceValueInjection!42) TokenValueInjection!2584)

(declare-fun whitespaceRule!0 (JsonLexer!202) Rule!2564)

(assert (=> d!224127 (= lt!276958 (++!1858 (singletonSeq!440 (Token!2487 (apply!1653 (injection!9 KeywordValueInjection!47) (singletonSeq!441 #x002C)) (commaRule!0 JsonLexer!203) 1 (Cons!6901 #x002C Nil!6901))) (singletonSeq!440 (Token!2487 (apply!1653 (injection!7 WhitespaceValueInjection!43) (singletonSeq!441 #x000A)) (whitespaceRule!0 JsonLexer!203) 1 (Cons!6901 #x000A Nil!6901)))))))

(assert (=> d!224127 (not (isEmpty!4721 (rules!109 JsonLexer!203)))))

(assert (=> d!224127 (= (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364) lt!276959)))

(declare-fun b!646560 () Bool)

(assert (=> b!646560 (= e!396743 None!1665)))

(declare-fun b!646561 () Bool)

(assert (=> b!646561 (= e!396743 (printableTokensFromTokens!12 (rules!109 JsonLexer!203) lt!276958))))

(declare-fun b!646562 () Bool)

(assert (=> b!646562 (= e!396742 (usesJsonRules!0 (get!2489 (_1!4081 lt!276959))))))

(assert (= (and d!224127 c!117534) b!646560))

(assert (= (and d!224127 (not c!117534)) b!646561))

(assert (= (and d!224127 (not res!283266)) b!646562))

(assert (=> d!224127 m!916953))

(declare-fun m!916977 () Bool)

(assert (=> d!224127 m!916977))

(declare-fun m!916979 () Bool)

(assert (=> d!224127 m!916979))

(declare-fun m!916981 () Bool)

(assert (=> d!224127 m!916981))

(declare-fun m!916983 () Bool)

(assert (=> d!224127 m!916983))

(assert (=> d!224127 m!916977))

(declare-fun m!916985 () Bool)

(assert (=> d!224127 m!916985))

(assert (=> d!224127 m!916747))

(declare-fun m!916987 () Bool)

(assert (=> d!224127 m!916987))

(declare-fun m!916989 () Bool)

(assert (=> d!224127 m!916989))

(declare-fun m!916991 () Bool)

(assert (=> d!224127 m!916991))

(assert (=> d!224127 m!916983))

(declare-fun m!916993 () Bool)

(assert (=> d!224127 m!916993))

(assert (=> d!224127 m!916747))

(assert (=> d!224127 m!916963))

(declare-fun m!916995 () Bool)

(assert (=> d!224127 m!916995))

(assert (=> d!224127 m!916979))

(assert (=> d!224127 m!916747))

(declare-fun m!916997 () Bool)

(assert (=> d!224127 m!916997))

(assert (=> d!224127 m!916991))

(assert (=> d!224127 m!916953))

(assert (=> d!224127 m!916989))

(declare-fun m!916999 () Bool)

(assert (=> d!224127 m!916999))

(assert (=> b!646561 m!916747))

(assert (=> b!646561 m!916747))

(declare-fun m!917001 () Bool)

(assert (=> b!646561 m!917001))

(declare-fun m!917003 () Bool)

(assert (=> b!646562 m!917003))

(assert (=> b!646562 m!917003))

(declare-fun m!917005 () Bool)

(assert (=> b!646562 m!917005))

(assert (=> b!646469 d!224127))

(declare-fun d!224129 () Bool)

(declare-fun e!396748 () Bool)

(assert (=> d!224129 e!396748))

(declare-fun res!283269 () Bool)

(assert (=> d!224129 (=> res!283269 e!396748)))

(declare-fun lt!276967 () tuple3!588)

(assert (=> d!224129 (= res!283269 (isEmpty!4723 (_1!4081 lt!276967)))))

(declare-fun e!396749 () Option!1666)

(declare-fun lt!276968 () tuple3!590)

(assert (=> d!224129 (= lt!276967 (tuple3!589 e!396749 (_2!4083 lt!276968) (_3!346 lt!276968)))))

(declare-fun c!117537 () Bool)

(assert (=> d!224129 (= c!117537 (not (_1!4083 lt!276968)))))

(declare-fun lt!276969 () BalanceConc!4688)

(assert (=> d!224129 (= lt!276968 (rulesProduceEachTokenIndividuallyMem!9 Lexer!1256 (rules!109 JsonLexer!203) lt!276969 (_2!4081 lt!276799) (_3!345 lt!276799)))))

(declare-fun lBracketRule!0 (JsonLexer!202) Rule!2564)

(assert (=> d!224129 (= lt!276969 (singletonSeq!440 (Token!2487 (apply!1653 (injection!9 KeywordValueInjection!47) (singletonSeq!441 #x005B)) (lBracketRule!0 JsonLexer!203) 1 (Cons!6901 #x005B Nil!6901))))))

(assert (=> d!224129 (not (isEmpty!4721 (rules!109 JsonLexer!203)))))

(assert (=> d!224129 (= (createLeftBracketSeparator!0 (_2!4081 lt!276799) (_3!345 lt!276799)) lt!276967)))

(declare-fun b!646569 () Bool)

(assert (=> b!646569 (= e!396749 None!1665)))

(declare-fun b!646570 () Bool)

(assert (=> b!646570 (= e!396749 (printableTokensFromTokens!12 (rules!109 JsonLexer!203) lt!276969))))

(declare-fun b!646571 () Bool)

(assert (=> b!646571 (= e!396748 (usesJsonRules!0 (get!2489 (_1!4081 lt!276967))))))

(assert (= (and d!224129 c!117537) b!646569))

(assert (= (and d!224129 (not c!117537)) b!646570))

(assert (= (and d!224129 (not res!283269)) b!646571))

(assert (=> d!224129 m!916953))

(declare-fun m!917007 () Bool)

(assert (=> d!224129 m!917007))

(assert (=> d!224129 m!916747))

(declare-fun m!917009 () Bool)

(assert (=> d!224129 m!917009))

(assert (=> d!224129 m!916953))

(declare-fun m!917011 () Bool)

(assert (=> d!224129 m!917011))

(declare-fun m!917013 () Bool)

(assert (=> d!224129 m!917013))

(declare-fun m!917015 () Bool)

(assert (=> d!224129 m!917015))

(assert (=> d!224129 m!917011))

(assert (=> d!224129 m!916747))

(declare-fun m!917017 () Bool)

(assert (=> d!224129 m!917017))

(assert (=> d!224129 m!916747))

(assert (=> d!224129 m!916963))

(assert (=> b!646570 m!916747))

(assert (=> b!646570 m!916747))

(declare-fun m!917019 () Bool)

(assert (=> b!646570 m!917019))

(declare-fun m!917021 () Bool)

(assert (=> b!646571 m!917021))

(assert (=> b!646571 m!917021))

(declare-fun m!917023 () Bool)

(assert (=> b!646571 m!917023))

(assert (=> b!646469 d!224129))

(declare-fun bs!84489 () Bool)

(declare-fun b!646583 () Bool)

(assert (= bs!84489 (and b!646583 b!646469)))

(declare-fun lambda!19438 () Int)

(assert (=> bs!84489 (= lambda!19438 lambda!19364)))

(declare-fun bs!84490 () Bool)

(assert (= bs!84490 (and b!646583 d!224113)))

(assert (=> bs!84490 (= lambda!19438 lambda!19375)))

(assert (=> bs!84490 (not (= lambda!19438 lambda!19376))))

(declare-fun bs!84491 () Bool)

(assert (= bs!84491 (and b!646583 d!224121)))

(assert (=> bs!84491 (not (= lambda!19438 lambda!19433))))

(declare-fun bs!84492 () Bool)

(declare-fun d!224131 () Bool)

(assert (= bs!84492 (and d!224131 d!224113)))

(declare-fun lambda!19439 () Int)

(assert (=> bs!84492 (= lambda!19439 lambda!19375)))

(declare-fun bs!84493 () Bool)

(assert (= bs!84493 (and d!224131 b!646469)))

(assert (=> bs!84493 (= lambda!19439 lambda!19364)))

(declare-fun bs!84494 () Bool)

(assert (= bs!84494 (and d!224131 b!646583)))

(assert (=> bs!84494 (= lambda!19439 lambda!19438)))

(assert (=> bs!84492 (not (= lambda!19439 lambda!19376))))

(declare-fun bs!84495 () Bool)

(assert (= bs!84495 (and d!224131 d!224121)))

(assert (=> bs!84495 (not (= lambda!19439 lambda!19433))))

(declare-fun b!646580 () Bool)

(declare-fun e!396755 () PrintableTokens!144)

(declare-fun call!41940 () PrintableTokens!144)

(assert (=> b!646580 (= e!396755 call!41940)))

(declare-fun lt!276983 () BalanceConc!4692)

(assert (=> d!224131 (forall!1791 lt!276983 lambda!19439)))

(declare-fun e!396754 () BalanceConc!4692)

(assert (=> d!224131 (= lt!276983 e!396754)))

(declare-fun c!117542 () Bool)

(declare-fun size!5464 (BalanceConc!4694) Int)

(assert (=> d!224131 (= c!117542 (>= (size!5464 (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 0 (BalanceConc!4695 Empty!2341))) 2))))

(assert (=> d!224131 (= (size!5459 printableTokens!2) lt!276796)))

(assert (=> d!224131 (= (slicesMulti!0 printableTokens!2 lt!276796 (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 0 (BalanceConc!4695 Empty!2341)) (BalanceConc!4693 Empty!2340)) lt!276983)))

(declare-fun b!646581 () Bool)

(assert (=> b!646581 (= e!396754 (BalanceConc!4693 Empty!2340))))

(declare-fun b!646582 () Bool)

(assert (=> b!646582 (= e!396755 call!41940)))

(declare-fun lt!276984 () PrintableTokens!144)

(declare-fun tail!917 (BalanceConc!4694) BalanceConc!4694)

(declare-fun append!225 (BalanceConc!4692 PrintableTokens!144) BalanceConc!4692)

(assert (=> b!646583 (= e!396754 (slicesMulti!0 printableTokens!2 lt!276796 (tail!917 (tail!917 (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 0 (BalanceConc!4695 Empty!2341)))) (append!225 (BalanceConc!4693 Empty!2340) lt!276984)))))

(declare-fun lt!276982 () Int)

(declare-fun apply!1654 (BalanceConc!4694 Int) Int)

(assert (=> b!646583 (= lt!276982 (apply!1654 (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 0 (BalanceConc!4695 Empty!2341)) 0))))

(declare-fun lt!276980 () Int)

(assert (=> b!646583 (= lt!276980 (apply!1654 (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 0 (BalanceConc!4695 Empty!2341)) 1))))

(declare-fun c!117543 () Bool)

(assert (=> b!646583 (= c!117543 (<= lt!276982 lt!276980))))

(assert (=> b!646583 (= lt!276984 e!396755)))

(declare-fun lt!276981 () Unit!12076)

(declare-fun lemmaConcatPreservesForall!52 (List!6922 List!6922 Int) Unit!12076)

(assert (=> b!646583 (= lt!276981 (lemmaConcatPreservesForall!52 (list!2938 (BalanceConc!4693 Empty!2340)) (Cons!6908 lt!276984 Nil!6908) lambda!19438))))

(declare-fun bm!41935 () Bool)

(declare-fun slice!46 (PrintableTokens!144 Int Int) PrintableTokens!144)

(assert (=> bm!41935 (= call!41940 (slice!46 printableTokens!2 (ite c!117543 lt!276982 lt!276980) (ite c!117543 (+ lt!276980 1) (+ lt!276982 1))))))

(assert (= (and d!224131 c!117542) b!646583))

(assert (= (and d!224131 (not c!117542)) b!646581))

(assert (= (and b!646583 c!117543) b!646582))

(assert (= (and b!646583 (not c!117543)) b!646580))

(assert (= (or b!646582 b!646580) bm!41935))

(declare-fun m!917025 () Bool)

(assert (=> d!224131 m!917025))

(assert (=> d!224131 m!916777))

(declare-fun m!917027 () Bool)

(assert (=> d!224131 m!917027))

(assert (=> d!224131 m!916737))

(assert (=> b!646583 m!916777))

(declare-fun m!917029 () Bool)

(assert (=> b!646583 m!917029))

(assert (=> b!646583 m!916777))

(declare-fun m!917031 () Bool)

(assert (=> b!646583 m!917031))

(declare-fun m!917033 () Bool)

(assert (=> b!646583 m!917033))

(declare-fun m!917035 () Bool)

(assert (=> b!646583 m!917035))

(assert (=> b!646583 m!917033))

(declare-fun m!917037 () Bool)

(assert (=> b!646583 m!917037))

(assert (=> b!646583 m!916777))

(declare-fun m!917039 () Bool)

(assert (=> b!646583 m!917039))

(declare-fun m!917041 () Bool)

(assert (=> b!646583 m!917041))

(declare-fun m!917043 () Bool)

(assert (=> b!646583 m!917043))

(assert (=> b!646583 m!917041))

(assert (=> b!646583 m!917039))

(assert (=> b!646583 m!917035))

(declare-fun m!917045 () Bool)

(assert (=> bm!41935 m!917045))

(assert (=> b!646469 d!224131))

(declare-fun d!224133 () Bool)

(declare-fun e!396758 () Bool)

(assert (=> d!224133 e!396758))

(declare-fun res!283272 () Bool)

(assert (=> d!224133 (=> (not res!283272) (not e!396758))))

(declare-fun lt!276987 () BalanceConc!4692)

(assert (=> d!224133 (= res!283272 (= (list!2938 lt!276987) (map!1530 (list!2937 lt!276797) lambda!19363)))))

(declare-fun map!1531 (Conc!2339 Int) Conc!2340)

(assert (=> d!224133 (= lt!276987 (BalanceConc!4693 (map!1531 (c!117504 lt!276797) lambda!19363)))))

(assert (=> d!224133 (= (map!1526 lt!276797 lambda!19363) lt!276987)))

(declare-fun b!646586 () Bool)

(declare-fun isBalanced!623 (Conc!2340) Bool)

(assert (=> b!646586 (= e!396758 (isBalanced!623 (map!1531 (c!117504 lt!276797) lambda!19363)))))

(assert (= (and d!224133 res!283272) b!646586))

(declare-fun m!917047 () Bool)

(assert (=> d!224133 m!917047))

(assert (=> d!224133 m!916765))

(assert (=> d!224133 m!916765))

(declare-fun m!917049 () Bool)

(assert (=> d!224133 m!917049))

(declare-fun m!917051 () Bool)

(assert (=> d!224133 m!917051))

(assert (=> b!646586 m!917051))

(assert (=> b!646586 m!917051))

(declare-fun m!917053 () Bool)

(assert (=> b!646586 m!917053))

(assert (=> b!646469 d!224133))

(declare-fun b!646604 () Bool)

(assert (=> b!646604 true))

(declare-fun bs!84496 () Bool)

(declare-fun d!224135 () Bool)

(assert (= bs!84496 (and d!224135 b!646604)))

(declare-fun lambda!19445 () Int)

(declare-fun lambda!19444 () Int)

(assert (=> bs!84496 (= lambda!19445 lambda!19444)))

(assert (=> d!224135 true))

(declare-fun lt!276994 () BalanceConc!4694)

(declare-fun forall!1796 (BalanceConc!4694 Int) Bool)

(assert (=> d!224135 (forall!1796 lt!276994 lambda!19445)))

(declare-fun e!396769 () BalanceConc!4694)

(assert (=> d!224135 (= lt!276994 e!396769)))

(declare-fun c!117553 () Bool)

(declare-fun size!5465 (BalanceConc!4688) Int)

(assert (=> d!224135 (= c!117553 (>= 0 (size!5465 (tokens!1221 printableTokens!2))))))

(declare-fun e!396771 () Bool)

(assert (=> d!224135 e!396771))

(declare-fun res!283277 () Bool)

(assert (=> d!224135 (=> (not res!283277) (not e!396771))))

(assert (=> d!224135 (= res!283277 (>= 0 0))))

(assert (=> d!224135 (= (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 0 (BalanceConc!4695 Empty!2341)) lt!276994)))

(declare-fun b!646603 () Bool)

(declare-fun e!396770 () Bool)

(declare-fun lt!276995 () Token!2486)

(declare-fun isKeywordValue!0 (Token!2486 TokenValue!1416) Bool)

(assert (=> b!646603 (= e!396770 (isKeywordValue!0 lt!276995 RightBrace!1416))))

(declare-fun lt!276996 () Unit!12076)

(declare-fun lemmaConcatPreservesForall!53 (List!6923 List!6923 Int) Unit!12076)

(declare-fun list!2941 (BalanceConc!4694) List!6923)

(assert (=> b!646604 (= lt!276996 (lemmaConcatPreservesForall!53 (list!2941 (BalanceConc!4695 Empty!2341)) (Cons!6909 0 Nil!6909) lambda!19444))))

(declare-fun e!396772 () BalanceConc!4694)

(declare-fun call!41943 () BalanceConc!4694)

(assert (=> b!646604 (= e!396772 call!41943)))

(declare-fun bm!41938 () Bool)

(declare-fun c!117552 () Bool)

(declare-fun c!117551 () Bool)

(assert (=> bm!41938 (= c!117552 c!117551)))

(declare-fun e!396773 () BalanceConc!4694)

(assert (=> bm!41938 (= call!41943 (indicesOfOpenBraces!0 (tokens!1221 printableTokens!2) lt!276796 (+ 0 1) e!396773))))

(declare-fun b!646605 () Bool)

(assert (=> b!646605 (= e!396771 (<= 0 (size!5465 (tokens!1221 printableTokens!2))))))

(declare-fun b!646606 () Bool)

(assert (=> b!646606 (= e!396769 (BalanceConc!4695 Empty!2341))))

(declare-fun b!646607 () Bool)

(assert (=> b!646607 (= e!396773 (BalanceConc!4695 Empty!2341))))

(declare-fun b!646608 () Bool)

(assert (=> b!646608 (= e!396772 call!41943)))

(declare-fun b!646609 () Bool)

(declare-fun append!226 (BalanceConc!4694 Int) BalanceConc!4694)

(assert (=> b!646609 (= e!396773 (append!226 (BalanceConc!4695 Empty!2341) 0))))

(declare-fun b!646610 () Bool)

(assert (=> b!646610 (= e!396769 e!396772)))

(declare-fun apply!1655 (BalanceConc!4688 Int) Token!2486)

(assert (=> b!646610 (= lt!276995 (apply!1655 (tokens!1221 printableTokens!2) 0))))

(declare-fun res!283278 () Bool)

(assert (=> b!646610 (= res!283278 (isKeywordValue!0 lt!276995 LeftBrace!1416))))

(assert (=> b!646610 (=> res!283278 e!396770)))

(assert (=> b!646610 (= c!117551 e!396770)))

(assert (= (and d!224135 res!283277) b!646605))

(assert (= (and d!224135 c!117553) b!646606))

(assert (= (and d!224135 (not c!117553)) b!646610))

(assert (= (and b!646610 (not res!283278)) b!646603))

(assert (= (and b!646610 c!117551) b!646604))

(assert (= (and b!646610 (not c!117551)) b!646608))

(assert (= (or b!646604 b!646608) bm!41938))

(assert (= (and bm!41938 c!117552) b!646609))

(assert (= (and bm!41938 (not c!117552)) b!646607))

(declare-fun m!917055 () Bool)

(assert (=> b!646605 m!917055))

(declare-fun m!917057 () Bool)

(assert (=> b!646609 m!917057))

(declare-fun m!917059 () Bool)

(assert (=> b!646610 m!917059))

(declare-fun m!917061 () Bool)

(assert (=> b!646610 m!917061))

(declare-fun m!917063 () Bool)

(assert (=> bm!41938 m!917063))

(declare-fun m!917065 () Bool)

(assert (=> d!224135 m!917065))

(assert (=> d!224135 m!917055))

(declare-fun m!917067 () Bool)

(assert (=> b!646603 m!917067))

(declare-fun m!917069 () Bool)

(assert (=> b!646604 m!917069))

(assert (=> b!646604 m!917069))

(declare-fun m!917071 () Bool)

(assert (=> b!646604 m!917071))

(assert (=> b!646469 d!224135))

(declare-fun bs!84497 () Bool)

(declare-fun d!224137 () Bool)

(assert (= bs!84497 (and d!224137 d!224113)))

(declare-fun lambda!19448 () Int)

(assert (=> bs!84497 (= lambda!19448 lambda!19375)))

(declare-fun bs!84498 () Bool)

(assert (= bs!84498 (and d!224137 d!224131)))

(assert (=> bs!84498 (= lambda!19448 lambda!19439)))

(declare-fun bs!84499 () Bool)

(assert (= bs!84499 (and d!224137 b!646469)))

(assert (=> bs!84499 (= lambda!19448 lambda!19364)))

(declare-fun bs!84500 () Bool)

(assert (= bs!84500 (and d!224137 b!646583)))

(assert (=> bs!84500 (= lambda!19448 lambda!19438)))

(assert (=> bs!84497 (not (= lambda!19448 lambda!19376))))

(declare-fun bs!84501 () Bool)

(assert (= bs!84501 (and d!224137 d!224121)))

(assert (=> bs!84501 (not (= lambda!19448 lambda!19433))))

(declare-fun b!646635 () Bool)

(declare-fun e!396791 () Option!1666)

(assert (=> b!646635 (= e!396791 None!1665)))

(declare-fun b!646636 () Bool)

(declare-fun e!396790 () Option!1666)

(declare-fun call!41953 () Option!1666)

(assert (=> b!646636 (= e!396790 call!41953)))

(declare-fun b!646637 () Bool)

(assert (=> b!646637 (= e!396791 call!41953)))

(declare-fun bm!41947 () Bool)

(declare-fun call!41954 () PrintableTokens!144)

(declare-fun head!1358 (BalanceConc!4692) PrintableTokens!144)

(assert (=> bm!41947 (= call!41954 (head!1358 (map!1526 lt!276797 lambda!19363)))))

(declare-fun b!646638 () Bool)

(declare-fun c!117567 () Bool)

(declare-fun lt!277006 () Option!1666)

(assert (=> b!646638 (= c!117567 ((_ is Some!1665) lt!277006))))

(declare-fun call!41955 () Option!1666)

(assert (=> b!646638 (= lt!277006 call!41955)))

(declare-fun e!396788 () Option!1666)

(assert (=> b!646638 (= e!396788 e!396791)))

(declare-fun b!646639 () Bool)

(declare-fun e!396786 () Bool)

(declare-fun lt!277007 () Option!1666)

(assert (=> b!646639 (= e!396786 (usesJsonRules!0 (get!2489 lt!277007)))))

(assert (=> d!224137 e!396786))

(declare-fun res!283281 () Bool)

(assert (=> d!224137 (=> res!283281 e!396786)))

(assert (=> d!224137 (= res!283281 (isEmpty!4723 lt!277007))))

(declare-fun e!396787 () Option!1666)

(assert (=> d!224137 (= lt!277007 e!396787)))

(declare-fun c!117566 () Bool)

(declare-fun isEmpty!4724 (BalanceConc!4692) Bool)

(assert (=> d!224137 (= c!117566 (isEmpty!4724 (map!1526 lt!276797 lambda!19363)))))

(assert (=> d!224137 (forall!1791 (map!1526 lt!276797 lambda!19363) lambda!19448)))

(assert (=> d!224137 (= (recombineSlicesWithSep!0 (map!1526 lt!276797 lambda!19363) (v!17107 (_1!4081 lt!276799)) (emptyPrintableTokens!15 lt!276794)) lt!277007)))

(declare-fun b!646640 () Bool)

(declare-fun e!396789 () Option!1666)

(assert (=> b!646640 (= e!396789 None!1665)))

(declare-fun b!646641 () Bool)

(assert (=> b!646641 (= e!396787 e!396788)))

(declare-fun c!117564 () Bool)

(declare-fun size!5466 (BalanceConc!4692) Int)

(assert (=> b!646641 (= c!117564 (= (size!5466 (map!1526 lt!276797 lambda!19363)) 1))))

(declare-fun b!646642 () Bool)

(declare-fun c!117565 () Bool)

(declare-fun lt!277005 () Option!1666)

(assert (=> b!646642 (= c!117565 ((_ is Some!1665) lt!277005))))

(declare-fun append!227 (PrintableTokens!144 PrintableTokens!144) Option!1666)

(assert (=> b!646642 (= lt!277005 (append!227 call!41954 (v!17107 (_1!4081 lt!276799))))))

(assert (=> b!646642 (= e!396788 e!396789)))

(declare-fun bm!41948 () Bool)

(assert (=> bm!41948 (= call!41955 (append!227 (emptyPrintableTokens!15 lt!276794) (ite c!117564 call!41954 (v!17107 lt!277005))))))

(declare-fun bm!41949 () Bool)

(declare-fun call!41952 () BalanceConc!4692)

(declare-fun tail!918 (BalanceConc!4692) BalanceConc!4692)

(assert (=> bm!41949 (= call!41952 (tail!918 (map!1526 lt!276797 lambda!19363)))))

(declare-fun b!646643 () Bool)

(assert (=> b!646643 (= e!396789 e!396790)))

(declare-fun lt!277008 () Option!1666)

(assert (=> b!646643 (= lt!277008 call!41955)))

(declare-fun c!117568 () Bool)

(assert (=> b!646643 (= c!117568 ((_ is Some!1665) lt!277008))))

(declare-fun b!646644 () Bool)

(assert (=> b!646644 (= e!396787 (Some!1665 (emptyPrintableTokens!15 lt!276794)))))

(declare-fun bm!41950 () Bool)

(assert (=> bm!41950 (= call!41953 (recombineSlicesWithSep!0 call!41952 (v!17107 (_1!4081 lt!276799)) (ite c!117564 (v!17107 lt!277006) (v!17107 lt!277008))))))

(declare-fun b!646645 () Bool)

(assert (=> b!646645 (= e!396790 None!1665)))

(assert (= (and d!224137 c!117566) b!646644))

(assert (= (and d!224137 (not c!117566)) b!646641))

(assert (= (and b!646641 c!117564) b!646638))

(assert (= (and b!646641 (not c!117564)) b!646642))

(assert (= (and b!646638 c!117567) b!646637))

(assert (= (and b!646638 (not c!117567)) b!646635))

(assert (= (and b!646642 c!117565) b!646643))

(assert (= (and b!646642 (not c!117565)) b!646640))

(assert (= (and b!646643 c!117568) b!646636))

(assert (= (and b!646643 (not c!117568)) b!646645))

(assert (= (or b!646638 b!646642) bm!41947))

(assert (= (or b!646637 b!646636) bm!41949))

(assert (= (or b!646638 b!646643) bm!41948))

(assert (= (or b!646637 b!646636) bm!41950))

(assert (= (and d!224137 (not res!283281)) b!646639))

(assert (=> b!646641 m!916769))

(declare-fun m!917073 () Bool)

(assert (=> b!646641 m!917073))

(declare-fun m!917075 () Bool)

(assert (=> b!646642 m!917075))

(declare-fun m!917077 () Bool)

(assert (=> b!646639 m!917077))

(assert (=> b!646639 m!917077))

(declare-fun m!917079 () Bool)

(assert (=> b!646639 m!917079))

(declare-fun m!917081 () Bool)

(assert (=> bm!41950 m!917081))

(assert (=> bm!41947 m!916769))

(declare-fun m!917083 () Bool)

(assert (=> bm!41947 m!917083))

(declare-fun m!917085 () Bool)

(assert (=> d!224137 m!917085))

(assert (=> d!224137 m!916769))

(declare-fun m!917087 () Bool)

(assert (=> d!224137 m!917087))

(assert (=> d!224137 m!916769))

(declare-fun m!917089 () Bool)

(assert (=> d!224137 m!917089))

(assert (=> bm!41948 m!916801))

(declare-fun m!917091 () Bool)

(assert (=> bm!41948 m!917091))

(assert (=> bm!41949 m!916769))

(declare-fun m!917093 () Bool)

(assert (=> bm!41949 m!917093))

(assert (=> b!646451 d!224137))

(assert (=> b!646451 d!224133))

(declare-fun d!224139 () Bool)

(declare-fun isEmpty!4725 (BalanceConc!4688) Bool)

(assert (=> d!224139 (isEmpty!4725 (BalanceConc!4689 Empty!2338))))

(assert (=> d!224139 (not (isEmpty!4721 lt!276794))))

(assert (=> d!224139 (= (emptyPrintableTokens!15 lt!276794) (PrintableTokens!145 lt!276794 (BalanceConc!4689 Empty!2338)))))

(declare-fun bs!84502 () Bool)

(assert (= bs!84502 d!224139))

(declare-fun m!917095 () Bool)

(assert (=> bs!84502 m!917095))

(assert (=> bs!84502 m!916745))

(assert (=> b!646451 d!224139))

(declare-fun d!224141 () Bool)

(assert (=> d!224141 (= (usesJsonRules!0 (v!17107 (_1!4081 lt!276802))) (= (rules!8228 (v!17107 (_1!4081 lt!276802))) (rules!109 JsonLexer!203)))))

(declare-fun bs!84503 () Bool)

(assert (= bs!84503 d!224141))

(assert (=> bs!84503 m!916747))

(assert (=> b!646445 d!224141))

(declare-fun d!224143 () Bool)

(declare-fun isBalanced!624 (Conc!2338) Bool)

(assert (=> d!224143 (= (inv!8735 (tokens!1221 printableTokens!2)) (isBalanced!624 (c!117503 (tokens!1221 printableTokens!2))))))

(declare-fun bs!84504 () Bool)

(assert (= bs!84504 d!224143))

(declare-fun m!917097 () Bool)

(assert (=> bs!84504 m!917097))

(assert (=> b!646444 d!224143))

(declare-fun d!224145 () Bool)

(assert (=> d!224145 (= (size!5459 printableTokens!2) (size!5465 (tokens!1221 printableTokens!2)))))

(declare-fun bs!84505 () Bool)

(assert (= bs!84505 d!224145))

(assert (=> bs!84505 m!917055))

(assert (=> start!63338 d!224145))

(declare-fun d!224147 () Bool)

(declare-fun res!283288 () Bool)

(declare-fun e!396794 () Bool)

(assert (=> d!224147 (=> (not res!283288) (not e!396794))))

(assert (=> d!224147 (= res!283288 (not (isEmpty!4721 (rules!8228 printableTokens!2))))))

(assert (=> d!224147 (= (inv!8737 printableTokens!2) e!396794)))

(declare-fun b!646652 () Bool)

(declare-fun res!283289 () Bool)

(assert (=> b!646652 (=> (not res!283289) (not e!396794))))

(assert (=> b!646652 (= res!283289 (rulesInvariant!1193 Lexer!1256 (rules!8228 printableTokens!2)))))

(declare-fun b!646653 () Bool)

(declare-fun res!283290 () Bool)

(assert (=> b!646653 (=> (not res!283290) (not e!396794))))

(declare-fun rulesProduceEachTokenIndividually!580 (LexerInterface!1258 List!6917 BalanceConc!4688) Bool)

(assert (=> b!646653 (= res!283290 (rulesProduceEachTokenIndividually!580 Lexer!1256 (rules!8228 printableTokens!2) (tokens!1221 printableTokens!2)))))

(declare-fun b!646654 () Bool)

(declare-fun separableTokens!30 (LexerInterface!1258 BalanceConc!4688 List!6917) Bool)

(assert (=> b!646654 (= e!396794 (separableTokens!30 Lexer!1256 (tokens!1221 printableTokens!2) (rules!8228 printableTokens!2)))))

(assert (= (and d!224147 res!283288) b!646652))

(assert (= (and b!646652 res!283289) b!646653))

(assert (= (and b!646653 res!283290) b!646654))

(declare-fun m!917099 () Bool)

(assert (=> d!224147 m!917099))

(declare-fun m!917101 () Bool)

(assert (=> b!646652 m!917101))

(declare-fun m!917103 () Bool)

(assert (=> b!646653 m!917103))

(declare-fun m!917105 () Bool)

(assert (=> b!646654 m!917105))

(assert (=> start!63338 d!224147))

(declare-fun d!224149 () Bool)

(declare-fun res!283293 () Bool)

(declare-fun e!396797 () Bool)

(assert (=> d!224149 (=> (not res!283293) (not e!396797))))

(assert (=> d!224149 (= res!283293 ((_ is HashMap!646) (cache!1033 cacheDown!364)))))

(assert (=> d!224149 (= (inv!8738 cacheDown!364) e!396797)))

(declare-fun b!646657 () Bool)

(declare-fun validCacheMapDown!47 (MutableMap!646) Bool)

(assert (=> b!646657 (= e!396797 (validCacheMapDown!47 (cache!1033 cacheDown!364)))))

(assert (= (and d!224149 res!283293) b!646657))

(declare-fun m!917107 () Bool)

(assert (=> b!646657 m!917107))

(assert (=> start!63338 d!224149))

(declare-fun d!224151 () Bool)

(declare-fun res!283296 () Bool)

(declare-fun e!396800 () Bool)

(assert (=> d!224151 (=> (not res!283296) (not e!396800))))

(assert (=> d!224151 (= res!283296 ((_ is HashMap!645) (cache!1032 cacheUp!351)))))

(assert (=> d!224151 (= (inv!8739 cacheUp!351) e!396800)))

(declare-fun b!646660 () Bool)

(declare-fun validCacheMapUp!47 (MutableMap!645) Bool)

(assert (=> b!646660 (= e!396800 (validCacheMapUp!47 (cache!1032 cacheUp!351)))))

(assert (= (and d!224151 res!283296) b!646660))

(declare-fun m!917109 () Bool)

(assert (=> b!646660 m!917109))

(assert (=> start!63338 d!224151))

(declare-fun d!224153 () Bool)

(declare-fun e!396806 () Bool)

(assert (=> d!224153 e!396806))

(declare-fun res!283299 () Bool)

(assert (=> d!224153 (=> res!283299 e!396806)))

(declare-fun lt!277016 () Option!1666)

(assert (=> d!224153 (= res!283299 (isEmpty!4723 lt!277016))))

(declare-fun e!396805 () Option!1666)

(assert (=> d!224153 (= lt!277016 e!396805)))

(declare-fun c!117571 () Bool)

(declare-fun lt!277015 () Option!1666)

(assert (=> d!224153 (= c!117571 ((_ is Some!1665) lt!277015))))

(assert (=> d!224153 (= lt!277015 (append!227 (v!17107 (_1!4081 lt!276802)) (v!17107 lt!276801)))))

(assert (=> d!224153 (usesJsonRules!0 (v!17107 lt!276801))))

(assert (=> d!224153 (= (encloseInSep!0 (v!17107 lt!276801) (v!17107 (_1!4081 lt!276802)) (v!17107 (_1!4081 lt!276795))) lt!277016)))

(declare-fun b!646667 () Bool)

(declare-fun lt!277017 () Option!1666)

(assert (=> b!646667 (= e!396805 (ite ((_ is Some!1665) lt!277017) lt!277017 None!1665))))

(assert (=> b!646667 (= lt!277017 (append!227 (v!17107 lt!277015) (v!17107 (_1!4081 lt!276795))))))

(declare-fun b!646668 () Bool)

(assert (=> b!646668 (= e!396805 None!1665)))

(declare-fun b!646669 () Bool)

(assert (=> b!646669 (= e!396806 (usesJsonRules!0 (get!2489 lt!277016)))))

(assert (= (and d!224153 c!117571) b!646667))

(assert (= (and d!224153 (not c!117571)) b!646668))

(assert (= (and d!224153 (not res!283299)) b!646669))

(declare-fun m!917111 () Bool)

(assert (=> d!224153 m!917111))

(declare-fun m!917113 () Bool)

(assert (=> d!224153 m!917113))

(declare-fun m!917115 () Bool)

(assert (=> d!224153 m!917115))

(declare-fun m!917117 () Bool)

(assert (=> b!646667 m!917117))

(declare-fun m!917119 () Bool)

(assert (=> b!646669 m!917119))

(assert (=> b!646669 m!917119))

(declare-fun m!917121 () Bool)

(assert (=> b!646669 m!917121))

(assert (=> b!646454 d!224153))

(declare-fun d!224155 () Bool)

(assert (=> d!224155 (= (usesJsonRules!0 printableTokens!2) (= (rules!8228 printableTokens!2) (rules!109 JsonLexer!203)))))

(declare-fun bs!84506 () Bool)

(assert (= bs!84506 d!224155))

(assert (=> bs!84506 m!916747))

(assert (=> b!646458 d!224155))

(declare-fun d!224157 () Bool)

(assert (=> d!224157 (= (array_inv!848 (_keys!967 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) (bvsge (size!5457 (_keys!967 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!646465 d!224157))

(declare-fun d!224159 () Bool)

(assert (=> d!224159 (= (array_inv!850 (_values!952 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) (bvsge (size!5456 (_values!952 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!646465 d!224159))

(declare-fun d!224161 () Bool)

(assert (=> d!224161 (= (isEmpty!4721 lt!276794) ((_ is Nil!6903) lt!276794))))

(assert (=> b!646456 d!224161))

(declare-fun d!224163 () Bool)

(declare-fun integerLiteralRule!0 (JsonLexer!202) Rule!2564)

(declare-fun floatLiteralRule!0 (JsonLexer!202) Rule!2564)

(declare-fun trueRule!0 (JsonLexer!202) Rule!2564)

(declare-fun falseRule!0 (JsonLexer!202) Rule!2564)

(declare-fun nullRule!0 (JsonLexer!202) Rule!2564)

(declare-fun jsonstringRule!0 (JsonLexer!202) Rule!2564)

(declare-fun lBraceRule!0 (JsonLexer!202) Rule!2564)

(declare-fun rBraceRule!0 (JsonLexer!202) Rule!2564)

(declare-fun colonRule!0 (JsonLexer!202) Rule!2564)

(declare-fun eofRule!0 (JsonLexer!202) Rule!2564)

(assert (=> d!224163 (= (rules!109 JsonLexer!203) (Cons!6903 (whitespaceRule!0 JsonLexer!203) (Cons!6903 (integerLiteralRule!0 JsonLexer!203) (Cons!6903 (floatLiteralRule!0 JsonLexer!203) (Cons!6903 (trueRule!0 JsonLexer!203) (Cons!6903 (falseRule!0 JsonLexer!203) (Cons!6903 (nullRule!0 JsonLexer!203) (Cons!6903 (jsonstringRule!0 JsonLexer!203) (Cons!6903 (lBraceRule!0 JsonLexer!203) (Cons!6903 (rBraceRule!0 JsonLexer!203) (Cons!6903 (lBracketRule!0 JsonLexer!203) (Cons!6903 (rBracketRule!0 JsonLexer!203) (Cons!6903 (colonRule!0 JsonLexer!203) (Cons!6903 (commaRule!0 JsonLexer!203) (Cons!6903 (eofRule!0 JsonLexer!203) Nil!6903)))))))))))))))))

(declare-fun bs!84507 () Bool)

(assert (= bs!84507 d!224163))

(declare-fun m!917123 () Bool)

(assert (=> bs!84507 m!917123))

(assert (=> bs!84507 m!916967))

(declare-fun m!917125 () Bool)

(assert (=> bs!84507 m!917125))

(declare-fun m!917127 () Bool)

(assert (=> bs!84507 m!917127))

(declare-fun m!917129 () Bool)

(assert (=> bs!84507 m!917129))

(declare-fun m!917131 () Bool)

(assert (=> bs!84507 m!917131))

(assert (=> bs!84507 m!917007))

(declare-fun m!917133 () Bool)

(assert (=> bs!84507 m!917133))

(declare-fun m!917135 () Bool)

(assert (=> bs!84507 m!917135))

(declare-fun m!917137 () Bool)

(assert (=> bs!84507 m!917137))

(assert (=> bs!84507 m!916995))

(declare-fun m!917139 () Bool)

(assert (=> bs!84507 m!917139))

(assert (=> bs!84507 m!916997))

(declare-fun m!917141 () Bool)

(assert (=> bs!84507 m!917141))

(assert (=> b!646456 d!224163))

(declare-fun d!224165 () Bool)

(declare-fun c!117574 () Bool)

(assert (=> d!224165 (= c!117574 ((_ is Node!2338) (c!117503 (tokens!1221 printableTokens!2))))))

(declare-fun e!396811 () Bool)

(assert (=> d!224165 (= (inv!8736 (c!117503 (tokens!1221 printableTokens!2))) e!396811)))

(declare-fun b!646676 () Bool)

(declare-fun inv!8740 (Conc!2338) Bool)

(assert (=> b!646676 (= e!396811 (inv!8740 (c!117503 (tokens!1221 printableTokens!2))))))

(declare-fun b!646677 () Bool)

(declare-fun e!396812 () Bool)

(assert (=> b!646677 (= e!396811 e!396812)))

(declare-fun res!283302 () Bool)

(assert (=> b!646677 (= res!283302 (not ((_ is Leaf!3545) (c!117503 (tokens!1221 printableTokens!2)))))))

(assert (=> b!646677 (=> res!283302 e!396812)))

(declare-fun b!646678 () Bool)

(declare-fun inv!8741 (Conc!2338) Bool)

(assert (=> b!646678 (= e!396812 (inv!8741 (c!117503 (tokens!1221 printableTokens!2))))))

(assert (= (and d!224165 c!117574) b!646676))

(assert (= (and d!224165 (not c!117574)) b!646677))

(assert (= (and b!646677 (not res!283302)) b!646678))

(declare-fun m!917143 () Bool)

(assert (=> b!646676 m!917143))

(declare-fun m!917145 () Bool)

(assert (=> b!646678 m!917145))

(assert (=> b!646450 d!224165))

(declare-fun d!224167 () Bool)

(assert (=> d!224167 (= (usesJsonRules!0 (v!17107 (_1!4081 lt!276795))) (= (rules!8228 (v!17107 (_1!4081 lt!276795))) (rules!109 JsonLexer!203)))))

(declare-fun bs!84508 () Bool)

(assert (= bs!84508 d!224167))

(assert (=> bs!84508 m!916747))

(assert (=> b!646461 d!224167))

(declare-fun d!224169 () Bool)

(assert (=> d!224169 (= (usesJsonRules!0 (v!17107 lt!276809)) (= (rules!8228 (v!17107 lt!276809)) (rules!109 JsonLexer!203)))))

(declare-fun bs!84509 () Bool)

(assert (= bs!84509 d!224169))

(assert (=> bs!84509 m!916747))

(assert (=> b!646460 d!224169))

(declare-fun d!224171 () Bool)

(declare-fun e!396815 () Bool)

(assert (=> d!224171 e!396815))

(declare-fun res!283305 () Bool)

(assert (=> d!224171 (=> (not res!283305) (not e!396815))))

(declare-fun lt!277022 () BalanceConc!4686)

(declare-fun list!2942 (BalanceConc!4688) List!6916)

(declare-datatypes ((tuple2!7474 0))(
  ( (tuple2!7475 (_1!4084 BalanceConc!4688) (_2!4084 BalanceConc!4686)) )
))
(declare-fun lex!581 (LexerInterface!1258 List!6917 BalanceConc!4686) tuple2!7474)

(assert (=> d!224171 (= res!283305 (= (list!2942 (_1!4084 (lex!581 Lexer!1256 (rules!8228 (v!17107 lt!276809)) lt!277022))) (list!2942 (tokens!1221 (v!17107 lt!276809)))))))

(declare-fun print!507 (LexerInterface!1258 BalanceConc!4688) BalanceConc!4686)

(assert (=> d!224171 (= lt!277022 (print!507 Lexer!1256 (tokens!1221 (v!17107 lt!276809))))))

(declare-fun lt!277023 () Unit!12076)

(declare-fun theoremInvertabilityWhenTokenListSeparable!5 (LexerInterface!1258 List!6917 List!6916) Unit!12076)

(assert (=> d!224171 (= lt!277023 (theoremInvertabilityWhenTokenListSeparable!5 Lexer!1256 (rules!8228 (v!17107 lt!276809)) (list!2942 (tokens!1221 (v!17107 lt!276809)))))))

(assert (=> d!224171 (= (print!506 (v!17107 lt!276809)) lt!277022)))

(declare-fun b!646681 () Bool)

(declare-fun isEmpty!4726 (List!6915) Bool)

(declare-fun list!2943 (BalanceConc!4686) List!6915)

(assert (=> b!646681 (= e!396815 (isEmpty!4726 (list!2943 (_2!4084 (lex!581 Lexer!1256 (rules!8228 (v!17107 lt!276809)) lt!277022)))))))

(assert (= (and d!224171 res!283305) b!646681))

(declare-fun m!917147 () Bool)

(assert (=> d!224171 m!917147))

(declare-fun m!917149 () Bool)

(assert (=> d!224171 m!917149))

(declare-fun m!917151 () Bool)

(assert (=> d!224171 m!917151))

(declare-fun m!917153 () Bool)

(assert (=> d!224171 m!917153))

(assert (=> d!224171 m!917147))

(declare-fun m!917155 () Bool)

(assert (=> d!224171 m!917155))

(assert (=> b!646681 m!917153))

(declare-fun m!917157 () Bool)

(assert (=> b!646681 m!917157))

(assert (=> b!646681 m!917157))

(declare-fun m!917159 () Bool)

(assert (=> b!646681 m!917159))

(assert (=> b!646460 d!224171))

(declare-fun d!224173 () Bool)

(assert (=> d!224173 (= (array_inv!848 (_keys!968 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) (bvsge (size!5457 (_keys!968 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!646448 d!224173))

(declare-fun d!224175 () Bool)

(assert (=> d!224175 (= (array_inv!849 (_values!953 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) (bvsge (size!5458 (_values!953 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!646448 d!224175))

(declare-fun b!646686 () Bool)

(declare-fun e!396824 () Bool)

(declare-fun tp!199626 () Bool)

(declare-fun setRes!3047 () Bool)

(declare-fun inv!8742 (Context!406) Bool)

(assert (=> b!646686 (= e!396824 (and (inv!8742 (_2!4079 (_1!4080 (h!12307 mapDefault!2666)))) setRes!3047 tp!199626))))

(declare-fun condSetEmpty!3047 () Bool)

(assert (=> b!646686 (= condSetEmpty!3047 (= (_2!4080 (h!12307 mapDefault!2666)) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3047 () Bool)

(assert (=> setIsEmpty!3047 setRes!3047))

(declare-fun setNonEmpty!3047 () Bool)

(declare-fun tp!199627 () Bool)

(declare-fun setElem!3047 () Context!406)

(assert (=> setNonEmpty!3047 (= setRes!3047 (and tp!199627 (inv!8742 setElem!3047)))))

(declare-fun setRest!3047 () (InoxSet Context!406))

(assert (=> setNonEmpty!3047 (= (_2!4080 (h!12307 mapDefault!2666)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3047 true) setRest!3047))))

(assert (=> b!646463 (= tp!199619 e!396824)))

(assert (= (and b!646686 condSetEmpty!3047) setIsEmpty!3047))

(assert (= (and b!646686 (not condSetEmpty!3047)) setNonEmpty!3047))

(assert (= (and b!646463 ((_ is Cons!6906) mapDefault!2666)) b!646686))

(declare-fun m!917161 () Bool)

(assert (=> b!646686 m!917161))

(declare-fun m!917163 () Bool)

(assert (=> setNonEmpty!3047 m!917163))

(declare-fun b!646697 () Bool)

(declare-fun b_free!18861 () Bool)

(declare-fun b_next!18917 () Bool)

(assert (=> b!646697 (= b_free!18861 (not b_next!18917))))

(declare-fun tp!199635 () Bool)

(declare-fun b_and!62655 () Bool)

(assert (=> b!646697 (= tp!199635 b_and!62655)))

(declare-fun b_free!18863 () Bool)

(declare-fun b_next!18919 () Bool)

(assert (=> b!646697 (= b_free!18863 (not b_next!18919))))

(declare-fun tp!199636 () Bool)

(declare-fun b_and!62657 () Bool)

(assert (=> b!646697 (= tp!199636 b_and!62657)))

(declare-fun e!396835 () Bool)

(assert (=> b!646697 (= e!396835 (and tp!199635 tp!199636))))

(declare-fun b!646696 () Bool)

(declare-fun e!396833 () Bool)

(declare-fun inv!8733 (String!8818) Bool)

(declare-fun inv!8743 (TokenValueInjection!2584) Bool)

(assert (=> b!646696 (= e!396833 (and (inv!8733 (tag!1644 (h!12304 (rules!8228 printableTokens!2)))) (inv!8743 (transformation!1382 (h!12304 (rules!8228 printableTokens!2)))) e!396835))))

(declare-fun b!646695 () Bool)

(declare-fun e!396834 () Bool)

(declare-fun tp!199634 () Bool)

(assert (=> b!646695 (= e!396834 (and e!396833 tp!199634))))

(assert (=> b!646444 (= tp!199613 e!396834)))

(assert (= b!646696 b!646697))

(assert (= b!646695 b!646696))

(assert (= (and b!646444 ((_ is Cons!6903) (rules!8228 printableTokens!2))) b!646695))

(declare-fun m!917165 () Bool)

(assert (=> b!646696 m!917165))

(declare-fun m!917167 () Bool)

(assert (=> b!646696 m!917167))

(declare-fun setIsEmpty!3052 () Bool)

(declare-fun setRes!3053 () Bool)

(assert (=> setIsEmpty!3052 setRes!3053))

(declare-fun setNonEmpty!3052 () Bool)

(declare-fun setRes!3052 () Bool)

(declare-fun tp!199651 () Bool)

(declare-fun setElem!3052 () Context!406)

(assert (=> setNonEmpty!3052 (= setRes!3052 (and tp!199651 (inv!8742 setElem!3052)))))

(declare-fun mapDefault!2670 () List!6920)

(declare-fun setRest!3052 () (InoxSet Context!406))

(assert (=> setNonEmpty!3052 (= (_2!4080 (h!12307 mapDefault!2670)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3052 true) setRest!3052))))

(declare-fun setNonEmpty!3053 () Bool)

(declare-fun tp!199648 () Bool)

(declare-fun setElem!3053 () Context!406)

(assert (=> setNonEmpty!3053 (= setRes!3053 (and tp!199648 (inv!8742 setElem!3053)))))

(declare-fun mapValue!2670 () List!6920)

(declare-fun setRest!3053 () (InoxSet Context!406))

(assert (=> setNonEmpty!3053 (= (_2!4080 (h!12307 mapValue!2670)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3053 true) setRest!3053))))

(declare-fun condMapEmpty!2670 () Bool)

(assert (=> mapNonEmpty!2667 (= condMapEmpty!2670 (= mapRest!2666 ((as const (Array (_ BitVec 32) List!6920)) mapDefault!2670)))))

(declare-fun e!396849 () Bool)

(declare-fun mapRes!2670 () Bool)

(assert (=> mapNonEmpty!2667 (= tp!199618 (and e!396849 mapRes!2670))))

(declare-fun mapNonEmpty!2670 () Bool)

(declare-fun tp!199647 () Bool)

(declare-fun e!396850 () Bool)

(assert (=> mapNonEmpty!2670 (= mapRes!2670 (and tp!199647 e!396850))))

(declare-fun mapKey!2670 () (_ BitVec 32))

(declare-fun mapRest!2670 () (Array (_ BitVec 32) List!6920))

(assert (=> mapNonEmpty!2670 (= mapRest!2666 (store mapRest!2670 mapKey!2670 mapValue!2670))))

(declare-fun b!646704 () Bool)

(declare-fun tp!199649 () Bool)

(assert (=> b!646704 (= e!396850 (and (inv!8742 (_2!4079 (_1!4080 (h!12307 mapValue!2670)))) setRes!3053 tp!199649))))

(declare-fun condSetEmpty!3053 () Bool)

(assert (=> b!646704 (= condSetEmpty!3053 (= (_2!4080 (h!12307 mapValue!2670)) ((as const (Array Context!406 Bool)) false)))))

(declare-fun mapIsEmpty!2670 () Bool)

(assert (=> mapIsEmpty!2670 mapRes!2670))

(declare-fun tp!199650 () Bool)

(declare-fun b!646705 () Bool)

(assert (=> b!646705 (= e!396849 (and (inv!8742 (_2!4079 (_1!4080 (h!12307 mapDefault!2670)))) setRes!3052 tp!199650))))

(declare-fun condSetEmpty!3052 () Bool)

(assert (=> b!646705 (= condSetEmpty!3052 (= (_2!4080 (h!12307 mapDefault!2670)) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3053 () Bool)

(assert (=> setIsEmpty!3053 setRes!3052))

(assert (= (and mapNonEmpty!2667 condMapEmpty!2670) mapIsEmpty!2670))

(assert (= (and mapNonEmpty!2667 (not condMapEmpty!2670)) mapNonEmpty!2670))

(assert (= (and b!646704 condSetEmpty!3053) setIsEmpty!3052))

(assert (= (and b!646704 (not condSetEmpty!3053)) setNonEmpty!3053))

(assert (= (and mapNonEmpty!2670 ((_ is Cons!6906) mapValue!2670)) b!646704))

(assert (= (and b!646705 condSetEmpty!3052) setIsEmpty!3053))

(assert (= (and b!646705 (not condSetEmpty!3052)) setNonEmpty!3052))

(assert (= (and mapNonEmpty!2667 ((_ is Cons!6906) mapDefault!2670)) b!646705))

(declare-fun m!917169 () Bool)

(assert (=> setNonEmpty!3053 m!917169))

(declare-fun m!917171 () Bool)

(assert (=> b!646704 m!917171))

(declare-fun m!917173 () Bool)

(assert (=> b!646705 m!917173))

(declare-fun m!917175 () Bool)

(assert (=> mapNonEmpty!2670 m!917175))

(declare-fun m!917177 () Bool)

(assert (=> setNonEmpty!3052 m!917177))

(declare-fun tp!199652 () Bool)

(declare-fun b!646706 () Bool)

(declare-fun setRes!3054 () Bool)

(declare-fun e!396857 () Bool)

(assert (=> b!646706 (= e!396857 (and (inv!8742 (_2!4079 (_1!4080 (h!12307 mapValue!2667)))) setRes!3054 tp!199652))))

(declare-fun condSetEmpty!3054 () Bool)

(assert (=> b!646706 (= condSetEmpty!3054 (= (_2!4080 (h!12307 mapValue!2667)) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3054 () Bool)

(assert (=> setIsEmpty!3054 setRes!3054))

(declare-fun setNonEmpty!3054 () Bool)

(declare-fun tp!199653 () Bool)

(declare-fun setElem!3054 () Context!406)

(assert (=> setNonEmpty!3054 (= setRes!3054 (and tp!199653 (inv!8742 setElem!3054)))))

(declare-fun setRest!3054 () (InoxSet Context!406))

(assert (=> setNonEmpty!3054 (= (_2!4080 (h!12307 mapValue!2667)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3054 true) setRest!3054))))

(assert (=> mapNonEmpty!2667 (= tp!199609 e!396857)))

(assert (= (and b!646706 condSetEmpty!3054) setIsEmpty!3054))

(assert (= (and b!646706 (not condSetEmpty!3054)) setNonEmpty!3054))

(assert (= (and mapNonEmpty!2667 ((_ is Cons!6906) mapValue!2667)) b!646706))

(declare-fun m!917179 () Bool)

(assert (=> b!646706 m!917179))

(declare-fun m!917181 () Bool)

(assert (=> setNonEmpty!3054 m!917181))

(declare-fun setIsEmpty!3059 () Bool)

(declare-fun setRes!3060 () Bool)

(assert (=> setIsEmpty!3059 setRes!3060))

(declare-fun setIsEmpty!3060 () Bool)

(declare-fun setRes!3059 () Bool)

(assert (=> setIsEmpty!3060 setRes!3059))

(declare-fun e!396875 () Bool)

(declare-fun b!646713 () Bool)

(declare-fun tp!199667 () Bool)

(declare-fun mapDefault!2673 () List!6919)

(assert (=> b!646713 (= e!396875 (and (inv!8742 (_1!4077 (_1!4078 (h!12306 mapDefault!2673)))) setRes!3059 tp!199667))))

(declare-fun condSetEmpty!3060 () Bool)

(assert (=> b!646713 (= condSetEmpty!3060 (= (_2!4078 (h!12306 mapDefault!2673)) ((as const (Array Context!406 Bool)) false)))))

(declare-fun condMapEmpty!2673 () Bool)

(assert (=> mapNonEmpty!2666 (= condMapEmpty!2673 (= mapRest!2667 ((as const (Array (_ BitVec 32) List!6919)) mapDefault!2673)))))

(declare-fun mapRes!2673 () Bool)

(assert (=> mapNonEmpty!2666 (= tp!199615 (and e!396875 mapRes!2673))))

(declare-fun setNonEmpty!3059 () Bool)

(declare-fun tp!199664 () Bool)

(declare-fun setElem!3059 () Context!406)

(assert (=> setNonEmpty!3059 (= setRes!3060 (and tp!199664 (inv!8742 setElem!3059)))))

(declare-fun mapValue!2673 () List!6919)

(declare-fun setRest!3059 () (InoxSet Context!406))

(assert (=> setNonEmpty!3059 (= (_2!4078 (h!12306 mapValue!2673)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3059 true) setRest!3059))))

(declare-fun mapIsEmpty!2673 () Bool)

(assert (=> mapIsEmpty!2673 mapRes!2673))

(declare-fun mapNonEmpty!2673 () Bool)

(declare-fun tp!199668 () Bool)

(declare-fun e!396872 () Bool)

(assert (=> mapNonEmpty!2673 (= mapRes!2673 (and tp!199668 e!396872))))

(declare-fun mapRest!2673 () (Array (_ BitVec 32) List!6919))

(declare-fun mapKey!2673 () (_ BitVec 32))

(assert (=> mapNonEmpty!2673 (= mapRest!2667 (store mapRest!2673 mapKey!2673 mapValue!2673))))

(declare-fun setNonEmpty!3060 () Bool)

(declare-fun tp!199665 () Bool)

(declare-fun setElem!3060 () Context!406)

(assert (=> setNonEmpty!3060 (= setRes!3059 (and tp!199665 (inv!8742 setElem!3060)))))

(declare-fun setRest!3060 () (InoxSet Context!406))

(assert (=> setNonEmpty!3060 (= (_2!4078 (h!12306 mapDefault!2673)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3060 true) setRest!3060))))

(declare-fun tp!199666 () Bool)

(declare-fun b!646714 () Bool)

(assert (=> b!646714 (= e!396872 (and (inv!8742 (_1!4077 (_1!4078 (h!12306 mapValue!2673)))) setRes!3060 tp!199666))))

(declare-fun condSetEmpty!3059 () Bool)

(assert (=> b!646714 (= condSetEmpty!3059 (= (_2!4078 (h!12306 mapValue!2673)) ((as const (Array Context!406 Bool)) false)))))

(assert (= (and mapNonEmpty!2666 condMapEmpty!2673) mapIsEmpty!2673))

(assert (= (and mapNonEmpty!2666 (not condMapEmpty!2673)) mapNonEmpty!2673))

(assert (= (and b!646714 condSetEmpty!3059) setIsEmpty!3059))

(assert (= (and b!646714 (not condSetEmpty!3059)) setNonEmpty!3059))

(assert (= (and mapNonEmpty!2673 ((_ is Cons!6905) mapValue!2673)) b!646714))

(assert (= (and b!646713 condSetEmpty!3060) setIsEmpty!3060))

(assert (= (and b!646713 (not condSetEmpty!3060)) setNonEmpty!3060))

(assert (= (and mapNonEmpty!2666 ((_ is Cons!6905) mapDefault!2673)) b!646713))

(declare-fun m!917183 () Bool)

(assert (=> b!646714 m!917183))

(declare-fun m!917185 () Bool)

(assert (=> setNonEmpty!3059 m!917185))

(declare-fun m!917187 () Bool)

(assert (=> mapNonEmpty!2673 m!917187))

(declare-fun m!917189 () Bool)

(assert (=> b!646713 m!917189))

(declare-fun m!917191 () Bool)

(assert (=> setNonEmpty!3060 m!917191))

(declare-fun tp!199673 () Bool)

(declare-fun b!646719 () Bool)

(declare-fun e!396882 () Bool)

(declare-fun setRes!3063 () Bool)

(assert (=> b!646719 (= e!396882 (and (inv!8742 (_1!4077 (_1!4078 (h!12306 mapValue!2666)))) setRes!3063 tp!199673))))

(declare-fun condSetEmpty!3063 () Bool)

(assert (=> b!646719 (= condSetEmpty!3063 (= (_2!4078 (h!12306 mapValue!2666)) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3063 () Bool)

(assert (=> setIsEmpty!3063 setRes!3063))

(declare-fun setNonEmpty!3063 () Bool)

(declare-fun tp!199674 () Bool)

(declare-fun setElem!3063 () Context!406)

(assert (=> setNonEmpty!3063 (= setRes!3063 (and tp!199674 (inv!8742 setElem!3063)))))

(declare-fun setRest!3063 () (InoxSet Context!406))

(assert (=> setNonEmpty!3063 (= (_2!4078 (h!12306 mapValue!2666)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3063 true) setRest!3063))))

(assert (=> mapNonEmpty!2666 (= tp!199616 e!396882)))

(assert (= (and b!646719 condSetEmpty!3063) setIsEmpty!3063))

(assert (= (and b!646719 (not condSetEmpty!3063)) setNonEmpty!3063))

(assert (= (and mapNonEmpty!2666 ((_ is Cons!6905) mapValue!2666)) b!646719))

(declare-fun m!917193 () Bool)

(assert (=> b!646719 m!917193))

(declare-fun m!917195 () Bool)

(assert (=> setNonEmpty!3063 m!917195))

(declare-fun e!396885 () Bool)

(declare-fun b!646720 () Bool)

(declare-fun setRes!3064 () Bool)

(declare-fun tp!199675 () Bool)

(assert (=> b!646720 (= e!396885 (and (inv!8742 (_1!4077 (_1!4078 (h!12306 (zeroValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))))) setRes!3064 tp!199675))))

(declare-fun condSetEmpty!3064 () Bool)

(assert (=> b!646720 (= condSetEmpty!3064 (= (_2!4078 (h!12306 (zeroValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3064 () Bool)

(assert (=> setIsEmpty!3064 setRes!3064))

(declare-fun setNonEmpty!3064 () Bool)

(declare-fun tp!199676 () Bool)

(declare-fun setElem!3064 () Context!406)

(assert (=> setNonEmpty!3064 (= setRes!3064 (and tp!199676 (inv!8742 setElem!3064)))))

(declare-fun setRest!3064 () (InoxSet Context!406))

(assert (=> setNonEmpty!3064 (= (_2!4078 (h!12306 (zeroValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3064 true) setRest!3064))))

(assert (=> b!646465 (= tp!199617 e!396885)))

(assert (= (and b!646720 condSetEmpty!3064) setIsEmpty!3064))

(assert (= (and b!646720 (not condSetEmpty!3064)) setNonEmpty!3064))

(assert (= (and b!646465 ((_ is Cons!6905) (zeroValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))) b!646720))

(declare-fun m!917197 () Bool)

(assert (=> b!646720 m!917197))

(declare-fun m!917199 () Bool)

(assert (=> setNonEmpty!3064 m!917199))

(declare-fun e!396888 () Bool)

(declare-fun tp!199677 () Bool)

(declare-fun b!646721 () Bool)

(declare-fun setRes!3065 () Bool)

(assert (=> b!646721 (= e!396888 (and (inv!8742 (_1!4077 (_1!4078 (h!12306 (minValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))))) setRes!3065 tp!199677))))

(declare-fun condSetEmpty!3065 () Bool)

(assert (=> b!646721 (= condSetEmpty!3065 (= (_2!4078 (h!12306 (minValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3065 () Bool)

(assert (=> setIsEmpty!3065 setRes!3065))

(declare-fun setNonEmpty!3065 () Bool)

(declare-fun tp!199678 () Bool)

(declare-fun setElem!3065 () Context!406)

(assert (=> setNonEmpty!3065 (= setRes!3065 (and tp!199678 (inv!8742 setElem!3065)))))

(declare-fun setRest!3065 () (InoxSet Context!406))

(assert (=> setNonEmpty!3065 (= (_2!4078 (h!12306 (minValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3065 true) setRest!3065))))

(assert (=> b!646465 (= tp!199621 e!396888)))

(assert (= (and b!646721 condSetEmpty!3065) setIsEmpty!3065))

(assert (= (and b!646721 (not condSetEmpty!3065)) setNonEmpty!3065))

(assert (= (and b!646465 ((_ is Cons!6905) (minValue!930 (v!17103 (underlying!1529 (v!17104 (underlying!1530 (cache!1032 cacheUp!351)))))))) b!646721))

(declare-fun m!917201 () Bool)

(assert (=> b!646721 m!917201))

(declare-fun m!917203 () Bool)

(assert (=> setNonEmpty!3065 m!917203))

(declare-fun tp!199685 () Bool)

(declare-fun b!646730 () Bool)

(declare-fun tp!199687 () Bool)

(declare-fun e!396896 () Bool)

(assert (=> b!646730 (= e!396896 (and (inv!8736 (left!5490 (c!117503 (tokens!1221 printableTokens!2)))) tp!199687 (inv!8736 (right!5820 (c!117503 (tokens!1221 printableTokens!2)))) tp!199685))))

(declare-fun b!646732 () Bool)

(declare-fun e!396895 () Bool)

(declare-fun tp!199686 () Bool)

(assert (=> b!646732 (= e!396895 tp!199686)))

(declare-fun b!646731 () Bool)

(declare-fun inv!8744 (IArray!4677) Bool)

(assert (=> b!646731 (= e!396896 (and (inv!8744 (xs!4979 (c!117503 (tokens!1221 printableTokens!2)))) e!396895))))

(assert (=> b!646450 (= tp!199612 (and (inv!8736 (c!117503 (tokens!1221 printableTokens!2))) e!396896))))

(assert (= (and b!646450 ((_ is Node!2338) (c!117503 (tokens!1221 printableTokens!2)))) b!646730))

(assert (= b!646731 b!646732))

(assert (= (and b!646450 ((_ is Leaf!3545) (c!117503 (tokens!1221 printableTokens!2)))) b!646731))

(declare-fun m!917205 () Bool)

(assert (=> b!646730 m!917205))

(declare-fun m!917207 () Bool)

(assert (=> b!646730 m!917207))

(declare-fun m!917209 () Bool)

(assert (=> b!646731 m!917209))

(assert (=> b!646450 m!916805))

(declare-fun b!646733 () Bool)

(declare-fun setRes!3066 () Bool)

(declare-fun e!396897 () Bool)

(declare-fun tp!199688 () Bool)

(assert (=> b!646733 (= e!396897 (and (inv!8742 (_1!4077 (_1!4078 (h!12306 mapDefault!2667)))) setRes!3066 tp!199688))))

(declare-fun condSetEmpty!3066 () Bool)

(assert (=> b!646733 (= condSetEmpty!3066 (= (_2!4078 (h!12306 mapDefault!2667)) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3066 () Bool)

(assert (=> setIsEmpty!3066 setRes!3066))

(declare-fun setNonEmpty!3066 () Bool)

(declare-fun tp!199689 () Bool)

(declare-fun setElem!3066 () Context!406)

(assert (=> setNonEmpty!3066 (= setRes!3066 (and tp!199689 (inv!8742 setElem!3066)))))

(declare-fun setRest!3066 () (InoxSet Context!406))

(assert (=> setNonEmpty!3066 (= (_2!4078 (h!12306 mapDefault!2667)) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3066 true) setRest!3066))))

(assert (=> b!646449 (= tp!199610 e!396897)))

(assert (= (and b!646733 condSetEmpty!3066) setIsEmpty!3066))

(assert (= (and b!646733 (not condSetEmpty!3066)) setNonEmpty!3066))

(assert (= (and b!646449 ((_ is Cons!6905) mapDefault!2667)) b!646733))

(declare-fun m!917211 () Bool)

(assert (=> b!646733 m!917211))

(declare-fun m!917213 () Bool)

(assert (=> setNonEmpty!3066 m!917213))

(declare-fun setRes!3067 () Bool)

(declare-fun tp!199690 () Bool)

(declare-fun b!646734 () Bool)

(declare-fun e!396902 () Bool)

(assert (=> b!646734 (= e!396902 (and (inv!8742 (_2!4079 (_1!4080 (h!12307 (zeroValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))))) setRes!3067 tp!199690))))

(declare-fun condSetEmpty!3067 () Bool)

(assert (=> b!646734 (= condSetEmpty!3067 (= (_2!4080 (h!12307 (zeroValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3067 () Bool)

(assert (=> setIsEmpty!3067 setRes!3067))

(declare-fun setNonEmpty!3067 () Bool)

(declare-fun tp!199691 () Bool)

(declare-fun setElem!3067 () Context!406)

(assert (=> setNonEmpty!3067 (= setRes!3067 (and tp!199691 (inv!8742 setElem!3067)))))

(declare-fun setRest!3067 () (InoxSet Context!406))

(assert (=> setNonEmpty!3067 (= (_2!4080 (h!12307 (zeroValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3067 true) setRest!3067))))

(assert (=> b!646448 (= tp!199620 e!396902)))

(assert (= (and b!646734 condSetEmpty!3067) setIsEmpty!3067))

(assert (= (and b!646734 (not condSetEmpty!3067)) setNonEmpty!3067))

(assert (= (and b!646448 ((_ is Cons!6906) (zeroValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))) b!646734))

(declare-fun m!917215 () Bool)

(assert (=> b!646734 m!917215))

(declare-fun m!917217 () Bool)

(assert (=> setNonEmpty!3067 m!917217))

(declare-fun e!396905 () Bool)

(declare-fun tp!199692 () Bool)

(declare-fun b!646735 () Bool)

(declare-fun setRes!3068 () Bool)

(assert (=> b!646735 (= e!396905 (and (inv!8742 (_2!4079 (_1!4080 (h!12307 (minValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))))) setRes!3068 tp!199692))))

(declare-fun condSetEmpty!3068 () Bool)

(assert (=> b!646735 (= condSetEmpty!3068 (= (_2!4080 (h!12307 (minValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))) ((as const (Array Context!406 Bool)) false)))))

(declare-fun setIsEmpty!3068 () Bool)

(assert (=> setIsEmpty!3068 setRes!3068))

(declare-fun setNonEmpty!3068 () Bool)

(declare-fun tp!199693 () Bool)

(declare-fun setElem!3068 () Context!406)

(assert (=> setNonEmpty!3068 (= setRes!3068 (and tp!199693 (inv!8742 setElem!3068)))))

(declare-fun setRest!3068 () (InoxSet Context!406))

(assert (=> setNonEmpty!3068 (= (_2!4080 (h!12307 (minValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!406 Bool)) false) setElem!3068 true) setRest!3068))))

(assert (=> b!646448 (= tp!199614 e!396905)))

(assert (= (and b!646735 condSetEmpty!3068) setIsEmpty!3068))

(assert (= (and b!646735 (not condSetEmpty!3068)) setNonEmpty!3068))

(assert (= (and b!646448 ((_ is Cons!6906) (minValue!931 (v!17105 (underlying!1531 (v!17106 (underlying!1532 (cache!1033 cacheDown!364)))))))) b!646735))

(declare-fun m!917219 () Bool)

(assert (=> b!646735 m!917219))

(declare-fun m!917221 () Bool)

(assert (=> setNonEmpty!3068 m!917221))

(check-sat (not b_next!18909) (not d!224119) (not setNonEmpty!3059) (not b!646535) (not b!646641) b_and!62647 (not b!646642) (not d!224153) (not setNonEmpty!3063) (not d!224139) (not d!224127) b_and!62649 (not b!646605) (not b!646482) (not b!646523) (not d!224167) (not b!646552) (not b!646488) (not b!646704) (not b!646719) (not b!646603) (not setNonEmpty!3047) (not d!224163) (not b!646730) (not b!646714) (not d!224147) (not d!224123) (not b!646532) (not b!646660) (not b!646696) (not b!646733) (not b!646732) (not b!646513) (not d!224103) (not b!646653) (not d!224131) (not b!646721) (not b_next!18917) (not b!646515) (not setNonEmpty!3054) (not d!224137) (not b_next!18911) (not setNonEmpty!3053) (not d!224125) (not setNonEmpty!3060) (not b!646610) (not setNonEmpty!3064) (not bm!41947) b_and!62655 (not b!646639) (not b!646713) (not b!646676) (not b!646531) b_and!62657 (not d!224135) (not b!646450) (not b_next!18915) (not d!224145) (not b!646571) (not b!646657) (not b_next!18913) (not b!646686) (not b!646731) (not d!224169) (not setNonEmpty!3065) (not bm!41948) (not d!224155) (not b_next!18919) (not d!224115) (not bm!41950) (not b!646667) (not bm!41949) (not b!646695) (not d!224113) (not setNonEmpty!3066) (not b!646533) (not setNonEmpty!3052) (not b!646652) (not b!646654) (not b!646553) (not d!224129) (not d!224121) (not b!646720) (not b!646534) (not b!646735) (not b!646522) (not d!224117) (not b!646520) (not b!646734) (not b!646678) b_and!62653 (not bm!41938) (not mapNonEmpty!2673) (not bm!41935) (not b!646706) (not mapNonEmpty!2670) (not b!646524) (not b!646669) (not d!224141) (not b!646583) (not d!224171) (not d!224133) (not b!646705) (not b!646562) (not b!646536) (not b!646681) (not b!646479) (not b!646604) (not d!224105) (not b!646609) (not b!646516) (not d!224111) (not setNonEmpty!3068) (not d!224109) (not b!646570) (not b!646561) (not b!646473) b_and!62651 (not b!646586) (not d!224107) (not d!224143) (not setNonEmpty!3067))
(check-sat b_and!62647 b_and!62649 (not b_next!18909) (not b_next!18917) (not b_next!18911) b_and!62655 b_and!62657 (not b_next!18915) (not b_next!18913) (not b_next!18919) b_and!62653 b_and!62651)
