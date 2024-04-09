; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111926 () Bool)

(assert start!111926)

(declare-fun b_free!30489 () Bool)

(declare-fun b_next!30489 () Bool)

(assert (=> start!111926 (= b_free!30489 (not b_next!30489))))

(declare-fun tp!106947 () Bool)

(declare-fun b_and!49083 () Bool)

(assert (=> start!111926 (= tp!106947 b_and!49083)))

(declare-fun b!1325737 () Bool)

(declare-fun e!755739 () Bool)

(assert (=> b!1325737 (= e!755739 (not true))))

(declare-datatypes ((V!53515 0))(
  ( (V!53516 (val!18229 Int)) )
))
(declare-datatypes ((tuple2!23666 0))(
  ( (tuple2!23667 (_1!11843 (_ BitVec 64)) (_2!11843 V!53515)) )
))
(declare-datatypes ((List!30834 0))(
  ( (Nil!30831) (Cons!30830 (h!32039 tuple2!23666) (t!44801 List!30834)) )
))
(declare-datatypes ((ListLongMap!21335 0))(
  ( (ListLongMap!21336 (toList!10683 List!30834)) )
))
(declare-fun lt!589782 () ListLongMap!21335)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8776 (ListLongMap!21335 (_ BitVec 64)) Bool)

(assert (=> b!1325737 (contains!8776 lt!589782 k0!1164)))

(declare-fun minValue!1279 () V!53515)

(declare-datatypes ((Unit!43602 0))(
  ( (Unit!43603) )
))
(declare-fun lt!589783 () Unit!43602)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!208 ((_ BitVec 64) (_ BitVec 64) V!53515 ListLongMap!21335) Unit!43602)

(assert (=> b!1325737 (= lt!589783 (lemmaInListMapAfterAddingDiffThenInBefore!208 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589782))))

