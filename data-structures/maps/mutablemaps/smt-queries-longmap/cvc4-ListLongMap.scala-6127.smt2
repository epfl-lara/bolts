; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78902 () Bool)

(assert start!78902)

(declare-fun b_free!17087 () Bool)

(declare-fun b_next!17087 () Bool)

(assert (=> start!78902 (= b_free!17087 (not b_next!17087))))

(declare-fun tp!59702 () Bool)

(declare-fun b_and!27929 () Bool)

(assert (=> start!78902 (= tp!59702 b_and!27929)))

(declare-fun b!921613 () Bool)

(declare-fun res!621635 () Bool)

(declare-fun e!517185 () Bool)

(assert (=> b!921613 (=> (not res!621635) (not e!517185))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921613 (= res!621635 (validKeyInArray!0 k!1099))))

(declare-fun b!921614 () Bool)

(declare-fun res!621631 () Bool)

(declare-fun e!517183 () Bool)

(assert (=> b!921614 (=> (not res!621631) (not e!517183))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31091 0))(
  ( (V!31092 (val!9848 Int)) )
))
(declare-datatypes ((ValueCell!9316 0))(
  ( (ValueCellFull!9316 (v!12366 V!31091)) (EmptyCell!9316) )
))
(declare-datatypes ((array!55178 0))(
  ( (array!55179 (arr!26530 (Array (_ BitVec 32) ValueCell!9316)) (size!26990 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55178)

(declare-datatypes ((array!55180 0))(
  ( (array!55181 (arr!26531 (Array (_ BitVec 32) (_ BitVec 64))) (size!26991 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55180)

(assert (=> b!921614 (= res!621631 (and (= (size!26990 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26991 _keys!1487) (size!26990 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!921615 () Bool)

(declare-fun e!517187 () Bool)

(declare-fun arrayContainsKey!0 (array!55180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921615 (= e!517187 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!921616 () Bool)

(declare-fun res!621632 () Bool)

(assert (=> b!921616 (=> (not res!621632) (not e!517183))))

(assert (=> b!921616 (= res!621632 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26991 _keys!1487))))))

(declare-fun b!921617 () Bool)

(assert (=> b!921617 (= e!517183 e!517185)))

(declare-fun res!621625 () Bool)

(assert (=> b!921617 (=> (not res!621625) (not e!517185))))

(declare-datatypes ((tuple2!12906 0))(
  ( (tuple2!12907 (_1!6463 (_ BitVec 64)) (_2!6463 V!31091)) )
))
(declare-datatypes ((List!18747 0))(
  ( (Nil!18744) (Cons!18743 (h!19889 tuple2!12906) (t!26572 List!18747)) )
))
(declare-datatypes ((ListLongMap!11617 0))(
  ( (ListLongMap!11618 (toList!5824 List!18747)) )
))
(declare-fun lt!413800 () ListLongMap!11617)

(declare-fun contains!4852 (ListLongMap!11617 (_ BitVec 64)) Bool)

(assert (=> b!921617 (= res!621625 (contains!4852 lt!413800 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31091)

(declare-fun minValue!1173 () V!31091)

(declare-fun getCurrentListMap!3046 (array!55180 array!55178 (_ BitVec 32) (_ BitVec 32) V!31091 V!31091 (_ BitVec 32) Int) ListLongMap!11617)

(assert (=> b!921617 (= lt!413800 (getCurrentListMap!3046 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921618 () Bool)

(declare-fun e!517181 () Bool)

(declare-fun tp_is_empty!19595 () Bool)

(assert (=> b!921618 (= e!517181 tp_is_empty!19595)))

(declare-fun b!921619 () Bool)

(declare-fun e!517186 () Bool)

(declare-fun mapRes!31149 () Bool)

(assert (=> b!921619 (= e!517186 (and e!517181 mapRes!31149))))

(declare-fun condMapEmpty!31149 () Bool)

(declare-fun mapDefault!31149 () ValueCell!9316)

