; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109198 () Bool)

(assert start!109198)

(declare-fun b_free!28651 () Bool)

(declare-fun b_next!28651 () Bool)

(assert (=> start!109198 (= b_free!28651 (not b_next!28651))))

(declare-fun tp!101072 () Bool)

(declare-fun b_and!46751 () Bool)

(assert (=> start!109198 (= tp!101072 b_and!46751)))

(declare-fun mapIsEmpty!52997 () Bool)

(declare-fun mapRes!52997 () Bool)

(assert (=> mapIsEmpty!52997 mapRes!52997))

(declare-fun b!1290903 () Bool)

(declare-fun res!857715 () Bool)

(declare-fun e!736975 () Bool)

(assert (=> b!1290903 (=> (not res!857715) (not e!736975))))

(declare-datatypes ((V!50825 0))(
  ( (V!50826 (val!17220 Int)) )
))
(declare-fun minValue!1387 () V!50825)

(declare-fun zeroValue!1387 () V!50825)

(declare-datatypes ((ValueCell!16247 0))(
  ( (ValueCellFull!16247 (v!19821 V!50825)) (EmptyCell!16247) )
))
(declare-datatypes ((array!85577 0))(
  ( (array!85578 (arr!41285 (Array (_ BitVec 32) ValueCell!16247)) (size!41836 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85577)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85579 0))(
  ( (array!85580 (arr!41286 (Array (_ BitVec 32) (_ BitVec 64))) (size!41837 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85579)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22268 0))(
  ( (tuple2!22269 (_1!11144 (_ BitVec 64)) (_2!11144 V!50825)) )
))
(declare-datatypes ((List!29463 0))(
  ( (Nil!29460) (Cons!29459 (h!30668 tuple2!22268) (t!43034 List!29463)) )
))
(declare-datatypes ((ListLongMap!19937 0))(
  ( (ListLongMap!19938 (toList!9984 List!29463)) )
))
(declare-fun contains!8040 (ListLongMap!19937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4984 (array!85579 array!85577 (_ BitVec 32) (_ BitVec 32) V!50825 V!50825 (_ BitVec 32) Int) ListLongMap!19937)

(assert (=> b!1290903 (= res!857715 (contains!8040 (getCurrentListMap!4984 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290904 () Bool)

(declare-fun res!857718 () Bool)

(assert (=> b!1290904 (=> (not res!857718) (not e!736975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85579 (_ BitVec 32)) Bool)

(assert (=> b!1290904 (= res!857718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290905 () Bool)

(declare-fun res!857717 () Bool)

(assert (=> b!1290905 (=> (not res!857717) (not e!736975))))

(declare-datatypes ((List!29464 0))(
  ( (Nil!29461) (Cons!29460 (h!30669 (_ BitVec 64)) (t!43035 List!29464)) )
))
(declare-fun arrayNoDuplicates!0 (array!85579 (_ BitVec 32) List!29464) Bool)

(assert (=> b!1290905 (= res!857717 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29461))))

(declare-fun b!1290906 () Bool)

(declare-fun e!736974 () Bool)

(assert (=> b!1290906 (= e!736975 (not e!736974))))

(declare-fun res!857713 () Bool)

(assert (=> b!1290906 (=> res!857713 e!736974)))

(assert (=> b!1290906 (= res!857713 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290906 (not (contains!8040 (ListLongMap!19938 Nil!29460) k!1205))))

(declare-datatypes ((Unit!42657 0))(
  ( (Unit!42658) )
))
(declare-fun lt!578843 () Unit!42657)

(declare-fun emptyContainsNothing!89 ((_ BitVec 64)) Unit!42657)

(assert (=> b!1290906 (= lt!578843 (emptyContainsNothing!89 k!1205))))

(declare-fun b!1290907 () Bool)

(assert (=> b!1290907 (= e!736974 true)))

(assert (=> b!1290907 false))

(declare-fun lt!578844 () ListLongMap!19937)

(declare-fun lt!578845 () Unit!42657)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!43 ((_ BitVec 64) (_ BitVec 64) V!50825 ListLongMap!19937) Unit!42657)

(assert (=> b!1290907 (= lt!578845 (lemmaInListMapAfterAddingDiffThenInBefore!43 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578844))))

(declare-fun lt!578847 () ListLongMap!19937)

(declare-fun +!4348 (ListLongMap!19937 tuple2!22268) ListLongMap!19937)

(assert (=> b!1290907 (not (contains!8040 (+!4348 lt!578847 (tuple2!22269 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578846 () Unit!42657)

(declare-fun addStillNotContains!393 (ListLongMap!19937 (_ BitVec 64) V!50825 (_ BitVec 64)) Unit!42657)

(assert (=> b!1290907 (= lt!578846 (addStillNotContains!393 lt!578847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1290907 (not (contains!8040 lt!578844 k!1205))))

(assert (=> b!1290907 (= lt!578844 (+!4348 lt!578847 (tuple2!22269 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578848 () Unit!42657)

(assert (=> b!1290907 (= lt!578848 (addStillNotContains!393 lt!578847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6060 (array!85579 array!85577 (_ BitVec 32) (_ BitVec 32) V!50825 V!50825 (_ BitVec 32) Int) ListLongMap!19937)

(assert (=> b!1290907 (= lt!578847 (getCurrentListMapNoExtraKeys!6060 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290908 () Bool)

(declare-fun res!857712 () Bool)

(assert (=> b!1290908 (=> (not res!857712) (not e!736975))))

(assert (=> b!1290908 (= res!857712 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41837 _keys!1741))))))

(declare-fun b!1290909 () Bool)

(declare-fun e!736970 () Bool)

(declare-fun tp_is_empty!34291 () Bool)

(assert (=> b!1290909 (= e!736970 tp_is_empty!34291)))

(declare-fun b!1290910 () Bool)

(declare-fun e!736973 () Bool)

(assert (=> b!1290910 (= e!736973 (and e!736970 mapRes!52997))))

(declare-fun condMapEmpty!52997 () Bool)

(declare-fun mapDefault!52997 () ValueCell!16247)

