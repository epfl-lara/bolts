; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78878 () Bool)

(assert start!78878)

(declare-fun b_free!17063 () Bool)

(declare-fun b_next!17063 () Bool)

(assert (=> start!78878 (= b_free!17063 (not b_next!17063))))

(declare-fun tp!59631 () Bool)

(declare-fun b_and!27881 () Bool)

(assert (=> start!78878 (= tp!59631 b_and!27881)))

(declare-fun b!920942 () Bool)

(declare-fun e!516859 () Bool)

(declare-fun e!516861 () Bool)

(assert (=> b!920942 (= e!516859 e!516861)))

(declare-fun res!621167 () Bool)

(assert (=> b!920942 (=> (not res!621167) (not e!516861))))

(declare-datatypes ((V!31059 0))(
  ( (V!31060 (val!9836 Int)) )
))
(declare-datatypes ((tuple2!12888 0))(
  ( (tuple2!12889 (_1!6454 (_ BitVec 64)) (_2!6454 V!31059)) )
))
(declare-datatypes ((List!18730 0))(
  ( (Nil!18727) (Cons!18726 (h!19872 tuple2!12888) (t!26531 List!18730)) )
))
(declare-datatypes ((ListLongMap!11599 0))(
  ( (ListLongMap!11600 (toList!5815 List!18730)) )
))
(declare-fun lt!413476 () ListLongMap!11599)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4836 (ListLongMap!11599 (_ BitVec 64)) Bool)

(assert (=> b!920942 (= res!621167 (contains!4836 lt!413476 k!1099))))

(declare-datatypes ((array!55134 0))(
  ( (array!55135 (arr!26508 (Array (_ BitVec 32) (_ BitVec 64))) (size!26968 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55134)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9304 0))(
  ( (ValueCellFull!9304 (v!12354 V!31059)) (EmptyCell!9304) )
))
(declare-datatypes ((array!55136 0))(
  ( (array!55137 (arr!26509 (Array (_ BitVec 32) ValueCell!9304)) (size!26969 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55136)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31059)

(declare-fun minValue!1173 () V!31059)

(declare-fun getCurrentListMap!3037 (array!55134 array!55136 (_ BitVec 32) (_ BitVec 32) V!31059 V!31059 (_ BitVec 32) Int) ListLongMap!11599)

(assert (=> b!920942 (= lt!413476 (getCurrentListMap!3037 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920943 () Bool)

(declare-fun res!621163 () Bool)

(assert (=> b!920943 (=> (not res!621163) (not e!516859))))

(assert (=> b!920943 (= res!621163 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26968 _keys!1487))))))

(declare-fun mapNonEmpty!31113 () Bool)

(declare-fun mapRes!31113 () Bool)

(declare-fun tp!59630 () Bool)

(declare-fun e!516856 () Bool)

(assert (=> mapNonEmpty!31113 (= mapRes!31113 (and tp!59630 e!516856))))

(declare-fun mapRest!31113 () (Array (_ BitVec 32) ValueCell!9304))

(declare-fun mapKey!31113 () (_ BitVec 32))

(declare-fun mapValue!31113 () ValueCell!9304)

(assert (=> mapNonEmpty!31113 (= (arr!26509 _values!1231) (store mapRest!31113 mapKey!31113 mapValue!31113))))

(declare-fun mapIsEmpty!31113 () Bool)

(assert (=> mapIsEmpty!31113 mapRes!31113))

(declare-fun b!920944 () Bool)

(declare-fun res!621160 () Bool)

(assert (=> b!920944 (=> (not res!621160) (not e!516859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55134 (_ BitVec 32)) Bool)

(assert (=> b!920944 (= res!621160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920945 () Bool)

(declare-fun tp_is_empty!19571 () Bool)

(assert (=> b!920945 (= e!516856 tp_is_empty!19571)))

(declare-fun b!920946 () Bool)

(declare-fun e!516862 () Bool)

(assert (=> b!920946 (= e!516861 e!516862)))

(declare-fun res!621162 () Bool)

(assert (=> b!920946 (=> (not res!621162) (not e!516862))))

(declare-fun lt!413475 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920946 (= res!621162 (validKeyInArray!0 lt!413475))))

(assert (=> b!920946 (= lt!413475 (select (arr!26508 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920947 () Bool)

(declare-fun e!516863 () Bool)

(declare-fun e!516858 () Bool)

(assert (=> b!920947 (= e!516863 (and e!516858 mapRes!31113))))

(declare-fun condMapEmpty!31113 () Bool)

(declare-fun mapDefault!31113 () ValueCell!9304)

