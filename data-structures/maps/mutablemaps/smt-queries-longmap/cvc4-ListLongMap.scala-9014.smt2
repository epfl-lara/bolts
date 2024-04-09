; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108884 () Bool)

(assert start!108884)

(declare-fun b_free!28361 () Bool)

(declare-fun b_next!28361 () Bool)

(assert (=> start!108884 (= b_free!28361 (not b_next!28361))))

(declare-fun tp!100199 () Bool)

(declare-fun b_and!46437 () Bool)

(assert (=> start!108884 (= tp!100199 b_and!46437)))

(declare-fun b!1285365 () Bool)

(declare-fun e!734242 () Bool)

(declare-fun tp_is_empty!34001 () Bool)

(assert (=> b!1285365 (= e!734242 tp_is_empty!34001)))

(declare-fun b!1285366 () Bool)

(declare-fun res!853968 () Bool)

(declare-fun e!734244 () Bool)

(assert (=> b!1285366 (=> (not res!853968) (not e!734244))))

(declare-datatypes ((array!85013 0))(
  ( (array!85014 (arr!41004 (Array (_ BitVec 32) (_ BitVec 64))) (size!41555 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85013)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85013 (_ BitVec 32)) Bool)

(assert (=> b!1285366 (= res!853968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!853969 () Bool)

(assert (=> start!108884 (=> (not res!853969) (not e!734244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108884 (= res!853969 (validMask!0 mask!2175))))

(assert (=> start!108884 e!734244))

(assert (=> start!108884 tp_is_empty!34001))

(assert (=> start!108884 true))

(declare-datatypes ((V!50437 0))(
  ( (V!50438 (val!17075 Int)) )
))
(declare-datatypes ((ValueCell!16102 0))(
  ( (ValueCellFull!16102 (v!19675 V!50437)) (EmptyCell!16102) )
))
(declare-datatypes ((array!85015 0))(
  ( (array!85016 (arr!41005 (Array (_ BitVec 32) ValueCell!16102)) (size!41556 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85015)

(declare-fun e!734241 () Bool)

(declare-fun array_inv!31073 (array!85015) Bool)

(assert (=> start!108884 (and (array_inv!31073 _values!1445) e!734241)))

(declare-fun array_inv!31074 (array!85013) Bool)

(assert (=> start!108884 (array_inv!31074 _keys!1741)))

(assert (=> start!108884 tp!100199))

(declare-fun b!1285367 () Bool)

(declare-fun res!853971 () Bool)

(assert (=> b!1285367 (=> (not res!853971) (not e!734244))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285367 (= res!853971 (and (= (size!41556 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41555 _keys!1741) (size!41556 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285368 () Bool)

(assert (=> b!1285368 (= e!734244 false)))

(declare-fun minValue!1387 () V!50437)

(declare-fun zeroValue!1387 () V!50437)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576855 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22018 0))(
  ( (tuple2!22019 (_1!11019 (_ BitVec 64)) (_2!11019 V!50437)) )
))
(declare-datatypes ((List!29230 0))(
  ( (Nil!29227) (Cons!29226 (h!30435 tuple2!22018) (t!42781 List!29230)) )
))
(declare-datatypes ((ListLongMap!19687 0))(
  ( (ListLongMap!19688 (toList!9859 List!29230)) )
))
(declare-fun contains!7914 (ListLongMap!19687 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4875 (array!85013 array!85015 (_ BitVec 32) (_ BitVec 32) V!50437 V!50437 (_ BitVec 32) Int) ListLongMap!19687)

(assert (=> b!1285368 (= lt!576855 (contains!7914 (getCurrentListMap!4875 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285369 () Bool)

(declare-fun res!853967 () Bool)

(assert (=> b!1285369 (=> (not res!853967) (not e!734244))))

(assert (=> b!1285369 (= res!853967 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41555 _keys!1741))))))

(declare-fun mapIsEmpty!52559 () Bool)

(declare-fun mapRes!52559 () Bool)

(assert (=> mapIsEmpty!52559 mapRes!52559))

(declare-fun b!1285370 () Bool)

(declare-fun e!734243 () Bool)

(assert (=> b!1285370 (= e!734241 (and e!734243 mapRes!52559))))

(declare-fun condMapEmpty!52559 () Bool)

(declare-fun mapDefault!52559 () ValueCell!16102)

