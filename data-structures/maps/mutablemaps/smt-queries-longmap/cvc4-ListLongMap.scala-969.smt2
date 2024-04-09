; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21008 () Bool)

(assert start!21008)

(declare-fun b_free!5567 () Bool)

(declare-fun b_next!5567 () Bool)

(assert (=> start!21008 (= b_free!5567 (not b_next!5567))))

(declare-fun tp!19754 () Bool)

(declare-fun b_and!12379 () Bool)

(assert (=> start!21008 (= tp!19754 b_and!12379)))

(declare-fun b!211016 () Bool)

(declare-fun res!103064 () Bool)

(declare-fun e!137382 () Bool)

(assert (=> b!211016 (=> (not res!103064) (not e!137382))))

(declare-datatypes ((array!10056 0))(
  ( (array!10057 (arr!4774 (Array (_ BitVec 32) (_ BitVec 64))) (size!5099 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10056)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!211016 (= res!103064 (= (select (arr!4774 _keys!825) i!601) k!843))))

(declare-fun b!211018 () Bool)

(declare-fun e!137386 () Bool)

(assert (=> b!211018 (= e!137382 (not e!137386))))

(declare-fun res!103065 () Bool)

(assert (=> b!211018 (=> res!103065 e!137386)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!211018 (= res!103065 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6885 0))(
  ( (V!6886 (val!2759 Int)) )
))
(declare-datatypes ((tuple2!4166 0))(
  ( (tuple2!4167 (_1!2093 (_ BitVec 64)) (_2!2093 V!6885)) )
))
(declare-datatypes ((List!3083 0))(
  ( (Nil!3080) (Cons!3079 (h!3721 tuple2!4166) (t!8030 List!3083)) )
))
(declare-datatypes ((ListLongMap!3093 0))(
  ( (ListLongMap!3094 (toList!1562 List!3083)) )
))
(declare-fun lt!108458 () ListLongMap!3093)

(declare-datatypes ((ValueCell!2371 0))(
  ( (ValueCellFull!2371 (v!4741 V!6885)) (EmptyCell!2371) )
))
(declare-datatypes ((array!10058 0))(
  ( (array!10059 (arr!4775 (Array (_ BitVec 32) ValueCell!2371)) (size!5100 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10058)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6885)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6885)

(declare-fun getCurrentListMap!1091 (array!10056 array!10058 (_ BitVec 32) (_ BitVec 32) V!6885 V!6885 (_ BitVec 32) Int) ListLongMap!3093)

(assert (=> b!211018 (= lt!108458 (getCurrentListMap!1091 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108459 () array!10058)

(declare-fun lt!108460 () ListLongMap!3093)

(assert (=> b!211018 (= lt!108460 (getCurrentListMap!1091 _keys!825 lt!108459 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108456 () ListLongMap!3093)

(declare-fun lt!108455 () ListLongMap!3093)

(assert (=> b!211018 (and (= lt!108456 lt!108455) (= lt!108455 lt!108456))))

(declare-fun lt!108457 () ListLongMap!3093)

(declare-fun v!520 () V!6885)

(declare-fun +!555 (ListLongMap!3093 tuple2!4166) ListLongMap!3093)

(assert (=> b!211018 (= lt!108455 (+!555 lt!108457 (tuple2!4167 k!843 v!520)))))

(declare-datatypes ((Unit!6407 0))(
  ( (Unit!6408) )
))
(declare-fun lt!108454 () Unit!6407)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!208 (array!10056 array!10058 (_ BitVec 32) (_ BitVec 32) V!6885 V!6885 (_ BitVec 32) (_ BitVec 64) V!6885 (_ BitVec 32) Int) Unit!6407)

(assert (=> b!211018 (= lt!108454 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!208 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!490 (array!10056 array!10058 (_ BitVec 32) (_ BitVec 32) V!6885 V!6885 (_ BitVec 32) Int) ListLongMap!3093)

(assert (=> b!211018 (= lt!108456 (getCurrentListMapNoExtraKeys!490 _keys!825 lt!108459 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211018 (= lt!108459 (array!10059 (store (arr!4775 _values!649) i!601 (ValueCellFull!2371 v!520)) (size!5100 _values!649)))))

(assert (=> b!211018 (= lt!108457 (getCurrentListMapNoExtraKeys!490 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211019 () Bool)

(declare-fun res!103062 () Bool)

(assert (=> b!211019 (=> (not res!103062) (not e!137382))))

(assert (=> b!211019 (= res!103062 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5099 _keys!825))))))

(declare-fun b!211020 () Bool)

(declare-fun res!103061 () Bool)

(assert (=> b!211020 (=> (not res!103061) (not e!137382))))

(declare-datatypes ((List!3084 0))(
  ( (Nil!3081) (Cons!3080 (h!3722 (_ BitVec 64)) (t!8031 List!3084)) )
))
(declare-fun arrayNoDuplicates!0 (array!10056 (_ BitVec 32) List!3084) Bool)

(assert (=> b!211020 (= res!103061 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3081))))

(declare-fun b!211021 () Bool)

(declare-fun e!137383 () Bool)

(declare-fun e!137384 () Bool)

(declare-fun mapRes!9224 () Bool)

(assert (=> b!211021 (= e!137383 (and e!137384 mapRes!9224))))

(declare-fun condMapEmpty!9224 () Bool)

(declare-fun mapDefault!9224 () ValueCell!2371)

