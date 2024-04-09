; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40696 () Bool)

(assert start!40696)

(declare-fun b_free!10699 () Bool)

(declare-fun b_next!10699 () Bool)

(assert (=> start!40696 (= b_free!10699 (not b_next!10699))))

(declare-fun tp!37916 () Bool)

(declare-fun b_and!18725 () Bool)

(assert (=> start!40696 (= tp!37916 b_and!18725)))

(declare-fun b!449708 () Bool)

(declare-fun res!267662 () Bool)

(declare-fun e!263610 () Bool)

(assert (=> b!449708 (=> (not res!267662) (not e!263610))))

(declare-datatypes ((array!27841 0))(
  ( (array!27842 (arr!13363 (Array (_ BitVec 32) (_ BitVec 64))) (size!13715 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27841)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449708 (= res!267662 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449709 () Bool)

(declare-fun e!263608 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!449709 (= e!263608 (not (bvslt from!863 (size!13715 _keys!709))))))

(declare-fun e!263606 () Bool)

(assert (=> b!449709 e!263606))

(declare-fun c!55880 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449709 (= c!55880 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!17155 0))(
  ( (V!17156 (val!6063 Int)) )
))
(declare-fun minValue!515 () V!17155)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!13113 0))(
  ( (Unit!13114) )
))
(declare-fun lt!204423 () Unit!13113)

(declare-datatypes ((ValueCell!5675 0))(
  ( (ValueCellFull!5675 (v!8314 V!17155)) (EmptyCell!5675) )
))
(declare-datatypes ((array!27843 0))(
  ( (array!27844 (arr!13364 (Array (_ BitVec 32) ValueCell!5675)) (size!13716 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27843)

(declare-fun zeroValue!515 () V!17155)

(declare-fun v!412 () V!17155)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!675 (array!27841 array!27843 (_ BitVec 32) (_ BitVec 32) V!17155 V!17155 (_ BitVec 32) (_ BitVec 64) V!17155 (_ BitVec 32) Int) Unit!13113)

(assert (=> b!449709 (= lt!204423 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!675 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!449710 () Bool)

(declare-fun e!263611 () Bool)

(declare-fun tp_is_empty!12037 () Bool)

(assert (=> b!449710 (= e!263611 tp_is_empty!12037)))

(declare-fun b!449711 () Bool)

(declare-fun res!267667 () Bool)

(assert (=> b!449711 (=> (not res!267667) (not e!263610))))

(assert (=> b!449711 (= res!267667 (and (= (size!13716 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13715 _keys!709) (size!13716 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449712 () Bool)

(declare-fun res!267659 () Bool)

(assert (=> b!449712 (=> (not res!267659) (not e!263610))))

(declare-datatypes ((List!8011 0))(
  ( (Nil!8008) (Cons!8007 (h!8863 (_ BitVec 64)) (t!13781 List!8011)) )
))
(declare-fun arrayNoDuplicates!0 (array!27841 (_ BitVec 32) List!8011) Bool)

(assert (=> b!449712 (= res!267659 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8008))))

(declare-fun b!449713 () Bool)

(declare-fun e!263607 () Bool)

(assert (=> b!449713 (= e!263607 e!263608)))

(declare-fun res!267663 () Bool)

(assert (=> b!449713 (=> (not res!267663) (not e!263608))))

(assert (=> b!449713 (= res!267663 (= from!863 i!563))))

(declare-fun lt!204424 () array!27843)

(declare-fun lt!204426 () array!27841)

(declare-datatypes ((tuple2!7900 0))(
  ( (tuple2!7901 (_1!3960 (_ BitVec 64)) (_2!3960 V!17155)) )
))
(declare-datatypes ((List!8012 0))(
  ( (Nil!8009) (Cons!8008 (h!8864 tuple2!7900) (t!13782 List!8012)) )
))
(declare-datatypes ((ListLongMap!6827 0))(
  ( (ListLongMap!6828 (toList!3429 List!8012)) )
))
(declare-fun lt!204425 () ListLongMap!6827)

(declare-fun getCurrentListMapNoExtraKeys!1609 (array!27841 array!27843 (_ BitVec 32) (_ BitVec 32) V!17155 V!17155 (_ BitVec 32) Int) ListLongMap!6827)

(assert (=> b!449713 (= lt!204425 (getCurrentListMapNoExtraKeys!1609 lt!204426 lt!204424 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!449713 (= lt!204424 (array!27844 (store (arr!13364 _values!549) i!563 (ValueCellFull!5675 v!412)) (size!13716 _values!549)))))

(declare-fun lt!204427 () ListLongMap!6827)

(assert (=> b!449713 (= lt!204427 (getCurrentListMapNoExtraKeys!1609 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449714 () Bool)

(declare-fun res!267665 () Bool)

(assert (=> b!449714 (=> (not res!267665) (not e!263610))))

(assert (=> b!449714 (= res!267665 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13715 _keys!709))))))

(declare-fun res!267669 () Bool)

(assert (=> start!40696 (=> (not res!267669) (not e!263610))))

(assert (=> start!40696 (= res!267669 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13715 _keys!709))))))

(assert (=> start!40696 e!263610))

(assert (=> start!40696 tp_is_empty!12037))

(assert (=> start!40696 tp!37916))

(assert (=> start!40696 true))

(declare-fun e!263612 () Bool)

(declare-fun array_inv!9672 (array!27843) Bool)

(assert (=> start!40696 (and (array_inv!9672 _values!549) e!263612)))

(declare-fun array_inv!9673 (array!27841) Bool)

(assert (=> start!40696 (array_inv!9673 _keys!709)))

(declare-fun b!449715 () Bool)

(assert (=> b!449715 (= e!263610 e!263607)))

(declare-fun res!267660 () Bool)

(assert (=> b!449715 (=> (not res!267660) (not e!263607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27841 (_ BitVec 32)) Bool)

(assert (=> b!449715 (= res!267660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204426 mask!1025))))

(assert (=> b!449715 (= lt!204426 (array!27842 (store (arr!13363 _keys!709) i!563 k!794) (size!13715 _keys!709)))))

(declare-fun b!449716 () Bool)

(declare-fun res!267664 () Bool)

(assert (=> b!449716 (=> (not res!267664) (not e!263610))))

(assert (=> b!449716 (= res!267664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19689 () Bool)

(declare-fun mapRes!19689 () Bool)

(declare-fun tp!37917 () Bool)

(assert (=> mapNonEmpty!19689 (= mapRes!19689 (and tp!37917 e!263611))))

(declare-fun mapKey!19689 () (_ BitVec 32))

(declare-fun mapRest!19689 () (Array (_ BitVec 32) ValueCell!5675))

(declare-fun mapValue!19689 () ValueCell!5675)

(assert (=> mapNonEmpty!19689 (= (arr!13364 _values!549) (store mapRest!19689 mapKey!19689 mapValue!19689))))

(declare-fun b!449717 () Bool)

(declare-fun e!263613 () Bool)

(assert (=> b!449717 (= e!263612 (and e!263613 mapRes!19689))))

(declare-fun condMapEmpty!19689 () Bool)

(declare-fun mapDefault!19689 () ValueCell!5675)

