; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15600 () Bool)

(assert start!15600)

(declare-fun b!155127 () Bool)

(declare-fun b_free!3255 () Bool)

(declare-fun b_next!3255 () Bool)

(assert (=> b!155127 (= b_free!3255 (not b_next!3255))))

(declare-fun tp!12289 () Bool)

(declare-fun b_and!9687 () Bool)

(assert (=> b!155127 (= tp!12289 b_and!9687)))

(declare-fun mapIsEmpty!5228 () Bool)

(declare-fun mapRes!5228 () Bool)

(assert (=> mapIsEmpty!5228 mapRes!5228))

(declare-fun b!155123 () Bool)

(declare-fun res!73254 () Bool)

(declare-fun e!101354 () Bool)

(assert (=> b!155123 (=> (not res!73254) (not e!101354))))

(declare-datatypes ((V!3723 0))(
  ( (V!3724 (val!1573 Int)) )
))
(declare-datatypes ((ValueCell!1185 0))(
  ( (ValueCellFull!1185 (v!3434 V!3723)) (EmptyCell!1185) )
))
(declare-datatypes ((array!5166 0))(
  ( (array!5167 (arr!2440 (Array (_ BitVec 32) (_ BitVec 64))) (size!2718 (_ BitVec 32))) )
))
(declare-datatypes ((array!5168 0))(
  ( (array!5169 (arr!2441 (Array (_ BitVec 32) ValueCell!1185)) (size!2719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1278 0))(
  ( (LongMapFixedSize!1279 (defaultEntry!3081 Int) (mask!7498 (_ BitVec 32)) (extraKeys!2822 (_ BitVec 32)) (zeroValue!2924 V!3723) (minValue!2924 V!3723) (_size!688 (_ BitVec 32)) (_keys!4856 array!5166) (_values!3064 array!5168) (_vacant!688 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1278)

(assert (=> b!155123 (= res!73254 (and (= (size!2719 (_values!3064 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7498 thiss!1248))) (= (size!2718 (_keys!4856 thiss!1248)) (size!2719 (_values!3064 thiss!1248))) (bvsge (mask!7498 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2822 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2822 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2822 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2822 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2822 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2822 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2822 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155124 () Bool)

(declare-fun e!101353 () Bool)

(declare-fun tp_is_empty!3057 () Bool)

(assert (=> b!155124 (= e!101353 tp_is_empty!3057)))

(declare-fun b!155125 () Bool)

(declare-fun e!101349 () Bool)

(assert (=> b!155125 (= e!101349 (and e!101353 mapRes!5228))))

(declare-fun condMapEmpty!5228 () Bool)

(declare-fun mapDefault!5228 () ValueCell!1185)

(assert (=> b!155125 (= condMapEmpty!5228 (= (arr!2441 (_values!3064 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1185)) mapDefault!5228)))))

(declare-fun b!155126 () Bool)

(declare-fun res!73255 () Bool)

(assert (=> b!155126 (=> (not res!73255) (not e!101354))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155126 (= res!73255 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!101351 () Bool)

(declare-fun array_inv!1519 (array!5166) Bool)

(declare-fun array_inv!1520 (array!5168) Bool)

(assert (=> b!155127 (= e!101351 (and tp!12289 tp_is_empty!3057 (array_inv!1519 (_keys!4856 thiss!1248)) (array_inv!1520 (_values!3064 thiss!1248)) e!101349))))

(declare-fun b!155128 () Bool)

(declare-fun res!73257 () Bool)

(assert (=> b!155128 (=> (not res!73257) (not e!101354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5166 (_ BitVec 32)) Bool)

(assert (=> b!155128 (= res!73257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4856 thiss!1248) (mask!7498 thiss!1248)))))

(declare-fun b!155129 () Bool)

(declare-fun res!73256 () Bool)

(assert (=> b!155129 (=> (not res!73256) (not e!101354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155129 (= res!73256 (validMask!0 (mask!7498 thiss!1248)))))

(declare-fun res!73258 () Bool)

(assert (=> start!15600 (=> (not res!73258) (not e!101354))))

(declare-fun valid!622 (LongMapFixedSize!1278) Bool)

(assert (=> start!15600 (= res!73258 (valid!622 thiss!1248))))

(assert (=> start!15600 e!101354))

(assert (=> start!15600 e!101351))

(assert (=> start!15600 true))

(declare-fun b!155122 () Bool)

(assert (=> b!155122 (= e!101354 false)))

(declare-fun lt!81356 () Bool)

(declare-datatypes ((List!1835 0))(
  ( (Nil!1832) (Cons!1831 (h!2440 (_ BitVec 64)) (t!6645 List!1835)) )
))
(declare-fun arrayNoDuplicates!0 (array!5166 (_ BitVec 32) List!1835) Bool)

(assert (=> b!155122 (= lt!81356 (arrayNoDuplicates!0 (_keys!4856 thiss!1248) #b00000000000000000000000000000000 Nil!1832))))

(declare-fun mapNonEmpty!5228 () Bool)

(declare-fun tp!12290 () Bool)

(declare-fun e!101352 () Bool)

(assert (=> mapNonEmpty!5228 (= mapRes!5228 (and tp!12290 e!101352))))

(declare-fun mapKey!5228 () (_ BitVec 32))

(declare-fun mapRest!5228 () (Array (_ BitVec 32) ValueCell!1185))

(declare-fun mapValue!5228 () ValueCell!1185)

(assert (=> mapNonEmpty!5228 (= (arr!2441 (_values!3064 thiss!1248)) (store mapRest!5228 mapKey!5228 mapValue!5228))))

(declare-fun b!155130 () Bool)

(assert (=> b!155130 (= e!101352 tp_is_empty!3057)))

(assert (= (and start!15600 res!73258) b!155126))

(assert (= (and b!155126 res!73255) b!155129))

(assert (= (and b!155129 res!73256) b!155123))

(assert (= (and b!155123 res!73254) b!155128))

(assert (= (and b!155128 res!73257) b!155122))

(assert (= (and b!155125 condMapEmpty!5228) mapIsEmpty!5228))

(assert (= (and b!155125 (not condMapEmpty!5228)) mapNonEmpty!5228))

(get-info :version)

(assert (= (and mapNonEmpty!5228 ((_ is ValueCellFull!1185) mapValue!5228)) b!155130))

(assert (= (and b!155125 ((_ is ValueCellFull!1185) mapDefault!5228)) b!155124))

(assert (= b!155127 b!155125))

(assert (= start!15600 b!155127))

(declare-fun m!189175 () Bool)

(assert (=> mapNonEmpty!5228 m!189175))

(declare-fun m!189177 () Bool)

(assert (=> b!155122 m!189177))

(declare-fun m!189179 () Bool)

(assert (=> b!155127 m!189179))

(declare-fun m!189181 () Bool)

(assert (=> b!155127 m!189181))

(declare-fun m!189183 () Bool)

(assert (=> b!155128 m!189183))

(declare-fun m!189185 () Bool)

(assert (=> start!15600 m!189185))

(declare-fun m!189187 () Bool)

(assert (=> b!155129 m!189187))

(check-sat (not b!155122) b_and!9687 (not b!155128) (not b_next!3255) (not start!15600) tp_is_empty!3057 (not mapNonEmpty!5228) (not b!155129) (not b!155127))
(check-sat b_and!9687 (not b_next!3255))
