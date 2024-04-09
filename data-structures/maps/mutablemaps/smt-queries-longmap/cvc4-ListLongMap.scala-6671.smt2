; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84030 () Bool)

(assert start!84030)

(declare-fun b_free!19757 () Bool)

(declare-fun b_next!19757 () Bool)

(assert (=> start!84030 (= b_free!19757 (not b_next!19757))))

(declare-fun tp!68794 () Bool)

(declare-fun b_and!31615 () Bool)

(assert (=> start!84030 (= tp!68794 b_and!31615)))

(declare-fun b!981639 () Bool)

(declare-fun res!657015 () Bool)

(declare-fun e!553411 () Bool)

(assert (=> b!981639 (=> (not res!657015) (not e!553411))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981639 (= res!657015 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981640 () Bool)

(declare-fun e!553410 () Bool)

(declare-fun tp_is_empty!22805 () Bool)

(assert (=> b!981640 (= e!553410 tp_is_empty!22805)))

(declare-fun b!981642 () Bool)

(declare-fun res!657014 () Bool)

(assert (=> b!981642 (=> (not res!657014) (not e!553411))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61603 0))(
  ( (array!61604 (arr!29655 (Array (_ BitVec 32) (_ BitVec 64))) (size!30135 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61603)

(assert (=> b!981642 (= res!657014 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30135 _keys!1544))))))

(declare-fun mapNonEmpty!36236 () Bool)

(declare-fun mapRes!36236 () Bool)

(declare-fun tp!68795 () Bool)

(declare-fun e!553408 () Bool)

(assert (=> mapNonEmpty!36236 (= mapRes!36236 (and tp!68795 e!553408))))

(declare-datatypes ((V!35389 0))(
  ( (V!35390 (val!11453 Int)) )
))
(declare-datatypes ((ValueCell!10921 0))(
  ( (ValueCellFull!10921 (v!14015 V!35389)) (EmptyCell!10921) )
))
(declare-datatypes ((array!61605 0))(
  ( (array!61606 (arr!29656 (Array (_ BitVec 32) ValueCell!10921)) (size!30136 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61605)

(declare-fun mapRest!36236 () (Array (_ BitVec 32) ValueCell!10921))

(declare-fun mapValue!36236 () ValueCell!10921)

(declare-fun mapKey!36236 () (_ BitVec 32))

(assert (=> mapNonEmpty!36236 (= (arr!29656 _values!1278) (store mapRest!36236 mapKey!36236 mapValue!36236))))

(declare-fun b!981643 () Bool)

(declare-fun res!657008 () Bool)

(assert (=> b!981643 (=> (not res!657008) (not e!553411))))

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!981643 (= res!657008 (and (= (size!30136 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30135 _keys!1544) (size!30136 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981644 () Bool)

(assert (=> b!981644 (= e!553408 tp_is_empty!22805)))

(declare-fun b!981645 () Bool)

(declare-fun res!657013 () Bool)

(assert (=> b!981645 (=> (not res!657013) (not e!553411))))

(declare-datatypes ((List!20680 0))(
  ( (Nil!20677) (Cons!20676 (h!21838 (_ BitVec 64)) (t!29395 List!20680)) )
))
(declare-fun arrayNoDuplicates!0 (array!61603 (_ BitVec 32) List!20680) Bool)

(assert (=> b!981645 (= res!657013 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20677))))

(declare-fun b!981646 () Bool)

(declare-fun e!553407 () Bool)

(assert (=> b!981646 (= e!553411 e!553407)))

(declare-fun res!657012 () Bool)

(assert (=> b!981646 (=> (not res!657012) (not e!553407))))

(assert (=> b!981646 (= res!657012 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29655 _keys!1544) from!1932))))))

(declare-fun lt!435803 () V!35389)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15392 (ValueCell!10921 V!35389) V!35389)

(declare-fun dynLambda!1791 (Int (_ BitVec 64)) V!35389)

(assert (=> b!981646 (= lt!435803 (get!15392 (select (arr!29656 _values!1278) from!1932) (dynLambda!1791 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35389)

(declare-fun zeroValue!1220 () V!35389)

(declare-datatypes ((tuple2!14774 0))(
  ( (tuple2!14775 (_1!7397 (_ BitVec 64)) (_2!7397 V!35389)) )
))
(declare-datatypes ((List!20681 0))(
  ( (Nil!20678) (Cons!20677 (h!21839 tuple2!14774) (t!29396 List!20681)) )
))
(declare-datatypes ((ListLongMap!13485 0))(
  ( (ListLongMap!13486 (toList!6758 List!20681)) )
))
(declare-fun lt!435805 () ListLongMap!13485)

(declare-fun getCurrentListMapNoExtraKeys!3418 (array!61603 array!61605 (_ BitVec 32) (_ BitVec 32) V!35389 V!35389 (_ BitVec 32) Int) ListLongMap!13485)

(assert (=> b!981646 (= lt!435805 (getCurrentListMapNoExtraKeys!3418 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981641 () Bool)

(declare-fun res!657010 () Bool)

(assert (=> b!981641 (=> (not res!657010) (not e!553411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61603 (_ BitVec 32)) Bool)

(assert (=> b!981641 (= res!657010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!657011 () Bool)

(assert (=> start!84030 (=> (not res!657011) (not e!553411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84030 (= res!657011 (validMask!0 mask!1948))))

(assert (=> start!84030 e!553411))

(assert (=> start!84030 true))

(assert (=> start!84030 tp_is_empty!22805))

(declare-fun e!553409 () Bool)

(declare-fun array_inv!22807 (array!61605) Bool)

(assert (=> start!84030 (and (array_inv!22807 _values!1278) e!553409)))

(assert (=> start!84030 tp!68794))

(declare-fun array_inv!22808 (array!61603) Bool)

(assert (=> start!84030 (array_inv!22808 _keys!1544)))

(declare-fun b!981647 () Bool)

(assert (=> b!981647 (= e!553409 (and e!553410 mapRes!36236))))

(declare-fun condMapEmpty!36236 () Bool)

(declare-fun mapDefault!36236 () ValueCell!10921)

