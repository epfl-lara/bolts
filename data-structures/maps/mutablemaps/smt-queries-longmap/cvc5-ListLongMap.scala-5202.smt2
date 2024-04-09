; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70250 () Bool)

(assert start!70250)

(declare-fun b_free!12619 () Bool)

(declare-fun b_next!12619 () Bool)

(assert (=> start!70250 (= b_free!12619 (not b_next!12619))))

(declare-fun tp!44578 () Bool)

(declare-fun b_and!21425 () Bool)

(assert (=> start!70250 (= tp!44578 b_and!21425)))

(declare-fun b!815712 () Bool)

(declare-fun res!557091 () Bool)

(declare-fun e!452424 () Bool)

(assert (=> b!815712 (=> (not res!557091) (not e!452424))))

(declare-datatypes ((array!44842 0))(
  ( (array!44843 (arr!21475 (Array (_ BitVec 32) (_ BitVec 64))) (size!21896 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44842)

(declare-datatypes ((List!15346 0))(
  ( (Nil!15343) (Cons!15342 (h!16471 (_ BitVec 64)) (t!21675 List!15346)) )
))
(declare-fun arrayNoDuplicates!0 (array!44842 (_ BitVec 32) List!15346) Bool)

(assert (=> b!815712 (= res!557091 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15343))))

(declare-fun b!815713 () Bool)

(declare-fun e!452427 () Bool)

(assert (=> b!815713 (= e!452424 (not e!452427))))

(declare-fun res!557094 () Bool)

(assert (=> b!815713 (=> res!557094 e!452427)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815713 (= res!557094 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24107 0))(
  ( (V!24108 (val!7212 Int)) )
))
(declare-datatypes ((tuple2!9476 0))(
  ( (tuple2!9477 (_1!4748 (_ BitVec 64)) (_2!4748 V!24107)) )
))
(declare-datatypes ((List!15347 0))(
  ( (Nil!15344) (Cons!15343 (h!16472 tuple2!9476) (t!21676 List!15347)) )
))
(declare-datatypes ((ListLongMap!8313 0))(
  ( (ListLongMap!8314 (toList!4172 List!15347)) )
))
(declare-fun lt!365256 () ListLongMap!8313)

(declare-fun lt!365260 () ListLongMap!8313)

(assert (=> b!815713 (= lt!365256 lt!365260)))

(declare-fun zeroValueBefore!34 () V!24107)

(declare-fun zeroValueAfter!34 () V!24107)

(declare-fun minValue!754 () V!24107)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6749 0))(
  ( (ValueCellFull!6749 (v!9635 V!24107)) (EmptyCell!6749) )
))
(declare-datatypes ((array!44844 0))(
  ( (array!44845 (arr!21476 (Array (_ BitVec 32) ValueCell!6749)) (size!21897 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44844)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27800 0))(
  ( (Unit!27801) )
))
(declare-fun lt!365257 () Unit!27800)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!337 (array!44842 array!44844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24107 V!24107 V!24107 V!24107 (_ BitVec 32) Int) Unit!27800)

(assert (=> b!815713 (= lt!365257 (lemmaNoChangeToArrayThenSameMapNoExtras!337 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2221 (array!44842 array!44844 (_ BitVec 32) (_ BitVec 32) V!24107 V!24107 (_ BitVec 32) Int) ListLongMap!8313)

(assert (=> b!815713 (= lt!365260 (getCurrentListMapNoExtraKeys!2221 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815713 (= lt!365256 (getCurrentListMapNoExtraKeys!2221 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815714 () Bool)

(declare-fun e!452425 () Bool)

(declare-fun tp_is_empty!14329 () Bool)

(assert (=> b!815714 (= e!452425 tp_is_empty!14329)))

(declare-fun mapIsEmpty!23080 () Bool)

(declare-fun mapRes!23080 () Bool)

(assert (=> mapIsEmpty!23080 mapRes!23080))

(declare-fun b!815715 () Bool)

(declare-fun res!557092 () Bool)

(assert (=> b!815715 (=> (not res!557092) (not e!452424))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44842 (_ BitVec 32)) Bool)

(assert (=> b!815715 (= res!557092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23080 () Bool)

(declare-fun tp!44577 () Bool)

(assert (=> mapNonEmpty!23080 (= mapRes!23080 (and tp!44577 e!452425))))

(declare-fun mapKey!23080 () (_ BitVec 32))

(declare-fun mapValue!23080 () ValueCell!6749)

(declare-fun mapRest!23080 () (Array (_ BitVec 32) ValueCell!6749))

(assert (=> mapNonEmpty!23080 (= (arr!21476 _values!788) (store mapRest!23080 mapKey!23080 mapValue!23080))))

(declare-fun res!557093 () Bool)

(assert (=> start!70250 (=> (not res!557093) (not e!452424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70250 (= res!557093 (validMask!0 mask!1312))))

(assert (=> start!70250 e!452424))

(assert (=> start!70250 tp_is_empty!14329))

(declare-fun array_inv!17161 (array!44842) Bool)

(assert (=> start!70250 (array_inv!17161 _keys!976)))

(assert (=> start!70250 true))

(declare-fun e!452423 () Bool)

(declare-fun array_inv!17162 (array!44844) Bool)

(assert (=> start!70250 (and (array_inv!17162 _values!788) e!452423)))

(assert (=> start!70250 tp!44578))

(declare-fun b!815716 () Bool)

(declare-fun e!452426 () Bool)

(assert (=> b!815716 (= e!452423 (and e!452426 mapRes!23080))))

(declare-fun condMapEmpty!23080 () Bool)

(declare-fun mapDefault!23080 () ValueCell!6749)

