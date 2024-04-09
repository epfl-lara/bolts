; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71048 () Bool)

(assert start!71048)

(declare-fun b_free!13227 () Bool)

(declare-fun b_next!13227 () Bool)

(assert (=> start!71048 (= b_free!13227 (not b_next!13227))))

(declare-fun tp!46435 () Bool)

(declare-fun b_and!22149 () Bool)

(assert (=> start!71048 (= tp!46435 b_and!22149)))

(declare-fun mapIsEmpty!24025 () Bool)

(declare-fun mapRes!24025 () Bool)

(assert (=> mapIsEmpty!24025 mapRes!24025))

(declare-fun b!824605 () Bool)

(declare-fun e!458871 () Bool)

(declare-fun tp_is_empty!14937 () Bool)

(assert (=> b!824605 (= e!458871 tp_is_empty!14937)))

(declare-fun b!824606 () Bool)

(declare-fun res!562296 () Bool)

(declare-fun e!458875 () Bool)

(assert (=> b!824606 (=> (not res!562296) (not e!458875))))

(declare-datatypes ((array!46020 0))(
  ( (array!46021 (arr!22053 (Array (_ BitVec 32) (_ BitVec 64))) (size!22474 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46020)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46020 (_ BitVec 32)) Bool)

(assert (=> b!824606 (= res!562296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824607 () Bool)

(declare-fun e!458873 () Bool)

(assert (=> b!824607 (= e!458873 true)))

(declare-datatypes ((V!24917 0))(
  ( (V!24918 (val!7516 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24917)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24917)

(declare-datatypes ((ValueCell!7053 0))(
  ( (ValueCellFull!7053 (v!9945 V!24917)) (EmptyCell!7053) )
))
(declare-datatypes ((array!46022 0))(
  ( (array!46023 (arr!22054 (Array (_ BitVec 32) ValueCell!7053)) (size!22475 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46022)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9940 0))(
  ( (tuple2!9941 (_1!4980 (_ BitVec 64)) (_2!4980 V!24917)) )
))
(declare-datatypes ((List!15790 0))(
  ( (Nil!15787) (Cons!15786 (h!16915 tuple2!9940) (t!22141 List!15790)) )
))
(declare-datatypes ((ListLongMap!8777 0))(
  ( (ListLongMap!8778 (toList!4404 List!15790)) )
))
(declare-fun lt!371935 () ListLongMap!8777)

(declare-fun getCurrentListMap!2516 (array!46020 array!46022 (_ BitVec 32) (_ BitVec 32) V!24917 V!24917 (_ BitVec 32) Int) ListLongMap!8777)

(assert (=> b!824607 (= lt!371935 (getCurrentListMap!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824608 () Bool)

(assert (=> b!824608 (= e!458875 (not e!458873))))

(declare-fun res!562295 () Bool)

(assert (=> b!824608 (=> res!562295 e!458873)))

(assert (=> b!824608 (= res!562295 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371932 () ListLongMap!8777)

(declare-fun lt!371934 () ListLongMap!8777)

(assert (=> b!824608 (= lt!371932 lt!371934)))

(declare-datatypes ((Unit!28250 0))(
  ( (Unit!28251) )
))
(declare-fun lt!371933 () Unit!28250)

(declare-fun zeroValueAfter!34 () V!24917)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!540 (array!46020 array!46022 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24917 V!24917 V!24917 V!24917 (_ BitVec 32) Int) Unit!28250)

(assert (=> b!824608 (= lt!371933 (lemmaNoChangeToArrayThenSameMapNoExtras!540 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2424 (array!46020 array!46022 (_ BitVec 32) (_ BitVec 32) V!24917 V!24917 (_ BitVec 32) Int) ListLongMap!8777)

(assert (=> b!824608 (= lt!371934 (getCurrentListMapNoExtraKeys!2424 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824608 (= lt!371932 (getCurrentListMapNoExtraKeys!2424 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824609 () Bool)

(declare-fun e!458874 () Bool)

(assert (=> b!824609 (= e!458874 (and e!458871 mapRes!24025))))

(declare-fun condMapEmpty!24025 () Bool)

(declare-fun mapDefault!24025 () ValueCell!7053)

(assert (=> b!824609 (= condMapEmpty!24025 (= (arr!22054 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7053)) mapDefault!24025)))))

(declare-fun mapNonEmpty!24025 () Bool)

(declare-fun tp!46434 () Bool)

(declare-fun e!458872 () Bool)

(assert (=> mapNonEmpty!24025 (= mapRes!24025 (and tp!46434 e!458872))))

(declare-fun mapRest!24025 () (Array (_ BitVec 32) ValueCell!7053))

(declare-fun mapValue!24025 () ValueCell!7053)

(declare-fun mapKey!24025 () (_ BitVec 32))

(assert (=> mapNonEmpty!24025 (= (arr!22054 _values!788) (store mapRest!24025 mapKey!24025 mapValue!24025))))

(declare-fun b!824610 () Bool)

(declare-fun res!562298 () Bool)

(assert (=> b!824610 (=> (not res!562298) (not e!458875))))

(assert (=> b!824610 (= res!562298 (and (= (size!22475 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22474 _keys!976) (size!22475 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!562294 () Bool)

(assert (=> start!71048 (=> (not res!562294) (not e!458875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71048 (= res!562294 (validMask!0 mask!1312))))

(assert (=> start!71048 e!458875))

(assert (=> start!71048 tp_is_empty!14937))

(declare-fun array_inv!17575 (array!46020) Bool)

(assert (=> start!71048 (array_inv!17575 _keys!976)))

(assert (=> start!71048 true))

(declare-fun array_inv!17576 (array!46022) Bool)

(assert (=> start!71048 (and (array_inv!17576 _values!788) e!458874)))

(assert (=> start!71048 tp!46435))

(declare-fun b!824611 () Bool)

(assert (=> b!824611 (= e!458872 tp_is_empty!14937)))

(declare-fun b!824612 () Bool)

(declare-fun res!562297 () Bool)

(assert (=> b!824612 (=> (not res!562297) (not e!458875))))

(declare-datatypes ((List!15791 0))(
  ( (Nil!15788) (Cons!15787 (h!16916 (_ BitVec 64)) (t!22142 List!15791)) )
))
(declare-fun arrayNoDuplicates!0 (array!46020 (_ BitVec 32) List!15791) Bool)

(assert (=> b!824612 (= res!562297 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15788))))

(assert (= (and start!71048 res!562294) b!824610))

(assert (= (and b!824610 res!562298) b!824606))

(assert (= (and b!824606 res!562296) b!824612))

(assert (= (and b!824612 res!562297) b!824608))

(assert (= (and b!824608 (not res!562295)) b!824607))

(assert (= (and b!824609 condMapEmpty!24025) mapIsEmpty!24025))

(assert (= (and b!824609 (not condMapEmpty!24025)) mapNonEmpty!24025))

(get-info :version)

(assert (= (and mapNonEmpty!24025 ((_ is ValueCellFull!7053) mapValue!24025)) b!824611))

(assert (= (and b!824609 ((_ is ValueCellFull!7053) mapDefault!24025)) b!824605))

(assert (= start!71048 b!824609))

(declare-fun m!766731 () Bool)

(assert (=> mapNonEmpty!24025 m!766731))

(declare-fun m!766733 () Bool)

(assert (=> b!824607 m!766733))

(declare-fun m!766735 () Bool)

(assert (=> b!824606 m!766735))

(declare-fun m!766737 () Bool)

(assert (=> b!824608 m!766737))

(declare-fun m!766739 () Bool)

(assert (=> b!824608 m!766739))

(declare-fun m!766741 () Bool)

(assert (=> b!824608 m!766741))

(declare-fun m!766743 () Bool)

(assert (=> b!824612 m!766743))

(declare-fun m!766745 () Bool)

(assert (=> start!71048 m!766745))

(declare-fun m!766747 () Bool)

(assert (=> start!71048 m!766747))

(declare-fun m!766749 () Bool)

(assert (=> start!71048 m!766749))

(check-sat (not b_next!13227) (not b!824608) (not start!71048) (not b!824607) tp_is_empty!14937 b_and!22149 (not mapNonEmpty!24025) (not b!824606) (not b!824612))
(check-sat b_and!22149 (not b_next!13227))
