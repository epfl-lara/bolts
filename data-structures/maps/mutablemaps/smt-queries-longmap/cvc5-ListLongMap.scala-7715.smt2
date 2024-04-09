; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96958 () Bool)

(assert start!96958)

(declare-fun b_free!23215 () Bool)

(declare-fun b_next!23215 () Bool)

(assert (=> start!96958 (= b_free!23215 (not b_next!23215))))

(declare-fun tp!81606 () Bool)

(declare-fun b_and!37265 () Bool)

(assert (=> start!96958 (= tp!81606 b_and!37265)))

(declare-fun b!1102685 () Bool)

(declare-fun res!735843 () Bool)

(declare-fun e!629416 () Bool)

(assert (=> b!1102685 (=> (not res!735843) (not e!629416))))

(declare-datatypes ((array!71406 0))(
  ( (array!71407 (arr!34360 (Array (_ BitVec 32) (_ BitVec 64))) (size!34897 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71406)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71406 (_ BitVec 32)) Bool)

(assert (=> b!1102685 (= res!735843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102686 () Bool)

(declare-fun res!735839 () Bool)

(assert (=> b!1102686 (=> (not res!735839) (not e!629416))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102686 (= res!735839 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!42691 () Bool)

(declare-fun mapRes!42691 () Bool)

(assert (=> mapIsEmpty!42691 mapRes!42691))

(declare-fun b!1102687 () Bool)

(declare-fun res!735836 () Bool)

(assert (=> b!1102687 (=> (not res!735836) (not e!629416))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41481 0))(
  ( (V!41482 (val!13689 Int)) )
))
(declare-datatypes ((ValueCell!12923 0))(
  ( (ValueCellFull!12923 (v!16321 V!41481)) (EmptyCell!12923) )
))
(declare-datatypes ((array!71408 0))(
  ( (array!71409 (arr!34361 (Array (_ BitVec 32) ValueCell!12923)) (size!34898 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71408)

(assert (=> b!1102687 (= res!735836 (and (= (size!34898 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34897 _keys!1070) (size!34898 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102688 () Bool)

(declare-fun e!629418 () Bool)

(declare-fun tp_is_empty!27265 () Bool)

(assert (=> b!1102688 (= e!629418 tp_is_empty!27265)))

(declare-fun b!1102689 () Bool)

(declare-fun e!629412 () Bool)

(assert (=> b!1102689 (= e!629412 (and e!629418 mapRes!42691))))

(declare-fun condMapEmpty!42691 () Bool)

(declare-fun mapDefault!42691 () ValueCell!12923)

