; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39360 () Bool)

(assert start!39360)

(declare-fun b_free!9619 () Bool)

(declare-fun b_next!9619 () Bool)

(assert (=> start!39360 (= b_free!9619 (not b_next!9619))))

(declare-fun tp!34385 () Bool)

(declare-fun b_and!17131 () Bool)

(assert (=> start!39360 (= tp!34385 b_and!17131)))

(declare-fun b!417353 () Bool)

(declare-fun e!249003 () Bool)

(declare-fun e!249004 () Bool)

(assert (=> b!417353 (= e!249003 e!249004)))

(declare-fun res!243150 () Bool)

(assert (=> b!417353 (=> (not res!243150) (not e!249004))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417353 (= res!243150 (= from!863 i!563))))

(declare-datatypes ((V!15467 0))(
  ( (V!15468 (val!5430 Int)) )
))
(declare-fun minValue!515 () V!15467)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5042 0))(
  ( (ValueCellFull!5042 (v!7673 V!15467)) (EmptyCell!5042) )
))
(declare-datatypes ((array!25377 0))(
  ( (array!25378 (arr!12135 (Array (_ BitVec 32) ValueCell!5042)) (size!12487 (_ BitVec 32))) )
))
(declare-fun lt!191256 () array!25377)

(declare-datatypes ((array!25379 0))(
  ( (array!25380 (arr!12136 (Array (_ BitVec 32) (_ BitVec 64))) (size!12488 (_ BitVec 32))) )
))
(declare-fun lt!191251 () array!25379)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15467)

(declare-datatypes ((tuple2!7018 0))(
  ( (tuple2!7019 (_1!3519 (_ BitVec 64)) (_2!3519 V!15467)) )
))
(declare-datatypes ((List!7070 0))(
  ( (Nil!7067) (Cons!7066 (h!7922 tuple2!7018) (t!12362 List!7070)) )
))
(declare-datatypes ((ListLongMap!5945 0))(
  ( (ListLongMap!5946 (toList!2988 List!7070)) )
))
(declare-fun lt!191249 () ListLongMap!5945)

(declare-fun getCurrentListMapNoExtraKeys!1191 (array!25379 array!25377 (_ BitVec 32) (_ BitVec 32) V!15467 V!15467 (_ BitVec 32) Int) ListLongMap!5945)

