; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33652 () Bool)

(assert start!33652)

(declare-fun b_free!6879 () Bool)

(declare-fun b_next!6879 () Bool)

(assert (=> start!33652 (= b_free!6879 (not b_next!6879))))

(declare-fun tp!24140 () Bool)

(declare-fun b_and!14077 () Bool)

(assert (=> start!33652 (= tp!24140 b_and!14077)))

(declare-fun res!184016 () Bool)

(declare-fun e!204954 () Bool)

(assert (=> start!33652 (=> (not res!184016) (not e!204954))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33652 (= res!184016 (validMask!0 mask!2385))))

(assert (=> start!33652 e!204954))

(assert (=> start!33652 true))

(declare-fun tp_is_empty!6831 () Bool)

(assert (=> start!33652 tp_is_empty!6831))

(assert (=> start!33652 tp!24140))

(declare-datatypes ((V!10085 0))(
  ( (V!10086 (val!3460 Int)) )
))
(declare-datatypes ((ValueCell!3072 0))(
  ( (ValueCellFull!3072 (v!5618 V!10085)) (EmptyCell!3072) )
))
(declare-datatypes ((array!17253 0))(
  ( (array!17254 (arr!8154 (Array (_ BitVec 32) ValueCell!3072)) (size!8506 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17253)

(declare-fun e!204951 () Bool)

(declare-fun array_inv!6058 (array!17253) Bool)

(assert (=> start!33652 (and (array_inv!6058 _values!1525) e!204951)))

(declare-datatypes ((array!17255 0))(
  ( (array!17256 (arr!8155 (Array (_ BitVec 32) (_ BitVec 64))) (size!8507 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17255)

(declare-fun array_inv!6059 (array!17255) Bool)

(assert (=> start!33652 (array_inv!6059 _keys!1895)))

(declare-fun b!333805 () Bool)

(declare-fun e!204952 () Bool)

(assert (=> b!333805 (= e!204954 e!204952)))

(declare-fun res!184018 () Bool)

(assert (=> b!333805 (=> (not res!184018) (not e!204952))))

(declare-datatypes ((SeekEntryResult!3163 0))(
  ( (MissingZero!3163 (index!14831 (_ BitVec 32))) (Found!3163 (index!14832 (_ BitVec 32))) (Intermediate!3163 (undefined!3975 Bool) (index!14833 (_ BitVec 32)) (x!33284 (_ BitVec 32))) (Undefined!3163) (MissingVacant!3163 (index!14834 (_ BitVec 32))) )
))
(declare-fun lt!159404 () SeekEntryResult!3163)

(declare-fun k0!1348 () (_ BitVec 64))

(get-info :version)

(assert (=> b!333805 (= res!184018 (and ((_ is Found!3163) lt!159404) (= (select (arr!8155 _keys!1895) (index!14832 lt!159404)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17255 (_ BitVec 32)) SeekEntryResult!3163)

(assert (=> b!333805 (= lt!159404 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333806 () Bool)

(declare-fun e!204953 () Bool)

(assert (=> b!333806 (= e!204953 tp_is_empty!6831)))

(declare-fun b!333807 () Bool)

(declare-fun res!184019 () Bool)

(assert (=> b!333807 (=> (not res!184019) (not e!204954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333807 (= res!184019 (validKeyInArray!0 k0!1348))))

(declare-fun b!333808 () Bool)

(declare-fun res!184021 () Bool)

(assert (=> b!333808 (=> (not res!184021) (not e!204954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17255 (_ BitVec 32)) Bool)

(assert (=> b!333808 (= res!184021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11643 () Bool)

(declare-fun mapRes!11643 () Bool)

(assert (=> mapIsEmpty!11643 mapRes!11643))

(declare-fun b!333809 () Bool)

(declare-fun res!184017 () Bool)

(assert (=> b!333809 (=> (not res!184017) (not e!204954))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333809 (= res!184017 (and (= (size!8506 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8507 _keys!1895) (size!8506 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333810 () Bool)

(assert (=> b!333810 (= e!204952 (not true))))

(declare-fun arrayContainsKey!0 (array!17255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333810 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10382 0))(
  ( (Unit!10383) )
))
(declare-fun lt!159405 () Unit!10382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17255 (_ BitVec 64) (_ BitVec 32)) Unit!10382)

(assert (=> b!333810 (= lt!159405 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14832 lt!159404)))))

(declare-fun b!333811 () Bool)

(declare-fun e!204949 () Bool)

(assert (=> b!333811 (= e!204949 tp_is_empty!6831)))

(declare-fun b!333812 () Bool)

(declare-fun res!184020 () Bool)

(assert (=> b!333812 (=> (not res!184020) (not e!204954))))

(declare-fun zeroValue!1467 () V!10085)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10085)

(declare-datatypes ((tuple2!5028 0))(
  ( (tuple2!5029 (_1!2524 (_ BitVec 64)) (_2!2524 V!10085)) )
))
(declare-datatypes ((List!4670 0))(
  ( (Nil!4667) (Cons!4666 (h!5522 tuple2!5028) (t!9766 List!4670)) )
))
(declare-datatypes ((ListLongMap!3955 0))(
  ( (ListLongMap!3956 (toList!1993 List!4670)) )
))
(declare-fun contains!2033 (ListLongMap!3955 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1516 (array!17255 array!17253 (_ BitVec 32) (_ BitVec 32) V!10085 V!10085 (_ BitVec 32) Int) ListLongMap!3955)

(assert (=> b!333812 (= res!184020 (not (contains!2033 (getCurrentListMap!1516 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!11643 () Bool)

(declare-fun tp!24141 () Bool)

(assert (=> mapNonEmpty!11643 (= mapRes!11643 (and tp!24141 e!204949))))

(declare-fun mapKey!11643 () (_ BitVec 32))

(declare-fun mapValue!11643 () ValueCell!3072)

(declare-fun mapRest!11643 () (Array (_ BitVec 32) ValueCell!3072))

(assert (=> mapNonEmpty!11643 (= (arr!8154 _values!1525) (store mapRest!11643 mapKey!11643 mapValue!11643))))

(declare-fun b!333813 () Bool)

(declare-fun res!184022 () Bool)

(assert (=> b!333813 (=> (not res!184022) (not e!204952))))

(assert (=> b!333813 (= res!184022 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14832 lt!159404)))))

(declare-fun b!333814 () Bool)

(assert (=> b!333814 (= e!204951 (and e!204953 mapRes!11643))))

(declare-fun condMapEmpty!11643 () Bool)

(declare-fun mapDefault!11643 () ValueCell!3072)

(assert (=> b!333814 (= condMapEmpty!11643 (= (arr!8154 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3072)) mapDefault!11643)))))

(declare-fun b!333815 () Bool)

(declare-fun res!184015 () Bool)

(assert (=> b!333815 (=> (not res!184015) (not e!204954))))

(declare-datatypes ((List!4671 0))(
  ( (Nil!4668) (Cons!4667 (h!5523 (_ BitVec 64)) (t!9767 List!4671)) )
))
(declare-fun arrayNoDuplicates!0 (array!17255 (_ BitVec 32) List!4671) Bool)

(assert (=> b!333815 (= res!184015 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4668))))

(assert (= (and start!33652 res!184016) b!333809))

(assert (= (and b!333809 res!184017) b!333808))

(assert (= (and b!333808 res!184021) b!333815))

(assert (= (and b!333815 res!184015) b!333807))

(assert (= (and b!333807 res!184019) b!333812))

(assert (= (and b!333812 res!184020) b!333805))

(assert (= (and b!333805 res!184018) b!333813))

(assert (= (and b!333813 res!184022) b!333810))

(assert (= (and b!333814 condMapEmpty!11643) mapIsEmpty!11643))

(assert (= (and b!333814 (not condMapEmpty!11643)) mapNonEmpty!11643))

(assert (= (and mapNonEmpty!11643 ((_ is ValueCellFull!3072) mapValue!11643)) b!333811))

(assert (= (and b!333814 ((_ is ValueCellFull!3072) mapDefault!11643)) b!333806))

(assert (= start!33652 b!333814))

(declare-fun m!337977 () Bool)

(assert (=> b!333807 m!337977))

(declare-fun m!337979 () Bool)

(assert (=> b!333813 m!337979))

(declare-fun m!337981 () Bool)

(assert (=> b!333808 m!337981))

(declare-fun m!337983 () Bool)

(assert (=> b!333805 m!337983))

(declare-fun m!337985 () Bool)

(assert (=> b!333805 m!337985))

(declare-fun m!337987 () Bool)

(assert (=> b!333815 m!337987))

(declare-fun m!337989 () Bool)

(assert (=> start!33652 m!337989))

(declare-fun m!337991 () Bool)

(assert (=> start!33652 m!337991))

(declare-fun m!337993 () Bool)

(assert (=> start!33652 m!337993))

(declare-fun m!337995 () Bool)

(assert (=> mapNonEmpty!11643 m!337995))

(declare-fun m!337997 () Bool)

(assert (=> b!333810 m!337997))

(declare-fun m!337999 () Bool)

(assert (=> b!333810 m!337999))

(declare-fun m!338001 () Bool)

(assert (=> b!333812 m!338001))

(assert (=> b!333812 m!338001))

(declare-fun m!338003 () Bool)

(assert (=> b!333812 m!338003))

(check-sat (not b!333805) (not b_next!6879) (not mapNonEmpty!11643) (not b!333815) (not b!333808) (not b!333813) b_and!14077 (not start!33652) (not b!333810) (not b!333807) (not b!333812) tp_is_empty!6831)
(check-sat b_and!14077 (not b_next!6879))
