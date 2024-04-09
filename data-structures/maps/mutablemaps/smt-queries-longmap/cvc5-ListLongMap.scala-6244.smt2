; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79916 () Bool)

(assert start!79916)

(declare-fun b!939419 () Bool)

(declare-fun b_free!17785 () Bool)

(declare-fun b_next!17785 () Bool)

(assert (=> b!939419 (= b_free!17785 (not b_next!17785))))

(declare-fun tp!61819 () Bool)

(declare-fun b_and!29215 () Bool)

(assert (=> b!939419 (= tp!61819 b_and!29215)))

(declare-fun b!939416 () Bool)

(declare-fun e!527716 () Bool)

(declare-fun tp_is_empty!20293 () Bool)

(assert (=> b!939416 (= e!527716 tp_is_empty!20293)))

(declare-fun lt!424503 () Bool)

(declare-datatypes ((V!32023 0))(
  ( (V!32024 (val!10197 Int)) )
))
(declare-datatypes ((ValueCell!9665 0))(
  ( (ValueCellFull!9665 (v!12728 V!32023)) (EmptyCell!9665) )
))
(declare-datatypes ((array!56550 0))(
  ( (array!56551 (arr!27209 (Array (_ BitVec 32) ValueCell!9665)) (size!27669 (_ BitVec 32))) )
))
(declare-datatypes ((array!56552 0))(
  ( (array!56553 (arr!27210 (Array (_ BitVec 32) (_ BitVec 64))) (size!27670 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4480 0))(
  ( (LongMapFixedSize!4481 (defaultEntry!5531 Int) (mask!27038 (_ BitVec 32)) (extraKeys!5263 (_ BitVec 32)) (zeroValue!5367 V!32023) (minValue!5367 V!32023) (_size!2295 (_ BitVec 32)) (_keys!10375 array!56552) (_values!5554 array!56550) (_vacant!2295 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4480)

(declare-fun valid!1702 (LongMapFixedSize!4480) Bool)

(assert (=> start!79916 (= lt!424503 (valid!1702 thiss!1141))))

(assert (=> start!79916 false))

(declare-fun e!527714 () Bool)

(assert (=> start!79916 e!527714))

(declare-fun b!939417 () Bool)

(declare-fun e!527715 () Bool)

(declare-fun e!527713 () Bool)

(declare-fun mapRes!32219 () Bool)

(assert (=> b!939417 (= e!527715 (and e!527713 mapRes!32219))))

(declare-fun condMapEmpty!32219 () Bool)

(declare-fun mapDefault!32219 () ValueCell!9665)

