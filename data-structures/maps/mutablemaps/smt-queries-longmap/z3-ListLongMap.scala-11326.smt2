; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131894 () Bool)

(assert start!131894)

(declare-fun b!1543586 () Bool)

(declare-fun res!1059143 () Bool)

(declare-fun e!859145 () Bool)

(assert (=> b!1543586 (=> (not res!1059143) (not e!859145))))

(declare-datatypes ((array!102879 0))(
  ( (array!102880 (arr!49637 (Array (_ BitVec 32) (_ BitVec 64))) (size!50188 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102879)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102879 (_ BitVec 32)) Bool)

(assert (=> b!1543586 (= res!1059143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543587 () Bool)

(declare-fun res!1059142 () Bool)

(assert (=> b!1543587 (=> (not res!1059142) (not e!859145))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((V!58911 0))(
  ( (V!58912 (val!19003 Int)) )
))
(declare-datatypes ((ValueCell!18015 0))(
  ( (ValueCellFull!18015 (v!21801 V!58911)) (EmptyCell!18015) )
))
(declare-datatypes ((array!102881 0))(
  ( (array!102882 (arr!49638 (Array (_ BitVec 32) ValueCell!18015)) (size!50189 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102881)

(assert (=> b!1543587 (= res!1059142 (and (= (size!50189 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50188 _keys!618) (size!50189 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1059141 () Bool)

(assert (=> start!131894 (=> (not res!1059141) (not e!859145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131894 (= res!1059141 (validMask!0 mask!926))))

(assert (=> start!131894 e!859145))

(assert (=> start!131894 true))

(declare-fun e!859147 () Bool)

(declare-fun array_inv!38535 (array!102881) Bool)

(assert (=> start!131894 (and (array_inv!38535 _values!470) e!859147)))

(declare-fun array_inv!38536 (array!102879) Bool)

(assert (=> start!131894 (array_inv!38536 _keys!618)))

(declare-fun b!1543588 () Bool)

(declare-fun e!859143 () Bool)

(declare-fun tp_is_empty!37851 () Bool)

(assert (=> b!1543588 (= e!859143 tp_is_empty!37851)))

(declare-fun mapNonEmpty!58480 () Bool)

(declare-fun mapRes!58480 () Bool)

(declare-fun tp!111008 () Bool)

(declare-fun e!859146 () Bool)

(assert (=> mapNonEmpty!58480 (= mapRes!58480 (and tp!111008 e!859146))))

(declare-fun mapRest!58480 () (Array (_ BitVec 32) ValueCell!18015))

(declare-fun mapKey!58480 () (_ BitVec 32))

(declare-fun mapValue!58480 () ValueCell!18015)

(assert (=> mapNonEmpty!58480 (= (arr!49638 _values!470) (store mapRest!58480 mapKey!58480 mapValue!58480))))

(declare-fun b!1543589 () Bool)

(assert (=> b!1543589 (= e!859146 tp_is_empty!37851)))

(declare-fun mapIsEmpty!58480 () Bool)

(assert (=> mapIsEmpty!58480 mapRes!58480))

(declare-fun b!1543590 () Bool)

(assert (=> b!1543590 (= e!859145 false)))

(declare-fun lt!665951 () Bool)

(declare-datatypes ((List!36076 0))(
  ( (Nil!36073) (Cons!36072 (h!37518 (_ BitVec 64)) (t!50777 List!36076)) )
))
(declare-fun arrayNoDuplicates!0 (array!102879 (_ BitVec 32) List!36076) Bool)

(assert (=> b!1543590 (= lt!665951 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36073))))

(declare-fun b!1543591 () Bool)

(assert (=> b!1543591 (= e!859147 (and e!859143 mapRes!58480))))

(declare-fun condMapEmpty!58480 () Bool)

(declare-fun mapDefault!58480 () ValueCell!18015)

(assert (=> b!1543591 (= condMapEmpty!58480 (= (arr!49638 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18015)) mapDefault!58480)))))

(assert (= (and start!131894 res!1059141) b!1543587))

(assert (= (and b!1543587 res!1059142) b!1543586))

(assert (= (and b!1543586 res!1059143) b!1543590))

(assert (= (and b!1543591 condMapEmpty!58480) mapIsEmpty!58480))

(assert (= (and b!1543591 (not condMapEmpty!58480)) mapNonEmpty!58480))

(get-info :version)

(assert (= (and mapNonEmpty!58480 ((_ is ValueCellFull!18015) mapValue!58480)) b!1543589))

(assert (= (and b!1543591 ((_ is ValueCellFull!18015) mapDefault!58480)) b!1543588))

(assert (= start!131894 b!1543591))

(declare-fun m!1424851 () Bool)

(assert (=> b!1543586 m!1424851))

(declare-fun m!1424853 () Bool)

(assert (=> start!131894 m!1424853))

(declare-fun m!1424855 () Bool)

(assert (=> start!131894 m!1424855))

(declare-fun m!1424857 () Bool)

(assert (=> start!131894 m!1424857))

(declare-fun m!1424859 () Bool)

(assert (=> mapNonEmpty!58480 m!1424859))

(declare-fun m!1424861 () Bool)

(assert (=> b!1543590 m!1424861))

(check-sat (not start!131894) (not mapNonEmpty!58480) (not b!1543586) tp_is_empty!37851 (not b!1543590))
(check-sat)
