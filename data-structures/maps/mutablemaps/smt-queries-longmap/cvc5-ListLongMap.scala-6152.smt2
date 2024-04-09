; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79048 () Bool)

(assert start!79048)

(declare-fun b_free!17233 () Bool)

(declare-fun b_next!17233 () Bool)

(assert (=> start!79048 (= b_free!17233 (not b_next!17233))))

(declare-fun tp!60140 () Bool)

(declare-fun b_and!28221 () Bool)

(assert (=> start!79048 (= tp!60140 b_and!28221)))

(declare-fun b!925489 () Bool)

(declare-fun e!519478 () Bool)

(declare-fun e!519486 () Bool)

(assert (=> b!925489 (= e!519478 e!519486)))

(declare-fun res!623754 () Bool)

(assert (=> b!925489 (=> (not res!623754) (not e!519486))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55464 0))(
  ( (array!55465 (arr!26673 (Array (_ BitVec 32) (_ BitVec 64))) (size!27133 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55464)

(assert (=> b!925489 (= res!623754 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27133 _keys!1487)))))

(declare-datatypes ((Unit!31276 0))(
  ( (Unit!31277) )
))
(declare-fun lt!416565 () Unit!31276)

(declare-fun e!519484 () Unit!31276)

(assert (=> b!925489 (= lt!416565 e!519484)))

(declare-fun c!96527 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925489 (= c!96527 (validKeyInArray!0 k!1099))))

(declare-fun b!925490 () Bool)

(declare-fun e!519475 () Bool)

(assert (=> b!925490 (= e!519475 (not true))))

(declare-fun e!519485 () Bool)

(assert (=> b!925490 e!519485))

(declare-fun res!623749 () Bool)

(assert (=> b!925490 (=> (not res!623749) (not e!519485))))

(declare-datatypes ((V!31287 0))(
  ( (V!31288 (val!9921 Int)) )
))
(declare-datatypes ((tuple2!13042 0))(
  ( (tuple2!13043 (_1!6531 (_ BitVec 64)) (_2!6531 V!31287)) )
))
(declare-datatypes ((List!18877 0))(
  ( (Nil!18874) (Cons!18873 (h!20019 tuple2!13042) (t!26848 List!18877)) )
))
(declare-datatypes ((ListLongMap!11753 0))(
  ( (ListLongMap!11754 (toList!5892 List!18877)) )
))
(declare-fun lt!416574 () ListLongMap!11753)

(declare-fun contains!4915 (ListLongMap!11753 (_ BitVec 64)) Bool)

(assert (=> b!925490 (= res!623749 (contains!4915 lt!416574 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9389 0))(
  ( (ValueCellFull!9389 (v!12439 V!31287)) (EmptyCell!9389) )
))
(declare-datatypes ((array!55466 0))(
  ( (array!55467 (arr!26674 (Array (_ BitVec 32) ValueCell!9389)) (size!27134 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55466)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31287)

(declare-fun minValue!1173 () V!31287)

(declare-fun getCurrentListMap!3109 (array!55464 array!55466 (_ BitVec 32) (_ BitVec 32) V!31287 V!31287 (_ BitVec 32) Int) ListLongMap!11753)

(assert (=> b!925490 (= lt!416574 (getCurrentListMap!3109 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31287)

(declare-fun lt!416571 () Unit!31276)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!75 (array!55464 array!55466 (_ BitVec 32) (_ BitVec 32) V!31287 V!31287 (_ BitVec 64) V!31287 (_ BitVec 32) Int) Unit!31276)

(assert (=> b!925490 (= lt!416571 (lemmaListMapApplyFromThenApplyFromZero!75 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!623756 () Bool)

(declare-fun e!519479 () Bool)

(assert (=> start!79048 (=> (not res!623756) (not e!519479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79048 (= res!623756 (validMask!0 mask!1881))))

(assert (=> start!79048 e!519479))

(assert (=> start!79048 true))

(declare-fun tp_is_empty!19741 () Bool)

(assert (=> start!79048 tp_is_empty!19741))

(declare-fun e!519477 () Bool)

(declare-fun array_inv!20766 (array!55466) Bool)

(assert (=> start!79048 (and (array_inv!20766 _values!1231) e!519477)))

(assert (=> start!79048 tp!60140))

(declare-fun array_inv!20767 (array!55464) Bool)

(assert (=> start!79048 (array_inv!20767 _keys!1487)))

(declare-fun mapNonEmpty!31368 () Bool)

(declare-fun mapRes!31368 () Bool)

(declare-fun tp!60141 () Bool)

(declare-fun e!519476 () Bool)

(assert (=> mapNonEmpty!31368 (= mapRes!31368 (and tp!60141 e!519476))))

(declare-fun mapRest!31368 () (Array (_ BitVec 32) ValueCell!9389))

(declare-fun mapValue!31368 () ValueCell!9389)

(declare-fun mapKey!31368 () (_ BitVec 32))

(assert (=> mapNonEmpty!31368 (= (arr!26674 _values!1231) (store mapRest!31368 mapKey!31368 mapValue!31368))))

(declare-fun b!925491 () Bool)

(declare-fun Unit!31278 () Unit!31276)

(assert (=> b!925491 (= e!519484 Unit!31278)))

(declare-fun b!925492 () Bool)

(declare-fun e!519480 () Bool)

(assert (=> b!925492 (= e!519477 (and e!519480 mapRes!31368))))

(declare-fun condMapEmpty!31368 () Bool)

(declare-fun mapDefault!31368 () ValueCell!9389)

