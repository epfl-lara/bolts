; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77600 () Bool)

(assert start!77600)

(declare-fun b_free!16157 () Bool)

(declare-fun b_next!16157 () Bool)

(assert (=> start!77600 (= b_free!16157 (not b_next!16157))))

(declare-fun tp!56734 () Bool)

(declare-fun b_and!26541 () Bool)

(assert (=> start!77600 (= tp!56734 b_and!26541)))

(declare-fun b!903717 () Bool)

(declare-fun e!506412 () Bool)

(declare-fun e!506411 () Bool)

(assert (=> b!903717 (= e!506412 (not e!506411))))

(declare-fun res!609843 () Bool)

(assert (=> b!903717 (=> res!609843 e!506411)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53182 0))(
  ( (array!53183 (arr!25546 (Array (_ BitVec 32) (_ BitVec 64))) (size!26006 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53182)

(assert (=> b!903717 (= res!609843 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26006 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903717 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((V!29731 0))(
  ( (V!29732 (val!9338 Int)) )
))
(declare-fun zeroValue!1094 () V!29731)

(declare-datatypes ((ValueCell!8806 0))(
  ( (ValueCellFull!8806 (v!11843 V!29731)) (EmptyCell!8806) )
))
(declare-datatypes ((array!53184 0))(
  ( (array!53185 (arr!25547 (Array (_ BitVec 32) ValueCell!8806)) (size!26007 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53184)

(declare-datatypes ((Unit!30617 0))(
  ( (Unit!30618) )
))
(declare-fun lt!408038 () Unit!30617)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29731)

(declare-fun lemmaKeyInListMapIsInArray!171 (array!53182 array!53184 (_ BitVec 32) (_ BitVec 32) V!29731 V!29731 (_ BitVec 64) Int) Unit!30617)

(assert (=> b!903717 (= lt!408038 (lemmaKeyInListMapIsInArray!171 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!903718 () Bool)

(declare-fun res!609836 () Bool)

(assert (=> b!903718 (=> (not res!609836) (not e!506412))))

(declare-datatypes ((tuple2!12142 0))(
  ( (tuple2!12143 (_1!6081 (_ BitVec 64)) (_2!6081 V!29731)) )
))
(declare-datatypes ((List!18018 0))(
  ( (Nil!18015) (Cons!18014 (h!19160 tuple2!12142) (t!25409 List!18018)) )
))
(declare-datatypes ((ListLongMap!10853 0))(
  ( (ListLongMap!10854 (toList!5442 List!18018)) )
))
(declare-fun contains!4455 (ListLongMap!10853 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2679 (array!53182 array!53184 (_ BitVec 32) (_ BitVec 32) V!29731 V!29731 (_ BitVec 32) Int) ListLongMap!10853)

(assert (=> b!903718 (= res!609836 (contains!4455 (getCurrentListMap!2679 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903719 () Bool)

(declare-fun e!506410 () Bool)

(declare-fun tp_is_empty!18575 () Bool)

(assert (=> b!903719 (= e!506410 tp_is_empty!18575)))

(declare-fun b!903720 () Bool)

(declare-fun res!609835 () Bool)

(assert (=> b!903720 (=> (not res!609835) (not e!506412))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!903720 (= res!609835 (inRange!0 i!717 mask!1756))))

(declare-fun b!903721 () Bool)

(declare-fun res!609839 () Bool)

(assert (=> b!903721 (=> (not res!609839) (not e!506412))))

(assert (=> b!903721 (= res!609839 (and (= (select (arr!25546 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!609840 () Bool)

(assert (=> start!77600 (=> (not res!609840) (not e!506412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77600 (= res!609840 (validMask!0 mask!1756))))

(assert (=> start!77600 e!506412))

(declare-fun e!506409 () Bool)

(declare-fun array_inv!19992 (array!53184) Bool)

(assert (=> start!77600 (and (array_inv!19992 _values!1152) e!506409)))

(assert (=> start!77600 tp!56734))

(assert (=> start!77600 true))

(assert (=> start!77600 tp_is_empty!18575))

(declare-fun array_inv!19993 (array!53182) Bool)

(assert (=> start!77600 (array_inv!19993 _keys!1386)))

(declare-fun b!903722 () Bool)

(declare-fun res!609842 () Bool)

(assert (=> b!903722 (=> (not res!609842) (not e!506412))))

(declare-datatypes ((List!18019 0))(
  ( (Nil!18016) (Cons!18015 (h!19161 (_ BitVec 64)) (t!25410 List!18019)) )
))
(declare-fun arrayNoDuplicates!0 (array!53182 (_ BitVec 32) List!18019) Bool)

(assert (=> b!903722 (= res!609842 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18016))))

(declare-fun b!903723 () Bool)

(declare-fun e!506408 () Bool)

(assert (=> b!903723 (= e!506408 true)))

(declare-fun lt!408036 () V!29731)

(declare-fun lt!408037 () ListLongMap!10853)

(declare-fun apply!425 (ListLongMap!10853 (_ BitVec 64)) V!29731)

(assert (=> b!903723 (= lt!408036 (apply!425 lt!408037 k!1033))))

(declare-fun b!903724 () Bool)

(declare-fun e!506413 () Bool)

(assert (=> b!903724 (= e!506413 tp_is_empty!18575)))

(declare-fun mapNonEmpty!29575 () Bool)

(declare-fun mapRes!29575 () Bool)

(declare-fun tp!56733 () Bool)

(assert (=> mapNonEmpty!29575 (= mapRes!29575 (and tp!56733 e!506413))))

(declare-fun mapRest!29575 () (Array (_ BitVec 32) ValueCell!8806))

(declare-fun mapValue!29575 () ValueCell!8806)

(declare-fun mapKey!29575 () (_ BitVec 32))

(assert (=> mapNonEmpty!29575 (= (arr!25547 _values!1152) (store mapRest!29575 mapKey!29575 mapValue!29575))))

(declare-fun b!903725 () Bool)

(declare-fun res!609837 () Bool)

(assert (=> b!903725 (=> (not res!609837) (not e!506412))))

(assert (=> b!903725 (= res!609837 (and (= (size!26007 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26006 _keys!1386) (size!26007 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903726 () Bool)

(assert (=> b!903726 (= e!506411 e!506408)))

(declare-fun res!609838 () Bool)

(assert (=> b!903726 (=> res!609838 e!506408)))

(assert (=> b!903726 (= res!609838 (not (contains!4455 lt!408037 k!1033)))))

(assert (=> b!903726 (= lt!408037 (getCurrentListMap!2679 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!903727 () Bool)

(assert (=> b!903727 (= e!506409 (and e!506410 mapRes!29575))))

(declare-fun condMapEmpty!29575 () Bool)

(declare-fun mapDefault!29575 () ValueCell!8806)

