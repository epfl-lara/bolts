; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106958 () Bool)

(assert start!106958)

(declare-fun b!1268053 () Bool)

(declare-fun e!722541 () Bool)

(declare-fun tp_is_empty!32641 () Bool)

(assert (=> b!1268053 (= e!722541 tp_is_empty!32641)))

(declare-fun b!1268054 () Bool)

(declare-fun e!722540 () Bool)

(assert (=> b!1268054 (= e!722540 tp_is_empty!32641)))

(declare-fun res!844111 () Bool)

(declare-fun e!722542 () Bool)

(assert (=> start!106958 (=> (not res!844111) (not e!722542))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106958 (= res!844111 (validMask!0 mask!1730))))

(assert (=> start!106958 e!722542))

(declare-datatypes ((V!48715 0))(
  ( (V!48716 (val!16395 Int)) )
))
(declare-datatypes ((ValueCell!15467 0))(
  ( (ValueCellFull!15467 (v!19029 V!48715)) (EmptyCell!15467) )
))
(declare-datatypes ((array!82531 0))(
  ( (array!82532 (arr!39801 (Array (_ BitVec 32) ValueCell!15467)) (size!40338 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82531)

(declare-fun e!722543 () Bool)

(declare-fun array_inv!30245 (array!82531) Bool)

(assert (=> start!106958 (and (array_inv!30245 _values!1134) e!722543)))

(assert (=> start!106958 true))

(declare-datatypes ((array!82533 0))(
  ( (array!82534 (arr!39802 (Array (_ BitVec 32) (_ BitVec 64))) (size!40339 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82533)

(declare-fun array_inv!30246 (array!82533) Bool)

(assert (=> start!106958 (array_inv!30246 _keys!1364)))

(declare-fun b!1268055 () Bool)

(declare-fun mapRes!50533 () Bool)

(assert (=> b!1268055 (= e!722543 (and e!722541 mapRes!50533))))

(declare-fun condMapEmpty!50533 () Bool)

(declare-fun mapDefault!50533 () ValueCell!15467)

