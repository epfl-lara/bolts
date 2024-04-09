; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79384 () Bool)

(assert start!79384)

(declare-fun b_free!17543 () Bool)

(declare-fun b_next!17543 () Bool)

(assert (=> start!79384 (= b_free!17543 (not b_next!17543))))

(declare-fun tp!61073 () Bool)

(declare-fun b_and!28663 () Bool)

(assert (=> start!79384 (= tp!61073 b_and!28663)))

(declare-fun b!931967 () Bool)

(declare-fun res!627767 () Bool)

(declare-fun e!523413 () Bool)

(assert (=> b!931967 (=> (not res!627767) (not e!523413))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931967 (= res!627767 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931968 () Bool)

(declare-fun res!627759 () Bool)

(assert (=> b!931968 (=> (not res!627759) (not e!523413))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31699 0))(
  ( (V!31700 (val!10076 Int)) )
))
(declare-fun v!791 () V!31699)

(declare-datatypes ((tuple2!13304 0))(
  ( (tuple2!13305 (_1!6662 (_ BitVec 64)) (_2!6662 V!31699)) )
))
(declare-datatypes ((List!19118 0))(
  ( (Nil!19115) (Cons!19114 (h!20260 tuple2!13304) (t!27213 List!19118)) )
))
(declare-datatypes ((ListLongMap!12015 0))(
  ( (ListLongMap!12016 (toList!6023 List!19118)) )
))
(declare-fun lt!419699 () ListLongMap!12015)

(declare-fun apply!808 (ListLongMap!12015 (_ BitVec 64)) V!31699)

(assert (=> b!931968 (= res!627759 (= (apply!808 lt!419699 k!1099) v!791))))

(declare-fun b!931969 () Bool)

(declare-fun res!627764 () Bool)

(declare-fun e!523415 () Bool)

(assert (=> b!931969 (=> (not res!627764) (not e!523415))))

(declare-datatypes ((array!56070 0))(
  ( (array!56071 (arr!26975 (Array (_ BitVec 32) (_ BitVec 64))) (size!27435 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56070)

(assert (=> b!931969 (= res!627764 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27435 _keys!1487))))))

(declare-fun b!931970 () Bool)

(declare-fun res!627766 () Bool)

(assert (=> b!931970 (=> (not res!627766) (not e!523413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931970 (= res!627766 (validKeyInArray!0 k!1099))))

(declare-fun b!931971 () Bool)

(declare-fun e!523416 () Bool)

(declare-fun e!523417 () Bool)

(declare-fun mapRes!31836 () Bool)

(assert (=> b!931971 (= e!523416 (and e!523417 mapRes!31836))))

(declare-fun condMapEmpty!31836 () Bool)

(declare-datatypes ((ValueCell!9544 0))(
  ( (ValueCellFull!9544 (v!12595 V!31699)) (EmptyCell!9544) )
))
(declare-datatypes ((array!56072 0))(
  ( (array!56073 (arr!26976 (Array (_ BitVec 32) ValueCell!9544)) (size!27436 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56072)

(declare-fun mapDefault!31836 () ValueCell!9544)

