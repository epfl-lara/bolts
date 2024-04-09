; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20068 () Bool)

(assert start!20068)

(declare-fun b!196351 () Bool)

(declare-fun e!129322 () Bool)

(assert (=> b!196351 (= e!129322 false)))

(declare-fun lt!97633 () Bool)

(declare-datatypes ((array!8398 0))(
  ( (array!8399 (arr!3949 (Array (_ BitVec 32) (_ BitVec 64))) (size!4274 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8398)

(declare-datatypes ((List!2490 0))(
  ( (Nil!2487) (Cons!2486 (h!3128 (_ BitVec 64)) (t!7429 List!2490)) )
))
(declare-fun arrayNoDuplicates!0 (array!8398 (_ BitVec 32) List!2490) Bool)

(assert (=> b!196351 (= lt!97633 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2487))))

(declare-fun mapNonEmpty!7925 () Bool)

(declare-fun mapRes!7925 () Bool)

(declare-fun tp!17213 () Bool)

(declare-fun e!129324 () Bool)

(assert (=> mapNonEmpty!7925 (= mapRes!7925 (and tp!17213 e!129324))))

(declare-datatypes ((V!5741 0))(
  ( (V!5742 (val!2330 Int)) )
))
(declare-datatypes ((ValueCell!1942 0))(
  ( (ValueCellFull!1942 (v!4296 V!5741)) (EmptyCell!1942) )
))
(declare-datatypes ((array!8400 0))(
  ( (array!8401 (arr!3950 (Array (_ BitVec 32) ValueCell!1942)) (size!4275 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8400)

(declare-fun mapKey!7925 () (_ BitVec 32))

(declare-fun mapValue!7925 () ValueCell!1942)

(declare-fun mapRest!7925 () (Array (_ BitVec 32) ValueCell!1942))

(assert (=> mapNonEmpty!7925 (= (arr!3950 _values!649) (store mapRest!7925 mapKey!7925 mapValue!7925))))

(declare-fun res!92688 () Bool)

(assert (=> start!20068 (=> (not res!92688) (not e!129322))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20068 (= res!92688 (validMask!0 mask!1149))))

(assert (=> start!20068 e!129322))

(assert (=> start!20068 true))

(declare-fun e!129325 () Bool)

(declare-fun array_inv!2559 (array!8400) Bool)

(assert (=> start!20068 (and (array_inv!2559 _values!649) e!129325)))

(declare-fun array_inv!2560 (array!8398) Bool)

(assert (=> start!20068 (array_inv!2560 _keys!825)))

(declare-fun b!196352 () Bool)

(declare-fun e!129323 () Bool)

(declare-fun tp_is_empty!4571 () Bool)

(assert (=> b!196352 (= e!129323 tp_is_empty!4571)))

(declare-fun b!196353 () Bool)

(declare-fun res!92689 () Bool)

(assert (=> b!196353 (=> (not res!92689) (not e!129322))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196353 (= res!92689 (and (= (size!4275 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4274 _keys!825) (size!4275 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196354 () Bool)

(declare-fun res!92687 () Bool)

(assert (=> b!196354 (=> (not res!92687) (not e!129322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8398 (_ BitVec 32)) Bool)

(assert (=> b!196354 (= res!92687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!7925 () Bool)

(assert (=> mapIsEmpty!7925 mapRes!7925))

(declare-fun b!196355 () Bool)

(assert (=> b!196355 (= e!129325 (and e!129323 mapRes!7925))))

(declare-fun condMapEmpty!7925 () Bool)

(declare-fun mapDefault!7925 () ValueCell!1942)

