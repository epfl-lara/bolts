; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16798 () Bool)

(assert start!16798)

(declare-fun b!168956 () Bool)

(declare-fun b_free!4091 () Bool)

(declare-fun b_next!4091 () Bool)

(assert (=> b!168956 (= b_free!4091 (not b_next!4091))))

(declare-fun tp!14874 () Bool)

(declare-fun b_and!10523 () Bool)

(assert (=> b!168956 (= tp!14874 b_and!10523)))

(declare-fun res!80434 () Bool)

(declare-fun e!111199 () Bool)

(assert (=> start!16798 (=> (not res!80434) (not e!111199))))

(declare-datatypes ((V!4837 0))(
  ( (V!4838 (val!1991 Int)) )
))
(declare-datatypes ((ValueCell!1603 0))(
  ( (ValueCellFull!1603 (v!3852 V!4837)) (EmptyCell!1603) )
))
(declare-datatypes ((array!6882 0))(
  ( (array!6883 (arr!3276 (Array (_ BitVec 32) (_ BitVec 64))) (size!3564 (_ BitVec 32))) )
))
(declare-datatypes ((array!6884 0))(
  ( (array!6885 (arr!3277 (Array (_ BitVec 32) ValueCell!1603)) (size!3565 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2114 0))(
  ( (LongMapFixedSize!2115 (defaultEntry!3499 Int) (mask!8274 (_ BitVec 32)) (extraKeys!3240 (_ BitVec 32)) (zeroValue!3342 V!4837) (minValue!3342 V!4837) (_size!1106 (_ BitVec 32)) (_keys!5324 array!6882) (_values!3482 array!6884) (_vacant!1106 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2114)

(declare-fun valid!908 (LongMapFixedSize!2114) Bool)

(assert (=> start!16798 (= res!80434 (valid!908 thiss!1248))))

(assert (=> start!16798 e!111199))

(declare-fun e!111198 () Bool)

(assert (=> start!16798 e!111198))

(assert (=> start!16798 true))

(declare-fun tp_is_empty!3893 () Bool)

(assert (=> start!16798 tp_is_empty!3893))

(declare-fun b!168955 () Bool)

(declare-fun e!111196 () Bool)

(declare-fun e!111195 () Bool)

(declare-fun mapRes!6558 () Bool)

(assert (=> b!168955 (= e!111196 (and e!111195 mapRes!6558))))

(declare-fun condMapEmpty!6558 () Bool)

(declare-fun mapDefault!6558 () ValueCell!1603)

