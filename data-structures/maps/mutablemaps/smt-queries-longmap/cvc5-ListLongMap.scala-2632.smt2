; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39618 () Bool)

(assert start!39618)

(declare-fun b_free!9877 () Bool)

(declare-fun b_next!9877 () Bool)

(assert (=> start!39618 (= b_free!9877 (not b_next!9877))))

(declare-fun tp!35159 () Bool)

(declare-fun b_and!17551 () Bool)

(assert (=> start!39618 (= tp!35159 b_and!17551)))

(declare-fun b!424284 () Bool)

(declare-fun res!248263 () Bool)

(declare-fun e!252047 () Bool)

(assert (=> b!424284 (=> (not res!248263) (not e!252047))))

(declare-datatypes ((array!25885 0))(
  ( (array!25886 (arr!12389 (Array (_ BitVec 32) (_ BitVec 64))) (size!12741 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25885)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424284 (= res!248263 (or (= (select (arr!12389 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12389 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424285 () Bool)

(declare-fun e!252049 () Bool)

(declare-fun tp_is_empty!11029 () Bool)

(assert (=> b!424285 (= e!252049 tp_is_empty!11029)))

(declare-fun b!424286 () Bool)

(declare-fun res!248273 () Bool)

(assert (=> b!424286 (=> (not res!248273) (not e!252047))))

(declare-datatypes ((List!7278 0))(
  ( (Nil!7275) (Cons!7274 (h!8130 (_ BitVec 64)) (t!12730 List!7278)) )
))
(declare-fun arrayNoDuplicates!0 (array!25885 (_ BitVec 32) List!7278) Bool)

(assert (=> b!424286 (= res!248273 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7275))))

(declare-fun b!424287 () Bool)

(declare-fun res!248274 () Bool)

(declare-fun e!252044 () Bool)

(assert (=> b!424287 (=> (not res!248274) (not e!252044))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!424287 (= res!248274 (bvsle from!863 i!563))))

(declare-fun b!424288 () Bool)

(declare-fun e!252045 () Bool)

(assert (=> b!424288 (= e!252045 tp_is_empty!11029)))

(declare-fun b!424289 () Bool)

(declare-fun res!248271 () Bool)

(assert (=> b!424289 (=> (not res!248271) (not e!252047))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424289 (= res!248271 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424290 () Bool)

(assert (=> b!424290 (= e!252047 e!252044)))

(declare-fun res!248269 () Bool)

(assert (=> b!424290 (=> (not res!248269) (not e!252044))))

(declare-fun lt!194339 () array!25885)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25885 (_ BitVec 32)) Bool)

(assert (=> b!424290 (= res!248269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194339 mask!1025))))

(assert (=> b!424290 (= lt!194339 (array!25886 (store (arr!12389 _keys!709) i!563 k!794) (size!12741 _keys!709)))))

(declare-fun mapNonEmpty!18165 () Bool)

(declare-fun mapRes!18165 () Bool)

(declare-fun tp!35160 () Bool)

(assert (=> mapNonEmpty!18165 (= mapRes!18165 (and tp!35160 e!252049))))

(declare-datatypes ((V!15811 0))(
  ( (V!15812 (val!5559 Int)) )
))
(declare-datatypes ((ValueCell!5171 0))(
  ( (ValueCellFull!5171 (v!7802 V!15811)) (EmptyCell!5171) )
))
(declare-fun mapRest!18165 () (Array (_ BitVec 32) ValueCell!5171))

(declare-fun mapKey!18165 () (_ BitVec 32))

(declare-datatypes ((array!25887 0))(
  ( (array!25888 (arr!12390 (Array (_ BitVec 32) ValueCell!5171)) (size!12742 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25887)

(declare-fun mapValue!18165 () ValueCell!5171)

(assert (=> mapNonEmpty!18165 (= (arr!12390 _values!549) (store mapRest!18165 mapKey!18165 mapValue!18165))))

(declare-fun b!424291 () Bool)

(declare-fun res!248270 () Bool)

(assert (=> b!424291 (=> (not res!248270) (not e!252047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424291 (= res!248270 (validKeyInArray!0 k!794))))

(declare-fun b!424292 () Bool)

(assert (=> b!424292 (= e!252044 false)))

(declare-fun minValue!515 () V!15811)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15811)

(declare-datatypes ((tuple2!7232 0))(
  ( (tuple2!7233 (_1!3626 (_ BitVec 64)) (_2!3626 V!15811)) )
))
(declare-datatypes ((List!7279 0))(
  ( (Nil!7276) (Cons!7275 (h!8131 tuple2!7232) (t!12731 List!7279)) )
))
(declare-datatypes ((ListLongMap!6159 0))(
  ( (ListLongMap!6160 (toList!3095 List!7279)) )
))
(declare-fun lt!194340 () ListLongMap!6159)

(declare-fun v!412 () V!15811)

(declare-fun getCurrentListMapNoExtraKeys!1296 (array!25885 array!25887 (_ BitVec 32) (_ BitVec 32) V!15811 V!15811 (_ BitVec 32) Int) ListLongMap!6159)

(assert (=> b!424292 (= lt!194340 (getCurrentListMapNoExtraKeys!1296 lt!194339 (array!25888 (store (arr!12390 _values!549) i!563 (ValueCellFull!5171 v!412)) (size!12742 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194338 () ListLongMap!6159)

(assert (=> b!424292 (= lt!194338 (getCurrentListMapNoExtraKeys!1296 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424293 () Bool)

(declare-fun res!248267 () Bool)

(assert (=> b!424293 (=> (not res!248267) (not e!252047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424293 (= res!248267 (validMask!0 mask!1025))))

(declare-fun b!424294 () Bool)

(declare-fun res!248264 () Bool)

(assert (=> b!424294 (=> (not res!248264) (not e!252047))))

(assert (=> b!424294 (= res!248264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18165 () Bool)

(assert (=> mapIsEmpty!18165 mapRes!18165))

(declare-fun b!424295 () Bool)

(declare-fun res!248268 () Bool)

(assert (=> b!424295 (=> (not res!248268) (not e!252047))))

(assert (=> b!424295 (= res!248268 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12741 _keys!709))))))

(declare-fun b!424296 () Bool)

(declare-fun e!252046 () Bool)

(assert (=> b!424296 (= e!252046 (and e!252045 mapRes!18165))))

(declare-fun condMapEmpty!18165 () Bool)

(declare-fun mapDefault!18165 () ValueCell!5171)

