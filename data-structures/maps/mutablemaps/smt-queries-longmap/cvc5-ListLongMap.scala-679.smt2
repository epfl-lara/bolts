; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16590 () Bool)

(assert start!16590)

(declare-fun b!165170 () Bool)

(declare-fun b_free!3883 () Bool)

(declare-fun b_next!3883 () Bool)

(assert (=> b!165170 (= b_free!3883 (not b_next!3883))))

(declare-fun tp!14250 () Bool)

(declare-fun b_and!10315 () Bool)

(assert (=> b!165170 (= tp!14250 b_and!10315)))

(declare-fun b!165162 () Bool)

(declare-fun e!108360 () Bool)

(assert (=> b!165162 (= e!108360 false)))

(declare-fun lt!83051 () Bool)

(declare-datatypes ((V!4561 0))(
  ( (V!4562 (val!1887 Int)) )
))
(declare-datatypes ((ValueCell!1499 0))(
  ( (ValueCellFull!1499 (v!3748 V!4561)) (EmptyCell!1499) )
))
(declare-datatypes ((array!6466 0))(
  ( (array!6467 (arr!3068 (Array (_ BitVec 32) (_ BitVec 64))) (size!3356 (_ BitVec 32))) )
))
(declare-datatypes ((array!6468 0))(
  ( (array!6469 (arr!3069 (Array (_ BitVec 32) ValueCell!1499)) (size!3357 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1906 0))(
  ( (LongMapFixedSize!1907 (defaultEntry!3395 Int) (mask!8102 (_ BitVec 32)) (extraKeys!3136 (_ BitVec 32)) (zeroValue!3238 V!4561) (minValue!3238 V!4561) (_size!1002 (_ BitVec 32)) (_keys!5220 array!6466) (_values!3378 array!6468) (_vacant!1002 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1906)

(declare-datatypes ((List!2060 0))(
  ( (Nil!2057) (Cons!2056 (h!2673 (_ BitVec 64)) (t!6870 List!2060)) )
))
(declare-fun arrayNoDuplicates!0 (array!6466 (_ BitVec 32) List!2060) Bool)

(assert (=> b!165162 (= lt!83051 (arrayNoDuplicates!0 (_keys!5220 thiss!1248) #b00000000000000000000000000000000 Nil!2057))))

(declare-fun b!165163 () Bool)

(declare-fun res!78338 () Bool)

(assert (=> b!165163 (=> (not res!78338) (not e!108360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165163 (= res!78338 (validMask!0 (mask!8102 thiss!1248)))))

(declare-fun b!165164 () Bool)

(declare-fun e!108361 () Bool)

(declare-fun e!108355 () Bool)

(declare-fun mapRes!6246 () Bool)

(assert (=> b!165164 (= e!108361 (and e!108355 mapRes!6246))))

(declare-fun condMapEmpty!6246 () Bool)

(declare-fun mapDefault!6246 () ValueCell!1499)

