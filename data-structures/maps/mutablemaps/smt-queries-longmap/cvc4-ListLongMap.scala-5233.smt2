; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70506 () Bool)

(assert start!70506)

(declare-fun b_free!12809 () Bool)

(declare-fun b_next!12809 () Bool)

(assert (=> start!70506 (= b_free!12809 (not b_next!12809))))

(declare-fun tp!45159 () Bool)

(declare-fun b_and!21657 () Bool)

(assert (=> start!70506 (= tp!45159 b_and!21657)))

(declare-fun b!818520 () Bool)

(declare-fun res!558701 () Bool)

(declare-fun e!454433 () Bool)

(assert (=> b!818520 (=> (not res!558701) (not e!454433))))

(declare-datatypes ((array!45210 0))(
  ( (array!45211 (arr!21655 (Array (_ BitVec 32) (_ BitVec 64))) (size!22076 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45210)

(declare-datatypes ((List!15481 0))(
  ( (Nil!15478) (Cons!15477 (h!16606 (_ BitVec 64)) (t!21818 List!15481)) )
))
(declare-fun arrayNoDuplicates!0 (array!45210 (_ BitVec 32) List!15481) Bool)

(assert (=> b!818520 (= res!558701 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15478))))

(declare-datatypes ((V!24359 0))(
  ( (V!24360 (val!7307 Int)) )
))
(declare-fun zeroValueAfter!34 () V!24359)

(declare-fun b!818521 () Bool)

(declare-fun e!454432 () Bool)

(declare-datatypes ((tuple2!9616 0))(
  ( (tuple2!9617 (_1!4818 (_ BitVec 64)) (_2!4818 V!24359)) )
))
(declare-datatypes ((List!15482 0))(
  ( (Nil!15479) (Cons!15478 (h!16607 tuple2!9616) (t!21819 List!15482)) )
))
(declare-datatypes ((ListLongMap!8453 0))(
  ( (ListLongMap!8454 (toList!4242 List!15482)) )
))
(declare-fun lt!366872 () ListLongMap!8453)

(declare-fun lt!366874 () ListLongMap!8453)

(declare-fun +!1787 (ListLongMap!8453 tuple2!9616) ListLongMap!8453)

(assert (=> b!818521 (= e!454432 (= lt!366872 (+!1787 lt!366874 (tuple2!9617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!818522 () Bool)

(declare-fun res!558699 () Bool)

(assert (=> b!818522 (=> (not res!558699) (not e!454433))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6844 0))(
  ( (ValueCellFull!6844 (v!9732 V!24359)) (EmptyCell!6844) )
))
(declare-datatypes ((array!45212 0))(
  ( (array!45213 (arr!21656 (Array (_ BitVec 32) ValueCell!6844)) (size!22077 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45212)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818522 (= res!558699 (and (= (size!22077 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22076 _keys!976) (size!22077 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23377 () Bool)

(declare-fun mapRes!23377 () Bool)

(assert (=> mapIsEmpty!23377 mapRes!23377))

(declare-fun b!818523 () Bool)

(declare-fun e!454429 () Bool)

(declare-fun tp_is_empty!14519 () Bool)

(assert (=> b!818523 (= e!454429 tp_is_empty!14519)))

(declare-fun res!558698 () Bool)

(assert (=> start!70506 (=> (not res!558698) (not e!454433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70506 (= res!558698 (validMask!0 mask!1312))))

(assert (=> start!70506 e!454433))

(assert (=> start!70506 tp_is_empty!14519))

(declare-fun array_inv!17285 (array!45210) Bool)

(assert (=> start!70506 (array_inv!17285 _keys!976)))

(assert (=> start!70506 true))

(declare-fun e!454431 () Bool)

(declare-fun array_inv!17286 (array!45212) Bool)

(assert (=> start!70506 (and (array_inv!17286 _values!788) e!454431)))

(assert (=> start!70506 tp!45159))

(declare-fun b!818524 () Bool)

(declare-fun e!454430 () Bool)

(assert (=> b!818524 (= e!454430 tp_is_empty!14519)))

(declare-fun mapNonEmpty!23377 () Bool)

(declare-fun tp!45160 () Bool)

(assert (=> mapNonEmpty!23377 (= mapRes!23377 (and tp!45160 e!454430))))

(declare-fun mapRest!23377 () (Array (_ BitVec 32) ValueCell!6844))

(declare-fun mapValue!23377 () ValueCell!6844)

(declare-fun mapKey!23377 () (_ BitVec 32))

(assert (=> mapNonEmpty!23377 (= (arr!21656 _values!788) (store mapRest!23377 mapKey!23377 mapValue!23377))))

(declare-fun b!818525 () Bool)

(declare-fun res!558700 () Bool)

(assert (=> b!818525 (=> (not res!558700) (not e!454433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45210 (_ BitVec 32)) Bool)

(assert (=> b!818525 (= res!558700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818526 () Bool)

(declare-fun e!454435 () Bool)

(assert (=> b!818526 (= e!454433 (not e!454435))))

(declare-fun res!558697 () Bool)

(assert (=> b!818526 (=> res!558697 e!454435)))

(assert (=> b!818526 (= res!558697 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366873 () ListLongMap!8453)

(assert (=> b!818526 (= lt!366873 lt!366874)))

(declare-fun zeroValueBefore!34 () V!24359)

(declare-fun minValue!754 () V!24359)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27933 0))(
  ( (Unit!27934) )
))
(declare-fun lt!366869 () Unit!27933)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!401 (array!45210 array!45212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24359 V!24359 V!24359 V!24359 (_ BitVec 32) Int) Unit!27933)

(assert (=> b!818526 (= lt!366869 (lemmaNoChangeToArrayThenSameMapNoExtras!401 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2285 (array!45210 array!45212 (_ BitVec 32) (_ BitVec 32) V!24359 V!24359 (_ BitVec 32) Int) ListLongMap!8453)

(assert (=> b!818526 (= lt!366874 (getCurrentListMapNoExtraKeys!2285 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818526 (= lt!366873 (getCurrentListMapNoExtraKeys!2285 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818527 () Bool)

(assert (=> b!818527 (= e!454435 true)))

(declare-fun lt!366876 () tuple2!9616)

(declare-fun lt!366871 () tuple2!9616)

(declare-fun lt!366868 () ListLongMap!8453)

(assert (=> b!818527 (= lt!366868 (+!1787 (+!1787 lt!366874 lt!366871) lt!366876))))

(declare-fun lt!366870 () ListLongMap!8453)

(assert (=> b!818527 (= (+!1787 lt!366873 lt!366876) (+!1787 lt!366870 lt!366876))))

(declare-fun lt!366875 () Unit!27933)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!167 (ListLongMap!8453 (_ BitVec 64) V!24359 V!24359) Unit!27933)

(assert (=> b!818527 (= lt!366875 (addSameAsAddTwiceSameKeyDiffValues!167 lt!366873 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818527 (= lt!366876 (tuple2!9617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!818527 e!454432))

(declare-fun res!558696 () Bool)

(assert (=> b!818527 (=> (not res!558696) (not e!454432))))

(declare-fun lt!366877 () ListLongMap!8453)

(assert (=> b!818527 (= res!558696 (= lt!366877 lt!366870))))

(assert (=> b!818527 (= lt!366870 (+!1787 lt!366873 lt!366871))))

(assert (=> b!818527 (= lt!366871 (tuple2!9617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2402 (array!45210 array!45212 (_ BitVec 32) (_ BitVec 32) V!24359 V!24359 (_ BitVec 32) Int) ListLongMap!8453)

(assert (=> b!818527 (= lt!366872 (getCurrentListMap!2402 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818527 (= lt!366877 (getCurrentListMap!2402 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818528 () Bool)

(assert (=> b!818528 (= e!454431 (and e!454429 mapRes!23377))))

(declare-fun condMapEmpty!23377 () Bool)

(declare-fun mapDefault!23377 () ValueCell!6844)

