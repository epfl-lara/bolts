; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34460 () Bool)

(assert start!34460)

(declare-fun b_free!7375 () Bool)

(declare-fun b_next!7375 () Bool)

(assert (=> start!34460 (= b_free!7375 (not b_next!7375))))

(declare-fun tp!25671 () Bool)

(declare-fun b_and!14601 () Bool)

(assert (=> start!34460 (= tp!25671 b_and!14601)))

(declare-fun mapIsEmpty!12429 () Bool)

(declare-fun mapRes!12429 () Bool)

(assert (=> mapIsEmpty!12429 mapRes!12429))

(declare-fun b!343907 () Bool)

(declare-fun e!210856 () Bool)

(assert (=> b!343907 (= e!210856 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3325 0))(
  ( (MissingZero!3325 (index!15479 (_ BitVec 32))) (Found!3325 (index!15480 (_ BitVec 32))) (Intermediate!3325 (undefined!4137 Bool) (index!15481 (_ BitVec 32)) (x!34250 (_ BitVec 32))) (Undefined!3325) (MissingVacant!3325 (index!15482 (_ BitVec 32))) )
))
(declare-fun lt!162597 () SeekEntryResult!3325)

(declare-datatypes ((array!18213 0))(
  ( (array!18214 (arr!8620 (Array (_ BitVec 32) (_ BitVec 64))) (size!8972 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18213)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18213 (_ BitVec 32)) SeekEntryResult!3325)

(assert (=> b!343907 (= lt!162597 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343908 () Bool)

(declare-fun res!190225 () Bool)

(assert (=> b!343908 (=> (not res!190225) (not e!210856))))

(declare-datatypes ((V!10747 0))(
  ( (V!10748 (val!3708 Int)) )
))
(declare-datatypes ((ValueCell!3320 0))(
  ( (ValueCellFull!3320 (v!5880 V!10747)) (EmptyCell!3320) )
))
(declare-datatypes ((array!18215 0))(
  ( (array!18216 (arr!8621 (Array (_ BitVec 32) ValueCell!3320)) (size!8973 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18215)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343908 (= res!190225 (and (= (size!8973 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8972 _keys!1895) (size!8973 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!190226 () Bool)

(assert (=> start!34460 (=> (not res!190226) (not e!210856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34460 (= res!190226 (validMask!0 mask!2385))))

(assert (=> start!34460 e!210856))

(assert (=> start!34460 true))

(declare-fun tp_is_empty!7327 () Bool)

(assert (=> start!34460 tp_is_empty!7327))

(assert (=> start!34460 tp!25671))

(declare-fun e!210855 () Bool)

(declare-fun array_inv!6378 (array!18215) Bool)

(assert (=> start!34460 (and (array_inv!6378 _values!1525) e!210855)))

(declare-fun array_inv!6379 (array!18213) Bool)

(assert (=> start!34460 (array_inv!6379 _keys!1895)))

(declare-fun b!343909 () Bool)

(declare-fun e!210854 () Bool)

(assert (=> b!343909 (= e!210854 tp_is_empty!7327)))

(declare-fun mapNonEmpty!12429 () Bool)

(declare-fun tp!25670 () Bool)

(declare-fun e!210858 () Bool)

(assert (=> mapNonEmpty!12429 (= mapRes!12429 (and tp!25670 e!210858))))

(declare-fun mapRest!12429 () (Array (_ BitVec 32) ValueCell!3320))

(declare-fun mapValue!12429 () ValueCell!3320)

(declare-fun mapKey!12429 () (_ BitVec 32))

(assert (=> mapNonEmpty!12429 (= (arr!8621 _values!1525) (store mapRest!12429 mapKey!12429 mapValue!12429))))

(declare-fun b!343910 () Bool)

(declare-fun res!190224 () Bool)

(assert (=> b!343910 (=> (not res!190224) (not e!210856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18213 (_ BitVec 32)) Bool)

(assert (=> b!343910 (= res!190224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343911 () Bool)

(declare-fun res!190223 () Bool)

(assert (=> b!343911 (=> (not res!190223) (not e!210856))))

(declare-datatypes ((List!5003 0))(
  ( (Nil!5000) (Cons!4999 (h!5855 (_ BitVec 64)) (t!10127 List!5003)) )
))
(declare-fun arrayNoDuplicates!0 (array!18213 (_ BitVec 32) List!5003) Bool)

(assert (=> b!343911 (= res!190223 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5000))))

(declare-fun b!343912 () Bool)

(assert (=> b!343912 (= e!210855 (and e!210854 mapRes!12429))))

(declare-fun condMapEmpty!12429 () Bool)

(declare-fun mapDefault!12429 () ValueCell!3320)

