; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78774 () Bool)

(assert start!78774)

(declare-fun b_free!16959 () Bool)

(declare-fun b_next!16959 () Bool)

(assert (=> start!78774 (= b_free!16959 (not b_next!16959))))

(declare-fun tp!59318 () Bool)

(declare-fun b_and!27673 () Bool)

(assert (=> start!78774 (= tp!59318 b_and!27673)))

(declare-fun b!918589 () Bool)

(declare-fun e!515676 () Bool)

(declare-fun tp_is_empty!19467 () Bool)

(assert (=> b!918589 (= e!515676 tp_is_empty!19467)))

(declare-fun b!918590 () Bool)

(declare-fun e!515681 () Bool)

(declare-fun mapRes!30957 () Bool)

(assert (=> b!918590 (= e!515681 (and e!515676 mapRes!30957))))

(declare-fun condMapEmpty!30957 () Bool)

(declare-datatypes ((V!30921 0))(
  ( (V!30922 (val!9784 Int)) )
))
(declare-datatypes ((ValueCell!9252 0))(
  ( (ValueCellFull!9252 (v!12302 V!30921)) (EmptyCell!9252) )
))
(declare-datatypes ((array!54926 0))(
  ( (array!54927 (arr!26404 (Array (_ BitVec 32) ValueCell!9252)) (size!26864 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54926)

(declare-fun mapDefault!30957 () ValueCell!9252)

(assert (=> b!918590 (= condMapEmpty!30957 (= (arr!26404 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9252)) mapDefault!30957)))))

(declare-fun b!918591 () Bool)

(declare-fun res!619469 () Bool)

(declare-fun e!515680 () Bool)

(assert (=> b!918591 (=> (not res!619469) (not e!515680))))

(declare-fun v!791 () V!30921)

(declare-datatypes ((tuple2!12794 0))(
  ( (tuple2!12795 (_1!6407 (_ BitVec 64)) (_2!6407 V!30921)) )
))
(declare-datatypes ((List!18636 0))(
  ( (Nil!18633) (Cons!18632 (h!19778 tuple2!12794) (t!26333 List!18636)) )
))
(declare-datatypes ((ListLongMap!11505 0))(
  ( (ListLongMap!11506 (toList!5768 List!18636)) )
))
(declare-fun lt!412312 () ListLongMap!11505)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!587 (ListLongMap!11505 (_ BitVec 64)) V!30921)

(assert (=> b!918591 (= res!619469 (= (apply!587 lt!412312 k0!1099) v!791))))

(declare-fun mapNonEmpty!30957 () Bool)

(declare-fun tp!59319 () Bool)

(declare-fun e!515677 () Bool)

(assert (=> mapNonEmpty!30957 (= mapRes!30957 (and tp!59319 e!515677))))

(declare-fun mapRest!30957 () (Array (_ BitVec 32) ValueCell!9252))

(declare-fun mapKey!30957 () (_ BitVec 32))

(declare-fun mapValue!30957 () ValueCell!9252)

(assert (=> mapNonEmpty!30957 (= (arr!26404 _values!1231) (store mapRest!30957 mapKey!30957 mapValue!30957))))

(declare-fun b!918592 () Bool)

(declare-fun res!619470 () Bool)

(assert (=> b!918592 (=> (not res!619470) (not e!515680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918592 (= res!619470 (validKeyInArray!0 k0!1099))))

(declare-fun b!918593 () Bool)

(declare-fun res!619471 () Bool)

(assert (=> b!918593 (=> (not res!619471) (not e!515680))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918593 (= res!619471 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918594 () Bool)

(declare-fun e!515678 () Bool)

(assert (=> b!918594 (= e!515678 (not true))))

(declare-fun lt!412316 () tuple2!12794)

(declare-fun contains!4781 (ListLongMap!11505 (_ BitVec 64)) Bool)

(declare-fun +!2596 (ListLongMap!11505 tuple2!12794) ListLongMap!11505)

(assert (=> b!918594 (contains!4781 (+!2596 lt!412312 lt!412316) k0!1099)))

(declare-fun lt!412313 () (_ BitVec 64))

(declare-datatypes ((Unit!30999 0))(
  ( (Unit!31000) )
))
(declare-fun lt!412315 () Unit!30999)

(declare-fun lt!412317 () V!30921)

(declare-fun addStillContains!358 (ListLongMap!11505 (_ BitVec 64) V!30921 (_ BitVec 64)) Unit!30999)

(assert (=> b!918594 (= lt!412315 (addStillContains!358 lt!412312 lt!412313 lt!412317 k0!1099))))

(declare-datatypes ((array!54928 0))(
  ( (array!54929 (arr!26405 (Array (_ BitVec 32) (_ BitVec 64))) (size!26865 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54928)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30921)

(declare-fun minValue!1173 () V!30921)

(declare-fun getCurrentListMap!2993 (array!54928 array!54926 (_ BitVec 32) (_ BitVec 32) V!30921 V!30921 (_ BitVec 32) Int) ListLongMap!11505)

(assert (=> b!918594 (= (getCurrentListMap!2993 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2596 (getCurrentListMap!2993 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412316))))

(assert (=> b!918594 (= lt!412316 (tuple2!12795 lt!412313 lt!412317))))

(declare-fun get!13861 (ValueCell!9252 V!30921) V!30921)

(declare-fun dynLambda!1435 (Int (_ BitVec 64)) V!30921)

(assert (=> b!918594 (= lt!412317 (get!13861 (select (arr!26404 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1435 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412314 () Unit!30999)

(declare-fun lemmaListMapRecursiveValidKeyArray!31 (array!54928 array!54926 (_ BitVec 32) (_ BitVec 32) V!30921 V!30921 (_ BitVec 32) Int) Unit!30999)

(assert (=> b!918594 (= lt!412314 (lemmaListMapRecursiveValidKeyArray!31 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918595 () Bool)

(declare-fun res!619472 () Bool)

(declare-fun e!515679 () Bool)

(assert (=> b!918595 (=> (not res!619472) (not e!515679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54928 (_ BitVec 32)) Bool)

(assert (=> b!918595 (= res!619472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30957 () Bool)

(assert (=> mapIsEmpty!30957 mapRes!30957))

(declare-fun b!918597 () Bool)

(declare-fun res!619464 () Bool)

(assert (=> b!918597 (=> (not res!619464) (not e!515679))))

(assert (=> b!918597 (= res!619464 (and (= (size!26864 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26865 _keys!1487) (size!26864 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918598 () Bool)

(assert (=> b!918598 (= e!515677 tp_is_empty!19467)))

(declare-fun b!918599 () Bool)

(declare-fun res!619463 () Bool)

(assert (=> b!918599 (=> (not res!619463) (not e!515679))))

(declare-datatypes ((List!18637 0))(
  ( (Nil!18634) (Cons!18633 (h!19779 (_ BitVec 64)) (t!26334 List!18637)) )
))
(declare-fun arrayNoDuplicates!0 (array!54928 (_ BitVec 32) List!18637) Bool)

(assert (=> b!918599 (= res!619463 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18634))))

(declare-fun b!918600 () Bool)

(assert (=> b!918600 (= e!515680 e!515678)))

(declare-fun res!619467 () Bool)

(assert (=> b!918600 (=> (not res!619467) (not e!515678))))

(assert (=> b!918600 (= res!619467 (validKeyInArray!0 lt!412313))))

(assert (=> b!918600 (= lt!412313 (select (arr!26405 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918601 () Bool)

(assert (=> b!918601 (= e!515679 e!515680)))

(declare-fun res!619468 () Bool)

(assert (=> b!918601 (=> (not res!619468) (not e!515680))))

(assert (=> b!918601 (= res!619468 (contains!4781 lt!412312 k0!1099))))

(assert (=> b!918601 (= lt!412312 (getCurrentListMap!2993 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!619465 () Bool)

(assert (=> start!78774 (=> (not res!619465) (not e!515679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78774 (= res!619465 (validMask!0 mask!1881))))

(assert (=> start!78774 e!515679))

(assert (=> start!78774 true))

(assert (=> start!78774 tp_is_empty!19467))

(declare-fun array_inv!20576 (array!54926) Bool)

(assert (=> start!78774 (and (array_inv!20576 _values!1231) e!515681)))

(assert (=> start!78774 tp!59318))

(declare-fun array_inv!20577 (array!54928) Bool)

(assert (=> start!78774 (array_inv!20577 _keys!1487)))

(declare-fun b!918596 () Bool)

(declare-fun res!619466 () Bool)

(assert (=> b!918596 (=> (not res!619466) (not e!515679))))

(assert (=> b!918596 (= res!619466 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26865 _keys!1487))))))

(assert (= (and start!78774 res!619465) b!918597))

(assert (= (and b!918597 res!619464) b!918595))

(assert (= (and b!918595 res!619472) b!918599))

(assert (= (and b!918599 res!619463) b!918596))

(assert (= (and b!918596 res!619466) b!918601))

(assert (= (and b!918601 res!619468) b!918591))

(assert (= (and b!918591 res!619469) b!918593))

(assert (= (and b!918593 res!619471) b!918592))

(assert (= (and b!918592 res!619470) b!918600))

(assert (= (and b!918600 res!619467) b!918594))

(assert (= (and b!918590 condMapEmpty!30957) mapIsEmpty!30957))

(assert (= (and b!918590 (not condMapEmpty!30957)) mapNonEmpty!30957))

(get-info :version)

(assert (= (and mapNonEmpty!30957 ((_ is ValueCellFull!9252) mapValue!30957)) b!918598))

(assert (= (and b!918590 ((_ is ValueCellFull!9252) mapDefault!30957)) b!918589))

(assert (= start!78774 b!918590))

(declare-fun b_lambda!13491 () Bool)

(assert (=> (not b_lambda!13491) (not b!918594)))

(declare-fun t!26332 () Bool)

(declare-fun tb!5547 () Bool)

(assert (=> (and start!78774 (= defaultEntry!1235 defaultEntry!1235) t!26332) tb!5547))

(declare-fun result!10909 () Bool)

(assert (=> tb!5547 (= result!10909 tp_is_empty!19467)))

(assert (=> b!918594 t!26332))

(declare-fun b_and!27675 () Bool)

(assert (= b_and!27673 (and (=> t!26332 result!10909) b_and!27675)))

(declare-fun m!852387 () Bool)

(assert (=> start!78774 m!852387))

(declare-fun m!852389 () Bool)

(assert (=> start!78774 m!852389))

(declare-fun m!852391 () Bool)

(assert (=> start!78774 m!852391))

(declare-fun m!852393 () Bool)

(assert (=> mapNonEmpty!30957 m!852393))

(declare-fun m!852395 () Bool)

(assert (=> b!918599 m!852395))

(declare-fun m!852397 () Bool)

(assert (=> b!918595 m!852397))

(declare-fun m!852399 () Bool)

(assert (=> b!918592 m!852399))

(declare-fun m!852401 () Bool)

(assert (=> b!918600 m!852401))

(declare-fun m!852403 () Bool)

(assert (=> b!918600 m!852403))

(declare-fun m!852405 () Bool)

(assert (=> b!918591 m!852405))

(declare-fun m!852407 () Bool)

(assert (=> b!918594 m!852407))

(declare-fun m!852409 () Bool)

(assert (=> b!918594 m!852409))

(declare-fun m!852411 () Bool)

(assert (=> b!918594 m!852411))

(declare-fun m!852413 () Bool)

(assert (=> b!918594 m!852413))

(declare-fun m!852415 () Bool)

(assert (=> b!918594 m!852415))

(declare-fun m!852417 () Bool)

(assert (=> b!918594 m!852417))

(assert (=> b!918594 m!852411))

(declare-fun m!852419 () Bool)

(assert (=> b!918594 m!852419))

(declare-fun m!852421 () Bool)

(assert (=> b!918594 m!852421))

(assert (=> b!918594 m!852413))

(declare-fun m!852423 () Bool)

(assert (=> b!918594 m!852423))

(assert (=> b!918594 m!852407))

(declare-fun m!852425 () Bool)

(assert (=> b!918594 m!852425))

(assert (=> b!918594 m!852417))

(declare-fun m!852427 () Bool)

(assert (=> b!918601 m!852427))

(declare-fun m!852429 () Bool)

(assert (=> b!918601 m!852429))

(check-sat (not b_lambda!13491) (not b!918601) (not b!918595) (not start!78774) tp_is_empty!19467 b_and!27675 (not mapNonEmpty!30957) (not b!918592) (not b!918594) (not b!918591) (not b!918600) (not b_next!16959) (not b!918599))
(check-sat b_and!27675 (not b_next!16959))
