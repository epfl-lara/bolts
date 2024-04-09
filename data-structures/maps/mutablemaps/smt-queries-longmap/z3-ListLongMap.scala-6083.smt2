; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78636 () Bool)

(assert start!78636)

(declare-fun b_free!16821 () Bool)

(declare-fun b_next!16821 () Bool)

(assert (=> start!78636 (= b_free!16821 (not b_next!16821))))

(declare-fun tp!58905 () Bool)

(declare-fun b_and!27461 () Bool)

(assert (=> start!78636 (= tp!58905 b_and!27461)))

(declare-fun b!916204 () Bool)

(declare-fun res!617774 () Bool)

(declare-fun e!514327 () Bool)

(assert (=> b!916204 (=> (not res!617774) (not e!514327))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54660 0))(
  ( (array!54661 (arr!26271 (Array (_ BitVec 32) (_ BitVec 64))) (size!26731 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54660)

(assert (=> b!916204 (= res!617774 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26731 _keys!1487))))))

(declare-fun b!916205 () Bool)

(assert (=> b!916205 (= e!514327 false)))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30737 0))(
  ( (V!30738 (val!9715 Int)) )
))
(declare-datatypes ((ValueCell!9183 0))(
  ( (ValueCellFull!9183 (v!12233 V!30737)) (EmptyCell!9183) )
))
(declare-datatypes ((array!54662 0))(
  ( (array!54663 (arr!26272 (Array (_ BitVec 32) ValueCell!9183)) (size!26732 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54662)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30737)

(declare-fun minValue!1173 () V!30737)

(declare-fun lt!411720 () Bool)

(declare-datatypes ((tuple2!12672 0))(
  ( (tuple2!12673 (_1!6346 (_ BitVec 64)) (_2!6346 V!30737)) )
))
(declare-datatypes ((List!18533 0))(
  ( (Nil!18530) (Cons!18529 (h!19675 tuple2!12672) (t!26154 List!18533)) )
))
(declare-datatypes ((ListLongMap!11383 0))(
  ( (ListLongMap!11384 (toList!5707 List!18533)) )
))
(declare-fun contains!4727 (ListLongMap!11383 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2936 (array!54660 array!54662 (_ BitVec 32) (_ BitVec 32) V!30737 V!30737 (_ BitVec 32) Int) ListLongMap!11383)

(assert (=> b!916205 (= lt!411720 (contains!4727 (getCurrentListMap!2936 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!916206 () Bool)

(declare-fun e!514326 () Bool)

(declare-fun tp_is_empty!19329 () Bool)

(assert (=> b!916206 (= e!514326 tp_is_empty!19329)))

(declare-fun b!916207 () Bool)

(declare-fun res!617777 () Bool)

(assert (=> b!916207 (=> (not res!617777) (not e!514327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54660 (_ BitVec 32)) Bool)

(assert (=> b!916207 (= res!617777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916208 () Bool)

(declare-fun res!617776 () Bool)

(assert (=> b!916208 (=> (not res!617776) (not e!514327))))

(assert (=> b!916208 (= res!617776 (and (= (size!26732 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26731 _keys!1487) (size!26732 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916209 () Bool)

(declare-fun res!617773 () Bool)

(assert (=> b!916209 (=> (not res!617773) (not e!514327))))

(declare-datatypes ((List!18534 0))(
  ( (Nil!18531) (Cons!18530 (h!19676 (_ BitVec 64)) (t!26155 List!18534)) )
))
(declare-fun arrayNoDuplicates!0 (array!54660 (_ BitVec 32) List!18534) Bool)

(assert (=> b!916209 (= res!617773 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18531))))

(declare-fun mapIsEmpty!30750 () Bool)

(declare-fun mapRes!30750 () Bool)

(assert (=> mapIsEmpty!30750 mapRes!30750))

(declare-fun mapNonEmpty!30750 () Bool)

(declare-fun tp!58904 () Bool)

(assert (=> mapNonEmpty!30750 (= mapRes!30750 (and tp!58904 e!514326))))

(declare-fun mapValue!30750 () ValueCell!9183)

(declare-fun mapKey!30750 () (_ BitVec 32))

(declare-fun mapRest!30750 () (Array (_ BitVec 32) ValueCell!9183))

(assert (=> mapNonEmpty!30750 (= (arr!26272 _values!1231) (store mapRest!30750 mapKey!30750 mapValue!30750))))

(declare-fun res!617775 () Bool)

(assert (=> start!78636 (=> (not res!617775) (not e!514327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78636 (= res!617775 (validMask!0 mask!1881))))

(assert (=> start!78636 e!514327))

(assert (=> start!78636 true))

(declare-fun e!514325 () Bool)

(declare-fun array_inv!20484 (array!54662) Bool)

(assert (=> start!78636 (and (array_inv!20484 _values!1231) e!514325)))

(assert (=> start!78636 tp!58905))

(declare-fun array_inv!20485 (array!54660) Bool)

(assert (=> start!78636 (array_inv!20485 _keys!1487)))

(assert (=> start!78636 tp_is_empty!19329))

(declare-fun b!916210 () Bool)

(declare-fun e!514328 () Bool)

(assert (=> b!916210 (= e!514325 (and e!514328 mapRes!30750))))

(declare-fun condMapEmpty!30750 () Bool)

(declare-fun mapDefault!30750 () ValueCell!9183)

(assert (=> b!916210 (= condMapEmpty!30750 (= (arr!26272 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9183)) mapDefault!30750)))))

(declare-fun b!916211 () Bool)

(assert (=> b!916211 (= e!514328 tp_is_empty!19329)))

(assert (= (and start!78636 res!617775) b!916208))

(assert (= (and b!916208 res!617776) b!916207))

(assert (= (and b!916207 res!617777) b!916209))

(assert (= (and b!916209 res!617773) b!916204))

(assert (= (and b!916204 res!617774) b!916205))

(assert (= (and b!916210 condMapEmpty!30750) mapIsEmpty!30750))

(assert (= (and b!916210 (not condMapEmpty!30750)) mapNonEmpty!30750))

(get-info :version)

(assert (= (and mapNonEmpty!30750 ((_ is ValueCellFull!9183) mapValue!30750)) b!916206))

(assert (= (and b!916210 ((_ is ValueCellFull!9183) mapDefault!30750)) b!916211))

(assert (= start!78636 b!916210))

(declare-fun m!850367 () Bool)

(assert (=> b!916205 m!850367))

(assert (=> b!916205 m!850367))

(declare-fun m!850369 () Bool)

(assert (=> b!916205 m!850369))

(declare-fun m!850371 () Bool)

(assert (=> start!78636 m!850371))

(declare-fun m!850373 () Bool)

(assert (=> start!78636 m!850373))

(declare-fun m!850375 () Bool)

(assert (=> start!78636 m!850375))

(declare-fun m!850377 () Bool)

(assert (=> b!916209 m!850377))

(declare-fun m!850379 () Bool)

(assert (=> b!916207 m!850379))

(declare-fun m!850381 () Bool)

(assert (=> mapNonEmpty!30750 m!850381))

(check-sat (not b!916209) (not b!916205) (not b!916207) (not mapNonEmpty!30750) (not start!78636) tp_is_empty!19329 (not b_next!16821) b_and!27461)
(check-sat b_and!27461 (not b_next!16821))
