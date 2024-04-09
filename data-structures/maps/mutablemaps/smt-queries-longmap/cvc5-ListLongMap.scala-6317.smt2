; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81182 () Bool)

(assert start!81182)

(declare-fun b!949599 () Bool)

(declare-fun b_free!18223 () Bool)

(declare-fun b_next!18223 () Bool)

(assert (=> b!949599 (= b_free!18223 (not b_next!18223))))

(declare-fun tp!63259 () Bool)

(declare-fun b_and!29693 () Bool)

(assert (=> b!949599 (= tp!63259 b_and!29693)))

(declare-fun b!949596 () Bool)

(declare-fun e!534644 () Bool)

(declare-fun tp_is_empty!20731 () Bool)

(assert (=> b!949596 (= e!534644 tp_is_empty!20731)))

(declare-fun b!949597 () Bool)

(declare-fun e!534647 () Bool)

(declare-fun mapRes!33002 () Bool)

(assert (=> b!949597 (= e!534647 (and e!534644 mapRes!33002))))

(declare-fun condMapEmpty!33002 () Bool)

(declare-datatypes ((V!32607 0))(
  ( (V!32608 (val!10416 Int)) )
))
(declare-datatypes ((ValueCell!9884 0))(
  ( (ValueCellFull!9884 (v!12957 V!32607)) (EmptyCell!9884) )
))
(declare-datatypes ((array!57498 0))(
  ( (array!57499 (arr!27647 (Array (_ BitVec 32) ValueCell!9884)) (size!28125 (_ BitVec 32))) )
))
(declare-datatypes ((array!57500 0))(
  ( (array!57501 (arr!27648 (Array (_ BitVec 32) (_ BitVec 64))) (size!28126 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4918 0))(
  ( (LongMapFixedSize!4919 (defaultEntry!5768 Int) (mask!27549 (_ BitVec 32)) (extraKeys!5500 (_ BitVec 32)) (zeroValue!5604 V!32607) (minValue!5604 V!32607) (_size!2514 (_ BitVec 32)) (_keys!10696 array!57500) (_values!5791 array!57498) (_vacant!2514 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4918)

(declare-fun mapDefault!33002 () ValueCell!9884)

