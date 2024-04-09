; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82720 () Bool)

(assert start!82720)

(declare-fun b_free!18825 () Bool)

(declare-fun b_next!18825 () Bool)

(assert (=> start!82720 (= b_free!18825 (not b_next!18825))))

(declare-fun tp!65595 () Bool)

(declare-fun b_and!30331 () Bool)

(assert (=> start!82720 (= tp!65595 b_and!30331)))

(declare-fun b!964058 () Bool)

(declare-fun e!543545 () Bool)

(assert (=> b!964058 (= e!543545 true)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33819 0))(
  ( (V!33820 (val!10864 Int)) )
))
(declare-datatypes ((ValueCell!10332 0))(
  ( (ValueCellFull!10332 (v!13422 V!33819)) (EmptyCell!10332) )
))
(declare-datatypes ((array!59329 0))(
  ( (array!59330 (arr!28529 (Array (_ BitVec 32) ValueCell!10332)) (size!29009 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59329)

(declare-datatypes ((array!59331 0))(
  ( (array!59332 (arr!28530 (Array (_ BitVec 32) (_ BitVec 64))) (size!29010 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59331)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33819)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33819)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-datatypes ((tuple2!14046 0))(
  ( (tuple2!14047 (_1!7033 (_ BitVec 64)) (_2!7033 V!33819)) )
))
(declare-datatypes ((List!19924 0))(
  ( (Nil!19921) (Cons!19920 (h!21082 tuple2!14046) (t!28295 List!19924)) )
))
(declare-datatypes ((ListLongMap!12757 0))(
  ( (ListLongMap!12758 (toList!6394 List!19924)) )
))
(declare-fun contains!5448 (ListLongMap!12757 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3579 (array!59331 array!59329 (_ BitVec 32) (_ BitVec 32) V!33819 V!33819 (_ BitVec 32) Int) ListLongMap!12757)

(assert (=> b!964058 (contains!5448 (getCurrentListMap!3579 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28530 _keys!1686) i!803))))

(declare-datatypes ((Unit!32243 0))(
  ( (Unit!32244) )
))
(declare-fun lt!431009 () Unit!32243)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!22 (array!59331 array!59329 (_ BitVec 32) (_ BitVec 32) V!33819 V!33819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32243)

(assert (=> b!964058 (= lt!431009 (lemmaInListMapFromThenInFromSmaller!22 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun mapIsEmpty!34435 () Bool)

(declare-fun mapRes!34435 () Bool)

(assert (=> mapIsEmpty!34435 mapRes!34435))

(declare-fun b!964059 () Bool)

(declare-fun res!645376 () Bool)

(declare-fun e!543547 () Bool)

(assert (=> b!964059 (=> (not res!645376) (not e!543547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59331 (_ BitVec 32)) Bool)

(assert (=> b!964059 (= res!645376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964060 () Bool)

(declare-fun e!543543 () Bool)

(declare-fun tp_is_empty!21627 () Bool)

(assert (=> b!964060 (= e!543543 tp_is_empty!21627)))

(declare-fun res!645379 () Bool)

(assert (=> start!82720 (=> (not res!645379) (not e!543547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82720 (= res!645379 (validMask!0 mask!2110))))

(assert (=> start!82720 e!543547))

(assert (=> start!82720 true))

(declare-fun e!543546 () Bool)

(declare-fun array_inv!22011 (array!59329) Bool)

(assert (=> start!82720 (and (array_inv!22011 _values!1400) e!543546)))

(declare-fun array_inv!22012 (array!59331) Bool)

(assert (=> start!82720 (array_inv!22012 _keys!1686)))

(assert (=> start!82720 tp!65595))

(assert (=> start!82720 tp_is_empty!21627))

(declare-fun b!964061 () Bool)

(declare-fun e!543544 () Bool)

(assert (=> b!964061 (= e!543544 tp_is_empty!21627)))

(declare-fun mapNonEmpty!34435 () Bool)

(declare-fun tp!65596 () Bool)

(assert (=> mapNonEmpty!34435 (= mapRes!34435 (and tp!65596 e!543543))))

(declare-fun mapRest!34435 () (Array (_ BitVec 32) ValueCell!10332))

(declare-fun mapValue!34435 () ValueCell!10332)

(declare-fun mapKey!34435 () (_ BitVec 32))

(assert (=> mapNonEmpty!34435 (= (arr!28529 _values!1400) (store mapRest!34435 mapKey!34435 mapValue!34435))))

(declare-fun b!964062 () Bool)

(assert (=> b!964062 (= e!543547 (not e!543545))))

(declare-fun res!645380 () Bool)

(assert (=> b!964062 (=> res!645380 e!543545)))

(assert (=> b!964062 (= res!645380 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29010 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964062 (contains!5448 (getCurrentListMap!3579 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28530 _keys!1686) i!803))))

(declare-fun lt!431010 () Unit!32243)

(declare-fun lemmaInListMapFromThenInFromMinusOne!30 (array!59331 array!59329 (_ BitVec 32) (_ BitVec 32) V!33819 V!33819 (_ BitVec 32) (_ BitVec 32) Int) Unit!32243)

(assert (=> b!964062 (= lt!431010 (lemmaInListMapFromThenInFromMinusOne!30 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964063 () Bool)

(declare-fun res!645372 () Bool)

(assert (=> b!964063 (=> (not res!645372) (not e!543547))))

(declare-datatypes ((List!19925 0))(
  ( (Nil!19922) (Cons!19921 (h!21083 (_ BitVec 64)) (t!28296 List!19925)) )
))
(declare-fun arrayNoDuplicates!0 (array!59331 (_ BitVec 32) List!19925) Bool)

(assert (=> b!964063 (= res!645372 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19922))))

(declare-fun b!964064 () Bool)

(declare-fun res!645374 () Bool)

(assert (=> b!964064 (=> (not res!645374) (not e!543547))))

(assert (=> b!964064 (= res!645374 (contains!5448 (getCurrentListMap!3579 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28530 _keys!1686) i!803)))))

(declare-fun b!964065 () Bool)

(declare-fun res!645377 () Bool)

(assert (=> b!964065 (=> (not res!645377) (not e!543547))))

(assert (=> b!964065 (= res!645377 (and (= (size!29009 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29010 _keys!1686) (size!29009 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964066 () Bool)

(assert (=> b!964066 (= e!543546 (and e!543544 mapRes!34435))))

(declare-fun condMapEmpty!34435 () Bool)

(declare-fun mapDefault!34435 () ValueCell!10332)

(assert (=> b!964066 (= condMapEmpty!34435 (= (arr!28529 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10332)) mapDefault!34435)))))

(declare-fun b!964067 () Bool)

(declare-fun res!645378 () Bool)

(assert (=> b!964067 (=> (not res!645378) (not e!543547))))

(assert (=> b!964067 (= res!645378 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29010 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29010 _keys!1686))))))

(declare-fun b!964068 () Bool)

(declare-fun res!645373 () Bool)

(assert (=> b!964068 (=> (not res!645373) (not e!543547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964068 (= res!645373 (validKeyInArray!0 (select (arr!28530 _keys!1686) i!803)))))

(declare-fun b!964069 () Bool)

(declare-fun res!645375 () Bool)

(assert (=> b!964069 (=> (not res!645375) (not e!543547))))

(assert (=> b!964069 (= res!645375 (bvsgt from!2084 newFrom!159))))

(assert (= (and start!82720 res!645379) b!964065))

(assert (= (and b!964065 res!645377) b!964059))

(assert (= (and b!964059 res!645376) b!964063))

(assert (= (and b!964063 res!645372) b!964067))

(assert (= (and b!964067 res!645378) b!964068))

(assert (= (and b!964068 res!645373) b!964064))

(assert (= (and b!964064 res!645374) b!964069))

(assert (= (and b!964069 res!645375) b!964062))

(assert (= (and b!964062 (not res!645380)) b!964058))

(assert (= (and b!964066 condMapEmpty!34435) mapIsEmpty!34435))

(assert (= (and b!964066 (not condMapEmpty!34435)) mapNonEmpty!34435))

(get-info :version)

(assert (= (and mapNonEmpty!34435 ((_ is ValueCellFull!10332) mapValue!34435)) b!964060))

(assert (= (and b!964066 ((_ is ValueCellFull!10332) mapDefault!34435)) b!964061))

(assert (= start!82720 b!964066))

(declare-fun m!893445 () Bool)

(assert (=> mapNonEmpty!34435 m!893445))

(declare-fun m!893447 () Bool)

(assert (=> b!964068 m!893447))

(assert (=> b!964068 m!893447))

(declare-fun m!893449 () Bool)

(assert (=> b!964068 m!893449))

(declare-fun m!893451 () Bool)

(assert (=> b!964058 m!893451))

(assert (=> b!964058 m!893447))

(assert (=> b!964058 m!893451))

(assert (=> b!964058 m!893447))

(declare-fun m!893453 () Bool)

(assert (=> b!964058 m!893453))

(declare-fun m!893455 () Bool)

(assert (=> b!964058 m!893455))

(declare-fun m!893457 () Bool)

(assert (=> b!964063 m!893457))

(declare-fun m!893459 () Bool)

(assert (=> b!964064 m!893459))

(assert (=> b!964064 m!893447))

(assert (=> b!964064 m!893459))

(assert (=> b!964064 m!893447))

(declare-fun m!893461 () Bool)

(assert (=> b!964064 m!893461))

(declare-fun m!893463 () Bool)

(assert (=> b!964059 m!893463))

(declare-fun m!893465 () Bool)

(assert (=> start!82720 m!893465))

(declare-fun m!893467 () Bool)

(assert (=> start!82720 m!893467))

(declare-fun m!893469 () Bool)

(assert (=> start!82720 m!893469))

(declare-fun m!893471 () Bool)

(assert (=> b!964062 m!893471))

(assert (=> b!964062 m!893447))

(assert (=> b!964062 m!893471))

(assert (=> b!964062 m!893447))

(declare-fun m!893473 () Bool)

(assert (=> b!964062 m!893473))

(declare-fun m!893475 () Bool)

(assert (=> b!964062 m!893475))

(check-sat (not b!964059) (not b!964063) (not b!964068) b_and!30331 (not b!964062) (not start!82720) tp_is_empty!21627 (not b!964058) (not mapNonEmpty!34435) (not b!964064) (not b_next!18825))
(check-sat b_and!30331 (not b_next!18825))
