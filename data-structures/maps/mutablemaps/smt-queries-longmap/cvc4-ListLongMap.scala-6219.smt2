; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79512 () Bool)

(assert start!79512)

(declare-fun b_free!17639 () Bool)

(declare-fun b_next!17639 () Bool)

(assert (=> start!79512 (= b_free!17639 (not b_next!17639))))

(declare-fun tp!61364 () Bool)

(declare-fun b_and!28863 () Bool)

(assert (=> start!79512 (= tp!61364 b_and!28863)))

(declare-fun b!934174 () Bool)

(declare-fun res!629288 () Bool)

(declare-fun e!524571 () Bool)

(assert (=> b!934174 (=> (not res!629288) (not e!524571))))

(declare-datatypes ((array!56252 0))(
  ( (array!56253 (arr!27065 (Array (_ BitVec 32) (_ BitVec 64))) (size!27525 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56252)

(declare-datatypes ((List!19191 0))(
  ( (Nil!19188) (Cons!19187 (h!20333 (_ BitVec 64)) (t!27382 List!19191)) )
))
(declare-fun arrayNoDuplicates!0 (array!56252 (_ BitVec 32) List!19191) Bool)

(assert (=> b!934174 (= res!629288 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19188))))

(declare-fun b!934175 () Bool)

(declare-fun e!524576 () Bool)

(declare-fun tp_is_empty!20147 () Bool)

(assert (=> b!934175 (= e!524576 tp_is_empty!20147)))

(declare-fun b!934176 () Bool)

(declare-fun res!629289 () Bool)

(declare-fun e!524573 () Bool)

(assert (=> b!934176 (=> (not res!629289) (not e!524573))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934176 (= res!629289 (validKeyInArray!0 k!1099))))

(declare-fun b!934177 () Bool)

(declare-fun res!629285 () Bool)

(assert (=> b!934177 (=> (not res!629285) (not e!524571))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31827 0))(
  ( (V!31828 (val!10124 Int)) )
))
(declare-datatypes ((ValueCell!9592 0))(
  ( (ValueCellFull!9592 (v!12644 V!31827)) (EmptyCell!9592) )
))
(declare-datatypes ((array!56254 0))(
  ( (array!56255 (arr!27066 (Array (_ BitVec 32) ValueCell!9592)) (size!27526 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56254)

(assert (=> b!934177 (= res!629285 (and (= (size!27526 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27525 _keys!1487) (size!27526 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934178 () Bool)

(declare-fun res!629287 () Bool)

(assert (=> b!934178 (=> (not res!629287) (not e!524571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56252 (_ BitVec 32)) Bool)

(assert (=> b!934178 (= res!629287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!629284 () Bool)

(assert (=> start!79512 (=> (not res!629284) (not e!524571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79512 (= res!629284 (validMask!0 mask!1881))))

(assert (=> start!79512 e!524571))

(assert (=> start!79512 true))

(assert (=> start!79512 tp_is_empty!20147))

(declare-fun e!524574 () Bool)

(declare-fun array_inv!21016 (array!56254) Bool)

(assert (=> start!79512 (and (array_inv!21016 _values!1231) e!524574)))

(assert (=> start!79512 tp!61364))

(declare-fun array_inv!21017 (array!56252) Bool)

(assert (=> start!79512 (array_inv!21017 _keys!1487)))

(declare-fun b!934179 () Bool)

(declare-fun e!524572 () Bool)

(assert (=> b!934179 (= e!524572 tp_is_empty!20147)))

(declare-fun b!934180 () Bool)

(declare-fun e!524575 () Bool)

(assert (=> b!934180 (= e!524575 (not true))))

(declare-fun e!524570 () Bool)

(assert (=> b!934180 e!524570))

(declare-fun c!97067 () Bool)

(assert (=> b!934180 (= c!97067 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((Unit!31517 0))(
  ( (Unit!31518) )
))
(declare-fun lt!420870 () Unit!31517)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31827)

(declare-fun minValue!1173 () V!31827)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!275 (array!56252 array!56254 (_ BitVec 32) (_ BitVec 32) V!31827 V!31827 (_ BitVec 64) (_ BitVec 32) Int) Unit!31517)

(assert (=> b!934180 (= lt!420870 (lemmaListMapContainsThenArrayContainsFrom!275 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934180 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19188)))

(declare-fun lt!420867 () Unit!31517)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56252 (_ BitVec 32) (_ BitVec 32)) Unit!31517)

(assert (=> b!934180 (= lt!420867 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13384 0))(
  ( (tuple2!13385 (_1!6702 (_ BitVec 64)) (_2!6702 V!31827)) )
))
(declare-datatypes ((List!19192 0))(
  ( (Nil!19189) (Cons!19188 (h!20334 tuple2!13384) (t!27383 List!19192)) )
))
(declare-datatypes ((ListLongMap!12095 0))(
  ( (ListLongMap!12096 (toList!6063 List!19192)) )
))
(declare-fun lt!420871 () ListLongMap!12095)

(declare-fun lt!420865 () tuple2!13384)

(declare-fun contains!5064 (ListLongMap!12095 (_ BitVec 64)) Bool)

(declare-fun +!2762 (ListLongMap!12095 tuple2!13384) ListLongMap!12095)

(assert (=> b!934180 (contains!5064 (+!2762 lt!420871 lt!420865) k!1099)))

(declare-fun lt!420869 () Unit!31517)

(declare-fun lt!420868 () (_ BitVec 64))

(declare-fun lt!420872 () V!31827)

(declare-fun addStillContains!518 (ListLongMap!12095 (_ BitVec 64) V!31827 (_ BitVec 64)) Unit!31517)

(assert (=> b!934180 (= lt!420869 (addStillContains!518 lt!420871 lt!420868 lt!420872 k!1099))))

(declare-fun getCurrentListMap!3255 (array!56252 array!56254 (_ BitVec 32) (_ BitVec 32) V!31827 V!31827 (_ BitVec 32) Int) ListLongMap!12095)

(assert (=> b!934180 (= (getCurrentListMap!3255 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2762 (getCurrentListMap!3255 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420865))))

(assert (=> b!934180 (= lt!420865 (tuple2!13385 lt!420868 lt!420872))))

(declare-fun get!14259 (ValueCell!9592 V!31827) V!31827)

(declare-fun dynLambda!1601 (Int (_ BitVec 64)) V!31827)

(assert (=> b!934180 (= lt!420872 (get!14259 (select (arr!27066 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1601 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420866 () Unit!31517)

(declare-fun lemmaListMapRecursiveValidKeyArray!197 (array!56252 array!56254 (_ BitVec 32) (_ BitVec 32) V!31827 V!31827 (_ BitVec 32) Int) Unit!31517)

(assert (=> b!934180 (= lt!420866 (lemmaListMapRecursiveValidKeyArray!197 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934181 () Bool)

(declare-fun arrayContainsKey!0 (array!56252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934181 (= e!524570 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapIsEmpty!31983 () Bool)

(declare-fun mapRes!31983 () Bool)

(assert (=> mapIsEmpty!31983 mapRes!31983))

(declare-fun b!934182 () Bool)

(declare-fun res!629291 () Bool)

(assert (=> b!934182 (=> (not res!629291) (not e!524571))))

(assert (=> b!934182 (= res!629291 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27525 _keys!1487))))))

(declare-fun b!934183 () Bool)

(declare-fun res!629283 () Bool)

(assert (=> b!934183 (=> (not res!629283) (not e!524573))))

(declare-fun v!791 () V!31827)

(declare-fun apply!843 (ListLongMap!12095 (_ BitVec 64)) V!31827)

(assert (=> b!934183 (= res!629283 (= (apply!843 lt!420871 k!1099) v!791))))

(declare-fun b!934184 () Bool)

(assert (=> b!934184 (= e!524570 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!934185 () Bool)

(assert (=> b!934185 (= e!524571 e!524573)))

(declare-fun res!629290 () Bool)

(assert (=> b!934185 (=> (not res!629290) (not e!524573))))

(assert (=> b!934185 (= res!629290 (contains!5064 lt!420871 k!1099))))

(assert (=> b!934185 (= lt!420871 (getCurrentListMap!3255 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934186 () Bool)

(assert (=> b!934186 (= e!524573 e!524575)))

(declare-fun res!629286 () Bool)

(assert (=> b!934186 (=> (not res!629286) (not e!524575))))

(assert (=> b!934186 (= res!629286 (validKeyInArray!0 lt!420868))))

(assert (=> b!934186 (= lt!420868 (select (arr!27065 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!31983 () Bool)

(declare-fun tp!61365 () Bool)

(assert (=> mapNonEmpty!31983 (= mapRes!31983 (and tp!61365 e!524576))))

(declare-fun mapRest!31983 () (Array (_ BitVec 32) ValueCell!9592))

(declare-fun mapKey!31983 () (_ BitVec 32))

(declare-fun mapValue!31983 () ValueCell!9592)

(assert (=> mapNonEmpty!31983 (= (arr!27066 _values!1231) (store mapRest!31983 mapKey!31983 mapValue!31983))))

(declare-fun b!934187 () Bool)

(assert (=> b!934187 (= e!524574 (and e!524572 mapRes!31983))))

(declare-fun condMapEmpty!31983 () Bool)

(declare-fun mapDefault!31983 () ValueCell!9592)

