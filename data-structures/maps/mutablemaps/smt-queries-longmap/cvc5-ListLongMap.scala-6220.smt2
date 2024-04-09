; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79514 () Bool)

(assert start!79514)

(declare-fun b_free!17641 () Bool)

(declare-fun b_next!17641 () Bool)

(assert (=> start!79514 (= b_free!17641 (not b_next!17641))))

(declare-fun tp!61371 () Bool)

(declare-fun b_and!28867 () Bool)

(assert (=> start!79514 (= tp!61371 b_and!28867)))

(declare-fun b!934221 () Bool)

(declare-fun res!629321 () Bool)

(declare-fun e!524600 () Bool)

(assert (=> b!934221 (=> (not res!629321) (not e!524600))))

(declare-datatypes ((array!56256 0))(
  ( (array!56257 (arr!27067 (Array (_ BitVec 32) (_ BitVec 64))) (size!27527 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56256)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56256 (_ BitVec 32)) Bool)

(assert (=> b!934221 (= res!629321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934222 () Bool)

(declare-fun res!629314 () Bool)

(assert (=> b!934222 (=> (not res!629314) (not e!524600))))

(declare-datatypes ((List!19193 0))(
  ( (Nil!19190) (Cons!19189 (h!20335 (_ BitVec 64)) (t!27386 List!19193)) )
))
(declare-fun arrayNoDuplicates!0 (array!56256 (_ BitVec 32) List!19193) Bool)

(assert (=> b!934222 (= res!629314 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19190))))

(declare-fun b!934223 () Bool)

(declare-fun res!629319 () Bool)

(assert (=> b!934223 (=> (not res!629319) (not e!524600))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!934223 (= res!629319 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27527 _keys!1487))))))

(declare-fun b!934224 () Bool)

(declare-fun res!629312 () Bool)

(declare-fun e!524597 () Bool)

(assert (=> b!934224 (=> (not res!629312) (not e!524597))))

