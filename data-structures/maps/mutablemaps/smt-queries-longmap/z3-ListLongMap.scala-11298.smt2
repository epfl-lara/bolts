; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131726 () Bool)

(assert start!131726)

(declare-fun mapIsEmpty!58228 () Bool)

(declare-fun mapRes!58228 () Bool)

(assert (=> mapIsEmpty!58228 mapRes!58228))

(declare-fun res!1058386 () Bool)

(declare-fun e!857885 () Bool)

(assert (=> start!131726 (=> (not res!1058386) (not e!857885))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131726 (= res!1058386 (validMask!0 mask!926))))

(assert (=> start!131726 e!857885))

(assert (=> start!131726 true))

(declare-datatypes ((V!58687 0))(
  ( (V!58688 (val!18919 Int)) )
))
(declare-datatypes ((ValueCell!17931 0))(
  ( (ValueCellFull!17931 (v!21717 V!58687)) (EmptyCell!17931) )
))
(declare-datatypes ((array!102561 0))(
  ( (array!102562 (arr!49478 (Array (_ BitVec 32) ValueCell!17931)) (size!50029 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102561)

(declare-fun e!857884 () Bool)

(declare-fun array_inv!38413 (array!102561) Bool)

(assert (=> start!131726 (and (array_inv!38413 _values!470) e!857884)))

(declare-datatypes ((array!102563 0))(
  ( (array!102564 (arr!49479 (Array (_ BitVec 32) (_ BitVec 64))) (size!50030 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102563)

(declare-fun array_inv!38414 (array!102563) Bool)

(assert (=> start!131726 (array_inv!38414 _keys!618)))

(declare-fun b!1542074 () Bool)

(declare-fun e!857886 () Bool)

(declare-fun tp_is_empty!37683 () Bool)

(assert (=> b!1542074 (= e!857886 tp_is_empty!37683)))

(declare-fun b!1542075 () Bool)

(assert (=> b!1542075 (= e!857885 false)))

(declare-fun lt!665699 () Bool)

(declare-datatypes ((List!36021 0))(
  ( (Nil!36018) (Cons!36017 (h!37463 (_ BitVec 64)) (t!50722 List!36021)) )
))
(declare-fun arrayNoDuplicates!0 (array!102563 (_ BitVec 32) List!36021) Bool)

(assert (=> b!1542075 (= lt!665699 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36018))))

(declare-fun b!1542076 () Bool)

(declare-fun res!1058387 () Bool)

(assert (=> b!1542076 (=> (not res!1058387) (not e!857885))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542076 (= res!1058387 (and (= (size!50029 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50030 _keys!618) (size!50029 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58228 () Bool)

(declare-fun tp!110756 () Bool)

(assert (=> mapNonEmpty!58228 (= mapRes!58228 (and tp!110756 e!857886))))

(declare-fun mapRest!58228 () (Array (_ BitVec 32) ValueCell!17931))

(declare-fun mapValue!58228 () ValueCell!17931)

(declare-fun mapKey!58228 () (_ BitVec 32))

(assert (=> mapNonEmpty!58228 (= (arr!49478 _values!470) (store mapRest!58228 mapKey!58228 mapValue!58228))))

(declare-fun b!1542077 () Bool)

(declare-fun res!1058385 () Bool)

(assert (=> b!1542077 (=> (not res!1058385) (not e!857885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102563 (_ BitVec 32)) Bool)

(assert (=> b!1542077 (= res!1058385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542078 () Bool)

(declare-fun e!857887 () Bool)

(assert (=> b!1542078 (= e!857884 (and e!857887 mapRes!58228))))

(declare-fun condMapEmpty!58228 () Bool)

(declare-fun mapDefault!58228 () ValueCell!17931)

(assert (=> b!1542078 (= condMapEmpty!58228 (= (arr!49478 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17931)) mapDefault!58228)))))

(declare-fun b!1542079 () Bool)

(assert (=> b!1542079 (= e!857887 tp_is_empty!37683)))

(assert (= (and start!131726 res!1058386) b!1542076))

(assert (= (and b!1542076 res!1058387) b!1542077))

(assert (= (and b!1542077 res!1058385) b!1542075))

(assert (= (and b!1542078 condMapEmpty!58228) mapIsEmpty!58228))

(assert (= (and b!1542078 (not condMapEmpty!58228)) mapNonEmpty!58228))

(get-info :version)

(assert (= (and mapNonEmpty!58228 ((_ is ValueCellFull!17931) mapValue!58228)) b!1542074))

(assert (= (and b!1542078 ((_ is ValueCellFull!17931) mapDefault!58228)) b!1542079))

(assert (= start!131726 b!1542078))

(declare-fun m!1423843 () Bool)

(assert (=> start!131726 m!1423843))

(declare-fun m!1423845 () Bool)

(assert (=> start!131726 m!1423845))

(declare-fun m!1423847 () Bool)

(assert (=> start!131726 m!1423847))

(declare-fun m!1423849 () Bool)

(assert (=> b!1542075 m!1423849))

(declare-fun m!1423851 () Bool)

(assert (=> mapNonEmpty!58228 m!1423851))

(declare-fun m!1423853 () Bool)

(assert (=> b!1542077 m!1423853))

(check-sat (not start!131726) tp_is_empty!37683 (not mapNonEmpty!58228) (not b!1542077) (not b!1542075))
(check-sat)
