; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77668 () Bool)

(assert start!77668)

(declare-fun b_free!16225 () Bool)

(declare-fun b_next!16225 () Bool)

(assert (=> start!77668 (= b_free!16225 (not b_next!16225))))

(declare-fun tp!56938 () Bool)

(declare-fun b_and!26621 () Bool)

(assert (=> start!77668 (= tp!56938 b_and!26621)))

(declare-fun b!904973 () Bool)

(declare-fun res!610774 () Bool)

(declare-fun e!507143 () Bool)

(assert (=> b!904973 (=> (not res!610774) (not e!507143))))

(declare-datatypes ((array!53316 0))(
  ( (array!53317 (arr!25613 (Array (_ BitVec 32) (_ BitVec 64))) (size!26073 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53316)

(declare-datatypes ((List!18075 0))(
  ( (Nil!18072) (Cons!18071 (h!19217 (_ BitVec 64)) (t!25480 List!18075)) )
))
(declare-fun arrayNoDuplicates!0 (array!53316 (_ BitVec 32) List!18075) Bool)

(assert (=> b!904973 (= res!610774 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18072))))

(declare-fun b!904974 () Bool)

(declare-fun e!507144 () Bool)

(assert (=> b!904974 (= e!507144 true)))

(declare-datatypes ((V!29823 0))(
  ( (V!29824 (val!9372 Int)) )
))
(declare-datatypes ((tuple2!12206 0))(
  ( (tuple2!12207 (_1!6113 (_ BitVec 64)) (_2!6113 V!29823)) )
))
(declare-datatypes ((List!18076 0))(
  ( (Nil!18073) (Cons!18072 (h!19218 tuple2!12206) (t!25481 List!18076)) )
))
(declare-datatypes ((ListLongMap!10917 0))(
  ( (ListLongMap!10918 (toList!5474 List!18076)) )
))
(declare-fun lt!408384 () ListLongMap!10917)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!408386 () V!29823)

(declare-fun apply!451 (ListLongMap!10917 (_ BitVec 64)) V!29823)

(assert (=> b!904974 (= (apply!451 lt!408384 k!1033) lt!408386)))

(declare-datatypes ((ValueCell!8840 0))(
  ( (ValueCellFull!8840 (v!11877 V!29823)) (EmptyCell!8840) )
))
(declare-datatypes ((array!53318 0))(
  ( (array!53319 (arr!25614 (Array (_ BitVec 32) ValueCell!8840)) (size!26074 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53318)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30675 0))(
  ( (Unit!30676) )
))
(declare-fun lt!408382 () Unit!30675)

(declare-fun zeroValue!1094 () V!29823)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29823)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!5 (array!53316 array!53318 (_ BitVec 32) (_ BitVec 32) V!29823 V!29823 (_ BitVec 64) V!29823 (_ BitVec 32) Int) Unit!30675)

(assert (=> b!904974 (= lt!408382 (lemmaListMapApplyFromThenApplyFromZero!5 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408386 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29677 () Bool)

(declare-fun mapRes!29677 () Bool)

(declare-fun tp!56937 () Bool)

(declare-fun e!507148 () Bool)

(assert (=> mapNonEmpty!29677 (= mapRes!29677 (and tp!56937 e!507148))))

(declare-fun mapValue!29677 () ValueCell!8840)

(declare-fun mapKey!29677 () (_ BitVec 32))

(declare-fun mapRest!29677 () (Array (_ BitVec 32) ValueCell!8840))

(assert (=> mapNonEmpty!29677 (= (arr!25614 _values!1152) (store mapRest!29677 mapKey!29677 mapValue!29677))))

(declare-fun b!904975 () Bool)

(declare-fun tp_is_empty!18643 () Bool)

(assert (=> b!904975 (= e!507148 tp_is_empty!18643)))

(declare-fun mapIsEmpty!29677 () Bool)

(assert (=> mapIsEmpty!29677 mapRes!29677))

(declare-fun b!904976 () Bool)

(declare-fun e!507147 () Bool)

(assert (=> b!904976 (= e!507143 e!507147)))

(declare-fun res!610780 () Bool)

(assert (=> b!904976 (=> (not res!610780) (not e!507147))))

(declare-fun contains!4487 (ListLongMap!10917 (_ BitVec 64)) Bool)

(assert (=> b!904976 (= res!610780 (contains!4487 lt!408384 k!1033))))

(declare-fun getCurrentListMap!2711 (array!53316 array!53318 (_ BitVec 32) (_ BitVec 32) V!29823 V!29823 (_ BitVec 32) Int) ListLongMap!10917)

(assert (=> b!904976 (= lt!408384 (getCurrentListMap!2711 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!904977 () Bool)

(declare-fun e!507145 () Bool)

(assert (=> b!904977 (= e!507145 tp_is_empty!18643)))

(declare-fun res!610778 () Bool)

(assert (=> start!77668 (=> (not res!610778) (not e!507143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77668 (= res!610778 (validMask!0 mask!1756))))

(assert (=> start!77668 e!507143))

(declare-fun e!507146 () Bool)

(declare-fun array_inv!20046 (array!53318) Bool)

(assert (=> start!77668 (and (array_inv!20046 _values!1152) e!507146)))

(assert (=> start!77668 tp!56938))

(assert (=> start!77668 true))

(assert (=> start!77668 tp_is_empty!18643))

(declare-fun array_inv!20047 (array!53316) Bool)

(assert (=> start!77668 (array_inv!20047 _keys!1386)))

(declare-fun b!904978 () Bool)

(declare-fun res!610776 () Bool)

(assert (=> b!904978 (=> (not res!610776) (not e!507143))))

(assert (=> b!904978 (= res!610776 (and (= (size!26074 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26073 _keys!1386) (size!26074 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904979 () Bool)

(declare-fun e!507142 () Bool)

(assert (=> b!904979 (= e!507147 (not e!507142))))

(declare-fun res!610773 () Bool)

(assert (=> b!904979 (=> res!610773 e!507142)))

(assert (=> b!904979 (= res!610773 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26073 _keys!1386))))))

(declare-fun get!13469 (ValueCell!8840 V!29823) V!29823)

(declare-fun dynLambda!1327 (Int (_ BitVec 64)) V!29823)

(assert (=> b!904979 (= lt!408386 (get!13469 (select (arr!25614 _values!1152) i!717) (dynLambda!1327 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904979 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408385 () Unit!30675)

(declare-fun lemmaKeyInListMapIsInArray!200 (array!53316 array!53318 (_ BitVec 32) (_ BitVec 32) V!29823 V!29823 (_ BitVec 64) Int) Unit!30675)

(assert (=> b!904979 (= lt!408385 (lemmaKeyInListMapIsInArray!200 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904980 () Bool)

(assert (=> b!904980 (= e!507146 (and e!507145 mapRes!29677))))

(declare-fun condMapEmpty!29677 () Bool)

(declare-fun mapDefault!29677 () ValueCell!8840)

