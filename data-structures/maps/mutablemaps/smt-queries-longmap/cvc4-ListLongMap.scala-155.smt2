; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3002 () Bool)

(assert start!3002)

(declare-fun b!17611 () Bool)

(declare-fun b_free!611 () Bool)

(declare-fun b_next!611 () Bool)

(assert (=> b!17611 (= b_free!611 (not b_next!611))))

(declare-fun tp!3024 () Bool)

(declare-fun b_and!1261 () Bool)

(assert (=> b!17611 (= tp!3024 b_and!1261)))

(declare-fun b!17609 () Bool)

(declare-datatypes ((V!991 0))(
  ( (V!992 (val!464 Int)) )
))
(declare-datatypes ((ValueCell!238 0))(
  ( (ValueCellFull!238 (v!1432 V!991)) (EmptyCell!238) )
))
(declare-datatypes ((array!947 0))(
  ( (array!948 (arr!455 (Array (_ BitVec 32) ValueCell!238)) (size!545 (_ BitVec 32))) )
))
(declare-datatypes ((array!949 0))(
  ( (array!950 (arr!456 (Array (_ BitVec 32) (_ BitVec 64))) (size!546 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!62 0))(
  ( (LongMapFixedSize!63 (defaultEntry!1642 Int) (mask!4561 (_ BitVec 32)) (extraKeys!1555 (_ BitVec 32)) (zeroValue!1578 V!991) (minValue!1578 V!991) (_size!63 (_ BitVec 32)) (_keys!3067 array!949) (_values!1639 array!947) (_vacant!63 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!62 0))(
  ( (Cell!63 (v!1433 LongMapFixedSize!62)) )
))
(declare-datatypes ((LongMap!62 0))(
  ( (LongMap!63 (underlying!42 Cell!62)) )
))
(declare-datatypes ((tuple2!730 0))(
  ( (tuple2!731 (_1!366 Bool) (_2!366 LongMap!62)) )
))
(declare-fun e!11090 () tuple2!730)

(declare-fun thiss!848 () LongMap!62)

(assert (=> b!17609 (= e!11090 (tuple2!731 true thiss!848))))

(declare-fun res!12626 () Bool)

(declare-fun e!11089 () Bool)

(assert (=> start!3002 (=> (not res!12626) (not e!11089))))

(declare-fun valid!35 (LongMap!62) Bool)

(assert (=> start!3002 (= res!12626 (valid!35 thiss!848))))

(assert (=> start!3002 e!11089))

(declare-fun e!11092 () Bool)

(assert (=> start!3002 e!11092))

(assert (=> start!3002 true))

(declare-fun tp_is_empty!875 () Bool)

(assert (=> start!3002 tp_is_empty!875))

(declare-fun b!17610 () Bool)

(declare-fun e!11091 () Bool)

(assert (=> b!17610 (= e!11092 e!11091)))

(declare-fun mapIsEmpty!747 () Bool)

(declare-fun mapRes!747 () Bool)

(assert (=> mapIsEmpty!747 mapRes!747))

(declare-fun e!11084 () Bool)

(declare-fun e!11093 () Bool)

(declare-fun array_inv!319 (array!949) Bool)

(declare-fun array_inv!320 (array!947) Bool)

(assert (=> b!17611 (= e!11084 (and tp!3024 tp_is_empty!875 (array_inv!319 (_keys!3067 (v!1433 (underlying!42 thiss!848)))) (array_inv!320 (_values!1639 (v!1433 (underlying!42 thiss!848)))) e!11093))))

(declare-fun b!17612 () Bool)

(assert (=> b!17612 (= e!11091 e!11084)))

(declare-fun b!17613 () Bool)

(declare-fun e!11085 () Bool)

(assert (=> b!17613 (= e!11085 tp_is_empty!875)))

(declare-fun b!17614 () Bool)

(declare-fun repack!9 (LongMap!62) tuple2!730)

(assert (=> b!17614 (= e!11090 (repack!9 thiss!848))))

(declare-fun b!17615 () Bool)

(declare-fun e!11087 () Bool)

(assert (=> b!17615 (= e!11089 e!11087)))

(declare-fun res!12627 () Bool)

(assert (=> b!17615 (=> (not res!12627) (not e!11087))))

(declare-fun lt!4578 () tuple2!730)

(assert (=> b!17615 (= res!12627 (_1!366 lt!4578))))

(assert (=> b!17615 (= lt!4578 e!11090)))

(declare-fun c!1771 () Bool)

(declare-fun imbalanced!13 (LongMap!62) Bool)

(assert (=> b!17615 (= c!1771 (imbalanced!13 thiss!848))))

(declare-fun b!17616 () Bool)

(declare-fun e!11088 () Bool)

(assert (=> b!17616 (= e!11093 (and e!11088 mapRes!747))))

(declare-fun condMapEmpty!747 () Bool)

(declare-fun mapDefault!747 () ValueCell!238)

