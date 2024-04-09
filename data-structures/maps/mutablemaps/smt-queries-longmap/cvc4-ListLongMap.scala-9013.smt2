; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108878 () Bool)

(assert start!108878)

(declare-fun b_free!28355 () Bool)

(declare-fun b_next!28355 () Bool)

(assert (=> start!108878 (= b_free!28355 (not b_next!28355))))

(declare-fun tp!100181 () Bool)

(declare-fun b_and!46431 () Bool)

(assert (=> start!108878 (= tp!100181 b_and!46431)))

(declare-fun b!1285293 () Bool)

(declare-fun res!853925 () Bool)

(declare-fun e!734199 () Bool)

(assert (=> b!1285293 (=> (not res!853925) (not e!734199))))

(declare-datatypes ((array!85001 0))(
  ( (array!85002 (arr!40998 (Array (_ BitVec 32) (_ BitVec 64))) (size!41549 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85001)

(declare-datatypes ((List!29225 0))(
  ( (Nil!29222) (Cons!29221 (h!30430 (_ BitVec 64)) (t!42776 List!29225)) )
))
(declare-fun arrayNoDuplicates!0 (array!85001 (_ BitVec 32) List!29225) Bool)

(assert (=> b!1285293 (= res!853925 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29222))))

(declare-fun b!1285294 () Bool)

(declare-fun res!853926 () Bool)

(assert (=> b!1285294 (=> (not res!853926) (not e!734199))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50429 0))(
  ( (V!50430 (val!17072 Int)) )
))
(declare-datatypes ((ValueCell!16099 0))(
  ( (ValueCellFull!16099 (v!19672 V!50429)) (EmptyCell!16099) )
))
(declare-datatypes ((array!85003 0))(
  ( (array!85004 (arr!40999 (Array (_ BitVec 32) ValueCell!16099)) (size!41550 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85003)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285294 (= res!853926 (and (= (size!41550 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41549 _keys!1741) (size!41550 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285295 () Bool)

(declare-fun e!734196 () Bool)

(declare-fun tp_is_empty!33995 () Bool)

(assert (=> b!1285295 (= e!734196 tp_is_empty!33995)))

(declare-fun b!1285296 () Bool)

(assert (=> b!1285296 (= e!734199 false)))

(declare-fun minValue!1387 () V!50429)

(declare-fun zeroValue!1387 () V!50429)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576846 () Bool)

(declare-datatypes ((tuple2!22012 0))(
  ( (tuple2!22013 (_1!11016 (_ BitVec 64)) (_2!11016 V!50429)) )
))
(declare-datatypes ((List!29226 0))(
  ( (Nil!29223) (Cons!29222 (h!30431 tuple2!22012) (t!42777 List!29226)) )
))
(declare-datatypes ((ListLongMap!19681 0))(
  ( (ListLongMap!19682 (toList!9856 List!29226)) )
))
(declare-fun contains!7911 (ListLongMap!19681 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4872 (array!85001 array!85003 (_ BitVec 32) (_ BitVec 32) V!50429 V!50429 (_ BitVec 32) Int) ListLongMap!19681)

(assert (=> b!1285296 (= lt!576846 (contains!7911 (getCurrentListMap!4872 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!52550 () Bool)

(declare-fun mapRes!52550 () Bool)

(declare-fun tp!100182 () Bool)

(assert (=> mapNonEmpty!52550 (= mapRes!52550 (and tp!100182 e!734196))))

(declare-fun mapValue!52550 () ValueCell!16099)

(declare-fun mapRest!52550 () (Array (_ BitVec 32) ValueCell!16099))

(declare-fun mapKey!52550 () (_ BitVec 32))

(assert (=> mapNonEmpty!52550 (= (arr!40999 _values!1445) (store mapRest!52550 mapKey!52550 mapValue!52550))))

(declare-fun b!1285297 () Bool)

(declare-fun e!734198 () Bool)

(assert (=> b!1285297 (= e!734198 tp_is_empty!33995)))

(declare-fun b!1285298 () Bool)

(declare-fun res!853922 () Bool)

(assert (=> b!1285298 (=> (not res!853922) (not e!734199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85001 (_ BitVec 32)) Bool)

(assert (=> b!1285298 (= res!853922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285299 () Bool)

(declare-fun e!734197 () Bool)

(assert (=> b!1285299 (= e!734197 (and e!734198 mapRes!52550))))

(declare-fun condMapEmpty!52550 () Bool)

(declare-fun mapDefault!52550 () ValueCell!16099)

