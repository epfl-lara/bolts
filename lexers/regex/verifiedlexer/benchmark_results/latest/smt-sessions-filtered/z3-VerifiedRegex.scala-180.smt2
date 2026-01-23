; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2200 () Bool)

(assert start!2200)

(declare-fun b!39744 () Bool)

(declare-fun b_free!789 () Bool)

(declare-fun b_next!789 () Bool)

(assert (=> b!39744 (= b_free!789 (not b_next!789))))

(declare-fun tp!27637 () Bool)

(declare-fun b_and!823 () Bool)

(assert (=> b!39744 (= tp!27637 b_and!823)))

(declare-fun b!39731 () Bool)

(declare-fun b_free!791 () Bool)

(declare-fun b_next!791 () Bool)

(assert (=> b!39731 (= b_free!791 (not b_next!791))))

(declare-fun tp!27659 () Bool)

(declare-fun b_and!825 () Bool)

(assert (=> b!39731 (= tp!27659 b_and!825)))

(declare-fun b!39753 () Bool)

(declare-fun b_free!793 () Bool)

(declare-fun b_next!793 () Bool)

(assert (=> b!39753 (= b_free!793 (not b_next!793))))

(declare-fun tp!27639 () Bool)

(declare-fun b_and!827 () Bool)

(assert (=> b!39753 (= tp!27639 b_and!827)))

(declare-fun b!39746 () Bool)

(declare-fun b_free!795 () Bool)

(declare-fun b_next!795 () Bool)

(assert (=> b!39746 (= b_free!795 (not b_next!795))))

(declare-fun tp!27645 () Bool)

(declare-fun b_and!829 () Bool)

(assert (=> b!39746 (= tp!27645 b_and!829)))

(declare-fun b!39729 () Bool)

(declare-fun b_free!797 () Bool)

(declare-fun b_next!797 () Bool)

(assert (=> b!39729 (= b_free!797 (not b_next!797))))

(declare-fun tp!27647 () Bool)

(declare-fun b_and!831 () Bool)

(assert (=> b!39729 (= tp!27647 b_and!831)))

(declare-fun b!39734 () Bool)

(declare-fun b_free!799 () Bool)

(declare-fun b_next!799 () Bool)

(assert (=> b!39734 (= b_free!799 (not b_next!799))))

(declare-fun tp!27640 () Bool)

(declare-fun b_and!833 () Bool)

(assert (=> b!39734 (= tp!27640 b_and!833)))

(declare-fun b!39721 () Bool)

(declare-fun e!20307 () Bool)

(declare-fun e!20304 () Bool)

