; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16146 () Bool)

(assert start!16146)

(declare-fun b!160580 () Bool)

(declare-fun b_free!3595 () Bool)

(declare-fun b_next!3595 () Bool)

(assert (=> b!160580 (= b_free!3595 (not b_next!3595))))

(declare-fun tp!13355 () Bool)

(declare-fun b_and!10027 () Bool)

(assert (=> b!160580 (= tp!13355 b_and!10027)))

(declare-fun b!160573 () Bool)

(declare-fun res!76075 () Bool)

(declare-fun e!104985 () Bool)

(assert (=> b!160573 (=> (not res!76075) (not e!104985))))

(declare-datatypes ((V!4177 0))(
  ( (V!4178 (val!1743 Int)) )
))
(declare-datatypes ((ValueCell!1355 0))(
  ( (ValueCellFull!1355 (v!3604 V!4177)) (EmptyCell!1355) )
))
(declare-datatypes ((array!5872 0))(
  ( (array!5873 (arr!2780 (Array (_ BitVec 32) (_ BitVec 64))) (size!3064 (_ BitVec 32))) )
))
(declare-datatypes ((array!5874 0))(
  ( (array!5875 (arr!2781 (Array (_ BitVec 32) ValueCell!1355)) (size!3065 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1618 0))(
  ( (LongMapFixedSize!1619 (defaultEntry!3251 Int) (mask!7825 (_ BitVec 32)) (extraKeys!2992 (_ BitVec 32)) (zeroValue!3094 V!4177) (minValue!3094 V!4177) (_size!858 (_ BitVec 32)) (_keys!5052 array!5872) (_values!3234 array!5874) (_vacant!858 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1618)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5872 (_ BitVec 32)) Bool)

(assert (=> b!160573 (= res!76075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5052 thiss!1248) (mask!7825 thiss!1248)))))

(declare-fun b!160574 () Bool)

(declare-fun e!104987 () Bool)

(declare-fun tp_is_empty!3397 () Bool)

(assert (=> b!160574 (= e!104987 tp_is_empty!3397)))

(declare-fun b!160575 () Bool)

(declare-fun res!76073 () Bool)

(assert (=> b!160575 (=> (not res!76073) (not e!104985))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2914 0))(
  ( (tuple2!2915 (_1!1467 (_ BitVec 64)) (_2!1467 V!4177)) )
))
(declare-datatypes ((List!1970 0))(
  ( (Nil!1967) (Cons!1966 (h!2579 tuple2!2914) (t!6780 List!1970)) )
))
(declare-datatypes ((ListLongMap!1923 0))(
  ( (ListLongMap!1924 (toList!977 List!1970)) )
))
(declare-fun contains!1007 (ListLongMap!1923 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!637 (array!5872 array!5874 (_ BitVec 32) (_ BitVec 32) V!4177 V!4177 (_ BitVec 32) Int) ListLongMap!1923)

(assert (=> b!160575 (= res!76073 (not (contains!1007 (getCurrentListMap!637 (_keys!5052 thiss!1248) (_values!3234 thiss!1248) (mask!7825 thiss!1248) (extraKeys!2992 thiss!1248) (zeroValue!3094 thiss!1248) (minValue!3094 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3251 thiss!1248)) key!828)))))

(declare-fun b!160576 () Bool)

(declare-fun res!76076 () Bool)

(assert (=> b!160576 (=> (not res!76076) (not e!104985))))

(assert (=> b!160576 (= res!76076 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160577 () Bool)

(declare-fun res!76078 () Bool)

(assert (=> b!160577 (=> (not res!76078) (not e!104985))))

(assert (=> b!160577 (= res!76078 (and (= (size!3065 (_values!3234 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7825 thiss!1248))) (= (size!3064 (_keys!5052 thiss!1248)) (size!3065 (_values!3234 thiss!1248))) (bvsge (mask!7825 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2992 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2992 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160578 () Bool)

(declare-fun e!104982 () Bool)

(declare-fun e!104984 () Bool)

(declare-fun mapRes!5783 () Bool)

(assert (=> b!160578 (= e!104982 (and e!104984 mapRes!5783))))

(declare-fun condMapEmpty!5783 () Bool)

(declare-fun mapDefault!5783 () ValueCell!1355)

