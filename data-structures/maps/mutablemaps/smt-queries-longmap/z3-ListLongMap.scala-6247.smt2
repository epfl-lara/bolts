; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79968 () Bool)

(assert start!79968)

(declare-fun b!939741 () Bool)

(declare-fun b_free!17805 () Bool)

(declare-fun b_next!17805 () Bool)

(assert (=> b!939741 (= b_free!17805 (not b_next!17805))))

(declare-fun tp!61888 () Bool)

(declare-fun b_and!29235 () Bool)

(assert (=> b!939741 (= tp!61888 b_and!29235)))

(declare-fun mapNonEmpty!32257 () Bool)

(declare-fun mapRes!32257 () Bool)

(declare-fun tp!61887 () Bool)

(declare-fun e!527973 () Bool)

(assert (=> mapNonEmpty!32257 (= mapRes!32257 (and tp!61887 e!527973))))

(declare-datatypes ((V!32049 0))(
  ( (V!32050 (val!10207 Int)) )
))
(declare-datatypes ((ValueCell!9675 0))(
  ( (ValueCellFull!9675 (v!12738 V!32049)) (EmptyCell!9675) )
))
(declare-datatypes ((array!56594 0))(
  ( (array!56595 (arr!27229 (Array (_ BitVec 32) ValueCell!9675)) (size!27691 (_ BitVec 32))) )
))
(declare-datatypes ((array!56596 0))(
  ( (array!56597 (arr!27230 (Array (_ BitVec 32) (_ BitVec 64))) (size!27692 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4500 0))(
  ( (LongMapFixedSize!4501 (defaultEntry!5541 Int) (mask!27058 (_ BitVec 32)) (extraKeys!5273 (_ BitVec 32)) (zeroValue!5377 V!32049) (minValue!5377 V!32049) (_size!2305 (_ BitVec 32)) (_keys!10387 array!56596) (_values!5564 array!56594) (_vacant!2305 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4500)

(declare-fun mapKey!32257 () (_ BitVec 32))

(declare-fun mapRest!32257 () (Array (_ BitVec 32) ValueCell!9675))

(declare-fun mapValue!32257 () ValueCell!9675)

(assert (=> mapNonEmpty!32257 (= (arr!27229 (_values!5564 thiss!1141)) (store mapRest!32257 mapKey!32257 mapValue!32257))))

(declare-fun e!527972 () Bool)

(declare-fun tp_is_empty!20313 () Bool)

(declare-fun e!527969 () Bool)

(declare-fun array_inv!21128 (array!56596) Bool)

(declare-fun array_inv!21129 (array!56594) Bool)

(assert (=> b!939741 (= e!527969 (and tp!61888 tp_is_empty!20313 (array_inv!21128 (_keys!10387 thiss!1141)) (array_inv!21129 (_values!5564 thiss!1141)) e!527972))))

(declare-fun b!939742 () Bool)

(declare-fun e!527968 () Bool)

(assert (=> b!939742 (= e!527972 (and e!527968 mapRes!32257))))

(declare-fun condMapEmpty!32257 () Bool)

(declare-fun mapDefault!32257 () ValueCell!9675)

(assert (=> b!939742 (= condMapEmpty!32257 (= (arr!27229 (_values!5564 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9675)) mapDefault!32257)))))

(declare-fun b!939743 () Bool)

(declare-fun res!632096 () Bool)

(declare-fun e!527970 () Bool)

(assert (=> b!939743 (=> (not res!632096) (not e!527970))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939743 (= res!632096 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939744 () Bool)

(declare-fun res!632097 () Bool)

(assert (=> b!939744 (=> (not res!632097) (not e!527970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!939744 (= res!632097 (validMask!0 (mask!27058 thiss!1141)))))

(declare-fun b!939745 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939745 (= e!527970 (not (validKeyInArray!0 key!756)))))

(declare-fun mapIsEmpty!32257 () Bool)

(assert (=> mapIsEmpty!32257 mapRes!32257))

(declare-fun b!939746 () Bool)

(assert (=> b!939746 (= e!527973 tp_is_empty!20313)))

(declare-fun res!632099 () Bool)

(assert (=> start!79968 (=> (not res!632099) (not e!527970))))

(declare-fun valid!1710 (LongMapFixedSize!4500) Bool)

(assert (=> start!79968 (= res!632099 (valid!1710 thiss!1141))))

(assert (=> start!79968 e!527970))

(assert (=> start!79968 e!527969))

(assert (=> start!79968 true))

(declare-fun b!939747 () Bool)

(declare-fun res!632098 () Bool)

(assert (=> b!939747 (=> (not res!632098) (not e!527970))))

(assert (=> b!939747 (= res!632098 (= (size!27692 (_keys!10387 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27058 thiss!1141))))))

(declare-fun b!939748 () Bool)

(assert (=> b!939748 (= e!527968 tp_is_empty!20313)))

(assert (= (and start!79968 res!632099) b!939743))

(assert (= (and b!939743 res!632096) b!939744))

(assert (= (and b!939744 res!632097) b!939747))

(assert (= (and b!939747 res!632098) b!939745))

(assert (= (and b!939742 condMapEmpty!32257) mapIsEmpty!32257))

(assert (= (and b!939742 (not condMapEmpty!32257)) mapNonEmpty!32257))

(get-info :version)

(assert (= (and mapNonEmpty!32257 ((_ is ValueCellFull!9675) mapValue!32257)) b!939746))

(assert (= (and b!939742 ((_ is ValueCellFull!9675) mapDefault!32257)) b!939748))

(assert (= b!939741 b!939742))

(assert (= start!79968 b!939741))

(declare-fun m!875515 () Bool)

(assert (=> b!939744 m!875515))

(declare-fun m!875517 () Bool)

(assert (=> b!939745 m!875517))

(declare-fun m!875519 () Bool)

(assert (=> mapNonEmpty!32257 m!875519))

(declare-fun m!875521 () Bool)

(assert (=> start!79968 m!875521))

(declare-fun m!875523 () Bool)

(assert (=> b!939741 m!875523))

(declare-fun m!875525 () Bool)

(assert (=> b!939741 m!875525))

(check-sat (not b!939741) (not b!939745) b_and!29235 (not start!79968) (not b!939744) (not b_next!17805) (not mapNonEmpty!32257) tp_is_empty!20313)
(check-sat b_and!29235 (not b_next!17805))
(get-model)

(declare-fun d!113911 () Bool)

(assert (=> d!113911 (= (validKeyInArray!0 key!756) (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!939745 d!113911))

(declare-fun d!113913 () Bool)

(assert (=> d!113913 (= (array_inv!21128 (_keys!10387 thiss!1141)) (bvsge (size!27692 (_keys!10387 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!939741 d!113913))

(declare-fun d!113915 () Bool)

(assert (=> d!113915 (= (array_inv!21129 (_values!5564 thiss!1141)) (bvsge (size!27691 (_values!5564 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!939741 d!113915))

(declare-fun d!113917 () Bool)

(assert (=> d!113917 (= (validMask!0 (mask!27058 thiss!1141)) (and (or (= (mask!27058 thiss!1141) #b00000000000000000000000000000111) (= (mask!27058 thiss!1141) #b00000000000000000000000000001111) (= (mask!27058 thiss!1141) #b00000000000000000000000000011111) (= (mask!27058 thiss!1141) #b00000000000000000000000000111111) (= (mask!27058 thiss!1141) #b00000000000000000000000001111111) (= (mask!27058 thiss!1141) #b00000000000000000000000011111111) (= (mask!27058 thiss!1141) #b00000000000000000000000111111111) (= (mask!27058 thiss!1141) #b00000000000000000000001111111111) (= (mask!27058 thiss!1141) #b00000000000000000000011111111111) (= (mask!27058 thiss!1141) #b00000000000000000000111111111111) (= (mask!27058 thiss!1141) #b00000000000000000001111111111111) (= (mask!27058 thiss!1141) #b00000000000000000011111111111111) (= (mask!27058 thiss!1141) #b00000000000000000111111111111111) (= (mask!27058 thiss!1141) #b00000000000000001111111111111111) (= (mask!27058 thiss!1141) #b00000000000000011111111111111111) (= (mask!27058 thiss!1141) #b00000000000000111111111111111111) (= (mask!27058 thiss!1141) #b00000000000001111111111111111111) (= (mask!27058 thiss!1141) #b00000000000011111111111111111111) (= (mask!27058 thiss!1141) #b00000000000111111111111111111111) (= (mask!27058 thiss!1141) #b00000000001111111111111111111111) (= (mask!27058 thiss!1141) #b00000000011111111111111111111111) (= (mask!27058 thiss!1141) #b00000000111111111111111111111111) (= (mask!27058 thiss!1141) #b00000001111111111111111111111111) (= (mask!27058 thiss!1141) #b00000011111111111111111111111111) (= (mask!27058 thiss!1141) #b00000111111111111111111111111111) (= (mask!27058 thiss!1141) #b00001111111111111111111111111111) (= (mask!27058 thiss!1141) #b00011111111111111111111111111111) (= (mask!27058 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27058 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!939744 d!113917))

(declare-fun d!113919 () Bool)

(declare-fun res!632118 () Bool)

(declare-fun e!527994 () Bool)

(assert (=> d!113919 (=> (not res!632118) (not e!527994))))

(declare-fun simpleValid!337 (LongMapFixedSize!4500) Bool)

(assert (=> d!113919 (= res!632118 (simpleValid!337 thiss!1141))))

(assert (=> d!113919 (= (valid!1710 thiss!1141) e!527994)))

(declare-fun b!939779 () Bool)

(declare-fun res!632119 () Bool)

(assert (=> b!939779 (=> (not res!632119) (not e!527994))))

(declare-fun arrayCountValidKeys!0 (array!56596 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!939779 (= res!632119 (= (arrayCountValidKeys!0 (_keys!10387 thiss!1141) #b00000000000000000000000000000000 (size!27692 (_keys!10387 thiss!1141))) (_size!2305 thiss!1141)))))

(declare-fun b!939780 () Bool)

(declare-fun res!632120 () Bool)

(assert (=> b!939780 (=> (not res!632120) (not e!527994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56596 (_ BitVec 32)) Bool)

(assert (=> b!939780 (= res!632120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10387 thiss!1141) (mask!27058 thiss!1141)))))

(declare-fun b!939781 () Bool)

(declare-datatypes ((List!19313 0))(
  ( (Nil!19310) (Cons!19309 (h!20455 (_ BitVec 64)) (t!27636 List!19313)) )
))
(declare-fun arrayNoDuplicates!0 (array!56596 (_ BitVec 32) List!19313) Bool)

(assert (=> b!939781 (= e!527994 (arrayNoDuplicates!0 (_keys!10387 thiss!1141) #b00000000000000000000000000000000 Nil!19310))))

(assert (= (and d!113919 res!632118) b!939779))

(assert (= (and b!939779 res!632119) b!939780))

(assert (= (and b!939780 res!632120) b!939781))

(declare-fun m!875539 () Bool)

(assert (=> d!113919 m!875539))

(declare-fun m!875541 () Bool)

(assert (=> b!939779 m!875541))

(declare-fun m!875543 () Bool)

(assert (=> b!939780 m!875543))

(declare-fun m!875545 () Bool)

(assert (=> b!939781 m!875545))

(assert (=> start!79968 d!113919))

(declare-fun b!939788 () Bool)

(declare-fun e!528000 () Bool)

(assert (=> b!939788 (= e!528000 tp_is_empty!20313)))

(declare-fun mapIsEmpty!32263 () Bool)

(declare-fun mapRes!32263 () Bool)

(assert (=> mapIsEmpty!32263 mapRes!32263))

(declare-fun mapNonEmpty!32263 () Bool)

(declare-fun tp!61897 () Bool)

(assert (=> mapNonEmpty!32263 (= mapRes!32263 (and tp!61897 e!528000))))

(declare-fun mapValue!32263 () ValueCell!9675)

(declare-fun mapRest!32263 () (Array (_ BitVec 32) ValueCell!9675))

(declare-fun mapKey!32263 () (_ BitVec 32))

(assert (=> mapNonEmpty!32263 (= mapRest!32257 (store mapRest!32263 mapKey!32263 mapValue!32263))))

(declare-fun b!939789 () Bool)

(declare-fun e!527999 () Bool)

(assert (=> b!939789 (= e!527999 tp_is_empty!20313)))

(declare-fun condMapEmpty!32263 () Bool)

(declare-fun mapDefault!32263 () ValueCell!9675)

(assert (=> mapNonEmpty!32257 (= condMapEmpty!32263 (= mapRest!32257 ((as const (Array (_ BitVec 32) ValueCell!9675)) mapDefault!32263)))))

(assert (=> mapNonEmpty!32257 (= tp!61887 (and e!527999 mapRes!32263))))

(assert (= (and mapNonEmpty!32257 condMapEmpty!32263) mapIsEmpty!32263))

(assert (= (and mapNonEmpty!32257 (not condMapEmpty!32263)) mapNonEmpty!32263))

(assert (= (and mapNonEmpty!32263 ((_ is ValueCellFull!9675) mapValue!32263)) b!939788))

(assert (= (and mapNonEmpty!32257 ((_ is ValueCellFull!9675) mapDefault!32263)) b!939789))

(declare-fun m!875547 () Bool)

(assert (=> mapNonEmpty!32263 m!875547))

(check-sat tp_is_empty!20313 (not b!939780) b_and!29235 (not b!939779) (not mapNonEmpty!32263) (not b!939781) (not b_next!17805) (not d!113919))
(check-sat b_and!29235 (not b_next!17805))
