; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82642 () Bool)

(assert start!82642)

(declare-fun b_free!18747 () Bool)

(declare-fun b_next!18747 () Bool)

(assert (=> start!82642 (= b_free!18747 (not b_next!18747))))

(declare-fun tp!65362 () Bool)

(declare-fun b_and!30253 () Bool)

(assert (=> start!82642 (= tp!65362 b_and!30253)))

(declare-fun b!962748 () Bool)

(declare-fun res!644416 () Bool)

(declare-fun e!542937 () Bool)

(assert (=> b!962748 (=> (not res!644416) (not e!542937))))

(declare-datatypes ((array!59175 0))(
  ( (array!59176 (arr!28452 (Array (_ BitVec 32) (_ BitVec 64))) (size!28932 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59175)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962748 (= res!644416 (validKeyInArray!0 (select (arr!28452 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34318 () Bool)

(declare-fun mapRes!34318 () Bool)

(assert (=> mapIsEmpty!34318 mapRes!34318))

(declare-fun b!962749 () Bool)

(declare-fun res!644413 () Bool)

(assert (=> b!962749 (=> (not res!644413) (not e!542937))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33715 0))(
  ( (V!33716 (val!10825 Int)) )
))
(declare-datatypes ((ValueCell!10293 0))(
  ( (ValueCellFull!10293 (v!13383 V!33715)) (EmptyCell!10293) )
))
(declare-datatypes ((array!59177 0))(
  ( (array!59178 (arr!28453 (Array (_ BitVec 32) ValueCell!10293)) (size!28933 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59177)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!962749 (= res!644413 (and (= (size!28933 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28932 _keys!1686) (size!28933 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962750 () Bool)

(declare-fun e!542935 () Bool)

(declare-fun e!542938 () Bool)

(assert (=> b!962750 (= e!542935 (and e!542938 mapRes!34318))))

(declare-fun condMapEmpty!34318 () Bool)

(declare-fun mapDefault!34318 () ValueCell!10293)

(assert (=> b!962750 (= condMapEmpty!34318 (= (arr!28453 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10293)) mapDefault!34318)))))

(declare-fun b!962751 () Bool)

(declare-fun res!644417 () Bool)

(assert (=> b!962751 (=> (not res!644417) (not e!542937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59175 (_ BitVec 32)) Bool)

(assert (=> b!962751 (= res!644417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34318 () Bool)

(declare-fun tp!65361 () Bool)

(declare-fun e!542936 () Bool)

(assert (=> mapNonEmpty!34318 (= mapRes!34318 (and tp!65361 e!542936))))

(declare-fun mapRest!34318 () (Array (_ BitVec 32) ValueCell!10293))

(declare-fun mapValue!34318 () ValueCell!10293)

(declare-fun mapKey!34318 () (_ BitVec 32))

(assert (=> mapNonEmpty!34318 (= (arr!28453 _values!1400) (store mapRest!34318 mapKey!34318 mapValue!34318))))

(declare-fun b!962752 () Bool)

(declare-fun res!644415 () Bool)

(assert (=> b!962752 (=> (not res!644415) (not e!542937))))

(declare-datatypes ((List!19868 0))(
  ( (Nil!19865) (Cons!19864 (h!21026 (_ BitVec 64)) (t!28239 List!19868)) )
))
(declare-fun arrayNoDuplicates!0 (array!59175 (_ BitVec 32) List!19868) Bool)

(assert (=> b!962752 (= res!644415 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19865))))

(declare-fun res!644420 () Bool)

(assert (=> start!82642 (=> (not res!644420) (not e!542937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82642 (= res!644420 (validMask!0 mask!2110))))

(assert (=> start!82642 e!542937))

(assert (=> start!82642 true))

(declare-fun array_inv!21969 (array!59177) Bool)

(assert (=> start!82642 (and (array_inv!21969 _values!1400) e!542935)))

(declare-fun array_inv!21970 (array!59175) Bool)

(assert (=> start!82642 (array_inv!21970 _keys!1686)))

(assert (=> start!82642 tp!65362))

(declare-fun tp_is_empty!21549 () Bool)

(assert (=> start!82642 tp_is_empty!21549))

(declare-fun b!962753 () Bool)

(declare-fun res!644419 () Bool)

(assert (=> b!962753 (=> (not res!644419) (not e!542937))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962753 (= res!644419 (bvsgt from!2084 newFrom!159))))

(declare-fun b!962754 () Bool)

(declare-fun res!644418 () Bool)

(assert (=> b!962754 (=> (not res!644418) (not e!542937))))

(declare-fun minValue!1342 () V!33715)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33715)

(declare-datatypes ((tuple2!13984 0))(
  ( (tuple2!13985 (_1!7002 (_ BitVec 64)) (_2!7002 V!33715)) )
))
(declare-datatypes ((List!19869 0))(
  ( (Nil!19866) (Cons!19865 (h!21027 tuple2!13984) (t!28240 List!19869)) )
))
(declare-datatypes ((ListLongMap!12695 0))(
  ( (ListLongMap!12696 (toList!6363 List!19869)) )
))
(declare-fun contains!5417 (ListLongMap!12695 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3548 (array!59175 array!59177 (_ BitVec 32) (_ BitVec 32) V!33715 V!33715 (_ BitVec 32) Int) ListLongMap!12695)

(assert (=> b!962754 (= res!644418 (contains!5417 (getCurrentListMap!3548 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28452 _keys!1686) i!803)))))

(declare-fun b!962755 () Bool)

(assert (=> b!962755 (= e!542937 (not true))))

(assert (=> b!962755 (contains!5417 (getCurrentListMap!3548 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28452 _keys!1686) i!803))))

(declare-datatypes ((Unit!32193 0))(
  ( (Unit!32194) )
))
(declare-fun lt!430869 () Unit!32193)

(declare-fun lemmaInListMapFromThenInFromMinusOne!5 (array!59175 array!59177 (_ BitVec 32) (_ BitVec 32) V!33715 V!33715 (_ BitVec 32) (_ BitVec 32) Int) Unit!32193)

(assert (=> b!962755 (= lt!430869 (lemmaInListMapFromThenInFromMinusOne!5 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962756 () Bool)

(assert (=> b!962756 (= e!542938 tp_is_empty!21549)))

(declare-fun b!962757 () Bool)

(declare-fun res!644414 () Bool)

(assert (=> b!962757 (=> (not res!644414) (not e!542937))))

(assert (=> b!962757 (= res!644414 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28932 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28932 _keys!1686))))))

(declare-fun b!962758 () Bool)

(assert (=> b!962758 (= e!542936 tp_is_empty!21549)))

(assert (= (and start!82642 res!644420) b!962749))

(assert (= (and b!962749 res!644413) b!962751))

(assert (= (and b!962751 res!644417) b!962752))

(assert (= (and b!962752 res!644415) b!962757))

(assert (= (and b!962757 res!644414) b!962748))

(assert (= (and b!962748 res!644416) b!962754))

(assert (= (and b!962754 res!644418) b!962753))

(assert (= (and b!962753 res!644419) b!962755))

(assert (= (and b!962750 condMapEmpty!34318) mapIsEmpty!34318))

(assert (= (and b!962750 (not condMapEmpty!34318)) mapNonEmpty!34318))

(get-info :version)

(assert (= (and mapNonEmpty!34318 ((_ is ValueCellFull!10293) mapValue!34318)) b!962758))

(assert (= (and b!962750 ((_ is ValueCellFull!10293) mapDefault!34318)) b!962756))

(assert (= start!82642 b!962750))

(declare-fun m!892389 () Bool)

(assert (=> b!962751 m!892389))

(declare-fun m!892391 () Bool)

(assert (=> b!962754 m!892391))

(declare-fun m!892393 () Bool)

(assert (=> b!962754 m!892393))

(assert (=> b!962754 m!892391))

(assert (=> b!962754 m!892393))

(declare-fun m!892395 () Bool)

(assert (=> b!962754 m!892395))

(declare-fun m!892397 () Bool)

(assert (=> mapNonEmpty!34318 m!892397))

(declare-fun m!892399 () Bool)

(assert (=> b!962752 m!892399))

(declare-fun m!892401 () Bool)

(assert (=> b!962755 m!892401))

(assert (=> b!962755 m!892393))

(assert (=> b!962755 m!892401))

(assert (=> b!962755 m!892393))

(declare-fun m!892403 () Bool)

(assert (=> b!962755 m!892403))

(declare-fun m!892405 () Bool)

(assert (=> b!962755 m!892405))

(assert (=> b!962748 m!892393))

(assert (=> b!962748 m!892393))

(declare-fun m!892407 () Bool)

(assert (=> b!962748 m!892407))

(declare-fun m!892409 () Bool)

(assert (=> start!82642 m!892409))

(declare-fun m!892411 () Bool)

(assert (=> start!82642 m!892411))

(declare-fun m!892413 () Bool)

(assert (=> start!82642 m!892413))

(check-sat (not b!962755) (not b!962752) (not b!962751) (not b!962754) (not mapNonEmpty!34318) (not b!962748) (not b_next!18747) tp_is_empty!21549 (not start!82642) b_and!30253)
(check-sat b_and!30253 (not b_next!18747))
