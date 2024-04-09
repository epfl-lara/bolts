; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76058 () Bool)

(assert start!76058)

(declare-fun b!893699 () Bool)

(declare-fun b_free!15859 () Bool)

(declare-fun b_next!15859 () Bool)

(assert (=> b!893699 (= b_free!15859 (not b_next!15859))))

(declare-fun tp!55558 () Bool)

(declare-fun b_and!26151 () Bool)

(assert (=> b!893699 (= tp!55558 b_and!26151)))

(declare-fun b!893698 () Bool)

(declare-fun e!499163 () Bool)

(declare-fun tp_is_empty!18187 () Bool)

(assert (=> b!893698 (= e!499163 tp_is_empty!18187)))

(declare-fun e!499161 () Bool)

(declare-datatypes ((array!52346 0))(
  ( (array!52347 (arr!25172 (Array (_ BitVec 32) (_ BitVec 64))) (size!25618 (_ BitVec 32))) )
))
(declare-datatypes ((V!29215 0))(
  ( (V!29216 (val!9144 Int)) )
))
(declare-datatypes ((ValueCell!8612 0))(
  ( (ValueCellFull!8612 (v!11625 V!29215)) (EmptyCell!8612) )
))
(declare-datatypes ((array!52348 0))(
  ( (array!52349 (arr!25173 (Array (_ BitVec 32) ValueCell!8612)) (size!25619 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4240 0))(
  ( (LongMapFixedSize!4241 (defaultEntry!5326 Int) (mask!25863 (_ BitVec 32)) (extraKeys!5022 (_ BitVec 32)) (zeroValue!5126 V!29215) (minValue!5126 V!29215) (_size!2175 (_ BitVec 32)) (_keys!10014 array!52346) (_values!5313 array!52348) (_vacant!2175 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4240)

(declare-fun e!499159 () Bool)

(declare-fun array_inv!19746 (array!52346) Bool)

(declare-fun array_inv!19747 (array!52348) Bool)

(assert (=> b!893699 (= e!499159 (and tp!55558 tp_is_empty!18187 (array_inv!19746 (_keys!10014 thiss!1181)) (array_inv!19747 (_values!5313 thiss!1181)) e!499161))))

(declare-fun mapIsEmpty!28846 () Bool)

(declare-fun mapRes!28846 () Bool)

(assert (=> mapIsEmpty!28846 mapRes!28846))

(declare-fun b!893700 () Bool)

(declare-fun res!605163 () Bool)

(declare-fun e!499160 () Bool)

(assert (=> b!893700 (=> (not res!605163) (not e!499160))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!893700 (= res!605163 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!5022 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5022 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!893701 () Bool)

(declare-fun e!499162 () Bool)

(declare-fun dynLambda!1299 (Int (_ BitVec 64)) V!29215)

(assert (=> b!893701 (= e!499162 (not (= (minValue!5126 thiss!1181) (dynLambda!1299 (defaultEntry!5326 thiss!1181) key!785))))))

(declare-fun mapNonEmpty!28846 () Bool)

(declare-fun tp!55557 () Bool)

(assert (=> mapNonEmpty!28846 (= mapRes!28846 (and tp!55557 e!499163))))

(declare-fun mapValue!28846 () ValueCell!8612)

(declare-fun mapKey!28846 () (_ BitVec 32))

(declare-fun mapRest!28846 () (Array (_ BitVec 32) ValueCell!8612))

(assert (=> mapNonEmpty!28846 (= (arr!25173 (_values!5313 thiss!1181)) (store mapRest!28846 mapKey!28846 mapValue!28846))))

(declare-fun res!605164 () Bool)

(assert (=> start!76058 (=> (not res!605164) (not e!499160))))

(declare-fun valid!1629 (LongMapFixedSize!4240) Bool)

(assert (=> start!76058 (= res!605164 (valid!1629 thiss!1181))))

(assert (=> start!76058 e!499160))

(assert (=> start!76058 e!499159))

(assert (=> start!76058 true))

(declare-fun b!893702 () Bool)

(declare-fun e!499158 () Bool)

(assert (=> b!893702 (= e!499158 tp_is_empty!18187)))

(declare-fun b!893703 () Bool)

(declare-datatypes ((Option!456 0))(
  ( (Some!455 (v!11626 V!29215)) (None!454) )
))
(declare-fun get!13266 (Option!456) V!29215)

(declare-datatypes ((tuple2!12042 0))(
  ( (tuple2!12043 (_1!6031 (_ BitVec 64)) (_2!6031 V!29215)) )
))
(declare-datatypes ((List!17880 0))(
  ( (Nil!17877) (Cons!17876 (h!19008 tuple2!12042) (t!25215 List!17880)) )
))
(declare-fun getValueByKey!450 (List!17880 (_ BitVec 64)) Option!456)

(declare-datatypes ((ListLongMap!10753 0))(
  ( (ListLongMap!10754 (toList!5392 List!17880)) )
))
(declare-fun map!12219 (LongMapFixedSize!4240) ListLongMap!10753)

(assert (=> b!893703 (= e!499162 (not (= (minValue!5126 thiss!1181) (get!13266 (getValueByKey!450 (toList!5392 (map!12219 thiss!1181)) key!785)))))))

(declare-fun b!893704 () Bool)

(assert (=> b!893704 (= e!499161 (and e!499158 mapRes!28846))))

(declare-fun condMapEmpty!28846 () Bool)

(declare-fun mapDefault!28846 () ValueCell!8612)

