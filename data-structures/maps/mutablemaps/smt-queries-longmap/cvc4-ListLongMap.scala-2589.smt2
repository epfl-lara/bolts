; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39364 () Bool)

(assert start!39364)

(declare-fun b_free!9623 () Bool)

(declare-fun b_next!9623 () Bool)

(assert (=> start!39364 (= b_free!9623 (not b_next!9623))))

(declare-fun tp!34397 () Bool)

(declare-fun b_and!17139 () Bool)

(assert (=> start!39364 (= tp!34397 b_and!17139)))

(declare-fun b!417471 () Bool)

(declare-datatypes ((V!15471 0))(
  ( (V!15472 (val!5432 Int)) )
))
(declare-datatypes ((tuple2!7022 0))(
  ( (tuple2!7023 (_1!3521 (_ BitVec 64)) (_2!3521 V!15471)) )
))
(declare-datatypes ((List!7074 0))(
  ( (Nil!7071) (Cons!7070 (h!7926 tuple2!7022) (t!12370 List!7074)) )
))
(declare-datatypes ((ListLongMap!5949 0))(
  ( (ListLongMap!5950 (toList!2990 List!7074)) )
))
(declare-fun call!29044 () ListLongMap!5949)

(declare-fun call!29045 () ListLongMap!5949)

(declare-fun e!249054 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15471)

(declare-fun +!1201 (ListLongMap!5949 tuple2!7022) ListLongMap!5949)

(assert (=> b!417471 (= e!249054 (= call!29044 (+!1201 call!29045 (tuple2!7023 k!794 v!412))))))

(declare-fun b!417472 () Bool)

(declare-fun e!249053 () Bool)

(declare-fun tp_is_empty!10775 () Bool)

(assert (=> b!417472 (= e!249053 tp_is_empty!10775)))

(declare-fun b!417473 () Bool)

(declare-fun res!243226 () Bool)

(declare-fun e!249056 () Bool)

(assert (=> b!417473 (=> (not res!243226) (not e!249056))))

