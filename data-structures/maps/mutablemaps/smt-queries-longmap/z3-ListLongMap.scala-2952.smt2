; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41942 () Bool)

(assert start!41942)

(declare-fun b_free!11523 () Bool)

(declare-fun b_next!11523 () Bool)

(assert (=> start!41942 (= b_free!11523 (not b_next!11523))))

(declare-fun tp!40581 () Bool)

(declare-fun b_and!19929 () Bool)

(assert (=> start!41942 (= tp!40581 b_and!19929)))

(declare-fun b!467987 () Bool)

(declare-fun e!273872 () Bool)

(declare-fun e!273868 () Bool)

(declare-fun mapRes!21118 () Bool)

(assert (=> b!467987 (= e!273872 (and e!273868 mapRes!21118))))

(declare-fun condMapEmpty!21118 () Bool)

(declare-datatypes ((V!18373 0))(
  ( (V!18374 (val!6520 Int)) )
))
(declare-datatypes ((ValueCell!6132 0))(
  ( (ValueCellFull!6132 (v!8805 V!18373)) (EmptyCell!6132) )
))
(declare-datatypes ((array!29633 0))(
  ( (array!29634 (arr!14240 (Array (_ BitVec 32) ValueCell!6132)) (size!14592 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29633)

(declare-fun mapDefault!21118 () ValueCell!6132)

(assert (=> b!467987 (= condMapEmpty!21118 (= (arr!14240 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6132)) mapDefault!21118)))))

(declare-fun b!467988 () Bool)

(declare-fun res!279766 () Bool)

(declare-fun e!273867 () Bool)

(assert (=> b!467988 (=> (not res!279766) (not e!273867))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29635 0))(
  ( (array!29636 (arr!14241 (Array (_ BitVec 32) (_ BitVec 64))) (size!14593 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29635)

(assert (=> b!467988 (= res!279766 (and (= (size!14592 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14593 _keys!1025) (size!14592 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467989 () Bool)

(declare-fun e!273870 () Bool)

(assert (=> b!467989 (= e!273870 true)))

(declare-fun minValueBefore!38 () V!18373)

(declare-fun defaultEntry!841 () Int)

(declare-fun zeroValue!794 () V!18373)

(declare-datatypes ((tuple2!8544 0))(
  ( (tuple2!8545 (_1!4282 (_ BitVec 64)) (_2!4282 V!18373)) )
))
(declare-datatypes ((List!8664 0))(
  ( (Nil!8661) (Cons!8660 (h!9516 tuple2!8544) (t!14628 List!8664)) )
))
(declare-datatypes ((ListLongMap!7471 0))(
  ( (ListLongMap!7472 (toList!3751 List!8664)) )
))
(declare-fun lt!211667 () ListLongMap!7471)

(declare-fun getCurrentListMap!2168 (array!29635 array!29633 (_ BitVec 32) (_ BitVec 32) V!18373 V!18373 (_ BitVec 32) Int) ListLongMap!7471)

(assert (=> b!467989 (= lt!211667 (getCurrentListMap!2168 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21118 () Bool)

(declare-fun tp!40582 () Bool)

(declare-fun e!273869 () Bool)

(assert (=> mapNonEmpty!21118 (= mapRes!21118 (and tp!40582 e!273869))))

(declare-fun mapKey!21118 () (_ BitVec 32))

(declare-fun mapRest!21118 () (Array (_ BitVec 32) ValueCell!6132))

(declare-fun mapValue!21118 () ValueCell!6132)

(assert (=> mapNonEmpty!21118 (= (arr!14240 _values!833) (store mapRest!21118 mapKey!21118 mapValue!21118))))

(declare-fun res!279764 () Bool)

(assert (=> start!41942 (=> (not res!279764) (not e!273867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41942 (= res!279764 (validMask!0 mask!1365))))

(assert (=> start!41942 e!273867))

(declare-fun tp_is_empty!12951 () Bool)

(assert (=> start!41942 tp_is_empty!12951))

(assert (=> start!41942 tp!40581))

(assert (=> start!41942 true))

(declare-fun array_inv!10270 (array!29635) Bool)

(assert (=> start!41942 (array_inv!10270 _keys!1025)))

(declare-fun array_inv!10271 (array!29633) Bool)

(assert (=> start!41942 (and (array_inv!10271 _values!833) e!273872)))

(declare-fun mapIsEmpty!21118 () Bool)

(assert (=> mapIsEmpty!21118 mapRes!21118))

(declare-fun b!467990 () Bool)

(assert (=> b!467990 (= e!273869 tp_is_empty!12951)))

(declare-fun b!467991 () Bool)

(assert (=> b!467991 (= e!273867 (not e!273870))))

(declare-fun res!279763 () Bool)

(assert (=> b!467991 (=> res!279763 e!273870)))

(assert (=> b!467991 (= res!279763 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!211666 () ListLongMap!7471)

(declare-fun lt!211668 () ListLongMap!7471)

(assert (=> b!467991 (= lt!211666 lt!211668)))

(declare-datatypes ((Unit!13623 0))(
  ( (Unit!13624) )
))
(declare-fun lt!211669 () Unit!13623)

(declare-fun minValueAfter!38 () V!18373)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!112 (array!29635 array!29633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18373 V!18373 V!18373 V!18373 (_ BitVec 32) Int) Unit!13623)

(assert (=> b!467991 (= lt!211669 (lemmaNoChangeToArrayThenSameMapNoExtras!112 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1917 (array!29635 array!29633 (_ BitVec 32) (_ BitVec 32) V!18373 V!18373 (_ BitVec 32) Int) ListLongMap!7471)

(assert (=> b!467991 (= lt!211668 (getCurrentListMapNoExtraKeys!1917 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467991 (= lt!211666 (getCurrentListMapNoExtraKeys!1917 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467992 () Bool)

(declare-fun res!279762 () Bool)

(assert (=> b!467992 (=> (not res!279762) (not e!273867))))

(declare-datatypes ((List!8665 0))(
  ( (Nil!8662) (Cons!8661 (h!9517 (_ BitVec 64)) (t!14629 List!8665)) )
))
(declare-fun arrayNoDuplicates!0 (array!29635 (_ BitVec 32) List!8665) Bool)

(assert (=> b!467992 (= res!279762 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8662))))

(declare-fun b!467993 () Bool)

(assert (=> b!467993 (= e!273868 tp_is_empty!12951)))

(declare-fun b!467994 () Bool)

(declare-fun res!279765 () Bool)

(assert (=> b!467994 (=> (not res!279765) (not e!273867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29635 (_ BitVec 32)) Bool)

(assert (=> b!467994 (= res!279765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41942 res!279764) b!467988))

(assert (= (and b!467988 res!279766) b!467994))

(assert (= (and b!467994 res!279765) b!467992))

(assert (= (and b!467992 res!279762) b!467991))

(assert (= (and b!467991 (not res!279763)) b!467989))

(assert (= (and b!467987 condMapEmpty!21118) mapIsEmpty!21118))

(assert (= (and b!467987 (not condMapEmpty!21118)) mapNonEmpty!21118))

(get-info :version)

(assert (= (and mapNonEmpty!21118 ((_ is ValueCellFull!6132) mapValue!21118)) b!467990))

(assert (= (and b!467987 ((_ is ValueCellFull!6132) mapDefault!21118)) b!467993))

(assert (= start!41942 b!467987))

(declare-fun m!450049 () Bool)

(assert (=> b!467994 m!450049))

(declare-fun m!450051 () Bool)

(assert (=> b!467991 m!450051))

(declare-fun m!450053 () Bool)

(assert (=> b!467991 m!450053))

(declare-fun m!450055 () Bool)

(assert (=> b!467991 m!450055))

(declare-fun m!450057 () Bool)

(assert (=> b!467992 m!450057))

(declare-fun m!450059 () Bool)

(assert (=> b!467989 m!450059))

(declare-fun m!450061 () Bool)

(assert (=> mapNonEmpty!21118 m!450061))

(declare-fun m!450063 () Bool)

(assert (=> start!41942 m!450063))

(declare-fun m!450065 () Bool)

(assert (=> start!41942 m!450065))

(declare-fun m!450067 () Bool)

(assert (=> start!41942 m!450067))

(check-sat (not start!41942) (not b_next!11523) (not b!467992) (not mapNonEmpty!21118) (not b!467991) tp_is_empty!12951 (not b!467994) b_and!19929 (not b!467989))
(check-sat b_and!19929 (not b_next!11523))
