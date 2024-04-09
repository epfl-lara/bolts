; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81918 () Bool)

(assert start!81918)

(declare-fun b_free!18385 () Bool)

(declare-fun b_next!18385 () Bool)

(assert (=> start!81918 (= b_free!18385 (not b_next!18385))))

(declare-fun tp!63856 () Bool)

(declare-fun b_and!29889 () Bool)

(assert (=> start!81918 (= tp!63856 b_and!29889)))

(declare-fun b!954927 () Bool)

(declare-fun res!639574 () Bool)

(declare-fun e!538024 () Bool)

(assert (=> b!954927 (=> (not res!639574) (not e!538024))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!57983 0))(
  ( (array!57984 (arr!27867 (Array (_ BitVec 32) (_ BitVec 64))) (size!28347 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57983)

(declare-datatypes ((V!32889 0))(
  ( (V!32890 (val!10515 Int)) )
))
(declare-datatypes ((ValueCell!9983 0))(
  ( (ValueCellFull!9983 (v!13070 V!32889)) (EmptyCell!9983) )
))
(declare-datatypes ((array!57985 0))(
  ( (array!57986 (arr!27868 (Array (_ BitVec 32) ValueCell!9983)) (size!28348 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57985)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954927 (= res!639574 (and (= (size!28348 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28347 _keys!1441) (size!28348 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954928 () Bool)

(declare-fun res!639575 () Bool)

(assert (=> b!954928 (=> (not res!639575) (not e!538024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57983 (_ BitVec 32)) Bool)

(assert (=> b!954928 (= res!639575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954929 () Bool)

(assert (=> b!954929 (= e!538024 (not true))))

(declare-fun zeroValue!1139 () V!32889)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32889)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13746 0))(
  ( (tuple2!13747 (_1!6883 (_ BitVec 64)) (_2!6883 V!32889)) )
))
(declare-datatypes ((List!19563 0))(
  ( (Nil!19560) (Cons!19559 (h!20721 tuple2!13746) (t!27932 List!19563)) )
))
(declare-datatypes ((ListLongMap!12457 0))(
  ( (ListLongMap!12458 (toList!6244 List!19563)) )
))
(declare-fun contains!5294 (ListLongMap!12457 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3429 (array!57983 array!57985 (_ BitVec 32) (_ BitVec 32) V!32889 V!32889 (_ BitVec 32) Int) ListLongMap!12457)

(assert (=> b!954929 (contains!5294 (getCurrentListMap!3429 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27867 _keys!1441) i!735))))

(declare-datatypes ((Unit!32089 0))(
  ( (Unit!32090) )
))
(declare-fun lt!429916 () Unit!32089)

(declare-fun lemmaInListMapFromThenFromZero!1 (array!57983 array!57985 (_ BitVec 32) (_ BitVec 32) V!32889 V!32889 (_ BitVec 32) (_ BitVec 32) Int) Unit!32089)

(assert (=> b!954929 (= lt!429916 (lemmaInListMapFromThenFromZero!1 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!954930 () Bool)

(declare-fun e!538025 () Bool)

(declare-fun tp_is_empty!20929 () Bool)

(assert (=> b!954930 (= e!538025 tp_is_empty!20929)))

(declare-fun mapIsEmpty!33355 () Bool)

(declare-fun mapRes!33355 () Bool)

(assert (=> mapIsEmpty!33355 mapRes!33355))

(declare-fun b!954931 () Bool)

(declare-fun res!639576 () Bool)

(assert (=> b!954931 (=> (not res!639576) (not e!538024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954931 (= res!639576 (validKeyInArray!0 (select (arr!27867 _keys!1441) i!735)))))

(declare-fun res!639577 () Bool)

(assert (=> start!81918 (=> (not res!639577) (not e!538024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81918 (= res!639577 (validMask!0 mask!1823))))

(assert (=> start!81918 e!538024))

(assert (=> start!81918 true))

(assert (=> start!81918 tp_is_empty!20929))

(declare-fun array_inv!21577 (array!57983) Bool)

(assert (=> start!81918 (array_inv!21577 _keys!1441)))

(declare-fun e!538022 () Bool)

(declare-fun array_inv!21578 (array!57985) Bool)

(assert (=> start!81918 (and (array_inv!21578 _values!1197) e!538022)))

(assert (=> start!81918 tp!63856))

(declare-fun b!954932 () Bool)

(declare-fun res!639579 () Bool)

(assert (=> b!954932 (=> (not res!639579) (not e!538024))))

(declare-datatypes ((List!19564 0))(
  ( (Nil!19561) (Cons!19560 (h!20722 (_ BitVec 64)) (t!27933 List!19564)) )
))
(declare-fun arrayNoDuplicates!0 (array!57983 (_ BitVec 32) List!19564) Bool)

(assert (=> b!954932 (= res!639579 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19561))))

(declare-fun b!954933 () Bool)

(declare-fun res!639578 () Bool)

(assert (=> b!954933 (=> (not res!639578) (not e!538024))))

(assert (=> b!954933 (= res!639578 (contains!5294 (getCurrentListMap!3429 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27867 _keys!1441) i!735)))))

(declare-fun b!954934 () Bool)

(declare-fun e!538023 () Bool)

(assert (=> b!954934 (= e!538022 (and e!538023 mapRes!33355))))

(declare-fun condMapEmpty!33355 () Bool)

(declare-fun mapDefault!33355 () ValueCell!9983)

