; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94930 () Bool)

(assert start!94930)

(declare-fun b_free!22099 () Bool)

(declare-fun b_next!22099 () Bool)

(assert (=> start!94930 (= b_free!22099 (not b_next!22099))))

(declare-fun tp!77763 () Bool)

(declare-fun b_and!34971 () Bool)

(assert (=> start!94930 (= tp!77763 b_and!34971)))

(declare-fun mapIsEmpty!40576 () Bool)

(declare-fun mapRes!40576 () Bool)

(assert (=> mapIsEmpty!40576 mapRes!40576))

(declare-fun b!1072935 () Bool)

(declare-fun res!715743 () Bool)

(declare-fun e!612948 () Bool)

(assert (=> b!1072935 (=> (not res!715743) (not e!612948))))

(declare-datatypes ((array!68746 0))(
  ( (array!68747 (arr!33063 (Array (_ BitVec 32) (_ BitVec 64))) (size!33600 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68746)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68746 (_ BitVec 32)) Bool)

(assert (=> b!1072935 (= res!715743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072936 () Bool)

(declare-fun e!612952 () Bool)

(declare-fun tp_is_empty!25909 () Bool)

(assert (=> b!1072936 (= e!612952 tp_is_empty!25909)))

(declare-fun b!1072937 () Bool)

(declare-fun res!715742 () Bool)

(assert (=> b!1072937 (=> (not res!715742) (not e!612948))))

(declare-datatypes ((V!39681 0))(
  ( (V!39682 (val!13005 Int)) )
))
(declare-datatypes ((ValueCell!12251 0))(
  ( (ValueCellFull!12251 (v!15624 V!39681)) (EmptyCell!12251) )
))
(declare-datatypes ((array!68748 0))(
  ( (array!68749 (arr!33064 (Array (_ BitVec 32) ValueCell!12251)) (size!33601 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68748)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072937 (= res!715742 (and (= (size!33601 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33600 _keys!1163) (size!33601 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072938 () Bool)

(declare-fun e!612951 () Bool)

(assert (=> b!1072938 (= e!612951 tp_is_empty!25909)))

(declare-fun b!1072939 () Bool)

(declare-fun res!715741 () Bool)

(assert (=> b!1072939 (=> (not res!715741) (not e!612948))))

(declare-datatypes ((List!23207 0))(
  ( (Nil!23204) (Cons!23203 (h!24412 (_ BitVec 64)) (t!32551 List!23207)) )
))
(declare-fun arrayNoDuplicates!0 (array!68746 (_ BitVec 32) List!23207) Bool)

(assert (=> b!1072939 (= res!715741 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23204))))

(declare-fun res!715740 () Bool)

(assert (=> start!94930 (=> (not res!715740) (not e!612948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94930 (= res!715740 (validMask!0 mask!1515))))

(assert (=> start!94930 e!612948))

(assert (=> start!94930 true))

(assert (=> start!94930 tp_is_empty!25909))

(declare-fun e!612949 () Bool)

(declare-fun array_inv!25414 (array!68748) Bool)

(assert (=> start!94930 (and (array_inv!25414 _values!955) e!612949)))

(assert (=> start!94930 tp!77763))

(declare-fun array_inv!25415 (array!68746) Bool)

(assert (=> start!94930 (array_inv!25415 _keys!1163)))

(declare-fun b!1072940 () Bool)

(assert (=> b!1072940 (= e!612949 (and e!612952 mapRes!40576))))

(declare-fun condMapEmpty!40576 () Bool)

(declare-fun mapDefault!40576 () ValueCell!12251)

