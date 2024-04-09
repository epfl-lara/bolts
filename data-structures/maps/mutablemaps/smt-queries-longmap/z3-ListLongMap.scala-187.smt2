; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3720 () Bool)

(assert start!3720)

(declare-fun b!26028 () Bool)

(declare-fun e!16890 () Bool)

(declare-fun tp_is_empty!1065 () Bool)

(assert (=> b!26028 (= e!16890 tp_is_empty!1065)))

(declare-fun b!26029 () Bool)

(declare-fun e!16892 () Bool)

(declare-fun mapRes!1108 () Bool)

(assert (=> b!26029 (= e!16892 (and e!16890 mapRes!1108))))

(declare-fun condMapEmpty!1108 () Bool)

(declare-datatypes ((V!1245 0))(
  ( (V!1246 (val!559 Int)) )
))
(declare-datatypes ((ValueCell!333 0))(
  ( (ValueCellFull!333 (v!1644 V!1245)) (EmptyCell!333) )
))
(declare-datatypes ((array!1365 0))(
  ( (array!1366 (arr!642 (Array (_ BitVec 32) ValueCell!333)) (size!743 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1365)

(declare-fun mapDefault!1108 () ValueCell!333)

(assert (=> b!26029 (= condMapEmpty!1108 (= (arr!642 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!333)) mapDefault!1108)))))

(declare-fun b!26030 () Bool)

(declare-fun e!16888 () Bool)

(assert (=> b!26030 (= e!16888 tp_is_empty!1065)))

(declare-fun b!26031 () Bool)

(declare-fun res!15459 () Bool)

(declare-fun e!16889 () Bool)

(assert (=> b!26031 (=> (not res!15459) (not e!16889))))

(declare-datatypes ((array!1367 0))(
  ( (array!1368 (arr!643 (Array (_ BitVec 32) (_ BitVec 64))) (size!744 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1367)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1367 (_ BitVec 32)) Bool)

(assert (=> b!26031 (= res!15459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1108 () Bool)

(declare-fun tp!3628 () Bool)

(assert (=> mapNonEmpty!1108 (= mapRes!1108 (and tp!3628 e!16888))))

(declare-fun mapRest!1108 () (Array (_ BitVec 32) ValueCell!333))

(declare-fun mapKey!1108 () (_ BitVec 32))

(declare-fun mapValue!1108 () ValueCell!333)

(assert (=> mapNonEmpty!1108 (= (arr!642 _values!1501) (store mapRest!1108 mapKey!1108 mapValue!1108))))

(declare-fun mapIsEmpty!1108 () Bool)

(assert (=> mapIsEmpty!1108 mapRes!1108))

(declare-fun res!15460 () Bool)

(assert (=> start!3720 (=> (not res!15460) (not e!16889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3720 (= res!15460 (validMask!0 mask!2294))))

(assert (=> start!3720 e!16889))

(assert (=> start!3720 true))

(declare-fun array_inv!445 (array!1365) Bool)

(assert (=> start!3720 (and (array_inv!445 _values!1501) e!16892)))

(declare-fun array_inv!446 (array!1367) Bool)

(assert (=> start!3720 (array_inv!446 _keys!1833)))

(declare-fun b!26032 () Bool)

(declare-fun res!15461 () Bool)

(assert (=> b!26032 (=> (not res!15461) (not e!16889))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26032 (= res!15461 (and (= (size!743 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!744 _keys!1833) (size!743 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26033 () Bool)

(declare-datatypes ((List!573 0))(
  ( (Nil!570) (Cons!569 (h!1136 (_ BitVec 64)) (t!3262 List!573)) )
))
(declare-fun noDuplicate!9 (List!573) Bool)

(assert (=> b!26033 (= e!16889 (not (noDuplicate!9 Nil!570)))))

(declare-fun b!26034 () Bool)

(declare-fun res!15458 () Bool)

(assert (=> b!26034 (=> (not res!15458) (not e!16889))))

(assert (=> b!26034 (= res!15458 (and (bvsle #b00000000000000000000000000000000 (size!744 _keys!1833)) (bvslt (size!744 _keys!1833) #b01111111111111111111111111111111)))))

(assert (= (and start!3720 res!15460) b!26032))

(assert (= (and b!26032 res!15461) b!26031))

(assert (= (and b!26031 res!15459) b!26034))

(assert (= (and b!26034 res!15458) b!26033))

(assert (= (and b!26029 condMapEmpty!1108) mapIsEmpty!1108))

(assert (= (and b!26029 (not condMapEmpty!1108)) mapNonEmpty!1108))

(get-info :version)

(assert (= (and mapNonEmpty!1108 ((_ is ValueCellFull!333) mapValue!1108)) b!26030))

(assert (= (and b!26029 ((_ is ValueCellFull!333) mapDefault!1108)) b!26028))

(assert (= start!3720 b!26029))

(declare-fun m!20955 () Bool)

(assert (=> b!26031 m!20955))

(declare-fun m!20957 () Bool)

(assert (=> mapNonEmpty!1108 m!20957))

(declare-fun m!20959 () Bool)

(assert (=> start!3720 m!20959))

(declare-fun m!20961 () Bool)

(assert (=> start!3720 m!20961))

(declare-fun m!20963 () Bool)

(assert (=> start!3720 m!20963))

(declare-fun m!20965 () Bool)

(assert (=> b!26033 m!20965))

(check-sat (not b!26031) (not start!3720) (not mapNonEmpty!1108) tp_is_empty!1065 (not b!26033))
(check-sat)
(get-model)

(declare-fun d!4857 () Bool)

(assert (=> d!4857 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3720 d!4857))

(declare-fun d!4859 () Bool)

(assert (=> d!4859 (= (array_inv!445 _values!1501) (bvsge (size!743 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3720 d!4859))

(declare-fun d!4861 () Bool)

(assert (=> d!4861 (= (array_inv!446 _keys!1833) (bvsge (size!744 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3720 d!4861))

(declare-fun d!4863 () Bool)

(declare-fun res!15478 () Bool)

(declare-fun e!16912 () Bool)

(assert (=> d!4863 (=> res!15478 e!16912)))

(assert (=> d!4863 (= res!15478 ((_ is Nil!570) Nil!570))))

(assert (=> d!4863 (= (noDuplicate!9 Nil!570) e!16912)))

(declare-fun b!26060 () Bool)

(declare-fun e!16913 () Bool)

(assert (=> b!26060 (= e!16912 e!16913)))

(declare-fun res!15479 () Bool)

(assert (=> b!26060 (=> (not res!15479) (not e!16913))))

(declare-fun contains!225 (List!573 (_ BitVec 64)) Bool)

(assert (=> b!26060 (= res!15479 (not (contains!225 (t!3262 Nil!570) (h!1136 Nil!570))))))

(declare-fun b!26061 () Bool)

(assert (=> b!26061 (= e!16913 (noDuplicate!9 (t!3262 Nil!570)))))

(assert (= (and d!4863 (not res!15478)) b!26060))

(assert (= (and b!26060 res!15479) b!26061))

(declare-fun m!20979 () Bool)

(assert (=> b!26060 m!20979))

(declare-fun m!20981 () Bool)

(assert (=> b!26061 m!20981))

(assert (=> b!26033 d!4863))

(declare-fun d!4865 () Bool)

(declare-fun res!15484 () Bool)

(declare-fun e!16920 () Bool)

(assert (=> d!4865 (=> res!15484 e!16920)))

(assert (=> d!4865 (= res!15484 (bvsge #b00000000000000000000000000000000 (size!744 _keys!1833)))))

(assert (=> d!4865 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!16920)))

(declare-fun b!26070 () Bool)

(declare-fun e!16922 () Bool)

(declare-fun call!2498 () Bool)

(assert (=> b!26070 (= e!16922 call!2498)))

(declare-fun bm!2495 () Bool)

(assert (=> bm!2495 (= call!2498 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!26071 () Bool)

(assert (=> b!26071 (= e!16920 e!16922)))

(declare-fun c!3661 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26071 (= c!3661 (validKeyInArray!0 (select (arr!643 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26072 () Bool)

(declare-fun e!16921 () Bool)

(assert (=> b!26072 (= e!16922 e!16921)))

(declare-fun lt!10316 () (_ BitVec 64))

(assert (=> b!26072 (= lt!10316 (select (arr!643 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!625 0))(
  ( (Unit!626) )
))
(declare-fun lt!10315 () Unit!625)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1367 (_ BitVec 64) (_ BitVec 32)) Unit!625)

(assert (=> b!26072 (= lt!10315 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10316 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!26072 (arrayContainsKey!0 _keys!1833 lt!10316 #b00000000000000000000000000000000)))

(declare-fun lt!10314 () Unit!625)

(assert (=> b!26072 (= lt!10314 lt!10315)))

(declare-fun res!15485 () Bool)

(declare-datatypes ((SeekEntryResult!64 0))(
  ( (MissingZero!64 (index!2378 (_ BitVec 32))) (Found!64 (index!2379 (_ BitVec 32))) (Intermediate!64 (undefined!876 Bool) (index!2380 (_ BitVec 32)) (x!6068 (_ BitVec 32))) (Undefined!64) (MissingVacant!64 (index!2381 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1367 (_ BitVec 32)) SeekEntryResult!64)

(assert (=> b!26072 (= res!15485 (= (seekEntryOrOpen!0 (select (arr!643 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!64 #b00000000000000000000000000000000)))))

(assert (=> b!26072 (=> (not res!15485) (not e!16921))))

(declare-fun b!26073 () Bool)

(assert (=> b!26073 (= e!16921 call!2498)))

(assert (= (and d!4865 (not res!15484)) b!26071))

(assert (= (and b!26071 c!3661) b!26072))

(assert (= (and b!26071 (not c!3661)) b!26070))

(assert (= (and b!26072 res!15485) b!26073))

(assert (= (or b!26073 b!26070) bm!2495))

(declare-fun m!20983 () Bool)

(assert (=> bm!2495 m!20983))

(declare-fun m!20985 () Bool)

(assert (=> b!26071 m!20985))

(assert (=> b!26071 m!20985))

(declare-fun m!20987 () Bool)

(assert (=> b!26071 m!20987))

(assert (=> b!26072 m!20985))

(declare-fun m!20989 () Bool)

(assert (=> b!26072 m!20989))

(declare-fun m!20991 () Bool)

(assert (=> b!26072 m!20991))

(assert (=> b!26072 m!20985))

(declare-fun m!20993 () Bool)

(assert (=> b!26072 m!20993))

(assert (=> b!26031 d!4865))

(declare-fun mapNonEmpty!1114 () Bool)

(declare-fun mapRes!1114 () Bool)

(declare-fun tp!3634 () Bool)

(declare-fun e!16928 () Bool)

(assert (=> mapNonEmpty!1114 (= mapRes!1114 (and tp!3634 e!16928))))

(declare-fun mapRest!1114 () (Array (_ BitVec 32) ValueCell!333))

(declare-fun mapValue!1114 () ValueCell!333)

(declare-fun mapKey!1114 () (_ BitVec 32))

(assert (=> mapNonEmpty!1114 (= mapRest!1108 (store mapRest!1114 mapKey!1114 mapValue!1114))))

(declare-fun condMapEmpty!1114 () Bool)

(declare-fun mapDefault!1114 () ValueCell!333)

(assert (=> mapNonEmpty!1108 (= condMapEmpty!1114 (= mapRest!1108 ((as const (Array (_ BitVec 32) ValueCell!333)) mapDefault!1114)))))

(declare-fun e!16927 () Bool)

(assert (=> mapNonEmpty!1108 (= tp!3628 (and e!16927 mapRes!1114))))

(declare-fun b!26080 () Bool)

(assert (=> b!26080 (= e!16928 tp_is_empty!1065)))

(declare-fun mapIsEmpty!1114 () Bool)

(assert (=> mapIsEmpty!1114 mapRes!1114))

(declare-fun b!26081 () Bool)

(assert (=> b!26081 (= e!16927 tp_is_empty!1065)))

(assert (= (and mapNonEmpty!1108 condMapEmpty!1114) mapIsEmpty!1114))

(assert (= (and mapNonEmpty!1108 (not condMapEmpty!1114)) mapNonEmpty!1114))

(assert (= (and mapNonEmpty!1114 ((_ is ValueCellFull!333) mapValue!1114)) b!26080))

(assert (= (and mapNonEmpty!1108 ((_ is ValueCellFull!333) mapDefault!1114)) b!26081))

(declare-fun m!20995 () Bool)

(assert (=> mapNonEmpty!1114 m!20995))

(check-sat (not b!26071) (not b!26072) (not b!26061) tp_is_empty!1065 (not b!26060) (not bm!2495) (not mapNonEmpty!1114))
(check-sat)
