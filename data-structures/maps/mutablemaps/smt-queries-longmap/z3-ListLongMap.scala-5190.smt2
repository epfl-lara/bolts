; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70166 () Bool)

(assert start!70166)

(declare-fun b_free!12549 () Bool)

(declare-fun b_next!12549 () Bool)

(assert (=> start!70166 (= b_free!12549 (not b_next!12549))))

(declare-fun tp!44365 () Bool)

(declare-fun b_and!21347 () Bool)

(assert (=> start!70166 (= tp!44365 b_and!21347)))

(declare-fun b!814845 () Bool)

(declare-fun res!556593 () Bool)

(declare-fun e!451800 () Bool)

(assert (=> b!814845 (=> (not res!556593) (not e!451800))))

(declare-datatypes ((array!44706 0))(
  ( (array!44707 (arr!21408 (Array (_ BitVec 32) (_ BitVec 64))) (size!21829 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44706)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44706 (_ BitVec 32)) Bool)

(assert (=> b!814845 (= res!556593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814846 () Bool)

(declare-fun res!556596 () Bool)

(assert (=> b!814846 (=> (not res!556596) (not e!451800))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24013 0))(
  ( (V!24014 (val!7177 Int)) )
))
(declare-datatypes ((ValueCell!6714 0))(
  ( (ValueCellFull!6714 (v!9600 V!24013)) (EmptyCell!6714) )
))
(declare-datatypes ((array!44708 0))(
  ( (array!44709 (arr!21409 (Array (_ BitVec 32) ValueCell!6714)) (size!21830 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44708)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814846 (= res!556596 (and (= (size!21830 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21829 _keys!976) (size!21830 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814847 () Bool)

(assert (=> b!814847 (= e!451800 (not true))))

(declare-datatypes ((tuple2!9418 0))(
  ( (tuple2!9419 (_1!4719 (_ BitVec 64)) (_2!4719 V!24013)) )
))
(declare-datatypes ((List!15291 0))(
  ( (Nil!15288) (Cons!15287 (h!16416 tuple2!9418) (t!21618 List!15291)) )
))
(declare-datatypes ((ListLongMap!8255 0))(
  ( (ListLongMap!8256 (toList!4143 List!15291)) )
))
(declare-fun lt!364809 () ListLongMap!8255)

(declare-fun lt!364807 () ListLongMap!8255)

(assert (=> b!814847 (= lt!364809 lt!364807)))

(declare-fun zeroValueBefore!34 () V!24013)

(declare-fun zeroValueAfter!34 () V!24013)

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24013)

(declare-datatypes ((Unit!27742 0))(
  ( (Unit!27743) )
))
(declare-fun lt!364808 () Unit!27742)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!308 (array!44706 array!44708 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24013 V!24013 V!24013 V!24013 (_ BitVec 32) Int) Unit!27742)

(assert (=> b!814847 (= lt!364808 (lemmaNoChangeToArrayThenSameMapNoExtras!308 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2192 (array!44706 array!44708 (_ BitVec 32) (_ BitVec 32) V!24013 V!24013 (_ BitVec 32) Int) ListLongMap!8255)

(assert (=> b!814847 (= lt!364807 (getCurrentListMapNoExtraKeys!2192 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814847 (= lt!364809 (getCurrentListMapNoExtraKeys!2192 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814848 () Bool)

(declare-fun res!556594 () Bool)

(assert (=> b!814848 (=> (not res!556594) (not e!451800))))

(declare-datatypes ((List!15292 0))(
  ( (Nil!15289) (Cons!15288 (h!16417 (_ BitVec 64)) (t!21619 List!15292)) )
))
(declare-fun arrayNoDuplicates!0 (array!44706 (_ BitVec 32) List!15292) Bool)

(assert (=> b!814848 (= res!556594 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15289))))

(declare-fun b!814849 () Bool)

(declare-fun e!451799 () Bool)

(declare-fun tp_is_empty!14259 () Bool)

(assert (=> b!814849 (= e!451799 tp_is_empty!14259)))

(declare-fun b!814850 () Bool)

(declare-fun e!451798 () Bool)

(declare-fun mapRes!22972 () Bool)

(assert (=> b!814850 (= e!451798 (and e!451799 mapRes!22972))))

(declare-fun condMapEmpty!22972 () Bool)

(declare-fun mapDefault!22972 () ValueCell!6714)

(assert (=> b!814850 (= condMapEmpty!22972 (= (arr!21409 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6714)) mapDefault!22972)))))

(declare-fun b!814851 () Bool)

(declare-fun e!451796 () Bool)

(assert (=> b!814851 (= e!451796 tp_is_empty!14259)))

(declare-fun res!556595 () Bool)

(assert (=> start!70166 (=> (not res!556595) (not e!451800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70166 (= res!556595 (validMask!0 mask!1312))))

(assert (=> start!70166 e!451800))

(assert (=> start!70166 tp_is_empty!14259))

(declare-fun array_inv!17109 (array!44706) Bool)

(assert (=> start!70166 (array_inv!17109 _keys!976)))

(assert (=> start!70166 true))

(declare-fun array_inv!17110 (array!44708) Bool)

(assert (=> start!70166 (and (array_inv!17110 _values!788) e!451798)))

(assert (=> start!70166 tp!44365))

(declare-fun mapIsEmpty!22972 () Bool)

(assert (=> mapIsEmpty!22972 mapRes!22972))

(declare-fun mapNonEmpty!22972 () Bool)

(declare-fun tp!44364 () Bool)

(assert (=> mapNonEmpty!22972 (= mapRes!22972 (and tp!44364 e!451796))))

(declare-fun mapRest!22972 () (Array (_ BitVec 32) ValueCell!6714))

(declare-fun mapKey!22972 () (_ BitVec 32))

(declare-fun mapValue!22972 () ValueCell!6714)

(assert (=> mapNonEmpty!22972 (= (arr!21409 _values!788) (store mapRest!22972 mapKey!22972 mapValue!22972))))

(assert (= (and start!70166 res!556595) b!814846))

(assert (= (and b!814846 res!556596) b!814845))

(assert (= (and b!814845 res!556593) b!814848))

(assert (= (and b!814848 res!556594) b!814847))

(assert (= (and b!814850 condMapEmpty!22972) mapIsEmpty!22972))

(assert (= (and b!814850 (not condMapEmpty!22972)) mapNonEmpty!22972))

(get-info :version)

(assert (= (and mapNonEmpty!22972 ((_ is ValueCellFull!6714) mapValue!22972)) b!814851))

(assert (= (and b!814850 ((_ is ValueCellFull!6714) mapDefault!22972)) b!814849))

(assert (= start!70166 b!814850))

(declare-fun m!756665 () Bool)

(assert (=> b!814848 m!756665))

(declare-fun m!756667 () Bool)

(assert (=> b!814845 m!756667))

(declare-fun m!756669 () Bool)

(assert (=> b!814847 m!756669))

(declare-fun m!756671 () Bool)

(assert (=> b!814847 m!756671))

(declare-fun m!756673 () Bool)

(assert (=> b!814847 m!756673))

(declare-fun m!756675 () Bool)

(assert (=> start!70166 m!756675))

(declare-fun m!756677 () Bool)

(assert (=> start!70166 m!756677))

(declare-fun m!756679 () Bool)

(assert (=> start!70166 m!756679))

(declare-fun m!756681 () Bool)

(assert (=> mapNonEmpty!22972 m!756681))

(check-sat (not start!70166) (not b!814845) (not mapNonEmpty!22972) b_and!21347 (not b!814848) (not b_next!12549) tp_is_empty!14259 (not b!814847))
(check-sat b_and!21347 (not b_next!12549))
