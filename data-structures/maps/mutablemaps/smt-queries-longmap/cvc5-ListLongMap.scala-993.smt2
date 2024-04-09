; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21424 () Bool)

(assert start!21424)

(declare-fun b!215057 () Bool)

(declare-fun b_free!5707 () Bool)

(declare-fun b_next!5707 () Bool)

(assert (=> b!215057 (= b_free!5707 (not b_next!5707))))

(declare-fun tp!20228 () Bool)

(declare-fun b_and!12615 () Bool)

(assert (=> b!215057 (= tp!20228 b_and!12615)))

(declare-fun b!215051 () Bool)

(declare-fun e!139896 () Bool)

(declare-fun e!139900 () Bool)

(declare-fun mapRes!9488 () Bool)

(assert (=> b!215051 (= e!139896 (and e!139900 mapRes!9488))))

(declare-fun condMapEmpty!9488 () Bool)

(declare-datatypes ((V!7073 0))(
  ( (V!7074 (val!2829 Int)) )
))
(declare-datatypes ((ValueCell!2441 0))(
  ( (ValueCellFull!2441 (v!4843 V!7073)) (EmptyCell!2441) )
))
(declare-datatypes ((array!10360 0))(
  ( (array!10361 (arr!4909 (Array (_ BitVec 32) ValueCell!2441)) (size!5237 (_ BitVec 32))) )
))
(declare-datatypes ((array!10362 0))(
  ( (array!10363 (arr!4910 (Array (_ BitVec 32) (_ BitVec 64))) (size!5238 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2782 0))(
  ( (LongMapFixedSize!2783 (defaultEntry!4041 Int) (mask!9727 (_ BitVec 32)) (extraKeys!3778 (_ BitVec 32)) (zeroValue!3882 V!7073) (minValue!3882 V!7073) (_size!1440 (_ BitVec 32)) (_keys!6067 array!10362) (_values!4024 array!10360) (_vacant!1440 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2782)

(declare-fun mapDefault!9488 () ValueCell!2441)

