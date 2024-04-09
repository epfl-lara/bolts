; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8394 () Bool)

(assert start!8394)

(declare-fun b!56668 () Bool)

(declare-fun b_free!1929 () Bool)

(declare-fun b_next!1929 () Bool)

(assert (=> b!56668 (= b_free!1929 (not b_next!1929))))

(declare-fun tp!7890 () Bool)

(declare-fun b_and!3409 () Bool)

(assert (=> b!56668 (= tp!7890 b_and!3409)))

(declare-fun b!56663 () Bool)

(declare-fun b_free!1931 () Bool)

(declare-fun b_next!1931 () Bool)

(assert (=> b!56663 (= b_free!1931 (not b_next!1931))))

(declare-fun tp!7888 () Bool)

(declare-fun b_and!3411 () Bool)

(assert (=> b!56663 (= tp!7888 b_and!3411)))

(declare-fun e!37331 () Bool)

(declare-fun tp_is_empty!2381 () Bool)

(declare-datatypes ((V!2821 0))(
  ( (V!2822 (val!1235 Int)) )
))
(declare-datatypes ((array!3684 0))(
  ( (array!3685 (arr!1764 (Array (_ BitVec 32) (_ BitVec 64))) (size!1993 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!847 0))(
  ( (ValueCellFull!847 (v!2352 V!2821)) (EmptyCell!847) )
))
(declare-datatypes ((array!3686 0))(
  ( (array!3687 (arr!1765 (Array (_ BitVec 32) ValueCell!847)) (size!1994 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!602 0))(
  ( (LongMapFixedSize!603 (defaultEntry!2015 Int) (mask!5884 (_ BitVec 32)) (extraKeys!1906 (_ BitVec 32)) (zeroValue!1933 V!2821) (minValue!1933 V!2821) (_size!350 (_ BitVec 32)) (_keys!3635 array!3684) (_values!1998 array!3686) (_vacant!350 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!602)

(declare-fun e!37326 () Bool)

(declare-fun array_inv!1043 (array!3684) Bool)

(declare-fun array_inv!1044 (array!3686) Bool)

(assert (=> b!56663 (= e!37331 (and tp!7888 tp_is_empty!2381 (array_inv!1043 (_keys!3635 newMap!16)) (array_inv!1044 (_values!1998 newMap!16)) e!37326))))

(declare-fun b!56664 () Bool)

(declare-fun e!37337 () Bool)

(declare-fun e!37323 () Bool)

(assert (=> b!56664 (= e!37337 e!37323)))

(declare-fun b!56665 () Bool)

(declare-fun e!37324 () Bool)

(declare-fun e!37332 () Bool)

(assert (=> b!56665 (= e!37324 e!37332)))

(declare-fun res!31839 () Bool)

(assert (=> b!56665 (=> (not res!31839) (not e!37332))))

(declare-datatypes ((Cell!412 0))(
  ( (Cell!413 (v!2353 LongMapFixedSize!602)) )
))
(declare-datatypes ((LongMap!412 0))(
  ( (LongMap!413 (underlying!217 Cell!412)) )
))
(declare-fun thiss!992 () LongMap!412)

(declare-datatypes ((tuple2!2026 0))(
  ( (tuple2!2027 (_1!1023 (_ BitVec 64)) (_2!1023 V!2821)) )
))
(declare-datatypes ((List!1444 0))(
  ( (Nil!1441) (Cons!1440 (h!2020 tuple2!2026) (t!4750 List!1444)) )
))
(declare-datatypes ((ListLongMap!1367 0))(
  ( (ListLongMap!1368 (toList!699 List!1444)) )
))
(declare-fun lt!22332 () ListLongMap!1367)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!22329 () ListLongMap!1367)

(assert (=> b!56665 (= res!31839 (and (= lt!22329 lt!22332) (not (= (select (arr!1764 (_keys!3635 (v!2353 (underlying!217 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1764 (_keys!3635 (v!2353 (underlying!217 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1098 (LongMapFixedSize!602) ListLongMap!1367)

(assert (=> b!56665 (= lt!22332 (map!1098 newMap!16))))

(declare-fun getCurrentListMap!398 (array!3684 array!3686 (_ BitVec 32) (_ BitVec 32) V!2821 V!2821 (_ BitVec 32) Int) ListLongMap!1367)

(assert (=> b!56665 (= lt!22329 (getCurrentListMap!398 (_keys!3635 (v!2353 (underlying!217 thiss!992))) (_values!1998 (v!2353 (underlying!217 thiss!992))) (mask!5884 (v!2353 (underlying!217 thiss!992))) (extraKeys!1906 (v!2353 (underlying!217 thiss!992))) (zeroValue!1933 (v!2353 (underlying!217 thiss!992))) (minValue!1933 (v!2353 (underlying!217 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2015 (v!2353 (underlying!217 thiss!992)))))))

(declare-fun b!56666 () Bool)

(declare-fun res!31838 () Bool)

(declare-fun e!37334 () Bool)

(assert (=> b!56666 (=> res!31838 e!37334)))

(declare-datatypes ((List!1445 0))(
  ( (Nil!1442) (Cons!1441 (h!2021 (_ BitVec 64)) (t!4751 List!1445)) )
))
(declare-fun lt!22327 () List!1445)

(declare-fun contains!683 (List!1445 (_ BitVec 64)) Bool)

(assert (=> b!56666 (= res!31838 (contains!683 lt!22327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!2813 () Bool)

(declare-fun mapRes!2813 () Bool)

(declare-fun tp!7889 () Bool)

(declare-fun e!37336 () Bool)

(assert (=> mapNonEmpty!2813 (= mapRes!2813 (and tp!7889 e!37336))))

(declare-fun mapRest!2813 () (Array (_ BitVec 32) ValueCell!847))

(declare-fun mapKey!2813 () (_ BitVec 32))

(declare-fun mapValue!2813 () ValueCell!847)

(assert (=> mapNonEmpty!2813 (= (arr!1765 (_values!1998 newMap!16)) (store mapRest!2813 mapKey!2813 mapValue!2813))))

(declare-fun b!56667 () Bool)

(declare-fun e!37322 () Bool)

(assert (=> b!56667 (= e!37332 e!37322)))

(declare-fun res!31845 () Bool)

(assert (=> b!56667 (=> (not res!31845) (not e!37322))))

(declare-fun contains!684 (ListLongMap!1367 (_ BitVec 64)) Bool)

(assert (=> b!56667 (= res!31845 (contains!684 lt!22332 (select (arr!1764 (_keys!3635 (v!2353 (underlying!217 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2028 0))(
  ( (tuple2!2029 (_1!1024 Bool) (_2!1024 LongMapFixedSize!602)) )
))
(declare-fun lt!22333 () tuple2!2028)

(declare-fun update!79 (LongMapFixedSize!602 (_ BitVec 64) V!2821) tuple2!2028)

(declare-fun get!1064 (ValueCell!847 V!2821) V!2821)

(declare-fun dynLambda!307 (Int (_ BitVec 64)) V!2821)

(assert (=> b!56667 (= lt!22333 (update!79 newMap!16 (select (arr!1764 (_keys!3635 (v!2353 (underlying!217 thiss!992)))) from!355) (get!1064 (select (arr!1765 (_values!1998 (v!2353 (underlying!217 thiss!992)))) from!355) (dynLambda!307 (defaultEntry!2015 (v!2353 (underlying!217 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!37335 () Bool)

(assert (=> b!56668 (= e!37323 (and tp!7890 tp_is_empty!2381 (array_inv!1043 (_keys!3635 (v!2353 (underlying!217 thiss!992)))) (array_inv!1044 (_values!1998 (v!2353 (underlying!217 thiss!992)))) e!37335))))

(declare-fun b!56669 () Bool)

(declare-fun res!31841 () Bool)

(assert (=> b!56669 (=> (not res!31841) (not e!37324))))

(assert (=> b!56669 (= res!31841 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1993 (_keys!3635 (v!2353 (underlying!217 thiss!992)))))))))

(declare-fun b!56670 () Bool)

(declare-fun e!37325 () Bool)

(declare-fun mapRes!2814 () Bool)

(assert (=> b!56670 (= e!37335 (and e!37325 mapRes!2814))))

(declare-fun condMapEmpty!2814 () Bool)

(declare-fun mapDefault!2814 () ValueCell!847)

