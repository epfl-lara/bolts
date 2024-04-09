; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78690 () Bool)

(assert start!78690)

(declare-fun b_free!16875 () Bool)

(declare-fun b_next!16875 () Bool)

(assert (=> start!78690 (= b_free!16875 (not b_next!16875))))

(declare-fun tp!59067 () Bool)

(declare-fun b_and!27515 () Bool)

(assert (=> start!78690 (= tp!59067 b_and!27515)))

(declare-fun b!916930 () Bool)

(declare-fun e!514807 () Bool)

(declare-fun e!514808 () Bool)

(declare-fun mapRes!30831 () Bool)

(assert (=> b!916930 (= e!514807 (and e!514808 mapRes!30831))))

(declare-fun condMapEmpty!30831 () Bool)

(declare-datatypes ((V!30809 0))(
  ( (V!30810 (val!9742 Int)) )
))
(declare-datatypes ((ValueCell!9210 0))(
  ( (ValueCellFull!9210 (v!12260 V!30809)) (EmptyCell!9210) )
))
(declare-datatypes ((array!54758 0))(
  ( (array!54759 (arr!26320 (Array (_ BitVec 32) ValueCell!9210)) (size!26780 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54758)

(declare-fun mapDefault!30831 () ValueCell!9210)

(assert (=> b!916930 (= condMapEmpty!30831 (= (arr!26320 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9210)) mapDefault!30831)))))

(declare-fun b!916931 () Bool)

(declare-fun res!618260 () Bool)

(declare-fun e!514809 () Bool)

(assert (=> b!916931 (=> (not res!618260) (not e!514809))))

(declare-datatypes ((array!54760 0))(
  ( (array!54761 (arr!26321 (Array (_ BitVec 32) (_ BitVec 64))) (size!26781 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54760)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54760 (_ BitVec 32)) Bool)

(assert (=> b!916931 (= res!618260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916932 () Bool)

(declare-fun tp_is_empty!19383 () Bool)

(assert (=> b!916932 (= e!514808 tp_is_empty!19383)))

(declare-fun mapIsEmpty!30831 () Bool)

(assert (=> mapIsEmpty!30831 mapRes!30831))

(declare-fun b!916933 () Bool)

(declare-fun res!618255 () Bool)

(assert (=> b!916933 (=> (not res!618255) (not e!514809))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!916933 (= res!618255 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26781 _keys!1487))))))

(declare-fun b!916934 () Bool)

(declare-fun e!514810 () Bool)

(assert (=> b!916934 (= e!514810 tp_is_empty!19383)))

(declare-fun b!916935 () Bool)

(declare-fun res!618259 () Bool)

(assert (=> b!916935 (=> (not res!618259) (not e!514809))))

(declare-datatypes ((List!18571 0))(
  ( (Nil!18568) (Cons!18567 (h!19713 (_ BitVec 64)) (t!26192 List!18571)) )
))
(declare-fun arrayNoDuplicates!0 (array!54760 (_ BitVec 32) List!18571) Bool)

(assert (=> b!916935 (= res!618259 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18568))))

(declare-fun mapNonEmpty!30831 () Bool)

(declare-fun tp!59066 () Bool)

(assert (=> mapNonEmpty!30831 (= mapRes!30831 (and tp!59066 e!514810))))

(declare-fun mapValue!30831 () ValueCell!9210)

(declare-fun mapKey!30831 () (_ BitVec 32))

(declare-fun mapRest!30831 () (Array (_ BitVec 32) ValueCell!9210))

(assert (=> mapNonEmpty!30831 (= (arr!26320 _values!1231) (store mapRest!30831 mapKey!30831 mapValue!30831))))

(declare-fun b!916936 () Bool)

(declare-fun res!618258 () Bool)

(assert (=> b!916936 (=> (not res!618258) (not e!514809))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!916936 (= res!618258 (and (= (size!26780 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26781 _keys!1487) (size!26780 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916937 () Bool)

(declare-fun e!514811 () Bool)

(assert (=> b!916937 (= e!514811 false)))

(declare-fun lt!411879 () V!30809)

(declare-datatypes ((tuple2!12716 0))(
  ( (tuple2!12717 (_1!6368 (_ BitVec 64)) (_2!6368 V!30809)) )
))
(declare-datatypes ((List!18572 0))(
  ( (Nil!18569) (Cons!18568 (h!19714 tuple2!12716) (t!26193 List!18572)) )
))
(declare-datatypes ((ListLongMap!11427 0))(
  ( (ListLongMap!11428 (toList!5729 List!18572)) )
))
(declare-fun lt!411878 () ListLongMap!11427)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!557 (ListLongMap!11427 (_ BitVec 64)) V!30809)

(assert (=> b!916937 (= lt!411879 (apply!557 lt!411878 k0!1099))))

(declare-fun res!618257 () Bool)

(assert (=> start!78690 (=> (not res!618257) (not e!514809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78690 (= res!618257 (validMask!0 mask!1881))))

(assert (=> start!78690 e!514809))

(assert (=> start!78690 true))

(declare-fun array_inv!20520 (array!54758) Bool)

(assert (=> start!78690 (and (array_inv!20520 _values!1231) e!514807)))

(assert (=> start!78690 tp!59067))

(declare-fun array_inv!20521 (array!54760) Bool)

(assert (=> start!78690 (array_inv!20521 _keys!1487)))

(assert (=> start!78690 tp_is_empty!19383))

(declare-fun b!916929 () Bool)

(assert (=> b!916929 (= e!514809 e!514811)))

(declare-fun res!618256 () Bool)

(assert (=> b!916929 (=> (not res!618256) (not e!514811))))

(declare-fun contains!4746 (ListLongMap!11427 (_ BitVec 64)) Bool)

(assert (=> b!916929 (= res!618256 (contains!4746 lt!411878 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30809)

(declare-fun minValue!1173 () V!30809)

(declare-fun getCurrentListMap!2955 (array!54760 array!54758 (_ BitVec 32) (_ BitVec 32) V!30809 V!30809 (_ BitVec 32) Int) ListLongMap!11427)

(assert (=> b!916929 (= lt!411878 (getCurrentListMap!2955 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78690 res!618257) b!916936))

(assert (= (and b!916936 res!618258) b!916931))

(assert (= (and b!916931 res!618260) b!916935))

(assert (= (and b!916935 res!618259) b!916933))

(assert (= (and b!916933 res!618255) b!916929))

(assert (= (and b!916929 res!618256) b!916937))

(assert (= (and b!916930 condMapEmpty!30831) mapIsEmpty!30831))

(assert (= (and b!916930 (not condMapEmpty!30831)) mapNonEmpty!30831))

(get-info :version)

(assert (= (and mapNonEmpty!30831 ((_ is ValueCellFull!9210) mapValue!30831)) b!916934))

(assert (= (and b!916930 ((_ is ValueCellFull!9210) mapDefault!30831)) b!916932))

(assert (= start!78690 b!916930))

(declare-fun m!850849 () Bool)

(assert (=> b!916929 m!850849))

(declare-fun m!850851 () Bool)

(assert (=> b!916929 m!850851))

(declare-fun m!850853 () Bool)

(assert (=> b!916937 m!850853))

(declare-fun m!850855 () Bool)

(assert (=> b!916931 m!850855))

(declare-fun m!850857 () Bool)

(assert (=> start!78690 m!850857))

(declare-fun m!850859 () Bool)

(assert (=> start!78690 m!850859))

(declare-fun m!850861 () Bool)

(assert (=> start!78690 m!850861))

(declare-fun m!850863 () Bool)

(assert (=> mapNonEmpty!30831 m!850863))

(declare-fun m!850865 () Bool)

(assert (=> b!916935 m!850865))

(check-sat (not b!916937) b_and!27515 tp_is_empty!19383 (not mapNonEmpty!30831) (not b!916931) (not b!916929) (not b_next!16875) (not b!916935) (not start!78690))
(check-sat b_and!27515 (not b_next!16875))
