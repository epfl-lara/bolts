; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94852 () Bool)

(assert start!94852)

(declare-fun b_free!22045 () Bool)

(declare-fun b_next!22045 () Bool)

(assert (=> start!94852 (= b_free!22045 (not b_next!22045))))

(declare-fun tp!77598 () Bool)

(declare-fun b_and!34905 () Bool)

(assert (=> start!94852 (= tp!77598 b_and!34905)))

(declare-fun e!612304 () Bool)

(declare-fun b!1072054 () Bool)

(declare-datatypes ((V!39609 0))(
  ( (V!39610 (val!12978 Int)) )
))
(declare-datatypes ((tuple2!16586 0))(
  ( (tuple2!16587 (_1!8303 (_ BitVec 64)) (_2!8303 V!39609)) )
))
(declare-datatypes ((List!23167 0))(
  ( (Nil!23164) (Cons!23163 (h!24372 tuple2!16586) (t!32509 List!23167)) )
))
(declare-datatypes ((ListLongMap!14567 0))(
  ( (ListLongMap!14568 (toList!7299 List!23167)) )
))
(declare-fun lt!474899 () ListLongMap!14567)

(declare-fun lt!474902 () ListLongMap!14567)

(declare-fun lt!474905 () tuple2!16586)

(declare-fun +!3154 (ListLongMap!14567 tuple2!16586) ListLongMap!14567)

(assert (=> b!1072054 (= e!612304 (= lt!474902 (+!3154 lt!474899 lt!474905)))))

(declare-fun b!1072055 () Bool)

(declare-fun e!612300 () Bool)

(declare-fun tp_is_empty!25855 () Bool)

(assert (=> b!1072055 (= e!612300 tp_is_empty!25855)))

(declare-fun b!1072056 () Bool)

(declare-fun res!715204 () Bool)

(declare-fun e!612302 () Bool)

(assert (=> b!1072056 (=> (not res!715204) (not e!612302))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12224 0))(
  ( (ValueCellFull!12224 (v!15596 V!39609)) (EmptyCell!12224) )
))
(declare-datatypes ((array!68640 0))(
  ( (array!68641 (arr!33011 (Array (_ BitVec 32) ValueCell!12224)) (size!33548 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68640)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68642 0))(
  ( (array!68643 (arr!33012 (Array (_ BitVec 32) (_ BitVec 64))) (size!33549 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68642)

(assert (=> b!1072056 (= res!715204 (and (= (size!33548 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33549 _keys!1163) (size!33548 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072057 () Bool)

(declare-fun e!612299 () Bool)

(declare-fun mapRes!40492 () Bool)

(assert (=> b!1072057 (= e!612299 (and e!612300 mapRes!40492))))

(declare-fun condMapEmpty!40492 () Bool)

(declare-fun mapDefault!40492 () ValueCell!12224)

