; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79570 () Bool)

(assert start!79570)

(declare-fun b_free!17663 () Bool)

(declare-fun b_next!17663 () Bool)

(assert (=> start!79570 (= b_free!17663 (not b_next!17663))))

(declare-fun tp!61440 () Bool)

(declare-fun b_and!28919 () Bool)

(assert (=> start!79570 (= tp!61440 b_and!28919)))

(declare-fun b!934964 () Bool)

(declare-fun e!525017 () Bool)

(declare-fun tp_is_empty!20171 () Bool)

(assert (=> b!934964 (= e!525017 tp_is_empty!20171)))

(declare-fun b!934965 () Bool)

(declare-fun e!525020 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!934965 (= e!525020 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32022 () Bool)

(declare-fun mapRes!32022 () Bool)

(declare-fun tp!61439 () Bool)

(declare-fun e!525014 () Bool)

(assert (=> mapNonEmpty!32022 (= mapRes!32022 (and tp!61439 e!525014))))

(declare-datatypes ((V!31859 0))(
  ( (V!31860 (val!10136 Int)) )
))
(declare-datatypes ((ValueCell!9604 0))(
  ( (ValueCellFull!9604 (v!12657 V!31859)) (EmptyCell!9604) )
))
(declare-fun mapRest!32022 () (Array (_ BitVec 32) ValueCell!9604))

(declare-fun mapValue!32022 () ValueCell!9604)

(declare-datatypes ((array!56302 0))(
  ( (array!56303 (arr!27089 (Array (_ BitVec 32) ValueCell!9604)) (size!27549 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56302)

(declare-fun mapKey!32022 () (_ BitVec 32))

(assert (=> mapNonEmpty!32022 (= (arr!27089 _values!1231) (store mapRest!32022 mapKey!32022 mapValue!32022))))

(declare-fun b!934966 () Bool)

(declare-fun res!629775 () Bool)

(declare-fun e!525012 () Bool)

(assert (=> b!934966 (=> (not res!629775) (not e!525012))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!934966 (= res!629775 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934967 () Bool)

(declare-fun res!629771 () Bool)

(declare-fun e!525011 () Bool)

(assert (=> b!934967 (=> (not res!629771) (not e!525011))))

(declare-datatypes ((array!56304 0))(
  ( (array!56305 (arr!27090 (Array (_ BitVec 32) (_ BitVec 64))) (size!27550 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56304)

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!934967 (= res!629771 (and (= (size!27549 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27550 _keys!1487) (size!27549 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934968 () Bool)

(declare-fun e!525015 () Bool)

(declare-fun e!525018 () Bool)

(assert (=> b!934968 (= e!525015 e!525018)))

(declare-fun res!629772 () Bool)

(assert (=> b!934968 (=> (not res!629772) (not e!525018))))

(declare-datatypes ((List!19213 0))(
  ( (Nil!19210) (Cons!19209 (h!20355 (_ BitVec 64)) (t!27428 List!19213)) )
))
(declare-fun contains!5079 (List!19213 (_ BitVec 64)) Bool)

(assert (=> b!934968 (= res!629772 (not (contains!5079 Nil!19210 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!629767 () Bool)

(assert (=> start!79570 (=> (not res!629767) (not e!525011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79570 (= res!629767 (validMask!0 mask!1881))))

(assert (=> start!79570 e!525011))

(assert (=> start!79570 true))

(assert (=> start!79570 tp_is_empty!20171))

(declare-fun e!525016 () Bool)

(declare-fun array_inv!21036 (array!56302) Bool)

(assert (=> start!79570 (and (array_inv!21036 _values!1231) e!525016)))

(assert (=> start!79570 tp!61440))

(declare-fun array_inv!21037 (array!56304) Bool)

(assert (=> start!79570 (array_inv!21037 _keys!1487)))

(declare-fun b!934969 () Bool)

(declare-fun res!629769 () Bool)

(assert (=> b!934969 (=> res!629769 e!525015)))

(declare-fun noDuplicate!1356 (List!19213) Bool)

(assert (=> b!934969 (= res!629769 (not (noDuplicate!1356 Nil!19210)))))

(declare-fun b!934970 () Bool)

(assert (=> b!934970 (= e!525011 e!525012)))

(declare-fun res!629777 () Bool)

(assert (=> b!934970 (=> (not res!629777) (not e!525012))))

(declare-datatypes ((tuple2!13406 0))(
  ( (tuple2!13407 (_1!6713 (_ BitVec 64)) (_2!6713 V!31859)) )
))
(declare-datatypes ((List!19214 0))(
  ( (Nil!19211) (Cons!19210 (h!20356 tuple2!13406) (t!27429 List!19214)) )
))
(declare-datatypes ((ListLongMap!12117 0))(
  ( (ListLongMap!12118 (toList!6074 List!19214)) )
))
(declare-fun lt!421321 () ListLongMap!12117)

(declare-fun contains!5080 (ListLongMap!12117 (_ BitVec 64)) Bool)

(assert (=> b!934970 (= res!629777 (contains!5080 lt!421321 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31859)

(declare-fun minValue!1173 () V!31859)

(declare-fun getCurrentListMap!3266 (array!56304 array!56302 (_ BitVec 32) (_ BitVec 32) V!31859 V!31859 (_ BitVec 32) Int) ListLongMap!12117)

(assert (=> b!934970 (= lt!421321 (getCurrentListMap!3266 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934971 () Bool)

(declare-fun res!629776 () Bool)

(assert (=> b!934971 (=> (not res!629776) (not e!525012))))

(declare-fun v!791 () V!31859)

(declare-fun apply!853 (ListLongMap!12117 (_ BitVec 64)) V!31859)

(assert (=> b!934971 (= res!629776 (= (apply!853 lt!421321 k!1099) v!791))))

(declare-fun b!934972 () Bool)

(declare-fun arrayContainsKey!0 (array!56304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934972 (= e!525020 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapIsEmpty!32022 () Bool)

(assert (=> mapIsEmpty!32022 mapRes!32022))

(declare-fun b!934973 () Bool)

(declare-fun res!629770 () Bool)

(assert (=> b!934973 (=> (not res!629770) (not e!525012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934973 (= res!629770 (validKeyInArray!0 k!1099))))

(declare-fun b!934974 () Bool)

(declare-fun res!629765 () Bool)

(assert (=> b!934974 (=> (not res!629765) (not e!525011))))

(declare-fun arrayNoDuplicates!0 (array!56304 (_ BitVec 32) List!19213) Bool)

(assert (=> b!934974 (= res!629765 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19210))))

(declare-fun b!934975 () Bool)

(assert (=> b!934975 (= e!525014 tp_is_empty!20171)))

(declare-fun b!934976 () Bool)

(declare-fun res!629766 () Bool)

(assert (=> b!934976 (=> (not res!629766) (not e!525011))))

(assert (=> b!934976 (= res!629766 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27550 _keys!1487))))))

(declare-fun b!934977 () Bool)

(declare-fun e!525013 () Bool)

(assert (=> b!934977 (= e!525012 e!525013)))

(declare-fun res!629773 () Bool)

(assert (=> b!934977 (=> (not res!629773) (not e!525013))))

(declare-fun lt!421317 () (_ BitVec 64))

(assert (=> b!934977 (= res!629773 (validKeyInArray!0 lt!421317))))

(assert (=> b!934977 (= lt!421317 (select (arr!27090 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934978 () Bool)

(declare-fun res!629774 () Bool)

(assert (=> b!934978 (=> (not res!629774) (not e!525011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56304 (_ BitVec 32)) Bool)

(assert (=> b!934978 (= res!629774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934979 () Bool)

(assert (=> b!934979 (= e!525013 (not e!525015))))

(declare-fun res!629768 () Bool)

(assert (=> b!934979 (=> res!629768 e!525015)))

(assert (=> b!934979 (= res!629768 (or (bvsge (size!27550 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27550 _keys!1487))))))

(assert (=> b!934979 e!525020))

(declare-fun c!97150 () Bool)

(assert (=> b!934979 (= c!97150 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31544 0))(
  ( (Unit!31545) )
))
(declare-fun lt!421323 () Unit!31544)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!286 (array!56304 array!56302 (_ BitVec 32) (_ BitVec 32) V!31859 V!31859 (_ BitVec 64) (_ BitVec 32) Int) Unit!31544)

(assert (=> b!934979 (= lt!421323 (lemmaListMapContainsThenArrayContainsFrom!286 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934979 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19210)))

(declare-fun lt!421320 () Unit!31544)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56304 (_ BitVec 32) (_ BitVec 32)) Unit!31544)

(assert (=> b!934979 (= lt!421320 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421322 () tuple2!13406)

(declare-fun +!2773 (ListLongMap!12117 tuple2!13406) ListLongMap!12117)

(assert (=> b!934979 (contains!5080 (+!2773 lt!421321 lt!421322) k!1099)))

(declare-fun lt!421316 () V!31859)

(declare-fun lt!421319 () Unit!31544)

(declare-fun addStillContains!529 (ListLongMap!12117 (_ BitVec 64) V!31859 (_ BitVec 64)) Unit!31544)

(assert (=> b!934979 (= lt!421319 (addStillContains!529 lt!421321 lt!421317 lt!421316 k!1099))))

(assert (=> b!934979 (= (getCurrentListMap!3266 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2773 (getCurrentListMap!3266 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421322))))

(assert (=> b!934979 (= lt!421322 (tuple2!13407 lt!421317 lt!421316))))

(declare-fun get!14281 (ValueCell!9604 V!31859) V!31859)

(declare-fun dynLambda!1612 (Int (_ BitVec 64)) V!31859)

(assert (=> b!934979 (= lt!421316 (get!14281 (select (arr!27089 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1612 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421318 () Unit!31544)

(declare-fun lemmaListMapRecursiveValidKeyArray!208 (array!56304 array!56302 (_ BitVec 32) (_ BitVec 32) V!31859 V!31859 (_ BitVec 32) Int) Unit!31544)

(assert (=> b!934979 (= lt!421318 (lemmaListMapRecursiveValidKeyArray!208 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934980 () Bool)

(assert (=> b!934980 (= e!525018 (not (contains!5079 Nil!19210 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!934981 () Bool)

(assert (=> b!934981 (= e!525016 (and e!525017 mapRes!32022))))

(declare-fun condMapEmpty!32022 () Bool)

(declare-fun mapDefault!32022 () ValueCell!9604)

