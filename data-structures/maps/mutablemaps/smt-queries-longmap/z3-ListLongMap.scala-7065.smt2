; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89482 () Bool)

(assert start!89482)

(declare-fun b!1025667 () Bool)

(declare-fun b_free!20445 () Bool)

(declare-fun b_next!20445 () Bool)

(assert (=> b!1025667 (= b_free!20445 (not b_next!20445))))

(declare-fun tp!72382 () Bool)

(declare-fun b_and!32709 () Bool)

(assert (=> b!1025667 (= tp!72382 b_and!32709)))

(declare-fun b!1025662 () Bool)

(declare-fun res!686767 () Bool)

(declare-fun e!578405 () Bool)

(assert (=> b!1025662 (=> (not res!686767) (not e!578405))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025662 (= res!686767 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025663 () Bool)

(declare-fun res!686763 () Bool)

(declare-fun e!578404 () Bool)

(assert (=> b!1025663 (=> res!686763 e!578404)))

(declare-datatypes ((V!37093 0))(
  ( (V!37094 (val!12133 Int)) )
))
(declare-datatypes ((ValueCell!11379 0))(
  ( (ValueCellFull!11379 (v!14703 V!37093)) (EmptyCell!11379) )
))
(declare-datatypes ((array!64364 0))(
  ( (array!64365 (arr!30987 (Array (_ BitVec 32) (_ BitVec 64))) (size!31501 (_ BitVec 32))) )
))
(declare-datatypes ((array!64366 0))(
  ( (array!64367 (arr!30988 (Array (_ BitVec 32) ValueCell!11379)) (size!31502 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5352 0))(
  ( (LongMapFixedSize!5353 (defaultEntry!6028 Int) (mask!29699 (_ BitVec 32)) (extraKeys!5760 (_ BitVec 32)) (zeroValue!5864 V!37093) (minValue!5864 V!37093) (_size!2731 (_ BitVec 32)) (_keys!11172 array!64364) (_values!6051 array!64366) (_vacant!2731 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5352)

(declare-datatypes ((SeekEntryResult!9613 0))(
  ( (MissingZero!9613 (index!40822 (_ BitVec 32))) (Found!9613 (index!40823 (_ BitVec 32))) (Intermediate!9613 (undefined!10425 Bool) (index!40824 (_ BitVec 32)) (x!91198 (_ BitVec 32))) (Undefined!9613) (MissingVacant!9613 (index!40825 (_ BitVec 32))) )
))
(declare-fun lt!451045 () SeekEntryResult!9613)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025663 (= res!686763 (not (validKeyInArray!0 (select (arr!30987 (_keys!11172 thiss!1427)) (index!40823 lt!451045)))))))

(declare-fun mapIsEmpty!37676 () Bool)

(declare-fun mapRes!37676 () Bool)

(assert (=> mapIsEmpty!37676 mapRes!37676))

(declare-fun b!1025664 () Bool)

(declare-fun e!578406 () Bool)

(declare-fun tp_is_empty!24165 () Bool)

(assert (=> b!1025664 (= e!578406 tp_is_empty!24165)))

(declare-fun b!1025665 () Bool)

(declare-fun e!578403 () Bool)

(assert (=> b!1025665 (= e!578403 tp_is_empty!24165)))

(declare-fun b!1025666 () Bool)

(assert (=> b!1025666 (= e!578404 true)))

(declare-fun lt!451042 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64364 (_ BitVec 32)) Bool)

(assert (=> b!1025666 (= lt!451042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11172 thiss!1427) (mask!29699 thiss!1427)))))

(declare-fun e!578407 () Bool)

(declare-fun e!578401 () Bool)

(declare-fun array_inv!23851 (array!64364) Bool)

(declare-fun array_inv!23852 (array!64366) Bool)

(assert (=> b!1025667 (= e!578407 (and tp!72382 tp_is_empty!24165 (array_inv!23851 (_keys!11172 thiss!1427)) (array_inv!23852 (_values!6051 thiss!1427)) e!578401))))

(declare-fun b!1025668 () Bool)

(assert (=> b!1025668 (= e!578401 (and e!578406 mapRes!37676))))

(declare-fun condMapEmpty!37676 () Bool)

(declare-fun mapDefault!37676 () ValueCell!11379)

(assert (=> b!1025668 (= condMapEmpty!37676 (= (arr!30988 (_values!6051 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11379)) mapDefault!37676)))))

(declare-fun mapNonEmpty!37676 () Bool)

(declare-fun tp!72381 () Bool)

(assert (=> mapNonEmpty!37676 (= mapRes!37676 (and tp!72381 e!578403))))

(declare-fun mapRest!37676 () (Array (_ BitVec 32) ValueCell!11379))

(declare-fun mapValue!37676 () ValueCell!11379)

(declare-fun mapKey!37676 () (_ BitVec 32))

(assert (=> mapNonEmpty!37676 (= (arr!30988 (_values!6051 thiss!1427)) (store mapRest!37676 mapKey!37676 mapValue!37676))))

(declare-fun res!686766 () Bool)

(assert (=> start!89482 (=> (not res!686766) (not e!578405))))

(declare-fun valid!1986 (LongMapFixedSize!5352) Bool)

(assert (=> start!89482 (= res!686766 (valid!1986 thiss!1427))))

(assert (=> start!89482 e!578405))

(assert (=> start!89482 e!578407))

(assert (=> start!89482 true))

(declare-fun b!1025669 () Bool)

(declare-fun res!686764 () Bool)

(assert (=> b!1025669 (=> res!686764 e!578404)))

(declare-datatypes ((List!21865 0))(
  ( (Nil!21862) (Cons!21861 (h!23059 (_ BitVec 64)) (t!30934 List!21865)) )
))
(declare-fun arrayNoDuplicates!0 (array!64364 (_ BitVec 32) List!21865) Bool)

(assert (=> b!1025669 (= res!686764 (not (arrayNoDuplicates!0 (_keys!11172 thiss!1427) #b00000000000000000000000000000000 Nil!21862)))))

(declare-fun b!1025670 () Bool)

(declare-fun e!578408 () Bool)

(assert (=> b!1025670 (= e!578405 e!578408)))

(declare-fun res!686768 () Bool)

(assert (=> b!1025670 (=> (not res!686768) (not e!578408))))

(get-info :version)

(assert (=> b!1025670 (= res!686768 ((_ is Found!9613) lt!451045))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64364 (_ BitVec 32)) SeekEntryResult!9613)

(assert (=> b!1025670 (= lt!451045 (seekEntry!0 key!909 (_keys!11172 thiss!1427) (mask!29699 thiss!1427)))))

(declare-fun b!1025671 () Bool)

(declare-fun res!686765 () Bool)

(assert (=> b!1025671 (=> res!686765 e!578404)))

(assert (=> b!1025671 (= res!686765 (or (not (= (size!31501 (_keys!11172 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29699 thiss!1427)))) (bvslt (index!40823 lt!451045) #b00000000000000000000000000000000) (bvsge (index!40823 lt!451045) (size!31501 (_keys!11172 thiss!1427)))))))

(declare-fun b!1025672 () Bool)

(assert (=> b!1025672 (= e!578408 (not e!578404))))

(declare-fun res!686769 () Bool)

(assert (=> b!1025672 (=> res!686769 e!578404)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025672 (= res!686769 (not (validMask!0 (mask!29699 thiss!1427))))))

(declare-fun lt!451044 () array!64364)

(assert (=> b!1025672 (arrayNoDuplicates!0 lt!451044 #b00000000000000000000000000000000 Nil!21862)))

(declare-datatypes ((Unit!33364 0))(
  ( (Unit!33365) )
))
(declare-fun lt!451041 () Unit!33364)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64364 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21865) Unit!33364)

(assert (=> b!1025672 (= lt!451041 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11172 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40823 lt!451045) #b00000000000000000000000000000000 Nil!21862))))

(declare-fun arrayCountValidKeys!0 (array!64364 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025672 (= (arrayCountValidKeys!0 lt!451044 #b00000000000000000000000000000000 (size!31501 (_keys!11172 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11172 thiss!1427) #b00000000000000000000000000000000 (size!31501 (_keys!11172 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025672 (= lt!451044 (array!64365 (store (arr!30987 (_keys!11172 thiss!1427)) (index!40823 lt!451045) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31501 (_keys!11172 thiss!1427))))))

(declare-fun lt!451043 () Unit!33364)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64364 (_ BitVec 32) (_ BitVec 64)) Unit!33364)

(assert (=> b!1025672 (= lt!451043 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11172 thiss!1427) (index!40823 lt!451045) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!89482 res!686766) b!1025662))

(assert (= (and b!1025662 res!686767) b!1025670))

(assert (= (and b!1025670 res!686768) b!1025672))

(assert (= (and b!1025672 (not res!686769)) b!1025671))

(assert (= (and b!1025671 (not res!686765)) b!1025663))

(assert (= (and b!1025663 (not res!686763)) b!1025669))

(assert (= (and b!1025669 (not res!686764)) b!1025666))

(assert (= (and b!1025668 condMapEmpty!37676) mapIsEmpty!37676))

(assert (= (and b!1025668 (not condMapEmpty!37676)) mapNonEmpty!37676))

(assert (= (and mapNonEmpty!37676 ((_ is ValueCellFull!11379) mapValue!37676)) b!1025665))

(assert (= (and b!1025668 ((_ is ValueCellFull!11379) mapDefault!37676)) b!1025664))

(assert (= b!1025667 b!1025668))

(assert (= start!89482 b!1025667))

(declare-fun m!943971 () Bool)

(assert (=> mapNonEmpty!37676 m!943971))

(declare-fun m!943973 () Bool)

(assert (=> b!1025669 m!943973))

(declare-fun m!943975 () Bool)

(assert (=> b!1025663 m!943975))

(assert (=> b!1025663 m!943975))

(declare-fun m!943977 () Bool)

(assert (=> b!1025663 m!943977))

(declare-fun m!943979 () Bool)

(assert (=> b!1025670 m!943979))

(declare-fun m!943981 () Bool)

(assert (=> start!89482 m!943981))

(declare-fun m!943983 () Bool)

(assert (=> b!1025672 m!943983))

(declare-fun m!943985 () Bool)

(assert (=> b!1025672 m!943985))

(declare-fun m!943987 () Bool)

(assert (=> b!1025672 m!943987))

(declare-fun m!943989 () Bool)

(assert (=> b!1025672 m!943989))

(declare-fun m!943991 () Bool)

(assert (=> b!1025672 m!943991))

(declare-fun m!943993 () Bool)

(assert (=> b!1025672 m!943993))

(declare-fun m!943995 () Bool)

(assert (=> b!1025672 m!943995))

(declare-fun m!943997 () Bool)

(assert (=> b!1025667 m!943997))

(declare-fun m!943999 () Bool)

(assert (=> b!1025667 m!943999))

(declare-fun m!944001 () Bool)

(assert (=> b!1025666 m!944001))

(check-sat b_and!32709 (not mapNonEmpty!37676) (not b!1025666) (not start!89482) (not b!1025663) (not b!1025670) (not b!1025669) (not b!1025667) (not b_next!20445) (not b!1025672) tp_is_empty!24165)
(check-sat b_and!32709 (not b_next!20445))
