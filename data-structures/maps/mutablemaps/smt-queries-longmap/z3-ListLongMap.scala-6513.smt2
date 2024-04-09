; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82948 () Bool)

(assert start!82948)

(declare-fun b_free!19047 () Bool)

(declare-fun b_next!19047 () Bool)

(assert (=> start!82948 (= b_free!19047 (not b_next!19047))))

(declare-fun tp!66270 () Bool)

(declare-fun b_and!30553 () Bool)

(assert (=> start!82948 (= tp!66270 b_and!30553)))

(declare-fun b!967464 () Bool)

(declare-fun res!647753 () Bool)

(declare-fun e!545313 () Bool)

(assert (=> b!967464 (=> (not res!647753) (not e!545313))))

(declare-datatypes ((array!59765 0))(
  ( (array!59766 (arr!28747 (Array (_ BitVec 32) (_ BitVec 64))) (size!29227 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59765)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967464 (= res!647753 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29227 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29227 _keys!1686))))))

(declare-fun b!967465 () Bool)

(declare-fun e!545314 () Bool)

(declare-fun tp_is_empty!21855 () Bool)

(assert (=> b!967465 (= e!545314 tp_is_empty!21855)))

(declare-fun b!967466 () Bool)

(declare-fun res!647756 () Bool)

