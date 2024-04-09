; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97146 () Bool)

(assert start!97146)

(declare-fun b!1104402 () Bool)

(declare-fun e!630441 () Bool)

(assert (=> b!1104402 (= e!630441 false)))

(declare-fun lt!495120 () Bool)

(declare-datatypes ((array!71592 0))(
  ( (array!71593 (arr!34446 (Array (_ BitVec 32) (_ BitVec 64))) (size!34983 (_ BitVec 32))) )
))
(declare-fun lt!495119 () array!71592)

(declare-datatypes ((List!24178 0))(
  ( (Nil!24175) (Cons!24174 (h!25383 (_ BitVec 64)) (t!34450 List!24178)) )
))
(declare-fun arrayNoDuplicates!0 (array!71592 (_ BitVec 32) List!24178) Bool)

(assert (=> b!1104402 (= lt!495120 (arrayNoDuplicates!0 lt!495119 #b00000000000000000000000000000000 Nil!24175))))

(declare-fun res!736921 () Bool)

(declare-fun e!630445 () Bool)

(assert (=> start!97146 (=> (not res!736921) (not e!630445))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!71592)

(assert (=> start!97146 (= res!736921 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34983 _keys!1208))))))

(assert (=> start!97146 e!630445))

(declare-fun array_inv!26380 (array!71592) Bool)

(assert (=> start!97146 (array_inv!26380 _keys!1208)))

(assert (=> start!97146 true))

(declare-datatypes ((V!41603 0))(
  ( (V!41604 (val!13735 Int)) )
))
(declare-datatypes ((ValueCell!12969 0))(
  ( (ValueCellFull!12969 (v!16369 V!41603)) (EmptyCell!12969) )
))
(declare-datatypes ((array!71594 0))(
  ( (array!71595 (arr!34447 (Array (_ BitVec 32) ValueCell!12969)) (size!34984 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71594)

(declare-fun e!630442 () Bool)

(declare-fun array_inv!26381 (array!71594) Bool)

(assert (=> start!97146 (and (array_inv!26381 _values!996) e!630442)))

(declare-fun mapIsEmpty!42850 () Bool)

(declare-fun mapRes!42850 () Bool)

(assert (=> mapIsEmpty!42850 mapRes!42850))

(declare-fun b!1104403 () Bool)

(declare-fun res!736914 () Bool)

(assert (=> b!1104403 (=> (not res!736914) (not e!630445))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1104403 (= res!736914 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34983 _keys!1208))))))

(declare-fun b!1104404 () Bool)

(assert (=> b!1104404 (= e!630445 e!630441)))

(declare-fun res!736913 () Bool)

(assert (=> b!1104404 (=> (not res!736913) (not e!630441))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71592 (_ BitVec 32)) Bool)

(assert (=> b!1104404 (= res!736913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495119 mask!1564))))

(assert (=> b!1104404 (= lt!495119 (array!71593 (store (arr!34446 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34983 _keys!1208)))))

(declare-fun mapNonEmpty!42850 () Bool)

(declare-fun tp!81771 () Bool)

(declare-fun e!630440 () Bool)

(assert (=> mapNonEmpty!42850 (= mapRes!42850 (and tp!81771 e!630440))))

(declare-fun mapKey!42850 () (_ BitVec 32))

(declare-fun mapValue!42850 () ValueCell!12969)

(declare-fun mapRest!42850 () (Array (_ BitVec 32) ValueCell!12969))

(assert (=> mapNonEmpty!42850 (= (arr!34447 _values!996) (store mapRest!42850 mapKey!42850 mapValue!42850))))

(declare-fun b!1104405 () Bool)

(declare-fun res!736919 () Bool)

(assert (=> b!1104405 (=> (not res!736919) (not e!630445))))

(assert (=> b!1104405 (= res!736919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104406 () Bool)

(declare-fun e!630443 () Bool)

(declare-fun tp_is_empty!27357 () Bool)

(assert (=> b!1104406 (= e!630443 tp_is_empty!27357)))

(declare-fun b!1104407 () Bool)

(assert (=> b!1104407 (= e!630440 tp_is_empty!27357)))

(declare-fun b!1104408 () Bool)

(declare-fun res!736918 () Bool)

(assert (=> b!1104408 (=> (not res!736918) (not e!630445))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104408 (= res!736918 (validKeyInArray!0 k0!934))))

(declare-fun b!1104409 () Bool)

(declare-fun res!736917 () Bool)

(assert (=> b!1104409 (=> (not res!736917) (not e!630445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104409 (= res!736917 (validMask!0 mask!1564))))

(declare-fun b!1104410 () Bool)

(declare-fun res!736915 () Bool)

(assert (=> b!1104410 (=> (not res!736915) (not e!630445))))

(assert (=> b!1104410 (= res!736915 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24175))))

(declare-fun b!1104411 () Bool)

(declare-fun res!736916 () Bool)

(assert (=> b!1104411 (=> (not res!736916) (not e!630445))))

(assert (=> b!1104411 (= res!736916 (= (select (arr!34446 _keys!1208) i!673) k0!934))))

(declare-fun b!1104412 () Bool)

(declare-fun res!736920 () Bool)

(assert (=> b!1104412 (=> (not res!736920) (not e!630445))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104412 (= res!736920 (and (= (size!34984 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34983 _keys!1208) (size!34984 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104413 () Bool)

(assert (=> b!1104413 (= e!630442 (and e!630443 mapRes!42850))))

(declare-fun condMapEmpty!42850 () Bool)

(declare-fun mapDefault!42850 () ValueCell!12969)

(assert (=> b!1104413 (= condMapEmpty!42850 (= (arr!34447 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12969)) mapDefault!42850)))))

(assert (= (and start!97146 res!736921) b!1104409))

(assert (= (and b!1104409 res!736917) b!1104412))

(assert (= (and b!1104412 res!736920) b!1104405))

(assert (= (and b!1104405 res!736919) b!1104410))

(assert (= (and b!1104410 res!736915) b!1104403))

(assert (= (and b!1104403 res!736914) b!1104408))

(assert (= (and b!1104408 res!736918) b!1104411))

(assert (= (and b!1104411 res!736916) b!1104404))

(assert (= (and b!1104404 res!736913) b!1104402))

(assert (= (and b!1104413 condMapEmpty!42850) mapIsEmpty!42850))

(assert (= (and b!1104413 (not condMapEmpty!42850)) mapNonEmpty!42850))

(get-info :version)

(assert (= (and mapNonEmpty!42850 ((_ is ValueCellFull!12969) mapValue!42850)) b!1104407))

(assert (= (and b!1104413 ((_ is ValueCellFull!12969) mapDefault!42850)) b!1104406))

(assert (= start!97146 b!1104413))

(declare-fun m!1024281 () Bool)

(assert (=> b!1104405 m!1024281))

(declare-fun m!1024283 () Bool)

(assert (=> mapNonEmpty!42850 m!1024283))

(declare-fun m!1024285 () Bool)

(assert (=> b!1104408 m!1024285))

(declare-fun m!1024287 () Bool)

(assert (=> b!1104402 m!1024287))

(declare-fun m!1024289 () Bool)

(assert (=> b!1104404 m!1024289))

(declare-fun m!1024291 () Bool)

(assert (=> b!1104404 m!1024291))

(declare-fun m!1024293 () Bool)

(assert (=> b!1104410 m!1024293))

(declare-fun m!1024295 () Bool)

(assert (=> b!1104409 m!1024295))

(declare-fun m!1024297 () Bool)

(assert (=> b!1104411 m!1024297))

(declare-fun m!1024299 () Bool)

(assert (=> start!97146 m!1024299))

(declare-fun m!1024301 () Bool)

(assert (=> start!97146 m!1024301))

(check-sat (not mapNonEmpty!42850) (not b!1104404) (not b!1104409) tp_is_empty!27357 (not b!1104405) (not start!97146) (not b!1104410) (not b!1104408) (not b!1104402))
(check-sat)
