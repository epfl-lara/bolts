; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79432 () Bool)

(assert start!79432)

(declare-fun b_free!17591 () Bool)

(declare-fun b_next!17591 () Bool)

(assert (=> start!79432 (= b_free!17591 (not b_next!17591))))

(declare-fun tp!61218 () Bool)

(declare-fun b_and!28759 () Bool)

(assert (=> start!79432 (= tp!61218 b_and!28759)))

(declare-fun mapIsEmpty!31908 () Bool)

(declare-fun mapRes!31908 () Bool)

(assert (=> mapIsEmpty!31908 mapRes!31908))

(declare-fun b!932951 () Bool)

(declare-fun e!523916 () Bool)

(declare-fun tp_is_empty!20099 () Bool)

(assert (=> b!932951 (= e!523916 tp_is_empty!20099)))

(declare-fun b!932952 () Bool)

(declare-fun res!628484 () Bool)

(declare-fun e!523922 () Bool)

(assert (=> b!932952 (=> (not res!628484) (not e!523922))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932952 (= res!628484 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932953 () Bool)

(declare-fun res!628486 () Bool)

(declare-fun e!523919 () Bool)

(assert (=> b!932953 (=> (not res!628486) (not e!523919))))

(declare-datatypes ((array!56158 0))(
  ( (array!56159 (arr!27019 (Array (_ BitVec 32) (_ BitVec 64))) (size!27479 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56158)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56158 (_ BitVec 32)) Bool)

(assert (=> b!932953 (= res!628486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932954 () Bool)

(assert (=> b!932954 (= e!523919 e!523922)))

(declare-fun res!628481 () Bool)

(assert (=> b!932954 (=> (not res!628481) (not e!523922))))

(declare-datatypes ((V!31763 0))(
  ( (V!31764 (val!10100 Int)) )
))
(declare-datatypes ((tuple2!13344 0))(
  ( (tuple2!13345 (_1!6682 (_ BitVec 64)) (_2!6682 V!31763)) )
))
(declare-datatypes ((List!19151 0))(
  ( (Nil!19148) (Cons!19147 (h!20293 tuple2!13344) (t!27294 List!19151)) )
))
(declare-datatypes ((ListLongMap!12055 0))(
  ( (ListLongMap!12056 (toList!6043 List!19151)) )
))
(declare-fun lt!420174 () ListLongMap!12055)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5042 (ListLongMap!12055 (_ BitVec 64)) Bool)

(assert (=> b!932954 (= res!628481 (contains!5042 lt!420174 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9568 0))(
  ( (ValueCellFull!9568 (v!12619 V!31763)) (EmptyCell!9568) )
))
(declare-datatypes ((array!56160 0))(
  ( (array!56161 (arr!27020 (Array (_ BitVec 32) ValueCell!9568)) (size!27480 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56160)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31763)

(declare-fun minValue!1173 () V!31763)

(declare-fun getCurrentListMap!3235 (array!56158 array!56160 (_ BitVec 32) (_ BitVec 32) V!31763 V!31763 (_ BitVec 32) Int) ListLongMap!12055)

(assert (=> b!932954 (= lt!420174 (getCurrentListMap!3235 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!628487 () Bool)

(assert (=> start!79432 (=> (not res!628487) (not e!523919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79432 (= res!628487 (validMask!0 mask!1881))))

(assert (=> start!79432 e!523919))

(assert (=> start!79432 true))

(assert (=> start!79432 tp_is_empty!20099))

(declare-fun e!523918 () Bool)

(declare-fun array_inv!20996 (array!56160) Bool)

(assert (=> start!79432 (and (array_inv!20996 _values!1231) e!523918)))

(assert (=> start!79432 tp!61218))

(declare-fun array_inv!20997 (array!56158) Bool)

(assert (=> start!79432 (array_inv!20997 _keys!1487)))

(declare-fun mapNonEmpty!31908 () Bool)

(declare-fun tp!61217 () Bool)

(assert (=> mapNonEmpty!31908 (= mapRes!31908 (and tp!61217 e!523916))))

(declare-fun mapRest!31908 () (Array (_ BitVec 32) ValueCell!9568))

(declare-fun mapKey!31908 () (_ BitVec 32))

(declare-fun mapValue!31908 () ValueCell!9568)

(assert (=> mapNonEmpty!31908 (= (arr!27020 _values!1231) (store mapRest!31908 mapKey!31908 mapValue!31908))))

(declare-fun b!932955 () Bool)

(declare-fun e!523921 () Bool)

(assert (=> b!932955 (= e!523922 e!523921)))

(declare-fun res!628480 () Bool)

(assert (=> b!932955 (=> (not res!628480) (not e!523921))))

(declare-fun lt!420178 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932955 (= res!628480 (validKeyInArray!0 lt!420178))))

(assert (=> b!932955 (= lt!420178 (select (arr!27019 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932956 () Bool)

(declare-fun res!628483 () Bool)

(assert (=> b!932956 (=> (not res!628483) (not e!523919))))

(assert (=> b!932956 (= res!628483 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27479 _keys!1487))))))

(declare-fun b!932957 () Bool)

(declare-fun res!628479 () Bool)

(assert (=> b!932957 (=> (not res!628479) (not e!523922))))

(declare-fun v!791 () V!31763)

(declare-fun apply!827 (ListLongMap!12055 (_ BitVec 64)) V!31763)

(assert (=> b!932957 (= res!628479 (= (apply!827 lt!420174 k!1099) v!791))))

(declare-fun b!932958 () Bool)

(declare-fun res!628482 () Bool)

(assert (=> b!932958 (=> (not res!628482) (not e!523919))))

(declare-datatypes ((List!19152 0))(
  ( (Nil!19149) (Cons!19148 (h!20294 (_ BitVec 64)) (t!27295 List!19152)) )
))
(declare-fun arrayNoDuplicates!0 (array!56158 (_ BitVec 32) List!19152) Bool)

(assert (=> b!932958 (= res!628482 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19149))))

(declare-fun b!932959 () Bool)

(declare-fun e!523917 () Bool)

(assert (=> b!932959 (= e!523917 tp_is_empty!20099)))

(declare-fun b!932960 () Bool)

(declare-fun res!628485 () Bool)

(assert (=> b!932960 (=> (not res!628485) (not e!523919))))

(assert (=> b!932960 (= res!628485 (and (= (size!27480 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27479 _keys!1487) (size!27480 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932961 () Bool)

(declare-fun res!628478 () Bool)

(assert (=> b!932961 (=> (not res!628478) (not e!523922))))

(assert (=> b!932961 (= res!628478 (validKeyInArray!0 k!1099))))

(declare-fun b!932962 () Bool)

(assert (=> b!932962 (= e!523921 (not true))))

(assert (=> b!932962 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19149)))

(declare-datatypes ((Unit!31480 0))(
  ( (Unit!31481) )
))
(declare-fun lt!420176 () Unit!31480)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56158 (_ BitVec 32) (_ BitVec 32)) Unit!31480)

(assert (=> b!932962 (= lt!420176 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420177 () tuple2!13344)

(declare-fun +!2746 (ListLongMap!12055 tuple2!13344) ListLongMap!12055)

(assert (=> b!932962 (contains!5042 (+!2746 lt!420174 lt!420177) k!1099)))

(declare-fun lt!420173 () V!31763)

(declare-fun lt!420175 () Unit!31480)

(declare-fun addStillContains!502 (ListLongMap!12055 (_ BitVec 64) V!31763 (_ BitVec 64)) Unit!31480)

(assert (=> b!932962 (= lt!420175 (addStillContains!502 lt!420174 lt!420178 lt!420173 k!1099))))

(assert (=> b!932962 (= (getCurrentListMap!3235 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2746 (getCurrentListMap!3235 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420177))))

(assert (=> b!932962 (= lt!420177 (tuple2!13345 lt!420178 lt!420173))))

(declare-fun get!14224 (ValueCell!9568 V!31763) V!31763)

(declare-fun dynLambda!1585 (Int (_ BitVec 64)) V!31763)

(assert (=> b!932962 (= lt!420173 (get!14224 (select (arr!27020 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1585 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420172 () Unit!31480)

(declare-fun lemmaListMapRecursiveValidKeyArray!181 (array!56158 array!56160 (_ BitVec 32) (_ BitVec 32) V!31763 V!31763 (_ BitVec 32) Int) Unit!31480)

(assert (=> b!932962 (= lt!420172 (lemmaListMapRecursiveValidKeyArray!181 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932963 () Bool)

(assert (=> b!932963 (= e!523918 (and e!523917 mapRes!31908))))

(declare-fun condMapEmpty!31908 () Bool)

(declare-fun mapDefault!31908 () ValueCell!9568)

