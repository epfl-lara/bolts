; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70616 () Bool)

(assert start!70616)

(declare-fun b_free!12899 () Bool)

(declare-fun b_next!12899 () Bool)

(assert (=> start!70616 (= b_free!12899 (not b_next!12899))))

(declare-fun tp!45433 () Bool)

(declare-fun b_and!21759 () Bool)

(assert (=> start!70616 (= tp!45433 b_and!21759)))

(declare-fun mapIsEmpty!23515 () Bool)

(declare-fun mapRes!23515 () Bool)

(assert (=> mapIsEmpty!23515 mapRes!23515))

(declare-fun b!819929 () Bool)

(declare-fun res!559603 () Bool)

(declare-fun e!455498 () Bool)

(assert (=> b!819929 (=> (not res!559603) (not e!455498))))

(declare-datatypes ((array!45382 0))(
  ( (array!45383 (arr!21740 (Array (_ BitVec 32) (_ BitVec 64))) (size!22161 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45382)

(declare-datatypes ((V!24479 0))(
  ( (V!24480 (val!7352 Int)) )
))
(declare-datatypes ((ValueCell!6889 0))(
  ( (ValueCellFull!6889 (v!9778 V!24479)) (EmptyCell!6889) )
))
(declare-datatypes ((array!45384 0))(
  ( (array!45385 (arr!21741 (Array (_ BitVec 32) ValueCell!6889)) (size!22162 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45384)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819929 (= res!559603 (and (= (size!22162 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22161 _keys!976) (size!22162 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819930 () Bool)

(declare-fun e!455504 () Bool)

(assert (=> b!819930 (= e!455504 true)))

(declare-datatypes ((tuple2!9694 0))(
  ( (tuple2!9695 (_1!4857 (_ BitVec 64)) (_2!4857 V!24479)) )
))
(declare-datatypes ((List!15551 0))(
  ( (Nil!15548) (Cons!15547 (h!16676 tuple2!9694) (t!21890 List!15551)) )
))
(declare-datatypes ((ListLongMap!8531 0))(
  ( (ListLongMap!8532 (toList!4281 List!15551)) )
))
(declare-fun lt!368378 () ListLongMap!8531)

(declare-fun lt!368379 () tuple2!9694)

(declare-fun lt!368376 () ListLongMap!8531)

(declare-fun lt!368380 () tuple2!9694)

(declare-fun +!1822 (ListLongMap!8531 tuple2!9694) ListLongMap!8531)

(assert (=> b!819930 (= lt!368378 (+!1822 (+!1822 lt!368376 lt!368380) lt!368379))))

(declare-fun lt!368375 () ListLongMap!8531)

(declare-fun lt!368374 () ListLongMap!8531)

(assert (=> b!819930 (= (+!1822 lt!368375 lt!368379) (+!1822 lt!368374 lt!368379))))

(declare-datatypes ((Unit!28013 0))(
  ( (Unit!28014) )
))
(declare-fun lt!368377 () Unit!28013)

(declare-fun zeroValueBefore!34 () V!24479)

(declare-fun zeroValueAfter!34 () V!24479)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!198 (ListLongMap!8531 (_ BitVec 64) V!24479 V!24479) Unit!28013)

(assert (=> b!819930 (= lt!368377 (addSameAsAddTwiceSameKeyDiffValues!198 lt!368375 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819930 (= lt!368379 (tuple2!9695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455501 () Bool)

(assert (=> b!819930 e!455501))

(declare-fun res!559600 () Bool)

(assert (=> b!819930 (=> (not res!559600) (not e!455501))))

(declare-fun lt!368381 () ListLongMap!8531)

(assert (=> b!819930 (= res!559600 (= lt!368381 lt!368374))))

(assert (=> b!819930 (= lt!368374 (+!1822 lt!368375 lt!368380))))

(assert (=> b!819930 (= lt!368380 (tuple2!9695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!368373 () ListLongMap!8531)

(declare-fun minValue!754 () V!24479)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2433 (array!45382 array!45384 (_ BitVec 32) (_ BitVec 32) V!24479 V!24479 (_ BitVec 32) Int) ListLongMap!8531)

(assert (=> b!819930 (= lt!368373 (getCurrentListMap!2433 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819930 (= lt!368381 (getCurrentListMap!2433 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819931 () Bool)

(assert (=> b!819931 (= e!455501 (= lt!368373 (+!1822 lt!368376 (tuple2!9695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819932 () Bool)

(declare-fun res!559601 () Bool)

(assert (=> b!819932 (=> (not res!559601) (not e!455498))))

(declare-datatypes ((List!15552 0))(
  ( (Nil!15549) (Cons!15548 (h!16677 (_ BitVec 64)) (t!21891 List!15552)) )
))
(declare-fun arrayNoDuplicates!0 (array!45382 (_ BitVec 32) List!15552) Bool)

(assert (=> b!819932 (= res!559601 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15549))))

(declare-fun res!559598 () Bool)

(assert (=> start!70616 (=> (not res!559598) (not e!455498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70616 (= res!559598 (validMask!0 mask!1312))))

(assert (=> start!70616 e!455498))

(declare-fun tp_is_empty!14609 () Bool)

(assert (=> start!70616 tp_is_empty!14609))

(declare-fun array_inv!17347 (array!45382) Bool)

(assert (=> start!70616 (array_inv!17347 _keys!976)))

(assert (=> start!70616 true))

(declare-fun e!455503 () Bool)

(declare-fun array_inv!17348 (array!45384) Bool)

(assert (=> start!70616 (and (array_inv!17348 _values!788) e!455503)))

(assert (=> start!70616 tp!45433))

(declare-fun b!819933 () Bool)

(declare-fun res!559599 () Bool)

(assert (=> b!819933 (=> (not res!559599) (not e!455498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45382 (_ BitVec 32)) Bool)

(assert (=> b!819933 (= res!559599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819934 () Bool)

(declare-fun e!455502 () Bool)

(assert (=> b!819934 (= e!455502 tp_is_empty!14609)))

(declare-fun b!819935 () Bool)

(declare-fun e!455499 () Bool)

(assert (=> b!819935 (= e!455503 (and e!455499 mapRes!23515))))

(declare-fun condMapEmpty!23515 () Bool)

(declare-fun mapDefault!23515 () ValueCell!6889)

