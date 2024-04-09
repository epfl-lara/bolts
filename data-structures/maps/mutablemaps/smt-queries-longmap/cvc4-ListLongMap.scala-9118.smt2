; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109532 () Bool)

(assert start!109532)

(declare-fun b_free!28985 () Bool)

(declare-fun b_next!28985 () Bool)

(assert (=> start!109532 (= b_free!28985 (not b_next!28985))))

(declare-fun tp!102075 () Bool)

(declare-fun b_and!47085 () Bool)

(assert (=> start!109532 (= tp!102075 b_and!47085)))

(declare-fun mapNonEmpty!53498 () Bool)

(declare-fun mapRes!53498 () Bool)

(declare-fun tp!102074 () Bool)

(declare-fun e!739833 () Bool)

(assert (=> mapNonEmpty!53498 (= mapRes!53498 (and tp!102074 e!739833))))

(declare-fun mapKey!53498 () (_ BitVec 32))

(declare-datatypes ((V!51269 0))(
  ( (V!51270 (val!17387 Int)) )
))
(declare-datatypes ((ValueCell!16414 0))(
  ( (ValueCellFull!16414 (v!19988 V!51269)) (EmptyCell!16414) )
))
(declare-fun mapRest!53498 () (Array (_ BitVec 32) ValueCell!16414))

(declare-fun mapValue!53498 () ValueCell!16414)

(declare-datatypes ((array!86229 0))(
  ( (array!86230 (arr!41611 (Array (_ BitVec 32) ValueCell!16414)) (size!42162 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86229)

(assert (=> mapNonEmpty!53498 (= (arr!41611 _values!1445) (store mapRest!53498 mapKey!53498 mapValue!53498))))

(declare-fun b!1296756 () Bool)

(declare-fun e!739835 () Bool)

(declare-fun tp_is_empty!34625 () Bool)

(assert (=> b!1296756 (= e!739835 tp_is_empty!34625)))

(declare-fun b!1296757 () Bool)

(declare-fun e!739836 () Bool)

(declare-datatypes ((array!86231 0))(
  ( (array!86232 (arr!41612 (Array (_ BitVec 32) (_ BitVec 64))) (size!42163 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86231)

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296757 (= e!739836 (bvslt (bvsub (size!42163 _keys!1741) from!2144) #b00000000000000000000000000000000))))

(declare-fun b!1296758 () Bool)

(assert (=> b!1296758 (= e!739833 tp_is_empty!34625)))

(declare-fun b!1296759 () Bool)

(declare-fun res!861900 () Bool)

(assert (=> b!1296759 (=> (not res!861900) (not e!739836))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86231 (_ BitVec 32)) Bool)

(assert (=> b!1296759 (= res!861900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296760 () Bool)

(declare-fun res!861903 () Bool)

(assert (=> b!1296760 (=> (not res!861903) (not e!739836))))

(declare-fun minValue!1387 () V!51269)

(declare-fun zeroValue!1387 () V!51269)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22554 0))(
  ( (tuple2!22555 (_1!11287 (_ BitVec 64)) (_2!11287 V!51269)) )
))
(declare-datatypes ((List!29719 0))(
  ( (Nil!29716) (Cons!29715 (h!30924 tuple2!22554) (t!43290 List!29719)) )
))
(declare-datatypes ((ListLongMap!20223 0))(
  ( (ListLongMap!20224 (toList!10127 List!29719)) )
))
(declare-fun contains!8181 (ListLongMap!20223 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5101 (array!86231 array!86229 (_ BitVec 32) (_ BitVec 32) V!51269 V!51269 (_ BitVec 32) Int) ListLongMap!20223)

(assert (=> b!1296760 (= res!861903 (contains!8181 (getCurrentListMap!5101 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!53498 () Bool)

(assert (=> mapIsEmpty!53498 mapRes!53498))

(declare-fun res!861901 () Bool)

(assert (=> start!109532 (=> (not res!861901) (not e!739836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109532 (= res!861901 (validMask!0 mask!2175))))

(assert (=> start!109532 e!739836))

(assert (=> start!109532 tp_is_empty!34625))

(assert (=> start!109532 true))

(declare-fun e!739837 () Bool)

(declare-fun array_inv!31495 (array!86229) Bool)

(assert (=> start!109532 (and (array_inv!31495 _values!1445) e!739837)))

(declare-fun array_inv!31496 (array!86231) Bool)

(assert (=> start!109532 (array_inv!31496 _keys!1741)))

(assert (=> start!109532 tp!102075))

(declare-fun b!1296761 () Bool)

(assert (=> b!1296761 (= e!739837 (and e!739835 mapRes!53498))))

(declare-fun condMapEmpty!53498 () Bool)

(declare-fun mapDefault!53498 () ValueCell!16414)

