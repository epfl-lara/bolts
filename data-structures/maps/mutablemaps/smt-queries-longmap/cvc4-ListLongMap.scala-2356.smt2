; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37610 () Bool)

(assert start!37610)

(declare-fun b_free!8729 () Bool)

(declare-fun b_next!8729 () Bool)

(assert (=> start!37610 (= b_free!8729 (not b_next!8729))))

(declare-fun tp!30902 () Bool)

(declare-fun b_and!15989 () Bool)

(assert (=> start!37610 (= tp!30902 b_and!15989)))

(declare-fun b!384400 () Bool)

(declare-fun res!219184 () Bool)

(declare-fun e!233379 () Bool)

(assert (=> b!384400 (=> (not res!219184) (not e!233379))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13607 0))(
  ( (V!13608 (val!4733 Int)) )
))
(declare-datatypes ((ValueCell!4345 0))(
  ( (ValueCellFull!4345 (v!6926 V!13607)) (EmptyCell!4345) )
))
(declare-datatypes ((array!22641 0))(
  ( (array!22642 (arr!10786 (Array (_ BitVec 32) ValueCell!4345)) (size!11138 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22641)

(declare-datatypes ((array!22643 0))(
  ( (array!22644 (arr!10787 (Array (_ BitVec 32) (_ BitVec 64))) (size!11139 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22643)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!384400 (= res!219184 (and (= (size!11138 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11139 _keys!658) (size!11138 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384401 () Bool)

(declare-fun e!233376 () Bool)

(declare-fun tp_is_empty!9377 () Bool)

(assert (=> b!384401 (= e!233376 tp_is_empty!9377)))

(declare-fun b!384402 () Bool)

(declare-fun res!219183 () Bool)

(assert (=> b!384402 (=> (not res!219183) (not e!233379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22643 (_ BitVec 32)) Bool)

(assert (=> b!384402 (= res!219183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384403 () Bool)

(declare-fun e!233381 () Bool)

(assert (=> b!384403 (= e!233381 tp_is_empty!9377)))

(declare-fun b!384404 () Bool)

(declare-fun res!219180 () Bool)

(assert (=> b!384404 (=> (not res!219180) (not e!233379))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384404 (= res!219180 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11139 _keys!658))))))

(declare-fun b!384405 () Bool)

(declare-fun res!219176 () Bool)

(assert (=> b!384405 (=> (not res!219176) (not e!233379))))

(declare-datatypes ((List!6193 0))(
  ( (Nil!6190) (Cons!6189 (h!7045 (_ BitVec 64)) (t!11351 List!6193)) )
))
(declare-fun arrayNoDuplicates!0 (array!22643 (_ BitVec 32) List!6193) Bool)

(assert (=> b!384405 (= res!219176 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6190))))

(declare-fun b!384406 () Bool)

(declare-fun e!233380 () Bool)

(declare-fun e!233377 () Bool)

(assert (=> b!384406 (= e!233380 (not e!233377))))

(declare-fun res!219178 () Bool)

(assert (=> b!384406 (=> res!219178 e!233377)))

(declare-fun lt!180974 () Bool)

(assert (=> b!384406 (= res!219178 (or (and (not lt!180974) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180974) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180974)))))

(assert (=> b!384406 (= lt!180974 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6328 0))(
  ( (tuple2!6329 (_1!3174 (_ BitVec 64)) (_2!3174 V!13607)) )
))
(declare-datatypes ((List!6194 0))(
  ( (Nil!6191) (Cons!6190 (h!7046 tuple2!6328) (t!11352 List!6194)) )
))
(declare-datatypes ((ListLongMap!5255 0))(
  ( (ListLongMap!5256 (toList!2643 List!6194)) )
))
(declare-fun lt!180970 () ListLongMap!5255)

(declare-fun zeroValue!472 () V!13607)

(declare-fun minValue!472 () V!13607)

(declare-fun getCurrentListMap!2059 (array!22643 array!22641 (_ BitVec 32) (_ BitVec 32) V!13607 V!13607 (_ BitVec 32) Int) ListLongMap!5255)

(assert (=> b!384406 (= lt!180970 (getCurrentListMap!2059 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180978 () array!22641)

(declare-fun lt!180969 () ListLongMap!5255)

(declare-fun lt!180976 () array!22643)

(assert (=> b!384406 (= lt!180969 (getCurrentListMap!2059 lt!180976 lt!180978 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180979 () ListLongMap!5255)

(declare-fun lt!180971 () ListLongMap!5255)

(assert (=> b!384406 (and (= lt!180979 lt!180971) (= lt!180971 lt!180979))))

(declare-fun lt!180977 () ListLongMap!5255)

(declare-fun lt!180972 () tuple2!6328)

(declare-fun +!979 (ListLongMap!5255 tuple2!6328) ListLongMap!5255)

(assert (=> b!384406 (= lt!180971 (+!979 lt!180977 lt!180972))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13607)

(assert (=> b!384406 (= lt!180972 (tuple2!6329 k!778 v!373))))

(declare-datatypes ((Unit!11847 0))(
  ( (Unit!11848) )
))
(declare-fun lt!180975 () Unit!11847)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!210 (array!22643 array!22641 (_ BitVec 32) (_ BitVec 32) V!13607 V!13607 (_ BitVec 32) (_ BitVec 64) V!13607 (_ BitVec 32) Int) Unit!11847)

(assert (=> b!384406 (= lt!180975 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!210 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!877 (array!22643 array!22641 (_ BitVec 32) (_ BitVec 32) V!13607 V!13607 (_ BitVec 32) Int) ListLongMap!5255)

(assert (=> b!384406 (= lt!180979 (getCurrentListMapNoExtraKeys!877 lt!180976 lt!180978 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384406 (= lt!180978 (array!22642 (store (arr!10786 _values!506) i!548 (ValueCellFull!4345 v!373)) (size!11138 _values!506)))))

(assert (=> b!384406 (= lt!180977 (getCurrentListMapNoExtraKeys!877 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15630 () Bool)

(declare-fun mapRes!15630 () Bool)

(assert (=> mapIsEmpty!15630 mapRes!15630))

(declare-fun b!384407 () Bool)

(declare-fun res!219177 () Bool)

(assert (=> b!384407 (=> (not res!219177) (not e!233380))))

(assert (=> b!384407 (= res!219177 (arrayNoDuplicates!0 lt!180976 #b00000000000000000000000000000000 Nil!6190))))

(declare-fun b!384408 () Bool)

(declare-fun res!219181 () Bool)

(assert (=> b!384408 (=> (not res!219181) (not e!233379))))

(declare-fun arrayContainsKey!0 (array!22643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384408 (= res!219181 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15630 () Bool)

(declare-fun tp!30903 () Bool)

(assert (=> mapNonEmpty!15630 (= mapRes!15630 (and tp!30903 e!233381))))

(declare-fun mapRest!15630 () (Array (_ BitVec 32) ValueCell!4345))

(declare-fun mapValue!15630 () ValueCell!4345)

(declare-fun mapKey!15630 () (_ BitVec 32))

(assert (=> mapNonEmpty!15630 (= (arr!10786 _values!506) (store mapRest!15630 mapKey!15630 mapValue!15630))))

(declare-fun b!384409 () Bool)

(declare-fun res!219175 () Bool)

(assert (=> b!384409 (=> (not res!219175) (not e!233379))))

(assert (=> b!384409 (= res!219175 (or (= (select (arr!10787 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10787 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384410 () Bool)

(assert (=> b!384410 (= e!233377 true)))

(declare-fun lt!180973 () ListLongMap!5255)

(assert (=> b!384410 (= lt!180973 (+!979 lt!180970 lt!180972))))

(assert (=> b!384410 (= lt!180969 lt!180979)))

(declare-fun b!384411 () Bool)

(assert (=> b!384411 (= e!233379 e!233380)))

(declare-fun res!219185 () Bool)

(assert (=> b!384411 (=> (not res!219185) (not e!233380))))

(assert (=> b!384411 (= res!219185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180976 mask!970))))

(assert (=> b!384411 (= lt!180976 (array!22644 (store (arr!10787 _keys!658) i!548 k!778) (size!11139 _keys!658)))))

(declare-fun res!219179 () Bool)

(assert (=> start!37610 (=> (not res!219179) (not e!233379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37610 (= res!219179 (validMask!0 mask!970))))

(assert (=> start!37610 e!233379))

(declare-fun e!233382 () Bool)

(declare-fun array_inv!7922 (array!22641) Bool)

(assert (=> start!37610 (and (array_inv!7922 _values!506) e!233382)))

(assert (=> start!37610 tp!30902))

(assert (=> start!37610 true))

(assert (=> start!37610 tp_is_empty!9377))

(declare-fun array_inv!7923 (array!22643) Bool)

(assert (=> start!37610 (array_inv!7923 _keys!658)))

(declare-fun b!384412 () Bool)

(declare-fun res!219182 () Bool)

(assert (=> b!384412 (=> (not res!219182) (not e!233379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384412 (= res!219182 (validKeyInArray!0 k!778))))

(declare-fun b!384413 () Bool)

(assert (=> b!384413 (= e!233382 (and e!233376 mapRes!15630))))

(declare-fun condMapEmpty!15630 () Bool)

(declare-fun mapDefault!15630 () ValueCell!4345)

