; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79078 () Bool)

(assert start!79078)

(declare-fun b_free!17263 () Bool)

(declare-fun b_next!17263 () Bool)

(assert (=> start!79078 (= b_free!17263 (not b_next!17263))))

(declare-fun tp!60231 () Bool)

(declare-fun b_and!28281 () Bool)

(assert (=> start!79078 (= tp!60231 b_and!28281)))

(declare-fun b!926419 () Bool)

(declare-fun e!520069 () Bool)

(declare-fun e!520071 () Bool)

(assert (=> b!926419 (= e!520069 e!520071)))

(declare-fun res!624250 () Bool)

(assert (=> b!926419 (=> (not res!624250) (not e!520071))))

(declare-datatypes ((V!31327 0))(
  ( (V!31328 (val!9936 Int)) )
))
(declare-datatypes ((tuple2!13068 0))(
  ( (tuple2!13069 (_1!6544 (_ BitVec 64)) (_2!6544 V!31327)) )
))
(declare-datatypes ((List!18900 0))(
  ( (Nil!18897) (Cons!18896 (h!20042 tuple2!13068) (t!26901 List!18900)) )
))
(declare-datatypes ((ListLongMap!11779 0))(
  ( (ListLongMap!11780 (toList!5905 List!18900)) )
))
(declare-fun lt!417283 () ListLongMap!11779)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4926 (ListLongMap!11779 (_ BitVec 64)) Bool)

(assert (=> b!926419 (= res!624250 (contains!4926 lt!417283 k!1099))))

(declare-datatypes ((array!55522 0))(
  ( (array!55523 (arr!26702 (Array (_ BitVec 32) (_ BitVec 64))) (size!27162 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55522)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9404 0))(
  ( (ValueCellFull!9404 (v!12454 V!31327)) (EmptyCell!9404) )
))
(declare-datatypes ((array!55524 0))(
  ( (array!55525 (arr!26703 (Array (_ BitVec 32) ValueCell!9404)) (size!27163 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55524)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31327)

(declare-fun minValue!1173 () V!31327)

(declare-fun getCurrentListMap!3120 (array!55522 array!55524 (_ BitVec 32) (_ BitVec 32) V!31327 V!31327 (_ BitVec 32) Int) ListLongMap!11779)

(assert (=> b!926419 (= lt!417283 (getCurrentListMap!3120 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926420 () Bool)

(declare-fun e!520061 () Bool)

(assert (=> b!926420 (= e!520061 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!624246 () Bool)

(assert (=> start!79078 (=> (not res!624246) (not e!520069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79078 (= res!624246 (validMask!0 mask!1881))))

(assert (=> start!79078 e!520069))

(assert (=> start!79078 true))

(declare-fun tp_is_empty!19771 () Bool)

(assert (=> start!79078 tp_is_empty!19771))

(declare-fun e!520065 () Bool)

(declare-fun array_inv!20784 (array!55524) Bool)

(assert (=> start!79078 (and (array_inv!20784 _values!1231) e!520065)))

(assert (=> start!79078 tp!60231))

(declare-fun array_inv!20785 (array!55522) Bool)

(assert (=> start!79078 (array_inv!20785 _keys!1487)))

(declare-fun b!926421 () Bool)

(declare-fun res!624243 () Bool)

(assert (=> b!926421 (=> (not res!624243) (not e!520069))))

(assert (=> b!926421 (= res!624243 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27162 _keys!1487))))))

(declare-fun b!926422 () Bool)

(declare-fun e!520066 () Bool)

(declare-fun mapRes!31413 () Bool)

(assert (=> b!926422 (= e!520065 (and e!520066 mapRes!31413))))

(declare-fun condMapEmpty!31413 () Bool)

(declare-fun mapDefault!31413 () ValueCell!9404)

