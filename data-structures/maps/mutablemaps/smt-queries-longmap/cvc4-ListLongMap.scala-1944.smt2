; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34422 () Bool)

(assert start!34422)

(declare-fun b_free!7337 () Bool)

(declare-fun b_next!7337 () Bool)

(assert (=> start!34422 (= b_free!7337 (not b_next!7337))))

(declare-fun tp!25557 () Bool)

(declare-fun b_and!14563 () Bool)

(assert (=> start!34422 (= tp!25557 b_and!14563)))

(declare-fun b!343394 () Bool)

(declare-fun res!189881 () Bool)

(declare-fun e!210570 () Bool)

(assert (=> b!343394 (=> (not res!189881) (not e!210570))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343394 (= res!189881 (validKeyInArray!0 k!1348))))

(declare-fun b!343395 () Bool)

(declare-fun res!189882 () Bool)

(assert (=> b!343395 (=> (not res!189882) (not e!210570))))

(declare-datatypes ((V!10695 0))(
  ( (V!10696 (val!3689 Int)) )
))
(declare-datatypes ((ValueCell!3301 0))(
  ( (ValueCellFull!3301 (v!5861 V!10695)) (EmptyCell!3301) )
))
(declare-datatypes ((array!18141 0))(
  ( (array!18142 (arr!8584 (Array (_ BitVec 32) ValueCell!3301)) (size!8936 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18141)

(declare-datatypes ((array!18143 0))(
  ( (array!18144 (arr!8585 (Array (_ BitVec 32) (_ BitVec 64))) (size!8937 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18143)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun mask!2385 () (_ BitVec 32))

(assert (=> b!343395 (= res!189882 (and (= (size!8936 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8937 _keys!1895) (size!8936 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343396 () Bool)

(assert (=> b!343396 (= e!210570 false)))

(declare-datatypes ((SeekEntryResult!3311 0))(
  ( (MissingZero!3311 (index!15423 (_ BitVec 32))) (Found!3311 (index!15424 (_ BitVec 32))) (Intermediate!3311 (undefined!4123 Bool) (index!15425 (_ BitVec 32)) (x!34180 (_ BitVec 32))) (Undefined!3311) (MissingVacant!3311 (index!15426 (_ BitVec 32))) )
))
(declare-fun lt!162540 () SeekEntryResult!3311)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18143 (_ BitVec 32)) SeekEntryResult!3311)

(assert (=> b!343396 (= lt!162540 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12372 () Bool)

(declare-fun mapRes!12372 () Bool)

(assert (=> mapIsEmpty!12372 mapRes!12372))

(declare-fun b!343397 () Bool)

(declare-fun e!210572 () Bool)

(declare-fun tp_is_empty!7289 () Bool)

(assert (=> b!343397 (= e!210572 tp_is_empty!7289)))

(declare-fun res!189879 () Bool)

(assert (=> start!34422 (=> (not res!189879) (not e!210570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34422 (= res!189879 (validMask!0 mask!2385))))

(assert (=> start!34422 e!210570))

(assert (=> start!34422 true))

(assert (=> start!34422 tp_is_empty!7289))

(assert (=> start!34422 tp!25557))

(declare-fun e!210573 () Bool)

(declare-fun array_inv!6346 (array!18141) Bool)

(assert (=> start!34422 (and (array_inv!6346 _values!1525) e!210573)))

(declare-fun array_inv!6347 (array!18143) Bool)

(assert (=> start!34422 (array_inv!6347 _keys!1895)))

(declare-fun b!343398 () Bool)

(declare-fun e!210569 () Bool)

(assert (=> b!343398 (= e!210569 tp_is_empty!7289)))

(declare-fun mapNonEmpty!12372 () Bool)

(declare-fun tp!25556 () Bool)

(assert (=> mapNonEmpty!12372 (= mapRes!12372 (and tp!25556 e!210572))))

(declare-fun mapKey!12372 () (_ BitVec 32))

(declare-fun mapValue!12372 () ValueCell!3301)

(declare-fun mapRest!12372 () (Array (_ BitVec 32) ValueCell!3301))

(assert (=> mapNonEmpty!12372 (= (arr!8584 _values!1525) (store mapRest!12372 mapKey!12372 mapValue!12372))))

(declare-fun b!343399 () Bool)

(declare-fun res!189880 () Bool)

(assert (=> b!343399 (=> (not res!189880) (not e!210570))))

(declare-datatypes ((List!4976 0))(
  ( (Nil!4973) (Cons!4972 (h!5828 (_ BitVec 64)) (t!10100 List!4976)) )
))
(declare-fun arrayNoDuplicates!0 (array!18143 (_ BitVec 32) List!4976) Bool)

(assert (=> b!343399 (= res!189880 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4973))))

(declare-fun b!343400 () Bool)

(assert (=> b!343400 (= e!210573 (and e!210569 mapRes!12372))))

(declare-fun condMapEmpty!12372 () Bool)

(declare-fun mapDefault!12372 () ValueCell!3301)

