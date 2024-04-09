; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8274 () Bool)

(assert start!8274)

(declare-fun b!52955 () Bool)

(declare-fun b_free!1689 () Bool)

(declare-fun b_next!1689 () Bool)

(assert (=> b!52955 (= b_free!1689 (not b_next!1689))))

(declare-fun tp!7167 () Bool)

(declare-fun b_and!2929 () Bool)

(assert (=> b!52955 (= tp!7167 b_and!2929)))

(declare-fun b!52944 () Bool)

(declare-fun b_free!1691 () Bool)

(declare-fun b_next!1691 () Bool)

(assert (=> b!52944 (= b_free!1691 (not b_next!1691))))

(declare-fun tp!7169 () Bool)

(declare-fun b_and!2931 () Bool)

(assert (=> b!52944 (= tp!7169 b_and!2931)))

(declare-fun b!52943 () Bool)

(declare-fun res!30043 () Bool)

(declare-fun e!34527 () Bool)

(assert (=> b!52943 (=> (not res!30043) (not e!34527))))

(declare-datatypes ((V!2661 0))(
  ( (V!2662 (val!1175 Int)) )
))
(declare-datatypes ((array!3444 0))(
  ( (array!3445 (arr!1644 (Array (_ BitVec 32) (_ BitVec 64))) (size!1873 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!787 0))(
  ( (ValueCellFull!787 (v!2235 V!2661)) (EmptyCell!787) )
))
(declare-datatypes ((array!3446 0))(
  ( (array!3447 (arr!1645 (Array (_ BitVec 32) ValueCell!787)) (size!1874 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!482 0))(
  ( (LongMapFixedSize!483 (defaultEntry!1955 Int) (mask!5784 (_ BitVec 32)) (extraKeys!1846 (_ BitVec 32)) (zeroValue!1873 V!2661) (minValue!1873 V!2661) (_size!290 (_ BitVec 32)) (_keys!3575 array!3444) (_values!1938 array!3446) (_vacant!290 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!298 0))(
  ( (Cell!299 (v!2236 LongMapFixedSize!482)) )
))
(declare-datatypes ((LongMap!298 0))(
  ( (LongMap!299 (underlying!160 Cell!298)) )
))
(declare-fun thiss!992 () LongMap!298)

(declare-datatypes ((List!1368 0))(
  ( (Nil!1365) (Cons!1364 (h!1944 (_ BitVec 64)) (t!4434 List!1368)) )
))
(declare-fun arrayNoDuplicates!0 (array!3444 (_ BitVec 32) List!1368) Bool)

(assert (=> b!52943 (= res!30043 (arrayNoDuplicates!0 (_keys!3575 (v!2236 (underlying!160 thiss!992))) #b00000000000000000000000000000000 Nil!1365))))

(declare-fun e!34517 () Bool)

(declare-fun tp_is_empty!2261 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!482)

(declare-fun e!34523 () Bool)

(declare-fun array_inv!963 (array!3444) Bool)

(declare-fun array_inv!964 (array!3446) Bool)

(assert (=> b!52944 (= e!34523 (and tp!7169 tp_is_empty!2261 (array_inv!963 (_keys!3575 newMap!16)) (array_inv!964 (_values!1938 newMap!16)) e!34517))))

(declare-fun b!52945 () Bool)

(declare-fun res!30047 () Bool)

(assert (=> b!52945 (=> (not res!30047) (not e!34527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!52945 (= res!30047 (validMask!0 (mask!5784 (v!2236 (underlying!160 thiss!992)))))))

(declare-fun b!52946 () Bool)

(declare-fun e!34519 () Bool)

(assert (=> b!52946 (= e!34519 tp_is_empty!2261)))

(declare-fun res!30038 () Bool)

(declare-fun e!34516 () Bool)

(assert (=> start!8274 (=> (not res!30038) (not e!34516))))

(declare-fun valid!176 (LongMap!298) Bool)

(assert (=> start!8274 (= res!30038 (valid!176 thiss!992))))

(assert (=> start!8274 e!34516))

(declare-fun e!34528 () Bool)

(assert (=> start!8274 e!34528))

(assert (=> start!8274 true))

(assert (=> start!8274 e!34523))

(declare-fun mapIsEmpty!2453 () Bool)

(declare-fun mapRes!2453 () Bool)

(assert (=> mapIsEmpty!2453 mapRes!2453))

(declare-fun b!52947 () Bool)

(declare-fun res!30045 () Bool)

(assert (=> b!52947 (=> (not res!30045) (not e!34527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3444 (_ BitVec 32)) Bool)

(assert (=> b!52947 (= res!30045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3575 (v!2236 (underlying!160 thiss!992))) (mask!5784 (v!2236 (underlying!160 thiss!992)))))))

(declare-fun mapIsEmpty!2454 () Bool)

(declare-fun mapRes!2454 () Bool)

(assert (=> mapIsEmpty!2454 mapRes!2454))

(declare-fun mapNonEmpty!2453 () Bool)

(declare-fun tp!7170 () Bool)

(assert (=> mapNonEmpty!2453 (= mapRes!2454 (and tp!7170 e!34519))))

(declare-fun mapKey!2454 () (_ BitVec 32))

(declare-fun mapRest!2454 () (Array (_ BitVec 32) ValueCell!787))

(declare-fun mapValue!2453 () ValueCell!787)

(assert (=> mapNonEmpty!2453 (= (arr!1645 (_values!1938 (v!2236 (underlying!160 thiss!992)))) (store mapRest!2454 mapKey!2454 mapValue!2453))))

(declare-fun b!52948 () Bool)

(declare-fun res!30048 () Bool)

(assert (=> b!52948 (=> (not res!30048) (not e!34516))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!52948 (= res!30048 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1873 (_keys!3575 (v!2236 (underlying!160 thiss!992)))))))))

(declare-fun b!52949 () Bool)

(declare-fun res!30044 () Bool)

(assert (=> b!52949 (=> (not res!30044) (not e!34516))))

(declare-fun valid!177 (LongMapFixedSize!482) Bool)

(assert (=> b!52949 (= res!30044 (valid!177 newMap!16))))

(declare-fun mapNonEmpty!2454 () Bool)

(declare-fun tp!7168 () Bool)

(declare-fun e!34529 () Bool)

(assert (=> mapNonEmpty!2454 (= mapRes!2453 (and tp!7168 e!34529))))

(declare-fun mapValue!2454 () ValueCell!787)

(declare-fun mapKey!2453 () (_ BitVec 32))

(declare-fun mapRest!2453 () (Array (_ BitVec 32) ValueCell!787))

(assert (=> mapNonEmpty!2454 (= (arr!1645 (_values!1938 newMap!16)) (store mapRest!2453 mapKey!2453 mapValue!2454))))

(declare-fun b!52950 () Bool)

(declare-fun e!34520 () Bool)

(declare-fun e!34524 () Bool)

(assert (=> b!52950 (= e!34520 e!34524)))

(declare-fun b!52951 () Bool)

(declare-fun res!30046 () Bool)

(assert (=> b!52951 (=> (not res!30046) (not e!34527))))

(assert (=> b!52951 (= res!30046 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1873 (_keys!3575 (v!2236 (underlying!160 thiss!992)))))))))

(declare-fun b!52952 () Bool)

(declare-fun res!30041 () Bool)

(assert (=> b!52952 (=> (not res!30041) (not e!34527))))

(assert (=> b!52952 (= res!30041 (and (= (size!1874 (_values!1938 (v!2236 (underlying!160 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5784 (v!2236 (underlying!160 thiss!992))))) (= (size!1873 (_keys!3575 (v!2236 (underlying!160 thiss!992)))) (size!1874 (_values!1938 (v!2236 (underlying!160 thiss!992))))) (bvsge (mask!5784 (v!2236 (underlying!160 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1846 (v!2236 (underlying!160 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1846 (v!2236 (underlying!160 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!52953 () Bool)

(declare-fun e!34515 () Bool)

(assert (=> b!52953 (= e!34517 (and e!34515 mapRes!2453))))

(declare-fun condMapEmpty!2454 () Bool)

(declare-fun mapDefault!2453 () ValueCell!787)

