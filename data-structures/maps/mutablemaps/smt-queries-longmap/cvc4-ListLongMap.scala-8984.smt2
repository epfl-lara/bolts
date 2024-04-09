; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108704 () Bool)

(assert start!108704)

(declare-fun b_free!28181 () Bool)

(declare-fun b_next!28181 () Bool)

(assert (=> start!108704 (= b_free!28181 (not b_next!28181))))

(declare-fun tp!99659 () Bool)

(declare-fun b_and!46257 () Bool)

(assert (=> start!108704 (= tp!99659 b_and!46257)))

(declare-fun b!1282611 () Bool)

(declare-fun res!852026 () Bool)

(declare-fun e!732895 () Bool)

(assert (=> b!1282611 (=> (not res!852026) (not e!732895))))

(declare-datatypes ((array!84663 0))(
  ( (array!84664 (arr!40829 (Array (_ BitVec 32) (_ BitVec 64))) (size!41380 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84663)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84663 (_ BitVec 32)) Bool)

(assert (=> b!1282611 (= res!852026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282612 () Bool)

(declare-fun res!852027 () Bool)

(assert (=> b!1282612 (=> (not res!852027) (not e!732895))))

(declare-datatypes ((List!29103 0))(
  ( (Nil!29100) (Cons!29099 (h!30308 (_ BitVec 64)) (t!42654 List!29103)) )
))
(declare-fun arrayNoDuplicates!0 (array!84663 (_ BitVec 32) List!29103) Bool)

(assert (=> b!1282612 (= res!852027 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29100))))

(declare-fun b!1282613 () Bool)

(assert (=> b!1282613 (= e!732895 false)))

(declare-datatypes ((V!50197 0))(
  ( (V!50198 (val!16985 Int)) )
))
(declare-fun zeroValue!1387 () V!50197)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576504 () Bool)

(declare-datatypes ((ValueCell!16012 0))(
  ( (ValueCellFull!16012 (v!19585 V!50197)) (EmptyCell!16012) )
))
(declare-datatypes ((array!84665 0))(
  ( (array!84666 (arr!40830 (Array (_ BitVec 32) ValueCell!16012)) (size!41381 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84665)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!50197)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21894 0))(
  ( (tuple2!21895 (_1!10957 (_ BitVec 64)) (_2!10957 V!50197)) )
))
(declare-datatypes ((List!29104 0))(
  ( (Nil!29101) (Cons!29100 (h!30309 tuple2!21894) (t!42655 List!29104)) )
))
(declare-datatypes ((ListLongMap!19563 0))(
  ( (ListLongMap!19564 (toList!9797 List!29104)) )
))
(declare-fun contains!7852 (ListLongMap!19563 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4817 (array!84663 array!84665 (_ BitVec 32) (_ BitVec 32) V!50197 V!50197 (_ BitVec 32) Int) ListLongMap!19563)

(assert (=> b!1282613 (= lt!576504 (contains!7852 (getCurrentListMap!4817 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282614 () Bool)

(declare-fun res!852024 () Bool)

(assert (=> b!1282614 (=> (not res!852024) (not e!732895))))

(assert (=> b!1282614 (= res!852024 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41380 _keys!1741))))))

(declare-fun b!1282616 () Bool)

(declare-fun e!732893 () Bool)

(declare-fun tp_is_empty!33821 () Bool)

(assert (=> b!1282616 (= e!732893 tp_is_empty!33821)))

(declare-fun mapNonEmpty!52289 () Bool)

(declare-fun mapRes!52289 () Bool)

(declare-fun tp!99660 () Bool)

(assert (=> mapNonEmpty!52289 (= mapRes!52289 (and tp!99660 e!732893))))

(declare-fun mapValue!52289 () ValueCell!16012)

(declare-fun mapRest!52289 () (Array (_ BitVec 32) ValueCell!16012))

(declare-fun mapKey!52289 () (_ BitVec 32))

(assert (=> mapNonEmpty!52289 (= (arr!40830 _values!1445) (store mapRest!52289 mapKey!52289 mapValue!52289))))

(declare-fun b!1282617 () Bool)

(declare-fun res!852023 () Bool)

(assert (=> b!1282617 (=> (not res!852023) (not e!732895))))

(assert (=> b!1282617 (= res!852023 (and (= (size!41381 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41380 _keys!1741) (size!41381 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282615 () Bool)

(declare-fun e!732894 () Bool)

(declare-fun e!732891 () Bool)

(assert (=> b!1282615 (= e!732894 (and e!732891 mapRes!52289))))

(declare-fun condMapEmpty!52289 () Bool)

(declare-fun mapDefault!52289 () ValueCell!16012)

