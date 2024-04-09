; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80058 () Bool)

(assert start!80058)

(declare-fun b!940812 () Bool)

(declare-fun b_free!17885 () Bool)

(declare-fun b_next!17885 () Bool)

(assert (=> b!940812 (= b_free!17885 (not b_next!17885))))

(declare-fun tp!62131 () Bool)

(declare-fun b_and!29315 () Bool)

(assert (=> b!940812 (= tp!62131 b_and!29315)))

(declare-fun b!940806 () Bool)

(declare-fun e!528862 () Bool)

(declare-fun e!528858 () Bool)

(assert (=> b!940806 (= e!528862 (not e!528858))))

(declare-fun res!632674 () Bool)

(assert (=> b!940806 (=> res!632674 e!528858)))

(declare-datatypes ((V!32155 0))(
  ( (V!32156 (val!10247 Int)) )
))
(declare-datatypes ((ValueCell!9715 0))(
  ( (ValueCellFull!9715 (v!12778 V!32155)) (EmptyCell!9715) )
))
(declare-datatypes ((array!56756 0))(
  ( (array!56757 (arr!27309 (Array (_ BitVec 32) ValueCell!9715)) (size!27771 (_ BitVec 32))) )
))
(declare-datatypes ((array!56758 0))(
  ( (array!56759 (arr!27310 (Array (_ BitVec 32) (_ BitVec 64))) (size!27772 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4580 0))(
  ( (LongMapFixedSize!4581 (defaultEntry!5581 Int) (mask!27125 (_ BitVec 32)) (extraKeys!5313 (_ BitVec 32)) (zeroValue!5417 V!32155) (minValue!5417 V!32155) (_size!2345 (_ BitVec 32)) (_keys!10427 array!56758) (_values!5604 array!56756) (_vacant!2345 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4580)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940806 (= res!632674 (not (validMask!0 (mask!27125 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940806 (arrayContainsKey!0 (_keys!10427 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9003 0))(
  ( (MissingZero!9003 (index!38382 (_ BitVec 32))) (Found!9003 (index!38383 (_ BitVec 32))) (Intermediate!9003 (undefined!9815 Bool) (index!38384 (_ BitVec 32)) (x!80697 (_ BitVec 32))) (Undefined!9003) (MissingVacant!9003 (index!38385 (_ BitVec 32))) )
))
(declare-fun lt!424812 () SeekEntryResult!9003)

(declare-datatypes ((Unit!31793 0))(
  ( (Unit!31794) )
))
(declare-fun lt!424810 () Unit!31793)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56758 (_ BitVec 64) (_ BitVec 32)) Unit!31793)

(assert (=> b!940806 (= lt!424810 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10427 thiss!1141) key!756 (index!38383 lt!424812)))))

(declare-fun b!940807 () Bool)

(assert (=> b!940807 (= e!528858 true)))

(declare-fun lt!424811 () Bool)

(declare-datatypes ((List!19333 0))(
  ( (Nil!19330) (Cons!19329 (h!20475 (_ BitVec 64)) (t!27656 List!19333)) )
))
(declare-fun arrayNoDuplicates!0 (array!56758 (_ BitVec 32) List!19333) Bool)

(assert (=> b!940807 (= lt!424811 (arrayNoDuplicates!0 (_keys!10427 thiss!1141) #b00000000000000000000000000000000 Nil!19330))))

(declare-fun res!632673 () Bool)

(declare-fun e!528859 () Bool)

(assert (=> start!80058 (=> (not res!632673) (not e!528859))))

(declare-fun valid!1738 (LongMapFixedSize!4580) Bool)

(assert (=> start!80058 (= res!632673 (valid!1738 thiss!1141))))

(assert (=> start!80058 e!528859))

(declare-fun e!528863 () Bool)

(assert (=> start!80058 e!528863))

(assert (=> start!80058 true))

(declare-fun b!940808 () Bool)

(declare-fun e!528861 () Bool)

(declare-fun tp_is_empty!20393 () Bool)

(assert (=> b!940808 (= e!528861 tp_is_empty!20393)))

(declare-fun b!940809 () Bool)

(declare-fun res!632675 () Bool)

(assert (=> b!940809 (=> res!632675 e!528858)))

(assert (=> b!940809 (= res!632675 (or (not (= (size!27771 (_values!5604 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27125 thiss!1141)))) (not (= (size!27772 (_keys!10427 thiss!1141)) (size!27771 (_values!5604 thiss!1141)))) (bvslt (mask!27125 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5313 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5313 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940810 () Bool)

(declare-fun res!632677 () Bool)

(assert (=> b!940810 (=> res!632677 e!528858)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56758 (_ BitVec 32)) Bool)

(assert (=> b!940810 (= res!632677 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10427 thiss!1141) (mask!27125 thiss!1141))))))

(declare-fun mapIsEmpty!32380 () Bool)

(declare-fun mapRes!32380 () Bool)

(assert (=> mapIsEmpty!32380 mapRes!32380))

(declare-fun b!940811 () Bool)

(assert (=> b!940811 (= e!528859 e!528862)))

(declare-fun res!632678 () Bool)

(assert (=> b!940811 (=> (not res!632678) (not e!528862))))

(assert (=> b!940811 (= res!632678 (is-Found!9003 lt!424812))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56758 (_ BitVec 32)) SeekEntryResult!9003)

(assert (=> b!940811 (= lt!424812 (seekEntry!0 key!756 (_keys!10427 thiss!1141) (mask!27125 thiss!1141)))))

(declare-fun e!528864 () Bool)

(declare-fun array_inv!21178 (array!56758) Bool)

(declare-fun array_inv!21179 (array!56756) Bool)

(assert (=> b!940812 (= e!528863 (and tp!62131 tp_is_empty!20393 (array_inv!21178 (_keys!10427 thiss!1141)) (array_inv!21179 (_values!5604 thiss!1141)) e!528864))))

(declare-fun b!940813 () Bool)

(declare-fun e!528857 () Bool)

(assert (=> b!940813 (= e!528857 tp_is_empty!20393)))

(declare-fun b!940814 () Bool)

(assert (=> b!940814 (= e!528864 (and e!528861 mapRes!32380))))

(declare-fun condMapEmpty!32380 () Bool)

(declare-fun mapDefault!32380 () ValueCell!9715)

