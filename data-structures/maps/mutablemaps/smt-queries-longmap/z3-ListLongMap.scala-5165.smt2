; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69990 () Bool)

(assert start!69990)

(declare-fun b_free!12399 () Bool)

(declare-fun b_next!12399 () Bool)

(assert (=> start!69990 (= b_free!12399 (not b_next!12399))))

(declare-fun tp!43908 () Bool)

(declare-fun b_and!21185 () Bool)

(assert (=> start!69990 (= tp!43908 b_and!21185)))

(declare-fun b!813112 () Bool)

(declare-fun res!555635 () Bool)

(declare-fun e!450569 () Bool)

(assert (=> b!813112 (=> (not res!555635) (not e!450569))))

(declare-datatypes ((array!44406 0))(
  ( (array!44407 (arr!21260 (Array (_ BitVec 32) (_ BitVec 64))) (size!21681 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44406)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((V!23813 0))(
  ( (V!23814 (val!7102 Int)) )
))
(declare-datatypes ((ValueCell!6639 0))(
  ( (ValueCellFull!6639 (v!9525 V!23813)) (EmptyCell!6639) )
))
(declare-datatypes ((array!44408 0))(
  ( (array!44409 (arr!21261 (Array (_ BitVec 32) ValueCell!6639)) (size!21682 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44408)

(assert (=> b!813112 (= res!555635 (and (= (size!21682 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21681 _keys!976) (size!21682 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813113 () Bool)

(declare-fun e!450568 () Bool)

(declare-fun tp_is_empty!14109 () Bool)

(assert (=> b!813113 (= e!450568 tp_is_empty!14109)))

(declare-fun res!555637 () Bool)

(assert (=> start!69990 (=> (not res!555637) (not e!450569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69990 (= res!555637 (validMask!0 mask!1312))))

(assert (=> start!69990 e!450569))

(assert (=> start!69990 tp_is_empty!14109))

(declare-fun array_inv!17003 (array!44406) Bool)

(assert (=> start!69990 (array_inv!17003 _keys!976)))

(assert (=> start!69990 true))

(declare-fun e!450572 () Bool)

(declare-fun array_inv!17004 (array!44408) Bool)

(assert (=> start!69990 (and (array_inv!17004 _values!788) e!450572)))

(assert (=> start!69990 tp!43908))

(declare-fun mapIsEmpty!22741 () Bool)

(declare-fun mapRes!22741 () Bool)

(assert (=> mapIsEmpty!22741 mapRes!22741))

(declare-fun b!813114 () Bool)

(assert (=> b!813114 (= e!450572 (and e!450568 mapRes!22741))))

(declare-fun condMapEmpty!22741 () Bool)

(declare-fun mapDefault!22741 () ValueCell!6639)

(assert (=> b!813114 (= condMapEmpty!22741 (= (arr!21261 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6639)) mapDefault!22741)))))

(declare-fun b!813115 () Bool)

(declare-fun e!450571 () Bool)

(assert (=> b!813115 (= e!450571 tp_is_empty!14109)))

(declare-fun mapNonEmpty!22741 () Bool)

(declare-fun tp!43909 () Bool)

(assert (=> mapNonEmpty!22741 (= mapRes!22741 (and tp!43909 e!450571))))

(declare-fun mapValue!22741 () ValueCell!6639)

(declare-fun mapKey!22741 () (_ BitVec 32))

(declare-fun mapRest!22741 () (Array (_ BitVec 32) ValueCell!6639))

(assert (=> mapNonEmpty!22741 (= (arr!21261 _values!788) (store mapRest!22741 mapKey!22741 mapValue!22741))))

(declare-fun b!813116 () Bool)

(assert (=> b!813116 (= e!450569 false)))

(declare-datatypes ((tuple2!9304 0))(
  ( (tuple2!9305 (_1!4662 (_ BitVec 64)) (_2!4662 V!23813)) )
))
(declare-datatypes ((List!15176 0))(
  ( (Nil!15173) (Cons!15172 (h!16301 tuple2!9304) (t!21499 List!15176)) )
))
(declare-datatypes ((ListLongMap!8141 0))(
  ( (ListLongMap!8142 (toList!4086 List!15176)) )
))
(declare-fun lt!364205 () ListLongMap!8141)

(declare-fun zeroValueBefore!34 () V!23813)

(declare-fun minValue!754 () V!23813)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2135 (array!44406 array!44408 (_ BitVec 32) (_ BitVec 32) V!23813 V!23813 (_ BitVec 32) Int) ListLongMap!8141)

(assert (=> b!813116 (= lt!364205 (getCurrentListMapNoExtraKeys!2135 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813117 () Bool)

(declare-fun res!555638 () Bool)

(assert (=> b!813117 (=> (not res!555638) (not e!450569))))

(declare-datatypes ((List!15177 0))(
  ( (Nil!15174) (Cons!15173 (h!16302 (_ BitVec 64)) (t!21500 List!15177)) )
))
(declare-fun arrayNoDuplicates!0 (array!44406 (_ BitVec 32) List!15177) Bool)

(assert (=> b!813117 (= res!555638 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15174))))

(declare-fun b!813118 () Bool)

(declare-fun res!555636 () Bool)

(assert (=> b!813118 (=> (not res!555636) (not e!450569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44406 (_ BitVec 32)) Bool)

(assert (=> b!813118 (= res!555636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!69990 res!555637) b!813112))

(assert (= (and b!813112 res!555635) b!813118))

(assert (= (and b!813118 res!555636) b!813117))

(assert (= (and b!813117 res!555638) b!813116))

(assert (= (and b!813114 condMapEmpty!22741) mapIsEmpty!22741))

(assert (= (and b!813114 (not condMapEmpty!22741)) mapNonEmpty!22741))

(get-info :version)

(assert (= (and mapNonEmpty!22741 ((_ is ValueCellFull!6639) mapValue!22741)) b!813115))

(assert (= (and b!813114 ((_ is ValueCellFull!6639) mapDefault!22741)) b!813113))

(assert (= start!69990 b!813114))

(declare-fun m!755303 () Bool)

(assert (=> mapNonEmpty!22741 m!755303))

(declare-fun m!755305 () Bool)

(assert (=> b!813117 m!755305))

(declare-fun m!755307 () Bool)

(assert (=> b!813118 m!755307))

(declare-fun m!755309 () Bool)

(assert (=> start!69990 m!755309))

(declare-fun m!755311 () Bool)

(assert (=> start!69990 m!755311))

(declare-fun m!755313 () Bool)

(assert (=> start!69990 m!755313))

(declare-fun m!755315 () Bool)

(assert (=> b!813116 m!755315))

(check-sat (not b_next!12399) (not b!813117) tp_is_empty!14109 (not b!813116) (not mapNonEmpty!22741) (not b!813118) b_and!21185 (not start!69990))
(check-sat b_and!21185 (not b_next!12399))
