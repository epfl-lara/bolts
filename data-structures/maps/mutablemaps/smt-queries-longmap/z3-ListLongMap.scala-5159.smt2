; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69954 () Bool)

(assert start!69954)

(declare-fun b_free!12363 () Bool)

(declare-fun b_next!12363 () Bool)

(assert (=> start!69954 (= b_free!12363 (not b_next!12363))))

(declare-fun tp!43800 () Bool)

(declare-fun b_and!21149 () Bool)

(assert (=> start!69954 (= tp!43800 b_and!21149)))

(declare-fun b!812734 () Bool)

(declare-fun res!555419 () Bool)

(declare-fun e!450298 () Bool)

(assert (=> b!812734 (=> (not res!555419) (not e!450298))))

(declare-datatypes ((array!44338 0))(
  ( (array!44339 (arr!21226 (Array (_ BitVec 32) (_ BitVec 64))) (size!21647 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44338)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44338 (_ BitVec 32)) Bool)

(assert (=> b!812734 (= res!555419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22687 () Bool)

(declare-fun mapRes!22687 () Bool)

(declare-fun tp!43801 () Bool)

(declare-fun e!450301 () Bool)

(assert (=> mapNonEmpty!22687 (= mapRes!22687 (and tp!43801 e!450301))))

(declare-datatypes ((V!23765 0))(
  ( (V!23766 (val!7084 Int)) )
))
(declare-datatypes ((ValueCell!6621 0))(
  ( (ValueCellFull!6621 (v!9507 V!23765)) (EmptyCell!6621) )
))
(declare-datatypes ((array!44340 0))(
  ( (array!44341 (arr!21227 (Array (_ BitVec 32) ValueCell!6621)) (size!21648 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44340)

(declare-fun mapRest!22687 () (Array (_ BitVec 32) ValueCell!6621))

(declare-fun mapValue!22687 () ValueCell!6621)

(declare-fun mapKey!22687 () (_ BitVec 32))

(assert (=> mapNonEmpty!22687 (= (arr!21227 _values!788) (store mapRest!22687 mapKey!22687 mapValue!22687))))

(declare-fun b!812735 () Bool)

(declare-fun res!555422 () Bool)

(assert (=> b!812735 (=> (not res!555422) (not e!450298))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812735 (= res!555422 (and (= (size!21648 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21647 _keys!976) (size!21648 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812736 () Bool)

(declare-fun res!555421 () Bool)

(assert (=> b!812736 (=> (not res!555421) (not e!450298))))

(declare-datatypes ((List!15150 0))(
  ( (Nil!15147) (Cons!15146 (h!16275 (_ BitVec 64)) (t!21473 List!15150)) )
))
(declare-fun arrayNoDuplicates!0 (array!44338 (_ BitVec 32) List!15150) Bool)

(assert (=> b!812736 (= res!555421 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15147))))

(declare-fun b!812737 () Bool)

(declare-fun e!450299 () Bool)

(declare-fun e!450302 () Bool)

(assert (=> b!812737 (= e!450299 (and e!450302 mapRes!22687))))

(declare-fun condMapEmpty!22687 () Bool)

(declare-fun mapDefault!22687 () ValueCell!6621)

(assert (=> b!812737 (= condMapEmpty!22687 (= (arr!21227 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6621)) mapDefault!22687)))))

(declare-fun b!812738 () Bool)

(assert (=> b!812738 (= e!450298 false)))

(declare-fun zeroValueBefore!34 () V!23765)

(declare-datatypes ((tuple2!9276 0))(
  ( (tuple2!9277 (_1!4648 (_ BitVec 64)) (_2!4648 V!23765)) )
))
(declare-datatypes ((List!15151 0))(
  ( (Nil!15148) (Cons!15147 (h!16276 tuple2!9276) (t!21474 List!15151)) )
))
(declare-datatypes ((ListLongMap!8113 0))(
  ( (ListLongMap!8114 (toList!4072 List!15151)) )
))
(declare-fun lt!364151 () ListLongMap!8113)

(declare-fun minValue!754 () V!23765)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2121 (array!44338 array!44340 (_ BitVec 32) (_ BitVec 32) V!23765 V!23765 (_ BitVec 32) Int) ListLongMap!8113)

(assert (=> b!812738 (= lt!364151 (getCurrentListMapNoExtraKeys!2121 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812739 () Bool)

(declare-fun tp_is_empty!14073 () Bool)

(assert (=> b!812739 (= e!450301 tp_is_empty!14073)))

(declare-fun mapIsEmpty!22687 () Bool)

(assert (=> mapIsEmpty!22687 mapRes!22687))

(declare-fun res!555420 () Bool)

(assert (=> start!69954 (=> (not res!555420) (not e!450298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69954 (= res!555420 (validMask!0 mask!1312))))

(assert (=> start!69954 e!450298))

(assert (=> start!69954 tp_is_empty!14073))

(declare-fun array_inv!16977 (array!44338) Bool)

(assert (=> start!69954 (array_inv!16977 _keys!976)))

(assert (=> start!69954 true))

(declare-fun array_inv!16978 (array!44340) Bool)

(assert (=> start!69954 (and (array_inv!16978 _values!788) e!450299)))

(assert (=> start!69954 tp!43800))

(declare-fun b!812740 () Bool)

(assert (=> b!812740 (= e!450302 tp_is_empty!14073)))

(assert (= (and start!69954 res!555420) b!812735))

(assert (= (and b!812735 res!555422) b!812734))

(assert (= (and b!812734 res!555419) b!812736))

(assert (= (and b!812736 res!555421) b!812738))

(assert (= (and b!812737 condMapEmpty!22687) mapIsEmpty!22687))

(assert (= (and b!812737 (not condMapEmpty!22687)) mapNonEmpty!22687))

(get-info :version)

(assert (= (and mapNonEmpty!22687 ((_ is ValueCellFull!6621) mapValue!22687)) b!812739))

(assert (= (and b!812737 ((_ is ValueCellFull!6621) mapDefault!22687)) b!812740))

(assert (= start!69954 b!812737))

(declare-fun m!755051 () Bool)

(assert (=> start!69954 m!755051))

(declare-fun m!755053 () Bool)

(assert (=> start!69954 m!755053))

(declare-fun m!755055 () Bool)

(assert (=> start!69954 m!755055))

(declare-fun m!755057 () Bool)

(assert (=> mapNonEmpty!22687 m!755057))

(declare-fun m!755059 () Bool)

(assert (=> b!812738 m!755059))

(declare-fun m!755061 () Bool)

(assert (=> b!812736 m!755061))

(declare-fun m!755063 () Bool)

(assert (=> b!812734 m!755063))

(check-sat (not b!812734) (not mapNonEmpty!22687) (not b!812738) b_and!21149 tp_is_empty!14073 (not b!812736) (not start!69954) (not b_next!12363))
(check-sat b_and!21149 (not b_next!12363))
