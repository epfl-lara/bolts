; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39316 () Bool)

(assert start!39316)

(declare-fun b_free!9575 () Bool)

(declare-fun b_next!9575 () Bool)

(assert (=> start!39316 (= b_free!9575 (not b_next!9575))))

(declare-fun tp!34254 () Bool)

(declare-fun b_and!17043 () Bool)

(assert (=> start!39316 (= tp!34254 b_and!17043)))

(declare-fun b!416055 () Bool)

(declare-fun e!248410 () Bool)

(declare-fun e!248413 () Bool)

(assert (=> b!416055 (= e!248410 e!248413)))

(declare-fun res!242225 () Bool)

(assert (=> b!416055 (=> (not res!242225) (not e!248413))))

(declare-datatypes ((array!25289 0))(
  ( (array!25290 (arr!12091 (Array (_ BitVec 32) (_ BitVec 64))) (size!12443 (_ BitVec 32))) )
))
(declare-fun lt!190530 () array!25289)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25289 (_ BitVec 32)) Bool)

(assert (=> b!416055 (= res!242225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190530 mask!1025))))

(declare-fun _keys!709 () array!25289)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416055 (= lt!190530 (array!25290 (store (arr!12091 _keys!709) i!563 k!794) (size!12443 _keys!709)))))

(declare-datatypes ((V!15407 0))(
  ( (V!15408 (val!5408 Int)) )
))
(declare-datatypes ((tuple2!6976 0))(
  ( (tuple2!6977 (_1!3498 (_ BitVec 64)) (_2!3498 V!15407)) )
))
(declare-datatypes ((List!7031 0))(
  ( (Nil!7028) (Cons!7027 (h!7883 tuple2!6976) (t!12279 List!7031)) )
))
(declare-datatypes ((ListLongMap!5903 0))(
  ( (ListLongMap!5904 (toList!2967 List!7031)) )
))
(declare-fun call!28900 () ListLongMap!5903)

(declare-fun e!248405 () Bool)

(declare-fun call!28901 () ListLongMap!5903)

(declare-fun b!416056 () Bool)

(declare-fun v!412 () V!15407)

(declare-fun +!1179 (ListLongMap!5903 tuple2!6976) ListLongMap!5903)

(assert (=> b!416056 (= e!248405 (= call!28900 (+!1179 call!28901 (tuple2!6977 k!794 v!412))))))

(declare-fun b!416057 () Bool)

(declare-fun res!242223 () Bool)

