; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40714 () Bool)

(assert start!40714)

(declare-fun b_free!10717 () Bool)

(declare-fun b_next!10717 () Bool)

(assert (=> start!40714 (= b_free!10717 (not b_next!10717))))

(declare-fun tp!37971 () Bool)

(declare-fun b_and!18743 () Bool)

(assert (=> start!40714 (= tp!37971 b_and!18743)))

(declare-fun b!450204 () Bool)

(declare-fun e!263833 () Bool)

(declare-datatypes ((V!17179 0))(
  ( (V!17180 (val!6072 Int)) )
))
(declare-datatypes ((tuple2!7918 0))(
  ( (tuple2!7919 (_1!3969 (_ BitVec 64)) (_2!3969 V!17179)) )
))
(declare-datatypes ((List!8028 0))(
  ( (Nil!8025) (Cons!8024 (h!8880 tuple2!7918) (t!13798 List!8028)) )
))
(declare-datatypes ((ListLongMap!6845 0))(
  ( (ListLongMap!6846 (toList!3438 List!8028)) )
))
(declare-fun call!29740 () ListLongMap!6845)

(declare-fun call!29741 () ListLongMap!6845)

(assert (=> b!450204 (= e!263833 (= call!29740 call!29741))))

(declare-fun b!450205 () Bool)

(declare-fun e!263838 () Bool)

(declare-fun e!263832 () Bool)

(assert (=> b!450205 (= e!263838 e!263832)))

(declare-fun res!268025 () Bool)

(assert (=> b!450205 (=> (not res!268025) (not e!263832))))

(declare-datatypes ((array!27877 0))(
  ( (array!27878 (arr!13381 (Array (_ BitVec 32) (_ BitVec 64))) (size!13733 (_ BitVec 32))) )
))
(declare-fun lt!204560 () array!27877)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27877 (_ BitVec 32)) Bool)

(assert (=> b!450205 (= res!268025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204560 mask!1025))))

(declare-fun _keys!709 () array!27877)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450205 (= lt!204560 (array!27878 (store (arr!13381 _keys!709) i!563 k!794) (size!13733 _keys!709)))))

(declare-fun b!450206 () Bool)

(declare-fun res!268021 () Bool)

