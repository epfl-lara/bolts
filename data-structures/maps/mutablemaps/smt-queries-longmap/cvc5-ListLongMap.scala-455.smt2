; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8354 () Bool)

(assert start!8354)

(declare-fun b!55373 () Bool)

(declare-fun b_free!1849 () Bool)

(declare-fun b_next!1849 () Bool)

(assert (=> b!55373 (= b_free!1849 (not b_next!1849))))

(declare-fun tp!7649 () Bool)

(declare-fun b_and!3249 () Bool)

(assert (=> b!55373 (= tp!7649 b_and!3249)))

(declare-fun b!55383 () Bool)

(declare-fun b_free!1851 () Bool)

(declare-fun b_next!1851 () Bool)

(assert (=> b!55383 (= b_free!1851 (not b_next!1851))))

(declare-fun tp!7650 () Bool)

(declare-fun b_and!3251 () Bool)

(assert (=> b!55383 (= tp!7650 b_and!3251)))

(declare-fun b!55363 () Bool)

(declare-fun res!31186 () Bool)

(declare-fun e!36365 () Bool)

(assert (=> b!55363 (=> res!31186 e!36365)))

(declare-datatypes ((List!1411 0))(
  ( (Nil!1408) (Cons!1407 (h!1987 (_ BitVec 64)) (t!4637 List!1411)) )
))
(declare-fun lt!21911 () List!1411)

(declare-fun contains!654 (List!1411 (_ BitVec 64)) Bool)

(assert (=> b!55363 (= res!31186 (contains!654 lt!21911 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!55364 () Bool)

(declare-fun e!36362 () Bool)

(declare-fun tp_is_empty!2341 () Bool)

(assert (=> b!55364 (= e!36362 tp_is_empty!2341)))

(declare-fun b!55365 () Bool)

(declare-fun e!36369 () Bool)

(declare-fun e!36368 () Bool)

(assert (=> b!55365 (= e!36369 e!36368)))

(declare-fun b!55366 () Bool)

(declare-fun e!36372 () Bool)

(declare-fun e!36376 () Bool)

(assert (=> b!55366 (= e!36372 e!36376)))

(declare-fun res!31183 () Bool)

(assert (=> b!55366 (=> (not res!31183) (not e!36376))))

(declare-datatypes ((V!2769 0))(
  ( (V!2770 (val!1215 Int)) )
))
(declare-datatypes ((array!3604 0))(
  ( (array!3605 (arr!1724 (Array (_ BitVec 32) (_ BitVec 64))) (size!1953 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!827 0))(
  ( (ValueCellFull!827 (v!2312 V!2769)) (EmptyCell!827) )
))
(declare-datatypes ((array!3606 0))(
  ( (array!3607 (arr!1725 (Array (_ BitVec 32) ValueCell!827)) (size!1954 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!562 0))(
  ( (LongMapFixedSize!563 (defaultEntry!1995 Int) (mask!5852 (_ BitVec 32)) (extraKeys!1886 (_ BitVec 32)) (zeroValue!1913 V!2769) (minValue!1913 V!2769) (_size!330 (_ BitVec 32)) (_keys!3615 array!3604) (_values!1978 array!3606) (_vacant!330 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!372 0))(
  ( (Cell!373 (v!2313 LongMapFixedSize!562)) )
))
(declare-datatypes ((LongMap!372 0))(
  ( (LongMap!373 (underlying!197 Cell!372)) )
))
(declare-fun thiss!992 () LongMap!372)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1970 0))(
  ( (tuple2!1971 (_1!995 (_ BitVec 64)) (_2!995 V!2769)) )
))
(declare-datatypes ((List!1412 0))(
  ( (Nil!1409) (Cons!1408 (h!1988 tuple2!1970) (t!4638 List!1412)) )
))
(declare-datatypes ((ListLongMap!1337 0))(
  ( (ListLongMap!1338 (toList!684 List!1412)) )
))
(declare-fun lt!21910 () ListLongMap!1337)

(declare-fun contains!655 (ListLongMap!1337 (_ BitVec 64)) Bool)

(assert (=> b!55366 (= res!31183 (contains!655 lt!21910 (select (arr!1724 (_keys!3615 (v!2313 (underlying!197 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!562)

(declare-datatypes ((tuple2!1972 0))(
  ( (tuple2!1973 (_1!996 Bool) (_2!996 LongMapFixedSize!562)) )
))
(declare-fun lt!21907 () tuple2!1972)

(declare-fun update!66 (LongMapFixedSize!562 (_ BitVec 64) V!2769) tuple2!1972)

(declare-fun get!1039 (ValueCell!827 V!2769) V!2769)

(declare-fun dynLambda!294 (Int (_ BitVec 64)) V!2769)

(assert (=> b!55366 (= lt!21907 (update!66 newMap!16 (select (arr!1724 (_keys!3615 (v!2313 (underlying!197 thiss!992)))) from!355) (get!1039 (select (arr!1725 (_values!1978 (v!2313 (underlying!197 thiss!992)))) from!355) (dynLambda!294 (defaultEntry!1995 (v!2313 (underlying!197 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!31182 () Bool)

(declare-fun e!36366 () Bool)

(assert (=> start!8354 (=> (not res!31182) (not e!36366))))

(declare-fun valid!219 (LongMap!372) Bool)

(assert (=> start!8354 (= res!31182 (valid!219 thiss!992))))

(assert (=> start!8354 e!36366))

(assert (=> start!8354 e!36369))

(assert (=> start!8354 true))

(declare-fun e!36377 () Bool)

(assert (=> start!8354 e!36377))

(declare-fun b!55367 () Bool)

(declare-fun e!36367 () Bool)

(declare-fun e!36373 () Bool)

(declare-fun mapRes!2694 () Bool)

(assert (=> b!55367 (= e!36367 (and e!36373 mapRes!2694))))

(declare-fun condMapEmpty!2694 () Bool)

(declare-fun mapDefault!2693 () ValueCell!827)

