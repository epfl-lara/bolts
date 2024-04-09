; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82696 () Bool)

(assert start!82696)

(declare-fun b_free!18801 () Bool)

(declare-fun b_next!18801 () Bool)

(assert (=> start!82696 (= b_free!18801 (not b_next!18801))))

(declare-fun tp!65523 () Bool)

(declare-fun b_and!30307 () Bool)

(assert (=> start!82696 (= tp!65523 b_and!30307)))

(declare-fun b!963639 () Bool)

(declare-fun e!543342 () Bool)

(declare-fun e!543340 () Bool)

(declare-fun mapRes!34399 () Bool)

(assert (=> b!963639 (= e!543342 (and e!543340 mapRes!34399))))

(declare-fun condMapEmpty!34399 () Bool)

(declare-datatypes ((V!33787 0))(
  ( (V!33788 (val!10852 Int)) )
))
(declare-datatypes ((ValueCell!10320 0))(
  ( (ValueCellFull!10320 (v!13410 V!33787)) (EmptyCell!10320) )
))
(declare-datatypes ((array!59281 0))(
  ( (array!59282 (arr!28505 (Array (_ BitVec 32) ValueCell!10320)) (size!28985 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59281)

(declare-fun mapDefault!34399 () ValueCell!10320)

(assert (=> b!963639 (= condMapEmpty!34399 (= (arr!28505 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10320)) mapDefault!34399)))))

(declare-fun b!963640 () Bool)

(declare-fun res!645061 () Bool)

(declare-fun e!543343 () Bool)

(assert (=> b!963640 (=> (not res!645061) (not e!543343))))

(declare-datatypes ((array!59283 0))(
  ( (array!59284 (arr!28506 (Array (_ BitVec 32) (_ BitVec 64))) (size!28986 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59283)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!963640 (= res!645061 (and (= (size!28985 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28986 _keys!1686) (size!28985 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963641 () Bool)

(declare-fun tp_is_empty!21603 () Bool)

(assert (=> b!963641 (= e!543340 tp_is_empty!21603)))

(declare-fun b!963642 () Bool)

(declare-fun res!645068 () Bool)

(assert (=> b!963642 (=> (not res!645068) (not e!543343))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!963642 (= res!645068 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28986 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28986 _keys!1686))))))

(declare-fun b!963643 () Bool)

(declare-fun res!645065 () Bool)

(assert (=> b!963643 (=> (not res!645065) (not e!543343))))

(assert (=> b!963643 (= res!645065 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963645 () Bool)

(declare-fun res!645063 () Bool)

(assert (=> b!963645 (=> (not res!645063) (not e!543343))))

(declare-fun minValue!1342 () V!33787)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33787)

(declare-datatypes ((tuple2!14026 0))(
  ( (tuple2!14027 (_1!7023 (_ BitVec 64)) (_2!7023 V!33787)) )
))
(declare-datatypes ((List!19907 0))(
  ( (Nil!19904) (Cons!19903 (h!21065 tuple2!14026) (t!28278 List!19907)) )
))
(declare-datatypes ((ListLongMap!12737 0))(
  ( (ListLongMap!12738 (toList!6384 List!19907)) )
))
(declare-fun contains!5438 (ListLongMap!12737 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3569 (array!59283 array!59281 (_ BitVec 32) (_ BitVec 32) V!33787 V!33787 (_ BitVec 32) Int) ListLongMap!12737)

(assert (=> b!963645 (= res!645063 (contains!5438 (getCurrentListMap!3569 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28506 _keys!1686) i!803)))))

(declare-fun b!963646 () Bool)

(declare-fun e!543341 () Bool)

(assert (=> b!963646 (= e!543341 tp_is_empty!21603)))

(declare-fun b!963644 () Bool)

(declare-fun res!645064 () Bool)

(assert (=> b!963644 (=> (not res!645064) (not e!543343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963644 (= res!645064 (validKeyInArray!0 (select (arr!28506 _keys!1686) i!803)))))

(declare-fun res!645066 () Bool)

(assert (=> start!82696 (=> (not res!645066) (not e!543343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82696 (= res!645066 (validMask!0 mask!2110))))

(assert (=> start!82696 e!543343))

(assert (=> start!82696 true))

(declare-fun array_inv!21999 (array!59281) Bool)

(assert (=> start!82696 (and (array_inv!21999 _values!1400) e!543342)))

(declare-fun array_inv!22000 (array!59283) Bool)

(assert (=> start!82696 (array_inv!22000 _keys!1686)))

(assert (=> start!82696 tp!65523))

(assert (=> start!82696 tp_is_empty!21603))

(declare-fun b!963647 () Bool)

(assert (=> b!963647 (= e!543343 (not true))))

(assert (=> b!963647 (contains!5438 (getCurrentListMap!3569 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28506 _keys!1686) i!803))))

(declare-datatypes ((Unit!32225 0))(
  ( (Unit!32226) )
))
(declare-fun lt!430950 () Unit!32225)

(declare-fun lemmaInListMapFromThenInFromMinusOne!21 (array!59283 array!59281 (_ BitVec 32) (_ BitVec 32) V!33787 V!33787 (_ BitVec 32) (_ BitVec 32) Int) Unit!32225)

(assert (=> b!963647 (= lt!430950 (lemmaInListMapFromThenInFromMinusOne!21 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963648 () Bool)

(declare-fun res!645062 () Bool)

(assert (=> b!963648 (=> (not res!645062) (not e!543343))))

(declare-datatypes ((List!19908 0))(
  ( (Nil!19905) (Cons!19904 (h!21066 (_ BitVec 64)) (t!28279 List!19908)) )
))
(declare-fun arrayNoDuplicates!0 (array!59283 (_ BitVec 32) List!19908) Bool)

(assert (=> b!963648 (= res!645062 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19905))))

(declare-fun mapIsEmpty!34399 () Bool)

(assert (=> mapIsEmpty!34399 mapRes!34399))

(declare-fun mapNonEmpty!34399 () Bool)

(declare-fun tp!65524 () Bool)

(assert (=> mapNonEmpty!34399 (= mapRes!34399 (and tp!65524 e!543341))))

(declare-fun mapKey!34399 () (_ BitVec 32))

(declare-fun mapValue!34399 () ValueCell!10320)

(declare-fun mapRest!34399 () (Array (_ BitVec 32) ValueCell!10320))

(assert (=> mapNonEmpty!34399 (= (arr!28505 _values!1400) (store mapRest!34399 mapKey!34399 mapValue!34399))))

(declare-fun b!963649 () Bool)

(declare-fun res!645067 () Bool)

(assert (=> b!963649 (=> (not res!645067) (not e!543343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59283 (_ BitVec 32)) Bool)

(assert (=> b!963649 (= res!645067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82696 res!645066) b!963640))

(assert (= (and b!963640 res!645061) b!963649))

(assert (= (and b!963649 res!645067) b!963648))

(assert (= (and b!963648 res!645062) b!963642))

(assert (= (and b!963642 res!645068) b!963644))

(assert (= (and b!963644 res!645064) b!963645))

(assert (= (and b!963645 res!645063) b!963643))

(assert (= (and b!963643 res!645065) b!963647))

(assert (= (and b!963639 condMapEmpty!34399) mapIsEmpty!34399))

(assert (= (and b!963639 (not condMapEmpty!34399)) mapNonEmpty!34399))

(get-info :version)

(assert (= (and mapNonEmpty!34399 ((_ is ValueCellFull!10320) mapValue!34399)) b!963646))

(assert (= (and b!963639 ((_ is ValueCellFull!10320) mapDefault!34399)) b!963641))

(assert (= start!82696 b!963639))

(declare-fun m!893091 () Bool)

(assert (=> b!963648 m!893091))

(declare-fun m!893093 () Bool)

(assert (=> b!963649 m!893093))

(declare-fun m!893095 () Bool)

(assert (=> mapNonEmpty!34399 m!893095))

(declare-fun m!893097 () Bool)

(assert (=> b!963644 m!893097))

(assert (=> b!963644 m!893097))

(declare-fun m!893099 () Bool)

(assert (=> b!963644 m!893099))

(declare-fun m!893101 () Bool)

(assert (=> start!82696 m!893101))

(declare-fun m!893103 () Bool)

(assert (=> start!82696 m!893103))

(declare-fun m!893105 () Bool)

(assert (=> start!82696 m!893105))

(declare-fun m!893107 () Bool)

(assert (=> b!963647 m!893107))

(assert (=> b!963647 m!893097))

(assert (=> b!963647 m!893107))

(assert (=> b!963647 m!893097))

(declare-fun m!893109 () Bool)

(assert (=> b!963647 m!893109))

(declare-fun m!893111 () Bool)

(assert (=> b!963647 m!893111))

(declare-fun m!893113 () Bool)

(assert (=> b!963645 m!893113))

(assert (=> b!963645 m!893097))

(assert (=> b!963645 m!893113))

(assert (=> b!963645 m!893097))

(declare-fun m!893115 () Bool)

(assert (=> b!963645 m!893115))

(check-sat (not start!82696) tp_is_empty!21603 (not mapNonEmpty!34399) (not b_next!18801) (not b!963645) (not b!963644) (not b!963649) (not b!963647) b_and!30307 (not b!963648))
(check-sat b_and!30307 (not b_next!18801))
