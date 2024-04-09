; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75656 () Bool)

(assert start!75656)

(declare-fun b!889066 () Bool)

(declare-fun b_free!15609 () Bool)

(declare-fun b_next!15609 () Bool)

(assert (=> b!889066 (= b_free!15609 (not b_next!15609))))

(declare-fun tp!54794 () Bool)

(declare-fun b_and!25867 () Bool)

(assert (=> b!889066 (= tp!54794 b_and!25867)))

(declare-fun res!602673 () Bool)

(declare-fun e!495566 () Bool)

(assert (=> start!75656 (=> (not res!602673) (not e!495566))))

(declare-datatypes ((array!51838 0))(
  ( (array!51839 (arr!24922 (Array (_ BitVec 32) (_ BitVec 64))) (size!25367 (_ BitVec 32))) )
))
(declare-datatypes ((V!28881 0))(
  ( (V!28882 (val!9019 Int)) )
))
(declare-datatypes ((ValueCell!8487 0))(
  ( (ValueCellFull!8487 (v!11491 V!28881)) (EmptyCell!8487) )
))
(declare-datatypes ((array!51840 0))(
  ( (array!51841 (arr!24923 (Array (_ BitVec 32) ValueCell!8487)) (size!25368 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3990 0))(
  ( (LongMapFixedSize!3991 (defaultEntry!5192 Int) (mask!25627 (_ BitVec 32)) (extraKeys!4886 (_ BitVec 32)) (zeroValue!4990 V!28881) (minValue!4990 V!28881) (_size!2050 (_ BitVec 32)) (_keys!9871 array!51838) (_values!5177 array!51840) (_vacant!2050 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3990)

(declare-fun valid!1543 (LongMapFixedSize!3990) Bool)

(assert (=> start!75656 (= res!602673 (valid!1543 thiss!1181))))

(assert (=> start!75656 e!495566))

(declare-fun e!495569 () Bool)

(assert (=> start!75656 e!495569))

(assert (=> start!75656 true))

(declare-fun b!889065 () Bool)

(declare-fun e!495567 () Bool)

(declare-fun tp_is_empty!17937 () Bool)

(assert (=> b!889065 (= e!495567 tp_is_empty!17937)))

(declare-fun e!495565 () Bool)

(declare-fun array_inv!19578 (array!51838) Bool)

(declare-fun array_inv!19579 (array!51840) Bool)

(assert (=> b!889066 (= e!495569 (and tp!54794 tp_is_empty!17937 (array_inv!19578 (_keys!9871 thiss!1181)) (array_inv!19579 (_values!5177 thiss!1181)) e!495565))))

(declare-fun b!889067 () Bool)

(declare-fun res!602675 () Bool)

(assert (=> b!889067 (=> (not res!602675) (not e!495566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889067 (= res!602675 (validMask!0 (mask!25627 thiss!1181)))))

(declare-fun mapNonEmpty!28457 () Bool)

(declare-fun mapRes!28457 () Bool)

(declare-fun tp!54793 () Bool)

(assert (=> mapNonEmpty!28457 (= mapRes!28457 (and tp!54793 e!495567))))

(declare-fun mapValue!28457 () ValueCell!8487)

(declare-fun mapKey!28457 () (_ BitVec 32))

(declare-fun mapRest!28457 () (Array (_ BitVec 32) ValueCell!8487))

(assert (=> mapNonEmpty!28457 (= (arr!24923 (_values!5177 thiss!1181)) (store mapRest!28457 mapKey!28457 mapValue!28457))))

(declare-fun b!889068 () Bool)

(declare-fun res!602674 () Bool)

(assert (=> b!889068 (=> (not res!602674) (not e!495566))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889068 (= res!602674 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28457 () Bool)

(assert (=> mapIsEmpty!28457 mapRes!28457))

(declare-fun b!889069 () Bool)

(declare-fun res!602676 () Bool)

(assert (=> b!889069 (=> (not res!602676) (not e!495566))))

(assert (=> b!889069 (= res!602676 (= (size!25367 (_keys!9871 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25627 thiss!1181))))))

(declare-fun b!889070 () Bool)

(declare-fun e!495564 () Bool)

(assert (=> b!889070 (= e!495565 (and e!495564 mapRes!28457))))

(declare-fun condMapEmpty!28457 () Bool)

(declare-fun mapDefault!28457 () ValueCell!8487)

(assert (=> b!889070 (= condMapEmpty!28457 (= (arr!24923 (_values!5177 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8487)) mapDefault!28457)))))

(declare-fun b!889071 () Bool)

(assert (=> b!889071 (= e!495564 tp_is_empty!17937)))

(declare-fun b!889072 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!889072 (= e!495566 (not (validKeyInArray!0 key!785)))))

(assert (= (and start!75656 res!602673) b!889068))

(assert (= (and b!889068 res!602674) b!889067))

(assert (= (and b!889067 res!602675) b!889069))

(assert (= (and b!889069 res!602676) b!889072))

(assert (= (and b!889070 condMapEmpty!28457) mapIsEmpty!28457))

(assert (= (and b!889070 (not condMapEmpty!28457)) mapNonEmpty!28457))

(get-info :version)

(assert (= (and mapNonEmpty!28457 ((_ is ValueCellFull!8487) mapValue!28457)) b!889065))

(assert (= (and b!889070 ((_ is ValueCellFull!8487) mapDefault!28457)) b!889071))

(assert (= b!889066 b!889070))

(assert (= start!75656 b!889066))

(declare-fun m!828183 () Bool)

(assert (=> b!889067 m!828183))

(declare-fun m!828185 () Bool)

(assert (=> b!889072 m!828185))

(declare-fun m!828187 () Bool)

(assert (=> start!75656 m!828187))

(declare-fun m!828189 () Bool)

(assert (=> b!889066 m!828189))

(declare-fun m!828191 () Bool)

(assert (=> b!889066 m!828191))

(declare-fun m!828193 () Bool)

(assert (=> mapNonEmpty!28457 m!828193))

(check-sat (not start!75656) (not b_next!15609) (not b!889072) (not mapNonEmpty!28457) tp_is_empty!17937 (not b!889066) b_and!25867 (not b!889067))
(check-sat b_and!25867 (not b_next!15609))
(get-model)

(declare-fun d!110077 () Bool)

(assert (=> d!110077 (= (validKeyInArray!0 key!785) (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!889072 d!110077))

(declare-fun d!110079 () Bool)

(declare-fun res!602695 () Bool)

(declare-fun e!495590 () Bool)

(assert (=> d!110079 (=> (not res!602695) (not e!495590))))

(declare-fun simpleValid!293 (LongMapFixedSize!3990) Bool)

(assert (=> d!110079 (= res!602695 (simpleValid!293 thiss!1181))))

(assert (=> d!110079 (= (valid!1543 thiss!1181) e!495590)))

(declare-fun b!889103 () Bool)

(declare-fun res!602696 () Bool)

(assert (=> b!889103 (=> (not res!602696) (not e!495590))))

(declare-fun arrayCountValidKeys!0 (array!51838 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!889103 (= res!602696 (= (arrayCountValidKeys!0 (_keys!9871 thiss!1181) #b00000000000000000000000000000000 (size!25367 (_keys!9871 thiss!1181))) (_size!2050 thiss!1181)))))

(declare-fun b!889104 () Bool)

(declare-fun res!602697 () Bool)

(assert (=> b!889104 (=> (not res!602697) (not e!495590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51838 (_ BitVec 32)) Bool)

(assert (=> b!889104 (= res!602697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9871 thiss!1181) (mask!25627 thiss!1181)))))

(declare-fun b!889105 () Bool)

(declare-datatypes ((List!17780 0))(
  ( (Nil!17777) (Cons!17776 (h!18907 (_ BitVec 64)) (t!25087 List!17780)) )
))
(declare-fun arrayNoDuplicates!0 (array!51838 (_ BitVec 32) List!17780) Bool)

(assert (=> b!889105 (= e!495590 (arrayNoDuplicates!0 (_keys!9871 thiss!1181) #b00000000000000000000000000000000 Nil!17777))))

(assert (= (and d!110079 res!602695) b!889103))

(assert (= (and b!889103 res!602696) b!889104))

(assert (= (and b!889104 res!602697) b!889105))

(declare-fun m!828207 () Bool)

(assert (=> d!110079 m!828207))

(declare-fun m!828209 () Bool)

(assert (=> b!889103 m!828209))

(declare-fun m!828211 () Bool)

(assert (=> b!889104 m!828211))

(declare-fun m!828213 () Bool)

(assert (=> b!889105 m!828213))

(assert (=> start!75656 d!110079))

(declare-fun d!110081 () Bool)

(assert (=> d!110081 (= (validMask!0 (mask!25627 thiss!1181)) (and (or (= (mask!25627 thiss!1181) #b00000000000000000000000000000111) (= (mask!25627 thiss!1181) #b00000000000000000000000000001111) (= (mask!25627 thiss!1181) #b00000000000000000000000000011111) (= (mask!25627 thiss!1181) #b00000000000000000000000000111111) (= (mask!25627 thiss!1181) #b00000000000000000000000001111111) (= (mask!25627 thiss!1181) #b00000000000000000000000011111111) (= (mask!25627 thiss!1181) #b00000000000000000000000111111111) (= (mask!25627 thiss!1181) #b00000000000000000000001111111111) (= (mask!25627 thiss!1181) #b00000000000000000000011111111111) (= (mask!25627 thiss!1181) #b00000000000000000000111111111111) (= (mask!25627 thiss!1181) #b00000000000000000001111111111111) (= (mask!25627 thiss!1181) #b00000000000000000011111111111111) (= (mask!25627 thiss!1181) #b00000000000000000111111111111111) (= (mask!25627 thiss!1181) #b00000000000000001111111111111111) (= (mask!25627 thiss!1181) #b00000000000000011111111111111111) (= (mask!25627 thiss!1181) #b00000000000000111111111111111111) (= (mask!25627 thiss!1181) #b00000000000001111111111111111111) (= (mask!25627 thiss!1181) #b00000000000011111111111111111111) (= (mask!25627 thiss!1181) #b00000000000111111111111111111111) (= (mask!25627 thiss!1181) #b00000000001111111111111111111111) (= (mask!25627 thiss!1181) #b00000000011111111111111111111111) (= (mask!25627 thiss!1181) #b00000000111111111111111111111111) (= (mask!25627 thiss!1181) #b00000001111111111111111111111111) (= (mask!25627 thiss!1181) #b00000011111111111111111111111111) (= (mask!25627 thiss!1181) #b00000111111111111111111111111111) (= (mask!25627 thiss!1181) #b00001111111111111111111111111111) (= (mask!25627 thiss!1181) #b00011111111111111111111111111111) (= (mask!25627 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25627 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!889067 d!110081))

(declare-fun d!110083 () Bool)

(assert (=> d!110083 (= (array_inv!19578 (_keys!9871 thiss!1181)) (bvsge (size!25367 (_keys!9871 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!889066 d!110083))

(declare-fun d!110085 () Bool)

(assert (=> d!110085 (= (array_inv!19579 (_values!5177 thiss!1181)) (bvsge (size!25368 (_values!5177 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!889066 d!110085))

(declare-fun mapIsEmpty!28463 () Bool)

(declare-fun mapRes!28463 () Bool)

(assert (=> mapIsEmpty!28463 mapRes!28463))

(declare-fun condMapEmpty!28463 () Bool)

(declare-fun mapDefault!28463 () ValueCell!8487)

(assert (=> mapNonEmpty!28457 (= condMapEmpty!28463 (= mapRest!28457 ((as const (Array (_ BitVec 32) ValueCell!8487)) mapDefault!28463)))))

(declare-fun e!495595 () Bool)

(assert (=> mapNonEmpty!28457 (= tp!54793 (and e!495595 mapRes!28463))))

(declare-fun b!889113 () Bool)

(assert (=> b!889113 (= e!495595 tp_is_empty!17937)))

(declare-fun b!889112 () Bool)

(declare-fun e!495596 () Bool)

(assert (=> b!889112 (= e!495596 tp_is_empty!17937)))

(declare-fun mapNonEmpty!28463 () Bool)

(declare-fun tp!54803 () Bool)

(assert (=> mapNonEmpty!28463 (= mapRes!28463 (and tp!54803 e!495596))))

(declare-fun mapValue!28463 () ValueCell!8487)

(declare-fun mapRest!28463 () (Array (_ BitVec 32) ValueCell!8487))

(declare-fun mapKey!28463 () (_ BitVec 32))

(assert (=> mapNonEmpty!28463 (= mapRest!28457 (store mapRest!28463 mapKey!28463 mapValue!28463))))

(assert (= (and mapNonEmpty!28457 condMapEmpty!28463) mapIsEmpty!28463))

(assert (= (and mapNonEmpty!28457 (not condMapEmpty!28463)) mapNonEmpty!28463))

(assert (= (and mapNonEmpty!28463 ((_ is ValueCellFull!8487) mapValue!28463)) b!889112))

(assert (= (and mapNonEmpty!28457 ((_ is ValueCellFull!8487) mapDefault!28463)) b!889113))

(declare-fun m!828215 () Bool)

(assert (=> mapNonEmpty!28463 m!828215))

(check-sat (not b!889104) (not b_next!15609) (not d!110079) (not b!889103) b_and!25867 tp_is_empty!17937 (not mapNonEmpty!28463) (not b!889105))
(check-sat b_and!25867 (not b_next!15609))
