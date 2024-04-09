; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8282 () Bool)

(assert start!8282)

(declare-fun b!53222 () Bool)

(declare-fun b_free!1705 () Bool)

(declare-fun b_next!1705 () Bool)

(assert (=> b!53222 (= b_free!1705 (not b_next!1705))))

(declare-fun tp!7218 () Bool)

(declare-fun b_and!2961 () Bool)

(assert (=> b!53222 (= tp!7218 b_and!2961)))

(declare-fun b!53203 () Bool)

(declare-fun b_free!1707 () Bool)

(declare-fun b_next!1707 () Bool)

(assert (=> b!53203 (= b_free!1707 (not b_next!1707))))

(declare-fun tp!7217 () Bool)

(declare-fun b_and!2963 () Bool)

(assert (=> b!53203 (= tp!7217 b_and!2963)))

(declare-fun e!34703 () Bool)

(declare-fun e!34700 () Bool)

(declare-fun tp_is_empty!2269 () Bool)

(declare-datatypes ((V!2673 0))(
  ( (V!2674 (val!1179 Int)) )
))
(declare-datatypes ((array!3460 0))(
  ( (array!3461 (arr!1652 (Array (_ BitVec 32) (_ BitVec 64))) (size!1881 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!791 0))(
  ( (ValueCellFull!791 (v!2242 V!2673)) (EmptyCell!791) )
))
(declare-datatypes ((array!3462 0))(
  ( (array!3463 (arr!1653 (Array (_ BitVec 32) ValueCell!791)) (size!1882 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!490 0))(
  ( (LongMapFixedSize!491 (defaultEntry!1959 Int) (mask!5792 (_ BitVec 32)) (extraKeys!1850 (_ BitVec 32)) (zeroValue!1877 V!2673) (minValue!1877 V!2673) (_size!294 (_ BitVec 32)) (_keys!3579 array!3460) (_values!1942 array!3462) (_vacant!294 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!490)

(declare-fun array_inv!967 (array!3460) Bool)

(declare-fun array_inv!968 (array!3462) Bool)

(assert (=> b!53203 (= e!34703 (and tp!7217 tp_is_empty!2269 (array_inv!967 (_keys!3579 newMap!16)) (array_inv!968 (_values!1942 newMap!16)) e!34700))))

(declare-fun b!53204 () Bool)

(declare-fun res!30172 () Bool)

(declare-fun e!34697 () Bool)

(assert (=> b!53204 (=> (not res!30172) (not e!34697))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!304 0))(
  ( (Cell!305 (v!2243 LongMapFixedSize!490)) )
))
(declare-datatypes ((LongMap!304 0))(
  ( (LongMap!305 (underlying!163 Cell!304)) )
))
(declare-fun thiss!992 () LongMap!304)

(assert (=> b!53204 (= res!30172 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1881 (_keys!3579 (v!2243 (underlying!163 thiss!992)))))))))

(declare-fun b!53205 () Bool)

(declare-fun e!34701 () Bool)

(declare-fun e!34709 () Bool)

(assert (=> b!53205 (= e!34701 e!34709)))

(declare-fun res!30177 () Bool)

(assert (=> start!8282 (=> (not res!30177) (not e!34697))))

(declare-fun valid!180 (LongMap!304) Bool)

(assert (=> start!8282 (= res!30177 (valid!180 thiss!992))))

(assert (=> start!8282 e!34697))

(assert (=> start!8282 e!34701))

(assert (=> start!8282 true))

(assert (=> start!8282 e!34703))

(declare-fun b!53206 () Bool)

(declare-fun e!34708 () Bool)

(assert (=> b!53206 (= e!34708 tp_is_empty!2269)))

(declare-fun b!53207 () Bool)

(declare-fun e!34704 () Bool)

(declare-fun mapRes!2478 () Bool)

(assert (=> b!53207 (= e!34700 (and e!34704 mapRes!2478))))

(declare-fun condMapEmpty!2477 () Bool)

(declare-fun mapDefault!2477 () ValueCell!791)

