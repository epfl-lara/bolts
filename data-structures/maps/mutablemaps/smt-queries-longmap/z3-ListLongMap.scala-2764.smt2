; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40446 () Bool)

(assert start!40446)

(declare-fun mapIsEmpty!19362 () Bool)

(declare-fun mapRes!19362 () Bool)

(assert (=> mapIsEmpty!19362 mapRes!19362))

(declare-fun b!444692 () Bool)

(declare-fun res!263842 () Bool)

(declare-fun e!261476 () Bool)

(assert (=> b!444692 (=> (not res!263842) (not e!261476))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27417 0))(
  ( (array!27418 (arr!13153 (Array (_ BitVec 32) (_ BitVec 64))) (size!13505 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27417)

(assert (=> b!444692 (= res!263842 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13505 _keys!709))))))

(declare-fun b!444693 () Bool)

(declare-fun e!261474 () Bool)

(assert (=> b!444693 (= e!261474 false)))

(declare-fun lt!203523 () Bool)

(declare-fun lt!203522 () array!27417)

(declare-datatypes ((List!7851 0))(
  ( (Nil!7848) (Cons!7847 (h!8703 (_ BitVec 64)) (t!13617 List!7851)) )
))
(declare-fun arrayNoDuplicates!0 (array!27417 (_ BitVec 32) List!7851) Bool)

