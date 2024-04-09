; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96136 () Bool)

(assert start!96136)

(declare-fun b_free!22753 () Bool)

(declare-fun b_next!22753 () Bool)

(assert (=> start!96136 (= b_free!22753 (not b_next!22753))))

(declare-fun tp!80109 () Bool)

(declare-fun b_and!36199 () Bool)

(assert (=> start!96136 (= tp!80109 b_and!36199)))

(declare-fun b!1090265 () Bool)

(declare-fun e!622739 () Bool)

(declare-fun e!622741 () Bool)

(assert (=> b!1090265 (= e!622739 e!622741)))

(declare-fun res!727422 () Bool)

(assert (=> b!1090265 (=> (not res!727422) (not e!622741))))

(declare-datatypes ((array!70398 0))(
  ( (array!70399 (arr!33869 (Array (_ BitVec 32) (_ BitVec 64))) (size!34406 (_ BitVec 32))) )
))
(declare-fun lt!486413 () array!70398)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70398 (_ BitVec 32)) Bool)

(assert (=> b!1090265 (= res!727422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486413 mask!1414))))

(declare-fun _keys!1070 () array!70398)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090265 (= lt!486413 (array!70399 (store (arr!33869 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34406 _keys!1070)))))

(declare-fun b!1090266 () Bool)

(declare-fun e!622740 () Bool)

(declare-fun e!622738 () Bool)

(declare-fun mapRes!41887 () Bool)

(assert (=> b!1090266 (= e!622740 (and e!622738 mapRes!41887))))

(declare-fun condMapEmpty!41887 () Bool)

(declare-datatypes ((V!40801 0))(
  ( (V!40802 (val!13434 Int)) )
))
(declare-datatypes ((ValueCell!12668 0))(
  ( (ValueCellFull!12668 (v!16056 V!40801)) (EmptyCell!12668) )
))
(declare-datatypes ((array!70400 0))(
  ( (array!70401 (arr!33870 (Array (_ BitVec 32) ValueCell!12668)) (size!34407 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70400)

(declare-fun mapDefault!41887 () ValueCell!12668)

