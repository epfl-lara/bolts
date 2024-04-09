; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96230 () Bool)

(assert start!96230)

(declare-fun b_free!22847 () Bool)

(declare-fun b_next!22847 () Bool)

(assert (=> start!96230 (= b_free!22847 (not b_next!22847))))

(declare-fun tp!80390 () Bool)

(declare-fun b_and!36387 () Bool)

(assert (=> start!96230 (= tp!80390 b_and!36387)))

(declare-fun b!1092317 () Bool)

(declare-fun res!728955 () Bool)

(declare-fun e!623853 () Bool)

(assert (=> b!1092317 (=> (not res!728955) (not e!623853))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70578 0))(
  ( (array!70579 (arr!33959 (Array (_ BitVec 32) (_ BitVec 64))) (size!34496 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70578)

(assert (=> b!1092317 (= res!728955 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34496 _keys!1070))))))

(declare-fun b!1092318 () Bool)

(declare-fun e!623854 () Bool)

(assert (=> b!1092318 (= e!623853 e!623854)))

(declare-fun res!728959 () Bool)

(assert (=> b!1092318 (=> (not res!728959) (not e!623854))))

(declare-fun lt!488205 () array!70578)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70578 (_ BitVec 32)) Bool)

(assert (=> b!1092318 (= res!728959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488205 mask!1414))))

(assert (=> b!1092318 (= lt!488205 (array!70579 (store (arr!33959 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34496 _keys!1070)))))

(declare-fun b!1092319 () Bool)

(declare-fun e!623851 () Bool)

(declare-fun e!623850 () Bool)

(declare-fun mapRes!42028 () Bool)

(assert (=> b!1092319 (= e!623851 (and e!623850 mapRes!42028))))

(declare-fun condMapEmpty!42028 () Bool)

(declare-datatypes ((V!40925 0))(
  ( (V!40926 (val!13481 Int)) )
))
(declare-datatypes ((ValueCell!12715 0))(
  ( (ValueCellFull!12715 (v!16103 V!40925)) (EmptyCell!12715) )
))
(declare-datatypes ((array!70580 0))(
  ( (array!70581 (arr!33960 (Array (_ BitVec 32) ValueCell!12715)) (size!34497 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70580)

(declare-fun mapDefault!42028 () ValueCell!12715)

