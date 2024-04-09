; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83034 () Bool)

(assert start!83034)

(declare-fun b!968502 () Bool)

(declare-fun e!545893 () Bool)

(declare-fun tp_is_empty!21927 () Bool)

(assert (=> b!968502 (= e!545893 tp_is_empty!21927)))

(declare-fun b!968503 () Bool)

(declare-fun e!545892 () Bool)

(declare-datatypes ((array!59903 0))(
  ( (array!59904 (arr!28814 (Array (_ BitVec 32) (_ BitVec 64))) (size!29294 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59903)

(assert (=> b!968503 (= e!545892 (and (bvsle #b00000000000000000000000000000000 (size!29294 _keys!1717)) (bvsge (size!29294 _keys!1717) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!34891 () Bool)

(declare-fun mapRes!34891 () Bool)

(assert (=> mapIsEmpty!34891 mapRes!34891))

(declare-fun mapNonEmpty!34891 () Bool)

(declare-fun tp!66460 () Bool)

(declare-fun e!545891 () Bool)

(assert (=> mapNonEmpty!34891 (= mapRes!34891 (and tp!66460 e!545891))))

(declare-datatypes ((V!34219 0))(
  ( (V!34220 (val!11014 Int)) )
))
(declare-datatypes ((ValueCell!10482 0))(
  ( (ValueCellFull!10482 (v!13572 V!34219)) (EmptyCell!10482) )
))
(declare-fun mapValue!34891 () ValueCell!10482)

(declare-datatypes ((array!59905 0))(
  ( (array!59906 (arr!28815 (Array (_ BitVec 32) ValueCell!10482)) (size!29295 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59905)

(declare-fun mapKey!34891 () (_ BitVec 32))

(declare-fun mapRest!34891 () (Array (_ BitVec 32) ValueCell!10482))

(assert (=> mapNonEmpty!34891 (= (arr!28815 _values!1425) (store mapRest!34891 mapKey!34891 mapValue!34891))))

(declare-fun b!968504 () Bool)

(declare-fun res!648445 () Bool)

(assert (=> b!968504 (=> (not res!648445) (not e!545892))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59903 (_ BitVec 32)) Bool)

(assert (=> b!968504 (= res!648445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!648444 () Bool)

(assert (=> start!83034 (=> (not res!648444) (not e!545892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83034 (= res!648444 (validMask!0 mask!2147))))

(assert (=> start!83034 e!545892))

(assert (=> start!83034 true))

(declare-fun e!545889 () Bool)

(declare-fun array_inv!22199 (array!59905) Bool)

(assert (=> start!83034 (and (array_inv!22199 _values!1425) e!545889)))

(declare-fun array_inv!22200 (array!59903) Bool)

(assert (=> start!83034 (array_inv!22200 _keys!1717)))

(declare-fun b!968505 () Bool)

(declare-fun res!648446 () Bool)

(assert (=> b!968505 (=> (not res!648446) (not e!545892))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968505 (= res!648446 (and (= (size!29295 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29294 _keys!1717) (size!29295 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968506 () Bool)

(assert (=> b!968506 (= e!545889 (and e!545893 mapRes!34891))))

(declare-fun condMapEmpty!34891 () Bool)

(declare-fun mapDefault!34891 () ValueCell!10482)

(assert (=> b!968506 (= condMapEmpty!34891 (= (arr!28815 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10482)) mapDefault!34891)))))

(declare-fun b!968507 () Bool)

(assert (=> b!968507 (= e!545891 tp_is_empty!21927)))

(assert (= (and start!83034 res!648444) b!968505))

(assert (= (and b!968505 res!648446) b!968504))

(assert (= (and b!968504 res!648445) b!968503))

(assert (= (and b!968506 condMapEmpty!34891) mapIsEmpty!34891))

(assert (= (and b!968506 (not condMapEmpty!34891)) mapNonEmpty!34891))

(get-info :version)

(assert (= (and mapNonEmpty!34891 ((_ is ValueCellFull!10482) mapValue!34891)) b!968507))

(assert (= (and b!968506 ((_ is ValueCellFull!10482) mapDefault!34891)) b!968502))

(assert (= start!83034 b!968506))

(declare-fun m!896883 () Bool)

(assert (=> mapNonEmpty!34891 m!896883))

(declare-fun m!896885 () Bool)

(assert (=> b!968504 m!896885))

(declare-fun m!896887 () Bool)

(assert (=> start!83034 m!896887))

(declare-fun m!896889 () Bool)

(assert (=> start!83034 m!896889))

(declare-fun m!896891 () Bool)

(assert (=> start!83034 m!896891))

(check-sat (not start!83034) (not b!968504) (not mapNonEmpty!34891) tp_is_empty!21927)
(check-sat)
(get-model)

(declare-fun d!116173 () Bool)

(assert (=> d!116173 (= (validMask!0 mask!2147) (and (or (= mask!2147 #b00000000000000000000000000000111) (= mask!2147 #b00000000000000000000000000001111) (= mask!2147 #b00000000000000000000000000011111) (= mask!2147 #b00000000000000000000000000111111) (= mask!2147 #b00000000000000000000000001111111) (= mask!2147 #b00000000000000000000000011111111) (= mask!2147 #b00000000000000000000000111111111) (= mask!2147 #b00000000000000000000001111111111) (= mask!2147 #b00000000000000000000011111111111) (= mask!2147 #b00000000000000000000111111111111) (= mask!2147 #b00000000000000000001111111111111) (= mask!2147 #b00000000000000000011111111111111) (= mask!2147 #b00000000000000000111111111111111) (= mask!2147 #b00000000000000001111111111111111) (= mask!2147 #b00000000000000011111111111111111) (= mask!2147 #b00000000000000111111111111111111) (= mask!2147 #b00000000000001111111111111111111) (= mask!2147 #b00000000000011111111111111111111) (= mask!2147 #b00000000000111111111111111111111) (= mask!2147 #b00000000001111111111111111111111) (= mask!2147 #b00000000011111111111111111111111) (= mask!2147 #b00000000111111111111111111111111) (= mask!2147 #b00000001111111111111111111111111) (= mask!2147 #b00000011111111111111111111111111) (= mask!2147 #b00000111111111111111111111111111) (= mask!2147 #b00001111111111111111111111111111) (= mask!2147 #b00011111111111111111111111111111) (= mask!2147 #b00111111111111111111111111111111)) (bvsle mask!2147 #b00111111111111111111111111111111)))))

(assert (=> start!83034 d!116173))

(declare-fun d!116175 () Bool)

(assert (=> d!116175 (= (array_inv!22199 _values!1425) (bvsge (size!29295 _values!1425) #b00000000000000000000000000000000))))

(assert (=> start!83034 d!116175))

(declare-fun d!116177 () Bool)

(assert (=> d!116177 (= (array_inv!22200 _keys!1717) (bvsge (size!29294 _keys!1717) #b00000000000000000000000000000000))))

(assert (=> start!83034 d!116177))

(declare-fun b!968534 () Bool)

(declare-fun e!545916 () Bool)

(declare-fun e!545917 () Bool)

(assert (=> b!968534 (= e!545916 e!545917)))

(declare-fun c!99841 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968534 (= c!99841 (validKeyInArray!0 (select (arr!28814 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun b!968535 () Bool)

(declare-fun call!41735 () Bool)

(assert (=> b!968535 (= e!545917 call!41735)))

(declare-fun d!116179 () Bool)

(declare-fun res!648461 () Bool)

(assert (=> d!116179 (=> res!648461 e!545916)))

(assert (=> d!116179 (= res!648461 (bvsge #b00000000000000000000000000000000 (size!29294 _keys!1717)))))

(assert (=> d!116179 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147) e!545916)))

(declare-fun b!968536 () Bool)

(declare-fun e!545915 () Bool)

(assert (=> b!968536 (= e!545917 e!545915)))

(declare-fun lt!431483 () (_ BitVec 64))

(assert (=> b!968536 (= lt!431483 (select (arr!28814 _keys!1717) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32333 0))(
  ( (Unit!32334) )
))
(declare-fun lt!431482 () Unit!32333)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!59903 (_ BitVec 64) (_ BitVec 32)) Unit!32333)

(assert (=> b!968536 (= lt!431482 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1717 lt!431483 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!59903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!968536 (arrayContainsKey!0 _keys!1717 lt!431483 #b00000000000000000000000000000000)))

(declare-fun lt!431484 () Unit!32333)

(assert (=> b!968536 (= lt!431484 lt!431482)))

(declare-fun res!648460 () Bool)

(declare-datatypes ((SeekEntryResult!9186 0))(
  ( (MissingZero!9186 (index!39114 (_ BitVec 32))) (Found!9186 (index!39115 (_ BitVec 32))) (Intermediate!9186 (undefined!9998 Bool) (index!39116 (_ BitVec 32)) (x!83609 (_ BitVec 32))) (Undefined!9186) (MissingVacant!9186 (index!39117 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!59903 (_ BitVec 32)) SeekEntryResult!9186)

(assert (=> b!968536 (= res!648460 (= (seekEntryOrOpen!0 (select (arr!28814 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147) (Found!9186 #b00000000000000000000000000000000)))))

(assert (=> b!968536 (=> (not res!648460) (not e!545915))))

(declare-fun bm!41732 () Bool)

(assert (=> bm!41732 (= call!41735 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1717 mask!2147))))

(declare-fun b!968537 () Bool)

(assert (=> b!968537 (= e!545915 call!41735)))

(assert (= (and d!116179 (not res!648461)) b!968534))

(assert (= (and b!968534 c!99841) b!968536))

(assert (= (and b!968534 (not c!99841)) b!968535))

(assert (= (and b!968536 res!648460) b!968537))

(assert (= (or b!968537 b!968535) bm!41732))

(declare-fun m!896903 () Bool)

(assert (=> b!968534 m!896903))

(assert (=> b!968534 m!896903))

(declare-fun m!896905 () Bool)

(assert (=> b!968534 m!896905))

(assert (=> b!968536 m!896903))

(declare-fun m!896907 () Bool)

(assert (=> b!968536 m!896907))

(declare-fun m!896909 () Bool)

(assert (=> b!968536 m!896909))

(assert (=> b!968536 m!896903))

(declare-fun m!896911 () Bool)

(assert (=> b!968536 m!896911))

(declare-fun m!896913 () Bool)

(assert (=> bm!41732 m!896913))

(assert (=> b!968504 d!116179))

(declare-fun mapIsEmpty!34897 () Bool)

(declare-fun mapRes!34897 () Bool)

(assert (=> mapIsEmpty!34897 mapRes!34897))

(declare-fun condMapEmpty!34897 () Bool)

(declare-fun mapDefault!34897 () ValueCell!10482)

(assert (=> mapNonEmpty!34891 (= condMapEmpty!34897 (= mapRest!34891 ((as const (Array (_ BitVec 32) ValueCell!10482)) mapDefault!34897)))))

(declare-fun e!545922 () Bool)

(assert (=> mapNonEmpty!34891 (= tp!66460 (and e!545922 mapRes!34897))))

(declare-fun b!968545 () Bool)

(assert (=> b!968545 (= e!545922 tp_is_empty!21927)))

(declare-fun mapNonEmpty!34897 () Bool)

(declare-fun tp!66466 () Bool)

(declare-fun e!545923 () Bool)

(assert (=> mapNonEmpty!34897 (= mapRes!34897 (and tp!66466 e!545923))))

(declare-fun mapValue!34897 () ValueCell!10482)

(declare-fun mapRest!34897 () (Array (_ BitVec 32) ValueCell!10482))

(declare-fun mapKey!34897 () (_ BitVec 32))

(assert (=> mapNonEmpty!34897 (= mapRest!34891 (store mapRest!34897 mapKey!34897 mapValue!34897))))

(declare-fun b!968544 () Bool)

(assert (=> b!968544 (= e!545923 tp_is_empty!21927)))

(assert (= (and mapNonEmpty!34891 condMapEmpty!34897) mapIsEmpty!34897))

(assert (= (and mapNonEmpty!34891 (not condMapEmpty!34897)) mapNonEmpty!34897))

(assert (= (and mapNonEmpty!34897 ((_ is ValueCellFull!10482) mapValue!34897)) b!968544))

(assert (= (and mapNonEmpty!34891 ((_ is ValueCellFull!10482) mapDefault!34897)) b!968545))

(declare-fun m!896915 () Bool)

(assert (=> mapNonEmpty!34897 m!896915))

(check-sat (not b!968534) tp_is_empty!21927 (not b!968536) (not mapNonEmpty!34897) (not bm!41732))
(check-sat)
