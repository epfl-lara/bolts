; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36950 () Bool)

(assert start!36950)

(declare-fun b_free!8069 () Bool)

(declare-fun b_next!8069 () Bool)

(assert (=> start!36950 (= b_free!8069 (not b_next!8069))))

(declare-fun tp!28923 () Bool)

(declare-fun b_and!15329 () Bool)

(assert (=> start!36950 (= tp!28923 b_and!15329)))

(declare-fun res!207935 () Bool)

(declare-fun e!226126 () Bool)

(assert (=> start!36950 (=> (not res!207935) (not e!226126))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36950 (= res!207935 (validMask!0 mask!970))))

(assert (=> start!36950 e!226126))

(declare-datatypes ((V!12727 0))(
  ( (V!12728 (val!4403 Int)) )
))
(declare-datatypes ((ValueCell!4015 0))(
  ( (ValueCellFull!4015 (v!6596 V!12727)) (EmptyCell!4015) )
))
(declare-datatypes ((array!21355 0))(
  ( (array!21356 (arr!10143 (Array (_ BitVec 32) ValueCell!4015)) (size!10495 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21355)

(declare-fun e!226125 () Bool)

(declare-fun array_inv!7490 (array!21355) Bool)

(assert (=> start!36950 (and (array_inv!7490 _values!506) e!226125)))

(assert (=> start!36950 tp!28923))

(assert (=> start!36950 true))

(declare-fun tp_is_empty!8717 () Bool)

(assert (=> start!36950 tp_is_empty!8717))

(declare-datatypes ((array!21357 0))(
  ( (array!21358 (arr!10144 (Array (_ BitVec 32) (_ BitVec 64))) (size!10496 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21357)

(declare-fun array_inv!7491 (array!21357) Bool)

(assert (=> start!36950 (array_inv!7491 _keys!658)))

(declare-fun b!370190 () Bool)

(declare-fun res!207937 () Bool)

(assert (=> b!370190 (=> (not res!207937) (not e!226126))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370190 (= res!207937 (or (= (select (arr!10144 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10144 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14640 () Bool)

(declare-fun mapRes!14640 () Bool)

(assert (=> mapIsEmpty!14640 mapRes!14640))

(declare-fun b!370191 () Bool)

(declare-fun e!226123 () Bool)

(assert (=> b!370191 (= e!226125 (and e!226123 mapRes!14640))))

(declare-fun condMapEmpty!14640 () Bool)

(declare-fun mapDefault!14640 () ValueCell!4015)

