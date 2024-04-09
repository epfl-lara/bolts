; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34488 () Bool)

(assert start!34488)

(declare-fun b_free!7403 () Bool)

(declare-fun b_next!7403 () Bool)

(assert (=> start!34488 (= b_free!7403 (not b_next!7403))))

(declare-fun tp!25755 () Bool)

(declare-fun b_and!14629 () Bool)

(assert (=> start!34488 (= tp!25755 b_and!14629)))

(declare-fun res!190477 () Bool)

(declare-fun e!211064 () Bool)

(assert (=> start!34488 (=> (not res!190477) (not e!211064))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34488 (= res!190477 (validMask!0 mask!2385))))

(assert (=> start!34488 e!211064))

(assert (=> start!34488 true))

(declare-fun tp_is_empty!7355 () Bool)

(assert (=> start!34488 tp_is_empty!7355))

(assert (=> start!34488 tp!25755))

(declare-datatypes ((V!10783 0))(
  ( (V!10784 (val!3722 Int)) )
))
(declare-datatypes ((ValueCell!3334 0))(
  ( (ValueCellFull!3334 (v!5894 V!10783)) (EmptyCell!3334) )
))
(declare-datatypes ((array!18267 0))(
  ( (array!18268 (arr!8647 (Array (_ BitVec 32) ValueCell!3334)) (size!8999 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18267)

(declare-fun e!211068 () Bool)

(declare-fun array_inv!6398 (array!18267) Bool)

(assert (=> start!34488 (and (array_inv!6398 _values!1525) e!211068)))

(declare-datatypes ((array!18269 0))(
  ( (array!18270 (arr!8648 (Array (_ BitVec 32) (_ BitVec 64))) (size!9000 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18269)

(declare-fun array_inv!6399 (array!18269) Bool)

(assert (=> start!34488 (array_inv!6399 _keys!1895)))

(declare-fun b!344285 () Bool)

(declare-fun res!190474 () Bool)

(assert (=> b!344285 (=> (not res!190474) (not e!211064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18269 (_ BitVec 32)) Bool)

(assert (=> b!344285 (= res!190474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344286 () Bool)

(declare-fun e!211067 () Bool)

(declare-fun mapRes!12471 () Bool)

(assert (=> b!344286 (= e!211068 (and e!211067 mapRes!12471))))

(declare-fun condMapEmpty!12471 () Bool)

(declare-fun mapDefault!12471 () ValueCell!3334)

