; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96920 () Bool)

(assert start!96920)

(declare-fun b_free!23201 () Bool)

(declare-fun b_next!23201 () Bool)

(assert (=> start!96920 (= b_free!23201 (not b_next!23201))))

(declare-fun tp!81561 () Bool)

(declare-fun b_and!37223 () Bool)

(assert (=> start!96920 (= tp!81561 b_and!37223)))

(declare-fun b!1102226 () Bool)

(declare-fun res!735569 () Bool)

(declare-fun e!629159 () Bool)

(assert (=> b!1102226 (=> (not res!735569) (not e!629159))))

(declare-datatypes ((array!71376 0))(
  ( (array!71377 (arr!34346 (Array (_ BitVec 32) (_ BitVec 64))) (size!34883 (_ BitVec 32))) )
))
(declare-fun lt!494481 () array!71376)

(declare-datatypes ((List!24145 0))(
  ( (Nil!24142) (Cons!24141 (h!25350 (_ BitVec 64)) (t!34399 List!24145)) )
))
(declare-fun arrayNoDuplicates!0 (array!71376 (_ BitVec 32) List!24145) Bool)

(assert (=> b!1102226 (= res!735569 (arrayNoDuplicates!0 lt!494481 #b00000000000000000000000000000000 Nil!24142))))

(declare-fun b!1102227 () Bool)

(declare-fun res!735565 () Bool)

(declare-fun e!629160 () Bool)

(assert (=> b!1102227 (=> (not res!735565) (not e!629160))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!71376)

(assert (=> b!1102227 (= res!735565 (= (select (arr!34346 _keys!1070) i!650) k!904))))

(declare-fun b!1102228 () Bool)

(declare-fun e!629158 () Bool)

(declare-fun e!629161 () Bool)

(declare-fun mapRes!42667 () Bool)

(assert (=> b!1102228 (= e!629158 (and e!629161 mapRes!42667))))

(declare-fun condMapEmpty!42667 () Bool)

(declare-datatypes ((V!41461 0))(
  ( (V!41462 (val!13682 Int)) )
))
(declare-datatypes ((ValueCell!12916 0))(
  ( (ValueCellFull!12916 (v!16314 V!41461)) (EmptyCell!12916) )
))
(declare-datatypes ((array!71378 0))(
  ( (array!71379 (arr!34347 (Array (_ BitVec 32) ValueCell!12916)) (size!34884 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71378)

(declare-fun mapDefault!42667 () ValueCell!12916)

