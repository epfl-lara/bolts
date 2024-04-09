; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75792 () Bool)

(assert start!75792)

(declare-fun b!890845 () Bool)

(declare-fun b_free!15735 () Bool)

(declare-fun b_next!15735 () Bool)

(assert (=> b!890845 (= b_free!15735 (not b_next!15735))))

(declare-fun tp!55175 () Bool)

(declare-fun b_and!25993 () Bool)

(assert (=> b!890845 (= tp!55175 b_and!25993)))

(declare-fun b!890843 () Bool)

(declare-fun e!497030 () Bool)

(declare-datatypes ((SeekEntryResult!8807 0))(
  ( (MissingZero!8807 (index!37598 (_ BitVec 32))) (Found!8807 (index!37599 (_ BitVec 32))) (Intermediate!8807 (undefined!9619 Bool) (index!37600 (_ BitVec 32)) (x!75688 (_ BitVec 32))) (Undefined!8807) (MissingVacant!8807 (index!37601 (_ BitVec 32))) )
))
(declare-fun lt!402445 () SeekEntryResult!8807)

(declare-datatypes ((array!52092 0))(
  ( (array!52093 (arr!25048 (Array (_ BitVec 32) (_ BitVec 64))) (size!25493 (_ BitVec 32))) )
))
(declare-datatypes ((V!29049 0))(
  ( (V!29050 (val!9082 Int)) )
))
(declare-datatypes ((ValueCell!8550 0))(
  ( (ValueCellFull!8550 (v!11554 V!29049)) (EmptyCell!8550) )
))
(declare-datatypes ((array!52094 0))(
  ( (array!52095 (arr!25049 (Array (_ BitVec 32) ValueCell!8550)) (size!25494 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4116 0))(
  ( (LongMapFixedSize!4117 (defaultEntry!5255 Int) (mask!25733 (_ BitVec 32)) (extraKeys!4949 (_ BitVec 32)) (zeroValue!5053 V!29049) (minValue!5053 V!29049) (_size!2113 (_ BitVec 32)) (_keys!9934 array!52092) (_values!5240 array!52094) (_vacant!2113 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4116)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890843 (= e!497030 (inRange!0 (index!37599 lt!402445) (mask!25733 thiss!1181)))))

(declare-fun b!890844 () Bool)

(declare-fun e!497031 () Bool)

(assert (=> b!890844 (= e!497031 true)))

(declare-fun lt!402444 () Bool)

(declare-datatypes ((List!17813 0))(
  ( (Nil!17810) (Cons!17809 (h!18940 (_ BitVec 64)) (t!25120 List!17813)) )
))
(declare-fun arrayNoDuplicates!0 (array!52092 (_ BitVec 32) List!17813) Bool)

(assert (=> b!890844 (= lt!402444 (arrayNoDuplicates!0 (_keys!9934 thiss!1181) #b00000000000000000000000000000000 Nil!17810))))

(declare-fun e!497034 () Bool)

(declare-fun e!497032 () Bool)

(declare-fun tp_is_empty!18063 () Bool)

(declare-fun array_inv!19660 (array!52092) Bool)

(declare-fun array_inv!19661 (array!52094) Bool)

(assert (=> b!890845 (= e!497034 (and tp!55175 tp_is_empty!18063 (array_inv!19660 (_keys!9934 thiss!1181)) (array_inv!19661 (_values!5240 thiss!1181)) e!497032))))

(declare-fun res!603692 () Bool)

(declare-fun e!497028 () Bool)

(assert (=> start!75792 (=> (not res!603692) (not e!497028))))

(declare-fun valid!1586 (LongMapFixedSize!4116) Bool)

(assert (=> start!75792 (= res!603692 (valid!1586 thiss!1181))))

(assert (=> start!75792 e!497028))

(assert (=> start!75792 e!497034))

(assert (=> start!75792 true))

(declare-fun b!890846 () Bool)

(declare-fun res!603693 () Bool)

(assert (=> b!890846 (=> (not res!603693) (not e!497028))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890846 (= res!603693 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890847 () Bool)

(declare-fun res!603687 () Bool)

(assert (=> b!890847 (=> res!603687 e!497031)))

(assert (=> b!890847 (= res!603687 (or (not (= (size!25494 (_values!5240 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25733 thiss!1181)))) (not (= (size!25493 (_keys!9934 thiss!1181)) (size!25494 (_values!5240 thiss!1181)))) (bvslt (mask!25733 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4949 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4949 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28649 () Bool)

(declare-fun mapRes!28649 () Bool)

(assert (=> mapIsEmpty!28649 mapRes!28649))

(declare-fun b!890848 () Bool)

(declare-fun e!497029 () Bool)

(assert (=> b!890848 (= e!497032 (and e!497029 mapRes!28649))))

(declare-fun condMapEmpty!28649 () Bool)

(declare-fun mapDefault!28649 () ValueCell!8550)

(assert (=> b!890848 (= condMapEmpty!28649 (= (arr!25049 (_values!5240 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8550)) mapDefault!28649)))))

(declare-fun b!890849 () Bool)

(declare-fun res!603688 () Bool)

(assert (=> b!890849 (=> res!603688 e!497031)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52092 (_ BitVec 32)) Bool)

(assert (=> b!890849 (= res!603688 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9934 thiss!1181) (mask!25733 thiss!1181))))))

(declare-fun b!890850 () Bool)

(assert (=> b!890850 (= e!497029 tp_is_empty!18063)))

(declare-fun mapNonEmpty!28649 () Bool)

(declare-fun tp!55174 () Bool)

(declare-fun e!497033 () Bool)

(assert (=> mapNonEmpty!28649 (= mapRes!28649 (and tp!55174 e!497033))))

(declare-fun mapRest!28649 () (Array (_ BitVec 32) ValueCell!8550))

(declare-fun mapValue!28649 () ValueCell!8550)

(declare-fun mapKey!28649 () (_ BitVec 32))

(assert (=> mapNonEmpty!28649 (= (arr!25049 (_values!5240 thiss!1181)) (store mapRest!28649 mapKey!28649 mapValue!28649))))

(declare-fun b!890851 () Bool)

(declare-fun e!497035 () Bool)

(assert (=> b!890851 (= e!497035 e!497031)))

(declare-fun res!603691 () Bool)

(assert (=> b!890851 (=> res!603691 e!497031)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890851 (= res!603691 (not (validMask!0 (mask!25733 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890851 (arrayContainsKey!0 (_keys!9934 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30299 0))(
  ( (Unit!30300) )
))
(declare-fun lt!402446 () Unit!30299)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52092 (_ BitVec 64) (_ BitVec 32)) Unit!30299)

(assert (=> b!890851 (= lt!402446 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9934 thiss!1181) key!785 (index!37599 lt!402445)))))

(declare-fun b!890852 () Bool)

(assert (=> b!890852 (= e!497033 tp_is_empty!18063)))

(declare-fun b!890853 () Bool)

(assert (=> b!890853 (= e!497028 (not e!497035))))

(declare-fun res!603690 () Bool)

(assert (=> b!890853 (=> res!603690 e!497035)))

(get-info :version)

(assert (=> b!890853 (= res!603690 (not ((_ is Found!8807) lt!402445)))))

(assert (=> b!890853 e!497030))

(declare-fun res!603689 () Bool)

(assert (=> b!890853 (=> res!603689 e!497030)))

(assert (=> b!890853 (= res!603689 (not ((_ is Found!8807) lt!402445)))))

(declare-fun lt!402447 () Unit!30299)

(declare-fun lemmaSeekEntryGivesInRangeIndex!28 (array!52092 array!52094 (_ BitVec 32) (_ BitVec 32) V!29049 V!29049 (_ BitVec 64)) Unit!30299)

(assert (=> b!890853 (= lt!402447 (lemmaSeekEntryGivesInRangeIndex!28 (_keys!9934 thiss!1181) (_values!5240 thiss!1181) (mask!25733 thiss!1181) (extraKeys!4949 thiss!1181) (zeroValue!5053 thiss!1181) (minValue!5053 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52092 (_ BitVec 32)) SeekEntryResult!8807)

(assert (=> b!890853 (= lt!402445 (seekEntry!0 key!785 (_keys!9934 thiss!1181) (mask!25733 thiss!1181)))))

(assert (= (and start!75792 res!603692) b!890846))

(assert (= (and b!890846 res!603693) b!890853))

(assert (= (and b!890853 (not res!603689)) b!890843))

(assert (= (and b!890853 (not res!603690)) b!890851))

(assert (= (and b!890851 (not res!603691)) b!890847))

(assert (= (and b!890847 (not res!603687)) b!890849))

(assert (= (and b!890849 (not res!603688)) b!890844))

(assert (= (and b!890848 condMapEmpty!28649) mapIsEmpty!28649))

(assert (= (and b!890848 (not condMapEmpty!28649)) mapNonEmpty!28649))

(assert (= (and mapNonEmpty!28649 ((_ is ValueCellFull!8550) mapValue!28649)) b!890852))

(assert (= (and b!890848 ((_ is ValueCellFull!8550) mapDefault!28649)) b!890850))

(assert (= b!890845 b!890848))

(assert (= start!75792 b!890845))

(declare-fun m!829345 () Bool)

(assert (=> b!890843 m!829345))

(declare-fun m!829347 () Bool)

(assert (=> b!890853 m!829347))

(declare-fun m!829349 () Bool)

(assert (=> b!890853 m!829349))

(declare-fun m!829351 () Bool)

(assert (=> mapNonEmpty!28649 m!829351))

(declare-fun m!829353 () Bool)

(assert (=> b!890845 m!829353))

(declare-fun m!829355 () Bool)

(assert (=> b!890845 m!829355))

(declare-fun m!829357 () Bool)

(assert (=> b!890851 m!829357))

(declare-fun m!829359 () Bool)

(assert (=> b!890851 m!829359))

(declare-fun m!829361 () Bool)

(assert (=> b!890851 m!829361))

(declare-fun m!829363 () Bool)

(assert (=> start!75792 m!829363))

(declare-fun m!829365 () Bool)

(assert (=> b!890844 m!829365))

(declare-fun m!829367 () Bool)

(assert (=> b!890849 m!829367))

(check-sat (not b!890849) tp_is_empty!18063 (not b_next!15735) (not b!890843) (not b!890844) (not mapNonEmpty!28649) (not start!75792) b_and!25993 (not b!890845) (not b!890851) (not b!890853))
(check-sat b_and!25993 (not b_next!15735))
