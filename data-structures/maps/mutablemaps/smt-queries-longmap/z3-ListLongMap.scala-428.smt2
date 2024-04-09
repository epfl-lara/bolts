; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7990 () Bool)

(assert start!7990)

(declare-fun b!50088 () Bool)

(declare-fun b_free!1529 () Bool)

(declare-fun b_next!1529 () Bool)

(assert (=> b!50088 (= b_free!1529 (not b_next!1529))))

(declare-fun tp!6636 () Bool)

(declare-fun b_and!2749 () Bool)

(assert (=> b!50088 (= tp!6636 b_and!2749)))

(declare-fun b!50098 () Bool)

(declare-fun b_free!1531 () Bool)

(declare-fun b_next!1531 () Bool)

(assert (=> b!50098 (= b_free!1531 (not b_next!1531))))

(declare-fun tp!6638 () Bool)

(declare-fun b_and!2751 () Bool)

(assert (=> b!50098 (= tp!6638 b_and!2751)))

(declare-fun b!50087 () Bool)

(declare-fun e!32335 () Bool)

(declare-fun tp_is_empty!2181 () Bool)

(assert (=> b!50087 (= e!32335 tp_is_empty!2181)))

(declare-fun e!32323 () Bool)

(declare-datatypes ((V!2555 0))(
  ( (V!2556 (val!1135 Int)) )
))
(declare-datatypes ((array!3270 0))(
  ( (array!3271 (arr!1564 (Array (_ BitVec 32) (_ BitVec 64))) (size!1786 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!747 0))(
  ( (ValueCellFull!747 (v!2154 V!2555)) (EmptyCell!747) )
))
(declare-datatypes ((array!3272 0))(
  ( (array!3273 (arr!1565 (Array (_ BitVec 32) ValueCell!747)) (size!1787 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!402 0))(
  ( (LongMapFixedSize!403 (defaultEntry!1915 Int) (mask!5697 (_ BitVec 32)) (extraKeys!1806 (_ BitVec 32)) (zeroValue!1833 V!2555) (minValue!1833 V!2555) (_size!250 (_ BitVec 32)) (_keys!3521 array!3270) (_values!1898 array!3272) (_vacant!250 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!228 0))(
  ( (Cell!229 (v!2155 LongMapFixedSize!402)) )
))
(declare-datatypes ((LongMap!228 0))(
  ( (LongMap!229 (underlying!125 Cell!228)) )
))
(declare-fun thiss!992 () LongMap!228)

(declare-fun e!32328 () Bool)

(declare-fun array_inv!911 (array!3270) Bool)

(declare-fun array_inv!912 (array!3272) Bool)

(assert (=> b!50088 (= e!32328 (and tp!6636 tp_is_empty!2181 (array_inv!911 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) (array_inv!912 (_values!1898 (v!2155 (underlying!125 thiss!992)))) e!32323))))

(declare-fun b!50089 () Bool)

(declare-fun e!32330 () Bool)

(declare-fun e!32334 () Bool)

(assert (=> b!50089 (= e!32330 e!32334)))

(declare-fun b!50090 () Bool)

(declare-fun res!28898 () Bool)

(declare-fun e!32333 () Bool)

(assert (=> b!50090 (=> (not res!28898) (not e!32333))))

(declare-fun newMap!16 () LongMapFixedSize!402)

(assert (=> b!50090 (= res!28898 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5697 newMap!16)) (_size!250 (v!2155 (underlying!125 thiss!992)))))))

(declare-fun b!50091 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!50091 (= e!32333 (not (validMask!0 (mask!5697 (v!2155 (underlying!125 thiss!992))))))))

(declare-fun b!50092 () Bool)

(declare-fun res!28897 () Bool)

(assert (=> b!50092 (=> (not res!28897) (not e!32333))))

(declare-fun valid!134 (LongMapFixedSize!402) Bool)

(assert (=> b!50092 (= res!28897 (valid!134 newMap!16))))

(declare-fun mapNonEmpty!2161 () Bool)

(declare-fun mapRes!2161 () Bool)

(declare-fun tp!6637 () Bool)

(declare-fun e!32327 () Bool)

(assert (=> mapNonEmpty!2161 (= mapRes!2161 (and tp!6637 e!32327))))

(declare-fun mapValue!2161 () ValueCell!747)

(declare-fun mapKey!2162 () (_ BitVec 32))

(declare-fun mapRest!2162 () (Array (_ BitVec 32) ValueCell!747))

(assert (=> mapNonEmpty!2161 (= (arr!1565 (_values!1898 (v!2155 (underlying!125 thiss!992)))) (store mapRest!2162 mapKey!2162 mapValue!2161))))

(declare-fun res!28896 () Bool)

(assert (=> start!7990 (=> (not res!28896) (not e!32333))))

(declare-fun valid!135 (LongMap!228) Bool)

(assert (=> start!7990 (= res!28896 (valid!135 thiss!992))))

(assert (=> start!7990 e!32333))

(assert (=> start!7990 e!32330))

(assert (=> start!7990 true))

(declare-fun e!32325 () Bool)

(assert (=> start!7990 e!32325))

(declare-fun b!50093 () Bool)

(declare-fun e!32324 () Bool)

(assert (=> b!50093 (= e!32323 (and e!32324 mapRes!2161))))

(declare-fun condMapEmpty!2161 () Bool)

(declare-fun mapDefault!2162 () ValueCell!747)

(assert (=> b!50093 (= condMapEmpty!2161 (= (arr!1565 (_values!1898 (v!2155 (underlying!125 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2162)))))

(declare-fun b!50094 () Bool)

(declare-fun res!28899 () Bool)

(assert (=> b!50094 (=> (not res!28899) (not e!32333))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50094 (= res!28899 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992)))))))))

(declare-fun b!50095 () Bool)

(assert (=> b!50095 (= e!32334 e!32328)))

(declare-fun b!50096 () Bool)

(declare-fun e!32326 () Bool)

(declare-fun mapRes!2162 () Bool)

(assert (=> b!50096 (= e!32326 (and e!32335 mapRes!2162))))

(declare-fun condMapEmpty!2162 () Bool)

(declare-fun mapDefault!2161 () ValueCell!747)

