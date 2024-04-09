; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71166 () Bool)

(assert start!71166)

(declare-fun b_free!13309 () Bool)

(declare-fun b_next!13309 () Bool)

(assert (=> start!71166 (= b_free!13309 (not b_next!13309))))

(declare-fun tp!46687 () Bool)

(declare-fun b_and!22253 () Bool)

(assert (=> start!71166 (= tp!46687 b_and!22253)))

(declare-datatypes ((V!25027 0))(
  ( (V!25028 (val!7557 Int)) )
))
(declare-datatypes ((tuple2!10016 0))(
  ( (tuple2!10017 (_1!5018 (_ BitVec 64)) (_2!5018 V!25027)) )
))
(declare-fun lt!373730 () tuple2!10016)

(declare-datatypes ((List!15857 0))(
  ( (Nil!15854) (Cons!15853 (h!16982 tuple2!10016) (t!22212 List!15857)) )
))
(declare-datatypes ((ListLongMap!8853 0))(
  ( (ListLongMap!8854 (toList!4442 List!15857)) )
))
(declare-fun lt!373729 () ListLongMap!8853)

(declare-fun e!460038 () Bool)

(declare-fun lt!373727 () tuple2!10016)

(declare-fun lt!373721 () ListLongMap!8853)

(declare-fun b!826145 () Bool)

(declare-fun +!1903 (ListLongMap!8853 tuple2!10016) ListLongMap!8853)

(assert (=> b!826145 (= e!460038 (= lt!373721 (+!1903 (+!1903 lt!373729 lt!373727) lt!373730)))))

(declare-fun mapNonEmpty!24154 () Bool)

(declare-fun mapRes!24154 () Bool)

(declare-fun tp!46686 () Bool)

(declare-fun e!460037 () Bool)

(assert (=> mapNonEmpty!24154 (= mapRes!24154 (and tp!46686 e!460037))))

(declare-datatypes ((ValueCell!7094 0))(
  ( (ValueCellFull!7094 (v!9987 V!25027)) (EmptyCell!7094) )
))
(declare-datatypes ((array!46180 0))(
  ( (array!46181 (arr!22131 (Array (_ BitVec 32) ValueCell!7094)) (size!22552 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46180)

(declare-fun mapValue!24154 () ValueCell!7094)

(declare-fun mapKey!24154 () (_ BitVec 32))

(declare-fun mapRest!24154 () (Array (_ BitVec 32) ValueCell!7094))

(assert (=> mapNonEmpty!24154 (= (arr!22131 _values!788) (store mapRest!24154 mapKey!24154 mapValue!24154))))

(declare-fun b!826146 () Bool)

(declare-fun res!563274 () Bool)

(declare-fun e!460041 () Bool)

(assert (=> b!826146 (=> (not res!563274) (not e!460041))))

(declare-datatypes ((array!46182 0))(
  ( (array!46183 (arr!22132 (Array (_ BitVec 32) (_ BitVec 64))) (size!22553 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46182)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!826146 (= res!563274 (and (= (size!22552 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22553 _keys!976) (size!22552 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826147 () Bool)

(declare-fun res!563276 () Bool)

(assert (=> b!826147 (=> (not res!563276) (not e!460041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46182 (_ BitVec 32)) Bool)

(assert (=> b!826147 (= res!563276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24154 () Bool)

(assert (=> mapIsEmpty!24154 mapRes!24154))

(declare-fun b!826148 () Bool)

(declare-fun e!460035 () Bool)

(declare-fun e!460039 () Bool)

(assert (=> b!826148 (= e!460035 (and e!460039 mapRes!24154))))

(declare-fun condMapEmpty!24154 () Bool)

(declare-fun mapDefault!24154 () ValueCell!7094)

