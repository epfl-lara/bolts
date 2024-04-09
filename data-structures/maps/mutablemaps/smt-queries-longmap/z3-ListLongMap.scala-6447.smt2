; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82552 () Bool)

(assert start!82552)

(declare-fun b!961544 () Bool)

(declare-fun res!643614 () Bool)

(declare-fun e!542261 () Bool)

(assert (=> b!961544 (=> (not res!643614) (not e!542261))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59009 0))(
  ( (array!59010 (arr!28369 (Array (_ BitVec 32) (_ BitVec 64))) (size!28849 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59009)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-datatypes ((V!33595 0))(
  ( (V!33596 (val!10780 Int)) )
))
(declare-datatypes ((ValueCell!10248 0))(
  ( (ValueCellFull!10248 (v!13338 V!33595)) (EmptyCell!10248) )
))
(declare-datatypes ((array!59011 0))(
  ( (array!59012 (arr!28370 (Array (_ BitVec 32) ValueCell!10248)) (size!28850 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59011)

(assert (=> b!961544 (= res!643614 (and (= (size!28850 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28849 _keys!1686) (size!28850 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34183 () Bool)

(declare-fun mapRes!34183 () Bool)

(declare-fun tp!65113 () Bool)

(declare-fun e!542259 () Bool)

(assert (=> mapNonEmpty!34183 (= mapRes!34183 (and tp!65113 e!542259))))

(declare-fun mapKey!34183 () (_ BitVec 32))

(declare-fun mapValue!34183 () ValueCell!10248)

(declare-fun mapRest!34183 () (Array (_ BitVec 32) ValueCell!10248))

(assert (=> mapNonEmpty!34183 (= (arr!28370 _values!1400) (store mapRest!34183 mapKey!34183 mapValue!34183))))

(declare-fun mapIsEmpty!34183 () Bool)

(assert (=> mapIsEmpty!34183 mapRes!34183))

(declare-fun b!961545 () Bool)

(declare-fun res!643616 () Bool)

(assert (=> b!961545 (=> (not res!643616) (not e!542261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59009 (_ BitVec 32)) Bool)

(assert (=> b!961545 (= res!643616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!643615 () Bool)

(assert (=> start!82552 (=> (not res!643615) (not e!542261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82552 (= res!643615 (validMask!0 mask!2110))))

(assert (=> start!82552 e!542261))

(assert (=> start!82552 true))

(declare-fun e!542263 () Bool)

(declare-fun array_inv!21911 (array!59011) Bool)

(assert (=> start!82552 (and (array_inv!21911 _values!1400) e!542263)))

(declare-fun array_inv!21912 (array!59009) Bool)

(assert (=> start!82552 (array_inv!21912 _keys!1686)))

(declare-fun b!961546 () Bool)

(declare-fun e!542262 () Bool)

(assert (=> b!961546 (= e!542263 (and e!542262 mapRes!34183))))

(declare-fun condMapEmpty!34183 () Bool)

(declare-fun mapDefault!34183 () ValueCell!10248)

(assert (=> b!961546 (= condMapEmpty!34183 (= (arr!28370 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10248)) mapDefault!34183)))))

(declare-fun b!961547 () Bool)

(declare-fun tp_is_empty!21459 () Bool)

(assert (=> b!961547 (= e!542262 tp_is_empty!21459)))

(declare-fun b!961548 () Bool)

(assert (=> b!961548 (= e!542259 tp_is_empty!21459)))

(declare-fun b!961549 () Bool)

(assert (=> b!961549 (= e!542261 false)))

(declare-fun lt!430743 () Bool)

(declare-datatypes ((List!19819 0))(
  ( (Nil!19816) (Cons!19815 (h!20977 (_ BitVec 64)) (t!28190 List!19819)) )
))
(declare-fun arrayNoDuplicates!0 (array!59009 (_ BitVec 32) List!19819) Bool)

(assert (=> b!961549 (= lt!430743 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19816))))

(assert (= (and start!82552 res!643615) b!961544))

(assert (= (and b!961544 res!643614) b!961545))

(assert (= (and b!961545 res!643616) b!961549))

(assert (= (and b!961546 condMapEmpty!34183) mapIsEmpty!34183))

(assert (= (and b!961546 (not condMapEmpty!34183)) mapNonEmpty!34183))

(get-info :version)

(assert (= (and mapNonEmpty!34183 ((_ is ValueCellFull!10248) mapValue!34183)) b!961548))

(assert (= (and b!961546 ((_ is ValueCellFull!10248) mapDefault!34183)) b!961547))

(assert (= start!82552 b!961546))

(declare-fun m!891517 () Bool)

(assert (=> mapNonEmpty!34183 m!891517))

(declare-fun m!891519 () Bool)

(assert (=> b!961545 m!891519))

(declare-fun m!891521 () Bool)

(assert (=> start!82552 m!891521))

(declare-fun m!891523 () Bool)

(assert (=> start!82552 m!891523))

(declare-fun m!891525 () Bool)

(assert (=> start!82552 m!891525))

(declare-fun m!891527 () Bool)

(assert (=> b!961549 m!891527))

(check-sat (not b!961545) (not mapNonEmpty!34183) tp_is_empty!21459 (not start!82552) (not b!961549))
(check-sat)
