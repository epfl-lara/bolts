; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34694 () Bool)

(assert start!34694)

(declare-fun b_free!7493 () Bool)

(declare-fun b_next!7493 () Bool)

(assert (=> start!34694 (= b_free!7493 (not b_next!7493))))

(declare-fun tp!26042 () Bool)

(declare-fun b_and!14731 () Bool)

(assert (=> start!34694 (= tp!26042 b_and!14731)))

(declare-fun res!191641 () Bool)

(declare-fun e!212289 () Bool)

(assert (=> start!34694 (=> (not res!191641) (not e!212289))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34694 (= res!191641 (validMask!0 mask!2385))))

(assert (=> start!34694 e!212289))

(assert (=> start!34694 true))

(declare-fun tp_is_empty!7445 () Bool)

(assert (=> start!34694 tp_is_empty!7445))

(assert (=> start!34694 tp!26042))

(declare-datatypes ((V!10903 0))(
  ( (V!10904 (val!3767 Int)) )
))
(declare-datatypes ((ValueCell!3379 0))(
  ( (ValueCellFull!3379 (v!5945 V!10903)) (EmptyCell!3379) )
))
(declare-datatypes ((array!18449 0))(
  ( (array!18450 (arr!8732 (Array (_ BitVec 32) ValueCell!3379)) (size!9084 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18449)

(declare-fun e!212287 () Bool)

(declare-fun array_inv!6456 (array!18449) Bool)

(assert (=> start!34694 (and (array_inv!6456 _values!1525) e!212287)))

(declare-datatypes ((array!18451 0))(
  ( (array!18452 (arr!8733 (Array (_ BitVec 32) (_ BitVec 64))) (size!9085 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18451)

(declare-fun array_inv!6457 (array!18451) Bool)

(assert (=> start!34694 (array_inv!6457 _keys!1895)))

(declare-fun b!346349 () Bool)

(declare-fun res!191645 () Bool)

(assert (=> b!346349 (=> (not res!191645) (not e!212289))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346349 (= res!191645 (validKeyInArray!0 k!1348))))

(declare-fun b!346350 () Bool)

(declare-fun e!212288 () Bool)

(assert (=> b!346350 (= e!212288 tp_is_empty!7445)))

(declare-fun b!346351 () Bool)

(declare-fun res!191640 () Bool)

(assert (=> b!346351 (=> (not res!191640) (not e!212289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18451 (_ BitVec 32)) Bool)

(assert (=> b!346351 (= res!191640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12624 () Bool)

(declare-fun mapRes!12624 () Bool)

(declare-fun tp!26043 () Bool)

(declare-fun e!212285 () Bool)

(assert (=> mapNonEmpty!12624 (= mapRes!12624 (and tp!26043 e!212285))))

(declare-fun mapValue!12624 () ValueCell!3379)

(declare-fun mapRest!12624 () (Array (_ BitVec 32) ValueCell!3379))

(declare-fun mapKey!12624 () (_ BitVec 32))

(assert (=> mapNonEmpty!12624 (= (arr!8732 _values!1525) (store mapRest!12624 mapKey!12624 mapValue!12624))))

(declare-fun b!346352 () Bool)

(assert (=> b!346352 (= e!212287 (and e!212288 mapRes!12624))))

(declare-fun condMapEmpty!12624 () Bool)

(declare-fun mapDefault!12624 () ValueCell!3379)

