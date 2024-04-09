; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70678 () Bool)

(assert start!70678)

(declare-fun b_free!12941 () Bool)

(declare-fun b_next!12941 () Bool)

(assert (=> start!70678 (= b_free!12941 (not b_next!12941))))

(declare-fun tp!45561 () Bool)

(declare-fun b_and!21813 () Bool)

(assert (=> start!70678 (= tp!45561 b_and!21813)))

(declare-fun b!820602 () Bool)

(declare-fun res!559981 () Bool)

(declare-fun e!455977 () Bool)

(assert (=> b!820602 (=> (not res!559981) (not e!455977))))

(declare-datatypes ((array!45464 0))(
  ( (array!45465 (arr!21780 (Array (_ BitVec 32) (_ BitVec 64))) (size!22201 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45464)

(declare-datatypes ((List!15581 0))(
  ( (Nil!15578) (Cons!15577 (h!16706 (_ BitVec 64)) (t!21922 List!15581)) )
))
(declare-fun arrayNoDuplicates!0 (array!45464 (_ BitVec 32) List!15581) Bool)

(assert (=> b!820602 (= res!559981 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15578))))

(declare-fun b!820603 () Bool)

(declare-fun e!455978 () Bool)

(declare-fun tp_is_empty!14651 () Bool)

(assert (=> b!820603 (= e!455978 tp_is_empty!14651)))

(declare-fun res!559982 () Bool)

(assert (=> start!70678 (=> (not res!559982) (not e!455977))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70678 (= res!559982 (validMask!0 mask!1312))))

(assert (=> start!70678 e!455977))

(assert (=> start!70678 tp_is_empty!14651))

(declare-fun array_inv!17375 (array!45464) Bool)

(assert (=> start!70678 (array_inv!17375 _keys!976)))

(assert (=> start!70678 true))

(declare-datatypes ((V!24535 0))(
  ( (V!24536 (val!7373 Int)) )
))
(declare-datatypes ((ValueCell!6910 0))(
  ( (ValueCellFull!6910 (v!9800 V!24535)) (EmptyCell!6910) )
))
(declare-datatypes ((array!45466 0))(
  ( (array!45467 (arr!21781 (Array (_ BitVec 32) ValueCell!6910)) (size!22202 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45466)

(declare-fun e!455979 () Bool)

(declare-fun array_inv!17376 (array!45466) Bool)

(assert (=> start!70678 (and (array_inv!17376 _values!788) e!455979)))

(assert (=> start!70678 tp!45561))

(declare-fun b!820604 () Bool)

(declare-fun res!559980 () Bool)

(assert (=> b!820604 (=> (not res!559980) (not e!455977))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820604 (= res!559980 (and (= (size!22202 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22201 _keys!976) (size!22202 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820605 () Bool)

(declare-fun e!455976 () Bool)

(assert (=> b!820605 (= e!455976 tp_is_empty!14651)))

(declare-fun b!820606 () Bool)

(declare-fun res!559983 () Bool)

(assert (=> b!820606 (=> (not res!559983) (not e!455977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45464 (_ BitVec 32)) Bool)

(assert (=> b!820606 (= res!559983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820607 () Bool)

(assert (=> b!820607 (= e!455977 (not true))))

(declare-datatypes ((tuple2!9722 0))(
  ( (tuple2!9723 (_1!4871 (_ BitVec 64)) (_2!4871 V!24535)) )
))
(declare-datatypes ((List!15582 0))(
  ( (Nil!15579) (Cons!15578 (h!16707 tuple2!9722) (t!21923 List!15582)) )
))
(declare-datatypes ((ListLongMap!8559 0))(
  ( (ListLongMap!8560 (toList!4295 List!15582)) )
))
(declare-fun lt!368850 () ListLongMap!8559)

(declare-fun lt!368848 () ListLongMap!8559)

(assert (=> b!820607 (= lt!368850 lt!368848)))

(declare-fun zeroValueBefore!34 () V!24535)

(declare-datatypes ((Unit!28043 0))(
  ( (Unit!28044) )
))
(declare-fun lt!368849 () Unit!28043)

(declare-fun zeroValueAfter!34 () V!24535)

(declare-fun minValue!754 () V!24535)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!445 (array!45464 array!45466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24535 V!24535 V!24535 V!24535 (_ BitVec 32) Int) Unit!28043)

(assert (=> b!820607 (= lt!368849 (lemmaNoChangeToArrayThenSameMapNoExtras!445 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2329 (array!45464 array!45466 (_ BitVec 32) (_ BitVec 32) V!24535 V!24535 (_ BitVec 32) Int) ListLongMap!8559)

(assert (=> b!820607 (= lt!368848 (getCurrentListMapNoExtraKeys!2329 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820607 (= lt!368850 (getCurrentListMapNoExtraKeys!2329 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23581 () Bool)

(declare-fun mapRes!23581 () Bool)

(assert (=> mapIsEmpty!23581 mapRes!23581))

(declare-fun b!820608 () Bool)

(assert (=> b!820608 (= e!455979 (and e!455976 mapRes!23581))))

(declare-fun condMapEmpty!23581 () Bool)

(declare-fun mapDefault!23581 () ValueCell!6910)

