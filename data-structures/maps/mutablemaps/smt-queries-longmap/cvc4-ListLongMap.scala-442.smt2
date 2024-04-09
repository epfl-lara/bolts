; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8280 () Bool)

(assert start!8280)

(declare-fun b!53148 () Bool)

(declare-fun b_free!1701 () Bool)

(declare-fun b_next!1701 () Bool)

(assert (=> b!53148 (= b_free!1701 (not b_next!1701))))

(declare-fun tp!7205 () Bool)

(declare-fun b_and!2953 () Bool)

(assert (=> b!53148 (= tp!7205 b_and!2953)))

(declare-fun b!53154 () Bool)

(declare-fun b_free!1703 () Bool)

(declare-fun b_next!1703 () Bool)

(assert (=> b!53154 (= b_free!1703 (not b_next!1703))))

(declare-fun tp!7206 () Bool)

(declare-fun b_and!2955 () Bool)

(assert (=> b!53154 (= tp!7206 b_and!2955)))

(declare-fun b!53138 () Bool)

(declare-fun res!30141 () Bool)

(declare-fun e!34655 () Bool)

(assert (=> b!53138 (=> (not res!30141) (not e!34655))))

(declare-datatypes ((V!2669 0))(
  ( (V!2670 (val!1178 Int)) )
))
(declare-datatypes ((array!3456 0))(
  ( (array!3457 (arr!1650 (Array (_ BitVec 32) (_ BitVec 64))) (size!1879 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!790 0))(
  ( (ValueCellFull!790 (v!2240 V!2669)) (EmptyCell!790) )
))
(declare-datatypes ((array!3458 0))(
  ( (array!3459 (arr!1651 (Array (_ BitVec 32) ValueCell!790)) (size!1880 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!488 0))(
  ( (LongMapFixedSize!489 (defaultEntry!1958 Int) (mask!5789 (_ BitVec 32)) (extraKeys!1849 (_ BitVec 32)) (zeroValue!1876 V!2669) (minValue!1876 V!2669) (_size!293 (_ BitVec 32)) (_keys!3578 array!3456) (_values!1941 array!3458) (_vacant!293 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!302 0))(
  ( (Cell!303 (v!2241 LongMapFixedSize!488)) )
))
(declare-datatypes ((LongMap!302 0))(
  ( (LongMap!303 (underlying!162 Cell!302)) )
))
(declare-fun thiss!992 () LongMap!302)

(assert (=> b!53138 (= res!30141 (and (= (size!1880 (_values!1941 (v!2241 (underlying!162 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5789 (v!2241 (underlying!162 thiss!992))))) (= (size!1879 (_keys!3578 (v!2241 (underlying!162 thiss!992)))) (size!1880 (_values!1941 (v!2241 (underlying!162 thiss!992))))) (bvsge (mask!5789 (v!2241 (underlying!162 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1849 (v!2241 (underlying!162 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1849 (v!2241 (underlying!162 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!53139 () Bool)

(declare-fun e!34658 () Bool)

(declare-fun e!34654 () Bool)

(declare-fun mapRes!2471 () Bool)

(assert (=> b!53139 (= e!34658 (and e!34654 mapRes!2471))))

(declare-fun condMapEmpty!2472 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!488)

(declare-fun mapDefault!2471 () ValueCell!790)

