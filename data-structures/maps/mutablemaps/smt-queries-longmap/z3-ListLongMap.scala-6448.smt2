; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82558 () Bool)

(assert start!82558)

(declare-fun b!961598 () Bool)

(declare-fun e!542306 () Bool)

(assert (=> b!961598 (= e!542306 false)))

(declare-fun lt!430752 () Bool)

(declare-datatypes ((array!59017 0))(
  ( (array!59018 (arr!28373 (Array (_ BitVec 32) (_ BitVec 64))) (size!28853 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59017)

(declare-datatypes ((List!19820 0))(
  ( (Nil!19817) (Cons!19816 (h!20978 (_ BitVec 64)) (t!28191 List!19820)) )
))
(declare-fun arrayNoDuplicates!0 (array!59017 (_ BitVec 32) List!19820) Bool)

(assert (=> b!961598 (= lt!430752 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19817))))

(declare-fun mapNonEmpty!34192 () Bool)

(declare-fun mapRes!34192 () Bool)

(declare-fun tp!65122 () Bool)

(declare-fun e!542308 () Bool)

(assert (=> mapNonEmpty!34192 (= mapRes!34192 (and tp!65122 e!542308))))

(declare-datatypes ((V!33603 0))(
  ( (V!33604 (val!10783 Int)) )
))
(declare-datatypes ((ValueCell!10251 0))(
  ( (ValueCellFull!10251 (v!13341 V!33603)) (EmptyCell!10251) )
))
(declare-fun mapValue!34192 () ValueCell!10251)

(declare-fun mapRest!34192 () (Array (_ BitVec 32) ValueCell!10251))

(declare-datatypes ((array!59019 0))(
  ( (array!59020 (arr!28374 (Array (_ BitVec 32) ValueCell!10251)) (size!28854 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59019)

(declare-fun mapKey!34192 () (_ BitVec 32))

(assert (=> mapNonEmpty!34192 (= (arr!28374 _values!1400) (store mapRest!34192 mapKey!34192 mapValue!34192))))

(declare-fun b!961599 () Bool)

(declare-fun res!643643 () Bool)

(assert (=> b!961599 (=> (not res!643643) (not e!542306))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961599 (= res!643643 (and (= (size!28854 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28853 _keys!1686) (size!28854 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961600 () Bool)

(declare-fun res!643642 () Bool)

(assert (=> b!961600 (=> (not res!643642) (not e!542306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59017 (_ BitVec 32)) Bool)

(assert (=> b!961600 (= res!643642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapIsEmpty!34192 () Bool)

(assert (=> mapIsEmpty!34192 mapRes!34192))

(declare-fun res!643641 () Bool)

(assert (=> start!82558 (=> (not res!643641) (not e!542306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82558 (= res!643641 (validMask!0 mask!2110))))

(assert (=> start!82558 e!542306))

(assert (=> start!82558 true))

(declare-fun e!542305 () Bool)

(declare-fun array_inv!21913 (array!59019) Bool)

(assert (=> start!82558 (and (array_inv!21913 _values!1400) e!542305)))

(declare-fun array_inv!21914 (array!59017) Bool)

(assert (=> start!82558 (array_inv!21914 _keys!1686)))

(declare-fun b!961601 () Bool)

(declare-fun e!542304 () Bool)

(declare-fun tp_is_empty!21465 () Bool)

(assert (=> b!961601 (= e!542304 tp_is_empty!21465)))

(declare-fun b!961602 () Bool)

(assert (=> b!961602 (= e!542308 tp_is_empty!21465)))

(declare-fun b!961603 () Bool)

(assert (=> b!961603 (= e!542305 (and e!542304 mapRes!34192))))

(declare-fun condMapEmpty!34192 () Bool)

(declare-fun mapDefault!34192 () ValueCell!10251)

(assert (=> b!961603 (= condMapEmpty!34192 (= (arr!28374 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10251)) mapDefault!34192)))))

(assert (= (and start!82558 res!643641) b!961599))

(assert (= (and b!961599 res!643643) b!961600))

(assert (= (and b!961600 res!643642) b!961598))

(assert (= (and b!961603 condMapEmpty!34192) mapIsEmpty!34192))

(assert (= (and b!961603 (not condMapEmpty!34192)) mapNonEmpty!34192))

(get-info :version)

(assert (= (and mapNonEmpty!34192 ((_ is ValueCellFull!10251) mapValue!34192)) b!961602))

(assert (= (and b!961603 ((_ is ValueCellFull!10251) mapDefault!34192)) b!961601))

(assert (= start!82558 b!961603))

(declare-fun m!891553 () Bool)

(assert (=> b!961598 m!891553))

(declare-fun m!891555 () Bool)

(assert (=> mapNonEmpty!34192 m!891555))

(declare-fun m!891557 () Bool)

(assert (=> b!961600 m!891557))

(declare-fun m!891559 () Bool)

(assert (=> start!82558 m!891559))

(declare-fun m!891561 () Bool)

(assert (=> start!82558 m!891561))

(declare-fun m!891563 () Bool)

(assert (=> start!82558 m!891563))

(check-sat tp_is_empty!21465 (not b!961600) (not mapNonEmpty!34192) (not b!961598) (not start!82558))
(check-sat)
