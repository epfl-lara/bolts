; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84552 () Bool)

(assert start!84552)

(declare-fun b_free!20019 () Bool)

(declare-fun b_next!20019 () Bool)

(assert (=> start!84552 (= b_free!20019 (not b_next!20019))))

(declare-fun tp!69843 () Bool)

(declare-fun b_and!32131 () Bool)

(assert (=> start!84552 (= tp!69843 b_and!32131)))

(declare-fun b!988462 () Bool)

(declare-fun e!557409 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((V!35963 0))(
  ( (V!35964 (val!11668 Int)) )
))
(declare-datatypes ((ValueCell!11136 0))(
  ( (ValueCellFull!11136 (v!14235 V!35963)) (EmptyCell!11136) )
))
(declare-datatypes ((array!62419 0))(
  ( (array!62420 (arr!30060 (Array (_ BitVec 32) ValueCell!11136)) (size!30540 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62419)

(assert (=> b!988462 (= e!557409 (bvsge from!1932 (size!30540 _values!1278)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35963)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14966 0))(
  ( (tuple2!14967 (_1!7493 (_ BitVec 64)) (_2!7493 V!35963)) )
))
(declare-datatypes ((List!20917 0))(
  ( (Nil!20914) (Cons!20913 (h!22075 tuple2!14966) (t!29862 List!20917)) )
))
(declare-datatypes ((ListLongMap!13677 0))(
  ( (ListLongMap!13678 (toList!6854 List!20917)) )
))
(declare-fun lt!438480 () ListLongMap!13677)

(declare-fun zeroValue!1220 () V!35963)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((array!62421 0))(
  ( (array!62422 (arr!30061 (Array (_ BitVec 32) (_ BitVec 64))) (size!30541 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62421)

(declare-fun getCurrentListMapNoExtraKeys!3504 (array!62421 array!62419 (_ BitVec 32) (_ BitVec 32) V!35963 V!35963 (_ BitVec 32) Int) ListLongMap!13677)

(assert (=> b!988462 (= lt!438480 (getCurrentListMapNoExtraKeys!3504 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988463 () Bool)

(declare-fun e!557410 () Bool)

(declare-fun e!557412 () Bool)

(declare-fun mapRes!36891 () Bool)

(assert (=> b!988463 (= e!557410 (and e!557412 mapRes!36891))))

(declare-fun condMapEmpty!36891 () Bool)

(declare-fun mapDefault!36891 () ValueCell!11136)

(assert (=> b!988463 (= condMapEmpty!36891 (= (arr!30060 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11136)) mapDefault!36891)))))

(declare-fun b!988464 () Bool)

(declare-fun res!661231 () Bool)

(assert (=> b!988464 (=> (not res!661231) (not e!557409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62421 (_ BitVec 32)) Bool)

(assert (=> b!988464 (= res!661231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988465 () Bool)

(declare-fun res!661236 () Bool)

(assert (=> b!988465 (=> (not res!661236) (not e!557409))))

(declare-datatypes ((List!20918 0))(
  ( (Nil!20915) (Cons!20914 (h!22076 (_ BitVec 64)) (t!29863 List!20918)) )
))
(declare-fun arrayNoDuplicates!0 (array!62421 (_ BitVec 32) List!20918) Bool)

(assert (=> b!988465 (= res!661236 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20915))))

(declare-fun b!988466 () Bool)

(declare-fun e!557411 () Bool)

(declare-fun tp_is_empty!23235 () Bool)

(assert (=> b!988466 (= e!557411 tp_is_empty!23235)))

(declare-fun mapIsEmpty!36891 () Bool)

(assert (=> mapIsEmpty!36891 mapRes!36891))

(declare-fun b!988467 () Bool)

(assert (=> b!988467 (= e!557412 tp_is_empty!23235)))

(declare-fun b!988468 () Bool)

(declare-fun res!661237 () Bool)

(assert (=> b!988468 (=> (not res!661237) (not e!557409))))

(assert (=> b!988468 (= res!661237 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!661235 () Bool)

(assert (=> start!84552 (=> (not res!661235) (not e!557409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84552 (= res!661235 (validMask!0 mask!1948))))

(assert (=> start!84552 e!557409))

(assert (=> start!84552 true))

(assert (=> start!84552 tp_is_empty!23235))

(declare-fun array_inv!23081 (array!62419) Bool)

(assert (=> start!84552 (and (array_inv!23081 _values!1278) e!557410)))

(assert (=> start!84552 tp!69843))

(declare-fun array_inv!23082 (array!62421) Bool)

(assert (=> start!84552 (array_inv!23082 _keys!1544)))

(declare-fun b!988469 () Bool)

(declare-fun res!661232 () Bool)

(assert (=> b!988469 (=> (not res!661232) (not e!557409))))

(assert (=> b!988469 (= res!661232 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30541 _keys!1544))))))

(declare-fun b!988470 () Bool)

(declare-fun res!661234 () Bool)

(assert (=> b!988470 (=> (not res!661234) (not e!557409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988470 (= res!661234 (validKeyInArray!0 (select (arr!30061 _keys!1544) from!1932)))))

(declare-fun b!988471 () Bool)

(declare-fun res!661233 () Bool)

(assert (=> b!988471 (=> (not res!661233) (not e!557409))))

(assert (=> b!988471 (= res!661233 (and (= (size!30540 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30541 _keys!1544) (size!30540 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36891 () Bool)

(declare-fun tp!69842 () Bool)

(assert (=> mapNonEmpty!36891 (= mapRes!36891 (and tp!69842 e!557411))))

(declare-fun mapRest!36891 () (Array (_ BitVec 32) ValueCell!11136))

(declare-fun mapValue!36891 () ValueCell!11136)

(declare-fun mapKey!36891 () (_ BitVec 32))

(assert (=> mapNonEmpty!36891 (= (arr!30060 _values!1278) (store mapRest!36891 mapKey!36891 mapValue!36891))))

(assert (= (and start!84552 res!661235) b!988471))

(assert (= (and b!988471 res!661233) b!988464))

(assert (= (and b!988464 res!661231) b!988465))

(assert (= (and b!988465 res!661236) b!988469))

(assert (= (and b!988469 res!661232) b!988470))

(assert (= (and b!988470 res!661234) b!988468))

(assert (= (and b!988468 res!661237) b!988462))

(assert (= (and b!988463 condMapEmpty!36891) mapIsEmpty!36891))

(assert (= (and b!988463 (not condMapEmpty!36891)) mapNonEmpty!36891))

(get-info :version)

(assert (= (and mapNonEmpty!36891 ((_ is ValueCellFull!11136) mapValue!36891)) b!988466))

(assert (= (and b!988463 ((_ is ValueCellFull!11136) mapDefault!36891)) b!988467))

(assert (= start!84552 b!988463))

(declare-fun m!915761 () Bool)

(assert (=> b!988465 m!915761))

(declare-fun m!915763 () Bool)

(assert (=> b!988462 m!915763))

(declare-fun m!915765 () Bool)

(assert (=> b!988464 m!915765))

(declare-fun m!915767 () Bool)

(assert (=> mapNonEmpty!36891 m!915767))

(declare-fun m!915769 () Bool)

(assert (=> b!988470 m!915769))

(assert (=> b!988470 m!915769))

(declare-fun m!915771 () Bool)

(assert (=> b!988470 m!915771))

(declare-fun m!915773 () Bool)

(assert (=> start!84552 m!915773))

(declare-fun m!915775 () Bool)

(assert (=> start!84552 m!915775))

(declare-fun m!915777 () Bool)

(assert (=> start!84552 m!915777))

(check-sat (not b!988470) b_and!32131 (not mapNonEmpty!36891) tp_is_empty!23235 (not b_next!20019) (not b!988464) (not start!84552) (not b!988462) (not b!988465))
(check-sat b_and!32131 (not b_next!20019))
