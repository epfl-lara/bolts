; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94876 () Bool)

(assert start!94876)

(declare-fun b_free!22069 () Bool)

(declare-fun b_next!22069 () Bool)

(assert (=> start!94876 (= b_free!22069 (not b_next!22069))))

(declare-fun tp!77670 () Bool)

(declare-fun b_and!34929 () Bool)

(assert (=> start!94876 (= tp!77670 b_and!34929)))

(declare-fun b!1072378 () Bool)

(declare-fun e!612551 () Bool)

(declare-fun tp_is_empty!25879 () Bool)

(assert (=> b!1072378 (= e!612551 tp_is_empty!25879)))

(declare-fun b!1072379 () Bool)

(declare-fun res!715424 () Bool)

(declare-fun e!612550 () Bool)

(assert (=> b!1072379 (=> (not res!715424) (not e!612550))))

(declare-datatypes ((array!68686 0))(
  ( (array!68687 (arr!33034 (Array (_ BitVec 32) (_ BitVec 64))) (size!33571 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68686)

(declare-datatypes ((List!23185 0))(
  ( (Nil!23182) (Cons!23181 (h!24390 (_ BitVec 64)) (t!32527 List!23185)) )
))
(declare-fun arrayNoDuplicates!0 (array!68686 (_ BitVec 32) List!23185) Bool)

(assert (=> b!1072379 (= res!715424 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23182))))

(declare-fun b!1072380 () Bool)

(declare-fun e!612552 () Bool)

(declare-fun e!612555 () Bool)

(declare-fun mapRes!40528 () Bool)

(assert (=> b!1072380 (= e!612552 (and e!612555 mapRes!40528))))

(declare-fun condMapEmpty!40528 () Bool)

(declare-datatypes ((V!39641 0))(
  ( (V!39642 (val!12990 Int)) )
))
(declare-datatypes ((ValueCell!12236 0))(
  ( (ValueCellFull!12236 (v!15608 V!39641)) (EmptyCell!12236) )
))
(declare-datatypes ((array!68688 0))(
  ( (array!68689 (arr!33035 (Array (_ BitVec 32) ValueCell!12236)) (size!33572 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68688)

(declare-fun mapDefault!40528 () ValueCell!12236)

