; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35456 () Bool)

(assert start!35456)

(declare-fun b_free!7835 () Bool)

(declare-fun b_next!7835 () Bool)

(assert (=> start!35456 (= b_free!7835 (not b_next!7835))))

(declare-fun tp!27291 () Bool)

(declare-fun b_and!15095 () Bool)

(assert (=> start!35456 (= tp!27291 b_and!15095)))

(declare-fun res!196835 () Bool)

(declare-fun e!217444 () Bool)

(assert (=> start!35456 (=> (not res!196835) (not e!217444))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35456 (= res!196835 (validMask!0 mask!1842))))

(assert (=> start!35456 e!217444))

(declare-fun tp_is_empty!7901 () Bool)

(assert (=> start!35456 tp_is_empty!7901))

(assert (=> start!35456 true))

(assert (=> start!35456 tp!27291))

(declare-datatypes ((array!19349 0))(
  ( (array!19350 (arr!9165 (Array (_ BitVec 32) (_ BitVec 64))) (size!9517 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19349)

(declare-fun array_inv!6746 (array!19349) Bool)

(assert (=> start!35456 (array_inv!6746 _keys!1456)))

(declare-datatypes ((V!11511 0))(
  ( (V!11512 (val!3995 Int)) )
))
(declare-datatypes ((ValueCell!3607 0))(
  ( (ValueCellFull!3607 (v!6185 V!11511)) (EmptyCell!3607) )
))
(declare-datatypes ((array!19351 0))(
  ( (array!19352 (arr!9166 (Array (_ BitVec 32) ValueCell!3607)) (size!9518 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19351)

(declare-fun e!217441 () Bool)

(declare-fun array_inv!6747 (array!19351) Bool)

(assert (=> start!35456 (and (array_inv!6747 _values!1208) e!217441)))

(declare-fun b!354825 () Bool)

(declare-fun res!196832 () Bool)

(assert (=> b!354825 (=> (not res!196832) (not e!217444))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354825 (= res!196832 (validKeyInArray!0 k!1077))))

(declare-fun b!354826 () Bool)

(assert (=> b!354826 (= e!217444 (not true))))

(declare-fun minValue!1150 () V!11511)

(declare-fun defaultEntry!1216 () Int)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11511)

(declare-datatypes ((tuple2!5672 0))(
  ( (tuple2!5673 (_1!2846 (_ BitVec 64)) (_2!2846 V!11511)) )
))
(declare-datatypes ((List!5337 0))(
  ( (Nil!5334) (Cons!5333 (h!6189 tuple2!5672) (t!10495 List!5337)) )
))
(declare-datatypes ((ListLongMap!4599 0))(
  ( (ListLongMap!4600 (toList!2315 List!5337)) )
))
(declare-fun contains!2391 (ListLongMap!4599 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1832 (array!19349 array!19351 (_ BitVec 32) (_ BitVec 32) V!11511 V!11511 (_ BitVec 32) Int) ListLongMap!4599)

(assert (=> b!354826 (contains!2391 (getCurrentListMap!1832 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9165 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10939 0))(
  ( (Unit!10940) )
))
(declare-fun lt!165727 () Unit!10939)

(declare-fun lemmaValidKeyInArrayIsInListMap!182 (array!19349 array!19351 (_ BitVec 32) (_ BitVec 32) V!11511 V!11511 (_ BitVec 32) Int) Unit!10939)

(assert (=> b!354826 (= lt!165727 (lemmaValidKeyInArrayIsInListMap!182 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!354827 () Bool)

(declare-fun res!196834 () Bool)

(assert (=> b!354827 (=> (not res!196834) (not e!217444))))

(declare-datatypes ((List!5338 0))(
  ( (Nil!5335) (Cons!5334 (h!6190 (_ BitVec 64)) (t!10496 List!5338)) )
))
(declare-fun arrayNoDuplicates!0 (array!19349 (_ BitVec 32) List!5338) Bool)

(assert (=> b!354827 (= res!196834 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5335))))

(declare-fun b!354828 () Bool)

(declare-fun res!196837 () Bool)

(assert (=> b!354828 (=> (not res!196837) (not e!217444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19349 (_ BitVec 32)) Bool)

(assert (=> b!354828 (= res!196837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13359 () Bool)

(declare-fun mapRes!13359 () Bool)

(assert (=> mapIsEmpty!13359 mapRes!13359))

(declare-fun b!354829 () Bool)

(declare-fun e!217445 () Bool)

(assert (=> b!354829 (= e!217441 (and e!217445 mapRes!13359))))

(declare-fun condMapEmpty!13359 () Bool)

(declare-fun mapDefault!13359 () ValueCell!3607)

