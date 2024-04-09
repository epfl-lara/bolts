; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113242 () Bool)

(assert start!113242)

(declare-fun b_free!31257 () Bool)

(declare-fun b_next!31257 () Bool)

(assert (=> start!113242 (= b_free!31257 (not b_next!31257))))

(declare-fun tp!109577 () Bool)

(declare-fun b_and!50431 () Bool)

(assert (=> start!113242 (= tp!109577 b_and!50431)))

(declare-fun b!1342676 () Bool)

(declare-fun res!890886 () Bool)

(declare-fun e!764379 () Bool)

(assert (=> b!1342676 (=> (not res!890886) (not e!764379))))

(declare-datatypes ((array!91315 0))(
  ( (array!91316 (arr!44109 (Array (_ BitVec 32) (_ BitVec 64))) (size!44660 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91315)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91315 (_ BitVec 32)) Bool)

(assert (=> b!1342676 (= res!890886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57592 () Bool)

(declare-fun mapRes!57592 () Bool)

(declare-fun tp!109576 () Bool)

(declare-fun e!764381 () Bool)

(assert (=> mapNonEmpty!57592 (= mapRes!57592 (and tp!109576 e!764381))))

(declare-fun mapKey!57592 () (_ BitVec 32))

(declare-datatypes ((V!54779 0))(
  ( (V!54780 (val!18703 Int)) )
))
(declare-datatypes ((ValueCell!17730 0))(
  ( (ValueCellFull!17730 (v!21349 V!54779)) (EmptyCell!17730) )
))
(declare-fun mapValue!57592 () ValueCell!17730)

(declare-fun mapRest!57592 () (Array (_ BitVec 32) ValueCell!17730))

(declare-datatypes ((array!91317 0))(
  ( (array!91318 (arr!44110 (Array (_ BitVec 32) ValueCell!17730)) (size!44661 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91317)

(assert (=> mapNonEmpty!57592 (= (arr!44110 _values!1303) (store mapRest!57592 mapKey!57592 mapValue!57592))))

(declare-fun b!1342677 () Bool)

(declare-fun res!890893 () Bool)

(assert (=> b!1342677 (=> (not res!890893) (not e!764379))))

(declare-datatypes ((List!31418 0))(
  ( (Nil!31415) (Cons!31414 (h!32623 (_ BitVec 64)) (t!45893 List!31418)) )
))
(declare-fun arrayNoDuplicates!0 (array!91315 (_ BitVec 32) List!31418) Bool)

(assert (=> b!1342677 (= res!890893 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31415))))

(declare-fun b!1342678 () Bool)

(declare-fun e!764378 () Bool)

(declare-fun e!764380 () Bool)

(assert (=> b!1342678 (= e!764378 (and e!764380 mapRes!57592))))

(declare-fun condMapEmpty!57592 () Bool)

(declare-fun mapDefault!57592 () ValueCell!17730)

(assert (=> b!1342678 (= condMapEmpty!57592 (= (arr!44110 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17730)) mapDefault!57592)))))

(declare-fun mapIsEmpty!57592 () Bool)

(assert (=> mapIsEmpty!57592 mapRes!57592))

(declare-fun b!1342679 () Bool)

(declare-fun tp_is_empty!37257 () Bool)

(assert (=> b!1342679 (= e!764380 tp_is_empty!37257)))

(declare-fun b!1342680 () Bool)

(declare-fun res!890887 () Bool)

(assert (=> b!1342680 (=> (not res!890887) (not e!764379))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342680 (= res!890887 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342681 () Bool)

(declare-fun res!890892 () Bool)

(assert (=> b!1342681 (=> (not res!890892) (not e!764379))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342681 (= res!890892 (not (= (select (arr!44109 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1342682 () Bool)

(declare-fun res!890889 () Bool)

(assert (=> b!1342682 (=> (not res!890889) (not e!764379))))

(declare-fun minValue!1245 () V!54779)

(declare-fun zeroValue!1245 () V!54779)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24238 0))(
  ( (tuple2!24239 (_1!12129 (_ BitVec 64)) (_2!12129 V!54779)) )
))
(declare-datatypes ((List!31419 0))(
  ( (Nil!31416) (Cons!31415 (h!32624 tuple2!24238) (t!45894 List!31419)) )
))
(declare-datatypes ((ListLongMap!21907 0))(
  ( (ListLongMap!21908 (toList!10969 List!31419)) )
))
(declare-fun contains!9081 (ListLongMap!21907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5866 (array!91315 array!91317 (_ BitVec 32) (_ BitVec 32) V!54779 V!54779 (_ BitVec 32) Int) ListLongMap!21907)

(assert (=> b!1342682 (= res!890889 (contains!9081 (getCurrentListMap!5866 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1342683 () Bool)

(declare-fun res!890888 () Bool)

(assert (=> b!1342683 (=> (not res!890888) (not e!764379))))

(assert (=> b!1342683 (= res!890888 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44660 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!890894 () Bool)

(assert (=> start!113242 (=> (not res!890894) (not e!764379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113242 (= res!890894 (validMask!0 mask!1977))))

(assert (=> start!113242 e!764379))

(assert (=> start!113242 tp_is_empty!37257))

(assert (=> start!113242 true))

(declare-fun array_inv!33165 (array!91315) Bool)

(assert (=> start!113242 (array_inv!33165 _keys!1571)))

(declare-fun array_inv!33166 (array!91317) Bool)

(assert (=> start!113242 (and (array_inv!33166 _values!1303) e!764378)))

(assert (=> start!113242 tp!109577))

(declare-fun b!1342684 () Bool)

(declare-fun res!890890 () Bool)

(assert (=> b!1342684 (=> (not res!890890) (not e!764379))))

(assert (=> b!1342684 (= res!890890 (and (= (size!44661 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44660 _keys!1571) (size!44661 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342685 () Bool)

(assert (=> b!1342685 (= e!764381 tp_is_empty!37257)))

(declare-fun b!1342686 () Bool)

(assert (=> b!1342686 (= e!764379 (not true))))

(declare-fun lt!594546 () ListLongMap!21907)

(assert (=> b!1342686 (contains!9081 lt!594546 k0!1142)))

(declare-fun lt!594550 () V!54779)

(declare-datatypes ((Unit!44005 0))(
  ( (Unit!44006) )
))
(declare-fun lt!594548 () Unit!44005)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!362 ((_ BitVec 64) (_ BitVec 64) V!54779 ListLongMap!21907) Unit!44005)

(assert (=> b!1342686 (= lt!594548 (lemmaInListMapAfterAddingDiffThenInBefore!362 k0!1142 (select (arr!44109 _keys!1571) from!1960) lt!594550 lt!594546))))

(declare-fun lt!594549 () ListLongMap!21907)

(assert (=> b!1342686 (contains!9081 lt!594549 k0!1142)))

(declare-fun lt!594547 () Unit!44005)

(assert (=> b!1342686 (= lt!594547 (lemmaInListMapAfterAddingDiffThenInBefore!362 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594549))))

(declare-fun +!4770 (ListLongMap!21907 tuple2!24238) ListLongMap!21907)

(assert (=> b!1342686 (= lt!594549 (+!4770 lt!594546 (tuple2!24239 (select (arr!44109 _keys!1571) from!1960) lt!594550)))))

(declare-fun get!22317 (ValueCell!17730 V!54779) V!54779)

(declare-fun dynLambda!3807 (Int (_ BitVec 64)) V!54779)

(assert (=> b!1342686 (= lt!594550 (get!22317 (select (arr!44110 _values!1303) from!1960) (dynLambda!3807 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6493 (array!91315 array!91317 (_ BitVec 32) (_ BitVec 32) V!54779 V!54779 (_ BitVec 32) Int) ListLongMap!21907)

(assert (=> b!1342686 (= lt!594546 (getCurrentListMapNoExtraKeys!6493 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342687 () Bool)

(declare-fun res!890891 () Bool)

(assert (=> b!1342687 (=> (not res!890891) (not e!764379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342687 (= res!890891 (validKeyInArray!0 (select (arr!44109 _keys!1571) from!1960)))))

(assert (= (and start!113242 res!890894) b!1342684))

(assert (= (and b!1342684 res!890890) b!1342676))

(assert (= (and b!1342676 res!890886) b!1342677))

(assert (= (and b!1342677 res!890893) b!1342683))

(assert (= (and b!1342683 res!890888) b!1342682))

(assert (= (and b!1342682 res!890889) b!1342681))

(assert (= (and b!1342681 res!890892) b!1342687))

(assert (= (and b!1342687 res!890891) b!1342680))

(assert (= (and b!1342680 res!890887) b!1342686))

(assert (= (and b!1342678 condMapEmpty!57592) mapIsEmpty!57592))

(assert (= (and b!1342678 (not condMapEmpty!57592)) mapNonEmpty!57592))

(get-info :version)

(assert (= (and mapNonEmpty!57592 ((_ is ValueCellFull!17730) mapValue!57592)) b!1342685))

(assert (= (and b!1342678 ((_ is ValueCellFull!17730) mapDefault!57592)) b!1342679))

(assert (= start!113242 b!1342678))

(declare-fun b_lambda!24443 () Bool)

(assert (=> (not b_lambda!24443) (not b!1342686)))

(declare-fun t!45892 () Bool)

(declare-fun tb!12279 () Bool)

(assert (=> (and start!113242 (= defaultEntry!1306 defaultEntry!1306) t!45892) tb!12279))

(declare-fun result!25641 () Bool)

(assert (=> tb!12279 (= result!25641 tp_is_empty!37257)))

(assert (=> b!1342686 t!45892))

(declare-fun b_and!50433 () Bool)

(assert (= b_and!50431 (and (=> t!45892 result!25641) b_and!50433)))

(declare-fun m!1230339 () Bool)

(assert (=> b!1342676 m!1230339))

(declare-fun m!1230341 () Bool)

(assert (=> start!113242 m!1230341))

(declare-fun m!1230343 () Bool)

(assert (=> start!113242 m!1230343))

(declare-fun m!1230345 () Bool)

(assert (=> start!113242 m!1230345))

(declare-fun m!1230347 () Bool)

(assert (=> b!1342677 m!1230347))

(declare-fun m!1230349 () Bool)

(assert (=> b!1342687 m!1230349))

(assert (=> b!1342687 m!1230349))

(declare-fun m!1230351 () Bool)

(assert (=> b!1342687 m!1230351))

(declare-fun m!1230353 () Bool)

(assert (=> mapNonEmpty!57592 m!1230353))

(declare-fun m!1230355 () Bool)

(assert (=> b!1342682 m!1230355))

(assert (=> b!1342682 m!1230355))

(declare-fun m!1230357 () Bool)

(assert (=> b!1342682 m!1230357))

(assert (=> b!1342681 m!1230349))

(declare-fun m!1230359 () Bool)

(assert (=> b!1342686 m!1230359))

(declare-fun m!1230361 () Bool)

(assert (=> b!1342686 m!1230361))

(declare-fun m!1230363 () Bool)

(assert (=> b!1342686 m!1230363))

(declare-fun m!1230365 () Bool)

(assert (=> b!1342686 m!1230365))

(declare-fun m!1230367 () Bool)

(assert (=> b!1342686 m!1230367))

(declare-fun m!1230369 () Bool)

(assert (=> b!1342686 m!1230369))

(assert (=> b!1342686 m!1230365))

(assert (=> b!1342686 m!1230349))

(assert (=> b!1342686 m!1230349))

(declare-fun m!1230371 () Bool)

(assert (=> b!1342686 m!1230371))

(declare-fun m!1230373 () Bool)

(assert (=> b!1342686 m!1230373))

(assert (=> b!1342686 m!1230367))

(declare-fun m!1230375 () Bool)

(assert (=> b!1342686 m!1230375))

(check-sat (not b!1342676) (not b_next!31257) (not b_lambda!24443) (not b!1342677) tp_is_empty!37257 (not b!1342686) (not start!113242) (not b!1342682) (not b!1342687) b_and!50433 (not mapNonEmpty!57592))
(check-sat b_and!50433 (not b_next!31257))
