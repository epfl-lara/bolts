; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20698 () Bool)

(assert start!20698)

(declare-fun b_free!5345 () Bool)

(declare-fun b_next!5345 () Bool)

(assert (=> start!20698 (= b_free!5345 (not b_next!5345))))

(declare-fun tp!19066 () Bool)

(declare-fun b_and!12109 () Bool)

(assert (=> start!20698 (= tp!19066 b_and!12109)))

(declare-fun mapNonEmpty!8870 () Bool)

(declare-fun mapRes!8870 () Bool)

(declare-fun tp!19067 () Bool)

(declare-fun e!135082 () Bool)

(assert (=> mapNonEmpty!8870 (= mapRes!8870 (and tp!19067 e!135082))))

(declare-datatypes ((V!6581 0))(
  ( (V!6582 (val!2645 Int)) )
))
(declare-datatypes ((ValueCell!2257 0))(
  ( (ValueCellFull!2257 (v!4611 V!6581)) (EmptyCell!2257) )
))
(declare-datatypes ((array!9610 0))(
  ( (array!9611 (arr!4555 (Array (_ BitVec 32) ValueCell!2257)) (size!4880 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9610)

(declare-fun mapRest!8870 () (Array (_ BitVec 32) ValueCell!2257))

(declare-fun mapValue!8870 () ValueCell!2257)

(declare-fun mapKey!8870 () (_ BitVec 32))

(assert (=> mapNonEmpty!8870 (= (arr!4555 _values!649) (store mapRest!8870 mapKey!8870 mapValue!8870))))

(declare-fun b!206742 () Bool)

(declare-fun tp_is_empty!5201 () Bool)

(assert (=> b!206742 (= e!135082 tp_is_empty!5201)))

(declare-fun res!100244 () Bool)

(declare-fun e!135081 () Bool)

(assert (=> start!20698 (=> (not res!100244) (not e!135081))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20698 (= res!100244 (validMask!0 mask!1149))))

(assert (=> start!20698 e!135081))

(declare-fun e!135083 () Bool)

(declare-fun array_inv!3003 (array!9610) Bool)

(assert (=> start!20698 (and (array_inv!3003 _values!649) e!135083)))

(assert (=> start!20698 true))

(assert (=> start!20698 tp_is_empty!5201))

(declare-datatypes ((array!9612 0))(
  ( (array!9613 (arr!4556 (Array (_ BitVec 32) (_ BitVec 64))) (size!4881 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9612)

(declare-fun array_inv!3004 (array!9612) Bool)

(assert (=> start!20698 (array_inv!3004 _keys!825)))

(assert (=> start!20698 tp!19066))

(declare-fun b!206743 () Bool)

(declare-fun res!100245 () Bool)

(assert (=> b!206743 (=> (not res!100245) (not e!135081))))

(declare-fun i!601 () (_ BitVec 32))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!206743 (= res!100245 (= (select (arr!4556 _keys!825) i!601) k!843))))

(declare-fun b!206744 () Bool)

(assert (=> b!206744 (= e!135081 (not true))))

(declare-fun zeroValue!615 () V!6581)

(declare-datatypes ((tuple2!4012 0))(
  ( (tuple2!4013 (_1!2016 (_ BitVec 64)) (_2!2016 V!6581)) )
))
(declare-datatypes ((List!2927 0))(
  ( (Nil!2924) (Cons!2923 (h!3565 tuple2!4012) (t!7866 List!2927)) )
))
(declare-datatypes ((ListLongMap!2939 0))(
  ( (ListLongMap!2940 (toList!1485 List!2927)) )
))
(declare-fun lt!105839 () ListLongMap!2939)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6581)

(declare-fun getCurrentListMap!1047 (array!9612 array!9610 (_ BitVec 32) (_ BitVec 32) V!6581 V!6581 (_ BitVec 32) Int) ListLongMap!2939)

(assert (=> b!206744 (= lt!105839 (getCurrentListMap!1047 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105840 () ListLongMap!2939)

(declare-fun lt!105841 () array!9610)

(assert (=> b!206744 (= lt!105840 (getCurrentListMap!1047 _keys!825 lt!105841 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105835 () ListLongMap!2939)

(declare-fun lt!105837 () ListLongMap!2939)

(assert (=> b!206744 (and (= lt!105835 lt!105837) (= lt!105837 lt!105835))))

(declare-fun lt!105838 () ListLongMap!2939)

(declare-fun v!520 () V!6581)

(declare-fun +!502 (ListLongMap!2939 tuple2!4012) ListLongMap!2939)

(assert (=> b!206744 (= lt!105837 (+!502 lt!105838 (tuple2!4013 k!843 v!520)))))

(declare-datatypes ((Unit!6299 0))(
  ( (Unit!6300) )
))
(declare-fun lt!105836 () Unit!6299)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!160 (array!9612 array!9610 (_ BitVec 32) (_ BitVec 32) V!6581 V!6581 (_ BitVec 32) (_ BitVec 64) V!6581 (_ BitVec 32) Int) Unit!6299)

(assert (=> b!206744 (= lt!105836 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!160 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!418 (array!9612 array!9610 (_ BitVec 32) (_ BitVec 32) V!6581 V!6581 (_ BitVec 32) Int) ListLongMap!2939)

(assert (=> b!206744 (= lt!105835 (getCurrentListMapNoExtraKeys!418 _keys!825 lt!105841 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206744 (= lt!105841 (array!9611 (store (arr!4555 _values!649) i!601 (ValueCellFull!2257 v!520)) (size!4880 _values!649)))))

(assert (=> b!206744 (= lt!105838 (getCurrentListMapNoExtraKeys!418 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206745 () Bool)

(declare-fun e!135085 () Bool)

(assert (=> b!206745 (= e!135083 (and e!135085 mapRes!8870))))

(declare-fun condMapEmpty!8870 () Bool)

(declare-fun mapDefault!8870 () ValueCell!2257)

