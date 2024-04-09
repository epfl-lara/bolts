; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70232 () Bool)

(assert start!70232)

(declare-fun b_free!12601 () Bool)

(declare-fun b_next!12601 () Bool)

(assert (=> start!70232 (= b_free!12601 (not b_next!12601))))

(declare-fun tp!44524 () Bool)

(declare-fun b_and!21407 () Bool)

(assert (=> start!70232 (= tp!44524 b_and!21407)))

(declare-fun b!815496 () Bool)

(declare-fun e!452262 () Bool)

(declare-fun e!452263 () Bool)

(assert (=> b!815496 (= e!452262 (not e!452263))))

(declare-fun res!556960 () Bool)

(assert (=> b!815496 (=> res!556960 e!452263)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815496 (= res!556960 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24083 0))(
  ( (V!24084 (val!7203 Int)) )
))
(declare-datatypes ((tuple2!9462 0))(
  ( (tuple2!9463 (_1!4741 (_ BitVec 64)) (_2!4741 V!24083)) )
))
(declare-datatypes ((List!15333 0))(
  ( (Nil!15330) (Cons!15329 (h!16458 tuple2!9462) (t!21662 List!15333)) )
))
(declare-datatypes ((ListLongMap!8299 0))(
  ( (ListLongMap!8300 (toList!4165 List!15333)) )
))
(declare-fun lt!365121 () ListLongMap!8299)

(declare-fun lt!365123 () ListLongMap!8299)

(assert (=> b!815496 (= lt!365121 lt!365123)))

(declare-fun zeroValueBefore!34 () V!24083)

(declare-datatypes ((array!44810 0))(
  ( (array!44811 (arr!21459 (Array (_ BitVec 32) (_ BitVec 64))) (size!21880 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44810)

(declare-fun zeroValueAfter!34 () V!24083)

(declare-fun minValue!754 () V!24083)

(declare-datatypes ((ValueCell!6740 0))(
  ( (ValueCellFull!6740 (v!9626 V!24083)) (EmptyCell!6740) )
))
(declare-datatypes ((array!44812 0))(
  ( (array!44813 (arr!21460 (Array (_ BitVec 32) ValueCell!6740)) (size!21881 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44812)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27786 0))(
  ( (Unit!27787) )
))
(declare-fun lt!365124 () Unit!27786)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!330 (array!44810 array!44812 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24083 V!24083 V!24083 V!24083 (_ BitVec 32) Int) Unit!27786)

(assert (=> b!815496 (= lt!365124 (lemmaNoChangeToArrayThenSameMapNoExtras!330 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2214 (array!44810 array!44812 (_ BitVec 32) (_ BitVec 32) V!24083 V!24083 (_ BitVec 32) Int) ListLongMap!8299)

(assert (=> b!815496 (= lt!365123 (getCurrentListMapNoExtraKeys!2214 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815496 (= lt!365121 (getCurrentListMapNoExtraKeys!2214 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815497 () Bool)

(declare-fun e!452266 () Bool)

(declare-fun tp_is_empty!14311 () Bool)

(assert (=> b!815497 (= e!452266 tp_is_empty!14311)))

(declare-fun b!815499 () Bool)

(declare-fun res!556959 () Bool)

(assert (=> b!815499 (=> (not res!556959) (not e!452262))))

(assert (=> b!815499 (= res!556959 (and (= (size!21881 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21880 _keys!976) (size!21881 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815500 () Bool)

(declare-fun res!556957 () Bool)

(assert (=> b!815500 (=> (not res!556957) (not e!452262))))

(declare-datatypes ((List!15334 0))(
  ( (Nil!15331) (Cons!15330 (h!16459 (_ BitVec 64)) (t!21663 List!15334)) )
))
(declare-fun arrayNoDuplicates!0 (array!44810 (_ BitVec 32) List!15334) Bool)

(assert (=> b!815500 (= res!556957 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15331))))

(declare-fun b!815501 () Bool)

(declare-fun res!556956 () Bool)

(assert (=> b!815501 (=> (not res!556956) (not e!452262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44810 (_ BitVec 32)) Bool)

(assert (=> b!815501 (= res!556956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815502 () Bool)

(declare-fun e!452264 () Bool)

(assert (=> b!815502 (= e!452264 tp_is_empty!14311)))

(declare-fun b!815503 () Bool)

(assert (=> b!815503 (= e!452263 true)))

(declare-fun lt!365122 () ListLongMap!8299)

(declare-fun getCurrentListMap!2358 (array!44810 array!44812 (_ BitVec 32) (_ BitVec 32) V!24083 V!24083 (_ BitVec 32) Int) ListLongMap!8299)

(assert (=> b!815503 (= lt!365122 (getCurrentListMap!2358 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365125 () ListLongMap!8299)

(declare-fun +!1757 (ListLongMap!8299 tuple2!9462) ListLongMap!8299)

(assert (=> b!815503 (= lt!365125 (+!1757 (getCurrentListMap!2358 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815498 () Bool)

(declare-fun e!452261 () Bool)

(declare-fun mapRes!23053 () Bool)

(assert (=> b!815498 (= e!452261 (and e!452266 mapRes!23053))))

(declare-fun condMapEmpty!23053 () Bool)

(declare-fun mapDefault!23053 () ValueCell!6740)

