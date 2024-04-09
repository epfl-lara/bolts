; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41052 () Bool)

(assert start!41052)

(declare-fun b_free!10957 () Bool)

(declare-fun b_next!10957 () Bool)

(assert (=> start!41052 (= b_free!10957 (not b_next!10957))))

(declare-fun tp!38701 () Bool)

(declare-fun b_and!19139 () Bool)

(assert (=> start!41052 (= tp!38701 b_and!19139)))

(declare-fun b!457207 () Bool)

(declare-fun e!267050 () Bool)

(declare-fun tp_is_empty!12295 () Bool)

(assert (=> b!457207 (= e!267050 tp_is_empty!12295)))

(declare-fun mapNonEmpty!20086 () Bool)

(declare-fun mapRes!20086 () Bool)

(declare-fun tp!38700 () Bool)

(declare-fun e!267053 () Bool)

(assert (=> mapNonEmpty!20086 (= mapRes!20086 (and tp!38700 e!267053))))

(declare-datatypes ((V!17499 0))(
  ( (V!17500 (val!6192 Int)) )
))
(declare-datatypes ((ValueCell!5804 0))(
  ( (ValueCellFull!5804 (v!8458 V!17499)) (EmptyCell!5804) )
))
(declare-fun mapValue!20086 () ValueCell!5804)

(declare-fun mapRest!20086 () (Array (_ BitVec 32) ValueCell!5804))

