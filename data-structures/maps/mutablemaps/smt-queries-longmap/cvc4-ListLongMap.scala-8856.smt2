; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107474 () Bool)

(assert start!107474)

(declare-fun b!1272653 () Bool)

(declare-fun b_free!27683 () Bool)

(declare-fun b_next!27683 () Bool)

(assert (=> b!1272653 (= b_free!27683 (not b_next!27683))))

(declare-fun tp!97573 () Bool)

(declare-fun b_and!45749 () Bool)

(assert (=> b!1272653 (= tp!97573 b_and!45749)))

(declare-fun mapIsEmpty!51178 () Bool)

(declare-fun mapRes!51178 () Bool)

(assert (=> mapIsEmpty!51178 mapRes!51178))

(declare-fun b!1272650 () Bool)

(declare-fun e!725987 () Bool)

(declare-datatypes ((V!49263 0))(
  ( (V!49264 (val!16601 Int)) )
))
(declare-datatypes ((ValueCell!15673 0))(
  ( (ValueCellFull!15673 (v!19236 V!49263)) (EmptyCell!15673) )
))
(declare-datatypes ((array!83307 0))(
  ( (array!83308 (arr!40181 (Array (_ BitVec 32) ValueCell!15673)) (size!40721 (_ BitVec 32))) )
))
(declare-datatypes ((array!83309 0))(
  ( (array!83310 (arr!40182 (Array (_ BitVec 32) (_ BitVec 64))) (size!40722 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6110 0))(
  ( (LongMapFixedSize!6111 (defaultEntry!6701 Int) (mask!34452 (_ BitVec 32)) (extraKeys!6380 (_ BitVec 32)) (zeroValue!6486 V!49263) (minValue!6486 V!49263) (_size!3110 (_ BitVec 32)) (_keys!12107 array!83309) (_values!6724 array!83307) (_vacant!3110 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6110)

(assert (=> b!1272650 (= e!725987 (and (= (size!40721 (_values!6724 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34452 thiss!1559))) (= (size!40722 (_keys!12107 thiss!1559)) (size!40721 (_values!6724 thiss!1559))) (bvslt (mask!34452 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun b!1272651 () Bool)

(declare-fun res!846552 () Bool)

(assert (=> b!1272651 (=> (not res!846552) (not e!725987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272651 (= res!846552 (validMask!0 (mask!34452 thiss!1559)))))

(declare-fun b!1272652 () Bool)

(declare-fun e!725988 () Bool)

(declare-fun tp_is_empty!33053 () Bool)

(assert (=> b!1272652 (= e!725988 tp_is_empty!33053)))

(declare-fun e!725990 () Bool)

(declare-fun e!725986 () Bool)

(declare-fun array_inv!30501 (array!83309) Bool)

(declare-fun array_inv!30502 (array!83307) Bool)

(assert (=> b!1272653 (= e!725986 (and tp!97573 tp_is_empty!33053 (array_inv!30501 (_keys!12107 thiss!1559)) (array_inv!30502 (_values!6724 thiss!1559)) e!725990))))

(declare-fun b!1272654 () Bool)

(declare-fun e!725989 () Bool)

(assert (=> b!1272654 (= e!725989 tp_is_empty!33053)))

(declare-fun b!1272655 () Bool)

(assert (=> b!1272655 (= e!725990 (and e!725989 mapRes!51178))))

(declare-fun condMapEmpty!51178 () Bool)

(declare-fun mapDefault!51178 () ValueCell!15673)