(declare-datatypes ((array!25385 0))(
  ( (array!25386 (arr!12139 (Array (_ BitVec 32) (_ BitVec 64))) (size!12491 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25385)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25385 (_ BitVec 32)) Bool)

(assert (=> b!417473 (= res!243226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!243221 () Bool)

(assert (=> start!39364 (=> (not res!243221) (not e!249056))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39364 (= res!243221 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12491 _keys!709))))))

(assert (=> start!39364 e!249056))

(assert (=> start!39364 tp_is_empty!10775))

(assert (=> start!39364 tp!34397))

(assert (=> start!39364 true))

(declare-datatypes ((ValueCell!5044 0))(
  ( (ValueCellFull!5044 (v!7675 V!15471)) (EmptyCell!5044) )
))
(declare-datatypes ((array!25387 0))(
  ( (array!25388 (arr!12140 (Array (_ BitVec 32) ValueCell!5044)) (size!12492 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25387)

(declare-fun e!249055 () Bool)

(declare-fun array_inv!8852 (array!25387) Bool)

(assert (=> start!39364 (and (array_inv!8852 _values!549) e!249055)))

(declare-fun array_inv!8853 (array!25385) Bool)

(assert (=> start!39364 (array_inv!8853 _keys!709)))

(declare-fun b!417474 () Bool)

(declare-fun e!249060 () Bool)

(declare-fun e!249058 () Bool)

(assert (=> b!417474 (= e!249060 (not e!249058))))

(declare-fun res!243223 () Bool)

(assert (=> b!417474 (=> res!243223 e!249058)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417474 (= res!243223 (validKeyInArray!0 (select (arr!12139 _keys!709) from!863)))))

(assert (=> b!417474 e!249054))

(declare-fun c!55073 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417474 (= c!55073 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15471)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12303 0))(
  ( (Unit!12304) )
))
(declare-fun lt!191325 () Unit!12303)

(declare-fun zeroValue!515 () V!15471)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!410 (array!25385 array!25387 (_ BitVec 32) (_ BitVec 32) V!15471 V!15471 (_ BitVec 32) (_ BitVec 64) V!15471 (_ BitVec 32) Int) Unit!12303)

(assert (=> b!417474 (= lt!191325 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!410 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417475 () Bool)

(assert (=> b!417475 (= e!249058 true)))

(declare-fun lt!191318 () V!15471)

(declare-fun lt!191321 () ListLongMap!5949)

(declare-fun lt!191315 () tuple2!7022)

(assert (=> b!417475 (= (+!1201 lt!191321 lt!191315) (+!1201 (+!1201 lt!191321 (tuple2!7023 k!794 lt!191318)) lt!191315))))

(declare-fun lt!191320 () V!15471)

(assert (=> b!417475 (= lt!191315 (tuple2!7023 k!794 lt!191320))))

(declare-fun lt!191323 () Unit!12303)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!24 (ListLongMap!5949 (_ BitVec 64) V!15471 V!15471) Unit!12303)

(assert (=> b!417475 (= lt!191323 (addSameAsAddTwiceSameKeyDiffValues!24 lt!191321 k!794 lt!191318 lt!191320))))

(declare-fun lt!191324 () V!15471)

(declare-fun get!6013 (ValueCell!5044 V!15471) V!15471)

(assert (=> b!417475 (= lt!191318 (get!6013 (select (arr!12140 _values!549) from!863) lt!191324))))

(declare-fun lt!191322 () ListLongMap!5949)

(declare-fun lt!191317 () array!25385)

(assert (=> b!417475 (= lt!191322 (+!1201 lt!191321 (tuple2!7023 (select (arr!12139 lt!191317) from!863) lt!191320)))))

(assert (=> b!417475 (= lt!191320 (get!6013 (select (store (arr!12140 _values!549) i!563 (ValueCellFull!5044 v!412)) from!863) lt!191324))))

(declare-fun dynLambda!686 (Int (_ BitVec 64)) V!15471)

(assert (=> b!417475 (= lt!191324 (dynLambda!686 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!191319 () array!25387)

(declare-fun getCurrentListMapNoExtraKeys!1193 (array!25385 array!25387 (_ BitVec 32) (_ BitVec 32) V!15471 V!15471 (_ BitVec 32) Int) ListLongMap!5949)

(assert (=> b!417475 (= lt!191321 (getCurrentListMapNoExtraKeys!1193 lt!191317 lt!191319 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417476 () Bool)

(declare-fun res!243227 () Bool)

(assert (=> b!417476 (=> (not res!243227) (not e!249056))))

(declare-datatypes ((List!7075 0))(
  ( (Nil!7072) (Cons!7071 (h!7927 (_ BitVec 64)) (t!12371 List!7075)) )
))
(declare-fun arrayNoDuplicates!0 (array!25385 (_ BitVec 32) List!7075) Bool)

(assert (=> b!417476 (= res!243227 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7072))))

(declare-fun b!417477 () Bool)

(declare-fun res!243230 () Bool)

(assert (=> b!417477 (=> (not res!243230) (not e!249056))))

(declare-fun arrayContainsKey!0 (array!25385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417477 (= res!243230 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!417478 () Bool)

(declare-fun res!243224 () Bool)

(assert (=> b!417478 (=> (not res!243224) (not e!249056))))

(assert (=> b!417478 (= res!243224 (and (= (size!12492 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12491 _keys!709) (size!12492 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417479 () Bool)

(declare-fun res!243225 () Bool)

(assert (=> b!417479 (=> (not res!243225) (not e!249056))))

(assert (=> b!417479 (= res!243225 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!17784 () Bool)

(declare-fun mapRes!17784 () Bool)

(declare-fun tp!34398 () Bool)

(declare-fun e!249057 () Bool)

(assert (=> mapNonEmpty!17784 (= mapRes!17784 (and tp!34398 e!249057))))

(declare-fun mapValue!17784 () ValueCell!5044)

(declare-fun mapKey!17784 () (_ BitVec 32))

(declare-fun mapRest!17784 () (Array (_ BitVec 32) ValueCell!5044))

(assert (=> mapNonEmpty!17784 (= (arr!12140 _values!549) (store mapRest!17784 mapKey!17784 mapValue!17784))))

(declare-fun b!417480 () Bool)

(declare-fun res!243222 () Bool)

(assert (=> b!417480 (=> (not res!243222) (not e!249056))))

(assert (=> b!417480 (= res!243222 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12491 _keys!709))))))

(declare-fun b!417481 () Bool)

(assert (=> b!417481 (= e!249054 (= call!29045 call!29044))))

(declare-fun bm!29041 () Bool)

(assert (=> bm!29041 (= call!29045 (getCurrentListMapNoExtraKeys!1193 (ite c!55073 _keys!709 lt!191317) (ite c!55073 _values!549 lt!191319) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417482 () Bool)

(declare-fun res!243231 () Bool)

(declare-fun e!249059 () Bool)

(assert (=> b!417482 (=> (not res!243231) (not e!249059))))

(assert (=> b!417482 (= res!243231 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17784 () Bool)

(assert (=> mapIsEmpty!17784 mapRes!17784))

(declare-fun b!417483 () Bool)

(assert (=> b!417483 (= e!249057 tp_is_empty!10775)))

(declare-fun b!417484 () Bool)

(assert (=> b!417484 (= e!249059 e!249060)))

(declare-fun res!243228 () Bool)

(assert (=> b!417484 (=> (not res!243228) (not e!249060))))

(assert (=> b!417484 (= res!243228 (= from!863 i!563))))

(assert (=> b!417484 (= lt!191322 (getCurrentListMapNoExtraKeys!1193 lt!191317 lt!191319 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417484 (= lt!191319 (array!25388 (store (arr!12140 _values!549) i!563 (ValueCellFull!5044 v!412)) (size!12492 _values!549)))))

(declare-fun lt!191316 () ListLongMap!5949)

(assert (=> b!417484 (= lt!191316 (getCurrentListMapNoExtraKeys!1193 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417485 () Bool)

(declare-fun res!243234 () Bool)

(assert (=> b!417485 (=> (not res!243234) (not e!249056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417485 (= res!243234 (validMask!0 mask!1025))))

(declare-fun b!417486 () Bool)

(declare-fun res!243233 () Bool)

(assert (=> b!417486 (=> (not res!243233) (not e!249056))))

(assert (=> b!417486 (= res!243233 (or (= (select (arr!12139 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12139 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!29042 () Bool)

(assert (=> bm!29042 (= call!29044 (getCurrentListMapNoExtraKeys!1193 (ite c!55073 lt!191317 _keys!709) (ite c!55073 lt!191319 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417487 () Bool)

(declare-fun res!243232 () Bool)

(assert (=> b!417487 (=> (not res!243232) (not e!249059))))

(assert (=> b!417487 (= res!243232 (arrayNoDuplicates!0 lt!191317 #b00000000000000000000000000000000 Nil!7072))))

(declare-fun b!417488 () Bool)

(assert (=> b!417488 (= e!249056 e!249059)))

(declare-fun res!243229 () Bool)

(assert (=> b!417488 (=> (not res!243229) (not e!249059))))

(assert (=> b!417488 (= res!243229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191317 mask!1025))))

(assert (=> b!417488 (= lt!191317 (array!25386 (store (arr!12139 _keys!709) i!563 k!794) (size!12491 _keys!709)))))

(declare-fun b!417489 () Bool)

(assert (=> b!417489 (= e!249055 (and e!249053 mapRes!17784))))

(declare-fun condMapEmpty!17784 () Bool)

(declare-fun mapDefault!17784 () ValueCell!5044)

