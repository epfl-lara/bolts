; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82468 () Bool)

(assert start!82468)

(declare-fun mapNonEmpty!34093 () Bool)

(declare-fun mapRes!34093 () Bool)

(declare-fun tp!65023 () Bool)

(declare-fun e!541781 () Bool)

(assert (=> mapNonEmpty!34093 (= mapRes!34093 (and tp!65023 e!541781))))

(declare-datatypes ((V!33523 0))(
  ( (V!33524 (val!10753 Int)) )
))
(declare-datatypes ((ValueCell!10221 0))(
  ( (ValueCellFull!10221 (v!13310 V!33523)) (EmptyCell!10221) )
))
(declare-datatypes ((array!58907 0))(
  ( (array!58908 (arr!28321 (Array (_ BitVec 32) ValueCell!10221)) (size!28801 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58907)

(declare-fun mapValue!34093 () ValueCell!10221)

(declare-fun mapRest!34093 () (Array (_ BitVec 32) ValueCell!10221))

(declare-fun mapKey!34093 () (_ BitVec 32))

(assert (=> mapNonEmpty!34093 (= (arr!28321 _values!1400) (store mapRest!34093 mapKey!34093 mapValue!34093))))

(declare-fun b!960942 () Bool)

(declare-fun e!541782 () Bool)

(declare-fun e!541783 () Bool)

(assert (=> b!960942 (= e!541782 (and e!541783 mapRes!34093))))

(declare-fun condMapEmpty!34093 () Bool)

(declare-fun mapDefault!34093 () ValueCell!10221)

(assert (=> b!960942 (= condMapEmpty!34093 (= (arr!28321 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10221)) mapDefault!34093)))))

(declare-fun mapIsEmpty!34093 () Bool)

(assert (=> mapIsEmpty!34093 mapRes!34093))

(declare-fun res!643299 () Bool)

(declare-fun e!541780 () Bool)

(assert (=> start!82468 (=> (not res!643299) (not e!541780))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82468 (= res!643299 (validMask!0 mask!2110))))

(assert (=> start!82468 e!541780))

(assert (=> start!82468 true))

(declare-fun array_inv!21875 (array!58907) Bool)

(assert (=> start!82468 (and (array_inv!21875 _values!1400) e!541782)))

(declare-datatypes ((array!58909 0))(
  ( (array!58910 (arr!28322 (Array (_ BitVec 32) (_ BitVec 64))) (size!28802 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58909)

(declare-fun array_inv!21876 (array!58909) Bool)

(assert (=> start!82468 (array_inv!21876 _keys!1686)))

(declare-fun b!960943 () Bool)

(assert (=> b!960943 (= e!541780 (and (bvsle #b00000000000000000000000000000000 (size!28802 _keys!1686)) (bvsge (size!28802 _keys!1686) #b01111111111111111111111111111111)))))

(declare-fun b!960944 () Bool)

(declare-fun tp_is_empty!21405 () Bool)

(assert (=> b!960944 (= e!541781 tp_is_empty!21405)))

(declare-fun b!960945 () Bool)

(declare-fun res!643297 () Bool)

(assert (=> b!960945 (=> (not res!643297) (not e!541780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58909 (_ BitVec 32)) Bool)

(assert (=> b!960945 (= res!643297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!960946 () Bool)

(declare-fun res!643298 () Bool)

(assert (=> b!960946 (=> (not res!643298) (not e!541780))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!960946 (= res!643298 (and (= (size!28801 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28802 _keys!1686) (size!28801 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!960947 () Bool)

(assert (=> b!960947 (= e!541783 tp_is_empty!21405)))

(assert (= (and start!82468 res!643299) b!960946))

(assert (= (and b!960946 res!643298) b!960945))

(assert (= (and b!960945 res!643297) b!960943))

(assert (= (and b!960942 condMapEmpty!34093) mapIsEmpty!34093))

(assert (= (and b!960942 (not condMapEmpty!34093)) mapNonEmpty!34093))

(get-info :version)

(assert (= (and mapNonEmpty!34093 ((_ is ValueCellFull!10221) mapValue!34093)) b!960944))

(assert (= (and b!960942 ((_ is ValueCellFull!10221) mapDefault!34093)) b!960947))

(assert (= start!82468 b!960942))

(declare-fun m!891125 () Bool)

(assert (=> mapNonEmpty!34093 m!891125))

(declare-fun m!891127 () Bool)

(assert (=> start!82468 m!891127))

(declare-fun m!891129 () Bool)

(assert (=> start!82468 m!891129))

(declare-fun m!891131 () Bool)

(assert (=> start!82468 m!891131))

(declare-fun m!891133 () Bool)

(assert (=> b!960945 m!891133))

(check-sat (not b!960945) (not start!82468) (not mapNonEmpty!34093) tp_is_empty!21405)
(check-sat)
(get-model)

(declare-fun b!960974 () Bool)

(declare-fun e!541808 () Bool)

(declare-fun e!541806 () Bool)

(assert (=> b!960974 (= e!541808 e!541806)))

(declare-fun c!99829 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960974 (= c!99829 (validKeyInArray!0 (select (arr!28322 _keys!1686) #b00000000000000000000000000000000)))))

(declare-fun b!960975 () Bool)

(declare-fun e!541807 () Bool)

(declare-fun call!41723 () Bool)

(assert (=> b!960975 (= e!541807 call!41723)))

(declare-fun d!115953 () Bool)

(declare-fun res!643314 () Bool)

(assert (=> d!115953 (=> res!643314 e!541808)))

(assert (=> d!115953 (= res!643314 (bvsge #b00000000000000000000000000000000 (size!28802 _keys!1686)))))

(assert (=> d!115953 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110) e!541808)))

(declare-fun b!960976 () Bool)

(assert (=> b!960976 (= e!541806 call!41723)))

(declare-fun b!960977 () Bool)

(assert (=> b!960977 (= e!541806 e!541807)))

(declare-fun lt!430661 () (_ BitVec 64))

(assert (=> b!960977 (= lt!430661 (select (arr!28322 _keys!1686) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32179 0))(
  ( (Unit!32180) )
))
(declare-fun lt!430660 () Unit!32179)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58909 (_ BitVec 64) (_ BitVec 32)) Unit!32179)

(assert (=> b!960977 (= lt!430660 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1686 lt!430661 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!960977 (arrayContainsKey!0 _keys!1686 lt!430661 #b00000000000000000000000000000000)))

(declare-fun lt!430659 () Unit!32179)

(assert (=> b!960977 (= lt!430659 lt!430660)))

(declare-fun res!643313 () Bool)

(declare-datatypes ((SeekEntryResult!9182 0))(
  ( (MissingZero!9182 (index!39098 (_ BitVec 32))) (Found!9182 (index!39099 (_ BitVec 32))) (Intermediate!9182 (undefined!9994 Bool) (index!39100 (_ BitVec 32)) (x!82899 (_ BitVec 32))) (Undefined!9182) (MissingVacant!9182 (index!39101 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58909 (_ BitVec 32)) SeekEntryResult!9182)

(assert (=> b!960977 (= res!643313 (= (seekEntryOrOpen!0 (select (arr!28322 _keys!1686) #b00000000000000000000000000000000) _keys!1686 mask!2110) (Found!9182 #b00000000000000000000000000000000)))))

(assert (=> b!960977 (=> (not res!643313) (not e!541807))))

(declare-fun bm!41720 () Bool)

(assert (=> bm!41720 (= call!41723 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1686 mask!2110))))

(assert (= (and d!115953 (not res!643314)) b!960974))

(assert (= (and b!960974 c!99829) b!960977))

(assert (= (and b!960974 (not c!99829)) b!960976))

(assert (= (and b!960977 res!643313) b!960975))

(assert (= (or b!960975 b!960976) bm!41720))

(declare-fun m!891145 () Bool)

(assert (=> b!960974 m!891145))

(assert (=> b!960974 m!891145))

(declare-fun m!891147 () Bool)

(assert (=> b!960974 m!891147))

(assert (=> b!960977 m!891145))

(declare-fun m!891149 () Bool)

(assert (=> b!960977 m!891149))

(declare-fun m!891151 () Bool)

(assert (=> b!960977 m!891151))

(assert (=> b!960977 m!891145))

(declare-fun m!891153 () Bool)

(assert (=> b!960977 m!891153))

(declare-fun m!891155 () Bool)

(assert (=> bm!41720 m!891155))

(assert (=> b!960945 d!115953))

(declare-fun d!115955 () Bool)

(assert (=> d!115955 (= (validMask!0 mask!2110) (and (or (= mask!2110 #b00000000000000000000000000000111) (= mask!2110 #b00000000000000000000000000001111) (= mask!2110 #b00000000000000000000000000011111) (= mask!2110 #b00000000000000000000000000111111) (= mask!2110 #b00000000000000000000000001111111) (= mask!2110 #b00000000000000000000000011111111) (= mask!2110 #b00000000000000000000000111111111) (= mask!2110 #b00000000000000000000001111111111) (= mask!2110 #b00000000000000000000011111111111) (= mask!2110 #b00000000000000000000111111111111) (= mask!2110 #b00000000000000000001111111111111) (= mask!2110 #b00000000000000000011111111111111) (= mask!2110 #b00000000000000000111111111111111) (= mask!2110 #b00000000000000001111111111111111) (= mask!2110 #b00000000000000011111111111111111) (= mask!2110 #b00000000000000111111111111111111) (= mask!2110 #b00000000000001111111111111111111) (= mask!2110 #b00000000000011111111111111111111) (= mask!2110 #b00000000000111111111111111111111) (= mask!2110 #b00000000001111111111111111111111) (= mask!2110 #b00000000011111111111111111111111) (= mask!2110 #b00000000111111111111111111111111) (= mask!2110 #b00000001111111111111111111111111) (= mask!2110 #b00000011111111111111111111111111) (= mask!2110 #b00000111111111111111111111111111) (= mask!2110 #b00001111111111111111111111111111) (= mask!2110 #b00011111111111111111111111111111) (= mask!2110 #b00111111111111111111111111111111)) (bvsle mask!2110 #b00111111111111111111111111111111)))))

(assert (=> start!82468 d!115955))

(declare-fun d!115957 () Bool)

(assert (=> d!115957 (= (array_inv!21875 _values!1400) (bvsge (size!28801 _values!1400) #b00000000000000000000000000000000))))

(assert (=> start!82468 d!115957))

(declare-fun d!115959 () Bool)

(assert (=> d!115959 (= (array_inv!21876 _keys!1686) (bvsge (size!28802 _keys!1686) #b00000000000000000000000000000000))))

(assert (=> start!82468 d!115959))

(declare-fun mapNonEmpty!34099 () Bool)

(declare-fun mapRes!34099 () Bool)

(declare-fun tp!65029 () Bool)

(declare-fun e!541813 () Bool)

(assert (=> mapNonEmpty!34099 (= mapRes!34099 (and tp!65029 e!541813))))

(declare-fun mapRest!34099 () (Array (_ BitVec 32) ValueCell!10221))

(declare-fun mapValue!34099 () ValueCell!10221)

(declare-fun mapKey!34099 () (_ BitVec 32))

(assert (=> mapNonEmpty!34099 (= mapRest!34093 (store mapRest!34099 mapKey!34099 mapValue!34099))))

(declare-fun b!960985 () Bool)

(declare-fun e!541814 () Bool)

(assert (=> b!960985 (= e!541814 tp_is_empty!21405)))

(declare-fun mapIsEmpty!34099 () Bool)

(assert (=> mapIsEmpty!34099 mapRes!34099))

(declare-fun b!960984 () Bool)

(assert (=> b!960984 (= e!541813 tp_is_empty!21405)))

(declare-fun condMapEmpty!34099 () Bool)

(declare-fun mapDefault!34099 () ValueCell!10221)

(assert (=> mapNonEmpty!34093 (= condMapEmpty!34099 (= mapRest!34093 ((as const (Array (_ BitVec 32) ValueCell!10221)) mapDefault!34099)))))

(assert (=> mapNonEmpty!34093 (= tp!65023 (and e!541814 mapRes!34099))))

(assert (= (and mapNonEmpty!34093 condMapEmpty!34099) mapIsEmpty!34099))

(assert (= (and mapNonEmpty!34093 (not condMapEmpty!34099)) mapNonEmpty!34099))

(assert (= (and mapNonEmpty!34099 ((_ is ValueCellFull!10221) mapValue!34099)) b!960984))

(assert (= (and mapNonEmpty!34093 ((_ is ValueCellFull!10221) mapDefault!34099)) b!960985))

(declare-fun m!891157 () Bool)

(assert (=> mapNonEmpty!34099 m!891157))

(check-sat (not b!960977) tp_is_empty!21405 (not b!960974) (not mapNonEmpty!34099) (not bm!41720))
(check-sat)
