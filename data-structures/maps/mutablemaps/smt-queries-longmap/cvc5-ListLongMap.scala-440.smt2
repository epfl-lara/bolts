; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8264 () Bool)

(assert start!8264)

(declare-fun b!52633 () Bool)

(declare-fun b_free!1669 () Bool)

(declare-fun b_next!1669 () Bool)

(assert (=> b!52633 (= b_free!1669 (not b_next!1669))))

(declare-fun tp!7108 () Bool)

(declare-fun b_and!2889 () Bool)

(assert (=> b!52633 (= tp!7108 b_and!2889)))

(declare-fun b!52618 () Bool)

(declare-fun b_free!1671 () Bool)

(declare-fun b_next!1671 () Bool)

(assert (=> b!52618 (= b_free!1671 (not b_next!1671))))

(declare-fun tp!7110 () Bool)

(declare-fun b_and!2891 () Bool)

(assert (=> b!52618 (= tp!7110 b_and!2891)))

(declare-fun tp_is_empty!2251 () Bool)

(declare-fun e!34290 () Bool)

(declare-fun e!34301 () Bool)

(declare-datatypes ((V!2649 0))(
  ( (V!2650 (val!1170 Int)) )
))
(declare-datatypes ((array!3424 0))(
  ( (array!3425 (arr!1634 (Array (_ BitVec 32) (_ BitVec 64))) (size!1863 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!782 0))(
  ( (ValueCellFull!782 (v!2225 V!2649)) (EmptyCell!782) )
))
(declare-datatypes ((array!3426 0))(
  ( (array!3427 (arr!1635 (Array (_ BitVec 32) ValueCell!782)) (size!1864 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!472 0))(
  ( (LongMapFixedSize!473 (defaultEntry!1950 Int) (mask!5777 (_ BitVec 32)) (extraKeys!1841 (_ BitVec 32)) (zeroValue!1868 V!2649) (minValue!1868 V!2649) (_size!285 (_ BitVec 32)) (_keys!3570 array!3424) (_values!1933 array!3426) (_vacant!285 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!472)

(declare-fun array_inv!953 (array!3424) Bool)

(declare-fun array_inv!954 (array!3426) Bool)

(assert (=> b!52618 (= e!34290 (and tp!7110 tp_is_empty!2251 (array_inv!953 (_keys!3570 newMap!16)) (array_inv!954 (_values!1933 newMap!16)) e!34301))))

(declare-fun mapIsEmpty!2423 () Bool)

(declare-fun mapRes!2424 () Bool)

(assert (=> mapIsEmpty!2423 mapRes!2424))

(declare-fun b!52619 () Bool)

(declare-fun res!29876 () Bool)

(declare-fun e!34293 () Bool)

(assert (=> b!52619 (=> (not res!29876) (not e!34293))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!288 0))(
  ( (Cell!289 (v!2226 LongMapFixedSize!472)) )
))
(declare-datatypes ((LongMap!288 0))(
  ( (LongMap!289 (underlying!155 Cell!288)) )
))
(declare-fun thiss!992 () LongMap!288)

(assert (=> b!52619 (= res!29876 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1863 (_keys!3570 (v!2226 (underlying!155 thiss!992)))))))))

(declare-fun b!52620 () Bool)

(declare-fun e!34297 () Bool)

(assert (=> b!52620 (= e!34301 (and e!34297 mapRes!2424))))

(declare-fun condMapEmpty!2424 () Bool)

(declare-fun mapDefault!2424 () ValueCell!782)

