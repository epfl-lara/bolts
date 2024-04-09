; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79092 () Bool)

(assert start!79092)

(declare-fun b_free!17277 () Bool)

(declare-fun b_next!17277 () Bool)

(assert (=> start!79092 (= b_free!17277 (not b_next!17277))))

(declare-fun tp!60273 () Bool)

(declare-fun b_and!28309 () Bool)

(assert (=> start!79092 (= tp!60273 b_and!28309)))

(declare-fun b!926853 () Bool)

(declare-fun e!520341 () Bool)

(assert (=> b!926853 (= e!520341 (not true))))

(declare-fun e!520342 () Bool)

(assert (=> b!926853 e!520342))

(declare-fun res!624475 () Bool)

(assert (=> b!926853 (=> (not res!624475) (not e!520342))))

(declare-datatypes ((V!31345 0))(
  ( (V!31346 (val!9943 Int)) )
))
(declare-datatypes ((tuple2!13082 0))(
  ( (tuple2!13083 (_1!6551 (_ BitVec 64)) (_2!6551 V!31345)) )
))
(declare-datatypes ((List!18910 0))(
  ( (Nil!18907) (Cons!18906 (h!20052 tuple2!13082) (t!26925 List!18910)) )
))
(declare-datatypes ((ListLongMap!11793 0))(
  ( (ListLongMap!11794 (toList!5912 List!18910)) )
))
(declare-fun lt!417622 () ListLongMap!11793)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4932 (ListLongMap!11793 (_ BitVec 64)) Bool)

