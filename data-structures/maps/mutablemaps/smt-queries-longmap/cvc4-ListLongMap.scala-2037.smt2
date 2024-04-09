; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35402 () Bool)

(assert start!35402)

(declare-fun b!354129 () Bool)

(declare-fun e!217039 () Bool)

(declare-fun tp_is_empty!7847 () Bool)

(assert (=> b!354129 (= e!217039 tp_is_empty!7847)))

(declare-fun mapNonEmpty!13278 () Bool)

(declare-fun mapRes!13278 () Bool)

(declare-fun tp!27174 () Bool)

(declare-fun e!217036 () Bool)

(assert (=> mapNonEmpty!13278 (= mapRes!13278 (and tp!27174 e!217036))))

(declare-datatypes ((V!11439 0))(
  ( (V!11440 (val!3968 Int)) )
))
(declare-datatypes ((ValueCell!3580 0))(
  ( (ValueCellFull!3580 (v!6158 V!11439)) (EmptyCell!3580) )
))
(declare-fun mapValue!13278 () ValueCell!3580)

(declare-datatypes ((array!19251 0))(
  ( (array!19252 (arr!9116 (Array (_ BitVec 32) ValueCell!3580)) (size!9468 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19251)

(declare-fun mapKey!13278 () (_ BitVec 32))

(declare-fun mapRest!13278 () (Array (_ BitVec 32) ValueCell!3580))

(assert (=> mapNonEmpty!13278 (= (arr!9116 _values!1208) (store mapRest!13278 mapKey!13278 mapValue!13278))))

(declare-fun mapIsEmpty!13278 () Bool)

(assert (=> mapIsEmpty!13278 mapRes!13278))

(declare-fun b!354130 () Bool)

(assert (=> b!354130 (= e!217036 tp_is_empty!7847)))

(declare-fun b!354131 () Bool)

(declare-fun e!217038 () Bool)

(assert (=> b!354131 (= e!217038 false)))

(declare-fun lt!165646 () Bool)

(declare-datatypes ((array!19253 0))(
  ( (array!19254 (arr!9117 (Array (_ BitVec 32) (_ BitVec 64))) (size!9469 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19253)

(declare-datatypes ((List!5314 0))(
  ( (Nil!5311) (Cons!5310 (h!6166 (_ BitVec 64)) (t!10472 List!5314)) )
))
(declare-fun arrayNoDuplicates!0 (array!19253 (_ BitVec 32) List!5314) Bool)

(assert (=> b!354131 (= lt!165646 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5311))))

(declare-fun res!196381 () Bool)

(assert (=> start!35402 (=> (not res!196381) (not e!217038))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35402 (= res!196381 (validMask!0 mask!1842))))

(assert (=> start!35402 e!217038))

(assert (=> start!35402 true))

(declare-fun e!217040 () Bool)

(declare-fun array_inv!6710 (array!19251) Bool)

(assert (=> start!35402 (and (array_inv!6710 _values!1208) e!217040)))

(declare-fun array_inv!6711 (array!19253) Bool)

(assert (=> start!35402 (array_inv!6711 _keys!1456)))

(declare-fun b!354132 () Bool)

(declare-fun res!196380 () Bool)

(assert (=> b!354132 (=> (not res!196380) (not e!217038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19253 (_ BitVec 32)) Bool)

(assert (=> b!354132 (= res!196380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354133 () Bool)

(declare-fun res!196379 () Bool)

(assert (=> b!354133 (=> (not res!196379) (not e!217038))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354133 (= res!196379 (and (= (size!9468 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9469 _keys!1456) (size!9468 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354134 () Bool)

(assert (=> b!354134 (= e!217040 (and e!217039 mapRes!13278))))

(declare-fun condMapEmpty!13278 () Bool)

(declare-fun mapDefault!13278 () ValueCell!3580)