(declare-datatypes ((Regex!205 0))(
  ( (ElementMatch!205 (c!15784 (_ BitVec 16))) (Concat!336 (regOne!922 Regex!205) (regTwo!922 Regex!205)) (EmptyExpr!205) (Star!205 (reg!534 Regex!205)) (EmptyLang!205) (Union!205 (regOne!923 Regex!205) (regTwo!923 Regex!205)) )
))
(declare-datatypes ((List!521 0))(
  ( (Nil!519) (Cons!519 (h!5915 Regex!205) (t!15627 List!521)) )
))
(declare-datatypes ((Context!126 0))(
  ( (Context!127 (exprs!563 List!521)) )
))
(declare-datatypes ((tuple3!170 0))(
  ( (tuple3!171 (_1!388 Regex!205) (_2!388 Context!126) (_3!100 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!576 0))(
  ( (tuple2!577 (_1!389 tuple3!170) (_2!389 (InoxSet Context!126))) )
))
(declare-datatypes ((List!522 0))(
  ( (Nil!520) (Cons!520 (h!5916 tuple2!576) (t!15628 List!522)) )
))
(declare-datatypes ((array!542 0))(
  ( (array!543 (arr!278 (Array (_ BitVec 32) List!522)) (size!546 (_ BitVec 32))) )
))
(declare-datatypes ((array!544 0))(
  ( (array!545 (arr!279 (Array (_ BitVec 32) (_ BitVec 64))) (size!547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!322 0))(
  ( (LongMapFixedSize!323 (defaultEntry!499 Int) (mask!865 (_ BitVec 32)) (extraKeys!407 (_ BitVec 32)) (zeroValue!417 List!522) (minValue!417 List!522) (_size!454 (_ BitVec 32)) (_keys!452 array!544) (_values!439 array!542) (_vacant!221 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!633 0))(
  ( (Cell!634 (v!12295 LongMapFixedSize!322)) )
))
(declare-datatypes ((MutLongMap!161 0))(
  ( (LongMap!161 (underlying!517 Cell!633)) (MutLongMapExt!160 (__x!927 Int)) )
))
(declare-fun lt!3845 () MutLongMap!161)

(get-info :version)

(assert (=> b!39721 (= e!20307 (and e!20304 ((_ is LongMap!161) lt!3845)))))

(declare-datatypes ((Cell!635 0))(
  ( (Cell!636 (v!12296 MutLongMap!161)) )
))
(declare-datatypes ((Hashable!157 0))(
  ( (HashableExt!156 (__x!928 Int)) )
))
(declare-datatypes ((MutableMap!157 0))(
  ( (MutableMapExt!156 (__x!929 Int)) (HashMap!157 (underlying!518 Cell!635) (hashF!2025 Hashable!157) (_size!455 (_ BitVec 32)) (defaultValue!306 Int)) )
))
(declare-datatypes ((CacheDown!108 0))(
  ( (CacheDown!109 (cache!642 MutableMap!157)) )
))
(declare-fun cacheDown!333 () CacheDown!108)

(assert (=> b!39721 (= lt!3845 (v!12296 (underlying!518 (cache!642 cacheDown!333))))))

(declare-fun b!39722 () Bool)

(declare-fun e!20316 () Bool)

(declare-datatypes ((List!523 0))(
  ( (Nil!521) (Cons!521 (h!5917 (_ BitVec 16)) (t!15629 List!523)) )
))
(declare-datatypes ((IArray!175 0))(
  ( (IArray!176 (innerList!145 List!523)) )
))
(declare-datatypes ((Conc!87 0))(
  ( (Node!87 (left!471 Conc!87) (right!801 Conc!87) (csize!404 Int) (cheight!298 Int)) (Leaf!268 (xs!2666 IArray!175) (csize!405 Int)) (Empty!87) )
))
(declare-datatypes ((BalanceConc!174 0))(
  ( (BalanceConc!175 (c!15785 Conc!87)) )
))
(declare-fun input!525 () BalanceConc!174)

(declare-fun tp!27656 () Bool)

(declare-fun inv!809 (Conc!87) Bool)

(assert (=> b!39722 (= e!20316 (and (inv!809 (c!15785 input!525)) tp!27656))))

(declare-fun b!39723 () Bool)

(declare-fun res!28914 () Bool)

(declare-fun e!20298 () Bool)

(assert (=> b!39723 (=> (not res!28914) (not e!20298))))

(declare-fun valid!158 (CacheDown!108) Bool)

(assert (=> b!39723 (= res!28914 (valid!158 cacheDown!333))))

(declare-fun b!39724 () Bool)

(declare-fun e!20294 () Bool)

(declare-fun tp!27643 () Bool)

(declare-fun mapRes!573 () Bool)

(assert (=> b!39724 (= e!20294 (and tp!27643 mapRes!573))))

(declare-fun condMapEmpty!573 () Bool)

(declare-datatypes ((Hashable!158 0))(
  ( (HashableExt!157 (__x!930 Int)) )
))
(declare-datatypes ((tuple2!578 0))(
  ( (tuple2!579 (_1!390 Context!126) (_2!390 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!580 0))(
  ( (tuple2!581 (_1!391 tuple2!578) (_2!391 (InoxSet Context!126))) )
))
(declare-datatypes ((List!524 0))(
  ( (Nil!522) (Cons!522 (h!5918 tuple2!580) (t!15630 List!524)) )
))
(declare-datatypes ((array!546 0))(
  ( (array!547 (arr!280 (Array (_ BitVec 32) List!524)) (size!548 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!324 0))(
  ( (LongMapFixedSize!325 (defaultEntry!500 Int) (mask!866 (_ BitVec 32)) (extraKeys!408 (_ BitVec 32)) (zeroValue!418 List!524) (minValue!418 List!524) (_size!456 (_ BitVec 32)) (_keys!453 array!544) (_values!440 array!546) (_vacant!222 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!637 0))(
  ( (Cell!638 (v!12297 LongMapFixedSize!324)) )
))
(declare-datatypes ((MutLongMap!162 0))(
  ( (LongMap!162 (underlying!519 Cell!637)) (MutLongMapExt!161 (__x!931 Int)) )
))
(declare-datatypes ((Cell!639 0))(
  ( (Cell!640 (v!12298 MutLongMap!162)) )
))
(declare-datatypes ((MutableMap!158 0))(
  ( (MutableMapExt!157 (__x!932 Int)) (HashMap!158 (underlying!520 Cell!639) (hashF!2026 Hashable!158) (_size!457 (_ BitVec 32)) (defaultValue!307 Int)) )
))
(declare-datatypes ((CacheUp!106 0))(
  ( (CacheUp!107 (cache!643 MutableMap!158)) )
))
(declare-fun cacheUp!320 () CacheUp!106)

(declare-fun mapDefault!572 () List!524)

(assert (=> b!39724 (= condMapEmpty!573 (= (arr!280 (_values!440 (v!12297 (underlying!519 (v!12298 (underlying!520 (cache!643 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!524)) mapDefault!572)))))

(declare-fun b!39725 () Bool)

(declare-fun e!20299 () Bool)

(declare-fun e!20305 () Bool)

(assert (=> b!39725 (= e!20299 e!20305)))

(declare-fun b!39726 () Bool)

(declare-fun e!20296 () Bool)

(declare-fun e!20301 () Bool)

(assert (=> b!39726 (= e!20296 e!20301)))

(declare-fun res!28915 () Bool)

(assert (=> b!39726 (=> (not res!28915) (not e!20301))))

(declare-fun lt!3852 () BalanceConc!174)

(declare-fun lt!3846 () List!523)

(declare-fun list!131 (BalanceConc!174) List!523)

(assert (=> b!39726 (= res!28915 (= (list!131 lt!3852) lt!3846))))

(declare-fun seqFromList!12 (List!523) BalanceConc!174)

(assert (=> b!39726 (= lt!3852 (seqFromList!12 lt!3846))))

(assert (=> b!39726 (= lt!3846 (list!131 input!525))))

(declare-fun b!39727 () Bool)

(declare-fun res!28919 () Bool)

(declare-fun e!20292 () Bool)

(assert (=> b!39727 (=> (not res!28919) (not e!20292))))

(declare-fun lt!3844 () List!523)

(declare-datatypes ((TokenValue!131 0))(
  ( (FloatLiteralValue!262 (text!1362 List!523)) (TokenValueExt!130 (__x!933 Int)) (Broken!655 (value!6802 List!523)) (Object!132) (End!131) (Def!131) (Underscore!131) (Match!131) (Else!131) (Error!131) (Case!131) (If!131) (Extends!131) (Abstract!131) (Class!131) (Val!131) (DelimiterValue!262 (del!191 List!523)) (KeywordValue!137 (value!6803 List!523)) (CommentValue!262 (value!6804 List!523)) (WhitespaceValue!262 (value!6805 List!523)) (IndentationValue!131 (value!6806 List!523)) (String!946) (Int32!131) (Broken!656 (value!6807 List!523)) (Boolean!132) (Unit!239) (OperatorValue!134 (op!191 List!523)) (IdentifierValue!262 (value!6808 List!523)) (IdentifierValue!263 (value!6809 List!523)) (WhitespaceValue!263 (value!6810 List!523)) (True!262) (False!262) (Broken!657 (value!6811 List!523)) (Broken!658 (value!6812 List!523)) (True!263) (RightBrace!131) (RightBracket!131) (Colon!131) (Null!131) (Comma!131) (LeftBracket!131) (False!263) (LeftBrace!131) (ImaginaryLiteralValue!131 (text!1363 List!523)) (StringLiteralValue!393 (value!6813 List!523)) (EOFValue!131 (value!6814 List!523)) (IdentValue!131 (value!6815 List!523)) (DelimiterValue!263 (value!6816 List!523)) (DedentValue!131 (value!6817 List!523)) (NewLineValue!131 (value!6818 List!523)) (IntegerValue!393 (value!6819 (_ BitVec 32)) (text!1364 List!523)) (IntegerValue!394 (value!6820 Int) (text!1365 List!523)) (Times!131) (Or!131) (Equal!131) (Minus!131) (Broken!659 (value!6821 List!523)) (And!131) (Div!131) (LessEqual!131) (Mod!131) (Concat!337) (Not!131) (Plus!131) (SpaceValue!131 (value!6822 List!523)) (IntegerValue!395 (value!6823 Int) (text!1366 List!523)) (StringLiteralValue!394 (text!1367 List!523)) (FloatLiteralValue!263 (text!1368 List!523)) (BytesLiteralValue!131 (value!6824 List!523)) (CommentValue!263 (value!6825 List!523)) (StringLiteralValue!395 (value!6826 List!523)) (ErrorTokenValue!131 (msg!192 List!523)) )
))
(declare-datatypes ((String!947 0))(
  ( (String!948 (value!6827 String)) )
))
(declare-datatypes ((TokenValueInjection!86 0))(
  ( (TokenValueInjection!87 (toValue!620 Int) (toChars!479 Int)) )
))
(declare-datatypes ((Rule!82 0))(
  ( (Rule!83 (regex!141 Regex!205) (tag!319 String!947) (isSeparator!141 Bool) (transformation!141 TokenValueInjection!86)) )
))
(declare-datatypes ((Token!54 0))(
  ( (Token!55 (value!6828 TokenValue!131) (rule!620 Rule!82) (size!549 Int) (originalCharacters!198 List!523)) )
))
(declare-datatypes ((List!525 0))(
  ( (Nil!523) (Cons!523 (h!5919 Token!54) (t!15631 List!525)) )
))
(declare-datatypes ((IArray!177 0))(
  ( (IArray!178 (innerList!146 List!525)) )
))
(declare-datatypes ((Conc!88 0))(
  ( (Node!88 (left!472 Conc!88) (right!802 Conc!88) (csize!406 Int) (cheight!299 Int)) (Leaf!269 (xs!2667 IArray!177) (csize!407 Int)) (Empty!88) )
))
(declare-datatypes ((BalanceConc!176 0))(
  ( (BalanceConc!177 (c!15786 Conc!88)) )
))
(declare-datatypes ((tuple2!582 0))(
  ( (tuple2!583 (_1!392 BalanceConc!176) (_2!392 BalanceConc!174)) )
))
(declare-fun lt!3841 () tuple2!582)

(assert (=> b!39727 (= res!28919 (= lt!3844 (list!131 (_2!392 lt!3841))))))

(declare-fun b!39728 () Bool)

(assert (=> b!39728 (= e!20292 false)))

(declare-fun e!20314 () Bool)

(declare-fun tp!27650 () Bool)

(declare-fun tp!27642 () Bool)

(declare-fun array_inv!177 (array!544) Bool)

(declare-fun array_inv!178 (array!546) Bool)

(assert (=> b!39729 (= e!20314 (and tp!27647 tp!27650 tp!27642 (array_inv!177 (_keys!453 (v!12297 (underlying!519 (v!12298 (underlying!520 (cache!643 cacheUp!320))))))) (array_inv!178 (_values!440 (v!12297 (underlying!519 (v!12298 (underlying!520 (cache!643 cacheUp!320))))))) e!20294))))

(declare-fun mapIsEmpty!571 () Bool)

(assert (=> mapIsEmpty!571 mapRes!573))

(declare-fun b!39730 () Bool)

(declare-fun e!20300 () Bool)

(declare-fun e!20312 () Bool)

(assert (=> b!39730 (= e!20300 e!20312)))

(declare-fun mapNonEmpty!571 () Bool)

(declare-fun mapRes!572 () Bool)

(declare-fun tp!27648 () Bool)

(declare-fun tp!27644 () Bool)

(assert (=> mapNonEmpty!571 (= mapRes!572 (and tp!27648 tp!27644))))

(declare-fun mapRest!573 () (Array (_ BitVec 32) List!522))

(declare-fun mapKey!572 () (_ BitVec 32))

(declare-fun mapValue!571 () List!522)

(assert (=> mapNonEmpty!571 (= (arr!278 (_values!439 (v!12295 (underlying!517 (v!12296 (underlying!518 (cache!642 cacheDown!333))))))) (store mapRest!573 mapKey!572 mapValue!571))))

(declare-fun mapNonEmpty!572 () Bool)

(declare-fun tp!27646 () Bool)

(declare-fun tp!27658 () Bool)

(assert (=> mapNonEmpty!572 (= mapRes!573 (and tp!27646 tp!27658))))

(declare-fun mapRest!572 () (Array (_ BitVec 32) List!524))

(declare-fun mapValue!572 () List!524)

(declare-fun mapKey!573 () (_ BitVec 32))

(assert (=> mapNonEmpty!572 (= (arr!280 (_values!440 (v!12297 (underlying!519 (v!12298 (underlying!520 (cache!643 cacheUp!320))))))) (store mapRest!572 mapKey!573 mapValue!572))))

(declare-fun tp!27653 () Bool)

(declare-fun e!20291 () Bool)

(declare-fun e!20311 () Bool)

(declare-datatypes ((tuple3!172 0))(
  ( (tuple3!173 (_1!393 (InoxSet Context!126)) (_2!393 Int) (_3!101 Int)) )
))
(declare-datatypes ((tuple2!584 0))(
  ( (tuple2!585 (_1!394 tuple3!172) (_2!394 Int)) )
))
(declare-datatypes ((List!526 0))(
  ( (Nil!524) (Cons!524 (h!5920 tuple2!584) (t!15632 List!526)) )
))
(declare-datatypes ((array!548 0))(
  ( (array!549 (arr!281 (Array (_ BitVec 32) List!526)) (size!550 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!326 0))(
  ( (LongMapFixedSize!327 (defaultEntry!501 Int) (mask!867 (_ BitVec 32)) (extraKeys!409 (_ BitVec 32)) (zeroValue!419 List!526) (minValue!419 List!526) (_size!458 (_ BitVec 32)) (_keys!454 array!544) (_values!441 array!548) (_vacant!223 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!159 0))(
  ( (HashableExt!158 (__x!934 Int)) )
))
(declare-datatypes ((Cell!641 0))(
  ( (Cell!642 (v!12299 LongMapFixedSize!326)) )
))
(declare-datatypes ((MutLongMap!163 0))(
  ( (LongMap!163 (underlying!521 Cell!641)) (MutLongMapExt!162 (__x!935 Int)) )
))
(declare-datatypes ((Cell!643 0))(
  ( (Cell!644 (v!12300 MutLongMap!163)) )
))
(declare-datatypes ((MutableMap!159 0))(
  ( (MutableMapExt!158 (__x!936 Int)) (HashMap!159 (underlying!522 Cell!643) (hashF!2027 Hashable!159) (_size!459 (_ BitVec 32)) (defaultValue!308 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!56 0))(
  ( (CacheFurthestNullable!57 (cache!644 MutableMap!159) (totalInput!1505 BalanceConc!174)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!56)

(declare-fun tp!27651 () Bool)

(declare-fun array_inv!179 (array!548) Bool)

(assert (=> b!39731 (= e!20291 (and tp!27659 tp!27653 tp!27651 (array_inv!177 (_keys!454 (v!12299 (underlying!521 (v!12300 (underlying!522 (cache!644 cacheFurthestNullable!45))))))) (array_inv!179 (_values!441 (v!12299 (underlying!521 (v!12300 (underlying!522 (cache!644 cacheFurthestNullable!45))))))) e!20311))))

(declare-fun b!39732 () Bool)

(declare-fun e!20318 () Bool)

(assert (=> b!39732 (= e!20318 e!20291)))

(declare-fun mapIsEmpty!572 () Bool)

(assert (=> mapIsEmpty!572 mapRes!572))

(declare-fun b!39733 () Bool)

(declare-fun e!20317 () Bool)

(declare-fun e!20306 () Bool)

(declare-fun lt!3847 () MutLongMap!162)

(assert (=> b!39733 (= e!20317 (and e!20306 ((_ is LongMap!162) lt!3847)))))

(assert (=> b!39733 (= lt!3847 (v!12298 (underlying!520 (cache!643 cacheUp!320))))))

(assert (=> b!39734 (= e!20305 (and e!20307 tp!27640))))

(declare-fun mapNonEmpty!573 () Bool)

(declare-fun mapRes!571 () Bool)

(declare-fun tp!27654 () Bool)

(declare-fun tp!27655 () Bool)

(assert (=> mapNonEmpty!573 (= mapRes!571 (and tp!27654 tp!27655))))

(declare-fun mapRest!571 () (Array (_ BitVec 32) List!526))

(declare-fun mapKey!571 () (_ BitVec 32))

(declare-fun mapValue!573 () List!526)

(assert (=> mapNonEmpty!573 (= (arr!281 (_values!441 (v!12299 (underlying!521 (v!12300 (underlying!522 (cache!644 cacheFurthestNullable!45))))))) (store mapRest!571 mapKey!571 mapValue!573))))

(declare-fun b!39735 () Bool)

(declare-fun e!20309 () Bool)

(assert (=> b!39735 (= e!20298 e!20309)))

(declare-fun res!28925 () Bool)

(assert (=> b!39735 (=> (not res!28925) (not e!20309))))

(declare-fun lt!3851 () List!525)

(declare-fun lt!3839 () List!525)

(assert (=> b!39735 (= res!28925 (= lt!3851 lt!3839))))

(declare-fun lt!3843 () tuple2!582)

(declare-fun list!132 (BalanceConc!176) List!525)

(assert (=> b!39735 (= lt!3839 (list!132 (_1!392 lt!3843)))))

(declare-datatypes ((tuple4!30 0))(
  ( (tuple4!31 (_1!395 tuple2!582) (_2!395 CacheUp!106) (_3!102 CacheDown!108) (_4!15 CacheFurthestNullable!56)) )
))
(declare-fun lt!3840 () tuple4!30)

(assert (=> b!39735 (= lt!3851 (list!132 (_1!392 (_1!395 lt!3840))))))

(declare-datatypes ((List!527 0))(
  ( (Nil!525) (Cons!525 (h!5921 Rule!82) (t!15633 List!527)) )
))
(declare-fun lt!3850 () List!527)

(declare-datatypes ((LexerInterface!38 0))(
  ( (LexerInterfaceExt!35 (__x!937 Int)) (Lexer!36) )
))
(declare-fun lex!14 (LexerInterface!38 List!527 BalanceConc!174) tuple2!582)

(assert (=> b!39735 (= lt!3843 (lex!14 Lexer!36 lt!3850 input!525))))

(declare-datatypes ((Unit!240 0))(
  ( (Unit!241) )
))
(declare-fun lt!3842 () Unit!240)

(declare-fun lemmaInvariant!23 (CacheDown!108) Unit!240)

(assert (=> b!39735 (= lt!3842 (lemmaInvariant!23 (_3!102 lt!3840)))))

(declare-fun lt!3848 () Unit!240)

(declare-fun lemmaInvariant!24 (CacheUp!106) Unit!240)

(assert (=> b!39735 (= lt!3848 (lemmaInvariant!24 (_2!395 lt!3840)))))

(declare-fun lexMem!10 (LexerInterface!38 List!527 BalanceConc!174 CacheUp!106 CacheDown!108 CacheFurthestNullable!56) tuple4!30)

(assert (=> b!39735 (= lt!3840 (lexMem!10 Lexer!36 lt!3850 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!39736 () Bool)

(declare-fun e!20320 () Bool)

(assert (=> b!39736 (= e!20320 e!20318)))

(declare-fun b!39737 () Bool)

(assert (=> b!39737 (= e!20309 e!20296)))

(declare-fun res!28921 () Bool)

(assert (=> b!39737 (=> (not res!28921) (not e!20296))))

(declare-fun lt!3853 () List!523)

(assert (=> b!39737 (= res!28921 (= lt!3853 lt!3844))))

(assert (=> b!39737 (= lt!3844 (list!131 (_2!392 lt!3843)))))

(assert (=> b!39737 (= lt!3853 (list!131 (_2!392 (_1!395 lt!3840))))))

(declare-fun b!39738 () Bool)

(declare-fun res!28923 () Bool)

(assert (=> b!39738 (=> (not res!28923) (not e!20298))))

(declare-fun valid!159 (CacheFurthestNullable!56) Bool)

(assert (=> b!39738 (= res!28923 (valid!159 cacheFurthestNullable!45))))

(declare-fun b!39739 () Bool)

(declare-fun res!28917 () Bool)

(assert (=> b!39739 (=> (not res!28917) (not e!20298))))

(declare-fun rulesInvariant!30 (LexerInterface!38 List!527) Bool)

(assert (=> b!39739 (= res!28917 (rulesInvariant!30 Lexer!36 lt!3850))))

(declare-fun b!39740 () Bool)

(declare-fun res!28918 () Bool)

(assert (=> b!39740 (=> (not res!28918) (not e!20298))))

(assert (=> b!39740 (= res!28918 (= (totalInput!1505 cacheFurthestNullable!45) input!525))))

(declare-fun e!20321 () Bool)

(declare-fun b!39741 () Bool)

(declare-fun e!20302 () Bool)

(declare-fun e!20319 () Bool)

(declare-fun inv!810 (BalanceConc!174) Bool)

(assert (=> b!39741 (= e!20321 (and e!20319 (inv!810 (totalInput!1505 cacheFurthestNullable!45)) e!20302))))

(declare-fun b!39742 () Bool)

(declare-fun res!28916 () Bool)

(assert (=> b!39742 (=> (not res!28916) (not e!20298))))

(declare-fun valid!160 (CacheUp!106) Bool)

(assert (=> b!39742 (= res!28916 (valid!160 cacheUp!320))))

(declare-fun b!39743 () Bool)

(assert (=> b!39743 (= e!20301 e!20292)))

(declare-fun res!28920 () Bool)

(assert (=> b!39743 (=> (not res!28920) (not e!20292))))

(assert (=> b!39743 (= res!28920 (= lt!3839 (list!132 (_1!392 lt!3841))))))

(assert (=> b!39743 (= lt!3841 (lex!14 Lexer!36 lt!3850 lt!3852))))

(declare-fun e!20315 () Bool)

(assert (=> b!39744 (= e!20319 (and e!20315 tp!27637))))

(declare-fun b!39745 () Bool)

(declare-fun e!20308 () Bool)

(declare-fun tp!27641 () Bool)

(assert (=> b!39745 (= e!20308 (and tp!27641 mapRes!572))))

(declare-fun condMapEmpty!572 () Bool)

(declare-fun mapDefault!573 () List!522)

(assert (=> b!39745 (= condMapEmpty!572 (= (arr!278 (_values!439 (v!12295 (underlying!517 (v!12296 (underlying!518 (cache!642 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!522)) mapDefault!573)))))

(declare-fun mapIsEmpty!573 () Bool)

(assert (=> mapIsEmpty!573 mapRes!571))

(declare-fun e!20293 () Bool)

(declare-fun tp!27657 () Bool)

(declare-fun tp!27638 () Bool)

(declare-fun array_inv!180 (array!542) Bool)

(assert (=> b!39746 (= e!20293 (and tp!27645 tp!27657 tp!27638 (array_inv!177 (_keys!452 (v!12295 (underlying!517 (v!12296 (underlying!518 (cache!642 cacheDown!333))))))) (array_inv!180 (_values!439 (v!12295 (underlying!517 (v!12296 (underlying!518 (cache!642 cacheDown!333))))))) e!20308))))

(declare-fun b!39747 () Bool)

(declare-fun tp!27649 () Bool)

(assert (=> b!39747 (= e!20302 (and (inv!809 (c!15785 (totalInput!1505 cacheFurthestNullable!45))) tp!27649))))

(declare-fun b!39748 () Bool)

(declare-fun e!20303 () Bool)

(assert (=> b!39748 (= e!20306 e!20303)))

(declare-fun b!39749 () Bool)

(declare-fun res!28924 () Bool)

(assert (=> b!39749 (=> (not res!28924) (not e!20292))))

(declare-fun lexThenRulesProduceEachTokenIndividually!6 (LexerInterface!38 List!527 List!523) Bool)

(assert (=> b!39749 (= res!28924 (lexThenRulesProduceEachTokenIndividually!6 Lexer!36 lt!3850 lt!3846))))

(declare-fun b!39750 () Bool)

(declare-fun e!20310 () Bool)

(assert (=> b!39750 (= e!20304 e!20310)))

(declare-fun b!39751 () Bool)

(assert (=> b!39751 (= e!20303 e!20314)))

(declare-fun b!39752 () Bool)

(assert (=> b!39752 (= e!20310 e!20293)))

(declare-fun res!28922 () Bool)

(assert (=> start!2200 (=> (not res!28922) (not e!20298))))

(declare-fun isEmpty!107 (List!527) Bool)

(assert (=> start!2200 (= res!28922 (not (isEmpty!107 lt!3850)))))

(declare-datatypes ((JsonLexer!38 0))(
  ( (JsonLexer!39) )
))
(declare-fun rules!109 (JsonLexer!38) List!527)

(assert (=> start!2200 (= lt!3850 (rules!109 JsonLexer!39))))

(assert (=> start!2200 e!20298))

(declare-fun inv!811 (CacheDown!108) Bool)

(assert (=> start!2200 (and (inv!811 cacheDown!333) e!20299)))

(assert (=> start!2200 (and (inv!810 input!525) e!20316)))

(declare-fun inv!812 (CacheFurthestNullable!56) Bool)

(assert (=> start!2200 (and (inv!812 cacheFurthestNullable!45) e!20321)))

(declare-fun inv!813 (CacheUp!106) Bool)

(assert (=> start!2200 (and (inv!813 cacheUp!320) e!20300)))

(assert (=> b!39753 (= e!20312 (and e!20317 tp!27639))))

(declare-fun b!39754 () Bool)

(declare-fun tp!27652 () Bool)

(assert (=> b!39754 (= e!20311 (and tp!27652 mapRes!571))))

(declare-fun condMapEmpty!571 () Bool)

(declare-fun mapDefault!571 () List!526)

(assert (=> b!39754 (= condMapEmpty!571 (= (arr!281 (_values!441 (v!12299 (underlying!521 (v!12300 (underlying!522 (cache!644 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!526)) mapDefault!571)))))

(declare-fun b!39755 () Bool)

(declare-fun lt!3849 () MutLongMap!163)

(assert (=> b!39755 (= e!20315 (and e!20320 ((_ is LongMap!163) lt!3849)))))

(assert (=> b!39755 (= lt!3849 (v!12300 (underlying!522 (cache!644 cacheFurthestNullable!45))))))

(assert (= (and start!2200 res!28922) b!39739))

(assert (= (and b!39739 res!28917) b!39742))

(assert (= (and b!39742 res!28916) b!39723))

(assert (= (and b!39723 res!28914) b!39738))

(assert (= (and b!39738 res!28923) b!39740))

(assert (= (and b!39740 res!28918) b!39735))

(assert (= (and b!39735 res!28925) b!39737))

(assert (= (and b!39737 res!28921) b!39726))

(assert (= (and b!39726 res!28915) b!39743))

(assert (= (and b!39743 res!28920) b!39727))

(assert (= (and b!39727 res!28919) b!39749))

(assert (= (and b!39749 res!28924) b!39728))

(assert (= (and b!39745 condMapEmpty!572) mapIsEmpty!572))

(assert (= (and b!39745 (not condMapEmpty!572)) mapNonEmpty!571))

(assert (= b!39746 b!39745))

(assert (= b!39752 b!39746))

(assert (= b!39750 b!39752))

(assert (= (and b!39721 ((_ is LongMap!161) (v!12296 (underlying!518 (cache!642 cacheDown!333))))) b!39750))

(assert (= b!39734 b!39721))

(assert (= (and b!39725 ((_ is HashMap!157) (cache!642 cacheDown!333))) b!39734))

(assert (= start!2200 b!39725))

(assert (= start!2200 b!39722))

(assert (= (and b!39754 condMapEmpty!571) mapIsEmpty!573))

(assert (= (and b!39754 (not condMapEmpty!571)) mapNonEmpty!573))

(assert (= b!39731 b!39754))

(assert (= b!39732 b!39731))

(assert (= b!39736 b!39732))

(assert (= (and b!39755 ((_ is LongMap!163) (v!12300 (underlying!522 (cache!644 cacheFurthestNullable!45))))) b!39736))

(assert (= b!39744 b!39755))

(assert (= (and b!39741 ((_ is HashMap!159) (cache!644 cacheFurthestNullable!45))) b!39744))

(assert (= b!39741 b!39747))

(assert (= start!2200 b!39741))

(assert (= (and b!39724 condMapEmpty!573) mapIsEmpty!571))

(assert (= (and b!39724 (not condMapEmpty!573)) mapNonEmpty!572))

(assert (= b!39729 b!39724))

(assert (= b!39751 b!39729))

(assert (= b!39748 b!39751))

(assert (= (and b!39733 ((_ is LongMap!162) (v!12298 (underlying!520 (cache!643 cacheUp!320))))) b!39748))

(assert (= b!39753 b!39733))

(assert (= (and b!39730 ((_ is HashMap!158) (cache!643 cacheUp!320))) b!39753))

(assert (= start!2200 b!39730))

(declare-fun m!13392 () Bool)

(assert (=> b!39739 m!13392))

(declare-fun m!13394 () Bool)

(assert (=> b!39723 m!13394))

(declare-fun m!13396 () Bool)

(assert (=> b!39735 m!13396))

(declare-fun m!13398 () Bool)

(assert (=> b!39735 m!13398))

(declare-fun m!13400 () Bool)

(assert (=> b!39735 m!13400))

(declare-fun m!13402 () Bool)

(assert (=> b!39735 m!13402))

(declare-fun m!13404 () Bool)

(assert (=> b!39735 m!13404))

(declare-fun m!13406 () Bool)

(assert (=> b!39735 m!13406))

(declare-fun m!13408 () Bool)

(assert (=> b!39749 m!13408))

(declare-fun m!13410 () Bool)

(assert (=> b!39743 m!13410))

(declare-fun m!13412 () Bool)

(assert (=> b!39743 m!13412))

(declare-fun m!13414 () Bool)

(assert (=> b!39741 m!13414))

(declare-fun m!13416 () Bool)

(assert (=> start!2200 m!13416))

(declare-fun m!13418 () Bool)

(assert (=> start!2200 m!13418))

(declare-fun m!13420 () Bool)

(assert (=> start!2200 m!13420))

(declare-fun m!13422 () Bool)

(assert (=> start!2200 m!13422))

(declare-fun m!13424 () Bool)

(assert (=> start!2200 m!13424))

(declare-fun m!13426 () Bool)

(assert (=> start!2200 m!13426))

(declare-fun m!13428 () Bool)

(assert (=> b!39731 m!13428))

(declare-fun m!13430 () Bool)

(assert (=> b!39731 m!13430))

(declare-fun m!13432 () Bool)

(assert (=> b!39737 m!13432))

(declare-fun m!13434 () Bool)

(assert (=> b!39737 m!13434))

(declare-fun m!13436 () Bool)

(assert (=> mapNonEmpty!572 m!13436))

(declare-fun m!13438 () Bool)

(assert (=> b!39726 m!13438))

(declare-fun m!13440 () Bool)

(assert (=> b!39726 m!13440))

(declare-fun m!13442 () Bool)

(assert (=> b!39726 m!13442))

(declare-fun m!13444 () Bool)

(assert (=> b!39738 m!13444))

(declare-fun m!13446 () Bool)

(assert (=> b!39746 m!13446))

(declare-fun m!13448 () Bool)

(assert (=> b!39746 m!13448))

(declare-fun m!13450 () Bool)

(assert (=> mapNonEmpty!573 m!13450))

(declare-fun m!13452 () Bool)

(assert (=> b!39729 m!13452))

(declare-fun m!13454 () Bool)

(assert (=> b!39729 m!13454))

(declare-fun m!13456 () Bool)

(assert (=> b!39727 m!13456))

(declare-fun m!13458 () Bool)

(assert (=> b!39747 m!13458))

(declare-fun m!13460 () Bool)

(assert (=> b!39742 m!13460))

(declare-fun m!13462 () Bool)

(assert (=> mapNonEmpty!571 m!13462))

(declare-fun m!13464 () Bool)

(assert (=> b!39722 m!13464))

(check-sat (not b!39738) (not b!39741) (not b!39722) (not mapNonEmpty!572) (not b!39743) (not b!39735) (not b!39724) b_and!829 b_and!831 (not b_next!793) b_and!825 (not b_next!799) (not b_next!789) (not b_next!795) (not start!2200) (not b!39729) (not b!39731) (not b!39745) (not b!39749) (not b!39723) (not b!39754) (not b!39747) (not b!39727) (not b!39737) b_and!827 (not b!39726) (not mapNonEmpty!571) (not b!39739) (not b_next!791) (not mapNonEmpty!573) (not b_next!797) b_and!823 (not b!39742) b_and!833 (not b!39746))
(check-sat b_and!827 (not b_next!791) (not b_next!797) b_and!829 b_and!823 b_and!833 b_and!831 (not b_next!793) b_and!825 (not b_next!799) (not b_next!789) (not b_next!795))
