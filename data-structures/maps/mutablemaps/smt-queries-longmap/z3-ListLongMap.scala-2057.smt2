; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35520 () Bool)

(assert start!35520)

(declare-fun b!355677 () Bool)

(declare-fun e!217923 () Bool)

(declare-fun tp_is_empty!7965 () Bool)

(assert (=> b!355677 (= e!217923 tp_is_empty!7965)))

(declare-fun b!355678 () Bool)

(declare-fun res!197398 () Bool)

(declare-fun e!217924 () Bool)

(assert (=> b!355678 (=> (not res!197398) (not e!217924))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19475 0))(
  ( (array!19476 (arr!9228 (Array (_ BitVec 32) (_ BitVec 64))) (size!9580 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19475)

(declare-datatypes ((V!11597 0))(
  ( (V!11598 (val!4027 Int)) )
))
(declare-datatypes ((ValueCell!3639 0))(
  ( (ValueCellFull!3639 (v!6217 V!11597)) (EmptyCell!3639) )
))
(declare-datatypes ((array!19477 0))(
  ( (array!19478 (arr!9229 (Array (_ BitVec 32) ValueCell!3639)) (size!9581 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19477)

(assert (=> b!355678 (= res!197398 (and (= (size!9581 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9580 _keys!1456) (size!9581 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355679 () Bool)

(declare-fun res!197396 () Bool)

(assert (=> b!355679 (=> (not res!197396) (not e!217924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19475 (_ BitVec 32)) Bool)

(assert (=> b!355679 (= res!197396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13455 () Bool)

(declare-fun mapRes!13455 () Bool)

(declare-fun tp!27432 () Bool)

(declare-fun e!217922 () Bool)

(assert (=> mapNonEmpty!13455 (= mapRes!13455 (and tp!27432 e!217922))))

(declare-fun mapValue!13455 () ValueCell!3639)

(declare-fun mapRest!13455 () (Array (_ BitVec 32) ValueCell!3639))

(declare-fun mapKey!13455 () (_ BitVec 32))

(assert (=> mapNonEmpty!13455 (= (arr!9229 _values!1208) (store mapRest!13455 mapKey!13455 mapValue!13455))))

(declare-fun b!355680 () Bool)

(declare-fun e!217925 () Bool)

(assert (=> b!355680 (= e!217925 (and e!217923 mapRes!13455))))

(declare-fun condMapEmpty!13455 () Bool)

(declare-fun mapDefault!13455 () ValueCell!3639)

(assert (=> b!355680 (= condMapEmpty!13455 (= (arr!9229 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3639)) mapDefault!13455)))))

(declare-fun mapIsEmpty!13455 () Bool)

(assert (=> mapIsEmpty!13455 mapRes!13455))

(declare-fun b!355681 () Bool)

(assert (=> b!355681 (= e!217924 false)))

(declare-fun lt!165823 () Bool)

(declare-datatypes ((List!5370 0))(
  ( (Nil!5367) (Cons!5366 (h!6222 (_ BitVec 64)) (t!10528 List!5370)) )
))
(declare-fun arrayNoDuplicates!0 (array!19475 (_ BitVec 32) List!5370) Bool)

(assert (=> b!355681 (= lt!165823 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5367))))

(declare-fun b!355682 () Bool)

(assert (=> b!355682 (= e!217922 tp_is_empty!7965)))

(declare-fun res!197397 () Bool)

(assert (=> start!35520 (=> (not res!197397) (not e!217924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35520 (= res!197397 (validMask!0 mask!1842))))

(assert (=> start!35520 e!217924))

(assert (=> start!35520 true))

(declare-fun array_inv!6794 (array!19477) Bool)

(assert (=> start!35520 (and (array_inv!6794 _values!1208) e!217925)))

(declare-fun array_inv!6795 (array!19475) Bool)

(assert (=> start!35520 (array_inv!6795 _keys!1456)))

(assert (= (and start!35520 res!197397) b!355678))

(assert (= (and b!355678 res!197398) b!355679))

(assert (= (and b!355679 res!197396) b!355681))

(assert (= (and b!355680 condMapEmpty!13455) mapIsEmpty!13455))

(assert (= (and b!355680 (not condMapEmpty!13455)) mapNonEmpty!13455))

(get-info :version)

(assert (= (and mapNonEmpty!13455 ((_ is ValueCellFull!3639) mapValue!13455)) b!355682))

(assert (= (and b!355680 ((_ is ValueCellFull!3639) mapDefault!13455)) b!355677))

(assert (= start!35520 b!355680))

(declare-fun m!354309 () Bool)

(assert (=> b!355679 m!354309))

(declare-fun m!354311 () Bool)

(assert (=> mapNonEmpty!13455 m!354311))

(declare-fun m!354313 () Bool)

(assert (=> b!355681 m!354313))

(declare-fun m!354315 () Bool)

(assert (=> start!35520 m!354315))

(declare-fun m!354317 () Bool)

(assert (=> start!35520 m!354317))

(declare-fun m!354319 () Bool)

(assert (=> start!35520 m!354319))

(check-sat (not b!355681) tp_is_empty!7965 (not mapNonEmpty!13455) (not start!35520) (not b!355679))
(check-sat)
