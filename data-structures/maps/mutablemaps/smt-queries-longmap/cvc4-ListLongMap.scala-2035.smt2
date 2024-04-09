; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35390 () Bool)

(assert start!35390)

(declare-fun res!196326 () Bool)

(declare-fun e!216946 () Bool)

(assert (=> start!35390 (=> (not res!196326) (not e!216946))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35390 (= res!196326 (validMask!0 mask!1842))))

(assert (=> start!35390 e!216946))

(assert (=> start!35390 true))

(declare-datatypes ((V!11423 0))(
  ( (V!11424 (val!3962 Int)) )
))
(declare-datatypes ((ValueCell!3574 0))(
  ( (ValueCellFull!3574 (v!6152 V!11423)) (EmptyCell!3574) )
))
(declare-datatypes ((array!19227 0))(
  ( (array!19228 (arr!9104 (Array (_ BitVec 32) ValueCell!3574)) (size!9456 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19227)

(declare-fun e!216948 () Bool)

(declare-fun array_inv!6698 (array!19227) Bool)

(assert (=> start!35390 (and (array_inv!6698 _values!1208) e!216948)))

(declare-datatypes ((array!19229 0))(
  ( (array!19230 (arr!9105 (Array (_ BitVec 32) (_ BitVec 64))) (size!9457 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19229)

(declare-fun array_inv!6699 (array!19229) Bool)

(assert (=> start!35390 (array_inv!6699 _keys!1456)))

(declare-fun b!354021 () Bool)

(declare-fun res!196325 () Bool)

(assert (=> b!354021 (=> (not res!196325) (not e!216946))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354021 (= res!196325 (and (= (size!9456 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9457 _keys!1456) (size!9456 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13260 () Bool)

(declare-fun mapRes!13260 () Bool)

(assert (=> mapIsEmpty!13260 mapRes!13260))

(declare-fun mapNonEmpty!13260 () Bool)

(declare-fun tp!27156 () Bool)

(declare-fun e!216949 () Bool)

(assert (=> mapNonEmpty!13260 (= mapRes!13260 (and tp!27156 e!216949))))

(declare-fun mapValue!13260 () ValueCell!3574)

(declare-fun mapRest!13260 () (Array (_ BitVec 32) ValueCell!3574))

(declare-fun mapKey!13260 () (_ BitVec 32))

(assert (=> mapNonEmpty!13260 (= (arr!9104 _values!1208) (store mapRest!13260 mapKey!13260 mapValue!13260))))

(declare-fun b!354022 () Bool)

(declare-fun res!196327 () Bool)

(assert (=> b!354022 (=> (not res!196327) (not e!216946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19229 (_ BitVec 32)) Bool)

(assert (=> b!354022 (= res!196327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354023 () Bool)

(declare-fun tp_is_empty!7835 () Bool)

(assert (=> b!354023 (= e!216949 tp_is_empty!7835)))

(declare-fun b!354024 () Bool)

(declare-fun e!216950 () Bool)

(assert (=> b!354024 (= e!216948 (and e!216950 mapRes!13260))))

(declare-fun condMapEmpty!13260 () Bool)

(declare-fun mapDefault!13260 () ValueCell!3574)

