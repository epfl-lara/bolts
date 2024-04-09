; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81922 () Bool)

(assert start!81922)

(declare-fun b_free!18389 () Bool)

(declare-fun b_next!18389 () Bool)

(assert (=> start!81922 (= b_free!18389 (not b_next!18389))))

(declare-fun tp!63867 () Bool)

(declare-fun b_and!29893 () Bool)

(assert (=> start!81922 (= tp!63867 b_and!29893)))

(declare-fun b!954987 () Bool)

(declare-fun res!639619 () Bool)

(declare-fun e!538053 () Bool)

(assert (=> b!954987 (=> (not res!639619) (not e!538053))))

(declare-datatypes ((array!57991 0))(
  ( (array!57992 (arr!27871 (Array (_ BitVec 32) (_ BitVec 64))) (size!28351 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57991)

(declare-datatypes ((List!19567 0))(
  ( (Nil!19564) (Cons!19563 (h!20725 (_ BitVec 64)) (t!27936 List!19567)) )
))
(declare-fun arrayNoDuplicates!0 (array!57991 (_ BitVec 32) List!19567) Bool)

(assert (=> b!954987 (= res!639619 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19564))))

(declare-fun b!954988 () Bool)

(declare-fun e!538056 () Bool)

(declare-fun tp_is_empty!20933 () Bool)

(assert (=> b!954988 (= e!538056 tp_is_empty!20933)))

(declare-fun res!639617 () Bool)

(assert (=> start!81922 (=> (not res!639617) (not e!538053))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81922 (= res!639617 (validMask!0 mask!1823))))

(assert (=> start!81922 e!538053))

(assert (=> start!81922 true))

(assert (=> start!81922 tp_is_empty!20933))

(declare-fun array_inv!21581 (array!57991) Bool)

(assert (=> start!81922 (array_inv!21581 _keys!1441)))

(declare-datatypes ((V!32893 0))(
  ( (V!32894 (val!10517 Int)) )
))
(declare-datatypes ((ValueCell!9985 0))(
  ( (ValueCellFull!9985 (v!13072 V!32893)) (EmptyCell!9985) )
))
(declare-datatypes ((array!57993 0))(
  ( (array!57994 (arr!27872 (Array (_ BitVec 32) ValueCell!9985)) (size!28352 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57993)

(declare-fun e!538054 () Bool)

(declare-fun array_inv!21582 (array!57993) Bool)

(assert (=> start!81922 (and (array_inv!21582 _values!1197) e!538054)))

(assert (=> start!81922 tp!63867))

(declare-fun b!954989 () Bool)

(declare-fun res!639622 () Bool)

(assert (=> b!954989 (=> (not res!639622) (not e!538053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57991 (_ BitVec 32)) Bool)

(assert (=> b!954989 (= res!639622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954990 () Bool)

(declare-fun res!639621 () Bool)

(assert (=> b!954990 (=> (not res!639621) (not e!538053))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32893)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32893)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13750 0))(
  ( (tuple2!13751 (_1!6885 (_ BitVec 64)) (_2!6885 V!32893)) )
))
(declare-datatypes ((List!19568 0))(
  ( (Nil!19565) (Cons!19564 (h!20726 tuple2!13750) (t!27937 List!19568)) )
))
(declare-datatypes ((ListLongMap!12461 0))(
  ( (ListLongMap!12462 (toList!6246 List!19568)) )
))
(declare-fun contains!5296 (ListLongMap!12461 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3431 (array!57991 array!57993 (_ BitVec 32) (_ BitVec 32) V!32893 V!32893 (_ BitVec 32) Int) ListLongMap!12461)

(assert (=> b!954990 (= res!639621 (contains!5296 (getCurrentListMap!3431 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27871 _keys!1441) i!735)))))

(declare-fun b!954991 () Bool)

(assert (=> b!954991 (= e!538053 (not true))))

(assert (=> b!954991 (contains!5296 (getCurrentListMap!3431 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27871 _keys!1441) i!735))))

(declare-datatypes ((Unit!32093 0))(
  ( (Unit!32094) )
))
(declare-fun lt!429922 () Unit!32093)

(declare-fun lemmaInListMapFromThenFromZero!3 (array!57991 array!57993 (_ BitVec 32) (_ BitVec 32) V!32893 V!32893 (_ BitVec 32) (_ BitVec 32) Int) Unit!32093)

(assert (=> b!954991 (= lt!429922 (lemmaInListMapFromThenFromZero!3 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!954992 () Bool)

(declare-fun e!538052 () Bool)

(assert (=> b!954992 (= e!538052 tp_is_empty!20933)))

(declare-fun b!954993 () Bool)

(declare-fun res!639620 () Bool)

(assert (=> b!954993 (=> (not res!639620) (not e!538053))))

(assert (=> b!954993 (= res!639620 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28351 _keys!1441))))))

(declare-fun mapNonEmpty!33361 () Bool)

(declare-fun mapRes!33361 () Bool)

(declare-fun tp!63868 () Bool)

(assert (=> mapNonEmpty!33361 (= mapRes!33361 (and tp!63868 e!538056))))

(declare-fun mapValue!33361 () ValueCell!9985)

(declare-fun mapKey!33361 () (_ BitVec 32))

(declare-fun mapRest!33361 () (Array (_ BitVec 32) ValueCell!9985))

(assert (=> mapNonEmpty!33361 (= (arr!27872 _values!1197) (store mapRest!33361 mapKey!33361 mapValue!33361))))

(declare-fun mapIsEmpty!33361 () Bool)

(assert (=> mapIsEmpty!33361 mapRes!33361))

(declare-fun b!954994 () Bool)

(assert (=> b!954994 (= e!538054 (and e!538052 mapRes!33361))))

(declare-fun condMapEmpty!33361 () Bool)

(declare-fun mapDefault!33361 () ValueCell!9985)

