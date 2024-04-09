; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69952 () Bool)

(assert start!69952)

(declare-fun b_free!12361 () Bool)

(declare-fun b_next!12361 () Bool)

(assert (=> start!69952 (= b_free!12361 (not b_next!12361))))

(declare-fun tp!43795 () Bool)

(declare-fun b_and!21147 () Bool)

(assert (=> start!69952 (= tp!43795 b_and!21147)))

(declare-fun mapIsEmpty!22684 () Bool)

(declare-fun mapRes!22684 () Bool)

(assert (=> mapIsEmpty!22684 mapRes!22684))

(declare-fun b!812713 () Bool)

(declare-fun e!450283 () Bool)

(declare-fun tp_is_empty!14071 () Bool)

(assert (=> b!812713 (= e!450283 tp_is_empty!14071)))

(declare-fun b!812714 () Bool)

(declare-fun res!555410 () Bool)

(declare-fun e!450284 () Bool)

(assert (=> b!812714 (=> (not res!555410) (not e!450284))))

(declare-datatypes ((array!44334 0))(
  ( (array!44335 (arr!21224 (Array (_ BitVec 32) (_ BitVec 64))) (size!21645 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44334)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23763 0))(
  ( (V!23764 (val!7083 Int)) )
))
(declare-datatypes ((ValueCell!6620 0))(
  ( (ValueCellFull!6620 (v!9506 V!23763)) (EmptyCell!6620) )
))
(declare-datatypes ((array!44336 0))(
  ( (array!44337 (arr!21225 (Array (_ BitVec 32) ValueCell!6620)) (size!21646 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44336)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812714 (= res!555410 (and (= (size!21646 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21645 _keys!976) (size!21646 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812715 () Bool)

(declare-fun e!450285 () Bool)

(assert (=> b!812715 (= e!450285 tp_is_empty!14071)))

(declare-fun res!555409 () Bool)

(assert (=> start!69952 (=> (not res!555409) (not e!450284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69952 (= res!555409 (validMask!0 mask!1312))))

(assert (=> start!69952 e!450284))

(assert (=> start!69952 tp_is_empty!14071))

(declare-fun array_inv!16975 (array!44334) Bool)

(assert (=> start!69952 (array_inv!16975 _keys!976)))

(assert (=> start!69952 true))

(declare-fun e!450286 () Bool)

(declare-fun array_inv!16976 (array!44336) Bool)

(assert (=> start!69952 (and (array_inv!16976 _values!788) e!450286)))

(assert (=> start!69952 tp!43795))

(declare-fun b!812716 () Bool)

(assert (=> b!812716 (= e!450284 false)))

(declare-fun zeroValueBefore!34 () V!23763)

(declare-fun minValue!754 () V!23763)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9274 0))(
  ( (tuple2!9275 (_1!4647 (_ BitVec 64)) (_2!4647 V!23763)) )
))
(declare-datatypes ((List!15148 0))(
  ( (Nil!15145) (Cons!15144 (h!16273 tuple2!9274) (t!21471 List!15148)) )
))
(declare-datatypes ((ListLongMap!8111 0))(
  ( (ListLongMap!8112 (toList!4071 List!15148)) )
))
(declare-fun lt!364148 () ListLongMap!8111)

(declare-fun getCurrentListMapNoExtraKeys!2120 (array!44334 array!44336 (_ BitVec 32) (_ BitVec 32) V!23763 V!23763 (_ BitVec 32) Int) ListLongMap!8111)

(assert (=> b!812716 (= lt!364148 (getCurrentListMapNoExtraKeys!2120 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!22684 () Bool)

(declare-fun tp!43794 () Bool)

(assert (=> mapNonEmpty!22684 (= mapRes!22684 (and tp!43794 e!450285))))

(declare-fun mapValue!22684 () ValueCell!6620)

(declare-fun mapRest!22684 () (Array (_ BitVec 32) ValueCell!6620))

(declare-fun mapKey!22684 () (_ BitVec 32))

(assert (=> mapNonEmpty!22684 (= (arr!21225 _values!788) (store mapRest!22684 mapKey!22684 mapValue!22684))))

(declare-fun b!812717 () Bool)

(declare-fun res!555408 () Bool)

(assert (=> b!812717 (=> (not res!555408) (not e!450284))))

(declare-datatypes ((List!15149 0))(
  ( (Nil!15146) (Cons!15145 (h!16274 (_ BitVec 64)) (t!21472 List!15149)) )
))
(declare-fun arrayNoDuplicates!0 (array!44334 (_ BitVec 32) List!15149) Bool)

(assert (=> b!812717 (= res!555408 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15146))))

(declare-fun b!812718 () Bool)

(assert (=> b!812718 (= e!450286 (and e!450283 mapRes!22684))))

(declare-fun condMapEmpty!22684 () Bool)

(declare-fun mapDefault!22684 () ValueCell!6620)

