; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39014 () Bool)

(assert start!39014)

(declare-fun b!408614 () Bool)

(declare-fun res!236559 () Bool)

(declare-fun e!245224 () Bool)

(assert (=> b!408614 (=> (not res!236559) (not e!245224))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24705 0))(
  ( (array!24706 (arr!11799 (Array (_ BitVec 32) (_ BitVec 64))) (size!12151 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24705)

(assert (=> b!408614 (= res!236559 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12151 _keys!709))))))

(declare-fun mapNonEmpty!17259 () Bool)

(declare-fun mapRes!17259 () Bool)

(declare-fun tp!33378 () Bool)

(declare-fun e!245223 () Bool)

(assert (=> mapNonEmpty!17259 (= mapRes!17259 (and tp!33378 e!245223))))

(declare-datatypes ((V!15005 0))(
  ( (V!15006 (val!5257 Int)) )
))
(declare-datatypes ((ValueCell!4869 0))(
  ( (ValueCellFull!4869 (v!7500 V!15005)) (EmptyCell!4869) )
))
(declare-datatypes ((array!24707 0))(
  ( (array!24708 (arr!11800 (Array (_ BitVec 32) ValueCell!4869)) (size!12152 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24707)

(declare-fun mapValue!17259 () ValueCell!4869)

(declare-fun mapKey!17259 () (_ BitVec 32))

(declare-fun mapRest!17259 () (Array (_ BitVec 32) ValueCell!4869))

(assert (=> mapNonEmpty!17259 (= (arr!11800 _values!549) (store mapRest!17259 mapKey!17259 mapValue!17259))))

(declare-fun b!408616 () Bool)

(declare-fun e!245226 () Bool)

(assert (=> b!408616 (= e!245224 e!245226)))

(declare-fun res!236557 () Bool)

(assert (=> b!408616 (=> (not res!236557) (not e!245226))))

(declare-fun lt!188817 () array!24705)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24705 (_ BitVec 32)) Bool)

(assert (=> b!408616 (= res!236557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188817 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!408616 (= lt!188817 (array!24706 (store (arr!11799 _keys!709) i!563 k0!794) (size!12151 _keys!709)))))

(declare-fun b!408617 () Bool)

(declare-fun res!236561 () Bool)

(assert (=> b!408617 (=> (not res!236561) (not e!245224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408617 (= res!236561 (validMask!0 mask!1025))))

(declare-fun b!408618 () Bool)

(declare-fun res!236556 () Bool)

(assert (=> b!408618 (=> (not res!236556) (not e!245224))))

(declare-datatypes ((List!6814 0))(
  ( (Nil!6811) (Cons!6810 (h!7666 (_ BitVec 64)) (t!11996 List!6814)) )
))
(declare-fun arrayNoDuplicates!0 (array!24705 (_ BitVec 32) List!6814) Bool)

(assert (=> b!408618 (= res!236556 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6811))))

(declare-fun b!408619 () Bool)

(declare-fun e!245225 () Bool)

(declare-fun tp_is_empty!10425 () Bool)

(assert (=> b!408619 (= e!245225 tp_is_empty!10425)))

(declare-fun b!408620 () Bool)

(declare-fun res!236558 () Bool)

(assert (=> b!408620 (=> (not res!236558) (not e!245224))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408620 (= res!236558 (and (= (size!12152 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12151 _keys!709) (size!12152 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408621 () Bool)

(assert (=> b!408621 (= e!245223 tp_is_empty!10425)))

(declare-fun b!408622 () Bool)

(declare-fun res!236554 () Bool)

(assert (=> b!408622 (=> (not res!236554) (not e!245224))))

(declare-fun arrayContainsKey!0 (array!24705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408622 (= res!236554 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17259 () Bool)

(assert (=> mapIsEmpty!17259 mapRes!17259))

(declare-fun b!408615 () Bool)

(assert (=> b!408615 (= e!245226 false)))

(declare-fun lt!188816 () Bool)

(assert (=> b!408615 (= lt!188816 (arrayNoDuplicates!0 lt!188817 #b00000000000000000000000000000000 Nil!6811))))

(declare-fun res!236553 () Bool)

(assert (=> start!39014 (=> (not res!236553) (not e!245224))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39014 (= res!236553 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12151 _keys!709))))))

(assert (=> start!39014 e!245224))

(assert (=> start!39014 true))

(declare-fun e!245227 () Bool)

(declare-fun array_inv!8618 (array!24707) Bool)

(assert (=> start!39014 (and (array_inv!8618 _values!549) e!245227)))

(declare-fun array_inv!8619 (array!24705) Bool)

(assert (=> start!39014 (array_inv!8619 _keys!709)))

(declare-fun b!408623 () Bool)

(declare-fun res!236562 () Bool)

(assert (=> b!408623 (=> (not res!236562) (not e!245224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408623 (= res!236562 (validKeyInArray!0 k0!794))))

(declare-fun b!408624 () Bool)

(declare-fun res!236560 () Bool)

(assert (=> b!408624 (=> (not res!236560) (not e!245224))))

(assert (=> b!408624 (= res!236560 (or (= (select (arr!11799 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11799 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408625 () Bool)

(assert (=> b!408625 (= e!245227 (and e!245225 mapRes!17259))))

(declare-fun condMapEmpty!17259 () Bool)

(declare-fun mapDefault!17259 () ValueCell!4869)

(assert (=> b!408625 (= condMapEmpty!17259 (= (arr!11800 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4869)) mapDefault!17259)))))

(declare-fun b!408626 () Bool)

(declare-fun res!236555 () Bool)

(assert (=> b!408626 (=> (not res!236555) (not e!245224))))

(assert (=> b!408626 (= res!236555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39014 res!236553) b!408617))

(assert (= (and b!408617 res!236561) b!408620))

(assert (= (and b!408620 res!236558) b!408626))

(assert (= (and b!408626 res!236555) b!408618))

(assert (= (and b!408618 res!236556) b!408614))

(assert (= (and b!408614 res!236559) b!408623))

(assert (= (and b!408623 res!236562) b!408624))

(assert (= (and b!408624 res!236560) b!408622))

(assert (= (and b!408622 res!236554) b!408616))

(assert (= (and b!408616 res!236557) b!408615))

(assert (= (and b!408625 condMapEmpty!17259) mapIsEmpty!17259))

(assert (= (and b!408625 (not condMapEmpty!17259)) mapNonEmpty!17259))

(get-info :version)

(assert (= (and mapNonEmpty!17259 ((_ is ValueCellFull!4869) mapValue!17259)) b!408621))

(assert (= (and b!408625 ((_ is ValueCellFull!4869) mapDefault!17259)) b!408619))

(assert (= start!39014 b!408625))

(declare-fun m!399813 () Bool)

(assert (=> b!408616 m!399813))

(declare-fun m!399815 () Bool)

(assert (=> b!408616 m!399815))

(declare-fun m!399817 () Bool)

(assert (=> b!408618 m!399817))

(declare-fun m!399819 () Bool)

(assert (=> b!408626 m!399819))

(declare-fun m!399821 () Bool)

(assert (=> b!408622 m!399821))

(declare-fun m!399823 () Bool)

(assert (=> b!408623 m!399823))

(declare-fun m!399825 () Bool)

(assert (=> b!408617 m!399825))

(declare-fun m!399827 () Bool)

(assert (=> start!39014 m!399827))

(declare-fun m!399829 () Bool)

(assert (=> start!39014 m!399829))

(declare-fun m!399831 () Bool)

(assert (=> b!408624 m!399831))

(declare-fun m!399833 () Bool)

(assert (=> b!408615 m!399833))

(declare-fun m!399835 () Bool)

(assert (=> mapNonEmpty!17259 m!399835))

(check-sat (not b!408626) (not b!408623) tp_is_empty!10425 (not b!408617) (not start!39014) (not b!408622) (not b!408618) (not b!408615) (not mapNonEmpty!17259) (not b!408616))
(check-sat)
