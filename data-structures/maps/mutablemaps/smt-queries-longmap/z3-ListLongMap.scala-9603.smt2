; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113576 () Bool)

(assert start!113576)

(declare-fun b_free!31533 () Bool)

(declare-fun b_next!31533 () Bool)

(assert (=> start!113576 (= b_free!31533 (not b_next!31533))))

(declare-fun tp!110409 () Bool)

(declare-fun b_and!50865 () Bool)

(assert (=> start!113576 (= tp!110409 b_and!50865)))

(declare-fun b!1347668 () Bool)

(declare-fun res!894271 () Bool)

(declare-fun e!766772 () Bool)

(assert (=> b!1347668 (=> (not res!894271) (not e!766772))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91857 0))(
  ( (array!91858 (arr!44379 (Array (_ BitVec 32) (_ BitVec 64))) (size!44930 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91857)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1347668 (= res!894271 (not (= (select (arr!44379 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1347669 () Bool)

(declare-fun e!766771 () Bool)

(declare-fun tp_is_empty!37533 () Bool)

(assert (=> b!1347669 (= e!766771 tp_is_empty!37533)))

(declare-fun b!1347670 () Bool)

(declare-fun res!894273 () Bool)

(assert (=> b!1347670 (=> (not res!894273) (not e!766772))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1347670 (= res!894273 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1347671 () Bool)

(declare-fun res!894274 () Bool)

(assert (=> b!1347671 (=> (not res!894274) (not e!766772))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91857 (_ BitVec 32)) Bool)

(assert (=> b!1347671 (= res!894274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347672 () Bool)

(declare-fun res!894276 () Bool)

(assert (=> b!1347672 (=> (not res!894276) (not e!766772))))

(declare-datatypes ((V!55147 0))(
  ( (V!55148 (val!18841 Int)) )
))
(declare-fun minValue!1245 () V!55147)

(declare-fun zeroValue!1245 () V!55147)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17868 0))(
  ( (ValueCellFull!17868 (v!21490 V!55147)) (EmptyCell!17868) )
))
(declare-datatypes ((array!91859 0))(
  ( (array!91860 (arr!44380 (Array (_ BitVec 32) ValueCell!17868)) (size!44931 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91859)

(declare-datatypes ((tuple2!24432 0))(
  ( (tuple2!24433 (_1!12226 (_ BitVec 64)) (_2!12226 V!55147)) )
))
(declare-datatypes ((List!31601 0))(
  ( (Nil!31598) (Cons!31597 (h!32806 tuple2!24432) (t!46220 List!31601)) )
))
(declare-datatypes ((ListLongMap!22101 0))(
  ( (ListLongMap!22102 (toList!11066 List!31601)) )
))
(declare-fun contains!9179 (ListLongMap!22101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5956 (array!91857 array!91859 (_ BitVec 32) (_ BitVec 32) V!55147 V!55147 (_ BitVec 32) Int) ListLongMap!22101)

(assert (=> b!1347672 (= res!894276 (contains!9179 (getCurrentListMap!5956 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1347673 () Bool)

(declare-fun res!894270 () Bool)

(assert (=> b!1347673 (=> (not res!894270) (not e!766772))))

(assert (=> b!1347673 (= res!894270 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44930 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!58010 () Bool)

(declare-fun mapRes!58010 () Bool)

(assert (=> mapIsEmpty!58010 mapRes!58010))

(declare-fun b!1347674 () Bool)

(declare-fun res!894277 () Bool)

(assert (=> b!1347674 (=> (not res!894277) (not e!766772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347674 (= res!894277 (validKeyInArray!0 (select (arr!44379 _keys!1571) from!1960)))))

(declare-fun b!1347675 () Bool)

(assert (=> b!1347675 (= e!766772 (not (bvslt from!1960 (size!44931 _values!1303))))))

(declare-fun lt!595790 () ListLongMap!22101)

(assert (=> b!1347675 (contains!9179 lt!595790 k0!1142)))

(declare-datatypes ((Unit!44100 0))(
  ( (Unit!44101) )
))
(declare-fun lt!595789 () Unit!44100)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!402 ((_ BitVec 64) (_ BitVec 64) V!55147 ListLongMap!22101) Unit!44100)

(assert (=> b!1347675 (= lt!595789 (lemmaInListMapAfterAddingDiffThenInBefore!402 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595790))))

(declare-fun +!4816 (ListLongMap!22101 tuple2!24432) ListLongMap!22101)

(declare-fun getCurrentListMapNoExtraKeys!6543 (array!91857 array!91859 (_ BitVec 32) (_ BitVec 32) V!55147 V!55147 (_ BitVec 32) Int) ListLongMap!22101)

(declare-fun get!22458 (ValueCell!17868 V!55147) V!55147)

(declare-fun dynLambda!3853 (Int (_ BitVec 64)) V!55147)

(assert (=> b!1347675 (= lt!595790 (+!4816 (getCurrentListMapNoExtraKeys!6543 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24433 (select (arr!44379 _keys!1571) from!1960) (get!22458 (select (arr!44380 _values!1303) from!1960) (dynLambda!3853 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347676 () Bool)

(declare-fun e!766775 () Bool)

(assert (=> b!1347676 (= e!766775 tp_is_empty!37533)))

(declare-fun mapNonEmpty!58010 () Bool)

(declare-fun tp!110408 () Bool)

(assert (=> mapNonEmpty!58010 (= mapRes!58010 (and tp!110408 e!766771))))

(declare-fun mapValue!58010 () ValueCell!17868)

(declare-fun mapKey!58010 () (_ BitVec 32))

(declare-fun mapRest!58010 () (Array (_ BitVec 32) ValueCell!17868))

(assert (=> mapNonEmpty!58010 (= (arr!44380 _values!1303) (store mapRest!58010 mapKey!58010 mapValue!58010))))

(declare-fun b!1347677 () Bool)

(declare-fun res!894269 () Bool)

(assert (=> b!1347677 (=> (not res!894269) (not e!766772))))

(declare-datatypes ((List!31602 0))(
  ( (Nil!31599) (Cons!31598 (h!32807 (_ BitVec 64)) (t!46221 List!31602)) )
))
(declare-fun arrayNoDuplicates!0 (array!91857 (_ BitVec 32) List!31602) Bool)

(assert (=> b!1347677 (= res!894269 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31599))))

(declare-fun b!1347678 () Bool)

(declare-fun e!766773 () Bool)

(assert (=> b!1347678 (= e!766773 (and e!766775 mapRes!58010))))

(declare-fun condMapEmpty!58010 () Bool)

(declare-fun mapDefault!58010 () ValueCell!17868)

(assert (=> b!1347678 (= condMapEmpty!58010 (= (arr!44380 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17868)) mapDefault!58010)))))

(declare-fun res!894275 () Bool)

(assert (=> start!113576 (=> (not res!894275) (not e!766772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113576 (= res!894275 (validMask!0 mask!1977))))

(assert (=> start!113576 e!766772))

(assert (=> start!113576 tp_is_empty!37533))

(assert (=> start!113576 true))

(declare-fun array_inv!33345 (array!91857) Bool)

(assert (=> start!113576 (array_inv!33345 _keys!1571)))

(declare-fun array_inv!33346 (array!91859) Bool)

(assert (=> start!113576 (and (array_inv!33346 _values!1303) e!766773)))

(assert (=> start!113576 tp!110409))

(declare-fun b!1347679 () Bool)

(declare-fun res!894272 () Bool)

(assert (=> b!1347679 (=> (not res!894272) (not e!766772))))

(assert (=> b!1347679 (= res!894272 (and (= (size!44931 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44930 _keys!1571) (size!44931 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113576 res!894275) b!1347679))

(assert (= (and b!1347679 res!894272) b!1347671))

(assert (= (and b!1347671 res!894274) b!1347677))

(assert (= (and b!1347677 res!894269) b!1347673))

(assert (= (and b!1347673 res!894270) b!1347672))

(assert (= (and b!1347672 res!894276) b!1347668))

(assert (= (and b!1347668 res!894271) b!1347674))

(assert (= (and b!1347674 res!894277) b!1347670))

(assert (= (and b!1347670 res!894273) b!1347675))

(assert (= (and b!1347678 condMapEmpty!58010) mapIsEmpty!58010))

(assert (= (and b!1347678 (not condMapEmpty!58010)) mapNonEmpty!58010))

(get-info :version)

(assert (= (and mapNonEmpty!58010 ((_ is ValueCellFull!17868) mapValue!58010)) b!1347669))

(assert (= (and b!1347678 ((_ is ValueCellFull!17868) mapDefault!58010)) b!1347676))

(assert (= start!113576 b!1347678))

(declare-fun b_lambda!24617 () Bool)

(assert (=> (not b_lambda!24617) (not b!1347675)))

(declare-fun t!46219 () Bool)

(declare-fun tb!12423 () Bool)

(assert (=> (and start!113576 (= defaultEntry!1306 defaultEntry!1306) t!46219) tb!12423))

(declare-fun result!25931 () Bool)

(assert (=> tb!12423 (= result!25931 tp_is_empty!37533)))

(assert (=> b!1347675 t!46219))

(declare-fun b_and!50867 () Bool)

(assert (= b_and!50865 (and (=> t!46219 result!25931) b_and!50867)))

(declare-fun m!1234761 () Bool)

(assert (=> b!1347675 m!1234761))

(declare-fun m!1234763 () Bool)

(assert (=> b!1347675 m!1234763))

(declare-fun m!1234765 () Bool)

(assert (=> b!1347675 m!1234765))

(declare-fun m!1234767 () Bool)

(assert (=> b!1347675 m!1234767))

(declare-fun m!1234769 () Bool)

(assert (=> b!1347675 m!1234769))

(assert (=> b!1347675 m!1234763))

(declare-fun m!1234771 () Bool)

(assert (=> b!1347675 m!1234771))

(assert (=> b!1347675 m!1234765))

(declare-fun m!1234773 () Bool)

(assert (=> b!1347675 m!1234773))

(assert (=> b!1347675 m!1234767))

(declare-fun m!1234775 () Bool)

(assert (=> b!1347675 m!1234775))

(declare-fun m!1234777 () Bool)

(assert (=> start!113576 m!1234777))

(declare-fun m!1234779 () Bool)

(assert (=> start!113576 m!1234779))

(declare-fun m!1234781 () Bool)

(assert (=> start!113576 m!1234781))

(declare-fun m!1234783 () Bool)

(assert (=> b!1347672 m!1234783))

(assert (=> b!1347672 m!1234783))

(declare-fun m!1234785 () Bool)

(assert (=> b!1347672 m!1234785))

(assert (=> b!1347668 m!1234773))

(declare-fun m!1234787 () Bool)

(assert (=> b!1347677 m!1234787))

(declare-fun m!1234789 () Bool)

(assert (=> b!1347671 m!1234789))

(declare-fun m!1234791 () Bool)

(assert (=> mapNonEmpty!58010 m!1234791))

(assert (=> b!1347674 m!1234773))

(assert (=> b!1347674 m!1234773))

(declare-fun m!1234793 () Bool)

(assert (=> b!1347674 m!1234793))

(check-sat tp_is_empty!37533 (not b!1347671) (not b!1347675) (not mapNonEmpty!58010) (not b_lambda!24617) (not b!1347674) (not start!113576) b_and!50867 (not b!1347677) (not b!1347672) (not b_next!31533))
(check-sat b_and!50867 (not b_next!31533))
