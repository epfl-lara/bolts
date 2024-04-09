; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38456 () Bool)

(assert start!38456)

(declare-fun mapNonEmpty!16422 () Bool)

(declare-fun mapRes!16422 () Bool)

(declare-fun tp!32217 () Bool)

(declare-fun e!239876 () Bool)

(assert (=> mapNonEmpty!16422 (= mapRes!16422 (and tp!32217 e!239876))))

(declare-datatypes ((V!14261 0))(
  ( (V!14262 (val!4978 Int)) )
))
(declare-datatypes ((ValueCell!4590 0))(
  ( (ValueCellFull!4590 (v!7221 V!14261)) (EmptyCell!4590) )
))
(declare-fun mapValue!16422 () ValueCell!4590)

(declare-datatypes ((array!23621 0))(
  ( (array!23622 (arr!11257 (Array (_ BitVec 32) ValueCell!4590)) (size!11609 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23621)

(declare-fun mapKey!16422 () (_ BitVec 32))

(declare-fun mapRest!16422 () (Array (_ BitVec 32) ValueCell!4590))

(assert (=> mapNonEmpty!16422 (= (arr!11257 _values!549) (store mapRest!16422 mapKey!16422 mapValue!16422))))

(declare-fun b!396437 () Bool)

(declare-fun res!227542 () Bool)

(declare-fun e!239881 () Bool)

(assert (=> b!396437 (=> (not res!227542) (not e!239881))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396437 (= res!227542 (validMask!0 mask!1025))))

(declare-fun b!396438 () Bool)

(declare-fun e!239880 () Bool)

(assert (=> b!396438 (= e!239881 e!239880)))

(declare-fun res!227543 () Bool)

(assert (=> b!396438 (=> (not res!227543) (not e!239880))))

(declare-datatypes ((array!23623 0))(
  ( (array!23624 (arr!11258 (Array (_ BitVec 32) (_ BitVec 64))) (size!11610 (_ BitVec 32))) )
))
(declare-fun lt!187143 () array!23623)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23623 (_ BitVec 32)) Bool)

(assert (=> b!396438 (= res!227543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187143 mask!1025))))

(declare-fun _keys!709 () array!23623)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396438 (= lt!187143 (array!23624 (store (arr!11258 _keys!709) i!563 k0!794) (size!11610 _keys!709)))))

(declare-fun b!396439 () Bool)

(declare-fun e!239878 () Bool)

(declare-fun e!239877 () Bool)

(assert (=> b!396439 (= e!239878 (and e!239877 mapRes!16422))))

(declare-fun condMapEmpty!16422 () Bool)

(declare-fun mapDefault!16422 () ValueCell!4590)

(assert (=> b!396439 (= condMapEmpty!16422 (= (arr!11257 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4590)) mapDefault!16422)))))

(declare-fun b!396440 () Bool)

(declare-fun res!227540 () Bool)

