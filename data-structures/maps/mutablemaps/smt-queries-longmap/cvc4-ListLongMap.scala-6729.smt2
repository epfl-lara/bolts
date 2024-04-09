; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84378 () Bool)

(assert start!84378)

(declare-fun b!986500 () Bool)

(declare-fun e!556307 () Bool)

(declare-fun e!556310 () Bool)

(declare-fun mapRes!36758 () Bool)

(assert (=> b!986500 (= e!556307 (and e!556310 mapRes!36758))))

(declare-fun condMapEmpty!36758 () Bool)

(declare-datatypes ((V!35853 0))(
  ( (V!35854 (val!11627 Int)) )
))
(declare-datatypes ((ValueCell!11095 0))(
  ( (ValueCellFull!11095 (v!14189 V!35853)) (EmptyCell!11095) )
))
(declare-datatypes ((array!62257 0))(
  ( (array!62258 (arr!29982 (Array (_ BitVec 32) ValueCell!11095)) (size!30462 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62257)

(declare-fun mapDefault!36758 () ValueCell!11095)

