; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84916 () Bool)

(assert start!84916)

(declare-fun b!991839 () Bool)

(declare-fun e!559494 () Bool)

(declare-fun tp_is_empty!23367 () Bool)

(assert (=> b!991839 (= e!559494 tp_is_empty!23367)))

(declare-fun res!663052 () Bool)

(declare-fun e!559496 () Bool)

(assert (=> start!84916 (=> (not res!663052) (not e!559496))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84916 (= res!663052 (validMask!0 mask!2471))))

(assert (=> start!84916 e!559496))

(assert (=> start!84916 true))

(declare-datatypes ((V!36139 0))(
  ( (V!36140 (val!11734 Int)) )
))
(declare-datatypes ((ValueCell!11202 0))(
  ( (ValueCellFull!11202 (v!14311 V!36139)) (EmptyCell!11202) )
))
(declare-datatypes ((array!62685 0))(
  ( (array!62686 (arr!30183 (Array (_ BitVec 32) ValueCell!11202)) (size!30663 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62685)

(declare-fun e!559493 () Bool)

(declare-fun array_inv!23175 (array!62685) Bool)

(assert (=> start!84916 (and (array_inv!23175 _values!1551) e!559493)))

(declare-datatypes ((array!62687 0))(
  ( (array!62688 (arr!30184 (Array (_ BitVec 32) (_ BitVec 64))) (size!30664 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62687)

(declare-fun array_inv!23176 (array!62687) Bool)

(assert (=> start!84916 (array_inv!23176 _keys!1945)))

(declare-fun b!991840 () Bool)

(assert (=> b!991840 (= e!559496 false)))

(declare-fun lt!439983 () Bool)

(declare-datatypes ((List!20983 0))(
  ( (Nil!20980) (Cons!20979 (h!22141 (_ BitVec 64)) (t!29974 List!20983)) )
))
(declare-fun arrayNoDuplicates!0 (array!62687 (_ BitVec 32) List!20983) Bool)

(assert (=> b!991840 (= lt!439983 (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20980))))

(declare-fun b!991841 () Bool)

(declare-fun e!559492 () Bool)

(assert (=> b!991841 (= e!559492 tp_is_empty!23367)))

(declare-fun mapNonEmpty!37122 () Bool)

(declare-fun mapRes!37122 () Bool)

(declare-fun tp!70194 () Bool)

(assert (=> mapNonEmpty!37122 (= mapRes!37122 (and tp!70194 e!559494))))

(declare-fun mapRest!37122 () (Array (_ BitVec 32) ValueCell!11202))

(declare-fun mapKey!37122 () (_ BitVec 32))

(declare-fun mapValue!37122 () ValueCell!11202)

(assert (=> mapNonEmpty!37122 (= (arr!30183 _values!1551) (store mapRest!37122 mapKey!37122 mapValue!37122))))

(declare-fun mapIsEmpty!37122 () Bool)

(assert (=> mapIsEmpty!37122 mapRes!37122))

(declare-fun b!991842 () Bool)

(declare-fun res!663051 () Bool)

(assert (=> b!991842 (=> (not res!663051) (not e!559496))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991842 (= res!663051 (and (= (size!30663 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30664 _keys!1945) (size!30663 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991843 () Bool)

(declare-fun res!663050 () Bool)

(assert (=> b!991843 (=> (not res!663050) (not e!559496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62687 (_ BitVec 32)) Bool)

(assert (=> b!991843 (= res!663050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991844 () Bool)

(assert (=> b!991844 (= e!559493 (and e!559492 mapRes!37122))))

(declare-fun condMapEmpty!37122 () Bool)

(declare-fun mapDefault!37122 () ValueCell!11202)

(assert (=> b!991844 (= condMapEmpty!37122 (= (arr!30183 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11202)) mapDefault!37122)))))

(assert (= (and start!84916 res!663052) b!991842))

(assert (= (and b!991842 res!663051) b!991843))

(assert (= (and b!991843 res!663050) b!991840))

(assert (= (and b!991844 condMapEmpty!37122) mapIsEmpty!37122))

(assert (= (and b!991844 (not condMapEmpty!37122)) mapNonEmpty!37122))

(get-info :version)

(assert (= (and mapNonEmpty!37122 ((_ is ValueCellFull!11202) mapValue!37122)) b!991839))

(assert (= (and b!991844 ((_ is ValueCellFull!11202) mapDefault!37122)) b!991841))

(assert (= start!84916 b!991844))

(declare-fun m!919687 () Bool)

(assert (=> start!84916 m!919687))

(declare-fun m!919689 () Bool)

(assert (=> start!84916 m!919689))

(declare-fun m!919691 () Bool)

(assert (=> start!84916 m!919691))

(declare-fun m!919693 () Bool)

(assert (=> b!991840 m!919693))

(declare-fun m!919695 () Bool)

(assert (=> mapNonEmpty!37122 m!919695))

(declare-fun m!919697 () Bool)

(assert (=> b!991843 m!919697))

(check-sat (not b!991843) (not mapNonEmpty!37122) tp_is_empty!23367 (not b!991840) (not start!84916))
(check-sat)
