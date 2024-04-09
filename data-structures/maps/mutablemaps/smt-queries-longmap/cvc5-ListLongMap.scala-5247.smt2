; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70606 () Bool)

(assert start!70606)

(declare-fun b_free!12889 () Bool)

(declare-fun b_next!12889 () Bool)

(assert (=> start!70606 (= b_free!12889 (not b_next!12889))))

(declare-fun tp!45403 () Bool)

(declare-fun b_and!21749 () Bool)

(assert (=> start!70606 (= tp!45403 b_and!21749)))

(declare-fun b!819794 () Bool)

(declare-fun e!455393 () Bool)

(declare-fun tp_is_empty!14599 () Bool)

(assert (=> b!819794 (= e!455393 tp_is_empty!14599)))

(declare-fun b!819795 () Bool)

(declare-fun e!455398 () Bool)

(declare-fun e!455394 () Bool)

(assert (=> b!819795 (= e!455398 (not e!455394))))

(declare-fun res!559510 () Bool)

(assert (=> b!819795 (=> res!559510 e!455394)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819795 (= res!559510 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24467 0))(
  ( (V!24468 (val!7347 Int)) )
))
(declare-datatypes ((tuple2!9684 0))(
  ( (tuple2!9685 (_1!4852 (_ BitVec 64)) (_2!4852 V!24467)) )
))
(declare-datatypes ((List!15542 0))(
  ( (Nil!15539) (Cons!15538 (h!16667 tuple2!9684) (t!21881 List!15542)) )
))
(declare-datatypes ((ListLongMap!8521 0))(
  ( (ListLongMap!8522 (toList!4276 List!15542)) )
))
(declare-fun lt!368223 () ListLongMap!8521)

(declare-fun lt!368228 () ListLongMap!8521)

(assert (=> b!819795 (= lt!368223 lt!368228)))

(declare-fun zeroValueBefore!34 () V!24467)

(declare-datatypes ((array!45362 0))(
  ( (array!45363 (arr!21730 (Array (_ BitVec 32) (_ BitVec 64))) (size!22151 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45362)

(declare-fun zeroValueAfter!34 () V!24467)

(declare-fun minValue!754 () V!24467)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28003 0))(
  ( (Unit!28004) )
))
(declare-fun lt!368224 () Unit!28003)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!6884 0))(
  ( (ValueCellFull!6884 (v!9773 V!24467)) (EmptyCell!6884) )
))
(declare-datatypes ((array!45364 0))(
  ( (array!45365 (arr!21731 (Array (_ BitVec 32) ValueCell!6884)) (size!22152 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45364)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!429 (array!45362 array!45364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24467 V!24467 V!24467 V!24467 (_ BitVec 32) Int) Unit!28003)

(assert (=> b!819795 (= lt!368224 (lemmaNoChangeToArrayThenSameMapNoExtras!429 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2313 (array!45362 array!45364 (_ BitVec 32) (_ BitVec 32) V!24467 V!24467 (_ BitVec 32) Int) ListLongMap!8521)

(assert (=> b!819795 (= lt!368228 (getCurrentListMapNoExtraKeys!2313 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819795 (= lt!368223 (getCurrentListMapNoExtraKeys!2313 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819796 () Bool)

(declare-fun e!455397 () Bool)

(assert (=> b!819796 (= e!455397 tp_is_empty!14599)))

(declare-fun res!559512 () Bool)

(assert (=> start!70606 (=> (not res!559512) (not e!455398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70606 (= res!559512 (validMask!0 mask!1312))))

(assert (=> start!70606 e!455398))

(assert (=> start!70606 tp_is_empty!14599))

(declare-fun array_inv!17339 (array!45362) Bool)

(assert (=> start!70606 (array_inv!17339 _keys!976)))

(assert (=> start!70606 true))

(declare-fun e!455395 () Bool)

(declare-fun array_inv!17340 (array!45364) Bool)

(assert (=> start!70606 (and (array_inv!17340 _values!788) e!455395)))

(assert (=> start!70606 tp!45403))

(declare-fun mapNonEmpty!23500 () Bool)

(declare-fun mapRes!23500 () Bool)

(declare-fun tp!45402 () Bool)

(assert (=> mapNonEmpty!23500 (= mapRes!23500 (and tp!45402 e!455393))))

(declare-fun mapValue!23500 () ValueCell!6884)

(declare-fun mapRest!23500 () (Array (_ BitVec 32) ValueCell!6884))

(declare-fun mapKey!23500 () (_ BitVec 32))

(assert (=> mapNonEmpty!23500 (= (arr!21731 _values!788) (store mapRest!23500 mapKey!23500 mapValue!23500))))

(declare-fun b!819797 () Bool)

(assert (=> b!819797 (= e!455395 (and e!455397 mapRes!23500))))

(declare-fun condMapEmpty!23500 () Bool)

(declare-fun mapDefault!23500 () ValueCell!6884)

