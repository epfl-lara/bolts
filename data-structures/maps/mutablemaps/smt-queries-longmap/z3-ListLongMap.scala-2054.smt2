; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35502 () Bool)

(assert start!35502)

(declare-fun b!355515 () Bool)

(declare-fun e!217789 () Bool)

(declare-fun tp_is_empty!7947 () Bool)

(assert (=> b!355515 (= e!217789 tp_is_empty!7947)))

(declare-fun b!355516 () Bool)

(declare-fun e!217788 () Bool)

(assert (=> b!355516 (= e!217788 tp_is_empty!7947)))

(declare-fun res!197316 () Bool)

(declare-fun e!217787 () Bool)

(assert (=> start!35502 (=> (not res!197316) (not e!217787))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35502 (= res!197316 (validMask!0 mask!1842))))

(assert (=> start!35502 e!217787))

(assert (=> start!35502 true))

(declare-datatypes ((V!11573 0))(
  ( (V!11574 (val!4018 Int)) )
))
(declare-datatypes ((ValueCell!3630 0))(
  ( (ValueCellFull!3630 (v!6208 V!11573)) (EmptyCell!3630) )
))
(declare-datatypes ((array!19441 0))(
  ( (array!19442 (arr!9211 (Array (_ BitVec 32) ValueCell!3630)) (size!9563 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19441)

(declare-fun e!217786 () Bool)

(declare-fun array_inv!6782 (array!19441) Bool)

(assert (=> start!35502 (and (array_inv!6782 _values!1208) e!217786)))

(declare-datatypes ((array!19443 0))(
  ( (array!19444 (arr!9212 (Array (_ BitVec 32) (_ BitVec 64))) (size!9564 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19443)

(declare-fun array_inv!6783 (array!19443) Bool)

(assert (=> start!35502 (array_inv!6783 _keys!1456)))

(declare-fun b!355517 () Bool)

(declare-fun res!197315 () Bool)

(assert (=> b!355517 (=> (not res!197315) (not e!217787))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355517 (= res!197315 (and (= (size!9563 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9564 _keys!1456) (size!9563 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355518 () Bool)

(assert (=> b!355518 (= e!217787 false)))

(declare-fun lt!165796 () Bool)

(declare-datatypes ((List!5364 0))(
  ( (Nil!5361) (Cons!5360 (h!6216 (_ BitVec 64)) (t!10522 List!5364)) )
))
(declare-fun arrayNoDuplicates!0 (array!19443 (_ BitVec 32) List!5364) Bool)

(assert (=> b!355518 (= lt!165796 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5361))))

(declare-fun b!355519 () Bool)

(declare-fun res!197317 () Bool)

(assert (=> b!355519 (=> (not res!197317) (not e!217787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19443 (_ BitVec 32)) Bool)

(assert (=> b!355519 (= res!197317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355520 () Bool)

(declare-fun mapRes!13428 () Bool)

(assert (=> b!355520 (= e!217786 (and e!217789 mapRes!13428))))

(declare-fun condMapEmpty!13428 () Bool)

(declare-fun mapDefault!13428 () ValueCell!3630)

(assert (=> b!355520 (= condMapEmpty!13428 (= (arr!9211 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3630)) mapDefault!13428)))))

(declare-fun mapNonEmpty!13428 () Bool)

(declare-fun tp!27405 () Bool)

(assert (=> mapNonEmpty!13428 (= mapRes!13428 (and tp!27405 e!217788))))

(declare-fun mapRest!13428 () (Array (_ BitVec 32) ValueCell!3630))

(declare-fun mapValue!13428 () ValueCell!3630)

(declare-fun mapKey!13428 () (_ BitVec 32))

(assert (=> mapNonEmpty!13428 (= (arr!9211 _values!1208) (store mapRest!13428 mapKey!13428 mapValue!13428))))

(declare-fun mapIsEmpty!13428 () Bool)

(assert (=> mapIsEmpty!13428 mapRes!13428))

(assert (= (and start!35502 res!197316) b!355517))

(assert (= (and b!355517 res!197315) b!355519))

(assert (= (and b!355519 res!197317) b!355518))

(assert (= (and b!355520 condMapEmpty!13428) mapIsEmpty!13428))

(assert (= (and b!355520 (not condMapEmpty!13428)) mapNonEmpty!13428))

(get-info :version)

(assert (= (and mapNonEmpty!13428 ((_ is ValueCellFull!3630) mapValue!13428)) b!355516))

(assert (= (and b!355520 ((_ is ValueCellFull!3630) mapDefault!13428)) b!355515))

(assert (= start!35502 b!355520))

(declare-fun m!354201 () Bool)

(assert (=> start!35502 m!354201))

(declare-fun m!354203 () Bool)

(assert (=> start!35502 m!354203))

(declare-fun m!354205 () Bool)

(assert (=> start!35502 m!354205))

(declare-fun m!354207 () Bool)

(assert (=> b!355518 m!354207))

(declare-fun m!354209 () Bool)

(assert (=> b!355519 m!354209))

(declare-fun m!354211 () Bool)

(assert (=> mapNonEmpty!13428 m!354211))

(check-sat (not start!35502) (not b!355519) (not mapNonEmpty!13428) (not b!355518) tp_is_empty!7947)
(check-sat)
