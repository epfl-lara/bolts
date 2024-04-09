; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36872 () Bool)

(assert start!36872)

(declare-fun b_free!7991 () Bool)

(declare-fun b_next!7991 () Bool)

(assert (=> start!36872 (= b_free!7991 (not b_next!7991))))

(declare-fun tp!28688 () Bool)

(declare-fun b_and!15251 () Bool)

(assert (=> start!36872 (= tp!28688 b_and!15251)))

(declare-fun b!368669 () Bool)

(declare-fun res!206770 () Bool)

(declare-fun e!225424 () Bool)

(assert (=> b!368669 (=> (not res!206770) (not e!225424))))

(declare-datatypes ((array!21201 0))(
  ( (array!21202 (arr!10066 (Array (_ BitVec 32) (_ BitVec 64))) (size!10418 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21201)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368669 (= res!206770 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368670 () Bool)

(declare-fun e!225423 () Bool)

(assert (=> b!368670 (= e!225424 e!225423)))

(declare-fun res!206773 () Bool)

(assert (=> b!368670 (=> (not res!206773) (not e!225423))))

(declare-fun lt!169566 () array!21201)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21201 (_ BitVec 32)) Bool)

(assert (=> b!368670 (= res!206773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169566 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368670 (= lt!169566 (array!21202 (store (arr!10066 _keys!658) i!548 k!778) (size!10418 _keys!658)))))

(declare-fun res!206771 () Bool)

(assert (=> start!36872 (=> (not res!206771) (not e!225424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36872 (= res!206771 (validMask!0 mask!970))))

(assert (=> start!36872 e!225424))

(declare-datatypes ((V!12623 0))(
  ( (V!12624 (val!4364 Int)) )
))
(declare-datatypes ((ValueCell!3976 0))(
  ( (ValueCellFull!3976 (v!6557 V!12623)) (EmptyCell!3976) )
))
(declare-datatypes ((array!21203 0))(
  ( (array!21204 (arr!10067 (Array (_ BitVec 32) ValueCell!3976)) (size!10419 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21203)

(declare-fun e!225426 () Bool)

(declare-fun array_inv!7436 (array!21203) Bool)

(assert (=> start!36872 (and (array_inv!7436 _values!506) e!225426)))

(assert (=> start!36872 tp!28688))

(assert (=> start!36872 true))

(declare-fun tp_is_empty!8639 () Bool)

(assert (=> start!36872 tp_is_empty!8639))

(declare-fun array_inv!7437 (array!21201) Bool)

(assert (=> start!36872 (array_inv!7437 _keys!658)))

(declare-fun b!368671 () Bool)

(declare-fun res!206766 () Bool)

(assert (=> b!368671 (=> (not res!206766) (not e!225424))))

(assert (=> b!368671 (= res!206766 (or (= (select (arr!10066 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10066 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368672 () Bool)

(declare-fun res!206774 () Bool)

(assert (=> b!368672 (=> (not res!206774) (not e!225424))))

(assert (=> b!368672 (= res!206774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368673 () Bool)

(declare-fun e!225421 () Bool)

(assert (=> b!368673 (= e!225421 tp_is_empty!8639)))

(declare-fun b!368674 () Bool)

(declare-fun res!206772 () Bool)

(assert (=> b!368674 (=> (not res!206772) (not e!225424))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!368674 (= res!206772 (and (= (size!10419 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10418 _keys!658) (size!10419 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368675 () Bool)

(declare-fun res!206768 () Bool)

(assert (=> b!368675 (=> (not res!206768) (not e!225424))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368675 (= res!206768 (validKeyInArray!0 k!778))))

(declare-fun b!368676 () Bool)

(declare-fun res!206769 () Bool)

(assert (=> b!368676 (=> (not res!206769) (not e!225424))))

(assert (=> b!368676 (= res!206769 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10418 _keys!658))))))

(declare-fun b!368677 () Bool)

(declare-fun res!206765 () Bool)

(assert (=> b!368677 (=> (not res!206765) (not e!225424))))

(declare-datatypes ((List!5638 0))(
  ( (Nil!5635) (Cons!5634 (h!6490 (_ BitVec 64)) (t!10796 List!5638)) )
))
(declare-fun arrayNoDuplicates!0 (array!21201 (_ BitVec 32) List!5638) Bool)

(assert (=> b!368677 (= res!206765 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5635))))

(declare-fun mapIsEmpty!14523 () Bool)

(declare-fun mapRes!14523 () Bool)

(assert (=> mapIsEmpty!14523 mapRes!14523))

(declare-fun b!368678 () Bool)

(declare-fun e!225425 () Bool)

(assert (=> b!368678 (= e!225425 tp_is_empty!8639)))

(declare-fun mapNonEmpty!14523 () Bool)

(declare-fun tp!28689 () Bool)

(assert (=> mapNonEmpty!14523 (= mapRes!14523 (and tp!28689 e!225421))))

(declare-fun mapValue!14523 () ValueCell!3976)

(declare-fun mapRest!14523 () (Array (_ BitVec 32) ValueCell!3976))

(declare-fun mapKey!14523 () (_ BitVec 32))

(assert (=> mapNonEmpty!14523 (= (arr!10067 _values!506) (store mapRest!14523 mapKey!14523 mapValue!14523))))

(declare-fun b!368679 () Bool)

(assert (=> b!368679 (= e!225426 (and e!225425 mapRes!14523))))

(declare-fun condMapEmpty!14523 () Bool)

(declare-fun mapDefault!14523 () ValueCell!3976)

