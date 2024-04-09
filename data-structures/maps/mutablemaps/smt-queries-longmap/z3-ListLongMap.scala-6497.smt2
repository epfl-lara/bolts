; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82852 () Bool)

(assert start!82852)

(declare-fun b_free!18951 () Bool)

(declare-fun b_next!18951 () Bool)

(assert (=> start!82852 (= b_free!18951 (not b_next!18951))))

(declare-fun tp!65982 () Bool)

(declare-fun b_and!30457 () Bool)

(assert (=> start!82852 (= tp!65982 b_and!30457)))

(declare-fun b!966005 () Bool)

(declare-fun res!646729 () Bool)

(declare-fun e!544592 () Bool)

(assert (=> b!966005 (=> (not res!646729) (not e!544592))))

(declare-datatypes ((array!59581 0))(
  ( (array!59582 (arr!28655 (Array (_ BitVec 32) (_ BitVec 64))) (size!29135 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59581)

(declare-datatypes ((List!20014 0))(
  ( (Nil!20011) (Cons!20010 (h!21172 (_ BitVec 64)) (t!28385 List!20014)) )
))
(declare-fun arrayNoDuplicates!0 (array!59581 (_ BitVec 32) List!20014) Bool)

(assert (=> b!966005 (= res!646729 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20011))))

(declare-fun b!966006 () Bool)

(declare-fun e!544593 () Bool)

(declare-fun e!544590 () Bool)

(declare-fun mapRes!34633 () Bool)

(assert (=> b!966006 (= e!544593 (and e!544590 mapRes!34633))))

(declare-fun condMapEmpty!34633 () Bool)

(declare-datatypes ((V!33995 0))(
  ( (V!33996 (val!10930 Int)) )
))
(declare-datatypes ((ValueCell!10398 0))(
  ( (ValueCellFull!10398 (v!13488 V!33995)) (EmptyCell!10398) )
))
(declare-datatypes ((array!59583 0))(
  ( (array!59584 (arr!28656 (Array (_ BitVec 32) ValueCell!10398)) (size!29136 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59583)

(declare-fun mapDefault!34633 () ValueCell!10398)

(assert (=> b!966006 (= condMapEmpty!34633 (= (arr!28656 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10398)) mapDefault!34633)))))

(declare-fun b!966007 () Bool)

(assert (=> b!966007 (= e!544592 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun lt!431247 () Bool)

(declare-fun minValue!1342 () V!33995)

(declare-fun zeroValue!1342 () V!33995)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14138 0))(
  ( (tuple2!14139 (_1!7079 (_ BitVec 64)) (_2!7079 V!33995)) )
))
(declare-datatypes ((List!20015 0))(
  ( (Nil!20012) (Cons!20011 (h!21173 tuple2!14138) (t!28386 List!20015)) )
))
(declare-datatypes ((ListLongMap!12849 0))(
  ( (ListLongMap!12850 (toList!6440 List!20015)) )
))
(declare-fun contains!5491 (ListLongMap!12849 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3625 (array!59581 array!59583 (_ BitVec 32) (_ BitVec 32) V!33995 V!33995 (_ BitVec 32) Int) ListLongMap!12849)

(assert (=> b!966007 (= lt!431247 (contains!5491 (getCurrentListMap!3625 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28655 _keys!1686) i!803)))))

(declare-fun b!966008 () Bool)

(declare-fun tp_is_empty!21759 () Bool)

(assert (=> b!966008 (= e!544590 tp_is_empty!21759)))

(declare-fun b!966009 () Bool)

(declare-fun res!646725 () Bool)

(assert (=> b!966009 (=> (not res!646725) (not e!544592))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966009 (= res!646725 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29135 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29135 _keys!1686))))))

(declare-fun b!966010 () Bool)

(declare-fun res!646728 () Bool)

(assert (=> b!966010 (=> (not res!646728) (not e!544592))))

(assert (=> b!966010 (= res!646728 (and (= (size!29136 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29135 _keys!1686) (size!29136 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34633 () Bool)

(assert (=> mapIsEmpty!34633 mapRes!34633))

(declare-fun b!966011 () Bool)

(declare-fun res!646730 () Bool)

(assert (=> b!966011 (=> (not res!646730) (not e!544592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966011 (= res!646730 (validKeyInArray!0 (select (arr!28655 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34633 () Bool)

(declare-fun tp!65983 () Bool)

(declare-fun e!544594 () Bool)

(assert (=> mapNonEmpty!34633 (= mapRes!34633 (and tp!65983 e!544594))))

(declare-fun mapRest!34633 () (Array (_ BitVec 32) ValueCell!10398))

(declare-fun mapValue!34633 () ValueCell!10398)

(declare-fun mapKey!34633 () (_ BitVec 32))

(assert (=> mapNonEmpty!34633 (= (arr!28656 _values!1400) (store mapRest!34633 mapKey!34633 mapValue!34633))))

(declare-fun res!646726 () Bool)

(assert (=> start!82852 (=> (not res!646726) (not e!544592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82852 (= res!646726 (validMask!0 mask!2110))))

(assert (=> start!82852 e!544592))

(assert (=> start!82852 true))

(declare-fun array_inv!22097 (array!59583) Bool)

(assert (=> start!82852 (and (array_inv!22097 _values!1400) e!544593)))

(declare-fun array_inv!22098 (array!59581) Bool)

(assert (=> start!82852 (array_inv!22098 _keys!1686)))

(assert (=> start!82852 tp!65982))

(assert (=> start!82852 tp_is_empty!21759))

(declare-fun b!966012 () Bool)

(assert (=> b!966012 (= e!544594 tp_is_empty!21759)))

(declare-fun b!966013 () Bool)

(declare-fun res!646727 () Bool)

(assert (=> b!966013 (=> (not res!646727) (not e!544592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59581 (_ BitVec 32)) Bool)

(assert (=> b!966013 (= res!646727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82852 res!646726) b!966010))

(assert (= (and b!966010 res!646728) b!966013))

(assert (= (and b!966013 res!646727) b!966005))

(assert (= (and b!966005 res!646729) b!966009))

(assert (= (and b!966009 res!646725) b!966011))

(assert (= (and b!966011 res!646730) b!966007))

(assert (= (and b!966006 condMapEmpty!34633) mapIsEmpty!34633))

(assert (= (and b!966006 (not condMapEmpty!34633)) mapNonEmpty!34633))

(get-info :version)

(assert (= (and mapNonEmpty!34633 ((_ is ValueCellFull!10398) mapValue!34633)) b!966012))

(assert (= (and b!966006 ((_ is ValueCellFull!10398) mapDefault!34633)) b!966008))

(assert (= start!82852 b!966006))

(declare-fun m!894975 () Bool)

(assert (=> b!966005 m!894975))

(declare-fun m!894977 () Bool)

(assert (=> b!966011 m!894977))

(assert (=> b!966011 m!894977))

(declare-fun m!894979 () Bool)

(assert (=> b!966011 m!894979))

(declare-fun m!894981 () Bool)

(assert (=> start!82852 m!894981))

(declare-fun m!894983 () Bool)

(assert (=> start!82852 m!894983))

(declare-fun m!894985 () Bool)

(assert (=> start!82852 m!894985))

(declare-fun m!894987 () Bool)

(assert (=> b!966007 m!894987))

(assert (=> b!966007 m!894977))

(assert (=> b!966007 m!894987))

(assert (=> b!966007 m!894977))

(declare-fun m!894989 () Bool)

(assert (=> b!966007 m!894989))

(declare-fun m!894991 () Bool)

(assert (=> b!966013 m!894991))

(declare-fun m!894993 () Bool)

(assert (=> mapNonEmpty!34633 m!894993))

(check-sat b_and!30457 (not b_next!18951) (not mapNonEmpty!34633) (not b!966007) (not start!82852) tp_is_empty!21759 (not b!966011) (not b!966013) (not b!966005))
(check-sat b_and!30457 (not b_next!18951))
