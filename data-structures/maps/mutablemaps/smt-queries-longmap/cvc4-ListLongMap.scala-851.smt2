; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20218 () Bool)

(assert start!20218)

(declare-fun b_free!4865 () Bool)

(declare-fun b_next!4865 () Bool)

(assert (=> start!20218 (= b_free!4865 (not b_next!4865))))

(declare-fun tp!17627 () Bool)

(declare-fun b_and!11629 () Bool)

(assert (=> start!20218 (= tp!17627 b_and!11629)))

(declare-fun b!198480 () Bool)

(declare-fun e!130450 () Bool)

(assert (=> b!198480 (= e!130450 false)))

(declare-datatypes ((V!5941 0))(
  ( (V!5942 (val!2405 Int)) )
))
(declare-datatypes ((tuple2!3644 0))(
  ( (tuple2!3645 (_1!1832 (_ BitVec 64)) (_2!1832 V!5941)) )
))
(declare-datatypes ((List!2582 0))(
  ( (Nil!2579) (Cons!2578 (h!3220 tuple2!3644) (t!7521 List!2582)) )
))
(declare-datatypes ((ListLongMap!2571 0))(
  ( (ListLongMap!2572 (toList!1301 List!2582)) )
))
(declare-fun lt!97956 () ListLongMap!2571)

(declare-datatypes ((ValueCell!2017 0))(
  ( (ValueCellFull!2017 (v!4371 V!5941)) (EmptyCell!2017) )
))
(declare-datatypes ((array!8690 0))(
  ( (array!8691 (arr!4095 (Array (_ BitVec 32) ValueCell!2017)) (size!4420 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8690)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!5941)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5941)

(declare-datatypes ((array!8692 0))(
  ( (array!8693 (arr!4096 (Array (_ BitVec 32) (_ BitVec 64))) (size!4421 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8692)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5941)

(declare-fun getCurrentListMapNoExtraKeys!258 (array!8692 array!8690 (_ BitVec 32) (_ BitVec 32) V!5941 V!5941 (_ BitVec 32) Int) ListLongMap!2571)

(assert (=> b!198480 (= lt!97956 (getCurrentListMapNoExtraKeys!258 _keys!825 (array!8691 (store (arr!4095 _values!649) i!601 (ValueCellFull!2017 v!520)) (size!4420 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97957 () ListLongMap!2571)

(assert (=> b!198480 (= lt!97957 (getCurrentListMapNoExtraKeys!258 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198481 () Bool)

(declare-fun e!130449 () Bool)

(declare-fun tp_is_empty!4721 () Bool)

(assert (=> b!198481 (= e!130449 tp_is_empty!4721)))

(declare-fun b!198482 () Bool)

(declare-fun res!94145 () Bool)

(assert (=> b!198482 (=> (not res!94145) (not e!130450))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!198482 (= res!94145 (= (select (arr!4096 _keys!825) i!601) k!843))))

(declare-fun b!198483 () Bool)

(declare-fun e!130447 () Bool)

(assert (=> b!198483 (= e!130447 tp_is_empty!4721)))

(declare-fun b!198484 () Bool)

(declare-fun res!94143 () Bool)

(assert (=> b!198484 (=> (not res!94143) (not e!130450))))

(assert (=> b!198484 (= res!94143 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4421 _keys!825))))))

(declare-fun b!198485 () Bool)

(declare-fun res!94144 () Bool)

(assert (=> b!198485 (=> (not res!94144) (not e!130450))))

(declare-datatypes ((List!2583 0))(
  ( (Nil!2580) (Cons!2579 (h!3221 (_ BitVec 64)) (t!7522 List!2583)) )
))
(declare-fun arrayNoDuplicates!0 (array!8692 (_ BitVec 32) List!2583) Bool)

(assert (=> b!198485 (= res!94144 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2580))))

(declare-fun mapNonEmpty!8150 () Bool)

(declare-fun mapRes!8150 () Bool)

(declare-fun tp!17626 () Bool)

(assert (=> mapNonEmpty!8150 (= mapRes!8150 (and tp!17626 e!130447))))

(declare-fun mapKey!8150 () (_ BitVec 32))

(declare-fun mapRest!8150 () (Array (_ BitVec 32) ValueCell!2017))

(declare-fun mapValue!8150 () ValueCell!2017)

(assert (=> mapNonEmpty!8150 (= (arr!4095 _values!649) (store mapRest!8150 mapKey!8150 mapValue!8150))))

(declare-fun b!198486 () Bool)

(declare-fun res!94141 () Bool)

(assert (=> b!198486 (=> (not res!94141) (not e!130450))))

(assert (=> b!198486 (= res!94141 (and (= (size!4420 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4421 _keys!825) (size!4420 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198488 () Bool)

(declare-fun res!94146 () Bool)

(assert (=> b!198488 (=> (not res!94146) (not e!130450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198488 (= res!94146 (validKeyInArray!0 k!843))))

(declare-fun b!198489 () Bool)

(declare-fun res!94142 () Bool)

(assert (=> b!198489 (=> (not res!94142) (not e!130450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8692 (_ BitVec 32)) Bool)

(assert (=> b!198489 (= res!94142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8150 () Bool)

(assert (=> mapIsEmpty!8150 mapRes!8150))

(declare-fun res!94147 () Bool)

(assert (=> start!20218 (=> (not res!94147) (not e!130450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20218 (= res!94147 (validMask!0 mask!1149))))

(assert (=> start!20218 e!130450))

(declare-fun e!130446 () Bool)

(declare-fun array_inv!2673 (array!8690) Bool)

(assert (=> start!20218 (and (array_inv!2673 _values!649) e!130446)))

(assert (=> start!20218 true))

(assert (=> start!20218 tp_is_empty!4721))

(declare-fun array_inv!2674 (array!8692) Bool)

(assert (=> start!20218 (array_inv!2674 _keys!825)))

(assert (=> start!20218 tp!17627))

(declare-fun b!198487 () Bool)

(assert (=> b!198487 (= e!130446 (and e!130449 mapRes!8150))))

(declare-fun condMapEmpty!8150 () Bool)

(declare-fun mapDefault!8150 () ValueCell!2017)

