; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84004 () Bool)

(assert start!84004)

(declare-fun b_free!19731 () Bool)

(declare-fun b_next!19731 () Bool)

(assert (=> start!84004 (= b_free!19731 (not b_next!19731))))

(declare-fun tp!68716 () Bool)

(declare-fun b_and!31567 () Bool)

(assert (=> start!84004 (= tp!68716 b_and!31567)))

(declare-fun b!981192 () Bool)

(declare-fun res!656701 () Bool)

(declare-fun e!553181 () Bool)

(assert (=> b!981192 (=> (not res!656701) (not e!553181))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981192 (= res!656701 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!36197 () Bool)

(declare-fun mapRes!36197 () Bool)

(assert (=> mapIsEmpty!36197 mapRes!36197))

(declare-fun b!981193 () Bool)

(declare-fun res!656706 () Bool)

(assert (=> b!981193 (=> (not res!656706) (not e!553181))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61553 0))(
  ( (array!61554 (arr!29630 (Array (_ BitVec 32) (_ BitVec 64))) (size!30110 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61553)

(assert (=> b!981193 (= res!656706 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30110 _keys!1544))))))

(declare-fun b!981194 () Bool)

(declare-fun res!656705 () Bool)

(assert (=> b!981194 (=> (not res!656705) (not e!553181))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35355 0))(
  ( (V!35356 (val!11440 Int)) )
))
(declare-datatypes ((ValueCell!10908 0))(
  ( (ValueCellFull!10908 (v!14002 V!35355)) (EmptyCell!10908) )
))
(declare-datatypes ((array!61555 0))(
  ( (array!61556 (arr!29631 (Array (_ BitVec 32) ValueCell!10908)) (size!30111 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61555)

(assert (=> b!981194 (= res!656705 (and (= (size!30111 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30110 _keys!1544) (size!30111 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981195 () Bool)

(declare-fun e!553179 () Bool)

(declare-fun e!553180 () Bool)

(assert (=> b!981195 (= e!553179 (and e!553180 mapRes!36197))))

(declare-fun condMapEmpty!36197 () Bool)

(declare-fun mapDefault!36197 () ValueCell!10908)

(assert (=> b!981195 (= condMapEmpty!36197 (= (arr!29631 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10908)) mapDefault!36197)))))

(declare-fun b!981196 () Bool)

(declare-fun res!656704 () Bool)

(assert (=> b!981196 (=> (not res!656704) (not e!553181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61553 (_ BitVec 32)) Bool)

(assert (=> b!981196 (= res!656704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981197 () Bool)

(declare-fun res!656700 () Bool)

(assert (=> b!981197 (=> (not res!656700) (not e!553181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981197 (= res!656700 (validKeyInArray!0 (select (arr!29630 _keys!1544) from!1932)))))

(declare-fun b!981198 () Bool)

(assert (=> b!981198 (= e!553181 false)))

(declare-fun minValue!1220 () V!35355)

(declare-datatypes ((tuple2!14754 0))(
  ( (tuple2!14755 (_1!7387 (_ BitVec 64)) (_2!7387 V!35355)) )
))
(declare-datatypes ((List!20661 0))(
  ( (Nil!20658) (Cons!20657 (h!21819 tuple2!14754) (t!29352 List!20661)) )
))
(declare-datatypes ((ListLongMap!13465 0))(
  ( (ListLongMap!13466 (toList!6748 List!20661)) )
))
(declare-fun lt!435622 () ListLongMap!13465)

(declare-fun zeroValue!1220 () V!35355)

(declare-fun defaultEntry!1281 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3410 (array!61553 array!61555 (_ BitVec 32) (_ BitVec 32) V!35355 V!35355 (_ BitVec 32) Int) ListLongMap!13465)

(assert (=> b!981198 (= lt!435622 (getCurrentListMapNoExtraKeys!3410 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981199 () Bool)

(declare-fun e!553177 () Bool)

(declare-fun tp_is_empty!22779 () Bool)

(assert (=> b!981199 (= e!553177 tp_is_empty!22779)))

(declare-fun res!656703 () Bool)

(assert (=> start!84004 (=> (not res!656703) (not e!553181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84004 (= res!656703 (validMask!0 mask!1948))))

(assert (=> start!84004 e!553181))

(assert (=> start!84004 true))

(assert (=> start!84004 tp_is_empty!22779))

(declare-fun array_inv!22791 (array!61555) Bool)

(assert (=> start!84004 (and (array_inv!22791 _values!1278) e!553179)))

(assert (=> start!84004 tp!68716))

(declare-fun array_inv!22792 (array!61553) Bool)

(assert (=> start!84004 (array_inv!22792 _keys!1544)))

(declare-fun mapNonEmpty!36197 () Bool)

(declare-fun tp!68717 () Bool)

(assert (=> mapNonEmpty!36197 (= mapRes!36197 (and tp!68717 e!553177))))

(declare-fun mapKey!36197 () (_ BitVec 32))

(declare-fun mapValue!36197 () ValueCell!10908)

(declare-fun mapRest!36197 () (Array (_ BitVec 32) ValueCell!10908))

(assert (=> mapNonEmpty!36197 (= (arr!29631 _values!1278) (store mapRest!36197 mapKey!36197 mapValue!36197))))

(declare-fun b!981200 () Bool)

(declare-fun res!656702 () Bool)

(assert (=> b!981200 (=> (not res!656702) (not e!553181))))

(declare-datatypes ((List!20662 0))(
  ( (Nil!20659) (Cons!20658 (h!21820 (_ BitVec 64)) (t!29353 List!20662)) )
))
(declare-fun arrayNoDuplicates!0 (array!61553 (_ BitVec 32) List!20662) Bool)

(assert (=> b!981200 (= res!656702 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20659))))

(declare-fun b!981201 () Bool)

(assert (=> b!981201 (= e!553180 tp_is_empty!22779)))

(assert (= (and start!84004 res!656703) b!981194))

(assert (= (and b!981194 res!656705) b!981196))

(assert (= (and b!981196 res!656704) b!981200))

(assert (= (and b!981200 res!656702) b!981193))

(assert (= (and b!981193 res!656706) b!981197))

(assert (= (and b!981197 res!656700) b!981192))

(assert (= (and b!981192 res!656701) b!981198))

(assert (= (and b!981195 condMapEmpty!36197) mapIsEmpty!36197))

(assert (= (and b!981195 (not condMapEmpty!36197)) mapNonEmpty!36197))

(get-info :version)

(assert (= (and mapNonEmpty!36197 ((_ is ValueCellFull!10908) mapValue!36197)) b!981199))

(assert (= (and b!981195 ((_ is ValueCellFull!10908) mapDefault!36197)) b!981201))

(assert (= start!84004 b!981195))

(declare-fun m!908693 () Bool)

(assert (=> b!981198 m!908693))

(declare-fun m!908695 () Bool)

(assert (=> mapNonEmpty!36197 m!908695))

(declare-fun m!908697 () Bool)

(assert (=> b!981196 m!908697))

(declare-fun m!908699 () Bool)

(assert (=> start!84004 m!908699))

(declare-fun m!908701 () Bool)

(assert (=> start!84004 m!908701))

(declare-fun m!908703 () Bool)

(assert (=> start!84004 m!908703))

(declare-fun m!908705 () Bool)

(assert (=> b!981200 m!908705))

(declare-fun m!908707 () Bool)

(assert (=> b!981197 m!908707))

(assert (=> b!981197 m!908707))

(declare-fun m!908709 () Bool)

(assert (=> b!981197 m!908709))

(check-sat (not b!981198) b_and!31567 (not mapNonEmpty!36197) (not b!981197) (not b_next!19731) tp_is_empty!22779 (not start!84004) (not b!981200) (not b!981196))
(check-sat b_and!31567 (not b_next!19731))
