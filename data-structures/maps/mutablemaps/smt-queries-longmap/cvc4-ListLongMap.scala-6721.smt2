; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84330 () Bool)

(assert start!84330)

(declare-fun mapIsEmpty!36686 () Bool)

(declare-fun mapRes!36686 () Bool)

(assert (=> mapIsEmpty!36686 mapRes!36686))

(declare-fun res!659867 () Bool)

(declare-fun e!555949 () Bool)

(assert (=> start!84330 (=> (not res!659867) (not e!555949))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84330 (= res!659867 (validMask!0 mask!1948))))

(assert (=> start!84330 e!555949))

(assert (=> start!84330 true))

(declare-datatypes ((V!35789 0))(
  ( (V!35790 (val!11603 Int)) )
))
(declare-datatypes ((ValueCell!11071 0))(
  ( (ValueCellFull!11071 (v!14165 V!35789)) (EmptyCell!11071) )
))
(declare-datatypes ((array!62165 0))(
  ( (array!62166 (arr!29936 (Array (_ BitVec 32) ValueCell!11071)) (size!30416 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62165)

(declare-fun e!555947 () Bool)

(declare-fun array_inv!23003 (array!62165) Bool)

(assert (=> start!84330 (and (array_inv!23003 _values!1278) e!555947)))

(declare-datatypes ((array!62167 0))(
  ( (array!62168 (arr!29937 (Array (_ BitVec 32) (_ BitVec 64))) (size!30417 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62167)

(declare-fun array_inv!23004 (array!62167) Bool)

(assert (=> start!84330 (array_inv!23004 _keys!1544)))

(declare-fun b!986041 () Bool)

(declare-fun e!555950 () Bool)

(assert (=> b!986041 (= e!555947 (and e!555950 mapRes!36686))))

(declare-fun condMapEmpty!36686 () Bool)

(declare-fun mapDefault!36686 () ValueCell!11071)

