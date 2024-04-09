; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20800 () Bool)

(assert start!20800)

(declare-fun b_free!5441 () Bool)

(declare-fun b_next!5441 () Bool)

(assert (=> start!20800 (= b_free!5441 (not b_next!5441))))

(declare-fun tp!19364 () Bool)

(declare-fun b_and!12205 () Bool)

(assert (=> start!20800 (= tp!19364 b_and!12205)))

(declare-fun b!208236 () Bool)

(declare-fun e!135850 () Bool)

(declare-datatypes ((array!9810 0))(
  ( (array!9811 (arr!4655 (Array (_ BitVec 32) (_ BitVec 64))) (size!4980 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9810)

(assert (=> b!208236 (= e!135850 (bvsgt #b00000000000000000000000000000000 (size!4980 _keys!825)))))

(declare-datatypes ((V!6717 0))(
  ( (V!6718 (val!2696 Int)) )
))
(declare-datatypes ((ValueCell!2308 0))(
  ( (ValueCellFull!2308 (v!4662 V!6717)) (EmptyCell!2308) )
))
(declare-datatypes ((array!9812 0))(
  ( (array!9813 (arr!4656 (Array (_ BitVec 32) ValueCell!2308)) (size!4981 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9812)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!6717)

(declare-datatypes ((tuple2!4082 0))(
  ( (tuple2!4083 (_1!2051 (_ BitVec 64)) (_2!2051 V!6717)) )
))
(declare-datatypes ((List!3002 0))(
  ( (Nil!2999) (Cons!2998 (h!3640 tuple2!4082) (t!7941 List!3002)) )
))
(declare-datatypes ((ListLongMap!3009 0))(
  ( (ListLongMap!3010 (toList!1520 List!3002)) )
))
(declare-fun lt!106777 () ListLongMap!3009)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6717)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6717)

(declare-fun getCurrentListMapNoExtraKeys!453 (array!9810 array!9812 (_ BitVec 32) (_ BitVec 32) V!6717 V!6717 (_ BitVec 32) Int) ListLongMap!3009)

(assert (=> b!208236 (= lt!106777 (getCurrentListMapNoExtraKeys!453 _keys!825 (array!9813 (store (arr!4656 _values!649) i!601 (ValueCellFull!2308 v!520)) (size!4981 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106776 () ListLongMap!3009)

(assert (=> b!208236 (= lt!106776 (getCurrentListMapNoExtraKeys!453 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208237 () Bool)

(declare-fun e!135848 () Bool)

(declare-fun tp_is_empty!5303 () Bool)

(assert (=> b!208237 (= e!135848 tp_is_empty!5303)))

(declare-fun b!208238 () Bool)

(declare-fun res!101281 () Bool)

(assert (=> b!208238 (=> (not res!101281) (not e!135850))))

(assert (=> b!208238 (= res!101281 (and (= (size!4981 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4980 _keys!825) (size!4981 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!101278 () Bool)

(assert (=> start!20800 (=> (not res!101278) (not e!135850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20800 (= res!101278 (validMask!0 mask!1149))))

(assert (=> start!20800 e!135850))

(declare-fun e!135846 () Bool)

(declare-fun array_inv!3077 (array!9812) Bool)

(assert (=> start!20800 (and (array_inv!3077 _values!649) e!135846)))

(assert (=> start!20800 true))

(assert (=> start!20800 tp_is_empty!5303))

(declare-fun array_inv!3078 (array!9810) Bool)

(assert (=> start!20800 (array_inv!3078 _keys!825)))

(assert (=> start!20800 tp!19364))

(declare-fun b!208239 () Bool)

(declare-fun res!101283 () Bool)

(assert (=> b!208239 (=> (not res!101283) (not e!135850))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208239 (= res!101283 (validKeyInArray!0 k!843))))

(declare-fun b!208240 () Bool)

(declare-fun res!101284 () Bool)

(assert (=> b!208240 (=> (not res!101284) (not e!135850))))

(declare-datatypes ((List!3003 0))(
  ( (Nil!3000) (Cons!2999 (h!3641 (_ BitVec 64)) (t!7942 List!3003)) )
))
(declare-fun arrayNoDuplicates!0 (array!9810 (_ BitVec 32) List!3003) Bool)

(assert (=> b!208240 (= res!101284 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3000))))

(declare-fun b!208241 () Bool)

(declare-fun e!135849 () Bool)

(declare-fun mapRes!9023 () Bool)

(assert (=> b!208241 (= e!135846 (and e!135849 mapRes!9023))))

(declare-fun condMapEmpty!9023 () Bool)

(declare-fun mapDefault!9023 () ValueCell!2308)

