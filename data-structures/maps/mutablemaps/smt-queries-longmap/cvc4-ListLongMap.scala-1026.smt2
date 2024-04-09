; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21854 () Bool)

(assert start!21854)

(declare-fun b!219968 () Bool)

(declare-fun b_free!5909 () Bool)

(declare-fun b_next!5909 () Bool)

(assert (=> b!219968 (= b_free!5909 (not b_next!5909))))

(declare-fun tp!20868 () Bool)

(declare-fun b_and!12825 () Bool)

(assert (=> b!219968 (= tp!20868 b_and!12825)))

(declare-fun b!219951 () Bool)

(declare-fun res!107848 () Bool)

(declare-fun e!143054 () Bool)

(assert (=> b!219951 (=> (not res!107848) (not e!143054))))

(declare-datatypes ((V!7341 0))(
  ( (V!7342 (val!2930 Int)) )
))
(declare-datatypes ((ValueCell!2542 0))(
  ( (ValueCellFull!2542 (v!4946 V!7341)) (EmptyCell!2542) )
))
(declare-datatypes ((array!10784 0))(
  ( (array!10785 (arr!5111 (Array (_ BitVec 32) ValueCell!2542)) (size!5444 (_ BitVec 32))) )
))
(declare-datatypes ((array!10786 0))(
  ( (array!10787 (arr!5112 (Array (_ BitVec 32) (_ BitVec 64))) (size!5445 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2984 0))(
  ( (LongMapFixedSize!2985 (defaultEntry!4151 Int) (mask!9947 (_ BitVec 32)) (extraKeys!3888 (_ BitVec 32)) (zeroValue!3992 V!7341) (minValue!3992 V!7341) (_size!1541 (_ BitVec 32)) (_keys!6205 array!10786) (_values!4134 array!10784) (_vacant!1541 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2984)

(declare-datatypes ((SeekEntryResult!815 0))(
  ( (MissingZero!815 (index!5430 (_ BitVec 32))) (Found!815 (index!5431 (_ BitVec 32))) (Intermediate!815 (undefined!1627 Bool) (index!5432 (_ BitVec 32)) (x!22939 (_ BitVec 32))) (Undefined!815) (MissingVacant!815 (index!5433 (_ BitVec 32))) )
))
(declare-fun lt!112100 () SeekEntryResult!815)

(assert (=> b!219951 (= res!107848 (= (select (arr!5112 (_keys!6205 thiss!1504)) (index!5430 lt!112100)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219952 () Bool)

(declare-fun e!143056 () Bool)

(assert (=> b!219952 (= e!143056 false)))

(declare-fun lt!112104 () Bool)

(declare-datatypes ((List!3274 0))(
  ( (Nil!3271) (Cons!3270 (h!3918 (_ BitVec 64)) (t!8241 List!3274)) )
))
(declare-fun arrayNoDuplicates!0 (array!10786 (_ BitVec 32) List!3274) Bool)

(assert (=> b!219952 (= lt!112104 (arrayNoDuplicates!0 (_keys!6205 thiss!1504) #b00000000000000000000000000000000 Nil!3271))))

(declare-fun bm!20556 () Bool)

(declare-fun call!20559 () Bool)

(declare-fun c!36603 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20556 (= call!20559 (inRange!0 (ite c!36603 (index!5430 lt!112100) (index!5433 lt!112100)) (mask!9947 thiss!1504)))))

(declare-fun b!219953 () Bool)

(declare-fun res!107844 () Bool)

(assert (=> b!219953 (= res!107844 (= (select (arr!5112 (_keys!6205 thiss!1504)) (index!5433 lt!112100)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143050 () Bool)

(assert (=> b!219953 (=> (not res!107844) (not e!143050))))

(declare-fun b!219954 () Bool)

(declare-fun res!107840 () Bool)

(assert (=> b!219954 (=> (not res!107840) (not e!143054))))

(assert (=> b!219954 (= res!107840 call!20559)))

(declare-fun e!143044 () Bool)

(assert (=> b!219954 (= e!143044 e!143054)))

(declare-fun b!219955 () Bool)

(declare-fun e!143048 () Bool)

(declare-fun e!143052 () Bool)

(assert (=> b!219955 (= e!143048 e!143052)))

(declare-fun res!107845 () Bool)

(assert (=> b!219955 (=> (not res!107845) (not e!143052))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!219955 (= res!107845 (or (= lt!112100 (MissingZero!815 index!297)) (= lt!112100 (MissingVacant!815 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10786 (_ BitVec 32)) SeekEntryResult!815)

(assert (=> b!219955 (= lt!112100 (seekEntryOrOpen!0 key!932 (_keys!6205 thiss!1504) (mask!9947 thiss!1504)))))

(declare-fun b!219956 () Bool)

(declare-fun e!143055 () Bool)

(declare-fun tp_is_empty!5771 () Bool)

(assert (=> b!219956 (= e!143055 tp_is_empty!5771)))

(declare-fun b!219957 () Bool)

(declare-fun res!107842 () Bool)

(assert (=> b!219957 (=> (not res!107842) (not e!143056))))

(declare-fun arrayContainsKey!0 (array!10786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!219957 (= res!107842 (arrayContainsKey!0 (_keys!6205 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219958 () Bool)

(declare-fun e!143053 () Bool)

(declare-fun e!143046 () Bool)

(declare-fun mapRes!9826 () Bool)

(assert (=> b!219958 (= e!143053 (and e!143046 mapRes!9826))))

(declare-fun condMapEmpty!9826 () Bool)

(declare-fun mapDefault!9826 () ValueCell!2542)

