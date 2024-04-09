; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36994 () Bool)

(assert start!36994)

(declare-fun b_free!8113 () Bool)

(declare-fun b_next!8113 () Bool)

(assert (=> start!36994 (= b_free!8113 (not b_next!8113))))

(declare-fun tp!29054 () Bool)

(declare-fun b_and!15373 () Bool)

(assert (=> start!36994 (= tp!29054 b_and!15373)))

(declare-fun mapIsEmpty!14706 () Bool)

(declare-fun mapRes!14706 () Bool)

(assert (=> mapIsEmpty!14706 mapRes!14706))

(declare-fun b!371048 () Bool)

(declare-fun res!208595 () Bool)

(declare-fun e!226524 () Bool)

(assert (=> b!371048 (=> (not res!208595) (not e!226524))))

(declare-datatypes ((array!21435 0))(
  ( (array!21436 (arr!10183 (Array (_ BitVec 32) (_ BitVec 64))) (size!10535 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21435)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371048 (= res!208595 (or (= (select (arr!10183 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10183 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371049 () Bool)

(declare-fun res!208598 () Bool)

(assert (=> b!371049 (=> (not res!208598) (not e!226524))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371049 (= res!208598 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371050 () Bool)

(declare-fun e!226522 () Bool)

(declare-fun tp_is_empty!8761 () Bool)

(assert (=> b!371050 (= e!226522 tp_is_empty!8761)))

(declare-fun res!208601 () Bool)

(assert (=> start!36994 (=> (not res!208601) (not e!226524))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36994 (= res!208601 (validMask!0 mask!970))))

(assert (=> start!36994 e!226524))

(declare-datatypes ((V!12787 0))(
  ( (V!12788 (val!4425 Int)) )
))
(declare-datatypes ((ValueCell!4037 0))(
  ( (ValueCellFull!4037 (v!6618 V!12787)) (EmptyCell!4037) )
))
(declare-datatypes ((array!21437 0))(
  ( (array!21438 (arr!10184 (Array (_ BitVec 32) ValueCell!4037)) (size!10536 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21437)

(declare-fun e!226519 () Bool)

(declare-fun array_inv!7518 (array!21437) Bool)

(assert (=> start!36994 (and (array_inv!7518 _values!506) e!226519)))

(assert (=> start!36994 tp!29054))

(assert (=> start!36994 true))

(assert (=> start!36994 tp_is_empty!8761))

(declare-fun array_inv!7519 (array!21435) Bool)

(assert (=> start!36994 (array_inv!7519 _keys!658)))

(declare-fun b!371051 () Bool)

(declare-fun res!208602 () Bool)

(assert (=> b!371051 (=> (not res!208602) (not e!226524))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!371051 (= res!208602 (and (= (size!10536 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10535 _keys!658) (size!10536 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14706 () Bool)

(declare-fun tp!29055 () Bool)

(assert (=> mapNonEmpty!14706 (= mapRes!14706 (and tp!29055 e!226522))))

(declare-fun mapRest!14706 () (Array (_ BitVec 32) ValueCell!4037))

(declare-fun mapValue!14706 () ValueCell!4037)

(declare-fun mapKey!14706 () (_ BitVec 32))

(assert (=> mapNonEmpty!14706 (= (arr!10184 _values!506) (store mapRest!14706 mapKey!14706 mapValue!14706))))

(declare-fun b!371052 () Bool)

(declare-fun res!208599 () Bool)

(assert (=> b!371052 (=> (not res!208599) (not e!226524))))

(assert (=> b!371052 (= res!208599 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10535 _keys!658))))))

(declare-fun b!371053 () Bool)

(declare-fun e!226520 () Bool)

(assert (=> b!371053 (= e!226519 (and e!226520 mapRes!14706))))

(declare-fun condMapEmpty!14706 () Bool)

(declare-fun mapDefault!14706 () ValueCell!4037)

