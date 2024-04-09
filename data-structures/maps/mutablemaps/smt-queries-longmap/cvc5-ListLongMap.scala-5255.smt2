; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70674 () Bool)

(assert start!70674)

(declare-fun b_free!12937 () Bool)

(declare-fun b_next!12937 () Bool)

(assert (=> start!70674 (= b_free!12937 (not b_next!12937))))

(declare-fun tp!45549 () Bool)

(declare-fun b_and!21809 () Bool)

(assert (=> start!70674 (= tp!45549 b_and!21809)))

(declare-fun mapNonEmpty!23575 () Bool)

(declare-fun mapRes!23575 () Bool)

(declare-fun tp!45550 () Bool)

(declare-fun e!455946 () Bool)

(assert (=> mapNonEmpty!23575 (= mapRes!23575 (and tp!45550 e!455946))))

(declare-datatypes ((V!24531 0))(
  ( (V!24532 (val!7371 Int)) )
))
(declare-datatypes ((ValueCell!6908 0))(
  ( (ValueCellFull!6908 (v!9798 V!24531)) (EmptyCell!6908) )
))
(declare-fun mapValue!23575 () ValueCell!6908)

(declare-fun mapKey!23575 () (_ BitVec 32))

(declare-fun mapRest!23575 () (Array (_ BitVec 32) ValueCell!6908))

(declare-datatypes ((array!45456 0))(
  ( (array!45457 (arr!21776 (Array (_ BitVec 32) ValueCell!6908)) (size!22197 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45456)

(assert (=> mapNonEmpty!23575 (= (arr!21776 _values!788) (store mapRest!23575 mapKey!23575 mapValue!23575))))

(declare-fun b!820560 () Bool)

(declare-fun e!455948 () Bool)

(declare-fun tp_is_empty!14647 () Bool)

(assert (=> b!820560 (= e!455948 tp_is_empty!14647)))

(declare-fun b!820561 () Bool)

(declare-fun res!559958 () Bool)

(declare-fun e!455945 () Bool)

(assert (=> b!820561 (=> (not res!559958) (not e!455945))))

(declare-datatypes ((array!45458 0))(
  ( (array!45459 (arr!21777 (Array (_ BitVec 32) (_ BitVec 64))) (size!22198 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45458)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45458 (_ BitVec 32)) Bool)

(assert (=> b!820561 (= res!559958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820562 () Bool)

(declare-fun res!559956 () Bool)

(assert (=> b!820562 (=> (not res!559956) (not e!455945))))

(declare-datatypes ((List!15577 0))(
  ( (Nil!15574) (Cons!15573 (h!16702 (_ BitVec 64)) (t!21918 List!15577)) )
))
(declare-fun arrayNoDuplicates!0 (array!45458 (_ BitVec 32) List!15577) Bool)

(assert (=> b!820562 (= res!559956 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15574))))

(declare-fun mapIsEmpty!23575 () Bool)

(assert (=> mapIsEmpty!23575 mapRes!23575))

(declare-fun b!820563 () Bool)

(declare-fun res!559957 () Bool)

(assert (=> b!820563 (=> (not res!559957) (not e!455945))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820563 (= res!559957 (and (= (size!22197 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22198 _keys!976) (size!22197 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!559959 () Bool)

(assert (=> start!70674 (=> (not res!559959) (not e!455945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70674 (= res!559959 (validMask!0 mask!1312))))

(assert (=> start!70674 e!455945))

(assert (=> start!70674 tp_is_empty!14647))

(declare-fun array_inv!17371 (array!45458) Bool)

(assert (=> start!70674 (array_inv!17371 _keys!976)))

(assert (=> start!70674 true))

(declare-fun e!455947 () Bool)

(declare-fun array_inv!17372 (array!45456) Bool)

(assert (=> start!70674 (and (array_inv!17372 _values!788) e!455947)))

(assert (=> start!70674 tp!45549))

(declare-fun b!820564 () Bool)

(assert (=> b!820564 (= e!455946 tp_is_empty!14647)))

(declare-fun b!820565 () Bool)

(assert (=> b!820565 (= e!455945 (not true))))

(declare-datatypes ((tuple2!9718 0))(
  ( (tuple2!9719 (_1!4869 (_ BitVec 64)) (_2!4869 V!24531)) )
))
(declare-datatypes ((List!15578 0))(
  ( (Nil!15575) (Cons!15574 (h!16703 tuple2!9718) (t!21919 List!15578)) )
))
(declare-datatypes ((ListLongMap!8555 0))(
  ( (ListLongMap!8556 (toList!4293 List!15578)) )
))
(declare-fun lt!368831 () ListLongMap!8555)

(declare-fun lt!368830 () ListLongMap!8555)

(assert (=> b!820565 (= lt!368831 lt!368830)))

(declare-fun zeroValueAfter!34 () V!24531)

(declare-fun minValue!754 () V!24531)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28039 0))(
  ( (Unit!28040) )
))
(declare-fun lt!368832 () Unit!28039)

(declare-fun zeroValueBefore!34 () V!24531)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!443 (array!45458 array!45456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24531 V!24531 V!24531 V!24531 (_ BitVec 32) Int) Unit!28039)

(assert (=> b!820565 (= lt!368832 (lemmaNoChangeToArrayThenSameMapNoExtras!443 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2327 (array!45458 array!45456 (_ BitVec 32) (_ BitVec 32) V!24531 V!24531 (_ BitVec 32) Int) ListLongMap!8555)

(assert (=> b!820565 (= lt!368830 (getCurrentListMapNoExtraKeys!2327 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820565 (= lt!368831 (getCurrentListMapNoExtraKeys!2327 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820566 () Bool)

(assert (=> b!820566 (= e!455947 (and e!455948 mapRes!23575))))

(declare-fun condMapEmpty!23575 () Bool)

(declare-fun mapDefault!23575 () ValueCell!6908)

