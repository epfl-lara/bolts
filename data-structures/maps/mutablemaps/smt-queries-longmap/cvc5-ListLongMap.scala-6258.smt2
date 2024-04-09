; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80042 () Bool)

(assert start!80042)

(declare-fun b!940569 () Bool)

(declare-fun b_free!17869 () Bool)

(declare-fun b_next!17869 () Bool)

(assert (=> b!940569 (= b_free!17869 (not b_next!17869))))

(declare-fun tp!62083 () Bool)

(declare-fun b_and!29299 () Bool)

(assert (=> b!940569 (= tp!62083 b_and!29299)))

(declare-fun b!940566 () Bool)

(declare-fun e!528670 () Bool)

(declare-fun e!528671 () Bool)

(assert (=> b!940566 (= e!528670 (not e!528671))))

(declare-fun res!632529 () Bool)

(assert (=> b!940566 (=> res!632529 e!528671)))

(declare-datatypes ((V!32135 0))(
  ( (V!32136 (val!10239 Int)) )
))
(declare-datatypes ((ValueCell!9707 0))(
  ( (ValueCellFull!9707 (v!12770 V!32135)) (EmptyCell!9707) )
))
(declare-datatypes ((array!56724 0))(
  ( (array!56725 (arr!27293 (Array (_ BitVec 32) ValueCell!9707)) (size!27755 (_ BitVec 32))) )
))
(declare-datatypes ((array!56726 0))(
  ( (array!56727 (arr!27294 (Array (_ BitVec 32) (_ BitVec 64))) (size!27756 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4564 0))(
  ( (LongMapFixedSize!4565 (defaultEntry!5573 Int) (mask!27113 (_ BitVec 32)) (extraKeys!5305 (_ BitVec 32)) (zeroValue!5409 V!32135) (minValue!5409 V!32135) (_size!2337 (_ BitVec 32)) (_keys!10419 array!56726) (_values!5596 array!56724) (_vacant!2337 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4564)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940566 (= res!632529 (not (validMask!0 (mask!27113 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940566 (arrayContainsKey!0 (_keys!10419 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31785 0))(
  ( (Unit!31786) )
))
(declare-fun lt!424738 () Unit!31785)

(declare-datatypes ((SeekEntryResult!8997 0))(
  ( (MissingZero!8997 (index!38358 (_ BitVec 32))) (Found!8997 (index!38359 (_ BitVec 32))) (Intermediate!8997 (undefined!9809 Bool) (index!38360 (_ BitVec 32)) (x!80675 (_ BitVec 32))) (Undefined!8997) (MissingVacant!8997 (index!38361 (_ BitVec 32))) )
))
(declare-fun lt!424739 () SeekEntryResult!8997)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56726 (_ BitVec 64) (_ BitVec 32)) Unit!31785)

(assert (=> b!940566 (= lt!424738 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10419 thiss!1141) key!756 (index!38359 lt!424739)))))

(declare-fun b!940567 () Bool)

(declare-fun res!632534 () Bool)

(assert (=> b!940567 (=> res!632534 e!528671)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56726 (_ BitVec 32)) Bool)

(assert (=> b!940567 (= res!632534 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10419 thiss!1141) (mask!27113 thiss!1141))))))

(declare-fun mapIsEmpty!32356 () Bool)

(declare-fun mapRes!32356 () Bool)

(assert (=> mapIsEmpty!32356 mapRes!32356))

(declare-fun b!940568 () Bool)

(declare-fun res!632531 () Bool)

(assert (=> b!940568 (=> res!632531 e!528671)))

(assert (=> b!940568 (= res!632531 (or (not (= (size!27755 (_values!5596 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27113 thiss!1141)))) (not (= (size!27756 (_keys!10419 thiss!1141)) (size!27755 (_values!5596 thiss!1141)))) (bvslt (mask!27113 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5305 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5305 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!632533 () Bool)

(declare-fun e!528667 () Bool)

(assert (=> start!80042 (=> (not res!632533) (not e!528667))))

(declare-fun valid!1734 (LongMapFixedSize!4564) Bool)

(assert (=> start!80042 (= res!632533 (valid!1734 thiss!1141))))

(assert (=> start!80042 e!528667))

(declare-fun e!528665 () Bool)

(assert (=> start!80042 e!528665))

(assert (=> start!80042 true))

(declare-fun e!528672 () Bool)

(declare-fun tp_is_empty!20377 () Bool)

(declare-fun array_inv!21168 (array!56726) Bool)

(declare-fun array_inv!21169 (array!56724) Bool)

(assert (=> b!940569 (= e!528665 (and tp!62083 tp_is_empty!20377 (array_inv!21168 (_keys!10419 thiss!1141)) (array_inv!21169 (_values!5596 thiss!1141)) e!528672))))

(declare-fun b!940570 () Bool)

(declare-fun e!528668 () Bool)

(assert (=> b!940570 (= e!528668 tp_is_empty!20377)))

(declare-fun b!940571 () Bool)

(declare-fun res!632532 () Bool)

(assert (=> b!940571 (=> (not res!632532) (not e!528667))))

(assert (=> b!940571 (= res!632532 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32356 () Bool)

(declare-fun tp!62082 () Bool)

(declare-fun e!528666 () Bool)

(assert (=> mapNonEmpty!32356 (= mapRes!32356 (and tp!62082 e!528666))))

(declare-fun mapValue!32356 () ValueCell!9707)

(declare-fun mapKey!32356 () (_ BitVec 32))

(declare-fun mapRest!32356 () (Array (_ BitVec 32) ValueCell!9707))

(assert (=> mapNonEmpty!32356 (= (arr!27293 (_values!5596 thiss!1141)) (store mapRest!32356 mapKey!32356 mapValue!32356))))

(declare-fun b!940572 () Bool)

(assert (=> b!940572 (= e!528671 true)))

(declare-fun lt!424740 () Bool)

(declare-datatypes ((List!19328 0))(
  ( (Nil!19325) (Cons!19324 (h!20470 (_ BitVec 64)) (t!27651 List!19328)) )
))
(declare-fun arrayNoDuplicates!0 (array!56726 (_ BitVec 32) List!19328) Bool)

(assert (=> b!940572 (= lt!424740 (arrayNoDuplicates!0 (_keys!10419 thiss!1141) #b00000000000000000000000000000000 Nil!19325))))

(declare-fun b!940573 () Bool)

(assert (=> b!940573 (= e!528667 e!528670)))

(declare-fun res!632530 () Bool)

(assert (=> b!940573 (=> (not res!632530) (not e!528670))))

(assert (=> b!940573 (= res!632530 (is-Found!8997 lt!424739))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56726 (_ BitVec 32)) SeekEntryResult!8997)

(assert (=> b!940573 (= lt!424739 (seekEntry!0 key!756 (_keys!10419 thiss!1141) (mask!27113 thiss!1141)))))

(declare-fun b!940574 () Bool)

(assert (=> b!940574 (= e!528666 tp_is_empty!20377)))

(declare-fun b!940575 () Bool)

(assert (=> b!940575 (= e!528672 (and e!528668 mapRes!32356))))

(declare-fun condMapEmpty!32356 () Bool)

(declare-fun mapDefault!32356 () ValueCell!9707)

