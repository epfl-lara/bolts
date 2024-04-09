; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33724 () Bool)

(assert start!33724)

(declare-fun b_free!6951 () Bool)

(declare-fun b_next!6951 () Bool)

(assert (=> start!33724 (= b_free!6951 (not b_next!6951))))

(declare-fun tp!24356 () Bool)

(declare-fun b_and!14149 () Bool)

(assert (=> start!33724 (= tp!24356 b_and!14149)))

(declare-fun b!334993 () Bool)

(declare-fun res!184885 () Bool)

(declare-fun e!205642 () Bool)

(assert (=> b!334993 (=> (not res!184885) (not e!205642))))

(declare-datatypes ((array!17387 0))(
  ( (array!17388 (arr!8221 (Array (_ BitVec 32) (_ BitVec 64))) (size!8573 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17387)

(declare-datatypes ((List!4718 0))(
  ( (Nil!4715) (Cons!4714 (h!5570 (_ BitVec 64)) (t!9814 List!4718)) )
))
(declare-fun arrayNoDuplicates!0 (array!17387 (_ BitVec 32) List!4718) Bool)

(assert (=> b!334993 (= res!184885 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4715))))

(declare-fun b!334994 () Bool)

(declare-fun res!184884 () Bool)

(assert (=> b!334994 (=> (not res!184884) (not e!205642))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334994 (= res!184884 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!11751 () Bool)

(declare-fun mapRes!11751 () Bool)

(declare-fun tp!24357 () Bool)

(declare-fun e!205643 () Bool)

(assert (=> mapNonEmpty!11751 (= mapRes!11751 (and tp!24357 e!205643))))

(declare-fun mapKey!11751 () (_ BitVec 32))

(declare-datatypes ((V!10181 0))(
  ( (V!10182 (val!3496 Int)) )
))
(declare-datatypes ((ValueCell!3108 0))(
  ( (ValueCellFull!3108 (v!5654 V!10181)) (EmptyCell!3108) )
))
(declare-datatypes ((array!17389 0))(
  ( (array!17390 (arr!8222 (Array (_ BitVec 32) ValueCell!3108)) (size!8574 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17389)

(declare-fun mapRest!11751 () (Array (_ BitVec 32) ValueCell!3108))

(declare-fun mapValue!11751 () ValueCell!3108)

(assert (=> mapNonEmpty!11751 (= (arr!8222 _values!1525) (store mapRest!11751 mapKey!11751 mapValue!11751))))

(declare-fun b!334995 () Bool)

(declare-fun e!205644 () Bool)

(assert (=> b!334995 (= e!205644 (not true))))

(declare-datatypes ((tuple2!5076 0))(
  ( (tuple2!5077 (_1!2548 (_ BitVec 64)) (_2!2548 V!10181)) )
))
(declare-datatypes ((List!4719 0))(
  ( (Nil!4716) (Cons!4715 (h!5571 tuple2!5076) (t!9815 List!4719)) )
))
(declare-datatypes ((ListLongMap!4003 0))(
  ( (ListLongMap!4004 (toList!2017 List!4719)) )
))
(declare-fun lt!159702 () ListLongMap!4003)

(declare-datatypes ((SeekEntryResult!3187 0))(
  ( (MissingZero!3187 (index!14927 (_ BitVec 32))) (Found!3187 (index!14928 (_ BitVec 32))) (Intermediate!3187 (undefined!3999 Bool) (index!14929 (_ BitVec 32)) (x!33404 (_ BitVec 32))) (Undefined!3187) (MissingVacant!3187 (index!14930 (_ BitVec 32))) )
))
(declare-fun lt!159704 () SeekEntryResult!3187)

(declare-fun contains!2057 (ListLongMap!4003 (_ BitVec 64)) Bool)

(assert (=> b!334995 (contains!2057 lt!159702 (select (arr!8221 _keys!1895) (index!14928 lt!159704)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10181)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10181)

(declare-datatypes ((Unit!10420 0))(
  ( (Unit!10421) )
))
(declare-fun lt!159703 () Unit!10420)

(declare-fun lemmaValidKeyInArrayIsInListMap!156 (array!17387 array!17389 (_ BitVec 32) (_ BitVec 32) V!10181 V!10181 (_ BitVec 32) Int) Unit!10420)

(assert (=> b!334995 (= lt!159703 (lemmaValidKeyInArrayIsInListMap!156 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14928 lt!159704) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!17387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334995 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159705 () Unit!10420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17387 (_ BitVec 64) (_ BitVec 32)) Unit!10420)

(assert (=> b!334995 (= lt!159705 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14928 lt!159704)))))

(declare-fun mapIsEmpty!11751 () Bool)

(assert (=> mapIsEmpty!11751 mapRes!11751))

(declare-fun b!334996 () Bool)

(declare-fun res!184880 () Bool)

(assert (=> b!334996 (=> (not res!184880) (not e!205642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17387 (_ BitVec 32)) Bool)

(assert (=> b!334996 (= res!184880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334997 () Bool)

(declare-fun e!205638 () Bool)

(assert (=> b!334997 (= e!205642 e!205638)))

(declare-fun res!184883 () Bool)

(assert (=> b!334997 (=> (not res!184883) (not e!205638))))

(assert (=> b!334997 (= res!184883 (not (contains!2057 lt!159702 k0!1348)))))

(declare-fun getCurrentListMap!1539 (array!17387 array!17389 (_ BitVec 32) (_ BitVec 32) V!10181 V!10181 (_ BitVec 32) Int) ListLongMap!4003)

(assert (=> b!334997 (= lt!159702 (getCurrentListMap!1539 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!334998 () Bool)

(declare-fun res!184879 () Bool)

(assert (=> b!334998 (=> (not res!184879) (not e!205642))))

(assert (=> b!334998 (= res!184879 (and (= (size!8574 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8573 _keys!1895) (size!8574 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!184886 () Bool)

(assert (=> start!33724 (=> (not res!184886) (not e!205642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33724 (= res!184886 (validMask!0 mask!2385))))

(assert (=> start!33724 e!205642))

(assert (=> start!33724 true))

(declare-fun tp_is_empty!6903 () Bool)

(assert (=> start!33724 tp_is_empty!6903))

(assert (=> start!33724 tp!24356))

(declare-fun e!205640 () Bool)

(declare-fun array_inv!6094 (array!17389) Bool)

(assert (=> start!33724 (and (array_inv!6094 _values!1525) e!205640)))

(declare-fun array_inv!6095 (array!17387) Bool)

(assert (=> start!33724 (array_inv!6095 _keys!1895)))

(declare-fun b!334999 () Bool)

(declare-fun res!184882 () Bool)

(assert (=> b!334999 (=> (not res!184882) (not e!205644))))

(assert (=> b!334999 (= res!184882 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14928 lt!159704)))))

(declare-fun b!335000 () Bool)

(declare-fun e!205641 () Bool)

(assert (=> b!335000 (= e!205640 (and e!205641 mapRes!11751))))

(declare-fun condMapEmpty!11751 () Bool)

(declare-fun mapDefault!11751 () ValueCell!3108)

(assert (=> b!335000 (= condMapEmpty!11751 (= (arr!8222 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3108)) mapDefault!11751)))))

(declare-fun b!335001 () Bool)

(assert (=> b!335001 (= e!205641 tp_is_empty!6903)))

(declare-fun b!335002 () Bool)

(assert (=> b!335002 (= e!205638 e!205644)))

(declare-fun res!184881 () Bool)

(assert (=> b!335002 (=> (not res!184881) (not e!205644))))

(get-info :version)

(assert (=> b!335002 (= res!184881 (and ((_ is Found!3187) lt!159704) (= (select (arr!8221 _keys!1895) (index!14928 lt!159704)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17387 (_ BitVec 32)) SeekEntryResult!3187)

(assert (=> b!335002 (= lt!159704 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335003 () Bool)

(assert (=> b!335003 (= e!205643 tp_is_empty!6903)))

(assert (= (and start!33724 res!184886) b!334998))

(assert (= (and b!334998 res!184879) b!334996))

(assert (= (and b!334996 res!184880) b!334993))

(assert (= (and b!334993 res!184885) b!334994))

(assert (= (and b!334994 res!184884) b!334997))

(assert (= (and b!334997 res!184883) b!335002))

(assert (= (and b!335002 res!184881) b!334999))

(assert (= (and b!334999 res!184882) b!334995))

(assert (= (and b!335000 condMapEmpty!11751) mapIsEmpty!11751))

(assert (= (and b!335000 (not condMapEmpty!11751)) mapNonEmpty!11751))

(assert (= (and mapNonEmpty!11751 ((_ is ValueCellFull!3108) mapValue!11751)) b!335003))

(assert (= (and b!335000 ((_ is ValueCellFull!3108) mapDefault!11751)) b!335001))

(assert (= start!33724 b!335000))

(declare-fun m!339037 () Bool)

(assert (=> start!33724 m!339037))

(declare-fun m!339039 () Bool)

(assert (=> start!33724 m!339039))

(declare-fun m!339041 () Bool)

(assert (=> start!33724 m!339041))

(declare-fun m!339043 () Bool)

(assert (=> b!334999 m!339043))

(declare-fun m!339045 () Bool)

(assert (=> b!334995 m!339045))

(declare-fun m!339047 () Bool)

(assert (=> b!334995 m!339047))

(declare-fun m!339049 () Bool)

(assert (=> b!334995 m!339049))

(declare-fun m!339051 () Bool)

(assert (=> b!334995 m!339051))

(declare-fun m!339053 () Bool)

(assert (=> b!334995 m!339053))

(assert (=> b!334995 m!339047))

(declare-fun m!339055 () Bool)

(assert (=> b!334997 m!339055))

(declare-fun m!339057 () Bool)

(assert (=> b!334997 m!339057))

(declare-fun m!339059 () Bool)

(assert (=> b!334993 m!339059))

(declare-fun m!339061 () Bool)

(assert (=> b!334996 m!339061))

(declare-fun m!339063 () Bool)

(assert (=> mapNonEmpty!11751 m!339063))

(assert (=> b!335002 m!339047))

(declare-fun m!339065 () Bool)

(assert (=> b!335002 m!339065))

(declare-fun m!339067 () Bool)

(assert (=> b!334994 m!339067))

(check-sat (not b!334996) (not b!334993) (not mapNonEmpty!11751) (not b!334997) (not start!33724) b_and!14149 (not b!334994) (not b!335002) (not b!334995) (not b!334999) (not b_next!6951) tp_is_empty!6903)
(check-sat b_and!14149 (not b_next!6951))
