; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40802 () Bool)

(assert start!40802)

(declare-fun b_free!10783 () Bool)

(declare-fun b_next!10783 () Bool)

(assert (=> start!40802 (= b_free!10783 (not b_next!10783))))

(declare-fun tp!38171 () Bool)

(declare-fun b_and!18871 () Bool)

(assert (=> start!40802 (= tp!38171 b_and!18871)))

(declare-fun b!452276 () Bool)

(declare-fun res!269463 () Bool)

(declare-fun e!264822 () Bool)

(assert (=> b!452276 (=> (not res!269463) (not e!264822))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452276 (= res!269463 (validMask!0 mask!1025))))

(declare-fun b!452277 () Bool)

(declare-fun res!269461 () Bool)

(assert (=> b!452277 (=> (not res!269461) (not e!264822))))

(declare-datatypes ((array!28011 0))(
  ( (array!28012 (arr!13447 (Array (_ BitVec 32) (_ BitVec 64))) (size!13799 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28011)

(declare-datatypes ((List!8085 0))(
  ( (Nil!8082) (Cons!8081 (h!8937 (_ BitVec 64)) (t!13899 List!8085)) )
))
(declare-fun arrayNoDuplicates!0 (array!28011 (_ BitVec 32) List!8085) Bool)

(assert (=> b!452277 (= res!269461 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8082))))

(declare-fun b!452278 () Bool)

(declare-fun res!269468 () Bool)

(assert (=> b!452278 (=> (not res!269468) (not e!264822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28011 (_ BitVec 32)) Bool)

(assert (=> b!452278 (= res!269468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452279 () Bool)

(declare-fun e!264823 () Bool)

(assert (=> b!452279 (= e!264822 e!264823)))

(declare-fun res!269473 () Bool)

(assert (=> b!452279 (=> (not res!269473) (not e!264823))))

(declare-fun lt!205222 () array!28011)

(assert (=> b!452279 (= res!269473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205222 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452279 (= lt!205222 (array!28012 (store (arr!13447 _keys!709) i!563 k!794) (size!13799 _keys!709)))))

(declare-fun res!269469 () Bool)

(assert (=> start!40802 (=> (not res!269469) (not e!264822))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40802 (= res!269469 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13799 _keys!709))))))

(assert (=> start!40802 e!264822))

(declare-fun tp_is_empty!12121 () Bool)

(assert (=> start!40802 tp_is_empty!12121))

(assert (=> start!40802 tp!38171))

(assert (=> start!40802 true))

(declare-datatypes ((V!17267 0))(
  ( (V!17268 (val!6105 Int)) )
))
(declare-datatypes ((ValueCell!5717 0))(
  ( (ValueCellFull!5717 (v!8360 V!17267)) (EmptyCell!5717) )
))
(declare-datatypes ((array!28013 0))(
  ( (array!28014 (arr!13448 (Array (_ BitVec 32) ValueCell!5717)) (size!13800 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28013)

(declare-fun e!264817 () Bool)

(declare-fun array_inv!9734 (array!28013) Bool)

(assert (=> start!40802 (and (array_inv!9734 _values!549) e!264817)))

(declare-fun array_inv!9735 (array!28011) Bool)

(assert (=> start!40802 (array_inv!9735 _keys!709)))

(declare-fun b!452280 () Bool)

(declare-fun res!269471 () Bool)

(assert (=> b!452280 (=> (not res!269471) (not e!264823))))

(assert (=> b!452280 (= res!269471 (bvsle from!863 i!563))))

(declare-fun b!452281 () Bool)

(declare-fun e!264821 () Bool)

(assert (=> b!452281 (= e!264823 e!264821)))

(declare-fun res!269474 () Bool)

(assert (=> b!452281 (=> (not res!269474) (not e!264821))))

(assert (=> b!452281 (= res!269474 (= from!863 i!563))))

(declare-fun minValue!515 () V!17267)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17267)

(declare-datatypes ((tuple2!7982 0))(
  ( (tuple2!7983 (_1!4001 (_ BitVec 64)) (_2!4001 V!17267)) )
))
(declare-datatypes ((List!8086 0))(
  ( (Nil!8083) (Cons!8082 (h!8938 tuple2!7982) (t!13900 List!8086)) )
))
(declare-datatypes ((ListLongMap!6909 0))(
  ( (ListLongMap!6910 (toList!3470 List!8086)) )
))
(declare-fun lt!205217 () ListLongMap!6909)

(declare-fun lt!205226 () array!28013)

(declare-fun getCurrentListMapNoExtraKeys!1647 (array!28011 array!28013 (_ BitVec 32) (_ BitVec 32) V!17267 V!17267 (_ BitVec 32) Int) ListLongMap!6909)

(assert (=> b!452281 (= lt!205217 (getCurrentListMapNoExtraKeys!1647 lt!205222 lt!205226 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17267)

(assert (=> b!452281 (= lt!205226 (array!28014 (store (arr!13448 _values!549) i!563 (ValueCellFull!5717 v!412)) (size!13800 _values!549)))))

(declare-fun lt!205224 () ListLongMap!6909)

(assert (=> b!452281 (= lt!205224 (getCurrentListMapNoExtraKeys!1647 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452282 () Bool)

(declare-fun res!269467 () Bool)

(assert (=> b!452282 (=> (not res!269467) (not e!264822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452282 (= res!269467 (validKeyInArray!0 k!794))))

(declare-fun b!452283 () Bool)

(declare-fun e!264825 () Bool)

(assert (=> b!452283 (= e!264825 (bvslt i!563 (size!13800 _values!549)))))

(declare-fun lt!205225 () V!17267)

(declare-fun lt!205223 () ListLongMap!6909)

(declare-fun lt!205219 () tuple2!7982)

(declare-fun +!1536 (ListLongMap!6909 tuple2!7982) ListLongMap!6909)

(assert (=> b!452283 (= (+!1536 lt!205223 lt!205219) (+!1536 (+!1536 lt!205223 (tuple2!7983 k!794 lt!205225)) lt!205219))))

(declare-fun lt!205220 () V!17267)

(assert (=> b!452283 (= lt!205219 (tuple2!7983 k!794 lt!205220))))

(declare-datatypes ((Unit!13175 0))(
  ( (Unit!13176) )
))
(declare-fun lt!205221 () Unit!13175)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!82 (ListLongMap!6909 (_ BitVec 64) V!17267 V!17267) Unit!13175)

(assert (=> b!452283 (= lt!205221 (addSameAsAddTwiceSameKeyDiffValues!82 lt!205223 k!794 lt!205225 lt!205220))))

(declare-fun lt!205218 () V!17267)

(declare-fun get!6639 (ValueCell!5717 V!17267) V!17267)

(assert (=> b!452283 (= lt!205225 (get!6639 (select (arr!13448 _values!549) from!863) lt!205218))))

(assert (=> b!452283 (= lt!205217 (+!1536 lt!205223 (tuple2!7983 (select (arr!13447 lt!205222) from!863) lt!205220)))))

(assert (=> b!452283 (= lt!205220 (get!6639 (select (store (arr!13448 _values!549) i!563 (ValueCellFull!5717 v!412)) from!863) lt!205218))))

(declare-fun dynLambda!860 (Int (_ BitVec 64)) V!17267)

(assert (=> b!452283 (= lt!205218 (dynLambda!860 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!452283 (= lt!205223 (getCurrentListMapNoExtraKeys!1647 lt!205222 lt!205226 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452284 () Bool)

(declare-fun res!269466 () Bool)

(assert (=> b!452284 (=> (not res!269466) (not e!264823))))

(assert (=> b!452284 (= res!269466 (arrayNoDuplicates!0 lt!205222 #b00000000000000000000000000000000 Nil!8082))))

(declare-fun b!452285 () Bool)

(declare-fun res!269465 () Bool)

(assert (=> b!452285 (=> (not res!269465) (not e!264822))))

(assert (=> b!452285 (= res!269465 (or (= (select (arr!13447 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13447 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19818 () Bool)

(declare-fun mapRes!19818 () Bool)

(declare-fun tp!38172 () Bool)

(declare-fun e!264819 () Bool)

(assert (=> mapNonEmpty!19818 (= mapRes!19818 (and tp!38172 e!264819))))

(declare-fun mapValue!19818 () ValueCell!5717)

(declare-fun mapRest!19818 () (Array (_ BitVec 32) ValueCell!5717))

(declare-fun mapKey!19818 () (_ BitVec 32))

(assert (=> mapNonEmpty!19818 (= (arr!13448 _values!549) (store mapRest!19818 mapKey!19818 mapValue!19818))))

(declare-fun b!452286 () Bool)

(declare-fun res!269462 () Bool)

(assert (=> b!452286 (=> (not res!269462) (not e!264822))))

(assert (=> b!452286 (= res!269462 (and (= (size!13800 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13799 _keys!709) (size!13800 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452287 () Bool)

(assert (=> b!452287 (= e!264819 tp_is_empty!12121)))

(declare-fun bm!29956 () Bool)

(declare-fun call!29960 () ListLongMap!6909)

(declare-fun c!56048 () Bool)

(assert (=> bm!29956 (= call!29960 (getCurrentListMapNoExtraKeys!1647 (ite c!56048 _keys!709 lt!205222) (ite c!56048 _values!549 lt!205226) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452288 () Bool)

(declare-fun e!264818 () Bool)

(assert (=> b!452288 (= e!264817 (and e!264818 mapRes!19818))))

(declare-fun condMapEmpty!19818 () Bool)

(declare-fun mapDefault!19818 () ValueCell!5717)

