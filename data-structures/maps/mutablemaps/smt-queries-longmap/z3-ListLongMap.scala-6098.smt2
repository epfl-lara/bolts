; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78726 () Bool)

(assert start!78726)

(declare-fun b_free!16911 () Bool)

(declare-fun b_next!16911 () Bool)

(assert (=> start!78726 (= b_free!16911 (not b_next!16911))))

(declare-fun tp!59174 () Bool)

(declare-fun b_and!27577 () Bool)

(assert (=> start!78726 (= tp!59174 b_and!27577)))

(declare-fun b!917605 () Bool)

(declare-fun res!618746 () Bool)

(declare-fun e!515172 () Bool)

(assert (=> b!917605 (=> (not res!618746) (not e!515172))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!30857 0))(
  ( (V!30858 (val!9760 Int)) )
))
(declare-fun v!791 () V!30857)

(declare-datatypes ((tuple2!12750 0))(
  ( (tuple2!12751 (_1!6385 (_ BitVec 64)) (_2!6385 V!30857)) )
))
(declare-datatypes ((List!18600 0))(
  ( (Nil!18597) (Cons!18596 (h!19742 tuple2!12750) (t!26249 List!18600)) )
))
(declare-datatypes ((ListLongMap!11461 0))(
  ( (ListLongMap!11462 (toList!5746 List!18600)) )
))
(declare-fun lt!412029 () ListLongMap!11461)

(declare-fun apply!569 (ListLongMap!11461 (_ BitVec 64)) V!30857)

(assert (=> b!917605 (= res!618746 (= (apply!569 lt!412029 k0!1099) v!791))))

(declare-fun b!917606 () Bool)

(declare-fun e!515176 () Bool)

(declare-fun e!515175 () Bool)

(declare-fun mapRes!30885 () Bool)

(assert (=> b!917606 (= e!515176 (and e!515175 mapRes!30885))))

(declare-fun condMapEmpty!30885 () Bool)

