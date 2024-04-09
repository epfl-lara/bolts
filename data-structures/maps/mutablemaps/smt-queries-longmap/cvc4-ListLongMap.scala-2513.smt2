; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38908 () Bool)

(assert start!38908)

(declare-fun b!406547 () Bool)

(declare-fun res!234966 () Bool)

(declare-fun e!244273 () Bool)

(assert (=> b!406547 (=> (not res!234966) (not e!244273))))

(declare-datatypes ((array!24495 0))(
  ( (array!24496 (arr!11694 (Array (_ BitVec 32) (_ BitVec 64))) (size!12046 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24495)

(declare-datatypes ((List!6767 0))(
  ( (Nil!6764) (Cons!6763 (h!7619 (_ BitVec 64)) (t!11949 List!6767)) )
))
(declare-fun arrayNoDuplicates!0 (array!24495 (_ BitVec 32) List!6767) Bool)

(assert (=> b!406547 (= res!234966 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6764))))

(declare-fun b!406548 () Bool)

(declare-fun e!244269 () Bool)

(assert (=> b!406548 (= e!244273 e!244269)))

(declare-fun res!234968 () Bool)

(assert (=> b!406548 (=> (not res!234968) (not e!244269))))

(declare-fun lt!188498 () array!24495)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24495 (_ BitVec 32)) Bool)

(assert (=> b!406548 (= res!234968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188498 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406548 (= lt!188498 (array!24496 (store (arr!11694 _keys!709) i!563 k!794) (size!12046 _keys!709)))))

(declare-fun res!234967 () Bool)

(assert (=> start!38908 (=> (not res!234967) (not e!244273))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38908 (= res!234967 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12046 _keys!709))))))

(assert (=> start!38908 e!244273))

(assert (=> start!38908 true))

(declare-datatypes ((V!14863 0))(
  ( (V!14864 (val!5204 Int)) )
))
(declare-datatypes ((ValueCell!4816 0))(
  ( (ValueCellFull!4816 (v!7447 V!14863)) (EmptyCell!4816) )
))
(declare-datatypes ((array!24497 0))(
  ( (array!24498 (arr!11695 (Array (_ BitVec 32) ValueCell!4816)) (size!12047 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24497)

(declare-fun e!244270 () Bool)

(declare-fun array_inv!8544 (array!24497) Bool)

(assert (=> start!38908 (and (array_inv!8544 _values!549) e!244270)))

(declare-fun array_inv!8545 (array!24495) Bool)

(assert (=> start!38908 (array_inv!8545 _keys!709)))

(declare-fun mapIsEmpty!17100 () Bool)

(declare-fun mapRes!17100 () Bool)

(assert (=> mapIsEmpty!17100 mapRes!17100))

(declare-fun b!406549 () Bool)

(declare-fun res!234963 () Bool)

(assert (=> b!406549 (=> (not res!234963) (not e!244273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406549 (= res!234963 (validMask!0 mask!1025))))

(declare-fun b!406550 () Bool)

(declare-fun e!244268 () Bool)

(declare-fun tp_is_empty!10319 () Bool)

(assert (=> b!406550 (= e!244268 tp_is_empty!10319)))

(declare-fun b!406551 () Bool)

(declare-fun res!234972 () Bool)

(assert (=> b!406551 (=> (not res!234972) (not e!244273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406551 (= res!234972 (validKeyInArray!0 k!794))))

(declare-fun b!406552 () Bool)

(declare-fun res!234965 () Bool)

(assert (=> b!406552 (=> (not res!234965) (not e!244273))))

(assert (=> b!406552 (= res!234965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406553 () Bool)

(declare-fun res!234964 () Bool)

(assert (=> b!406553 (=> (not res!234964) (not e!244273))))

(assert (=> b!406553 (= res!234964 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12046 _keys!709))))))

(declare-fun mapNonEmpty!17100 () Bool)

(declare-fun tp!33219 () Bool)

(declare-fun e!244271 () Bool)

(assert (=> mapNonEmpty!17100 (= mapRes!17100 (and tp!33219 e!244271))))

(declare-fun mapKey!17100 () (_ BitVec 32))

(declare-fun mapRest!17100 () (Array (_ BitVec 32) ValueCell!4816))

(declare-fun mapValue!17100 () ValueCell!4816)

(assert (=> mapNonEmpty!17100 (= (arr!11695 _values!549) (store mapRest!17100 mapKey!17100 mapValue!17100))))

(declare-fun b!406554 () Bool)

(declare-fun res!234969 () Bool)

(assert (=> b!406554 (=> (not res!234969) (not e!244273))))

(declare-fun arrayContainsKey!0 (array!24495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406554 (= res!234969 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!406555 () Bool)

(assert (=> b!406555 (= e!244271 tp_is_empty!10319)))

(declare-fun b!406556 () Bool)

(declare-fun res!234971 () Bool)

(assert (=> b!406556 (=> (not res!234971) (not e!244273))))

(assert (=> b!406556 (= res!234971 (or (= (select (arr!11694 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11694 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406557 () Bool)

(declare-fun res!234970 () Bool)

(assert (=> b!406557 (=> (not res!234970) (not e!244273))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406557 (= res!234970 (and (= (size!12047 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12046 _keys!709) (size!12047 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406558 () Bool)

(assert (=> b!406558 (= e!244269 false)))

(declare-fun lt!188499 () Bool)

(assert (=> b!406558 (= lt!188499 (arrayNoDuplicates!0 lt!188498 #b00000000000000000000000000000000 Nil!6764))))

(declare-fun b!406559 () Bool)

(assert (=> b!406559 (= e!244270 (and e!244268 mapRes!17100))))

(declare-fun condMapEmpty!17100 () Bool)

(declare-fun mapDefault!17100 () ValueCell!4816)

