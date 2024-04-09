; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77982 () Bool)

(assert start!77982)

(declare-fun b_free!16497 () Bool)

(declare-fun b_next!16497 () Bool)

(assert (=> start!77982 (= b_free!16497 (not b_next!16497))))

(declare-fun tp!57760 () Bool)

(declare-fun b_and!27085 () Bool)

(assert (=> start!77982 (= tp!57760 b_and!27085)))

(declare-fun res!614196 () Bool)

(declare-fun e!510189 () Bool)

(assert (=> start!77982 (=> (not res!614196) (not e!510189))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77982 (= res!614196 (validMask!0 mask!1756))))

(assert (=> start!77982 e!510189))

(declare-datatypes ((V!30185 0))(
  ( (V!30186 (val!9508 Int)) )
))
(declare-datatypes ((ValueCell!8976 0))(
  ( (ValueCellFull!8976 (v!12016 V!30185)) (EmptyCell!8976) )
))
(declare-datatypes ((array!53848 0))(
  ( (array!53849 (arr!25877 (Array (_ BitVec 32) ValueCell!8976)) (size!26337 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53848)

(declare-fun e!510188 () Bool)

(declare-fun array_inv!20218 (array!53848) Bool)

(assert (=> start!77982 (and (array_inv!20218 _values!1152) e!510188)))

(assert (=> start!77982 tp!57760))

(assert (=> start!77982 true))

(declare-fun tp_is_empty!18915 () Bool)

(assert (=> start!77982 tp_is_empty!18915))

(declare-datatypes ((array!53850 0))(
  ( (array!53851 (arr!25878 (Array (_ BitVec 32) (_ BitVec 64))) (size!26338 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53850)

(declare-fun array_inv!20219 (array!53850) Bool)

(assert (=> start!77982 (array_inv!20219 _keys!1386)))

(declare-fun b!909956 () Bool)

(declare-fun e!510190 () Bool)

(assert (=> b!909956 (= e!510190 tp_is_empty!18915)))

(declare-fun b!909957 () Bool)

(declare-fun res!614197 () Bool)

(assert (=> b!909957 (=> (not res!614197) (not e!510189))))

(declare-datatypes ((List!18281 0))(
  ( (Nil!18278) (Cons!18277 (h!19423 (_ BitVec 64)) (t!25872 List!18281)) )
))
(declare-fun arrayNoDuplicates!0 (array!53850 (_ BitVec 32) List!18281) Bool)

(assert (=> b!909957 (= res!614197 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18278))))

(declare-fun mapNonEmpty!30091 () Bool)

(declare-fun mapRes!30091 () Bool)

(declare-fun tp!57759 () Bool)

(assert (=> mapNonEmpty!30091 (= mapRes!30091 (and tp!57759 e!510190))))

(declare-fun mapRest!30091 () (Array (_ BitVec 32) ValueCell!8976))

(declare-fun mapValue!30091 () ValueCell!8976)

(declare-fun mapKey!30091 () (_ BitVec 32))

(assert (=> mapNonEmpty!30091 (= (arr!25877 _values!1152) (store mapRest!30091 mapKey!30091 mapValue!30091))))

(declare-fun b!909958 () Bool)

(declare-fun e!510191 () Bool)

(assert (=> b!909958 (= e!510191 tp_is_empty!18915)))

(declare-fun mapIsEmpty!30091 () Bool)

(assert (=> mapIsEmpty!30091 mapRes!30091))

(declare-fun b!909959 () Bool)

(declare-fun res!614195 () Bool)

(assert (=> b!909959 (=> (not res!614195) (not e!510189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53850 (_ BitVec 32)) Bool)

(assert (=> b!909959 (= res!614195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909960 () Bool)

(assert (=> b!909960 (= e!510188 (and e!510191 mapRes!30091))))

(declare-fun condMapEmpty!30091 () Bool)

(declare-fun mapDefault!30091 () ValueCell!8976)

(assert (=> b!909960 (= condMapEmpty!30091 (= (arr!25877 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8976)) mapDefault!30091)))))

(declare-fun b!909961 () Bool)

(declare-fun res!614194 () Bool)

(assert (=> b!909961 (=> (not res!614194) (not e!510189))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909961 (= res!614194 (and (= (size!26337 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26338 _keys!1386) (size!26337 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909962 () Bool)

(assert (=> b!909962 (= e!510189 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30185)

(declare-fun lt!410095 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30185)

(declare-datatypes ((tuple2!12430 0))(
  ( (tuple2!12431 (_1!6225 (_ BitVec 64)) (_2!6225 V!30185)) )
))
(declare-datatypes ((List!18282 0))(
  ( (Nil!18279) (Cons!18278 (h!19424 tuple2!12430) (t!25873 List!18282)) )
))
(declare-datatypes ((ListLongMap!11141 0))(
  ( (ListLongMap!11142 (toList!5586 List!18282)) )
))
(declare-fun contains!4594 (ListLongMap!11141 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2816 (array!53850 array!53848 (_ BitVec 32) (_ BitVec 32) V!30185 V!30185 (_ BitVec 32) Int) ListLongMap!11141)

(assert (=> b!909962 (= lt!410095 (contains!4594 (getCurrentListMap!2816 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(assert (= (and start!77982 res!614196) b!909961))

(assert (= (and b!909961 res!614194) b!909959))

(assert (= (and b!909959 res!614195) b!909957))

(assert (= (and b!909957 res!614197) b!909962))

(assert (= (and b!909960 condMapEmpty!30091) mapIsEmpty!30091))

(assert (= (and b!909960 (not condMapEmpty!30091)) mapNonEmpty!30091))

(get-info :version)

(assert (= (and mapNonEmpty!30091 ((_ is ValueCellFull!8976) mapValue!30091)) b!909956))

(assert (= (and b!909960 ((_ is ValueCellFull!8976) mapDefault!30091)) b!909958))

(assert (= start!77982 b!909960))

(declare-fun m!845145 () Bool)

(assert (=> b!909962 m!845145))

(assert (=> b!909962 m!845145))

(declare-fun m!845147 () Bool)

(assert (=> b!909962 m!845147))

(declare-fun m!845149 () Bool)

(assert (=> b!909957 m!845149))

(declare-fun m!845151 () Bool)

(assert (=> b!909959 m!845151))

(declare-fun m!845153 () Bool)

(assert (=> mapNonEmpty!30091 m!845153))

(declare-fun m!845155 () Bool)

(assert (=> start!77982 m!845155))

(declare-fun m!845157 () Bool)

(assert (=> start!77982 m!845157))

(declare-fun m!845159 () Bool)

(assert (=> start!77982 m!845159))

(check-sat (not mapNonEmpty!30091) (not b!909957) (not b!909962) (not b!909959) b_and!27085 tp_is_empty!18915 (not b_next!16497) (not start!77982))
(check-sat b_and!27085 (not b_next!16497))
