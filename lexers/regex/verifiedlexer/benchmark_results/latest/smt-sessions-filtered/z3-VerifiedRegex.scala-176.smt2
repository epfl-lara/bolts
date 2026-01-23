; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2184 () Bool)

(assert start!2184)

(declare-fun b!38921 () Bool)

(declare-fun b_free!693 () Bool)

(declare-fun b_next!693 () Bool)

(assert (=> b!38921 (= b_free!693 (not b_next!693))))

(declare-fun tp!27102 () Bool)

(declare-fun b_and!727 () Bool)

(assert (=> b!38921 (= tp!27102 b_and!727)))

(declare-fun b!38929 () Bool)

(declare-fun b_free!695 () Bool)

(declare-fun b_next!695 () Bool)

(assert (=> b!38929 (= b_free!695 (not b_next!695))))

(declare-fun tp!27093 () Bool)

(declare-fun b_and!729 () Bool)

(assert (=> b!38929 (= tp!27093 b_and!729)))

(declare-fun b!38934 () Bool)

(declare-fun b_free!697 () Bool)

(declare-fun b_next!697 () Bool)

(assert (=> b!38934 (= b_free!697 (not b_next!697))))

(declare-fun tp!27101 () Bool)

(declare-fun b_and!731 () Bool)

(assert (=> b!38934 (= tp!27101 b_and!731)))

(declare-fun b!38947 () Bool)

(declare-fun b_free!699 () Bool)

(declare-fun b_next!699 () Bool)

(assert (=> b!38947 (= b_free!699 (not b_next!699))))

(declare-fun tp!27090 () Bool)

(declare-fun b_and!733 () Bool)

(assert (=> b!38947 (= tp!27090 b_and!733)))

(declare-fun b!38933 () Bool)

(declare-fun b_free!701 () Bool)

(declare-fun b_next!701 () Bool)

(assert (=> b!38933 (= b_free!701 (not b_next!701))))

(declare-fun tp!27107 () Bool)

(declare-fun b_and!735 () Bool)

(assert (=> b!38933 (= tp!27107 b_and!735)))

(declare-fun b!38922 () Bool)

(declare-fun b_free!703 () Bool)

(declare-fun b_next!703 () Bool)

(assert (=> b!38922 (= b_free!703 (not b_next!703))))

(declare-fun tp!27089 () Bool)

(declare-fun b_and!737 () Bool)

(assert (=> b!38922 (= tp!27089 b_and!737)))

(declare-fun mapIsEmpty!499 () Bool)

(declare-fun mapRes!499 () Bool)

(assert (=> mapIsEmpty!499 mapRes!499))

(declare-fun tp!27105 () Bool)

(declare-fun e!19579 () Bool)

(declare-fun e!19585 () Bool)

