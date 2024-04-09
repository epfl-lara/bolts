; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8298 () Bool)

(assert start!8298)

(declare-fun b!53737 () Bool)

(declare-fun b_free!1737 () Bool)

(declare-fun b_next!1737 () Bool)

(assert (=> b!53737 (= b_free!1737 (not b_next!1737))))

(declare-fun tp!7314 () Bool)

(declare-fun b_and!3025 () Bool)

(assert (=> b!53737 (= tp!7314 b_and!3025)))

(declare-fun b!53736 () Bool)

(declare-fun b_free!1739 () Bool)

(declare-fun b_next!1739 () Bool)

(assert (=> b!53736 (= b_free!1739 (not b_next!1739))))

(declare-fun tp!7312 () Bool)

(declare-fun b_and!3027 () Bool)

(assert (=> b!53736 (= tp!7312 b_and!3027)))

(declare-fun mapIsEmpty!2525 () Bool)

(declare-fun mapRes!2525 () Bool)

(assert (=> mapIsEmpty!2525 mapRes!2525))

(declare-fun b!53723 () Bool)

(declare-fun res!30444 () Bool)

(declare-fun e!35069 () Bool)

(assert (=> b!53723 (=> (not res!30444) (not e!35069))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2693 0))(
  ( (V!2694 (val!1187 Int)) )
))
(declare-datatypes ((array!3492 0))(
  ( (array!3493 (arr!1668 (Array (_ BitVec 32) (_ BitVec 64))) (size!1897 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!799 0))(
  ( (ValueCellFull!799 (v!2258 V!2693)) (EmptyCell!799) )
))
(declare-datatypes ((array!3494 0))(
  ( (array!3495 (arr!1669 (Array (_ BitVec 32) ValueCell!799)) (size!1898 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!506 0))(
  ( (LongMapFixedSize!507 (defaultEntry!1967 Int) (mask!5804 (_ BitVec 32)) (extraKeys!1858 (_ BitVec 32)) (zeroValue!1885 V!2693) (minValue!1885 V!2693) (_size!302 (_ BitVec 32)) (_keys!3587 array!3492) (_values!1950 array!3494) (_vacant!302 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!320 0))(
  ( (Cell!321 (v!2259 LongMapFixedSize!506)) )
))
(declare-datatypes ((LongMap!320 0))(
  ( (LongMap!321 (underlying!171 Cell!320)) )
))
(declare-fun thiss!992 () LongMap!320)

(assert (=> b!53723 (= res!30444 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1897 (_keys!3587 (v!2259 (underlying!171 thiss!992)))))))))

(declare-fun b!53724 () Bool)

(declare-fun res!30437 () Bool)

(declare-fun e!35067 () Bool)

(assert (=> b!53724 (=> (not res!30437) (not e!35067))))

(declare-fun newMap!16 () LongMapFixedSize!506)

(declare-fun valid!191 (LongMapFixedSize!506) Bool)

(assert (=> b!53724 (= res!30437 (valid!191 newMap!16))))

(declare-fun b!53725 () Bool)

(declare-fun e!35068 () Bool)

(declare-fun e!35061 () Bool)

(declare-fun mapRes!2526 () Bool)

(assert (=> b!53725 (= e!35068 (and e!35061 mapRes!2526))))

(declare-fun condMapEmpty!2525 () Bool)

(declare-fun mapDefault!2525 () ValueCell!799)

