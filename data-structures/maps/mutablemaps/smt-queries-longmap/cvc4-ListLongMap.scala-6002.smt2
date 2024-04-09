; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77896 () Bool)

(assert start!77896)

(declare-fun b_free!16427 () Bool)

(declare-fun b_next!16427 () Bool)

(assert (=> start!77896 (= b_free!16427 (not b_next!16427))))

(declare-fun tp!57546 () Bool)

(declare-fun b_and!27013 () Bool)

(assert (=> start!77896 (= tp!57546 b_and!27013)))

(declare-fun b!909094 () Bool)

(declare-fun e!509594 () Bool)

(assert (=> b!909094 (= e!509594 false)))

(declare-datatypes ((V!30091 0))(
  ( (V!30092 (val!9473 Int)) )
))
(declare-datatypes ((ValueCell!8941 0))(
  ( (ValueCellFull!8941 (v!11980 V!30091)) (EmptyCell!8941) )
))
(declare-datatypes ((array!53710 0))(
  ( (array!53711 (arr!25809 (Array (_ BitVec 32) ValueCell!8941)) (size!26269 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53710)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409912 () Bool)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30091)

(declare-datatypes ((array!53712 0))(
  ( (array!53713 (arr!25810 (Array (_ BitVec 32) (_ BitVec 64))) (size!26270 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53712)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30091)

(declare-datatypes ((tuple2!12374 0))(
  ( (tuple2!12375 (_1!6197 (_ BitVec 64)) (_2!6197 V!30091)) )
))
(declare-datatypes ((List!18231 0))(
  ( (Nil!18228) (Cons!18227 (h!19373 tuple2!12374) (t!25820 List!18231)) )
))
(declare-datatypes ((ListLongMap!11085 0))(
  ( (ListLongMap!11086 (toList!5558 List!18231)) )
))
(declare-fun contains!4565 (ListLongMap!11085 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2788 (array!53712 array!53710 (_ BitVec 32) (_ BitVec 32) V!30091 V!30091 (_ BitVec 32) Int) ListLongMap!11085)

(assert (=> b!909094 (= lt!409912 (contains!4565 (getCurrentListMap!2788 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909095 () Bool)

(declare-fun res!613712 () Bool)

(assert (=> b!909095 (=> (not res!613712) (not e!509594))))

(assert (=> b!909095 (= res!613712 (and (= (size!26269 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26270 _keys!1386) (size!26269 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909096 () Bool)

(declare-fun e!509592 () Bool)

(declare-fun tp_is_empty!18845 () Bool)

(assert (=> b!909096 (= e!509592 tp_is_empty!18845)))

(declare-fun res!613711 () Bool)

(assert (=> start!77896 (=> (not res!613711) (not e!509594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77896 (= res!613711 (validMask!0 mask!1756))))

(assert (=> start!77896 e!509594))

(declare-fun e!509590 () Bool)

(declare-fun array_inv!20178 (array!53710) Bool)

(assert (=> start!77896 (and (array_inv!20178 _values!1152) e!509590)))

(assert (=> start!77896 tp!57546))

(assert (=> start!77896 true))

(assert (=> start!77896 tp_is_empty!18845))

(declare-fun array_inv!20179 (array!53712) Bool)

(assert (=> start!77896 (array_inv!20179 _keys!1386)))

(declare-fun b!909097 () Bool)

(declare-fun mapRes!29983 () Bool)

(assert (=> b!909097 (= e!509590 (and e!509592 mapRes!29983))))

(declare-fun condMapEmpty!29983 () Bool)

(declare-fun mapDefault!29983 () ValueCell!8941)

