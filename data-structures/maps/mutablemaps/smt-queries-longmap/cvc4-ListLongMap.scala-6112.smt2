; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78812 () Bool)

(assert start!78812)

(declare-fun b_free!16997 () Bool)

(declare-fun b_next!16997 () Bool)

(assert (=> start!78812 (= b_free!16997 (not b_next!16997))))

(declare-fun tp!59433 () Bool)

(declare-fun b_and!27749 () Bool)

(assert (=> start!78812 (= tp!59433 b_and!27749)))

(declare-fun b!919368 () Bool)

(declare-fun e!516077 () Bool)

(assert (=> b!919368 (= e!516077 (not true))))

(declare-datatypes ((array!55002 0))(
  ( (array!55003 (arr!26442 (Array (_ BitVec 32) (_ BitVec 64))) (size!26902 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55002)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!18670 0))(
  ( (Nil!18667) (Cons!18666 (h!19812 (_ BitVec 64)) (t!26405 List!18670)) )
))
(declare-fun arrayNoDuplicates!0 (array!55002 (_ BitVec 32) List!18670) Bool)

(assert (=> b!919368 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18667)))

(declare-datatypes ((Unit!31025 0))(
  ( (Unit!31026) )
))
(declare-fun lt!412689 () Unit!31025)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55002 (_ BitVec 32) (_ BitVec 32)) Unit!31025)

(assert (=> b!919368 (= lt!412689 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!30971 0))(
  ( (V!30972 (val!9803 Int)) )
))
(declare-datatypes ((tuple2!12828 0))(
  ( (tuple2!12829 (_1!6424 (_ BitVec 64)) (_2!6424 V!30971)) )
))
(declare-datatypes ((List!18671 0))(
  ( (Nil!18668) (Cons!18667 (h!19813 tuple2!12828) (t!26406 List!18671)) )
))
(declare-datatypes ((ListLongMap!11539 0))(
  ( (ListLongMap!11540 (toList!5785 List!18671)) )
))
(declare-fun lt!412690 () ListLongMap!11539)

(declare-fun lt!412691 () tuple2!12828)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4796 (ListLongMap!11539 (_ BitVec 64)) Bool)

(declare-fun +!2609 (ListLongMap!11539 tuple2!12828) ListLongMap!11539)

(assert (=> b!919368 (contains!4796 (+!2609 lt!412690 lt!412691) k!1099)))

(declare-fun lt!412694 () (_ BitVec 64))

(declare-fun lt!412692 () V!30971)

(declare-fun lt!412695 () Unit!31025)

(declare-fun addStillContains!371 (ListLongMap!11539 (_ BitVec 64) V!30971 (_ BitVec 64)) Unit!31025)

(assert (=> b!919368 (= lt!412695 (addStillContains!371 lt!412690 lt!412694 lt!412692 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9271 0))(
  ( (ValueCellFull!9271 (v!12321 V!30971)) (EmptyCell!9271) )
))
(declare-datatypes ((array!55004 0))(
  ( (array!55005 (arr!26443 (Array (_ BitVec 32) ValueCell!9271)) (size!26903 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55004)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30971)

(declare-fun minValue!1173 () V!30971)

(declare-fun getCurrentListMap!3008 (array!55002 array!55004 (_ BitVec 32) (_ BitVec 32) V!30971 V!30971 (_ BitVec 32) Int) ListLongMap!11539)

(assert (=> b!919368 (= (getCurrentListMap!3008 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2609 (getCurrentListMap!3008 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412691))))

(assert (=> b!919368 (= lt!412691 (tuple2!12829 lt!412694 lt!412692))))

(declare-fun get!13886 (ValueCell!9271 V!30971) V!30971)

(declare-fun dynLambda!1448 (Int (_ BitVec 64)) V!30971)

(assert (=> b!919368 (= lt!412692 (get!13886 (select (arr!26443 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1448 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412693 () Unit!31025)

(declare-fun lemmaListMapRecursiveValidKeyArray!44 (array!55002 array!55004 (_ BitVec 32) (_ BitVec 32) V!30971 V!30971 (_ BitVec 32) Int) Unit!31025)

(assert (=> b!919368 (= lt!412693 (lemmaListMapRecursiveValidKeyArray!44 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919369 () Bool)

(declare-fun res!620033 () Bool)

(declare-fun e!516081 () Bool)

(assert (=> b!919369 (=> (not res!620033) (not e!516081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55002 (_ BitVec 32)) Bool)

(assert (=> b!919369 (= res!620033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919370 () Bool)

(declare-fun e!516075 () Bool)

(declare-fun tp_is_empty!19505 () Bool)

(assert (=> b!919370 (= e!516075 tp_is_empty!19505)))

(declare-fun b!919371 () Bool)

(declare-fun e!516076 () Bool)

(assert (=> b!919371 (= e!516076 tp_is_empty!19505)))

(declare-fun b!919372 () Bool)

(declare-fun res!620036 () Bool)

(assert (=> b!919372 (=> (not res!620036) (not e!516081))))

(assert (=> b!919372 (= res!620036 (and (= (size!26903 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26902 _keys!1487) (size!26903 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919373 () Bool)

(declare-fun res!620039 () Bool)

(assert (=> b!919373 (=> (not res!620039) (not e!516081))))

(assert (=> b!919373 (= res!620039 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26902 _keys!1487))))))

(declare-fun res!620034 () Bool)

(assert (=> start!78812 (=> (not res!620034) (not e!516081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78812 (= res!620034 (validMask!0 mask!1881))))

(assert (=> start!78812 e!516081))

(assert (=> start!78812 true))

(assert (=> start!78812 tp_is_empty!19505))

(declare-fun e!516078 () Bool)

(declare-fun array_inv!20602 (array!55004) Bool)

(assert (=> start!78812 (and (array_inv!20602 _values!1231) e!516078)))

(assert (=> start!78812 tp!59433))

(declare-fun array_inv!20603 (array!55002) Bool)

(assert (=> start!78812 (array_inv!20603 _keys!1487)))

(declare-fun mapNonEmpty!31014 () Bool)

(declare-fun mapRes!31014 () Bool)

(declare-fun tp!59432 () Bool)

(assert (=> mapNonEmpty!31014 (= mapRes!31014 (and tp!59432 e!516076))))

(declare-fun mapRest!31014 () (Array (_ BitVec 32) ValueCell!9271))

(declare-fun mapValue!31014 () ValueCell!9271)

(declare-fun mapKey!31014 () (_ BitVec 32))

(assert (=> mapNonEmpty!31014 (= (arr!26443 _values!1231) (store mapRest!31014 mapKey!31014 mapValue!31014))))

(declare-fun b!919374 () Bool)

(declare-fun res!620038 () Bool)

(assert (=> b!919374 (=> (not res!620038) (not e!516081))))

(assert (=> b!919374 (= res!620038 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18667))))

(declare-fun b!919375 () Bool)

(assert (=> b!919375 (= e!516078 (and e!516075 mapRes!31014))))

(declare-fun condMapEmpty!31014 () Bool)

(declare-fun mapDefault!31014 () ValueCell!9271)

