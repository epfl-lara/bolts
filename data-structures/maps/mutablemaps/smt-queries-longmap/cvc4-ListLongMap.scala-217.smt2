; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3986 () Bool)

(assert start!3986)

(declare-fun b_free!893 () Bool)

(declare-fun b_next!893 () Bool)

(assert (=> start!3986 (= b_free!893 (not b_next!893))))

(declare-fun tp!4098 () Bool)

(declare-fun b_and!1705 () Bool)

(assert (=> start!3986 (= tp!4098 b_and!1705)))

(declare-fun b!28849 () Bool)

(declare-fun e!18651 () Bool)

(declare-fun e!18652 () Bool)

(assert (=> b!28849 (= e!18651 e!18652)))

(declare-fun res!17225 () Bool)

(assert (=> b!28849 (=> (not res!17225) (not e!18652))))

(declare-datatypes ((V!1487 0))(
  ( (V!1488 (val!650 Int)) )
))
(declare-datatypes ((tuple2!1066 0))(
  ( (tuple2!1067 (_1!543 (_ BitVec 64)) (_2!543 V!1487)) )
))
(declare-datatypes ((List!677 0))(
  ( (Nil!674) (Cons!673 (h!1240 tuple2!1066) (t!3372 List!677)) )
))
(declare-datatypes ((ListLongMap!647 0))(
  ( (ListLongMap!648 (toList!339 List!677)) )
))
(declare-fun lt!10957 () ListLongMap!647)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!276 (ListLongMap!647 (_ BitVec 64)) Bool)

(assert (=> b!28849 (= res!17225 (not (contains!276 lt!10957 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!424 0))(
  ( (ValueCellFull!424 (v!1739 V!1487)) (EmptyCell!424) )
))
(declare-datatypes ((array!1717 0))(
  ( (array!1718 (arr!812 (Array (_ BitVec 32) ValueCell!424)) (size!913 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1717)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1719 0))(
  ( (array!1720 (arr!813 (Array (_ BitVec 32) (_ BitVec 64))) (size!914 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1719)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1487)

(declare-fun minValue!1443 () V!1487)

(declare-fun getCurrentListMap!166 (array!1719 array!1717 (_ BitVec 32) (_ BitVec 32) V!1487 V!1487 (_ BitVec 32) Int) ListLongMap!647)

(assert (=> b!28849 (= lt!10957 (getCurrentListMap!166 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1399 () Bool)

(declare-fun mapRes!1399 () Bool)

(assert (=> mapIsEmpty!1399 mapRes!1399))

(declare-fun b!28850 () Bool)

(declare-fun res!17223 () Bool)

(assert (=> b!28850 (=> (not res!17223) (not e!18652))))

(declare-fun arrayContainsKey!0 (array!1719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28850 (= res!17223 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28851 () Bool)

(declare-fun e!18653 () Bool)

(declare-fun tp_is_empty!1247 () Bool)

(assert (=> b!28851 (= e!18653 tp_is_empty!1247)))

(declare-fun b!28852 () Bool)

(declare-fun e!18649 () Bool)

(assert (=> b!28852 (= e!18649 tp_is_empty!1247)))

(declare-fun b!28853 () Bool)

(declare-fun e!18654 () Bool)

(assert (=> b!28853 (= e!18654 true)))

(declare-datatypes ((SeekEntryResult!80 0))(
  ( (MissingZero!80 (index!2442 (_ BitVec 32))) (Found!80 (index!2443 (_ BitVec 32))) (Intermediate!80 (undefined!892 Bool) (index!2444 (_ BitVec 32)) (x!6358 (_ BitVec 32))) (Undefined!80) (MissingVacant!80 (index!2445 (_ BitVec 32))) )
))
(declare-fun lt!10956 () SeekEntryResult!80)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1719 (_ BitVec 32)) SeekEntryResult!80)

(assert (=> b!28853 (= lt!10956 (seekEntryOrOpen!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!28854 () Bool)

(declare-fun res!17226 () Bool)

(assert (=> b!28854 (=> (not res!17226) (not e!18651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28854 (= res!17226 (validKeyInArray!0 k!1304))))

(declare-fun b!28855 () Bool)

(declare-fun res!17222 () Bool)

(assert (=> b!28855 (=> (not res!17222) (not e!18651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1719 (_ BitVec 32)) Bool)

(assert (=> b!28855 (= res!17222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28856 () Bool)

(declare-fun res!17220 () Bool)

(assert (=> b!28856 (=> (not res!17220) (not e!18651))))

(declare-datatypes ((List!678 0))(
  ( (Nil!675) (Cons!674 (h!1241 (_ BitVec 64)) (t!3373 List!678)) )
))
(declare-fun arrayNoDuplicates!0 (array!1719 (_ BitVec 32) List!678) Bool)

(assert (=> b!28856 (= res!17220 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!675))))

(declare-fun res!17221 () Bool)

(assert (=> start!3986 (=> (not res!17221) (not e!18651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3986 (= res!17221 (validMask!0 mask!2294))))

(assert (=> start!3986 e!18651))

(assert (=> start!3986 true))

(assert (=> start!3986 tp!4098))

(declare-fun e!18655 () Bool)

(declare-fun array_inv!549 (array!1717) Bool)

(assert (=> start!3986 (and (array_inv!549 _values!1501) e!18655)))

(declare-fun array_inv!550 (array!1719) Bool)

(assert (=> start!3986 (array_inv!550 _keys!1833)))

(assert (=> start!3986 tp_is_empty!1247))

(declare-fun mapNonEmpty!1399 () Bool)

(declare-fun tp!4099 () Bool)

(assert (=> mapNonEmpty!1399 (= mapRes!1399 (and tp!4099 e!18653))))

(declare-fun mapRest!1399 () (Array (_ BitVec 32) ValueCell!424))

(declare-fun mapKey!1399 () (_ BitVec 32))

(declare-fun mapValue!1399 () ValueCell!424)

(assert (=> mapNonEmpty!1399 (= (arr!812 _values!1501) (store mapRest!1399 mapKey!1399 mapValue!1399))))

(declare-fun b!28857 () Bool)

(declare-fun res!17224 () Bool)

(assert (=> b!28857 (=> (not res!17224) (not e!18651))))

(assert (=> b!28857 (= res!17224 (and (= (size!913 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!914 _keys!1833) (size!913 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28858 () Bool)

(assert (=> b!28858 (= e!18652 (not e!18654))))

(declare-fun res!17227 () Bool)

(assert (=> b!28858 (=> res!17227 e!18654)))

(assert (=> b!28858 (= res!17227 (not (= (size!914 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun lt!10958 () (_ BitVec 32))

(assert (=> b!28858 (contains!276 lt!10957 (select (arr!813 _keys!1833) lt!10958))))

(declare-datatypes ((Unit!661 0))(
  ( (Unit!662) )
))
(declare-fun lt!10959 () Unit!661)

(declare-fun lemmaValidKeyInArrayIsInListMap!22 (array!1719 array!1717 (_ BitVec 32) (_ BitVec 32) V!1487 V!1487 (_ BitVec 32) Int) Unit!661)

(assert (=> b!28858 (= lt!10959 (lemmaValidKeyInArrayIsInListMap!22 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10958 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1719 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28858 (= lt!10958 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28859 () Bool)

(assert (=> b!28859 (= e!18655 (and e!18649 mapRes!1399))))

(declare-fun condMapEmpty!1399 () Bool)

(declare-fun mapDefault!1399 () ValueCell!424)

