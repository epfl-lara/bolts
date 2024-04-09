; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8330 () Bool)

(assert start!8330)

(declare-fun b!54734 () Bool)

(declare-fun b_free!1801 () Bool)

(declare-fun b_next!1801 () Bool)

(assert (=> b!54734 (= b_free!1801 (not b_next!1801))))

(declare-fun tp!7506 () Bool)

(declare-fun b_and!3153 () Bool)

(assert (=> b!54734 (= tp!7506 b_and!3153)))

(declare-fun b!54733 () Bool)

(declare-fun b_free!1803 () Bool)

(declare-fun b_next!1803 () Bool)

(assert (=> b!54733 (= b_free!1803 (not b_next!1803))))

(declare-fun tp!7503 () Bool)

(declare-fun b_and!3155 () Bool)

(assert (=> b!54733 (= tp!7503 b_and!3155)))

(declare-fun mapNonEmpty!2621 () Bool)

(declare-fun mapRes!2622 () Bool)

(declare-fun tp!7504 () Bool)

(declare-fun e!35797 () Bool)

(assert (=> mapNonEmpty!2621 (= mapRes!2622 (and tp!7504 e!35797))))

(declare-datatypes ((V!2737 0))(
  ( (V!2738 (val!1203 Int)) )
))
(declare-datatypes ((ValueCell!815 0))(
  ( (ValueCellFull!815 (v!2288 V!2737)) (EmptyCell!815) )
))
(declare-fun mapValue!2621 () ValueCell!815)

(declare-fun mapKey!2621 () (_ BitVec 32))

