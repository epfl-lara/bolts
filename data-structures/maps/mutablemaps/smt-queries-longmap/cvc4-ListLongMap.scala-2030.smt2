; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35348 () Bool)

(assert start!35348)

(declare-fun b!353698 () Bool)

(declare-fun e!216697 () Bool)

(assert (=> b!353698 (= e!216697 false)))

(declare-fun lt!165583 () Bool)

(declare-datatypes ((array!19167 0))(
  ( (array!19168 (arr!9075 (Array (_ BitVec 32) (_ BitVec 64))) (size!9427 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19167)

(declare-datatypes ((List!5300 0))(
  ( (Nil!5297) (Cons!5296 (h!6152 (_ BitVec 64)) (t!10458 List!5300)) )
))
(declare-fun arrayNoDuplicates!0 (array!19167 (_ BitVec 32) List!5300) Bool)

(assert (=> b!353698 (= lt!165583 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5297))))

(declare-fun res!196157 () Bool)

(assert (=> start!35348 (=> (not res!196157) (not e!216697))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35348 (= res!196157 (validMask!0 mask!1842))))

(assert (=> start!35348 e!216697))

(assert (=> start!35348 true))

(declare-datatypes ((V!11383 0))(
  ( (V!11384 (val!3947 Int)) )
))
(declare-datatypes ((ValueCell!3559 0))(
  ( (ValueCellFull!3559 (v!6137 V!11383)) (EmptyCell!3559) )
))
(declare-datatypes ((array!19169 0))(
  ( (array!19170 (arr!9076 (Array (_ BitVec 32) ValueCell!3559)) (size!9428 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19169)

(declare-fun e!216694 () Bool)

(declare-fun array_inv!6680 (array!19169) Bool)

(assert (=> start!35348 (and (array_inv!6680 _values!1208) e!216694)))

(declare-fun array_inv!6681 (array!19167) Bool)

(assert (=> start!35348 (array_inv!6681 _keys!1456)))

(declare-fun b!353699 () Bool)

(declare-fun e!216696 () Bool)

(declare-fun tp_is_empty!7805 () Bool)

(assert (=> b!353699 (= e!216696 tp_is_empty!7805)))

(declare-fun mapNonEmpty!13212 () Bool)

(declare-fun mapRes!13212 () Bool)

(declare-fun tp!27108 () Bool)

(assert (=> mapNonEmpty!13212 (= mapRes!13212 (and tp!27108 e!216696))))

(declare-fun mapValue!13212 () ValueCell!3559)

(declare-fun mapRest!13212 () (Array (_ BitVec 32) ValueCell!3559))

(declare-fun mapKey!13212 () (_ BitVec 32))

(assert (=> mapNonEmpty!13212 (= (arr!9076 _values!1208) (store mapRest!13212 mapKey!13212 mapValue!13212))))

(declare-fun b!353700 () Bool)

(declare-fun res!196159 () Bool)

(assert (=> b!353700 (=> (not res!196159) (not e!216697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19167 (_ BitVec 32)) Bool)

(assert (=> b!353700 (= res!196159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353701 () Bool)

(declare-fun e!216698 () Bool)

(assert (=> b!353701 (= e!216698 tp_is_empty!7805)))

(declare-fun b!353702 () Bool)

(declare-fun res!196158 () Bool)

(assert (=> b!353702 (=> (not res!196158) (not e!216697))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353702 (= res!196158 (and (= (size!9428 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9427 _keys!1456) (size!9428 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13212 () Bool)

(assert (=> mapIsEmpty!13212 mapRes!13212))

(declare-fun b!353703 () Bool)

(assert (=> b!353703 (= e!216694 (and e!216698 mapRes!13212))))

(declare-fun condMapEmpty!13212 () Bool)

(declare-fun mapDefault!13212 () ValueCell!3559)

