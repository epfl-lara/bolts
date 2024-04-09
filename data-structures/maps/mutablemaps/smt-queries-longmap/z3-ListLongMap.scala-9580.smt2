; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113380 () Bool)

(assert start!113380)

(declare-fun b_free!31395 () Bool)

(declare-fun b_next!31395 () Bool)

(assert (=> start!113380 (= b_free!31395 (not b_next!31395))))

(declare-fun tp!109991 () Bool)

(declare-fun b_and!50653 () Bool)

(assert (=> start!113380 (= tp!109991 b_and!50653)))

(declare-fun mapNonEmpty!57799 () Bool)

(declare-fun mapRes!57799 () Bool)

(declare-fun tp!109990 () Bool)

(declare-fun e!765438 () Bool)

(assert (=> mapNonEmpty!57799 (= mapRes!57799 (and tp!109990 e!765438))))

(declare-datatypes ((V!54963 0))(
  ( (V!54964 (val!18772 Int)) )
))
(declare-datatypes ((ValueCell!17799 0))(
  ( (ValueCellFull!17799 (v!21418 V!54963)) (EmptyCell!17799) )
))
(declare-fun mapValue!57799 () ValueCell!17799)

(declare-fun mapRest!57799 () (Array (_ BitVec 32) ValueCell!17799))

