; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79666 () Bool)

(assert start!79666)

(declare-fun b_free!17687 () Bool)

(declare-fun b_next!17687 () Bool)

(assert (=> start!79666 (= b_free!17687 (not b_next!17687))))

(declare-fun tp!61518 () Bool)

(declare-fun b_and!28983 () Bool)

(assert (=> start!79666 (= tp!61518 b_and!28983)))

(declare-fun b!935998 () Bool)

(declare-fun e!525598 () Bool)

(declare-fun tp_is_empty!20195 () Bool)

(assert (=> b!935998 (= e!525598 tp_is_empty!20195)))

(declare-fun b!935999 () Bool)

(declare-fun e!525596 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!935999 (= e!525596 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936000 () Bool)

(declare-fun e!525597 () Bool)

(declare-fun e!525595 () Bool)

(assert (=> b!936000 (= e!525597 e!525595)))

(declare-fun res!630393 () Bool)

(assert (=> b!936000 (=> (not res!630393) (not e!525595))))

(declare-datatypes ((V!31891 0))(
  ( (V!31892 (val!10148 Int)) )
))
(declare-datatypes ((tuple2!13426 0))(
  ( (tuple2!13427 (_1!6723 (_ BitVec 64)) (_2!6723 V!31891)) )
))
(declare-datatypes ((List!19234 0))(
  ( (Nil!19231) (Cons!19230 (h!20376 tuple2!13426) (t!27473 List!19234)) )
))
(declare-datatypes ((ListLongMap!12137 0))(
  ( (ListLongMap!12138 (toList!6084 List!19234)) )
))
(declare-fun lt!421980 () ListLongMap!12137)

(declare-fun contains!5096 (ListLongMap!12137 (_ BitVec 64)) Bool)

(assert (=> b!936000 (= res!630393 (contains!5096 lt!421980 k!1099))))

(declare-datatypes ((array!56354 0))(
  ( (array!56355 (arr!27113 (Array (_ BitVec 32) (_ BitVec 64))) (size!27573 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56354)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9616 0))(
  ( (ValueCellFull!9616 (v!12673 V!31891)) (EmptyCell!9616) )
))
(declare-datatypes ((array!56356 0))(
  ( (array!56357 (arr!27114 (Array (_ BitVec 32) ValueCell!9616)) (size!27574 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56356)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31891)

(declare-fun minValue!1173 () V!31891)

(declare-fun getCurrentListMap!3275 (array!56354 array!56356 (_ BitVec 32) (_ BitVec 32) V!31891 V!31891 (_ BitVec 32) Int) ListLongMap!12137)

(assert (=> b!936000 (= lt!421980 (getCurrentListMap!3275 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936001 () Bool)

(declare-fun e!525601 () Bool)

(assert (=> b!936001 (= e!525595 e!525601)))

(declare-fun res!630389 () Bool)

(assert (=> b!936001 (=> (not res!630389) (not e!525601))))

(declare-fun lt!421973 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936001 (= res!630389 (validKeyInArray!0 lt!421973))))

(assert (=> b!936001 (= lt!421973 (select (arr!27113 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!936002 () Bool)

(declare-fun res!630390 () Bool)

(assert (=> b!936002 (=> (not res!630390) (not e!525597))))

(declare-datatypes ((List!19235 0))(
  ( (Nil!19232) (Cons!19231 (h!20377 (_ BitVec 64)) (t!27474 List!19235)) )
))
(declare-fun arrayNoDuplicates!0 (array!56354 (_ BitVec 32) List!19235) Bool)

(assert (=> b!936002 (= res!630390 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19232))))

(declare-fun b!936003 () Bool)

(declare-fun res!630397 () Bool)

(assert (=> b!936003 (=> (not res!630397) (not e!525595))))

(assert (=> b!936003 (= res!630397 (validKeyInArray!0 k!1099))))

(declare-fun b!936004 () Bool)

(declare-fun res!630392 () Bool)

(assert (=> b!936004 (=> (not res!630392) (not e!525597))))

(assert (=> b!936004 (= res!630392 (and (= (size!27574 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27573 _keys!1487) (size!27574 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936005 () Bool)

(assert (=> b!936005 (= e!525601 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27574 _values!1231))))))

(assert (=> b!936005 (not (= lt!421973 k!1099))))

(declare-datatypes ((Unit!31572 0))(
  ( (Unit!31573) )
))
(declare-fun lt!421978 () Unit!31572)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56354 (_ BitVec 64) (_ BitVec 32) List!19235) Unit!31572)

(assert (=> b!936005 (= lt!421978 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19232))))

(assert (=> b!936005 e!525596))

(declare-fun c!97280 () Bool)

(assert (=> b!936005 (= c!97280 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!421977 () Unit!31572)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!295 (array!56354 array!56356 (_ BitVec 32) (_ BitVec 32) V!31891 V!31891 (_ BitVec 64) (_ BitVec 32) Int) Unit!31572)

(assert (=> b!936005 (= lt!421977 (lemmaListMapContainsThenArrayContainsFrom!295 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!936005 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19232)))

(declare-fun lt!421974 () Unit!31572)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56354 (_ BitVec 32) (_ BitVec 32)) Unit!31572)

(assert (=> b!936005 (= lt!421974 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421976 () tuple2!13426)

(declare-fun +!2782 (ListLongMap!12137 tuple2!13426) ListLongMap!12137)

(assert (=> b!936005 (contains!5096 (+!2782 lt!421980 lt!421976) k!1099)))

(declare-fun lt!421979 () V!31891)

(declare-fun lt!421975 () Unit!31572)

(declare-fun addStillContains!538 (ListLongMap!12137 (_ BitVec 64) V!31891 (_ BitVec 64)) Unit!31572)

(assert (=> b!936005 (= lt!421975 (addStillContains!538 lt!421980 lt!421973 lt!421979 k!1099))))

(assert (=> b!936005 (= (getCurrentListMap!3275 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2782 (getCurrentListMap!3275 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421976))))

(assert (=> b!936005 (= lt!421976 (tuple2!13427 lt!421973 lt!421979))))

(declare-fun get!14304 (ValueCell!9616 V!31891) V!31891)

(declare-fun dynLambda!1621 (Int (_ BitVec 64)) V!31891)

(assert (=> b!936005 (= lt!421979 (get!14304 (select (arr!27114 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1621 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421981 () Unit!31572)

(declare-fun lemmaListMapRecursiveValidKeyArray!217 (array!56354 array!56356 (_ BitVec 32) (_ BitVec 32) V!31891 V!31891 (_ BitVec 32) Int) Unit!31572)

(assert (=> b!936005 (= lt!421981 (lemmaListMapRecursiveValidKeyArray!217 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!936006 () Bool)

(declare-fun res!630391 () Bool)

(assert (=> b!936006 (=> (not res!630391) (not e!525597))))

(assert (=> b!936006 (= res!630391 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27573 _keys!1487))))))

(declare-fun b!936007 () Bool)

(declare-fun res!630398 () Bool)

(assert (=> b!936007 (=> (not res!630398) (not e!525595))))

(assert (=> b!936007 (= res!630398 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!630396 () Bool)

(assert (=> start!79666 (=> (not res!630396) (not e!525597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79666 (= res!630396 (validMask!0 mask!1881))))

(assert (=> start!79666 e!525597))

(assert (=> start!79666 true))

(assert (=> start!79666 tp_is_empty!20195))

(declare-fun e!525602 () Bool)

(declare-fun array_inv!21054 (array!56356) Bool)

(assert (=> start!79666 (and (array_inv!21054 _values!1231) e!525602)))

(assert (=> start!79666 tp!61518))

(declare-fun array_inv!21055 (array!56354) Bool)

(assert (=> start!79666 (array_inv!21055 _keys!1487)))

(declare-fun b!936008 () Bool)

(declare-fun res!630395 () Bool)

(assert (=> b!936008 (=> (not res!630395) (not e!525597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56354 (_ BitVec 32)) Bool)

(assert (=> b!936008 (= res!630395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936009 () Bool)

(declare-fun res!630394 () Bool)

(assert (=> b!936009 (=> (not res!630394) (not e!525595))))

(declare-fun v!791 () V!31891)

(declare-fun apply!862 (ListLongMap!12137 (_ BitVec 64)) V!31891)

(assert (=> b!936009 (= res!630394 (= (apply!862 lt!421980 k!1099) v!791))))

(declare-fun b!936010 () Bool)

(declare-fun mapRes!32064 () Bool)

(assert (=> b!936010 (= e!525602 (and e!525598 mapRes!32064))))

(declare-fun condMapEmpty!32064 () Bool)

(declare-fun mapDefault!32064 () ValueCell!9616)