(assert (=> b!416057 (=> (not res!242223) (not e!248410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416057 (= res!242223 (validMask!0 mask!1025))))

(declare-fun b!416058 () Bool)

(declare-fun res!242215 () Bool)

(assert (=> b!416058 (=> (not res!242215) (not e!248410))))

(declare-fun arrayContainsKey!0 (array!25289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416058 (= res!242215 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!416059 () Bool)

(declare-fun res!242213 () Bool)

(assert (=> b!416059 (=> (not res!242213) (not e!248410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416059 (= res!242213 (validKeyInArray!0 k!794))))

(declare-fun b!416060 () Bool)

(declare-fun e!248412 () Bool)

(assert (=> b!416060 (= e!248413 e!248412)))

(declare-fun res!242226 () Bool)

(assert (=> b!416060 (=> (not res!242226) (not e!248412))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!416060 (= res!242226 (= from!863 i!563))))

(declare-fun minValue!515 () V!15407)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15407)

(declare-fun lt!190526 () ListLongMap!5903)

(declare-datatypes ((ValueCell!5020 0))(
  ( (ValueCellFull!5020 (v!7651 V!15407)) (EmptyCell!5020) )
))
(declare-datatypes ((array!25291 0))(
  ( (array!25292 (arr!12092 (Array (_ BitVec 32) ValueCell!5020)) (size!12444 (_ BitVec 32))) )
))
(declare-fun lt!190524 () array!25291)

(declare-fun getCurrentListMapNoExtraKeys!1171 (array!25289 array!25291 (_ BitVec 32) (_ BitVec 32) V!15407 V!15407 (_ BitVec 32) Int) ListLongMap!5903)

(assert (=> b!416060 (= lt!190526 (getCurrentListMapNoExtraKeys!1171 lt!190530 lt!190524 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25291)

(assert (=> b!416060 (= lt!190524 (array!25292 (store (arr!12092 _values!549) i!563 (ValueCellFull!5020 v!412)) (size!12444 _values!549)))))

(declare-fun lt!190525 () ListLongMap!5903)

(assert (=> b!416060 (= lt!190525 (getCurrentListMapNoExtraKeys!1171 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!28897 () Bool)

(declare-fun c!55001 () Bool)

(assert (=> bm!28897 (= call!28900 (getCurrentListMapNoExtraKeys!1171 (ite c!55001 lt!190530 _keys!709) (ite c!55001 lt!190524 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416061 () Bool)

(declare-fun e!248409 () Bool)

(assert (=> b!416061 (= e!248409 true)))

(declare-fun lt!190531 () tuple2!6976)

(declare-fun lt!190532 () ListLongMap!5903)

(declare-fun lt!190523 () V!15407)

(assert (=> b!416061 (= (+!1179 lt!190532 lt!190531) (+!1179 (+!1179 lt!190532 (tuple2!6977 k!794 lt!190523)) lt!190531))))

(declare-fun lt!190528 () V!15407)

(assert (=> b!416061 (= lt!190531 (tuple2!6977 k!794 lt!190528))))

(declare-datatypes ((Unit!12257 0))(
  ( (Unit!12258) )
))
(declare-fun lt!190527 () Unit!12257)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!3 (ListLongMap!5903 (_ BitVec 64) V!15407 V!15407) Unit!12257)

(assert (=> b!416061 (= lt!190527 (addSameAsAddTwiceSameKeyDiffValues!3 lt!190532 k!794 lt!190523 lt!190528))))

(declare-fun lt!190529 () V!15407)

(declare-fun get!5976 (ValueCell!5020 V!15407) V!15407)

(assert (=> b!416061 (= lt!190523 (get!5976 (select (arr!12092 _values!549) from!863) lt!190529))))

(assert (=> b!416061 (= lt!190526 (+!1179 lt!190532 (tuple2!6977 (select (arr!12091 lt!190530) from!863) lt!190528)))))

(assert (=> b!416061 (= lt!190528 (get!5976 (select (store (arr!12092 _values!549) i!563 (ValueCellFull!5020 v!412)) from!863) lt!190529))))

(declare-fun dynLambda!665 (Int (_ BitVec 64)) V!15407)

(assert (=> b!416061 (= lt!190529 (dynLambda!665 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!416061 (= lt!190532 (getCurrentListMapNoExtraKeys!1171 lt!190530 lt!190524 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17712 () Bool)

(declare-fun mapRes!17712 () Bool)

(declare-fun tp!34253 () Bool)

(declare-fun e!248408 () Bool)

(assert (=> mapNonEmpty!17712 (= mapRes!17712 (and tp!34253 e!248408))))

(declare-fun mapValue!17712 () ValueCell!5020)

(declare-fun mapRest!17712 () (Array (_ BitVec 32) ValueCell!5020))

(declare-fun mapKey!17712 () (_ BitVec 32))

(assert (=> mapNonEmpty!17712 (= (arr!12092 _values!549) (store mapRest!17712 mapKey!17712 mapValue!17712))))

(declare-fun bm!28898 () Bool)

(assert (=> bm!28898 (= call!28901 (getCurrentListMapNoExtraKeys!1171 (ite c!55001 _keys!709 lt!190530) (ite c!55001 _values!549 lt!190524) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416062 () Bool)

(assert (=> b!416062 (= e!248412 (not e!248409))))

(declare-fun res!242217 () Bool)

(assert (=> b!416062 (=> res!242217 e!248409)))

(assert (=> b!416062 (= res!242217 (validKeyInArray!0 (select (arr!12091 _keys!709) from!863)))))

(assert (=> b!416062 e!248405))

(assert (=> b!416062 (= c!55001 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190533 () Unit!12257)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!391 (array!25289 array!25291 (_ BitVec 32) (_ BitVec 32) V!15407 V!15407 (_ BitVec 32) (_ BitVec 64) V!15407 (_ BitVec 32) Int) Unit!12257)

(assert (=> b!416062 (= lt!190533 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!391 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416063 () Bool)

(declare-fun res!242220 () Bool)

(assert (=> b!416063 (=> (not res!242220) (not e!248410))))

(assert (=> b!416063 (= res!242220 (or (= (select (arr!12091 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12091 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17712 () Bool)

(assert (=> mapIsEmpty!17712 mapRes!17712))

(declare-fun b!416065 () Bool)

(declare-fun e!248406 () Bool)

(declare-fun tp_is_empty!10727 () Bool)

(assert (=> b!416065 (= e!248406 tp_is_empty!10727)))

(declare-fun b!416066 () Bool)

(declare-fun res!242214 () Bool)

(assert (=> b!416066 (=> (not res!242214) (not e!248413))))

(declare-datatypes ((List!7032 0))(
  ( (Nil!7029) (Cons!7028 (h!7884 (_ BitVec 64)) (t!12280 List!7032)) )
))
(declare-fun arrayNoDuplicates!0 (array!25289 (_ BitVec 32) List!7032) Bool)

(assert (=> b!416066 (= res!242214 (arrayNoDuplicates!0 lt!190530 #b00000000000000000000000000000000 Nil!7029))))

(declare-fun b!416067 () Bool)

(declare-fun res!242221 () Bool)

(assert (=> b!416067 (=> (not res!242221) (not e!248410))))

(assert (=> b!416067 (= res!242221 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12443 _keys!709))))))

(declare-fun b!416068 () Bool)

(declare-fun e!248407 () Bool)

(assert (=> b!416068 (= e!248407 (and e!248406 mapRes!17712))))

(declare-fun condMapEmpty!17712 () Bool)

(declare-fun mapDefault!17712 () ValueCell!5020)

