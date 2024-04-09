; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8358 () Bool)

(assert start!8358)

(declare-fun b!55494 () Bool)

(declare-fun b_free!1857 () Bool)

(declare-fun b_next!1857 () Bool)

(assert (=> b!55494 (= b_free!1857 (not b_next!1857))))

(declare-fun tp!7672 () Bool)

(declare-fun b_and!3265 () Bool)

(assert (=> b!55494 (= tp!7672 b_and!3265)))

(declare-fun b!55507 () Bool)

(declare-fun b_free!1859 () Bool)

(declare-fun b_next!1859 () Bool)

(assert (=> b!55507 (= b_free!1859 (not b_next!1859))))

(declare-fun tp!7671 () Bool)

(declare-fun b_and!3267 () Bool)

(assert (=> b!55507 (= tp!7671 b_and!3267)))

(declare-fun b!55493 () Bool)

(declare-fun e!36460 () Bool)

(declare-fun tp_is_empty!2345 () Bool)

(assert (=> b!55493 (= e!36460 tp_is_empty!2345)))

(declare-datatypes ((V!2773 0))(
  ( (V!2774 (val!1217 Int)) )
))
(declare-datatypes ((array!3612 0))(
  ( (array!3613 (arr!1728 (Array (_ BitVec 32) (_ BitVec 64))) (size!1957 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!829 0))(
  ( (ValueCellFull!829 (v!2316 V!2773)) (EmptyCell!829) )
))
(declare-datatypes ((array!3614 0))(
  ( (array!3615 (arr!1729 (Array (_ BitVec 32) ValueCell!829)) (size!1958 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!566 0))(
  ( (LongMapFixedSize!567 (defaultEntry!1997 Int) (mask!5854 (_ BitVec 32)) (extraKeys!1888 (_ BitVec 32)) (zeroValue!1915 V!2773) (minValue!1915 V!2773) (_size!332 (_ BitVec 32)) (_keys!3617 array!3612) (_values!1980 array!3614) (_vacant!332 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!376 0))(
  ( (Cell!377 (v!2317 LongMapFixedSize!566)) )
))
(declare-datatypes ((LongMap!376 0))(
  ( (LongMap!377 (underlying!199 Cell!376)) )
))
(declare-fun thiss!992 () LongMap!376)

(declare-fun e!36465 () Bool)

(declare-fun e!36467 () Bool)

(declare-fun array_inv!1011 (array!3612) Bool)

(declare-fun array_inv!1012 (array!3614) Bool)

(assert (=> b!55494 (= e!36467 (and tp!7672 tp_is_empty!2345 (array_inv!1011 (_keys!3617 (v!2317 (underlying!199 thiss!992)))) (array_inv!1012 (_values!1980 (v!2317 (underlying!199 thiss!992)))) e!36465))))

(declare-fun mapIsEmpty!2705 () Bool)

(declare-fun mapRes!2706 () Bool)

(assert (=> mapIsEmpty!2705 mapRes!2706))

(declare-fun b!55495 () Bool)

(declare-fun res!31245 () Bool)

(declare-fun e!36463 () Bool)

(assert (=> b!55495 (=> (not res!31245) (not e!36463))))

(declare-fun newMap!16 () LongMapFixedSize!566)

(declare-fun valid!222 (LongMapFixedSize!566) Bool)

(assert (=> b!55495 (= res!31245 (valid!222 newMap!16))))

(declare-fun b!55496 () Bool)

(declare-fun e!36473 () Bool)

(declare-fun e!36464 () Bool)

(assert (=> b!55496 (= e!36473 e!36464)))

(declare-fun mapIsEmpty!2706 () Bool)

(declare-fun mapRes!2705 () Bool)

(assert (=> mapIsEmpty!2706 mapRes!2705))

(declare-fun b!55497 () Bool)

(declare-fun e!36459 () Bool)

(assert (=> b!55497 (= e!36459 true)))

(declare-fun lt!21955 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((List!1415 0))(
  ( (Nil!1412) (Cons!1411 (h!1991 (_ BitVec 64)) (t!4649 List!1415)) )
))
(declare-fun lt!21949 () List!1415)

(declare-fun contains!658 (List!1415 (_ BitVec 64)) Bool)

(assert (=> b!55497 (= lt!21955 (contains!658 lt!21949 (select (arr!1728 (_keys!3617 (v!2317 (underlying!199 thiss!992)))) from!355)))))

(declare-fun b!55499 () Bool)

(assert (=> b!55499 (= e!36465 (and e!36460 mapRes!2705))))

(declare-fun condMapEmpty!2705 () Bool)

(declare-fun mapDefault!2706 () ValueCell!829)

