; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79996 () Bool)

(assert start!79996)

(declare-fun b!939933 () Bool)

(declare-fun b_free!17823 () Bool)

(declare-fun b_next!17823 () Bool)

(assert (=> b!939933 (= b_free!17823 (not b_next!17823))))

(declare-fun tp!61945 () Bool)

(declare-fun b_and!29253 () Bool)

(assert (=> b!939933 (= tp!61945 b_and!29253)))

(declare-fun res!632168 () Bool)

(declare-fun e!528139 () Bool)

(assert (=> start!79996 (=> (not res!632168) (not e!528139))))

(declare-datatypes ((V!32073 0))(
  ( (V!32074 (val!10216 Int)) )
))
(declare-datatypes ((ValueCell!9684 0))(
  ( (ValueCellFull!9684 (v!12747 V!32073)) (EmptyCell!9684) )
))
(declare-datatypes ((array!56632 0))(
  ( (array!56633 (arr!27247 (Array (_ BitVec 32) ValueCell!9684)) (size!27709 (_ BitVec 32))) )
))
(declare-datatypes ((array!56634 0))(
  ( (array!56635 (arr!27248 (Array (_ BitVec 32) (_ BitVec 64))) (size!27710 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4518 0))(
  ( (LongMapFixedSize!4519 (defaultEntry!5550 Int) (mask!27074 (_ BitVec 32)) (extraKeys!5282 (_ BitVec 32)) (zeroValue!5386 V!32073) (minValue!5386 V!32073) (_size!2314 (_ BitVec 32)) (_keys!10396 array!56634) (_values!5573 array!56632) (_vacant!2314 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4518)

(declare-fun valid!1718 (LongMapFixedSize!4518) Bool)

(assert (=> start!79996 (= res!632168 (valid!1718 thiss!1141))))

(assert (=> start!79996 e!528139))

(declare-fun e!528142 () Bool)

(assert (=> start!79996 e!528142))

(assert (=> start!79996 true))

(declare-fun mapIsEmpty!32287 () Bool)

(declare-fun mapRes!32287 () Bool)

(assert (=> mapIsEmpty!32287 mapRes!32287))

(declare-fun b!939928 () Bool)

(declare-fun e!528143 () Bool)

(declare-fun e!528144 () Bool)

(assert (=> b!939928 (= e!528143 (and e!528144 mapRes!32287))))

(declare-fun condMapEmpty!32287 () Bool)

(declare-fun mapDefault!32287 () ValueCell!9684)

(assert (=> b!939928 (= condMapEmpty!32287 (= (arr!27247 (_values!5573 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9684)) mapDefault!32287)))))

(declare-fun b!939929 () Bool)

(declare-fun e!528140 () Bool)

(declare-fun tp_is_empty!20331 () Bool)

(assert (=> b!939929 (= e!528140 tp_is_empty!20331)))

(declare-fun b!939930 () Bool)

(assert (=> b!939930 (= e!528139 false)))

(declare-datatypes ((SeekEntryResult!8977 0))(
  ( (MissingZero!8977 (index!38278 (_ BitVec 32))) (Found!8977 (index!38279 (_ BitVec 32))) (Intermediate!8977 (undefined!9789 Bool) (index!38280 (_ BitVec 32)) (x!80591 (_ BitVec 32))) (Undefined!8977) (MissingVacant!8977 (index!38281 (_ BitVec 32))) )
))
(declare-fun lt!424557 () SeekEntryResult!8977)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56634 (_ BitVec 32)) SeekEntryResult!8977)

(assert (=> b!939930 (= lt!424557 (seekEntry!0 key!756 (_keys!10396 thiss!1141) (mask!27074 thiss!1141)))))

(declare-fun b!939931 () Bool)

(declare-fun res!632167 () Bool)

(assert (=> b!939931 (=> (not res!632167) (not e!528139))))

(assert (=> b!939931 (= res!632167 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32287 () Bool)

(declare-fun tp!61944 () Bool)

(assert (=> mapNonEmpty!32287 (= mapRes!32287 (and tp!61944 e!528140))))

(declare-fun mapRest!32287 () (Array (_ BitVec 32) ValueCell!9684))

(declare-fun mapValue!32287 () ValueCell!9684)

(declare-fun mapKey!32287 () (_ BitVec 32))

(assert (=> mapNonEmpty!32287 (= (arr!27247 (_values!5573 thiss!1141)) (store mapRest!32287 mapKey!32287 mapValue!32287))))

(declare-fun b!939932 () Bool)

(assert (=> b!939932 (= e!528144 tp_is_empty!20331)))

(declare-fun array_inv!21138 (array!56634) Bool)

(declare-fun array_inv!21139 (array!56632) Bool)

(assert (=> b!939933 (= e!528142 (and tp!61945 tp_is_empty!20331 (array_inv!21138 (_keys!10396 thiss!1141)) (array_inv!21139 (_values!5573 thiss!1141)) e!528143))))

(assert (= (and start!79996 res!632168) b!939931))

(assert (= (and b!939931 res!632167) b!939930))

(assert (= (and b!939928 condMapEmpty!32287) mapIsEmpty!32287))

(assert (= (and b!939928 (not condMapEmpty!32287)) mapNonEmpty!32287))

(get-info :version)

(assert (= (and mapNonEmpty!32287 ((_ is ValueCellFull!9684) mapValue!32287)) b!939929))

(assert (= (and b!939928 ((_ is ValueCellFull!9684) mapDefault!32287)) b!939932))

(assert (= b!939933 b!939928))

(assert (= start!79996 b!939933))

(declare-fun m!875619 () Bool)

(assert (=> start!79996 m!875619))

(declare-fun m!875621 () Bool)

(assert (=> b!939930 m!875621))

(declare-fun m!875623 () Bool)

(assert (=> mapNonEmpty!32287 m!875623))

(declare-fun m!875625 () Bool)

(assert (=> b!939933 m!875625))

(declare-fun m!875627 () Bool)

(assert (=> b!939933 m!875627))

(check-sat (not mapNonEmpty!32287) (not b_next!17823) tp_is_empty!20331 b_and!29253 (not b!939933) (not b!939930) (not start!79996))
(check-sat b_and!29253 (not b_next!17823))
