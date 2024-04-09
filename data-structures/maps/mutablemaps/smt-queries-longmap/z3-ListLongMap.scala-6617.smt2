; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83674 () Bool)

(assert start!83674)

(declare-fun b!976928 () Bool)

(declare-fun e!550692 () Bool)

(declare-fun tp_is_empty!22479 () Bool)

(assert (=> b!976928 (= e!550692 tp_is_empty!22479)))

(declare-fun b!976929 () Bool)

(declare-fun res!653998 () Bool)

(declare-fun e!550691 () Bool)

(assert (=> b!976929 (=> (not res!653998) (not e!550691))))

(declare-datatypes ((array!60971 0))(
  ( (array!60972 (arr!29342 (Array (_ BitVec 32) (_ BitVec 64))) (size!29822 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60971)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60971 (_ BitVec 32)) Bool)

(assert (=> b!976929 (= res!653998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!35738 () Bool)

(declare-fun mapRes!35738 () Bool)

(assert (=> mapIsEmpty!35738 mapRes!35738))

(declare-fun res!653997 () Bool)

(assert (=> start!83674 (=> (not res!653997) (not e!550691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83674 (= res!653997 (validMask!0 mask!1948))))

(assert (=> start!83674 e!550691))

(assert (=> start!83674 true))

(declare-datatypes ((V!34955 0))(
  ( (V!34956 (val!11290 Int)) )
))
(declare-datatypes ((ValueCell!10758 0))(
  ( (ValueCellFull!10758 (v!13851 V!34955)) (EmptyCell!10758) )
))
(declare-datatypes ((array!60973 0))(
  ( (array!60974 (arr!29343 (Array (_ BitVec 32) ValueCell!10758)) (size!29823 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60973)

(declare-fun e!550693 () Bool)

(declare-fun array_inv!22589 (array!60973) Bool)

(assert (=> start!83674 (and (array_inv!22589 _values!1278) e!550693)))

(declare-fun array_inv!22590 (array!60971) Bool)

(assert (=> start!83674 (array_inv!22590 _keys!1544)))

(declare-fun b!976930 () Bool)

(declare-fun e!550695 () Bool)

(assert (=> b!976930 (= e!550695 tp_is_empty!22479)))

(declare-fun b!976931 () Bool)

(assert (=> b!976931 (= e!550691 (and (bvsle #b00000000000000000000000000000000 (size!29822 _keys!1544)) (bvsge (size!29822 _keys!1544) #b01111111111111111111111111111111)))))

(declare-fun b!976932 () Bool)

(assert (=> b!976932 (= e!550693 (and e!550695 mapRes!35738))))

(declare-fun condMapEmpty!35738 () Bool)

(declare-fun mapDefault!35738 () ValueCell!10758)

(assert (=> b!976932 (= condMapEmpty!35738 (= (arr!29343 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10758)) mapDefault!35738)))))

(declare-fun b!976933 () Bool)

(declare-fun res!653996 () Bool)

(assert (=> b!976933 (=> (not res!653996) (not e!550691))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!976933 (= res!653996 (and (= (size!29823 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29822 _keys!1544) (size!29823 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35738 () Bool)

(declare-fun tp!67991 () Bool)

(assert (=> mapNonEmpty!35738 (= mapRes!35738 (and tp!67991 e!550692))))

(declare-fun mapValue!35738 () ValueCell!10758)

(declare-fun mapKey!35738 () (_ BitVec 32))

(declare-fun mapRest!35738 () (Array (_ BitVec 32) ValueCell!10758))

(assert (=> mapNonEmpty!35738 (= (arr!29343 _values!1278) (store mapRest!35738 mapKey!35738 mapValue!35738))))

(assert (= (and start!83674 res!653997) b!976933))

(assert (= (and b!976933 res!653996) b!976929))

(assert (= (and b!976929 res!653998) b!976931))

(assert (= (and b!976932 condMapEmpty!35738) mapIsEmpty!35738))

(assert (= (and b!976932 (not condMapEmpty!35738)) mapNonEmpty!35738))

(get-info :version)

(assert (= (and mapNonEmpty!35738 ((_ is ValueCellFull!10758) mapValue!35738)) b!976928))

(assert (= (and b!976932 ((_ is ValueCellFull!10758) mapDefault!35738)) b!976930))

(assert (= start!83674 b!976932))

(declare-fun m!904431 () Bool)

(assert (=> b!976929 m!904431))

(declare-fun m!904433 () Bool)

(assert (=> start!83674 m!904433))

(declare-fun m!904435 () Bool)

(assert (=> start!83674 m!904435))

(declare-fun m!904437 () Bool)

(assert (=> start!83674 m!904437))

(declare-fun m!904439 () Bool)

(assert (=> mapNonEmpty!35738 m!904439))

(check-sat (not b!976929) (not start!83674) (not mapNonEmpty!35738) tp_is_empty!22479)
(check-sat)
(get-model)

(declare-fun b!976960 () Bool)

(declare-fun e!550719 () Bool)

(declare-fun call!41787 () Bool)

(assert (=> b!976960 (= e!550719 call!41787)))

(declare-fun b!976961 () Bool)

(declare-fun e!550718 () Bool)

(declare-fun e!550717 () Bool)

(assert (=> b!976961 (= e!550718 e!550717)))

(declare-fun c!99934 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976961 (= c!99934 (validKeyInArray!0 (select (arr!29342 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!976962 () Bool)

(assert (=> b!976962 (= e!550717 call!41787)))

(declare-fun d!116557 () Bool)

(declare-fun res!654013 () Bool)

(assert (=> d!116557 (=> res!654013 e!550718)))

(assert (=> d!116557 (= res!654013 (bvsge #b00000000000000000000000000000000 (size!29822 _keys!1544)))))

(assert (=> d!116557 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!550718)))

(declare-fun bm!41784 () Bool)

(assert (=> bm!41784 (= call!41787 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!976963 () Bool)

(assert (=> b!976963 (= e!550717 e!550719)))

(declare-fun lt!433371 () (_ BitVec 64))

(assert (=> b!976963 (= lt!433371 (select (arr!29342 _keys!1544) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32445 0))(
  ( (Unit!32446) )
))
(declare-fun lt!433370 () Unit!32445)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!60971 (_ BitVec 64) (_ BitVec 32)) Unit!32445)

(assert (=> b!976963 (= lt!433370 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!433371 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!60971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!976963 (arrayContainsKey!0 _keys!1544 lt!433371 #b00000000000000000000000000000000)))

(declare-fun lt!433369 () Unit!32445)

(assert (=> b!976963 (= lt!433369 lt!433370)))

(declare-fun res!654012 () Bool)

(declare-datatypes ((SeekEntryResult!9191 0))(
  ( (MissingZero!9191 (index!39134 (_ BitVec 32))) (Found!9191 (index!39135 (_ BitVec 32))) (Intermediate!9191 (undefined!10003 Bool) (index!39136 (_ BitVec 32)) (x!84525 (_ BitVec 32))) (Undefined!9191) (MissingVacant!9191 (index!39137 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!60971 (_ BitVec 32)) SeekEntryResult!9191)

(assert (=> b!976963 (= res!654012 (= (seekEntryOrOpen!0 (select (arr!29342 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9191 #b00000000000000000000000000000000)))))

(assert (=> b!976963 (=> (not res!654012) (not e!550719))))

(assert (= (and d!116557 (not res!654013)) b!976961))

(assert (= (and b!976961 c!99934) b!976963))

(assert (= (and b!976961 (not c!99934)) b!976962))

(assert (= (and b!976963 res!654012) b!976960))

(assert (= (or b!976960 b!976962) bm!41784))

(declare-fun m!904451 () Bool)

(assert (=> b!976961 m!904451))

(assert (=> b!976961 m!904451))

(declare-fun m!904453 () Bool)

(assert (=> b!976961 m!904453))

(declare-fun m!904455 () Bool)

(assert (=> bm!41784 m!904455))

(assert (=> b!976963 m!904451))

(declare-fun m!904457 () Bool)

(assert (=> b!976963 m!904457))

(declare-fun m!904459 () Bool)

(assert (=> b!976963 m!904459))

(assert (=> b!976963 m!904451))

(declare-fun m!904461 () Bool)

(assert (=> b!976963 m!904461))

(assert (=> b!976929 d!116557))

(declare-fun d!116559 () Bool)

(assert (=> d!116559 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!83674 d!116559))

(declare-fun d!116561 () Bool)

(assert (=> d!116561 (= (array_inv!22589 _values!1278) (bvsge (size!29823 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!83674 d!116561))

(declare-fun d!116563 () Bool)

(assert (=> d!116563 (= (array_inv!22590 _keys!1544) (bvsge (size!29822 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!83674 d!116563))

(declare-fun b!976971 () Bool)

(declare-fun e!550724 () Bool)

(assert (=> b!976971 (= e!550724 tp_is_empty!22479)))

(declare-fun condMapEmpty!35744 () Bool)

(declare-fun mapDefault!35744 () ValueCell!10758)

(assert (=> mapNonEmpty!35738 (= condMapEmpty!35744 (= mapRest!35738 ((as const (Array (_ BitVec 32) ValueCell!10758)) mapDefault!35744)))))

(declare-fun mapRes!35744 () Bool)

(assert (=> mapNonEmpty!35738 (= tp!67991 (and e!550724 mapRes!35744))))

(declare-fun mapNonEmpty!35744 () Bool)

(declare-fun tp!67997 () Bool)

(declare-fun e!550725 () Bool)

(assert (=> mapNonEmpty!35744 (= mapRes!35744 (and tp!67997 e!550725))))

(declare-fun mapRest!35744 () (Array (_ BitVec 32) ValueCell!10758))

(declare-fun mapKey!35744 () (_ BitVec 32))

(declare-fun mapValue!35744 () ValueCell!10758)

(assert (=> mapNonEmpty!35744 (= mapRest!35738 (store mapRest!35744 mapKey!35744 mapValue!35744))))

(declare-fun b!976970 () Bool)

(assert (=> b!976970 (= e!550725 tp_is_empty!22479)))

(declare-fun mapIsEmpty!35744 () Bool)

(assert (=> mapIsEmpty!35744 mapRes!35744))

(assert (= (and mapNonEmpty!35738 condMapEmpty!35744) mapIsEmpty!35744))

(assert (= (and mapNonEmpty!35738 (not condMapEmpty!35744)) mapNonEmpty!35744))

(assert (= (and mapNonEmpty!35744 ((_ is ValueCellFull!10758) mapValue!35744)) b!976970))

(assert (= (and mapNonEmpty!35738 ((_ is ValueCellFull!10758) mapDefault!35744)) b!976971))

(declare-fun m!904463 () Bool)

(assert (=> mapNonEmpty!35744 m!904463))

(check-sat (not mapNonEmpty!35744) (not b!976963) tp_is_empty!22479 (not bm!41784) (not b!976961))
(check-sat)
