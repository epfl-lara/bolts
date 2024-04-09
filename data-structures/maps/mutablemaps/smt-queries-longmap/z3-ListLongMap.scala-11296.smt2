; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131714 () Bool)

(assert start!131714)

(declare-fun mapNonEmpty!58210 () Bool)

(declare-fun mapRes!58210 () Bool)

(declare-fun tp!110738 () Bool)

(declare-fun e!857797 () Bool)

(assert (=> mapNonEmpty!58210 (= mapRes!58210 (and tp!110738 e!857797))))

(declare-datatypes ((V!58671 0))(
  ( (V!58672 (val!18913 Int)) )
))
(declare-datatypes ((ValueCell!17925 0))(
  ( (ValueCellFull!17925 (v!21711 V!58671)) (EmptyCell!17925) )
))
(declare-fun mapRest!58210 () (Array (_ BitVec 32) ValueCell!17925))

(declare-fun mapValue!58210 () ValueCell!17925)

(declare-datatypes ((array!102539 0))(
  ( (array!102540 (arr!49467 (Array (_ BitVec 32) ValueCell!17925)) (size!50018 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102539)

(declare-fun mapKey!58210 () (_ BitVec 32))

(assert (=> mapNonEmpty!58210 (= (arr!49467 _values!470) (store mapRest!58210 mapKey!58210 mapValue!58210))))

(declare-fun b!1541966 () Bool)

(declare-fun res!1058332 () Bool)

(declare-fun e!857796 () Bool)

(assert (=> b!1541966 (=> (not res!1058332) (not e!857796))))

(declare-datatypes ((array!102541 0))(
  ( (array!102542 (arr!49468 (Array (_ BitVec 32) (_ BitVec 64))) (size!50019 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102541)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1541966 (= res!1058332 (and (= (size!50018 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50019 _keys!618) (size!50018 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541967 () Bool)

(declare-fun tp_is_empty!37671 () Bool)

(assert (=> b!1541967 (= e!857797 tp_is_empty!37671)))

(declare-fun res!1058331 () Bool)

(assert (=> start!131714 (=> (not res!1058331) (not e!857796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131714 (= res!1058331 (validMask!0 mask!926))))

(assert (=> start!131714 e!857796))

(assert (=> start!131714 true))

(declare-fun e!857793 () Bool)

(declare-fun array_inv!38403 (array!102539) Bool)

(assert (=> start!131714 (and (array_inv!38403 _values!470) e!857793)))

(declare-fun array_inv!38404 (array!102541) Bool)

(assert (=> start!131714 (array_inv!38404 _keys!618)))

(declare-fun b!1541968 () Bool)

(declare-fun e!857795 () Bool)

(assert (=> b!1541968 (= e!857793 (and e!857795 mapRes!58210))))

(declare-fun condMapEmpty!58210 () Bool)

(declare-fun mapDefault!58210 () ValueCell!17925)

(assert (=> b!1541968 (= condMapEmpty!58210 (= (arr!49467 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17925)) mapDefault!58210)))))

(declare-fun b!1541969 () Bool)

(assert (=> b!1541969 (= e!857795 tp_is_empty!37671)))

(declare-fun b!1541970 () Bool)

(assert (=> b!1541970 (= e!857796 false)))

(declare-fun lt!665681 () Bool)

(declare-datatypes ((List!36018 0))(
  ( (Nil!36015) (Cons!36014 (h!37460 (_ BitVec 64)) (t!50719 List!36018)) )
))
(declare-fun arrayNoDuplicates!0 (array!102541 (_ BitVec 32) List!36018) Bool)

(assert (=> b!1541970 (= lt!665681 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36015))))

(declare-fun b!1541971 () Bool)

(declare-fun res!1058333 () Bool)

(assert (=> b!1541971 (=> (not res!1058333) (not e!857796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102541 (_ BitVec 32)) Bool)

(assert (=> b!1541971 (= res!1058333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58210 () Bool)

(assert (=> mapIsEmpty!58210 mapRes!58210))

(assert (= (and start!131714 res!1058331) b!1541966))

(assert (= (and b!1541966 res!1058332) b!1541971))

(assert (= (and b!1541971 res!1058333) b!1541970))

(assert (= (and b!1541968 condMapEmpty!58210) mapIsEmpty!58210))

(assert (= (and b!1541968 (not condMapEmpty!58210)) mapNonEmpty!58210))

(get-info :version)

(assert (= (and mapNonEmpty!58210 ((_ is ValueCellFull!17925) mapValue!58210)) b!1541967))

(assert (= (and b!1541968 ((_ is ValueCellFull!17925) mapDefault!58210)) b!1541969))

(assert (= start!131714 b!1541968))

(declare-fun m!1423771 () Bool)

(assert (=> mapNonEmpty!58210 m!1423771))

(declare-fun m!1423773 () Bool)

(assert (=> start!131714 m!1423773))

(declare-fun m!1423775 () Bool)

(assert (=> start!131714 m!1423775))

(declare-fun m!1423777 () Bool)

(assert (=> start!131714 m!1423777))

(declare-fun m!1423779 () Bool)

(assert (=> b!1541970 m!1423779))

(declare-fun m!1423781 () Bool)

(assert (=> b!1541971 m!1423781))

(check-sat tp_is_empty!37671 (not b!1541970) (not b!1541971) (not mapNonEmpty!58210) (not start!131714))
(check-sat)