(declare-datatypes ((ValueCell!9228 0))(
  ( (ValueCellFull!9228 (v!12278 V!30857)) (EmptyCell!9228) )
))
(declare-datatypes ((array!54830 0))(
  ( (array!54831 (arr!26356 (Array (_ BitVec 32) ValueCell!9228)) (size!26816 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54830)

(declare-fun mapDefault!30885 () ValueCell!9228)

(assert (=> b!917606 (= condMapEmpty!30885 (= (arr!26356 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9228)) mapDefault!30885)))))

(declare-fun b!917607 () Bool)

(declare-fun res!618749 () Bool)

(declare-fun e!515174 () Bool)

(assert (=> b!917607 (=> (not res!618749) (not e!515174))))

(declare-datatypes ((array!54832 0))(
  ( (array!54833 (arr!26357 (Array (_ BitVec 32) (_ BitVec 64))) (size!26817 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54832)

(declare-datatypes ((List!18601 0))(
  ( (Nil!18598) (Cons!18597 (h!19743 (_ BitVec 64)) (t!26250 List!18601)) )
))
(declare-fun arrayNoDuplicates!0 (array!54832 (_ BitVec 32) List!18601) Bool)

(assert (=> b!917607 (= res!618749 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18598))))

(declare-fun b!917608 () Bool)

(declare-fun res!618751 () Bool)

(assert (=> b!917608 (=> (not res!618751) (not e!515174))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!917608 (= res!618751 (and (= (size!26816 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26817 _keys!1487) (size!26816 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917609 () Bool)

(declare-fun e!515173 () Bool)

(assert (=> b!917609 (= e!515172 e!515173)))

(declare-fun res!618745 () Bool)

(assert (=> b!917609 (=> (not res!618745) (not e!515173))))

(declare-fun lt!412027 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917609 (= res!618745 (validKeyInArray!0 lt!412027))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917609 (= lt!412027 (select (arr!26357 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917610 () Bool)

(declare-fun res!618748 () Bool)

(assert (=> b!917610 (=> (not res!618748) (not e!515172))))

(assert (=> b!917610 (= res!618748 (validKeyInArray!0 k0!1099))))

(declare-fun b!917611 () Bool)

(assert (=> b!917611 (= e!515173 (not true))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30857)

(declare-fun minValue!1173 () V!30857)

(declare-fun getCurrentListMap!2972 (array!54832 array!54830 (_ BitVec 32) (_ BitVec 32) V!30857 V!30857 (_ BitVec 32) Int) ListLongMap!11461)

(declare-fun +!2578 (ListLongMap!11461 tuple2!12750) ListLongMap!11461)

(declare-fun get!13827 (ValueCell!9228 V!30857) V!30857)

(declare-fun dynLambda!1417 (Int (_ BitVec 64)) V!30857)

(assert (=> b!917611 (= (getCurrentListMap!2972 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2578 (getCurrentListMap!2972 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12751 lt!412027 (get!13827 (select (arr!26356 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1417 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30963 0))(
  ( (Unit!30964) )
))
(declare-fun lt!412028 () Unit!30963)

(declare-fun lemmaListMapRecursiveValidKeyArray!13 (array!54832 array!54830 (_ BitVec 32) (_ BitVec 32) V!30857 V!30857 (_ BitVec 32) Int) Unit!30963)

(assert (=> b!917611 (= lt!412028 (lemmaListMapRecursiveValidKeyArray!13 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!618747 () Bool)

(assert (=> start!78726 (=> (not res!618747) (not e!515174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78726 (= res!618747 (validMask!0 mask!1881))))

(assert (=> start!78726 e!515174))

(assert (=> start!78726 true))

(declare-fun tp_is_empty!19419 () Bool)

(assert (=> start!78726 tp_is_empty!19419))

(declare-fun array_inv!20538 (array!54830) Bool)

(assert (=> start!78726 (and (array_inv!20538 _values!1231) e!515176)))

(assert (=> start!78726 tp!59174))

(declare-fun array_inv!20539 (array!54832) Bool)

(assert (=> start!78726 (array_inv!20539 _keys!1487)))

(declare-fun b!917612 () Bool)

(declare-fun e!515178 () Bool)

(assert (=> b!917612 (= e!515178 tp_is_empty!19419)))

(declare-fun b!917613 () Bool)

(assert (=> b!917613 (= e!515174 e!515172)))

(declare-fun res!618743 () Bool)

(assert (=> b!917613 (=> (not res!618743) (not e!515172))))

(declare-fun contains!4760 (ListLongMap!11461 (_ BitVec 64)) Bool)

(assert (=> b!917613 (= res!618743 (contains!4760 lt!412029 k0!1099))))

(assert (=> b!917613 (= lt!412029 (getCurrentListMap!2972 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917614 () Bool)

(declare-fun res!618752 () Bool)

(assert (=> b!917614 (=> (not res!618752) (not e!515174))))

(assert (=> b!917614 (= res!618752 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26817 _keys!1487))))))

(declare-fun b!917615 () Bool)

(declare-fun res!618750 () Bool)

(assert (=> b!917615 (=> (not res!618750) (not e!515174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54832 (_ BitVec 32)) Bool)

(assert (=> b!917615 (= res!618750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917616 () Bool)

(assert (=> b!917616 (= e!515175 tp_is_empty!19419)))

(declare-fun mapIsEmpty!30885 () Bool)

(assert (=> mapIsEmpty!30885 mapRes!30885))

(declare-fun b!917617 () Bool)

(declare-fun res!618744 () Bool)

(assert (=> b!917617 (=> (not res!618744) (not e!515172))))

(assert (=> b!917617 (= res!618744 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!30885 () Bool)

(declare-fun tp!59175 () Bool)

(assert (=> mapNonEmpty!30885 (= mapRes!30885 (and tp!59175 e!515178))))

(declare-fun mapValue!30885 () ValueCell!9228)

(declare-fun mapRest!30885 () (Array (_ BitVec 32) ValueCell!9228))

(declare-fun mapKey!30885 () (_ BitVec 32))

(assert (=> mapNonEmpty!30885 (= (arr!26356 _values!1231) (store mapRest!30885 mapKey!30885 mapValue!30885))))

(assert (= (and start!78726 res!618747) b!917608))

(assert (= (and b!917608 res!618751) b!917615))

(assert (= (and b!917615 res!618750) b!917607))

(assert (= (and b!917607 res!618749) b!917614))

(assert (= (and b!917614 res!618752) b!917613))

(assert (= (and b!917613 res!618743) b!917605))

(assert (= (and b!917605 res!618746) b!917617))

(assert (= (and b!917617 res!618744) b!917610))

(assert (= (and b!917610 res!618748) b!917609))

(assert (= (and b!917609 res!618745) b!917611))

(assert (= (and b!917606 condMapEmpty!30885) mapIsEmpty!30885))

(assert (= (and b!917606 (not condMapEmpty!30885)) mapNonEmpty!30885))

(get-info :version)

(assert (= (and mapNonEmpty!30885 ((_ is ValueCellFull!9228) mapValue!30885)) b!917612))

(assert (= (and b!917606 ((_ is ValueCellFull!9228) mapDefault!30885)) b!917616))

(assert (= start!78726 b!917606))

(declare-fun b_lambda!13443 () Bool)

(assert (=> (not b_lambda!13443) (not b!917611)))

(declare-fun t!26248 () Bool)

(declare-fun tb!5499 () Bool)

(assert (=> (and start!78726 (= defaultEntry!1235 defaultEntry!1235) t!26248) tb!5499))

(declare-fun result!10813 () Bool)

(assert (=> tb!5499 (= result!10813 tp_is_empty!19419)))

(assert (=> b!917611 t!26248))

(declare-fun b_and!27579 () Bool)

(assert (= b_and!27577 (and (=> t!26248 result!10813) b_and!27579)))

(declare-fun m!851433 () Bool)

(assert (=> b!917607 m!851433))

(declare-fun m!851435 () Bool)

(assert (=> b!917605 m!851435))

(declare-fun m!851437 () Bool)

(assert (=> b!917611 m!851437))

(declare-fun m!851439 () Bool)

(assert (=> b!917611 m!851439))

(declare-fun m!851441 () Bool)

(assert (=> b!917611 m!851441))

(declare-fun m!851443 () Bool)

(assert (=> b!917611 m!851443))

(assert (=> b!917611 m!851441))

(assert (=> b!917611 m!851443))

(declare-fun m!851445 () Bool)

(assert (=> b!917611 m!851445))

(declare-fun m!851447 () Bool)

(assert (=> b!917611 m!851447))

(assert (=> b!917611 m!851437))

(declare-fun m!851449 () Bool)

(assert (=> b!917611 m!851449))

(declare-fun m!851451 () Bool)

(assert (=> b!917615 m!851451))

(declare-fun m!851453 () Bool)

(assert (=> b!917610 m!851453))

(declare-fun m!851455 () Bool)

(assert (=> start!78726 m!851455))

(declare-fun m!851457 () Bool)

(assert (=> start!78726 m!851457))

(declare-fun m!851459 () Bool)

(assert (=> start!78726 m!851459))

(declare-fun m!851461 () Bool)

(assert (=> mapNonEmpty!30885 m!851461))

(declare-fun m!851463 () Bool)

(assert (=> b!917613 m!851463))

(declare-fun m!851465 () Bool)

(assert (=> b!917613 m!851465))

(declare-fun m!851467 () Bool)

(assert (=> b!917609 m!851467))

(declare-fun m!851469 () Bool)

(assert (=> b!917609 m!851469))

(check-sat (not b_lambda!13443) (not start!78726) (not b!917611) (not b!917609) (not b!917605) tp_is_empty!19419 b_and!27579 (not b!917615) (not mapNonEmpty!30885) (not b!917613) (not b!917607) (not b!917610) (not b_next!16911))
(check-sat b_and!27579 (not b_next!16911))
