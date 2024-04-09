; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109196 () Bool)

(assert start!109196)

(declare-fun b_free!28649 () Bool)

(declare-fun b_next!28649 () Bool)

(assert (=> start!109196 (= b_free!28649 (not b_next!28649))))

(declare-fun tp!101067 () Bool)

(declare-fun b_and!46749 () Bool)

(assert (=> start!109196 (= tp!101067 b_and!46749)))

(declare-fun b!1290867 () Bool)

(declare-fun e!736953 () Bool)

(declare-fun tp_is_empty!34289 () Bool)

(assert (=> b!1290867 (= e!736953 tp_is_empty!34289)))

(declare-fun mapIsEmpty!52994 () Bool)

(declare-fun mapRes!52994 () Bool)

(assert (=> mapIsEmpty!52994 mapRes!52994))

(declare-fun res!857688 () Bool)

(declare-fun e!736957 () Bool)

(assert (=> start!109196 (=> (not res!857688) (not e!736957))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109196 (= res!857688 (validMask!0 mask!2175))))

(assert (=> start!109196 e!736957))

(assert (=> start!109196 tp_is_empty!34289))

(assert (=> start!109196 true))

(declare-datatypes ((V!50821 0))(
  ( (V!50822 (val!17219 Int)) )
))
(declare-datatypes ((ValueCell!16246 0))(
  ( (ValueCellFull!16246 (v!19820 V!50821)) (EmptyCell!16246) )
))
(declare-datatypes ((array!85573 0))(
  ( (array!85574 (arr!41283 (Array (_ BitVec 32) ValueCell!16246)) (size!41834 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85573)

(declare-fun e!736954 () Bool)

(declare-fun array_inv!31261 (array!85573) Bool)

(assert (=> start!109196 (and (array_inv!31261 _values!1445) e!736954)))

(declare-datatypes ((array!85575 0))(
  ( (array!85576 (arr!41284 (Array (_ BitVec 32) (_ BitVec 64))) (size!41835 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85575)

(declare-fun array_inv!31262 (array!85575) Bool)

(assert (=> start!109196 (array_inv!31262 _keys!1741)))

(assert (=> start!109196 tp!101067))

(declare-fun b!1290868 () Bool)

(declare-fun res!857684 () Bool)

(assert (=> b!1290868 (=> (not res!857684) (not e!736957))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1290868 (= res!857684 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41835 _keys!1741))))))

(declare-fun b!1290869 () Bool)

(declare-fun res!857690 () Bool)

(assert (=> b!1290869 (=> (not res!857690) (not e!736957))))

(declare-fun minValue!1387 () V!50821)

(declare-fun zeroValue!1387 () V!50821)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22266 0))(
  ( (tuple2!22267 (_1!11143 (_ BitVec 64)) (_2!11143 V!50821)) )
))
(declare-datatypes ((List!29461 0))(
  ( (Nil!29458) (Cons!29457 (h!30666 tuple2!22266) (t!43032 List!29461)) )
))
(declare-datatypes ((ListLongMap!19935 0))(
  ( (ListLongMap!19936 (toList!9983 List!29461)) )
))
(declare-fun contains!8039 (ListLongMap!19935 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4983 (array!85575 array!85573 (_ BitVec 32) (_ BitVec 32) V!50821 V!50821 (_ BitVec 32) Int) ListLongMap!19935)

(assert (=> b!1290869 (= res!857690 (contains!8039 (getCurrentListMap!4983 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290870 () Bool)

(declare-fun res!857685 () Bool)

(assert (=> b!1290870 (=> (not res!857685) (not e!736957))))

(declare-datatypes ((List!29462 0))(
  ( (Nil!29459) (Cons!29458 (h!30667 (_ BitVec 64)) (t!43033 List!29462)) )
))
(declare-fun arrayNoDuplicates!0 (array!85575 (_ BitVec 32) List!29462) Bool)

(assert (=> b!1290870 (= res!857685 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29459))))

(declare-fun b!1290871 () Bool)

(declare-fun res!857691 () Bool)

(assert (=> b!1290871 (=> (not res!857691) (not e!736957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290871 (= res!857691 (not (validKeyInArray!0 (select (arr!41284 _keys!1741) from!2144))))))

(declare-fun b!1290872 () Bool)

(declare-fun res!857689 () Bool)

(assert (=> b!1290872 (=> (not res!857689) (not e!736957))))

(assert (=> b!1290872 (= res!857689 (and (= (size!41834 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41835 _keys!1741) (size!41834 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52994 () Bool)

(declare-fun tp!101066 () Bool)

(declare-fun e!736955 () Bool)

(assert (=> mapNonEmpty!52994 (= mapRes!52994 (and tp!101066 e!736955))))

(declare-fun mapValue!52994 () ValueCell!16246)

(declare-fun mapKey!52994 () (_ BitVec 32))

(declare-fun mapRest!52994 () (Array (_ BitVec 32) ValueCell!16246))

(assert (=> mapNonEmpty!52994 (= (arr!41283 _values!1445) (store mapRest!52994 mapKey!52994 mapValue!52994))))

(declare-fun b!1290873 () Bool)

(declare-fun res!857686 () Bool)

(assert (=> b!1290873 (=> (not res!857686) (not e!736957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85575 (_ BitVec 32)) Bool)

(assert (=> b!1290873 (= res!857686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290874 () Bool)

(declare-fun e!736956 () Bool)

(assert (=> b!1290874 (= e!736956 true)))

(assert (=> b!1290874 false))

(declare-fun lt!578827 () ListLongMap!19935)

(declare-datatypes ((Unit!42655 0))(
  ( (Unit!42656) )
))
(declare-fun lt!578828 () Unit!42655)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!42 ((_ BitVec 64) (_ BitVec 64) V!50821 ListLongMap!19935) Unit!42655)

(assert (=> b!1290874 (= lt!578828 (lemmaInListMapAfterAddingDiffThenInBefore!42 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578827))))

(declare-fun lt!578829 () ListLongMap!19935)

(declare-fun +!4347 (ListLongMap!19935 tuple2!22266) ListLongMap!19935)

(assert (=> b!1290874 (not (contains!8039 (+!4347 lt!578829 (tuple2!22267 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578826 () Unit!42655)

(declare-fun addStillNotContains!392 (ListLongMap!19935 (_ BitVec 64) V!50821 (_ BitVec 64)) Unit!42655)

(assert (=> b!1290874 (= lt!578826 (addStillNotContains!392 lt!578829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1290874 (not (contains!8039 lt!578827 k!1205))))

(assert (=> b!1290874 (= lt!578827 (+!4347 lt!578829 (tuple2!22267 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578830 () Unit!42655)

(assert (=> b!1290874 (= lt!578830 (addStillNotContains!392 lt!578829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6059 (array!85575 array!85573 (_ BitVec 32) (_ BitVec 32) V!50821 V!50821 (_ BitVec 32) Int) ListLongMap!19935)

(assert (=> b!1290874 (= lt!578829 (getCurrentListMapNoExtraKeys!6059 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290875 () Bool)

(assert (=> b!1290875 (= e!736957 (not e!736956))))

(declare-fun res!857683 () Bool)

(assert (=> b!1290875 (=> res!857683 e!736956)))

(assert (=> b!1290875 (= res!857683 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290875 (not (contains!8039 (ListLongMap!19936 Nil!29458) k!1205))))

(declare-fun lt!578825 () Unit!42655)

(declare-fun emptyContainsNothing!88 ((_ BitVec 64)) Unit!42655)

(assert (=> b!1290875 (= lt!578825 (emptyContainsNothing!88 k!1205))))

(declare-fun b!1290876 () Bool)

(assert (=> b!1290876 (= e!736954 (and e!736953 mapRes!52994))))

(declare-fun condMapEmpty!52994 () Bool)

(declare-fun mapDefault!52994 () ValueCell!16246)

