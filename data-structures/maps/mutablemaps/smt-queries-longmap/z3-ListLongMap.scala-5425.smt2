; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72364 () Bool)

(assert start!72364)

(declare-fun b!837899 () Bool)

(declare-fun res!569907 () Bool)

(declare-fun e!467764 () Bool)

(assert (=> b!837899 (=> (not res!569907) (not e!467764))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837899 (= res!569907 (validMask!0 mask!1196))))

(declare-fun res!569908 () Bool)

(assert (=> start!72364 (=> (not res!569908) (not e!467764))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47030 0))(
  ( (array!47031 (arr!22542 (Array (_ BitVec 32) (_ BitVec 64))) (size!22983 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47030)

(assert (=> start!72364 (= res!569908 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22983 _keys!868))))))

(assert (=> start!72364 e!467764))

(assert (=> start!72364 true))

(declare-fun array_inv!17932 (array!47030) Bool)

(assert (=> start!72364 (array_inv!17932 _keys!868)))

(declare-datatypes ((V!25563 0))(
  ( (V!25564 (val!7741 Int)) )
))
(declare-datatypes ((ValueCell!7254 0))(
  ( (ValueCellFull!7254 (v!10162 V!25563)) (EmptyCell!7254) )
))
(declare-datatypes ((array!47032 0))(
  ( (array!47033 (arr!22543 (Array (_ BitVec 32) ValueCell!7254)) (size!22984 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47032)

(declare-fun e!467762 () Bool)

(declare-fun array_inv!17933 (array!47032) Bool)

(assert (=> start!72364 (and (array_inv!17933 _values!688) e!467762)))

(declare-fun b!837900 () Bool)

(declare-fun e!467766 () Bool)

(declare-fun mapRes!24680 () Bool)

(assert (=> b!837900 (= e!467762 (and e!467766 mapRes!24680))))

(declare-fun condMapEmpty!24680 () Bool)

(declare-fun mapDefault!24680 () ValueCell!7254)

(assert (=> b!837900 (= condMapEmpty!24680 (= (arr!22543 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7254)) mapDefault!24680)))))

(declare-fun b!837901 () Bool)

(declare-fun tp_is_empty!15387 () Bool)

(assert (=> b!837901 (= e!467766 tp_is_empty!15387)))

(declare-fun mapNonEmpty!24680 () Bool)

(declare-fun tp!47675 () Bool)

(declare-fun e!467765 () Bool)

(assert (=> mapNonEmpty!24680 (= mapRes!24680 (and tp!47675 e!467765))))

(declare-fun mapValue!24680 () ValueCell!7254)

(declare-fun mapRest!24680 () (Array (_ BitVec 32) ValueCell!7254))

(declare-fun mapKey!24680 () (_ BitVec 32))

(assert (=> mapNonEmpty!24680 (= (arr!22543 _values!688) (store mapRest!24680 mapKey!24680 mapValue!24680))))

(declare-fun mapIsEmpty!24680 () Bool)

(assert (=> mapIsEmpty!24680 mapRes!24680))

(declare-fun b!837902 () Bool)

(declare-fun res!569909 () Bool)

(assert (=> b!837902 (=> (not res!569909) (not e!467764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47030 (_ BitVec 32)) Bool)

(assert (=> b!837902 (= res!569909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837903 () Bool)

(declare-fun res!569910 () Bool)

(assert (=> b!837903 (=> (not res!569910) (not e!467764))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837903 (= res!569910 (and (= (size!22984 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22983 _keys!868) (size!22984 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837904 () Bool)

(assert (=> b!837904 (= e!467764 false)))

(declare-fun lt!380592 () Bool)

(declare-datatypes ((List!16098 0))(
  ( (Nil!16095) (Cons!16094 (h!17225 (_ BitVec 64)) (t!22477 List!16098)) )
))
(declare-fun arrayNoDuplicates!0 (array!47030 (_ BitVec 32) List!16098) Bool)

(assert (=> b!837904 (= lt!380592 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16095))))

(declare-fun b!837905 () Bool)

(assert (=> b!837905 (= e!467765 tp_is_empty!15387)))

(assert (= (and start!72364 res!569908) b!837899))

(assert (= (and b!837899 res!569907) b!837903))

(assert (= (and b!837903 res!569910) b!837902))

(assert (= (and b!837902 res!569909) b!837904))

(assert (= (and b!837900 condMapEmpty!24680) mapIsEmpty!24680))

(assert (= (and b!837900 (not condMapEmpty!24680)) mapNonEmpty!24680))

(get-info :version)

(assert (= (and mapNonEmpty!24680 ((_ is ValueCellFull!7254) mapValue!24680)) b!837905))

(assert (= (and b!837900 ((_ is ValueCellFull!7254) mapDefault!24680)) b!837901))

(assert (= start!72364 b!837900))

(declare-fun m!782597 () Bool)

(assert (=> b!837904 m!782597))

(declare-fun m!782599 () Bool)

(assert (=> b!837902 m!782599))

(declare-fun m!782601 () Bool)

(assert (=> mapNonEmpty!24680 m!782601))

(declare-fun m!782603 () Bool)

(assert (=> start!72364 m!782603))

(declare-fun m!782605 () Bool)

(assert (=> start!72364 m!782605))

(declare-fun m!782607 () Bool)

(assert (=> b!837899 m!782607))

(check-sat (not b!837899) (not b!837902) (not b!837904) (not start!72364) tp_is_empty!15387 (not mapNonEmpty!24680))
(check-sat)
