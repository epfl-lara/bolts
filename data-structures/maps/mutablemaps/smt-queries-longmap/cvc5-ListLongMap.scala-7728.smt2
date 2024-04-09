; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97102 () Bool)

(assert start!97102)

(declare-fun b!1104018 () Bool)

(declare-fun res!736637 () Bool)

(declare-fun e!630243 () Bool)

(assert (=> b!1104018 (=> (not res!736637) (not e!630243))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104018 (= res!736637 (validMask!0 mask!1564))))

(declare-fun b!1104019 () Bool)

(declare-fun e!630245 () Bool)

(declare-fun e!630244 () Bool)

(declare-fun mapRes!42823 () Bool)

(assert (=> b!1104019 (= e!630245 (and e!630244 mapRes!42823))))

(declare-fun condMapEmpty!42823 () Bool)

(declare-datatypes ((V!41585 0))(
  ( (V!41586 (val!13728 Int)) )
))
(declare-datatypes ((ValueCell!12962 0))(
  ( (ValueCellFull!12962 (v!16361 V!41585)) (EmptyCell!12962) )
))
(declare-datatypes ((array!71562 0))(
  ( (array!71563 (arr!34433 (Array (_ BitVec 32) ValueCell!12962)) (size!34970 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71562)

(declare-fun mapDefault!42823 () ValueCell!12962)

