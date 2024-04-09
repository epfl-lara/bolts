; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131906 () Bool)

(assert start!131906)

(declare-fun b!1543694 () Bool)

(declare-fun e!859236 () Bool)

(assert (=> b!1543694 (= e!859236 false)))

(declare-fun lt!665969 () Bool)

(declare-datatypes ((array!102901 0))(
  ( (array!102902 (arr!49648 (Array (_ BitVec 32) (_ BitVec 64))) (size!50199 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102901)

(declare-datatypes ((List!36079 0))(
  ( (Nil!36076) (Cons!36075 (h!37521 (_ BitVec 64)) (t!50780 List!36079)) )
))
(declare-fun arrayNoDuplicates!0 (array!102901 (_ BitVec 32) List!36079) Bool)

(assert (=> b!1543694 (= lt!665969 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36076))))

(declare-fun mapNonEmpty!58498 () Bool)

(declare-fun mapRes!58498 () Bool)

(declare-fun tp!111026 () Bool)

(declare-fun e!859237 () Bool)

(assert (=> mapNonEmpty!58498 (= mapRes!58498 (and tp!111026 e!859237))))

(declare-datatypes ((V!58927 0))(
  ( (V!58928 (val!19009 Int)) )
))
(declare-datatypes ((ValueCell!18021 0))(
  ( (ValueCellFull!18021 (v!21807 V!58927)) (EmptyCell!18021) )
))
(declare-fun mapRest!58498 () (Array (_ BitVec 32) ValueCell!18021))

(declare-fun mapValue!58498 () ValueCell!18021)

(declare-datatypes ((array!102903 0))(
  ( (array!102904 (arr!49649 (Array (_ BitVec 32) ValueCell!18021)) (size!50200 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102903)

(declare-fun mapKey!58498 () (_ BitVec 32))

(assert (=> mapNonEmpty!58498 (= (arr!49649 _values!470) (store mapRest!58498 mapKey!58498 mapValue!58498))))

(declare-fun b!1543695 () Bool)

(declare-fun res!1059196 () Bool)

(assert (=> b!1543695 (=> (not res!1059196) (not e!859236))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1543695 (= res!1059196 (and (= (size!50200 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50199 _keys!618) (size!50200 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1059197 () Bool)

(assert (=> start!131906 (=> (not res!1059197) (not e!859236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131906 (= res!1059197 (validMask!0 mask!926))))

(assert (=> start!131906 e!859236))

(assert (=> start!131906 true))

(declare-fun e!859235 () Bool)

(declare-fun array_inv!38545 (array!102903) Bool)

(assert (=> start!131906 (and (array_inv!38545 _values!470) e!859235)))

(declare-fun array_inv!38546 (array!102901) Bool)

(assert (=> start!131906 (array_inv!38546 _keys!618)))

(declare-fun mapIsEmpty!58498 () Bool)

(assert (=> mapIsEmpty!58498 mapRes!58498))

(declare-fun b!1543696 () Bool)

(declare-fun tp_is_empty!37863 () Bool)

(assert (=> b!1543696 (= e!859237 tp_is_empty!37863)))

(declare-fun b!1543697 () Bool)

(declare-fun res!1059195 () Bool)

(assert (=> b!1543697 (=> (not res!1059195) (not e!859236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102901 (_ BitVec 32)) Bool)

(assert (=> b!1543697 (= res!1059195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543698 () Bool)

(declare-fun e!859233 () Bool)

(assert (=> b!1543698 (= e!859233 tp_is_empty!37863)))

(declare-fun b!1543699 () Bool)

(assert (=> b!1543699 (= e!859235 (and e!859233 mapRes!58498))))

(declare-fun condMapEmpty!58498 () Bool)

(declare-fun mapDefault!58498 () ValueCell!18021)

(assert (=> b!1543699 (= condMapEmpty!58498 (= (arr!49649 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18021)) mapDefault!58498)))))

(assert (= (and start!131906 res!1059197) b!1543695))

(assert (= (and b!1543695 res!1059196) b!1543697))

(assert (= (and b!1543697 res!1059195) b!1543694))

(assert (= (and b!1543699 condMapEmpty!58498) mapIsEmpty!58498))

(assert (= (and b!1543699 (not condMapEmpty!58498)) mapNonEmpty!58498))

(get-info :version)

(assert (= (and mapNonEmpty!58498 ((_ is ValueCellFull!18021) mapValue!58498)) b!1543696))

(assert (= (and b!1543699 ((_ is ValueCellFull!18021) mapDefault!58498)) b!1543698))

(assert (= start!131906 b!1543699))

(declare-fun m!1424923 () Bool)

(assert (=> b!1543694 m!1424923))

(declare-fun m!1424925 () Bool)

(assert (=> mapNonEmpty!58498 m!1424925))

(declare-fun m!1424927 () Bool)

(assert (=> start!131906 m!1424927))

(declare-fun m!1424929 () Bool)

(assert (=> start!131906 m!1424929))

(declare-fun m!1424931 () Bool)

(assert (=> start!131906 m!1424931))

(declare-fun m!1424933 () Bool)

(assert (=> b!1543697 m!1424933))

(check-sat (not b!1543697) (not start!131906) (not b!1543694) tp_is_empty!37863 (not mapNonEmpty!58498))
(check-sat)
