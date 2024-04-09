; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77720 () Bool)

(assert start!77720)

(declare-fun b_free!16277 () Bool)

(declare-fun b_next!16277 () Bool)

(assert (=> start!77720 (= b_free!16277 (not b_next!16277))))

(declare-fun tp!57093 () Bool)

(declare-fun b_and!26725 () Bool)

(assert (=> start!77720 (= tp!57093 b_and!26725)))

(declare-fun b!906039 () Bool)

(declare-fun e!507770 () Bool)

(declare-fun tp_is_empty!18695 () Bool)

(assert (=> b!906039 (= e!507770 tp_is_empty!18695)))

(declare-fun b!906040 () Bool)

(declare-fun e!507771 () Bool)

(declare-fun e!507766 () Bool)

(assert (=> b!906040 (= e!507771 (not e!507766))))

(declare-fun res!611558 () Bool)

(assert (=> b!906040 (=> res!611558 e!507766)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53418 0))(
  ( (array!53419 (arr!25664 (Array (_ BitVec 32) (_ BitVec 64))) (size!26124 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53418)

(assert (=> b!906040 (= res!611558 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26124 _keys!1386))))))

(declare-datatypes ((V!29891 0))(
  ( (V!29892 (val!9398 Int)) )
))
(declare-datatypes ((ValueCell!8866 0))(
  ( (ValueCellFull!8866 (v!11903 V!29891)) (EmptyCell!8866) )
))
(declare-datatypes ((array!53420 0))(
  ( (array!53421 (arr!25665 (Array (_ BitVec 32) ValueCell!8866)) (size!26125 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53420)

(declare-fun lt!408776 () V!29891)

(declare-fun defaultEntry!1160 () Int)

(declare-fun get!13504 (ValueCell!8866 V!29891) V!29891)

(declare-fun dynLambda!1346 (Int (_ BitVec 64)) V!29891)

(assert (=> b!906040 (= lt!408776 (get!13504 (select (arr!25665 _values!1152) i!717) (dynLambda!1346 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906040 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29891)

(declare-datatypes ((Unit!30719 0))(
  ( (Unit!30720) )
))
(declare-fun lt!408774 () Unit!30719)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29891)

(declare-fun lemmaKeyInListMapIsInArray!219 (array!53418 array!53420 (_ BitVec 32) (_ BitVec 32) V!29891 V!29891 (_ BitVec 64) Int) Unit!30719)

(assert (=> b!906040 (= lt!408774 (lemmaKeyInListMapIsInArray!219 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906041 () Bool)

(declare-fun res!611557 () Bool)

(assert (=> b!906041 (=> (not res!611557) (not e!507771))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906041 (= res!611557 (inRange!0 i!717 mask!1756))))

(declare-fun b!906042 () Bool)

(declare-fun res!611562 () Bool)

(declare-fun e!507769 () Bool)

(assert (=> b!906042 (=> (not res!611562) (not e!507769))))

(assert (=> b!906042 (= res!611562 (and (= (size!26125 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26124 _keys!1386) (size!26125 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906043 () Bool)

(declare-fun e!507767 () Bool)

(assert (=> b!906043 (= e!507766 e!507767)))

(declare-fun res!611561 () Bool)

(assert (=> b!906043 (=> res!611561 e!507767)))

(declare-datatypes ((tuple2!12252 0))(
  ( (tuple2!12253 (_1!6136 (_ BitVec 64)) (_2!6136 V!29891)) )
))
(declare-datatypes ((List!18114 0))(
  ( (Nil!18111) (Cons!18110 (h!19256 tuple2!12252) (t!25571 List!18114)) )
))
(declare-datatypes ((ListLongMap!10963 0))(
  ( (ListLongMap!10964 (toList!5497 List!18114)) )
))
(declare-fun lt!408773 () ListLongMap!10963)

(declare-fun contains!4507 (ListLongMap!10963 (_ BitVec 64)) Bool)

(assert (=> b!906043 (= res!611561 (not (contains!4507 lt!408773 k!1033)))))

(declare-fun getCurrentListMap!2731 (array!53418 array!53420 (_ BitVec 32) (_ BitVec 32) V!29891 V!29891 (_ BitVec 32) Int) ListLongMap!10963)

(assert (=> b!906043 (= lt!408773 (getCurrentListMap!2731 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun res!611560 () Bool)

(assert (=> start!77720 (=> (not res!611560) (not e!507769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77720 (= res!611560 (validMask!0 mask!1756))))

(assert (=> start!77720 e!507769))

(declare-fun e!507768 () Bool)

(declare-fun array_inv!20078 (array!53420) Bool)

(assert (=> start!77720 (and (array_inv!20078 _values!1152) e!507768)))

(assert (=> start!77720 tp!57093))

(assert (=> start!77720 true))

(assert (=> start!77720 tp_is_empty!18695))

(declare-fun array_inv!20079 (array!53418) Bool)

(assert (=> start!77720 (array_inv!20079 _keys!1386)))

(declare-fun b!906044 () Bool)

(declare-fun res!611555 () Bool)

(assert (=> b!906044 (=> (not res!611555) (not e!507771))))

(assert (=> b!906044 (= res!611555 (and (= (select (arr!25664 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906045 () Bool)

(declare-fun res!611556 () Bool)

(assert (=> b!906045 (=> (not res!611556) (not e!507769))))

(declare-datatypes ((List!18115 0))(
  ( (Nil!18112) (Cons!18111 (h!19257 (_ BitVec 64)) (t!25572 List!18115)) )
))
(declare-fun arrayNoDuplicates!0 (array!53418 (_ BitVec 32) List!18115) Bool)

(assert (=> b!906045 (= res!611556 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18112))))

(declare-fun b!906046 () Bool)

(assert (=> b!906046 (= e!507769 e!507771)))

(declare-fun res!611553 () Bool)

(assert (=> b!906046 (=> (not res!611553) (not e!507771))))

(declare-fun lt!408775 () ListLongMap!10963)

(assert (=> b!906046 (= res!611553 (contains!4507 lt!408775 k!1033))))

(assert (=> b!906046 (= lt!408775 (getCurrentListMap!2731 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906047 () Bool)

(declare-fun res!611554 () Bool)

(assert (=> b!906047 (=> res!611554 e!507767)))

(declare-fun apply!474 (ListLongMap!10963 (_ BitVec 64)) V!29891)

(assert (=> b!906047 (= res!611554 (not (= (apply!474 lt!408773 k!1033) lt!408776)))))

(declare-fun mapNonEmpty!29755 () Bool)

(declare-fun mapRes!29755 () Bool)

(declare-fun tp!57094 () Bool)

(declare-fun e!507772 () Bool)

(assert (=> mapNonEmpty!29755 (= mapRes!29755 (and tp!57094 e!507772))))

(declare-fun mapKey!29755 () (_ BitVec 32))

(declare-fun mapRest!29755 () (Array (_ BitVec 32) ValueCell!8866))

(declare-fun mapValue!29755 () ValueCell!8866)

(assert (=> mapNonEmpty!29755 (= (arr!25665 _values!1152) (store mapRest!29755 mapKey!29755 mapValue!29755))))

(declare-fun b!906048 () Bool)

(declare-fun res!611559 () Bool)

(assert (=> b!906048 (=> (not res!611559) (not e!507769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53418 (_ BitVec 32)) Bool)

(assert (=> b!906048 (= res!611559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906049 () Bool)

(assert (=> b!906049 (= e!507768 (and e!507770 mapRes!29755))))

(declare-fun condMapEmpty!29755 () Bool)

(declare-fun mapDefault!29755 () ValueCell!8866)

