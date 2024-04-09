; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34706 () Bool)

(assert start!34706)

(declare-fun b_free!7505 () Bool)

(declare-fun b_next!7505 () Bool)

(assert (=> start!34706 (= b_free!7505 (not b_next!7505))))

(declare-fun tp!26078 () Bool)

(declare-fun b_and!14743 () Bool)

(assert (=> start!34706 (= tp!26078 b_and!14743)))

(declare-fun res!191788 () Bool)

(declare-fun e!212396 () Bool)

(assert (=> start!34706 (=> (not res!191788) (not e!212396))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34706 (= res!191788 (validMask!0 mask!2385))))

(assert (=> start!34706 e!212396))

(assert (=> start!34706 true))

(declare-fun tp_is_empty!7457 () Bool)

(assert (=> start!34706 tp_is_empty!7457))

(assert (=> start!34706 tp!26078))

(declare-datatypes ((V!10919 0))(
  ( (V!10920 (val!3773 Int)) )
))
(declare-datatypes ((ValueCell!3385 0))(
  ( (ValueCellFull!3385 (v!5951 V!10919)) (EmptyCell!3385) )
))
(declare-datatypes ((array!18471 0))(
  ( (array!18472 (arr!8743 (Array (_ BitVec 32) ValueCell!3385)) (size!9095 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18471)

(declare-fun e!212393 () Bool)

(declare-fun array_inv!6464 (array!18471) Bool)

(assert (=> start!34706 (and (array_inv!6464 _values!1525) e!212393)))

(declare-datatypes ((array!18473 0))(
  ( (array!18474 (arr!8744 (Array (_ BitVec 32) (_ BitVec 64))) (size!9096 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18473)

(declare-fun array_inv!6465 (array!18473) Bool)

(assert (=> start!34706 (array_inv!6465 _keys!1895)))

(declare-fun b!346545 () Bool)

(declare-fun e!212397 () Bool)

(assert (=> b!346545 (= e!212396 e!212397)))

(declare-fun res!191789 () Bool)

(assert (=> b!346545 (=> (not res!191789) (not e!212397))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3365 0))(
  ( (MissingZero!3365 (index!15639 (_ BitVec 32))) (Found!3365 (index!15640 (_ BitVec 32))) (Intermediate!3365 (undefined!4177 Bool) (index!15641 (_ BitVec 32)) (x!34518 (_ BitVec 32))) (Undefined!3365) (MissingVacant!3365 (index!15642 (_ BitVec 32))) )
))
(declare-fun lt!163385 () SeekEntryResult!3365)

(assert (=> b!346545 (= res!191789 (and (is-Found!3365 lt!163385) (= (select (arr!8744 _keys!1895) (index!15640 lt!163385)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18473 (_ BitVec 32)) SeekEntryResult!3365)

(assert (=> b!346545 (= lt!163385 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346546 () Bool)

(declare-fun e!212394 () Bool)

(assert (=> b!346546 (= e!212394 tp_is_empty!7457)))

(declare-fun b!346547 () Bool)

(declare-fun res!191782 () Bool)

(assert (=> b!346547 (=> (not res!191782) (not e!212396))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346547 (= res!191782 (and (= (size!9095 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9096 _keys!1895) (size!9095 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346548 () Bool)

(declare-fun res!191787 () Bool)

(assert (=> b!346548 (=> (not res!191787) (not e!212396))))

(declare-datatypes ((List!5089 0))(
  ( (Nil!5086) (Cons!5085 (h!5941 (_ BitVec 64)) (t!10225 List!5089)) )
))
(declare-fun arrayNoDuplicates!0 (array!18473 (_ BitVec 32) List!5089) Bool)

(assert (=> b!346548 (= res!191787 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5086))))

(declare-fun b!346549 () Bool)

(declare-fun e!212395 () Bool)

(declare-fun mapRes!12642 () Bool)

(assert (=> b!346549 (= e!212393 (and e!212395 mapRes!12642))))

(declare-fun condMapEmpty!12642 () Bool)

(declare-fun mapDefault!12642 () ValueCell!3385)

