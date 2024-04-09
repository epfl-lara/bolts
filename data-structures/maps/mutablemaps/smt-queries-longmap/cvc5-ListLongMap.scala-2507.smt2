; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38868 () Bool)

(assert start!38868)

(declare-fun b!405767 () Bool)

(declare-fun res!234367 () Bool)

(declare-fun e!243910 () Bool)

(assert (=> b!405767 (=> (not res!234367) (not e!243910))))

(declare-datatypes ((array!24415 0))(
  ( (array!24416 (arr!11654 (Array (_ BitVec 32) (_ BitVec 64))) (size!12006 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24415)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14811 0))(
  ( (V!14812 (val!5184 Int)) )
))
(declare-datatypes ((ValueCell!4796 0))(
  ( (ValueCellFull!4796 (v!7427 V!14811)) (EmptyCell!4796) )
))
(declare-datatypes ((array!24417 0))(
  ( (array!24418 (arr!11655 (Array (_ BitVec 32) ValueCell!4796)) (size!12007 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24417)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!405767 (= res!234367 (and (= (size!12007 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12006 _keys!709) (size!12007 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405768 () Bool)

(declare-fun res!234365 () Bool)

(assert (=> b!405768 (=> (not res!234365) (not e!243910))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405768 (= res!234365 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17040 () Bool)

(declare-fun mapRes!17040 () Bool)

(declare-fun tp!33159 () Bool)

(declare-fun e!243911 () Bool)

(assert (=> mapNonEmpty!17040 (= mapRes!17040 (and tp!33159 e!243911))))

(declare-fun mapRest!17040 () (Array (_ BitVec 32) ValueCell!4796))

(declare-fun mapKey!17040 () (_ BitVec 32))

(declare-fun mapValue!17040 () ValueCell!4796)

(assert (=> mapNonEmpty!17040 (= (arr!11655 _values!549) (store mapRest!17040 mapKey!17040 mapValue!17040))))

(declare-fun b!405769 () Bool)

(declare-fun res!234371 () Bool)

(assert (=> b!405769 (=> (not res!234371) (not e!243910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24415 (_ BitVec 32)) Bool)

(assert (=> b!405769 (= res!234371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405770 () Bool)

(declare-fun res!234370 () Bool)

(assert (=> b!405770 (=> (not res!234370) (not e!243910))))

(declare-datatypes ((List!6751 0))(
  ( (Nil!6748) (Cons!6747 (h!7603 (_ BitVec 64)) (t!11933 List!6751)) )
))
(declare-fun arrayNoDuplicates!0 (array!24415 (_ BitVec 32) List!6751) Bool)

(assert (=> b!405770 (= res!234370 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6748))))

(declare-fun b!405771 () Bool)

(declare-fun e!243908 () Bool)

(assert (=> b!405771 (= e!243908 false)))

(declare-fun lt!188379 () Bool)

(declare-fun lt!188378 () array!24415)

(assert (=> b!405771 (= lt!188379 (arrayNoDuplicates!0 lt!188378 #b00000000000000000000000000000000 Nil!6748))))

(declare-fun b!405772 () Bool)

(declare-fun tp_is_empty!10279 () Bool)

(assert (=> b!405772 (= e!243911 tp_is_empty!10279)))

(declare-fun res!234368 () Bool)

(assert (=> start!38868 (=> (not res!234368) (not e!243910))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38868 (= res!234368 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12006 _keys!709))))))

(assert (=> start!38868 e!243910))

(assert (=> start!38868 true))

(declare-fun e!243912 () Bool)

(declare-fun array_inv!8516 (array!24417) Bool)

(assert (=> start!38868 (and (array_inv!8516 _values!549) e!243912)))

(declare-fun array_inv!8517 (array!24415) Bool)

(assert (=> start!38868 (array_inv!8517 _keys!709)))

(declare-fun b!405773 () Bool)

(declare-fun res!234366 () Bool)

(assert (=> b!405773 (=> (not res!234366) (not e!243910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405773 (= res!234366 (validMask!0 mask!1025))))

(declare-fun b!405774 () Bool)

(declare-fun e!243913 () Bool)

(assert (=> b!405774 (= e!243913 tp_is_empty!10279)))

(declare-fun mapIsEmpty!17040 () Bool)

(assert (=> mapIsEmpty!17040 mapRes!17040))

(declare-fun b!405775 () Bool)

(assert (=> b!405775 (= e!243912 (and e!243913 mapRes!17040))))

(declare-fun condMapEmpty!17040 () Bool)

(declare-fun mapDefault!17040 () ValueCell!4796)

