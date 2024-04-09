; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8384 () Bool)

(assert start!8384)

(declare-fun b!56344 () Bool)

(declare-fun b_free!1909 () Bool)

(declare-fun b_next!1909 () Bool)

(assert (=> b!56344 (= b_free!1909 (not b_next!1909))))

(declare-fun tp!7828 () Bool)

(declare-fun b_and!3369 () Bool)

(assert (=> b!56344 (= tp!7828 b_and!3369)))

(declare-fun b!56342 () Bool)

(declare-fun b_free!1911 () Bool)

(declare-fun b_next!1911 () Bool)

(assert (=> b!56342 (= b_free!1911 (not b_next!1911))))

(declare-fun tp!7827 () Bool)

(declare-fun b_and!3371 () Bool)

(assert (=> b!56342 (= tp!7827 b_and!3371)))

(declare-fun b!56339 () Bool)

(declare-fun e!37097 () Bool)

(declare-fun e!37084 () Bool)

(assert (=> b!56339 (= e!37097 e!37084)))

(declare-fun b!56340 () Bool)

(declare-fun e!37094 () Bool)

(declare-fun tp_is_empty!2371 () Bool)

(assert (=> b!56340 (= e!37094 tp_is_empty!2371)))

(declare-fun b!56341 () Bool)

(declare-fun e!37082 () Bool)

(declare-fun e!37086 () Bool)

(assert (=> b!56341 (= e!37082 e!37086)))

(declare-fun res!31679 () Bool)

(assert (=> b!56341 (=> (not res!31679) (not e!37086))))

(declare-datatypes ((V!2809 0))(
  ( (V!2810 (val!1230 Int)) )
))
(declare-datatypes ((tuple2!2010 0))(
  ( (tuple2!2011 (_1!1015 (_ BitVec 64)) (_2!1015 V!2809)) )
))
(declare-datatypes ((List!1434 0))(
  ( (Nil!1431) (Cons!1430 (h!2010 tuple2!2010) (t!4720 List!1434)) )
))
(declare-datatypes ((ListLongMap!1357 0))(
  ( (ListLongMap!1358 (toList!694 List!1434)) )
))
(declare-fun lt!22227 () ListLongMap!1357)