(declare-datatypes ((array!28359 0))(
  ( (array!28360 (arr!13619 (Array (_ BitVec 32) ValueCell!5804)) (size!13971 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28359)

(declare-fun mapKey!20086 () (_ BitVec 32))

(assert (=> mapNonEmpty!20086 (= (arr!13619 _values!549) (store mapRest!20086 mapKey!20086 mapValue!20086))))

(declare-fun mapIsEmpty!20086 () Bool)

(assert (=> mapIsEmpty!20086 mapRes!20086))

(declare-fun b!457208 () Bool)

(declare-fun res!273053 () Bool)

(declare-fun e!267051 () Bool)

(assert (=> b!457208 (=> (not res!273053) (not e!267051))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457208 (= res!273053 (validMask!0 mask!1025))))

(declare-fun b!457210 () Bool)

(declare-fun e!267048 () Bool)

(assert (=> b!457210 (= e!267051 e!267048)))

(declare-fun res!273062 () Bool)

(assert (=> b!457210 (=> (not res!273062) (not e!267048))))

(declare-datatypes ((array!28361 0))(
  ( (array!28362 (arr!13620 (Array (_ BitVec 32) (_ BitVec 64))) (size!13972 (_ BitVec 32))) )
))
(declare-fun lt!206864 () array!28361)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28361 (_ BitVec 32)) Bool)

(assert (=> b!457210 (= res!273062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206864 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!28361)

(assert (=> b!457210 (= lt!206864 (array!28362 (store (arr!13620 _keys!709) i!563 k!794) (size!13972 _keys!709)))))

(declare-fun b!457211 () Bool)

(assert (=> b!457211 (= e!267053 tp_is_empty!12295)))

(declare-fun b!457212 () Bool)

(declare-fun res!273054 () Bool)

(assert (=> b!457212 (=> (not res!273054) (not e!267051))))

(assert (=> b!457212 (= res!273054 (or (= (select (arr!13620 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13620 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457213 () Bool)

(declare-fun res!273055 () Bool)

(assert (=> b!457213 (=> (not res!273055) (not e!267051))))

(declare-fun arrayContainsKey!0 (array!28361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457213 (= res!273055 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!457214 () Bool)

(declare-fun e!267054 () Bool)

(declare-fun e!267055 () Bool)

(assert (=> b!457214 (= e!267054 (not e!267055))))

(declare-fun res!273059 () Bool)

(assert (=> b!457214 (=> res!273059 e!267055)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457214 (= res!273059 (not (validKeyInArray!0 (select (arr!13620 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8120 0))(
  ( (tuple2!8121 (_1!4070 (_ BitVec 64)) (_2!4070 V!17499)) )
))
(declare-datatypes ((List!8223 0))(
  ( (Nil!8220) (Cons!8219 (h!9075 tuple2!8120) (t!14067 List!8223)) )
))
(declare-datatypes ((ListLongMap!7047 0))(
  ( (ListLongMap!7048 (toList!3539 List!8223)) )
))
(declare-fun lt!206863 () ListLongMap!7047)

(declare-fun lt!206861 () ListLongMap!7047)

(assert (=> b!457214 (= lt!206863 lt!206861)))

(declare-fun lt!206862 () ListLongMap!7047)

(declare-fun v!412 () V!17499)

(declare-fun +!1559 (ListLongMap!7047 tuple2!8120) ListLongMap!7047)

(assert (=> b!457214 (= lt!206861 (+!1559 lt!206862 (tuple2!8121 k!794 v!412)))))

(declare-fun minValue!515 () V!17499)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17499)

(declare-fun lt!206866 () array!28359)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1714 (array!28361 array!28359 (_ BitVec 32) (_ BitVec 32) V!17499 V!17499 (_ BitVec 32) Int) ListLongMap!7047)

(assert (=> b!457214 (= lt!206863 (getCurrentListMapNoExtraKeys!1714 lt!206864 lt!206866 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457214 (= lt!206862 (getCurrentListMapNoExtraKeys!1714 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13241 0))(
  ( (Unit!13242) )
))
(declare-fun lt!206865 () Unit!13241)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!723 (array!28361 array!28359 (_ BitVec 32) (_ BitVec 32) V!17499 V!17499 (_ BitVec 32) (_ BitVec 64) V!17499 (_ BitVec 32) Int) Unit!13241)

(assert (=> b!457214 (= lt!206865 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!723 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457215 () Bool)

(declare-fun res!273057 () Bool)

(assert (=> b!457215 (=> (not res!273057) (not e!267048))))

(assert (=> b!457215 (= res!273057 (bvsle from!863 i!563))))

(declare-fun b!457216 () Bool)

(assert (=> b!457216 (= e!267055 (bvslt from!863 (size!13972 _keys!709)))))

(declare-fun lt!206859 () ListLongMap!7047)

(declare-fun get!6713 (ValueCell!5804 V!17499) V!17499)

(declare-fun dynLambda!871 (Int (_ BitVec 64)) V!17499)

(assert (=> b!457216 (= lt!206859 (+!1559 lt!206861 (tuple2!8121 (select (arr!13620 _keys!709) from!863) (get!6713 (select (arr!13619 _values!549) from!863) (dynLambda!871 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457217 () Bool)

(declare-fun res!273058 () Bool)

(assert (=> b!457217 (=> (not res!273058) (not e!267051))))

(assert (=> b!457217 (= res!273058 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13972 _keys!709))))))

(declare-fun b!457218 () Bool)

(declare-fun res!273063 () Bool)

(assert (=> b!457218 (=> (not res!273063) (not e!267051))))

(assert (=> b!457218 (= res!273063 (validKeyInArray!0 k!794))))

(declare-fun b!457219 () Bool)

(declare-fun res!273060 () Bool)

(assert (=> b!457219 (=> (not res!273060) (not e!267051))))

(declare-datatypes ((List!8224 0))(
  ( (Nil!8221) (Cons!8220 (h!9076 (_ BitVec 64)) (t!14068 List!8224)) )
))
(declare-fun arrayNoDuplicates!0 (array!28361 (_ BitVec 32) List!8224) Bool)

(assert (=> b!457219 (= res!273060 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8221))))

(declare-fun res!273051 () Bool)

(assert (=> start!41052 (=> (not res!273051) (not e!267051))))

(assert (=> start!41052 (= res!273051 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13972 _keys!709))))))

(assert (=> start!41052 e!267051))

(assert (=> start!41052 tp_is_empty!12295))

(assert (=> start!41052 tp!38701))

(assert (=> start!41052 true))

(declare-fun e!267052 () Bool)

(declare-fun array_inv!9854 (array!28359) Bool)

(assert (=> start!41052 (and (array_inv!9854 _values!549) e!267052)))

(declare-fun array_inv!9855 (array!28361) Bool)

(assert (=> start!41052 (array_inv!9855 _keys!709)))

(declare-fun b!457209 () Bool)

(declare-fun res!273061 () Bool)

(assert (=> b!457209 (=> (not res!273061) (not e!267048))))

(assert (=> b!457209 (= res!273061 (arrayNoDuplicates!0 lt!206864 #b00000000000000000000000000000000 Nil!8221))))

(declare-fun b!457220 () Bool)

(assert (=> b!457220 (= e!267052 (and e!267050 mapRes!20086))))

(declare-fun condMapEmpty!20086 () Bool)

(declare-fun mapDefault!20086 () ValueCell!5804)

