; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8206 () Bool)

(assert start!8206)

(declare-fun b!51811 () Bool)

(declare-fun b_free!1609 () Bool)

(declare-fun b_next!1609 () Bool)

(assert (=> b!51811 (= b_free!1609 (not b_next!1609))))

(declare-fun tp!6924 () Bool)

(declare-fun b_and!2829 () Bool)

(assert (=> b!51811 (= tp!6924 b_and!2829)))

(declare-fun b!51810 () Bool)

(declare-fun b_free!1611 () Bool)

(declare-fun b_next!1611 () Bool)

(assert (=> b!51810 (= b_free!1611 (not b_next!1611))))

(declare-fun tp!6921 () Bool)

(declare-fun b_and!2831 () Bool)

(assert (=> b!51810 (= tp!6921 b_and!2831)))

(declare-fun mapIsEmpty!2327 () Bool)

(declare-fun mapRes!2328 () Bool)

(assert (=> mapIsEmpty!2327 mapRes!2328))

(declare-fun e!33631 () Bool)

(declare-fun e!33627 () Bool)

(declare-fun tp_is_empty!2221 () Bool)

(declare-datatypes ((V!2609 0))(
  ( (V!2610 (val!1155 Int)) )
))
(declare-datatypes ((array!3362 0))(
  ( (array!3363 (arr!1604 (Array (_ BitVec 32) (_ BitVec 64))) (size!1832 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!767 0))(
  ( (ValueCellFull!767 (v!2195 V!2609)) (EmptyCell!767) )
))
(declare-datatypes ((array!3364 0))(
  ( (array!3365 (arr!1605 (Array (_ BitVec 32) ValueCell!767)) (size!1833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!442 0))(
  ( (LongMapFixedSize!443 (defaultEntry!1935 Int) (mask!5749 (_ BitVec 32)) (extraKeys!1826 (_ BitVec 32)) (zeroValue!1853 V!2609) (minValue!1853 V!2609) (_size!270 (_ BitVec 32)) (_keys!3553 array!3362) (_values!1918 array!3364) (_vacant!270 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!442)

(declare-fun array_inv!933 (array!3362) Bool)

(declare-fun array_inv!934 (array!3364) Bool)

(assert (=> b!51810 (= e!33627 (and tp!6921 tp_is_empty!2221 (array_inv!933 (_keys!3553 newMap!16)) (array_inv!934 (_values!1918 newMap!16)) e!33631))))

(declare-datatypes ((Cell!260 0))(
  ( (Cell!261 (v!2196 LongMapFixedSize!442)) )
))
(declare-datatypes ((LongMap!260 0))(
  ( (LongMap!261 (underlying!141 Cell!260)) )
))
(declare-fun thiss!992 () LongMap!260)

(declare-fun e!33626 () Bool)

(declare-fun e!33623 () Bool)

(assert (=> b!51811 (= e!33623 (and tp!6924 tp_is_empty!2221 (array_inv!933 (_keys!3553 (v!2196 (underlying!141 thiss!992)))) (array_inv!934 (_values!1918 (v!2196 (underlying!141 thiss!992)))) e!33626))))

(declare-fun b!51812 () Bool)

(declare-fun e!33622 () Bool)

(declare-datatypes ((List!1353 0))(
  ( (Nil!1350) (Cons!1349 (h!1929 (_ BitVec 64)) (t!4395 List!1353)) )
))
(declare-fun arrayNoDuplicates!0 (array!3362 (_ BitVec 32) List!1353) Bool)

(assert (=> b!51812 (= e!33622 (not (arrayNoDuplicates!0 (_keys!3553 (v!2196 (underlying!141 thiss!992))) #b00000000000000000000000000000000 Nil!1350)))))

(declare-fun b!51813 () Bool)

(declare-fun e!33620 () Bool)

(assert (=> b!51813 (= e!33631 (and e!33620 mapRes!2328))))

(declare-fun condMapEmpty!2328 () Bool)

(declare-fun mapDefault!2328 () ValueCell!767)

