; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80668 () Bool)

(assert start!80668)

(declare-fun b!946109 () Bool)

(declare-fun b_free!18133 () Bool)

(declare-fun b_next!18133 () Bool)

(assert (=> b!946109 (= b_free!18133 (not b_next!18133))))

(declare-fun tp!62937 () Bool)

(declare-fun b_and!29573 () Bool)

(assert (=> b!946109 (= tp!62937 b_and!29573)))

(declare-fun b!946106 () Bool)

(declare-fun e!532336 () Bool)

(declare-datatypes ((V!32487 0))(
  ( (V!32488 (val!10371 Int)) )
))
(declare-datatypes ((ValueCell!9839 0))(
  ( (ValueCellFull!9839 (v!12905 V!32487)) (EmptyCell!9839) )
))
(declare-datatypes ((array!57288 0))(
  ( (array!57289 (arr!27557 (Array (_ BitVec 32) ValueCell!9839)) (size!28028 (_ BitVec 32))) )
))
(declare-datatypes ((array!57290 0))(
  ( (array!57291 (arr!27558 (Array (_ BitVec 32) (_ BitVec 64))) (size!28029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4828 0))(
  ( (LongMapFixedSize!4829 (defaultEntry!5711 Int) (mask!27401 (_ BitVec 32)) (extraKeys!5443 (_ BitVec 32)) (zeroValue!5547 V!32487) (minValue!5547 V!32487) (_size!2469 (_ BitVec 32)) (_keys!10599 array!57290) (_values!5734 array!57288) (_vacant!2469 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4828)

(assert (=> b!946106 (= e!532336 (or (not (= (size!28028 (_values!5734 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27401 thiss!1141)))) (= (size!28029 (_keys!10599 thiss!1141)) (size!28028 (_values!5734 thiss!1141)))))))

(declare-fun b!946107 () Bool)

(declare-fun res!635306 () Bool)

(declare-fun e!532333 () Bool)

(assert (=> b!946107 (=> (not res!635306) (not e!532333))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!946107 (= res!635306 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32815 () Bool)

(declare-fun mapRes!32815 () Bool)

(declare-fun tp!62938 () Bool)

(declare-fun e!532335 () Bool)

(assert (=> mapNonEmpty!32815 (= mapRes!32815 (and tp!62938 e!532335))))

(declare-fun mapValue!32815 () ValueCell!9839)

(declare-fun mapKey!32815 () (_ BitVec 32))

(declare-fun mapRest!32815 () (Array (_ BitVec 32) ValueCell!9839))

(assert (=> mapNonEmpty!32815 (= (arr!27557 (_values!5734 thiss!1141)) (store mapRest!32815 mapKey!32815 mapValue!32815))))

(declare-fun b!946108 () Bool)

(declare-fun e!532330 () Bool)

(declare-fun e!532331 () Bool)

(assert (=> b!946108 (= e!532330 (and e!532331 mapRes!32815))))

(declare-fun condMapEmpty!32815 () Bool)

(declare-fun mapDefault!32815 () ValueCell!9839)

