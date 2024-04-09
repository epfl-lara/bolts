; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84854 () Bool)

(assert start!84854)

(declare-fun b!991417 () Bool)

(declare-fun e!559181 () Bool)

(declare-datatypes ((array!62621 0))(
  ( (array!62622 (arr!30154 (Array (_ BitVec 32) (_ BitVec 64))) (size!30634 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62621)

(assert (=> b!991417 (= e!559181 (and (bvsle #b00000000000000000000000000000000 (size!30634 _keys!1945)) (bvsge (size!30634 _keys!1945) #b01111111111111111111111111111111)))))

(declare-fun b!991418 () Bool)

(declare-fun e!559178 () Bool)

(declare-fun tp_is_empty!23335 () Bool)

(assert (=> b!991418 (= e!559178 tp_is_empty!23335)))

(declare-fun b!991419 () Bool)

(declare-fun res!662814 () Bool)

(assert (=> b!991419 (=> (not res!662814) (not e!559181))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62621 (_ BitVec 32)) Bool)

(assert (=> b!991419 (= res!662814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun res!662815 () Bool)

(assert (=> start!84854 (=> (not res!662815) (not e!559181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84854 (= res!662815 (validMask!0 mask!2471))))

(assert (=> start!84854 e!559181))

(assert (=> start!84854 true))

(declare-datatypes ((V!36097 0))(
  ( (V!36098 (val!11718 Int)) )
))
(declare-datatypes ((ValueCell!11186 0))(
  ( (ValueCellFull!11186 (v!14294 V!36097)) (EmptyCell!11186) )
))
(declare-datatypes ((array!62623 0))(
  ( (array!62624 (arr!30155 (Array (_ BitVec 32) ValueCell!11186)) (size!30635 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62623)

(declare-fun e!559182 () Bool)

(declare-fun array_inv!23149 (array!62623) Bool)

(assert (=> start!84854 (and (array_inv!23149 _values!1551) e!559182)))

(declare-fun array_inv!23150 (array!62621) Bool)

(assert (=> start!84854 (array_inv!23150 _keys!1945)))

(declare-fun b!991420 () Bool)

(declare-fun res!662816 () Bool)

(assert (=> b!991420 (=> (not res!662816) (not e!559181))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991420 (= res!662816 (and (= (size!30635 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30634 _keys!1945) (size!30635 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!37065 () Bool)

(declare-fun mapRes!37065 () Bool)

(declare-fun tp!70137 () Bool)

(declare-fun e!559179 () Bool)

(assert (=> mapNonEmpty!37065 (= mapRes!37065 (and tp!70137 e!559179))))

(declare-fun mapValue!37065 () ValueCell!11186)

(declare-fun mapKey!37065 () (_ BitVec 32))

(declare-fun mapRest!37065 () (Array (_ BitVec 32) ValueCell!11186))

(assert (=> mapNonEmpty!37065 (= (arr!30155 _values!1551) (store mapRest!37065 mapKey!37065 mapValue!37065))))

(declare-fun b!991421 () Bool)

(assert (=> b!991421 (= e!559182 (and e!559178 mapRes!37065))))

(declare-fun condMapEmpty!37065 () Bool)

(declare-fun mapDefault!37065 () ValueCell!11186)

