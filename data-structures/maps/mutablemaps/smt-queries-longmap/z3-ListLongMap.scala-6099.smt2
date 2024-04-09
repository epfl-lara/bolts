; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78732 () Bool)

(assert start!78732)

(declare-fun b_free!16917 () Bool)

(declare-fun b_next!16917 () Bool)

(assert (=> start!78732 (= b_free!16917 (not b_next!16917))))

(declare-fun tp!59193 () Bool)

(declare-fun b_and!27589 () Bool)

(assert (=> start!78732 (= tp!59193 b_and!27589)))

(declare-fun mapIsEmpty!30894 () Bool)

(declare-fun mapRes!30894 () Bool)

(assert (=> mapIsEmpty!30894 mapRes!30894))

(declare-fun b!917728 () Bool)

(declare-fun e!515238 () Bool)

(assert (=> b!917728 (= e!515238 (not true))))

(declare-datatypes ((array!54842 0))(
  ( (array!54843 (arr!26362 (Array (_ BitVec 32) (_ BitVec 64))) (size!26822 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54842)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30865 0))(
  ( (V!30866 (val!9763 Int)) )
))
(declare-datatypes ((ValueCell!9231 0))(
  ( (ValueCellFull!9231 (v!12281 V!30865)) (EmptyCell!9231) )
))
(declare-datatypes ((array!54844 0))(
  ( (array!54845 (arr!26363 (Array (_ BitVec 32) ValueCell!9231)) (size!26823 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54844)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!412054 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30865)

(declare-fun minValue!1173 () V!30865)

(declare-datatypes ((tuple2!12754 0))(
  ( (tuple2!12755 (_1!6387 (_ BitVec 64)) (_2!6387 V!30865)) )
))
(declare-datatypes ((List!18603 0))(
  ( (Nil!18600) (Cons!18599 (h!19745 tuple2!12754) (t!26258 List!18603)) )
))
(declare-datatypes ((ListLongMap!11465 0))(
  ( (ListLongMap!11466 (toList!5748 List!18603)) )
))
(declare-fun getCurrentListMap!2974 (array!54842 array!54844 (_ BitVec 32) (_ BitVec 32) V!30865 V!30865 (_ BitVec 32) Int) ListLongMap!11465)

(declare-fun +!2580 (ListLongMap!11465 tuple2!12754) ListLongMap!11465)

(declare-fun get!13831 (ValueCell!9231 V!30865) V!30865)

(declare-fun dynLambda!1419 (Int (_ BitVec 64)) V!30865)

(assert (=> b!917728 (= (getCurrentListMap!2974 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2580 (getCurrentListMap!2974 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12755 lt!412054 (get!13831 (select (arr!26363 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1419 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30967 0))(
  ( (Unit!30968) )
))
(declare-fun lt!412056 () Unit!30967)

(declare-fun lemmaListMapRecursiveValidKeyArray!15 (array!54842 array!54844 (_ BitVec 32) (_ BitVec 32) V!30865 V!30865 (_ BitVec 32) Int) Unit!30967)

(assert (=> b!917728 (= lt!412056 (lemmaListMapRecursiveValidKeyArray!15 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917729 () Bool)

(declare-fun res!618842 () Bool)

(declare-fun e!515235 () Bool)

(assert (=> b!917729 (=> (not res!618842) (not e!515235))))

(assert (=> b!917729 (= res!618842 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26822 _keys!1487))))))

(declare-fun b!917730 () Bool)

(declare-fun e!515241 () Bool)

(assert (=> b!917730 (= e!515235 e!515241)))

(declare-fun res!618834 () Bool)

(assert (=> b!917730 (=> (not res!618834) (not e!515241))))

(declare-fun lt!412055 () ListLongMap!11465)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4762 (ListLongMap!11465 (_ BitVec 64)) Bool)

(assert (=> b!917730 (= res!618834 (contains!4762 lt!412055 k0!1099))))

(assert (=> b!917730 (= lt!412055 (getCurrentListMap!2974 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917731 () Bool)

(declare-fun res!618833 () Bool)

(assert (=> b!917731 (=> (not res!618833) (not e!515235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54842 (_ BitVec 32)) Bool)

(assert (=> b!917731 (= res!618833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30894 () Bool)

(declare-fun tp!59192 () Bool)

(declare-fun e!515239 () Bool)

(assert (=> mapNonEmpty!30894 (= mapRes!30894 (and tp!59192 e!515239))))

(declare-fun mapKey!30894 () (_ BitVec 32))

(declare-fun mapRest!30894 () (Array (_ BitVec 32) ValueCell!9231))

(declare-fun mapValue!30894 () ValueCell!9231)

(assert (=> mapNonEmpty!30894 (= (arr!26363 _values!1231) (store mapRest!30894 mapKey!30894 mapValue!30894))))

(declare-fun b!917732 () Bool)

(declare-fun res!618837 () Bool)

(assert (=> b!917732 (=> (not res!618837) (not e!515241))))

(assert (=> b!917732 (= res!618837 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917733 () Bool)

(declare-fun res!618835 () Bool)

(assert (=> b!917733 (=> (not res!618835) (not e!515241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917733 (= res!618835 (validKeyInArray!0 k0!1099))))

(declare-fun res!618836 () Bool)

(assert (=> start!78732 (=> (not res!618836) (not e!515235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78732 (= res!618836 (validMask!0 mask!1881))))

(assert (=> start!78732 e!515235))

(assert (=> start!78732 true))

(declare-fun tp_is_empty!19425 () Bool)

(assert (=> start!78732 tp_is_empty!19425))

(declare-fun e!515240 () Bool)

(declare-fun array_inv!20542 (array!54844) Bool)

(assert (=> start!78732 (and (array_inv!20542 _values!1231) e!515240)))

(assert (=> start!78732 tp!59193))

(declare-fun array_inv!20543 (array!54842) Bool)

(assert (=> start!78732 (array_inv!20543 _keys!1487)))

(declare-fun b!917734 () Bool)

(declare-fun e!515236 () Bool)

(assert (=> b!917734 (= e!515236 tp_is_empty!19425)))

(declare-fun b!917735 () Bool)

(declare-fun res!618839 () Bool)

(assert (=> b!917735 (=> (not res!618839) (not e!515241))))

(declare-fun v!791 () V!30865)

(declare-fun apply!571 (ListLongMap!11465 (_ BitVec 64)) V!30865)

(assert (=> b!917735 (= res!618839 (= (apply!571 lt!412055 k0!1099) v!791))))

(declare-fun b!917736 () Bool)

(assert (=> b!917736 (= e!515239 tp_is_empty!19425)))

(declare-fun b!917737 () Bool)

(assert (=> b!917737 (= e!515241 e!515238)))

(declare-fun res!618841 () Bool)

(assert (=> b!917737 (=> (not res!618841) (not e!515238))))

(assert (=> b!917737 (= res!618841 (validKeyInArray!0 lt!412054))))

(assert (=> b!917737 (= lt!412054 (select (arr!26362 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917738 () Bool)

(declare-fun res!618838 () Bool)

(assert (=> b!917738 (=> (not res!618838) (not e!515235))))

(declare-datatypes ((List!18604 0))(
  ( (Nil!18601) (Cons!18600 (h!19746 (_ BitVec 64)) (t!26259 List!18604)) )
))
(declare-fun arrayNoDuplicates!0 (array!54842 (_ BitVec 32) List!18604) Bool)

(assert (=> b!917738 (= res!618838 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18601))))

(declare-fun b!917739 () Bool)

(assert (=> b!917739 (= e!515240 (and e!515236 mapRes!30894))))

(declare-fun condMapEmpty!30894 () Bool)

(declare-fun mapDefault!30894 () ValueCell!9231)

(assert (=> b!917739 (= condMapEmpty!30894 (= (arr!26363 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9231)) mapDefault!30894)))))

(declare-fun b!917740 () Bool)

(declare-fun res!618840 () Bool)

(assert (=> b!917740 (=> (not res!618840) (not e!515235))))

(assert (=> b!917740 (= res!618840 (and (= (size!26823 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26822 _keys!1487) (size!26823 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!78732 res!618836) b!917740))

(assert (= (and b!917740 res!618840) b!917731))

(assert (= (and b!917731 res!618833) b!917738))

(assert (= (and b!917738 res!618838) b!917729))

(assert (= (and b!917729 res!618842) b!917730))

(assert (= (and b!917730 res!618834) b!917735))

(assert (= (and b!917735 res!618839) b!917732))

(assert (= (and b!917732 res!618837) b!917733))

(assert (= (and b!917733 res!618835) b!917737))

(assert (= (and b!917737 res!618841) b!917728))

(assert (= (and b!917739 condMapEmpty!30894) mapIsEmpty!30894))

(assert (= (and b!917739 (not condMapEmpty!30894)) mapNonEmpty!30894))

(get-info :version)

(assert (= (and mapNonEmpty!30894 ((_ is ValueCellFull!9231) mapValue!30894)) b!917736))

(assert (= (and b!917739 ((_ is ValueCellFull!9231) mapDefault!30894)) b!917734))

(assert (= start!78732 b!917739))

(declare-fun b_lambda!13449 () Bool)

(assert (=> (not b_lambda!13449) (not b!917728)))

(declare-fun t!26257 () Bool)

(declare-fun tb!5505 () Bool)

(assert (=> (and start!78732 (= defaultEntry!1235 defaultEntry!1235) t!26257) tb!5505))

(declare-fun result!10825 () Bool)

(assert (=> tb!5505 (= result!10825 tp_is_empty!19425)))

(assert (=> b!917728 t!26257))

(declare-fun b_and!27591 () Bool)

(assert (= b_and!27589 (and (=> t!26257 result!10825) b_and!27591)))

(declare-fun m!851547 () Bool)

(assert (=> b!917733 m!851547))

(declare-fun m!851549 () Bool)

(assert (=> start!78732 m!851549))

(declare-fun m!851551 () Bool)

(assert (=> start!78732 m!851551))

(declare-fun m!851553 () Bool)

(assert (=> start!78732 m!851553))

(declare-fun m!851555 () Bool)

(assert (=> b!917731 m!851555))

(declare-fun m!851557 () Bool)

(assert (=> b!917738 m!851557))

(declare-fun m!851559 () Bool)

(assert (=> b!917735 m!851559))

(declare-fun m!851561 () Bool)

(assert (=> b!917730 m!851561))

(declare-fun m!851563 () Bool)

(assert (=> b!917730 m!851563))

(declare-fun m!851565 () Bool)

(assert (=> b!917737 m!851565))

(declare-fun m!851567 () Bool)

(assert (=> b!917737 m!851567))

(declare-fun m!851569 () Bool)

(assert (=> mapNonEmpty!30894 m!851569))

(declare-fun m!851571 () Bool)

(assert (=> b!917728 m!851571))

(declare-fun m!851573 () Bool)

(assert (=> b!917728 m!851573))

(declare-fun m!851575 () Bool)

(assert (=> b!917728 m!851575))

(declare-fun m!851577 () Bool)

(assert (=> b!917728 m!851577))

(assert (=> b!917728 m!851575))

(assert (=> b!917728 m!851577))

(declare-fun m!851579 () Bool)

(assert (=> b!917728 m!851579))

(declare-fun m!851581 () Bool)

(assert (=> b!917728 m!851581))

(assert (=> b!917728 m!851571))

(declare-fun m!851583 () Bool)

(assert (=> b!917728 m!851583))

(check-sat (not b!917737) (not b!917735) (not b!917728) (not b!917738) (not b_lambda!13449) (not b_next!16917) (not start!78732) (not b!917731) b_and!27591 (not b!917730) tp_is_empty!19425 (not mapNonEmpty!30894) (not b!917733))
(check-sat b_and!27591 (not b_next!16917))
