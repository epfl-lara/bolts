; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71336 () Bool)

(assert start!71336)

(declare-fun b_free!13429 () Bool)

(declare-fun b_next!13429 () Bool)

(assert (=> start!71336 (= b_free!13429 (not b_next!13429))))

(declare-fun tp!47056 () Bool)

(declare-fun b_and!22405 () Bool)

(assert (=> start!71336 (= tp!47056 b_and!22405)))

(declare-fun b!828065 () Bool)

(declare-fun res!564395 () Bool)

(declare-fun e!461423 () Bool)

(assert (=> b!828065 (=> (not res!564395) (not e!461423))))

(declare-datatypes ((array!46416 0))(
  ( (array!46417 (arr!22246 (Array (_ BitVec 32) (_ BitVec 64))) (size!22667 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46416)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25187 0))(
  ( (V!25188 (val!7617 Int)) )
))
(declare-datatypes ((ValueCell!7154 0))(
  ( (ValueCellFull!7154 (v!10049 V!25187)) (EmptyCell!7154) )
))
(declare-datatypes ((array!46418 0))(
  ( (array!46419 (arr!22247 (Array (_ BitVec 32) ValueCell!7154)) (size!22668 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46418)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!828065 (= res!564395 (and (= (size!22668 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22667 _keys!976) (size!22668 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!828066 () Bool)

(declare-fun e!461425 () Bool)

(declare-fun tp_is_empty!15139 () Bool)

(assert (=> b!828066 (= e!461425 tp_is_empty!15139)))

(declare-fun b!828067 () Bool)

(declare-fun e!461426 () Bool)

(assert (=> b!828067 (= e!461423 (not e!461426))))

(declare-fun res!564398 () Bool)

(assert (=> b!828067 (=> res!564398 e!461426)))

(assert (=> b!828067 (= res!564398 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!10116 0))(
  ( (tuple2!10117 (_1!5068 (_ BitVec 64)) (_2!5068 V!25187)) )
))
(declare-datatypes ((List!15953 0))(
  ( (Nil!15950) (Cons!15949 (h!17078 tuple2!10116) (t!22314 List!15953)) )
))
(declare-datatypes ((ListLongMap!8953 0))(
  ( (ListLongMap!8954 (toList!4492 List!15953)) )
))
(declare-fun lt!375190 () ListLongMap!8953)

(declare-fun lt!375191 () ListLongMap!8953)

(assert (=> b!828067 (= lt!375190 lt!375191)))

(declare-datatypes ((Unit!28371 0))(
  ( (Unit!28372) )
))
(declare-fun lt!375189 () Unit!28371)

(declare-fun zeroValueBefore!34 () V!25187)

(declare-fun zeroValueAfter!34 () V!25187)

(declare-fun minValue!754 () V!25187)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!588 (array!46416 array!46418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25187 V!25187 V!25187 V!25187 (_ BitVec 32) Int) Unit!28371)

(assert (=> b!828067 (= lt!375189 (lemmaNoChangeToArrayThenSameMapNoExtras!588 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2498 (array!46416 array!46418 (_ BitVec 32) (_ BitVec 32) V!25187 V!25187 (_ BitVec 32) Int) ListLongMap!8953)

(assert (=> b!828067 (= lt!375191 (getCurrentListMapNoExtraKeys!2498 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828067 (= lt!375190 (getCurrentListMapNoExtraKeys!2498 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828068 () Bool)

(declare-fun res!564399 () Bool)

(assert (=> b!828068 (=> (not res!564399) (not e!461423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46416 (_ BitVec 32)) Bool)

(assert (=> b!828068 (= res!564399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!564397 () Bool)

(assert (=> start!71336 (=> (not res!564397) (not e!461423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71336 (= res!564397 (validMask!0 mask!1312))))

(assert (=> start!71336 e!461423))

(assert (=> start!71336 tp_is_empty!15139))

(declare-fun array_inv!17707 (array!46416) Bool)

(assert (=> start!71336 (array_inv!17707 _keys!976)))

(assert (=> start!71336 true))

(declare-fun e!461424 () Bool)

(declare-fun array_inv!17708 (array!46418) Bool)

(assert (=> start!71336 (and (array_inv!17708 _values!788) e!461424)))

(assert (=> start!71336 tp!47056))

(declare-fun b!828069 () Bool)

(declare-fun e!461427 () Bool)

(assert (=> b!828069 (= e!461427 tp_is_empty!15139)))

(declare-fun b!828070 () Bool)

(assert (=> b!828070 (= e!461426 true)))

(declare-fun lt!375193 () ListLongMap!8953)

(declare-fun getCurrentListMap!2567 (array!46416 array!46418 (_ BitVec 32) (_ BitVec 32) V!25187 V!25187 (_ BitVec 32) Int) ListLongMap!8953)

(assert (=> b!828070 (= lt!375193 (getCurrentListMap!2567 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375192 () ListLongMap!8953)

(declare-fun +!1925 (ListLongMap!8953 tuple2!10116) ListLongMap!8953)

(assert (=> b!828070 (= lt!375192 (+!1925 (getCurrentListMap!2567 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!10117 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!828071 () Bool)

(declare-fun res!564396 () Bool)

(assert (=> b!828071 (=> (not res!564396) (not e!461423))))

(declare-datatypes ((List!15954 0))(
  ( (Nil!15951) (Cons!15950 (h!17079 (_ BitVec 64)) (t!22315 List!15954)) )
))
(declare-fun arrayNoDuplicates!0 (array!46416 (_ BitVec 32) List!15954) Bool)

(assert (=> b!828071 (= res!564396 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15951))))

(declare-fun mapIsEmpty!24343 () Bool)

(declare-fun mapRes!24343 () Bool)

(assert (=> mapIsEmpty!24343 mapRes!24343))

(declare-fun b!828072 () Bool)

(assert (=> b!828072 (= e!461424 (and e!461425 mapRes!24343))))

(declare-fun condMapEmpty!24343 () Bool)

(declare-fun mapDefault!24343 () ValueCell!7154)