(assert (=> b!396440 (=> (not res!227540) (not e!239881))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396440 (= res!227540 (and (= (size!11609 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11610 _keys!709) (size!11609 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396441 () Bool)

(declare-fun tp_is_empty!9867 () Bool)

(assert (=> b!396441 (= e!239877 tp_is_empty!9867)))

(declare-fun b!396442 () Bool)

(declare-fun res!227536 () Bool)

(assert (=> b!396442 (=> (not res!227536) (not e!239881))))

(assert (=> b!396442 (= res!227536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396443 () Bool)

(declare-fun res!227535 () Bool)

(assert (=> b!396443 (=> (not res!227535) (not e!239881))))

(declare-datatypes ((List!6495 0))(
  ( (Nil!6492) (Cons!6491 (h!7347 (_ BitVec 64)) (t!11677 List!6495)) )
))
(declare-fun arrayNoDuplicates!0 (array!23623 (_ BitVec 32) List!6495) Bool)

(assert (=> b!396443 (= res!227535 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6492))))

(declare-fun res!227538 () Bool)

(assert (=> start!38456 (=> (not res!227538) (not e!239881))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38456 (= res!227538 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11610 _keys!709))))))

(assert (=> start!38456 e!239881))

(assert (=> start!38456 true))

(declare-fun array_inv!8242 (array!23621) Bool)

(assert (=> start!38456 (and (array_inv!8242 _values!549) e!239878)))

(declare-fun array_inv!8243 (array!23623) Bool)

(assert (=> start!38456 (array_inv!8243 _keys!709)))

(declare-fun b!396444 () Bool)

(declare-fun res!227544 () Bool)

(assert (=> b!396444 (=> (not res!227544) (not e!239881))))

(assert (=> b!396444 (= res!227544 (or (= (select (arr!11258 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11258 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396445 () Bool)

(declare-fun res!227539 () Bool)

(assert (=> b!396445 (=> (not res!227539) (not e!239881))))

(assert (=> b!396445 (= res!227539 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11610 _keys!709))))))

(declare-fun b!396446 () Bool)

(assert (=> b!396446 (= e!239880 false)))

(declare-fun lt!187142 () Bool)

(assert (=> b!396446 (= lt!187142 (arrayNoDuplicates!0 lt!187143 #b00000000000000000000000000000000 Nil!6492))))

(declare-fun b!396447 () Bool)

(declare-fun res!227541 () Bool)

(assert (=> b!396447 (=> (not res!227541) (not e!239881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396447 (= res!227541 (validKeyInArray!0 k0!794))))

(declare-fun b!396448 () Bool)

(assert (=> b!396448 (= e!239876 tp_is_empty!9867)))

(declare-fun mapIsEmpty!16422 () Bool)

(assert (=> mapIsEmpty!16422 mapRes!16422))

(declare-fun b!396449 () Bool)

(declare-fun res!227537 () Bool)

(assert (=> b!396449 (=> (not res!227537) (not e!239881))))

(declare-fun arrayContainsKey!0 (array!23623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396449 (= res!227537 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!38456 res!227538) b!396437))

(assert (= (and b!396437 res!227542) b!396440))

(assert (= (and b!396440 res!227540) b!396442))

(assert (= (and b!396442 res!227536) b!396443))

(assert (= (and b!396443 res!227535) b!396445))

(assert (= (and b!396445 res!227539) b!396447))

(assert (= (and b!396447 res!227541) b!396444))

(assert (= (and b!396444 res!227544) b!396449))

(assert (= (and b!396449 res!227537) b!396438))

(assert (= (and b!396438 res!227543) b!396446))

(assert (= (and b!396439 condMapEmpty!16422) mapIsEmpty!16422))

(assert (= (and b!396439 (not condMapEmpty!16422)) mapNonEmpty!16422))

(get-info :version)

(assert (= (and mapNonEmpty!16422 ((_ is ValueCellFull!4590) mapValue!16422)) b!396448))

(assert (= (and b!396439 ((_ is ValueCellFull!4590) mapDefault!16422)) b!396441))

(assert (= start!38456 b!396439))

(declare-fun m!392037 () Bool)

(assert (=> start!38456 m!392037))

(declare-fun m!392039 () Bool)

(assert (=> start!38456 m!392039))

(declare-fun m!392041 () Bool)

(assert (=> b!396443 m!392041))

(declare-fun m!392043 () Bool)

(assert (=> b!396437 m!392043))

(declare-fun m!392045 () Bool)

(assert (=> b!396444 m!392045))

(declare-fun m!392047 () Bool)

(assert (=> mapNonEmpty!16422 m!392047))

(declare-fun m!392049 () Bool)

(assert (=> b!396449 m!392049))

(declare-fun m!392051 () Bool)

(assert (=> b!396442 m!392051))

(declare-fun m!392053 () Bool)

(assert (=> b!396446 m!392053))

(declare-fun m!392055 () Bool)

(assert (=> b!396438 m!392055))

(declare-fun m!392057 () Bool)

(assert (=> b!396438 m!392057))

(declare-fun m!392059 () Bool)

(assert (=> b!396447 m!392059))

(check-sat (not b!396447) tp_is_empty!9867 (not start!38456) (not b!396443) (not b!396449) (not b!396437) (not b!396438) (not b!396446) (not b!396442) (not mapNonEmpty!16422))
(check-sat)