(declare-datatypes ((array!3556 0))(
  ( (array!3557 (arr!1700 (Array (_ BitVec 32) (_ BitVec 64))) (size!1929 (_ BitVec 32))) )
))
(declare-datatypes ((array!3558 0))(
  ( (array!3559 (arr!1701 (Array (_ BitVec 32) ValueCell!815)) (size!1930 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!538 0))(
  ( (LongMapFixedSize!539 (defaultEntry!1983 Int) (mask!5832 (_ BitVec 32)) (extraKeys!1874 (_ BitVec 32)) (zeroValue!1901 V!2737) (minValue!1901 V!2737) (_size!318 (_ BitVec 32)) (_keys!3603 array!3556) (_values!1966 array!3558) (_vacant!318 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!538)

(declare-fun mapRest!2622 () (Array (_ BitVec 32) ValueCell!815))

(assert (=> mapNonEmpty!2621 (= (arr!1701 (_values!1966 newMap!16)) (store mapRest!2622 mapKey!2621 mapValue!2621))))

(declare-fun b!54719 () Bool)

(declare-fun e!35793 () Bool)

(assert (=> b!54719 (= e!35793 true)))

(declare-fun lt!21727 () Bool)

(declare-datatypes ((Cell!348 0))(
  ( (Cell!349 (v!2289 LongMapFixedSize!538)) )
))
(declare-datatypes ((LongMap!348 0))(
  ( (LongMap!349 (underlying!185 Cell!348)) )
))
(declare-fun thiss!992 () LongMap!348)

(declare-datatypes ((List!1400 0))(
  ( (Nil!1397) (Cons!1396 (h!1976 (_ BitVec 64)) (t!4578 List!1400)) )
))
(declare-fun arrayNoDuplicates!0 (array!3556 (_ BitVec 32) List!1400) Bool)

(assert (=> b!54719 (= lt!21727 (arrayNoDuplicates!0 (_keys!3603 (v!2289 (underlying!185 thiss!992))) #b00000000000000000000000000000000 Nil!1397))))

(declare-fun b!54720 () Bool)

(declare-fun e!35792 () Bool)

(assert (=> b!54720 (= e!35792 (not e!35793))))

(declare-fun res!30922 () Bool)

(assert (=> b!54720 (=> res!30922 e!35793)))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!54720 (= res!30922 (or (bvsge (size!1929 (_keys!3603 (v!2289 (underlying!185 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!1929 (_keys!3603 (v!2289 (underlying!185 thiss!992))))) (bvsgt from!355 (size!1929 (_keys!3603 (v!2289 (underlying!185 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!3556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!54720 (arrayContainsKey!0 (_keys!3603 (v!2289 (underlying!185 thiss!992))) (select (arr!1700 (_keys!3603 (v!2289 (underlying!185 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!1434 0))(
  ( (Unit!1435) )
))
(declare-fun lt!21724 () Unit!1434)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!6 (array!3556 array!3558 (_ BitVec 32) (_ BitVec 32) V!2737 V!2737 (_ BitVec 64) (_ BitVec 32) Int) Unit!1434)

(assert (=> b!54720 (= lt!21724 (lemmaListMapContainsThenArrayContainsFrom!6 (_keys!3603 (v!2289 (underlying!185 thiss!992))) (_values!1966 (v!2289 (underlying!185 thiss!992))) (mask!5832 (v!2289 (underlying!185 thiss!992))) (extraKeys!1874 (v!2289 (underlying!185 thiss!992))) (zeroValue!1901 (v!2289 (underlying!185 thiss!992))) (minValue!1901 (v!2289 (underlying!185 thiss!992))) (select (arr!1700 (_keys!3603 (v!2289 (underlying!185 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1983 (v!2289 (underlying!185 thiss!992)))))))

(declare-fun b!54721 () Bool)

(declare-fun e!35789 () Bool)

(assert (=> b!54721 (= e!35789 e!35792)))

(declare-fun res!30920 () Bool)

(assert (=> b!54721 (=> (not res!30920) (not e!35792))))

(declare-datatypes ((tuple2!1948 0))(
  ( (tuple2!1949 (_1!984 (_ BitVec 64)) (_2!984 V!2737)) )
))
(declare-datatypes ((List!1401 0))(
  ( (Nil!1398) (Cons!1397 (h!1977 tuple2!1948) (t!4579 List!1401)) )
))
(declare-datatypes ((ListLongMap!1325 0))(
  ( (ListLongMap!1326 (toList!678 List!1401)) )
))
(declare-fun lt!21725 () ListLongMap!1325)

(declare-fun contains!649 (ListLongMap!1325 (_ BitVec 64)) Bool)

(assert (=> b!54721 (= res!30920 (contains!649 lt!21725 (select (arr!1700 (_keys!3603 (v!2289 (underlying!185 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1950 0))(
  ( (tuple2!1951 (_1!985 Bool) (_2!985 LongMapFixedSize!538)) )
))
(declare-fun lt!21726 () tuple2!1950)

(declare-fun update!61 (LongMapFixedSize!538 (_ BitVec 64) V!2737) tuple2!1950)

(declare-fun get!1026 (ValueCell!815 V!2737) V!2737)

(declare-fun dynLambda!289 (Int (_ BitVec 64)) V!2737)

(assert (=> b!54721 (= lt!21726 (update!61 newMap!16 (select (arr!1700 (_keys!3603 (v!2289 (underlying!185 thiss!992)))) from!355) (get!1026 (select (arr!1701 (_values!1966 (v!2289 (underlying!185 thiss!992)))) from!355) (dynLambda!289 (defaultEntry!1983 (v!2289 (underlying!185 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!2621 () Bool)

(assert (=> mapIsEmpty!2621 mapRes!2622))

(declare-fun b!54722 () Bool)

(declare-fun e!35799 () Bool)

(assert (=> b!54722 (= e!35799 e!35789)))

(declare-fun res!30921 () Bool)

(assert (=> b!54722 (=> (not res!30921) (not e!35789))))

(declare-fun lt!21723 () ListLongMap!1325)

(assert (=> b!54722 (= res!30921 (and (= lt!21723 lt!21725) (not (= (select (arr!1700 (_keys!3603 (v!2289 (underlying!185 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1700 (_keys!3603 (v!2289 (underlying!185 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1061 (LongMapFixedSize!538) ListLongMap!1325)

(assert (=> b!54722 (= lt!21725 (map!1061 newMap!16))))

(declare-fun getCurrentListMap!381 (array!3556 array!3558 (_ BitVec 32) (_ BitVec 32) V!2737 V!2737 (_ BitVec 32) Int) ListLongMap!1325)

(assert (=> b!54722 (= lt!21723 (getCurrentListMap!381 (_keys!3603 (v!2289 (underlying!185 thiss!992))) (_values!1966 (v!2289 (underlying!185 thiss!992))) (mask!5832 (v!2289 (underlying!185 thiss!992))) (extraKeys!1874 (v!2289 (underlying!185 thiss!992))) (zeroValue!1901 (v!2289 (underlying!185 thiss!992))) (minValue!1901 (v!2289 (underlying!185 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1983 (v!2289 (underlying!185 thiss!992)))))))

(declare-fun mapNonEmpty!2622 () Bool)

(declare-fun mapRes!2621 () Bool)

(declare-fun tp!7505 () Bool)

(declare-fun e!35801 () Bool)

(assert (=> mapNonEmpty!2622 (= mapRes!2621 (and tp!7505 e!35801))))

(declare-fun mapKey!2622 () (_ BitVec 32))

(declare-fun mapValue!2622 () ValueCell!815)

(declare-fun mapRest!2621 () (Array (_ BitVec 32) ValueCell!815))

(assert (=> mapNonEmpty!2622 (= (arr!1701 (_values!1966 (v!2289 (underlying!185 thiss!992)))) (store mapRest!2621 mapKey!2622 mapValue!2622))))

(declare-fun b!54723 () Bool)

(declare-fun e!35800 () Bool)

(declare-fun e!35786 () Bool)

(assert (=> b!54723 (= e!35800 e!35786)))

(declare-fun b!54724 () Bool)

(declare-fun tp_is_empty!2317 () Bool)

(assert (=> b!54724 (= e!35797 tp_is_empty!2317)))

(declare-fun b!54725 () Bool)

(declare-fun e!35791 () Bool)

(assert (=> b!54725 (= e!35791 e!35800)))

(declare-fun b!54726 () Bool)

(declare-fun e!35790 () Bool)

(assert (=> b!54726 (= e!35790 tp_is_empty!2317)))

(declare-fun b!54727 () Bool)

(declare-fun e!35788 () Bool)

(assert (=> b!54727 (= e!35788 tp_is_empty!2317)))

(declare-fun res!30918 () Bool)

(assert (=> start!8330 (=> (not res!30918) (not e!35799))))

(declare-fun valid!209 (LongMap!348) Bool)

(assert (=> start!8330 (= res!30918 (valid!209 thiss!992))))

(assert (=> start!8330 e!35799))

(assert (=> start!8330 e!35791))

(assert (=> start!8330 true))

(declare-fun e!35794 () Bool)

(assert (=> start!8330 e!35794))

(declare-fun b!54728 () Bool)

(declare-fun e!35798 () Bool)

(assert (=> b!54728 (= e!35798 (and e!35790 mapRes!2621))))

(declare-fun condMapEmpty!2622 () Bool)

(declare-fun mapDefault!2621 () ValueCell!815)

