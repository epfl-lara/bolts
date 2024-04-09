; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15588 () Bool)

(assert start!15588)

(declare-fun b!154966 () Bool)

(declare-fun b_free!3243 () Bool)

(declare-fun b_next!3243 () Bool)

(assert (=> b!154966 (= b_free!3243 (not b_next!3243))))

(declare-fun tp!12253 () Bool)

(declare-fun b_and!9675 () Bool)

(assert (=> b!154966 (= tp!12253 b_and!9675)))

(declare-fun b!154960 () Bool)

(declare-fun e!101246 () Bool)

(assert (=> b!154960 (= e!101246 false)))

(declare-fun lt!81338 () Bool)

(declare-datatypes ((V!3707 0))(
  ( (V!3708 (val!1567 Int)) )
))
(declare-datatypes ((ValueCell!1179 0))(
  ( (ValueCellFull!1179 (v!3428 V!3707)) (EmptyCell!1179) )
))
(declare-datatypes ((array!5142 0))(
  ( (array!5143 (arr!2428 (Array (_ BitVec 32) (_ BitVec 64))) (size!2706 (_ BitVec 32))) )
))
(declare-datatypes ((array!5144 0))(
  ( (array!5145 (arr!2429 (Array (_ BitVec 32) ValueCell!1179)) (size!2707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1266 0))(
  ( (LongMapFixedSize!1267 (defaultEntry!3075 Int) (mask!7488 (_ BitVec 32)) (extraKeys!2816 (_ BitVec 32)) (zeroValue!2918 V!3707) (minValue!2918 V!3707) (_size!682 (_ BitVec 32)) (_keys!4850 array!5142) (_values!3058 array!5144) (_vacant!682 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1266)

(declare-datatypes ((List!1830 0))(
  ( (Nil!1827) (Cons!1826 (h!2435 (_ BitVec 64)) (t!6640 List!1830)) )
))
(declare-fun arrayNoDuplicates!0 (array!5142 (_ BitVec 32) List!1830) Bool)

(assert (=> b!154960 (= lt!81338 (arrayNoDuplicates!0 (_keys!4850 thiss!1248) #b00000000000000000000000000000000 Nil!1827))))

(declare-fun b!154961 () Bool)

(declare-fun res!73166 () Bool)

(assert (=> b!154961 (=> (not res!73166) (not e!101246))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!154961 (= res!73166 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154962 () Bool)

(declare-fun e!101241 () Bool)

(declare-fun tp_is_empty!3045 () Bool)

(assert (=> b!154962 (= e!101241 tp_is_empty!3045)))

(declare-fun b!154963 () Bool)

(declare-fun res!73165 () Bool)

(assert (=> b!154963 (=> (not res!73165) (not e!101246))))

(assert (=> b!154963 (= res!73165 (and (= (size!2707 (_values!3058 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7488 thiss!1248))) (= (size!2706 (_keys!4850 thiss!1248)) (size!2707 (_values!3058 thiss!1248))) (bvsge (mask!7488 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2816 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2816 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2816 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2816 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2816 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2816 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2816 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5210 () Bool)

(declare-fun mapRes!5210 () Bool)

(assert (=> mapIsEmpty!5210 mapRes!5210))

(declare-fun res!73167 () Bool)

(assert (=> start!15588 (=> (not res!73167) (not e!101246))))

(declare-fun valid!617 (LongMapFixedSize!1266) Bool)

(assert (=> start!15588 (= res!73167 (valid!617 thiss!1248))))

(assert (=> start!15588 e!101246))

(declare-fun e!101243 () Bool)

(assert (=> start!15588 e!101243))

(assert (=> start!15588 true))

(declare-fun mapNonEmpty!5210 () Bool)

(declare-fun tp!12254 () Bool)

(declare-fun e!101245 () Bool)

(assert (=> mapNonEmpty!5210 (= mapRes!5210 (and tp!12254 e!101245))))

(declare-fun mapKey!5210 () (_ BitVec 32))

(declare-fun mapValue!5210 () ValueCell!1179)

(declare-fun mapRest!5210 () (Array (_ BitVec 32) ValueCell!1179))

(assert (=> mapNonEmpty!5210 (= (arr!2429 (_values!3058 thiss!1248)) (store mapRest!5210 mapKey!5210 mapValue!5210))))

(declare-fun b!154964 () Bool)

(declare-fun res!73168 () Bool)

(assert (=> b!154964 (=> (not res!73168) (not e!101246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!154964 (= res!73168 (validMask!0 (mask!7488 thiss!1248)))))

(declare-fun b!154965 () Bool)

(assert (=> b!154965 (= e!101245 tp_is_empty!3045)))

(declare-fun e!101244 () Bool)

(declare-fun array_inv!1511 (array!5142) Bool)

(declare-fun array_inv!1512 (array!5144) Bool)

(assert (=> b!154966 (= e!101243 (and tp!12253 tp_is_empty!3045 (array_inv!1511 (_keys!4850 thiss!1248)) (array_inv!1512 (_values!3058 thiss!1248)) e!101244))))

(declare-fun b!154967 () Bool)

(assert (=> b!154967 (= e!101244 (and e!101241 mapRes!5210))))

(declare-fun condMapEmpty!5210 () Bool)

(declare-fun mapDefault!5210 () ValueCell!1179)

(assert (=> b!154967 (= condMapEmpty!5210 (= (arr!2429 (_values!3058 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1179)) mapDefault!5210)))))

(declare-fun b!154968 () Bool)

(declare-fun res!73164 () Bool)

(assert (=> b!154968 (=> (not res!73164) (not e!101246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5142 (_ BitVec 32)) Bool)

(assert (=> b!154968 (= res!73164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4850 thiss!1248) (mask!7488 thiss!1248)))))

(assert (= (and start!15588 res!73167) b!154961))

(assert (= (and b!154961 res!73166) b!154964))

(assert (= (and b!154964 res!73168) b!154963))

(assert (= (and b!154963 res!73165) b!154968))

(assert (= (and b!154968 res!73164) b!154960))

(assert (= (and b!154967 condMapEmpty!5210) mapIsEmpty!5210))

(assert (= (and b!154967 (not condMapEmpty!5210)) mapNonEmpty!5210))

(get-info :version)

(assert (= (and mapNonEmpty!5210 ((_ is ValueCellFull!1179) mapValue!5210)) b!154965))

(assert (= (and b!154967 ((_ is ValueCellFull!1179) mapDefault!5210)) b!154962))

(assert (= b!154966 b!154967))

(assert (= start!15588 b!154966))

(declare-fun m!189091 () Bool)

(assert (=> b!154960 m!189091))

(declare-fun m!189093 () Bool)

(assert (=> b!154964 m!189093))

(declare-fun m!189095 () Bool)

(assert (=> mapNonEmpty!5210 m!189095))

(declare-fun m!189097 () Bool)

(assert (=> b!154968 m!189097))

(declare-fun m!189099 () Bool)

(assert (=> start!15588 m!189099))

(declare-fun m!189101 () Bool)

(assert (=> b!154966 m!189101))

(declare-fun m!189103 () Bool)

(assert (=> b!154966 m!189103))

(check-sat (not b!154964) tp_is_empty!3045 (not b!154960) (not b!154966) (not start!15588) (not b_next!3243) b_and!9675 (not mapNonEmpty!5210) (not b!154968))
(check-sat b_and!9675 (not b_next!3243))
