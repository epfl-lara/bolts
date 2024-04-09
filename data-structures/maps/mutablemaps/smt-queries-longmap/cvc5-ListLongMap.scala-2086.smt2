; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35692 () Bool)

(assert start!35692)

(declare-fun b!358242 () Bool)

(declare-fun e!219296 () Bool)

(assert (=> b!358242 (= e!219296 false)))

(declare-fun lt!166153 () Bool)

(declare-datatypes ((array!19803 0))(
  ( (array!19804 (arr!9392 (Array (_ BitVec 32) (_ BitVec 64))) (size!9744 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19803)

(declare-datatypes ((List!5451 0))(
  ( (Nil!5448) (Cons!5447 (h!6303 (_ BitVec 64)) (t!10609 List!5451)) )
))
(declare-fun arrayNoDuplicates!0 (array!19803 (_ BitVec 32) List!5451) Bool)

(assert (=> b!358242 (= lt!166153 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5448))))

(declare-fun res!199187 () Bool)

(assert (=> start!35692 (=> (not res!199187) (not e!219296))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35692 (= res!199187 (validMask!0 mask!1842))))

(assert (=> start!35692 e!219296))

(assert (=> start!35692 true))

(declare-datatypes ((V!11827 0))(
  ( (V!11828 (val!4113 Int)) )
))
(declare-datatypes ((ValueCell!3725 0))(
  ( (ValueCellFull!3725 (v!6303 V!11827)) (EmptyCell!3725) )
))
(declare-datatypes ((array!19805 0))(
  ( (array!19806 (arr!9393 (Array (_ BitVec 32) ValueCell!3725)) (size!9745 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19805)

(declare-fun e!219294 () Bool)

(declare-fun array_inv!6902 (array!19805) Bool)

(assert (=> start!35692 (and (array_inv!6902 _values!1208) e!219294)))

(declare-fun array_inv!6903 (array!19803) Bool)

(assert (=> start!35692 (array_inv!6903 _keys!1456)))

(declare-fun mapIsEmpty!13713 () Bool)

(declare-fun mapRes!13713 () Bool)

(assert (=> mapIsEmpty!13713 mapRes!13713))

(declare-fun b!358243 () Bool)

(declare-fun res!199188 () Bool)

(assert (=> b!358243 (=> (not res!199188) (not e!219296))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358243 (= res!199188 (and (= (size!9745 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9744 _keys!1456) (size!9745 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358244 () Bool)

(declare-fun e!219292 () Bool)

(declare-fun tp_is_empty!8137 () Bool)

(assert (=> b!358244 (= e!219292 tp_is_empty!8137)))

(declare-fun mapNonEmpty!13713 () Bool)

(declare-fun tp!27771 () Bool)

(assert (=> mapNonEmpty!13713 (= mapRes!13713 (and tp!27771 e!219292))))

(declare-fun mapValue!13713 () ValueCell!3725)

(declare-fun mapRest!13713 () (Array (_ BitVec 32) ValueCell!3725))

(declare-fun mapKey!13713 () (_ BitVec 32))

(assert (=> mapNonEmpty!13713 (= (arr!9393 _values!1208) (store mapRest!13713 mapKey!13713 mapValue!13713))))

(declare-fun b!358245 () Bool)

(declare-fun e!219293 () Bool)

(assert (=> b!358245 (= e!219294 (and e!219293 mapRes!13713))))

(declare-fun condMapEmpty!13713 () Bool)

(declare-fun mapDefault!13713 () ValueCell!3725)

