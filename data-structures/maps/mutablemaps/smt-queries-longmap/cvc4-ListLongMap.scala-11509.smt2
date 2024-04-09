; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133974 () Bool)

(assert start!133974)

(declare-fun b_free!32165 () Bool)

(declare-fun b_next!32165 () Bool)

(assert (=> start!133974 (= b_free!32165 (not b_next!32165))))

(declare-fun tp!113798 () Bool)

(declare-fun b_and!51781 () Bool)

(assert (=> start!133974 (= tp!113798 b_and!51781)))

(declare-fun b!1565626 () Bool)

(declare-fun res!1070305 () Bool)

(declare-fun e!872681 () Bool)

(assert (=> b!1565626 (=> (not res!1070305) (not e!872681))))

(declare-datatypes ((array!104539 0))(
  ( (array!104540 (arr!50452 (Array (_ BitVec 32) (_ BitVec 64))) (size!51003 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104539)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565626 (= res!1070305 (validKeyInArray!0 (select (arr!50452 _keys!637) from!782)))))

(declare-fun b!1565627 () Bool)

(declare-fun res!1070307 () Bool)

(assert (=> b!1565627 (=> (not res!1070307) (not e!872681))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104539 (_ BitVec 32)) Bool)

(assert (=> b!1565627 (= res!1070307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565628 () Bool)

(assert (=> b!1565628 (= e!872681 (not true))))

(declare-fun lt!672323 () Bool)

(declare-datatypes ((V!60125 0))(
  ( (V!60126 (val!19553 Int)) )
))
(declare-datatypes ((tuple2!25390 0))(
  ( (tuple2!25391 (_1!12705 (_ BitVec 64)) (_2!12705 V!60125)) )
))
(declare-datatypes ((List!36778 0))(
  ( (Nil!36775) (Cons!36774 (h!38221 tuple2!25390) (t!51664 List!36778)) )
))
(declare-datatypes ((ListLongMap!22837 0))(
  ( (ListLongMap!22838 (toList!11434 List!36778)) )
))
(declare-fun lt!672322 () ListLongMap!22837)

(declare-fun contains!10355 (ListLongMap!22837 (_ BitVec 64)) Bool)

(assert (=> b!1565628 (= lt!672323 (contains!10355 lt!672322 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565628 (not (contains!10355 lt!672322 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672324 () ListLongMap!22837)

(declare-fun lt!672326 () V!60125)

(declare-fun +!5041 (ListLongMap!22837 tuple2!25390) ListLongMap!22837)

(assert (=> b!1565628 (= lt!672322 (+!5041 lt!672324 (tuple2!25391 (select (arr!50452 _keys!637) from!782) lt!672326)))))

(declare-datatypes ((Unit!51956 0))(
  ( (Unit!51957) )
))
(declare-fun lt!672325 () Unit!51956)

(declare-fun addStillNotContains!577 (ListLongMap!22837 (_ BitVec 64) V!60125 (_ BitVec 64)) Unit!51956)

(assert (=> b!1565628 (= lt!672325 (addStillNotContains!577 lt!672324 (select (arr!50452 _keys!637) from!782) lt!672326 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18439 0))(
  ( (ValueCellFull!18439 (v!22306 V!60125)) (EmptyCell!18439) )
))
(declare-datatypes ((array!104541 0))(
  ( (array!104542 (arr!50453 (Array (_ BitVec 32) ValueCell!18439)) (size!51004 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104541)

(declare-fun get!26373 (ValueCell!18439 V!60125) V!60125)

(declare-fun dynLambda!3930 (Int (_ BitVec 64)) V!60125)

(assert (=> b!1565628 (= lt!672326 (get!26373 (select (arr!50453 _values!487) from!782) (dynLambda!3930 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60125)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60125)

(declare-fun getCurrentListMapNoExtraKeys!6774 (array!104539 array!104541 (_ BitVec 32) (_ BitVec 32) V!60125 V!60125 (_ BitVec 32) Int) ListLongMap!22837)

(assert (=> b!1565628 (= lt!672324 (getCurrentListMapNoExtraKeys!6774 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565629 () Bool)

(declare-fun e!872683 () Bool)

(declare-fun tp_is_empty!38939 () Bool)

(assert (=> b!1565629 (= e!872683 tp_is_empty!38939)))

(declare-fun mapNonEmpty!59800 () Bool)

(declare-fun mapRes!59800 () Bool)

(declare-fun tp!113797 () Bool)

(declare-fun e!872680 () Bool)

(assert (=> mapNonEmpty!59800 (= mapRes!59800 (and tp!113797 e!872680))))

(declare-fun mapRest!59800 () (Array (_ BitVec 32) ValueCell!18439))

(declare-fun mapValue!59800 () ValueCell!18439)

(declare-fun mapKey!59800 () (_ BitVec 32))

(assert (=> mapNonEmpty!59800 (= (arr!50453 _values!487) (store mapRest!59800 mapKey!59800 mapValue!59800))))

(declare-fun b!1565630 () Bool)

(declare-fun e!872682 () Bool)

(assert (=> b!1565630 (= e!872682 (and e!872683 mapRes!59800))))

(declare-fun condMapEmpty!59800 () Bool)

(declare-fun mapDefault!59800 () ValueCell!18439)

