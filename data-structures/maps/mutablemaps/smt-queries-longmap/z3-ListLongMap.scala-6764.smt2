; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84910 () Bool)

(assert start!84910)

(declare-fun mapIsEmpty!37113 () Bool)

(declare-fun mapRes!37113 () Bool)

(assert (=> mapIsEmpty!37113 mapRes!37113))

(declare-fun b!991778 () Bool)

(declare-fun res!663018 () Bool)

(declare-fun e!559447 () Bool)

(assert (=> b!991778 (=> (not res!663018) (not e!559447))))

(declare-datatypes ((array!62673 0))(
  ( (array!62674 (arr!30177 (Array (_ BitVec 32) (_ BitVec 64))) (size!30657 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62673)

(declare-datatypes ((List!20981 0))(
  ( (Nil!20978) (Cons!20977 (h!22139 (_ BitVec 64)) (t!29972 List!20981)) )
))
(declare-fun arrayNoDuplicates!0 (array!62673 (_ BitVec 32) List!20981) Bool)

(assert (=> b!991778 (= res!663018 (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20978))))

(declare-fun b!991779 () Bool)

(declare-fun res!663019 () Bool)

(assert (=> b!991779 (=> (not res!663019) (not e!559447))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((V!36131 0))(
  ( (V!36132 (val!11731 Int)) )
))
(declare-datatypes ((ValueCell!11199 0))(
  ( (ValueCellFull!11199 (v!14308 V!36131)) (EmptyCell!11199) )
))
(declare-datatypes ((array!62675 0))(
  ( (array!62676 (arr!30178 (Array (_ BitVec 32) ValueCell!11199)) (size!30658 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62675)

(assert (=> b!991779 (= res!663019 (and (= (size!30658 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30657 _keys!1945) (size!30658 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991780 () Bool)

(declare-fun e!559451 () Bool)

(declare-fun tp_is_empty!23361 () Bool)

(assert (=> b!991780 (= e!559451 tp_is_empty!23361)))

(declare-fun mapNonEmpty!37113 () Bool)

(declare-fun tp!70185 () Bool)

(declare-fun e!559449 () Bool)

(assert (=> mapNonEmpty!37113 (= mapRes!37113 (and tp!70185 e!559449))))

(declare-fun mapRest!37113 () (Array (_ BitVec 32) ValueCell!11199))

(declare-fun mapValue!37113 () ValueCell!11199)

(declare-fun mapKey!37113 () (_ BitVec 32))

(assert (=> mapNonEmpty!37113 (= (arr!30178 _values!1551) (store mapRest!37113 mapKey!37113 mapValue!37113))))

(declare-fun b!991781 () Bool)

(declare-fun res!663016 () Bool)

(assert (=> b!991781 (=> (not res!663016) (not e!559447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62673 (_ BitVec 32)) Bool)

(assert (=> b!991781 (= res!663016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991782 () Bool)

(declare-fun res!663015 () Bool)

(assert (=> b!991782 (=> (not res!663015) (not e!559447))))

(declare-fun k0!1425 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991782 (= res!663015 (validKeyInArray!0 k0!1425))))

(declare-fun b!991783 () Bool)

(assert (=> b!991783 (= e!559449 tp_is_empty!23361)))

(declare-fun b!991784 () Bool)

(assert (=> b!991784 (= e!559447 (not (= (size!30657 _keys!1945) (bvadd #b00000000000000000000000000000001 mask!2471))))))

(declare-fun res!663017 () Bool)

(assert (=> start!84910 (=> (not res!663017) (not e!559447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84910 (= res!663017 (validMask!0 mask!2471))))

(assert (=> start!84910 e!559447))

(assert (=> start!84910 true))

(declare-fun e!559450 () Bool)

(declare-fun array_inv!23169 (array!62675) Bool)

(assert (=> start!84910 (and (array_inv!23169 _values!1551) e!559450)))

(declare-fun array_inv!23170 (array!62673) Bool)

(assert (=> start!84910 (array_inv!23170 _keys!1945)))

(declare-fun b!991777 () Bool)

(assert (=> b!991777 (= e!559450 (and e!559451 mapRes!37113))))

(declare-fun condMapEmpty!37113 () Bool)

(declare-fun mapDefault!37113 () ValueCell!11199)

(assert (=> b!991777 (= condMapEmpty!37113 (= (arr!30178 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11199)) mapDefault!37113)))))

(assert (= (and start!84910 res!663017) b!991779))

(assert (= (and b!991779 res!663019) b!991781))

(assert (= (and b!991781 res!663016) b!991778))

(assert (= (and b!991778 res!663018) b!991782))

(assert (= (and b!991782 res!663015) b!991784))

(assert (= (and b!991777 condMapEmpty!37113) mapIsEmpty!37113))

(assert (= (and b!991777 (not condMapEmpty!37113)) mapNonEmpty!37113))

(get-info :version)

(assert (= (and mapNonEmpty!37113 ((_ is ValueCellFull!11199) mapValue!37113)) b!991783))

(assert (= (and b!991777 ((_ is ValueCellFull!11199) mapDefault!37113)) b!991780))

(assert (= start!84910 b!991777))

(declare-fun m!919647 () Bool)

(assert (=> b!991781 m!919647))

(declare-fun m!919649 () Bool)

(assert (=> b!991782 m!919649))

(declare-fun m!919651 () Bool)

(assert (=> start!84910 m!919651))

(declare-fun m!919653 () Bool)

(assert (=> start!84910 m!919653))

(declare-fun m!919655 () Bool)

(assert (=> start!84910 m!919655))

(declare-fun m!919657 () Bool)

(assert (=> mapNonEmpty!37113 m!919657))

(declare-fun m!919659 () Bool)

(assert (=> b!991778 m!919659))

(check-sat (not b!991781) (not b!991782) (not start!84910) tp_is_empty!23361 (not mapNonEmpty!37113) (not b!991778))
(check-sat)
