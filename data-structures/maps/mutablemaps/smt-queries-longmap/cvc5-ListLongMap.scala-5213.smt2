; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70334 () Bool)

(assert start!70334)

(declare-fun b_free!12685 () Bool)

(declare-fun b_next!12685 () Bool)

(assert (=> start!70334 (= b_free!12685 (not b_next!12685))))

(declare-fun tp!44779 () Bool)

(declare-fun b_and!21503 () Bool)

(assert (=> start!70334 (= tp!44779 b_and!21503)))

(declare-fun b!816688 () Bool)

(declare-fun e!453130 () Bool)

(declare-fun e!453128 () Bool)

(assert (=> b!816688 (= e!453130 (not e!453128))))

(declare-fun res!557668 () Bool)

(assert (=> b!816688 (=> res!557668 e!453128)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816688 (= res!557668 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24195 0))(
  ( (V!24196 (val!7245 Int)) )
))
(declare-datatypes ((tuple2!9524 0))(
  ( (tuple2!9525 (_1!4772 (_ BitVec 64)) (_2!4772 V!24195)) )
))
(declare-datatypes ((List!15395 0))(
  ( (Nil!15392) (Cons!15391 (h!16520 tuple2!9524) (t!21726 List!15395)) )
))
(declare-datatypes ((ListLongMap!8361 0))(
  ( (ListLongMap!8362 (toList!4196 List!15395)) )
))
(declare-fun lt!365874 () ListLongMap!8361)

(declare-fun lt!365877 () ListLongMap!8361)

(assert (=> b!816688 (= lt!365874 lt!365877)))

(declare-fun zeroValueBefore!34 () V!24195)

(declare-datatypes ((array!44968 0))(
  ( (array!44969 (arr!21537 (Array (_ BitVec 32) (_ BitVec 64))) (size!21958 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44968)

(declare-fun zeroValueAfter!34 () V!24195)

(declare-fun minValue!754 () V!24195)

(declare-datatypes ((ValueCell!6782 0))(
  ( (ValueCellFull!6782 (v!9669 V!24195)) (EmptyCell!6782) )
))
(declare-datatypes ((array!44970 0))(
  ( (array!44971 (arr!21538 (Array (_ BitVec 32) ValueCell!6782)) (size!21959 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44970)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27844 0))(
  ( (Unit!27845) )
))
(declare-fun lt!365876 () Unit!27844)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!358 (array!44968 array!44970 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24195 V!24195 V!24195 V!24195 (_ BitVec 32) Int) Unit!27844)

(assert (=> b!816688 (= lt!365876 (lemmaNoChangeToArrayThenSameMapNoExtras!358 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2242 (array!44968 array!44970 (_ BitVec 32) (_ BitVec 32) V!24195 V!24195 (_ BitVec 32) Int) ListLongMap!8361)

(assert (=> b!816688 (= lt!365877 (getCurrentListMapNoExtraKeys!2242 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816688 (= lt!365874 (getCurrentListMapNoExtraKeys!2242 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816689 () Bool)

(declare-fun e!453131 () Bool)

(declare-fun e!453132 () Bool)

(declare-fun mapRes!23182 () Bool)

(assert (=> b!816689 (= e!453131 (and e!453132 mapRes!23182))))

(declare-fun condMapEmpty!23182 () Bool)

(declare-fun mapDefault!23182 () ValueCell!6782)

