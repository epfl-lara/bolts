; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34390 () Bool)

(assert start!34390)

(declare-fun b_free!7331 () Bool)

(declare-fun b_next!7331 () Bool)

(assert (=> start!34390 (= b_free!7331 (not b_next!7331))))

(declare-fun tp!25535 () Bool)

(declare-fun b_and!14555 () Bool)

(assert (=> start!34390 (= tp!25535 b_and!14555)))

(declare-fun b!343169 () Bool)

(declare-fun e!210436 () Bool)

(declare-fun tp_is_empty!7283 () Bool)

(assert (=> b!343169 (= e!210436 tp_is_empty!7283)))

(declare-fun b!343170 () Bool)

(declare-fun e!210433 () Bool)

(declare-fun e!210432 () Bool)

(assert (=> b!343170 (= e!210433 e!210432)))

(declare-fun res!189777 () Bool)

(assert (=> b!343170 (=> (not res!189777) (not e!210432))))

(declare-datatypes ((SeekEntryResult!3309 0))(
  ( (MissingZero!3309 (index!15415 (_ BitVec 32))) (Found!3309 (index!15416 (_ BitVec 32))) (Intermediate!3309 (undefined!4121 Bool) (index!15417 (_ BitVec 32)) (x!34160 (_ BitVec 32))) (Undefined!3309) (MissingVacant!3309 (index!15418 (_ BitVec 32))) )
))
(declare-fun lt!162428 () SeekEntryResult!3309)

(assert (=> b!343170 (= res!189777 (and (not (is-Found!3309 lt!162428)) (not (is-MissingZero!3309 lt!162428)) (is-MissingVacant!3309 lt!162428)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18129 0))(
  ( (array!18130 (arr!8579 (Array (_ BitVec 32) (_ BitVec 64))) (size!8931 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18129)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18129 (_ BitVec 32)) SeekEntryResult!3309)

(assert (=> b!343170 (= lt!162428 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343171 () Bool)

(declare-fun e!210438 () Bool)

(assert (=> b!343171 (= e!210438 (and (= (select (arr!8579 _keys!1895) (index!15418 lt!162428)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8931 _keys!1895)) (bvsge (size!8931 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!343173 () Bool)

(declare-fun res!189772 () Bool)

(assert (=> b!343173 (=> (not res!189772) (not e!210433))))

(declare-datatypes ((V!10687 0))(
  ( (V!10688 (val!3686 Int)) )
))
(declare-datatypes ((ValueCell!3298 0))(
  ( (ValueCellFull!3298 (v!5857 V!10687)) (EmptyCell!3298) )
))
(declare-datatypes ((array!18131 0))(
  ( (array!18132 (arr!8580 (Array (_ BitVec 32) ValueCell!3298)) (size!8932 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18131)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343173 (= res!189772 (and (= (size!8932 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8931 _keys!1895) (size!8932 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343174 () Bool)

(declare-fun res!189771 () Bool)

(assert (=> b!343174 (=> (not res!189771) (not e!210433))))

(declare-datatypes ((List!4973 0))(
  ( (Nil!4970) (Cons!4969 (h!5825 (_ BitVec 64)) (t!10095 List!4973)) )
))
(declare-fun arrayNoDuplicates!0 (array!18129 (_ BitVec 32) List!4973) Bool)

(assert (=> b!343174 (= res!189771 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4970))))

(declare-fun b!343175 () Bool)

(declare-fun res!189778 () Bool)

(assert (=> b!343175 (=> (not res!189778) (not e!210433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343175 (= res!189778 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12360 () Bool)

(declare-fun mapRes!12360 () Bool)

(assert (=> mapIsEmpty!12360 mapRes!12360))

(declare-fun b!343176 () Bool)

(declare-fun e!210437 () Bool)

(assert (=> b!343176 (= e!210437 (and e!210436 mapRes!12360))))

(declare-fun condMapEmpty!12360 () Bool)

(declare-fun mapDefault!12360 () ValueCell!3298)

