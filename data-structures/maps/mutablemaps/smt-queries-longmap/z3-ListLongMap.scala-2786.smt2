; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40614 () Bool)

(assert start!40614)

(declare-fun b_free!10617 () Bool)

(declare-fun b_next!10617 () Bool)

(assert (=> start!40614 (= b_free!10617 (not b_next!10617))))

(declare-fun tp!37671 () Bool)

(declare-fun b_and!18643 () Bool)

(assert (=> start!40614 (= tp!37671 b_and!18643)))

(declare-fun b!447857 () Bool)

(declare-fun res!266190 () Bool)

(declare-fun e!262867 () Bool)

(assert (=> b!447857 (=> (not res!266190) (not e!262867))))

(declare-datatypes ((array!27677 0))(
  ( (array!27678 (arr!13281 (Array (_ BitVec 32) (_ BitVec 64))) (size!13633 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27677)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27677 (_ BitVec 32)) Bool)

(assert (=> b!447857 (= res!266190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19566 () Bool)

(declare-fun mapRes!19566 () Bool)

(assert (=> mapIsEmpty!19566 mapRes!19566))

(declare-fun b!447858 () Bool)

(declare-fun res!266180 () Bool)

(assert (=> b!447858 (=> (not res!266180) (not e!262867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447858 (= res!266180 (validMask!0 mask!1025))))

(declare-fun b!447860 () Bool)

(declare-fun e!262866 () Bool)

(declare-fun e!262865 () Bool)

(assert (=> b!447860 (= e!262866 (and e!262865 mapRes!19566))))

(declare-fun condMapEmpty!19566 () Bool)

(declare-datatypes ((V!17045 0))(
  ( (V!17046 (val!6022 Int)) )
))
(declare-datatypes ((ValueCell!5634 0))(
  ( (ValueCellFull!5634 (v!8273 V!17045)) (EmptyCell!5634) )
))
(declare-datatypes ((array!27679 0))(
  ( (array!27680 (arr!13282 (Array (_ BitVec 32) ValueCell!5634)) (size!13634 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27679)

(declare-fun mapDefault!19566 () ValueCell!5634)

(assert (=> b!447860 (= condMapEmpty!19566 (= (arr!13282 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5634)) mapDefault!19566)))))

(declare-fun b!447861 () Bool)

(declare-fun res!266183 () Bool)

(assert (=> b!447861 (=> (not res!266183) (not e!262867))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!447861 (= res!266183 (and (= (size!13634 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13633 _keys!709) (size!13634 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447862 () Bool)

(declare-fun res!266181 () Bool)

(assert (=> b!447862 (=> (not res!266181) (not e!262867))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447862 (= res!266181 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!447863 () Bool)

(declare-fun e!262869 () Bool)

(declare-fun tp_is_empty!11955 () Bool)

(assert (=> b!447863 (= e!262869 tp_is_empty!11955)))

(declare-fun mapNonEmpty!19566 () Bool)

(declare-fun tp!37670 () Bool)

(assert (=> mapNonEmpty!19566 (= mapRes!19566 (and tp!37670 e!262869))))

(declare-fun mapValue!19566 () ValueCell!5634)

(declare-fun mapRest!19566 () (Array (_ BitVec 32) ValueCell!5634))

(declare-fun mapKey!19566 () (_ BitVec 32))

(assert (=> mapNonEmpty!19566 (= (arr!13282 _values!549) (store mapRest!19566 mapKey!19566 mapValue!19566))))

(declare-fun b!447864 () Bool)

(declare-fun res!266182 () Bool)

(assert (=> b!447864 (=> (not res!266182) (not e!262867))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447864 (= res!266182 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13633 _keys!709))))))

(declare-fun b!447865 () Bool)

(declare-fun e!262868 () Bool)

(assert (=> b!447865 (= e!262868 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17045)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!204051 () array!27677)

(declare-fun v!412 () V!17045)

(declare-fun zeroValue!515 () V!17045)

(declare-datatypes ((tuple2!7828 0))(
  ( (tuple2!7829 (_1!3924 (_ BitVec 64)) (_2!3924 V!17045)) )
))
(declare-datatypes ((List!7938 0))(
  ( (Nil!7935) (Cons!7934 (h!8790 tuple2!7828) (t!13708 List!7938)) )
))
(declare-datatypes ((ListLongMap!6755 0))(
  ( (ListLongMap!6756 (toList!3393 List!7938)) )
))
(declare-fun lt!204052 () ListLongMap!6755)

(declare-fun getCurrentListMapNoExtraKeys!1573 (array!27677 array!27679 (_ BitVec 32) (_ BitVec 32) V!17045 V!17045 (_ BitVec 32) Int) ListLongMap!6755)

(assert (=> b!447865 (= lt!204052 (getCurrentListMapNoExtraKeys!1573 lt!204051 (array!27680 (store (arr!13282 _values!549) i!563 (ValueCellFull!5634 v!412)) (size!13634 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204050 () ListLongMap!6755)

(assert (=> b!447865 (= lt!204050 (getCurrentListMapNoExtraKeys!1573 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447866 () Bool)

(declare-fun res!266179 () Bool)

(assert (=> b!447866 (=> (not res!266179) (not e!262868))))

(declare-datatypes ((List!7939 0))(
  ( (Nil!7936) (Cons!7935 (h!8791 (_ BitVec 64)) (t!13709 List!7939)) )
))
(declare-fun arrayNoDuplicates!0 (array!27677 (_ BitVec 32) List!7939) Bool)

(assert (=> b!447866 (= res!266179 (arrayNoDuplicates!0 lt!204051 #b00000000000000000000000000000000 Nil!7936))))

(declare-fun b!447867 () Bool)

(declare-fun res!266189 () Bool)

(assert (=> b!447867 (=> (not res!266189) (not e!262867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447867 (= res!266189 (validKeyInArray!0 k0!794))))

(declare-fun res!266187 () Bool)

(assert (=> start!40614 (=> (not res!266187) (not e!262867))))

(assert (=> start!40614 (= res!266187 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13633 _keys!709))))))

(assert (=> start!40614 e!262867))

(assert (=> start!40614 tp_is_empty!11955))

(assert (=> start!40614 tp!37671))

(assert (=> start!40614 true))

(declare-fun array_inv!9620 (array!27679) Bool)

(assert (=> start!40614 (and (array_inv!9620 _values!549) e!262866)))

(declare-fun array_inv!9621 (array!27677) Bool)

(assert (=> start!40614 (array_inv!9621 _keys!709)))

(declare-fun b!447859 () Bool)

(declare-fun res!266188 () Bool)

(assert (=> b!447859 (=> (not res!266188) (not e!262868))))

(assert (=> b!447859 (= res!266188 (bvsle from!863 i!563))))

(declare-fun b!447868 () Bool)

(assert (=> b!447868 (= e!262865 tp_is_empty!11955)))

(declare-fun b!447869 () Bool)

(declare-fun res!266186 () Bool)

(assert (=> b!447869 (=> (not res!266186) (not e!262867))))

(assert (=> b!447869 (= res!266186 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7936))))

(declare-fun b!447870 () Bool)

(assert (=> b!447870 (= e!262867 e!262868)))

(declare-fun res!266185 () Bool)

(assert (=> b!447870 (=> (not res!266185) (not e!262868))))

(assert (=> b!447870 (= res!266185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204051 mask!1025))))

(assert (=> b!447870 (= lt!204051 (array!27678 (store (arr!13281 _keys!709) i!563 k0!794) (size!13633 _keys!709)))))

(declare-fun b!447871 () Bool)

(declare-fun res!266184 () Bool)

(assert (=> b!447871 (=> (not res!266184) (not e!262867))))

(assert (=> b!447871 (= res!266184 (or (= (select (arr!13281 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13281 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!40614 res!266187) b!447858))

(assert (= (and b!447858 res!266180) b!447861))

(assert (= (and b!447861 res!266183) b!447857))

(assert (= (and b!447857 res!266190) b!447869))

(assert (= (and b!447869 res!266186) b!447864))

(assert (= (and b!447864 res!266182) b!447867))

(assert (= (and b!447867 res!266189) b!447871))

(assert (= (and b!447871 res!266184) b!447862))

(assert (= (and b!447862 res!266181) b!447870))

(assert (= (and b!447870 res!266185) b!447866))

(assert (= (and b!447866 res!266179) b!447859))

(assert (= (and b!447859 res!266188) b!447865))

(assert (= (and b!447860 condMapEmpty!19566) mapIsEmpty!19566))

(assert (= (and b!447860 (not condMapEmpty!19566)) mapNonEmpty!19566))

(get-info :version)

(assert (= (and mapNonEmpty!19566 ((_ is ValueCellFull!5634) mapValue!19566)) b!447863))

(assert (= (and b!447860 ((_ is ValueCellFull!5634) mapDefault!19566)) b!447868))

(assert (= start!40614 b!447860))

(declare-fun m!432575 () Bool)

(assert (=> b!447869 m!432575))

(declare-fun m!432577 () Bool)

(assert (=> b!447862 m!432577))

(declare-fun m!432579 () Bool)

(assert (=> b!447871 m!432579))

(declare-fun m!432581 () Bool)

(assert (=> b!447866 m!432581))

(declare-fun m!432583 () Bool)

(assert (=> mapNonEmpty!19566 m!432583))

(declare-fun m!432585 () Bool)

(assert (=> b!447858 m!432585))

(declare-fun m!432587 () Bool)

(assert (=> start!40614 m!432587))

(declare-fun m!432589 () Bool)

(assert (=> start!40614 m!432589))

(declare-fun m!432591 () Bool)

(assert (=> b!447857 m!432591))

(declare-fun m!432593 () Bool)

(assert (=> b!447865 m!432593))

(declare-fun m!432595 () Bool)

(assert (=> b!447865 m!432595))

(declare-fun m!432597 () Bool)

(assert (=> b!447865 m!432597))

(declare-fun m!432599 () Bool)

(assert (=> b!447867 m!432599))

(declare-fun m!432601 () Bool)

(assert (=> b!447870 m!432601))

(declare-fun m!432603 () Bool)

(assert (=> b!447870 m!432603))

(check-sat (not b!447866) (not mapNonEmpty!19566) (not b!447865) (not b_next!10617) (not b!447862) (not b!447857) (not b!447867) b_and!18643 (not start!40614) (not b!447869) tp_is_empty!11955 (not b!447858) (not b!447870))
(check-sat b_and!18643 (not b_next!10617))
