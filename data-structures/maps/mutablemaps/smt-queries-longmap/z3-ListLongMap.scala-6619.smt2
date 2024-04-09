; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83704 () Bool)

(assert start!83704)

(declare-fun mapIsEmpty!35762 () Bool)

(declare-fun mapRes!35762 () Bool)

(assert (=> mapIsEmpty!35762 mapRes!35762))

(declare-fun b!977106 () Bool)

(declare-fun e!550827 () Bool)

(declare-fun tp_is_empty!22491 () Bool)

(assert (=> b!977106 (= e!550827 tp_is_empty!22491)))

(declare-fun b!977107 () Bool)

(declare-fun res!654095 () Bool)

(declare-fun e!550824 () Bool)

(assert (=> b!977107 (=> (not res!654095) (not e!550824))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!34971 0))(
  ( (V!34972 (val!11296 Int)) )
))
(declare-datatypes ((ValueCell!10764 0))(
  ( (ValueCellFull!10764 (v!13857 V!34971)) (EmptyCell!10764) )
))
(declare-datatypes ((array!60999 0))(
  ( (array!61000 (arr!29354 (Array (_ BitVec 32) ValueCell!10764)) (size!29834 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60999)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61001 0))(
  ( (array!61002 (arr!29355 (Array (_ BitVec 32) (_ BitVec 64))) (size!29835 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61001)

(assert (=> b!977107 (= res!654095 (and (= (size!29834 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29835 _keys!1544) (size!29834 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977109 () Bool)

(declare-fun res!654092 () Bool)

(assert (=> b!977109 (=> (not res!654092) (not e!550824))))

(declare-datatypes ((List!20492 0))(
  ( (Nil!20489) (Cons!20488 (h!21650 (_ BitVec 64)) (t!29015 List!20492)) )
))
(declare-fun noDuplicate!1385 (List!20492) Bool)

(assert (=> b!977109 (= res!654092 (noDuplicate!1385 Nil!20489))))

(declare-fun b!977110 () Bool)

(declare-fun e!550825 () Bool)

(declare-fun e!550823 () Bool)

(assert (=> b!977110 (= e!550825 (and e!550823 mapRes!35762))))

(declare-fun condMapEmpty!35762 () Bool)

(declare-fun mapDefault!35762 () ValueCell!10764)

(assert (=> b!977110 (= condMapEmpty!35762 (= (arr!29354 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10764)) mapDefault!35762)))))

(declare-fun b!977111 () Bool)

(declare-fun res!654094 () Bool)

(assert (=> b!977111 (=> (not res!654094) (not e!550824))))

(assert (=> b!977111 (= res!654094 (and (bvsle #b00000000000000000000000000000000 (size!29835 _keys!1544)) (bvslt (size!29835 _keys!1544) #b01111111111111111111111111111111)))))

(declare-fun b!977112 () Bool)

(declare-fun res!654093 () Bool)

(assert (=> b!977112 (=> (not res!654093) (not e!550824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61001 (_ BitVec 32)) Bool)

(assert (=> b!977112 (= res!654093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!654096 () Bool)

(assert (=> start!83704 (=> (not res!654096) (not e!550824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83704 (= res!654096 (validMask!0 mask!1948))))

(assert (=> start!83704 e!550824))

(assert (=> start!83704 true))

(declare-fun array_inv!22599 (array!60999) Bool)

(assert (=> start!83704 (and (array_inv!22599 _values!1278) e!550825)))

(declare-fun array_inv!22600 (array!61001) Bool)

(assert (=> start!83704 (array_inv!22600 _keys!1544)))

(declare-fun b!977108 () Bool)

(declare-fun e!550822 () Bool)

(declare-fun contains!5714 (List!20492 (_ BitVec 64)) Bool)

(assert (=> b!977108 (= e!550822 (contains!5714 Nil!20489 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!977113 () Bool)

(assert (=> b!977113 (= e!550824 e!550822)))

(declare-fun res!654097 () Bool)

(assert (=> b!977113 (=> res!654097 e!550822)))

(assert (=> b!977113 (= res!654097 (contains!5714 Nil!20489 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!35762 () Bool)

(declare-fun tp!68015 () Bool)

(assert (=> mapNonEmpty!35762 (= mapRes!35762 (and tp!68015 e!550827))))

(declare-fun mapValue!35762 () ValueCell!10764)

(declare-fun mapKey!35762 () (_ BitVec 32))

(declare-fun mapRest!35762 () (Array (_ BitVec 32) ValueCell!10764))

(assert (=> mapNonEmpty!35762 (= (arr!29354 _values!1278) (store mapRest!35762 mapKey!35762 mapValue!35762))))

(declare-fun b!977114 () Bool)

(assert (=> b!977114 (= e!550823 tp_is_empty!22491)))

(assert (= (and start!83704 res!654096) b!977107))

(assert (= (and b!977107 res!654095) b!977112))

(assert (= (and b!977112 res!654093) b!977111))

(assert (= (and b!977111 res!654094) b!977109))

(assert (= (and b!977109 res!654092) b!977113))

(assert (= (and b!977113 (not res!654097)) b!977108))

(assert (= (and b!977110 condMapEmpty!35762) mapIsEmpty!35762))

(assert (= (and b!977110 (not condMapEmpty!35762)) mapNonEmpty!35762))

(get-info :version)

(assert (= (and mapNonEmpty!35762 ((_ is ValueCellFull!10764) mapValue!35762)) b!977106))

(assert (= (and b!977110 ((_ is ValueCellFull!10764) mapDefault!35762)) b!977114))

(assert (= start!83704 b!977110))

(declare-fun m!904535 () Bool)

(assert (=> b!977112 m!904535))

(declare-fun m!904537 () Bool)

(assert (=> b!977109 m!904537))

(declare-fun m!904539 () Bool)

(assert (=> mapNonEmpty!35762 m!904539))

(declare-fun m!904541 () Bool)

(assert (=> start!83704 m!904541))

(declare-fun m!904543 () Bool)

(assert (=> start!83704 m!904543))

(declare-fun m!904545 () Bool)

(assert (=> start!83704 m!904545))

(declare-fun m!904547 () Bool)

(assert (=> b!977108 m!904547))

(declare-fun m!904549 () Bool)

(assert (=> b!977113 m!904549))

(check-sat (not b!977112) (not b!977108) (not b!977109) (not mapNonEmpty!35762) (not start!83704) (not b!977113) tp_is_empty!22491)
(check-sat)
(get-model)

(declare-fun d!116579 () Bool)

(declare-fun res!654120 () Bool)

(declare-fun e!550850 () Bool)

(assert (=> d!116579 (=> res!654120 e!550850)))

(assert (=> d!116579 (= res!654120 ((_ is Nil!20489) Nil!20489))))

(assert (=> d!116579 (= (noDuplicate!1385 Nil!20489) e!550850)))

(declare-fun b!977146 () Bool)

(declare-fun e!550851 () Bool)

(assert (=> b!977146 (= e!550850 e!550851)))

(declare-fun res!654121 () Bool)

(assert (=> b!977146 (=> (not res!654121) (not e!550851))))

(assert (=> b!977146 (= res!654121 (not (contains!5714 (t!29015 Nil!20489) (h!21650 Nil!20489))))))

(declare-fun b!977147 () Bool)

(assert (=> b!977147 (= e!550851 (noDuplicate!1385 (t!29015 Nil!20489)))))

(assert (= (and d!116579 (not res!654120)) b!977146))

(assert (= (and b!977146 res!654121) b!977147))

(declare-fun m!904567 () Bool)

(assert (=> b!977146 m!904567))

(declare-fun m!904569 () Bool)

(assert (=> b!977147 m!904569))

(assert (=> b!977109 d!116579))

(declare-fun d!116581 () Bool)

(declare-fun lt!433383 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!419 (List!20492) (InoxSet (_ BitVec 64)))

(assert (=> d!116581 (= lt!433383 (select (content!419 Nil!20489) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!550857 () Bool)

(assert (=> d!116581 (= lt!433383 e!550857)))

(declare-fun res!654126 () Bool)

(assert (=> d!116581 (=> (not res!654126) (not e!550857))))

(assert (=> d!116581 (= res!654126 ((_ is Cons!20488) Nil!20489))))

(assert (=> d!116581 (= (contains!5714 Nil!20489 #b1000000000000000000000000000000000000000000000000000000000000000) lt!433383)))

(declare-fun b!977152 () Bool)

(declare-fun e!550856 () Bool)

(assert (=> b!977152 (= e!550857 e!550856)))

(declare-fun res!654127 () Bool)

(assert (=> b!977152 (=> res!654127 e!550856)))

(assert (=> b!977152 (= res!654127 (= (h!21650 Nil!20489) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!977153 () Bool)

(assert (=> b!977153 (= e!550856 (contains!5714 (t!29015 Nil!20489) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!116581 res!654126) b!977152))

(assert (= (and b!977152 (not res!654127)) b!977153))

(declare-fun m!904571 () Bool)

(assert (=> d!116581 m!904571))

(declare-fun m!904573 () Bool)

(assert (=> d!116581 m!904573))

(declare-fun m!904575 () Bool)

(assert (=> b!977153 m!904575))

(assert (=> b!977108 d!116581))

(declare-fun d!116583 () Bool)

(assert (=> d!116583 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!83704 d!116583))

(declare-fun d!116585 () Bool)

(assert (=> d!116585 (= (array_inv!22599 _values!1278) (bvsge (size!29834 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!83704 d!116585))

(declare-fun d!116587 () Bool)

(assert (=> d!116587 (= (array_inv!22600 _keys!1544) (bvsge (size!29835 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!83704 d!116587))

(declare-fun d!116589 () Bool)

(declare-fun lt!433384 () Bool)

(assert (=> d!116589 (= lt!433384 (select (content!419 Nil!20489) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!550859 () Bool)

(assert (=> d!116589 (= lt!433384 e!550859)))

(declare-fun res!654128 () Bool)

(assert (=> d!116589 (=> (not res!654128) (not e!550859))))

(assert (=> d!116589 (= res!654128 ((_ is Cons!20488) Nil!20489))))

(assert (=> d!116589 (= (contains!5714 Nil!20489 #b0000000000000000000000000000000000000000000000000000000000000000) lt!433384)))

(declare-fun b!977154 () Bool)

(declare-fun e!550858 () Bool)

(assert (=> b!977154 (= e!550859 e!550858)))

(declare-fun res!654129 () Bool)

(assert (=> b!977154 (=> res!654129 e!550858)))

(assert (=> b!977154 (= res!654129 (= (h!21650 Nil!20489) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!977155 () Bool)

(assert (=> b!977155 (= e!550858 (contains!5714 (t!29015 Nil!20489) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!116589 res!654128) b!977154))

(assert (= (and b!977154 (not res!654129)) b!977155))

(assert (=> d!116589 m!904571))

(declare-fun m!904577 () Bool)

(assert (=> d!116589 m!904577))

(declare-fun m!904579 () Bool)

(assert (=> b!977155 m!904579))

(assert (=> b!977113 d!116589))

(declare-fun b!977164 () Bool)

(declare-fun e!550866 () Bool)

(declare-fun e!550867 () Bool)

(assert (=> b!977164 (= e!550866 e!550867)))

(declare-fun lt!433392 () (_ BitVec 64))

(assert (=> b!977164 (= lt!433392 (select (arr!29355 _keys!1544) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32449 0))(
  ( (Unit!32450) )
))
(declare-fun lt!433391 () Unit!32449)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!61001 (_ BitVec 64) (_ BitVec 32)) Unit!32449)

(assert (=> b!977164 (= lt!433391 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!433392 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!61001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!977164 (arrayContainsKey!0 _keys!1544 lt!433392 #b00000000000000000000000000000000)))

(declare-fun lt!433393 () Unit!32449)

(assert (=> b!977164 (= lt!433393 lt!433391)))

(declare-fun res!654134 () Bool)

(declare-datatypes ((SeekEntryResult!9193 0))(
  ( (MissingZero!9193 (index!39142 (_ BitVec 32))) (Found!9193 (index!39143 (_ BitVec 32))) (Intermediate!9193 (undefined!10005 Bool) (index!39144 (_ BitVec 32)) (x!84547 (_ BitVec 32))) (Undefined!9193) (MissingVacant!9193 (index!39145 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!61001 (_ BitVec 32)) SeekEntryResult!9193)

(assert (=> b!977164 (= res!654134 (= (seekEntryOrOpen!0 (select (arr!29355 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9193 #b00000000000000000000000000000000)))))

(assert (=> b!977164 (=> (not res!654134) (not e!550867))))

(declare-fun bm!41790 () Bool)

(declare-fun call!41793 () Bool)

(assert (=> bm!41790 (= call!41793 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!977165 () Bool)

(assert (=> b!977165 (= e!550867 call!41793)))

(declare-fun d!116591 () Bool)

(declare-fun res!654135 () Bool)

(declare-fun e!550868 () Bool)

(assert (=> d!116591 (=> res!654135 e!550868)))

(assert (=> d!116591 (= res!654135 (bvsge #b00000000000000000000000000000000 (size!29835 _keys!1544)))))

(assert (=> d!116591 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!550868)))

(declare-fun b!977166 () Bool)

(assert (=> b!977166 (= e!550866 call!41793)))

(declare-fun b!977167 () Bool)

(assert (=> b!977167 (= e!550868 e!550866)))

(declare-fun c!99940 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977167 (= c!99940 (validKeyInArray!0 (select (arr!29355 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!116591 (not res!654135)) b!977167))

(assert (= (and b!977167 c!99940) b!977164))

(assert (= (and b!977167 (not c!99940)) b!977166))

(assert (= (and b!977164 res!654134) b!977165))

(assert (= (or b!977165 b!977166) bm!41790))

(declare-fun m!904581 () Bool)

(assert (=> b!977164 m!904581))

(declare-fun m!904583 () Bool)

(assert (=> b!977164 m!904583))

(declare-fun m!904585 () Bool)

(assert (=> b!977164 m!904585))

(assert (=> b!977164 m!904581))

(declare-fun m!904587 () Bool)

(assert (=> b!977164 m!904587))

(declare-fun m!904589 () Bool)

(assert (=> bm!41790 m!904589))

(assert (=> b!977167 m!904581))

(assert (=> b!977167 m!904581))

(declare-fun m!904591 () Bool)

(assert (=> b!977167 m!904591))

(assert (=> b!977112 d!116591))

(declare-fun b!977174 () Bool)

(declare-fun e!550873 () Bool)

(assert (=> b!977174 (= e!550873 tp_is_empty!22491)))

(declare-fun mapIsEmpty!35768 () Bool)

(declare-fun mapRes!35768 () Bool)

(assert (=> mapIsEmpty!35768 mapRes!35768))

(declare-fun condMapEmpty!35768 () Bool)

(declare-fun mapDefault!35768 () ValueCell!10764)

(assert (=> mapNonEmpty!35762 (= condMapEmpty!35768 (= mapRest!35762 ((as const (Array (_ BitVec 32) ValueCell!10764)) mapDefault!35768)))))

(declare-fun e!550874 () Bool)

(assert (=> mapNonEmpty!35762 (= tp!68015 (and e!550874 mapRes!35768))))

(declare-fun mapNonEmpty!35768 () Bool)

(declare-fun tp!68021 () Bool)

(assert (=> mapNonEmpty!35768 (= mapRes!35768 (and tp!68021 e!550873))))

(declare-fun mapValue!35768 () ValueCell!10764)

(declare-fun mapRest!35768 () (Array (_ BitVec 32) ValueCell!10764))

(declare-fun mapKey!35768 () (_ BitVec 32))

(assert (=> mapNonEmpty!35768 (= mapRest!35762 (store mapRest!35768 mapKey!35768 mapValue!35768))))

(declare-fun b!977175 () Bool)

(assert (=> b!977175 (= e!550874 tp_is_empty!22491)))

(assert (= (and mapNonEmpty!35762 condMapEmpty!35768) mapIsEmpty!35768))

(assert (= (and mapNonEmpty!35762 (not condMapEmpty!35768)) mapNonEmpty!35768))

(assert (= (and mapNonEmpty!35768 ((_ is ValueCellFull!10764) mapValue!35768)) b!977174))

(assert (= (and mapNonEmpty!35762 ((_ is ValueCellFull!10764) mapDefault!35768)) b!977175))

(declare-fun m!904593 () Bool)

(assert (=> mapNonEmpty!35768 m!904593))

(check-sat (not b!977153) (not b!977164) (not b!977147) tp_is_empty!22491 (not d!116581) (not b!977167) (not b!977146) (not mapNonEmpty!35768) (not d!116589) (not bm!41790) (not b!977155))
(check-sat)