(assert (=> b!444693 (= lt!203523 (arrayNoDuplicates!0 lt!203522 #b00000000000000000000000000000000 Nil!7848))))

(declare-fun b!444694 () Bool)

(declare-fun res!263840 () Bool)

(assert (=> b!444694 (=> (not res!263840) (not e!261476))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444694 (= res!263840 (validKeyInArray!0 k0!794))))

(declare-fun b!444695 () Bool)

(assert (=> b!444695 (= e!261476 e!261474)))

(declare-fun res!263836 () Bool)

(assert (=> b!444695 (=> (not res!263836) (not e!261474))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27417 (_ BitVec 32)) Bool)

(assert (=> b!444695 (= res!263836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203522 mask!1025))))

(assert (=> b!444695 (= lt!203522 (array!27418 (store (arr!13153 _keys!709) i!563 k0!794) (size!13505 _keys!709)))))

(declare-fun b!444696 () Bool)

(declare-fun res!263837 () Bool)

(assert (=> b!444696 (=> (not res!263837) (not e!261476))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16869 0))(
  ( (V!16870 (val!5956 Int)) )
))
(declare-datatypes ((ValueCell!5568 0))(
  ( (ValueCellFull!5568 (v!8203 V!16869)) (EmptyCell!5568) )
))
(declare-datatypes ((array!27419 0))(
  ( (array!27420 (arr!13154 (Array (_ BitVec 32) ValueCell!5568)) (size!13506 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27419)

(assert (=> b!444696 (= res!263837 (and (= (size!13506 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13505 _keys!709) (size!13506 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444697 () Bool)

(declare-fun res!263839 () Bool)

(assert (=> b!444697 (=> (not res!263839) (not e!261476))))

(assert (=> b!444697 (= res!263839 (or (= (select (arr!13153 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13153 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19362 () Bool)

(declare-fun tp!37344 () Bool)

(declare-fun e!261473 () Bool)

(assert (=> mapNonEmpty!19362 (= mapRes!19362 (and tp!37344 e!261473))))

(declare-fun mapRest!19362 () (Array (_ BitVec 32) ValueCell!5568))

(declare-fun mapValue!19362 () ValueCell!5568)

(declare-fun mapKey!19362 () (_ BitVec 32))

(assert (=> mapNonEmpty!19362 (= (arr!13154 _values!549) (store mapRest!19362 mapKey!19362 mapValue!19362))))

(declare-fun b!444698 () Bool)

(declare-fun e!261472 () Bool)

(declare-fun tp_is_empty!11823 () Bool)

(assert (=> b!444698 (= e!261472 tp_is_empty!11823)))

(declare-fun b!444699 () Bool)

(declare-fun res!263844 () Bool)

(assert (=> b!444699 (=> (not res!263844) (not e!261476))))

(assert (=> b!444699 (= res!263844 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7848))))

(declare-fun b!444700 () Bool)

(assert (=> b!444700 (= e!261473 tp_is_empty!11823)))

(declare-fun b!444702 () Bool)

(declare-fun res!263845 () Bool)

(assert (=> b!444702 (=> (not res!263845) (not e!261476))))

(assert (=> b!444702 (= res!263845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444703 () Bool)

(declare-fun res!263838 () Bool)

(assert (=> b!444703 (=> (not res!263838) (not e!261476))))

(declare-fun arrayContainsKey!0 (array!27417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444703 (= res!263838 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!444704 () Bool)

(declare-fun e!261475 () Bool)

(assert (=> b!444704 (= e!261475 (and e!261472 mapRes!19362))))

(declare-fun condMapEmpty!19362 () Bool)

(declare-fun mapDefault!19362 () ValueCell!5568)

(assert (=> b!444704 (= condMapEmpty!19362 (= (arr!13154 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5568)) mapDefault!19362)))))

(declare-fun res!263841 () Bool)

(assert (=> start!40446 (=> (not res!263841) (not e!261476))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40446 (= res!263841 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13505 _keys!709))))))

(assert (=> start!40446 e!261476))

(assert (=> start!40446 true))

(declare-fun array_inv!9526 (array!27419) Bool)

(assert (=> start!40446 (and (array_inv!9526 _values!549) e!261475)))

(declare-fun array_inv!9527 (array!27417) Bool)

(assert (=> start!40446 (array_inv!9527 _keys!709)))

(declare-fun b!444701 () Bool)

(declare-fun res!263843 () Bool)

(assert (=> b!444701 (=> (not res!263843) (not e!261476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444701 (= res!263843 (validMask!0 mask!1025))))

(assert (= (and start!40446 res!263841) b!444701))

(assert (= (and b!444701 res!263843) b!444696))

(assert (= (and b!444696 res!263837) b!444702))

(assert (= (and b!444702 res!263845) b!444699))

(assert (= (and b!444699 res!263844) b!444692))

(assert (= (and b!444692 res!263842) b!444694))

(assert (= (and b!444694 res!263840) b!444697))

(assert (= (and b!444697 res!263839) b!444703))

(assert (= (and b!444703 res!263838) b!444695))

(assert (= (and b!444695 res!263836) b!444693))

(assert (= (and b!444704 condMapEmpty!19362) mapIsEmpty!19362))

(assert (= (and b!444704 (not condMapEmpty!19362)) mapNonEmpty!19362))

(get-info :version)

(assert (= (and mapNonEmpty!19362 ((_ is ValueCellFull!5568) mapValue!19362)) b!444700))

(assert (= (and b!444704 ((_ is ValueCellFull!5568) mapDefault!19362)) b!444698))

(assert (= start!40446 b!444704))

(declare-fun m!430439 () Bool)

(assert (=> start!40446 m!430439))

(declare-fun m!430441 () Bool)

(assert (=> start!40446 m!430441))

(declare-fun m!430443 () Bool)

(assert (=> b!444702 m!430443))

(declare-fun m!430445 () Bool)

(assert (=> mapNonEmpty!19362 m!430445))

(declare-fun m!430447 () Bool)

(assert (=> b!444694 m!430447))

(declare-fun m!430449 () Bool)

(assert (=> b!444701 m!430449))

(declare-fun m!430451 () Bool)

(assert (=> b!444697 m!430451))

(declare-fun m!430453 () Bool)

(assert (=> b!444695 m!430453))

(declare-fun m!430455 () Bool)

(assert (=> b!444695 m!430455))

(declare-fun m!430457 () Bool)

(assert (=> b!444693 m!430457))

(declare-fun m!430459 () Bool)

(assert (=> b!444699 m!430459))

(declare-fun m!430461 () Bool)

(assert (=> b!444703 m!430461))

(check-sat (not mapNonEmpty!19362) (not b!444703) (not b!444701) (not start!40446) tp_is_empty!11823 (not b!444699) (not b!444702) (not b!444694) (not b!444693) (not b!444695))
(check-sat)
