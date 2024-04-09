; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83986 () Bool)

(assert start!83986)

(declare-fun b!980983 () Bool)

(declare-fun e!553046 () Bool)

(assert (=> b!980983 (= e!553046 false)))

(declare-fun lt!435604 () Bool)

(declare-datatypes ((array!61519 0))(
  ( (array!61520 (arr!29613 (Array (_ BitVec 32) (_ BitVec 64))) (size!30093 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61519)

(declare-datatypes ((List!20654 0))(
  ( (Nil!20651) (Cons!20650 (h!21812 (_ BitVec 64)) (t!29345 List!20654)) )
))
(declare-fun arrayNoDuplicates!0 (array!61519 (_ BitVec 32) List!20654) Bool)

(assert (=> b!980983 (= lt!435604 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20651))))

(declare-fun b!980984 () Bool)

(declare-fun res!656572 () Bool)

(assert (=> b!980984 (=> (not res!656572) (not e!553046))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35331 0))(
  ( (V!35332 (val!11431 Int)) )
))
(declare-datatypes ((ValueCell!10899 0))(
  ( (ValueCellFull!10899 (v!13993 V!35331)) (EmptyCell!10899) )
))
(declare-datatypes ((array!61521 0))(
  ( (array!61522 (arr!29614 (Array (_ BitVec 32) ValueCell!10899)) (size!30094 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61521)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980984 (= res!656572 (and (= (size!30094 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30093 _keys!1544) (size!30094 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980985 () Bool)

(declare-fun e!553045 () Bool)

(declare-fun tp_is_empty!22761 () Bool)

(assert (=> b!980985 (= e!553045 tp_is_empty!22761)))

(declare-fun b!980986 () Bool)

(declare-fun e!553044 () Bool)

(declare-fun e!553042 () Bool)

(declare-fun mapRes!36170 () Bool)

(assert (=> b!980986 (= e!553044 (and e!553042 mapRes!36170))))

(declare-fun condMapEmpty!36170 () Bool)

(declare-fun mapDefault!36170 () ValueCell!10899)

(assert (=> b!980986 (= condMapEmpty!36170 (= (arr!29614 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10899)) mapDefault!36170)))))

(declare-fun mapNonEmpty!36170 () Bool)

(declare-fun tp!68684 () Bool)

(assert (=> mapNonEmpty!36170 (= mapRes!36170 (and tp!68684 e!553045))))

(declare-fun mapRest!36170 () (Array (_ BitVec 32) ValueCell!10899))

(declare-fun mapKey!36170 () (_ BitVec 32))

(declare-fun mapValue!36170 () ValueCell!10899)

(assert (=> mapNonEmpty!36170 (= (arr!29614 _values!1278) (store mapRest!36170 mapKey!36170 mapValue!36170))))

(declare-fun b!980987 () Bool)

(declare-fun res!656573 () Bool)

(assert (=> b!980987 (=> (not res!656573) (not e!553046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61519 (_ BitVec 32)) Bool)

(assert (=> b!980987 (= res!656573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!656574 () Bool)

(assert (=> start!83986 (=> (not res!656574) (not e!553046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83986 (= res!656574 (validMask!0 mask!1948))))

(assert (=> start!83986 e!553046))

(assert (=> start!83986 true))

(declare-fun array_inv!22777 (array!61521) Bool)

(assert (=> start!83986 (and (array_inv!22777 _values!1278) e!553044)))

(declare-fun array_inv!22778 (array!61519) Bool)

(assert (=> start!83986 (array_inv!22778 _keys!1544)))

(declare-fun b!980988 () Bool)

(assert (=> b!980988 (= e!553042 tp_is_empty!22761)))

(declare-fun mapIsEmpty!36170 () Bool)

(assert (=> mapIsEmpty!36170 mapRes!36170))

(assert (= (and start!83986 res!656574) b!980984))

(assert (= (and b!980984 res!656572) b!980987))

(assert (= (and b!980987 res!656573) b!980983))

(assert (= (and b!980986 condMapEmpty!36170) mapIsEmpty!36170))

(assert (= (and b!980986 (not condMapEmpty!36170)) mapNonEmpty!36170))

(get-info :version)

(assert (= (and mapNonEmpty!36170 ((_ is ValueCellFull!10899) mapValue!36170)) b!980985))

(assert (= (and b!980986 ((_ is ValueCellFull!10899) mapDefault!36170)) b!980988))

(assert (= start!83986 b!980986))

(declare-fun m!908567 () Bool)

(assert (=> b!980983 m!908567))

(declare-fun m!908569 () Bool)

(assert (=> mapNonEmpty!36170 m!908569))

(declare-fun m!908571 () Bool)

(assert (=> b!980987 m!908571))

(declare-fun m!908573 () Bool)

(assert (=> start!83986 m!908573))

(declare-fun m!908575 () Bool)

(assert (=> start!83986 m!908575))

(declare-fun m!908577 () Bool)

(assert (=> start!83986 m!908577))

(check-sat (not start!83986) (not b!980987) (not mapNonEmpty!36170) (not b!980983) tp_is_empty!22761)
(check-sat)
