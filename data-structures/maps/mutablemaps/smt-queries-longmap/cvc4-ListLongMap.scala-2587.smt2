; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39352 () Bool)

(assert start!39352)

(declare-fun b_free!9611 () Bool)

(declare-fun b_next!9611 () Bool)

(assert (=> start!39352 (= b_free!9611 (not b_next!9611))))

(declare-fun tp!34361 () Bool)

(declare-fun b_and!17115 () Bool)

(assert (=> start!39352 (= tp!34361 b_and!17115)))

(declare-fun b!417117 () Bool)

(declare-fun res!242976 () Bool)

(declare-fun e!248896 () Bool)

(assert (=> b!417117 (=> (not res!242976) (not e!248896))))

(declare-datatypes ((array!25361 0))(
  ( (array!25362 (arr!12127 (Array (_ BitVec 32) (_ BitVec 64))) (size!12479 (_ BitVec 32))) )
))
(declare-fun lt!191122 () array!25361)

(declare-datatypes ((List!7064 0))(
  ( (Nil!7061) (Cons!7060 (h!7916 (_ BitVec 64)) (t!12348 List!7064)) )
))
(declare-fun arrayNoDuplicates!0 (array!25361 (_ BitVec 32) List!7064) Bool)

(assert (=> b!417117 (= res!242976 (arrayNoDuplicates!0 lt!191122 #b00000000000000000000000000000000 Nil!7061))))

(declare-fun b!417118 () Bool)

(declare-fun e!248894 () Bool)

(assert (=> b!417118 (= e!248894 e!248896)))

(declare-fun res!242977 () Bool)

(assert (=> b!417118 (=> (not res!242977) (not e!248896))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25361 (_ BitVec 32)) Bool)

(assert (=> b!417118 (= res!242977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191122 mask!1025))))

(declare-fun _keys!709 () array!25361)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417118 (= lt!191122 (array!25362 (store (arr!12127 _keys!709) i!563 k!794) (size!12479 _keys!709)))))

(declare-fun b!417119 () Bool)

(declare-fun res!242978 () Bool)

(assert (=> b!417119 (=> (not res!242978) (not e!248896))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!417119 (= res!242978 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17766 () Bool)

(declare-fun mapRes!17766 () Bool)

(declare-fun tp!34362 () Bool)

(declare-fun e!248893 () Bool)

(assert (=> mapNonEmpty!17766 (= mapRes!17766 (and tp!34362 e!248893))))

(declare-datatypes ((V!15455 0))(
  ( (V!15456 (val!5426 Int)) )
))
(declare-datatypes ((ValueCell!5038 0))(
  ( (ValueCellFull!5038 (v!7669 V!15455)) (EmptyCell!5038) )
))
(declare-fun mapValue!17766 () ValueCell!5038)

(declare-fun mapKey!17766 () (_ BitVec 32))

(declare-datatypes ((array!25363 0))(
  ( (array!25364 (arr!12128 (Array (_ BitVec 32) ValueCell!5038)) (size!12480 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25363)

(declare-fun mapRest!17766 () (Array (_ BitVec 32) ValueCell!5038))

(assert (=> mapNonEmpty!17766 (= (arr!12128 _values!549) (store mapRest!17766 mapKey!17766 mapValue!17766))))

(declare-fun b!417120 () Bool)

(declare-fun e!248899 () Bool)

(assert (=> b!417120 (= e!248896 e!248899)))

(declare-fun res!242982 () Bool)

(assert (=> b!417120 (=> (not res!242982) (not e!248899))))

(assert (=> b!417120 (= res!242982 (= from!863 i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7012 0))(
  ( (tuple2!7013 (_1!3516 (_ BitVec 64)) (_2!3516 V!15455)) )
))
(declare-datatypes ((List!7065 0))(
  ( (Nil!7062) (Cons!7061 (h!7917 tuple2!7012) (t!12349 List!7065)) )
))
(declare-datatypes ((ListLongMap!5939 0))(
  ( (ListLongMap!5940 (toList!2985 List!7065)) )
))
(declare-fun lt!191125 () ListLongMap!5939)

(declare-fun zeroValue!515 () V!15455)

(declare-fun lt!191119 () array!25363)

(declare-fun minValue!515 () V!15455)

(declare-fun getCurrentListMapNoExtraKeys!1188 (array!25361 array!25363 (_ BitVec 32) (_ BitVec 32) V!15455 V!15455 (_ BitVec 32) Int) ListLongMap!5939)

(assert (=> b!417120 (= lt!191125 (getCurrentListMapNoExtraKeys!1188 lt!191122 lt!191119 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15455)

(assert (=> b!417120 (= lt!191119 (array!25364 (store (arr!12128 _values!549) i!563 (ValueCellFull!5038 v!412)) (size!12480 _values!549)))))

(declare-fun lt!191126 () ListLongMap!5939)

(assert (=> b!417120 (= lt!191126 (getCurrentListMapNoExtraKeys!1188 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417121 () Bool)

(declare-fun e!248891 () Bool)

(declare-fun call!29008 () ListLongMap!5939)

(declare-fun call!29009 () ListLongMap!5939)

(assert (=> b!417121 (= e!248891 (= call!29008 call!29009))))

(declare-fun c!55055 () Bool)

(declare-fun bm!29005 () Bool)

(assert (=> bm!29005 (= call!29009 (getCurrentListMapNoExtraKeys!1188 (ite c!55055 lt!191122 _keys!709) (ite c!55055 lt!191119 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29006 () Bool)

(assert (=> bm!29006 (= call!29008 (getCurrentListMapNoExtraKeys!1188 (ite c!55055 _keys!709 lt!191122) (ite c!55055 _values!549 lt!191119) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417123 () Bool)

(declare-fun res!242980 () Bool)

(assert (=> b!417123 (=> (not res!242980) (not e!248894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417123 (= res!242980 (validMask!0 mask!1025))))

(declare-fun b!417124 () Bool)

(declare-fun res!242975 () Bool)

(assert (=> b!417124 (=> (not res!242975) (not e!248894))))

(assert (=> b!417124 (= res!242975 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7061))))

(declare-fun b!417125 () Bool)

(declare-fun e!248892 () Bool)

(assert (=> b!417125 (= e!248892 true)))

(declare-fun lt!191123 () tuple2!7012)

(declare-fun lt!191120 () ListLongMap!5939)

(declare-fun lt!191117 () V!15455)

(declare-fun +!1196 (ListLongMap!5939 tuple2!7012) ListLongMap!5939)

(assert (=> b!417125 (= (+!1196 lt!191120 lt!191123) (+!1196 (+!1196 lt!191120 (tuple2!7013 k!794 lt!191117)) lt!191123))))

(declare-fun lt!191118 () V!15455)

(assert (=> b!417125 (= lt!191123 (tuple2!7013 k!794 lt!191118))))

(declare-datatypes ((Unit!12293 0))(
  ( (Unit!12294) )
))
(declare-fun lt!191124 () Unit!12293)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!19 (ListLongMap!5939 (_ BitVec 64) V!15455 V!15455) Unit!12293)

(assert (=> b!417125 (= lt!191124 (addSameAsAddTwiceSameKeyDiffValues!19 lt!191120 k!794 lt!191117 lt!191118))))

(declare-fun lt!191121 () V!15455)

(declare-fun get!6004 (ValueCell!5038 V!15455) V!15455)

(assert (=> b!417125 (= lt!191117 (get!6004 (select (arr!12128 _values!549) from!863) lt!191121))))

(assert (=> b!417125 (= lt!191125 (+!1196 lt!191120 (tuple2!7013 (select (arr!12127 lt!191122) from!863) lt!191118)))))

(assert (=> b!417125 (= lt!191118 (get!6004 (select (store (arr!12128 _values!549) i!563 (ValueCellFull!5038 v!412)) from!863) lt!191121))))

(declare-fun dynLambda!681 (Int (_ BitVec 64)) V!15455)

(assert (=> b!417125 (= lt!191121 (dynLambda!681 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417125 (= lt!191120 (getCurrentListMapNoExtraKeys!1188 lt!191122 lt!191119 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417126 () Bool)

(declare-fun e!248895 () Bool)

(declare-fun tp_is_empty!10763 () Bool)

(assert (=> b!417126 (= e!248895 tp_is_empty!10763)))

(declare-fun mapIsEmpty!17766 () Bool)

(assert (=> mapIsEmpty!17766 mapRes!17766))

(declare-fun b!417127 () Bool)

(declare-fun e!248898 () Bool)

(assert (=> b!417127 (= e!248898 (and e!248895 mapRes!17766))))

(declare-fun condMapEmpty!17766 () Bool)

(declare-fun mapDefault!17766 () ValueCell!5038)

