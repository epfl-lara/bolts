; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14188 () Bool)

(assert start!14188)

(declare-fun b!131644 () Bool)

(declare-fun b_free!2905 () Bool)

(declare-fun b_next!2905 () Bool)

(assert (=> b!131644 (= b_free!2905 (not b_next!2905))))

(declare-fun tp!11152 () Bool)

(declare-fun b_and!8169 () Bool)

(assert (=> b!131644 (= tp!11152 b_and!8169)))

(declare-fun b!131640 () Bool)

(declare-fun b_free!2907 () Bool)

(declare-fun b_next!2907 () Bool)

(assert (=> b!131640 (= b_free!2907 (not b_next!2907))))

(declare-fun tp!11151 () Bool)

(declare-fun b_and!8171 () Bool)

(assert (=> b!131640 (= tp!11151 b_and!8171)))

(declare-fun mapIsEmpty!4613 () Bool)

(declare-fun mapRes!4613 () Bool)

(assert (=> mapIsEmpty!4613 mapRes!4613))

(declare-fun e!85860 () Bool)

(declare-fun tp_is_empty!2869 () Bool)

(declare-fun e!85852 () Bool)

(declare-datatypes ((V!3473 0))(
  ( (V!3474 (val!1479 Int)) )
))
(declare-datatypes ((array!4762 0))(
  ( (array!4763 (arr!2252 (Array (_ BitVec 32) (_ BitVec 64))) (size!2520 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1091 0))(
  ( (ValueCellFull!1091 (v!3183 V!3473)) (EmptyCell!1091) )
))
(declare-datatypes ((array!4764 0))(
  ( (array!4765 (arr!2253 (Array (_ BitVec 32) ValueCell!1091)) (size!2521 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1090 0))(
  ( (LongMapFixedSize!1091 (defaultEntry!2853 Int) (mask!7147 (_ BitVec 32)) (extraKeys!2620 (_ BitVec 32)) (zeroValue!2709 V!3473) (minValue!2709 V!3473) (_size!594 (_ BitVec 32)) (_keys!4600 array!4762) (_values!2836 array!4764) (_vacant!594 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1090)

(declare-fun array_inv!1385 (array!4762) Bool)

(declare-fun array_inv!1386 (array!4764) Bool)

(assert (=> b!131640 (= e!85852 (and tp!11151 tp_is_empty!2869 (array_inv!1385 (_keys!4600 newMap!16)) (array_inv!1386 (_values!2836 newMap!16)) e!85860))))

(declare-fun b!131641 () Bool)

(declare-fun e!85862 () Bool)

(assert (=> b!131641 (= e!85862 tp_is_empty!2869)))

(declare-fun res!63434 () Bool)

(declare-fun e!85864 () Bool)

(assert (=> start!14188 (=> (not res!63434) (not e!85864))))

(declare-datatypes ((Cell!880 0))(
  ( (Cell!881 (v!3184 LongMapFixedSize!1090)) )
))
(declare-datatypes ((LongMap!880 0))(
  ( (LongMap!881 (underlying!451 Cell!880)) )
))
(declare-fun thiss!992 () LongMap!880)

(declare-fun valid!516 (LongMap!880) Bool)

(assert (=> start!14188 (= res!63434 (valid!516 thiss!992))))

(assert (=> start!14188 e!85864))

(declare-fun e!85851 () Bool)

(assert (=> start!14188 e!85851))

(assert (=> start!14188 true))

(assert (=> start!14188 e!85852))

(declare-fun b!131642 () Bool)

(declare-fun e!85855 () Bool)

(declare-fun e!85863 () Bool)

(assert (=> b!131642 (= e!85855 e!85863)))

(declare-fun mapNonEmpty!4613 () Bool)

(declare-fun mapRes!4614 () Bool)

(declare-fun tp!11153 () Bool)

(declare-fun e!85854 () Bool)

(assert (=> mapNonEmpty!4613 (= mapRes!4614 (and tp!11153 e!85854))))

(declare-fun mapKey!4613 () (_ BitVec 32))

(declare-fun mapValue!4614 () ValueCell!1091)

(declare-fun mapRest!4613 () (Array (_ BitVec 32) ValueCell!1091))

(assert (=> mapNonEmpty!4613 (= (arr!2253 (_values!2836 (v!3184 (underlying!451 thiss!992)))) (store mapRest!4613 mapKey!4613 mapValue!4614))))

(declare-fun b!131643 () Bool)

(declare-fun e!85859 () Bool)

(declare-fun e!85853 () Bool)

(assert (=> b!131643 (= e!85859 (and e!85853 mapRes!4614))))

(declare-fun condMapEmpty!4614 () Bool)

(declare-fun mapDefault!4614 () ValueCell!1091)