(assert (=> b!967466 (=> (not res!647756) (not e!545313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967466 (= res!647756 (validKeyInArray!0 (select (arr!28747 _keys!1686) i!803)))))

(declare-fun b!967467 () Bool)

(declare-fun e!545312 () Bool)

(assert (=> b!967467 (= e!545312 tp_is_empty!21855)))

(declare-fun b!967468 () Bool)

(assert (=> b!967468 (= e!545313 (not (and (bvsge (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2084 #b00000000000000000000000000000001) (size!29227 _keys!1686)))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34123 0))(
  ( (V!34124 (val!10978 Int)) )
))
(declare-datatypes ((ValueCell!10446 0))(
  ( (ValueCellFull!10446 (v!13536 V!34123)) (EmptyCell!10446) )
))
(declare-datatypes ((array!59767 0))(
  ( (array!59768 (arr!28748 (Array (_ BitVec 32) ValueCell!10446)) (size!29228 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59767)

(declare-fun minValue!1342 () V!34123)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34123)

(declare-datatypes ((tuple2!14210 0))(
  ( (tuple2!14211 (_1!7115 (_ BitVec 64)) (_2!7115 V!34123)) )
))
(declare-datatypes ((List!20083 0))(
  ( (Nil!20080) (Cons!20079 (h!21241 tuple2!14210) (t!28454 List!20083)) )
))
(declare-datatypes ((ListLongMap!12921 0))(
  ( (ListLongMap!12922 (toList!6476 List!20083)) )
))
(declare-fun contains!5527 (ListLongMap!12921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3661 (array!59765 array!59767 (_ BitVec 32) (_ BitVec 32) V!34123 V!34123 (_ BitVec 32) Int) ListLongMap!12921)

(assert (=> b!967468 (contains!5527 (getCurrentListMap!3661 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28747 _keys!1686) i!803))))

(declare-datatypes ((Unit!32303 0))(
  ( (Unit!32304) )
))
(declare-fun lt!431382 () Unit!32303)

(declare-fun lemmaInListMapFromThenInFromMinusOne!58 (array!59765 array!59767 (_ BitVec 32) (_ BitVec 32) V!34123 V!34123 (_ BitVec 32) (_ BitVec 32) Int) Unit!32303)

(assert (=> b!967468 (= lt!431382 (lemmaInListMapFromThenInFromMinusOne!58 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967469 () Bool)

(declare-fun res!647758 () Bool)

(assert (=> b!967469 (=> (not res!647758) (not e!545313))))

(assert (=> b!967469 (= res!647758 (and (= (size!29228 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29227 _keys!1686) (size!29228 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34777 () Bool)

(declare-fun mapRes!34777 () Bool)

(assert (=> mapIsEmpty!34777 mapRes!34777))

(declare-fun res!647755 () Bool)

(assert (=> start!82948 (=> (not res!647755) (not e!545313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82948 (= res!647755 (validMask!0 mask!2110))))

(assert (=> start!82948 e!545313))

(assert (=> start!82948 true))

(declare-fun e!545310 () Bool)

(declare-fun array_inv!22149 (array!59767) Bool)

(assert (=> start!82948 (and (array_inv!22149 _values!1400) e!545310)))

(declare-fun array_inv!22150 (array!59765) Bool)

(assert (=> start!82948 (array_inv!22150 _keys!1686)))

(assert (=> start!82948 tp!66270))

(assert (=> start!82948 tp_is_empty!21855))

(declare-fun b!967470 () Bool)

(declare-fun res!647754 () Bool)

(assert (=> b!967470 (=> (not res!647754) (not e!545313))))

(assert (=> b!967470 (= res!647754 (contains!5527 (getCurrentListMap!3661 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28747 _keys!1686) i!803)))))

(declare-fun b!967471 () Bool)

(declare-fun res!647759 () Bool)

(assert (=> b!967471 (=> (not res!647759) (not e!545313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59765 (_ BitVec 32)) Bool)

(assert (=> b!967471 (= res!647759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967472 () Bool)

(declare-fun res!647752 () Bool)

(assert (=> b!967472 (=> (not res!647752) (not e!545313))))

(declare-datatypes ((List!20084 0))(
  ( (Nil!20081) (Cons!20080 (h!21242 (_ BitVec 64)) (t!28455 List!20084)) )
))
(declare-fun arrayNoDuplicates!0 (array!59765 (_ BitVec 32) List!20084) Bool)

(assert (=> b!967472 (= res!647752 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20081))))

(declare-fun b!967473 () Bool)

(assert (=> b!967473 (= e!545310 (and e!545312 mapRes!34777))))

(declare-fun condMapEmpty!34777 () Bool)

(declare-fun mapDefault!34777 () ValueCell!10446)

(assert (=> b!967473 (= condMapEmpty!34777 (= (arr!28748 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10446)) mapDefault!34777)))))

(declare-fun b!967474 () Bool)

(declare-fun res!647757 () Bool)

(assert (=> b!967474 (=> (not res!647757) (not e!545313))))

(assert (=> b!967474 (= res!647757 (bvsgt from!2084 newFrom!159))))

(declare-fun mapNonEmpty!34777 () Bool)

(declare-fun tp!66271 () Bool)

(assert (=> mapNonEmpty!34777 (= mapRes!34777 (and tp!66271 e!545314))))

(declare-fun mapKey!34777 () (_ BitVec 32))

(declare-fun mapValue!34777 () ValueCell!10446)

(declare-fun mapRest!34777 () (Array (_ BitVec 32) ValueCell!10446))

(assert (=> mapNonEmpty!34777 (= (arr!28748 _values!1400) (store mapRest!34777 mapKey!34777 mapValue!34777))))

(assert (= (and start!82948 res!647755) b!967469))

(assert (= (and b!967469 res!647758) b!967471))

(assert (= (and b!967471 res!647759) b!967472))

(assert (= (and b!967472 res!647752) b!967464))

(assert (= (and b!967464 res!647753) b!967466))

(assert (= (and b!967466 res!647756) b!967470))

(assert (= (and b!967470 res!647754) b!967474))

(assert (= (and b!967474 res!647757) b!967468))

(assert (= (and b!967473 condMapEmpty!34777) mapIsEmpty!34777))

(assert (= (and b!967473 (not condMapEmpty!34777)) mapNonEmpty!34777))

(get-info :version)

(assert (= (and mapNonEmpty!34777 ((_ is ValueCellFull!10446) mapValue!34777)) b!967465))

(assert (= (and b!967473 ((_ is ValueCellFull!10446) mapDefault!34777)) b!967467))

(assert (= start!82948 b!967473))

(declare-fun m!896085 () Bool)

(assert (=> b!967470 m!896085))

(declare-fun m!896087 () Bool)

(assert (=> b!967470 m!896087))

(assert (=> b!967470 m!896085))

(assert (=> b!967470 m!896087))

(declare-fun m!896089 () Bool)

(assert (=> b!967470 m!896089))

(assert (=> b!967466 m!896087))

(assert (=> b!967466 m!896087))

(declare-fun m!896091 () Bool)

(assert (=> b!967466 m!896091))

(declare-fun m!896093 () Bool)

(assert (=> b!967472 m!896093))

(declare-fun m!896095 () Bool)

(assert (=> start!82948 m!896095))

(declare-fun m!896097 () Bool)

(assert (=> start!82948 m!896097))

(declare-fun m!896099 () Bool)

(assert (=> start!82948 m!896099))

(declare-fun m!896101 () Bool)

(assert (=> mapNonEmpty!34777 m!896101))

(declare-fun m!896103 () Bool)

(assert (=> b!967468 m!896103))

(assert (=> b!967468 m!896087))

(assert (=> b!967468 m!896103))

(assert (=> b!967468 m!896087))

(declare-fun m!896105 () Bool)

(assert (=> b!967468 m!896105))

(declare-fun m!896107 () Bool)

(assert (=> b!967468 m!896107))

(declare-fun m!896109 () Bool)

(assert (=> b!967471 m!896109))

(check-sat (not start!82948) (not b!967470) b_and!30553 (not b!967471) (not b!967468) (not b!967466) (not b!967472) (not b_next!19047) tp_is_empty!21855 (not mapNonEmpty!34777))
(check-sat b_and!30553 (not b_next!19047))
