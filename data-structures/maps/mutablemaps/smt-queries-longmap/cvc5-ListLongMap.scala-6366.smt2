; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81960 () Bool)

(assert start!81960)

(declare-fun b_free!18427 () Bool)

(declare-fun b_next!18427 () Bool)

(assert (=> start!81960 (= b_free!18427 (not b_next!18427))))

(declare-fun tp!63982 () Bool)

(declare-fun b_and!29931 () Bool)

(assert (=> start!81960 (= tp!63982 b_and!29931)))

(declare-fun b!955557 () Bool)

(declare-fun e!538338 () Bool)

(declare-fun tp_is_empty!20971 () Bool)

(assert (=> b!955557 (= e!538338 tp_is_empty!20971)))

(declare-fun b!955558 () Bool)

(declare-fun res!640016 () Bool)

(declare-fun e!538339 () Bool)

(assert (=> b!955558 (=> (not res!640016) (not e!538339))))

(declare-datatypes ((array!58067 0))(
  ( (array!58068 (arr!27909 (Array (_ BitVec 32) (_ BitVec 64))) (size!28389 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58067)

(declare-datatypes ((List!19593 0))(
  ( (Nil!19590) (Cons!19589 (h!20751 (_ BitVec 64)) (t!27962 List!19593)) )
))
(declare-fun arrayNoDuplicates!0 (array!58067 (_ BitVec 32) List!19593) Bool)

(assert (=> b!955558 (= res!640016 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19590))))

(declare-fun b!955559 () Bool)

(declare-fun res!640019 () Bool)

(assert (=> b!955559 (=> (not res!640019) (not e!538339))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58067 (_ BitVec 32)) Bool)

(assert (=> b!955559 (= res!640019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33418 () Bool)

(declare-fun mapRes!33418 () Bool)

(assert (=> mapIsEmpty!33418 mapRes!33418))

(declare-fun b!955560 () Bool)

(assert (=> b!955560 (= e!538339 (not true))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32945 0))(
  ( (V!32946 (val!10536 Int)) )
))
(declare-fun zeroValue!1139 () V!32945)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10004 0))(
  ( (ValueCellFull!10004 (v!13091 V!32945)) (EmptyCell!10004) )
))
(declare-datatypes ((array!58069 0))(
  ( (array!58070 (arr!27910 (Array (_ BitVec 32) ValueCell!10004)) (size!28390 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58069)

(declare-fun minValue!1139 () V!32945)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13776 0))(
  ( (tuple2!13777 (_1!6898 (_ BitVec 64)) (_2!6898 V!32945)) )
))
(declare-datatypes ((List!19594 0))(
  ( (Nil!19591) (Cons!19590 (h!20752 tuple2!13776) (t!27963 List!19594)) )
))
(declare-datatypes ((ListLongMap!12487 0))(
  ( (ListLongMap!12488 (toList!6259 List!19594)) )
))
(declare-fun contains!5309 (ListLongMap!12487 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3444 (array!58067 array!58069 (_ BitVec 32) (_ BitVec 32) V!32945 V!32945 (_ BitVec 32) Int) ListLongMap!12487)

(assert (=> b!955560 (contains!5309 (getCurrentListMap!3444 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27909 _keys!1441) i!735))))

(declare-datatypes ((Unit!32115 0))(
  ( (Unit!32116) )
))
(declare-fun lt!429979 () Unit!32115)

(declare-fun lemmaInListMapFromThenFromZero!14 (array!58067 array!58069 (_ BitVec 32) (_ BitVec 32) V!32945 V!32945 (_ BitVec 32) (_ BitVec 32) Int) Unit!32115)

(assert (=> b!955560 (= lt!429979 (lemmaInListMapFromThenFromZero!14 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun mapNonEmpty!33418 () Bool)

(declare-fun tp!63981 () Bool)

(assert (=> mapNonEmpty!33418 (= mapRes!33418 (and tp!63981 e!538338))))

(declare-fun mapKey!33418 () (_ BitVec 32))

(declare-fun mapValue!33418 () ValueCell!10004)

(declare-fun mapRest!33418 () (Array (_ BitVec 32) ValueCell!10004))

(assert (=> mapNonEmpty!33418 (= (arr!27910 _values!1197) (store mapRest!33418 mapKey!33418 mapValue!33418))))

(declare-fun b!955561 () Bool)

(declare-fun res!640020 () Bool)

(assert (=> b!955561 (=> (not res!640020) (not e!538339))))

(assert (=> b!955561 (= res!640020 (and (= (size!28390 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28389 _keys!1441) (size!28390 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955562 () Bool)

(declare-fun e!538337 () Bool)

(declare-fun e!538341 () Bool)

(assert (=> b!955562 (= e!538337 (and e!538341 mapRes!33418))))

(declare-fun condMapEmpty!33418 () Bool)

(declare-fun mapDefault!33418 () ValueCell!10004)

