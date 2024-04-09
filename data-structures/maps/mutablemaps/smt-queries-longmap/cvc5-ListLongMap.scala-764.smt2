; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18026 () Bool)

(assert start!18026)

(declare-fun b!179325 () Bool)

(declare-fun b_free!4423 () Bool)

(declare-fun b_next!4423 () Bool)

(assert (=> b!179325 (= b_free!4423 (not b_next!4423))))

(declare-fun tp!15993 () Bool)

(declare-fun b_and!10971 () Bool)

(assert (=> b!179325 (= tp!15993 b_and!10971)))

(declare-fun b!179320 () Bool)

(declare-fun res!84942 () Bool)

(declare-fun e!118152 () Bool)

(assert (=> b!179320 (=> (not res!84942) (not e!118152))))

(declare-datatypes ((V!5241 0))(
  ( (V!5242 (val!2142 Int)) )
))
(declare-datatypes ((ValueCell!1754 0))(
  ( (ValueCellFull!1754 (v!4025 V!5241)) (EmptyCell!1754) )
))
(declare-datatypes ((array!7554 0))(
  ( (array!7555 (arr!3578 (Array (_ BitVec 32) (_ BitVec 64))) (size!3886 (_ BitVec 32))) )
))
(declare-datatypes ((array!7556 0))(
  ( (array!7557 (arr!3579 (Array (_ BitVec 32) ValueCell!1754)) (size!3887 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2416 0))(
  ( (LongMapFixedSize!2417 (defaultEntry!3682 Int) (mask!8663 (_ BitVec 32)) (extraKeys!3419 (_ BitVec 32)) (zeroValue!3523 V!5241) (minValue!3523 V!5241) (_size!1257 (_ BitVec 32)) (_keys!5569 array!7554) (_values!3665 array!7556) (_vacant!1257 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2416)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179320 (= res!84942 (validMask!0 (mask!8663 thiss!1248)))))

(declare-fun b!179321 () Bool)

(declare-fun res!84944 () Bool)

(assert (=> b!179321 (=> (not res!84944) (not e!118152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7554 (_ BitVec 32)) Bool)

(assert (=> b!179321 (= res!84944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5569 thiss!1248) (mask!8663 thiss!1248)))))

(declare-fun b!179322 () Bool)

(declare-fun res!84940 () Bool)

(assert (=> b!179322 (=> (not res!84940) (not e!118152))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!591 0))(
  ( (MissingZero!591 (index!4532 (_ BitVec 32))) (Found!591 (index!4533 (_ BitVec 32))) (Intermediate!591 (undefined!1403 Bool) (index!4534 (_ BitVec 32)) (x!19629 (_ BitVec 32))) (Undefined!591) (MissingVacant!591 (index!4535 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7554 (_ BitVec 32)) SeekEntryResult!591)

(assert (=> b!179322 (= res!84940 (is-Undefined!591 (seekEntryOrOpen!0 key!828 (_keys!5569 thiss!1248) (mask!8663 thiss!1248))))))

(declare-fun b!179323 () Bool)

(declare-fun e!118154 () Bool)

(declare-fun tp_is_empty!4195 () Bool)

(assert (=> b!179323 (= e!118154 tp_is_empty!4195)))

(declare-fun b!179324 () Bool)

(declare-fun res!84946 () Bool)

(assert (=> b!179324 (=> (not res!84946) (not e!118152))))

(declare-datatypes ((tuple2!3326 0))(
  ( (tuple2!3327 (_1!1673 (_ BitVec 64)) (_2!1673 V!5241)) )
))
(declare-datatypes ((List!2293 0))(
  ( (Nil!2290) (Cons!2289 (h!2914 tuple2!3326) (t!7145 List!2293)) )
))
(declare-datatypes ((ListLongMap!2267 0))(
  ( (ListLongMap!2268 (toList!1149 List!2293)) )
))
(declare-fun contains!1217 (ListLongMap!2267 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!796 (array!7554 array!7556 (_ BitVec 32) (_ BitVec 32) V!5241 V!5241 (_ BitVec 32) Int) ListLongMap!2267)

(assert (=> b!179324 (= res!84946 (not (contains!1217 (getCurrentListMap!796 (_keys!5569 thiss!1248) (_values!3665 thiss!1248) (mask!8663 thiss!1248) (extraKeys!3419 thiss!1248) (zeroValue!3523 thiss!1248) (minValue!3523 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3682 thiss!1248)) key!828)))))

(declare-fun e!118150 () Bool)

(declare-fun e!118153 () Bool)

(declare-fun array_inv!2295 (array!7554) Bool)

(declare-fun array_inv!2296 (array!7556) Bool)

(assert (=> b!179325 (= e!118150 (and tp!15993 tp_is_empty!4195 (array_inv!2295 (_keys!5569 thiss!1248)) (array_inv!2296 (_values!3665 thiss!1248)) e!118153))))

(declare-fun b!179326 () Bool)

(declare-fun e!118151 () Bool)

(assert (=> b!179326 (= e!118151 tp_is_empty!4195)))

(declare-fun mapIsEmpty!7180 () Bool)

(declare-fun mapRes!7180 () Bool)

(assert (=> mapIsEmpty!7180 mapRes!7180))

(declare-fun b!179327 () Bool)

(declare-datatypes ((List!2294 0))(
  ( (Nil!2291) (Cons!2290 (h!2915 (_ BitVec 64)) (t!7146 List!2294)) )
))
(declare-fun arrayNoDuplicates!0 (array!7554 (_ BitVec 32) List!2294) Bool)

(assert (=> b!179327 (= e!118152 (not (arrayNoDuplicates!0 (_keys!5569 thiss!1248) #b00000000000000000000000000000000 Nil!2291)))))

(declare-fun b!179328 () Bool)

(declare-fun res!84941 () Bool)

(assert (=> b!179328 (=> (not res!84941) (not e!118152))))

(assert (=> b!179328 (= res!84941 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7180 () Bool)

(declare-fun tp!15994 () Bool)

(assert (=> mapNonEmpty!7180 (= mapRes!7180 (and tp!15994 e!118151))))

(declare-fun mapRest!7180 () (Array (_ BitVec 32) ValueCell!1754))

(declare-fun mapValue!7180 () ValueCell!1754)

(declare-fun mapKey!7180 () (_ BitVec 32))

(assert (=> mapNonEmpty!7180 (= (arr!3579 (_values!3665 thiss!1248)) (store mapRest!7180 mapKey!7180 mapValue!7180))))

(declare-fun res!84945 () Bool)

(assert (=> start!18026 (=> (not res!84945) (not e!118152))))

(declare-fun valid!1002 (LongMapFixedSize!2416) Bool)

(assert (=> start!18026 (= res!84945 (valid!1002 thiss!1248))))

(assert (=> start!18026 e!118152))

(assert (=> start!18026 e!118150))

(assert (=> start!18026 true))

(declare-fun b!179329 () Bool)

(assert (=> b!179329 (= e!118153 (and e!118154 mapRes!7180))))

(declare-fun condMapEmpty!7180 () Bool)

(declare-fun mapDefault!7180 () ValueCell!1754)

