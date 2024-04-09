; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39068 () Bool)

(assert start!39068)

(declare-fun b_free!9327 () Bool)

(declare-fun b_next!9327 () Bool)

(assert (=> start!39068 (= b_free!9327 (not b_next!9327))))

(declare-fun tp!33510 () Bool)

(declare-fun b_and!16731 () Bool)

(assert (=> start!39068 (= tp!33510 b_and!16731)))

(declare-fun b!409767 () Bool)

(declare-fun e!245708 () Bool)

(declare-fun e!245712 () Bool)

(assert (=> b!409767 (= e!245708 e!245712)))

(declare-fun res!237473 () Bool)

(assert (=> b!409767 (=> (not res!237473) (not e!245712))))

(declare-datatypes ((array!24809 0))(
  ( (array!24810 (arr!11851 (Array (_ BitVec 32) (_ BitVec 64))) (size!12203 (_ BitVec 32))) )
))
(declare-fun lt!188979 () array!24809)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24809 (_ BitVec 32)) Bool)

(assert (=> b!409767 (= res!237473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188979 mask!1025))))

(declare-fun _keys!709 () array!24809)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409767 (= lt!188979 (array!24810 (store (arr!11851 _keys!709) i!563 k0!794) (size!12203 _keys!709)))))

(declare-fun b!409768 () Bool)

(declare-fun res!237470 () Bool)

(assert (=> b!409768 (=> (not res!237470) (not e!245708))))

(declare-fun arrayContainsKey!0 (array!24809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409768 (= res!237470 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!237463 () Bool)

(assert (=> start!39068 (=> (not res!237463) (not e!245708))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39068 (= res!237463 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12203 _keys!709))))))

(assert (=> start!39068 e!245708))

(declare-fun tp_is_empty!10479 () Bool)

(assert (=> start!39068 tp_is_empty!10479))

(assert (=> start!39068 tp!33510))

(assert (=> start!39068 true))

