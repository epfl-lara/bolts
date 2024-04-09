; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76264 () Bool)

(assert start!76264)

(declare-fun b!894948 () Bool)

(declare-fun b_free!15897 () Bool)

(declare-fun b_next!15897 () Bool)

(assert (=> b!894948 (= b_free!15897 (not b_next!15897))))

(declare-fun tp!55694 () Bool)

(declare-fun b_and!26207 () Bool)

(assert (=> b!894948 (= tp!55694 b_and!26207)))

(declare-fun b!894944 () Bool)

(declare-fun e!500019 () Bool)

(declare-fun tp_is_empty!18225 () Bool)

(assert (=> b!894944 (= e!500019 tp_is_empty!18225)))

(declare-fun b!894946 () Bool)

(declare-fun e!500022 () Bool)

(declare-fun e!500020 () Bool)

(assert (=> b!894946 (= e!500022 e!500020)))

(declare-fun res!605595 () Bool)

(assert (=> b!894946 (=> (not res!605595) (not e!500020))))

(declare-datatypes ((array!52434 0))(
  ( (array!52435 (arr!25210 (Array (_ BitVec 32) (_ BitVec 64))) (size!25659 (_ BitVec 32))) )
))
(declare-datatypes ((V!29265 0))(
  ( (V!29266 (val!9163 Int)) )
))
(declare-datatypes ((ValueCell!8631 0))(
  ( (ValueCellFull!8631 (v!11650 V!29265)) (EmptyCell!8631) )
))
(declare-datatypes ((array!52436 0))(
  ( (array!52437 (arr!25211 (Array (_ BitVec 32) ValueCell!8631)) (size!25660 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4278 0))(
  ( (LongMapFixedSize!4279 (defaultEntry!5351 Int) (mask!25927 (_ BitVec 32)) (extraKeys!5047 (_ BitVec 32)) (zeroValue!5151 V!29265) (minValue!5151 V!29265) (_size!2194 (_ BitVec 32)) (_keys!10054 array!52434) (_values!5338 array!52436) (_vacant!2194 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4278)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894946 (= res!605595 (validMask!0 (mask!25927 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8868 0))(
  ( (MissingZero!8868 (index!37842 (_ BitVec 32))) (Found!8868 (index!37843 (_ BitVec 32))) (Intermediate!8868 (undefined!9680 Bool) (index!37844 (_ BitVec 32)) (x!76123 (_ BitVec 32))) (Undefined!8868) (MissingVacant!8868 (index!37845 (_ BitVec 32))) )
))
(declare-fun lt!404379 () SeekEntryResult!8868)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52434 (_ BitVec 32)) SeekEntryResult!8868)

(assert (=> b!894946 (= lt!404379 (seekEntry!0 key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)))))

(declare-fun b!894947 () Bool)

(declare-fun e!500024 () Bool)

(assert (=> b!894947 (= e!500024 tp_is_empty!18225)))

(declare-fun e!500025 () Bool)

(declare-fun e!500021 () Bool)

(declare-fun array_inv!19772 (array!52434) Bool)

(declare-fun array_inv!19773 (array!52436) Bool)

(assert (=> b!894948 (= e!500021 (and tp!55694 tp_is_empty!18225 (array_inv!19772 (_keys!10054 thiss!1181)) (array_inv!19773 (_values!5338 thiss!1181)) e!500025))))

(declare-fun mapNonEmpty!28925 () Bool)

(declare-fun mapRes!28925 () Bool)

(declare-fun tp!55693 () Bool)

(assert (=> mapNonEmpty!28925 (= mapRes!28925 (and tp!55693 e!500024))))

(declare-fun mapKey!28925 () (_ BitVec 32))

(declare-fun mapRest!28925 () (Array (_ BitVec 32) ValueCell!8631))

(declare-fun mapValue!28925 () ValueCell!8631)

(assert (=> mapNonEmpty!28925 (= (arr!25211 (_values!5338 thiss!1181)) (store mapRest!28925 mapKey!28925 mapValue!28925))))

(declare-fun b!894949 () Bool)

(assert (=> b!894949 (= e!500020 (and (= (size!25660 (_values!5338 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25927 thiss!1181))) (= (size!25659 (_keys!10054 thiss!1181)) (size!25660 (_values!5338 thiss!1181))) (bvsge (mask!25927 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5047 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!894950 () Bool)

(declare-fun res!605594 () Bool)

(assert (=> b!894950 (=> (not res!605594) (not e!500022))))

(assert (=> b!894950 (= res!605594 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28925 () Bool)

(assert (=> mapIsEmpty!28925 mapRes!28925))

(declare-fun b!894945 () Bool)

(assert (=> b!894945 (= e!500025 (and e!500019 mapRes!28925))))

(declare-fun condMapEmpty!28925 () Bool)

(declare-fun mapDefault!28925 () ValueCell!8631)

(assert (=> b!894945 (= condMapEmpty!28925 (= (arr!25211 (_values!5338 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8631)) mapDefault!28925)))))

(declare-fun res!605596 () Bool)

(assert (=> start!76264 (=> (not res!605596) (not e!500022))))

(declare-fun valid!1641 (LongMapFixedSize!4278) Bool)

(assert (=> start!76264 (= res!605596 (valid!1641 thiss!1181))))

(assert (=> start!76264 e!500022))

(assert (=> start!76264 e!500021))

(assert (=> start!76264 true))

(assert (= (and start!76264 res!605596) b!894950))

(assert (= (and b!894950 res!605594) b!894946))

(assert (= (and b!894946 res!605595) b!894949))

(assert (= (and b!894945 condMapEmpty!28925) mapIsEmpty!28925))

(assert (= (and b!894945 (not condMapEmpty!28925)) mapNonEmpty!28925))

(get-info :version)

(assert (= (and mapNonEmpty!28925 ((_ is ValueCellFull!8631) mapValue!28925)) b!894947))

(assert (= (and b!894945 ((_ is ValueCellFull!8631) mapDefault!28925)) b!894944))

(assert (= b!894948 b!894945))

(assert (= start!76264 b!894948))

(declare-fun m!832809 () Bool)

(assert (=> b!894946 m!832809))

(declare-fun m!832811 () Bool)

(assert (=> b!894946 m!832811))

(declare-fun m!832813 () Bool)

(assert (=> b!894948 m!832813))

(declare-fun m!832815 () Bool)

(assert (=> b!894948 m!832815))

(declare-fun m!832817 () Bool)

(assert (=> mapNonEmpty!28925 m!832817))

(declare-fun m!832819 () Bool)

(assert (=> start!76264 m!832819))

(check-sat (not b!894948) b_and!26207 tp_is_empty!18225 (not b_next!15897) (not mapNonEmpty!28925) (not b!894946) (not start!76264))
(check-sat b_and!26207 (not b_next!15897))
(get-model)

(declare-fun d!110653 () Bool)

(assert (=> d!110653 (= (array_inv!19772 (_keys!10054 thiss!1181)) (bvsge (size!25659 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894948 d!110653))

(declare-fun d!110655 () Bool)

(assert (=> d!110655 (= (array_inv!19773 (_values!5338 thiss!1181)) (bvsge (size!25660 (_values!5338 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894948 d!110655))

(declare-fun d!110657 () Bool)

(assert (=> d!110657 (= (validMask!0 (mask!25927 thiss!1181)) (and (or (= (mask!25927 thiss!1181) #b00000000000000000000000000000111) (= (mask!25927 thiss!1181) #b00000000000000000000000000001111) (= (mask!25927 thiss!1181) #b00000000000000000000000000011111) (= (mask!25927 thiss!1181) #b00000000000000000000000000111111) (= (mask!25927 thiss!1181) #b00000000000000000000000001111111) (= (mask!25927 thiss!1181) #b00000000000000000000000011111111) (= (mask!25927 thiss!1181) #b00000000000000000000000111111111) (= (mask!25927 thiss!1181) #b00000000000000000000001111111111) (= (mask!25927 thiss!1181) #b00000000000000000000011111111111) (= (mask!25927 thiss!1181) #b00000000000000000000111111111111) (= (mask!25927 thiss!1181) #b00000000000000000001111111111111) (= (mask!25927 thiss!1181) #b00000000000000000011111111111111) (= (mask!25927 thiss!1181) #b00000000000000000111111111111111) (= (mask!25927 thiss!1181) #b00000000000000001111111111111111) (= (mask!25927 thiss!1181) #b00000000000000011111111111111111) (= (mask!25927 thiss!1181) #b00000000000000111111111111111111) (= (mask!25927 thiss!1181) #b00000000000001111111111111111111) (= (mask!25927 thiss!1181) #b00000000000011111111111111111111) (= (mask!25927 thiss!1181) #b00000000000111111111111111111111) (= (mask!25927 thiss!1181) #b00000000001111111111111111111111) (= (mask!25927 thiss!1181) #b00000000011111111111111111111111) (= (mask!25927 thiss!1181) #b00000000111111111111111111111111) (= (mask!25927 thiss!1181) #b00000001111111111111111111111111) (= (mask!25927 thiss!1181) #b00000011111111111111111111111111) (= (mask!25927 thiss!1181) #b00000111111111111111111111111111) (= (mask!25927 thiss!1181) #b00001111111111111111111111111111) (= (mask!25927 thiss!1181) #b00011111111111111111111111111111) (= (mask!25927 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25927 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!894946 d!110657))

(declare-fun d!110659 () Bool)

(declare-fun lt!404394 () SeekEntryResult!8868)

(assert (=> d!110659 (and (or ((_ is MissingVacant!8868) lt!404394) (not ((_ is Found!8868) lt!404394)) (and (bvsge (index!37843 lt!404394) #b00000000000000000000000000000000) (bvslt (index!37843 lt!404394) (size!25659 (_keys!10054 thiss!1181))))) (not ((_ is MissingVacant!8868) lt!404394)) (or (not ((_ is Found!8868) lt!404394)) (= (select (arr!25210 (_keys!10054 thiss!1181)) (index!37843 lt!404394)) key!785)))))

(declare-fun e!500055 () SeekEntryResult!8868)

(assert (=> d!110659 (= lt!404394 e!500055)))

(declare-fun c!94422 () Bool)

(declare-fun lt!404391 () SeekEntryResult!8868)

(assert (=> d!110659 (= c!94422 (and ((_ is Intermediate!8868) lt!404391) (undefined!9680 lt!404391)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52434 (_ BitVec 32)) SeekEntryResult!8868)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110659 (= lt!404391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25927 thiss!1181)) key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)))))

(assert (=> d!110659 (validMask!0 (mask!25927 thiss!1181))))

(assert (=> d!110659 (= (seekEntry!0 key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)) lt!404394)))

(declare-fun b!894984 () Bool)

(declare-fun c!94421 () Bool)

(declare-fun lt!404392 () (_ BitVec 64))

(assert (=> b!894984 (= c!94421 (= lt!404392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!500054 () SeekEntryResult!8868)

(declare-fun e!500053 () SeekEntryResult!8868)

(assert (=> b!894984 (= e!500054 e!500053)))

(declare-fun b!894985 () Bool)

(assert (=> b!894985 (= e!500054 (Found!8868 (index!37844 lt!404391)))))

(declare-fun b!894986 () Bool)

(assert (=> b!894986 (= e!500055 e!500054)))

(assert (=> b!894986 (= lt!404392 (select (arr!25210 (_keys!10054 thiss!1181)) (index!37844 lt!404391)))))

(declare-fun c!94423 () Bool)

(assert (=> b!894986 (= c!94423 (= lt!404392 key!785))))

(declare-fun b!894987 () Bool)

(declare-fun lt!404393 () SeekEntryResult!8868)

(assert (=> b!894987 (= e!500053 (ite ((_ is MissingVacant!8868) lt!404393) (MissingZero!8868 (index!37845 lt!404393)) lt!404393))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52434 (_ BitVec 32)) SeekEntryResult!8868)

(assert (=> b!894987 (= lt!404393 (seekKeyOrZeroReturnVacant!0 (x!76123 lt!404391) (index!37844 lt!404391) (index!37844 lt!404391) key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)))))

(declare-fun b!894988 () Bool)

(assert (=> b!894988 (= e!500055 Undefined!8868)))

(declare-fun b!894989 () Bool)

(assert (=> b!894989 (= e!500053 (MissingZero!8868 (index!37844 lt!404391)))))

(assert (= (and d!110659 c!94422) b!894988))

(assert (= (and d!110659 (not c!94422)) b!894986))

(assert (= (and b!894986 c!94423) b!894985))

(assert (= (and b!894986 (not c!94423)) b!894984))

(assert (= (and b!894984 c!94421) b!894989))

(assert (= (and b!894984 (not c!94421)) b!894987))

(declare-fun m!832833 () Bool)

(assert (=> d!110659 m!832833))

(declare-fun m!832835 () Bool)

(assert (=> d!110659 m!832835))

(assert (=> d!110659 m!832835))

(declare-fun m!832837 () Bool)

(assert (=> d!110659 m!832837))

(assert (=> d!110659 m!832809))

(declare-fun m!832839 () Bool)

(assert (=> b!894986 m!832839))

(declare-fun m!832841 () Bool)

(assert (=> b!894987 m!832841))

(assert (=> b!894946 d!110659))

(declare-fun d!110661 () Bool)

(declare-fun res!605612 () Bool)

(declare-fun e!500058 () Bool)

(assert (=> d!110661 (=> (not res!605612) (not e!500058))))

(declare-fun simpleValid!303 (LongMapFixedSize!4278) Bool)

(assert (=> d!110661 (= res!605612 (simpleValid!303 thiss!1181))))

(assert (=> d!110661 (= (valid!1641 thiss!1181) e!500058)))

(declare-fun b!894996 () Bool)

(declare-fun res!605613 () Bool)

(assert (=> b!894996 (=> (not res!605613) (not e!500058))))

(declare-fun arrayCountValidKeys!0 (array!52434 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894996 (= res!605613 (= (arrayCountValidKeys!0 (_keys!10054 thiss!1181) #b00000000000000000000000000000000 (size!25659 (_keys!10054 thiss!1181))) (_size!2194 thiss!1181)))))

(declare-fun b!894997 () Bool)

(declare-fun res!605614 () Bool)

(assert (=> b!894997 (=> (not res!605614) (not e!500058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52434 (_ BitVec 32)) Bool)

(assert (=> b!894997 (= res!605614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)))))

(declare-fun b!894998 () Bool)

(declare-datatypes ((List!17891 0))(
  ( (Nil!17888) (Cons!17887 (h!19022 (_ BitVec 64)) (t!25238 List!17891)) )
))
(declare-fun arrayNoDuplicates!0 (array!52434 (_ BitVec 32) List!17891) Bool)

(assert (=> b!894998 (= e!500058 (arrayNoDuplicates!0 (_keys!10054 thiss!1181) #b00000000000000000000000000000000 Nil!17888))))

(assert (= (and d!110661 res!605612) b!894996))

(assert (= (and b!894996 res!605613) b!894997))

(assert (= (and b!894997 res!605614) b!894998))

(declare-fun m!832843 () Bool)

(assert (=> d!110661 m!832843))

(declare-fun m!832845 () Bool)

(assert (=> b!894996 m!832845))

(declare-fun m!832847 () Bool)

(assert (=> b!894997 m!832847))

(declare-fun m!832849 () Bool)

(assert (=> b!894998 m!832849))

(assert (=> start!76264 d!110661))

(declare-fun mapNonEmpty!28931 () Bool)

(declare-fun mapRes!28931 () Bool)

(declare-fun tp!55703 () Bool)

(declare-fun e!500064 () Bool)

(assert (=> mapNonEmpty!28931 (= mapRes!28931 (and tp!55703 e!500064))))

(declare-fun mapValue!28931 () ValueCell!8631)

(declare-fun mapKey!28931 () (_ BitVec 32))

(declare-fun mapRest!28931 () (Array (_ BitVec 32) ValueCell!8631))

(assert (=> mapNonEmpty!28931 (= mapRest!28925 (store mapRest!28931 mapKey!28931 mapValue!28931))))

(declare-fun b!895006 () Bool)

(declare-fun e!500063 () Bool)

(assert (=> b!895006 (= e!500063 tp_is_empty!18225)))

(declare-fun b!895005 () Bool)

(assert (=> b!895005 (= e!500064 tp_is_empty!18225)))

(declare-fun mapIsEmpty!28931 () Bool)

(assert (=> mapIsEmpty!28931 mapRes!28931))

(declare-fun condMapEmpty!28931 () Bool)

(declare-fun mapDefault!28931 () ValueCell!8631)

(assert (=> mapNonEmpty!28925 (= condMapEmpty!28931 (= mapRest!28925 ((as const (Array (_ BitVec 32) ValueCell!8631)) mapDefault!28931)))))

(assert (=> mapNonEmpty!28925 (= tp!55693 (and e!500063 mapRes!28931))))

(assert (= (and mapNonEmpty!28925 condMapEmpty!28931) mapIsEmpty!28931))

(assert (= (and mapNonEmpty!28925 (not condMapEmpty!28931)) mapNonEmpty!28931))

(assert (= (and mapNonEmpty!28931 ((_ is ValueCellFull!8631) mapValue!28931)) b!895005))

(assert (= (and mapNonEmpty!28925 ((_ is ValueCellFull!8631) mapDefault!28931)) b!895006))

(declare-fun m!832851 () Bool)

(assert (=> mapNonEmpty!28931 m!832851))

(check-sat (not b!894998) (not b!894987) (not d!110659) (not mapNonEmpty!28931) b_and!26207 tp_is_empty!18225 (not b_next!15897) (not b!894997) (not b!894996) (not d!110661))
(check-sat b_and!26207 (not b_next!15897))
(get-model)

(declare-fun b!895016 () Bool)

(declare-fun res!605625 () Bool)

(declare-fun e!500067 () Bool)

(assert (=> b!895016 (=> (not res!605625) (not e!500067))))

(declare-fun size!25663 (LongMapFixedSize!4278) (_ BitVec 32))

(assert (=> b!895016 (= res!605625 (bvsge (size!25663 thiss!1181) (_size!2194 thiss!1181)))))

(declare-fun d!110663 () Bool)

(declare-fun res!605626 () Bool)

(assert (=> d!110663 (=> (not res!605626) (not e!500067))))

(assert (=> d!110663 (= res!605626 (validMask!0 (mask!25927 thiss!1181)))))

(assert (=> d!110663 (= (simpleValid!303 thiss!1181) e!500067)))

(declare-fun b!895017 () Bool)

(declare-fun res!605624 () Bool)

(assert (=> b!895017 (=> (not res!605624) (not e!500067))))

(assert (=> b!895017 (= res!605624 (= (size!25663 thiss!1181) (bvadd (_size!2194 thiss!1181) (bvsdiv (bvadd (extraKeys!5047 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!895018 () Bool)

(assert (=> b!895018 (= e!500067 (and (bvsge (extraKeys!5047 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5047 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2194 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!895015 () Bool)

(declare-fun res!605623 () Bool)

(assert (=> b!895015 (=> (not res!605623) (not e!500067))))

(assert (=> b!895015 (= res!605623 (and (= (size!25660 (_values!5338 thiss!1181)) (bvadd (mask!25927 thiss!1181) #b00000000000000000000000000000001)) (= (size!25659 (_keys!10054 thiss!1181)) (size!25660 (_values!5338 thiss!1181))) (bvsge (_size!2194 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2194 thiss!1181) (bvadd (mask!25927 thiss!1181) #b00000000000000000000000000000001))))))

(assert (= (and d!110663 res!605626) b!895015))

(assert (= (and b!895015 res!605623) b!895016))

(assert (= (and b!895016 res!605625) b!895017))

(assert (= (and b!895017 res!605624) b!895018))

(declare-fun m!832853 () Bool)

(assert (=> b!895016 m!832853))

(assert (=> d!110663 m!832809))

(assert (=> b!895017 m!832853))

(assert (=> d!110661 d!110663))

(declare-fun b!895037 () Bool)

(declare-fun e!500080 () SeekEntryResult!8868)

(declare-fun e!500079 () SeekEntryResult!8868)

(assert (=> b!895037 (= e!500080 e!500079)))

(declare-fun c!94431 () Bool)

(declare-fun lt!404400 () (_ BitVec 64))

(assert (=> b!895037 (= c!94431 (or (= lt!404400 key!785) (= (bvadd lt!404400 lt!404400) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!895038 () Bool)

(assert (=> b!895038 (= e!500079 (Intermediate!8868 false (toIndex!0 key!785 (mask!25927 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!895039 () Bool)

(declare-fun lt!404399 () SeekEntryResult!8868)

(assert (=> b!895039 (and (bvsge (index!37844 lt!404399) #b00000000000000000000000000000000) (bvslt (index!37844 lt!404399) (size!25659 (_keys!10054 thiss!1181))))))

(declare-fun res!605634 () Bool)

(assert (=> b!895039 (= res!605634 (= (select (arr!25210 (_keys!10054 thiss!1181)) (index!37844 lt!404399)) key!785))))

(declare-fun e!500082 () Bool)

(assert (=> b!895039 (=> res!605634 e!500082)))

(declare-fun e!500081 () Bool)

(assert (=> b!895039 (= e!500081 e!500082)))

(declare-fun b!895040 () Bool)

(assert (=> b!895040 (and (bvsge (index!37844 lt!404399) #b00000000000000000000000000000000) (bvslt (index!37844 lt!404399) (size!25659 (_keys!10054 thiss!1181))))))

(assert (=> b!895040 (= e!500082 (= (select (arr!25210 (_keys!10054 thiss!1181)) (index!37844 lt!404399)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!895041 () Bool)

(assert (=> b!895041 (= e!500080 (Intermediate!8868 true (toIndex!0 key!785 (mask!25927 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!895042 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895042 (= e!500079 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!25927 thiss!1181)) #b00000000000000000000000000000000 (mask!25927 thiss!1181)) key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)))))

(declare-fun d!110665 () Bool)

(declare-fun e!500078 () Bool)

(assert (=> d!110665 e!500078))

(declare-fun c!94430 () Bool)

(assert (=> d!110665 (= c!94430 (and ((_ is Intermediate!8868) lt!404399) (undefined!9680 lt!404399)))))

(assert (=> d!110665 (= lt!404399 e!500080)))

(declare-fun c!94432 () Bool)

(assert (=> d!110665 (= c!94432 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!110665 (= lt!404400 (select (arr!25210 (_keys!10054 thiss!1181)) (toIndex!0 key!785 (mask!25927 thiss!1181))))))

(assert (=> d!110665 (validMask!0 (mask!25927 thiss!1181))))

(assert (=> d!110665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25927 thiss!1181)) key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)) lt!404399)))

(declare-fun b!895043 () Bool)

(assert (=> b!895043 (and (bvsge (index!37844 lt!404399) #b00000000000000000000000000000000) (bvslt (index!37844 lt!404399) (size!25659 (_keys!10054 thiss!1181))))))

(declare-fun res!605633 () Bool)

(assert (=> b!895043 (= res!605633 (= (select (arr!25210 (_keys!10054 thiss!1181)) (index!37844 lt!404399)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!895043 (=> res!605633 e!500082)))

(declare-fun b!895044 () Bool)

(assert (=> b!895044 (= e!500078 e!500081)))

(declare-fun res!605635 () Bool)

(assert (=> b!895044 (= res!605635 (and ((_ is Intermediate!8868) lt!404399) (not (undefined!9680 lt!404399)) (bvslt (x!76123 lt!404399) #b01111111111111111111111111111110) (bvsge (x!76123 lt!404399) #b00000000000000000000000000000000) (bvsge (x!76123 lt!404399) #b00000000000000000000000000000000)))))

(assert (=> b!895044 (=> (not res!605635) (not e!500081))))

(declare-fun b!895045 () Bool)

(assert (=> b!895045 (= e!500078 (bvsge (x!76123 lt!404399) #b01111111111111111111111111111110))))

(assert (= (and d!110665 c!94432) b!895041))

(assert (= (and d!110665 (not c!94432)) b!895037))

(assert (= (and b!895037 c!94431) b!895038))

(assert (= (and b!895037 (not c!94431)) b!895042))

(assert (= (and d!110665 c!94430) b!895045))

(assert (= (and d!110665 (not c!94430)) b!895044))

(assert (= (and b!895044 res!605635) b!895039))

(assert (= (and b!895039 (not res!605634)) b!895043))

(assert (= (and b!895043 (not res!605633)) b!895040))

(declare-fun m!832855 () Bool)

(assert (=> b!895043 m!832855))

(assert (=> b!895039 m!832855))

(assert (=> b!895042 m!832835))

(declare-fun m!832857 () Bool)

(assert (=> b!895042 m!832857))

(assert (=> b!895042 m!832857))

(declare-fun m!832859 () Bool)

(assert (=> b!895042 m!832859))

(assert (=> b!895040 m!832855))

(assert (=> d!110665 m!832835))

(declare-fun m!832861 () Bool)

(assert (=> d!110665 m!832861))

(assert (=> d!110665 m!832809))

(assert (=> d!110659 d!110665))

(declare-fun d!110667 () Bool)

(declare-fun lt!404406 () (_ BitVec 32))

(declare-fun lt!404405 () (_ BitVec 32))

(assert (=> d!110667 (= lt!404406 (bvmul (bvxor lt!404405 (bvlshr lt!404405 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110667 (= lt!404405 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110667 (and (bvsge (mask!25927 thiss!1181) #b00000000000000000000000000000000) (let ((res!605636 (let ((h!19023 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76140 (bvmul (bvxor h!19023 (bvlshr h!19023 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76140 (bvlshr x!76140 #b00000000000000000000000000001101)) (mask!25927 thiss!1181)))))) (and (bvslt res!605636 (bvadd (mask!25927 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!605636 #b00000000000000000000000000000000))))))

(assert (=> d!110667 (= (toIndex!0 key!785 (mask!25927 thiss!1181)) (bvand (bvxor lt!404406 (bvlshr lt!404406 #b00000000000000000000000000001101)) (mask!25927 thiss!1181)))))

(assert (=> d!110659 d!110667))

(assert (=> d!110659 d!110657))

(declare-fun b!895056 () Bool)

(declare-fun e!500091 () Bool)

(declare-fun call!39739 () Bool)

(assert (=> b!895056 (= e!500091 call!39739)))

(declare-fun bm!39736 () Bool)

(declare-fun c!94435 () Bool)

(assert (=> bm!39736 (= call!39739 (arrayNoDuplicates!0 (_keys!10054 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94435 (Cons!17887 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000) Nil!17888) Nil!17888)))))

(declare-fun b!895057 () Bool)

(declare-fun e!500092 () Bool)

(declare-fun contains!4384 (List!17891 (_ BitVec 64)) Bool)

(assert (=> b!895057 (= e!500092 (contains!4384 Nil!17888 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!895058 () Bool)

(assert (=> b!895058 (= e!500091 call!39739)))

(declare-fun d!110669 () Bool)

(declare-fun res!605644 () Bool)

(declare-fun e!500093 () Bool)

(assert (=> d!110669 (=> res!605644 e!500093)))

(assert (=> d!110669 (= res!605644 (bvsge #b00000000000000000000000000000000 (size!25659 (_keys!10054 thiss!1181))))))

(assert (=> d!110669 (= (arrayNoDuplicates!0 (_keys!10054 thiss!1181) #b00000000000000000000000000000000 Nil!17888) e!500093)))

(declare-fun b!895059 () Bool)

(declare-fun e!500094 () Bool)

(assert (=> b!895059 (= e!500093 e!500094)))

(declare-fun res!605645 () Bool)

(assert (=> b!895059 (=> (not res!605645) (not e!500094))))

(assert (=> b!895059 (= res!605645 (not e!500092))))

(declare-fun res!605643 () Bool)

(assert (=> b!895059 (=> (not res!605643) (not e!500092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!895059 (= res!605643 (validKeyInArray!0 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!895060 () Bool)

(assert (=> b!895060 (= e!500094 e!500091)))

(assert (=> b!895060 (= c!94435 (validKeyInArray!0 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110669 (not res!605644)) b!895059))

(assert (= (and b!895059 res!605643) b!895057))

(assert (= (and b!895059 res!605645) b!895060))

(assert (= (and b!895060 c!94435) b!895056))

(assert (= (and b!895060 (not c!94435)) b!895058))

(assert (= (or b!895056 b!895058) bm!39736))

(declare-fun m!832863 () Bool)

(assert (=> bm!39736 m!832863))

(declare-fun m!832865 () Bool)

(assert (=> bm!39736 m!832865))

(assert (=> b!895057 m!832863))

(assert (=> b!895057 m!832863))

(declare-fun m!832867 () Bool)

(assert (=> b!895057 m!832867))

(assert (=> b!895059 m!832863))

(assert (=> b!895059 m!832863))

(declare-fun m!832869 () Bool)

(assert (=> b!895059 m!832869))

(assert (=> b!895060 m!832863))

(assert (=> b!895060 m!832863))

(assert (=> b!895060 m!832869))

(assert (=> b!894998 d!110669))

(declare-fun b!895073 () Bool)

(declare-fun e!500102 () SeekEntryResult!8868)

(assert (=> b!895073 (= e!500102 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76123 lt!404391) #b00000000000000000000000000000001) (nextIndex!0 (index!37844 lt!404391) (x!76123 lt!404391) (mask!25927 thiss!1181)) (index!37844 lt!404391) key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)))))

(declare-fun lt!404412 () SeekEntryResult!8868)

(declare-fun d!110671 () Bool)

(assert (=> d!110671 (and (or ((_ is Undefined!8868) lt!404412) (not ((_ is Found!8868) lt!404412)) (and (bvsge (index!37843 lt!404412) #b00000000000000000000000000000000) (bvslt (index!37843 lt!404412) (size!25659 (_keys!10054 thiss!1181))))) (or ((_ is Undefined!8868) lt!404412) ((_ is Found!8868) lt!404412) (not ((_ is MissingVacant!8868) lt!404412)) (not (= (index!37845 lt!404412) (index!37844 lt!404391))) (and (bvsge (index!37845 lt!404412) #b00000000000000000000000000000000) (bvslt (index!37845 lt!404412) (size!25659 (_keys!10054 thiss!1181))))) (or ((_ is Undefined!8868) lt!404412) (ite ((_ is Found!8868) lt!404412) (= (select (arr!25210 (_keys!10054 thiss!1181)) (index!37843 lt!404412)) key!785) (and ((_ is MissingVacant!8868) lt!404412) (= (index!37845 lt!404412) (index!37844 lt!404391)) (= (select (arr!25210 (_keys!10054 thiss!1181)) (index!37845 lt!404412)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!500101 () SeekEntryResult!8868)

(assert (=> d!110671 (= lt!404412 e!500101)))

(declare-fun c!94442 () Bool)

(assert (=> d!110671 (= c!94442 (bvsge (x!76123 lt!404391) #b01111111111111111111111111111110))))

(declare-fun lt!404411 () (_ BitVec 64))

(assert (=> d!110671 (= lt!404411 (select (arr!25210 (_keys!10054 thiss!1181)) (index!37844 lt!404391)))))

(assert (=> d!110671 (validMask!0 (mask!25927 thiss!1181))))

(assert (=> d!110671 (= (seekKeyOrZeroReturnVacant!0 (x!76123 lt!404391) (index!37844 lt!404391) (index!37844 lt!404391) key!785 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)) lt!404412)))

(declare-fun b!895074 () Bool)

(declare-fun e!500103 () SeekEntryResult!8868)

(assert (=> b!895074 (= e!500101 e!500103)))

(declare-fun c!94443 () Bool)

(assert (=> b!895074 (= c!94443 (= lt!404411 key!785))))

(declare-fun b!895075 () Bool)

(assert (=> b!895075 (= e!500101 Undefined!8868)))

(declare-fun b!895076 () Bool)

(declare-fun c!94444 () Bool)

(assert (=> b!895076 (= c!94444 (= lt!404411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!895076 (= e!500103 e!500102)))

(declare-fun b!895077 () Bool)

(assert (=> b!895077 (= e!500102 (MissingVacant!8868 (index!37844 lt!404391)))))

(declare-fun b!895078 () Bool)

(assert (=> b!895078 (= e!500103 (Found!8868 (index!37844 lt!404391)))))

(assert (= (and d!110671 c!94442) b!895075))

(assert (= (and d!110671 (not c!94442)) b!895074))

(assert (= (and b!895074 c!94443) b!895078))

(assert (= (and b!895074 (not c!94443)) b!895076))

(assert (= (and b!895076 c!94444) b!895077))

(assert (= (and b!895076 (not c!94444)) b!895073))

(declare-fun m!832871 () Bool)

(assert (=> b!895073 m!832871))

(assert (=> b!895073 m!832871))

(declare-fun m!832873 () Bool)

(assert (=> b!895073 m!832873))

(declare-fun m!832875 () Bool)

(assert (=> d!110671 m!832875))

(declare-fun m!832877 () Bool)

(assert (=> d!110671 m!832877))

(assert (=> d!110671 m!832839))

(assert (=> d!110671 m!832809))

(assert (=> b!894987 d!110671))

(declare-fun b!895087 () Bool)

(declare-fun e!500112 () Bool)

(declare-fun e!500110 () Bool)

(assert (=> b!895087 (= e!500112 e!500110)))

(declare-fun c!94447 () Bool)

(assert (=> b!895087 (= c!94447 (validKeyInArray!0 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!895088 () Bool)

(declare-fun e!500111 () Bool)

(declare-fun call!39742 () Bool)

(assert (=> b!895088 (= e!500111 call!39742)))

(declare-fun b!895089 () Bool)

(assert (=> b!895089 (= e!500110 call!39742)))

(declare-fun bm!39739 () Bool)

(assert (=> bm!39739 (= call!39742 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10054 thiss!1181) (mask!25927 thiss!1181)))))

(declare-fun b!895090 () Bool)

(assert (=> b!895090 (= e!500110 e!500111)))

(declare-fun lt!404420 () (_ BitVec 64))

(assert (=> b!895090 (= lt!404420 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30429 0))(
  ( (Unit!30430) )
))
(declare-fun lt!404419 () Unit!30429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52434 (_ BitVec 64) (_ BitVec 32)) Unit!30429)

(assert (=> b!895090 (= lt!404419 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10054 thiss!1181) lt!404420 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!895090 (arrayContainsKey!0 (_keys!10054 thiss!1181) lt!404420 #b00000000000000000000000000000000)))

(declare-fun lt!404421 () Unit!30429)

(assert (=> b!895090 (= lt!404421 lt!404419)))

(declare-fun res!605651 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52434 (_ BitVec 32)) SeekEntryResult!8868)

(assert (=> b!895090 (= res!605651 (= (seekEntryOrOpen!0 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000) (_keys!10054 thiss!1181) (mask!25927 thiss!1181)) (Found!8868 #b00000000000000000000000000000000)))))

(assert (=> b!895090 (=> (not res!605651) (not e!500111))))

(declare-fun d!110673 () Bool)

(declare-fun res!605650 () Bool)

(assert (=> d!110673 (=> res!605650 e!500112)))

(assert (=> d!110673 (= res!605650 (bvsge #b00000000000000000000000000000000 (size!25659 (_keys!10054 thiss!1181))))))

(assert (=> d!110673 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10054 thiss!1181) (mask!25927 thiss!1181)) e!500112)))

(assert (= (and d!110673 (not res!605650)) b!895087))

(assert (= (and b!895087 c!94447) b!895090))

(assert (= (and b!895087 (not c!94447)) b!895089))

(assert (= (and b!895090 res!605651) b!895088))

(assert (= (or b!895088 b!895089) bm!39739))

(assert (=> b!895087 m!832863))

(assert (=> b!895087 m!832863))

(assert (=> b!895087 m!832869))

(declare-fun m!832879 () Bool)

(assert (=> bm!39739 m!832879))

(assert (=> b!895090 m!832863))

(declare-fun m!832881 () Bool)

(assert (=> b!895090 m!832881))

(declare-fun m!832883 () Bool)

(assert (=> b!895090 m!832883))

(assert (=> b!895090 m!832863))

(declare-fun m!832885 () Bool)

(assert (=> b!895090 m!832885))

(assert (=> b!894997 d!110673))

(declare-fun b!895099 () Bool)

(declare-fun e!500117 () (_ BitVec 32))

(assert (=> b!895099 (= e!500117 #b00000000000000000000000000000000)))

(declare-fun b!895100 () Bool)

(declare-fun e!500118 () (_ BitVec 32))

(declare-fun call!39745 () (_ BitVec 32))

(assert (=> b!895100 (= e!500118 (bvadd #b00000000000000000000000000000001 call!39745))))

(declare-fun b!895101 () Bool)

(assert (=> b!895101 (= e!500118 call!39745)))

(declare-fun bm!39742 () Bool)

(assert (=> bm!39742 (= call!39745 (arrayCountValidKeys!0 (_keys!10054 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25659 (_keys!10054 thiss!1181))))))

(declare-fun d!110675 () Bool)

(declare-fun lt!404424 () (_ BitVec 32))

(assert (=> d!110675 (and (bvsge lt!404424 #b00000000000000000000000000000000) (bvsle lt!404424 (bvsub (size!25659 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110675 (= lt!404424 e!500117)))

(declare-fun c!94453 () Bool)

(assert (=> d!110675 (= c!94453 (bvsge #b00000000000000000000000000000000 (size!25659 (_keys!10054 thiss!1181))))))

(assert (=> d!110675 (and (bvsle #b00000000000000000000000000000000 (size!25659 (_keys!10054 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25659 (_keys!10054 thiss!1181)) (size!25659 (_keys!10054 thiss!1181))))))

(assert (=> d!110675 (= (arrayCountValidKeys!0 (_keys!10054 thiss!1181) #b00000000000000000000000000000000 (size!25659 (_keys!10054 thiss!1181))) lt!404424)))

(declare-fun b!895102 () Bool)

(assert (=> b!895102 (= e!500117 e!500118)))

(declare-fun c!94452 () Bool)

(assert (=> b!895102 (= c!94452 (validKeyInArray!0 (select (arr!25210 (_keys!10054 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110675 c!94453) b!895099))

(assert (= (and d!110675 (not c!94453)) b!895102))

(assert (= (and b!895102 c!94452) b!895100))

(assert (= (and b!895102 (not c!94452)) b!895101))

(assert (= (or b!895100 b!895101) bm!39742))

(declare-fun m!832887 () Bool)

(assert (=> bm!39742 m!832887))

(assert (=> b!895102 m!832863))

(assert (=> b!895102 m!832863))

(assert (=> b!895102 m!832869))

(assert (=> b!894996 d!110675))

(declare-fun mapNonEmpty!28932 () Bool)

(declare-fun mapRes!28932 () Bool)

(declare-fun tp!55704 () Bool)

(declare-fun e!500120 () Bool)

(assert (=> mapNonEmpty!28932 (= mapRes!28932 (and tp!55704 e!500120))))

(declare-fun mapKey!28932 () (_ BitVec 32))

(declare-fun mapRest!28932 () (Array (_ BitVec 32) ValueCell!8631))

(declare-fun mapValue!28932 () ValueCell!8631)

(assert (=> mapNonEmpty!28932 (= mapRest!28931 (store mapRest!28932 mapKey!28932 mapValue!28932))))

(declare-fun b!895104 () Bool)

(declare-fun e!500119 () Bool)

(assert (=> b!895104 (= e!500119 tp_is_empty!18225)))

(declare-fun b!895103 () Bool)

(assert (=> b!895103 (= e!500120 tp_is_empty!18225)))

(declare-fun mapIsEmpty!28932 () Bool)

(assert (=> mapIsEmpty!28932 mapRes!28932))

(declare-fun condMapEmpty!28932 () Bool)

(declare-fun mapDefault!28932 () ValueCell!8631)

(assert (=> mapNonEmpty!28931 (= condMapEmpty!28932 (= mapRest!28931 ((as const (Array (_ BitVec 32) ValueCell!8631)) mapDefault!28932)))))

(assert (=> mapNonEmpty!28931 (= tp!55703 (and e!500119 mapRes!28932))))

(assert (= (and mapNonEmpty!28931 condMapEmpty!28932) mapIsEmpty!28932))

(assert (= (and mapNonEmpty!28931 (not condMapEmpty!28932)) mapNonEmpty!28932))

(assert (= (and mapNonEmpty!28932 ((_ is ValueCellFull!8631) mapValue!28932)) b!895103))

(assert (= (and mapNonEmpty!28931 ((_ is ValueCellFull!8631) mapDefault!28932)) b!895104))

(declare-fun m!832889 () Bool)

(assert (=> mapNonEmpty!28932 m!832889))

(check-sat (not d!110663) (not mapNonEmpty!28932) (not d!110665) (not b!895073) (not b!895090) (not bm!39742) (not bm!39739) (not b!895060) (not b!895102) b_and!26207 (not b!895087) (not b!895017) (not b!895059) (not d!110671) (not bm!39736) (not b!895042) (not b!895016) tp_is_empty!18225 (not b!895057) (not b_next!15897))
(check-sat b_and!26207 (not b_next!15897))
