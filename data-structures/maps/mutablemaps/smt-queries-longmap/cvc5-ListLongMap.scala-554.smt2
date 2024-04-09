; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14892 () Bool)

(assert start!14892)

(declare-fun b!143216 () Bool)

(declare-fun b_free!3037 () Bool)

(declare-fun b_next!3037 () Bool)

(assert (=> b!143216 (= b_free!3037 (not b_next!3037))))

(declare-fun tp!11592 () Bool)

(declare-fun b_and!8941 () Bool)

(assert (=> b!143216 (= tp!11592 b_and!8941)))

(declare-fun b!143204 () Bool)

(declare-fun b_free!3039 () Bool)

(declare-fun b_next!3039 () Bool)

(assert (=> b!143204 (= b_free!3039 (not b_next!3039))))

(declare-fun tp!11591 () Bool)

(declare-fun b_and!8943 () Bool)

(assert (=> b!143204 (= tp!11591 b_and!8943)))

(declare-fun b!143203 () Bool)

(declare-fun e!93319 () Bool)

(declare-datatypes ((V!3561 0))(
  ( (V!3562 (val!1512 Int)) )
))
(declare-datatypes ((array!4906 0))(
  ( (array!4907 (arr!2318 (Array (_ BitVec 32) (_ BitVec 64))) (size!2591 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1124 0))(
  ( (ValueCellFull!1124 (v!3293 V!3561)) (EmptyCell!1124) )
))
(declare-datatypes ((array!4908 0))(
  ( (array!4909 (arr!2319 (Array (_ BitVec 32) ValueCell!1124)) (size!2592 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1156 0))(
  ( (LongMapFixedSize!1157 (defaultEntry!2962 Int) (mask!7314 (_ BitVec 32)) (extraKeys!2713 (_ BitVec 32)) (zeroValue!2810 V!3561) (minValue!2810 V!3561) (_size!627 (_ BitVec 32)) (_keys!4725 array!4906) (_values!2945 array!4908) (_vacant!627 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!942 0))(
  ( (Cell!943 (v!3294 LongMapFixedSize!1156)) )
))
(declare-datatypes ((LongMap!942 0))(
  ( (LongMap!943 (underlying!482 Cell!942)) )
))
(declare-fun thiss!992 () LongMap!942)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((List!1765 0))(
  ( (Nil!1762) (Cons!1761 (h!2369 (_ BitVec 64)) (t!6382 List!1765)) )
))
(declare-fun noDuplicate!51 (List!1765) Bool)

(assert (=> b!143203 (= e!93319 (noDuplicate!51 (Cons!1761 (select (arr!2318 (_keys!4725 (v!3294 (underlying!482 thiss!992)))) from!355) Nil!1762)))))

(declare-fun e!93311 () Bool)

(declare-fun tp_is_empty!2935 () Bool)

(declare-fun e!93321 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1156)

(declare-fun array_inv!1433 (array!4906) Bool)

(declare-fun array_inv!1434 (array!4908) Bool)

(assert (=> b!143204 (= e!93321 (and tp!11591 tp_is_empty!2935 (array_inv!1433 (_keys!4725 newMap!16)) (array_inv!1434 (_values!2945 newMap!16)) e!93311))))

(declare-fun b!143205 () Bool)

(declare-fun e!93312 () Bool)

(declare-fun e!93325 () Bool)

(assert (=> b!143205 (= e!93312 e!93325)))

(declare-fun res!68228 () Bool)

(assert (=> b!143205 (=> (not res!68228) (not e!93325))))

(declare-datatypes ((tuple2!2688 0))(
  ( (tuple2!2689 (_1!1354 (_ BitVec 64)) (_2!1354 V!3561)) )
))
(declare-datatypes ((List!1766 0))(
  ( (Nil!1763) (Cons!1762 (h!2370 tuple2!2688) (t!6383 List!1766)) )
))
(declare-datatypes ((ListLongMap!1749 0))(
  ( (ListLongMap!1750 (toList!890 List!1766)) )
))
(declare-fun lt!75036 () ListLongMap!1749)

(declare-fun lt!75037 () ListLongMap!1749)

(assert (=> b!143205 (= res!68228 (and (= lt!75036 lt!75037) (not (= (select (arr!2318 (_keys!4725 (v!3294 (underlying!482 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2318 (_keys!4725 (v!3294 (underlying!482 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1441 (LongMapFixedSize!1156) ListLongMap!1749)

(assert (=> b!143205 (= lt!75037 (map!1441 newMap!16))))

(declare-fun getCurrentListMap!556 (array!4906 array!4908 (_ BitVec 32) (_ BitVec 32) V!3561 V!3561 (_ BitVec 32) Int) ListLongMap!1749)

(assert (=> b!143205 (= lt!75036 (getCurrentListMap!556 (_keys!4725 (v!3294 (underlying!482 thiss!992))) (_values!2945 (v!3294 (underlying!482 thiss!992))) (mask!7314 (v!3294 (underlying!482 thiss!992))) (extraKeys!2713 (v!3294 (underlying!482 thiss!992))) (zeroValue!2810 (v!3294 (underlying!482 thiss!992))) (minValue!2810 (v!3294 (underlying!482 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2962 (v!3294 (underlying!482 thiss!992)))))))

(declare-fun res!68229 () Bool)

(assert (=> start!14892 (=> (not res!68229) (not e!93312))))

(declare-fun valid!556 (LongMap!942) Bool)

(assert (=> start!14892 (= res!68229 (valid!556 thiss!992))))

(assert (=> start!14892 e!93312))

(declare-fun e!93317 () Bool)

(assert (=> start!14892 e!93317))

(assert (=> start!14892 true))

(assert (=> start!14892 e!93321))

(declare-fun b!143206 () Bool)

(declare-fun e!93314 () Bool)

(assert (=> b!143206 (= e!93314 tp_is_empty!2935)))

(declare-fun b!143207 () Bool)

(declare-fun e!93323 () Bool)

(assert (=> b!143207 (= e!93323 tp_is_empty!2935)))

(declare-fun b!143208 () Bool)

(declare-fun res!68230 () Bool)

(assert (=> b!143208 (=> (not res!68230) (not e!93312))))

(assert (=> b!143208 (= res!68230 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2591 (_keys!4725 (v!3294 (underlying!482 thiss!992)))))))))

(declare-fun b!143209 () Bool)

(declare-fun mapRes!4856 () Bool)

(assert (=> b!143209 (= e!93311 (and e!93314 mapRes!4856))))

(declare-fun condMapEmpty!4855 () Bool)

(declare-fun mapDefault!4855 () ValueCell!1124)

