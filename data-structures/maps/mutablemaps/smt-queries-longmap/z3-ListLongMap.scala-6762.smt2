; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84886 () Bool)

(assert start!84886)

(declare-fun mapNonEmpty!37092 () Bool)

(declare-fun mapRes!37092 () Bool)

(declare-fun tp!70164 () Bool)

(declare-fun e!559328 () Bool)

(assert (=> mapNonEmpty!37092 (= mapRes!37092 (and tp!70164 e!559328))))

(declare-datatypes ((V!36115 0))(
  ( (V!36116 (val!11725 Int)) )
))
(declare-datatypes ((ValueCell!11193 0))(
  ( (ValueCellFull!11193 (v!14301 V!36115)) (EmptyCell!11193) )
))
(declare-fun mapRest!37092 () (Array (_ BitVec 32) ValueCell!11193))

(declare-fun mapValue!37092 () ValueCell!11193)

(declare-datatypes ((array!62651 0))(
  ( (array!62652 (arr!30167 (Array (_ BitVec 32) ValueCell!11193)) (size!30647 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62651)

(declare-fun mapKey!37092 () (_ BitVec 32))

(assert (=> mapNonEmpty!37092 (= (arr!30167 _values!1551) (store mapRest!37092 mapKey!37092 mapValue!37092))))

(declare-fun b!991613 () Bool)

(declare-fun e!559324 () Bool)

(declare-fun tp_is_empty!23349 () Bool)

(assert (=> b!991613 (= e!559324 tp_is_empty!23349)))

(declare-fun res!662922 () Bool)

(declare-fun e!559326 () Bool)

(assert (=> start!84886 (=> (not res!662922) (not e!559326))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84886 (= res!662922 (validMask!0 mask!2471))))

(assert (=> start!84886 e!559326))

(assert (=> start!84886 true))

(declare-fun e!559325 () Bool)

(declare-fun array_inv!23161 (array!62651) Bool)

(assert (=> start!84886 (and (array_inv!23161 _values!1551) e!559325)))

(declare-datatypes ((array!62653 0))(
  ( (array!62654 (arr!30168 (Array (_ BitVec 32) (_ BitVec 64))) (size!30648 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62653)

(declare-fun array_inv!23162 (array!62653) Bool)

(assert (=> start!84886 (array_inv!23162 _keys!1945)))

(declare-fun b!991614 () Bool)

(declare-fun res!662921 () Bool)

(assert (=> b!991614 (=> (not res!662921) (not e!559326))))

(assert (=> b!991614 (= res!662921 (and (bvsle #b00000000000000000000000000000000 (size!30648 _keys!1945)) (bvslt (size!30648 _keys!1945) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!37092 () Bool)

(assert (=> mapIsEmpty!37092 mapRes!37092))

(declare-fun b!991615 () Bool)

(assert (=> b!991615 (= e!559325 (and e!559324 mapRes!37092))))

(declare-fun condMapEmpty!37092 () Bool)

(declare-fun mapDefault!37092 () ValueCell!11193)

(assert (=> b!991615 (= condMapEmpty!37092 (= (arr!30167 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11193)) mapDefault!37092)))))

(declare-fun b!991616 () Bool)

(declare-fun res!662924 () Bool)

(assert (=> b!991616 (=> (not res!662924) (not e!559326))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991616 (= res!662924 (and (= (size!30647 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30648 _keys!1945) (size!30647 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991617 () Bool)

(assert (=> b!991617 (= e!559328 tp_is_empty!23349)))

(declare-fun b!991618 () Bool)

(declare-fun e!559327 () Bool)

(declare-datatypes ((List!20977 0))(
  ( (Nil!20974) (Cons!20973 (h!22135 (_ BitVec 64)) (t!29968 List!20977)) )
))
(declare-fun contains!5740 (List!20977 (_ BitVec 64)) Bool)

(assert (=> b!991618 (= e!559327 (contains!5740 Nil!20974 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991619 () Bool)

(declare-fun res!662920 () Bool)

(assert (=> b!991619 (=> (not res!662920) (not e!559326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62653 (_ BitVec 32)) Bool)

(assert (=> b!991619 (= res!662920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991620 () Bool)

(declare-fun res!662923 () Bool)

(assert (=> b!991620 (=> (not res!662923) (not e!559326))))

(declare-fun noDuplicate!1389 (List!20977) Bool)

(assert (=> b!991620 (= res!662923 (noDuplicate!1389 Nil!20974))))

(declare-fun b!991621 () Bool)

(assert (=> b!991621 (= e!559326 e!559327)))

(declare-fun res!662919 () Bool)

(assert (=> b!991621 (=> res!662919 e!559327)))

(assert (=> b!991621 (= res!662919 (contains!5740 Nil!20974 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!84886 res!662922) b!991616))

(assert (= (and b!991616 res!662924) b!991619))

(assert (= (and b!991619 res!662920) b!991614))

(assert (= (and b!991614 res!662921) b!991620))

(assert (= (and b!991620 res!662923) b!991621))

(assert (= (and b!991621 (not res!662919)) b!991618))

(assert (= (and b!991615 condMapEmpty!37092) mapIsEmpty!37092))

(assert (= (and b!991615 (not condMapEmpty!37092)) mapNonEmpty!37092))

(get-info :version)

(assert (= (and mapNonEmpty!37092 ((_ is ValueCellFull!11193) mapValue!37092)) b!991617))

(assert (= (and b!991615 ((_ is ValueCellFull!11193) mapDefault!37092)) b!991613))

(assert (= start!84886 b!991615))

(declare-fun m!919537 () Bool)

(assert (=> b!991618 m!919537))

(declare-fun m!919539 () Bool)

(assert (=> b!991620 m!919539))

(declare-fun m!919541 () Bool)

(assert (=> b!991621 m!919541))

(declare-fun m!919543 () Bool)

(assert (=> mapNonEmpty!37092 m!919543))

(declare-fun m!919545 () Bool)

(assert (=> start!84886 m!919545))

(declare-fun m!919547 () Bool)

(assert (=> start!84886 m!919547))

(declare-fun m!919549 () Bool)

(assert (=> start!84886 m!919549))

(declare-fun m!919551 () Bool)

(assert (=> b!991619 m!919551))

(check-sat (not b!991618) (not b!991619) (not b!991620) (not start!84886) (not b!991621) (not mapNonEmpty!37092) tp_is_empty!23349)
(check-sat)
(get-model)

(declare-fun b!991657 () Bool)

(declare-fun e!559356 () Bool)

(declare-fun call!42085 () Bool)

(assert (=> b!991657 (= e!559356 call!42085)))

(declare-fun b!991658 () Bool)

(declare-fun e!559355 () Bool)

(assert (=> b!991658 (= e!559355 e!559356)))

(declare-fun lt!439962 () (_ BitVec 64))

(assert (=> b!991658 (= lt!439962 (select (arr!30168 _keys!1945) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32856 0))(
  ( (Unit!32857) )
))
(declare-fun lt!439963 () Unit!32856)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62653 (_ BitVec 64) (_ BitVec 32)) Unit!32856)

(assert (=> b!991658 (= lt!439963 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1945 lt!439962 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!991658 (arrayContainsKey!0 _keys!1945 lt!439962 #b00000000000000000000000000000000)))

(declare-fun lt!439964 () Unit!32856)

(assert (=> b!991658 (= lt!439964 lt!439963)))

(declare-fun res!662947 () Bool)

(declare-datatypes ((SeekEntryResult!9205 0))(
  ( (MissingZero!9205 (index!39190 (_ BitVec 32))) (Found!9205 (index!39191 (_ BitVec 32))) (Intermediate!9205 (undefined!10017 Bool) (index!39192 (_ BitVec 32)) (x!86279 (_ BitVec 32))) (Undefined!9205) (MissingVacant!9205 (index!39193 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62653 (_ BitVec 32)) SeekEntryResult!9205)

(assert (=> b!991658 (= res!662947 (= (seekEntryOrOpen!0 (select (arr!30168 _keys!1945) #b00000000000000000000000000000000) _keys!1945 mask!2471) (Found!9205 #b00000000000000000000000000000000)))))

(assert (=> b!991658 (=> (not res!662947) (not e!559356))))

(declare-fun d!117901 () Bool)

(declare-fun res!662948 () Bool)

(declare-fun e!559354 () Bool)

(assert (=> d!117901 (=> res!662948 e!559354)))

(assert (=> d!117901 (= res!662948 (bvsge #b00000000000000000000000000000000 (size!30648 _keys!1945)))))

(assert (=> d!117901 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471) e!559354)))

(declare-fun b!991659 () Bool)

(assert (=> b!991659 (= e!559355 call!42085)))

(declare-fun b!991660 () Bool)

(assert (=> b!991660 (= e!559354 e!559355)))

(declare-fun c!100554 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991660 (= c!100554 (validKeyInArray!0 (select (arr!30168 _keys!1945) #b00000000000000000000000000000000)))))

(declare-fun bm!42082 () Bool)

(assert (=> bm!42082 (= call!42085 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1945 mask!2471))))

(assert (= (and d!117901 (not res!662948)) b!991660))

(assert (= (and b!991660 c!100554) b!991658))

(assert (= (and b!991660 (not c!100554)) b!991659))

(assert (= (and b!991658 res!662947) b!991657))

(assert (= (or b!991657 b!991659) bm!42082))

(declare-fun m!919569 () Bool)

(assert (=> b!991658 m!919569))

(declare-fun m!919571 () Bool)

(assert (=> b!991658 m!919571))

(declare-fun m!919573 () Bool)

(assert (=> b!991658 m!919573))

(assert (=> b!991658 m!919569))

(declare-fun m!919575 () Bool)

(assert (=> b!991658 m!919575))

(assert (=> b!991660 m!919569))

(assert (=> b!991660 m!919569))

(declare-fun m!919577 () Bool)

(assert (=> b!991660 m!919577))

(declare-fun m!919579 () Bool)

(assert (=> bm!42082 m!919579))

(assert (=> b!991619 d!117901))

(declare-fun d!117903 () Bool)

(assert (=> d!117903 (= (validMask!0 mask!2471) (and (or (= mask!2471 #b00000000000000000000000000000111) (= mask!2471 #b00000000000000000000000000001111) (= mask!2471 #b00000000000000000000000000011111) (= mask!2471 #b00000000000000000000000000111111) (= mask!2471 #b00000000000000000000000001111111) (= mask!2471 #b00000000000000000000000011111111) (= mask!2471 #b00000000000000000000000111111111) (= mask!2471 #b00000000000000000000001111111111) (= mask!2471 #b00000000000000000000011111111111) (= mask!2471 #b00000000000000000000111111111111) (= mask!2471 #b00000000000000000001111111111111) (= mask!2471 #b00000000000000000011111111111111) (= mask!2471 #b00000000000000000111111111111111) (= mask!2471 #b00000000000000001111111111111111) (= mask!2471 #b00000000000000011111111111111111) (= mask!2471 #b00000000000000111111111111111111) (= mask!2471 #b00000000000001111111111111111111) (= mask!2471 #b00000000000011111111111111111111) (= mask!2471 #b00000000000111111111111111111111) (= mask!2471 #b00000000001111111111111111111111) (= mask!2471 #b00000000011111111111111111111111) (= mask!2471 #b00000000111111111111111111111111) (= mask!2471 #b00000001111111111111111111111111) (= mask!2471 #b00000011111111111111111111111111) (= mask!2471 #b00000111111111111111111111111111) (= mask!2471 #b00001111111111111111111111111111) (= mask!2471 #b00011111111111111111111111111111) (= mask!2471 #b00111111111111111111111111111111)) (bvsle mask!2471 #b00111111111111111111111111111111)))))

(assert (=> start!84886 d!117903))

(declare-fun d!117905 () Bool)

(assert (=> d!117905 (= (array_inv!23161 _values!1551) (bvsge (size!30647 _values!1551) #b00000000000000000000000000000000))))

(assert (=> start!84886 d!117905))

(declare-fun d!117907 () Bool)

(assert (=> d!117907 (= (array_inv!23162 _keys!1945) (bvsge (size!30648 _keys!1945) #b00000000000000000000000000000000))))

(assert (=> start!84886 d!117907))

(declare-fun d!117909 () Bool)

(declare-fun res!662953 () Bool)

(declare-fun e!559361 () Bool)

(assert (=> d!117909 (=> res!662953 e!559361)))

(assert (=> d!117909 (= res!662953 ((_ is Nil!20974) Nil!20974))))

(assert (=> d!117909 (= (noDuplicate!1389 Nil!20974) e!559361)))

(declare-fun b!991665 () Bool)

(declare-fun e!559362 () Bool)

(assert (=> b!991665 (= e!559361 e!559362)))

(declare-fun res!662954 () Bool)

(assert (=> b!991665 (=> (not res!662954) (not e!559362))))

(assert (=> b!991665 (= res!662954 (not (contains!5740 (t!29968 Nil!20974) (h!22135 Nil!20974))))))

(declare-fun b!991666 () Bool)

(assert (=> b!991666 (= e!559362 (noDuplicate!1389 (t!29968 Nil!20974)))))

(assert (= (and d!117909 (not res!662953)) b!991665))

(assert (= (and b!991665 res!662954) b!991666))

(declare-fun m!919581 () Bool)

(assert (=> b!991665 m!919581))

(declare-fun m!919583 () Bool)

(assert (=> b!991666 m!919583))

(assert (=> b!991620 d!117909))

(declare-fun d!117911 () Bool)

(declare-fun lt!439967 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!428 (List!20977) (InoxSet (_ BitVec 64)))

(assert (=> d!117911 (= lt!439967 (select (content!428 Nil!20974) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!559368 () Bool)

(assert (=> d!117911 (= lt!439967 e!559368)))

(declare-fun res!662960 () Bool)

(assert (=> d!117911 (=> (not res!662960) (not e!559368))))

(assert (=> d!117911 (= res!662960 ((_ is Cons!20973) Nil!20974))))

(assert (=> d!117911 (= (contains!5740 Nil!20974 #b0000000000000000000000000000000000000000000000000000000000000000) lt!439967)))

(declare-fun b!991671 () Bool)

(declare-fun e!559367 () Bool)

(assert (=> b!991671 (= e!559368 e!559367)))

(declare-fun res!662959 () Bool)

(assert (=> b!991671 (=> res!662959 e!559367)))

(assert (=> b!991671 (= res!662959 (= (h!22135 Nil!20974) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991672 () Bool)

(assert (=> b!991672 (= e!559367 (contains!5740 (t!29968 Nil!20974) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!117911 res!662960) b!991671))

(assert (= (and b!991671 (not res!662959)) b!991672))

(declare-fun m!919585 () Bool)

(assert (=> d!117911 m!919585))

(declare-fun m!919587 () Bool)

(assert (=> d!117911 m!919587))

(declare-fun m!919589 () Bool)

(assert (=> b!991672 m!919589))

(assert (=> b!991621 d!117911))

(declare-fun d!117913 () Bool)

(declare-fun lt!439968 () Bool)

(assert (=> d!117913 (= lt!439968 (select (content!428 Nil!20974) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!559370 () Bool)

(assert (=> d!117913 (= lt!439968 e!559370)))

(declare-fun res!662962 () Bool)

(assert (=> d!117913 (=> (not res!662962) (not e!559370))))

(assert (=> d!117913 (= res!662962 ((_ is Cons!20973) Nil!20974))))

(assert (=> d!117913 (= (contains!5740 Nil!20974 #b1000000000000000000000000000000000000000000000000000000000000000) lt!439968)))

(declare-fun b!991673 () Bool)

(declare-fun e!559369 () Bool)

(assert (=> b!991673 (= e!559370 e!559369)))

(declare-fun res!662961 () Bool)

(assert (=> b!991673 (=> res!662961 e!559369)))

(assert (=> b!991673 (= res!662961 (= (h!22135 Nil!20974) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991674 () Bool)

(assert (=> b!991674 (= e!559369 (contains!5740 (t!29968 Nil!20974) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!117913 res!662962) b!991673))

(assert (= (and b!991673 (not res!662961)) b!991674))

(assert (=> d!117913 m!919585))

(declare-fun m!919591 () Bool)

(assert (=> d!117913 m!919591))

(declare-fun m!919593 () Bool)

(assert (=> b!991674 m!919593))

(assert (=> b!991618 d!117913))

(declare-fun b!991681 () Bool)

(declare-fun e!559376 () Bool)

(assert (=> b!991681 (= e!559376 tp_is_empty!23349)))

(declare-fun mapNonEmpty!37098 () Bool)

(declare-fun mapRes!37098 () Bool)

(declare-fun tp!70170 () Bool)

(assert (=> mapNonEmpty!37098 (= mapRes!37098 (and tp!70170 e!559376))))

(declare-fun mapKey!37098 () (_ BitVec 32))

(declare-fun mapValue!37098 () ValueCell!11193)

(declare-fun mapRest!37098 () (Array (_ BitVec 32) ValueCell!11193))

(assert (=> mapNonEmpty!37098 (= mapRest!37092 (store mapRest!37098 mapKey!37098 mapValue!37098))))

(declare-fun b!991682 () Bool)

(declare-fun e!559375 () Bool)

(assert (=> b!991682 (= e!559375 tp_is_empty!23349)))

(declare-fun condMapEmpty!37098 () Bool)

(declare-fun mapDefault!37098 () ValueCell!11193)

(assert (=> mapNonEmpty!37092 (= condMapEmpty!37098 (= mapRest!37092 ((as const (Array (_ BitVec 32) ValueCell!11193)) mapDefault!37098)))))

(assert (=> mapNonEmpty!37092 (= tp!70164 (and e!559375 mapRes!37098))))

(declare-fun mapIsEmpty!37098 () Bool)

(assert (=> mapIsEmpty!37098 mapRes!37098))

(assert (= (and mapNonEmpty!37092 condMapEmpty!37098) mapIsEmpty!37098))

(assert (= (and mapNonEmpty!37092 (not condMapEmpty!37098)) mapNonEmpty!37098))

(assert (= (and mapNonEmpty!37098 ((_ is ValueCellFull!11193) mapValue!37098)) b!991681))

(assert (= (and mapNonEmpty!37092 ((_ is ValueCellFull!11193) mapDefault!37098)) b!991682))

(declare-fun m!919595 () Bool)

(assert (=> mapNonEmpty!37098 m!919595))

(check-sat (not d!117913) tp_is_empty!23349 (not bm!42082) (not b!991674) (not b!991672) (not mapNonEmpty!37098) (not b!991665) (not d!117911) (not b!991658) (not b!991666) (not b!991660))
(check-sat)
