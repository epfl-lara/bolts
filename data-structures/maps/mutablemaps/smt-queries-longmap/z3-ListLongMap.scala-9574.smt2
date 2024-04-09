; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113344 () Bool)

(assert start!113344)

(declare-fun b_free!31359 () Bool)

(declare-fun b_next!31359 () Bool)

(assert (=> start!113344 (= b_free!31359 (not b_next!31359))))

(declare-fun tp!109883 () Bool)

(declare-fun b_and!50591 () Bool)

(assert (=> start!113344 (= tp!109883 b_and!50591)))

(declare-fun b!1344298 () Bool)

(declare-fun res!891993 () Bool)

(declare-fun e!765146 () Bool)

(assert (=> b!1344298 (=> (not res!891993) (not e!765146))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91515 0))(
  ( (array!91516 (arr!44209 (Array (_ BitVec 32) (_ BitVec 64))) (size!44760 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91515)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54915 0))(
  ( (V!54916 (val!18754 Int)) )
))
(declare-datatypes ((ValueCell!17781 0))(
  ( (ValueCellFull!17781 (v!21400 V!54915)) (EmptyCell!17781) )
))
(declare-datatypes ((array!91517 0))(
  ( (array!91518 (arr!44210 (Array (_ BitVec 32) ValueCell!17781)) (size!44761 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91517)

(assert (=> b!1344298 (= res!891993 (and (= (size!44761 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44760 _keys!1571) (size!44761 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!891992 () Bool)

(assert (=> start!113344 (=> (not res!891992) (not e!765146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113344 (= res!891992 (validMask!0 mask!1977))))

(assert (=> start!113344 e!765146))

(declare-fun tp_is_empty!37359 () Bool)

(assert (=> start!113344 tp_is_empty!37359))

(assert (=> start!113344 true))

(declare-fun array_inv!33237 (array!91515) Bool)

(assert (=> start!113344 (array_inv!33237 _keys!1571)))

(declare-fun e!765144 () Bool)

(declare-fun array_inv!33238 (array!91517) Bool)

(assert (=> start!113344 (and (array_inv!33238 _values!1303) e!765144)))

(assert (=> start!113344 tp!109883))

(declare-fun b!1344299 () Bool)

(declare-fun e!765142 () Bool)

(declare-fun mapRes!57745 () Bool)

(assert (=> b!1344299 (= e!765144 (and e!765142 mapRes!57745))))

(declare-fun condMapEmpty!57745 () Bool)

(declare-fun mapDefault!57745 () ValueCell!17781)

(assert (=> b!1344299 (= condMapEmpty!57745 (= (arr!44210 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17781)) mapDefault!57745)))))

(declare-fun b!1344300 () Bool)

(declare-fun res!891991 () Bool)

(assert (=> b!1344300 (=> (not res!891991) (not e!765146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91515 (_ BitVec 32)) Bool)

(assert (=> b!1344300 (= res!891991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344301 () Bool)

(assert (=> b!1344301 (= e!765146 false)))

(declare-fun minValue!1245 () V!54915)

(declare-fun zeroValue!1245 () V!54915)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun lt!595120 () Bool)

(declare-datatypes ((tuple2!24312 0))(
  ( (tuple2!24313 (_1!12166 (_ BitVec 64)) (_2!12166 V!54915)) )
))
(declare-datatypes ((List!31486 0))(
  ( (Nil!31483) (Cons!31482 (h!32691 tuple2!24312) (t!46017 List!31486)) )
))
(declare-datatypes ((ListLongMap!21981 0))(
  ( (ListLongMap!21982 (toList!11006 List!31486)) )
))
(declare-fun contains!9118 (ListLongMap!21981 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5899 (array!91515 array!91517 (_ BitVec 32) (_ BitVec 32) V!54915 V!54915 (_ BitVec 32) Int) ListLongMap!21981)

(assert (=> b!1344301 (= lt!595120 (contains!9118 (getCurrentListMap!5899 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1344302 () Bool)

(assert (=> b!1344302 (= e!765142 tp_is_empty!37359)))

(declare-fun b!1344303 () Bool)

(declare-fun res!891994 () Bool)

(assert (=> b!1344303 (=> (not res!891994) (not e!765146))))

(assert (=> b!1344303 (= res!891994 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44760 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344304 () Bool)

(declare-fun e!765143 () Bool)

(assert (=> b!1344304 (= e!765143 tp_is_empty!37359)))

(declare-fun b!1344305 () Bool)

(declare-fun res!891995 () Bool)

(assert (=> b!1344305 (=> (not res!891995) (not e!765146))))

(declare-datatypes ((List!31487 0))(
  ( (Nil!31484) (Cons!31483 (h!32692 (_ BitVec 64)) (t!46018 List!31487)) )
))
(declare-fun arrayNoDuplicates!0 (array!91515 (_ BitVec 32) List!31487) Bool)

(assert (=> b!1344305 (= res!891995 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31484))))

(declare-fun mapIsEmpty!57745 () Bool)

(assert (=> mapIsEmpty!57745 mapRes!57745))

(declare-fun mapNonEmpty!57745 () Bool)

(declare-fun tp!109882 () Bool)

(assert (=> mapNonEmpty!57745 (= mapRes!57745 (and tp!109882 e!765143))))

(declare-fun mapValue!57745 () ValueCell!17781)

(declare-fun mapRest!57745 () (Array (_ BitVec 32) ValueCell!17781))

(declare-fun mapKey!57745 () (_ BitVec 32))

(assert (=> mapNonEmpty!57745 (= (arr!44210 _values!1303) (store mapRest!57745 mapKey!57745 mapValue!57745))))

(assert (= (and start!113344 res!891992) b!1344298))

(assert (= (and b!1344298 res!891993) b!1344300))

(assert (= (and b!1344300 res!891991) b!1344305))

(assert (= (and b!1344305 res!891995) b!1344303))

(assert (= (and b!1344303 res!891994) b!1344301))

(assert (= (and b!1344299 condMapEmpty!57745) mapIsEmpty!57745))

(assert (= (and b!1344299 (not condMapEmpty!57745)) mapNonEmpty!57745))

(get-info :version)

(assert (= (and mapNonEmpty!57745 ((_ is ValueCellFull!17781) mapValue!57745)) b!1344304))

(assert (= (and b!1344299 ((_ is ValueCellFull!17781) mapDefault!57745)) b!1344302))

(assert (= start!113344 b!1344299))

(declare-fun m!1231955 () Bool)

(assert (=> b!1344301 m!1231955))

(assert (=> b!1344301 m!1231955))

(declare-fun m!1231957 () Bool)

(assert (=> b!1344301 m!1231957))

(declare-fun m!1231959 () Bool)

(assert (=> mapNonEmpty!57745 m!1231959))

(declare-fun m!1231961 () Bool)

(assert (=> b!1344300 m!1231961))

(declare-fun m!1231963 () Bool)

(assert (=> start!113344 m!1231963))

(declare-fun m!1231965 () Bool)

(assert (=> start!113344 m!1231965))

(declare-fun m!1231967 () Bool)

(assert (=> start!113344 m!1231967))

(declare-fun m!1231969 () Bool)

(assert (=> b!1344305 m!1231969))

(check-sat (not b_next!31359) (not b!1344305) (not mapNonEmpty!57745) tp_is_empty!37359 (not b!1344300) (not start!113344) (not b!1344301) b_and!50591)
(check-sat b_and!50591 (not b_next!31359))
