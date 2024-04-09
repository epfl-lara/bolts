; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38258 () Bool)

(assert start!38258)

(declare-fun b!394471 () Bool)

(declare-fun e!238808 () Bool)

(declare-fun tp_is_empty!9759 () Bool)

(assert (=> b!394471 (= e!238808 tp_is_empty!9759)))

(declare-datatypes ((array!23401 0))(
  ( (array!23402 (arr!11154 (Array (_ BitVec 32) (_ BitVec 64))) (size!11506 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23401)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14117 0))(
  ( (V!14118 (val!4924 Int)) )
))
(declare-datatypes ((ValueCell!4536 0))(
  ( (ValueCellFull!4536 (v!7165 V!14117)) (EmptyCell!4536) )
))
(declare-datatypes ((array!23403 0))(
  ( (array!23404 (arr!11155 (Array (_ BitVec 32) ValueCell!4536)) (size!11507 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23403)

(declare-fun b!394472 () Bool)

(declare-fun e!238807 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394472 (= e!238807 (and (= (size!11507 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11506 _keys!709) (size!11507 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011) (= (size!11506 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025)) (bvsgt #b00000000000000000000000000000000 (size!11506 _keys!709))))))

(declare-fun mapIsEmpty!16239 () Bool)

(declare-fun mapRes!16239 () Bool)

(assert (=> mapIsEmpty!16239 mapRes!16239))

(declare-fun b!394473 () Bool)

(declare-fun res!226184 () Bool)

(assert (=> b!394473 (=> (not res!226184) (not e!238807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394473 (= res!226184 (validMask!0 mask!1025))))

(declare-fun res!226183 () Bool)

(assert (=> start!38258 (=> (not res!226183) (not e!238807))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38258 (= res!226183 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11506 _keys!709))))))

(assert (=> start!38258 e!238807))

(assert (=> start!38258 true))

(declare-fun e!238809 () Bool)

(declare-fun array_inv!8164 (array!23403) Bool)

(assert (=> start!38258 (and (array_inv!8164 _values!549) e!238809)))

(declare-fun array_inv!8165 (array!23401) Bool)

(assert (=> start!38258 (array_inv!8165 _keys!709)))

(declare-fun b!394474 () Bool)

(assert (=> b!394474 (= e!238809 (and e!238808 mapRes!16239))))

(declare-fun condMapEmpty!16239 () Bool)

(declare-fun mapDefault!16239 () ValueCell!4536)

(assert (=> b!394474 (= condMapEmpty!16239 (= (arr!11155 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4536)) mapDefault!16239)))))

(declare-fun b!394475 () Bool)

(declare-fun e!238806 () Bool)

(assert (=> b!394475 (= e!238806 tp_is_empty!9759)))

(declare-fun mapNonEmpty!16239 () Bool)

(declare-fun tp!32034 () Bool)

(assert (=> mapNonEmpty!16239 (= mapRes!16239 (and tp!32034 e!238806))))

(declare-fun mapValue!16239 () ValueCell!4536)

(declare-fun mapRest!16239 () (Array (_ BitVec 32) ValueCell!4536))

(declare-fun mapKey!16239 () (_ BitVec 32))

(assert (=> mapNonEmpty!16239 (= (arr!11155 _values!549) (store mapRest!16239 mapKey!16239 mapValue!16239))))

(assert (= (and start!38258 res!226183) b!394473))

(assert (= (and b!394473 res!226184) b!394472))

(assert (= (and b!394474 condMapEmpty!16239) mapIsEmpty!16239))

(assert (= (and b!394474 (not condMapEmpty!16239)) mapNonEmpty!16239))

(get-info :version)

(assert (= (and mapNonEmpty!16239 ((_ is ValueCellFull!4536) mapValue!16239)) b!394475))

(assert (= (and b!394474 ((_ is ValueCellFull!4536) mapDefault!16239)) b!394471))

(assert (= start!38258 b!394474))

(declare-fun m!390917 () Bool)

(assert (=> b!394473 m!390917))

(declare-fun m!390919 () Bool)

(assert (=> start!38258 m!390919))

(declare-fun m!390921 () Bool)

(assert (=> start!38258 m!390921))

(declare-fun m!390923 () Bool)

(assert (=> mapNonEmpty!16239 m!390923))

(check-sat (not b!394473) (not start!38258) (not mapNonEmpty!16239) tp_is_empty!9759)
(check-sat)
