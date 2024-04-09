; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37334 () Bool)

(assert start!37334)

(declare-fun b_free!8453 () Bool)

(declare-fun b_next!8453 () Bool)

(assert (=> start!37334 (= b_free!8453 (not b_next!8453))))

(declare-fun tp!30074 () Bool)

(declare-fun b_and!15713 () Bool)

(assert (=> start!37334 (= tp!30074 b_and!15713)))

(declare-fun b!378450 () Bool)

(declare-fun e!230331 () Bool)

(assert (=> b!378450 (= e!230331 true)))

(declare-datatypes ((V!13239 0))(
  ( (V!13240 (val!4595 Int)) )
))
(declare-datatypes ((tuple2!6106 0))(
  ( (tuple2!6107 (_1!3063 (_ BitVec 64)) (_2!3063 V!13239)) )
))
(declare-datatypes ((List!5978 0))(
  ( (Nil!5975) (Cons!5974 (h!6830 tuple2!6106) (t!11136 List!5978)) )
))
(declare-datatypes ((ListLongMap!5033 0))(
  ( (ListLongMap!5034 (toList!2532 List!5978)) )
))
(declare-fun lt!176462 () ListLongMap!5033)

(declare-fun lt!176466 () ListLongMap!5033)

(declare-fun lt!176458 () tuple2!6106)

(declare-fun +!873 (ListLongMap!5033 tuple2!6106) ListLongMap!5033)

(assert (=> b!378450 (= lt!176462 (+!873 lt!176466 lt!176458))))

(declare-fun lt!176463 () ListLongMap!5033)

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((Unit!11643 0))(
  ( (Unit!11644) )
))
(declare-fun lt!176459 () Unit!11643)

(declare-fun minValue!472 () V!13239)

(declare-fun v!373 () V!13239)

(declare-fun addCommutativeForDiffKeys!288 (ListLongMap!5033 (_ BitVec 64) V!13239 (_ BitVec 64) V!13239) Unit!11643)

