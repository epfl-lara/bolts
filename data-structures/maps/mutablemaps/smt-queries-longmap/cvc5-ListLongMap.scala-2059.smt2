; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35530 () Bool)

(assert start!35530)

(declare-fun b!355767 () Bool)

(declare-fun e!217996 () Bool)

(declare-fun tp_is_empty!7975 () Bool)

(assert (=> b!355767 (= e!217996 tp_is_empty!7975)))

(declare-fun mapIsEmpty!13470 () Bool)

(declare-fun mapRes!13470 () Bool)

(assert (=> mapIsEmpty!13470 mapRes!13470))

(declare-fun b!355768 () Bool)

(declare-fun res!197442 () Bool)

(declare-fun e!217997 () Bool)

(assert (=> b!355768 (=> (not res!197442) (not e!217997))))

(declare-datatypes ((array!19493 0))(
  ( (array!19494 (arr!9237 (Array (_ BitVec 32) (_ BitVec 64))) (size!9589 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19493)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19493 (_ BitVec 32)) Bool)

(assert (=> b!355768 (= res!197442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355769 () Bool)

(declare-fun res!197443 () Bool)

(assert (=> b!355769 (=> (not res!197443) (not e!217997))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11611 0))(
  ( (V!11612 (val!4032 Int)) )
))
(declare-datatypes ((ValueCell!3644 0))(
  ( (ValueCellFull!3644 (v!6222 V!11611)) (EmptyCell!3644) )
))
(declare-datatypes ((array!19495 0))(
  ( (array!19496 (arr!9238 (Array (_ BitVec 32) ValueCell!3644)) (size!9590 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19495)

(assert (=> b!355769 (= res!197443 (and (= (size!9590 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9589 _keys!1456) (size!9590 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13470 () Bool)

(declare-fun tp!27447 () Bool)

(assert (=> mapNonEmpty!13470 (= mapRes!13470 (and tp!27447 e!217996))))

(declare-fun mapRest!13470 () (Array (_ BitVec 32) ValueCell!3644))

(declare-fun mapValue!13470 () ValueCell!3644)

(declare-fun mapKey!13470 () (_ BitVec 32))

(assert (=> mapNonEmpty!13470 (= (arr!9238 _values!1208) (store mapRest!13470 mapKey!13470 mapValue!13470))))

(declare-fun b!355770 () Bool)

(assert (=> b!355770 (= e!217997 false)))

(declare-fun lt!165838 () Bool)

(declare-datatypes ((List!5373 0))(
  ( (Nil!5370) (Cons!5369 (h!6225 (_ BitVec 64)) (t!10531 List!5373)) )
))
(declare-fun arrayNoDuplicates!0 (array!19493 (_ BitVec 32) List!5373) Bool)

(assert (=> b!355770 (= lt!165838 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5370))))

(declare-fun res!197441 () Bool)

(assert (=> start!35530 (=> (not res!197441) (not e!217997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35530 (= res!197441 (validMask!0 mask!1842))))

(assert (=> start!35530 e!217997))

(assert (=> start!35530 true))

(declare-fun e!217998 () Bool)

(declare-fun array_inv!6802 (array!19495) Bool)

(assert (=> start!35530 (and (array_inv!6802 _values!1208) e!217998)))

(declare-fun array_inv!6803 (array!19493) Bool)

(assert (=> start!35530 (array_inv!6803 _keys!1456)))

(declare-fun b!355771 () Bool)

(declare-fun e!218000 () Bool)

(assert (=> b!355771 (= e!218000 tp_is_empty!7975)))

(declare-fun b!355772 () Bool)

(assert (=> b!355772 (= e!217998 (and e!218000 mapRes!13470))))

(declare-fun condMapEmpty!13470 () Bool)

(declare-fun mapDefault!13470 () ValueCell!3644)

