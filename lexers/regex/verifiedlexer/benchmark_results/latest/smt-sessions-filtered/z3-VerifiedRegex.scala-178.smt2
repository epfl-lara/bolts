; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2192 () Bool)

(assert start!2192)

(declare-fun b!39334 () Bool)

(declare-fun b_free!741 () Bool)

(declare-fun b_next!741 () Bool)

(assert (=> b!39334 (= b_free!741 (not b_next!741))))

(declare-fun tp!27375 () Bool)

(declare-fun b_and!775 () Bool)

(assert (=> b!39334 (= tp!27375 b_and!775)))

(declare-fun b!39320 () Bool)

(declare-fun b_free!743 () Bool)

(declare-fun b_next!743 () Bool)

(assert (=> b!39320 (= b_free!743 (not b_next!743))))

(declare-fun tp!27376 () Bool)

(declare-fun b_and!777 () Bool)

(assert (=> b!39320 (= tp!27376 b_and!777)))

(declare-fun b!39329 () Bool)

(declare-fun b_free!745 () Bool)

(declare-fun b_next!745 () Bool)

(assert (=> b!39329 (= b_free!745 (not b_next!745))))

(declare-fun tp!27372 () Bool)

(declare-fun b_and!779 () Bool)

(assert (=> b!39329 (= tp!27372 b_and!779)))

(declare-fun b!39327 () Bool)

(declare-fun b_free!747 () Bool)

(declare-fun b_next!747 () Bool)

(assert (=> b!39327 (= b_free!747 (not b_next!747))))

(declare-fun tp!27371 () Bool)

(declare-fun b_and!781 () Bool)

(assert (=> b!39327 (= tp!27371 b_and!781)))

(declare-fun b!39339 () Bool)

(declare-fun b_free!749 () Bool)

(declare-fun b_next!749 () Bool)

(assert (=> b!39339 (= b_free!749 (not b_next!749))))

(declare-fun tp!27367 () Bool)

(declare-fun b_and!783 () Bool)

(assert (=> b!39339 (= tp!27367 b_and!783)))

(declare-fun b!39337 () Bool)

(declare-fun b_free!751 () Bool)

(declare-fun b_next!751 () Bool)

(assert (=> b!39337 (= b_free!751 (not b_next!751))))

(declare-fun tp!27365 () Bool)

(declare-fun b_and!785 () Bool)

(assert (=> b!39337 (= tp!27365 b_and!785)))

(declare-fun b!39309 () Bool)

(declare-fun e!19946 () Bool)

(declare-fun e!19938 () Bool)