(assert (=> b!378450 (= lt!176459 (addCommutativeForDiffKeys!288 lt!176463 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378451 () Bool)

(declare-fun res!214477 () Bool)

(declare-fun e!230328 () Bool)

(assert (=> b!378451 (=> (not res!214477) (not e!230328))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22099 0))(
  ( (array!22100 (arr!10515 (Array (_ BitVec 32) (_ BitVec 64))) (size!10867 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22099)

(assert (=> b!378451 (= res!214477 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10867 _keys!658))))))

(declare-fun b!378452 () Bool)

(declare-fun e!230324 () Bool)

(assert (=> b!378452 (= e!230324 e!230331)))

(declare-fun res!214471 () Bool)

(assert (=> b!378452 (=> res!214471 e!230331)))

(assert (=> b!378452 (= res!214471 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!176468 () ListLongMap!5033)

(assert (=> b!378452 (= lt!176468 lt!176466)))

(declare-fun lt!176467 () tuple2!6106)

(assert (=> b!378452 (= lt!176466 (+!873 lt!176463 lt!176467))))

(declare-fun lt!176470 () ListLongMap!5033)

(assert (=> b!378452 (= lt!176470 lt!176462)))

(declare-fun lt!176460 () ListLongMap!5033)

(assert (=> b!378452 (= lt!176462 (+!873 lt!176460 lt!176467))))

(declare-fun lt!176465 () ListLongMap!5033)

(assert (=> b!378452 (= lt!176470 (+!873 lt!176465 lt!176467))))

(assert (=> b!378452 (= lt!176467 (tuple2!6107 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378453 () Bool)

(declare-fun e!230325 () Bool)

(declare-fun tp_is_empty!9101 () Bool)

(assert (=> b!378453 (= e!230325 tp_is_empty!9101)))

(declare-fun mapNonEmpty!15216 () Bool)

(declare-fun mapRes!15216 () Bool)

(declare-fun tp!30075 () Bool)

(declare-fun e!230327 () Bool)

(assert (=> mapNonEmpty!15216 (= mapRes!15216 (and tp!30075 e!230327))))

(declare-fun mapKey!15216 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4207 0))(
  ( (ValueCellFull!4207 (v!6788 V!13239)) (EmptyCell!4207) )
))
(declare-datatypes ((array!22101 0))(
  ( (array!22102 (arr!10516 (Array (_ BitVec 32) ValueCell!4207)) (size!10868 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22101)

(declare-fun mapRest!15216 () (Array (_ BitVec 32) ValueCell!4207))

(declare-fun mapValue!15216 () ValueCell!4207)

(assert (=> mapNonEmpty!15216 (= (arr!10516 _values!506) (store mapRest!15216 mapKey!15216 mapValue!15216))))

(declare-fun res!214467 () Bool)

(assert (=> start!37334 (=> (not res!214467) (not e!230328))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37334 (= res!214467 (validMask!0 mask!970))))

(assert (=> start!37334 e!230328))

(declare-fun e!230326 () Bool)

(declare-fun array_inv!7736 (array!22101) Bool)

(assert (=> start!37334 (and (array_inv!7736 _values!506) e!230326)))

(assert (=> start!37334 tp!30074))

(assert (=> start!37334 true))

(assert (=> start!37334 tp_is_empty!9101))

(declare-fun array_inv!7737 (array!22099) Bool)

(assert (=> start!37334 (array_inv!7737 _keys!658)))

(declare-fun b!378454 () Bool)

(declare-fun res!214472 () Bool)

(assert (=> b!378454 (=> (not res!214472) (not e!230328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378454 (= res!214472 (validKeyInArray!0 k!778))))

(declare-fun b!378455 () Bool)

(declare-fun res!214470 () Bool)

(assert (=> b!378455 (=> (not res!214470) (not e!230328))))

(declare-datatypes ((List!5979 0))(
  ( (Nil!5976) (Cons!5975 (h!6831 (_ BitVec 64)) (t!11137 List!5979)) )
))
(declare-fun arrayNoDuplicates!0 (array!22099 (_ BitVec 32) List!5979) Bool)

(assert (=> b!378455 (= res!214470 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5976))))

(declare-fun b!378456 () Bool)

(declare-fun e!230330 () Bool)

(assert (=> b!378456 (= e!230328 e!230330)))

(declare-fun res!214473 () Bool)

(assert (=> b!378456 (=> (not res!214473) (not e!230330))))

(declare-fun lt!176461 () array!22099)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22099 (_ BitVec 32)) Bool)

(assert (=> b!378456 (= res!214473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176461 mask!970))))

(assert (=> b!378456 (= lt!176461 (array!22100 (store (arr!10515 _keys!658) i!548 k!778) (size!10867 _keys!658)))))

(declare-fun b!378457 () Bool)

(assert (=> b!378457 (= e!230327 tp_is_empty!9101)))

(declare-fun b!378458 () Bool)

(declare-fun res!214469 () Bool)

(assert (=> b!378458 (=> (not res!214469) (not e!230328))))

(assert (=> b!378458 (= res!214469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378459 () Bool)

(declare-fun res!214468 () Bool)

(assert (=> b!378459 (=> (not res!214468) (not e!230328))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378459 (= res!214468 (and (= (size!10868 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10867 _keys!658) (size!10868 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378460 () Bool)

(declare-fun res!214476 () Bool)

(assert (=> b!378460 (=> (not res!214476) (not e!230330))))

(assert (=> b!378460 (= res!214476 (arrayNoDuplicates!0 lt!176461 #b00000000000000000000000000000000 Nil!5976))))

(declare-fun b!378461 () Bool)

(declare-fun res!214475 () Bool)

(assert (=> b!378461 (=> (not res!214475) (not e!230328))))

(assert (=> b!378461 (= res!214475 (or (= (select (arr!10515 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10515 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378462 () Bool)

(declare-fun res!214478 () Bool)

(assert (=> b!378462 (=> (not res!214478) (not e!230328))))

(declare-fun arrayContainsKey!0 (array!22099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378462 (= res!214478 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378463 () Bool)

(assert (=> b!378463 (= e!230326 (and e!230325 mapRes!15216))))

(declare-fun condMapEmpty!15216 () Bool)

(declare-fun mapDefault!15216 () ValueCell!4207)

