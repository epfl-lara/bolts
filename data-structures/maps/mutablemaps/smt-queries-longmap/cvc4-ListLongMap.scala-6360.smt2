; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81928 () Bool)

(assert start!81928)

(declare-fun b_free!18395 () Bool)

(declare-fun b_next!18395 () Bool)

(assert (=> start!81928 (= b_free!18395 (not b_next!18395))))

(declare-fun tp!63886 () Bool)

(declare-fun b_and!29899 () Bool)

(assert (=> start!81928 (= tp!63886 b_and!29899)))

(declare-fun b!955077 () Bool)

(declare-fun e!538100 () Bool)

(assert (=> b!955077 (= e!538100 (not true))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32901 0))(
  ( (V!32902 (val!10520 Int)) )
))
(declare-fun zeroValue!1139 () V!32901)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58003 0))(
  ( (array!58004 (arr!27877 (Array (_ BitVec 32) (_ BitVec 64))) (size!28357 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58003)

(declare-datatypes ((ValueCell!9988 0))(
  ( (ValueCellFull!9988 (v!13075 V!32901)) (EmptyCell!9988) )
))
(declare-datatypes ((array!58005 0))(
  ( (array!58006 (arr!27878 (Array (_ BitVec 32) ValueCell!9988)) (size!28358 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58005)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32901)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13754 0))(
  ( (tuple2!13755 (_1!6887 (_ BitVec 64)) (_2!6887 V!32901)) )
))
(declare-datatypes ((List!19571 0))(
  ( (Nil!19568) (Cons!19567 (h!20729 tuple2!13754) (t!27940 List!19571)) )
))
(declare-datatypes ((ListLongMap!12465 0))(
  ( (ListLongMap!12466 (toList!6248 List!19571)) )
))
(declare-fun contains!5298 (ListLongMap!12465 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3433 (array!58003 array!58005 (_ BitVec 32) (_ BitVec 32) V!32901 V!32901 (_ BitVec 32) Int) ListLongMap!12465)

(assert (=> b!955077 (contains!5298 (getCurrentListMap!3433 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27877 _keys!1441) i!735))))

(declare-datatypes ((Unit!32097 0))(
  ( (Unit!32098) )
))
(declare-fun lt!429931 () Unit!32097)

(declare-fun lemmaInListMapFromThenFromZero!5 (array!58003 array!58005 (_ BitVec 32) (_ BitVec 32) V!32901 V!32901 (_ BitVec 32) (_ BitVec 32) Int) Unit!32097)

(assert (=> b!955077 (= lt!429931 (lemmaInListMapFromThenFromZero!5 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955078 () Bool)

(declare-fun res!639684 () Bool)

(assert (=> b!955078 (=> (not res!639684) (not e!538100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955078 (= res!639684 (validKeyInArray!0 (select (arr!27877 _keys!1441) i!735)))))

(declare-fun b!955079 () Bool)

(declare-fun e!538099 () Bool)

(declare-fun tp_is_empty!20939 () Bool)

(assert (=> b!955079 (= e!538099 tp_is_empty!20939)))

(declare-fun b!955080 () Bool)

(declare-fun res!639683 () Bool)

(assert (=> b!955080 (=> (not res!639683) (not e!538100))))

(declare-datatypes ((List!19572 0))(
  ( (Nil!19569) (Cons!19568 (h!20730 (_ BitVec 64)) (t!27941 List!19572)) )
))
(declare-fun arrayNoDuplicates!0 (array!58003 (_ BitVec 32) List!19572) Bool)

(assert (=> b!955080 (= res!639683 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19569))))

(declare-fun res!639682 () Bool)

(assert (=> start!81928 (=> (not res!639682) (not e!538100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81928 (= res!639682 (validMask!0 mask!1823))))

(assert (=> start!81928 e!538100))

(assert (=> start!81928 true))

(assert (=> start!81928 tp_is_empty!20939))

(declare-fun array_inv!21585 (array!58003) Bool)

(assert (=> start!81928 (array_inv!21585 _keys!1441)))

(declare-fun e!538097 () Bool)

(declare-fun array_inv!21586 (array!58005) Bool)

(assert (=> start!81928 (and (array_inv!21586 _values!1197) e!538097)))

(assert (=> start!81928 tp!63886))

(declare-fun mapIsEmpty!33370 () Bool)

(declare-fun mapRes!33370 () Bool)

(assert (=> mapIsEmpty!33370 mapRes!33370))

(declare-fun b!955081 () Bool)

(declare-fun res!639685 () Bool)

(assert (=> b!955081 (=> (not res!639685) (not e!538100))))

(assert (=> b!955081 (= res!639685 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28357 _keys!1441))))))

(declare-fun b!955082 () Bool)

(assert (=> b!955082 (= e!538097 (and e!538099 mapRes!33370))))

(declare-fun condMapEmpty!33370 () Bool)

(declare-fun mapDefault!33370 () ValueCell!9988)

