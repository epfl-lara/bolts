; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8314 () Bool)

(assert start!8314)

(declare-fun b!54244 () Bool)

(declare-fun b_free!1769 () Bool)

(declare-fun b_next!1769 () Bool)

(assert (=> b!54244 (= b_free!1769 (not b_next!1769))))

(declare-fun tp!7410 () Bool)

(declare-fun b_and!3089 () Bool)

(assert (=> b!54244 (= tp!7410 b_and!3089)))

(declare-fun b!54258 () Bool)

(declare-fun b_free!1771 () Bool)

(declare-fun b_next!1771 () Bool)

(assert (=> b!54258 (= b_free!1771 (not b_next!1771))))

(declare-fun tp!7407 () Bool)

(declare-fun b_and!3091 () Bool)

(assert (=> b!54258 (= tp!7407 b_and!3091)))

(declare-fun b!54243 () Bool)

(declare-fun e!35424 () Bool)

(declare-fun tp_is_empty!2301 () Bool)

(assert (=> b!54243 (= e!35424 tp_is_empty!2301)))

(declare-datatypes ((V!2715 0))(
  ( (V!2716 (val!1195 Int)) )
))
(declare-datatypes ((array!3524 0))(
  ( (array!3525 (arr!1684 (Array (_ BitVec 32) (_ BitVec 64))) (size!1913 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!807 0))(
  ( (ValueCellFull!807 (v!2273 V!2715)) (EmptyCell!807) )
))
(declare-datatypes ((array!3526 0))(
  ( (array!3527 (arr!1685 (Array (_ BitVec 32) ValueCell!807)) (size!1914 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!522 0))(
  ( (LongMapFixedSize!523 (defaultEntry!1975 Int) (mask!5818 (_ BitVec 32)) (extraKeys!1866 (_ BitVec 32)) (zeroValue!1893 V!2715) (minValue!1893 V!2715) (_size!310 (_ BitVec 32)) (_keys!3595 array!3524) (_values!1958 array!3526) (_vacant!310 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!334 0))(
  ( (Cell!335 (v!2274 LongMapFixedSize!522)) )
))
(declare-datatypes ((LongMap!334 0))(
  ( (LongMap!335 (underlying!178 Cell!334)) )
))
(declare-fun thiss!992 () LongMap!334)

(declare-fun e!35415 () Bool)

(declare-fun e!35427 () Bool)

(declare-fun array_inv!989 (array!3524) Bool)

(declare-fun array_inv!990 (array!3526) Bool)

(assert (=> b!54244 (= e!35427 (and tp!7410 tp_is_empty!2301 (array_inv!989 (_keys!3595 (v!2274 (underlying!178 thiss!992)))) (array_inv!990 (_values!1958 (v!2274 (underlying!178 thiss!992)))) e!35415))))

(declare-fun b!54245 () Bool)

(declare-fun e!35418 () Bool)

(assert (=> b!54245 (= e!35418 tp_is_empty!2301)))

(declare-fun b!54246 () Bool)

(declare-fun res!30705 () Bool)

(declare-fun e!35423 () Bool)

(assert (=> b!54246 (=> (not res!30705) (not e!35423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3524 (_ BitVec 32)) Bool)

(assert (=> b!54246 (= res!30705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3595 (v!2274 (underlying!178 thiss!992))) (mask!5818 (v!2274 (underlying!178 thiss!992)))))))

(declare-fun b!54247 () Bool)

(declare-fun res!30706 () Bool)

(assert (=> b!54247 (=> (not res!30706) (not e!35423))))

(assert (=> b!54247 (= res!30706 (and (= (size!1914 (_values!1958 (v!2274 (underlying!178 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5818 (v!2274 (underlying!178 thiss!992))))) (= (size!1913 (_keys!3595 (v!2274 (underlying!178 thiss!992)))) (size!1914 (_values!1958 (v!2274 (underlying!178 thiss!992))))) (bvsge (mask!5818 (v!2274 (underlying!178 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1866 (v!2274 (underlying!178 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1866 (v!2274 (underlying!178 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun res!30707 () Bool)

(declare-fun e!35426 () Bool)

(assert (=> start!8314 (=> (not res!30707) (not e!35426))))

(declare-fun valid!200 (LongMap!334) Bool)

(assert (=> start!8314 (= res!30707 (valid!200 thiss!992))))

(assert (=> start!8314 e!35426))

(declare-fun e!35422 () Bool)

(assert (=> start!8314 e!35422))

(assert (=> start!8314 true))

(declare-fun e!35420 () Bool)

(assert (=> start!8314 e!35420))

(declare-fun b!54248 () Bool)

(declare-fun e!35428 () Bool)

(assert (=> b!54248 (= e!35428 e!35423)))

(declare-fun res!30702 () Bool)

(assert (=> b!54248 (=> (not res!30702) (not e!35423))))

(declare-datatypes ((tuple2!1924 0))(
  ( (tuple2!1925 (_1!972 (_ BitVec 64)) (_2!972 V!2715)) )
))
(declare-datatypes ((List!1391 0))(
  ( (Nil!1388) (Cons!1387 (h!1967 tuple2!1924) (t!4537 List!1391)) )
))
(declare-datatypes ((ListLongMap!1313 0))(
  ( (ListLongMap!1314 (toList!672 List!1391)) )
))
(declare-fun lt!21617 () ListLongMap!1313)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!643 (ListLongMap!1313 (_ BitVec 64)) Bool)

(assert (=> b!54248 (= res!30702 (contains!643 lt!21617 (select (arr!1684 (_keys!3595 (v!2274 (underlying!178 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!522)

(declare-datatypes ((tuple2!1926 0))(
  ( (tuple2!1927 (_1!973 Bool) (_2!973 LongMapFixedSize!522)) )
))
(declare-fun lt!21616 () tuple2!1926)

(declare-fun update!55 (LongMapFixedSize!522 (_ BitVec 64) V!2715) tuple2!1926)

(declare-fun get!1014 (ValueCell!807 V!2715) V!2715)

(declare-fun dynLambda!283 (Int (_ BitVec 64)) V!2715)

(assert (=> b!54248 (= lt!21616 (update!55 newMap!16 (select (arr!1684 (_keys!3595 (v!2274 (underlying!178 thiss!992)))) from!355) (get!1014 (select (arr!1685 (_values!1958 (v!2274 (underlying!178 thiss!992)))) from!355) (dynLambda!283 (defaultEntry!1975 (v!2274 (underlying!178 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54249 () Bool)

(declare-fun e!35419 () Bool)

(assert (=> b!54249 (= e!35419 tp_is_empty!2301)))

(declare-fun mapIsEmpty!2573 () Bool)

(declare-fun mapRes!2573 () Bool)

(assert (=> mapIsEmpty!2573 mapRes!2573))

(declare-fun b!54250 () Bool)

(assert (=> b!54250 (= e!35423 false)))

(declare-fun lt!21619 () ListLongMap!1313)

(declare-fun lt!21618 () Bool)

(assert (=> b!54250 (= lt!21618 (contains!643 lt!21619 (select (arr!1684 (_keys!3595 (v!2274 (underlying!178 thiss!992)))) from!355)))))

(declare-fun mapNonEmpty!2573 () Bool)

(declare-fun mapRes!2574 () Bool)

(declare-fun tp!7408 () Bool)

(assert (=> mapNonEmpty!2573 (= mapRes!2574 (and tp!7408 e!35424))))

(declare-fun mapKey!2573 () (_ BitVec 32))

(declare-fun mapRest!2574 () (Array (_ BitVec 32) ValueCell!807))

(declare-fun mapValue!2574 () ValueCell!807)

(assert (=> mapNonEmpty!2573 (= (arr!1685 (_values!1958 (v!2274 (underlying!178 thiss!992)))) (store mapRest!2574 mapKey!2573 mapValue!2574))))

(declare-fun b!54251 () Bool)

(declare-fun res!30701 () Bool)

(assert (=> b!54251 (=> (not res!30701) (not e!35423))))

(assert (=> b!54251 (= res!30701 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1913 (_keys!3595 (v!2274 (underlying!178 thiss!992)))))))))

(declare-fun b!54252 () Bool)

(declare-fun res!30698 () Bool)

(assert (=> b!54252 (=> (not res!30698) (not e!35423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!54252 (= res!30698 (validMask!0 (mask!5818 (v!2274 (underlying!178 thiss!992)))))))

(declare-fun mapIsEmpty!2574 () Bool)

(assert (=> mapIsEmpty!2574 mapRes!2574))

(declare-fun b!54253 () Bool)

(declare-fun e!35429 () Bool)

(assert (=> b!54253 (= e!35422 e!35429)))

(declare-fun mapNonEmpty!2574 () Bool)

(declare-fun tp!7409 () Bool)

(assert (=> mapNonEmpty!2574 (= mapRes!2573 (and tp!7409 e!35418))))

(declare-fun mapValue!2573 () ValueCell!807)

(declare-fun mapRest!2573 () (Array (_ BitVec 32) ValueCell!807))

(declare-fun mapKey!2574 () (_ BitVec 32))

(assert (=> mapNonEmpty!2574 (= (arr!1685 (_values!1958 newMap!16)) (store mapRest!2573 mapKey!2574 mapValue!2573))))

(declare-fun b!54254 () Bool)

(assert (=> b!54254 (= e!35429 e!35427)))

(declare-fun b!54255 () Bool)

(declare-fun res!30700 () Bool)

(assert (=> b!54255 (=> (not res!30700) (not e!35426))))

(assert (=> b!54255 (= res!30700 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1913 (_keys!3595 (v!2274 (underlying!178 thiss!992)))))))))

(declare-fun b!54256 () Bool)

(declare-fun e!35421 () Bool)

(assert (=> b!54256 (= e!35421 (and e!35419 mapRes!2573))))

(declare-fun condMapEmpty!2573 () Bool)

(declare-fun mapDefault!2573 () ValueCell!807)

(assert (=> b!54256 (= condMapEmpty!2573 (= (arr!1685 (_values!1958 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!807)) mapDefault!2573)))))

(declare-fun b!54257 () Bool)

(declare-fun e!35417 () Bool)

(assert (=> b!54257 (= e!35415 (and e!35417 mapRes!2574))))

(declare-fun condMapEmpty!2574 () Bool)

(declare-fun mapDefault!2574 () ValueCell!807)

(assert (=> b!54257 (= condMapEmpty!2574 (= (arr!1685 (_values!1958 (v!2274 (underlying!178 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!807)) mapDefault!2574)))))

(assert (=> b!54258 (= e!35420 (and tp!7407 tp_is_empty!2301 (array_inv!989 (_keys!3595 newMap!16)) (array_inv!990 (_values!1958 newMap!16)) e!35421))))

(declare-fun b!54259 () Bool)

(declare-fun res!30699 () Bool)

(assert (=> b!54259 (=> (not res!30699) (not e!35423))))

(declare-datatypes ((List!1392 0))(
  ( (Nil!1389) (Cons!1388 (h!1968 (_ BitVec 64)) (t!4538 List!1392)) )
))
(declare-fun arrayNoDuplicates!0 (array!3524 (_ BitVec 32) List!1392) Bool)

(assert (=> b!54259 (= res!30699 (arrayNoDuplicates!0 (_keys!3595 (v!2274 (underlying!178 thiss!992))) #b00000000000000000000000000000000 Nil!1389))))

(declare-fun b!54260 () Bool)

(assert (=> b!54260 (= e!35426 e!35428)))

(declare-fun res!30708 () Bool)

(assert (=> b!54260 (=> (not res!30708) (not e!35428))))

(assert (=> b!54260 (= res!30708 (and (= lt!21619 lt!21617) (not (= (select (arr!1684 (_keys!3595 (v!2274 (underlying!178 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1684 (_keys!3595 (v!2274 (underlying!178 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1051 (LongMapFixedSize!522) ListLongMap!1313)

(assert (=> b!54260 (= lt!21617 (map!1051 newMap!16))))

(declare-fun getCurrentListMap!377 (array!3524 array!3526 (_ BitVec 32) (_ BitVec 32) V!2715 V!2715 (_ BitVec 32) Int) ListLongMap!1313)

(assert (=> b!54260 (= lt!21619 (getCurrentListMap!377 (_keys!3595 (v!2274 (underlying!178 thiss!992))) (_values!1958 (v!2274 (underlying!178 thiss!992))) (mask!5818 (v!2274 (underlying!178 thiss!992))) (extraKeys!1866 (v!2274 (underlying!178 thiss!992))) (zeroValue!1893 (v!2274 (underlying!178 thiss!992))) (minValue!1893 (v!2274 (underlying!178 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1975 (v!2274 (underlying!178 thiss!992)))))))

(declare-fun b!54261 () Bool)

(assert (=> b!54261 (= e!35417 tp_is_empty!2301)))

(declare-fun b!54262 () Bool)

(declare-fun res!30703 () Bool)

(assert (=> b!54262 (=> (not res!30703) (not e!35426))))

(declare-fun valid!201 (LongMapFixedSize!522) Bool)

(assert (=> b!54262 (= res!30703 (valid!201 newMap!16))))

(declare-fun b!54263 () Bool)

(declare-fun res!30704 () Bool)

(assert (=> b!54263 (=> (not res!30704) (not e!35426))))

(assert (=> b!54263 (= res!30704 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5818 newMap!16)) (_size!310 (v!2274 (underlying!178 thiss!992)))))))

(assert (= (and start!8314 res!30707) b!54255))

(assert (= (and b!54255 res!30700) b!54262))

(assert (= (and b!54262 res!30703) b!54263))

(assert (= (and b!54263 res!30704) b!54260))

(assert (= (and b!54260 res!30708) b!54248))

(assert (= (and b!54248 res!30702) b!54252))

(assert (= (and b!54252 res!30698) b!54247))

(assert (= (and b!54247 res!30706) b!54246))

(assert (= (and b!54246 res!30705) b!54259))

(assert (= (and b!54259 res!30699) b!54251))

(assert (= (and b!54251 res!30701) b!54250))

(assert (= (and b!54257 condMapEmpty!2574) mapIsEmpty!2574))

(assert (= (and b!54257 (not condMapEmpty!2574)) mapNonEmpty!2573))

(get-info :version)

(assert (= (and mapNonEmpty!2573 ((_ is ValueCellFull!807) mapValue!2574)) b!54243))

(assert (= (and b!54257 ((_ is ValueCellFull!807) mapDefault!2574)) b!54261))

(assert (= b!54244 b!54257))

(assert (= b!54254 b!54244))

(assert (= b!54253 b!54254))

(assert (= start!8314 b!54253))

(assert (= (and b!54256 condMapEmpty!2573) mapIsEmpty!2573))

(assert (= (and b!54256 (not condMapEmpty!2573)) mapNonEmpty!2574))

(assert (= (and mapNonEmpty!2574 ((_ is ValueCellFull!807) mapValue!2573)) b!54245))

(assert (= (and b!54256 ((_ is ValueCellFull!807) mapDefault!2573)) b!54249))

(assert (= b!54258 b!54256))

(assert (= start!8314 b!54258))

(declare-fun b_lambda!2415 () Bool)

(assert (=> (not b_lambda!2415) (not b!54248)))

(declare-fun t!4534 () Bool)

(declare-fun tb!1121 () Bool)

(assert (=> (and b!54244 (= (defaultEntry!1975 (v!2274 (underlying!178 thiss!992))) (defaultEntry!1975 (v!2274 (underlying!178 thiss!992)))) t!4534) tb!1121))

(declare-fun result!2075 () Bool)

(assert (=> tb!1121 (= result!2075 tp_is_empty!2301)))

(assert (=> b!54248 t!4534))

(declare-fun b_and!3093 () Bool)

(assert (= b_and!3089 (and (=> t!4534 result!2075) b_and!3093)))

(declare-fun t!4536 () Bool)

(declare-fun tb!1123 () Bool)

(assert (=> (and b!54258 (= (defaultEntry!1975 newMap!16) (defaultEntry!1975 (v!2274 (underlying!178 thiss!992)))) t!4536) tb!1123))

(declare-fun result!2079 () Bool)

(assert (= result!2079 result!2075))

(assert (=> b!54248 t!4536))

(declare-fun b_and!3095 () Bool)

(assert (= b_and!3091 (and (=> t!4536 result!2079) b_and!3095)))

(declare-fun m!45951 () Bool)

(assert (=> b!54262 m!45951))

(declare-fun m!45953 () Bool)

(assert (=> b!54244 m!45953))

(declare-fun m!45955 () Bool)

(assert (=> b!54244 m!45955))

(declare-fun m!45957 () Bool)

(assert (=> b!54246 m!45957))

(declare-fun m!45959 () Bool)

(assert (=> b!54248 m!45959))

(declare-fun m!45961 () Bool)

(assert (=> b!54248 m!45961))

(declare-fun m!45963 () Bool)

(assert (=> b!54248 m!45963))

(declare-fun m!45965 () Bool)

(assert (=> b!54248 m!45965))

(declare-fun m!45967 () Bool)

(assert (=> b!54248 m!45967))

(assert (=> b!54248 m!45965))

(assert (=> b!54248 m!45961))

(assert (=> b!54248 m!45965))

(assert (=> b!54248 m!45963))

(declare-fun m!45969 () Bool)

(assert (=> b!54248 m!45969))

(assert (=> b!54248 m!45959))

(declare-fun m!45971 () Bool)

(assert (=> b!54252 m!45971))

(assert (=> b!54250 m!45965))

(assert (=> b!54250 m!45965))

(declare-fun m!45973 () Bool)

(assert (=> b!54250 m!45973))

(declare-fun m!45975 () Bool)

(assert (=> start!8314 m!45975))

(declare-fun m!45977 () Bool)

(assert (=> mapNonEmpty!2573 m!45977))

(assert (=> b!54260 m!45965))

(declare-fun m!45979 () Bool)

(assert (=> b!54260 m!45979))

(declare-fun m!45981 () Bool)

(assert (=> b!54260 m!45981))

(declare-fun m!45983 () Bool)

(assert (=> b!54259 m!45983))

(declare-fun m!45985 () Bool)

(assert (=> b!54258 m!45985))

(declare-fun m!45987 () Bool)

(assert (=> b!54258 m!45987))

(declare-fun m!45989 () Bool)

(assert (=> mapNonEmpty!2574 m!45989))

(check-sat (not b_next!1769) (not start!8314) (not b!54248) (not b!54244) (not mapNonEmpty!2574) (not mapNonEmpty!2573) (not b!54258) tp_is_empty!2301 (not b!54259) b_and!3095 (not b!54246) (not b!54262) (not b!54252) b_and!3093 (not b_next!1771) (not b!54260) (not b!54250) (not b_lambda!2415))
(check-sat b_and!3093 b_and!3095 (not b_next!1769) (not b_next!1771))
