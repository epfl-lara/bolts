; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40596 () Bool)

(assert start!40596)

(declare-fun b_free!10599 () Bool)

(declare-fun b_next!10599 () Bool)

(assert (=> start!40596 (= b_free!10599 (not b_next!10599))))

(declare-fun tp!37616 () Bool)

(declare-fun b_and!18625 () Bool)

(assert (=> start!40596 (= tp!37616 b_and!18625)))

(declare-fun b!447452 () Bool)

(declare-fun res!265861 () Bool)

(declare-fun e!262703 () Bool)

(assert (=> b!447452 (=> (not res!265861) (not e!262703))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447452 (= res!265861 (bvsle from!863 i!563))))

(declare-fun b!447453 () Bool)

(declare-fun res!265864 () Bool)

(declare-fun e!262702 () Bool)

(assert (=> b!447453 (=> (not res!265864) (not e!262702))))

(declare-datatypes ((array!27641 0))(
  ( (array!27642 (arr!13263 (Array (_ BitVec 32) (_ BitVec 64))) (size!13615 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27641)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447453 (= res!265864 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!265857 () Bool)

(assert (=> start!40596 (=> (not res!265857) (not e!262702))))

(assert (=> start!40596 (= res!265857 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13615 _keys!709))))))

(assert (=> start!40596 e!262702))

(declare-fun tp_is_empty!11937 () Bool)

(assert (=> start!40596 tp_is_empty!11937))

(assert (=> start!40596 tp!37616))

(assert (=> start!40596 true))

(declare-datatypes ((V!17021 0))(
  ( (V!17022 (val!6013 Int)) )
))
(declare-datatypes ((ValueCell!5625 0))(
  ( (ValueCellFull!5625 (v!8264 V!17021)) (EmptyCell!5625) )
))
(declare-datatypes ((array!27643 0))(
  ( (array!27644 (arr!13264 (Array (_ BitVec 32) ValueCell!5625)) (size!13616 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27643)

(declare-fun e!262704 () Bool)

(declare-fun array_inv!9604 (array!27643) Bool)

(assert (=> start!40596 (and (array_inv!9604 _values!549) e!262704)))

(declare-fun array_inv!9605 (array!27641) Bool)

(assert (=> start!40596 (array_inv!9605 _keys!709)))

(declare-fun mapIsEmpty!19539 () Bool)

(declare-fun mapRes!19539 () Bool)

(assert (=> mapIsEmpty!19539 mapRes!19539))

(declare-fun b!447454 () Bool)

(assert (=> b!447454 (= e!262702 e!262703)))

(declare-fun res!265866 () Bool)

(assert (=> b!447454 (=> (not res!265866) (not e!262703))))

(declare-fun lt!203969 () array!27641)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27641 (_ BitVec 32)) Bool)

(assert (=> b!447454 (= res!265866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203969 mask!1025))))

(assert (=> b!447454 (= lt!203969 (array!27642 (store (arr!13263 _keys!709) i!563 k0!794) (size!13615 _keys!709)))))

(declare-fun b!447455 () Bool)

(declare-fun res!265860 () Bool)

(assert (=> b!447455 (=> (not res!265860) (not e!262702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447455 (= res!265860 (validMask!0 mask!1025))))

(declare-fun b!447456 () Bool)

(declare-fun e!262705 () Bool)

(assert (=> b!447456 (= e!262705 tp_is_empty!11937)))

(declare-fun b!447457 () Bool)

(declare-fun res!265863 () Bool)

(assert (=> b!447457 (=> (not res!265863) (not e!262702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447457 (= res!265863 (validKeyInArray!0 k0!794))))

(declare-fun b!447458 () Bool)

(declare-fun res!265862 () Bool)

(assert (=> b!447458 (=> (not res!265862) (not e!262703))))

(declare-datatypes ((List!7922 0))(
  ( (Nil!7919) (Cons!7918 (h!8774 (_ BitVec 64)) (t!13692 List!7922)) )
))
(declare-fun arrayNoDuplicates!0 (array!27641 (_ BitVec 32) List!7922) Bool)

(assert (=> b!447458 (= res!265862 (arrayNoDuplicates!0 lt!203969 #b00000000000000000000000000000000 Nil!7919))))

(declare-fun b!447459 () Bool)

(assert (=> b!447459 (= e!262703 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17021)

(declare-fun v!412 () V!17021)

(declare-fun minValue!515 () V!17021)

(declare-datatypes ((tuple2!7812 0))(
  ( (tuple2!7813 (_1!3916 (_ BitVec 64)) (_2!3916 V!17021)) )
))
(declare-datatypes ((List!7923 0))(
  ( (Nil!7920) (Cons!7919 (h!8775 tuple2!7812) (t!13693 List!7923)) )
))
(declare-datatypes ((ListLongMap!6739 0))(
  ( (ListLongMap!6740 (toList!3385 List!7923)) )
))
(declare-fun lt!203970 () ListLongMap!6739)

(declare-fun getCurrentListMapNoExtraKeys!1565 (array!27641 array!27643 (_ BitVec 32) (_ BitVec 32) V!17021 V!17021 (_ BitVec 32) Int) ListLongMap!6739)

(assert (=> b!447459 (= lt!203970 (getCurrentListMapNoExtraKeys!1565 lt!203969 (array!27644 (store (arr!13264 _values!549) i!563 (ValueCellFull!5625 v!412)) (size!13616 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203971 () ListLongMap!6739)

(assert (=> b!447459 (= lt!203971 (getCurrentListMapNoExtraKeys!1565 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447460 () Bool)

(declare-fun e!262707 () Bool)

(assert (=> b!447460 (= e!262707 tp_is_empty!11937)))

(declare-fun b!447461 () Bool)

(assert (=> b!447461 (= e!262704 (and e!262705 mapRes!19539))))

(declare-fun condMapEmpty!19539 () Bool)

(declare-fun mapDefault!19539 () ValueCell!5625)

(assert (=> b!447461 (= condMapEmpty!19539 (= (arr!13264 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5625)) mapDefault!19539)))))

(declare-fun b!447462 () Bool)

(declare-fun res!265858 () Bool)

(assert (=> b!447462 (=> (not res!265858) (not e!262702))))

(assert (=> b!447462 (= res!265858 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13615 _keys!709))))))

(declare-fun mapNonEmpty!19539 () Bool)

(declare-fun tp!37617 () Bool)

(assert (=> mapNonEmpty!19539 (= mapRes!19539 (and tp!37617 e!262707))))

(declare-fun mapRest!19539 () (Array (_ BitVec 32) ValueCell!5625))

(declare-fun mapKey!19539 () (_ BitVec 32))

(declare-fun mapValue!19539 () ValueCell!5625)

(assert (=> mapNonEmpty!19539 (= (arr!13264 _values!549) (store mapRest!19539 mapKey!19539 mapValue!19539))))

(declare-fun b!447463 () Bool)

(declare-fun res!265856 () Bool)

(assert (=> b!447463 (=> (not res!265856) (not e!262702))))

(assert (=> b!447463 (= res!265856 (or (= (select (arr!13263 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13263 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447464 () Bool)

(declare-fun res!265865 () Bool)

(assert (=> b!447464 (=> (not res!265865) (not e!262702))))

(assert (=> b!447464 (= res!265865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447465 () Bool)

(declare-fun res!265859 () Bool)

(assert (=> b!447465 (=> (not res!265859) (not e!262702))))

(assert (=> b!447465 (= res!265859 (and (= (size!13616 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13615 _keys!709) (size!13616 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447466 () Bool)

(declare-fun res!265855 () Bool)

(assert (=> b!447466 (=> (not res!265855) (not e!262702))))

(assert (=> b!447466 (= res!265855 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7919))))

(assert (= (and start!40596 res!265857) b!447455))

(assert (= (and b!447455 res!265860) b!447465))

(assert (= (and b!447465 res!265859) b!447464))

(assert (= (and b!447464 res!265865) b!447466))

(assert (= (and b!447466 res!265855) b!447462))

(assert (= (and b!447462 res!265858) b!447457))

(assert (= (and b!447457 res!265863) b!447463))

(assert (= (and b!447463 res!265856) b!447453))

(assert (= (and b!447453 res!265864) b!447454))

(assert (= (and b!447454 res!265866) b!447458))

(assert (= (and b!447458 res!265862) b!447452))

(assert (= (and b!447452 res!265861) b!447459))

(assert (= (and b!447461 condMapEmpty!19539) mapIsEmpty!19539))

(assert (= (and b!447461 (not condMapEmpty!19539)) mapNonEmpty!19539))

(get-info :version)

(assert (= (and mapNonEmpty!19539 ((_ is ValueCellFull!5625) mapValue!19539)) b!447460))

(assert (= (and b!447461 ((_ is ValueCellFull!5625) mapDefault!19539)) b!447456))

(assert (= start!40596 b!447461))

(declare-fun m!432305 () Bool)

(assert (=> b!447464 m!432305))

(declare-fun m!432307 () Bool)

(assert (=> mapNonEmpty!19539 m!432307))

(declare-fun m!432309 () Bool)

(assert (=> b!447453 m!432309))

(declare-fun m!432311 () Bool)

(assert (=> b!447458 m!432311))

(declare-fun m!432313 () Bool)

(assert (=> b!447457 m!432313))

(declare-fun m!432315 () Bool)

(assert (=> b!447463 m!432315))

(declare-fun m!432317 () Bool)

(assert (=> start!40596 m!432317))

(declare-fun m!432319 () Bool)

(assert (=> start!40596 m!432319))

(declare-fun m!432321 () Bool)

(assert (=> b!447455 m!432321))

(declare-fun m!432323 () Bool)

(assert (=> b!447454 m!432323))

(declare-fun m!432325 () Bool)

(assert (=> b!447454 m!432325))

(declare-fun m!432327 () Bool)

(assert (=> b!447466 m!432327))

(declare-fun m!432329 () Bool)

(assert (=> b!447459 m!432329))

(declare-fun m!432331 () Bool)

(assert (=> b!447459 m!432331))

(declare-fun m!432333 () Bool)

(assert (=> b!447459 m!432333))

(check-sat (not b!447457) (not b!447453) (not b_next!10599) (not b!447466) (not b!447454) (not start!40596) b_and!18625 (not b!447458) (not b!447455) (not b!447459) (not b!447464) (not mapNonEmpty!19539) tp_is_empty!11937)
(check-sat b_and!18625 (not b_next!10599))
