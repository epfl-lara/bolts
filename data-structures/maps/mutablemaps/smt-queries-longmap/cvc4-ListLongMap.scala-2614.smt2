; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39514 () Bool)

(assert start!39514)

(declare-fun b_free!9773 () Bool)

(declare-fun b_next!9773 () Bool)

(assert (=> start!39514 (= b_free!9773 (not b_next!9773))))

(declare-fun tp!34848 () Bool)

(declare-fun b_and!17439 () Bool)

(assert (=> start!39514 (= tp!34848 b_and!17439)))

(declare-fun b!421896 () Bool)

(declare-fun res!246372 () Bool)

(declare-fun e!251086 () Bool)

(assert (=> b!421896 (=> (not res!246372) (not e!251086))))

(declare-datatypes ((array!25677 0))(
  ( (array!25678 (arr!12285 (Array (_ BitVec 32) (_ BitVec 64))) (size!12637 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25677)

(declare-datatypes ((List!7198 0))(
  ( (Nil!7195) (Cons!7194 (h!8050 (_ BitVec 64)) (t!12644 List!7198)) )
))
(declare-fun arrayNoDuplicates!0 (array!25677 (_ BitVec 32) List!7198) Bool)

(assert (=> b!421896 (= res!246372 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7195))))

(declare-fun b!421897 () Bool)

(declare-fun e!251085 () Bool)

(declare-fun e!251079 () Bool)

(assert (=> b!421897 (= e!251085 (not e!251079))))

(declare-fun res!246383 () Bool)

(assert (=> b!421897 (=> res!246383 e!251079)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421897 (= res!246383 (validKeyInArray!0 (select (arr!12285 _keys!709) from!863)))))

(declare-fun e!251081 () Bool)

(assert (=> b!421897 e!251081))

(declare-fun c!55298 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421897 (= c!55298 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15671 0))(
  ( (V!15672 (val!5507 Int)) )
))
(declare-fun minValue!515 () V!15671)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5119 0))(
  ( (ValueCellFull!5119 (v!7750 V!15671)) (EmptyCell!5119) )
))
(declare-datatypes ((array!25679 0))(
  ( (array!25680 (arr!12286 (Array (_ BitVec 32) ValueCell!5119)) (size!12638 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25679)

(declare-fun zeroValue!515 () V!15671)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15671)

(declare-fun defaultEntry!557 () Int)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12421 0))(
  ( (Unit!12422) )
))
(declare-fun lt!193793 () Unit!12421)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!461 (array!25677 array!25679 (_ BitVec 32) (_ BitVec 32) V!15671 V!15671 (_ BitVec 32) (_ BitVec 64) V!15671 (_ BitVec 32) Int) Unit!12421)