(assert (=> b!934224 (= res!629312 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934225 () Bool)

(declare-fun e!524594 () Bool)

(assert (=> b!934225 (= e!524597 e!524594)))

(declare-fun res!629318 () Bool)

(assert (=> b!934225 (=> (not res!629318) (not e!524594))))

(declare-fun lt!420895 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934225 (= res!629318 (validKeyInArray!0 lt!420895))))

(assert (=> b!934225 (= lt!420895 (select (arr!27067 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934226 () Bool)

(declare-fun e!524598 () Bool)

(declare-fun tp_is_empty!20149 () Bool)

(assert (=> b!934226 (= e!524598 tp_is_empty!20149)))

(declare-fun b!934227 () Bool)

(declare-fun e!524596 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!934227 (= e!524596 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31986 () Bool)

(declare-fun mapRes!31986 () Bool)

(declare-fun tp!61370 () Bool)

(assert (=> mapNonEmpty!31986 (= mapRes!31986 (and tp!61370 e!524598))))

(declare-datatypes ((V!31831 0))(
  ( (V!31832 (val!10125 Int)) )
))
(declare-datatypes ((ValueCell!9593 0))(
  ( (ValueCellFull!9593 (v!12645 V!31831)) (EmptyCell!9593) )
))
(declare-fun mapRest!31986 () (Array (_ BitVec 32) ValueCell!9593))

(declare-fun mapValue!31986 () ValueCell!9593)

(declare-datatypes ((array!56258 0))(
  ( (array!56259 (arr!27068 (Array (_ BitVec 32) ValueCell!9593)) (size!27528 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56258)

(declare-fun mapKey!31986 () (_ BitVec 32))

(assert (=> mapNonEmpty!31986 (= (arr!27068 _values!1231) (store mapRest!31986 mapKey!31986 mapValue!31986))))

(declare-fun mapIsEmpty!31986 () Bool)

(assert (=> mapIsEmpty!31986 mapRes!31986))

(declare-fun b!934228 () Bool)

(declare-fun res!629315 () Bool)

(assert (=> b!934228 (=> (not res!629315) (not e!524597))))

(declare-fun v!791 () V!31831)

(declare-datatypes ((tuple2!13386 0))(
  ( (tuple2!13387 (_1!6703 (_ BitVec 64)) (_2!6703 V!31831)) )
))
(declare-datatypes ((List!19194 0))(
  ( (Nil!19191) (Cons!19190 (h!20336 tuple2!13386) (t!27387 List!19194)) )
))
(declare-datatypes ((ListLongMap!12097 0))(
  ( (ListLongMap!12098 (toList!6064 List!19194)) )
))
(declare-fun lt!420892 () ListLongMap!12097)

(declare-fun apply!844 (ListLongMap!12097 (_ BitVec 64)) V!31831)

(assert (=> b!934228 (= res!629315 (= (apply!844 lt!420892 k!1099) v!791))))

(declare-fun b!934230 () Bool)

(assert (=> b!934230 (= e!524594 (not true))))

(assert (=> b!934230 e!524596))

(declare-fun c!97070 () Bool)

(assert (=> b!934230 (= c!97070 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31519 0))(
  ( (Unit!31520) )
))
(declare-fun lt!420890 () Unit!31519)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31831)

(declare-fun minValue!1173 () V!31831)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!276 (array!56256 array!56258 (_ BitVec 32) (_ BitVec 32) V!31831 V!31831 (_ BitVec 64) (_ BitVec 32) Int) Unit!31519)

(assert (=> b!934230 (= lt!420890 (lemmaListMapContainsThenArrayContainsFrom!276 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934230 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19190)))

(declare-fun lt!420893 () Unit!31519)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56256 (_ BitVec 32) (_ BitVec 32)) Unit!31519)

(assert (=> b!934230 (= lt!420893 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420889 () tuple2!13386)

(declare-fun contains!5065 (ListLongMap!12097 (_ BitVec 64)) Bool)

(declare-fun +!2763 (ListLongMap!12097 tuple2!13386) ListLongMap!12097)

(assert (=> b!934230 (contains!5065 (+!2763 lt!420892 lt!420889) k!1099)))

(declare-fun lt!420896 () V!31831)

(declare-fun lt!420894 () Unit!31519)

(declare-fun addStillContains!519 (ListLongMap!12097 (_ BitVec 64) V!31831 (_ BitVec 64)) Unit!31519)

(assert (=> b!934230 (= lt!420894 (addStillContains!519 lt!420892 lt!420895 lt!420896 k!1099))))

(declare-fun getCurrentListMap!3256 (array!56256 array!56258 (_ BitVec 32) (_ BitVec 32) V!31831 V!31831 (_ BitVec 32) Int) ListLongMap!12097)

(assert (=> b!934230 (= (getCurrentListMap!3256 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2763 (getCurrentListMap!3256 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420889))))

(assert (=> b!934230 (= lt!420889 (tuple2!13387 lt!420895 lt!420896))))

(declare-fun get!14262 (ValueCell!9593 V!31831) V!31831)

(declare-fun dynLambda!1602 (Int (_ BitVec 64)) V!31831)

(assert (=> b!934230 (= lt!420896 (get!14262 (select (arr!27068 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1602 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420891 () Unit!31519)

(declare-fun lemmaListMapRecursiveValidKeyArray!198 (array!56256 array!56258 (_ BitVec 32) (_ BitVec 32) V!31831 V!31831 (_ BitVec 32) Int) Unit!31519)

(assert (=> b!934230 (= lt!420891 (lemmaListMapRecursiveValidKeyArray!198 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934231 () Bool)

(declare-fun e!524599 () Bool)

(assert (=> b!934231 (= e!524599 tp_is_empty!20149)))

(declare-fun b!934232 () Bool)

(declare-fun arrayContainsKey!0 (array!56256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934232 (= e!524596 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!934233 () Bool)

(declare-fun res!629317 () Bool)

(assert (=> b!934233 (=> (not res!629317) (not e!524597))))

(assert (=> b!934233 (= res!629317 (validKeyInArray!0 k!1099))))

(declare-fun res!629320 () Bool)

(assert (=> start!79514 (=> (not res!629320) (not e!524600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79514 (= res!629320 (validMask!0 mask!1881))))

(assert (=> start!79514 e!524600))

(assert (=> start!79514 true))

(assert (=> start!79514 tp_is_empty!20149))

(declare-fun e!524595 () Bool)

(declare-fun array_inv!21018 (array!56258) Bool)

(assert (=> start!79514 (and (array_inv!21018 _values!1231) e!524595)))

(assert (=> start!79514 tp!61371))

(declare-fun array_inv!21019 (array!56256) Bool)

(assert (=> start!79514 (array_inv!21019 _keys!1487)))

(declare-fun b!934229 () Bool)

(assert (=> b!934229 (= e!524600 e!524597)))

(declare-fun res!629313 () Bool)

(assert (=> b!934229 (=> (not res!629313) (not e!524597))))

(assert (=> b!934229 (= res!629313 (contains!5065 lt!420892 k!1099))))

(assert (=> b!934229 (= lt!420892 (getCurrentListMap!3256 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934234 () Bool)

(declare-fun res!629316 () Bool)

(assert (=> b!934234 (=> (not res!629316) (not e!524600))))

(assert (=> b!934234 (= res!629316 (and (= (size!27528 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27527 _keys!1487) (size!27528 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934235 () Bool)

(assert (=> b!934235 (= e!524595 (and e!524599 mapRes!31986))))

(declare-fun condMapEmpty!31986 () Bool)

(declare-fun mapDefault!31986 () ValueCell!9593)

