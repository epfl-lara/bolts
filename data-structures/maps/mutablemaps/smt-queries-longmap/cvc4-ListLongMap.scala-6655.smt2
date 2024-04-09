; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83934 () Bool)

(assert start!83934)

(declare-fun b_free!19715 () Bool)

(declare-fun b_next!19715 () Bool)

(assert (=> start!83934 (= b_free!19715 (not b_next!19715))))

(declare-fun tp!68588 () Bool)

(declare-fun b_and!31537 () Bool)

(assert (=> start!83934 (= tp!68588 b_and!31537)))

(declare-fun mapNonEmpty!36092 () Bool)

(declare-fun mapRes!36092 () Bool)

(declare-fun tp!68587 () Bool)

(declare-fun e!552638 () Bool)

(assert (=> mapNonEmpty!36092 (= mapRes!36092 (and tp!68587 e!552638))))

(declare-datatypes ((V!35261 0))(
  ( (V!35262 (val!11405 Int)) )
))
(declare-datatypes ((ValueCell!10873 0))(
  ( (ValueCellFull!10873 (v!13967 V!35261)) (EmptyCell!10873) )
))
(declare-datatypes ((array!61425 0))(
  ( (array!61426 (arr!29566 (Array (_ BitVec 32) ValueCell!10873)) (size!30046 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61425)

(declare-fun mapValue!36092 () ValueCell!10873)

(declare-fun mapRest!36092 () (Array (_ BitVec 32) ValueCell!10873))

(declare-fun mapKey!36092 () (_ BitVec 32))

(assert (=> mapNonEmpty!36092 (= (arr!29566 _values!1278) (store mapRest!36092 mapKey!36092 mapValue!36092))))

(declare-fun b!980406 () Bool)

(declare-fun res!656244 () Bool)

(declare-fun e!552635 () Bool)

(assert (=> b!980406 (=> (not res!656244) (not e!552635))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61427 0))(
  ( (array!61428 (arr!29567 (Array (_ BitVec 32) (_ BitVec 64))) (size!30047 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61427)

(assert (=> b!980406 (= res!656244 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30047 _keys!1544))))))

(declare-fun b!980407 () Bool)

(declare-fun res!656248 () Bool)

(assert (=> b!980407 (=> (not res!656248) (not e!552635))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980407 (= res!656248 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980408 () Bool)

(declare-fun res!656246 () Bool)

(assert (=> b!980408 (=> (not res!656246) (not e!552635))))

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!980408 (= res!656246 (and (= (size!30046 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30047 _keys!1544) (size!30046 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980409 () Bool)

(declare-fun tp_is_empty!22709 () Bool)

(assert (=> b!980409 (= e!552638 tp_is_empty!22709)))

(declare-fun mapIsEmpty!36092 () Bool)

(assert (=> mapIsEmpty!36092 mapRes!36092))

(declare-fun b!980410 () Bool)

(declare-fun e!552633 () Bool)

(assert (=> b!980410 (= e!552633 true)))

(declare-datatypes ((tuple2!14740 0))(
  ( (tuple2!14741 (_1!7380 (_ BitVec 64)) (_2!7380 V!35261)) )
))
(declare-fun lt!435356 () tuple2!14740)

(declare-datatypes ((List!20630 0))(
  ( (Nil!20627) (Cons!20626 (h!21788 tuple2!14740) (t!29309 List!20630)) )
))
(declare-datatypes ((ListLongMap!13451 0))(
  ( (ListLongMap!13452 (toList!6741 List!20630)) )
))
(declare-fun lt!435364 () ListLongMap!13451)

(declare-fun lt!435357 () ListLongMap!13451)

(declare-fun lt!435363 () tuple2!14740)

(declare-fun +!2947 (ListLongMap!13451 tuple2!14740) ListLongMap!13451)

(assert (=> b!980410 (= lt!435364 (+!2947 (+!2947 lt!435357 lt!435363) lt!435356))))

(declare-datatypes ((Unit!32569 0))(
  ( (Unit!32570) )
))
(declare-fun lt!435361 () Unit!32569)

(declare-fun zeroValue!1220 () V!35261)

(declare-fun lt!435355 () V!35261)

(declare-fun addCommutativeForDiffKeys!609 (ListLongMap!13451 (_ BitVec 64) V!35261 (_ BitVec 64) V!35261) Unit!32569)

(assert (=> b!980410 (= lt!435361 (addCommutativeForDiffKeys!609 lt!435357 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29567 _keys!1544) from!1932) lt!435355))))

(declare-fun b!980412 () Bool)

(declare-fun res!656245 () Bool)

(assert (=> b!980412 (=> (not res!656245) (not e!552635))))

(declare-datatypes ((List!20631 0))(
  ( (Nil!20628) (Cons!20627 (h!21789 (_ BitVec 64)) (t!29310 List!20631)) )
))
(declare-fun arrayNoDuplicates!0 (array!61427 (_ BitVec 32) List!20631) Bool)

(assert (=> b!980412 (= res!656245 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20628))))

(declare-fun b!980413 () Bool)

(declare-fun e!552636 () Bool)

(assert (=> b!980413 (= e!552636 tp_is_empty!22709)))

(declare-fun b!980414 () Bool)

(declare-fun e!552634 () Bool)

(assert (=> b!980414 (= e!552634 (and e!552636 mapRes!36092))))

(declare-fun condMapEmpty!36092 () Bool)

(declare-fun mapDefault!36092 () ValueCell!10873)

