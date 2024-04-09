; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76422 () Bool)

(assert start!76422)

(declare-fun b!895975 () Bool)

(declare-fun b_free!15941 () Bool)

(declare-fun b_next!15941 () Bool)

(assert (=> b!895975 (= b_free!15941 (not b_next!15941))))

(declare-fun tp!55848 () Bool)

(declare-fun b_and!26251 () Bool)

(assert (=> b!895975 (= tp!55848 b_and!26251)))

(declare-fun b!895973 () Bool)

(declare-fun e!500780 () Bool)

(declare-datatypes ((SeekEntryResult!8881 0))(
  ( (MissingZero!8881 (index!37894 (_ BitVec 32))) (Found!8881 (index!37895 (_ BitVec 32))) (Intermediate!8881 (undefined!9693 Bool) (index!37896 (_ BitVec 32)) (x!76266 (_ BitVec 32))) (Undefined!8881) (MissingVacant!8881 (index!37897 (_ BitVec 32))) )
))
(declare-fun lt!404654 () SeekEntryResult!8881)

(declare-datatypes ((array!52536 0))(
  ( (array!52537 (arr!25254 (Array (_ BitVec 32) (_ BitVec 64))) (size!25705 (_ BitVec 32))) )
))
(declare-datatypes ((V!29323 0))(
  ( (V!29324 (val!9185 Int)) )
))
(declare-datatypes ((ValueCell!8653 0))(
  ( (ValueCellFull!8653 (v!11672 V!29323)) (EmptyCell!8653) )
))
(declare-datatypes ((array!52538 0))(
  ( (array!52539 (arr!25255 (Array (_ BitVec 32) ValueCell!8653)) (size!25706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4322 0))(
  ( (LongMapFixedSize!4323 (defaultEntry!5373 Int) (mask!25990 (_ BitVec 32)) (extraKeys!5071 (_ BitVec 32)) (zeroValue!5175 V!29323) (minValue!5175 V!29323) (_size!2216 (_ BitVec 32)) (_keys!10094 array!52536) (_values!5362 array!52538) (_vacant!2216 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4322)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!895973 (= e!500780 (inRange!0 (index!37895 lt!404654) (mask!25990 thiss!1181)))))

(declare-fun tp_is_empty!18269 () Bool)

(declare-fun e!500779 () Bool)

(declare-fun e!500776 () Bool)

(declare-fun array_inv!19800 (array!52536) Bool)

(declare-fun array_inv!19801 (array!52538) Bool)

(assert (=> b!895975 (= e!500779 (and tp!55848 tp_is_empty!18269 (array_inv!19800 (_keys!10094 thiss!1181)) (array_inv!19801 (_values!5362 thiss!1181)) e!500776))))

(declare-fun b!895976 () Bool)

(declare-fun e!500781 () Bool)

(declare-fun mapRes!29014 () Bool)

(assert (=> b!895976 (= e!500776 (and e!500781 mapRes!29014))))

(declare-fun condMapEmpty!29014 () Bool)

(declare-fun mapDefault!29014 () ValueCell!8653)

