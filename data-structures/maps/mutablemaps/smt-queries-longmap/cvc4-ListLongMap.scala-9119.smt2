; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109538 () Bool)

(assert start!109538)

(declare-fun b_free!28991 () Bool)

(declare-fun b_next!28991 () Bool)

(assert (=> start!109538 (= b_free!28991 (not b_next!28991))))

(declare-fun tp!102093 () Bool)

(declare-fun b_and!47091 () Bool)

(assert (=> start!109538 (= tp!102093 b_and!47091)))

(declare-fun res!861948 () Bool)

(declare-fun e!739882 () Bool)

(assert (=> start!109538 (=> (not res!861948) (not e!739882))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109538 (= res!861948 (validMask!0 mask!2175))))

(assert (=> start!109538 e!739882))

(declare-fun tp_is_empty!34631 () Bool)

(assert (=> start!109538 tp_is_empty!34631))

(assert (=> start!109538 true))

(declare-datatypes ((V!51277 0))(
  ( (V!51278 (val!17390 Int)) )
))
(declare-datatypes ((ValueCell!16417 0))(
  ( (ValueCellFull!16417 (v!19991 V!51277)) (EmptyCell!16417) )
))
(declare-datatypes ((array!86241 0))(
  ( (array!86242 (arr!41617 (Array (_ BitVec 32) ValueCell!16417)) (size!42168 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86241)

(declare-fun e!739879 () Bool)

(declare-fun array_inv!31499 (array!86241) Bool)

(assert (=> start!109538 (and (array_inv!31499 _values!1445) e!739879)))

(declare-datatypes ((array!86243 0))(
  ( (array!86244 (arr!41618 (Array (_ BitVec 32) (_ BitVec 64))) (size!42169 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86243)

(declare-fun array_inv!31500 (array!86243) Bool)

(assert (=> start!109538 (array_inv!31500 _keys!1741)))

(assert (=> start!109538 tp!102093))

(declare-fun b!1296829 () Bool)

(declare-fun res!861947 () Bool)

(assert (=> b!1296829 (=> (not res!861947) (not e!739882))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296829 (= res!861947 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42169 _keys!1741))))))

(declare-fun b!1296830 () Bool)

(declare-fun res!861944 () Bool)

(assert (=> b!1296830 (=> (not res!861944) (not e!739882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86243 (_ BitVec 32)) Bool)

(assert (=> b!1296830 (= res!861944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296831 () Bool)

(assert (=> b!1296831 (= e!739882 false)))

(declare-fun zeroValue!1387 () V!51277)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun minValue!1387 () V!51277)

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!580468 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!22558 0))(
  ( (tuple2!22559 (_1!11289 (_ BitVec 64)) (_2!11289 V!51277)) )
))
(declare-datatypes ((List!29722 0))(
  ( (Nil!29719) (Cons!29718 (h!30927 tuple2!22558) (t!43293 List!29722)) )
))
(declare-datatypes ((ListLongMap!20227 0))(
  ( (ListLongMap!20228 (toList!10129 List!29722)) )
))
(declare-fun contains!8183 (ListLongMap!20227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5103 (array!86243 array!86241 (_ BitVec 32) (_ BitVec 32) V!51277 V!51277 (_ BitVec 32) Int) ListLongMap!20227)

(assert (=> b!1296831 (= lt!580468 (contains!8183 (getCurrentListMap!5103 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1296832 () Bool)

(declare-fun res!861946 () Bool)

(assert (=> b!1296832 (=> (not res!861946) (not e!739882))))

(declare-datatypes ((List!29723 0))(
  ( (Nil!29720) (Cons!29719 (h!30928 (_ BitVec 64)) (t!43294 List!29723)) )
))
(declare-fun arrayNoDuplicates!0 (array!86243 (_ BitVec 32) List!29723) Bool)

(assert (=> b!1296832 (= res!861946 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29720))))

(declare-fun mapNonEmpty!53507 () Bool)

(declare-fun mapRes!53507 () Bool)

(declare-fun tp!102092 () Bool)

(declare-fun e!739878 () Bool)

(assert (=> mapNonEmpty!53507 (= mapRes!53507 (and tp!102092 e!739878))))

(declare-fun mapKey!53507 () (_ BitVec 32))

(declare-fun mapValue!53507 () ValueCell!16417)

(declare-fun mapRest!53507 () (Array (_ BitVec 32) ValueCell!16417))

(assert (=> mapNonEmpty!53507 (= (arr!41617 _values!1445) (store mapRest!53507 mapKey!53507 mapValue!53507))))

(declare-fun mapIsEmpty!53507 () Bool)

(assert (=> mapIsEmpty!53507 mapRes!53507))

(declare-fun b!1296833 () Bool)

(assert (=> b!1296833 (= e!739878 tp_is_empty!34631)))

(declare-fun b!1296834 () Bool)

(declare-fun res!861945 () Bool)

(assert (=> b!1296834 (=> (not res!861945) (not e!739882))))

(assert (=> b!1296834 (= res!861945 (and (= (size!42168 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42169 _keys!1741) (size!42168 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296835 () Bool)

(declare-fun e!739880 () Bool)

(assert (=> b!1296835 (= e!739879 (and e!739880 mapRes!53507))))

(declare-fun condMapEmpty!53507 () Bool)

(declare-fun mapDefault!53507 () ValueCell!16417)

