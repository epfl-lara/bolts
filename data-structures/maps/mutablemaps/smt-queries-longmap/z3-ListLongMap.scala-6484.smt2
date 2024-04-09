; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82774 () Bool)

(assert start!82774)

(declare-fun b_free!18879 () Bool)

(declare-fun b_next!18879 () Bool)

(assert (=> start!82774 (= b_free!18879 (not b_next!18879))))

(declare-fun tp!65757 () Bool)

(declare-fun b_and!30385 () Bool)

(assert (=> start!82774 (= tp!65757 b_and!30385)))

(declare-fun b!964961 () Bool)

(declare-fun e!544005 () Bool)

(declare-fun e!544009 () Bool)

(declare-fun mapRes!34516 () Bool)

(assert (=> b!964961 (= e!544005 (and e!544009 mapRes!34516))))

(declare-fun condMapEmpty!34516 () Bool)

(declare-datatypes ((V!33891 0))(
  ( (V!33892 (val!10891 Int)) )
))
(declare-datatypes ((ValueCell!10359 0))(
  ( (ValueCellFull!10359 (v!13449 V!33891)) (EmptyCell!10359) )
))
(declare-datatypes ((array!59429 0))(
  ( (array!59430 (arr!28579 (Array (_ BitVec 32) ValueCell!10359)) (size!29059 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59429)

(declare-fun mapDefault!34516 () ValueCell!10359)

(assert (=> b!964961 (= condMapEmpty!34516 (= (arr!28579 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10359)) mapDefault!34516)))))

(declare-fun b!964962 () Bool)

(declare-fun e!544006 () Bool)

(declare-fun tp_is_empty!21681 () Bool)

(assert (=> b!964962 (= e!544006 tp_is_empty!21681)))

(declare-fun b!964963 () Bool)

(declare-fun res!646032 () Bool)

(declare-fun e!544007 () Bool)

(assert (=> b!964963 (=> (not res!646032) (not e!544007))))

(declare-datatypes ((array!59431 0))(
  ( (array!59432 (arr!28580 (Array (_ BitVec 32) (_ BitVec 64))) (size!29060 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59431)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964963 (= res!646032 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29060 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29060 _keys!1686))))))

(declare-fun res!646034 () Bool)

(assert (=> start!82774 (=> (not res!646034) (not e!544007))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82774 (= res!646034 (validMask!0 mask!2110))))

(assert (=> start!82774 e!544007))

(assert (=> start!82774 true))

(declare-fun array_inv!22039 (array!59429) Bool)

(assert (=> start!82774 (and (array_inv!22039 _values!1400) e!544005)))

(declare-fun array_inv!22040 (array!59431) Bool)

(assert (=> start!82774 (array_inv!22040 _keys!1686)))

(assert (=> start!82774 tp!65757))

(assert (=> start!82774 tp_is_empty!21681))

(declare-fun b!964964 () Bool)

(declare-fun res!646036 () Bool)

(assert (=> b!964964 (=> (not res!646036) (not e!544007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964964 (= res!646036 (validKeyInArray!0 (select (arr!28580 _keys!1686) i!803)))))

(declare-fun b!964965 () Bool)

(declare-fun res!646033 () Bool)

(assert (=> b!964965 (=> (not res!646033) (not e!544007))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!964965 (= res!646033 (and (= (size!29059 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29060 _keys!1686) (size!29059 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34516 () Bool)

(assert (=> mapIsEmpty!34516 mapRes!34516))

(declare-fun b!964966 () Bool)

(assert (=> b!964966 (= e!544007 false)))

(declare-fun minValue!1342 () V!33891)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431148 () Bool)

(declare-fun zeroValue!1342 () V!33891)

(declare-datatypes ((tuple2!14078 0))(
  ( (tuple2!14079 (_1!7049 (_ BitVec 64)) (_2!7049 V!33891)) )
))
(declare-datatypes ((List!19954 0))(
  ( (Nil!19951) (Cons!19950 (h!21112 tuple2!14078) (t!28325 List!19954)) )
))
(declare-datatypes ((ListLongMap!12789 0))(
  ( (ListLongMap!12790 (toList!6410 List!19954)) )
))
(declare-fun contains!5464 (ListLongMap!12789 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3595 (array!59431 array!59429 (_ BitVec 32) (_ BitVec 32) V!33891 V!33891 (_ BitVec 32) Int) ListLongMap!12789)

(assert (=> b!964966 (= lt!431148 (contains!5464 (getCurrentListMap!3595 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28580 _keys!1686) i!803)))))

(declare-fun b!964967 () Bool)

(declare-fun res!646035 () Bool)

(assert (=> b!964967 (=> (not res!646035) (not e!544007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59431 (_ BitVec 32)) Bool)

(assert (=> b!964967 (= res!646035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34516 () Bool)

(declare-fun tp!65758 () Bool)

(assert (=> mapNonEmpty!34516 (= mapRes!34516 (and tp!65758 e!544006))))

(declare-fun mapRest!34516 () (Array (_ BitVec 32) ValueCell!10359))

(declare-fun mapValue!34516 () ValueCell!10359)

(declare-fun mapKey!34516 () (_ BitVec 32))

(assert (=> mapNonEmpty!34516 (= (arr!28579 _values!1400) (store mapRest!34516 mapKey!34516 mapValue!34516))))

(declare-fun b!964968 () Bool)

(assert (=> b!964968 (= e!544009 tp_is_empty!21681)))

(declare-fun b!964969 () Bool)

(declare-fun res!646037 () Bool)

(assert (=> b!964969 (=> (not res!646037) (not e!544007))))

(declare-datatypes ((List!19955 0))(
  ( (Nil!19952) (Cons!19951 (h!21113 (_ BitVec 64)) (t!28326 List!19955)) )
))
(declare-fun arrayNoDuplicates!0 (array!59431 (_ BitVec 32) List!19955) Bool)

(assert (=> b!964969 (= res!646037 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19952))))

(assert (= (and start!82774 res!646034) b!964965))

(assert (= (and b!964965 res!646033) b!964967))

(assert (= (and b!964967 res!646035) b!964969))

(assert (= (and b!964969 res!646037) b!964963))

(assert (= (and b!964963 res!646032) b!964964))

(assert (= (and b!964964 res!646036) b!964966))

(assert (= (and b!964961 condMapEmpty!34516) mapIsEmpty!34516))

(assert (= (and b!964961 (not condMapEmpty!34516)) mapNonEmpty!34516))

(get-info :version)

(assert (= (and mapNonEmpty!34516 ((_ is ValueCellFull!10359) mapValue!34516)) b!964962))

(assert (= (and b!964961 ((_ is ValueCellFull!10359) mapDefault!34516)) b!964968))

(assert (= start!82774 b!964961))

(declare-fun m!894225 () Bool)

(assert (=> b!964966 m!894225))

(declare-fun m!894227 () Bool)

(assert (=> b!964966 m!894227))

(assert (=> b!964966 m!894225))

(assert (=> b!964966 m!894227))

(declare-fun m!894229 () Bool)

(assert (=> b!964966 m!894229))

(declare-fun m!894231 () Bool)

(assert (=> b!964969 m!894231))

(declare-fun m!894233 () Bool)

(assert (=> b!964967 m!894233))

(assert (=> b!964964 m!894227))

(assert (=> b!964964 m!894227))

(declare-fun m!894235 () Bool)

(assert (=> b!964964 m!894235))

(declare-fun m!894237 () Bool)

(assert (=> mapNonEmpty!34516 m!894237))

(declare-fun m!894239 () Bool)

(assert (=> start!82774 m!894239))

(declare-fun m!894241 () Bool)

(assert (=> start!82774 m!894241))

(declare-fun m!894243 () Bool)

(assert (=> start!82774 m!894243))

(check-sat (not b!964967) (not mapNonEmpty!34516) (not b_next!18879) (not b!964964) (not start!82774) tp_is_empty!21681 (not b!964969) (not b!964966) b_and!30385)
(check-sat b_and!30385 (not b_next!18879))
