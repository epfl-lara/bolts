; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89196 () Bool)

(assert start!89196)

(declare-fun b!1022203 () Bool)

(declare-fun b_free!20201 () Bool)

(declare-fun b_next!20201 () Bool)

(assert (=> b!1022203 (= b_free!20201 (not b_next!20201))))

(declare-fun tp!71639 () Bool)

(declare-fun b_and!32417 () Bool)

(assert (=> b!1022203 (= tp!71639 b_and!32417)))

(declare-fun b!1022198 () Bool)

(declare-fun res!684891 () Bool)

(declare-fun e!575855 () Bool)

(assert (=> b!1022198 (=> (not res!684891) (not e!575855))))

(declare-datatypes ((V!36767 0))(
  ( (V!36768 (val!12011 Int)) )
))
(declare-datatypes ((ValueCell!11257 0))(
  ( (ValueCellFull!11257 (v!14581 V!36767)) (EmptyCell!11257) )
))
(declare-datatypes ((array!63870 0))(
  ( (array!63871 (arr!30743 (Array (_ BitVec 32) (_ BitVec 64))) (size!31255 (_ BitVec 32))) )
))
(declare-datatypes ((array!63872 0))(
  ( (array!63873 (arr!30744 (Array (_ BitVec 32) ValueCell!11257)) (size!31256 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5108 0))(
  ( (LongMapFixedSize!5109 (defaultEntry!5906 Int) (mask!29490 (_ BitVec 32)) (extraKeys!5638 (_ BitVec 32)) (zeroValue!5742 V!36767) (minValue!5742 V!36767) (_size!2609 (_ BitVec 32)) (_keys!11048 array!63870) (_values!5929 array!63872) (_vacant!2609 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5108)

(assert (=> b!1022198 (= res!684891 (and (= (size!31256 (_values!5929 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29490 thiss!1427))) (= (size!31255 (_keys!11048 thiss!1427)) (size!31256 (_values!5929 thiss!1427))) (bvsge (mask!29490 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5638 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5638 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5638 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5638 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5638 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5638 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5638 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022199 () Bool)

(declare-fun e!575856 () Bool)

(declare-fun tp_is_empty!23921 () Bool)

(assert (=> b!1022199 (= e!575856 tp_is_empty!23921)))

(declare-fun b!1022200 () Bool)

(declare-fun res!684889 () Bool)

(assert (=> b!1022200 (=> (not res!684889) (not e!575855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63870 (_ BitVec 32)) Bool)

(assert (=> b!1022200 (= res!684889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11048 thiss!1427) (mask!29490 thiss!1427)))))

(declare-fun b!1022201 () Bool)

(assert (=> b!1022201 (= e!575855 false)))

(declare-fun lt!450172 () Bool)

(declare-datatypes ((List!21785 0))(
  ( (Nil!21782) (Cons!21781 (h!22979 (_ BitVec 64)) (t!30806 List!21785)) )
))
(declare-fun arrayNoDuplicates!0 (array!63870 (_ BitVec 32) List!21785) Bool)

(assert (=> b!1022201 (= lt!450172 (arrayNoDuplicates!0 (_keys!11048 thiss!1427) #b00000000000000000000000000000000 Nil!21782))))

(declare-fun b!1022202 () Bool)

(declare-fun e!575857 () Bool)

(assert (=> b!1022202 (= e!575857 tp_is_empty!23921)))

(declare-fun mapIsEmpty!37299 () Bool)

(declare-fun mapRes!37299 () Bool)

(assert (=> mapIsEmpty!37299 mapRes!37299))

(declare-fun e!575854 () Bool)

(declare-fun e!575852 () Bool)

(declare-fun array_inv!23699 (array!63870) Bool)

(declare-fun array_inv!23700 (array!63872) Bool)

(assert (=> b!1022203 (= e!575852 (and tp!71639 tp_is_empty!23921 (array_inv!23699 (_keys!11048 thiss!1427)) (array_inv!23700 (_values!5929 thiss!1427)) e!575854))))

(declare-fun mapNonEmpty!37299 () Bool)

(declare-fun tp!71638 () Bool)

(assert (=> mapNonEmpty!37299 (= mapRes!37299 (and tp!71638 e!575857))))

(declare-fun mapKey!37299 () (_ BitVec 32))

(declare-fun mapRest!37299 () (Array (_ BitVec 32) ValueCell!11257))

(declare-fun mapValue!37299 () ValueCell!11257)

(assert (=> mapNonEmpty!37299 (= (arr!30744 (_values!5929 thiss!1427)) (store mapRest!37299 mapKey!37299 mapValue!37299))))

(declare-fun res!684888 () Bool)

(assert (=> start!89196 (=> (not res!684888) (not e!575855))))

(declare-fun valid!1910 (LongMapFixedSize!5108) Bool)

(assert (=> start!89196 (= res!684888 (valid!1910 thiss!1427))))

(assert (=> start!89196 e!575855))

(assert (=> start!89196 e!575852))

(assert (=> start!89196 true))

(declare-fun b!1022204 () Bool)

(declare-fun res!684887 () Bool)

(assert (=> b!1022204 (=> (not res!684887) (not e!575855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022204 (= res!684887 (validMask!0 (mask!29490 thiss!1427)))))

(declare-fun b!1022205 () Bool)

(assert (=> b!1022205 (= e!575854 (and e!575856 mapRes!37299))))

(declare-fun condMapEmpty!37299 () Bool)

(declare-fun mapDefault!37299 () ValueCell!11257)

