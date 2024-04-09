; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71280 () Bool)

(assert start!71280)

(declare-fun b_free!13403 () Bool)

(declare-fun b_next!13403 () Bool)

(assert (=> start!71280 (= b_free!13403 (not b_next!13403))))

(declare-fun tp!46971 () Bool)

(declare-fun b_and!22359 () Bool)

(assert (=> start!71280 (= tp!46971 b_and!22359)))

(declare-fun b!827521 () Bool)

(declare-fun res!564125 () Bool)

(declare-fun e!461056 () Bool)

(assert (=> b!827521 (=> (not res!564125) (not e!461056))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25151 0))(
  ( (V!25152 (val!7604 Int)) )
))
(declare-datatypes ((ValueCell!7141 0))(
  ( (ValueCellFull!7141 (v!10035 V!25151)) (EmptyCell!7141) )
))
(declare-datatypes ((array!46360 0))(
  ( (array!46361 (arr!22220 (Array (_ BitVec 32) ValueCell!7141)) (size!22641 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46360)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((array!46362 0))(
  ( (array!46363 (arr!22221 (Array (_ BitVec 32) (_ BitVec 64))) (size!22642 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46362)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827521 (= res!564125 (and (= (size!22641 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22642 _keys!976) (size!22641 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827522 () Bool)

(assert (=> b!827522 (= e!461056 false)))

(declare-fun zeroValueAfter!34 () V!25151)

(declare-fun minValue!754 () V!25151)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10092 0))(
  ( (tuple2!10093 (_1!5056 (_ BitVec 64)) (_2!5056 V!25151)) )
))
(declare-datatypes ((List!15930 0))(
  ( (Nil!15927) (Cons!15926 (h!17055 tuple2!10092) (t!22287 List!15930)) )
))
(declare-datatypes ((ListLongMap!8929 0))(
  ( (ListLongMap!8930 (toList!4480 List!15930)) )
))
(declare-fun lt!374919 () ListLongMap!8929)

(declare-fun getCurrentListMapNoExtraKeys!2487 (array!46362 array!46360 (_ BitVec 32) (_ BitVec 32) V!25151 V!25151 (_ BitVec 32) Int) ListLongMap!8929)

(assert (=> b!827522 (= lt!374919 (getCurrentListMapNoExtraKeys!2487 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25151)

(declare-fun lt!374920 () ListLongMap!8929)

(assert (=> b!827522 (= lt!374920 (getCurrentListMapNoExtraKeys!2487 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827523 () Bool)

(declare-fun e!461054 () Bool)

(declare-fun e!461052 () Bool)

(declare-fun mapRes!24298 () Bool)

(assert (=> b!827523 (= e!461054 (and e!461052 mapRes!24298))))

(declare-fun condMapEmpty!24298 () Bool)

(declare-fun mapDefault!24298 () ValueCell!7141)

