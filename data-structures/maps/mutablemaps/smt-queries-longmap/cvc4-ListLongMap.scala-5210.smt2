; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70320 () Bool)

(assert start!70320)

(declare-fun b_free!12671 () Bool)

(declare-fun b_next!12671 () Bool)

(assert (=> start!70320 (= b_free!12671 (not b_next!12671))))

(declare-fun tp!44737 () Bool)

(declare-fun b_and!21489 () Bool)

(assert (=> start!70320 (= tp!44737 b_and!21489)))

(declare-fun b!816520 () Bool)

(declare-fun e!453003 () Bool)

(declare-fun tp_is_empty!14381 () Bool)

(assert (=> b!816520 (= e!453003 tp_is_empty!14381)))

(declare-fun b!816521 () Bool)

(declare-fun e!453004 () Bool)

(declare-fun e!453005 () Bool)

(assert (=> b!816521 (= e!453004 (not e!453005))))

(declare-fun res!557566 () Bool)

(assert (=> b!816521 (=> res!557566 e!453005)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816521 (= res!557566 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24175 0))(
  ( (V!24176 (val!7238 Int)) )
))
(declare-datatypes ((tuple2!9512 0))(
  ( (tuple2!9513 (_1!4766 (_ BitVec 64)) (_2!4766 V!24175)) )
))
(declare-datatypes ((List!15383 0))(
  ( (Nil!15380) (Cons!15379 (h!16508 tuple2!9512) (t!21714 List!15383)) )
))
(declare-datatypes ((ListLongMap!8349 0))(
  ( (ListLongMap!8350 (toList!4190 List!15383)) )
))
(declare-fun lt!365768 () ListLongMap!8349)

(declare-fun lt!365770 () ListLongMap!8349)

(assert (=> b!816521 (= lt!365768 lt!365770)))

(declare-fun zeroValueBefore!34 () V!24175)

(declare-datatypes ((array!44940 0))(
  ( (array!44941 (arr!21523 (Array (_ BitVec 32) (_ BitVec 64))) (size!21944 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44940)

(declare-fun zeroValueAfter!34 () V!24175)

(declare-fun minValue!754 () V!24175)

(declare-datatypes ((ValueCell!6775 0))(
  ( (ValueCellFull!6775 (v!9662 V!24175)) (EmptyCell!6775) )
))
(declare-datatypes ((array!44942 0))(
  ( (array!44943 (arr!21524 (Array (_ BitVec 32) ValueCell!6775)) (size!21945 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44942)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27836 0))(
  ( (Unit!27837) )
))
(declare-fun lt!365769 () Unit!27836)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!354 (array!44940 array!44942 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24175 V!24175 V!24175 V!24175 (_ BitVec 32) Int) Unit!27836)

(assert (=> b!816521 (= lt!365769 (lemmaNoChangeToArrayThenSameMapNoExtras!354 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2238 (array!44940 array!44942 (_ BitVec 32) (_ BitVec 32) V!24175 V!24175 (_ BitVec 32) Int) ListLongMap!8349)

(assert (=> b!816521 (= lt!365770 (getCurrentListMapNoExtraKeys!2238 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816521 (= lt!365768 (getCurrentListMapNoExtraKeys!2238 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816522 () Bool)

(declare-fun res!557567 () Bool)

(assert (=> b!816522 (=> (not res!557567) (not e!453004))))

(declare-datatypes ((List!15384 0))(
  ( (Nil!15381) (Cons!15380 (h!16509 (_ BitVec 64)) (t!21715 List!15384)) )
))
(declare-fun arrayNoDuplicates!0 (array!44940 (_ BitVec 32) List!15384) Bool)

(assert (=> b!816522 (= res!557567 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15381))))

(declare-fun b!816523 () Bool)

(declare-fun e!453001 () Bool)

(declare-fun e!453006 () Bool)

(declare-fun mapRes!23161 () Bool)

(assert (=> b!816523 (= e!453001 (and e!453006 mapRes!23161))))

(declare-fun condMapEmpty!23161 () Bool)

(declare-fun mapDefault!23161 () ValueCell!6775)