(declare-fun lt!22228 () ListLongMap!1357)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((array!3664 0))(
  ( (array!3665 (arr!1754 (Array (_ BitVec 32) (_ BitVec 64))) (size!1983 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!842 0))(
  ( (ValueCellFull!842 (v!2342 V!2809)) (EmptyCell!842) )
))
(declare-datatypes ((array!3666 0))(
  ( (array!3667 (arr!1755 (Array (_ BitVec 32) ValueCell!842)) (size!1984 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!592 0))(
  ( (LongMapFixedSize!593 (defaultEntry!2010 Int) (mask!5877 (_ BitVec 32)) (extraKeys!1901 (_ BitVec 32)) (zeroValue!1928 V!2809) (minValue!1928 V!2809) (_size!345 (_ BitVec 32)) (_keys!3630 array!3664) (_values!1993 array!3666) (_vacant!345 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!402 0))(
  ( (Cell!403 (v!2343 LongMapFixedSize!592)) )
))
(declare-datatypes ((LongMap!402 0))(
  ( (LongMap!403 (underlying!212 Cell!402)) )
))
(declare-fun thiss!992 () LongMap!402)

(assert (=> b!56341 (= res!31679 (and (= lt!22228 lt!22227) (not (= (select (arr!1754 (_keys!3630 (v!2343 (underlying!212 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1754 (_keys!3630 (v!2343 (underlying!212 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!592)

(declare-fun map!1091 (LongMapFixedSize!592) ListLongMap!1357)

(assert (=> b!56341 (= lt!22227 (map!1091 newMap!16))))

(declare-fun getCurrentListMap!393 (array!3664 array!3666 (_ BitVec 32) (_ BitVec 32) V!2809 V!2809 (_ BitVec 32) Int) ListLongMap!1357)

(assert (=> b!56341 (= lt!22228 (getCurrentListMap!393 (_keys!3630 (v!2343 (underlying!212 thiss!992))) (_values!1993 (v!2343 (underlying!212 thiss!992))) (mask!5877 (v!2343 (underlying!212 thiss!992))) (extraKeys!1901 (v!2343 (underlying!212 thiss!992))) (zeroValue!1928 (v!2343 (underlying!212 thiss!992))) (minValue!1928 (v!2343 (underlying!212 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2010 (v!2343 (underlying!212 thiss!992)))))))

(declare-fun e!37095 () Bool)

(declare-fun e!37096 () Bool)

(declare-fun array_inv!1033 (array!3664) Bool)

(declare-fun array_inv!1034 (array!3666) Bool)

(assert (=> b!56342 (= e!37095 (and tp!7827 tp_is_empty!2371 (array_inv!1033 (_keys!3630 newMap!16)) (array_inv!1034 (_values!1993 newMap!16)) e!37096))))

(declare-fun b!56343 () Bool)

(declare-fun res!31677 () Bool)

(assert (=> b!56343 (=> (not res!31677) (not e!37082))))

(assert (=> b!56343 (= res!31677 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1983 (_keys!3630 (v!2343 (underlying!212 thiss!992)))))))))

(declare-fun e!37093 () Bool)

(declare-fun e!37090 () Bool)

(assert (=> b!56344 (= e!37093 (and tp!7828 tp_is_empty!2371 (array_inv!1033 (_keys!3630 (v!2343 (underlying!212 thiss!992)))) (array_inv!1034 (_values!1993 (v!2343 (underlying!212 thiss!992)))) e!37090))))

(declare-fun b!56345 () Bool)

(assert (=> b!56345 (= e!37084 e!37093)))

(declare-fun b!56346 () Bool)

(declare-fun res!31673 () Bool)

(declare-fun e!37087 () Bool)

(assert (=> b!56346 (=> res!31673 e!37087)))

(declare-datatypes ((List!1435 0))(
  ( (Nil!1432) (Cons!1431 (h!2011 (_ BitVec 64)) (t!4721 List!1435)) )
))
(declare-fun lt!22222 () List!1435)

(declare-fun noDuplicate!46 (List!1435) Bool)

(assert (=> b!56346 (= res!31673 (not (noDuplicate!46 lt!22222)))))

(declare-fun b!56347 () Bool)

(declare-fun e!37088 () Bool)

(assert (=> b!56347 (= e!37088 tp_is_empty!2371)))

(declare-fun b!56348 () Bool)

(declare-fun res!31674 () Bool)

(assert (=> b!56348 (=> res!31674 e!37087)))

(declare-fun contains!675 (List!1435 (_ BitVec 64)) Bool)

(assert (=> b!56348 (= res!31674 (contains!675 lt!22222 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56349 () Bool)

(assert (=> b!56349 (= e!37087 true)))

(declare-fun lt!22226 () Bool)

(assert (=> b!56349 (= lt!22226 (contains!675 lt!22222 (select (arr!1754 (_keys!3630 (v!2343 (underlying!212 thiss!992)))) from!355)))))

(declare-fun b!56350 () Bool)

(declare-fun e!37091 () Bool)

(assert (=> b!56350 (= e!37091 tp_is_empty!2371)))

(declare-fun b!56351 () Bool)

(declare-fun res!31676 () Bool)

(assert (=> b!56351 (=> res!31676 e!37087)))

(assert (=> b!56351 (= res!31676 (contains!675 lt!22222 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56338 () Bool)

(declare-fun res!31682 () Bool)

(assert (=> b!56338 (=> (not res!31682) (not e!37082))))

(declare-fun valid!235 (LongMapFixedSize!592) Bool)

(assert (=> b!56338 (= res!31682 (valid!235 newMap!16))))

(declare-fun res!31680 () Bool)

(assert (=> start!8384 (=> (not res!31680) (not e!37082))))

(declare-fun valid!236 (LongMap!402) Bool)

(assert (=> start!8384 (= res!31680 (valid!236 thiss!992))))

(assert (=> start!8384 e!37082))

(assert (=> start!8384 e!37097))

(assert (=> start!8384 true))

(assert (=> start!8384 e!37095))

(declare-fun b!56352 () Bool)

(declare-fun res!31675 () Bool)

(assert (=> b!56352 (=> (not res!31675) (not e!37082))))

(assert (=> b!56352 (= res!31675 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5877 newMap!16)) (_size!345 (v!2343 (underlying!212 thiss!992)))))))

(declare-fun mapIsEmpty!2783 () Bool)

(declare-fun mapRes!2783 () Bool)

(assert (=> mapIsEmpty!2783 mapRes!2783))

(declare-fun mapNonEmpty!2783 () Bool)

(declare-fun tp!7830 () Bool)

(assert (=> mapNonEmpty!2783 (= mapRes!2783 (and tp!7830 e!37091))))

(declare-fun mapRest!2784 () (Array (_ BitVec 32) ValueCell!842))

(declare-fun mapKey!2784 () (_ BitVec 32))

(declare-fun mapValue!2783 () ValueCell!842)

(assert (=> mapNonEmpty!2783 (= (arr!1755 (_values!1993 (v!2343 (underlying!212 thiss!992)))) (store mapRest!2784 mapKey!2784 mapValue!2783))))

(declare-fun b!56353 () Bool)

(declare-fun e!37092 () Bool)

(assert (=> b!56353 (= e!37090 (and e!37092 mapRes!2783))))

(declare-fun condMapEmpty!2784 () Bool)

(declare-fun mapDefault!2783 () ValueCell!842)

