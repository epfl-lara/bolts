; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38954 () Bool)

(assert start!38954)

(declare-fun b!407444 () Bool)

(declare-fun res!235659 () Bool)

(declare-fun e!244687 () Bool)

(assert (=> b!407444 (=> (not res!235659) (not e!244687))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24585 0))(
  ( (array!24586 (arr!11739 (Array (_ BitVec 32) (_ BitVec 64))) (size!12091 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24585)

(assert (=> b!407444 (= res!235659 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12091 _keys!709))))))

(declare-fun b!407445 () Bool)

(declare-fun res!235655 () Bool)

(assert (=> b!407445 (=> (not res!235655) (not e!244687))))

(assert (=> b!407445 (= res!235655 (or (= (select (arr!11739 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11739 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17169 () Bool)

(declare-fun mapRes!17169 () Bool)

(assert (=> mapIsEmpty!17169 mapRes!17169))

(declare-fun mapNonEmpty!17169 () Bool)

(declare-fun tp!33288 () Bool)

(declare-fun e!244685 () Bool)

(assert (=> mapNonEmpty!17169 (= mapRes!17169 (and tp!33288 e!244685))))

(declare-datatypes ((V!14925 0))(
  ( (V!14926 (val!5227 Int)) )
))
(declare-datatypes ((ValueCell!4839 0))(
  ( (ValueCellFull!4839 (v!7470 V!14925)) (EmptyCell!4839) )
))
(declare-fun mapValue!17169 () ValueCell!4839)

(declare-datatypes ((array!24587 0))(
  ( (array!24588 (arr!11740 (Array (_ BitVec 32) ValueCell!4839)) (size!12092 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24587)

(declare-fun mapKey!17169 () (_ BitVec 32))

(declare-fun mapRest!17169 () (Array (_ BitVec 32) ValueCell!4839))

(assert (=> mapNonEmpty!17169 (= (arr!11740 _values!549) (store mapRest!17169 mapKey!17169 mapValue!17169))))

(declare-fun b!407446 () Bool)

(declare-fun e!244682 () Bool)

(declare-fun tp_is_empty!10365 () Bool)

(assert (=> b!407446 (= e!244682 tp_is_empty!10365)))

(declare-fun b!407447 () Bool)

(declare-fun res!235654 () Bool)

(assert (=> b!407447 (=> (not res!235654) (not e!244687))))

(declare-datatypes ((List!6787 0))(
  ( (Nil!6784) (Cons!6783 (h!7639 (_ BitVec 64)) (t!11969 List!6787)) )
))
(declare-fun arrayNoDuplicates!0 (array!24585 (_ BitVec 32) List!6787) Bool)

(assert (=> b!407447 (= res!235654 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6784))))

(declare-fun res!235657 () Bool)

(assert (=> start!38954 (=> (not res!235657) (not e!244687))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38954 (= res!235657 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12091 _keys!709))))))

(assert (=> start!38954 e!244687))

(assert (=> start!38954 true))

(declare-fun e!244684 () Bool)

(declare-fun array_inv!8572 (array!24587) Bool)

(assert (=> start!38954 (and (array_inv!8572 _values!549) e!244684)))

(declare-fun array_inv!8573 (array!24585) Bool)

(assert (=> start!38954 (array_inv!8573 _keys!709)))

(declare-fun b!407448 () Bool)

(declare-fun res!235653 () Bool)

(assert (=> b!407448 (=> (not res!235653) (not e!244687))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407448 (= res!235653 (validMask!0 mask!1025))))

(declare-fun b!407449 () Bool)

(assert (=> b!407449 (= e!244684 (and e!244682 mapRes!17169))))

(declare-fun condMapEmpty!17169 () Bool)

(declare-fun mapDefault!17169 () ValueCell!4839)

(assert (=> b!407449 (= condMapEmpty!17169 (= (arr!11740 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4839)) mapDefault!17169)))))

(declare-fun b!407450 () Bool)

(declare-fun res!235660 () Bool)

(assert (=> b!407450 (=> (not res!235660) (not e!244687))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407450 (= res!235660 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!407451 () Bool)

(declare-fun e!244683 () Bool)

(assert (=> b!407451 (= e!244687 e!244683)))

(declare-fun res!235662 () Bool)

(assert (=> b!407451 (=> (not res!235662) (not e!244683))))

(declare-fun lt!188636 () array!24585)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24585 (_ BitVec 32)) Bool)

(assert (=> b!407451 (= res!235662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188636 mask!1025))))

(assert (=> b!407451 (= lt!188636 (array!24586 (store (arr!11739 _keys!709) i!563 k0!794) (size!12091 _keys!709)))))

(declare-fun b!407452 () Bool)

(assert (=> b!407452 (= e!244685 tp_is_empty!10365)))

(declare-fun b!407453 () Bool)

(declare-fun res!235656 () Bool)

(assert (=> b!407453 (=> (not res!235656) (not e!244687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407453 (= res!235656 (validKeyInArray!0 k0!794))))

(declare-fun b!407454 () Bool)

(assert (=> b!407454 (= e!244683 false)))

(declare-fun lt!188637 () Bool)

(assert (=> b!407454 (= lt!188637 (arrayNoDuplicates!0 lt!188636 #b00000000000000000000000000000000 Nil!6784))))

(declare-fun b!407455 () Bool)

(declare-fun res!235661 () Bool)

(assert (=> b!407455 (=> (not res!235661) (not e!244687))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407455 (= res!235661 (and (= (size!12092 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12091 _keys!709) (size!12092 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407456 () Bool)

(declare-fun res!235658 () Bool)

(assert (=> b!407456 (=> (not res!235658) (not e!244687))))

(assert (=> b!407456 (= res!235658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!38954 res!235657) b!407448))

(assert (= (and b!407448 res!235653) b!407455))

(assert (= (and b!407455 res!235661) b!407456))

(assert (= (and b!407456 res!235658) b!407447))

(assert (= (and b!407447 res!235654) b!407444))

(assert (= (and b!407444 res!235659) b!407453))

(assert (= (and b!407453 res!235656) b!407445))

(assert (= (and b!407445 res!235655) b!407450))

(assert (= (and b!407450 res!235660) b!407451))

(assert (= (and b!407451 res!235662) b!407454))

(assert (= (and b!407449 condMapEmpty!17169) mapIsEmpty!17169))

(assert (= (and b!407449 (not condMapEmpty!17169)) mapNonEmpty!17169))

(get-info :version)

(assert (= (and mapNonEmpty!17169 ((_ is ValueCellFull!4839) mapValue!17169)) b!407452))

(assert (= (and b!407449 ((_ is ValueCellFull!4839) mapDefault!17169)) b!407446))

(assert (= start!38954 b!407449))

(declare-fun m!399093 () Bool)

(assert (=> start!38954 m!399093))

(declare-fun m!399095 () Bool)

(assert (=> start!38954 m!399095))

(declare-fun m!399097 () Bool)

(assert (=> b!407454 m!399097))

(declare-fun m!399099 () Bool)

(assert (=> mapNonEmpty!17169 m!399099))

(declare-fun m!399101 () Bool)

(assert (=> b!407445 m!399101))

(declare-fun m!399103 () Bool)

(assert (=> b!407447 m!399103))

(declare-fun m!399105 () Bool)

(assert (=> b!407451 m!399105))

(declare-fun m!399107 () Bool)

(assert (=> b!407451 m!399107))

(declare-fun m!399109 () Bool)

(assert (=> b!407456 m!399109))

(declare-fun m!399111 () Bool)

(assert (=> b!407453 m!399111))

(declare-fun m!399113 () Bool)

(assert (=> b!407448 m!399113))

(declare-fun m!399115 () Bool)

(assert (=> b!407450 m!399115))

(check-sat (not b!407453) (not b!407450) (not b!407448) (not start!38954) tp_is_empty!10365 (not b!407456) (not mapNonEmpty!17169) (not b!407454) (not b!407451) (not b!407447))
(check-sat)
