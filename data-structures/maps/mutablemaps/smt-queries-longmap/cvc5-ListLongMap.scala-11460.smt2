; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133590 () Bool)

(assert start!133590)

(declare-fun b_free!31975 () Bool)

(declare-fun b_next!31975 () Bool)

(assert (=> start!133590 (= b_free!31975 (not b_next!31975))))

(declare-fun tp!113049 () Bool)

(declare-fun b_and!51471 () Bool)

(assert (=> start!133590 (= tp!113049 b_and!51471)))

(declare-fun mapNonEmpty!59337 () Bool)

(declare-fun mapRes!59337 () Bool)

(declare-fun tp!113050 () Bool)

(declare-fun e!870089 () Bool)

(assert (=> mapNonEmpty!59337 (= mapRes!59337 (and tp!113050 e!870089))))

(declare-datatypes ((V!59729 0))(
  ( (V!59730 (val!19404 Int)) )
))
(declare-datatypes ((ValueCell!18290 0))(
  ( (ValueCellFull!18290 (v!22153 V!59729)) (EmptyCell!18290) )
))
(declare-datatypes ((array!103953 0))(
  ( (array!103954 (arr!50164 (Array (_ BitVec 32) ValueCell!18290)) (size!50715 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103953)

(declare-fun mapKey!59337 () (_ BitVec 32))

(declare-fun mapRest!59337 () (Array (_ BitVec 32) ValueCell!18290))

(declare-fun mapValue!59337 () ValueCell!18290)

(assert (=> mapNonEmpty!59337 (= (arr!50164 _values!487) (store mapRest!59337 mapKey!59337 mapValue!59337))))

(declare-fun mapIsEmpty!59337 () Bool)

(assert (=> mapIsEmpty!59337 mapRes!59337))

(declare-fun res!1067622 () Bool)

(declare-fun e!870088 () Bool)

(assert (=> start!133590 (=> (not res!1067622) (not e!870088))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133590 (= res!1067622 (validMask!0 mask!947))))

(assert (=> start!133590 e!870088))

(assert (=> start!133590 tp!113049))

(declare-fun tp_is_empty!38641 () Bool)

(assert (=> start!133590 tp_is_empty!38641))

(assert (=> start!133590 true))

(declare-datatypes ((array!103955 0))(
  ( (array!103956 (arr!50165 (Array (_ BitVec 32) (_ BitVec 64))) (size!50716 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103955)

(declare-fun array_inv!38921 (array!103955) Bool)

(assert (=> start!133590 (array_inv!38921 _keys!637)))

(declare-fun e!870092 () Bool)

(declare-fun array_inv!38922 (array!103953) Bool)

(assert (=> start!133590 (and (array_inv!38922 _values!487) e!870092)))

(declare-fun b!1561286 () Bool)

(declare-fun e!870090 () Bool)

(assert (=> b!1561286 (= e!870090 tp_is_empty!38641)))

(declare-fun b!1561287 () Bool)

(declare-fun res!1067619 () Bool)

(assert (=> b!1561287 (=> (not res!1067619) (not e!870088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103955 (_ BitVec 32)) Bool)

(assert (=> b!1561287 (= res!1067619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561288 () Bool)

(declare-fun res!1067620 () Bool)

(assert (=> b!1561288 (=> (not res!1067620) (not e!870088))))

(declare-datatypes ((List!36587 0))(
  ( (Nil!36584) (Cons!36583 (h!38030 (_ BitVec 64)) (t!51359 List!36587)) )
))
(declare-fun arrayNoDuplicates!0 (array!103955 (_ BitVec 32) List!36587) Bool)

(assert (=> b!1561288 (= res!1067620 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36584))))

(declare-fun b!1561289 () Bool)

(declare-fun res!1067621 () Bool)

(assert (=> b!1561289 (=> (not res!1067621) (not e!870088))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1561289 (= res!1067621 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50716 _keys!637)) (bvslt from!782 (size!50716 _keys!637))))))

(declare-fun b!1561290 () Bool)

(declare-fun res!1067623 () Bool)

(assert (=> b!1561290 (=> (not res!1067623) (not e!870088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561290 (= res!1067623 (validKeyInArray!0 (select (arr!50165 _keys!637) from!782)))))

(declare-fun b!1561291 () Bool)

(assert (=> b!1561291 (= e!870088 (not true))))

(declare-datatypes ((tuple2!25210 0))(
  ( (tuple2!25211 (_1!12615 (_ BitVec 64)) (_2!12615 V!59729)) )
))
(declare-datatypes ((List!36588 0))(
  ( (Nil!36585) (Cons!36584 (h!38031 tuple2!25210) (t!51360 List!36588)) )
))
(declare-datatypes ((ListLongMap!22657 0))(
  ( (ListLongMap!22658 (toList!11344 List!36588)) )
))
(declare-fun lt!671125 () ListLongMap!22657)

(declare-fun lt!671127 () V!59729)

(declare-fun contains!10264 (ListLongMap!22657 (_ BitVec 64)) Bool)

(declare-fun +!4999 (ListLongMap!22657 tuple2!25210) ListLongMap!22657)

(assert (=> b!1561291 (not (contains!10264 (+!4999 lt!671125 (tuple2!25211 (select (arr!50165 _keys!637) from!782) lt!671127)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51862 0))(
  ( (Unit!51863) )
))
(declare-fun lt!671126 () Unit!51862)

(declare-fun addStillNotContains!535 (ListLongMap!22657 (_ BitVec 64) V!59729 (_ BitVec 64)) Unit!51862)

(assert (=> b!1561291 (= lt!671126 (addStillNotContains!535 lt!671125 (select (arr!50165 _keys!637) from!782) lt!671127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26231 (ValueCell!18290 V!59729) V!59729)

(declare-fun dynLambda!3888 (Int (_ BitVec 64)) V!59729)

(assert (=> b!1561291 (= lt!671127 (get!26231 (select (arr!50164 _values!487) from!782) (dynLambda!3888 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59729)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59729)

(declare-fun getCurrentListMapNoExtraKeys!6705 (array!103955 array!103953 (_ BitVec 32) (_ BitVec 32) V!59729 V!59729 (_ BitVec 32) Int) ListLongMap!22657)

(assert (=> b!1561291 (= lt!671125 (getCurrentListMapNoExtraKeys!6705 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561292 () Bool)

(declare-fun res!1067624 () Bool)

(assert (=> b!1561292 (=> (not res!1067624) (not e!870088))))

(assert (=> b!1561292 (= res!1067624 (and (= (size!50715 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50716 _keys!637) (size!50715 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561293 () Bool)

(assert (=> b!1561293 (= e!870089 tp_is_empty!38641)))

(declare-fun b!1561294 () Bool)

(assert (=> b!1561294 (= e!870092 (and e!870090 mapRes!59337))))

(declare-fun condMapEmpty!59337 () Bool)

(declare-fun mapDefault!59337 () ValueCell!18290)

