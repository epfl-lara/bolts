; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107352 () Bool)

(assert start!107352)

(declare-fun b!1271769 () Bool)

(declare-fun e!725346 () Bool)

(declare-fun e!725345 () Bool)

(declare-fun mapRes!51088 () Bool)

(assert (=> b!1271769 (= e!725346 (and e!725345 mapRes!51088))))

(declare-fun condMapEmpty!51088 () Bool)

(declare-datatypes ((V!49199 0))(
  ( (V!49200 (val!16577 Int)) )
))
(declare-datatypes ((ValueCell!15649 0))(
  ( (ValueCellFull!15649 (v!19212 V!49199)) (EmptyCell!15649) )
))
(declare-datatypes ((array!83203 0))(
  ( (array!83204 (arr!40134 (Array (_ BitVec 32) ValueCell!15649)) (size!40671 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83203)

(declare-fun mapDefault!51088 () ValueCell!15649)

