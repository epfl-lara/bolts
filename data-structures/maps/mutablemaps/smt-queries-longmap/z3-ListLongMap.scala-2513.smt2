; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38906 () Bool)

(assert start!38906)

(declare-fun b!406508 () Bool)

(declare-fun res!234938 () Bool)

(declare-fun e!244250 () Bool)

(assert (=> b!406508 (=> (not res!234938) (not e!244250))))

(declare-datatypes ((array!24491 0))(
  ( (array!24492 (arr!11692 (Array (_ BitVec 32) (_ BitVec 64))) (size!12044 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24491)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24491 (_ BitVec 32)) Bool)

(assert (=> b!406508 (= res!234938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406509 () Bool)

(declare-fun e!244251 () Bool)

(assert (=> b!406509 (= e!244250 e!244251)))

(declare-fun res!234941 () Bool)

(assert (=> b!406509 (=> (not res!234941) (not e!244251))))

(declare-fun lt!188492 () array!24491)

(assert (=> b!406509 (= res!234941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188492 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406509 (= lt!188492 (array!24492 (store (arr!11692 _keys!709) i!563 k0!794) (size!12044 _keys!709)))))

(declare-fun b!406510 () Bool)

(declare-fun e!244255 () Bool)

(declare-fun e!244253 () Bool)

(declare-fun mapRes!17097 () Bool)

(assert (=> b!406510 (= e!244255 (and e!244253 mapRes!17097))))

(declare-fun condMapEmpty!17097 () Bool)

(declare-datatypes ((V!14861 0))(
  ( (V!14862 (val!5203 Int)) )
))
(declare-datatypes ((ValueCell!4815 0))(
  ( (ValueCellFull!4815 (v!7446 V!14861)) (EmptyCell!4815) )
))
(declare-datatypes ((array!24493 0))(
  ( (array!24494 (arr!11693 (Array (_ BitVec 32) ValueCell!4815)) (size!12045 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24493)

(declare-fun mapDefault!17097 () ValueCell!4815)

(assert (=> b!406510 (= condMapEmpty!17097 (= (arr!11693 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4815)) mapDefault!17097)))))

(declare-fun mapNonEmpty!17097 () Bool)

(declare-fun tp!33216 () Bool)

(declare-fun e!244254 () Bool)

(assert (=> mapNonEmpty!17097 (= mapRes!17097 (and tp!33216 e!244254))))

(declare-fun mapRest!17097 () (Array (_ BitVec 32) ValueCell!4815))

(declare-fun mapValue!17097 () ValueCell!4815)

(declare-fun mapKey!17097 () (_ BitVec 32))

(assert (=> mapNonEmpty!17097 (= (arr!11693 _values!549) (store mapRest!17097 mapKey!17097 mapValue!17097))))

(declare-fun mapIsEmpty!17097 () Bool)

(assert (=> mapIsEmpty!17097 mapRes!17097))

(declare-fun b!406511 () Bool)

(declare-fun res!234936 () Bool)

(assert (=> b!406511 (=> (not res!234936) (not e!244250))))

(assert (=> b!406511 (= res!234936 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12044 _keys!709))))))

(declare-fun b!406512 () Bool)

(declare-fun res!234942 () Bool)

(assert (=> b!406512 (=> (not res!234942) (not e!244250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406512 (= res!234942 (validMask!0 mask!1025))))

(declare-fun b!406513 () Bool)

(assert (=> b!406513 (= e!244251 false)))

(declare-fun lt!188493 () Bool)

(declare-datatypes ((List!6766 0))(
  ( (Nil!6763) (Cons!6762 (h!7618 (_ BitVec 64)) (t!11948 List!6766)) )
))
(declare-fun arrayNoDuplicates!0 (array!24491 (_ BitVec 32) List!6766) Bool)

(assert (=> b!406513 (= lt!188493 (arrayNoDuplicates!0 lt!188492 #b00000000000000000000000000000000 Nil!6763))))

(declare-fun b!406514 () Bool)

(declare-fun res!234940 () Bool)

(assert (=> b!406514 (=> (not res!234940) (not e!244250))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406514 (= res!234940 (and (= (size!12045 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12044 _keys!709) (size!12045 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406515 () Bool)

(declare-fun res!234934 () Bool)

(assert (=> b!406515 (=> (not res!234934) (not e!244250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406515 (= res!234934 (validKeyInArray!0 k0!794))))

(declare-fun b!406516 () Bool)

(declare-fun tp_is_empty!10317 () Bool)

(assert (=> b!406516 (= e!244253 tp_is_empty!10317)))

(declare-fun res!234939 () Bool)

(assert (=> start!38906 (=> (not res!234939) (not e!244250))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38906 (= res!234939 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12044 _keys!709))))))

(assert (=> start!38906 e!244250))

(assert (=> start!38906 true))

(declare-fun array_inv!8542 (array!24493) Bool)

(assert (=> start!38906 (and (array_inv!8542 _values!549) e!244255)))

(declare-fun array_inv!8543 (array!24491) Bool)

(assert (=> start!38906 (array_inv!8543 _keys!709)))

(declare-fun b!406517 () Bool)

(declare-fun res!234935 () Bool)

(assert (=> b!406517 (=> (not res!234935) (not e!244250))))

(assert (=> b!406517 (= res!234935 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6763))))

(declare-fun b!406518 () Bool)

(assert (=> b!406518 (= e!244254 tp_is_empty!10317)))

(declare-fun b!406519 () Bool)

(declare-fun res!234933 () Bool)

(assert (=> b!406519 (=> (not res!234933) (not e!244250))))

(assert (=> b!406519 (= res!234933 (or (= (select (arr!11692 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11692 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406520 () Bool)

(declare-fun res!234937 () Bool)

(assert (=> b!406520 (=> (not res!234937) (not e!244250))))

(declare-fun arrayContainsKey!0 (array!24491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406520 (= res!234937 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!38906 res!234939) b!406512))

(assert (= (and b!406512 res!234942) b!406514))

(assert (= (and b!406514 res!234940) b!406508))

(assert (= (and b!406508 res!234938) b!406517))

(assert (= (and b!406517 res!234935) b!406511))

(assert (= (and b!406511 res!234936) b!406515))

(assert (= (and b!406515 res!234934) b!406519))

(assert (= (and b!406519 res!234933) b!406520))

(assert (= (and b!406520 res!234937) b!406509))

(assert (= (and b!406509 res!234941) b!406513))

(assert (= (and b!406510 condMapEmpty!17097) mapIsEmpty!17097))

(assert (= (and b!406510 (not condMapEmpty!17097)) mapNonEmpty!17097))

(get-info :version)

(assert (= (and mapNonEmpty!17097 ((_ is ValueCellFull!4815) mapValue!17097)) b!406518))

(assert (= (and b!406510 ((_ is ValueCellFull!4815) mapDefault!17097)) b!406516))

(assert (= start!38906 b!406510))

(declare-fun m!398517 () Bool)

(assert (=> b!406512 m!398517))

(declare-fun m!398519 () Bool)

(assert (=> b!406515 m!398519))

(declare-fun m!398521 () Bool)

(assert (=> b!406508 m!398521))

(declare-fun m!398523 () Bool)

(assert (=> b!406513 m!398523))

(declare-fun m!398525 () Bool)

(assert (=> start!38906 m!398525))

(declare-fun m!398527 () Bool)

(assert (=> start!38906 m!398527))

(declare-fun m!398529 () Bool)

(assert (=> mapNonEmpty!17097 m!398529))

(declare-fun m!398531 () Bool)

(assert (=> b!406509 m!398531))

(declare-fun m!398533 () Bool)

(assert (=> b!406509 m!398533))

(declare-fun m!398535 () Bool)

(assert (=> b!406520 m!398535))

(declare-fun m!398537 () Bool)

(assert (=> b!406517 m!398537))

(declare-fun m!398539 () Bool)

(assert (=> b!406519 m!398539))

(check-sat (not b!406508) tp_is_empty!10317 (not b!406515) (not b!406520) (not b!406509) (not b!406513) (not b!406512) (not b!406517) (not mapNonEmpty!17097) (not start!38906))
(check-sat)
