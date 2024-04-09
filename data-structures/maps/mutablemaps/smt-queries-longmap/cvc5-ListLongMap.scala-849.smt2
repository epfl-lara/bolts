; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20202 () Bool)

(assert start!20202)

(declare-fun b_free!4849 () Bool)

(declare-fun b_next!4849 () Bool)

(assert (=> start!20202 (= b_free!4849 (not b_next!4849))))

(declare-fun tp!17579 () Bool)

(declare-fun b_and!11613 () Bool)

(assert (=> start!20202 (= tp!17579 b_and!11613)))

(declare-fun b!198240 () Bool)

(declare-fun e!130328 () Bool)

(declare-fun tp_is_empty!4705 () Bool)

(assert (=> b!198240 (= e!130328 tp_is_empty!4705)))

(declare-fun b!198241 () Bool)

(declare-fun e!130326 () Bool)

(assert (=> b!198241 (= e!130326 tp_is_empty!4705)))

(declare-fun b!198242 () Bool)

(declare-fun e!130329 () Bool)

(assert (=> b!198242 (= e!130329 false)))

(declare-datatypes ((V!5921 0))(
  ( (V!5922 (val!2397 Int)) )
))
(declare-datatypes ((tuple2!3632 0))(
  ( (tuple2!3633 (_1!1826 (_ BitVec 64)) (_2!1826 V!5921)) )
))
(declare-datatypes ((List!2571 0))(
  ( (Nil!2568) (Cons!2567 (h!3209 tuple2!3632) (t!7510 List!2571)) )
))
(declare-datatypes ((ListLongMap!2559 0))(
  ( (ListLongMap!2560 (toList!1295 List!2571)) )
))
(declare-fun lt!97909 () ListLongMap!2559)

(declare-datatypes ((ValueCell!2009 0))(
  ( (ValueCellFull!2009 (v!4363 V!5921)) (EmptyCell!2009) )
))
(declare-datatypes ((array!8658 0))(
  ( (array!8659 (arr!4079 (Array (_ BitVec 32) ValueCell!2009)) (size!4404 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8658)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!5921)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5921)

(declare-datatypes ((array!8660 0))(
  ( (array!8661 (arr!4080 (Array (_ BitVec 32) (_ BitVec 64))) (size!4405 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8660)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5921)

(declare-fun getCurrentListMapNoExtraKeys!252 (array!8660 array!8658 (_ BitVec 32) (_ BitVec 32) V!5921 V!5921 (_ BitVec 32) Int) ListLongMap!2559)

(assert (=> b!198242 (= lt!97909 (getCurrentListMapNoExtraKeys!252 _keys!825 (array!8659 (store (arr!4079 _values!649) i!601 (ValueCellFull!2009 v!520)) (size!4404 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97908 () ListLongMap!2559)

(assert (=> b!198242 (= lt!97908 (getCurrentListMapNoExtraKeys!252 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198243 () Bool)

(declare-fun res!93974 () Bool)

(assert (=> b!198243 (=> (not res!93974) (not e!130329))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198243 (= res!93974 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8126 () Bool)

(declare-fun mapRes!8126 () Bool)

(declare-fun tp!17578 () Bool)

(assert (=> mapNonEmpty!8126 (= mapRes!8126 (and tp!17578 e!130328))))

(declare-fun mapValue!8126 () ValueCell!2009)

(declare-fun mapKey!8126 () (_ BitVec 32))

(declare-fun mapRest!8126 () (Array (_ BitVec 32) ValueCell!2009))

(assert (=> mapNonEmpty!8126 (= (arr!4079 _values!649) (store mapRest!8126 mapKey!8126 mapValue!8126))))

(declare-fun b!198244 () Bool)

(declare-fun res!93979 () Bool)

(assert (=> b!198244 (=> (not res!93979) (not e!130329))))

(assert (=> b!198244 (= res!93979 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4405 _keys!825))))))

(declare-fun b!198245 () Bool)

(declare-fun res!93973 () Bool)

(assert (=> b!198245 (=> (not res!93973) (not e!130329))))

(assert (=> b!198245 (= res!93973 (= (select (arr!4080 _keys!825) i!601) k!843))))

(declare-fun res!93976 () Bool)

(assert (=> start!20202 (=> (not res!93976) (not e!130329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20202 (= res!93976 (validMask!0 mask!1149))))

(assert (=> start!20202 e!130329))

(declare-fun e!130327 () Bool)

(declare-fun array_inv!2659 (array!8658) Bool)

(assert (=> start!20202 (and (array_inv!2659 _values!649) e!130327)))

(assert (=> start!20202 true))

(assert (=> start!20202 tp_is_empty!4705))

(declare-fun array_inv!2660 (array!8660) Bool)

(assert (=> start!20202 (array_inv!2660 _keys!825)))

(assert (=> start!20202 tp!17579))

(declare-fun b!198246 () Bool)

(declare-fun res!93978 () Bool)

(assert (=> b!198246 (=> (not res!93978) (not e!130329))))

(assert (=> b!198246 (= res!93978 (and (= (size!4404 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4405 _keys!825) (size!4404 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198247 () Bool)

(assert (=> b!198247 (= e!130327 (and e!130326 mapRes!8126))))

(declare-fun condMapEmpty!8126 () Bool)

(declare-fun mapDefault!8126 () ValueCell!2009)

