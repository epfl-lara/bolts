; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110680 () Bool)

(assert start!110680)

(declare-fun b_free!29479 () Bool)

(declare-fun b_next!29479 () Bool)

(assert (=> start!110680 (= b_free!29479 (not b_next!29479))))

(declare-fun tp!103760 () Bool)

(declare-fun b_and!47697 () Bool)

(assert (=> start!110680 (= tp!103760 b_and!47697)))

(declare-fun b!1309110 () Bool)

(declare-fun res!869122 () Bool)

(declare-fun e!746928 () Bool)

(assert (=> b!1309110 (=> (not res!869122) (not e!746928))))

(declare-datatypes ((array!87381 0))(
  ( (array!87382 (arr!42166 (Array (_ BitVec 32) (_ BitVec 64))) (size!42717 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87381)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52049 0))(
  ( (V!52050 (val!17679 Int)) )
))
(declare-datatypes ((ValueCell!16706 0))(
  ( (ValueCellFull!16706 (v!20304 V!52049)) (EmptyCell!16706) )
))
(declare-datatypes ((array!87383 0))(
  ( (array!87384 (arr!42167 (Array (_ BitVec 32) ValueCell!16706)) (size!42718 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87383)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309110 (= res!869122 (and (= (size!42718 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42717 _keys!1628) (size!42718 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309111 () Bool)

(declare-fun e!746929 () Bool)

(declare-fun e!746927 () Bool)

(declare-fun mapRes!54442 () Bool)

(assert (=> b!1309111 (= e!746929 (and e!746927 mapRes!54442))))

(declare-fun condMapEmpty!54442 () Bool)

(declare-fun mapDefault!54442 () ValueCell!16706)