(declare-datatypes ((array!89487 0))(
  ( (array!89488 (arr!43212 (Array (_ BitVec 32) (_ BitVec 64))) (size!43763 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89487)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53515)

(declare-datatypes ((ValueCell!17256 0))(
  ( (ValueCellFull!17256 (v!20860 V!53515)) (EmptyCell!17256) )
))
(declare-datatypes ((array!89489 0))(
  ( (array!89490 (arr!43213 (Array (_ BitVec 32) ValueCell!17256)) (size!43764 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89489)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun +!4598 (ListLongMap!21335 tuple2!23666) ListLongMap!21335)

(declare-fun getCurrentListMapNoExtraKeys!6316 (array!89487 array!89489 (_ BitVec 32) (_ BitVec 32) V!53515 V!53515 (_ BitVec 32) Int) ListLongMap!21335)

(declare-fun get!21811 (ValueCell!17256 V!53515) V!53515)

(declare-fun dynLambda!3635 (Int (_ BitVec 64)) V!53515)

(assert (=> b!1325737 (= lt!589782 (+!4598 (+!4598 (getCurrentListMapNoExtraKeys!6316 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23667 (select (arr!43212 _keys!1609) from!2000) (get!21811 (select (arr!43213 _values!1337) from!2000) (dynLambda!3635 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23667 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapNonEmpty!56115 () Bool)

(declare-fun mapRes!56115 () Bool)

(declare-fun tp!106948 () Bool)

(declare-fun e!755738 () Bool)

(assert (=> mapNonEmpty!56115 (= mapRes!56115 (and tp!106948 e!755738))))

(declare-fun mapRest!56115 () (Array (_ BitVec 32) ValueCell!17256))

(declare-fun mapValue!56115 () ValueCell!17256)

(declare-fun mapKey!56115 () (_ BitVec 32))

(assert (=> mapNonEmpty!56115 (= (arr!43213 _values!1337) (store mapRest!56115 mapKey!56115 mapValue!56115))))

(declare-fun b!1325738 () Bool)

(declare-fun res!879966 () Bool)

(assert (=> b!1325738 (=> (not res!879966) (not e!755739))))

(declare-datatypes ((List!30835 0))(
  ( (Nil!30832) (Cons!30831 (h!32040 (_ BitVec 64)) (t!44802 List!30835)) )
))
(declare-fun arrayNoDuplicates!0 (array!89487 (_ BitVec 32) List!30835) Bool)

(assert (=> b!1325738 (= res!879966 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30832))))

(declare-fun b!1325739 () Bool)

(declare-fun res!879972 () Bool)

(assert (=> b!1325739 (=> (not res!879972) (not e!755739))))

(assert (=> b!1325739 (= res!879972 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43763 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325740 () Bool)

(declare-fun res!879967 () Bool)

(assert (=> b!1325740 (=> (not res!879967) (not e!755739))))

(declare-fun getCurrentListMap!5617 (array!89487 array!89489 (_ BitVec 32) (_ BitVec 32) V!53515 V!53515 (_ BitVec 32) Int) ListLongMap!21335)

(assert (=> b!1325740 (= res!879967 (contains!8776 (getCurrentListMap!5617 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1325741 () Bool)

(declare-fun e!755736 () Bool)

(declare-fun tp_is_empty!36309 () Bool)

(assert (=> b!1325741 (= e!755736 tp_is_empty!36309)))

(declare-fun b!1325742 () Bool)

(declare-fun e!755740 () Bool)

(assert (=> b!1325742 (= e!755740 (and e!755736 mapRes!56115))))

(declare-fun condMapEmpty!56115 () Bool)

(declare-fun mapDefault!56115 () ValueCell!17256)

(assert (=> b!1325742 (= condMapEmpty!56115 (= (arr!43213 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17256)) mapDefault!56115)))))

(declare-fun b!1325743 () Bool)

(declare-fun res!879965 () Bool)

(assert (=> b!1325743 (=> (not res!879965) (not e!755739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325743 (= res!879965 (validKeyInArray!0 (select (arr!43212 _keys!1609) from!2000)))))

(declare-fun res!879970 () Bool)

(assert (=> start!111926 (=> (not res!879970) (not e!755739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111926 (= res!879970 (validMask!0 mask!2019))))

(assert (=> start!111926 e!755739))

(declare-fun array_inv!32561 (array!89487) Bool)

(assert (=> start!111926 (array_inv!32561 _keys!1609)))

(assert (=> start!111926 true))

(assert (=> start!111926 tp_is_empty!36309))

(declare-fun array_inv!32562 (array!89489) Bool)

(assert (=> start!111926 (and (array_inv!32562 _values!1337) e!755740)))

(assert (=> start!111926 tp!106947))

(declare-fun b!1325744 () Bool)

(declare-fun res!879968 () Bool)

(assert (=> b!1325744 (=> (not res!879968) (not e!755739))))

(assert (=> b!1325744 (= res!879968 (and (= (size!43764 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43763 _keys!1609) (size!43764 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325745 () Bool)

(declare-fun res!879969 () Bool)

(assert (=> b!1325745 (=> (not res!879969) (not e!755739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89487 (_ BitVec 32)) Bool)

(assert (=> b!1325745 (= res!879969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325746 () Bool)

(assert (=> b!1325746 (= e!755738 tp_is_empty!36309)))

(declare-fun b!1325747 () Bool)

(declare-fun res!879971 () Bool)

(assert (=> b!1325747 (=> (not res!879971) (not e!755739))))

(assert (=> b!1325747 (= res!879971 (not (= (select (arr!43212 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!56115 () Bool)

(assert (=> mapIsEmpty!56115 mapRes!56115))

(assert (= (and start!111926 res!879970) b!1325744))

(assert (= (and b!1325744 res!879968) b!1325745))

(assert (= (and b!1325745 res!879969) b!1325738))

(assert (= (and b!1325738 res!879966) b!1325739))

(assert (= (and b!1325739 res!879972) b!1325740))

(assert (= (and b!1325740 res!879967) b!1325747))

(assert (= (and b!1325747 res!879971) b!1325743))

(assert (= (and b!1325743 res!879965) b!1325737))

(assert (= (and b!1325742 condMapEmpty!56115) mapIsEmpty!56115))

(assert (= (and b!1325742 (not condMapEmpty!56115)) mapNonEmpty!56115))

(get-info :version)

(assert (= (and mapNonEmpty!56115 ((_ is ValueCellFull!17256) mapValue!56115)) b!1325746))

(assert (= (and b!1325742 ((_ is ValueCellFull!17256) mapDefault!56115)) b!1325741))

(assert (= start!111926 b!1325742))

(declare-fun b_lambda!23777 () Bool)

(assert (=> (not b_lambda!23777) (not b!1325737)))

(declare-fun t!44800 () Bool)

(declare-fun tb!11771 () Bool)

(assert (=> (and start!111926 (= defaultEntry!1340 defaultEntry!1340) t!44800) tb!11771))

(declare-fun result!24591 () Bool)

(assert (=> tb!11771 (= result!24591 tp_is_empty!36309)))

(assert (=> b!1325737 t!44800))

(declare-fun b_and!49085 () Bool)

(assert (= b_and!49083 (and (=> t!44800 result!24591) b_and!49085)))

(declare-fun m!1214677 () Bool)

(assert (=> b!1325740 m!1214677))

(assert (=> b!1325740 m!1214677))

(declare-fun m!1214679 () Bool)

(assert (=> b!1325740 m!1214679))

(declare-fun m!1214681 () Bool)

(assert (=> b!1325745 m!1214681))

(declare-fun m!1214683 () Bool)

(assert (=> b!1325738 m!1214683))

(declare-fun m!1214685 () Bool)

(assert (=> b!1325743 m!1214685))

(assert (=> b!1325743 m!1214685))

(declare-fun m!1214687 () Bool)

(assert (=> b!1325743 m!1214687))

(declare-fun m!1214689 () Bool)

(assert (=> start!111926 m!1214689))

(declare-fun m!1214691 () Bool)

(assert (=> start!111926 m!1214691))

(declare-fun m!1214693 () Bool)

(assert (=> start!111926 m!1214693))

(declare-fun m!1214695 () Bool)

(assert (=> b!1325737 m!1214695))

(declare-fun m!1214697 () Bool)

(assert (=> b!1325737 m!1214697))

(declare-fun m!1214699 () Bool)

(assert (=> b!1325737 m!1214699))

(assert (=> b!1325737 m!1214697))

(declare-fun m!1214701 () Bool)

(assert (=> b!1325737 m!1214701))

(declare-fun m!1214703 () Bool)

(assert (=> b!1325737 m!1214703))

(assert (=> b!1325737 m!1214701))

(declare-fun m!1214705 () Bool)

(assert (=> b!1325737 m!1214705))

(declare-fun m!1214707 () Bool)

(assert (=> b!1325737 m!1214707))

(assert (=> b!1325737 m!1214703))

(assert (=> b!1325737 m!1214699))

(declare-fun m!1214709 () Bool)

(assert (=> b!1325737 m!1214709))

(assert (=> b!1325737 m!1214685))

(assert (=> b!1325747 m!1214685))

(declare-fun m!1214711 () Bool)

(assert (=> mapNonEmpty!56115 m!1214711))

(check-sat (not b!1325737) (not start!111926) (not b_lambda!23777) (not b_next!30489) (not b!1325738) tp_is_empty!36309 (not b!1325745) (not b!1325743) (not b!1325740) b_and!49085 (not mapNonEmpty!56115))
(check-sat b_and!49085 (not b_next!30489))
