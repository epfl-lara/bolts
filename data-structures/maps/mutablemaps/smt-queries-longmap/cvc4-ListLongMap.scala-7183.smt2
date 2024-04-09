; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92018 () Bool)

(assert start!92018)

(declare-fun b!1045968 () Bool)

(declare-fun b_free!21155 () Bool)

(declare-fun b_next!21155 () Bool)

(assert (=> b!1045968 (= b_free!21155 (not b_next!21155))))

(declare-fun tp!74728 () Bool)

(declare-fun b_and!33823 () Bool)

(assert (=> b!1045968 (= tp!74728 b_and!33823)))

(declare-fun mapIsEmpty!38957 () Bool)

(declare-fun mapRes!38957 () Bool)

(assert (=> mapIsEmpty!38957 mapRes!38957))

(declare-fun b!1045964 () Bool)

(declare-fun res!696455 () Bool)

(declare-fun e!593020 () Bool)

(assert (=> b!1045964 (=> (not res!696455) (not e!593020))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1045964 (= res!696455 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1045965 () Bool)

(declare-fun e!593022 () Bool)

(assert (=> b!1045965 (= e!593020 e!593022)))

(declare-fun res!696454 () Bool)

(assert (=> b!1045965 (=> (not res!696454) (not e!593022))))

(declare-datatypes ((SeekEntryResult!9852 0))(
  ( (MissingZero!9852 (index!41778 (_ BitVec 32))) (Found!9852 (index!41779 (_ BitVec 32))) (Intermediate!9852 (undefined!10664 Bool) (index!41780 (_ BitVec 32)) (x!93439 (_ BitVec 32))) (Undefined!9852) (MissingVacant!9852 (index!41781 (_ BitVec 32))) )
))
(declare-fun lt!461957 () SeekEntryResult!9852)

(assert (=> b!1045965 (= res!696454 (is-Found!9852 lt!461957))))

(declare-datatypes ((V!38039 0))(
  ( (V!38040 (val!12488 Int)) )
))
(declare-datatypes ((ValueCell!11734 0))(
  ( (ValueCellFull!11734 (v!15086 V!38039)) (EmptyCell!11734) )
))
(declare-datatypes ((array!65912 0))(
  ( (array!65913 (arr!31697 (Array (_ BitVec 32) (_ BitVec 64))) (size!32233 (_ BitVec 32))) )
))
(declare-datatypes ((array!65914 0))(
  ( (array!65915 (arr!31698 (Array (_ BitVec 32) ValueCell!11734)) (size!32234 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6062 0))(
  ( (LongMapFixedSize!6063 (defaultEntry!6429 Int) (mask!30563 (_ BitVec 32)) (extraKeys!6157 (_ BitVec 32)) (zeroValue!6263 V!38039) (minValue!6263 V!38039) (_size!3086 (_ BitVec 32)) (_keys!11700 array!65912) (_values!6452 array!65914) (_vacant!3086 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6062)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65912 (_ BitVec 32)) SeekEntryResult!9852)

(assert (=> b!1045965 (= lt!461957 (seekEntry!0 key!909 (_keys!11700 thiss!1427) (mask!30563 thiss!1427)))))

(declare-fun b!1045966 () Bool)

(declare-fun e!593023 () Bool)

(declare-datatypes ((Unit!34172 0))(
  ( (Unit!34173) )
))
(declare-datatypes ((tuple2!15914 0))(
  ( (tuple2!15915 (_1!7967 Unit!34172) (_2!7967 LongMapFixedSize!6062)) )
))
(declare-fun lt!461950 () tuple2!15914)

(declare-datatypes ((List!22152 0))(
  ( (Nil!22149) (Cons!22148 (h!23356 (_ BitVec 64)) (t!31445 List!22152)) )
))
(declare-fun arrayNoDuplicates!0 (array!65912 (_ BitVec 32) List!22152) Bool)

(assert (=> b!1045966 (= e!593023 (arrayNoDuplicates!0 (_keys!11700 (_2!7967 lt!461950)) #b00000000000000000000000000000000 Nil!22149))))

(declare-fun res!696452 () Bool)

(assert (=> start!92018 (=> (not res!696452) (not e!593020))))

(declare-fun valid!2228 (LongMapFixedSize!6062) Bool)

(assert (=> start!92018 (= res!696452 (valid!2228 thiss!1427))))

(assert (=> start!92018 e!593020))

(declare-fun e!593017 () Bool)

(assert (=> start!92018 e!593017))

(assert (=> start!92018 true))

(declare-fun b!1045967 () Bool)

(declare-fun res!696453 () Bool)

(assert (=> b!1045967 (=> res!696453 e!593023)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65912 (_ BitVec 32)) Bool)

(assert (=> b!1045967 (= res!696453 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11700 (_2!7967 lt!461950)) (mask!30563 (_2!7967 lt!461950)))))))

(declare-fun mapNonEmpty!38957 () Bool)

(declare-fun tp!74727 () Bool)

(declare-fun e!593018 () Bool)

(assert (=> mapNonEmpty!38957 (= mapRes!38957 (and tp!74727 e!593018))))

(declare-fun mapKey!38957 () (_ BitVec 32))

(declare-fun mapRest!38957 () (Array (_ BitVec 32) ValueCell!11734))

(declare-fun mapValue!38957 () ValueCell!11734)

(assert (=> mapNonEmpty!38957 (= (arr!31698 (_values!6452 thiss!1427)) (store mapRest!38957 mapKey!38957 mapValue!38957))))

(declare-fun e!593016 () Bool)

(declare-fun tp_is_empty!24875 () Bool)

(declare-fun array_inv!24325 (array!65912) Bool)

(declare-fun array_inv!24326 (array!65914) Bool)

(assert (=> b!1045968 (= e!593017 (and tp!74728 tp_is_empty!24875 (array_inv!24325 (_keys!11700 thiss!1427)) (array_inv!24326 (_values!6452 thiss!1427)) e!593016))))

(declare-fun b!1045969 () Bool)

(declare-fun e!593021 () Bool)

(assert (=> b!1045969 (= e!593021 tp_is_empty!24875)))

(declare-fun b!1045970 () Bool)

(assert (=> b!1045970 (= e!593018 tp_is_empty!24875)))

(declare-fun b!1045971 () Bool)

(assert (=> b!1045971 (= e!593016 (and e!593021 mapRes!38957))))

(declare-fun condMapEmpty!38957 () Bool)

(declare-fun mapDefault!38957 () ValueCell!11734)

