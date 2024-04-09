; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84868 () Bool)

(assert start!84868)

(declare-fun b!991493 () Bool)

(declare-fun res!662851 () Bool)

(declare-fun e!559241 () Bool)

(assert (=> b!991493 (=> (not res!662851) (not e!559241))))

(declare-datatypes ((array!62635 0))(
  ( (array!62636 (arr!30160 (Array (_ BitVec 32) (_ BitVec 64))) (size!30640 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62635)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62635 (_ BitVec 32)) Bool)

(assert (=> b!991493 (= res!662851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991494 () Bool)

(declare-fun res!662850 () Bool)

(assert (=> b!991494 (=> (not res!662850) (not e!559241))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-datatypes ((V!36105 0))(
  ( (V!36106 (val!11721 Int)) )
))
(declare-datatypes ((ValueCell!11189 0))(
  ( (ValueCellFull!11189 (v!14297 V!36105)) (EmptyCell!11189) )
))
(declare-datatypes ((array!62637 0))(
  ( (array!62638 (arr!30161 (Array (_ BitVec 32) ValueCell!11189)) (size!30641 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62637)

(assert (=> b!991494 (= res!662850 (and (= (size!30641 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30640 _keys!1945) (size!30641 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991495 () Bool)

(declare-fun e!559238 () Bool)

(declare-fun tp_is_empty!23341 () Bool)

(assert (=> b!991495 (= e!559238 tp_is_empty!23341)))

(declare-fun res!662852 () Bool)

(assert (=> start!84868 (=> (not res!662852) (not e!559241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84868 (= res!662852 (validMask!0 mask!2471))))

(assert (=> start!84868 e!559241))

(assert (=> start!84868 true))

(declare-fun e!559239 () Bool)

(declare-fun array_inv!23155 (array!62637) Bool)

(assert (=> start!84868 (and (array_inv!23155 _values!1551) e!559239)))

(declare-fun array_inv!23156 (array!62635) Bool)

(assert (=> start!84868 (array_inv!23156 _keys!1945)))

(declare-fun mapNonEmpty!37077 () Bool)

(declare-fun mapRes!37077 () Bool)

(declare-fun tp!70149 () Bool)

(assert (=> mapNonEmpty!37077 (= mapRes!37077 (and tp!70149 e!559238))))

(declare-fun mapKey!37077 () (_ BitVec 32))

(declare-fun mapRest!37077 () (Array (_ BitVec 32) ValueCell!11189))

(declare-fun mapValue!37077 () ValueCell!11189)

(assert (=> mapNonEmpty!37077 (= (arr!30161 _values!1551) (store mapRest!37077 mapKey!37077 mapValue!37077))))

(declare-fun b!991496 () Bool)

(declare-fun e!559240 () Bool)

(assert (=> b!991496 (= e!559240 tp_is_empty!23341)))

(declare-fun b!991497 () Bool)

(declare-datatypes ((List!20974 0))(
  ( (Nil!20971) (Cons!20970 (h!22132 (_ BitVec 64)) (t!29965 List!20974)) )
))
(declare-fun noDuplicate!1386 (List!20974) Bool)

(assert (=> b!991497 (= e!559241 (not (noDuplicate!1386 Nil!20971)))))

(declare-fun mapIsEmpty!37077 () Bool)

(assert (=> mapIsEmpty!37077 mapRes!37077))

(declare-fun b!991498 () Bool)

(assert (=> b!991498 (= e!559239 (and e!559240 mapRes!37077))))

(declare-fun condMapEmpty!37077 () Bool)

(declare-fun mapDefault!37077 () ValueCell!11189)

