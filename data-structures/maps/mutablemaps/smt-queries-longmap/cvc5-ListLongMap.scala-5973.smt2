; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77692 () Bool)

(assert start!77692)

(declare-fun b_free!16249 () Bool)

(declare-fun b_next!16249 () Bool)

(assert (=> start!77692 (= b_free!16249 (not b_next!16249))))

(declare-fun tp!57009 () Bool)

(declare-fun b_and!26669 () Bool)

(assert (=> start!77692 (= tp!57009 b_and!26669)))

(declare-fun b!905465 () Bool)

(declare-fun e!507435 () Bool)

(declare-fun tp_is_empty!18667 () Bool)

(assert (=> b!905465 (= e!507435 tp_is_empty!18667)))

(declare-fun b!905466 () Bool)

(declare-fun res!611138 () Bool)

(declare-fun e!507430 () Bool)

(assert (=> b!905466 (=> (not res!611138) (not e!507430))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905466 (= res!611138 (inRange!0 i!717 mask!1756))))

(declare-fun res!611141 () Bool)

(declare-fun e!507432 () Bool)

(assert (=> start!77692 (=> (not res!611141) (not e!507432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77692 (= res!611141 (validMask!0 mask!1756))))

(assert (=> start!77692 e!507432))

(declare-datatypes ((V!29855 0))(
  ( (V!29856 (val!9384 Int)) )
))
(declare-datatypes ((ValueCell!8852 0))(
  ( (ValueCellFull!8852 (v!11889 V!29855)) (EmptyCell!8852) )
))
(declare-datatypes ((array!53364 0))(
  ( (array!53365 (arr!25637 (Array (_ BitVec 32) ValueCell!8852)) (size!26097 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53364)

(declare-fun e!507431 () Bool)

(declare-fun array_inv!20062 (array!53364) Bool)

(assert (=> start!77692 (and (array_inv!20062 _values!1152) e!507431)))

(assert (=> start!77692 tp!57009))

(assert (=> start!77692 true))

(assert (=> start!77692 tp_is_empty!18667))

(declare-datatypes ((array!53366 0))(
  ( (array!53367 (arr!25638 (Array (_ BitVec 32) (_ BitVec 64))) (size!26098 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53366)

(declare-fun array_inv!20063 (array!53366) Bool)

(assert (=> start!77692 (array_inv!20063 _keys!1386)))

(declare-fun b!905467 () Bool)

(declare-fun e!507437 () Bool)

(assert (=> b!905467 (= e!507437 true)))

(declare-datatypes ((tuple2!12228 0))(
  ( (tuple2!12229 (_1!6124 (_ BitVec 64)) (_2!6124 V!29855)) )
))
(declare-datatypes ((List!18094 0))(
  ( (Nil!18091) (Cons!18090 (h!19236 tuple2!12228) (t!25523 List!18094)) )
))
(declare-datatypes ((ListLongMap!10939 0))(
  ( (ListLongMap!10940 (toList!5485 List!18094)) )
))
(declare-fun lt!408565 () ListLongMap!10939)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!408566 () V!29855)

(declare-fun apply!462 (ListLongMap!10939 (_ BitVec 64)) V!29855)

(assert (=> b!905467 (= (apply!462 lt!408565 k!1033) lt!408566)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29855)

(declare-datatypes ((Unit!30695 0))(
  ( (Unit!30696) )
))
(declare-fun lt!408563 () Unit!30695)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29855)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!13 (array!53366 array!53364 (_ BitVec 32) (_ BitVec 32) V!29855 V!29855 (_ BitVec 64) V!29855 (_ BitVec 32) Int) Unit!30695)

(assert (=> b!905467 (= lt!408563 (lemmaListMapApplyFromThenApplyFromZero!13 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408566 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29713 () Bool)

(declare-fun mapRes!29713 () Bool)

(declare-fun tp!57010 () Bool)

(declare-fun e!507434 () Bool)

(assert (=> mapNonEmpty!29713 (= mapRes!29713 (and tp!57010 e!507434))))

(declare-fun mapKey!29713 () (_ BitVec 32))

(declare-fun mapValue!29713 () ValueCell!8852)

(declare-fun mapRest!29713 () (Array (_ BitVec 32) ValueCell!8852))

(assert (=> mapNonEmpty!29713 (= (arr!25637 _values!1152) (store mapRest!29713 mapKey!29713 mapValue!29713))))

(declare-fun b!905468 () Bool)

(declare-fun e!507433 () Bool)

(assert (=> b!905468 (= e!507430 (not e!507433))))

(declare-fun res!611137 () Bool)

(assert (=> b!905468 (=> res!611137 e!507433)))

(assert (=> b!905468 (= res!611137 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26098 _keys!1386))))))

(declare-fun get!13486 (ValueCell!8852 V!29855) V!29855)

(declare-fun dynLambda!1336 (Int (_ BitVec 64)) V!29855)

(assert (=> b!905468 (= lt!408566 (get!13486 (select (arr!25637 _values!1152) i!717) (dynLambda!1336 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905468 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408562 () Unit!30695)

(declare-fun lemmaKeyInListMapIsInArray!209 (array!53366 array!53364 (_ BitVec 32) (_ BitVec 32) V!29855 V!29855 (_ BitVec 64) Int) Unit!30695)

(assert (=> b!905468 (= lt!408562 (lemmaKeyInListMapIsInArray!209 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!905469 () Bool)

(declare-fun res!611142 () Bool)

(assert (=> b!905469 (=> (not res!611142) (not e!507432))))

(assert (=> b!905469 (= res!611142 (and (= (size!26097 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26098 _keys!1386) (size!26097 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905470 () Bool)

(assert (=> b!905470 (= e!507432 e!507430)))

(declare-fun res!611134 () Bool)

(assert (=> b!905470 (=> (not res!611134) (not e!507430))))

(declare-fun contains!4497 (ListLongMap!10939 (_ BitVec 64)) Bool)

(assert (=> b!905470 (= res!611134 (contains!4497 lt!408565 k!1033))))

(declare-fun getCurrentListMap!2721 (array!53366 array!53364 (_ BitVec 32) (_ BitVec 32) V!29855 V!29855 (_ BitVec 32) Int) ListLongMap!10939)

(assert (=> b!905470 (= lt!408565 (getCurrentListMap!2721 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905471 () Bool)

(assert (=> b!905471 (= e!507434 tp_is_empty!18667)))

(declare-fun b!905472 () Bool)

(declare-fun res!611135 () Bool)

(assert (=> b!905472 (=> (not res!611135) (not e!507432))))

(declare-datatypes ((List!18095 0))(
  ( (Nil!18092) (Cons!18091 (h!19237 (_ BitVec 64)) (t!25524 List!18095)) )
))
(declare-fun arrayNoDuplicates!0 (array!53366 (_ BitVec 32) List!18095) Bool)

(assert (=> b!905472 (= res!611135 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18092))))

(declare-fun b!905473 () Bool)

(assert (=> b!905473 (= e!507433 e!507437)))

(declare-fun res!611133 () Bool)

(assert (=> b!905473 (=> res!611133 e!507437)))

(declare-fun lt!408564 () ListLongMap!10939)

(assert (=> b!905473 (= res!611133 (not (contains!4497 lt!408564 k!1033)))))

(assert (=> b!905473 (= lt!408564 (getCurrentListMap!2721 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905474 () Bool)

(assert (=> b!905474 (= e!507431 (and e!507435 mapRes!29713))))

(declare-fun condMapEmpty!29713 () Bool)

(declare-fun mapDefault!29713 () ValueCell!8852)

