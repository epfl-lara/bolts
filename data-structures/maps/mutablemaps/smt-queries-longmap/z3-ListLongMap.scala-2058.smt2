; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35526 () Bool)

(assert start!35526)

(declare-fun b!355731 () Bool)

(declare-fun res!197423 () Bool)

(declare-fun e!217967 () Bool)

(assert (=> b!355731 (=> (not res!197423) (not e!217967))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19487 0))(
  ( (array!19488 (arr!9234 (Array (_ BitVec 32) (_ BitVec 64))) (size!9586 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19487)

(declare-datatypes ((V!11605 0))(
  ( (V!11606 (val!4030 Int)) )
))
(declare-datatypes ((ValueCell!3642 0))(
  ( (ValueCellFull!3642 (v!6220 V!11605)) (EmptyCell!3642) )
))
(declare-datatypes ((array!19489 0))(
  ( (array!19490 (arr!9235 (Array (_ BitVec 32) ValueCell!3642)) (size!9587 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19489)

(assert (=> b!355731 (= res!197423 (and (= (size!9587 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9586 _keys!1456) (size!9587 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355732 () Bool)

(declare-fun e!217966 () Bool)

(declare-fun tp_is_empty!7971 () Bool)

(assert (=> b!355732 (= e!217966 tp_is_empty!7971)))

(declare-fun b!355733 () Bool)

(declare-fun e!217968 () Bool)

(assert (=> b!355733 (= e!217968 tp_is_empty!7971)))

(declare-fun mapNonEmpty!13464 () Bool)

(declare-fun mapRes!13464 () Bool)

(declare-fun tp!27441 () Bool)

(assert (=> mapNonEmpty!13464 (= mapRes!13464 (and tp!27441 e!217968))))

(declare-fun mapValue!13464 () ValueCell!3642)

(declare-fun mapKey!13464 () (_ BitVec 32))

(declare-fun mapRest!13464 () (Array (_ BitVec 32) ValueCell!3642))

(assert (=> mapNonEmpty!13464 (= (arr!9235 _values!1208) (store mapRest!13464 mapKey!13464 mapValue!13464))))

(declare-fun b!355734 () Bool)

(declare-fun e!217970 () Bool)

(assert (=> b!355734 (= e!217970 (and e!217966 mapRes!13464))))

(declare-fun condMapEmpty!13464 () Bool)

(declare-fun mapDefault!13464 () ValueCell!3642)

(assert (=> b!355734 (= condMapEmpty!13464 (= (arr!9235 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3642)) mapDefault!13464)))))

(declare-fun b!355735 () Bool)

(assert (=> b!355735 (= e!217967 false)))

(declare-fun lt!165832 () Bool)

(declare-datatypes ((List!5372 0))(
  ( (Nil!5369) (Cons!5368 (h!6224 (_ BitVec 64)) (t!10530 List!5372)) )
))
(declare-fun arrayNoDuplicates!0 (array!19487 (_ BitVec 32) List!5372) Bool)

(assert (=> b!355735 (= lt!165832 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5369))))

(declare-fun mapIsEmpty!13464 () Bool)

(assert (=> mapIsEmpty!13464 mapRes!13464))

(declare-fun b!355736 () Bool)

(declare-fun res!197425 () Bool)

(assert (=> b!355736 (=> (not res!197425) (not e!217967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19487 (_ BitVec 32)) Bool)

(assert (=> b!355736 (= res!197425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!197424 () Bool)

(assert (=> start!35526 (=> (not res!197424) (not e!217967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35526 (= res!197424 (validMask!0 mask!1842))))

(assert (=> start!35526 e!217967))

(assert (=> start!35526 true))

(declare-fun array_inv!6800 (array!19489) Bool)

(assert (=> start!35526 (and (array_inv!6800 _values!1208) e!217970)))

(declare-fun array_inv!6801 (array!19487) Bool)

(assert (=> start!35526 (array_inv!6801 _keys!1456)))

(assert (= (and start!35526 res!197424) b!355731))

(assert (= (and b!355731 res!197423) b!355736))

(assert (= (and b!355736 res!197425) b!355735))

(assert (= (and b!355734 condMapEmpty!13464) mapIsEmpty!13464))

(assert (= (and b!355734 (not condMapEmpty!13464)) mapNonEmpty!13464))

(get-info :version)

(assert (= (and mapNonEmpty!13464 ((_ is ValueCellFull!3642) mapValue!13464)) b!355733))

(assert (= (and b!355734 ((_ is ValueCellFull!3642) mapDefault!13464)) b!355732))

(assert (= start!35526 b!355734))

(declare-fun m!354345 () Bool)

(assert (=> mapNonEmpty!13464 m!354345))

(declare-fun m!354347 () Bool)

(assert (=> b!355735 m!354347))

(declare-fun m!354349 () Bool)

(assert (=> b!355736 m!354349))

(declare-fun m!354351 () Bool)

(assert (=> start!35526 m!354351))

(declare-fun m!354353 () Bool)

(assert (=> start!35526 m!354353))

(declare-fun m!354355 () Bool)

(assert (=> start!35526 m!354355))

(check-sat tp_is_empty!7971 (not b!355736) (not start!35526) (not b!355735) (not mapNonEmpty!13464))
(check-sat)
