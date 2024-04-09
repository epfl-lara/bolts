; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71316 () Bool)

(assert start!71316)

(declare-fun b_free!13427 () Bool)

(declare-fun b_next!13427 () Bool)

(assert (=> start!71316 (= b_free!13427 (not b_next!13427))))

(declare-fun tp!47046 () Bool)

(declare-fun b_and!22391 () Bool)

(assert (=> start!71316 (= tp!47046 b_and!22391)))

(declare-fun b!827866 () Bool)

(declare-fun res!564310 () Bool)

(declare-fun e!461297 () Bool)

(assert (=> b!827866 (=> (not res!564310) (not e!461297))))

(declare-datatypes ((array!46410 0))(
  ( (array!46411 (arr!22244 (Array (_ BitVec 32) (_ BitVec 64))) (size!22665 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46410)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46410 (_ BitVec 32)) Bool)

(assert (=> b!827866 (= res!564310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-datatypes ((V!25183 0))(
  ( (V!25184 (val!7616 Int)) )
))
(declare-fun zeroValueBefore!34 () V!25183)

(declare-fun b!827867 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!25183)

(declare-fun minValue!754 () V!25183)

(declare-datatypes ((ValueCell!7153 0))(
  ( (ValueCellFull!7153 (v!10047 V!25183)) (EmptyCell!7153) )
))
(declare-datatypes ((array!46412 0))(
  ( (array!46413 (arr!22245 (Array (_ BitVec 32) ValueCell!7153)) (size!22666 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46412)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun e!461300 () Bool)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10114 0))(
  ( (tuple2!10115 (_1!5067 (_ BitVec 64)) (_2!5067 V!25183)) )
))
(declare-datatypes ((List!15951 0))(
  ( (Nil!15948) (Cons!15947 (h!17076 tuple2!10114) (t!22310 List!15951)) )
))
(declare-datatypes ((ListLongMap!8951 0))(
  ( (ListLongMap!8952 (toList!4491 List!15951)) )
))
(declare-fun +!1924 (ListLongMap!8951 tuple2!10114) ListLongMap!8951)

(declare-fun getCurrentListMap!2566 (array!46410 array!46412 (_ BitVec 32) (_ BitVec 32) V!25183 V!25183 (_ BitVec 32) Int) ListLongMap!8951)

(assert (=> b!827867 (= e!461300 (= (+!1924 (getCurrentListMap!2566 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!10115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (getCurrentListMap!2566 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796)))))

(declare-fun b!827868 () Bool)

(declare-fun res!564308 () Bool)

(assert (=> b!827868 (=> (not res!564308) (not e!461297))))

(declare-datatypes ((List!15952 0))(
  ( (Nil!15949) (Cons!15948 (h!17077 (_ BitVec 64)) (t!22311 List!15952)) )
))
(declare-fun arrayNoDuplicates!0 (array!46410 (_ BitVec 32) List!15952) Bool)

(assert (=> b!827868 (= res!564308 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15949))))

(declare-fun b!827869 () Bool)

(declare-fun e!461296 () Bool)

(declare-fun e!461298 () Bool)

(declare-fun mapRes!24337 () Bool)

(assert (=> b!827869 (= e!461296 (and e!461298 mapRes!24337))))

(declare-fun condMapEmpty!24337 () Bool)

(declare-fun mapDefault!24337 () ValueCell!7153)

