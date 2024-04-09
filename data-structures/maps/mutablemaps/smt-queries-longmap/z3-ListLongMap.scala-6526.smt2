; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83048 () Bool)

(assert start!83048)

(declare-fun b!968581 () Bool)

(declare-fun res!648483 () Bool)

(declare-fun e!545949 () Bool)

(assert (=> b!968581 (=> (not res!648483) (not e!545949))))

(declare-datatypes ((array!59915 0))(
  ( (array!59916 (arr!28819 (Array (_ BitVec 32) (_ BitVec 64))) (size!29299 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59915)

(assert (=> b!968581 (= res!648483 (and (bvsle #b00000000000000000000000000000000 (size!29299 _keys!1717)) (bvslt (size!29299 _keys!1717) #b01111111111111111111111111111111)))))

(declare-fun b!968582 () Bool)

(declare-fun e!545951 () Bool)

(declare-fun e!545950 () Bool)

(declare-fun mapRes!34903 () Bool)

(assert (=> b!968582 (= e!545951 (and e!545950 mapRes!34903))))

(declare-fun condMapEmpty!34903 () Bool)

(declare-datatypes ((V!34227 0))(
  ( (V!34228 (val!11017 Int)) )
))
(declare-datatypes ((ValueCell!10485 0))(
  ( (ValueCellFull!10485 (v!13575 V!34227)) (EmptyCell!10485) )
))
(declare-datatypes ((array!59917 0))(
  ( (array!59918 (arr!28820 (Array (_ BitVec 32) ValueCell!10485)) (size!29300 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59917)

(declare-fun mapDefault!34903 () ValueCell!10485)

(assert (=> b!968582 (= condMapEmpty!34903 (= (arr!28820 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10485)) mapDefault!34903)))))

(declare-fun b!968583 () Bool)

(declare-fun res!648484 () Bool)

(assert (=> b!968583 (=> (not res!648484) (not e!545949))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59915 (_ BitVec 32)) Bool)

(assert (=> b!968583 (= res!648484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968584 () Bool)

(declare-fun e!545953 () Bool)

(declare-fun tp_is_empty!21933 () Bool)

(assert (=> b!968584 (= e!545953 tp_is_empty!21933)))

(declare-fun mapIsEmpty!34903 () Bool)

(assert (=> mapIsEmpty!34903 mapRes!34903))

(declare-fun b!968586 () Bool)

(declare-fun res!648485 () Bool)

(assert (=> b!968586 (=> (not res!648485) (not e!545949))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968586 (= res!648485 (and (= (size!29300 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29299 _keys!1717) (size!29300 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!648482 () Bool)

(assert (=> start!83048 (=> (not res!648482) (not e!545949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83048 (= res!648482 (validMask!0 mask!2147))))

(assert (=> start!83048 e!545949))

(assert (=> start!83048 true))

(declare-fun array_inv!22203 (array!59917) Bool)

(assert (=> start!83048 (and (array_inv!22203 _values!1425) e!545951)))

(declare-fun array_inv!22204 (array!59915) Bool)

(assert (=> start!83048 (array_inv!22204 _keys!1717)))

(declare-fun b!968585 () Bool)

(assert (=> b!968585 (= e!545950 tp_is_empty!21933)))

(declare-fun mapNonEmpty!34903 () Bool)

(declare-fun tp!66472 () Bool)

(assert (=> mapNonEmpty!34903 (= mapRes!34903 (and tp!66472 e!545953))))

(declare-fun mapValue!34903 () ValueCell!10485)

(declare-fun mapKey!34903 () (_ BitVec 32))

(declare-fun mapRest!34903 () (Array (_ BitVec 32) ValueCell!10485))

(assert (=> mapNonEmpty!34903 (= (arr!28820 _values!1425) (store mapRest!34903 mapKey!34903 mapValue!34903))))

(declare-fun b!968587 () Bool)

(declare-datatypes ((List!20121 0))(
  ( (Nil!20118) (Cons!20117 (h!21279 (_ BitVec 64)) (t!28492 List!20121)) )
))
(declare-fun noDuplicate!1377 (List!20121) Bool)

(assert (=> b!968587 (= e!545949 (not (noDuplicate!1377 Nil!20118)))))

(assert (= (and start!83048 res!648482) b!968586))

(assert (= (and b!968586 res!648485) b!968583))

(assert (= (and b!968583 res!648484) b!968581))

(assert (= (and b!968581 res!648483) b!968587))

(assert (= (and b!968582 condMapEmpty!34903) mapIsEmpty!34903))

(assert (= (and b!968582 (not condMapEmpty!34903)) mapNonEmpty!34903))

(get-info :version)

(assert (= (and mapNonEmpty!34903 ((_ is ValueCellFull!10485) mapValue!34903)) b!968584))

(assert (= (and b!968582 ((_ is ValueCellFull!10485) mapDefault!34903)) b!968585))

(assert (= start!83048 b!968582))

(declare-fun m!896929 () Bool)

(assert (=> b!968583 m!896929))

(declare-fun m!896931 () Bool)

(assert (=> start!83048 m!896931))

(declare-fun m!896933 () Bool)

(assert (=> start!83048 m!896933))

(declare-fun m!896935 () Bool)

(assert (=> start!83048 m!896935))

(declare-fun m!896937 () Bool)

(assert (=> mapNonEmpty!34903 m!896937))

(declare-fun m!896939 () Bool)

(assert (=> b!968587 m!896939))

(check-sat (not mapNonEmpty!34903) (not b!968587) (not start!83048) tp_is_empty!21933 (not b!968583))
(check-sat)
(get-model)

(declare-fun b!968617 () Bool)

(declare-fun e!545975 () Bool)

(declare-fun e!545976 () Bool)

(assert (=> b!968617 (= e!545975 e!545976)))

(declare-fun c!99844 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968617 (= c!99844 (validKeyInArray!0 (select (arr!28819 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun b!968618 () Bool)

(declare-fun e!545977 () Bool)

(declare-fun call!41738 () Bool)

(assert (=> b!968618 (= e!545977 call!41738)))

(declare-fun bm!41735 () Bool)

(assert (=> bm!41735 (= call!41738 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1717 mask!2147))))

(declare-fun b!968619 () Bool)

(assert (=> b!968619 (= e!545976 call!41738)))

(declare-fun b!968620 () Bool)

(assert (=> b!968620 (= e!545976 e!545977)))

(declare-fun lt!431492 () (_ BitVec 64))

(assert (=> b!968620 (= lt!431492 (select (arr!28819 _keys!1717) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32335 0))(
  ( (Unit!32336) )
))
(declare-fun lt!431493 () Unit!32335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!59915 (_ BitVec 64) (_ BitVec 32)) Unit!32335)

(assert (=> b!968620 (= lt!431493 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1717 lt!431492 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!59915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!968620 (arrayContainsKey!0 _keys!1717 lt!431492 #b00000000000000000000000000000000)))

(declare-fun lt!431491 () Unit!32335)

(assert (=> b!968620 (= lt!431491 lt!431493)))

(declare-fun res!648503 () Bool)

(declare-datatypes ((SeekEntryResult!9187 0))(
  ( (MissingZero!9187 (index!39118 (_ BitVec 32))) (Found!9187 (index!39119 (_ BitVec 32))) (Intermediate!9187 (undefined!9999 Bool) (index!39120 (_ BitVec 32)) (x!83620 (_ BitVec 32))) (Undefined!9187) (MissingVacant!9187 (index!39121 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!59915 (_ BitVec 32)) SeekEntryResult!9187)

(assert (=> b!968620 (= res!648503 (= (seekEntryOrOpen!0 (select (arr!28819 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147) (Found!9187 #b00000000000000000000000000000000)))))

(assert (=> b!968620 (=> (not res!648503) (not e!545977))))

(declare-fun d!116183 () Bool)

(declare-fun res!648502 () Bool)

(assert (=> d!116183 (=> res!648502 e!545975)))

(assert (=> d!116183 (= res!648502 (bvsge #b00000000000000000000000000000000 (size!29299 _keys!1717)))))

(assert (=> d!116183 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147) e!545975)))

(assert (= (and d!116183 (not res!648502)) b!968617))

(assert (= (and b!968617 c!99844) b!968620))

(assert (= (and b!968617 (not c!99844)) b!968619))

(assert (= (and b!968620 res!648503) b!968618))

(assert (= (or b!968618 b!968619) bm!41735))

(declare-fun m!896953 () Bool)

(assert (=> b!968617 m!896953))

(assert (=> b!968617 m!896953))

(declare-fun m!896955 () Bool)

(assert (=> b!968617 m!896955))

(declare-fun m!896957 () Bool)

(assert (=> bm!41735 m!896957))

(assert (=> b!968620 m!896953))

(declare-fun m!896959 () Bool)

(assert (=> b!968620 m!896959))

(declare-fun m!896961 () Bool)

(assert (=> b!968620 m!896961))

(assert (=> b!968620 m!896953))

(declare-fun m!896963 () Bool)

(assert (=> b!968620 m!896963))

(assert (=> b!968583 d!116183))

(declare-fun d!116185 () Bool)

(declare-fun res!648508 () Bool)

(declare-fun e!545982 () Bool)

(assert (=> d!116185 (=> res!648508 e!545982)))

(assert (=> d!116185 (= res!648508 ((_ is Nil!20118) Nil!20118))))

(assert (=> d!116185 (= (noDuplicate!1377 Nil!20118) e!545982)))

(declare-fun b!968625 () Bool)

(declare-fun e!545983 () Bool)

(assert (=> b!968625 (= e!545982 e!545983)))

(declare-fun res!648509 () Bool)

(assert (=> b!968625 (=> (not res!648509) (not e!545983))))

(declare-fun contains!5547 (List!20121 (_ BitVec 64)) Bool)

(assert (=> b!968625 (= res!648509 (not (contains!5547 (t!28492 Nil!20118) (h!21279 Nil!20118))))))

(declare-fun b!968626 () Bool)

(assert (=> b!968626 (= e!545983 (noDuplicate!1377 (t!28492 Nil!20118)))))

(assert (= (and d!116185 (not res!648508)) b!968625))

(assert (= (and b!968625 res!648509) b!968626))

(declare-fun m!896965 () Bool)

(assert (=> b!968625 m!896965))

(declare-fun m!896967 () Bool)

(assert (=> b!968626 m!896967))

(assert (=> b!968587 d!116185))

(declare-fun d!116187 () Bool)

(assert (=> d!116187 (= (validMask!0 mask!2147) (and (or (= mask!2147 #b00000000000000000000000000000111) (= mask!2147 #b00000000000000000000000000001111) (= mask!2147 #b00000000000000000000000000011111) (= mask!2147 #b00000000000000000000000000111111) (= mask!2147 #b00000000000000000000000001111111) (= mask!2147 #b00000000000000000000000011111111) (= mask!2147 #b00000000000000000000000111111111) (= mask!2147 #b00000000000000000000001111111111) (= mask!2147 #b00000000000000000000011111111111) (= mask!2147 #b00000000000000000000111111111111) (= mask!2147 #b00000000000000000001111111111111) (= mask!2147 #b00000000000000000011111111111111) (= mask!2147 #b00000000000000000111111111111111) (= mask!2147 #b00000000000000001111111111111111) (= mask!2147 #b00000000000000011111111111111111) (= mask!2147 #b00000000000000111111111111111111) (= mask!2147 #b00000000000001111111111111111111) (= mask!2147 #b00000000000011111111111111111111) (= mask!2147 #b00000000000111111111111111111111) (= mask!2147 #b00000000001111111111111111111111) (= mask!2147 #b00000000011111111111111111111111) (= mask!2147 #b00000000111111111111111111111111) (= mask!2147 #b00000001111111111111111111111111) (= mask!2147 #b00000011111111111111111111111111) (= mask!2147 #b00000111111111111111111111111111) (= mask!2147 #b00001111111111111111111111111111) (= mask!2147 #b00011111111111111111111111111111) (= mask!2147 #b00111111111111111111111111111111)) (bvsle mask!2147 #b00111111111111111111111111111111)))))

(assert (=> start!83048 d!116187))

(declare-fun d!116189 () Bool)

(assert (=> d!116189 (= (array_inv!22203 _values!1425) (bvsge (size!29300 _values!1425) #b00000000000000000000000000000000))))

(assert (=> start!83048 d!116189))

(declare-fun d!116191 () Bool)

(assert (=> d!116191 (= (array_inv!22204 _keys!1717) (bvsge (size!29299 _keys!1717) #b00000000000000000000000000000000))))

(assert (=> start!83048 d!116191))

(declare-fun condMapEmpty!34909 () Bool)

(declare-fun mapDefault!34909 () ValueCell!10485)

(assert (=> mapNonEmpty!34903 (= condMapEmpty!34909 (= mapRest!34903 ((as const (Array (_ BitVec 32) ValueCell!10485)) mapDefault!34909)))))

(declare-fun e!545989 () Bool)

(declare-fun mapRes!34909 () Bool)

(assert (=> mapNonEmpty!34903 (= tp!66472 (and e!545989 mapRes!34909))))

(declare-fun mapIsEmpty!34909 () Bool)

(assert (=> mapIsEmpty!34909 mapRes!34909))

(declare-fun b!968633 () Bool)

(declare-fun e!545988 () Bool)

(assert (=> b!968633 (= e!545988 tp_is_empty!21933)))

(declare-fun b!968634 () Bool)

(assert (=> b!968634 (= e!545989 tp_is_empty!21933)))

(declare-fun mapNonEmpty!34909 () Bool)

(declare-fun tp!66478 () Bool)

(assert (=> mapNonEmpty!34909 (= mapRes!34909 (and tp!66478 e!545988))))

(declare-fun mapKey!34909 () (_ BitVec 32))

(declare-fun mapRest!34909 () (Array (_ BitVec 32) ValueCell!10485))

(declare-fun mapValue!34909 () ValueCell!10485)

(assert (=> mapNonEmpty!34909 (= mapRest!34903 (store mapRest!34909 mapKey!34909 mapValue!34909))))

(assert (= (and mapNonEmpty!34903 condMapEmpty!34909) mapIsEmpty!34909))

(assert (= (and mapNonEmpty!34903 (not condMapEmpty!34909)) mapNonEmpty!34909))

(assert (= (and mapNonEmpty!34909 ((_ is ValueCellFull!10485) mapValue!34909)) b!968633))

(assert (= (and mapNonEmpty!34903 ((_ is ValueCellFull!10485) mapDefault!34909)) b!968634))

(declare-fun m!896969 () Bool)

(assert (=> mapNonEmpty!34909 m!896969))

(check-sat (not bm!41735) tp_is_empty!21933 (not b!968617) (not b!968620) (not b!968626) (not mapNonEmpty!34909) (not b!968625))
(check-sat)
