; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70598 () Bool)

(assert start!70598)

(declare-fun b_free!12881 () Bool)

(declare-fun b_next!12881 () Bool)

(assert (=> start!70598 (= b_free!12881 (not b_next!12881))))

(declare-fun tp!45379 () Bool)

(declare-fun b_and!21741 () Bool)

(assert (=> start!70598 (= tp!45379 b_and!21741)))

(declare-fun b!819686 () Bool)

(declare-fun e!455314 () Bool)

(declare-fun tp_is_empty!14591 () Bool)

(assert (=> b!819686 (= e!455314 tp_is_empty!14591)))

(declare-fun b!819687 () Bool)

(declare-fun res!559437 () Bool)

(declare-fun e!455312 () Bool)

(assert (=> b!819687 (=> (not res!559437) (not e!455312))))

(declare-datatypes ((array!45346 0))(
  ( (array!45347 (arr!21722 (Array (_ BitVec 32) (_ BitVec 64))) (size!22143 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45346)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24455 0))(
  ( (V!24456 (val!7343 Int)) )
))
(declare-datatypes ((ValueCell!6880 0))(
  ( (ValueCellFull!6880 (v!9769 V!24455)) (EmptyCell!6880) )
))
(declare-datatypes ((array!45348 0))(
  ( (array!45349 (arr!21723 (Array (_ BitVec 32) ValueCell!6880)) (size!22144 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45348)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!819687 (= res!559437 (and (= (size!22144 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22143 _keys!976) (size!22144 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!559439 () Bool)

(assert (=> start!70598 (=> (not res!559439) (not e!455312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70598 (= res!559439 (validMask!0 mask!1312))))

(assert (=> start!70598 e!455312))

(assert (=> start!70598 tp_is_empty!14591))

(declare-fun array_inv!17335 (array!45346) Bool)

(assert (=> start!70598 (array_inv!17335 _keys!976)))

(assert (=> start!70598 true))

(declare-fun e!455315 () Bool)

(declare-fun array_inv!17336 (array!45348) Bool)

(assert (=> start!70598 (and (array_inv!17336 _values!788) e!455315)))

(assert (=> start!70598 tp!45379))

(declare-datatypes ((tuple2!9676 0))(
  ( (tuple2!9677 (_1!4848 (_ BitVec 64)) (_2!4848 V!24455)) )
))
(declare-datatypes ((List!15534 0))(
  ( (Nil!15531) (Cons!15530 (h!16659 tuple2!9676) (t!21873 List!15534)) )
))
(declare-datatypes ((ListLongMap!8513 0))(
  ( (ListLongMap!8514 (toList!4272 List!15534)) )
))
(declare-fun lt!368108 () ListLongMap!8513)

(declare-fun zeroValueAfter!34 () V!24455)

(declare-fun b!819688 () Bool)

(declare-fun e!455309 () Bool)

(declare-fun lt!368107 () ListLongMap!8513)

(declare-fun +!1815 (ListLongMap!8513 tuple2!9676) ListLongMap!8513)

(assert (=> b!819688 (= e!455309 (= lt!368108 (+!1815 lt!368107 (tuple2!9677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapNonEmpty!23488 () Bool)

(declare-fun mapRes!23488 () Bool)

(declare-fun tp!45378 () Bool)

(assert (=> mapNonEmpty!23488 (= mapRes!23488 (and tp!45378 e!455314))))

(declare-fun mapRest!23488 () (Array (_ BitVec 32) ValueCell!6880))

(declare-fun mapKey!23488 () (_ BitVec 32))

(declare-fun mapValue!23488 () ValueCell!6880)

(assert (=> mapNonEmpty!23488 (= (arr!21723 _values!788) (store mapRest!23488 mapKey!23488 mapValue!23488))))

(declare-fun b!819689 () Bool)

(declare-fun res!559436 () Bool)

(assert (=> b!819689 (=> (not res!559436) (not e!455312))))

(declare-datatypes ((List!15535 0))(
  ( (Nil!15532) (Cons!15531 (h!16660 (_ BitVec 64)) (t!21874 List!15535)) )
))
(declare-fun arrayNoDuplicates!0 (array!45346 (_ BitVec 32) List!15535) Bool)

(assert (=> b!819689 (= res!559436 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15532))))

(declare-fun mapIsEmpty!23488 () Bool)

(assert (=> mapIsEmpty!23488 mapRes!23488))

(declare-fun b!819690 () Bool)

(declare-fun e!455313 () Bool)

(assert (=> b!819690 (= e!455313 tp_is_empty!14591)))

(declare-fun b!819691 () Bool)

(declare-fun e!455311 () Bool)

(assert (=> b!819691 (= e!455312 (not e!455311))))

(declare-fun res!559441 () Bool)

(assert (=> b!819691 (=> res!559441 e!455311)))

(assert (=> b!819691 (= res!559441 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!368110 () ListLongMap!8513)

(assert (=> b!819691 (= lt!368110 lt!368107)))

(declare-fun zeroValueBefore!34 () V!24455)

(declare-fun minValue!754 () V!24455)

(declare-datatypes ((Unit!27995 0))(
  ( (Unit!27996) )
))
(declare-fun lt!368102 () Unit!27995)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!425 (array!45346 array!45348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24455 V!24455 V!24455 V!24455 (_ BitVec 32) Int) Unit!27995)

(assert (=> b!819691 (= lt!368102 (lemmaNoChangeToArrayThenSameMapNoExtras!425 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2309 (array!45346 array!45348 (_ BitVec 32) (_ BitVec 32) V!24455 V!24455 (_ BitVec 32) Int) ListLongMap!8513)

(assert (=> b!819691 (= lt!368107 (getCurrentListMapNoExtraKeys!2309 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819691 (= lt!368110 (getCurrentListMapNoExtraKeys!2309 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819692 () Bool)

(assert (=> b!819692 (= e!455311 true)))

(declare-fun lt!368105 () ListLongMap!8513)

(declare-fun lt!368104 () tuple2!9676)

(declare-fun lt!368111 () tuple2!9676)

(assert (=> b!819692 (= lt!368105 (+!1815 (+!1815 lt!368107 lt!368111) lt!368104))))

(declare-fun lt!368106 () ListLongMap!8513)

(assert (=> b!819692 (= (+!1815 lt!368110 lt!368104) (+!1815 lt!368106 lt!368104))))

(declare-fun lt!368109 () Unit!27995)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!192 (ListLongMap!8513 (_ BitVec 64) V!24455 V!24455) Unit!27995)

(assert (=> b!819692 (= lt!368109 (addSameAsAddTwiceSameKeyDiffValues!192 lt!368110 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819692 (= lt!368104 (tuple2!9677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!819692 e!455309))

(declare-fun res!559438 () Bool)

(assert (=> b!819692 (=> (not res!559438) (not e!455309))))

(declare-fun lt!368103 () ListLongMap!8513)

(assert (=> b!819692 (= res!559438 (= lt!368103 lt!368106))))

(assert (=> b!819692 (= lt!368106 (+!1815 lt!368110 lt!368111))))

(assert (=> b!819692 (= lt!368111 (tuple2!9677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2427 (array!45346 array!45348 (_ BitVec 32) (_ BitVec 32) V!24455 V!24455 (_ BitVec 32) Int) ListLongMap!8513)

(assert (=> b!819692 (= lt!368108 (getCurrentListMap!2427 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819692 (= lt!368103 (getCurrentListMap!2427 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819693 () Bool)

(declare-fun res!559440 () Bool)

(assert (=> b!819693 (=> (not res!559440) (not e!455312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45346 (_ BitVec 32)) Bool)

(assert (=> b!819693 (= res!559440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819694 () Bool)

(assert (=> b!819694 (= e!455315 (and e!455313 mapRes!23488))))

(declare-fun condMapEmpty!23488 () Bool)

(declare-fun mapDefault!23488 () ValueCell!6880)

