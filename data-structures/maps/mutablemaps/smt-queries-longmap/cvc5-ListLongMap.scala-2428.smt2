; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38346 () Bool)

(assert start!38346)

(declare-fun res!226595 () Bool)

(declare-fun e!239251 () Bool)

(assert (=> start!38346 (=> (not res!226595) (not e!239251))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23497 0))(
  ( (array!23498 (arr!11198 (Array (_ BitVec 32) (_ BitVec 64))) (size!11550 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23497)

(assert (=> start!38346 (= res!226595 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11550 _keys!709))))))

(assert (=> start!38346 e!239251))

(assert (=> start!38346 true))

(declare-datatypes ((V!14179 0))(
  ( (V!14180 (val!4947 Int)) )
))
(declare-datatypes ((ValueCell!4559 0))(
  ( (ValueCellFull!4559 (v!7189 V!14179)) (EmptyCell!4559) )
))
(declare-datatypes ((array!23499 0))(
  ( (array!23500 (arr!11199 (Array (_ BitVec 32) ValueCell!4559)) (size!11551 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23499)

(declare-fun e!239255 () Bool)

(declare-fun array_inv!8200 (array!23499) Bool)

(assert (=> start!38346 (and (array_inv!8200 _values!549) e!239255)))

(declare-fun array_inv!8201 (array!23497) Bool)

(assert (=> start!38346 (array_inv!8201 _keys!709)))

(declare-fun b!395151 () Bool)

(declare-fun e!239253 () Bool)

(declare-fun tp_is_empty!9805 () Bool)

(assert (=> b!395151 (= e!239253 tp_is_empty!9805)))

(declare-fun b!395152 () Bool)

(assert (=> b!395152 (= e!239251 false)))

(declare-fun lt!187040 () Bool)

(declare-datatypes ((List!6471 0))(
  ( (Nil!6468) (Cons!6467 (h!7323 (_ BitVec 64)) (t!11653 List!6471)) )
))
(declare-fun arrayNoDuplicates!0 (array!23497 (_ BitVec 32) List!6471) Bool)

(assert (=> b!395152 (= lt!187040 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6468))))

(declare-fun b!395153 () Bool)

(declare-fun res!226596 () Bool)

(assert (=> b!395153 (=> (not res!226596) (not e!239251))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23497 (_ BitVec 32)) Bool)

(assert (=> b!395153 (= res!226596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395154 () Bool)

(declare-fun res!226597 () Bool)

(assert (=> b!395154 (=> (not res!226597) (not e!239251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395154 (= res!226597 (validMask!0 mask!1025))))

(declare-fun b!395155 () Bool)

(declare-fun res!226594 () Bool)

(assert (=> b!395155 (=> (not res!226594) (not e!239251))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!395155 (= res!226594 (and (= (size!11551 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11550 _keys!709) (size!11551 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16320 () Bool)

(declare-fun mapRes!16320 () Bool)

(declare-fun tp!32115 () Bool)

(assert (=> mapNonEmpty!16320 (= mapRes!16320 (and tp!32115 e!239253))))

(declare-fun mapValue!16320 () ValueCell!4559)

(declare-fun mapKey!16320 () (_ BitVec 32))

(declare-fun mapRest!16320 () (Array (_ BitVec 32) ValueCell!4559))

(assert (=> mapNonEmpty!16320 (= (arr!11199 _values!549) (store mapRest!16320 mapKey!16320 mapValue!16320))))

(declare-fun mapIsEmpty!16320 () Bool)

(assert (=> mapIsEmpty!16320 mapRes!16320))

(declare-fun b!395156 () Bool)

(declare-fun e!239252 () Bool)

(assert (=> b!395156 (= e!239255 (and e!239252 mapRes!16320))))

(declare-fun condMapEmpty!16320 () Bool)

(declare-fun mapDefault!16320 () ValueCell!4559)

