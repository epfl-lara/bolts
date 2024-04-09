; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69966 () Bool)

(assert start!69966)

(declare-fun b_free!12375 () Bool)

(declare-fun b_next!12375 () Bool)

(assert (=> start!69966 (= b_free!12375 (not b_next!12375))))

(declare-fun tp!43836 () Bool)

(declare-fun b_and!21161 () Bool)

(assert (=> start!69966 (= tp!43836 b_and!21161)))

(declare-fun b!812860 () Bool)

(declare-fun e!450390 () Bool)

(declare-fun tp_is_empty!14085 () Bool)

(assert (=> b!812860 (= e!450390 tp_is_empty!14085)))

(declare-fun mapIsEmpty!22705 () Bool)

(declare-fun mapRes!22705 () Bool)

(assert (=> mapIsEmpty!22705 mapRes!22705))

(declare-fun b!812861 () Bool)

(declare-fun e!450391 () Bool)

(declare-fun e!450389 () Bool)

(assert (=> b!812861 (= e!450391 (and e!450389 mapRes!22705))))

(declare-fun condMapEmpty!22705 () Bool)

(declare-datatypes ((V!23781 0))(
  ( (V!23782 (val!7090 Int)) )
))
(declare-datatypes ((ValueCell!6627 0))(
  ( (ValueCellFull!6627 (v!9513 V!23781)) (EmptyCell!6627) )
))
(declare-datatypes ((array!44360 0))(
  ( (array!44361 (arr!21237 (Array (_ BitVec 32) ValueCell!6627)) (size!21658 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44360)

(declare-fun mapDefault!22705 () ValueCell!6627)

(assert (=> b!812861 (= condMapEmpty!22705 (= (arr!21237 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6627)) mapDefault!22705)))))

(declare-fun b!812862 () Bool)

(declare-fun res!555494 () Bool)

(declare-fun e!450388 () Bool)

(assert (=> b!812862 (=> (not res!555494) (not e!450388))))

(declare-datatypes ((array!44362 0))(
  ( (array!44363 (arr!21238 (Array (_ BitVec 32) (_ BitVec 64))) (size!21659 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44362)

(declare-datatypes ((List!15158 0))(
  ( (Nil!15155) (Cons!15154 (h!16283 (_ BitVec 64)) (t!21481 List!15158)) )
))
(declare-fun arrayNoDuplicates!0 (array!44362 (_ BitVec 32) List!15158) Bool)

(assert (=> b!812862 (= res!555494 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15155))))

(declare-fun res!555492 () Bool)

(assert (=> start!69966 (=> (not res!555492) (not e!450388))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69966 (= res!555492 (validMask!0 mask!1312))))

(assert (=> start!69966 e!450388))

(assert (=> start!69966 tp_is_empty!14085))

(declare-fun array_inv!16985 (array!44362) Bool)

(assert (=> start!69966 (array_inv!16985 _keys!976)))

(assert (=> start!69966 true))

(declare-fun array_inv!16986 (array!44360) Bool)

(assert (=> start!69966 (and (array_inv!16986 _values!788) e!450391)))

(assert (=> start!69966 tp!43836))

(declare-fun b!812863 () Bool)

(assert (=> b!812863 (= e!450388 false)))

(declare-fun zeroValueBefore!34 () V!23781)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23781)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9286 0))(
  ( (tuple2!9287 (_1!4653 (_ BitVec 64)) (_2!4653 V!23781)) )
))
(declare-datatypes ((List!15159 0))(
  ( (Nil!15156) (Cons!15155 (h!16284 tuple2!9286) (t!21482 List!15159)) )
))
(declare-datatypes ((ListLongMap!8123 0))(
  ( (ListLongMap!8124 (toList!4077 List!15159)) )
))
(declare-fun lt!364169 () ListLongMap!8123)

(declare-fun getCurrentListMapNoExtraKeys!2126 (array!44362 array!44360 (_ BitVec 32) (_ BitVec 32) V!23781 V!23781 (_ BitVec 32) Int) ListLongMap!8123)

(assert (=> b!812863 (= lt!364169 (getCurrentListMapNoExtraKeys!2126 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812864 () Bool)

(declare-fun res!555491 () Bool)

(assert (=> b!812864 (=> (not res!555491) (not e!450388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44362 (_ BitVec 32)) Bool)

(assert (=> b!812864 (= res!555491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812865 () Bool)

(declare-fun res!555493 () Bool)

(assert (=> b!812865 (=> (not res!555493) (not e!450388))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812865 (= res!555493 (and (= (size!21658 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21659 _keys!976) (size!21658 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22705 () Bool)

(declare-fun tp!43837 () Bool)

(assert (=> mapNonEmpty!22705 (= mapRes!22705 (and tp!43837 e!450390))))

(declare-fun mapValue!22705 () ValueCell!6627)

(declare-fun mapRest!22705 () (Array (_ BitVec 32) ValueCell!6627))

(declare-fun mapKey!22705 () (_ BitVec 32))

(assert (=> mapNonEmpty!22705 (= (arr!21237 _values!788) (store mapRest!22705 mapKey!22705 mapValue!22705))))

(declare-fun b!812866 () Bool)

(assert (=> b!812866 (= e!450389 tp_is_empty!14085)))

(assert (= (and start!69966 res!555492) b!812865))

(assert (= (and b!812865 res!555493) b!812864))

(assert (= (and b!812864 res!555491) b!812862))

(assert (= (and b!812862 res!555494) b!812863))

(assert (= (and b!812861 condMapEmpty!22705) mapIsEmpty!22705))

(assert (= (and b!812861 (not condMapEmpty!22705)) mapNonEmpty!22705))

(get-info :version)

(assert (= (and mapNonEmpty!22705 ((_ is ValueCellFull!6627) mapValue!22705)) b!812860))

(assert (= (and b!812861 ((_ is ValueCellFull!6627) mapDefault!22705)) b!812866))

(assert (= start!69966 b!812861))

(declare-fun m!755135 () Bool)

(assert (=> start!69966 m!755135))

(declare-fun m!755137 () Bool)

(assert (=> start!69966 m!755137))

(declare-fun m!755139 () Bool)

(assert (=> start!69966 m!755139))

(declare-fun m!755141 () Bool)

(assert (=> b!812863 m!755141))

(declare-fun m!755143 () Bool)

(assert (=> b!812864 m!755143))

(declare-fun m!755145 () Bool)

(assert (=> mapNonEmpty!22705 m!755145))

(declare-fun m!755147 () Bool)

(assert (=> b!812862 m!755147))

(check-sat (not b!812862) (not b!812863) b_and!21161 (not start!69966) (not b_next!12375) (not mapNonEmpty!22705) (not b!812864) tp_is_empty!14085)
(check-sat b_and!21161 (not b_next!12375))
