; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39128 () Bool)

(assert start!39128)

(declare-fun b_free!9387 () Bool)

(declare-fun b_next!9387 () Bool)

(assert (=> start!39128 (= b_free!9387 (not b_next!9387))))

(declare-fun tp!33689 () Bool)

(declare-fun b_and!16791 () Bool)

(assert (=> start!39128 (= tp!33689 b_and!16791)))

(declare-fun b!411117 () Bool)

(declare-fun res!238549 () Bool)

(declare-fun e!246249 () Bool)

(assert (=> b!411117 (=> (not res!238549) (not e!246249))))

(declare-datatypes ((array!24925 0))(
  ( (array!24926 (arr!11909 (Array (_ BitVec 32) (_ BitVec 64))) (size!12261 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24925)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24925 (_ BitVec 32)) Bool)

(assert (=> b!411117 (= res!238549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411118 () Bool)

(declare-fun res!238552 () Bool)

(assert (=> b!411118 (=> (not res!238552) (not e!246249))))

(declare-datatypes ((List!6882 0))(
  ( (Nil!6879) (Cons!6878 (h!7734 (_ BitVec 64)) (t!12064 List!6882)) )
))
(declare-fun arrayNoDuplicates!0 (array!24925 (_ BitVec 32) List!6882) Bool)

(assert (=> b!411118 (= res!238552 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6879))))

(declare-fun b!411119 () Bool)

(declare-fun res!238553 () Bool)

(declare-fun e!246253 () Bool)

(assert (=> b!411119 (=> (not res!238553) (not e!246253))))

(declare-fun lt!189219 () array!24925)

(assert (=> b!411119 (= res!238553 (arrayNoDuplicates!0 lt!189219 #b00000000000000000000000000000000 Nil!6879))))

(declare-fun mapNonEmpty!17430 () Bool)

(declare-fun mapRes!17430 () Bool)

(declare-fun tp!33690 () Bool)

(declare-fun e!246252 () Bool)

(assert (=> mapNonEmpty!17430 (= mapRes!17430 (and tp!33690 e!246252))))

(declare-datatypes ((V!15157 0))(
  ( (V!15158 (val!5314 Int)) )
))
(declare-datatypes ((ValueCell!4926 0))(
  ( (ValueCellFull!4926 (v!7557 V!15157)) (EmptyCell!4926) )
))
(declare-fun mapValue!17430 () ValueCell!4926)

(declare-fun mapKey!17430 () (_ BitVec 32))

(declare-datatypes ((array!24927 0))(
  ( (array!24928 (arr!11910 (Array (_ BitVec 32) ValueCell!4926)) (size!12262 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24927)

(declare-fun mapRest!17430 () (Array (_ BitVec 32) ValueCell!4926))

(assert (=> mapNonEmpty!17430 (= (arr!11910 _values!549) (store mapRest!17430 mapKey!17430 mapValue!17430))))

(declare-fun res!238543 () Bool)

(assert (=> start!39128 (=> (not res!238543) (not e!246249))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39128 (= res!238543 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12261 _keys!709))))))

(assert (=> start!39128 e!246249))

(declare-fun tp_is_empty!10539 () Bool)

(assert (=> start!39128 tp_is_empty!10539))

(assert (=> start!39128 tp!33689))

(assert (=> start!39128 true))

(declare-fun e!246250 () Bool)

(declare-fun array_inv!8690 (array!24927) Bool)

(assert (=> start!39128 (and (array_inv!8690 _values!549) e!246250)))

(declare-fun array_inv!8691 (array!24925) Bool)

(assert (=> start!39128 (array_inv!8691 _keys!709)))

(declare-fun b!411120 () Bool)

(declare-fun res!238546 () Bool)

(assert (=> b!411120 (=> (not res!238546) (not e!246249))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411120 (= res!238546 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12261 _keys!709))))))

(declare-fun b!411121 () Bool)

(declare-fun res!238551 () Bool)

(assert (=> b!411121 (=> (not res!238551) (not e!246249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411121 (= res!238551 (validMask!0 mask!1025))))

(declare-fun b!411122 () Bool)

(assert (=> b!411122 (= e!246253 false)))

(declare-fun minValue!515 () V!15157)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15157)

(declare-datatypes ((tuple2!6826 0))(
  ( (tuple2!6827 (_1!3423 (_ BitVec 64)) (_2!3423 V!15157)) )
))
(declare-datatypes ((List!6883 0))(
  ( (Nil!6880) (Cons!6879 (h!7735 tuple2!6826) (t!12065 List!6883)) )
))
(declare-datatypes ((ListLongMap!5753 0))(
  ( (ListLongMap!5754 (toList!2892 List!6883)) )
))
(declare-fun lt!189217 () ListLongMap!5753)

(declare-fun v!412 () V!15157)

(declare-fun getCurrentListMapNoExtraKeys!1102 (array!24925 array!24927 (_ BitVec 32) (_ BitVec 32) V!15157 V!15157 (_ BitVec 32) Int) ListLongMap!5753)

(assert (=> b!411122 (= lt!189217 (getCurrentListMapNoExtraKeys!1102 lt!189219 (array!24928 (store (arr!11910 _values!549) i!563 (ValueCellFull!4926 v!412)) (size!12262 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189218 () ListLongMap!5753)

(assert (=> b!411122 (= lt!189218 (getCurrentListMapNoExtraKeys!1102 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!17430 () Bool)

(assert (=> mapIsEmpty!17430 mapRes!17430))

(declare-fun b!411123 () Bool)

(assert (=> b!411123 (= e!246252 tp_is_empty!10539)))

(declare-fun b!411124 () Bool)

(declare-fun res!238547 () Bool)

(assert (=> b!411124 (=> (not res!238547) (not e!246249))))

(assert (=> b!411124 (= res!238547 (and (= (size!12262 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12261 _keys!709) (size!12262 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411125 () Bool)

(declare-fun e!246248 () Bool)

(assert (=> b!411125 (= e!246248 tp_is_empty!10539)))

(declare-fun b!411126 () Bool)

(declare-fun res!238550 () Bool)

(assert (=> b!411126 (=> (not res!238550) (not e!246253))))

(assert (=> b!411126 (= res!238550 (bvsle from!863 i!563))))

(declare-fun b!411127 () Bool)

(declare-fun res!238548 () Bool)

(assert (=> b!411127 (=> (not res!238548) (not e!246249))))

(assert (=> b!411127 (= res!238548 (or (= (select (arr!11909 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11909 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411128 () Bool)

(declare-fun res!238545 () Bool)

(assert (=> b!411128 (=> (not res!238545) (not e!246249))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411128 (= res!238545 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!411129 () Bool)

(assert (=> b!411129 (= e!246250 (and e!246248 mapRes!17430))))

(declare-fun condMapEmpty!17430 () Bool)

(declare-fun mapDefault!17430 () ValueCell!4926)

(assert (=> b!411129 (= condMapEmpty!17430 (= (arr!11910 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4926)) mapDefault!17430)))))

(declare-fun b!411130 () Bool)

(declare-fun res!238544 () Bool)

(assert (=> b!411130 (=> (not res!238544) (not e!246249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411130 (= res!238544 (validKeyInArray!0 k0!794))))

(declare-fun b!411131 () Bool)

(assert (=> b!411131 (= e!246249 e!246253)))

(declare-fun res!238554 () Bool)

(assert (=> b!411131 (=> (not res!238554) (not e!246253))))

(assert (=> b!411131 (= res!238554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189219 mask!1025))))

(assert (=> b!411131 (= lt!189219 (array!24926 (store (arr!11909 _keys!709) i!563 k0!794) (size!12261 _keys!709)))))

(assert (= (and start!39128 res!238543) b!411121))

(assert (= (and b!411121 res!238551) b!411124))

(assert (= (and b!411124 res!238547) b!411117))

(assert (= (and b!411117 res!238549) b!411118))

(assert (= (and b!411118 res!238552) b!411120))

(assert (= (and b!411120 res!238546) b!411130))

(assert (= (and b!411130 res!238544) b!411127))

(assert (= (and b!411127 res!238548) b!411128))

(assert (= (and b!411128 res!238545) b!411131))

(assert (= (and b!411131 res!238554) b!411119))

(assert (= (and b!411119 res!238553) b!411126))

(assert (= (and b!411126 res!238550) b!411122))

(assert (= (and b!411129 condMapEmpty!17430) mapIsEmpty!17430))

(assert (= (and b!411129 (not condMapEmpty!17430)) mapNonEmpty!17430))

(get-info :version)

(assert (= (and mapNonEmpty!17430 ((_ is ValueCellFull!4926) mapValue!17430)) b!411123))

(assert (= (and b!411129 ((_ is ValueCellFull!4926) mapDefault!17430)) b!411125))

(assert (= start!39128 b!411129))

(declare-fun m!401349 () Bool)

(assert (=> b!411117 m!401349))

(declare-fun m!401351 () Bool)

(assert (=> mapNonEmpty!17430 m!401351))

(declare-fun m!401353 () Bool)

(assert (=> b!411121 m!401353))

(declare-fun m!401355 () Bool)

(assert (=> b!411118 m!401355))

(declare-fun m!401357 () Bool)

(assert (=> start!39128 m!401357))

(declare-fun m!401359 () Bool)

(assert (=> start!39128 m!401359))

(declare-fun m!401361 () Bool)

(assert (=> b!411127 m!401361))

(declare-fun m!401363 () Bool)

(assert (=> b!411122 m!401363))

(declare-fun m!401365 () Bool)

(assert (=> b!411122 m!401365))

(declare-fun m!401367 () Bool)

(assert (=> b!411122 m!401367))

(declare-fun m!401369 () Bool)

(assert (=> b!411119 m!401369))

(declare-fun m!401371 () Bool)

(assert (=> b!411128 m!401371))

(declare-fun m!401373 () Bool)

(assert (=> b!411130 m!401373))

(declare-fun m!401375 () Bool)

(assert (=> b!411131 m!401375))

(declare-fun m!401377 () Bool)

(assert (=> b!411131 m!401377))

(check-sat b_and!16791 (not b_next!9387) (not mapNonEmpty!17430) (not b!411131) (not start!39128) (not b!411128) (not b!411122) (not b!411119) (not b!411118) (not b!411121) (not b!411130) (not b!411117) tp_is_empty!10539)
(check-sat b_and!16791 (not b_next!9387))
