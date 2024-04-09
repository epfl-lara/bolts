; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108438 () Bool)

(assert start!108438)

(declare-fun b_free!27949 () Bool)

(declare-fun b_next!27949 () Bool)

(assert (=> start!108438 (= b_free!27949 (not b_next!27949))))

(declare-fun tp!98957 () Bool)

(declare-fun b_and!46019 () Bool)

(assert (=> start!108438 (= tp!98957 b_and!46019)))

(declare-fun b!1279294 () Bool)

(declare-fun e!730956 () Bool)

(assert (=> b!1279294 (= e!730956 false)))

(declare-datatypes ((V!49889 0))(
  ( (V!49890 (val!16869 Int)) )
))
(declare-fun minValue!1387 () V!49889)

(declare-fun zeroValue!1387 () V!49889)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15896 0))(
  ( (ValueCellFull!15896 (v!19467 V!49889)) (EmptyCell!15896) )
))
(declare-datatypes ((array!84213 0))(
  ( (array!84214 (arr!40606 (Array (_ BitVec 32) ValueCell!15896)) (size!41157 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84213)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84215 0))(
  ( (array!84216 (arr!40607 (Array (_ BitVec 32) (_ BitVec 64))) (size!41158 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84215)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun lt!575941 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!21730 0))(
  ( (tuple2!21731 (_1!10875 (_ BitVec 64)) (_2!10875 V!49889)) )
))
(declare-datatypes ((List!28942 0))(
  ( (Nil!28939) (Cons!28938 (h!30147 tuple2!21730) (t!42489 List!28942)) )
))
(declare-datatypes ((ListLongMap!19399 0))(
  ( (ListLongMap!19400 (toList!9715 List!28942)) )
))
(declare-fun contains!7768 (ListLongMap!19399 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4735 (array!84215 array!84213 (_ BitVec 32) (_ BitVec 32) V!49889 V!49889 (_ BitVec 32) Int) ListLongMap!19399)

(assert (=> b!1279294 (= lt!575941 (contains!7768 (getCurrentListMap!4735 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279295 () Bool)

(declare-fun res!849901 () Bool)

(assert (=> b!1279295 (=> (not res!849901) (not e!730956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84215 (_ BitVec 32)) Bool)

(assert (=> b!1279295 (= res!849901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51935 () Bool)

(declare-fun mapRes!51935 () Bool)

(assert (=> mapIsEmpty!51935 mapRes!51935))

(declare-fun b!1279296 () Bool)

(declare-fun res!849899 () Bool)

(assert (=> b!1279296 (=> (not res!849899) (not e!730956))))

(assert (=> b!1279296 (= res!849899 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41158 _keys!1741))))))

(declare-fun b!1279297 () Bool)

(declare-fun e!730957 () Bool)

(declare-fun e!730959 () Bool)

(assert (=> b!1279297 (= e!730957 (and e!730959 mapRes!51935))))

(declare-fun condMapEmpty!51935 () Bool)

(declare-fun mapDefault!51935 () ValueCell!15896)

