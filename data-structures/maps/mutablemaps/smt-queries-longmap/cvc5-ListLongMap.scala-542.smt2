; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14108 () Bool)

(assert start!14108)

(declare-fun b!130898 () Bool)

(declare-fun b_free!2893 () Bool)

(declare-fun b_next!2893 () Bool)

(assert (=> b!130898 (= b_free!2893 (not b_next!2893))))

(declare-fun tp!11112 () Bool)

(declare-fun b_and!8121 () Bool)

(assert (=> b!130898 (= tp!11112 b_and!8121)))

(declare-fun b!130902 () Bool)

(declare-fun b_free!2895 () Bool)

(declare-fun b_next!2895 () Bool)

(assert (=> b!130902 (= b_free!2895 (not b_next!2895))))

(declare-fun tp!11111 () Bool)

(declare-fun b_and!8123 () Bool)

(assert (=> b!130902 (= tp!11111 b_and!8123)))

(declare-fun b!130889 () Bool)

(declare-fun res!63100 () Bool)

(declare-fun e!85391 () Bool)

(assert (=> b!130889 (=> (not res!63100) (not e!85391))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3465 0))(
  ( (V!3466 (val!1476 Int)) )
))
(declare-datatypes ((array!4748 0))(
  ( (array!4749 (arr!2246 (Array (_ BitVec 32) (_ BitVec 64))) (size!2513 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1088 0))(
  ( (ValueCellFull!1088 (v!3172 V!3465)) (EmptyCell!1088) )
))
(declare-datatypes ((array!4750 0))(
  ( (array!4751 (arr!2247 (Array (_ BitVec 32) ValueCell!1088)) (size!2514 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1084 0))(
  ( (LongMapFixedSize!1085 (defaultEntry!2842 Int) (mask!7130 (_ BitVec 32)) (extraKeys!2611 (_ BitVec 32)) (zeroValue!2699 V!3465) (minValue!2699 V!3465) (_size!591 (_ BitVec 32)) (_keys!4587 array!4748) (_values!2825 array!4750) (_vacant!591 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!874 0))(
  ( (Cell!875 (v!3173 LongMapFixedSize!1084)) )
))
(declare-datatypes ((LongMap!874 0))(
  ( (LongMap!875 (underlying!448 Cell!874)) )
))
(declare-fun thiss!992 () LongMap!874)

(assert (=> b!130889 (= res!63100 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2513 (_keys!4587 (v!3173 (underlying!448 thiss!992)))))))))

(declare-fun mapIsEmpty!4589 () Bool)

(declare-fun mapRes!4589 () Bool)

(assert (=> mapIsEmpty!4589 mapRes!4589))

(declare-fun b!130890 () Bool)

(declare-fun e!85381 () Bool)

(declare-fun tp_is_empty!2863 () Bool)

(assert (=> b!130890 (= e!85381 tp_is_empty!2863)))

(declare-fun b!130891 () Bool)

(declare-fun res!63097 () Bool)

(declare-fun e!85383 () Bool)

(assert (=> b!130891 (=> (not res!63097) (not e!85383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!130891 (= res!63097 (validMask!0 (mask!7130 (v!3173 (underlying!448 thiss!992)))))))

(declare-fun b!130892 () Bool)

(declare-fun e!85388 () Bool)

(assert (=> b!130892 (= e!85388 tp_is_empty!2863)))

(declare-fun b!130893 () Bool)

(declare-fun res!63096 () Bool)

(assert (=> b!130893 (=> (not res!63096) (not e!85391))))

(declare-fun newMap!16 () LongMapFixedSize!1084)

(assert (=> b!130893 (= res!63096 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7130 newMap!16)) (_size!591 (v!3173 (underlying!448 thiss!992)))))))

(declare-fun b!130894 () Bool)

(declare-fun e!85386 () Bool)

(assert (=> b!130894 (= e!85386 tp_is_empty!2863)))

(declare-fun b!130895 () Bool)

(declare-fun e!85382 () Bool)

(declare-fun mapRes!4590 () Bool)

(assert (=> b!130895 (= e!85382 (and e!85381 mapRes!4590))))

(declare-fun condMapEmpty!4590 () Bool)

(declare-fun mapDefault!4590 () ValueCell!1088)

