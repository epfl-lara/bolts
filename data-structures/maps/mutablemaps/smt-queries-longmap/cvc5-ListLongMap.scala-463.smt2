; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8432 () Bool)

(assert start!8432)

(declare-fun b!57145 () Bool)

(declare-fun b_free!1945 () Bool)

(declare-fun b_next!1945 () Bool)

(assert (=> b!57145 (= b_free!1945 (not b_next!1945))))

(declare-fun tp!7941 () Bool)

(declare-fun b_and!3445 () Bool)

(assert (=> b!57145 (= tp!7941 b_and!3445)))

(declare-fun b!57152 () Bool)

(declare-fun b_free!1947 () Bool)

(declare-fun b_next!1947 () Bool)

(assert (=> b!57152 (= b_free!1947 (not b_next!1947))))

(declare-fun tp!7940 () Bool)

(declare-fun b_and!3447 () Bool)

(assert (=> b!57152 (= tp!7940 b_and!3447)))

(declare-fun b!57142 () Bool)

(declare-datatypes ((Unit!1485 0))(
  ( (Unit!1486) )
))
(declare-fun e!37666 () Unit!1485)

(declare-fun Unit!1487 () Unit!1485)

(assert (=> b!57142 (= e!37666 Unit!1487)))

(declare-fun b!57143 () Bool)

(declare-fun res!32015 () Bool)

(declare-fun e!37667 () Bool)

(assert (=> b!57143 (=> (not res!32015) (not e!37667))))

(declare-datatypes ((V!2833 0))(
  ( (V!2834 (val!1239 Int)) )
))
(declare-datatypes ((array!3702 0))(
  ( (array!3703 (arr!1772 (Array (_ BitVec 32) (_ BitVec 64))) (size!2001 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!851 0))(
  ( (ValueCellFull!851 (v!2362 V!2833)) (EmptyCell!851) )
))
(declare-datatypes ((array!3704 0))(
  ( (array!3705 (arr!1773 (Array (_ BitVec 32) ValueCell!851)) (size!2002 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!610 0))(
  ( (LongMapFixedSize!611 (defaultEntry!2021 Int) (mask!5895 (_ BitVec 32)) (extraKeys!1912 (_ BitVec 32)) (zeroValue!1939 V!2833) (minValue!1939 V!2833) (_size!354 (_ BitVec 32)) (_keys!3641 array!3702) (_values!2004 array!3704) (_vacant!354 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!420 0))(
  ( (Cell!421 (v!2363 LongMapFixedSize!610)) )
))
(declare-datatypes ((LongMap!420 0))(
  ( (LongMap!421 (underlying!221 Cell!420)) )
))
(declare-fun thiss!992 () LongMap!420)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!57143 (= res!32015 (validMask!0 (mask!5895 (v!2363 (underlying!221 thiss!992)))))))

(declare-fun mapIsEmpty!2841 () Bool)

(declare-fun mapRes!2842 () Bool)

(assert (=> mapIsEmpty!2841 mapRes!2842))

(declare-fun b!57144 () Bool)

(assert (=> b!57144 (= e!37667 (not (= (size!2002 (_values!2004 (v!2363 (underlying!221 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5895 (v!2363 (underlying!221 thiss!992)))))))))

(declare-fun tp_is_empty!2389 () Bool)

(declare-fun e!37660 () Bool)

(declare-fun e!37670 () Bool)

(declare-fun array_inv!1047 (array!3702) Bool)

(declare-fun array_inv!1048 (array!3704) Bool)

(assert (=> b!57145 (= e!37660 (and tp!7941 tp_is_empty!2389 (array_inv!1047 (_keys!3641 (v!2363 (underlying!221 thiss!992)))) (array_inv!1048 (_values!2004 (v!2363 (underlying!221 thiss!992)))) e!37670))))

(declare-fun b!57146 () Bool)

(declare-fun res!32019 () Bool)

(declare-fun e!37674 () Bool)

(assert (=> b!57146 (=> (not res!32019) (not e!37674))))

(declare-fun newMap!16 () LongMapFixedSize!610)

(assert (=> b!57146 (= res!32019 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5895 newMap!16)) (_size!354 (v!2363 (underlying!221 thiss!992)))))))

(declare-fun b!57147 () Bool)

(declare-fun res!32016 () Bool)

(assert (=> b!57147 (=> (not res!32016) (not e!37674))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!57147 (= res!32016 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2001 (_keys!3641 (v!2363 (underlying!221 thiss!992)))))))))

(declare-fun b!57148 () Bool)

(declare-fun e!37673 () Bool)

(declare-fun e!37662 () Bool)

(assert (=> b!57148 (= e!37673 (and e!37662 mapRes!2842))))

(declare-fun condMapEmpty!2842 () Bool)

(declare-fun mapDefault!2842 () ValueCell!851)

