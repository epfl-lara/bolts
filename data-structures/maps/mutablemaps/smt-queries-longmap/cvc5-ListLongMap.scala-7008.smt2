; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89068 () Bool)

(assert start!89068)

(declare-fun b!1020842 () Bool)

(declare-fun b_free!20101 () Bool)

(declare-fun b_next!20101 () Bool)

(assert (=> b!1020842 (= b_free!20101 (not b_next!20101))))

(declare-fun tp!71330 () Bool)

(declare-fun b_and!32307 () Bool)

(assert (=> b!1020842 (= tp!71330 b_and!32307)))

(declare-fun tp_is_empty!23821 () Bool)

(declare-fun e!574762 () Bool)

(declare-datatypes ((V!36635 0))(
  ( (V!36636 (val!11961 Int)) )
))
(declare-datatypes ((array!63664 0))(
  ( (array!63665 (arr!30643 (Array (_ BitVec 32) (_ BitVec 64))) (size!31155 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11207 0))(
  ( (ValueCellFull!11207 (v!14510 V!36635)) (EmptyCell!11207) )
))
(declare-datatypes ((array!63666 0))(
  ( (array!63667 (arr!30644 (Array (_ BitVec 32) ValueCell!11207)) (size!31156 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5008 0))(
  ( (LongMapFixedSize!5009 (defaultEntry!5856 Int) (mask!29408 (_ BitVec 32)) (extraKeys!5588 (_ BitVec 32)) (zeroValue!5692 V!36635) (minValue!5692 V!36635) (_size!2559 (_ BitVec 32)) (_keys!10998 array!63664) (_values!5879 array!63666) (_vacant!2559 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1076 0))(
  ( (Cell!1077 (v!14511 LongMapFixedSize!5008)) )
))
(declare-datatypes ((LongMap!1076 0))(
  ( (LongMap!1077 (underlying!549 Cell!1076)) )
))
(declare-fun thiss!908 () LongMap!1076)

(declare-fun e!574760 () Bool)

(declare-fun array_inv!23633 (array!63664) Bool)

(declare-fun array_inv!23634 (array!63666) Bool)

(assert (=> b!1020842 (= e!574762 (and tp!71330 tp_is_empty!23821 (array_inv!23633 (_keys!10998 (v!14511 (underlying!549 thiss!908)))) (array_inv!23634 (_values!5879 (v!14511 (underlying!549 thiss!908)))) e!574760))))

(declare-fun b!1020843 () Bool)

(declare-fun e!574763 () Bool)

(assert (=> b!1020843 (= e!574763 tp_is_empty!23821)))

(declare-fun b!1020844 () Bool)

(declare-fun e!574759 () Bool)

(declare-fun valid!1876 (LongMapFixedSize!5008) Bool)

(assert (=> b!1020844 (= e!574759 (not (valid!1876 (v!14511 (underlying!549 thiss!908)))))))

(declare-fun mapIsEmpty!37140 () Bool)

(declare-fun mapRes!37140 () Bool)

(assert (=> mapIsEmpty!37140 mapRes!37140))

(declare-fun b!1020845 () Bool)

(declare-fun e!574761 () Bool)

(assert (=> b!1020845 (= e!574760 (and e!574761 mapRes!37140))))

(declare-fun condMapEmpty!37140 () Bool)

(declare-fun mapDefault!37140 () ValueCell!11207)

