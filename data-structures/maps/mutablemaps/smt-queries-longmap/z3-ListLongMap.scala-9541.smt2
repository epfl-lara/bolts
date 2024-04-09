; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113146 () Bool)

(assert start!113146)

(declare-fun b_free!31161 () Bool)

(declare-fun b_next!31161 () Bool)

(assert (=> start!113146 (= b_free!31161 (not b_next!31161))))

(declare-fun tp!109288 () Bool)

(declare-fun b_and!50239 () Bool)

(assert (=> start!113146 (= tp!109288 b_and!50239)))

(declare-fun b!1340852 () Bool)

(declare-fun res!889597 () Bool)

(declare-fun e!763658 () Bool)

(assert (=> b!1340852 (=> (not res!889597) (not e!763658))))

(declare-datatypes ((array!91131 0))(
  ( (array!91132 (arr!44017 (Array (_ BitVec 32) (_ BitVec 64))) (size!44568 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91131)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91131 (_ BitVec 32)) Bool)

(assert (=> b!1340852 (= res!889597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340853 () Bool)

(declare-fun res!889596 () Bool)

(assert (=> b!1340853 (=> (not res!889596) (not e!763658))))

(declare-datatypes ((List!31345 0))(
  ( (Nil!31342) (Cons!31341 (h!32550 (_ BitVec 64)) (t!45724 List!31345)) )
))
(declare-fun arrayNoDuplicates!0 (array!91131 (_ BitVec 32) List!31345) Bool)

(assert (=> b!1340853 (= res!889596 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31342))))

(declare-fun b!1340854 () Bool)

(declare-fun e!763660 () Bool)

(declare-fun e!763659 () Bool)

(declare-fun mapRes!57448 () Bool)

(assert (=> b!1340854 (= e!763660 (and e!763659 mapRes!57448))))

(declare-fun condMapEmpty!57448 () Bool)

(declare-datatypes ((V!54651 0))(
  ( (V!54652 (val!18655 Int)) )
))
(declare-datatypes ((ValueCell!17682 0))(
  ( (ValueCellFull!17682 (v!21301 V!54651)) (EmptyCell!17682) )
))
(declare-datatypes ((array!91133 0))(
  ( (array!91134 (arr!44018 (Array (_ BitVec 32) ValueCell!17682)) (size!44569 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91133)

(declare-fun mapDefault!57448 () ValueCell!17682)

(assert (=> b!1340854 (= condMapEmpty!57448 (= (arr!44018 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17682)) mapDefault!57448)))))

(declare-fun b!1340855 () Bool)

(declare-fun res!889595 () Bool)

(assert (=> b!1340855 (=> (not res!889595) (not e!763658))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340855 (= res!889595 (and (= (size!44569 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44568 _keys!1571) (size!44569 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57448 () Bool)

(declare-fun tp!109289 () Bool)

(declare-fun e!763657 () Bool)

(assert (=> mapNonEmpty!57448 (= mapRes!57448 (and tp!109289 e!763657))))

(declare-fun mapRest!57448 () (Array (_ BitVec 32) ValueCell!17682))

(declare-fun mapKey!57448 () (_ BitVec 32))

(declare-fun mapValue!57448 () ValueCell!17682)

(assert (=> mapNonEmpty!57448 (= (arr!44018 _values!1303) (store mapRest!57448 mapKey!57448 mapValue!57448))))

(declare-fun b!1340857 () Bool)

(declare-fun res!889590 () Bool)

(assert (=> b!1340857 (=> (not res!889590) (not e!763658))))

(assert (=> b!1340857 (= res!889590 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340858 () Bool)

(declare-fun tp_is_empty!37161 () Bool)

(assert (=> b!1340858 (= e!763659 tp_is_empty!37161)))

(declare-fun b!1340859 () Bool)

(declare-fun res!889598 () Bool)

(assert (=> b!1340859 (=> (not res!889598) (not e!763658))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1340859 (= res!889598 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44568 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340860 () Bool)

(declare-fun res!889591 () Bool)

(assert (=> b!1340860 (=> (not res!889591) (not e!763658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340860 (= res!889591 (validKeyInArray!0 (select (arr!44017 _keys!1571) from!1960)))))

(declare-fun res!889594 () Bool)

(assert (=> start!113146 (=> (not res!889594) (not e!763658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113146 (= res!889594 (validMask!0 mask!1977))))

(assert (=> start!113146 e!763658))

(assert (=> start!113146 tp_is_empty!37161))

(assert (=> start!113146 true))

(declare-fun array_inv!33103 (array!91131) Bool)

(assert (=> start!113146 (array_inv!33103 _keys!1571)))

(declare-fun array_inv!33104 (array!91133) Bool)

(assert (=> start!113146 (and (array_inv!33104 _values!1303) e!763660)))

(assert (=> start!113146 tp!109288))

(declare-fun b!1340856 () Bool)

(assert (=> b!1340856 (= e!763658 (not true))))

(declare-datatypes ((tuple2!24162 0))(
  ( (tuple2!24163 (_1!12091 (_ BitVec 64)) (_2!12091 V!54651)) )
))
(declare-datatypes ((List!31346 0))(
  ( (Nil!31343) (Cons!31342 (h!32551 tuple2!24162) (t!45725 List!31346)) )
))
(declare-datatypes ((ListLongMap!21831 0))(
  ( (ListLongMap!21832 (toList!10931 List!31346)) )
))
(declare-fun lt!594001 () ListLongMap!21831)

(declare-fun contains!9043 (ListLongMap!21831 (_ BitVec 64)) Bool)

(assert (=> b!1340856 (contains!9043 lt!594001 k0!1142)))

(declare-fun zeroValue!1245 () V!54651)

(declare-datatypes ((Unit!43939 0))(
  ( (Unit!43940) )
))
(declare-fun lt!594000 () Unit!43939)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!329 ((_ BitVec 64) (_ BitVec 64) V!54651 ListLongMap!21831) Unit!43939)

(assert (=> b!1340856 (= lt!594000 (lemmaInListMapAfterAddingDiffThenInBefore!329 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594001))))

(declare-fun minValue!1245 () V!54651)

(declare-fun defaultEntry!1306 () Int)

(declare-fun +!4737 (ListLongMap!21831 tuple2!24162) ListLongMap!21831)

(declare-fun getCurrentListMapNoExtraKeys!6460 (array!91131 array!91133 (_ BitVec 32) (_ BitVec 32) V!54651 V!54651 (_ BitVec 32) Int) ListLongMap!21831)

(declare-fun get!22252 (ValueCell!17682 V!54651) V!54651)

(declare-fun dynLambda!3774 (Int (_ BitVec 64)) V!54651)

(assert (=> b!1340856 (= lt!594001 (+!4737 (getCurrentListMapNoExtraKeys!6460 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24163 (select (arr!44017 _keys!1571) from!1960) (get!22252 (select (arr!44018 _values!1303) from!1960) (dynLambda!3774 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!57448 () Bool)

(assert (=> mapIsEmpty!57448 mapRes!57448))

(declare-fun b!1340861 () Bool)

(declare-fun res!889592 () Bool)

(assert (=> b!1340861 (=> (not res!889592) (not e!763658))))

(declare-fun getCurrentListMap!5833 (array!91131 array!91133 (_ BitVec 32) (_ BitVec 32) V!54651 V!54651 (_ BitVec 32) Int) ListLongMap!21831)

(assert (=> b!1340861 (= res!889592 (contains!9043 (getCurrentListMap!5833 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1340862 () Bool)

(assert (=> b!1340862 (= e!763657 tp_is_empty!37161)))

(declare-fun b!1340863 () Bool)

(declare-fun res!889593 () Bool)

(assert (=> b!1340863 (=> (not res!889593) (not e!763658))))

(assert (=> b!1340863 (= res!889593 (not (= (select (arr!44017 _keys!1571) from!1960) k0!1142)))))

(assert (= (and start!113146 res!889594) b!1340855))

(assert (= (and b!1340855 res!889595) b!1340852))

(assert (= (and b!1340852 res!889597) b!1340853))

(assert (= (and b!1340853 res!889596) b!1340859))

(assert (= (and b!1340859 res!889598) b!1340861))

(assert (= (and b!1340861 res!889592) b!1340863))

(assert (= (and b!1340863 res!889593) b!1340860))

(assert (= (and b!1340860 res!889591) b!1340857))

(assert (= (and b!1340857 res!889590) b!1340856))

(assert (= (and b!1340854 condMapEmpty!57448) mapIsEmpty!57448))

(assert (= (and b!1340854 (not condMapEmpty!57448)) mapNonEmpty!57448))

(get-info :version)

(assert (= (and mapNonEmpty!57448 ((_ is ValueCellFull!17682) mapValue!57448)) b!1340862))

(assert (= (and b!1340854 ((_ is ValueCellFull!17682) mapDefault!57448)) b!1340858))

(assert (= start!113146 b!1340854))

(declare-fun b_lambda!24347 () Bool)

(assert (=> (not b_lambda!24347) (not b!1340856)))

(declare-fun t!45723 () Bool)

(declare-fun tb!12183 () Bool)

(assert (=> (and start!113146 (= defaultEntry!1306 defaultEntry!1306) t!45723) tb!12183))

(declare-fun result!25449 () Bool)

(assert (=> tb!12183 (= result!25449 tp_is_empty!37161)))

(assert (=> b!1340856 t!45723))

(declare-fun b_and!50241 () Bool)

(assert (= b_and!50239 (and (=> t!45723 result!25449) b_and!50241)))

(declare-fun m!1228595 () Bool)

(assert (=> b!1340852 m!1228595))

(declare-fun m!1228597 () Bool)

(assert (=> mapNonEmpty!57448 m!1228597))

(declare-fun m!1228599 () Bool)

(assert (=> b!1340856 m!1228599))

(assert (=> b!1340856 m!1228599))

(declare-fun m!1228601 () Bool)

(assert (=> b!1340856 m!1228601))

(declare-fun m!1228603 () Bool)

(assert (=> b!1340856 m!1228603))

(declare-fun m!1228605 () Bool)

(assert (=> b!1340856 m!1228605))

(declare-fun m!1228607 () Bool)

(assert (=> b!1340856 m!1228607))

(declare-fun m!1228609 () Bool)

(assert (=> b!1340856 m!1228609))

(declare-fun m!1228611 () Bool)

(assert (=> b!1340856 m!1228611))

(assert (=> b!1340856 m!1228603))

(assert (=> b!1340856 m!1228605))

(declare-fun m!1228613 () Bool)

(assert (=> b!1340856 m!1228613))

(assert (=> b!1340860 m!1228609))

(assert (=> b!1340860 m!1228609))

(declare-fun m!1228615 () Bool)

(assert (=> b!1340860 m!1228615))

(declare-fun m!1228617 () Bool)

(assert (=> b!1340861 m!1228617))

(assert (=> b!1340861 m!1228617))

(declare-fun m!1228619 () Bool)

(assert (=> b!1340861 m!1228619))

(assert (=> b!1340863 m!1228609))

(declare-fun m!1228621 () Bool)

(assert (=> start!113146 m!1228621))

(declare-fun m!1228623 () Bool)

(assert (=> start!113146 m!1228623))

(declare-fun m!1228625 () Bool)

(assert (=> start!113146 m!1228625))

(declare-fun m!1228627 () Bool)

(assert (=> b!1340853 m!1228627))

(check-sat (not b!1340860) (not b_lambda!24347) (not b!1340852) tp_is_empty!37161 (not b!1340856) (not b_next!31161) (not start!113146) b_and!50241 (not b!1340853) (not mapNonEmpty!57448) (not b!1340861))
(check-sat b_and!50241 (not b_next!31161))
