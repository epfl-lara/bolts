; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80398 () Bool)

(assert start!80398)

(declare-fun b!943741 () Bool)

(declare-fun b_free!18013 () Bool)

(declare-fun b_next!18013 () Bool)

(assert (=> b!943741 (= b_free!18013 (not b_next!18013))))

(declare-fun tp!62549 () Bool)

(declare-fun b_and!29449 () Bool)

(assert (=> b!943741 (= tp!62549 b_and!29449)))

(declare-fun res!634135 () Bool)

(declare-fun e!530670 () Bool)

(assert (=> start!80398 (=> (not res!634135) (not e!530670))))

(declare-datatypes ((V!32327 0))(
  ( (V!32328 (val!10311 Int)) )
))
(declare-datatypes ((ValueCell!9779 0))(
  ( (ValueCellFull!9779 (v!12843 V!32327)) (EmptyCell!9779) )
))
(declare-datatypes ((array!57032 0))(
  ( (array!57033 (arr!27437 (Array (_ BitVec 32) ValueCell!9779)) (size!27904 (_ BitVec 32))) )
))
(declare-datatypes ((array!57034 0))(
  ( (array!57035 (arr!27438 (Array (_ BitVec 32) (_ BitVec 64))) (size!27905 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4708 0))(
  ( (LongMapFixedSize!4709 (defaultEntry!5649 Int) (mask!27280 (_ BitVec 32)) (extraKeys!5381 (_ BitVec 32)) (zeroValue!5485 V!32327) (minValue!5485 V!32327) (_size!2409 (_ BitVec 32)) (_keys!10523 array!57034) (_values!5672 array!57032) (_vacant!2409 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4708)

(declare-fun valid!1779 (LongMapFixedSize!4708) Bool)

(assert (=> start!80398 (= res!634135 (valid!1779 thiss!1141))))

(assert (=> start!80398 e!530670))

(declare-fun e!530668 () Bool)

(assert (=> start!80398 e!530668))

(assert (=> start!80398 true))

(declare-fun mapIsEmpty!32607 () Bool)

(declare-fun mapRes!32607 () Bool)

(assert (=> mapIsEmpty!32607 mapRes!32607))

(declare-fun b!943739 () Bool)

(declare-fun e!530673 () Bool)

(declare-fun e!530671 () Bool)

(assert (=> b!943739 (= e!530673 (and e!530671 mapRes!32607))))

(declare-fun condMapEmpty!32607 () Bool)

(declare-fun mapDefault!32607 () ValueCell!9779)

