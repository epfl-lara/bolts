; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78254 () Bool)

(assert start!78254)

(declare-fun b_free!16717 () Bool)

(declare-fun b_next!16717 () Bool)

(assert (=> start!78254 (= b_free!16717 (not b_next!16717))))

(declare-fun tp!58428 () Bool)

(declare-fun b_and!27311 () Bool)

(assert (=> start!78254 (= tp!58428 b_and!27311)))

(declare-fun b!912863 () Bool)

(declare-fun e!512066 () Bool)

(assert (=> b!912863 (= e!512066 (not true))))

(declare-datatypes ((array!54272 0))(
  ( (array!54273 (arr!26086 (Array (_ BitVec 32) (_ BitVec 64))) (size!26546 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54272)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912863 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((V!30479 0))(
  ( (V!30480 (val!9618 Int)) )
))
(declare-datatypes ((ValueCell!9086 0))(
  ( (ValueCellFull!9086 (v!12129 V!30479)) (EmptyCell!9086) )
))
(declare-datatypes ((array!54274 0))(
  ( (array!54275 (arr!26087 (Array (_ BitVec 32) ValueCell!9086)) (size!26547 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54274)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30479)

(declare-datatypes ((Unit!30877 0))(
  ( (Unit!30878) )
))
(declare-fun lt!410671 () Unit!30877)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30479)

(declare-fun lemmaKeyInListMapIsInArray!284 (array!54272 array!54274 (_ BitVec 32) (_ BitVec 32) V!30479 V!30479 (_ BitVec 64) Int) Unit!30877)

(assert (=> b!912863 (= lt!410671 (lemmaKeyInListMapIsInArray!284 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912864 () Bool)

(declare-fun res!615918 () Bool)

(assert (=> b!912864 (=> (not res!615918) (not e!512066))))

(declare-datatypes ((List!18430 0))(
  ( (Nil!18427) (Cons!18426 (h!19572 (_ BitVec 64)) (t!26027 List!18430)) )
))
(declare-fun arrayNoDuplicates!0 (array!54272 (_ BitVec 32) List!18430) Bool)

(assert (=> b!912864 (= res!615918 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18427))))

(declare-fun b!912866 () Bool)

(declare-fun e!512063 () Bool)

(declare-fun tp_is_empty!19135 () Bool)

(assert (=> b!912866 (= e!512063 tp_is_empty!19135)))

(declare-fun mapIsEmpty!30430 () Bool)

(declare-fun mapRes!30430 () Bool)

(assert (=> mapIsEmpty!30430 mapRes!30430))

(declare-fun b!912867 () Bool)

(declare-fun e!512064 () Bool)

(assert (=> b!912867 (= e!512064 tp_is_empty!19135)))

(declare-fun b!912868 () Bool)

(declare-fun res!615917 () Bool)

(assert (=> b!912868 (=> (not res!615917) (not e!512066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54272 (_ BitVec 32)) Bool)

(assert (=> b!912868 (= res!615917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912869 () Bool)

(declare-fun res!615913 () Bool)

(assert (=> b!912869 (=> (not res!615913) (not e!512066))))

(assert (=> b!912869 (= res!615913 (and (= (size!26547 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26546 _keys!1386) (size!26547 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30430 () Bool)

(declare-fun tp!58429 () Bool)

(assert (=> mapNonEmpty!30430 (= mapRes!30430 (and tp!58429 e!512064))))

(declare-fun mapValue!30430 () ValueCell!9086)

(declare-fun mapRest!30430 () (Array (_ BitVec 32) ValueCell!9086))

(declare-fun mapKey!30430 () (_ BitVec 32))

(assert (=> mapNonEmpty!30430 (= (arr!26087 _values!1152) (store mapRest!30430 mapKey!30430 mapValue!30430))))

(declare-fun b!912870 () Bool)

(declare-fun res!615915 () Bool)

(assert (=> b!912870 (=> (not res!615915) (not e!512066))))

(declare-datatypes ((tuple2!12590 0))(
  ( (tuple2!12591 (_1!6305 (_ BitVec 64)) (_2!6305 V!30479)) )
))
(declare-datatypes ((List!18431 0))(
  ( (Nil!18428) (Cons!18427 (h!19573 tuple2!12590) (t!26028 List!18431)) )
))
(declare-datatypes ((ListLongMap!11301 0))(
  ( (ListLongMap!11302 (toList!5666 List!18431)) )
))
(declare-fun contains!4677 (ListLongMap!11301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2896 (array!54272 array!54274 (_ BitVec 32) (_ BitVec 32) V!30479 V!30479 (_ BitVec 32) Int) ListLongMap!11301)

(assert (=> b!912870 (= res!615915 (contains!4677 (getCurrentListMap!2896 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912871 () Bool)

(declare-fun res!615919 () Bool)

(assert (=> b!912871 (=> (not res!615919) (not e!512066))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912871 (= res!615919 (inRange!0 i!717 mask!1756))))

(declare-fun b!912872 () Bool)

(declare-fun res!615916 () Bool)

(assert (=> b!912872 (=> (not res!615916) (not e!512066))))

(assert (=> b!912872 (= res!615916 (and (= (select (arr!26086 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!615914 () Bool)

(assert (=> start!78254 (=> (not res!615914) (not e!512066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78254 (= res!615914 (validMask!0 mask!1756))))

(assert (=> start!78254 e!512066))

(declare-fun e!512065 () Bool)

(declare-fun array_inv!20366 (array!54274) Bool)

(assert (=> start!78254 (and (array_inv!20366 _values!1152) e!512065)))

(assert (=> start!78254 tp!58428))

(assert (=> start!78254 true))

(assert (=> start!78254 tp_is_empty!19135))

(declare-fun array_inv!20367 (array!54272) Bool)

(assert (=> start!78254 (array_inv!20367 _keys!1386)))

(declare-fun b!912865 () Bool)

(assert (=> b!912865 (= e!512065 (and e!512063 mapRes!30430))))

(declare-fun condMapEmpty!30430 () Bool)

(declare-fun mapDefault!30430 () ValueCell!9086)