(declare-datatypes ((Regex!201 0))(
  ( (ElementMatch!201 (c!15768 (_ BitVec 16))) (Concat!328 (regOne!914 Regex!201) (regTwo!914 Regex!201)) (EmptyExpr!201) (Star!201 (reg!530 Regex!201)) (EmptyLang!201) (Union!201 (regOne!915 Regex!201) (regTwo!915 Regex!201)) )
))
(declare-datatypes ((List!493 0))(
  ( (Nil!491) (Cons!491 (h!5887 Regex!201) (t!15539 List!493)) )
))
(declare-datatypes ((Context!118 0))(
  ( (Context!119 (exprs!559 List!493)) )
))
(declare-datatypes ((tuple2!536 0))(
  ( (tuple2!537 (_1!356 Context!118) (_2!356 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!538 0))(
  ( (tuple2!539 (_1!357 tuple2!536) (_2!357 (InoxSet Context!118))) )
))
(declare-datatypes ((List!494 0))(
  ( (Nil!492) (Cons!492 (h!5888 tuple2!538) (t!15540 List!494)) )
))
(declare-datatypes ((array!510 0))(
  ( (array!511 (arr!262 (Array (_ BitVec 32) List!494)) (size!526 (_ BitVec 32))) )
))
(declare-datatypes ((array!512 0))(
  ( (array!513 (arr!263 (Array (_ BitVec 32) (_ BitVec 64))) (size!527 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!298 0))(
  ( (LongMapFixedSize!299 (defaultEntry!487 Int) (mask!851 (_ BitVec 32)) (extraKeys!395 (_ BitVec 32)) (zeroValue!405 List!494) (minValue!405 List!494) (_size!430 (_ BitVec 32)) (_keys!440 array!512) (_values!427 array!510) (_vacant!209 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!585 0))(
  ( (Cell!586 (v!12271 LongMapFixedSize!298)) )
))
(declare-datatypes ((MutLongMap!149 0))(
  ( (LongMap!149 (underlying!493 Cell!585)) (MutLongMapExt!148 (__x!883 Int)) )
))
(declare-fun lt!3659 () MutLongMap!149)

(get-info :version)

(assert (=> b!39309 (= e!19946 (and e!19938 ((_ is LongMap!149) lt!3659)))))

(declare-datatypes ((Hashable!145 0))(
  ( (HashableExt!144 (__x!884 Int)) )
))
(declare-datatypes ((Cell!587 0))(
  ( (Cell!588 (v!12272 MutLongMap!149)) )
))
(declare-datatypes ((MutableMap!145 0))(
  ( (MutableMapExt!144 (__x!885 Int)) (HashMap!145 (underlying!494 Cell!587) (hashF!2013 Hashable!145) (_size!431 (_ BitVec 32)) (defaultValue!294 Int)) )
))
(declare-datatypes ((CacheUp!98 0))(
  ( (CacheUp!99 (cache!630 MutableMap!145)) )
))
(declare-fun cacheUp!320 () CacheUp!98)

(assert (=> b!39309 (= lt!3659 (v!12272 (underlying!494 (cache!630 cacheUp!320))))))

(declare-fun b!39310 () Bool)

(declare-fun e!19939 () Bool)

(declare-fun e!19930 () Bool)

(assert (=> b!39310 (= e!19939 e!19930)))

(declare-fun res!28784 () Bool)

(assert (=> b!39310 (=> (not res!28784) (not e!19930))))

(declare-datatypes ((List!495 0))(
  ( (Nil!493) (Cons!493 (h!5889 (_ BitVec 16)) (t!15541 List!495)) )
))
(declare-datatypes ((IArray!159 0))(
  ( (IArray!160 (innerList!137 List!495)) )
))
(declare-datatypes ((Conc!79 0))(
  ( (Node!79 (left!461 Conc!79) (right!791 Conc!79) (csize!388 Int) (cheight!290 Int)) (Leaf!258 (xs!2658 IArray!159) (csize!389 Int)) (Empty!79) )
))
(declare-datatypes ((BalanceConc!158 0))(
  ( (BalanceConc!159 (c!15769 Conc!79)) )
))
(declare-fun lt!3657 () BalanceConc!158)

(declare-fun lt!3667 () List!495)

(declare-fun list!123 (BalanceConc!158) List!495)

(assert (=> b!39310 (= res!28784 (= (list!123 lt!3657) lt!3667))))

(declare-fun seqFromList!8 (List!495) BalanceConc!158)

(assert (=> b!39310 (= lt!3657 (seqFromList!8 lt!3667))))

(declare-fun input!525 () BalanceConc!158)

(assert (=> b!39310 (= lt!3667 (list!123 input!525))))

(declare-fun b!39311 () Bool)

(declare-fun res!28778 () Bool)

(declare-fun e!19935 () Bool)

(assert (=> b!39311 (=> (not res!28778) (not e!19935))))

(declare-datatypes ((tuple3!154 0))(
  ( (tuple3!155 (_1!358 (InoxSet Context!118)) (_2!358 Int) (_3!88 Int)) )
))
(declare-datatypes ((tuple2!540 0))(
  ( (tuple2!541 (_1!359 tuple3!154) (_2!359 Int)) )
))
(declare-datatypes ((List!496 0))(
  ( (Nil!494) (Cons!494 (h!5890 tuple2!540) (t!15542 List!496)) )
))
(declare-datatypes ((array!514 0))(
  ( (array!515 (arr!264 (Array (_ BitVec 32) List!496)) (size!528 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!300 0))(
  ( (LongMapFixedSize!301 (defaultEntry!488 Int) (mask!852 (_ BitVec 32)) (extraKeys!396 (_ BitVec 32)) (zeroValue!406 List!496) (minValue!406 List!496) (_size!432 (_ BitVec 32)) (_keys!441 array!512) (_values!428 array!514) (_vacant!210 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!146 0))(
  ( (HashableExt!145 (__x!886 Int)) )
))
(declare-datatypes ((Cell!589 0))(
  ( (Cell!590 (v!12273 LongMapFixedSize!300)) )
))
(declare-datatypes ((MutLongMap!150 0))(
  ( (LongMap!150 (underlying!495 Cell!589)) (MutLongMapExt!149 (__x!887 Int)) )
))
(declare-datatypes ((Cell!591 0))(
  ( (Cell!592 (v!12274 MutLongMap!150)) )
))
(declare-datatypes ((MutableMap!146 0))(
  ( (MutableMapExt!145 (__x!888 Int)) (HashMap!146 (underlying!496 Cell!591) (hashF!2014 Hashable!146) (_size!433 (_ BitVec 32)) (defaultValue!295 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!48 0))(
  ( (CacheFurthestNullable!49 (cache!631 MutableMap!146) (totalInput!1501 BalanceConc!158)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!48)

(assert (=> b!39311 (= res!28778 (= (totalInput!1501 cacheFurthestNullable!45) input!525))))

(declare-fun b!39312 () Bool)

(assert (=> b!39312 (= e!19935 e!19939)))

(declare-fun res!28783 () Bool)

(assert (=> b!39312 (=> (not res!28783) (not e!19939))))

(declare-datatypes ((TokenValue!127 0))(
  ( (FloatLiteralValue!254 (text!1334 List!495)) (TokenValueExt!126 (__x!889 Int)) (Broken!635 (value!6688 List!495)) (Object!128) (End!127) (Def!127) (Underscore!127) (Match!127) (Else!127) (Error!127) (Case!127) (If!127) (Extends!127) (Abstract!127) (Class!127) (Val!127) (DelimiterValue!254 (del!187 List!495)) (KeywordValue!133 (value!6689 List!495)) (CommentValue!254 (value!6690 List!495)) (WhitespaceValue!254 (value!6691 List!495)) (IndentationValue!127 (value!6692 List!495)) (String!926) (Int32!127) (Broken!636 (value!6693 List!495)) (Boolean!128) (Unit!227) (OperatorValue!130 (op!187 List!495)) (IdentifierValue!254 (value!6694 List!495)) (IdentifierValue!255 (value!6695 List!495)) (WhitespaceValue!255 (value!6696 List!495)) (True!254) (False!254) (Broken!637 (value!6697 List!495)) (Broken!638 (value!6698 List!495)) (True!255) (RightBrace!127) (RightBracket!127) (Colon!127) (Null!127) (Comma!127) (LeftBracket!127) (False!255) (LeftBrace!127) (ImaginaryLiteralValue!127 (text!1335 List!495)) (StringLiteralValue!381 (value!6699 List!495)) (EOFValue!127 (value!6700 List!495)) (IdentValue!127 (value!6701 List!495)) (DelimiterValue!255 (value!6702 List!495)) (DedentValue!127 (value!6703 List!495)) (NewLineValue!127 (value!6704 List!495)) (IntegerValue!381 (value!6705 (_ BitVec 32)) (text!1336 List!495)) (IntegerValue!382 (value!6706 Int) (text!1337 List!495)) (Times!127) (Or!127) (Equal!127) (Minus!127) (Broken!639 (value!6707 List!495)) (And!127) (Div!127) (LessEqual!127) (Mod!127) (Concat!329) (Not!127) (Plus!127) (SpaceValue!127 (value!6708 List!495)) (IntegerValue!383 (value!6709 Int) (text!1338 List!495)) (StringLiteralValue!382 (text!1339 List!495)) (FloatLiteralValue!255 (text!1340 List!495)) (BytesLiteralValue!127 (value!6710 List!495)) (CommentValue!255 (value!6711 List!495)) (StringLiteralValue!383 (value!6712 List!495)) (ErrorTokenValue!127 (msg!188 List!495)) )
))
(declare-datatypes ((String!927 0))(
  ( (String!928 (value!6713 String)) )
))
(declare-datatypes ((TokenValueInjection!78 0))(
  ( (TokenValueInjection!79 (toValue!616 Int) (toChars!475 Int)) )
))
(declare-datatypes ((Rule!74 0))(
  ( (Rule!75 (regex!137 Regex!201) (tag!315 String!927) (isSeparator!137 Bool) (transformation!137 TokenValueInjection!78)) )
))
(declare-datatypes ((Token!46 0))(
  ( (Token!47 (value!6714 TokenValue!127) (rule!616 Rule!74) (size!529 Int) (originalCharacters!194 List!495)) )
))
(declare-datatypes ((List!497 0))(
  ( (Nil!495) (Cons!495 (h!5891 Token!46) (t!15543 List!497)) )
))
(declare-fun lt!3666 () List!497)

(declare-fun lt!3661 () List!497)

(assert (=> b!39312 (= res!28783 (= lt!3666 lt!3661))))

(declare-datatypes ((IArray!161 0))(
  ( (IArray!162 (innerList!138 List!497)) )
))
(declare-datatypes ((Conc!80 0))(
  ( (Node!80 (left!462 Conc!80) (right!792 Conc!80) (csize!390 Int) (cheight!291 Int)) (Leaf!259 (xs!2659 IArray!161) (csize!391 Int)) (Empty!80) )
))
(declare-datatypes ((BalanceConc!160 0))(
  ( (BalanceConc!161 (c!15770 Conc!80)) )
))
(declare-datatypes ((tuple2!542 0))(
  ( (tuple2!543 (_1!360 BalanceConc!160) (_2!360 BalanceConc!158)) )
))
(declare-fun lt!3655 () tuple2!542)

(declare-fun list!124 (BalanceConc!160) List!497)

(assert (=> b!39312 (= lt!3661 (list!124 (_1!360 lt!3655)))))

(declare-datatypes ((tuple3!156 0))(
  ( (tuple3!157 (_1!361 Regex!201) (_2!361 Context!118) (_3!89 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!544 0))(
  ( (tuple2!545 (_1!362 tuple3!156) (_2!362 (InoxSet Context!118))) )
))
(declare-datatypes ((List!498 0))(
  ( (Nil!496) (Cons!496 (h!5892 tuple2!544) (t!15544 List!498)) )
))
(declare-datatypes ((array!516 0))(
  ( (array!517 (arr!265 (Array (_ BitVec 32) List!498)) (size!530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!302 0))(
  ( (LongMapFixedSize!303 (defaultEntry!489 Int) (mask!853 (_ BitVec 32)) (extraKeys!397 (_ BitVec 32)) (zeroValue!407 List!498) (minValue!407 List!498) (_size!434 (_ BitVec 32)) (_keys!442 array!512) (_values!429 array!516) (_vacant!211 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!593 0))(
  ( (Cell!594 (v!12275 LongMapFixedSize!302)) )
))
(declare-datatypes ((MutLongMap!151 0))(
  ( (LongMap!151 (underlying!497 Cell!593)) (MutLongMapExt!150 (__x!890 Int)) )
))
(declare-datatypes ((Cell!595 0))(
  ( (Cell!596 (v!12276 MutLongMap!151)) )
))
(declare-datatypes ((Hashable!147 0))(
  ( (HashableExt!146 (__x!891 Int)) )
))
(declare-datatypes ((MutableMap!147 0))(
  ( (MutableMapExt!146 (__x!892 Int)) (HashMap!147 (underlying!498 Cell!595) (hashF!2015 Hashable!147) (_size!435 (_ BitVec 32)) (defaultValue!296 Int)) )
))
(declare-datatypes ((CacheDown!100 0))(
  ( (CacheDown!101 (cache!632 MutableMap!147)) )
))
(declare-datatypes ((tuple4!22 0))(
  ( (tuple4!23 (_1!363 tuple2!542) (_2!363 CacheUp!98) (_3!90 CacheDown!100) (_4!11 CacheFurthestNullable!48)) )
))
(declare-fun lt!3663 () tuple4!22)

(assert (=> b!39312 (= lt!3666 (list!124 (_1!360 (_1!363 lt!3663))))))

(declare-datatypes ((List!499 0))(
  ( (Nil!497) (Cons!497 (h!5893 Rule!74) (t!15545 List!499)) )
))
(declare-fun lt!3662 () List!499)

(declare-datatypes ((LexerInterface!34 0))(
  ( (LexerInterfaceExt!31 (__x!893 Int)) (Lexer!32) )
))
(declare-fun lex!10 (LexerInterface!34 List!499 BalanceConc!158) tuple2!542)

(assert (=> b!39312 (= lt!3655 (lex!10 Lexer!32 lt!3662 input!525))))

(declare-datatypes ((Unit!228 0))(
  ( (Unit!229) )
))
(declare-fun lt!3658 () Unit!228)

(declare-fun lemmaInvariant!15 (CacheDown!100) Unit!228)

(assert (=> b!39312 (= lt!3658 (lemmaInvariant!15 (_3!90 lt!3663)))))

(declare-fun lt!3660 () Unit!228)

(declare-fun lemmaInvariant!16 (CacheUp!98) Unit!228)

(assert (=> b!39312 (= lt!3660 (lemmaInvariant!16 (_2!363 lt!3663)))))

(declare-fun cacheDown!333 () CacheDown!100)

(declare-fun lexMem!6 (LexerInterface!34 List!499 BalanceConc!158 CacheUp!98 CacheDown!100 CacheFurthestNullable!48) tuple4!22)

(assert (=> b!39312 (= lt!3663 (lexMem!6 Lexer!32 lt!3662 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun mapIsEmpty!535 () Bool)

(declare-fun mapRes!535 () Bool)

(assert (=> mapIsEmpty!535 mapRes!535))

(declare-fun b!39313 () Bool)

(declare-fun e!19944 () Bool)

(declare-fun e!19936 () Bool)

(declare-fun lt!3656 () MutLongMap!150)

(assert (=> b!39313 (= e!19944 (and e!19936 ((_ is LongMap!150) lt!3656)))))

(assert (=> b!39313 (= lt!3656 (v!12274 (underlying!496 (cache!631 cacheFurthestNullable!45))))))

(declare-fun mapIsEmpty!536 () Bool)

(declare-fun mapRes!537 () Bool)

(assert (=> mapIsEmpty!536 mapRes!537))

(declare-fun mapNonEmpty!535 () Bool)

(declare-fun tp!27368 () Bool)

(declare-fun tp!27379 () Bool)

(assert (=> mapNonEmpty!535 (= mapRes!535 (and tp!27368 tp!27379))))

(declare-fun mapValue!535 () List!498)

(declare-fun mapKey!535 () (_ BitVec 32))

(declare-fun mapRest!536 () (Array (_ BitVec 32) List!498))

(assert (=> mapNonEmpty!535 (= (arr!265 (_values!429 (v!12275 (underlying!497 (v!12276 (underlying!498 (cache!632 cacheDown!333))))))) (store mapRest!536 mapKey!535 mapValue!535))))

(declare-fun b!39314 () Bool)

(declare-fun res!28781 () Bool)

(assert (=> b!39314 (=> (not res!28781) (not e!19939))))

(assert (=> b!39314 (= res!28781 (= (list!123 (_2!360 (_1!363 lt!3663))) (list!123 (_2!360 lt!3655))))))

(declare-fun res!28782 () Bool)

(assert (=> start!2192 (=> (not res!28782) (not e!19935))))

(declare-fun isEmpty!105 (List!499) Bool)

(assert (=> start!2192 (= res!28782 (not (isEmpty!105 lt!3662)))))

(declare-datatypes ((JsonLexer!34 0))(
  ( (JsonLexer!35) )
))
(declare-fun rules!109 (JsonLexer!34) List!499)

(assert (=> start!2192 (= lt!3662 (rules!109 JsonLexer!35))))

(assert (=> start!2192 e!19935))

(declare-fun e!19926 () Bool)

(declare-fun inv!790 (CacheDown!100) Bool)

(assert (=> start!2192 (and (inv!790 cacheDown!333) e!19926)))

(declare-fun e!19942 () Bool)

(declare-fun inv!791 (BalanceConc!158) Bool)

(assert (=> start!2192 (and (inv!791 input!525) e!19942)))

(declare-fun e!19937 () Bool)

(declare-fun inv!792 (CacheFurthestNullable!48) Bool)

(assert (=> start!2192 (and (inv!792 cacheFurthestNullable!45) e!19937)))

(declare-fun e!19947 () Bool)

(declare-fun inv!793 (CacheUp!98) Bool)

(assert (=> start!2192 (and (inv!793 cacheUp!320) e!19947)))

(declare-fun b!39315 () Bool)

(declare-fun res!28787 () Bool)

(assert (=> b!39315 (=> (not res!28787) (not e!19935))))

(declare-fun valid!150 (CacheDown!100) Bool)

(assert (=> b!39315 (= res!28787 (valid!150 cacheDown!333))))

(declare-fun b!39316 () Bool)

(declare-fun e!19948 () Bool)

(assert (=> b!39316 (= e!19930 e!19948)))

(declare-fun res!28786 () Bool)

(assert (=> b!39316 (=> (not res!28786) (not e!19948))))

(declare-fun lt!3654 () tuple2!542)

(assert (=> b!39316 (= res!28786 (= lt!3661 (list!124 (_1!360 lt!3654))))))

(assert (=> b!39316 (= lt!3654 (lex!10 Lexer!32 lt!3662 lt!3657))))

(declare-fun b!39317 () Bool)

(declare-fun e!19945 () Bool)

(declare-fun tp!27364 () Bool)

(assert (=> b!39317 (= e!19945 (and tp!27364 mapRes!535))))

(declare-fun condMapEmpty!536 () Bool)

(declare-fun mapDefault!535 () List!498)

(assert (=> b!39317 (= condMapEmpty!536 (= (arr!265 (_values!429 (v!12275 (underlying!497 (v!12276 (underlying!498 (cache!632 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!498)) mapDefault!535)))))

(declare-fun b!39318 () Bool)

(declare-fun e!19923 () Bool)

(declare-fun e!19920 () Bool)

(assert (=> b!39318 (= e!19937 (and e!19920 (inv!791 (totalInput!1501 cacheFurthestNullable!45)) e!19923))))

(declare-fun mapNonEmpty!536 () Bool)

(declare-fun mapRes!536 () Bool)

(declare-fun tp!27369 () Bool)

(declare-fun tp!27373 () Bool)

(assert (=> mapNonEmpty!536 (= mapRes!536 (and tp!27369 tp!27373))))

(declare-fun mapKey!536 () (_ BitVec 32))

(declare-fun mapValue!537 () List!496)

(declare-fun mapRest!537 () (Array (_ BitVec 32) List!496))

(assert (=> mapNonEmpty!536 (= (arr!264 (_values!428 (v!12273 (underlying!495 (v!12274 (underlying!496 (cache!631 cacheFurthestNullable!45))))))) (store mapRest!537 mapKey!536 mapValue!537))))

(declare-fun b!39319 () Bool)

(declare-fun e!19929 () Bool)

(declare-fun e!19949 () Bool)

(assert (=> b!39319 (= e!19929 e!19949)))

(declare-fun e!19924 () Bool)

(declare-fun e!19921 () Bool)

(declare-fun tp!27362 () Bool)

(declare-fun tp!27374 () Bool)

(declare-fun array_inv!164 (array!512) Bool)

(declare-fun array_inv!165 (array!514) Bool)

(assert (=> b!39320 (= e!19921 (and tp!27376 tp!27362 tp!27374 (array_inv!164 (_keys!441 (v!12273 (underlying!495 (v!12274 (underlying!496 (cache!631 cacheFurthestNullable!45))))))) (array_inv!165 (_values!428 (v!12273 (underlying!495 (v!12274 (underlying!496 (cache!631 cacheFurthestNullable!45))))))) e!19924))))

(declare-fun b!39321 () Bool)

(declare-fun e!19928 () Bool)

(assert (=> b!39321 (= e!19936 e!19928)))

(declare-fun b!39322 () Bool)

(declare-fun e!19922 () Bool)

(declare-fun e!19927 () Bool)

(assert (=> b!39322 (= e!19922 e!19927)))

(declare-fun b!39323 () Bool)

(declare-fun res!28779 () Bool)

(assert (=> b!39323 (=> (not res!28779) (not e!19935))))

(declare-fun valid!151 (CacheFurthestNullable!48) Bool)

(assert (=> b!39323 (= res!28779 (valid!151 cacheFurthestNullable!45))))

(declare-fun b!39324 () Bool)

(assert (=> b!39324 (= e!19948 false)))

(declare-fun lt!3665 () List!495)

(assert (=> b!39324 (= lt!3665 (list!123 (_2!360 lt!3654)))))

(declare-fun b!39325 () Bool)

(declare-fun res!28785 () Bool)

(assert (=> b!39325 (=> (not res!28785) (not e!19935))))

(declare-fun rulesInvariant!27 (LexerInterface!34 List!499) Bool)

(assert (=> b!39325 (= res!28785 (rulesInvariant!27 Lexer!32 lt!3662))))

(declare-fun b!39326 () Bool)

(declare-fun e!19931 () Bool)

(assert (=> b!39326 (= e!19947 e!19931)))

(declare-fun e!19934 () Bool)

(declare-fun e!19933 () Bool)

(assert (=> b!39327 (= e!19934 (and e!19933 tp!27371))))

(declare-fun b!39328 () Bool)

(declare-fun e!19925 () Bool)

(assert (=> b!39328 (= e!19925 e!19922)))

(declare-fun mapNonEmpty!537 () Bool)

(declare-fun tp!27381 () Bool)

(declare-fun tp!27361 () Bool)

(assert (=> mapNonEmpty!537 (= mapRes!537 (and tp!27381 tp!27361))))

(declare-fun mapKey!537 () (_ BitVec 32))

(declare-fun mapValue!536 () List!494)

(declare-fun mapRest!535 () (Array (_ BitVec 32) List!494))

(assert (=> mapNonEmpty!537 (= (arr!262 (_values!427 (v!12271 (underlying!493 (v!12272 (underlying!494 (cache!630 cacheUp!320))))))) (store mapRest!535 mapKey!537 mapValue!536))))

(declare-fun e!19932 () Bool)

(declare-fun tp!27380 () Bool)

(declare-fun tp!27378 () Bool)

(declare-fun array_inv!166 (array!510) Bool)

(assert (=> b!39329 (= e!19949 (and tp!27372 tp!27380 tp!27378 (array_inv!164 (_keys!440 (v!12271 (underlying!493 (v!12272 (underlying!494 (cache!630 cacheUp!320))))))) (array_inv!166 (_values!427 (v!12271 (underlying!493 (v!12272 (underlying!494 (cache!630 cacheUp!320))))))) e!19932))))

(declare-fun b!39330 () Bool)

(declare-fun tp!27370 () Bool)

(declare-fun inv!794 (Conc!79) Bool)

(assert (=> b!39330 (= e!19942 (and (inv!794 (c!15769 input!525)) tp!27370))))

(declare-fun b!39331 () Bool)

(assert (=> b!39331 (= e!19926 e!19934)))

(declare-fun b!39332 () Bool)

(declare-fun res!28780 () Bool)

(assert (=> b!39332 (=> (not res!28780) (not e!19935))))

(declare-fun valid!152 (CacheUp!98) Bool)

(assert (=> b!39332 (= res!28780 (valid!152 cacheUp!320))))

(declare-fun b!39333 () Bool)

(declare-fun tp!27377 () Bool)

(assert (=> b!39333 (= e!19924 (and tp!27377 mapRes!536))))

(declare-fun condMapEmpty!535 () Bool)

(declare-fun mapDefault!536 () List!496)

(assert (=> b!39333 (= condMapEmpty!535 (= (arr!264 (_values!428 (v!12273 (underlying!495 (v!12274 (underlying!496 (cache!631 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!496)) mapDefault!536)))))

(assert (=> b!39334 (= e!19931 (and e!19946 tp!27375))))

(declare-fun b!39335 () Bool)

(assert (=> b!39335 (= e!19938 e!19929)))

(declare-fun b!39336 () Bool)

(declare-fun tp!27363 () Bool)

(assert (=> b!39336 (= e!19932 (and tp!27363 mapRes!537))))

(declare-fun condMapEmpty!537 () Bool)

(declare-fun mapDefault!537 () List!494)

(assert (=> b!39336 (= condMapEmpty!537 (= (arr!262 (_values!427 (v!12271 (underlying!493 (v!12272 (underlying!494 (cache!630 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!494)) mapDefault!537)))))

(assert (=> b!39337 (= e!19920 (and e!19944 tp!27365))))

(declare-fun b!39338 () Bool)

(declare-fun tp!27382 () Bool)

(assert (=> b!39338 (= e!19923 (and (inv!794 (c!15769 (totalInput!1501 cacheFurthestNullable!45))) tp!27382))))

(declare-fun tp!27366 () Bool)

(declare-fun tp!27383 () Bool)

(declare-fun array_inv!167 (array!516) Bool)

(assert (=> b!39339 (= e!19927 (and tp!27367 tp!27366 tp!27383 (array_inv!164 (_keys!442 (v!12275 (underlying!497 (v!12276 (underlying!498 (cache!632 cacheDown!333))))))) (array_inv!167 (_values!429 (v!12275 (underlying!497 (v!12276 (underlying!498 (cache!632 cacheDown!333))))))) e!19945))))

(declare-fun mapIsEmpty!537 () Bool)

(assert (=> mapIsEmpty!537 mapRes!536))

(declare-fun b!39340 () Bool)

(assert (=> b!39340 (= e!19928 e!19921)))

(declare-fun b!39341 () Bool)

(declare-fun lt!3664 () MutLongMap!151)

(assert (=> b!39341 (= e!19933 (and e!19925 ((_ is LongMap!151) lt!3664)))))

(assert (=> b!39341 (= lt!3664 (v!12276 (underlying!498 (cache!632 cacheDown!333))))))

(assert (= (and start!2192 res!28782) b!39325))

(assert (= (and b!39325 res!28785) b!39332))

(assert (= (and b!39332 res!28780) b!39315))

(assert (= (and b!39315 res!28787) b!39323))

(assert (= (and b!39323 res!28779) b!39311))

(assert (= (and b!39311 res!28778) b!39312))

(assert (= (and b!39312 res!28783) b!39314))

(assert (= (and b!39314 res!28781) b!39310))

(assert (= (and b!39310 res!28784) b!39316))

(assert (= (and b!39316 res!28786) b!39324))

(assert (= (and b!39317 condMapEmpty!536) mapIsEmpty!535))

(assert (= (and b!39317 (not condMapEmpty!536)) mapNonEmpty!535))

(assert (= b!39339 b!39317))

(assert (= b!39322 b!39339))

(assert (= b!39328 b!39322))

(assert (= (and b!39341 ((_ is LongMap!151) (v!12276 (underlying!498 (cache!632 cacheDown!333))))) b!39328))

(assert (= b!39327 b!39341))

(assert (= (and b!39331 ((_ is HashMap!147) (cache!632 cacheDown!333))) b!39327))

(assert (= start!2192 b!39331))

(assert (= start!2192 b!39330))

(assert (= (and b!39333 condMapEmpty!535) mapIsEmpty!537))

(assert (= (and b!39333 (not condMapEmpty!535)) mapNonEmpty!536))

(assert (= b!39320 b!39333))

(assert (= b!39340 b!39320))

(assert (= b!39321 b!39340))

(assert (= (and b!39313 ((_ is LongMap!150) (v!12274 (underlying!496 (cache!631 cacheFurthestNullable!45))))) b!39321))

(assert (= b!39337 b!39313))

(assert (= (and b!39318 ((_ is HashMap!146) (cache!631 cacheFurthestNullable!45))) b!39337))

(assert (= b!39318 b!39338))

(assert (= start!2192 b!39318))

(assert (= (and b!39336 condMapEmpty!537) mapIsEmpty!536))

(assert (= (and b!39336 (not condMapEmpty!537)) mapNonEmpty!537))

(assert (= b!39329 b!39336))

(assert (= b!39319 b!39329))

(assert (= b!39335 b!39319))

(assert (= (and b!39309 ((_ is LongMap!149) (v!12272 (underlying!494 (cache!630 cacheUp!320))))) b!39335))

(assert (= b!39334 b!39309))

(assert (= (and b!39326 ((_ is HashMap!145) (cache!630 cacheUp!320))) b!39334))

(assert (= start!2192 b!39326))

(declare-fun m!13098 () Bool)

(assert (=> mapNonEmpty!535 m!13098))

(declare-fun m!13100 () Bool)

(assert (=> b!39312 m!13100))

(declare-fun m!13102 () Bool)

(assert (=> b!39312 m!13102))

(declare-fun m!13104 () Bool)

(assert (=> b!39312 m!13104))

(declare-fun m!13106 () Bool)

(assert (=> b!39312 m!13106))

(declare-fun m!13108 () Bool)

(assert (=> b!39312 m!13108))

(declare-fun m!13110 () Bool)

(assert (=> b!39312 m!13110))

(declare-fun m!13112 () Bool)

(assert (=> b!39338 m!13112))

(declare-fun m!13114 () Bool)

(assert (=> mapNonEmpty!537 m!13114))

(declare-fun m!13116 () Bool)

(assert (=> start!2192 m!13116))

(declare-fun m!13118 () Bool)

(assert (=> start!2192 m!13118))

(declare-fun m!13120 () Bool)

(assert (=> start!2192 m!13120))

(declare-fun m!13122 () Bool)

(assert (=> start!2192 m!13122))

(declare-fun m!13124 () Bool)

(assert (=> start!2192 m!13124))

(declare-fun m!13126 () Bool)

(assert (=> start!2192 m!13126))

(declare-fun m!13128 () Bool)

(assert (=> b!39339 m!13128))

(declare-fun m!13130 () Bool)

(assert (=> b!39339 m!13130))

(declare-fun m!13132 () Bool)

(assert (=> b!39332 m!13132))

(declare-fun m!13134 () Bool)

(assert (=> mapNonEmpty!536 m!13134))

(declare-fun m!13136 () Bool)

(assert (=> b!39330 m!13136))

(declare-fun m!13138 () Bool)

(assert (=> b!39329 m!13138))

(declare-fun m!13140 () Bool)

(assert (=> b!39329 m!13140))

(declare-fun m!13142 () Bool)

(assert (=> b!39316 m!13142))

(declare-fun m!13144 () Bool)

(assert (=> b!39316 m!13144))

(declare-fun m!13146 () Bool)

(assert (=> b!39325 m!13146))

(declare-fun m!13148 () Bool)

(assert (=> b!39324 m!13148))

(declare-fun m!13150 () Bool)

(assert (=> b!39310 m!13150))

(declare-fun m!13152 () Bool)

(assert (=> b!39310 m!13152))

(declare-fun m!13154 () Bool)

(assert (=> b!39310 m!13154))

(declare-fun m!13156 () Bool)

(assert (=> b!39315 m!13156))

(declare-fun m!13158 () Bool)

(assert (=> b!39314 m!13158))

(declare-fun m!13160 () Bool)

(assert (=> b!39314 m!13160))

(declare-fun m!13162 () Bool)

(assert (=> b!39318 m!13162))

(declare-fun m!13164 () Bool)

(assert (=> b!39320 m!13164))

(declare-fun m!13166 () Bool)

(assert (=> b!39320 m!13166))

(declare-fun m!13168 () Bool)

(assert (=> b!39323 m!13168))

(check-sat (not b_next!743) (not b_next!751) (not mapNonEmpty!537) (not b!39333) (not b!39323) (not b!39315) (not b!39332) b_and!781 (not b!39310) (not b_next!745) (not b!39339) (not b!39330) (not b!39336) (not b!39324) (not b_next!749) (not b!39329) b_and!779 (not b_next!741) (not b!39338) b_and!785 b_and!783 (not b!39320) (not start!2192) (not b!39312) (not b!39316) (not b!39318) b_and!775 (not b!39314) b_and!777 (not mapNonEmpty!535) (not b!39317) (not b_next!747) (not b!39325) (not mapNonEmpty!536))
(check-sat (not b_next!743) (not b_next!749) (not b_next!751) b_and!785 b_and!781 b_and!783 b_and!775 (not b_next!745) b_and!777 (not b_next!747) b_and!779 (not b_next!741))
