; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72370 () Bool)

(assert start!72370)

(declare-fun b!837962 () Bool)

(declare-fun e!467810 () Bool)

(declare-fun tp_is_empty!15393 () Bool)

(assert (=> b!837962 (= e!467810 tp_is_empty!15393)))

(declare-fun res!569944 () Bool)

(declare-fun e!467807 () Bool)

(assert (=> start!72370 (=> (not res!569944) (not e!467807))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47040 0))(
  ( (array!47041 (arr!22547 (Array (_ BitVec 32) (_ BitVec 64))) (size!22988 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47040)

(assert (=> start!72370 (= res!569944 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22988 _keys!868))))))

(assert (=> start!72370 e!467807))

(assert (=> start!72370 true))

(declare-fun array_inv!17936 (array!47040) Bool)

(assert (=> start!72370 (array_inv!17936 _keys!868)))

(declare-datatypes ((V!25571 0))(
  ( (V!25572 (val!7744 Int)) )
))
(declare-datatypes ((ValueCell!7257 0))(
  ( (ValueCellFull!7257 (v!10165 V!25571)) (EmptyCell!7257) )
))
(declare-datatypes ((array!47042 0))(
  ( (array!47043 (arr!22548 (Array (_ BitVec 32) ValueCell!7257)) (size!22989 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47042)

(declare-fun e!467808 () Bool)

(declare-fun array_inv!17937 (array!47042) Bool)

(assert (=> start!72370 (and (array_inv!17937 _values!688) e!467808)))

(declare-fun b!837963 () Bool)

(declare-fun mapRes!24689 () Bool)

(assert (=> b!837963 (= e!467808 (and e!467810 mapRes!24689))))

(declare-fun condMapEmpty!24689 () Bool)

(declare-fun mapDefault!24689 () ValueCell!7257)

(assert (=> b!837963 (= condMapEmpty!24689 (= (arr!22548 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7257)) mapDefault!24689)))))

(declare-fun b!837964 () Bool)

(declare-fun res!569946 () Bool)

(assert (=> b!837964 (=> (not res!569946) (not e!467807))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837964 (= res!569946 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!24689 () Bool)

(declare-fun tp!47684 () Bool)

(declare-fun e!467809 () Bool)

(assert (=> mapNonEmpty!24689 (= mapRes!24689 (and tp!47684 e!467809))))

(declare-fun mapKey!24689 () (_ BitVec 32))

(declare-fun mapValue!24689 () ValueCell!7257)

(declare-fun mapRest!24689 () (Array (_ BitVec 32) ValueCell!7257))

(assert (=> mapNonEmpty!24689 (= (arr!22548 _values!688) (store mapRest!24689 mapKey!24689 mapValue!24689))))

(declare-fun b!837965 () Bool)

(assert (=> b!837965 (= e!467807 false)))

(declare-fun lt!380601 () Bool)

(declare-datatypes ((List!16100 0))(
  ( (Nil!16097) (Cons!16096 (h!17227 (_ BitVec 64)) (t!22479 List!16100)) )
))
(declare-fun arrayNoDuplicates!0 (array!47040 (_ BitVec 32) List!16100) Bool)

(assert (=> b!837965 (= lt!380601 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16097))))

(declare-fun b!837966 () Bool)

(declare-fun res!569943 () Bool)

(assert (=> b!837966 (=> (not res!569943) (not e!467807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47040 (_ BitVec 32)) Bool)

(assert (=> b!837966 (= res!569943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837967 () Bool)

(declare-fun res!569945 () Bool)

(assert (=> b!837967 (=> (not res!569945) (not e!467807))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837967 (= res!569945 (and (= (size!22989 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22988 _keys!868) (size!22989 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837968 () Bool)

(assert (=> b!837968 (= e!467809 tp_is_empty!15393)))

(declare-fun mapIsEmpty!24689 () Bool)

(assert (=> mapIsEmpty!24689 mapRes!24689))

(assert (= (and start!72370 res!569944) b!837964))

(assert (= (and b!837964 res!569946) b!837967))

(assert (= (and b!837967 res!569945) b!837966))

(assert (= (and b!837966 res!569943) b!837965))

(assert (= (and b!837963 condMapEmpty!24689) mapIsEmpty!24689))

(assert (= (and b!837963 (not condMapEmpty!24689)) mapNonEmpty!24689))

(get-info :version)

(assert (= (and mapNonEmpty!24689 ((_ is ValueCellFull!7257) mapValue!24689)) b!837968))

(assert (= (and b!837963 ((_ is ValueCellFull!7257) mapDefault!24689)) b!837962))

(assert (= start!72370 b!837963))

(declare-fun m!782633 () Bool)

(assert (=> start!72370 m!782633))

(declare-fun m!782635 () Bool)

(assert (=> start!72370 m!782635))

(declare-fun m!782637 () Bool)

(assert (=> b!837964 m!782637))

(declare-fun m!782639 () Bool)

(assert (=> b!837966 m!782639))

(declare-fun m!782641 () Bool)

(assert (=> b!837965 m!782641))

(declare-fun m!782643 () Bool)

(assert (=> mapNonEmpty!24689 m!782643))

(check-sat tp_is_empty!15393 (not start!72370) (not b!837964) (not b!837966) (not b!837965) (not mapNonEmpty!24689))
(check-sat)
