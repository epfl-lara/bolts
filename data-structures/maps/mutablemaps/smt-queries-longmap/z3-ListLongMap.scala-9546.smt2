; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113176 () Bool)

(assert start!113176)

(declare-fun b_free!31191 () Bool)

(declare-fun b_next!31191 () Bool)

(assert (=> start!113176 (= b_free!31191 (not b_next!31191))))

(declare-fun tp!109378 () Bool)

(declare-fun b_and!50299 () Bool)

(assert (=> start!113176 (= tp!109378 b_and!50299)))

(declare-fun b!1341422 () Bool)

(declare-fun e!763884 () Bool)

(declare-fun tp_is_empty!37191 () Bool)

(assert (=> b!1341422 (= e!763884 tp_is_empty!37191)))

(declare-fun b!1341423 () Bool)

(declare-fun res!890002 () Bool)

(declare-fun e!763885 () Bool)

(assert (=> b!1341423 (=> (not res!890002) (not e!763885))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91191 0))(
  ( (array!91192 (arr!44047 (Array (_ BitVec 32) (_ BitVec 64))) (size!44598 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91191)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341423 (= res!890002 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44598 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341424 () Bool)

(declare-fun res!889999 () Bool)

(assert (=> b!1341424 (=> (not res!889999) (not e!763885))))

(declare-datatypes ((V!54691 0))(
  ( (V!54692 (val!18670 Int)) )
))
(declare-datatypes ((ValueCell!17697 0))(
  ( (ValueCellFull!17697 (v!21316 V!54691)) (EmptyCell!17697) )
))
(declare-datatypes ((array!91193 0))(
  ( (array!91194 (arr!44048 (Array (_ BitVec 32) ValueCell!17697)) (size!44599 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91193)

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1341424 (= res!889999 (and (= (size!44599 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44598 _keys!1571) (size!44599 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341425 () Bool)

(declare-fun e!763886 () Bool)

(declare-fun e!763883 () Bool)

(declare-fun mapRes!57493 () Bool)

(assert (=> b!1341425 (= e!763886 (and e!763883 mapRes!57493))))

(declare-fun condMapEmpty!57493 () Bool)

(declare-fun mapDefault!57493 () ValueCell!17697)

(assert (=> b!1341425 (= condMapEmpty!57493 (= (arr!44048 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17697)) mapDefault!57493)))))

(declare-fun b!1341426 () Bool)

(declare-fun res!889995 () Bool)

(assert (=> b!1341426 (=> (not res!889995) (not e!763885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91191 (_ BitVec 32)) Bool)

(assert (=> b!1341426 (= res!889995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!889996 () Bool)

(assert (=> start!113176 (=> (not res!889996) (not e!763885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113176 (= res!889996 (validMask!0 mask!1977))))

(assert (=> start!113176 e!763885))

(assert (=> start!113176 tp_is_empty!37191))

(assert (=> start!113176 true))

(declare-fun array_inv!33121 (array!91191) Bool)

(assert (=> start!113176 (array_inv!33121 _keys!1571)))

(declare-fun array_inv!33122 (array!91193) Bool)

(assert (=> start!113176 (and (array_inv!33122 _values!1303) e!763886)))

(assert (=> start!113176 tp!109378))

(declare-fun b!1341427 () Bool)

(assert (=> b!1341427 (= e!763883 tp_is_empty!37191)))

(declare-fun b!1341428 () Bool)

(declare-fun res!890001 () Bool)

(assert (=> b!1341428 (=> (not res!890001) (not e!763885))))

(assert (=> b!1341428 (= res!890001 (not (= (select (arr!44047 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1341429 () Bool)

(declare-fun res!889997 () Bool)

(assert (=> b!1341429 (=> (not res!889997) (not e!763885))))

(declare-fun minValue!1245 () V!54691)

(declare-fun zeroValue!1245 () V!54691)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24188 0))(
  ( (tuple2!24189 (_1!12104 (_ BitVec 64)) (_2!12104 V!54691)) )
))
(declare-datatypes ((List!31369 0))(
  ( (Nil!31366) (Cons!31365 (h!32574 tuple2!24188) (t!45778 List!31369)) )
))
(declare-datatypes ((ListLongMap!21857 0))(
  ( (ListLongMap!21858 (toList!10944 List!31369)) )
))
(declare-fun contains!9056 (ListLongMap!21857 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5845 (array!91191 array!91193 (_ BitVec 32) (_ BitVec 32) V!54691 V!54691 (_ BitVec 32) Int) ListLongMap!21857)

(assert (=> b!1341429 (= res!889997 (contains!9056 (getCurrentListMap!5845 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1341430 () Bool)

(declare-fun res!890000 () Bool)

(assert (=> b!1341430 (=> (not res!890000) (not e!763885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341430 (= res!890000 (validKeyInArray!0 (select (arr!44047 _keys!1571) from!1960)))))

(declare-fun b!1341431 () Bool)

(assert (=> b!1341431 (= e!763885 (not true))))

(declare-fun lt!594090 () ListLongMap!21857)

(assert (=> b!1341431 (contains!9056 lt!594090 k0!1142)))

(declare-datatypes ((Unit!43965 0))(
  ( (Unit!43966) )
))
(declare-fun lt!594091 () Unit!43965)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!342 ((_ BitVec 64) (_ BitVec 64) V!54691 ListLongMap!21857) Unit!43965)

(assert (=> b!1341431 (= lt!594091 (lemmaInListMapAfterAddingDiffThenInBefore!342 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594090))))

(declare-fun +!4750 (ListLongMap!21857 tuple2!24188) ListLongMap!21857)

(declare-fun getCurrentListMapNoExtraKeys!6473 (array!91191 array!91193 (_ BitVec 32) (_ BitVec 32) V!54691 V!54691 (_ BitVec 32) Int) ListLongMap!21857)

(declare-fun get!22275 (ValueCell!17697 V!54691) V!54691)

(declare-fun dynLambda!3787 (Int (_ BitVec 64)) V!54691)

(assert (=> b!1341431 (= lt!594090 (+!4750 (getCurrentListMapNoExtraKeys!6473 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24189 (select (arr!44047 _keys!1571) from!1960) (get!22275 (select (arr!44048 _values!1303) from!1960) (dynLambda!3787 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341432 () Bool)

(declare-fun res!890003 () Bool)

(assert (=> b!1341432 (=> (not res!890003) (not e!763885))))

(declare-datatypes ((List!31370 0))(
  ( (Nil!31367) (Cons!31366 (h!32575 (_ BitVec 64)) (t!45779 List!31370)) )
))
(declare-fun arrayNoDuplicates!0 (array!91191 (_ BitVec 32) List!31370) Bool)

(assert (=> b!1341432 (= res!890003 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31367))))

(declare-fun mapNonEmpty!57493 () Bool)

(declare-fun tp!109379 () Bool)

(assert (=> mapNonEmpty!57493 (= mapRes!57493 (and tp!109379 e!763884))))

(declare-fun mapValue!57493 () ValueCell!17697)

(declare-fun mapRest!57493 () (Array (_ BitVec 32) ValueCell!17697))

(declare-fun mapKey!57493 () (_ BitVec 32))

(assert (=> mapNonEmpty!57493 (= (arr!44048 _values!1303) (store mapRest!57493 mapKey!57493 mapValue!57493))))

(declare-fun b!1341433 () Bool)

(declare-fun res!889998 () Bool)

(assert (=> b!1341433 (=> (not res!889998) (not e!763885))))

(assert (=> b!1341433 (= res!889998 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57493 () Bool)

(assert (=> mapIsEmpty!57493 mapRes!57493))

(assert (= (and start!113176 res!889996) b!1341424))

(assert (= (and b!1341424 res!889999) b!1341426))

(assert (= (and b!1341426 res!889995) b!1341432))

(assert (= (and b!1341432 res!890003) b!1341423))

(assert (= (and b!1341423 res!890002) b!1341429))

(assert (= (and b!1341429 res!889997) b!1341428))

(assert (= (and b!1341428 res!890001) b!1341430))

(assert (= (and b!1341430 res!890000) b!1341433))

(assert (= (and b!1341433 res!889998) b!1341431))

(assert (= (and b!1341425 condMapEmpty!57493) mapIsEmpty!57493))

(assert (= (and b!1341425 (not condMapEmpty!57493)) mapNonEmpty!57493))

(get-info :version)

(assert (= (and mapNonEmpty!57493 ((_ is ValueCellFull!17697) mapValue!57493)) b!1341422))

(assert (= (and b!1341425 ((_ is ValueCellFull!17697) mapDefault!57493)) b!1341427))

(assert (= start!113176 b!1341425))

(declare-fun b_lambda!24377 () Bool)

(assert (=> (not b_lambda!24377) (not b!1341431)))

(declare-fun t!45777 () Bool)

(declare-fun tb!12213 () Bool)

(assert (=> (and start!113176 (= defaultEntry!1306 defaultEntry!1306) t!45777) tb!12213))

(declare-fun result!25509 () Bool)

(assert (=> tb!12213 (= result!25509 tp_is_empty!37191)))

(assert (=> b!1341431 t!45777))

(declare-fun b_and!50301 () Bool)

(assert (= b_and!50299 (and (=> t!45777 result!25509) b_and!50301)))

(declare-fun m!1229105 () Bool)

(assert (=> start!113176 m!1229105))

(declare-fun m!1229107 () Bool)

(assert (=> start!113176 m!1229107))

(declare-fun m!1229109 () Bool)

(assert (=> start!113176 m!1229109))

(declare-fun m!1229111 () Bool)

(assert (=> b!1341429 m!1229111))

(assert (=> b!1341429 m!1229111))

(declare-fun m!1229113 () Bool)

(assert (=> b!1341429 m!1229113))

(declare-fun m!1229115 () Bool)

(assert (=> b!1341430 m!1229115))

(assert (=> b!1341430 m!1229115))

(declare-fun m!1229117 () Bool)

(assert (=> b!1341430 m!1229117))

(declare-fun m!1229119 () Bool)

(assert (=> b!1341426 m!1229119))

(assert (=> b!1341428 m!1229115))

(declare-fun m!1229121 () Bool)

(assert (=> b!1341432 m!1229121))

(declare-fun m!1229123 () Bool)

(assert (=> mapNonEmpty!57493 m!1229123))

(declare-fun m!1229125 () Bool)

(assert (=> b!1341431 m!1229125))

(declare-fun m!1229127 () Bool)

(assert (=> b!1341431 m!1229127))

(declare-fun m!1229129 () Bool)

(assert (=> b!1341431 m!1229129))

(declare-fun m!1229131 () Bool)

(assert (=> b!1341431 m!1229131))

(declare-fun m!1229133 () Bool)

(assert (=> b!1341431 m!1229133))

(assert (=> b!1341431 m!1229125))

(declare-fun m!1229135 () Bool)

(assert (=> b!1341431 m!1229135))

(assert (=> b!1341431 m!1229127))

(assert (=> b!1341431 m!1229129))

(declare-fun m!1229137 () Bool)

(assert (=> b!1341431 m!1229137))

(assert (=> b!1341431 m!1229115))

(check-sat (not b!1341432) b_and!50301 (not mapNonEmpty!57493) (not b_next!31191) (not b_lambda!24377) (not b!1341429) (not b!1341431) (not b!1341426) (not start!113176) (not b!1341430) tp_is_empty!37191)
(check-sat b_and!50301 (not b_next!31191))
