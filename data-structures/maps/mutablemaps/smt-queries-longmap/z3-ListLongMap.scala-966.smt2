; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20966 () Bool)

(assert start!20966)

(declare-fun b_free!5547 () Bool)

(declare-fun b_next!5547 () Bool)

(assert (=> start!20966 (= b_free!5547 (not b_next!5547))))

(declare-fun tp!19691 () Bool)

(declare-fun b_and!12347 () Bool)

(assert (=> start!20966 (= tp!19691 b_and!12347)))

(declare-fun b!210470 () Bool)

(declare-fun e!137062 () Bool)

(declare-fun tp_is_empty!5409 () Bool)

(assert (=> b!210470 (= e!137062 tp_is_empty!5409)))

(declare-fun b!210471 () Bool)

(declare-fun res!102713 () Bool)

(declare-fun e!137060 () Bool)

(assert (=> b!210471 (=> (not res!102713) (not e!137060))))

(declare-datatypes ((array!10018 0))(
  ( (array!10019 (arr!4756 (Array (_ BitVec 32) (_ BitVec 64))) (size!5081 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10018)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6859 0))(
  ( (V!6860 (val!2749 Int)) )
))
(declare-datatypes ((ValueCell!2361 0))(
  ( (ValueCellFull!2361 (v!4727 V!6859)) (EmptyCell!2361) )
))
(declare-datatypes ((array!10020 0))(
  ( (array!10021 (arr!4757 (Array (_ BitVec 32) ValueCell!2361)) (size!5082 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10020)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!210471 (= res!102713 (and (= (size!5082 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5081 _keys!825) (size!5082 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210472 () Bool)

(declare-fun e!137063 () Bool)

(assert (=> b!210472 (= e!137063 tp_is_empty!5409)))

(declare-fun b!210473 () Bool)

(declare-fun res!102715 () Bool)

(assert (=> b!210473 (=> (not res!102715) (not e!137060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10018 (_ BitVec 32)) Bool)

(assert (=> b!210473 (= res!102715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210474 () Bool)

(declare-fun e!137064 () Bool)

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!210474 (= e!137064 (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4152 0))(
  ( (tuple2!4153 (_1!2086 (_ BitVec 64)) (_2!2086 V!6859)) )
))
(declare-datatypes ((List!3069 0))(
  ( (Nil!3066) (Cons!3065 (h!3707 tuple2!4152) (t!8014 List!3069)) )
))
(declare-datatypes ((ListLongMap!3079 0))(
  ( (ListLongMap!3080 (toList!1555 List!3069)) )
))
(declare-fun lt!107898 () ListLongMap!3079)

(declare-fun lt!107889 () ListLongMap!3079)

(declare-fun lt!107893 () tuple2!4152)

(declare-fun +!548 (ListLongMap!3079 tuple2!4152) ListLongMap!3079)

(assert (=> b!210474 (= lt!107898 (+!548 lt!107889 lt!107893))))

(declare-datatypes ((Unit!6391 0))(
  ( (Unit!6392) )
))
(declare-fun lt!107887 () Unit!6391)

(declare-fun zeroValue!615 () V!6859)

(declare-fun v!520 () V!6859)

(declare-fun lt!107888 () ListLongMap!3079)

(declare-fun addCommutativeForDiffKeys!193 (ListLongMap!3079 (_ BitVec 64) V!6859 (_ BitVec 64) V!6859) Unit!6391)

(assert (=> b!210474 (= lt!107887 (addCommutativeForDiffKeys!193 lt!107888 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!107891 () ListLongMap!3079)

(declare-fun lt!107899 () tuple2!4152)

(assert (=> b!210474 (= lt!107891 (+!548 lt!107898 lt!107899))))

(declare-fun lt!107895 () ListLongMap!3079)

(declare-fun lt!107890 () tuple2!4152)

(assert (=> b!210474 (= lt!107898 (+!548 lt!107895 lt!107890))))

(declare-fun lt!107892 () ListLongMap!3079)

(assert (=> b!210474 (= lt!107892 (+!548 lt!107889 lt!107899))))

(assert (=> b!210474 (= lt!107889 (+!548 lt!107888 lt!107890))))

(declare-fun lt!107896 () ListLongMap!3079)

(assert (=> b!210474 (= lt!107891 (+!548 (+!548 lt!107896 lt!107890) lt!107899))))

(declare-fun minValue!615 () V!6859)

(assert (=> b!210474 (= lt!107899 (tuple2!4153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!210474 (= lt!107890 (tuple2!4153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!210475 () Bool)

(declare-fun res!102717 () Bool)

(assert (=> b!210475 (=> (not res!102717) (not e!137060))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210475 (= res!102717 (= (select (arr!4756 _keys!825) i!601) k0!843))))

(declare-fun b!210476 () Bool)

(assert (=> b!210476 (= e!137060 (not e!137064))))

(declare-fun res!102718 () Bool)

(assert (=> b!210476 (=> res!102718 e!137064)))

(assert (=> b!210476 (= res!102718 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1086 (array!10018 array!10020 (_ BitVec 32) (_ BitVec 32) V!6859 V!6859 (_ BitVec 32) Int) ListLongMap!3079)

(assert (=> b!210476 (= lt!107892 (getCurrentListMap!1086 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107897 () array!10020)

(assert (=> b!210476 (= lt!107891 (getCurrentListMap!1086 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210476 (and (= lt!107896 lt!107895) (= lt!107895 lt!107896))))

(assert (=> b!210476 (= lt!107895 (+!548 lt!107888 lt!107893))))

(assert (=> b!210476 (= lt!107893 (tuple2!4153 k0!843 v!520))))

(declare-fun lt!107894 () Unit!6391)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!203 (array!10018 array!10020 (_ BitVec 32) (_ BitVec 32) V!6859 V!6859 (_ BitVec 32) (_ BitVec 64) V!6859 (_ BitVec 32) Int) Unit!6391)

(assert (=> b!210476 (= lt!107894 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!203 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!485 (array!10018 array!10020 (_ BitVec 32) (_ BitVec 32) V!6859 V!6859 (_ BitVec 32) Int) ListLongMap!3079)

(assert (=> b!210476 (= lt!107896 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210476 (= lt!107897 (array!10021 (store (arr!4757 _values!649) i!601 (ValueCellFull!2361 v!520)) (size!5082 _values!649)))))

(assert (=> b!210476 (= lt!107888 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9191 () Bool)

(declare-fun mapRes!9191 () Bool)

(assert (=> mapIsEmpty!9191 mapRes!9191))

(declare-fun b!210477 () Bool)

(declare-fun res!102716 () Bool)

(assert (=> b!210477 (=> (not res!102716) (not e!137060))))

(assert (=> b!210477 (= res!102716 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5081 _keys!825))))))

(declare-fun b!210478 () Bool)

(declare-fun res!102711 () Bool)

(assert (=> b!210478 (=> (not res!102711) (not e!137060))))

(declare-datatypes ((List!3070 0))(
  ( (Nil!3067) (Cons!3066 (h!3708 (_ BitVec 64)) (t!8015 List!3070)) )
))
(declare-fun arrayNoDuplicates!0 (array!10018 (_ BitVec 32) List!3070) Bool)

(assert (=> b!210478 (= res!102711 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3067))))

(declare-fun res!102712 () Bool)

(assert (=> start!20966 (=> (not res!102712) (not e!137060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20966 (= res!102712 (validMask!0 mask!1149))))

(assert (=> start!20966 e!137060))

(declare-fun e!137065 () Bool)

(declare-fun array_inv!3139 (array!10020) Bool)

(assert (=> start!20966 (and (array_inv!3139 _values!649) e!137065)))

(assert (=> start!20966 true))

(assert (=> start!20966 tp_is_empty!5409))

(declare-fun array_inv!3140 (array!10018) Bool)

(assert (=> start!20966 (array_inv!3140 _keys!825)))

(assert (=> start!20966 tp!19691))

(declare-fun b!210479 () Bool)

(assert (=> b!210479 (= e!137065 (and e!137062 mapRes!9191))))

(declare-fun condMapEmpty!9191 () Bool)

(declare-fun mapDefault!9191 () ValueCell!2361)

(assert (=> b!210479 (= condMapEmpty!9191 (= (arr!4757 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2361)) mapDefault!9191)))))

(declare-fun mapNonEmpty!9191 () Bool)

(declare-fun tp!19690 () Bool)

(assert (=> mapNonEmpty!9191 (= mapRes!9191 (and tp!19690 e!137063))))

(declare-fun mapRest!9191 () (Array (_ BitVec 32) ValueCell!2361))

(declare-fun mapKey!9191 () (_ BitVec 32))

(declare-fun mapValue!9191 () ValueCell!2361)

(assert (=> mapNonEmpty!9191 (= (arr!4757 _values!649) (store mapRest!9191 mapKey!9191 mapValue!9191))))

(declare-fun b!210480 () Bool)

(declare-fun res!102714 () Bool)

(assert (=> b!210480 (=> (not res!102714) (not e!137060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210480 (= res!102714 (validKeyInArray!0 k0!843))))

(assert (= (and start!20966 res!102712) b!210471))

(assert (= (and b!210471 res!102713) b!210473))

(assert (= (and b!210473 res!102715) b!210478))

(assert (= (and b!210478 res!102711) b!210477))

(assert (= (and b!210477 res!102716) b!210480))

(assert (= (and b!210480 res!102714) b!210475))

(assert (= (and b!210475 res!102717) b!210476))

(assert (= (and b!210476 (not res!102718)) b!210474))

(assert (= (and b!210479 condMapEmpty!9191) mapIsEmpty!9191))

(assert (= (and b!210479 (not condMapEmpty!9191)) mapNonEmpty!9191))

(get-info :version)

(assert (= (and mapNonEmpty!9191 ((_ is ValueCellFull!2361) mapValue!9191)) b!210472))

(assert (= (and b!210479 ((_ is ValueCellFull!2361) mapDefault!9191)) b!210470))

(assert (= start!20966 b!210479))

(declare-fun m!238027 () Bool)

(assert (=> start!20966 m!238027))

(declare-fun m!238029 () Bool)

(assert (=> start!20966 m!238029))

(declare-fun m!238031 () Bool)

(assert (=> start!20966 m!238031))

(declare-fun m!238033 () Bool)

(assert (=> b!210476 m!238033))

(declare-fun m!238035 () Bool)

(assert (=> b!210476 m!238035))

(declare-fun m!238037 () Bool)

(assert (=> b!210476 m!238037))

(declare-fun m!238039 () Bool)

(assert (=> b!210476 m!238039))

(declare-fun m!238041 () Bool)

(assert (=> b!210476 m!238041))

(declare-fun m!238043 () Bool)

(assert (=> b!210476 m!238043))

(declare-fun m!238045 () Bool)

(assert (=> b!210476 m!238045))

(declare-fun m!238047 () Bool)

(assert (=> b!210480 m!238047))

(declare-fun m!238049 () Bool)

(assert (=> b!210474 m!238049))

(declare-fun m!238051 () Bool)

(assert (=> b!210474 m!238051))

(declare-fun m!238053 () Bool)

(assert (=> b!210474 m!238053))

(declare-fun m!238055 () Bool)

(assert (=> b!210474 m!238055))

(declare-fun m!238057 () Bool)

(assert (=> b!210474 m!238057))

(declare-fun m!238059 () Bool)

(assert (=> b!210474 m!238059))

(assert (=> b!210474 m!238055))

(declare-fun m!238061 () Bool)

(assert (=> b!210474 m!238061))

(declare-fun m!238063 () Bool)

(assert (=> b!210474 m!238063))

(declare-fun m!238065 () Bool)

(assert (=> b!210478 m!238065))

(declare-fun m!238067 () Bool)

(assert (=> mapNonEmpty!9191 m!238067))

(declare-fun m!238069 () Bool)

(assert (=> b!210473 m!238069))

(declare-fun m!238071 () Bool)

(assert (=> b!210475 m!238071))

(check-sat (not b_next!5547) (not b!210478) (not mapNonEmpty!9191) (not start!20966) tp_is_empty!5409 (not b!210473) (not b!210480) b_and!12347 (not b!210476) (not b!210474))
(check-sat b_and!12347 (not b_next!5547))
(get-model)

(declare-fun bm!19906 () Bool)

(declare-fun call!19909 () Bool)

(assert (=> bm!19906 (= call!19909 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!210522 () Bool)

(declare-fun e!137090 () Bool)

(declare-fun e!137091 () Bool)

(assert (=> b!210522 (= e!137090 e!137091)))

(declare-fun lt!107947 () (_ BitVec 64))

(assert (=> b!210522 (= lt!107947 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107945 () Unit!6391)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10018 (_ BitVec 64) (_ BitVec 32)) Unit!6391)

(assert (=> b!210522 (= lt!107945 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!107947 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!210522 (arrayContainsKey!0 _keys!825 lt!107947 #b00000000000000000000000000000000)))

(declare-fun lt!107946 () Unit!6391)

(assert (=> b!210522 (= lt!107946 lt!107945)))

(declare-fun res!102747 () Bool)

(declare-datatypes ((SeekEntryResult!717 0))(
  ( (MissingZero!717 (index!5038 (_ BitVec 32))) (Found!717 (index!5039 (_ BitVec 32))) (Intermediate!717 (undefined!1529 Bool) (index!5040 (_ BitVec 32)) (x!22052 (_ BitVec 32))) (Undefined!717) (MissingVacant!717 (index!5041 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10018 (_ BitVec 32)) SeekEntryResult!717)

(assert (=> b!210522 (= res!102747 (= (seekEntryOrOpen!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!717 #b00000000000000000000000000000000)))))

(assert (=> b!210522 (=> (not res!102747) (not e!137091))))

(declare-fun b!210523 () Bool)

(assert (=> b!210523 (= e!137090 call!19909)))

(declare-fun d!57881 () Bool)

(declare-fun res!102748 () Bool)

(declare-fun e!137092 () Bool)

(assert (=> d!57881 (=> res!102748 e!137092)))

(assert (=> d!57881 (= res!102748 (bvsge #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> d!57881 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!137092)))

(declare-fun b!210524 () Bool)

(assert (=> b!210524 (= e!137091 call!19909)))

(declare-fun b!210525 () Bool)

(assert (=> b!210525 (= e!137092 e!137090)))

(declare-fun c!35566 () Bool)

(assert (=> b!210525 (= c!35566 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57881 (not res!102748)) b!210525))

(assert (= (and b!210525 c!35566) b!210522))

(assert (= (and b!210525 (not c!35566)) b!210523))

(assert (= (and b!210522 res!102747) b!210524))

(assert (= (or b!210524 b!210523) bm!19906))

(declare-fun m!238119 () Bool)

(assert (=> bm!19906 m!238119))

(declare-fun m!238121 () Bool)

(assert (=> b!210522 m!238121))

(declare-fun m!238123 () Bool)

(assert (=> b!210522 m!238123))

(declare-fun m!238125 () Bool)

(assert (=> b!210522 m!238125))

(assert (=> b!210522 m!238121))

(declare-fun m!238127 () Bool)

(assert (=> b!210522 m!238127))

(assert (=> b!210525 m!238121))

(assert (=> b!210525 m!238121))

(declare-fun m!238129 () Bool)

(assert (=> b!210525 m!238129))

(assert (=> b!210473 d!57881))

(declare-fun d!57883 () Bool)

(declare-fun res!102756 () Bool)

(declare-fun e!137103 () Bool)

(assert (=> d!57883 (=> res!102756 e!137103)))

(assert (=> d!57883 (= res!102756 (bvsge #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> d!57883 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3067) e!137103)))

(declare-fun b!210536 () Bool)

(declare-fun e!137101 () Bool)

(declare-fun e!137102 () Bool)

(assert (=> b!210536 (= e!137101 e!137102)))

(declare-fun c!35569 () Bool)

(assert (=> b!210536 (= c!35569 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210537 () Bool)

(declare-fun call!19912 () Bool)

(assert (=> b!210537 (= e!137102 call!19912)))

(declare-fun b!210538 () Bool)

(assert (=> b!210538 (= e!137102 call!19912)))

(declare-fun b!210539 () Bool)

(declare-fun e!137104 () Bool)

(declare-fun contains!1397 (List!3070 (_ BitVec 64)) Bool)

(assert (=> b!210539 (= e!137104 (contains!1397 Nil!3067 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19909 () Bool)

(assert (=> bm!19909 (= call!19912 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35569 (Cons!3066 (select (arr!4756 _keys!825) #b00000000000000000000000000000000) Nil!3067) Nil!3067)))))

(declare-fun b!210540 () Bool)

(assert (=> b!210540 (= e!137103 e!137101)))

(declare-fun res!102757 () Bool)

(assert (=> b!210540 (=> (not res!102757) (not e!137101))))

(assert (=> b!210540 (= res!102757 (not e!137104))))

(declare-fun res!102755 () Bool)

(assert (=> b!210540 (=> (not res!102755) (not e!137104))))

(assert (=> b!210540 (= res!102755 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57883 (not res!102756)) b!210540))

(assert (= (and b!210540 res!102755) b!210539))

(assert (= (and b!210540 res!102757) b!210536))

(assert (= (and b!210536 c!35569) b!210537))

(assert (= (and b!210536 (not c!35569)) b!210538))

(assert (= (or b!210537 b!210538) bm!19909))

(assert (=> b!210536 m!238121))

(assert (=> b!210536 m!238121))

(assert (=> b!210536 m!238129))

(assert (=> b!210539 m!238121))

(assert (=> b!210539 m!238121))

(declare-fun m!238131 () Bool)

(assert (=> b!210539 m!238131))

(assert (=> bm!19909 m!238121))

(declare-fun m!238133 () Bool)

(assert (=> bm!19909 m!238133))

(assert (=> b!210540 m!238121))

(assert (=> b!210540 m!238121))

(assert (=> b!210540 m!238129))

(assert (=> b!210478 d!57883))

(declare-fun d!57885 () Bool)

(declare-fun e!137107 () Bool)

(assert (=> d!57885 e!137107))

(declare-fun res!102763 () Bool)

(assert (=> d!57885 (=> (not res!102763) (not e!137107))))

(declare-fun lt!107956 () ListLongMap!3079)

(declare-fun contains!1398 (ListLongMap!3079 (_ BitVec 64)) Bool)

(assert (=> d!57885 (= res!102763 (contains!1398 lt!107956 (_1!2086 lt!107899)))))

(declare-fun lt!107957 () List!3069)

(assert (=> d!57885 (= lt!107956 (ListLongMap!3080 lt!107957))))

(declare-fun lt!107959 () Unit!6391)

(declare-fun lt!107958 () Unit!6391)

(assert (=> d!57885 (= lt!107959 lt!107958)))

(declare-datatypes ((Option!255 0))(
  ( (Some!254 (v!4732 V!6859)) (None!253) )
))
(declare-fun getValueByKey!249 (List!3069 (_ BitVec 64)) Option!255)

(assert (=> d!57885 (= (getValueByKey!249 lt!107957 (_1!2086 lt!107899)) (Some!254 (_2!2086 lt!107899)))))

(declare-fun lemmaContainsTupThenGetReturnValue!138 (List!3069 (_ BitVec 64) V!6859) Unit!6391)

(assert (=> d!57885 (= lt!107958 (lemmaContainsTupThenGetReturnValue!138 lt!107957 (_1!2086 lt!107899) (_2!2086 lt!107899)))))

(declare-fun insertStrictlySorted!140 (List!3069 (_ BitVec 64) V!6859) List!3069)

(assert (=> d!57885 (= lt!107957 (insertStrictlySorted!140 (toList!1555 lt!107898) (_1!2086 lt!107899) (_2!2086 lt!107899)))))

(assert (=> d!57885 (= (+!548 lt!107898 lt!107899) lt!107956)))

(declare-fun b!210545 () Bool)

(declare-fun res!102762 () Bool)

(assert (=> b!210545 (=> (not res!102762) (not e!137107))))

(assert (=> b!210545 (= res!102762 (= (getValueByKey!249 (toList!1555 lt!107956) (_1!2086 lt!107899)) (Some!254 (_2!2086 lt!107899))))))

(declare-fun b!210546 () Bool)

(declare-fun contains!1399 (List!3069 tuple2!4152) Bool)

(assert (=> b!210546 (= e!137107 (contains!1399 (toList!1555 lt!107956) lt!107899))))

(assert (= (and d!57885 res!102763) b!210545))

(assert (= (and b!210545 res!102762) b!210546))

(declare-fun m!238135 () Bool)

(assert (=> d!57885 m!238135))

(declare-fun m!238137 () Bool)

(assert (=> d!57885 m!238137))

(declare-fun m!238139 () Bool)

(assert (=> d!57885 m!238139))

(declare-fun m!238141 () Bool)

(assert (=> d!57885 m!238141))

(declare-fun m!238143 () Bool)

(assert (=> b!210545 m!238143))

(declare-fun m!238145 () Bool)

(assert (=> b!210546 m!238145))

(assert (=> b!210474 d!57885))

(declare-fun d!57887 () Bool)

(declare-fun e!137108 () Bool)

(assert (=> d!57887 e!137108))

(declare-fun res!102765 () Bool)

(assert (=> d!57887 (=> (not res!102765) (not e!137108))))

(declare-fun lt!107960 () ListLongMap!3079)

(assert (=> d!57887 (= res!102765 (contains!1398 lt!107960 (_1!2086 lt!107890)))))

(declare-fun lt!107961 () List!3069)

(assert (=> d!57887 (= lt!107960 (ListLongMap!3080 lt!107961))))

(declare-fun lt!107963 () Unit!6391)

(declare-fun lt!107962 () Unit!6391)

(assert (=> d!57887 (= lt!107963 lt!107962)))

(assert (=> d!57887 (= (getValueByKey!249 lt!107961 (_1!2086 lt!107890)) (Some!254 (_2!2086 lt!107890)))))

(assert (=> d!57887 (= lt!107962 (lemmaContainsTupThenGetReturnValue!138 lt!107961 (_1!2086 lt!107890) (_2!2086 lt!107890)))))

(assert (=> d!57887 (= lt!107961 (insertStrictlySorted!140 (toList!1555 lt!107888) (_1!2086 lt!107890) (_2!2086 lt!107890)))))

(assert (=> d!57887 (= (+!548 lt!107888 lt!107890) lt!107960)))

(declare-fun b!210547 () Bool)

(declare-fun res!102764 () Bool)

(assert (=> b!210547 (=> (not res!102764) (not e!137108))))

(assert (=> b!210547 (= res!102764 (= (getValueByKey!249 (toList!1555 lt!107960) (_1!2086 lt!107890)) (Some!254 (_2!2086 lt!107890))))))

(declare-fun b!210548 () Bool)

(assert (=> b!210548 (= e!137108 (contains!1399 (toList!1555 lt!107960) lt!107890))))

(assert (= (and d!57887 res!102765) b!210547))

(assert (= (and b!210547 res!102764) b!210548))

(declare-fun m!238147 () Bool)

(assert (=> d!57887 m!238147))

(declare-fun m!238149 () Bool)

(assert (=> d!57887 m!238149))

(declare-fun m!238151 () Bool)

(assert (=> d!57887 m!238151))

(declare-fun m!238153 () Bool)

(assert (=> d!57887 m!238153))

(declare-fun m!238155 () Bool)

(assert (=> b!210547 m!238155))

(declare-fun m!238157 () Bool)

(assert (=> b!210548 m!238157))

(assert (=> b!210474 d!57887))

(declare-fun d!57889 () Bool)

(assert (=> d!57889 (= (+!548 (+!548 lt!107888 (tuple2!4153 k0!843 v!520)) (tuple2!4153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (+!548 (+!548 lt!107888 (tuple2!4153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (tuple2!4153 k0!843 v!520)))))

(declare-fun lt!107966 () Unit!6391)

(declare-fun choose!1083 (ListLongMap!3079 (_ BitVec 64) V!6859 (_ BitVec 64) V!6859) Unit!6391)

(assert (=> d!57889 (= lt!107966 (choose!1083 lt!107888 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> d!57889 (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57889 (= (addCommutativeForDiffKeys!193 lt!107888 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) lt!107966)))

(declare-fun bs!8267 () Bool)

(assert (= bs!8267 d!57889))

(declare-fun m!238159 () Bool)

(assert (=> bs!8267 m!238159))

(declare-fun m!238161 () Bool)

(assert (=> bs!8267 m!238161))

(assert (=> bs!8267 m!238159))

(declare-fun m!238163 () Bool)

(assert (=> bs!8267 m!238163))

(assert (=> bs!8267 m!238161))

(declare-fun m!238165 () Bool)

(assert (=> bs!8267 m!238165))

(declare-fun m!238167 () Bool)

(assert (=> bs!8267 m!238167))

(assert (=> b!210474 d!57889))

(declare-fun d!57891 () Bool)

(declare-fun e!137109 () Bool)

(assert (=> d!57891 e!137109))

(declare-fun res!102767 () Bool)

(assert (=> d!57891 (=> (not res!102767) (not e!137109))))

(declare-fun lt!107967 () ListLongMap!3079)

(assert (=> d!57891 (= res!102767 (contains!1398 lt!107967 (_1!2086 lt!107899)))))

(declare-fun lt!107968 () List!3069)

(assert (=> d!57891 (= lt!107967 (ListLongMap!3080 lt!107968))))

(declare-fun lt!107970 () Unit!6391)

(declare-fun lt!107969 () Unit!6391)

(assert (=> d!57891 (= lt!107970 lt!107969)))

(assert (=> d!57891 (= (getValueByKey!249 lt!107968 (_1!2086 lt!107899)) (Some!254 (_2!2086 lt!107899)))))

(assert (=> d!57891 (= lt!107969 (lemmaContainsTupThenGetReturnValue!138 lt!107968 (_1!2086 lt!107899) (_2!2086 lt!107899)))))

(assert (=> d!57891 (= lt!107968 (insertStrictlySorted!140 (toList!1555 (+!548 lt!107896 lt!107890)) (_1!2086 lt!107899) (_2!2086 lt!107899)))))

(assert (=> d!57891 (= (+!548 (+!548 lt!107896 lt!107890) lt!107899) lt!107967)))

(declare-fun b!210549 () Bool)

(declare-fun res!102766 () Bool)

(assert (=> b!210549 (=> (not res!102766) (not e!137109))))

(assert (=> b!210549 (= res!102766 (= (getValueByKey!249 (toList!1555 lt!107967) (_1!2086 lt!107899)) (Some!254 (_2!2086 lt!107899))))))

(declare-fun b!210550 () Bool)

(assert (=> b!210550 (= e!137109 (contains!1399 (toList!1555 lt!107967) lt!107899))))

(assert (= (and d!57891 res!102767) b!210549))

(assert (= (and b!210549 res!102766) b!210550))

(declare-fun m!238169 () Bool)

(assert (=> d!57891 m!238169))

(declare-fun m!238171 () Bool)

(assert (=> d!57891 m!238171))

(declare-fun m!238173 () Bool)

(assert (=> d!57891 m!238173))

(declare-fun m!238175 () Bool)

(assert (=> d!57891 m!238175))

(declare-fun m!238177 () Bool)

(assert (=> b!210549 m!238177))

(declare-fun m!238179 () Bool)

(assert (=> b!210550 m!238179))

(assert (=> b!210474 d!57891))

(declare-fun d!57893 () Bool)

(declare-fun e!137110 () Bool)

(assert (=> d!57893 e!137110))

(declare-fun res!102769 () Bool)

(assert (=> d!57893 (=> (not res!102769) (not e!137110))))

(declare-fun lt!107971 () ListLongMap!3079)

(assert (=> d!57893 (= res!102769 (contains!1398 lt!107971 (_1!2086 lt!107893)))))

(declare-fun lt!107972 () List!3069)

(assert (=> d!57893 (= lt!107971 (ListLongMap!3080 lt!107972))))

(declare-fun lt!107974 () Unit!6391)

(declare-fun lt!107973 () Unit!6391)

(assert (=> d!57893 (= lt!107974 lt!107973)))

(assert (=> d!57893 (= (getValueByKey!249 lt!107972 (_1!2086 lt!107893)) (Some!254 (_2!2086 lt!107893)))))

(assert (=> d!57893 (= lt!107973 (lemmaContainsTupThenGetReturnValue!138 lt!107972 (_1!2086 lt!107893) (_2!2086 lt!107893)))))

(assert (=> d!57893 (= lt!107972 (insertStrictlySorted!140 (toList!1555 lt!107889) (_1!2086 lt!107893) (_2!2086 lt!107893)))))

(assert (=> d!57893 (= (+!548 lt!107889 lt!107893) lt!107971)))

(declare-fun b!210551 () Bool)

(declare-fun res!102768 () Bool)

(assert (=> b!210551 (=> (not res!102768) (not e!137110))))

(assert (=> b!210551 (= res!102768 (= (getValueByKey!249 (toList!1555 lt!107971) (_1!2086 lt!107893)) (Some!254 (_2!2086 lt!107893))))))

(declare-fun b!210552 () Bool)

(assert (=> b!210552 (= e!137110 (contains!1399 (toList!1555 lt!107971) lt!107893))))

(assert (= (and d!57893 res!102769) b!210551))

(assert (= (and b!210551 res!102768) b!210552))

(declare-fun m!238181 () Bool)

(assert (=> d!57893 m!238181))

(declare-fun m!238183 () Bool)

(assert (=> d!57893 m!238183))

(declare-fun m!238185 () Bool)

(assert (=> d!57893 m!238185))

(declare-fun m!238187 () Bool)

(assert (=> d!57893 m!238187))

(declare-fun m!238189 () Bool)

(assert (=> b!210551 m!238189))

(declare-fun m!238191 () Bool)

(assert (=> b!210552 m!238191))

(assert (=> b!210474 d!57893))

(declare-fun d!57895 () Bool)

(declare-fun e!137111 () Bool)

(assert (=> d!57895 e!137111))

(declare-fun res!102771 () Bool)

(assert (=> d!57895 (=> (not res!102771) (not e!137111))))

(declare-fun lt!107975 () ListLongMap!3079)

(assert (=> d!57895 (= res!102771 (contains!1398 lt!107975 (_1!2086 lt!107890)))))

(declare-fun lt!107976 () List!3069)

(assert (=> d!57895 (= lt!107975 (ListLongMap!3080 lt!107976))))

(declare-fun lt!107978 () Unit!6391)

(declare-fun lt!107977 () Unit!6391)

(assert (=> d!57895 (= lt!107978 lt!107977)))

(assert (=> d!57895 (= (getValueByKey!249 lt!107976 (_1!2086 lt!107890)) (Some!254 (_2!2086 lt!107890)))))

(assert (=> d!57895 (= lt!107977 (lemmaContainsTupThenGetReturnValue!138 lt!107976 (_1!2086 lt!107890) (_2!2086 lt!107890)))))

(assert (=> d!57895 (= lt!107976 (insertStrictlySorted!140 (toList!1555 lt!107896) (_1!2086 lt!107890) (_2!2086 lt!107890)))))

(assert (=> d!57895 (= (+!548 lt!107896 lt!107890) lt!107975)))

(declare-fun b!210553 () Bool)

(declare-fun res!102770 () Bool)

(assert (=> b!210553 (=> (not res!102770) (not e!137111))))

(assert (=> b!210553 (= res!102770 (= (getValueByKey!249 (toList!1555 lt!107975) (_1!2086 lt!107890)) (Some!254 (_2!2086 lt!107890))))))

(declare-fun b!210554 () Bool)

(assert (=> b!210554 (= e!137111 (contains!1399 (toList!1555 lt!107975) lt!107890))))

(assert (= (and d!57895 res!102771) b!210553))

(assert (= (and b!210553 res!102770) b!210554))

(declare-fun m!238193 () Bool)

(assert (=> d!57895 m!238193))

(declare-fun m!238195 () Bool)

(assert (=> d!57895 m!238195))

(declare-fun m!238197 () Bool)

(assert (=> d!57895 m!238197))

(declare-fun m!238199 () Bool)

(assert (=> d!57895 m!238199))

(declare-fun m!238201 () Bool)

(assert (=> b!210553 m!238201))

(declare-fun m!238203 () Bool)

(assert (=> b!210554 m!238203))

(assert (=> b!210474 d!57895))

(declare-fun d!57897 () Bool)

(declare-fun e!137112 () Bool)

(assert (=> d!57897 e!137112))

(declare-fun res!102773 () Bool)

(assert (=> d!57897 (=> (not res!102773) (not e!137112))))

(declare-fun lt!107979 () ListLongMap!3079)

(assert (=> d!57897 (= res!102773 (contains!1398 lt!107979 (_1!2086 lt!107899)))))

(declare-fun lt!107980 () List!3069)

(assert (=> d!57897 (= lt!107979 (ListLongMap!3080 lt!107980))))

(declare-fun lt!107982 () Unit!6391)

(declare-fun lt!107981 () Unit!6391)

(assert (=> d!57897 (= lt!107982 lt!107981)))

(assert (=> d!57897 (= (getValueByKey!249 lt!107980 (_1!2086 lt!107899)) (Some!254 (_2!2086 lt!107899)))))

(assert (=> d!57897 (= lt!107981 (lemmaContainsTupThenGetReturnValue!138 lt!107980 (_1!2086 lt!107899) (_2!2086 lt!107899)))))

(assert (=> d!57897 (= lt!107980 (insertStrictlySorted!140 (toList!1555 lt!107889) (_1!2086 lt!107899) (_2!2086 lt!107899)))))

(assert (=> d!57897 (= (+!548 lt!107889 lt!107899) lt!107979)))

(declare-fun b!210555 () Bool)

(declare-fun res!102772 () Bool)

(assert (=> b!210555 (=> (not res!102772) (not e!137112))))

(assert (=> b!210555 (= res!102772 (= (getValueByKey!249 (toList!1555 lt!107979) (_1!2086 lt!107899)) (Some!254 (_2!2086 lt!107899))))))

(declare-fun b!210556 () Bool)

(assert (=> b!210556 (= e!137112 (contains!1399 (toList!1555 lt!107979) lt!107899))))

(assert (= (and d!57897 res!102773) b!210555))

(assert (= (and b!210555 res!102772) b!210556))

(declare-fun m!238205 () Bool)

(assert (=> d!57897 m!238205))

(declare-fun m!238207 () Bool)

(assert (=> d!57897 m!238207))

(declare-fun m!238209 () Bool)

(assert (=> d!57897 m!238209))

(declare-fun m!238211 () Bool)

(assert (=> d!57897 m!238211))

(declare-fun m!238213 () Bool)

(assert (=> b!210555 m!238213))

(declare-fun m!238215 () Bool)

(assert (=> b!210556 m!238215))

(assert (=> b!210474 d!57897))

(declare-fun d!57899 () Bool)

(declare-fun e!137113 () Bool)

(assert (=> d!57899 e!137113))

(declare-fun res!102775 () Bool)

(assert (=> d!57899 (=> (not res!102775) (not e!137113))))

(declare-fun lt!107983 () ListLongMap!3079)

(assert (=> d!57899 (= res!102775 (contains!1398 lt!107983 (_1!2086 lt!107890)))))

(declare-fun lt!107984 () List!3069)

(assert (=> d!57899 (= lt!107983 (ListLongMap!3080 lt!107984))))

(declare-fun lt!107986 () Unit!6391)

(declare-fun lt!107985 () Unit!6391)

(assert (=> d!57899 (= lt!107986 lt!107985)))

(assert (=> d!57899 (= (getValueByKey!249 lt!107984 (_1!2086 lt!107890)) (Some!254 (_2!2086 lt!107890)))))

(assert (=> d!57899 (= lt!107985 (lemmaContainsTupThenGetReturnValue!138 lt!107984 (_1!2086 lt!107890) (_2!2086 lt!107890)))))

(assert (=> d!57899 (= lt!107984 (insertStrictlySorted!140 (toList!1555 lt!107895) (_1!2086 lt!107890) (_2!2086 lt!107890)))))

(assert (=> d!57899 (= (+!548 lt!107895 lt!107890) lt!107983)))

(declare-fun b!210557 () Bool)

(declare-fun res!102774 () Bool)

(assert (=> b!210557 (=> (not res!102774) (not e!137113))))

(assert (=> b!210557 (= res!102774 (= (getValueByKey!249 (toList!1555 lt!107983) (_1!2086 lt!107890)) (Some!254 (_2!2086 lt!107890))))))

(declare-fun b!210558 () Bool)

(assert (=> b!210558 (= e!137113 (contains!1399 (toList!1555 lt!107983) lt!107890))))

(assert (= (and d!57899 res!102775) b!210557))

(assert (= (and b!210557 res!102774) b!210558))

(declare-fun m!238217 () Bool)

(assert (=> d!57899 m!238217))

(declare-fun m!238219 () Bool)

(assert (=> d!57899 m!238219))

(declare-fun m!238221 () Bool)

(assert (=> d!57899 m!238221))

(declare-fun m!238223 () Bool)

(assert (=> d!57899 m!238223))

(declare-fun m!238225 () Bool)

(assert (=> b!210557 m!238225))

(declare-fun m!238227 () Bool)

(assert (=> b!210558 m!238227))

(assert (=> b!210474 d!57899))

(declare-fun d!57901 () Bool)

(assert (=> d!57901 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!20966 d!57901))

(declare-fun d!57903 () Bool)

(assert (=> d!57903 (= (array_inv!3139 _values!649) (bvsge (size!5082 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!20966 d!57903))

(declare-fun d!57905 () Bool)

(assert (=> d!57905 (= (array_inv!3140 _keys!825) (bvsge (size!5081 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!20966 d!57905))

(declare-fun b!210601 () Bool)

(declare-fun e!137146 () Unit!6391)

(declare-fun lt!108045 () Unit!6391)

(assert (=> b!210601 (= e!137146 lt!108045)))

(declare-fun lt!108036 () ListLongMap!3079)

(assert (=> b!210601 (= lt!108036 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108048 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108048 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108050 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108050 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108047 () Unit!6391)

(declare-fun addStillContains!168 (ListLongMap!3079 (_ BitVec 64) V!6859 (_ BitVec 64)) Unit!6391)

(assert (=> b!210601 (= lt!108047 (addStillContains!168 lt!108036 lt!108048 zeroValue!615 lt!108050))))

(assert (=> b!210601 (contains!1398 (+!548 lt!108036 (tuple2!4153 lt!108048 zeroValue!615)) lt!108050)))

(declare-fun lt!108034 () Unit!6391)

(assert (=> b!210601 (= lt!108034 lt!108047)))

(declare-fun lt!108040 () ListLongMap!3079)

(assert (=> b!210601 (= lt!108040 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108031 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108031 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108049 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108049 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108052 () Unit!6391)

(declare-fun addApplyDifferent!168 (ListLongMap!3079 (_ BitVec 64) V!6859 (_ BitVec 64)) Unit!6391)

(assert (=> b!210601 (= lt!108052 (addApplyDifferent!168 lt!108040 lt!108031 minValue!615 lt!108049))))

(declare-fun apply!192 (ListLongMap!3079 (_ BitVec 64)) V!6859)

(assert (=> b!210601 (= (apply!192 (+!548 lt!108040 (tuple2!4153 lt!108031 minValue!615)) lt!108049) (apply!192 lt!108040 lt!108049))))

(declare-fun lt!108035 () Unit!6391)

(assert (=> b!210601 (= lt!108035 lt!108052)))

(declare-fun lt!108033 () ListLongMap!3079)

(assert (=> b!210601 (= lt!108033 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108051 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108051 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108032 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108032 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108046 () Unit!6391)

(assert (=> b!210601 (= lt!108046 (addApplyDifferent!168 lt!108033 lt!108051 zeroValue!615 lt!108032))))

(assert (=> b!210601 (= (apply!192 (+!548 lt!108033 (tuple2!4153 lt!108051 zeroValue!615)) lt!108032) (apply!192 lt!108033 lt!108032))))

(declare-fun lt!108041 () Unit!6391)

(assert (=> b!210601 (= lt!108041 lt!108046)))

(declare-fun lt!108042 () ListLongMap!3079)

(assert (=> b!210601 (= lt!108042 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108039 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108039 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108043 () (_ BitVec 64))

(assert (=> b!210601 (= lt!108043 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!210601 (= lt!108045 (addApplyDifferent!168 lt!108042 lt!108039 minValue!615 lt!108043))))

(assert (=> b!210601 (= (apply!192 (+!548 lt!108042 (tuple2!4153 lt!108039 minValue!615)) lt!108043) (apply!192 lt!108042 lt!108043))))

(declare-fun b!210602 () Bool)

(declare-fun e!137144 () Bool)

(declare-fun lt!108037 () ListLongMap!3079)

(assert (=> b!210602 (= e!137144 (= (apply!192 lt!108037 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!210603 () Bool)

(declare-fun e!137141 () Bool)

(declare-fun e!137150 () Bool)

(assert (=> b!210603 (= e!137141 e!137150)))

(declare-fun c!35585 () Bool)

(assert (=> b!210603 (= c!35585 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!210604 () Bool)

(declare-fun call!19929 () Bool)

(assert (=> b!210604 (= e!137150 (not call!19929))))

(declare-fun bm!19924 () Bool)

(declare-fun call!19930 () ListLongMap!3079)

(assert (=> bm!19924 (= call!19930 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun bm!19925 () Bool)

(declare-fun call!19931 () Bool)

(assert (=> bm!19925 (= call!19931 (contains!1398 lt!108037 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19926 () Bool)

(declare-fun call!19932 () ListLongMap!3079)

(declare-fun call!19928 () ListLongMap!3079)

(assert (=> bm!19926 (= call!19932 call!19928)))

(declare-fun b!210606 () Bool)

(declare-fun e!137149 () ListLongMap!3079)

(declare-fun call!19927 () ListLongMap!3079)

(assert (=> b!210606 (= e!137149 (+!548 call!19927 (tuple2!4153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!210607 () Bool)

(declare-fun e!137152 () Bool)

(assert (=> b!210607 (= e!137152 (not call!19931))))

(declare-fun b!210608 () Bool)

(declare-fun res!102801 () Bool)

(assert (=> b!210608 (=> (not res!102801) (not e!137141))))

(assert (=> b!210608 (= res!102801 e!137152)))

(declare-fun c!35582 () Bool)

(assert (=> b!210608 (= c!35582 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!210609 () Bool)

(declare-fun c!35584 () Bool)

(assert (=> b!210609 (= c!35584 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!137147 () ListLongMap!3079)

(declare-fun e!137143 () ListLongMap!3079)

(assert (=> b!210609 (= e!137147 e!137143)))

(declare-fun b!210610 () Bool)

(assert (=> b!210610 (= e!137143 call!19932)))

(declare-fun b!210611 () Bool)

(declare-fun call!19933 () ListLongMap!3079)

(assert (=> b!210611 (= e!137147 call!19933)))

(declare-fun b!210612 () Bool)

(assert (=> b!210612 (= e!137149 e!137147)))

(declare-fun c!35587 () Bool)

(assert (=> b!210612 (= c!35587 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19927 () Bool)

(assert (=> bm!19927 (= call!19928 call!19930)))

(declare-fun b!210613 () Bool)

(declare-fun e!137148 () Bool)

(assert (=> b!210613 (= e!137148 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210614 () Bool)

(declare-fun e!137142 () Bool)

(declare-fun e!137151 () Bool)

(assert (=> b!210614 (= e!137142 e!137151)))

(declare-fun res!102798 () Bool)

(assert (=> b!210614 (=> (not res!102798) (not e!137151))))

(assert (=> b!210614 (= res!102798 (contains!1398 lt!108037 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210615 () Bool)

(assert (=> b!210615 (= e!137152 e!137144)))

(declare-fun res!102802 () Bool)

(assert (=> b!210615 (= res!102802 call!19931)))

(assert (=> b!210615 (=> (not res!102802) (not e!137144))))

(declare-fun b!210616 () Bool)

(declare-fun Unit!6393 () Unit!6391)

(assert (=> b!210616 (= e!137146 Unit!6393)))

(declare-fun b!210617 () Bool)

(declare-fun res!102796 () Bool)

(assert (=> b!210617 (=> (not res!102796) (not e!137141))))

(assert (=> b!210617 (= res!102796 e!137142)))

(declare-fun res!102799 () Bool)

(assert (=> b!210617 (=> res!102799 e!137142)))

(declare-fun e!137145 () Bool)

(assert (=> b!210617 (= res!102799 (not e!137145))))

(declare-fun res!102795 () Bool)

(assert (=> b!210617 (=> (not res!102795) (not e!137145))))

(assert (=> b!210617 (= res!102795 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210618 () Bool)

(assert (=> b!210618 (= e!137145 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19928 () Bool)

(assert (=> bm!19928 (= call!19929 (contains!1398 lt!108037 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19929 () Bool)

(declare-fun c!35583 () Bool)

(assert (=> bm!19929 (= call!19927 (+!548 (ite c!35583 call!19930 (ite c!35587 call!19928 call!19932)) (ite (or c!35583 c!35587) (tuple2!4153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!210619 () Bool)

(declare-fun get!2551 (ValueCell!2361 V!6859) V!6859)

(declare-fun dynLambda!530 (Int (_ BitVec 64)) V!6859)

(assert (=> b!210619 (= e!137151 (= (apply!192 lt!108037 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)) (get!2551 (select (arr!4757 lt!107897) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!210619 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5082 lt!107897)))))

(assert (=> b!210619 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210620 () Bool)

(declare-fun e!137140 () Bool)

(assert (=> b!210620 (= e!137150 e!137140)))

(declare-fun res!102800 () Bool)

(assert (=> b!210620 (= res!102800 call!19929)))

(assert (=> b!210620 (=> (not res!102800) (not e!137140))))

(declare-fun d!57907 () Bool)

(assert (=> d!57907 e!137141))

(declare-fun res!102794 () Bool)

(assert (=> d!57907 (=> (not res!102794) (not e!137141))))

(assert (=> d!57907 (= res!102794 (or (bvsge #b00000000000000000000000000000000 (size!5081 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))))

(declare-fun lt!108038 () ListLongMap!3079)

(assert (=> d!57907 (= lt!108037 lt!108038)))

(declare-fun lt!108044 () Unit!6391)

(assert (=> d!57907 (= lt!108044 e!137146)))

(declare-fun c!35586 () Bool)

(assert (=> d!57907 (= c!35586 e!137148)))

(declare-fun res!102797 () Bool)

(assert (=> d!57907 (=> (not res!102797) (not e!137148))))

(assert (=> d!57907 (= res!102797 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> d!57907 (= lt!108038 e!137149)))

(assert (=> d!57907 (= c!35583 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57907 (validMask!0 mask!1149)))

(assert (=> d!57907 (= (getCurrentListMap!1086 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108037)))

(declare-fun b!210605 () Bool)

(assert (=> b!210605 (= e!137140 (= (apply!192 lt!108037 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun bm!19930 () Bool)

(assert (=> bm!19930 (= call!19933 call!19927)))

(declare-fun b!210621 () Bool)

(assert (=> b!210621 (= e!137143 call!19933)))

(assert (= (and d!57907 c!35583) b!210606))

(assert (= (and d!57907 (not c!35583)) b!210612))

(assert (= (and b!210612 c!35587) b!210611))

(assert (= (and b!210612 (not c!35587)) b!210609))

(assert (= (and b!210609 c!35584) b!210621))

(assert (= (and b!210609 (not c!35584)) b!210610))

(assert (= (or b!210621 b!210610) bm!19926))

(assert (= (or b!210611 bm!19926) bm!19927))

(assert (= (or b!210611 b!210621) bm!19930))

(assert (= (or b!210606 bm!19927) bm!19924))

(assert (= (or b!210606 bm!19930) bm!19929))

(assert (= (and d!57907 res!102797) b!210613))

(assert (= (and d!57907 c!35586) b!210601))

(assert (= (and d!57907 (not c!35586)) b!210616))

(assert (= (and d!57907 res!102794) b!210617))

(assert (= (and b!210617 res!102795) b!210618))

(assert (= (and b!210617 (not res!102799)) b!210614))

(assert (= (and b!210614 res!102798) b!210619))

(assert (= (and b!210617 res!102796) b!210608))

(assert (= (and b!210608 c!35582) b!210615))

(assert (= (and b!210608 (not c!35582)) b!210607))

(assert (= (and b!210615 res!102802) b!210602))

(assert (= (or b!210615 b!210607) bm!19925))

(assert (= (and b!210608 res!102801) b!210603))

(assert (= (and b!210603 c!35585) b!210620))

(assert (= (and b!210603 (not c!35585)) b!210604))

(assert (= (and b!210620 res!102800) b!210605))

(assert (= (or b!210620 b!210604) bm!19928))

(declare-fun b_lambda!7641 () Bool)

(assert (=> (not b_lambda!7641) (not b!210619)))

(declare-fun t!8017 () Bool)

(declare-fun tb!2905 () Bool)

(assert (=> (and start!20966 (= defaultEntry!657 defaultEntry!657) t!8017) tb!2905))

(declare-fun result!4987 () Bool)

(assert (=> tb!2905 (= result!4987 tp_is_empty!5409)))

(assert (=> b!210619 t!8017))

(declare-fun b_and!12351 () Bool)

(assert (= b_and!12347 (and (=> t!8017 result!4987) b_and!12351)))

(declare-fun m!238229 () Bool)

(assert (=> bm!19928 m!238229))

(assert (=> b!210619 m!238121))

(declare-fun m!238231 () Bool)

(assert (=> b!210619 m!238231))

(declare-fun m!238233 () Bool)

(assert (=> b!210619 m!238233))

(declare-fun m!238235 () Bool)

(assert (=> b!210619 m!238235))

(assert (=> b!210619 m!238121))

(assert (=> b!210619 m!238233))

(assert (=> b!210619 m!238235))

(declare-fun m!238237 () Bool)

(assert (=> b!210619 m!238237))

(declare-fun m!238239 () Bool)

(assert (=> b!210605 m!238239))

(declare-fun m!238241 () Bool)

(assert (=> b!210606 m!238241))

(assert (=> b!210614 m!238121))

(assert (=> b!210614 m!238121))

(declare-fun m!238243 () Bool)

(assert (=> b!210614 m!238243))

(assert (=> b!210618 m!238121))

(assert (=> b!210618 m!238121))

(assert (=> b!210618 m!238129))

(assert (=> b!210613 m!238121))

(assert (=> b!210613 m!238121))

(assert (=> b!210613 m!238129))

(assert (=> d!57907 m!238027))

(declare-fun m!238245 () Bool)

(assert (=> b!210601 m!238245))

(declare-fun m!238247 () Bool)

(assert (=> b!210601 m!238247))

(declare-fun m!238249 () Bool)

(assert (=> b!210601 m!238249))

(declare-fun m!238251 () Bool)

(assert (=> b!210601 m!238251))

(declare-fun m!238253 () Bool)

(assert (=> b!210601 m!238253))

(declare-fun m!238255 () Bool)

(assert (=> b!210601 m!238255))

(declare-fun m!238257 () Bool)

(assert (=> b!210601 m!238257))

(assert (=> b!210601 m!238257))

(declare-fun m!238259 () Bool)

(assert (=> b!210601 m!238259))

(assert (=> b!210601 m!238121))

(assert (=> b!210601 m!238247))

(assert (=> b!210601 m!238041))

(declare-fun m!238261 () Bool)

(assert (=> b!210601 m!238261))

(declare-fun m!238263 () Bool)

(assert (=> b!210601 m!238263))

(declare-fun m!238265 () Bool)

(assert (=> b!210601 m!238265))

(declare-fun m!238267 () Bool)

(assert (=> b!210601 m!238267))

(declare-fun m!238269 () Bool)

(assert (=> b!210601 m!238269))

(assert (=> b!210601 m!238263))

(declare-fun m!238271 () Bool)

(assert (=> b!210601 m!238271))

(assert (=> b!210601 m!238251))

(declare-fun m!238273 () Bool)

(assert (=> b!210601 m!238273))

(declare-fun m!238275 () Bool)

(assert (=> bm!19929 m!238275))

(declare-fun m!238277 () Bool)

(assert (=> bm!19925 m!238277))

(declare-fun m!238279 () Bool)

(assert (=> b!210602 m!238279))

(assert (=> bm!19924 m!238041))

(assert (=> b!210476 d!57907))

(declare-fun b!210648 () Bool)

(declare-fun e!137173 () Bool)

(declare-fun e!137170 () Bool)

(assert (=> b!210648 (= e!137173 e!137170)))

(assert (=> b!210648 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun res!102811 () Bool)

(declare-fun lt!108071 () ListLongMap!3079)

(assert (=> b!210648 (= res!102811 (contains!1398 lt!108071 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210648 (=> (not res!102811) (not e!137170))))

(declare-fun b!210649 () Bool)

(declare-fun e!137171 () ListLongMap!3079)

(declare-fun e!137169 () ListLongMap!3079)

(assert (=> b!210649 (= e!137171 e!137169)))

(declare-fun c!35599 () Bool)

(assert (=> b!210649 (= c!35599 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun e!137168 () Bool)

(declare-fun b!210650 () Bool)

(assert (=> b!210650 (= e!137168 (= lt!108071 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun d!57909 () Bool)

(declare-fun e!137167 () Bool)

(assert (=> d!57909 e!137167))

(declare-fun res!102813 () Bool)

(assert (=> d!57909 (=> (not res!102813) (not e!137167))))

(assert (=> d!57909 (= res!102813 (not (contains!1398 lt!108071 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57909 (= lt!108071 e!137171)))

(declare-fun c!35597 () Bool)

(assert (=> d!57909 (= c!35597 (bvsge #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> d!57909 (validMask!0 mask!1149)))

(assert (=> d!57909 (= (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108071)))

(declare-fun b!210651 () Bool)

(assert (=> b!210651 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> b!210651 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5082 _values!649)))))

(assert (=> b!210651 (= e!137170 (= (apply!192 lt!108071 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)) (get!2551 (select (arr!4757 _values!649) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!210652 () Bool)

(declare-fun lt!108068 () Unit!6391)

(declare-fun lt!108069 () Unit!6391)

(assert (=> b!210652 (= lt!108068 lt!108069)))

(declare-fun lt!108067 () ListLongMap!3079)

(declare-fun lt!108072 () V!6859)

(declare-fun lt!108073 () (_ BitVec 64))

(declare-fun lt!108070 () (_ BitVec 64))

(assert (=> b!210652 (not (contains!1398 (+!548 lt!108067 (tuple2!4153 lt!108073 lt!108072)) lt!108070))))

(declare-fun addStillNotContains!103 (ListLongMap!3079 (_ BitVec 64) V!6859 (_ BitVec 64)) Unit!6391)

(assert (=> b!210652 (= lt!108069 (addStillNotContains!103 lt!108067 lt!108073 lt!108072 lt!108070))))

(assert (=> b!210652 (= lt!108070 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!210652 (= lt!108072 (get!2551 (select (arr!4757 _values!649) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!210652 (= lt!108073 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun call!19936 () ListLongMap!3079)

(assert (=> b!210652 (= lt!108067 call!19936)))

(assert (=> b!210652 (= e!137169 (+!548 call!19936 (tuple2!4153 (select (arr!4756 _keys!825) #b00000000000000000000000000000000) (get!2551 (select (arr!4757 _values!649) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!210653 () Bool)

(assert (=> b!210653 (= e!137169 call!19936)))

(declare-fun b!210654 () Bool)

(assert (=> b!210654 (= e!137173 e!137168)))

(declare-fun c!35596 () Bool)

(assert (=> b!210654 (= c!35596 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210655 () Bool)

(assert (=> b!210655 (= e!137167 e!137173)))

(declare-fun c!35598 () Bool)

(declare-fun e!137172 () Bool)

(assert (=> b!210655 (= c!35598 e!137172)))

(declare-fun res!102812 () Bool)

(assert (=> b!210655 (=> (not res!102812) (not e!137172))))

(assert (=> b!210655 (= res!102812 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210656 () Bool)

(assert (=> b!210656 (= e!137172 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210656 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!210657 () Bool)

(assert (=> b!210657 (= e!137171 (ListLongMap!3080 Nil!3066))))

(declare-fun bm!19933 () Bool)

(assert (=> bm!19933 (= call!19936 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!210658 () Bool)

(declare-fun isEmpty!498 (ListLongMap!3079) Bool)

(assert (=> b!210658 (= e!137168 (isEmpty!498 lt!108071))))

(declare-fun b!210659 () Bool)

(declare-fun res!102814 () Bool)

(assert (=> b!210659 (=> (not res!102814) (not e!137167))))

(assert (=> b!210659 (= res!102814 (not (contains!1398 lt!108071 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57909 c!35597) b!210657))

(assert (= (and d!57909 (not c!35597)) b!210649))

(assert (= (and b!210649 c!35599) b!210652))

(assert (= (and b!210649 (not c!35599)) b!210653))

(assert (= (or b!210652 b!210653) bm!19933))

(assert (= (and d!57909 res!102813) b!210659))

(assert (= (and b!210659 res!102814) b!210655))

(assert (= (and b!210655 res!102812) b!210656))

(assert (= (and b!210655 c!35598) b!210648))

(assert (= (and b!210655 (not c!35598)) b!210654))

(assert (= (and b!210648 res!102811) b!210651))

(assert (= (and b!210654 c!35596) b!210650))

(assert (= (and b!210654 (not c!35596)) b!210658))

(declare-fun b_lambda!7643 () Bool)

(assert (=> (not b_lambda!7643) (not b!210651)))

(assert (=> b!210651 t!8017))

(declare-fun b_and!12353 () Bool)

(assert (= b_and!12351 (and (=> t!8017 result!4987) b_and!12353)))

(declare-fun b_lambda!7645 () Bool)

(assert (=> (not b_lambda!7645) (not b!210652)))

(assert (=> b!210652 t!8017))

(declare-fun b_and!12355 () Bool)

(assert (= b_and!12353 (and (=> t!8017 result!4987) b_and!12355)))

(assert (=> b!210656 m!238121))

(assert (=> b!210656 m!238121))

(assert (=> b!210656 m!238129))

(assert (=> b!210648 m!238121))

(assert (=> b!210648 m!238121))

(declare-fun m!238281 () Bool)

(assert (=> b!210648 m!238281))

(declare-fun m!238283 () Bool)

(assert (=> b!210659 m!238283))

(declare-fun m!238285 () Bool)

(assert (=> bm!19933 m!238285))

(assert (=> b!210650 m!238285))

(declare-fun m!238287 () Bool)

(assert (=> d!57909 m!238287))

(assert (=> d!57909 m!238027))

(assert (=> b!210651 m!238235))

(declare-fun m!238289 () Bool)

(assert (=> b!210651 m!238289))

(assert (=> b!210651 m!238235))

(declare-fun m!238291 () Bool)

(assert (=> b!210651 m!238291))

(assert (=> b!210651 m!238121))

(assert (=> b!210651 m!238289))

(assert (=> b!210651 m!238121))

(declare-fun m!238293 () Bool)

(assert (=> b!210651 m!238293))

(declare-fun m!238295 () Bool)

(assert (=> b!210652 m!238295))

(assert (=> b!210652 m!238235))

(assert (=> b!210652 m!238289))

(assert (=> b!210652 m!238235))

(assert (=> b!210652 m!238291))

(assert (=> b!210652 m!238121))

(declare-fun m!238297 () Bool)

(assert (=> b!210652 m!238297))

(assert (=> b!210652 m!238297))

(declare-fun m!238299 () Bool)

(assert (=> b!210652 m!238299))

(declare-fun m!238301 () Bool)

(assert (=> b!210652 m!238301))

(assert (=> b!210652 m!238289))

(declare-fun m!238303 () Bool)

(assert (=> b!210658 m!238303))

(assert (=> b!210649 m!238121))

(assert (=> b!210649 m!238121))

(assert (=> b!210649 m!238129))

(assert (=> b!210476 d!57909))

(declare-fun d!57911 () Bool)

(declare-fun e!137174 () Bool)

(assert (=> d!57911 e!137174))

(declare-fun res!102816 () Bool)

(assert (=> d!57911 (=> (not res!102816) (not e!137174))))

(declare-fun lt!108074 () ListLongMap!3079)

(assert (=> d!57911 (= res!102816 (contains!1398 lt!108074 (_1!2086 lt!107893)))))

(declare-fun lt!108075 () List!3069)

(assert (=> d!57911 (= lt!108074 (ListLongMap!3080 lt!108075))))

(declare-fun lt!108077 () Unit!6391)

(declare-fun lt!108076 () Unit!6391)

(assert (=> d!57911 (= lt!108077 lt!108076)))

(assert (=> d!57911 (= (getValueByKey!249 lt!108075 (_1!2086 lt!107893)) (Some!254 (_2!2086 lt!107893)))))

(assert (=> d!57911 (= lt!108076 (lemmaContainsTupThenGetReturnValue!138 lt!108075 (_1!2086 lt!107893) (_2!2086 lt!107893)))))

(assert (=> d!57911 (= lt!108075 (insertStrictlySorted!140 (toList!1555 lt!107888) (_1!2086 lt!107893) (_2!2086 lt!107893)))))

(assert (=> d!57911 (= (+!548 lt!107888 lt!107893) lt!108074)))

(declare-fun b!210660 () Bool)

(declare-fun res!102815 () Bool)

(assert (=> b!210660 (=> (not res!102815) (not e!137174))))

(assert (=> b!210660 (= res!102815 (= (getValueByKey!249 (toList!1555 lt!108074) (_1!2086 lt!107893)) (Some!254 (_2!2086 lt!107893))))))

(declare-fun b!210661 () Bool)

(assert (=> b!210661 (= e!137174 (contains!1399 (toList!1555 lt!108074) lt!107893))))

(assert (= (and d!57911 res!102816) b!210660))

(assert (= (and b!210660 res!102815) b!210661))

(declare-fun m!238305 () Bool)

(assert (=> d!57911 m!238305))

(declare-fun m!238307 () Bool)

(assert (=> d!57911 m!238307))

(declare-fun m!238309 () Bool)

(assert (=> d!57911 m!238309))

(declare-fun m!238311 () Bool)

(assert (=> d!57911 m!238311))

(declare-fun m!238313 () Bool)

(assert (=> b!210660 m!238313))

(declare-fun m!238315 () Bool)

(assert (=> b!210661 m!238315))

(assert (=> b!210476 d!57911))

(declare-fun b!210669 () Bool)

(declare-fun call!19942 () ListLongMap!3079)

(declare-fun e!137179 () Bool)

(declare-fun call!19941 () ListLongMap!3079)

(assert (=> b!210669 (= e!137179 (= call!19941 (+!548 call!19942 (tuple2!4153 k0!843 v!520))))))

(declare-fun b!210670 () Bool)

(declare-fun e!137180 () Bool)

(assert (=> b!210670 (= e!137180 e!137179)))

(declare-fun c!35602 () Bool)

(assert (=> b!210670 (= c!35602 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun bm!19938 () Bool)

(assert (=> bm!19938 (= call!19941 (getCurrentListMapNoExtraKeys!485 _keys!825 (array!10021 (store (arr!4757 _values!649) i!601 (ValueCellFull!2361 v!520)) (size!5082 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun bm!19939 () Bool)

(assert (=> bm!19939 (= call!19942 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun d!57913 () Bool)

(assert (=> d!57913 e!137180))

(declare-fun res!102819 () Bool)

(assert (=> d!57913 (=> (not res!102819) (not e!137180))))

(assert (=> d!57913 (= res!102819 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5082 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5082 _values!649))))))))

(declare-fun lt!108080 () Unit!6391)

(declare-fun choose!1084 (array!10018 array!10020 (_ BitVec 32) (_ BitVec 32) V!6859 V!6859 (_ BitVec 32) (_ BitVec 64) V!6859 (_ BitVec 32) Int) Unit!6391)

(assert (=> d!57913 (= lt!108080 (choose!1084 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!57913 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> d!57913 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!203 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!108080)))

(declare-fun b!210668 () Bool)

(assert (=> b!210668 (= e!137179 (= call!19941 call!19942))))

(assert (= (and d!57913 res!102819) b!210670))

(assert (= (and b!210670 c!35602) b!210669))

(assert (= (and b!210670 (not c!35602)) b!210668))

(assert (= (or b!210669 b!210668) bm!19938))

(assert (= (or b!210669 b!210668) bm!19939))

(declare-fun m!238317 () Bool)

(assert (=> b!210669 m!238317))

(assert (=> bm!19938 m!238033))

(declare-fun m!238319 () Bool)

(assert (=> bm!19938 m!238319))

(assert (=> bm!19939 m!238039))

(declare-fun m!238321 () Bool)

(assert (=> d!57913 m!238321))

(assert (=> b!210476 d!57913))

(declare-fun b!210671 () Bool)

(declare-fun e!137187 () Unit!6391)

(declare-fun lt!108095 () Unit!6391)

(assert (=> b!210671 (= e!137187 lt!108095)))

(declare-fun lt!108086 () ListLongMap!3079)

(assert (=> b!210671 (= lt!108086 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108098 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108098 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108100 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108100 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108097 () Unit!6391)

(assert (=> b!210671 (= lt!108097 (addStillContains!168 lt!108086 lt!108098 zeroValue!615 lt!108100))))

(assert (=> b!210671 (contains!1398 (+!548 lt!108086 (tuple2!4153 lt!108098 zeroValue!615)) lt!108100)))

(declare-fun lt!108084 () Unit!6391)

(assert (=> b!210671 (= lt!108084 lt!108097)))

(declare-fun lt!108090 () ListLongMap!3079)

(assert (=> b!210671 (= lt!108090 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108081 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108081 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108099 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108099 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108102 () Unit!6391)

(assert (=> b!210671 (= lt!108102 (addApplyDifferent!168 lt!108090 lt!108081 minValue!615 lt!108099))))

(assert (=> b!210671 (= (apply!192 (+!548 lt!108090 (tuple2!4153 lt!108081 minValue!615)) lt!108099) (apply!192 lt!108090 lt!108099))))

(declare-fun lt!108085 () Unit!6391)

(assert (=> b!210671 (= lt!108085 lt!108102)))

(declare-fun lt!108083 () ListLongMap!3079)

(assert (=> b!210671 (= lt!108083 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108101 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108101 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108082 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108082 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108096 () Unit!6391)

(assert (=> b!210671 (= lt!108096 (addApplyDifferent!168 lt!108083 lt!108101 zeroValue!615 lt!108082))))

(assert (=> b!210671 (= (apply!192 (+!548 lt!108083 (tuple2!4153 lt!108101 zeroValue!615)) lt!108082) (apply!192 lt!108083 lt!108082))))

(declare-fun lt!108091 () Unit!6391)

(assert (=> b!210671 (= lt!108091 lt!108096)))

(declare-fun lt!108092 () ListLongMap!3079)

(assert (=> b!210671 (= lt!108092 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108089 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108089 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108093 () (_ BitVec 64))

(assert (=> b!210671 (= lt!108093 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!210671 (= lt!108095 (addApplyDifferent!168 lt!108092 lt!108089 minValue!615 lt!108093))))

(assert (=> b!210671 (= (apply!192 (+!548 lt!108092 (tuple2!4153 lt!108089 minValue!615)) lt!108093) (apply!192 lt!108092 lt!108093))))

(declare-fun b!210672 () Bool)

(declare-fun e!137185 () Bool)

(declare-fun lt!108087 () ListLongMap!3079)

(assert (=> b!210672 (= e!137185 (= (apply!192 lt!108087 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!210673 () Bool)

(declare-fun e!137182 () Bool)

(declare-fun e!137191 () Bool)

(assert (=> b!210673 (= e!137182 e!137191)))

(declare-fun c!35606 () Bool)

(assert (=> b!210673 (= c!35606 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!210674 () Bool)

(declare-fun call!19945 () Bool)

(assert (=> b!210674 (= e!137191 (not call!19945))))

(declare-fun call!19946 () ListLongMap!3079)

(declare-fun bm!19940 () Bool)

(assert (=> bm!19940 (= call!19946 (getCurrentListMapNoExtraKeys!485 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun bm!19941 () Bool)

(declare-fun call!19947 () Bool)

(assert (=> bm!19941 (= call!19947 (contains!1398 lt!108087 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19942 () Bool)

(declare-fun call!19948 () ListLongMap!3079)

(declare-fun call!19944 () ListLongMap!3079)

(assert (=> bm!19942 (= call!19948 call!19944)))

(declare-fun b!210676 () Bool)

(declare-fun e!137190 () ListLongMap!3079)

(declare-fun call!19943 () ListLongMap!3079)

(assert (=> b!210676 (= e!137190 (+!548 call!19943 (tuple2!4153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!210677 () Bool)

(declare-fun e!137193 () Bool)

(assert (=> b!210677 (= e!137193 (not call!19947))))

(declare-fun b!210678 () Bool)

(declare-fun res!102827 () Bool)

(assert (=> b!210678 (=> (not res!102827) (not e!137182))))

(assert (=> b!210678 (= res!102827 e!137193)))

(declare-fun c!35603 () Bool)

(assert (=> b!210678 (= c!35603 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!210679 () Bool)

(declare-fun c!35605 () Bool)

(assert (=> b!210679 (= c!35605 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!137188 () ListLongMap!3079)

(declare-fun e!137184 () ListLongMap!3079)

(assert (=> b!210679 (= e!137188 e!137184)))

(declare-fun b!210680 () Bool)

(assert (=> b!210680 (= e!137184 call!19948)))

(declare-fun b!210681 () Bool)

(declare-fun call!19949 () ListLongMap!3079)

(assert (=> b!210681 (= e!137188 call!19949)))

(declare-fun b!210682 () Bool)

(assert (=> b!210682 (= e!137190 e!137188)))

(declare-fun c!35608 () Bool)

(assert (=> b!210682 (= c!35608 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19943 () Bool)

(assert (=> bm!19943 (= call!19944 call!19946)))

(declare-fun b!210683 () Bool)

(declare-fun e!137189 () Bool)

(assert (=> b!210683 (= e!137189 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210684 () Bool)

(declare-fun e!137183 () Bool)

(declare-fun e!137192 () Bool)

(assert (=> b!210684 (= e!137183 e!137192)))

(declare-fun res!102824 () Bool)

(assert (=> b!210684 (=> (not res!102824) (not e!137192))))

(assert (=> b!210684 (= res!102824 (contains!1398 lt!108087 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210684 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210685 () Bool)

(assert (=> b!210685 (= e!137193 e!137185)))

(declare-fun res!102828 () Bool)

(assert (=> b!210685 (= res!102828 call!19947)))

(assert (=> b!210685 (=> (not res!102828) (not e!137185))))

(declare-fun b!210686 () Bool)

(declare-fun Unit!6394 () Unit!6391)

(assert (=> b!210686 (= e!137187 Unit!6394)))

(declare-fun b!210687 () Bool)

(declare-fun res!102822 () Bool)

(assert (=> b!210687 (=> (not res!102822) (not e!137182))))

(assert (=> b!210687 (= res!102822 e!137183)))

(declare-fun res!102825 () Bool)

(assert (=> b!210687 (=> res!102825 e!137183)))

(declare-fun e!137186 () Bool)

(assert (=> b!210687 (= res!102825 (not e!137186))))

(declare-fun res!102821 () Bool)

(assert (=> b!210687 (=> (not res!102821) (not e!137186))))

(assert (=> b!210687 (= res!102821 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210688 () Bool)

(assert (=> b!210688 (= e!137186 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19944 () Bool)

(assert (=> bm!19944 (= call!19945 (contains!1398 lt!108087 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!35604 () Bool)

(declare-fun bm!19945 () Bool)

(assert (=> bm!19945 (= call!19943 (+!548 (ite c!35604 call!19946 (ite c!35608 call!19944 call!19948)) (ite (or c!35604 c!35608) (tuple2!4153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!210689 () Bool)

(assert (=> b!210689 (= e!137192 (= (apply!192 lt!108087 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)) (get!2551 (select (arr!4757 _values!649) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!210689 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5082 _values!649)))))

(assert (=> b!210689 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210690 () Bool)

(declare-fun e!137181 () Bool)

(assert (=> b!210690 (= e!137191 e!137181)))

(declare-fun res!102826 () Bool)

(assert (=> b!210690 (= res!102826 call!19945)))

(assert (=> b!210690 (=> (not res!102826) (not e!137181))))

(declare-fun d!57915 () Bool)

(assert (=> d!57915 e!137182))

(declare-fun res!102820 () Bool)

(assert (=> d!57915 (=> (not res!102820) (not e!137182))))

(assert (=> d!57915 (= res!102820 (or (bvsge #b00000000000000000000000000000000 (size!5081 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))))

(declare-fun lt!108088 () ListLongMap!3079)

(assert (=> d!57915 (= lt!108087 lt!108088)))

(declare-fun lt!108094 () Unit!6391)

(assert (=> d!57915 (= lt!108094 e!137187)))

(declare-fun c!35607 () Bool)

(assert (=> d!57915 (= c!35607 e!137189)))

(declare-fun res!102823 () Bool)

(assert (=> d!57915 (=> (not res!102823) (not e!137189))))

(assert (=> d!57915 (= res!102823 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> d!57915 (= lt!108088 e!137190)))

(assert (=> d!57915 (= c!35604 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57915 (validMask!0 mask!1149)))

(assert (=> d!57915 (= (getCurrentListMap!1086 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108087)))

(declare-fun b!210675 () Bool)

(assert (=> b!210675 (= e!137181 (= (apply!192 lt!108087 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun bm!19946 () Bool)

(assert (=> bm!19946 (= call!19949 call!19943)))

(declare-fun b!210691 () Bool)

(assert (=> b!210691 (= e!137184 call!19949)))

(assert (= (and d!57915 c!35604) b!210676))

(assert (= (and d!57915 (not c!35604)) b!210682))

(assert (= (and b!210682 c!35608) b!210681))

(assert (= (and b!210682 (not c!35608)) b!210679))

(assert (= (and b!210679 c!35605) b!210691))

(assert (= (and b!210679 (not c!35605)) b!210680))

(assert (= (or b!210691 b!210680) bm!19942))

(assert (= (or b!210681 bm!19942) bm!19943))

(assert (= (or b!210681 b!210691) bm!19946))

(assert (= (or b!210676 bm!19943) bm!19940))

(assert (= (or b!210676 bm!19946) bm!19945))

(assert (= (and d!57915 res!102823) b!210683))

(assert (= (and d!57915 c!35607) b!210671))

(assert (= (and d!57915 (not c!35607)) b!210686))

(assert (= (and d!57915 res!102820) b!210687))

(assert (= (and b!210687 res!102821) b!210688))

(assert (= (and b!210687 (not res!102825)) b!210684))

(assert (= (and b!210684 res!102824) b!210689))

(assert (= (and b!210687 res!102822) b!210678))

(assert (= (and b!210678 c!35603) b!210685))

(assert (= (and b!210678 (not c!35603)) b!210677))

(assert (= (and b!210685 res!102828) b!210672))

(assert (= (or b!210685 b!210677) bm!19941))

(assert (= (and b!210678 res!102827) b!210673))

(assert (= (and b!210673 c!35606) b!210690))

(assert (= (and b!210673 (not c!35606)) b!210674))

(assert (= (and b!210690 res!102826) b!210675))

(assert (= (or b!210690 b!210674) bm!19944))

(declare-fun b_lambda!7647 () Bool)

(assert (=> (not b_lambda!7647) (not b!210689)))

(assert (=> b!210689 t!8017))

(declare-fun b_and!12357 () Bool)

(assert (= b_and!12355 (and (=> t!8017 result!4987) b_and!12357)))

(declare-fun m!238323 () Bool)

(assert (=> bm!19944 m!238323))

(assert (=> b!210689 m!238121))

(declare-fun m!238325 () Bool)

(assert (=> b!210689 m!238325))

(assert (=> b!210689 m!238289))

(assert (=> b!210689 m!238235))

(assert (=> b!210689 m!238121))

(assert (=> b!210689 m!238289))

(assert (=> b!210689 m!238235))

(assert (=> b!210689 m!238291))

(declare-fun m!238327 () Bool)

(assert (=> b!210675 m!238327))

(declare-fun m!238329 () Bool)

(assert (=> b!210676 m!238329))

(assert (=> b!210684 m!238121))

(assert (=> b!210684 m!238121))

(declare-fun m!238331 () Bool)

(assert (=> b!210684 m!238331))

(assert (=> b!210688 m!238121))

(assert (=> b!210688 m!238121))

(assert (=> b!210688 m!238129))

(assert (=> b!210683 m!238121))

(assert (=> b!210683 m!238121))

(assert (=> b!210683 m!238129))

(assert (=> d!57915 m!238027))

(declare-fun m!238333 () Bool)

(assert (=> b!210671 m!238333))

(declare-fun m!238335 () Bool)

(assert (=> b!210671 m!238335))

(declare-fun m!238337 () Bool)

(assert (=> b!210671 m!238337))

(declare-fun m!238339 () Bool)

(assert (=> b!210671 m!238339))

(declare-fun m!238341 () Bool)

(assert (=> b!210671 m!238341))

(declare-fun m!238343 () Bool)

(assert (=> b!210671 m!238343))

(declare-fun m!238345 () Bool)

(assert (=> b!210671 m!238345))

(assert (=> b!210671 m!238345))

(declare-fun m!238347 () Bool)

(assert (=> b!210671 m!238347))

(assert (=> b!210671 m!238121))

(assert (=> b!210671 m!238335))

(assert (=> b!210671 m!238039))

(declare-fun m!238349 () Bool)

(assert (=> b!210671 m!238349))

(declare-fun m!238351 () Bool)

(assert (=> b!210671 m!238351))

(declare-fun m!238353 () Bool)

(assert (=> b!210671 m!238353))

(declare-fun m!238355 () Bool)

(assert (=> b!210671 m!238355))

(declare-fun m!238357 () Bool)

(assert (=> b!210671 m!238357))

(assert (=> b!210671 m!238351))

(declare-fun m!238359 () Bool)

(assert (=> b!210671 m!238359))

(assert (=> b!210671 m!238339))

(declare-fun m!238361 () Bool)

(assert (=> b!210671 m!238361))

(declare-fun m!238363 () Bool)

(assert (=> bm!19945 m!238363))

(declare-fun m!238365 () Bool)

(assert (=> bm!19941 m!238365))

(declare-fun m!238367 () Bool)

(assert (=> b!210672 m!238367))

(assert (=> bm!19940 m!238039))

(assert (=> b!210476 d!57915))

(declare-fun b!210692 () Bool)

(declare-fun e!137200 () Bool)

(declare-fun e!137197 () Bool)

(assert (=> b!210692 (= e!137200 e!137197)))

(assert (=> b!210692 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun res!102829 () Bool)

(declare-fun lt!108107 () ListLongMap!3079)

(assert (=> b!210692 (= res!102829 (contains!1398 lt!108107 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210692 (=> (not res!102829) (not e!137197))))

(declare-fun b!210693 () Bool)

(declare-fun e!137198 () ListLongMap!3079)

(declare-fun e!137196 () ListLongMap!3079)

(assert (=> b!210693 (= e!137198 e!137196)))

(declare-fun c!35612 () Bool)

(assert (=> b!210693 (= c!35612 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun e!137195 () Bool)

(declare-fun b!210694 () Bool)

(assert (=> b!210694 (= e!137195 (= lt!108107 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun d!57917 () Bool)

(declare-fun e!137194 () Bool)

(assert (=> d!57917 e!137194))

(declare-fun res!102831 () Bool)

(assert (=> d!57917 (=> (not res!102831) (not e!137194))))

(assert (=> d!57917 (= res!102831 (not (contains!1398 lt!108107 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57917 (= lt!108107 e!137198)))

(declare-fun c!35610 () Bool)

(assert (=> d!57917 (= c!35610 (bvsge #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> d!57917 (validMask!0 mask!1149)))

(assert (=> d!57917 (= (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108107)))

(declare-fun b!210695 () Bool)

(assert (=> b!210695 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(assert (=> b!210695 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5082 lt!107897)))))

(assert (=> b!210695 (= e!137197 (= (apply!192 lt!108107 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)) (get!2551 (select (arr!4757 lt!107897) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!210696 () Bool)

(declare-fun lt!108104 () Unit!6391)

(declare-fun lt!108105 () Unit!6391)

(assert (=> b!210696 (= lt!108104 lt!108105)))

(declare-fun lt!108103 () ListLongMap!3079)

(declare-fun lt!108106 () (_ BitVec 64))

(declare-fun lt!108108 () V!6859)

(declare-fun lt!108109 () (_ BitVec 64))

(assert (=> b!210696 (not (contains!1398 (+!548 lt!108103 (tuple2!4153 lt!108109 lt!108108)) lt!108106))))

(assert (=> b!210696 (= lt!108105 (addStillNotContains!103 lt!108103 lt!108109 lt!108108 lt!108106))))

(assert (=> b!210696 (= lt!108106 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!210696 (= lt!108108 (get!2551 (select (arr!4757 lt!107897) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!210696 (= lt!108109 (select (arr!4756 _keys!825) #b00000000000000000000000000000000))))

(declare-fun call!19950 () ListLongMap!3079)

(assert (=> b!210696 (= lt!108103 call!19950)))

(assert (=> b!210696 (= e!137196 (+!548 call!19950 (tuple2!4153 (select (arr!4756 _keys!825) #b00000000000000000000000000000000) (get!2551 (select (arr!4757 lt!107897) #b00000000000000000000000000000000) (dynLambda!530 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!210697 () Bool)

(assert (=> b!210697 (= e!137196 call!19950)))

(declare-fun b!210698 () Bool)

(assert (=> b!210698 (= e!137200 e!137195)))

(declare-fun c!35609 () Bool)

(assert (=> b!210698 (= c!35609 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210699 () Bool)

(assert (=> b!210699 (= e!137194 e!137200)))

(declare-fun c!35611 () Bool)

(declare-fun e!137199 () Bool)

(assert (=> b!210699 (= c!35611 e!137199)))

(declare-fun res!102830 () Bool)

(assert (=> b!210699 (=> (not res!102830) (not e!137199))))

(assert (=> b!210699 (= res!102830 (bvslt #b00000000000000000000000000000000 (size!5081 _keys!825)))))

(declare-fun b!210700 () Bool)

(assert (=> b!210700 (= e!137199 (validKeyInArray!0 (select (arr!4756 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210700 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!210701 () Bool)

(assert (=> b!210701 (= e!137198 (ListLongMap!3080 Nil!3066))))

(declare-fun bm!19947 () Bool)

(assert (=> bm!19947 (= call!19950 (getCurrentListMapNoExtraKeys!485 _keys!825 lt!107897 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!210702 () Bool)

(assert (=> b!210702 (= e!137195 (isEmpty!498 lt!108107))))

(declare-fun b!210703 () Bool)

(declare-fun res!102832 () Bool)

(assert (=> b!210703 (=> (not res!102832) (not e!137194))))

(assert (=> b!210703 (= res!102832 (not (contains!1398 lt!108107 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57917 c!35610) b!210701))

(assert (= (and d!57917 (not c!35610)) b!210693))

(assert (= (and b!210693 c!35612) b!210696))

(assert (= (and b!210693 (not c!35612)) b!210697))

(assert (= (or b!210696 b!210697) bm!19947))

(assert (= (and d!57917 res!102831) b!210703))

(assert (= (and b!210703 res!102832) b!210699))

(assert (= (and b!210699 res!102830) b!210700))

(assert (= (and b!210699 c!35611) b!210692))

(assert (= (and b!210699 (not c!35611)) b!210698))

(assert (= (and b!210692 res!102829) b!210695))

(assert (= (and b!210698 c!35609) b!210694))

(assert (= (and b!210698 (not c!35609)) b!210702))

(declare-fun b_lambda!7649 () Bool)

(assert (=> (not b_lambda!7649) (not b!210695)))

(assert (=> b!210695 t!8017))

(declare-fun b_and!12359 () Bool)

(assert (= b_and!12357 (and (=> t!8017 result!4987) b_and!12359)))

(declare-fun b_lambda!7651 () Bool)

(assert (=> (not b_lambda!7651) (not b!210696)))

(assert (=> b!210696 t!8017))

(declare-fun b_and!12361 () Bool)

(assert (= b_and!12359 (and (=> t!8017 result!4987) b_and!12361)))

(assert (=> b!210700 m!238121))

(assert (=> b!210700 m!238121))

(assert (=> b!210700 m!238129))

(assert (=> b!210692 m!238121))

(assert (=> b!210692 m!238121))

(declare-fun m!238369 () Bool)

(assert (=> b!210692 m!238369))

(declare-fun m!238371 () Bool)

(assert (=> b!210703 m!238371))

(declare-fun m!238373 () Bool)

(assert (=> bm!19947 m!238373))

(assert (=> b!210694 m!238373))

(declare-fun m!238375 () Bool)

(assert (=> d!57917 m!238375))

(assert (=> d!57917 m!238027))

(assert (=> b!210695 m!238235))

(assert (=> b!210695 m!238233))

(assert (=> b!210695 m!238235))

(assert (=> b!210695 m!238237))

(assert (=> b!210695 m!238121))

(assert (=> b!210695 m!238233))

(assert (=> b!210695 m!238121))

(declare-fun m!238377 () Bool)

(assert (=> b!210695 m!238377))

(declare-fun m!238379 () Bool)

(assert (=> b!210696 m!238379))

(assert (=> b!210696 m!238235))

(assert (=> b!210696 m!238233))

(assert (=> b!210696 m!238235))

(assert (=> b!210696 m!238237))

(assert (=> b!210696 m!238121))

(declare-fun m!238381 () Bool)

(assert (=> b!210696 m!238381))

(assert (=> b!210696 m!238381))

(declare-fun m!238383 () Bool)

(assert (=> b!210696 m!238383))

(declare-fun m!238385 () Bool)

(assert (=> b!210696 m!238385))

(assert (=> b!210696 m!238233))

(declare-fun m!238387 () Bool)

(assert (=> b!210702 m!238387))

(assert (=> b!210693 m!238121))

(assert (=> b!210693 m!238121))

(assert (=> b!210693 m!238129))

(assert (=> b!210476 d!57917))

(declare-fun d!57919 () Bool)

(assert (=> d!57919 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!210480 d!57919))

(declare-fun b!210711 () Bool)

(declare-fun e!137205 () Bool)

(assert (=> b!210711 (= e!137205 tp_is_empty!5409)))

(declare-fun mapNonEmpty!9197 () Bool)

(declare-fun mapRes!9197 () Bool)

(declare-fun tp!19700 () Bool)

(declare-fun e!137206 () Bool)

(assert (=> mapNonEmpty!9197 (= mapRes!9197 (and tp!19700 e!137206))))

(declare-fun mapRest!9197 () (Array (_ BitVec 32) ValueCell!2361))

(declare-fun mapKey!9197 () (_ BitVec 32))

(declare-fun mapValue!9197 () ValueCell!2361)

(assert (=> mapNonEmpty!9197 (= mapRest!9191 (store mapRest!9197 mapKey!9197 mapValue!9197))))

(declare-fun b!210710 () Bool)

(assert (=> b!210710 (= e!137206 tp_is_empty!5409)))

(declare-fun condMapEmpty!9197 () Bool)

(declare-fun mapDefault!9197 () ValueCell!2361)

(assert (=> mapNonEmpty!9191 (= condMapEmpty!9197 (= mapRest!9191 ((as const (Array (_ BitVec 32) ValueCell!2361)) mapDefault!9197)))))

(assert (=> mapNonEmpty!9191 (= tp!19690 (and e!137205 mapRes!9197))))

(declare-fun mapIsEmpty!9197 () Bool)

(assert (=> mapIsEmpty!9197 mapRes!9197))

(assert (= (and mapNonEmpty!9191 condMapEmpty!9197) mapIsEmpty!9197))

(assert (= (and mapNonEmpty!9191 (not condMapEmpty!9197)) mapNonEmpty!9197))

(assert (= (and mapNonEmpty!9197 ((_ is ValueCellFull!2361) mapValue!9197)) b!210710))

(assert (= (and mapNonEmpty!9191 ((_ is ValueCellFull!2361) mapDefault!9197)) b!210711))

(declare-fun m!238389 () Bool)

(assert (=> mapNonEmpty!9197 m!238389))

(declare-fun b_lambda!7653 () Bool)

(assert (= b_lambda!7649 (or (and start!20966 b_free!5547) b_lambda!7653)))

(declare-fun b_lambda!7655 () Bool)

(assert (= b_lambda!7643 (or (and start!20966 b_free!5547) b_lambda!7655)))

(declare-fun b_lambda!7657 () Bool)

(assert (= b_lambda!7641 (or (and start!20966 b_free!5547) b_lambda!7657)))

(declare-fun b_lambda!7659 () Bool)

(assert (= b_lambda!7645 (or (and start!20966 b_free!5547) b_lambda!7659)))

(declare-fun b_lambda!7661 () Bool)

(assert (= b_lambda!7651 (or (and start!20966 b_free!5547) b_lambda!7661)))

(declare-fun b_lambda!7663 () Bool)

(assert (= b_lambda!7647 (or (and start!20966 b_free!5547) b_lambda!7663)))

(check-sat (not b!210658) (not d!57893) (not b!210650) (not d!57895) (not b_lambda!7663) (not b!210672) (not b_lambda!7659) (not d!57911) (not b!210702) (not bm!19947) (not b!210602) (not b!210547) (not b_next!5547) (not d!57913) (not b!210614) (not b!210694) (not b!210693) (not bm!19925) (not bm!19940) (not b!210669) (not b!210651) (not b!210696) (not b!210552) (not bm!19945) (not d!57909) (not bm!19924) (not b!210545) (not b!210605) (not b!210554) (not b!210546) (not b!210692) (not b!210649) (not b!210656) (not bm!19906) (not b!210553) (not b!210606) (not bm!19928) (not b_lambda!7657) (not mapNonEmpty!9197) (not b!210601) (not b!210671) (not b!210525) (not b!210550) (not bm!19938) (not b!210688) (not b!210700) (not b!210684) (not d!57889) (not d!57891) (not b!210555) (not d!57885) tp_is_empty!5409 (not d!57907) (not bm!19939) (not b!210556) (not b!210558) (not b!210536) (not b!210618) (not bm!19929) (not b!210539) (not b!210619) (not b!210703) (not d!57899) (not d!57887) (not b_lambda!7653) (not b_lambda!7661) (not bm!19909) (not b!210540) (not b!210549) (not b!210652) (not bm!19933) (not b!210648) (not d!57917) (not b!210695) (not b!210683) (not b!210659) (not b!210676) (not b!210613) (not b_lambda!7655) (not b!210675) (not bm!19941) (not d!57915) (not d!57897) (not bm!19944) (not b!210551) (not b!210660) (not b!210661) (not b!210548) (not b!210689) (not b!210557) b_and!12361 (not b!210522))
(check-sat b_and!12361 (not b_next!5547))
