; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77486 () Bool)

(assert start!77486)

(declare-fun b!902554 () Bool)

(declare-fun e!505571 () Bool)

(declare-fun tp_is_empty!18471 () Bool)

(assert (=> b!902554 (= e!505571 tp_is_empty!18471)))

(declare-fun mapIsEmpty!29416 () Bool)

(declare-fun mapRes!29416 () Bool)

(assert (=> mapIsEmpty!29416 mapRes!29416))

(declare-fun b!902555 () Bool)

(declare-fun e!505567 () Bool)

(assert (=> b!902555 (= e!505567 (and e!505571 mapRes!29416))))

(declare-fun condMapEmpty!29416 () Bool)

(declare-datatypes ((V!29593 0))(
  ( (V!29594 (val!9286 Int)) )
))
(declare-datatypes ((ValueCell!8754 0))(
  ( (ValueCellFull!8754 (v!11791 V!29593)) (EmptyCell!8754) )
))
(declare-datatypes ((array!52994 0))(
  ( (array!52995 (arr!25453 (Array (_ BitVec 32) ValueCell!8754)) (size!25913 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52994)

(declare-fun mapDefault!29416 () ValueCell!8754)

(assert (=> b!902555 (= condMapEmpty!29416 (= (arr!25453 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8754)) mapDefault!29416)))))

(declare-fun b!902556 () Bool)

(declare-fun e!505569 () Bool)

(assert (=> b!902556 (= e!505569 tp_is_empty!18471)))

(declare-fun res!609160 () Bool)

(declare-fun e!505568 () Bool)

(assert (=> start!77486 (=> (not res!609160) (not e!505568))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77486 (= res!609160 (validMask!0 mask!1756))))

(assert (=> start!77486 e!505568))

(assert (=> start!77486 true))

(declare-fun array_inv!19930 (array!52994) Bool)

(assert (=> start!77486 (and (array_inv!19930 _values!1152) e!505567)))

(declare-datatypes ((array!52996 0))(
  ( (array!52997 (arr!25454 (Array (_ BitVec 32) (_ BitVec 64))) (size!25914 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52996)

(declare-fun array_inv!19931 (array!52996) Bool)

(assert (=> start!77486 (array_inv!19931 _keys!1386)))

(declare-fun mapNonEmpty!29416 () Bool)

(declare-fun tp!56476 () Bool)

(assert (=> mapNonEmpty!29416 (= mapRes!29416 (and tp!56476 e!505569))))

(declare-fun mapKey!29416 () (_ BitVec 32))

(declare-fun mapValue!29416 () ValueCell!8754)

(declare-fun mapRest!29416 () (Array (_ BitVec 32) ValueCell!8754))

(assert (=> mapNonEmpty!29416 (= (arr!25453 _values!1152) (store mapRest!29416 mapKey!29416 mapValue!29416))))

(declare-fun b!902557 () Bool)

(assert (=> b!902557 (= e!505568 false)))

(declare-fun lt!407846 () Bool)

(declare-datatypes ((List!17970 0))(
  ( (Nil!17967) (Cons!17966 (h!19112 (_ BitVec 64)) (t!25361 List!17970)) )
))
(declare-fun arrayNoDuplicates!0 (array!52996 (_ BitVec 32) List!17970) Bool)

(assert (=> b!902557 (= lt!407846 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17967))))

(declare-fun b!902558 () Bool)

(declare-fun res!609161 () Bool)

(assert (=> b!902558 (=> (not res!609161) (not e!505568))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902558 (= res!609161 (and (= (size!25913 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25914 _keys!1386) (size!25913 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902559 () Bool)

(declare-fun res!609162 () Bool)

(assert (=> b!902559 (=> (not res!609162) (not e!505568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52996 (_ BitVec 32)) Bool)

(assert (=> b!902559 (= res!609162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77486 res!609160) b!902558))

(assert (= (and b!902558 res!609161) b!902559))

(assert (= (and b!902559 res!609162) b!902557))

(assert (= (and b!902555 condMapEmpty!29416) mapIsEmpty!29416))

(assert (= (and b!902555 (not condMapEmpty!29416)) mapNonEmpty!29416))

(get-info :version)

(assert (= (and mapNonEmpty!29416 ((_ is ValueCellFull!8754) mapValue!29416)) b!902556))

(assert (= (and b!902555 ((_ is ValueCellFull!8754) mapDefault!29416)) b!902554))

(assert (= start!77486 b!902555))

(declare-fun m!838571 () Bool)

(assert (=> start!77486 m!838571))

(declare-fun m!838573 () Bool)

(assert (=> start!77486 m!838573))

(declare-fun m!838575 () Bool)

(assert (=> start!77486 m!838575))

(declare-fun m!838577 () Bool)

(assert (=> mapNonEmpty!29416 m!838577))

(declare-fun m!838579 () Bool)

(assert (=> b!902557 m!838579))

(declare-fun m!838581 () Bool)

(assert (=> b!902559 m!838581))

(check-sat (not start!77486) tp_is_empty!18471 (not b!902557) (not b!902559) (not mapNonEmpty!29416))
(check-sat)
