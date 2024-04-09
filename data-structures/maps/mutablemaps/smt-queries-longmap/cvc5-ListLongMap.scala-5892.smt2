; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75966 () Bool)

(assert start!75966)

(declare-fun b!893183 () Bool)

(declare-fun b_free!15853 () Bool)

(declare-fun b_next!15853 () Bool)

(assert (=> b!893183 (= b_free!15853 (not b_next!15853))))

(declare-fun tp!55534 () Bool)

(declare-fun b_and!26133 () Bool)

(assert (=> b!893183 (= tp!55534 b_and!26133)))

(declare-fun b!893178 () Bool)

(declare-fun res!604988 () Bool)

(declare-fun e!498827 () Bool)

(assert (=> b!893178 (=> (not res!604988) (not e!498827))))

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((array!52332 0))(
  ( (array!52333 (arr!25166 (Array (_ BitVec 32) (_ BitVec 64))) (size!25611 (_ BitVec 32))) )
))
(declare-datatypes ((V!29207 0))(
  ( (V!29208 (val!9141 Int)) )
))
(declare-datatypes ((ValueCell!8609 0))(
  ( (ValueCellFull!8609 (v!11618 V!29207)) (EmptyCell!8609) )
))
(declare-datatypes ((array!52334 0))(
  ( (array!52335 (arr!25167 (Array (_ BitVec 32) ValueCell!8609)) (size!25612 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4234 0))(
  ( (LongMapFixedSize!4235 (defaultEntry!5317 Int) (mask!25841 (_ BitVec 32)) (extraKeys!5013 (_ BitVec 32)) (zeroValue!5117 V!29207) (minValue!5117 V!29207) (_size!2172 (_ BitVec 32)) (_keys!10000 array!52332) (_values!5304 array!52334) (_vacant!2172 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4234)

(assert (=> b!893178 (= res!604988 (and (= key!785 (bvneg key!785)) (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5013 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!28832 () Bool)

(declare-fun mapRes!28832 () Bool)

(assert (=> mapIsEmpty!28832 mapRes!28832))

(declare-fun b!893179 () Bool)

(declare-fun e!498832 () Bool)

(assert (=> b!893179 (= e!498827 e!498832)))

(declare-fun c!94010 () Bool)

(declare-fun contains!4368 (LongMapFixedSize!4234 (_ BitVec 64)) Bool)

(assert (=> b!893179 (= c!94010 (contains!4368 thiss!1181 key!785))))

(declare-fun b!893180 () Bool)

(declare-datatypes ((Option!453 0))(
  ( (Some!452 (v!11619 V!29207)) (None!451) )
))
(declare-fun get!13258 (Option!453) V!29207)

(declare-datatypes ((tuple2!12036 0))(
  ( (tuple2!12037 (_1!6028 (_ BitVec 64)) (_2!6028 V!29207)) )
))
(declare-datatypes ((List!17876 0))(
  ( (Nil!17873) (Cons!17872 (h!19003 tuple2!12036) (t!25203 List!17876)) )
))
(declare-fun getValueByKey!447 (List!17876 (_ BitVec 64)) Option!453)

(declare-datatypes ((ListLongMap!10747 0))(
  ( (ListLongMap!10748 (toList!5389 List!17876)) )
))
(declare-fun map!12214 (LongMapFixedSize!4234) ListLongMap!10747)

(assert (=> b!893180 (= e!498832 (not (= (zeroValue!5117 thiss!1181) (get!13258 (getValueByKey!447 (toList!5389 (map!12214 thiss!1181)) key!785)))))))

(declare-fun b!893181 () Bool)

(declare-fun dynLambda!1296 (Int (_ BitVec 64)) V!29207)

(assert (=> b!893181 (= e!498832 (not (= (zeroValue!5117 thiss!1181) (dynLambda!1296 (defaultEntry!5317 thiss!1181) key!785))))))

(declare-fun b!893182 () Bool)

(declare-fun e!498829 () Bool)

(declare-fun tp_is_empty!18181 () Bool)

(assert (=> b!893182 (= e!498829 tp_is_empty!18181)))

(declare-fun e!498830 () Bool)

(declare-fun e!498828 () Bool)

(declare-fun array_inv!19740 (array!52332) Bool)

(declare-fun array_inv!19741 (array!52334) Bool)

(assert (=> b!893183 (= e!498830 (and tp!55534 tp_is_empty!18181 (array_inv!19740 (_keys!10000 thiss!1181)) (array_inv!19741 (_values!5304 thiss!1181)) e!498828))))

(declare-fun res!604989 () Bool)

(assert (=> start!75966 (=> (not res!604989) (not e!498827))))

(declare-fun valid!1626 (LongMapFixedSize!4234) Bool)

(assert (=> start!75966 (= res!604989 (valid!1626 thiss!1181))))

(assert (=> start!75966 e!498827))

(assert (=> start!75966 e!498830))

(assert (=> start!75966 true))

(declare-fun b!893184 () Bool)

(declare-fun e!498831 () Bool)

(assert (=> b!893184 (= e!498828 (and e!498831 mapRes!28832))))

(declare-fun condMapEmpty!28832 () Bool)

(declare-fun mapDefault!28832 () ValueCell!8609)

