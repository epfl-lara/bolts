; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21860 () Bool)

(assert start!21860)

(declare-fun b!220163 () Bool)

(declare-fun b_free!5915 () Bool)

(declare-fun b_next!5915 () Bool)

(assert (=> b!220163 (= b_free!5915 (not b_next!5915))))

(declare-fun tp!20887 () Bool)

(declare-fun b_and!12831 () Bool)

(assert (=> b!220163 (= tp!20887 b_and!12831)))

(declare-fun call!20577 () Bool)

(declare-datatypes ((V!7349 0))(
  ( (V!7350 (val!2933 Int)) )
))
(declare-datatypes ((ValueCell!2545 0))(
  ( (ValueCellFull!2545 (v!4949 V!7349)) (EmptyCell!2545) )
))
(declare-datatypes ((array!10796 0))(
  ( (array!10797 (arr!5117 (Array (_ BitVec 32) ValueCell!2545)) (size!5450 (_ BitVec 32))) )
))
(declare-datatypes ((array!10798 0))(
  ( (array!10799 (arr!5118 (Array (_ BitVec 32) (_ BitVec 64))) (size!5451 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2990 0))(
  ( (LongMapFixedSize!2991 (defaultEntry!4154 Int) (mask!9952 (_ BitVec 32)) (extraKeys!3891 (_ BitVec 32)) (zeroValue!3995 V!7349) (minValue!3995 V!7349) (_size!1544 (_ BitVec 32)) (_keys!6208 array!10798) (_values!4137 array!10796) (_vacant!1544 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2990)

(declare-datatypes ((SeekEntryResult!818 0))(
  ( (MissingZero!818 (index!5442 (_ BitVec 32))) (Found!818 (index!5443 (_ BitVec 32))) (Intermediate!818 (undefined!1630 Bool) (index!5444 (_ BitVec 32)) (x!22950 (_ BitVec 32))) (Undefined!818) (MissingVacant!818 (index!5445 (_ BitVec 32))) )
))
(declare-fun lt!112145 () SeekEntryResult!818)

(declare-fun bm!20574 () Bool)

(declare-fun c!36632 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20574 (= call!20577 (inRange!0 (ite c!36632 (index!5442 lt!112145) (index!5445 lt!112145)) (mask!9952 thiss!1504)))))

(declare-fun b!220148 () Bool)

(declare-fun e!143171 () Bool)

(declare-fun e!143170 () Bool)

(assert (=> b!220148 (= e!143171 e!143170)))

(declare-fun res!107955 () Bool)

(assert (=> b!220148 (=> (not res!107955) (not e!143170))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220148 (= res!107955 (or (= lt!112145 (MissingZero!818 index!297)) (= lt!112145 (MissingVacant!818 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10798 (_ BitVec 32)) SeekEntryResult!818)

(assert (=> b!220148 (= lt!112145 (seekEntryOrOpen!0 key!932 (_keys!6208 thiss!1504) (mask!9952 thiss!1504)))))

(declare-fun b!220149 () Bool)

(declare-fun res!107952 () Bool)

(declare-fun e!143163 () Bool)

(assert (=> b!220149 (=> (not res!107952) (not e!143163))))

(declare-fun arrayContainsKey!0 (array!10798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220149 (= res!107952 (arrayContainsKey!0 (_keys!6208 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220150 () Bool)

(declare-fun res!107951 () Bool)

(assert (=> b!220150 (=> (not res!107951) (not e!143171))))

(assert (=> b!220150 (= res!107951 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220151 () Bool)

(declare-fun res!107950 () Bool)

(declare-fun e!143161 () Bool)

(assert (=> b!220151 (=> (not res!107950) (not e!143161))))

(assert (=> b!220151 (= res!107950 (= (select (arr!5118 (_keys!6208 thiss!1504)) (index!5442 lt!112145)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20575 () Bool)

(declare-fun call!20578 () Bool)

(assert (=> bm!20575 (= call!20578 (arrayContainsKey!0 (_keys!6208 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220152 () Bool)

(declare-fun e!143164 () Bool)

(declare-fun e!143172 () Bool)

(declare-fun mapRes!9835 () Bool)

(assert (=> b!220152 (= e!143164 (and e!143172 mapRes!9835))))

(declare-fun condMapEmpty!9835 () Bool)

(declare-fun mapDefault!9835 () ValueCell!2545)

