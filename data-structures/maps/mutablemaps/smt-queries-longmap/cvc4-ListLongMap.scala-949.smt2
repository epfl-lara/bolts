; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20806 () Bool)

(assert start!20806)

(declare-fun b_free!5447 () Bool)

(declare-fun b_next!5447 () Bool)

(assert (=> start!20806 (= b_free!5447 (not b_next!5447))))

(declare-fun tp!19382 () Bool)

(declare-fun b_and!12211 () Bool)

(assert (=> start!20806 (= tp!19382 b_and!12211)))

(declare-fun b!208326 () Bool)

(declare-fun e!135892 () Bool)

(assert (=> b!208326 (= e!135892 false)))

(declare-datatypes ((V!6725 0))(
  ( (V!6726 (val!2699 Int)) )
))
(declare-datatypes ((tuple2!4086 0))(
  ( (tuple2!4087 (_1!2053 (_ BitVec 64)) (_2!2053 V!6725)) )
))
(declare-datatypes ((List!3006 0))(
  ( (Nil!3003) (Cons!3002 (h!3644 tuple2!4086) (t!7945 List!3006)) )
))
(declare-datatypes ((ListLongMap!3013 0))(
  ( (ListLongMap!3014 (toList!1522 List!3006)) )
))
(declare-fun lt!106795 () ListLongMap!3013)

(declare-datatypes ((ValueCell!2311 0))(
  ( (ValueCellFull!2311 (v!4665 V!6725)) (EmptyCell!2311) )
))
(declare-datatypes ((array!9820 0))(
  ( (array!9821 (arr!4660 (Array (_ BitVec 32) ValueCell!2311)) (size!4985 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9820)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!6725)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6725)

(declare-datatypes ((array!9822 0))(
  ( (array!9823 (arr!4661 (Array (_ BitVec 32) (_ BitVec 64))) (size!4986 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9822)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6725)

(declare-fun getCurrentListMapNoExtraKeys!455 (array!9822 array!9820 (_ BitVec 32) (_ BitVec 32) V!6725 V!6725 (_ BitVec 32) Int) ListLongMap!3013)

(assert (=> b!208326 (= lt!106795 (getCurrentListMapNoExtraKeys!455 _keys!825 (array!9821 (store (arr!4660 _values!649) i!601 (ValueCellFull!2311 v!520)) (size!4985 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106794 () ListLongMap!3013)

(assert (=> b!208326 (= lt!106794 (getCurrentListMapNoExtraKeys!455 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!9032 () Bool)

(declare-fun mapRes!9032 () Bool)

(declare-fun tp!19381 () Bool)

(declare-fun e!135893 () Bool)

(assert (=> mapNonEmpty!9032 (= mapRes!9032 (and tp!19381 e!135893))))

(declare-fun mapValue!9032 () ValueCell!2311)

(declare-fun mapKey!9032 () (_ BitVec 32))

(declare-fun mapRest!9032 () (Array (_ BitVec 32) ValueCell!2311))

(assert (=> mapNonEmpty!9032 (= (arr!4660 _values!649) (store mapRest!9032 mapKey!9032 mapValue!9032))))

(declare-fun b!208327 () Bool)

(declare-fun res!101343 () Bool)

(assert (=> b!208327 (=> (not res!101343) (not e!135892))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!208327 (= res!101343 (= (select (arr!4661 _keys!825) i!601) k!843))))

(declare-fun res!101341 () Bool)

(assert (=> start!20806 (=> (not res!101341) (not e!135892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20806 (= res!101341 (validMask!0 mask!1149))))

(assert (=> start!20806 e!135892))

(declare-fun e!135895 () Bool)

(declare-fun array_inv!3081 (array!9820) Bool)

(assert (=> start!20806 (and (array_inv!3081 _values!649) e!135895)))

(assert (=> start!20806 true))

(declare-fun tp_is_empty!5309 () Bool)

(assert (=> start!20806 tp_is_empty!5309))

(declare-fun array_inv!3082 (array!9822) Bool)

(assert (=> start!20806 (array_inv!3082 _keys!825)))

(assert (=> start!20806 tp!19382))

(declare-fun b!208328 () Bool)

(declare-fun e!135891 () Bool)

(assert (=> b!208328 (= e!135895 (and e!135891 mapRes!9032))))

(declare-fun condMapEmpty!9032 () Bool)

(declare-fun mapDefault!9032 () ValueCell!2311)

