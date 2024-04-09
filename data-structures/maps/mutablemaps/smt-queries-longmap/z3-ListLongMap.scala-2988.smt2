; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42228 () Bool)

(assert start!42228)

(declare-fun b_free!11739 () Bool)

(declare-fun b_next!11739 () Bool)

(assert (=> start!42228 (= b_free!11739 (not b_next!11739))))

(declare-fun tp!41242 () Bool)

(declare-fun b_and!20187 () Bool)

(assert (=> start!42228 (= tp!41242 b_and!20187)))

(declare-fun b!471030 () Bool)

(declare-fun res!281487 () Bool)

(declare-fun e!276047 () Bool)

(assert (=> b!471030 (=> (not res!281487) (not e!276047))))

(declare-datatypes ((array!30061 0))(
  ( (array!30062 (arr!14450 (Array (_ BitVec 32) (_ BitVec 64))) (size!14802 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30061)

(declare-datatypes ((List!8819 0))(
  ( (Nil!8816) (Cons!8815 (h!9671 (_ BitVec 64)) (t!14791 List!8819)) )
))
(declare-fun arrayNoDuplicates!0 (array!30061 (_ BitVec 32) List!8819) Bool)

(assert (=> b!471030 (= res!281487 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8816))))

(declare-fun b!471031 () Bool)

(declare-fun res!281486 () Bool)

(assert (=> b!471031 (=> (not res!281486) (not e!276047))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30061 (_ BitVec 32)) Bool)

(assert (=> b!471031 (= res!281486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21454 () Bool)

(declare-fun mapRes!21454 () Bool)

(declare-fun tp!41241 () Bool)

(declare-fun e!276045 () Bool)

(assert (=> mapNonEmpty!21454 (= mapRes!21454 (and tp!41241 e!276045))))

(declare-datatypes ((V!18661 0))(
  ( (V!18662 (val!6628 Int)) )
))
(declare-datatypes ((ValueCell!6240 0))(
  ( (ValueCellFull!6240 (v!8915 V!18661)) (EmptyCell!6240) )
))
(declare-datatypes ((array!30063 0))(
  ( (array!30064 (arr!14451 (Array (_ BitVec 32) ValueCell!6240)) (size!14803 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30063)

(declare-fun mapRest!21454 () (Array (_ BitVec 32) ValueCell!6240))

(declare-fun mapValue!21454 () ValueCell!6240)

(declare-fun mapKey!21454 () (_ BitVec 32))

(assert (=> mapNonEmpty!21454 (= (arr!14451 _values!833) (store mapRest!21454 mapKey!21454 mapValue!21454))))

(declare-fun mapIsEmpty!21454 () Bool)

(assert (=> mapIsEmpty!21454 mapRes!21454))

(declare-fun res!281488 () Bool)

(assert (=> start!42228 (=> (not res!281488) (not e!276047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42228 (= res!281488 (validMask!0 mask!1365))))

(assert (=> start!42228 e!276047))

(declare-fun tp_is_empty!13167 () Bool)

(assert (=> start!42228 tp_is_empty!13167))

(assert (=> start!42228 tp!41242))

(assert (=> start!42228 true))

(declare-fun array_inv!10426 (array!30061) Bool)

(assert (=> start!42228 (array_inv!10426 _keys!1025)))

(declare-fun e!276048 () Bool)

(declare-fun array_inv!10427 (array!30063) Bool)

(assert (=> start!42228 (and (array_inv!10427 _values!833) e!276048)))

(declare-fun b!471032 () Bool)

(declare-fun e!276044 () Bool)

(assert (=> b!471032 (= e!276044 tp_is_empty!13167)))

(declare-fun b!471033 () Bool)

(assert (=> b!471033 (= e!276047 (not true))))

(declare-datatypes ((tuple2!8698 0))(
  ( (tuple2!8699 (_1!4359 (_ BitVec 64)) (_2!4359 V!18661)) )
))
(declare-datatypes ((List!8820 0))(
  ( (Nil!8817) (Cons!8816 (h!9672 tuple2!8698) (t!14792 List!8820)) )
))
(declare-datatypes ((ListLongMap!7625 0))(
  ( (ListLongMap!7626 (toList!3828 List!8820)) )
))
(declare-fun lt!213758 () ListLongMap!7625)

(declare-fun lt!213756 () ListLongMap!7625)

(assert (=> b!471033 (= lt!213758 lt!213756)))

(declare-fun minValueBefore!38 () V!18661)

(declare-fun zeroValue!794 () V!18661)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13782 0))(
  ( (Unit!13783) )
))
(declare-fun lt!213757 () Unit!13782)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18661)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!185 (array!30061 array!30063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18661 V!18661 V!18661 V!18661 (_ BitVec 32) Int) Unit!13782)

(assert (=> b!471033 (= lt!213757 (lemmaNoChangeToArrayThenSameMapNoExtras!185 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1990 (array!30061 array!30063 (_ BitVec 32) (_ BitVec 32) V!18661 V!18661 (_ BitVec 32) Int) ListLongMap!7625)

(assert (=> b!471033 (= lt!213756 (getCurrentListMapNoExtraKeys!1990 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471033 (= lt!213758 (getCurrentListMapNoExtraKeys!1990 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471034 () Bool)

(declare-fun res!281485 () Bool)

(assert (=> b!471034 (=> (not res!281485) (not e!276047))))

(assert (=> b!471034 (= res!281485 (and (= (size!14803 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14802 _keys!1025) (size!14803 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471035 () Bool)

(assert (=> b!471035 (= e!276045 tp_is_empty!13167)))

(declare-fun b!471036 () Bool)

(assert (=> b!471036 (= e!276048 (and e!276044 mapRes!21454))))

(declare-fun condMapEmpty!21454 () Bool)

(declare-fun mapDefault!21454 () ValueCell!6240)

(assert (=> b!471036 (= condMapEmpty!21454 (= (arr!14451 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6240)) mapDefault!21454)))))

(assert (= (and start!42228 res!281488) b!471034))

(assert (= (and b!471034 res!281485) b!471031))

(assert (= (and b!471031 res!281486) b!471030))

(assert (= (and b!471030 res!281487) b!471033))

(assert (= (and b!471036 condMapEmpty!21454) mapIsEmpty!21454))

(assert (= (and b!471036 (not condMapEmpty!21454)) mapNonEmpty!21454))

(get-info :version)

(assert (= (and mapNonEmpty!21454 ((_ is ValueCellFull!6240) mapValue!21454)) b!471035))

(assert (= (and b!471036 ((_ is ValueCellFull!6240) mapDefault!21454)) b!471032))

(assert (= start!42228 b!471036))

(declare-fun m!453235 () Bool)

(assert (=> b!471031 m!453235))

(declare-fun m!453237 () Bool)

(assert (=> b!471033 m!453237))

(declare-fun m!453239 () Bool)

(assert (=> b!471033 m!453239))

(declare-fun m!453241 () Bool)

(assert (=> b!471033 m!453241))

(declare-fun m!453243 () Bool)

(assert (=> mapNonEmpty!21454 m!453243))

(declare-fun m!453245 () Bool)

(assert (=> start!42228 m!453245))

(declare-fun m!453247 () Bool)

(assert (=> start!42228 m!453247))

(declare-fun m!453249 () Bool)

(assert (=> start!42228 m!453249))

(declare-fun m!453251 () Bool)

(assert (=> b!471030 m!453251))

(check-sat (not b!471033) (not b_next!11739) (not b!471031) b_and!20187 (not b!471030) (not start!42228) (not mapNonEmpty!21454) tp_is_empty!13167)
(check-sat b_and!20187 (not b_next!11739))
