; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79662 () Bool)

(assert start!79662)

(declare-fun b_free!17683 () Bool)

(declare-fun b_next!17683 () Bool)

(assert (=> start!79662 (= b_free!17683 (not b_next!17683))))

(declare-fun tp!61505 () Bool)

(declare-fun b_and!28975 () Bool)

(assert (=> start!79662 (= tp!61505 b_and!28975)))

(declare-fun res!630332 () Bool)

(declare-fun e!525552 () Bool)

(assert (=> start!79662 (=> (not res!630332) (not e!525552))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79662 (= res!630332 (validMask!0 mask!1881))))

(assert (=> start!79662 e!525552))

(assert (=> start!79662 true))

(declare-fun tp_is_empty!20191 () Bool)

(assert (=> start!79662 tp_is_empty!20191))

(declare-datatypes ((V!31887 0))(
  ( (V!31888 (val!10146 Int)) )
))
(declare-datatypes ((ValueCell!9614 0))(
  ( (ValueCellFull!9614 (v!12671 V!31887)) (EmptyCell!9614) )
))
(declare-datatypes ((array!56346 0))(
  ( (array!56347 (arr!27109 (Array (_ BitVec 32) ValueCell!9614)) (size!27569 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56346)

(declare-fun e!525551 () Bool)

(declare-fun array_inv!21050 (array!56346) Bool)

(assert (=> start!79662 (and (array_inv!21050 _values!1231) e!525551)))

(assert (=> start!79662 tp!61505))

(declare-datatypes ((array!56348 0))(
  ( (array!56349 (arr!27110 (Array (_ BitVec 32) (_ BitVec 64))) (size!27570 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56348)

(declare-fun array_inv!21051 (array!56348) Bool)

(assert (=> start!79662 (array_inv!21051 _keys!1487)))

(declare-fun b!935904 () Bool)

(declare-fun e!525547 () Bool)

(declare-fun e!525548 () Bool)

(assert (=> b!935904 (= e!525547 e!525548)))

(declare-fun res!630337 () Bool)

(assert (=> b!935904 (=> (not res!630337) (not e!525548))))

(declare-fun lt!421923 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935904 (= res!630337 (validKeyInArray!0 lt!421923))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!935904 (= lt!421923 (select (arr!27110 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!32058 () Bool)

(declare-fun mapRes!32058 () Bool)

(assert (=> mapIsEmpty!32058 mapRes!32058))

(declare-fun b!935905 () Bool)

(declare-fun res!630330 () Bool)

(assert (=> b!935905 (=> (not res!630330) (not e!525552))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!935905 (= res!630330 (and (= (size!27569 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27570 _keys!1487) (size!27569 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!935906 () Bool)

(declare-fun e!525554 () Bool)

(assert (=> b!935906 (= e!525554 tp_is_empty!20191)))

(declare-fun b!935907 () Bool)

(assert (=> b!935907 (= e!525548 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27569 _values!1231))))))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!935907 (not (= lt!421923 k!1099))))

(declare-datatypes ((Unit!31568 0))(
  ( (Unit!31569) )
))
(declare-fun lt!421924 () Unit!31568)

(declare-datatypes ((List!19230 0))(
  ( (Nil!19227) (Cons!19226 (h!20372 (_ BitVec 64)) (t!27465 List!19230)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56348 (_ BitVec 64) (_ BitVec 32) List!19230) Unit!31568)

(assert (=> b!935907 (= lt!421924 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19227))))

(declare-fun e!525550 () Bool)

(assert (=> b!935907 e!525550))

(declare-fun c!97274 () Bool)

(assert (=> b!935907 (= c!97274 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!421921 () Unit!31568)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31887)

(declare-fun minValue!1173 () V!31887)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!293 (array!56348 array!56346 (_ BitVec 32) (_ BitVec 32) V!31887 V!31887 (_ BitVec 64) (_ BitVec 32) Int) Unit!31568)

(assert (=> b!935907 (= lt!421921 (lemmaListMapContainsThenArrayContainsFrom!293 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56348 (_ BitVec 32) List!19230) Bool)

(assert (=> b!935907 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19227)))

(declare-fun lt!421925 () Unit!31568)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56348 (_ BitVec 32) (_ BitVec 32)) Unit!31568)

(assert (=> b!935907 (= lt!421925 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13422 0))(
  ( (tuple2!13423 (_1!6721 (_ BitVec 64)) (_2!6721 V!31887)) )
))
(declare-datatypes ((List!19231 0))(
  ( (Nil!19228) (Cons!19227 (h!20373 tuple2!13422) (t!27466 List!19231)) )
))
(declare-datatypes ((ListLongMap!12133 0))(
  ( (ListLongMap!12134 (toList!6082 List!19231)) )
))
(declare-fun lt!421919 () ListLongMap!12133)

(declare-fun lt!421920 () tuple2!13422)

(declare-fun contains!5094 (ListLongMap!12133 (_ BitVec 64)) Bool)

(declare-fun +!2780 (ListLongMap!12133 tuple2!13422) ListLongMap!12133)

(assert (=> b!935907 (contains!5094 (+!2780 lt!421919 lt!421920) k!1099)))

(declare-fun lt!421922 () Unit!31568)

(declare-fun lt!421927 () V!31887)

(declare-fun addStillContains!536 (ListLongMap!12133 (_ BitVec 64) V!31887 (_ BitVec 64)) Unit!31568)

(assert (=> b!935907 (= lt!421922 (addStillContains!536 lt!421919 lt!421923 lt!421927 k!1099))))

(declare-fun getCurrentListMap!3273 (array!56348 array!56346 (_ BitVec 32) (_ BitVec 32) V!31887 V!31887 (_ BitVec 32) Int) ListLongMap!12133)

(assert (=> b!935907 (= (getCurrentListMap!3273 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2780 (getCurrentListMap!3273 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421920))))

(assert (=> b!935907 (= lt!421920 (tuple2!13423 lt!421923 lt!421927))))

(declare-fun get!14302 (ValueCell!9614 V!31887) V!31887)

(declare-fun dynLambda!1619 (Int (_ BitVec 64)) V!31887)

(assert (=> b!935907 (= lt!421927 (get!14302 (select (arr!27109 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1619 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421926 () Unit!31568)

(declare-fun lemmaListMapRecursiveValidKeyArray!215 (array!56348 array!56346 (_ BitVec 32) (_ BitVec 32) V!31887 V!31887 (_ BitVec 32) Int) Unit!31568)

(assert (=> b!935907 (= lt!421926 (lemmaListMapRecursiveValidKeyArray!215 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935908 () Bool)

(assert (=> b!935908 (= e!525550 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935909 () Bool)

(declare-fun res!630334 () Bool)

(assert (=> b!935909 (=> (not res!630334) (not e!525552))))

(assert (=> b!935909 (= res!630334 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19227))))

(declare-fun b!935910 () Bool)

(declare-fun res!630338 () Bool)

(assert (=> b!935910 (=> (not res!630338) (not e!525547))))

(declare-fun v!791 () V!31887)

(declare-fun apply!860 (ListLongMap!12133 (_ BitVec 64)) V!31887)

(assert (=> b!935910 (= res!630338 (= (apply!860 lt!421919 k!1099) v!791))))

(declare-fun b!935911 () Bool)

(declare-fun arrayContainsKey!0 (array!56348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935911 (= e!525550 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!935912 () Bool)

(declare-fun e!525553 () Bool)

(assert (=> b!935912 (= e!525551 (and e!525553 mapRes!32058))))

(declare-fun condMapEmpty!32058 () Bool)

(declare-fun mapDefault!32058 () ValueCell!9614)

