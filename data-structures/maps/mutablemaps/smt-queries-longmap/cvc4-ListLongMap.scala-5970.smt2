; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77678 () Bool)

(assert start!77678)

(declare-fun b_free!16235 () Bool)

(declare-fun b_next!16235 () Bool)

(assert (=> start!77678 (= b_free!16235 (not b_next!16235))))

(declare-fun tp!56967 () Bool)

(declare-fun b_and!26641 () Bool)

(assert (=> start!77678 (= tp!56967 b_and!26641)))

(declare-fun mapIsEmpty!29692 () Bool)

(declare-fun mapRes!29692 () Bool)

(assert (=> mapIsEmpty!29692 mapRes!29692))

(declare-fun b!905178 () Bool)

(declare-fun e!507267 () Bool)

(assert (=> b!905178 (= e!507267 true)))

(declare-datatypes ((V!29835 0))(
  ( (V!29836 (val!9377 Int)) )
))
(declare-datatypes ((tuple2!12214 0))(
  ( (tuple2!12215 (_1!6117 (_ BitVec 64)) (_2!6117 V!29835)) )
))
(declare-datatypes ((List!18083 0))(
  ( (Nil!18080) (Cons!18079 (h!19225 tuple2!12214) (t!25498 List!18083)) )
))
(declare-datatypes ((ListLongMap!10925 0))(
  ( (ListLongMap!10926 (toList!5478 List!18083)) )
))
(declare-fun lt!408458 () ListLongMap!10925)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!408461 () V!29835)

(declare-fun apply!455 (ListLongMap!10925 (_ BitVec 64)) V!29835)

(assert (=> b!905178 (= (apply!455 lt!408458 k!1033) lt!408461)))

(declare-datatypes ((ValueCell!8845 0))(
  ( (ValueCellFull!8845 (v!11882 V!29835)) (EmptyCell!8845) )
))
(declare-datatypes ((array!53336 0))(
  ( (array!53337 (arr!25623 (Array (_ BitVec 32) ValueCell!8845)) (size!26083 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53336)

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((Unit!30685 0))(
  ( (Unit!30686) )
))
(declare-fun lt!408459 () Unit!30685)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29835)

(declare-datatypes ((array!53338 0))(
  ( (array!53339 (arr!25624 (Array (_ BitVec 32) (_ BitVec 64))) (size!26084 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53338)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29835)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!9 (array!53338 array!53336 (_ BitVec 32) (_ BitVec 32) V!29835 V!29835 (_ BitVec 64) V!29835 (_ BitVec 32) Int) Unit!30685)

(assert (=> b!905178 (= lt!408459 (lemmaListMapApplyFromThenApplyFromZero!9 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408461 i!717 defaultEntry!1160))))

(declare-fun b!905179 () Bool)

(declare-fun e!507269 () Bool)

(declare-fun e!507263 () Bool)

(assert (=> b!905179 (= e!507269 e!507263)))

(declare-fun res!610928 () Bool)

(assert (=> b!905179 (=> (not res!610928) (not e!507263))))

(declare-fun contains!4491 (ListLongMap!10925 (_ BitVec 64)) Bool)

(assert (=> b!905179 (= res!610928 (contains!4491 lt!408458 k!1033))))

(declare-fun getCurrentListMap!2715 (array!53338 array!53336 (_ BitVec 32) (_ BitVec 32) V!29835 V!29835 (_ BitVec 32) Int) ListLongMap!10925)

(assert (=> b!905179 (= lt!408458 (getCurrentListMap!2715 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!29692 () Bool)

(declare-fun tp!56968 () Bool)

(declare-fun e!507262 () Bool)

(assert (=> mapNonEmpty!29692 (= mapRes!29692 (and tp!56968 e!507262))))

(declare-fun mapValue!29692 () ValueCell!8845)

(declare-fun mapRest!29692 () (Array (_ BitVec 32) ValueCell!8845))

(declare-fun mapKey!29692 () (_ BitVec 32))

(assert (=> mapNonEmpty!29692 (= (arr!25623 _values!1152) (store mapRest!29692 mapKey!29692 mapValue!29692))))

(declare-fun b!905180 () Bool)

(declare-fun res!610929 () Bool)

(assert (=> b!905180 (=> res!610929 e!507267)))

(declare-fun lt!408460 () ListLongMap!10925)

(assert (=> b!905180 (= res!610929 (not (= (apply!455 lt!408460 k!1033) lt!408461)))))

(declare-fun b!905181 () Bool)

(declare-fun res!610932 () Bool)

(assert (=> b!905181 (=> (not res!610932) (not e!507263))))

(assert (=> b!905181 (= res!610932 (and (= (select (arr!25624 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905182 () Bool)

(declare-fun e!507265 () Bool)

(declare-fun e!507266 () Bool)

(assert (=> b!905182 (= e!507265 (and e!507266 mapRes!29692))))

(declare-fun condMapEmpty!29692 () Bool)

(declare-fun mapDefault!29692 () ValueCell!8845)

