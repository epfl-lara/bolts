; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109770 () Bool)

(assert start!109770)

(declare-fun b_free!29167 () Bool)

(declare-fun b_next!29167 () Bool)

(assert (=> start!109770 (= b_free!29167 (not b_next!29167))))

(declare-fun tp!102629 () Bool)

(declare-fun b_and!47279 () Bool)

(assert (=> start!109770 (= tp!102629 b_and!47279)))

(declare-fun b!1299754 () Bool)

(declare-fun res!863845 () Bool)

(declare-fun e!741485 () Bool)

(assert (=> b!1299754 (=> (not res!863845) (not e!741485))))

(declare-datatypes ((array!86585 0))(
  ( (array!86586 (arr!41786 (Array (_ BitVec 32) (_ BitVec 64))) (size!42337 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86585)

(declare-datatypes ((List!29848 0))(
  ( (Nil!29845) (Cons!29844 (h!31053 (_ BitVec 64)) (t!43425 List!29848)) )
))
(declare-fun arrayNoDuplicates!0 (array!86585 (_ BitVec 32) List!29848) Bool)

(assert (=> b!1299754 (= res!863845 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29845))))

(declare-fun b!1299756 () Bool)

(declare-fun res!863843 () Bool)

(assert (=> b!1299756 (=> (not res!863843) (not e!741485))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86585 (_ BitVec 32)) Bool)

(assert (=> b!1299756 (= res!863843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53780 () Bool)

(declare-fun mapRes!53780 () Bool)

(assert (=> mapIsEmpty!53780 mapRes!53780))

(declare-fun mapNonEmpty!53780 () Bool)

(declare-fun tp!102630 () Bool)

(declare-fun e!741484 () Bool)

(assert (=> mapNonEmpty!53780 (= mapRes!53780 (and tp!102630 e!741484))))

(declare-datatypes ((V!51513 0))(
  ( (V!51514 (val!17478 Int)) )
))
(declare-datatypes ((ValueCell!16505 0))(
  ( (ValueCellFull!16505 (v!20082 V!51513)) (EmptyCell!16505) )
))
(declare-fun mapValue!53780 () ValueCell!16505)

(declare-datatypes ((array!86587 0))(
  ( (array!86588 (arr!41787 (Array (_ BitVec 32) ValueCell!16505)) (size!42338 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86587)

(declare-fun mapKey!53780 () (_ BitVec 32))

(declare-fun mapRest!53780 () (Array (_ BitVec 32) ValueCell!16505))

(assert (=> mapNonEmpty!53780 (= (arr!41787 _values!1445) (store mapRest!53780 mapKey!53780 mapValue!53780))))

(declare-fun b!1299757 () Bool)

(declare-fun res!863846 () Bool)

(assert (=> b!1299757 (=> (not res!863846) (not e!741485))))

(declare-fun minValue!1387 () V!51513)

(declare-fun zeroValue!1387 () V!51513)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!22690 0))(
  ( (tuple2!22691 (_1!11355 (_ BitVec 64)) (_2!11355 V!51513)) )
))
(declare-datatypes ((List!29849 0))(
  ( (Nil!29846) (Cons!29845 (h!31054 tuple2!22690) (t!43426 List!29849)) )
))
(declare-datatypes ((ListLongMap!20359 0))(
  ( (ListLongMap!20360 (toList!10195 List!29849)) )
))
(declare-fun contains!8253 (ListLongMap!20359 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5169 (array!86585 array!86587 (_ BitVec 32) (_ BitVec 32) V!51513 V!51513 (_ BitVec 32) Int) ListLongMap!20359)

(assert (=> b!1299757 (= res!863846 (contains!8253 (getCurrentListMap!5169 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1299758 () Bool)

(declare-fun res!863840 () Bool)

(assert (=> b!1299758 (=> (not res!863840) (not e!741485))))

(assert (=> b!1299758 (= res!863840 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42337 _keys!1741))))))

(declare-fun b!1299759 () Bool)

(declare-fun tp_is_empty!34807 () Bool)

(assert (=> b!1299759 (= e!741484 tp_is_empty!34807)))

(declare-fun b!1299760 () Bool)

(declare-fun res!863842 () Bool)

(assert (=> b!1299760 (=> (not res!863842) (not e!741485))))

(assert (=> b!1299760 (= res!863842 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1299761 () Bool)

(declare-fun +!4425 (ListLongMap!20359 tuple2!22690) ListLongMap!20359)

(declare-fun getCurrentListMapNoExtraKeys!6138 (array!86585 array!86587 (_ BitVec 32) (_ BitVec 32) V!51513 V!51513 (_ BitVec 32) Int) ListLongMap!20359)

(assert (=> b!1299761 (= e!741485 (not (contains!8253 (+!4425 (getCurrentListMapNoExtraKeys!6138 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205)))))

(declare-fun b!1299762 () Bool)

(declare-fun res!863839 () Bool)

(assert (=> b!1299762 (=> (not res!863839) (not e!741485))))

(assert (=> b!1299762 (= res!863839 (and (= (size!42338 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42337 _keys!1741) (size!42338 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299755 () Bool)

(declare-fun e!741486 () Bool)

(declare-fun e!741482 () Bool)

(assert (=> b!1299755 (= e!741486 (and e!741482 mapRes!53780))))

(declare-fun condMapEmpty!53780 () Bool)

(declare-fun mapDefault!53780 () ValueCell!16505)

