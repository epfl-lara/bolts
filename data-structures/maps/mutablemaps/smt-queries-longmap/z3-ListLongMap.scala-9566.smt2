; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113296 () Bool)

(assert start!113296)

(declare-fun b_free!31311 () Bool)

(declare-fun b_next!31311 () Bool)

(assert (=> start!113296 (= b_free!31311 (not b_next!31311))))

(declare-fun tp!109739 () Bool)

(declare-fun b_and!50539 () Bool)

(assert (=> start!113296 (= tp!109739 b_and!50539)))

(declare-fun res!891616 () Bool)

(declare-fun e!764783 () Bool)

(assert (=> start!113296 (=> (not res!891616) (not e!764783))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113296 (= res!891616 (validMask!0 mask!1977))))

(assert (=> start!113296 e!764783))

(declare-fun tp_is_empty!37311 () Bool)

(assert (=> start!113296 tp_is_empty!37311))

(assert (=> start!113296 true))

(declare-datatypes ((array!91421 0))(
  ( (array!91422 (arr!44162 (Array (_ BitVec 32) (_ BitVec 64))) (size!44713 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91421)

(declare-fun array_inv!33201 (array!91421) Bool)

(assert (=> start!113296 (array_inv!33201 _keys!1571)))

(declare-datatypes ((V!54851 0))(
  ( (V!54852 (val!18730 Int)) )
))
(declare-datatypes ((ValueCell!17757 0))(
  ( (ValueCellFull!17757 (v!21376 V!54851)) (EmptyCell!17757) )
))
(declare-datatypes ((array!91423 0))(
  ( (array!91424 (arr!44163 (Array (_ BitVec 32) ValueCell!17757)) (size!44714 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91423)

(declare-fun e!764782 () Bool)

(declare-fun array_inv!33202 (array!91423) Bool)

(assert (=> start!113296 (and (array_inv!33202 _values!1303) e!764782)))

(assert (=> start!113296 tp!109739))

(declare-fun b!1343702 () Bool)

(declare-fun res!891620 () Bool)

(assert (=> b!1343702 (=> (not res!891620) (not e!764783))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343702 (= res!891620 (validKeyInArray!0 (select (arr!44162 _keys!1571) from!1960)))))

(declare-fun b!1343703 () Bool)

(declare-fun res!891617 () Bool)

(assert (=> b!1343703 (=> (not res!891617) (not e!764783))))

(declare-fun minValue!1245 () V!54851)

(declare-fun zeroValue!1245 () V!54851)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24284 0))(
  ( (tuple2!24285 (_1!12152 (_ BitVec 64)) (_2!12152 V!54851)) )
))
(declare-datatypes ((List!31458 0))(
  ( (Nil!31455) (Cons!31454 (h!32663 tuple2!24284) (t!45987 List!31458)) )
))
(declare-datatypes ((ListLongMap!21953 0))(
  ( (ListLongMap!21954 (toList!10992 List!31458)) )
))
(declare-fun contains!9104 (ListLongMap!21953 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5885 (array!91421 array!91423 (_ BitVec 32) (_ BitVec 32) V!54851 V!54851 (_ BitVec 32) Int) ListLongMap!21953)

(assert (=> b!1343703 (= res!891617 (contains!9104 (getCurrentListMap!5885 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343704 () Bool)

(declare-fun e!764786 () Bool)

(assert (=> b!1343704 (= e!764786 tp_is_empty!37311)))

(declare-fun b!1343705 () Bool)

(declare-fun e!764785 () Bool)

(declare-fun mapRes!57673 () Bool)

(assert (=> b!1343705 (= e!764782 (and e!764785 mapRes!57673))))

(declare-fun condMapEmpty!57673 () Bool)

(declare-fun mapDefault!57673 () ValueCell!17757)

(assert (=> b!1343705 (= condMapEmpty!57673 (= (arr!44163 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17757)) mapDefault!57673)))))

(declare-fun b!1343706 () Bool)

(declare-fun res!891621 () Bool)

(assert (=> b!1343706 (=> (not res!891621) (not e!764783))))

(assert (=> b!1343706 (= res!891621 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343707 () Bool)

(declare-fun res!891618 () Bool)

(assert (=> b!1343707 (=> (not res!891618) (not e!764783))))

(assert (=> b!1343707 (= res!891618 (and (= (size!44714 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44713 _keys!1571) (size!44714 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343708 () Bool)

(declare-fun res!891615 () Bool)

(assert (=> b!1343708 (=> (not res!891615) (not e!764783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91421 (_ BitVec 32)) Bool)

(assert (=> b!1343708 (= res!891615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57673 () Bool)

(declare-fun tp!109738 () Bool)

(assert (=> mapNonEmpty!57673 (= mapRes!57673 (and tp!109738 e!764786))))

(declare-fun mapKey!57673 () (_ BitVec 32))

(declare-fun mapRest!57673 () (Array (_ BitVec 32) ValueCell!17757))

(declare-fun mapValue!57673 () ValueCell!17757)

(assert (=> mapNonEmpty!57673 (= (arr!44163 _values!1303) (store mapRest!57673 mapKey!57673 mapValue!57673))))

(declare-fun b!1343709 () Bool)

(declare-fun res!891619 () Bool)

(assert (=> b!1343709 (=> (not res!891619) (not e!764783))))

(assert (=> b!1343709 (= res!891619 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44713 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343710 () Bool)

(assert (=> b!1343710 (= e!764785 tp_is_empty!37311)))

(declare-fun b!1343711 () Bool)

(assert (=> b!1343711 (= e!764783 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun lt!595031 () ListLongMap!21953)

(declare-fun +!4788 (ListLongMap!21953 tuple2!24284) ListLongMap!21953)

(assert (=> b!1343711 (contains!9104 (+!4788 lt!595031 (tuple2!24285 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44041 0))(
  ( (Unit!44042) )
))
(declare-fun lt!595028 () Unit!44041)

(declare-fun addStillContains!1214 (ListLongMap!21953 (_ BitVec 64) V!54851 (_ BitVec 64)) Unit!44041)

(assert (=> b!1343711 (= lt!595028 (addStillContains!1214 lt!595031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1343711 (contains!9104 lt!595031 k0!1142)))

(declare-fun lt!595032 () V!54851)

(declare-fun lt!595029 () Unit!44041)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!380 ((_ BitVec 64) (_ BitVec 64) V!54851 ListLongMap!21953) Unit!44041)

(assert (=> b!1343711 (= lt!595029 (lemmaInListMapAfterAddingDiffThenInBefore!380 k0!1142 (select (arr!44162 _keys!1571) from!1960) lt!595032 lt!595031))))

(declare-fun lt!595030 () ListLongMap!21953)

(assert (=> b!1343711 (contains!9104 lt!595030 k0!1142)))

(declare-fun lt!595033 () Unit!44041)

(assert (=> b!1343711 (= lt!595033 (lemmaInListMapAfterAddingDiffThenInBefore!380 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595030))))

(assert (=> b!1343711 (= lt!595030 (+!4788 lt!595031 (tuple2!24285 (select (arr!44162 _keys!1571) from!1960) lt!595032)))))

(declare-fun get!22353 (ValueCell!17757 V!54851) V!54851)

(declare-fun dynLambda!3825 (Int (_ BitVec 64)) V!54851)

(assert (=> b!1343711 (= lt!595032 (get!22353 (select (arr!44163 _values!1303) from!1960) (dynLambda!3825 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6511 (array!91421 array!91423 (_ BitVec 32) (_ BitVec 32) V!54851 V!54851 (_ BitVec 32) Int) ListLongMap!21953)

(assert (=> b!1343711 (= lt!595031 (getCurrentListMapNoExtraKeys!6511 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapIsEmpty!57673 () Bool)

(assert (=> mapIsEmpty!57673 mapRes!57673))

(declare-fun b!1343712 () Bool)

(declare-fun res!891622 () Bool)

(assert (=> b!1343712 (=> (not res!891622) (not e!764783))))

(assert (=> b!1343712 (= res!891622 (not (= (select (arr!44162 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1343713 () Bool)

(declare-fun res!891623 () Bool)

(assert (=> b!1343713 (=> (not res!891623) (not e!764783))))

(declare-datatypes ((List!31459 0))(
  ( (Nil!31456) (Cons!31455 (h!32664 (_ BitVec 64)) (t!45988 List!31459)) )
))
(declare-fun arrayNoDuplicates!0 (array!91421 (_ BitVec 32) List!31459) Bool)

(assert (=> b!1343713 (= res!891623 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31456))))

(assert (= (and start!113296 res!891616) b!1343707))

(assert (= (and b!1343707 res!891618) b!1343708))

(assert (= (and b!1343708 res!891615) b!1343713))

(assert (= (and b!1343713 res!891623) b!1343709))

(assert (= (and b!1343709 res!891619) b!1343703))

(assert (= (and b!1343703 res!891617) b!1343712))

(assert (= (and b!1343712 res!891622) b!1343702))

(assert (= (and b!1343702 res!891620) b!1343706))

(assert (= (and b!1343706 res!891621) b!1343711))

(assert (= (and b!1343705 condMapEmpty!57673) mapIsEmpty!57673))

(assert (= (and b!1343705 (not condMapEmpty!57673)) mapNonEmpty!57673))

(get-info :version)

(assert (= (and mapNonEmpty!57673 ((_ is ValueCellFull!17757) mapValue!57673)) b!1343704))

(assert (= (and b!1343705 ((_ is ValueCellFull!17757) mapDefault!57673)) b!1343710))

(assert (= start!113296 b!1343705))

(declare-fun b_lambda!24497 () Bool)

(assert (=> (not b_lambda!24497) (not b!1343711)))

(declare-fun t!45986 () Bool)

(declare-fun tb!12333 () Bool)

(assert (=> (and start!113296 (= defaultEntry!1306 defaultEntry!1306) t!45986) tb!12333))

(declare-fun result!25749 () Bool)

(assert (=> tb!12333 (= result!25749 tp_is_empty!37311)))

(assert (=> b!1343711 t!45986))

(declare-fun b_and!50541 () Bool)

(assert (= b_and!50539 (and (=> t!45986 result!25749) b_and!50541)))

(declare-fun m!1231515 () Bool)

(assert (=> b!1343703 m!1231515))

(assert (=> b!1343703 m!1231515))

(declare-fun m!1231517 () Bool)

(assert (=> b!1343703 m!1231517))

(declare-fun m!1231519 () Bool)

(assert (=> b!1343713 m!1231519))

(declare-fun m!1231521 () Bool)

(assert (=> mapNonEmpty!57673 m!1231521))

(declare-fun m!1231523 () Bool)

(assert (=> b!1343711 m!1231523))

(declare-fun m!1231525 () Bool)

(assert (=> b!1343711 m!1231525))

(assert (=> b!1343711 m!1231523))

(declare-fun m!1231527 () Bool)

(assert (=> b!1343711 m!1231527))

(declare-fun m!1231529 () Bool)

(assert (=> b!1343711 m!1231529))

(declare-fun m!1231531 () Bool)

(assert (=> b!1343711 m!1231531))

(declare-fun m!1231533 () Bool)

(assert (=> b!1343711 m!1231533))

(declare-fun m!1231535 () Bool)

(assert (=> b!1343711 m!1231535))

(assert (=> b!1343711 m!1231529))

(declare-fun m!1231537 () Bool)

(assert (=> b!1343711 m!1231537))

(assert (=> b!1343711 m!1231531))

(declare-fun m!1231539 () Bool)

(assert (=> b!1343711 m!1231539))

(declare-fun m!1231541 () Bool)

(assert (=> b!1343711 m!1231541))

(assert (=> b!1343711 m!1231541))

(declare-fun m!1231543 () Bool)

(assert (=> b!1343711 m!1231543))

(declare-fun m!1231545 () Bool)

(assert (=> b!1343711 m!1231545))

(declare-fun m!1231547 () Bool)

(assert (=> b!1343711 m!1231547))

(declare-fun m!1231549 () Bool)

(assert (=> b!1343708 m!1231549))

(assert (=> b!1343702 m!1231541))

(assert (=> b!1343702 m!1231541))

(declare-fun m!1231551 () Bool)

(assert (=> b!1343702 m!1231551))

(assert (=> b!1343712 m!1231541))

(declare-fun m!1231553 () Bool)

(assert (=> start!113296 m!1231553))

(declare-fun m!1231555 () Bool)

(assert (=> start!113296 m!1231555))

(declare-fun m!1231557 () Bool)

(assert (=> start!113296 m!1231557))

(check-sat (not start!113296) (not b!1343702) (not b_next!31311) (not mapNonEmpty!57673) (not b!1343708) (not b_lambda!24497) (not b!1343703) tp_is_empty!37311 (not b!1343711) b_and!50541 (not b!1343713))
(check-sat b_and!50541 (not b_next!31311))
