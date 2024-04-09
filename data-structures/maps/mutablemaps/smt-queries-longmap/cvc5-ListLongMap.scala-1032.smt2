; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21886 () Bool)

(assert start!21886)

(declare-fun b!221022 () Bool)

(declare-fun b_free!5941 () Bool)

(declare-fun b_next!5941 () Bool)

(assert (=> b!221022 (= b_free!5941 (not b_next!5941))))

(declare-fun tp!20965 () Bool)

(declare-fun b_and!12857 () Bool)

(assert (=> b!221022 (= tp!20965 b_and!12857)))

(declare-fun res!108418 () Bool)

(declare-fun e!143676 () Bool)

(assert (=> start!21886 (=> (not res!108418) (not e!143676))))

(declare-datatypes ((V!7385 0))(
  ( (V!7386 (val!2946 Int)) )
))
(declare-datatypes ((ValueCell!2558 0))(
  ( (ValueCellFull!2558 (v!4962 V!7385)) (EmptyCell!2558) )
))
(declare-datatypes ((array!10848 0))(
  ( (array!10849 (arr!5143 (Array (_ BitVec 32) ValueCell!2558)) (size!5476 (_ BitVec 32))) )
))
(declare-datatypes ((array!10850 0))(
  ( (array!10851 (arr!5144 (Array (_ BitVec 32) (_ BitVec 64))) (size!5477 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3016 0))(
  ( (LongMapFixedSize!3017 (defaultEntry!4167 Int) (mask!9975 (_ BitVec 32)) (extraKeys!3904 (_ BitVec 32)) (zeroValue!4008 V!7385) (minValue!4008 V!7385) (_size!1557 (_ BitVec 32)) (_keys!6221 array!10850) (_values!4150 array!10848) (_vacant!1557 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3016)

(declare-fun valid!1209 (LongMapFixedSize!3016) Bool)

(assert (=> start!21886 (= res!108418 (valid!1209 thiss!1504))))

(assert (=> start!21886 e!143676))

(declare-fun e!143674 () Bool)

(assert (=> start!21886 e!143674))

(assert (=> start!21886 true))

(declare-fun b!221006 () Bool)

(declare-datatypes ((Unit!6596 0))(
  ( (Unit!6597) )
))
(declare-fun e!143670 () Unit!6596)

(declare-fun Unit!6598 () Unit!6596)

(assert (=> b!221006 (= e!143670 Unit!6598)))

(declare-fun lt!112344 () Unit!6596)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!211 (array!10850 array!10848 (_ BitVec 32) (_ BitVec 32) V!7385 V!7385 (_ BitVec 64) Int) Unit!6596)

(assert (=> b!221006 (= lt!112344 (lemmaInListMapThenSeekEntryOrOpenFindsIt!211 (_keys!6221 thiss!1504) (_values!4150 thiss!1504) (mask!9975 thiss!1504) (extraKeys!3904 thiss!1504) (zeroValue!4008 thiss!1504) (minValue!4008 thiss!1504) key!932 (defaultEntry!4167 thiss!1504)))))

(assert (=> b!221006 false))

(declare-fun b!221007 () Bool)

(declare-fun res!108419 () Bool)

(declare-fun e!143678 () Bool)

(assert (=> b!221007 (=> (not res!108419) (not e!143678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!221007 (= res!108419 (validMask!0 (mask!9975 thiss!1504)))))

(declare-fun b!221008 () Bool)

(declare-fun e!143673 () Bool)

(declare-fun e!143668 () Bool)

(declare-fun mapRes!9874 () Bool)

(assert (=> b!221008 (= e!143673 (and e!143668 mapRes!9874))))

(declare-fun condMapEmpty!9874 () Bool)

(declare-fun mapDefault!9874 () ValueCell!2558)

