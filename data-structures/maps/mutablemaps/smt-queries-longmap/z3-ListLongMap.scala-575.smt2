; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15606 () Bool)

(assert start!15606)

(declare-fun b!155204 () Bool)

(declare-fun b_free!3261 () Bool)

(declare-fun b_next!3261 () Bool)

(assert (=> b!155204 (= b_free!3261 (not b_next!3261))))

(declare-fun tp!12307 () Bool)

(declare-fun b_and!9693 () Bool)

(assert (=> b!155204 (= tp!12307 b_and!9693)))

(declare-fun res!73299 () Bool)

(declare-fun e!101405 () Bool)

(assert (=> start!15606 (=> (not res!73299) (not e!101405))))

(declare-datatypes ((V!3731 0))(
  ( (V!3732 (val!1576 Int)) )
))
(declare-datatypes ((ValueCell!1188 0))(
  ( (ValueCellFull!1188 (v!3437 V!3731)) (EmptyCell!1188) )
))
(declare-datatypes ((array!5178 0))(
  ( (array!5179 (arr!2446 (Array (_ BitVec 32) (_ BitVec 64))) (size!2724 (_ BitVec 32))) )
))
(declare-datatypes ((array!5180 0))(
  ( (array!5181 (arr!2447 (Array (_ BitVec 32) ValueCell!1188)) (size!2725 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1284 0))(
  ( (LongMapFixedSize!1285 (defaultEntry!3084 Int) (mask!7503 (_ BitVec 32)) (extraKeys!2825 (_ BitVec 32)) (zeroValue!2927 V!3731) (minValue!2927 V!3731) (_size!691 (_ BitVec 32)) (_keys!4859 array!5178) (_values!3067 array!5180) (_vacant!691 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1284)

(declare-fun valid!624 (LongMapFixedSize!1284) Bool)

(assert (=> start!15606 (= res!73299 (valid!624 thiss!1248))))

(assert (=> start!15606 e!101405))

(declare-fun e!101408 () Bool)

(assert (=> start!15606 e!101408))

(assert (=> start!15606 true))

(declare-fun b!155203 () Bool)

(declare-fun res!73300 () Bool)

(assert (=> b!155203 (=> (not res!73300) (not e!101405))))

(assert (=> b!155203 (= res!73300 (and (= (size!2725 (_values!3067 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7503 thiss!1248))) (= (size!2724 (_keys!4859 thiss!1248)) (size!2725 (_values!3067 thiss!1248))) (bvsge (mask!7503 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2825 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2825 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2825 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2825 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2825 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2825 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2825 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun tp_is_empty!3063 () Bool)

(declare-fun e!101404 () Bool)

(declare-fun array_inv!1525 (array!5178) Bool)

(declare-fun array_inv!1526 (array!5180) Bool)

(assert (=> b!155204 (= e!101408 (and tp!12307 tp_is_empty!3063 (array_inv!1525 (_keys!4859 thiss!1248)) (array_inv!1526 (_values!3067 thiss!1248)) e!101404))))

(declare-fun b!155205 () Bool)

(declare-fun res!73302 () Bool)

(assert (=> b!155205 (=> (not res!73302) (not e!101405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155205 (= res!73302 (validMask!0 (mask!7503 thiss!1248)))))

(declare-fun b!155206 () Bool)

(declare-fun e!101407 () Bool)

(declare-fun mapRes!5237 () Bool)

(assert (=> b!155206 (= e!101404 (and e!101407 mapRes!5237))))

(declare-fun condMapEmpty!5237 () Bool)

(declare-fun mapDefault!5237 () ValueCell!1188)

(assert (=> b!155206 (= condMapEmpty!5237 (= (arr!2447 (_values!3067 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1188)) mapDefault!5237)))))

(declare-fun b!155207 () Bool)

(declare-fun e!101403 () Bool)

(assert (=> b!155207 (= e!101403 tp_is_empty!3063)))

(declare-fun b!155208 () Bool)

(assert (=> b!155208 (= e!101407 tp_is_empty!3063)))

(declare-fun b!155209 () Bool)

(declare-fun res!73301 () Bool)

(assert (=> b!155209 (=> (not res!73301) (not e!101405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5178 (_ BitVec 32)) Bool)

(assert (=> b!155209 (= res!73301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4859 thiss!1248) (mask!7503 thiss!1248)))))

(declare-fun b!155210 () Bool)

(assert (=> b!155210 (= e!101405 false)))

(declare-fun lt!81365 () Bool)

(declare-datatypes ((List!1836 0))(
  ( (Nil!1833) (Cons!1832 (h!2441 (_ BitVec 64)) (t!6646 List!1836)) )
))
(declare-fun arrayNoDuplicates!0 (array!5178 (_ BitVec 32) List!1836) Bool)

(assert (=> b!155210 (= lt!81365 (arrayNoDuplicates!0 (_keys!4859 thiss!1248) #b00000000000000000000000000000000 Nil!1833))))

(declare-fun mapIsEmpty!5237 () Bool)

(assert (=> mapIsEmpty!5237 mapRes!5237))

(declare-fun b!155211 () Bool)

(declare-fun res!73303 () Bool)

(assert (=> b!155211 (=> (not res!73303) (not e!101405))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155211 (= res!73303 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!5237 () Bool)

(declare-fun tp!12308 () Bool)

(assert (=> mapNonEmpty!5237 (= mapRes!5237 (and tp!12308 e!101403))))

(declare-fun mapKey!5237 () (_ BitVec 32))

(declare-fun mapValue!5237 () ValueCell!1188)

(declare-fun mapRest!5237 () (Array (_ BitVec 32) ValueCell!1188))

(assert (=> mapNonEmpty!5237 (= (arr!2447 (_values!3067 thiss!1248)) (store mapRest!5237 mapKey!5237 mapValue!5237))))

(assert (= (and start!15606 res!73299) b!155211))

(assert (= (and b!155211 res!73303) b!155205))

(assert (= (and b!155205 res!73302) b!155203))

(assert (= (and b!155203 res!73300) b!155209))

(assert (= (and b!155209 res!73301) b!155210))

(assert (= (and b!155206 condMapEmpty!5237) mapIsEmpty!5237))

(assert (= (and b!155206 (not condMapEmpty!5237)) mapNonEmpty!5237))

(get-info :version)

(assert (= (and mapNonEmpty!5237 ((_ is ValueCellFull!1188) mapValue!5237)) b!155207))

(assert (= (and b!155206 ((_ is ValueCellFull!1188) mapDefault!5237)) b!155208))

(assert (= b!155204 b!155206))

(assert (= start!15606 b!155204))

(declare-fun m!189217 () Bool)

(assert (=> b!155209 m!189217))

(declare-fun m!189219 () Bool)

(assert (=> start!15606 m!189219))

(declare-fun m!189221 () Bool)

(assert (=> b!155204 m!189221))

(declare-fun m!189223 () Bool)

(assert (=> b!155204 m!189223))

(declare-fun m!189225 () Bool)

(assert (=> mapNonEmpty!5237 m!189225))

(declare-fun m!189227 () Bool)

(assert (=> b!155205 m!189227))

(declare-fun m!189229 () Bool)

(assert (=> b!155210 m!189229))

(check-sat tp_is_empty!3063 (not b!155210) (not b!155205) (not b!155209) (not b!155204) (not b_next!3261) (not mapNonEmpty!5237) b_and!9693 (not start!15606))
(check-sat b_and!9693 (not b_next!3261))