(declare-datatypes ((Hashable!135 0))(
  ( (HashableExt!134 (__x!847 Int)) )
))
(declare-datatypes ((Regex!197 0))(
  ( (ElementMatch!197 (c!15753 (_ BitVec 16))) (Concat!321 (regOne!906 Regex!197) (regTwo!906 Regex!197)) (EmptyExpr!197) (Star!197 (reg!526 Regex!197)) (EmptyLang!197) (Union!197 (regOne!907 Regex!197) (regTwo!907 Regex!197)) )
))
(declare-datatypes ((List!469 0))(
  ( (Nil!467) (Cons!467 (h!5863 Regex!197) (t!15455 List!469)) )
))
(declare-datatypes ((Context!110 0))(
  ( (Context!111 (exprs!555 List!469)) )
))
(declare-datatypes ((tuple2!504 0))(
  ( (tuple2!505 (_1!330 Context!110) (_2!330 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!506 0))(
  ( (tuple2!507 (_1!331 tuple2!504) (_2!331 (InoxSet Context!110))) )
))
(declare-datatypes ((List!470 0))(
  ( (Nil!468) (Cons!468 (h!5864 tuple2!506) (t!15456 List!470)) )
))
(declare-datatypes ((array!482 0))(
  ( (array!483 (arr!248 (Array (_ BitVec 32) List!470)) (size!509 (_ BitVec 32))) )
))
(declare-datatypes ((array!484 0))(
  ( (array!485 (arr!249 (Array (_ BitVec 32) (_ BitVec 64))) (size!510 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!278 0))(
  ( (LongMapFixedSize!279 (defaultEntry!477 Int) (mask!839 (_ BitVec 32)) (extraKeys!385 (_ BitVec 32)) (zeroValue!395 List!470) (minValue!395 List!470) (_size!410 (_ BitVec 32)) (_keys!430 array!484) (_values!417 array!482) (_vacant!199 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!545 0))(
  ( (Cell!546 (v!12251 LongMapFixedSize!278)) )
))
(declare-datatypes ((MutLongMap!139 0))(
  ( (LongMap!139 (underlying!473 Cell!545)) (MutLongMapExt!138 (__x!848 Int)) )
))
(declare-datatypes ((Cell!547 0))(
  ( (Cell!548 (v!12252 MutLongMap!139)) )
))
(declare-datatypes ((MutableMap!135 0))(
  ( (MutableMapExt!134 (__x!849 Int)) (HashMap!135 (underlying!474 Cell!547) (hashF!2003 Hashable!135) (_size!411 (_ BitVec 32)) (defaultValue!284 Int)) )
))
(declare-datatypes ((CacheUp!92 0))(
  ( (CacheUp!93 (cache!620 MutableMap!135)) )
))
(declare-fun cacheUp!320 () CacheUp!92)

(declare-fun tp!27094 () Bool)

(declare-fun array_inv!156 (array!484) Bool)

(declare-fun array_inv!157 (array!482) Bool)

(assert (=> b!38921 (= e!19579 (and tp!27102 tp!27094 tp!27105 (array_inv!156 (_keys!430 (v!12251 (underlying!473 (v!12252 (underlying!474 (cache!620 cacheUp!320))))))) (array_inv!157 (_values!417 (v!12251 (underlying!473 (v!12252 (underlying!474 (cache!620 cacheUp!320))))))) e!19585))))

(declare-fun b!38923 () Bool)

(declare-fun e!19583 () Bool)

(declare-fun e!19588 () Bool)

(assert (=> b!38923 (= e!19583 e!19588)))

(declare-fun b!38924 () Bool)

(declare-fun e!19569 () Bool)

(declare-fun e!19571 () Bool)

(assert (=> b!38924 (= e!19569 e!19571)))

(declare-fun e!19570 () Bool)

(declare-fun b!38925 () Bool)

(declare-fun e!19593 () Bool)

(declare-fun e!19581 () Bool)

(declare-datatypes ((tuple3!140 0))(
  ( (tuple3!141 (_1!332 (InoxSet Context!110)) (_2!332 Int) (_3!78 Int)) )
))
(declare-datatypes ((tuple2!508 0))(
  ( (tuple2!509 (_1!333 tuple3!140) (_2!333 Int)) )
))
(declare-datatypes ((List!471 0))(
  ( (Nil!469) (Cons!469 (h!5865 tuple2!508) (t!15457 List!471)) )
))
(declare-datatypes ((List!472 0))(
  ( (Nil!470) (Cons!470 (h!5866 (_ BitVec 16)) (t!15458 List!472)) )
))
(declare-datatypes ((IArray!145 0))(
  ( (IArray!146 (innerList!130 List!472)) )
))
(declare-datatypes ((Conc!72 0))(
  ( (Node!72 (left!452 Conc!72) (right!782 Conc!72) (csize!374 Int) (cheight!283 Int)) (Leaf!249 (xs!2651 IArray!145) (csize!375 Int)) (Empty!72) )
))
(declare-datatypes ((BalanceConc!144 0))(
  ( (BalanceConc!145 (c!15754 Conc!72)) )
))
(declare-datatypes ((array!486 0))(
  ( (array!487 (arr!250 (Array (_ BitVec 32) List!471)) (size!511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!280 0))(
  ( (LongMapFixedSize!281 (defaultEntry!478 Int) (mask!840 (_ BitVec 32)) (extraKeys!386 (_ BitVec 32)) (zeroValue!396 List!471) (minValue!396 List!471) (_size!412 (_ BitVec 32)) (_keys!431 array!484) (_values!418 array!486) (_vacant!200 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!136 0))(
  ( (HashableExt!135 (__x!850 Int)) )
))
(declare-datatypes ((Cell!549 0))(
  ( (Cell!550 (v!12253 LongMapFixedSize!280)) )
))
(declare-datatypes ((MutLongMap!140 0))(
  ( (LongMap!140 (underlying!475 Cell!549)) (MutLongMapExt!139 (__x!851 Int)) )
))
(declare-datatypes ((Cell!551 0))(
  ( (Cell!552 (v!12254 MutLongMap!140)) )
))
(declare-datatypes ((MutableMap!136 0))(
  ( (MutableMapExt!135 (__x!852 Int)) (HashMap!136 (underlying!476 Cell!551) (hashF!2004 Hashable!136) (_size!413 (_ BitVec 32)) (defaultValue!285 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!40 0))(
  ( (CacheFurthestNullable!41 (cache!621 MutableMap!136) (totalInput!1497 BalanceConc!144)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!40)

(declare-fun inv!773 (BalanceConc!144) Bool)

(assert (=> b!38925 (= e!19570 (and e!19581 (inv!773 (totalInput!1497 cacheFurthestNullable!45)) e!19593))))

(declare-fun b!38926 () Bool)

(declare-fun tp!27088 () Bool)

(declare-fun inv!774 (Conc!72) Bool)

(assert (=> b!38926 (= e!19593 (and (inv!774 (c!15754 (totalInput!1497 cacheFurthestNullable!45))) tp!27088))))

(declare-fun b!38927 () Bool)

(declare-fun res!28669 () Bool)

(declare-fun e!19576 () Bool)

(assert (=> b!38927 (=> (not res!28669) (not e!19576))))

(declare-fun valid!144 (CacheFurthestNullable!40) Bool)

(assert (=> b!38927 (= res!28669 (valid!144 cacheFurthestNullable!45))))

(declare-fun b!38928 () Bool)

(declare-fun e!19574 () Bool)

(declare-fun e!19582 () Bool)

(declare-datatypes ((tuple3!142 0))(
  ( (tuple3!143 (_1!334 Regex!197) (_2!334 Context!110) (_3!79 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!510 0))(
  ( (tuple2!511 (_1!335 tuple3!142) (_2!335 (InoxSet Context!110))) )
))
(declare-datatypes ((List!473 0))(
  ( (Nil!471) (Cons!471 (h!5867 tuple2!510) (t!15459 List!473)) )
))
(declare-datatypes ((array!488 0))(
  ( (array!489 (arr!251 (Array (_ BitVec 32) List!473)) (size!512 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!282 0))(
  ( (LongMapFixedSize!283 (defaultEntry!479 Int) (mask!841 (_ BitVec 32)) (extraKeys!387 (_ BitVec 32)) (zeroValue!397 List!473) (minValue!397 List!473) (_size!414 (_ BitVec 32)) (_keys!432 array!484) (_values!419 array!488) (_vacant!201 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!553 0))(
  ( (Cell!554 (v!12255 LongMapFixedSize!282)) )
))
(declare-datatypes ((MutLongMap!141 0))(
  ( (LongMap!141 (underlying!477 Cell!553)) (MutLongMapExt!140 (__x!853 Int)) )
))
(declare-fun lt!3517 () MutLongMap!141)

(get-info :version)

(assert (=> b!38928 (= e!19574 (and e!19582 ((_ is LongMap!141) lt!3517)))))

(declare-datatypes ((Cell!555 0))(
  ( (Cell!556 (v!12256 MutLongMap!141)) )
))
(declare-datatypes ((Hashable!137 0))(
  ( (HashableExt!136 (__x!854 Int)) )
))
(declare-datatypes ((MutableMap!137 0))(
  ( (MutableMapExt!136 (__x!855 Int)) (HashMap!137 (underlying!478 Cell!555) (hashF!2005 Hashable!137) (_size!415 (_ BitVec 32)) (defaultValue!286 Int)) )
))
(declare-datatypes ((CacheDown!94 0))(
  ( (CacheDown!95 (cache!622 MutableMap!137)) )
))
(declare-fun cacheDown!333 () CacheDown!94)

(assert (=> b!38928 (= lt!3517 (v!12256 (underlying!478 (cache!622 cacheDown!333))))))

(declare-fun mapNonEmpty!499 () Bool)

(declare-fun mapRes!500 () Bool)

(declare-fun tp!27092 () Bool)

(declare-fun tp!27104 () Bool)

(assert (=> mapNonEmpty!499 (= mapRes!500 (and tp!27092 tp!27104))))

(declare-fun mapKey!499 () (_ BitVec 32))

(declare-fun mapValue!499 () List!470)

(declare-fun mapRest!501 () (Array (_ BitVec 32) List!470))

(assert (=> mapNonEmpty!499 (= (arr!248 (_values!417 (v!12251 (underlying!473 (v!12252 (underlying!474 (cache!620 cacheUp!320))))))) (store mapRest!501 mapKey!499 mapValue!499))))

(declare-fun mapNonEmpty!500 () Bool)

(declare-fun tp!27106 () Bool)

(declare-fun tp!27097 () Bool)

(assert (=> mapNonEmpty!500 (= mapRes!499 (and tp!27106 tp!27097))))

(declare-fun mapValue!500 () List!471)

(declare-fun mapKey!500 () (_ BitVec 32))

(declare-fun mapRest!499 () (Array (_ BitVec 32) List!471))

(assert (=> mapNonEmpty!500 (= (arr!250 (_values!418 (v!12253 (underlying!475 (v!12254 (underlying!476 (cache!621 cacheFurthestNullable!45))))))) (store mapRest!499 mapKey!500 mapValue!500))))

(declare-fun e!19573 () Bool)

(assert (=> b!38929 (= e!19573 (and e!19574 tp!27093))))

(declare-fun b!38930 () Bool)

(declare-fun res!28667 () Bool)

(assert (=> b!38930 (=> (not res!28667) (not e!19576))))

(declare-fun valid!145 (CacheUp!92) Bool)

(assert (=> b!38930 (= res!28667 (valid!145 cacheUp!320))))

(declare-fun b!38931 () Bool)

(assert (=> b!38931 (= e!19582 e!19569)))

(declare-fun b!38932 () Bool)

(declare-fun e!19589 () Bool)

(declare-fun e!19591 () Bool)

(assert (=> b!38932 (= e!19589 e!19591)))

(declare-fun e!19594 () Bool)

(assert (=> b!38933 (= e!19591 (and e!19594 tp!27107))))

(declare-fun tp!27086 () Bool)

(declare-fun tp!27085 () Bool)

(declare-fun e!19568 () Bool)

(declare-fun array_inv!158 (array!488) Bool)

(assert (=> b!38934 (= e!19571 (and tp!27101 tp!27085 tp!27086 (array_inv!156 (_keys!432 (v!12255 (underlying!477 (v!12256 (underlying!478 (cache!622 cacheDown!333))))))) (array_inv!158 (_values!419 (v!12255 (underlying!477 (v!12256 (underlying!478 (cache!622 cacheDown!333))))))) e!19568))))

(declare-fun b!38935 () Bool)

(declare-fun e!19577 () Bool)

(assert (=> b!38935 (= e!19577 e!19573)))

(declare-fun b!38936 () Bool)

(declare-fun res!28671 () Bool)

(assert (=> b!38936 (=> (not res!28671) (not e!19576))))

(declare-fun valid!146 (CacheDown!94) Bool)

(assert (=> b!38936 (= res!28671 (valid!146 cacheDown!333))))

(declare-fun b!38937 () Bool)

(declare-fun e!19584 () Bool)

(declare-fun e!19590 () Bool)

(declare-fun lt!3515 () MutLongMap!140)

(assert (=> b!38937 (= e!19584 (and e!19590 ((_ is LongMap!140) lt!3515)))))

(assert (=> b!38937 (= lt!3515 (v!12254 (underlying!476 (cache!621 cacheFurthestNullable!45))))))

(declare-fun b!38938 () Bool)

(declare-fun tp!27096 () Bool)

(assert (=> b!38938 (= e!19585 (and tp!27096 mapRes!500))))

(declare-fun condMapEmpty!500 () Bool)

(declare-fun mapDefault!500 () List!470)

(assert (=> b!38938 (= condMapEmpty!500 (= (arr!248 (_values!417 (v!12251 (underlying!473 (v!12252 (underlying!474 (cache!620 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!470)) mapDefault!500)))))

(declare-fun b!38939 () Bool)

(declare-fun e!19595 () Bool)

(assert (=> b!38939 (= e!19595 false)))

(declare-fun lt!3509 () List!472)

(declare-fun input!525 () BalanceConc!144)

(declare-fun list!118 (BalanceConc!144) List!472)

(declare-fun seqFromList!6 (List!472) BalanceConc!144)

(assert (=> b!38939 (= lt!3509 (list!118 (seqFromList!6 (list!118 input!525))))))

(declare-fun b!38940 () Bool)

(declare-fun e!19587 () Bool)

(declare-fun e!19586 () Bool)

(assert (=> b!38940 (= e!19587 e!19586)))

(declare-fun b!38941 () Bool)

(declare-fun tp!27091 () Bool)

(declare-fun mapRes!501 () Bool)

(assert (=> b!38941 (= e!19568 (and tp!27091 mapRes!501))))

(declare-fun condMapEmpty!499 () Bool)

(declare-fun mapDefault!499 () List!473)

(assert (=> b!38941 (= condMapEmpty!499 (= (arr!251 (_values!419 (v!12255 (underlying!477 (v!12256 (underlying!478 (cache!622 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!473)) mapDefault!499)))))

(declare-fun e!19580 () Bool)

(declare-fun tp!27099 () Bool)

(declare-fun tp!27087 () Bool)

(declare-fun array_inv!159 (array!486) Bool)

(assert (=> b!38922 (= e!19588 (and tp!27089 tp!27087 tp!27099 (array_inv!156 (_keys!431 (v!12253 (underlying!475 (v!12254 (underlying!476 (cache!621 cacheFurthestNullable!45))))))) (array_inv!159 (_values!418 (v!12253 (underlying!475 (v!12254 (underlying!476 (cache!621 cacheFurthestNullable!45))))))) e!19580))))

(declare-fun res!28668 () Bool)

(assert (=> start!2184 (=> (not res!28668) (not e!19576))))

(declare-datatypes ((TokenValue!124 0))(
  ( (FloatLiteralValue!248 (text!1313 List!472)) (TokenValueExt!123 (__x!856 Int)) (Broken!620 (value!6601 List!472)) (Object!125) (End!124) (Def!124) (Underscore!124) (Match!124) (Else!124) (Error!124) (Case!124) (If!124) (Extends!124) (Abstract!124) (Class!124) (Val!124) (DelimiterValue!248 (del!184 List!472)) (KeywordValue!130 (value!6602 List!472)) (CommentValue!248 (value!6603 List!472)) (WhitespaceValue!248 (value!6604 List!472)) (IndentationValue!124 (value!6605 List!472)) (String!909) (Int32!124) (Broken!621 (value!6606 List!472)) (Boolean!125) (Unit!220) (OperatorValue!127 (op!184 List!472)) (IdentifierValue!248 (value!6607 List!472)) (IdentifierValue!249 (value!6608 List!472)) (WhitespaceValue!249 (value!6609 List!472)) (True!248) (False!248) (Broken!622 (value!6610 List!472)) (Broken!623 (value!6611 List!472)) (True!249) (RightBrace!124) (RightBracket!124) (Colon!124) (Null!124) (Comma!124) (LeftBracket!124) (False!249) (LeftBrace!124) (ImaginaryLiteralValue!124 (text!1314 List!472)) (StringLiteralValue!372 (value!6612 List!472)) (EOFValue!124 (value!6613 List!472)) (IdentValue!124 (value!6614 List!472)) (DelimiterValue!249 (value!6615 List!472)) (DedentValue!124 (value!6616 List!472)) (NewLineValue!124 (value!6617 List!472)) (IntegerValue!372 (value!6618 (_ BitVec 32)) (text!1315 List!472)) (IntegerValue!373 (value!6619 Int) (text!1316 List!472)) (Times!124) (Or!124) (Equal!124) (Minus!124) (Broken!624 (value!6620 List!472)) (And!124) (Div!124) (LessEqual!124) (Mod!124) (Concat!322) (Not!124) (Plus!124) (SpaceValue!124 (value!6621 List!472)) (IntegerValue!374 (value!6622 Int) (text!1317 List!472)) (StringLiteralValue!373 (text!1318 List!472)) (FloatLiteralValue!249 (text!1319 List!472)) (BytesLiteralValue!124 (value!6623 List!472)) (CommentValue!249 (value!6624 List!472)) (StringLiteralValue!374 (value!6625 List!472)) (ErrorTokenValue!124 (msg!185 List!472)) )
))
(declare-datatypes ((String!910 0))(
  ( (String!911 (value!6626 String)) )
))
(declare-datatypes ((TokenValueInjection!72 0))(
  ( (TokenValueInjection!73 (toValue!613 Int) (toChars!472 Int)) )
))
(declare-datatypes ((Rule!68 0))(
  ( (Rule!69 (regex!134 Regex!197) (tag!312 String!910) (isSeparator!134 Bool) (transformation!134 TokenValueInjection!72)) )
))
(declare-datatypes ((List!474 0))(
  ( (Nil!472) (Cons!472 (h!5868 Rule!68) (t!15460 List!474)) )
))
(declare-fun lt!3513 () List!474)

(declare-fun isEmpty!103 (List!474) Bool)

(assert (=> start!2184 (= res!28668 (not (isEmpty!103 lt!3513)))))

(declare-datatypes ((JsonLexer!30 0))(
  ( (JsonLexer!31) )
))
(declare-fun rules!109 (JsonLexer!30) List!474)

(assert (=> start!2184 (= lt!3513 (rules!109 JsonLexer!31))))

(assert (=> start!2184 e!19576))

(declare-fun inv!775 (CacheDown!94) Bool)

(assert (=> start!2184 (and (inv!775 cacheDown!333) e!19577)))

(declare-fun e!19575 () Bool)

(assert (=> start!2184 (and (inv!773 input!525) e!19575)))

(declare-fun inv!776 (CacheFurthestNullable!40) Bool)

(assert (=> start!2184 (and (inv!776 cacheFurthestNullable!45) e!19570)))

(declare-fun inv!777 (CacheUp!92) Bool)

(assert (=> start!2184 (and (inv!777 cacheUp!320) e!19589)))

(declare-fun b!38942 () Bool)

(declare-fun res!28672 () Bool)

(assert (=> b!38942 (=> (not res!28672) (not e!19576))))

(assert (=> b!38942 (= res!28672 (= (totalInput!1497 cacheFurthestNullable!45) input!525))))

(declare-fun mapIsEmpty!500 () Bool)

(assert (=> mapIsEmpty!500 mapRes!500))

(declare-fun b!38943 () Bool)

(assert (=> b!38943 (= e!19586 e!19579)))

(declare-fun b!38944 () Bool)

(declare-fun res!28666 () Bool)

(assert (=> b!38944 (=> (not res!28666) (not e!19576))))

(declare-datatypes ((LexerInterface!31 0))(
  ( (LexerInterfaceExt!28 (__x!857 Int)) (Lexer!29) )
))
(declare-fun rulesInvariant!24 (LexerInterface!31 List!474) Bool)

(assert (=> b!38944 (= res!28666 (rulesInvariant!24 Lexer!29 lt!3513))))

(declare-fun b!38945 () Bool)

(declare-fun tp!27103 () Bool)

(assert (=> b!38945 (= e!19580 (and tp!27103 mapRes!499))))

(declare-fun condMapEmpty!501 () Bool)

(declare-fun mapDefault!501 () List!471)

(assert (=> b!38945 (= condMapEmpty!501 (= (arr!250 (_values!418 (v!12253 (underlying!475 (v!12254 (underlying!476 (cache!621 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!471)) mapDefault!501)))))

(declare-fun b!38946 () Bool)

(declare-fun tp!27095 () Bool)

(assert (=> b!38946 (= e!19575 (and (inv!774 (c!15754 input!525)) tp!27095))))

(assert (=> b!38947 (= e!19581 (and e!19584 tp!27090))))

(declare-fun b!38948 () Bool)

(declare-fun res!28670 () Bool)

(assert (=> b!38948 (=> (not res!28670) (not e!19595))))

(declare-datatypes ((Token!40 0))(
  ( (Token!41 (value!6627 TokenValue!124) (rule!613 Rule!68) (size!513 Int) (originalCharacters!191 List!472)) )
))
(declare-datatypes ((List!475 0))(
  ( (Nil!473) (Cons!473 (h!5869 Token!40) (t!15461 List!475)) )
))
(declare-datatypes ((IArray!147 0))(
  ( (IArray!148 (innerList!131 List!475)) )
))
(declare-datatypes ((Conc!73 0))(
  ( (Node!73 (left!453 Conc!73) (right!783 Conc!73) (csize!376 Int) (cheight!284 Int)) (Leaf!250 (xs!2652 IArray!147) (csize!377 Int)) (Empty!73) )
))
(declare-datatypes ((BalanceConc!146 0))(
  ( (BalanceConc!147 (c!15755 Conc!73)) )
))
(declare-datatypes ((tuple2!512 0))(
  ( (tuple2!513 (_1!336 BalanceConc!146) (_2!336 BalanceConc!144)) )
))
(declare-datatypes ((tuple4!16 0))(
  ( (tuple4!17 (_1!337 tuple2!512) (_2!337 CacheUp!92) (_3!80 CacheDown!94) (_4!8 CacheFurthestNullable!40)) )
))
(declare-fun lt!3510 () tuple4!16)

(declare-fun lt!3516 () tuple2!512)

(assert (=> b!38948 (= res!28670 (= (list!118 (_2!336 (_1!337 lt!3510))) (list!118 (_2!336 lt!3516))))))

(declare-fun b!38949 () Bool)

(assert (=> b!38949 (= e!19576 e!19595)))

(declare-fun res!28673 () Bool)

(assert (=> b!38949 (=> (not res!28673) (not e!19595))))

(declare-fun list!119 (BalanceConc!146) List!475)

(assert (=> b!38949 (= res!28673 (= (list!119 (_1!336 (_1!337 lt!3510))) (list!119 (_1!336 lt!3516))))))

(declare-fun lex!8 (LexerInterface!31 List!474 BalanceConc!144) tuple2!512)

(assert (=> b!38949 (= lt!3516 (lex!8 Lexer!29 lt!3513 input!525))))

(declare-datatypes ((Unit!221 0))(
  ( (Unit!222) )
))
(declare-fun lt!3511 () Unit!221)

(declare-fun lemmaInvariant!11 (CacheDown!94) Unit!221)

(assert (=> b!38949 (= lt!3511 (lemmaInvariant!11 (_3!80 lt!3510)))))

(declare-fun lt!3514 () Unit!221)

(declare-fun lemmaInvariant!12 (CacheUp!92) Unit!221)

(assert (=> b!38949 (= lt!3514 (lemmaInvariant!12 (_2!337 lt!3510)))))

(declare-fun lexMem!4 (LexerInterface!31 List!474 BalanceConc!144 CacheUp!92 CacheDown!94 CacheFurthestNullable!40) tuple4!16)

(assert (=> b!38949 (= lt!3510 (lexMem!4 Lexer!29 lt!3513 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!38950 () Bool)

(declare-fun lt!3512 () MutLongMap!139)

(assert (=> b!38950 (= e!19594 (and e!19587 ((_ is LongMap!139) lt!3512)))))

(assert (=> b!38950 (= lt!3512 (v!12252 (underlying!474 (cache!620 cacheUp!320))))))

(declare-fun mapIsEmpty!501 () Bool)

(assert (=> mapIsEmpty!501 mapRes!501))

(declare-fun b!38951 () Bool)

(assert (=> b!38951 (= e!19590 e!19583)))

(declare-fun mapNonEmpty!501 () Bool)

(declare-fun tp!27100 () Bool)

(declare-fun tp!27098 () Bool)

(assert (=> mapNonEmpty!501 (= mapRes!501 (and tp!27100 tp!27098))))

(declare-fun mapRest!500 () (Array (_ BitVec 32) List!473))

(declare-fun mapValue!501 () List!473)

(declare-fun mapKey!501 () (_ BitVec 32))

(assert (=> mapNonEmpty!501 (= (arr!251 (_values!419 (v!12255 (underlying!477 (v!12256 (underlying!478 (cache!622 cacheDown!333))))))) (store mapRest!500 mapKey!501 mapValue!501))))

(assert (= (and start!2184 res!28668) b!38944))

(assert (= (and b!38944 res!28666) b!38930))

(assert (= (and b!38930 res!28667) b!38936))

(assert (= (and b!38936 res!28671) b!38927))

(assert (= (and b!38927 res!28669) b!38942))

(assert (= (and b!38942 res!28672) b!38949))

(assert (= (and b!38949 res!28673) b!38948))

(assert (= (and b!38948 res!28670) b!38939))

(assert (= (and b!38941 condMapEmpty!499) mapIsEmpty!501))

(assert (= (and b!38941 (not condMapEmpty!499)) mapNonEmpty!501))

(assert (= b!38934 b!38941))

(assert (= b!38924 b!38934))

(assert (= b!38931 b!38924))

(assert (= (and b!38928 ((_ is LongMap!141) (v!12256 (underlying!478 (cache!622 cacheDown!333))))) b!38931))

(assert (= b!38929 b!38928))

(assert (= (and b!38935 ((_ is HashMap!137) (cache!622 cacheDown!333))) b!38929))

(assert (= start!2184 b!38935))

(assert (= start!2184 b!38946))

(assert (= (and b!38945 condMapEmpty!501) mapIsEmpty!499))

(assert (= (and b!38945 (not condMapEmpty!501)) mapNonEmpty!500))

(assert (= b!38922 b!38945))

(assert (= b!38923 b!38922))

(assert (= b!38951 b!38923))

(assert (= (and b!38937 ((_ is LongMap!140) (v!12254 (underlying!476 (cache!621 cacheFurthestNullable!45))))) b!38951))

(assert (= b!38947 b!38937))

(assert (= (and b!38925 ((_ is HashMap!136) (cache!621 cacheFurthestNullable!45))) b!38947))

(assert (= b!38925 b!38926))

(assert (= start!2184 b!38925))

(assert (= (and b!38938 condMapEmpty!500) mapIsEmpty!500))

(assert (= (and b!38938 (not condMapEmpty!500)) mapNonEmpty!499))

(assert (= b!38921 b!38938))

(assert (= b!38943 b!38921))

(assert (= b!38940 b!38943))

(assert (= (and b!38950 ((_ is LongMap!139) (v!12252 (underlying!474 (cache!620 cacheUp!320))))) b!38940))

(assert (= b!38933 b!38950))

(assert (= (and b!38932 ((_ is HashMap!135) (cache!620 cacheUp!320))) b!38933))

(assert (= start!2184 b!38932))

(declare-fun m!12820 () Bool)

(assert (=> b!38936 m!12820))

(declare-fun m!12822 () Bool)

(assert (=> b!38926 m!12822))

(declare-fun m!12824 () Bool)

(assert (=> b!38939 m!12824))

(assert (=> b!38939 m!12824))

(declare-fun m!12826 () Bool)

(assert (=> b!38939 m!12826))

(assert (=> b!38939 m!12826))

(declare-fun m!12828 () Bool)

(assert (=> b!38939 m!12828))

(declare-fun m!12830 () Bool)

(assert (=> b!38930 m!12830))

(declare-fun m!12832 () Bool)

(assert (=> b!38922 m!12832))

(declare-fun m!12834 () Bool)

(assert (=> b!38922 m!12834))

(declare-fun m!12836 () Bool)

(assert (=> b!38949 m!12836))

(declare-fun m!12838 () Bool)

(assert (=> b!38949 m!12838))

(declare-fun m!12840 () Bool)

(assert (=> b!38949 m!12840))

(declare-fun m!12842 () Bool)

(assert (=> b!38949 m!12842))

(declare-fun m!12844 () Bool)

(assert (=> b!38949 m!12844))

(declare-fun m!12846 () Bool)

(assert (=> b!38949 m!12846))

(declare-fun m!12848 () Bool)

(assert (=> b!38927 m!12848))

(declare-fun m!12850 () Bool)

(assert (=> mapNonEmpty!500 m!12850))

(declare-fun m!12852 () Bool)

(assert (=> mapNonEmpty!501 m!12852))

(declare-fun m!12854 () Bool)

(assert (=> b!38944 m!12854))

(declare-fun m!12856 () Bool)

(assert (=> b!38925 m!12856))

(declare-fun m!12858 () Bool)

(assert (=> b!38921 m!12858))

(declare-fun m!12860 () Bool)

(assert (=> b!38921 m!12860))

(declare-fun m!12862 () Bool)

(assert (=> b!38946 m!12862))

(declare-fun m!12864 () Bool)

(assert (=> mapNonEmpty!499 m!12864))

(declare-fun m!12866 () Bool)

(assert (=> b!38948 m!12866))

(declare-fun m!12868 () Bool)

(assert (=> b!38948 m!12868))

(declare-fun m!12870 () Bool)

(assert (=> start!2184 m!12870))

(declare-fun m!12872 () Bool)

(assert (=> start!2184 m!12872))

(declare-fun m!12874 () Bool)

(assert (=> start!2184 m!12874))

(declare-fun m!12876 () Bool)

(assert (=> start!2184 m!12876))

(declare-fun m!12878 () Bool)

(assert (=> start!2184 m!12878))

(declare-fun m!12880 () Bool)

(assert (=> start!2184 m!12880))

(declare-fun m!12882 () Bool)

(assert (=> b!38934 m!12882))

(declare-fun m!12884 () Bool)

(assert (=> b!38934 m!12884))

(check-sat b_and!729 (not b!38946) b_and!733 b_and!737 b_and!731 (not start!2184) (not b!38944) (not b_next!695) b_and!727 (not b_next!701) (not b_next!703) (not b!38926) (not b!38941) (not b!38925) (not b!38922) (not b!38948) (not b!38945) (not mapNonEmpty!500) (not b!38938) (not b!38936) (not b_next!697) (not b_next!699) (not mapNonEmpty!501) (not mapNonEmpty!499) (not b!38939) (not b!38934) b_and!735 (not b!38949) (not b_next!693) (not b!38930) (not b!38927) (not b!38921))
(check-sat b_and!729 b_and!733 b_and!737 b_and!731 (not b_next!695) b_and!735 (not b_next!693) b_and!727 (not b_next!701) (not b_next!703) (not b_next!697) (not b_next!699))
