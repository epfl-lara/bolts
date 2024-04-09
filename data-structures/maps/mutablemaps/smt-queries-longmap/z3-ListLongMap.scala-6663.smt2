; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83980 () Bool)

(assert start!83980)

(declare-fun mapIsEmpty!36161 () Bool)

(declare-fun mapRes!36161 () Bool)

(assert (=> mapIsEmpty!36161 mapRes!36161))

(declare-fun b!980929 () Bool)

(declare-fun res!656545 () Bool)

(declare-fun e!553001 () Bool)

(assert (=> b!980929 (=> (not res!656545) (not e!553001))))

(declare-datatypes ((array!61507 0))(
  ( (array!61508 (arr!29607 (Array (_ BitVec 32) (_ BitVec 64))) (size!30087 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61507)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61507 (_ BitVec 32)) Bool)

(assert (=> b!980929 (= res!656545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980930 () Bool)

(declare-fun e!552997 () Bool)

(declare-fun tp_is_empty!22755 () Bool)

(assert (=> b!980930 (= e!552997 tp_is_empty!22755)))

(declare-fun res!656546 () Bool)

(assert (=> start!83980 (=> (not res!656546) (not e!553001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83980 (= res!656546 (validMask!0 mask!1948))))

(assert (=> start!83980 e!553001))

(assert (=> start!83980 true))

(declare-datatypes ((V!35323 0))(
  ( (V!35324 (val!11428 Int)) )
))
(declare-datatypes ((ValueCell!10896 0))(
  ( (ValueCellFull!10896 (v!13990 V!35323)) (EmptyCell!10896) )
))
(declare-datatypes ((array!61509 0))(
  ( (array!61510 (arr!29608 (Array (_ BitVec 32) ValueCell!10896)) (size!30088 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61509)

(declare-fun e!552999 () Bool)

(declare-fun array_inv!22775 (array!61509) Bool)

(assert (=> start!83980 (and (array_inv!22775 _values!1278) e!552999)))

(declare-fun array_inv!22776 (array!61507) Bool)

(assert (=> start!83980 (array_inv!22776 _keys!1544)))

(declare-fun b!980931 () Bool)

(declare-fun e!553000 () Bool)

(assert (=> b!980931 (= e!553000 tp_is_empty!22755)))

(declare-fun mapNonEmpty!36161 () Bool)

(declare-fun tp!68675 () Bool)

(assert (=> mapNonEmpty!36161 (= mapRes!36161 (and tp!68675 e!552997))))

(declare-fun mapKey!36161 () (_ BitVec 32))

(declare-fun mapRest!36161 () (Array (_ BitVec 32) ValueCell!10896))

(declare-fun mapValue!36161 () ValueCell!10896)

(assert (=> mapNonEmpty!36161 (= (arr!29608 _values!1278) (store mapRest!36161 mapKey!36161 mapValue!36161))))

(declare-fun b!980932 () Bool)

(declare-fun res!656547 () Bool)

(assert (=> b!980932 (=> (not res!656547) (not e!553001))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980932 (= res!656547 (and (= (size!30088 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30087 _keys!1544) (size!30088 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980933 () Bool)

(assert (=> b!980933 (= e!553001 false)))

(declare-fun lt!435595 () Bool)

(declare-datatypes ((List!20653 0))(
  ( (Nil!20650) (Cons!20649 (h!21811 (_ BitVec 64)) (t!29344 List!20653)) )
))
(declare-fun arrayNoDuplicates!0 (array!61507 (_ BitVec 32) List!20653) Bool)

(assert (=> b!980933 (= lt!435595 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20650))))

(declare-fun b!980934 () Bool)

(assert (=> b!980934 (= e!552999 (and e!553000 mapRes!36161))))

(declare-fun condMapEmpty!36161 () Bool)

(declare-fun mapDefault!36161 () ValueCell!10896)

(assert (=> b!980934 (= condMapEmpty!36161 (= (arr!29608 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10896)) mapDefault!36161)))))

(assert (= (and start!83980 res!656546) b!980932))

(assert (= (and b!980932 res!656547) b!980929))

(assert (= (and b!980929 res!656545) b!980933))

(assert (= (and b!980934 condMapEmpty!36161) mapIsEmpty!36161))

(assert (= (and b!980934 (not condMapEmpty!36161)) mapNonEmpty!36161))

(get-info :version)

(assert (= (and mapNonEmpty!36161 ((_ is ValueCellFull!10896) mapValue!36161)) b!980930))

(assert (= (and b!980934 ((_ is ValueCellFull!10896) mapDefault!36161)) b!980931))

(assert (= start!83980 b!980934))

(declare-fun m!908531 () Bool)

(assert (=> b!980929 m!908531))

(declare-fun m!908533 () Bool)

(assert (=> start!83980 m!908533))

(declare-fun m!908535 () Bool)

(assert (=> start!83980 m!908535))

(declare-fun m!908537 () Bool)

(assert (=> start!83980 m!908537))

(declare-fun m!908539 () Bool)

(assert (=> mapNonEmpty!36161 m!908539))

(declare-fun m!908541 () Bool)

(assert (=> b!980933 m!908541))

(check-sat (not b!980933) (not mapNonEmpty!36161) (not start!83980) tp_is_empty!22755 (not b!980929))
(check-sat)
