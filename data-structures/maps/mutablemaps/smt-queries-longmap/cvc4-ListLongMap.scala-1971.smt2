; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34700 () Bool)

(assert start!34700)

(declare-fun b_free!7499 () Bool)

(declare-fun b_next!7499 () Bool)

(assert (=> start!34700 (= b_free!7499 (not b_next!7499))))

(declare-fun tp!26060 () Bool)

(declare-fun b_and!14737 () Bool)

(assert (=> start!34700 (= tp!26060 b_and!14737)))

(declare-fun b!346446 () Bool)

(declare-fun res!191715 () Bool)

(declare-fun e!212342 () Bool)

(assert (=> b!346446 (=> (not res!191715) (not e!212342))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10911 0))(
  ( (V!10912 (val!3770 Int)) )
))
(declare-datatypes ((ValueCell!3382 0))(
  ( (ValueCellFull!3382 (v!5948 V!10911)) (EmptyCell!3382) )
))
(declare-datatypes ((array!18461 0))(
  ( (array!18462 (arr!8738 (Array (_ BitVec 32) ValueCell!3382)) (size!9090 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18461)

(declare-datatypes ((array!18463 0))(
  ( (array!18464 (arr!8739 (Array (_ BitVec 32) (_ BitVec 64))) (size!9091 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18463)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346446 (= res!191715 (and (= (size!9090 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9091 _keys!1895) (size!9090 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346447 () Bool)

(declare-fun res!191717 () Bool)

(assert (=> b!346447 (=> (not res!191717) (not e!212342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18463 (_ BitVec 32)) Bool)

(assert (=> b!346447 (= res!191717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346448 () Bool)

(declare-fun res!191714 () Bool)

(assert (=> b!346448 (=> (not res!191714) (not e!212342))))

(declare-datatypes ((List!5086 0))(
  ( (Nil!5083) (Cons!5082 (h!5938 (_ BitVec 64)) (t!10222 List!5086)) )
))
(declare-fun arrayNoDuplicates!0 (array!18463 (_ BitVec 32) List!5086) Bool)

(assert (=> b!346448 (= res!191714 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5083))))

(declare-fun res!191716 () Bool)

(assert (=> start!34700 (=> (not res!191716) (not e!212342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34700 (= res!191716 (validMask!0 mask!2385))))

(assert (=> start!34700 e!212342))

(assert (=> start!34700 true))

(declare-fun tp_is_empty!7451 () Bool)

(assert (=> start!34700 tp_is_empty!7451))

(assert (=> start!34700 tp!26060))

(declare-fun e!212338 () Bool)

(declare-fun array_inv!6460 (array!18461) Bool)

(assert (=> start!34700 (and (array_inv!6460 _values!1525) e!212338)))

(declare-fun array_inv!6461 (array!18463) Bool)

(assert (=> start!34700 (array_inv!6461 _keys!1895)))

(declare-fun mapIsEmpty!12633 () Bool)

(declare-fun mapRes!12633 () Bool)

(assert (=> mapIsEmpty!12633 mapRes!12633))

(declare-fun b!346449 () Bool)

(declare-fun e!212341 () Bool)

(assert (=> b!346449 (= e!212341 tp_is_empty!7451)))

(declare-fun mapNonEmpty!12633 () Bool)

(declare-fun tp!26061 () Bool)

(declare-fun e!212343 () Bool)

(assert (=> mapNonEmpty!12633 (= mapRes!12633 (and tp!26061 e!212343))))

(declare-fun mapRest!12633 () (Array (_ BitVec 32) ValueCell!3382))

(declare-fun mapValue!12633 () ValueCell!3382)

(declare-fun mapKey!12633 () (_ BitVec 32))

(assert (=> mapNonEmpty!12633 (= (arr!8738 _values!1525) (store mapRest!12633 mapKey!12633 mapValue!12633))))

(declare-fun b!346450 () Bool)

(declare-fun e!212339 () Bool)

(assert (=> b!346450 (= e!212342 e!212339)))

(declare-fun res!191710 () Bool)

(assert (=> b!346450 (=> (not res!191710) (not e!212339))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3363 0))(
  ( (MissingZero!3363 (index!15631 (_ BitVec 32))) (Found!3363 (index!15632 (_ BitVec 32))) (Intermediate!3363 (undefined!4175 Bool) (index!15633 (_ BitVec 32)) (x!34508 (_ BitVec 32))) (Undefined!3363) (MissingVacant!3363 (index!15634 (_ BitVec 32))) )
))
(declare-fun lt!163368 () SeekEntryResult!3363)

(assert (=> b!346450 (= res!191710 (and (is-Found!3363 lt!163368) (= (select (arr!8739 _keys!1895) (index!15632 lt!163368)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18463 (_ BitVec 32)) SeekEntryResult!3363)

(assert (=> b!346450 (= lt!163368 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346451 () Bool)

(assert (=> b!346451 (= e!212338 (and e!212341 mapRes!12633))))

(declare-fun condMapEmpty!12633 () Bool)

(declare-fun mapDefault!12633 () ValueCell!3382)

