; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80060 () Bool)

(assert start!80060)

(declare-fun b!940840 () Bool)

(declare-fun b_free!17887 () Bool)

(declare-fun b_next!17887 () Bool)

(assert (=> b!940840 (= b_free!17887 (not b_next!17887))))

(declare-fun tp!62136 () Bool)

(declare-fun b_and!29317 () Bool)

(assert (=> b!940840 (= tp!62136 b_and!29317)))

(declare-fun b!940836 () Bool)

(declare-fun res!632692 () Bool)

(declare-fun e!528886 () Bool)

(assert (=> b!940836 (=> res!632692 e!528886)))

(declare-datatypes ((V!32159 0))(
  ( (V!32160 (val!10248 Int)) )
))
(declare-datatypes ((ValueCell!9716 0))(
  ( (ValueCellFull!9716 (v!12779 V!32159)) (EmptyCell!9716) )
))
(declare-datatypes ((array!56760 0))(
  ( (array!56761 (arr!27311 (Array (_ BitVec 32) ValueCell!9716)) (size!27773 (_ BitVec 32))) )
))
(declare-datatypes ((array!56762 0))(
  ( (array!56763 (arr!27312 (Array (_ BitVec 32) (_ BitVec 64))) (size!27774 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4582 0))(
  ( (LongMapFixedSize!4583 (defaultEntry!5582 Int) (mask!27128 (_ BitVec 32)) (extraKeys!5314 (_ BitVec 32)) (zeroValue!5418 V!32159) (minValue!5418 V!32159) (_size!2346 (_ BitVec 32)) (_keys!10428 array!56762) (_values!5605 array!56760) (_vacant!2346 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4582)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56762 (_ BitVec 32)) Bool)

(assert (=> b!940836 (= res!632692 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10428 thiss!1141) (mask!27128 thiss!1141))))))

(declare-fun b!940837 () Bool)

(declare-fun e!528882 () Bool)

(assert (=> b!940837 (= e!528882 (not e!528886))))

(declare-fun res!632694 () Bool)

(assert (=> b!940837 (=> res!632694 e!528886)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940837 (= res!632694 (not (validMask!0 (mask!27128 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940837 (arrayContainsKey!0 (_keys!10428 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31795 0))(
  ( (Unit!31796) )
))
(declare-fun lt!424820 () Unit!31795)

(declare-datatypes ((SeekEntryResult!9004 0))(
  ( (MissingZero!9004 (index!38386 (_ BitVec 32))) (Found!9004 (index!38387 (_ BitVec 32))) (Intermediate!9004 (undefined!9816 Bool) (index!38388 (_ BitVec 32)) (x!80706 (_ BitVec 32))) (Undefined!9004) (MissingVacant!9004 (index!38389 (_ BitVec 32))) )
))
(declare-fun lt!424821 () SeekEntryResult!9004)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56762 (_ BitVec 64) (_ BitVec 32)) Unit!31795)

(assert (=> b!940837 (= lt!424820 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10428 thiss!1141) key!756 (index!38387 lt!424821)))))

(declare-fun b!940838 () Bool)

(declare-fun res!632696 () Bool)

(declare-fun e!528888 () Bool)

(assert (=> b!940838 (=> (not res!632696) (not e!528888))))

(assert (=> b!940838 (= res!632696 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940839 () Bool)

(declare-fun res!632695 () Bool)

(assert (=> b!940839 (=> res!632695 e!528886)))

(assert (=> b!940839 (= res!632695 (or (not (= (size!27773 (_values!5605 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27128 thiss!1141)))) (not (= (size!27774 (_keys!10428 thiss!1141)) (size!27773 (_values!5605 thiss!1141)))) (bvslt (mask!27128 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5314 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5314 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!32383 () Bool)

(declare-fun mapRes!32383 () Bool)

(declare-fun tp!62137 () Bool)

(declare-fun e!528884 () Bool)

(assert (=> mapNonEmpty!32383 (= mapRes!32383 (and tp!62137 e!528884))))

(declare-fun mapKey!32383 () (_ BitVec 32))

(declare-fun mapValue!32383 () ValueCell!9716)

(declare-fun mapRest!32383 () (Array (_ BitVec 32) ValueCell!9716))

(assert (=> mapNonEmpty!32383 (= (arr!27311 (_values!5605 thiss!1141)) (store mapRest!32383 mapKey!32383 mapValue!32383))))

(declare-fun e!528885 () Bool)

(declare-fun e!528883 () Bool)

(declare-fun tp_is_empty!20395 () Bool)

(declare-fun array_inv!21180 (array!56762) Bool)

(declare-fun array_inv!21181 (array!56760) Bool)

(assert (=> b!940840 (= e!528885 (and tp!62136 tp_is_empty!20395 (array_inv!21180 (_keys!10428 thiss!1141)) (array_inv!21181 (_values!5605 thiss!1141)) e!528883))))

(declare-fun b!940841 () Bool)

(declare-fun e!528887 () Bool)

(assert (=> b!940841 (= e!528883 (and e!528887 mapRes!32383))))

(declare-fun condMapEmpty!32383 () Bool)

(declare-fun mapDefault!32383 () ValueCell!9716)

