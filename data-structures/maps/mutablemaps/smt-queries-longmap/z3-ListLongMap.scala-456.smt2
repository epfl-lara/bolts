; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8362 () Bool)

(assert start!8362)

(declare-fun b!55635 () Bool)

(declare-fun b_free!1865 () Bool)

(declare-fun b_next!1865 () Bool)

(assert (=> b!55635 (= b_free!1865 (not b_next!1865))))

(declare-fun tp!7697 () Bool)

(declare-fun b_and!3281 () Bool)

(assert (=> b!55635 (= tp!7697 b_and!3281)))

(declare-fun b!55627 () Bool)

(declare-fun b_free!1867 () Bool)

(declare-fun b_next!1867 () Bool)

(assert (=> b!55627 (= b_free!1867 (not b_next!1867))))

(declare-fun tp!7695 () Bool)

(declare-fun b_and!3283 () Bool)

(assert (=> b!55627 (= tp!7695 b_and!3283)))

(declare-fun b!55623 () Bool)

(declare-fun e!36556 () Bool)

(declare-fun e!36555 () Bool)

(assert (=> b!55623 (= e!36556 e!36555)))

(declare-fun res!31311 () Bool)

(assert (=> b!55623 (=> (not res!31311) (not e!36555))))

(declare-datatypes ((V!2779 0))(
  ( (V!2780 (val!1219 Int)) )
))
(declare-datatypes ((array!3620 0))(
  ( (array!3621 (arr!1732 (Array (_ BitVec 32) (_ BitVec 64))) (size!1961 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!831 0))(
  ( (ValueCellFull!831 (v!2320 V!2779)) (EmptyCell!831) )
))
(declare-datatypes ((array!3622 0))(
  ( (array!3623 (arr!1733 (Array (_ BitVec 32) ValueCell!831)) (size!1962 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!570 0))(
  ( (LongMapFixedSize!571 (defaultEntry!1999 Int) (mask!5858 (_ BitVec 32)) (extraKeys!1890 (_ BitVec 32)) (zeroValue!1917 V!2779) (minValue!1917 V!2779) (_size!334 (_ BitVec 32)) (_keys!3619 array!3620) (_values!1982 array!3622) (_vacant!334 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!380 0))(
  ( (Cell!381 (v!2321 LongMapFixedSize!570)) )
))
(declare-datatypes ((LongMap!380 0))(
  ( (LongMap!381 (underlying!201 Cell!380)) )
))
(declare-fun thiss!992 () LongMap!380)

(declare-datatypes ((tuple2!1978 0))(
  ( (tuple2!1979 (_1!999 (_ BitVec 64)) (_2!999 V!2779)) )
))
(declare-datatypes ((List!1417 0))(
  ( (Nil!1414) (Cons!1413 (h!1993 tuple2!1978) (t!4659 List!1417)) )
))
(declare-datatypes ((ListLongMap!1341 0))(
  ( (ListLongMap!1342 (toList!686 List!1417)) )
))
(declare-fun lt!21991 () ListLongMap!1341)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!21994 () ListLongMap!1341)

(assert (=> b!55623 (= res!31311 (and (= lt!21991 lt!21994) (not (= (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!570)

(declare-fun map!1078 (LongMapFixedSize!570) ListLongMap!1341)

(assert (=> b!55623 (= lt!21994 (map!1078 newMap!16))))

(declare-fun getCurrentListMap!388 (array!3620 array!3622 (_ BitVec 32) (_ BitVec 32) V!2779 V!2779 (_ BitVec 32) Int) ListLongMap!1341)

(assert (=> b!55623 (= lt!21991 (getCurrentListMap!388 (_keys!3619 (v!2321 (underlying!201 thiss!992))) (_values!1982 (v!2321 (underlying!201 thiss!992))) (mask!5858 (v!2321 (underlying!201 thiss!992))) (extraKeys!1890 (v!2321 (underlying!201 thiss!992))) (zeroValue!1917 (v!2321 (underlying!201 thiss!992))) (minValue!1917 (v!2321 (underlying!201 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1999 (v!2321 (underlying!201 thiss!992)))))))

(declare-fun b!55624 () Bool)

(declare-fun res!31318 () Bool)

(declare-fun e!36558 () Bool)

(assert (=> b!55624 (=> res!31318 e!36558)))

(declare-datatypes ((List!1418 0))(
  ( (Nil!1415) (Cons!1414 (h!1994 (_ BitVec 64)) (t!4660 List!1418)) )
))
(declare-fun lt!21996 () List!1418)

(declare-fun noDuplicate!40 (List!1418) Bool)

(assert (=> b!55624 (= res!31318 (not (noDuplicate!40 lt!21996)))))

(declare-fun b!55625 () Bool)

(declare-fun res!31313 () Bool)

(assert (=> b!55625 (=> (not res!31313) (not e!36556))))

(declare-fun valid!223 (LongMapFixedSize!570) Bool)

(assert (=> b!55625 (= res!31313 (valid!223 newMap!16))))

(declare-fun mapNonEmpty!2717 () Bool)

(declare-fun mapRes!2717 () Bool)

(declare-fun tp!7696 () Bool)

(declare-fun e!36562 () Bool)

(assert (=> mapNonEmpty!2717 (= mapRes!2717 (and tp!7696 e!36562))))

(declare-fun mapRest!2717 () (Array (_ BitVec 32) ValueCell!831))

(declare-fun mapValue!2718 () ValueCell!831)

(declare-fun mapKey!2717 () (_ BitVec 32))

(assert (=> mapNonEmpty!2717 (= (arr!1733 (_values!1982 (v!2321 (underlying!201 thiss!992)))) (store mapRest!2717 mapKey!2717 mapValue!2718))))

(declare-fun b!55626 () Bool)

(declare-fun res!31310 () Bool)

(assert (=> b!55626 (=> res!31310 e!36558)))

(declare-fun arrayNoDuplicates!0 (array!3620 (_ BitVec 32) List!1418) Bool)

(assert (=> b!55626 (= res!31310 (not (arrayNoDuplicates!0 (_keys!3619 (v!2321 (underlying!201 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!21996)))))

(declare-fun e!36560 () Bool)

(declare-fun e!36554 () Bool)

(declare-fun tp_is_empty!2349 () Bool)

(declare-fun array_inv!1013 (array!3620) Bool)

(declare-fun array_inv!1014 (array!3622) Bool)

(assert (=> b!55627 (= e!36554 (and tp!7695 tp_is_empty!2349 (array_inv!1013 (_keys!3619 newMap!16)) (array_inv!1014 (_values!1982 newMap!16)) e!36560))))

(declare-fun b!55628 () Bool)

(declare-fun res!31315 () Bool)

(assert (=> b!55628 (=> (not res!31315) (not e!36556))))

(assert (=> b!55628 (= res!31315 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5858 newMap!16)) (_size!334 (v!2321 (underlying!201 thiss!992)))))))

(declare-fun res!31320 () Bool)

(assert (=> start!8362 (=> (not res!31320) (not e!36556))))

(declare-fun valid!224 (LongMap!380) Bool)

(assert (=> start!8362 (= res!31320 (valid!224 thiss!992))))

(assert (=> start!8362 e!36556))

(declare-fun e!36568 () Bool)

(assert (=> start!8362 e!36568))

(assert (=> start!8362 true))

(assert (=> start!8362 e!36554))

(declare-fun b!55629 () Bool)

(declare-fun e!36569 () Bool)

(assert (=> b!55629 (= e!36569 tp_is_empty!2349)))

(declare-fun b!55630 () Bool)

(declare-fun e!36563 () Bool)

(assert (=> b!55630 (= e!36563 (and e!36569 mapRes!2717))))

(declare-fun condMapEmpty!2718 () Bool)

(declare-fun mapDefault!2717 () ValueCell!831)

(assert (=> b!55630 (= condMapEmpty!2718 (= (arr!1733 (_values!1982 (v!2321 (underlying!201 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!831)) mapDefault!2717)))))

(declare-fun b!55631 () Bool)

(declare-fun e!36567 () Bool)

(assert (=> b!55631 (= e!36568 e!36567)))

(declare-fun b!55632 () Bool)

(declare-fun res!31312 () Bool)

(assert (=> b!55632 (=> (not res!31312) (not e!36556))))

(assert (=> b!55632 (= res!31312 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1961 (_keys!3619 (v!2321 (underlying!201 thiss!992)))))))))

(declare-fun b!55633 () Bool)

(declare-fun e!36559 () Bool)

(assert (=> b!55633 (= e!36559 tp_is_empty!2349)))

(declare-fun b!55634 () Bool)

(declare-fun e!36565 () Bool)

(assert (=> b!55634 (= e!36565 tp_is_empty!2349)))

(declare-fun mapIsEmpty!2717 () Bool)

(assert (=> mapIsEmpty!2717 mapRes!2717))

(declare-fun e!36566 () Bool)

(assert (=> b!55635 (= e!36566 (and tp!7697 tp_is_empty!2349 (array_inv!1013 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) (array_inv!1014 (_values!1982 (v!2321 (underlying!201 thiss!992)))) e!36563))))

(declare-fun mapNonEmpty!2718 () Bool)

(declare-fun mapRes!2718 () Bool)

(declare-fun tp!7698 () Bool)

(assert (=> mapNonEmpty!2718 (= mapRes!2718 (and tp!7698 e!36565))))

(declare-fun mapKey!2718 () (_ BitVec 32))

(declare-fun mapRest!2718 () (Array (_ BitVec 32) ValueCell!831))

(declare-fun mapValue!2717 () ValueCell!831)

(assert (=> mapNonEmpty!2718 (= (arr!1733 (_values!1982 newMap!16)) (store mapRest!2718 mapKey!2718 mapValue!2717))))

(declare-fun b!55636 () Bool)

(assert (=> b!55636 (= e!36560 (and e!36559 mapRes!2718))))

(declare-fun condMapEmpty!2717 () Bool)

(declare-fun mapDefault!2718 () ValueCell!831)

(assert (=> b!55636 (= condMapEmpty!2717 (= (arr!1733 (_values!1982 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!831)) mapDefault!2718)))))

(declare-fun b!55637 () Bool)

(declare-fun e!36564 () Bool)

(assert (=> b!55637 (= e!36555 e!36564)))

(declare-fun res!31317 () Bool)

(assert (=> b!55637 (=> (not res!31317) (not e!36564))))

(declare-fun contains!660 (ListLongMap!1341 (_ BitVec 64)) Bool)

(assert (=> b!55637 (= res!31317 (contains!660 lt!21994 (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1980 0))(
  ( (tuple2!1981 (_1!1000 Bool) (_2!1000 LongMapFixedSize!570)) )
))
(declare-fun lt!21993 () tuple2!1980)

(declare-fun update!68 (LongMapFixedSize!570 (_ BitVec 64) V!2779) tuple2!1980)

(declare-fun get!1043 (ValueCell!831 V!2779) V!2779)

(declare-fun dynLambda!296 (Int (_ BitVec 64)) V!2779)

(assert (=> b!55637 (= lt!21993 (update!68 newMap!16 (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355) (get!1043 (select (arr!1733 (_values!1982 (v!2321 (underlying!201 thiss!992)))) from!355) (dynLambda!296 (defaultEntry!1999 (v!2321 (underlying!201 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!55638 () Bool)

(assert (=> b!55638 (= e!36562 tp_is_empty!2349)))

(declare-fun b!55639 () Bool)

(assert (=> b!55639 (= e!36564 (not e!36558))))

(declare-fun res!31319 () Bool)

(assert (=> b!55639 (=> res!31319 e!36558)))

(assert (=> b!55639 (= res!31319 (or (bvsge (size!1961 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1961 (_keys!3619 (v!2321 (underlying!201 thiss!992)))))))))

(assert (=> b!55639 (= lt!21996 (Cons!1414 (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355) Nil!1415))))

(assert (=> b!55639 (arrayNoDuplicates!0 (_keys!3619 (v!2321 (underlying!201 thiss!992))) from!355 Nil!1415)))

(declare-datatypes ((Unit!1448 0))(
  ( (Unit!1449) )
))
(declare-fun lt!21995 () Unit!1448)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3620 (_ BitVec 32) (_ BitVec 32)) Unit!1448)

(assert (=> b!55639 (= lt!21995 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3619 (v!2321 (underlying!201 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55639 (arrayContainsKey!0 (_keys!3619 (v!2321 (underlying!201 thiss!992))) (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!21992 () Unit!1448)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!13 (array!3620 array!3622 (_ BitVec 32) (_ BitVec 32) V!2779 V!2779 (_ BitVec 64) (_ BitVec 32) Int) Unit!1448)

(assert (=> b!55639 (= lt!21992 (lemmaListMapContainsThenArrayContainsFrom!13 (_keys!3619 (v!2321 (underlying!201 thiss!992))) (_values!1982 (v!2321 (underlying!201 thiss!992))) (mask!5858 (v!2321 (underlying!201 thiss!992))) (extraKeys!1890 (v!2321 (underlying!201 thiss!992))) (zeroValue!1917 (v!2321 (underlying!201 thiss!992))) (minValue!1917 (v!2321 (underlying!201 thiss!992))) (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1999 (v!2321 (underlying!201 thiss!992)))))))

(declare-fun b!55640 () Bool)

(assert (=> b!55640 (= e!36567 e!36566)))

(declare-fun b!55641 () Bool)

(declare-fun res!31316 () Bool)

(assert (=> b!55641 (=> res!31316 e!36558)))

(declare-fun contains!661 (List!1418 (_ BitVec 64)) Bool)

(assert (=> b!55641 (= res!31316 (contains!661 lt!21996 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!2718 () Bool)

(assert (=> mapIsEmpty!2718 mapRes!2718))

(declare-fun b!55642 () Bool)

(assert (=> b!55642 (= e!36558 true)))

(declare-fun lt!21997 () Bool)

(assert (=> b!55642 (= lt!21997 (contains!661 lt!21996 (select (arr!1732 (_keys!3619 (v!2321 (underlying!201 thiss!992)))) from!355)))))

(declare-fun b!55643 () Bool)

(declare-fun res!31314 () Bool)

(assert (=> b!55643 (=> res!31314 e!36558)))

(assert (=> b!55643 (= res!31314 (contains!661 lt!21996 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!8362 res!31320) b!55632))

(assert (= (and b!55632 res!31312) b!55625))

(assert (= (and b!55625 res!31313) b!55628))

(assert (= (and b!55628 res!31315) b!55623))

(assert (= (and b!55623 res!31311) b!55637))

(assert (= (and b!55637 res!31317) b!55639))

(assert (= (and b!55639 (not res!31319)) b!55624))

(assert (= (and b!55624 (not res!31318)) b!55641))

(assert (= (and b!55641 (not res!31316)) b!55643))

(assert (= (and b!55643 (not res!31314)) b!55626))

(assert (= (and b!55626 (not res!31310)) b!55642))

(assert (= (and b!55630 condMapEmpty!2718) mapIsEmpty!2717))

(assert (= (and b!55630 (not condMapEmpty!2718)) mapNonEmpty!2717))

(get-info :version)

(assert (= (and mapNonEmpty!2717 ((_ is ValueCellFull!831) mapValue!2718)) b!55638))

(assert (= (and b!55630 ((_ is ValueCellFull!831) mapDefault!2717)) b!55629))

(assert (= b!55635 b!55630))

(assert (= b!55640 b!55635))

(assert (= b!55631 b!55640))

(assert (= start!8362 b!55631))

(assert (= (and b!55636 condMapEmpty!2717) mapIsEmpty!2718))

(assert (= (and b!55636 (not condMapEmpty!2717)) mapNonEmpty!2718))

(assert (= (and mapNonEmpty!2718 ((_ is ValueCellFull!831) mapValue!2717)) b!55634))

(assert (= (and b!55636 ((_ is ValueCellFull!831) mapDefault!2718)) b!55633))

(assert (= b!55627 b!55636))

(assert (= start!8362 b!55627))

(declare-fun b_lambda!2463 () Bool)

(assert (=> (not b_lambda!2463) (not b!55637)))

(declare-fun t!4656 () Bool)

(declare-fun tb!1217 () Bool)

(assert (=> (and b!55635 (= (defaultEntry!1999 (v!2321 (underlying!201 thiss!992))) (defaultEntry!1999 (v!2321 (underlying!201 thiss!992)))) t!4656) tb!1217))

(declare-fun result!2219 () Bool)

(assert (=> tb!1217 (= result!2219 tp_is_empty!2349)))

(assert (=> b!55637 t!4656))

(declare-fun b_and!3285 () Bool)

(assert (= b_and!3281 (and (=> t!4656 result!2219) b_and!3285)))

(declare-fun tb!1219 () Bool)

(declare-fun t!4658 () Bool)

(assert (=> (and b!55627 (= (defaultEntry!1999 newMap!16) (defaultEntry!1999 (v!2321 (underlying!201 thiss!992)))) t!4658) tb!1219))

(declare-fun result!2223 () Bool)

(assert (= result!2223 result!2219))

(assert (=> b!55637 t!4658))

(declare-fun b_and!3287 () Bool)

(assert (= b_and!3283 (and (=> t!4658 result!2223) b_and!3287)))

(declare-fun m!46921 () Bool)

(assert (=> b!55639 m!46921))

(declare-fun m!46923 () Bool)

(assert (=> b!55639 m!46923))

(declare-fun m!46925 () Bool)

(assert (=> b!55639 m!46925))

(declare-fun m!46927 () Bool)

(assert (=> b!55639 m!46927))

(assert (=> b!55639 m!46925))

(assert (=> b!55639 m!46925))

(declare-fun m!46929 () Bool)

(assert (=> b!55639 m!46929))

(declare-fun m!46931 () Bool)

(assert (=> b!55627 m!46931))

(declare-fun m!46933 () Bool)

(assert (=> b!55627 m!46933))

(assert (=> b!55637 m!46925))

(declare-fun m!46935 () Bool)

(assert (=> b!55637 m!46935))

(declare-fun m!46937 () Bool)

(assert (=> b!55637 m!46937))

(declare-fun m!46939 () Bool)

(assert (=> b!55637 m!46939))

(declare-fun m!46941 () Bool)

(assert (=> b!55637 m!46941))

(assert (=> b!55637 m!46925))

(assert (=> b!55637 m!46939))

(assert (=> b!55637 m!46925))

(assert (=> b!55637 m!46941))

(declare-fun m!46943 () Bool)

(assert (=> b!55637 m!46943))

(assert (=> b!55637 m!46937))

(declare-fun m!46945 () Bool)

(assert (=> b!55643 m!46945))

(declare-fun m!46947 () Bool)

(assert (=> b!55635 m!46947))

(declare-fun m!46949 () Bool)

(assert (=> b!55635 m!46949))

(declare-fun m!46951 () Bool)

(assert (=> b!55624 m!46951))

(declare-fun m!46953 () Bool)

(assert (=> mapNonEmpty!2717 m!46953))

(declare-fun m!46955 () Bool)

(assert (=> b!55625 m!46955))

(assert (=> b!55623 m!46925))

(declare-fun m!46957 () Bool)

(assert (=> b!55623 m!46957))

(declare-fun m!46959 () Bool)

(assert (=> b!55623 m!46959))

(declare-fun m!46961 () Bool)

(assert (=> mapNonEmpty!2718 m!46961))

(declare-fun m!46963 () Bool)

(assert (=> b!55641 m!46963))

(declare-fun m!46965 () Bool)

(assert (=> start!8362 m!46965))

(assert (=> b!55642 m!46925))

(assert (=> b!55642 m!46925))

(declare-fun m!46967 () Bool)

(assert (=> b!55642 m!46967))

(declare-fun m!46969 () Bool)

(assert (=> b!55626 m!46969))

(check-sat (not b!55635) (not b!55643) (not b!55626) b_and!3287 (not b!55624) (not b!55627) (not b_next!1867) (not b!55642) (not mapNonEmpty!2718) tp_is_empty!2349 (not b!55637) (not start!8362) (not b_lambda!2463) (not b!55623) (not b!55641) (not mapNonEmpty!2717) (not b_next!1865) (not b!55625) (not b!55639) b_and!3285)
(check-sat b_and!3285 b_and!3287 (not b_next!1865) (not b_next!1867))
