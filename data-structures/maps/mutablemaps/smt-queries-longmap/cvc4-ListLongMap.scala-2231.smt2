; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36860 () Bool)

(assert start!36860)

(declare-fun b_free!7979 () Bool)

(declare-fun b_next!7979 () Bool)

(assert (=> start!36860 (= b_free!7979 (not b_next!7979))))

(declare-fun tp!28653 () Bool)

(declare-fun b_and!15239 () Bool)

(assert (=> start!36860 (= tp!28653 b_and!15239)))

(declare-fun res!206586 () Bool)

(declare-fun e!225315 () Bool)

(assert (=> start!36860 (=> (not res!206586) (not e!225315))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36860 (= res!206586 (validMask!0 mask!970))))

(assert (=> start!36860 e!225315))

(assert (=> start!36860 true))

(declare-datatypes ((V!12607 0))(
  ( (V!12608 (val!4358 Int)) )
))
(declare-datatypes ((ValueCell!3970 0))(
  ( (ValueCellFull!3970 (v!6551 V!12607)) (EmptyCell!3970) )
))
(declare-datatypes ((array!21179 0))(
  ( (array!21180 (arr!10055 (Array (_ BitVec 32) ValueCell!3970)) (size!10407 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21179)

(declare-fun e!225317 () Bool)

(declare-fun array_inv!7426 (array!21179) Bool)

(assert (=> start!36860 (and (array_inv!7426 _values!506) e!225317)))

(assert (=> start!36860 tp!28653))

(declare-fun tp_is_empty!8627 () Bool)

(assert (=> start!36860 tp_is_empty!8627))

(declare-datatypes ((array!21181 0))(
  ( (array!21182 (arr!10056 (Array (_ BitVec 32) (_ BitVec 64))) (size!10408 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21181)

(declare-fun array_inv!7427 (array!21181) Bool)

(assert (=> start!36860 (array_inv!7427 _keys!658)))

(declare-fun b!368435 () Bool)

(declare-fun e!225316 () Bool)

(assert (=> b!368435 (= e!225315 e!225316)))

(declare-fun res!206585 () Bool)

(assert (=> b!368435 (=> (not res!206585) (not e!225316))))

(declare-fun lt!169522 () array!21181)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21181 (_ BitVec 32)) Bool)

(assert (=> b!368435 (= res!206585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169522 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368435 (= lt!169522 (array!21182 (store (arr!10056 _keys!658) i!548 k!778) (size!10408 _keys!658)))))

(declare-fun b!368436 () Bool)

(declare-fun res!206591 () Bool)

(assert (=> b!368436 (=> (not res!206591) (not e!225315))))

(assert (=> b!368436 (= res!206591 (or (= (select (arr!10056 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10056 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368437 () Bool)

(declare-fun res!206594 () Bool)

(assert (=> b!368437 (=> (not res!206594) (not e!225315))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!368437 (= res!206594 (and (= (size!10407 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10408 _keys!658) (size!10407 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368438 () Bool)

(declare-fun res!206590 () Bool)

(assert (=> b!368438 (=> (not res!206590) (not e!225316))))

(declare-datatypes ((List!5628 0))(
  ( (Nil!5625) (Cons!5624 (h!6480 (_ BitVec 64)) (t!10786 List!5628)) )
))
(declare-fun arrayNoDuplicates!0 (array!21181 (_ BitVec 32) List!5628) Bool)

(assert (=> b!368438 (= res!206590 (arrayNoDuplicates!0 lt!169522 #b00000000000000000000000000000000 Nil!5625))))

(declare-fun b!368439 () Bool)

(declare-fun res!206589 () Bool)

(assert (=> b!368439 (=> (not res!206589) (not e!225315))))

(assert (=> b!368439 (= res!206589 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10408 _keys!658))))))

(declare-fun mapIsEmpty!14505 () Bool)

(declare-fun mapRes!14505 () Bool)

(assert (=> mapIsEmpty!14505 mapRes!14505))

(declare-fun b!368440 () Bool)

(declare-fun e!225318 () Bool)

(assert (=> b!368440 (= e!225318 tp_is_empty!8627)))

(declare-fun b!368441 () Bool)

(assert (=> b!368441 (= e!225316 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5768 0))(
  ( (tuple2!5769 (_1!2894 (_ BitVec 64)) (_2!2894 V!12607)) )
))
(declare-datatypes ((List!5629 0))(
  ( (Nil!5626) (Cons!5625 (h!6481 tuple2!5768) (t!10787 List!5629)) )
))
(declare-datatypes ((ListLongMap!4695 0))(
  ( (ListLongMap!4696 (toList!2363 List!5629)) )
))
(declare-fun lt!169521 () ListLongMap!4695)

(declare-fun zeroValue!472 () V!12607)

(declare-fun minValue!472 () V!12607)

(declare-fun getCurrentListMapNoExtraKeys!631 (array!21181 array!21179 (_ BitVec 32) (_ BitVec 32) V!12607 V!12607 (_ BitVec 32) Int) ListLongMap!4695)

(assert (=> b!368441 (= lt!169521 (getCurrentListMapNoExtraKeys!631 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368442 () Bool)

(declare-fun e!225313 () Bool)

(assert (=> b!368442 (= e!225317 (and e!225313 mapRes!14505))))

(declare-fun condMapEmpty!14505 () Bool)

(declare-fun mapDefault!14505 () ValueCell!3970)

