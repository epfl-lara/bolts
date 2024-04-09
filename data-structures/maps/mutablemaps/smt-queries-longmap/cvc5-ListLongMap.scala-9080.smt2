; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109300 () Bool)

(assert start!109300)

(declare-fun b_free!28753 () Bool)

(declare-fun b_next!28753 () Bool)

(assert (=> start!109300 (= b_free!28753 (not b_next!28753))))

(declare-fun tp!101379 () Bool)

(declare-fun b_and!46853 () Bool)

(assert (=> start!109300 (= tp!101379 b_and!46853)))

(declare-fun b!1292658 () Bool)

(declare-fun e!737807 () Bool)

(assert (=> b!1292658 (= e!737807 true)))

(declare-datatypes ((V!50961 0))(
  ( (V!50962 (val!17271 Int)) )
))
(declare-datatypes ((tuple2!22358 0))(
  ( (tuple2!22359 (_1!11189 (_ BitVec 64)) (_2!11189 V!50961)) )
))
(declare-datatypes ((List!29543 0))(
  ( (Nil!29540) (Cons!29539 (h!30748 tuple2!22358) (t!43114 List!29543)) )
))
(declare-datatypes ((ListLongMap!20027 0))(
  ( (ListLongMap!20028 (toList!10029 List!29543)) )
))
(declare-fun lt!579314 () ListLongMap!20027)

(declare-fun zeroValue!1387 () V!50961)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8085 (ListLongMap!20027 (_ BitVec 64)) Bool)

(declare-fun +!4364 (ListLongMap!20027 tuple2!22358) ListLongMap!20027)

(assert (=> b!1292658 (not (contains!8085 (+!4364 lt!579314 (tuple2!22359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42739 0))(
  ( (Unit!42740) )
))
(declare-fun lt!579316 () Unit!42739)

(declare-fun addStillNotContains!409 (ListLongMap!20027 (_ BitVec 64) V!50961 (_ BitVec 64)) Unit!42739)

(assert (=> b!1292658 (= lt!579316 (addStillNotContains!409 lt!579314 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50961)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16298 0))(
  ( (ValueCellFull!16298 (v!19872 V!50961)) (EmptyCell!16298) )
))
(declare-datatypes ((array!85777 0))(
  ( (array!85778 (arr!41385 (Array (_ BitVec 32) ValueCell!16298)) (size!41936 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85777)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85779 0))(
  ( (array!85780 (arr!41386 (Array (_ BitVec 32) (_ BitVec 64))) (size!41937 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85779)

(declare-fun getCurrentListMapNoExtraKeys!6077 (array!85779 array!85777 (_ BitVec 32) (_ BitVec 32) V!50961 V!50961 (_ BitVec 32) Int) ListLongMap!20027)

(assert (=> b!1292658 (= lt!579314 (getCurrentListMapNoExtraKeys!6077 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1292659 () Bool)

(declare-fun e!737812 () Bool)

(assert (=> b!1292659 (= e!737812 (not e!737807))))

(declare-fun res!859014 () Bool)

(assert (=> b!1292659 (=> res!859014 e!737807)))

(assert (=> b!1292659 (= res!859014 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1292659 (not (contains!8085 (ListLongMap!20028 Nil!29540) k!1205))))

(declare-fun lt!579315 () Unit!42739)

(declare-fun emptyContainsNothing!126 ((_ BitVec 64)) Unit!42739)

(assert (=> b!1292659 (= lt!579315 (emptyContainsNothing!126 k!1205))))

(declare-fun b!1292660 () Bool)

(declare-fun e!737810 () Bool)

(declare-fun tp_is_empty!34393 () Bool)

(assert (=> b!1292660 (= e!737810 tp_is_empty!34393)))

(declare-fun mapNonEmpty!53150 () Bool)

(declare-fun mapRes!53150 () Bool)

(declare-fun tp!101378 () Bool)

(declare-fun e!737809 () Bool)

(assert (=> mapNonEmpty!53150 (= mapRes!53150 (and tp!101378 e!737809))))

(declare-fun mapRest!53150 () (Array (_ BitVec 32) ValueCell!16298))

(declare-fun mapValue!53150 () ValueCell!16298)

(declare-fun mapKey!53150 () (_ BitVec 32))

(assert (=> mapNonEmpty!53150 (= (arr!41385 _values!1445) (store mapRest!53150 mapKey!53150 mapValue!53150))))

(declare-fun b!1292661 () Bool)

(assert (=> b!1292661 (= e!737809 tp_is_empty!34393)))

(declare-fun b!1292662 () Bool)

(declare-fun res!859009 () Bool)

(assert (=> b!1292662 (=> (not res!859009) (not e!737812))))

(assert (=> b!1292662 (= res!859009 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41937 _keys!1741))))))

(declare-fun res!859008 () Bool)

(assert (=> start!109300 (=> (not res!859008) (not e!737812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109300 (= res!859008 (validMask!0 mask!2175))))

(assert (=> start!109300 e!737812))

(assert (=> start!109300 tp_is_empty!34393))

(assert (=> start!109300 true))

(declare-fun e!737811 () Bool)

(declare-fun array_inv!31329 (array!85777) Bool)

(assert (=> start!109300 (and (array_inv!31329 _values!1445) e!737811)))

(declare-fun array_inv!31330 (array!85779) Bool)

(assert (=> start!109300 (array_inv!31330 _keys!1741)))

(assert (=> start!109300 tp!101379))

(declare-fun b!1292663 () Bool)

(declare-fun res!859012 () Bool)

(assert (=> b!1292663 (=> (not res!859012) (not e!737812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85779 (_ BitVec 32)) Bool)

(assert (=> b!1292663 (= res!859012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292664 () Bool)

(declare-fun res!859007 () Bool)

(assert (=> b!1292664 (=> (not res!859007) (not e!737812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292664 (= res!859007 (not (validKeyInArray!0 (select (arr!41386 _keys!1741) from!2144))))))

(declare-fun b!1292665 () Bool)

(declare-fun res!859010 () Bool)

(assert (=> b!1292665 (=> (not res!859010) (not e!737812))))

(declare-datatypes ((List!29544 0))(
  ( (Nil!29541) (Cons!29540 (h!30749 (_ BitVec 64)) (t!43115 List!29544)) )
))
(declare-fun arrayNoDuplicates!0 (array!85779 (_ BitVec 32) List!29544) Bool)

(assert (=> b!1292665 (= res!859010 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29541))))

(declare-fun b!1292666 () Bool)

(declare-fun res!859006 () Bool)

(assert (=> b!1292666 (=> (not res!859006) (not e!737812))))

(assert (=> b!1292666 (= res!859006 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41937 _keys!1741))))))

(declare-fun b!1292667 () Bool)

(assert (=> b!1292667 (= e!737811 (and e!737810 mapRes!53150))))

(declare-fun condMapEmpty!53150 () Bool)

(declare-fun mapDefault!53150 () ValueCell!16298)

