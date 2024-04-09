; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70518 () Bool)

(assert start!70518)

(declare-fun b_free!12821 () Bool)

(declare-fun b_next!12821 () Bool)

(assert (=> start!70518 (= b_free!12821 (not b_next!12821))))

(declare-fun tp!45195 () Bool)

(declare-fun b_and!21669 () Bool)

(assert (=> start!70518 (= tp!45195 b_and!21669)))

(declare-fun b!818682 () Bool)

(declare-fun e!454561 () Bool)

(assert (=> b!818682 (= e!454561 true)))

(declare-datatypes ((V!24375 0))(
  ( (V!24376 (val!7313 Int)) )
))
(declare-datatypes ((tuple2!9628 0))(
  ( (tuple2!9629 (_1!4824 (_ BitVec 64)) (_2!4824 V!24375)) )
))
(declare-fun lt!367057 () tuple2!9628)

(declare-datatypes ((List!15490 0))(
  ( (Nil!15487) (Cons!15486 (h!16615 tuple2!9628) (t!21827 List!15490)) )
))
(declare-datatypes ((ListLongMap!8465 0))(
  ( (ListLongMap!8466 (toList!4248 List!15490)) )
))
(declare-fun lt!367050 () ListLongMap!8465)

(declare-fun lt!367052 () tuple2!9628)

(declare-fun lt!367053 () ListLongMap!8465)

(declare-fun +!1792 (ListLongMap!8465 tuple2!9628) ListLongMap!8465)

(assert (=> b!818682 (= lt!367050 (+!1792 (+!1792 lt!367053 lt!367052) lt!367057))))

(declare-fun lt!367048 () ListLongMap!8465)

(declare-fun lt!367051 () ListLongMap!8465)

(assert (=> b!818682 (= (+!1792 lt!367048 lt!367057) (+!1792 lt!367051 lt!367057))))

(declare-fun zeroValueBefore!34 () V!24375)

(declare-fun zeroValueAfter!34 () V!24375)

(declare-datatypes ((Unit!27945 0))(
  ( (Unit!27946) )
))
(declare-fun lt!367054 () Unit!27945)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!171 (ListLongMap!8465 (_ BitVec 64) V!24375 V!24375) Unit!27945)

(assert (=> b!818682 (= lt!367054 (addSameAsAddTwiceSameKeyDiffValues!171 lt!367048 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818682 (= lt!367057 (tuple2!9629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454557 () Bool)

(assert (=> b!818682 e!454557))

(declare-fun res!558805 () Bool)

(assert (=> b!818682 (=> (not res!558805) (not e!454557))))

(declare-fun lt!367049 () ListLongMap!8465)

(assert (=> b!818682 (= res!558805 (= lt!367049 lt!367051))))

(assert (=> b!818682 (= lt!367051 (+!1792 lt!367048 lt!367052))))

(assert (=> b!818682 (= lt!367052 (tuple2!9629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367055 () ListLongMap!8465)

(declare-datatypes ((array!45234 0))(
  ( (array!45235 (arr!21667 (Array (_ BitVec 32) (_ BitVec 64))) (size!22088 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45234)

(declare-fun minValue!754 () V!24375)

(declare-datatypes ((ValueCell!6850 0))(
  ( (ValueCellFull!6850 (v!9738 V!24375)) (EmptyCell!6850) )
))
(declare-datatypes ((array!45236 0))(
  ( (array!45237 (arr!21668 (Array (_ BitVec 32) ValueCell!6850)) (size!22089 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45236)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2406 (array!45234 array!45236 (_ BitVec 32) (_ BitVec 32) V!24375 V!24375 (_ BitVec 32) Int) ListLongMap!8465)

(assert (=> b!818682 (= lt!367055 (getCurrentListMap!2406 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818682 (= lt!367049 (getCurrentListMap!2406 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818683 () Bool)

(declare-fun res!558804 () Bool)

(declare-fun e!454555 () Bool)

(assert (=> b!818683 (=> (not res!558804) (not e!454555))))

(declare-datatypes ((List!15491 0))(
  ( (Nil!15488) (Cons!15487 (h!16616 (_ BitVec 64)) (t!21828 List!15491)) )
))
(declare-fun arrayNoDuplicates!0 (array!45234 (_ BitVec 32) List!15491) Bool)

(assert (=> b!818683 (= res!558804 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15488))))

(declare-fun b!818684 () Bool)

(declare-fun e!454558 () Bool)

(declare-fun tp_is_empty!14531 () Bool)

(assert (=> b!818684 (= e!454558 tp_is_empty!14531)))

(declare-fun b!818685 () Bool)

(declare-fun res!558806 () Bool)

(assert (=> b!818685 (=> (not res!558806) (not e!454555))))

(assert (=> b!818685 (= res!558806 (and (= (size!22089 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22088 _keys!976) (size!22089 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!558809 () Bool)

(assert (=> start!70518 (=> (not res!558809) (not e!454555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70518 (= res!558809 (validMask!0 mask!1312))))

(assert (=> start!70518 e!454555))

(assert (=> start!70518 tp_is_empty!14531))

(declare-fun array_inv!17291 (array!45234) Bool)

(assert (=> start!70518 (array_inv!17291 _keys!976)))

(assert (=> start!70518 true))

(declare-fun e!454560 () Bool)

(declare-fun array_inv!17292 (array!45236) Bool)

(assert (=> start!70518 (and (array_inv!17292 _values!788) e!454560)))

(assert (=> start!70518 tp!45195))

(declare-fun b!818686 () Bool)

(assert (=> b!818686 (= e!454557 (= lt!367055 (+!1792 lt!367053 (tuple2!9629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!818687 () Bool)

(assert (=> b!818687 (= e!454555 (not e!454561))))

(declare-fun res!558807 () Bool)

(assert (=> b!818687 (=> res!558807 e!454561)))

(assert (=> b!818687 (= res!558807 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!818687 (= lt!367048 lt!367053)))

(declare-fun lt!367056 () Unit!27945)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!406 (array!45234 array!45236 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24375 V!24375 V!24375 V!24375 (_ BitVec 32) Int) Unit!27945)

(assert (=> b!818687 (= lt!367056 (lemmaNoChangeToArrayThenSameMapNoExtras!406 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2290 (array!45234 array!45236 (_ BitVec 32) (_ BitVec 32) V!24375 V!24375 (_ BitVec 32) Int) ListLongMap!8465)

(assert (=> b!818687 (= lt!367053 (getCurrentListMapNoExtraKeys!2290 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818687 (= lt!367048 (getCurrentListMapNoExtraKeys!2290 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818688 () Bool)

(declare-fun e!454556 () Bool)

(declare-fun mapRes!23395 () Bool)

(assert (=> b!818688 (= e!454560 (and e!454556 mapRes!23395))))

(declare-fun condMapEmpty!23395 () Bool)

(declare-fun mapDefault!23395 () ValueCell!6850)