(declare-datatypes ((V!15077 0))(
  ( (V!15078 (val!5284 Int)) )
))
(declare-datatypes ((ValueCell!4896 0))(
  ( (ValueCellFull!4896 (v!7527 V!15077)) (EmptyCell!4896) )
))
(declare-datatypes ((array!24811 0))(
  ( (array!24812 (arr!11852 (Array (_ BitVec 32) ValueCell!4896)) (size!12204 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24811)

(declare-fun e!245710 () Bool)

(declare-fun array_inv!8654 (array!24811) Bool)

(assert (=> start!39068 (and (array_inv!8654 _values!549) e!245710)))

(declare-fun array_inv!8655 (array!24809) Bool)

(assert (=> start!39068 (array_inv!8655 _keys!709)))

(declare-fun b!409769 () Bool)

(declare-fun res!237466 () Bool)

(assert (=> b!409769 (=> (not res!237466) (not e!245708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409769 (= res!237466 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!17340 () Bool)

(declare-fun mapRes!17340 () Bool)

(declare-fun tp!33509 () Bool)

(declare-fun e!245713 () Bool)

(assert (=> mapNonEmpty!17340 (= mapRes!17340 (and tp!33509 e!245713))))

(declare-fun mapRest!17340 () (Array (_ BitVec 32) ValueCell!4896))

(declare-fun mapValue!17340 () ValueCell!4896)

(declare-fun mapKey!17340 () (_ BitVec 32))

(assert (=> mapNonEmpty!17340 (= (arr!11852 _values!549) (store mapRest!17340 mapKey!17340 mapValue!17340))))

(declare-fun b!409770 () Bool)

(declare-fun res!237474 () Bool)

(assert (=> b!409770 (=> (not res!237474) (not e!245712))))

(assert (=> b!409770 (= res!237474 (bvsle from!863 i!563))))

(declare-fun b!409771 () Bool)

(assert (=> b!409771 (= e!245712 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15077)

(declare-datatypes ((tuple2!6792 0))(
  ( (tuple2!6793 (_1!3406 (_ BitVec 64)) (_2!3406 V!15077)) )
))
(declare-datatypes ((List!6843 0))(
  ( (Nil!6840) (Cons!6839 (h!7695 tuple2!6792) (t!12025 List!6843)) )
))
(declare-datatypes ((ListLongMap!5719 0))(
  ( (ListLongMap!5720 (toList!2875 List!6843)) )
))
(declare-fun lt!188978 () ListLongMap!5719)

(declare-fun minValue!515 () V!15077)

(declare-fun getCurrentListMapNoExtraKeys!1085 (array!24809 array!24811 (_ BitVec 32) (_ BitVec 32) V!15077 V!15077 (_ BitVec 32) Int) ListLongMap!5719)

(assert (=> b!409771 (= lt!188978 (getCurrentListMapNoExtraKeys!1085 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409772 () Bool)

(declare-fun res!237472 () Bool)

(assert (=> b!409772 (=> (not res!237472) (not e!245708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409772 (= res!237472 (validMask!0 mask!1025))))

(declare-fun b!409773 () Bool)

(declare-fun res!237464 () Bool)

(assert (=> b!409773 (=> (not res!237464) (not e!245708))))

(assert (=> b!409773 (= res!237464 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12203 _keys!709))))))

(declare-fun b!409774 () Bool)

(declare-fun res!237467 () Bool)

(assert (=> b!409774 (=> (not res!237467) (not e!245708))))

(assert (=> b!409774 (= res!237467 (or (= (select (arr!11851 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11851 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409775 () Bool)

(declare-fun res!237468 () Bool)

(assert (=> b!409775 (=> (not res!237468) (not e!245708))))

(declare-datatypes ((List!6844 0))(
  ( (Nil!6841) (Cons!6840 (h!7696 (_ BitVec 64)) (t!12026 List!6844)) )
))
(declare-fun arrayNoDuplicates!0 (array!24809 (_ BitVec 32) List!6844) Bool)

(assert (=> b!409775 (= res!237468 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6841))))

(declare-fun b!409776 () Bool)

(declare-fun e!245709 () Bool)

(assert (=> b!409776 (= e!245710 (and e!245709 mapRes!17340))))

(declare-fun condMapEmpty!17340 () Bool)

(declare-fun mapDefault!17340 () ValueCell!4896)

(assert (=> b!409776 (= condMapEmpty!17340 (= (arr!11852 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4896)) mapDefault!17340)))))

(declare-fun mapIsEmpty!17340 () Bool)

(assert (=> mapIsEmpty!17340 mapRes!17340))

(declare-fun b!409777 () Bool)

(assert (=> b!409777 (= e!245709 tp_is_empty!10479)))

(declare-fun b!409778 () Bool)

(declare-fun res!237469 () Bool)

(assert (=> b!409778 (=> (not res!237469) (not e!245708))))

(assert (=> b!409778 (= res!237469 (and (= (size!12204 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12203 _keys!709) (size!12204 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409779 () Bool)

(assert (=> b!409779 (= e!245713 tp_is_empty!10479)))

(declare-fun b!409780 () Bool)

(declare-fun res!237471 () Bool)

(assert (=> b!409780 (=> (not res!237471) (not e!245712))))

(assert (=> b!409780 (= res!237471 (arrayNoDuplicates!0 lt!188979 #b00000000000000000000000000000000 Nil!6841))))

(declare-fun b!409781 () Bool)

(declare-fun res!237465 () Bool)

(assert (=> b!409781 (=> (not res!237465) (not e!245708))))

(assert (=> b!409781 (= res!237465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39068 res!237463) b!409772))

(assert (= (and b!409772 res!237472) b!409778))

(assert (= (and b!409778 res!237469) b!409781))

(assert (= (and b!409781 res!237465) b!409775))

(assert (= (and b!409775 res!237468) b!409773))

(assert (= (and b!409773 res!237464) b!409769))

(assert (= (and b!409769 res!237466) b!409774))

(assert (= (and b!409774 res!237467) b!409768))

(assert (= (and b!409768 res!237470) b!409767))

(assert (= (and b!409767 res!237473) b!409780))

(assert (= (and b!409780 res!237471) b!409770))

(assert (= (and b!409770 res!237474) b!409771))

(assert (= (and b!409776 condMapEmpty!17340) mapIsEmpty!17340))

(assert (= (and b!409776 (not condMapEmpty!17340)) mapNonEmpty!17340))

(get-info :version)

(assert (= (and mapNonEmpty!17340 ((_ is ValueCellFull!4896) mapValue!17340)) b!409779))

(assert (= (and b!409776 ((_ is ValueCellFull!4896) mapDefault!17340)) b!409777))

(assert (= start!39068 b!409776))

(declare-fun m!400493 () Bool)

(assert (=> b!409769 m!400493))

(declare-fun m!400495 () Bool)

(assert (=> b!409768 m!400495))

(declare-fun m!400497 () Bool)

(assert (=> b!409767 m!400497))

(declare-fun m!400499 () Bool)

(assert (=> b!409767 m!400499))

(declare-fun m!400501 () Bool)

(assert (=> b!409774 m!400501))

(declare-fun m!400503 () Bool)

(assert (=> b!409781 m!400503))

(declare-fun m!400505 () Bool)

(assert (=> b!409780 m!400505))

(declare-fun m!400507 () Bool)

(assert (=> b!409775 m!400507))

(declare-fun m!400509 () Bool)

(assert (=> b!409772 m!400509))

(declare-fun m!400511 () Bool)

(assert (=> b!409771 m!400511))

(declare-fun m!400513 () Bool)

(assert (=> start!39068 m!400513))

(declare-fun m!400515 () Bool)

(assert (=> start!39068 m!400515))

(declare-fun m!400517 () Bool)

(assert (=> mapNonEmpty!17340 m!400517))

(check-sat (not b!409767) (not b!409781) tp_is_empty!10479 (not b!409775) (not b!409780) (not b!409768) (not mapNonEmpty!17340) (not b!409772) (not b!409769) (not start!39068) (not b_next!9327) (not b!409771) b_and!16731)
(check-sat b_and!16731 (not b_next!9327))
