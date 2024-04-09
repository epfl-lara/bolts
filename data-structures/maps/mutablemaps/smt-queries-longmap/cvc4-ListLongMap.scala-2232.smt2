; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36866 () Bool)

(assert start!36866)

(declare-fun b_free!7985 () Bool)

(declare-fun b_next!7985 () Bool)

(assert (=> start!36866 (= b_free!7985 (not b_next!7985))))

(declare-fun tp!28670 () Bool)

(declare-fun b_and!15245 () Bool)

(assert (=> start!36866 (= tp!28670 b_and!15245)))

(declare-fun res!206677 () Bool)

(declare-fun e!225368 () Bool)

(assert (=> start!36866 (=> (not res!206677) (not e!225368))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36866 (= res!206677 (validMask!0 mask!970))))

(assert (=> start!36866 e!225368))

(assert (=> start!36866 true))

(declare-datatypes ((V!12615 0))(
  ( (V!12616 (val!4361 Int)) )
))
(declare-datatypes ((ValueCell!3973 0))(
  ( (ValueCellFull!3973 (v!6554 V!12615)) (EmptyCell!3973) )
))
(declare-datatypes ((array!21191 0))(
  ( (array!21192 (arr!10061 (Array (_ BitVec 32) ValueCell!3973)) (size!10413 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21191)

(declare-fun e!225367 () Bool)

(declare-fun array_inv!7432 (array!21191) Bool)

(assert (=> start!36866 (and (array_inv!7432 _values!506) e!225367)))

(assert (=> start!36866 tp!28670))

(declare-fun tp_is_empty!8633 () Bool)

(assert (=> start!36866 tp_is_empty!8633))

(declare-datatypes ((array!21193 0))(
  ( (array!21194 (arr!10062 (Array (_ BitVec 32) (_ BitVec 64))) (size!10414 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21193)

(declare-fun array_inv!7433 (array!21193) Bool)

(assert (=> start!36866 (array_inv!7433 _keys!658)))

(declare-fun b!368552 () Bool)

(declare-fun res!206676 () Bool)

(assert (=> b!368552 (=> (not res!206676) (not e!225368))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368552 (= res!206676 (validKeyInArray!0 k!778))))

(declare-fun b!368553 () Bool)

(declare-fun res!206683 () Bool)

(assert (=> b!368553 (=> (not res!206683) (not e!225368))))

(declare-fun arrayContainsKey!0 (array!21193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368553 (= res!206683 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368554 () Bool)

(declare-fun res!206681 () Bool)

(assert (=> b!368554 (=> (not res!206681) (not e!225368))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368554 (= res!206681 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10414 _keys!658))))))

(declare-fun mapNonEmpty!14514 () Bool)

(declare-fun mapRes!14514 () Bool)

(declare-fun tp!28671 () Bool)

(declare-fun e!225369 () Bool)

(assert (=> mapNonEmpty!14514 (= mapRes!14514 (and tp!28671 e!225369))))

(declare-fun mapValue!14514 () ValueCell!3973)

(declare-fun mapKey!14514 () (_ BitVec 32))

(declare-fun mapRest!14514 () (Array (_ BitVec 32) ValueCell!3973))

(assert (=> mapNonEmpty!14514 (= (arr!10061 _values!506) (store mapRest!14514 mapKey!14514 mapValue!14514))))

(declare-fun b!368555 () Bool)

(declare-fun res!206682 () Bool)

(assert (=> b!368555 (=> (not res!206682) (not e!225368))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!368555 (= res!206682 (and (= (size!10413 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10414 _keys!658) (size!10413 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368556 () Bool)

(declare-fun e!225370 () Bool)

(assert (=> b!368556 (= e!225368 e!225370)))

(declare-fun res!206684 () Bool)

(assert (=> b!368556 (=> (not res!206684) (not e!225370))))

(declare-fun lt!169540 () array!21193)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21193 (_ BitVec 32)) Bool)

(assert (=> b!368556 (= res!206684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169540 mask!970))))

(assert (=> b!368556 (= lt!169540 (array!21194 (store (arr!10062 _keys!658) i!548 k!778) (size!10414 _keys!658)))))

(declare-fun mapIsEmpty!14514 () Bool)

(assert (=> mapIsEmpty!14514 mapRes!14514))

(declare-fun b!368557 () Bool)

(assert (=> b!368557 (= e!225370 (bvsgt #b00000000000000000000000000000000 (size!10414 _keys!658)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5774 0))(
  ( (tuple2!5775 (_1!2897 (_ BitVec 64)) (_2!2897 V!12615)) )
))
(declare-datatypes ((List!5634 0))(
  ( (Nil!5631) (Cons!5630 (h!6486 tuple2!5774) (t!10792 List!5634)) )
))
(declare-datatypes ((ListLongMap!4701 0))(
  ( (ListLongMap!4702 (toList!2366 List!5634)) )
))
(declare-fun lt!169539 () ListLongMap!4701)

(declare-fun zeroValue!472 () V!12615)

(declare-fun minValue!472 () V!12615)

(declare-fun getCurrentListMapNoExtraKeys!634 (array!21193 array!21191 (_ BitVec 32) (_ BitVec 32) V!12615 V!12615 (_ BitVec 32) Int) ListLongMap!4701)

(assert (=> b!368557 (= lt!169539 (getCurrentListMapNoExtraKeys!634 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368558 () Bool)

(declare-fun res!206680 () Bool)

(assert (=> b!368558 (=> (not res!206680) (not e!225370))))

(declare-datatypes ((List!5635 0))(
  ( (Nil!5632) (Cons!5631 (h!6487 (_ BitVec 64)) (t!10793 List!5635)) )
))
(declare-fun arrayNoDuplicates!0 (array!21193 (_ BitVec 32) List!5635) Bool)

(assert (=> b!368558 (= res!206680 (arrayNoDuplicates!0 lt!169540 #b00000000000000000000000000000000 Nil!5632))))

(declare-fun b!368559 () Bool)

(declare-fun e!225371 () Bool)

(assert (=> b!368559 (= e!225367 (and e!225371 mapRes!14514))))

(declare-fun condMapEmpty!14514 () Bool)

(declare-fun mapDefault!14514 () ValueCell!3973)