(assert (=> b!926853 (= res!624475 (contains!4932 lt!417622 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9411 0))(
  ( (ValueCellFull!9411 (v!12461 V!31345)) (EmptyCell!9411) )
))
(declare-datatypes ((array!55550 0))(
  ( (array!55551 (arr!26716 (Array (_ BitVec 32) ValueCell!9411)) (size!27176 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55550)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((array!55552 0))(
  ( (array!55553 (arr!26717 (Array (_ BitVec 32) (_ BitVec 64))) (size!27177 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55552)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31345)

(declare-fun minValue!1173 () V!31345)

(declare-fun getCurrentListMap!3126 (array!55552 array!55550 (_ BitVec 32) (_ BitVec 32) V!31345 V!31345 (_ BitVec 32) Int) ListLongMap!11793)

(assert (=> b!926853 (= lt!417622 (getCurrentListMap!3126 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun v!791 () V!31345)

(declare-datatypes ((Unit!31344 0))(
  ( (Unit!31345) )
))
(declare-fun lt!417619 () Unit!31344)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!90 (array!55552 array!55550 (_ BitVec 32) (_ BitVec 32) V!31345 V!31345 (_ BitVec 64) V!31345 (_ BitVec 32) Int) Unit!31344)

(assert (=> b!926853 (= lt!417619 (lemmaListMapApplyFromThenApplyFromZero!90 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926854 () Bool)

(declare-fun e!520343 () Bool)

(declare-fun e!520337 () Bool)

(assert (=> b!926854 (= e!520343 e!520337)))

(declare-fun res!624476 () Bool)

(assert (=> b!926854 (=> (not res!624476) (not e!520337))))

(declare-fun lt!417624 () ListLongMap!11793)

(assert (=> b!926854 (= res!624476 (contains!4932 lt!417624 k0!1099))))

(assert (=> b!926854 (= lt!417624 (getCurrentListMap!3126 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926855 () Bool)

(declare-fun e!520344 () Unit!31344)

(declare-fun Unit!31346 () Unit!31344)

(assert (=> b!926855 (= e!520344 Unit!31346)))

(declare-fun b!926856 () Bool)

(declare-fun e!520336 () Bool)

(declare-fun tp_is_empty!19785 () Bool)

(assert (=> b!926856 (= e!520336 tp_is_empty!19785)))

(declare-fun b!926857 () Bool)

(declare-fun res!624472 () Bool)

(assert (=> b!926857 (=> (not res!624472) (not e!520343))))

(assert (=> b!926857 (= res!624472 (and (= (size!27176 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27177 _keys!1487) (size!27176 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926858 () Bool)

(declare-fun res!624482 () Bool)

(assert (=> b!926858 (=> (not res!624482) (not e!520343))))

(declare-datatypes ((List!18911 0))(
  ( (Nil!18908) (Cons!18907 (h!20053 (_ BitVec 64)) (t!26926 List!18911)) )
))
(declare-fun arrayNoDuplicates!0 (array!55552 (_ BitVec 32) List!18911) Bool)

(assert (=> b!926858 (= res!624482 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18908))))

(declare-fun b!926859 () Bool)

(declare-fun res!624478 () Bool)

(assert (=> b!926859 (=> (not res!624478) (not e!520341))))

(declare-fun lt!417630 () ListLongMap!11793)

(declare-fun apply!709 (ListLongMap!11793 (_ BitVec 64)) V!31345)

(assert (=> b!926859 (= res!624478 (= (apply!709 lt!417630 k0!1099) v!791))))

(declare-fun b!926860 () Bool)

(declare-fun lt!417621 () ListLongMap!11793)

(declare-fun lt!417623 () V!31345)

(assert (=> b!926860 (= (apply!709 lt!417621 k0!1099) lt!417623)))

(declare-fun lt!417629 () (_ BitVec 64))

(declare-fun lt!417631 () V!31345)

(declare-fun lt!417618 () Unit!31344)

(declare-fun addApplyDifferent!391 (ListLongMap!11793 (_ BitVec 64) V!31345 (_ BitVec 64)) Unit!31344)

(assert (=> b!926860 (= lt!417618 (addApplyDifferent!391 lt!417624 lt!417629 lt!417631 k0!1099))))

(assert (=> b!926860 (not (= lt!417629 k0!1099))))

(declare-fun lt!417628 () Unit!31344)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55552 (_ BitVec 64) (_ BitVec 32) List!18911) Unit!31344)

(assert (=> b!926860 (= lt!417628 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18908))))

(declare-fun e!520339 () Bool)

(assert (=> b!926860 e!520339))

(declare-fun c!96724 () Bool)

(assert (=> b!926860 (= c!96724 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417625 () Unit!31344)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!251 (array!55552 array!55550 (_ BitVec 32) (_ BitVec 32) V!31345 V!31345 (_ BitVec 64) (_ BitVec 32) Int) Unit!31344)

(assert (=> b!926860 (= lt!417625 (lemmaListMapContainsThenArrayContainsFrom!251 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!926860 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18908)))

(declare-fun lt!417626 () Unit!31344)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55552 (_ BitVec 32) (_ BitVec 32)) Unit!31344)

(assert (=> b!926860 (= lt!417626 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926860 (contains!4932 lt!417621 k0!1099)))

(declare-fun lt!417627 () tuple2!13082)

(declare-fun +!2705 (ListLongMap!11793 tuple2!13082) ListLongMap!11793)

(assert (=> b!926860 (= lt!417621 (+!2705 lt!417624 lt!417627))))

(declare-fun lt!417620 () Unit!31344)

(declare-fun addStillContains!467 (ListLongMap!11793 (_ BitVec 64) V!31345 (_ BitVec 64)) Unit!31344)

(assert (=> b!926860 (= lt!417620 (addStillContains!467 lt!417624 lt!417629 lt!417631 k0!1099))))

(assert (=> b!926860 (= (getCurrentListMap!3126 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2705 (getCurrentListMap!3126 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417627))))

(assert (=> b!926860 (= lt!417627 (tuple2!13083 lt!417629 lt!417631))))

(declare-fun get!14076 (ValueCell!9411 V!31345) V!31345)

(declare-fun dynLambda!1544 (Int (_ BitVec 64)) V!31345)

(assert (=> b!926860 (= lt!417631 (get!14076 (select (arr!26716 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1544 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417633 () Unit!31344)

(declare-fun lemmaListMapRecursiveValidKeyArray!140 (array!55552 array!55550 (_ BitVec 32) (_ BitVec 32) V!31345 V!31345 (_ BitVec 32) Int) Unit!31344)

(assert (=> b!926860 (= lt!417633 (lemmaListMapRecursiveValidKeyArray!140 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520340 () Unit!31344)

(assert (=> b!926860 (= e!520340 lt!417618)))

(declare-fun b!926861 () Bool)

(declare-fun e!520333 () Bool)

(declare-fun mapRes!31434 () Bool)

(assert (=> b!926861 (= e!520333 (and e!520336 mapRes!31434))))

(declare-fun condMapEmpty!31434 () Bool)

(declare-fun mapDefault!31434 () ValueCell!9411)

(assert (=> b!926861 (= condMapEmpty!31434 (= (arr!26716 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9411)) mapDefault!31434)))))

(declare-fun b!926862 () Bool)

(declare-fun e!520335 () Bool)

(declare-fun e!520332 () Bool)

(assert (=> b!926862 (= e!520335 e!520332)))

(declare-fun res!624481 () Bool)

(assert (=> b!926862 (=> (not res!624481) (not e!520332))))

(assert (=> b!926862 (= res!624481 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27177 _keys!1487)))))

(declare-fun lt!417632 () Unit!31344)

(assert (=> b!926862 (= lt!417632 e!520344)))

(declare-fun c!96723 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926862 (= c!96723 (validKeyInArray!0 k0!1099))))

(declare-fun b!926863 () Bool)

(assert (=> b!926863 (= e!520344 e!520340)))

(assert (=> b!926863 (= lt!417629 (select (arr!26717 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96725 () Bool)

(assert (=> b!926863 (= c!96725 (validKeyInArray!0 lt!417629))))

(declare-fun b!926864 () Bool)

(declare-fun e!520334 () Bool)

(assert (=> b!926864 (= e!520334 tp_is_empty!19785)))

(declare-fun mapNonEmpty!31434 () Bool)

(declare-fun tp!60272 () Bool)

(assert (=> mapNonEmpty!31434 (= mapRes!31434 (and tp!60272 e!520334))))

(declare-fun mapKey!31434 () (_ BitVec 32))

(declare-fun mapRest!31434 () (Array (_ BitVec 32) ValueCell!9411))

(declare-fun mapValue!31434 () ValueCell!9411)

(assert (=> mapNonEmpty!31434 (= (arr!26716 _values!1231) (store mapRest!31434 mapKey!31434 mapValue!31434))))

(declare-fun b!926865 () Bool)

(assert (=> b!926865 (= e!520339 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!926866 () Bool)

(assert (=> b!926866 (= e!520332 e!520341)))

(declare-fun res!624474 () Bool)

(assert (=> b!926866 (=> (not res!624474) (not e!520341))))

(assert (=> b!926866 (= res!624474 (contains!4932 lt!417630 k0!1099))))

(assert (=> b!926866 (= lt!417630 (getCurrentListMap!3126 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926867 () Bool)

(declare-fun Unit!31347 () Unit!31344)

(assert (=> b!926867 (= e!520340 Unit!31347)))

(declare-fun b!926868 () Bool)

(declare-fun res!624480 () Bool)

(assert (=> b!926868 (=> (not res!624480) (not e!520343))))

(assert (=> b!926868 (= res!624480 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27177 _keys!1487))))))

(declare-fun b!926869 () Bool)

(declare-fun arrayContainsKey!0 (array!55552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926869 (= e!520339 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!926870 () Bool)

(assert (=> b!926870 (= e!520337 e!520335)))

(declare-fun res!624479 () Bool)

(assert (=> b!926870 (=> (not res!624479) (not e!520335))))

(assert (=> b!926870 (= res!624479 (and (= lt!417623 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!926870 (= lt!417623 (apply!709 lt!417624 k0!1099))))

(declare-fun mapIsEmpty!31434 () Bool)

(assert (=> mapIsEmpty!31434 mapRes!31434))

(declare-fun res!624477 () Bool)

(assert (=> start!79092 (=> (not res!624477) (not e!520343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79092 (= res!624477 (validMask!0 mask!1881))))

(assert (=> start!79092 e!520343))

(assert (=> start!79092 true))

(assert (=> start!79092 tp_is_empty!19785))

(declare-fun array_inv!20794 (array!55550) Bool)

(assert (=> start!79092 (and (array_inv!20794 _values!1231) e!520333)))

(assert (=> start!79092 tp!60273))

(declare-fun array_inv!20795 (array!55552) Bool)

(assert (=> start!79092 (array_inv!20795 _keys!1487)))

(declare-fun b!926871 () Bool)

(declare-fun res!624473 () Bool)

(assert (=> b!926871 (=> (not res!624473) (not e!520343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55552 (_ BitVec 32)) Bool)

(assert (=> b!926871 (= res!624473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926872 () Bool)

(assert (=> b!926872 (= e!520342 (= (apply!709 lt!417622 k0!1099) v!791))))

(assert (= (and start!79092 res!624477) b!926857))

(assert (= (and b!926857 res!624472) b!926871))

(assert (= (and b!926871 res!624473) b!926858))

(assert (= (and b!926858 res!624482) b!926868))

(assert (= (and b!926868 res!624480) b!926854))

(assert (= (and b!926854 res!624476) b!926870))

(assert (= (and b!926870 res!624479) b!926862))

(assert (= (and b!926862 c!96723) b!926863))

(assert (= (and b!926862 (not c!96723)) b!926855))

(assert (= (and b!926863 c!96725) b!926860))

(assert (= (and b!926863 (not c!96725)) b!926867))

(assert (= (and b!926860 c!96724) b!926869))

(assert (= (and b!926860 (not c!96724)) b!926865))

(assert (= (and b!926862 res!624481) b!926866))

(assert (= (and b!926866 res!624474) b!926859))

(assert (= (and b!926859 res!624478) b!926853))

(assert (= (and b!926853 res!624475) b!926872))

(assert (= (and b!926861 condMapEmpty!31434) mapIsEmpty!31434))

(assert (= (and b!926861 (not condMapEmpty!31434)) mapNonEmpty!31434))

(get-info :version)

(assert (= (and mapNonEmpty!31434 ((_ is ValueCellFull!9411) mapValue!31434)) b!926864))

(assert (= (and b!926861 ((_ is ValueCellFull!9411) mapDefault!31434)) b!926856))

(assert (= start!79092 b!926861))

(declare-fun b_lambda!13809 () Bool)

(assert (=> (not b_lambda!13809) (not b!926860)))

(declare-fun t!26924 () Bool)

(declare-fun tb!5865 () Bool)

(assert (=> (and start!79092 (= defaultEntry!1235 defaultEntry!1235) t!26924) tb!5865))

(declare-fun result!11545 () Bool)

(assert (=> tb!5865 (= result!11545 tp_is_empty!19785)))

(assert (=> b!926860 t!26924))

(declare-fun b_and!28311 () Bool)

(assert (= b_and!28309 (and (=> t!26924 result!11545) b_and!28311)))

(declare-fun m!861581 () Bool)

(assert (=> b!926860 m!861581))

(declare-fun m!861583 () Bool)

(assert (=> b!926860 m!861583))

(declare-fun m!861585 () Bool)

(assert (=> b!926860 m!861585))

(declare-fun m!861587 () Bool)

(assert (=> b!926860 m!861587))

(declare-fun m!861589 () Bool)

(assert (=> b!926860 m!861589))

(declare-fun m!861591 () Bool)

(assert (=> b!926860 m!861591))

(declare-fun m!861593 () Bool)

(assert (=> b!926860 m!861593))

(declare-fun m!861595 () Bool)

(assert (=> b!926860 m!861595))

(declare-fun m!861597 () Bool)

(assert (=> b!926860 m!861597))

(declare-fun m!861599 () Bool)

(assert (=> b!926860 m!861599))

(declare-fun m!861601 () Bool)

(assert (=> b!926860 m!861601))

(assert (=> b!926860 m!861587))

(assert (=> b!926860 m!861589))

(declare-fun m!861603 () Bool)

(assert (=> b!926860 m!861603))

(declare-fun m!861605 () Bool)

(assert (=> b!926860 m!861605))

(declare-fun m!861607 () Bool)

(assert (=> b!926860 m!861607))

(declare-fun m!861609 () Bool)

(assert (=> b!926860 m!861609))

(assert (=> b!926860 m!861607))

(declare-fun m!861611 () Bool)

(assert (=> b!926860 m!861611))

(declare-fun m!861613 () Bool)

(assert (=> start!79092 m!861613))

(declare-fun m!861615 () Bool)

(assert (=> start!79092 m!861615))

(declare-fun m!861617 () Bool)

(assert (=> start!79092 m!861617))

(declare-fun m!861619 () Bool)

(assert (=> b!926866 m!861619))

(assert (=> b!926866 m!861595))

(declare-fun m!861621 () Bool)

(assert (=> b!926859 m!861621))

(declare-fun m!861623 () Bool)

(assert (=> b!926863 m!861623))

(declare-fun m!861625 () Bool)

(assert (=> b!926863 m!861625))

(declare-fun m!861627 () Bool)

(assert (=> b!926858 m!861627))

(declare-fun m!861629 () Bool)

(assert (=> b!926853 m!861629))

(declare-fun m!861631 () Bool)

(assert (=> b!926853 m!861631))

(declare-fun m!861633 () Bool)

(assert (=> b!926853 m!861633))

(declare-fun m!861635 () Bool)

(assert (=> mapNonEmpty!31434 m!861635))

(declare-fun m!861637 () Bool)

(assert (=> b!926854 m!861637))

(declare-fun m!861639 () Bool)

(assert (=> b!926854 m!861639))

(declare-fun m!861641 () Bool)

(assert (=> b!926870 m!861641))

(declare-fun m!861643 () Bool)

(assert (=> b!926869 m!861643))

(declare-fun m!861645 () Bool)

(assert (=> b!926871 m!861645))

(declare-fun m!861647 () Bool)

(assert (=> b!926872 m!861647))

(declare-fun m!861649 () Bool)

(assert (=> b!926862 m!861649))

(check-sat (not b!926863) (not b!926862) b_and!28311 (not b!926872) (not b!926870) (not start!79092) (not b!926860) (not mapNonEmpty!31434) (not b!926859) (not b!926866) (not b!926869) (not b!926858) tp_is_empty!19785 (not b_next!17277) (not b_lambda!13809) (not b!926853) (not b!926854) (not b!926871))
(check-sat b_and!28311 (not b_next!17277))
