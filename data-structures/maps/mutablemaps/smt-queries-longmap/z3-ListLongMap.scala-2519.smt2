; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38942 () Bool)

(assert start!38942)

(declare-fun b!407210 () Bool)

(declare-fun res!235478 () Bool)

(declare-fun e!244574 () Bool)

(assert (=> b!407210 (=> (not res!235478) (not e!244574))))

(declare-datatypes ((array!24561 0))(
  ( (array!24562 (arr!11727 (Array (_ BitVec 32) (_ BitVec 64))) (size!12079 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24561)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407210 (= res!235478 (or (= (select (arr!11727 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11727 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407211 () Bool)

(declare-fun e!244575 () Bool)

(declare-fun tp_is_empty!10353 () Bool)

(assert (=> b!407211 (= e!244575 tp_is_empty!10353)))

(declare-fun b!407212 () Bool)

(declare-fun e!244579 () Bool)

(declare-fun mapRes!17151 () Bool)

(assert (=> b!407212 (= e!244579 (and e!244575 mapRes!17151))))

(declare-fun condMapEmpty!17151 () Bool)

(declare-datatypes ((V!14909 0))(
  ( (V!14910 (val!5221 Int)) )
))
(declare-datatypes ((ValueCell!4833 0))(
  ( (ValueCellFull!4833 (v!7464 V!14909)) (EmptyCell!4833) )
))
(declare-datatypes ((array!24563 0))(
  ( (array!24564 (arr!11728 (Array (_ BitVec 32) ValueCell!4833)) (size!12080 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24563)

(declare-fun mapDefault!17151 () ValueCell!4833)

(assert (=> b!407212 (= condMapEmpty!17151 (= (arr!11728 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4833)) mapDefault!17151)))))

(declare-fun res!235475 () Bool)

(assert (=> start!38942 (=> (not res!235475) (not e!244574))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38942 (= res!235475 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12079 _keys!709))))))

(assert (=> start!38942 e!244574))

(assert (=> start!38942 true))

(declare-fun array_inv!8564 (array!24563) Bool)

(assert (=> start!38942 (and (array_inv!8564 _values!549) e!244579)))

(declare-fun array_inv!8565 (array!24561) Bool)

(assert (=> start!38942 (array_inv!8565 _keys!709)))

(declare-fun b!407213 () Bool)

(declare-fun res!235476 () Bool)

(assert (=> b!407213 (=> (not res!235476) (not e!244574))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24561 (_ BitVec 32)) Bool)

(assert (=> b!407213 (= res!235476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407214 () Bool)

(declare-fun res!235474 () Bool)

(assert (=> b!407214 (=> (not res!235474) (not e!244574))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407214 (= res!235474 (validKeyInArray!0 k0!794))))

(declare-fun b!407215 () Bool)

(declare-fun e!244576 () Bool)

(assert (=> b!407215 (= e!244576 tp_is_empty!10353)))

(declare-fun b!407216 () Bool)

(declare-fun e!244578 () Bool)

(assert (=> b!407216 (= e!244578 false)))

(declare-fun lt!188601 () Bool)

(declare-fun lt!188600 () array!24561)

(declare-datatypes ((List!6782 0))(
  ( (Nil!6779) (Cons!6778 (h!7634 (_ BitVec 64)) (t!11964 List!6782)) )
))
(declare-fun arrayNoDuplicates!0 (array!24561 (_ BitVec 32) List!6782) Bool)

(assert (=> b!407216 (= lt!188601 (arrayNoDuplicates!0 lt!188600 #b00000000000000000000000000000000 Nil!6779))))

(declare-fun b!407217 () Bool)

(declare-fun res!235482 () Bool)

(assert (=> b!407217 (=> (not res!235482) (not e!244574))))

(declare-fun arrayContainsKey!0 (array!24561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407217 (= res!235482 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!407218 () Bool)

(declare-fun res!235479 () Bool)

(assert (=> b!407218 (=> (not res!235479) (not e!244574))))

(assert (=> b!407218 (= res!235479 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6779))))

(declare-fun mapIsEmpty!17151 () Bool)

(assert (=> mapIsEmpty!17151 mapRes!17151))

(declare-fun b!407219 () Bool)

(declare-fun res!235477 () Bool)

(assert (=> b!407219 (=> (not res!235477) (not e!244574))))

(assert (=> b!407219 (= res!235477 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12079 _keys!709))))))

(declare-fun b!407220 () Bool)

(assert (=> b!407220 (= e!244574 e!244578)))

(declare-fun res!235481 () Bool)

(assert (=> b!407220 (=> (not res!235481) (not e!244578))))

(assert (=> b!407220 (= res!235481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188600 mask!1025))))

(assert (=> b!407220 (= lt!188600 (array!24562 (store (arr!11727 _keys!709) i!563 k0!794) (size!12079 _keys!709)))))

(declare-fun mapNonEmpty!17151 () Bool)

(declare-fun tp!33270 () Bool)

(assert (=> mapNonEmpty!17151 (= mapRes!17151 (and tp!33270 e!244576))))

(declare-fun mapKey!17151 () (_ BitVec 32))

(declare-fun mapRest!17151 () (Array (_ BitVec 32) ValueCell!4833))

(declare-fun mapValue!17151 () ValueCell!4833)

(assert (=> mapNonEmpty!17151 (= (arr!11728 _values!549) (store mapRest!17151 mapKey!17151 mapValue!17151))))

(declare-fun b!407221 () Bool)

(declare-fun res!235473 () Bool)

(assert (=> b!407221 (=> (not res!235473) (not e!244574))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407221 (= res!235473 (and (= (size!12080 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12079 _keys!709) (size!12080 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407222 () Bool)

(declare-fun res!235480 () Bool)

(assert (=> b!407222 (=> (not res!235480) (not e!244574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407222 (= res!235480 (validMask!0 mask!1025))))

(assert (= (and start!38942 res!235475) b!407222))

(assert (= (and b!407222 res!235480) b!407221))

(assert (= (and b!407221 res!235473) b!407213))

(assert (= (and b!407213 res!235476) b!407218))

(assert (= (and b!407218 res!235479) b!407219))

(assert (= (and b!407219 res!235477) b!407214))

(assert (= (and b!407214 res!235474) b!407210))

(assert (= (and b!407210 res!235478) b!407217))

(assert (= (and b!407217 res!235482) b!407220))

(assert (= (and b!407220 res!235481) b!407216))

(assert (= (and b!407212 condMapEmpty!17151) mapIsEmpty!17151))

(assert (= (and b!407212 (not condMapEmpty!17151)) mapNonEmpty!17151))

(get-info :version)

(assert (= (and mapNonEmpty!17151 ((_ is ValueCellFull!4833) mapValue!17151)) b!407215))

(assert (= (and b!407212 ((_ is ValueCellFull!4833) mapDefault!17151)) b!407211))

(assert (= start!38942 b!407212))

(declare-fun m!398949 () Bool)

(assert (=> start!38942 m!398949))

(declare-fun m!398951 () Bool)

(assert (=> start!38942 m!398951))

(declare-fun m!398953 () Bool)

(assert (=> b!407218 m!398953))

(declare-fun m!398955 () Bool)

(assert (=> b!407210 m!398955))

(declare-fun m!398957 () Bool)

(assert (=> b!407213 m!398957))

(declare-fun m!398959 () Bool)

(assert (=> b!407220 m!398959))

(declare-fun m!398961 () Bool)

(assert (=> b!407220 m!398961))

(declare-fun m!398963 () Bool)

(assert (=> b!407216 m!398963))

(declare-fun m!398965 () Bool)

(assert (=> mapNonEmpty!17151 m!398965))

(declare-fun m!398967 () Bool)

(assert (=> b!407217 m!398967))

(declare-fun m!398969 () Bool)

(assert (=> b!407222 m!398969))

(declare-fun m!398971 () Bool)

(assert (=> b!407214 m!398971))

(check-sat tp_is_empty!10353 (not b!407218) (not b!407216) (not b!407222) (not b!407220) (not start!38942) (not mapNonEmpty!17151) (not b!407214) (not b!407213) (not b!407217))
(check-sat)
