; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83660 () Bool)

(assert start!83660)

(declare-fun b!976854 () Bool)

(declare-fun res!653963 () Bool)

(declare-fun e!550633 () Bool)

(assert (=> b!976854 (=> (not res!653963) (not e!550633))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!34947 0))(
  ( (V!34948 (val!11287 Int)) )
))
(declare-datatypes ((ValueCell!10755 0))(
  ( (ValueCellFull!10755 (v!13848 V!34947)) (EmptyCell!10755) )
))
(declare-datatypes ((array!60957 0))(
  ( (array!60958 (arr!29336 (Array (_ BitVec 32) ValueCell!10755)) (size!29816 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60957)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!60959 0))(
  ( (array!60960 (arr!29337 (Array (_ BitVec 32) (_ BitVec 64))) (size!29817 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60959)

(assert (=> b!976854 (= res!653963 (and (= (size!29816 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29817 _keys!1544) (size!29816 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!976855 () Bool)

(assert (=> b!976855 (= e!550633 (bvsgt #b00000000000000000000000000000000 (size!29817 _keys!1544)))))

(declare-fun mapNonEmpty!35726 () Bool)

(declare-fun mapRes!35726 () Bool)

(declare-fun tp!67979 () Bool)

(declare-fun e!550631 () Bool)

(assert (=> mapNonEmpty!35726 (= mapRes!35726 (and tp!67979 e!550631))))

(declare-fun mapValue!35726 () ValueCell!10755)

(declare-fun mapRest!35726 () (Array (_ BitVec 32) ValueCell!10755))

(declare-fun mapKey!35726 () (_ BitVec 32))

(assert (=> mapNonEmpty!35726 (= (arr!29336 _values!1278) (store mapRest!35726 mapKey!35726 mapValue!35726))))

(declare-fun b!976856 () Bool)

(declare-fun e!550634 () Bool)

(declare-fun tp_is_empty!22473 () Bool)

(assert (=> b!976856 (= e!550634 tp_is_empty!22473)))

(declare-fun mapIsEmpty!35726 () Bool)

(assert (=> mapIsEmpty!35726 mapRes!35726))

(declare-fun res!653965 () Bool)

(assert (=> start!83660 (=> (not res!653965) (not e!550633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83660 (= res!653965 (validMask!0 mask!1948))))

(assert (=> start!83660 e!550633))

(assert (=> start!83660 true))

(declare-fun e!550635 () Bool)

(declare-fun array_inv!22585 (array!60957) Bool)

(assert (=> start!83660 (and (array_inv!22585 _values!1278) e!550635)))

(declare-fun array_inv!22586 (array!60959) Bool)

(assert (=> start!83660 (array_inv!22586 _keys!1544)))

(declare-fun b!976857 () Bool)

(declare-fun res!653964 () Bool)

(assert (=> b!976857 (=> (not res!653964) (not e!550633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60959 (_ BitVec 32)) Bool)

(assert (=> b!976857 (= res!653964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!976858 () Bool)

(assert (=> b!976858 (= e!550631 tp_is_empty!22473)))

(declare-fun b!976859 () Bool)

(assert (=> b!976859 (= e!550635 (and e!550634 mapRes!35726))))

(declare-fun condMapEmpty!35726 () Bool)

(declare-fun mapDefault!35726 () ValueCell!10755)

(assert (=> b!976859 (= condMapEmpty!35726 (= (arr!29336 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10755)) mapDefault!35726)))))

(assert (= (and start!83660 res!653965) b!976854))

(assert (= (and b!976854 res!653963) b!976857))

(assert (= (and b!976857 res!653964) b!976855))

(assert (= (and b!976859 condMapEmpty!35726) mapIsEmpty!35726))

(assert (= (and b!976859 (not condMapEmpty!35726)) mapNonEmpty!35726))

(get-info :version)

(assert (= (and mapNonEmpty!35726 ((_ is ValueCellFull!10755) mapValue!35726)) b!976858))

(assert (= (and b!976859 ((_ is ValueCellFull!10755) mapDefault!35726)) b!976856))

(assert (= start!83660 b!976859))

(declare-fun m!904387 () Bool)

(assert (=> mapNonEmpty!35726 m!904387))

(declare-fun m!904389 () Bool)

(assert (=> start!83660 m!904389))

(declare-fun m!904391 () Bool)

(assert (=> start!83660 m!904391))

(declare-fun m!904393 () Bool)

(assert (=> start!83660 m!904393))

(declare-fun m!904395 () Bool)

(assert (=> b!976857 m!904395))

(check-sat (not start!83660) (not b!976857) (not mapNonEmpty!35726) tp_is_empty!22473)
(check-sat)
(get-model)

(declare-fun d!116547 () Bool)

(assert (=> d!116547 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!83660 d!116547))

(declare-fun d!116549 () Bool)

(assert (=> d!116549 (= (array_inv!22585 _values!1278) (bvsge (size!29816 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!83660 d!116549))

(declare-fun d!116551 () Bool)

(assert (=> d!116551 (= (array_inv!22586 _keys!1544) (bvsge (size!29817 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!83660 d!116551))

(declare-fun b!976886 () Bool)

(declare-fun e!550658 () Bool)

(declare-fun e!550657 () Bool)

(assert (=> b!976886 (= e!550658 e!550657)))

(declare-fun c!99931 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976886 (= c!99931 (validKeyInArray!0 (select (arr!29337 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun bm!41781 () Bool)

(declare-fun call!41784 () Bool)

(assert (=> bm!41781 (= call!41784 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun d!116553 () Bool)

(declare-fun res!653979 () Bool)

(assert (=> d!116553 (=> res!653979 e!550658)))

(assert (=> d!116553 (= res!653979 (bvsge #b00000000000000000000000000000000 (size!29817 _keys!1544)))))

(assert (=> d!116553 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!550658)))

(declare-fun b!976887 () Bool)

(declare-fun e!550659 () Bool)

(assert (=> b!976887 (= e!550659 call!41784)))

(declare-fun b!976888 () Bool)

(assert (=> b!976888 (= e!550657 e!550659)))

(declare-fun lt!433362 () (_ BitVec 64))

(assert (=> b!976888 (= lt!433362 (select (arr!29337 _keys!1544) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32443 0))(
  ( (Unit!32444) )
))
(declare-fun lt!433360 () Unit!32443)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!60959 (_ BitVec 64) (_ BitVec 32)) Unit!32443)

(assert (=> b!976888 (= lt!433360 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!433362 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!60959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!976888 (arrayContainsKey!0 _keys!1544 lt!433362 #b00000000000000000000000000000000)))

(declare-fun lt!433361 () Unit!32443)

(assert (=> b!976888 (= lt!433361 lt!433360)))

(declare-fun res!653980 () Bool)

(declare-datatypes ((SeekEntryResult!9190 0))(
  ( (MissingZero!9190 (index!39130 (_ BitVec 32))) (Found!9190 (index!39131 (_ BitVec 32))) (Intermediate!9190 (undefined!10002 Bool) (index!39132 (_ BitVec 32)) (x!84514 (_ BitVec 32))) (Undefined!9190) (MissingVacant!9190 (index!39133 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!60959 (_ BitVec 32)) SeekEntryResult!9190)

(assert (=> b!976888 (= res!653980 (= (seekEntryOrOpen!0 (select (arr!29337 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9190 #b00000000000000000000000000000000)))))

(assert (=> b!976888 (=> (not res!653980) (not e!550659))))

(declare-fun b!976889 () Bool)

(assert (=> b!976889 (= e!550657 call!41784)))

(assert (= (and d!116553 (not res!653979)) b!976886))

(assert (= (and b!976886 c!99931) b!976888))

(assert (= (and b!976886 (not c!99931)) b!976889))

(assert (= (and b!976888 res!653980) b!976887))

(assert (= (or b!976887 b!976889) bm!41781))

(declare-fun m!904407 () Bool)

(assert (=> b!976886 m!904407))

(assert (=> b!976886 m!904407))

(declare-fun m!904409 () Bool)

(assert (=> b!976886 m!904409))

(declare-fun m!904411 () Bool)

(assert (=> bm!41781 m!904411))

(assert (=> b!976888 m!904407))

(declare-fun m!904413 () Bool)

(assert (=> b!976888 m!904413))

(declare-fun m!904415 () Bool)

(assert (=> b!976888 m!904415))

(assert (=> b!976888 m!904407))

(declare-fun m!904417 () Bool)

(assert (=> b!976888 m!904417))

(assert (=> b!976857 d!116553))

(declare-fun mapIsEmpty!35732 () Bool)

(declare-fun mapRes!35732 () Bool)

(assert (=> mapIsEmpty!35732 mapRes!35732))

(declare-fun mapNonEmpty!35732 () Bool)

(declare-fun tp!67985 () Bool)

(declare-fun e!550665 () Bool)

(assert (=> mapNonEmpty!35732 (= mapRes!35732 (and tp!67985 e!550665))))

(declare-fun mapValue!35732 () ValueCell!10755)

(declare-fun mapKey!35732 () (_ BitVec 32))

(declare-fun mapRest!35732 () (Array (_ BitVec 32) ValueCell!10755))

(assert (=> mapNonEmpty!35732 (= mapRest!35726 (store mapRest!35732 mapKey!35732 mapValue!35732))))

(declare-fun b!976897 () Bool)

(declare-fun e!550664 () Bool)

(assert (=> b!976897 (= e!550664 tp_is_empty!22473)))

(declare-fun condMapEmpty!35732 () Bool)

(declare-fun mapDefault!35732 () ValueCell!10755)

(assert (=> mapNonEmpty!35726 (= condMapEmpty!35732 (= mapRest!35726 ((as const (Array (_ BitVec 32) ValueCell!10755)) mapDefault!35732)))))

(assert (=> mapNonEmpty!35726 (= tp!67979 (and e!550664 mapRes!35732))))

(declare-fun b!976896 () Bool)

(assert (=> b!976896 (= e!550665 tp_is_empty!22473)))

(assert (= (and mapNonEmpty!35726 condMapEmpty!35732) mapIsEmpty!35732))

(assert (= (and mapNonEmpty!35726 (not condMapEmpty!35732)) mapNonEmpty!35732))

(assert (= (and mapNonEmpty!35732 ((_ is ValueCellFull!10755) mapValue!35732)) b!976896))

(assert (= (and mapNonEmpty!35726 ((_ is ValueCellFull!10755) mapDefault!35732)) b!976897))

(declare-fun m!904419 () Bool)

(assert (=> mapNonEmpty!35732 m!904419))

(check-sat (not b!976886) (not b!976888) (not bm!41781) (not mapNonEmpty!35732) tp_is_empty!22473)
(check-sat)
