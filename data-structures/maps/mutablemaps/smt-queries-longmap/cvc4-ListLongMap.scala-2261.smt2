; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37040 () Bool)

(assert start!37040)

(declare-fun b_free!8159 () Bool)

(declare-fun b_next!8159 () Bool)

(assert (=> start!37040 (= b_free!8159 (not b_next!8159))))

(declare-fun tp!29192 () Bool)

(declare-fun b_and!15419 () Bool)

(assert (=> start!37040 (= tp!29192 b_and!15419)))

(declare-fun b!371945 () Bool)

(declare-fun res!209287 () Bool)

(declare-fun e!226934 () Bool)

(assert (=> b!371945 (=> (not res!209287) (not e!226934))))

(declare-datatypes ((array!21523 0))(
  ( (array!21524 (arr!10227 (Array (_ BitVec 32) (_ BitVec 64))) (size!10579 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21523)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21523 (_ BitVec 32)) Bool)

(assert (=> b!371945 (= res!209287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371946 () Bool)

(declare-fun e!226937 () Bool)

(declare-fun tp_is_empty!8807 () Bool)

(assert (=> b!371946 (= e!226937 tp_is_empty!8807)))

(declare-fun mapIsEmpty!14775 () Bool)

(declare-fun mapRes!14775 () Bool)

(assert (=> mapIsEmpty!14775 mapRes!14775))

(declare-fun b!371947 () Bool)

(declare-fun res!209288 () Bool)

(assert (=> b!371947 (=> (not res!209288) (not e!226934))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371947 (= res!209288 (or (= (select (arr!10227 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10227 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14775 () Bool)

(declare-fun tp!29193 () Bool)

(declare-fun e!226933 () Bool)

(assert (=> mapNonEmpty!14775 (= mapRes!14775 (and tp!29193 e!226933))))

(declare-datatypes ((V!12847 0))(
  ( (V!12848 (val!4448 Int)) )
))
(declare-datatypes ((ValueCell!4060 0))(
  ( (ValueCellFull!4060 (v!6641 V!12847)) (EmptyCell!4060) )
))
(declare-fun mapValue!14775 () ValueCell!4060)

(declare-datatypes ((array!21525 0))(
  ( (array!21526 (arr!10228 (Array (_ BitVec 32) ValueCell!4060)) (size!10580 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21525)

(declare-fun mapKey!14775 () (_ BitVec 32))

(declare-fun mapRest!14775 () (Array (_ BitVec 32) ValueCell!4060))

(assert (=> mapNonEmpty!14775 (= (arr!10228 _values!506) (store mapRest!14775 mapKey!14775 mapValue!14775))))

(declare-fun b!371949 () Bool)

(assert (=> b!371949 (= e!226933 tp_is_empty!8807)))

(declare-fun b!371950 () Bool)

(declare-fun e!226935 () Bool)

(assert (=> b!371950 (= e!226935 (and e!226937 mapRes!14775))))

(declare-fun condMapEmpty!14775 () Bool)

(declare-fun mapDefault!14775 () ValueCell!4060)