(assert (=> b!421897 (= lt!193793 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!461 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421898 () Bool)

(assert (=> b!421898 (= e!251079 true)))

(declare-datatypes ((tuple2!7156 0))(
  ( (tuple2!7157 (_1!3588 (_ BitVec 64)) (_2!3588 V!15671)) )
))
(declare-datatypes ((List!7199 0))(
  ( (Nil!7196) (Cons!7195 (h!8051 tuple2!7156) (t!12645 List!7199)) )
))
(declare-datatypes ((ListLongMap!6083 0))(
  ( (ListLongMap!6084 (toList!3057 List!7199)) )
))
(declare-fun lt!193795 () ListLongMap!6083)

(declare-fun lt!193791 () tuple2!7156)

(declare-fun lt!193798 () V!15671)

(declare-fun +!1259 (ListLongMap!6083 tuple2!7156) ListLongMap!6083)

(assert (=> b!421898 (= (+!1259 lt!193795 lt!193791) (+!1259 (+!1259 lt!193795 (tuple2!7157 k!794 lt!193798)) lt!193791))))

(declare-fun lt!193797 () V!15671)

(assert (=> b!421898 (= lt!193791 (tuple2!7157 k!794 lt!193797))))

(declare-fun lt!193790 () Unit!12421)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!75 (ListLongMap!6083 (_ BitVec 64) V!15671 V!15671) Unit!12421)

(assert (=> b!421898 (= lt!193790 (addSameAsAddTwiceSameKeyDiffValues!75 lt!193795 k!794 lt!193798 lt!193797))))

(declare-fun lt!193800 () V!15671)

(declare-fun get!6114 (ValueCell!5119 V!15671) V!15671)

(assert (=> b!421898 (= lt!193798 (get!6114 (select (arr!12286 _values!549) from!863) lt!193800))))

(declare-fun lt!193792 () array!25677)

(declare-fun lt!193796 () ListLongMap!6083)

(assert (=> b!421898 (= lt!193796 (+!1259 lt!193795 (tuple2!7157 (select (arr!12285 lt!193792) from!863) lt!193797)))))

(assert (=> b!421898 (= lt!193797 (get!6114 (select (store (arr!12286 _values!549) i!563 (ValueCellFull!5119 v!412)) from!863) lt!193800))))

(declare-fun dynLambda!737 (Int (_ BitVec 64)) V!15671)

(assert (=> b!421898 (= lt!193800 (dynLambda!737 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!193799 () array!25679)

(declare-fun getCurrentListMapNoExtraKeys!1258 (array!25677 array!25679 (_ BitVec 32) (_ BitVec 32) V!15671 V!15671 (_ BitVec 32) Int) ListLongMap!6083)

(assert (=> b!421898 (= lt!193795 (getCurrentListMapNoExtraKeys!1258 lt!193792 lt!193799 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421899 () Bool)

(declare-fun res!246373 () Bool)

(assert (=> b!421899 (=> (not res!246373) (not e!251086))))

(assert (=> b!421899 (= res!246373 (and (= (size!12638 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12637 _keys!709) (size!12638 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421900 () Bool)

(declare-fun e!251084 () Bool)

(assert (=> b!421900 (= e!251084 e!251085)))

(declare-fun res!246381 () Bool)

(assert (=> b!421900 (=> (not res!246381) (not e!251085))))

(assert (=> b!421900 (= res!246381 (= from!863 i!563))))

(assert (=> b!421900 (= lt!193796 (getCurrentListMapNoExtraKeys!1258 lt!193792 lt!193799 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421900 (= lt!193799 (array!25680 (store (arr!12286 _values!549) i!563 (ValueCellFull!5119 v!412)) (size!12638 _values!549)))))

(declare-fun lt!193794 () ListLongMap!6083)

(assert (=> b!421900 (= lt!193794 (getCurrentListMapNoExtraKeys!1258 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421901 () Bool)

(declare-fun res!246382 () Bool)

(assert (=> b!421901 (=> (not res!246382) (not e!251086))))

(assert (=> b!421901 (= res!246382 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12637 _keys!709))))))

(declare-fun b!421902 () Bool)

(declare-fun res!246376 () Bool)

(assert (=> b!421902 (=> (not res!246376) (not e!251086))))

(assert (=> b!421902 (= res!246376 (or (= (select (arr!12285 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12285 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun call!29495 () ListLongMap!6083)

(declare-fun b!421904 () Bool)

(declare-fun call!29494 () ListLongMap!6083)

(assert (=> b!421904 (= e!251081 (= call!29494 (+!1259 call!29495 (tuple2!7157 k!794 v!412))))))

(declare-fun bm!29491 () Bool)

(assert (=> bm!29491 (= call!29494 (getCurrentListMapNoExtraKeys!1258 (ite c!55298 lt!193792 _keys!709) (ite c!55298 lt!193799 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18009 () Bool)

(declare-fun mapRes!18009 () Bool)

(assert (=> mapIsEmpty!18009 mapRes!18009))

(declare-fun b!421905 () Bool)

(declare-fun res!246375 () Bool)

(assert (=> b!421905 (=> (not res!246375) (not e!251086))))

(declare-fun arrayContainsKey!0 (array!25677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421905 (= res!246375 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!421906 () Bool)

(assert (=> b!421906 (= e!251081 (= call!29495 call!29494))))

(declare-fun b!421907 () Bool)

(declare-fun res!246379 () Bool)

(assert (=> b!421907 (=> (not res!246379) (not e!251084))))

(assert (=> b!421907 (= res!246379 (arrayNoDuplicates!0 lt!193792 #b00000000000000000000000000000000 Nil!7195))))

(declare-fun mapNonEmpty!18009 () Bool)

(declare-fun tp!34847 () Bool)

(declare-fun e!251080 () Bool)

(assert (=> mapNonEmpty!18009 (= mapRes!18009 (and tp!34847 e!251080))))

(declare-fun mapValue!18009 () ValueCell!5119)

(declare-fun mapRest!18009 () (Array (_ BitVec 32) ValueCell!5119))

(declare-fun mapKey!18009 () (_ BitVec 32))

(assert (=> mapNonEmpty!18009 (= (arr!12286 _values!549) (store mapRest!18009 mapKey!18009 mapValue!18009))))

(declare-fun b!421908 () Bool)

(declare-fun res!246374 () Bool)

(assert (=> b!421908 (=> (not res!246374) (not e!251086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25677 (_ BitVec 32)) Bool)

(assert (=> b!421908 (= res!246374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421909 () Bool)

(declare-fun tp_is_empty!10925 () Bool)

(assert (=> b!421909 (= e!251080 tp_is_empty!10925)))

(declare-fun b!421910 () Bool)

(declare-fun res!246378 () Bool)

(assert (=> b!421910 (=> (not res!246378) (not e!251086))))

(assert (=> b!421910 (= res!246378 (validKeyInArray!0 k!794))))

(declare-fun bm!29492 () Bool)

(assert (=> bm!29492 (= call!29495 (getCurrentListMapNoExtraKeys!1258 (ite c!55298 _keys!709 lt!193792) (ite c!55298 _values!549 lt!193799) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421911 () Bool)

(declare-fun e!251082 () Bool)

(declare-fun e!251078 () Bool)

(assert (=> b!421911 (= e!251082 (and e!251078 mapRes!18009))))

(declare-fun condMapEmpty!18009 () Bool)

(declare-fun mapDefault!18009 () ValueCell!5119)

