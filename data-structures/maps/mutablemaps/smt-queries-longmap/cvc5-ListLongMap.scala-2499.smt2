; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38820 () Bool)

(assert start!38820)

(declare-fun b!404832 () Bool)

(declare-fun res!233645 () Bool)

(declare-fun e!243478 () Bool)

(assert (=> b!404832 (=> (not res!233645) (not e!243478))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24325 0))(
  ( (array!24326 (arr!11609 (Array (_ BitVec 32) (_ BitVec 64))) (size!11961 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24325)

(assert (=> b!404832 (= res!233645 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11961 _keys!709))))))

(declare-fun b!404833 () Bool)

(declare-fun e!243479 () Bool)

(declare-fun tp_is_empty!10231 () Bool)

(assert (=> b!404833 (= e!243479 tp_is_empty!10231)))

(declare-fun b!404834 () Bool)

(declare-fun res!233644 () Bool)

(assert (=> b!404834 (=> (not res!233644) (not e!243478))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404834 (= res!233644 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16968 () Bool)

(declare-fun mapRes!16968 () Bool)

(declare-fun tp!33087 () Bool)

(declare-fun e!243477 () Bool)

(assert (=> mapNonEmpty!16968 (= mapRes!16968 (and tp!33087 e!243477))))

(declare-datatypes ((V!14747 0))(
  ( (V!14748 (val!5160 Int)) )
))
(declare-datatypes ((ValueCell!4772 0))(
  ( (ValueCellFull!4772 (v!7403 V!14747)) (EmptyCell!4772) )
))
(declare-fun mapRest!16968 () (Array (_ BitVec 32) ValueCell!4772))

(declare-fun mapValue!16968 () ValueCell!4772)

(declare-datatypes ((array!24327 0))(
  ( (array!24328 (arr!11610 (Array (_ BitVec 32) ValueCell!4772)) (size!11962 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24327)

(declare-fun mapKey!16968 () (_ BitVec 32))

(assert (=> mapNonEmpty!16968 (= (arr!11610 _values!549) (store mapRest!16968 mapKey!16968 mapValue!16968))))

(declare-fun b!404835 () Bool)

(declare-fun res!233652 () Bool)

(assert (=> b!404835 (=> (not res!233652) (not e!243478))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404835 (= res!233652 (validKeyInArray!0 k!794))))

(declare-fun res!233648 () Bool)

(assert (=> start!38820 (=> (not res!233648) (not e!243478))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38820 (= res!233648 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11961 _keys!709))))))

(assert (=> start!38820 e!243478))

(assert (=> start!38820 true))

(declare-fun e!243476 () Bool)

(declare-fun array_inv!8480 (array!24327) Bool)

(assert (=> start!38820 (and (array_inv!8480 _values!549) e!243476)))

(declare-fun array_inv!8481 (array!24325) Bool)

(assert (=> start!38820 (array_inv!8481 _keys!709)))

(declare-fun b!404831 () Bool)

(declare-fun res!233651 () Bool)

(assert (=> b!404831 (=> (not res!233651) (not e!243478))))

(declare-fun arrayContainsKey!0 (array!24325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404831 (= res!233651 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!404836 () Bool)

(declare-fun e!243480 () Bool)

(assert (=> b!404836 (= e!243478 e!243480)))

(declare-fun res!233649 () Bool)

(assert (=> b!404836 (=> (not res!233649) (not e!243480))))

(declare-fun lt!188235 () array!24325)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24325 (_ BitVec 32)) Bool)

(assert (=> b!404836 (= res!233649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188235 mask!1025))))

(assert (=> b!404836 (= lt!188235 (array!24326 (store (arr!11609 _keys!709) i!563 k!794) (size!11961 _keys!709)))))

(declare-fun b!404837 () Bool)

(assert (=> b!404837 (= e!243476 (and e!243479 mapRes!16968))))

(declare-fun condMapEmpty!16968 () Bool)

(declare-fun mapDefault!16968 () ValueCell!4772)

