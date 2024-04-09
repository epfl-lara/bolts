; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37036 () Bool)

(assert start!37036)

(declare-fun b_free!8155 () Bool)

(declare-fun b_next!8155 () Bool)

(assert (=> start!37036 (= b_free!8155 (not b_next!8155))))

(declare-fun tp!29180 () Bool)

(declare-fun b_and!15415 () Bool)

(assert (=> start!37036 (= tp!29180 b_and!15415)))

(declare-fun b!371867 () Bool)

(declare-fun res!209229 () Bool)

(declare-fun e!226898 () Bool)

(assert (=> b!371867 (=> (not res!209229) (not e!226898))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12843 0))(
  ( (V!12844 (val!4446 Int)) )
))
(declare-datatypes ((ValueCell!4058 0))(
  ( (ValueCellFull!4058 (v!6639 V!12843)) (EmptyCell!4058) )
))
(declare-datatypes ((array!21515 0))(
  ( (array!21516 (arr!10223 (Array (_ BitVec 32) ValueCell!4058)) (size!10575 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21515)

(declare-datatypes ((array!21517 0))(
  ( (array!21518 (arr!10224 (Array (_ BitVec 32) (_ BitVec 64))) (size!10576 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21517)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!371867 (= res!209229 (and (= (size!10575 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10576 _keys!658) (size!10575 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371868 () Bool)

(declare-fun res!209232 () Bool)

(declare-fun e!226897 () Bool)

(assert (=> b!371868 (=> (not res!209232) (not e!226897))))

(declare-fun lt!170514 () array!21517)

(declare-datatypes ((List!5747 0))(
  ( (Nil!5744) (Cons!5743 (h!6599 (_ BitVec 64)) (t!10905 List!5747)) )
))
(declare-fun arrayNoDuplicates!0 (array!21517 (_ BitVec 32) List!5747) Bool)

(assert (=> b!371868 (= res!209232 (arrayNoDuplicates!0 lt!170514 #b00000000000000000000000000000000 Nil!5744))))

(declare-fun b!371869 () Bool)

(declare-fun res!209234 () Bool)

(assert (=> b!371869 (=> (not res!209234) (not e!226898))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371869 (= res!209234 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10576 _keys!658))))))

(declare-fun mapIsEmpty!14769 () Bool)

(declare-fun mapRes!14769 () Bool)

(assert (=> mapIsEmpty!14769 mapRes!14769))

(declare-fun b!371870 () Bool)

(declare-fun e!226901 () Bool)

(declare-fun tp_is_empty!8803 () Bool)

(assert (=> b!371870 (= e!226901 tp_is_empty!8803)))

(declare-fun res!209226 () Bool)

(assert (=> start!37036 (=> (not res!209226) (not e!226898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37036 (= res!209226 (validMask!0 mask!970))))

(assert (=> start!37036 e!226898))

(declare-fun e!226899 () Bool)

(declare-fun array_inv!7548 (array!21515) Bool)

(assert (=> start!37036 (and (array_inv!7548 _values!506) e!226899)))

(assert (=> start!37036 tp!29180))

(assert (=> start!37036 true))

(assert (=> start!37036 tp_is_empty!8803))

(declare-fun array_inv!7549 (array!21517) Bool)

(assert (=> start!37036 (array_inv!7549 _keys!658)))

(declare-fun mapNonEmpty!14769 () Bool)

(declare-fun tp!29181 () Bool)

(declare-fun e!226900 () Bool)

(assert (=> mapNonEmpty!14769 (= mapRes!14769 (and tp!29181 e!226900))))

(declare-fun mapRest!14769 () (Array (_ BitVec 32) ValueCell!4058))

(declare-fun mapValue!14769 () ValueCell!4058)

(declare-fun mapKey!14769 () (_ BitVec 32))

(assert (=> mapNonEmpty!14769 (= (arr!10223 _values!506) (store mapRest!14769 mapKey!14769 mapValue!14769))))

(declare-fun b!371871 () Bool)

(declare-fun res!209225 () Bool)

(assert (=> b!371871 (=> (not res!209225) (not e!226898))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371871 (= res!209225 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371872 () Bool)

(declare-fun res!209231 () Bool)

(assert (=> b!371872 (=> (not res!209231) (not e!226898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371872 (= res!209231 (validKeyInArray!0 k!778))))

(declare-fun b!371873 () Bool)

(assert (=> b!371873 (= e!226899 (and e!226901 mapRes!14769))))

(declare-fun condMapEmpty!14769 () Bool)

(declare-fun mapDefault!14769 () ValueCell!4058)

