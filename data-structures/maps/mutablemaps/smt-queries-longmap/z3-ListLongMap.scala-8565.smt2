; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104624 () Bool)

(assert start!104624)

(declare-fun b!1247197 () Bool)

(declare-fun e!707527 () Bool)

(declare-fun e!707529 () Bool)

(assert (=> b!1247197 (= e!707527 e!707529)))

(declare-fun res!832310 () Bool)

(assert (=> b!1247197 (=> res!832310 e!707529)))

(declare-datatypes ((List!27686 0))(
  ( (Nil!27683) (Cons!27682 (h!28891 (_ BitVec 64)) (t!41162 List!27686)) )
))
(declare-fun contains!7483 (List!27686 (_ BitVec 64)) Bool)

(assert (=> b!1247197 (= res!832310 (contains!7483 Nil!27683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1247198 () Bool)

(declare-fun res!832312 () Bool)

(assert (=> b!1247198 (=> (not res!832312) (not e!707527))))

(declare-datatypes ((array!80333 0))(
  ( (array!80334 (arr!38732 (Array (_ BitVec 32) (_ BitVec 64))) (size!39269 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80333)

(assert (=> b!1247198 (= res!832312 (and (bvsle #b00000000000000000000000000000000 (size!39269 _keys!1118)) (bvslt (size!39269 _keys!1118) #b01111111111111111111111111111111)))))

(declare-fun b!1247199 () Bool)

(declare-fun res!832308 () Bool)

(assert (=> b!1247199 (=> (not res!832308) (not e!707527))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80333 (_ BitVec 32)) Bool)

(assert (=> b!1247199 (= res!832308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247200 () Bool)

(declare-fun e!707528 () Bool)

(declare-fun tp_is_empty!31329 () Bool)

(assert (=> b!1247200 (= e!707528 tp_is_empty!31329)))

(declare-fun b!1247201 () Bool)

(declare-fun e!707526 () Bool)

(assert (=> b!1247201 (= e!707526 tp_is_empty!31329)))

(declare-fun mapIsEmpty!48745 () Bool)

(declare-fun mapRes!48745 () Bool)

(assert (=> mapIsEmpty!48745 mapRes!48745))

(declare-fun b!1247202 () Bool)

(declare-fun res!832309 () Bool)

(assert (=> b!1247202 (=> (not res!832309) (not e!707527))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47137 0))(
  ( (V!47138 (val!15727 Int)) )
))
(declare-datatypes ((ValueCell!14901 0))(
  ( (ValueCellFull!14901 (v!18422 V!47137)) (EmptyCell!14901) )
))
(declare-datatypes ((array!80335 0))(
  ( (array!80336 (arr!38733 (Array (_ BitVec 32) ValueCell!14901)) (size!39270 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80335)

(assert (=> b!1247202 (= res!832309 (and (= (size!39270 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39269 _keys!1118) (size!39270 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!832307 () Bool)

(assert (=> start!104624 (=> (not res!832307) (not e!707527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104624 (= res!832307 (validMask!0 mask!1466))))

(assert (=> start!104624 e!707527))

(assert (=> start!104624 true))

(declare-fun array_inv!29501 (array!80333) Bool)

(assert (=> start!104624 (array_inv!29501 _keys!1118)))

(declare-fun e!707530 () Bool)

(declare-fun array_inv!29502 (array!80335) Bool)

(assert (=> start!104624 (and (array_inv!29502 _values!914) e!707530)))

(declare-fun b!1247203 () Bool)

(assert (=> b!1247203 (= e!707530 (and e!707526 mapRes!48745))))

(declare-fun condMapEmpty!48745 () Bool)

(declare-fun mapDefault!48745 () ValueCell!14901)

(assert (=> b!1247203 (= condMapEmpty!48745 (= (arr!38733 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14901)) mapDefault!48745)))))

(declare-fun b!1247204 () Bool)

(assert (=> b!1247204 (= e!707529 (contains!7483 Nil!27683 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!48745 () Bool)

(declare-fun tp!92847 () Bool)

(assert (=> mapNonEmpty!48745 (= mapRes!48745 (and tp!92847 e!707528))))

(declare-fun mapRest!48745 () (Array (_ BitVec 32) ValueCell!14901))

(declare-fun mapValue!48745 () ValueCell!14901)

(declare-fun mapKey!48745 () (_ BitVec 32))

(assert (=> mapNonEmpty!48745 (= (arr!38733 _values!914) (store mapRest!48745 mapKey!48745 mapValue!48745))))

(declare-fun b!1247205 () Bool)

(declare-fun res!832311 () Bool)

(assert (=> b!1247205 (=> (not res!832311) (not e!707527))))

(declare-fun noDuplicate!2067 (List!27686) Bool)

(assert (=> b!1247205 (= res!832311 (noDuplicate!2067 Nil!27683))))

(assert (= (and start!104624 res!832307) b!1247202))

(assert (= (and b!1247202 res!832309) b!1247199))

(assert (= (and b!1247199 res!832308) b!1247198))

(assert (= (and b!1247198 res!832312) b!1247205))

(assert (= (and b!1247205 res!832311) b!1247197))

(assert (= (and b!1247197 (not res!832310)) b!1247204))

(assert (= (and b!1247203 condMapEmpty!48745) mapIsEmpty!48745))

(assert (= (and b!1247203 (not condMapEmpty!48745)) mapNonEmpty!48745))

(get-info :version)

(assert (= (and mapNonEmpty!48745 ((_ is ValueCellFull!14901) mapValue!48745)) b!1247200))

(assert (= (and b!1247203 ((_ is ValueCellFull!14901) mapDefault!48745)) b!1247201))

(assert (= start!104624 b!1247203))

(declare-fun m!1148793 () Bool)

(assert (=> mapNonEmpty!48745 m!1148793))

(declare-fun m!1148795 () Bool)

(assert (=> b!1247205 m!1148795))

(declare-fun m!1148797 () Bool)

(assert (=> start!104624 m!1148797))

(declare-fun m!1148799 () Bool)

(assert (=> start!104624 m!1148799))

(declare-fun m!1148801 () Bool)

(assert (=> start!104624 m!1148801))

(declare-fun m!1148803 () Bool)

(assert (=> b!1247204 m!1148803))

(declare-fun m!1148805 () Bool)

(assert (=> b!1247197 m!1148805))

(declare-fun m!1148807 () Bool)

(assert (=> b!1247199 m!1148807))

(check-sat (not start!104624) (not b!1247197) (not mapNonEmpty!48745) (not b!1247205) (not b!1247204) (not b!1247199) tp_is_empty!31329)
(check-sat)
(get-model)

(declare-fun d!137671 () Bool)

(declare-fun lt!563174 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!639 (List!27686) (InoxSet (_ BitVec 64)))

(assert (=> d!137671 (= lt!563174 (select (content!639 Nil!27683) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!707554 () Bool)

(assert (=> d!137671 (= lt!563174 e!707554)))

(declare-fun res!832336 () Bool)

(assert (=> d!137671 (=> (not res!832336) (not e!707554))))

(assert (=> d!137671 (= res!832336 ((_ is Cons!27682) Nil!27683))))

(assert (=> d!137671 (= (contains!7483 Nil!27683 #b1000000000000000000000000000000000000000000000000000000000000000) lt!563174)))

(declare-fun b!1247237 () Bool)

(declare-fun e!707553 () Bool)

(assert (=> b!1247237 (= e!707554 e!707553)))

(declare-fun res!832335 () Bool)

(assert (=> b!1247237 (=> res!832335 e!707553)))

(assert (=> b!1247237 (= res!832335 (= (h!28891 Nil!27683) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1247238 () Bool)

(assert (=> b!1247238 (= e!707553 (contains!7483 (t!41162 Nil!27683) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137671 res!832336) b!1247237))

(assert (= (and b!1247237 (not res!832335)) b!1247238))

(declare-fun m!1148825 () Bool)

(assert (=> d!137671 m!1148825))

(declare-fun m!1148827 () Bool)

(assert (=> d!137671 m!1148827))

(declare-fun m!1148829 () Bool)

(assert (=> b!1247238 m!1148829))

(assert (=> b!1247204 d!137671))

(declare-fun b!1247247 () Bool)

(declare-fun e!707562 () Bool)

(declare-fun e!707561 () Bool)

(assert (=> b!1247247 (= e!707562 e!707561)))

(declare-fun lt!563182 () (_ BitVec 64))

(assert (=> b!1247247 (= lt!563182 (select (arr!38732 _keys!1118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41413 0))(
  ( (Unit!41414) )
))
(declare-fun lt!563181 () Unit!41413)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80333 (_ BitVec 64) (_ BitVec 32)) Unit!41413)

(assert (=> b!1247247 (= lt!563181 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!563182 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1247247 (arrayContainsKey!0 _keys!1118 lt!563182 #b00000000000000000000000000000000)))

(declare-fun lt!563183 () Unit!41413)

(assert (=> b!1247247 (= lt!563183 lt!563181)))

(declare-fun res!832341 () Bool)

(declare-datatypes ((SeekEntryResult!9952 0))(
  ( (MissingZero!9952 (index!42178 (_ BitVec 32))) (Found!9952 (index!42179 (_ BitVec 32))) (Intermediate!9952 (undefined!10764 Bool) (index!42180 (_ BitVec 32)) (x!109598 (_ BitVec 32))) (Undefined!9952) (MissingVacant!9952 (index!42181 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80333 (_ BitVec 32)) SeekEntryResult!9952)

(assert (=> b!1247247 (= res!832341 (= (seekEntryOrOpen!0 (select (arr!38732 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9952 #b00000000000000000000000000000000)))))

(assert (=> b!1247247 (=> (not res!832341) (not e!707561))))

(declare-fun b!1247248 () Bool)

(declare-fun e!707563 () Bool)

(assert (=> b!1247248 (= e!707563 e!707562)))

(declare-fun c!122043 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1247248 (= c!122043 (validKeyInArray!0 (select (arr!38732 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1247249 () Bool)

(declare-fun call!61559 () Bool)

(assert (=> b!1247249 (= e!707561 call!61559)))

(declare-fun d!137673 () Bool)

(declare-fun res!832342 () Bool)

(assert (=> d!137673 (=> res!832342 e!707563)))

(assert (=> d!137673 (= res!832342 (bvsge #b00000000000000000000000000000000 (size!39269 _keys!1118)))))

(assert (=> d!137673 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!707563)))

(declare-fun b!1247250 () Bool)

(assert (=> b!1247250 (= e!707562 call!61559)))

(declare-fun bm!61556 () Bool)

(assert (=> bm!61556 (= call!61559 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(assert (= (and d!137673 (not res!832342)) b!1247248))

(assert (= (and b!1247248 c!122043) b!1247247))

(assert (= (and b!1247248 (not c!122043)) b!1247250))

(assert (= (and b!1247247 res!832341) b!1247249))

(assert (= (or b!1247249 b!1247250) bm!61556))

(declare-fun m!1148831 () Bool)

(assert (=> b!1247247 m!1148831))

(declare-fun m!1148833 () Bool)

(assert (=> b!1247247 m!1148833))

(declare-fun m!1148835 () Bool)

(assert (=> b!1247247 m!1148835))

(assert (=> b!1247247 m!1148831))

(declare-fun m!1148837 () Bool)

(assert (=> b!1247247 m!1148837))

(assert (=> b!1247248 m!1148831))

(assert (=> b!1247248 m!1148831))

(declare-fun m!1148839 () Bool)

(assert (=> b!1247248 m!1148839))

(declare-fun m!1148841 () Bool)

(assert (=> bm!61556 m!1148841))

(assert (=> b!1247199 d!137673))

(declare-fun d!137675 () Bool)

(assert (=> d!137675 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104624 d!137675))

(declare-fun d!137677 () Bool)

(assert (=> d!137677 (= (array_inv!29501 _keys!1118) (bvsge (size!39269 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104624 d!137677))

(declare-fun d!137679 () Bool)

(assert (=> d!137679 (= (array_inv!29502 _values!914) (bvsge (size!39270 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104624 d!137679))

(declare-fun d!137681 () Bool)

(declare-fun lt!563184 () Bool)

(assert (=> d!137681 (= lt!563184 (select (content!639 Nil!27683) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!707565 () Bool)

(assert (=> d!137681 (= lt!563184 e!707565)))

(declare-fun res!832344 () Bool)

(assert (=> d!137681 (=> (not res!832344) (not e!707565))))

(assert (=> d!137681 (= res!832344 ((_ is Cons!27682) Nil!27683))))

(assert (=> d!137681 (= (contains!7483 Nil!27683 #b0000000000000000000000000000000000000000000000000000000000000000) lt!563184)))

(declare-fun b!1247251 () Bool)

(declare-fun e!707564 () Bool)

(assert (=> b!1247251 (= e!707565 e!707564)))

(declare-fun res!832343 () Bool)

(assert (=> b!1247251 (=> res!832343 e!707564)))

(assert (=> b!1247251 (= res!832343 (= (h!28891 Nil!27683) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1247252 () Bool)

(assert (=> b!1247252 (= e!707564 (contains!7483 (t!41162 Nil!27683) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137681 res!832344) b!1247251))

(assert (= (and b!1247251 (not res!832343)) b!1247252))

(assert (=> d!137681 m!1148825))

(declare-fun m!1148843 () Bool)

(assert (=> d!137681 m!1148843))

(declare-fun m!1148845 () Bool)

(assert (=> b!1247252 m!1148845))

(assert (=> b!1247197 d!137681))

(declare-fun d!137683 () Bool)

(declare-fun res!832349 () Bool)

(declare-fun e!707570 () Bool)

(assert (=> d!137683 (=> res!832349 e!707570)))

(assert (=> d!137683 (= res!832349 ((_ is Nil!27683) Nil!27683))))

(assert (=> d!137683 (= (noDuplicate!2067 Nil!27683) e!707570)))

(declare-fun b!1247257 () Bool)

(declare-fun e!707571 () Bool)

(assert (=> b!1247257 (= e!707570 e!707571)))

(declare-fun res!832350 () Bool)

(assert (=> b!1247257 (=> (not res!832350) (not e!707571))))

(assert (=> b!1247257 (= res!832350 (not (contains!7483 (t!41162 Nil!27683) (h!28891 Nil!27683))))))

(declare-fun b!1247258 () Bool)

(assert (=> b!1247258 (= e!707571 (noDuplicate!2067 (t!41162 Nil!27683)))))

(assert (= (and d!137683 (not res!832349)) b!1247257))

(assert (= (and b!1247257 res!832350) b!1247258))

(declare-fun m!1148847 () Bool)

(assert (=> b!1247257 m!1148847))

(declare-fun m!1148849 () Bool)

(assert (=> b!1247258 m!1148849))

(assert (=> b!1247205 d!137683))

(declare-fun mapIsEmpty!48751 () Bool)

(declare-fun mapRes!48751 () Bool)

(assert (=> mapIsEmpty!48751 mapRes!48751))

(declare-fun mapNonEmpty!48751 () Bool)

(declare-fun tp!92853 () Bool)

(declare-fun e!707577 () Bool)

(assert (=> mapNonEmpty!48751 (= mapRes!48751 (and tp!92853 e!707577))))

(declare-fun mapValue!48751 () ValueCell!14901)

(declare-fun mapKey!48751 () (_ BitVec 32))

(declare-fun mapRest!48751 () (Array (_ BitVec 32) ValueCell!14901))

(assert (=> mapNonEmpty!48751 (= mapRest!48745 (store mapRest!48751 mapKey!48751 mapValue!48751))))

(declare-fun b!1247265 () Bool)

(assert (=> b!1247265 (= e!707577 tp_is_empty!31329)))

(declare-fun condMapEmpty!48751 () Bool)

(declare-fun mapDefault!48751 () ValueCell!14901)

(assert (=> mapNonEmpty!48745 (= condMapEmpty!48751 (= mapRest!48745 ((as const (Array (_ BitVec 32) ValueCell!14901)) mapDefault!48751)))))

(declare-fun e!707576 () Bool)

(assert (=> mapNonEmpty!48745 (= tp!92847 (and e!707576 mapRes!48751))))

(declare-fun b!1247266 () Bool)

(assert (=> b!1247266 (= e!707576 tp_is_empty!31329)))

(assert (= (and mapNonEmpty!48745 condMapEmpty!48751) mapIsEmpty!48751))

(assert (= (and mapNonEmpty!48745 (not condMapEmpty!48751)) mapNonEmpty!48751))

(assert (= (and mapNonEmpty!48751 ((_ is ValueCellFull!14901) mapValue!48751)) b!1247265))

(assert (= (and mapNonEmpty!48745 ((_ is ValueCellFull!14901) mapDefault!48751)) b!1247266))

(declare-fun m!1148851 () Bool)

(assert (=> mapNonEmpty!48751 m!1148851))

(check-sat (not d!137681) tp_is_empty!31329 (not b!1247247) (not d!137671) (not bm!61556) (not b!1247238) (not mapNonEmpty!48751) (not b!1247257) (not b!1247248) (not b!1247252) (not b!1247258))
(check-sat)
