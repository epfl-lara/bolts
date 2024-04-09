; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70828 () Bool)

(assert start!70828)

(declare-fun b_free!13061 () Bool)

(declare-fun b_next!13061 () Bool)

(assert (=> start!70828 (= b_free!13061 (not b_next!13061))))

(declare-fun tp!45928 () Bool)

(declare-fun b_and!21951 () Bool)

(assert (=> start!70828 (= tp!45928 b_and!21951)))

(declare-fun b!822247 () Bool)

(declare-fun res!560941 () Bool)

(declare-fun e!457180 () Bool)

(assert (=> b!822247 (=> (not res!560941) (not e!457180))))

(declare-datatypes ((array!45694 0))(
  ( (array!45695 (arr!21893 (Array (_ BitVec 32) (_ BitVec 64))) (size!22314 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45694)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45694 (_ BitVec 32)) Bool)

(assert (=> b!822247 (= res!560941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822248 () Bool)

(declare-fun res!560945 () Bool)

(assert (=> b!822248 (=> (not res!560945) (not e!457180))))

(declare-datatypes ((List!15669 0))(
  ( (Nil!15666) (Cons!15665 (h!16794 (_ BitVec 64)) (t!22014 List!15669)) )
))
(declare-fun arrayNoDuplicates!0 (array!45694 (_ BitVec 32) List!15669) Bool)

(assert (=> b!822248 (= res!560945 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15666))))

(declare-fun b!822249 () Bool)

(declare-fun e!457177 () Bool)

(declare-fun tp_is_empty!14771 () Bool)

(assert (=> b!822249 (= e!457177 tp_is_empty!14771)))

(declare-fun b!822250 () Bool)

(declare-fun e!457176 () Bool)

(assert (=> b!822250 (= e!457176 true)))

(declare-datatypes ((V!24695 0))(
  ( (V!24696 (val!7433 Int)) )
))
(declare-datatypes ((tuple2!9808 0))(
  ( (tuple2!9809 (_1!4914 (_ BitVec 64)) (_2!4914 V!24695)) )
))
(declare-datatypes ((List!15670 0))(
  ( (Nil!15667) (Cons!15666 (h!16795 tuple2!9808) (t!22015 List!15670)) )
))
(declare-datatypes ((ListLongMap!8645 0))(
  ( (ListLongMap!8646 (toList!4338 List!15670)) )
))
(declare-fun lt!370019 () ListLongMap!8645)

(declare-fun lt!370013 () ListLongMap!8645)

(declare-fun lt!370020 () tuple2!9808)

(declare-fun +!1842 (ListLongMap!8645 tuple2!9808) ListLongMap!8645)

(assert (=> b!822250 (= lt!370019 (+!1842 lt!370013 lt!370020))))

(declare-fun zeroValueAfter!34 () V!24695)

(declare-datatypes ((Unit!28118 0))(
  ( (Unit!28119) )
))
(declare-fun lt!370022 () Unit!28118)

(declare-fun minValue!754 () V!24695)

(declare-fun lt!370018 () ListLongMap!8645)

(declare-fun addCommutativeForDiffKeys!437 (ListLongMap!8645 (_ BitVec 64) V!24695 (_ BitVec 64) V!24695) Unit!28118)

(assert (=> b!822250 (= lt!370022 (addCommutativeForDiffKeys!437 lt!370018 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370016 () ListLongMap!8645)

(assert (=> b!822250 (= lt!370016 lt!370019)))

(declare-fun lt!370014 () tuple2!9808)

(assert (=> b!822250 (= lt!370019 (+!1842 (+!1842 lt!370018 lt!370020) lt!370014))))

(assert (=> b!822250 (= lt!370020 (tuple2!9809 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370021 () ListLongMap!8645)

(assert (=> b!822250 (= lt!370021 lt!370013)))

(assert (=> b!822250 (= lt!370013 (+!1842 lt!370018 lt!370014))))

(assert (=> b!822250 (= lt!370014 (tuple2!9809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((ValueCell!6970 0))(
  ( (ValueCellFull!6970 (v!9860 V!24695)) (EmptyCell!6970) )
))
(declare-datatypes ((array!45696 0))(
  ( (array!45697 (arr!21894 (Array (_ BitVec 32) ValueCell!6970)) (size!22315 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45696)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2472 (array!45694 array!45696 (_ BitVec 32) (_ BitVec 32) V!24695 V!24695 (_ BitVec 32) Int) ListLongMap!8645)

(assert (=> b!822250 (= lt!370016 (getCurrentListMap!2472 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24695)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822250 (= lt!370021 (getCurrentListMap!2472 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822251 () Bool)

(assert (=> b!822251 (= e!457180 (not e!457176))))

(declare-fun res!560943 () Bool)

(assert (=> b!822251 (=> res!560943 e!457176)))

(assert (=> b!822251 (= res!560943 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370015 () ListLongMap!8645)

(assert (=> b!822251 (= lt!370018 lt!370015)))

(declare-fun lt!370017 () Unit!28118)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!480 (array!45694 array!45696 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24695 V!24695 V!24695 V!24695 (_ BitVec 32) Int) Unit!28118)

(assert (=> b!822251 (= lt!370017 (lemmaNoChangeToArrayThenSameMapNoExtras!480 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2364 (array!45694 array!45696 (_ BitVec 32) (_ BitVec 32) V!24695 V!24695 (_ BitVec 32) Int) ListLongMap!8645)

(assert (=> b!822251 (= lt!370015 (getCurrentListMapNoExtraKeys!2364 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822251 (= lt!370018 (getCurrentListMapNoExtraKeys!2364 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23767 () Bool)

(declare-fun mapRes!23767 () Bool)

(assert (=> mapIsEmpty!23767 mapRes!23767))

(declare-fun b!822252 () Bool)

(declare-fun res!560944 () Bool)

(assert (=> b!822252 (=> (not res!560944) (not e!457180))))

(assert (=> b!822252 (= res!560944 (and (= (size!22315 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22314 _keys!976) (size!22315 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822253 () Bool)

(declare-fun e!457178 () Bool)

(assert (=> b!822253 (= e!457178 tp_is_empty!14771)))

(declare-fun b!822254 () Bool)

(declare-fun e!457179 () Bool)

(assert (=> b!822254 (= e!457179 (and e!457178 mapRes!23767))))

(declare-fun condMapEmpty!23767 () Bool)

(declare-fun mapDefault!23767 () ValueCell!6970)