(assert (=> b!50096 (= condMapEmpty!2162 (= (arr!1565 (_values!1898 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2161)))))

(declare-fun b!50097 () Bool)

(assert (=> b!50097 (= e!32324 tp_is_empty!2181)))

(assert (=> b!50098 (= e!32325 (and tp!6638 tp_is_empty!2181 (array_inv!911 (_keys!3521 newMap!16)) (array_inv!912 (_values!1898 newMap!16)) e!32326))))

(declare-fun mapNonEmpty!2162 () Bool)

(declare-fun tp!6635 () Bool)

(declare-fun e!32332 () Bool)

(assert (=> mapNonEmpty!2162 (= mapRes!2162 (and tp!6635 e!32332))))

(declare-fun mapRest!2161 () (Array (_ BitVec 32) ValueCell!747))

(declare-fun mapValue!2162 () ValueCell!747)

(declare-fun mapKey!2161 () (_ BitVec 32))

(assert (=> mapNonEmpty!2162 (= (arr!1565 (_values!1898 newMap!16)) (store mapRest!2161 mapKey!2161 mapValue!2162))))

(declare-fun b!50099 () Bool)

(assert (=> b!50099 (= e!32327 tp_is_empty!2181)))

(declare-fun mapIsEmpty!2161 () Bool)

(assert (=> mapIsEmpty!2161 mapRes!2161))

(declare-fun mapIsEmpty!2162 () Bool)

(assert (=> mapIsEmpty!2162 mapRes!2162))

(declare-fun b!50100 () Bool)

(assert (=> b!50100 (= e!32332 tp_is_empty!2181)))

(assert (= (and start!7990 res!28896) b!50094))

(assert (= (and b!50094 res!28899) b!50092))

(assert (= (and b!50092 res!28897) b!50090))

(assert (= (and b!50090 res!28898) b!50091))

(assert (= (and b!50093 condMapEmpty!2161) mapIsEmpty!2161))

(assert (= (and b!50093 (not condMapEmpty!2161)) mapNonEmpty!2161))

(get-info :version)

(assert (= (and mapNonEmpty!2161 ((_ is ValueCellFull!747) mapValue!2161)) b!50099))

(assert (= (and b!50093 ((_ is ValueCellFull!747) mapDefault!2162)) b!50097))

(assert (= b!50088 b!50093))

(assert (= b!50095 b!50088))

(assert (= b!50089 b!50095))

(assert (= start!7990 b!50089))

(assert (= (and b!50096 condMapEmpty!2162) mapIsEmpty!2162))

(assert (= (and b!50096 (not condMapEmpty!2162)) mapNonEmpty!2162))

(assert (= (and mapNonEmpty!2162 ((_ is ValueCellFull!747) mapValue!2162)) b!50100))

(assert (= (and b!50096 ((_ is ValueCellFull!747) mapDefault!2161)) b!50087))

(assert (= b!50098 b!50096))

(assert (= start!7990 b!50098))

(declare-fun m!43527 () Bool)

(assert (=> b!50088 m!43527))

(declare-fun m!43529 () Bool)

(assert (=> b!50088 m!43529))

(declare-fun m!43531 () Bool)

(assert (=> b!50098 m!43531))

(declare-fun m!43533 () Bool)

(assert (=> b!50098 m!43533))

(declare-fun m!43535 () Bool)

(assert (=> mapNonEmpty!2162 m!43535))

(declare-fun m!43537 () Bool)

(assert (=> start!7990 m!43537))

(declare-fun m!43539 () Bool)

(assert (=> b!50091 m!43539))

(declare-fun m!43541 () Bool)

(assert (=> mapNonEmpty!2161 m!43541))

(declare-fun m!43543 () Bool)

(assert (=> b!50092 m!43543))

(check-sat (not b!50092) tp_is_empty!2181 (not b_next!1531) (not mapNonEmpty!2162) (not mapNonEmpty!2161) (not start!7990) (not b!50088) (not b_next!1529) b_and!2751 b_and!2749 (not b!50091) (not b!50098))
(check-sat b_and!2749 b_and!2751 (not b_next!1529) (not b_next!1531))
(get-model)

(declare-fun d!10125 () Bool)

(assert (=> d!10125 (= (array_inv!911 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) (bvsge (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!50088 d!10125))

(declare-fun d!10127 () Bool)

(assert (=> d!10127 (= (array_inv!912 (_values!1898 (v!2155 (underlying!125 thiss!992)))) (bvsge (size!1787 (_values!1898 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!50088 d!10127))

(declare-fun d!10129 () Bool)

(assert (=> d!10129 (= (array_inv!911 (_keys!3521 newMap!16)) (bvsge (size!1786 (_keys!3521 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!50098 d!10129))

(declare-fun d!10131 () Bool)

(assert (=> d!10131 (= (array_inv!912 (_values!1898 newMap!16)) (bvsge (size!1787 (_values!1898 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!50098 d!10131))

(declare-fun d!10133 () Bool)

(assert (=> d!10133 (= (valid!135 thiss!992) (valid!134 (v!2155 (underlying!125 thiss!992))))))

(declare-fun bs!2354 () Bool)

(assert (= bs!2354 d!10133))

(declare-fun m!43563 () Bool)

(assert (=> bs!2354 m!43563))

(assert (=> start!7990 d!10133))

(declare-fun d!10135 () Bool)

(assert (=> d!10135 (= (validMask!0 (mask!5697 (v!2155 (underlying!125 thiss!992)))) (and (or (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000001111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000011111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000001111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000011111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000001111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000011111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000001111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000011111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000001111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000011111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000001111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000011111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000001111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000011111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000111111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000001111111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000011111111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000111111111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00001111111111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00011111111111111111111111111111) (= (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!50091 d!10135))

(declare-fun d!10137 () Bool)

(declare-fun res!28918 () Bool)

(declare-fun e!32377 () Bool)

(assert (=> d!10137 (=> (not res!28918) (not e!32377))))

(declare-fun simpleValid!32 (LongMapFixedSize!402) Bool)

(assert (=> d!10137 (= res!28918 (simpleValid!32 newMap!16))))

(assert (=> d!10137 (= (valid!134 newMap!16) e!32377)))

(declare-fun b!50149 () Bool)

(declare-fun res!28919 () Bool)

(assert (=> b!50149 (=> (not res!28919) (not e!32377))))

(declare-fun arrayCountValidKeys!0 (array!3270 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!50149 (= res!28919 (= (arrayCountValidKeys!0 (_keys!3521 newMap!16) #b00000000000000000000000000000000 (size!1786 (_keys!3521 newMap!16))) (_size!250 newMap!16)))))

(declare-fun b!50150 () Bool)

(declare-fun res!28920 () Bool)

(assert (=> b!50150 (=> (not res!28920) (not e!32377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3270 (_ BitVec 32)) Bool)

(assert (=> b!50150 (= res!28920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3521 newMap!16) (mask!5697 newMap!16)))))

(declare-fun b!50151 () Bool)

(declare-datatypes ((List!1347 0))(
  ( (Nil!1344) (Cons!1343 (h!1923 (_ BitVec 64)) (t!4389 List!1347)) )
))
(declare-fun arrayNoDuplicates!0 (array!3270 (_ BitVec 32) List!1347) Bool)

(assert (=> b!50151 (= e!32377 (arrayNoDuplicates!0 (_keys!3521 newMap!16) #b00000000000000000000000000000000 Nil!1344))))

(assert (= (and d!10137 res!28918) b!50149))

(assert (= (and b!50149 res!28919) b!50150))

(assert (= (and b!50150 res!28920) b!50151))

(declare-fun m!43565 () Bool)

(assert (=> d!10137 m!43565))

(declare-fun m!43567 () Bool)

(assert (=> b!50149 m!43567))

(declare-fun m!43569 () Bool)

(assert (=> b!50150 m!43569))

(declare-fun m!43571 () Bool)

(assert (=> b!50151 m!43571))

(assert (=> b!50092 d!10137))

(declare-fun mapNonEmpty!2171 () Bool)

(declare-fun mapRes!2171 () Bool)

(declare-fun tp!6653 () Bool)

(declare-fun e!32383 () Bool)

(assert (=> mapNonEmpty!2171 (= mapRes!2171 (and tp!6653 e!32383))))

(declare-fun mapKey!2171 () (_ BitVec 32))

(declare-fun mapValue!2171 () ValueCell!747)

(declare-fun mapRest!2171 () (Array (_ BitVec 32) ValueCell!747))

(assert (=> mapNonEmpty!2171 (= mapRest!2162 (store mapRest!2171 mapKey!2171 mapValue!2171))))

(declare-fun condMapEmpty!2171 () Bool)

(declare-fun mapDefault!2171 () ValueCell!747)

(assert (=> mapNonEmpty!2161 (= condMapEmpty!2171 (= mapRest!2162 ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2171)))))

(declare-fun e!32382 () Bool)

(assert (=> mapNonEmpty!2161 (= tp!6637 (and e!32382 mapRes!2171))))

(declare-fun b!50159 () Bool)

(assert (=> b!50159 (= e!32382 tp_is_empty!2181)))

(declare-fun b!50158 () Bool)

(assert (=> b!50158 (= e!32383 tp_is_empty!2181)))

(declare-fun mapIsEmpty!2171 () Bool)

(assert (=> mapIsEmpty!2171 mapRes!2171))

(assert (= (and mapNonEmpty!2161 condMapEmpty!2171) mapIsEmpty!2171))

(assert (= (and mapNonEmpty!2161 (not condMapEmpty!2171)) mapNonEmpty!2171))

(assert (= (and mapNonEmpty!2171 ((_ is ValueCellFull!747) mapValue!2171)) b!50158))

(assert (= (and mapNonEmpty!2161 ((_ is ValueCellFull!747) mapDefault!2171)) b!50159))

(declare-fun m!43573 () Bool)

(assert (=> mapNonEmpty!2171 m!43573))

(declare-fun mapNonEmpty!2172 () Bool)

(declare-fun mapRes!2172 () Bool)

(declare-fun tp!6654 () Bool)

(declare-fun e!32385 () Bool)

(assert (=> mapNonEmpty!2172 (= mapRes!2172 (and tp!6654 e!32385))))

(declare-fun mapKey!2172 () (_ BitVec 32))

(declare-fun mapRest!2172 () (Array (_ BitVec 32) ValueCell!747))

(declare-fun mapValue!2172 () ValueCell!747)

(assert (=> mapNonEmpty!2172 (= mapRest!2161 (store mapRest!2172 mapKey!2172 mapValue!2172))))

(declare-fun condMapEmpty!2172 () Bool)

(declare-fun mapDefault!2172 () ValueCell!747)

(assert (=> mapNonEmpty!2162 (= condMapEmpty!2172 (= mapRest!2161 ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2172)))))

(declare-fun e!32384 () Bool)

(assert (=> mapNonEmpty!2162 (= tp!6635 (and e!32384 mapRes!2172))))

(declare-fun b!50161 () Bool)

(assert (=> b!50161 (= e!32384 tp_is_empty!2181)))

(declare-fun b!50160 () Bool)

(assert (=> b!50160 (= e!32385 tp_is_empty!2181)))

(declare-fun mapIsEmpty!2172 () Bool)

(assert (=> mapIsEmpty!2172 mapRes!2172))

(assert (= (and mapNonEmpty!2162 condMapEmpty!2172) mapIsEmpty!2172))

(assert (= (and mapNonEmpty!2162 (not condMapEmpty!2172)) mapNonEmpty!2172))

(assert (= (and mapNonEmpty!2172 ((_ is ValueCellFull!747) mapValue!2172)) b!50160))

(assert (= (and mapNonEmpty!2162 ((_ is ValueCellFull!747) mapDefault!2172)) b!50161))

(declare-fun m!43575 () Bool)

(assert (=> mapNonEmpty!2172 m!43575))

(check-sat (not b_next!1531) (not d!10137) (not b!50151) (not b!50149) (not b_next!1529) (not d!10133) b_and!2751 b_and!2749 tp_is_empty!2181 (not mapNonEmpty!2171) (not mapNonEmpty!2172) (not b!50150))
(check-sat b_and!2749 b_and!2751 (not b_next!1529) (not b_next!1531))
(get-model)

(declare-fun d!10139 () Bool)

(declare-fun res!28921 () Bool)

(declare-fun e!32386 () Bool)

(assert (=> d!10139 (=> (not res!28921) (not e!32386))))

(assert (=> d!10139 (= res!28921 (simpleValid!32 (v!2155 (underlying!125 thiss!992))))))

(assert (=> d!10139 (= (valid!134 (v!2155 (underlying!125 thiss!992))) e!32386)))

(declare-fun b!50162 () Bool)

(declare-fun res!28922 () Bool)

(assert (=> b!50162 (=> (not res!28922) (not e!32386))))

(assert (=> b!50162 (= res!28922 (= (arrayCountValidKeys!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000000 (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))) (_size!250 (v!2155 (underlying!125 thiss!992)))))))

(declare-fun b!50163 () Bool)

(declare-fun res!28923 () Bool)

(assert (=> b!50163 (=> (not res!28923) (not e!32386))))

(assert (=> b!50163 (= res!28923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3521 (v!2155 (underlying!125 thiss!992))) (mask!5697 (v!2155 (underlying!125 thiss!992)))))))

(declare-fun b!50164 () Bool)

(assert (=> b!50164 (= e!32386 (arrayNoDuplicates!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000000 Nil!1344))))

(assert (= (and d!10139 res!28921) b!50162))

(assert (= (and b!50162 res!28922) b!50163))

(assert (= (and b!50163 res!28923) b!50164))

(declare-fun m!43577 () Bool)

(assert (=> d!10139 m!43577))

(declare-fun m!43579 () Bool)

(assert (=> b!50162 m!43579))

(declare-fun m!43581 () Bool)

(assert (=> b!50163 m!43581))

(declare-fun m!43583 () Bool)

(assert (=> b!50164 m!43583))

(assert (=> d!10133 d!10139))

(declare-fun b!50175 () Bool)

(declare-fun e!32397 () Bool)

(declare-fun e!32398 () Bool)

(assert (=> b!50175 (= e!32397 e!32398)))

(declare-fun res!28931 () Bool)

(assert (=> b!50175 (=> (not res!28931) (not e!32398))))

(declare-fun e!32396 () Bool)

(assert (=> b!50175 (= res!28931 (not e!32396))))

(declare-fun res!28930 () Bool)

(assert (=> b!50175 (=> (not res!28930) (not e!32396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!50175 (= res!28930 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50176 () Bool)

(declare-fun e!32395 () Bool)

(declare-fun call!3876 () Bool)

(assert (=> b!50176 (= e!32395 call!3876)))

(declare-fun b!50177 () Bool)

(assert (=> b!50177 (= e!32395 call!3876)))

(declare-fun b!50178 () Bool)

(declare-fun contains!619 (List!1347 (_ BitVec 64)) Bool)

(assert (=> b!50178 (= e!32396 (contains!619 Nil!1344 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!3873 () Bool)

(declare-fun c!6780 () Bool)

(assert (=> bm!3873 (= call!3876 (arrayNoDuplicates!0 (_keys!3521 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6780 (Cons!1343 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) Nil!1344) Nil!1344)))))

(declare-fun b!50179 () Bool)

(assert (=> b!50179 (= e!32398 e!32395)))

(assert (=> b!50179 (= c!6780 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!10141 () Bool)

(declare-fun res!28932 () Bool)

(assert (=> d!10141 (=> res!28932 e!32397)))

(assert (=> d!10141 (= res!28932 (bvsge #b00000000000000000000000000000000 (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10141 (= (arrayNoDuplicates!0 (_keys!3521 newMap!16) #b00000000000000000000000000000000 Nil!1344) e!32397)))

(assert (= (and d!10141 (not res!28932)) b!50175))

(assert (= (and b!50175 res!28930) b!50178))

(assert (= (and b!50175 res!28931) b!50179))

(assert (= (and b!50179 c!6780) b!50176))

(assert (= (and b!50179 (not c!6780)) b!50177))

(assert (= (or b!50176 b!50177) bm!3873))

(declare-fun m!43585 () Bool)

(assert (=> b!50175 m!43585))

(assert (=> b!50175 m!43585))

(declare-fun m!43587 () Bool)

(assert (=> b!50175 m!43587))

(assert (=> b!50178 m!43585))

(assert (=> b!50178 m!43585))

(declare-fun m!43589 () Bool)

(assert (=> b!50178 m!43589))

(assert (=> bm!3873 m!43585))

(declare-fun m!43591 () Bool)

(assert (=> bm!3873 m!43591))

(assert (=> b!50179 m!43585))

(assert (=> b!50179 m!43585))

(assert (=> b!50179 m!43587))

(assert (=> b!50151 d!10141))

(declare-fun b!50188 () Bool)

(declare-fun e!32404 () (_ BitVec 32))

(assert (=> b!50188 (= e!32404 #b00000000000000000000000000000000)))

(declare-fun b!50189 () Bool)

(declare-fun e!32403 () (_ BitVec 32))

(declare-fun call!3879 () (_ BitVec 32))

(assert (=> b!50189 (= e!32403 (bvadd #b00000000000000000000000000000001 call!3879))))

(declare-fun bm!3876 () Bool)

(assert (=> bm!3876 (= call!3879 (arrayCountValidKeys!0 (_keys!3521 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))))))

(declare-fun b!50190 () Bool)

(assert (=> b!50190 (= e!32403 call!3879)))

(declare-fun d!10143 () Bool)

(declare-fun lt!21027 () (_ BitVec 32))

(assert (=> d!10143 (and (bvsge lt!21027 #b00000000000000000000000000000000) (bvsle lt!21027 (bvsub (size!1786 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!10143 (= lt!21027 e!32404)))

(declare-fun c!6785 () Bool)

(assert (=> d!10143 (= c!6785 (bvsge #b00000000000000000000000000000000 (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10143 (and (bvsle #b00000000000000000000000000000000 (size!1786 (_keys!3521 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1786 (_keys!3521 newMap!16)) (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10143 (= (arrayCountValidKeys!0 (_keys!3521 newMap!16) #b00000000000000000000000000000000 (size!1786 (_keys!3521 newMap!16))) lt!21027)))

(declare-fun b!50191 () Bool)

(assert (=> b!50191 (= e!32404 e!32403)))

(declare-fun c!6786 () Bool)

(assert (=> b!50191 (= c!6786 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10143 c!6785) b!50188))

(assert (= (and d!10143 (not c!6785)) b!50191))

(assert (= (and b!50191 c!6786) b!50189))

(assert (= (and b!50191 (not c!6786)) b!50190))

(assert (= (or b!50189 b!50190) bm!3876))

(declare-fun m!43593 () Bool)

(assert (=> bm!3876 m!43593))

(assert (=> b!50191 m!43585))

(assert (=> b!50191 m!43585))

(assert (=> b!50191 m!43587))

(assert (=> b!50149 d!10143))

(declare-fun b!50202 () Bool)

(declare-fun res!28944 () Bool)

(declare-fun e!32407 () Bool)

(assert (=> b!50202 (=> (not res!28944) (not e!32407))))

(declare-fun size!1790 (LongMapFixedSize!402) (_ BitVec 32))

(assert (=> b!50202 (= res!28944 (= (size!1790 newMap!16) (bvadd (_size!250 newMap!16) (bvsdiv (bvadd (extraKeys!1806 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!50203 () Bool)

(assert (=> b!50203 (= e!32407 (and (bvsge (extraKeys!1806 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1806 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!250 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!50201 () Bool)

(declare-fun res!28942 () Bool)

(assert (=> b!50201 (=> (not res!28942) (not e!32407))))

(assert (=> b!50201 (= res!28942 (bvsge (size!1790 newMap!16) (_size!250 newMap!16)))))

(declare-fun b!50200 () Bool)

(declare-fun res!28941 () Bool)

(assert (=> b!50200 (=> (not res!28941) (not e!32407))))

(assert (=> b!50200 (= res!28941 (and (= (size!1787 (_values!1898 newMap!16)) (bvadd (mask!5697 newMap!16) #b00000000000000000000000000000001)) (= (size!1786 (_keys!3521 newMap!16)) (size!1787 (_values!1898 newMap!16))) (bvsge (_size!250 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!250 newMap!16) (bvadd (mask!5697 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun d!10145 () Bool)

(declare-fun res!28943 () Bool)

(assert (=> d!10145 (=> (not res!28943) (not e!32407))))

(assert (=> d!10145 (= res!28943 (validMask!0 (mask!5697 newMap!16)))))

(assert (=> d!10145 (= (simpleValid!32 newMap!16) e!32407)))

(assert (= (and d!10145 res!28943) b!50200))

(assert (= (and b!50200 res!28941) b!50201))

(assert (= (and b!50201 res!28942) b!50202))

(assert (= (and b!50202 res!28944) b!50203))

(declare-fun m!43595 () Bool)

(assert (=> b!50202 m!43595))

(assert (=> b!50201 m!43595))

(declare-fun m!43597 () Bool)

(assert (=> d!10145 m!43597))

(assert (=> d!10137 d!10145))

(declare-fun bm!3879 () Bool)

(declare-fun call!3882 () Bool)

(assert (=> bm!3879 (= call!3882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3521 newMap!16) (mask!5697 newMap!16)))))

(declare-fun b!50212 () Bool)

(declare-fun e!32416 () Bool)

(declare-fun e!32415 () Bool)

(assert (=> b!50212 (= e!32416 e!32415)))

(declare-fun lt!21034 () (_ BitVec 64))

(assert (=> b!50212 (= lt!21034 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1418 0))(
  ( (Unit!1419) )
))
(declare-fun lt!21035 () Unit!1418)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3270 (_ BitVec 64) (_ BitVec 32)) Unit!1418)

(assert (=> b!50212 (= lt!21035 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3521 newMap!16) lt!21034 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!50212 (arrayContainsKey!0 (_keys!3521 newMap!16) lt!21034 #b00000000000000000000000000000000)))

(declare-fun lt!21036 () Unit!1418)

(assert (=> b!50212 (= lt!21036 lt!21035)))

(declare-fun res!28950 () Bool)

(declare-datatypes ((SeekEntryResult!228 0))(
  ( (MissingZero!228 (index!3034 (_ BitVec 32))) (Found!228 (index!3035 (_ BitVec 32))) (Intermediate!228 (undefined!1040 Bool) (index!3036 (_ BitVec 32)) (x!9168 (_ BitVec 32))) (Undefined!228) (MissingVacant!228 (index!3037 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3270 (_ BitVec 32)) SeekEntryResult!228)

(assert (=> b!50212 (= res!28950 (= (seekEntryOrOpen!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) (_keys!3521 newMap!16) (mask!5697 newMap!16)) (Found!228 #b00000000000000000000000000000000)))))

(assert (=> b!50212 (=> (not res!28950) (not e!32415))))

(declare-fun b!50213 () Bool)

(declare-fun e!32414 () Bool)

(assert (=> b!50213 (= e!32414 e!32416)))

(declare-fun c!6789 () Bool)

(assert (=> b!50213 (= c!6789 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!10147 () Bool)

(declare-fun res!28949 () Bool)

(assert (=> d!10147 (=> res!28949 e!32414)))

(assert (=> d!10147 (= res!28949 (bvsge #b00000000000000000000000000000000 (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10147 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3521 newMap!16) (mask!5697 newMap!16)) e!32414)))

(declare-fun b!50214 () Bool)

(assert (=> b!50214 (= e!32416 call!3882)))

(declare-fun b!50215 () Bool)

(assert (=> b!50215 (= e!32415 call!3882)))

(assert (= (and d!10147 (not res!28949)) b!50213))

(assert (= (and b!50213 c!6789) b!50212))

(assert (= (and b!50213 (not c!6789)) b!50214))

(assert (= (and b!50212 res!28950) b!50215))

(assert (= (or b!50215 b!50214) bm!3879))

(declare-fun m!43599 () Bool)

(assert (=> bm!3879 m!43599))

(assert (=> b!50212 m!43585))

(declare-fun m!43601 () Bool)

(assert (=> b!50212 m!43601))

(declare-fun m!43603 () Bool)

(assert (=> b!50212 m!43603))

(assert (=> b!50212 m!43585))

(declare-fun m!43605 () Bool)

(assert (=> b!50212 m!43605))

(assert (=> b!50213 m!43585))

(assert (=> b!50213 m!43585))

(assert (=> b!50213 m!43587))

(assert (=> b!50150 d!10147))

(declare-fun mapNonEmpty!2173 () Bool)

(declare-fun mapRes!2173 () Bool)

(declare-fun tp!6655 () Bool)

(declare-fun e!32418 () Bool)

(assert (=> mapNonEmpty!2173 (= mapRes!2173 (and tp!6655 e!32418))))

(declare-fun mapValue!2173 () ValueCell!747)

(declare-fun mapKey!2173 () (_ BitVec 32))

(declare-fun mapRest!2173 () (Array (_ BitVec 32) ValueCell!747))

(assert (=> mapNonEmpty!2173 (= mapRest!2172 (store mapRest!2173 mapKey!2173 mapValue!2173))))

(declare-fun condMapEmpty!2173 () Bool)

(declare-fun mapDefault!2173 () ValueCell!747)

(assert (=> mapNonEmpty!2172 (= condMapEmpty!2173 (= mapRest!2172 ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2173)))))

(declare-fun e!32417 () Bool)

(assert (=> mapNonEmpty!2172 (= tp!6654 (and e!32417 mapRes!2173))))

(declare-fun b!50217 () Bool)

(assert (=> b!50217 (= e!32417 tp_is_empty!2181)))

(declare-fun b!50216 () Bool)

(assert (=> b!50216 (= e!32418 tp_is_empty!2181)))

(declare-fun mapIsEmpty!2173 () Bool)

(assert (=> mapIsEmpty!2173 mapRes!2173))

(assert (= (and mapNonEmpty!2172 condMapEmpty!2173) mapIsEmpty!2173))

(assert (= (and mapNonEmpty!2172 (not condMapEmpty!2173)) mapNonEmpty!2173))

(assert (= (and mapNonEmpty!2173 ((_ is ValueCellFull!747) mapValue!2173)) b!50216))

(assert (= (and mapNonEmpty!2172 ((_ is ValueCellFull!747) mapDefault!2173)) b!50217))

(declare-fun m!43607 () Bool)

(assert (=> mapNonEmpty!2173 m!43607))

(declare-fun mapNonEmpty!2174 () Bool)

(declare-fun mapRes!2174 () Bool)

(declare-fun tp!6656 () Bool)

(declare-fun e!32420 () Bool)

(assert (=> mapNonEmpty!2174 (= mapRes!2174 (and tp!6656 e!32420))))

(declare-fun mapKey!2174 () (_ BitVec 32))

(declare-fun mapValue!2174 () ValueCell!747)

(declare-fun mapRest!2174 () (Array (_ BitVec 32) ValueCell!747))

(assert (=> mapNonEmpty!2174 (= mapRest!2171 (store mapRest!2174 mapKey!2174 mapValue!2174))))

(declare-fun condMapEmpty!2174 () Bool)

(declare-fun mapDefault!2174 () ValueCell!747)

(assert (=> mapNonEmpty!2171 (= condMapEmpty!2174 (= mapRest!2171 ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2174)))))

(declare-fun e!32419 () Bool)

(assert (=> mapNonEmpty!2171 (= tp!6653 (and e!32419 mapRes!2174))))

(declare-fun b!50219 () Bool)

(assert (=> b!50219 (= e!32419 tp_is_empty!2181)))

(declare-fun b!50218 () Bool)

(assert (=> b!50218 (= e!32420 tp_is_empty!2181)))

(declare-fun mapIsEmpty!2174 () Bool)

(assert (=> mapIsEmpty!2174 mapRes!2174))

(assert (= (and mapNonEmpty!2171 condMapEmpty!2174) mapIsEmpty!2174))

(assert (= (and mapNonEmpty!2171 (not condMapEmpty!2174)) mapNonEmpty!2174))

(assert (= (and mapNonEmpty!2174 ((_ is ValueCellFull!747) mapValue!2174)) b!50218))

(assert (= (and mapNonEmpty!2171 ((_ is ValueCellFull!747) mapDefault!2174)) b!50219))

(declare-fun m!43609 () Bool)

(assert (=> mapNonEmpty!2174 m!43609))

(check-sat tp_is_empty!2181 (not b_next!1531) (not b!50162) (not bm!3876) (not b!50179) (not b!50213) (not b!50178) (not b!50212) (not b!50175) (not b!50201) b_and!2751 b_and!2749 (not bm!3873) (not d!10139) (not b!50164) (not b!50202) (not b!50163) (not bm!3879) (not b!50191) (not d!10145) (not mapNonEmpty!2174) (not b_next!1529) (not mapNonEmpty!2173))
(check-sat b_and!2749 b_and!2751 (not b_next!1529) (not b_next!1531))
(get-model)

(declare-fun d!10149 () Bool)

(assert (=> d!10149 (= (validMask!0 (mask!5697 newMap!16)) (and (or (= (mask!5697 newMap!16) #b00000000000000000000000000000111) (= (mask!5697 newMap!16) #b00000000000000000000000000001111) (= (mask!5697 newMap!16) #b00000000000000000000000000011111) (= (mask!5697 newMap!16) #b00000000000000000000000000111111) (= (mask!5697 newMap!16) #b00000000000000000000000001111111) (= (mask!5697 newMap!16) #b00000000000000000000000011111111) (= (mask!5697 newMap!16) #b00000000000000000000000111111111) (= (mask!5697 newMap!16) #b00000000000000000000001111111111) (= (mask!5697 newMap!16) #b00000000000000000000011111111111) (= (mask!5697 newMap!16) #b00000000000000000000111111111111) (= (mask!5697 newMap!16) #b00000000000000000001111111111111) (= (mask!5697 newMap!16) #b00000000000000000011111111111111) (= (mask!5697 newMap!16) #b00000000000000000111111111111111) (= (mask!5697 newMap!16) #b00000000000000001111111111111111) (= (mask!5697 newMap!16) #b00000000000000011111111111111111) (= (mask!5697 newMap!16) #b00000000000000111111111111111111) (= (mask!5697 newMap!16) #b00000000000001111111111111111111) (= (mask!5697 newMap!16) #b00000000000011111111111111111111) (= (mask!5697 newMap!16) #b00000000000111111111111111111111) (= (mask!5697 newMap!16) #b00000000001111111111111111111111) (= (mask!5697 newMap!16) #b00000000011111111111111111111111) (= (mask!5697 newMap!16) #b00000000111111111111111111111111) (= (mask!5697 newMap!16) #b00000001111111111111111111111111) (= (mask!5697 newMap!16) #b00000011111111111111111111111111) (= (mask!5697 newMap!16) #b00000111111111111111111111111111) (= (mask!5697 newMap!16) #b00001111111111111111111111111111) (= (mask!5697 newMap!16) #b00011111111111111111111111111111) (= (mask!5697 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!5697 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!10145 d!10149))

(declare-fun b!50220 () Bool)

(declare-fun e!32423 () Bool)

(declare-fun e!32424 () Bool)

(assert (=> b!50220 (= e!32423 e!32424)))

(declare-fun res!28952 () Bool)

(assert (=> b!50220 (=> (not res!28952) (not e!32424))))

(declare-fun e!32422 () Bool)

(assert (=> b!50220 (= res!28952 (not e!32422))))

(declare-fun res!28951 () Bool)

(assert (=> b!50220 (=> (not res!28951) (not e!32422))))

(assert (=> b!50220 (= res!28951 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!50221 () Bool)

(declare-fun e!32421 () Bool)

(declare-fun call!3883 () Bool)

(assert (=> b!50221 (= e!32421 call!3883)))

(declare-fun b!50222 () Bool)

(assert (=> b!50222 (= e!32421 call!3883)))

(declare-fun b!50223 () Bool)

(assert (=> b!50223 (= e!32422 (contains!619 (ite c!6780 (Cons!1343 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) Nil!1344) Nil!1344) (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3880 () Bool)

(declare-fun c!6790 () Bool)

(assert (=> bm!3880 (= call!3883 (arrayNoDuplicates!0 (_keys!3521 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6790 (Cons!1343 (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!6780 (Cons!1343 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) Nil!1344) Nil!1344)) (ite c!6780 (Cons!1343 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) Nil!1344) Nil!1344))))))

(declare-fun b!50224 () Bool)

(assert (=> b!50224 (= e!32424 e!32421)))

(assert (=> b!50224 (= c!6790 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!10151 () Bool)

(declare-fun res!28953 () Bool)

(assert (=> d!10151 (=> res!28953 e!32423)))

(assert (=> d!10151 (= res!28953 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10151 (= (arrayNoDuplicates!0 (_keys!3521 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6780 (Cons!1343 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) Nil!1344) Nil!1344)) e!32423)))

(assert (= (and d!10151 (not res!28953)) b!50220))

(assert (= (and b!50220 res!28951) b!50223))

(assert (= (and b!50220 res!28952) b!50224))

(assert (= (and b!50224 c!6790) b!50221))

(assert (= (and b!50224 (not c!6790)) b!50222))

(assert (= (or b!50221 b!50222) bm!3880))

(declare-fun m!43611 () Bool)

(assert (=> b!50220 m!43611))

(assert (=> b!50220 m!43611))

(declare-fun m!43613 () Bool)

(assert (=> b!50220 m!43613))

(assert (=> b!50223 m!43611))

(assert (=> b!50223 m!43611))

(declare-fun m!43615 () Bool)

(assert (=> b!50223 m!43615))

(assert (=> bm!3880 m!43611))

(declare-fun m!43617 () Bool)

(assert (=> bm!3880 m!43617))

(assert (=> b!50224 m!43611))

(assert (=> b!50224 m!43611))

(assert (=> b!50224 m!43613))

(assert (=> bm!3873 d!10151))

(declare-fun d!10153 () Bool)

(assert (=> d!10153 (= (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!50179 d!10153))

(declare-fun b!50225 () Bool)

(declare-fun e!32426 () (_ BitVec 32))

(assert (=> b!50225 (= e!32426 #b00000000000000000000000000000000)))

(declare-fun b!50226 () Bool)

(declare-fun e!32425 () (_ BitVec 32))

(declare-fun call!3884 () (_ BitVec 32))

(assert (=> b!50226 (= e!32425 (bvadd #b00000000000000000000000000000001 call!3884))))

(declare-fun bm!3881 () Bool)

(assert (=> bm!3881 (= call!3884 (arrayCountValidKeys!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))))))

(declare-fun b!50227 () Bool)

(assert (=> b!50227 (= e!32425 call!3884)))

(declare-fun d!10155 () Bool)

(declare-fun lt!21037 () (_ BitVec 32))

(assert (=> d!10155 (and (bvsge lt!21037 #b00000000000000000000000000000000) (bvsle lt!21037 (bvsub (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!10155 (= lt!21037 e!32426)))

(declare-fun c!6791 () Bool)

(assert (=> d!10155 (= c!6791 (bvsge #b00000000000000000000000000000000 (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))))))

(assert (=> d!10155 (and (bvsle #b00000000000000000000000000000000 (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))))))

(assert (=> d!10155 (= (arrayCountValidKeys!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000000 (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))) lt!21037)))

(declare-fun b!50228 () Bool)

(assert (=> b!50228 (= e!32426 e!32425)))

(declare-fun c!6792 () Bool)

(assert (=> b!50228 (= c!6792 (validKeyInArray!0 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!10155 c!6791) b!50225))

(assert (= (and d!10155 (not c!6791)) b!50228))

(assert (= (and b!50228 c!6792) b!50226))

(assert (= (and b!50228 (not c!6792)) b!50227))

(assert (= (or b!50226 b!50227) bm!3881))

(declare-fun m!43619 () Bool)

(assert (=> bm!3881 m!43619))

(declare-fun m!43621 () Bool)

(assert (=> b!50228 m!43621))

(assert (=> b!50228 m!43621))

(declare-fun m!43623 () Bool)

(assert (=> b!50228 m!43623))

(assert (=> b!50162 d!10155))

(declare-fun b!50229 () Bool)

(declare-fun e!32428 () (_ BitVec 32))

(assert (=> b!50229 (= e!32428 #b00000000000000000000000000000000)))

(declare-fun b!50230 () Bool)

(declare-fun e!32427 () (_ BitVec 32))

(declare-fun call!3885 () (_ BitVec 32))

(assert (=> b!50230 (= e!32427 (bvadd #b00000000000000000000000000000001 call!3885))))

(declare-fun bm!3882 () Bool)

(assert (=> bm!3882 (= call!3885 (arrayCountValidKeys!0 (_keys!3521 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))))))

(declare-fun b!50231 () Bool)

(assert (=> b!50231 (= e!32427 call!3885)))

(declare-fun d!10157 () Bool)

(declare-fun lt!21038 () (_ BitVec 32))

(assert (=> d!10157 (and (bvsge lt!21038 #b00000000000000000000000000000000) (bvsle lt!21038 (bvsub (size!1786 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!10157 (= lt!21038 e!32428)))

(declare-fun c!6793 () Bool)

(assert (=> d!10157 (= c!6793 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10157 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1786 (_keys!3521 newMap!16)) (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10157 (= (arrayCountValidKeys!0 (_keys!3521 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))) lt!21038)))

(declare-fun b!50232 () Bool)

(assert (=> b!50232 (= e!32428 e!32427)))

(declare-fun c!6794 () Bool)

(assert (=> b!50232 (= c!6794 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!10157 c!6793) b!50229))

(assert (= (and d!10157 (not c!6793)) b!50232))

(assert (= (and b!50232 c!6794) b!50230))

(assert (= (and b!50232 (not c!6794)) b!50231))

(assert (= (or b!50230 b!50231) bm!3882))

(declare-fun m!43625 () Bool)

(assert (=> bm!3882 m!43625))

(assert (=> b!50232 m!43611))

(assert (=> b!50232 m!43611))

(assert (=> b!50232 m!43613))

(assert (=> bm!3876 d!10157))

(declare-fun bm!3883 () Bool)

(declare-fun call!3886 () Bool)

(assert (=> bm!3883 (= call!3886 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3521 (v!2155 (underlying!125 thiss!992))) (mask!5697 (v!2155 (underlying!125 thiss!992)))))))

(declare-fun b!50233 () Bool)

(declare-fun e!32431 () Bool)

(declare-fun e!32430 () Bool)

(assert (=> b!50233 (= e!32431 e!32430)))

(declare-fun lt!21039 () (_ BitVec 64))

(assert (=> b!50233 (= lt!21039 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!21040 () Unit!1418)

(assert (=> b!50233 (= lt!21040 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) lt!21039 #b00000000000000000000000000000000))))

(assert (=> b!50233 (arrayContainsKey!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) lt!21039 #b00000000000000000000000000000000)))

(declare-fun lt!21041 () Unit!1418)

(assert (=> b!50233 (= lt!21041 lt!21040)))

(declare-fun res!28955 () Bool)

(assert (=> b!50233 (= res!28955 (= (seekEntryOrOpen!0 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000) (_keys!3521 (v!2155 (underlying!125 thiss!992))) (mask!5697 (v!2155 (underlying!125 thiss!992)))) (Found!228 #b00000000000000000000000000000000)))))

(assert (=> b!50233 (=> (not res!28955) (not e!32430))))

(declare-fun b!50234 () Bool)

(declare-fun e!32429 () Bool)

(assert (=> b!50234 (= e!32429 e!32431)))

(declare-fun c!6795 () Bool)

(assert (=> b!50234 (= c!6795 (validKeyInArray!0 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!10159 () Bool)

(declare-fun res!28954 () Bool)

(assert (=> d!10159 (=> res!28954 e!32429)))

(assert (=> d!10159 (= res!28954 (bvsge #b00000000000000000000000000000000 (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))))))

(assert (=> d!10159 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3521 (v!2155 (underlying!125 thiss!992))) (mask!5697 (v!2155 (underlying!125 thiss!992)))) e!32429)))

(declare-fun b!50235 () Bool)

(assert (=> b!50235 (= e!32431 call!3886)))

(declare-fun b!50236 () Bool)

(assert (=> b!50236 (= e!32430 call!3886)))

(assert (= (and d!10159 (not res!28954)) b!50234))

(assert (= (and b!50234 c!6795) b!50233))

(assert (= (and b!50234 (not c!6795)) b!50235))

(assert (= (and b!50233 res!28955) b!50236))

(assert (= (or b!50236 b!50235) bm!3883))

(declare-fun m!43627 () Bool)

(assert (=> bm!3883 m!43627))

(assert (=> b!50233 m!43621))

(declare-fun m!43629 () Bool)

(assert (=> b!50233 m!43629))

(declare-fun m!43631 () Bool)

(assert (=> b!50233 m!43631))

(assert (=> b!50233 m!43621))

(declare-fun m!43633 () Bool)

(assert (=> b!50233 m!43633))

(assert (=> b!50234 m!43621))

(assert (=> b!50234 m!43621))

(assert (=> b!50234 m!43623))

(assert (=> b!50163 d!10159))

(declare-fun b!50237 () Bool)

(declare-fun e!32434 () Bool)

(declare-fun e!32435 () Bool)

(assert (=> b!50237 (= e!32434 e!32435)))

(declare-fun res!28957 () Bool)

(assert (=> b!50237 (=> (not res!28957) (not e!32435))))

(declare-fun e!32433 () Bool)

(assert (=> b!50237 (= res!28957 (not e!32433))))

(declare-fun res!28956 () Bool)

(assert (=> b!50237 (=> (not res!28956) (not e!32433))))

(assert (=> b!50237 (= res!28956 (validKeyInArray!0 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!50238 () Bool)

(declare-fun e!32432 () Bool)

(declare-fun call!3887 () Bool)

(assert (=> b!50238 (= e!32432 call!3887)))

(declare-fun b!50239 () Bool)

(assert (=> b!50239 (= e!32432 call!3887)))

(declare-fun b!50240 () Bool)

(assert (=> b!50240 (= e!32433 (contains!619 Nil!1344 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!3884 () Bool)

(declare-fun c!6796 () Bool)

(assert (=> bm!3884 (= call!3887 (arrayNoDuplicates!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6796 (Cons!1343 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000) Nil!1344) Nil!1344)))))

(declare-fun b!50241 () Bool)

(assert (=> b!50241 (= e!32435 e!32432)))

(assert (=> b!50241 (= c!6796 (validKeyInArray!0 (select (arr!1564 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!10161 () Bool)

(declare-fun res!28958 () Bool)

(assert (=> d!10161 (=> res!28958 e!32434)))

(assert (=> d!10161 (= res!28958 (bvsge #b00000000000000000000000000000000 (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992))))))))

(assert (=> d!10161 (= (arrayNoDuplicates!0 (_keys!3521 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000000 Nil!1344) e!32434)))

(assert (= (and d!10161 (not res!28958)) b!50237))

(assert (= (and b!50237 res!28956) b!50240))

(assert (= (and b!50237 res!28957) b!50241))

(assert (= (and b!50241 c!6796) b!50238))

(assert (= (and b!50241 (not c!6796)) b!50239))

(assert (= (or b!50238 b!50239) bm!3884))

(assert (=> b!50237 m!43621))

(assert (=> b!50237 m!43621))

(assert (=> b!50237 m!43623))

(assert (=> b!50240 m!43621))

(assert (=> b!50240 m!43621))

(declare-fun m!43635 () Bool)

(assert (=> b!50240 m!43635))

(assert (=> bm!3884 m!43621))

(declare-fun m!43637 () Bool)

(assert (=> bm!3884 m!43637))

(assert (=> b!50241 m!43621))

(assert (=> b!50241 m!43621))

(assert (=> b!50241 m!43623))

(assert (=> b!50164 d!10161))

(declare-fun bm!3885 () Bool)

(declare-fun call!3888 () Bool)

(assert (=> bm!3885 (= call!3888 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3521 newMap!16) (mask!5697 newMap!16)))))

(declare-fun b!50242 () Bool)

(declare-fun e!32438 () Bool)

(declare-fun e!32437 () Bool)

(assert (=> b!50242 (= e!32438 e!32437)))

(declare-fun lt!21042 () (_ BitVec 64))

(assert (=> b!50242 (= lt!21042 (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!21043 () Unit!1418)

(assert (=> b!50242 (= lt!21043 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3521 newMap!16) lt!21042 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!50242 (arrayContainsKey!0 (_keys!3521 newMap!16) lt!21042 #b00000000000000000000000000000000)))

(declare-fun lt!21044 () Unit!1418)

(assert (=> b!50242 (= lt!21044 lt!21043)))

(declare-fun res!28960 () Bool)

(assert (=> b!50242 (= res!28960 (= (seekEntryOrOpen!0 (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3521 newMap!16) (mask!5697 newMap!16)) (Found!228 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!50242 (=> (not res!28960) (not e!32437))))

(declare-fun b!50243 () Bool)

(declare-fun e!32436 () Bool)

(assert (=> b!50243 (= e!32436 e!32438)))

(declare-fun c!6797 () Bool)

(assert (=> b!50243 (= c!6797 (validKeyInArray!0 (select (arr!1564 (_keys!3521 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!10163 () Bool)

(declare-fun res!28959 () Bool)

(assert (=> d!10163 (=> res!28959 e!32436)))

(assert (=> d!10163 (= res!28959 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))))))

(assert (=> d!10163 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3521 newMap!16) (mask!5697 newMap!16)) e!32436)))

(declare-fun b!50244 () Bool)

(assert (=> b!50244 (= e!32438 call!3888)))

(declare-fun b!50245 () Bool)

(assert (=> b!50245 (= e!32437 call!3888)))

(assert (= (and d!10163 (not res!28959)) b!50243))

(assert (= (and b!50243 c!6797) b!50242))

(assert (= (and b!50243 (not c!6797)) b!50244))

(assert (= (and b!50242 res!28960) b!50245))

(assert (= (or b!50245 b!50244) bm!3885))

(declare-fun m!43639 () Bool)

(assert (=> bm!3885 m!43639))

(assert (=> b!50242 m!43611))

(declare-fun m!43641 () Bool)

(assert (=> b!50242 m!43641))

(declare-fun m!43643 () Bool)

(assert (=> b!50242 m!43643))

(assert (=> b!50242 m!43611))

(declare-fun m!43645 () Bool)

(assert (=> b!50242 m!43645))

(assert (=> b!50243 m!43611))

(assert (=> b!50243 m!43611))

(assert (=> b!50243 m!43613))

(assert (=> bm!3879 d!10163))

(declare-fun d!10165 () Bool)

(assert (=> d!10165 (= (size!1790 newMap!16) (bvadd (_size!250 newMap!16) (bvsdiv (bvadd (extraKeys!1806 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!50202 d!10165))

(assert (=> b!50191 d!10153))

(assert (=> b!50201 d!10165))

(assert (=> b!50175 d!10153))

(declare-fun b!50248 () Bool)

(declare-fun res!28964 () Bool)

(declare-fun e!32439 () Bool)

(assert (=> b!50248 (=> (not res!28964) (not e!32439))))

(assert (=> b!50248 (= res!28964 (= (size!1790 (v!2155 (underlying!125 thiss!992))) (bvadd (_size!250 (v!2155 (underlying!125 thiss!992))) (bvsdiv (bvadd (extraKeys!1806 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!50249 () Bool)

(assert (=> b!50249 (= e!32439 (and (bvsge (extraKeys!1806 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1806 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!250 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!50247 () Bool)

(declare-fun res!28962 () Bool)

(assert (=> b!50247 (=> (not res!28962) (not e!32439))))

(assert (=> b!50247 (= res!28962 (bvsge (size!1790 (v!2155 (underlying!125 thiss!992))) (_size!250 (v!2155 (underlying!125 thiss!992)))))))

(declare-fun b!50246 () Bool)

(declare-fun res!28961 () Bool)

(assert (=> b!50246 (=> (not res!28961) (not e!32439))))

(assert (=> b!50246 (= res!28961 (and (= (size!1787 (_values!1898 (v!2155 (underlying!125 thiss!992)))) (bvadd (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000001)) (= (size!1786 (_keys!3521 (v!2155 (underlying!125 thiss!992)))) (size!1787 (_values!1898 (v!2155 (underlying!125 thiss!992))))) (bvsge (_size!250 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!250 (v!2155 (underlying!125 thiss!992))) (bvadd (mask!5697 (v!2155 (underlying!125 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun d!10167 () Bool)

(declare-fun res!28963 () Bool)

(assert (=> d!10167 (=> (not res!28963) (not e!32439))))

(assert (=> d!10167 (= res!28963 (validMask!0 (mask!5697 (v!2155 (underlying!125 thiss!992)))))))

(assert (=> d!10167 (= (simpleValid!32 (v!2155 (underlying!125 thiss!992))) e!32439)))

(assert (= (and d!10167 res!28963) b!50246))

(assert (= (and b!50246 res!28961) b!50247))

(assert (= (and b!50247 res!28962) b!50248))

(assert (= (and b!50248 res!28964) b!50249))

(declare-fun m!43647 () Bool)

(assert (=> b!50248 m!43647))

(assert (=> b!50247 m!43647))

(assert (=> d!10167 m!43539))

(assert (=> d!10139 d!10167))

(declare-fun d!10169 () Bool)

(assert (=> d!10169 (arrayContainsKey!0 (_keys!3521 newMap!16) lt!21034 #b00000000000000000000000000000000)))

(declare-fun lt!21047 () Unit!1418)

(declare-fun choose!13 (array!3270 (_ BitVec 64) (_ BitVec 32)) Unit!1418)

(assert (=> d!10169 (= lt!21047 (choose!13 (_keys!3521 newMap!16) lt!21034 #b00000000000000000000000000000000))))

(assert (=> d!10169 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!10169 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3521 newMap!16) lt!21034 #b00000000000000000000000000000000) lt!21047)))

(declare-fun bs!2355 () Bool)

(assert (= bs!2355 d!10169))

(assert (=> bs!2355 m!43603))

(declare-fun m!43649 () Bool)

(assert (=> bs!2355 m!43649))

(assert (=> b!50212 d!10169))

(declare-fun d!10171 () Bool)

(declare-fun res!28969 () Bool)

(declare-fun e!32444 () Bool)

(assert (=> d!10171 (=> res!28969 e!32444)))

(assert (=> d!10171 (= res!28969 (= (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) lt!21034))))

(assert (=> d!10171 (= (arrayContainsKey!0 (_keys!3521 newMap!16) lt!21034 #b00000000000000000000000000000000) e!32444)))

(declare-fun b!50254 () Bool)

(declare-fun e!32445 () Bool)

(assert (=> b!50254 (= e!32444 e!32445)))

(declare-fun res!28970 () Bool)

(assert (=> b!50254 (=> (not res!28970) (not e!32445))))

(assert (=> b!50254 (= res!28970 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1786 (_keys!3521 newMap!16))))))

(declare-fun b!50255 () Bool)

(assert (=> b!50255 (= e!32445 (arrayContainsKey!0 (_keys!3521 newMap!16) lt!21034 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10171 (not res!28969)) b!50254))

(assert (= (and b!50254 res!28970) b!50255))

(assert (=> d!10171 m!43585))

(declare-fun m!43651 () Bool)

(assert (=> b!50255 m!43651))

(assert (=> b!50212 d!10171))

(declare-fun b!50268 () Bool)

(declare-fun c!6804 () Bool)

(declare-fun lt!21054 () (_ BitVec 64))

(assert (=> b!50268 (= c!6804 (= lt!21054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!32454 () SeekEntryResult!228)

(declare-fun e!32453 () SeekEntryResult!228)

(assert (=> b!50268 (= e!32454 e!32453)))

(declare-fun b!50269 () Bool)

(declare-fun lt!21056 () SeekEntryResult!228)

(assert (=> b!50269 (= e!32453 (MissingZero!228 (index!3036 lt!21056)))))

(declare-fun b!50270 () Bool)

(assert (=> b!50270 (= e!32454 (Found!228 (index!3036 lt!21056)))))

(declare-fun d!10173 () Bool)

(declare-fun lt!21055 () SeekEntryResult!228)

(assert (=> d!10173 (and (or ((_ is Undefined!228) lt!21055) (not ((_ is Found!228) lt!21055)) (and (bvsge (index!3035 lt!21055) #b00000000000000000000000000000000) (bvslt (index!3035 lt!21055) (size!1786 (_keys!3521 newMap!16))))) (or ((_ is Undefined!228) lt!21055) ((_ is Found!228) lt!21055) (not ((_ is MissingZero!228) lt!21055)) (and (bvsge (index!3034 lt!21055) #b00000000000000000000000000000000) (bvslt (index!3034 lt!21055) (size!1786 (_keys!3521 newMap!16))))) (or ((_ is Undefined!228) lt!21055) ((_ is Found!228) lt!21055) ((_ is MissingZero!228) lt!21055) (not ((_ is MissingVacant!228) lt!21055)) (and (bvsge (index!3037 lt!21055) #b00000000000000000000000000000000) (bvslt (index!3037 lt!21055) (size!1786 (_keys!3521 newMap!16))))) (or ((_ is Undefined!228) lt!21055) (ite ((_ is Found!228) lt!21055) (= (select (arr!1564 (_keys!3521 newMap!16)) (index!3035 lt!21055)) (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!228) lt!21055) (= (select (arr!1564 (_keys!3521 newMap!16)) (index!3034 lt!21055)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!228) lt!21055) (= (select (arr!1564 (_keys!3521 newMap!16)) (index!3037 lt!21055)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!32452 () SeekEntryResult!228)

(assert (=> d!10173 (= lt!21055 e!32452)))

(declare-fun c!6806 () Bool)

(assert (=> d!10173 (= c!6806 (and ((_ is Intermediate!228) lt!21056) (undefined!1040 lt!21056)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3270 (_ BitVec 32)) SeekEntryResult!228)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10173 (= lt!21056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) (mask!5697 newMap!16)) (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) (_keys!3521 newMap!16) (mask!5697 newMap!16)))))

(assert (=> d!10173 (validMask!0 (mask!5697 newMap!16))))

(assert (=> d!10173 (= (seekEntryOrOpen!0 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) (_keys!3521 newMap!16) (mask!5697 newMap!16)) lt!21055)))

(declare-fun b!50271 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3270 (_ BitVec 32)) SeekEntryResult!228)

(assert (=> b!50271 (= e!32453 (seekKeyOrZeroReturnVacant!0 (x!9168 lt!21056) (index!3036 lt!21056) (index!3036 lt!21056) (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000) (_keys!3521 newMap!16) (mask!5697 newMap!16)))))

(declare-fun b!50272 () Bool)

(assert (=> b!50272 (= e!32452 Undefined!228)))

(declare-fun b!50273 () Bool)

(assert (=> b!50273 (= e!32452 e!32454)))

(assert (=> b!50273 (= lt!21054 (select (arr!1564 (_keys!3521 newMap!16)) (index!3036 lt!21056)))))

(declare-fun c!6805 () Bool)

(assert (=> b!50273 (= c!6805 (= lt!21054 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10173 c!6806) b!50272))

(assert (= (and d!10173 (not c!6806)) b!50273))

(assert (= (and b!50273 c!6805) b!50270))

(assert (= (and b!50273 (not c!6805)) b!50268))

(assert (= (and b!50268 c!6804) b!50269))

(assert (= (and b!50268 (not c!6804)) b!50271))

(assert (=> d!10173 m!43597))

(assert (=> d!10173 m!43585))

(declare-fun m!43653 () Bool)

(assert (=> d!10173 m!43653))

(declare-fun m!43655 () Bool)

(assert (=> d!10173 m!43655))

(declare-fun m!43657 () Bool)

(assert (=> d!10173 m!43657))

(declare-fun m!43659 () Bool)

(assert (=> d!10173 m!43659))

(assert (=> d!10173 m!43653))

(assert (=> d!10173 m!43585))

(declare-fun m!43661 () Bool)

(assert (=> d!10173 m!43661))

(assert (=> b!50271 m!43585))

(declare-fun m!43663 () Bool)

(assert (=> b!50271 m!43663))

(declare-fun m!43665 () Bool)

(assert (=> b!50273 m!43665))

(assert (=> b!50212 d!10173))

(declare-fun d!10175 () Bool)

(declare-fun lt!21059 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!54 (List!1347) (InoxSet (_ BitVec 64)))

(assert (=> d!10175 (= lt!21059 (select (content!54 Nil!1344) (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!32460 () Bool)

(assert (=> d!10175 (= lt!21059 e!32460)))

(declare-fun res!28976 () Bool)

(assert (=> d!10175 (=> (not res!28976) (not e!32460))))

(assert (=> d!10175 (= res!28976 ((_ is Cons!1343) Nil!1344))))

(assert (=> d!10175 (= (contains!619 Nil!1344 (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)) lt!21059)))

(declare-fun b!50278 () Bool)

(declare-fun e!32459 () Bool)

(assert (=> b!50278 (= e!32460 e!32459)))

(declare-fun res!28975 () Bool)

(assert (=> b!50278 (=> res!28975 e!32459)))

(assert (=> b!50278 (= res!28975 (= (h!1923 Nil!1344) (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50279 () Bool)

(assert (=> b!50279 (= e!32459 (contains!619 (t!4389 Nil!1344) (select (arr!1564 (_keys!3521 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10175 res!28976) b!50278))

(assert (= (and b!50278 (not res!28975)) b!50279))

(declare-fun m!43667 () Bool)

(assert (=> d!10175 m!43667))

(assert (=> d!10175 m!43585))

(declare-fun m!43669 () Bool)

(assert (=> d!10175 m!43669))

(assert (=> b!50279 m!43585))

(declare-fun m!43671 () Bool)

(assert (=> b!50279 m!43671))

(assert (=> b!50178 d!10175))

(assert (=> b!50213 d!10153))

(declare-fun mapNonEmpty!2175 () Bool)

(declare-fun mapRes!2175 () Bool)

(declare-fun tp!6657 () Bool)

(declare-fun e!32462 () Bool)

(assert (=> mapNonEmpty!2175 (= mapRes!2175 (and tp!6657 e!32462))))

(declare-fun mapKey!2175 () (_ BitVec 32))

(declare-fun mapValue!2175 () ValueCell!747)

(declare-fun mapRest!2175 () (Array (_ BitVec 32) ValueCell!747))

(assert (=> mapNonEmpty!2175 (= mapRest!2173 (store mapRest!2175 mapKey!2175 mapValue!2175))))

(declare-fun condMapEmpty!2175 () Bool)

(declare-fun mapDefault!2175 () ValueCell!747)

(assert (=> mapNonEmpty!2173 (= condMapEmpty!2175 (= mapRest!2173 ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2175)))))

(declare-fun e!32461 () Bool)

(assert (=> mapNonEmpty!2173 (= tp!6655 (and e!32461 mapRes!2175))))

(declare-fun b!50281 () Bool)

(assert (=> b!50281 (= e!32461 tp_is_empty!2181)))

(declare-fun b!50280 () Bool)

(assert (=> b!50280 (= e!32462 tp_is_empty!2181)))

(declare-fun mapIsEmpty!2175 () Bool)

(assert (=> mapIsEmpty!2175 mapRes!2175))

(assert (= (and mapNonEmpty!2173 condMapEmpty!2175) mapIsEmpty!2175))

(assert (= (and mapNonEmpty!2173 (not condMapEmpty!2175)) mapNonEmpty!2175))

(assert (= (and mapNonEmpty!2175 ((_ is ValueCellFull!747) mapValue!2175)) b!50280))

(assert (= (and mapNonEmpty!2173 ((_ is ValueCellFull!747) mapDefault!2175)) b!50281))

(declare-fun m!43673 () Bool)

(assert (=> mapNonEmpty!2175 m!43673))

(declare-fun mapNonEmpty!2176 () Bool)

(declare-fun mapRes!2176 () Bool)

(declare-fun tp!6658 () Bool)

(declare-fun e!32464 () Bool)

(assert (=> mapNonEmpty!2176 (= mapRes!2176 (and tp!6658 e!32464))))

(declare-fun mapRest!2176 () (Array (_ BitVec 32) ValueCell!747))

(declare-fun mapKey!2176 () (_ BitVec 32))

(declare-fun mapValue!2176 () ValueCell!747)

(assert (=> mapNonEmpty!2176 (= mapRest!2174 (store mapRest!2176 mapKey!2176 mapValue!2176))))

(declare-fun condMapEmpty!2176 () Bool)

(declare-fun mapDefault!2176 () ValueCell!747)

(assert (=> mapNonEmpty!2174 (= condMapEmpty!2176 (= mapRest!2174 ((as const (Array (_ BitVec 32) ValueCell!747)) mapDefault!2176)))))

(declare-fun e!32463 () Bool)

(assert (=> mapNonEmpty!2174 (= tp!6656 (and e!32463 mapRes!2176))))

(declare-fun b!50283 () Bool)

(assert (=> b!50283 (= e!32463 tp_is_empty!2181)))

(declare-fun b!50282 () Bool)

(assert (=> b!50282 (= e!32464 tp_is_empty!2181)))

(declare-fun mapIsEmpty!2176 () Bool)

(assert (=> mapIsEmpty!2176 mapRes!2176))

(assert (= (and mapNonEmpty!2174 condMapEmpty!2176) mapIsEmpty!2176))

(assert (= (and mapNonEmpty!2174 (not condMapEmpty!2176)) mapNonEmpty!2176))

(assert (= (and mapNonEmpty!2176 ((_ is ValueCellFull!747) mapValue!2176)) b!50282))

(assert (= (and mapNonEmpty!2174 ((_ is ValueCellFull!747) mapDefault!2176)) b!50283))

(declare-fun m!43675 () Bool)

(assert (=> mapNonEmpty!2176 m!43675))

(check-sat (not b!50247) tp_is_empty!2181 (not bm!3883) (not b!50248) (not d!10173) (not b!50224) (not d!10175) (not mapNonEmpty!2175) (not b!50234) (not d!10167) (not b!50233) (not b!50228) (not b_next!1529) (not bm!3881) (not b!50255) (not bm!3880) b_and!2751 (not bm!3885) b_and!2749 (not b!50232) (not b!50223) (not b_next!1531) (not b!50242) (not b!50220) (not b!50279) (not mapNonEmpty!2176) (not bm!3884) (not b!50237) (not bm!3882) (not d!10169) (not b!50241) (not b!50240) (not b!50243) (not b!50271))
(check-sat b_and!2749 b_and!2751 (not b_next!1529) (not b_next!1531))
