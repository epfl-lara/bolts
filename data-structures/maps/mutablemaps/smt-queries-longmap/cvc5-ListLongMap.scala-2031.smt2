; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35350 () Bool)

(assert start!35350)

(declare-fun b!353716 () Bool)

(declare-fun e!216711 () Bool)

(declare-fun tp_is_empty!7807 () Bool)

(assert (=> b!353716 (= e!216711 tp_is_empty!7807)))

(declare-fun b!353717 () Bool)

(declare-fun e!216712 () Bool)

(assert (=> b!353717 (= e!216712 tp_is_empty!7807)))

(declare-fun res!196166 () Bool)

(declare-fun e!216709 () Bool)

(assert (=> start!35350 (=> (not res!196166) (not e!216709))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35350 (= res!196166 (validMask!0 mask!1842))))

(assert (=> start!35350 e!216709))

(assert (=> start!35350 true))

(declare-datatypes ((V!11387 0))(
  ( (V!11388 (val!3948 Int)) )
))
(declare-datatypes ((ValueCell!3560 0))(
  ( (ValueCellFull!3560 (v!6138 V!11387)) (EmptyCell!3560) )
))
(declare-datatypes ((array!19171 0))(
  ( (array!19172 (arr!9077 (Array (_ BitVec 32) ValueCell!3560)) (size!9429 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19171)

(declare-fun e!216713 () Bool)

(declare-fun array_inv!6682 (array!19171) Bool)

(assert (=> start!35350 (and (array_inv!6682 _values!1208) e!216713)))

(declare-datatypes ((array!19173 0))(
  ( (array!19174 (arr!9078 (Array (_ BitVec 32) (_ BitVec 64))) (size!9430 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19173)

(declare-fun array_inv!6683 (array!19173) Bool)

(assert (=> start!35350 (array_inv!6683 _keys!1456)))

(declare-fun b!353718 () Bool)

(declare-fun res!196167 () Bool)

(assert (=> b!353718 (=> (not res!196167) (not e!216709))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353718 (= res!196167 (and (= (size!9429 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9430 _keys!1456) (size!9429 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13215 () Bool)

(declare-fun mapRes!13215 () Bool)

(declare-fun tp!27111 () Bool)

(assert (=> mapNonEmpty!13215 (= mapRes!13215 (and tp!27111 e!216712))))

(declare-fun mapKey!13215 () (_ BitVec 32))

(declare-fun mapRest!13215 () (Array (_ BitVec 32) ValueCell!3560))

(declare-fun mapValue!13215 () ValueCell!3560)

(assert (=> mapNonEmpty!13215 (= (arr!9077 _values!1208) (store mapRest!13215 mapKey!13215 mapValue!13215))))

(declare-fun mapIsEmpty!13215 () Bool)

(assert (=> mapIsEmpty!13215 mapRes!13215))

(declare-fun b!353719 () Bool)

(declare-fun res!196168 () Bool)

(assert (=> b!353719 (=> (not res!196168) (not e!216709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19173 (_ BitVec 32)) Bool)

(assert (=> b!353719 (= res!196168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353720 () Bool)

(assert (=> b!353720 (= e!216709 false)))

(declare-fun lt!165586 () Bool)

(declare-datatypes ((List!5301 0))(
  ( (Nil!5298) (Cons!5297 (h!6153 (_ BitVec 64)) (t!10459 List!5301)) )
))
(declare-fun arrayNoDuplicates!0 (array!19173 (_ BitVec 32) List!5301) Bool)

(assert (=> b!353720 (= lt!165586 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5298))))

(declare-fun b!353721 () Bool)

(assert (=> b!353721 (= e!216713 (and e!216711 mapRes!13215))))

(declare-fun condMapEmpty!13215 () Bool)

(declare-fun mapDefault!13215 () ValueCell!3560)

