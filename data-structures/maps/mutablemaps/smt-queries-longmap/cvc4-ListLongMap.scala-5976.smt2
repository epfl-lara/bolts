; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77714 () Bool)

(assert start!77714)

(declare-fun b_free!16271 () Bool)

(declare-fun b_next!16271 () Bool)

(assert (=> start!77714 (= b_free!16271 (not b_next!16271))))

(declare-fun tp!57076 () Bool)

(declare-fun b_and!26713 () Bool)

(assert (=> start!77714 (= tp!57076 b_and!26713)))

(declare-fun b!905916 () Bool)

(declare-fun e!507701 () Bool)

(declare-fun tp_is_empty!18689 () Bool)

(assert (=> b!905916 (= e!507701 tp_is_empty!18689)))

(declare-fun b!905917 () Bool)

(declare-fun res!611471 () Bool)

(declare-fun e!507694 () Bool)

(assert (=> b!905917 (=> (not res!611471) (not e!507694))))

(declare-datatypes ((V!29883 0))(
  ( (V!29884 (val!9395 Int)) )
))
(declare-datatypes ((ValueCell!8863 0))(
  ( (ValueCellFull!8863 (v!11900 V!29883)) (EmptyCell!8863) )
))
(declare-datatypes ((array!53408 0))(
  ( (array!53409 (arr!25659 (Array (_ BitVec 32) ValueCell!8863)) (size!26119 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53408)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53410 0))(
  ( (array!53411 (arr!25660 (Array (_ BitVec 32) (_ BitVec 64))) (size!26120 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53410)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!905917 (= res!611471 (and (= (size!26119 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26120 _keys!1386) (size!26119 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905918 () Bool)

(declare-fun e!507700 () Bool)

(assert (=> b!905918 (= e!507700 true)))

(declare-datatypes ((tuple2!12248 0))(
  ( (tuple2!12249 (_1!6134 (_ BitVec 64)) (_2!6134 V!29883)) )
))
(declare-datatypes ((List!18110 0))(
  ( (Nil!18107) (Cons!18106 (h!19252 tuple2!12248) (t!25561 List!18110)) )
))
(declare-datatypes ((ListLongMap!10959 0))(
  ( (ListLongMap!10960 (toList!5495 List!18110)) )
))
(declare-fun lt!408729 () ListLongMap!10959)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!408727 () V!29883)

(declare-fun apply!472 (ListLongMap!10959 (_ BitVec 64)) V!29883)

(assert (=> b!905918 (= (apply!472 lt!408729 k!1033) lt!408727)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29883)

(declare-datatypes ((Unit!30715 0))(
  ( (Unit!30716) )
))
(declare-fun lt!408730 () Unit!30715)

(declare-fun minValue!1094 () V!29883)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!23 (array!53410 array!53408 (_ BitVec 32) (_ BitVec 32) V!29883 V!29883 (_ BitVec 64) V!29883 (_ BitVec 32) Int) Unit!30715)

(assert (=> b!905918 (= lt!408730 (lemmaListMapApplyFromThenApplyFromZero!23 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408727 i!717 defaultEntry!1160))))

(declare-fun b!905919 () Bool)

(declare-fun e!507699 () Bool)

(assert (=> b!905919 (= e!507699 e!507700)))

(declare-fun res!611468 () Bool)

(assert (=> b!905919 (=> res!611468 e!507700)))

(declare-fun lt!408728 () ListLongMap!10959)

(declare-fun contains!4505 (ListLongMap!10959 (_ BitVec 64)) Bool)

(assert (=> b!905919 (= res!611468 (not (contains!4505 lt!408728 k!1033)))))

(declare-fun getCurrentListMap!2729 (array!53410 array!53408 (_ BitVec 32) (_ BitVec 32) V!29883 V!29883 (_ BitVec 32) Int) ListLongMap!10959)

(assert (=> b!905919 (= lt!408728 (getCurrentListMap!2729 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905920 () Bool)

(declare-fun e!507697 () Bool)

(assert (=> b!905920 (= e!507697 tp_is_empty!18689)))

(declare-fun b!905921 () Bool)

(declare-fun res!611463 () Bool)

(assert (=> b!905921 (=> res!611463 e!507700)))

(assert (=> b!905921 (= res!611463 (not (= (apply!472 lt!408728 k!1033) lt!408727)))))

(declare-fun b!905922 () Bool)

(declare-fun res!611464 () Bool)

(declare-fun e!507695 () Bool)

(assert (=> b!905922 (=> (not res!611464) (not e!507695))))

(assert (=> b!905922 (= res!611464 (and (= (select (arr!25660 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905923 () Bool)

(declare-fun res!611472 () Bool)

(assert (=> b!905923 (=> (not res!611472) (not e!507694))))

(declare-datatypes ((List!18111 0))(
  ( (Nil!18108) (Cons!18107 (h!19253 (_ BitVec 64)) (t!25562 List!18111)) )
))
(declare-fun arrayNoDuplicates!0 (array!53410 (_ BitVec 32) List!18111) Bool)

(assert (=> b!905923 (= res!611472 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18108))))

(declare-fun b!905924 () Bool)

(declare-fun res!611470 () Bool)

(assert (=> b!905924 (=> (not res!611470) (not e!507694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53410 (_ BitVec 32)) Bool)

(assert (=> b!905924 (= res!611470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905926 () Bool)

(assert (=> b!905926 (= e!507694 e!507695)))

(declare-fun res!611466 () Bool)

(assert (=> b!905926 (=> (not res!611466) (not e!507695))))

(assert (=> b!905926 (= res!611466 (contains!4505 lt!408729 k!1033))))

(assert (=> b!905926 (= lt!408729 (getCurrentListMap!2729 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapIsEmpty!29746 () Bool)

(declare-fun mapRes!29746 () Bool)

(assert (=> mapIsEmpty!29746 mapRes!29746))

(declare-fun b!905927 () Bool)

(assert (=> b!905927 (= e!507695 (not e!507699))))

(declare-fun res!611469 () Bool)

(assert (=> b!905927 (=> res!611469 e!507699)))

(assert (=> b!905927 (= res!611469 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26120 _keys!1386))))))

(declare-fun get!13500 (ValueCell!8863 V!29883) V!29883)

(declare-fun dynLambda!1344 (Int (_ BitVec 64)) V!29883)

(assert (=> b!905927 (= lt!408727 (get!13500 (select (arr!25659 _values!1152) i!717) (dynLambda!1344 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905927 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408731 () Unit!30715)

(declare-fun lemmaKeyInListMapIsInArray!217 (array!53410 array!53408 (_ BitVec 32) (_ BitVec 32) V!29883 V!29883 (_ BitVec 64) Int) Unit!30715)

(assert (=> b!905927 (= lt!408731 (lemmaKeyInListMapIsInArray!217 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!905928 () Bool)

(declare-fun res!611467 () Bool)

(assert (=> b!905928 (=> (not res!611467) (not e!507695))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905928 (= res!611467 (inRange!0 i!717 mask!1756))))

(declare-fun mapNonEmpty!29746 () Bool)

(declare-fun tp!57075 () Bool)

(assert (=> mapNonEmpty!29746 (= mapRes!29746 (and tp!57075 e!507697))))

(declare-fun mapRest!29746 () (Array (_ BitVec 32) ValueCell!8863))

(declare-fun mapValue!29746 () ValueCell!8863)

(declare-fun mapKey!29746 () (_ BitVec 32))

(assert (=> mapNonEmpty!29746 (= (arr!25659 _values!1152) (store mapRest!29746 mapKey!29746 mapValue!29746))))

(declare-fun b!905925 () Bool)

(declare-fun e!507698 () Bool)

(assert (=> b!905925 (= e!507698 (and e!507701 mapRes!29746))))

(declare-fun condMapEmpty!29746 () Bool)

(declare-fun mapDefault!29746 () ValueCell!8863)

