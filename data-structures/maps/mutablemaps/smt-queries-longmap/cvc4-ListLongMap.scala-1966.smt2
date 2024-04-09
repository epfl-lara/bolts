; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34592 () Bool)

(assert start!34592)

(declare-fun b_free!7469 () Bool)

(declare-fun b_next!7469 () Bool)

(assert (=> start!34592 (= b_free!7469 (not b_next!7469))))

(declare-fun tp!25958 () Bool)

(declare-fun b_and!14699 () Bool)

(assert (=> start!34592 (= tp!25958 b_and!14699)))

(declare-fun b!345445 () Bool)

(declare-fun res!191177 () Bool)

(declare-fun e!211737 () Bool)

(assert (=> b!345445 (=> (not res!191177) (not e!211737))))

(declare-datatypes ((array!18397 0))(
  ( (array!18398 (arr!8710 (Array (_ BitVec 32) (_ BitVec 64))) (size!9062 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18397)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18397 (_ BitVec 32)) Bool)

(assert (=> b!345445 (= res!191177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!345446 () Bool)

(declare-fun res!191176 () Bool)

(assert (=> b!345446 (=> (not res!191176) (not e!211737))))

(declare-datatypes ((V!10871 0))(
  ( (V!10872 (val!3755 Int)) )
))
(declare-datatypes ((ValueCell!3367 0))(
  ( (ValueCellFull!3367 (v!5929 V!10871)) (EmptyCell!3367) )
))
(declare-datatypes ((array!18399 0))(
  ( (array!18400 (arr!8711 (Array (_ BitVec 32) ValueCell!3367)) (size!9063 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18399)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!345446 (= res!191176 (and (= (size!9063 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9062 _keys!1895) (size!9063 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!345447 () Bool)

(declare-fun e!211740 () Bool)

(declare-fun tp_is_empty!7421 () Bool)

(assert (=> b!345447 (= e!211740 tp_is_empty!7421)))

(declare-fun b!345448 () Bool)

(declare-fun e!211738 () Bool)

(declare-fun e!211739 () Bool)

(declare-fun mapRes!12576 () Bool)

(assert (=> b!345448 (= e!211738 (and e!211739 mapRes!12576))))

(declare-fun condMapEmpty!12576 () Bool)

(declare-fun mapDefault!12576 () ValueCell!3367)

