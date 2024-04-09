; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82744 () Bool)

(assert start!82744)

(declare-fun b_free!18849 () Bool)

(declare-fun b_next!18849 () Bool)

(assert (=> start!82744 (= b_free!18849 (not b_next!18849))))

(declare-fun tp!65667 () Bool)

(declare-fun b_and!30355 () Bool)

(assert (=> start!82744 (= tp!65667 b_and!30355)))

(declare-fun res!645696 () Bool)

(declare-fun e!543759 () Bool)

(assert (=> start!82744 (=> (not res!645696) (not e!543759))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82744 (= res!645696 (validMask!0 mask!2110))))

(assert (=> start!82744 e!543759))

(assert (=> start!82744 true))

(declare-datatypes ((V!33851 0))(
  ( (V!33852 (val!10876 Int)) )
))
(declare-datatypes ((ValueCell!10344 0))(
  ( (ValueCellFull!10344 (v!13434 V!33851)) (EmptyCell!10344) )
))
(declare-datatypes ((array!59375 0))(
  ( (array!59376 (arr!28552 (Array (_ BitVec 32) ValueCell!10344)) (size!29032 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59375)

(declare-fun e!543760 () Bool)

(declare-fun array_inv!22023 (array!59375) Bool)

(assert (=> start!82744 (and (array_inv!22023 _values!1400) e!543760)))

(declare-datatypes ((array!59377 0))(
  ( (array!59378 (arr!28553 (Array (_ BitVec 32) (_ BitVec 64))) (size!29033 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59377)

(declare-fun array_inv!22024 (array!59377) Bool)

(assert (=> start!82744 (array_inv!22024 _keys!1686)))

(assert (=> start!82744 tp!65667))

(declare-fun tp_is_empty!21651 () Bool)

(assert (=> start!82744 tp_is_empty!21651))

(declare-fun b!964490 () Bool)

(declare-fun e!543763 () Bool)

(assert (=> b!964490 (= e!543763 true)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33851)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33851)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-datatypes ((tuple2!14062 0))(
  ( (tuple2!14063 (_1!7041 (_ BitVec 64)) (_2!7041 V!33851)) )
))
(declare-datatypes ((List!19938 0))(
  ( (Nil!19935) (Cons!19934 (h!21096 tuple2!14062) (t!28309 List!19938)) )
))
(declare-datatypes ((ListLongMap!12773 0))(
  ( (ListLongMap!12774 (toList!6402 List!19938)) )
))
(declare-fun contains!5456 (ListLongMap!12773 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3587 (array!59377 array!59375 (_ BitVec 32) (_ BitVec 32) V!33851 V!33851 (_ BitVec 32) Int) ListLongMap!12773)

(assert (=> b!964490 (contains!5456 (getCurrentListMap!3587 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28553 _keys!1686) i!803))))

(declare-datatypes ((Unit!32259 0))(
  ( (Unit!32260) )
))
(declare-fun lt!431081 () Unit!32259)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!29 (array!59377 array!59375 (_ BitVec 32) (_ BitVec 32) V!33851 V!33851 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32259)

(assert (=> b!964490 (= lt!431081 (lemmaInListMapFromThenInFromSmaller!29 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun mapIsEmpty!34471 () Bool)

(declare-fun mapRes!34471 () Bool)

(assert (=> mapIsEmpty!34471 mapRes!34471))

(declare-fun b!964491 () Bool)

(declare-fun res!645702 () Bool)

(assert (=> b!964491 (=> (not res!645702) (not e!543759))))

(declare-datatypes ((List!19939 0))(
  ( (Nil!19936) (Cons!19935 (h!21097 (_ BitVec 64)) (t!28310 List!19939)) )
))
(declare-fun arrayNoDuplicates!0 (array!59377 (_ BitVec 32) List!19939) Bool)

(assert (=> b!964491 (= res!645702 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19936))))

(declare-fun b!964492 () Bool)

(declare-fun e!543761 () Bool)

(assert (=> b!964492 (= e!543760 (and e!543761 mapRes!34471))))

(declare-fun condMapEmpty!34471 () Bool)

(declare-fun mapDefault!34471 () ValueCell!10344)

(assert (=> b!964492 (= condMapEmpty!34471 (= (arr!28552 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10344)) mapDefault!34471)))))

(declare-fun b!964493 () Bool)

(declare-fun e!543758 () Bool)

(assert (=> b!964493 (= e!543758 tp_is_empty!21651)))

(declare-fun b!964494 () Bool)

(declare-fun res!645697 () Bool)

(assert (=> b!964494 (=> (not res!645697) (not e!543759))))

(assert (=> b!964494 (= res!645697 (and (= (size!29032 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29033 _keys!1686) (size!29032 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964495 () Bool)

(declare-fun res!645699 () Bool)

(assert (=> b!964495 (=> (not res!645699) (not e!543759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964495 (= res!645699 (validKeyInArray!0 (select (arr!28553 _keys!1686) i!803)))))

(declare-fun b!964496 () Bool)

(declare-fun res!645703 () Bool)

(assert (=> b!964496 (=> (not res!645703) (not e!543759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59377 (_ BitVec 32)) Bool)

(assert (=> b!964496 (= res!645703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964497 () Bool)

(declare-fun res!645704 () Bool)

(assert (=> b!964497 (=> (not res!645704) (not e!543759))))

(assert (=> b!964497 (= res!645704 (bvsgt from!2084 newFrom!159))))

(declare-fun b!964498 () Bool)

(assert (=> b!964498 (= e!543761 tp_is_empty!21651)))

(declare-fun b!964499 () Bool)

(declare-fun res!645698 () Bool)

(assert (=> b!964499 (=> (not res!645698) (not e!543759))))

(assert (=> b!964499 (= res!645698 (contains!5456 (getCurrentListMap!3587 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28553 _keys!1686) i!803)))))

(declare-fun b!964500 () Bool)

(assert (=> b!964500 (= e!543759 (not e!543763))))

(declare-fun res!645700 () Bool)

(assert (=> b!964500 (=> res!645700 e!543763)))

(assert (=> b!964500 (= res!645700 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29033 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964500 (contains!5456 (getCurrentListMap!3587 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28553 _keys!1686) i!803))))

(declare-fun lt!431082 () Unit!32259)

(declare-fun lemmaInListMapFromThenInFromMinusOne!36 (array!59377 array!59375 (_ BitVec 32) (_ BitVec 32) V!33851 V!33851 (_ BitVec 32) (_ BitVec 32) Int) Unit!32259)

(assert (=> b!964500 (= lt!431082 (lemmaInListMapFromThenInFromMinusOne!36 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964501 () Bool)

(declare-fun res!645701 () Bool)

(assert (=> b!964501 (=> (not res!645701) (not e!543759))))

(assert (=> b!964501 (= res!645701 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29033 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29033 _keys!1686))))))

(declare-fun mapNonEmpty!34471 () Bool)

(declare-fun tp!65668 () Bool)

(assert (=> mapNonEmpty!34471 (= mapRes!34471 (and tp!65668 e!543758))))

(declare-fun mapKey!34471 () (_ BitVec 32))

(declare-fun mapRest!34471 () (Array (_ BitVec 32) ValueCell!10344))

(declare-fun mapValue!34471 () ValueCell!10344)

(assert (=> mapNonEmpty!34471 (= (arr!28552 _values!1400) (store mapRest!34471 mapKey!34471 mapValue!34471))))

(assert (= (and start!82744 res!645696) b!964494))

(assert (= (and b!964494 res!645697) b!964496))

(assert (= (and b!964496 res!645703) b!964491))

(assert (= (and b!964491 res!645702) b!964501))

(assert (= (and b!964501 res!645701) b!964495))

(assert (= (and b!964495 res!645699) b!964499))

(assert (= (and b!964499 res!645698) b!964497))

(assert (= (and b!964497 res!645704) b!964500))

(assert (= (and b!964500 (not res!645700)) b!964490))

(assert (= (and b!964492 condMapEmpty!34471) mapIsEmpty!34471))

(assert (= (and b!964492 (not condMapEmpty!34471)) mapNonEmpty!34471))

(get-info :version)

(assert (= (and mapNonEmpty!34471 ((_ is ValueCellFull!10344) mapValue!34471)) b!964493))

(assert (= (and b!964492 ((_ is ValueCellFull!10344) mapDefault!34471)) b!964498))

(assert (= start!82744 b!964492))

(declare-fun m!893829 () Bool)

(assert (=> b!964500 m!893829))

(declare-fun m!893831 () Bool)

(assert (=> b!964500 m!893831))

(assert (=> b!964500 m!893829))

(assert (=> b!964500 m!893831))

(declare-fun m!893833 () Bool)

(assert (=> b!964500 m!893833))

(declare-fun m!893835 () Bool)

(assert (=> b!964500 m!893835))

(declare-fun m!893837 () Bool)

(assert (=> b!964496 m!893837))

(declare-fun m!893839 () Bool)

(assert (=> mapNonEmpty!34471 m!893839))

(declare-fun m!893841 () Bool)

(assert (=> b!964491 m!893841))

(declare-fun m!893843 () Bool)

(assert (=> start!82744 m!893843))

(declare-fun m!893845 () Bool)

(assert (=> start!82744 m!893845))

(declare-fun m!893847 () Bool)

(assert (=> start!82744 m!893847))

(assert (=> b!964495 m!893831))

(assert (=> b!964495 m!893831))

(declare-fun m!893849 () Bool)

(assert (=> b!964495 m!893849))

(declare-fun m!893851 () Bool)

(assert (=> b!964490 m!893851))

(assert (=> b!964490 m!893831))

(assert (=> b!964490 m!893851))

(assert (=> b!964490 m!893831))

(declare-fun m!893853 () Bool)

(assert (=> b!964490 m!893853))

(declare-fun m!893855 () Bool)

(assert (=> b!964490 m!893855))

(declare-fun m!893857 () Bool)

(assert (=> b!964499 m!893857))

(assert (=> b!964499 m!893831))

(assert (=> b!964499 m!893857))

(assert (=> b!964499 m!893831))

(declare-fun m!893859 () Bool)

(assert (=> b!964499 m!893859))

(check-sat (not start!82744) (not b!964499) (not b!964491) (not mapNonEmpty!34471) (not b!964496) (not b!964495) (not b!964490) (not b_next!18849) tp_is_empty!21651 (not b!964500) b_and!30355)
(check-sat b_and!30355 (not b_next!18849))
