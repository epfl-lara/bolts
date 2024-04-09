; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78696 () Bool)

(assert start!78696)

(declare-fun b_free!16881 () Bool)

(declare-fun b_next!16881 () Bool)

(assert (=> start!78696 (= b_free!16881 (not b_next!16881))))

(declare-fun tp!59084 () Bool)

(declare-fun b_and!27521 () Bool)

(assert (=> start!78696 (= tp!59084 b_and!27521)))

(declare-fun b!917010 () Bool)

(declare-fun res!618309 () Bool)

(declare-fun e!514866 () Bool)

(assert (=> b!917010 (=> (not res!618309) (not e!514866))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54770 0))(
  ( (array!54771 (arr!26326 (Array (_ BitVec 32) (_ BitVec 64))) (size!26786 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54770)

(assert (=> b!917010 (= res!618309 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26786 _keys!1487))))))

(declare-fun res!618314 () Bool)

(assert (=> start!78696 (=> (not res!618314) (not e!514866))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78696 (= res!618314 (validMask!0 mask!1881))))

(assert (=> start!78696 e!514866))

(assert (=> start!78696 true))

(declare-datatypes ((V!30817 0))(
  ( (V!30818 (val!9745 Int)) )
))
(declare-datatypes ((ValueCell!9213 0))(
  ( (ValueCellFull!9213 (v!12263 V!30817)) (EmptyCell!9213) )
))
(declare-datatypes ((array!54772 0))(
  ( (array!54773 (arr!26327 (Array (_ BitVec 32) ValueCell!9213)) (size!26787 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54772)

(declare-fun e!514861 () Bool)

(declare-fun array_inv!20524 (array!54772) Bool)

(assert (=> start!78696 (and (array_inv!20524 _values!1231) e!514861)))

(assert (=> start!78696 tp!59084))

(declare-fun array_inv!20525 (array!54770) Bool)

(assert (=> start!78696 (array_inv!20525 _keys!1487)))

(declare-fun tp_is_empty!19389 () Bool)

(assert (=> start!78696 tp_is_empty!19389))

(declare-fun mapIsEmpty!30840 () Bool)

(declare-fun mapRes!30840 () Bool)

(assert (=> mapIsEmpty!30840 mapRes!30840))

(declare-fun b!917011 () Bool)

(declare-fun e!514864 () Bool)

(assert (=> b!917011 (= e!514864 tp_is_empty!19389)))

(declare-fun b!917012 () Bool)

(declare-fun res!618310 () Bool)

(assert (=> b!917012 (=> (not res!618310) (not e!514866))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!917012 (= res!618310 (and (= (size!26787 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26786 _keys!1487) (size!26787 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917013 () Bool)

(declare-fun e!514863 () Bool)

(assert (=> b!917013 (= e!514863 false)))

(declare-fun lt!411896 () V!30817)

(declare-datatypes ((tuple2!12722 0))(
  ( (tuple2!12723 (_1!6371 (_ BitVec 64)) (_2!6371 V!30817)) )
))
(declare-datatypes ((List!18577 0))(
  ( (Nil!18574) (Cons!18573 (h!19719 tuple2!12722) (t!26198 List!18577)) )
))
(declare-datatypes ((ListLongMap!11433 0))(
  ( (ListLongMap!11434 (toList!5732 List!18577)) )
))
(declare-fun lt!411897 () ListLongMap!11433)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!560 (ListLongMap!11433 (_ BitVec 64)) V!30817)

(assert (=> b!917013 (= lt!411896 (apply!560 lt!411897 k0!1099))))

(declare-fun b!917014 () Bool)

(assert (=> b!917014 (= e!514866 e!514863)))

(declare-fun res!618311 () Bool)

(assert (=> b!917014 (=> (not res!618311) (not e!514863))))

(declare-fun contains!4749 (ListLongMap!11433 (_ BitVec 64)) Bool)

(assert (=> b!917014 (= res!618311 (contains!4749 lt!411897 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30817)

(declare-fun minValue!1173 () V!30817)

(declare-fun getCurrentListMap!2958 (array!54770 array!54772 (_ BitVec 32) (_ BitVec 32) V!30817 V!30817 (_ BitVec 32) Int) ListLongMap!11433)

(assert (=> b!917014 (= lt!411897 (getCurrentListMap!2958 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917015 () Bool)

(assert (=> b!917015 (= e!514861 (and e!514864 mapRes!30840))))

(declare-fun condMapEmpty!30840 () Bool)

(declare-fun mapDefault!30840 () ValueCell!9213)

(assert (=> b!917015 (= condMapEmpty!30840 (= (arr!26327 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9213)) mapDefault!30840)))))

(declare-fun b!917016 () Bool)

(declare-fun res!618312 () Bool)

(assert (=> b!917016 (=> (not res!618312) (not e!514866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54770 (_ BitVec 32)) Bool)

(assert (=> b!917016 (= res!618312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917017 () Bool)

(declare-fun e!514862 () Bool)

(assert (=> b!917017 (= e!514862 tp_is_empty!19389)))

(declare-fun b!917018 () Bool)

(declare-fun res!618313 () Bool)

(assert (=> b!917018 (=> (not res!618313) (not e!514866))))

(declare-datatypes ((List!18578 0))(
  ( (Nil!18575) (Cons!18574 (h!19720 (_ BitVec 64)) (t!26199 List!18578)) )
))
(declare-fun arrayNoDuplicates!0 (array!54770 (_ BitVec 32) List!18578) Bool)

(assert (=> b!917018 (= res!618313 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18575))))

(declare-fun mapNonEmpty!30840 () Bool)

(declare-fun tp!59085 () Bool)

(assert (=> mapNonEmpty!30840 (= mapRes!30840 (and tp!59085 e!514862))))

(declare-fun mapRest!30840 () (Array (_ BitVec 32) ValueCell!9213))

(declare-fun mapValue!30840 () ValueCell!9213)

(declare-fun mapKey!30840 () (_ BitVec 32))

(assert (=> mapNonEmpty!30840 (= (arr!26327 _values!1231) (store mapRest!30840 mapKey!30840 mapValue!30840))))

(assert (= (and start!78696 res!618314) b!917012))

(assert (= (and b!917012 res!618310) b!917016))

(assert (= (and b!917016 res!618312) b!917018))

(assert (= (and b!917018 res!618313) b!917010))

(assert (= (and b!917010 res!618309) b!917014))

(assert (= (and b!917014 res!618311) b!917013))

(assert (= (and b!917015 condMapEmpty!30840) mapIsEmpty!30840))

(assert (= (and b!917015 (not condMapEmpty!30840)) mapNonEmpty!30840))

(get-info :version)

(assert (= (and mapNonEmpty!30840 ((_ is ValueCellFull!9213) mapValue!30840)) b!917017))

(assert (= (and b!917015 ((_ is ValueCellFull!9213) mapDefault!30840)) b!917011))

(assert (= start!78696 b!917015))

(declare-fun m!850903 () Bool)

(assert (=> mapNonEmpty!30840 m!850903))

(declare-fun m!850905 () Bool)

(assert (=> b!917018 m!850905))

(declare-fun m!850907 () Bool)

(assert (=> b!917013 m!850907))

(declare-fun m!850909 () Bool)

(assert (=> start!78696 m!850909))

(declare-fun m!850911 () Bool)

(assert (=> start!78696 m!850911))

(declare-fun m!850913 () Bool)

(assert (=> start!78696 m!850913))

(declare-fun m!850915 () Bool)

(assert (=> b!917016 m!850915))

(declare-fun m!850917 () Bool)

(assert (=> b!917014 m!850917))

(declare-fun m!850919 () Bool)

(assert (=> b!917014 m!850919))

(check-sat (not b!917018) (not b_next!16881) (not b!917016) tp_is_empty!19389 (not b!917014) b_and!27521 (not mapNonEmpty!30840) (not start!78696) (not b!917013))
(check-sat b_and!27521 (not b_next!16881))
