; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80870 () Bool)

(assert start!80870)

(declare-fun b!947397 () Bool)

(declare-fun b_free!18179 () Bool)

(declare-fun b_next!18179 () Bool)

(assert (=> b!947397 (= b_free!18179 (not b_next!18179))))

(declare-fun tp!63099 () Bool)

(declare-fun b_and!29619 () Bool)

(assert (=> b!947397 (= tp!63099 b_and!29619)))

(declare-fun e!533279 () Bool)

(declare-fun tp_is_empty!20687 () Bool)

(declare-datatypes ((V!32547 0))(
  ( (V!32548 (val!10394 Int)) )
))
(declare-datatypes ((ValueCell!9862 0))(
  ( (ValueCellFull!9862 (v!12928 V!32547)) (EmptyCell!9862) )
))
(declare-datatypes ((array!57394 0))(
  ( (array!57395 (arr!27603 (Array (_ BitVec 32) ValueCell!9862)) (size!28077 (_ BitVec 32))) )
))
(declare-datatypes ((array!57396 0))(
  ( (array!57397 (arr!27604 (Array (_ BitVec 32) (_ BitVec 64))) (size!28078 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4874 0))(
  ( (LongMapFixedSize!4875 (defaultEntry!5734 Int) (mask!27467 (_ BitVec 32)) (extraKeys!5466 (_ BitVec 32)) (zeroValue!5570 V!32547) (minValue!5570 V!32547) (_size!2492 (_ BitVec 32)) (_keys!10641 array!57396) (_values!5757 array!57394) (_vacant!2492 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4874)

(declare-fun e!533274 () Bool)

(declare-fun array_inv!21376 (array!57396) Bool)

(declare-fun array_inv!21377 (array!57394) Bool)

(assert (=> b!947397 (= e!533274 (and tp!63099 tp_is_empty!20687 (array_inv!21376 (_keys!10641 thiss!1141)) (array_inv!21377 (_values!5757 thiss!1141)) e!533279))))

(declare-fun b!947398 () Bool)

(declare-fun e!533280 () Bool)

(assert (=> b!947398 (= e!533280 tp_is_empty!20687)))

(declare-fun b!947399 () Bool)

(declare-fun res!635931 () Bool)

(declare-fun e!533278 () Bool)

(assert (=> b!947399 (=> res!635931 e!533278)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57396 (_ BitVec 32)) Bool)

(assert (=> b!947399 (= res!635931 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10641 thiss!1141) (mask!27467 thiss!1141))))))

(declare-fun b!947400 () Bool)

(declare-fun res!635926 () Bool)

(assert (=> b!947400 (=> res!635926 e!533278)))

(declare-datatypes ((List!19438 0))(
  ( (Nil!19435) (Cons!19434 (h!20590 (_ BitVec 64)) (t!27767 List!19438)) )
))
(declare-fun arrayNoDuplicates!0 (array!57396 (_ BitVec 32) List!19438) Bool)

(assert (=> b!947400 (= res!635926 (not (arrayNoDuplicates!0 (_keys!10641 thiss!1141) #b00000000000000000000000000000000 Nil!19435)))))

(declare-fun mapNonEmpty!32908 () Bool)

(declare-fun mapRes!32908 () Bool)

(declare-fun tp!63100 () Bool)

(assert (=> mapNonEmpty!32908 (= mapRes!32908 (and tp!63100 e!533280))))

(declare-fun mapValue!32908 () ValueCell!9862)

(declare-fun mapKey!32908 () (_ BitVec 32))

(declare-fun mapRest!32908 () (Array (_ BitVec 32) ValueCell!9862))

(assert (=> mapNonEmpty!32908 (= (arr!27603 (_values!5757 thiss!1141)) (store mapRest!32908 mapKey!32908 mapValue!32908))))

(declare-fun b!947401 () Bool)

(declare-datatypes ((SeekEntryResult!9109 0))(
  ( (MissingZero!9109 (index!38806 (_ BitVec 32))) (Found!9109 (index!38807 (_ BitVec 32))) (Intermediate!9109 (undefined!9921 Bool) (index!38808 (_ BitVec 32)) (x!81502 (_ BitVec 32))) (Undefined!9109) (MissingVacant!9109 (index!38809 (_ BitVec 32))) )
))
(declare-fun lt!426545 () SeekEntryResult!9109)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!947401 (= e!533278 (validKeyInArray!0 (select (arr!27604 (_keys!10641 thiss!1141)) (index!38807 lt!426545))))))

(declare-fun b!947402 () Bool)

(declare-fun e!533281 () Bool)

(declare-fun e!533275 () Bool)

(assert (=> b!947402 (= e!533281 e!533275)))

(declare-fun res!635932 () Bool)

(assert (=> b!947402 (=> (not res!635932) (not e!533275))))

(assert (=> b!947402 (= res!635932 (is-Found!9109 lt!426545))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57396 (_ BitVec 32)) SeekEntryResult!9109)

(assert (=> b!947402 (= lt!426545 (seekEntry!0 key!756 (_keys!10641 thiss!1141) (mask!27467 thiss!1141)))))

(declare-fun b!947403 () Bool)

(declare-fun e!533277 () Bool)

(assert (=> b!947403 (= e!533279 (and e!533277 mapRes!32908))))

(declare-fun condMapEmpty!32908 () Bool)

(declare-fun mapDefault!32908 () ValueCell!9862)

