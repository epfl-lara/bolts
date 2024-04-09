; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96794 () Bool)

(assert start!96794)

(declare-fun b_free!23153 () Bool)

(declare-fun b_next!23153 () Bool)

(assert (=> start!96794 (= b_free!23153 (not b_next!23153))))

(declare-fun tp!81408 () Bool)

(declare-fun b_and!37085 () Bool)

(assert (=> start!96794 (= tp!81408 b_and!37085)))

(declare-fun b!1100596 () Bool)

(declare-fun e!628225 () Bool)

(declare-fun tp_is_empty!27203 () Bool)

(assert (=> b!1100596 (= e!628225 tp_is_empty!27203)))

(declare-fun b!1100597 () Bool)

(declare-fun res!734536 () Bool)

(declare-fun e!628227 () Bool)

(assert (=> b!1100597 (=> (not res!734536) (not e!628227))))

(declare-datatypes ((array!71274 0))(
  ( (array!71275 (arr!34298 (Array (_ BitVec 32) (_ BitVec 64))) (size!34835 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71274)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71274 (_ BitVec 32)) Bool)

(assert (=> b!1100597 (= res!734536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1100599 () Bool)

(declare-fun e!628231 () Bool)

(declare-fun e!628230 () Bool)

(declare-fun mapRes!42586 () Bool)

(assert (=> b!1100599 (= e!628231 (and e!628230 mapRes!42586))))

(declare-fun condMapEmpty!42586 () Bool)

(declare-datatypes ((V!41397 0))(
  ( (V!41398 (val!13658 Int)) )
))
(declare-datatypes ((ValueCell!12892 0))(
  ( (ValueCellFull!12892 (v!16287 V!41397)) (EmptyCell!12892) )
))
(declare-datatypes ((array!71276 0))(
  ( (array!71277 (arr!34299 (Array (_ BitVec 32) ValueCell!12892)) (size!34836 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71276)

(declare-fun mapDefault!42586 () ValueCell!12892)

