; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110736 () Bool)

(assert start!110736)

(declare-fun b_free!29535 () Bool)

(declare-fun b_next!29535 () Bool)

(assert (=> start!110736 (= b_free!29535 (not b_next!29535))))

(declare-fun tp!103928 () Bool)

(declare-fun b_and!47753 () Bool)

(assert (=> start!110736 (= tp!103928 b_and!47753)))

(declare-fun b!1309874 () Bool)

(declare-fun res!869632 () Bool)

(declare-fun e!747347 () Bool)

(assert (=> b!1309874 (=> (not res!869632) (not e!747347))))

(declare-datatypes ((array!87485 0))(
  ( (array!87486 (arr!42218 (Array (_ BitVec 32) (_ BitVec 64))) (size!42769 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87485)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309874 (= res!869632 (not (= (select (arr!42218 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1309875 () Bool)

(declare-fun res!869638 () Bool)

(assert (=> b!1309875 (=> (not res!869638) (not e!747347))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52123 0))(
  ( (V!52124 (val!17707 Int)) )
))
(declare-fun minValue!1296 () V!52123)

(declare-fun zeroValue!1296 () V!52123)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16734 0))(
  ( (ValueCellFull!16734 (v!20332 V!52123)) (EmptyCell!16734) )
))
(declare-datatypes ((array!87487 0))(
  ( (array!87488 (arr!42219 (Array (_ BitVec 32) ValueCell!16734)) (size!42770 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87487)

(declare-datatypes ((tuple2!22976 0))(
  ( (tuple2!22977 (_1!11498 (_ BitVec 64)) (_2!11498 V!52123)) )
))
(declare-datatypes ((List!30142 0))(
  ( (Nil!30139) (Cons!30138 (h!31347 tuple2!22976) (t!43755 List!30142)) )
))
(declare-datatypes ((ListLongMap!20645 0))(
  ( (ListLongMap!20646 (toList!10338 List!30142)) )
))
(declare-fun contains!8424 (ListLongMap!20645 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5294 (array!87485 array!87487 (_ BitVec 32) (_ BitVec 32) V!52123 V!52123 (_ BitVec 32) Int) ListLongMap!20645)

(assert (=> b!1309875 (= res!869638 (contains!8424 (getCurrentListMap!5294 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54526 () Bool)

(declare-fun mapRes!54526 () Bool)

(assert (=> mapIsEmpty!54526 mapRes!54526))

(declare-fun b!1309876 () Bool)

(declare-fun res!869635 () Bool)

(assert (=> b!1309876 (=> (not res!869635) (not e!747347))))

(declare-datatypes ((List!30143 0))(
  ( (Nil!30140) (Cons!30139 (h!31348 (_ BitVec 64)) (t!43756 List!30143)) )
))
(declare-fun arrayNoDuplicates!0 (array!87485 (_ BitVec 32) List!30143) Bool)

(assert (=> b!1309876 (= res!869635 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30140))))

(declare-fun b!1309877 () Bool)

(declare-fun res!869634 () Bool)

(assert (=> b!1309877 (=> (not res!869634) (not e!747347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87485 (_ BitVec 32)) Bool)

(assert (=> b!1309877 (= res!869634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309878 () Bool)

(declare-fun res!869636 () Bool)

(assert (=> b!1309878 (=> (not res!869636) (not e!747347))))

(assert (=> b!1309878 (= res!869636 (and (= (size!42770 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42769 _keys!1628) (size!42770 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309879 () Bool)

(declare-fun e!747349 () Bool)

(declare-fun tp_is_empty!35265 () Bool)

(assert (=> b!1309879 (= e!747349 tp_is_empty!35265)))

(declare-fun b!1309880 () Bool)

(declare-fun e!747346 () Bool)

(declare-fun e!747348 () Bool)

(assert (=> b!1309880 (= e!747346 (and e!747348 mapRes!54526))))

(declare-fun condMapEmpty!54526 () Bool)

(declare-fun mapDefault!54526 () ValueCell!16734)

(assert (=> b!1309880 (= condMapEmpty!54526 (= (arr!42219 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16734)) mapDefault!54526)))))

(declare-fun b!1309881 () Bool)

(declare-fun res!869633 () Bool)

(assert (=> b!1309881 (=> (not res!869633) (not e!747347))))

(assert (=> b!1309881 (= res!869633 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42769 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!869631 () Bool)

(assert (=> start!110736 (=> (not res!869631) (not e!747347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110736 (= res!869631 (validMask!0 mask!2040))))

(assert (=> start!110736 e!747347))

(assert (=> start!110736 tp!103928))

(declare-fun array_inv!31897 (array!87485) Bool)

(assert (=> start!110736 (array_inv!31897 _keys!1628)))

(assert (=> start!110736 true))

(assert (=> start!110736 tp_is_empty!35265))

(declare-fun array_inv!31898 (array!87487) Bool)

(assert (=> start!110736 (and (array_inv!31898 _values!1354) e!747346)))

(declare-fun b!1309882 () Bool)

(assert (=> b!1309882 (= e!747348 tp_is_empty!35265)))

(declare-fun b!1309883 () Bool)

(declare-fun res!869639 () Bool)

(assert (=> b!1309883 (=> (not res!869639) (not e!747347))))

(assert (=> b!1309883 (= res!869639 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1309884 () Bool)

(assert (=> b!1309884 (= e!747347 (not true))))

(assert (=> b!1309884 (contains!8424 (getCurrentListMap!5294 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43266 0))(
  ( (Unit!43267) )
))
(declare-fun lt!585253 () Unit!43266)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!7 (array!87485 array!87487 (_ BitVec 32) (_ BitVec 32) V!52123 V!52123 (_ BitVec 64) (_ BitVec 32) Int) Unit!43266)

(assert (=> b!1309884 (= lt!585253 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!7 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1309885 () Bool)

(declare-fun res!869637 () Bool)

(assert (=> b!1309885 (=> (not res!869637) (not e!747347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309885 (= res!869637 (validKeyInArray!0 (select (arr!42218 _keys!1628) from!2020)))))

(declare-fun mapNonEmpty!54526 () Bool)

(declare-fun tp!103927 () Bool)

(assert (=> mapNonEmpty!54526 (= mapRes!54526 (and tp!103927 e!747349))))

(declare-fun mapKey!54526 () (_ BitVec 32))

(declare-fun mapRest!54526 () (Array (_ BitVec 32) ValueCell!16734))

(declare-fun mapValue!54526 () ValueCell!16734)

(assert (=> mapNonEmpty!54526 (= (arr!42219 _values!1354) (store mapRest!54526 mapKey!54526 mapValue!54526))))

(assert (= (and start!110736 res!869631) b!1309878))

(assert (= (and b!1309878 res!869636) b!1309877))

(assert (= (and b!1309877 res!869634) b!1309876))

(assert (= (and b!1309876 res!869635) b!1309881))

(assert (= (and b!1309881 res!869633) b!1309875))

(assert (= (and b!1309875 res!869638) b!1309874))

(assert (= (and b!1309874 res!869632) b!1309885))

(assert (= (and b!1309885 res!869637) b!1309883))

(assert (= (and b!1309883 res!869639) b!1309884))

(assert (= (and b!1309880 condMapEmpty!54526) mapIsEmpty!54526))

(assert (= (and b!1309880 (not condMapEmpty!54526)) mapNonEmpty!54526))

(get-info :version)

(assert (= (and mapNonEmpty!54526 ((_ is ValueCellFull!16734) mapValue!54526)) b!1309879))

(assert (= (and b!1309880 ((_ is ValueCellFull!16734) mapDefault!54526)) b!1309882))

(assert (= start!110736 b!1309880))

(declare-fun m!1199825 () Bool)

(assert (=> b!1309875 m!1199825))

(assert (=> b!1309875 m!1199825))

(declare-fun m!1199827 () Bool)

(assert (=> b!1309875 m!1199827))

(declare-fun m!1199829 () Bool)

(assert (=> b!1309884 m!1199829))

(assert (=> b!1309884 m!1199829))

(declare-fun m!1199831 () Bool)

(assert (=> b!1309884 m!1199831))

(declare-fun m!1199833 () Bool)

(assert (=> b!1309884 m!1199833))

(declare-fun m!1199835 () Bool)

(assert (=> b!1309874 m!1199835))

(assert (=> b!1309885 m!1199835))

(assert (=> b!1309885 m!1199835))

(declare-fun m!1199837 () Bool)

(assert (=> b!1309885 m!1199837))

(declare-fun m!1199839 () Bool)

(assert (=> b!1309876 m!1199839))

(declare-fun m!1199841 () Bool)

(assert (=> start!110736 m!1199841))

(declare-fun m!1199843 () Bool)

(assert (=> start!110736 m!1199843))

(declare-fun m!1199845 () Bool)

(assert (=> start!110736 m!1199845))

(declare-fun m!1199847 () Bool)

(assert (=> mapNonEmpty!54526 m!1199847))

(declare-fun m!1199849 () Bool)

(assert (=> b!1309877 m!1199849))

(check-sat (not b!1309875) tp_is_empty!35265 (not start!110736) (not b!1309884) (not b_next!29535) (not b!1309877) b_and!47753 (not b!1309876) (not b!1309885) (not mapNonEmpty!54526))
(check-sat b_and!47753 (not b_next!29535))
