; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20158 () Bool)

(assert start!20158)

(declare-fun b_free!4805 () Bool)

(declare-fun b_next!4805 () Bool)

(assert (=> start!20158 (= b_free!4805 (not b_next!4805))))

(declare-fun tp!17447 () Bool)

(declare-fun b_and!11569 () Bool)

(assert (=> start!20158 (= tp!17447 b_and!11569)))

(declare-fun b!197580 () Bool)

(declare-fun res!93513 () Bool)

(declare-fun e!129999 () Bool)

(assert (=> b!197580 (=> (not res!93513) (not e!129999))))

(declare-datatypes ((array!8574 0))(
  ( (array!8575 (arr!4037 (Array (_ BitVec 32) (_ BitVec 64))) (size!4362 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8574)

(declare-datatypes ((List!2540 0))(
  ( (Nil!2537) (Cons!2536 (h!3178 (_ BitVec 64)) (t!7479 List!2540)) )
))
(declare-fun arrayNoDuplicates!0 (array!8574 (_ BitVec 32) List!2540) Bool)

(assert (=> b!197580 (= res!93513 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2537))))

(declare-fun b!197581 () Bool)

(declare-fun e!129998 () Bool)

(declare-fun tp_is_empty!4661 () Bool)

(assert (=> b!197581 (= e!129998 tp_is_empty!4661)))

(declare-fun b!197582 () Bool)

(declare-fun res!93514 () Bool)

(assert (=> b!197582 (=> (not res!93514) (not e!129999))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5861 0))(
  ( (V!5862 (val!2375 Int)) )
))
(declare-datatypes ((ValueCell!1987 0))(
  ( (ValueCellFull!1987 (v!4341 V!5861)) (EmptyCell!1987) )
))
(declare-datatypes ((array!8576 0))(
  ( (array!8577 (arr!4038 (Array (_ BitVec 32) ValueCell!1987)) (size!4363 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8576)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!197582 (= res!93514 (and (= (size!4363 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4362 _keys!825) (size!4363 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197583 () Bool)

(assert (=> b!197583 (= e!129999 false)))

(declare-datatypes ((tuple2!3602 0))(
  ( (tuple2!3603 (_1!1811 (_ BitVec 64)) (_2!1811 V!5861)) )
))
(declare-datatypes ((List!2541 0))(
  ( (Nil!2538) (Cons!2537 (h!3179 tuple2!3602) (t!7480 List!2541)) )
))
(declare-datatypes ((ListLongMap!2529 0))(
  ( (ListLongMap!2530 (toList!1280 List!2541)) )
))
(declare-fun lt!97776 () ListLongMap!2529)

(declare-fun v!520 () V!5861)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5861)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5861)

(declare-fun getCurrentListMapNoExtraKeys!237 (array!8574 array!8576 (_ BitVec 32) (_ BitVec 32) V!5861 V!5861 (_ BitVec 32) Int) ListLongMap!2529)

(assert (=> b!197583 (= lt!97776 (getCurrentListMapNoExtraKeys!237 _keys!825 (array!8577 (store (arr!4038 _values!649) i!601 (ValueCellFull!1987 v!520)) (size!4363 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97777 () ListLongMap!2529)

(assert (=> b!197583 (= lt!97777 (getCurrentListMapNoExtraKeys!237 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197584 () Bool)

(declare-fun res!93511 () Bool)

(assert (=> b!197584 (=> (not res!93511) (not e!129999))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197584 (= res!93511 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8060 () Bool)

(declare-fun mapRes!8060 () Bool)

(declare-fun tp!17446 () Bool)

(declare-fun e!130000 () Bool)

(assert (=> mapNonEmpty!8060 (= mapRes!8060 (and tp!17446 e!130000))))

(declare-fun mapKey!8060 () (_ BitVec 32))

(declare-fun mapRest!8060 () (Array (_ BitVec 32) ValueCell!1987))

(declare-fun mapValue!8060 () ValueCell!1987)

(assert (=> mapNonEmpty!8060 (= (arr!4038 _values!649) (store mapRest!8060 mapKey!8060 mapValue!8060))))

(declare-fun res!93515 () Bool)

(assert (=> start!20158 (=> (not res!93515) (not e!129999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20158 (= res!93515 (validMask!0 mask!1149))))

(assert (=> start!20158 e!129999))

(declare-fun e!129997 () Bool)

(declare-fun array_inv!2625 (array!8576) Bool)

(assert (=> start!20158 (and (array_inv!2625 _values!649) e!129997)))

(assert (=> start!20158 true))

(assert (=> start!20158 tp_is_empty!4661))

(declare-fun array_inv!2626 (array!8574) Bool)

(assert (=> start!20158 (array_inv!2626 _keys!825)))

(assert (=> start!20158 tp!17447))

(declare-fun b!197585 () Bool)

(declare-fun res!93517 () Bool)

(assert (=> b!197585 (=> (not res!93517) (not e!129999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8574 (_ BitVec 32)) Bool)

(assert (=> b!197585 (= res!93517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197586 () Bool)

(assert (=> b!197586 (= e!129997 (and e!129998 mapRes!8060))))

(declare-fun condMapEmpty!8060 () Bool)

(declare-fun mapDefault!8060 () ValueCell!1987)

