; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77696 () Bool)

(assert start!77696)

(declare-fun b_free!16253 () Bool)

(declare-fun b_next!16253 () Bool)

(assert (=> start!77696 (= b_free!16253 (not b_next!16253))))

(declare-fun tp!57022 () Bool)

(declare-fun b_and!26677 () Bool)

(assert (=> start!77696 (= tp!57022 b_and!26677)))

(declare-fun b!905547 () Bool)

(declare-fun res!611193 () Bool)

(declare-fun e!507484 () Bool)

(assert (=> b!905547 (=> (not res!611193) (not e!507484))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53372 0))(
  ( (array!53373 (arr!25641 (Array (_ BitVec 32) (_ BitVec 64))) (size!26101 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53372)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!905547 (= res!611193 (and (= (select (arr!25641 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905548 () Bool)

(declare-fun res!611198 () Bool)

(declare-fun e!507481 () Bool)

(assert (=> b!905548 (=> (not res!611198) (not e!507481))))

(declare-datatypes ((V!29859 0))(
  ( (V!29860 (val!9386 Int)) )
))
(declare-datatypes ((ValueCell!8854 0))(
  ( (ValueCellFull!8854 (v!11891 V!29859)) (EmptyCell!8854) )
))
(declare-datatypes ((array!53374 0))(
  ( (array!53375 (arr!25642 (Array (_ BitVec 32) ValueCell!8854)) (size!26102 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53374)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!905548 (= res!611198 (and (= (size!26102 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26101 _keys!1386) (size!26102 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905549 () Bool)

(declare-fun e!507479 () Bool)

(assert (=> b!905549 (= e!507484 (not e!507479))))

(declare-fun res!611200 () Bool)

(assert (=> b!905549 (=> res!611200 e!507479)))

(assert (=> b!905549 (= res!611200 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26101 _keys!1386))))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408596 () V!29859)

(declare-fun get!13488 (ValueCell!8854 V!29859) V!29859)

(declare-fun dynLambda!1338 (Int (_ BitVec 64)) V!29859)

(assert (=> b!905549 (= lt!408596 (get!13488 (select (arr!25642 _values!1152) i!717) (dynLambda!1338 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905549 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun zeroValue!1094 () V!29859)

(declare-datatypes ((Unit!30699 0))(
  ( (Unit!30700) )
))
(declare-fun lt!408594 () Unit!30699)

(declare-fun minValue!1094 () V!29859)

(declare-fun lemmaKeyInListMapIsInArray!211 (array!53372 array!53374 (_ BitVec 32) (_ BitVec 32) V!29859 V!29859 (_ BitVec 64) Int) Unit!30699)

(assert (=> b!905549 (= lt!408594 (lemmaKeyInListMapIsInArray!211 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!905550 () Bool)

(declare-fun e!507482 () Bool)

(assert (=> b!905550 (= e!507482 true)))

(declare-datatypes ((tuple2!12232 0))(
  ( (tuple2!12233 (_1!6126 (_ BitVec 64)) (_2!6126 V!29859)) )
))
(declare-datatypes ((List!18098 0))(
  ( (Nil!18095) (Cons!18094 (h!19240 tuple2!12232) (t!25531 List!18098)) )
))
(declare-datatypes ((ListLongMap!10943 0))(
  ( (ListLongMap!10944 (toList!5487 List!18098)) )
))
(declare-fun lt!408592 () ListLongMap!10943)

(declare-fun apply!464 (ListLongMap!10943 (_ BitVec 64)) V!29859)

(assert (=> b!905550 (= (apply!464 lt!408592 k!1033) lt!408596)))

(declare-fun lt!408593 () Unit!30699)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!15 (array!53372 array!53374 (_ BitVec 32) (_ BitVec 32) V!29859 V!29859 (_ BitVec 64) V!29859 (_ BitVec 32) Int) Unit!30699)

(assert (=> b!905550 (= lt!408593 (lemmaListMapApplyFromThenApplyFromZero!15 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408596 i!717 defaultEntry!1160))))

(declare-fun b!905551 () Bool)

(declare-fun e!507483 () Bool)

(declare-fun e!507480 () Bool)

(declare-fun mapRes!29719 () Bool)

(assert (=> b!905551 (= e!507483 (and e!507480 mapRes!29719))))

(declare-fun condMapEmpty!29719 () Bool)

(declare-fun mapDefault!29719 () ValueCell!8854)

