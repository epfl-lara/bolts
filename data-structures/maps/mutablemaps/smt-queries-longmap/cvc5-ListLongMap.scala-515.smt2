; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12854 () Bool)

(assert start!12854)

(declare-fun b!111866 () Bool)

(declare-fun b_free!2569 () Bool)

(declare-fun b_next!2569 () Bool)

(assert (=> b!111866 (= b_free!2569 (not b_next!2569))))

(declare-fun tp!10053 () Bool)

(declare-fun b_and!6885 () Bool)

(assert (=> b!111866 (= tp!10053 b_and!6885)))

(declare-fun b!111875 () Bool)

(declare-fun b_free!2571 () Bool)

(declare-fun b_next!2571 () Bool)

(assert (=> b!111875 (= b_free!2571 (not b_next!2571))))

(declare-fun tp!10056 () Bool)

(declare-fun b_and!6887 () Bool)

(assert (=> b!111875 (= tp!10056 b_and!6887)))

(declare-fun res!55218 () Bool)

(declare-fun e!72722 () Bool)

(assert (=> start!12854 (=> (not res!55218) (not e!72722))))

(declare-datatypes ((V!3249 0))(
  ( (V!3250 (val!1395 Int)) )
))
(declare-datatypes ((array!4398 0))(
  ( (array!4399 (arr!2084 (Array (_ BitVec 32) (_ BitVec 64))) (size!2342 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1007 0))(
  ( (ValueCellFull!1007 (v!2942 V!3249)) (EmptyCell!1007) )
))
(declare-datatypes ((array!4400 0))(
  ( (array!4401 (arr!2085 (Array (_ BitVec 32) ValueCell!1007)) (size!2343 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!922 0))(
  ( (LongMapFixedSize!923 (defaultEntry!2647 Int) (mask!6825 (_ BitVec 32)) (extraKeys!2440 (_ BitVec 32)) (zeroValue!2516 V!3249) (minValue!2516 V!3249) (_size!510 (_ BitVec 32)) (_keys!4365 array!4398) (_values!2630 array!4400) (_vacant!510 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!722 0))(
  ( (Cell!723 (v!2943 LongMapFixedSize!922)) )
))
(declare-datatypes ((LongMap!722 0))(
  ( (LongMap!723 (underlying!372 Cell!722)) )
))
(declare-fun thiss!992 () LongMap!722)

(declare-fun valid!420 (LongMap!722) Bool)

(assert (=> start!12854 (= res!55218 (valid!420 thiss!992))))

(assert (=> start!12854 e!72722))

(declare-fun e!72725 () Bool)

(assert (=> start!12854 e!72725))

(assert (=> start!12854 true))

(declare-fun e!72732 () Bool)

(assert (=> start!12854 e!72732))

(declare-fun b!111861 () Bool)

(declare-fun e!72721 () Bool)

(declare-fun tp_is_empty!2701 () Bool)

(assert (=> b!111861 (= e!72721 tp_is_empty!2701)))

(declare-fun b!111862 () Bool)

(declare-fun e!72733 () Bool)

(declare-fun e!72723 () Bool)

(assert (=> b!111862 (= e!72733 e!72723)))

(declare-fun b!111863 () Bool)

(declare-fun res!55219 () Bool)

(assert (=> b!111863 (=> (not res!55219) (not e!72722))))

(declare-fun newMap!16 () LongMapFixedSize!922)

(declare-fun valid!421 (LongMapFixedSize!922) Bool)

(assert (=> b!111863 (= res!55219 (valid!421 newMap!16))))

(declare-fun b!111864 () Bool)

(declare-fun e!72738 () Bool)

(assert (=> b!111864 (= e!72738 tp_is_empty!2701)))

(declare-fun b!111865 () Bool)

(declare-fun e!72727 () Bool)

(assert (=> b!111865 (= e!72727 tp_is_empty!2701)))

(declare-fun e!72729 () Bool)

(declare-fun array_inv!1253 (array!4398) Bool)

(declare-fun array_inv!1254 (array!4400) Bool)

(assert (=> b!111866 (= e!72723 (and tp!10053 tp_is_empty!2701 (array_inv!1253 (_keys!4365 (v!2943 (underlying!372 thiss!992)))) (array_inv!1254 (_values!2630 (v!2943 (underlying!372 thiss!992)))) e!72729))))

(declare-fun b!111867 () Bool)

(declare-fun e!72728 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4398 (_ BitVec 32)) Bool)

(assert (=> b!111867 (= e!72728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4365 (v!2943 (underlying!372 thiss!992))) (mask!6825 (v!2943 (underlying!372 thiss!992)))))))

(declare-fun b!111868 () Bool)

(declare-fun e!72735 () Bool)

(declare-fun e!72724 () Bool)

(declare-fun mapRes!4020 () Bool)

(assert (=> b!111868 (= e!72735 (and e!72724 mapRes!4020))))

(declare-fun condMapEmpty!4019 () Bool)

(declare-fun mapDefault!4020 () ValueCell!1007)

