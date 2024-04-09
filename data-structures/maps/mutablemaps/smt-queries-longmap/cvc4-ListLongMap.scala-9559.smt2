; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113256 () Bool)

(assert start!113256)

(declare-fun b_free!31271 () Bool)

(declare-fun b_next!31271 () Bool)

(assert (=> start!113256 (= b_free!31271 (not b_next!31271))))

(declare-fun tp!109618 () Bool)

(declare-fun b_and!50459 () Bool)

(assert (=> start!113256 (= tp!109618 b_and!50459)))

(declare-fun b!1342942 () Bool)

(declare-fun res!891083 () Bool)

(declare-fun e!764485 () Bool)

(assert (=> b!1342942 (=> (not res!891083) (not e!764485))))

(declare-datatypes ((array!91343 0))(
  ( (array!91344 (arr!44123 (Array (_ BitVec 32) (_ BitVec 64))) (size!44674 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91343)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91343 (_ BitVec 32)) Bool)

(assert (=> b!1342942 (= res!891083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!891078 () Bool)

(assert (=> start!113256 (=> (not res!891078) (not e!764485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113256 (= res!891078 (validMask!0 mask!1977))))

(assert (=> start!113256 e!764485))

(declare-fun tp_is_empty!37271 () Bool)

(assert (=> start!113256 tp_is_empty!37271))

(assert (=> start!113256 true))

(declare-fun array_inv!33177 (array!91343) Bool)

(assert (=> start!113256 (array_inv!33177 _keys!1571)))

(declare-datatypes ((V!54797 0))(
  ( (V!54798 (val!18710 Int)) )
))
(declare-datatypes ((ValueCell!17737 0))(
  ( (ValueCellFull!17737 (v!21356 V!54797)) (EmptyCell!17737) )
))
(declare-datatypes ((array!91345 0))(
  ( (array!91346 (arr!44124 (Array (_ BitVec 32) ValueCell!17737)) (size!44675 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91345)

(declare-fun e!764486 () Bool)

(declare-fun array_inv!33178 (array!91345) Bool)

(assert (=> start!113256 (and (array_inv!33178 _values!1303) e!764486)))

(assert (=> start!113256 tp!109618))

(declare-fun b!1342943 () Bool)

(declare-fun res!891082 () Bool)

(assert (=> b!1342943 (=> (not res!891082) (not e!764485))))

(declare-fun minValue!1245 () V!54797)

(declare-fun zeroValue!1245 () V!54797)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24252 0))(
  ( (tuple2!24253 (_1!12136 (_ BitVec 64)) (_2!12136 V!54797)) )
))
(declare-datatypes ((List!31431 0))(
  ( (Nil!31428) (Cons!31427 (h!32636 tuple2!24252) (t!45920 List!31431)) )
))
(declare-datatypes ((ListLongMap!21921 0))(
  ( (ListLongMap!21922 (toList!10976 List!31431)) )
))
(declare-fun contains!9088 (ListLongMap!21921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5872 (array!91343 array!91345 (_ BitVec 32) (_ BitVec 32) V!54797 V!54797 (_ BitVec 32) Int) ListLongMap!21921)

(assert (=> b!1342943 (= res!891082 (contains!9088 (getCurrentListMap!5872 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapNonEmpty!57613 () Bool)

(declare-fun mapRes!57613 () Bool)

(declare-fun tp!109619 () Bool)

(declare-fun e!764484 () Bool)

(assert (=> mapNonEmpty!57613 (= mapRes!57613 (and tp!109619 e!764484))))

(declare-fun mapValue!57613 () ValueCell!17737)

(declare-fun mapKey!57613 () (_ BitVec 32))

(declare-fun mapRest!57613 () (Array (_ BitVec 32) ValueCell!17737))

(assert (=> mapNonEmpty!57613 (= (arr!44124 _values!1303) (store mapRest!57613 mapKey!57613 mapValue!57613))))

(declare-fun b!1342944 () Bool)

(assert (=> b!1342944 (= e!764484 tp_is_empty!37271)))

(declare-fun b!1342945 () Bool)

(declare-fun res!891079 () Bool)

(assert (=> b!1342945 (=> (not res!891079) (not e!764485))))

(assert (=> b!1342945 (= res!891079 (and (= (size!44675 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44674 _keys!1571) (size!44675 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342946 () Bool)

(declare-fun res!891081 () Bool)

(assert (=> b!1342946 (=> (not res!891081) (not e!764485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342946 (= res!891081 (validKeyInArray!0 (select (arr!44123 _keys!1571) from!1960)))))

(declare-fun b!1342947 () Bool)

(assert (=> b!1342947 (= e!764485 (not true))))

(declare-fun lt!594673 () ListLongMap!21921)

(declare-fun +!4774 (ListLongMap!21921 tuple2!24252) ListLongMap!21921)

(assert (=> b!1342947 (contains!9088 (+!4774 lt!594673 (tuple2!24253 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44013 0))(
  ( (Unit!44014) )
))
(declare-fun lt!594668 () Unit!44013)

(declare-fun addStillContains!1200 (ListLongMap!21921 (_ BitVec 64) V!54797 (_ BitVec 64)) Unit!44013)

(assert (=> b!1342947 (= lt!594668 (addStillContains!1200 lt!594673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1342947 (contains!9088 lt!594673 k!1142)))

(declare-fun lt!594669 () V!54797)

(declare-fun lt!594671 () Unit!44013)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!366 ((_ BitVec 64) (_ BitVec 64) V!54797 ListLongMap!21921) Unit!44013)

(assert (=> b!1342947 (= lt!594671 (lemmaInListMapAfterAddingDiffThenInBefore!366 k!1142 (select (arr!44123 _keys!1571) from!1960) lt!594669 lt!594673))))

(declare-fun lt!594672 () ListLongMap!21921)

(assert (=> b!1342947 (contains!9088 lt!594672 k!1142)))

(declare-fun lt!594670 () Unit!44013)

(assert (=> b!1342947 (= lt!594670 (lemmaInListMapAfterAddingDiffThenInBefore!366 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594672))))

(assert (=> b!1342947 (= lt!594672 (+!4774 lt!594673 (tuple2!24253 (select (arr!44123 _keys!1571) from!1960) lt!594669)))))

(declare-fun get!22325 (ValueCell!17737 V!54797) V!54797)

(declare-fun dynLambda!3811 (Int (_ BitVec 64)) V!54797)

(assert (=> b!1342947 (= lt!594669 (get!22325 (select (arr!44124 _values!1303) from!1960) (dynLambda!3811 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6497 (array!91343 array!91345 (_ BitVec 32) (_ BitVec 32) V!54797 V!54797 (_ BitVec 32) Int) ListLongMap!21921)

(assert (=> b!1342947 (= lt!594673 (getCurrentListMapNoExtraKeys!6497 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342948 () Bool)

(declare-fun res!891077 () Bool)

(assert (=> b!1342948 (=> (not res!891077) (not e!764485))))

(assert (=> b!1342948 (= res!891077 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44674 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342949 () Bool)

(declare-fun res!891076 () Bool)

(assert (=> b!1342949 (=> (not res!891076) (not e!764485))))

(declare-datatypes ((List!31432 0))(
  ( (Nil!31429) (Cons!31428 (h!32637 (_ BitVec 64)) (t!45921 List!31432)) )
))
(declare-fun arrayNoDuplicates!0 (array!91343 (_ BitVec 32) List!31432) Bool)

(assert (=> b!1342949 (= res!891076 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31429))))

(declare-fun b!1342950 () Bool)

(declare-fun e!764483 () Bool)

(assert (=> b!1342950 (= e!764486 (and e!764483 mapRes!57613))))

(declare-fun condMapEmpty!57613 () Bool)

(declare-fun mapDefault!57613 () ValueCell!17737)

