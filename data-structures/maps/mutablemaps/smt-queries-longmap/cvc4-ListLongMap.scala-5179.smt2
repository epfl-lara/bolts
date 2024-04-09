; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70088 () Bool)

(assert start!70088)

(declare-fun b_free!12485 () Bool)

(declare-fun b_next!12485 () Bool)

(assert (=> start!70088 (= b_free!12485 (not b_next!12485))))

(declare-fun tp!44169 () Bool)

(declare-fun b_and!21275 () Bool)

(assert (=> start!70088 (= tp!44169 b_and!21275)))

(declare-fun b!814088 () Bool)

(declare-fun res!556178 () Bool)

(declare-fun e!451262 () Bool)

(assert (=> b!814088 (=> (not res!556178) (not e!451262))))

(declare-datatypes ((array!44578 0))(
  ( (array!44579 (arr!21345 (Array (_ BitVec 32) (_ BitVec 64))) (size!21766 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44578)

(declare-datatypes ((List!15244 0))(
  ( (Nil!15241) (Cons!15240 (h!16369 (_ BitVec 64)) (t!21569 List!15244)) )
))
(declare-fun arrayNoDuplicates!0 (array!44578 (_ BitVec 32) List!15244) Bool)

(assert (=> b!814088 (= res!556178 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15241))))

(declare-fun b!814089 () Bool)

(declare-fun res!556181 () Bool)

(assert (=> b!814089 (=> (not res!556181) (not e!451262))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44578 (_ BitVec 32)) Bool)

(assert (=> b!814089 (= res!556181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814090 () Bool)

(assert (=> b!814090 (= e!451262 (not true))))

(declare-datatypes ((V!23927 0))(
  ( (V!23928 (val!7145 Int)) )
))
(declare-datatypes ((tuple2!9370 0))(
  ( (tuple2!9371 (_1!4695 (_ BitVec 64)) (_2!4695 V!23927)) )
))
(declare-datatypes ((List!15245 0))(
  ( (Nil!15242) (Cons!15241 (h!16370 tuple2!9370) (t!21570 List!15245)) )
))
(declare-datatypes ((ListLongMap!8207 0))(
  ( (ListLongMap!8208 (toList!4119 List!15245)) )
))
(declare-fun lt!364480 () ListLongMap!8207)

(declare-fun lt!364479 () ListLongMap!8207)

(assert (=> b!814090 (= lt!364480 lt!364479)))

(declare-fun zeroValueBefore!34 () V!23927)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23927)

(declare-fun minValue!754 () V!23927)

(declare-datatypes ((ValueCell!6682 0))(
  ( (ValueCellFull!6682 (v!9568 V!23927)) (EmptyCell!6682) )
))
(declare-datatypes ((array!44580 0))(
  ( (array!44581 (arr!21346 (Array (_ BitVec 32) ValueCell!6682)) (size!21767 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44580)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27694 0))(
  ( (Unit!27695) )
))
(declare-fun lt!364481 () Unit!27694)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!284 (array!44578 array!44580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23927 V!23927 V!23927 V!23927 (_ BitVec 32) Int) Unit!27694)

(assert (=> b!814090 (= lt!364481 (lemmaNoChangeToArrayThenSameMapNoExtras!284 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2168 (array!44578 array!44580 (_ BitVec 32) (_ BitVec 32) V!23927 V!23927 (_ BitVec 32) Int) ListLongMap!8207)

(assert (=> b!814090 (= lt!364479 (getCurrentListMapNoExtraKeys!2168 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814090 (= lt!364480 (getCurrentListMapNoExtraKeys!2168 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814091 () Bool)

(declare-fun e!451263 () Bool)

(declare-fun e!451265 () Bool)

(declare-fun mapRes!22873 () Bool)

(assert (=> b!814091 (= e!451263 (and e!451265 mapRes!22873))))

(declare-fun condMapEmpty!22873 () Bool)

(declare-fun mapDefault!22873 () ValueCell!6682)

