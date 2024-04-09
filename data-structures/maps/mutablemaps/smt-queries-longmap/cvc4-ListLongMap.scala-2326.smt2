; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37430 () Bool)

(assert start!37430)

(declare-fun b_free!8549 () Bool)

(declare-fun b_next!8549 () Bool)

(assert (=> start!37430 (= b_free!8549 (not b_next!8549))))

(declare-fun tp!30363 () Bool)

(declare-fun b_and!15809 () Bool)

(assert (=> start!37430 (= tp!30363 b_and!15809)))

(declare-fun b!380610 () Bool)

(declare-fun res!216197 () Bool)

(declare-fun e!231476 () Bool)

(assert (=> b!380610 (=> (not res!216197) (not e!231476))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22289 0))(
  ( (array!22290 (arr!10610 (Array (_ BitVec 32) (_ BitVec 64))) (size!10962 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22289)

(assert (=> b!380610 (= res!216197 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10962 _keys!658))))))

(declare-fun mapIsEmpty!15360 () Bool)

(declare-fun mapRes!15360 () Bool)

(assert (=> mapIsEmpty!15360 mapRes!15360))

(declare-fun b!380611 () Bool)

(declare-fun e!231483 () Bool)

(declare-fun tp_is_empty!9197 () Bool)

(assert (=> b!380611 (= e!231483 tp_is_empty!9197)))

(declare-fun b!380612 () Bool)

(declare-fun res!216203 () Bool)

(assert (=> b!380612 (=> (not res!216203) (not e!231476))))

(declare-datatypes ((List!6059 0))(
  ( (Nil!6056) (Cons!6055 (h!6911 (_ BitVec 64)) (t!11217 List!6059)) )
))
(declare-fun arrayNoDuplicates!0 (array!22289 (_ BitVec 32) List!6059) Bool)

(assert (=> b!380612 (= res!216203 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6056))))

(declare-fun b!380613 () Bool)

(declare-fun e!231481 () Bool)

(declare-fun e!231482 () Bool)

(assert (=> b!380613 (= e!231481 e!231482)))

(declare-fun res!216202 () Bool)

(assert (=> b!380613 (=> res!216202 e!231482)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!380613 (= res!216202 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13367 0))(
  ( (V!13368 (val!4643 Int)) )
))
(declare-datatypes ((tuple2!6188 0))(
  ( (tuple2!6189 (_1!3104 (_ BitVec 64)) (_2!3104 V!13367)) )
))
(declare-datatypes ((List!6060 0))(
  ( (Nil!6057) (Cons!6056 (h!6912 tuple2!6188) (t!11218 List!6060)) )
))
(declare-datatypes ((ListLongMap!5115 0))(
  ( (ListLongMap!5116 (toList!2573 List!6060)) )
))
(declare-fun lt!178334 () ListLongMap!5115)

(declare-fun lt!178333 () ListLongMap!5115)

(assert (=> b!380613 (= lt!178334 lt!178333)))

(declare-fun lt!178338 () ListLongMap!5115)

(declare-fun lt!178336 () tuple2!6188)

(declare-fun +!914 (ListLongMap!5115 tuple2!6188) ListLongMap!5115)

(assert (=> b!380613 (= lt!178333 (+!914 lt!178338 lt!178336))))

(declare-fun lt!178332 () ListLongMap!5115)

(declare-fun lt!178342 () ListLongMap!5115)

(assert (=> b!380613 (= lt!178332 lt!178342)))

(declare-fun lt!178331 () ListLongMap!5115)

(assert (=> b!380613 (= lt!178342 (+!914 lt!178331 lt!178336))))

(declare-fun lt!178339 () ListLongMap!5115)

(assert (=> b!380613 (= lt!178332 (+!914 lt!178339 lt!178336))))

(declare-fun minValue!472 () V!13367)

(assert (=> b!380613 (= lt!178336 (tuple2!6189 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380614 () Bool)

(declare-fun e!231479 () Bool)

(declare-fun e!231480 () Bool)

(assert (=> b!380614 (= e!231479 (and e!231480 mapRes!15360))))

(declare-fun condMapEmpty!15360 () Bool)

(declare-datatypes ((ValueCell!4255 0))(
  ( (ValueCellFull!4255 (v!6836 V!13367)) (EmptyCell!4255) )
))
(declare-datatypes ((array!22291 0))(
  ( (array!22292 (arr!10611 (Array (_ BitVec 32) ValueCell!4255)) (size!10963 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22291)

(declare-fun mapDefault!15360 () ValueCell!4255)

