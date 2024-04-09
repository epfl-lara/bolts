; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34696 () Bool)

(assert start!34696)

(declare-fun b_free!7495 () Bool)

(declare-fun b_next!7495 () Bool)

(assert (=> start!34696 (= b_free!7495 (not b_next!7495))))

(declare-fun tp!26048 () Bool)

(declare-fun b_and!14733 () Bool)

(assert (=> start!34696 (= tp!26048 b_and!14733)))

(declare-fun b!346380 () Bool)

(declare-fun res!191666 () Bool)

(declare-fun e!212306 () Bool)

(assert (=> b!346380 (=> (not res!191666) (not e!212306))))

(declare-datatypes ((array!18453 0))(
  ( (array!18454 (arr!8734 (Array (_ BitVec 32) (_ BitVec 64))) (size!9086 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18453)

(declare-datatypes ((List!5083 0))(
  ( (Nil!5080) (Cons!5079 (h!5935 (_ BitVec 64)) (t!10219 List!5083)) )
))
(declare-fun arrayNoDuplicates!0 (array!18453 (_ BitVec 32) List!5083) Bool)

(assert (=> b!346380 (= res!191666 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5080))))

(declare-fun mapNonEmpty!12627 () Bool)

(declare-fun mapRes!12627 () Bool)

(declare-fun tp!26049 () Bool)

(declare-fun e!212307 () Bool)

(assert (=> mapNonEmpty!12627 (= mapRes!12627 (and tp!26049 e!212307))))

(declare-fun mapKey!12627 () (_ BitVec 32))

(declare-datatypes ((V!10907 0))(
  ( (V!10908 (val!3768 Int)) )
))
(declare-datatypes ((ValueCell!3380 0))(
  ( (ValueCellFull!3380 (v!5946 V!10907)) (EmptyCell!3380) )
))
(declare-fun mapRest!12627 () (Array (_ BitVec 32) ValueCell!3380))

(declare-datatypes ((array!18455 0))(
  ( (array!18456 (arr!8735 (Array (_ BitVec 32) ValueCell!3380)) (size!9087 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18455)

(declare-fun mapValue!12627 () ValueCell!3380)

(assert (=> mapNonEmpty!12627 (= (arr!8735 _values!1525) (store mapRest!12627 mapKey!12627 mapValue!12627))))

(declare-fun mapIsEmpty!12627 () Bool)

(assert (=> mapIsEmpty!12627 mapRes!12627))

(declare-fun b!346381 () Bool)

(declare-fun e!212305 () Bool)

(declare-fun e!212304 () Bool)

(assert (=> b!346381 (= e!212305 (and e!212304 mapRes!12627))))

(declare-fun condMapEmpty!12627 () Bool)

(declare-fun mapDefault!12627 () ValueCell!3380)

