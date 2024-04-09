; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109528 () Bool)

(assert start!109528)

(declare-fun b_free!28981 () Bool)

(declare-fun b_next!28981 () Bool)

(assert (=> start!109528 (= b_free!28981 (not b_next!28981))))

(declare-fun tp!102063 () Bool)

(declare-fun b_and!47081 () Bool)

(assert (=> start!109528 (= tp!102063 b_and!47081)))

(declare-fun b!1296703 () Bool)

(declare-fun res!861862 () Bool)

(declare-fun e!739807 () Bool)

(assert (=> b!1296703 (=> (not res!861862) (not e!739807))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86221 0))(
  ( (array!86222 (arr!41607 (Array (_ BitVec 32) (_ BitVec 64))) (size!42158 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86221)

(assert (=> b!1296703 (= res!861862 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42158 _keys!1741))))))

(declare-fun b!1296704 () Bool)

(declare-fun res!861867 () Bool)

(assert (=> b!1296704 (=> (not res!861867) (not e!739807))))

(declare-datatypes ((List!29715 0))(
  ( (Nil!29712) (Cons!29711 (h!30920 (_ BitVec 64)) (t!43286 List!29715)) )
))
(declare-fun arrayNoDuplicates!0 (array!86221 (_ BitVec 32) List!29715) Bool)

(assert (=> b!1296704 (= res!861867 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29712))))

(declare-fun b!1296705 () Bool)

(declare-fun res!861864 () Bool)

(assert (=> b!1296705 (=> (not res!861864) (not e!739807))))

(declare-datatypes ((V!51265 0))(
  ( (V!51266 (val!17385 Int)) )
))
(declare-fun zeroValue!1387 () V!51265)

(declare-datatypes ((ValueCell!16412 0))(
  ( (ValueCellFull!16412 (v!19986 V!51265)) (EmptyCell!16412) )
))
(declare-datatypes ((array!86223 0))(
  ( (array!86224 (arr!41608 (Array (_ BitVec 32) ValueCell!16412)) (size!42159 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86223)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!51265)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22550 0))(
  ( (tuple2!22551 (_1!11285 (_ BitVec 64)) (_2!11285 V!51265)) )
))
(declare-datatypes ((List!29716 0))(
  ( (Nil!29713) (Cons!29712 (h!30921 tuple2!22550) (t!43287 List!29716)) )
))
(declare-datatypes ((ListLongMap!20219 0))(
  ( (ListLongMap!20220 (toList!10125 List!29716)) )
))
(declare-fun contains!8179 (ListLongMap!20219 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5099 (array!86221 array!86223 (_ BitVec 32) (_ BitVec 32) V!51265 V!51265 (_ BitVec 32) Int) ListLongMap!20219)

(assert (=> b!1296705 (= res!861864 (contains!8179 (getCurrentListMap!5099 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53492 () Bool)

(declare-fun mapRes!53492 () Bool)

(declare-fun tp!102062 () Bool)

(declare-fun e!739805 () Bool)

(assert (=> mapNonEmpty!53492 (= mapRes!53492 (and tp!102062 e!739805))))

(declare-fun mapKey!53492 () (_ BitVec 32))

(declare-fun mapRest!53492 () (Array (_ BitVec 32) ValueCell!16412))

(declare-fun mapValue!53492 () ValueCell!16412)

(assert (=> mapNonEmpty!53492 (= (arr!41608 _values!1445) (store mapRest!53492 mapKey!53492 mapValue!53492))))

(declare-fun b!1296706 () Bool)

(declare-fun res!861865 () Bool)

(assert (=> b!1296706 (=> (not res!861865) (not e!739807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86221 (_ BitVec 32)) Bool)

(assert (=> b!1296706 (= res!861865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296707 () Bool)

(declare-fun tp_is_empty!34621 () Bool)

(assert (=> b!1296707 (= e!739805 tp_is_empty!34621)))

(declare-fun res!861863 () Bool)

(assert (=> start!109528 (=> (not res!861863) (not e!739807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109528 (= res!861863 (validMask!0 mask!2175))))

(assert (=> start!109528 e!739807))

(assert (=> start!109528 tp_is_empty!34621))

(assert (=> start!109528 true))

(declare-fun e!739806 () Bool)

(declare-fun array_inv!31491 (array!86223) Bool)

(assert (=> start!109528 (and (array_inv!31491 _values!1445) e!739806)))

(declare-fun array_inv!31492 (array!86221) Bool)

(assert (=> start!109528 (array_inv!31492 _keys!1741)))

(assert (=> start!109528 tp!102063))

(declare-fun b!1296702 () Bool)

(declare-fun e!739804 () Bool)

(assert (=> b!1296702 (= e!739804 tp_is_empty!34621)))

(declare-fun mapIsEmpty!53492 () Bool)

(assert (=> mapIsEmpty!53492 mapRes!53492))

(declare-fun b!1296708 () Bool)

(declare-fun res!861866 () Bool)

(assert (=> b!1296708 (=> (not res!861866) (not e!739807))))

(assert (=> b!1296708 (= res!861866 (and (= (size!42159 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42158 _keys!1741) (size!42159 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296709 () Bool)

(assert (=> b!1296709 (= e!739806 (and e!739804 mapRes!53492))))

(declare-fun condMapEmpty!53492 () Bool)

(declare-fun mapDefault!53492 () ValueCell!16412)

