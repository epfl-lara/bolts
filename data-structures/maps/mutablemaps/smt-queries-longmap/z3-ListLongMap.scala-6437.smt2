; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82454 () Bool)

(assert start!82454)

(declare-fun b!960868 () Bool)

(declare-fun e!541722 () Bool)

(declare-fun e!541721 () Bool)

(declare-fun mapRes!34081 () Bool)

(assert (=> b!960868 (= e!541722 (and e!541721 mapRes!34081))))

(declare-fun condMapEmpty!34081 () Bool)

(declare-datatypes ((V!33515 0))(
  ( (V!33516 (val!10750 Int)) )
))
(declare-datatypes ((ValueCell!10218 0))(
  ( (ValueCellFull!10218 (v!13307 V!33515)) (EmptyCell!10218) )
))
(declare-datatypes ((array!58893 0))(
  ( (array!58894 (arr!28315 (Array (_ BitVec 32) ValueCell!10218)) (size!28795 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58893)

(declare-fun mapDefault!34081 () ValueCell!10218)

(assert (=> b!960868 (= condMapEmpty!34081 (= (arr!28315 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10218)) mapDefault!34081)))))

(declare-fun b!960869 () Bool)

(declare-fun res!643264 () Bool)

(declare-fun e!541720 () Bool)

(assert (=> b!960869 (=> (not res!643264) (not e!541720))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!58895 0))(
  ( (array!58896 (arr!28316 (Array (_ BitVec 32) (_ BitVec 64))) (size!28796 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58895)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!960869 (= res!643264 (and (= (size!28795 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28796 _keys!1686) (size!28795 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!643266 () Bool)

(assert (=> start!82454 (=> (not res!643266) (not e!541720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82454 (= res!643266 (validMask!0 mask!2110))))

(assert (=> start!82454 e!541720))

(assert (=> start!82454 true))

(declare-fun array_inv!21873 (array!58893) Bool)

(assert (=> start!82454 (and (array_inv!21873 _values!1400) e!541722)))

(declare-fun array_inv!21874 (array!58895) Bool)

(assert (=> start!82454 (array_inv!21874 _keys!1686)))

(declare-fun mapNonEmpty!34081 () Bool)

(declare-fun tp!65011 () Bool)

(declare-fun e!541724 () Bool)

(assert (=> mapNonEmpty!34081 (= mapRes!34081 (and tp!65011 e!541724))))

(declare-fun mapRest!34081 () (Array (_ BitVec 32) ValueCell!10218))

(declare-fun mapKey!34081 () (_ BitVec 32))

(declare-fun mapValue!34081 () ValueCell!10218)

(assert (=> mapNonEmpty!34081 (= (arr!28315 _values!1400) (store mapRest!34081 mapKey!34081 mapValue!34081))))

(declare-fun b!960870 () Bool)

(declare-fun tp_is_empty!21399 () Bool)

(assert (=> b!960870 (= e!541721 tp_is_empty!21399)))

(declare-fun b!960871 () Bool)

(declare-fun res!643265 () Bool)

(assert (=> b!960871 (=> (not res!643265) (not e!541720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58895 (_ BitVec 32)) Bool)

(assert (=> b!960871 (= res!643265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!960872 () Bool)

(assert (=> b!960872 (= e!541720 (bvsgt #b00000000000000000000000000000000 (size!28796 _keys!1686)))))

(declare-fun b!960873 () Bool)

(assert (=> b!960873 (= e!541724 tp_is_empty!21399)))

(declare-fun mapIsEmpty!34081 () Bool)

(assert (=> mapIsEmpty!34081 mapRes!34081))

(assert (= (and start!82454 res!643266) b!960869))

(assert (= (and b!960869 res!643264) b!960871))

(assert (= (and b!960871 res!643265) b!960872))

(assert (= (and b!960868 condMapEmpty!34081) mapIsEmpty!34081))

(assert (= (and b!960868 (not condMapEmpty!34081)) mapNonEmpty!34081))

(get-info :version)

(assert (= (and mapNonEmpty!34081 ((_ is ValueCellFull!10218) mapValue!34081)) b!960873))

(assert (= (and b!960868 ((_ is ValueCellFull!10218) mapDefault!34081)) b!960870))

(assert (= start!82454 b!960868))

(declare-fun m!891081 () Bool)

(assert (=> start!82454 m!891081))

(declare-fun m!891083 () Bool)

(assert (=> start!82454 m!891083))

(declare-fun m!891085 () Bool)

(assert (=> start!82454 m!891085))

(declare-fun m!891087 () Bool)

(assert (=> mapNonEmpty!34081 m!891087))

(declare-fun m!891089 () Bool)

(assert (=> b!960871 m!891089))

(check-sat (not b!960871) (not start!82454) (not mapNonEmpty!34081) tp_is_empty!21399)
(check-sat)
(get-model)

(declare-fun b!960900 () Bool)

(declare-fun e!541746 () Bool)

(declare-fun e!541748 () Bool)

(assert (=> b!960900 (= e!541746 e!541748)))

(declare-fun lt!430652 () (_ BitVec 64))

(assert (=> b!960900 (= lt!430652 (select (arr!28316 _keys!1686) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32177 0))(
  ( (Unit!32178) )
))
(declare-fun lt!430650 () Unit!32177)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58895 (_ BitVec 64) (_ BitVec 32)) Unit!32177)

(assert (=> b!960900 (= lt!430650 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1686 lt!430652 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!960900 (arrayContainsKey!0 _keys!1686 lt!430652 #b00000000000000000000000000000000)))

(declare-fun lt!430651 () Unit!32177)

(assert (=> b!960900 (= lt!430651 lt!430650)))

(declare-fun res!643280 () Bool)

(declare-datatypes ((SeekEntryResult!9181 0))(
  ( (MissingZero!9181 (index!39094 (_ BitVec 32))) (Found!9181 (index!39095 (_ BitVec 32))) (Intermediate!9181 (undefined!9993 Bool) (index!39096 (_ BitVec 32)) (x!82888 (_ BitVec 32))) (Undefined!9181) (MissingVacant!9181 (index!39097 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58895 (_ BitVec 32)) SeekEntryResult!9181)

(assert (=> b!960900 (= res!643280 (= (seekEntryOrOpen!0 (select (arr!28316 _keys!1686) #b00000000000000000000000000000000) _keys!1686 mask!2110) (Found!9181 #b00000000000000000000000000000000)))))

(assert (=> b!960900 (=> (not res!643280) (not e!541748))))

(declare-fun b!960901 () Bool)

(declare-fun e!541747 () Bool)

(assert (=> b!960901 (= e!541747 e!541746)))

(declare-fun c!99826 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960901 (= c!99826 (validKeyInArray!0 (select (arr!28316 _keys!1686) #b00000000000000000000000000000000)))))

(declare-fun b!960902 () Bool)

(declare-fun call!41720 () Bool)

(assert (=> b!960902 (= e!541748 call!41720)))

(declare-fun d!115943 () Bool)

(declare-fun res!643281 () Bool)

(assert (=> d!115943 (=> res!643281 e!541747)))

(assert (=> d!115943 (= res!643281 (bvsge #b00000000000000000000000000000000 (size!28796 _keys!1686)))))

(assert (=> d!115943 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110) e!541747)))

(declare-fun b!960903 () Bool)

(assert (=> b!960903 (= e!541746 call!41720)))

(declare-fun bm!41717 () Bool)

(assert (=> bm!41717 (= call!41720 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1686 mask!2110))))

(assert (= (and d!115943 (not res!643281)) b!960901))

(assert (= (and b!960901 c!99826) b!960900))

(assert (= (and b!960901 (not c!99826)) b!960903))

(assert (= (and b!960900 res!643280) b!960902))

(assert (= (or b!960902 b!960903) bm!41717))

(declare-fun m!891101 () Bool)

(assert (=> b!960900 m!891101))

(declare-fun m!891103 () Bool)

(assert (=> b!960900 m!891103))

(declare-fun m!891105 () Bool)

(assert (=> b!960900 m!891105))

(assert (=> b!960900 m!891101))

(declare-fun m!891107 () Bool)

(assert (=> b!960900 m!891107))

(assert (=> b!960901 m!891101))

(assert (=> b!960901 m!891101))

(declare-fun m!891109 () Bool)

(assert (=> b!960901 m!891109))

(declare-fun m!891111 () Bool)

(assert (=> bm!41717 m!891111))

(assert (=> b!960871 d!115943))

(declare-fun d!115945 () Bool)

(assert (=> d!115945 (= (validMask!0 mask!2110) (and (or (= mask!2110 #b00000000000000000000000000000111) (= mask!2110 #b00000000000000000000000000001111) (= mask!2110 #b00000000000000000000000000011111) (= mask!2110 #b00000000000000000000000000111111) (= mask!2110 #b00000000000000000000000001111111) (= mask!2110 #b00000000000000000000000011111111) (= mask!2110 #b00000000000000000000000111111111) (= mask!2110 #b00000000000000000000001111111111) (= mask!2110 #b00000000000000000000011111111111) (= mask!2110 #b00000000000000000000111111111111) (= mask!2110 #b00000000000000000001111111111111) (= mask!2110 #b00000000000000000011111111111111) (= mask!2110 #b00000000000000000111111111111111) (= mask!2110 #b00000000000000001111111111111111) (= mask!2110 #b00000000000000011111111111111111) (= mask!2110 #b00000000000000111111111111111111) (= mask!2110 #b00000000000001111111111111111111) (= mask!2110 #b00000000000011111111111111111111) (= mask!2110 #b00000000000111111111111111111111) (= mask!2110 #b00000000001111111111111111111111) (= mask!2110 #b00000000011111111111111111111111) (= mask!2110 #b00000000111111111111111111111111) (= mask!2110 #b00000001111111111111111111111111) (= mask!2110 #b00000011111111111111111111111111) (= mask!2110 #b00000111111111111111111111111111) (= mask!2110 #b00001111111111111111111111111111) (= mask!2110 #b00011111111111111111111111111111) (= mask!2110 #b00111111111111111111111111111111)) (bvsle mask!2110 #b00111111111111111111111111111111)))))

(assert (=> start!82454 d!115945))

(declare-fun d!115947 () Bool)

(assert (=> d!115947 (= (array_inv!21873 _values!1400) (bvsge (size!28795 _values!1400) #b00000000000000000000000000000000))))

(assert (=> start!82454 d!115947))

(declare-fun d!115949 () Bool)

(assert (=> d!115949 (= (array_inv!21874 _keys!1686) (bvsge (size!28796 _keys!1686) #b00000000000000000000000000000000))))

(assert (=> start!82454 d!115949))

(declare-fun condMapEmpty!34087 () Bool)

(declare-fun mapDefault!34087 () ValueCell!10218)

(assert (=> mapNonEmpty!34081 (= condMapEmpty!34087 (= mapRest!34081 ((as const (Array (_ BitVec 32) ValueCell!10218)) mapDefault!34087)))))

(declare-fun e!541753 () Bool)

(declare-fun mapRes!34087 () Bool)

(assert (=> mapNonEmpty!34081 (= tp!65011 (and e!541753 mapRes!34087))))

(declare-fun b!960911 () Bool)

(assert (=> b!960911 (= e!541753 tp_is_empty!21399)))

(declare-fun mapNonEmpty!34087 () Bool)

(declare-fun tp!65017 () Bool)

(declare-fun e!541754 () Bool)

(assert (=> mapNonEmpty!34087 (= mapRes!34087 (and tp!65017 e!541754))))

(declare-fun mapKey!34087 () (_ BitVec 32))

(declare-fun mapRest!34087 () (Array (_ BitVec 32) ValueCell!10218))

(declare-fun mapValue!34087 () ValueCell!10218)

(assert (=> mapNonEmpty!34087 (= mapRest!34081 (store mapRest!34087 mapKey!34087 mapValue!34087))))

(declare-fun mapIsEmpty!34087 () Bool)

(assert (=> mapIsEmpty!34087 mapRes!34087))

(declare-fun b!960910 () Bool)

(assert (=> b!960910 (= e!541754 tp_is_empty!21399)))

(assert (= (and mapNonEmpty!34081 condMapEmpty!34087) mapIsEmpty!34087))

(assert (= (and mapNonEmpty!34081 (not condMapEmpty!34087)) mapNonEmpty!34087))

(assert (= (and mapNonEmpty!34087 ((_ is ValueCellFull!10218) mapValue!34087)) b!960910))

(assert (= (and mapNonEmpty!34081 ((_ is ValueCellFull!10218) mapDefault!34087)) b!960911))

(declare-fun m!891113 () Bool)

(assert (=> mapNonEmpty!34087 m!891113))

(check-sat (not mapNonEmpty!34087) tp_is_empty!21399 (not b!960901) (not bm!41717) (not b!960900))
(check-sat)
