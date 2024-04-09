; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23306 () Bool)

(assert start!23306)

(declare-fun b!244874 () Bool)

(declare-fun b_free!6547 () Bool)

(declare-fun b_next!6547 () Bool)

(assert (=> b!244874 (= b_free!6547 (not b_next!6547))))

(declare-fun tp!22869 () Bool)

(declare-fun b_and!13551 () Bool)

(assert (=> b!244874 (= tp!22869 b_and!13551)))

(declare-fun b!244871 () Bool)

(declare-fun e!158880 () Bool)

(declare-datatypes ((SeekEntryResult!1094 0))(
  ( (MissingZero!1094 (index!6546 (_ BitVec 32))) (Found!1094 (index!6547 (_ BitVec 32))) (Intermediate!1094 (undefined!1906 Bool) (index!6548 (_ BitVec 32)) (x!24406 (_ BitVec 32))) (Undefined!1094) (MissingVacant!1094 (index!6549 (_ BitVec 32))) )
))
(declare-fun lt!122687 () SeekEntryResult!1094)

(assert (=> b!244871 (= e!158880 (is-Undefined!1094 lt!122687))))

(declare-fun b!244872 () Bool)

(declare-fun e!158878 () Bool)

(declare-fun e!158883 () Bool)

(declare-fun mapRes!10870 () Bool)

(assert (=> b!244872 (= e!158878 (and e!158883 mapRes!10870))))

(declare-fun condMapEmpty!10870 () Bool)

(declare-datatypes ((V!8193 0))(
  ( (V!8194 (val!3249 Int)) )
))
(declare-datatypes ((ValueCell!2861 0))(
  ( (ValueCellFull!2861 (v!5296 V!8193)) (EmptyCell!2861) )
))
(declare-datatypes ((array!12112 0))(
  ( (array!12113 (arr!5749 (Array (_ BitVec 32) ValueCell!2861)) (size!6091 (_ BitVec 32))) )
))
(declare-datatypes ((array!12114 0))(
  ( (array!12115 (arr!5750 (Array (_ BitVec 32) (_ BitVec 64))) (size!6092 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3622 0))(
  ( (LongMapFixedSize!3623 (defaultEntry!4532 Int) (mask!10637 (_ BitVec 32)) (extraKeys!4269 (_ BitVec 32)) (zeroValue!4373 V!8193) (minValue!4373 V!8193) (_size!1860 (_ BitVec 32)) (_keys!6645 array!12114) (_values!4515 array!12112) (_vacant!1860 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3622)

(declare-fun mapDefault!10870 () ValueCell!2861)

