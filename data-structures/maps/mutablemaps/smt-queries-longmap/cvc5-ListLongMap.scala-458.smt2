; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8372 () Bool)

(assert start!8372)

(declare-fun b!55968 () Bool)

(declare-fun b_free!1885 () Bool)

(declare-fun b_next!1885 () Bool)

(assert (=> b!55968 (= b_free!1885 (not b_next!1885))))

(declare-fun tp!7757 () Bool)

(declare-fun b_and!3321 () Bool)

(assert (=> b!55968 (= tp!7757 b_and!3321)))

(declare-fun b!55954 () Bool)

(declare-fun b_free!1887 () Bool)

(declare-fun b_next!1887 () Bool)

(assert (=> b!55954 (= b_free!1887 (not b_next!1887))))

(declare-fun tp!7755 () Bool)

(declare-fun b_and!3323 () Bool)

(assert (=> b!55954 (= tp!7755 b_and!3323)))

(declare-fun b!55948 () Bool)

(declare-fun e!36802 () Bool)

(declare-fun e!36809 () Bool)

(assert (=> b!55948 (= e!36802 e!36809)))

(declare-fun res!31479 () Bool)

(assert (=> b!55948 (=> (not res!31479) (not e!36809))))

(declare-datatypes ((V!2793 0))(
  ( (V!2794 (val!1224 Int)) )
))
(declare-datatypes ((array!3640 0))(
  ( (array!3641 (arr!1742 (Array (_ BitVec 32) (_ BitVec 64))) (size!1971 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!836 0))(
  ( (ValueCellFull!836 (v!2330 V!2793)) (EmptyCell!836) )
))
(declare-datatypes ((array!3642 0))(
  ( (array!3643 (arr!1743 (Array (_ BitVec 32) ValueCell!836)) (size!1972 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!580 0))(
  ( (LongMapFixedSize!581 (defaultEntry!2004 Int) (mask!5867 (_ BitVec 32)) (extraKeys!1895 (_ BitVec 32)) (zeroValue!1922 V!2793) (minValue!1922 V!2793) (_size!339 (_ BitVec 32)) (_keys!3624 array!3640) (_values!1987 array!3642) (_vacant!339 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!390 0))(
  ( (Cell!391 (v!2331 LongMapFixedSize!580)) )
))
(declare-datatypes ((LongMap!390 0))(
  ( (LongMap!391 (underlying!206 Cell!390)) )
))
(declare-fun thiss!992 () LongMap!390)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1994 0))(
  ( (tuple2!1995 (_1!1007 (_ BitVec 64)) (_2!1007 V!2793)) )
))
(declare-datatypes ((List!1426 0))(
  ( (Nil!1423) (Cons!1422 (h!2002 tuple2!1994) (t!4688 List!1426)) )
))
(declare-datatypes ((ListLongMap!1349 0))(
  ( (ListLongMap!1350 (toList!690 List!1426)) )
))
(declare-fun lt!22101 () ListLongMap!1349)

(declare-fun contains!667 (ListLongMap!1349 (_ BitVec 64)) Bool)

(assert (=> b!55948 (= res!31479 (contains!667 lt!22101 (select (arr!1742 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!580)

(declare-datatypes ((tuple2!1996 0))(
  ( (tuple2!1997 (_1!1008 Bool) (_2!1008 LongMapFixedSize!580)) )
))
(declare-fun lt!22102 () tuple2!1996)

(declare-fun update!72 (LongMapFixedSize!580 (_ BitVec 64) V!2793) tuple2!1996)

(declare-fun get!1051 (ValueCell!836 V!2793) V!2793)

(declare-fun dynLambda!300 (Int (_ BitVec 64)) V!2793)

(assert (=> b!55948 (= lt!22102 (update!72 newMap!16 (select (arr!1742 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) from!355) (get!1051 (select (arr!1743 (_values!1987 (v!2331 (underlying!206 thiss!992)))) from!355) (dynLambda!300 (defaultEntry!2004 (v!2331 (underlying!206 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!55949 () Bool)

(declare-fun e!36795 () Bool)

(declare-fun tp_is_empty!2359 () Bool)

(assert (=> b!55949 (= e!36795 tp_is_empty!2359)))

(declare-fun b!55950 () Bool)

(declare-fun e!36806 () Bool)

(declare-fun e!36800 () Bool)

(assert (=> b!55950 (= e!36806 e!36800)))

(declare-fun b!55951 () Bool)

(declare-fun e!36796 () Bool)

(assert (=> b!55951 (= e!36796 tp_is_empty!2359)))

(declare-fun b!55952 () Bool)

(declare-fun e!36805 () Bool)

(assert (=> b!55952 (= e!36805 e!36802)))

(declare-fun res!31481 () Bool)

(assert (=> b!55952 (=> (not res!31481) (not e!36802))))

(declare-fun lt!22098 () ListLongMap!1349)

(assert (=> b!55952 (= res!31481 (and (= lt!22098 lt!22101) (not (= (select (arr!1742 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1742 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1084 (LongMapFixedSize!580) ListLongMap!1349)

(assert (=> b!55952 (= lt!22101 (map!1084 newMap!16))))

(declare-fun getCurrentListMap!390 (array!3640 array!3642 (_ BitVec 32) (_ BitVec 32) V!2793 V!2793 (_ BitVec 32) Int) ListLongMap!1349)

(assert (=> b!55952 (= lt!22098 (getCurrentListMap!390 (_keys!3624 (v!2331 (underlying!206 thiss!992))) (_values!1987 (v!2331 (underlying!206 thiss!992))) (mask!5867 (v!2331 (underlying!206 thiss!992))) (extraKeys!1895 (v!2331 (underlying!206 thiss!992))) (zeroValue!1922 (v!2331 (underlying!206 thiss!992))) (minValue!1922 (v!2331 (underlying!206 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2004 (v!2331 (underlying!206 thiss!992)))))))

(declare-fun b!55953 () Bool)

(declare-fun res!31478 () Bool)

(declare-fun e!36798 () Bool)

(assert (=> b!55953 (=> res!31478 e!36798)))

(declare-datatypes ((List!1427 0))(
  ( (Nil!1424) (Cons!1423 (h!2003 (_ BitVec 64)) (t!4689 List!1427)) )
))
(declare-fun lt!22099 () List!1427)

(declare-fun contains!668 (List!1427 (_ BitVec 64)) Bool)

(assert (=> b!55953 (= res!31478 (contains!668 lt!22099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!36807 () Bool)

(declare-fun e!36799 () Bool)

(declare-fun array_inv!1023 (array!3640) Bool)

(declare-fun array_inv!1024 (array!3642) Bool)

(assert (=> b!55954 (= e!36807 (and tp!7755 tp_is_empty!2359 (array_inv!1023 (_keys!3624 newMap!16)) (array_inv!1024 (_values!1987 newMap!16)) e!36799))))

(declare-fun mapNonEmpty!2747 () Bool)

(declare-fun mapRes!2748 () Bool)

(declare-fun tp!7756 () Bool)

(assert (=> mapNonEmpty!2747 (= mapRes!2748 (and tp!7756 e!36796))))

(declare-fun mapValue!2748 () ValueCell!836)

(declare-fun mapRest!2748 () (Array (_ BitVec 32) ValueCell!836))

(declare-fun mapKey!2748 () (_ BitVec 32))

(assert (=> mapNonEmpty!2747 (= (arr!1743 (_values!1987 (v!2331 (underlying!206 thiss!992)))) (store mapRest!2748 mapKey!2748 mapValue!2748))))

(declare-fun b!55955 () Bool)

(declare-fun res!31477 () Bool)

(assert (=> b!55955 (=> (not res!31477) (not e!36805))))

(declare-fun valid!229 (LongMapFixedSize!580) Bool)

(assert (=> b!55955 (= res!31477 (valid!229 newMap!16))))

(declare-fun mapIsEmpty!2747 () Bool)

(declare-fun mapRes!2747 () Bool)

(assert (=> mapIsEmpty!2747 mapRes!2747))

(declare-fun b!55956 () Bool)

(assert (=> b!55956 (= e!36809 (not e!36798))))

(declare-fun res!31484 () Bool)

(assert (=> b!55956 (=> res!31484 e!36798)))

(assert (=> b!55956 (= res!31484 (or (bvsge (size!1971 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1971 (_keys!3624 (v!2331 (underlying!206 thiss!992)))))))))

(assert (=> b!55956 (= lt!22099 (Cons!1423 (select (arr!1742 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) from!355) Nil!1424))))

(declare-fun arrayNoDuplicates!0 (array!3640 (_ BitVec 32) List!1427) Bool)

(assert (=> b!55956 (arrayNoDuplicates!0 (_keys!3624 (v!2331 (underlying!206 thiss!992))) from!355 Nil!1424)))

(declare-datatypes ((Unit!1456 0))(
  ( (Unit!1457) )
))
(declare-fun lt!22096 () Unit!1456)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3640 (_ BitVec 32) (_ BitVec 32)) Unit!1456)

(assert (=> b!55956 (= lt!22096 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3624 (v!2331 (underlying!206 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55956 (arrayContainsKey!0 (_keys!3624 (v!2331 (underlying!206 thiss!992))) (select (arr!1742 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22100 () Unit!1456)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!17 (array!3640 array!3642 (_ BitVec 32) (_ BitVec 32) V!2793 V!2793 (_ BitVec 64) (_ BitVec 32) Int) Unit!1456)

(assert (=> b!55956 (= lt!22100 (lemmaListMapContainsThenArrayContainsFrom!17 (_keys!3624 (v!2331 (underlying!206 thiss!992))) (_values!1987 (v!2331 (underlying!206 thiss!992))) (mask!5867 (v!2331 (underlying!206 thiss!992))) (extraKeys!1895 (v!2331 (underlying!206 thiss!992))) (zeroValue!1922 (v!2331 (underlying!206 thiss!992))) (minValue!1922 (v!2331 (underlying!206 thiss!992))) (select (arr!1742 (_keys!3624 (v!2331 (underlying!206 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2004 (v!2331 (underlying!206 thiss!992)))))))

(declare-fun b!55957 () Bool)

(declare-fun e!36797 () Bool)

(assert (=> b!55957 (= e!36797 e!36806)))

(declare-fun b!55958 () Bool)

(declare-fun e!36801 () Bool)

(assert (=> b!55958 (= e!36799 (and e!36801 mapRes!2747))))

(declare-fun condMapEmpty!2748 () Bool)

(declare-fun mapDefault!2748 () ValueCell!836)

