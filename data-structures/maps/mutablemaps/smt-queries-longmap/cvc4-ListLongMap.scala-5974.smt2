; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77702 () Bool)

(assert start!77702)

(declare-fun b_free!16259 () Bool)

(declare-fun b_next!16259 () Bool)

(assert (=> start!77702 (= b_free!16259 (not b_next!16259))))

(declare-fun tp!57040 () Bool)

(declare-fun b_and!26689 () Bool)

(assert (=> start!77702 (= tp!57040 b_and!26689)))

(declare-fun b!905670 () Bool)

(declare-fun res!611283 () Bool)

(declare-fun e!507555 () Bool)

(assert (=> b!905670 (=> (not res!611283) (not e!507555))))

(declare-datatypes ((V!29867 0))(
  ( (V!29868 (val!9389 Int)) )
))
(declare-datatypes ((ValueCell!8857 0))(
  ( (ValueCellFull!8857 (v!11894 V!29867)) (EmptyCell!8857) )
))
(declare-datatypes ((array!53384 0))(
  ( (array!53385 (arr!25647 (Array (_ BitVec 32) ValueCell!8857)) (size!26107 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53384)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((array!53386 0))(
  ( (array!53387 (arr!25648 (Array (_ BitVec 32) (_ BitVec 64))) (size!26108 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53386)

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!905670 (= res!611283 (and (= (size!26107 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26108 _keys!1386) (size!26107 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!611290 () Bool)

(assert (=> start!77702 (=> (not res!611290) (not e!507555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77702 (= res!611290 (validMask!0 mask!1756))))

(assert (=> start!77702 e!507555))

(declare-fun e!507550 () Bool)

(declare-fun array_inv!20070 (array!53384) Bool)

(assert (=> start!77702 (and (array_inv!20070 _values!1152) e!507550)))

(assert (=> start!77702 tp!57040))

(assert (=> start!77702 true))

(declare-fun tp_is_empty!18677 () Bool)

(assert (=> start!77702 tp_is_empty!18677))

(declare-fun array_inv!20071 (array!53386) Bool)

(assert (=> start!77702 (array_inv!20071 _keys!1386)))

(declare-fun b!905671 () Bool)

(declare-fun e!507554 () Bool)

(declare-fun e!507551 () Bool)

(assert (=> b!905671 (= e!507554 (not e!507551))))

(declare-fun res!611292 () Bool)

(assert (=> b!905671 (=> res!611292 e!507551)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!905671 (= res!611292 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26108 _keys!1386))))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408641 () V!29867)

(declare-fun get!13492 (ValueCell!8857 V!29867) V!29867)

(declare-fun dynLambda!1340 (Int (_ BitVec 64)) V!29867)

(assert (=> b!905671 (= lt!408641 (get!13492 (select (arr!25647 _values!1152) i!717) (dynLambda!1340 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905671 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun zeroValue!1094 () V!29867)

(declare-datatypes ((Unit!30705 0))(
  ( (Unit!30706) )
))
(declare-fun lt!408638 () Unit!30705)

(declare-fun minValue!1094 () V!29867)

(declare-fun lemmaKeyInListMapIsInArray!213 (array!53386 array!53384 (_ BitVec 32) (_ BitVec 32) V!29867 V!29867 (_ BitVec 64) Int) Unit!30705)

(assert (=> b!905671 (= lt!408638 (lemmaKeyInListMapIsInArray!213 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!905672 () Bool)

(declare-fun e!507556 () Bool)

(assert (=> b!905672 (= e!507556 tp_is_empty!18677)))

(declare-fun b!905673 () Bool)

(declare-fun res!611291 () Bool)

(assert (=> b!905673 (=> (not res!611291) (not e!507554))))

(assert (=> b!905673 (= res!611291 (and (= (select (arr!25648 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!29728 () Bool)

(declare-fun mapRes!29728 () Bool)

(declare-fun tp!57039 () Bool)

(assert (=> mapNonEmpty!29728 (= mapRes!29728 (and tp!57039 e!507556))))

(declare-fun mapValue!29728 () ValueCell!8857)

(declare-fun mapKey!29728 () (_ BitVec 32))

(declare-fun mapRest!29728 () (Array (_ BitVec 32) ValueCell!8857))

(assert (=> mapNonEmpty!29728 (= (arr!25647 _values!1152) (store mapRest!29728 mapKey!29728 mapValue!29728))))

(declare-fun b!905674 () Bool)

(declare-fun e!507557 () Bool)

(assert (=> b!905674 (= e!507551 e!507557)))

(declare-fun res!611287 () Bool)

(assert (=> b!905674 (=> res!611287 e!507557)))

(declare-datatypes ((tuple2!12238 0))(
  ( (tuple2!12239 (_1!6129 (_ BitVec 64)) (_2!6129 V!29867)) )
))
(declare-datatypes ((List!18102 0))(
  ( (Nil!18099) (Cons!18098 (h!19244 tuple2!12238) (t!25541 List!18102)) )
))
(declare-datatypes ((ListLongMap!10949 0))(
  ( (ListLongMap!10950 (toList!5490 List!18102)) )
))
(declare-fun lt!408639 () ListLongMap!10949)

(declare-fun contains!4500 (ListLongMap!10949 (_ BitVec 64)) Bool)

(assert (=> b!905674 (= res!611287 (not (contains!4500 lt!408639 k!1033)))))

(declare-fun getCurrentListMap!2724 (array!53386 array!53384 (_ BitVec 32) (_ BitVec 32) V!29867 V!29867 (_ BitVec 32) Int) ListLongMap!10949)

(assert (=> b!905674 (= lt!408639 (getCurrentListMap!2724 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905675 () Bool)

(declare-fun e!507552 () Bool)

(assert (=> b!905675 (= e!507552 tp_is_empty!18677)))

(declare-fun b!905676 () Bool)

(assert (=> b!905676 (= e!507557 true)))

(declare-fun lt!408640 () ListLongMap!10949)

(declare-fun apply!467 (ListLongMap!10949 (_ BitVec 64)) V!29867)

(assert (=> b!905676 (= (apply!467 lt!408640 k!1033) lt!408641)))

(declare-fun lt!408637 () Unit!30705)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!18 (array!53386 array!53384 (_ BitVec 32) (_ BitVec 32) V!29867 V!29867 (_ BitVec 64) V!29867 (_ BitVec 32) Int) Unit!30705)

(assert (=> b!905676 (= lt!408637 (lemmaListMapApplyFromThenApplyFromZero!18 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408641 i!717 defaultEntry!1160))))

(declare-fun b!905677 () Bool)

(declare-fun res!611289 () Bool)

(assert (=> b!905677 (=> (not res!611289) (not e!507555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53386 (_ BitVec 32)) Bool)

(assert (=> b!905677 (= res!611289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905678 () Bool)

(assert (=> b!905678 (= e!507555 e!507554)))

(declare-fun res!611284 () Bool)

(assert (=> b!905678 (=> (not res!611284) (not e!507554))))

(assert (=> b!905678 (= res!611284 (contains!4500 lt!408640 k!1033))))

(assert (=> b!905678 (= lt!408640 (getCurrentListMap!2724 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapIsEmpty!29728 () Bool)

(assert (=> mapIsEmpty!29728 mapRes!29728))

(declare-fun b!905679 () Bool)

(assert (=> b!905679 (= e!507550 (and e!507552 mapRes!29728))))

(declare-fun condMapEmpty!29728 () Bool)

(declare-fun mapDefault!29728 () ValueCell!8857)

