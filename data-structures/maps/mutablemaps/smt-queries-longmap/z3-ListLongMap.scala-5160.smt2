; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69960 () Bool)

(assert start!69960)

(declare-fun b_free!12369 () Bool)

(declare-fun b_next!12369 () Bool)

(assert (=> start!69960 (= b_free!12369 (not b_next!12369))))

(declare-fun tp!43818 () Bool)

(declare-fun b_and!21155 () Bool)

(assert (=> start!69960 (= tp!43818 b_and!21155)))

(declare-fun b!812797 () Bool)

(declare-fun res!555458 () Bool)

(declare-fun e!450347 () Bool)

(assert (=> b!812797 (=> (not res!555458) (not e!450347))))

(declare-datatypes ((array!44350 0))(
  ( (array!44351 (arr!21232 (Array (_ BitVec 32) (_ BitVec 64))) (size!21653 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44350)

(declare-datatypes ((List!15155 0))(
  ( (Nil!15152) (Cons!15151 (h!16280 (_ BitVec 64)) (t!21478 List!15155)) )
))
(declare-fun arrayNoDuplicates!0 (array!44350 (_ BitVec 32) List!15155) Bool)

(assert (=> b!812797 (= res!555458 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15152))))

(declare-fun res!555456 () Bool)

(assert (=> start!69960 (=> (not res!555456) (not e!450347))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69960 (= res!555456 (validMask!0 mask!1312))))

(assert (=> start!69960 e!450347))

(declare-fun tp_is_empty!14079 () Bool)

(assert (=> start!69960 tp_is_empty!14079))

(declare-fun array_inv!16983 (array!44350) Bool)

(assert (=> start!69960 (array_inv!16983 _keys!976)))

(assert (=> start!69960 true))

(declare-datatypes ((V!23773 0))(
  ( (V!23774 (val!7087 Int)) )
))
(declare-datatypes ((ValueCell!6624 0))(
  ( (ValueCellFull!6624 (v!9510 V!23773)) (EmptyCell!6624) )
))
(declare-datatypes ((array!44352 0))(
  ( (array!44353 (arr!21233 (Array (_ BitVec 32) ValueCell!6624)) (size!21654 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44352)

(declare-fun e!450344 () Bool)

(declare-fun array_inv!16984 (array!44352) Bool)

(assert (=> start!69960 (and (array_inv!16984 _values!788) e!450344)))

(assert (=> start!69960 tp!43818))

(declare-fun mapIsEmpty!22696 () Bool)

(declare-fun mapRes!22696 () Bool)

(assert (=> mapIsEmpty!22696 mapRes!22696))

(declare-fun b!812798 () Bool)

(assert (=> b!812798 (= e!450347 false)))

(declare-fun zeroValueBefore!34 () V!23773)

(declare-datatypes ((tuple2!9282 0))(
  ( (tuple2!9283 (_1!4651 (_ BitVec 64)) (_2!4651 V!23773)) )
))
(declare-datatypes ((List!15156 0))(
  ( (Nil!15153) (Cons!15152 (h!16281 tuple2!9282) (t!21479 List!15156)) )
))
(declare-datatypes ((ListLongMap!8119 0))(
  ( (ListLongMap!8120 (toList!4075 List!15156)) )
))
(declare-fun lt!364160 () ListLongMap!8119)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23773)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2124 (array!44350 array!44352 (_ BitVec 32) (_ BitVec 32) V!23773 V!23773 (_ BitVec 32) Int) ListLongMap!8119)

(assert (=> b!812798 (= lt!364160 (getCurrentListMapNoExtraKeys!2124 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812799 () Bool)

(declare-fun e!450343 () Bool)

(assert (=> b!812799 (= e!450343 tp_is_empty!14079)))

(declare-fun mapNonEmpty!22696 () Bool)

(declare-fun tp!43819 () Bool)

(assert (=> mapNonEmpty!22696 (= mapRes!22696 (and tp!43819 e!450343))))

(declare-fun mapKey!22696 () (_ BitVec 32))

(declare-fun mapRest!22696 () (Array (_ BitVec 32) ValueCell!6624))

(declare-fun mapValue!22696 () ValueCell!6624)

(assert (=> mapNonEmpty!22696 (= (arr!21233 _values!788) (store mapRest!22696 mapKey!22696 mapValue!22696))))

(declare-fun b!812800 () Bool)

(declare-fun e!450345 () Bool)

(assert (=> b!812800 (= e!450344 (and e!450345 mapRes!22696))))

(declare-fun condMapEmpty!22696 () Bool)

(declare-fun mapDefault!22696 () ValueCell!6624)

(assert (=> b!812800 (= condMapEmpty!22696 (= (arr!21233 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6624)) mapDefault!22696)))))

(declare-fun b!812801 () Bool)

(declare-fun res!555455 () Bool)

(assert (=> b!812801 (=> (not res!555455) (not e!450347))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812801 (= res!555455 (and (= (size!21654 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21653 _keys!976) (size!21654 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812802 () Bool)

(assert (=> b!812802 (= e!450345 tp_is_empty!14079)))

(declare-fun b!812803 () Bool)

(declare-fun res!555457 () Bool)

(assert (=> b!812803 (=> (not res!555457) (not e!450347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44350 (_ BitVec 32)) Bool)

(assert (=> b!812803 (= res!555457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!69960 res!555456) b!812801))

(assert (= (and b!812801 res!555455) b!812803))

(assert (= (and b!812803 res!555457) b!812797))

(assert (= (and b!812797 res!555458) b!812798))

(assert (= (and b!812800 condMapEmpty!22696) mapIsEmpty!22696))

(assert (= (and b!812800 (not condMapEmpty!22696)) mapNonEmpty!22696))

(get-info :version)

(assert (= (and mapNonEmpty!22696 ((_ is ValueCellFull!6624) mapValue!22696)) b!812799))

(assert (= (and b!812800 ((_ is ValueCellFull!6624) mapDefault!22696)) b!812802))

(assert (= start!69960 b!812800))

(declare-fun m!755093 () Bool)

(assert (=> b!812803 m!755093))

(declare-fun m!755095 () Bool)

(assert (=> b!812798 m!755095))

(declare-fun m!755097 () Bool)

(assert (=> start!69960 m!755097))

(declare-fun m!755099 () Bool)

(assert (=> start!69960 m!755099))

(declare-fun m!755101 () Bool)

(assert (=> start!69960 m!755101))

(declare-fun m!755103 () Bool)

(assert (=> b!812797 m!755103))

(declare-fun m!755105 () Bool)

(assert (=> mapNonEmpty!22696 m!755105))

(check-sat tp_is_empty!14079 (not mapNonEmpty!22696) (not b!812797) (not b!812798) (not start!69960) (not b!812803) (not b_next!12369) b_and!21155)
(check-sat b_and!21155 (not b_next!12369))
