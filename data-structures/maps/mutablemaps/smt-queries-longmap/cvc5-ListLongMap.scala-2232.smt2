; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36862 () Bool)

(assert start!36862)

(declare-fun b_free!7981 () Bool)

(declare-fun b_next!7981 () Bool)

(assert (=> start!36862 (= b_free!7981 (not b_next!7981))))

(declare-fun tp!28658 () Bool)

(declare-fun b_and!15241 () Bool)

(assert (=> start!36862 (= tp!28658 b_and!15241)))

(declare-fun mapNonEmpty!14508 () Bool)

(declare-fun mapRes!14508 () Bool)

(declare-fun tp!28659 () Bool)

(declare-fun e!225336 () Bool)

(assert (=> mapNonEmpty!14508 (= mapRes!14508 (and tp!28659 e!225336))))

(declare-datatypes ((V!12611 0))(
  ( (V!12612 (val!4359 Int)) )
))
(declare-datatypes ((ValueCell!3971 0))(
  ( (ValueCellFull!3971 (v!6552 V!12611)) (EmptyCell!3971) )
))
(declare-datatypes ((array!21183 0))(
  ( (array!21184 (arr!10057 (Array (_ BitVec 32) ValueCell!3971)) (size!10409 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21183)

(declare-fun mapRest!14508 () (Array (_ BitVec 32) ValueCell!3971))

(declare-fun mapValue!14508 () ValueCell!3971)

(declare-fun mapKey!14508 () (_ BitVec 32))

(assert (=> mapNonEmpty!14508 (= (arr!10057 _values!506) (store mapRest!14508 mapKey!14508 mapValue!14508))))

(declare-fun b!368474 () Bool)

(declare-fun e!225333 () Bool)

(declare-datatypes ((array!21185 0))(
  ( (array!21186 (arr!10058 (Array (_ BitVec 32) (_ BitVec 64))) (size!10410 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21185)

(assert (=> b!368474 (= e!225333 (bvsgt #b00000000000000000000000000000000 (size!10410 _keys!658)))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12611)

(declare-datatypes ((tuple2!5770 0))(
  ( (tuple2!5771 (_1!2895 (_ BitVec 64)) (_2!2895 V!12611)) )
))
(declare-datatypes ((List!5630 0))(
  ( (Nil!5627) (Cons!5626 (h!6482 tuple2!5770) (t!10788 List!5630)) )
))
(declare-datatypes ((ListLongMap!4697 0))(
  ( (ListLongMap!4698 (toList!2364 List!5630)) )
))
(declare-fun lt!169528 () ListLongMap!4697)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12611)

(declare-fun getCurrentListMapNoExtraKeys!632 (array!21185 array!21183 (_ BitVec 32) (_ BitVec 32) V!12611 V!12611 (_ BitVec 32) Int) ListLongMap!4697)

(assert (=> b!368474 (= lt!169528 (getCurrentListMapNoExtraKeys!632 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368475 () Bool)

(declare-fun res!206617 () Bool)

(declare-fun e!225332 () Bool)

(assert (=> b!368475 (=> (not res!206617) (not e!225332))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368475 (= res!206617 (or (= (select (arr!10058 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10058 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14508 () Bool)

(assert (=> mapIsEmpty!14508 mapRes!14508))

(declare-fun res!206622 () Bool)

(assert (=> start!36862 (=> (not res!206622) (not e!225332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36862 (= res!206622 (validMask!0 mask!970))))

(assert (=> start!36862 e!225332))

(assert (=> start!36862 true))

(declare-fun e!225334 () Bool)

(declare-fun array_inv!7428 (array!21183) Bool)

(assert (=> start!36862 (and (array_inv!7428 _values!506) e!225334)))

(assert (=> start!36862 tp!28658))

(declare-fun tp_is_empty!8629 () Bool)

(assert (=> start!36862 tp_is_empty!8629))

(declare-fun array_inv!7429 (array!21185) Bool)

(assert (=> start!36862 (array_inv!7429 _keys!658)))

(declare-fun b!368476 () Bool)

(declare-fun e!225335 () Bool)

(assert (=> b!368476 (= e!225335 tp_is_empty!8629)))

(declare-fun b!368477 () Bool)

(assert (=> b!368477 (= e!225332 e!225333)))

(declare-fun res!206623 () Bool)

(assert (=> b!368477 (=> (not res!206623) (not e!225333))))

(declare-fun lt!169527 () array!21185)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21185 (_ BitVec 32)) Bool)

(assert (=> b!368477 (= res!206623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169527 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!368477 (= lt!169527 (array!21186 (store (arr!10058 _keys!658) i!548 k!778) (size!10410 _keys!658)))))

(declare-fun b!368478 () Bool)

(declare-fun res!206620 () Bool)

(assert (=> b!368478 (=> (not res!206620) (not e!225332))))

(declare-datatypes ((List!5631 0))(
  ( (Nil!5628) (Cons!5627 (h!6483 (_ BitVec 64)) (t!10789 List!5631)) )
))
(declare-fun arrayNoDuplicates!0 (array!21185 (_ BitVec 32) List!5631) Bool)

(assert (=> b!368478 (= res!206620 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5628))))

(declare-fun b!368479 () Bool)

(declare-fun res!206621 () Bool)

(assert (=> b!368479 (=> (not res!206621) (not e!225332))))

(assert (=> b!368479 (= res!206621 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10410 _keys!658))))))

(declare-fun b!368480 () Bool)

(declare-fun res!206619 () Bool)

(assert (=> b!368480 (=> (not res!206619) (not e!225332))))

(assert (=> b!368480 (= res!206619 (and (= (size!10409 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10410 _keys!658) (size!10409 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368481 () Bool)

(declare-fun res!206624 () Bool)

(assert (=> b!368481 (=> (not res!206624) (not e!225332))))

(declare-fun arrayContainsKey!0 (array!21185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368481 (= res!206624 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368482 () Bool)

(declare-fun res!206616 () Bool)

(assert (=> b!368482 (=> (not res!206616) (not e!225333))))

(assert (=> b!368482 (= res!206616 (arrayNoDuplicates!0 lt!169527 #b00000000000000000000000000000000 Nil!5628))))

(declare-fun b!368483 () Bool)

(declare-fun res!206615 () Bool)

(assert (=> b!368483 (=> (not res!206615) (not e!225332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368483 (= res!206615 (validKeyInArray!0 k!778))))

(declare-fun b!368484 () Bool)

(declare-fun res!206618 () Bool)

(assert (=> b!368484 (=> (not res!206618) (not e!225332))))

(assert (=> b!368484 (= res!206618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368485 () Bool)

(assert (=> b!368485 (= e!225334 (and e!225335 mapRes!14508))))

(declare-fun condMapEmpty!14508 () Bool)

(declare-fun mapDefault!14508 () ValueCell!3971)

