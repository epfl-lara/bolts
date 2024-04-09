; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!578 () Bool)

(assert start!578)

(declare-fun res!5231 () Bool)

(declare-fun e!1731 () Bool)

(assert (=> start!578 (=> (not res!5231) (not e!1731))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!578 (= res!5231 (validMask!0 mask!2250))))

(assert (=> start!578 e!1731))

(assert (=> start!578 true))

(declare-datatypes ((V!363 0))(
  ( (V!364 (val!75 Int)) )
))
(declare-datatypes ((ValueCell!53 0))(
  ( (ValueCellFull!53 (v!1162 V!363)) (EmptyCell!53) )
))
(declare-datatypes ((array!211 0))(
  ( (array!212 (arr!99 (Array (_ BitVec 32) ValueCell!53)) (size!161 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!211)

(declare-fun e!1733 () Bool)

(declare-fun array_inv!71 (array!211) Bool)

(assert (=> start!578 (and (array_inv!71 _values!1492) e!1733)))

(declare-datatypes ((array!213 0))(
  ( (array!214 (arr!100 (Array (_ BitVec 32) (_ BitVec 64))) (size!162 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!213)

(declare-fun array_inv!72 (array!213) Bool)

(assert (=> start!578 (array_inv!72 _keys!1806)))

(declare-fun mapNonEmpty!164 () Bool)

(declare-fun mapRes!164 () Bool)

(declare-fun tp!404 () Bool)

(declare-fun e!1730 () Bool)

(assert (=> mapNonEmpty!164 (= mapRes!164 (and tp!404 e!1730))))

(declare-fun mapValue!164 () ValueCell!53)

(declare-fun mapKey!164 () (_ BitVec 32))

(declare-fun mapRest!164 () (Array (_ BitVec 32) ValueCell!53))

(assert (=> mapNonEmpty!164 (= (arr!99 _values!1492) (store mapRest!164 mapKey!164 mapValue!164))))

(declare-fun b!3539 () Bool)

(declare-fun res!5232 () Bool)

(assert (=> b!3539 (=> (not res!5232) (not e!1731))))

(declare-datatypes ((List!59 0))(
  ( (Nil!56) (Cons!55 (h!621 (_ BitVec 64)) (t!2186 List!59)) )
))
(declare-fun arrayNoDuplicates!0 (array!213 (_ BitVec 32) List!59) Bool)

(assert (=> b!3539 (= res!5232 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!56))))

(declare-fun b!3540 () Bool)

(declare-fun tp_is_empty!139 () Bool)

(assert (=> b!3540 (= e!1730 tp_is_empty!139)))

(declare-fun b!3541 () Bool)

(declare-fun res!5230 () Bool)

(assert (=> b!3541 (=> (not res!5230) (not e!1731))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3541 (= res!5230 (and (= (size!161 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!162 _keys!1806) (size!161 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3542 () Bool)

(declare-fun res!5233 () Bool)

(assert (=> b!3542 (=> (not res!5233) (not e!1731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!213 (_ BitVec 32)) Bool)

(assert (=> b!3542 (= res!5233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3543 () Bool)

(assert (=> b!3543 (= e!1731 (bvsgt #b00000000000000000000000000000000 (size!162 _keys!1806)))))

(declare-fun mapIsEmpty!164 () Bool)

(assert (=> mapIsEmpty!164 mapRes!164))

(declare-fun b!3544 () Bool)

(declare-fun e!1729 () Bool)

(assert (=> b!3544 (= e!1733 (and e!1729 mapRes!164))))

(declare-fun condMapEmpty!164 () Bool)

(declare-fun mapDefault!164 () ValueCell!53)

