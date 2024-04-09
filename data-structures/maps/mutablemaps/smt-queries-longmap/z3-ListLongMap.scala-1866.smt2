; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33640 () Bool)

(assert start!33640)

(declare-fun b_free!6867 () Bool)

(declare-fun b_next!6867 () Bool)

(assert (=> start!33640 (= b_free!6867 (not b_next!6867))))

(declare-fun tp!24105 () Bool)

(declare-fun b_and!14065 () Bool)

(assert (=> start!33640 (= tp!24105 b_and!14065)))

(declare-fun b!333607 () Bool)

(declare-fun e!204844 () Bool)

(declare-fun e!204843 () Bool)

(declare-fun mapRes!11625 () Bool)

(assert (=> b!333607 (= e!204844 (and e!204843 mapRes!11625))))

(declare-fun condMapEmpty!11625 () Bool)

(declare-datatypes ((V!10069 0))(
  ( (V!10070 (val!3454 Int)) )
))
(declare-datatypes ((ValueCell!3066 0))(
  ( (ValueCellFull!3066 (v!5612 V!10069)) (EmptyCell!3066) )
))
(declare-datatypes ((array!17229 0))(
  ( (array!17230 (arr!8142 (Array (_ BitVec 32) ValueCell!3066)) (size!8494 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17229)

(declare-fun mapDefault!11625 () ValueCell!3066)

(assert (=> b!333607 (= condMapEmpty!11625 (= (arr!8142 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3066)) mapDefault!11625)))))

(declare-fun res!183874 () Bool)

(declare-fun e!204845 () Bool)

(assert (=> start!33640 (=> (not res!183874) (not e!204845))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33640 (= res!183874 (validMask!0 mask!2385))))

(assert (=> start!33640 e!204845))

(assert (=> start!33640 true))

(declare-fun tp_is_empty!6819 () Bool)

(assert (=> start!33640 tp_is_empty!6819))

(assert (=> start!33640 tp!24105))

(declare-fun array_inv!6052 (array!17229) Bool)

(assert (=> start!33640 (and (array_inv!6052 _values!1525) e!204844)))

(declare-datatypes ((array!17231 0))(
  ( (array!17232 (arr!8143 (Array (_ BitVec 32) (_ BitVec 64))) (size!8495 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17231)

(declare-fun array_inv!6053 (array!17231) Bool)

(assert (=> start!33640 (array_inv!6053 _keys!1895)))

(declare-fun b!333608 () Bool)

(declare-fun e!204842 () Bool)

(assert (=> b!333608 (= e!204845 e!204842)))

(declare-fun res!183871 () Bool)

(assert (=> b!333608 (=> (not res!183871) (not e!204842))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3158 0))(
  ( (MissingZero!3158 (index!14811 (_ BitVec 32))) (Found!3158 (index!14812 (_ BitVec 32))) (Intermediate!3158 (undefined!3970 Bool) (index!14813 (_ BitVec 32)) (x!33263 (_ BitVec 32))) (Undefined!3158) (MissingVacant!3158 (index!14814 (_ BitVec 32))) )
))
(declare-fun lt!159369 () SeekEntryResult!3158)

(get-info :version)

(assert (=> b!333608 (= res!183871 (and ((_ is Found!3158) lt!159369) (= (select (arr!8143 _keys!1895) (index!14812 lt!159369)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17231 (_ BitVec 32)) SeekEntryResult!3158)

(assert (=> b!333608 (= lt!159369 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333609 () Bool)

(declare-fun res!183878 () Bool)

(assert (=> b!333609 (=> (not res!183878) (not e!204845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333609 (= res!183878 (validKeyInArray!0 k0!1348))))

(declare-fun b!333610 () Bool)

(declare-fun res!183873 () Bool)

(assert (=> b!333610 (=> (not res!183873) (not e!204845))))

(declare-datatypes ((List!4662 0))(
  ( (Nil!4659) (Cons!4658 (h!5514 (_ BitVec 64)) (t!9758 List!4662)) )
))
(declare-fun arrayNoDuplicates!0 (array!17231 (_ BitVec 32) List!4662) Bool)

(assert (=> b!333610 (= res!183873 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4659))))

(declare-fun b!333611 () Bool)

(assert (=> b!333611 (= e!204843 tp_is_empty!6819)))

(declare-fun b!333612 () Bool)

(declare-fun res!183876 () Bool)

(assert (=> b!333612 (=> (not res!183876) (not e!204845))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333612 (= res!183876 (and (= (size!8494 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8495 _keys!1895) (size!8494 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11625 () Bool)

(assert (=> mapIsEmpty!11625 mapRes!11625))

(declare-fun mapNonEmpty!11625 () Bool)

(declare-fun tp!24104 () Bool)

(declare-fun e!204841 () Bool)

(assert (=> mapNonEmpty!11625 (= mapRes!11625 (and tp!24104 e!204841))))

(declare-fun mapValue!11625 () ValueCell!3066)

(declare-fun mapRest!11625 () (Array (_ BitVec 32) ValueCell!3066))

(declare-fun mapKey!11625 () (_ BitVec 32))

(assert (=> mapNonEmpty!11625 (= (arr!8142 _values!1525) (store mapRest!11625 mapKey!11625 mapValue!11625))))

(declare-fun b!333613 () Bool)

(declare-fun res!183875 () Bool)

(assert (=> b!333613 (=> (not res!183875) (not e!204842))))

(declare-fun arrayContainsKey!0 (array!17231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333613 (= res!183875 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14812 lt!159369)))))

(declare-fun b!333614 () Bool)

(declare-fun res!183877 () Bool)

(assert (=> b!333614 (=> (not res!183877) (not e!204845))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10069)

(declare-fun zeroValue!1467 () V!10069)

(declare-datatypes ((tuple2!5020 0))(
  ( (tuple2!5021 (_1!2520 (_ BitVec 64)) (_2!2520 V!10069)) )
))
(declare-datatypes ((List!4663 0))(
  ( (Nil!4660) (Cons!4659 (h!5515 tuple2!5020) (t!9759 List!4663)) )
))
(declare-datatypes ((ListLongMap!3947 0))(
  ( (ListLongMap!3948 (toList!1989 List!4663)) )
))
(declare-fun contains!2029 (ListLongMap!3947 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1512 (array!17231 array!17229 (_ BitVec 32) (_ BitVec 32) V!10069 V!10069 (_ BitVec 32) Int) ListLongMap!3947)

(assert (=> b!333614 (= res!183877 (not (contains!2029 (getCurrentListMap!1512 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!333615 () Bool)

(declare-fun res!183872 () Bool)

(assert (=> b!333615 (=> (not res!183872) (not e!204845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17231 (_ BitVec 32)) Bool)

(assert (=> b!333615 (= res!183872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333616 () Bool)

(assert (=> b!333616 (= e!204842 (not true))))

(assert (=> b!333616 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10374 0))(
  ( (Unit!10375) )
))
(declare-fun lt!159368 () Unit!10374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17231 (_ BitVec 64) (_ BitVec 32)) Unit!10374)

(assert (=> b!333616 (= lt!159368 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14812 lt!159369)))))

(declare-fun b!333617 () Bool)

(assert (=> b!333617 (= e!204841 tp_is_empty!6819)))

(assert (= (and start!33640 res!183874) b!333612))

(assert (= (and b!333612 res!183876) b!333615))

(assert (= (and b!333615 res!183872) b!333610))

(assert (= (and b!333610 res!183873) b!333609))

(assert (= (and b!333609 res!183878) b!333614))

(assert (= (and b!333614 res!183877) b!333608))

(assert (= (and b!333608 res!183871) b!333613))

(assert (= (and b!333613 res!183875) b!333616))

(assert (= (and b!333607 condMapEmpty!11625) mapIsEmpty!11625))

(assert (= (and b!333607 (not condMapEmpty!11625)) mapNonEmpty!11625))

(assert (= (and mapNonEmpty!11625 ((_ is ValueCellFull!3066) mapValue!11625)) b!333617))

(assert (= (and b!333607 ((_ is ValueCellFull!3066) mapDefault!11625)) b!333611))

(assert (= start!33640 b!333607))

(declare-fun m!337809 () Bool)

(assert (=> b!333609 m!337809))

(declare-fun m!337811 () Bool)

(assert (=> b!333608 m!337811))

(declare-fun m!337813 () Bool)

(assert (=> b!333608 m!337813))

(declare-fun m!337815 () Bool)

(assert (=> b!333613 m!337815))

(declare-fun m!337817 () Bool)

(assert (=> b!333614 m!337817))

(assert (=> b!333614 m!337817))

(declare-fun m!337819 () Bool)

(assert (=> b!333614 m!337819))

(declare-fun m!337821 () Bool)

(assert (=> b!333616 m!337821))

(declare-fun m!337823 () Bool)

(assert (=> b!333616 m!337823))

(declare-fun m!337825 () Bool)

(assert (=> b!333610 m!337825))

(declare-fun m!337827 () Bool)

(assert (=> b!333615 m!337827))

(declare-fun m!337829 () Bool)

(assert (=> mapNonEmpty!11625 m!337829))

(declare-fun m!337831 () Bool)

(assert (=> start!33640 m!337831))

(declare-fun m!337833 () Bool)

(assert (=> start!33640 m!337833))

(declare-fun m!337835 () Bool)

(assert (=> start!33640 m!337835))

(check-sat (not b!333613) (not mapNonEmpty!11625) (not b!333615) (not b!333610) (not b!333616) b_and!14065 (not b!333614) tp_is_empty!6819 (not b!333609) (not start!33640) (not b!333608) (not b_next!6867))
(check-sat b_and!14065 (not b_next!6867))
