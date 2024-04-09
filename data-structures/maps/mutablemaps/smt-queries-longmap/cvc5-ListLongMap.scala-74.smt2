; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1020 () Bool)

(assert start!1020)

(declare-fun b_free!349 () Bool)

(declare-fun b_next!349 () Bool)

(assert (=> start!1020 (= b_free!349 (not b_next!349))))

(declare-fun tp!1285 () Bool)

(declare-fun b_and!501 () Bool)

(assert (=> start!1020 (= tp!1285 b_and!501)))

(declare-fun mapIsEmpty!620 () Bool)

(declare-fun mapRes!620 () Bool)

(assert (=> mapIsEmpty!620 mapRes!620))

(declare-fun b!8799 () Bool)

(declare-fun res!8147 () Bool)

(declare-fun e!5020 () Bool)

(assert (=> b!8799 (=> (not res!8147) (not e!5020))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8799 (= res!8147 (validKeyInArray!0 k!1278))))

(declare-fun b!8800 () Bool)

(declare-fun e!5021 () Bool)

(declare-fun e!5017 () Bool)

(assert (=> b!8800 (= e!5021 (and e!5017 mapRes!620))))

(declare-fun condMapEmpty!620 () Bool)

(declare-datatypes ((V!747 0))(
  ( (V!748 (val!219 Int)) )
))
(declare-datatypes ((ValueCell!197 0))(
  ( (ValueCellFull!197 (v!1313 V!747)) (EmptyCell!197) )
))
(declare-datatypes ((array!779 0))(
  ( (array!780 (arr!375 (Array (_ BitVec 32) ValueCell!197)) (size!437 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!779)

(declare-fun mapDefault!620 () ValueCell!197)

