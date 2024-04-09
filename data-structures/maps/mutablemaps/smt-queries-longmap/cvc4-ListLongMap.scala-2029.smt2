; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35330 () Bool)

(assert start!35330)

(declare-fun b!353607 () Bool)

(declare-fun res!196110 () Bool)

(declare-fun e!216621 () Bool)

(assert (=> b!353607 (=> (not res!196110) (not e!216621))))

(declare-datatypes ((List!5297 0))(
  ( (Nil!5294) (Cons!5293 (h!6149 (_ BitVec 64)) (t!10455 List!5297)) )
))
(declare-fun noDuplicate!179 (List!5297) Bool)

(assert (=> b!353607 (= res!196110 (noDuplicate!179 Nil!5294))))

(declare-fun mapIsEmpty!13200 () Bool)

(declare-fun mapRes!13200 () Bool)

(assert (=> mapIsEmpty!13200 mapRes!13200))

(declare-fun b!353608 () Bool)

(declare-fun res!196108 () Bool)

(assert (=> b!353608 (=> (not res!196108) (not e!216621))))

(declare-datatypes ((array!19153 0))(
  ( (array!19154 (arr!9069 (Array (_ BitVec 32) (_ BitVec 64))) (size!9421 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19153)

(assert (=> b!353608 (= res!196108 (and (bvsle #b00000000000000000000000000000000 (size!9421 _keys!1456)) (bvslt (size!9421 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun res!196112 () Bool)

(assert (=> start!35330 (=> (not res!196112) (not e!216621))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35330 (= res!196112 (validMask!0 mask!1842))))

(assert (=> start!35330 e!216621))

(assert (=> start!35330 true))

(declare-datatypes ((V!11375 0))(
  ( (V!11376 (val!3944 Int)) )
))
(declare-datatypes ((ValueCell!3556 0))(
  ( (ValueCellFull!3556 (v!6133 V!11375)) (EmptyCell!3556) )
))
(declare-datatypes ((array!19155 0))(
  ( (array!19156 (arr!9070 (Array (_ BitVec 32) ValueCell!3556)) (size!9422 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19155)

(declare-fun e!216622 () Bool)

(declare-fun array_inv!6676 (array!19155) Bool)

(assert (=> start!35330 (and (array_inv!6676 _values!1208) e!216622)))

(declare-fun array_inv!6677 (array!19153) Bool)

(assert (=> start!35330 (array_inv!6677 _keys!1456)))

(declare-fun b!353609 () Bool)

(declare-fun res!196107 () Bool)

(assert (=> b!353609 (=> (not res!196107) (not e!216621))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353609 (= res!196107 (and (= (size!9422 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9421 _keys!1456) (size!9422 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353610 () Bool)

(declare-fun e!216624 () Bool)

(declare-fun contains!2382 (List!5297 (_ BitVec 64)) Bool)

(assert (=> b!353610 (= e!216624 (contains!2382 Nil!5294 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!353611 () Bool)

(declare-fun e!216619 () Bool)

(declare-fun tp_is_empty!7799 () Bool)

(assert (=> b!353611 (= e!216619 tp_is_empty!7799)))

(declare-fun b!353612 () Bool)

(assert (=> b!353612 (= e!216621 e!216624)))

(declare-fun res!196111 () Bool)

(assert (=> b!353612 (=> res!196111 e!216624)))

(assert (=> b!353612 (= res!196111 (contains!2382 Nil!5294 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!353613 () Bool)

(declare-fun e!216623 () Bool)

(assert (=> b!353613 (= e!216623 tp_is_empty!7799)))

(declare-fun mapNonEmpty!13200 () Bool)

(declare-fun tp!27096 () Bool)

(assert (=> mapNonEmpty!13200 (= mapRes!13200 (and tp!27096 e!216619))))

(declare-fun mapValue!13200 () ValueCell!3556)

(declare-fun mapRest!13200 () (Array (_ BitVec 32) ValueCell!3556))

(declare-fun mapKey!13200 () (_ BitVec 32))

(assert (=> mapNonEmpty!13200 (= (arr!9070 _values!1208) (store mapRest!13200 mapKey!13200 mapValue!13200))))

(declare-fun b!353614 () Bool)

(assert (=> b!353614 (= e!216622 (and e!216623 mapRes!13200))))

(declare-fun condMapEmpty!13200 () Bool)

(declare-fun mapDefault!13200 () ValueCell!3556)

