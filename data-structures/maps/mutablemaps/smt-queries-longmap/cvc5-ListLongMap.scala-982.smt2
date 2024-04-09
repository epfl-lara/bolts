; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21222 () Bool)

(assert start!21222)

(declare-fun b_free!5641 () Bool)

(declare-fun b_next!5641 () Bool)

(assert (=> start!21222 (= b_free!5641 (not b_next!5641))))

(declare-fun tp!19996 () Bool)

(declare-fun b_and!12537 () Bool)

(assert (=> start!21222 (= tp!19996 b_and!12537)))

(declare-fun b!213630 () Bool)

(declare-fun res!104586 () Bool)

(declare-fun e!138935 () Bool)

(assert (=> b!213630 (=> (not res!104586) (not e!138935))))

(declare-datatypes ((array!10210 0))(
  ( (array!10211 (arr!4844 (Array (_ BitVec 32) (_ BitVec 64))) (size!5169 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10210)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!213630 (= res!104586 (= (select (arr!4844 _keys!825) i!601) k!843))))

(declare-fun b!213631 () Bool)

(declare-fun e!138933 () Bool)

(declare-fun tp_is_empty!5503 () Bool)

(assert (=> b!213631 (= e!138933 tp_is_empty!5503)))

(declare-fun b!213632 () Bool)

(declare-fun e!138936 () Bool)

(assert (=> b!213632 (= e!138936 tp_is_empty!5503)))

(declare-fun mapIsEmpty!9356 () Bool)

(declare-fun mapRes!9356 () Bool)

(assert (=> mapIsEmpty!9356 mapRes!9356))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6985 0))(
  ( (V!6986 (val!2796 Int)) )
))
(declare-datatypes ((tuple2!4230 0))(
  ( (tuple2!4231 (_1!2125 (_ BitVec 64)) (_2!2125 V!6985)) )
))
(declare-datatypes ((List!3139 0))(
  ( (Nil!3136) (Cons!3135 (h!3777 tuple2!4230) (t!8100 List!3139)) )
))
(declare-datatypes ((ListLongMap!3157 0))(
  ( (ListLongMap!3158 (toList!1594 List!3139)) )
))
(declare-fun lt!110508 () ListLongMap!3157)

(declare-fun b!213633 () Bool)

(declare-datatypes ((ValueCell!2408 0))(
  ( (ValueCellFull!2408 (v!4806 V!6985)) (EmptyCell!2408) )
))
(declare-datatypes ((array!10212 0))(
  ( (array!10213 (arr!4845 (Array (_ BitVec 32) ValueCell!2408)) (size!5170 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10212)

(declare-fun lt!110515 () Bool)

(declare-fun lt!110511 () ListLongMap!3157)

(assert (=> b!213633 (= e!138935 (not (or (and (not lt!110515) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!110515) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!110515) (not (= lt!110508 lt!110511)) (bvslt i!601 (size!5170 _values!649)))))))

(assert (=> b!213633 (= lt!110515 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!110512 () ListLongMap!3157)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6985)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6985)

(declare-fun getCurrentListMap!1117 (array!10210 array!10212 (_ BitVec 32) (_ BitVec 32) V!6985 V!6985 (_ BitVec 32) Int) ListLongMap!3157)

(assert (=> b!213633 (= lt!110512 (getCurrentListMap!1117 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110514 () array!10212)

(assert (=> b!213633 (= lt!110508 (getCurrentListMap!1117 _keys!825 lt!110514 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110510 () ListLongMap!3157)

(assert (=> b!213633 (and (= lt!110511 lt!110510) (= lt!110510 lt!110511))))

(declare-fun v!520 () V!6985)

(declare-fun lt!110509 () ListLongMap!3157)

(declare-fun +!587 (ListLongMap!3157 tuple2!4230) ListLongMap!3157)

(assert (=> b!213633 (= lt!110510 (+!587 lt!110509 (tuple2!4231 k!843 v!520)))))

(declare-datatypes ((Unit!6475 0))(
  ( (Unit!6476) )
))
(declare-fun lt!110513 () Unit!6475)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!234 (array!10210 array!10212 (_ BitVec 32) (_ BitVec 32) V!6985 V!6985 (_ BitVec 32) (_ BitVec 64) V!6985 (_ BitVec 32) Int) Unit!6475)

(assert (=> b!213633 (= lt!110513 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!234 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!516 (array!10210 array!10212 (_ BitVec 32) (_ BitVec 32) V!6985 V!6985 (_ BitVec 32) Int) ListLongMap!3157)

(assert (=> b!213633 (= lt!110511 (getCurrentListMapNoExtraKeys!516 _keys!825 lt!110514 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213633 (= lt!110514 (array!10213 (store (arr!4845 _values!649) i!601 (ValueCellFull!2408 v!520)) (size!5170 _values!649)))))

(assert (=> b!213633 (= lt!110509 (getCurrentListMapNoExtraKeys!516 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213634 () Bool)

(declare-fun res!104585 () Bool)

(assert (=> b!213634 (=> (not res!104585) (not e!138935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213634 (= res!104585 (validKeyInArray!0 k!843))))

(declare-fun b!213635 () Bool)

(declare-fun e!138934 () Bool)

(assert (=> b!213635 (= e!138934 (and e!138936 mapRes!9356))))

(declare-fun condMapEmpty!9356 () Bool)

(declare-fun mapDefault!9356 () ValueCell!2408)

