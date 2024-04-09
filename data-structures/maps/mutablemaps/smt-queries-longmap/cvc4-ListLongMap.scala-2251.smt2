; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36980 () Bool)

(assert start!36980)

(declare-fun b_free!8099 () Bool)

(declare-fun b_next!8099 () Bool)

(assert (=> start!36980 (= b_free!8099 (not b_next!8099))))

(declare-fun tp!29012 () Bool)

(declare-fun b_and!15359 () Bool)

(assert (=> start!36980 (= tp!29012 b_and!15359)))

(declare-fun b!370775 () Bool)

(declare-fun res!208393 () Bool)

(declare-fun e!226393 () Bool)

(assert (=> b!370775 (=> (not res!208393) (not e!226393))))

(declare-datatypes ((array!21409 0))(
  ( (array!21410 (arr!10170 (Array (_ BitVec 32) (_ BitVec 64))) (size!10522 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21409)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370775 (= res!208393 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14685 () Bool)

(declare-fun mapRes!14685 () Bool)

(assert (=> mapIsEmpty!14685 mapRes!14685))

(declare-fun b!370776 () Bool)

(declare-fun res!208388 () Bool)

(assert (=> b!370776 (=> (not res!208388) (not e!226393))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21409 (_ BitVec 32)) Bool)

(assert (=> b!370776 (= res!208388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370777 () Bool)

(declare-fun res!208391 () Bool)

(assert (=> b!370777 (=> (not res!208391) (not e!226393))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370777 (= res!208391 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10522 _keys!658))))))

(declare-fun mapNonEmpty!14685 () Bool)

(declare-fun tp!29013 () Bool)

(declare-fun e!226398 () Bool)

(assert (=> mapNonEmpty!14685 (= mapRes!14685 (and tp!29013 e!226398))))

(declare-fun mapKey!14685 () (_ BitVec 32))

(declare-datatypes ((V!12767 0))(
  ( (V!12768 (val!4418 Int)) )
))
(declare-datatypes ((ValueCell!4030 0))(
  ( (ValueCellFull!4030 (v!6611 V!12767)) (EmptyCell!4030) )
))
(declare-datatypes ((array!21411 0))(
  ( (array!21412 (arr!10171 (Array (_ BitVec 32) ValueCell!4030)) (size!10523 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21411)

(declare-fun mapRest!14685 () (Array (_ BitVec 32) ValueCell!4030))

(declare-fun mapValue!14685 () ValueCell!4030)

(assert (=> mapNonEmpty!14685 (= (arr!10171 _values!506) (store mapRest!14685 mapKey!14685 mapValue!14685))))

(declare-fun b!370778 () Bool)

(declare-fun res!208386 () Bool)

(assert (=> b!370778 (=> (not res!208386) (not e!226393))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370778 (= res!208386 (and (= (size!10523 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10522 _keys!658) (size!10523 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!208394 () Bool)

(assert (=> start!36980 (=> (not res!208394) (not e!226393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36980 (= res!208394 (validMask!0 mask!970))))

(assert (=> start!36980 e!226393))

(declare-fun e!226397 () Bool)

(declare-fun array_inv!7510 (array!21411) Bool)

(assert (=> start!36980 (and (array_inv!7510 _values!506) e!226397)))

(assert (=> start!36980 tp!29012))

(assert (=> start!36980 true))

(declare-fun tp_is_empty!8747 () Bool)

(assert (=> start!36980 tp_is_empty!8747))

(declare-fun array_inv!7511 (array!21409) Bool)

(assert (=> start!36980 (array_inv!7511 _keys!658)))

(declare-fun b!370779 () Bool)

(declare-fun e!226396 () Bool)

(assert (=> b!370779 (= e!226397 (and e!226396 mapRes!14685))))

(declare-fun condMapEmpty!14685 () Bool)

(declare-fun mapDefault!14685 () ValueCell!4030)

