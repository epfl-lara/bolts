; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8342 () Bool)

(assert start!8342)

(declare-fun b!55041 () Bool)

(declare-fun b_free!1825 () Bool)

(declare-fun b_next!1825 () Bool)

(assert (=> b!55041 (= b_free!1825 (not b_next!1825))))

(declare-fun tp!7576 () Bool)

(declare-fun b_and!3201 () Bool)

(assert (=> b!55041 (= tp!7576 b_and!3201)))

(declare-fun b!55046 () Bool)

(declare-fun b_free!1827 () Bool)

(declare-fun b_next!1827 () Bool)

(assert (=> b!55046 (= b_free!1827 (not b_next!1827))))

(declare-fun tp!7575 () Bool)

(declare-fun b_and!3203 () Bool)

(assert (=> b!55046 (= tp!7575 b_and!3203)))

(declare-fun b!55037 () Bool)

(declare-fun e!36078 () Bool)

(declare-fun tp_is_empty!2329 () Bool)

(assert (=> b!55037 (= e!36078 tp_is_empty!2329)))

(declare-fun b!55038 () Bool)

(declare-fun e!36081 () Bool)

(assert (=> b!55038 (= e!36081 tp_is_empty!2329)))

(declare-fun b!55039 () Bool)

(declare-fun res!31047 () Bool)

(declare-fun e!36085 () Bool)

(assert (=> b!55039 (=> (not res!31047) (not e!36085))))

(declare-datatypes ((V!2753 0))(
  ( (V!2754 (val!1209 Int)) )
))
(declare-datatypes ((array!3580 0))(
  ( (array!3581 (arr!1712 (Array (_ BitVec 32) (_ BitVec 64))) (size!1941 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!821 0))(
  ( (ValueCellFull!821 (v!2300 V!2753)) (EmptyCell!821) )
))
(declare-datatypes ((array!3582 0))(
  ( (array!3583 (arr!1713 (Array (_ BitVec 32) ValueCell!821)) (size!1942 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!550 0))(
  ( (LongMapFixedSize!551 (defaultEntry!1989 Int) (mask!5842 (_ BitVec 32)) (extraKeys!1880 (_ BitVec 32)) (zeroValue!1907 V!2753) (minValue!1907 V!2753) (_size!324 (_ BitVec 32)) (_keys!3609 array!3580) (_values!1972 array!3582) (_vacant!324 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!550)

(declare-datatypes ((Cell!360 0))(
  ( (Cell!361 (v!2301 LongMapFixedSize!550)) )
))
(declare-datatypes ((LongMap!360 0))(
  ( (LongMap!361 (underlying!191 Cell!360)) )
))
(declare-fun thiss!992 () LongMap!360)

(assert (=> b!55039 (= res!31047 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5842 newMap!16)) (_size!324 (v!2301 (underlying!191 thiss!992)))))))

(declare-fun b!55040 () Bool)

(declare-fun e!36088 () Bool)

(assert (=> b!55040 (= e!36088 tp_is_empty!2329)))

(declare-fun e!36084 () Bool)

(declare-fun e!36082 () Bool)

(declare-fun array_inv!1003 (array!3580) Bool)

(declare-fun array_inv!1004 (array!3582) Bool)

(assert (=> b!55041 (= e!36084 (and tp!7576 tp_is_empty!2329 (array_inv!1003 (_keys!3609 (v!2301 (underlying!191 thiss!992)))) (array_inv!1004 (_values!1972 (v!2301 (underlying!191 thiss!992)))) e!36082))))

(declare-fun mapIsEmpty!2657 () Bool)

(declare-fun mapRes!2658 () Bool)

(assert (=> mapIsEmpty!2657 mapRes!2658))

(declare-fun mapIsEmpty!2658 () Bool)

(declare-fun mapRes!2657 () Bool)

(assert (=> mapIsEmpty!2658 mapRes!2657))

(declare-fun b!55042 () Bool)

(declare-fun e!36083 () Bool)

(declare-fun e!36080 () Bool)

(assert (=> b!55042 (= e!36083 e!36080)))

(declare-fun b!55043 () Bool)

(declare-fun e!36074 () Bool)

(assert (=> b!55043 (= e!36082 (and e!36074 mapRes!2657))))

(declare-fun condMapEmpty!2657 () Bool)

(declare-fun mapDefault!2657 () ValueCell!821)

