; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80006 () Bool)

(assert start!80006)

(declare-fun b!940029 () Bool)

(declare-fun b_free!17833 () Bool)

(declare-fun b_next!17833 () Bool)

(assert (=> b!940029 (= b_free!17833 (not b_next!17833))))

(declare-fun tp!61975 () Bool)

(declare-fun b_and!29263 () Bool)

(assert (=> b!940029 (= tp!61975 b_and!29263)))

(declare-fun b!940026 () Bool)

(declare-fun e!528237 () Bool)

(declare-fun tp_is_empty!20341 () Bool)

(assert (=> b!940026 (= e!528237 tp_is_empty!20341)))

(declare-fun mapNonEmpty!32302 () Bool)

(declare-fun mapRes!32302 () Bool)

(declare-fun tp!61974 () Bool)

(declare-fun e!528238 () Bool)

(assert (=> mapNonEmpty!32302 (= mapRes!32302 (and tp!61974 e!528238))))

(declare-datatypes ((V!32087 0))(
  ( (V!32088 (val!10221 Int)) )
))
(declare-datatypes ((ValueCell!9689 0))(
  ( (ValueCellFull!9689 (v!12752 V!32087)) (EmptyCell!9689) )
))
(declare-fun mapValue!32302 () ValueCell!9689)

(declare-datatypes ((array!56652 0))(
  ( (array!56653 (arr!27257 (Array (_ BitVec 32) ValueCell!9689)) (size!27719 (_ BitVec 32))) )
))
(declare-datatypes ((array!56654 0))(
  ( (array!56655 (arr!27258 (Array (_ BitVec 32) (_ BitVec 64))) (size!27720 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4528 0))(
  ( (LongMapFixedSize!4529 (defaultEntry!5555 Int) (mask!27083 (_ BitVec 32)) (extraKeys!5287 (_ BitVec 32)) (zeroValue!5391 V!32087) (minValue!5391 V!32087) (_size!2319 (_ BitVec 32)) (_keys!10401 array!56654) (_values!5578 array!56652) (_vacant!2319 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4528)

(declare-fun mapRest!32302 () (Array (_ BitVec 32) ValueCell!9689))

(declare-fun mapKey!32302 () (_ BitVec 32))

(assert (=> mapNonEmpty!32302 (= (arr!27257 (_values!5578 thiss!1141)) (store mapRest!32302 mapKey!32302 mapValue!32302))))

(declare-fun b!940027 () Bool)

(declare-fun res!632206 () Bool)

(declare-fun e!528239 () Bool)

(assert (=> b!940027 (=> res!632206 e!528239)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56654 (_ BitVec 32)) Bool)

(assert (=> b!940027 (= res!632206 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10401 thiss!1141) (mask!27083 thiss!1141))))))

(declare-fun b!940028 () Bool)

(declare-fun res!632208 () Bool)

(declare-fun e!528236 () Bool)

(assert (=> b!940028 (=> (not res!632208) (not e!528236))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!940028 (= res!632208 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!632210 () Bool)

(assert (=> start!80006 (=> (not res!632210) (not e!528236))))

(declare-fun valid!1720 (LongMapFixedSize!4528) Bool)

(assert (=> start!80006 (= res!632210 (valid!1720 thiss!1141))))

(assert (=> start!80006 e!528236))

(declare-fun e!528234 () Bool)

(assert (=> start!80006 e!528234))

(assert (=> start!80006 true))

(declare-fun e!528235 () Bool)

(declare-fun array_inv!21144 (array!56654) Bool)

(declare-fun array_inv!21145 (array!56652) Bool)

(assert (=> b!940029 (= e!528234 (and tp!61975 tp_is_empty!20341 (array_inv!21144 (_keys!10401 thiss!1141)) (array_inv!21145 (_values!5578 thiss!1141)) e!528235))))

(declare-fun b!940030 () Bool)

(assert (=> b!940030 (= e!528239 true)))

(declare-fun lt!424578 () Bool)

(declare-datatypes ((List!19314 0))(
  ( (Nil!19311) (Cons!19310 (h!20456 (_ BitVec 64)) (t!27637 List!19314)) )
))
(declare-fun arrayNoDuplicates!0 (array!56654 (_ BitVec 32) List!19314) Bool)

(assert (=> b!940030 (= lt!424578 (arrayNoDuplicates!0 (_keys!10401 thiss!1141) #b00000000000000000000000000000000 Nil!19311))))

(declare-fun b!940031 () Bool)

(declare-fun e!528240 () Bool)

(assert (=> b!940031 (= e!528236 e!528240)))

(declare-fun res!632209 () Bool)

(assert (=> b!940031 (=> (not res!632209) (not e!528240))))

(declare-datatypes ((SeekEntryResult!8980 0))(
  ( (MissingZero!8980 (index!38290 (_ BitVec 32))) (Found!8980 (index!38291 (_ BitVec 32))) (Intermediate!8980 (undefined!9792 Bool) (index!38292 (_ BitVec 32)) (x!80610 (_ BitVec 32))) (Undefined!8980) (MissingVacant!8980 (index!38293 (_ BitVec 32))) )
))
(declare-fun lt!424577 () SeekEntryResult!8980)

(assert (=> b!940031 (= res!632209 (is-Found!8980 lt!424577))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56654 (_ BitVec 32)) SeekEntryResult!8980)

(assert (=> b!940031 (= lt!424577 (seekEntry!0 key!756 (_keys!10401 thiss!1141) (mask!27083 thiss!1141)))))

(declare-fun b!940032 () Bool)

(assert (=> b!940032 (= e!528235 (and e!528237 mapRes!32302))))

(declare-fun condMapEmpty!32302 () Bool)

(declare-fun mapDefault!32302 () ValueCell!9689)

