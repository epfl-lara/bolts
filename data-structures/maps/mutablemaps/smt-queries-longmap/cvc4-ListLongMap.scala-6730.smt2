; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84384 () Bool)

(assert start!84384)

(declare-fun b!986554 () Bool)

(declare-fun e!556355 () Bool)

(declare-fun e!556352 () Bool)

(declare-fun mapRes!36767 () Bool)

(assert (=> b!986554 (= e!556355 (and e!556352 mapRes!36767))))

(declare-fun condMapEmpty!36767 () Bool)

(declare-datatypes ((V!35861 0))(
  ( (V!35862 (val!11630 Int)) )
))
(declare-datatypes ((ValueCell!11098 0))(
  ( (ValueCellFull!11098 (v!14192 V!35861)) (EmptyCell!11098) )
))
(declare-datatypes ((array!62267 0))(
  ( (array!62268 (arr!29987 (Array (_ BitVec 32) ValueCell!11098)) (size!30467 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62267)

(declare-fun mapDefault!36767 () ValueCell!11098)

