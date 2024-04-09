; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!572 () Bool)

(assert start!572)

(declare-fun b!3483 () Bool)

(declare-fun e!1687 () Bool)

(declare-fun tp_is_empty!133 () Bool)

(assert (=> b!3483 (= e!1687 tp_is_empty!133)))

(declare-fun b!3484 () Bool)

(declare-fun res!5201 () Bool)

(declare-fun e!1688 () Bool)

(assert (=> b!3484 (=> (not res!5201) (not e!1688))))

(declare-datatypes ((array!199 0))(
  ( (array!200 (arr!93 (Array (_ BitVec 32) (_ BitVec 64))) (size!155 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!199)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!199 (_ BitVec 32)) Bool)

(assert (=> b!3484 (= res!5201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!155 () Bool)

(declare-fun mapRes!155 () Bool)

(assert (=> mapIsEmpty!155 mapRes!155))

(declare-fun b!3485 () Bool)

(declare-fun res!5203 () Bool)

(assert (=> b!3485 (=> (not res!5203) (not e!1688))))

(declare-datatypes ((V!355 0))(
  ( (V!356 (val!72 Int)) )
))
(declare-datatypes ((ValueCell!50 0))(
  ( (ValueCellFull!50 (v!1159 V!355)) (EmptyCell!50) )
))
(declare-datatypes ((array!201 0))(
  ( (array!202 (arr!94 (Array (_ BitVec 32) ValueCell!50)) (size!156 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!201)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3485 (= res!5203 (and (= (size!156 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!155 _keys!1806) (size!156 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3486 () Bool)

(declare-fun e!1685 () Bool)

(assert (=> b!3486 (= e!1685 tp_is_empty!133)))

(declare-fun mapNonEmpty!155 () Bool)

(declare-fun tp!395 () Bool)

(assert (=> mapNonEmpty!155 (= mapRes!155 (and tp!395 e!1687))))

(declare-fun mapKey!155 () (_ BitVec 32))

(declare-fun mapValue!155 () ValueCell!50)

(declare-fun mapRest!155 () (Array (_ BitVec 32) ValueCell!50))

(assert (=> mapNonEmpty!155 (= (arr!94 _values!1492) (store mapRest!155 mapKey!155 mapValue!155))))

(declare-fun b!3488 () Bool)

(assert (=> b!3488 (= e!1688 false)))

(declare-fun lt!483 () Bool)

(declare-datatypes ((List!56 0))(
  ( (Nil!53) (Cons!52 (h!618 (_ BitVec 64)) (t!2183 List!56)) )
))
(declare-fun arrayNoDuplicates!0 (array!199 (_ BitVec 32) List!56) Bool)

(assert (=> b!3488 (= lt!483 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!53))))

(declare-fun b!3487 () Bool)

(declare-fun e!1684 () Bool)

(assert (=> b!3487 (= e!1684 (and e!1685 mapRes!155))))

(declare-fun condMapEmpty!155 () Bool)

(declare-fun mapDefault!155 () ValueCell!50)

