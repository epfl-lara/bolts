; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80842 () Bool)

(assert start!80842)

(declare-fun b!947165 () Bool)

(declare-fun b_free!18169 () Bool)

(declare-fun b_next!18169 () Bool)

(assert (=> b!947165 (= b_free!18169 (not b_next!18169))))

(declare-fun tp!63066 () Bool)

(declare-fun b_and!29609 () Bool)

(assert (=> b!947165 (= tp!63066 b_and!29609)))

(declare-fun b!947156 () Bool)

(declare-fun e!533114 () Bool)

(declare-fun tp_is_empty!20677 () Bool)

(assert (=> b!947156 (= e!533114 tp_is_empty!20677)))

(declare-fun b!947157 () Bool)

(declare-fun res!635786 () Bool)

(declare-fun e!533109 () Bool)

(assert (=> b!947157 (=> res!635786 e!533109)))

(declare-datatypes ((V!32535 0))(
  ( (V!32536 (val!10389 Int)) )
))
(declare-datatypes ((ValueCell!9857 0))(
  ( (ValueCellFull!9857 (v!12923 V!32535)) (EmptyCell!9857) )
))
(declare-datatypes ((array!57372 0))(
  ( (array!57373 (arr!27593 (Array (_ BitVec 32) ValueCell!9857)) (size!28067 (_ BitVec 32))) )
))
(declare-datatypes ((array!57374 0))(
  ( (array!57375 (arr!27594 (Array (_ BitVec 32) (_ BitVec 64))) (size!28068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4864 0))(
  ( (LongMapFixedSize!4865 (defaultEntry!5729 Int) (mask!27457 (_ BitVec 32)) (extraKeys!5461 (_ BitVec 32)) (zeroValue!5565 V!32535) (minValue!5565 V!32535) (_size!2487 (_ BitVec 32)) (_keys!10634 array!57374) (_values!5752 array!57372) (_vacant!2487 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4864)

(assert (=> b!947157 (= res!635786 (or (not (= (size!28067 (_values!5752 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27457 thiss!1141)))) (not (= (size!28068 (_keys!10634 thiss!1141)) (size!28067 (_values!5752 thiss!1141)))) (bvslt (mask!27457 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5461 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5461 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!947158 () Bool)

(declare-datatypes ((SeekEntryResult!9104 0))(
  ( (MissingZero!9104 (index!38786 (_ BitVec 32))) (Found!9104 (index!38787 (_ BitVec 32))) (Intermediate!9104 (undefined!9916 Bool) (index!38788 (_ BitVec 32)) (x!81481 (_ BitVec 32))) (Undefined!9104) (MissingVacant!9104 (index!38789 (_ BitVec 32))) )
))
(declare-fun lt!426490 () SeekEntryResult!9104)

(assert (=> b!947158 (= e!533109 (and (bvsge (index!38787 lt!426490) #b00000000000000000000000000000000) (bvslt (index!38787 lt!426490) (size!28068 (_keys!10634 thiss!1141)))))))

(declare-fun b!947159 () Bool)

(declare-fun res!635789 () Bool)

(assert (=> b!947159 (=> res!635789 e!533109)))

(declare-datatypes ((List!19433 0))(
  ( (Nil!19430) (Cons!19429 (h!20585 (_ BitVec 64)) (t!27762 List!19433)) )
))
(declare-fun arrayNoDuplicates!0 (array!57374 (_ BitVec 32) List!19433) Bool)

(assert (=> b!947159 (= res!635789 (not (arrayNoDuplicates!0 (_keys!10634 thiss!1141) #b00000000000000000000000000000000 Nil!19430)))))

(declare-fun res!635784 () Bool)

(declare-fun e!533111 () Bool)

(assert (=> start!80842 (=> (not res!635784) (not e!533111))))

(declare-fun valid!1831 (LongMapFixedSize!4864) Bool)

(assert (=> start!80842 (= res!635784 (valid!1831 thiss!1141))))

(assert (=> start!80842 e!533111))

(declare-fun e!533115 () Bool)

(assert (=> start!80842 e!533115))

(assert (=> start!80842 true))

(declare-fun mapIsEmpty!32890 () Bool)

(declare-fun mapRes!32890 () Bool)

(assert (=> mapIsEmpty!32890 mapRes!32890))

(declare-fun b!947160 () Bool)

(declare-fun e!533110 () Bool)

(assert (=> b!947160 (= e!533111 e!533110)))

(declare-fun res!635785 () Bool)

(assert (=> b!947160 (=> (not res!635785) (not e!533110))))

(assert (=> b!947160 (= res!635785 (is-Found!9104 lt!426490))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57374 (_ BitVec 32)) SeekEntryResult!9104)

(assert (=> b!947160 (= lt!426490 (seekEntry!0 key!756 (_keys!10634 thiss!1141) (mask!27457 thiss!1141)))))

(declare-fun b!947161 () Bool)

(declare-fun e!533112 () Bool)

(assert (=> b!947161 (= e!533112 tp_is_empty!20677)))

(declare-fun b!947162 () Bool)

(declare-fun res!635783 () Bool)

(assert (=> b!947162 (=> (not res!635783) (not e!533111))))

(assert (=> b!947162 (= res!635783 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32890 () Bool)

(declare-fun tp!63067 () Bool)

(assert (=> mapNonEmpty!32890 (= mapRes!32890 (and tp!63067 e!533114))))

(declare-fun mapRest!32890 () (Array (_ BitVec 32) ValueCell!9857))

(declare-fun mapValue!32890 () ValueCell!9857)

(declare-fun mapKey!32890 () (_ BitVec 32))

(assert (=> mapNonEmpty!32890 (= (arr!27593 (_values!5752 thiss!1141)) (store mapRest!32890 mapKey!32890 mapValue!32890))))

(declare-fun b!947163 () Bool)

(declare-fun e!533113 () Bool)

(assert (=> b!947163 (= e!533113 (and e!533112 mapRes!32890))))

(declare-fun condMapEmpty!32890 () Bool)

(declare-fun mapDefault!32890 () ValueCell!9857)

