; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8246 () Bool)

(assert start!8246)

(declare-fun b!52243 () Bool)

(declare-fun b_free!1633 () Bool)

(declare-fun b_next!1633 () Bool)

(assert (=> b!52243 (= b_free!1633 (not b_next!1633))))

(declare-fun tp!7001 () Bool)

(declare-fun b_and!2853 () Bool)

(assert (=> b!52243 (= tp!7001 b_and!2853)))

(declare-fun b!52242 () Bool)

(declare-fun b_free!1635 () Bool)

(declare-fun b_next!1635 () Bool)

(assert (=> b!52242 (= b_free!1635 (not b_next!1635))))

(declare-fun tp!7002 () Bool)

(declare-fun b_and!2855 () Bool)

(assert (=> b!52242 (= tp!7002 b_and!2855)))

(declare-fun b!52240 () Bool)

(declare-fun e!33946 () Bool)

(assert (=> b!52240 (= e!33946 false)))

(declare-fun lt!21265 () Bool)

(declare-datatypes ((V!2625 0))(
  ( (V!2626 (val!1161 Int)) )
))
(declare-datatypes ((array!3388 0))(
  ( (array!3389 (arr!1616 (Array (_ BitVec 32) (_ BitVec 64))) (size!1845 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!773 0))(
  ( (ValueCellFull!773 (v!2207 V!2625)) (EmptyCell!773) )
))
(declare-datatypes ((array!3390 0))(
  ( (array!3391 (arr!1617 (Array (_ BitVec 32) ValueCell!773)) (size!1846 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!454 0))(
  ( (LongMapFixedSize!455 (defaultEntry!1941 Int) (mask!5762 (_ BitVec 32)) (extraKeys!1832 (_ BitVec 32)) (zeroValue!1859 V!2625) (minValue!1859 V!2625) (_size!276 (_ BitVec 32)) (_keys!3561 array!3388) (_values!1924 array!3390) (_vacant!276 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!454)

(declare-fun valid!159 (LongMapFixedSize!454) Bool)

(assert (=> b!52240 (= lt!21265 (valid!159 newMap!16))))

(declare-fun b!52241 () Bool)

(declare-fun e!33945 () Bool)

(declare-fun tp_is_empty!2233 () Bool)

(assert (=> b!52241 (= e!33945 tp_is_empty!2233)))

(declare-fun e!33947 () Bool)

(declare-fun e!33943 () Bool)

(declare-fun array_inv!943 (array!3388) Bool)

(declare-fun array_inv!944 (array!3390) Bool)

(assert (=> b!52242 (= e!33947 (and tp!7002 tp_is_empty!2233 (array_inv!943 (_keys!3561 newMap!16)) (array_inv!944 (_values!1924 newMap!16)) e!33943))))

(declare-fun mapIsEmpty!2369 () Bool)

(declare-fun mapRes!2369 () Bool)

(assert (=> mapIsEmpty!2369 mapRes!2369))

(declare-fun b!52244 () Bool)

(declare-fun e!33938 () Bool)

(declare-fun e!33937 () Bool)

(assert (=> b!52244 (= e!33938 e!33937)))

(declare-fun b!52245 () Bool)

(declare-fun e!33936 () Bool)

(declare-fun e!33939 () Bool)

(assert (=> b!52245 (= e!33936 (and e!33939 mapRes!2369))))

(declare-fun condMapEmpty!2369 () Bool)

(declare-datatypes ((Cell!270 0))(
  ( (Cell!271 (v!2208 LongMapFixedSize!454)) )
))
(declare-datatypes ((LongMap!270 0))(
  ( (LongMap!271 (underlying!146 Cell!270)) )
))
(declare-fun thiss!992 () LongMap!270)

(declare-fun mapDefault!2369 () ValueCell!773)