(declare-datatypes ((array!91587 0))(
  ( (array!91588 (arr!44245 (Array (_ BitVec 32) ValueCell!17799)) (size!44796 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91587)

(declare-fun mapKey!57799 () (_ BitVec 32))

(assert (=> mapNonEmpty!57799 (= (arr!44245 _values!1303) (store mapRest!57799 mapKey!57799 mapValue!57799))))

(declare-fun b!1344993 () Bool)

(declare-fun res!892508 () Bool)

(declare-fun e!765436 () Bool)

(assert (=> b!1344993 (=> (not res!892508) (not e!765436))))

(declare-datatypes ((array!91589 0))(
  ( (array!91590 (arr!44246 (Array (_ BitVec 32) (_ BitVec 64))) (size!44797 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91589)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344993 (= res!892508 (validKeyInArray!0 (select (arr!44246 _keys!1571) from!1960)))))

(declare-fun b!1344994 () Bool)

(declare-fun res!892500 () Bool)

(assert (=> b!1344994 (=> (not res!892500) (not e!765436))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344994 (= res!892500 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!57799 () Bool)

(assert (=> mapIsEmpty!57799 mapRes!57799))

(declare-fun b!1344995 () Bool)

(declare-fun res!892506 () Bool)

(assert (=> b!1344995 (=> (not res!892506) (not e!765436))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91589 (_ BitVec 32)) Bool)

(assert (=> b!1344995 (= res!892506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344996 () Bool)

(declare-fun res!892503 () Bool)

(assert (=> b!1344996 (=> (not res!892503) (not e!765436))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1344996 (= res!892503 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44797 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344997 () Bool)

(declare-fun e!765440 () Bool)

(assert (=> b!1344997 (= e!765440 (not true))))

(declare-datatypes ((tuple2!24336 0))(
  ( (tuple2!24337 (_1!12178 (_ BitVec 64)) (_2!12178 V!54963)) )
))
(declare-datatypes ((List!31509 0))(
  ( (Nil!31506) (Cons!31505 (h!32714 tuple2!24336) (t!46068 List!31509)) )
))
(declare-datatypes ((ListLongMap!22005 0))(
  ( (ListLongMap!22006 (toList!11018 List!31509)) )
))
(declare-fun lt!595212 () ListLongMap!22005)

(declare-fun contains!9130 (ListLongMap!22005 (_ BitVec 64)) Bool)

(assert (=> b!1344997 (contains!9130 lt!595212 k0!1142)))

(declare-fun lt!595211 () V!54963)

(declare-datatypes ((Unit!44053 0))(
  ( (Unit!44054) )
))
(declare-fun lt!595213 () Unit!44053)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!386 ((_ BitVec 64) (_ BitVec 64) V!54963 ListLongMap!22005) Unit!44053)

(assert (=> b!1344997 (= lt!595213 (lemmaInListMapAfterAddingDiffThenInBefore!386 k0!1142 (select (arr!44246 _keys!1571) from!1960) lt!595211 lt!595212))))

(declare-fun b!1344998 () Bool)

(declare-fun res!892501 () Bool)

(assert (=> b!1344998 (=> (not res!892501) (not e!765436))))

(declare-datatypes ((List!31510 0))(
  ( (Nil!31507) (Cons!31506 (h!32715 (_ BitVec 64)) (t!46069 List!31510)) )
))
(declare-fun arrayNoDuplicates!0 (array!91589 (_ BitVec 32) List!31510) Bool)

(assert (=> b!1344998 (= res!892501 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31507))))

(declare-fun b!1345000 () Bool)

(declare-fun tp_is_empty!37395 () Bool)

(assert (=> b!1345000 (= e!765438 tp_is_empty!37395)))

(declare-fun b!1345001 () Bool)

(declare-fun res!892504 () Bool)

(assert (=> b!1345001 (=> (not res!892504) (not e!765436))))

(declare-fun minValue!1245 () V!54963)

(declare-fun zeroValue!1245 () V!54963)

(declare-fun defaultEntry!1306 () Int)

(declare-fun getCurrentListMap!5911 (array!91589 array!91587 (_ BitVec 32) (_ BitVec 32) V!54963 V!54963 (_ BitVec 32) Int) ListLongMap!22005)

(assert (=> b!1345001 (= res!892504 (contains!9130 (getCurrentListMap!5911 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345002 () Bool)

(declare-fun res!892507 () Bool)

(assert (=> b!1345002 (=> (not res!892507) (not e!765440))))

(assert (=> b!1345002 (= res!892507 (not (= k0!1142 (select (arr!44246 _keys!1571) from!1960))))))

(declare-fun b!1345003 () Bool)

(declare-fun res!892499 () Bool)

(assert (=> b!1345003 (=> (not res!892499) (not e!765436))))

(assert (=> b!1345003 (= res!892499 (not (= (select (arr!44246 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1345004 () Bool)

(declare-fun e!765437 () Bool)

(declare-fun e!765439 () Bool)

(assert (=> b!1345004 (= e!765437 (and e!765439 mapRes!57799))))

(declare-fun condMapEmpty!57799 () Bool)

(declare-fun mapDefault!57799 () ValueCell!17799)

(assert (=> b!1345004 (= condMapEmpty!57799 (= (arr!44245 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17799)) mapDefault!57799)))))

(declare-fun b!1345005 () Bool)

(assert (=> b!1345005 (= e!765439 tp_is_empty!37395)))

(declare-fun b!1345006 () Bool)

(assert (=> b!1345006 (= e!765436 e!765440)))

(declare-fun res!892498 () Bool)

(assert (=> b!1345006 (=> (not res!892498) (not e!765440))))

(declare-fun +!4798 (ListLongMap!22005 tuple2!24336) ListLongMap!22005)

(assert (=> b!1345006 (= res!892498 (contains!9130 (+!4798 lt!595212 (tuple2!24337 (select (arr!44246 _keys!1571) from!1960) lt!595211)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6521 (array!91589 array!91587 (_ BitVec 32) (_ BitVec 32) V!54963 V!54963 (_ BitVec 32) Int) ListLongMap!22005)

(assert (=> b!1345006 (= lt!595212 (getCurrentListMapNoExtraKeys!6521 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22391 (ValueCell!17799 V!54963) V!54963)

(declare-fun dynLambda!3835 (Int (_ BitVec 64)) V!54963)

(assert (=> b!1345006 (= lt!595211 (get!22391 (select (arr!44245 _values!1303) from!1960) (dynLambda!3835 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1344999 () Bool)

(declare-fun res!892505 () Bool)

(assert (=> b!1344999 (=> (not res!892505) (not e!765436))))

(assert (=> b!1344999 (= res!892505 (and (= (size!44796 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44797 _keys!1571) (size!44796 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!892502 () Bool)

(assert (=> start!113380 (=> (not res!892502) (not e!765436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113380 (= res!892502 (validMask!0 mask!1977))))

(assert (=> start!113380 e!765436))

(assert (=> start!113380 tp_is_empty!37395))

(assert (=> start!113380 true))

(declare-fun array_inv!33257 (array!91589) Bool)

(assert (=> start!113380 (array_inv!33257 _keys!1571)))

(declare-fun array_inv!33258 (array!91587) Bool)

(assert (=> start!113380 (and (array_inv!33258 _values!1303) e!765437)))

(assert (=> start!113380 tp!109991))

(assert (= (and start!113380 res!892502) b!1344999))

(assert (= (and b!1344999 res!892505) b!1344995))

(assert (= (and b!1344995 res!892506) b!1344998))

(assert (= (and b!1344998 res!892501) b!1344996))

(assert (= (and b!1344996 res!892503) b!1345001))

(assert (= (and b!1345001 res!892504) b!1345003))

(assert (= (and b!1345003 res!892499) b!1344993))

(assert (= (and b!1344993 res!892508) b!1344994))

(assert (= (and b!1344994 res!892500) b!1345006))

(assert (= (and b!1345006 res!892498) b!1345002))

(assert (= (and b!1345002 res!892507) b!1344997))

(assert (= (and b!1345004 condMapEmpty!57799) mapIsEmpty!57799))

(assert (= (and b!1345004 (not condMapEmpty!57799)) mapNonEmpty!57799))

(get-info :version)

(assert (= (and mapNonEmpty!57799 ((_ is ValueCellFull!17799) mapValue!57799)) b!1345000))

(assert (= (and b!1345004 ((_ is ValueCellFull!17799) mapDefault!57799)) b!1345005))

(assert (= start!113380 b!1345004))

(declare-fun b_lambda!24527 () Bool)

(assert (=> (not b_lambda!24527) (not b!1345006)))

(declare-fun t!46067 () Bool)

(declare-fun tb!12363 () Bool)

(assert (=> (and start!113380 (= defaultEntry!1306 defaultEntry!1306) t!46067) tb!12363))

(declare-fun result!25809 () Bool)

(assert (=> tb!12363 (= result!25809 tp_is_empty!37395)))

(assert (=> b!1345006 t!46067))

(declare-fun b_and!50655 () Bool)

(assert (= b_and!50653 (and (=> t!46067 result!25809) b_and!50655)))

(declare-fun m!1232491 () Bool)

(assert (=> b!1344993 m!1232491))

(assert (=> b!1344993 m!1232491))

(declare-fun m!1232493 () Bool)

(assert (=> b!1344993 m!1232493))

(declare-fun m!1232495 () Bool)

(assert (=> b!1344998 m!1232495))

(declare-fun m!1232497 () Bool)

(assert (=> b!1344997 m!1232497))

(assert (=> b!1344997 m!1232491))

(assert (=> b!1344997 m!1232491))

(declare-fun m!1232499 () Bool)

(assert (=> b!1344997 m!1232499))

(declare-fun m!1232501 () Bool)

(assert (=> b!1345001 m!1232501))

(assert (=> b!1345001 m!1232501))

(declare-fun m!1232503 () Bool)

(assert (=> b!1345001 m!1232503))

(declare-fun m!1232505 () Bool)

(assert (=> start!113380 m!1232505))

(declare-fun m!1232507 () Bool)

(assert (=> start!113380 m!1232507))

(declare-fun m!1232509 () Bool)

(assert (=> start!113380 m!1232509))

(declare-fun m!1232511 () Bool)

(assert (=> mapNonEmpty!57799 m!1232511))

(declare-fun m!1232513 () Bool)

(assert (=> b!1345006 m!1232513))

(declare-fun m!1232515 () Bool)

(assert (=> b!1345006 m!1232515))

(declare-fun m!1232517 () Bool)

(assert (=> b!1345006 m!1232517))

(declare-fun m!1232519 () Bool)

(assert (=> b!1345006 m!1232519))

(declare-fun m!1232521 () Bool)

(assert (=> b!1345006 m!1232521))

(assert (=> b!1345006 m!1232517))

(assert (=> b!1345006 m!1232491))

(assert (=> b!1345006 m!1232519))

(assert (=> b!1345006 m!1232513))

(declare-fun m!1232523 () Bool)

(assert (=> b!1345006 m!1232523))

(declare-fun m!1232525 () Bool)

(assert (=> b!1344995 m!1232525))

(assert (=> b!1345003 m!1232491))

(assert (=> b!1345002 m!1232491))

(check-sat (not b!1344997) (not start!113380) (not b!1344998) (not b_lambda!24527) (not b!1344995) (not b_next!31395) (not mapNonEmpty!57799) (not b!1344993) b_and!50655 (not b!1345001) tp_is_empty!37395 (not b!1345006))
(check-sat b_and!50655 (not b_next!31395))
