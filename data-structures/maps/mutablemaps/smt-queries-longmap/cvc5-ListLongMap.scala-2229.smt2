; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36844 () Bool)

(assert start!36844)

(declare-fun b_free!7963 () Bool)

(declare-fun b_next!7963 () Bool)

(assert (=> start!36844 (= b_free!7963 (not b_next!7963))))

(declare-fun tp!28605 () Bool)

(declare-fun b_and!15223 () Bool)

(assert (=> start!36844 (= tp!28605 b_and!15223)))

(declare-fun b!368124 () Bool)

(declare-fun e!225173 () Bool)

(assert (=> b!368124 (= e!225173 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12587 0))(
  ( (V!12588 (val!4350 Int)) )
))
(declare-datatypes ((ValueCell!3962 0))(
  ( (ValueCellFull!3962 (v!6543 V!12587)) (EmptyCell!3962) )
))
(declare-datatypes ((array!21147 0))(
  ( (array!21148 (arr!10039 (Array (_ BitVec 32) ValueCell!3962)) (size!10391 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21147)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5756 0))(
  ( (tuple2!5757 (_1!2888 (_ BitVec 64)) (_2!2888 V!12587)) )
))
(declare-datatypes ((List!5617 0))(
  ( (Nil!5614) (Cons!5613 (h!6469 tuple2!5756) (t!10775 List!5617)) )
))
(declare-datatypes ((ListLongMap!4683 0))(
  ( (ListLongMap!4684 (toList!2357 List!5617)) )
))
(declare-fun lt!169473 () ListLongMap!4683)

(declare-fun zeroValue!472 () V!12587)

(declare-datatypes ((array!21149 0))(
  ( (array!21150 (arr!10040 (Array (_ BitVec 32) (_ BitVec 64))) (size!10392 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21149)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12587)

(declare-fun getCurrentListMapNoExtraKeys!625 (array!21149 array!21147 (_ BitVec 32) (_ BitVec 32) V!12587 V!12587 (_ BitVec 32) Int) ListLongMap!4683)

(assert (=> b!368124 (= lt!169473 (getCurrentListMapNoExtraKeys!625 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!14481 () Bool)

(declare-fun mapRes!14481 () Bool)

(assert (=> mapIsEmpty!14481 mapRes!14481))

(declare-fun b!368125 () Bool)

(declare-fun res!206347 () Bool)

(declare-fun e!225172 () Bool)

(assert (=> b!368125 (=> (not res!206347) (not e!225172))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368125 (= res!206347 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10392 _keys!658))))))

(declare-fun b!368126 () Bool)

(declare-fun e!225174 () Bool)

(declare-fun tp_is_empty!8611 () Bool)

(assert (=> b!368126 (= e!225174 tp_is_empty!8611)))

(declare-fun b!368127 () Bool)

(declare-fun res!206350 () Bool)

(assert (=> b!368127 (=> (not res!206350) (not e!225172))))

(assert (=> b!368127 (= res!206350 (or (= (select (arr!10040 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10040 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368128 () Bool)

(assert (=> b!368128 (= e!225172 e!225173)))

(declare-fun res!206352 () Bool)

(assert (=> b!368128 (=> (not res!206352) (not e!225173))))

(declare-fun lt!169474 () array!21149)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21149 (_ BitVec 32)) Bool)

(assert (=> b!368128 (= res!206352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169474 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!368128 (= lt!169474 (array!21150 (store (arr!10040 _keys!658) i!548 k!778) (size!10392 _keys!658)))))

(declare-fun mapNonEmpty!14481 () Bool)

(declare-fun tp!28604 () Bool)

(assert (=> mapNonEmpty!14481 (= mapRes!14481 (and tp!28604 e!225174))))

(declare-fun mapValue!14481 () ValueCell!3962)

(declare-fun mapRest!14481 () (Array (_ BitVec 32) ValueCell!3962))

(declare-fun mapKey!14481 () (_ BitVec 32))

(assert (=> mapNonEmpty!14481 (= (arr!10039 _values!506) (store mapRest!14481 mapKey!14481 mapValue!14481))))

(declare-fun b!368129 () Bool)

(declare-fun res!206354 () Bool)

(assert (=> b!368129 (=> (not res!206354) (not e!225172))))

(assert (=> b!368129 (= res!206354 (and (= (size!10391 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10392 _keys!658) (size!10391 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368123 () Bool)

(declare-fun e!225171 () Bool)

(declare-fun e!225170 () Bool)

(assert (=> b!368123 (= e!225171 (and e!225170 mapRes!14481))))

(declare-fun condMapEmpty!14481 () Bool)

(declare-fun mapDefault!14481 () ValueCell!3962)

