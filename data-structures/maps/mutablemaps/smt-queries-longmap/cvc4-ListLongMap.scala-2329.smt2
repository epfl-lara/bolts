; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37448 () Bool)

(assert start!37448)

(declare-fun b_free!8567 () Bool)

(declare-fun b_next!8567 () Bool)

(assert (=> start!37448 (= b_free!8567 (not b_next!8567))))

(declare-fun tp!30417 () Bool)

(declare-fun b_and!15827 () Bool)

(assert (=> start!37448 (= tp!30417 b_and!15827)))

(declare-fun b!380989 () Bool)

(declare-fun res!216493 () Bool)

(declare-fun e!231669 () Bool)

(assert (=> b!380989 (=> (not res!216493) (not e!231669))))

(declare-datatypes ((array!22323 0))(
  ( (array!22324 (arr!10627 (Array (_ BitVec 32) (_ BitVec 64))) (size!10979 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22323)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380989 (= res!216493 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!216499 () Bool)

(assert (=> start!37448 (=> (not res!216499) (not e!231669))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37448 (= res!216499 (validMask!0 mask!970))))

(assert (=> start!37448 e!231669))

(declare-datatypes ((V!13391 0))(
  ( (V!13392 (val!4652 Int)) )
))
(declare-datatypes ((ValueCell!4264 0))(
  ( (ValueCellFull!4264 (v!6845 V!13391)) (EmptyCell!4264) )
))
(declare-datatypes ((array!22325 0))(
  ( (array!22326 (arr!10628 (Array (_ BitVec 32) ValueCell!4264)) (size!10980 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22325)

(declare-fun e!231672 () Bool)

(declare-fun array_inv!7810 (array!22325) Bool)

(assert (=> start!37448 (and (array_inv!7810 _values!506) e!231672)))

(assert (=> start!37448 tp!30417))

(assert (=> start!37448 true))

(declare-fun tp_is_empty!9215 () Bool)

(assert (=> start!37448 tp_is_empty!9215))

(declare-fun array_inv!7811 (array!22323) Bool)

(assert (=> start!37448 (array_inv!7811 _keys!658)))

(declare-fun b!380990 () Bool)

(declare-fun e!231666 () Bool)

(assert (=> b!380990 (= e!231666 true)))

(declare-datatypes ((tuple2!6200 0))(
  ( (tuple2!6201 (_1!3110 (_ BitVec 64)) (_2!3110 V!13391)) )
))
(declare-datatypes ((List!6072 0))(
  ( (Nil!6069) (Cons!6068 (h!6924 tuple2!6200) (t!11230 List!6072)) )
))
(declare-datatypes ((ListLongMap!5127 0))(
  ( (ListLongMap!5128 (toList!2579 List!6072)) )
))
(declare-fun lt!178584 () ListLongMap!5127)

(declare-fun lt!178580 () ListLongMap!5127)

(assert (=> b!380990 (= lt!178584 lt!178580)))

(declare-fun b!380991 () Bool)

(declare-fun res!216495 () Bool)

(assert (=> b!380991 (=> (not res!216495) (not e!231669))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380991 (= res!216495 (and (= (size!10980 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10979 _keys!658) (size!10980 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15387 () Bool)

(declare-fun mapRes!15387 () Bool)

(declare-fun tp!30416 () Bool)

(declare-fun e!231668 () Bool)

(assert (=> mapNonEmpty!15387 (= mapRes!15387 (and tp!30416 e!231668))))

(declare-fun mapRest!15387 () (Array (_ BitVec 32) ValueCell!4264))

(declare-fun mapKey!15387 () (_ BitVec 32))

(declare-fun mapValue!15387 () ValueCell!4264)

(assert (=> mapNonEmpty!15387 (= (arr!10628 _values!506) (store mapRest!15387 mapKey!15387 mapValue!15387))))

(declare-fun b!380992 () Bool)

(declare-fun e!231671 () Bool)

(assert (=> b!380992 (= e!231669 e!231671)))

(declare-fun res!216502 () Bool)

(assert (=> b!380992 (=> (not res!216502) (not e!231671))))

(declare-fun lt!178585 () array!22323)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22323 (_ BitVec 32)) Bool)

(assert (=> b!380992 (= res!216502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178585 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380992 (= lt!178585 (array!22324 (store (arr!10627 _keys!658) i!548 k!778) (size!10979 _keys!658)))))

(declare-fun b!380993 () Bool)

(declare-fun res!216501 () Bool)

(assert (=> b!380993 (=> (not res!216501) (not e!231669))))

(assert (=> b!380993 (= res!216501 (or (= (select (arr!10627 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10627 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380994 () Bool)

(declare-fun res!216503 () Bool)

(assert (=> b!380994 (=> (not res!216503) (not e!231671))))

(declare-datatypes ((List!6073 0))(
  ( (Nil!6070) (Cons!6069 (h!6925 (_ BitVec 64)) (t!11231 List!6073)) )
))
(declare-fun arrayNoDuplicates!0 (array!22323 (_ BitVec 32) List!6073) Bool)

(assert (=> b!380994 (= res!216503 (arrayNoDuplicates!0 lt!178585 #b00000000000000000000000000000000 Nil!6070))))

(declare-fun b!380995 () Bool)

(declare-fun res!216496 () Bool)

(assert (=> b!380995 (=> (not res!216496) (not e!231669))))

(assert (=> b!380995 (= res!216496 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6070))))

(declare-fun b!380996 () Bool)

(declare-fun res!216494 () Bool)

(assert (=> b!380996 (=> (not res!216494) (not e!231669))))

(assert (=> b!380996 (= res!216494 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10979 _keys!658))))))

(declare-fun b!380997 () Bool)

(declare-fun e!231670 () Bool)

(assert (=> b!380997 (= e!231672 (and e!231670 mapRes!15387))))

(declare-fun condMapEmpty!15387 () Bool)

(declare-fun mapDefault!15387 () ValueCell!4264)

