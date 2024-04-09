; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81946 () Bool)

(assert start!81946)

(declare-fun b_free!18413 () Bool)

(declare-fun b_next!18413 () Bool)

(assert (=> start!81946 (= b_free!18413 (not b_next!18413))))

(declare-fun tp!63939 () Bool)

(declare-fun b_and!29917 () Bool)

(assert (=> start!81946 (= tp!63939 b_and!29917)))

(declare-fun res!639869 () Bool)

(declare-fun e!538234 () Bool)

(assert (=> start!81946 (=> (not res!639869) (not e!538234))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81946 (= res!639869 (validMask!0 mask!1823))))

(assert (=> start!81946 e!538234))

(assert (=> start!81946 true))

(declare-fun tp_is_empty!20957 () Bool)

(assert (=> start!81946 tp_is_empty!20957))

(declare-datatypes ((array!58039 0))(
  ( (array!58040 (arr!27895 (Array (_ BitVec 32) (_ BitVec 64))) (size!28375 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58039)

(declare-fun array_inv!21597 (array!58039) Bool)

(assert (=> start!81946 (array_inv!21597 _keys!1441)))

(declare-datatypes ((V!32925 0))(
  ( (V!32926 (val!10529 Int)) )
))
(declare-datatypes ((ValueCell!9997 0))(
  ( (ValueCellFull!9997 (v!13084 V!32925)) (EmptyCell!9997) )
))
(declare-datatypes ((array!58041 0))(
  ( (array!58042 (arr!27896 (Array (_ BitVec 32) ValueCell!9997)) (size!28376 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58041)

(declare-fun e!538235 () Bool)

(declare-fun array_inv!21598 (array!58041) Bool)

(assert (=> start!81946 (and (array_inv!21598 _values!1197) e!538235)))

(assert (=> start!81946 tp!63939))

(declare-fun b!955347 () Bool)

(declare-fun e!538232 () Bool)

(assert (=> b!955347 (= e!538232 tp_is_empty!20957)))

(declare-fun b!955348 () Bool)

(declare-fun e!538236 () Bool)

(assert (=> b!955348 (= e!538236 tp_is_empty!20957)))

(declare-fun b!955349 () Bool)

(declare-fun res!639871 () Bool)

(assert (=> b!955349 (=> (not res!639871) (not e!538234))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955349 (= res!639871 (validKeyInArray!0 (select (arr!27895 _keys!1441) i!735)))))

(declare-fun b!955350 () Bool)

(declare-fun res!639870 () Bool)

(assert (=> b!955350 (=> (not res!639870) (not e!538234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58039 (_ BitVec 32)) Bool)

(assert (=> b!955350 (= res!639870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955351 () Bool)

(assert (=> b!955351 (= e!538234 (not true))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32925)

(declare-fun minValue!1139 () V!32925)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13764 0))(
  ( (tuple2!13765 (_1!6892 (_ BitVec 64)) (_2!6892 V!32925)) )
))
(declare-datatypes ((List!19583 0))(
  ( (Nil!19580) (Cons!19579 (h!20741 tuple2!13764) (t!27952 List!19583)) )
))
(declare-datatypes ((ListLongMap!12475 0))(
  ( (ListLongMap!12476 (toList!6253 List!19583)) )
))
(declare-fun contains!5303 (ListLongMap!12475 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3438 (array!58039 array!58041 (_ BitVec 32) (_ BitVec 32) V!32925 V!32925 (_ BitVec 32) Int) ListLongMap!12475)

(assert (=> b!955351 (contains!5303 (getCurrentListMap!3438 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27895 _keys!1441) i!735))))

(declare-datatypes ((Unit!32107 0))(
  ( (Unit!32108) )
))
(declare-fun lt!429958 () Unit!32107)

(declare-fun lemmaInListMapFromThenFromZero!10 (array!58039 array!58041 (_ BitVec 32) (_ BitVec 32) V!32925 V!32925 (_ BitVec 32) (_ BitVec 32) Int) Unit!32107)

(assert (=> b!955351 (= lt!429958 (lemmaInListMapFromThenFromZero!10 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun mapNonEmpty!33397 () Bool)

(declare-fun mapRes!33397 () Bool)

(declare-fun tp!63940 () Bool)

(assert (=> mapNonEmpty!33397 (= mapRes!33397 (and tp!63940 e!538232))))

(declare-fun mapKey!33397 () (_ BitVec 32))

(declare-fun mapValue!33397 () ValueCell!9997)

(declare-fun mapRest!33397 () (Array (_ BitVec 32) ValueCell!9997))

(assert (=> mapNonEmpty!33397 (= (arr!27896 _values!1197) (store mapRest!33397 mapKey!33397 mapValue!33397))))

(declare-fun b!955352 () Bool)

(declare-fun res!639872 () Bool)

(assert (=> b!955352 (=> (not res!639872) (not e!538234))))

(assert (=> b!955352 (= res!639872 (contains!5303 (getCurrentListMap!3438 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27895 _keys!1441) i!735)))))

(declare-fun b!955353 () Bool)

(declare-fun res!639873 () Bool)

(assert (=> b!955353 (=> (not res!639873) (not e!538234))))

(assert (=> b!955353 (= res!639873 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28375 _keys!1441))))))

(declare-fun mapIsEmpty!33397 () Bool)

(assert (=> mapIsEmpty!33397 mapRes!33397))

(declare-fun b!955354 () Bool)

(assert (=> b!955354 (= e!538235 (and e!538236 mapRes!33397))))

(declare-fun condMapEmpty!33397 () Bool)

(declare-fun mapDefault!33397 () ValueCell!9997)

