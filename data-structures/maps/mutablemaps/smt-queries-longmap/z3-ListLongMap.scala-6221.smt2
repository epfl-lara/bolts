; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79522 () Bool)

(assert start!79522)

(declare-fun b_free!17649 () Bool)

(declare-fun b_next!17649 () Bool)

(assert (=> start!79522 (= b_free!17649 (not b_next!17649))))

(declare-fun tp!61395 () Bool)

(declare-fun b_and!28883 () Bool)

(assert (=> start!79522 (= tp!61395 b_and!28883)))

(declare-fun res!629441 () Bool)

(declare-fun e!524694 () Bool)

(assert (=> start!79522 (=> (not res!629441) (not e!524694))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79522 (= res!629441 (validMask!0 mask!1881))))

(assert (=> start!79522 e!524694))

(assert (=> start!79522 true))

(declare-fun tp_is_empty!20157 () Bool)

(assert (=> start!79522 tp_is_empty!20157))

(declare-datatypes ((V!31841 0))(
  ( (V!31842 (val!10129 Int)) )
))
(declare-datatypes ((ValueCell!9597 0))(
  ( (ValueCellFull!9597 (v!12649 V!31841)) (EmptyCell!9597) )
))
(declare-datatypes ((array!56272 0))(
  ( (array!56273 (arr!27075 (Array (_ BitVec 32) ValueCell!9597)) (size!27535 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56272)

(declare-fun e!524693 () Bool)

(declare-fun array_inv!21024 (array!56272) Bool)

(assert (=> start!79522 (and (array_inv!21024 _values!1231) e!524693)))

(assert (=> start!79522 tp!61395))

(declare-datatypes ((array!56274 0))(
  ( (array!56275 (arr!27076 (Array (_ BitVec 32) (_ BitVec 64))) (size!27536 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56274)

(declare-fun array_inv!21025 (array!56274) Bool)

(assert (=> start!79522 (array_inv!21025 _keys!1487)))

(declare-fun b!934409 () Bool)

(declare-fun e!524695 () Bool)

(assert (=> b!934409 (= e!524695 tp_is_empty!20157)))

(declare-fun b!934410 () Bool)

(declare-fun e!524690 () Bool)

(assert (=> b!934410 (= e!524694 e!524690)))

(declare-fun res!629434 () Bool)

(assert (=> b!934410 (=> (not res!629434) (not e!524690))))

(declare-datatypes ((tuple2!13392 0))(
  ( (tuple2!13393 (_1!6706 (_ BitVec 64)) (_2!6706 V!31841)) )
))
(declare-datatypes ((List!19199 0))(
  ( (Nil!19196) (Cons!19195 (h!20341 tuple2!13392) (t!27400 List!19199)) )
))
(declare-datatypes ((ListLongMap!12103 0))(
  ( (ListLongMap!12104 (toList!6067 List!19199)) )
))
(declare-fun lt!420989 () ListLongMap!12103)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5068 (ListLongMap!12103 (_ BitVec 64)) Bool)

(assert (=> b!934410 (= res!629434 (contains!5068 lt!420989 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31841)

(declare-fun minValue!1173 () V!31841)

(declare-fun getCurrentListMap!3259 (array!56274 array!56272 (_ BitVec 32) (_ BitVec 32) V!31841 V!31841 (_ BitVec 32) Int) ListLongMap!12103)

(assert (=> b!934410 (= lt!420989 (getCurrentListMap!3259 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun e!524696 () Bool)

(declare-fun b!934411 () Bool)

(declare-fun arrayContainsKey!0 (array!56274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934411 (= e!524696 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!934412 () Bool)

(declare-fun e!524689 () Bool)

(declare-fun mapRes!31998 () Bool)

(assert (=> b!934412 (= e!524693 (and e!524689 mapRes!31998))))

(declare-fun condMapEmpty!31998 () Bool)

(declare-fun mapDefault!31998 () ValueCell!9597)

(assert (=> b!934412 (= condMapEmpty!31998 (= (arr!27075 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9597)) mapDefault!31998)))))

(declare-fun b!934413 () Bool)

(declare-fun res!629432 () Bool)

(assert (=> b!934413 (=> (not res!629432) (not e!524694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56274 (_ BitVec 32)) Bool)

(assert (=> b!934413 (= res!629432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31998 () Bool)

(assert (=> mapIsEmpty!31998 mapRes!31998))

(declare-fun b!934414 () Bool)

(declare-fun res!629439 () Bool)

(assert (=> b!934414 (=> (not res!629439) (not e!524694))))

(declare-datatypes ((List!19200 0))(
  ( (Nil!19197) (Cons!19196 (h!20342 (_ BitVec 64)) (t!27401 List!19200)) )
))
(declare-fun arrayNoDuplicates!0 (array!56274 (_ BitVec 32) List!19200) Bool)

(assert (=> b!934414 (= res!629439 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19197))))

(declare-fun b!934415 () Bool)

(declare-fun res!629433 () Bool)

(assert (=> b!934415 (=> (not res!629433) (not e!524694))))

(assert (=> b!934415 (= res!629433 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27536 _keys!1487))))))

(declare-fun b!934416 () Bool)

(declare-fun e!524692 () Bool)

(assert (=> b!934416 (= e!524692 (not (or (bvsge (size!27536 _keys!1487) #b01111111111111111111111111111111) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27536 _keys!1487)))))))

(assert (=> b!934416 e!524696))

(declare-fun c!97082 () Bool)

(assert (=> b!934416 (= c!97082 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31525 0))(
  ( (Unit!31526) )
))
(declare-fun lt!420985 () Unit!31525)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!279 (array!56274 array!56272 (_ BitVec 32) (_ BitVec 32) V!31841 V!31841 (_ BitVec 64) (_ BitVec 32) Int) Unit!31525)

(assert (=> b!934416 (= lt!420985 (lemmaListMapContainsThenArrayContainsFrom!279 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934416 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19197)))

(declare-fun lt!420988 () Unit!31525)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56274 (_ BitVec 32) (_ BitVec 32)) Unit!31525)

(assert (=> b!934416 (= lt!420988 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420986 () tuple2!13392)

(declare-fun +!2766 (ListLongMap!12103 tuple2!13392) ListLongMap!12103)

(assert (=> b!934416 (contains!5068 (+!2766 lt!420989 lt!420986) k0!1099)))

(declare-fun lt!420992 () (_ BitVec 64))

(declare-fun lt!420990 () Unit!31525)

(declare-fun lt!420991 () V!31841)

(declare-fun addStillContains!522 (ListLongMap!12103 (_ BitVec 64) V!31841 (_ BitVec 64)) Unit!31525)

(assert (=> b!934416 (= lt!420990 (addStillContains!522 lt!420989 lt!420992 lt!420991 k0!1099))))

(assert (=> b!934416 (= (getCurrentListMap!3259 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2766 (getCurrentListMap!3259 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420986))))

(assert (=> b!934416 (= lt!420986 (tuple2!13393 lt!420992 lt!420991))))

(declare-fun get!14267 (ValueCell!9597 V!31841) V!31841)

(declare-fun dynLambda!1605 (Int (_ BitVec 64)) V!31841)

(assert (=> b!934416 (= lt!420991 (get!14267 (select (arr!27075 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1605 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420987 () Unit!31525)

(declare-fun lemmaListMapRecursiveValidKeyArray!201 (array!56274 array!56272 (_ BitVec 32) (_ BitVec 32) V!31841 V!31841 (_ BitVec 32) Int) Unit!31525)

(assert (=> b!934416 (= lt!420987 (lemmaListMapRecursiveValidKeyArray!201 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934417 () Bool)

(declare-fun res!629437 () Bool)

(assert (=> b!934417 (=> (not res!629437) (not e!524690))))

(assert (=> b!934417 (= res!629437 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934418 () Bool)

(declare-fun res!629435 () Bool)

(assert (=> b!934418 (=> (not res!629435) (not e!524690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934418 (= res!629435 (validKeyInArray!0 k0!1099))))

(declare-fun b!934419 () Bool)

(declare-fun res!629436 () Bool)

(assert (=> b!934419 (=> (not res!629436) (not e!524690))))

(declare-fun v!791 () V!31841)

(declare-fun apply!847 (ListLongMap!12103 (_ BitVec 64)) V!31841)

(assert (=> b!934419 (= res!629436 (= (apply!847 lt!420989 k0!1099) v!791))))

(declare-fun b!934420 () Bool)

(assert (=> b!934420 (= e!524689 tp_is_empty!20157)))

(declare-fun b!934421 () Bool)

(assert (=> b!934421 (= e!524696 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!934422 () Bool)

(declare-fun res!629438 () Bool)

(assert (=> b!934422 (=> (not res!629438) (not e!524694))))

(assert (=> b!934422 (= res!629438 (and (= (size!27535 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27536 _keys!1487) (size!27535 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934423 () Bool)

(assert (=> b!934423 (= e!524690 e!524692)))

(declare-fun res!629440 () Bool)

(assert (=> b!934423 (=> (not res!629440) (not e!524692))))

(assert (=> b!934423 (= res!629440 (validKeyInArray!0 lt!420992))))

(assert (=> b!934423 (= lt!420992 (select (arr!27076 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!31998 () Bool)

(declare-fun tp!61394 () Bool)

(assert (=> mapNonEmpty!31998 (= mapRes!31998 (and tp!61394 e!524695))))

(declare-fun mapValue!31998 () ValueCell!9597)

(declare-fun mapKey!31998 () (_ BitVec 32))

(declare-fun mapRest!31998 () (Array (_ BitVec 32) ValueCell!9597))

(assert (=> mapNonEmpty!31998 (= (arr!27075 _values!1231) (store mapRest!31998 mapKey!31998 mapValue!31998))))

(assert (= (and start!79522 res!629441) b!934422))

(assert (= (and b!934422 res!629438) b!934413))

(assert (= (and b!934413 res!629432) b!934414))

(assert (= (and b!934414 res!629439) b!934415))

(assert (= (and b!934415 res!629433) b!934410))

(assert (= (and b!934410 res!629434) b!934419))

(assert (= (and b!934419 res!629436) b!934417))

(assert (= (and b!934417 res!629437) b!934418))

(assert (= (and b!934418 res!629435) b!934423))

(assert (= (and b!934423 res!629440) b!934416))

(assert (= (and b!934416 c!97082) b!934411))

(assert (= (and b!934416 (not c!97082)) b!934421))

(assert (= (and b!934412 condMapEmpty!31998) mapIsEmpty!31998))

(assert (= (and b!934412 (not condMapEmpty!31998)) mapNonEmpty!31998))

(get-info :version)

(assert (= (and mapNonEmpty!31998 ((_ is ValueCellFull!9597) mapValue!31998)) b!934409))

(assert (= (and b!934412 ((_ is ValueCellFull!9597) mapDefault!31998)) b!934420))

(assert (= start!79522 b!934412))

(declare-fun b_lambda!14031 () Bool)

(assert (=> (not b_lambda!14031) (not b!934416)))

(declare-fun t!27399 () Bool)

(declare-fun tb!6051 () Bool)

(assert (=> (and start!79522 (= defaultEntry!1235 defaultEntry!1235) t!27399) tb!6051))

(declare-fun result!11921 () Bool)

(assert (=> tb!6051 (= result!11921 tp_is_empty!20157)))

(assert (=> b!934416 t!27399))

(declare-fun b_and!28885 () Bool)

(assert (= b_and!28883 (and (=> t!27399 result!11921) b_and!28885)))

(declare-fun m!868823 () Bool)

(assert (=> b!934423 m!868823))

(declare-fun m!868825 () Bool)

(assert (=> b!934423 m!868825))

(declare-fun m!868827 () Bool)

(assert (=> b!934419 m!868827))

(declare-fun m!868829 () Bool)

(assert (=> b!934414 m!868829))

(declare-fun m!868831 () Bool)

(assert (=> b!934411 m!868831))

(declare-fun m!868833 () Bool)

(assert (=> start!79522 m!868833))

(declare-fun m!868835 () Bool)

(assert (=> start!79522 m!868835))

(declare-fun m!868837 () Bool)

(assert (=> start!79522 m!868837))

(declare-fun m!868839 () Bool)

(assert (=> b!934410 m!868839))

(declare-fun m!868841 () Bool)

(assert (=> b!934410 m!868841))

(declare-fun m!868843 () Bool)

(assert (=> mapNonEmpty!31998 m!868843))

(declare-fun m!868845 () Bool)

(assert (=> b!934418 m!868845))

(declare-fun m!868847 () Bool)

(assert (=> b!934413 m!868847))

(declare-fun m!868849 () Bool)

(assert (=> b!934416 m!868849))

(declare-fun m!868851 () Bool)

(assert (=> b!934416 m!868851))

(declare-fun m!868853 () Bool)

(assert (=> b!934416 m!868853))

(declare-fun m!868855 () Bool)

(assert (=> b!934416 m!868855))

(declare-fun m!868857 () Bool)

(assert (=> b!934416 m!868857))

(assert (=> b!934416 m!868855))

(assert (=> b!934416 m!868857))

(declare-fun m!868859 () Bool)

(assert (=> b!934416 m!868859))

(declare-fun m!868861 () Bool)

(assert (=> b!934416 m!868861))

(declare-fun m!868863 () Bool)

(assert (=> b!934416 m!868863))

(assert (=> b!934416 m!868849))

(declare-fun m!868865 () Bool)

(assert (=> b!934416 m!868865))

(declare-fun m!868867 () Bool)

(assert (=> b!934416 m!868867))

(assert (=> b!934416 m!868863))

(declare-fun m!868869 () Bool)

(assert (=> b!934416 m!868869))

(declare-fun m!868871 () Bool)

(assert (=> b!934416 m!868871))

(declare-fun m!868873 () Bool)

(assert (=> b!934416 m!868873))

(check-sat (not b!934416) b_and!28885 (not b!934419) tp_is_empty!20157 (not b_next!17649) (not b!934414) (not b_lambda!14031) (not b!934410) (not b!934423) (not start!79522) (not mapNonEmpty!31998) (not b!934418) (not b!934413) (not b!934411))
(check-sat b_and!28885 (not b_next!17649))
