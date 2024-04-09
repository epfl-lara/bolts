; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42606 () Bool)

(assert start!42606)

(declare-fun b_free!12033 () Bool)

(declare-fun b_next!12033 () Bool)

(assert (=> start!42606 (= b_free!12033 (not b_next!12033))))

(declare-fun tp!42139 () Bool)

(declare-fun b_and!20531 () Bool)

(assert (=> start!42606 (= tp!42139 b_and!20531)))

(declare-fun b!475040 () Bool)

(declare-fun res!283771 () Bool)

(declare-fun e!278924 () Bool)

(assert (=> b!475040 (=> (not res!283771) (not e!278924))))

(declare-datatypes ((array!30631 0))(
  ( (array!30632 (arr!14730 (Array (_ BitVec 32) (_ BitVec 64))) (size!15082 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30631)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30631 (_ BitVec 32)) Bool)

(assert (=> b!475040 (= res!283771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!475041 () Bool)

(assert (=> b!475041 (= e!278924 false)))

(declare-datatypes ((V!19053 0))(
  ( (V!19054 (val!6775 Int)) )
))
(declare-datatypes ((tuple2!8930 0))(
  ( (tuple2!8931 (_1!4475 (_ BitVec 64)) (_2!4475 V!19053)) )
))
(declare-datatypes ((List!9042 0))(
  ( (Nil!9039) (Cons!9038 (h!9894 tuple2!8930) (t!15024 List!9042)) )
))
(declare-datatypes ((ListLongMap!7857 0))(
  ( (ListLongMap!7858 (toList!3944 List!9042)) )
))
(declare-fun lt!216380 () ListLongMap!7857)

(declare-fun zeroValue!794 () V!19053)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6387 0))(
  ( (ValueCellFull!6387 (v!9064 V!19053)) (EmptyCell!6387) )
))
(declare-datatypes ((array!30633 0))(
  ( (array!30634 (arr!14731 (Array (_ BitVec 32) ValueCell!6387)) (size!15083 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30633)

(declare-fun minValueAfter!38 () V!19053)

(declare-fun getCurrentListMapNoExtraKeys!2098 (array!30631 array!30633 (_ BitVec 32) (_ BitVec 32) V!19053 V!19053 (_ BitVec 32) Int) ListLongMap!7857)

(assert (=> b!475041 (= lt!216380 (getCurrentListMapNoExtraKeys!2098 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216381 () ListLongMap!7857)

(declare-fun minValueBefore!38 () V!19053)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!475041 (= lt!216381 (getCurrentListMapNoExtraKeys!2098 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475042 () Bool)

(declare-fun res!283770 () Bool)

(assert (=> b!475042 (=> (not res!283770) (not e!278924))))

(declare-datatypes ((List!9043 0))(
  ( (Nil!9040) (Cons!9039 (h!9895 (_ BitVec 64)) (t!15025 List!9043)) )
))
(declare-fun arrayNoDuplicates!0 (array!30631 (_ BitVec 32) List!9043) Bool)

(assert (=> b!475042 (= res!283770 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9040))))

(declare-fun res!283772 () Bool)

(assert (=> start!42606 (=> (not res!283772) (not e!278924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42606 (= res!283772 (validMask!0 mask!1365))))

(assert (=> start!42606 e!278924))

(declare-fun tp_is_empty!13461 () Bool)

(assert (=> start!42606 tp_is_empty!13461))

(assert (=> start!42606 tp!42139))

(assert (=> start!42606 true))

(declare-fun array_inv!10616 (array!30631) Bool)

(assert (=> start!42606 (array_inv!10616 _keys!1025)))

(declare-fun e!278923 () Bool)

(declare-fun array_inv!10617 (array!30633) Bool)

(assert (=> start!42606 (and (array_inv!10617 _values!833) e!278923)))

(declare-fun mapIsEmpty!21910 () Bool)

(declare-fun mapRes!21910 () Bool)

(assert (=> mapIsEmpty!21910 mapRes!21910))

(declare-fun b!475043 () Bool)

(declare-fun res!283773 () Bool)

(assert (=> b!475043 (=> (not res!283773) (not e!278924))))

(assert (=> b!475043 (= res!283773 (and (= (size!15083 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15082 _keys!1025) (size!15083 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475044 () Bool)

(declare-fun e!278926 () Bool)

(assert (=> b!475044 (= e!278926 tp_is_empty!13461)))

(declare-fun b!475045 () Bool)

(declare-fun e!278925 () Bool)

(assert (=> b!475045 (= e!278925 tp_is_empty!13461)))

(declare-fun b!475046 () Bool)

(assert (=> b!475046 (= e!278923 (and e!278926 mapRes!21910))))

(declare-fun condMapEmpty!21910 () Bool)

(declare-fun mapDefault!21910 () ValueCell!6387)

(assert (=> b!475046 (= condMapEmpty!21910 (= (arr!14731 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6387)) mapDefault!21910)))))

(declare-fun mapNonEmpty!21910 () Bool)

(declare-fun tp!42138 () Bool)

(assert (=> mapNonEmpty!21910 (= mapRes!21910 (and tp!42138 e!278925))))

(declare-fun mapRest!21910 () (Array (_ BitVec 32) ValueCell!6387))

(declare-fun mapValue!21910 () ValueCell!6387)

(declare-fun mapKey!21910 () (_ BitVec 32))

(assert (=> mapNonEmpty!21910 (= (arr!14731 _values!833) (store mapRest!21910 mapKey!21910 mapValue!21910))))

(assert (= (and start!42606 res!283772) b!475043))

(assert (= (and b!475043 res!283773) b!475040))

(assert (= (and b!475040 res!283771) b!475042))

(assert (= (and b!475042 res!283770) b!475041))

(assert (= (and b!475046 condMapEmpty!21910) mapIsEmpty!21910))

(assert (= (and b!475046 (not condMapEmpty!21910)) mapNonEmpty!21910))

(get-info :version)

(assert (= (and mapNonEmpty!21910 ((_ is ValueCellFull!6387) mapValue!21910)) b!475045))

(assert (= (and b!475046 ((_ is ValueCellFull!6387) mapDefault!21910)) b!475044))

(assert (= start!42606 b!475046))

(declare-fun m!457303 () Bool)

(assert (=> b!475041 m!457303))

(declare-fun m!457305 () Bool)

(assert (=> b!475041 m!457305))

(declare-fun m!457307 () Bool)

(assert (=> mapNonEmpty!21910 m!457307))

(declare-fun m!457309 () Bool)

(assert (=> b!475040 m!457309))

(declare-fun m!457311 () Bool)

(assert (=> start!42606 m!457311))

(declare-fun m!457313 () Bool)

(assert (=> start!42606 m!457313))

(declare-fun m!457315 () Bool)

(assert (=> start!42606 m!457315))

(declare-fun m!457317 () Bool)

(assert (=> b!475042 m!457317))

(check-sat (not start!42606) b_and!20531 (not b!475041) (not b!475042) (not mapNonEmpty!21910) tp_is_empty!13461 (not b!475040) (not b_next!12033))
(check-sat b_and!20531 (not b_next!12033))
