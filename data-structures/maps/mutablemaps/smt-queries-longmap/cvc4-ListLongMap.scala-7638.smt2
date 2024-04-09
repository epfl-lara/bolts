; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96188 () Bool)

(assert start!96188)

(declare-fun b_free!22805 () Bool)

(declare-fun b_next!22805 () Bool)

(assert (=> start!96188 (= b_free!22805 (not b_next!22805))))

(declare-fun tp!80265 () Bool)

(declare-fun b_and!36303 () Bool)

(assert (=> start!96188 (= tp!80265 b_and!36303)))

(declare-fun b!1091409 () Bool)

(declare-fun res!728278 () Bool)

(declare-fun e!623361 () Bool)

(assert (=> b!1091409 (=> (not res!728278) (not e!623361))))

(declare-datatypes ((array!70498 0))(
  ( (array!70499 (arr!33919 (Array (_ BitVec 32) (_ BitVec 64))) (size!34456 (_ BitVec 32))) )
))
(declare-fun lt!487419 () array!70498)

(declare-datatypes ((List!23831 0))(
  ( (Nil!23828) (Cons!23827 (h!25036 (_ BitVec 64)) (t!33701 List!23831)) )
))
(declare-fun arrayNoDuplicates!0 (array!70498 (_ BitVec 32) List!23831) Bool)

(assert (=> b!1091409 (= res!728278 (arrayNoDuplicates!0 lt!487419 #b00000000000000000000000000000000 Nil!23828))))

(declare-fun b!1091410 () Bool)

(declare-fun e!623364 () Bool)

(declare-fun e!623368 () Bool)

(declare-fun mapRes!41965 () Bool)

(assert (=> b!1091410 (= e!623364 (and e!623368 mapRes!41965))))

(declare-fun condMapEmpty!41965 () Bool)

(declare-datatypes ((V!40869 0))(
  ( (V!40870 (val!13460 Int)) )
))
(declare-datatypes ((ValueCell!12694 0))(
  ( (ValueCellFull!12694 (v!16082 V!40869)) (EmptyCell!12694) )
))
(declare-datatypes ((array!70500 0))(
  ( (array!70501 (arr!33920 (Array (_ BitVec 32) ValueCell!12694)) (size!34457 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70500)

(declare-fun mapDefault!41965 () ValueCell!12694)

