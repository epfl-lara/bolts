; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84336 () Bool)

(assert start!84336)

(declare-fun b!986119 () Bool)

(declare-fun e!555994 () Bool)

(declare-fun e!555993 () Bool)

(declare-fun mapRes!36695 () Bool)

(assert (=> b!986119 (= e!555994 (and e!555993 mapRes!36695))))

(declare-fun condMapEmpty!36695 () Bool)

(declare-datatypes ((V!35797 0))(
  ( (V!35798 (val!11606 Int)) )
))
(declare-datatypes ((ValueCell!11074 0))(
  ( (ValueCellFull!11074 (v!14168 V!35797)) (EmptyCell!11074) )
))
(declare-datatypes ((array!62177 0))(
  ( (array!62178 (arr!29942 (Array (_ BitVec 32) ValueCell!11074)) (size!30422 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62177)

(declare-fun mapDefault!36695 () ValueCell!11074)