(assert (=> b!417353 (= lt!191249 (getCurrentListMapNoExtraKeys!1191 lt!191251 lt!191256 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25377)

(declare-fun v!412 () V!15467)

(assert (=> b!417353 (= lt!191256 (array!25378 (store (arr!12135 _values!549) i!563 (ValueCellFull!5042 v!412)) (size!12487 _values!549)))))

(declare-fun _keys!709 () array!25379)

(declare-fun lt!191253 () ListLongMap!5945)

(assert (=> b!417353 (= lt!191253 (getCurrentListMapNoExtraKeys!1191 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417354 () Bool)

(declare-fun e!248999 () Bool)

(declare-fun call!29033 () ListLongMap!5945)

(declare-fun call!29032 () ListLongMap!5945)

(assert (=> b!417354 (= e!248999 (= call!29033 call!29032))))

(declare-fun b!417355 () Bool)

(declare-fun res!243149 () Bool)

(declare-fun e!249006 () Bool)

(assert (=> b!417355 (=> (not res!243149) (not e!249006))))

(declare-datatypes ((List!7071 0))(
  ( (Nil!7068) (Cons!7067 (h!7923 (_ BitVec 64)) (t!12363 List!7071)) )
))
(declare-fun arrayNoDuplicates!0 (array!25379 (_ BitVec 32) List!7071) Bool)

(assert (=> b!417355 (= res!243149 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7068))))

(declare-fun b!417356 () Bool)

(declare-fun res!243141 () Bool)

(assert (=> b!417356 (=> (not res!243141) (not e!249003))))

(assert (=> b!417356 (= res!243141 (bvsle from!863 i!563))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!417357 () Bool)

(declare-fun +!1199 (ListLongMap!5945 tuple2!7018) ListLongMap!5945)

(assert (=> b!417357 (= e!248999 (= call!29032 (+!1199 call!29033 (tuple2!7019 k!794 v!412))))))

(declare-fun bm!29029 () Bool)

(declare-fun c!55067 () Bool)

(assert (=> bm!29029 (= call!29032 (getCurrentListMapNoExtraKeys!1191 (ite c!55067 lt!191251 _keys!709) (ite c!55067 lt!191256 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417358 () Bool)

(declare-fun res!243147 () Bool)

(assert (=> b!417358 (=> (not res!243147) (not e!249006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417358 (= res!243147 (validKeyInArray!0 k!794))))

(declare-fun res!243140 () Bool)

(assert (=> start!39360 (=> (not res!243140) (not e!249006))))

(assert (=> start!39360 (= res!243140 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12488 _keys!709))))))

(assert (=> start!39360 e!249006))

(declare-fun tp_is_empty!10771 () Bool)

(assert (=> start!39360 tp_is_empty!10771))

(assert (=> start!39360 tp!34385))

(assert (=> start!39360 true))

(declare-fun e!249007 () Bool)

(declare-fun array_inv!8848 (array!25377) Bool)

(assert (=> start!39360 (and (array_inv!8848 _values!549) e!249007)))

(declare-fun array_inv!8849 (array!25379) Bool)

(assert (=> start!39360 (array_inv!8849 _keys!709)))

(declare-fun b!417359 () Bool)

(declare-fun e!249001 () Bool)

(assert (=> b!417359 (= e!249001 true)))

(declare-fun lt!191258 () V!15467)

(declare-fun lt!191255 () ListLongMap!5945)

(declare-fun lt!191257 () tuple2!7018)

(assert (=> b!417359 (= (+!1199 lt!191255 lt!191257) (+!1199 (+!1199 lt!191255 (tuple2!7019 k!794 lt!191258)) lt!191257))))

(declare-fun lt!191259 () V!15467)

(assert (=> b!417359 (= lt!191257 (tuple2!7019 k!794 lt!191259))))

(declare-datatypes ((Unit!12299 0))(
  ( (Unit!12300) )
))
(declare-fun lt!191252 () Unit!12299)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!22 (ListLongMap!5945 (_ BitVec 64) V!15467 V!15467) Unit!12299)

(assert (=> b!417359 (= lt!191252 (addSameAsAddTwiceSameKeyDiffValues!22 lt!191255 k!794 lt!191258 lt!191259))))

(declare-fun lt!191254 () V!15467)

(declare-fun get!6011 (ValueCell!5042 V!15467) V!15467)

(assert (=> b!417359 (= lt!191258 (get!6011 (select (arr!12135 _values!549) from!863) lt!191254))))

(assert (=> b!417359 (= lt!191249 (+!1199 lt!191255 (tuple2!7019 (select (arr!12136 lt!191251) from!863) lt!191259)))))

(assert (=> b!417359 (= lt!191259 (get!6011 (select (store (arr!12135 _values!549) i!563 (ValueCellFull!5042 v!412)) from!863) lt!191254))))

(declare-fun dynLambda!684 (Int (_ BitVec 64)) V!15467)

(assert (=> b!417359 (= lt!191254 (dynLambda!684 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417359 (= lt!191255 (getCurrentListMapNoExtraKeys!1191 lt!191251 lt!191256 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417360 () Bool)

(declare-fun res!243148 () Bool)

(assert (=> b!417360 (=> (not res!243148) (not e!249006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417360 (= res!243148 (validMask!0 mask!1025))))

(declare-fun b!417361 () Bool)

(declare-fun res!243139 () Bool)

(assert (=> b!417361 (=> (not res!243139) (not e!249003))))

(assert (=> b!417361 (= res!243139 (arrayNoDuplicates!0 lt!191251 #b00000000000000000000000000000000 Nil!7068))))

(declare-fun b!417362 () Bool)

(declare-fun res!243138 () Bool)

(assert (=> b!417362 (=> (not res!243138) (not e!249006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25379 (_ BitVec 32)) Bool)

(assert (=> b!417362 (= res!243138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!417363 () Bool)

(declare-fun res!243142 () Bool)

(assert (=> b!417363 (=> (not res!243142) (not e!249006))))

(assert (=> b!417363 (= res!243142 (or (= (select (arr!12136 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12136 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417364 () Bool)

(declare-fun res!243143 () Bool)

(assert (=> b!417364 (=> (not res!243143) (not e!249006))))

(assert (=> b!417364 (= res!243143 (and (= (size!12487 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12488 _keys!709) (size!12487 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417365 () Bool)

(declare-fun e!249005 () Bool)

(assert (=> b!417365 (= e!249005 tp_is_empty!10771)))

(declare-fun b!417366 () Bool)

(declare-fun res!243146 () Bool)

(assert (=> b!417366 (=> (not res!243146) (not e!249006))))

(declare-fun arrayContainsKey!0 (array!25379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417366 (= res!243146 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17778 () Bool)

(declare-fun mapRes!17778 () Bool)

(assert (=> mapIsEmpty!17778 mapRes!17778))

(declare-fun b!417367 () Bool)

(assert (=> b!417367 (= e!249006 e!249003)))

(declare-fun res!243137 () Bool)

(assert (=> b!417367 (=> (not res!243137) (not e!249003))))

(assert (=> b!417367 (= res!243137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191251 mask!1025))))

(assert (=> b!417367 (= lt!191251 (array!25380 (store (arr!12136 _keys!709) i!563 k!794) (size!12488 _keys!709)))))

(declare-fun b!417368 () Bool)

(assert (=> b!417368 (= e!249004 (not e!249001))))

(declare-fun res!243145 () Bool)

(assert (=> b!417368 (=> res!243145 e!249001)))

(assert (=> b!417368 (= res!243145 (validKeyInArray!0 (select (arr!12136 _keys!709) from!863)))))

(assert (=> b!417368 e!248999))

(assert (=> b!417368 (= c!55067 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191250 () Unit!12299)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!408 (array!25379 array!25377 (_ BitVec 32) (_ BitVec 32) V!15467 V!15467 (_ BitVec 32) (_ BitVec 64) V!15467 (_ BitVec 32) Int) Unit!12299)

(assert (=> b!417368 (= lt!191250 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!408 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417369 () Bool)

(declare-fun e!249002 () Bool)

(assert (=> b!417369 (= e!249002 tp_is_empty!10771)))

(declare-fun b!417370 () Bool)

(declare-fun res!243144 () Bool)

(assert (=> b!417370 (=> (not res!243144) (not e!249006))))

(assert (=> b!417370 (= res!243144 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12488 _keys!709))))))

(declare-fun mapNonEmpty!17778 () Bool)

(declare-fun tp!34386 () Bool)

(assert (=> mapNonEmpty!17778 (= mapRes!17778 (and tp!34386 e!249005))))

(declare-fun mapValue!17778 () ValueCell!5042)

(declare-fun mapKey!17778 () (_ BitVec 32))

(declare-fun mapRest!17778 () (Array (_ BitVec 32) ValueCell!5042))

(assert (=> mapNonEmpty!17778 (= (arr!12135 _values!549) (store mapRest!17778 mapKey!17778 mapValue!17778))))

(declare-fun bm!29030 () Bool)

(assert (=> bm!29030 (= call!29033 (getCurrentListMapNoExtraKeys!1191 (ite c!55067 _keys!709 lt!191251) (ite c!55067 _values!549 lt!191256) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417371 () Bool)

(assert (=> b!417371 (= e!249007 (and e!249002 mapRes!17778))))

(declare-fun condMapEmpty!17778 () Bool)

(declare-fun mapDefault!17778 () ValueCell!5042)

