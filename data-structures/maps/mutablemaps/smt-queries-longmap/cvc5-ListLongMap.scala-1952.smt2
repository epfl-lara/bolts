; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34466 () Bool)

(assert start!34466)

(declare-fun b_free!7381 () Bool)

(declare-fun b_next!7381 () Bool)

(assert (=> start!34466 (= b_free!7381 (not b_next!7381))))

(declare-fun tp!25689 () Bool)

(declare-fun b_and!14607 () Bool)

(assert (=> start!34466 (= tp!25689 b_and!14607)))

(declare-fun b!343988 () Bool)

(declare-fun res!190278 () Bool)

(declare-fun e!210899 () Bool)

(assert (=> b!343988 (=> (not res!190278) (not e!210899))))

(declare-datatypes ((array!18223 0))(
  ( (array!18224 (arr!8625 (Array (_ BitVec 32) (_ BitVec 64))) (size!8977 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18223)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18223 (_ BitVec 32)) Bool)

(assert (=> b!343988 (= res!190278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343989 () Bool)

(declare-fun e!210900 () Bool)

(declare-fun tp_is_empty!7333 () Bool)

(assert (=> b!343989 (= e!210900 tp_is_empty!7333)))

(declare-fun b!343990 () Bool)

(declare-fun res!190277 () Bool)

(assert (=> b!343990 (=> (not res!190277) (not e!210899))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343990 (= res!190277 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12438 () Bool)

(declare-fun mapRes!12438 () Bool)

(assert (=> mapIsEmpty!12438 mapRes!12438))

(declare-fun b!343991 () Bool)

(assert (=> b!343991 (= e!210899 false)))

(declare-datatypes ((SeekEntryResult!3327 0))(
  ( (MissingZero!3327 (index!15487 (_ BitVec 32))) (Found!3327 (index!15488 (_ BitVec 32))) (Intermediate!3327 (undefined!4139 Bool) (index!15489 (_ BitVec 32)) (x!34260 (_ BitVec 32))) (Undefined!3327) (MissingVacant!3327 (index!15490 (_ BitVec 32))) )
))
(declare-fun lt!162606 () SeekEntryResult!3327)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18223 (_ BitVec 32)) SeekEntryResult!3327)

(assert (=> b!343991 (= lt!162606 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343992 () Bool)

(declare-fun e!210903 () Bool)

(assert (=> b!343992 (= e!210903 (and e!210900 mapRes!12438))))

(declare-fun condMapEmpty!12438 () Bool)

(declare-datatypes ((V!10755 0))(
  ( (V!10756 (val!3711 Int)) )
))
(declare-datatypes ((ValueCell!3323 0))(
  ( (ValueCellFull!3323 (v!5883 V!10755)) (EmptyCell!3323) )
))
(declare-datatypes ((array!18225 0))(
  ( (array!18226 (arr!8626 (Array (_ BitVec 32) ValueCell!3323)) (size!8978 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18225)

(declare-fun mapDefault!12438 () ValueCell!3323)