(assert (=> b!450206 (=> (not res!268021) (not e!263838))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5684 0))(
  ( (ValueCellFull!5684 (v!8323 V!17179)) (EmptyCell!5684) )
))
(declare-datatypes ((array!27879 0))(
  ( (array!27880 (arr!13382 (Array (_ BitVec 32) ValueCell!5684)) (size!13734 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27879)

(assert (=> b!450206 (= res!268021 (and (= (size!13734 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13733 _keys!709) (size!13734 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19716 () Bool)

(declare-fun mapRes!19716 () Bool)

(assert (=> mapIsEmpty!19716 mapRes!19716))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17179)

(declare-fun c!55907 () Bool)

(declare-fun lt!204562 () array!27879)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17179)

(declare-fun bm!29737 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1616 (array!27877 array!27879 (_ BitVec 32) (_ BitVec 32) V!17179 V!17179 (_ BitVec 32) Int) ListLongMap!6845)

(assert (=> bm!29737 (= call!29741 (getCurrentListMapNoExtraKeys!1616 (ite c!55907 lt!204560 _keys!709) (ite c!55907 lt!204562 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450207 () Bool)

(declare-fun res!268028 () Bool)

(assert (=> b!450207 (=> (not res!268028) (not e!263838))))

(declare-datatypes ((List!8029 0))(
  ( (Nil!8026) (Cons!8025 (h!8881 (_ BitVec 64)) (t!13799 List!8029)) )
))
(declare-fun arrayNoDuplicates!0 (array!27877 (_ BitVec 32) List!8029) Bool)

(assert (=> b!450207 (= res!268028 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8026))))

(declare-fun b!450208 () Bool)

(declare-fun v!412 () V!17179)

(declare-fun +!1510 (ListLongMap!6845 tuple2!7918) ListLongMap!6845)

(assert (=> b!450208 (= e!263833 (= call!29741 (+!1510 call!29740 (tuple2!7919 k!794 v!412))))))

(declare-fun mapNonEmpty!19716 () Bool)

(declare-fun tp!37970 () Bool)

(declare-fun e!263837 () Bool)

(assert (=> mapNonEmpty!19716 (= mapRes!19716 (and tp!37970 e!263837))))

(declare-fun mapRest!19716 () (Array (_ BitVec 32) ValueCell!5684))

(declare-fun mapValue!19716 () ValueCell!5684)

(declare-fun mapKey!19716 () (_ BitVec 32))

(assert (=> mapNonEmpty!19716 (= (arr!13382 _values!549) (store mapRest!19716 mapKey!19716 mapValue!19716))))

(declare-fun b!450209 () Bool)

(declare-fun res!268022 () Bool)

(assert (=> b!450209 (=> (not res!268022) (not e!263838))))

(declare-fun arrayContainsKey!0 (array!27877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450209 (= res!268022 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!450210 () Bool)

(declare-fun res!268024 () Bool)

(assert (=> b!450210 (=> (not res!268024) (not e!263838))))

(assert (=> b!450210 (= res!268024 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13733 _keys!709))))))

(declare-fun b!450211 () Bool)

(declare-fun res!268020 () Bool)

(assert (=> b!450211 (=> (not res!268020) (not e!263832))))

(assert (=> b!450211 (= res!268020 (bvsle from!863 i!563))))

(declare-fun b!450212 () Bool)

(declare-fun res!268029 () Bool)

(assert (=> b!450212 (=> (not res!268029) (not e!263838))))

(assert (=> b!450212 (= res!268029 (or (= (select (arr!13381 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13381 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450213 () Bool)

(declare-fun e!263836 () Bool)

(assert (=> b!450213 (= e!263832 e!263836)))

(declare-fun res!268018 () Bool)

(assert (=> b!450213 (=> (not res!268018) (not e!263836))))

(assert (=> b!450213 (= res!268018 (= from!863 i!563))))

(declare-fun lt!204561 () ListLongMap!6845)

(assert (=> b!450213 (= lt!204561 (getCurrentListMapNoExtraKeys!1616 lt!204560 lt!204562 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450213 (= lt!204562 (array!27880 (store (arr!13382 _values!549) i!563 (ValueCellFull!5684 v!412)) (size!13734 _values!549)))))

(declare-fun lt!204559 () ListLongMap!6845)

(assert (=> b!450213 (= lt!204559 (getCurrentListMapNoExtraKeys!1616 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450214 () Bool)

(declare-fun res!268026 () Bool)

(assert (=> b!450214 (=> (not res!268026) (not e!263838))))

(assert (=> b!450214 (= res!268026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!450215 () Bool)

(declare-fun e!263831 () Bool)

(declare-fun tp_is_empty!12055 () Bool)

(assert (=> b!450215 (= e!263831 tp_is_empty!12055)))

(declare-fun b!450216 () Bool)

(declare-fun res!268023 () Bool)

(assert (=> b!450216 (=> (not res!268023) (not e!263832))))

(assert (=> b!450216 (= res!268023 (arrayNoDuplicates!0 lt!204560 #b00000000000000000000000000000000 Nil!8026))))

(declare-fun res!268017 () Bool)

(assert (=> start!40714 (=> (not res!268017) (not e!263838))))

(assert (=> start!40714 (= res!268017 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13733 _keys!709))))))

(assert (=> start!40714 e!263838))

(assert (=> start!40714 tp_is_empty!12055))

(assert (=> start!40714 tp!37971))

(assert (=> start!40714 true))

(declare-fun e!263835 () Bool)

(declare-fun array_inv!9686 (array!27879) Bool)

(assert (=> start!40714 (and (array_inv!9686 _values!549) e!263835)))

(declare-fun array_inv!9687 (array!27877) Bool)

(assert (=> start!40714 (array_inv!9687 _keys!709)))

(declare-fun b!450203 () Bool)

(declare-fun res!268019 () Bool)

(assert (=> b!450203 (=> (not res!268019) (not e!263838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450203 (= res!268019 (validKeyInArray!0 k!794))))

(declare-fun b!450217 () Bool)

(assert (=> b!450217 (= e!263835 (and e!263831 mapRes!19716))))

(declare-fun condMapEmpty!19716 () Bool)

(declare-fun mapDefault!19716 () ValueCell!5684)

