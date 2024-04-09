; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15470 () Bool)

(assert start!15470)

(declare-fun b!153619 () Bool)

(declare-fun b_free!3201 () Bool)

(declare-fun b_next!3201 () Bool)

(assert (=> b!153619 (= b_free!3201 (not b_next!3201))))

(declare-fun tp!12121 () Bool)

(declare-fun b_and!9581 () Bool)

(assert (=> b!153619 (= tp!12121 b_and!9581)))

(declare-fun b!153615 () Bool)

(declare-fun b_free!3203 () Bool)

(declare-fun b_next!3203 () Bool)

(assert (=> b!153615 (= b_free!3203 (not b_next!3203))))

(declare-fun tp!12120 () Bool)

(declare-fun b_and!9583 () Bool)

(assert (=> b!153615 (= tp!12120 b_and!9583)))

(declare-fun b!153609 () Bool)

(declare-fun e!100335 () Bool)

(declare-datatypes ((V!3669 0))(
  ( (V!3670 (val!1553 Int)) )
))
(declare-datatypes ((array!5082 0))(
  ( (array!5083 (arr!2400 (Array (_ BitVec 32) (_ BitVec 64))) (size!2677 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1165 0))(
  ( (ValueCellFull!1165 (v!3405 V!3669)) (EmptyCell!1165) )
))
(declare-datatypes ((array!5084 0))(
  ( (array!5085 (arr!2401 (Array (_ BitVec 32) ValueCell!1165)) (size!2678 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1238 0))(
  ( (LongMapFixedSize!1239 (defaultEntry!3058 Int) (mask!7458 (_ BitVec 32)) (extraKeys!2799 (_ BitVec 32)) (zeroValue!2901 V!3669) (minValue!2901 V!3669) (_size!668 (_ BitVec 32)) (_keys!4831 array!5082) (_values!3041 array!5084) (_vacant!668 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1016 0))(
  ( (Cell!1017 (v!3406 LongMapFixedSize!1238)) )
))
(declare-datatypes ((LongMap!1016 0))(
  ( (LongMap!1017 (underlying!519 Cell!1016)) )
))
(declare-fun thiss!992 () LongMap!1016)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!153609 (= e!100335 (and (or (= (select (arr!2400 (_keys!4831 (v!3406 (underlying!519 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2400 (_keys!4831 (v!3406 (underlying!519 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000) (bvsge (bvsub from!355 #b00000000000000000000000000000001) from!355)))))

(declare-fun b!153610 () Bool)

(declare-fun res!72596 () Bool)

(assert (=> b!153610 (=> (not res!72596) (not e!100335))))

(assert (=> b!153610 (= res!72596 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2677 (_keys!4831 (v!3406 (underlying!519 thiss!992)))))))))

(declare-fun res!72600 () Bool)

(assert (=> start!15470 (=> (not res!72600) (not e!100335))))

(declare-fun valid!605 (LongMap!1016) Bool)

(assert (=> start!15470 (= res!72600 (valid!605 thiss!992))))

(assert (=> start!15470 e!100335))

(declare-fun e!100337 () Bool)

(assert (=> start!15470 e!100337))

(assert (=> start!15470 true))

(declare-fun e!100331 () Bool)

(assert (=> start!15470 e!100331))

(declare-fun b!153611 () Bool)

(declare-fun e!100338 () Bool)

(declare-fun tp_is_empty!3017 () Bool)

(assert (=> b!153611 (= e!100338 tp_is_empty!3017)))

(declare-fun b!153612 () Bool)

(declare-fun e!100333 () Bool)

(assert (=> b!153612 (= e!100337 e!100333)))

(declare-fun b!153613 () Bool)

(declare-fun res!72599 () Bool)

(assert (=> b!153613 (=> (not res!72599) (not e!100335))))

(declare-fun newMap!16 () LongMapFixedSize!1238)

(declare-fun valid!606 (LongMapFixedSize!1238) Bool)

(assert (=> b!153613 (= res!72599 (valid!606 newMap!16))))

(declare-fun mapIsEmpty!5137 () Bool)

(declare-fun mapRes!5138 () Bool)

(assert (=> mapIsEmpty!5137 mapRes!5138))

(declare-fun mapIsEmpty!5138 () Bool)

(declare-fun mapRes!5137 () Bool)

(assert (=> mapIsEmpty!5138 mapRes!5137))

(declare-fun b!153614 () Bool)

(declare-fun e!100330 () Bool)

(assert (=> b!153614 (= e!100333 e!100330)))

(declare-fun e!100341 () Bool)

(declare-fun array_inv!1489 (array!5082) Bool)

(declare-fun array_inv!1490 (array!5084) Bool)

(assert (=> b!153615 (= e!100331 (and tp!12120 tp_is_empty!3017 (array_inv!1489 (_keys!4831 newMap!16)) (array_inv!1490 (_values!3041 newMap!16)) e!100341))))

(declare-fun b!153616 () Bool)

(declare-fun e!100334 () Bool)

(assert (=> b!153616 (= e!100334 tp_is_empty!3017)))

(declare-fun b!153617 () Bool)

(assert (=> b!153617 (= e!100341 (and e!100334 mapRes!5137))))

(declare-fun condMapEmpty!5137 () Bool)

(declare-fun mapDefault!5138 () ValueCell!1165)

