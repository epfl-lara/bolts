; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20854 () Bool)

(assert start!20854)

(declare-fun b_free!5495 () Bool)

(declare-fun b_next!5495 () Bool)

(assert (=> start!20854 (= b_free!5495 (not b_next!5495))))

(declare-fun tp!19526 () Bool)

(declare-fun b_and!12259 () Bool)

(assert (=> start!20854 (= tp!19526 b_and!12259)))

(declare-fun mapIsEmpty!9104 () Bool)

(declare-fun mapRes!9104 () Bool)

(assert (=> mapIsEmpty!9104 mapRes!9104))

(declare-fun b!209046 () Bool)

(declare-fun e!136251 () Bool)

(assert (=> b!209046 (= e!136251 false)))

(declare-datatypes ((V!6789 0))(
  ( (V!6790 (val!2723 Int)) )
))
(declare-datatypes ((tuple2!4114 0))(
  ( (tuple2!4115 (_1!2067 (_ BitVec 64)) (_2!2067 V!6789)) )
))
(declare-datatypes ((List!3034 0))(
  ( (Nil!3031) (Cons!3030 (h!3672 tuple2!4114) (t!7973 List!3034)) )
))
(declare-datatypes ((ListLongMap!3041 0))(
  ( (ListLongMap!3042 (toList!1536 List!3034)) )
))
(declare-fun lt!106938 () ListLongMap!3041)

(declare-datatypes ((ValueCell!2335 0))(
  ( (ValueCellFull!2335 (v!4689 V!6789)) (EmptyCell!2335) )
))
(declare-datatypes ((array!9914 0))(
  ( (array!9915 (arr!4707 (Array (_ BitVec 32) ValueCell!2335)) (size!5032 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9914)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!6789)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6789)

(declare-datatypes ((array!9916 0))(
  ( (array!9917 (arr!4708 (Array (_ BitVec 32) (_ BitVec 64))) (size!5033 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9916)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6789)

(declare-fun getCurrentListMapNoExtraKeys!469 (array!9916 array!9914 (_ BitVec 32) (_ BitVec 32) V!6789 V!6789 (_ BitVec 32) Int) ListLongMap!3041)

(assert (=> b!209046 (= lt!106938 (getCurrentListMapNoExtraKeys!469 _keys!825 (array!9915 (store (arr!4707 _values!649) i!601 (ValueCellFull!2335 v!520)) (size!5032 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106939 () ListLongMap!3041)

(assert (=> b!209046 (= lt!106939 (getCurrentListMapNoExtraKeys!469 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209047 () Bool)

(declare-fun e!136253 () Bool)

(declare-fun tp_is_empty!5357 () Bool)

(assert (=> b!209047 (= e!136253 tp_is_empty!5357)))

(declare-fun b!209048 () Bool)

(declare-fun e!136252 () Bool)

(assert (=> b!209048 (= e!136252 (and e!136253 mapRes!9104))))

(declare-fun condMapEmpty!9104 () Bool)

(declare-fun mapDefault!9104 () ValueCell!2335)

