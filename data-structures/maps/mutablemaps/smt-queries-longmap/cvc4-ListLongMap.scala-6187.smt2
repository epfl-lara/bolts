; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79262 () Bool)

(assert start!79262)

(declare-fun b_free!17447 () Bool)

(declare-fun b_next!17447 () Bool)

(assert (=> start!79262 (= b_free!17447 (not b_next!17447))))

(declare-fun tp!60783 () Bool)

(declare-fun b_and!28531 () Bool)

(assert (=> start!79262 (= tp!60783 b_and!28531)))

(declare-fun mapNonEmpty!31689 () Bool)

(declare-fun mapRes!31689 () Bool)

(declare-fun tp!60782 () Bool)

(declare-fun e!522398 () Bool)

(assert (=> mapNonEmpty!31689 (= mapRes!31689 (and tp!60782 e!522398))))

(declare-datatypes ((V!31571 0))(
  ( (V!31572 (val!10028 Int)) )
))
(declare-datatypes ((ValueCell!9496 0))(
  ( (ValueCellFull!9496 (v!12546 V!31571)) (EmptyCell!9496) )
))
(declare-fun mapValue!31689 () ValueCell!9496)

(declare-fun mapRest!31689 () (Array (_ BitVec 32) ValueCell!9496))

(declare-fun mapKey!31689 () (_ BitVec 32))

(declare-datatypes ((array!55880 0))(
  ( (array!55881 (arr!26881 (Array (_ BitVec 32) ValueCell!9496)) (size!27341 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55880)

(assert (=> mapNonEmpty!31689 (= (arr!26881 _values!1231) (store mapRest!31689 mapKey!31689 mapValue!31689))))

(declare-fun b!930234 () Bool)

(declare-fun tp_is_empty!19955 () Bool)

(assert (=> b!930234 (= e!522398 tp_is_empty!19955)))

(declare-fun b!930235 () Bool)

(declare-fun e!522395 () Bool)

(declare-fun e!522399 () Bool)

(assert (=> b!930235 (= e!522395 e!522399)))

(declare-fun res!626583 () Bool)

(assert (=> b!930235 (=> (not res!626583) (not e!522399))))

(declare-datatypes ((tuple2!13222 0))(
  ( (tuple2!13223 (_1!6621 (_ BitVec 64)) (_2!6621 V!31571)) )
))
(declare-datatypes ((List!19043 0))(
  ( (Nil!19040) (Cons!19039 (h!20185 tuple2!13222) (t!27108 List!19043)) )
))
(declare-datatypes ((ListLongMap!11933 0))(
  ( (ListLongMap!11934 (toList!5982 List!19043)) )
))
(declare-fun lt!419174 () ListLongMap!11933)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4995 (ListLongMap!11933 (_ BitVec 64)) Bool)

(assert (=> b!930235 (= res!626583 (contains!4995 lt!419174 k!1099))))

(declare-datatypes ((array!55882 0))(
  ( (array!55883 (arr!26882 (Array (_ BitVec 32) (_ BitVec 64))) (size!27342 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55882)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31571)

(declare-fun minValue!1173 () V!31571)

(declare-fun getCurrentListMap!3189 (array!55882 array!55880 (_ BitVec 32) (_ BitVec 32) V!31571 V!31571 (_ BitVec 32) Int) ListLongMap!11933)

(assert (=> b!930235 (= lt!419174 (getCurrentListMap!3189 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930236 () Bool)

(assert (=> b!930236 (= e!522399 false)))

(declare-fun lt!419175 () V!31571)

(declare-fun apply!770 (ListLongMap!11933 (_ BitVec 64)) V!31571)

(assert (=> b!930236 (= lt!419175 (apply!770 lt!419174 k!1099))))

(declare-fun res!626584 () Bool)

(assert (=> start!79262 (=> (not res!626584) (not e!522395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79262 (= res!626584 (validMask!0 mask!1881))))

(assert (=> start!79262 e!522395))

(assert (=> start!79262 true))

(declare-fun e!522394 () Bool)

(declare-fun array_inv!20906 (array!55880) Bool)

(assert (=> start!79262 (and (array_inv!20906 _values!1231) e!522394)))

(assert (=> start!79262 tp!60783))

(declare-fun array_inv!20907 (array!55882) Bool)

(assert (=> start!79262 (array_inv!20907 _keys!1487)))

(assert (=> start!79262 tp_is_empty!19955))

(declare-fun b!930237 () Bool)

(declare-fun res!626581 () Bool)

(assert (=> b!930237 (=> (not res!626581) (not e!522395))))

(assert (=> b!930237 (= res!626581 (and (= (size!27341 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27342 _keys!1487) (size!27341 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930238 () Bool)

(declare-fun e!522397 () Bool)

(assert (=> b!930238 (= e!522394 (and e!522397 mapRes!31689))))

(declare-fun condMapEmpty!31689 () Bool)

(declare-fun mapDefault!31689 () ValueCell!9496)

