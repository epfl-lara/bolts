; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39142 () Bool)

(assert start!39142)

(declare-fun b_free!9401 () Bool)

(declare-fun b_next!9401 () Bool)

(assert (=> start!39142 (= b_free!9401 (not b_next!9401))))

(declare-fun tp!33732 () Bool)

(declare-fun b_and!16805 () Bool)

(assert (=> start!39142 (= tp!33732 b_and!16805)))

(declare-fun b!411432 () Bool)

(declare-fun res!238799 () Bool)

(declare-fun e!246378 () Bool)

(assert (=> b!411432 (=> (not res!238799) (not e!246378))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24951 0))(
  ( (array!24952 (arr!11922 (Array (_ BitVec 32) (_ BitVec 64))) (size!12274 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24951)

(assert (=> b!411432 (= res!238799 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12274 _keys!709))))))

(declare-fun b!411433 () Bool)

(declare-fun e!246377 () Bool)

(assert (=> b!411433 (= e!246378 e!246377)))

(declare-fun res!238804 () Bool)

(assert (=> b!411433 (=> (not res!238804) (not e!246377))))

(declare-fun lt!189282 () array!24951)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24951 (_ BitVec 32)) Bool)

(assert (=> b!411433 (= res!238804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189282 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!411433 (= lt!189282 (array!24952 (store (arr!11922 _keys!709) i!563 k!794) (size!12274 _keys!709)))))

(declare-fun b!411434 () Bool)

(declare-fun e!246376 () Bool)

(declare-fun tp_is_empty!10553 () Bool)

(assert (=> b!411434 (= e!246376 tp_is_empty!10553)))

(declare-fun b!411435 () Bool)

(declare-fun res!238798 () Bool)

(assert (=> b!411435 (=> (not res!238798) (not e!246378))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15175 0))(
  ( (V!15176 (val!5321 Int)) )
))
(declare-datatypes ((ValueCell!4933 0))(
  ( (ValueCellFull!4933 (v!7564 V!15175)) (EmptyCell!4933) )
))
(declare-datatypes ((array!24953 0))(
  ( (array!24954 (arr!11923 (Array (_ BitVec 32) ValueCell!4933)) (size!12275 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24953)

(assert (=> b!411435 (= res!238798 (and (= (size!12275 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12274 _keys!709) (size!12275 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411436 () Bool)

(declare-fun res!238801 () Bool)

(assert (=> b!411436 (=> (not res!238801) (not e!246378))))

(assert (=> b!411436 (= res!238801 (or (= (select (arr!11922 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11922 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17451 () Bool)

(declare-fun mapRes!17451 () Bool)

(declare-fun tp!33731 () Bool)

(declare-fun e!246374 () Bool)

(assert (=> mapNonEmpty!17451 (= mapRes!17451 (and tp!33731 e!246374))))

(declare-fun mapValue!17451 () ValueCell!4933)

(declare-fun mapRest!17451 () (Array (_ BitVec 32) ValueCell!4933))

(declare-fun mapKey!17451 () (_ BitVec 32))

(assert (=> mapNonEmpty!17451 (= (arr!11923 _values!549) (store mapRest!17451 mapKey!17451 mapValue!17451))))

(declare-fun b!411438 () Bool)

(declare-fun e!246375 () Bool)

(assert (=> b!411438 (= e!246375 (and e!246376 mapRes!17451))))

(declare-fun condMapEmpty!17451 () Bool)

(declare-fun mapDefault!17451 () ValueCell!4933)

